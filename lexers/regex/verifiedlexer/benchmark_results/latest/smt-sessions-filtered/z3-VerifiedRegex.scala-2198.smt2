; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108094 () Bool)

(assert start!108094)

(declare-fun b!1211485 () Bool)

(declare-fun b_free!28813 () Bool)

(declare-fun b_next!29517 () Bool)

(assert (=> b!1211485 (= b_free!28813 (not b_next!29517))))

(declare-fun tp!343101 () Bool)

(declare-fun b_and!82013 () Bool)

(assert (=> b!1211485 (= tp!343101 b_and!82013)))

(declare-fun b_free!28815 () Bool)

(declare-fun b_next!29519 () Bool)

(assert (=> b!1211485 (= b_free!28815 (not b_next!29519))))

(declare-fun tp!343100 () Bool)

(declare-fun b_and!82015 () Bool)

(assert (=> b!1211485 (= tp!343100 b_and!82015)))

(declare-fun b!1211479 () Bool)

(declare-fun e!777264 () Bool)

(assert (=> b!1211479 (= e!777264 false)))

(declare-datatypes ((List!12316 0))(
  ( (Nil!12258) (Cons!12258 (h!17659 (_ BitVec 16)) (t!112700 List!12316)) )
))
(declare-datatypes ((TokenValue!2169 0))(
  ( (FloatLiteralValue!4338 (text!15628 List!12316)) (TokenValueExt!2168 (__x!8053 Int)) (Broken!10845 (value!68449 List!12316)) (Object!2226) (End!2169) (Def!2169) (Underscore!2169) (Match!2169) (Else!2169) (Error!2169) (Case!2169) (If!2169) (Extends!2169) (Abstract!2169) (Class!2169) (Val!2169) (DelimiterValue!4338 (del!2229 List!12316)) (KeywordValue!2175 (value!68450 List!12316)) (CommentValue!4338 (value!68451 List!12316)) (WhitespaceValue!4338 (value!68452 List!12316)) (IndentationValue!2169 (value!68453 List!12316)) (String!14976) (Int32!2169) (Broken!10846 (value!68454 List!12316)) (Boolean!2170) (Unit!18609) (OperatorValue!2172 (op!2229 List!12316)) (IdentifierValue!4338 (value!68455 List!12316)) (IdentifierValue!4339 (value!68456 List!12316)) (WhitespaceValue!4339 (value!68457 List!12316)) (True!4338) (False!4338) (Broken!10847 (value!68458 List!12316)) (Broken!10848 (value!68459 List!12316)) (True!4339) (RightBrace!2169) (RightBracket!2169) (Colon!2169) (Null!2169) (Comma!2169) (LeftBracket!2169) (False!4339) (LeftBrace!2169) (ImaginaryLiteralValue!2169 (text!15629 List!12316)) (StringLiteralValue!6507 (value!68460 List!12316)) (EOFValue!2169 (value!68461 List!12316)) (IdentValue!2169 (value!68462 List!12316)) (DelimiterValue!4339 (value!68463 List!12316)) (DedentValue!2169 (value!68464 List!12316)) (NewLineValue!2169 (value!68465 List!12316)) (IntegerValue!6507 (value!68466 (_ BitVec 32)) (text!15630 List!12316)) (IntegerValue!6508 (value!68467 Int) (text!15631 List!12316)) (Times!2169) (Or!2169) (Equal!2169) (Minus!2169) (Broken!10849 (value!68468 List!12316)) (And!2169) (Div!2169) (LessEqual!2169) (Mod!2169) (Concat!5540) (Not!2169) (Plus!2169) (SpaceValue!2169 (value!68469 List!12316)) (IntegerValue!6509 (value!68470 Int) (text!15632 List!12316)) (StringLiteralValue!6508 (text!15633 List!12316)) (FloatLiteralValue!4339 (text!15634 List!12316)) (BytesLiteralValue!2169 (value!68471 List!12316)) (CommentValue!4339 (value!68472 List!12316)) (StringLiteralValue!6509 (value!68473 List!12316)) (ErrorTokenValue!2169 (msg!2230 List!12316)) )
))
(declare-datatypes ((C!7060 0))(
  ( (C!7061 (val!4060 Int)) )
))
(declare-datatypes ((List!12317 0))(
  ( (Nil!12259) (Cons!12259 (h!17660 C!7060) (t!112701 List!12317)) )
))
(declare-datatypes ((IArray!8057 0))(
  ( (IArray!8058 (innerList!4086 List!12317)) )
))
(declare-datatypes ((Conc!4026 0))(
  ( (Node!4026 (left!10648 Conc!4026) (right!10978 Conc!4026) (csize!8282 Int) (cheight!4237 Int)) (Leaf!6225 (xs!6737 IArray!8057) (csize!8283 Int)) (Empty!4026) )
))
(declare-datatypes ((BalanceConc!7984 0))(
  ( (BalanceConc!7985 (c!202906 Conc!4026)) )
))
(declare-datatypes ((Regex!3371 0))(
  ( (ElementMatch!3371 (c!202907 C!7060)) (Concat!5541 (regOne!7254 Regex!3371) (regTwo!7254 Regex!3371)) (EmptyExpr!3371) (Star!3371 (reg!3700 Regex!3371)) (EmptyLang!3371) (Union!3371 (regOne!7255 Regex!3371) (regTwo!7255 Regex!3371)) )
))
(declare-datatypes ((String!14977 0))(
  ( (String!14978 (value!68474 String)) )
))
(declare-datatypes ((TokenValueInjection!4034 0))(
  ( (TokenValueInjection!4035 (toValue!3218 Int) (toChars!3077 Int)) )
))
(declare-datatypes ((Rule!4002 0))(
  ( (Rule!4003 (regex!2101 Regex!3371) (tag!2363 String!14977) (isSeparator!2101 Bool) (transformation!2101 TokenValueInjection!4034)) )
))
(declare-datatypes ((Token!3864 0))(
  ( (Token!3865 (value!68475 TokenValue!2169) (rule!3522 Rule!4002) (size!9757 Int) (originalCharacters!2655 List!12317)) )
))
(declare-datatypes ((List!12318 0))(
  ( (Nil!12260) (Cons!12260 (h!17661 Token!3864) (t!112702 List!12318)) )
))
(declare-datatypes ((tuple2!12138 0))(
  ( (tuple2!12139 (_1!6916 List!12318) (_2!6916 List!12317)) )
))
(declare-fun lt!414609 () tuple2!12138)

(declare-datatypes ((LexerInterface!1796 0))(
  ( (LexerInterfaceExt!1793 (__x!8054 Int)) (Lexer!1794) )
))
(declare-fun thiss!20528 () LexerInterface!1796)

(declare-datatypes ((List!12319 0))(
  ( (Nil!12261) (Cons!12261 (h!17662 Rule!4002) (t!112703 List!12319)) )
))
(declare-fun rules!2728 () List!12319)

(declare-fun input!2346 () List!12317)

(declare-fun lexList!426 (LexerInterface!1796 List!12319 List!12317) tuple2!12138)

(assert (=> b!1211479 (= lt!414609 (lexList!426 thiss!20528 rules!2728 input!2346))))

(declare-fun res!544903 () Bool)

(assert (=> start!108094 (=> (not res!544903) (not e!777264))))

(get-info :version)

(assert (=> start!108094 (= res!544903 ((_ is Lexer!1794) thiss!20528))))

(assert (=> start!108094 e!777264))

(assert (=> start!108094 true))

(declare-fun e!777261 () Bool)

(assert (=> start!108094 e!777261))

(declare-fun e!777262 () Bool)

(assert (=> start!108094 e!777262))

(declare-fun b!1211480 () Bool)

(declare-fun tp_is_empty!6263 () Bool)

(declare-fun tp!343097 () Bool)

(assert (=> b!1211480 (= e!777262 (and tp_is_empty!6263 tp!343097))))

(declare-fun b!1211481 () Bool)

(declare-fun e!777260 () Bool)

(declare-fun tp!343099 () Bool)

(assert (=> b!1211481 (= e!777261 (and e!777260 tp!343099))))

(declare-fun b!1211482 () Bool)

(declare-fun res!544902 () Bool)

(assert (=> b!1211482 (=> (not res!544902) (not e!777264))))

(declare-fun rulesInvariant!1670 (LexerInterface!1796 List!12319) Bool)

(assert (=> b!1211482 (= res!544902 (rulesInvariant!1670 thiss!20528 rules!2728))))

(declare-fun b!1211483 () Bool)

(declare-fun res!544901 () Bool)

(assert (=> b!1211483 (=> (not res!544901) (not e!777264))))

(declare-fun isEmpty!7309 (List!12319) Bool)

(assert (=> b!1211483 (= res!544901 (not (isEmpty!7309 rules!2728)))))

(declare-fun b!1211484 () Bool)

(declare-fun e!777259 () Bool)

(declare-fun tp!343098 () Bool)

(declare-fun inv!16442 (String!14977) Bool)

(declare-fun inv!16444 (TokenValueInjection!4034) Bool)

(assert (=> b!1211484 (= e!777260 (and tp!343098 (inv!16442 (tag!2363 (h!17662 rules!2728))) (inv!16444 (transformation!2101 (h!17662 rules!2728))) e!777259))))

(assert (=> b!1211485 (= e!777259 (and tp!343101 tp!343100))))

(assert (= (and start!108094 res!544903) b!1211483))

(assert (= (and b!1211483 res!544901) b!1211482))

(assert (= (and b!1211482 res!544902) b!1211479))

(assert (= b!1211484 b!1211485))

(assert (= b!1211481 b!1211484))

(assert (= (and start!108094 ((_ is Cons!12261) rules!2728)) b!1211481))

(assert (= (and start!108094 ((_ is Cons!12259) input!2346)) b!1211480))

(declare-fun m!1387093 () Bool)

(assert (=> b!1211479 m!1387093))

(declare-fun m!1387095 () Bool)

(assert (=> b!1211482 m!1387095))

(declare-fun m!1387097 () Bool)

(assert (=> b!1211483 m!1387097))

(declare-fun m!1387099 () Bool)

(assert (=> b!1211484 m!1387099))

(declare-fun m!1387101 () Bool)

(assert (=> b!1211484 m!1387101))

(check-sat b_and!82015 (not b!1211483) (not b_next!29517) tp_is_empty!6263 (not b!1211479) (not b!1211484) (not b!1211480) b_and!82013 (not b_next!29519) (not b!1211482) (not b!1211481))
(check-sat b_and!82015 b_and!82013 (not b_next!29517) (not b_next!29519))
