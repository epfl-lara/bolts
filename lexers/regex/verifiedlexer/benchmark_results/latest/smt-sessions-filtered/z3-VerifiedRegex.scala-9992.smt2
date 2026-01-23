; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522598 () Bool)

(assert start!522598)

(declare-fun b!4957743 () Bool)

(declare-fun b_free!132375 () Bool)

(declare-fun b_next!133165 () Bool)

(assert (=> b!4957743 (= b_free!132375 (not b_next!133165))))

(declare-fun tp!1390427 () Bool)

(declare-fun b_and!347227 () Bool)

(assert (=> b!4957743 (= tp!1390427 b_and!347227)))

(declare-fun b_free!132377 () Bool)

(declare-fun b_next!133167 () Bool)

(assert (=> b!4957743 (= b_free!132377 (not b_next!133167))))

(declare-fun tp!1390426 () Bool)

(declare-fun b_and!347229 () Bool)

(assert (=> b!4957743 (= tp!1390426 b_and!347229)))

(declare-fun b!4957735 () Bool)

(declare-fun e!3098296 () Bool)

(declare-datatypes ((List!57394 0))(
  ( (Nil!57270) (Cons!57270 (h!63718 (_ BitVec 16)) (t!367960 List!57394)) )
))
(declare-datatypes ((TokenValue!8646 0))(
  ( (FloatLiteralValue!17292 (text!60967 List!57394)) (TokenValueExt!8645 (__x!34585 Int)) (Broken!43230 (value!266992 List!57394)) (Object!8769) (End!8646) (Def!8646) (Underscore!8646) (Match!8646) (Else!8646) (Error!8646) (Case!8646) (If!8646) (Extends!8646) (Abstract!8646) (Class!8646) (Val!8646) (DelimiterValue!17292 (del!8706 List!57394)) (KeywordValue!8652 (value!266993 List!57394)) (CommentValue!17292 (value!266994 List!57394)) (WhitespaceValue!17292 (value!266995 List!57394)) (IndentationValue!8646 (value!266996 List!57394)) (String!65103) (Int32!8646) (Broken!43231 (value!266997 List!57394)) (Boolean!8647) (Unit!148164) (OperatorValue!8649 (op!8706 List!57394)) (IdentifierValue!17292 (value!266998 List!57394)) (IdentifierValue!17293 (value!266999 List!57394)) (WhitespaceValue!17293 (value!267000 List!57394)) (True!17292) (False!17292) (Broken!43232 (value!267001 List!57394)) (Broken!43233 (value!267002 List!57394)) (True!17293) (RightBrace!8646) (RightBracket!8646) (Colon!8646) (Null!8646) (Comma!8646) (LeftBracket!8646) (False!17293) (LeftBrace!8646) (ImaginaryLiteralValue!8646 (text!60968 List!57394)) (StringLiteralValue!25938 (value!267003 List!57394)) (EOFValue!8646 (value!267004 List!57394)) (IdentValue!8646 (value!267005 List!57394)) (DelimiterValue!17293 (value!267006 List!57394)) (DedentValue!8646 (value!267007 List!57394)) (NewLineValue!8646 (value!267008 List!57394)) (IntegerValue!25938 (value!267009 (_ BitVec 32)) (text!60969 List!57394)) (IntegerValue!25939 (value!267010 Int) (text!60970 List!57394)) (Times!8646) (Or!8646) (Equal!8646) (Minus!8646) (Broken!43234 (value!267011 List!57394)) (And!8646) (Div!8646) (LessEqual!8646) (Mod!8646) (Concat!22215) (Not!8646) (Plus!8646) (SpaceValue!8646 (value!267012 List!57394)) (IntegerValue!25940 (value!267013 Int) (text!60971 List!57394)) (StringLiteralValue!25939 (text!60972 List!57394)) (FloatLiteralValue!17293 (text!60973 List!57394)) (BytesLiteralValue!8646 (value!267014 List!57394)) (CommentValue!17293 (value!267015 List!57394)) (StringLiteralValue!25940 (value!267016 List!57394)) (ErrorTokenValue!8646 (msg!8707 List!57394)) )
))
(declare-datatypes ((C!27388 0))(
  ( (C!27389 (val!23060 Int)) )
))
(declare-datatypes ((Regex!13569 0))(
  ( (ElementMatch!13569 (c!846279 C!27388)) (Concat!22216 (regOne!27650 Regex!13569) (regTwo!27650 Regex!13569)) (EmptyExpr!13569) (Star!13569 (reg!13898 Regex!13569)) (EmptyLang!13569) (Union!13569 (regOne!27651 Regex!13569) (regTwo!27651 Regex!13569)) )
))
(declare-datatypes ((String!65104 0))(
  ( (String!65105 (value!267017 String)) )
))
(declare-datatypes ((List!57395 0))(
  ( (Nil!57271) (Cons!57271 (h!63719 C!27388) (t!367961 List!57395)) )
))
(declare-datatypes ((IArray!30237 0))(
  ( (IArray!30238 (innerList!15176 List!57395)) )
))
(declare-datatypes ((Conc!15088 0))(
  ( (Node!15088 (left!41766 Conc!15088) (right!42096 Conc!15088) (csize!30406 Int) (cheight!15299 Int)) (Leaf!25081 (xs!18414 IArray!30237) (csize!30407 Int)) (Empty!15088) )
))
(declare-datatypes ((BalanceConc!29606 0))(
  ( (BalanceConc!29607 (c!846280 Conc!15088)) )
))
(declare-datatypes ((TokenValueInjection!16600 0))(
  ( (TokenValueInjection!16601 (toValue!11287 Int) (toChars!11146 Int)) )
))
(declare-datatypes ((Rule!16472 0))(
  ( (Rule!16473 (regex!8336 Regex!13569) (tag!9200 String!65104) (isSeparator!8336 Bool) (transformation!8336 TokenValueInjection!16600)) )
))
(declare-datatypes ((Token!15172 0))(
  ( (Token!15173 (value!267018 TokenValue!8646) (rule!11556 Rule!16472) (size!37966 Int) (originalCharacters!8617 List!57395)) )
))
(declare-datatypes ((tuple2!61876 0))(
  ( (tuple2!61877 (_1!34241 Token!15172) (_2!34241 BalanceConc!29606)) )
))
(declare-fun lt!2046442 () tuple2!61876)

(declare-datatypes ((tuple2!61878 0))(
  ( (tuple2!61879 (_1!34242 Token!15172) (_2!34242 List!57395)) )
))
(declare-fun lt!2046444 () tuple2!61878)

(declare-fun list!18281 (BalanceConc!29606) List!57395)

(assert (=> b!4957735 (= e!3098296 (= (list!18281 (_2!34241 lt!2046442)) (_2!34242 lt!2046444)))))

(declare-fun b!4957736 () Bool)

(declare-fun e!3098295 () Bool)

(declare-fun totalInput!464 () BalanceConc!29606)

(declare-fun tp!1390423 () Bool)

(declare-fun inv!74736 (Conc!15088) Bool)

(assert (=> b!4957736 (= e!3098295 (and (inv!74736 (c!846280 totalInput!464)) tp!1390423))))

(declare-fun b!4957737 () Bool)

(declare-fun e!3098293 () Bool)

(declare-fun e!3098294 () Bool)

(assert (=> b!4957737 (= e!3098293 e!3098294)))

(declare-fun res!2115560 () Bool)

(assert (=> b!4957737 (=> (not res!2115560) (not e!3098294))))

(declare-fun lt!2046443 () List!57395)

(declare-fun isSuffix!1135 (List!57395 List!57395) Bool)

(assert (=> b!4957737 (= res!2115560 (isSuffix!1135 lt!2046443 (list!18281 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29606)

(assert (=> b!4957737 (= lt!2046443 (list!18281 input!1342))))

(declare-fun b!4957738 () Bool)

(declare-fun res!2115559 () Bool)

(assert (=> b!4957738 (=> (not res!2115559) (not e!3098293))))

(declare-datatypes ((List!57396 0))(
  ( (Nil!57272) (Cons!57272 (h!63720 Rule!16472) (t!367962 List!57396)) )
))
(declare-fun rulesArg!259 () List!57396)

(declare-fun isEmpty!30792 (List!57396) Bool)

(assert (=> b!4957738 (= res!2115559 (not (isEmpty!30792 rulesArg!259)))))

(declare-fun b!4957739 () Bool)

(declare-fun e!3098299 () Bool)

(assert (=> b!4957739 (= e!3098299 e!3098296)))

(declare-fun res!2115562 () Bool)

(assert (=> b!4957739 (=> (not res!2115562) (not e!3098296))))

(assert (=> b!4957739 (= res!2115562 (= (_1!34241 lt!2046442) (_1!34242 lt!2046444)))))

(declare-datatypes ((Option!14341 0))(
  ( (None!14340) (Some!14340 (v!50325 tuple2!61878)) )
))
(declare-fun lt!2046449 () Option!14341)

(declare-fun get!19825 (Option!14341) tuple2!61878)

(assert (=> b!4957739 (= lt!2046444 (get!19825 lt!2046449))))

(declare-datatypes ((Option!14342 0))(
  ( (None!14341) (Some!14341 (v!50326 tuple2!61876)) )
))
(declare-fun lt!2046447 () Option!14342)

(declare-fun get!19826 (Option!14342) tuple2!61876)

(assert (=> b!4957739 (= lt!2046442 (get!19826 lt!2046447))))

(declare-fun b!4957740 () Bool)

(declare-fun e!3098290 () Bool)

(assert (=> b!4957740 (= e!3098290 true)))

(declare-fun lt!2046450 () Bool)

(assert (=> b!4957740 (= lt!2046450 e!3098299)))

(declare-fun res!2115557 () Bool)

(assert (=> b!4957740 (=> res!2115557 e!3098299)))

(declare-fun lt!2046448 () Bool)

(assert (=> b!4957740 (= res!2115557 (not lt!2046448))))

(declare-fun b!4957741 () Bool)

(declare-fun e!3098297 () Bool)

(declare-fun e!3098289 () Bool)

(assert (=> b!4957741 (= e!3098297 e!3098289)))

(declare-fun res!2115558 () Bool)

(assert (=> b!4957741 (=> res!2115558 e!3098289)))

(declare-fun lt!2046446 () Option!14342)

(get-info :version)

(assert (=> b!4957741 (= res!2115558 (or (and ((_ is None!14341) lt!2046446) ((_ is None!14341) lt!2046447)) ((_ is None!14341) lt!2046447) (not ((_ is None!14341) lt!2046446))))))

(declare-datatypes ((LexerInterface!7928 0))(
  ( (LexerInterfaceExt!7925 (__x!34586 Int)) (Lexer!7926) )
))
(declare-fun thiss!15247 () LexerInterface!7928)

(declare-fun maxPrefixZipperSequenceV2!667 (LexerInterface!7928 List!57396 BalanceConc!29606 BalanceConc!29606) Option!14342)

(assert (=> b!4957741 (= lt!2046447 (maxPrefixZipperSequenceV2!667 thiss!15247 (t!367962 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!320 (LexerInterface!7928 Rule!16472 BalanceConc!29606 BalanceConc!29606) Option!14342)

(assert (=> b!4957741 (= lt!2046446 (maxPrefixOneRuleZipperSequenceV2!320 thiss!15247 (h!63720 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4957742 () Bool)

(declare-fun e!3098291 () Bool)

(declare-fun e!3098292 () Bool)

(declare-fun tp!1390424 () Bool)

(assert (=> b!4957742 (= e!3098291 (and e!3098292 tp!1390424))))

(declare-fun e!3098288 () Bool)

(assert (=> b!4957743 (= e!3098288 (and tp!1390427 tp!1390426))))

(declare-fun b!4957744 () Bool)

(assert (=> b!4957744 (= e!3098294 (not e!3098297))))

(declare-fun res!2115561 () Bool)

(assert (=> b!4957744 (=> res!2115561 e!3098297)))

(assert (=> b!4957744 (= res!2115561 (or (and ((_ is Cons!57272) rulesArg!259) ((_ is Nil!57272) (t!367962 rulesArg!259))) (not ((_ is Cons!57272) rulesArg!259))))))

(declare-fun isPrefix!5189 (List!57395 List!57395) Bool)

(assert (=> b!4957744 (isPrefix!5189 lt!2046443 lt!2046443)))

(declare-datatypes ((Unit!148165 0))(
  ( (Unit!148166) )
))
(declare-fun lt!2046445 () Unit!148165)

(declare-fun lemmaIsPrefixRefl!3513 (List!57395 List!57395) Unit!148165)

(assert (=> b!4957744 (= lt!2046445 (lemmaIsPrefixRefl!3513 lt!2046443 lt!2046443))))

(declare-fun b!4957745 () Bool)

(declare-fun res!2115565 () Bool)

(assert (=> b!4957745 (=> (not res!2115565) (not e!3098293))))

(declare-fun rulesValidInductive!3239 (LexerInterface!7928 List!57396) Bool)

(assert (=> b!4957745 (= res!2115565 (rulesValidInductive!3239 thiss!15247 rulesArg!259))))

(declare-fun res!2115564 () Bool)

(assert (=> start!522598 (=> (not res!2115564) (not e!3098293))))

(assert (=> start!522598 (= res!2115564 ((_ is Lexer!7926) thiss!15247))))

(assert (=> start!522598 e!3098293))

(assert (=> start!522598 true))

(assert (=> start!522598 e!3098291))

(declare-fun e!3098298 () Bool)

(declare-fun inv!74737 (BalanceConc!29606) Bool)

(assert (=> start!522598 (and (inv!74737 input!1342) e!3098298)))

(assert (=> start!522598 (and (inv!74737 totalInput!464) e!3098295)))

(declare-fun tp!1390425 () Bool)

(declare-fun b!4957746 () Bool)

(declare-fun inv!74732 (String!65104) Bool)

(declare-fun inv!74738 (TokenValueInjection!16600) Bool)

(assert (=> b!4957746 (= e!3098292 (and tp!1390425 (inv!74732 (tag!9200 (h!63720 rulesArg!259))) (inv!74738 (transformation!8336 (h!63720 rulesArg!259))) e!3098288))))

(declare-fun b!4957747 () Bool)

(assert (=> b!4957747 (= e!3098289 e!3098290)))

(declare-fun res!2115563 () Bool)

(assert (=> b!4957747 (=> res!2115563 e!3098290)))

(declare-fun isDefined!11264 (Option!14341) Bool)

(assert (=> b!4957747 (= res!2115563 (not (= lt!2046448 (isDefined!11264 lt!2046449))))))

(declare-fun isDefined!11265 (Option!14342) Bool)

(assert (=> b!4957747 (= lt!2046448 (isDefined!11265 lt!2046447))))

(declare-fun maxPrefixZipper!733 (LexerInterface!7928 List!57396 List!57395) Option!14341)

(assert (=> b!4957747 (= lt!2046449 (maxPrefixZipper!733 thiss!15247 rulesArg!259 lt!2046443))))

(declare-fun b!4957748 () Bool)

(declare-fun tp!1390428 () Bool)

(assert (=> b!4957748 (= e!3098298 (and (inv!74736 (c!846280 input!1342)) tp!1390428))))

(assert (= (and start!522598 res!2115564) b!4957745))

(assert (= (and b!4957745 res!2115565) b!4957738))

(assert (= (and b!4957738 res!2115559) b!4957737))

(assert (= (and b!4957737 res!2115560) b!4957744))

(assert (= (and b!4957744 (not res!2115561)) b!4957741))

(assert (= (and b!4957741 (not res!2115558)) b!4957747))

(assert (= (and b!4957747 (not res!2115563)) b!4957740))

(assert (= (and b!4957740 (not res!2115557)) b!4957739))

(assert (= (and b!4957739 res!2115562) b!4957735))

(assert (= b!4957746 b!4957743))

(assert (= b!4957742 b!4957746))

(assert (= (and start!522598 ((_ is Cons!57272) rulesArg!259)) b!4957742))

(assert (= start!522598 b!4957748))

(assert (= start!522598 b!4957736))

(declare-fun m!5982310 () Bool)

(assert (=> b!4957745 m!5982310))

(declare-fun m!5982312 () Bool)

(assert (=> start!522598 m!5982312))

(declare-fun m!5982314 () Bool)

(assert (=> start!522598 m!5982314))

(declare-fun m!5982316 () Bool)

(assert (=> b!4957735 m!5982316))

(declare-fun m!5982318 () Bool)

(assert (=> b!4957748 m!5982318))

(declare-fun m!5982320 () Bool)

(assert (=> b!4957739 m!5982320))

(declare-fun m!5982322 () Bool)

(assert (=> b!4957739 m!5982322))

(declare-fun m!5982324 () Bool)

(assert (=> b!4957738 m!5982324))

(declare-fun m!5982326 () Bool)

(assert (=> b!4957736 m!5982326))

(declare-fun m!5982328 () Bool)

(assert (=> b!4957744 m!5982328))

(declare-fun m!5982330 () Bool)

(assert (=> b!4957744 m!5982330))

(declare-fun m!5982332 () Bool)

(assert (=> b!4957746 m!5982332))

(declare-fun m!5982334 () Bool)

(assert (=> b!4957746 m!5982334))

(declare-fun m!5982336 () Bool)

(assert (=> b!4957737 m!5982336))

(assert (=> b!4957737 m!5982336))

(declare-fun m!5982338 () Bool)

(assert (=> b!4957737 m!5982338))

(declare-fun m!5982340 () Bool)

(assert (=> b!4957737 m!5982340))

(declare-fun m!5982342 () Bool)

(assert (=> b!4957741 m!5982342))

(declare-fun m!5982344 () Bool)

(assert (=> b!4957741 m!5982344))

(declare-fun m!5982346 () Bool)

(assert (=> b!4957747 m!5982346))

(declare-fun m!5982348 () Bool)

(assert (=> b!4957747 m!5982348))

(declare-fun m!5982350 () Bool)

(assert (=> b!4957747 m!5982350))

(check-sat (not b_next!133165) (not b!4957744) (not b!4957741) b_and!347227 (not b!4957739) (not b!4957746) (not b!4957748) (not b!4957737) (not start!522598) (not b!4957735) (not b!4957745) (not b!4957747) (not b!4957736) (not b!4957738) (not b_next!133167) (not b!4957742) b_and!347229)
(check-sat b_and!347227 b_and!347229 (not b_next!133165) (not b_next!133167))
