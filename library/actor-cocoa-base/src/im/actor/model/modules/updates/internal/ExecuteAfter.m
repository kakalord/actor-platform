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
  if (self = [super init]) {
    
#line 11
    self->seq_ = seq;
    
#line 12
    self->runnable_ = runnable;
  }
  return self;
}


#line 15
- (jint)getSeq {
  
#line 16
  return seq_;
}


#line 19
- (id<JavaLangRunnable>)getRunnable {
  
#line 20
  return runnable_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesUpdatesInternalExecuteAfter *)other {
  [super copyAllFieldsTo:other];
  other->seq_ = seq_;
  other->runnable_ = runnable_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalExecuteAfter)