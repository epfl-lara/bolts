; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343414 () Bool)

(assert start!343414)

(declare-fun b!3666380 () Bool)

(declare-fun b_free!96801 () Bool)

(declare-fun b_next!97505 () Bool)

(assert (=> b!3666380 (= b_free!96801 (not b_next!97505))))

(declare-fun tp!1116172 () Bool)

(declare-fun b_and!272675 () Bool)

(assert (=> b!3666380 (= tp!1116172 b_and!272675)))

(declare-fun b_free!96803 () Bool)

(declare-fun b_next!97507 () Bool)

(assert (=> b!3666380 (= b_free!96803 (not b_next!97507))))

(declare-fun tp!1116174 () Bool)

(declare-fun b_and!272677 () Bool)

(assert (=> b!3666380 (= tp!1116174 b_and!272677)))

(declare-fun b!3666341 () Bool)

(declare-fun b_free!96805 () Bool)

(declare-fun b_next!97509 () Bool)

(assert (=> b!3666341 (= b_free!96805 (not b_next!97509))))

(declare-fun tp!1116170 () Bool)

(declare-fun b_and!272679 () Bool)

(assert (=> b!3666341 (= tp!1116170 b_and!272679)))

(declare-fun b_free!96807 () Bool)

(declare-fun b_next!97511 () Bool)

(assert (=> b!3666341 (= b_free!96807 (not b_next!97511))))

(declare-fun tp!1116179 () Bool)

(declare-fun b_and!272681 () Bool)

(assert (=> b!3666341 (= tp!1116179 b_and!272681)))

(declare-fun b!3666372 () Bool)

(declare-fun b_free!96809 () Bool)

(declare-fun b_next!97513 () Bool)

(assert (=> b!3666372 (= b_free!96809 (not b_next!97513))))

(declare-fun tp!1116181 () Bool)

(declare-fun b_and!272683 () Bool)

(assert (=> b!3666372 (= tp!1116181 b_and!272683)))

(declare-fun b_free!96811 () Bool)

(declare-fun b_next!97515 () Bool)

(assert (=> b!3666372 (= b_free!96811 (not b_next!97515))))

(declare-fun tp!1116177 () Bool)

(declare-fun b_and!272685 () Bool)

(assert (=> b!3666372 (= tp!1116177 b_and!272685)))

(declare-fun b!3666348 () Bool)

(declare-fun b_free!96813 () Bool)

(declare-fun b_next!97517 () Bool)

(assert (=> b!3666348 (= b_free!96813 (not b_next!97517))))

(declare-fun tp!1116178 () Bool)

(declare-fun b_and!272687 () Bool)

(assert (=> b!3666348 (= tp!1116178 b_and!272687)))

(declare-fun b_free!96815 () Bool)

(declare-fun b_next!97519 () Bool)

(assert (=> b!3666348 (= b_free!96815 (not b_next!97519))))

(declare-fun tp!1116184 () Bool)

(declare-fun b_and!272689 () Bool)

(assert (=> b!3666348 (= tp!1116184 b_and!272689)))

(declare-fun b!3666340 () Bool)

(declare-datatypes ((Unit!56098 0))(
  ( (Unit!56099) )
))
(declare-fun e!2270147 () Unit!56098)

(declare-fun Unit!56100 () Unit!56098)

(assert (=> b!3666340 (= e!2270147 Unit!56100)))

(declare-fun lt!1276534 () Unit!56098)

(declare-datatypes ((C!21320 0))(
  ( (C!21321 (val!12708 Int)) )
))
(declare-datatypes ((List!38791 0))(
  ( (Nil!38667) (Cons!38667 (h!44087 C!21320) (t!299186 List!38791)) )
))
(declare-fun lt!1276559 () List!38791)

(declare-datatypes ((List!38792 0))(
  ( (Nil!38668) (Cons!38668 (h!44088 (_ BitVec 16)) (t!299187 List!38792)) )
))
(declare-datatypes ((TokenValue!6038 0))(
  ( (FloatLiteralValue!12076 (text!42711 List!38792)) (TokenValueExt!6037 (__x!24293 Int)) (Broken!30190 (value!185962 List!38792)) (Object!6161) (End!6038) (Def!6038) (Underscore!6038) (Match!6038) (Else!6038) (Error!6038) (Case!6038) (If!6038) (Extends!6038) (Abstract!6038) (Class!6038) (Val!6038) (DelimiterValue!12076 (del!6098 List!38792)) (KeywordValue!6044 (value!185963 List!38792)) (CommentValue!12076 (value!185964 List!38792)) (WhitespaceValue!12076 (value!185965 List!38792)) (IndentationValue!6038 (value!185966 List!38792)) (String!43523) (Int32!6038) (Broken!30191 (value!185967 List!38792)) (Boolean!6039) (Unit!56101) (OperatorValue!6041 (op!6098 List!38792)) (IdentifierValue!12076 (value!185968 List!38792)) (IdentifierValue!12077 (value!185969 List!38792)) (WhitespaceValue!12077 (value!185970 List!38792)) (True!12076) (False!12076) (Broken!30192 (value!185971 List!38792)) (Broken!30193 (value!185972 List!38792)) (True!12077) (RightBrace!6038) (RightBracket!6038) (Colon!6038) (Null!6038) (Comma!6038) (LeftBracket!6038) (False!12077) (LeftBrace!6038) (ImaginaryLiteralValue!6038 (text!42712 List!38792)) (StringLiteralValue!18114 (value!185973 List!38792)) (EOFValue!6038 (value!185974 List!38792)) (IdentValue!6038 (value!185975 List!38792)) (DelimiterValue!12077 (value!185976 List!38792)) (DedentValue!6038 (value!185977 List!38792)) (NewLineValue!6038 (value!185978 List!38792)) (IntegerValue!18114 (value!185979 (_ BitVec 32)) (text!42713 List!38792)) (IntegerValue!18115 (value!185980 Int) (text!42714 List!38792)) (Times!6038) (Or!6038) (Equal!6038) (Minus!6038) (Broken!30194 (value!185981 List!38792)) (And!6038) (Div!6038) (LessEqual!6038) (Mod!6038) (Concat!16605) (Not!6038) (Plus!6038) (SpaceValue!6038 (value!185982 List!38792)) (IntegerValue!18116 (value!185983 Int) (text!42715 List!38792)) (StringLiteralValue!18115 (text!42716 List!38792)) (FloatLiteralValue!12077 (text!42717 List!38792)) (BytesLiteralValue!6038 (value!185984 List!38792)) (CommentValue!12077 (value!185985 List!38792)) (StringLiteralValue!18116 (value!185986 List!38792)) (ErrorTokenValue!6038 (msg!6099 List!38792)) )
))
(declare-datatypes ((Regex!10567 0))(
  ( (ElementMatch!10567 (c!633854 C!21320)) (Concat!16606 (regOne!21646 Regex!10567) (regTwo!21646 Regex!10567)) (EmptyExpr!10567) (Star!10567 (reg!10896 Regex!10567)) (EmptyLang!10567) (Union!10567 (regOne!21647 Regex!10567) (regTwo!21647 Regex!10567)) )
))
(declare-datatypes ((String!43524 0))(
  ( (String!43525 (value!185987 String)) )
))
(declare-datatypes ((IArray!23659 0))(
  ( (IArray!23660 (innerList!11887 List!38791)) )
))
(declare-datatypes ((Conc!11827 0))(
  ( (Node!11827 (left!30177 Conc!11827) (right!30507 Conc!11827) (csize!23884 Int) (cheight!12038 Int)) (Leaf!18342 (xs!15029 IArray!23659) (csize!23885 Int)) (Empty!11827) )
))
(declare-datatypes ((BalanceConc!23268 0))(
  ( (BalanceConc!23269 (c!633855 Conc!11827)) )
))
(declare-datatypes ((TokenValueInjection!11504 0))(
  ( (TokenValueInjection!11505 (toValue!8104 Int) (toChars!7963 Int)) )
))
(declare-datatypes ((Rule!11416 0))(
  ( (Rule!11417 (regex!5808 Regex!10567) (tag!6592 String!43524) (isSeparator!5808 Bool) (transformation!5808 TokenValueInjection!11504)) )
))
(declare-fun rule!403 () Rule!11416)

(declare-fun lt!1276574 () C!21320)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (Regex!10567 List!38791 C!21320) Unit!56098)

(assert (=> b!3666340 (= lt!1276534 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 rule!403) lt!1276559 lt!1276574))))

(assert (=> b!3666340 false))

(declare-fun res!1488650 () Bool)

(declare-fun e!2270132 () Bool)

(assert (=> start!343414 (=> (not res!1488650) (not e!2270132))))

(declare-datatypes ((LexerInterface!5397 0))(
  ( (LexerInterfaceExt!5394 (__x!24294 Int)) (Lexer!5395) )
))
(declare-fun thiss!23823 () LexerInterface!5397)

(get-info :version)

(assert (=> start!343414 (= res!1488650 ((_ is Lexer!5395) thiss!23823))))

(assert (=> start!343414 e!2270132))

(declare-fun e!2270139 () Bool)

(assert (=> start!343414 e!2270139))

(declare-fun e!2270148 () Bool)

(assert (=> start!343414 e!2270148))

(assert (=> start!343414 true))

(declare-datatypes ((Token!10982 0))(
  ( (Token!10983 (value!185988 TokenValue!6038) (rule!8626 Rule!11416) (size!29549 Int) (originalCharacters!6522 List!38791)) )
))
(declare-fun token!511 () Token!10982)

(declare-fun e!2270135 () Bool)

(declare-fun inv!52146 (Token!10982) Bool)

(assert (=> start!343414 (and (inv!52146 token!511) e!2270135)))

(declare-fun e!2270117 () Bool)

(assert (=> start!343414 e!2270117))

(declare-fun e!2270127 () Bool)

(assert (=> start!343414 e!2270127))

(declare-fun e!2270142 () Bool)

(assert (=> b!3666341 (= e!2270142 (and tp!1116170 tp!1116179))))

(declare-fun b!3666342 () Bool)

(assert (=> b!3666342 false))

(declare-fun lt!1276540 () Unit!56098)

(declare-fun call!265350 () Unit!56098)

(assert (=> b!3666342 (= lt!1276540 call!265350)))

(declare-fun call!265351 () Bool)

(assert (=> b!3666342 (not call!265351)))

(declare-fun lt!1276568 () Unit!56098)

(declare-datatypes ((tuple2!38536 0))(
  ( (tuple2!38537 (_1!22402 Token!10982) (_2!22402 List!38791)) )
))
(declare-fun lt!1276551 () tuple2!38536)

(declare-fun anOtherTypeRule!33 () Rule!11416)

(declare-fun lt!1276569 () C!21320)

(declare-datatypes ((List!38793 0))(
  ( (Nil!38669) (Cons!38669 (h!44089 Rule!11416) (t!299188 List!38793)) )
))
(declare-fun rules!3307 () List!38793)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!454 (LexerInterface!5397 List!38793 List!38793 Rule!11416 Rule!11416 C!21320) Unit!56098)

(assert (=> b!3666342 (= lt!1276568 (lemmaNonSepRuleNotContainsCharContainedInASepRule!454 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) anOtherTypeRule!33 lt!1276569))))

(declare-fun e!2270125 () Unit!56098)

(declare-fun Unit!56102 () Unit!56098)

(assert (=> b!3666342 (= e!2270125 Unit!56102)))

(declare-fun bm!265342 () Bool)

(declare-fun lt!1276573 () List!38791)

(assert (=> bm!265342 (= call!265350 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276569))))

(declare-fun b!3666343 () Bool)

(declare-fun tp_is_empty!18217 () Bool)

(declare-fun tp!1116171 () Bool)

(assert (=> b!3666343 (= e!2270148 (and tp_is_empty!18217 tp!1116171))))

(declare-fun b!3666344 () Bool)

(declare-fun e!2270134 () Bool)

(declare-fun e!2270123 () Bool)

(assert (=> b!3666344 (= e!2270134 e!2270123)))

(declare-fun res!1488640 () Bool)

(assert (=> b!3666344 (=> res!1488640 e!2270123)))

(declare-datatypes ((Option!8244 0))(
  ( (None!8243) (Some!8243 (v!38143 tuple2!38536)) )
))
(declare-fun lt!1276558 () Option!8244)

(declare-fun lt!1276545 () Int)

(declare-fun lt!1276539 () TokenValue!6038)

(assert (=> b!3666344 (= res!1488640 (not (= lt!1276558 (Some!8243 (tuple2!38537 (Token!10983 lt!1276539 (rule!8626 (_1!22402 lt!1276551)) lt!1276545 lt!1276573) (_2!22402 lt!1276551))))))))

(declare-fun lt!1276552 () BalanceConc!23268)

(declare-fun size!29550 (BalanceConc!23268) Int)

(assert (=> b!3666344 (= lt!1276545 (size!29550 lt!1276552))))

(declare-fun apply!9310 (TokenValueInjection!11504 BalanceConc!23268) TokenValue!6038)

(assert (=> b!3666344 (= lt!1276539 (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552))))

(declare-fun lt!1276556 () Unit!56098)

(declare-fun lemmaCharactersSize!853 (Token!10982) Unit!56098)

(assert (=> b!3666344 (= lt!1276556 (lemmaCharactersSize!853 (_1!22402 lt!1276551)))))

(declare-fun lt!1276564 () Unit!56098)

(declare-fun lemmaEqSameImage!991 (TokenValueInjection!11504 BalanceConc!23268 BalanceConc!23268) Unit!56098)

(declare-fun seqFromList!4357 (List!38791) BalanceConc!23268)

(assert (=> b!3666344 (= lt!1276564 (lemmaEqSameImage!991 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552 (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551)))))))

(declare-fun lt!1276567 () Unit!56098)

(declare-fun lemmaSemiInverse!1557 (TokenValueInjection!11504 BalanceConc!23268) Unit!56098)

(assert (=> b!3666344 (= lt!1276567 (lemmaSemiInverse!1557 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552))))

(declare-fun bm!265343 () Bool)

(declare-fun call!265348 () List!38791)

(declare-fun usedCharacters!1020 (Regex!10567) List!38791)

(assert (=> bm!265343 (= call!265348 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666345 () Bool)

(declare-fun res!1488644 () Bool)

(assert (=> b!3666345 (=> (not res!1488644) (not e!2270132))))

(assert (=> b!3666345 (= res!1488644 (not (= (isSeparator!5808 anOtherTypeRule!33) (isSeparator!5808 rule!403))))))

(declare-fun b!3666346 () Bool)

(assert (=> b!3666346 false))

(declare-fun lt!1276541 () Unit!56098)

(declare-fun call!265347 () Unit!56098)

(assert (=> b!3666346 (= lt!1276541 call!265347)))

(declare-fun call!265349 () Bool)

(assert (=> b!3666346 (not call!265349)))

(declare-fun lt!1276536 () Unit!56098)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!336 (LexerInterface!5397 List!38793 List!38793 Rule!11416 Rule!11416 C!21320) Unit!56098)

(assert (=> b!3666346 (= lt!1276536 (lemmaSepRuleNotContainsCharContainedInANonSepRule!336 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8626 (_1!22402 lt!1276551)) lt!1276574))))

(declare-fun e!2270151 () Unit!56098)

(declare-fun Unit!56103 () Unit!56098)

(assert (=> b!3666346 (= e!2270151 Unit!56103)))

(declare-fun b!3666347 () Bool)

(declare-fun res!1488642 () Bool)

(assert (=> b!3666347 (=> res!1488642 e!2270134)))

(declare-fun matchR!5136 (Regex!10567 List!38791) Bool)

(assert (=> b!3666347 (= res!1488642 (not (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573)))))

(declare-fun e!2270140 () Bool)

(assert (=> b!3666348 (= e!2270140 (and tp!1116178 tp!1116184))))

(declare-fun b!3666349 () Bool)

(declare-fun e!2270144 () Unit!56098)

(assert (=> b!3666349 (= e!2270144 e!2270125)))

(declare-fun lt!1276542 () Unit!56098)

(declare-fun lt!1276575 () List!38791)

(declare-fun suffix!1395 () List!38791)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!116 (List!38791 List!38791 List!38791 List!38791) Unit!56098)

(assert (=> b!3666349 (= lt!1276542 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!116 lt!1276559 suffix!1395 lt!1276573 lt!1276575))))

(declare-fun contains!7683 (List!38791 C!21320) Bool)

(assert (=> b!3666349 (contains!7683 lt!1276573 lt!1276569)))

(declare-fun c!633853 () Bool)

(assert (=> b!3666349 (= c!633853 (isSeparator!5808 rule!403))))

(declare-fun b!3666350 () Bool)

(declare-fun e!2270152 () Bool)

(assert (=> b!3666350 (= e!2270152 false)))

(declare-fun b!3666351 () Bool)

(declare-fun res!1488651 () Bool)

(assert (=> b!3666351 (=> (not res!1488651) (not e!2270132))))

(declare-fun isEmpty!22942 (List!38793) Bool)

(assert (=> b!3666351 (= res!1488651 (not (isEmpty!22942 rules!3307)))))

(declare-fun b!3666352 () Bool)

(declare-fun e!2270130 () Bool)

(declare-fun contains!7684 (List!38793 Rule!11416) Bool)

(assert (=> b!3666352 (= e!2270130 (contains!7684 rules!3307 (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun bm!265344 () Bool)

(declare-fun call!265352 () List!38791)

(assert (=> bm!265344 (= call!265352 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666353 () Bool)

(declare-fun Unit!56104 () Unit!56098)

(assert (=> b!3666353 (= e!2270147 Unit!56104)))

(declare-fun b!3666354 () Bool)

(declare-fun e!2270120 () Bool)

(declare-fun lt!1276538 () Rule!11416)

(assert (=> b!3666354 (= e!2270120 (= (rule!8626 (_1!22402 lt!1276551)) lt!1276538))))

(declare-fun b!3666355 () Bool)

(assert (=> b!3666355 false))

(declare-fun lt!1276570 () Unit!56098)

(assert (=> b!3666355 (= lt!1276570 call!265347)))

(assert (=> b!3666355 (not call!265349)))

(declare-fun lt!1276577 () Unit!56098)

(assert (=> b!3666355 (= lt!1276577 (lemmaNonSepRuleNotContainsCharContainedInASepRule!454 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) rule!403 lt!1276574))))

(declare-fun e!2270137 () Unit!56098)

(declare-fun Unit!56105 () Unit!56098)

(assert (=> b!3666355 (= e!2270137 Unit!56105)))

(declare-fun b!3666356 () Bool)

(declare-fun e!2270122 () Bool)

(declare-fun e!2270133 () Bool)

(assert (=> b!3666356 (= e!2270122 e!2270133)))

(declare-fun res!1488638 () Bool)

(assert (=> b!3666356 (=> res!1488638 e!2270133)))

(declare-fun lt!1276561 () List!38791)

(assert (=> b!3666356 (= res!1488638 (contains!7683 lt!1276561 lt!1276569))))

(declare-fun head!7842 (List!38791) C!21320)

(assert (=> b!3666356 (= lt!1276569 (head!7842 suffix!1395))))

(assert (=> b!3666356 (= lt!1276561 (usedCharacters!1020 (regex!5808 rule!403)))))

(declare-fun b!3666357 () Bool)

(declare-fun res!1488630 () Bool)

(assert (=> b!3666357 (=> (not res!1488630) (not e!2270132))))

(assert (=> b!3666357 (= res!1488630 (contains!7684 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3666358 () Bool)

(declare-fun res!1488639 () Bool)

(assert (=> b!3666358 (=> res!1488639 e!2270133)))

(declare-fun sepAndNonSepRulesDisjointChars!1976 (List!38793 List!38793) Bool)

(assert (=> b!3666358 (= res!1488639 (not (sepAndNonSepRulesDisjointChars!1976 rules!3307 rules!3307)))))

(declare-fun b!3666359 () Bool)

(declare-fun e!2270128 () Bool)

(assert (=> b!3666359 (= e!2270128 (not e!2270122))))

(declare-fun res!1488641 () Bool)

(assert (=> b!3666359 (=> res!1488641 e!2270122)))

(assert (=> b!3666359 (= res!1488641 (not (matchR!5136 (regex!5808 rule!403) lt!1276559)))))

(declare-fun ruleValid!2072 (LexerInterface!5397 Rule!11416) Bool)

(assert (=> b!3666359 (ruleValid!2072 thiss!23823 rule!403)))

(declare-fun lt!1276528 () Unit!56098)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1226 (LexerInterface!5397 Rule!11416 List!38793) Unit!56098)

(assert (=> b!3666359 (= lt!1276528 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1226 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2270119 () Bool)

(declare-fun b!3666360 () Bool)

(declare-fun tp!1116180 () Bool)

(declare-fun inv!52143 (String!43524) Bool)

(declare-fun inv!52147 (TokenValueInjection!11504) Bool)

(assert (=> b!3666360 (= e!2270117 (and tp!1116180 (inv!52143 (tag!6592 rule!403)) (inv!52147 (transformation!5808 rule!403)) e!2270119))))

(declare-fun b!3666361 () Bool)

(declare-fun res!1488643 () Bool)

(assert (=> b!3666361 (=> (not res!1488643) (not e!2270128))))

(assert (=> b!3666361 (= res!1488643 (= (rule!8626 token!511) rule!403))))

(declare-fun b!3666362 () Bool)

(declare-fun e!2270138 () Unit!56098)

(declare-fun Unit!56106 () Unit!56098)

(assert (=> b!3666362 (= e!2270138 Unit!56106)))

(declare-fun bm!265345 () Bool)

(assert (=> bm!265345 (= call!265347 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276574))))

(declare-fun bm!265346 () Bool)

(assert (=> bm!265346 (= call!265349 (contains!7683 call!265348 lt!1276574))))

(declare-fun b!3666363 () Bool)

(declare-fun e!2270131 () Bool)

(assert (=> b!3666363 (= e!2270132 e!2270131)))

(declare-fun res!1488647 () Bool)

(assert (=> b!3666363 (=> (not res!1488647) (not e!2270131))))

(declare-fun lt!1276527 () Option!8244)

(declare-fun isDefined!6476 (Option!8244) Bool)

(assert (=> b!3666363 (= res!1488647 (isDefined!6476 lt!1276527))))

(declare-fun maxPrefix!2931 (LexerInterface!5397 List!38793 List!38791) Option!8244)

(assert (=> b!3666363 (= lt!1276527 (maxPrefix!2931 thiss!23823 rules!3307 lt!1276559))))

(declare-fun lt!1276555 () BalanceConc!23268)

(declare-fun list!14354 (BalanceConc!23268) List!38791)

(assert (=> b!3666363 (= lt!1276559 (list!14354 lt!1276555))))

(declare-fun charsOf!3822 (Token!10982) BalanceConc!23268)

(assert (=> b!3666363 (= lt!1276555 (charsOf!3822 token!511))))

(declare-fun b!3666364 () Bool)

(declare-fun Unit!56107 () Unit!56098)

(assert (=> b!3666364 (= e!2270144 Unit!56107)))

(declare-fun b!3666365 () Bool)

(declare-fun e!2270118 () Unit!56098)

(assert (=> b!3666365 (= e!2270118 e!2270137)))

(declare-fun c!633848 () Bool)

(assert (=> b!3666365 (= c!633848 (not (isSeparator!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666366 () Bool)

(declare-fun res!1488637 () Bool)

(assert (=> b!3666366 (=> (not res!1488637) (not e!2270132))))

(assert (=> b!3666366 (= res!1488637 (contains!7684 rules!3307 rule!403))))

(declare-fun b!3666367 () Bool)

(declare-fun e!2270141 () Bool)

(declare-fun tp!1116183 () Bool)

(assert (=> b!3666367 (= e!2270141 (and tp!1116183 (inv!52143 (tag!6592 (h!44089 rules!3307))) (inv!52147 (transformation!5808 (h!44089 rules!3307))) e!2270140))))

(declare-fun b!3666368 () Bool)

(declare-fun e!2270121 () Bool)

(declare-fun tp!1116175 () Bool)

(declare-fun inv!21 (TokenValue!6038) Bool)

(assert (=> b!3666368 (= e!2270135 (and (inv!21 (value!185988 token!511)) e!2270121 tp!1116175))))

(declare-fun b!3666369 () Bool)

(declare-fun e!2270149 () Unit!56098)

(declare-fun Unit!56108 () Unit!56098)

(assert (=> b!3666369 (= e!2270149 Unit!56108)))

(declare-fun b!3666370 () Bool)

(declare-fun tp!1116176 () Bool)

(assert (=> b!3666370 (= e!2270139 (and e!2270141 tp!1116176))))

(declare-fun b!3666371 () Bool)

(declare-fun res!1488632 () Bool)

(assert (=> b!3666371 (=> res!1488632 e!2270122)))

(declare-fun isEmpty!22943 (List!38791) Bool)

(assert (=> b!3666371 (= res!1488632 (isEmpty!22943 suffix!1395))))

(assert (=> b!3666372 (= e!2270119 (and tp!1116181 tp!1116177))))

(declare-fun b!3666373 () Bool)

(assert (=> b!3666373 (= e!2270133 e!2270134)))

(declare-fun res!1488635 () Bool)

(assert (=> b!3666373 (=> res!1488635 e!2270134)))

(declare-fun isPrefix!3171 (List!38791 List!38791) Bool)

(assert (=> b!3666373 (= res!1488635 (not (isPrefix!3171 lt!1276573 lt!1276575)))))

(declare-fun ++!9624 (List!38791 List!38791) List!38791)

(assert (=> b!3666373 (isPrefix!3171 lt!1276573 (++!9624 lt!1276573 (_2!22402 lt!1276551)))))

(declare-fun lt!1276535 () Unit!56098)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2090 (List!38791 List!38791) Unit!56098)

(assert (=> b!3666373 (= lt!1276535 (lemmaConcatTwoListThenFirstIsPrefix!2090 lt!1276573 (_2!22402 lt!1276551)))))

(assert (=> b!3666373 (= lt!1276573 (list!14354 lt!1276552))))

(assert (=> b!3666373 (= lt!1276552 (charsOf!3822 (_1!22402 lt!1276551)))))

(declare-fun e!2270126 () Bool)

(assert (=> b!3666373 e!2270126))

(declare-fun res!1488652 () Bool)

(assert (=> b!3666373 (=> (not res!1488652) (not e!2270126))))

(declare-datatypes ((Option!8245 0))(
  ( (None!8244) (Some!8244 (v!38144 Rule!11416)) )
))
(declare-fun lt!1276529 () Option!8245)

(declare-fun isDefined!6477 (Option!8245) Bool)

(assert (=> b!3666373 (= res!1488652 (isDefined!6477 lt!1276529))))

(declare-fun getRuleFromTag!1412 (LexerInterface!5397 List!38793 String!43524) Option!8245)

(assert (=> b!3666373 (= lt!1276529 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun lt!1276544 () Unit!56098)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1412 (LexerInterface!5397 List!38793 List!38791 Token!10982) Unit!56098)

(assert (=> b!3666373 (= lt!1276544 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1412 thiss!23823 rules!3307 lt!1276575 (_1!22402 lt!1276551)))))

(declare-fun get!12758 (Option!8244) tuple2!38536)

(assert (=> b!3666373 (= lt!1276551 (get!12758 lt!1276558))))

(declare-fun lt!1276537 () Unit!56098)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1075 (LexerInterface!5397 List!38793 List!38791 List!38791) Unit!56098)

(assert (=> b!3666373 (= lt!1276537 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1075 thiss!23823 rules!3307 lt!1276559 suffix!1395))))

(assert (=> b!3666373 (= lt!1276558 (maxPrefix!2931 thiss!23823 rules!3307 lt!1276575))))

(assert (=> b!3666373 (isPrefix!3171 lt!1276559 lt!1276575)))

(declare-fun lt!1276563 () Unit!56098)

(assert (=> b!3666373 (= lt!1276563 (lemmaConcatTwoListThenFirstIsPrefix!2090 lt!1276559 suffix!1395))))

(assert (=> b!3666373 (= lt!1276575 (++!9624 lt!1276559 suffix!1395))))

(declare-fun b!3666374 () Bool)

(declare-fun e!2270124 () Bool)

(assert (=> b!3666374 (= e!2270123 e!2270124)))

(declare-fun res!1488636 () Bool)

(assert (=> b!3666374 (=> res!1488636 e!2270124)))

(declare-fun lt!1276547 () Option!8244)

(declare-fun lt!1276533 () List!38791)

(assert (=> b!3666374 (= res!1488636 (or (not (= lt!1276533 (_2!22402 lt!1276551))) (not (= lt!1276547 (Some!8243 (tuple2!38537 (_1!22402 lt!1276551) lt!1276533))))))))

(assert (=> b!3666374 (= (_2!22402 lt!1276551) lt!1276533)))

(declare-fun lt!1276566 () Unit!56098)

(declare-fun lemmaSamePrefixThenSameSuffix!1498 (List!38791 List!38791 List!38791 List!38791 List!38791) Unit!56098)

(assert (=> b!3666374 (= lt!1276566 (lemmaSamePrefixThenSameSuffix!1498 lt!1276573 (_2!22402 lt!1276551) lt!1276573 lt!1276533 lt!1276575))))

(declare-fun getSuffix!1724 (List!38791 List!38791) List!38791)

(assert (=> b!3666374 (= lt!1276533 (getSuffix!1724 lt!1276575 lt!1276573))))

(declare-fun lt!1276560 () Int)

(declare-fun lt!1276557 () TokenValue!6038)

(assert (=> b!3666374 (= lt!1276547 (Some!8243 (tuple2!38537 (Token!10983 lt!1276557 (rule!8626 (_1!22402 lt!1276551)) lt!1276560 lt!1276573) (_2!22402 lt!1276551))))))

(declare-fun maxPrefixOneRule!2069 (LexerInterface!5397 Rule!11416 List!38791) Option!8244)

(assert (=> b!3666374 (= lt!1276547 (maxPrefixOneRule!2069 thiss!23823 (rule!8626 (_1!22402 lt!1276551)) lt!1276575))))

(declare-fun size!29551 (List!38791) Int)

(assert (=> b!3666374 (= lt!1276560 (size!29551 lt!1276573))))

(assert (=> b!3666374 (= lt!1276557 (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) (seqFromList!4357 lt!1276573)))))

(declare-fun lt!1276553 () Unit!56098)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1125 (LexerInterface!5397 List!38793 List!38791 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> b!3666374 (= lt!1276553 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1125 thiss!23823 rules!3307 lt!1276573 lt!1276575 (_2!22402 lt!1276551) (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun e!2270116 () Bool)

(declare-fun b!3666375 () Bool)

(declare-fun tp!1116173 () Bool)

(assert (=> b!3666375 (= e!2270121 (and tp!1116173 (inv!52143 (tag!6592 (rule!8626 token!511))) (inv!52147 (transformation!5808 (rule!8626 token!511))) e!2270116))))

(declare-fun b!3666376 () Bool)

(declare-fun e!2270146 () Bool)

(assert (=> b!3666376 (= e!2270146 e!2270130)))

(declare-fun res!1488645 () Bool)

(assert (=> b!3666376 (=> res!1488645 e!2270130)))

(declare-fun lt!1276554 () Int)

(declare-fun lt!1276530 () Int)

(assert (=> b!3666376 (= res!1488645 (>= lt!1276554 lt!1276530))))

(declare-fun lt!1276571 () Unit!56098)

(assert (=> b!3666376 (= lt!1276571 e!2270149)))

(declare-fun c!633849 () Bool)

(assert (=> b!3666376 (= c!633849 (< lt!1276530 lt!1276554))))

(declare-fun getIndex!476 (List!38793 Rule!11416) Int)

(assert (=> b!3666376 (= lt!1276554 (getIndex!476 rules!3307 rule!403))))

(assert (=> b!3666376 (= lt!1276530 (getIndex!476 rules!3307 (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun b!3666377 () Bool)

(declare-fun Unit!56109 () Unit!56098)

(assert (=> b!3666377 (= e!2270138 Unit!56109)))

(declare-fun lt!1276576 () Unit!56098)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!350 (LexerInterface!5397 List!38793 Rule!11416 List!38791 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> b!3666377 (= lt!1276576 (lemmaMaxPrefixOutputsMaxPrefix!350 thiss!23823 rules!3307 (rule!8626 (_1!22402 lt!1276551)) lt!1276573 lt!1276575 lt!1276559 rule!403))))

(assert (=> b!3666377 false))

(declare-fun b!3666378 () Bool)

(declare-fun tp!1116182 () Bool)

(assert (=> b!3666378 (= e!2270127 (and tp!1116182 (inv!52143 (tag!6592 anOtherTypeRule!33)) (inv!52147 (transformation!5808 anOtherTypeRule!33)) e!2270142))))

(declare-fun bm!265347 () Bool)

(assert (=> bm!265347 (= call!265351 (contains!7683 call!265352 lt!1276569))))

(declare-fun b!3666379 () Bool)

(assert (=> b!3666379 false))

(declare-fun lt!1276546 () Unit!56098)

(assert (=> b!3666379 (= lt!1276546 call!265350)))

(assert (=> b!3666379 (not call!265351)))

(declare-fun lt!1276549 () Unit!56098)

(assert (=> b!3666379 (= lt!1276549 (lemmaSepRuleNotContainsCharContainedInANonSepRule!336 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8626 (_1!22402 lt!1276551)) lt!1276569))))

(declare-fun Unit!56110 () Unit!56098)

(assert (=> b!3666379 (= e!2270125 Unit!56110)))

(assert (=> b!3666380 (= e!2270116 (and tp!1116172 tp!1116174))))

(declare-fun b!3666381 () Bool)

(assert (=> b!3666381 (= e!2270118 e!2270151)))

(declare-fun c!633847 () Bool)

(assert (=> b!3666381 (= c!633847 (isSeparator!5808 (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun b!3666382 () Bool)

(assert (=> b!3666382 (= e!2270124 e!2270146)))

(declare-fun res!1488634 () Bool)

(assert (=> b!3666382 (=> res!1488634 e!2270146)))

(assert (=> b!3666382 (= res!1488634 (= (rule!8626 (_1!22402 lt!1276551)) (rule!8626 token!511)))))

(assert (=> b!3666382 (= lt!1276573 lt!1276559)))

(declare-fun lt!1276548 () Unit!56098)

(declare-fun lemmaIsPrefixSameLengthThenSameList!633 (List!38791 List!38791 List!38791) Unit!56098)

(assert (=> b!3666382 (= lt!1276548 (lemmaIsPrefixSameLengthThenSameList!633 lt!1276573 lt!1276559 lt!1276575))))

(declare-fun lt!1276565 () Unit!56098)

(assert (=> b!3666382 (= lt!1276565 e!2270138)))

(declare-fun c!633851 () Bool)

(declare-fun lt!1276572 () Int)

(assert (=> b!3666382 (= c!633851 (< lt!1276545 lt!1276572))))

(declare-fun lt!1276578 () Unit!56098)

(assert (=> b!3666382 (= lt!1276578 e!2270144)))

(declare-fun c!633852 () Bool)

(assert (=> b!3666382 (= c!633852 (> lt!1276545 lt!1276572))))

(assert (=> b!3666382 (= lt!1276572 (size!29550 lt!1276555))))

(declare-fun lt!1276562 () Unit!56098)

(assert (=> b!3666382 (= lt!1276562 e!2270118)))

(declare-fun c!633850 () Bool)

(assert (=> b!3666382 (= c!633850 (isSeparator!5808 rule!403))))

(declare-fun lt!1276531 () Unit!56098)

(assert (=> b!3666382 (= lt!1276531 e!2270147)))

(declare-fun c!633846 () Bool)

(assert (=> b!3666382 (= c!633846 (not (contains!7683 lt!1276561 lt!1276574)))))

(assert (=> b!3666382 (= lt!1276574 (head!7842 lt!1276573))))

(declare-fun b!3666383 () Bool)

(declare-fun Unit!56111 () Unit!56098)

(assert (=> b!3666383 (= e!2270137 Unit!56111)))

(declare-fun b!3666384 () Bool)

(declare-fun res!1488631 () Bool)

(assert (=> b!3666384 (=> (not res!1488631) (not e!2270132))))

(declare-fun rulesInvariant!4794 (LexerInterface!5397 List!38793) Bool)

(assert (=> b!3666384 (= res!1488631 (rulesInvariant!4794 thiss!23823 rules!3307))))

(declare-fun b!3666385 () Bool)

(declare-fun res!1488648 () Bool)

(assert (=> b!3666385 (=> (not res!1488648) (not e!2270128))))

(declare-fun lt!1276543 () tuple2!38536)

(assert (=> b!3666385 (= res!1488648 (isEmpty!22943 (_2!22402 lt!1276543)))))

(declare-fun b!3666386 () Bool)

(declare-fun Unit!56112 () Unit!56098)

(assert (=> b!3666386 (= e!2270149 Unit!56112)))

(declare-fun lt!1276532 () Unit!56098)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!188 (List!38791) Unit!56098)

(assert (=> b!3666386 (= lt!1276532 (lemmaGetSuffixOnListWithItSelfIsEmpty!188 lt!1276559))))

(assert (=> b!3666386 (isEmpty!22943 (getSuffix!1724 lt!1276559 lt!1276559))))

(declare-fun lt!1276550 () Unit!56098)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!216 (LexerInterface!5397 List!38793 Rule!11416 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> b!3666386 (= lt!1276550 (lemmaMaxPrefNoSmallerRuleMatches!216 thiss!23823 rules!3307 rule!403 lt!1276559 lt!1276559 (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun res!1488649 () Bool)

(assert (=> b!3666386 (= res!1488649 (not (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276559)))))

(assert (=> b!3666386 (=> (not res!1488649) (not e!2270152))))

(assert (=> b!3666386 e!2270152))

(declare-fun b!3666387 () Bool)

(assert (=> b!3666387 (= e!2270126 e!2270120)))

(declare-fun res!1488633 () Bool)

(assert (=> b!3666387 (=> (not res!1488633) (not e!2270120))))

(assert (=> b!3666387 (= res!1488633 (matchR!5136 (regex!5808 lt!1276538) (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))))))

(declare-fun get!12759 (Option!8245) Rule!11416)

(assert (=> b!3666387 (= lt!1276538 (get!12759 lt!1276529))))

(declare-fun b!3666388 () Bool)

(declare-fun res!1488653 () Bool)

(assert (=> b!3666388 (=> res!1488653 e!2270133)))

(assert (=> b!3666388 (= res!1488653 (not (contains!7683 (usedCharacters!1020 (regex!5808 anOtherTypeRule!33)) lt!1276569)))))

(declare-fun b!3666389 () Bool)

(declare-fun Unit!56113 () Unit!56098)

(assert (=> b!3666389 (= e!2270151 Unit!56113)))

(declare-fun b!3666390 () Bool)

(assert (=> b!3666390 (= e!2270131 e!2270128)))

(declare-fun res!1488646 () Bool)

(assert (=> b!3666390 (=> (not res!1488646) (not e!2270128))))

(assert (=> b!3666390 (= res!1488646 (= (_1!22402 lt!1276543) token!511))))

(assert (=> b!3666390 (= lt!1276543 (get!12758 lt!1276527))))

(assert (= (and start!343414 res!1488650) b!3666351))

(assert (= (and b!3666351 res!1488651) b!3666384))

(assert (= (and b!3666384 res!1488631) b!3666366))

(assert (= (and b!3666366 res!1488637) b!3666357))

(assert (= (and b!3666357 res!1488630) b!3666345))

(assert (= (and b!3666345 res!1488644) b!3666363))

(assert (= (and b!3666363 res!1488647) b!3666390))

(assert (= (and b!3666390 res!1488646) b!3666385))

(assert (= (and b!3666385 res!1488648) b!3666361))

(assert (= (and b!3666361 res!1488643) b!3666359))

(assert (= (and b!3666359 (not res!1488641)) b!3666371))

(assert (= (and b!3666371 (not res!1488632)) b!3666356))

(assert (= (and b!3666356 (not res!1488638)) b!3666388))

(assert (= (and b!3666388 (not res!1488653)) b!3666358))

(assert (= (and b!3666358 (not res!1488639)) b!3666373))

(assert (= (and b!3666373 res!1488652) b!3666387))

(assert (= (and b!3666387 res!1488633) b!3666354))

(assert (= (and b!3666373 (not res!1488635)) b!3666347))

(assert (= (and b!3666347 (not res!1488642)) b!3666344))

(assert (= (and b!3666344 (not res!1488640)) b!3666374))

(assert (= (and b!3666374 (not res!1488636)) b!3666382))

(assert (= (and b!3666382 c!633846) b!3666340))

(assert (= (and b!3666382 (not c!633846)) b!3666353))

(assert (= (and b!3666382 c!633850) b!3666365))

(assert (= (and b!3666382 (not c!633850)) b!3666381))

(assert (= (and b!3666365 c!633848) b!3666355))

(assert (= (and b!3666365 (not c!633848)) b!3666383))

(assert (= (and b!3666381 c!633847) b!3666346))

(assert (= (and b!3666381 (not c!633847)) b!3666389))

(assert (= (or b!3666355 b!3666346) bm!265345))

(assert (= (or b!3666355 b!3666346) bm!265343))

(assert (= (or b!3666355 b!3666346) bm!265346))

(assert (= (and b!3666382 c!633852) b!3666349))

(assert (= (and b!3666382 (not c!633852)) b!3666364))

(assert (= (and b!3666349 c!633853) b!3666379))

(assert (= (and b!3666349 (not c!633853)) b!3666342))

(assert (= (or b!3666379 b!3666342) bm!265342))

(assert (= (or b!3666379 b!3666342) bm!265344))

(assert (= (or b!3666379 b!3666342) bm!265347))

(assert (= (and b!3666382 c!633851) b!3666377))

(assert (= (and b!3666382 (not c!633851)) b!3666362))

(assert (= (and b!3666382 (not res!1488634)) b!3666376))

(assert (= (and b!3666376 c!633849) b!3666386))

(assert (= (and b!3666376 (not c!633849)) b!3666369))

(assert (= (and b!3666386 res!1488649) b!3666350))

(assert (= (and b!3666376 (not res!1488645)) b!3666352))

(assert (= b!3666367 b!3666348))

(assert (= b!3666370 b!3666367))

(assert (= (and start!343414 ((_ is Cons!38669) rules!3307)) b!3666370))

(assert (= (and start!343414 ((_ is Cons!38667) suffix!1395)) b!3666343))

(assert (= b!3666375 b!3666380))

(assert (= b!3666368 b!3666375))

(assert (= start!343414 b!3666368))

(assert (= b!3666360 b!3666372))

(assert (= start!343414 b!3666360))

(assert (= b!3666378 b!3666341))

(assert (= start!343414 b!3666378))

(declare-fun m!4174191 () Bool)

(assert (=> b!3666371 m!4174191))

(declare-fun m!4174193 () Bool)

(assert (=> b!3666386 m!4174193))

(declare-fun m!4174195 () Bool)

(assert (=> b!3666386 m!4174195))

(declare-fun m!4174197 () Bool)

(assert (=> b!3666386 m!4174197))

(assert (=> b!3666386 m!4174195))

(declare-fun m!4174199 () Bool)

(assert (=> b!3666386 m!4174199))

(declare-fun m!4174201 () Bool)

(assert (=> b!3666386 m!4174201))

(declare-fun m!4174203 () Bool)

(assert (=> b!3666342 m!4174203))

(declare-fun m!4174205 () Bool)

(assert (=> b!3666347 m!4174205))

(declare-fun m!4174207 () Bool)

(assert (=> b!3666375 m!4174207))

(declare-fun m!4174209 () Bool)

(assert (=> b!3666375 m!4174209))

(declare-fun m!4174211 () Bool)

(assert (=> b!3666344 m!4174211))

(declare-fun m!4174213 () Bool)

(assert (=> b!3666344 m!4174213))

(declare-fun m!4174215 () Bool)

(assert (=> b!3666344 m!4174215))

(declare-fun m!4174217 () Bool)

(assert (=> b!3666344 m!4174217))

(declare-fun m!4174219 () Bool)

(assert (=> b!3666344 m!4174219))

(declare-fun m!4174221 () Bool)

(assert (=> b!3666344 m!4174221))

(assert (=> b!3666344 m!4174215))

(declare-fun m!4174223 () Bool)

(assert (=> b!3666379 m!4174223))

(declare-fun m!4174225 () Bool)

(assert (=> b!3666356 m!4174225))

(declare-fun m!4174227 () Bool)

(assert (=> b!3666356 m!4174227))

(declare-fun m!4174229 () Bool)

(assert (=> b!3666356 m!4174229))

(declare-fun m!4174231 () Bool)

(assert (=> b!3666357 m!4174231))

(declare-fun m!4174233 () Bool)

(assert (=> b!3666358 m!4174233))

(declare-fun m!4174235 () Bool)

(assert (=> bm!265347 m!4174235))

(declare-fun m!4174237 () Bool)

(assert (=> bm!265343 m!4174237))

(declare-fun m!4174239 () Bool)

(assert (=> b!3666359 m!4174239))

(declare-fun m!4174241 () Bool)

(assert (=> b!3666359 m!4174241))

(declare-fun m!4174243 () Bool)

(assert (=> b!3666359 m!4174243))

(declare-fun m!4174245 () Bool)

(assert (=> b!3666382 m!4174245))

(declare-fun m!4174247 () Bool)

(assert (=> b!3666382 m!4174247))

(declare-fun m!4174249 () Bool)

(assert (=> b!3666382 m!4174249))

(declare-fun m!4174251 () Bool)

(assert (=> b!3666382 m!4174251))

(declare-fun m!4174253 () Bool)

(assert (=> b!3666377 m!4174253))

(declare-fun m!4174255 () Bool)

(assert (=> b!3666384 m!4174255))

(declare-fun m!4174257 () Bool)

(assert (=> b!3666351 m!4174257))

(declare-fun m!4174259 () Bool)

(assert (=> b!3666366 m!4174259))

(declare-fun m!4174261 () Bool)

(assert (=> b!3666378 m!4174261))

(declare-fun m!4174263 () Bool)

(assert (=> b!3666378 m!4174263))

(declare-fun m!4174265 () Bool)

(assert (=> b!3666373 m!4174265))

(declare-fun m!4174267 () Bool)

(assert (=> b!3666373 m!4174267))

(declare-fun m!4174269 () Bool)

(assert (=> b!3666373 m!4174269))

(declare-fun m!4174271 () Bool)

(assert (=> b!3666373 m!4174271))

(declare-fun m!4174273 () Bool)

(assert (=> b!3666373 m!4174273))

(declare-fun m!4174275 () Bool)

(assert (=> b!3666373 m!4174275))

(declare-fun m!4174277 () Bool)

(assert (=> b!3666373 m!4174277))

(declare-fun m!4174279 () Bool)

(assert (=> b!3666373 m!4174279))

(declare-fun m!4174281 () Bool)

(assert (=> b!3666373 m!4174281))

(declare-fun m!4174283 () Bool)

(assert (=> b!3666373 m!4174283))

(declare-fun m!4174285 () Bool)

(assert (=> b!3666373 m!4174285))

(declare-fun m!4174287 () Bool)

(assert (=> b!3666373 m!4174287))

(declare-fun m!4174289 () Bool)

(assert (=> b!3666373 m!4174289))

(assert (=> b!3666373 m!4174281))

(declare-fun m!4174291 () Bool)

(assert (=> b!3666373 m!4174291))

(declare-fun m!4174293 () Bool)

(assert (=> b!3666373 m!4174293))

(declare-fun m!4174295 () Bool)

(assert (=> b!3666349 m!4174295))

(declare-fun m!4174297 () Bool)

(assert (=> b!3666349 m!4174297))

(declare-fun m!4174299 () Bool)

(assert (=> b!3666363 m!4174299))

(declare-fun m!4174301 () Bool)

(assert (=> b!3666363 m!4174301))

(declare-fun m!4174303 () Bool)

(assert (=> b!3666363 m!4174303))

(declare-fun m!4174305 () Bool)

(assert (=> b!3666363 m!4174305))

(declare-fun m!4174307 () Bool)

(assert (=> b!3666368 m!4174307))

(declare-fun m!4174309 () Bool)

(assert (=> bm!265342 m!4174309))

(declare-fun m!4174311 () Bool)

(assert (=> b!3666374 m!4174311))

(declare-fun m!4174313 () Bool)

(assert (=> b!3666374 m!4174313))

(declare-fun m!4174315 () Bool)

(assert (=> b!3666374 m!4174315))

(declare-fun m!4174317 () Bool)

(assert (=> b!3666374 m!4174317))

(assert (=> b!3666374 m!4174313))

(declare-fun m!4174319 () Bool)

(assert (=> b!3666374 m!4174319))

(declare-fun m!4174321 () Bool)

(assert (=> b!3666374 m!4174321))

(declare-fun m!4174323 () Bool)

(assert (=> b!3666374 m!4174323))

(declare-fun m!4174325 () Bool)

(assert (=> b!3666388 m!4174325))

(assert (=> b!3666388 m!4174325))

(declare-fun m!4174327 () Bool)

(assert (=> b!3666388 m!4174327))

(declare-fun m!4174329 () Bool)

(assert (=> b!3666360 m!4174329))

(declare-fun m!4174331 () Bool)

(assert (=> b!3666360 m!4174331))

(declare-fun m!4174333 () Bool)

(assert (=> bm!265346 m!4174333))

(declare-fun m!4174335 () Bool)

(assert (=> b!3666355 m!4174335))

(assert (=> bm!265344 m!4174237))

(declare-fun m!4174337 () Bool)

(assert (=> b!3666376 m!4174337))

(declare-fun m!4174339 () Bool)

(assert (=> b!3666376 m!4174339))

(declare-fun m!4174341 () Bool)

(assert (=> start!343414 m!4174341))

(declare-fun m!4174343 () Bool)

(assert (=> b!3666385 m!4174343))

(declare-fun m!4174345 () Bool)

(assert (=> b!3666352 m!4174345))

(declare-fun m!4174347 () Bool)

(assert (=> b!3666367 m!4174347))

(declare-fun m!4174349 () Bool)

(assert (=> b!3666367 m!4174349))

(assert (=> b!3666387 m!4174293))

(assert (=> b!3666387 m!4174293))

(declare-fun m!4174351 () Bool)

(assert (=> b!3666387 m!4174351))

(assert (=> b!3666387 m!4174351))

(declare-fun m!4174353 () Bool)

(assert (=> b!3666387 m!4174353))

(declare-fun m!4174355 () Bool)

(assert (=> b!3666387 m!4174355))

(declare-fun m!4174357 () Bool)

(assert (=> b!3666340 m!4174357))

(declare-fun m!4174359 () Bool)

(assert (=> bm!265345 m!4174359))

(declare-fun m!4174361 () Bool)

(assert (=> b!3666390 m!4174361))

(declare-fun m!4174363 () Bool)

(assert (=> b!3666346 m!4174363))

(check-sat (not b_next!97513) (not b!3666355) (not b_next!97511) (not b_next!97517) (not b!3666373) b_and!272685 (not b!3666388) (not b!3666386) (not bm!265345) (not b!3666358) (not b!3666349) b_and!272675 (not b!3666342) (not b!3666387) (not b!3666363) (not b_next!97515) (not b_next!97519) (not b!3666385) (not b!3666347) (not b!3666374) (not bm!265346) (not b!3666376) (not b!3666356) (not b_next!97509) b_and!272679 b_and!272677 b_and!272681 (not b_next!97505) b_and!272689 (not b!3666346) b_and!272687 (not b!3666357) (not b!3666384) (not b!3666378) (not b!3666390) (not bm!265344) (not bm!265342) (not b!3666351) (not b!3666375) (not b!3666340) (not b!3666379) (not b!3666367) (not b!3666360) b_and!272683 (not start!343414) (not b!3666377) tp_is_empty!18217 (not bm!265343) (not b!3666344) (not b!3666368) (not b!3666371) (not b!3666352) (not b!3666370) (not b!3666366) (not b!3666343) (not bm!265347) (not b_next!97507) (not b!3666382) (not b!3666359))
(check-sat b_and!272685 b_and!272675 (not b_next!97513) (not b_next!97511) b_and!272687 b_and!272683 (not b_next!97517) (not b_next!97507) (not b_next!97515) (not b_next!97519) (not b_next!97509) b_and!272679 b_and!272677 b_and!272681 (not b_next!97505) b_and!272689)
(get-model)

(declare-fun d!1076893 () Bool)

(declare-fun res!1488662 () Bool)

(declare-fun e!2270155 () Bool)

(assert (=> d!1076893 (=> (not res!1488662) (not e!2270155))))

(declare-fun rulesValid!2233 (LexerInterface!5397 List!38793) Bool)

(assert (=> d!1076893 (= res!1488662 (rulesValid!2233 thiss!23823 rules!3307))))

(assert (=> d!1076893 (= (rulesInvariant!4794 thiss!23823 rules!3307) e!2270155)))

(declare-fun b!3666393 () Bool)

(declare-datatypes ((List!38794 0))(
  ( (Nil!38670) (Cons!38670 (h!44090 String!43524) (t!299309 List!38794)) )
))
(declare-fun noDuplicateTag!2229 (LexerInterface!5397 List!38793 List!38794) Bool)

(assert (=> b!3666393 (= e!2270155 (noDuplicateTag!2229 thiss!23823 rules!3307 Nil!38670))))

(assert (= (and d!1076893 res!1488662) b!3666393))

(declare-fun m!4174365 () Bool)

(assert (=> d!1076893 m!4174365))

(declare-fun m!4174367 () Bool)

(assert (=> b!3666393 m!4174367))

(assert (=> b!3666384 d!1076893))

(declare-fun d!1076895 () Bool)

(assert (=> d!1076895 (not (contains!7683 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276574))))

(declare-fun lt!1276581 () Unit!56098)

(declare-fun choose!21747 (LexerInterface!5397 List!38793 List!38793 Rule!11416 Rule!11416 C!21320) Unit!56098)

(assert (=> d!1076895 (= lt!1276581 (choose!21747 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8626 (_1!22402 lt!1276551)) lt!1276574))))

(assert (=> d!1076895 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1076895 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!336 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8626 (_1!22402 lt!1276551)) lt!1276574) lt!1276581)))

(declare-fun bs!572974 () Bool)

(assert (= bs!572974 d!1076895))

(assert (=> bs!572974 m!4174237))

(assert (=> bs!572974 m!4174237))

(declare-fun m!4174369 () Bool)

(assert (=> bs!572974 m!4174369))

(declare-fun m!4174371 () Bool)

(assert (=> bs!572974 m!4174371))

(assert (=> bs!572974 m!4174255))

(assert (=> b!3666346 d!1076895))

(declare-fun d!1076897 () Bool)

(assert (=> d!1076897 (= (isEmpty!22943 (_2!22402 lt!1276543)) ((_ is Nil!38667) (_2!22402 lt!1276543)))))

(assert (=> b!3666385 d!1076897))

(declare-fun bm!265356 () Bool)

(declare-fun call!265361 () Bool)

(assert (=> bm!265356 (= call!265361 (isEmpty!22943 lt!1276573))))

(declare-fun b!3666453 () Bool)

(declare-fun e!2270187 () Bool)

(declare-fun nullable!3677 (Regex!10567) Bool)

(assert (=> b!3666453 (= e!2270187 (nullable!3677 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666454 () Bool)

(declare-fun e!2270192 () Bool)

(declare-fun e!2270189 () Bool)

(assert (=> b!3666454 (= e!2270192 e!2270189)))

(declare-fun c!633880 () Bool)

(assert (=> b!3666454 (= c!633880 ((_ is EmptyLang!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666455 () Bool)

(declare-fun res!1488687 () Bool)

(declare-fun e!2270190 () Bool)

(assert (=> b!3666455 (=> res!1488687 e!2270190)))

(assert (=> b!3666455 (= res!1488687 (not ((_ is ElementMatch!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))

(assert (=> b!3666455 (= e!2270189 e!2270190)))

(declare-fun b!3666456 () Bool)

(declare-fun e!2270188 () Bool)

(assert (=> b!3666456 (= e!2270188 (not (= (head!7842 lt!1276573) (c!633854 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))))

(declare-fun b!3666457 () Bool)

(declare-fun res!1488689 () Bool)

(assert (=> b!3666457 (=> res!1488689 e!2270188)))

(declare-fun tail!5675 (List!38791) List!38791)

(assert (=> b!3666457 (= res!1488689 (not (isEmpty!22943 (tail!5675 lt!1276573))))))

(declare-fun b!3666458 () Bool)

(declare-fun e!2270193 () Bool)

(assert (=> b!3666458 (= e!2270190 e!2270193)))

(declare-fun res!1488694 () Bool)

(assert (=> b!3666458 (=> (not res!1488694) (not e!2270193))))

(declare-fun lt!1276591 () Bool)

(assert (=> b!3666458 (= res!1488694 (not lt!1276591))))

(declare-fun b!3666459 () Bool)

(assert (=> b!3666459 (= e!2270193 e!2270188)))

(declare-fun res!1488691 () Bool)

(assert (=> b!3666459 (=> res!1488691 e!2270188)))

(assert (=> b!3666459 (= res!1488691 call!265361)))

(declare-fun b!3666460 () Bool)

(declare-fun e!2270191 () Bool)

(assert (=> b!3666460 (= e!2270191 (= (head!7842 lt!1276573) (c!633854 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))

(declare-fun b!3666461 () Bool)

(declare-fun res!1488688 () Bool)

(assert (=> b!3666461 (=> (not res!1488688) (not e!2270191))))

(assert (=> b!3666461 (= res!1488688 (isEmpty!22943 (tail!5675 lt!1276573)))))

(declare-fun b!3666463 () Bool)

(declare-fun res!1488690 () Bool)

(assert (=> b!3666463 (=> res!1488690 e!2270190)))

(assert (=> b!3666463 (= res!1488690 e!2270191)))

(declare-fun res!1488693 () Bool)

(assert (=> b!3666463 (=> (not res!1488693) (not e!2270191))))

(assert (=> b!3666463 (= res!1488693 lt!1276591)))

(declare-fun b!3666464 () Bool)

(assert (=> b!3666464 (= e!2270192 (= lt!1276591 call!265361))))

(declare-fun b!3666465 () Bool)

(assert (=> b!3666465 (= e!2270189 (not lt!1276591))))

(declare-fun b!3666466 () Bool)

(declare-fun derivativeStep!3226 (Regex!10567 C!21320) Regex!10567)

(assert (=> b!3666466 (= e!2270187 (matchR!5136 (derivativeStep!3226 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) (head!7842 lt!1276573)) (tail!5675 lt!1276573)))))

(declare-fun d!1076899 () Bool)

(assert (=> d!1076899 e!2270192))

(declare-fun c!633881 () Bool)

(assert (=> d!1076899 (= c!633881 ((_ is EmptyExpr!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(assert (=> d!1076899 (= lt!1276591 e!2270187)))

(declare-fun c!633879 () Bool)

(assert (=> d!1076899 (= c!633879 (isEmpty!22943 lt!1276573))))

(declare-fun validRegex!4839 (Regex!10567) Bool)

(assert (=> d!1076899 (validRegex!4839 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1076899 (= (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573) lt!1276591)))

(declare-fun b!3666462 () Bool)

(declare-fun res!1488692 () Bool)

(assert (=> b!3666462 (=> (not res!1488692) (not e!2270191))))

(assert (=> b!3666462 (= res!1488692 (not call!265361))))

(assert (= (and d!1076899 c!633879) b!3666453))

(assert (= (and d!1076899 (not c!633879)) b!3666466))

(assert (= (and d!1076899 c!633881) b!3666464))

(assert (= (and d!1076899 (not c!633881)) b!3666454))

(assert (= (and b!3666454 c!633880) b!3666465))

(assert (= (and b!3666454 (not c!633880)) b!3666455))

(assert (= (and b!3666455 (not res!1488687)) b!3666463))

(assert (= (and b!3666463 res!1488693) b!3666462))

(assert (= (and b!3666462 res!1488692) b!3666461))

(assert (= (and b!3666461 res!1488688) b!3666460))

(assert (= (and b!3666463 (not res!1488690)) b!3666458))

(assert (= (and b!3666458 res!1488694) b!3666459))

(assert (= (and b!3666459 (not res!1488691)) b!3666457))

(assert (= (and b!3666457 (not res!1488689)) b!3666456))

(assert (= (or b!3666464 b!3666459 b!3666462) bm!265356))

(declare-fun m!4174391 () Bool)

(assert (=> b!3666461 m!4174391))

(assert (=> b!3666461 m!4174391))

(declare-fun m!4174393 () Bool)

(assert (=> b!3666461 m!4174393))

(assert (=> b!3666460 m!4174251))

(assert (=> b!3666456 m!4174251))

(assert (=> b!3666457 m!4174391))

(assert (=> b!3666457 m!4174391))

(assert (=> b!3666457 m!4174393))

(declare-fun m!4174395 () Bool)

(assert (=> bm!265356 m!4174395))

(declare-fun m!4174397 () Bool)

(assert (=> b!3666453 m!4174397))

(assert (=> d!1076899 m!4174395))

(declare-fun m!4174399 () Bool)

(assert (=> d!1076899 m!4174399))

(assert (=> b!3666466 m!4174251))

(assert (=> b!3666466 m!4174251))

(declare-fun m!4174401 () Bool)

(assert (=> b!3666466 m!4174401))

(assert (=> b!3666466 m!4174391))

(assert (=> b!3666466 m!4174401))

(assert (=> b!3666466 m!4174391))

(declare-fun m!4174403 () Bool)

(assert (=> b!3666466 m!4174403))

(assert (=> b!3666347 d!1076899))

(declare-fun bm!265359 () Bool)

(declare-fun call!265364 () Bool)

(assert (=> bm!265359 (= call!265364 (isEmpty!22943 lt!1276559))))

(declare-fun b!3666467 () Bool)

(declare-fun e!2270194 () Bool)

(assert (=> b!3666467 (= e!2270194 (nullable!3677 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666468 () Bool)

(declare-fun e!2270199 () Bool)

(declare-fun e!2270196 () Bool)

(assert (=> b!3666468 (= e!2270199 e!2270196)))

(declare-fun c!633883 () Bool)

(assert (=> b!3666468 (= c!633883 ((_ is EmptyLang!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666469 () Bool)

(declare-fun res!1488695 () Bool)

(declare-fun e!2270197 () Bool)

(assert (=> b!3666469 (=> res!1488695 e!2270197)))

(assert (=> b!3666469 (= res!1488695 (not ((_ is ElementMatch!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))

(assert (=> b!3666469 (= e!2270196 e!2270197)))

(declare-fun b!3666470 () Bool)

(declare-fun e!2270195 () Bool)

(assert (=> b!3666470 (= e!2270195 (not (= (head!7842 lt!1276559) (c!633854 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))))

(declare-fun b!3666471 () Bool)

(declare-fun res!1488697 () Bool)

(assert (=> b!3666471 (=> res!1488697 e!2270195)))

(assert (=> b!3666471 (= res!1488697 (not (isEmpty!22943 (tail!5675 lt!1276559))))))

(declare-fun b!3666472 () Bool)

(declare-fun e!2270200 () Bool)

(assert (=> b!3666472 (= e!2270197 e!2270200)))

(declare-fun res!1488702 () Bool)

(assert (=> b!3666472 (=> (not res!1488702) (not e!2270200))))

(declare-fun lt!1276592 () Bool)

(assert (=> b!3666472 (= res!1488702 (not lt!1276592))))

(declare-fun b!3666473 () Bool)

(assert (=> b!3666473 (= e!2270200 e!2270195)))

(declare-fun res!1488699 () Bool)

(assert (=> b!3666473 (=> res!1488699 e!2270195)))

(assert (=> b!3666473 (= res!1488699 call!265364)))

(declare-fun b!3666474 () Bool)

(declare-fun e!2270198 () Bool)

(assert (=> b!3666474 (= e!2270198 (= (head!7842 lt!1276559) (c!633854 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))

(declare-fun b!3666475 () Bool)

(declare-fun res!1488696 () Bool)

(assert (=> b!3666475 (=> (not res!1488696) (not e!2270198))))

(assert (=> b!3666475 (= res!1488696 (isEmpty!22943 (tail!5675 lt!1276559)))))

(declare-fun b!3666477 () Bool)

(declare-fun res!1488698 () Bool)

(assert (=> b!3666477 (=> res!1488698 e!2270197)))

(assert (=> b!3666477 (= res!1488698 e!2270198)))

(declare-fun res!1488701 () Bool)

(assert (=> b!3666477 (=> (not res!1488701) (not e!2270198))))

(assert (=> b!3666477 (= res!1488701 lt!1276592)))

(declare-fun b!3666478 () Bool)

(assert (=> b!3666478 (= e!2270199 (= lt!1276592 call!265364))))

(declare-fun b!3666479 () Bool)

(assert (=> b!3666479 (= e!2270196 (not lt!1276592))))

(declare-fun b!3666480 () Bool)

(assert (=> b!3666480 (= e!2270194 (matchR!5136 (derivativeStep!3226 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) (head!7842 lt!1276559)) (tail!5675 lt!1276559)))))

(declare-fun d!1076911 () Bool)

(assert (=> d!1076911 e!2270199))

(declare-fun c!633884 () Bool)

(assert (=> d!1076911 (= c!633884 ((_ is EmptyExpr!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(assert (=> d!1076911 (= lt!1276592 e!2270194)))

(declare-fun c!633882 () Bool)

(assert (=> d!1076911 (= c!633882 (isEmpty!22943 lt!1276559))))

(assert (=> d!1076911 (validRegex!4839 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1076911 (= (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276559) lt!1276592)))

(declare-fun b!3666476 () Bool)

(declare-fun res!1488700 () Bool)

(assert (=> b!3666476 (=> (not res!1488700) (not e!2270198))))

(assert (=> b!3666476 (= res!1488700 (not call!265364))))

(assert (= (and d!1076911 c!633882) b!3666467))

(assert (= (and d!1076911 (not c!633882)) b!3666480))

(assert (= (and d!1076911 c!633884) b!3666478))

(assert (= (and d!1076911 (not c!633884)) b!3666468))

(assert (= (and b!3666468 c!633883) b!3666479))

(assert (= (and b!3666468 (not c!633883)) b!3666469))

(assert (= (and b!3666469 (not res!1488695)) b!3666477))

(assert (= (and b!3666477 res!1488701) b!3666476))

(assert (= (and b!3666476 res!1488700) b!3666475))

(assert (= (and b!3666475 res!1488696) b!3666474))

(assert (= (and b!3666477 (not res!1488698)) b!3666472))

(assert (= (and b!3666472 res!1488702) b!3666473))

(assert (= (and b!3666473 (not res!1488699)) b!3666471))

(assert (= (and b!3666471 (not res!1488697)) b!3666470))

(assert (= (or b!3666478 b!3666473 b!3666476) bm!265359))

(declare-fun m!4174411 () Bool)

(assert (=> b!3666475 m!4174411))

(assert (=> b!3666475 m!4174411))

(declare-fun m!4174413 () Bool)

(assert (=> b!3666475 m!4174413))

(declare-fun m!4174415 () Bool)

(assert (=> b!3666474 m!4174415))

(assert (=> b!3666470 m!4174415))

(assert (=> b!3666471 m!4174411))

(assert (=> b!3666471 m!4174411))

(assert (=> b!3666471 m!4174413))

(declare-fun m!4174417 () Bool)

(assert (=> bm!265359 m!4174417))

(assert (=> b!3666467 m!4174397))

(assert (=> d!1076911 m!4174417))

(assert (=> d!1076911 m!4174399))

(assert (=> b!3666480 m!4174415))

(assert (=> b!3666480 m!4174415))

(declare-fun m!4174419 () Bool)

(assert (=> b!3666480 m!4174419))

(assert (=> b!3666480 m!4174411))

(assert (=> b!3666480 m!4174419))

(assert (=> b!3666480 m!4174411))

(declare-fun m!4174421 () Bool)

(assert (=> b!3666480 m!4174421))

(assert (=> b!3666386 d!1076911))

(declare-fun d!1076917 () Bool)

(assert (=> d!1076917 (isEmpty!22943 (getSuffix!1724 lt!1276559 lt!1276559))))

(declare-fun lt!1276595 () Unit!56098)

(declare-fun choose!21749 (List!38791) Unit!56098)

(assert (=> d!1076917 (= lt!1276595 (choose!21749 lt!1276559))))

(assert (=> d!1076917 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!188 lt!1276559) lt!1276595)))

(declare-fun bs!572978 () Bool)

(assert (= bs!572978 d!1076917))

(assert (=> bs!572978 m!4174195))

(assert (=> bs!572978 m!4174195))

(assert (=> bs!572978 m!4174199))

(declare-fun m!4174423 () Bool)

(assert (=> bs!572978 m!4174423))

(assert (=> b!3666386 d!1076917))

(declare-fun d!1076919 () Bool)

(assert (=> d!1076919 (not (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276559))))

(declare-fun lt!1276601 () Unit!56098)

(declare-fun choose!21750 (LexerInterface!5397 List!38793 Rule!11416 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> d!1076919 (= lt!1276601 (choose!21750 thiss!23823 rules!3307 rule!403 lt!1276559 lt!1276559 (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1076919 (isPrefix!3171 lt!1276559 lt!1276559)))

(assert (=> d!1076919 (= (lemmaMaxPrefNoSmallerRuleMatches!216 thiss!23823 rules!3307 rule!403 lt!1276559 lt!1276559 (rule!8626 (_1!22402 lt!1276551))) lt!1276601)))

(declare-fun bs!572979 () Bool)

(assert (= bs!572979 d!1076919))

(assert (=> bs!572979 m!4174197))

(declare-fun m!4174439 () Bool)

(assert (=> bs!572979 m!4174439))

(declare-fun m!4174441 () Bool)

(assert (=> bs!572979 m!4174441))

(assert (=> b!3666386 d!1076919))

(declare-fun d!1076923 () Bool)

(assert (=> d!1076923 (= (isEmpty!22943 (getSuffix!1724 lt!1276559 lt!1276559)) ((_ is Nil!38667) (getSuffix!1724 lt!1276559 lt!1276559)))))

(assert (=> b!3666386 d!1076923))

(declare-fun d!1076925 () Bool)

(declare-fun lt!1276611 () List!38791)

(assert (=> d!1076925 (= (++!9624 lt!1276559 lt!1276611) lt!1276559)))

(declare-fun e!2270237 () List!38791)

(assert (=> d!1076925 (= lt!1276611 e!2270237)))

(declare-fun c!633900 () Bool)

(assert (=> d!1076925 (= c!633900 ((_ is Cons!38667) lt!1276559))))

(assert (=> d!1076925 (>= (size!29551 lt!1276559) (size!29551 lt!1276559))))

(assert (=> d!1076925 (= (getSuffix!1724 lt!1276559 lt!1276559) lt!1276611)))

(declare-fun b!3666547 () Bool)

(assert (=> b!3666547 (= e!2270237 (getSuffix!1724 (tail!5675 lt!1276559) (t!299186 lt!1276559)))))

(declare-fun b!3666548 () Bool)

(assert (=> b!3666548 (= e!2270237 lt!1276559)))

(assert (= (and d!1076925 c!633900) b!3666547))

(assert (= (and d!1076925 (not c!633900)) b!3666548))

(declare-fun m!4174455 () Bool)

(assert (=> d!1076925 m!4174455))

(declare-fun m!4174457 () Bool)

(assert (=> d!1076925 m!4174457))

(assert (=> d!1076925 m!4174457))

(assert (=> b!3666547 m!4174411))

(assert (=> b!3666547 m!4174411))

(declare-fun m!4174459 () Bool)

(assert (=> b!3666547 m!4174459))

(assert (=> b!3666386 d!1076925))

(declare-fun d!1076937 () Bool)

(declare-fun lt!1276618 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5593 (List!38793) (InoxSet Rule!11416))

(assert (=> d!1076937 (= lt!1276618 (select (content!5593 rules!3307) rule!403))))

(declare-fun e!2270250 () Bool)

(assert (=> d!1076937 (= lt!1276618 e!2270250)))

(declare-fun res!1488751 () Bool)

(assert (=> d!1076937 (=> (not res!1488751) (not e!2270250))))

(assert (=> d!1076937 (= res!1488751 ((_ is Cons!38669) rules!3307))))

(assert (=> d!1076937 (= (contains!7684 rules!3307 rule!403) lt!1276618)))

(declare-fun b!3666567 () Bool)

(declare-fun e!2270249 () Bool)

(assert (=> b!3666567 (= e!2270250 e!2270249)))

(declare-fun res!1488752 () Bool)

(assert (=> b!3666567 (=> res!1488752 e!2270249)))

(assert (=> b!3666567 (= res!1488752 (= (h!44089 rules!3307) rule!403))))

(declare-fun b!3666568 () Bool)

(assert (=> b!3666568 (= e!2270249 (contains!7684 (t!299188 rules!3307) rule!403))))

(assert (= (and d!1076937 res!1488751) b!3666567))

(assert (= (and b!3666567 (not res!1488752)) b!3666568))

(declare-fun m!4174479 () Bool)

(assert (=> d!1076937 m!4174479))

(declare-fun m!4174483 () Bool)

(assert (=> d!1076937 m!4174483))

(declare-fun m!4174485 () Bool)

(assert (=> b!3666568 m!4174485))

(assert (=> b!3666366 d!1076937))

(declare-fun d!1076945 () Bool)

(declare-fun res!1488757 () Bool)

(declare-fun e!2270256 () Bool)

(assert (=> d!1076945 (=> (not res!1488757) (not e!2270256))))

(assert (=> d!1076945 (= res!1488757 (not (isEmpty!22943 (originalCharacters!6522 token!511))))))

(assert (=> d!1076945 (= (inv!52146 token!511) e!2270256)))

(declare-fun b!3666578 () Bool)

(declare-fun res!1488758 () Bool)

(assert (=> b!3666578 (=> (not res!1488758) (not e!2270256))))

(declare-fun dynLambda!16907 (Int TokenValue!6038) BalanceConc!23268)

(assert (=> b!3666578 (= res!1488758 (= (originalCharacters!6522 token!511) (list!14354 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (value!185988 token!511)))))))

(declare-fun b!3666579 () Bool)

(assert (=> b!3666579 (= e!2270256 (= (size!29549 token!511) (size!29551 (originalCharacters!6522 token!511))))))

(assert (= (and d!1076945 res!1488757) b!3666578))

(assert (= (and b!3666578 res!1488758) b!3666579))

(declare-fun b_lambda!108849 () Bool)

(assert (=> (not b_lambda!108849) (not b!3666578)))

(declare-fun t!299198 () Bool)

(declare-fun tb!212157 () Bool)

(assert (=> (and b!3666380 (= (toChars!7963 (transformation!5808 (rule!8626 token!511))) (toChars!7963 (transformation!5808 (rule!8626 token!511)))) t!299198) tb!212157))

(declare-fun b!3666587 () Bool)

(declare-fun e!2270262 () Bool)

(declare-fun tp!1116190 () Bool)

(declare-fun inv!52150 (Conc!11827) Bool)

(assert (=> b!3666587 (= e!2270262 (and (inv!52150 (c!633855 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (value!185988 token!511)))) tp!1116190))))

(declare-fun result!258224 () Bool)

(declare-fun inv!52151 (BalanceConc!23268) Bool)

(assert (=> tb!212157 (= result!258224 (and (inv!52151 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (value!185988 token!511))) e!2270262))))

(assert (= tb!212157 b!3666587))

(declare-fun m!4174503 () Bool)

(assert (=> b!3666587 m!4174503))

(declare-fun m!4174505 () Bool)

(assert (=> tb!212157 m!4174505))

(assert (=> b!3666578 t!299198))

(declare-fun b_and!272699 () Bool)

(assert (= b_and!272677 (and (=> t!299198 result!258224) b_and!272699)))

(declare-fun tb!212159 () Bool)

(declare-fun t!299200 () Bool)

(assert (=> (and b!3666341 (= (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toChars!7963 (transformation!5808 (rule!8626 token!511)))) t!299200) tb!212159))

(declare-fun result!258228 () Bool)

(assert (= result!258228 result!258224))

(assert (=> b!3666578 t!299200))

(declare-fun b_and!272701 () Bool)

(assert (= b_and!272681 (and (=> t!299200 result!258228) b_and!272701)))

(declare-fun t!299202 () Bool)

(declare-fun tb!212161 () Bool)

(assert (=> (and b!3666372 (= (toChars!7963 (transformation!5808 rule!403)) (toChars!7963 (transformation!5808 (rule!8626 token!511)))) t!299202) tb!212161))

(declare-fun result!258230 () Bool)

(assert (= result!258230 result!258224))

(assert (=> b!3666578 t!299202))

(declare-fun b_and!272703 () Bool)

(assert (= b_and!272685 (and (=> t!299202 result!258230) b_and!272703)))

(declare-fun tb!212163 () Bool)

(declare-fun t!299204 () Bool)

(assert (=> (and b!3666348 (= (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toChars!7963 (transformation!5808 (rule!8626 token!511)))) t!299204) tb!212163))

(declare-fun result!258232 () Bool)

(assert (= result!258232 result!258224))

(assert (=> b!3666578 t!299204))

(declare-fun b_and!272705 () Bool)

(assert (= b_and!272689 (and (=> t!299204 result!258232) b_and!272705)))

(declare-fun m!4174507 () Bool)

(assert (=> d!1076945 m!4174507))

(declare-fun m!4174509 () Bool)

(assert (=> b!3666578 m!4174509))

(assert (=> b!3666578 m!4174509))

(declare-fun m!4174511 () Bool)

(assert (=> b!3666578 m!4174511))

(declare-fun m!4174513 () Bool)

(assert (=> b!3666579 m!4174513))

(assert (=> start!343414 d!1076945))

(declare-fun bm!265368 () Bool)

(declare-fun call!265373 () Bool)

(assert (=> bm!265368 (= call!265373 (isEmpty!22943 (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))))))

(declare-fun b!3666589 () Bool)

(declare-fun e!2270264 () Bool)

(assert (=> b!3666589 (= e!2270264 (nullable!3677 (regex!5808 lt!1276538)))))

(declare-fun b!3666590 () Bool)

(declare-fun e!2270269 () Bool)

(declare-fun e!2270266 () Bool)

(assert (=> b!3666590 (= e!2270269 e!2270266)))

(declare-fun c!633906 () Bool)

(assert (=> b!3666590 (= c!633906 ((_ is EmptyLang!10567) (regex!5808 lt!1276538)))))

(declare-fun b!3666591 () Bool)

(declare-fun res!1488763 () Bool)

(declare-fun e!2270267 () Bool)

(assert (=> b!3666591 (=> res!1488763 e!2270267)))

(assert (=> b!3666591 (= res!1488763 (not ((_ is ElementMatch!10567) (regex!5808 lt!1276538))))))

(assert (=> b!3666591 (= e!2270266 e!2270267)))

(declare-fun b!3666592 () Bool)

(declare-fun e!2270265 () Bool)

(assert (=> b!3666592 (= e!2270265 (not (= (head!7842 (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))) (c!633854 (regex!5808 lt!1276538)))))))

(declare-fun b!3666593 () Bool)

(declare-fun res!1488765 () Bool)

(assert (=> b!3666593 (=> res!1488765 e!2270265)))

(assert (=> b!3666593 (= res!1488765 (not (isEmpty!22943 (tail!5675 (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))))))))

(declare-fun b!3666594 () Bool)

(declare-fun e!2270270 () Bool)

(assert (=> b!3666594 (= e!2270267 e!2270270)))

(declare-fun res!1488770 () Bool)

(assert (=> b!3666594 (=> (not res!1488770) (not e!2270270))))

(declare-fun lt!1276622 () Bool)

(assert (=> b!3666594 (= res!1488770 (not lt!1276622))))

(declare-fun b!3666595 () Bool)

(assert (=> b!3666595 (= e!2270270 e!2270265)))

(declare-fun res!1488767 () Bool)

(assert (=> b!3666595 (=> res!1488767 e!2270265)))

(assert (=> b!3666595 (= res!1488767 call!265373)))

(declare-fun b!3666596 () Bool)

(declare-fun e!2270268 () Bool)

(assert (=> b!3666596 (= e!2270268 (= (head!7842 (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))) (c!633854 (regex!5808 lt!1276538))))))

(declare-fun b!3666597 () Bool)

(declare-fun res!1488764 () Bool)

(assert (=> b!3666597 (=> (not res!1488764) (not e!2270268))))

(assert (=> b!3666597 (= res!1488764 (isEmpty!22943 (tail!5675 (list!14354 (charsOf!3822 (_1!22402 lt!1276551))))))))

(declare-fun b!3666599 () Bool)

(declare-fun res!1488766 () Bool)

(assert (=> b!3666599 (=> res!1488766 e!2270267)))

(assert (=> b!3666599 (= res!1488766 e!2270268)))

(declare-fun res!1488769 () Bool)

(assert (=> b!3666599 (=> (not res!1488769) (not e!2270268))))

(assert (=> b!3666599 (= res!1488769 lt!1276622)))

(declare-fun b!3666600 () Bool)

(assert (=> b!3666600 (= e!2270269 (= lt!1276622 call!265373))))

(declare-fun b!3666601 () Bool)

(assert (=> b!3666601 (= e!2270266 (not lt!1276622))))

(declare-fun b!3666602 () Bool)

(assert (=> b!3666602 (= e!2270264 (matchR!5136 (derivativeStep!3226 (regex!5808 lt!1276538) (head!7842 (list!14354 (charsOf!3822 (_1!22402 lt!1276551))))) (tail!5675 (list!14354 (charsOf!3822 (_1!22402 lt!1276551))))))))

(declare-fun d!1076959 () Bool)

(assert (=> d!1076959 e!2270269))

(declare-fun c!633907 () Bool)

(assert (=> d!1076959 (= c!633907 ((_ is EmptyExpr!10567) (regex!5808 lt!1276538)))))

(assert (=> d!1076959 (= lt!1276622 e!2270264)))

(declare-fun c!633905 () Bool)

(assert (=> d!1076959 (= c!633905 (isEmpty!22943 (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))))))

(assert (=> d!1076959 (validRegex!4839 (regex!5808 lt!1276538))))

(assert (=> d!1076959 (= (matchR!5136 (regex!5808 lt!1276538) (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))) lt!1276622)))

(declare-fun b!3666598 () Bool)

(declare-fun res!1488768 () Bool)

(assert (=> b!3666598 (=> (not res!1488768) (not e!2270268))))

(assert (=> b!3666598 (= res!1488768 (not call!265373))))

(assert (= (and d!1076959 c!633905) b!3666589))

(assert (= (and d!1076959 (not c!633905)) b!3666602))

(assert (= (and d!1076959 c!633907) b!3666600))

(assert (= (and d!1076959 (not c!633907)) b!3666590))

(assert (= (and b!3666590 c!633906) b!3666601))

(assert (= (and b!3666590 (not c!633906)) b!3666591))

(assert (= (and b!3666591 (not res!1488763)) b!3666599))

(assert (= (and b!3666599 res!1488769) b!3666598))

(assert (= (and b!3666598 res!1488768) b!3666597))

(assert (= (and b!3666597 res!1488764) b!3666596))

(assert (= (and b!3666599 (not res!1488766)) b!3666594))

(assert (= (and b!3666594 res!1488770) b!3666595))

(assert (= (and b!3666595 (not res!1488767)) b!3666593))

(assert (= (and b!3666593 (not res!1488765)) b!3666592))

(assert (= (or b!3666600 b!3666595 b!3666598) bm!265368))

(assert (=> b!3666597 m!4174351))

(declare-fun m!4174519 () Bool)

(assert (=> b!3666597 m!4174519))

(assert (=> b!3666597 m!4174519))

(declare-fun m!4174523 () Bool)

(assert (=> b!3666597 m!4174523))

(assert (=> b!3666596 m!4174351))

(declare-fun m!4174525 () Bool)

(assert (=> b!3666596 m!4174525))

(assert (=> b!3666592 m!4174351))

(assert (=> b!3666592 m!4174525))

(assert (=> b!3666593 m!4174351))

(assert (=> b!3666593 m!4174519))

(assert (=> b!3666593 m!4174519))

(assert (=> b!3666593 m!4174523))

(assert (=> bm!265368 m!4174351))

(declare-fun m!4174527 () Bool)

(assert (=> bm!265368 m!4174527))

(declare-fun m!4174529 () Bool)

(assert (=> b!3666589 m!4174529))

(assert (=> d!1076959 m!4174351))

(assert (=> d!1076959 m!4174527))

(declare-fun m!4174531 () Bool)

(assert (=> d!1076959 m!4174531))

(assert (=> b!3666602 m!4174351))

(assert (=> b!3666602 m!4174525))

(assert (=> b!3666602 m!4174525))

(declare-fun m!4174533 () Bool)

(assert (=> b!3666602 m!4174533))

(assert (=> b!3666602 m!4174351))

(assert (=> b!3666602 m!4174519))

(assert (=> b!3666602 m!4174533))

(assert (=> b!3666602 m!4174519))

(declare-fun m!4174535 () Bool)

(assert (=> b!3666602 m!4174535))

(assert (=> b!3666387 d!1076959))

(declare-fun d!1076963 () Bool)

(declare-fun list!14356 (Conc!11827) List!38791)

(assert (=> d!1076963 (= (list!14354 (charsOf!3822 (_1!22402 lt!1276551))) (list!14356 (c!633855 (charsOf!3822 (_1!22402 lt!1276551)))))))

(declare-fun bs!572985 () Bool)

(assert (= bs!572985 d!1076963))

(declare-fun m!4174539 () Bool)

(assert (=> bs!572985 m!4174539))

(assert (=> b!3666387 d!1076963))

(declare-fun d!1076967 () Bool)

(declare-fun lt!1276631 () BalanceConc!23268)

(assert (=> d!1076967 (= (list!14354 lt!1276631) (originalCharacters!6522 (_1!22402 lt!1276551)))))

(assert (=> d!1076967 (= lt!1276631 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (value!185988 (_1!22402 lt!1276551))))))

(assert (=> d!1076967 (= (charsOf!3822 (_1!22402 lt!1276551)) lt!1276631)))

(declare-fun b_lambda!108851 () Bool)

(assert (=> (not b_lambda!108851) (not d!1076967)))

(declare-fun t!299206 () Bool)

(declare-fun tb!212165 () Bool)

(assert (=> (and b!3666380 (= (toChars!7963 (transformation!5808 (rule!8626 token!511))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299206) tb!212165))

(declare-fun b!3666609 () Bool)

(declare-fun e!2270277 () Bool)

(declare-fun tp!1116191 () Bool)

(assert (=> b!3666609 (= e!2270277 (and (inv!52150 (c!633855 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (value!185988 (_1!22402 lt!1276551))))) tp!1116191))))

(declare-fun result!258234 () Bool)

(assert (=> tb!212165 (= result!258234 (and (inv!52151 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (value!185988 (_1!22402 lt!1276551)))) e!2270277))))

(assert (= tb!212165 b!3666609))

(declare-fun m!4174547 () Bool)

(assert (=> b!3666609 m!4174547))

(declare-fun m!4174549 () Bool)

(assert (=> tb!212165 m!4174549))

(assert (=> d!1076967 t!299206))

(declare-fun b_and!272707 () Bool)

(assert (= b_and!272699 (and (=> t!299206 result!258234) b_and!272707)))

(declare-fun t!299208 () Bool)

(declare-fun tb!212167 () Bool)

(assert (=> (and b!3666341 (= (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299208) tb!212167))

(declare-fun result!258236 () Bool)

(assert (= result!258236 result!258234))

(assert (=> d!1076967 t!299208))

(declare-fun b_and!272709 () Bool)

(assert (= b_and!272701 (and (=> t!299208 result!258236) b_and!272709)))

(declare-fun t!299210 () Bool)

(declare-fun tb!212169 () Bool)

(assert (=> (and b!3666372 (= (toChars!7963 (transformation!5808 rule!403)) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299210) tb!212169))

(declare-fun result!258238 () Bool)

(assert (= result!258238 result!258234))

(assert (=> d!1076967 t!299210))

(declare-fun b_and!272711 () Bool)

(assert (= b_and!272703 (and (=> t!299210 result!258238) b_and!272711)))

(declare-fun tb!212171 () Bool)

(declare-fun t!299212 () Bool)

(assert (=> (and b!3666348 (= (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299212) tb!212171))

(declare-fun result!258240 () Bool)

(assert (= result!258240 result!258234))

(assert (=> d!1076967 t!299212))

(declare-fun b_and!272713 () Bool)

(assert (= b_and!272705 (and (=> t!299212 result!258240) b_and!272713)))

(declare-fun m!4174551 () Bool)

(assert (=> d!1076967 m!4174551))

(declare-fun m!4174553 () Bool)

(assert (=> d!1076967 m!4174553))

(assert (=> b!3666387 d!1076967))

(declare-fun d!1076973 () Bool)

(assert (=> d!1076973 (= (get!12759 lt!1276529) (v!38144 lt!1276529))))

(assert (=> b!3666387 d!1076973))

(declare-fun d!1076975 () Bool)

(assert (=> d!1076975 (= (inv!52143 (tag!6592 (h!44089 rules!3307))) (= (mod (str.len (value!185987 (tag!6592 (h!44089 rules!3307)))) 2) 0))))

(assert (=> b!3666367 d!1076975))

(declare-fun d!1076977 () Bool)

(declare-fun res!1488779 () Bool)

(declare-fun e!2270280 () Bool)

(assert (=> d!1076977 (=> (not res!1488779) (not e!2270280))))

(declare-fun semiInverseModEq!2477 (Int Int) Bool)

(assert (=> d!1076977 (= res!1488779 (semiInverseModEq!2477 (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toValue!8104 (transformation!5808 (h!44089 rules!3307)))))))

(assert (=> d!1076977 (= (inv!52147 (transformation!5808 (h!44089 rules!3307))) e!2270280)))

(declare-fun b!3666612 () Bool)

(declare-fun equivClasses!2376 (Int Int) Bool)

(assert (=> b!3666612 (= e!2270280 (equivClasses!2376 (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toValue!8104 (transformation!5808 (h!44089 rules!3307)))))))

(assert (= (and d!1076977 res!1488779) b!3666612))

(declare-fun m!4174555 () Bool)

(assert (=> d!1076977 m!4174555))

(declare-fun m!4174557 () Bool)

(assert (=> b!3666612 m!4174557))

(assert (=> b!3666367 d!1076977))

(declare-fun d!1076979 () Bool)

(assert (=> d!1076979 (contains!7683 lt!1276573 (head!7842 suffix!1395))))

(declare-fun lt!1276636 () Unit!56098)

(declare-fun choose!21751 (List!38791 List!38791 List!38791 List!38791) Unit!56098)

(assert (=> d!1076979 (= lt!1276636 (choose!21751 lt!1276559 suffix!1395 lt!1276573 lt!1276575))))

(assert (=> d!1076979 (isPrefix!3171 lt!1276573 lt!1276575)))

(assert (=> d!1076979 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!116 lt!1276559 suffix!1395 lt!1276573 lt!1276575) lt!1276636)))

(declare-fun bs!572988 () Bool)

(assert (= bs!572988 d!1076979))

(assert (=> bs!572988 m!4174227))

(assert (=> bs!572988 m!4174227))

(declare-fun m!4174559 () Bool)

(assert (=> bs!572988 m!4174559))

(declare-fun m!4174561 () Bool)

(assert (=> bs!572988 m!4174561))

(assert (=> bs!572988 m!4174273))

(assert (=> b!3666349 d!1076979))

(declare-fun d!1076981 () Bool)

(declare-fun lt!1276639 () Bool)

(declare-fun content!5595 (List!38791) (InoxSet C!21320))

(assert (=> d!1076981 (= lt!1276639 (select (content!5595 lt!1276573) lt!1276569))))

(declare-fun e!2270286 () Bool)

(assert (=> d!1076981 (= lt!1276639 e!2270286)))

(declare-fun res!1488784 () Bool)

(assert (=> d!1076981 (=> (not res!1488784) (not e!2270286))))

(assert (=> d!1076981 (= res!1488784 ((_ is Cons!38667) lt!1276573))))

(assert (=> d!1076981 (= (contains!7683 lt!1276573 lt!1276569) lt!1276639)))

(declare-fun b!3666617 () Bool)

(declare-fun e!2270285 () Bool)

(assert (=> b!3666617 (= e!2270286 e!2270285)))

(declare-fun res!1488785 () Bool)

(assert (=> b!3666617 (=> res!1488785 e!2270285)))

(assert (=> b!3666617 (= res!1488785 (= (h!44087 lt!1276573) lt!1276569))))

(declare-fun b!3666618 () Bool)

(assert (=> b!3666618 (= e!2270285 (contains!7683 (t!299186 lt!1276573) lt!1276569))))

(assert (= (and d!1076981 res!1488784) b!3666617))

(assert (= (and b!3666617 (not res!1488785)) b!3666618))

(declare-fun m!4174563 () Bool)

(assert (=> d!1076981 m!4174563))

(declare-fun m!4174565 () Bool)

(assert (=> d!1076981 m!4174565))

(declare-fun m!4174567 () Bool)

(assert (=> b!3666618 m!4174567))

(assert (=> b!3666349 d!1076981))

(declare-fun d!1076983 () Bool)

(declare-fun lt!1276640 () Bool)

(assert (=> d!1076983 (= lt!1276640 (select (content!5595 (usedCharacters!1020 (regex!5808 anOtherTypeRule!33))) lt!1276569))))

(declare-fun e!2270288 () Bool)

(assert (=> d!1076983 (= lt!1276640 e!2270288)))

(declare-fun res!1488786 () Bool)

(assert (=> d!1076983 (=> (not res!1488786) (not e!2270288))))

(assert (=> d!1076983 (= res!1488786 ((_ is Cons!38667) (usedCharacters!1020 (regex!5808 anOtherTypeRule!33))))))

(assert (=> d!1076983 (= (contains!7683 (usedCharacters!1020 (regex!5808 anOtherTypeRule!33)) lt!1276569) lt!1276640)))

(declare-fun b!3666619 () Bool)

(declare-fun e!2270287 () Bool)

(assert (=> b!3666619 (= e!2270288 e!2270287)))

(declare-fun res!1488787 () Bool)

(assert (=> b!3666619 (=> res!1488787 e!2270287)))

(assert (=> b!3666619 (= res!1488787 (= (h!44087 (usedCharacters!1020 (regex!5808 anOtherTypeRule!33))) lt!1276569))))

(declare-fun b!3666620 () Bool)

(assert (=> b!3666620 (= e!2270287 (contains!7683 (t!299186 (usedCharacters!1020 (regex!5808 anOtherTypeRule!33))) lt!1276569))))

(assert (= (and d!1076983 res!1488786) b!3666619))

(assert (= (and b!3666619 (not res!1488787)) b!3666620))

(assert (=> d!1076983 m!4174325))

(declare-fun m!4174569 () Bool)

(assert (=> d!1076983 m!4174569))

(declare-fun m!4174571 () Bool)

(assert (=> d!1076983 m!4174571))

(declare-fun m!4174573 () Bool)

(assert (=> b!3666620 m!4174573))

(assert (=> b!3666388 d!1076983))

(declare-fun b!3666637 () Bool)

(declare-fun e!2270299 () List!38791)

(declare-fun call!265382 () List!38791)

(assert (=> b!3666637 (= e!2270299 call!265382)))

(declare-fun b!3666638 () Bool)

(declare-fun e!2270300 () List!38791)

(declare-fun call!265385 () List!38791)

(assert (=> b!3666638 (= e!2270300 call!265385)))

(declare-fun b!3666639 () Bool)

(declare-fun c!633917 () Bool)

(assert (=> b!3666639 (= c!633917 ((_ is Star!10567) (regex!5808 anOtherTypeRule!33)))))

(declare-fun e!2270297 () List!38791)

(assert (=> b!3666639 (= e!2270297 e!2270300)))

(declare-fun b!3666640 () Bool)

(declare-fun e!2270298 () List!38791)

(assert (=> b!3666640 (= e!2270298 Nil!38667)))

(declare-fun b!3666641 () Bool)

(assert (=> b!3666641 (= e!2270297 (Cons!38667 (c!633854 (regex!5808 anOtherTypeRule!33)) Nil!38667))))

(declare-fun call!265383 () List!38791)

(declare-fun c!633919 () Bool)

(declare-fun bm!265377 () Bool)

(declare-fun call!265384 () List!38791)

(assert (=> bm!265377 (= call!265382 (++!9624 (ite c!633919 call!265383 call!265384) (ite c!633919 call!265384 call!265383)))))

(declare-fun b!3666643 () Bool)

(assert (=> b!3666643 (= e!2270298 e!2270297)))

(declare-fun c!633918 () Bool)

(assert (=> b!3666643 (= c!633918 ((_ is ElementMatch!10567) (regex!5808 anOtherTypeRule!33)))))

(declare-fun bm!265378 () Bool)

(assert (=> bm!265378 (= call!265385 (usedCharacters!1020 (ite c!633917 (reg!10896 (regex!5808 anOtherTypeRule!33)) (ite c!633919 (regOne!21647 (regex!5808 anOtherTypeRule!33)) (regTwo!21646 (regex!5808 anOtherTypeRule!33))))))))

(declare-fun bm!265379 () Bool)

(assert (=> bm!265379 (= call!265384 (usedCharacters!1020 (ite c!633919 (regTwo!21647 (regex!5808 anOtherTypeRule!33)) (regOne!21646 (regex!5808 anOtherTypeRule!33)))))))

(declare-fun b!3666644 () Bool)

(assert (=> b!3666644 (= e!2270299 call!265382)))

(declare-fun bm!265380 () Bool)

(assert (=> bm!265380 (= call!265383 call!265385)))

(declare-fun b!3666642 () Bool)

(assert (=> b!3666642 (= e!2270300 e!2270299)))

(assert (=> b!3666642 (= c!633919 ((_ is Union!10567) (regex!5808 anOtherTypeRule!33)))))

(declare-fun d!1076985 () Bool)

(declare-fun c!633920 () Bool)

(assert (=> d!1076985 (= c!633920 (or ((_ is EmptyExpr!10567) (regex!5808 anOtherTypeRule!33)) ((_ is EmptyLang!10567) (regex!5808 anOtherTypeRule!33))))))

(assert (=> d!1076985 (= (usedCharacters!1020 (regex!5808 anOtherTypeRule!33)) e!2270298)))

(assert (= (and d!1076985 c!633920) b!3666640))

(assert (= (and d!1076985 (not c!633920)) b!3666643))

(assert (= (and b!3666643 c!633918) b!3666641))

(assert (= (and b!3666643 (not c!633918)) b!3666639))

(assert (= (and b!3666639 c!633917) b!3666638))

(assert (= (and b!3666639 (not c!633917)) b!3666642))

(assert (= (and b!3666642 c!633919) b!3666644))

(assert (= (and b!3666642 (not c!633919)) b!3666637))

(assert (= (or b!3666644 b!3666637) bm!265380))

(assert (= (or b!3666644 b!3666637) bm!265379))

(assert (= (or b!3666644 b!3666637) bm!265377))

(assert (= (or b!3666638 bm!265380) bm!265378))

(declare-fun m!4174575 () Bool)

(assert (=> bm!265377 m!4174575))

(declare-fun m!4174577 () Bool)

(assert (=> bm!265378 m!4174577))

(declare-fun m!4174579 () Bool)

(assert (=> bm!265379 m!4174579))

(assert (=> b!3666388 d!1076985))

(declare-fun d!1076987 () Bool)

(declare-fun c!633925 () Bool)

(assert (=> d!1076987 (= c!633925 ((_ is IntegerValue!18114) (value!185988 token!511)))))

(declare-fun e!2270309 () Bool)

(assert (=> d!1076987 (= (inv!21 (value!185988 token!511)) e!2270309)))

(declare-fun b!3666655 () Bool)

(declare-fun res!1488790 () Bool)

(declare-fun e!2270307 () Bool)

(assert (=> b!3666655 (=> res!1488790 e!2270307)))

(assert (=> b!3666655 (= res!1488790 (not ((_ is IntegerValue!18116) (value!185988 token!511))))))

(declare-fun e!2270308 () Bool)

(assert (=> b!3666655 (= e!2270308 e!2270307)))

(declare-fun b!3666656 () Bool)

(declare-fun inv!15 (TokenValue!6038) Bool)

(assert (=> b!3666656 (= e!2270307 (inv!15 (value!185988 token!511)))))

(declare-fun b!3666657 () Bool)

(assert (=> b!3666657 (= e!2270309 e!2270308)))

(declare-fun c!633926 () Bool)

(assert (=> b!3666657 (= c!633926 ((_ is IntegerValue!18115) (value!185988 token!511)))))

(declare-fun b!3666658 () Bool)

(declare-fun inv!17 (TokenValue!6038) Bool)

(assert (=> b!3666658 (= e!2270308 (inv!17 (value!185988 token!511)))))

(declare-fun b!3666659 () Bool)

(declare-fun inv!16 (TokenValue!6038) Bool)

(assert (=> b!3666659 (= e!2270309 (inv!16 (value!185988 token!511)))))

(assert (= (and d!1076987 c!633925) b!3666659))

(assert (= (and d!1076987 (not c!633925)) b!3666657))

(assert (= (and b!3666657 c!633926) b!3666658))

(assert (= (and b!3666657 (not c!633926)) b!3666655))

(assert (= (and b!3666655 (not res!1488790)) b!3666656))

(declare-fun m!4174581 () Bool)

(assert (=> b!3666656 m!4174581))

(declare-fun m!4174583 () Bool)

(assert (=> b!3666658 m!4174583))

(declare-fun m!4174585 () Bool)

(assert (=> b!3666659 m!4174585))

(assert (=> b!3666368 d!1076987))

(declare-fun d!1076989 () Bool)

(assert (=> d!1076989 (= (isEmpty!22942 rules!3307) ((_ is Nil!38669) rules!3307))))

(assert (=> b!3666351 d!1076989))

(declare-fun d!1076991 () Bool)

(assert (=> d!1076991 (= (get!12758 lt!1276527) (v!38143 lt!1276527))))

(assert (=> b!3666390 d!1076991))

(declare-fun d!1076993 () Bool)

(declare-fun lt!1276641 () Bool)

(assert (=> d!1076993 (= lt!1276641 (select (content!5593 rules!3307) (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun e!2270311 () Bool)

(assert (=> d!1076993 (= lt!1276641 e!2270311)))

(declare-fun res!1488791 () Bool)

(assert (=> d!1076993 (=> (not res!1488791) (not e!2270311))))

(assert (=> d!1076993 (= res!1488791 ((_ is Cons!38669) rules!3307))))

(assert (=> d!1076993 (= (contains!7684 rules!3307 (rule!8626 (_1!22402 lt!1276551))) lt!1276641)))

(declare-fun b!3666660 () Bool)

(declare-fun e!2270310 () Bool)

(assert (=> b!3666660 (= e!2270311 e!2270310)))

(declare-fun res!1488792 () Bool)

(assert (=> b!3666660 (=> res!1488792 e!2270310)))

(assert (=> b!3666660 (= res!1488792 (= (h!44089 rules!3307) (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun b!3666661 () Bool)

(assert (=> b!3666661 (= e!2270310 (contains!7684 (t!299188 rules!3307) (rule!8626 (_1!22402 lt!1276551))))))

(assert (= (and d!1076993 res!1488791) b!3666660))

(assert (= (and b!3666660 (not res!1488792)) b!3666661))

(assert (=> d!1076993 m!4174479))

(declare-fun m!4174587 () Bool)

(assert (=> d!1076993 m!4174587))

(declare-fun m!4174589 () Bool)

(assert (=> b!3666661 m!4174589))

(assert (=> b!3666352 d!1076993))

(declare-fun d!1076995 () Bool)

(assert (=> d!1076995 (= (isEmpty!22943 suffix!1395) ((_ is Nil!38667) suffix!1395))))

(assert (=> b!3666371 d!1076995))

(declare-fun b!3666662 () Bool)

(declare-fun e!2270314 () List!38791)

(declare-fun call!265386 () List!38791)

(assert (=> b!3666662 (= e!2270314 call!265386)))

(declare-fun b!3666663 () Bool)

(declare-fun e!2270315 () List!38791)

(declare-fun call!265389 () List!38791)

(assert (=> b!3666663 (= e!2270315 call!265389)))

(declare-fun b!3666664 () Bool)

(declare-fun c!633927 () Bool)

(assert (=> b!3666664 (= c!633927 ((_ is Star!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun e!2270312 () List!38791)

(assert (=> b!3666664 (= e!2270312 e!2270315)))

(declare-fun b!3666665 () Bool)

(declare-fun e!2270313 () List!38791)

(assert (=> b!3666665 (= e!2270313 Nil!38667)))

(declare-fun b!3666666 () Bool)

(assert (=> b!3666666 (= e!2270312 (Cons!38667 (c!633854 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) Nil!38667))))

(declare-fun bm!265381 () Bool)

(declare-fun call!265387 () List!38791)

(declare-fun c!633929 () Bool)

(declare-fun call!265388 () List!38791)

(assert (=> bm!265381 (= call!265386 (++!9624 (ite c!633929 call!265387 call!265388) (ite c!633929 call!265388 call!265387)))))

(declare-fun b!3666668 () Bool)

(assert (=> b!3666668 (= e!2270313 e!2270312)))

(declare-fun c!633928 () Bool)

(assert (=> b!3666668 (= c!633928 ((_ is ElementMatch!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun bm!265382 () Bool)

(assert (=> bm!265382 (= call!265389 (usedCharacters!1020 (ite c!633927 (reg!10896 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) (ite c!633929 (regOne!21647 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) (regTwo!21646 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))))

(declare-fun bm!265383 () Bool)

(assert (=> bm!265383 (= call!265388 (usedCharacters!1020 (ite c!633929 (regTwo!21647 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) (regOne!21646 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))))

(declare-fun b!3666669 () Bool)

(assert (=> b!3666669 (= e!2270314 call!265386)))

(declare-fun bm!265384 () Bool)

(assert (=> bm!265384 (= call!265387 call!265389)))

(declare-fun b!3666667 () Bool)

(assert (=> b!3666667 (= e!2270315 e!2270314)))

(assert (=> b!3666667 (= c!633929 ((_ is Union!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun d!1076997 () Bool)

(declare-fun c!633930 () Bool)

(assert (=> d!1076997 (= c!633930 (or ((_ is EmptyExpr!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) ((_ is EmptyLang!10567) (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))))

(assert (=> d!1076997 (= (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) e!2270313)))

(assert (= (and d!1076997 c!633930) b!3666665))

(assert (= (and d!1076997 (not c!633930)) b!3666668))

(assert (= (and b!3666668 c!633928) b!3666666))

(assert (= (and b!3666668 (not c!633928)) b!3666664))

(assert (= (and b!3666664 c!633927) b!3666663))

(assert (= (and b!3666664 (not c!633927)) b!3666667))

(assert (= (and b!3666667 c!633929) b!3666669))

(assert (= (and b!3666667 (not c!633929)) b!3666662))

(assert (= (or b!3666669 b!3666662) bm!265384))

(assert (= (or b!3666669 b!3666662) bm!265383))

(assert (= (or b!3666669 b!3666662) bm!265381))

(assert (= (or b!3666663 bm!265384) bm!265382))

(declare-fun m!4174591 () Bool)

(assert (=> bm!265381 m!4174591))

(declare-fun m!4174593 () Bool)

(assert (=> bm!265382 m!4174593))

(declare-fun m!4174595 () Bool)

(assert (=> bm!265383 m!4174595))

(assert (=> bm!265344 d!1076997))

(declare-fun d!1076999 () Bool)

(assert (=> d!1076999 (= (list!14354 lt!1276552) (list!14356 (c!633855 lt!1276552)))))

(declare-fun bs!572989 () Bool)

(assert (= bs!572989 d!1076999))

(declare-fun m!4174597 () Bool)

(assert (=> bs!572989 m!4174597))

(assert (=> b!3666373 d!1076999))

(declare-fun d!1077001 () Bool)

(assert (=> d!1077001 (isPrefix!3171 lt!1276559 (++!9624 lt!1276559 suffix!1395))))

(declare-fun lt!1276644 () Unit!56098)

(declare-fun choose!21753 (List!38791 List!38791) Unit!56098)

(assert (=> d!1077001 (= lt!1276644 (choose!21753 lt!1276559 suffix!1395))))

(assert (=> d!1077001 (= (lemmaConcatTwoListThenFirstIsPrefix!2090 lt!1276559 suffix!1395) lt!1276644)))

(declare-fun bs!572990 () Bool)

(assert (= bs!572990 d!1077001))

(assert (=> bs!572990 m!4174287))

(assert (=> bs!572990 m!4174287))

(declare-fun m!4174599 () Bool)

(assert (=> bs!572990 m!4174599))

(declare-fun m!4174601 () Bool)

(assert (=> bs!572990 m!4174601))

(assert (=> b!3666373 d!1077001))

(assert (=> b!3666373 d!1076967))

(declare-fun b!3666688 () Bool)

(declare-fun e!2270323 () Bool)

(declare-fun lt!1276655 () Option!8244)

(assert (=> b!3666688 (= e!2270323 (contains!7684 rules!3307 (rule!8626 (_1!22402 (get!12758 lt!1276655)))))))

(declare-fun b!3666689 () Bool)

(declare-fun e!2270324 () Option!8244)

(declare-fun lt!1276657 () Option!8244)

(declare-fun lt!1276656 () Option!8244)

(assert (=> b!3666689 (= e!2270324 (ite (and ((_ is None!8243) lt!1276657) ((_ is None!8243) lt!1276656)) None!8243 (ite ((_ is None!8243) lt!1276656) lt!1276657 (ite ((_ is None!8243) lt!1276657) lt!1276656 (ite (>= (size!29549 (_1!22402 (v!38143 lt!1276657))) (size!29549 (_1!22402 (v!38143 lt!1276656)))) lt!1276657 lt!1276656)))))))

(declare-fun call!265392 () Option!8244)

(assert (=> b!3666689 (= lt!1276657 call!265392)))

(assert (=> b!3666689 (= lt!1276656 (maxPrefix!2931 thiss!23823 (t!299188 rules!3307) lt!1276575))))

(declare-fun b!3666690 () Bool)

(declare-fun e!2270322 () Bool)

(assert (=> b!3666690 (= e!2270322 e!2270323)))

(declare-fun res!1488809 () Bool)

(assert (=> b!3666690 (=> (not res!1488809) (not e!2270323))))

(assert (=> b!3666690 (= res!1488809 (isDefined!6476 lt!1276655))))

(declare-fun b!3666691 () Bool)

(declare-fun res!1488812 () Bool)

(assert (=> b!3666691 (=> (not res!1488812) (not e!2270323))))

(assert (=> b!3666691 (= res!1488812 (= (value!185988 (_1!22402 (get!12758 lt!1276655))) (apply!9310 (transformation!5808 (rule!8626 (_1!22402 (get!12758 lt!1276655)))) (seqFromList!4357 (originalCharacters!6522 (_1!22402 (get!12758 lt!1276655)))))))))

(declare-fun b!3666693 () Bool)

(declare-fun res!1488808 () Bool)

(assert (=> b!3666693 (=> (not res!1488808) (not e!2270323))))

(assert (=> b!3666693 (= res!1488808 (< (size!29551 (_2!22402 (get!12758 lt!1276655))) (size!29551 lt!1276575)))))

(declare-fun bm!265387 () Bool)

(assert (=> bm!265387 (= call!265392 (maxPrefixOneRule!2069 thiss!23823 (h!44089 rules!3307) lt!1276575))))

(declare-fun b!3666694 () Bool)

(declare-fun res!1488807 () Bool)

(assert (=> b!3666694 (=> (not res!1488807) (not e!2270323))))

(assert (=> b!3666694 (= res!1488807 (matchR!5136 (regex!5808 (rule!8626 (_1!22402 (get!12758 lt!1276655)))) (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276655))))))))

(declare-fun b!3666695 () Bool)

(assert (=> b!3666695 (= e!2270324 call!265392)))

(declare-fun b!3666696 () Bool)

(declare-fun res!1488811 () Bool)

(assert (=> b!3666696 (=> (not res!1488811) (not e!2270323))))

(assert (=> b!3666696 (= res!1488811 (= (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276655)))) (originalCharacters!6522 (_1!22402 (get!12758 lt!1276655)))))))

(declare-fun d!1077003 () Bool)

(assert (=> d!1077003 e!2270322))

(declare-fun res!1488810 () Bool)

(assert (=> d!1077003 (=> res!1488810 e!2270322)))

(declare-fun isEmpty!22945 (Option!8244) Bool)

(assert (=> d!1077003 (= res!1488810 (isEmpty!22945 lt!1276655))))

(assert (=> d!1077003 (= lt!1276655 e!2270324)))

(declare-fun c!633933 () Bool)

(assert (=> d!1077003 (= c!633933 (and ((_ is Cons!38669) rules!3307) ((_ is Nil!38669) (t!299188 rules!3307))))))

(declare-fun lt!1276658 () Unit!56098)

(declare-fun lt!1276659 () Unit!56098)

(assert (=> d!1077003 (= lt!1276658 lt!1276659)))

(assert (=> d!1077003 (isPrefix!3171 lt!1276575 lt!1276575)))

(declare-fun lemmaIsPrefixRefl!1999 (List!38791 List!38791) Unit!56098)

(assert (=> d!1077003 (= lt!1276659 (lemmaIsPrefixRefl!1999 lt!1276575 lt!1276575))))

(declare-fun rulesValidInductive!2062 (LexerInterface!5397 List!38793) Bool)

(assert (=> d!1077003 (rulesValidInductive!2062 thiss!23823 rules!3307)))

(assert (=> d!1077003 (= (maxPrefix!2931 thiss!23823 rules!3307 lt!1276575) lt!1276655)))

(declare-fun b!3666692 () Bool)

(declare-fun res!1488813 () Bool)

(assert (=> b!3666692 (=> (not res!1488813) (not e!2270323))))

(assert (=> b!3666692 (= res!1488813 (= (++!9624 (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276655)))) (_2!22402 (get!12758 lt!1276655))) lt!1276575))))

(assert (= (and d!1077003 c!633933) b!3666695))

(assert (= (and d!1077003 (not c!633933)) b!3666689))

(assert (= (or b!3666695 b!3666689) bm!265387))

(assert (= (and d!1077003 (not res!1488810)) b!3666690))

(assert (= (and b!3666690 res!1488809) b!3666696))

(assert (= (and b!3666696 res!1488811) b!3666693))

(assert (= (and b!3666693 res!1488808) b!3666692))

(assert (= (and b!3666692 res!1488813) b!3666691))

(assert (= (and b!3666691 res!1488812) b!3666694))

(assert (= (and b!3666694 res!1488807) b!3666688))

(declare-fun m!4174603 () Bool)

(assert (=> d!1077003 m!4174603))

(declare-fun m!4174605 () Bool)

(assert (=> d!1077003 m!4174605))

(declare-fun m!4174607 () Bool)

(assert (=> d!1077003 m!4174607))

(declare-fun m!4174609 () Bool)

(assert (=> d!1077003 m!4174609))

(declare-fun m!4174611 () Bool)

(assert (=> b!3666694 m!4174611))

(declare-fun m!4174613 () Bool)

(assert (=> b!3666694 m!4174613))

(assert (=> b!3666694 m!4174613))

(declare-fun m!4174615 () Bool)

(assert (=> b!3666694 m!4174615))

(assert (=> b!3666694 m!4174615))

(declare-fun m!4174617 () Bool)

(assert (=> b!3666694 m!4174617))

(assert (=> b!3666692 m!4174611))

(assert (=> b!3666692 m!4174613))

(assert (=> b!3666692 m!4174613))

(assert (=> b!3666692 m!4174615))

(assert (=> b!3666692 m!4174615))

(declare-fun m!4174619 () Bool)

(assert (=> b!3666692 m!4174619))

(declare-fun m!4174621 () Bool)

(assert (=> b!3666689 m!4174621))

(declare-fun m!4174623 () Bool)

(assert (=> bm!265387 m!4174623))

(declare-fun m!4174625 () Bool)

(assert (=> b!3666690 m!4174625))

(assert (=> b!3666693 m!4174611))

(declare-fun m!4174627 () Bool)

(assert (=> b!3666693 m!4174627))

(declare-fun m!4174629 () Bool)

(assert (=> b!3666693 m!4174629))

(assert (=> b!3666688 m!4174611))

(declare-fun m!4174631 () Bool)

(assert (=> b!3666688 m!4174631))

(assert (=> b!3666696 m!4174611))

(assert (=> b!3666696 m!4174613))

(assert (=> b!3666696 m!4174613))

(assert (=> b!3666696 m!4174615))

(assert (=> b!3666691 m!4174611))

(declare-fun m!4174633 () Bool)

(assert (=> b!3666691 m!4174633))

(assert (=> b!3666691 m!4174633))

(declare-fun m!4174635 () Bool)

(assert (=> b!3666691 m!4174635))

(assert (=> b!3666373 d!1077003))

(declare-fun d!1077005 () Bool)

(assert (=> d!1077005 (= (get!12758 lt!1276558) (v!38143 lt!1276558))))

(assert (=> b!3666373 d!1077005))

(declare-fun b!3666707 () Bool)

(declare-fun res!1488819 () Bool)

(declare-fun e!2270330 () Bool)

(assert (=> b!3666707 (=> (not res!1488819) (not e!2270330))))

(declare-fun lt!1276662 () List!38791)

(assert (=> b!3666707 (= res!1488819 (= (size!29551 lt!1276662) (+ (size!29551 lt!1276573) (size!29551 (_2!22402 lt!1276551)))))))

(declare-fun b!3666708 () Bool)

(assert (=> b!3666708 (= e!2270330 (or (not (= (_2!22402 lt!1276551) Nil!38667)) (= lt!1276662 lt!1276573)))))

(declare-fun b!3666706 () Bool)

(declare-fun e!2270329 () List!38791)

(assert (=> b!3666706 (= e!2270329 (Cons!38667 (h!44087 lt!1276573) (++!9624 (t!299186 lt!1276573) (_2!22402 lt!1276551))))))

(declare-fun b!3666705 () Bool)

(assert (=> b!3666705 (= e!2270329 (_2!22402 lt!1276551))))

(declare-fun d!1077007 () Bool)

(assert (=> d!1077007 e!2270330))

(declare-fun res!1488818 () Bool)

(assert (=> d!1077007 (=> (not res!1488818) (not e!2270330))))

(assert (=> d!1077007 (= res!1488818 (= (content!5595 lt!1276662) ((_ map or) (content!5595 lt!1276573) (content!5595 (_2!22402 lt!1276551)))))))

(assert (=> d!1077007 (= lt!1276662 e!2270329)))

(declare-fun c!633936 () Bool)

(assert (=> d!1077007 (= c!633936 ((_ is Nil!38667) lt!1276573))))

(assert (=> d!1077007 (= (++!9624 lt!1276573 (_2!22402 lt!1276551)) lt!1276662)))

(assert (= (and d!1077007 c!633936) b!3666705))

(assert (= (and d!1077007 (not c!633936)) b!3666706))

(assert (= (and d!1077007 res!1488818) b!3666707))

(assert (= (and b!3666707 res!1488819) b!3666708))

(declare-fun m!4174637 () Bool)

(assert (=> b!3666707 m!4174637))

(assert (=> b!3666707 m!4174317))

(declare-fun m!4174639 () Bool)

(assert (=> b!3666707 m!4174639))

(declare-fun m!4174641 () Bool)

(assert (=> b!3666706 m!4174641))

(declare-fun m!4174643 () Bool)

(assert (=> d!1077007 m!4174643))

(assert (=> d!1077007 m!4174563))

(declare-fun m!4174645 () Bool)

(assert (=> d!1077007 m!4174645))

(assert (=> b!3666373 d!1077007))

(declare-fun d!1077009 () Bool)

(assert (=> d!1077009 (isPrefix!3171 lt!1276573 (++!9624 lt!1276573 (_2!22402 lt!1276551)))))

(declare-fun lt!1276663 () Unit!56098)

(assert (=> d!1077009 (= lt!1276663 (choose!21753 lt!1276573 (_2!22402 lt!1276551)))))

(assert (=> d!1077009 (= (lemmaConcatTwoListThenFirstIsPrefix!2090 lt!1276573 (_2!22402 lt!1276551)) lt!1276663)))

(declare-fun bs!572991 () Bool)

(assert (= bs!572991 d!1077009))

(assert (=> bs!572991 m!4174281))

(assert (=> bs!572991 m!4174281))

(assert (=> bs!572991 m!4174283))

(declare-fun m!4174647 () Bool)

(assert (=> bs!572991 m!4174647))

(assert (=> b!3666373 d!1077009))

(declare-fun e!2270336 () Bool)

(declare-fun b!3666718 () Bool)

(declare-fun lt!1276704 () Token!10982)

(assert (=> b!3666718 (= e!2270336 (= (rule!8626 lt!1276704) (get!12759 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 lt!1276704))))))))

(declare-fun d!1077011 () Bool)

(assert (=> d!1077011 (isDefined!6476 (maxPrefix!2931 thiss!23823 rules!3307 (++!9624 lt!1276559 suffix!1395)))))

(declare-fun lt!1276711 () Unit!56098)

(declare-fun e!2270335 () Unit!56098)

(assert (=> d!1077011 (= lt!1276711 e!2270335)))

(declare-fun c!633939 () Bool)

(assert (=> d!1077011 (= c!633939 (isEmpty!22945 (maxPrefix!2931 thiss!23823 rules!3307 (++!9624 lt!1276559 suffix!1395))))))

(declare-fun lt!1276702 () Unit!56098)

(declare-fun lt!1276699 () Unit!56098)

(assert (=> d!1077011 (= lt!1276702 lt!1276699)))

(assert (=> d!1077011 e!2270336))

(declare-fun res!1488824 () Bool)

(assert (=> d!1077011 (=> (not res!1488824) (not e!2270336))))

(assert (=> d!1077011 (= res!1488824 (isDefined!6477 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 lt!1276704)))))))

(assert (=> d!1077011 (= lt!1276699 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1412 thiss!23823 rules!3307 lt!1276559 lt!1276704))))

(declare-fun lt!1276707 () Unit!56098)

(declare-fun lt!1276713 () Unit!56098)

(assert (=> d!1077011 (= lt!1276707 lt!1276713)))

(declare-fun lt!1276703 () List!38791)

(assert (=> d!1077011 (isPrefix!3171 lt!1276703 (++!9624 lt!1276559 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!527 (List!38791 List!38791 List!38791) Unit!56098)

(assert (=> d!1077011 (= lt!1276713 (lemmaPrefixStaysPrefixWhenAddingToSuffix!527 lt!1276703 lt!1276559 suffix!1395))))

(assert (=> d!1077011 (= lt!1276703 (list!14354 (charsOf!3822 lt!1276704)))))

(declare-fun lt!1276710 () Unit!56098)

(declare-fun lt!1276705 () Unit!56098)

(assert (=> d!1077011 (= lt!1276710 lt!1276705)))

(declare-fun lt!1276701 () List!38791)

(declare-fun lt!1276708 () List!38791)

(assert (=> d!1077011 (isPrefix!3171 lt!1276701 (++!9624 lt!1276701 lt!1276708))))

(assert (=> d!1077011 (= lt!1276705 (lemmaConcatTwoListThenFirstIsPrefix!2090 lt!1276701 lt!1276708))))

(assert (=> d!1077011 (= lt!1276708 (_2!22402 (get!12758 (maxPrefix!2931 thiss!23823 rules!3307 lt!1276559))))))

(assert (=> d!1077011 (= lt!1276701 (list!14354 (charsOf!3822 lt!1276704)))))

(declare-datatypes ((List!38795 0))(
  ( (Nil!38671) (Cons!38671 (h!44091 Token!10982) (t!299310 List!38795)) )
))
(declare-fun head!7843 (List!38795) Token!10982)

(declare-datatypes ((IArray!23661 0))(
  ( (IArray!23662 (innerList!11888 List!38795)) )
))
(declare-datatypes ((Conc!11828 0))(
  ( (Node!11828 (left!30182 Conc!11828) (right!30512 Conc!11828) (csize!23886 Int) (cheight!12039 Int)) (Leaf!18343 (xs!15030 IArray!23661) (csize!23887 Int)) (Empty!11828) )
))
(declare-datatypes ((BalanceConc!23270 0))(
  ( (BalanceConc!23271 (c!634022 Conc!11828)) )
))
(declare-fun list!14357 (BalanceConc!23270) List!38795)

(declare-datatypes ((tuple2!38540 0))(
  ( (tuple2!38541 (_1!22404 BalanceConc!23270) (_2!22404 BalanceConc!23268)) )
))
(declare-fun lex!2559 (LexerInterface!5397 List!38793 BalanceConc!23268) tuple2!38540)

(assert (=> d!1077011 (= lt!1276704 (head!7843 (list!14357 (_1!22404 (lex!2559 thiss!23823 rules!3307 (seqFromList!4357 lt!1276559))))))))

(assert (=> d!1077011 (not (isEmpty!22942 rules!3307))))

(assert (=> d!1077011 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1075 thiss!23823 rules!3307 lt!1276559 suffix!1395) lt!1276711)))

(declare-fun b!3666720 () Bool)

(declare-fun Unit!56115 () Unit!56098)

(assert (=> b!3666720 (= e!2270335 Unit!56115)))

(declare-fun b!3666717 () Bool)

(declare-fun res!1488825 () Bool)

(assert (=> b!3666717 (=> (not res!1488825) (not e!2270336))))

(assert (=> b!3666717 (= res!1488825 (matchR!5136 (regex!5808 (get!12759 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 lt!1276704))))) (list!14354 (charsOf!3822 lt!1276704))))))

(declare-fun b!3666719 () Bool)

(declare-fun Unit!56116 () Unit!56098)

(assert (=> b!3666719 (= e!2270335 Unit!56116)))

(declare-fun lt!1276714 () List!38791)

(assert (=> b!3666719 (= lt!1276714 (++!9624 lt!1276559 suffix!1395))))

(declare-fun lt!1276712 () Unit!56098)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!563 (LexerInterface!5397 Rule!11416 List!38793 List!38791) Unit!56098)

(assert (=> b!3666719 (= lt!1276712 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!563 thiss!23823 (rule!8626 lt!1276704) rules!3307 lt!1276714))))

(assert (=> b!3666719 (isEmpty!22945 (maxPrefixOneRule!2069 thiss!23823 (rule!8626 lt!1276704) lt!1276714))))

(declare-fun lt!1276700 () Unit!56098)

(assert (=> b!3666719 (= lt!1276700 lt!1276712)))

(declare-fun lt!1276709 () List!38791)

(assert (=> b!3666719 (= lt!1276709 (list!14354 (charsOf!3822 lt!1276704)))))

(declare-fun lt!1276706 () Unit!56098)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!551 (LexerInterface!5397 Rule!11416 List!38791 List!38791) Unit!56098)

(assert (=> b!3666719 (= lt!1276706 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!551 thiss!23823 (rule!8626 lt!1276704) lt!1276709 (++!9624 lt!1276559 suffix!1395)))))

(assert (=> b!3666719 (not (matchR!5136 (regex!5808 (rule!8626 lt!1276704)) lt!1276709))))

(declare-fun lt!1276698 () Unit!56098)

(assert (=> b!3666719 (= lt!1276698 lt!1276706)))

(assert (=> b!3666719 false))

(assert (= (and d!1077011 res!1488824) b!3666717))

(assert (= (and b!3666717 res!1488825) b!3666718))

(assert (= (and d!1077011 c!633939) b!3666719))

(assert (= (and d!1077011 (not c!633939)) b!3666720))

(declare-fun m!4174649 () Bool)

(assert (=> b!3666718 m!4174649))

(assert (=> b!3666718 m!4174649))

(declare-fun m!4174651 () Bool)

(assert (=> b!3666718 m!4174651))

(assert (=> d!1077011 m!4174287))

(declare-fun m!4174653 () Bool)

(assert (=> d!1077011 m!4174653))

(declare-fun m!4174655 () Bool)

(assert (=> d!1077011 m!4174655))

(declare-fun m!4174657 () Bool)

(assert (=> d!1077011 m!4174657))

(declare-fun m!4174659 () Bool)

(assert (=> d!1077011 m!4174659))

(declare-fun m!4174661 () Bool)

(assert (=> d!1077011 m!4174661))

(declare-fun m!4174663 () Bool)

(assert (=> d!1077011 m!4174663))

(assert (=> d!1077011 m!4174649))

(declare-fun m!4174665 () Bool)

(assert (=> d!1077011 m!4174665))

(declare-fun m!4174667 () Bool)

(assert (=> d!1077011 m!4174667))

(assert (=> d!1077011 m!4174655))

(declare-fun m!4174669 () Bool)

(assert (=> d!1077011 m!4174669))

(assert (=> d!1077011 m!4174657))

(declare-fun m!4174671 () Bool)

(assert (=> d!1077011 m!4174671))

(declare-fun m!4174673 () Bool)

(assert (=> d!1077011 m!4174673))

(assert (=> d!1077011 m!4174649))

(declare-fun m!4174675 () Bool)

(assert (=> d!1077011 m!4174675))

(assert (=> d!1077011 m!4174257))

(declare-fun m!4174677 () Bool)

(assert (=> d!1077011 m!4174677))

(assert (=> d!1077011 m!4174287))

(assert (=> d!1077011 m!4174661))

(assert (=> d!1077011 m!4174301))

(declare-fun m!4174679 () Bool)

(assert (=> d!1077011 m!4174679))

(assert (=> d!1077011 m!4174301))

(assert (=> d!1077011 m!4174667))

(declare-fun m!4174681 () Bool)

(assert (=> d!1077011 m!4174681))

(declare-fun m!4174683 () Bool)

(assert (=> d!1077011 m!4174683))

(declare-fun m!4174685 () Bool)

(assert (=> d!1077011 m!4174685))

(assert (=> d!1077011 m!4174287))

(assert (=> d!1077011 m!4174657))

(assert (=> d!1077011 m!4174683))

(assert (=> b!3666717 m!4174661))

(assert (=> b!3666717 m!4174663))

(assert (=> b!3666717 m!4174649))

(assert (=> b!3666717 m!4174649))

(assert (=> b!3666717 m!4174651))

(assert (=> b!3666717 m!4174663))

(declare-fun m!4174687 () Bool)

(assert (=> b!3666717 m!4174687))

(assert (=> b!3666717 m!4174661))

(declare-fun m!4174689 () Bool)

(assert (=> b!3666719 m!4174689))

(assert (=> b!3666719 m!4174661))

(assert (=> b!3666719 m!4174663))

(declare-fun m!4174691 () Bool)

(assert (=> b!3666719 m!4174691))

(declare-fun m!4174693 () Bool)

(assert (=> b!3666719 m!4174693))

(declare-fun m!4174695 () Bool)

(assert (=> b!3666719 m!4174695))

(assert (=> b!3666719 m!4174287))

(declare-fun m!4174697 () Bool)

(assert (=> b!3666719 m!4174697))

(assert (=> b!3666719 m!4174661))

(assert (=> b!3666719 m!4174287))

(assert (=> b!3666719 m!4174691))

(assert (=> b!3666373 d!1077011))

(declare-fun b!3666731 () Bool)

(declare-fun e!2270345 () Bool)

(assert (=> b!3666731 (= e!2270345 (isPrefix!3171 (tail!5675 lt!1276573) (tail!5675 (++!9624 lt!1276573 (_2!22402 lt!1276551)))))))

(declare-fun b!3666729 () Bool)

(declare-fun e!2270344 () Bool)

(assert (=> b!3666729 (= e!2270344 e!2270345)))

(declare-fun res!1488837 () Bool)

(assert (=> b!3666729 (=> (not res!1488837) (not e!2270345))))

(assert (=> b!3666729 (= res!1488837 (not ((_ is Nil!38667) (++!9624 lt!1276573 (_2!22402 lt!1276551)))))))

(declare-fun d!1077013 () Bool)

(declare-fun e!2270343 () Bool)

(assert (=> d!1077013 e!2270343))

(declare-fun res!1488834 () Bool)

(assert (=> d!1077013 (=> res!1488834 e!2270343)))

(declare-fun lt!1276717 () Bool)

(assert (=> d!1077013 (= res!1488834 (not lt!1276717))))

(assert (=> d!1077013 (= lt!1276717 e!2270344)))

(declare-fun res!1488835 () Bool)

(assert (=> d!1077013 (=> res!1488835 e!2270344)))

(assert (=> d!1077013 (= res!1488835 ((_ is Nil!38667) lt!1276573))))

(assert (=> d!1077013 (= (isPrefix!3171 lt!1276573 (++!9624 lt!1276573 (_2!22402 lt!1276551))) lt!1276717)))

(declare-fun b!3666732 () Bool)

(assert (=> b!3666732 (= e!2270343 (>= (size!29551 (++!9624 lt!1276573 (_2!22402 lt!1276551))) (size!29551 lt!1276573)))))

(declare-fun b!3666730 () Bool)

(declare-fun res!1488836 () Bool)

(assert (=> b!3666730 (=> (not res!1488836) (not e!2270345))))

(assert (=> b!3666730 (= res!1488836 (= (head!7842 lt!1276573) (head!7842 (++!9624 lt!1276573 (_2!22402 lt!1276551)))))))

(assert (= (and d!1077013 (not res!1488835)) b!3666729))

(assert (= (and b!3666729 res!1488837) b!3666730))

(assert (= (and b!3666730 res!1488836) b!3666731))

(assert (= (and d!1077013 (not res!1488834)) b!3666732))

(assert (=> b!3666731 m!4174391))

(assert (=> b!3666731 m!4174281))

(declare-fun m!4174699 () Bool)

(assert (=> b!3666731 m!4174699))

(assert (=> b!3666731 m!4174391))

(assert (=> b!3666731 m!4174699))

(declare-fun m!4174701 () Bool)

(assert (=> b!3666731 m!4174701))

(assert (=> b!3666732 m!4174281))

(declare-fun m!4174703 () Bool)

(assert (=> b!3666732 m!4174703))

(assert (=> b!3666732 m!4174317))

(assert (=> b!3666730 m!4174251))

(assert (=> b!3666730 m!4174281))

(declare-fun m!4174705 () Bool)

(assert (=> b!3666730 m!4174705))

(assert (=> b!3666373 d!1077013))

(declare-fun b!3666735 () Bool)

(declare-fun e!2270348 () Bool)

(assert (=> b!3666735 (= e!2270348 (isPrefix!3171 (tail!5675 lt!1276559) (tail!5675 lt!1276575)))))

(declare-fun b!3666733 () Bool)

(declare-fun e!2270347 () Bool)

(assert (=> b!3666733 (= e!2270347 e!2270348)))

(declare-fun res!1488841 () Bool)

(assert (=> b!3666733 (=> (not res!1488841) (not e!2270348))))

(assert (=> b!3666733 (= res!1488841 (not ((_ is Nil!38667) lt!1276575)))))

(declare-fun d!1077015 () Bool)

(declare-fun e!2270346 () Bool)

(assert (=> d!1077015 e!2270346))

(declare-fun res!1488838 () Bool)

(assert (=> d!1077015 (=> res!1488838 e!2270346)))

(declare-fun lt!1276718 () Bool)

(assert (=> d!1077015 (= res!1488838 (not lt!1276718))))

(assert (=> d!1077015 (= lt!1276718 e!2270347)))

(declare-fun res!1488839 () Bool)

(assert (=> d!1077015 (=> res!1488839 e!2270347)))

(assert (=> d!1077015 (= res!1488839 ((_ is Nil!38667) lt!1276559))))

(assert (=> d!1077015 (= (isPrefix!3171 lt!1276559 lt!1276575) lt!1276718)))

(declare-fun b!3666736 () Bool)

(assert (=> b!3666736 (= e!2270346 (>= (size!29551 lt!1276575) (size!29551 lt!1276559)))))

(declare-fun b!3666734 () Bool)

(declare-fun res!1488840 () Bool)

(assert (=> b!3666734 (=> (not res!1488840) (not e!2270348))))

(assert (=> b!3666734 (= res!1488840 (= (head!7842 lt!1276559) (head!7842 lt!1276575)))))

(assert (= (and d!1077015 (not res!1488839)) b!3666733))

(assert (= (and b!3666733 res!1488841) b!3666734))

(assert (= (and b!3666734 res!1488840) b!3666735))

(assert (= (and d!1077015 (not res!1488838)) b!3666736))

(assert (=> b!3666735 m!4174411))

(declare-fun m!4174707 () Bool)

(assert (=> b!3666735 m!4174707))

(assert (=> b!3666735 m!4174411))

(assert (=> b!3666735 m!4174707))

(declare-fun m!4174709 () Bool)

(assert (=> b!3666735 m!4174709))

(assert (=> b!3666736 m!4174629))

(assert (=> b!3666736 m!4174457))

(assert (=> b!3666734 m!4174415))

(declare-fun m!4174711 () Bool)

(assert (=> b!3666734 m!4174711))

(assert (=> b!3666373 d!1077015))

(declare-fun d!1077017 () Bool)

(declare-fun isEmpty!22946 (Option!8245) Bool)

(assert (=> d!1077017 (= (isDefined!6477 lt!1276529) (not (isEmpty!22946 lt!1276529)))))

(declare-fun bs!572992 () Bool)

(assert (= bs!572992 d!1077017))

(declare-fun m!4174713 () Bool)

(assert (=> bs!572992 m!4174713))

(assert (=> b!3666373 d!1077017))

(declare-fun b!3666739 () Bool)

(declare-fun res!1488843 () Bool)

(declare-fun e!2270350 () Bool)

(assert (=> b!3666739 (=> (not res!1488843) (not e!2270350))))

(declare-fun lt!1276720 () List!38791)

(assert (=> b!3666739 (= res!1488843 (= (size!29551 lt!1276720) (+ (size!29551 lt!1276559) (size!29551 suffix!1395))))))

(declare-fun b!3666740 () Bool)

(assert (=> b!3666740 (= e!2270350 (or (not (= suffix!1395 Nil!38667)) (= lt!1276720 lt!1276559)))))

(declare-fun b!3666738 () Bool)

(declare-fun e!2270349 () List!38791)

(assert (=> b!3666738 (= e!2270349 (Cons!38667 (h!44087 lt!1276559) (++!9624 (t!299186 lt!1276559) suffix!1395)))))

(declare-fun b!3666737 () Bool)

(assert (=> b!3666737 (= e!2270349 suffix!1395)))

(declare-fun d!1077019 () Bool)

(assert (=> d!1077019 e!2270350))

(declare-fun res!1488842 () Bool)

(assert (=> d!1077019 (=> (not res!1488842) (not e!2270350))))

(assert (=> d!1077019 (= res!1488842 (= (content!5595 lt!1276720) ((_ map or) (content!5595 lt!1276559) (content!5595 suffix!1395))))))

(assert (=> d!1077019 (= lt!1276720 e!2270349)))

(declare-fun c!633940 () Bool)

(assert (=> d!1077019 (= c!633940 ((_ is Nil!38667) lt!1276559))))

(assert (=> d!1077019 (= (++!9624 lt!1276559 suffix!1395) lt!1276720)))

(assert (= (and d!1077019 c!633940) b!3666737))

(assert (= (and d!1077019 (not c!633940)) b!3666738))

(assert (= (and d!1077019 res!1488842) b!3666739))

(assert (= (and b!3666739 res!1488843) b!3666740))

(declare-fun m!4174715 () Bool)

(assert (=> b!3666739 m!4174715))

(assert (=> b!3666739 m!4174457))

(declare-fun m!4174717 () Bool)

(assert (=> b!3666739 m!4174717))

(declare-fun m!4174719 () Bool)

(assert (=> b!3666738 m!4174719))

(declare-fun m!4174721 () Bool)

(assert (=> d!1077019 m!4174721))

(declare-fun m!4174723 () Bool)

(assert (=> d!1077019 m!4174723))

(declare-fun m!4174725 () Bool)

(assert (=> d!1077019 m!4174725))

(assert (=> b!3666373 d!1077019))

(declare-fun b!3666763 () Bool)

(declare-fun e!2270371 () Option!8245)

(assert (=> b!3666763 (= e!2270371 (Some!8244 (h!44089 rules!3307)))))

(declare-fun d!1077021 () Bool)

(declare-fun e!2270368 () Bool)

(assert (=> d!1077021 e!2270368))

(declare-fun res!1488850 () Bool)

(assert (=> d!1077021 (=> res!1488850 e!2270368)))

(declare-fun lt!1276729 () Option!8245)

(assert (=> d!1077021 (= res!1488850 (isEmpty!22946 lt!1276729))))

(assert (=> d!1077021 (= lt!1276729 e!2270371)))

(declare-fun c!633945 () Bool)

(assert (=> d!1077021 (= c!633945 (and ((_ is Cons!38669) rules!3307) (= (tag!6592 (h!44089 rules!3307)) (tag!6592 (rule!8626 (_1!22402 lt!1276551))))))))

(assert (=> d!1077021 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1077021 (= (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 (_1!22402 lt!1276551)))) lt!1276729)))

(declare-fun b!3666764 () Bool)

(declare-fun e!2270370 () Option!8245)

(assert (=> b!3666764 (= e!2270371 e!2270370)))

(declare-fun c!633946 () Bool)

(assert (=> b!3666764 (= c!633946 (and ((_ is Cons!38669) rules!3307) (not (= (tag!6592 (h!44089 rules!3307)) (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))))))

(declare-fun b!3666765 () Bool)

(declare-fun e!2270369 () Bool)

(assert (=> b!3666765 (= e!2270369 (= (tag!6592 (get!12759 lt!1276729)) (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666766 () Bool)

(assert (=> b!3666766 (= e!2270370 None!8244)))

(declare-fun b!3666767 () Bool)

(assert (=> b!3666767 (= e!2270368 e!2270369)))

(declare-fun res!1488851 () Bool)

(assert (=> b!3666767 (=> (not res!1488851) (not e!2270369))))

(assert (=> b!3666767 (= res!1488851 (contains!7684 rules!3307 (get!12759 lt!1276729)))))

(declare-fun b!3666768 () Bool)

(declare-fun lt!1276731 () Unit!56098)

(declare-fun lt!1276730 () Unit!56098)

(assert (=> b!3666768 (= lt!1276731 lt!1276730)))

(assert (=> b!3666768 (rulesInvariant!4794 thiss!23823 (t!299188 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!606 (LexerInterface!5397 Rule!11416 List!38793) Unit!56098)

(assert (=> b!3666768 (= lt!1276730 (lemmaInvariantOnRulesThenOnTail!606 thiss!23823 (h!44089 rules!3307) (t!299188 rules!3307)))))

(assert (=> b!3666768 (= e!2270370 (getRuleFromTag!1412 thiss!23823 (t!299188 rules!3307) (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))))

(assert (= (and d!1077021 c!633945) b!3666763))

(assert (= (and d!1077021 (not c!633945)) b!3666764))

(assert (= (and b!3666764 c!633946) b!3666768))

(assert (= (and b!3666764 (not c!633946)) b!3666766))

(assert (= (and d!1077021 (not res!1488850)) b!3666767))

(assert (= (and b!3666767 res!1488851) b!3666765))

(declare-fun m!4174741 () Bool)

(assert (=> d!1077021 m!4174741))

(assert (=> d!1077021 m!4174255))

(declare-fun m!4174743 () Bool)

(assert (=> b!3666765 m!4174743))

(assert (=> b!3666767 m!4174743))

(assert (=> b!3666767 m!4174743))

(declare-fun m!4174745 () Bool)

(assert (=> b!3666767 m!4174745))

(declare-fun m!4174747 () Bool)

(assert (=> b!3666768 m!4174747))

(declare-fun m!4174749 () Bool)

(assert (=> b!3666768 m!4174749))

(declare-fun m!4174751 () Bool)

(assert (=> b!3666768 m!4174751))

(assert (=> b!3666373 d!1077021))

(declare-fun b!3666771 () Bool)

(declare-fun e!2270374 () Bool)

(assert (=> b!3666771 (= e!2270374 (isPrefix!3171 (tail!5675 lt!1276573) (tail!5675 lt!1276575)))))

(declare-fun b!3666769 () Bool)

(declare-fun e!2270373 () Bool)

(assert (=> b!3666769 (= e!2270373 e!2270374)))

(declare-fun res!1488855 () Bool)

(assert (=> b!3666769 (=> (not res!1488855) (not e!2270374))))

(assert (=> b!3666769 (= res!1488855 (not ((_ is Nil!38667) lt!1276575)))))

(declare-fun d!1077027 () Bool)

(declare-fun e!2270372 () Bool)

(assert (=> d!1077027 e!2270372))

(declare-fun res!1488852 () Bool)

(assert (=> d!1077027 (=> res!1488852 e!2270372)))

(declare-fun lt!1276732 () Bool)

(assert (=> d!1077027 (= res!1488852 (not lt!1276732))))

(assert (=> d!1077027 (= lt!1276732 e!2270373)))

(declare-fun res!1488853 () Bool)

(assert (=> d!1077027 (=> res!1488853 e!2270373)))

(assert (=> d!1077027 (= res!1488853 ((_ is Nil!38667) lt!1276573))))

(assert (=> d!1077027 (= (isPrefix!3171 lt!1276573 lt!1276575) lt!1276732)))

(declare-fun b!3666772 () Bool)

(assert (=> b!3666772 (= e!2270372 (>= (size!29551 lt!1276575) (size!29551 lt!1276573)))))

(declare-fun b!3666770 () Bool)

(declare-fun res!1488854 () Bool)

(assert (=> b!3666770 (=> (not res!1488854) (not e!2270374))))

(assert (=> b!3666770 (= res!1488854 (= (head!7842 lt!1276573) (head!7842 lt!1276575)))))

(assert (= (and d!1077027 (not res!1488853)) b!3666769))

(assert (= (and b!3666769 res!1488855) b!3666770))

(assert (= (and b!3666770 res!1488854) b!3666771))

(assert (= (and d!1077027 (not res!1488852)) b!3666772))

(assert (=> b!3666771 m!4174391))

(assert (=> b!3666771 m!4174707))

(assert (=> b!3666771 m!4174391))

(assert (=> b!3666771 m!4174707))

(declare-fun m!4174753 () Bool)

(assert (=> b!3666771 m!4174753))

(assert (=> b!3666772 m!4174629))

(assert (=> b!3666772 m!4174317))

(assert (=> b!3666770 m!4174251))

(assert (=> b!3666770 m!4174711))

(assert (=> b!3666373 d!1077027))

(declare-fun d!1077029 () Bool)

(declare-fun e!2270393 () Bool)

(assert (=> d!1077029 e!2270393))

(declare-fun res!1488868 () Bool)

(assert (=> d!1077029 (=> (not res!1488868) (not e!2270393))))

(assert (=> d!1077029 (= res!1488868 (isDefined!6477 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 (_1!22402 lt!1276551))))))))

(declare-fun lt!1276739 () Unit!56098)

(declare-fun choose!21758 (LexerInterface!5397 List!38793 List!38791 Token!10982) Unit!56098)

(assert (=> d!1077029 (= lt!1276739 (choose!21758 thiss!23823 rules!3307 lt!1276575 (_1!22402 lt!1276551)))))

(assert (=> d!1077029 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1077029 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1412 thiss!23823 rules!3307 lt!1276575 (_1!22402 lt!1276551)) lt!1276739)))

(declare-fun b!3666804 () Bool)

(declare-fun res!1488869 () Bool)

(assert (=> b!3666804 (=> (not res!1488869) (not e!2270393))))

(assert (=> b!3666804 (= res!1488869 (matchR!5136 (regex!5808 (get!12759 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))) (list!14354 (charsOf!3822 (_1!22402 lt!1276551)))))))

(declare-fun b!3666805 () Bool)

(assert (=> b!3666805 (= e!2270393 (= (rule!8626 (_1!22402 lt!1276551)) (get!12759 (getRuleFromTag!1412 thiss!23823 rules!3307 (tag!6592 (rule!8626 (_1!22402 lt!1276551)))))))))

(assert (= (and d!1077029 res!1488868) b!3666804))

(assert (= (and b!3666804 res!1488869) b!3666805))

(assert (=> d!1077029 m!4174267))

(assert (=> d!1077029 m!4174267))

(declare-fun m!4174775 () Bool)

(assert (=> d!1077029 m!4174775))

(declare-fun m!4174777 () Bool)

(assert (=> d!1077029 m!4174777))

(assert (=> d!1077029 m!4174255))

(assert (=> b!3666804 m!4174267))

(declare-fun m!4174779 () Bool)

(assert (=> b!3666804 m!4174779))

(assert (=> b!3666804 m!4174351))

(declare-fun m!4174781 () Bool)

(assert (=> b!3666804 m!4174781))

(assert (=> b!3666804 m!4174293))

(assert (=> b!3666804 m!4174293))

(assert (=> b!3666804 m!4174351))

(assert (=> b!3666804 m!4174267))

(assert (=> b!3666805 m!4174267))

(assert (=> b!3666805 m!4174267))

(assert (=> b!3666805 m!4174779))

(assert (=> b!3666373 d!1077029))

(declare-fun d!1077035 () Bool)

(assert (=> d!1077035 (= (_2!22402 lt!1276551) lt!1276533)))

(declare-fun lt!1276744 () Unit!56098)

(declare-fun choose!21759 (List!38791 List!38791 List!38791 List!38791 List!38791) Unit!56098)

(assert (=> d!1077035 (= lt!1276744 (choose!21759 lt!1276573 (_2!22402 lt!1276551) lt!1276573 lt!1276533 lt!1276575))))

(assert (=> d!1077035 (isPrefix!3171 lt!1276573 lt!1276575)))

(assert (=> d!1077035 (= (lemmaSamePrefixThenSameSuffix!1498 lt!1276573 (_2!22402 lt!1276551) lt!1276573 lt!1276533 lt!1276575) lt!1276744)))

(declare-fun bs!572993 () Bool)

(assert (= bs!572993 d!1077035))

(declare-fun m!4174791 () Bool)

(assert (=> bs!572993 m!4174791))

(assert (=> bs!572993 m!4174273))

(assert (=> b!3666374 d!1077035))

(declare-fun d!1077043 () Bool)

(declare-fun lt!1276745 () List!38791)

(assert (=> d!1077043 (= (++!9624 lt!1276573 lt!1276745) lt!1276575)))

(declare-fun e!2270399 () List!38791)

(assert (=> d!1077043 (= lt!1276745 e!2270399)))

(declare-fun c!633958 () Bool)

(assert (=> d!1077043 (= c!633958 ((_ is Cons!38667) lt!1276573))))

(assert (=> d!1077043 (>= (size!29551 lt!1276575) (size!29551 lt!1276573))))

(assert (=> d!1077043 (= (getSuffix!1724 lt!1276575 lt!1276573) lt!1276745)))

(declare-fun b!3666814 () Bool)

(assert (=> b!3666814 (= e!2270399 (getSuffix!1724 (tail!5675 lt!1276575) (t!299186 lt!1276573)))))

(declare-fun b!3666815 () Bool)

(assert (=> b!3666815 (= e!2270399 lt!1276575)))

(assert (= (and d!1077043 c!633958) b!3666814))

(assert (= (and d!1077043 (not c!633958)) b!3666815))

(declare-fun m!4174793 () Bool)

(assert (=> d!1077043 m!4174793))

(assert (=> d!1077043 m!4174629))

(assert (=> d!1077043 m!4174317))

(assert (=> b!3666814 m!4174707))

(assert (=> b!3666814 m!4174707))

(declare-fun m!4174795 () Bool)

(assert (=> b!3666814 m!4174795))

(assert (=> b!3666374 d!1077043))

(declare-fun d!1077045 () Bool)

(declare-fun dynLambda!16913 (Int BalanceConc!23268) TokenValue!6038)

(assert (=> d!1077045 (= (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) (seqFromList!4357 lt!1276573)) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (seqFromList!4357 lt!1276573)))))

(declare-fun b_lambda!108865 () Bool)

(assert (=> (not b_lambda!108865) (not d!1077045)))

(declare-fun tb!212205 () Bool)

(declare-fun t!299246 () Bool)

(assert (=> (and b!3666380 (= (toValue!8104 (transformation!5808 (rule!8626 token!511))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299246) tb!212205))

(declare-fun result!258276 () Bool)

(assert (=> tb!212205 (= result!258276 (inv!21 (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (seqFromList!4357 lt!1276573))))))

(declare-fun m!4174797 () Bool)

(assert (=> tb!212205 m!4174797))

(assert (=> d!1077045 t!299246))

(declare-fun b_and!272763 () Bool)

(assert (= b_and!272675 (and (=> t!299246 result!258276) b_and!272763)))

(declare-fun t!299248 () Bool)

(declare-fun tb!212207 () Bool)

(assert (=> (and b!3666341 (= (toValue!8104 (transformation!5808 anOtherTypeRule!33)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299248) tb!212207))

(declare-fun result!258280 () Bool)

(assert (= result!258280 result!258276))

(assert (=> d!1077045 t!299248))

(declare-fun b_and!272765 () Bool)

(assert (= b_and!272679 (and (=> t!299248 result!258280) b_and!272765)))

(declare-fun t!299250 () Bool)

(declare-fun tb!212209 () Bool)

(assert (=> (and b!3666372 (= (toValue!8104 (transformation!5808 rule!403)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299250) tb!212209))

(declare-fun result!258282 () Bool)

(assert (= result!258282 result!258276))

(assert (=> d!1077045 t!299250))

(declare-fun b_and!272767 () Bool)

(assert (= b_and!272683 (and (=> t!299250 result!258282) b_and!272767)))

(declare-fun t!299252 () Bool)

(declare-fun tb!212211 () Bool)

(assert (=> (and b!3666348 (= (toValue!8104 (transformation!5808 (h!44089 rules!3307))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299252) tb!212211))

(declare-fun result!258284 () Bool)

(assert (= result!258284 result!258276))

(assert (=> d!1077045 t!299252))

(declare-fun b_and!272769 () Bool)

(assert (= b_and!272687 (and (=> t!299252 result!258284) b_and!272769)))

(assert (=> d!1077045 m!4174313))

(declare-fun m!4174799 () Bool)

(assert (=> d!1077045 m!4174799))

(assert (=> b!3666374 d!1077045))

(declare-fun d!1077047 () Bool)

(declare-fun lt!1276748 () Int)

(assert (=> d!1077047 (>= lt!1276748 0)))

(declare-fun e!2270405 () Int)

(assert (=> d!1077047 (= lt!1276748 e!2270405)))

(declare-fun c!633961 () Bool)

(assert (=> d!1077047 (= c!633961 ((_ is Nil!38667) lt!1276573))))

(assert (=> d!1077047 (= (size!29551 lt!1276573) lt!1276748)))

(declare-fun b!3666822 () Bool)

(assert (=> b!3666822 (= e!2270405 0)))

(declare-fun b!3666823 () Bool)

(assert (=> b!3666823 (= e!2270405 (+ 1 (size!29551 (t!299186 lt!1276573))))))

(assert (= (and d!1077047 c!633961) b!3666822))

(assert (= (and d!1077047 (not c!633961)) b!3666823))

(declare-fun m!4174801 () Bool)

(assert (=> b!3666823 m!4174801))

(assert (=> b!3666374 d!1077047))

(declare-fun b!3666854 () Bool)

(declare-fun e!2270423 () Bool)

(declare-datatypes ((tuple2!38542 0))(
  ( (tuple2!38543 (_1!22405 List!38791) (_2!22405 List!38791)) )
))
(declare-fun findLongestMatchInner!1073 (Regex!10567 List!38791 Int List!38791 List!38791 Int) tuple2!38542)

(assert (=> b!3666854 (= e!2270423 (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) (_1!22405 (findLongestMatchInner!1073 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) Nil!38667 (size!29551 Nil!38667) lt!1276575 lt!1276575 (size!29551 lt!1276575)))))))

(declare-fun b!3666855 () Bool)

(declare-fun res!1488888 () Bool)

(declare-fun e!2270422 () Bool)

(assert (=> b!3666855 (=> (not res!1488888) (not e!2270422))))

(declare-fun lt!1276768 () Option!8244)

(assert (=> b!3666855 (= res!1488888 (= (++!9624 (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276768)))) (_2!22402 (get!12758 lt!1276768))) lt!1276575))))

(declare-fun b!3666856 () Bool)

(declare-fun res!1488886 () Bool)

(assert (=> b!3666856 (=> (not res!1488886) (not e!2270422))))

(assert (=> b!3666856 (= res!1488886 (= (rule!8626 (_1!22402 (get!12758 lt!1276768))) (rule!8626 (_1!22402 lt!1276551))))))

(declare-fun d!1077049 () Bool)

(declare-fun e!2270421 () Bool)

(assert (=> d!1077049 e!2270421))

(declare-fun res!1488887 () Bool)

(assert (=> d!1077049 (=> res!1488887 e!2270421)))

(assert (=> d!1077049 (= res!1488887 (isEmpty!22945 lt!1276768))))

(declare-fun e!2270420 () Option!8244)

(assert (=> d!1077049 (= lt!1276768 e!2270420)))

(declare-fun c!633970 () Bool)

(declare-fun lt!1276771 () tuple2!38542)

(assert (=> d!1077049 (= c!633970 (isEmpty!22943 (_1!22405 lt!1276771)))))

(declare-fun findLongestMatch!988 (Regex!10567 List!38791) tuple2!38542)

(assert (=> d!1077049 (= lt!1276771 (findLongestMatch!988 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276575))))

(assert (=> d!1077049 (ruleValid!2072 thiss!23823 (rule!8626 (_1!22402 lt!1276551)))))

(assert (=> d!1077049 (= (maxPrefixOneRule!2069 thiss!23823 (rule!8626 (_1!22402 lt!1276551)) lt!1276575) lt!1276768)))

(declare-fun b!3666857 () Bool)

(declare-fun res!1488884 () Bool)

(assert (=> b!3666857 (=> (not res!1488884) (not e!2270422))))

(assert (=> b!3666857 (= res!1488884 (= (value!185988 (_1!22402 (get!12758 lt!1276768))) (apply!9310 (transformation!5808 (rule!8626 (_1!22402 (get!12758 lt!1276768)))) (seqFromList!4357 (originalCharacters!6522 (_1!22402 (get!12758 lt!1276768)))))))))

(declare-fun b!3666858 () Bool)

(assert (=> b!3666858 (= e!2270420 None!8243)))

(declare-fun b!3666859 () Bool)

(declare-fun res!1488889 () Bool)

(assert (=> b!3666859 (=> (not res!1488889) (not e!2270422))))

(assert (=> b!3666859 (= res!1488889 (< (size!29551 (_2!22402 (get!12758 lt!1276768))) (size!29551 lt!1276575)))))

(declare-fun b!3666860 () Bool)

(assert (=> b!3666860 (= e!2270420 (Some!8243 (tuple2!38537 (Token!10983 (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) (seqFromList!4357 (_1!22405 lt!1276771))) (rule!8626 (_1!22402 lt!1276551)) (size!29550 (seqFromList!4357 (_1!22405 lt!1276771))) (_1!22405 lt!1276771)) (_2!22405 lt!1276771))))))

(declare-fun lt!1276770 () Unit!56098)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1046 (Regex!10567 List!38791) Unit!56098)

(assert (=> b!3666860 (= lt!1276770 (longestMatchIsAcceptedByMatchOrIsEmpty!1046 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276575))))

(declare-fun res!1488885 () Bool)

(assert (=> b!3666860 (= res!1488885 (isEmpty!22943 (_1!22405 (findLongestMatchInner!1073 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) Nil!38667 (size!29551 Nil!38667) lt!1276575 lt!1276575 (size!29551 lt!1276575)))))))

(assert (=> b!3666860 (=> res!1488885 e!2270423)))

(assert (=> b!3666860 e!2270423))

(declare-fun lt!1276772 () Unit!56098)

(assert (=> b!3666860 (= lt!1276772 lt!1276770)))

(declare-fun lt!1276769 () Unit!56098)

(assert (=> b!3666860 (= lt!1276769 (lemmaSemiInverse!1557 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) (seqFromList!4357 (_1!22405 lt!1276771))))))

(declare-fun b!3666861 () Bool)

(assert (=> b!3666861 (= e!2270422 (= (size!29549 (_1!22402 (get!12758 lt!1276768))) (size!29551 (originalCharacters!6522 (_1!22402 (get!12758 lt!1276768))))))))

(declare-fun b!3666862 () Bool)

(assert (=> b!3666862 (= e!2270421 e!2270422)))

(declare-fun res!1488890 () Bool)

(assert (=> b!3666862 (=> (not res!1488890) (not e!2270422))))

(assert (=> b!3666862 (= res!1488890 (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276768))))))))

(assert (= (and d!1077049 c!633970) b!3666858))

(assert (= (and d!1077049 (not c!633970)) b!3666860))

(assert (= (and b!3666860 (not res!1488885)) b!3666854))

(assert (= (and d!1077049 (not res!1488887)) b!3666862))

(assert (= (and b!3666862 res!1488890) b!3666855))

(assert (= (and b!3666855 res!1488888) b!3666859))

(assert (= (and b!3666859 res!1488889) b!3666856))

(assert (= (and b!3666856 res!1488886) b!3666857))

(assert (= (and b!3666857 res!1488884) b!3666861))

(declare-fun m!4174817 () Bool)

(assert (=> b!3666860 m!4174817))

(assert (=> b!3666860 m!4174817))

(declare-fun m!4174819 () Bool)

(assert (=> b!3666860 m!4174819))

(declare-fun m!4174821 () Bool)

(assert (=> b!3666860 m!4174821))

(declare-fun m!4174823 () Bool)

(assert (=> b!3666860 m!4174823))

(assert (=> b!3666860 m!4174817))

(declare-fun m!4174825 () Bool)

(assert (=> b!3666860 m!4174825))

(declare-fun m!4174827 () Bool)

(assert (=> b!3666860 m!4174827))

(assert (=> b!3666860 m!4174817))

(declare-fun m!4174829 () Bool)

(assert (=> b!3666860 m!4174829))

(assert (=> b!3666860 m!4174827))

(assert (=> b!3666860 m!4174629))

(declare-fun m!4174831 () Bool)

(assert (=> b!3666860 m!4174831))

(assert (=> b!3666860 m!4174629))

(declare-fun m!4174833 () Bool)

(assert (=> b!3666859 m!4174833))

(declare-fun m!4174835 () Bool)

(assert (=> b!3666859 m!4174835))

(assert (=> b!3666859 m!4174629))

(assert (=> b!3666856 m!4174833))

(assert (=> b!3666862 m!4174833))

(declare-fun m!4174837 () Bool)

(assert (=> b!3666862 m!4174837))

(assert (=> b!3666862 m!4174837))

(declare-fun m!4174839 () Bool)

(assert (=> b!3666862 m!4174839))

(assert (=> b!3666862 m!4174839))

(declare-fun m!4174841 () Bool)

(assert (=> b!3666862 m!4174841))

(assert (=> b!3666861 m!4174833))

(declare-fun m!4174843 () Bool)

(assert (=> b!3666861 m!4174843))

(assert (=> b!3666855 m!4174833))

(assert (=> b!3666855 m!4174837))

(assert (=> b!3666855 m!4174837))

(assert (=> b!3666855 m!4174839))

(assert (=> b!3666855 m!4174839))

(declare-fun m!4174845 () Bool)

(assert (=> b!3666855 m!4174845))

(declare-fun m!4174847 () Bool)

(assert (=> d!1077049 m!4174847))

(declare-fun m!4174849 () Bool)

(assert (=> d!1077049 m!4174849))

(declare-fun m!4174851 () Bool)

(assert (=> d!1077049 m!4174851))

(declare-fun m!4174853 () Bool)

(assert (=> d!1077049 m!4174853))

(assert (=> b!3666854 m!4174827))

(assert (=> b!3666854 m!4174629))

(assert (=> b!3666854 m!4174827))

(assert (=> b!3666854 m!4174629))

(assert (=> b!3666854 m!4174831))

(declare-fun m!4174855 () Bool)

(assert (=> b!3666854 m!4174855))

(assert (=> b!3666857 m!4174833))

(declare-fun m!4174857 () Bool)

(assert (=> b!3666857 m!4174857))

(assert (=> b!3666857 m!4174857))

(declare-fun m!4174859 () Bool)

(assert (=> b!3666857 m!4174859))

(assert (=> b!3666374 d!1077049))

(declare-fun d!1077059 () Bool)

(declare-fun fromListB!2013 (List!38791) BalanceConc!23268)

(assert (=> d!1077059 (= (seqFromList!4357 lt!1276573) (fromListB!2013 lt!1276573))))

(declare-fun bs!572996 () Bool)

(assert (= bs!572996 d!1077059))

(declare-fun m!4174861 () Bool)

(assert (=> bs!572996 m!4174861))

(assert (=> b!3666374 d!1077059))

(declare-fun d!1077061 () Bool)

(assert (=> d!1077061 (= (maxPrefixOneRule!2069 thiss!23823 (rule!8626 (_1!22402 lt!1276551)) lt!1276575) (Some!8243 (tuple2!38537 (Token!10983 (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) (seqFromList!4357 lt!1276573)) (rule!8626 (_1!22402 lt!1276551)) (size!29551 lt!1276573) lt!1276573) (_2!22402 lt!1276551))))))

(declare-fun lt!1276790 () Unit!56098)

(declare-fun choose!21761 (LexerInterface!5397 List!38793 List!38791 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> d!1077061 (= lt!1276790 (choose!21761 thiss!23823 rules!3307 lt!1276573 lt!1276575 (_2!22402 lt!1276551) (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1077061 (not (isEmpty!22942 rules!3307))))

(assert (=> d!1077061 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1125 thiss!23823 rules!3307 lt!1276573 lt!1276575 (_2!22402 lt!1276551) (rule!8626 (_1!22402 lt!1276551))) lt!1276790)))

(declare-fun bs!572997 () Bool)

(assert (= bs!572997 d!1077061))

(assert (=> bs!572997 m!4174257))

(assert (=> bs!572997 m!4174313))

(declare-fun m!4174907 () Bool)

(assert (=> bs!572997 m!4174907))

(assert (=> bs!572997 m!4174323))

(assert (=> bs!572997 m!4174317))

(assert (=> bs!572997 m!4174313))

(assert (=> bs!572997 m!4174319))

(assert (=> b!3666374 d!1077061))

(declare-fun d!1077065 () Bool)

(assert (=> d!1077065 (not (contains!7683 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276574))))

(declare-fun lt!1276799 () Unit!56098)

(declare-fun choose!21762 (LexerInterface!5397 List!38793 List!38793 Rule!11416 Rule!11416 C!21320) Unit!56098)

(assert (=> d!1077065 (= lt!1276799 (choose!21762 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) rule!403 lt!1276574))))

(assert (=> d!1077065 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1077065 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!454 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) rule!403 lt!1276574) lt!1276799)))

(declare-fun bs!573000 () Bool)

(assert (= bs!573000 d!1077065))

(assert (=> bs!573000 m!4174237))

(assert (=> bs!573000 m!4174237))

(assert (=> bs!573000 m!4174369))

(declare-fun m!4174915 () Bool)

(assert (=> bs!573000 m!4174915))

(assert (=> bs!573000 m!4174255))

(assert (=> b!3666355 d!1077065))

(declare-fun d!1077073 () Bool)

(assert (=> d!1077073 (= (inv!52143 (tag!6592 (rule!8626 token!511))) (= (mod (str.len (value!185987 (tag!6592 (rule!8626 token!511)))) 2) 0))))

(assert (=> b!3666375 d!1077073))

(declare-fun d!1077075 () Bool)

(declare-fun res!1488914 () Bool)

(declare-fun e!2270438 () Bool)

(assert (=> d!1077075 (=> (not res!1488914) (not e!2270438))))

(assert (=> d!1077075 (= res!1488914 (semiInverseModEq!2477 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (toValue!8104 (transformation!5808 (rule!8626 token!511)))))))

(assert (=> d!1077075 (= (inv!52147 (transformation!5808 (rule!8626 token!511))) e!2270438)))

(declare-fun b!3666892 () Bool)

(assert (=> b!3666892 (= e!2270438 (equivClasses!2376 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (toValue!8104 (transformation!5808 (rule!8626 token!511)))))))

(assert (= (and d!1077075 res!1488914) b!3666892))

(declare-fun m!4174923 () Bool)

(assert (=> d!1077075 m!4174923))

(declare-fun m!4174927 () Bool)

(assert (=> b!3666892 m!4174927))

(assert (=> b!3666375 d!1077075))

(declare-fun d!1077079 () Bool)

(declare-fun lt!1276802 () Bool)

(assert (=> d!1077079 (= lt!1276802 (select (content!5595 lt!1276561) lt!1276569))))

(declare-fun e!2270440 () Bool)

(assert (=> d!1077079 (= lt!1276802 e!2270440)))

(declare-fun res!1488915 () Bool)

(assert (=> d!1077079 (=> (not res!1488915) (not e!2270440))))

(assert (=> d!1077079 (= res!1488915 ((_ is Cons!38667) lt!1276561))))

(assert (=> d!1077079 (= (contains!7683 lt!1276561 lt!1276569) lt!1276802)))

(declare-fun b!3666893 () Bool)

(declare-fun e!2270439 () Bool)

(assert (=> b!3666893 (= e!2270440 e!2270439)))

(declare-fun res!1488916 () Bool)

(assert (=> b!3666893 (=> res!1488916 e!2270439)))

(assert (=> b!3666893 (= res!1488916 (= (h!44087 lt!1276561) lt!1276569))))

(declare-fun b!3666894 () Bool)

(assert (=> b!3666894 (= e!2270439 (contains!7683 (t!299186 lt!1276561) lt!1276569))))

(assert (= (and d!1077079 res!1488915) b!3666893))

(assert (= (and b!3666893 (not res!1488916)) b!3666894))

(declare-fun m!4174929 () Bool)

(assert (=> d!1077079 m!4174929))

(declare-fun m!4174931 () Bool)

(assert (=> d!1077079 m!4174931))

(declare-fun m!4174933 () Bool)

(assert (=> b!3666894 m!4174933))

(assert (=> b!3666356 d!1077079))

(declare-fun d!1077081 () Bool)

(assert (=> d!1077081 (= (head!7842 suffix!1395) (h!44087 suffix!1395))))

(assert (=> b!3666356 d!1077081))

(declare-fun b!3666899 () Bool)

(declare-fun e!2270447 () List!38791)

(declare-fun call!265394 () List!38791)

(assert (=> b!3666899 (= e!2270447 call!265394)))

(declare-fun b!3666900 () Bool)

(declare-fun e!2270448 () List!38791)

(declare-fun call!265397 () List!38791)

(assert (=> b!3666900 (= e!2270448 call!265397)))

(declare-fun b!3666901 () Bool)

(declare-fun c!633975 () Bool)

(assert (=> b!3666901 (= c!633975 ((_ is Star!10567) (regex!5808 rule!403)))))

(declare-fun e!2270443 () List!38791)

(assert (=> b!3666901 (= e!2270443 e!2270448)))

(declare-fun b!3666902 () Bool)

(declare-fun e!2270445 () List!38791)

(assert (=> b!3666902 (= e!2270445 Nil!38667)))

(declare-fun b!3666903 () Bool)

(assert (=> b!3666903 (= e!2270443 (Cons!38667 (c!633854 (regex!5808 rule!403)) Nil!38667))))

(declare-fun call!265396 () List!38791)

(declare-fun call!265395 () List!38791)

(declare-fun bm!265389 () Bool)

(declare-fun c!633977 () Bool)

(assert (=> bm!265389 (= call!265394 (++!9624 (ite c!633977 call!265395 call!265396) (ite c!633977 call!265396 call!265395)))))

(declare-fun b!3666905 () Bool)

(assert (=> b!3666905 (= e!2270445 e!2270443)))

(declare-fun c!633976 () Bool)

(assert (=> b!3666905 (= c!633976 ((_ is ElementMatch!10567) (regex!5808 rule!403)))))

(declare-fun bm!265390 () Bool)

(assert (=> bm!265390 (= call!265397 (usedCharacters!1020 (ite c!633975 (reg!10896 (regex!5808 rule!403)) (ite c!633977 (regOne!21647 (regex!5808 rule!403)) (regTwo!21646 (regex!5808 rule!403))))))))

(declare-fun bm!265391 () Bool)

(assert (=> bm!265391 (= call!265396 (usedCharacters!1020 (ite c!633977 (regTwo!21647 (regex!5808 rule!403)) (regOne!21646 (regex!5808 rule!403)))))))

(declare-fun b!3666906 () Bool)

(assert (=> b!3666906 (= e!2270447 call!265394)))

(declare-fun bm!265392 () Bool)

(assert (=> bm!265392 (= call!265395 call!265397)))

(declare-fun b!3666904 () Bool)

(assert (=> b!3666904 (= e!2270448 e!2270447)))

(assert (=> b!3666904 (= c!633977 ((_ is Union!10567) (regex!5808 rule!403)))))

(declare-fun d!1077085 () Bool)

(declare-fun c!633978 () Bool)

(assert (=> d!1077085 (= c!633978 (or ((_ is EmptyExpr!10567) (regex!5808 rule!403)) ((_ is EmptyLang!10567) (regex!5808 rule!403))))))

(assert (=> d!1077085 (= (usedCharacters!1020 (regex!5808 rule!403)) e!2270445)))

(assert (= (and d!1077085 c!633978) b!3666902))

(assert (= (and d!1077085 (not c!633978)) b!3666905))

(assert (= (and b!3666905 c!633976) b!3666903))

(assert (= (and b!3666905 (not c!633976)) b!3666901))

(assert (= (and b!3666901 c!633975) b!3666900))

(assert (= (and b!3666901 (not c!633975)) b!3666904))

(assert (= (and b!3666904 c!633977) b!3666906))

(assert (= (and b!3666904 (not c!633977)) b!3666899))

(assert (= (or b!3666906 b!3666899) bm!265392))

(assert (= (or b!3666906 b!3666899) bm!265391))

(assert (= (or b!3666906 b!3666899) bm!265389))

(assert (= (or b!3666900 bm!265392) bm!265390))

(declare-fun m!4174945 () Bool)

(assert (=> bm!265389 m!4174945))

(declare-fun m!4174947 () Bool)

(assert (=> bm!265390 m!4174947))

(declare-fun m!4174949 () Bool)

(assert (=> bm!265391 m!4174949))

(assert (=> b!3666356 d!1077085))

(declare-fun b!3666929 () Bool)

(declare-fun e!2270462 () Int)

(assert (=> b!3666929 (= e!2270462 (- 1))))

(declare-fun b!3666928 () Bool)

(assert (=> b!3666928 (= e!2270462 (+ 1 (getIndex!476 (t!299188 rules!3307) rule!403)))))

(declare-fun b!3666926 () Bool)

(declare-fun e!2270461 () Int)

(assert (=> b!3666926 (= e!2270461 0)))

(declare-fun b!3666927 () Bool)

(assert (=> b!3666927 (= e!2270461 e!2270462)))

(declare-fun c!633988 () Bool)

(assert (=> b!3666927 (= c!633988 (and ((_ is Cons!38669) rules!3307) (not (= (h!44089 rules!3307) rule!403))))))

(declare-fun d!1077091 () Bool)

(declare-fun lt!1276808 () Int)

(assert (=> d!1077091 (>= lt!1276808 0)))

(assert (=> d!1077091 (= lt!1276808 e!2270461)))

(declare-fun c!633987 () Bool)

(assert (=> d!1077091 (= c!633987 (and ((_ is Cons!38669) rules!3307) (= (h!44089 rules!3307) rule!403)))))

(assert (=> d!1077091 (contains!7684 rules!3307 rule!403)))

(assert (=> d!1077091 (= (getIndex!476 rules!3307 rule!403) lt!1276808)))

(assert (= (and d!1077091 c!633987) b!3666926))

(assert (= (and d!1077091 (not c!633987)) b!3666927))

(assert (= (and b!3666927 c!633988) b!3666928))

(assert (= (and b!3666927 (not c!633988)) b!3666929))

(declare-fun m!4174963 () Bool)

(assert (=> b!3666928 m!4174963))

(assert (=> d!1077091 m!4174259))

(assert (=> b!3666376 d!1077091))

(declare-fun b!3666933 () Bool)

(declare-fun e!2270464 () Int)

(assert (=> b!3666933 (= e!2270464 (- 1))))

(declare-fun b!3666932 () Bool)

(assert (=> b!3666932 (= e!2270464 (+ 1 (getIndex!476 (t!299188 rules!3307) (rule!8626 (_1!22402 lt!1276551)))))))

(declare-fun b!3666930 () Bool)

(declare-fun e!2270463 () Int)

(assert (=> b!3666930 (= e!2270463 0)))

(declare-fun b!3666931 () Bool)

(assert (=> b!3666931 (= e!2270463 e!2270464)))

(declare-fun c!633990 () Bool)

(assert (=> b!3666931 (= c!633990 (and ((_ is Cons!38669) rules!3307) (not (= (h!44089 rules!3307) (rule!8626 (_1!22402 lt!1276551))))))))

(declare-fun d!1077101 () Bool)

(declare-fun lt!1276809 () Int)

(assert (=> d!1077101 (>= lt!1276809 0)))

(assert (=> d!1077101 (= lt!1276809 e!2270463)))

(declare-fun c!633989 () Bool)

(assert (=> d!1077101 (= c!633989 (and ((_ is Cons!38669) rules!3307) (= (h!44089 rules!3307) (rule!8626 (_1!22402 lt!1276551)))))))

(assert (=> d!1077101 (contains!7684 rules!3307 (rule!8626 (_1!22402 lt!1276551)))))

(assert (=> d!1077101 (= (getIndex!476 rules!3307 (rule!8626 (_1!22402 lt!1276551))) lt!1276809)))

(assert (= (and d!1077101 c!633989) b!3666930))

(assert (= (and d!1077101 (not c!633989)) b!3666931))

(assert (= (and b!3666931 c!633990) b!3666932))

(assert (= (and b!3666931 (not c!633990)) b!3666933))

(declare-fun m!4174965 () Bool)

(assert (=> b!3666932 m!4174965))

(assert (=> d!1077101 m!4174345))

(assert (=> b!3666376 d!1077101))

(declare-fun d!1077103 () Bool)

(declare-fun lt!1276810 () Bool)

(assert (=> d!1077103 (= lt!1276810 (select (content!5593 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2270466 () Bool)

(assert (=> d!1077103 (= lt!1276810 e!2270466)))

(declare-fun res!1488924 () Bool)

(assert (=> d!1077103 (=> (not res!1488924) (not e!2270466))))

(assert (=> d!1077103 (= res!1488924 ((_ is Cons!38669) rules!3307))))

(assert (=> d!1077103 (= (contains!7684 rules!3307 anOtherTypeRule!33) lt!1276810)))

(declare-fun b!3666934 () Bool)

(declare-fun e!2270465 () Bool)

(assert (=> b!3666934 (= e!2270466 e!2270465)))

(declare-fun res!1488925 () Bool)

(assert (=> b!3666934 (=> res!1488925 e!2270465)))

(assert (=> b!3666934 (= res!1488925 (= (h!44089 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3666935 () Bool)

(assert (=> b!3666935 (= e!2270465 (contains!7684 (t!299188 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1077103 res!1488924) b!3666934))

(assert (= (and b!3666934 (not res!1488925)) b!3666935))

(assert (=> d!1077103 m!4174479))

(declare-fun m!4174967 () Bool)

(assert (=> d!1077103 m!4174967))

(declare-fun m!4174969 () Bool)

(assert (=> b!3666935 m!4174969))

(assert (=> b!3666357 d!1077103))

(declare-fun d!1077105 () Bool)

(assert (=> d!1077105 (not (matchR!5136 (regex!5808 rule!403) lt!1276559))))

(declare-fun lt!1276819 () Unit!56098)

(declare-fun choose!21765 (LexerInterface!5397 List!38793 Rule!11416 List!38791 List!38791 List!38791 Rule!11416) Unit!56098)

(assert (=> d!1077105 (= lt!1276819 (choose!21765 thiss!23823 rules!3307 (rule!8626 (_1!22402 lt!1276551)) lt!1276573 lt!1276575 lt!1276559 rule!403))))

(assert (=> d!1077105 (isPrefix!3171 lt!1276573 lt!1276575)))

(assert (=> d!1077105 (= (lemmaMaxPrefixOutputsMaxPrefix!350 thiss!23823 rules!3307 (rule!8626 (_1!22402 lt!1276551)) lt!1276573 lt!1276575 lt!1276559 rule!403) lt!1276819)))

(declare-fun bs!573005 () Bool)

(assert (= bs!573005 d!1077105))

(assert (=> bs!573005 m!4174239))

(declare-fun m!4174977 () Bool)

(assert (=> bs!573005 m!4174977))

(assert (=> bs!573005 m!4174273))

(assert (=> b!3666377 d!1077105))

(declare-fun d!1077111 () Bool)

(declare-fun res!1488938 () Bool)

(declare-fun e!2270479 () Bool)

(assert (=> d!1077111 (=> res!1488938 e!2270479)))

(assert (=> d!1077111 (= res!1488938 (not ((_ is Cons!38669) rules!3307)))))

(assert (=> d!1077111 (= (sepAndNonSepRulesDisjointChars!1976 rules!3307 rules!3307) e!2270479)))

(declare-fun b!3666956 () Bool)

(declare-fun e!2270480 () Bool)

(assert (=> b!3666956 (= e!2270479 e!2270480)))

(declare-fun res!1488939 () Bool)

(assert (=> b!3666956 (=> (not res!1488939) (not e!2270480))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!901 (Rule!11416 List!38793) Bool)

(assert (=> b!3666956 (= res!1488939 (ruleDisjointCharsFromAllFromOtherType!901 (h!44089 rules!3307) rules!3307))))

(declare-fun b!3666957 () Bool)

(assert (=> b!3666957 (= e!2270480 (sepAndNonSepRulesDisjointChars!1976 rules!3307 (t!299188 rules!3307)))))

(assert (= (and d!1077111 (not res!1488938)) b!3666956))

(assert (= (and b!3666956 res!1488939) b!3666957))

(declare-fun m!4174989 () Bool)

(assert (=> b!3666956 m!4174989))

(declare-fun m!4174991 () Bool)

(assert (=> b!3666957 m!4174991))

(assert (=> b!3666358 d!1077111))

(declare-fun d!1077117 () Bool)

(assert (=> d!1077117 (not (matchR!5136 (regex!5808 rule!403) lt!1276559))))

(declare-fun lt!1276824 () Unit!56098)

(declare-fun choose!21766 (Regex!10567 List!38791 C!21320) Unit!56098)

(assert (=> d!1077117 (= lt!1276824 (choose!21766 (regex!5808 rule!403) lt!1276559 lt!1276574))))

(assert (=> d!1077117 (validRegex!4839 (regex!5808 rule!403))))

(assert (=> d!1077117 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 rule!403) lt!1276559 lt!1276574) lt!1276824)))

(declare-fun bs!573007 () Bool)

(assert (= bs!573007 d!1077117))

(assert (=> bs!573007 m!4174239))

(declare-fun m!4174999 () Bool)

(assert (=> bs!573007 m!4174999))

(declare-fun m!4175001 () Bool)

(assert (=> bs!573007 m!4175001))

(assert (=> b!3666340 d!1077117))

(declare-fun d!1077123 () Bool)

(assert (=> d!1077123 (= (inv!52143 (tag!6592 anOtherTypeRule!33)) (= (mod (str.len (value!185987 (tag!6592 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3666378 d!1077123))

(declare-fun d!1077125 () Bool)

(declare-fun res!1488946 () Bool)

(declare-fun e!2270487 () Bool)

(assert (=> d!1077125 (=> (not res!1488946) (not e!2270487))))

(assert (=> d!1077125 (= res!1488946 (semiInverseModEq!2477 (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toValue!8104 (transformation!5808 anOtherTypeRule!33))))))

(assert (=> d!1077125 (= (inv!52147 (transformation!5808 anOtherTypeRule!33)) e!2270487)))

(declare-fun b!3666964 () Bool)

(assert (=> b!3666964 (= e!2270487 (equivClasses!2376 (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toValue!8104 (transformation!5808 anOtherTypeRule!33))))))

(assert (= (and d!1077125 res!1488946) b!3666964))

(declare-fun m!4175003 () Bool)

(assert (=> d!1077125 m!4175003))

(declare-fun m!4175005 () Bool)

(assert (=> b!3666964 m!4175005))

(assert (=> b!3666378 d!1077125))

(declare-fun bm!265398 () Bool)

(declare-fun call!265403 () Bool)

(assert (=> bm!265398 (= call!265403 (isEmpty!22943 lt!1276559))))

(declare-fun b!3666965 () Bool)

(declare-fun e!2270488 () Bool)

(assert (=> b!3666965 (= e!2270488 (nullable!3677 (regex!5808 rule!403)))))

(declare-fun b!3666966 () Bool)

(declare-fun e!2270493 () Bool)

(declare-fun e!2270490 () Bool)

(assert (=> b!3666966 (= e!2270493 e!2270490)))

(declare-fun c!633997 () Bool)

(assert (=> b!3666966 (= c!633997 ((_ is EmptyLang!10567) (regex!5808 rule!403)))))

(declare-fun b!3666967 () Bool)

(declare-fun res!1488947 () Bool)

(declare-fun e!2270491 () Bool)

(assert (=> b!3666967 (=> res!1488947 e!2270491)))

(assert (=> b!3666967 (= res!1488947 (not ((_ is ElementMatch!10567) (regex!5808 rule!403))))))

(assert (=> b!3666967 (= e!2270490 e!2270491)))

(declare-fun b!3666968 () Bool)

(declare-fun e!2270489 () Bool)

(assert (=> b!3666968 (= e!2270489 (not (= (head!7842 lt!1276559) (c!633854 (regex!5808 rule!403)))))))

(declare-fun b!3666969 () Bool)

(declare-fun res!1488949 () Bool)

(assert (=> b!3666969 (=> res!1488949 e!2270489)))

(assert (=> b!3666969 (= res!1488949 (not (isEmpty!22943 (tail!5675 lt!1276559))))))

(declare-fun b!3666970 () Bool)

(declare-fun e!2270494 () Bool)

(assert (=> b!3666970 (= e!2270491 e!2270494)))

(declare-fun res!1488954 () Bool)

(assert (=> b!3666970 (=> (not res!1488954) (not e!2270494))))

(declare-fun lt!1276825 () Bool)

(assert (=> b!3666970 (= res!1488954 (not lt!1276825))))

(declare-fun b!3666971 () Bool)

(assert (=> b!3666971 (= e!2270494 e!2270489)))

(declare-fun res!1488951 () Bool)

(assert (=> b!3666971 (=> res!1488951 e!2270489)))

(assert (=> b!3666971 (= res!1488951 call!265403)))

(declare-fun b!3666972 () Bool)

(declare-fun e!2270492 () Bool)

(assert (=> b!3666972 (= e!2270492 (= (head!7842 lt!1276559) (c!633854 (regex!5808 rule!403))))))

(declare-fun b!3666973 () Bool)

(declare-fun res!1488948 () Bool)

(assert (=> b!3666973 (=> (not res!1488948) (not e!2270492))))

(assert (=> b!3666973 (= res!1488948 (isEmpty!22943 (tail!5675 lt!1276559)))))

(declare-fun b!3666975 () Bool)

(declare-fun res!1488950 () Bool)

(assert (=> b!3666975 (=> res!1488950 e!2270491)))

(assert (=> b!3666975 (= res!1488950 e!2270492)))

(declare-fun res!1488953 () Bool)

(assert (=> b!3666975 (=> (not res!1488953) (not e!2270492))))

(assert (=> b!3666975 (= res!1488953 lt!1276825)))

(declare-fun b!3666976 () Bool)

(assert (=> b!3666976 (= e!2270493 (= lt!1276825 call!265403))))

(declare-fun b!3666977 () Bool)

(assert (=> b!3666977 (= e!2270490 (not lt!1276825))))

(declare-fun b!3666978 () Bool)

(assert (=> b!3666978 (= e!2270488 (matchR!5136 (derivativeStep!3226 (regex!5808 rule!403) (head!7842 lt!1276559)) (tail!5675 lt!1276559)))))

(declare-fun d!1077127 () Bool)

(assert (=> d!1077127 e!2270493))

(declare-fun c!633998 () Bool)

(assert (=> d!1077127 (= c!633998 ((_ is EmptyExpr!10567) (regex!5808 rule!403)))))

(assert (=> d!1077127 (= lt!1276825 e!2270488)))

(declare-fun c!633996 () Bool)

(assert (=> d!1077127 (= c!633996 (isEmpty!22943 lt!1276559))))

(assert (=> d!1077127 (validRegex!4839 (regex!5808 rule!403))))

(assert (=> d!1077127 (= (matchR!5136 (regex!5808 rule!403) lt!1276559) lt!1276825)))

(declare-fun b!3666974 () Bool)

(declare-fun res!1488952 () Bool)

(assert (=> b!3666974 (=> (not res!1488952) (not e!2270492))))

(assert (=> b!3666974 (= res!1488952 (not call!265403))))

(assert (= (and d!1077127 c!633996) b!3666965))

(assert (= (and d!1077127 (not c!633996)) b!3666978))

(assert (= (and d!1077127 c!633998) b!3666976))

(assert (= (and d!1077127 (not c!633998)) b!3666966))

(assert (= (and b!3666966 c!633997) b!3666977))

(assert (= (and b!3666966 (not c!633997)) b!3666967))

(assert (= (and b!3666967 (not res!1488947)) b!3666975))

(assert (= (and b!3666975 res!1488953) b!3666974))

(assert (= (and b!3666974 res!1488952) b!3666973))

(assert (= (and b!3666973 res!1488948) b!3666972))

(assert (= (and b!3666975 (not res!1488950)) b!3666970))

(assert (= (and b!3666970 res!1488954) b!3666971))

(assert (= (and b!3666971 (not res!1488951)) b!3666969))

(assert (= (and b!3666969 (not res!1488949)) b!3666968))

(assert (= (or b!3666976 b!3666971 b!3666974) bm!265398))

(assert (=> b!3666973 m!4174411))

(assert (=> b!3666973 m!4174411))

(assert (=> b!3666973 m!4174413))

(assert (=> b!3666972 m!4174415))

(assert (=> b!3666968 m!4174415))

(assert (=> b!3666969 m!4174411))

(assert (=> b!3666969 m!4174411))

(assert (=> b!3666969 m!4174413))

(assert (=> bm!265398 m!4174417))

(declare-fun m!4175007 () Bool)

(assert (=> b!3666965 m!4175007))

(assert (=> d!1077127 m!4174417))

(assert (=> d!1077127 m!4175001))

(assert (=> b!3666978 m!4174415))

(assert (=> b!3666978 m!4174415))

(declare-fun m!4175009 () Bool)

(assert (=> b!3666978 m!4175009))

(assert (=> b!3666978 m!4174411))

(assert (=> b!3666978 m!4175009))

(assert (=> b!3666978 m!4174411))

(declare-fun m!4175011 () Bool)

(assert (=> b!3666978 m!4175011))

(assert (=> b!3666359 d!1077127))

(declare-fun d!1077129 () Bool)

(declare-fun res!1488959 () Bool)

(declare-fun e!2270497 () Bool)

(assert (=> d!1077129 (=> (not res!1488959) (not e!2270497))))

(assert (=> d!1077129 (= res!1488959 (validRegex!4839 (regex!5808 rule!403)))))

(assert (=> d!1077129 (= (ruleValid!2072 thiss!23823 rule!403) e!2270497)))

(declare-fun b!3666983 () Bool)

(declare-fun res!1488960 () Bool)

(assert (=> b!3666983 (=> (not res!1488960) (not e!2270497))))

(assert (=> b!3666983 (= res!1488960 (not (nullable!3677 (regex!5808 rule!403))))))

(declare-fun b!3666984 () Bool)

(assert (=> b!3666984 (= e!2270497 (not (= (tag!6592 rule!403) (String!43525 ""))))))

(assert (= (and d!1077129 res!1488959) b!3666983))

(assert (= (and b!3666983 res!1488960) b!3666984))

(assert (=> d!1077129 m!4175001))

(assert (=> b!3666983 m!4175007))

(assert (=> b!3666359 d!1077129))

(declare-fun d!1077131 () Bool)

(assert (=> d!1077131 (ruleValid!2072 thiss!23823 rule!403)))

(declare-fun lt!1276828 () Unit!56098)

(declare-fun choose!21767 (LexerInterface!5397 Rule!11416 List!38793) Unit!56098)

(assert (=> d!1077131 (= lt!1276828 (choose!21767 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1077131 (contains!7684 rules!3307 rule!403)))

(assert (=> d!1077131 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1226 thiss!23823 rule!403 rules!3307) lt!1276828)))

(declare-fun bs!573008 () Bool)

(assert (= bs!573008 d!1077131))

(assert (=> bs!573008 m!4174241))

(declare-fun m!4175013 () Bool)

(assert (=> bs!573008 m!4175013))

(assert (=> bs!573008 m!4174259))

(assert (=> b!3666359 d!1077131))

(declare-fun d!1077133 () Bool)

(declare-fun lt!1276829 () Bool)

(assert (=> d!1077133 (= lt!1276829 (select (content!5595 call!265352) lt!1276569))))

(declare-fun e!2270499 () Bool)

(assert (=> d!1077133 (= lt!1276829 e!2270499)))

(declare-fun res!1488961 () Bool)

(assert (=> d!1077133 (=> (not res!1488961) (not e!2270499))))

(assert (=> d!1077133 (= res!1488961 ((_ is Cons!38667) call!265352))))

(assert (=> d!1077133 (= (contains!7683 call!265352 lt!1276569) lt!1276829)))

(declare-fun b!3666985 () Bool)

(declare-fun e!2270498 () Bool)

(assert (=> b!3666985 (= e!2270499 e!2270498)))

(declare-fun res!1488962 () Bool)

(assert (=> b!3666985 (=> res!1488962 e!2270498)))

(assert (=> b!3666985 (= res!1488962 (= (h!44087 call!265352) lt!1276569))))

(declare-fun b!3666986 () Bool)

(assert (=> b!3666986 (= e!2270498 (contains!7683 (t!299186 call!265352) lt!1276569))))

(assert (= (and d!1077133 res!1488961) b!3666985))

(assert (= (and b!3666985 (not res!1488962)) b!3666986))

(declare-fun m!4175015 () Bool)

(assert (=> d!1077133 m!4175015))

(declare-fun m!4175017 () Bool)

(assert (=> d!1077133 m!4175017))

(declare-fun m!4175019 () Bool)

(assert (=> b!3666986 m!4175019))

(assert (=> bm!265347 d!1077133))

(declare-fun d!1077135 () Bool)

(assert (=> d!1077135 (= (inv!52143 (tag!6592 rule!403)) (= (mod (str.len (value!185987 (tag!6592 rule!403))) 2) 0))))

(assert (=> b!3666360 d!1077135))

(declare-fun d!1077137 () Bool)

(declare-fun res!1488963 () Bool)

(declare-fun e!2270500 () Bool)

(assert (=> d!1077137 (=> (not res!1488963) (not e!2270500))))

(assert (=> d!1077137 (= res!1488963 (semiInverseModEq!2477 (toChars!7963 (transformation!5808 rule!403)) (toValue!8104 (transformation!5808 rule!403))))))

(assert (=> d!1077137 (= (inv!52147 (transformation!5808 rule!403)) e!2270500)))

(declare-fun b!3666987 () Bool)

(assert (=> b!3666987 (= e!2270500 (equivClasses!2376 (toChars!7963 (transformation!5808 rule!403)) (toValue!8104 (transformation!5808 rule!403))))))

(assert (= (and d!1077137 res!1488963) b!3666987))

(declare-fun m!4175021 () Bool)

(assert (=> d!1077137 m!4175021))

(declare-fun m!4175023 () Bool)

(assert (=> b!3666987 m!4175023))

(assert (=> b!3666360 d!1077137))

(declare-fun d!1077139 () Bool)

(assert (=> d!1077139 (not (contains!7683 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276569))))

(declare-fun lt!1276830 () Unit!56098)

(assert (=> d!1077139 (= lt!1276830 (choose!21762 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) anOtherTypeRule!33 lt!1276569))))

(assert (=> d!1077139 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1077139 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!454 thiss!23823 rules!3307 rules!3307 (rule!8626 (_1!22402 lt!1276551)) anOtherTypeRule!33 lt!1276569) lt!1276830)))

(declare-fun bs!573009 () Bool)

(assert (= bs!573009 d!1077139))

(assert (=> bs!573009 m!4174237))

(assert (=> bs!573009 m!4174237))

(declare-fun m!4175025 () Bool)

(assert (=> bs!573009 m!4175025))

(declare-fun m!4175027 () Bool)

(assert (=> bs!573009 m!4175027))

(assert (=> bs!573009 m!4174255))

(assert (=> b!3666342 d!1077139))

(declare-fun d!1077141 () Bool)

(assert (=> d!1077141 (not (contains!7683 (usedCharacters!1020 (regex!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276569))))

(declare-fun lt!1276831 () Unit!56098)

(assert (=> d!1077141 (= lt!1276831 (choose!21747 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8626 (_1!22402 lt!1276551)) lt!1276569))))

(assert (=> d!1077141 (rulesInvariant!4794 thiss!23823 rules!3307)))

(assert (=> d!1077141 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!336 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8626 (_1!22402 lt!1276551)) lt!1276569) lt!1276831)))

(declare-fun bs!573010 () Bool)

(assert (= bs!573010 d!1077141))

(assert (=> bs!573010 m!4174237))

(assert (=> bs!573010 m!4174237))

(assert (=> bs!573010 m!4175025))

(declare-fun m!4175029 () Bool)

(assert (=> bs!573010 m!4175029))

(assert (=> bs!573010 m!4174255))

(assert (=> b!3666379 d!1077141))

(declare-fun d!1077143 () Bool)

(assert (=> d!1077143 (not (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573))))

(declare-fun lt!1276832 () Unit!56098)

(assert (=> d!1077143 (= lt!1276832 (choose!21766 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276569))))

(assert (=> d!1077143 (validRegex!4839 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1077143 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276569) lt!1276832)))

(declare-fun bs!573011 () Bool)

(assert (= bs!573011 d!1077143))

(assert (=> bs!573011 m!4174205))

(declare-fun m!4175031 () Bool)

(assert (=> bs!573011 m!4175031))

(assert (=> bs!573011 m!4174399))

(assert (=> bm!265342 d!1077143))

(declare-fun d!1077145 () Bool)

(assert (=> d!1077145 (not (matchR!5136 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573))))

(declare-fun lt!1276833 () Unit!56098)

(assert (=> d!1077145 (= lt!1276833 (choose!21766 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276574))))

(assert (=> d!1077145 (validRegex!4839 (regex!5808 (rule!8626 (_1!22402 lt!1276551))))))

(assert (=> d!1077145 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!756 (regex!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276573 lt!1276574) lt!1276833)))

(declare-fun bs!573012 () Bool)

(assert (= bs!573012 d!1077145))

(assert (=> bs!573012 m!4174205))

(declare-fun m!4175033 () Bool)

(assert (=> bs!573012 m!4175033))

(assert (=> bs!573012 m!4174399))

(assert (=> bm!265345 d!1077145))

(declare-fun b!3667168 () Bool)

(declare-fun e!2270599 () Bool)

(assert (=> b!3667168 (= e!2270599 true)))

(declare-fun d!1077147 () Bool)

(assert (=> d!1077147 e!2270599))

(assert (= d!1077147 b!3667168))

(declare-fun order!21371 () Int)

(declare-fun lambda!124648 () Int)

(declare-fun order!21373 () Int)

(declare-fun dynLambda!16914 (Int Int) Int)

(declare-fun dynLambda!16915 (Int Int) Int)

(assert (=> b!3667168 (< (dynLambda!16914 order!21371 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) (dynLambda!16915 order!21373 lambda!124648))))

(declare-fun order!21375 () Int)

(declare-fun dynLambda!16916 (Int Int) Int)

(assert (=> b!3667168 (< (dynLambda!16916 order!21375 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) (dynLambda!16915 order!21373 lambda!124648))))

(assert (=> d!1077147 (= (list!14354 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552))) (list!14354 lt!1276552))))

(declare-fun lt!1276944 () Unit!56098)

(declare-fun ForallOf!734 (Int BalanceConc!23268) Unit!56098)

(assert (=> d!1077147 (= lt!1276944 (ForallOf!734 lambda!124648 lt!1276552))))

(assert (=> d!1077147 (= (lemmaSemiInverse!1557 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552) lt!1276944)))

(declare-fun b_lambda!108875 () Bool)

(assert (=> (not b_lambda!108875) (not d!1077147)))

(declare-fun t!299274 () Bool)

(declare-fun tb!212233 () Bool)

(assert (=> (and b!3666380 (= (toChars!7963 (transformation!5808 (rule!8626 token!511))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299274) tb!212233))

(declare-fun tp!1116240 () Bool)

(declare-fun e!2270600 () Bool)

(declare-fun b!3667169 () Bool)

(assert (=> b!3667169 (= e!2270600 (and (inv!52150 (c!633855 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552)))) tp!1116240))))

(declare-fun result!258312 () Bool)

(assert (=> tb!212233 (= result!258312 (and (inv!52151 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552))) e!2270600))))

(assert (= tb!212233 b!3667169))

(declare-fun m!4175273 () Bool)

(assert (=> b!3667169 m!4175273))

(declare-fun m!4175275 () Bool)

(assert (=> tb!212233 m!4175275))

(assert (=> d!1077147 t!299274))

(declare-fun b_and!272791 () Bool)

(assert (= b_and!272707 (and (=> t!299274 result!258312) b_and!272791)))

(declare-fun t!299276 () Bool)

(declare-fun tb!212235 () Bool)

(assert (=> (and b!3666341 (= (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299276) tb!212235))

(declare-fun result!258314 () Bool)

(assert (= result!258314 result!258312))

(assert (=> d!1077147 t!299276))

(declare-fun b_and!272793 () Bool)

(assert (= b_and!272709 (and (=> t!299276 result!258314) b_and!272793)))

(declare-fun t!299278 () Bool)

(declare-fun tb!212237 () Bool)

(assert (=> (and b!3666372 (= (toChars!7963 (transformation!5808 rule!403)) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299278) tb!212237))

(declare-fun result!258316 () Bool)

(assert (= result!258316 result!258312))

(assert (=> d!1077147 t!299278))

(declare-fun b_and!272795 () Bool)

(assert (= b_and!272711 (and (=> t!299278 result!258316) b_and!272795)))

(declare-fun t!299280 () Bool)

(declare-fun tb!212239 () Bool)

(assert (=> (and b!3666348 (= (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299280) tb!212239))

(declare-fun result!258318 () Bool)

(assert (= result!258318 result!258312))

(assert (=> d!1077147 t!299280))

(declare-fun b_and!272797 () Bool)

(assert (= b_and!272713 (and (=> t!299280 result!258318) b_and!272797)))

(declare-fun b_lambda!108877 () Bool)

(assert (=> (not b_lambda!108877) (not d!1077147)))

(declare-fun t!299282 () Bool)

(declare-fun tb!212241 () Bool)

(assert (=> (and b!3666380 (= (toValue!8104 (transformation!5808 (rule!8626 token!511))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299282) tb!212241))

(declare-fun result!258320 () Bool)

(assert (=> tb!212241 (= result!258320 (inv!21 (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552)))))

(declare-fun m!4175277 () Bool)

(assert (=> tb!212241 m!4175277))

(assert (=> d!1077147 t!299282))

(declare-fun b_and!272799 () Bool)

(assert (= b_and!272763 (and (=> t!299282 result!258320) b_and!272799)))

(declare-fun t!299284 () Bool)

(declare-fun tb!212243 () Bool)

(assert (=> (and b!3666341 (= (toValue!8104 (transformation!5808 anOtherTypeRule!33)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299284) tb!212243))

(declare-fun result!258322 () Bool)

(assert (= result!258322 result!258320))

(assert (=> d!1077147 t!299284))

(declare-fun b_and!272801 () Bool)

(assert (= b_and!272765 (and (=> t!299284 result!258322) b_and!272801)))

(declare-fun t!299286 () Bool)

(declare-fun tb!212245 () Bool)

(assert (=> (and b!3666372 (= (toValue!8104 (transformation!5808 rule!403)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299286) tb!212245))

(declare-fun result!258324 () Bool)

(assert (= result!258324 result!258320))

(assert (=> d!1077147 t!299286))

(declare-fun b_and!272803 () Bool)

(assert (= b_and!272767 (and (=> t!299286 result!258324) b_and!272803)))

(declare-fun tb!212247 () Bool)

(declare-fun t!299288 () Bool)

(assert (=> (and b!3666348 (= (toValue!8104 (transformation!5808 (h!44089 rules!3307))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299288) tb!212247))

(declare-fun result!258326 () Bool)

(assert (= result!258326 result!258320))

(assert (=> d!1077147 t!299288))

(declare-fun b_and!272805 () Bool)

(assert (= b_and!272769 (and (=> t!299288 result!258326) b_and!272805)))

(declare-fun m!4175279 () Bool)

(assert (=> d!1077147 m!4175279))

(declare-fun m!4175281 () Bool)

(assert (=> d!1077147 m!4175281))

(assert (=> d!1077147 m!4175279))

(assert (=> d!1077147 m!4175281))

(declare-fun m!4175283 () Bool)

(assert (=> d!1077147 m!4175283))

(declare-fun m!4175285 () Bool)

(assert (=> d!1077147 m!4175285))

(assert (=> d!1077147 m!4174277))

(assert (=> b!3666344 d!1077147))

(declare-fun d!1077213 () Bool)

(assert (=> d!1077213 (= (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551))) (fromListB!2013 (originalCharacters!6522 (_1!22402 lt!1276551))))))

(declare-fun bs!573021 () Bool)

(assert (= bs!573021 d!1077213))

(declare-fun m!4175287 () Bool)

(assert (=> bs!573021 m!4175287))

(assert (=> b!3666344 d!1077213))

(declare-fun b!3667176 () Bool)

(declare-fun e!2270606 () Bool)

(assert (=> b!3667176 (= e!2270606 true)))

(declare-fun d!1077215 () Bool)

(assert (=> d!1077215 e!2270606))

(assert (= d!1077215 b!3667176))

(declare-fun order!21377 () Int)

(declare-fun lambda!124651 () Int)

(declare-fun dynLambda!16917 (Int Int) Int)

(assert (=> b!3667176 (< (dynLambda!16914 order!21371 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) (dynLambda!16917 order!21377 lambda!124651))))

(assert (=> b!3667176 (< (dynLambda!16916 order!21375 (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) (dynLambda!16917 order!21377 lambda!124651))))

(assert (=> d!1077215 (= (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551)))))))

(declare-fun lt!1276947 () Unit!56098)

(declare-fun Forall2of!392 (Int BalanceConc!23268 BalanceConc!23268) Unit!56098)

(assert (=> d!1077215 (= lt!1276947 (Forall2of!392 lambda!124651 lt!1276552 (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551)))))))

(assert (=> d!1077215 (= (list!14354 lt!1276552) (list!14354 (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551)))))))

(assert (=> d!1077215 (= (lemmaEqSameImage!991 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552 (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551)))) lt!1276947)))

(declare-fun b_lambda!108879 () Bool)

(assert (=> (not b_lambda!108879) (not d!1077215)))

(assert (=> d!1077215 t!299282))

(declare-fun b_and!272807 () Bool)

(assert (= b_and!272799 (and (=> t!299282 result!258320) b_and!272807)))

(assert (=> d!1077215 t!299284))

(declare-fun b_and!272809 () Bool)

(assert (= b_and!272801 (and (=> t!299284 result!258322) b_and!272809)))

(assert (=> d!1077215 t!299286))

(declare-fun b_and!272811 () Bool)

(assert (= b_and!272803 (and (=> t!299286 result!258324) b_and!272811)))

(assert (=> d!1077215 t!299288))

(declare-fun b_and!272813 () Bool)

(assert (= b_and!272805 (and (=> t!299288 result!258326) b_and!272813)))

(declare-fun b_lambda!108881 () Bool)

(assert (=> (not b_lambda!108881) (not d!1077215)))

(declare-fun t!299290 () Bool)

(declare-fun tb!212249 () Bool)

(assert (=> (and b!3666380 (= (toValue!8104 (transformation!5808 (rule!8626 token!511))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299290) tb!212249))

(declare-fun result!258328 () Bool)

(assert (=> tb!212249 (= result!258328 (inv!21 (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) (seqFromList!4357 (originalCharacters!6522 (_1!22402 lt!1276551))))))))

(declare-fun m!4175289 () Bool)

(assert (=> tb!212249 m!4175289))

(assert (=> d!1077215 t!299290))

(declare-fun b_and!272815 () Bool)

(assert (= b_and!272807 (and (=> t!299290 result!258328) b_and!272815)))

(declare-fun tb!212251 () Bool)

(declare-fun t!299292 () Bool)

(assert (=> (and b!3666341 (= (toValue!8104 (transformation!5808 anOtherTypeRule!33)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299292) tb!212251))

(declare-fun result!258330 () Bool)

(assert (= result!258330 result!258328))

(assert (=> d!1077215 t!299292))

(declare-fun b_and!272817 () Bool)

(assert (= b_and!272809 (and (=> t!299292 result!258330) b_and!272817)))

(declare-fun tb!212253 () Bool)

(declare-fun t!299294 () Bool)

(assert (=> (and b!3666372 (= (toValue!8104 (transformation!5808 rule!403)) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299294) tb!212253))

(declare-fun result!258332 () Bool)

(assert (= result!258332 result!258328))

(assert (=> d!1077215 t!299294))

(declare-fun b_and!272819 () Bool)

(assert (= b_and!272811 (and (=> t!299294 result!258332) b_and!272819)))

(declare-fun t!299296 () Bool)

(declare-fun tb!212255 () Bool)

(assert (=> (and b!3666348 (= (toValue!8104 (transformation!5808 (h!44089 rules!3307))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299296) tb!212255))

(declare-fun result!258334 () Bool)

(assert (= result!258334 result!258328))

(assert (=> d!1077215 t!299296))

(declare-fun b_and!272821 () Bool)

(assert (= b_and!272813 (and (=> t!299296 result!258334) b_and!272821)))

(assert (=> d!1077215 m!4174215))

(declare-fun m!4175291 () Bool)

(assert (=> d!1077215 m!4175291))

(assert (=> d!1077215 m!4174277))

(assert (=> d!1077215 m!4175279))

(assert (=> d!1077215 m!4174215))

(declare-fun m!4175293 () Bool)

(assert (=> d!1077215 m!4175293))

(assert (=> d!1077215 m!4174215))

(declare-fun m!4175295 () Bool)

(assert (=> d!1077215 m!4175295))

(assert (=> b!3666344 d!1077215))

(declare-fun d!1077217 () Bool)

(assert (=> d!1077217 (= (apply!9310 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))) lt!1276552) (dynLambda!16913 (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551)))) lt!1276552))))

(declare-fun b_lambda!108883 () Bool)

(assert (=> (not b_lambda!108883) (not d!1077217)))

(assert (=> d!1077217 t!299282))

(declare-fun b_and!272823 () Bool)

(assert (= b_and!272815 (and (=> t!299282 result!258320) b_and!272823)))

(assert (=> d!1077217 t!299284))

(declare-fun b_and!272825 () Bool)

(assert (= b_and!272817 (and (=> t!299284 result!258322) b_and!272825)))

(assert (=> d!1077217 t!299286))

(declare-fun b_and!272827 () Bool)

(assert (= b_and!272819 (and (=> t!299286 result!258324) b_and!272827)))

(assert (=> d!1077217 t!299288))

(declare-fun b_and!272829 () Bool)

(assert (= b_and!272821 (and (=> t!299288 result!258326) b_and!272829)))

(assert (=> d!1077217 m!4175279))

(assert (=> b!3666344 d!1077217))

(declare-fun d!1077219 () Bool)

(declare-fun lt!1276950 () Int)

(assert (=> d!1077219 (= lt!1276950 (size!29551 (list!14354 lt!1276552)))))

(declare-fun size!29553 (Conc!11827) Int)

(assert (=> d!1077219 (= lt!1276950 (size!29553 (c!633855 lt!1276552)))))

(assert (=> d!1077219 (= (size!29550 lt!1276552) lt!1276950)))

(declare-fun bs!573022 () Bool)

(assert (= bs!573022 d!1077219))

(assert (=> bs!573022 m!4174277))

(assert (=> bs!573022 m!4174277))

(declare-fun m!4175297 () Bool)

(assert (=> bs!573022 m!4175297))

(declare-fun m!4175299 () Bool)

(assert (=> bs!573022 m!4175299))

(assert (=> b!3666344 d!1077219))

(declare-fun d!1077221 () Bool)

(assert (=> d!1077221 (= (size!29549 (_1!22402 lt!1276551)) (size!29551 (originalCharacters!6522 (_1!22402 lt!1276551))))))

(declare-fun Unit!56119 () Unit!56098)

(assert (=> d!1077221 (= (lemmaCharactersSize!853 (_1!22402 lt!1276551)) Unit!56119)))

(declare-fun bs!573023 () Bool)

(assert (= bs!573023 d!1077221))

(declare-fun m!4175301 () Bool)

(assert (=> bs!573023 m!4175301))

(assert (=> b!3666344 d!1077221))

(declare-fun d!1077223 () Bool)

(assert (=> d!1077223 (= lt!1276573 lt!1276559)))

(declare-fun lt!1276953 () Unit!56098)

(declare-fun choose!21769 (List!38791 List!38791 List!38791) Unit!56098)

(assert (=> d!1077223 (= lt!1276953 (choose!21769 lt!1276573 lt!1276559 lt!1276575))))

(assert (=> d!1077223 (isPrefix!3171 lt!1276573 lt!1276575)))

(assert (=> d!1077223 (= (lemmaIsPrefixSameLengthThenSameList!633 lt!1276573 lt!1276559 lt!1276575) lt!1276953)))

(declare-fun bs!573024 () Bool)

(assert (= bs!573024 d!1077223))

(declare-fun m!4175303 () Bool)

(assert (=> bs!573024 m!4175303))

(assert (=> bs!573024 m!4174273))

(assert (=> b!3666382 d!1077223))

(declare-fun d!1077225 () Bool)

(declare-fun lt!1276954 () Int)

(assert (=> d!1077225 (= lt!1276954 (size!29551 (list!14354 lt!1276555)))))

(assert (=> d!1077225 (= lt!1276954 (size!29553 (c!633855 lt!1276555)))))

(assert (=> d!1077225 (= (size!29550 lt!1276555) lt!1276954)))

(declare-fun bs!573025 () Bool)

(assert (= bs!573025 d!1077225))

(assert (=> bs!573025 m!4174303))

(assert (=> bs!573025 m!4174303))

(declare-fun m!4175305 () Bool)

(assert (=> bs!573025 m!4175305))

(declare-fun m!4175307 () Bool)

(assert (=> bs!573025 m!4175307))

(assert (=> b!3666382 d!1077225))

(declare-fun d!1077227 () Bool)

(declare-fun lt!1276955 () Bool)

(assert (=> d!1077227 (= lt!1276955 (select (content!5595 lt!1276561) lt!1276574))))

(declare-fun e!2270609 () Bool)

(assert (=> d!1077227 (= lt!1276955 e!2270609)))

(declare-fun res!1489056 () Bool)

(assert (=> d!1077227 (=> (not res!1489056) (not e!2270609))))

(assert (=> d!1077227 (= res!1489056 ((_ is Cons!38667) lt!1276561))))

(assert (=> d!1077227 (= (contains!7683 lt!1276561 lt!1276574) lt!1276955)))

(declare-fun b!3667177 () Bool)

(declare-fun e!2270608 () Bool)

(assert (=> b!3667177 (= e!2270609 e!2270608)))

(declare-fun res!1489057 () Bool)

(assert (=> b!3667177 (=> res!1489057 e!2270608)))

(assert (=> b!3667177 (= res!1489057 (= (h!44087 lt!1276561) lt!1276574))))

(declare-fun b!3667178 () Bool)

(assert (=> b!3667178 (= e!2270608 (contains!7683 (t!299186 lt!1276561) lt!1276574))))

(assert (= (and d!1077227 res!1489056) b!3667177))

(assert (= (and b!3667177 (not res!1489057)) b!3667178))

(assert (=> d!1077227 m!4174929))

(declare-fun m!4175309 () Bool)

(assert (=> d!1077227 m!4175309))

(declare-fun m!4175311 () Bool)

(assert (=> b!3667178 m!4175311))

(assert (=> b!3666382 d!1077227))

(declare-fun d!1077229 () Bool)

(assert (=> d!1077229 (= (head!7842 lt!1276573) (h!44087 lt!1276573))))

(assert (=> b!3666382 d!1077229))

(declare-fun d!1077231 () Bool)

(declare-fun lt!1276956 () Bool)

(assert (=> d!1077231 (= lt!1276956 (select (content!5595 call!265348) lt!1276574))))

(declare-fun e!2270611 () Bool)

(assert (=> d!1077231 (= lt!1276956 e!2270611)))

(declare-fun res!1489058 () Bool)

(assert (=> d!1077231 (=> (not res!1489058) (not e!2270611))))

(assert (=> d!1077231 (= res!1489058 ((_ is Cons!38667) call!265348))))

(assert (=> d!1077231 (= (contains!7683 call!265348 lt!1276574) lt!1276956)))

(declare-fun b!3667179 () Bool)

(declare-fun e!2270610 () Bool)

(assert (=> b!3667179 (= e!2270611 e!2270610)))

(declare-fun res!1489059 () Bool)

(assert (=> b!3667179 (=> res!1489059 e!2270610)))

(assert (=> b!3667179 (= res!1489059 (= (h!44087 call!265348) lt!1276574))))

(declare-fun b!3667180 () Bool)

(assert (=> b!3667180 (= e!2270610 (contains!7683 (t!299186 call!265348) lt!1276574))))

(assert (= (and d!1077231 res!1489058) b!3667179))

(assert (= (and b!3667179 (not res!1489059)) b!3667180))

(declare-fun m!4175313 () Bool)

(assert (=> d!1077231 m!4175313))

(declare-fun m!4175315 () Bool)

(assert (=> d!1077231 m!4175315))

(declare-fun m!4175317 () Bool)

(assert (=> b!3667180 m!4175317))

(assert (=> bm!265346 d!1077231))

(assert (=> bm!265343 d!1076997))

(declare-fun d!1077233 () Bool)

(assert (=> d!1077233 (= (isDefined!6476 lt!1276527) (not (isEmpty!22945 lt!1276527)))))

(declare-fun bs!573026 () Bool)

(assert (= bs!573026 d!1077233))

(declare-fun m!4175319 () Bool)

(assert (=> bs!573026 m!4175319))

(assert (=> b!3666363 d!1077233))

(declare-fun b!3667181 () Bool)

(declare-fun e!2270613 () Bool)

(declare-fun lt!1276957 () Option!8244)

(assert (=> b!3667181 (= e!2270613 (contains!7684 rules!3307 (rule!8626 (_1!22402 (get!12758 lt!1276957)))))))

(declare-fun b!3667182 () Bool)

(declare-fun e!2270614 () Option!8244)

(declare-fun lt!1276959 () Option!8244)

(declare-fun lt!1276958 () Option!8244)

(assert (=> b!3667182 (= e!2270614 (ite (and ((_ is None!8243) lt!1276959) ((_ is None!8243) lt!1276958)) None!8243 (ite ((_ is None!8243) lt!1276958) lt!1276959 (ite ((_ is None!8243) lt!1276959) lt!1276958 (ite (>= (size!29549 (_1!22402 (v!38143 lt!1276959))) (size!29549 (_1!22402 (v!38143 lt!1276958)))) lt!1276959 lt!1276958)))))))

(declare-fun call!265412 () Option!8244)

(assert (=> b!3667182 (= lt!1276959 call!265412)))

(assert (=> b!3667182 (= lt!1276958 (maxPrefix!2931 thiss!23823 (t!299188 rules!3307) lt!1276559))))

(declare-fun b!3667183 () Bool)

(declare-fun e!2270612 () Bool)

(assert (=> b!3667183 (= e!2270612 e!2270613)))

(declare-fun res!1489062 () Bool)

(assert (=> b!3667183 (=> (not res!1489062) (not e!2270613))))

(assert (=> b!3667183 (= res!1489062 (isDefined!6476 lt!1276957))))

(declare-fun b!3667184 () Bool)

(declare-fun res!1489065 () Bool)

(assert (=> b!3667184 (=> (not res!1489065) (not e!2270613))))

(assert (=> b!3667184 (= res!1489065 (= (value!185988 (_1!22402 (get!12758 lt!1276957))) (apply!9310 (transformation!5808 (rule!8626 (_1!22402 (get!12758 lt!1276957)))) (seqFromList!4357 (originalCharacters!6522 (_1!22402 (get!12758 lt!1276957)))))))))

(declare-fun b!3667186 () Bool)

(declare-fun res!1489061 () Bool)

(assert (=> b!3667186 (=> (not res!1489061) (not e!2270613))))

(assert (=> b!3667186 (= res!1489061 (< (size!29551 (_2!22402 (get!12758 lt!1276957))) (size!29551 lt!1276559)))))

(declare-fun bm!265407 () Bool)

(assert (=> bm!265407 (= call!265412 (maxPrefixOneRule!2069 thiss!23823 (h!44089 rules!3307) lt!1276559))))

(declare-fun b!3667187 () Bool)

(declare-fun res!1489060 () Bool)

(assert (=> b!3667187 (=> (not res!1489060) (not e!2270613))))

(assert (=> b!3667187 (= res!1489060 (matchR!5136 (regex!5808 (rule!8626 (_1!22402 (get!12758 lt!1276957)))) (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276957))))))))

(declare-fun b!3667188 () Bool)

(assert (=> b!3667188 (= e!2270614 call!265412)))

(declare-fun b!3667189 () Bool)

(declare-fun res!1489064 () Bool)

(assert (=> b!3667189 (=> (not res!1489064) (not e!2270613))))

(assert (=> b!3667189 (= res!1489064 (= (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276957)))) (originalCharacters!6522 (_1!22402 (get!12758 lt!1276957)))))))

(declare-fun d!1077235 () Bool)

(assert (=> d!1077235 e!2270612))

(declare-fun res!1489063 () Bool)

(assert (=> d!1077235 (=> res!1489063 e!2270612)))

(assert (=> d!1077235 (= res!1489063 (isEmpty!22945 lt!1276957))))

(assert (=> d!1077235 (= lt!1276957 e!2270614)))

(declare-fun c!634021 () Bool)

(assert (=> d!1077235 (= c!634021 (and ((_ is Cons!38669) rules!3307) ((_ is Nil!38669) (t!299188 rules!3307))))))

(declare-fun lt!1276960 () Unit!56098)

(declare-fun lt!1276961 () Unit!56098)

(assert (=> d!1077235 (= lt!1276960 lt!1276961)))

(assert (=> d!1077235 (isPrefix!3171 lt!1276559 lt!1276559)))

(assert (=> d!1077235 (= lt!1276961 (lemmaIsPrefixRefl!1999 lt!1276559 lt!1276559))))

(assert (=> d!1077235 (rulesValidInductive!2062 thiss!23823 rules!3307)))

(assert (=> d!1077235 (= (maxPrefix!2931 thiss!23823 rules!3307 lt!1276559) lt!1276957)))

(declare-fun b!3667185 () Bool)

(declare-fun res!1489066 () Bool)

(assert (=> b!3667185 (=> (not res!1489066) (not e!2270613))))

(assert (=> b!3667185 (= res!1489066 (= (++!9624 (list!14354 (charsOf!3822 (_1!22402 (get!12758 lt!1276957)))) (_2!22402 (get!12758 lt!1276957))) lt!1276559))))

(assert (= (and d!1077235 c!634021) b!3667188))

(assert (= (and d!1077235 (not c!634021)) b!3667182))

(assert (= (or b!3667188 b!3667182) bm!265407))

(assert (= (and d!1077235 (not res!1489063)) b!3667183))

(assert (= (and b!3667183 res!1489062) b!3667189))

(assert (= (and b!3667189 res!1489064) b!3667186))

(assert (= (and b!3667186 res!1489061) b!3667185))

(assert (= (and b!3667185 res!1489066) b!3667184))

(assert (= (and b!3667184 res!1489065) b!3667187))

(assert (= (and b!3667187 res!1489060) b!3667181))

(declare-fun m!4175321 () Bool)

(assert (=> d!1077235 m!4175321))

(assert (=> d!1077235 m!4174441))

(declare-fun m!4175323 () Bool)

(assert (=> d!1077235 m!4175323))

(assert (=> d!1077235 m!4174609))

(declare-fun m!4175325 () Bool)

(assert (=> b!3667187 m!4175325))

(declare-fun m!4175327 () Bool)

(assert (=> b!3667187 m!4175327))

(assert (=> b!3667187 m!4175327))

(declare-fun m!4175329 () Bool)

(assert (=> b!3667187 m!4175329))

(assert (=> b!3667187 m!4175329))

(declare-fun m!4175331 () Bool)

(assert (=> b!3667187 m!4175331))

(assert (=> b!3667185 m!4175325))

(assert (=> b!3667185 m!4175327))

(assert (=> b!3667185 m!4175327))

(assert (=> b!3667185 m!4175329))

(assert (=> b!3667185 m!4175329))

(declare-fun m!4175333 () Bool)

(assert (=> b!3667185 m!4175333))

(declare-fun m!4175335 () Bool)

(assert (=> b!3667182 m!4175335))

(declare-fun m!4175337 () Bool)

(assert (=> bm!265407 m!4175337))

(declare-fun m!4175339 () Bool)

(assert (=> b!3667183 m!4175339))

(assert (=> b!3667186 m!4175325))

(declare-fun m!4175341 () Bool)

(assert (=> b!3667186 m!4175341))

(assert (=> b!3667186 m!4174457))

(assert (=> b!3667181 m!4175325))

(declare-fun m!4175343 () Bool)

(assert (=> b!3667181 m!4175343))

(assert (=> b!3667189 m!4175325))

(assert (=> b!3667189 m!4175327))

(assert (=> b!3667189 m!4175327))

(assert (=> b!3667189 m!4175329))

(assert (=> b!3667184 m!4175325))

(declare-fun m!4175345 () Bool)

(assert (=> b!3667184 m!4175345))

(assert (=> b!3667184 m!4175345))

(declare-fun m!4175347 () Bool)

(assert (=> b!3667184 m!4175347))

(assert (=> b!3666363 d!1077235))

(declare-fun d!1077237 () Bool)

(assert (=> d!1077237 (= (list!14354 lt!1276555) (list!14356 (c!633855 lt!1276555)))))

(declare-fun bs!573027 () Bool)

(assert (= bs!573027 d!1077237))

(declare-fun m!4175349 () Bool)

(assert (=> bs!573027 m!4175349))

(assert (=> b!3666363 d!1077237))

(declare-fun d!1077239 () Bool)

(declare-fun lt!1276962 () BalanceConc!23268)

(assert (=> d!1077239 (= (list!14354 lt!1276962) (originalCharacters!6522 token!511))))

(assert (=> d!1077239 (= lt!1276962 (dynLambda!16907 (toChars!7963 (transformation!5808 (rule!8626 token!511))) (value!185988 token!511)))))

(assert (=> d!1077239 (= (charsOf!3822 token!511) lt!1276962)))

(declare-fun b_lambda!108885 () Bool)

(assert (=> (not b_lambda!108885) (not d!1077239)))

(assert (=> d!1077239 t!299198))

(declare-fun b_and!272831 () Bool)

(assert (= b_and!272791 (and (=> t!299198 result!258224) b_and!272831)))

(assert (=> d!1077239 t!299200))

(declare-fun b_and!272833 () Bool)

(assert (= b_and!272793 (and (=> t!299200 result!258228) b_and!272833)))

(assert (=> d!1077239 t!299202))

(declare-fun b_and!272835 () Bool)

(assert (= b_and!272795 (and (=> t!299202 result!258230) b_and!272835)))

(assert (=> d!1077239 t!299204))

(declare-fun b_and!272837 () Bool)

(assert (= b_and!272797 (and (=> t!299204 result!258232) b_and!272837)))

(declare-fun m!4175351 () Bool)

(assert (=> d!1077239 m!4175351))

(assert (=> d!1077239 m!4174509))

(assert (=> b!3666363 d!1077239))

(declare-fun b!3667201 () Bool)

(declare-fun e!2270617 () Bool)

(declare-fun tp!1116255 () Bool)

(declare-fun tp!1116251 () Bool)

(assert (=> b!3667201 (= e!2270617 (and tp!1116255 tp!1116251))))

(assert (=> b!3666360 (= tp!1116180 e!2270617)))

(declare-fun b!3667203 () Bool)

(declare-fun tp!1116252 () Bool)

(declare-fun tp!1116254 () Bool)

(assert (=> b!3667203 (= e!2270617 (and tp!1116252 tp!1116254))))

(declare-fun b!3667202 () Bool)

(declare-fun tp!1116253 () Bool)

(assert (=> b!3667202 (= e!2270617 tp!1116253)))

(declare-fun b!3667200 () Bool)

(assert (=> b!3667200 (= e!2270617 tp_is_empty!18217)))

(assert (= (and b!3666360 ((_ is ElementMatch!10567) (regex!5808 rule!403))) b!3667200))

(assert (= (and b!3666360 ((_ is Concat!16606) (regex!5808 rule!403))) b!3667201))

(assert (= (and b!3666360 ((_ is Star!10567) (regex!5808 rule!403))) b!3667202))

(assert (= (and b!3666360 ((_ is Union!10567) (regex!5808 rule!403))) b!3667203))

(declare-fun b!3667205 () Bool)

(declare-fun e!2270618 () Bool)

(declare-fun tp!1116260 () Bool)

(declare-fun tp!1116256 () Bool)

(assert (=> b!3667205 (= e!2270618 (and tp!1116260 tp!1116256))))

(assert (=> b!3666375 (= tp!1116173 e!2270618)))

(declare-fun b!3667207 () Bool)

(declare-fun tp!1116257 () Bool)

(declare-fun tp!1116259 () Bool)

(assert (=> b!3667207 (= e!2270618 (and tp!1116257 tp!1116259))))

(declare-fun b!3667206 () Bool)

(declare-fun tp!1116258 () Bool)

(assert (=> b!3667206 (= e!2270618 tp!1116258)))

(declare-fun b!3667204 () Bool)

(assert (=> b!3667204 (= e!2270618 tp_is_empty!18217)))

(assert (= (and b!3666375 ((_ is ElementMatch!10567) (regex!5808 (rule!8626 token!511)))) b!3667204))

(assert (= (and b!3666375 ((_ is Concat!16606) (regex!5808 (rule!8626 token!511)))) b!3667205))

(assert (= (and b!3666375 ((_ is Star!10567) (regex!5808 (rule!8626 token!511)))) b!3667206))

(assert (= (and b!3666375 ((_ is Union!10567) (regex!5808 (rule!8626 token!511)))) b!3667207))

(declare-fun b!3667218 () Bool)

(declare-fun b_free!96821 () Bool)

(declare-fun b_next!97525 () Bool)

(assert (=> b!3667218 (= b_free!96821 (not b_next!97525))))

(declare-fun t!299298 () Bool)

(declare-fun tb!212257 () Bool)

(assert (=> (and b!3667218 (= (toValue!8104 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299298) tb!212257))

(declare-fun result!258340 () Bool)

(assert (= result!258340 result!258328))

(assert (=> d!1077215 t!299298))

(declare-fun t!299300 () Bool)

(declare-fun tb!212259 () Bool)

(assert (=> (and b!3667218 (= (toValue!8104 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299300) tb!212259))

(declare-fun result!258342 () Bool)

(assert (= result!258342 result!258320))

(assert (=> d!1077147 t!299300))

(declare-fun t!299302 () Bool)

(declare-fun tb!212261 () Bool)

(assert (=> (and b!3667218 (= (toValue!8104 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toValue!8104 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299302) tb!212261))

(declare-fun result!258344 () Bool)

(assert (= result!258344 result!258276))

(assert (=> d!1077045 t!299302))

(assert (=> d!1077215 t!299300))

(assert (=> d!1077217 t!299300))

(declare-fun tp!1116271 () Bool)

(declare-fun b_and!272839 () Bool)

(assert (=> b!3667218 (= tp!1116271 (and (=> t!299302 result!258344) (=> t!299298 result!258340) (=> t!299300 result!258342) b_and!272839))))

(declare-fun b_free!96823 () Bool)

(declare-fun b_next!97527 () Bool)

(assert (=> b!3667218 (= b_free!96823 (not b_next!97527))))

(declare-fun t!299304 () Bool)

(declare-fun tb!212263 () Bool)

(assert (=> (and b!3667218 (= (toChars!7963 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toChars!7963 (transformation!5808 (rule!8626 token!511)))) t!299304) tb!212263))

(declare-fun result!258346 () Bool)

(assert (= result!258346 result!258224))

(assert (=> b!3666578 t!299304))

(declare-fun tb!212265 () Bool)

(declare-fun t!299306 () Bool)

(assert (=> (and b!3667218 (= (toChars!7963 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299306) tb!212265))

(declare-fun result!258348 () Bool)

(assert (= result!258348 result!258234))

(assert (=> d!1076967 t!299306))

(declare-fun t!299308 () Bool)

(declare-fun tb!212267 () Bool)

(assert (=> (and b!3667218 (= (toChars!7963 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toChars!7963 (transformation!5808 (rule!8626 (_1!22402 lt!1276551))))) t!299308) tb!212267))

(declare-fun result!258350 () Bool)

(assert (= result!258350 result!258312))

(assert (=> d!1077147 t!299308))

(assert (=> d!1077239 t!299304))

(declare-fun b_and!272841 () Bool)

(declare-fun tp!1116269 () Bool)

(assert (=> b!3667218 (= tp!1116269 (and (=> t!299304 result!258346) (=> t!299306 result!258348) (=> t!299308 result!258350) b_and!272841))))

(declare-fun e!2270627 () Bool)

(assert (=> b!3667218 (= e!2270627 (and tp!1116271 tp!1116269))))

(declare-fun b!3667217 () Bool)

(declare-fun e!2270628 () Bool)

(declare-fun tp!1116272 () Bool)

(assert (=> b!3667217 (= e!2270628 (and tp!1116272 (inv!52143 (tag!6592 (h!44089 (t!299188 rules!3307)))) (inv!52147 (transformation!5808 (h!44089 (t!299188 rules!3307)))) e!2270627))))

(declare-fun b!3667216 () Bool)

(declare-fun e!2270629 () Bool)

(declare-fun tp!1116270 () Bool)

(assert (=> b!3667216 (= e!2270629 (and e!2270628 tp!1116270))))

(assert (=> b!3666370 (= tp!1116176 e!2270629)))

(assert (= b!3667217 b!3667218))

(assert (= b!3667216 b!3667217))

(assert (= (and b!3666370 ((_ is Cons!38669) (t!299188 rules!3307))) b!3667216))

(declare-fun m!4175353 () Bool)

(assert (=> b!3667217 m!4175353))

(declare-fun m!4175355 () Bool)

(assert (=> b!3667217 m!4175355))

(declare-fun b!3667223 () Bool)

(declare-fun e!2270633 () Bool)

(declare-fun tp!1116275 () Bool)

(assert (=> b!3667223 (= e!2270633 (and tp_is_empty!18217 tp!1116275))))

(assert (=> b!3666343 (= tp!1116171 e!2270633)))

(assert (= (and b!3666343 ((_ is Cons!38667) (t!299186 suffix!1395))) b!3667223))

(declare-fun b!3667225 () Bool)

(declare-fun e!2270634 () Bool)

(declare-fun tp!1116280 () Bool)

(declare-fun tp!1116276 () Bool)

(assert (=> b!3667225 (= e!2270634 (and tp!1116280 tp!1116276))))

(assert (=> b!3666367 (= tp!1116183 e!2270634)))

(declare-fun b!3667227 () Bool)

(declare-fun tp!1116277 () Bool)

(declare-fun tp!1116279 () Bool)

(assert (=> b!3667227 (= e!2270634 (and tp!1116277 tp!1116279))))

(declare-fun b!3667226 () Bool)

(declare-fun tp!1116278 () Bool)

(assert (=> b!3667226 (= e!2270634 tp!1116278)))

(declare-fun b!3667224 () Bool)

(assert (=> b!3667224 (= e!2270634 tp_is_empty!18217)))

(assert (= (and b!3666367 ((_ is ElementMatch!10567) (regex!5808 (h!44089 rules!3307)))) b!3667224))

(assert (= (and b!3666367 ((_ is Concat!16606) (regex!5808 (h!44089 rules!3307)))) b!3667225))

(assert (= (and b!3666367 ((_ is Star!10567) (regex!5808 (h!44089 rules!3307)))) b!3667226))

(assert (= (and b!3666367 ((_ is Union!10567) (regex!5808 (h!44089 rules!3307)))) b!3667227))

(declare-fun b!3667229 () Bool)

(declare-fun e!2270635 () Bool)

(declare-fun tp!1116285 () Bool)

(declare-fun tp!1116281 () Bool)

(assert (=> b!3667229 (= e!2270635 (and tp!1116285 tp!1116281))))

(assert (=> b!3666378 (= tp!1116182 e!2270635)))

(declare-fun b!3667231 () Bool)

(declare-fun tp!1116282 () Bool)

(declare-fun tp!1116284 () Bool)

(assert (=> b!3667231 (= e!2270635 (and tp!1116282 tp!1116284))))

(declare-fun b!3667230 () Bool)

(declare-fun tp!1116283 () Bool)

(assert (=> b!3667230 (= e!2270635 tp!1116283)))

(declare-fun b!3667228 () Bool)

(assert (=> b!3667228 (= e!2270635 tp_is_empty!18217)))

(assert (= (and b!3666378 ((_ is ElementMatch!10567) (regex!5808 anOtherTypeRule!33))) b!3667228))

(assert (= (and b!3666378 ((_ is Concat!16606) (regex!5808 anOtherTypeRule!33))) b!3667229))

(assert (= (and b!3666378 ((_ is Star!10567) (regex!5808 anOtherTypeRule!33))) b!3667230))

(assert (= (and b!3666378 ((_ is Union!10567) (regex!5808 anOtherTypeRule!33))) b!3667231))

(declare-fun b!3667232 () Bool)

(declare-fun e!2270636 () Bool)

(declare-fun tp!1116286 () Bool)

(assert (=> b!3667232 (= e!2270636 (and tp_is_empty!18217 tp!1116286))))

(assert (=> b!3666368 (= tp!1116175 e!2270636)))

(assert (= (and b!3666368 ((_ is Cons!38667) (originalCharacters!6522 token!511))) b!3667232))

(declare-fun b_lambda!108887 () Bool)

(assert (= b_lambda!108885 (or (and b!3666341 b_free!96807 (= (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666380 b_free!96803) (and b!3667218 b_free!96823 (= (toChars!7963 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666372 b_free!96811 (= (toChars!7963 (transformation!5808 rule!403)) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666348 b_free!96815 (= (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) b_lambda!108887)))

(declare-fun b_lambda!108889 () Bool)

(assert (= b_lambda!108849 (or (and b!3666341 b_free!96807 (= (toChars!7963 (transformation!5808 anOtherTypeRule!33)) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666380 b_free!96803) (and b!3667218 b_free!96823 (= (toChars!7963 (transformation!5808 (h!44089 (t!299188 rules!3307)))) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666372 b_free!96811 (= (toChars!7963 (transformation!5808 rule!403)) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) (and b!3666348 b_free!96815 (= (toChars!7963 (transformation!5808 (h!44089 rules!3307))) (toChars!7963 (transformation!5808 (rule!8626 token!511))))) b_lambda!108889)))

(check-sat (not b!3666568) (not bm!265389) (not b!3666692) b_and!272839 (not b!3666658) (not b!3667181) (not b!3666719) (not d!1077223) (not d!1077075) (not b!3667229) (not b!3666935) (not b!3666620) (not b!3666618) (not d!1076895) (not b_lambda!108881) (not b!3666688) (not d!1076993) (not bm!265382) (not b!3666856) (not b!3666592) (not b!3666894) (not d!1077139) (not b!3666456) (not tb!212233) (not b_lambda!108851) (not b!3666983) (not d!1077239) (not b!3667227) (not d!1077237) (not b_next!97513) (not b!3666965) (not d!1076919) (not b!3667202) (not b!3667183) (not bm!265387) (not b_next!97515) (not b_next!97519) (not d!1077011) (not b_next!97527) b_and!272841 (not b!3666765) (not d!1077147) (not d!1077105) (not d!1077129) (not b!3666717) (not tb!212157) (not b!3667186) (not d!1076981) (not b!3666480) (not b!3666587) (not b!3667189) (not b!3667217) (not b!3666855) (not d!1077029) (not b!3666861) b_and!272823 (not b!3666973) (not tb!212165) (not b!3666770) (not d!1077103) (not d!1077225) (not b!3666467) (not d!1077227) (not b!3667169) (not b!3667185) (not d!1077231) (not b!3666696) (not bm!265391) (not b!3667232) (not d!1077049) (not d!1077009) (not b!3666578) (not b!3666612) (not b!3666730) (not b!3666470) (not d!1077133) (not b_next!97509) (not b!3666859) (not d!1076963) (not b!3666862) (not b_lambda!108889) (not d!1076983) (not d!1077061) (not d!1077001) (not d!1077221) (not b!3666690) (not b_lambda!108883) (not tb!212241) (not d!1077065) (not b!3667216) (not b!3667203) (not d!1076917) b_and!272829 (not d!1077213) (not b_next!97525) (not b!3666393) (not d!1077117) b_and!272837 (not b!3666706) (not b_next!97505) (not d!1076899) (not b!3666661) (not b!3666978) (not b!3667205) (not d!1077059) (not d!1076925) (not b!3666972) (not tb!212205) (not b_lambda!108865) (not b!3666460) (not d!1076999) (not b!3666693) (not b!3667231) (not d!1077043) (not b!3666453) (not b!3666589) (not d!1077019) (not b_lambda!108887) (not b_next!97511) (not b!3666735) (not d!1076945) (not b!3666892) (not d!1077021) (not b!3666547) (not b!3666771) (not d!1077137) b_and!272831 (not b!3666609) (not d!1076893) (not b!3666597) (not d!1077143) (not b!3666767) (not b!3666694) (not b!3666602) (not d!1077141) (not b!3666732) (not b!3667230) b_and!272825 (not b!3666734) (not b!3666986) (not bm!265398) (not b!3666471) (not b!3666969) (not b!3666823) (not d!1077235) (not b!3667178) (not d!1077035) (not b!3666857) (not b!3666772) (not b!3666579) (not d!1077131) (not d!1077215) (not b!3667182) (not b_lambda!108877) (not d!1077091) (not b!3666593) (not b!3666968) (not b!3666860) (not b!3666475) (not b!3666804) (not bm!265390) (not b_next!97517) (not b!3666736) (not d!1077219) (not b!3666461) (not b!3666707) (not b!3666738) (not bm!265377) (not bm!265368) (not b!3667184) (not bm!265378) (not b!3667223) (not d!1077101) (not b!3666596) (not b!3667180) (not d!1077003) (not d!1077007) (not d!1076937) tp_is_empty!18217 (not b!3666928) (not b!3667207) (not tb!212249) (not b!3666659) (not b_lambda!108875) (not bm!265356) (not b!3666731) (not bm!265407) (not b!3666987) (not b_lambda!108879) (not b!3667187) (not b!3666689) (not b!3666932) (not b!3667225) (not b!3666805) (not b!3666964) (not b!3666854) b_and!272833 (not b!3667201) (not b!3666466) (not b!3666474) (not b!3666739) (not b!3666656) (not d!1077079) (not d!1077017) (not b!3666956) (not b!3666691) (not bm!265381) (not d!1077145) (not b!3666814) (not d!1077233) (not bm!265383) (not b!3667226) (not d!1076911) (not d!1076977) (not bm!265359) (not d!1076959) (not b_next!97507) (not d!1076979) (not b!3667206) (not d!1077127) (not b!3666768) (not b!3666457) (not b!3666957) (not b!3666718) (not bm!265379) b_and!272835 b_and!272827 (not d!1076967) (not d!1077125))
(check-sat b_and!272839 (not b_next!97513) b_and!272823 (not b_next!97509) (not b_next!97505) (not b_next!97511) b_and!272831 b_and!272825 (not b_next!97517) b_and!272833 (not b_next!97507) (not b_next!97515) (not b_next!97519) (not b_next!97527) b_and!272841 b_and!272829 (not b_next!97525) b_and!272837 b_and!272835 b_and!272827)
