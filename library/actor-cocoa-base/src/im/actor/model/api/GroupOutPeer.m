//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/GroupOutPeer.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiGroupOutPeer () {
 @public
  jint groupId_;
  jlong accessHash_;
}

@end

@implementation ImActorModelApiGroupOutPeer

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)accessHash {
  ImActorModelApiGroupOutPeer_initWithInt_withLong_(self, groupId, accessHash);
  return self;
}

- (instancetype)init {
  ImActorModelApiGroupOutPeer_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
}

- (NSString *)description {
  NSString *res = @"struct GroupOutPeer{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void ImActorModelApiGroupOutPeer_initWithInt_withLong_(ImActorModelApiGroupOutPeer *self, jint groupId, jlong accessHash) {
  (void) BSBserObject_init(self);
  self->groupId_ = groupId;
  self->accessHash_ = accessHash;
}

ImActorModelApiGroupOutPeer *new_ImActorModelApiGroupOutPeer_initWithInt_withLong_(jint groupId, jlong accessHash) {
  ImActorModelApiGroupOutPeer *self = [ImActorModelApiGroupOutPeer alloc];
  ImActorModelApiGroupOutPeer_initWithInt_withLong_(self, groupId, accessHash);
  return self;
}

void ImActorModelApiGroupOutPeer_init(ImActorModelApiGroupOutPeer *self) {
  (void) BSBserObject_init(self);
}

ImActorModelApiGroupOutPeer *new_ImActorModelApiGroupOutPeer_init() {
  ImActorModelApiGroupOutPeer *self = [ImActorModelApiGroupOutPeer alloc];
  ImActorModelApiGroupOutPeer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiGroupOutPeer)
