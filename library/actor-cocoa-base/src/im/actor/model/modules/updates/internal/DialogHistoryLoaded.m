//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/DialogHistoryLoaded.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/DialogHistoryLoaded.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseLoadDialogs.h"
#include "im/actor/model/modules/updates/internal/DialogHistoryLoaded.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"

@interface ImActorModelModulesUpdatesInternalDialogHistoryLoaded () {
 @public
  ImActorModelApiRpcResponseLoadDialogs *dialogs_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalDialogHistoryLoaded, dialogs_, ImActorModelApiRpcResponseLoadDialogs *)


#line 8
@implementation ImActorModelModulesUpdatesInternalDialogHistoryLoaded


#line 11
- (instancetype)initWithImActorModelApiRpcResponseLoadDialogs:(ImActorModelApiRpcResponseLoadDialogs *)dialogs {
  ImActorModelModulesUpdatesInternalDialogHistoryLoaded_initWithImActorModelApiRpcResponseLoadDialogs_(self, dialogs);
  return self;
}


#line 15
- (ImActorModelApiRpcResponseLoadDialogs *)getDialogs {
  return dialogs_;
}

@end


#line 11
void ImActorModelModulesUpdatesInternalDialogHistoryLoaded_initWithImActorModelApiRpcResponseLoadDialogs_(ImActorModelModulesUpdatesInternalDialogHistoryLoaded *self, ImActorModelApiRpcResponseLoadDialogs *dialogs) {
  (void) ImActorModelModulesUpdatesInternalInternalUpdate_init(self);
  
#line 12
  self->dialogs_ = dialogs;
}


#line 11
ImActorModelModulesUpdatesInternalDialogHistoryLoaded *new_ImActorModelModulesUpdatesInternalDialogHistoryLoaded_initWithImActorModelApiRpcResponseLoadDialogs_(ImActorModelApiRpcResponseLoadDialogs *dialogs) {
  ImActorModelModulesUpdatesInternalDialogHistoryLoaded *self = [ImActorModelModulesUpdatesInternalDialogHistoryLoaded alloc];
  ImActorModelModulesUpdatesInternalDialogHistoryLoaded_initWithImActorModelApiRpcResponseLoadDialogs_(self, dialogs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalDialogHistoryLoaded)