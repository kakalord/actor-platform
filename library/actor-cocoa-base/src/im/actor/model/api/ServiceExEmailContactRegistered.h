//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExEmailContactRegistered.java
//

#ifndef _ImActorModelApiServiceExEmailContactRegistered_H_
#define _ImActorModelApiServiceExEmailContactRegistered_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@interface ImActorModelApiServiceExEmailContactRegistered : ImActorModelApiServiceEx {
}

- (instancetype)initWithInt:(jint)uid;

- (instancetype)init;

- (jint)getHeader;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiServiceExEmailContactRegistered)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiServiceExEmailContactRegistered)

#endif // _ImActorModelApiServiceExEmailContactRegistered_H_