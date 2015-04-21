//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/presence/PresenceActor.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/presence/PresenceActor.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeToGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/presence/PresenceActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/GroupVM.h"
#include "im/actor/model/viewmodel/UserPresence.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_(ImActorModelModulesPresencePresenceActor *self, jint uid);
__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_(ImActorModelModulesPresencePresenceActor *self, jint uid);
__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong date);
__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_(ImActorModelModulesPresencePresenceActor *self, jint gid, jint count);
__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(ImActorModelModulesPresencePresenceActor *self, AMPeer *peer);
__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onNewSessionCreated(ImActorModelModulesPresencePresenceActor *self);

@interface ImActorModelModulesPresencePresenceActor () {
 @public
  JavaUtilHashSet *uids_;
  JavaUtilHashSet *gids_;
}

- (void)onUserOnlineWithInt:(jint)uid;

- (void)onUserOfflineWithInt:(jint)uid;

- (void)onUserLastSeenWithInt:(jint)uid
                     withLong:(jlong)date;

- (void)onGroupOnlineWithInt:(jint)gid
                     withInt:(jint)count;

- (void)subscribeWithAMPeer:(AMPeer *)peer;

- (void)onNewSessionCreated;
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, uids_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, gids_, JavaUtilHashSet *)

@interface ImActorModelModulesPresencePresenceActor_UserOnline () {
 @public
  jint uid_;
}
@end

@interface ImActorModelModulesPresencePresenceActor_UserOffline () {
 @public
  jint uid_;
}
@end

@interface ImActorModelModulesPresencePresenceActor_UserLastSeen () {
 @public
  jint uid_;
  jlong date_;
}
@end

@interface ImActorModelModulesPresencePresenceActor_GroupOnline () {
 @public
  jint gid_;
  jint count_;
}
@end

@interface ImActorModelModulesPresencePresenceActor_Subscribe () {
 @public
  AMPeer *peer_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor_Subscribe, peer_, AMPeer *)

@interface ImActorModelModulesPresencePresenceActor_$1 () {
 @public
  ImActorModelModulesModules *val$messenger_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor_$1, val$messenger_, ImActorModelModulesModules *)


#line 34
@implementation ImActorModelModulesPresencePresenceActor

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(messenger);
}


#line 63
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  if (self =
#line 64
  [super initWithImActorModelModulesModules:messenger]) {
    uids_ =
#line 60
    [[JavaUtilHashSet alloc] init];
    gids_ =
#line 61
    [[JavaUtilHashSet alloc] init];
  }
  return self;
}


#line 68
- (void)onUserOnlineWithInt:(jint)uid {
  ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_(self, uid);
}


#line 77
- (void)onUserOfflineWithInt:(jint)uid {
  ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_(self, uid);
}


#line 85
- (void)onUserLastSeenWithInt:(jint)uid
                     withLong:(jlong)date {
  ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_(self, uid, date);
}


#line 93
- (void)onGroupOnlineWithInt:(jint)gid
                     withInt:(jint)count {
  ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_(self, gid, count);
}


#line 101
- (void)subscribeWithAMPeer:(AMPeer *)peer {
  ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(self, peer);
}


#line 138
- (void)onNewSessionCreated {
  ImActorModelModulesPresencePresenceActor_onNewSessionCreated(self);
}


#line 170
- (void)onReceiveWithId:(id)message {
  
#line 171
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserOnline class]]) {
    ImActorModelModulesPresencePresenceActor_UserOnline *online = (ImActorModelModulesPresencePresenceActor_UserOnline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserOnline class]);
    ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_(self, [((ImActorModelModulesPresencePresenceActor_UserOnline *) nil_chk(online)) getUid]);
  }
  else
#line 174
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserOffline class]]) {
    ImActorModelModulesPresencePresenceActor_UserOffline *offline = (ImActorModelModulesPresencePresenceActor_UserOffline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserOffline class]);
    ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_(self, [((ImActorModelModulesPresencePresenceActor_UserOffline *) nil_chk(offline)) getUid]);
  }
  else
#line 177
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserLastSeen class]]) {
    ImActorModelModulesPresencePresenceActor_UserLastSeen *lastSeen = (ImActorModelModulesPresencePresenceActor_UserLastSeen *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserLastSeen class]);
    ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_(self, [((ImActorModelModulesPresencePresenceActor_UserLastSeen *) nil_chk(lastSeen)) getUid], [lastSeen getDate]);
  }
  else
#line 180
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_GroupOnline class]]) {
    ImActorModelModulesPresencePresenceActor_GroupOnline *groupOnline = (ImActorModelModulesPresencePresenceActor_GroupOnline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_GroupOnline class]);
    ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_(self, [((ImActorModelModulesPresencePresenceActor_GroupOnline *) nil_chk(groupOnline)) getGid], [groupOnline getCount]);
  }
  else
#line 183
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_Subscribe class]]) {
    ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(self, [((ImActorModelModulesPresencePresenceActor_Subscribe *) nil_chk(((ImActorModelModulesPresencePresenceActor_Subscribe *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_Subscribe class])))) getPeer]);
  }
  else
#line 185
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_SessionCreated class]]) {
    ImActorModelModulesPresencePresenceActor_onNewSessionCreated(self);
  }
  else {
    
#line 188
    [self dropWithId:message];
  }
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor *)other {
  [super copyAllFieldsTo:other];
  other->uids_ = uids_;
  other->gids_ = gids_;
}

@end

DKActorRef *ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesPresencePresenceActor_init();
  
#line 37
  return [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(ImActorModelModulesPresencePresenceActor_class_(), [[ImActorModelModulesPresencePresenceActor_$1 alloc] initWithImActorModelModulesModules:messenger],
#line 42
  [[ImActorModelModulesPresencePresenceActor_$2 alloc] init]) withNSString:
#line 55
  @"actor/presence/users"];
}

void ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_(ImActorModelModulesPresencePresenceActor *self, jint uid) {
  
#line 69
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMValueModel *) nil_chk([vm getPresence])) changeWithId:[[AMUserPresence alloc] initWithAMUserPresence_StateEnum:AMUserPresence_StateEnum_get_ONLINE()]];
  }
  [((DKActorRef *) nil_chk([self self__])) sendOnceWithId:[[ImActorModelModulesPresencePresenceActor_UserOffline alloc] initWithInt:uid] withLong:ImActorModelModulesPresencePresenceActor_ONLINE_TIMEOUT];
}

void ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_(ImActorModelModulesPresencePresenceActor *self, jint uid) {
  
#line 78
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMValueModel *) nil_chk([vm getPresence])) changeWithId:[[AMUserPresence alloc] initWithAMUserPresence_StateEnum:AMUserPresence_StateEnum_get_OFFLINE()]];
  }
}

void ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong date) {
  
#line 86
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMValueModel *) nil_chk([vm getPresence])) changeWithId:[[AMUserPresence alloc] initWithAMUserPresence_StateEnum:AMUserPresence_StateEnum_get_OFFLINE() withLong:date]];
  }
}

void ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_(ImActorModelModulesPresencePresenceActor *self, jint gid, jint count) {
  
#line 94
  AMGroupVM *vm = [self getGroupVMWithInt:gid];
  if (vm != nil) {
    [((AMValueModel *) nil_chk([vm getPresence])) changeWithId:JavaLangInteger_valueOfWithInt_(count)];
  }
}

void ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(ImActorModelModulesPresencePresenceActor *self, AMPeer *peer) {
  
#line 102
  if ([((AMPeer *) nil_chk(peer)) getPeerType] == AMPeerTypeEnum_get_PRIVATE()) {
    
#line 104
    if ([((JavaUtilHashSet *) nil_chk(self->uids_)) containsWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])]) {
      return;
    }
    
#line 108
    AMUser *user = [self getUserWithInt:[peer getPeerId]];
    if (user == nil) {
      return;
    }
    
#line 114
    [self->uids_ addWithId:JavaLangInteger_valueOfWithInt_([((AMUser *) nil_chk(user)) getUid])];
    id<JavaUtilList> peers = [[JavaUtilArrayList alloc] init];
    [peers addWithId:[[ImActorModelApiUserOutPeer alloc] initWithInt:[user getUid] withLong:[user getAccessHash]]];
    [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSubscribeToOnline alloc] initWithJavaUtilList:peers]];
  }
  else
#line 118
  if ([peer getPeerType] == AMPeerTypeEnum_get_GROUP()) {
    
#line 120
    if ([((JavaUtilHashSet *) nil_chk(self->gids_)) containsWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])]) {
      return;
    }
    
#line 124
    AMGroup *group = [self getGroupWithInt:[peer getPeerId]];
    if (group == nil) {
      return;
    }
    
#line 130
    [self->gids_ addWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])];
    id<JavaUtilList> peers = [[JavaUtilArrayList alloc] init];
    [peers addWithId:[[ImActorModelApiGroupOutPeer alloc] initWithInt:[((AMGroup *) nil_chk(group)) getGroupId] withLong:[group getAccessHash]]];
    [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSubscribeToGroupOnline alloc] initWithJavaUtilList:peers]];
  }
}

void ImActorModelModulesPresencePresenceActor_onNewSessionCreated(ImActorModelModulesPresencePresenceActor *self) {
  
#line 141
  id<JavaUtilList> userPeers = [[JavaUtilArrayList alloc] init];
  for (JavaLangInteger *boxed__ in nil_chk(self->uids_)) {
    jint uid = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 143
    AMUser *user = [self getUserWithInt:uid];
    if (user == nil) {
      continue;
    }
    [userPeers addWithId:[[ImActorModelApiUserOutPeer alloc] initWithInt:uid withLong:[((AMUser *) nil_chk(user)) getAccessHash]]];
  }
  if ([userPeers size] > 0) {
    [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSubscribeToOnline alloc] initWithJavaUtilList:userPeers]];
  }
  
#line 154
  id<JavaUtilList> groupPeers = [[JavaUtilArrayList alloc] init];
  for (JavaLangInteger *boxed__ in nil_chk(self->gids_)) {
    jint gid = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 156
    AMGroup *group = [self getGroupWithInt:gid];
    if (group == nil) {
      continue;
    }
    [groupPeers addWithId:[[ImActorModelApiGroupOutPeer alloc] initWithInt:[((AMGroup *) nil_chk(group)) getGroupId] withLong:[group getAccessHash]]];
  }
  if ([groupPeers size] > 0) {
    [self requestWithImActorModelNetworkParserRequest:[[ImActorModelApiRpcRequestSubscribeToGroupOnline alloc] initWithJavaUtilList:groupPeers]];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor)


#line 192
@implementation ImActorModelModulesPresencePresenceActor_UserOnline


#line 195
- (instancetype)initWithInt:(jint)uid {
  if (self = [super init]) {
    
#line 196
    self->uid_ = uid;
  }
  return self;
}


#line 199
- (jint)getUid {
  
#line 200
  return uid_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  
#line 208
  ImActorModelModulesPresencePresenceActor_UserOnline *that = (ImActorModelModulesPresencePresenceActor_UserOnline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserOnline class]);
  
#line 210
  if (uid_ != ((ImActorModelModulesPresencePresenceActor_UserOnline *) nil_chk(that))->uid_) return NO;
  
#line 212
  return YES;
}

- (NSUInteger)hash {
  
#line 217
  return uid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_UserOnline *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserOnline)


#line 221
@implementation ImActorModelModulesPresencePresenceActor_UserOffline


#line 224
- (instancetype)initWithInt:(jint)uid {
  if (self = [super init]) {
    
#line 225
    self->uid_ = uid;
  }
  return self;
}


#line 228
- (jint)getUid {
  
#line 229
  return uid_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  
#line 237
  ImActorModelModulesPresencePresenceActor_UserOffline *that = (ImActorModelModulesPresencePresenceActor_UserOffline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserOffline class]);
  
#line 239
  if (uid_ != ((ImActorModelModulesPresencePresenceActor_UserOffline *) nil_chk(that))->uid_) return NO;
  
#line 241
  return YES;
}

- (NSUInteger)hash {
  
#line 246
  return uid_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_UserOffline *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserOffline)


#line 250
@implementation ImActorModelModulesPresencePresenceActor_UserLastSeen


#line 254
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)date {
  if (self = [super init]) {
    
#line 255
    self->uid_ = uid;
    
#line 256
    self->date_ = date;
  }
  return self;
}


#line 259
- (jint)getUid {
  
#line 260
  return uid_;
}


#line 263
- (jlong)getDate {
  
#line 264
  return date_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  
#line 272
  ImActorModelModulesPresencePresenceActor_UserLastSeen *that = (ImActorModelModulesPresencePresenceActor_UserLastSeen *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserLastSeen class]);
  
#line 274
  if (date_ != ((ImActorModelModulesPresencePresenceActor_UserLastSeen *) nil_chk(that))->date_) return NO;
  if (uid_ != that->uid_) return NO;
  
#line 277
  return YES;
}

- (NSUInteger)hash {
  
#line 282
  jint result = uid_;
  result = 31 * result + (jint) (date_ ^ (URShift64(date_, 32)));
  return result;
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_UserLastSeen *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->date_ = date_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserLastSeen)


#line 288
@implementation ImActorModelModulesPresencePresenceActor_GroupOnline


#line 292
- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)count {
  if (self = [super init]) {
    
#line 293
    self->gid_ = gid;
    
#line 294
    self->count_ = count;
  }
  return self;
}


#line 297
- (jint)getGid {
  
#line 298
  return gid_;
}


#line 301
- (jint)getCount {
  
#line 302
  return count_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  
#line 310
  ImActorModelModulesPresencePresenceActor_GroupOnline *that = (ImActorModelModulesPresencePresenceActor_GroupOnline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_GroupOnline class]);
  
#line 312
  if (count_ != ((ImActorModelModulesPresencePresenceActor_GroupOnline *) nil_chk(that))->count_) return NO;
  if (gid_ != that->gid_) return NO;
  
#line 315
  return YES;
}

- (NSUInteger)hash {
  
#line 320
  jint result = gid_;
  result = 31 * result + count_;
  return result;
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_GroupOnline *)other {
  [super copyAllFieldsTo:other];
  other->gid_ = gid_;
  other->count_ = count_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_GroupOnline)


#line 326
@implementation ImActorModelModulesPresencePresenceActor_Subscribe


#line 329
- (instancetype)initWithAMPeer:(AMPeer *)peer {
  if (self = [super init]) {
    
#line 330
    self->peer_ = peer;
  }
  return self;
}


#line 333
- (AMPeer *)getPeer {
  
#line 334
  return peer_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_Subscribe *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_Subscribe)


#line 338
@implementation ImActorModelModulesPresencePresenceActor_SessionCreated

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_SessionCreated)

@implementation ImActorModelModulesPresencePresenceActor_$1


#line 39
- (ImActorModelModulesPresencePresenceActor *)create {
  
#line 40
  return [[ImActorModelModulesPresencePresenceActor alloc] initWithImActorModelModulesModules:val$messenger_];
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  val$messenger_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelModulesPresencePresenceActor_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$messenger_ = val$messenger_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$1)

@implementation ImActorModelModulesPresencePresenceActor_$2


#line 44
- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  
#line 45
  return [[ImActorModelModulesPresencePresenceActor_$2_$1 alloc] initWithDKMailboxesQueue:queue];
}

- (instancetype)init {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$2)

@implementation ImActorModelModulesPresencePresenceActor_$2_$1


#line 47
- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b {
  
#line 48
  if ([nil_chk([((DKEnvelope *) nil_chk(a)) getMessage]) isEqual:[((DKEnvelope *) nil_chk(b)) getMessage]]) {
    return YES;
  }
  return [super isEqualEnvelopeWithDKEnvelope:a withDKEnvelope:b];
}

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0 {
  return [super initWithDKMailboxesQueue:arg$0];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$2_$1)