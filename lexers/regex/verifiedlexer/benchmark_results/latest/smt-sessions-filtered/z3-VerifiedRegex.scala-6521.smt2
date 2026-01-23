; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344210 () Bool)

(assert start!344210)

(declare-fun b!3672005 () Bool)

(declare-fun b_free!97057 () Bool)

(declare-fun b_next!97761 () Bool)

(assert (=> b!3672005 (= b_free!97057 (not b_next!97761))))

(declare-fun tp!1117224 () Bool)

(declare-fun b_and!273603 () Bool)

(assert (=> b!3672005 (= tp!1117224 b_and!273603)))

(declare-fun b_free!97059 () Bool)

(declare-fun b_next!97763 () Bool)

(assert (=> b!3672005 (= b_free!97059 (not b_next!97763))))

(declare-fun tp!1117221 () Bool)

(declare-fun b_and!273605 () Bool)

(assert (=> b!3672005 (= tp!1117221 b_and!273605)))

(declare-fun b!3672006 () Bool)

(declare-fun b_free!97061 () Bool)

(declare-fun b_next!97765 () Bool)

(assert (=> b!3672006 (= b_free!97061 (not b_next!97765))))

(declare-fun tp!1117218 () Bool)

(declare-fun b_and!273607 () Bool)

(assert (=> b!3672006 (= tp!1117218 b_and!273607)))

(declare-fun b_free!97063 () Bool)

(declare-fun b_next!97767 () Bool)

(assert (=> b!3672006 (= b_free!97063 (not b_next!97767))))

(declare-fun tp!1117214 () Bool)

(declare-fun b_and!273609 () Bool)

(assert (=> b!3672006 (= tp!1117214 b_and!273609)))

(declare-fun b!3671982 () Bool)

(declare-fun b_free!97065 () Bool)

(declare-fun b_next!97769 () Bool)

(assert (=> b!3671982 (= b_free!97065 (not b_next!97769))))

(declare-fun tp!1117225 () Bool)

(declare-fun b_and!273611 () Bool)

(assert (=> b!3671982 (= tp!1117225 b_and!273611)))

(declare-fun b_free!97067 () Bool)

(declare-fun b_next!97771 () Bool)

(assert (=> b!3671982 (= b_free!97067 (not b_next!97771))))

(declare-fun tp!1117222 () Bool)

(declare-fun b_and!273613 () Bool)

(assert (=> b!3671982 (= tp!1117222 b_and!273613)))

(declare-fun b!3671957 () Bool)

(declare-fun b_free!97069 () Bool)

(declare-fun b_next!97773 () Bool)

(assert (=> b!3671957 (= b_free!97069 (not b_next!97773))))

(declare-fun tp!1117213 () Bool)

(declare-fun b_and!273615 () Bool)

(assert (=> b!3671957 (= tp!1117213 b_and!273615)))

(declare-fun b_free!97071 () Bool)

(declare-fun b_next!97775 () Bool)

(assert (=> b!3671957 (= b_free!97071 (not b_next!97775))))

(declare-fun tp!1117223 () Bool)

(declare-fun b_and!273617 () Bool)

(assert (=> b!3671957 (= tp!1117223 b_and!273617)))

(declare-fun b!3671956 () Bool)

(declare-fun res!1491376 () Bool)

(declare-fun e!2273659 () Bool)

(assert (=> b!3671956 (=> (not res!1491376) (not e!2273659))))

(declare-datatypes ((List!38849 0))(
  ( (Nil!38725) (Cons!38725 (h!44145 (_ BitVec 16)) (t!299804 List!38849)) )
))
(declare-datatypes ((TokenValue!6052 0))(
  ( (FloatLiteralValue!12104 (text!42809 List!38849)) (TokenValueExt!6051 (__x!24321 Int)) (Broken!30260 (value!186361 List!38849)) (Object!6175) (End!6052) (Def!6052) (Underscore!6052) (Match!6052) (Else!6052) (Error!6052) (Case!6052) (If!6052) (Extends!6052) (Abstract!6052) (Class!6052) (Val!6052) (DelimiterValue!12104 (del!6112 List!38849)) (KeywordValue!6058 (value!186362 List!38849)) (CommentValue!12104 (value!186363 List!38849)) (WhitespaceValue!12104 (value!186364 List!38849)) (IndentationValue!6052 (value!186365 List!38849)) (String!43593) (Int32!6052) (Broken!30261 (value!186366 List!38849)) (Boolean!6053) (Unit!56346) (OperatorValue!6055 (op!6112 List!38849)) (IdentifierValue!12104 (value!186367 List!38849)) (IdentifierValue!12105 (value!186368 List!38849)) (WhitespaceValue!12105 (value!186369 List!38849)) (True!12104) (False!12104) (Broken!30262 (value!186370 List!38849)) (Broken!30263 (value!186371 List!38849)) (True!12105) (RightBrace!6052) (RightBracket!6052) (Colon!6052) (Null!6052) (Comma!6052) (LeftBracket!6052) (False!12105) (LeftBrace!6052) (ImaginaryLiteralValue!6052 (text!42810 List!38849)) (StringLiteralValue!18156 (value!186372 List!38849)) (EOFValue!6052 (value!186373 List!38849)) (IdentValue!6052 (value!186374 List!38849)) (DelimiterValue!12105 (value!186375 List!38849)) (DedentValue!6052 (value!186376 List!38849)) (NewLineValue!6052 (value!186377 List!38849)) (IntegerValue!18156 (value!186378 (_ BitVec 32)) (text!42811 List!38849)) (IntegerValue!18157 (value!186379 Int) (text!42812 List!38849)) (Times!6052) (Or!6052) (Equal!6052) (Minus!6052) (Broken!30264 (value!186380 List!38849)) (And!6052) (Div!6052) (LessEqual!6052) (Mod!6052) (Concat!16633) (Not!6052) (Plus!6052) (SpaceValue!6052 (value!186381 List!38849)) (IntegerValue!18158 (value!186382 Int) (text!42813 List!38849)) (StringLiteralValue!18157 (text!42814 List!38849)) (FloatLiteralValue!12105 (text!42815 List!38849)) (BytesLiteralValue!6052 (value!186383 List!38849)) (CommentValue!12105 (value!186384 List!38849)) (StringLiteralValue!18158 (value!186385 List!38849)) (ErrorTokenValue!6052 (msg!6113 List!38849)) )
))
(declare-datatypes ((C!21348 0))(
  ( (C!21349 (val!12722 Int)) )
))
(declare-datatypes ((Regex!10581 0))(
  ( (ElementMatch!10581 (c!634912 C!21348)) (Concat!16634 (regOne!21674 Regex!10581) (regTwo!21674 Regex!10581)) (EmptyExpr!10581) (Star!10581 (reg!10910 Regex!10581)) (EmptyLang!10581) (Union!10581 (regOne!21675 Regex!10581) (regTwo!21675 Regex!10581)) )
))
(declare-datatypes ((String!43594 0))(
  ( (String!43595 (value!186386 String)) )
))
(declare-datatypes ((List!38850 0))(
  ( (Nil!38726) (Cons!38726 (h!44146 C!21348) (t!299805 List!38850)) )
))
(declare-datatypes ((IArray!23703 0))(
  ( (IArray!23704 (innerList!11909 List!38850)) )
))
(declare-datatypes ((Conc!11849 0))(
  ( (Node!11849 (left!30222 Conc!11849) (right!30552 Conc!11849) (csize!23928 Int) (cheight!12060 Int)) (Leaf!18371 (xs!15051 IArray!23703) (csize!23929 Int)) (Empty!11849) )
))
(declare-datatypes ((BalanceConc!23312 0))(
  ( (BalanceConc!23313 (c!634913 Conc!11849)) )
))
(declare-datatypes ((TokenValueInjection!11532 0))(
  ( (TokenValueInjection!11533 (toValue!8118 Int) (toChars!7977 Int)) )
))
(declare-datatypes ((Rule!11444 0))(
  ( (Rule!11445 (regex!5822 Regex!10581) (tag!6614 String!43594) (isSeparator!5822 Bool) (transformation!5822 TokenValueInjection!11532)) )
))
(declare-datatypes ((List!38851 0))(
  ( (Nil!38727) (Cons!38727 (h!44147 Rule!11444) (t!299806 List!38851)) )
))
(declare-fun rules!3307 () List!38851)

(declare-fun isEmpty!22986 (List!38851) Bool)

(assert (=> b!3671956 (= res!1491376 (not (isEmpty!22986 rules!3307)))))

(declare-fun bm!265834 () Bool)

(declare-fun call!265842 () Bool)

(declare-fun call!265840 () List!38850)

(declare-fun lt!1280370 () C!21348)

(declare-fun contains!7711 (List!38850 C!21348) Bool)

(assert (=> bm!265834 (= call!265842 (contains!7711 call!265840 lt!1280370))))

(declare-fun e!2273662 () Bool)

(assert (=> b!3671957 (= e!2273662 (and tp!1117213 tp!1117223))))

(declare-fun tp!1117226 () Bool)

(declare-datatypes ((Token!11010 0))(
  ( (Token!11011 (value!186387 TokenValue!6052) (rule!8648 Rule!11444) (size!29599 Int) (originalCharacters!6536 List!38850)) )
))
(declare-fun token!511 () Token!11010)

(declare-fun b!3671958 () Bool)

(declare-fun e!2273669 () Bool)

(declare-fun e!2273682 () Bool)

(declare-fun inv!21 (TokenValue!6052) Bool)

(assert (=> b!3671958 (= e!2273682 (and (inv!21 (value!186387 token!511)) e!2273669 tp!1117226))))

(declare-fun b!3671959 () Bool)

(declare-datatypes ((Unit!56347 0))(
  ( (Unit!56348) )
))
(declare-fun e!2273651 () Unit!56347)

(declare-fun Unit!56349 () Unit!56347)

(assert (=> b!3671959 (= e!2273651 Unit!56349)))

(declare-fun b!3671960 () Bool)

(declare-fun e!2273663 () Bool)

(assert (=> b!3671960 (= e!2273659 e!2273663)))

(declare-fun res!1491375 () Bool)

(assert (=> b!3671960 (=> (not res!1491375) (not e!2273663))))

(declare-datatypes ((tuple2!38596 0))(
  ( (tuple2!38597 (_1!22432 Token!11010) (_2!22432 List!38850)) )
))
(declare-datatypes ((Option!8272 0))(
  ( (None!8271) (Some!8271 (v!38187 tuple2!38596)) )
))
(declare-fun lt!1280368 () Option!8272)

(declare-fun isDefined!6504 (Option!8272) Bool)

(assert (=> b!3671960 (= res!1491375 (isDefined!6504 lt!1280368))))

(declare-datatypes ((LexerInterface!5411 0))(
  ( (LexerInterfaceExt!5408 (__x!24322 Int)) (Lexer!5409) )
))
(declare-fun thiss!23823 () LexerInterface!5411)

(declare-fun lt!1280347 () List!38850)

(declare-fun maxPrefix!2945 (LexerInterface!5411 List!38851 List!38850) Option!8272)

(assert (=> b!3671960 (= lt!1280368 (maxPrefix!2945 thiss!23823 rules!3307 lt!1280347))))

(declare-fun lt!1280328 () BalanceConc!23312)

(declare-fun list!14384 (BalanceConc!23312) List!38850)

(assert (=> b!3671960 (= lt!1280347 (list!14384 lt!1280328))))

(declare-fun charsOf!3836 (Token!11010) BalanceConc!23312)

(assert (=> b!3671960 (= lt!1280328 (charsOf!3836 token!511))))

(declare-fun call!265841 () Unit!56347)

(declare-fun lt!1280339 () tuple2!38596)

(declare-fun bm!265835 () Bool)

(declare-fun lt!1280369 () List!38850)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!770 (Regex!10581 List!38850 C!21348) Unit!56347)

(assert (=> bm!265835 (= call!265841 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!770 (regex!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280369 lt!1280370))))

(declare-fun b!3671961 () Bool)

(declare-fun e!2273657 () Bool)

(declare-fun e!2273652 () Bool)

(declare-fun tp!1117220 () Bool)

(assert (=> b!3671961 (= e!2273657 (and e!2273652 tp!1117220))))

(declare-fun b!3671962 () Bool)

(declare-fun e!2273653 () Unit!56347)

(declare-fun e!2273671 () Unit!56347)

(assert (=> b!3671962 (= e!2273653 e!2273671)))

(declare-fun c!634910 () Bool)

(assert (=> b!3671962 (= c!634910 (isSeparator!5822 (rule!8648 (_1!22432 lt!1280339))))))

(declare-fun b!3671963 () Bool)

(assert (=> b!3671963 false))

(declare-fun lt!1280334 () Unit!56347)

(assert (=> b!3671963 (= lt!1280334 call!265841)))

(assert (=> b!3671963 (not call!265842)))

(declare-fun anOtherTypeRule!33 () Rule!11444)

(declare-fun lt!1280331 () Unit!56347)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!468 (LexerInterface!5411 List!38851 List!38851 Rule!11444 Rule!11444 C!21348) Unit!56347)

(assert (=> b!3671963 (= lt!1280331 (lemmaNonSepRuleNotContainsCharContainedInASepRule!468 thiss!23823 rules!3307 rules!3307 (rule!8648 (_1!22432 lt!1280339)) anOtherTypeRule!33 lt!1280370))))

(declare-fun e!2273661 () Unit!56347)

(declare-fun Unit!56350 () Unit!56347)

(assert (=> b!3671963 (= e!2273661 Unit!56350)))

(declare-fun b!3671964 () Bool)

(declare-fun e!2273675 () Bool)

(declare-fun e!2273676 () Bool)

(assert (=> b!3671964 (= e!2273675 e!2273676)))

(declare-fun res!1491387 () Bool)

(assert (=> b!3671964 (=> res!1491387 e!2273676)))

(declare-fun lt!1280352 () Option!8272)

(declare-fun lt!1280354 () List!38850)

(assert (=> b!3671964 (= res!1491387 (or (not (= lt!1280354 (_2!22432 lt!1280339))) (not (= lt!1280352 (Some!8271 (tuple2!38597 (_1!22432 lt!1280339) lt!1280354))))))))

(assert (=> b!3671964 (= (_2!22432 lt!1280339) lt!1280354)))

(declare-fun lt!1280357 () Unit!56347)

(declare-fun lt!1280362 () List!38850)

(declare-fun lemmaSamePrefixThenSameSuffix!1512 (List!38850 List!38850 List!38850 List!38850 List!38850) Unit!56347)

(assert (=> b!3671964 (= lt!1280357 (lemmaSamePrefixThenSameSuffix!1512 lt!1280369 (_2!22432 lt!1280339) lt!1280369 lt!1280354 lt!1280362))))

(declare-fun getSuffix!1738 (List!38850 List!38850) List!38850)

(assert (=> b!3671964 (= lt!1280354 (getSuffix!1738 lt!1280362 lt!1280369))))

(declare-fun lt!1280358 () TokenValue!6052)

(declare-fun lt!1280337 () Int)

(assert (=> b!3671964 (= lt!1280352 (Some!8271 (tuple2!38597 (Token!11011 lt!1280358 (rule!8648 (_1!22432 lt!1280339)) lt!1280337 lt!1280369) (_2!22432 lt!1280339))))))

(declare-fun maxPrefixOneRule!2083 (LexerInterface!5411 Rule!11444 List!38850) Option!8272)

(assert (=> b!3671964 (= lt!1280352 (maxPrefixOneRule!2083 thiss!23823 (rule!8648 (_1!22432 lt!1280339)) lt!1280362))))

(declare-fun size!29600 (List!38850) Int)

(assert (=> b!3671964 (= lt!1280337 (size!29600 lt!1280369))))

(declare-fun apply!9324 (TokenValueInjection!11532 BalanceConc!23312) TokenValue!6052)

(declare-fun seqFromList!4371 (List!38850) BalanceConc!23312)

(assert (=> b!3671964 (= lt!1280358 (apply!9324 (transformation!5822 (rule!8648 (_1!22432 lt!1280339))) (seqFromList!4371 lt!1280369)))))

(declare-fun lt!1280356 () Unit!56347)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1139 (LexerInterface!5411 List!38851 List!38850 List!38850 List!38850 Rule!11444) Unit!56347)

(assert (=> b!3671964 (= lt!1280356 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1139 thiss!23823 rules!3307 lt!1280369 lt!1280362 (_2!22432 lt!1280339) (rule!8648 (_1!22432 lt!1280339))))))

(declare-fun tp!1117217 () Bool)

(declare-fun b!3671965 () Bool)

(declare-fun inv!52208 (String!43594) Bool)

(declare-fun inv!52211 (TokenValueInjection!11532) Bool)

(assert (=> b!3671965 (= e!2273652 (and tp!1117217 (inv!52208 (tag!6614 (h!44147 rules!3307))) (inv!52211 (transformation!5822 (h!44147 rules!3307))) e!2273662))))

(declare-fun b!3671966 () Bool)

(declare-fun res!1491384 () Bool)

(assert (=> b!3671966 (=> (not res!1491384) (not e!2273659))))

(declare-fun rule!403 () Rule!11444)

(assert (=> b!3671966 (= res!1491384 (not (= (isSeparator!5822 anOtherTypeRule!33) (isSeparator!5822 rule!403))))))

(declare-fun b!3671967 () Bool)

(declare-fun e!2273647 () Bool)

(assert (=> b!3671967 (= e!2273647 false)))

(declare-fun b!3671968 () Bool)

(declare-fun res!1491393 () Bool)

(declare-fun e!2273648 () Bool)

(assert (=> b!3671968 (=> (not res!1491393) (not e!2273648))))

(assert (=> b!3671968 (= res!1491393 (= (rule!8648 token!511) rule!403))))

(declare-fun b!3671969 () Bool)

(declare-fun e!2273679 () Bool)

(declare-fun e!2273646 () Bool)

(assert (=> b!3671969 (= e!2273679 e!2273646)))

(declare-fun res!1491383 () Bool)

(assert (=> b!3671969 (=> res!1491383 e!2273646)))

(declare-fun lt!1280338 () Int)

(declare-fun lt!1280329 () Int)

(assert (=> b!3671969 (= res!1491383 (>= lt!1280338 lt!1280329))))

(declare-fun lt!1280336 () Unit!56347)

(assert (=> b!3671969 (= lt!1280336 e!2273651)))

(declare-fun c!634904 () Bool)

(assert (=> b!3671969 (= c!634904 (< lt!1280329 lt!1280338))))

(declare-fun getIndex!490 (List!38851 Rule!11444) Int)

(assert (=> b!3671969 (= lt!1280338 (getIndex!490 rules!3307 rule!403))))

(assert (=> b!3671969 (= lt!1280329 (getIndex!490 rules!3307 (rule!8648 (_1!22432 lt!1280339))))))

(declare-fun b!3671970 () Bool)

(declare-fun res!1491374 () Bool)

(declare-fun e!2273658 () Bool)

(assert (=> b!3671970 (=> res!1491374 e!2273658)))

(declare-fun suffix!1395 () List!38850)

(declare-fun isEmpty!22987 (List!38850) Bool)

(assert (=> b!3671970 (= res!1491374 (isEmpty!22987 suffix!1395))))

(declare-fun b!3671971 () Bool)

(assert (=> b!3671971 (= e!2273676 e!2273679)))

(declare-fun res!1491391 () Bool)

(assert (=> b!3671971 (=> res!1491391 e!2273679)))

(assert (=> b!3671971 (= res!1491391 (= (rule!8648 (_1!22432 lt!1280339)) (rule!8648 token!511)))))

(assert (=> b!3671971 (= lt!1280369 lt!1280347)))

(declare-fun lt!1280332 () Unit!56347)

(declare-fun lemmaIsPrefixSameLengthThenSameList!647 (List!38850 List!38850 List!38850) Unit!56347)

(assert (=> b!3671971 (= lt!1280332 (lemmaIsPrefixSameLengthThenSameList!647 lt!1280369 lt!1280347 lt!1280362))))

(declare-fun lt!1280376 () Unit!56347)

(declare-fun e!2273678 () Unit!56347)

(assert (=> b!3671971 (= lt!1280376 e!2273678)))

(declare-fun c!634909 () Bool)

(declare-fun lt!1280326 () Int)

(declare-fun lt!1280349 () Int)

(assert (=> b!3671971 (= c!634909 (< lt!1280326 lt!1280349))))

(declare-fun lt!1280335 () Unit!56347)

(declare-fun e!2273660 () Unit!56347)

(assert (=> b!3671971 (= lt!1280335 e!2273660)))

(declare-fun c!634911 () Bool)

(assert (=> b!3671971 (= c!634911 (> lt!1280326 lt!1280349))))

(declare-fun size!29601 (BalanceConc!23312) Int)

(assert (=> b!3671971 (= lt!1280349 (size!29601 lt!1280328))))

(declare-fun lt!1280372 () Unit!56347)

(assert (=> b!3671971 (= lt!1280372 e!2273653)))

(declare-fun c!634907 () Bool)

(assert (=> b!3671971 (= c!634907 (isSeparator!5822 rule!403))))

(declare-fun lt!1280345 () Unit!56347)

(declare-fun e!2273668 () Unit!56347)

(assert (=> b!3671971 (= lt!1280345 e!2273668)))

(declare-fun c!634905 () Bool)

(declare-fun lt!1280346 () List!38850)

(declare-fun lt!1280373 () C!21348)

(assert (=> b!3671971 (= c!634905 (not (contains!7711 lt!1280346 lt!1280373)))))

(declare-fun head!7864 (List!38850) C!21348)

(assert (=> b!3671971 (= lt!1280373 (head!7864 lt!1280369))))

(declare-fun bm!265836 () Bool)

(declare-fun call!265844 () Unit!56347)

(assert (=> bm!265836 (= call!265844 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!770 (regex!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280369 lt!1280373))))

(declare-fun b!3671972 () Bool)

(declare-fun res!1491390 () Bool)

(assert (=> b!3671972 (=> (not res!1491390) (not e!2273659))))

(declare-fun contains!7712 (List!38851 Rule!11444) Bool)

(assert (=> b!3671972 (= res!1491390 (contains!7712 rules!3307 rule!403))))

(declare-fun b!3671973 () Bool)

(declare-fun e!2273664 () Bool)

(declare-fun e!2273670 () Bool)

(assert (=> b!3671973 (= e!2273664 e!2273670)))

(declare-fun res!1491392 () Bool)

(assert (=> b!3671973 (=> res!1491392 e!2273670)))

(declare-fun isPrefix!3185 (List!38850 List!38850) Bool)

(assert (=> b!3671973 (= res!1491392 (not (isPrefix!3185 lt!1280369 lt!1280362)))))

(declare-fun ++!9638 (List!38850 List!38850) List!38850)

(assert (=> b!3671973 (isPrefix!3185 lt!1280369 (++!9638 lt!1280369 (_2!22432 lt!1280339)))))

(declare-fun lt!1280340 () Unit!56347)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2104 (List!38850 List!38850) Unit!56347)

(assert (=> b!3671973 (= lt!1280340 (lemmaConcatTwoListThenFirstIsPrefix!2104 lt!1280369 (_2!22432 lt!1280339)))))

(declare-fun lt!1280355 () BalanceConc!23312)

(assert (=> b!3671973 (= lt!1280369 (list!14384 lt!1280355))))

(assert (=> b!3671973 (= lt!1280355 (charsOf!3836 (_1!22432 lt!1280339)))))

(declare-fun e!2273674 () Bool)

(assert (=> b!3671973 e!2273674))

(declare-fun res!1491389 () Bool)

(assert (=> b!3671973 (=> (not res!1491389) (not e!2273674))))

(declare-datatypes ((Option!8273 0))(
  ( (None!8272) (Some!8272 (v!38188 Rule!11444)) )
))
(declare-fun lt!1280327 () Option!8273)

(declare-fun isDefined!6505 (Option!8273) Bool)

(assert (=> b!3671973 (= res!1491389 (isDefined!6505 lt!1280327))))

(declare-fun getRuleFromTag!1426 (LexerInterface!5411 List!38851 String!43594) Option!8273)

(assert (=> b!3671973 (= lt!1280327 (getRuleFromTag!1426 thiss!23823 rules!3307 (tag!6614 (rule!8648 (_1!22432 lt!1280339)))))))

(declare-fun lt!1280367 () Unit!56347)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1426 (LexerInterface!5411 List!38851 List!38850 Token!11010) Unit!56347)

(assert (=> b!3671973 (= lt!1280367 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1426 thiss!23823 rules!3307 lt!1280362 (_1!22432 lt!1280339)))))

(declare-fun lt!1280374 () Option!8272)

(declare-fun get!12793 (Option!8272) tuple2!38596)

(assert (=> b!3671973 (= lt!1280339 (get!12793 lt!1280374))))

(declare-fun lt!1280359 () Unit!56347)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1089 (LexerInterface!5411 List!38851 List!38850 List!38850) Unit!56347)

(assert (=> b!3671973 (= lt!1280359 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1089 thiss!23823 rules!3307 lt!1280347 suffix!1395))))

(assert (=> b!3671973 (= lt!1280374 (maxPrefix!2945 thiss!23823 rules!3307 lt!1280362))))

(assert (=> b!3671973 (isPrefix!3185 lt!1280347 lt!1280362)))

(declare-fun lt!1280366 () Unit!56347)

(assert (=> b!3671973 (= lt!1280366 (lemmaConcatTwoListThenFirstIsPrefix!2104 lt!1280347 suffix!1395))))

(assert (=> b!3671973 (= lt!1280362 (++!9638 lt!1280347 suffix!1395))))

(declare-fun b!3671974 () Bool)

(declare-fun e!2273667 () Bool)

(declare-fun tp_is_empty!18245 () Bool)

(declare-fun tp!1117219 () Bool)

(assert (=> b!3671974 (= e!2273667 (and tp_is_empty!18245 tp!1117219))))

(declare-fun b!3671975 () Bool)

(declare-fun res!1491385 () Bool)

(assert (=> b!3671975 (=> res!1491385 e!2273664)))

(declare-fun sepAndNonSepRulesDisjointChars!1990 (List!38851 List!38851) Bool)

(assert (=> b!3671975 (= res!1491385 (not (sepAndNonSepRulesDisjointChars!1990 rules!3307 rules!3307)))))

(declare-fun b!3671976 () Bool)

(assert (=> b!3671976 (= e!2273648 (not e!2273658))))

(declare-fun res!1491394 () Bool)

(assert (=> b!3671976 (=> res!1491394 e!2273658)))

(declare-fun matchR!5150 (Regex!10581 List!38850) Bool)

(assert (=> b!3671976 (= res!1491394 (not (matchR!5150 (regex!5822 rule!403) lt!1280347)))))

(declare-fun ruleValid!2086 (LexerInterface!5411 Rule!11444) Bool)

(assert (=> b!3671976 (ruleValid!2086 thiss!23823 rule!403)))

(declare-fun lt!1280325 () Unit!56347)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1240 (LexerInterface!5411 Rule!11444 List!38851) Unit!56347)

(assert (=> b!3671976 (= lt!1280325 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1240 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3671977 () Bool)

(declare-fun Unit!56351 () Unit!56347)

(assert (=> b!3671977 (= e!2273671 Unit!56351)))

(declare-fun b!3671978 () Bool)

(declare-fun e!2273677 () Bool)

(declare-fun lt!1280353 () Rule!11444)

(assert (=> b!3671978 (= e!2273677 (= (rule!8648 (_1!22432 lt!1280339)) lt!1280353))))

(declare-fun b!3671979 () Bool)

(assert (=> b!3671979 false))

(declare-fun lt!1280361 () Unit!56347)

(assert (=> b!3671979 (= lt!1280361 call!265844)))

(declare-fun call!265843 () Bool)

(assert (=> b!3671979 (not call!265843)))

(declare-fun lt!1280341 () Unit!56347)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!350 (LexerInterface!5411 List!38851 List!38851 Rule!11444 Rule!11444 C!21348) Unit!56347)

(assert (=> b!3671979 (= lt!1280341 (lemmaSepRuleNotContainsCharContainedInANonSepRule!350 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8648 (_1!22432 lt!1280339)) lt!1280373))))

(declare-fun Unit!56352 () Unit!56347)

(assert (=> b!3671979 (= e!2273671 Unit!56352)))

(declare-fun b!3671980 () Bool)

(assert (=> b!3671980 (= e!2273658 e!2273664)))

(declare-fun res!1491379 () Bool)

(assert (=> b!3671980 (=> res!1491379 e!2273664)))

(assert (=> b!3671980 (= res!1491379 (contains!7711 lt!1280346 lt!1280370))))

(assert (=> b!3671980 (= lt!1280370 (head!7864 suffix!1395))))

(declare-fun usedCharacters!1034 (Regex!10581) List!38850)

(assert (=> b!3671980 (= lt!1280346 (usedCharacters!1034 (regex!5822 rule!403)))))

(declare-fun b!3671981 () Bool)

(assert (=> b!3671981 (= e!2273646 true)))

(assert (=> b!3671981 false))

(declare-fun lt!1280348 () Unit!56347)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!230 (LexerInterface!5411 List!38851 Rule!11444 List!38850 List!38850 Rule!11444) Unit!56347)

(assert (=> b!3671981 (= lt!1280348 (lemmaMaxPrefNoSmallerRuleMatches!230 thiss!23823 rules!3307 (rule!8648 (_1!22432 lt!1280339)) lt!1280347 lt!1280362 rule!403))))

(declare-fun e!2273649 () Bool)

(assert (=> b!3671982 (= e!2273649 (and tp!1117225 tp!1117222))))

(declare-fun b!3671983 () Bool)

(declare-fun Unit!56353 () Unit!56347)

(assert (=> b!3671983 (= e!2273668 Unit!56353)))

(declare-fun lt!1280375 () Unit!56347)

(assert (=> b!3671983 (= lt!1280375 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!770 (regex!5822 rule!403) lt!1280347 lt!1280373))))

(assert (=> b!3671983 false))

(declare-fun b!3671984 () Bool)

(assert (=> b!3671984 (= e!2273674 e!2273677)))

(declare-fun res!1491386 () Bool)

(assert (=> b!3671984 (=> (not res!1491386) (not e!2273677))))

(assert (=> b!3671984 (= res!1491386 (matchR!5150 (regex!5822 lt!1280353) (list!14384 (charsOf!3836 (_1!22432 lt!1280339)))))))

(declare-fun get!12794 (Option!8273) Rule!11444)

(assert (=> b!3671984 (= lt!1280353 (get!12794 lt!1280327))))

(declare-fun b!3671985 () Bool)

(declare-fun e!2273673 () Unit!56347)

(assert (=> b!3671985 (= e!2273653 e!2273673)))

(declare-fun c!634906 () Bool)

(assert (=> b!3671985 (= c!634906 (not (isSeparator!5822 (rule!8648 (_1!22432 lt!1280339)))))))

(declare-fun res!1491382 () Bool)

(assert (=> start!344210 (=> (not res!1491382) (not e!2273659))))

(get-info :version)

(assert (=> start!344210 (= res!1491382 ((_ is Lexer!5409) thiss!23823))))

(assert (=> start!344210 e!2273659))

(assert (=> start!344210 e!2273657))

(assert (=> start!344210 e!2273667))

(assert (=> start!344210 true))

(declare-fun inv!52212 (Token!11010) Bool)

(assert (=> start!344210 (and (inv!52212 token!511) e!2273682)))

(declare-fun e!2273665 () Bool)

(assert (=> start!344210 e!2273665))

(declare-fun e!2273654 () Bool)

(assert (=> start!344210 e!2273654))

(declare-fun b!3671986 () Bool)

(assert (=> b!3671986 (= e!2273663 e!2273648)))

(declare-fun res!1491377 () Bool)

(assert (=> b!3671986 (=> (not res!1491377) (not e!2273648))))

(declare-fun lt!1280350 () tuple2!38596)

(assert (=> b!3671986 (= res!1491377 (= (_1!22432 lt!1280350) token!511))))

(assert (=> b!3671986 (= lt!1280350 (get!12793 lt!1280368))))

(declare-fun tp!1117212 () Bool)

(declare-fun b!3671987 () Bool)

(assert (=> b!3671987 (= e!2273665 (and tp!1117212 (inv!52208 (tag!6614 rule!403)) (inv!52211 (transformation!5822 rule!403)) e!2273649))))

(declare-fun b!3671988 () Bool)

(assert (=> b!3671988 (= e!2273660 e!2273661)))

(declare-fun lt!1280333 () Unit!56347)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!130 (List!38850 List!38850 List!38850 List!38850) Unit!56347)

(assert (=> b!3671988 (= lt!1280333 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!130 lt!1280347 suffix!1395 lt!1280369 lt!1280362))))

(assert (=> b!3671988 (contains!7711 lt!1280369 lt!1280370)))

(declare-fun c!634908 () Bool)

(assert (=> b!3671988 (= c!634908 (isSeparator!5822 rule!403))))

(declare-fun b!3671989 () Bool)

(declare-fun Unit!56354 () Unit!56347)

(assert (=> b!3671989 (= e!2273678 Unit!56354)))

(declare-fun b!3671990 () Bool)

(declare-fun Unit!56355 () Unit!56347)

(assert (=> b!3671990 (= e!2273673 Unit!56355)))

(declare-fun bm!265837 () Bool)

(assert (=> bm!265837 (= call!265840 (usedCharacters!1034 (regex!5822 (rule!8648 (_1!22432 lt!1280339)))))))

(declare-fun b!3671991 () Bool)

(assert (=> b!3671991 (= e!2273670 e!2273675)))

(declare-fun res!1491381 () Bool)

(assert (=> b!3671991 (=> res!1491381 e!2273675)))

(declare-fun lt!1280351 () TokenValue!6052)

(assert (=> b!3671991 (= res!1491381 (not (= lt!1280374 (Some!8271 (tuple2!38597 (Token!11011 lt!1280351 (rule!8648 (_1!22432 lt!1280339)) lt!1280326 lt!1280369) (_2!22432 lt!1280339))))))))

(assert (=> b!3671991 (= lt!1280326 (size!29601 lt!1280355))))

(assert (=> b!3671991 (= lt!1280351 (apply!9324 (transformation!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280355))))

(declare-fun lt!1280344 () Unit!56347)

(declare-fun lemmaCharactersSize!867 (Token!11010) Unit!56347)

(assert (=> b!3671991 (= lt!1280344 (lemmaCharactersSize!867 (_1!22432 lt!1280339)))))

(declare-fun lt!1280371 () Unit!56347)

(declare-fun lemmaEqSameImage!1005 (TokenValueInjection!11532 BalanceConc!23312 BalanceConc!23312) Unit!56347)

(assert (=> b!3671991 (= lt!1280371 (lemmaEqSameImage!1005 (transformation!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280355 (seqFromList!4371 (originalCharacters!6536 (_1!22432 lt!1280339)))))))

(declare-fun lt!1280330 () Unit!56347)

(declare-fun lemmaSemiInverse!1571 (TokenValueInjection!11532 BalanceConc!23312) Unit!56347)

(assert (=> b!3671991 (= lt!1280330 (lemmaSemiInverse!1571 (transformation!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280355))))

(declare-fun b!3671992 () Bool)

(assert (=> b!3671992 false))

(declare-fun lt!1280364 () Unit!56347)

(assert (=> b!3671992 (= lt!1280364 call!265841)))

(assert (=> b!3671992 (not call!265842)))

(declare-fun lt!1280365 () Unit!56347)

(assert (=> b!3671992 (= lt!1280365 (lemmaSepRuleNotContainsCharContainedInANonSepRule!350 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8648 (_1!22432 lt!1280339)) lt!1280370))))

(declare-fun Unit!56356 () Unit!56347)

(assert (=> b!3671992 (= e!2273661 Unit!56356)))

(declare-fun b!3671993 () Bool)

(declare-fun e!2273650 () Bool)

(declare-fun tp!1117216 () Bool)

(assert (=> b!3671993 (= e!2273654 (and tp!1117216 (inv!52208 (tag!6614 anOtherTypeRule!33)) (inv!52211 (transformation!5822 anOtherTypeRule!33)) e!2273650))))

(declare-fun bm!265838 () Bool)

(declare-fun call!265839 () List!38850)

(assert (=> bm!265838 (= call!265839 (usedCharacters!1034 (regex!5822 (rule!8648 (_1!22432 lt!1280339)))))))

(declare-fun b!3671994 () Bool)

(declare-fun res!1491388 () Bool)

(assert (=> b!3671994 (=> (not res!1491388) (not e!2273659))))

(declare-fun rulesInvariant!4808 (LexerInterface!5411 List!38851) Bool)

(assert (=> b!3671994 (= res!1491388 (rulesInvariant!4808 thiss!23823 rules!3307))))

(declare-fun b!3671995 () Bool)

(declare-fun Unit!56357 () Unit!56347)

(assert (=> b!3671995 (= e!2273651 Unit!56357)))

(declare-fun lt!1280363 () Unit!56347)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!202 (List!38850) Unit!56347)

(assert (=> b!3671995 (= lt!1280363 (lemmaGetSuffixOnListWithItSelfIsEmpty!202 lt!1280347))))

(assert (=> b!3671995 (isEmpty!22987 (getSuffix!1738 lt!1280347 lt!1280347))))

(declare-fun lt!1280342 () Unit!56347)

(assert (=> b!3671995 (= lt!1280342 (lemmaMaxPrefNoSmallerRuleMatches!230 thiss!23823 rules!3307 rule!403 lt!1280347 lt!1280347 (rule!8648 (_1!22432 lt!1280339))))))

(declare-fun res!1491378 () Bool)

(assert (=> b!3671995 (= res!1491378 (not (matchR!5150 (regex!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280347)))))

(assert (=> b!3671995 (=> (not res!1491378) (not e!2273647))))

(assert (=> b!3671995 e!2273647))

(declare-fun b!3671996 () Bool)

(declare-fun res!1491373 () Bool)

(assert (=> b!3671996 (=> (not res!1491373) (not e!2273648))))

(assert (=> b!3671996 (= res!1491373 (isEmpty!22987 (_2!22432 lt!1280350)))))

(declare-fun bm!265839 () Bool)

(assert (=> bm!265839 (= call!265843 (contains!7711 call!265839 lt!1280373))))

(declare-fun b!3671997 () Bool)

(declare-fun res!1491380 () Bool)

(assert (=> b!3671997 (=> res!1491380 e!2273664)))

(assert (=> b!3671997 (= res!1491380 (not (contains!7711 (usedCharacters!1034 (regex!5822 anOtherTypeRule!33)) lt!1280370)))))

(declare-fun b!3671998 () Bool)

(assert (=> b!3671998 false))

(declare-fun lt!1280360 () Unit!56347)

(assert (=> b!3671998 (= lt!1280360 call!265844)))

(assert (=> b!3671998 (not call!265843)))

(declare-fun lt!1280324 () Unit!56347)

(assert (=> b!3671998 (= lt!1280324 (lemmaNonSepRuleNotContainsCharContainedInASepRule!468 thiss!23823 rules!3307 rules!3307 (rule!8648 (_1!22432 lt!1280339)) rule!403 lt!1280373))))

(declare-fun Unit!56358 () Unit!56347)

(assert (=> b!3671998 (= e!2273673 Unit!56358)))

(declare-fun tp!1117215 () Bool)

(declare-fun e!2273655 () Bool)

(declare-fun b!3671999 () Bool)

(assert (=> b!3671999 (= e!2273669 (and tp!1117215 (inv!52208 (tag!6614 (rule!8648 token!511))) (inv!52211 (transformation!5822 (rule!8648 token!511))) e!2273655))))

(declare-fun b!3672000 () Bool)

(declare-fun res!1491372 () Bool)

(assert (=> b!3672000 (=> (not res!1491372) (not e!2273659))))

(assert (=> b!3672000 (= res!1491372 (contains!7712 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3672001 () Bool)

(declare-fun Unit!56359 () Unit!56347)

(assert (=> b!3672001 (= e!2273668 Unit!56359)))

(declare-fun b!3672002 () Bool)

(declare-fun Unit!56360 () Unit!56347)

(assert (=> b!3672002 (= e!2273660 Unit!56360)))

(declare-fun b!3672003 () Bool)

(declare-fun Unit!56361 () Unit!56347)

(assert (=> b!3672003 (= e!2273678 Unit!56361)))

(declare-fun lt!1280343 () Unit!56347)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!364 (LexerInterface!5411 List!38851 Rule!11444 List!38850 List!38850 List!38850 Rule!11444) Unit!56347)

(assert (=> b!3672003 (= lt!1280343 (lemmaMaxPrefixOutputsMaxPrefix!364 thiss!23823 rules!3307 (rule!8648 (_1!22432 lt!1280339)) lt!1280369 lt!1280362 lt!1280347 rule!403))))

(assert (=> b!3672003 false))

(declare-fun b!3672004 () Bool)

(declare-fun res!1491395 () Bool)

(assert (=> b!3672004 (=> res!1491395 e!2273670)))

(assert (=> b!3672004 (= res!1491395 (not (matchR!5150 (regex!5822 (rule!8648 (_1!22432 lt!1280339))) lt!1280369)))))

(assert (=> b!3672005 (= e!2273650 (and tp!1117224 tp!1117221))))

(assert (=> b!3672006 (= e!2273655 (and tp!1117218 tp!1117214))))

(assert (= (and start!344210 res!1491382) b!3671956))

(assert (= (and b!3671956 res!1491376) b!3671994))

(assert (= (and b!3671994 res!1491388) b!3671972))

(assert (= (and b!3671972 res!1491390) b!3672000))

(assert (= (and b!3672000 res!1491372) b!3671966))

(assert (= (and b!3671966 res!1491384) b!3671960))

(assert (= (and b!3671960 res!1491375) b!3671986))

(assert (= (and b!3671986 res!1491377) b!3671996))

(assert (= (and b!3671996 res!1491373) b!3671968))

(assert (= (and b!3671968 res!1491393) b!3671976))

(assert (= (and b!3671976 (not res!1491394)) b!3671970))

(assert (= (and b!3671970 (not res!1491374)) b!3671980))

(assert (= (and b!3671980 (not res!1491379)) b!3671997))

(assert (= (and b!3671997 (not res!1491380)) b!3671975))

(assert (= (and b!3671975 (not res!1491385)) b!3671973))

(assert (= (and b!3671973 res!1491389) b!3671984))

(assert (= (and b!3671984 res!1491386) b!3671978))

(assert (= (and b!3671973 (not res!1491392)) b!3672004))

(assert (= (and b!3672004 (not res!1491395)) b!3671991))

(assert (= (and b!3671991 (not res!1491381)) b!3671964))

(assert (= (and b!3671964 (not res!1491387)) b!3671971))

(assert (= (and b!3671971 c!634905) b!3671983))

(assert (= (and b!3671971 (not c!634905)) b!3672001))

(assert (= (and b!3671971 c!634907) b!3671985))

(assert (= (and b!3671971 (not c!634907)) b!3671962))

(assert (= (and b!3671985 c!634906) b!3671998))

(assert (= (and b!3671985 (not c!634906)) b!3671990))

(assert (= (and b!3671962 c!634910) b!3671979))

(assert (= (and b!3671962 (not c!634910)) b!3671977))

(assert (= (or b!3671998 b!3671979) bm!265836))

(assert (= (or b!3671998 b!3671979) bm!265838))

(assert (= (or b!3671998 b!3671979) bm!265839))

(assert (= (and b!3671971 c!634911) b!3671988))

(assert (= (and b!3671971 (not c!634911)) b!3672002))

(assert (= (and b!3671988 c!634908) b!3671992))

(assert (= (and b!3671988 (not c!634908)) b!3671963))

(assert (= (or b!3671992 b!3671963) bm!265835))

(assert (= (or b!3671992 b!3671963) bm!265837))

(assert (= (or b!3671992 b!3671963) bm!265834))

(assert (= (and b!3671971 c!634909) b!3672003))

(assert (= (and b!3671971 (not c!634909)) b!3671989))

(assert (= (and b!3671971 (not res!1491391)) b!3671969))

(assert (= (and b!3671969 c!634904) b!3671995))

(assert (= (and b!3671969 (not c!634904)) b!3671959))

(assert (= (and b!3671995 res!1491378) b!3671967))

(assert (= (and b!3671969 (not res!1491383)) b!3671981))

(assert (= b!3671965 b!3671957))

(assert (= b!3671961 b!3671965))

(assert (= (and start!344210 ((_ is Cons!38727) rules!3307)) b!3671961))

(assert (= (and start!344210 ((_ is Cons!38726) suffix!1395)) b!3671974))

(assert (= b!3671999 b!3672006))

(assert (= b!3671958 b!3671999))

(assert (= start!344210 b!3671958))

(assert (= b!3671987 b!3671982))

(assert (= start!344210 b!3671987))

(assert (= b!3671993 b!3672005))

(assert (= start!344210 b!3671993))

(declare-fun m!4180763 () Bool)

(assert (=> b!3671994 m!4180763))

(declare-fun m!4180765 () Bool)

(assert (=> b!3672004 m!4180765))

(declare-fun m!4180767 () Bool)

(assert (=> b!3671992 m!4180767))

(declare-fun m!4180769 () Bool)

(assert (=> b!3671993 m!4180769))

(declare-fun m!4180771 () Bool)

(assert (=> b!3671993 m!4180771))

(declare-fun m!4180773 () Bool)

(assert (=> bm!265835 m!4180773))

(declare-fun m!4180775 () Bool)

(assert (=> b!3671998 m!4180775))

(declare-fun m!4180777 () Bool)

(assert (=> b!3671969 m!4180777))

(declare-fun m!4180779 () Bool)

(assert (=> b!3671969 m!4180779))

(declare-fun m!4180781 () Bool)

(assert (=> b!3671971 m!4180781))

(declare-fun m!4180783 () Bool)

(assert (=> b!3671971 m!4180783))

(declare-fun m!4180785 () Bool)

(assert (=> b!3671971 m!4180785))

(declare-fun m!4180787 () Bool)

(assert (=> b!3671971 m!4180787))

(declare-fun m!4180789 () Bool)

(assert (=> b!3671980 m!4180789))

(declare-fun m!4180791 () Bool)

(assert (=> b!3671980 m!4180791))

(declare-fun m!4180793 () Bool)

(assert (=> b!3671980 m!4180793))

(declare-fun m!4180795 () Bool)

(assert (=> b!3671975 m!4180795))

(declare-fun m!4180797 () Bool)

(assert (=> b!3671996 m!4180797))

(declare-fun m!4180799 () Bool)

(assert (=> b!3671960 m!4180799))

(declare-fun m!4180801 () Bool)

(assert (=> b!3671960 m!4180801))

(declare-fun m!4180803 () Bool)

(assert (=> b!3671960 m!4180803))

(declare-fun m!4180805 () Bool)

(assert (=> b!3671960 m!4180805))

(declare-fun m!4180807 () Bool)

(assert (=> b!3671988 m!4180807))

(declare-fun m!4180809 () Bool)

(assert (=> b!3671988 m!4180809))

(declare-fun m!4180811 () Bool)

(assert (=> b!3672000 m!4180811))

(declare-fun m!4180813 () Bool)

(assert (=> b!3671973 m!4180813))

(declare-fun m!4180815 () Bool)

(assert (=> b!3671973 m!4180815))

(declare-fun m!4180817 () Bool)

(assert (=> b!3671973 m!4180817))

(declare-fun m!4180819 () Bool)

(assert (=> b!3671973 m!4180819))

(declare-fun m!4180821 () Bool)

(assert (=> b!3671973 m!4180821))

(declare-fun m!4180823 () Bool)

(assert (=> b!3671973 m!4180823))

(declare-fun m!4180825 () Bool)

(assert (=> b!3671973 m!4180825))

(declare-fun m!4180827 () Bool)

(assert (=> b!3671973 m!4180827))

(declare-fun m!4180829 () Bool)

(assert (=> b!3671973 m!4180829))

(declare-fun m!4180831 () Bool)

(assert (=> b!3671973 m!4180831))

(declare-fun m!4180833 () Bool)

(assert (=> b!3671973 m!4180833))

(declare-fun m!4180835 () Bool)

(assert (=> b!3671973 m!4180835))

(declare-fun m!4180837 () Bool)

(assert (=> b!3671973 m!4180837))

(assert (=> b!3671973 m!4180825))

(declare-fun m!4180839 () Bool)

(assert (=> b!3671973 m!4180839))

(declare-fun m!4180841 () Bool)

(assert (=> b!3671973 m!4180841))

(declare-fun m!4180843 () Bool)

(assert (=> b!3671979 m!4180843))

(declare-fun m!4180845 () Bool)

(assert (=> b!3671999 m!4180845))

(declare-fun m!4180847 () Bool)

(assert (=> b!3671999 m!4180847))

(declare-fun m!4180849 () Bool)

(assert (=> b!3671965 m!4180849))

(declare-fun m!4180851 () Bool)

(assert (=> b!3671965 m!4180851))

(declare-fun m!4180853 () Bool)

(assert (=> b!3672003 m!4180853))

(declare-fun m!4180855 () Bool)

(assert (=> b!3671972 m!4180855))

(declare-fun m!4180857 () Bool)

(assert (=> b!3671956 m!4180857))

(declare-fun m!4180859 () Bool)

(assert (=> b!3671995 m!4180859))

(declare-fun m!4180861 () Bool)

(assert (=> b!3671995 m!4180861))

(assert (=> b!3671995 m!4180859))

(declare-fun m!4180863 () Bool)

(assert (=> b!3671995 m!4180863))

(declare-fun m!4180865 () Bool)

(assert (=> b!3671995 m!4180865))

(declare-fun m!4180867 () Bool)

(assert (=> b!3671995 m!4180867))

(declare-fun m!4180869 () Bool)

(assert (=> b!3671981 m!4180869))

(assert (=> b!3671984 m!4180815))

(assert (=> b!3671984 m!4180815))

(declare-fun m!4180871 () Bool)

(assert (=> b!3671984 m!4180871))

(assert (=> b!3671984 m!4180871))

(declare-fun m!4180873 () Bool)

(assert (=> b!3671984 m!4180873))

(declare-fun m!4180875 () Bool)

(assert (=> b!3671984 m!4180875))

(declare-fun m!4180877 () Bool)

(assert (=> bm!265837 m!4180877))

(declare-fun m!4180879 () Bool)

(assert (=> b!3671986 m!4180879))

(assert (=> bm!265838 m!4180877))

(declare-fun m!4180881 () Bool)

(assert (=> b!3671976 m!4180881))

(declare-fun m!4180883 () Bool)

(assert (=> b!3671976 m!4180883))

(declare-fun m!4180885 () Bool)

(assert (=> b!3671976 m!4180885))

(declare-fun m!4180887 () Bool)

(assert (=> b!3671958 m!4180887))

(declare-fun m!4180889 () Bool)

(assert (=> b!3671983 m!4180889))

(declare-fun m!4180891 () Bool)

(assert (=> b!3671997 m!4180891))

(assert (=> b!3671997 m!4180891))

(declare-fun m!4180893 () Bool)

(assert (=> b!3671997 m!4180893))

(declare-fun m!4180895 () Bool)

(assert (=> b!3671970 m!4180895))

(declare-fun m!4180897 () Bool)

(assert (=> bm!265836 m!4180897))

(declare-fun m!4180899 () Bool)

(assert (=> bm!265834 m!4180899))

(declare-fun m!4180901 () Bool)

(assert (=> bm!265839 m!4180901))

(declare-fun m!4180903 () Bool)

(assert (=> b!3671987 m!4180903))

(declare-fun m!4180905 () Bool)

(assert (=> b!3671987 m!4180905))

(declare-fun m!4180907 () Bool)

(assert (=> b!3671991 m!4180907))

(assert (=> b!3671991 m!4180907))

(declare-fun m!4180909 () Bool)

(assert (=> b!3671991 m!4180909))

(declare-fun m!4180911 () Bool)

(assert (=> b!3671991 m!4180911))

(declare-fun m!4180913 () Bool)

(assert (=> b!3671991 m!4180913))

(declare-fun m!4180915 () Bool)

(assert (=> b!3671991 m!4180915))

(declare-fun m!4180917 () Bool)

(assert (=> b!3671991 m!4180917))

(declare-fun m!4180919 () Bool)

(assert (=> start!344210 m!4180919))

(declare-fun m!4180921 () Bool)

(assert (=> b!3671964 m!4180921))

(declare-fun m!4180923 () Bool)

(assert (=> b!3671964 m!4180923))

(declare-fun m!4180925 () Bool)

(assert (=> b!3671964 m!4180925))

(declare-fun m!4180927 () Bool)

(assert (=> b!3671964 m!4180927))

(assert (=> b!3671964 m!4180925))

(declare-fun m!4180929 () Bool)

(assert (=> b!3671964 m!4180929))

(declare-fun m!4180931 () Bool)

(assert (=> b!3671964 m!4180931))

(declare-fun m!4180933 () Bool)

(assert (=> b!3671964 m!4180933))

(declare-fun m!4180935 () Bool)

(assert (=> b!3671963 m!4180935))

(check-sat (not b!3671991) (not b!3671956) (not b_next!97769) (not b!3671994) (not b!3671972) (not b!3671983) (not b!3671961) b_and!273607 (not b!3671976) (not b!3671969) (not b!3671980) b_and!273611 (not b!3671986) (not b!3671999) (not b!3671963) b_and!273613 (not b!3671965) (not b!3671981) (not b!3671958) (not b!3672000) (not b!3671996) (not b!3671984) (not b!3671997) (not b_next!97765) (not bm!265835) (not b!3671960) b_and!273609 (not b_next!97763) (not b!3671987) (not b!3671993) b_and!273615 (not b_next!97771) (not b_next!97773) (not b!3671974) (not b!3672004) (not b_next!97761) (not b_next!97775) (not b!3671992) (not bm!265834) (not b!3671998) tp_is_empty!18245 (not bm!265836) b_and!273617 (not start!344210) (not bm!265837) (not b!3672003) (not b!3671995) (not b!3671970) (not b!3671973) (not b!3671971) b_and!273605 (not b!3671964) (not b!3671988) (not bm!265839) (not b_next!97767) (not b!3671979) (not b!3671975) b_and!273603 (not bm!265838))
(check-sat b_and!273611 b_and!273613 (not b_next!97769) (not b_next!97765) b_and!273609 b_and!273607 b_and!273617 b_and!273605 (not b_next!97767) b_and!273603 (not b_next!97763) b_and!273615 (not b_next!97771) (not b_next!97773) (not b_next!97761) (not b_next!97775))
