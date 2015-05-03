//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/FileLocalSource.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/FileLocalSource.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/FileLocalSource.h"
#include "im/actor/model/entity/content/FileSource.h"
#include "java/io/IOException.h"

@interface AMFileLocalSource () {
 @public
  NSString *fileName_;
  NSString *fileDescriptor_;
  jint size_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(AMFileLocalSource, fileName_, NSString *)
J2OBJC_FIELD_SETTER(AMFileLocalSource, fileDescriptor_, NSString *)

__attribute__((unused)) static void AMFileLocalSource_init(AMFileLocalSource *self);

__attribute__((unused)) static AMFileLocalSource *new_AMFileLocalSource_init() NS_RETURNS_RETAINED;


#line 11
@implementation AMFileLocalSource

+ (AMFileLocalSource *)fromValuesWithBSBserValues:(BSBserValues *)reader {
  return AMFileLocalSource_fromValuesWithBSBserValues_(reader);
}


#line 23
- (instancetype)initWithNSString:(NSString *)fileName
                         withInt:(jint)size
                    withNSString:(NSString *)fileDescriptor {
  AMFileLocalSource_initWithNSString_withInt_withNSString_(self, fileName, size, fileDescriptor);
  return self;
}


#line 29
- (instancetype)init {
  AMFileLocalSource_init(self);
  return self;
}

- (NSString *)getFileName {
  return fileName_;
}


#line 39
- (jint)getSize {
  return size_;
}

- (NSString *)getFileDescriptor {
  return fileDescriptor_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  fileName_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:2];
  size_ = [values getIntWithInt:3];
  fileDescriptor_ = [values getStringWithInt:4];
}


#line 56
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:2 withNSString:fileName_];
  [writer writeIntWithInt:3 withInt:size_];
  [writer writeStringWithInt:4 withNSString:fileDescriptor_];
}

@end


#line 13
AMFileLocalSource *AMFileLocalSource_fromValuesWithBSBserValues_(BSBserValues *reader) {
  AMFileLocalSource_initialize();
  
#line 14
  AMFileLocalSource *fileLocalSource = new_AMFileLocalSource_init();
  [fileLocalSource parseWithBSBserValues:reader];
  return fileLocalSource;
}


#line 23
void AMFileLocalSource_initWithNSString_withInt_withNSString_(AMFileLocalSource *self, NSString *fileName, jint size, NSString *fileDescriptor) {
  (void) AMFileSource_init(self);
  
#line 24
  self->fileName_ = fileName;
  self->size_ = size;
  self->fileDescriptor_ = fileDescriptor;
}


#line 23
AMFileLocalSource *new_AMFileLocalSource_initWithNSString_withInt_withNSString_(NSString *fileName, jint size, NSString *fileDescriptor) {
  AMFileLocalSource *self = [AMFileLocalSource alloc];
  AMFileLocalSource_initWithNSString_withInt_withNSString_(self, fileName, size, fileDescriptor);
  return self;
}

void AMFileLocalSource_init(AMFileLocalSource *self) {
  (void) AMFileSource_init(self);
}


#line 29
AMFileLocalSource *new_AMFileLocalSource_init() {
  AMFileLocalSource *self = [AMFileLocalSource alloc];
  AMFileLocalSource_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMFileLocalSource)