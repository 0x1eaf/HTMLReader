// This file was autogenerated from Tests/html5lib/tree-construction/tests21.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests21Tests : SenTestCase

@end

@implementation TreeGenerationTests21Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <!-- [CDATA[foo]] -->\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[foo"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA["];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]] >]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]] >\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]] >]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]] >\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]]"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]]\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[]>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]>a\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html><svg><![CDATA[foo]]]]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]]\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><foreignObject><div><![CDATA[foo]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <div>\n|           <!-- [CDATA[foo]] -->\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[</svg>a]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>a\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[</svg>a"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]><path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <svg path>\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]></path>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]><!--path-->"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <!-- path -->\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<svg>]]>path"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>path\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><![CDATA[<!--svg-->]]>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<!--svg-->\"\n");
    HTMLAssertParserState(parser, 0, fixture, nil);
}

@end