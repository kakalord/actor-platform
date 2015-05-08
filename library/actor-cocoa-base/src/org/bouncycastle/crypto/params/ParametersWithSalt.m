//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithSalt.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/params/ParametersWithSalt.h"

@interface OrgBouncycastleCryptoParamsParametersWithSalt () {
 @public
  IOSByteArray *salt_;
  id<OrgBouncycastleCryptoCipherParameters> parameters_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSalt, salt_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSalt, parameters_, id<OrgBouncycastleCryptoCipherParameters>)

@implementation OrgBouncycastleCryptoParamsParametersWithSalt

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)salt {
  OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(self, parameters, salt);
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)salt
                                                      withInt:(jint)saltOff
                                                      withInt:(jint)saltLen {
  OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(self, parameters, salt, saltOff, saltLen);
  return self;
}

- (IOSByteArray *)getSalt {
  return salt_;
}

- (id<OrgBouncycastleCryptoCipherParameters>)getParameters {
  return parameters_;
}

@end

void OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(OrgBouncycastleCryptoParamsParametersWithSalt *self, id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *salt) {
  (void) OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(self, parameters, salt, 0, ((IOSByteArray *) nil_chk(salt))->size_);
}

OrgBouncycastleCryptoParamsParametersWithSalt *new_OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *salt) {
  OrgBouncycastleCryptoParamsParametersWithSalt *self = [OrgBouncycastleCryptoParamsParametersWithSalt alloc];
  OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(self, parameters, salt);
  return self;
}

void OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(OrgBouncycastleCryptoParamsParametersWithSalt *self, id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *salt, jint saltOff, jint saltLen) {
  (void) NSObject_init(self);
  self->salt_ = [IOSByteArray newArrayWithLength:saltLen];
  self->parameters_ = parameters;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(salt, saltOff, self->salt_, 0, saltLen);
}

OrgBouncycastleCryptoParamsParametersWithSalt *new_OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *salt, jint saltOff, jint saltLen) {
  OrgBouncycastleCryptoParamsParametersWithSalt *self = [OrgBouncycastleCryptoParamsParametersWithSalt alloc];
  OrgBouncycastleCryptoParamsParametersWithSalt_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(self, parameters, salt, saltOff, saltLen);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsParametersWithSalt)
