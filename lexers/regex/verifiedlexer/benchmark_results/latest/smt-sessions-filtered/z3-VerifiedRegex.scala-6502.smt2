; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341898 () Bool)

(assert start!341898)

(declare-fun b!3655603 () Bool)

(declare-fun b_free!96353 () Bool)

(declare-fun b_next!97057 () Bool)

(assert (=> b!3655603 (= b_free!96353 (not b_next!97057))))

(declare-fun tp!1114103 () Bool)

(declare-fun b_and!270763 () Bool)

(assert (=> b!3655603 (= tp!1114103 b_and!270763)))

(declare-fun b_free!96355 () Bool)

(declare-fun b_next!97059 () Bool)

(assert (=> b!3655603 (= b_free!96355 (not b_next!97059))))

(declare-fun tp!1114110 () Bool)

(declare-fun b_and!270765 () Bool)

(assert (=> b!3655603 (= tp!1114110 b_and!270765)))

(declare-fun b!3655582 () Bool)

(declare-fun b_free!96357 () Bool)

(declare-fun b_next!97061 () Bool)

(assert (=> b!3655582 (= b_free!96357 (not b_next!97061))))

(declare-fun tp!1114115 () Bool)

(declare-fun b_and!270767 () Bool)

(assert (=> b!3655582 (= tp!1114115 b_and!270767)))

(declare-fun b_free!96359 () Bool)

(declare-fun b_next!97063 () Bool)

(assert (=> b!3655582 (= b_free!96359 (not b_next!97063))))

(declare-fun tp!1114107 () Bool)

(declare-fun b_and!270769 () Bool)

(assert (=> b!3655582 (= tp!1114107 b_and!270769)))

(declare-fun b!3655578 () Bool)

(declare-fun b_free!96361 () Bool)

(declare-fun b_next!97065 () Bool)

(assert (=> b!3655578 (= b_free!96361 (not b_next!97065))))

(declare-fun tp!1114105 () Bool)

(declare-fun b_and!270771 () Bool)

(assert (=> b!3655578 (= tp!1114105 b_and!270771)))

(declare-fun b_free!96363 () Bool)

(declare-fun b_next!97067 () Bool)

(assert (=> b!3655578 (= b_free!96363 (not b_next!97067))))

(declare-fun tp!1114116 () Bool)

(declare-fun b_and!270773 () Bool)

(assert (=> b!3655578 (= tp!1114116 b_and!270773)))

(declare-fun b!3655560 () Bool)

(declare-fun b_free!96365 () Bool)

(declare-fun b_next!97069 () Bool)

(assert (=> b!3655560 (= b_free!96365 (not b_next!97069))))

(declare-fun tp!1114108 () Bool)

(declare-fun b_and!270775 () Bool)

(assert (=> b!3655560 (= tp!1114108 b_and!270775)))

(declare-fun b_free!96367 () Bool)

(declare-fun b_next!97071 () Bool)

(assert (=> b!3655560 (= b_free!96367 (not b_next!97071))))

(declare-fun tp!1114114 () Bool)

(declare-fun b_and!270777 () Bool)

(assert (=> b!3655560 (= tp!1114114 b_and!270777)))

(declare-fun e!2263482 () Bool)

(assert (=> b!3655560 (= e!2263482 (and tp!1114108 tp!1114114))))

(declare-fun b!3655561 () Bool)

(declare-fun e!2263458 () Bool)

(declare-fun e!2263470 () Bool)

(assert (=> b!3655561 (= e!2263458 e!2263470)))

(declare-fun res!1483526 () Bool)

(assert (=> b!3655561 (=> res!1483526 e!2263470)))

(declare-datatypes ((C!21272 0))(
  ( (C!21273 (val!12684 Int)) )
))
(declare-datatypes ((List!38691 0))(
  ( (Nil!38567) (Cons!38567 (h!43987 C!21272) (t!297914 List!38691)) )
))
(declare-fun lt!1269942 () List!38691)

(declare-datatypes ((List!38692 0))(
  ( (Nil!38568) (Cons!38568 (h!43988 (_ BitVec 16)) (t!297915 List!38692)) )
))
(declare-datatypes ((TokenValue!6014 0))(
  ( (FloatLiteralValue!12028 (text!42543 List!38692)) (TokenValueExt!6013 (__x!24245 Int)) (Broken!30070 (value!185278 List!38692)) (Object!6137) (End!6014) (Def!6014) (Underscore!6014) (Match!6014) (Else!6014) (Error!6014) (Case!6014) (If!6014) (Extends!6014) (Abstract!6014) (Class!6014) (Val!6014) (DelimiterValue!12028 (del!6074 List!38692)) (KeywordValue!6020 (value!185279 List!38692)) (CommentValue!12028 (value!185280 List!38692)) (WhitespaceValue!12028 (value!185281 List!38692)) (IndentationValue!6014 (value!185282 List!38692)) (String!43403) (Int32!6014) (Broken!30071 (value!185283 List!38692)) (Boolean!6015) (Unit!55718) (OperatorValue!6017 (op!6074 List!38692)) (IdentifierValue!12028 (value!185284 List!38692)) (IdentifierValue!12029 (value!185285 List!38692)) (WhitespaceValue!12029 (value!185286 List!38692)) (True!12028) (False!12028) (Broken!30072 (value!185287 List!38692)) (Broken!30073 (value!185288 List!38692)) (True!12029) (RightBrace!6014) (RightBracket!6014) (Colon!6014) (Null!6014) (Comma!6014) (LeftBracket!6014) (False!12029) (LeftBrace!6014) (ImaginaryLiteralValue!6014 (text!42544 List!38692)) (StringLiteralValue!18042 (value!185289 List!38692)) (EOFValue!6014 (value!185290 List!38692)) (IdentValue!6014 (value!185291 List!38692)) (DelimiterValue!12029 (value!185292 List!38692)) (DedentValue!6014 (value!185293 List!38692)) (NewLineValue!6014 (value!185294 List!38692)) (IntegerValue!18042 (value!185295 (_ BitVec 32)) (text!42545 List!38692)) (IntegerValue!18043 (value!185296 Int) (text!42546 List!38692)) (Times!6014) (Or!6014) (Equal!6014) (Minus!6014) (Broken!30074 (value!185297 List!38692)) (And!6014) (Div!6014) (LessEqual!6014) (Mod!6014) (Concat!16557) (Not!6014) (Plus!6014) (SpaceValue!6014 (value!185298 List!38692)) (IntegerValue!18044 (value!185299 Int) (text!42547 List!38692)) (StringLiteralValue!18043 (text!42548 List!38692)) (FloatLiteralValue!12029 (text!42549 List!38692)) (BytesLiteralValue!6014 (value!185300 List!38692)) (CommentValue!12029 (value!185301 List!38692)) (StringLiteralValue!18044 (value!185302 List!38692)) (ErrorTokenValue!6014 (msg!6075 List!38692)) )
))
(declare-datatypes ((Regex!10543 0))(
  ( (ElementMatch!10543 (c!631790 C!21272)) (Concat!16558 (regOne!21598 Regex!10543) (regTwo!21598 Regex!10543)) (EmptyExpr!10543) (Star!10543 (reg!10872 Regex!10543)) (EmptyLang!10543) (Union!10543 (regOne!21599 Regex!10543) (regTwo!21599 Regex!10543)) )
))
(declare-datatypes ((String!43404 0))(
  ( (String!43405 (value!185303 String)) )
))
(declare-datatypes ((IArray!23583 0))(
  ( (IArray!23584 (innerList!11849 List!38691)) )
))
(declare-datatypes ((Conc!11789 0))(
  ( (Node!11789 (left!30099 Conc!11789) (right!30429 Conc!11789) (csize!23808 Int) (cheight!12000 Int)) (Leaf!18292 (xs!14991 IArray!23583) (csize!23809 Int)) (Empty!11789) )
))
(declare-datatypes ((BalanceConc!23192 0))(
  ( (BalanceConc!23193 (c!631791 Conc!11789)) )
))
(declare-datatypes ((TokenValueInjection!11456 0))(
  ( (TokenValueInjection!11457 (toValue!8076 Int) (toChars!7935 Int)) )
))
(declare-datatypes ((Rule!11368 0))(
  ( (Rule!11369 (regex!5784 Regex!10543) (tag!6554 String!43404) (isSeparator!5784 Bool) (transformation!5784 TokenValueInjection!11456)) )
))
(declare-datatypes ((Token!10934 0))(
  ( (Token!10935 (value!185304 TokenValue!6014) (rule!8588 Rule!11368) (size!29461 Int) (originalCharacters!6498 List!38691)) )
))
(declare-fun lt!1269935 () Token!10934)

(declare-datatypes ((tuple2!38428 0))(
  ( (tuple2!38429 (_1!22348 Token!10934) (_2!22348 List!38691)) )
))
(declare-datatypes ((Option!8196 0))(
  ( (None!8195) (Some!8195 (v!38067 tuple2!38428)) )
))
(declare-fun lt!1269956 () Option!8196)

(assert (=> b!3655561 (= res!1483526 (not (= lt!1269956 (Some!8195 (tuple2!38429 lt!1269935 lt!1269942)))))))

(declare-fun lt!1269952 () List!38691)

(declare-fun isPrefix!3147 (List!38691 List!38691) Bool)

(assert (=> b!3655561 (isPrefix!3147 lt!1269952 lt!1269952)))

(declare-datatypes ((Unit!55719 0))(
  ( (Unit!55720) )
))
(declare-fun lt!1269937 () Unit!55719)

(declare-fun lemmaIsPrefixRefl!1986 (List!38691 List!38691) Unit!55719)

(assert (=> b!3655561 (= lt!1269937 (lemmaIsPrefixRefl!1986 lt!1269952 lt!1269952))))

(declare-fun lt!1269961 () Unit!55719)

(declare-fun lt!1269945 () tuple2!38428)

(declare-fun lt!1269920 () BalanceConc!23192)

(declare-fun lemmaSemiInverse!1533 (TokenValueInjection!11456 BalanceConc!23192) Unit!55719)

(assert (=> b!3655561 (= lt!1269961 (lemmaSemiInverse!1533 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269920))))

(declare-datatypes ((LexerInterface!5373 0))(
  ( (LexerInterfaceExt!5370 (__x!24246 Int)) (Lexer!5371) )
))
(declare-fun thiss!23823 () LexerInterface!5373)

(declare-fun ruleValid!2048 (LexerInterface!5373 Rule!11368) Bool)

(assert (=> b!3655561 (ruleValid!2048 thiss!23823 (rule!8588 (_1!22348 lt!1269945)))))

(declare-datatypes ((List!38693 0))(
  ( (Nil!38569) (Cons!38569 (h!43989 Rule!11368) (t!297916 List!38693)) )
))
(declare-fun rules!3307 () List!38693)

(declare-fun lt!1269916 () Unit!55719)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1202 (LexerInterface!5373 Rule!11368 List!38693) Unit!55719)

(assert (=> b!3655561 (= lt!1269916 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1202 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) rules!3307))))

(declare-fun b!3655562 () Bool)

(declare-fun lt!1269947 () List!38691)

(declare-fun lt!1269923 () Int)

(declare-fun size!29462 (List!38691) Int)

(assert (=> b!3655562 (= e!2263470 (> (size!29462 lt!1269947) lt!1269923))))

(declare-fun b!3655563 () Bool)

(declare-fun e!2263480 () Bool)

(declare-fun e!2263471 () Bool)

(assert (=> b!3655563 (= e!2263480 e!2263471)))

(declare-fun res!1483522 () Bool)

(assert (=> b!3655563 (=> (not res!1483522) (not e!2263471))))

(declare-fun lt!1269936 () Rule!11368)

(declare-fun matchR!5112 (Regex!10543 List!38691) Bool)

(declare-fun list!14298 (BalanceConc!23192) List!38691)

(declare-fun charsOf!3798 (Token!10934) BalanceConc!23192)

(assert (=> b!3655563 (= res!1483522 (matchR!5112 (regex!5784 lt!1269936) (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))))))

(declare-datatypes ((Option!8197 0))(
  ( (None!8196) (Some!8196 (v!38068 Rule!11368)) )
))
(declare-fun lt!1269933 () Option!8197)

(declare-fun get!12698 (Option!8197) Rule!11368)

(assert (=> b!3655563 (= lt!1269936 (get!12698 lt!1269933))))

(declare-fun b!3655564 () Bool)

(declare-fun res!1483525 () Bool)

(declare-fun e!2263464 () Bool)

(assert (=> b!3655564 (=> res!1483525 e!2263464)))

(declare-fun lt!1269919 () List!38691)

(assert (=> b!3655564 (= res!1483525 (not (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919)))))

(declare-fun b!3655565 () Bool)

(declare-fun res!1483523 () Bool)

(declare-fun e!2263455 () Bool)

(assert (=> b!3655565 (=> res!1483523 e!2263455)))

(declare-fun suffix!1395 () List!38691)

(declare-fun isEmpty!22864 (List!38691) Bool)

(assert (=> b!3655565 (= res!1483523 (isEmpty!22864 suffix!1395))))

(declare-fun e!2263461 () Bool)

(declare-fun tp!1114102 () Bool)

(declare-fun token!511 () Token!10934)

(declare-fun b!3655566 () Bool)

(declare-fun e!2263460 () Bool)

(declare-fun inv!21 (TokenValue!6014) Bool)

(assert (=> b!3655566 (= e!2263461 (and (inv!21 (value!185304 token!511)) e!2263460 tp!1114102))))

(declare-fun b!3655567 () Bool)

(assert (=> b!3655567 false))

(declare-fun lt!1269929 () Unit!55719)

(declare-fun call!264313 () Unit!55719)

(assert (=> b!3655567 (= lt!1269929 call!264313)))

(declare-fun call!264316 () Bool)

(assert (=> b!3655567 (not call!264316)))

(declare-fun rule!403 () Rule!11368)

(declare-fun lt!1269939 () C!21272)

(declare-fun lt!1269949 () Unit!55719)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!430 (LexerInterface!5373 List!38693 List!38693 Rule!11368 Rule!11368 C!21272) Unit!55719)

(assert (=> b!3655567 (= lt!1269949 (lemmaNonSepRuleNotContainsCharContainedInASepRule!430 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) rule!403 lt!1269939))))

(declare-fun e!2263451 () Unit!55719)

(declare-fun Unit!55721 () Unit!55719)

(assert (=> b!3655567 (= e!2263451 Unit!55721)))

(declare-fun b!3655568 () Bool)

(declare-fun res!1483521 () Bool)

(assert (=> b!3655568 (=> res!1483521 e!2263458)))

(declare-fun contains!7633 (List!38693 Rule!11368) Bool)

(assert (=> b!3655568 (= res!1483521 (not (contains!7633 rules!3307 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3655569 () Bool)

(assert (=> b!3655569 false))

(declare-fun lt!1269934 () Unit!55719)

(declare-fun call!264314 () Unit!55719)

(assert (=> b!3655569 (= lt!1269934 call!264314)))

(declare-fun call!264311 () Bool)

(assert (=> b!3655569 (not call!264311)))

(declare-fun lt!1269948 () C!21272)

(declare-fun lt!1269938 () Unit!55719)

(declare-fun anOtherTypeRule!33 () Rule!11368)

(assert (=> b!3655569 (= lt!1269938 (lemmaNonSepRuleNotContainsCharContainedInASepRule!430 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) anOtherTypeRule!33 lt!1269948))))

(declare-fun e!2263468 () Unit!55719)

(declare-fun Unit!55722 () Unit!55719)

(assert (=> b!3655569 (= e!2263468 Unit!55722)))

(declare-fun b!3655570 () Bool)

(declare-fun res!1483532 () Bool)

(declare-fun e!2263475 () Bool)

(assert (=> b!3655570 (=> (not res!1483532) (not e!2263475))))

(assert (=> b!3655570 (= res!1483532 (not (= (isSeparator!5784 anOtherTypeRule!33) (isSeparator!5784 rule!403))))))

(declare-fun b!3655571 () Bool)

(declare-fun e!2263457 () Unit!55719)

(declare-fun e!2263477 () Unit!55719)

(assert (=> b!3655571 (= e!2263457 e!2263477)))

(declare-fun c!631784 () Bool)

(assert (=> b!3655571 (= c!631784 (isSeparator!5784 (rule!8588 (_1!22348 lt!1269945))))))

(declare-fun b!3655572 () Bool)

(declare-fun e!2263467 () Bool)

(declare-fun e!2263465 () Bool)

(declare-fun tp!1114104 () Bool)

(assert (=> b!3655572 (= e!2263467 (and e!2263465 tp!1114104))))

(declare-fun b!3655573 () Bool)

(declare-fun e!2263453 () Bool)

(assert (=> b!3655573 (= e!2263455 e!2263453)))

(declare-fun res!1483531 () Bool)

(assert (=> b!3655573 (=> res!1483531 e!2263453)))

(declare-fun lt!1269958 () List!38691)

(declare-fun contains!7634 (List!38691 C!21272) Bool)

(assert (=> b!3655573 (= res!1483531 (contains!7634 lt!1269958 lt!1269948))))

(declare-fun head!7804 (List!38691) C!21272)

(assert (=> b!3655573 (= lt!1269948 (head!7804 suffix!1395))))

(declare-fun usedCharacters!996 (Regex!10543) List!38691)

(assert (=> b!3655573 (= lt!1269958 (usedCharacters!996 (regex!5784 rule!403)))))

(declare-fun b!3655574 () Bool)

(declare-fun e!2263481 () Bool)

(assert (=> b!3655574 (= e!2263481 (not e!2263455))))

(declare-fun res!1483527 () Bool)

(assert (=> b!3655574 (=> res!1483527 e!2263455)))

(assert (=> b!3655574 (= res!1483527 (not (matchR!5112 (regex!5784 rule!403) lt!1269947)))))

(assert (=> b!3655574 (ruleValid!2048 thiss!23823 rule!403)))

(declare-fun lt!1269954 () Unit!55719)

(assert (=> b!3655574 (= lt!1269954 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1202 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3655575 () Bool)

(assert (=> b!3655575 false))

(declare-fun lt!1269946 () Unit!55719)

(assert (=> b!3655575 (= lt!1269946 call!264313)))

(assert (=> b!3655575 (not call!264316)))

(declare-fun lt!1269927 () Unit!55719)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!312 (LexerInterface!5373 List!38693 List!38693 Rule!11368 Rule!11368 C!21272) Unit!55719)

(assert (=> b!3655575 (= lt!1269927 (lemmaSepRuleNotContainsCharContainedInANonSepRule!312 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8588 (_1!22348 lt!1269945)) lt!1269939))))

(declare-fun Unit!55723 () Unit!55719)

(assert (=> b!3655575 (= e!2263477 Unit!55723)))

(declare-fun b!3655576 () Bool)

(declare-fun e!2263449 () Bool)

(assert (=> b!3655576 (= e!2263475 e!2263449)))

(declare-fun res!1483536 () Bool)

(assert (=> b!3655576 (=> (not res!1483536) (not e!2263449))))

(declare-fun lt!1269925 () Option!8196)

(declare-fun isDefined!6428 (Option!8196) Bool)

(assert (=> b!3655576 (= res!1483536 (isDefined!6428 lt!1269925))))

(declare-fun maxPrefix!2907 (LexerInterface!5373 List!38693 List!38691) Option!8196)

(assert (=> b!3655576 (= lt!1269925 (maxPrefix!2907 thiss!23823 rules!3307 lt!1269947))))

(declare-fun lt!1269950 () BalanceConc!23192)

(assert (=> b!3655576 (= lt!1269947 (list!14298 lt!1269950))))

(assert (=> b!3655576 (= lt!1269950 (charsOf!3798 token!511))))

(declare-fun bm!264306 () Bool)

(declare-fun call!264312 () List!38691)

(assert (=> bm!264306 (= call!264316 (contains!7634 call!264312 lt!1269939))))

(declare-fun b!3655577 () Bool)

(declare-fun e!2263452 () Bool)

(declare-fun e!2263450 () Bool)

(assert (=> b!3655577 (= e!2263452 e!2263450)))

(declare-fun res!1483541 () Bool)

(assert (=> b!3655577 (=> res!1483541 e!2263450)))

(assert (=> b!3655577 (= res!1483541 (or (not (= lt!1269942 (_2!22348 lt!1269945))) (not (= lt!1269956 (Some!8195 (tuple2!38429 (_1!22348 lt!1269945) lt!1269942))))))))

(assert (=> b!3655577 (= (_2!22348 lt!1269945) lt!1269942)))

(declare-fun lt!1269953 () Unit!55719)

(declare-fun lemmaSamePrefixThenSameSuffix!1474 (List!38691 List!38691 List!38691 List!38691 List!38691) Unit!55719)

(assert (=> b!3655577 (= lt!1269953 (lemmaSamePrefixThenSameSuffix!1474 lt!1269919 (_2!22348 lt!1269945) lt!1269919 lt!1269942 lt!1269952))))

(declare-fun getSuffix!1700 (List!38691 List!38691) List!38691)

(assert (=> b!3655577 (= lt!1269942 (getSuffix!1700 lt!1269952 lt!1269919))))

(assert (=> b!3655577 (= lt!1269956 (Some!8195 (tuple2!38429 lt!1269935 (_2!22348 lt!1269945))))))

(declare-fun maxPrefixOneRule!2045 (LexerInterface!5373 Rule!11368 List!38691) Option!8196)

(assert (=> b!3655577 (= lt!1269956 (maxPrefixOneRule!2045 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) lt!1269952))))

(declare-fun lt!1269926 () TokenValue!6014)

(assert (=> b!3655577 (= lt!1269935 (Token!10935 lt!1269926 (rule!8588 (_1!22348 lt!1269945)) lt!1269923 lt!1269919))))

(assert (=> b!3655577 (= lt!1269923 (size!29462 lt!1269919))))

(declare-fun apply!9286 (TokenValueInjection!11456 BalanceConc!23192) TokenValue!6014)

(assert (=> b!3655577 (= lt!1269926 (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269920))))

(declare-fun seqFromList!4333 (List!38691) BalanceConc!23192)

(assert (=> b!3655577 (= lt!1269920 (seqFromList!4333 lt!1269919))))

(declare-fun lt!1269914 () Unit!55719)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1101 (LexerInterface!5373 List!38693 List!38691 List!38691 List!38691 Rule!11368) Unit!55719)

(assert (=> b!3655577 (= lt!1269914 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1101 thiss!23823 rules!3307 lt!1269919 lt!1269952 (_2!22348 lt!1269945) (rule!8588 (_1!22348 lt!1269945))))))

(declare-fun e!2263456 () Bool)

(assert (=> b!3655578 (= e!2263456 (and tp!1114105 tp!1114116))))

(declare-fun b!3655579 () Bool)

(declare-fun res!1483519 () Bool)

(assert (=> b!3655579 (=> (not res!1483519) (not e!2263475))))

(declare-fun isEmpty!22865 (List!38693) Bool)

(assert (=> b!3655579 (= res!1483519 (not (isEmpty!22865 rules!3307)))))

(declare-fun b!3655580 () Bool)

(declare-fun res!1483538 () Bool)

(assert (=> b!3655580 (=> (not res!1483538) (not e!2263481))))

(assert (=> b!3655580 (= res!1483538 (= (rule!8588 token!511) rule!403))))

(declare-fun b!3655581 () Bool)

(declare-fun e!2263454 () Unit!55719)

(declare-fun Unit!55724 () Unit!55719)

(assert (=> b!3655581 (= e!2263454 Unit!55724)))

(declare-fun e!2263472 () Bool)

(assert (=> b!3655582 (= e!2263472 (and tp!1114115 tp!1114107))))

(declare-fun bm!264307 () Bool)

(assert (=> bm!264307 (= call!264312 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3655583 () Bool)

(assert (=> b!3655583 (= e!2263449 e!2263481)))

(declare-fun res!1483540 () Bool)

(assert (=> b!3655583 (=> (not res!1483540) (not e!2263481))))

(declare-fun lt!1269962 () tuple2!38428)

(assert (=> b!3655583 (= res!1483540 (= (_1!22348 lt!1269962) token!511))))

(declare-fun get!12699 (Option!8196) tuple2!38428)

(assert (=> b!3655583 (= lt!1269962 (get!12699 lt!1269925))))

(declare-fun b!3655584 () Bool)

(declare-fun Unit!55725 () Unit!55719)

(assert (=> b!3655584 (= e!2263454 Unit!55725)))

(declare-fun lt!1269940 () Unit!55719)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (Regex!10543 List!38691 C!21272) Unit!55719)

(assert (=> b!3655584 (= lt!1269940 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 rule!403) lt!1269947 lt!1269939))))

(assert (=> b!3655584 false))

(declare-fun b!3655585 () Bool)

(declare-fun res!1483534 () Bool)

(assert (=> b!3655585 (=> (not res!1483534) (not e!2263481))))

(assert (=> b!3655585 (= res!1483534 (isEmpty!22864 (_2!22348 lt!1269962)))))

(declare-fun b!3655586 () Bool)

(declare-fun res!1483528 () Bool)

(assert (=> b!3655586 (=> (not res!1483528) (not e!2263475))))

(assert (=> b!3655586 (= res!1483528 (contains!7633 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3655587 () Bool)

(assert (=> b!3655587 (= e!2263457 e!2263451)))

(declare-fun c!631789 () Bool)

(assert (=> b!3655587 (= c!631789 (not (isSeparator!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun res!1483533 () Bool)

(assert (=> start!341898 (=> (not res!1483533) (not e!2263475))))

(get-info :version)

(assert (=> start!341898 (= res!1483533 ((_ is Lexer!5371) thiss!23823))))

(assert (=> start!341898 e!2263475))

(assert (=> start!341898 e!2263467))

(declare-fun e!2263462 () Bool)

(assert (=> start!341898 e!2263462))

(assert (=> start!341898 true))

(declare-fun inv!52028 (Token!10934) Bool)

(assert (=> start!341898 (and (inv!52028 token!511) e!2263461)))

(declare-fun e!2263476 () Bool)

(assert (=> start!341898 e!2263476))

(declare-fun e!2263473 () Bool)

(assert (=> start!341898 e!2263473))

(declare-fun bm!264308 () Bool)

(declare-fun call!264315 () List!38691)

(assert (=> bm!264308 (= call!264315 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3655588 () Bool)

(assert (=> b!3655588 (= e!2263464 e!2263452)))

(declare-fun res!1483530 () Bool)

(assert (=> b!3655588 (=> res!1483530 e!2263452)))

(declare-fun lt!1269932 () Option!8196)

(declare-fun lt!1269951 () TokenValue!6014)

(declare-fun lt!1269943 () Int)

(assert (=> b!3655588 (= res!1483530 (not (= lt!1269932 (Some!8195 (tuple2!38429 (Token!10935 lt!1269951 (rule!8588 (_1!22348 lt!1269945)) lt!1269943 lt!1269919) (_2!22348 lt!1269945))))))))

(declare-fun lt!1269924 () BalanceConc!23192)

(declare-fun size!29463 (BalanceConc!23192) Int)

(assert (=> b!3655588 (= lt!1269943 (size!29463 lt!1269924))))

(assert (=> b!3655588 (= lt!1269951 (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924))))

(declare-fun lt!1269959 () Unit!55719)

(declare-fun lemmaCharactersSize!829 (Token!10934) Unit!55719)

(assert (=> b!3655588 (= lt!1269959 (lemmaCharactersSize!829 (_1!22348 lt!1269945)))))

(declare-fun lt!1269915 () Unit!55719)

(declare-fun lemmaEqSameImage!967 (TokenValueInjection!11456 BalanceConc!23192 BalanceConc!23192) Unit!55719)

(assert (=> b!3655588 (= lt!1269915 (lemmaEqSameImage!967 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924 (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945)))))))

(declare-fun lt!1269921 () Unit!55719)

(assert (=> b!3655588 (= lt!1269921 (lemmaSemiInverse!1533 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924))))

(declare-fun b!3655589 () Bool)

(declare-fun res!1483535 () Bool)

(assert (=> b!3655589 (=> res!1483535 e!2263453)))

(declare-fun sepAndNonSepRulesDisjointChars!1952 (List!38693 List!38693) Bool)

(assert (=> b!3655589 (= res!1483535 (not (sepAndNonSepRulesDisjointChars!1952 rules!3307 rules!3307)))))

(declare-fun tp!1114111 () Bool)

(declare-fun b!3655590 () Bool)

(declare-fun e!2263469 () Bool)

(declare-fun inv!52025 (String!43404) Bool)

(declare-fun inv!52029 (TokenValueInjection!11456) Bool)

(assert (=> b!3655590 (= e!2263465 (and tp!1114111 (inv!52025 (tag!6554 (h!43989 rules!3307))) (inv!52029 (transformation!5784 (h!43989 rules!3307))) e!2263469))))

(declare-fun b!3655591 () Bool)

(declare-fun e!2263474 () Unit!55719)

(assert (=> b!3655591 (= e!2263474 e!2263468)))

(declare-fun lt!1269957 () Unit!55719)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!92 (List!38691 List!38691 List!38691 List!38691) Unit!55719)

(assert (=> b!3655591 (= lt!1269957 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!92 lt!1269947 suffix!1395 lt!1269919 lt!1269952))))

(assert (=> b!3655591 (contains!7634 lt!1269919 lt!1269948)))

(declare-fun c!631786 () Bool)

(assert (=> b!3655591 (= c!631786 (isSeparator!5784 rule!403))))

(declare-fun b!3655592 () Bool)

(declare-fun Unit!55726 () Unit!55719)

(assert (=> b!3655592 (= e!2263451 Unit!55726)))

(declare-fun b!3655593 () Bool)

(declare-fun res!1483524 () Bool)

(assert (=> b!3655593 (=> (not res!1483524) (not e!2263475))))

(assert (=> b!3655593 (= res!1483524 (contains!7633 rules!3307 rule!403))))

(declare-fun b!3655594 () Bool)

(declare-fun Unit!55727 () Unit!55719)

(assert (=> b!3655594 (= e!2263474 Unit!55727)))

(declare-fun b!3655595 () Bool)

(assert (=> b!3655595 (= e!2263453 e!2263464)))

(declare-fun res!1483542 () Bool)

(assert (=> b!3655595 (=> res!1483542 e!2263464)))

(assert (=> b!3655595 (= res!1483542 (not (isPrefix!3147 lt!1269919 lt!1269952)))))

(declare-fun ++!9600 (List!38691 List!38691) List!38691)

(assert (=> b!3655595 (isPrefix!3147 lt!1269919 (++!9600 lt!1269919 (_2!22348 lt!1269945)))))

(declare-fun lt!1269917 () Unit!55719)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2066 (List!38691 List!38691) Unit!55719)

(assert (=> b!3655595 (= lt!1269917 (lemmaConcatTwoListThenFirstIsPrefix!2066 lt!1269919 (_2!22348 lt!1269945)))))

(assert (=> b!3655595 (= lt!1269919 (list!14298 lt!1269924))))

(assert (=> b!3655595 (= lt!1269924 (charsOf!3798 (_1!22348 lt!1269945)))))

(assert (=> b!3655595 e!2263480))

(declare-fun res!1483520 () Bool)

(assert (=> b!3655595 (=> (not res!1483520) (not e!2263480))))

(declare-fun isDefined!6429 (Option!8197) Bool)

(assert (=> b!3655595 (= res!1483520 (isDefined!6429 lt!1269933))))

(declare-fun getRuleFromTag!1388 (LexerInterface!5373 List!38693 String!43404) Option!8197)

(assert (=> b!3655595 (= lt!1269933 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun lt!1269941 () Unit!55719)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1388 (LexerInterface!5373 List!38693 List!38691 Token!10934) Unit!55719)

(assert (=> b!3655595 (= lt!1269941 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1388 thiss!23823 rules!3307 lt!1269952 (_1!22348 lt!1269945)))))

(assert (=> b!3655595 (= lt!1269945 (get!12699 lt!1269932))))

(declare-fun lt!1269918 () Unit!55719)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1051 (LexerInterface!5373 List!38693 List!38691 List!38691) Unit!55719)

(assert (=> b!3655595 (= lt!1269918 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1051 thiss!23823 rules!3307 lt!1269947 suffix!1395))))

(assert (=> b!3655595 (= lt!1269932 (maxPrefix!2907 thiss!23823 rules!3307 lt!1269952))))

(assert (=> b!3655595 (isPrefix!3147 lt!1269947 lt!1269952)))

(declare-fun lt!1269955 () Unit!55719)

(assert (=> b!3655595 (= lt!1269955 (lemmaConcatTwoListThenFirstIsPrefix!2066 lt!1269947 suffix!1395))))

(assert (=> b!3655595 (= lt!1269952 (++!9600 lt!1269947 suffix!1395))))

(declare-fun b!3655596 () Bool)

(assert (=> b!3655596 (= e!2263450 e!2263458)))

(declare-fun res!1483529 () Bool)

(assert (=> b!3655596 (=> res!1483529 e!2263458)))

(declare-fun lt!1269928 () Int)

(assert (=> b!3655596 (= res!1483529 (>= lt!1269943 lt!1269928))))

(declare-fun lt!1269931 () Unit!55719)

(assert (=> b!3655596 (= lt!1269931 e!2263474)))

(declare-fun c!631788 () Bool)

(assert (=> b!3655596 (= c!631788 (> lt!1269943 lt!1269928))))

(assert (=> b!3655596 (= lt!1269928 (size!29463 lt!1269950))))

(declare-fun lt!1269944 () Unit!55719)

(assert (=> b!3655596 (= lt!1269944 e!2263457)))

(declare-fun c!631785 () Bool)

(assert (=> b!3655596 (= c!631785 (isSeparator!5784 rule!403))))

(declare-fun lt!1269960 () Unit!55719)

(assert (=> b!3655596 (= lt!1269960 e!2263454)))

(declare-fun c!631787 () Bool)

(assert (=> b!3655596 (= c!631787 (not (contains!7634 lt!1269958 lt!1269939)))))

(assert (=> b!3655596 (= lt!1269939 (head!7804 lt!1269919))))

(declare-fun b!3655597 () Bool)

(declare-fun res!1483539 () Bool)

(assert (=> b!3655597 (=> res!1483539 e!2263453)))

(assert (=> b!3655597 (= res!1483539 (not (contains!7634 (usedCharacters!996 (regex!5784 anOtherTypeRule!33)) lt!1269948)))))

(declare-fun bm!264309 () Bool)

(assert (=> bm!264309 (= call!264314 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269948))))

(declare-fun b!3655598 () Bool)

(declare-fun Unit!55728 () Unit!55719)

(assert (=> b!3655598 (= e!2263477 Unit!55728)))

(declare-fun b!3655599 () Bool)

(assert (=> b!3655599 false))

(declare-fun lt!1269930 () Unit!55719)

(assert (=> b!3655599 (= lt!1269930 call!264314)))

(assert (=> b!3655599 (not call!264311)))

(declare-fun lt!1269922 () Unit!55719)

(assert (=> b!3655599 (= lt!1269922 (lemmaSepRuleNotContainsCharContainedInANonSepRule!312 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8588 (_1!22348 lt!1269945)) lt!1269948))))

(declare-fun Unit!55729 () Unit!55719)

(assert (=> b!3655599 (= e!2263468 Unit!55729)))

(declare-fun bm!264310 () Bool)

(assert (=> bm!264310 (= call!264311 (contains!7634 call!264315 lt!1269948))))

(declare-fun b!3655600 () Bool)

(declare-fun res!1483537 () Bool)

(assert (=> b!3655600 (=> (not res!1483537) (not e!2263475))))

(declare-fun rulesInvariant!4770 (LexerInterface!5373 List!38693) Bool)

(assert (=> b!3655600 (= res!1483537 (rulesInvariant!4770 thiss!23823 rules!3307))))

(declare-fun bm!264311 () Bool)

(assert (=> bm!264311 (= call!264313 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269939))))

(declare-fun b!3655601 () Bool)

(declare-fun tp!1114106 () Bool)

(assert (=> b!3655601 (= e!2263476 (and tp!1114106 (inv!52025 (tag!6554 rule!403)) (inv!52029 (transformation!5784 rule!403)) e!2263482))))

(declare-fun b!3655602 () Bool)

(assert (=> b!3655602 (= e!2263471 (= (rule!8588 (_1!22348 lt!1269945)) lt!1269936))))

(assert (=> b!3655603 (= e!2263469 (and tp!1114103 tp!1114110))))

(declare-fun b!3655604 () Bool)

(declare-fun tp!1114112 () Bool)

(assert (=> b!3655604 (= e!2263473 (and tp!1114112 (inv!52025 (tag!6554 anOtherTypeRule!33)) (inv!52029 (transformation!5784 anOtherTypeRule!33)) e!2263456))))

(declare-fun tp!1114113 () Bool)

(declare-fun b!3655605 () Bool)

(assert (=> b!3655605 (= e!2263460 (and tp!1114113 (inv!52025 (tag!6554 (rule!8588 token!511))) (inv!52029 (transformation!5784 (rule!8588 token!511))) e!2263472))))

(declare-fun b!3655606 () Bool)

(declare-fun tp_is_empty!18169 () Bool)

(declare-fun tp!1114109 () Bool)

(assert (=> b!3655606 (= e!2263462 (and tp_is_empty!18169 tp!1114109))))

(assert (= (and start!341898 res!1483533) b!3655579))

(assert (= (and b!3655579 res!1483519) b!3655600))

(assert (= (and b!3655600 res!1483537) b!3655593))

(assert (= (and b!3655593 res!1483524) b!3655586))

(assert (= (and b!3655586 res!1483528) b!3655570))

(assert (= (and b!3655570 res!1483532) b!3655576))

(assert (= (and b!3655576 res!1483536) b!3655583))

(assert (= (and b!3655583 res!1483540) b!3655585))

(assert (= (and b!3655585 res!1483534) b!3655580))

(assert (= (and b!3655580 res!1483538) b!3655574))

(assert (= (and b!3655574 (not res!1483527)) b!3655565))

(assert (= (and b!3655565 (not res!1483523)) b!3655573))

(assert (= (and b!3655573 (not res!1483531)) b!3655597))

(assert (= (and b!3655597 (not res!1483539)) b!3655589))

(assert (= (and b!3655589 (not res!1483535)) b!3655595))

(assert (= (and b!3655595 res!1483520) b!3655563))

(assert (= (and b!3655563 res!1483522) b!3655602))

(assert (= (and b!3655595 (not res!1483542)) b!3655564))

(assert (= (and b!3655564 (not res!1483525)) b!3655588))

(assert (= (and b!3655588 (not res!1483530)) b!3655577))

(assert (= (and b!3655577 (not res!1483541)) b!3655596))

(assert (= (and b!3655596 c!631787) b!3655584))

(assert (= (and b!3655596 (not c!631787)) b!3655581))

(assert (= (and b!3655596 c!631785) b!3655587))

(assert (= (and b!3655596 (not c!631785)) b!3655571))

(assert (= (and b!3655587 c!631789) b!3655567))

(assert (= (and b!3655587 (not c!631789)) b!3655592))

(assert (= (and b!3655571 c!631784) b!3655575))

(assert (= (and b!3655571 (not c!631784)) b!3655598))

(assert (= (or b!3655567 b!3655575) bm!264311))

(assert (= (or b!3655567 b!3655575) bm!264307))

(assert (= (or b!3655567 b!3655575) bm!264306))

(assert (= (and b!3655596 c!631788) b!3655591))

(assert (= (and b!3655596 (not c!631788)) b!3655594))

(assert (= (and b!3655591 c!631786) b!3655599))

(assert (= (and b!3655591 (not c!631786)) b!3655569))

(assert (= (or b!3655599 b!3655569) bm!264309))

(assert (= (or b!3655599 b!3655569) bm!264308))

(assert (= (or b!3655599 b!3655569) bm!264310))

(assert (= (and b!3655596 (not res!1483529)) b!3655568))

(assert (= (and b!3655568 (not res!1483521)) b!3655561))

(assert (= (and b!3655561 (not res!1483526)) b!3655562))

(assert (= b!3655590 b!3655603))

(assert (= b!3655572 b!3655590))

(assert (= (and start!341898 ((_ is Cons!38569) rules!3307)) b!3655572))

(assert (= (and start!341898 ((_ is Cons!38567) suffix!1395)) b!3655606))

(assert (= b!3655605 b!3655582))

(assert (= b!3655566 b!3655605))

(assert (= start!341898 b!3655566))

(assert (= b!3655601 b!3655560))

(assert (= start!341898 b!3655601))

(assert (= b!3655604 b!3655578))

(assert (= start!341898 b!3655604))

(declare-fun m!4160961 () Bool)

(assert (=> bm!264307 m!4160961))

(declare-fun m!4160963 () Bool)

(assert (=> b!3655583 m!4160963))

(declare-fun m!4160965 () Bool)

(assert (=> b!3655605 m!4160965))

(declare-fun m!4160967 () Bool)

(assert (=> b!3655605 m!4160967))

(declare-fun m!4160969 () Bool)

(assert (=> b!3655573 m!4160969))

(declare-fun m!4160971 () Bool)

(assert (=> b!3655573 m!4160971))

(declare-fun m!4160973 () Bool)

(assert (=> b!3655573 m!4160973))

(declare-fun m!4160975 () Bool)

(assert (=> b!3655562 m!4160975))

(declare-fun m!4160977 () Bool)

(assert (=> b!3655588 m!4160977))

(declare-fun m!4160979 () Bool)

(assert (=> b!3655588 m!4160979))

(declare-fun m!4160981 () Bool)

(assert (=> b!3655588 m!4160981))

(declare-fun m!4160983 () Bool)

(assert (=> b!3655588 m!4160983))

(assert (=> b!3655588 m!4160979))

(declare-fun m!4160985 () Bool)

(assert (=> b!3655588 m!4160985))

(declare-fun m!4160987 () Bool)

(assert (=> b!3655588 m!4160987))

(declare-fun m!4160989 () Bool)

(assert (=> b!3655566 m!4160989))

(declare-fun m!4160991 () Bool)

(assert (=> bm!264310 m!4160991))

(declare-fun m!4160993 () Bool)

(assert (=> b!3655564 m!4160993))

(declare-fun m!4160995 () Bool)

(assert (=> bm!264311 m!4160995))

(declare-fun m!4160997 () Bool)

(assert (=> b!3655601 m!4160997))

(declare-fun m!4160999 () Bool)

(assert (=> b!3655601 m!4160999))

(declare-fun m!4161001 () Bool)

(assert (=> b!3655599 m!4161001))

(declare-fun m!4161003 () Bool)

(assert (=> b!3655584 m!4161003))

(declare-fun m!4161005 () Bool)

(assert (=> b!3655600 m!4161005))

(declare-fun m!4161007 () Bool)

(assert (=> b!3655593 m!4161007))

(declare-fun m!4161009 () Bool)

(assert (=> b!3655563 m!4161009))

(assert (=> b!3655563 m!4161009))

(declare-fun m!4161011 () Bool)

(assert (=> b!3655563 m!4161011))

(assert (=> b!3655563 m!4161011))

(declare-fun m!4161013 () Bool)

(assert (=> b!3655563 m!4161013))

(declare-fun m!4161015 () Bool)

(assert (=> b!3655563 m!4161015))

(declare-fun m!4161017 () Bool)

(assert (=> b!3655576 m!4161017))

(declare-fun m!4161019 () Bool)

(assert (=> b!3655576 m!4161019))

(declare-fun m!4161021 () Bool)

(assert (=> b!3655576 m!4161021))

(declare-fun m!4161023 () Bool)

(assert (=> b!3655576 m!4161023))

(declare-fun m!4161025 () Bool)

(assert (=> b!3655604 m!4161025))

(declare-fun m!4161027 () Bool)

(assert (=> b!3655604 m!4161027))

(declare-fun m!4161029 () Bool)

(assert (=> b!3655575 m!4161029))

(declare-fun m!4161031 () Bool)

(assert (=> b!3655579 m!4161031))

(declare-fun m!4161033 () Bool)

(assert (=> b!3655568 m!4161033))

(declare-fun m!4161035 () Bool)

(assert (=> b!3655595 m!4161035))

(declare-fun m!4161037 () Bool)

(assert (=> b!3655595 m!4161037))

(declare-fun m!4161039 () Bool)

(assert (=> b!3655595 m!4161039))

(declare-fun m!4161041 () Bool)

(assert (=> b!3655595 m!4161041))

(declare-fun m!4161043 () Bool)

(assert (=> b!3655595 m!4161043))

(declare-fun m!4161045 () Bool)

(assert (=> b!3655595 m!4161045))

(declare-fun m!4161047 () Bool)

(assert (=> b!3655595 m!4161047))

(assert (=> b!3655595 m!4161009))

(declare-fun m!4161049 () Bool)

(assert (=> b!3655595 m!4161049))

(declare-fun m!4161051 () Bool)

(assert (=> b!3655595 m!4161051))

(declare-fun m!4161053 () Bool)

(assert (=> b!3655595 m!4161053))

(declare-fun m!4161055 () Bool)

(assert (=> b!3655595 m!4161055))

(declare-fun m!4161057 () Bool)

(assert (=> b!3655595 m!4161057))

(declare-fun m!4161059 () Bool)

(assert (=> b!3655595 m!4161059))

(assert (=> b!3655595 m!4161055))

(declare-fun m!4161061 () Bool)

(assert (=> b!3655595 m!4161061))

(declare-fun m!4161063 () Bool)

(assert (=> b!3655590 m!4161063))

(declare-fun m!4161065 () Bool)

(assert (=> b!3655590 m!4161065))

(assert (=> bm!264308 m!4160961))

(declare-fun m!4161067 () Bool)

(assert (=> bm!264306 m!4161067))

(declare-fun m!4161069 () Bool)

(assert (=> start!341898 m!4161069))

(declare-fun m!4161071 () Bool)

(assert (=> b!3655567 m!4161071))

(declare-fun m!4161073 () Bool)

(assert (=> bm!264309 m!4161073))

(declare-fun m!4161075 () Bool)

(assert (=> b!3655596 m!4161075))

(declare-fun m!4161077 () Bool)

(assert (=> b!3655596 m!4161077))

(declare-fun m!4161079 () Bool)

(assert (=> b!3655596 m!4161079))

(declare-fun m!4161081 () Bool)

(assert (=> b!3655574 m!4161081))

(declare-fun m!4161083 () Bool)

(assert (=> b!3655574 m!4161083))

(declare-fun m!4161085 () Bool)

(assert (=> b!3655574 m!4161085))

(declare-fun m!4161087 () Bool)

(assert (=> b!3655569 m!4161087))

(declare-fun m!4161089 () Bool)

(assert (=> b!3655586 m!4161089))

(declare-fun m!4161091 () Bool)

(assert (=> b!3655577 m!4161091))

(declare-fun m!4161093 () Bool)

(assert (=> b!3655577 m!4161093))

(declare-fun m!4161095 () Bool)

(assert (=> b!3655577 m!4161095))

(declare-fun m!4161097 () Bool)

(assert (=> b!3655577 m!4161097))

(declare-fun m!4161099 () Bool)

(assert (=> b!3655577 m!4161099))

(declare-fun m!4161101 () Bool)

(assert (=> b!3655577 m!4161101))

(declare-fun m!4161103 () Bool)

(assert (=> b!3655577 m!4161103))

(declare-fun m!4161105 () Bool)

(assert (=> b!3655561 m!4161105))

(declare-fun m!4161107 () Bool)

(assert (=> b!3655561 m!4161107))

(declare-fun m!4161109 () Bool)

(assert (=> b!3655561 m!4161109))

(declare-fun m!4161111 () Bool)

(assert (=> b!3655561 m!4161111))

(declare-fun m!4161113 () Bool)

(assert (=> b!3655561 m!4161113))

(declare-fun m!4161115 () Bool)

(assert (=> b!3655589 m!4161115))

(declare-fun m!4161117 () Bool)

(assert (=> b!3655591 m!4161117))

(declare-fun m!4161119 () Bool)

(assert (=> b!3655591 m!4161119))

(declare-fun m!4161121 () Bool)

(assert (=> b!3655597 m!4161121))

(assert (=> b!3655597 m!4161121))

(declare-fun m!4161123 () Bool)

(assert (=> b!3655597 m!4161123))

(declare-fun m!4161125 () Bool)

(assert (=> b!3655585 m!4161125))

(declare-fun m!4161127 () Bool)

(assert (=> b!3655565 m!4161127))

(check-sat b_and!270763 (not b_next!97065) (not b!3655567) (not b_next!97071) (not b!3655579) (not bm!264307) (not b!3655568) (not b!3655586) (not b!3655589) (not b_next!97063) (not bm!264310) (not b!3655588) (not bm!264308) (not b!3655561) (not b!3655565) (not b_next!97061) (not bm!264306) (not b!3655605) (not b_next!97057) tp_is_empty!18169 (not b!3655569) (not b!3655566) (not b!3655583) (not b!3655576) (not b_next!97059) b_and!270773 b_and!270777 (not b!3655574) (not b!3655606) b_and!270775 (not b!3655599) (not b!3655575) (not bm!264309) (not b!3655593) (not b_next!97069) (not b!3655604) (not b!3655564) (not b!3655591) (not b!3655597) b_and!270765 (not b!3655595) (not bm!264311) (not b_next!97067) b_and!270769 b_and!270771 (not b!3655577) (not b!3655563) (not b!3655573) (not b!3655585) (not b!3655590) (not b!3655562) (not b!3655600) (not b!3655601) (not start!341898) b_and!270767 (not b!3655584) (not b!3655596) (not b!3655572))
(check-sat b_and!270763 (not b_next!97065) b_and!270775 (not b_next!97071) (not b_next!97069) b_and!270765 b_and!270771 b_and!270767 (not b_next!97063) (not b_next!97061) (not b_next!97057) (not b_next!97059) b_and!270773 b_and!270777 (not b_next!97067) b_and!270769)
(get-model)

(declare-fun d!1073541 () Bool)

(assert (=> d!1073541 (not (contains!7634 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269948))))

(declare-fun lt!1269965 () Unit!55719)

(declare-fun choose!21572 (LexerInterface!5373 List!38693 List!38693 Rule!11368 Rule!11368 C!21272) Unit!55719)

(assert (=> d!1073541 (= lt!1269965 (choose!21572 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) anOtherTypeRule!33 lt!1269948))))

(assert (=> d!1073541 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073541 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!430 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) anOtherTypeRule!33 lt!1269948) lt!1269965)))

(declare-fun bs!572382 () Bool)

(assert (= bs!572382 d!1073541))

(assert (=> bs!572382 m!4160961))

(assert (=> bs!572382 m!4160961))

(declare-fun m!4161129 () Bool)

(assert (=> bs!572382 m!4161129))

(declare-fun m!4161131 () Bool)

(assert (=> bs!572382 m!4161131))

(assert (=> bs!572382 m!4161005))

(assert (=> b!3655569 d!1073541))

(declare-fun b!3655623 () Bool)

(declare-fun e!2263493 () List!38691)

(declare-fun call!264326 () List!38691)

(assert (=> b!3655623 (= e!2263493 call!264326)))

(declare-fun bm!264320 () Bool)

(declare-fun call!264327 () List!38691)

(assert (=> bm!264320 (= call!264327 call!264326)))

(declare-fun b!3655624 () Bool)

(declare-fun e!2263494 () List!38691)

(declare-fun call!264328 () List!38691)

(assert (=> b!3655624 (= e!2263494 call!264328)))

(declare-fun bm!264321 () Bool)

(declare-fun call!264325 () List!38691)

(declare-fun c!631802 () Bool)

(assert (=> bm!264321 (= call!264325 (usedCharacters!996 (ite c!631802 (regOne!21599 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) (regTwo!21598 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))))

(declare-fun d!1073543 () Bool)

(declare-fun c!631801 () Bool)

(assert (=> d!1073543 (= c!631801 (or ((_ is EmptyExpr!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) ((_ is EmptyLang!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))))

(declare-fun e!2263492 () List!38691)

(assert (=> d!1073543 (= (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) e!2263492)))

(declare-fun b!3655625 () Bool)

(assert (=> b!3655625 (= e!2263493 e!2263494)))

(assert (=> b!3655625 (= c!631802 ((_ is Union!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun c!631804 () Bool)

(declare-fun bm!264322 () Bool)

(assert (=> bm!264322 (= call!264326 (usedCharacters!996 (ite c!631804 (reg!10872 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) (ite c!631802 (regTwo!21599 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) (regOne!21598 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))))))

(declare-fun b!3655626 () Bool)

(assert (=> b!3655626 (= c!631804 ((_ is Star!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun e!2263491 () List!38691)

(assert (=> b!3655626 (= e!2263491 e!2263493)))

(declare-fun b!3655627 () Bool)

(assert (=> b!3655627 (= e!2263492 Nil!38567)))

(declare-fun b!3655628 () Bool)

(assert (=> b!3655628 (= e!2263491 (Cons!38567 (c!631790 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) Nil!38567))))

(declare-fun b!3655629 () Bool)

(assert (=> b!3655629 (= e!2263494 call!264328)))

(declare-fun b!3655630 () Bool)

(assert (=> b!3655630 (= e!2263492 e!2263491)))

(declare-fun c!631803 () Bool)

(assert (=> b!3655630 (= c!631803 ((_ is ElementMatch!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun bm!264323 () Bool)

(assert (=> bm!264323 (= call!264328 (++!9600 (ite c!631802 call!264325 call!264327) (ite c!631802 call!264327 call!264325)))))

(assert (= (and d!1073543 c!631801) b!3655627))

(assert (= (and d!1073543 (not c!631801)) b!3655630))

(assert (= (and b!3655630 c!631803) b!3655628))

(assert (= (and b!3655630 (not c!631803)) b!3655626))

(assert (= (and b!3655626 c!631804) b!3655623))

(assert (= (and b!3655626 (not c!631804)) b!3655625))

(assert (= (and b!3655625 c!631802) b!3655624))

(assert (= (and b!3655625 (not c!631802)) b!3655629))

(assert (= (or b!3655624 b!3655629) bm!264321))

(assert (= (or b!3655624 b!3655629) bm!264320))

(assert (= (or b!3655624 b!3655629) bm!264323))

(assert (= (or b!3655623 bm!264320) bm!264322))

(declare-fun m!4161133 () Bool)

(assert (=> bm!264321 m!4161133))

(declare-fun m!4161135 () Bool)

(assert (=> bm!264322 m!4161135))

(declare-fun m!4161137 () Bool)

(assert (=> bm!264323 m!4161137))

(assert (=> bm!264308 d!1073543))

(declare-fun d!1073545 () Bool)

(declare-fun fromListB!1998 (List!38691) BalanceConc!23192)

(assert (=> d!1073545 (= (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945))) (fromListB!1998 (originalCharacters!6498 (_1!22348 lt!1269945))))))

(declare-fun bs!572383 () Bool)

(assert (= bs!572383 d!1073545))

(declare-fun m!4161139 () Bool)

(assert (=> bs!572383 m!4161139))

(assert (=> b!3655588 d!1073545))

(declare-fun d!1073547 () Bool)

(declare-fun dynLambda!16819 (Int BalanceConc!23192) TokenValue!6014)

(assert (=> d!1073547 (= (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924))))

(declare-fun b_lambda!108383 () Bool)

(assert (=> (not b_lambda!108383) (not d!1073547)))

(declare-fun t!297918 () Bool)

(declare-fun tb!210981 () Bool)

(assert (=> (and b!3655603 (= (toValue!8076 (transformation!5784 (h!43989 rules!3307))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297918) tb!210981))

(declare-fun result!256902 () Bool)

(assert (=> tb!210981 (= result!256902 (inv!21 (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924)))))

(declare-fun m!4161141 () Bool)

(assert (=> tb!210981 m!4161141))

(assert (=> d!1073547 t!297918))

(declare-fun b_and!270779 () Bool)

(assert (= b_and!270763 (and (=> t!297918 result!256902) b_and!270779)))

(declare-fun t!297920 () Bool)

(declare-fun tb!210983 () Bool)

(assert (=> (and b!3655582 (= (toValue!8076 (transformation!5784 (rule!8588 token!511))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297920) tb!210983))

(declare-fun result!256906 () Bool)

(assert (= result!256906 result!256902))

(assert (=> d!1073547 t!297920))

(declare-fun b_and!270781 () Bool)

(assert (= b_and!270767 (and (=> t!297920 result!256906) b_and!270781)))

(declare-fun tb!210985 () Bool)

(declare-fun t!297922 () Bool)

(assert (=> (and b!3655578 (= (toValue!8076 (transformation!5784 anOtherTypeRule!33)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297922) tb!210985))

(declare-fun result!256908 () Bool)

(assert (= result!256908 result!256902))

(assert (=> d!1073547 t!297922))

(declare-fun b_and!270783 () Bool)

(assert (= b_and!270771 (and (=> t!297922 result!256908) b_and!270783)))

(declare-fun tb!210987 () Bool)

(declare-fun t!297924 () Bool)

(assert (=> (and b!3655560 (= (toValue!8076 (transformation!5784 rule!403)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297924) tb!210987))

(declare-fun result!256910 () Bool)

(assert (= result!256910 result!256902))

(assert (=> d!1073547 t!297924))

(declare-fun b_and!270785 () Bool)

(assert (= b_and!270775 (and (=> t!297924 result!256910) b_and!270785)))

(declare-fun m!4161143 () Bool)

(assert (=> d!1073547 m!4161143))

(assert (=> b!3655588 d!1073547))

(declare-fun b!3655715 () Bool)

(declare-fun e!2263542 () Bool)

(assert (=> b!3655715 (= e!2263542 true)))

(declare-fun d!1073549 () Bool)

(assert (=> d!1073549 e!2263542))

(assert (= d!1073549 b!3655715))

(declare-fun lambda!124514 () Int)

(declare-fun order!21253 () Int)

(declare-fun order!21251 () Int)

(declare-fun dynLambda!16820 (Int Int) Int)

(declare-fun dynLambda!16821 (Int Int) Int)

(assert (=> b!3655715 (< (dynLambda!16820 order!21251 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16821 order!21253 lambda!124514))))

(declare-fun order!21255 () Int)

(declare-fun dynLambda!16822 (Int Int) Int)

(assert (=> b!3655715 (< (dynLambda!16822 order!21255 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16821 order!21253 lambda!124514))))

(assert (=> d!1073549 (= (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945)))))))

(declare-fun lt!1270000 () Unit!55719)

(declare-fun Forall2of!377 (Int BalanceConc!23192 BalanceConc!23192) Unit!55719)

(assert (=> d!1073549 (= lt!1270000 (Forall2of!377 lambda!124514 lt!1269924 (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945)))))))

(assert (=> d!1073549 (= (list!14298 lt!1269924) (list!14298 (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945)))))))

(assert (=> d!1073549 (= (lemmaEqSameImage!967 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924 (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945)))) lt!1270000)))

(declare-fun b_lambda!108387 () Bool)

(assert (=> (not b_lambda!108387) (not d!1073549)))

(assert (=> d!1073549 t!297918))

(declare-fun b_and!270795 () Bool)

(assert (= b_and!270779 (and (=> t!297918 result!256902) b_and!270795)))

(assert (=> d!1073549 t!297920))

(declare-fun b_and!270797 () Bool)

(assert (= b_and!270781 (and (=> t!297920 result!256906) b_and!270797)))

(assert (=> d!1073549 t!297922))

(declare-fun b_and!270799 () Bool)

(assert (= b_and!270783 (and (=> t!297922 result!256908) b_and!270799)))

(assert (=> d!1073549 t!297924))

(declare-fun b_and!270801 () Bool)

(assert (= b_and!270785 (and (=> t!297924 result!256910) b_and!270801)))

(declare-fun b_lambda!108389 () Bool)

(assert (=> (not b_lambda!108389) (not d!1073549)))

(declare-fun tb!210997 () Bool)

(declare-fun t!297934 () Bool)

(assert (=> (and b!3655603 (= (toValue!8076 (transformation!5784 (h!43989 rules!3307))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297934) tb!210997))

(declare-fun result!256922 () Bool)

(assert (=> tb!210997 (= result!256922 (inv!21 (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (seqFromList!4333 (originalCharacters!6498 (_1!22348 lt!1269945))))))))

(declare-fun m!4161221 () Bool)

(assert (=> tb!210997 m!4161221))

(assert (=> d!1073549 t!297934))

(declare-fun b_and!270803 () Bool)

(assert (= b_and!270795 (and (=> t!297934 result!256922) b_and!270803)))

(declare-fun t!297936 () Bool)

(declare-fun tb!210999 () Bool)

(assert (=> (and b!3655582 (= (toValue!8076 (transformation!5784 (rule!8588 token!511))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297936) tb!210999))

(declare-fun result!256924 () Bool)

(assert (= result!256924 result!256922))

(assert (=> d!1073549 t!297936))

(declare-fun b_and!270805 () Bool)

(assert (= b_and!270797 (and (=> t!297936 result!256924) b_and!270805)))

(declare-fun t!297938 () Bool)

(declare-fun tb!211001 () Bool)

(assert (=> (and b!3655578 (= (toValue!8076 (transformation!5784 anOtherTypeRule!33)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297938) tb!211001))

(declare-fun result!256926 () Bool)

(assert (= result!256926 result!256922))

(assert (=> d!1073549 t!297938))

(declare-fun b_and!270807 () Bool)

(assert (= b_and!270799 (and (=> t!297938 result!256926) b_and!270807)))

(declare-fun t!297940 () Bool)

(declare-fun tb!211003 () Bool)

(assert (=> (and b!3655560 (= (toValue!8076 (transformation!5784 rule!403)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297940) tb!211003))

(declare-fun result!256928 () Bool)

(assert (= result!256928 result!256922))

(assert (=> d!1073549 t!297940))

(declare-fun b_and!270809 () Bool)

(assert (= b_and!270801 (and (=> t!297940 result!256928) b_and!270809)))

(assert (=> d!1073549 m!4160979))

(declare-fun m!4161223 () Bool)

(assert (=> d!1073549 m!4161223))

(assert (=> d!1073549 m!4160979))

(declare-fun m!4161225 () Bool)

(assert (=> d!1073549 m!4161225))

(assert (=> d!1073549 m!4161045))

(assert (=> d!1073549 m!4161143))

(assert (=> d!1073549 m!4160979))

(declare-fun m!4161227 () Bool)

(assert (=> d!1073549 m!4161227))

(assert (=> b!3655588 d!1073549))

(declare-fun d!1073575 () Bool)

(assert (=> d!1073575 (= (size!29461 (_1!22348 lt!1269945)) (size!29462 (originalCharacters!6498 (_1!22348 lt!1269945))))))

(declare-fun Unit!55730 () Unit!55719)

(assert (=> d!1073575 (= (lemmaCharactersSize!829 (_1!22348 lt!1269945)) Unit!55730)))

(declare-fun bs!572389 () Bool)

(assert (= bs!572389 d!1073575))

(declare-fun m!4161229 () Bool)

(assert (=> bs!572389 m!4161229))

(assert (=> b!3655588 d!1073575))

(declare-fun d!1073577 () Bool)

(declare-fun lt!1270003 () Int)

(assert (=> d!1073577 (= lt!1270003 (size!29462 (list!14298 lt!1269924)))))

(declare-fun size!29464 (Conc!11789) Int)

(assert (=> d!1073577 (= lt!1270003 (size!29464 (c!631791 lt!1269924)))))

(assert (=> d!1073577 (= (size!29463 lt!1269924) lt!1270003)))

(declare-fun bs!572390 () Bool)

(assert (= bs!572390 d!1073577))

(assert (=> bs!572390 m!4161045))

(assert (=> bs!572390 m!4161045))

(declare-fun m!4161231 () Bool)

(assert (=> bs!572390 m!4161231))

(declare-fun m!4161233 () Bool)

(assert (=> bs!572390 m!4161233))

(assert (=> b!3655588 d!1073577))

(declare-fun b!3655720 () Bool)

(declare-fun e!2263546 () Bool)

(assert (=> b!3655720 (= e!2263546 true)))

(declare-fun d!1073579 () Bool)

(assert (=> d!1073579 e!2263546))

(assert (= d!1073579 b!3655720))

(declare-fun lambda!124517 () Int)

(declare-fun order!21257 () Int)

(declare-fun dynLambda!16823 (Int Int) Int)

(assert (=> b!3655720 (< (dynLambda!16820 order!21251 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16823 order!21257 lambda!124517))))

(assert (=> b!3655720 (< (dynLambda!16822 order!21255 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16823 order!21257 lambda!124517))))

(declare-fun dynLambda!16824 (Int TokenValue!6014) BalanceConc!23192)

(assert (=> d!1073579 (= (list!14298 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924))) (list!14298 lt!1269924))))

(declare-fun lt!1270006 () Unit!55719)

(declare-fun ForallOf!719 (Int BalanceConc!23192) Unit!55719)

(assert (=> d!1073579 (= lt!1270006 (ForallOf!719 lambda!124517 lt!1269924))))

(assert (=> d!1073579 (= (lemmaSemiInverse!1533 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269924) lt!1270006)))

(declare-fun b_lambda!108391 () Bool)

(assert (=> (not b_lambda!108391) (not d!1073579)))

(declare-fun tb!211005 () Bool)

(declare-fun t!297942 () Bool)

(assert (=> (and b!3655603 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297942) tb!211005))

(declare-fun b!3655725 () Bool)

(declare-fun e!2263549 () Bool)

(declare-fun tp!1114122 () Bool)

(declare-fun inv!52032 (Conc!11789) Bool)

(assert (=> b!3655725 (= e!2263549 (and (inv!52032 (c!631791 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924)))) tp!1114122))))

(declare-fun result!256930 () Bool)

(declare-fun inv!52033 (BalanceConc!23192) Bool)

(assert (=> tb!211005 (= result!256930 (and (inv!52033 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269924))) e!2263549))))

(assert (= tb!211005 b!3655725))

(declare-fun m!4161235 () Bool)

(assert (=> b!3655725 m!4161235))

(declare-fun m!4161237 () Bool)

(assert (=> tb!211005 m!4161237))

(assert (=> d!1073579 t!297942))

(declare-fun b_and!270811 () Bool)

(assert (= b_and!270765 (and (=> t!297942 result!256930) b_and!270811)))

(declare-fun t!297944 () Bool)

(declare-fun tb!211007 () Bool)

(assert (=> (and b!3655582 (= (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297944) tb!211007))

(declare-fun result!256934 () Bool)

(assert (= result!256934 result!256930))

(assert (=> d!1073579 t!297944))

(declare-fun b_and!270813 () Bool)

(assert (= b_and!270769 (and (=> t!297944 result!256934) b_and!270813)))

(declare-fun tb!211009 () Bool)

(declare-fun t!297946 () Bool)

(assert (=> (and b!3655578 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297946) tb!211009))

(declare-fun result!256936 () Bool)

(assert (= result!256936 result!256930))

(assert (=> d!1073579 t!297946))

(declare-fun b_and!270815 () Bool)

(assert (= b_and!270773 (and (=> t!297946 result!256936) b_and!270815)))

(declare-fun tb!211011 () Bool)

(declare-fun t!297948 () Bool)

(assert (=> (and b!3655560 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297948) tb!211011))

(declare-fun result!256938 () Bool)

(assert (= result!256938 result!256930))

(assert (=> d!1073579 t!297948))

(declare-fun b_and!270817 () Bool)

(assert (= b_and!270777 (and (=> t!297948 result!256938) b_and!270817)))

(declare-fun b_lambda!108393 () Bool)

(assert (=> (not b_lambda!108393) (not d!1073579)))

(assert (=> d!1073579 t!297918))

(declare-fun b_and!270819 () Bool)

(assert (= b_and!270803 (and (=> t!297918 result!256902) b_and!270819)))

(assert (=> d!1073579 t!297920))

(declare-fun b_and!270821 () Bool)

(assert (= b_and!270805 (and (=> t!297920 result!256906) b_and!270821)))

(assert (=> d!1073579 t!297922))

(declare-fun b_and!270823 () Bool)

(assert (= b_and!270807 (and (=> t!297922 result!256908) b_and!270823)))

(assert (=> d!1073579 t!297924))

(declare-fun b_and!270825 () Bool)

(assert (= b_and!270809 (and (=> t!297924 result!256910) b_and!270825)))

(assert (=> d!1073579 m!4161045))

(assert (=> d!1073579 m!4161143))

(declare-fun m!4161239 () Bool)

(assert (=> d!1073579 m!4161239))

(assert (=> d!1073579 m!4161143))

(assert (=> d!1073579 m!4161239))

(declare-fun m!4161241 () Bool)

(assert (=> d!1073579 m!4161241))

(declare-fun m!4161243 () Bool)

(assert (=> d!1073579 m!4161243))

(assert (=> b!3655588 d!1073579))

(declare-fun d!1073581 () Bool)

(assert (=> d!1073581 (= (inv!52025 (tag!6554 anOtherTypeRule!33)) (= (mod (str.len (value!185303 (tag!6554 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3655604 d!1073581))

(declare-fun d!1073583 () Bool)

(declare-fun res!1483591 () Bool)

(declare-fun e!2263556 () Bool)

(assert (=> d!1073583 (=> (not res!1483591) (not e!2263556))))

(declare-fun semiInverseModEq!2462 (Int Int) Bool)

(assert (=> d!1073583 (= res!1483591 (semiInverseModEq!2462 (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toValue!8076 (transformation!5784 anOtherTypeRule!33))))))

(assert (=> d!1073583 (= (inv!52029 (transformation!5784 anOtherTypeRule!33)) e!2263556)))

(declare-fun b!3655734 () Bool)

(declare-fun equivClasses!2361 (Int Int) Bool)

(assert (=> b!3655734 (= e!2263556 (equivClasses!2361 (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toValue!8076 (transformation!5784 anOtherTypeRule!33))))))

(assert (= (and d!1073583 res!1483591) b!3655734))

(declare-fun m!4161249 () Bool)

(assert (=> d!1073583 m!4161249))

(declare-fun m!4161251 () Bool)

(assert (=> b!3655734 m!4161251))

(assert (=> b!3655604 d!1073583))

(declare-fun d!1073585 () Bool)

(assert (=> d!1073585 (= (inv!52025 (tag!6554 (rule!8588 token!511))) (= (mod (str.len (value!185303 (tag!6554 (rule!8588 token!511)))) 2) 0))))

(assert (=> b!3655605 d!1073585))

(declare-fun d!1073587 () Bool)

(declare-fun res!1483592 () Bool)

(declare-fun e!2263557 () Bool)

(assert (=> d!1073587 (=> (not res!1483592) (not e!2263557))))

(assert (=> d!1073587 (= res!1483592 (semiInverseModEq!2462 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toValue!8076 (transformation!5784 (rule!8588 token!511)))))))

(assert (=> d!1073587 (= (inv!52029 (transformation!5784 (rule!8588 token!511))) e!2263557)))

(declare-fun b!3655735 () Bool)

(assert (=> b!3655735 (= e!2263557 (equivClasses!2361 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toValue!8076 (transformation!5784 (rule!8588 token!511)))))))

(assert (= (and d!1073587 res!1483592) b!3655735))

(declare-fun m!4161253 () Bool)

(assert (=> d!1073587 m!4161253))

(declare-fun m!4161255 () Bool)

(assert (=> b!3655735 m!4161255))

(assert (=> b!3655605 d!1073587))

(declare-fun d!1073589 () Bool)

(declare-fun lt!1270010 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5566 (List!38693) (InoxSet Rule!11368))

(assert (=> d!1073589 (= lt!1270010 (select (content!5566 rules!3307) (rule!8588 (_1!22348 lt!1269945))))))

(declare-fun e!2263566 () Bool)

(assert (=> d!1073589 (= lt!1270010 e!2263566)))

(declare-fun res!1483598 () Bool)

(assert (=> d!1073589 (=> (not res!1483598) (not e!2263566))))

(assert (=> d!1073589 (= res!1483598 ((_ is Cons!38569) rules!3307))))

(assert (=> d!1073589 (= (contains!7633 rules!3307 (rule!8588 (_1!22348 lt!1269945))) lt!1270010)))

(declare-fun b!3655742 () Bool)

(declare-fun e!2263565 () Bool)

(assert (=> b!3655742 (= e!2263566 e!2263565)))

(declare-fun res!1483597 () Bool)

(assert (=> b!3655742 (=> res!1483597 e!2263565)))

(assert (=> b!3655742 (= res!1483597 (= (h!43989 rules!3307) (rule!8588 (_1!22348 lt!1269945))))))

(declare-fun b!3655743 () Bool)

(assert (=> b!3655743 (= e!2263565 (contains!7633 (t!297916 rules!3307) (rule!8588 (_1!22348 lt!1269945))))))

(assert (= (and d!1073589 res!1483598) b!3655742))

(assert (= (and b!3655742 (not res!1483597)) b!3655743))

(declare-fun m!4161267 () Bool)

(assert (=> d!1073589 m!4161267))

(declare-fun m!4161269 () Bool)

(assert (=> d!1073589 m!4161269))

(declare-fun m!4161271 () Bool)

(assert (=> b!3655743 m!4161271))

(assert (=> b!3655568 d!1073589))

(declare-fun d!1073593 () Bool)

(assert (=> d!1073593 (= (inv!52025 (tag!6554 (h!43989 rules!3307))) (= (mod (str.len (value!185303 (tag!6554 (h!43989 rules!3307)))) 2) 0))))

(assert (=> b!3655590 d!1073593))

(declare-fun d!1073595 () Bool)

(declare-fun res!1483599 () Bool)

(declare-fun e!2263567 () Bool)

(assert (=> d!1073595 (=> (not res!1483599) (not e!2263567))))

(assert (=> d!1073595 (= res!1483599 (semiInverseModEq!2462 (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toValue!8076 (transformation!5784 (h!43989 rules!3307)))))))

(assert (=> d!1073595 (= (inv!52029 (transformation!5784 (h!43989 rules!3307))) e!2263567)))

(declare-fun b!3655744 () Bool)

(assert (=> b!3655744 (= e!2263567 (equivClasses!2361 (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toValue!8076 (transformation!5784 (h!43989 rules!3307)))))))

(assert (= (and d!1073595 res!1483599) b!3655744))

(declare-fun m!4161273 () Bool)

(assert (=> d!1073595 m!4161273))

(declare-fun m!4161275 () Bool)

(assert (=> b!3655744 m!4161275))

(assert (=> b!3655590 d!1073595))

(declare-fun d!1073597 () Bool)

(declare-fun res!1483604 () Bool)

(declare-fun e!2263572 () Bool)

(assert (=> d!1073597 (=> res!1483604 e!2263572)))

(assert (=> d!1073597 (= res!1483604 (not ((_ is Cons!38569) rules!3307)))))

(assert (=> d!1073597 (= (sepAndNonSepRulesDisjointChars!1952 rules!3307 rules!3307) e!2263572)))

(declare-fun b!3655749 () Bool)

(declare-fun e!2263573 () Bool)

(assert (=> b!3655749 (= e!2263572 e!2263573)))

(declare-fun res!1483605 () Bool)

(assert (=> b!3655749 (=> (not res!1483605) (not e!2263573))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!886 (Rule!11368 List!38693) Bool)

(assert (=> b!3655749 (= res!1483605 (ruleDisjointCharsFromAllFromOtherType!886 (h!43989 rules!3307) rules!3307))))

(declare-fun b!3655750 () Bool)

(assert (=> b!3655750 (= e!2263573 (sepAndNonSepRulesDisjointChars!1952 rules!3307 (t!297916 rules!3307)))))

(assert (= (and d!1073597 (not res!1483604)) b!3655749))

(assert (= (and b!3655749 res!1483605) b!3655750))

(declare-fun m!4161283 () Bool)

(assert (=> b!3655749 m!4161283))

(declare-fun m!4161285 () Bool)

(assert (=> b!3655750 m!4161285))

(assert (=> b!3655589 d!1073597))

(declare-fun b!3655786 () Bool)

(declare-fun e!2263594 () Bool)

(assert (=> b!3655786 (= e!2263594 (= (head!7804 lt!1269947) (c!631790 (regex!5784 rule!403))))))

(declare-fun b!3655787 () Bool)

(declare-fun e!2263600 () Bool)

(declare-fun derivativeStep!3211 (Regex!10543 C!21272) Regex!10543)

(declare-fun tail!5660 (List!38691) List!38691)

(assert (=> b!3655787 (= e!2263600 (matchR!5112 (derivativeStep!3211 (regex!5784 rule!403) (head!7804 lt!1269947)) (tail!5660 lt!1269947)))))

(declare-fun b!3655788 () Bool)

(declare-fun e!2263596 () Bool)

(declare-fun lt!1270019 () Bool)

(declare-fun call!264350 () Bool)

(assert (=> b!3655788 (= e!2263596 (= lt!1270019 call!264350))))

(declare-fun b!3655789 () Bool)

(declare-fun res!1483627 () Bool)

(declare-fun e!2263598 () Bool)

(assert (=> b!3655789 (=> res!1483627 e!2263598)))

(assert (=> b!3655789 (= res!1483627 e!2263594)))

(declare-fun res!1483630 () Bool)

(assert (=> b!3655789 (=> (not res!1483630) (not e!2263594))))

(assert (=> b!3655789 (= res!1483630 lt!1270019)))

(declare-fun b!3655790 () Bool)

(declare-fun e!2263597 () Bool)

(assert (=> b!3655790 (= e!2263596 e!2263597)))

(declare-fun c!631834 () Bool)

(assert (=> b!3655790 (= c!631834 ((_ is EmptyLang!10543) (regex!5784 rule!403)))))

(declare-fun b!3655791 () Bool)

(declare-fun res!1483625 () Bool)

(assert (=> b!3655791 (=> (not res!1483625) (not e!2263594))))

(assert (=> b!3655791 (= res!1483625 (not call!264350))))

(declare-fun b!3655793 () Bool)

(declare-fun res!1483631 () Bool)

(assert (=> b!3655793 (=> (not res!1483631) (not e!2263594))))

(assert (=> b!3655793 (= res!1483631 (isEmpty!22864 (tail!5660 lt!1269947)))))

(declare-fun b!3655794 () Bool)

(declare-fun e!2263599 () Bool)

(assert (=> b!3655794 (= e!2263598 e!2263599)))

(declare-fun res!1483629 () Bool)

(assert (=> b!3655794 (=> (not res!1483629) (not e!2263599))))

(assert (=> b!3655794 (= res!1483629 (not lt!1270019))))

(declare-fun b!3655795 () Bool)

(declare-fun e!2263595 () Bool)

(assert (=> b!3655795 (= e!2263595 (not (= (head!7804 lt!1269947) (c!631790 (regex!5784 rule!403)))))))

(declare-fun b!3655796 () Bool)

(declare-fun res!1483628 () Bool)

(assert (=> b!3655796 (=> res!1483628 e!2263595)))

(assert (=> b!3655796 (= res!1483628 (not (isEmpty!22864 (tail!5660 lt!1269947))))))

(declare-fun b!3655797 () Bool)

(declare-fun nullable!3662 (Regex!10543) Bool)

(assert (=> b!3655797 (= e!2263600 (nullable!3662 (regex!5784 rule!403)))))

(declare-fun b!3655798 () Bool)

(assert (=> b!3655798 (= e!2263599 e!2263595)))

(declare-fun res!1483626 () Bool)

(assert (=> b!3655798 (=> res!1483626 e!2263595)))

(assert (=> b!3655798 (= res!1483626 call!264350)))

(declare-fun bm!264345 () Bool)

(assert (=> bm!264345 (= call!264350 (isEmpty!22864 lt!1269947))))

(declare-fun b!3655799 () Bool)

(assert (=> b!3655799 (= e!2263597 (not lt!1270019))))

(declare-fun b!3655792 () Bool)

(declare-fun res!1483624 () Bool)

(assert (=> b!3655792 (=> res!1483624 e!2263598)))

(assert (=> b!3655792 (= res!1483624 (not ((_ is ElementMatch!10543) (regex!5784 rule!403))))))

(assert (=> b!3655792 (= e!2263597 e!2263598)))

(declare-fun d!1073603 () Bool)

(assert (=> d!1073603 e!2263596))

(declare-fun c!631835 () Bool)

(assert (=> d!1073603 (= c!631835 ((_ is EmptyExpr!10543) (regex!5784 rule!403)))))

(assert (=> d!1073603 (= lt!1270019 e!2263600)))

(declare-fun c!631836 () Bool)

(assert (=> d!1073603 (= c!631836 (isEmpty!22864 lt!1269947))))

(declare-fun validRegex!4824 (Regex!10543) Bool)

(assert (=> d!1073603 (validRegex!4824 (regex!5784 rule!403))))

(assert (=> d!1073603 (= (matchR!5112 (regex!5784 rule!403) lt!1269947) lt!1270019)))

(assert (= (and d!1073603 c!631836) b!3655797))

(assert (= (and d!1073603 (not c!631836)) b!3655787))

(assert (= (and d!1073603 c!631835) b!3655788))

(assert (= (and d!1073603 (not c!631835)) b!3655790))

(assert (= (and b!3655790 c!631834) b!3655799))

(assert (= (and b!3655790 (not c!631834)) b!3655792))

(assert (= (and b!3655792 (not res!1483624)) b!3655789))

(assert (= (and b!3655789 res!1483630) b!3655791))

(assert (= (and b!3655791 res!1483625) b!3655793))

(assert (= (and b!3655793 res!1483631) b!3655786))

(assert (= (and b!3655789 (not res!1483627)) b!3655794))

(assert (= (and b!3655794 res!1483629) b!3655798))

(assert (= (and b!3655798 (not res!1483626)) b!3655796))

(assert (= (and b!3655796 (not res!1483628)) b!3655795))

(assert (= (or b!3655788 b!3655791 b!3655798) bm!264345))

(declare-fun m!4161295 () Bool)

(assert (=> b!3655795 m!4161295))

(declare-fun m!4161297 () Bool)

(assert (=> b!3655797 m!4161297))

(assert (=> b!3655787 m!4161295))

(assert (=> b!3655787 m!4161295))

(declare-fun m!4161299 () Bool)

(assert (=> b!3655787 m!4161299))

(declare-fun m!4161301 () Bool)

(assert (=> b!3655787 m!4161301))

(assert (=> b!3655787 m!4161299))

(assert (=> b!3655787 m!4161301))

(declare-fun m!4161303 () Bool)

(assert (=> b!3655787 m!4161303))

(assert (=> b!3655786 m!4161295))

(assert (=> b!3655793 m!4161301))

(assert (=> b!3655793 m!4161301))

(declare-fun m!4161305 () Bool)

(assert (=> b!3655793 m!4161305))

(assert (=> b!3655796 m!4161301))

(assert (=> b!3655796 m!4161301))

(assert (=> b!3655796 m!4161305))

(declare-fun m!4161307 () Bool)

(assert (=> bm!264345 m!4161307))

(assert (=> d!1073603 m!4161307))

(declare-fun m!4161309 () Bool)

(assert (=> d!1073603 m!4161309))

(assert (=> b!3655574 d!1073603))

(declare-fun d!1073613 () Bool)

(declare-fun res!1483639 () Bool)

(declare-fun e!2263606 () Bool)

(assert (=> d!1073613 (=> (not res!1483639) (not e!2263606))))

(assert (=> d!1073613 (= res!1483639 (validRegex!4824 (regex!5784 rule!403)))))

(assert (=> d!1073613 (= (ruleValid!2048 thiss!23823 rule!403) e!2263606)))

(declare-fun b!3655807 () Bool)

(declare-fun res!1483640 () Bool)

(assert (=> b!3655807 (=> (not res!1483640) (not e!2263606))))

(assert (=> b!3655807 (= res!1483640 (not (nullable!3662 (regex!5784 rule!403))))))

(declare-fun b!3655808 () Bool)

(assert (=> b!3655808 (= e!2263606 (not (= (tag!6554 rule!403) (String!43405 ""))))))

(assert (= (and d!1073613 res!1483639) b!3655807))

(assert (= (and b!3655807 res!1483640) b!3655808))

(assert (=> d!1073613 m!4161309))

(assert (=> b!3655807 m!4161297))

(assert (=> b!3655574 d!1073613))

(declare-fun d!1073617 () Bool)

(assert (=> d!1073617 (ruleValid!2048 thiss!23823 rule!403)))

(declare-fun lt!1270027 () Unit!55719)

(declare-fun choose!21576 (LexerInterface!5373 Rule!11368 List!38693) Unit!55719)

(assert (=> d!1073617 (= lt!1270027 (choose!21576 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1073617 (contains!7633 rules!3307 rule!403)))

(assert (=> d!1073617 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1202 thiss!23823 rule!403 rules!3307) lt!1270027)))

(declare-fun bs!572394 () Bool)

(assert (= bs!572394 d!1073617))

(assert (=> bs!572394 m!4161083))

(declare-fun m!4161329 () Bool)

(assert (=> bs!572394 m!4161329))

(assert (=> bs!572394 m!4161007))

(assert (=> b!3655574 d!1073617))

(declare-fun d!1073625 () Bool)

(assert (=> d!1073625 (not (contains!7634 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269939))))

(declare-fun lt!1270034 () Unit!55719)

(declare-fun choose!21577 (LexerInterface!5373 List!38693 List!38693 Rule!11368 Rule!11368 C!21272) Unit!55719)

(assert (=> d!1073625 (= lt!1270034 (choose!21577 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8588 (_1!22348 lt!1269945)) lt!1269939))))

(assert (=> d!1073625 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073625 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!312 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8588 (_1!22348 lt!1269945)) lt!1269939) lt!1270034)))

(declare-fun bs!572396 () Bool)

(assert (= bs!572396 d!1073625))

(assert (=> bs!572396 m!4160961))

(assert (=> bs!572396 m!4160961))

(declare-fun m!4161341 () Bool)

(assert (=> bs!572396 m!4161341))

(declare-fun m!4161343 () Bool)

(assert (=> bs!572396 m!4161343))

(assert (=> bs!572396 m!4161005))

(assert (=> b!3655575 d!1073625))

(declare-fun d!1073631 () Bool)

(declare-fun lt!1270035 () Bool)

(assert (=> d!1073631 (= lt!1270035 (select (content!5566 rules!3307) rule!403))))

(declare-fun e!2263614 () Bool)

(assert (=> d!1073631 (= lt!1270035 e!2263614)))

(declare-fun res!1483648 () Bool)

(assert (=> d!1073631 (=> (not res!1483648) (not e!2263614))))

(assert (=> d!1073631 (= res!1483648 ((_ is Cons!38569) rules!3307))))

(assert (=> d!1073631 (= (contains!7633 rules!3307 rule!403) lt!1270035)))

(declare-fun b!3655815 () Bool)

(declare-fun e!2263613 () Bool)

(assert (=> b!3655815 (= e!2263614 e!2263613)))

(declare-fun res!1483647 () Bool)

(assert (=> b!3655815 (=> res!1483647 e!2263613)))

(assert (=> b!3655815 (= res!1483647 (= (h!43989 rules!3307) rule!403))))

(declare-fun b!3655816 () Bool)

(assert (=> b!3655816 (= e!2263613 (contains!7633 (t!297916 rules!3307) rule!403))))

(assert (= (and d!1073631 res!1483648) b!3655815))

(assert (= (and b!3655815 (not res!1483647)) b!3655816))

(assert (=> d!1073631 m!4161267))

(declare-fun m!4161345 () Bool)

(assert (=> d!1073631 m!4161345))

(declare-fun m!4161347 () Bool)

(assert (=> b!3655816 m!4161347))

(assert (=> b!3655593 d!1073631))

(declare-fun d!1073633 () Bool)

(declare-fun lt!1270038 () Bool)

(declare-fun content!5567 (List!38691) (InoxSet C!21272))

(assert (=> d!1073633 (= lt!1270038 (select (content!5567 lt!1269958) lt!1269948))))

(declare-fun e!2263628 () Bool)

(assert (=> d!1073633 (= lt!1270038 e!2263628)))

(declare-fun res!1483656 () Bool)

(assert (=> d!1073633 (=> (not res!1483656) (not e!2263628))))

(assert (=> d!1073633 (= res!1483656 ((_ is Cons!38567) lt!1269958))))

(assert (=> d!1073633 (= (contains!7634 lt!1269958 lt!1269948) lt!1270038)))

(declare-fun b!3655836 () Bool)

(declare-fun e!2263629 () Bool)

(assert (=> b!3655836 (= e!2263628 e!2263629)))

(declare-fun res!1483657 () Bool)

(assert (=> b!3655836 (=> res!1483657 e!2263629)))

(assert (=> b!3655836 (= res!1483657 (= (h!43987 lt!1269958) lt!1269948))))

(declare-fun b!3655837 () Bool)

(assert (=> b!3655837 (= e!2263629 (contains!7634 (t!297914 lt!1269958) lt!1269948))))

(assert (= (and d!1073633 res!1483656) b!3655836))

(assert (= (and b!3655836 (not res!1483657)) b!3655837))

(declare-fun m!4161355 () Bool)

(assert (=> d!1073633 m!4161355))

(declare-fun m!4161357 () Bool)

(assert (=> d!1073633 m!4161357))

(declare-fun m!4161359 () Bool)

(assert (=> b!3655837 m!4161359))

(assert (=> b!3655573 d!1073633))

(declare-fun d!1073639 () Bool)

(assert (=> d!1073639 (= (head!7804 suffix!1395) (h!43987 suffix!1395))))

(assert (=> b!3655573 d!1073639))

(declare-fun b!3655838 () Bool)

(declare-fun e!2263632 () List!38691)

(declare-fun call!264352 () List!38691)

(assert (=> b!3655838 (= e!2263632 call!264352)))

(declare-fun bm!264346 () Bool)

(declare-fun call!264353 () List!38691)

(assert (=> bm!264346 (= call!264353 call!264352)))

(declare-fun b!3655841 () Bool)

(declare-fun e!2263633 () List!38691)

(declare-fun call!264354 () List!38691)

(assert (=> b!3655841 (= e!2263633 call!264354)))

(declare-fun bm!264347 () Bool)

(declare-fun call!264351 () List!38691)

(declare-fun c!631846 () Bool)

(assert (=> bm!264347 (= call!264351 (usedCharacters!996 (ite c!631846 (regOne!21599 (regex!5784 rule!403)) (regTwo!21598 (regex!5784 rule!403)))))))

(declare-fun d!1073641 () Bool)

(declare-fun c!631845 () Bool)

(assert (=> d!1073641 (= c!631845 (or ((_ is EmptyExpr!10543) (regex!5784 rule!403)) ((_ is EmptyLang!10543) (regex!5784 rule!403))))))

(declare-fun e!2263631 () List!38691)

(assert (=> d!1073641 (= (usedCharacters!996 (regex!5784 rule!403)) e!2263631)))

(declare-fun b!3655842 () Bool)

(assert (=> b!3655842 (= e!2263632 e!2263633)))

(assert (=> b!3655842 (= c!631846 ((_ is Union!10543) (regex!5784 rule!403)))))

(declare-fun bm!264348 () Bool)

(declare-fun c!631848 () Bool)

(assert (=> bm!264348 (= call!264352 (usedCharacters!996 (ite c!631848 (reg!10872 (regex!5784 rule!403)) (ite c!631846 (regTwo!21599 (regex!5784 rule!403)) (regOne!21598 (regex!5784 rule!403))))))))

(declare-fun b!3655844 () Bool)

(assert (=> b!3655844 (= c!631848 ((_ is Star!10543) (regex!5784 rule!403)))))

(declare-fun e!2263630 () List!38691)

(assert (=> b!3655844 (= e!2263630 e!2263632)))

(declare-fun b!3655846 () Bool)

(assert (=> b!3655846 (= e!2263631 Nil!38567)))

(declare-fun b!3655847 () Bool)

(assert (=> b!3655847 (= e!2263630 (Cons!38567 (c!631790 (regex!5784 rule!403)) Nil!38567))))

(declare-fun b!3655848 () Bool)

(assert (=> b!3655848 (= e!2263633 call!264354)))

(declare-fun b!3655849 () Bool)

(assert (=> b!3655849 (= e!2263631 e!2263630)))

(declare-fun c!631847 () Bool)

(assert (=> b!3655849 (= c!631847 ((_ is ElementMatch!10543) (regex!5784 rule!403)))))

(declare-fun bm!264349 () Bool)

(assert (=> bm!264349 (= call!264354 (++!9600 (ite c!631846 call!264351 call!264353) (ite c!631846 call!264353 call!264351)))))

(assert (= (and d!1073641 c!631845) b!3655846))

(assert (= (and d!1073641 (not c!631845)) b!3655849))

(assert (= (and b!3655849 c!631847) b!3655847))

(assert (= (and b!3655849 (not c!631847)) b!3655844))

(assert (= (and b!3655844 c!631848) b!3655838))

(assert (= (and b!3655844 (not c!631848)) b!3655842))

(assert (= (and b!3655842 c!631846) b!3655841))

(assert (= (and b!3655842 (not c!631846)) b!3655848))

(assert (= (or b!3655841 b!3655848) bm!264347))

(assert (= (or b!3655841 b!3655848) bm!264346))

(assert (= (or b!3655841 b!3655848) bm!264349))

(assert (= (or b!3655838 bm!264346) bm!264348))

(declare-fun m!4161361 () Bool)

(assert (=> bm!264347 m!4161361))

(declare-fun m!4161363 () Bool)

(assert (=> bm!264348 m!4161363))

(declare-fun m!4161365 () Bool)

(assert (=> bm!264349 m!4161365))

(assert (=> b!3655573 d!1073641))

(declare-fun d!1073643 () Bool)

(assert (=> d!1073643 (contains!7634 lt!1269919 (head!7804 suffix!1395))))

(declare-fun lt!1270044 () Unit!55719)

(declare-fun choose!21579 (List!38691 List!38691 List!38691 List!38691) Unit!55719)

(assert (=> d!1073643 (= lt!1270044 (choose!21579 lt!1269947 suffix!1395 lt!1269919 lt!1269952))))

(assert (=> d!1073643 (isPrefix!3147 lt!1269919 lt!1269952)))

(assert (=> d!1073643 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!92 lt!1269947 suffix!1395 lt!1269919 lt!1269952) lt!1270044)))

(declare-fun bs!572397 () Bool)

(assert (= bs!572397 d!1073643))

(assert (=> bs!572397 m!4160971))

(assert (=> bs!572397 m!4160971))

(declare-fun m!4161369 () Bool)

(assert (=> bs!572397 m!4161369))

(declare-fun m!4161371 () Bool)

(assert (=> bs!572397 m!4161371))

(assert (=> bs!572397 m!4161047))

(assert (=> b!3655591 d!1073643))

(declare-fun d!1073647 () Bool)

(declare-fun lt!1270045 () Bool)

(assert (=> d!1073647 (= lt!1270045 (select (content!5567 lt!1269919) lt!1269948))))

(declare-fun e!2263637 () Bool)

(assert (=> d!1073647 (= lt!1270045 e!2263637)))

(declare-fun res!1483658 () Bool)

(assert (=> d!1073647 (=> (not res!1483658) (not e!2263637))))

(assert (=> d!1073647 (= res!1483658 ((_ is Cons!38567) lt!1269919))))

(assert (=> d!1073647 (= (contains!7634 lt!1269919 lt!1269948) lt!1270045)))

(declare-fun b!3655852 () Bool)

(declare-fun e!2263638 () Bool)

(assert (=> b!3655852 (= e!2263637 e!2263638)))

(declare-fun res!1483659 () Bool)

(assert (=> b!3655852 (=> res!1483659 e!2263638)))

(assert (=> b!3655852 (= res!1483659 (= (h!43987 lt!1269919) lt!1269948))))

(declare-fun b!3655853 () Bool)

(assert (=> b!3655853 (= e!2263638 (contains!7634 (t!297914 lt!1269919) lt!1269948))))

(assert (= (and d!1073647 res!1483658) b!3655852))

(assert (= (and b!3655852 (not res!1483659)) b!3655853))

(declare-fun m!4161373 () Bool)

(assert (=> d!1073647 m!4161373))

(declare-fun m!4161375 () Bool)

(assert (=> d!1073647 m!4161375))

(declare-fun m!4161377 () Bool)

(assert (=> b!3655853 m!4161377))

(assert (=> b!3655591 d!1073647))

(declare-fun d!1073649 () Bool)

(declare-fun lt!1270046 () Bool)

(assert (=> d!1073649 (= lt!1270046 (select (content!5567 call!264312) lt!1269939))))

(declare-fun e!2263639 () Bool)

(assert (=> d!1073649 (= lt!1270046 e!2263639)))

(declare-fun res!1483660 () Bool)

(assert (=> d!1073649 (=> (not res!1483660) (not e!2263639))))

(assert (=> d!1073649 (= res!1483660 ((_ is Cons!38567) call!264312))))

(assert (=> d!1073649 (= (contains!7634 call!264312 lt!1269939) lt!1270046)))

(declare-fun b!3655854 () Bool)

(declare-fun e!2263640 () Bool)

(assert (=> b!3655854 (= e!2263639 e!2263640)))

(declare-fun res!1483661 () Bool)

(assert (=> b!3655854 (=> res!1483661 e!2263640)))

(assert (=> b!3655854 (= res!1483661 (= (h!43987 call!264312) lt!1269939))))

(declare-fun b!3655855 () Bool)

(assert (=> b!3655855 (= e!2263640 (contains!7634 (t!297914 call!264312) lt!1269939))))

(assert (= (and d!1073649 res!1483660) b!3655854))

(assert (= (and b!3655854 (not res!1483661)) b!3655855))

(declare-fun m!4161379 () Bool)

(assert (=> d!1073649 m!4161379))

(declare-fun m!4161381 () Bool)

(assert (=> d!1073649 m!4161381))

(declare-fun m!4161383 () Bool)

(assert (=> b!3655855 m!4161383))

(assert (=> bm!264306 d!1073649))

(declare-fun b!3655867 () Bool)

(declare-fun e!2263647 () Bool)

(assert (=> b!3655867 (= e!2263647 (>= (size!29462 lt!1269952) (size!29462 lt!1269919)))))

(declare-fun b!3655865 () Bool)

(declare-fun res!1483670 () Bool)

(declare-fun e!2263649 () Bool)

(assert (=> b!3655865 (=> (not res!1483670) (not e!2263649))))

(assert (=> b!3655865 (= res!1483670 (= (head!7804 lt!1269919) (head!7804 lt!1269952)))))

(declare-fun b!3655864 () Bool)

(declare-fun e!2263648 () Bool)

(assert (=> b!3655864 (= e!2263648 e!2263649)))

(declare-fun res!1483671 () Bool)

(assert (=> b!3655864 (=> (not res!1483671) (not e!2263649))))

(assert (=> b!3655864 (= res!1483671 (not ((_ is Nil!38567) lt!1269952)))))

(declare-fun b!3655866 () Bool)

(assert (=> b!3655866 (= e!2263649 (isPrefix!3147 (tail!5660 lt!1269919) (tail!5660 lt!1269952)))))

(declare-fun d!1073651 () Bool)

(assert (=> d!1073651 e!2263647))

(declare-fun res!1483672 () Bool)

(assert (=> d!1073651 (=> res!1483672 e!2263647)))

(declare-fun lt!1270049 () Bool)

(assert (=> d!1073651 (= res!1483672 (not lt!1270049))))

(assert (=> d!1073651 (= lt!1270049 e!2263648)))

(declare-fun res!1483673 () Bool)

(assert (=> d!1073651 (=> res!1483673 e!2263648)))

(assert (=> d!1073651 (= res!1483673 ((_ is Nil!38567) lt!1269919))))

(assert (=> d!1073651 (= (isPrefix!3147 lt!1269919 lt!1269952) lt!1270049)))

(assert (= (and d!1073651 (not res!1483673)) b!3655864))

(assert (= (and b!3655864 res!1483671) b!3655865))

(assert (= (and b!3655865 res!1483670) b!3655866))

(assert (= (and d!1073651 (not res!1483672)) b!3655867))

(declare-fun m!4161385 () Bool)

(assert (=> b!3655867 m!4161385))

(assert (=> b!3655867 m!4161101))

(assert (=> b!3655865 m!4161079))

(declare-fun m!4161387 () Bool)

(assert (=> b!3655865 m!4161387))

(declare-fun m!4161389 () Bool)

(assert (=> b!3655866 m!4161389))

(declare-fun m!4161391 () Bool)

(assert (=> b!3655866 m!4161391))

(assert (=> b!3655866 m!4161389))

(assert (=> b!3655866 m!4161391))

(declare-fun m!4161393 () Bool)

(assert (=> b!3655866 m!4161393))

(assert (=> b!3655595 d!1073651))

(declare-fun d!1073653 () Bool)

(assert (=> d!1073653 (isPrefix!3147 lt!1269947 (++!9600 lt!1269947 suffix!1395))))

(declare-fun lt!1270058 () Unit!55719)

(declare-fun choose!21580 (List!38691 List!38691) Unit!55719)

(assert (=> d!1073653 (= lt!1270058 (choose!21580 lt!1269947 suffix!1395))))

(assert (=> d!1073653 (= (lemmaConcatTwoListThenFirstIsPrefix!2066 lt!1269947 suffix!1395) lt!1270058)))

(declare-fun bs!572398 () Bool)

(assert (= bs!572398 d!1073653))

(assert (=> bs!572398 m!4161049))

(assert (=> bs!572398 m!4161049))

(declare-fun m!4161395 () Bool)

(assert (=> bs!572398 m!4161395))

(declare-fun m!4161397 () Bool)

(assert (=> bs!572398 m!4161397))

(assert (=> b!3655595 d!1073653))

(declare-fun b!3655883 () Bool)

(declare-fun e!2263658 () Bool)

(assert (=> b!3655883 (= e!2263658 (>= (size!29462 (++!9600 lt!1269919 (_2!22348 lt!1269945))) (size!29462 lt!1269919)))))

(declare-fun b!3655881 () Bool)

(declare-fun res!1483678 () Bool)

(declare-fun e!2263660 () Bool)

(assert (=> b!3655881 (=> (not res!1483678) (not e!2263660))))

(assert (=> b!3655881 (= res!1483678 (= (head!7804 lt!1269919) (head!7804 (++!9600 lt!1269919 (_2!22348 lt!1269945)))))))

(declare-fun b!3655880 () Bool)

(declare-fun e!2263659 () Bool)

(assert (=> b!3655880 (= e!2263659 e!2263660)))

(declare-fun res!1483679 () Bool)

(assert (=> b!3655880 (=> (not res!1483679) (not e!2263660))))

(assert (=> b!3655880 (= res!1483679 (not ((_ is Nil!38567) (++!9600 lt!1269919 (_2!22348 lt!1269945)))))))

(declare-fun b!3655882 () Bool)

(assert (=> b!3655882 (= e!2263660 (isPrefix!3147 (tail!5660 lt!1269919) (tail!5660 (++!9600 lt!1269919 (_2!22348 lt!1269945)))))))

(declare-fun d!1073655 () Bool)

(assert (=> d!1073655 e!2263658))

(declare-fun res!1483680 () Bool)

(assert (=> d!1073655 (=> res!1483680 e!2263658)))

(declare-fun lt!1270059 () Bool)

(assert (=> d!1073655 (= res!1483680 (not lt!1270059))))

(assert (=> d!1073655 (= lt!1270059 e!2263659)))

(declare-fun res!1483681 () Bool)

(assert (=> d!1073655 (=> res!1483681 e!2263659)))

(assert (=> d!1073655 (= res!1483681 ((_ is Nil!38567) lt!1269919))))

(assert (=> d!1073655 (= (isPrefix!3147 lt!1269919 (++!9600 lt!1269919 (_2!22348 lt!1269945))) lt!1270059)))

(assert (= (and d!1073655 (not res!1483681)) b!3655880))

(assert (= (and b!3655880 res!1483679) b!3655881))

(assert (= (and b!3655881 res!1483678) b!3655882))

(assert (= (and d!1073655 (not res!1483680)) b!3655883))

(assert (=> b!3655883 m!4161055))

(declare-fun m!4161399 () Bool)

(assert (=> b!3655883 m!4161399))

(assert (=> b!3655883 m!4161101))

(assert (=> b!3655881 m!4161079))

(assert (=> b!3655881 m!4161055))

(declare-fun m!4161401 () Bool)

(assert (=> b!3655881 m!4161401))

(assert (=> b!3655882 m!4161389))

(assert (=> b!3655882 m!4161055))

(declare-fun m!4161403 () Bool)

(assert (=> b!3655882 m!4161403))

(assert (=> b!3655882 m!4161389))

(assert (=> b!3655882 m!4161403))

(declare-fun m!4161405 () Bool)

(assert (=> b!3655882 m!4161405))

(assert (=> b!3655595 d!1073655))

(declare-fun d!1073657 () Bool)

(assert (=> d!1073657 (isPrefix!3147 lt!1269919 (++!9600 lt!1269919 (_2!22348 lt!1269945)))))

(declare-fun lt!1270060 () Unit!55719)

(assert (=> d!1073657 (= lt!1270060 (choose!21580 lt!1269919 (_2!22348 lt!1269945)))))

(assert (=> d!1073657 (= (lemmaConcatTwoListThenFirstIsPrefix!2066 lt!1269919 (_2!22348 lt!1269945)) lt!1270060)))

(declare-fun bs!572399 () Bool)

(assert (= bs!572399 d!1073657))

(assert (=> bs!572399 m!4161055))

(assert (=> bs!572399 m!4161055))

(assert (=> bs!572399 m!4161057))

(declare-fun m!4161407 () Bool)

(assert (=> bs!572399 m!4161407))

(assert (=> b!3655595 d!1073657))

(declare-fun b!3655920 () Bool)

(declare-fun res!1483706 () Bool)

(declare-fun e!2263679 () Bool)

(assert (=> b!3655920 (=> (not res!1483706) (not e!2263679))))

(declare-fun lt!1270080 () Option!8196)

(assert (=> b!3655920 (= res!1483706 (= (value!185304 (_1!22348 (get!12699 lt!1270080))) (apply!9286 (transformation!5784 (rule!8588 (_1!22348 (get!12699 lt!1270080)))) (seqFromList!4333 (originalCharacters!6498 (_1!22348 (get!12699 lt!1270080)))))))))

(declare-fun b!3655921 () Bool)

(declare-fun e!2263677 () Option!8196)

(declare-fun lt!1270082 () Option!8196)

(declare-fun lt!1270083 () Option!8196)

(assert (=> b!3655921 (= e!2263677 (ite (and ((_ is None!8195) lt!1270082) ((_ is None!8195) lt!1270083)) None!8195 (ite ((_ is None!8195) lt!1270083) lt!1270082 (ite ((_ is None!8195) lt!1270082) lt!1270083 (ite (>= (size!29461 (_1!22348 (v!38067 lt!1270082))) (size!29461 (_1!22348 (v!38067 lt!1270083)))) lt!1270082 lt!1270083)))))))

(declare-fun call!264357 () Option!8196)

(assert (=> b!3655921 (= lt!1270082 call!264357)))

(assert (=> b!3655921 (= lt!1270083 (maxPrefix!2907 thiss!23823 (t!297916 rules!3307) lt!1269952))))

(declare-fun b!3655922 () Bool)

(declare-fun res!1483705 () Bool)

(assert (=> b!3655922 (=> (not res!1483705) (not e!2263679))))

(assert (=> b!3655922 (= res!1483705 (matchR!5112 (regex!5784 (rule!8588 (_1!22348 (get!12699 lt!1270080)))) (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270080))))))))

(declare-fun b!3655923 () Bool)

(declare-fun res!1483707 () Bool)

(assert (=> b!3655923 (=> (not res!1483707) (not e!2263679))))

(assert (=> b!3655923 (= res!1483707 (= (++!9600 (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270080)))) (_2!22348 (get!12699 lt!1270080))) lt!1269952))))

(declare-fun b!3655924 () Bool)

(declare-fun res!1483710 () Bool)

(assert (=> b!3655924 (=> (not res!1483710) (not e!2263679))))

(assert (=> b!3655924 (= res!1483710 (< (size!29462 (_2!22348 (get!12699 lt!1270080))) (size!29462 lt!1269952)))))

(declare-fun b!3655925 () Bool)

(declare-fun res!1483708 () Bool)

(assert (=> b!3655925 (=> (not res!1483708) (not e!2263679))))

(assert (=> b!3655925 (= res!1483708 (= (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270080)))) (originalCharacters!6498 (_1!22348 (get!12699 lt!1270080)))))))

(declare-fun bm!264352 () Bool)

(assert (=> bm!264352 (= call!264357 (maxPrefixOneRule!2045 thiss!23823 (h!43989 rules!3307) lt!1269952))))

(declare-fun b!3655926 () Bool)

(declare-fun e!2263678 () Bool)

(assert (=> b!3655926 (= e!2263678 e!2263679)))

(declare-fun res!1483709 () Bool)

(assert (=> b!3655926 (=> (not res!1483709) (not e!2263679))))

(assert (=> b!3655926 (= res!1483709 (isDefined!6428 lt!1270080))))

(declare-fun b!3655927 () Bool)

(assert (=> b!3655927 (= e!2263679 (contains!7633 rules!3307 (rule!8588 (_1!22348 (get!12699 lt!1270080)))))))

(declare-fun d!1073659 () Bool)

(assert (=> d!1073659 e!2263678))

(declare-fun res!1483704 () Bool)

(assert (=> d!1073659 (=> res!1483704 e!2263678)))

(declare-fun isEmpty!22868 (Option!8196) Bool)

(assert (=> d!1073659 (= res!1483704 (isEmpty!22868 lt!1270080))))

(assert (=> d!1073659 (= lt!1270080 e!2263677)))

(declare-fun c!631863 () Bool)

(assert (=> d!1073659 (= c!631863 (and ((_ is Cons!38569) rules!3307) ((_ is Nil!38569) (t!297916 rules!3307))))))

(declare-fun lt!1270084 () Unit!55719)

(declare-fun lt!1270081 () Unit!55719)

(assert (=> d!1073659 (= lt!1270084 lt!1270081)))

(assert (=> d!1073659 (isPrefix!3147 lt!1269952 lt!1269952)))

(assert (=> d!1073659 (= lt!1270081 (lemmaIsPrefixRefl!1986 lt!1269952 lt!1269952))))

(declare-fun rulesValidInductive!2049 (LexerInterface!5373 List!38693) Bool)

(assert (=> d!1073659 (rulesValidInductive!2049 thiss!23823 rules!3307)))

(assert (=> d!1073659 (= (maxPrefix!2907 thiss!23823 rules!3307 lt!1269952) lt!1270080)))

(declare-fun b!3655928 () Bool)

(assert (=> b!3655928 (= e!2263677 call!264357)))

(assert (= (and d!1073659 c!631863) b!3655928))

(assert (= (and d!1073659 (not c!631863)) b!3655921))

(assert (= (or b!3655928 b!3655921) bm!264352))

(assert (= (and d!1073659 (not res!1483704)) b!3655926))

(assert (= (and b!3655926 res!1483709) b!3655925))

(assert (= (and b!3655925 res!1483708) b!3655924))

(assert (= (and b!3655924 res!1483710) b!3655923))

(assert (= (and b!3655923 res!1483707) b!3655920))

(assert (= (and b!3655920 res!1483706) b!3655922))

(assert (= (and b!3655922 res!1483705) b!3655927))

(declare-fun m!4161435 () Bool)

(assert (=> bm!264352 m!4161435))

(declare-fun m!4161437 () Bool)

(assert (=> b!3655921 m!4161437))

(declare-fun m!4161439 () Bool)

(assert (=> b!3655925 m!4161439))

(declare-fun m!4161441 () Bool)

(assert (=> b!3655925 m!4161441))

(assert (=> b!3655925 m!4161441))

(declare-fun m!4161443 () Bool)

(assert (=> b!3655925 m!4161443))

(declare-fun m!4161445 () Bool)

(assert (=> b!3655926 m!4161445))

(declare-fun m!4161447 () Bool)

(assert (=> d!1073659 m!4161447))

(assert (=> d!1073659 m!4161109))

(assert (=> d!1073659 m!4161105))

(declare-fun m!4161449 () Bool)

(assert (=> d!1073659 m!4161449))

(assert (=> b!3655927 m!4161439))

(declare-fun m!4161451 () Bool)

(assert (=> b!3655927 m!4161451))

(assert (=> b!3655923 m!4161439))

(assert (=> b!3655923 m!4161441))

(assert (=> b!3655923 m!4161441))

(assert (=> b!3655923 m!4161443))

(assert (=> b!3655923 m!4161443))

(declare-fun m!4161453 () Bool)

(assert (=> b!3655923 m!4161453))

(assert (=> b!3655924 m!4161439))

(declare-fun m!4161455 () Bool)

(assert (=> b!3655924 m!4161455))

(assert (=> b!3655924 m!4161385))

(assert (=> b!3655920 m!4161439))

(declare-fun m!4161457 () Bool)

(assert (=> b!3655920 m!4161457))

(assert (=> b!3655920 m!4161457))

(declare-fun m!4161459 () Bool)

(assert (=> b!3655920 m!4161459))

(assert (=> b!3655922 m!4161439))

(assert (=> b!3655922 m!4161441))

(assert (=> b!3655922 m!4161441))

(assert (=> b!3655922 m!4161443))

(assert (=> b!3655922 m!4161443))

(declare-fun m!4161461 () Bool)

(assert (=> b!3655922 m!4161461))

(assert (=> b!3655595 d!1073659))

(declare-fun b!3655932 () Bool)

(declare-fun e!2263680 () Bool)

(assert (=> b!3655932 (= e!2263680 (>= (size!29462 lt!1269952) (size!29462 lt!1269947)))))

(declare-fun b!3655930 () Bool)

(declare-fun res!1483711 () Bool)

(declare-fun e!2263682 () Bool)

(assert (=> b!3655930 (=> (not res!1483711) (not e!2263682))))

(assert (=> b!3655930 (= res!1483711 (= (head!7804 lt!1269947) (head!7804 lt!1269952)))))

(declare-fun b!3655929 () Bool)

(declare-fun e!2263681 () Bool)

(assert (=> b!3655929 (= e!2263681 e!2263682)))

(declare-fun res!1483712 () Bool)

(assert (=> b!3655929 (=> (not res!1483712) (not e!2263682))))

(assert (=> b!3655929 (= res!1483712 (not ((_ is Nil!38567) lt!1269952)))))

(declare-fun b!3655931 () Bool)

(assert (=> b!3655931 (= e!2263682 (isPrefix!3147 (tail!5660 lt!1269947) (tail!5660 lt!1269952)))))

(declare-fun d!1073667 () Bool)

(assert (=> d!1073667 e!2263680))

(declare-fun res!1483713 () Bool)

(assert (=> d!1073667 (=> res!1483713 e!2263680)))

(declare-fun lt!1270085 () Bool)

(assert (=> d!1073667 (= res!1483713 (not lt!1270085))))

(assert (=> d!1073667 (= lt!1270085 e!2263681)))

(declare-fun res!1483714 () Bool)

(assert (=> d!1073667 (=> res!1483714 e!2263681)))

(assert (=> d!1073667 (= res!1483714 ((_ is Nil!38567) lt!1269947))))

(assert (=> d!1073667 (= (isPrefix!3147 lt!1269947 lt!1269952) lt!1270085)))

(assert (= (and d!1073667 (not res!1483714)) b!3655929))

(assert (= (and b!3655929 res!1483712) b!3655930))

(assert (= (and b!3655930 res!1483711) b!3655931))

(assert (= (and d!1073667 (not res!1483713)) b!3655932))

(assert (=> b!3655932 m!4161385))

(assert (=> b!3655932 m!4160975))

(assert (=> b!3655930 m!4161295))

(assert (=> b!3655930 m!4161387))

(assert (=> b!3655931 m!4161301))

(assert (=> b!3655931 m!4161391))

(assert (=> b!3655931 m!4161301))

(assert (=> b!3655931 m!4161391))

(declare-fun m!4161463 () Bool)

(assert (=> b!3655931 m!4161463))

(assert (=> b!3655595 d!1073667))

(declare-fun b!3655942 () Bool)

(declare-fun e!2263688 () List!38691)

(assert (=> b!3655942 (= e!2263688 (Cons!38567 (h!43987 lt!1269919) (++!9600 (t!297914 lt!1269919) (_2!22348 lt!1269945))))))

(declare-fun b!3655941 () Bool)

(assert (=> b!3655941 (= e!2263688 (_2!22348 lt!1269945))))

(declare-fun b!3655943 () Bool)

(declare-fun res!1483719 () Bool)

(declare-fun e!2263687 () Bool)

(assert (=> b!3655943 (=> (not res!1483719) (not e!2263687))))

(declare-fun lt!1270088 () List!38691)

(assert (=> b!3655943 (= res!1483719 (= (size!29462 lt!1270088) (+ (size!29462 lt!1269919) (size!29462 (_2!22348 lt!1269945)))))))

(declare-fun d!1073669 () Bool)

(assert (=> d!1073669 e!2263687))

(declare-fun res!1483720 () Bool)

(assert (=> d!1073669 (=> (not res!1483720) (not e!2263687))))

(assert (=> d!1073669 (= res!1483720 (= (content!5567 lt!1270088) ((_ map or) (content!5567 lt!1269919) (content!5567 (_2!22348 lt!1269945)))))))

(assert (=> d!1073669 (= lt!1270088 e!2263688)))

(declare-fun c!631866 () Bool)

(assert (=> d!1073669 (= c!631866 ((_ is Nil!38567) lt!1269919))))

(assert (=> d!1073669 (= (++!9600 lt!1269919 (_2!22348 lt!1269945)) lt!1270088)))

(declare-fun b!3655944 () Bool)

(assert (=> b!3655944 (= e!2263687 (or (not (= (_2!22348 lt!1269945) Nil!38567)) (= lt!1270088 lt!1269919)))))

(assert (= (and d!1073669 c!631866) b!3655941))

(assert (= (and d!1073669 (not c!631866)) b!3655942))

(assert (= (and d!1073669 res!1483720) b!3655943))

(assert (= (and b!3655943 res!1483719) b!3655944))

(declare-fun m!4161465 () Bool)

(assert (=> b!3655942 m!4161465))

(declare-fun m!4161467 () Bool)

(assert (=> b!3655943 m!4161467))

(assert (=> b!3655943 m!4161101))

(declare-fun m!4161469 () Bool)

(assert (=> b!3655943 m!4161469))

(declare-fun m!4161471 () Bool)

(assert (=> d!1073669 m!4161471))

(assert (=> d!1073669 m!4161373))

(declare-fun m!4161473 () Bool)

(assert (=> d!1073669 m!4161473))

(assert (=> b!3655595 d!1073669))

(declare-fun d!1073671 () Bool)

(assert (=> d!1073671 (isDefined!6428 (maxPrefix!2907 thiss!23823 rules!3307 (++!9600 lt!1269947 suffix!1395)))))

(declare-fun lt!1270202 () Unit!55719)

(declare-fun e!2263731 () Unit!55719)

(assert (=> d!1073671 (= lt!1270202 e!2263731)))

(declare-fun c!631874 () Bool)

(assert (=> d!1073671 (= c!631874 (isEmpty!22868 (maxPrefix!2907 thiss!23823 rules!3307 (++!9600 lt!1269947 suffix!1395))))))

(declare-fun lt!1270195 () Unit!55719)

(declare-fun lt!1270204 () Unit!55719)

(assert (=> d!1073671 (= lt!1270195 lt!1270204)))

(declare-fun e!2263730 () Bool)

(assert (=> d!1073671 e!2263730))

(declare-fun res!1483777 () Bool)

(assert (=> d!1073671 (=> (not res!1483777) (not e!2263730))))

(declare-fun lt!1270201 () Token!10934)

(assert (=> d!1073671 (= res!1483777 (isDefined!6429 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 lt!1270201)))))))

(assert (=> d!1073671 (= lt!1270204 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1388 thiss!23823 rules!3307 lt!1269947 lt!1270201))))

(declare-fun lt!1270209 () Unit!55719)

(declare-fun lt!1270193 () Unit!55719)

(assert (=> d!1073671 (= lt!1270209 lt!1270193)))

(declare-fun lt!1270194 () List!38691)

(assert (=> d!1073671 (isPrefix!3147 lt!1270194 (++!9600 lt!1269947 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!514 (List!38691 List!38691 List!38691) Unit!55719)

(assert (=> d!1073671 (= lt!1270193 (lemmaPrefixStaysPrefixWhenAddingToSuffix!514 lt!1270194 lt!1269947 suffix!1395))))

(assert (=> d!1073671 (= lt!1270194 (list!14298 (charsOf!3798 lt!1270201)))))

(declare-fun lt!1270208 () Unit!55719)

(declare-fun lt!1270198 () Unit!55719)

(assert (=> d!1073671 (= lt!1270208 lt!1270198)))

(declare-fun lt!1270205 () List!38691)

(declare-fun lt!1270197 () List!38691)

(assert (=> d!1073671 (isPrefix!3147 lt!1270205 (++!9600 lt!1270205 lt!1270197))))

(assert (=> d!1073671 (= lt!1270198 (lemmaConcatTwoListThenFirstIsPrefix!2066 lt!1270205 lt!1270197))))

(assert (=> d!1073671 (= lt!1270197 (_2!22348 (get!12699 (maxPrefix!2907 thiss!23823 rules!3307 lt!1269947))))))

(assert (=> d!1073671 (= lt!1270205 (list!14298 (charsOf!3798 lt!1270201)))))

(declare-datatypes ((List!38695 0))(
  ( (Nil!38571) (Cons!38571 (h!43991 Token!10934) (t!298058 List!38695)) )
))
(declare-fun head!7806 (List!38695) Token!10934)

(declare-datatypes ((IArray!23587 0))(
  ( (IArray!23588 (innerList!11851 List!38695)) )
))
(declare-datatypes ((Conc!11791 0))(
  ( (Node!11791 (left!30105 Conc!11791) (right!30435 Conc!11791) (csize!23812 Int) (cheight!12002 Int)) (Leaf!18294 (xs!14993 IArray!23587) (csize!23813 Int)) (Empty!11791) )
))
(declare-datatypes ((BalanceConc!23196 0))(
  ( (BalanceConc!23197 (c!631937 Conc!11791)) )
))
(declare-fun list!14301 (BalanceConc!23196) List!38695)

(declare-datatypes ((tuple2!38432 0))(
  ( (tuple2!38433 (_1!22350 BalanceConc!23196) (_2!22350 BalanceConc!23192)) )
))
(declare-fun lex!2546 (LexerInterface!5373 List!38693 BalanceConc!23192) tuple2!38432)

(assert (=> d!1073671 (= lt!1270201 (head!7806 (list!14301 (_1!22350 (lex!2546 thiss!23823 rules!3307 (seqFromList!4333 lt!1269947))))))))

(assert (=> d!1073671 (not (isEmpty!22865 rules!3307))))

(assert (=> d!1073671 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1051 thiss!23823 rules!3307 lt!1269947 suffix!1395) lt!1270202)))

(declare-fun b!3656017 () Bool)

(declare-fun Unit!55734 () Unit!55719)

(assert (=> b!3656017 (= e!2263731 Unit!55734)))

(declare-fun lt!1270203 () List!38691)

(assert (=> b!3656017 (= lt!1270203 (++!9600 lt!1269947 suffix!1395))))

(declare-fun lt!1270207 () Unit!55719)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!550 (LexerInterface!5373 Rule!11368 List!38693 List!38691) Unit!55719)

(assert (=> b!3656017 (= lt!1270207 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!550 thiss!23823 (rule!8588 lt!1270201) rules!3307 lt!1270203))))

(assert (=> b!3656017 (isEmpty!22868 (maxPrefixOneRule!2045 thiss!23823 (rule!8588 lt!1270201) lt!1270203))))

(declare-fun lt!1270206 () Unit!55719)

(assert (=> b!3656017 (= lt!1270206 lt!1270207)))

(declare-fun lt!1270196 () List!38691)

(assert (=> b!3656017 (= lt!1270196 (list!14298 (charsOf!3798 lt!1270201)))))

(declare-fun lt!1270200 () Unit!55719)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!538 (LexerInterface!5373 Rule!11368 List!38691 List!38691) Unit!55719)

(assert (=> b!3656017 (= lt!1270200 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!538 thiss!23823 (rule!8588 lt!1270201) lt!1270196 (++!9600 lt!1269947 suffix!1395)))))

(assert (=> b!3656017 (not (matchR!5112 (regex!5784 (rule!8588 lt!1270201)) lt!1270196))))

(declare-fun lt!1270199 () Unit!55719)

(assert (=> b!3656017 (= lt!1270199 lt!1270200)))

(assert (=> b!3656017 false))

(declare-fun b!3656018 () Bool)

(declare-fun Unit!55735 () Unit!55719)

(assert (=> b!3656018 (= e!2263731 Unit!55735)))

(declare-fun b!3656016 () Bool)

(assert (=> b!3656016 (= e!2263730 (= (rule!8588 lt!1270201) (get!12698 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 lt!1270201))))))))

(declare-fun b!3656015 () Bool)

(declare-fun res!1483776 () Bool)

(assert (=> b!3656015 (=> (not res!1483776) (not e!2263730))))

(assert (=> b!3656015 (= res!1483776 (matchR!5112 (regex!5784 (get!12698 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 lt!1270201))))) (list!14298 (charsOf!3798 lt!1270201))))))

(assert (= (and d!1073671 res!1483777) b!3656015))

(assert (= (and b!3656015 res!1483776) b!3656016))

(assert (= (and d!1073671 c!631874) b!3656017))

(assert (= (and d!1073671 (not c!631874)) b!3656018))

(declare-fun m!4161639 () Bool)

(assert (=> d!1073671 m!4161639))

(declare-fun m!4161641 () Bool)

(assert (=> d!1073671 m!4161641))

(declare-fun m!4161643 () Bool)

(assert (=> d!1073671 m!4161643))

(declare-fun m!4161645 () Bool)

(assert (=> d!1073671 m!4161645))

(declare-fun m!4161647 () Bool)

(assert (=> d!1073671 m!4161647))

(declare-fun m!4161649 () Bool)

(assert (=> d!1073671 m!4161649))

(assert (=> d!1073671 m!4161019))

(declare-fun m!4161651 () Bool)

(assert (=> d!1073671 m!4161651))

(declare-fun m!4161653 () Bool)

(assert (=> d!1073671 m!4161653))

(declare-fun m!4161655 () Bool)

(assert (=> d!1073671 m!4161655))

(assert (=> d!1073671 m!4161639))

(declare-fun m!4161657 () Bool)

(assert (=> d!1073671 m!4161657))

(declare-fun m!4161659 () Bool)

(assert (=> d!1073671 m!4161659))

(declare-fun m!4161661 () Bool)

(assert (=> d!1073671 m!4161661))

(assert (=> d!1073671 m!4161641))

(assert (=> d!1073671 m!4161659))

(declare-fun m!4161663 () Bool)

(assert (=> d!1073671 m!4161663))

(assert (=> d!1073671 m!4161645))

(declare-fun m!4161665 () Bool)

(assert (=> d!1073671 m!4161665))

(declare-fun m!4161667 () Bool)

(assert (=> d!1073671 m!4161667))

(declare-fun m!4161669 () Bool)

(assert (=> d!1073671 m!4161669))

(assert (=> d!1073671 m!4161019))

(assert (=> d!1073671 m!4161655))

(declare-fun m!4161671 () Bool)

(assert (=> d!1073671 m!4161671))

(assert (=> d!1073671 m!4161049))

(assert (=> d!1073671 m!4161049))

(assert (=> d!1073671 m!4161645))

(assert (=> d!1073671 m!4161049))

(declare-fun m!4161673 () Bool)

(assert (=> d!1073671 m!4161673))

(assert (=> d!1073671 m!4161667))

(assert (=> d!1073671 m!4161031))

(assert (=> b!3656017 m!4161639))

(declare-fun m!4161675 () Bool)

(assert (=> b!3656017 m!4161675))

(declare-fun m!4161677 () Bool)

(assert (=> b!3656017 m!4161677))

(declare-fun m!4161679 () Bool)

(assert (=> b!3656017 m!4161679))

(assert (=> b!3656017 m!4161639))

(assert (=> b!3656017 m!4161657))

(declare-fun m!4161681 () Bool)

(assert (=> b!3656017 m!4161681))

(assert (=> b!3656017 m!4161049))

(assert (=> b!3656017 m!4161677))

(assert (=> b!3656017 m!4161049))

(declare-fun m!4161683 () Bool)

(assert (=> b!3656017 m!4161683))

(assert (=> b!3656016 m!4161641))

(assert (=> b!3656016 m!4161641))

(declare-fun m!4161685 () Bool)

(assert (=> b!3656016 m!4161685))

(assert (=> b!3656015 m!4161639))

(assert (=> b!3656015 m!4161657))

(assert (=> b!3656015 m!4161641))

(assert (=> b!3656015 m!4161641))

(assert (=> b!3656015 m!4161685))

(assert (=> b!3656015 m!4161657))

(declare-fun m!4161687 () Bool)

(assert (=> b!3656015 m!4161687))

(assert (=> b!3656015 m!4161639))

(assert (=> b!3655595 d!1073671))

(declare-fun d!1073715 () Bool)

(declare-fun lt!1270212 () BalanceConc!23192)

(assert (=> d!1073715 (= (list!14298 lt!1270212) (originalCharacters!6498 (_1!22348 lt!1269945)))))

(assert (=> d!1073715 (= lt!1270212 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (value!185304 (_1!22348 lt!1269945))))))

(assert (=> d!1073715 (= (charsOf!3798 (_1!22348 lt!1269945)) lt!1270212)))

(declare-fun b_lambda!108409 () Bool)

(assert (=> (not b_lambda!108409) (not d!1073715)))

(declare-fun t!297982 () Bool)

(declare-fun tb!211045 () Bool)

(assert (=> (and b!3655603 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297982) tb!211045))

(declare-fun b!3656028 () Bool)

(declare-fun e!2263737 () Bool)

(declare-fun tp!1114125 () Bool)

(assert (=> b!3656028 (= e!2263737 (and (inv!52032 (c!631791 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (value!185304 (_1!22348 lt!1269945))))) tp!1114125))))

(declare-fun result!256974 () Bool)

(assert (=> tb!211045 (= result!256974 (and (inv!52033 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (value!185304 (_1!22348 lt!1269945)))) e!2263737))))

(assert (= tb!211045 b!3656028))

(declare-fun m!4161689 () Bool)

(assert (=> b!3656028 m!4161689))

(declare-fun m!4161691 () Bool)

(assert (=> tb!211045 m!4161691))

(assert (=> d!1073715 t!297982))

(declare-fun b_and!270883 () Bool)

(assert (= b_and!270811 (and (=> t!297982 result!256974) b_and!270883)))

(declare-fun tb!211047 () Bool)

(declare-fun t!297984 () Bool)

(assert (=> (and b!3655582 (= (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297984) tb!211047))

(declare-fun result!256976 () Bool)

(assert (= result!256976 result!256974))

(assert (=> d!1073715 t!297984))

(declare-fun b_and!270885 () Bool)

(assert (= b_and!270813 (and (=> t!297984 result!256976) b_and!270885)))

(declare-fun tb!211049 () Bool)

(declare-fun t!297986 () Bool)

(assert (=> (and b!3655578 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297986) tb!211049))

(declare-fun result!256978 () Bool)

(assert (= result!256978 result!256974))

(assert (=> d!1073715 t!297986))

(declare-fun b_and!270887 () Bool)

(assert (= b_and!270815 (and (=> t!297986 result!256978) b_and!270887)))

(declare-fun tb!211051 () Bool)

(declare-fun t!297988 () Bool)

(assert (=> (and b!3655560 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297988) tb!211051))

(declare-fun result!256980 () Bool)

(assert (= result!256980 result!256974))

(assert (=> d!1073715 t!297988))

(declare-fun b_and!270889 () Bool)

(assert (= b_and!270817 (and (=> t!297988 result!256980) b_and!270889)))

(declare-fun m!4161693 () Bool)

(assert (=> d!1073715 m!4161693))

(declare-fun m!4161695 () Bool)

(assert (=> d!1073715 m!4161695))

(assert (=> b!3655595 d!1073715))

(declare-fun b!3656089 () Bool)

(declare-fun e!2263772 () Option!8197)

(declare-fun e!2263773 () Option!8197)

(assert (=> b!3656089 (= e!2263772 e!2263773)))

(declare-fun c!631893 () Bool)

(assert (=> b!3656089 (= c!631893 (and ((_ is Cons!38569) rules!3307) (not (= (tag!6554 (h!43989 rules!3307)) (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))))))

(declare-fun b!3656090 () Bool)

(assert (=> b!3656090 (= e!2263773 None!8196)))

(declare-fun b!3656091 () Bool)

(assert (=> b!3656091 (= e!2263772 (Some!8196 (h!43989 rules!3307)))))

(declare-fun b!3656092 () Bool)

(declare-fun lt!1270222 () Unit!55719)

(declare-fun lt!1270224 () Unit!55719)

(assert (=> b!3656092 (= lt!1270222 lt!1270224)))

(assert (=> b!3656092 (rulesInvariant!4770 thiss!23823 (t!297916 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!593 (LexerInterface!5373 Rule!11368 List!38693) Unit!55719)

(assert (=> b!3656092 (= lt!1270224 (lemmaInvariantOnRulesThenOnTail!593 thiss!23823 (h!43989 rules!3307) (t!297916 rules!3307)))))

(assert (=> b!3656092 (= e!2263773 (getRuleFromTag!1388 thiss!23823 (t!297916 rules!3307) (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun d!1073717 () Bool)

(declare-fun e!2263770 () Bool)

(assert (=> d!1073717 e!2263770))

(declare-fun res!1483813 () Bool)

(assert (=> d!1073717 (=> res!1483813 e!2263770)))

(declare-fun lt!1270223 () Option!8197)

(declare-fun isEmpty!22869 (Option!8197) Bool)

(assert (=> d!1073717 (= res!1483813 (isEmpty!22869 lt!1270223))))

(assert (=> d!1073717 (= lt!1270223 e!2263772)))

(declare-fun c!631892 () Bool)

(assert (=> d!1073717 (= c!631892 (and ((_ is Cons!38569) rules!3307) (= (tag!6554 (h!43989 rules!3307)) (tag!6554 (rule!8588 (_1!22348 lt!1269945))))))))

(assert (=> d!1073717 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073717 (= (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 (_1!22348 lt!1269945)))) lt!1270223)))

(declare-fun b!3656093 () Bool)

(declare-fun e!2263771 () Bool)

(assert (=> b!3656093 (= e!2263771 (= (tag!6554 (get!12698 lt!1270223)) (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3656094 () Bool)

(assert (=> b!3656094 (= e!2263770 e!2263771)))

(declare-fun res!1483814 () Bool)

(assert (=> b!3656094 (=> (not res!1483814) (not e!2263771))))

(assert (=> b!3656094 (= res!1483814 (contains!7633 rules!3307 (get!12698 lt!1270223)))))

(assert (= (and d!1073717 c!631892) b!3656091))

(assert (= (and d!1073717 (not c!631892)) b!3656089))

(assert (= (and b!3656089 c!631893) b!3656092))

(assert (= (and b!3656089 (not c!631893)) b!3656090))

(assert (= (and d!1073717 (not res!1483813)) b!3656094))

(assert (= (and b!3656094 res!1483814) b!3656093))

(declare-fun m!4161709 () Bool)

(assert (=> b!3656092 m!4161709))

(declare-fun m!4161711 () Bool)

(assert (=> b!3656092 m!4161711))

(declare-fun m!4161713 () Bool)

(assert (=> b!3656092 m!4161713))

(declare-fun m!4161715 () Bool)

(assert (=> d!1073717 m!4161715))

(assert (=> d!1073717 m!4161005))

(declare-fun m!4161717 () Bool)

(assert (=> b!3656093 m!4161717))

(assert (=> b!3656094 m!4161717))

(assert (=> b!3656094 m!4161717))

(declare-fun m!4161719 () Bool)

(assert (=> b!3656094 m!4161719))

(assert (=> b!3655595 d!1073717))

(declare-fun d!1073723 () Bool)

(assert (=> d!1073723 (= (get!12699 lt!1269932) (v!38067 lt!1269932))))

(assert (=> b!3655595 d!1073723))

(declare-fun b!3656096 () Bool)

(declare-fun e!2263775 () List!38691)

(assert (=> b!3656096 (= e!2263775 (Cons!38567 (h!43987 lt!1269947) (++!9600 (t!297914 lt!1269947) suffix!1395)))))

(declare-fun b!3656095 () Bool)

(assert (=> b!3656095 (= e!2263775 suffix!1395)))

(declare-fun b!3656097 () Bool)

(declare-fun res!1483815 () Bool)

(declare-fun e!2263774 () Bool)

(assert (=> b!3656097 (=> (not res!1483815) (not e!2263774))))

(declare-fun lt!1270225 () List!38691)

(assert (=> b!3656097 (= res!1483815 (= (size!29462 lt!1270225) (+ (size!29462 lt!1269947) (size!29462 suffix!1395))))))

(declare-fun d!1073725 () Bool)

(assert (=> d!1073725 e!2263774))

(declare-fun res!1483816 () Bool)

(assert (=> d!1073725 (=> (not res!1483816) (not e!2263774))))

(assert (=> d!1073725 (= res!1483816 (= (content!5567 lt!1270225) ((_ map or) (content!5567 lt!1269947) (content!5567 suffix!1395))))))

(assert (=> d!1073725 (= lt!1270225 e!2263775)))

(declare-fun c!631894 () Bool)

(assert (=> d!1073725 (= c!631894 ((_ is Nil!38567) lt!1269947))))

(assert (=> d!1073725 (= (++!9600 lt!1269947 suffix!1395) lt!1270225)))

(declare-fun b!3656098 () Bool)

(assert (=> b!3656098 (= e!2263774 (or (not (= suffix!1395 Nil!38567)) (= lt!1270225 lt!1269947)))))

(assert (= (and d!1073725 c!631894) b!3656095))

(assert (= (and d!1073725 (not c!631894)) b!3656096))

(assert (= (and d!1073725 res!1483816) b!3656097))

(assert (= (and b!3656097 res!1483815) b!3656098))

(declare-fun m!4161721 () Bool)

(assert (=> b!3656096 m!4161721))

(declare-fun m!4161723 () Bool)

(assert (=> b!3656097 m!4161723))

(assert (=> b!3656097 m!4160975))

(declare-fun m!4161725 () Bool)

(assert (=> b!3656097 m!4161725))

(declare-fun m!4161727 () Bool)

(assert (=> d!1073725 m!4161727))

(declare-fun m!4161729 () Bool)

(assert (=> d!1073725 m!4161729))

(declare-fun m!4161731 () Bool)

(assert (=> d!1073725 m!4161731))

(assert (=> b!3655595 d!1073725))

(declare-fun d!1073727 () Bool)

(declare-fun list!14302 (Conc!11789) List!38691)

(assert (=> d!1073727 (= (list!14298 lt!1269924) (list!14302 (c!631791 lt!1269924)))))

(declare-fun bs!572406 () Bool)

(assert (= bs!572406 d!1073727))

(declare-fun m!4161739 () Bool)

(assert (=> bs!572406 m!4161739))

(assert (=> b!3655595 d!1073727))

(declare-fun d!1073735 () Bool)

(assert (=> d!1073735 (= (isDefined!6429 lt!1269933) (not (isEmpty!22869 lt!1269933)))))

(declare-fun bs!572407 () Bool)

(assert (= bs!572407 d!1073735))

(declare-fun m!4161741 () Bool)

(assert (=> bs!572407 m!4161741))

(assert (=> b!3655595 d!1073735))

(declare-fun d!1073737 () Bool)

(declare-fun e!2263792 () Bool)

(assert (=> d!1073737 e!2263792))

(declare-fun res!1483833 () Bool)

(assert (=> d!1073737 (=> (not res!1483833) (not e!2263792))))

(assert (=> d!1073737 (= res!1483833 (isDefined!6429 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 (_1!22348 lt!1269945))))))))

(declare-fun lt!1270235 () Unit!55719)

(declare-fun choose!21583 (LexerInterface!5373 List!38693 List!38691 Token!10934) Unit!55719)

(assert (=> d!1073737 (= lt!1270235 (choose!21583 thiss!23823 rules!3307 lt!1269952 (_1!22348 lt!1269945)))))

(assert (=> d!1073737 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073737 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1388 thiss!23823 rules!3307 lt!1269952 (_1!22348 lt!1269945)) lt!1270235)))

(declare-fun b!3656127 () Bool)

(declare-fun res!1483834 () Bool)

(assert (=> b!3656127 (=> (not res!1483834) (not e!2263792))))

(assert (=> b!3656127 (= res!1483834 (matchR!5112 (regex!5784 (get!12698 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))) (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))))))

(declare-fun b!3656128 () Bool)

(assert (=> b!3656128 (= e!2263792 (= (rule!8588 (_1!22348 lt!1269945)) (get!12698 (getRuleFromTag!1388 thiss!23823 rules!3307 (tag!6554 (rule!8588 (_1!22348 lt!1269945)))))))))

(assert (= (and d!1073737 res!1483833) b!3656127))

(assert (= (and b!3656127 res!1483834) b!3656128))

(assert (=> d!1073737 m!4161035))

(assert (=> d!1073737 m!4161035))

(declare-fun m!4161763 () Bool)

(assert (=> d!1073737 m!4161763))

(declare-fun m!4161765 () Bool)

(assert (=> d!1073737 m!4161765))

(assert (=> d!1073737 m!4161005))

(assert (=> b!3656127 m!4161035))

(declare-fun m!4161767 () Bool)

(assert (=> b!3656127 m!4161767))

(assert (=> b!3656127 m!4161009))

(assert (=> b!3656127 m!4161011))

(declare-fun m!4161769 () Bool)

(assert (=> b!3656127 m!4161769))

(assert (=> b!3656127 m!4161009))

(assert (=> b!3656127 m!4161011))

(assert (=> b!3656127 m!4161035))

(assert (=> b!3656128 m!4161035))

(assert (=> b!3656128 m!4161035))

(assert (=> b!3656128 m!4161767))

(assert (=> b!3655595 d!1073737))

(declare-fun d!1073747 () Bool)

(declare-fun lt!1270236 () Int)

(assert (=> d!1073747 (= lt!1270236 (size!29462 (list!14298 lt!1269950)))))

(assert (=> d!1073747 (= lt!1270236 (size!29464 (c!631791 lt!1269950)))))

(assert (=> d!1073747 (= (size!29463 lt!1269950) lt!1270236)))

(declare-fun bs!572409 () Bool)

(assert (= bs!572409 d!1073747))

(assert (=> bs!572409 m!4161021))

(assert (=> bs!572409 m!4161021))

(declare-fun m!4161771 () Bool)

(assert (=> bs!572409 m!4161771))

(declare-fun m!4161773 () Bool)

(assert (=> bs!572409 m!4161773))

(assert (=> b!3655596 d!1073747))

(declare-fun d!1073749 () Bool)

(declare-fun lt!1270237 () Bool)

(assert (=> d!1073749 (= lt!1270237 (select (content!5567 lt!1269958) lt!1269939))))

(declare-fun e!2263793 () Bool)

(assert (=> d!1073749 (= lt!1270237 e!2263793)))

(declare-fun res!1483835 () Bool)

(assert (=> d!1073749 (=> (not res!1483835) (not e!2263793))))

(assert (=> d!1073749 (= res!1483835 ((_ is Cons!38567) lt!1269958))))

(assert (=> d!1073749 (= (contains!7634 lt!1269958 lt!1269939) lt!1270237)))

(declare-fun b!3656129 () Bool)

(declare-fun e!2263794 () Bool)

(assert (=> b!3656129 (= e!2263793 e!2263794)))

(declare-fun res!1483836 () Bool)

(assert (=> b!3656129 (=> res!1483836 e!2263794)))

(assert (=> b!3656129 (= res!1483836 (= (h!43987 lt!1269958) lt!1269939))))

(declare-fun b!3656130 () Bool)

(assert (=> b!3656130 (= e!2263794 (contains!7634 (t!297914 lt!1269958) lt!1269939))))

(assert (= (and d!1073749 res!1483835) b!3656129))

(assert (= (and b!3656129 (not res!1483836)) b!3656130))

(assert (=> d!1073749 m!4161355))

(declare-fun m!4161775 () Bool)

(assert (=> d!1073749 m!4161775))

(declare-fun m!4161777 () Bool)

(assert (=> b!3656130 m!4161777))

(assert (=> b!3655596 d!1073749))

(declare-fun d!1073751 () Bool)

(assert (=> d!1073751 (= (head!7804 lt!1269919) (h!43987 lt!1269919))))

(assert (=> b!3655596 d!1073751))

(declare-fun d!1073753 () Bool)

(assert (=> d!1073753 (= (isDefined!6428 lt!1269925) (not (isEmpty!22868 lt!1269925)))))

(declare-fun bs!572410 () Bool)

(assert (= bs!572410 d!1073753))

(declare-fun m!4161779 () Bool)

(assert (=> bs!572410 m!4161779))

(assert (=> b!3655576 d!1073753))

(declare-fun b!3656131 () Bool)

(declare-fun res!1483839 () Bool)

(declare-fun e!2263797 () Bool)

(assert (=> b!3656131 (=> (not res!1483839) (not e!2263797))))

(declare-fun lt!1270238 () Option!8196)

(assert (=> b!3656131 (= res!1483839 (= (value!185304 (_1!22348 (get!12699 lt!1270238))) (apply!9286 (transformation!5784 (rule!8588 (_1!22348 (get!12699 lt!1270238)))) (seqFromList!4333 (originalCharacters!6498 (_1!22348 (get!12699 lt!1270238)))))))))

(declare-fun b!3656132 () Bool)

(declare-fun e!2263795 () Option!8196)

(declare-fun lt!1270240 () Option!8196)

(declare-fun lt!1270241 () Option!8196)

(assert (=> b!3656132 (= e!2263795 (ite (and ((_ is None!8195) lt!1270240) ((_ is None!8195) lt!1270241)) None!8195 (ite ((_ is None!8195) lt!1270241) lt!1270240 (ite ((_ is None!8195) lt!1270240) lt!1270241 (ite (>= (size!29461 (_1!22348 (v!38067 lt!1270240))) (size!29461 (_1!22348 (v!38067 lt!1270241)))) lt!1270240 lt!1270241)))))))

(declare-fun call!264367 () Option!8196)

(assert (=> b!3656132 (= lt!1270240 call!264367)))

(assert (=> b!3656132 (= lt!1270241 (maxPrefix!2907 thiss!23823 (t!297916 rules!3307) lt!1269947))))

(declare-fun b!3656133 () Bool)

(declare-fun res!1483838 () Bool)

(assert (=> b!3656133 (=> (not res!1483838) (not e!2263797))))

(assert (=> b!3656133 (= res!1483838 (matchR!5112 (regex!5784 (rule!8588 (_1!22348 (get!12699 lt!1270238)))) (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270238))))))))

(declare-fun b!3656134 () Bool)

(declare-fun res!1483840 () Bool)

(assert (=> b!3656134 (=> (not res!1483840) (not e!2263797))))

(assert (=> b!3656134 (= res!1483840 (= (++!9600 (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270238)))) (_2!22348 (get!12699 lt!1270238))) lt!1269947))))

(declare-fun b!3656135 () Bool)

(declare-fun res!1483843 () Bool)

(assert (=> b!3656135 (=> (not res!1483843) (not e!2263797))))

(assert (=> b!3656135 (= res!1483843 (< (size!29462 (_2!22348 (get!12699 lt!1270238))) (size!29462 lt!1269947)))))

(declare-fun b!3656136 () Bool)

(declare-fun res!1483841 () Bool)

(assert (=> b!3656136 (=> (not res!1483841) (not e!2263797))))

(assert (=> b!3656136 (= res!1483841 (= (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270238)))) (originalCharacters!6498 (_1!22348 (get!12699 lt!1270238)))))))

(declare-fun bm!264362 () Bool)

(assert (=> bm!264362 (= call!264367 (maxPrefixOneRule!2045 thiss!23823 (h!43989 rules!3307) lt!1269947))))

(declare-fun b!3656137 () Bool)

(declare-fun e!2263796 () Bool)

(assert (=> b!3656137 (= e!2263796 e!2263797)))

(declare-fun res!1483842 () Bool)

(assert (=> b!3656137 (=> (not res!1483842) (not e!2263797))))

(assert (=> b!3656137 (= res!1483842 (isDefined!6428 lt!1270238))))

(declare-fun b!3656138 () Bool)

(assert (=> b!3656138 (= e!2263797 (contains!7633 rules!3307 (rule!8588 (_1!22348 (get!12699 lt!1270238)))))))

(declare-fun d!1073755 () Bool)

(assert (=> d!1073755 e!2263796))

(declare-fun res!1483837 () Bool)

(assert (=> d!1073755 (=> res!1483837 e!2263796)))

(assert (=> d!1073755 (= res!1483837 (isEmpty!22868 lt!1270238))))

(assert (=> d!1073755 (= lt!1270238 e!2263795)))

(declare-fun c!631901 () Bool)

(assert (=> d!1073755 (= c!631901 (and ((_ is Cons!38569) rules!3307) ((_ is Nil!38569) (t!297916 rules!3307))))))

(declare-fun lt!1270242 () Unit!55719)

(declare-fun lt!1270239 () Unit!55719)

(assert (=> d!1073755 (= lt!1270242 lt!1270239)))

(assert (=> d!1073755 (isPrefix!3147 lt!1269947 lt!1269947)))

(assert (=> d!1073755 (= lt!1270239 (lemmaIsPrefixRefl!1986 lt!1269947 lt!1269947))))

(assert (=> d!1073755 (rulesValidInductive!2049 thiss!23823 rules!3307)))

(assert (=> d!1073755 (= (maxPrefix!2907 thiss!23823 rules!3307 lt!1269947) lt!1270238)))

(declare-fun b!3656139 () Bool)

(assert (=> b!3656139 (= e!2263795 call!264367)))

(assert (= (and d!1073755 c!631901) b!3656139))

(assert (= (and d!1073755 (not c!631901)) b!3656132))

(assert (= (or b!3656139 b!3656132) bm!264362))

(assert (= (and d!1073755 (not res!1483837)) b!3656137))

(assert (= (and b!3656137 res!1483842) b!3656136))

(assert (= (and b!3656136 res!1483841) b!3656135))

(assert (= (and b!3656135 res!1483843) b!3656134))

(assert (= (and b!3656134 res!1483840) b!3656131))

(assert (= (and b!3656131 res!1483839) b!3656133))

(assert (= (and b!3656133 res!1483838) b!3656138))

(declare-fun m!4161781 () Bool)

(assert (=> bm!264362 m!4161781))

(declare-fun m!4161783 () Bool)

(assert (=> b!3656132 m!4161783))

(declare-fun m!4161785 () Bool)

(assert (=> b!3656136 m!4161785))

(declare-fun m!4161787 () Bool)

(assert (=> b!3656136 m!4161787))

(assert (=> b!3656136 m!4161787))

(declare-fun m!4161789 () Bool)

(assert (=> b!3656136 m!4161789))

(declare-fun m!4161791 () Bool)

(assert (=> b!3656137 m!4161791))

(declare-fun m!4161793 () Bool)

(assert (=> d!1073755 m!4161793))

(declare-fun m!4161795 () Bool)

(assert (=> d!1073755 m!4161795))

(declare-fun m!4161797 () Bool)

(assert (=> d!1073755 m!4161797))

(assert (=> d!1073755 m!4161449))

(assert (=> b!3656138 m!4161785))

(declare-fun m!4161799 () Bool)

(assert (=> b!3656138 m!4161799))

(assert (=> b!3656134 m!4161785))

(assert (=> b!3656134 m!4161787))

(assert (=> b!3656134 m!4161787))

(assert (=> b!3656134 m!4161789))

(assert (=> b!3656134 m!4161789))

(declare-fun m!4161801 () Bool)

(assert (=> b!3656134 m!4161801))

(assert (=> b!3656135 m!4161785))

(declare-fun m!4161803 () Bool)

(assert (=> b!3656135 m!4161803))

(assert (=> b!3656135 m!4160975))

(assert (=> b!3656131 m!4161785))

(declare-fun m!4161805 () Bool)

(assert (=> b!3656131 m!4161805))

(assert (=> b!3656131 m!4161805))

(declare-fun m!4161807 () Bool)

(assert (=> b!3656131 m!4161807))

(assert (=> b!3656133 m!4161785))

(assert (=> b!3656133 m!4161787))

(assert (=> b!3656133 m!4161787))

(assert (=> b!3656133 m!4161789))

(assert (=> b!3656133 m!4161789))

(declare-fun m!4161809 () Bool)

(assert (=> b!3656133 m!4161809))

(assert (=> b!3655576 d!1073755))

(declare-fun d!1073757 () Bool)

(assert (=> d!1073757 (= (list!14298 lt!1269950) (list!14302 (c!631791 lt!1269950)))))

(declare-fun bs!572411 () Bool)

(assert (= bs!572411 d!1073757))

(declare-fun m!4161811 () Bool)

(assert (=> bs!572411 m!4161811))

(assert (=> b!3655576 d!1073757))

(declare-fun d!1073759 () Bool)

(declare-fun lt!1270243 () BalanceConc!23192)

(assert (=> d!1073759 (= (list!14298 lt!1270243) (originalCharacters!6498 token!511))))

(assert (=> d!1073759 (= lt!1270243 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (value!185304 token!511)))))

(assert (=> d!1073759 (= (charsOf!3798 token!511) lt!1270243)))

(declare-fun b_lambda!108411 () Bool)

(assert (=> (not b_lambda!108411) (not d!1073759)))

(declare-fun tb!211053 () Bool)

(declare-fun t!297990 () Bool)

(assert (=> (and b!3655603 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 token!511)))) t!297990) tb!211053))

(declare-fun b!3656140 () Bool)

(declare-fun e!2263798 () Bool)

(declare-fun tp!1114126 () Bool)

(assert (=> b!3656140 (= e!2263798 (and (inv!52032 (c!631791 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (value!185304 token!511)))) tp!1114126))))

(declare-fun result!256982 () Bool)

(assert (=> tb!211053 (= result!256982 (and (inv!52033 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (value!185304 token!511))) e!2263798))))

(assert (= tb!211053 b!3656140))

(declare-fun m!4161813 () Bool)

(assert (=> b!3656140 m!4161813))

(declare-fun m!4161815 () Bool)

(assert (=> tb!211053 m!4161815))

(assert (=> d!1073759 t!297990))

(declare-fun b_and!270891 () Bool)

(assert (= b_and!270883 (and (=> t!297990 result!256982) b_and!270891)))

(declare-fun t!297992 () Bool)

(declare-fun tb!211055 () Bool)

(assert (=> (and b!3655582 (= (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toChars!7935 (transformation!5784 (rule!8588 token!511)))) t!297992) tb!211055))

(declare-fun result!256984 () Bool)

(assert (= result!256984 result!256982))

(assert (=> d!1073759 t!297992))

(declare-fun b_and!270893 () Bool)

(assert (= b_and!270885 (and (=> t!297992 result!256984) b_and!270893)))

(declare-fun t!297994 () Bool)

(declare-fun tb!211057 () Bool)

(assert (=> (and b!3655578 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 token!511)))) t!297994) tb!211057))

(declare-fun result!256986 () Bool)

(assert (= result!256986 result!256982))

(assert (=> d!1073759 t!297994))

(declare-fun b_and!270895 () Bool)

(assert (= b_and!270887 (and (=> t!297994 result!256986) b_and!270895)))

(declare-fun tb!211059 () Bool)

(declare-fun t!297996 () Bool)

(assert (=> (and b!3655560 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 token!511)))) t!297996) tb!211059))

(declare-fun result!256988 () Bool)

(assert (= result!256988 result!256982))

(assert (=> d!1073759 t!297996))

(declare-fun b_and!270897 () Bool)

(assert (= b_and!270889 (and (=> t!297996 result!256988) b_and!270897)))

(declare-fun m!4161817 () Bool)

(assert (=> d!1073759 m!4161817))

(declare-fun m!4161819 () Bool)

(assert (=> d!1073759 m!4161819))

(assert (=> b!3655576 d!1073759))

(declare-fun d!1073761 () Bool)

(assert (=> d!1073761 (not (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919))))

(declare-fun lt!1270246 () Unit!55719)

(declare-fun choose!21584 (Regex!10543 List!38691 C!21272) Unit!55719)

(assert (=> d!1073761 (= lt!1270246 (choose!21584 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269948))))

(assert (=> d!1073761 (validRegex!4824 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))

(assert (=> d!1073761 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269948) lt!1270246)))

(declare-fun bs!572412 () Bool)

(assert (= bs!572412 d!1073761))

(assert (=> bs!572412 m!4160993))

(declare-fun m!4161821 () Bool)

(assert (=> bs!572412 m!4161821))

(declare-fun m!4161823 () Bool)

(assert (=> bs!572412 m!4161823))

(assert (=> bm!264309 d!1073761))

(declare-fun d!1073763 () Bool)

(assert (=> d!1073763 (= (isEmpty!22865 rules!3307) ((_ is Nil!38569) rules!3307))))

(assert (=> b!3655579 d!1073763))

(declare-fun d!1073765 () Bool)

(assert (=> d!1073765 (= (maxPrefixOneRule!2045 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) lt!1269952) (Some!8195 (tuple2!38429 (Token!10935 (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) (seqFromList!4333 lt!1269919)) (rule!8588 (_1!22348 lt!1269945)) (size!29462 lt!1269919) lt!1269919) (_2!22348 lt!1269945))))))

(declare-fun lt!1270249 () Unit!55719)

(declare-fun choose!21585 (LexerInterface!5373 List!38693 List!38691 List!38691 List!38691 Rule!11368) Unit!55719)

(assert (=> d!1073765 (= lt!1270249 (choose!21585 thiss!23823 rules!3307 lt!1269919 lt!1269952 (_2!22348 lt!1269945) (rule!8588 (_1!22348 lt!1269945))))))

(assert (=> d!1073765 (not (isEmpty!22865 rules!3307))))

(assert (=> d!1073765 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1101 thiss!23823 rules!3307 lt!1269919 lt!1269952 (_2!22348 lt!1269945) (rule!8588 (_1!22348 lt!1269945))) lt!1270249)))

(declare-fun bs!572413 () Bool)

(assert (= bs!572413 d!1073765))

(assert (=> bs!572413 m!4161031))

(assert (=> bs!572413 m!4161097))

(declare-fun m!4161825 () Bool)

(assert (=> bs!572413 m!4161825))

(assert (=> bs!572413 m!4161101))

(assert (=> bs!572413 m!4161097))

(assert (=> bs!572413 m!4161093))

(declare-fun m!4161827 () Bool)

(assert (=> bs!572413 m!4161827))

(assert (=> b!3655577 d!1073765))

(declare-fun d!1073767 () Bool)

(assert (=> d!1073767 (= (_2!22348 lt!1269945) lt!1269942)))

(declare-fun lt!1270252 () Unit!55719)

(declare-fun choose!21586 (List!38691 List!38691 List!38691 List!38691 List!38691) Unit!55719)

(assert (=> d!1073767 (= lt!1270252 (choose!21586 lt!1269919 (_2!22348 lt!1269945) lt!1269919 lt!1269942 lt!1269952))))

(assert (=> d!1073767 (isPrefix!3147 lt!1269919 lt!1269952)))

(assert (=> d!1073767 (= (lemmaSamePrefixThenSameSuffix!1474 lt!1269919 (_2!22348 lt!1269945) lt!1269919 lt!1269942 lt!1269952) lt!1270252)))

(declare-fun bs!572414 () Bool)

(assert (= bs!572414 d!1073767))

(declare-fun m!4161829 () Bool)

(assert (=> bs!572414 m!4161829))

(assert (=> bs!572414 m!4161047))

(assert (=> b!3655577 d!1073767))

(declare-fun d!1073769 () Bool)

(declare-fun lt!1270255 () List!38691)

(assert (=> d!1073769 (= (++!9600 lt!1269919 lt!1270255) lt!1269952)))

(declare-fun e!2263801 () List!38691)

(assert (=> d!1073769 (= lt!1270255 e!2263801)))

(declare-fun c!631905 () Bool)

(assert (=> d!1073769 (= c!631905 ((_ is Cons!38567) lt!1269919))))

(assert (=> d!1073769 (>= (size!29462 lt!1269952) (size!29462 lt!1269919))))

(assert (=> d!1073769 (= (getSuffix!1700 lt!1269952 lt!1269919) lt!1270255)))

(declare-fun b!3656145 () Bool)

(assert (=> b!3656145 (= e!2263801 (getSuffix!1700 (tail!5660 lt!1269952) (t!297914 lt!1269919)))))

(declare-fun b!3656146 () Bool)

(assert (=> b!3656146 (= e!2263801 lt!1269952)))

(assert (= (and d!1073769 c!631905) b!3656145))

(assert (= (and d!1073769 (not c!631905)) b!3656146))

(declare-fun m!4161831 () Bool)

(assert (=> d!1073769 m!4161831))

(assert (=> d!1073769 m!4161385))

(assert (=> d!1073769 m!4161101))

(assert (=> b!3656145 m!4161391))

(assert (=> b!3656145 m!4161391))

(declare-fun m!4161833 () Bool)

(assert (=> b!3656145 m!4161833))

(assert (=> b!3655577 d!1073769))

(declare-fun d!1073771 () Bool)

(declare-fun lt!1270258 () Int)

(assert (=> d!1073771 (>= lt!1270258 0)))

(declare-fun e!2263804 () Int)

(assert (=> d!1073771 (= lt!1270258 e!2263804)))

(declare-fun c!631908 () Bool)

(assert (=> d!1073771 (= c!631908 ((_ is Nil!38567) lt!1269919))))

(assert (=> d!1073771 (= (size!29462 lt!1269919) lt!1270258)))

(declare-fun b!3656151 () Bool)

(assert (=> b!3656151 (= e!2263804 0)))

(declare-fun b!3656152 () Bool)

(assert (=> b!3656152 (= e!2263804 (+ 1 (size!29462 (t!297914 lt!1269919))))))

(assert (= (and d!1073771 c!631908) b!3656151))

(assert (= (and d!1073771 (not c!631908)) b!3656152))

(declare-fun m!4161835 () Bool)

(assert (=> b!3656152 m!4161835))

(assert (=> b!3655577 d!1073771))

(declare-fun d!1073773 () Bool)

(assert (=> d!1073773 (= (seqFromList!4333 lt!1269919) (fromListB!1998 lt!1269919))))

(declare-fun bs!572415 () Bool)

(assert (= bs!572415 d!1073773))

(declare-fun m!4161837 () Bool)

(assert (=> bs!572415 m!4161837))

(assert (=> b!3655577 d!1073773))

(declare-fun d!1073775 () Bool)

(assert (=> d!1073775 (= (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269920) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269920))))

(declare-fun b_lambda!108413 () Bool)

(assert (=> (not b_lambda!108413) (not d!1073775)))

(declare-fun tb!211061 () Bool)

(declare-fun t!297998 () Bool)

(assert (=> (and b!3655603 (= (toValue!8076 (transformation!5784 (h!43989 rules!3307))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!297998) tb!211061))

(declare-fun result!256990 () Bool)

(assert (=> tb!211061 (= result!256990 (inv!21 (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269920)))))

(declare-fun m!4161839 () Bool)

(assert (=> tb!211061 m!4161839))

(assert (=> d!1073775 t!297998))

(declare-fun b_and!270899 () Bool)

(assert (= b_and!270819 (and (=> t!297998 result!256990) b_and!270899)))

(declare-fun tb!211063 () Bool)

(declare-fun t!298000 () Bool)

(assert (=> (and b!3655582 (= (toValue!8076 (transformation!5784 (rule!8588 token!511))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298000) tb!211063))

(declare-fun result!256992 () Bool)

(assert (= result!256992 result!256990))

(assert (=> d!1073775 t!298000))

(declare-fun b_and!270901 () Bool)

(assert (= b_and!270821 (and (=> t!298000 result!256992) b_and!270901)))

(declare-fun t!298002 () Bool)

(declare-fun tb!211065 () Bool)

(assert (=> (and b!3655578 (= (toValue!8076 (transformation!5784 anOtherTypeRule!33)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298002) tb!211065))

(declare-fun result!256994 () Bool)

(assert (= result!256994 result!256990))

(assert (=> d!1073775 t!298002))

(declare-fun b_and!270903 () Bool)

(assert (= b_and!270823 (and (=> t!298002 result!256994) b_and!270903)))

(declare-fun tb!211067 () Bool)

(declare-fun t!298004 () Bool)

(assert (=> (and b!3655560 (= (toValue!8076 (transformation!5784 rule!403)) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298004) tb!211067))

(declare-fun result!256996 () Bool)

(assert (= result!256996 result!256990))

(assert (=> d!1073775 t!298004))

(declare-fun b_and!270905 () Bool)

(assert (= b_and!270825 (and (=> t!298004 result!256996) b_and!270905)))

(declare-fun m!4161841 () Bool)

(assert (=> d!1073775 m!4161841))

(assert (=> b!3655577 d!1073775))

(declare-fun d!1073777 () Bool)

(declare-fun e!2263848 () Bool)

(assert (=> d!1073777 e!2263848))

(declare-fun res!1483904 () Bool)

(assert (=> d!1073777 (=> res!1483904 e!2263848)))

(declare-fun lt!1270308 () Option!8196)

(assert (=> d!1073777 (= res!1483904 (isEmpty!22868 lt!1270308))))

(declare-fun e!2263847 () Option!8196)

(assert (=> d!1073777 (= lt!1270308 e!2263847)))

(declare-fun c!631918 () Bool)

(declare-datatypes ((tuple2!38434 0))(
  ( (tuple2!38435 (_1!22351 List!38691) (_2!22351 List!38691)) )
))
(declare-fun lt!1270305 () tuple2!38434)

(assert (=> d!1073777 (= c!631918 (isEmpty!22864 (_1!22351 lt!1270305)))))

(declare-fun findLongestMatch!973 (Regex!10543 List!38691) tuple2!38434)

(assert (=> d!1073777 (= lt!1270305 (findLongestMatch!973 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269952))))

(assert (=> d!1073777 (ruleValid!2048 thiss!23823 (rule!8588 (_1!22348 lt!1269945)))))

(assert (=> d!1073777 (= (maxPrefixOneRule!2045 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) lt!1269952) lt!1270308)))

(declare-fun b!3656227 () Bool)

(assert (=> b!3656227 (= e!2263847 None!8195)))

(declare-fun b!3656228 () Bool)

(declare-fun res!1483903 () Bool)

(declare-fun e!2263851 () Bool)

(assert (=> b!3656228 (=> (not res!1483903) (not e!2263851))))

(assert (=> b!3656228 (= res!1483903 (< (size!29462 (_2!22348 (get!12699 lt!1270308))) (size!29462 lt!1269952)))))

(declare-fun b!3656229 () Bool)

(declare-fun res!1483898 () Bool)

(assert (=> b!3656229 (=> (not res!1483898) (not e!2263851))))

(assert (=> b!3656229 (= res!1483898 (= (rule!8588 (_1!22348 (get!12699 lt!1270308))) (rule!8588 (_1!22348 lt!1269945))))))

(declare-fun b!3656230 () Bool)

(assert (=> b!3656230 (= e!2263851 (= (size!29461 (_1!22348 (get!12699 lt!1270308))) (size!29462 (originalCharacters!6498 (_1!22348 (get!12699 lt!1270308))))))))

(declare-fun b!3656231 () Bool)

(assert (=> b!3656231 (= e!2263847 (Some!8195 (tuple2!38429 (Token!10935 (apply!9286 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) (seqFromList!4333 (_1!22351 lt!1270305))) (rule!8588 (_1!22348 lt!1269945)) (size!29463 (seqFromList!4333 (_1!22351 lt!1270305))) (_1!22351 lt!1270305)) (_2!22351 lt!1270305))))))

(declare-fun lt!1270306 () Unit!55719)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1031 (Regex!10543 List!38691) Unit!55719)

(assert (=> b!3656231 (= lt!1270306 (longestMatchIsAcceptedByMatchOrIsEmpty!1031 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269952))))

(declare-fun res!1483902 () Bool)

(declare-fun findLongestMatchInner!1058 (Regex!10543 List!38691 Int List!38691 List!38691 Int) tuple2!38434)

(assert (=> b!3656231 (= res!1483902 (isEmpty!22864 (_1!22351 (findLongestMatchInner!1058 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) Nil!38567 (size!29462 Nil!38567) lt!1269952 lt!1269952 (size!29462 lt!1269952)))))))

(declare-fun e!2263846 () Bool)

(assert (=> b!3656231 (=> res!1483902 e!2263846)))

(assert (=> b!3656231 e!2263846))

(declare-fun lt!1270304 () Unit!55719)

(assert (=> b!3656231 (= lt!1270304 lt!1270306)))

(declare-fun lt!1270307 () Unit!55719)

(assert (=> b!3656231 (= lt!1270307 (lemmaSemiInverse!1533 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) (seqFromList!4333 (_1!22351 lt!1270305))))))

(declare-fun b!3656232 () Bool)

(assert (=> b!3656232 (= e!2263846 (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) (_1!22351 (findLongestMatchInner!1058 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) Nil!38567 (size!29462 Nil!38567) lt!1269952 lt!1269952 (size!29462 lt!1269952)))))))

(declare-fun b!3656233 () Bool)

(declare-fun res!1483901 () Bool)

(assert (=> b!3656233 (=> (not res!1483901) (not e!2263851))))

(assert (=> b!3656233 (= res!1483901 (= (++!9600 (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270308)))) (_2!22348 (get!12699 lt!1270308))) lt!1269952))))

(declare-fun b!3656234 () Bool)

(assert (=> b!3656234 (= e!2263848 e!2263851)))

(declare-fun res!1483900 () Bool)

(assert (=> b!3656234 (=> (not res!1483900) (not e!2263851))))

(assert (=> b!3656234 (= res!1483900 (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) (list!14298 (charsOf!3798 (_1!22348 (get!12699 lt!1270308))))))))

(declare-fun b!3656237 () Bool)

(declare-fun res!1483899 () Bool)

(assert (=> b!3656237 (=> (not res!1483899) (not e!2263851))))

(assert (=> b!3656237 (= res!1483899 (= (value!185304 (_1!22348 (get!12699 lt!1270308))) (apply!9286 (transformation!5784 (rule!8588 (_1!22348 (get!12699 lt!1270308)))) (seqFromList!4333 (originalCharacters!6498 (_1!22348 (get!12699 lt!1270308)))))))))

(assert (= (and d!1073777 c!631918) b!3656227))

(assert (= (and d!1073777 (not c!631918)) b!3656231))

(assert (= (and b!3656231 (not res!1483902)) b!3656232))

(assert (= (and d!1073777 (not res!1483904)) b!3656234))

(assert (= (and b!3656234 res!1483900) b!3656233))

(assert (= (and b!3656233 res!1483901) b!3656228))

(assert (= (and b!3656228 res!1483903) b!3656229))

(assert (= (and b!3656229 res!1483898) b!3656237))

(assert (= (and b!3656237 res!1483899) b!3656230))

(declare-fun m!4161961 () Bool)

(assert (=> b!3656230 m!4161961))

(declare-fun m!4161963 () Bool)

(assert (=> b!3656230 m!4161963))

(assert (=> b!3656228 m!4161961))

(declare-fun m!4161965 () Bool)

(assert (=> b!3656228 m!4161965))

(assert (=> b!3656228 m!4161385))

(assert (=> b!3656237 m!4161961))

(declare-fun m!4161967 () Bool)

(assert (=> b!3656237 m!4161967))

(assert (=> b!3656237 m!4161967))

(declare-fun m!4161969 () Bool)

(assert (=> b!3656237 m!4161969))

(assert (=> b!3656234 m!4161961))

(declare-fun m!4161971 () Bool)

(assert (=> b!3656234 m!4161971))

(assert (=> b!3656234 m!4161971))

(declare-fun m!4161973 () Bool)

(assert (=> b!3656234 m!4161973))

(assert (=> b!3656234 m!4161973))

(declare-fun m!4161975 () Bool)

(assert (=> b!3656234 m!4161975))

(declare-fun m!4161977 () Bool)

(assert (=> d!1073777 m!4161977))

(declare-fun m!4161979 () Bool)

(assert (=> d!1073777 m!4161979))

(declare-fun m!4161981 () Bool)

(assert (=> d!1073777 m!4161981))

(assert (=> d!1073777 m!4161111))

(assert (=> b!3656233 m!4161961))

(assert (=> b!3656233 m!4161971))

(assert (=> b!3656233 m!4161971))

(assert (=> b!3656233 m!4161973))

(assert (=> b!3656233 m!4161973))

(declare-fun m!4161983 () Bool)

(assert (=> b!3656233 m!4161983))

(assert (=> b!3656229 m!4161961))

(declare-fun m!4161985 () Bool)

(assert (=> b!3656232 m!4161985))

(assert (=> b!3656232 m!4161385))

(assert (=> b!3656232 m!4161985))

(assert (=> b!3656232 m!4161385))

(declare-fun m!4161987 () Bool)

(assert (=> b!3656232 m!4161987))

(declare-fun m!4161989 () Bool)

(assert (=> b!3656232 m!4161989))

(declare-fun m!4161991 () Bool)

(assert (=> b!3656231 m!4161991))

(assert (=> b!3656231 m!4161985))

(assert (=> b!3656231 m!4161385))

(assert (=> b!3656231 m!4161987))

(declare-fun m!4161993 () Bool)

(assert (=> b!3656231 m!4161993))

(declare-fun m!4161995 () Bool)

(assert (=> b!3656231 m!4161995))

(assert (=> b!3656231 m!4161993))

(declare-fun m!4161997 () Bool)

(assert (=> b!3656231 m!4161997))

(assert (=> b!3656231 m!4161993))

(declare-fun m!4161999 () Bool)

(assert (=> b!3656231 m!4161999))

(assert (=> b!3656231 m!4161385))

(declare-fun m!4162001 () Bool)

(assert (=> b!3656231 m!4162001))

(assert (=> b!3656231 m!4161985))

(assert (=> b!3656231 m!4161993))

(assert (=> b!3655577 d!1073777))

(declare-fun d!1073825 () Bool)

(declare-fun lt!1270309 () Bool)

(assert (=> d!1073825 (= lt!1270309 (select (content!5567 (usedCharacters!996 (regex!5784 anOtherTypeRule!33))) lt!1269948))))

(declare-fun e!2263868 () Bool)

(assert (=> d!1073825 (= lt!1270309 e!2263868)))

(declare-fun res!1483911 () Bool)

(assert (=> d!1073825 (=> (not res!1483911) (not e!2263868))))

(assert (=> d!1073825 (= res!1483911 ((_ is Cons!38567) (usedCharacters!996 (regex!5784 anOtherTypeRule!33))))))

(assert (=> d!1073825 (= (contains!7634 (usedCharacters!996 (regex!5784 anOtherTypeRule!33)) lt!1269948) lt!1270309)))

(declare-fun b!3656268 () Bool)

(declare-fun e!2263869 () Bool)

(assert (=> b!3656268 (= e!2263868 e!2263869)))

(declare-fun res!1483912 () Bool)

(assert (=> b!3656268 (=> res!1483912 e!2263869)))

(assert (=> b!3656268 (= res!1483912 (= (h!43987 (usedCharacters!996 (regex!5784 anOtherTypeRule!33))) lt!1269948))))

(declare-fun b!3656269 () Bool)

(assert (=> b!3656269 (= e!2263869 (contains!7634 (t!297914 (usedCharacters!996 (regex!5784 anOtherTypeRule!33))) lt!1269948))))

(assert (= (and d!1073825 res!1483911) b!3656268))

(assert (= (and b!3656268 (not res!1483912)) b!3656269))

(assert (=> d!1073825 m!4161121))

(declare-fun m!4162003 () Bool)

(assert (=> d!1073825 m!4162003))

(declare-fun m!4162005 () Bool)

(assert (=> d!1073825 m!4162005))

(declare-fun m!4162007 () Bool)

(assert (=> b!3656269 m!4162007))

(assert (=> b!3655597 d!1073825))

(declare-fun b!3656270 () Bool)

(declare-fun e!2263872 () List!38691)

(declare-fun call!264370 () List!38691)

(assert (=> b!3656270 (= e!2263872 call!264370)))

(declare-fun bm!264364 () Bool)

(declare-fun call!264371 () List!38691)

(assert (=> bm!264364 (= call!264371 call!264370)))

(declare-fun b!3656271 () Bool)

(declare-fun e!2263873 () List!38691)

(declare-fun call!264372 () List!38691)

(assert (=> b!3656271 (= e!2263873 call!264372)))

(declare-fun bm!264365 () Bool)

(declare-fun call!264369 () List!38691)

(declare-fun c!631920 () Bool)

(assert (=> bm!264365 (= call!264369 (usedCharacters!996 (ite c!631920 (regOne!21599 (regex!5784 anOtherTypeRule!33)) (regTwo!21598 (regex!5784 anOtherTypeRule!33)))))))

(declare-fun d!1073827 () Bool)

(declare-fun c!631919 () Bool)

(assert (=> d!1073827 (= c!631919 (or ((_ is EmptyExpr!10543) (regex!5784 anOtherTypeRule!33)) ((_ is EmptyLang!10543) (regex!5784 anOtherTypeRule!33))))))

(declare-fun e!2263871 () List!38691)

(assert (=> d!1073827 (= (usedCharacters!996 (regex!5784 anOtherTypeRule!33)) e!2263871)))

(declare-fun b!3656272 () Bool)

(assert (=> b!3656272 (= e!2263872 e!2263873)))

(assert (=> b!3656272 (= c!631920 ((_ is Union!10543) (regex!5784 anOtherTypeRule!33)))))

(declare-fun bm!264366 () Bool)

(declare-fun c!631922 () Bool)

(assert (=> bm!264366 (= call!264370 (usedCharacters!996 (ite c!631922 (reg!10872 (regex!5784 anOtherTypeRule!33)) (ite c!631920 (regTwo!21599 (regex!5784 anOtherTypeRule!33)) (regOne!21598 (regex!5784 anOtherTypeRule!33))))))))

(declare-fun b!3656273 () Bool)

(assert (=> b!3656273 (= c!631922 ((_ is Star!10543) (regex!5784 anOtherTypeRule!33)))))

(declare-fun e!2263870 () List!38691)

(assert (=> b!3656273 (= e!2263870 e!2263872)))

(declare-fun b!3656274 () Bool)

(assert (=> b!3656274 (= e!2263871 Nil!38567)))

(declare-fun b!3656275 () Bool)

(assert (=> b!3656275 (= e!2263870 (Cons!38567 (c!631790 (regex!5784 anOtherTypeRule!33)) Nil!38567))))

(declare-fun b!3656276 () Bool)

(assert (=> b!3656276 (= e!2263873 call!264372)))

(declare-fun b!3656277 () Bool)

(assert (=> b!3656277 (= e!2263871 e!2263870)))

(declare-fun c!631921 () Bool)

(assert (=> b!3656277 (= c!631921 ((_ is ElementMatch!10543) (regex!5784 anOtherTypeRule!33)))))

(declare-fun bm!264367 () Bool)

(assert (=> bm!264367 (= call!264372 (++!9600 (ite c!631920 call!264369 call!264371) (ite c!631920 call!264371 call!264369)))))

(assert (= (and d!1073827 c!631919) b!3656274))

(assert (= (and d!1073827 (not c!631919)) b!3656277))

(assert (= (and b!3656277 c!631921) b!3656275))

(assert (= (and b!3656277 (not c!631921)) b!3656273))

(assert (= (and b!3656273 c!631922) b!3656270))

(assert (= (and b!3656273 (not c!631922)) b!3656272))

(assert (= (and b!3656272 c!631920) b!3656271))

(assert (= (and b!3656272 (not c!631920)) b!3656276))

(assert (= (or b!3656271 b!3656276) bm!264365))

(assert (= (or b!3656271 b!3656276) bm!264364))

(assert (= (or b!3656271 b!3656276) bm!264367))

(assert (= (or b!3656270 bm!264364) bm!264366))

(declare-fun m!4162009 () Bool)

(assert (=> bm!264365 m!4162009))

(declare-fun m!4162011 () Bool)

(assert (=> bm!264366 m!4162011))

(declare-fun m!4162013 () Bool)

(assert (=> bm!264367 m!4162013))

(assert (=> b!3655597 d!1073827))

(declare-fun d!1073829 () Bool)

(declare-fun res!1483913 () Bool)

(declare-fun e!2263878 () Bool)

(assert (=> d!1073829 (=> (not res!1483913) (not e!2263878))))

(assert (=> d!1073829 (= res!1483913 (validRegex!4824 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(assert (=> d!1073829 (= (ruleValid!2048 thiss!23823 (rule!8588 (_1!22348 lt!1269945))) e!2263878)))

(declare-fun b!3656281 () Bool)

(declare-fun res!1483914 () Bool)

(assert (=> b!3656281 (=> (not res!1483914) (not e!2263878))))

(assert (=> b!3656281 (= res!1483914 (not (nullable!3662 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))))

(declare-fun b!3656282 () Bool)

(assert (=> b!3656282 (= e!2263878 (not (= (tag!6554 (rule!8588 (_1!22348 lt!1269945))) (String!43405 ""))))))

(assert (= (and d!1073829 res!1483913) b!3656281))

(assert (= (and b!3656281 res!1483914) b!3656282))

(assert (=> d!1073829 m!4161823))

(declare-fun m!4162015 () Bool)

(assert (=> b!3656281 m!4162015))

(assert (=> b!3655561 d!1073829))

(declare-fun d!1073831 () Bool)

(assert (=> d!1073831 (ruleValid!2048 thiss!23823 (rule!8588 (_1!22348 lt!1269945)))))

(declare-fun lt!1270310 () Unit!55719)

(assert (=> d!1073831 (= lt!1270310 (choose!21576 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) rules!3307))))

(assert (=> d!1073831 (contains!7633 rules!3307 (rule!8588 (_1!22348 lt!1269945)))))

(assert (=> d!1073831 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1202 thiss!23823 (rule!8588 (_1!22348 lt!1269945)) rules!3307) lt!1270310)))

(declare-fun bs!572426 () Bool)

(assert (= bs!572426 d!1073831))

(assert (=> bs!572426 m!4161111))

(declare-fun m!4162017 () Bool)

(assert (=> bs!572426 m!4162017))

(assert (=> bs!572426 m!4161033))

(assert (=> b!3655561 d!1073831))

(declare-fun b!3656286 () Bool)

(declare-fun e!2263879 () Bool)

(assert (=> b!3656286 (= e!2263879 (>= (size!29462 lt!1269952) (size!29462 lt!1269952)))))

(declare-fun b!3656284 () Bool)

(declare-fun res!1483915 () Bool)

(declare-fun e!2263881 () Bool)

(assert (=> b!3656284 (=> (not res!1483915) (not e!2263881))))

(assert (=> b!3656284 (= res!1483915 (= (head!7804 lt!1269952) (head!7804 lt!1269952)))))

(declare-fun b!3656283 () Bool)

(declare-fun e!2263880 () Bool)

(assert (=> b!3656283 (= e!2263880 e!2263881)))

(declare-fun res!1483916 () Bool)

(assert (=> b!3656283 (=> (not res!1483916) (not e!2263881))))

(assert (=> b!3656283 (= res!1483916 (not ((_ is Nil!38567) lt!1269952)))))

(declare-fun b!3656285 () Bool)

(assert (=> b!3656285 (= e!2263881 (isPrefix!3147 (tail!5660 lt!1269952) (tail!5660 lt!1269952)))))

(declare-fun d!1073833 () Bool)

(assert (=> d!1073833 e!2263879))

(declare-fun res!1483917 () Bool)

(assert (=> d!1073833 (=> res!1483917 e!2263879)))

(declare-fun lt!1270311 () Bool)

(assert (=> d!1073833 (= res!1483917 (not lt!1270311))))

(assert (=> d!1073833 (= lt!1270311 e!2263880)))

(declare-fun res!1483918 () Bool)

(assert (=> d!1073833 (=> res!1483918 e!2263880)))

(assert (=> d!1073833 (= res!1483918 ((_ is Nil!38567) lt!1269952))))

(assert (=> d!1073833 (= (isPrefix!3147 lt!1269952 lt!1269952) lt!1270311)))

(assert (= (and d!1073833 (not res!1483918)) b!3656283))

(assert (= (and b!3656283 res!1483916) b!3656284))

(assert (= (and b!3656284 res!1483915) b!3656285))

(assert (= (and d!1073833 (not res!1483917)) b!3656286))

(assert (=> b!3656286 m!4161385))

(assert (=> b!3656286 m!4161385))

(assert (=> b!3656284 m!4161387))

(assert (=> b!3656284 m!4161387))

(assert (=> b!3656285 m!4161391))

(assert (=> b!3656285 m!4161391))

(assert (=> b!3656285 m!4161391))

(assert (=> b!3656285 m!4161391))

(declare-fun m!4162019 () Bool)

(assert (=> b!3656285 m!4162019))

(assert (=> b!3655561 d!1073833))

(declare-fun d!1073835 () Bool)

(assert (=> d!1073835 (isPrefix!3147 lt!1269952 lt!1269952)))

(declare-fun lt!1270314 () Unit!55719)

(declare-fun choose!21588 (List!38691 List!38691) Unit!55719)

(assert (=> d!1073835 (= lt!1270314 (choose!21588 lt!1269952 lt!1269952))))

(assert (=> d!1073835 (= (lemmaIsPrefixRefl!1986 lt!1269952 lt!1269952) lt!1270314)))

(declare-fun bs!572427 () Bool)

(assert (= bs!572427 d!1073835))

(assert (=> bs!572427 m!4161109))

(declare-fun m!4162025 () Bool)

(assert (=> bs!572427 m!4162025))

(assert (=> b!3655561 d!1073835))

(declare-fun bs!572428 () Bool)

(declare-fun d!1073837 () Bool)

(assert (= bs!572428 (and d!1073837 d!1073579)))

(declare-fun lambda!124525 () Int)

(assert (=> bs!572428 (= lambda!124525 lambda!124517)))

(declare-fun b!3656301 () Bool)

(declare-fun e!2263888 () Bool)

(assert (=> b!3656301 (= e!2263888 true)))

(assert (=> d!1073837 e!2263888))

(assert (= d!1073837 b!3656301))

(assert (=> b!3656301 (< (dynLambda!16820 order!21251 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16823 order!21257 lambda!124525))))

(assert (=> b!3656301 (< (dynLambda!16822 order!21255 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) (dynLambda!16823 order!21257 lambda!124525))))

(assert (=> d!1073837 (= (list!14298 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269920))) (list!14298 lt!1269920))))

(declare-fun lt!1270315 () Unit!55719)

(assert (=> d!1073837 (= lt!1270315 (ForallOf!719 lambda!124525 lt!1269920))))

(assert (=> d!1073837 (= (lemmaSemiInverse!1533 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269920) lt!1270315)))

(declare-fun b_lambda!108425 () Bool)

(assert (=> (not b_lambda!108425) (not d!1073837)))

(declare-fun t!298036 () Bool)

(declare-fun tb!211099 () Bool)

(assert (=> (and b!3655603 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298036) tb!211099))

(declare-fun b!3656302 () Bool)

(declare-fun e!2263889 () Bool)

(declare-fun tp!1114174 () Bool)

(assert (=> b!3656302 (= e!2263889 (and (inv!52032 (c!631791 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269920)))) tp!1114174))))

(declare-fun result!257034 () Bool)

(assert (=> tb!211099 (= result!257034 (and (inv!52033 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) (dynLambda!16819 (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269920))) e!2263889))))

(assert (= tb!211099 b!3656302))

(declare-fun m!4162027 () Bool)

(assert (=> b!3656302 m!4162027))

(declare-fun m!4162029 () Bool)

(assert (=> tb!211099 m!4162029))

(assert (=> d!1073837 t!298036))

(declare-fun b_and!270935 () Bool)

(assert (= b_and!270891 (and (=> t!298036 result!257034) b_and!270935)))

(declare-fun t!298038 () Bool)

(declare-fun tb!211101 () Bool)

(assert (=> (and b!3655582 (= (toChars!7935 (transformation!5784 (rule!8588 token!511))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298038) tb!211101))

(declare-fun result!257036 () Bool)

(assert (= result!257036 result!257034))

(assert (=> d!1073837 t!298038))

(declare-fun b_and!270937 () Bool)

(assert (= b_and!270893 (and (=> t!298038 result!257036) b_and!270937)))

(declare-fun tb!211103 () Bool)

(declare-fun t!298040 () Bool)

(assert (=> (and b!3655578 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298040) tb!211103))

(declare-fun result!257038 () Bool)

(assert (= result!257038 result!257034))

(assert (=> d!1073837 t!298040))

(declare-fun b_and!270939 () Bool)

(assert (= b_and!270895 (and (=> t!298040 result!257038) b_and!270939)))

(declare-fun tb!211105 () Bool)

(declare-fun t!298042 () Bool)

(assert (=> (and b!3655560 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298042) tb!211105))

(declare-fun result!257040 () Bool)

(assert (= result!257040 result!257034))

(assert (=> d!1073837 t!298042))

(declare-fun b_and!270941 () Bool)

(assert (= b_and!270897 (and (=> t!298042 result!257040) b_and!270941)))

(declare-fun b_lambda!108427 () Bool)

(assert (=> (not b_lambda!108427) (not d!1073837)))

(assert (=> d!1073837 t!297998))

(declare-fun b_and!270943 () Bool)

(assert (= b_and!270899 (and (=> t!297998 result!256990) b_and!270943)))

(assert (=> d!1073837 t!298000))

(declare-fun b_and!270945 () Bool)

(assert (= b_and!270901 (and (=> t!298000 result!256992) b_and!270945)))

(assert (=> d!1073837 t!298002))

(declare-fun b_and!270947 () Bool)

(assert (= b_and!270903 (and (=> t!298002 result!256994) b_and!270947)))

(assert (=> d!1073837 t!298004))

(declare-fun b_and!270949 () Bool)

(assert (= b_and!270905 (and (=> t!298004 result!256996) b_and!270949)))

(declare-fun m!4162031 () Bool)

(assert (=> d!1073837 m!4162031))

(assert (=> d!1073837 m!4161841))

(declare-fun m!4162033 () Bool)

(assert (=> d!1073837 m!4162033))

(assert (=> d!1073837 m!4161841))

(assert (=> d!1073837 m!4162033))

(declare-fun m!4162035 () Bool)

(assert (=> d!1073837 m!4162035))

(declare-fun m!4162037 () Bool)

(assert (=> d!1073837 m!4162037))

(assert (=> b!3655561 d!1073837))

(declare-fun d!1073839 () Bool)

(declare-fun lt!1270316 () Bool)

(assert (=> d!1073839 (= lt!1270316 (select (content!5567 call!264315) lt!1269948))))

(declare-fun e!2263890 () Bool)

(assert (=> d!1073839 (= lt!1270316 e!2263890)))

(declare-fun res!1483919 () Bool)

(assert (=> d!1073839 (=> (not res!1483919) (not e!2263890))))

(assert (=> d!1073839 (= res!1483919 ((_ is Cons!38567) call!264315))))

(assert (=> d!1073839 (= (contains!7634 call!264315 lt!1269948) lt!1270316)))

(declare-fun b!3656303 () Bool)

(declare-fun e!2263891 () Bool)

(assert (=> b!3656303 (= e!2263890 e!2263891)))

(declare-fun res!1483920 () Bool)

(assert (=> b!3656303 (=> res!1483920 e!2263891)))

(assert (=> b!3656303 (= res!1483920 (= (h!43987 call!264315) lt!1269948))))

(declare-fun b!3656304 () Bool)

(assert (=> b!3656304 (= e!2263891 (contains!7634 (t!297914 call!264315) lt!1269948))))

(assert (= (and d!1073839 res!1483919) b!3656303))

(assert (= (and b!3656303 (not res!1483920)) b!3656304))

(declare-fun m!4162039 () Bool)

(assert (=> d!1073839 m!4162039))

(declare-fun m!4162041 () Bool)

(assert (=> d!1073839 m!4162041))

(declare-fun m!4162043 () Bool)

(assert (=> b!3656304 m!4162043))

(assert (=> bm!264310 d!1073839))

(declare-fun d!1073841 () Bool)

(assert (=> d!1073841 (not (contains!7634 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269948))))

(declare-fun lt!1270317 () Unit!55719)

(assert (=> d!1073841 (= lt!1270317 (choose!21577 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8588 (_1!22348 lt!1269945)) lt!1269948))))

(assert (=> d!1073841 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073841 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!312 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8588 (_1!22348 lt!1269945)) lt!1269948) lt!1270317)))

(declare-fun bs!572429 () Bool)

(assert (= bs!572429 d!1073841))

(assert (=> bs!572429 m!4160961))

(assert (=> bs!572429 m!4160961))

(assert (=> bs!572429 m!4161129))

(declare-fun m!4162045 () Bool)

(assert (=> bs!572429 m!4162045))

(assert (=> bs!572429 m!4161005))

(assert (=> b!3655599 d!1073841))

(declare-fun d!1073843 () Bool)

(declare-fun res!1483925 () Bool)

(declare-fun e!2263894 () Bool)

(assert (=> d!1073843 (=> (not res!1483925) (not e!2263894))))

(assert (=> d!1073843 (= res!1483925 (not (isEmpty!22864 (originalCharacters!6498 token!511))))))

(assert (=> d!1073843 (= (inv!52028 token!511) e!2263894)))

(declare-fun b!3656309 () Bool)

(declare-fun res!1483926 () Bool)

(assert (=> b!3656309 (=> (not res!1483926) (not e!2263894))))

(assert (=> b!3656309 (= res!1483926 (= (originalCharacters!6498 token!511) (list!14298 (dynLambda!16824 (toChars!7935 (transformation!5784 (rule!8588 token!511))) (value!185304 token!511)))))))

(declare-fun b!3656310 () Bool)

(assert (=> b!3656310 (= e!2263894 (= (size!29461 token!511) (size!29462 (originalCharacters!6498 token!511))))))

(assert (= (and d!1073843 res!1483925) b!3656309))

(assert (= (and b!3656309 res!1483926) b!3656310))

(declare-fun b_lambda!108429 () Bool)

(assert (=> (not b_lambda!108429) (not b!3656309)))

(assert (=> b!3656309 t!297990))

(declare-fun b_and!270951 () Bool)

(assert (= b_and!270935 (and (=> t!297990 result!256982) b_and!270951)))

(assert (=> b!3656309 t!297992))

(declare-fun b_and!270953 () Bool)

(assert (= b_and!270937 (and (=> t!297992 result!256984) b_and!270953)))

(assert (=> b!3656309 t!297994))

(declare-fun b_and!270955 () Bool)

(assert (= b_and!270939 (and (=> t!297994 result!256986) b_and!270955)))

(assert (=> b!3656309 t!297996))

(declare-fun b_and!270957 () Bool)

(assert (= b_and!270941 (and (=> t!297996 result!256988) b_and!270957)))

(declare-fun m!4162047 () Bool)

(assert (=> d!1073843 m!4162047))

(assert (=> b!3656309 m!4161819))

(assert (=> b!3656309 m!4161819))

(declare-fun m!4162049 () Bool)

(assert (=> b!3656309 m!4162049))

(declare-fun m!4162051 () Bool)

(assert (=> b!3656310 m!4162051))

(assert (=> start!341898 d!1073843))

(declare-fun d!1073845 () Bool)

(assert (=> d!1073845 (= (get!12699 lt!1269925) (v!38067 lt!1269925))))

(assert (=> b!3655583 d!1073845))

(declare-fun d!1073847 () Bool)

(assert (=> d!1073847 (not (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919))))

(declare-fun lt!1270318 () Unit!55719)

(assert (=> d!1073847 (= lt!1270318 (choose!21584 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269939))))

(assert (=> d!1073847 (validRegex!4824 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))

(assert (=> d!1073847 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919 lt!1269939) lt!1270318)))

(declare-fun bs!572430 () Bool)

(assert (= bs!572430 d!1073847))

(assert (=> bs!572430 m!4160993))

(declare-fun m!4162053 () Bool)

(assert (=> bs!572430 m!4162053))

(assert (=> bs!572430 m!4161823))

(assert (=> bm!264311 d!1073847))

(declare-fun d!1073849 () Bool)

(assert (=> d!1073849 (= (inv!52025 (tag!6554 rule!403)) (= (mod (str.len (value!185303 (tag!6554 rule!403))) 2) 0))))

(assert (=> b!3655601 d!1073849))

(declare-fun d!1073851 () Bool)

(declare-fun res!1483927 () Bool)

(declare-fun e!2263895 () Bool)

(assert (=> d!1073851 (=> (not res!1483927) (not e!2263895))))

(assert (=> d!1073851 (= res!1483927 (semiInverseModEq!2462 (toChars!7935 (transformation!5784 rule!403)) (toValue!8076 (transformation!5784 rule!403))))))

(assert (=> d!1073851 (= (inv!52029 (transformation!5784 rule!403)) e!2263895)))

(declare-fun b!3656311 () Bool)

(assert (=> b!3656311 (= e!2263895 (equivClasses!2361 (toChars!7935 (transformation!5784 rule!403)) (toValue!8076 (transformation!5784 rule!403))))))

(assert (= (and d!1073851 res!1483927) b!3656311))

(declare-fun m!4162055 () Bool)

(assert (=> d!1073851 m!4162055))

(declare-fun m!4162057 () Bool)

(assert (=> b!3656311 m!4162057))

(assert (=> b!3655601 d!1073851))

(declare-fun b!3656312 () Bool)

(declare-fun e!2263896 () Bool)

(assert (=> b!3656312 (= e!2263896 (= (head!7804 lt!1269919) (c!631790 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))))

(declare-fun b!3656313 () Bool)

(declare-fun e!2263902 () Bool)

(assert (=> b!3656313 (= e!2263902 (matchR!5112 (derivativeStep!3211 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) (head!7804 lt!1269919)) (tail!5660 lt!1269919)))))

(declare-fun b!3656314 () Bool)

(declare-fun e!2263898 () Bool)

(declare-fun lt!1270319 () Bool)

(declare-fun call!264373 () Bool)

(assert (=> b!3656314 (= e!2263898 (= lt!1270319 call!264373))))

(declare-fun b!3656315 () Bool)

(declare-fun res!1483931 () Bool)

(declare-fun e!2263900 () Bool)

(assert (=> b!3656315 (=> res!1483931 e!2263900)))

(assert (=> b!3656315 (= res!1483931 e!2263896)))

(declare-fun res!1483934 () Bool)

(assert (=> b!3656315 (=> (not res!1483934) (not e!2263896))))

(assert (=> b!3656315 (= res!1483934 lt!1270319)))

(declare-fun b!3656316 () Bool)

(declare-fun e!2263899 () Bool)

(assert (=> b!3656316 (= e!2263898 e!2263899)))

(declare-fun c!631923 () Bool)

(assert (=> b!3656316 (= c!631923 ((_ is EmptyLang!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3656317 () Bool)

(declare-fun res!1483929 () Bool)

(assert (=> b!3656317 (=> (not res!1483929) (not e!2263896))))

(assert (=> b!3656317 (= res!1483929 (not call!264373))))

(declare-fun b!3656319 () Bool)

(declare-fun res!1483935 () Bool)

(assert (=> b!3656319 (=> (not res!1483935) (not e!2263896))))

(assert (=> b!3656319 (= res!1483935 (isEmpty!22864 (tail!5660 lt!1269919)))))

(declare-fun b!3656320 () Bool)

(declare-fun e!2263901 () Bool)

(assert (=> b!3656320 (= e!2263900 e!2263901)))

(declare-fun res!1483933 () Bool)

(assert (=> b!3656320 (=> (not res!1483933) (not e!2263901))))

(assert (=> b!3656320 (= res!1483933 (not lt!1270319))))

(declare-fun b!3656321 () Bool)

(declare-fun e!2263897 () Bool)

(assert (=> b!3656321 (= e!2263897 (not (= (head!7804 lt!1269919) (c!631790 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))))

(declare-fun b!3656322 () Bool)

(declare-fun res!1483932 () Bool)

(assert (=> b!3656322 (=> res!1483932 e!2263897)))

(assert (=> b!3656322 (= res!1483932 (not (isEmpty!22864 (tail!5660 lt!1269919))))))

(declare-fun b!3656323 () Bool)

(assert (=> b!3656323 (= e!2263902 (nullable!3662 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(declare-fun b!3656324 () Bool)

(assert (=> b!3656324 (= e!2263901 e!2263897)))

(declare-fun res!1483930 () Bool)

(assert (=> b!3656324 (=> res!1483930 e!2263897)))

(assert (=> b!3656324 (= res!1483930 call!264373)))

(declare-fun bm!264368 () Bool)

(assert (=> bm!264368 (= call!264373 (isEmpty!22864 lt!1269919))))

(declare-fun b!3656325 () Bool)

(assert (=> b!3656325 (= e!2263899 (not lt!1270319))))

(declare-fun b!3656318 () Bool)

(declare-fun res!1483928 () Bool)

(assert (=> b!3656318 (=> res!1483928 e!2263900)))

(assert (=> b!3656318 (= res!1483928 (not ((_ is ElementMatch!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))))

(assert (=> b!3656318 (= e!2263899 e!2263900)))

(declare-fun d!1073853 () Bool)

(assert (=> d!1073853 e!2263898))

(declare-fun c!631924 () Bool)

(assert (=> d!1073853 (= c!631924 ((_ is EmptyExpr!10543) (regex!5784 (rule!8588 (_1!22348 lt!1269945)))))))

(assert (=> d!1073853 (= lt!1270319 e!2263902)))

(declare-fun c!631925 () Bool)

(assert (=> d!1073853 (= c!631925 (isEmpty!22864 lt!1269919))))

(assert (=> d!1073853 (validRegex!4824 (regex!5784 (rule!8588 (_1!22348 lt!1269945))))))

(assert (=> d!1073853 (= (matchR!5112 (regex!5784 (rule!8588 (_1!22348 lt!1269945))) lt!1269919) lt!1270319)))

(assert (= (and d!1073853 c!631925) b!3656323))

(assert (= (and d!1073853 (not c!631925)) b!3656313))

(assert (= (and d!1073853 c!631924) b!3656314))

(assert (= (and d!1073853 (not c!631924)) b!3656316))

(assert (= (and b!3656316 c!631923) b!3656325))

(assert (= (and b!3656316 (not c!631923)) b!3656318))

(assert (= (and b!3656318 (not res!1483928)) b!3656315))

(assert (= (and b!3656315 res!1483934) b!3656317))

(assert (= (and b!3656317 res!1483929) b!3656319))

(assert (= (and b!3656319 res!1483935) b!3656312))

(assert (= (and b!3656315 (not res!1483931)) b!3656320))

(assert (= (and b!3656320 res!1483933) b!3656324))

(assert (= (and b!3656324 (not res!1483930)) b!3656322))

(assert (= (and b!3656322 (not res!1483932)) b!3656321))

(assert (= (or b!3656314 b!3656317 b!3656324) bm!264368))

(assert (=> b!3656321 m!4161079))

(assert (=> b!3656323 m!4162015))

(assert (=> b!3656313 m!4161079))

(assert (=> b!3656313 m!4161079))

(declare-fun m!4162059 () Bool)

(assert (=> b!3656313 m!4162059))

(assert (=> b!3656313 m!4161389))

(assert (=> b!3656313 m!4162059))

(assert (=> b!3656313 m!4161389))

(declare-fun m!4162061 () Bool)

(assert (=> b!3656313 m!4162061))

(assert (=> b!3656312 m!4161079))

(assert (=> b!3656319 m!4161389))

(assert (=> b!3656319 m!4161389))

(declare-fun m!4162063 () Bool)

(assert (=> b!3656319 m!4162063))

(assert (=> b!3656322 m!4161389))

(assert (=> b!3656322 m!4161389))

(assert (=> b!3656322 m!4162063))

(declare-fun m!4162065 () Bool)

(assert (=> bm!264368 m!4162065))

(assert (=> d!1073853 m!4162065))

(assert (=> d!1073853 m!4161823))

(assert (=> b!3655564 d!1073853))

(declare-fun d!1073855 () Bool)

(declare-fun res!1483938 () Bool)

(declare-fun e!2263905 () Bool)

(assert (=> d!1073855 (=> (not res!1483938) (not e!2263905))))

(declare-fun rulesValid!2220 (LexerInterface!5373 List!38693) Bool)

(assert (=> d!1073855 (= res!1483938 (rulesValid!2220 thiss!23823 rules!3307))))

(assert (=> d!1073855 (= (rulesInvariant!4770 thiss!23823 rules!3307) e!2263905)))

(declare-fun b!3656328 () Bool)

(declare-datatypes ((List!38697 0))(
  ( (Nil!38573) (Cons!38573 (h!43993 String!43404) (t!298060 List!38697)) )
))
(declare-fun noDuplicateTag!2216 (LexerInterface!5373 List!38693 List!38697) Bool)

(assert (=> b!3656328 (= e!2263905 (noDuplicateTag!2216 thiss!23823 rules!3307 Nil!38573))))

(assert (= (and d!1073855 res!1483938) b!3656328))

(declare-fun m!4162067 () Bool)

(assert (=> d!1073855 m!4162067))

(declare-fun m!4162069 () Bool)

(assert (=> b!3656328 m!4162069))

(assert (=> b!3655600 d!1073855))

(declare-fun d!1073857 () Bool)

(declare-fun lt!1270320 () Int)

(assert (=> d!1073857 (>= lt!1270320 0)))

(declare-fun e!2263906 () Int)

(assert (=> d!1073857 (= lt!1270320 e!2263906)))

(declare-fun c!631926 () Bool)

(assert (=> d!1073857 (= c!631926 ((_ is Nil!38567) lt!1269947))))

(assert (=> d!1073857 (= (size!29462 lt!1269947) lt!1270320)))

(declare-fun b!3656329 () Bool)

(assert (=> b!3656329 (= e!2263906 0)))

(declare-fun b!3656330 () Bool)

(assert (=> b!3656330 (= e!2263906 (+ 1 (size!29462 (t!297914 lt!1269947))))))

(assert (= (and d!1073857 c!631926) b!3656329))

(assert (= (and d!1073857 (not c!631926)) b!3656330))

(declare-fun m!4162071 () Bool)

(assert (=> b!3656330 m!4162071))

(assert (=> b!3655562 d!1073857))

(declare-fun b!3656331 () Bool)

(declare-fun e!2263907 () Bool)

(assert (=> b!3656331 (= e!2263907 (= (head!7804 (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))) (c!631790 (regex!5784 lt!1269936))))))

(declare-fun b!3656332 () Bool)

(declare-fun e!2263913 () Bool)

(assert (=> b!3656332 (= e!2263913 (matchR!5112 (derivativeStep!3211 (regex!5784 lt!1269936) (head!7804 (list!14298 (charsOf!3798 (_1!22348 lt!1269945))))) (tail!5660 (list!14298 (charsOf!3798 (_1!22348 lt!1269945))))))))

(declare-fun b!3656333 () Bool)

(declare-fun e!2263909 () Bool)

(declare-fun lt!1270321 () Bool)

(declare-fun call!264374 () Bool)

(assert (=> b!3656333 (= e!2263909 (= lt!1270321 call!264374))))

(declare-fun b!3656334 () Bool)

(declare-fun res!1483942 () Bool)

(declare-fun e!2263911 () Bool)

(assert (=> b!3656334 (=> res!1483942 e!2263911)))

(assert (=> b!3656334 (= res!1483942 e!2263907)))

(declare-fun res!1483945 () Bool)

(assert (=> b!3656334 (=> (not res!1483945) (not e!2263907))))

(assert (=> b!3656334 (= res!1483945 lt!1270321)))

(declare-fun b!3656335 () Bool)

(declare-fun e!2263910 () Bool)

(assert (=> b!3656335 (= e!2263909 e!2263910)))

(declare-fun c!631927 () Bool)

(assert (=> b!3656335 (= c!631927 ((_ is EmptyLang!10543) (regex!5784 lt!1269936)))))

(declare-fun b!3656336 () Bool)

(declare-fun res!1483940 () Bool)

(assert (=> b!3656336 (=> (not res!1483940) (not e!2263907))))

(assert (=> b!3656336 (= res!1483940 (not call!264374))))

(declare-fun b!3656338 () Bool)

(declare-fun res!1483946 () Bool)

(assert (=> b!3656338 (=> (not res!1483946) (not e!2263907))))

(assert (=> b!3656338 (= res!1483946 (isEmpty!22864 (tail!5660 (list!14298 (charsOf!3798 (_1!22348 lt!1269945))))))))

(declare-fun b!3656339 () Bool)

(declare-fun e!2263912 () Bool)

(assert (=> b!3656339 (= e!2263911 e!2263912)))

(declare-fun res!1483944 () Bool)

(assert (=> b!3656339 (=> (not res!1483944) (not e!2263912))))

(assert (=> b!3656339 (= res!1483944 (not lt!1270321))))

(declare-fun b!3656340 () Bool)

(declare-fun e!2263908 () Bool)

(assert (=> b!3656340 (= e!2263908 (not (= (head!7804 (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))) (c!631790 (regex!5784 lt!1269936)))))))

(declare-fun b!3656341 () Bool)

(declare-fun res!1483943 () Bool)

(assert (=> b!3656341 (=> res!1483943 e!2263908)))

(assert (=> b!3656341 (= res!1483943 (not (isEmpty!22864 (tail!5660 (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))))))))

(declare-fun b!3656342 () Bool)

(assert (=> b!3656342 (= e!2263913 (nullable!3662 (regex!5784 lt!1269936)))))

(declare-fun b!3656343 () Bool)

(assert (=> b!3656343 (= e!2263912 e!2263908)))

(declare-fun res!1483941 () Bool)

(assert (=> b!3656343 (=> res!1483941 e!2263908)))

(assert (=> b!3656343 (= res!1483941 call!264374)))

(declare-fun bm!264369 () Bool)

(assert (=> bm!264369 (= call!264374 (isEmpty!22864 (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))))))

(declare-fun b!3656344 () Bool)

(assert (=> b!3656344 (= e!2263910 (not lt!1270321))))

(declare-fun b!3656337 () Bool)

(declare-fun res!1483939 () Bool)

(assert (=> b!3656337 (=> res!1483939 e!2263911)))

(assert (=> b!3656337 (= res!1483939 (not ((_ is ElementMatch!10543) (regex!5784 lt!1269936))))))

(assert (=> b!3656337 (= e!2263910 e!2263911)))

(declare-fun d!1073859 () Bool)

(assert (=> d!1073859 e!2263909))

(declare-fun c!631928 () Bool)

(assert (=> d!1073859 (= c!631928 ((_ is EmptyExpr!10543) (regex!5784 lt!1269936)))))

(assert (=> d!1073859 (= lt!1270321 e!2263913)))

(declare-fun c!631929 () Bool)

(assert (=> d!1073859 (= c!631929 (isEmpty!22864 (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))))))

(assert (=> d!1073859 (validRegex!4824 (regex!5784 lt!1269936))))

(assert (=> d!1073859 (= (matchR!5112 (regex!5784 lt!1269936) (list!14298 (charsOf!3798 (_1!22348 lt!1269945)))) lt!1270321)))

(assert (= (and d!1073859 c!631929) b!3656342))

(assert (= (and d!1073859 (not c!631929)) b!3656332))

(assert (= (and d!1073859 c!631928) b!3656333))

(assert (= (and d!1073859 (not c!631928)) b!3656335))

(assert (= (and b!3656335 c!631927) b!3656344))

(assert (= (and b!3656335 (not c!631927)) b!3656337))

(assert (= (and b!3656337 (not res!1483939)) b!3656334))

(assert (= (and b!3656334 res!1483945) b!3656336))

(assert (= (and b!3656336 res!1483940) b!3656338))

(assert (= (and b!3656338 res!1483946) b!3656331))

(assert (= (and b!3656334 (not res!1483942)) b!3656339))

(assert (= (and b!3656339 res!1483944) b!3656343))

(assert (= (and b!3656343 (not res!1483941)) b!3656341))

(assert (= (and b!3656341 (not res!1483943)) b!3656340))

(assert (= (or b!3656333 b!3656336 b!3656343) bm!264369))

(assert (=> b!3656340 m!4161011))

(declare-fun m!4162073 () Bool)

(assert (=> b!3656340 m!4162073))

(declare-fun m!4162075 () Bool)

(assert (=> b!3656342 m!4162075))

(assert (=> b!3656332 m!4161011))

(assert (=> b!3656332 m!4162073))

(assert (=> b!3656332 m!4162073))

(declare-fun m!4162077 () Bool)

(assert (=> b!3656332 m!4162077))

(assert (=> b!3656332 m!4161011))

(declare-fun m!4162079 () Bool)

(assert (=> b!3656332 m!4162079))

(assert (=> b!3656332 m!4162077))

(assert (=> b!3656332 m!4162079))

(declare-fun m!4162081 () Bool)

(assert (=> b!3656332 m!4162081))

(assert (=> b!3656331 m!4161011))

(assert (=> b!3656331 m!4162073))

(assert (=> b!3656338 m!4161011))

(assert (=> b!3656338 m!4162079))

(assert (=> b!3656338 m!4162079))

(declare-fun m!4162083 () Bool)

(assert (=> b!3656338 m!4162083))

(assert (=> b!3656341 m!4161011))

(assert (=> b!3656341 m!4162079))

(assert (=> b!3656341 m!4162079))

(assert (=> b!3656341 m!4162083))

(assert (=> bm!264369 m!4161011))

(declare-fun m!4162085 () Bool)

(assert (=> bm!264369 m!4162085))

(assert (=> d!1073859 m!4161011))

(assert (=> d!1073859 m!4162085))

(declare-fun m!4162087 () Bool)

(assert (=> d!1073859 m!4162087))

(assert (=> b!3655563 d!1073859))

(declare-fun d!1073861 () Bool)

(assert (=> d!1073861 (= (list!14298 (charsOf!3798 (_1!22348 lt!1269945))) (list!14302 (c!631791 (charsOf!3798 (_1!22348 lt!1269945)))))))

(declare-fun bs!572431 () Bool)

(assert (= bs!572431 d!1073861))

(declare-fun m!4162089 () Bool)

(assert (=> bs!572431 m!4162089))

(assert (=> b!3655563 d!1073861))

(assert (=> b!3655563 d!1073715))

(declare-fun d!1073863 () Bool)

(assert (=> d!1073863 (= (get!12698 lt!1269933) (v!38068 lt!1269933))))

(assert (=> b!3655563 d!1073863))

(assert (=> bm!264307 d!1073543))

(declare-fun d!1073865 () Bool)

(declare-fun c!631934 () Bool)

(assert (=> d!1073865 (= c!631934 ((_ is IntegerValue!18042) (value!185304 token!511)))))

(declare-fun e!2263921 () Bool)

(assert (=> d!1073865 (= (inv!21 (value!185304 token!511)) e!2263921)))

(declare-fun b!3656355 () Bool)

(declare-fun res!1483949 () Bool)

(declare-fun e!2263922 () Bool)

(assert (=> b!3656355 (=> res!1483949 e!2263922)))

(assert (=> b!3656355 (= res!1483949 (not ((_ is IntegerValue!18044) (value!185304 token!511))))))

(declare-fun e!2263920 () Bool)

(assert (=> b!3656355 (= e!2263920 e!2263922)))

(declare-fun b!3656356 () Bool)

(declare-fun inv!16 (TokenValue!6014) Bool)

(assert (=> b!3656356 (= e!2263921 (inv!16 (value!185304 token!511)))))

(declare-fun b!3656357 () Bool)

(declare-fun inv!17 (TokenValue!6014) Bool)

(assert (=> b!3656357 (= e!2263920 (inv!17 (value!185304 token!511)))))

(declare-fun b!3656358 () Bool)

(assert (=> b!3656358 (= e!2263921 e!2263920)))

(declare-fun c!631935 () Bool)

(assert (=> b!3656358 (= c!631935 ((_ is IntegerValue!18043) (value!185304 token!511)))))

(declare-fun b!3656359 () Bool)

(declare-fun inv!15 (TokenValue!6014) Bool)

(assert (=> b!3656359 (= e!2263922 (inv!15 (value!185304 token!511)))))

(assert (= (and d!1073865 c!631934) b!3656356))

(assert (= (and d!1073865 (not c!631934)) b!3656358))

(assert (= (and b!3656358 c!631935) b!3656357))

(assert (= (and b!3656358 (not c!631935)) b!3656355))

(assert (= (and b!3656355 (not res!1483949)) b!3656359))

(declare-fun m!4162091 () Bool)

(assert (=> b!3656356 m!4162091))

(declare-fun m!4162093 () Bool)

(assert (=> b!3656357 m!4162093))

(declare-fun m!4162095 () Bool)

(assert (=> b!3656359 m!4162095))

(assert (=> b!3655566 d!1073865))

(declare-fun d!1073867 () Bool)

(assert (=> d!1073867 (not (contains!7634 (usedCharacters!996 (regex!5784 (rule!8588 (_1!22348 lt!1269945)))) lt!1269939))))

(declare-fun lt!1270322 () Unit!55719)

(assert (=> d!1073867 (= lt!1270322 (choose!21572 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) rule!403 lt!1269939))))

(assert (=> d!1073867 (rulesInvariant!4770 thiss!23823 rules!3307)))

(assert (=> d!1073867 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!430 thiss!23823 rules!3307 rules!3307 (rule!8588 (_1!22348 lt!1269945)) rule!403 lt!1269939) lt!1270322)))

(declare-fun bs!572432 () Bool)

(assert (= bs!572432 d!1073867))

(assert (=> bs!572432 m!4160961))

(assert (=> bs!572432 m!4160961))

(assert (=> bs!572432 m!4161341))

(declare-fun m!4162097 () Bool)

(assert (=> bs!572432 m!4162097))

(assert (=> bs!572432 m!4161005))

(assert (=> b!3655567 d!1073867))

(declare-fun d!1073869 () Bool)

(declare-fun lt!1270323 () Bool)

(assert (=> d!1073869 (= lt!1270323 (select (content!5566 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2263924 () Bool)

(assert (=> d!1073869 (= lt!1270323 e!2263924)))

(declare-fun res!1483951 () Bool)

(assert (=> d!1073869 (=> (not res!1483951) (not e!2263924))))

(assert (=> d!1073869 (= res!1483951 ((_ is Cons!38569) rules!3307))))

(assert (=> d!1073869 (= (contains!7633 rules!3307 anOtherTypeRule!33) lt!1270323)))

(declare-fun b!3656360 () Bool)

(declare-fun e!2263923 () Bool)

(assert (=> b!3656360 (= e!2263924 e!2263923)))

(declare-fun res!1483950 () Bool)

(assert (=> b!3656360 (=> res!1483950 e!2263923)))

(assert (=> b!3656360 (= res!1483950 (= (h!43989 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3656361 () Bool)

(assert (=> b!3656361 (= e!2263923 (contains!7633 (t!297916 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1073869 res!1483951) b!3656360))

(assert (= (and b!3656360 (not res!1483950)) b!3656361))

(assert (=> d!1073869 m!4161267))

(declare-fun m!4162099 () Bool)

(assert (=> d!1073869 m!4162099))

(declare-fun m!4162101 () Bool)

(assert (=> b!3656361 m!4162101))

(assert (=> b!3655586 d!1073869))

(declare-fun d!1073871 () Bool)

(assert (=> d!1073871 (= (isEmpty!22864 suffix!1395) ((_ is Nil!38567) suffix!1395))))

(assert (=> b!3655565 d!1073871))

(declare-fun d!1073873 () Bool)

(assert (=> d!1073873 (not (matchR!5112 (regex!5784 rule!403) lt!1269947))))

(declare-fun lt!1270324 () Unit!55719)

(assert (=> d!1073873 (= lt!1270324 (choose!21584 (regex!5784 rule!403) lt!1269947 lt!1269939))))

(assert (=> d!1073873 (validRegex!4824 (regex!5784 rule!403))))

(assert (=> d!1073873 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!732 (regex!5784 rule!403) lt!1269947 lt!1269939) lt!1270324)))

(declare-fun bs!572433 () Bool)

(assert (= bs!572433 d!1073873))

(assert (=> bs!572433 m!4161081))

(declare-fun m!4162103 () Bool)

(assert (=> bs!572433 m!4162103))

(assert (=> bs!572433 m!4161309))

(assert (=> b!3655584 d!1073873))

(declare-fun d!1073875 () Bool)

(assert (=> d!1073875 (= (isEmpty!22864 (_2!22348 lt!1269962)) ((_ is Nil!38567) (_2!22348 lt!1269962)))))

(assert (=> b!3655585 d!1073875))

(declare-fun b!3656373 () Bool)

(declare-fun e!2263927 () Bool)

(declare-fun tp!1114185 () Bool)

(declare-fun tp!1114187 () Bool)

(assert (=> b!3656373 (= e!2263927 (and tp!1114185 tp!1114187))))

(declare-fun b!3656375 () Bool)

(declare-fun tp!1114189 () Bool)

(declare-fun tp!1114188 () Bool)

(assert (=> b!3656375 (= e!2263927 (and tp!1114189 tp!1114188))))

(declare-fun b!3656374 () Bool)

(declare-fun tp!1114186 () Bool)

(assert (=> b!3656374 (= e!2263927 tp!1114186)))

(declare-fun b!3656372 () Bool)

(assert (=> b!3656372 (= e!2263927 tp_is_empty!18169)))

(assert (=> b!3655601 (= tp!1114106 e!2263927)))

(assert (= (and b!3655601 ((_ is ElementMatch!10543) (regex!5784 rule!403))) b!3656372))

(assert (= (and b!3655601 ((_ is Concat!16558) (regex!5784 rule!403))) b!3656373))

(assert (= (and b!3655601 ((_ is Star!10543) (regex!5784 rule!403))) b!3656374))

(assert (= (and b!3655601 ((_ is Union!10543) (regex!5784 rule!403))) b!3656375))

(declare-fun b!3656380 () Bool)

(declare-fun e!2263930 () Bool)

(declare-fun tp!1114192 () Bool)

(assert (=> b!3656380 (= e!2263930 (and tp_is_empty!18169 tp!1114192))))

(assert (=> b!3655606 (= tp!1114109 e!2263930)))

(assert (= (and b!3655606 ((_ is Cons!38567) (t!297914 suffix!1395))) b!3656380))

(declare-fun b!3656382 () Bool)

(declare-fun e!2263931 () Bool)

(declare-fun tp!1114193 () Bool)

(declare-fun tp!1114195 () Bool)

(assert (=> b!3656382 (= e!2263931 (and tp!1114193 tp!1114195))))

(declare-fun b!3656384 () Bool)

(declare-fun tp!1114197 () Bool)

(declare-fun tp!1114196 () Bool)

(assert (=> b!3656384 (= e!2263931 (and tp!1114197 tp!1114196))))

(declare-fun b!3656383 () Bool)

(declare-fun tp!1114194 () Bool)

(assert (=> b!3656383 (= e!2263931 tp!1114194)))

(declare-fun b!3656381 () Bool)

(assert (=> b!3656381 (= e!2263931 tp_is_empty!18169)))

(assert (=> b!3655604 (= tp!1114112 e!2263931)))

(assert (= (and b!3655604 ((_ is ElementMatch!10543) (regex!5784 anOtherTypeRule!33))) b!3656381))

(assert (= (and b!3655604 ((_ is Concat!16558) (regex!5784 anOtherTypeRule!33))) b!3656382))

(assert (= (and b!3655604 ((_ is Star!10543) (regex!5784 anOtherTypeRule!33))) b!3656383))

(assert (= (and b!3655604 ((_ is Union!10543) (regex!5784 anOtherTypeRule!33))) b!3656384))

(declare-fun b!3656386 () Bool)

(declare-fun e!2263932 () Bool)

(declare-fun tp!1114198 () Bool)

(declare-fun tp!1114200 () Bool)

(assert (=> b!3656386 (= e!2263932 (and tp!1114198 tp!1114200))))

(declare-fun b!3656388 () Bool)

(declare-fun tp!1114202 () Bool)

(declare-fun tp!1114201 () Bool)

(assert (=> b!3656388 (= e!2263932 (and tp!1114202 tp!1114201))))

(declare-fun b!3656387 () Bool)

(declare-fun tp!1114199 () Bool)

(assert (=> b!3656387 (= e!2263932 tp!1114199)))

(declare-fun b!3656385 () Bool)

(assert (=> b!3656385 (= e!2263932 tp_is_empty!18169)))

(assert (=> b!3655605 (= tp!1114113 e!2263932)))

(assert (= (and b!3655605 ((_ is ElementMatch!10543) (regex!5784 (rule!8588 token!511)))) b!3656385))

(assert (= (and b!3655605 ((_ is Concat!16558) (regex!5784 (rule!8588 token!511)))) b!3656386))

(assert (= (and b!3655605 ((_ is Star!10543) (regex!5784 (rule!8588 token!511)))) b!3656387))

(assert (= (and b!3655605 ((_ is Union!10543) (regex!5784 (rule!8588 token!511)))) b!3656388))

(declare-fun b!3656390 () Bool)

(declare-fun e!2263933 () Bool)

(declare-fun tp!1114203 () Bool)

(declare-fun tp!1114205 () Bool)

(assert (=> b!3656390 (= e!2263933 (and tp!1114203 tp!1114205))))

(declare-fun b!3656392 () Bool)

(declare-fun tp!1114207 () Bool)

(declare-fun tp!1114206 () Bool)

(assert (=> b!3656392 (= e!2263933 (and tp!1114207 tp!1114206))))

(declare-fun b!3656391 () Bool)

(declare-fun tp!1114204 () Bool)

(assert (=> b!3656391 (= e!2263933 tp!1114204)))

(declare-fun b!3656389 () Bool)

(assert (=> b!3656389 (= e!2263933 tp_is_empty!18169)))

(assert (=> b!3655590 (= tp!1114111 e!2263933)))

(assert (= (and b!3655590 ((_ is ElementMatch!10543) (regex!5784 (h!43989 rules!3307)))) b!3656389))

(assert (= (and b!3655590 ((_ is Concat!16558) (regex!5784 (h!43989 rules!3307)))) b!3656390))

(assert (= (and b!3655590 ((_ is Star!10543) (regex!5784 (h!43989 rules!3307)))) b!3656391))

(assert (= (and b!3655590 ((_ is Union!10543) (regex!5784 (h!43989 rules!3307)))) b!3656392))

(declare-fun b!3656393 () Bool)

(declare-fun e!2263934 () Bool)

(declare-fun tp!1114208 () Bool)

(assert (=> b!3656393 (= e!2263934 (and tp_is_empty!18169 tp!1114208))))

(assert (=> b!3655566 (= tp!1114102 e!2263934)))

(assert (= (and b!3655566 ((_ is Cons!38567) (originalCharacters!6498 token!511))) b!3656393))

(declare-fun b!3656404 () Bool)

(declare-fun b_free!96373 () Bool)

(declare-fun b_next!97077 () Bool)

(assert (=> b!3656404 (= b_free!96373 (not b_next!97077))))

(declare-fun t!298044 () Bool)

(declare-fun tb!211107 () Bool)

(assert (=> (and b!3656404 (= (toValue!8076 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298044) tb!211107))

(declare-fun result!257048 () Bool)

(assert (= result!257048 result!256990))

(assert (=> d!1073837 t!298044))

(declare-fun tb!211109 () Bool)

(declare-fun t!298046 () Bool)

(assert (=> (and b!3656404 (= (toValue!8076 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298046) tb!211109))

(declare-fun result!257050 () Bool)

(assert (= result!257050 result!256922))

(assert (=> d!1073549 t!298046))

(declare-fun t!298048 () Bool)

(declare-fun tb!211111 () Bool)

(assert (=> (and b!3656404 (= (toValue!8076 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toValue!8076 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298048) tb!211111))

(declare-fun result!257052 () Bool)

(assert (= result!257052 result!256902))

(assert (=> d!1073579 t!298048))

(assert (=> d!1073547 t!298048))

(assert (=> d!1073549 t!298048))

(assert (=> d!1073775 t!298044))

(declare-fun tp!1114218 () Bool)

(declare-fun b_and!270959 () Bool)

(assert (=> b!3656404 (= tp!1114218 (and (=> t!298048 result!257052) (=> t!298044 result!257048) (=> t!298046 result!257050) b_and!270959))))

(declare-fun b_free!96375 () Bool)

(declare-fun b_next!97079 () Bool)

(assert (=> b!3656404 (= b_free!96375 (not b_next!97079))))

(declare-fun tb!211113 () Bool)

(declare-fun t!298050 () Bool)

(assert (=> (and b!3656404 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298050) tb!211113))

(declare-fun result!257054 () Bool)

(assert (= result!257054 result!256930))

(assert (=> d!1073579 t!298050))

(declare-fun tb!211115 () Bool)

(declare-fun t!298052 () Bool)

(assert (=> (and b!3656404 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298052) tb!211115))

(declare-fun result!257056 () Bool)

(assert (= result!257056 result!257034))

(assert (=> d!1073837 t!298052))

(declare-fun tb!211117 () Bool)

(declare-fun t!298054 () Bool)

(assert (=> (and b!3656404 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 (_1!22348 lt!1269945))))) t!298054) tb!211117))

(declare-fun result!257058 () Bool)

(assert (= result!257058 result!256974))

(assert (=> d!1073715 t!298054))

(declare-fun t!298056 () Bool)

(declare-fun tb!211119 () Bool)

(assert (=> (and b!3656404 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 token!511)))) t!298056) tb!211119))

(declare-fun result!257060 () Bool)

(assert (= result!257060 result!256982))

(assert (=> b!3656309 t!298056))

(assert (=> d!1073759 t!298056))

(declare-fun b_and!270961 () Bool)

(declare-fun tp!1114217 () Bool)

(assert (=> b!3656404 (= tp!1114217 (and (=> t!298054 result!257058) (=> t!298052 result!257056) (=> t!298050 result!257054) (=> t!298056 result!257060) b_and!270961))))

(declare-fun e!2263945 () Bool)

(assert (=> b!3656404 (= e!2263945 (and tp!1114218 tp!1114217))))

(declare-fun b!3656403 () Bool)

(declare-fun e!2263944 () Bool)

(declare-fun tp!1114220 () Bool)

(assert (=> b!3656403 (= e!2263944 (and tp!1114220 (inv!52025 (tag!6554 (h!43989 (t!297916 rules!3307)))) (inv!52029 (transformation!5784 (h!43989 (t!297916 rules!3307)))) e!2263945))))

(declare-fun b!3656402 () Bool)

(declare-fun e!2263943 () Bool)

(declare-fun tp!1114219 () Bool)

(assert (=> b!3656402 (= e!2263943 (and e!2263944 tp!1114219))))

(assert (=> b!3655572 (= tp!1114104 e!2263943)))

(assert (= b!3656403 b!3656404))

(assert (= b!3656402 b!3656403))

(assert (= (and b!3655572 ((_ is Cons!38569) (t!297916 rules!3307))) b!3656402))

(declare-fun m!4162105 () Bool)

(assert (=> b!3656403 m!4162105))

(declare-fun m!4162107 () Bool)

(assert (=> b!3656403 m!4162107))

(declare-fun b_lambda!108431 () Bool)

(assert (= b_lambda!108411 (or (and b!3655578 b_free!96363 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3656404 b_free!96375 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3655603 b_free!96355 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3655582 b_free!96359) (and b!3655560 b_free!96367 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) b_lambda!108431)))

(declare-fun b_lambda!108433 () Bool)

(assert (= b_lambda!108429 (or (and b!3655578 b_free!96363 (= (toChars!7935 (transformation!5784 anOtherTypeRule!33)) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3656404 b_free!96375 (= (toChars!7935 (transformation!5784 (h!43989 (t!297916 rules!3307)))) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3655603 b_free!96355 (= (toChars!7935 (transformation!5784 (h!43989 rules!3307))) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) (and b!3655582 b_free!96359) (and b!3655560 b_free!96367 (= (toChars!7935 (transformation!5784 rule!403)) (toChars!7935 (transformation!5784 (rule!8588 token!511))))) b_lambda!108433)))

(check-sat (not bm!264321) (not d!1073855) (not b!3656133) (not b!3655867) (not b!3656391) (not b!3656341) (not d!1073867) (not d!1073761) (not b_lambda!108427) (not b!3656384) (not b_lambda!108389) (not b!3655942) (not bm!264352) (not b_next!97061) (not d!1073765) (not b!3655930) (not b!3656286) b_and!270951 (not d!1073837) tp_is_empty!18169 (not b_next!97057) (not bm!264345) (not b!3656332) (not b!3656285) (not d!1073861) (not d!1073735) (not d!1073841) (not b!3655855) (not b!3656357) b_and!270961 (not b!3655882) (not b!3656322) (not b!3656281) (not b!3655921) (not b!3656234) (not b!3656269) (not b!3655786) (not b!3656096) (not b!3656138) (not b_next!97079) (not bm!264368) (not d!1073757) (not b!3656130) (not b!3656137) (not b!3656230) (not b!3655837) (not tb!210981) (not b!3656331) (not d!1073727) (not b!3655795) (not b!3655932) (not b_next!97059) (not b!3656135) (not d!1073767) (not d!1073829) (not b!3656309) (not b!3656319) (not b!3656311) (not b_next!97065) (not d!1073769) (not tb!211061) (not d!1073659) (not b!3655735) (not d!1073583) (not d!1073835) (not b!3656015) (not b_next!97077) b_and!270947 (not b!3656392) (not b!3656375) (not b!3656237) (not bm!264367) (not bm!264365) (not b!3655927) (not b!3656092) (not tb!211045) (not b!3656328) (not b!3656233) (not d!1073825) (not bm!264323) (not d!1073579) (not bm!264322) (not b_lambda!108387) (not d!1073587) (not d!1073603) (not b!3655853) (not bm!264362) (not b!3656145) (not d!1073549) (not d!1073657) (not d!1073847) (not tb!210997) (not b!3656302) (not d!1073643) (not b!3655749) (not b!3656382) (not b_lambda!108413) (not d!1073831) (not b_next!97071) b_and!270949 (not b!3656356) (not b!3656402) (not b!3655743) (not b!3656132) (not b_next!97069) (not b_lambda!108393) (not b!3656383) (not d!1073869) (not b!3655922) (not b_lambda!108433) (not d!1073749) (not b!3656387) (not b!3656330) (not d!1073647) (not b!3656304) (not bm!264366) (not b!3655923) (not d!1073839) (not d!1073873) (not d!1073773) (not b!3656016) (not b!3656231) (not b!3655750) (not b!3655807) (not b!3656359) (not bm!264347) (not b_next!97067) (not b!3655744) (not tb!211005) (not b_lambda!108431) (not b_lambda!108425) (not b!3655881) (not d!1073753) (not d!1073851) b_and!270959 (not tb!211099) (not b!3656134) (not b!3655793) (not b!3656284) (not d!1073671) (not b!3656323) (not b!3655924) (not b!3656140) (not b!3655866) (not d!1073653) (not b!3656128) (not b!3656321) (not d!1073777) (not b!3656393) (not bm!264348) (not b!3655920) (not d!1073541) (not d!1073755) (not d!1073575) (not b!3656232) (not d!1073859) (not b!3656094) (not b!3655787) (not d!1073747) b_and!270957 (not b!3656338) (not b!3656127) (not b!3656152) (not b!3655925) (not b!3656342) (not b!3656028) (not d!1073717) (not d!1073617) (not b!3656373) (not d!1073577) (not bm!264349) (not b!3656312) (not d!1073545) (not b!3656403) (not b!3656386) (not b!3656136) (not b!3655816) (not d!1073589) (not b!3656093) (not b!3655797) (not b!3656361) (not b!3656380) (not b!3655883) (not b!3656340) (not b!3655865) (not b!3656390) b_and!270955 (not b!3655926) b_and!270943 (not d!1073625) (not d!1073853) (not d!1073649) (not b_lambda!108409) (not d!1073715) (not b!3656388) b_and!270945 (not b!3656131) (not b!3655725) (not b!3656310) (not b!3655931) (not b_lambda!108383) (not b!3656228) (not d!1073595) (not b!3656374) (not b!3656097) (not d!1073725) (not b!3656229) (not d!1073613) (not b!3656313) (not b!3655796) (not d!1073669) (not b!3655943) (not tb!211053) (not d!1073737) (not d!1073843) (not d!1073759) (not d!1073633) (not b_lambda!108391) b_and!270953 (not b_next!97063) (not b!3656017) (not d!1073631) (not bm!264369) (not b!3655734))
(check-sat b_and!270961 (not b_next!97079) (not b_next!97059) (not b_next!97065) (not b_next!97069) (not b_next!97067) b_and!270959 b_and!270957 b_and!270945 b_and!270953 (not b_next!97063) (not b_next!97061) b_and!270951 (not b_next!97057) (not b_next!97077) b_and!270947 (not b_next!97071) b_and!270949 b_and!270943 b_and!270955)
