//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/utils/PreferenceApiStorage.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/modules/utils/PreferenceApiStorage.h"

@interface ImActorModelModulesUtilsPreferenceApiStorage () {
 @public
  id<DKPreferencesStorage> preferencesStorage_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUtilsPreferenceApiStorage, preferencesStorage_, id<DKPreferencesStorage>)

@implementation ImActorModelModulesUtilsPreferenceApiStorage

- (instancetype)initWithDKPreferencesStorage:(id<DKPreferencesStorage>)preferencesStorage {
  ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(self, preferencesStorage);
  return self;
}

- (jlong)getAuthKey {
  return [((id<DKPreferencesStorage>) nil_chk(preferencesStorage_)) getLong:@"auth_id" withDefault:0];
}

- (void)saveAuthKeyWithLong:(jlong)key {
  [((id<DKPreferencesStorage>) nil_chk(preferencesStorage_)) putLong:@"auth_id" withValue:key];
}

@end

void ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(ImActorModelModulesUtilsPreferenceApiStorage *self, id<DKPreferencesStorage> preferencesStorage) {
  (void) NSObject_init(self);
  self->preferencesStorage_ = preferencesStorage;
}

ImActorModelModulesUtilsPreferenceApiStorage *new_ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(id<DKPreferencesStorage> preferencesStorage) {
  ImActorModelModulesUtilsPreferenceApiStorage *self = [ImActorModelModulesUtilsPreferenceApiStorage alloc];
  ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(self, preferencesStorage);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUtilsPreferenceApiStorage)
