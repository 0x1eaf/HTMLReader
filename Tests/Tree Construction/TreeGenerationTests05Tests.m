// This file was autogenerated from Tests/html5lib/tree-construction/tests5.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests05Tests : SenTestCase

@end

@implementation TreeGenerationTests05Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<style> <!-- </style>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|       \" <!-- \"\n|   <body>\n|     \"x\"\n");
    HTMLAssertParserState(parser, 2, fixture, nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<style> <!-- </style> --> </style>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<style> <!--> </style>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|       \" <!--> \"\n|   <body>\n|     \"x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<style> <!---> </style>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|       \" <!---> \"\n|   <body>\n|     \"x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<iframe> <!---> </iframe>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \" <!---> \"\n|     \"x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<iframe> <!--- </iframe>->x</iframe> --> </iframe>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \" <!--- \"\n|     \"->x --> x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<script> <!-- </script> --> </script>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <script>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<title> <!-- </title> --> </title>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <title>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<textarea> <!--- </textarea>->x</textarea> --> </textarea>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \" <!--- \"\n|     \"->x --> x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<style> <!</-- </style>x"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|       \" <!</-- \"\n|   <body>\n|     \"x\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p><xmp></xmp>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <xmp>\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<xmp> <!-- > --> </xmp>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <xmp>\n|       \" <!-- > --> \"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<title>&amp;</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <title>\n|       \"&\"\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<title><!--&amp;--></title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <title>\n|       \"<!--&-->\"\n|   <body>\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<title><!--</title>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <title>\n|       \"<!--\"\n|   <body>\n");
    HTMLAssertParserState(parser, 2, fixture, nil);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<noscript><!--</noscript>--></noscript>"];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <noscript>\n|       \"<!--\"\n|   <body>\n|     \"-->\"\n");
    HTMLAssertParserState(parser, 1, fixture, nil);
}

@end