//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/GroupCreated.java
//

#ifndef _ImActorModelModulesUpdatesInternalGroupCreated_H_
#define _ImActorModelModulesUpdatesInternalGroupCreated_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"

@class ImActorModelApiGroup;
@protocol AMCommandCallback;

@interface ImActorModelModulesUpdatesInternalGroupCreated : ImActorModelModulesUpdatesInternalInternalUpdate

#pragma mark Public

- (instancetype)initWithImActorModelApiGroup:(ImActorModelApiGroup *)group
                       withAMCommandCallback:(id<AMCommandCallback>)callback;

- (id<AMCommandCallback>)getCallback;

- (ImActorModelApiGroup *)getGroup;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesInternalGroupCreated)

FOUNDATION_EXPORT void ImActorModelModulesUpdatesInternalGroupCreated_initWithImActorModelApiGroup_withAMCommandCallback_(ImActorModelModulesUpdatesInternalGroupCreated *self, ImActorModelApiGroup *group, id<AMCommandCallback> callback);

FOUNDATION_EXPORT ImActorModelModulesUpdatesInternalGroupCreated *new_ImActorModelModulesUpdatesInternalGroupCreated_initWithImActorModelApiGroup_withAMCommandCallback_(ImActorModelApiGroup *group, id<AMCommandCallback> callback) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesInternalGroupCreated)

#endif // _ImActorModelModulesUpdatesInternalGroupCreated_H_