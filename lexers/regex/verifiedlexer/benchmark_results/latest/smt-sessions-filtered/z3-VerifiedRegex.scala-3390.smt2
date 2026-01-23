; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192012 () Bool)

(assert start!192012)

(declare-fun b!1914351 () Bool)

(declare-fun b_free!54153 () Bool)

(declare-fun b_next!54857 () Bool)

(assert (=> b!1914351 (= b_free!54153 (not b_next!54857))))

(declare-fun tp!546318 () Bool)

(declare-fun b_and!149263 () Bool)

(assert (=> b!1914351 (= tp!546318 b_and!149263)))

(declare-fun b_free!54155 () Bool)

(declare-fun b_next!54859 () Bool)

(assert (=> b!1914351 (= b_free!54155 (not b_next!54859))))

(declare-fun tp!546316 () Bool)

(declare-fun b_and!149265 () Bool)

(assert (=> b!1914351 (= tp!546316 b_and!149265)))

(declare-fun b!1914338 () Bool)

(declare-fun b_free!54157 () Bool)

(declare-fun b_next!54861 () Bool)

(assert (=> b!1914338 (= b_free!54157 (not b_next!54861))))

(declare-fun tp!546319 () Bool)

(declare-fun b_and!149267 () Bool)

(assert (=> b!1914338 (= tp!546319 b_and!149267)))

(declare-fun b_free!54159 () Bool)

(declare-fun b_next!54863 () Bool)

(assert (=> b!1914338 (= b_free!54159 (not b_next!54863))))

(declare-fun tp!546325 () Bool)

(declare-fun b_and!149269 () Bool)

(assert (=> b!1914338 (= tp!546325 b_and!149269)))

(declare-fun b!1914372 () Bool)

(declare-fun b_free!54161 () Bool)

(declare-fun b_next!54865 () Bool)

(assert (=> b!1914372 (= b_free!54161 (not b_next!54865))))

(declare-fun tp!546320 () Bool)

(declare-fun b_and!149271 () Bool)

(assert (=> b!1914372 (= tp!546320 b_and!149271)))

(declare-fun b_free!54163 () Bool)

(declare-fun b_next!54867 () Bool)

(assert (=> b!1914372 (= b_free!54163 (not b_next!54867))))

(declare-fun tp!546326 () Bool)

(declare-fun b_and!149273 () Bool)

(assert (=> b!1914372 (= tp!546326 b_and!149273)))

(declare-fun e!1222961 () Bool)

(assert (=> b!1914338 (= e!1222961 (and tp!546319 tp!546325))))

(declare-fun b!1914339 () Bool)

(declare-fun res!855268 () Bool)

(declare-fun e!1222971 () Bool)

(assert (=> b!1914339 (=> res!855268 e!1222971)))

(declare-datatypes ((LexerInterface!3469 0))(
  ( (LexerInterfaceExt!3466 (__x!13482 Int)) (Lexer!3467) )
))
(declare-fun thiss!23328 () LexerInterface!3469)

(declare-datatypes ((C!10708 0))(
  ( (C!10709 (val!6306 Int)) )
))
(declare-datatypes ((List!21690 0))(
  ( (Nil!21608) (Cons!21608 (h!27009 C!10708) (t!178371 List!21690)) )
))
(declare-fun lt!733094 () List!21690)

(declare-datatypes ((List!21691 0))(
  ( (Nil!21609) (Cons!21609 (h!27010 (_ BitVec 16)) (t!178372 List!21691)) )
))
(declare-datatypes ((TokenValue!3992 0))(
  ( (FloatLiteralValue!7984 (text!28389 List!21691)) (TokenValueExt!3991 (__x!13483 Int)) (Broken!19960 (value!121461 List!21691)) (Object!4073) (End!3992) (Def!3992) (Underscore!3992) (Match!3992) (Else!3992) (Error!3992) (Case!3992) (If!3992) (Extends!3992) (Abstract!3992) (Class!3992) (Val!3992) (DelimiterValue!7984 (del!4052 List!21691)) (KeywordValue!3998 (value!121462 List!21691)) (CommentValue!7984 (value!121463 List!21691)) (WhitespaceValue!7984 (value!121464 List!21691)) (IndentationValue!3992 (value!121465 List!21691)) (String!25077) (Int32!3992) (Broken!19961 (value!121466 List!21691)) (Boolean!3993) (Unit!35993) (OperatorValue!3995 (op!4052 List!21691)) (IdentifierValue!7984 (value!121467 List!21691)) (IdentifierValue!7985 (value!121468 List!21691)) (WhitespaceValue!7985 (value!121469 List!21691)) (True!7984) (False!7984) (Broken!19962 (value!121470 List!21691)) (Broken!19963 (value!121471 List!21691)) (True!7985) (RightBrace!3992) (RightBracket!3992) (Colon!3992) (Null!3992) (Comma!3992) (LeftBracket!3992) (False!7985) (LeftBrace!3992) (ImaginaryLiteralValue!3992 (text!28390 List!21691)) (StringLiteralValue!11976 (value!121472 List!21691)) (EOFValue!3992 (value!121473 List!21691)) (IdentValue!3992 (value!121474 List!21691)) (DelimiterValue!7985 (value!121475 List!21691)) (DedentValue!3992 (value!121476 List!21691)) (NewLineValue!3992 (value!121477 List!21691)) (IntegerValue!11976 (value!121478 (_ BitVec 32)) (text!28391 List!21691)) (IntegerValue!11977 (value!121479 Int) (text!28392 List!21691)) (Times!3992) (Or!3992) (Equal!3992) (Minus!3992) (Broken!19964 (value!121480 List!21691)) (And!3992) (Div!3992) (LessEqual!3992) (Mod!3992) (Concat!9273) (Not!3992) (Plus!3992) (SpaceValue!3992 (value!121481 List!21691)) (IntegerValue!11978 (value!121482 Int) (text!28393 List!21691)) (StringLiteralValue!11977 (text!28394 List!21691)) (FloatLiteralValue!7985 (text!28395 List!21691)) (BytesLiteralValue!3992 (value!121483 List!21691)) (CommentValue!7985 (value!121484 List!21691)) (StringLiteralValue!11978 (value!121485 List!21691)) (ErrorTokenValue!3992 (msg!4053 List!21691)) )
))
(declare-datatypes ((IArray!14413 0))(
  ( (IArray!14414 (innerList!7264 List!21690)) )
))
(declare-datatypes ((Conc!7204 0))(
  ( (Node!7204 (left!17262 Conc!7204) (right!17592 Conc!7204) (csize!14638 Int) (cheight!7415 Int)) (Leaf!10595 (xs!10098 IArray!14413) (csize!14639 Int)) (Empty!7204) )
))
(declare-datatypes ((BalanceConc!14224 0))(
  ( (BalanceConc!14225 (c!311750 Conc!7204)) )
))
(declare-datatypes ((TokenValueInjection!7568 0))(
  ( (TokenValueInjection!7569 (toValue!5485 Int) (toChars!5344 Int)) )
))
(declare-datatypes ((String!25078 0))(
  ( (String!25079 (value!121486 String)) )
))
(declare-datatypes ((Regex!5281 0))(
  ( (ElementMatch!5281 (c!311751 C!10708)) (Concat!9274 (regOne!11074 Regex!5281) (regTwo!11074 Regex!5281)) (EmptyExpr!5281) (Star!5281 (reg!5610 Regex!5281)) (EmptyLang!5281) (Union!5281 (regOne!11075 Regex!5281) (regTwo!11075 Regex!5281)) )
))
(declare-datatypes ((Rule!7512 0))(
  ( (Rule!7513 (regex!3856 Regex!5281) (tag!4294 String!25078) (isSeparator!3856 Bool) (transformation!3856 TokenValueInjection!7568)) )
))
(declare-datatypes ((List!21692 0))(
  ( (Nil!21610) (Cons!21610 (h!27011 Rule!7512) (t!178373 List!21692)) )
))
(declare-fun rules!3198 () List!21692)

(declare-datatypes ((Token!7264 0))(
  ( (Token!7265 (value!121487 TokenValue!3992) (rule!6057 Rule!7512) (size!16996 Int) (originalCharacters!4663 List!21690)) )
))
(declare-datatypes ((List!21693 0))(
  ( (Nil!21611) (Cons!21611 (h!27012 Token!7264) (t!178374 List!21693)) )
))
(declare-datatypes ((IArray!14415 0))(
  ( (IArray!14416 (innerList!7265 List!21693)) )
))
(declare-datatypes ((Conc!7205 0))(
  ( (Node!7205 (left!17263 Conc!7205) (right!17593 Conc!7205) (csize!14640 Int) (cheight!7416 Int)) (Leaf!10596 (xs!10099 IArray!14415) (csize!14641 Int)) (Empty!7205) )
))
(declare-datatypes ((BalanceConc!14226 0))(
  ( (BalanceConc!14227 (c!311752 Conc!7205)) )
))
(declare-fun isEmpty!13293 (BalanceConc!14226) Bool)

(declare-datatypes ((tuple2!20338 0))(
  ( (tuple2!20339 (_1!11638 BalanceConc!14226) (_2!11638 BalanceConc!14224)) )
))
(declare-fun lex!1544 (LexerInterface!3469 List!21692 BalanceConc!14224) tuple2!20338)

(declare-fun seqFromList!2728 (List!21690) BalanceConc!14224)

(assert (=> b!1914339 (= res!855268 (isEmpty!13293 (_1!11638 (lex!1544 thiss!23328 rules!3198 (seqFromList!2728 lt!733094)))))))

(declare-fun b!1914340 () Bool)

(declare-fun e!1222960 () Bool)

(declare-fun e!1222952 () Bool)

(assert (=> b!1914340 (= e!1222960 e!1222952)))

(declare-fun res!855277 () Bool)

(assert (=> b!1914340 (=> res!855277 e!1222952)))

(declare-fun tokens!598 () List!21693)

(declare-fun isEmpty!13294 (List!21693) Bool)

(assert (=> b!1914340 (= res!855277 (isEmpty!13294 tokens!598))))

(declare-fun lt!733080 () List!21690)

(declare-fun lt!733100 () List!21690)

(declare-datatypes ((tuple2!20340 0))(
  ( (tuple2!20341 (_1!11639 Token!7264) (_2!11639 List!21690)) )
))
(declare-datatypes ((Option!4417 0))(
  ( (None!4416) (Some!4416 (v!26481 tuple2!20340)) )
))
(declare-fun maxPrefix!1915 (LexerInterface!3469 List!21692 List!21690) Option!4417)

(assert (=> b!1914340 (= (maxPrefix!1915 thiss!23328 rules!3198 lt!733080) (Some!4416 (tuple2!20341 (h!27012 tokens!598) lt!733100)))))

(declare-fun separatorToken!354 () Token!7264)

(declare-datatypes ((Unit!35994 0))(
  ( (Unit!35995) )
))
(declare-fun lt!733098 () Unit!35994)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!92 (LexerInterface!3469 List!21692 Token!7264 Rule!7512 List!21690 Rule!7512) Unit!35994)

(assert (=> b!1914340 (= lt!733098 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!92 thiss!23328 rules!3198 (h!27012 tokens!598) (rule!6057 (h!27012 tokens!598)) lt!733100 (rule!6057 separatorToken!354)))))

(declare-fun b!1914341 () Bool)

(declare-fun e!1222965 () Bool)

(declare-fun lt!733083 () Rule!7512)

(assert (=> b!1914341 (= e!1222965 (= (rule!6057 (h!27012 tokens!598)) lt!733083))))

(declare-fun b!1914342 () Bool)

(declare-fun res!855267 () Bool)

(declare-fun e!1222968 () Bool)

(assert (=> b!1914342 (=> res!855267 e!1222968)))

(declare-fun isEmpty!13295 (List!21690) Bool)

(assert (=> b!1914342 (= res!855267 (isEmpty!13295 lt!733100))))

(declare-fun b!1914343 () Bool)

(declare-fun res!855273 () Bool)

(declare-fun e!1222967 () Bool)

(assert (=> b!1914343 (=> (not res!855273) (not e!1222967))))

(declare-fun rulesProduceEachTokenIndividuallyList!1200 (LexerInterface!3469 List!21692 List!21693) Bool)

(assert (=> b!1914343 (= res!855273 (rulesProduceEachTokenIndividuallyList!1200 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1914345 () Bool)

(declare-fun e!1222951 () Bool)

(declare-fun e!1222948 () Bool)

(assert (=> b!1914345 (= e!1222951 e!1222948)))

(declare-fun res!855274 () Bool)

(assert (=> b!1914345 (=> (not res!855274) (not e!1222948))))

(declare-fun lt!733096 () Rule!7512)

(declare-fun lt!733088 () List!21690)

(declare-fun matchR!2567 (Regex!5281 List!21690) Bool)

(assert (=> b!1914345 (= res!855274 (matchR!2567 (regex!3856 lt!733096) lt!733088))))

(declare-datatypes ((Option!4418 0))(
  ( (None!4417) (Some!4417 (v!26482 Rule!7512)) )
))
(declare-fun lt!733104 () Option!4418)

(declare-fun get!6752 (Option!4418) Rule!7512)

(assert (=> b!1914345 (= lt!733096 (get!6752 lt!733104))))

(declare-fun e!1222954 () Bool)

(declare-fun b!1914346 () Bool)

(declare-fun e!1222946 () Bool)

(declare-fun tp!546321 () Bool)

(declare-fun inv!21 (TokenValue!3992) Bool)

(assert (=> b!1914346 (= e!1222954 (and (inv!21 (value!121487 separatorToken!354)) e!1222946 tp!546321))))

(declare-fun b!1914347 () Bool)

(assert (=> b!1914347 (= e!1222952 true)))

(declare-fun lt!733078 () Bool)

(declare-fun rulesValidInductive!1310 (LexerInterface!3469 List!21692) Bool)

(assert (=> b!1914347 (= lt!733078 (rulesValidInductive!1310 thiss!23328 rules!3198))))

(declare-fun lt!733102 () List!21690)

(declare-fun printWithSeparatorTokenWhenNeededList!512 (LexerInterface!3469 List!21692 List!21693 Token!7264) List!21690)

(assert (=> b!1914347 (= lt!733102 (printWithSeparatorTokenWhenNeededList!512 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1914348 () Bool)

(assert (=> b!1914348 (= e!1222968 e!1222960)))

(declare-fun res!855290 () Bool)

(assert (=> b!1914348 (=> res!855290 e!1222960)))

(declare-fun lt!733095 () List!21690)

(declare-fun lt!733110 () C!10708)

(declare-fun contains!3916 (List!21690 C!10708) Bool)

(assert (=> b!1914348 (= res!855290 (contains!3916 lt!733095 lt!733110))))

(declare-fun head!4464 (List!21690) C!10708)

(assert (=> b!1914348 (= lt!733110 (head!4464 lt!733100))))

(declare-fun b!1914349 () Bool)

(declare-fun res!855281 () Bool)

(assert (=> b!1914349 (=> (not res!855281) (not e!1222967))))

(declare-fun isEmpty!13296 (List!21692) Bool)

(assert (=> b!1914349 (= res!855281 (not (isEmpty!13296 rules!3198)))))

(declare-fun b!1914350 () Bool)

(declare-fun res!855266 () Bool)

(assert (=> b!1914350 (=> (not res!855266) (not e!1222967))))

(get-info :version)

(assert (=> b!1914350 (= res!855266 ((_ is Cons!21611) tokens!598))))

(declare-fun e!1222958 () Bool)

(assert (=> b!1914351 (= e!1222958 (and tp!546318 tp!546316))))

(declare-fun b!1914352 () Bool)

(declare-fun res!855289 () Bool)

(assert (=> b!1914352 (=> (not res!855289) (not e!1222967))))

(assert (=> b!1914352 (= res!855289 (isSeparator!3856 (rule!6057 separatorToken!354)))))

(declare-fun b!1914353 () Bool)

(declare-fun e!1222972 () Bool)

(assert (=> b!1914353 (= e!1222972 e!1222971)))

(declare-fun res!855271 () Bool)

(assert (=> b!1914353 (=> res!855271 e!1222971)))

(declare-fun lt!733097 () List!21690)

(declare-fun lt!733076 () List!21690)

(assert (=> b!1914353 (= res!855271 (or (not (= lt!733076 lt!733097)) (not (= lt!733097 lt!733094)) (not (= lt!733076 lt!733094))))))

(declare-fun printList!1052 (LexerInterface!3469 List!21693) List!21690)

(assert (=> b!1914353 (= lt!733097 (printList!1052 thiss!23328 (Cons!21611 (h!27012 tokens!598) Nil!21611)))))

(declare-fun lt!733089 () BalanceConc!14224)

(declare-fun list!8784 (BalanceConc!14224) List!21690)

(assert (=> b!1914353 (= lt!733076 (list!8784 lt!733089))))

(declare-fun lt!733107 () BalanceConc!14226)

(declare-fun printTailRec!986 (LexerInterface!3469 BalanceConc!14226 Int BalanceConc!14224) BalanceConc!14224)

(assert (=> b!1914353 (= lt!733089 (printTailRec!986 thiss!23328 lt!733107 0 (BalanceConc!14225 Empty!7204)))))

(declare-fun print!1479 (LexerInterface!3469 BalanceConc!14226) BalanceConc!14224)

(assert (=> b!1914353 (= lt!733089 (print!1479 thiss!23328 lt!733107))))

(declare-fun singletonSeq!1879 (Token!7264) BalanceConc!14226)

(assert (=> b!1914353 (= lt!733107 (singletonSeq!1879 (h!27012 tokens!598)))))

(declare-fun lt!733093 () C!10708)

(assert (=> b!1914353 (not (contains!3916 lt!733095 lt!733093))))

(declare-fun usedCharacters!364 (Regex!5281) List!21690)

(assert (=> b!1914353 (= lt!733095 (usedCharacters!364 (regex!3856 (rule!6057 (h!27012 tokens!598)))))))

(declare-fun lt!733091 () Unit!35994)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!60 (LexerInterface!3469 List!21692 List!21692 Rule!7512 Rule!7512 C!10708) Unit!35994)

(assert (=> b!1914353 (= lt!733091 (lemmaNonSepRuleNotContainsCharContainedInASepRule!60 thiss!23328 rules!3198 rules!3198 (rule!6057 (h!27012 tokens!598)) (rule!6057 separatorToken!354) lt!733093))))

(declare-fun lt!733085 () Unit!35994)

(declare-fun e!1222969 () Unit!35994)

(assert (=> b!1914353 (= lt!733085 e!1222969)))

(declare-fun c!311749 () Bool)

(declare-fun lt!733087 () List!21690)

(assert (=> b!1914353 (= c!311749 (not (contains!3916 lt!733087 lt!733093)))))

(assert (=> b!1914353 (= lt!733093 (head!4464 lt!733088))))

(assert (=> b!1914353 (= lt!733087 (usedCharacters!364 (regex!3856 (rule!6057 separatorToken!354))))))

(declare-fun lt!733077 () List!21690)

(assert (=> b!1914353 (= lt!733077 lt!733080)))

(declare-fun ++!5809 (List!21690 List!21690) List!21690)

(assert (=> b!1914353 (= lt!733080 (++!5809 lt!733094 lt!733100))))

(declare-fun lt!733086 () List!21690)

(declare-fun lt!733099 () List!21690)

(assert (=> b!1914353 (= lt!733077 (++!5809 lt!733086 lt!733099))))

(assert (=> b!1914353 (= lt!733100 (++!5809 lt!733088 lt!733099))))

(assert (=> b!1914353 (= lt!733086 (++!5809 lt!733094 lt!733088))))

(declare-fun lt!733106 () Unit!35994)

(declare-fun lemmaConcatAssociativity!1171 (List!21690 List!21690 List!21690) Unit!35994)

(assert (=> b!1914353 (= lt!733106 (lemmaConcatAssociativity!1171 lt!733094 lt!733088 lt!733099))))

(declare-fun b!1914354 () Bool)

(assert (=> b!1914354 (= e!1222967 (not e!1222972))))

(declare-fun res!855287 () Bool)

(assert (=> b!1914354 (=> res!855287 e!1222972)))

(declare-fun lt!733092 () Bool)

(declare-fun lt!733075 () Option!4417)

(assert (=> b!1914354 (= res!855287 (or (and (not lt!733092) (= (_1!11639 (v!26481 lt!733075)) (h!27012 tokens!598))) lt!733092 (= (_1!11639 (v!26481 lt!733075)) (h!27012 tokens!598))))))

(assert (=> b!1914354 (= lt!733092 (not ((_ is Some!4416) lt!733075)))))

(assert (=> b!1914354 (= lt!733075 (maxPrefix!1915 thiss!23328 rules!3198 (++!5809 lt!733094 lt!733099)))))

(assert (=> b!1914354 (= lt!733099 (printWithSeparatorTokenWhenNeededList!512 thiss!23328 rules!3198 (t!178374 tokens!598) separatorToken!354))))

(declare-fun e!1222956 () Bool)

(assert (=> b!1914354 e!1222956))

(declare-fun res!855282 () Bool)

(assert (=> b!1914354 (=> (not res!855282) (not e!1222956))))

(declare-fun lt!733079 () Option!4418)

(declare-fun isDefined!3715 (Option!4418) Bool)

(assert (=> b!1914354 (= res!855282 (isDefined!3715 lt!733079))))

(declare-fun getRuleFromTag!699 (LexerInterface!3469 List!21692 String!25078) Option!4418)

(assert (=> b!1914354 (= lt!733079 (getRuleFromTag!699 thiss!23328 rules!3198 (tag!4294 (rule!6057 (h!27012 tokens!598)))))))

(declare-fun lt!733084 () Unit!35994)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!699 (LexerInterface!3469 List!21692 List!21690 Token!7264) Unit!35994)

(assert (=> b!1914354 (= lt!733084 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!699 thiss!23328 rules!3198 lt!733094 (h!27012 tokens!598)))))

(declare-fun lt!733109 () tuple2!20340)

(assert (=> b!1914354 (= (_1!11639 lt!733109) (h!27012 tokens!598))))

(declare-fun lt!733082 () Option!4417)

(declare-fun get!6753 (Option!4417) tuple2!20340)

(assert (=> b!1914354 (= lt!733109 (get!6753 lt!733082))))

(declare-fun isDefined!3716 (Option!4417) Bool)

(assert (=> b!1914354 (isDefined!3716 lt!733082)))

(assert (=> b!1914354 (= lt!733082 (maxPrefix!1915 thiss!23328 rules!3198 lt!733094))))

(declare-fun lt!733101 () BalanceConc!14224)

(assert (=> b!1914354 (= lt!733094 (list!8784 lt!733101))))

(assert (=> b!1914354 e!1222951))

(declare-fun res!855276 () Bool)

(assert (=> b!1914354 (=> (not res!855276) (not e!1222951))))

(assert (=> b!1914354 (= res!855276 (isDefined!3715 lt!733104))))

(assert (=> b!1914354 (= lt!733104 (getRuleFromTag!699 thiss!23328 rules!3198 (tag!4294 (rule!6057 separatorToken!354))))))

(declare-fun lt!733105 () Unit!35994)

(assert (=> b!1914354 (= lt!733105 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!699 thiss!23328 rules!3198 lt!733088 separatorToken!354))))

(declare-fun charsOf!2412 (Token!7264) BalanceConc!14224)

(assert (=> b!1914354 (= lt!733088 (list!8784 (charsOf!2412 separatorToken!354)))))

(declare-fun lt!733103 () Unit!35994)

(declare-fun lemmaEqSameImage!564 (TokenValueInjection!7568 BalanceConc!14224 BalanceConc!14224) Unit!35994)

(assert (=> b!1914354 (= lt!733103 (lemmaEqSameImage!564 (transformation!3856 (rule!6057 (h!27012 tokens!598))) lt!733101 (seqFromList!2728 (originalCharacters!4663 (h!27012 tokens!598)))))))

(declare-fun lt!733090 () Unit!35994)

(declare-fun lemmaSemiInverse!835 (TokenValueInjection!7568 BalanceConc!14224) Unit!35994)

(assert (=> b!1914354 (= lt!733090 (lemmaSemiInverse!835 (transformation!3856 (rule!6057 (h!27012 tokens!598))) lt!733101))))

(assert (=> b!1914354 (= lt!733101 (charsOf!2412 (h!27012 tokens!598)))))

(declare-fun tp!546327 () Bool)

(declare-fun b!1914355 () Bool)

(declare-fun inv!28707 (String!25078) Bool)

(declare-fun inv!28710 (TokenValueInjection!7568) Bool)

(assert (=> b!1914355 (= e!1222946 (and tp!546327 (inv!28707 (tag!4294 (rule!6057 separatorToken!354))) (inv!28710 (transformation!3856 (rule!6057 separatorToken!354))) e!1222961))))

(declare-fun e!1222957 () Bool)

(declare-fun b!1914356 () Bool)

(declare-fun tp!546317 () Bool)

(assert (=> b!1914356 (= e!1222957 (and tp!546317 (inv!28707 (tag!4294 (rule!6057 (h!27012 tokens!598)))) (inv!28710 (transformation!3856 (rule!6057 (h!27012 tokens!598)))) e!1222958))))

(declare-fun b!1914357 () Bool)

(declare-fun res!855270 () Bool)

(assert (=> b!1914357 (=> res!855270 e!1222971)))

(assert (=> b!1914357 (= res!855270 (isSeparator!3856 (rule!6057 (h!27012 tokens!598))))))

(declare-fun b!1914358 () Bool)

(declare-fun e!1222964 () Bool)

(declare-fun e!1222953 () Bool)

(declare-fun tp!546323 () Bool)

(assert (=> b!1914358 (= e!1222964 (and e!1222953 tp!546323))))

(declare-fun b!1914359 () Bool)

(declare-fun res!855283 () Bool)

(assert (=> b!1914359 (=> res!855283 e!1222971)))

(declare-fun contains!3917 (List!21692 Rule!7512) Bool)

(assert (=> b!1914359 (= res!855283 (not (contains!3917 rules!3198 (rule!6057 separatorToken!354))))))

(declare-fun b!1914360 () Bool)

(assert (=> b!1914360 (= e!1222956 e!1222965)))

(declare-fun res!855278 () Bool)

(assert (=> b!1914360 (=> (not res!855278) (not e!1222965))))

(assert (=> b!1914360 (= res!855278 (matchR!2567 (regex!3856 lt!733083) lt!733094))))

(assert (=> b!1914360 (= lt!733083 (get!6752 lt!733079))))

(declare-fun b!1914361 () Bool)

(declare-fun Unit!35996 () Unit!35994)

(assert (=> b!1914361 (= e!1222969 Unit!35996)))

(declare-fun lt!733108 () Unit!35994)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!264 (Regex!5281 List!21690 C!10708) Unit!35994)

(assert (=> b!1914361 (= lt!733108 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!264 (regex!3856 (rule!6057 separatorToken!354)) lt!733088 lt!733093))))

(declare-fun res!855275 () Bool)

(assert (=> b!1914361 (= res!855275 (not (matchR!2567 (regex!3856 (rule!6057 separatorToken!354)) lt!733088)))))

(declare-fun e!1222959 () Bool)

(assert (=> b!1914361 (=> (not res!855275) (not e!1222959))))

(assert (=> b!1914361 e!1222959))

(declare-fun e!1222970 () Bool)

(declare-fun b!1914344 () Bool)

(declare-fun e!1222962 () Bool)

(declare-fun tp!546324 () Bool)

(declare-fun inv!28711 (Token!7264) Bool)

(assert (=> b!1914344 (= e!1222970 (and (inv!28711 (h!27012 tokens!598)) e!1222962 tp!546324))))

(declare-fun res!855269 () Bool)

(assert (=> start!192012 (=> (not res!855269) (not e!1222967))))

(assert (=> start!192012 (= res!855269 ((_ is Lexer!3467) thiss!23328))))

(assert (=> start!192012 e!1222967))

(assert (=> start!192012 true))

(assert (=> start!192012 e!1222964))

(assert (=> start!192012 e!1222970))

(assert (=> start!192012 (and (inv!28711 separatorToken!354) e!1222954)))

(declare-fun tp!546328 () Bool)

(declare-fun b!1914362 () Bool)

(assert (=> b!1914362 (= e!1222962 (and (inv!21 (value!121487 (h!27012 tokens!598))) e!1222957 tp!546328))))

(declare-fun b!1914363 () Bool)

(declare-fun Unit!35997 () Unit!35994)

(assert (=> b!1914363 (= e!1222969 Unit!35997)))

(declare-fun b!1914364 () Bool)

(declare-fun res!855288 () Bool)

(assert (=> b!1914364 (=> (not res!855288) (not e!1222967))))

(declare-fun sepAndNonSepRulesDisjointChars!954 (List!21692 List!21692) Bool)

(assert (=> b!1914364 (= res!855288 (sepAndNonSepRulesDisjointChars!954 rules!3198 rules!3198))))

(declare-fun b!1914365 () Bool)

(declare-fun res!855272 () Bool)

(assert (=> b!1914365 (=> res!855272 e!1222971)))

(declare-fun rulesProduceIndividualToken!1641 (LexerInterface!3469 List!21692 Token!7264) Bool)

(assert (=> b!1914365 (= res!855272 (not (rulesProduceIndividualToken!1641 thiss!23328 rules!3198 (h!27012 tokens!598))))))

(declare-fun b!1914366 () Bool)

(assert (=> b!1914366 (= e!1222959 false)))

(declare-fun b!1914367 () Bool)

(declare-fun res!855285 () Bool)

(assert (=> b!1914367 (=> (not res!855285) (not e!1222967))))

(assert (=> b!1914367 (= res!855285 (rulesProduceIndividualToken!1641 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1914368 () Bool)

(assert (=> b!1914368 (= e!1222971 e!1222968)))

(declare-fun res!855265 () Bool)

(assert (=> b!1914368 (=> res!855265 e!1222968)))

(assert (=> b!1914368 (= res!855265 (not (matchR!2567 (regex!3856 (rule!6057 (h!27012 tokens!598))) lt!733094)))))

(declare-fun ruleValid!1175 (LexerInterface!3469 Rule!7512) Bool)

(assert (=> b!1914368 (ruleValid!1175 thiss!23328 (rule!6057 (h!27012 tokens!598)))))

(declare-fun lt!733081 () Unit!35994)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!672 (LexerInterface!3469 Rule!7512 List!21692) Unit!35994)

(assert (=> b!1914368 (= lt!733081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!672 thiss!23328 (rule!6057 (h!27012 tokens!598)) rules!3198))))

(declare-fun b!1914369 () Bool)

(assert (=> b!1914369 (= e!1222948 (= (rule!6057 separatorToken!354) lt!733096))))

(declare-fun b!1914370 () Bool)

(declare-fun res!855279 () Bool)

(assert (=> b!1914370 (=> (not res!855279) (not e!1222967))))

(declare-fun lambda!74731 () Int)

(declare-fun forall!4550 (List!21693 Int) Bool)

(assert (=> b!1914370 (= res!855279 (forall!4550 tokens!598 lambda!74731))))

(declare-fun b!1914371 () Bool)

(declare-fun res!855284 () Bool)

(assert (=> b!1914371 (=> res!855284 e!1222960)))

(assert (=> b!1914371 (= res!855284 (not (contains!3916 lt!733087 lt!733110)))))

(declare-fun e!1222947 () Bool)

(assert (=> b!1914372 (= e!1222947 (and tp!546320 tp!546326))))

(declare-fun b!1914373 () Bool)

(declare-fun res!855264 () Bool)

(assert (=> b!1914373 (=> (not res!855264) (not e!1222967))))

(declare-fun rulesInvariant!3076 (LexerInterface!3469 List!21692) Bool)

(assert (=> b!1914373 (= res!855264 (rulesInvariant!3076 thiss!23328 rules!3198))))

(declare-fun b!1914374 () Bool)

(declare-fun res!855280 () Bool)

(assert (=> b!1914374 (=> res!855280 e!1222971)))

(assert (=> b!1914374 (= res!855280 (not (isEmpty!13295 (_2!11639 lt!733109))))))

(declare-fun b!1914375 () Bool)

(declare-fun res!855286 () Bool)

(assert (=> b!1914375 (=> res!855286 e!1222971)))

(assert (=> b!1914375 (= res!855286 (not (contains!3917 rules!3198 (rule!6057 (h!27012 tokens!598)))))))

(declare-fun tp!546322 () Bool)

(declare-fun b!1914376 () Bool)

(assert (=> b!1914376 (= e!1222953 (and tp!546322 (inv!28707 (tag!4294 (h!27011 rules!3198))) (inv!28710 (transformation!3856 (h!27011 rules!3198))) e!1222947))))

(assert (= (and start!192012 res!855269) b!1914349))

(assert (= (and b!1914349 res!855281) b!1914373))

(assert (= (and b!1914373 res!855264) b!1914343))

(assert (= (and b!1914343 res!855273) b!1914367))

(assert (= (and b!1914367 res!855285) b!1914352))

(assert (= (and b!1914352 res!855289) b!1914370))

(assert (= (and b!1914370 res!855279) b!1914364))

(assert (= (and b!1914364 res!855288) b!1914350))

(assert (= (and b!1914350 res!855266) b!1914354))

(assert (= (and b!1914354 res!855276) b!1914345))

(assert (= (and b!1914345 res!855274) b!1914369))

(assert (= (and b!1914354 res!855282) b!1914360))

(assert (= (and b!1914360 res!855278) b!1914341))

(assert (= (and b!1914354 (not res!855287)) b!1914353))

(assert (= (and b!1914353 c!311749) b!1914361))

(assert (= (and b!1914353 (not c!311749)) b!1914363))

(assert (= (and b!1914361 res!855275) b!1914366))

(assert (= (and b!1914353 (not res!855271)) b!1914365))

(assert (= (and b!1914365 (not res!855272)) b!1914339))

(assert (= (and b!1914339 (not res!855268)) b!1914375))

(assert (= (and b!1914375 (not res!855286)) b!1914359))

(assert (= (and b!1914359 (not res!855283)) b!1914357))

(assert (= (and b!1914357 (not res!855270)) b!1914374))

(assert (= (and b!1914374 (not res!855280)) b!1914368))

(assert (= (and b!1914368 (not res!855265)) b!1914342))

(assert (= (and b!1914342 (not res!855267)) b!1914348))

(assert (= (and b!1914348 (not res!855290)) b!1914371))

(assert (= (and b!1914371 (not res!855284)) b!1914340))

(assert (= (and b!1914340 (not res!855277)) b!1914347))

(assert (= b!1914376 b!1914372))

(assert (= b!1914358 b!1914376))

(assert (= (and start!192012 ((_ is Cons!21610) rules!3198)) b!1914358))

(assert (= b!1914356 b!1914351))

(assert (= b!1914362 b!1914356))

(assert (= b!1914344 b!1914362))

(assert (= (and start!192012 ((_ is Cons!21611) tokens!598)) b!1914344))

(assert (= b!1914355 b!1914338))

(assert (= b!1914346 b!1914355))

(assert (= start!192012 b!1914346))

(declare-fun m!2348847 () Bool)

(assert (=> b!1914354 m!2348847))

(declare-fun m!2348849 () Bool)

(assert (=> b!1914354 m!2348849))

(declare-fun m!2348851 () Bool)

(assert (=> b!1914354 m!2348851))

(declare-fun m!2348853 () Bool)

(assert (=> b!1914354 m!2348853))

(declare-fun m!2348855 () Bool)

(assert (=> b!1914354 m!2348855))

(declare-fun m!2348857 () Bool)

(assert (=> b!1914354 m!2348857))

(declare-fun m!2348859 () Bool)

(assert (=> b!1914354 m!2348859))

(declare-fun m!2348861 () Bool)

(assert (=> b!1914354 m!2348861))

(declare-fun m!2348863 () Bool)

(assert (=> b!1914354 m!2348863))

(assert (=> b!1914354 m!2348855))

(assert (=> b!1914354 m!2348861))

(declare-fun m!2348865 () Bool)

(assert (=> b!1914354 m!2348865))

(declare-fun m!2348867 () Bool)

(assert (=> b!1914354 m!2348867))

(declare-fun m!2348869 () Bool)

(assert (=> b!1914354 m!2348869))

(declare-fun m!2348871 () Bool)

(assert (=> b!1914354 m!2348871))

(declare-fun m!2348873 () Bool)

(assert (=> b!1914354 m!2348873))

(assert (=> b!1914354 m!2348871))

(declare-fun m!2348875 () Bool)

(assert (=> b!1914354 m!2348875))

(declare-fun m!2348877 () Bool)

(assert (=> b!1914354 m!2348877))

(declare-fun m!2348879 () Bool)

(assert (=> b!1914354 m!2348879))

(declare-fun m!2348881 () Bool)

(assert (=> b!1914354 m!2348881))

(declare-fun m!2348883 () Bool)

(assert (=> b!1914354 m!2348883))

(declare-fun m!2348885 () Bool)

(assert (=> b!1914362 m!2348885))

(declare-fun m!2348887 () Bool)

(assert (=> b!1914371 m!2348887))

(declare-fun m!2348889 () Bool)

(assert (=> b!1914349 m!2348889))

(declare-fun m!2348891 () Bool)

(assert (=> b!1914347 m!2348891))

(declare-fun m!2348893 () Bool)

(assert (=> b!1914347 m!2348893))

(declare-fun m!2348895 () Bool)

(assert (=> b!1914345 m!2348895))

(declare-fun m!2348897 () Bool)

(assert (=> b!1914345 m!2348897))

(declare-fun m!2348899 () Bool)

(assert (=> b!1914344 m!2348899))

(declare-fun m!2348901 () Bool)

(assert (=> b!1914353 m!2348901))

(declare-fun m!2348903 () Bool)

(assert (=> b!1914353 m!2348903))

(declare-fun m!2348905 () Bool)

(assert (=> b!1914353 m!2348905))

(declare-fun m!2348907 () Bool)

(assert (=> b!1914353 m!2348907))

(declare-fun m!2348909 () Bool)

(assert (=> b!1914353 m!2348909))

(declare-fun m!2348911 () Bool)

(assert (=> b!1914353 m!2348911))

(declare-fun m!2348913 () Bool)

(assert (=> b!1914353 m!2348913))

(declare-fun m!2348915 () Bool)

(assert (=> b!1914353 m!2348915))

(declare-fun m!2348917 () Bool)

(assert (=> b!1914353 m!2348917))

(declare-fun m!2348919 () Bool)

(assert (=> b!1914353 m!2348919))

(declare-fun m!2348921 () Bool)

(assert (=> b!1914353 m!2348921))

(declare-fun m!2348923 () Bool)

(assert (=> b!1914353 m!2348923))

(declare-fun m!2348925 () Bool)

(assert (=> b!1914353 m!2348925))

(declare-fun m!2348927 () Bool)

(assert (=> b!1914353 m!2348927))

(declare-fun m!2348929 () Bool)

(assert (=> b!1914353 m!2348929))

(declare-fun m!2348931 () Bool)

(assert (=> b!1914353 m!2348931))

(declare-fun m!2348933 () Bool)

(assert (=> b!1914339 m!2348933))

(assert (=> b!1914339 m!2348933))

(declare-fun m!2348935 () Bool)

(assert (=> b!1914339 m!2348935))

(declare-fun m!2348937 () Bool)

(assert (=> b!1914339 m!2348937))

(declare-fun m!2348939 () Bool)

(assert (=> b!1914342 m!2348939))

(declare-fun m!2348941 () Bool)

(assert (=> b!1914361 m!2348941))

(declare-fun m!2348943 () Bool)

(assert (=> b!1914361 m!2348943))

(declare-fun m!2348945 () Bool)

(assert (=> b!1914356 m!2348945))

(declare-fun m!2348947 () Bool)

(assert (=> b!1914356 m!2348947))

(declare-fun m!2348949 () Bool)

(assert (=> start!192012 m!2348949))

(declare-fun m!2348951 () Bool)

(assert (=> b!1914368 m!2348951))

(declare-fun m!2348953 () Bool)

(assert (=> b!1914368 m!2348953))

(declare-fun m!2348955 () Bool)

(assert (=> b!1914368 m!2348955))

(declare-fun m!2348957 () Bool)

(assert (=> b!1914373 m!2348957))

(declare-fun m!2348959 () Bool)

(assert (=> b!1914365 m!2348959))

(declare-fun m!2348961 () Bool)

(assert (=> b!1914346 m!2348961))

(declare-fun m!2348963 () Bool)

(assert (=> b!1914364 m!2348963))

(declare-fun m!2348965 () Bool)

(assert (=> b!1914374 m!2348965))

(declare-fun m!2348967 () Bool)

(assert (=> b!1914360 m!2348967))

(declare-fun m!2348969 () Bool)

(assert (=> b!1914360 m!2348969))

(declare-fun m!2348971 () Bool)

(assert (=> b!1914343 m!2348971))

(declare-fun m!2348973 () Bool)

(assert (=> b!1914367 m!2348973))

(declare-fun m!2348975 () Bool)

(assert (=> b!1914370 m!2348975))

(declare-fun m!2348977 () Bool)

(assert (=> b!1914376 m!2348977))

(declare-fun m!2348979 () Bool)

(assert (=> b!1914376 m!2348979))

(declare-fun m!2348981 () Bool)

(assert (=> b!1914355 m!2348981))

(declare-fun m!2348983 () Bool)

(assert (=> b!1914355 m!2348983))

(declare-fun m!2348985 () Bool)

(assert (=> b!1914340 m!2348985))

(declare-fun m!2348987 () Bool)

(assert (=> b!1914340 m!2348987))

(declare-fun m!2348989 () Bool)

(assert (=> b!1914340 m!2348989))

(declare-fun m!2348991 () Bool)

(assert (=> b!1914375 m!2348991))

(declare-fun m!2348993 () Bool)

(assert (=> b!1914348 m!2348993))

(declare-fun m!2348995 () Bool)

(assert (=> b!1914348 m!2348995))

(declare-fun m!2348997 () Bool)

(assert (=> b!1914359 m!2348997))

(check-sat b_and!149263 (not start!192012) (not b!1914375) (not b!1914348) (not b_next!54867) (not b!1914364) (not b!1914359) (not b!1914345) b_and!149269 (not b!1914354) (not b!1914339) (not b!1914355) b_and!149271 (not b_next!54861) (not b!1914373) (not b!1914360) b_and!149265 (not b!1914358) (not b!1914376) (not b!1914344) (not b!1914367) (not b_next!54865) (not b_next!54859) (not b!1914362) (not b!1914346) (not b_next!54857) (not b!1914374) (not b!1914365) (not b!1914342) (not b!1914361) (not b!1914349) (not b!1914343) b_and!149267 (not b!1914340) b_and!149273 (not b!1914347) (not b!1914371) (not b!1914353) (not b!1914370) (not b!1914368) (not b!1914356) (not b_next!54863))
(check-sat b_and!149265 (not b_next!54865) b_and!149263 (not b_next!54859) (not b_next!54857) (not b_next!54867) b_and!149269 b_and!149267 b_and!149273 b_and!149271 (not b_next!54861) (not b_next!54863))
