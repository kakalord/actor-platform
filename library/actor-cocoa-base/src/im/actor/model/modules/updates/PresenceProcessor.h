//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/PresenceProcessor.java
//

#ifndef _ImActorModelModulesUpdatesPresenceProcessor_H_
#define _ImActorModelModulesUpdatesPresenceProcessor_H_

@class DKActorRef;
@class ImActorModelModulesModules;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@interface ImActorModelModulesUpdatesPresenceProcessor : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)onUserOnlineWithInt:(jint)uid;

- (void)onUserOfflineWithInt:(jint)uid;

- (void)onUserLastSeenWithInt:(jint)uid
                     withLong:(jlong)date;

- (void)onGroupOnlineWithInt:(jint)gid
                     withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesPresenceProcessor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesPresenceProcessor)

#endif // _ImActorModelModulesUpdatesPresenceProcessor_H_