//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/ContactsLoaded.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/modules/updates/internal/ContactsLoaded.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"

@interface ImActorModelModulesUpdatesInternalContactsLoaded () {
 @public
  ImActorModelApiRpcResponseGetContacts *contacts_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalContactsLoaded, contacts_, ImActorModelApiRpcResponseGetContacts *)

@implementation ImActorModelModulesUpdatesInternalContactsLoaded

- (instancetype)initWithImActorModelApiRpcResponseGetContacts:(ImActorModelApiRpcResponseGetContacts *)contacts {
  ImActorModelModulesUpdatesInternalContactsLoaded_initWithImActorModelApiRpcResponseGetContacts_(self, contacts);
  return self;
}

- (ImActorModelApiRpcResponseGetContacts *)getContacts {
  return contacts_;
}

@end

void ImActorModelModulesUpdatesInternalContactsLoaded_initWithImActorModelApiRpcResponseGetContacts_(ImActorModelModulesUpdatesInternalContactsLoaded *self, ImActorModelApiRpcResponseGetContacts *contacts) {
  (void) ImActorModelModulesUpdatesInternalInternalUpdate_init(self);
  self->contacts_ = contacts;
}

ImActorModelModulesUpdatesInternalContactsLoaded *new_ImActorModelModulesUpdatesInternalContactsLoaded_initWithImActorModelApiRpcResponseGetContacts_(ImActorModelApiRpcResponseGetContacts *contacts) {
  ImActorModelModulesUpdatesInternalContactsLoaded *self = [ImActorModelModulesUpdatesInternalContactsLoaded alloc];
  ImActorModelModulesUpdatesInternalContactsLoaded_initWithImActorModelApiRpcResponseGetContacts_(self, contacts);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalContactsLoaded)
