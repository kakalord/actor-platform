//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/ExecuteAfter.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/ExecuteAfter.java"

#include "J2ObjC_source.h"
#include "im/actor/model/modules/updates/internal/ExecuteAfter.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesUpdatesInternalExecuteAfter () {
 @public
  jint seq_;
  id<JavaLangRunnable> runnable_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalExecuteAfter, runnable_, id<JavaLangRunnable>)


#line 6
@implementation ImActorModelModulesUpdatesInternalExecuteAfter


#line 10
- (instancetype)initWithInt:(jint)seq
       withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(self, seq, runnable);
  return self;
}


#line 15
- (jint)getSeq {
  return seq_;
}

- (id<JavaLangRunnable>)getRunnable {
  return runnable_;
}

@end


#line 10
void ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(ImActorModelModulesUpdatesInternalExecuteAfter *self, jint seq, id<JavaLangRunnable> runnable) {
  (void) NSObject_init(self);
  
#line 11
  self->seq_ = seq;
  self->runnable_ = runnable;
}


#line 10
ImActorModelModulesUpdatesInternalExecuteAfter *new_ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(jint seq, id<JavaLangRunnable> runnable) {
  ImActorModelModulesUpdatesInternalExecuteAfter *self = [ImActorModelModulesUpdatesInternalExecuteAfter alloc];
  ImActorModelModulesUpdatesInternalExecuteAfter_initWithInt_withJavaLangRunnable_(self, seq, runnable);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalExecuteAfter)