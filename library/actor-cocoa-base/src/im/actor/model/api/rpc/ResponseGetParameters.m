//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetParameters.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetParameters.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Parameter.h"
#include "im/actor/model/api/rpc/ResponseGetParameters.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseGetParameters () {
 @public
  id<JavaUtilList> parameters_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseGetParameters, parameters_, id<JavaUtilList>)


#line 20
@implementation ImActorModelApiRpcResponseGetParameters


#line 23
+ (ImActorModelApiRpcResponseGetParameters *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseGetParameters_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)parameters {
  ImActorModelApiRpcResponseGetParameters_initWithJavaUtilList_(self, parameters);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiRpcResponseGetParameters_init(self);
  return self;
}


#line 37
- (id<JavaUtilList>)getParameters {
  return self->parameters_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _parameters = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_parameters addWithId:new_ImActorModelApiParameter_init()];
  }
  self->parameters_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_parameters];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->parameters_];
}


#line 56
- (NSString *)description {
  NSString *res = @"tuple GetParameters{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 63
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseGetParameters_HEADER;
}

@end


#line 23
ImActorModelApiRpcResponseGetParameters *ImActorModelApiRpcResponseGetParameters_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseGetParameters_initialize();
  
#line 24
  return ((ImActorModelApiRpcResponseGetParameters *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseGetParameters_init(), data));
}


#line 29
void ImActorModelApiRpcResponseGetParameters_initWithJavaUtilList_(ImActorModelApiRpcResponseGetParameters *self, id<JavaUtilList> parameters) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 30
  self->parameters_ = parameters;
}


#line 29
ImActorModelApiRpcResponseGetParameters *new_ImActorModelApiRpcResponseGetParameters_initWithJavaUtilList_(id<JavaUtilList> parameters) {
  ImActorModelApiRpcResponseGetParameters *self = [ImActorModelApiRpcResponseGetParameters alloc];
  ImActorModelApiRpcResponseGetParameters_initWithJavaUtilList_(self, parameters);
  return self;
}


#line 33
void ImActorModelApiRpcResponseGetParameters_init(ImActorModelApiRpcResponseGetParameters *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 33
ImActorModelApiRpcResponseGetParameters *new_ImActorModelApiRpcResponseGetParameters_init() {
  ImActorModelApiRpcResponseGetParameters *self = [ImActorModelApiRpcResponseGetParameters alloc];
  ImActorModelApiRpcResponseGetParameters_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseGetParameters)