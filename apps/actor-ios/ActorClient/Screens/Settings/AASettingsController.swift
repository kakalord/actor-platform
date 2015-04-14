//
//  AASettingsController.swift
//  ActorClient
//
//  Created by Danil Gontovnik on 4/6/15.
//  Copyright (c) 2015 Actor LLC. All rights reserved.
//

import UIKit

class AASettingsController: AATableViewController {
    
    // MARK: -
    // MARK: Private vars
    
    private let UserInfoCellIdentifier = "UserInfoCellIdentifier"
    private let CellIdentifier = "CellIdentifier"
    
    private let uid: Int
    private var user: AMUserVM?
    private var binder = Binder()
    
    private var phones: JavaUtilArrayList?
    
    // MARK: -
    // MARK: Constructors
    
    init() {
        uid = Int(MSG.myUid())
        
        super.init(style: UITableViewStyle.Grouped)
        initCommon()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: -

    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = MSG.getUsers().getWithLong(jlong(uid)) as? AMUserVM
        
        navigationItem.title = NSLocalizedString("TabSettings", comment: "Settings Title")
        navigationItem.rightBarButtonItem = editButtonItem()
        
        tableView.registerClass(AAUserInfoCell.self, forCellReuseIdentifier: UserInfoCellIdentifier)
        tableView.registerClass(AATableViewCell.self, forCellReuseIdentifier: CellIdentifier)
        
        tableView.reloadData()
        
        tableView.tableFooterView = UIView()
        
        binder.bind(user!.getName()!, closure: { (value: String?) -> () in
            if value == nil {
                return
            }
            
            if let cell = self.tableView.cellForRowAtIndexPath(NSIndexPath(forItem: 0, inSection: 0)) as? AAUserInfoCell {
                cell.setUsername(value!)
            }
        })
        
        binder.bind(user!.getAvatar(), closure: { (value: AMAvatar?) -> () in
            if let cell = self.tableView.cellForRowAtIndexPath(NSIndexPath(forItem: 0, inSection: 0)) as? AAUserInfoCell {
                cell.userAvatarView.bind(self.user!.getName().get() as! String, id: jint(self.uid), avatar: value)
            }
        })
        
        binder.bind(user!.getPresence(), closure: { (presence: AMUserPresence?) -> () in
            var presenceText = MSG.getFormatter().formatPresenceWithAMUserPresence(presence, withAMSexEnum: self.user!.getSex())
            if presenceText != nil {
                if let cell = self.tableView.cellForRowAtIndexPath(NSIndexPath(forItem: 0, inSection: 0)) as? AAUserInfoCell {
                    cell.setPresence(presenceText)
                }
            }
        })
        
        binder.bind(user!.getPhones(), closure: { (phones: JavaUtilArrayList?) -> () in
            if phones != nil {
                self.phones = phones
                self.tableView.reloadData()
            }
        })
    }
    
    func initCommon(){
        
        var title = "";
        if (MainAppTheme.tab.showText) {
            title = NSLocalizedString("TabSettings", comment: "Settings Title")
        }
        
        tabBarItem = UITabBarItem(title: title,
            image: MainAppTheme.tab.createUnselectedIcon("ic_settings_outline"),
            selectedImage: MainAppTheme.tab.createSelectedIcon("ic_settings_filled"))
        
        if (!MainAppTheme.tab.showText) {
            tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        MSG.onProfileOpen(jint(uid))
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        MSG.onProfileClosed(jint(uid))
    }
    
    // MARK: -
    // MARK: Methods
    
    private func askSetPhoto() {
        var actionSheet = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Take Photo", "Choose Photo") // TODO: Localize
        actionSheet.addButtonWithTitle("Delete Photo")
        actionSheet.destructiveButtonIndex = 3
        actionSheet.showInView(view)
    }
    
    private func changeAvatarToImage(image: UIImage) {
        let avatarPath = NSTemporaryDirectory().stringByAppendingPathComponent("avatar.jpg")
        var thumb = image.resizeSquare(200, maxH: 200);
        UIImageJPEGRepresentation(thumb, 0.8).writeToFile(avatarPath, atomically: true) // TODO: Check smallest 100x100, crop to 800x800
        MSG.changeAvatarWithNSString("/tmp/avatar.jpg")
    }
    
    // MARK: -
    // MARK: Setters
    
    override func setEditing(editing: Bool, animated: Bool) {
        // TODO: Localize
        var alertView = UIAlertView(title: nil, message: "Change name", delegate: self, cancelButtonTitle: "Cancel")
        alertView.addButtonWithTitle("Change")
        alertView.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alertView.textFieldAtIndex(0)!.text = user!.getName().get() as! String
        alertView.show()
    }
    
    // MARK: -
    // MARK: Getters
    
    private func userInfoCell(indexPath: NSIndexPath) -> AAUserInfoCell {
        var cell: AAUserInfoCell = tableView.dequeueReusableCellWithIdentifier(UserInfoCellIdentifier, forIndexPath: indexPath) as! AAUserInfoCell
        
        if user != nil {
            
            if let username = user!.getName().get() as? String {
                cell.setUsername(username)
            }
            
        }
        cell.setLeftInset(15.0)
        
        return cell
    }
    
    private func setProfilePhotoCell(indexPath: NSIndexPath) -> AATableViewCell {
        var cell: AATableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! AATableViewCell
        
        cell.style = AATableViewCellStyle.Blue
        cell.setTitle("Set Profile Photo") // TODO: Localize
        cell.setLeftInset(15.0)
        
        return cell
    }
    
    private func phoneCell(indexPath: NSIndexPath) -> AATableViewCell {
        var cell: AATableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! AATableViewCell
        
        cell.style = AATableViewCellStyle.Normal
        cell.setLeftInset(15.0)
        
        if let phone = phones!.getWithInt(jint(indexPath.row)) as? AMUserPhone {
            cell.setTitle("+\(phone.getPhone())")
        }
        
        return cell
    }
    
    private func notificationsCell(indexPath: NSIndexPath) -> AATableViewCell {
        var cell: AATableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! AATableViewCell
        
        cell.style = AATableViewCellStyle.Navigation
        cell.setTitle("Notifications and Sounds") // TODO: Localize
        cell.setLeftInset(15.0)
        
        return cell
    }
    
    private func privacyCell(indexPath: NSIndexPath) -> AATableViewCell {
        var cell: AATableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! AATableViewCell
        
        cell.style = AATableViewCellStyle.Navigation
        cell.setTitle("Privacy and Security") // TODO: Localize
        cell.setLeftInset(15.0)
        
        return cell
    }
    
    // MARK: -
    // MARK: UITableView Data Source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            if phones == nil {
                return 0
            }
            return Int(phones!.size());
        case 3:
            return 1
        default:
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 && indexPath.row == 0 {
            return userInfoCell(indexPath)
        } else if indexPath.section == 1 && indexPath.row == 0 {
            return setProfilePhotoCell(indexPath)
        } else if indexPath.section == 2 {
            return phoneCell(indexPath)
        } else if indexPath.section == 3 && indexPath.row == 0 {
//            return notificationsCell(indexPath)
//        } else if indexPath.section == 1 && indexPath.row == 1 {
            return privacyCell(indexPath)
        }
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    // MARK: -
    // MARK: UITableView Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if indexPath.section == 1 && indexPath.row == 0 {
            askSetPhoto()
        } else if indexPath.section == 3 && indexPath.row == 0 {
//            navigateToNotificationsSettings()
//        } else if indexPath.section == 1 && indexPath.row == 1 {
            navigateToPrivacySettings()
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 200
        }
        return 44
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 1  && phones == nil {
            return CGFloat.min
        }
        return tableView.sectionFooterHeight
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 || (section == 2 && phones == nil) {
            return CGFloat.min
        }
        return tableView.sectionHeaderHeight
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 2 && phones != nil {
            return "PHONES" // TODO: Localize
        }
        return nil
    }
    
    // MARK: -
    // MARK: Navigation
    
    private func navigateToNotificationsSettings() {
        let notificationsSettingsController = AASettingsNotificationsController()
        notificationsSettingsController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(notificationsSettingsController, animated: true)
    }
    
    private func navigateToPrivacySettings() {
        let privacySettingsController = AASettingsPrivacyController(user: user)
        privacySettingsController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(privacySettingsController, animated: true)
    }
    
}

// MARK: -
// MARK: UIActionSheet Delegate

extension AASettingsController: UIActionSheetDelegate {
    
    func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int) {
        let title = actionSheet.buttonTitleAtIndex(buttonIndex)
        
        // TODO: Localize
        if title == "Choose Photo" || title == "Take Photo" {
            let takePhoto = (title == "Take Photo")
            var picker = UIImagePickerController()
            picker.sourceType = (takePhoto ? UIImagePickerControllerSourceType.Camera : UIImagePickerControllerSourceType.PhotoLibrary)
            picker.delegate = self
            self.navigationController!.presentViewController(picker, animated: true, completion: nil)
            
        } else if title == "Delete Photo" {
            MSG.removeAvatar()
        }
    }
    
}

// MARK: -
// MARK: UIImagePickerController Delegate

extension AASettingsController: UIImagePickerControllerDelegate {
    
    // TODO: Allow to crop rectangle
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        
        changeAvatarToImage(image)
        
        navigationController!.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        changeAvatarToImage(image)
        
        navigationController!.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

// MARK: -
// MARK: UINavigationController Delegate

extension AASettingsController: UINavigationControllerDelegate {
    
    
    
}

// MARK: -
// MARK: UIAlertView Delegate

extension AASettingsController: UIAlertViewDelegate {
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if alertView.buttonTitleAtIndex(buttonIndex) == "Change" {
            let textField = alertView.textFieldAtIndex(0)!
            if count(textField.text) > 0 {
                execute(MSG.editMyNameWithNSString(textField.text))
            }
        }
    }
    
}
