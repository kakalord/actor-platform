//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/collections/EnvelopeRoot.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorTime.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeRoot.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.h"
#include "im/actor/model/util/ThreadLocalCompat.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/TreeMap.h"

#define ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE 10000LL

@interface ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot () {
 @public
  JavaUtilHashSet *usedSlot_;
  JavaUtilHashMap *collections_;
  JavaUtilHashMap *lastTopKey_;
  JavaUtilTreeMap *sortedCollection_;
  DKMailboxesQueue *queue_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, usedSlot_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, collections_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, lastTopKey_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, sortedCollection_, JavaUtilTreeMap *)
J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, queue_, DKMailboxesQueue *)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot, MULTIPLE, jlong)

@interface ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult () {
 @public
  DKEnvelope *envelope__;
  jlong delay__;
}

- (instancetype)initWithDKEnvelope:(DKEnvelope *)envelope;

- (instancetype)initWithLong:(jlong)delay;

@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult, envelope__, DKEnvelope *)

static AMThreadLocalCompat *ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult, RESULT_CACHE_, AMThreadLocalCompat *)
J2OBJC_STATIC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult, RESULT_CACHE_, AMThreadLocalCompat *)

__attribute__((unused)) static void ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self, DKEnvelope *envelope);

__attribute__((unused)) static ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(DKEnvelope *envelope) NS_RETURNS_RETAINED;

__attribute__((unused)) static void ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self, jlong delay);

__attribute__((unused)) static ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(jlong delay) NS_RETURNS_RETAINED;

@implementation ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_initWithDKMailboxesQueue_(self, queue);
  return self;
}

- (void)attachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    jlong key = [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getTopKey];
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([collection getId])]) {
      (void) [collections_ putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:collection];
      (void) [((JavaUtilHashMap *) nil_chk(lastTopKey_)) putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:JavaLangLong_valueOfWithLong_(key)];
      if (key > 0) {
        (void) [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) putWithId:JavaLangLong_valueOfWithLong_(key) withId:collection];
      }
    }
    [((DKMailboxesQueue *) nil_chk(queue_)) notifyQueueChanged];
  }
}

- (void)detachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getId])]) {
      return;
    }
    (void) [collections_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    JavaLangLong *prevKey = [((JavaUtilHashMap *) nil_chk(lastTopKey_)) getWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    (void) [lastTopKey_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    if ([((JavaLangLong *) nil_chk(prevKey)) longLongValue] > 0) {
      (void) [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) removeWithId:prevKey];
    }
  }
}

- (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)fetchCollectionWithLong:(jlong)time {
  @synchronized(self) {
    id<JavaUtilMap_Entry> res = [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) isEmpty] ? nil : [sortedCollection_ firstEntry];
    if (res != nil) {
      ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *collection = [res getValue];
      ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection_FetchResult *envelope = [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) fetchEnvelopeWithLong:time];
      if (envelope != nil) {
        if ([envelope getEnvelope] != nil) {
          [self detachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:collection];
          ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *result = ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithDKEnvelope_([((ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope *) nil_chk([envelope getEnvelope])) getEnvelope]);
          [envelope recycle];
          return result;
        }
        else {
          ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *result = ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_([envelope getDelay]);
          [envelope recycle];
          return result;
        }
      }
      else {
        return nil;
      }
    }
    else {
      return nil;
    }
  }
}

- (void)changedTopKeyWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *)collection {
  @synchronized(self) {
    if (![((JavaUtilHashMap *) nil_chk(collections_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_([((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection *) nil_chk(collection)) getId])]) {
      return;
    }
    jlong key = [collection getTopKey];
    JavaLangLong *prevKey = [((JavaUtilHashMap *) nil_chk(lastTopKey_)) getWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    (void) [lastTopKey_ removeWithId:JavaLangInteger_valueOfWithInt_([collection getId])];
    if ([((JavaLangLong *) nil_chk(prevKey)) longLongValue] > 0) {
      (void) [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) removeWithId:prevKey];
    }
    (void) [lastTopKey_ putWithId:JavaLangInteger_valueOfWithInt_([collection getId]) withId:JavaLangLong_valueOfWithLong_(key)];
    if (key > 0) {
      (void) [((JavaUtilTreeMap *) nil_chk(sortedCollection_)) putWithId:JavaLangLong_valueOfWithLong_(key) withId:collection];
    }
    [((DKMailboxesQueue *) nil_chk(queue_)) notifyQueueChanged];
  }
}

- (jlong)buildKeyWithLong:(jlong)time {
  @synchronized(self) {
    jlong currentTime = DKActorTime_currentTime();
    if (time < currentTime) {
      time = currentTime;
    }
    id<JavaUtilIterator> iterator = [((JavaUtilHashSet *) nil_chk(usedSlot_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      jlong t = [((JavaLangLong *) nil_chk([iterator next])) longLongValue];
      if (t < currentTime * ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE) {
        [iterator remove];
      }
    }
    jlong shift = 0;
    while ([usedSlot_ containsWithId:JavaLangLong_valueOfWithLong_(time * ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift)]) {
      shift++;
    }
    [usedSlot_ addWithId:JavaLangLong_valueOfWithLong_(time * ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift)];
    return time * ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_MULTIPLE + shift;
  }
}

@end

void ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_initWithDKMailboxesQueue_(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *self, DKMailboxesQueue *queue) {
  (void) NSObject_init(self);
  self->usedSlot_ = new_JavaUtilHashSet_init();
  self->collections_ = new_JavaUtilHashMap_init();
  self->lastTopKey_ = new_JavaUtilHashMap_init();
  self->sortedCollection_ = new_JavaUtilTreeMap_init();
  self->queue_ = queue;
}

ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_initWithDKMailboxesQueue_(DKMailboxesQueue *queue) {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *self = [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot alloc];
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_initWithDKMailboxesQueue_(self, queue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot)

J2OBJC_INITIALIZED_DEFN(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult)

@implementation ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult

+ (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)envelopeWithDKEnvelope:(DKEnvelope *)envelope {
  return ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithDKEnvelope_(envelope);
}

+ (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *)delayWithLong:(jlong)delay {
  return ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_(delay);
}

- (instancetype)initWithDKEnvelope:(DKEnvelope *)envelope {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(self, envelope);
  return self;
}

- (instancetype)initWithLong:(jlong)delay {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(self, delay);
  return self;
}

- (DKEnvelope *)getEnvelope {
  return envelope__;
}

- (jlong)getDelay {
  return delay__;
}

- (void)updateWithDKEnvelope:(DKEnvelope *)envelope
                    withLong:(jlong)delay {
  self->envelope__ = envelope;
  self->delay__ = delay;
}

- (void)recycle {
  [((AMThreadLocalCompat *) nil_chk(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) setWithId:self];
}

+ (void)initialize {
  if (self == [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult class]) {
    ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_ = DKEnvironment_createThreadLocal();
    J2OBJC_SET_INITIALIZED(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult)
  }
}

@end

ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_envelopeWithDKEnvelope_(DKEnvelope *envelope) {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initialize();
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((AMThreadLocalCompat *) nil_chk(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_ remove];
    [res updateWithDKEnvelope:envelope withLong:0];
  }
  else {
    res = new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(envelope);
  }
  return res;
}

ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_delayWithLong_(jlong delay) {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initialize();
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((AMThreadLocalCompat *) nil_chk(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_)) get];
  if (res != nil) {
    [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_RESULT_CACHE_ remove];
    [res updateWithDKEnvelope:nil withLong:delay];
  }
  else {
    res = new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(delay);
  }
  return res;
}

void ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self, DKEnvelope *envelope) {
  (void) NSObject_init(self);
  self->envelope__ = envelope;
}

ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(DKEnvelope *envelope) {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self = [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult alloc];
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithDKEnvelope_(self, envelope);
  return self;
}

void ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self, jlong delay) {
  (void) NSObject_init(self);
  self->delay__ = delay;
}

ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *new_ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(jlong delay) {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *self = [ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult alloc];
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult_initWithLong_(self, delay);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult)
