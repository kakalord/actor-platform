//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseConfigurationBuilder.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/BaseConfigurationBuilder.java"

#include "J2ObjC_source.h"
#include "im/actor/model/BaseConfigurationBuilder.h"
#include "im/actor/model/ConfigurationBuilder.h"
#include "im/actor/model/jvm/JavaCryptoProvider.h"
#include "im/actor/model/jvm/JavaThreadingProvider.h"


#line 9
@implementation AMBaseConfigurationBuilder


#line 10
- (instancetype)init {
  AMBaseConfigurationBuilder_init(self);
  return self;
}

@end


#line 10
void AMBaseConfigurationBuilder_init(AMBaseConfigurationBuilder *self) {
  (void) AMConfigurationBuilder_init(self);
  
#line 11
  (void) [self setCryptoProvider:new_AMJavaCryptoProvider_init()];
  (void) [self setThreadingProvider:new_AMJavaThreadingProvider_init()];
}


#line 10
AMBaseConfigurationBuilder *new_AMBaseConfigurationBuilder_init() {
  AMBaseConfigurationBuilder *self = [AMBaseConfigurationBuilder alloc];
  AMBaseConfigurationBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMBaseConfigurationBuilder)