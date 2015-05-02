//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/UsersProcessor.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/UsersProcessor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/entity/EntityConverter.h"
#include "im/actor/model/modules/updates/UsersProcessor.h"
#include "im/actor/model/util/JavaUtil.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"

@interface ImActorModelModulesUpdatesUsersProcessor ()

- (void)onUserDescChangedWithAMUser:(AMUser *)u;

@end

__attribute__((unused)) static void ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(ImActorModelModulesUpdatesUsersProcessor *self, AMUser *u);


#line 22
@implementation ImActorModelModulesUpdatesUsersProcessor


#line 25
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesUpdatesUsersProcessor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)applyUsersWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                             withBoolean:(jboolean)forced {
  JavaUtilArrayList *batch = new_JavaUtilArrayList_init();
  for (ImActorModelApiUser * __strong u in nil_chk(updated)) {
    AMLog_dWithNSString_withNSString_(@"UsersProcessor", JreStrcat("$I", @"UserUpdated: ", [((ImActorModelApiUser *) nil_chk(u)) getId]));
    
#line 35
    AMUser *saved = [((id<DKKeyValueEngine>) nil_chk([self users])) getValueWithLong:[u getId]];
    if (saved == nil) {
      [batch addWithId:ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(u)];
    }
    else
#line 38
    if (forced) {
      AMUser *upd = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiUser_(u);
      [batch addWithId:upd];
      
#line 43
      if (![((NSString *) nil_chk([((AMUser *) nil_chk(upd)) getName])) isEqual:[saved getName]] ||
#line 44
      !AMJavaUtil_equalsEWithId_withId_([upd getAvatar], [saved getAvatar])) {
        ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(self, upd);
      }
    }
  }
  if ([batch size] > 0) {
    [((id<DKKeyValueEngine>) nil_chk([self users])) addOrUpdateItemsWithJavaUtilList:batch];
  }
}


#line 55
- (void)onUserNameChangedWithInt:(jint)uid
                    withNSString:(NSString *)name {
  AMUser *u = [((id<DKKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    
#line 60
    if ([((NSString *) nil_chk([u getServerName])) isEqual:name]) {
      return;
    }
    
#line 65
    u = [u editNameWithNSString:name];
    
#line 68
    [((id<DKKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithDKKeyValueItem:u];
    
#line 71
    if ([((AMUser *) nil_chk(u)) getLocalName] == nil) {
      ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(self, u);
    }
  }
}

- (void)onUserLocalNameChangedWithInt:(jint)uid
                         withNSString:(NSString *)name {
  AMUser *u = [((id<DKKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    
#line 83
    if (AMJavaUtil_equalsEWithId_withId_([u getLocalName], name)) {
      return;
    }
    
#line 88
    u = [u editLocalNameWithNSString:name];
    
#line 91
    [((id<DKKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithDKKeyValueItem:u];
    
#line 94
    ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(self, u);
  }
}

- (void)onUserAvatarChangedWithInt:(jint)uid
         withImActorModelApiAvatar:(ImActorModelApiAvatar *)_avatar {
  AMAvatar *avatar = ImActorModelModulesMessagesEntityEntityConverter_convertWithImActorModelApiAvatar_(_avatar);
  AMUser *u = [((id<DKKeyValueEngine>) nil_chk([self users])) getValueWithLong:uid];
  if (u != nil) {
    
#line 105
    if (AMJavaUtil_equalsEWithId_withId_([u getAvatar], avatar)) {
      return;
    }
    
#line 110
    u = [u editAvatarWithAMAvatar:avatar];
    
#line 113
    [((id<DKKeyValueEngine>) nil_chk([self users])) addOrUpdateItemWithDKKeyValueItem:u];
    
#line 116
    ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(self, u);
  }
}

- (jboolean)hasUsersWithJavaUtilCollection:(id<JavaUtilCollection>)uids {
  for (JavaLangInteger * __strong uid in nil_chk(uids)) {
    if ([((id<DKKeyValueEngine>) nil_chk([self users])) getValueWithLong:[((JavaLangInteger *) nil_chk(uid)) intValue]] == nil) {
      return NO;
    }
  }
  return YES;
}


#line 131
- (void)onUserDescChangedWithAMUser:(AMUser *)u {
  ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(self, u);
}

@end


#line 25
void ImActorModelModulesUpdatesUsersProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesUsersProcessor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, messenger);
}


#line 25
ImActorModelModulesUpdatesUsersProcessor *new_ImActorModelModulesUpdatesUsersProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesUpdatesUsersProcessor *self = [ImActorModelModulesUpdatesUsersProcessor alloc];
  ImActorModelModulesUpdatesUsersProcessor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}


#line 131
void ImActorModelModulesUpdatesUsersProcessor_onUserDescChangedWithAMUser_(ImActorModelModulesUpdatesUsersProcessor *self, AMUser *u) {
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:new_ImActorModelModulesMessagesDialogsActor_UserChanged_initWithAMUser_(
#line 133
  u)];
  [((DKActorRef *) nil_chk([((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getContactsModule])) getContactSyncActor])) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_UserChanged_initWithAMUser_(
#line 135
  u)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesUsersProcessor)