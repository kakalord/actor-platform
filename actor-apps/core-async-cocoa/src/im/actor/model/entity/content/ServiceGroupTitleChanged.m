//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/ServiceGroupTitleChanged.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedTitle.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"

@interface AMServiceGroupTitleChanged () {
 @public
  NSString *newTitle_;
}

@end

J2OBJC_FIELD_SETTER(AMServiceGroupTitleChanged, newTitle_, NSString *)

@implementation AMServiceGroupTitleChanged

+ (AMServiceGroupTitleChanged *)createWithNSString:(NSString *)title {
  return AMServiceGroupTitleChanged_createWithNSString_(title);
}

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)remoteContainer {
  AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  return self;
}

- (NSString *)getNewTitle {
  return newTitle_;
}

@end

AMServiceGroupTitleChanged *AMServiceGroupTitleChanged_createWithNSString_(NSString *title) {
  AMServiceGroupTitleChanged_initialize();
  return new_AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APServiceMessage_initWithNSString_withAPServiceEx_(@"Title changed", new_APServiceExChangedTitle_initWithNSString_(title))));
}

void AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMServiceGroupTitleChanged *self, ImActorModelEntityContentInternalContentRemoteContainer *remoteContainer) {
  (void) AMServiceContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  APServiceMessage *serviceMessage = (APServiceMessage *) check_class_cast([((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(remoteContainer)) getMessage], [APServiceMessage class]);
  self->newTitle_ = [((APServiceExChangedTitle *) nil_chk(((APServiceExChangedTitle *) check_class_cast([((APServiceMessage *) nil_chk(serviceMessage)) getExt], [APServiceExChangedTitle class])))) getTitle];
}

AMServiceGroupTitleChanged *new_AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *remoteContainer) {
  AMServiceGroupTitleChanged *self = [AMServiceGroupTitleChanged alloc];
  AMServiceGroupTitleChanged_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, remoteContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMServiceGroupTitleChanged)