# Test Suite for ZipLex

This directory contains unit tests for the ZipLex lexer, which is a formally verified lexer implementation.

## Test Setup

The test suite uses ScalaTest 3.2.19, the most popular testing framework for Scala.

### Dependencies

The following dependency has been added to `build.sbt`:

```scala
libraryDependencies ++= Seq(
  "org.scalatest" %% "scalatest" % "3.2.19" % Test,
  "ch.epfl.lara" %% "stainless-library" % "0.9.9.2-4-g2ff974d"
)
```

### Running Tests

To run all tests:
```bash
sbt test
```

To run a specific test suite:
```bash
sbt "testOnly com.ziplex.lexer.VerifiedRegexSpec"
sbt "testOnly com.ziplex.lexer.VerifiedLexerSpec"
sbt "testOnly com.ziplex.lexer.example.JsonLexerSpec"
```

To run tests continuously on file changes:
```bash
sbt ~test
```

## Test Organization

### VerifiedRegexSpec
Tests for basic regex matching functionality including:
- Single character matching
- Union (alternation)
- Concatenation
- Star (Kleene star)
- Complex patterns
- Nullable property

### VerifiedLexerSpec  
Tests for the lexer core functionality including:
- Token creation
- Rule validation
- Basic lexing
- Multiple token lexing
- Maximal munch principle
- Print function (token reconstruction)

### JsonLexerSpec
Tests for the JSON lexer implementation including:
- Basic JSON tokens (braces, brackets, colon, comma)
- Literals (true, false, null)
- Numbers (integers, decimals)
- Strings
- Whitespace handling
- Complex JSON structures
- Token reconstruction

## Implementation Notes

The lexer uses Stainless for formal verification. When writing tests:

1. Use the `.toStainless` extension method to convert Scala strings to Stainless sequences
2. Access the underlying Stainless list with `.list` property
3. Use `Keyword ValueInjection.injection` for simple token transformations from the JSON lexer examples

## Example Test

```scala
it should "lex a simple token" in {
  val regex: Regex[Char] = "hello".r
  val rule = Rule(regex, "HELLO", transformation = KeywordValueInjection.injection)
  val rules = Cons(rule, stainless.collection.Nil())
  val input = "hello".toStainless
  
  val (tokens, suffix) = Lexer.lex(rules, input)
  
  tokens.size shouldBe 1
  suffix.isEmpty shouldBe true
  tokens(0).rule.tag shouldBe "HELLO"
}
```

## Known Issues

Some tests are currently disabled or simplified due to:
- Complex TokenValueInjection requirements
- BigInt matcher incompatibilities with ScalaTest
- Stainless type system integration

These will be addressed in future iterations.
