; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!111108 () Bool)

(assert start!111108)

(declare-fun res!557020 () Bool)

(declare-fun e!800931 () Bool)

(assert (=> start!111108 (=> (not res!557020) (not e!800931))))

(declare-datatypes ((List!12652 0))(
  ( (Nil!12586) (Cons!12586 (h!17987 (_ BitVec 16)) (t!115891 List!12652)) )
))
(declare-datatypes ((TokenValue!2252 0))(
  ( (FloatLiteralValue!4504 (text!16209 List!12652)) (TokenValueExt!2251 (__x!8219 Int)) (Broken!11260 (value!70914 List!12652)) (Object!2317) (End!2252) (Def!2252) (Underscore!2252) (Match!2252) (Else!2252) (Error!2252) (Case!2252) (If!2252) (Extends!2252) (Abstract!2252) (Class!2252) (Val!2252) (DelimiterValue!4504 (del!2312 List!12652)) (KeywordValue!2258 (value!70915 List!12652)) (CommentValue!4504 (value!70916 List!12652)) (WhitespaceValue!4504 (value!70917 List!12652)) (IndentationValue!2252 (value!70918 List!12652)) (String!15493) (Int32!2252) (Broken!11261 (value!70919 List!12652)) (Boolean!2253) (Unit!18876) (OperatorValue!2255 (op!2312 List!12652)) (IdentifierValue!4504 (value!70920 List!12652)) (IdentifierValue!4505 (value!70921 List!12652)) (WhitespaceValue!4505 (value!70922 List!12652)) (True!4504) (False!4504) (Broken!11262 (value!70923 List!12652)) (Broken!11263 (value!70924 List!12652)) (True!4505) (RightBrace!2252) (RightBracket!2252) (Colon!2252) (Null!2252) (Comma!2252) (LeftBracket!2252) (False!4505) (LeftBrace!2252) (ImaginaryLiteralValue!2252 (text!16210 List!12652)) (StringLiteralValue!6756 (value!70925 List!12652)) (EOFValue!2252 (value!70926 List!12652)) (IdentValue!2252 (value!70927 List!12652)) (DelimiterValue!4505 (value!70928 List!12652)) (DedentValue!2252 (value!70929 List!12652)) (NewLineValue!2252 (value!70930 List!12652)) (IntegerValue!6756 (value!70931 (_ BitVec 32)) (text!16211 List!12652)) (IntegerValue!6757 (value!70932 Int) (text!16212 List!12652)) (Times!2252) (Or!2252) (Equal!2252) (Minus!2252) (Broken!11264 (value!70933 List!12652)) (And!2252) (Div!2252) (LessEqual!2252) (Mod!2252) (Concat!5726) (Not!2252) (Plus!2252) (SpaceValue!2252 (value!70934 List!12652)) (IntegerValue!6758 (value!70935 Int) (text!16213 List!12652)) (StringLiteralValue!6757 (text!16214 List!12652)) (FloatLiteralValue!4505 (text!16215 List!12652)) (BytesLiteralValue!2252 (value!70936 List!12652)) (CommentValue!4505 (value!70937 List!12652)) (StringLiteralValue!6758 (value!70938 List!12652)) (ErrorTokenValue!2252 (msg!2313 List!12652)) )
))
(declare-datatypes ((Regex!3474 0))(
  ( (ElementMatch!3474 (c!208959 (_ BitVec 16))) (Concat!5727 (regOne!7460 Regex!3474) (regTwo!7460 Regex!3474)) (EmptyExpr!3474) (Star!3474 (reg!3803 Regex!3474)) (EmptyLang!3474) (Union!3474 (regOne!7461 Regex!3474) (regTwo!7461 Regex!3474)) )
))
(declare-datatypes ((String!15494 0))(
  ( (String!15495 (value!70939 String)) )
))
(declare-datatypes ((IArray!8277 0))(
  ( (IArray!8278 (innerList!4196 List!12652)) )
))
(declare-datatypes ((Conc!4136 0))(
  ( (Node!4136 (left!10908 Conc!4136) (right!11238 Conc!4136) (csize!8502 Int) (cheight!4347 Int)) (Leaf!6413 (xs!6847 IArray!8277) (csize!8503 Int)) (Empty!4136) )
))
(declare-datatypes ((BalanceConc!8212 0))(
  ( (BalanceConc!8213 (c!208960 Conc!4136)) )
))
(declare-datatypes ((TokenValueInjection!4164 0))(
  ( (TokenValueInjection!4165 (toValue!3323 Int) (toChars!3182 Int)) )
))
(declare-datatypes ((Rule!4124 0))(
  ( (Rule!4125 (regex!2162 Regex!3474) (tag!2424 String!15494) (isSeparator!2162 Bool) (transformation!2162 TokenValueInjection!4164)) )
))
(declare-datatypes ((List!12653 0))(
  ( (Nil!12587) (Cons!12587 (h!17988 Rule!4124) (t!115892 List!12653)) )
))
(declare-fun lt!421041 () List!12653)

(declare-fun isEmpty!7501 (List!12653) Bool)

(assert (=> start!111108 (= res!557020 (not (isEmpty!7501 lt!421041)))))

(declare-datatypes ((JsonLexer!340 0))(
  ( (JsonLexer!341) )
))
(declare-fun rules!109 (JsonLexer!340) List!12653)

(assert (=> start!111108 (= lt!421041 (rules!109 JsonLexer!341))))

(assert (=> start!111108 e!800931))

(declare-fun b!1258271 () Bool)

(declare-fun res!557019 () Bool)

(assert (=> b!1258271 (=> (not res!557019) (not e!800931))))

(declare-datatypes ((LexerInterface!1857 0))(
  ( (LexerInterfaceExt!1854 (__x!8220 Int)) (Lexer!1855) )
))
(declare-fun rulesInvariant!1731 (LexerInterface!1857 List!12653) Bool)

(assert (=> b!1258271 (= res!557019 (rulesInvariant!1731 Lexer!1855 lt!421041))))

(declare-fun b!1258272 () Bool)

(assert (=> b!1258272 (= e!800931 false)))

(declare-datatypes ((Token!3986 0))(
  ( (Token!3987 (value!70940 TokenValue!2252) (rule!3593 Rule!4124) (size!9974 Int) (originalCharacters!2716 List!12652)) )
))
(declare-datatypes ((List!12654 0))(
  ( (Nil!12588) (Cons!12588 (h!17989 Token!3986) (t!115893 List!12654)) )
))
(declare-datatypes ((IArray!8279 0))(
  ( (IArray!8280 (innerList!4197 List!12654)) )
))
(declare-datatypes ((Conc!4137 0))(
  ( (Node!4137 (left!10909 Conc!4137) (right!11239 Conc!4137) (csize!8504 Int) (cheight!4348 Int)) (Leaf!6414 (xs!6848 IArray!8279) (csize!8505 Int)) (Empty!4137) )
))
(declare-datatypes ((BalanceConc!8214 0))(
  ( (BalanceConc!8215 (c!208961 Conc!4137)) )
))
(declare-fun lt!421042 () BalanceConc!8214)

(declare-fun singletonSeq!748 (Token!3986) BalanceConc!8214)

(declare-fun apply!2700 (TokenValueInjection!4164 BalanceConc!8212) TokenValue!2252)

(declare-datatypes ((KeywordValueInjection!142 0))(
  ( (KeywordValueInjection!143) )
))
(declare-fun injection!9 (KeywordValueInjection!142) TokenValueInjection!4164)

(declare-fun singletonSeq!749 ((_ BitVec 16)) BalanceConc!8212)

(declare-fun rBracketRule!0 (JsonLexer!340) Rule!4124)

(assert (=> b!1258272 (= lt!421042 (singletonSeq!748 (Token!3987 (apply!2700 (injection!9 KeywordValueInjection!143) (singletonSeq!749 #x005D)) (rBracketRule!0 JsonLexer!341) 1 (Cons!12586 #x005D Nil!12586))))))

(assert (= (and start!111108 res!557020) b!1258271))

(assert (= (and b!1258271 res!557019) b!1258272))

(declare-fun m!1416581 () Bool)

(assert (=> start!111108 m!1416581))

(declare-fun m!1416583 () Bool)

(assert (=> start!111108 m!1416583))

(declare-fun m!1416585 () Bool)

(assert (=> b!1258271 m!1416585))

(declare-fun m!1416587 () Bool)

(assert (=> b!1258272 m!1416587))

(assert (=> b!1258272 m!1416587))

(declare-fun m!1416589 () Bool)

(assert (=> b!1258272 m!1416589))

(declare-fun m!1416591 () Bool)

(assert (=> b!1258272 m!1416591))

(assert (=> b!1258272 m!1416589))

(declare-fun m!1416593 () Bool)

(assert (=> b!1258272 m!1416593))

(declare-fun m!1416595 () Bool)

(assert (=> b!1258272 m!1416595))

(push 1)

(assert (not start!111108))

(assert (not b!1258272))

(assert (not b!1258271))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

