; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42854 () Bool)

(assert start!42854)

(declare-fun b!452346 () Bool)

(declare-fun b_free!12537 () Bool)

(declare-fun b_next!12537 () Bool)

(assert (=> b!452346 (= b_free!12537 (not b_next!12537))))

(declare-fun tp!125803 () Bool)

(declare-fun b_and!48601 () Bool)

(assert (=> b!452346 (= tp!125803 b_and!48601)))

(declare-fun b_free!12539 () Bool)

(declare-fun b_next!12539 () Bool)

(assert (=> b!452346 (= b_free!12539 (not b_next!12539))))

(declare-fun tp!125808 () Bool)

(declare-fun b_and!48603 () Bool)

(assert (=> b!452346 (= tp!125808 b_and!48603)))

(declare-fun b!452366 () Bool)

(declare-fun b_free!12541 () Bool)

(declare-fun b_next!12541 () Bool)

(assert (=> b!452366 (= b_free!12541 (not b_next!12541))))

(declare-fun tp!125807 () Bool)

(declare-fun b_and!48605 () Bool)

(assert (=> b!452366 (= tp!125807 b_and!48605)))

(declare-fun b_free!12543 () Bool)

(declare-fun b_next!12543 () Bool)

(assert (=> b!452366 (= b_free!12543 (not b_next!12543))))

(declare-fun tp!125813 () Bool)

(declare-fun b_and!48607 () Bool)

(assert (=> b!452366 (= tp!125813 b_and!48607)))

(declare-fun b!452377 () Bool)

(declare-fun b_free!12545 () Bool)

(declare-fun b_next!12545 () Bool)

(assert (=> b!452377 (= b_free!12545 (not b_next!12545))))

(declare-fun tp!125806 () Bool)

(declare-fun b_and!48609 () Bool)

(assert (=> b!452377 (= tp!125806 b_and!48609)))

(declare-fun b_free!12547 () Bool)

(declare-fun b_next!12547 () Bool)

(assert (=> b!452377 (= b_free!12547 (not b_next!12547))))

(declare-fun tp!125805 () Bool)

(declare-fun b_and!48611 () Bool)

(assert (=> b!452377 (= tp!125805 b_and!48611)))

(declare-fun bs!56002 () Bool)

(declare-fun b!452337 () Bool)

(declare-fun b!452378 () Bool)

(assert (= bs!56002 (and b!452337 b!452378)))

(declare-fun lambda!13174 () Int)

(declare-fun lambda!13173 () Int)

(assert (=> bs!56002 (not (= lambda!13174 lambda!13173))))

(declare-fun b!452398 () Bool)

(declare-fun e!276610 () Bool)

(assert (=> b!452398 (= e!276610 true)))

(declare-fun b!452397 () Bool)

(declare-fun e!276609 () Bool)

(assert (=> b!452397 (= e!276609 e!276610)))

(declare-fun b!452396 () Bool)

(declare-fun e!276608 () Bool)

(assert (=> b!452396 (= e!276608 e!276609)))

(assert (=> b!452337 e!276608))

(assert (= b!452397 b!452398))

(assert (= b!452396 b!452397))

(declare-datatypes ((List!4388 0))(
  ( (Nil!4378) (Cons!4378 (h!9775 (_ BitVec 16)) (t!71000 List!4388)) )
))
(declare-datatypes ((TokenValue!871 0))(
  ( (FloatLiteralValue!1742 (text!6542 List!4388)) (TokenValueExt!870 (__x!3229 Int)) (Broken!4355 (value!28486 List!4388)) (Object!880) (End!871) (Def!871) (Underscore!871) (Match!871) (Else!871) (Error!871) (Case!871) (If!871) (Extends!871) (Abstract!871) (Class!871) (Val!871) (DelimiterValue!1742 (del!931 List!4388)) (KeywordValue!877 (value!28487 List!4388)) (CommentValue!1742 (value!28488 List!4388)) (WhitespaceValue!1742 (value!28489 List!4388)) (IndentationValue!871 (value!28490 List!4388)) (String!5434) (Int32!871) (Broken!4356 (value!28491 List!4388)) (Boolean!872) (Unit!7908) (OperatorValue!874 (op!931 List!4388)) (IdentifierValue!1742 (value!28492 List!4388)) (IdentifierValue!1743 (value!28493 List!4388)) (WhitespaceValue!1743 (value!28494 List!4388)) (True!1742) (False!1742) (Broken!4357 (value!28495 List!4388)) (Broken!4358 (value!28496 List!4388)) (True!1743) (RightBrace!871) (RightBracket!871) (Colon!871) (Null!871) (Comma!871) (LeftBracket!871) (False!1743) (LeftBrace!871) (ImaginaryLiteralValue!871 (text!6543 List!4388)) (StringLiteralValue!2613 (value!28497 List!4388)) (EOFValue!871 (value!28498 List!4388)) (IdentValue!871 (value!28499 List!4388)) (DelimiterValue!1743 (value!28500 List!4388)) (DedentValue!871 (value!28501 List!4388)) (NewLineValue!871 (value!28502 List!4388)) (IntegerValue!2613 (value!28503 (_ BitVec 32)) (text!6544 List!4388)) (IntegerValue!2614 (value!28504 Int) (text!6545 List!4388)) (Times!871) (Or!871) (Equal!871) (Minus!871) (Broken!4359 (value!28505 List!4388)) (And!871) (Div!871) (LessEqual!871) (Mod!871) (Concat!1944) (Not!871) (Plus!871) (SpaceValue!871 (value!28506 List!4388)) (IntegerValue!2615 (value!28507 Int) (text!6546 List!4388)) (StringLiteralValue!2614 (text!6547 List!4388)) (FloatLiteralValue!1743 (text!6548 List!4388)) (BytesLiteralValue!871 (value!28508 List!4388)) (CommentValue!1743 (value!28509 List!4388)) (StringLiteralValue!2615 (value!28510 List!4388)) (ErrorTokenValue!871 (msg!932 List!4388)) )
))
(declare-datatypes ((C!3068 0))(
  ( (C!3069 (val!1420 Int)) )
))
(declare-datatypes ((List!4389 0))(
  ( (Nil!4379) (Cons!4379 (h!9776 C!3068) (t!71001 List!4389)) )
))
(declare-datatypes ((IArray!3041 0))(
  ( (IArray!3042 (innerList!1578 List!4389)) )
))
(declare-datatypes ((Conc!1520 0))(
  ( (Node!1520 (left!3683 Conc!1520) (right!4013 Conc!1520) (csize!3270 Int) (cheight!1731 Int)) (Leaf!2284 (xs!4151 IArray!3041) (csize!3271 Int)) (Empty!1520) )
))
(declare-datatypes ((BalanceConc!3048 0))(
  ( (BalanceConc!3049 (c!91566 Conc!1520)) )
))
(declare-datatypes ((String!5435 0))(
  ( (String!5436 (value!28511 String)) )
))
(declare-datatypes ((TokenValueInjection!1514 0))(
  ( (TokenValueInjection!1515 (toValue!1664 Int) (toChars!1523 Int)) )
))
(declare-datatypes ((Regex!1073 0))(
  ( (ElementMatch!1073 (c!91567 C!3068)) (Concat!1945 (regOne!2658 Regex!1073) (regTwo!2658 Regex!1073)) (EmptyExpr!1073) (Star!1073 (reg!1402 Regex!1073)) (EmptyLang!1073) (Union!1073 (regOne!2659 Regex!1073) (regTwo!2659 Regex!1073)) )
))
(declare-datatypes ((Rule!1498 0))(
  ( (Rule!1499 (regex!849 Regex!1073) (tag!1109 String!5435) (isSeparator!849 Bool) (transformation!849 TokenValueInjection!1514)) )
))
(declare-datatypes ((List!4390 0))(
  ( (Nil!4380) (Cons!4380 (h!9777 Rule!1498) (t!71002 List!4390)) )
))
(declare-fun rules!1920 () List!4390)

(get-info :version)

(assert (= (and b!452337 ((_ is Cons!4380) rules!1920)) b!452396))

(declare-fun order!3847 () Int)

(declare-fun order!3845 () Int)

(declare-fun dynLambda!2640 (Int Int) Int)

(declare-fun dynLambda!2641 (Int Int) Int)

(assert (=> b!452398 (< (dynLambda!2640 order!3845 (toValue!1664 (transformation!849 (h!9777 rules!1920)))) (dynLambda!2641 order!3847 lambda!13174))))

(declare-fun order!3849 () Int)

(declare-fun dynLambda!2642 (Int Int) Int)

(assert (=> b!452398 (< (dynLambda!2642 order!3849 (toChars!1523 (transformation!849 (h!9777 rules!1920)))) (dynLambda!2641 order!3847 lambda!13174))))

(assert (=> b!452337 true))

(declare-fun b!452336 () Bool)

(declare-fun e!276583 () Bool)

(declare-datatypes ((Token!1442 0))(
  ( (Token!1443 (value!28512 TokenValue!871) (rule!1540 Rule!1498) (size!3602 Int) (originalCharacters!892 List!4389)) )
))
(declare-datatypes ((List!4391 0))(
  ( (Nil!4381) (Cons!4381 (h!9778 Token!1442) (t!71003 List!4391)) )
))
(declare-datatypes ((IArray!3043 0))(
  ( (IArray!3044 (innerList!1579 List!4391)) )
))
(declare-datatypes ((Conc!1521 0))(
  ( (Node!1521 (left!3684 Conc!1521) (right!4014 Conc!1521) (csize!3272 Int) (cheight!1732 Int)) (Leaf!2285 (xs!4152 IArray!3043) (csize!3273 Int)) (Empty!1521) )
))
(declare-datatypes ((BalanceConc!3050 0))(
  ( (BalanceConc!3051 (c!91568 Conc!1521)) )
))
(declare-datatypes ((tuple2!5304 0))(
  ( (tuple2!5305 (_1!2868 BalanceConc!3050) (_2!2868 BalanceConc!3048)) )
))
(declare-fun lt!201047 () tuple2!5304)

(declare-fun isEmpty!3339 (BalanceConc!3048) Bool)

(assert (=> b!452336 (= e!276583 (isEmpty!3339 (_2!2868 lt!201047)))))

(declare-fun e!276576 () Bool)

(declare-fun e!276579 () Bool)

(assert (=> b!452337 (= e!276576 e!276579)))

(declare-fun res!200958 () Bool)

(assert (=> b!452337 (=> res!200958 e!276579)))

(declare-fun tokens!465 () List!4391)

(declare-datatypes ((LexerInterface!735 0))(
  ( (LexerInterfaceExt!732 (__x!3230 Int)) (Lexer!733) )
))
(declare-fun thiss!17480 () LexerInterface!735)

(declare-datatypes ((tuple2!5306 0))(
  ( (tuple2!5307 (_1!2869 Token!1442) (_2!2869 BalanceConc!3048)) )
))
(declare-datatypes ((Option!1129 0))(
  ( (None!1128) (Some!1128 (v!15443 tuple2!5306)) )
))
(declare-fun isDefined!968 (Option!1129) Bool)

(declare-fun maxPrefixZipperSequence!414 (LexerInterface!735 List!4390 BalanceConc!3048) Option!1129)

(declare-fun seqFromList!1063 (List!4389) BalanceConc!3048)

(assert (=> b!452337 (= res!200958 (not (isDefined!968 (maxPrefixZipperSequence!414 thiss!17480 rules!1920 (seqFromList!1063 (originalCharacters!892 (h!9778 tokens!465)))))))))

(declare-datatypes ((Unit!7909 0))(
  ( (Unit!7910) )
))
(declare-fun lt!201070 () Unit!7909)

(declare-fun forallContained!402 (List!4391 Int Token!1442) Unit!7909)

(assert (=> b!452337 (= lt!201070 (forallContained!402 tokens!465 lambda!13174 (h!9778 tokens!465)))))

(declare-fun lt!201056 () List!4389)

(assert (=> b!452337 (= lt!201056 (originalCharacters!892 (h!9778 tokens!465)))))

(declare-fun b!452338 () Bool)

(declare-fun res!200966 () Bool)

(assert (=> b!452338 (=> res!200966 e!276576)))

(declare-fun rulesProduceIndividualToken!484 (LexerInterface!735 List!4390 Token!1442) Bool)

(assert (=> b!452338 (= res!200966 (not (rulesProduceIndividualToken!484 thiss!17480 rules!1920 (h!9778 tokens!465))))))

(declare-fun b!452339 () Bool)

(declare-fun res!200968 () Bool)

(declare-fun e!276567 () Bool)

(assert (=> b!452339 (=> (not res!200968) (not e!276567))))

(declare-fun separatorToken!170 () Token!1442)

(assert (=> b!452339 (= res!200968 (isSeparator!849 (rule!1540 separatorToken!170)))))

(declare-fun b!452340 () Bool)

(declare-fun res!200970 () Bool)

(declare-fun e!276587 () Bool)

(assert (=> b!452340 (=> (not res!200970) (not e!276587))))

(declare-fun lt!201080 () tuple2!5304)

(declare-fun lt!201062 () Token!1442)

(declare-fun apply!1120 (BalanceConc!3050 Int) Token!1442)

(assert (=> b!452340 (= res!200970 (= (apply!1120 (_1!2868 lt!201080) 0) lt!201062))))

(declare-fun b!452341 () Bool)

(declare-fun e!276597 () Bool)

(declare-fun matchR!391 (Regex!1073 List!4389) Bool)

(assert (=> b!452341 (= e!276597 (matchR!391 (regex!849 (rule!1540 (h!9778 tokens!465))) lt!201056))))

(declare-fun b!452342 () Bool)

(declare-fun e!276592 () Bool)

(assert (=> b!452342 (= e!276579 e!276592)))

(declare-fun res!200937 () Bool)

(assert (=> b!452342 (=> res!200937 e!276592)))

(declare-fun lt!201090 () Bool)

(assert (=> b!452342 (= res!200937 (not lt!201090))))

(assert (=> b!452342 e!276597))

(declare-fun res!200961 () Bool)

(assert (=> b!452342 (=> (not res!200961) (not e!276597))))

(declare-datatypes ((tuple2!5308 0))(
  ( (tuple2!5309 (_1!2870 Token!1442) (_2!2870 List!4389)) )
))
(declare-fun lt!201050 () tuple2!5308)

(assert (=> b!452342 (= res!200961 (= (_1!2870 lt!201050) (h!9778 tokens!465)))))

(declare-datatypes ((Option!1130 0))(
  ( (None!1129) (Some!1129 (v!15444 tuple2!5308)) )
))
(declare-fun lt!201076 () Option!1130)

(declare-fun get!1600 (Option!1130) tuple2!5308)

(assert (=> b!452342 (= lt!201050 (get!1600 lt!201076))))

(declare-fun isDefined!969 (Option!1130) Bool)

(assert (=> b!452342 (isDefined!969 lt!201076)))

(declare-fun maxPrefix!451 (LexerInterface!735 List!4390 List!4389) Option!1130)

(assert (=> b!452342 (= lt!201076 (maxPrefix!451 thiss!17480 rules!1920 lt!201056))))

(declare-fun b!452343 () Bool)

(declare-fun res!200956 () Bool)

(assert (=> b!452343 (=> (not res!200956) (not e!276567))))

(declare-fun sepAndNonSepRulesDisjointChars!438 (List!4390 List!4390) Bool)

(assert (=> b!452343 (= res!200956 (sepAndNonSepRulesDisjointChars!438 rules!1920 rules!1920))))

(declare-fun b!452344 () Bool)

(declare-fun e!276584 () Bool)

(declare-fun tp!125812 () Bool)

(declare-fun e!276599 () Bool)

(declare-fun inv!5453 (String!5435) Bool)

(declare-fun inv!5456 (TokenValueInjection!1514) Bool)

(assert (=> b!452344 (= e!276599 (and tp!125812 (inv!5453 (tag!1109 (rule!1540 (h!9778 tokens!465)))) (inv!5456 (transformation!849 (rule!1540 (h!9778 tokens!465)))) e!276584))))

(declare-fun b!452345 () Bool)

(declare-fun res!200962 () Bool)

(assert (=> b!452345 (=> (not res!200962) (not e!276567))))

(assert (=> b!452345 (= res!200962 ((_ is Cons!4381) tokens!465))))

(declare-fun e!276594 () Bool)

(assert (=> b!452346 (= e!276594 (and tp!125803 tp!125808))))

(declare-fun b!452347 () Bool)

(declare-fun e!276581 () Bool)

(declare-fun e!276600 () Bool)

(declare-fun tp!125814 () Bool)

(assert (=> b!452347 (= e!276581 (and e!276600 tp!125814))))

(declare-fun b!452348 () Bool)

(declare-fun res!200941 () Bool)

(declare-fun e!276569 () Bool)

(assert (=> b!452348 (=> res!200941 e!276569)))

(declare-fun lt!201043 () List!4389)

(declare-fun filter!93 (List!4391 Int) List!4391)

(declare-datatypes ((tuple2!5310 0))(
  ( (tuple2!5311 (_1!2871 List!4391) (_2!2871 List!4389)) )
))
(declare-fun lexList!287 (LexerInterface!735 List!4390 List!4389) tuple2!5310)

(assert (=> b!452348 (= res!200941 (not (= (filter!93 (_1!2871 (lexList!287 thiss!17480 rules!1920 lt!201043)) lambda!13173) tokens!465)))))

(declare-fun b!452349 () Bool)

(declare-fun e!276570 () Bool)

(assert (=> b!452349 (= e!276567 e!276570)))

(declare-fun res!200943 () Bool)

(assert (=> b!452349 (=> (not res!200943) (not e!276570))))

(declare-fun lt!201072 () List!4389)

(assert (=> b!452349 (= res!200943 (= lt!201043 lt!201072))))

(declare-fun lt!201065 () BalanceConc!3048)

(declare-fun list!1944 (BalanceConc!3048) List!4389)

(assert (=> b!452349 (= lt!201072 (list!1944 lt!201065))))

(declare-fun lt!201042 () BalanceConc!3050)

(declare-fun printWithSeparatorTokenWhenNeededRec!408 (LexerInterface!735 List!4390 BalanceConc!3050 Token!1442 Int) BalanceConc!3048)

(assert (=> b!452349 (= lt!201065 (printWithSeparatorTokenWhenNeededRec!408 thiss!17480 rules!1920 lt!201042 separatorToken!170 0))))

(declare-fun printWithSeparatorTokenWhenNeededList!416 (LexerInterface!735 List!4390 List!4391 Token!1442) List!4389)

(assert (=> b!452349 (= lt!201043 (printWithSeparatorTokenWhenNeededList!416 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!452350 () Bool)

(declare-fun e!276566 () Bool)

(declare-fun lt!201069 () Rule!1498)

(assert (=> b!452350 (= e!276566 (= (rule!1540 lt!201062) lt!201069))))

(declare-fun b!452351 () Bool)

(declare-fun e!276588 () Bool)

(assert (=> b!452351 (= e!276588 e!276567)))

(declare-fun res!200942 () Bool)

(assert (=> b!452351 (=> (not res!200942) (not e!276567))))

(declare-fun rulesProduceEachTokenIndividually!527 (LexerInterface!735 List!4390 BalanceConc!3050) Bool)

(assert (=> b!452351 (= res!200942 (rulesProduceEachTokenIndividually!527 thiss!17480 rules!1920 lt!201042))))

(declare-fun seqFromList!1064 (List!4391) BalanceConc!3050)

(assert (=> b!452351 (= lt!201042 (seqFromList!1064 tokens!465))))

(declare-fun e!276574 () Bool)

(declare-fun b!452352 () Bool)

(declare-fun tp!125811 () Bool)

(declare-fun inv!21 (TokenValue!871) Bool)

(assert (=> b!452352 (= e!276574 (and (inv!21 (value!28512 (h!9778 tokens!465))) e!276599 tp!125811))))

(declare-fun b!452353 () Bool)

(declare-fun e!276593 () Unit!7909)

(declare-fun Unit!7911 () Unit!7909)

(assert (=> b!452353 (= e!276593 Unit!7911)))

(declare-fun b!452354 () Bool)

(declare-fun res!200935 () Bool)

(assert (=> b!452354 (=> (not res!200935) (not e!276570))))

(assert (=> b!452354 (= res!200935 (= (list!1944 (seqFromList!1063 lt!201043)) lt!201072))))

(declare-fun b!452355 () Bool)

(declare-fun res!200967 () Bool)

(assert (=> b!452355 (=> (not res!200967) (not e!276588))))

(declare-fun rulesInvariant!701 (LexerInterface!735 List!4390) Bool)

(assert (=> b!452355 (= res!200967 (rulesInvariant!701 thiss!17480 rules!1920))))

(declare-fun b!452356 () Bool)

(declare-fun e!276578 () Bool)

(assert (=> b!452356 (= e!276569 e!276578)))

(declare-fun res!200963 () Bool)

(assert (=> b!452356 (=> res!200963 e!276578)))

(declare-fun lt!201038 () List!4391)

(assert (=> b!452356 (= res!200963 (not (= (filter!93 lt!201038 lambda!13173) tokens!465)))))

(declare-fun list!1945 (BalanceConc!3050) List!4391)

(declare-fun lex!527 (LexerInterface!735 List!4390 BalanceConc!3048) tuple2!5304)

(assert (=> b!452356 (= lt!201038 (list!1945 (_1!2868 (lex!527 thiss!17480 rules!1920 lt!201065))))))

(declare-fun b!452357 () Bool)

(declare-fun res!200951 () Bool)

(assert (=> b!452357 (=> (not res!200951) (not e!276567))))

(assert (=> b!452357 (= res!200951 (rulesProduceIndividualToken!484 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!200944 () Bool)

(assert (=> start!42854 (=> (not res!200944) (not e!276588))))

(assert (=> start!42854 (= res!200944 ((_ is Lexer!733) thiss!17480))))

(assert (=> start!42854 e!276588))

(assert (=> start!42854 true))

(assert (=> start!42854 e!276581))

(declare-fun e!276591 () Bool)

(declare-fun inv!5457 (Token!1442) Bool)

(assert (=> start!42854 (and (inv!5457 separatorToken!170) e!276591)))

(declare-fun e!276585 () Bool)

(assert (=> start!42854 e!276585))

(declare-fun b!452358 () Bool)

(assert (=> b!452358 (= e!276587 (isEmpty!3339 (_2!2868 lt!201080)))))

(declare-fun b!452359 () Bool)

(declare-fun res!200964 () Bool)

(assert (=> b!452359 (=> (not res!200964) (not e!276588))))

(declare-fun isEmpty!3340 (List!4390) Bool)

(assert (=> b!452359 (= res!200964 (not (isEmpty!3340 rules!1920)))))

(declare-fun b!452360 () Bool)

(declare-fun Unit!7912 () Unit!7909)

(assert (=> b!452360 (= e!276593 Unit!7912)))

(declare-fun lt!201089 () Unit!7909)

(declare-fun lt!201088 () C!3068)

(declare-fun lt!201045 () List!4389)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!128 (Regex!1073 List!4389 C!3068) Unit!7909)

(assert (=> b!452360 (= lt!201089 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!128 (regex!849 (rule!1540 lt!201062)) lt!201045 lt!201088))))

(declare-fun res!200969 () Bool)

(assert (=> b!452360 (= res!200969 (not (matchR!391 (regex!849 (rule!1540 lt!201062)) lt!201045)))))

(declare-fun e!276565 () Bool)

(assert (=> b!452360 (=> (not res!200969) (not e!276565))))

(assert (=> b!452360 e!276565))

(declare-fun tp!125810 () Bool)

(declare-fun b!452361 () Bool)

(declare-fun e!276590 () Bool)

(assert (=> b!452361 (= e!276590 (and tp!125810 (inv!5453 (tag!1109 (rule!1540 separatorToken!170))) (inv!5456 (transformation!849 (rule!1540 separatorToken!170))) e!276594))))

(declare-fun b!452362 () Bool)

(declare-fun e!276573 () Unit!7909)

(declare-fun Unit!7913 () Unit!7909)

(assert (=> b!452362 (= e!276573 Unit!7913)))

(declare-fun lt!201074 () C!3068)

(declare-fun lt!201071 () Unit!7909)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!108 (LexerInterface!735 List!4390 List!4390 Rule!1498 Rule!1498 C!3068) Unit!7909)

(assert (=> b!452362 (= lt!201071 (lemmaSepRuleNotContainsCharContainedInANonSepRule!108 thiss!17480 rules!1920 rules!1920 (rule!1540 lt!201062) (rule!1540 separatorToken!170) lt!201074))))

(assert (=> b!452362 false))

(declare-fun b!452363 () Bool)

(declare-fun e!276572 () Unit!7909)

(declare-fun Unit!7914 () Unit!7909)

(assert (=> b!452363 (= e!276572 Unit!7914)))

(assert (=> b!452363 false))

(declare-fun b!452364 () Bool)

(assert (=> b!452364 (= e!276592 e!276569)))

(declare-fun res!200950 () Bool)

(assert (=> b!452364 (=> res!200950 e!276569)))

(declare-fun lt!201086 () List!4391)

(assert (=> b!452364 (= res!200950 (not (= (filter!93 lt!201086 lambda!13173) (t!71003 tokens!465))))))

(assert (=> b!452364 (= (filter!93 lt!201086 lambda!13173) (t!71003 tokens!465))))

(declare-fun lt!201040 () BalanceConc!3048)

(assert (=> b!452364 (= lt!201086 (list!1945 (_1!2868 (lex!527 thiss!17480 rules!1920 lt!201040))))))

(declare-fun lt!201051 () Unit!7909)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!84 (LexerInterface!735 List!4390 List!4391 Token!1442) Unit!7909)

(assert (=> b!452364 (= lt!201051 (theoremInvertabilityFromTokensSepTokenWhenNeeded!84 thiss!17480 rules!1920 (t!71003 tokens!465) separatorToken!170))))

(declare-fun lt!201059 () Option!1130)

(declare-fun lt!201063 () List!4389)

(assert (=> b!452364 (= lt!201059 (Some!1129 (tuple2!5309 separatorToken!170 lt!201063)))))

(declare-fun lt!201084 () Unit!7909)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!80 (LexerInterface!735 List!4390 Token!1442 Rule!1498 List!4389 Rule!1498) Unit!7909)

(assert (=> b!452364 (= lt!201084 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!80 thiss!17480 rules!1920 separatorToken!170 (rule!1540 separatorToken!170) lt!201063 (rule!1540 lt!201062)))))

(declare-fun lt!201087 () Unit!7909)

(assert (=> b!452364 (= lt!201087 e!276573)))

(declare-fun c!91563 () Bool)

(declare-fun contains!983 (List!4389 C!3068) Bool)

(declare-fun usedCharacters!150 (Regex!1073) List!4389)

(assert (=> b!452364 (= c!91563 (contains!983 (usedCharacters!150 (regex!849 (rule!1540 separatorToken!170))) lt!201074))))

(declare-fun head!1099 (List!4389) C!3068)

(assert (=> b!452364 (= lt!201074 (head!1099 lt!201063))))

(declare-fun lt!201061 () Unit!7909)

(assert (=> b!452364 (= lt!201061 e!276593)))

(declare-fun c!91564 () Bool)

(assert (=> b!452364 (= c!91564 (not (contains!983 (usedCharacters!150 (regex!849 (rule!1540 lt!201062))) lt!201088)))))

(assert (=> b!452364 (= lt!201088 (head!1099 lt!201045))))

(declare-fun e!276601 () Bool)

(assert (=> b!452364 e!276601))

(declare-fun res!200957 () Bool)

(assert (=> b!452364 (=> (not res!200957) (not e!276601))))

(declare-datatypes ((Option!1131 0))(
  ( (None!1130) (Some!1130 (v!15445 Rule!1498)) )
))
(declare-fun lt!201082 () Option!1131)

(declare-fun isDefined!970 (Option!1131) Bool)

(assert (=> b!452364 (= res!200957 (isDefined!970 lt!201082))))

(declare-fun getRuleFromTag!208 (LexerInterface!735 List!4390 String!5435) Option!1131)

(assert (=> b!452364 (= lt!201082 (getRuleFromTag!208 thiss!17480 rules!1920 (tag!1109 (rule!1540 lt!201062))))))

(declare-fun lt!201039 () Unit!7909)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!208 (LexerInterface!735 List!4390 List!4389 Token!1442) Unit!7909)

(assert (=> b!452364 (= lt!201039 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!208 thiss!17480 rules!1920 lt!201045 lt!201062))))

(declare-fun charsOf!492 (Token!1442) BalanceConc!3048)

(assert (=> b!452364 (= lt!201045 (list!1944 (charsOf!492 lt!201062)))))

(declare-fun lt!201081 () Unit!7909)

(assert (=> b!452364 (= lt!201081 (forallContained!402 tokens!465 lambda!13174 lt!201062))))

(assert (=> b!452364 e!276587))

(declare-fun res!200952 () Bool)

(assert (=> b!452364 (=> (not res!200952) (not e!276587))))

(declare-fun size!3603 (BalanceConc!3050) Int)

(assert (=> b!452364 (= res!200952 (= (size!3603 (_1!2868 lt!201080)) 1))))

(declare-fun lt!201058 () BalanceConc!3048)

(assert (=> b!452364 (= lt!201080 (lex!527 thiss!17480 rules!1920 lt!201058))))

(declare-fun lt!201053 () BalanceConc!3050)

(declare-fun printTailRec!421 (LexerInterface!735 BalanceConc!3050 Int BalanceConc!3048) BalanceConc!3048)

(assert (=> b!452364 (= lt!201058 (printTailRec!421 thiss!17480 lt!201053 0 (BalanceConc!3049 Empty!1520)))))

(declare-fun print!460 (LexerInterface!735 BalanceConc!3050) BalanceConc!3048)

(assert (=> b!452364 (= lt!201058 (print!460 thiss!17480 lt!201053))))

(declare-fun singletonSeq!395 (Token!1442) BalanceConc!3050)

(assert (=> b!452364 (= lt!201053 (singletonSeq!395 lt!201062))))

(declare-fun e!276564 () Bool)

(assert (=> b!452364 e!276564))

(declare-fun res!200947 () Bool)

(assert (=> b!452364 (=> (not res!200947) (not e!276564))))

(declare-fun lt!201055 () Option!1131)

(assert (=> b!452364 (= res!200947 (isDefined!970 lt!201055))))

(assert (=> b!452364 (= lt!201055 (getRuleFromTag!208 thiss!17480 rules!1920 (tag!1109 (rule!1540 separatorToken!170))))))

(declare-fun lt!201044 () List!4389)

(declare-fun lt!201048 () Unit!7909)

(assert (=> b!452364 (= lt!201048 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!208 thiss!17480 rules!1920 lt!201044 separatorToken!170))))

(assert (=> b!452364 e!276583))

(declare-fun res!200965 () Bool)

(assert (=> b!452364 (=> (not res!200965) (not e!276583))))

(assert (=> b!452364 (= res!200965 (= (size!3603 (_1!2868 lt!201047)) 1))))

(declare-fun lt!201075 () BalanceConc!3048)

(assert (=> b!452364 (= lt!201047 (lex!527 thiss!17480 rules!1920 lt!201075))))

(declare-fun lt!201083 () BalanceConc!3050)

(assert (=> b!452364 (= lt!201075 (printTailRec!421 thiss!17480 lt!201083 0 (BalanceConc!3049 Empty!1520)))))

(assert (=> b!452364 (= lt!201075 (print!460 thiss!17480 lt!201083))))

(assert (=> b!452364 (= lt!201083 (singletonSeq!395 separatorToken!170))))

(assert (=> b!452364 (rulesProduceIndividualToken!484 thiss!17480 rules!1920 lt!201062)))

(declare-fun lt!201060 () Unit!7909)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!198 (LexerInterface!735 List!4390 List!4391 Token!1442) Unit!7909)

(assert (=> b!452364 (= lt!201060 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!198 thiss!17480 rules!1920 tokens!465 lt!201062))))

(declare-fun head!1100 (List!4391) Token!1442)

(assert (=> b!452364 (= lt!201062 (head!1100 (t!71003 tokens!465)))))

(declare-fun lt!201049 () Unit!7909)

(assert (=> b!452364 (= lt!201049 e!276572)))

(declare-fun c!91565 () Bool)

(declare-fun isEmpty!3341 (List!4391) Bool)

(assert (=> b!452364 (= c!91565 (isEmpty!3341 (t!71003 tokens!465)))))

(declare-fun lt!201046 () List!4389)

(assert (=> b!452364 (= lt!201059 (maxPrefix!451 thiss!17480 rules!1920 lt!201046))))

(declare-fun lt!201067 () tuple2!5308)

(assert (=> b!452364 (= lt!201046 (_2!2870 lt!201067))))

(declare-fun lt!201041 () Unit!7909)

(declare-fun lemmaSamePrefixThenSameSuffix!294 (List!4389 List!4389 List!4389 List!4389 List!4389) Unit!7909)

(assert (=> b!452364 (= lt!201041 (lemmaSamePrefixThenSameSuffix!294 lt!201056 lt!201046 lt!201056 (_2!2870 lt!201067) lt!201043))))

(assert (=> b!452364 (= lt!201067 (get!1600 (maxPrefix!451 thiss!17480 rules!1920 lt!201043)))))

(declare-fun lt!201078 () List!4389)

(declare-fun isPrefix!509 (List!4389 List!4389) Bool)

(assert (=> b!452364 (isPrefix!509 lt!201056 lt!201078)))

(declare-fun lt!201066 () Unit!7909)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!400 (List!4389 List!4389) Unit!7909)

(assert (=> b!452364 (= lt!201066 (lemmaConcatTwoListThenFirstIsPrefix!400 lt!201056 lt!201046))))

(declare-fun e!276586 () Bool)

(assert (=> b!452364 e!276586))

(declare-fun res!200955 () Bool)

(assert (=> b!452364 (=> res!200955 e!276586)))

(assert (=> b!452364 (= res!200955 (isEmpty!3341 tokens!465))))

(declare-fun lt!201077 () Unit!7909)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!256 (LexerInterface!735 List!4390 List!4391 Token!1442) Unit!7909)

(assert (=> b!452364 (= lt!201077 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!256 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!452365 () Bool)

(assert (=> b!452365 (= e!276578 (= (filter!93 lt!201038 lambda!13173) tokens!465))))

(declare-fun e!276589 () Bool)

(assert (=> b!452366 (= e!276589 (and tp!125807 tp!125813))))

(declare-fun b!452367 () Bool)

(declare-fun res!200949 () Bool)

(assert (=> b!452367 (=> (not res!200949) (not e!276583))))

(assert (=> b!452367 (= res!200949 (= (apply!1120 (_1!2868 lt!201047) 0) separatorToken!170))))

(declare-fun b!452368 () Bool)

(declare-fun Unit!7915 () Unit!7909)

(assert (=> b!452368 (= e!276572 Unit!7915)))

(declare-fun b!452369 () Bool)

(declare-fun res!200948 () Bool)

(assert (=> b!452369 (=> (not res!200948) (not e!276597))))

(declare-fun isEmpty!3342 (List!4389) Bool)

(assert (=> b!452369 (= res!200948 (isEmpty!3342 (_2!2870 lt!201050)))))

(declare-fun e!276563 () Bool)

(declare-fun b!452370 () Bool)

(declare-fun ++!1272 (List!4389 List!4389) List!4389)

(assert (=> b!452370 (= e!276563 (not (= lt!201043 (++!1272 lt!201056 lt!201063))))))

(declare-fun tp!125809 () Bool)

(declare-fun b!452371 () Bool)

(assert (=> b!452371 (= e!276600 (and tp!125809 (inv!5453 (tag!1109 (h!9777 rules!1920))) (inv!5456 (transformation!849 (h!9777 rules!1920))) e!276589))))

(declare-fun b!452372 () Bool)

(declare-fun e!276596 () Bool)

(assert (=> b!452372 (= e!276564 e!276596)))

(declare-fun res!200959 () Bool)

(assert (=> b!452372 (=> (not res!200959) (not e!276596))))

(declare-fun lt!201068 () Rule!1498)

(assert (=> b!452372 (= res!200959 (matchR!391 (regex!849 lt!201068) lt!201044))))

(declare-fun get!1601 (Option!1131) Rule!1498)

(assert (=> b!452372 (= lt!201068 (get!1601 lt!201055))))

(declare-fun b!452373 () Bool)

(declare-fun e!276575 () Bool)

(declare-fun e!276577 () Bool)

(assert (=> b!452373 (= e!276575 e!276577)))

(declare-fun res!200940 () Bool)

(assert (=> b!452373 (=> res!200940 e!276577)))

(assert (=> b!452373 (= res!200940 e!276563)))

(declare-fun res!200946 () Bool)

(assert (=> b!452373 (=> (not res!200946) (not e!276563))))

(assert (=> b!452373 (= res!200946 (not lt!201090))))

(assert (=> b!452373 (= lt!201090 (= lt!201043 lt!201078))))

(declare-fun b!452374 () Bool)

(declare-fun e!276598 () Bool)

(assert (=> b!452374 (= e!276586 e!276598)))

(declare-fun res!200954 () Bool)

(assert (=> b!452374 (=> (not res!200954) (not e!276598))))

(declare-fun lt!201064 () Option!1130)

(assert (=> b!452374 (= res!200954 (isDefined!969 lt!201064))))

(assert (=> b!452374 (= lt!201064 (maxPrefix!451 thiss!17480 rules!1920 lt!201043))))

(declare-fun b!452375 () Bool)

(declare-fun res!200939 () Bool)

(assert (=> b!452375 (=> res!200939 e!276576)))

(declare-fun isEmpty!3343 (BalanceConc!3050) Bool)

(assert (=> b!452375 (= res!200939 (isEmpty!3343 (_1!2868 (lex!527 thiss!17480 rules!1920 (seqFromList!1063 lt!201056)))))))

(declare-fun b!452376 () Bool)

(declare-fun Unit!7916 () Unit!7909)

(assert (=> b!452376 (= e!276573 Unit!7916)))

(assert (=> b!452377 (= e!276584 (and tp!125806 tp!125805))))

(declare-fun res!200938 () Bool)

(assert (=> b!452378 (=> (not res!200938) (not e!276567))))

(declare-fun forall!1268 (List!4391 Int) Bool)

(assert (=> b!452378 (= res!200938 (forall!1268 tokens!465 lambda!13173))))

(declare-fun b!452379 () Bool)

(assert (=> b!452379 (= e!276598 (= (_1!2870 (get!1600 lt!201064)) (head!1100 tokens!465)))))

(declare-fun b!452380 () Bool)

(assert (=> b!452380 (= e!276570 (not e!276575))))

(declare-fun res!200960 () Bool)

(assert (=> b!452380 (=> res!200960 e!276575)))

(assert (=> b!452380 (= res!200960 (not (= lt!201063 (list!1944 lt!201040))))))

(assert (=> b!452380 (= lt!201040 (printWithSeparatorTokenWhenNeededRec!408 thiss!17480 rules!1920 (seqFromList!1064 (t!71003 tokens!465)) separatorToken!170 0))))

(declare-fun lt!201054 () List!4389)

(assert (=> b!452380 (= lt!201054 lt!201078)))

(assert (=> b!452380 (= lt!201078 (++!1272 lt!201056 lt!201046))))

(assert (=> b!452380 (= lt!201054 (++!1272 (++!1272 lt!201056 lt!201044) lt!201063))))

(declare-fun lt!201073 () Unit!7909)

(declare-fun lemmaConcatAssociativity!584 (List!4389 List!4389 List!4389) Unit!7909)

(assert (=> b!452380 (= lt!201073 (lemmaConcatAssociativity!584 lt!201056 lt!201044 lt!201063))))

(assert (=> b!452380 (= lt!201056 (list!1944 (charsOf!492 (h!9778 tokens!465))))))

(assert (=> b!452380 (= lt!201046 (++!1272 lt!201044 lt!201063))))

(assert (=> b!452380 (= lt!201063 (printWithSeparatorTokenWhenNeededList!416 thiss!17480 rules!1920 (t!71003 tokens!465) separatorToken!170))))

(assert (=> b!452380 (= lt!201044 (list!1944 (charsOf!492 separatorToken!170)))))

(declare-fun b!452381 () Bool)

(assert (=> b!452381 (= e!276596 (= (rule!1540 separatorToken!170) lt!201068))))

(declare-fun tp!125804 () Bool)

(declare-fun b!452382 () Bool)

(assert (=> b!452382 (= e!276591 (and (inv!21 (value!28512 separatorToken!170)) e!276590 tp!125804))))

(declare-fun b!452383 () Bool)

(assert (=> b!452383 (= e!276565 false)))

(declare-fun tp!125815 () Bool)

(declare-fun b!452384 () Bool)

(assert (=> b!452384 (= e!276585 (and (inv!5457 (h!9778 tokens!465)) e!276574 tp!125815))))

(declare-fun b!452385 () Bool)

(declare-fun res!200945 () Bool)

(assert (=> b!452385 (=> res!200945 e!276569)))

(assert (=> b!452385 (= res!200945 (not (= (filter!93 (_1!2871 (lexList!287 thiss!17480 rules!1920 lt!201063)) lambda!13173) (t!71003 tokens!465))))))

(declare-fun b!452386 () Bool)

(assert (=> b!452386 (= e!276601 e!276566)))

(declare-fun res!200936 () Bool)

(assert (=> b!452386 (=> (not res!200936) (not e!276566))))

(assert (=> b!452386 (= res!200936 (matchR!391 (regex!849 lt!201069) lt!201045))))

(assert (=> b!452386 (= lt!201069 (get!1601 lt!201082))))

(declare-fun b!452387 () Bool)

(assert (=> b!452387 (= e!276577 e!276576)))

(declare-fun res!200953 () Bool)

(assert (=> b!452387 (=> res!200953 e!276576)))

(declare-fun lt!201079 () List!4389)

(declare-fun lt!201057 () List!4389)

(assert (=> b!452387 (= res!200953 (or (not (= lt!201079 lt!201057)) (not (= lt!201057 lt!201056)) (not (= lt!201079 lt!201056))))))

(declare-fun printList!409 (LexerInterface!735 List!4391) List!4389)

(assert (=> b!452387 (= lt!201057 (printList!409 thiss!17480 (Cons!4381 (h!9778 tokens!465) Nil!4381)))))

(declare-fun lt!201085 () BalanceConc!3048)

(assert (=> b!452387 (= lt!201079 (list!1944 lt!201085))))

(declare-fun lt!201052 () BalanceConc!3050)

(assert (=> b!452387 (= lt!201085 (printTailRec!421 thiss!17480 lt!201052 0 (BalanceConc!3049 Empty!1520)))))

(assert (=> b!452387 (= lt!201085 (print!460 thiss!17480 lt!201052))))

(assert (=> b!452387 (= lt!201052 (singletonSeq!395 (h!9778 tokens!465)))))

(assert (= (and start!42854 res!200944) b!452359))

(assert (= (and b!452359 res!200964) b!452355))

(assert (= (and b!452355 res!200967) b!452351))

(assert (= (and b!452351 res!200942) b!452357))

(assert (= (and b!452357 res!200951) b!452339))

(assert (= (and b!452339 res!200968) b!452378))

(assert (= (and b!452378 res!200938) b!452343))

(assert (= (and b!452343 res!200956) b!452345))

(assert (= (and b!452345 res!200962) b!452349))

(assert (= (and b!452349 res!200943) b!452354))

(assert (= (and b!452354 res!200935) b!452380))

(assert (= (and b!452380 (not res!200960)) b!452373))

(assert (= (and b!452373 res!200946) b!452370))

(assert (= (and b!452373 (not res!200940)) b!452387))

(assert (= (and b!452387 (not res!200953)) b!452338))

(assert (= (and b!452338 (not res!200966)) b!452375))

(assert (= (and b!452375 (not res!200939)) b!452337))

(assert (= (and b!452337 (not res!200958)) b!452342))

(assert (= (and b!452342 res!200961) b!452369))

(assert (= (and b!452369 res!200948) b!452341))

(assert (= (and b!452342 (not res!200937)) b!452364))

(assert (= (and b!452364 (not res!200955)) b!452374))

(assert (= (and b!452374 res!200954) b!452379))

(assert (= (and b!452364 c!91565) b!452363))

(assert (= (and b!452364 (not c!91565)) b!452368))

(assert (= (and b!452364 res!200965) b!452367))

(assert (= (and b!452367 res!200949) b!452336))

(assert (= (and b!452364 res!200947) b!452372))

(assert (= (and b!452372 res!200959) b!452381))

(assert (= (and b!452364 res!200952) b!452340))

(assert (= (and b!452340 res!200970) b!452358))

(assert (= (and b!452364 res!200957) b!452386))

(assert (= (and b!452386 res!200936) b!452350))

(assert (= (and b!452364 c!91564) b!452360))

(assert (= (and b!452364 (not c!91564)) b!452353))

(assert (= (and b!452360 res!200969) b!452383))

(assert (= (and b!452364 c!91563) b!452362))

(assert (= (and b!452364 (not c!91563)) b!452376))

(assert (= (and b!452364 (not res!200950)) b!452385))

(assert (= (and b!452385 (not res!200945)) b!452348))

(assert (= (and b!452348 (not res!200941)) b!452356))

(assert (= (and b!452356 (not res!200963)) b!452365))

(assert (= b!452371 b!452366))

(assert (= b!452347 b!452371))

(assert (= (and start!42854 ((_ is Cons!4380) rules!1920)) b!452347))

(assert (= b!452361 b!452346))

(assert (= b!452382 b!452361))

(assert (= start!42854 b!452382))

(assert (= b!452344 b!452377))

(assert (= b!452352 b!452344))

(assert (= b!452384 b!452352))

(assert (= (and start!42854 ((_ is Cons!4381) tokens!465)) b!452384))

(declare-fun m!716105 () Bool)

(assert (=> b!452340 m!716105))

(declare-fun m!716107 () Bool)

(assert (=> b!452386 m!716107))

(declare-fun m!716109 () Bool)

(assert (=> b!452386 m!716109))

(declare-fun m!716111 () Bool)

(assert (=> b!452385 m!716111))

(declare-fun m!716113 () Bool)

(assert (=> b!452385 m!716113))

(declare-fun m!716115 () Bool)

(assert (=> b!452337 m!716115))

(assert (=> b!452337 m!716115))

(declare-fun m!716117 () Bool)

(assert (=> b!452337 m!716117))

(assert (=> b!452337 m!716117))

(declare-fun m!716119 () Bool)

(assert (=> b!452337 m!716119))

(declare-fun m!716121 () Bool)

(assert (=> b!452337 m!716121))

(declare-fun m!716123 () Bool)

(assert (=> b!452351 m!716123))

(declare-fun m!716125 () Bool)

(assert (=> b!452351 m!716125))

(declare-fun m!716127 () Bool)

(assert (=> b!452384 m!716127))

(declare-fun m!716129 () Bool)

(assert (=> b!452370 m!716129))

(declare-fun m!716131 () Bool)

(assert (=> b!452343 m!716131))

(declare-fun m!716133 () Bool)

(assert (=> b!452382 m!716133))

(declare-fun m!716135 () Bool)

(assert (=> b!452338 m!716135))

(declare-fun m!716137 () Bool)

(assert (=> b!452365 m!716137))

(declare-fun m!716139 () Bool)

(assert (=> start!42854 m!716139))

(assert (=> b!452356 m!716137))

(declare-fun m!716141 () Bool)

(assert (=> b!452356 m!716141))

(declare-fun m!716143 () Bool)

(assert (=> b!452356 m!716143))

(declare-fun m!716145 () Bool)

(assert (=> b!452364 m!716145))

(declare-fun m!716147 () Bool)

(assert (=> b!452364 m!716147))

(declare-fun m!716149 () Bool)

(assert (=> b!452364 m!716149))

(declare-fun m!716151 () Bool)

(assert (=> b!452364 m!716151))

(declare-fun m!716153 () Bool)

(assert (=> b!452364 m!716153))

(declare-fun m!716155 () Bool)

(assert (=> b!452364 m!716155))

(declare-fun m!716157 () Bool)

(assert (=> b!452364 m!716157))

(declare-fun m!716159 () Bool)

(assert (=> b!452364 m!716159))

(declare-fun m!716161 () Bool)

(assert (=> b!452364 m!716161))

(declare-fun m!716163 () Bool)

(assert (=> b!452364 m!716163))

(declare-fun m!716165 () Bool)

(assert (=> b!452364 m!716165))

(declare-fun m!716167 () Bool)

(assert (=> b!452364 m!716167))

(declare-fun m!716169 () Bool)

(assert (=> b!452364 m!716169))

(declare-fun m!716171 () Bool)

(assert (=> b!452364 m!716171))

(declare-fun m!716173 () Bool)

(assert (=> b!452364 m!716173))

(assert (=> b!452364 m!716147))

(declare-fun m!716175 () Bool)

(assert (=> b!452364 m!716175))

(declare-fun m!716177 () Bool)

(assert (=> b!452364 m!716177))

(declare-fun m!716179 () Bool)

(assert (=> b!452364 m!716179))

(declare-fun m!716181 () Bool)

(assert (=> b!452364 m!716181))

(declare-fun m!716183 () Bool)

(assert (=> b!452364 m!716183))

(declare-fun m!716185 () Bool)

(assert (=> b!452364 m!716185))

(declare-fun m!716187 () Bool)

(assert (=> b!452364 m!716187))

(declare-fun m!716189 () Bool)

(assert (=> b!452364 m!716189))

(declare-fun m!716191 () Bool)

(assert (=> b!452364 m!716191))

(declare-fun m!716193 () Bool)

(assert (=> b!452364 m!716193))

(declare-fun m!716195 () Bool)

(assert (=> b!452364 m!716195))

(declare-fun m!716197 () Bool)

(assert (=> b!452364 m!716197))

(declare-fun m!716199 () Bool)

(assert (=> b!452364 m!716199))

(declare-fun m!716201 () Bool)

(assert (=> b!452364 m!716201))

(declare-fun m!716203 () Bool)

(assert (=> b!452364 m!716203))

(declare-fun m!716205 () Bool)

(assert (=> b!452364 m!716205))

(declare-fun m!716207 () Bool)

(assert (=> b!452364 m!716207))

(declare-fun m!716209 () Bool)

(assert (=> b!452364 m!716209))

(declare-fun m!716211 () Bool)

(assert (=> b!452364 m!716211))

(declare-fun m!716213 () Bool)

(assert (=> b!452364 m!716213))

(declare-fun m!716215 () Bool)

(assert (=> b!452364 m!716215))

(assert (=> b!452364 m!716197))

(declare-fun m!716217 () Bool)

(assert (=> b!452364 m!716217))

(declare-fun m!716219 () Bool)

(assert (=> b!452364 m!716219))

(assert (=> b!452364 m!716145))

(declare-fun m!716221 () Bool)

(assert (=> b!452364 m!716221))

(declare-fun m!716223 () Bool)

(assert (=> b!452364 m!716223))

(assert (=> b!452364 m!716215))

(declare-fun m!716225 () Bool)

(assert (=> b!452364 m!716225))

(assert (=> b!452364 m!716169))

(declare-fun m!716227 () Bool)

(assert (=> b!452364 m!716227))

(declare-fun m!716229 () Bool)

(assert (=> b!452359 m!716229))

(declare-fun m!716231 () Bool)

(assert (=> b!452387 m!716231))

(declare-fun m!716233 () Bool)

(assert (=> b!452387 m!716233))

(declare-fun m!716235 () Bool)

(assert (=> b!452387 m!716235))

(declare-fun m!716237 () Bool)

(assert (=> b!452387 m!716237))

(declare-fun m!716239 () Bool)

(assert (=> b!452387 m!716239))

(declare-fun m!716241 () Bool)

(assert (=> b!452354 m!716241))

(assert (=> b!452354 m!716241))

(declare-fun m!716243 () Bool)

(assert (=> b!452354 m!716243))

(declare-fun m!716245 () Bool)

(assert (=> b!452367 m!716245))

(declare-fun m!716247 () Bool)

(assert (=> b!452380 m!716247))

(declare-fun m!716249 () Bool)

(assert (=> b!452380 m!716249))

(declare-fun m!716251 () Bool)

(assert (=> b!452380 m!716251))

(declare-fun m!716253 () Bool)

(assert (=> b!452380 m!716253))

(declare-fun m!716255 () Bool)

(assert (=> b!452380 m!716255))

(declare-fun m!716257 () Bool)

(assert (=> b!452380 m!716257))

(assert (=> b!452380 m!716253))

(declare-fun m!716259 () Bool)

(assert (=> b!452380 m!716259))

(declare-fun m!716261 () Bool)

(assert (=> b!452380 m!716261))

(declare-fun m!716263 () Bool)

(assert (=> b!452380 m!716263))

(declare-fun m!716265 () Bool)

(assert (=> b!452380 m!716265))

(assert (=> b!452380 m!716259))

(declare-fun m!716267 () Bool)

(assert (=> b!452380 m!716267))

(assert (=> b!452380 m!716247))

(declare-fun m!716269 () Bool)

(assert (=> b!452380 m!716269))

(assert (=> b!452380 m!716263))

(declare-fun m!716271 () Bool)

(assert (=> b!452380 m!716271))

(declare-fun m!716273 () Bool)

(assert (=> b!452372 m!716273))

(declare-fun m!716275 () Bool)

(assert (=> b!452372 m!716275))

(declare-fun m!716277 () Bool)

(assert (=> b!452378 m!716277))

(declare-fun m!716279 () Bool)

(assert (=> b!452379 m!716279))

(declare-fun m!716281 () Bool)

(assert (=> b!452379 m!716281))

(declare-fun m!716283 () Bool)

(assert (=> b!452369 m!716283))

(declare-fun m!716285 () Bool)

(assert (=> b!452374 m!716285))

(assert (=> b!452374 m!716169))

(declare-fun m!716287 () Bool)

(assert (=> b!452360 m!716287))

(declare-fun m!716289 () Bool)

(assert (=> b!452360 m!716289))

(declare-fun m!716291 () Bool)

(assert (=> b!452342 m!716291))

(declare-fun m!716293 () Bool)

(assert (=> b!452342 m!716293))

(declare-fun m!716295 () Bool)

(assert (=> b!452342 m!716295))

(declare-fun m!716297 () Bool)

(assert (=> b!452357 m!716297))

(declare-fun m!716299 () Bool)

(assert (=> b!452371 m!716299))

(declare-fun m!716301 () Bool)

(assert (=> b!452371 m!716301))

(declare-fun m!716303 () Bool)

(assert (=> b!452341 m!716303))

(declare-fun m!716305 () Bool)

(assert (=> b!452355 m!716305))

(declare-fun m!716307 () Bool)

(assert (=> b!452344 m!716307))

(declare-fun m!716309 () Bool)

(assert (=> b!452344 m!716309))

(declare-fun m!716311 () Bool)

(assert (=> b!452361 m!716311))

(declare-fun m!716313 () Bool)

(assert (=> b!452361 m!716313))

(declare-fun m!716315 () Bool)

(assert (=> b!452352 m!716315))

(declare-fun m!716317 () Bool)

(assert (=> b!452362 m!716317))

(declare-fun m!716319 () Bool)

(assert (=> b!452375 m!716319))

(assert (=> b!452375 m!716319))

(declare-fun m!716321 () Bool)

(assert (=> b!452375 m!716321))

(declare-fun m!716323 () Bool)

(assert (=> b!452375 m!716323))

(declare-fun m!716325 () Bool)

(assert (=> b!452348 m!716325))

(declare-fun m!716327 () Bool)

(assert (=> b!452348 m!716327))

(declare-fun m!716329 () Bool)

(assert (=> b!452358 m!716329))

(declare-fun m!716331 () Bool)

(assert (=> b!452336 m!716331))

(declare-fun m!716333 () Bool)

(assert (=> b!452349 m!716333))

(declare-fun m!716335 () Bool)

(assert (=> b!452349 m!716335))

(declare-fun m!716337 () Bool)

(assert (=> b!452349 m!716337))

(check-sat (not b!452359) (not b!452351) b_and!48607 (not b!452341) (not b!452367) (not b!452374) (not b!452344) (not b!452372) (not b!452379) (not b_next!12543) (not b!452354) (not b!452356) (not b_next!12539) (not b!452352) b_and!48609 (not b!452371) (not b!452387) (not b!452384) (not b!452364) (not start!42854) (not b!452358) (not b!452349) (not b_next!12547) (not b!452340) b_and!48605 (not b!452343) (not b!452338) (not b!452375) (not b_next!12545) (not b!452369) b_and!48601 (not b!452382) (not b!452380) (not b!452347) (not b!452360) (not b!452365) (not b!452370) (not b!452348) (not b!452342) (not b!452362) (not b!452386) (not b!452357) (not b!452396) (not b!452385) (not b!452336) (not b!452361) (not b!452337) (not b!452355) b_and!48603 (not b_next!12541) (not b!452378) (not b_next!12537) b_and!48611)
(check-sat (not b_next!12539) b_and!48609 (not b_next!12545) b_and!48601 b_and!48607 (not b_next!12543) (not b_next!12547) b_and!48605 b_and!48603 (not b_next!12541) (not b_next!12537) b_and!48611)
