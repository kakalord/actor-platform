//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/User.java
//

#ifndef _ImActorModelApiUser_H_
#define _ImActorModelApiUser_H_

@class BSBserValues;
@class BSBserWriter;
@class ImActorModelApiAvatar;
@class ImActorModelApiSexEnum;
@class ImActorModelApiUserStateEnum;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiUser : BSBserObject {
}

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)name
               withNSString:(NSString *)localName
 withImActorModelApiSexEnum:(ImActorModelApiSexEnum *)sex
           withJavaUtilList:(id<JavaUtilList>)keyHashes
                   withLong:(jlong)phone
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
           withJavaUtilList:(id<JavaUtilList>)phones
           withJavaUtilList:(id<JavaUtilList>)emails
withImActorModelApiUserStateEnum:(ImActorModelApiUserStateEnum *)userState;

- (instancetype)init;

- (jint)getId;

- (jlong)getAccessHash;

- (NSString *)getName;

- (NSString *)getLocalName;

- (ImActorModelApiSexEnum *)getSex;

- (id<JavaUtilList>)getKeyHashes;

- (jlong)getPhone;

- (ImActorModelApiAvatar *)getAvatar;

- (id<JavaUtilList>)getPhones;

- (id<JavaUtilList>)getEmails;

- (ImActorModelApiUserStateEnum *)getUserState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUser)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUser)

#endif // _ImActorModelApiUser_H_