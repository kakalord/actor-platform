//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/ContactsProcessor.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/ContactsProcessor.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/updates/ContactsProcessor.h"

@interface ImActorModelModulesUpdatesContactsProcessor () {
 @public
  DKActorRef *contactsSyncActor_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesContactsProcessor, contactsSyncActor_, DKActorRef *)


#line 13
@implementation ImActorModelModulesUpdatesContactsProcessor


#line 18
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 24
- (void)onContactsAddedWithIntArray:(IOSIntArray *)uid {
  [((DKActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_ContactsAdded_initWithIntArray_(uid)];
}


#line 29
- (void)onContactsRemovedWithIntArray:(IOSIntArray *)uid {
  [((DKActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_ContactsRemoved_initWithIntArray_(uid)];
}

@end


#line 18
void ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesContactsProcessor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->contactsSyncActor_ = [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getContactsModule])) getContactSyncActor];
}


#line 18
ImActorModelModulesUpdatesContactsProcessor *new_ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesUpdatesContactsProcessor *self = [ImActorModelModulesUpdatesContactsProcessor alloc];
  ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesContactsProcessor)