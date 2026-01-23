; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337062 () Bool)

(assert start!337062)

(declare-fun b!3619531 () Bool)

(declare-fun b_free!94321 () Bool)

(declare-fun b_next!95025 () Bool)

(assert (=> b!3619531 (= b_free!94321 (not b_next!95025))))

(declare-fun tp!1105700 () Bool)

(declare-fun b_and!264531 () Bool)

(assert (=> b!3619531 (= tp!1105700 b_and!264531)))

(declare-fun b_free!94323 () Bool)

(declare-fun b_next!95027 () Bool)

(assert (=> b!3619531 (= b_free!94323 (not b_next!95027))))

(declare-fun tp!1105705 () Bool)

(declare-fun b_and!264533 () Bool)

(assert (=> b!3619531 (= tp!1105705 b_and!264533)))

(declare-fun b!3619538 () Bool)

(declare-fun b_free!94325 () Bool)

(declare-fun b_next!95029 () Bool)

(assert (=> b!3619538 (= b_free!94325 (not b_next!95029))))

(declare-fun tp!1105698 () Bool)

(declare-fun b_and!264535 () Bool)

(assert (=> b!3619538 (= tp!1105698 b_and!264535)))

(declare-fun b_free!94327 () Bool)

(declare-fun b_next!95031 () Bool)

(assert (=> b!3619538 (= b_free!94327 (not b_next!95031))))

(declare-fun tp!1105697 () Bool)

(declare-fun b_and!264537 () Bool)

(assert (=> b!3619538 (= tp!1105697 b_and!264537)))

(declare-fun b!3619543 () Bool)

(declare-fun b_free!94329 () Bool)

(declare-fun b_next!95033 () Bool)

(assert (=> b!3619543 (= b_free!94329 (not b_next!95033))))

(declare-fun tp!1105694 () Bool)

(declare-fun b_and!264539 () Bool)

(assert (=> b!3619543 (= tp!1105694 b_and!264539)))

(declare-fun b_free!94331 () Bool)

(declare-fun b_next!95035 () Bool)

(assert (=> b!3619543 (= b_free!94331 (not b_next!95035))))

(declare-fun tp!1105707 () Bool)

(declare-fun b_and!264541 () Bool)

(assert (=> b!3619543 (= tp!1105707 b_and!264541)))

(declare-fun b!3619537 () Bool)

(declare-fun b_free!94333 () Bool)

(declare-fun b_next!95037 () Bool)

(assert (=> b!3619537 (= b_free!94333 (not b_next!95037))))

(declare-fun tp!1105703 () Bool)

(declare-fun b_and!264543 () Bool)

(assert (=> b!3619537 (= tp!1105703 b_and!264543)))

(declare-fun b_free!94335 () Bool)

(declare-fun b_next!95039 () Bool)

(assert (=> b!3619537 (= b_free!94335 (not b_next!95039))))

(declare-fun tp!1105704 () Bool)

(declare-fun b_and!264545 () Bool)

(assert (=> b!3619537 (= tp!1105704 b_and!264545)))

(declare-fun b!3619517 () Bool)

(declare-datatypes ((C!21048 0))(
  ( (C!21049 (val!12572 Int)) )
))
(declare-datatypes ((Regex!10431 0))(
  ( (ElementMatch!10431 (c!626358 C!21048)) (Concat!16333 (regOne!21374 Regex!10431) (regTwo!21374 Regex!10431)) (EmptyExpr!10431) (Star!10431 (reg!10760 Regex!10431)) (EmptyLang!10431) (Union!10431 (regOne!21375 Regex!10431) (regTwo!21375 Regex!10431)) )
))
(declare-datatypes ((String!42843 0))(
  ( (String!42844 (value!182086 String)) )
))
(declare-datatypes ((List!38245 0))(
  ( (Nil!38121) (Cons!38121 (h!43541 (_ BitVec 16)) (t!294036 List!38245)) )
))
(declare-datatypes ((TokenValue!5902 0))(
  ( (FloatLiteralValue!11804 (text!41759 List!38245)) (TokenValueExt!5901 (__x!24021 Int)) (Broken!29510 (value!182087 List!38245)) (Object!6025) (End!5902) (Def!5902) (Underscore!5902) (Match!5902) (Else!5902) (Error!5902) (Case!5902) (If!5902) (Extends!5902) (Abstract!5902) (Class!5902) (Val!5902) (DelimiterValue!11804 (del!5962 List!38245)) (KeywordValue!5908 (value!182088 List!38245)) (CommentValue!11804 (value!182089 List!38245)) (WhitespaceValue!11804 (value!182090 List!38245)) (IndentationValue!5902 (value!182091 List!38245)) (String!42845) (Int32!5902) (Broken!29511 (value!182092 List!38245)) (Boolean!5903) (Unit!54782) (OperatorValue!5905 (op!5962 List!38245)) (IdentifierValue!11804 (value!182093 List!38245)) (IdentifierValue!11805 (value!182094 List!38245)) (WhitespaceValue!11805 (value!182095 List!38245)) (True!11804) (False!11804) (Broken!29512 (value!182096 List!38245)) (Broken!29513 (value!182097 List!38245)) (True!11805) (RightBrace!5902) (RightBracket!5902) (Colon!5902) (Null!5902) (Comma!5902) (LeftBracket!5902) (False!11805) (LeftBrace!5902) (ImaginaryLiteralValue!5902 (text!41760 List!38245)) (StringLiteralValue!17706 (value!182098 List!38245)) (EOFValue!5902 (value!182099 List!38245)) (IdentValue!5902 (value!182100 List!38245)) (DelimiterValue!11805 (value!182101 List!38245)) (DedentValue!5902 (value!182102 List!38245)) (NewLineValue!5902 (value!182103 List!38245)) (IntegerValue!17706 (value!182104 (_ BitVec 32)) (text!41761 List!38245)) (IntegerValue!17707 (value!182105 Int) (text!41762 List!38245)) (Times!5902) (Or!5902) (Equal!5902) (Minus!5902) (Broken!29514 (value!182106 List!38245)) (And!5902) (Div!5902) (LessEqual!5902) (Mod!5902) (Concat!16334) (Not!5902) (Plus!5902) (SpaceValue!5902 (value!182107 List!38245)) (IntegerValue!17708 (value!182108 Int) (text!41763 List!38245)) (StringLiteralValue!17707 (text!41764 List!38245)) (FloatLiteralValue!11805 (text!41765 List!38245)) (BytesLiteralValue!5902 (value!182109 List!38245)) (CommentValue!11805 (value!182110 List!38245)) (StringLiteralValue!17708 (value!182111 List!38245)) (ErrorTokenValue!5902 (msg!5963 List!38245)) )
))
(declare-datatypes ((List!38246 0))(
  ( (Nil!38122) (Cons!38122 (h!43542 C!21048) (t!294037 List!38246)) )
))
(declare-datatypes ((IArray!23251 0))(
  ( (IArray!23252 (innerList!11683 List!38246)) )
))
(declare-datatypes ((Conc!11623 0))(
  ( (Node!11623 (left!29769 Conc!11623) (right!30099 Conc!11623) (csize!23476 Int) (cheight!11834 Int)) (Leaf!18070 (xs!14825 IArray!23251) (csize!23477 Int)) (Empty!11623) )
))
(declare-datatypes ((BalanceConc!22860 0))(
  ( (BalanceConc!22861 (c!626359 Conc!11623)) )
))
(declare-datatypes ((TokenValueInjection!11232 0))(
  ( (TokenValueInjection!11233 (toValue!7956 Int) (toChars!7815 Int)) )
))
(declare-datatypes ((Rule!11144 0))(
  ( (Rule!11145 (regex!5672 Regex!10431) (tag!6388 String!42843) (isSeparator!5672 Bool) (transformation!5672 TokenValueInjection!11232)) )
))
(declare-fun rule!403 () Rule!11144)

(declare-fun tp!1105699 () Bool)

(declare-fun e!2240357 () Bool)

(declare-fun e!2240351 () Bool)

(declare-fun inv!51510 (String!42843) Bool)

(declare-fun inv!51513 (TokenValueInjection!11232) Bool)

(assert (=> b!3619517 (= e!2240351 (and tp!1105699 (inv!51510 (tag!6388 rule!403)) (inv!51513 (transformation!5672 rule!403)) e!2240357))))

(declare-fun b!3619518 () Bool)

(declare-datatypes ((Unit!54783 0))(
  ( (Unit!54784) )
))
(declare-fun e!2240377 () Unit!54783)

(declare-fun e!2240356 () Unit!54783)

(assert (=> b!3619518 (= e!2240377 e!2240356)))

(declare-fun c!626353 () Bool)

(declare-datatypes ((Token!10710 0))(
  ( (Token!10711 (value!182112 TokenValue!5902) (rule!8432 Rule!11144) (size!29083 Int) (originalCharacters!6386 List!38246)) )
))
(declare-datatypes ((tuple2!38000 0))(
  ( (tuple2!38001 (_1!22134 Token!10710) (_2!22134 List!38246)) )
))
(declare-fun lt!1250261 () tuple2!38000)

(assert (=> b!3619518 (= c!626353 (not (isSeparator!5672 (rule!8432 (_1!22134 lt!1250261)))))))

(declare-fun b!3619519 () Bool)

(declare-fun e!2240347 () Bool)

(declare-fun tp_is_empty!17945 () Bool)

(declare-fun tp!1105706 () Bool)

(assert (=> b!3619519 (= e!2240347 (and tp_is_empty!17945 tp!1105706))))

(declare-fun b!3619520 () Bool)

(declare-fun e!2240355 () Bool)

(declare-fun e!2240359 () Bool)

(assert (=> b!3619520 (= e!2240355 e!2240359)))

(declare-fun res!1464644 () Bool)

(assert (=> b!3619520 (=> res!1464644 e!2240359)))

(declare-datatypes ((Option!7974 0))(
  ( (None!7973) (Some!7973 (v!37735 tuple2!38000)) )
))
(declare-fun lt!1250276 () Option!7974)

(declare-fun lt!1250309 () List!38246)

(assert (=> b!3619520 (= res!1464644 (or (not (= lt!1250309 (_2!22134 lt!1250261))) (not (= lt!1250276 (Some!7973 (tuple2!38001 (_1!22134 lt!1250261) lt!1250309))))))))

(assert (=> b!3619520 (= (_2!22134 lt!1250261) lt!1250309)))

(declare-fun lt!1250283 () List!38246)

(declare-fun lt!1250313 () Unit!54783)

(declare-fun lt!1250259 () List!38246)

(declare-fun lemmaSamePrefixThenSameSuffix!1390 (List!38246 List!38246 List!38246 List!38246 List!38246) Unit!54783)

(assert (=> b!3619520 (= lt!1250313 (lemmaSamePrefixThenSameSuffix!1390 lt!1250283 (_2!22134 lt!1250261) lt!1250283 lt!1250309 lt!1250259))))

(declare-fun getSuffix!1610 (List!38246 List!38246) List!38246)

(assert (=> b!3619520 (= lt!1250309 (getSuffix!1610 lt!1250259 lt!1250283))))

(declare-fun lt!1250267 () TokenValue!5902)

(declare-fun lt!1250255 () Int)

(assert (=> b!3619520 (= lt!1250276 (Some!7973 (tuple2!38001 (Token!10711 lt!1250267 (rule!8432 (_1!22134 lt!1250261)) lt!1250255 lt!1250283) (_2!22134 lt!1250261))))))

(declare-datatypes ((LexerInterface!5261 0))(
  ( (LexerInterfaceExt!5258 (__x!24022 Int)) (Lexer!5259) )
))
(declare-fun thiss!23823 () LexerInterface!5261)

(declare-fun maxPrefixOneRule!1939 (LexerInterface!5261 Rule!11144 List!38246) Option!7974)

(assert (=> b!3619520 (= lt!1250276 (maxPrefixOneRule!1939 thiss!23823 (rule!8432 (_1!22134 lt!1250261)) lt!1250259))))

(declare-fun size!29084 (List!38246) Int)

(assert (=> b!3619520 (= lt!1250255 (size!29084 lt!1250283))))

(declare-fun apply!9178 (TokenValueInjection!11232 BalanceConc!22860) TokenValue!5902)

(declare-fun seqFromList!4225 (List!38246) BalanceConc!22860)

(assert (=> b!3619520 (= lt!1250267 (apply!9178 (transformation!5672 (rule!8432 (_1!22134 lt!1250261))) (seqFromList!4225 lt!1250283)))))

(declare-datatypes ((List!38247 0))(
  ( (Nil!38123) (Cons!38123 (h!43543 Rule!11144) (t!294038 List!38247)) )
))
(declare-fun rules!3307 () List!38247)

(declare-fun lt!1250282 () Unit!54783)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1011 (LexerInterface!5261 List!38247 List!38246 List!38246 List!38246 Rule!11144) Unit!54783)

(assert (=> b!3619520 (= lt!1250282 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1011 thiss!23823 rules!3307 lt!1250283 lt!1250259 (_2!22134 lt!1250261) (rule!8432 (_1!22134 lt!1250261))))))

(declare-fun b!3619521 () Bool)

(declare-fun res!1464631 () Bool)

(declare-fun e!2240346 () Bool)

(assert (=> b!3619521 (=> (not res!1464631) (not e!2240346))))

(declare-fun token!511 () Token!10710)

(assert (=> b!3619521 (= res!1464631 (= (rule!8432 token!511) rule!403))))

(declare-fun b!3619522 () Bool)

(declare-fun e!2240373 () Bool)

(assert (=> b!3619522 (= e!2240346 (not e!2240373))))

(declare-fun res!1464645 () Bool)

(assert (=> b!3619522 (=> res!1464645 e!2240373)))

(declare-fun lt!1250300 () List!38246)

(declare-fun matchR!5000 (Regex!10431 List!38246) Bool)

(assert (=> b!3619522 (= res!1464645 (not (matchR!5000 (regex!5672 rule!403) lt!1250300)))))

(declare-fun ruleValid!1937 (LexerInterface!5261 Rule!11144) Bool)

(assert (=> b!3619522 (ruleValid!1937 thiss!23823 rule!403)))

(declare-fun lt!1250288 () Unit!54783)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1092 (LexerInterface!5261 Rule!11144 List!38247) Unit!54783)

(assert (=> b!3619522 (= lt!1250288 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1092 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!261864 () Bool)

(declare-fun call!261873 () Bool)

(declare-fun call!261874 () List!38246)

(declare-fun lt!1250280 () C!21048)

(declare-fun contains!7407 (List!38246 C!21048) Bool)

(assert (=> bm!261864 (= call!261873 (contains!7407 call!261874 lt!1250280))))

(declare-fun b!3619523 () Bool)

(declare-fun e!2240378 () Unit!54783)

(declare-fun Unit!54785 () Unit!54783)

(assert (=> b!3619523 (= e!2240378 Unit!54785)))

(declare-fun b!3619524 () Bool)

(declare-fun res!1464630 () Bool)

(declare-fun e!2240372 () Bool)

(assert (=> b!3619524 (=> (not res!1464630) (not e!2240372))))

(declare-fun anOtherTypeRule!33 () Rule!11144)

(assert (=> b!3619524 (= res!1464630 (not (= (isSeparator!5672 anOtherTypeRule!33) (isSeparator!5672 rule!403))))))

(declare-fun bm!261865 () Bool)

(declare-fun usedCharacters!886 (Regex!10431) List!38246)

(assert (=> bm!261865 (= call!261874 (usedCharacters!886 (regex!5672 (rule!8432 (_1!22134 lt!1250261)))))))

(declare-fun b!3619525 () Bool)

(declare-fun res!1464643 () Bool)

(declare-fun e!2240368 () Bool)

(assert (=> b!3619525 (=> res!1464643 e!2240368)))

(declare-fun lt!1250297 () C!21048)

(assert (=> b!3619525 (= res!1464643 (not (contains!7407 (usedCharacters!886 (regex!5672 anOtherTypeRule!33)) lt!1250297)))))

(declare-fun res!1464638 () Bool)

(assert (=> start!337062 (=> (not res!1464638) (not e!2240372))))

(get-info :version)

(assert (=> start!337062 (= res!1464638 ((_ is Lexer!5259) thiss!23823))))

(assert (=> start!337062 e!2240372))

(declare-fun e!2240369 () Bool)

(assert (=> start!337062 e!2240369))

(assert (=> start!337062 e!2240347))

(assert (=> start!337062 true))

(declare-fun e!2240376 () Bool)

(declare-fun inv!51514 (Token!10710) Bool)

(assert (=> start!337062 (and (inv!51514 token!511) e!2240376)))

(assert (=> start!337062 e!2240351))

(declare-fun e!2240367 () Bool)

(assert (=> start!337062 e!2240367))

(declare-fun b!3619526 () Bool)

(declare-fun e!2240375 () Bool)

(declare-fun e!2240379 () Bool)

(assert (=> b!3619526 (= e!2240375 e!2240379)))

(declare-fun res!1464639 () Bool)

(assert (=> b!3619526 (=> (not res!1464639) (not e!2240379))))

(declare-fun lt!1250302 () Rule!11144)

(declare-fun list!14068 (BalanceConc!22860) List!38246)

(declare-fun charsOf!3686 (Token!10710) BalanceConc!22860)

(assert (=> b!3619526 (= res!1464639 (matchR!5000 (regex!5672 lt!1250302) (list!14068 (charsOf!3686 (_1!22134 lt!1250261)))))))

(declare-datatypes ((Option!7975 0))(
  ( (None!7974) (Some!7974 (v!37736 Rule!11144)) )
))
(declare-fun lt!1250287 () Option!7975)

(declare-fun get!12420 (Option!7975) Rule!11144)

(assert (=> b!3619526 (= lt!1250302 (get!12420 lt!1250287))))

(declare-fun b!3619527 () Bool)

(declare-fun res!1464649 () Bool)

(assert (=> b!3619527 (=> res!1464649 e!2240368)))

(declare-fun sepAndNonSepRulesDisjointChars!1842 (List!38247 List!38247) Bool)

(assert (=> b!3619527 (= res!1464649 (not (sepAndNonSepRulesDisjointChars!1842 rules!3307 rules!3307)))))

(declare-fun e!2240366 () Bool)

(declare-fun tp!1105702 () Bool)

(declare-fun e!2240371 () Bool)

(declare-fun b!3619528 () Bool)

(assert (=> b!3619528 (= e!2240371 (and tp!1105702 (inv!51510 (tag!6388 (h!43543 rules!3307))) (inv!51513 (transformation!5672 (h!43543 rules!3307))) e!2240366))))

(declare-fun bm!261866 () Bool)

(declare-fun call!261872 () Unit!54783)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!656 (Regex!10431 List!38246 C!21048) Unit!54783)

(assert (=> bm!261866 (= call!261872 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!656 (regex!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250283 lt!1250280))))

(declare-fun b!3619529 () Bool)

(assert (=> b!3619529 (= e!2240379 (= (rule!8432 (_1!22134 lt!1250261)) lt!1250302))))

(declare-fun b!3619530 () Bool)

(declare-fun e!2240360 () Unit!54783)

(declare-fun Unit!54786 () Unit!54783)

(assert (=> b!3619530 (= e!2240360 Unit!54786)))

(declare-fun lt!1250294 () Int)

(declare-fun getIndex!454 (List!38247 Rule!11144) Int)

(assert (=> b!3619530 (= lt!1250294 (getIndex!454 rules!3307 (rule!8432 (_1!22134 lt!1250261))))))

(declare-fun lt!1250310 () Int)

(assert (=> b!3619530 (= lt!1250310 (getIndex!454 rules!3307 rule!403))))

(declare-fun c!626350 () Bool)

(assert (=> b!3619530 (= c!626350 (< lt!1250294 lt!1250310))))

(declare-fun lt!1250286 () Unit!54783)

(declare-fun e!2240365 () Unit!54783)

(assert (=> b!3619530 (= lt!1250286 e!2240365)))

(declare-fun c!626356 () Bool)

(assert (=> b!3619530 (= c!626356 (< lt!1250310 lt!1250294))))

(declare-fun lt!1250301 () Unit!54783)

(declare-fun e!2240380 () Unit!54783)

(assert (=> b!3619530 (= lt!1250301 e!2240380)))

(declare-fun lt!1250281 () Unit!54783)

(declare-fun lemmaSameIndexThenSameElement!222 (List!38247 Rule!11144 Rule!11144) Unit!54783)

(assert (=> b!3619530 (= lt!1250281 (lemmaSameIndexThenSameElement!222 rules!3307 (rule!8432 (_1!22134 lt!1250261)) rule!403))))

(assert (=> b!3619530 false))

(declare-fun e!2240348 () Bool)

(assert (=> b!3619531 (= e!2240348 (and tp!1105700 tp!1105705))))

(declare-fun b!3619532 () Bool)

(declare-fun e!2240370 () Unit!54783)

(declare-fun Unit!54787 () Unit!54783)

(assert (=> b!3619532 (= e!2240370 Unit!54787)))

(declare-fun b!3619533 () Bool)

(declare-fun res!1464648 () Bool)

(assert (=> b!3619533 (=> (not res!1464648) (not e!2240372))))

(declare-fun rulesInvariant!4658 (LexerInterface!5261 List!38247) Bool)

(assert (=> b!3619533 (= res!1464648 (rulesInvariant!4658 thiss!23823 rules!3307))))

(declare-fun b!3619534 () Bool)

(declare-fun res!1464634 () Bool)

(assert (=> b!3619534 (=> (not res!1464634) (not e!2240372))))

(declare-fun contains!7408 (List!38247 Rule!11144) Bool)

(assert (=> b!3619534 (= res!1464634 (contains!7408 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3619535 () Bool)

(declare-fun e!2240361 () Unit!54783)

(declare-fun Unit!54788 () Unit!54783)

(assert (=> b!3619535 (= e!2240361 Unit!54788)))

(declare-fun lt!1250270 () Unit!54783)

(assert (=> b!3619535 (= lt!1250270 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!656 (regex!5672 rule!403) lt!1250300 lt!1250280))))

(assert (=> b!3619535 false))

(declare-fun b!3619536 () Bool)

(declare-fun res!1464637 () Bool)

(assert (=> b!3619536 (=> (not res!1464637) (not e!2240346))))

(declare-fun lt!1250272 () tuple2!38000)

(declare-fun isEmpty!22526 (List!38246) Bool)

(assert (=> b!3619536 (= res!1464637 (isEmpty!22526 (_2!22134 lt!1250272)))))

(assert (=> b!3619537 (= e!2240366 (and tp!1105703 tp!1105704))))

(declare-fun e!2240362 () Bool)

(assert (=> b!3619538 (= e!2240362 (and tp!1105698 tp!1105697))))

(declare-fun b!3619539 () Bool)

(declare-fun e!2240358 () Unit!54783)

(assert (=> b!3619539 (= e!2240378 e!2240358)))

(declare-fun suffix!1395 () List!38246)

(declare-fun lt!1250299 () Unit!54783)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!50 (List!38246 List!38246 List!38246 List!38246) Unit!54783)

(assert (=> b!3619539 (= lt!1250299 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!50 lt!1250300 suffix!1395 lt!1250283 lt!1250259))))

(assert (=> b!3619539 (contains!7407 lt!1250283 lt!1250297)))

(declare-fun c!626357 () Bool)

(assert (=> b!3619539 (= c!626357 (isSeparator!5672 rule!403))))

(declare-fun b!3619540 () Bool)

(assert (=> b!3619540 false))

(declare-fun lt!1250273 () Unit!54783)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!206 (LexerInterface!5261 List!38247 Rule!11144 List!38246 List!38246 Rule!11144) Unit!54783)

(assert (=> b!3619540 (= lt!1250273 (lemmaMaxPrefNoSmallerRuleMatches!206 thiss!23823 rules!3307 (rule!8432 (_1!22134 lt!1250261)) lt!1250300 lt!1250259 rule!403))))

(declare-fun Unit!54789 () Unit!54783)

(assert (=> b!3619540 (= e!2240380 Unit!54789)))

(declare-fun b!3619541 () Bool)

(declare-fun Unit!54790 () Unit!54783)

(assert (=> b!3619541 (= e!2240380 Unit!54790)))

(declare-fun b!3619542 () Bool)

(declare-fun e!2240345 () Bool)

(assert (=> b!3619542 (= e!2240368 e!2240345)))

(declare-fun res!1464629 () Bool)

(assert (=> b!3619542 (=> res!1464629 e!2240345)))

(declare-fun isPrefix!3035 (List!38246 List!38246) Bool)

(assert (=> b!3619542 (= res!1464629 (not (isPrefix!3035 lt!1250283 lt!1250259)))))

(declare-fun lt!1250277 () List!38246)

(assert (=> b!3619542 (isPrefix!3035 lt!1250283 lt!1250277)))

(declare-fun ++!9488 (List!38246 List!38246) List!38246)

(assert (=> b!3619542 (= lt!1250277 (++!9488 lt!1250283 (_2!22134 lt!1250261)))))

(declare-fun lt!1250289 () Unit!54783)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1956 (List!38246 List!38246) Unit!54783)

(assert (=> b!3619542 (= lt!1250289 (lemmaConcatTwoListThenFirstIsPrefix!1956 lt!1250283 (_2!22134 lt!1250261)))))

(declare-fun lt!1250260 () BalanceConc!22860)

(assert (=> b!3619542 (= lt!1250283 (list!14068 lt!1250260))))

(assert (=> b!3619542 (= lt!1250260 (charsOf!3686 (_1!22134 lt!1250261)))))

(assert (=> b!3619542 e!2240375))

(declare-fun res!1464640 () Bool)

(assert (=> b!3619542 (=> (not res!1464640) (not e!2240375))))

(declare-fun isDefined!6206 (Option!7975) Bool)

(assert (=> b!3619542 (= res!1464640 (isDefined!6206 lt!1250287))))

(declare-fun getRuleFromTag!1278 (LexerInterface!5261 List!38247 String!42843) Option!7975)

(assert (=> b!3619542 (= lt!1250287 (getRuleFromTag!1278 thiss!23823 rules!3307 (tag!6388 (rule!8432 (_1!22134 lt!1250261)))))))

(declare-fun lt!1250256 () Unit!54783)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1278 (LexerInterface!5261 List!38247 List!38246 Token!10710) Unit!54783)

(assert (=> b!3619542 (= lt!1250256 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1278 thiss!23823 rules!3307 lt!1250259 (_1!22134 lt!1250261)))))

(declare-fun lt!1250262 () Option!7974)

(declare-fun get!12421 (Option!7974) tuple2!38000)

(assert (=> b!3619542 (= lt!1250261 (get!12421 lt!1250262))))

(declare-fun lt!1250291 () Unit!54783)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!941 (LexerInterface!5261 List!38247 List!38246 List!38246) Unit!54783)

(assert (=> b!3619542 (= lt!1250291 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!941 thiss!23823 rules!3307 lt!1250300 suffix!1395))))

(declare-fun maxPrefix!2795 (LexerInterface!5261 List!38247 List!38246) Option!7974)

(assert (=> b!3619542 (= lt!1250262 (maxPrefix!2795 thiss!23823 rules!3307 lt!1250259))))

(assert (=> b!3619542 (isPrefix!3035 lt!1250300 lt!1250259)))

(declare-fun lt!1250298 () Unit!54783)

(assert (=> b!3619542 (= lt!1250298 (lemmaConcatTwoListThenFirstIsPrefix!1956 lt!1250300 suffix!1395))))

(assert (=> b!3619542 (= lt!1250259 (++!9488 lt!1250300 suffix!1395))))

(assert (=> b!3619543 (= e!2240357 (and tp!1105694 tp!1105707))))

(declare-fun bm!261867 () Bool)

(declare-fun call!261871 () List!38246)

(assert (=> bm!261867 (= call!261871 (usedCharacters!886 (regex!5672 (rule!8432 (_1!22134 lt!1250261)))))))

(declare-fun b!3619544 () Bool)

(declare-fun Unit!54791 () Unit!54783)

(assert (=> b!3619544 (= e!2240356 Unit!54791)))

(declare-fun b!3619545 () Bool)

(assert (=> b!3619545 false))

(declare-fun lt!1250304 () Unit!54783)

(assert (=> b!3619545 (= lt!1250304 call!261872)))

(assert (=> b!3619545 (not call!261873)))

(declare-fun lt!1250258 () Unit!54783)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!260 (LexerInterface!5261 List!38247 List!38247 Rule!11144 Rule!11144 C!21048) Unit!54783)

(assert (=> b!3619545 (= lt!1250258 (lemmaSepRuleNotContainsCharContainedInANonSepRule!260 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8432 (_1!22134 lt!1250261)) lt!1250280))))

(declare-fun e!2240354 () Unit!54783)

(declare-fun Unit!54792 () Unit!54783)

(assert (=> b!3619545 (= e!2240354 Unit!54792)))

(declare-fun b!3619546 () Bool)

(assert (=> b!3619546 (= e!2240377 e!2240354)))

(declare-fun c!626349 () Bool)

(assert (=> b!3619546 (= c!626349 (isSeparator!5672 (rule!8432 (_1!22134 lt!1250261))))))

(declare-fun b!3619547 () Bool)

(assert (=> b!3619547 false))

(declare-fun lt!1250263 () Unit!54783)

(assert (=> b!3619547 (= lt!1250263 call!261872)))

(assert (=> b!3619547 (not call!261873)))

(declare-fun lt!1250275 () Unit!54783)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!378 (LexerInterface!5261 List!38247 List!38247 Rule!11144 Rule!11144 C!21048) Unit!54783)

(assert (=> b!3619547 (= lt!1250275 (lemmaNonSepRuleNotContainsCharContainedInASepRule!378 thiss!23823 rules!3307 rules!3307 (rule!8432 (_1!22134 lt!1250261)) rule!403 lt!1250280))))

(declare-fun Unit!54793 () Unit!54783)

(assert (=> b!3619547 (= e!2240356 Unit!54793)))

(declare-fun b!3619548 () Bool)

(assert (=> b!3619548 false))

(declare-fun lt!1250308 () Unit!54783)

(declare-fun call!261870 () Unit!54783)

(assert (=> b!3619548 (= lt!1250308 call!261870)))

(declare-fun call!261869 () Bool)

(assert (=> b!3619548 (not call!261869)))

(declare-fun lt!1250254 () Unit!54783)

(assert (=> b!3619548 (= lt!1250254 (lemmaNonSepRuleNotContainsCharContainedInASepRule!378 thiss!23823 rules!3307 rules!3307 (rule!8432 (_1!22134 lt!1250261)) anOtherTypeRule!33 lt!1250297))))

(declare-fun Unit!54794 () Unit!54783)

(assert (=> b!3619548 (= e!2240358 Unit!54794)))

(declare-fun b!3619549 () Bool)

(declare-fun e!2240349 () Bool)

(assert (=> b!3619549 e!2240349))

(declare-fun res!1464635 () Bool)

(assert (=> b!3619549 (=> (not res!1464635) (not e!2240349))))

(assert (=> b!3619549 (= res!1464635 (not (matchR!5000 (regex!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250300)))))

(declare-fun lt!1250307 () Unit!54783)

(assert (=> b!3619549 (= lt!1250307 (lemmaMaxPrefNoSmallerRuleMatches!206 thiss!23823 rules!3307 rule!403 lt!1250300 lt!1250300 (rule!8432 (_1!22134 lt!1250261))))))

(assert (=> b!3619549 (isEmpty!22526 (getSuffix!1610 lt!1250300 lt!1250300))))

(declare-fun lt!1250284 () Unit!54783)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!166 (List!38246) Unit!54783)

(assert (=> b!3619549 (= lt!1250284 (lemmaGetSuffixOnListWithItSelfIsEmpty!166 lt!1250300))))

(declare-fun Unit!54795 () Unit!54783)

(assert (=> b!3619549 (= e!2240365 Unit!54795)))

(declare-fun b!3619550 () Bool)

(assert (=> b!3619550 (= e!2240345 e!2240355)))

(declare-fun res!1464632 () Bool)

(assert (=> b!3619550 (=> res!1464632 e!2240355)))

(declare-fun lt!1250312 () Int)

(declare-fun lt!1250278 () TokenValue!5902)

(assert (=> b!3619550 (= res!1464632 (not (= lt!1250262 (Some!7973 (tuple2!38001 (Token!10711 lt!1250278 (rule!8432 (_1!22134 lt!1250261)) lt!1250312 lt!1250283) (_2!22134 lt!1250261))))))))

(declare-fun size!29085 (BalanceConc!22860) Int)

(assert (=> b!3619550 (= lt!1250312 (size!29085 lt!1250260))))

(assert (=> b!3619550 (= lt!1250278 (apply!9178 (transformation!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250260))))

(declare-fun lt!1250295 () Unit!54783)

(declare-fun lemmaCharactersSize!725 (Token!10710) Unit!54783)

(assert (=> b!3619550 (= lt!1250295 (lemmaCharactersSize!725 (_1!22134 lt!1250261)))))

(declare-fun lt!1250266 () Unit!54783)

(declare-fun lemmaEqSameImage!863 (TokenValueInjection!11232 BalanceConc!22860 BalanceConc!22860) Unit!54783)

(assert (=> b!3619550 (= lt!1250266 (lemmaEqSameImage!863 (transformation!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250260 (seqFromList!4225 (originalCharacters!6386 (_1!22134 lt!1250261)))))))

(declare-fun lt!1250305 () Unit!54783)

(declare-fun lemmaSemiInverse!1429 (TokenValueInjection!11232 BalanceConc!22860) Unit!54783)

(assert (=> b!3619550 (= lt!1250305 (lemmaSemiInverse!1429 (transformation!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250260))))

(declare-fun b!3619551 () Bool)

(assert (=> b!3619551 (= e!2240349 false)))

(declare-fun b!3619552 () Bool)

(declare-fun res!1464636 () Bool)

(assert (=> b!3619552 (=> res!1464636 e!2240345)))

(assert (=> b!3619552 (= res!1464636 (not (matchR!5000 (regex!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250283)))))

(declare-fun b!3619553 () Bool)

(declare-fun e!2240353 () Bool)

(assert (=> b!3619553 (= e!2240353 true)))

(assert (=> b!3619553 (= suffix!1395 (_2!22134 lt!1250261))))

(declare-fun lt!1250265 () Unit!54783)

(assert (=> b!3619553 (= lt!1250265 (lemmaSamePrefixThenSameSuffix!1390 lt!1250300 suffix!1395 lt!1250283 (_2!22134 lt!1250261) lt!1250259))))

(declare-fun bm!261868 () Bool)

(assert (=> bm!261868 (= call!261870 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!656 (regex!5672 (rule!8432 (_1!22134 lt!1250261))) lt!1250283 lt!1250297))))

(declare-fun b!3619554 () Bool)

(declare-fun res!1464633 () Bool)

(assert (=> b!3619554 (=> res!1464633 e!2240373)))

(assert (=> b!3619554 (= res!1464633 (isEmpty!22526 suffix!1395))))

(declare-fun e!2240350 () Bool)

(declare-fun tp!1105696 () Bool)

(declare-fun b!3619555 () Bool)

(declare-fun inv!21 (TokenValue!5902) Bool)

(assert (=> b!3619555 (= e!2240376 (and (inv!21 (value!182112 token!511)) e!2240350 tp!1105696))))

(declare-fun tp!1105708 () Bool)

(declare-fun b!3619556 () Bool)

(assert (=> b!3619556 (= e!2240367 (and tp!1105708 (inv!51510 (tag!6388 anOtherTypeRule!33)) (inv!51513 (transformation!5672 anOtherTypeRule!33)) e!2240348))))

(declare-fun bm!261869 () Bool)

(assert (=> bm!261869 (= call!261869 (contains!7407 call!261871 lt!1250297))))

(declare-fun b!3619557 () Bool)

(assert (=> b!3619557 (= e!2240359 e!2240353)))

(declare-fun res!1464647 () Bool)

(assert (=> b!3619557 (=> res!1464647 e!2240353)))

(assert (=> b!3619557 (= res!1464647 (or (not (= lt!1250277 lt!1250259)) (not (= lt!1250300 lt!1250283))))))

(declare-fun lt!1250296 () List!38246)

(assert (=> b!3619557 (= lt!1250296 (_2!22134 lt!1250261))))

(declare-fun lt!1250274 () Unit!54783)

(assert (=> b!3619557 (= lt!1250274 (lemmaSamePrefixThenSameSuffix!1390 lt!1250300 lt!1250296 lt!1250283 (_2!22134 lt!1250261) lt!1250259))))

(assert (=> b!3619557 (= (maxPrefixOneRule!1939 thiss!23823 rule!403 lt!1250259) (Some!7973 (tuple2!38001 (Token!10711 (apply!9178 (transformation!5672 rule!403) (seqFromList!4225 lt!1250300)) rule!403 (size!29084 lt!1250300) lt!1250300) lt!1250296)))))

(declare-fun lt!1250264 () Unit!54783)

(assert (=> b!3619557 (= lt!1250264 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1011 thiss!23823 rules!3307 lt!1250300 lt!1250259 lt!1250296 rule!403))))

(assert (=> b!3619557 (= lt!1250296 (getSuffix!1610 lt!1250259 lt!1250300))))

(declare-fun lt!1250306 () Unit!54783)

(assert (=> b!3619557 (= lt!1250306 e!2240360)))

(declare-fun c!626352 () Bool)

(assert (=> b!3619557 (= c!626352 (not (= (rule!8432 (_1!22134 lt!1250261)) (rule!8432 token!511))))))

(assert (=> b!3619557 (= lt!1250283 lt!1250300)))

(declare-fun lt!1250269 () Unit!54783)

(declare-fun lemmaIsPrefixSameLengthThenSameList!609 (List!38246 List!38246 List!38246) Unit!54783)

(assert (=> b!3619557 (= lt!1250269 (lemmaIsPrefixSameLengthThenSameList!609 lt!1250283 lt!1250300 lt!1250259))))

(declare-fun lt!1250314 () Unit!54783)

(assert (=> b!3619557 (= lt!1250314 e!2240370)))

(declare-fun c!626355 () Bool)

(declare-fun lt!1250293 () Int)

(assert (=> b!3619557 (= c!626355 (< lt!1250312 lt!1250293))))

(declare-fun lt!1250271 () Unit!54783)

(assert (=> b!3619557 (= lt!1250271 e!2240378)))

(declare-fun c!626354 () Bool)

(assert (=> b!3619557 (= c!626354 (> lt!1250312 lt!1250293))))

(declare-fun lt!1250257 () BalanceConc!22860)

(assert (=> b!3619557 (= lt!1250293 (size!29085 lt!1250257))))

(declare-fun lt!1250290 () Unit!54783)

(assert (=> b!3619557 (= lt!1250290 e!2240377)))

(declare-fun c!626348 () Bool)

(assert (=> b!3619557 (= c!626348 (isSeparator!5672 rule!403))))

(declare-fun lt!1250292 () Unit!54783)

(assert (=> b!3619557 (= lt!1250292 e!2240361)))

(declare-fun c!626351 () Bool)

(declare-fun lt!1250303 () List!38246)

(assert (=> b!3619557 (= c!626351 (not (contains!7407 lt!1250303 lt!1250280)))))

(declare-fun head!7640 (List!38246) C!21048)

(assert (=> b!3619557 (= lt!1250280 (head!7640 lt!1250283))))

(declare-fun b!3619558 () Bool)

(declare-fun res!1464628 () Bool)

(assert (=> b!3619558 (=> (not res!1464628) (not e!2240372))))

(assert (=> b!3619558 (= res!1464628 (contains!7408 rules!3307 rule!403))))

(declare-fun b!3619559 () Bool)

(assert (=> b!3619559 (= e!2240373 e!2240368)))

(declare-fun res!1464641 () Bool)

(assert (=> b!3619559 (=> res!1464641 e!2240368)))

(assert (=> b!3619559 (= res!1464641 (contains!7407 lt!1250303 lt!1250297))))

(assert (=> b!3619559 (= lt!1250297 (head!7640 suffix!1395))))

(assert (=> b!3619559 (= lt!1250303 (usedCharacters!886 (regex!5672 rule!403)))))

(declare-fun tp!1105701 () Bool)

(declare-fun b!3619560 () Bool)

(assert (=> b!3619560 (= e!2240350 (and tp!1105701 (inv!51510 (tag!6388 (rule!8432 token!511))) (inv!51513 (transformation!5672 (rule!8432 token!511))) e!2240362))))

(declare-fun b!3619561 () Bool)

(declare-fun e!2240381 () Bool)

(assert (=> b!3619561 (= e!2240381 e!2240346)))

(declare-fun res!1464646 () Bool)

(assert (=> b!3619561 (=> (not res!1464646) (not e!2240346))))

(assert (=> b!3619561 (= res!1464646 (= (_1!22134 lt!1250272) token!511))))

(declare-fun lt!1250311 () Option!7974)

(assert (=> b!3619561 (= lt!1250272 (get!12421 lt!1250311))))

(declare-fun b!3619562 () Bool)

(declare-fun res!1464642 () Bool)

(assert (=> b!3619562 (=> (not res!1464642) (not e!2240372))))

(declare-fun isEmpty!22527 (List!38247) Bool)

(assert (=> b!3619562 (= res!1464642 (not (isEmpty!22527 rules!3307)))))

(declare-fun b!3619563 () Bool)

(declare-fun Unit!54796 () Unit!54783)

(assert (=> b!3619563 (= e!2240370 Unit!54796)))

(declare-fun lt!1250279 () Unit!54783)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!320 (LexerInterface!5261 List!38247 Rule!11144 List!38246 List!38246 List!38246 Rule!11144) Unit!54783)

(assert (=> b!3619563 (= lt!1250279 (lemmaMaxPrefixOutputsMaxPrefix!320 thiss!23823 rules!3307 (rule!8432 (_1!22134 lt!1250261)) lt!1250283 lt!1250259 lt!1250300 rule!403))))

(assert (=> b!3619563 false))

(declare-fun b!3619564 () Bool)

(declare-fun tp!1105695 () Bool)

(assert (=> b!3619564 (= e!2240369 (and e!2240371 tp!1105695))))

(declare-fun b!3619565 () Bool)

(declare-fun Unit!54797 () Unit!54783)

(assert (=> b!3619565 (= e!2240365 Unit!54797)))

(declare-fun b!3619566 () Bool)

(declare-fun Unit!54798 () Unit!54783)

(assert (=> b!3619566 (= e!2240354 Unit!54798)))

(declare-fun b!3619567 () Bool)

(declare-fun Unit!54799 () Unit!54783)

(assert (=> b!3619567 (= e!2240361 Unit!54799)))

(declare-fun b!3619568 () Bool)

(assert (=> b!3619568 (= e!2240372 e!2240381)))

(declare-fun res!1464627 () Bool)

(assert (=> b!3619568 (=> (not res!1464627) (not e!2240381))))

(declare-fun isDefined!6207 (Option!7974) Bool)

(assert (=> b!3619568 (= res!1464627 (isDefined!6207 lt!1250311))))

(assert (=> b!3619568 (= lt!1250311 (maxPrefix!2795 thiss!23823 rules!3307 lt!1250300))))

(assert (=> b!3619568 (= lt!1250300 (list!14068 lt!1250257))))

(assert (=> b!3619568 (= lt!1250257 (charsOf!3686 token!511))))

(declare-fun b!3619569 () Bool)

(declare-fun Unit!54800 () Unit!54783)

(assert (=> b!3619569 (= e!2240360 Unit!54800)))

(declare-fun b!3619570 () Bool)

(assert (=> b!3619570 false))

(declare-fun lt!1250268 () Unit!54783)

(assert (=> b!3619570 (= lt!1250268 call!261870)))

(assert (=> b!3619570 (not call!261869)))

(declare-fun lt!1250285 () Unit!54783)

(assert (=> b!3619570 (= lt!1250285 (lemmaSepRuleNotContainsCharContainedInANonSepRule!260 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8432 (_1!22134 lt!1250261)) lt!1250297))))

(declare-fun Unit!54801 () Unit!54783)

(assert (=> b!3619570 (= e!2240358 Unit!54801)))

(assert (= (and start!337062 res!1464638) b!3619562))

(assert (= (and b!3619562 res!1464642) b!3619533))

(assert (= (and b!3619533 res!1464648) b!3619558))

(assert (= (and b!3619558 res!1464628) b!3619534))

(assert (= (and b!3619534 res!1464634) b!3619524))

(assert (= (and b!3619524 res!1464630) b!3619568))

(assert (= (and b!3619568 res!1464627) b!3619561))

(assert (= (and b!3619561 res!1464646) b!3619536))

(assert (= (and b!3619536 res!1464637) b!3619521))

(assert (= (and b!3619521 res!1464631) b!3619522))

(assert (= (and b!3619522 (not res!1464645)) b!3619554))

(assert (= (and b!3619554 (not res!1464633)) b!3619559))

(assert (= (and b!3619559 (not res!1464641)) b!3619525))

(assert (= (and b!3619525 (not res!1464643)) b!3619527))

(assert (= (and b!3619527 (not res!1464649)) b!3619542))

(assert (= (and b!3619542 res!1464640) b!3619526))

(assert (= (and b!3619526 res!1464639) b!3619529))

(assert (= (and b!3619542 (not res!1464629)) b!3619552))

(assert (= (and b!3619552 (not res!1464636)) b!3619550))

(assert (= (and b!3619550 (not res!1464632)) b!3619520))

(assert (= (and b!3619520 (not res!1464644)) b!3619557))

(assert (= (and b!3619557 c!626351) b!3619535))

(assert (= (and b!3619557 (not c!626351)) b!3619567))

(assert (= (and b!3619557 c!626348) b!3619518))

(assert (= (and b!3619557 (not c!626348)) b!3619546))

(assert (= (and b!3619518 c!626353) b!3619547))

(assert (= (and b!3619518 (not c!626353)) b!3619544))

(assert (= (and b!3619546 c!626349) b!3619545))

(assert (= (and b!3619546 (not c!626349)) b!3619566))

(assert (= (or b!3619547 b!3619545) bm!261866))

(assert (= (or b!3619547 b!3619545) bm!261865))

(assert (= (or b!3619547 b!3619545) bm!261864))

(assert (= (and b!3619557 c!626354) b!3619539))

(assert (= (and b!3619557 (not c!626354)) b!3619523))

(assert (= (and b!3619539 c!626357) b!3619570))

(assert (= (and b!3619539 (not c!626357)) b!3619548))

(assert (= (or b!3619570 b!3619548) bm!261868))

(assert (= (or b!3619570 b!3619548) bm!261867))

(assert (= (or b!3619570 b!3619548) bm!261869))

(assert (= (and b!3619557 c!626355) b!3619563))

(assert (= (and b!3619557 (not c!626355)) b!3619532))

(assert (= (and b!3619557 c!626352) b!3619530))

(assert (= (and b!3619557 (not c!626352)) b!3619569))

(assert (= (and b!3619530 c!626350) b!3619549))

(assert (= (and b!3619530 (not c!626350)) b!3619565))

(assert (= (and b!3619549 res!1464635) b!3619551))

(assert (= (and b!3619530 c!626356) b!3619540))

(assert (= (and b!3619530 (not c!626356)) b!3619541))

(assert (= (and b!3619557 (not res!1464647)) b!3619553))

(assert (= b!3619528 b!3619537))

(assert (= b!3619564 b!3619528))

(assert (= (and start!337062 ((_ is Cons!38123) rules!3307)) b!3619564))

(assert (= (and start!337062 ((_ is Cons!38122) suffix!1395)) b!3619519))

(assert (= b!3619560 b!3619538))

(assert (= b!3619555 b!3619560))

(assert (= start!337062 b!3619555))

(assert (= b!3619517 b!3619543))

(assert (= start!337062 b!3619517))

(assert (= b!3619556 b!3619531))

(assert (= start!337062 b!3619556))

(declare-fun m!4118789 () Bool)

(assert (=> b!3619563 m!4118789))

(declare-fun m!4118791 () Bool)

(assert (=> b!3619554 m!4118791))

(declare-fun m!4118793 () Bool)

(assert (=> b!3619549 m!4118793))

(assert (=> b!3619549 m!4118793))

(declare-fun m!4118795 () Bool)

(assert (=> b!3619549 m!4118795))

(declare-fun m!4118797 () Bool)

(assert (=> b!3619549 m!4118797))

(declare-fun m!4118799 () Bool)

(assert (=> b!3619549 m!4118799))

(declare-fun m!4118801 () Bool)

(assert (=> b!3619549 m!4118801))

(declare-fun m!4118803 () Bool)

(assert (=> bm!261865 m!4118803))

(declare-fun m!4118805 () Bool)

(assert (=> b!3619562 m!4118805))

(declare-fun m!4118807 () Bool)

(assert (=> b!3619557 m!4118807))

(declare-fun m!4118809 () Bool)

(assert (=> b!3619557 m!4118809))

(declare-fun m!4118811 () Bool)

(assert (=> b!3619557 m!4118811))

(declare-fun m!4118813 () Bool)

(assert (=> b!3619557 m!4118813))

(declare-fun m!4118815 () Bool)

(assert (=> b!3619557 m!4118815))

(assert (=> b!3619557 m!4118811))

(declare-fun m!4118817 () Bool)

(assert (=> b!3619557 m!4118817))

(declare-fun m!4118819 () Bool)

(assert (=> b!3619557 m!4118819))

(declare-fun m!4118821 () Bool)

(assert (=> b!3619557 m!4118821))

(declare-fun m!4118823 () Bool)

(assert (=> b!3619557 m!4118823))

(declare-fun m!4118825 () Bool)

(assert (=> b!3619557 m!4118825))

(declare-fun m!4118827 () Bool)

(assert (=> b!3619557 m!4118827))

(declare-fun m!4118829 () Bool)

(assert (=> b!3619558 m!4118829))

(declare-fun m!4118831 () Bool)

(assert (=> bm!261868 m!4118831))

(declare-fun m!4118833 () Bool)

(assert (=> b!3619534 m!4118833))

(declare-fun m!4118835 () Bool)

(assert (=> b!3619530 m!4118835))

(declare-fun m!4118837 () Bool)

(assert (=> b!3619530 m!4118837))

(declare-fun m!4118839 () Bool)

(assert (=> b!3619530 m!4118839))

(declare-fun m!4118841 () Bool)

(assert (=> b!3619559 m!4118841))

(declare-fun m!4118843 () Bool)

(assert (=> b!3619559 m!4118843))

(declare-fun m!4118845 () Bool)

(assert (=> b!3619559 m!4118845))

(declare-fun m!4118847 () Bool)

(assert (=> b!3619540 m!4118847))

(declare-fun m!4118849 () Bool)

(assert (=> b!3619570 m!4118849))

(declare-fun m!4118851 () Bool)

(assert (=> b!3619517 m!4118851))

(declare-fun m!4118853 () Bool)

(assert (=> b!3619517 m!4118853))

(declare-fun m!4118855 () Bool)

(assert (=> b!3619560 m!4118855))

(declare-fun m!4118857 () Bool)

(assert (=> b!3619560 m!4118857))

(declare-fun m!4118859 () Bool)

(assert (=> b!3619525 m!4118859))

(assert (=> b!3619525 m!4118859))

(declare-fun m!4118861 () Bool)

(assert (=> b!3619525 m!4118861))

(declare-fun m!4118863 () Bool)

(assert (=> b!3619552 m!4118863))

(declare-fun m!4118865 () Bool)

(assert (=> b!3619522 m!4118865))

(declare-fun m!4118867 () Bool)

(assert (=> b!3619522 m!4118867))

(declare-fun m!4118869 () Bool)

(assert (=> b!3619522 m!4118869))

(declare-fun m!4118871 () Bool)

(assert (=> b!3619533 m!4118871))

(declare-fun m!4118873 () Bool)

(assert (=> b!3619528 m!4118873))

(declare-fun m!4118875 () Bool)

(assert (=> b!3619528 m!4118875))

(declare-fun m!4118877 () Bool)

(assert (=> b!3619561 m!4118877))

(declare-fun m!4118879 () Bool)

(assert (=> b!3619539 m!4118879))

(declare-fun m!4118881 () Bool)

(assert (=> b!3619539 m!4118881))

(declare-fun m!4118883 () Bool)

(assert (=> b!3619547 m!4118883))

(declare-fun m!4118885 () Bool)

(assert (=> b!3619553 m!4118885))

(declare-fun m!4118887 () Bool)

(assert (=> b!3619536 m!4118887))

(declare-fun m!4118889 () Bool)

(assert (=> b!3619535 m!4118889))

(declare-fun m!4118891 () Bool)

(assert (=> bm!261864 m!4118891))

(declare-fun m!4118893 () Bool)

(assert (=> b!3619527 m!4118893))

(declare-fun m!4118895 () Bool)

(assert (=> start!337062 m!4118895))

(declare-fun m!4118897 () Bool)

(assert (=> b!3619556 m!4118897))

(declare-fun m!4118899 () Bool)

(assert (=> b!3619556 m!4118899))

(declare-fun m!4118901 () Bool)

(assert (=> b!3619545 m!4118901))

(declare-fun m!4118903 () Bool)

(assert (=> b!3619542 m!4118903))

(declare-fun m!4118905 () Bool)

(assert (=> b!3619542 m!4118905))

(declare-fun m!4118907 () Bool)

(assert (=> b!3619542 m!4118907))

(declare-fun m!4118909 () Bool)

(assert (=> b!3619542 m!4118909))

(declare-fun m!4118911 () Bool)

(assert (=> b!3619542 m!4118911))

(declare-fun m!4118913 () Bool)

(assert (=> b!3619542 m!4118913))

(declare-fun m!4118915 () Bool)

(assert (=> b!3619542 m!4118915))

(declare-fun m!4118917 () Bool)

(assert (=> b!3619542 m!4118917))

(declare-fun m!4118919 () Bool)

(assert (=> b!3619542 m!4118919))

(declare-fun m!4118921 () Bool)

(assert (=> b!3619542 m!4118921))

(declare-fun m!4118923 () Bool)

(assert (=> b!3619542 m!4118923))

(declare-fun m!4118925 () Bool)

(assert (=> b!3619542 m!4118925))

(declare-fun m!4118927 () Bool)

(assert (=> b!3619542 m!4118927))

(declare-fun m!4118929 () Bool)

(assert (=> b!3619542 m!4118929))

(declare-fun m!4118931 () Bool)

(assert (=> b!3619542 m!4118931))

(declare-fun m!4118933 () Bool)

(assert (=> b!3619568 m!4118933))

(declare-fun m!4118935 () Bool)

(assert (=> b!3619568 m!4118935))

(declare-fun m!4118937 () Bool)

(assert (=> b!3619568 m!4118937))

(declare-fun m!4118939 () Bool)

(assert (=> b!3619568 m!4118939))

(declare-fun m!4118941 () Bool)

(assert (=> bm!261869 m!4118941))

(assert (=> bm!261867 m!4118803))

(assert (=> b!3619526 m!4118913))

(assert (=> b!3619526 m!4118913))

(declare-fun m!4118943 () Bool)

(assert (=> b!3619526 m!4118943))

(assert (=> b!3619526 m!4118943))

(declare-fun m!4118945 () Bool)

(assert (=> b!3619526 m!4118945))

(declare-fun m!4118947 () Bool)

(assert (=> b!3619526 m!4118947))

(declare-fun m!4118949 () Bool)

(assert (=> b!3619550 m!4118949))

(declare-fun m!4118951 () Bool)

(assert (=> b!3619550 m!4118951))

(declare-fun m!4118953 () Bool)

(assert (=> b!3619550 m!4118953))

(declare-fun m!4118955 () Bool)

(assert (=> b!3619550 m!4118955))

(assert (=> b!3619550 m!4118949))

(declare-fun m!4118957 () Bool)

(assert (=> b!3619550 m!4118957))

(declare-fun m!4118959 () Bool)

(assert (=> b!3619550 m!4118959))

(declare-fun m!4118961 () Bool)

(assert (=> b!3619555 m!4118961))

(declare-fun m!4118963 () Bool)

(assert (=> bm!261866 m!4118963))

(declare-fun m!4118965 () Bool)

(assert (=> b!3619520 m!4118965))

(declare-fun m!4118967 () Bool)

(assert (=> b!3619520 m!4118967))

(declare-fun m!4118969 () Bool)

(assert (=> b!3619520 m!4118969))

(declare-fun m!4118971 () Bool)

(assert (=> b!3619520 m!4118971))

(assert (=> b!3619520 m!4118965))

(declare-fun m!4118973 () Bool)

(assert (=> b!3619520 m!4118973))

(declare-fun m!4118975 () Bool)

(assert (=> b!3619520 m!4118975))

(declare-fun m!4118977 () Bool)

(assert (=> b!3619520 m!4118977))

(declare-fun m!4118979 () Bool)

(assert (=> b!3619548 m!4118979))

(check-sat (not b!3619557) (not b!3619519) (not bm!261867) (not bm!261864) (not b_next!95031) (not b!3619545) b_and!264541 (not b_next!95037) (not b!3619552) (not bm!261865) (not b_next!95033) (not b!3619535) (not b!3619547) (not b!3619533) (not b!3619556) (not b!3619542) (not b_next!95029) (not b!3619528) (not b!3619561) (not b!3619522) (not b!3619558) tp_is_empty!17945 (not b!3619553) (not b!3619534) (not b!3619570) b_and!264533 (not b!3619527) (not b!3619562) (not b_next!95039) (not b!3619559) (not b!3619536) (not b!3619568) b_and!264543 b_and!264545 (not b!3619550) (not b!3619517) b_and!264535 (not bm!261868) b_and!264531 (not b!3619530) (not b_next!95025) (not b!3619526) (not bm!261866) (not b!3619564) b_and!264539 (not b!3619554) (not b!3619520) (not b!3619540) (not b!3619560) (not start!337062) (not bm!261869) b_and!264537 (not b!3619548) (not b!3619549) (not b_next!95035) (not b_next!95027) (not b!3619525) (not b!3619555) (not b!3619539) (not b!3619563))
(check-sat (not b_next!95033) (not b_next!95029) b_and!264533 (not b_next!95039) b_and!264543 b_and!264545 (not b_next!95031) (not b_next!95025) b_and!264541 b_and!264539 (not b_next!95037) b_and!264537 (not b_next!95035) (not b_next!95027) b_and!264535 b_and!264531)
