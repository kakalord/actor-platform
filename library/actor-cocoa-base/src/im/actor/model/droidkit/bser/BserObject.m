//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"


#line 8
@implementation BSBserObject


#line 9
- (instancetype)init {
  return [super init];
}

- (IOSByteArray *)toByteArray {
  
#line 14
  BSDataOutput *outputStream = [[BSDataOutput alloc] init];
  BSBserWriter *writer = [[BSBserWriter alloc] initWithBSDataOutput:outputStream];
  @try {
    [self serializeWithBSBserWriter:writer];
  }
  @catch (
#line 18
  JavaIoIOException *e) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Unexpected IO exception"];
  }
  return [outputStream toByteArray];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserObject)