; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343614 () Bool)

(assert start!343614)

(declare-fun b!3667811 () Bool)

(declare-fun b_free!96873 () Bool)

(declare-fun b_next!97577 () Bool)

(assert (=> b!3667811 (= b_free!96873 (not b_next!97577))))

(declare-fun tp!1116453 () Bool)

(declare-fun b_and!272891 () Bool)

(assert (=> b!3667811 (= tp!1116453 b_and!272891)))

(declare-fun b_free!96875 () Bool)

(declare-fun b_next!97579 () Bool)

(assert (=> b!3667811 (= b_free!96875 (not b_next!97579))))

(declare-fun tp!1116458 () Bool)

(declare-fun b_and!272893 () Bool)

(assert (=> b!3667811 (= tp!1116458 b_and!272893)))

(declare-fun b!3667809 () Bool)

(declare-fun b_free!96877 () Bool)

(declare-fun b_next!97581 () Bool)

(assert (=> b!3667809 (= b_free!96877 (not b_next!97581))))

(declare-fun tp!1116454 () Bool)

(declare-fun b_and!272895 () Bool)

(assert (=> b!3667809 (= tp!1116454 b_and!272895)))

(declare-fun b_free!96879 () Bool)

(declare-fun b_next!97583 () Bool)

(assert (=> b!3667809 (= b_free!96879 (not b_next!97583))))

(declare-fun tp!1116466 () Bool)

(declare-fun b_and!272897 () Bool)

(assert (=> b!3667809 (= tp!1116466 b_and!272897)))

(declare-fun b!3667810 () Bool)

(declare-fun b_free!96881 () Bool)

(declare-fun b_next!97585 () Bool)

(assert (=> b!3667810 (= b_free!96881 (not b_next!97585))))

(declare-fun tp!1116464 () Bool)

(declare-fun b_and!272899 () Bool)

(assert (=> b!3667810 (= tp!1116464 b_and!272899)))

(declare-fun b_free!96883 () Bool)

(declare-fun b_next!97587 () Bool)

(assert (=> b!3667810 (= b_free!96883 (not b_next!97587))))

(declare-fun tp!1116457 () Bool)

(declare-fun b_and!272901 () Bool)

(assert (=> b!3667810 (= tp!1116457 b_and!272901)))

(declare-fun b!3667848 () Bool)

(declare-fun b_free!96885 () Bool)

(declare-fun b_next!97589 () Bool)

(assert (=> b!3667848 (= b_free!96885 (not b_next!97589))))

(declare-fun tp!1116459 () Bool)

(declare-fun b_and!272903 () Bool)

(assert (=> b!3667848 (= tp!1116459 b_and!272903)))

(declare-fun b_free!96887 () Bool)

(declare-fun b_next!97591 () Bool)

(assert (=> b!3667848 (= b_free!96887 (not b_next!97591))))

(declare-fun tp!1116462 () Bool)

(declare-fun b_and!272905 () Bool)

(assert (=> b!3667848 (= tp!1116462 b_and!272905)))

(declare-fun b!3667799 () Bool)

(declare-fun e!2271055 () Bool)

(declare-fun e!2271054 () Bool)

(assert (=> b!3667799 (= e!2271055 e!2271054)))

(declare-fun res!1489355 () Bool)

(assert (=> b!3667799 (=> res!1489355 e!2271054)))

(declare-datatypes ((C!21328 0))(
  ( (C!21329 (val!12712 Int)) )
))
(declare-datatypes ((List!38807 0))(
  ( (Nil!38683) (Cons!38683 (h!44103 C!21328) (t!299322 List!38807)) )
))
(declare-fun lt!1277541 () List!38807)

(declare-fun lt!1277555 () List!38807)

(declare-fun isPrefix!3175 (List!38807 List!38807) Bool)

(assert (=> b!3667799 (= res!1489355 (not (isPrefix!3175 lt!1277541 lt!1277555)))))

(declare-datatypes ((List!38808 0))(
  ( (Nil!38684) (Cons!38684 (h!44104 (_ BitVec 16)) (t!299323 List!38808)) )
))
(declare-datatypes ((TokenValue!6042 0))(
  ( (FloatLiteralValue!12084 (text!42739 List!38808)) (TokenValueExt!6041 (__x!24301 Int)) (Broken!30210 (value!186076 List!38808)) (Object!6165) (End!6042) (Def!6042) (Underscore!6042) (Match!6042) (Else!6042) (Error!6042) (Case!6042) (If!6042) (Extends!6042) (Abstract!6042) (Class!6042) (Val!6042) (DelimiterValue!12084 (del!6102 List!38808)) (KeywordValue!6048 (value!186077 List!38808)) (CommentValue!12084 (value!186078 List!38808)) (WhitespaceValue!12084 (value!186079 List!38808)) (IndentationValue!6042 (value!186080 List!38808)) (String!43543) (Int32!6042) (Broken!30211 (value!186081 List!38808)) (Boolean!6043) (Unit!56168) (OperatorValue!6045 (op!6102 List!38808)) (IdentifierValue!12084 (value!186082 List!38808)) (IdentifierValue!12085 (value!186083 List!38808)) (WhitespaceValue!12085 (value!186084 List!38808)) (True!12084) (False!12084) (Broken!30212 (value!186085 List!38808)) (Broken!30213 (value!186086 List!38808)) (True!12085) (RightBrace!6042) (RightBracket!6042) (Colon!6042) (Null!6042) (Comma!6042) (LeftBracket!6042) (False!12085) (LeftBrace!6042) (ImaginaryLiteralValue!6042 (text!42740 List!38808)) (StringLiteralValue!18126 (value!186087 List!38808)) (EOFValue!6042 (value!186088 List!38808)) (IdentValue!6042 (value!186089 List!38808)) (DelimiterValue!12085 (value!186090 List!38808)) (DedentValue!6042 (value!186091 List!38808)) (NewLineValue!6042 (value!186092 List!38808)) (IntegerValue!18126 (value!186093 (_ BitVec 32)) (text!42741 List!38808)) (IntegerValue!18127 (value!186094 Int) (text!42742 List!38808)) (Times!6042) (Or!6042) (Equal!6042) (Minus!6042) (Broken!30214 (value!186095 List!38808)) (And!6042) (Div!6042) (LessEqual!6042) (Mod!6042) (Concat!16613) (Not!6042) (Plus!6042) (SpaceValue!6042 (value!186096 List!38808)) (IntegerValue!18128 (value!186097 Int) (text!42743 List!38808)) (StringLiteralValue!18127 (text!42744 List!38808)) (FloatLiteralValue!12085 (text!42745 List!38808)) (BytesLiteralValue!6042 (value!186098 List!38808)) (CommentValue!12085 (value!186099 List!38808)) (StringLiteralValue!18128 (value!186100 List!38808)) (ErrorTokenValue!6042 (msg!6103 List!38808)) )
))
(declare-datatypes ((Regex!10571 0))(
  ( (ElementMatch!10571 (c!634130 C!21328)) (Concat!16614 (regOne!21654 Regex!10571) (regTwo!21654 Regex!10571)) (EmptyExpr!10571) (Star!10571 (reg!10900 Regex!10571)) (EmptyLang!10571) (Union!10571 (regOne!21655 Regex!10571) (regTwo!21655 Regex!10571)) )
))
(declare-datatypes ((String!43544 0))(
  ( (String!43545 (value!186101 String)) )
))
(declare-datatypes ((IArray!23671 0))(
  ( (IArray!23672 (innerList!11893 List!38807)) )
))
(declare-datatypes ((Conc!11833 0))(
  ( (Node!11833 (left!30189 Conc!11833) (right!30519 Conc!11833) (csize!23896 Int) (cheight!12044 Int)) (Leaf!18350 (xs!15035 IArray!23671) (csize!23897 Int)) (Empty!11833) )
))
(declare-datatypes ((BalanceConc!23280 0))(
  ( (BalanceConc!23281 (c!634131 Conc!11833)) )
))
(declare-datatypes ((TokenValueInjection!11512 0))(
  ( (TokenValueInjection!11513 (toValue!8108 Int) (toChars!7967 Int)) )
))
(declare-datatypes ((Rule!11424 0))(
  ( (Rule!11425 (regex!5812 Regex!10571) (tag!6598 String!43544) (isSeparator!5812 Bool) (transformation!5812 TokenValueInjection!11512)) )
))
(declare-datatypes ((Token!10990 0))(
  ( (Token!10991 (value!186102 TokenValue!6042) (rule!8632 Rule!11424) (size!29563 Int) (originalCharacters!6526 List!38807)) )
))
(declare-datatypes ((tuple2!38552 0))(
  ( (tuple2!38553 (_1!22410 Token!10990) (_2!22410 List!38807)) )
))
(declare-fun lt!1277551 () tuple2!38552)

(declare-fun ++!9628 (List!38807 List!38807) List!38807)

(assert (=> b!3667799 (isPrefix!3175 lt!1277541 (++!9628 lt!1277541 (_2!22410 lt!1277551)))))

(declare-datatypes ((Unit!56169 0))(
  ( (Unit!56170) )
))
(declare-fun lt!1277579 () Unit!56169)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2094 (List!38807 List!38807) Unit!56169)

(assert (=> b!3667799 (= lt!1277579 (lemmaConcatTwoListThenFirstIsPrefix!2094 lt!1277541 (_2!22410 lt!1277551)))))

(declare-fun lt!1277556 () BalanceConc!23280)

(declare-fun list!14362 (BalanceConc!23280) List!38807)

(assert (=> b!3667799 (= lt!1277541 (list!14362 lt!1277556))))

(declare-fun charsOf!3826 (Token!10990) BalanceConc!23280)

(assert (=> b!3667799 (= lt!1277556 (charsOf!3826 (_1!22410 lt!1277551)))))

(declare-fun e!2271073 () Bool)

(assert (=> b!3667799 e!2271073))

(declare-fun res!1489358 () Bool)

(assert (=> b!3667799 (=> (not res!1489358) (not e!2271073))))

(declare-datatypes ((Option!8252 0))(
  ( (None!8251) (Some!8251 (v!38155 Rule!11424)) )
))
(declare-fun lt!1277566 () Option!8252)

(declare-fun isDefined!6484 (Option!8252) Bool)

(assert (=> b!3667799 (= res!1489358 (isDefined!6484 lt!1277566))))

(declare-datatypes ((List!38809 0))(
  ( (Nil!38685) (Cons!38685 (h!44105 Rule!11424) (t!299324 List!38809)) )
))
(declare-fun rules!3307 () List!38809)

(declare-datatypes ((LexerInterface!5401 0))(
  ( (LexerInterfaceExt!5398 (__x!24302 Int)) (Lexer!5399) )
))
(declare-fun thiss!23823 () LexerInterface!5401)

(declare-fun getRuleFromTag!1416 (LexerInterface!5401 List!38809 String!43544) Option!8252)

(assert (=> b!3667799 (= lt!1277566 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun lt!1277553 () Unit!56169)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1416 (LexerInterface!5401 List!38809 List!38807 Token!10990) Unit!56169)

(assert (=> b!3667799 (= lt!1277553 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1416 thiss!23823 rules!3307 lt!1277555 (_1!22410 lt!1277551)))))

(declare-datatypes ((Option!8253 0))(
  ( (None!8252) (Some!8252 (v!38156 tuple2!38552)) )
))
(declare-fun lt!1277580 () Option!8253)

(declare-fun get!12768 (Option!8253) tuple2!38552)

(assert (=> b!3667799 (= lt!1277551 (get!12768 lt!1277580))))

(declare-fun lt!1277578 () List!38807)

(declare-fun suffix!1395 () List!38807)

(declare-fun lt!1277550 () Unit!56169)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1079 (LexerInterface!5401 List!38809 List!38807 List!38807) Unit!56169)

(assert (=> b!3667799 (= lt!1277550 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1079 thiss!23823 rules!3307 lt!1277578 suffix!1395))))

(declare-fun maxPrefix!2935 (LexerInterface!5401 List!38809 List!38807) Option!8253)

(assert (=> b!3667799 (= lt!1277580 (maxPrefix!2935 thiss!23823 rules!3307 lt!1277555))))

(assert (=> b!3667799 (isPrefix!3175 lt!1277578 lt!1277555)))

(declare-fun lt!1277571 () Unit!56169)

(assert (=> b!3667799 (= lt!1277571 (lemmaConcatTwoListThenFirstIsPrefix!2094 lt!1277578 suffix!1395))))

(assert (=> b!3667799 (= lt!1277555 (++!9628 lt!1277578 suffix!1395))))

(declare-fun e!2271067 () Bool)

(declare-fun e!2271069 () Bool)

(declare-fun tp!1116463 () Bool)

(declare-fun b!3667800 () Bool)

(declare-fun inv!52161 (String!43544) Bool)

(declare-fun inv!52164 (TokenValueInjection!11512) Bool)

(assert (=> b!3667800 (= e!2271069 (and tp!1116463 (inv!52161 (tag!6598 (h!44105 rules!3307))) (inv!52164 (transformation!5812 (h!44105 rules!3307))) e!2271067))))

(declare-fun bm!265474 () Bool)

(declare-fun call!265482 () Bool)

(declare-fun call!265484 () List!38807)

(declare-fun lt!1277567 () C!21328)

(declare-fun contains!7691 (List!38807 C!21328) Bool)

(assert (=> bm!265474 (= call!265482 (contains!7691 call!265484 lt!1277567))))

(declare-fun bm!265475 () Bool)

(declare-fun usedCharacters!1024 (Regex!10571) List!38807)

(assert (=> bm!265475 (= call!265484 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3667801 () Bool)

(declare-fun res!1489351 () Bool)

(declare-fun e!2271072 () Bool)

(assert (=> b!3667801 (=> (not res!1489351) (not e!2271072))))

(declare-fun anOtherTypeRule!33 () Rule!11424)

(declare-fun contains!7692 (List!38809 Rule!11424) Bool)

(assert (=> b!3667801 (= res!1489351 (contains!7692 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3667802 () Bool)

(declare-fun res!1489342 () Bool)

(declare-fun e!2271071 () Bool)

(assert (=> b!3667802 (=> res!1489342 e!2271071)))

(assert (=> b!3667802 (= res!1489342 (not (contains!7692 rules!3307 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3667803 () Bool)

(declare-fun res!1489360 () Bool)

(assert (=> b!3667803 (=> (not res!1489360) (not e!2271072))))

(declare-fun rule!403 () Rule!11424)

(assert (=> b!3667803 (= res!1489360 (contains!7692 rules!3307 rule!403))))

(declare-fun res!1489336 () Bool)

(assert (=> start!343614 (=> (not res!1489336) (not e!2271072))))

(get-info :version)

(assert (=> start!343614 (= res!1489336 ((_ is Lexer!5399) thiss!23823))))

(assert (=> start!343614 e!2271072))

(declare-fun e!2271056 () Bool)

(assert (=> start!343614 e!2271056))

(declare-fun e!2271051 () Bool)

(assert (=> start!343614 e!2271051))

(assert (=> start!343614 true))

(declare-fun token!511 () Token!10990)

(declare-fun e!2271068 () Bool)

(declare-fun inv!52165 (Token!10990) Bool)

(assert (=> start!343614 (and (inv!52165 token!511) e!2271068)))

(declare-fun e!2271070 () Bool)

(assert (=> start!343614 e!2271070))

(declare-fun e!2271063 () Bool)

(assert (=> start!343614 e!2271063))

(declare-fun call!265483 () Unit!56169)

(declare-fun bm!265476 () Bool)

(declare-fun lt!1277590 () C!21328)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (Regex!10571 List!38807 C!21328) Unit!56169)

(assert (=> bm!265476 (= call!265483 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277590))))

(declare-fun b!3667804 () Bool)

(declare-fun e!2271066 () Unit!56169)

(declare-fun e!2271048 () Unit!56169)

(assert (=> b!3667804 (= e!2271066 e!2271048)))

(declare-fun c!634122 () Bool)

(assert (=> b!3667804 (= c!634122 (not (isSeparator!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3667805 () Bool)

(declare-fun res!1489341 () Bool)

(declare-fun e!2271077 () Bool)

(assert (=> b!3667805 (=> (not res!1489341) (not e!2271077))))

(declare-fun lt!1277564 () tuple2!38552)

(declare-fun isEmpty!22954 (List!38807) Bool)

(assert (=> b!3667805 (= res!1489341 (isEmpty!22954 (_2!22410 lt!1277564)))))

(declare-fun b!3667806 () Bool)

(declare-fun res!1489337 () Bool)

(assert (=> b!3667806 (=> (not res!1489337) (not e!2271072))))

(declare-fun isEmpty!22955 (List!38809) Bool)

(assert (=> b!3667806 (= res!1489337 (not (isEmpty!22955 rules!3307)))))

(declare-fun tp!1116461 () Bool)

(declare-fun b!3667807 () Bool)

(declare-fun e!2271052 () Bool)

(assert (=> b!3667807 (= e!2271063 (and tp!1116461 (inv!52161 (tag!6598 anOtherTypeRule!33)) (inv!52164 (transformation!5812 anOtherTypeRule!33)) e!2271052))))

(declare-fun b!3667808 () Bool)

(declare-fun res!1489357 () Bool)

(assert (=> b!3667808 (=> res!1489357 e!2271055)))

(declare-fun sepAndNonSepRulesDisjointChars!1980 (List!38809 List!38809) Bool)

(assert (=> b!3667808 (= res!1489357 (not (sepAndNonSepRulesDisjointChars!1980 rules!3307 rules!3307)))))

(declare-fun e!2271046 () Bool)

(assert (=> b!3667809 (= e!2271046 (and tp!1116454 tp!1116466))))

(assert (=> b!3667810 (= e!2271052 (and tp!1116464 tp!1116457))))

(assert (=> b!3667811 (= e!2271067 (and tp!1116453 tp!1116458))))

(declare-fun b!3667812 () Bool)

(declare-fun e!2271061 () Unit!56169)

(declare-fun Unit!56171 () Unit!56169)

(assert (=> b!3667812 (= e!2271061 Unit!56171)))

(declare-fun lt!1277554 () Unit!56169)

(assert (=> b!3667812 (= lt!1277554 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 rule!403) lt!1277578 lt!1277567))))

(assert (=> b!3667812 false))

(declare-fun e!2271050 () Bool)

(declare-fun b!3667813 () Bool)

(declare-fun tp!1116460 () Bool)

(assert (=> b!3667813 (= e!2271070 (and tp!1116460 (inv!52161 (tag!6598 rule!403)) (inv!52164 (transformation!5812 rule!403)) e!2271050))))

(declare-fun b!3667814 () Bool)

(assert (=> b!3667814 false))

(declare-fun lt!1277560 () Unit!56169)

(assert (=> b!3667814 (= lt!1277560 call!265483)))

(declare-fun call!265480 () Bool)

(assert (=> b!3667814 (not call!265480)))

(declare-fun lt!1277544 () Unit!56169)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!458 (LexerInterface!5401 List!38809 List!38809 Rule!11424 Rule!11424 C!21328) Unit!56169)

(assert (=> b!3667814 (= lt!1277544 (lemmaNonSepRuleNotContainsCharContainedInASepRule!458 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) anOtherTypeRule!33 lt!1277590))))

(declare-fun e!2271053 () Unit!56169)

(declare-fun Unit!56172 () Unit!56169)

(assert (=> b!3667814 (= e!2271053 Unit!56172)))

(declare-fun b!3667815 () Bool)

(declare-fun e!2271064 () Unit!56169)

(declare-fun Unit!56173 () Unit!56169)

(assert (=> b!3667815 (= e!2271064 Unit!56173)))

(declare-fun b!3667816 () Bool)

(declare-fun res!1489347 () Bool)

(assert (=> b!3667816 (=> res!1489347 e!2271054)))

(declare-fun matchR!5140 (Regex!10571 List!38807) Bool)

(assert (=> b!3667816 (= res!1489347 (not (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541)))))

(declare-fun b!3667817 () Bool)

(declare-fun e!2271075 () Unit!56169)

(declare-fun Unit!56174 () Unit!56169)

(assert (=> b!3667817 (= e!2271075 Unit!56174)))

(declare-fun b!3667818 () Bool)

(assert (=> b!3667818 (= e!2271071 (not (isEmpty!22954 lt!1277578)))))

(declare-fun bm!265477 () Bool)

(declare-fun call!265481 () List!38807)

(assert (=> bm!265477 (= call!265481 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3667819 () Bool)

(declare-fun Unit!56175 () Unit!56169)

(assert (=> b!3667819 (= e!2271048 Unit!56175)))

(declare-fun b!3667820 () Bool)

(assert (=> b!3667820 (= e!2271066 e!2271075)))

(declare-fun c!634127 () Bool)

(assert (=> b!3667820 (= c!634127 (isSeparator!5812 (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun b!3667821 () Bool)

(declare-fun e!2271058 () Unit!56169)

(assert (=> b!3667821 (= e!2271058 e!2271053)))

(declare-fun lt!1277548 () Unit!56169)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!120 (List!38807 List!38807 List!38807 List!38807) Unit!56169)

(assert (=> b!3667821 (= lt!1277548 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!120 lt!1277578 suffix!1395 lt!1277541 lt!1277555))))

(assert (=> b!3667821 (contains!7691 lt!1277541 lt!1277590)))

(declare-fun c!634128 () Bool)

(assert (=> b!3667821 (= c!634128 (isSeparator!5812 rule!403))))

(declare-fun b!3667822 () Bool)

(declare-fun Unit!56176 () Unit!56169)

(assert (=> b!3667822 (= e!2271064 Unit!56176)))

(declare-fun lt!1277568 () Unit!56169)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!192 (List!38807) Unit!56169)

(assert (=> b!3667822 (= lt!1277568 (lemmaGetSuffixOnListWithItSelfIsEmpty!192 lt!1277578))))

(declare-fun getSuffix!1728 (List!38807 List!38807) List!38807)

(assert (=> b!3667822 (isEmpty!22954 (getSuffix!1728 lt!1277578 lt!1277578))))

(declare-fun lt!1277565 () Unit!56169)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!220 (LexerInterface!5401 List!38809 Rule!11424 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> b!3667822 (= lt!1277565 (lemmaMaxPrefNoSmallerRuleMatches!220 thiss!23823 rules!3307 rule!403 lt!1277578 lt!1277578 (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun res!1489354 () Bool)

(assert (=> b!3667822 (= res!1489354 (not (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277578)))))

(declare-fun e!2271074 () Bool)

(assert (=> b!3667822 (=> (not res!1489354) (not e!2271074))))

(assert (=> b!3667822 e!2271074))

(declare-fun b!3667823 () Bool)

(declare-fun e!2271065 () Bool)

(assert (=> b!3667823 (= e!2271065 e!2271071)))

(declare-fun res!1489344 () Bool)

(assert (=> b!3667823 (=> res!1489344 e!2271071)))

(declare-fun lt!1277562 () Int)

(declare-fun lt!1277557 () Int)

(assert (=> b!3667823 (= res!1489344 (>= lt!1277562 lt!1277557))))

(declare-fun lt!1277561 () Unit!56169)

(assert (=> b!3667823 (= lt!1277561 e!2271064)))

(declare-fun c!634129 () Bool)

(assert (=> b!3667823 (= c!634129 (< lt!1277557 lt!1277562))))

(declare-fun getIndex!480 (List!38809 Rule!11424) Int)

(assert (=> b!3667823 (= lt!1277562 (getIndex!480 rules!3307 rule!403))))

(assert (=> b!3667823 (= lt!1277557 (getIndex!480 rules!3307 (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun tp!1116465 () Bool)

(declare-fun b!3667824 () Bool)

(declare-fun e!2271060 () Bool)

(declare-fun inv!21 (TokenValue!6042) Bool)

(assert (=> b!3667824 (= e!2271068 (and (inv!21 (value!186102 token!511)) e!2271060 tp!1116465))))

(declare-fun b!3667825 () Bool)

(declare-fun res!1489338 () Bool)

(assert (=> b!3667825 (=> res!1489338 e!2271055)))

(assert (=> b!3667825 (= res!1489338 (not (contains!7691 (usedCharacters!1024 (regex!5812 anOtherTypeRule!33)) lt!1277590)))))

(declare-fun b!3667826 () Bool)

(declare-fun res!1489343 () Bool)

(declare-fun e!2271076 () Bool)

(assert (=> b!3667826 (=> res!1489343 e!2271076)))

(assert (=> b!3667826 (= res!1489343 (isEmpty!22954 suffix!1395))))

(declare-fun b!3667827 () Bool)

(assert (=> b!3667827 (= e!2271077 (not e!2271076))))

(declare-fun res!1489346 () Bool)

(assert (=> b!3667827 (=> res!1489346 e!2271076)))

(assert (=> b!3667827 (= res!1489346 (not (matchR!5140 (regex!5812 rule!403) lt!1277578)))))

(declare-fun ruleValid!2076 (LexerInterface!5401 Rule!11424) Bool)

(assert (=> b!3667827 (ruleValid!2076 thiss!23823 rule!403)))

(declare-fun lt!1277581 () Unit!56169)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1230 (LexerInterface!5401 Rule!11424 List!38809) Unit!56169)

(assert (=> b!3667827 (= lt!1277581 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1230 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3667828 () Bool)

(declare-fun e!2271062 () Bool)

(assert (=> b!3667828 (= e!2271062 e!2271065)))

(declare-fun res!1489348 () Bool)

(assert (=> b!3667828 (=> res!1489348 e!2271065)))

(assert (=> b!3667828 (= res!1489348 (= (rule!8632 (_1!22410 lt!1277551)) (rule!8632 token!511)))))

(assert (=> b!3667828 (= lt!1277541 lt!1277578)))

(declare-fun lt!1277569 () Unit!56169)

(declare-fun lemmaIsPrefixSameLengthThenSameList!637 (List!38807 List!38807 List!38807) Unit!56169)

(assert (=> b!3667828 (= lt!1277569 (lemmaIsPrefixSameLengthThenSameList!637 lt!1277541 lt!1277578 lt!1277555))))

(declare-fun lt!1277584 () Unit!56169)

(declare-fun e!2271079 () Unit!56169)

(assert (=> b!3667828 (= lt!1277584 e!2271079)))

(declare-fun c!634123 () Bool)

(declare-fun lt!1277587 () Int)

(declare-fun lt!1277582 () Int)

(assert (=> b!3667828 (= c!634123 (< lt!1277587 lt!1277582))))

(declare-fun lt!1277546 () Unit!56169)

(assert (=> b!3667828 (= lt!1277546 e!2271058)))

(declare-fun c!634126 () Bool)

(assert (=> b!3667828 (= c!634126 (> lt!1277587 lt!1277582))))

(declare-fun lt!1277542 () BalanceConc!23280)

(declare-fun size!29564 (BalanceConc!23280) Int)

(assert (=> b!3667828 (= lt!1277582 (size!29564 lt!1277542))))

(declare-fun lt!1277570 () Unit!56169)

(assert (=> b!3667828 (= lt!1277570 e!2271066)))

(declare-fun c!634125 () Bool)

(assert (=> b!3667828 (= c!634125 (isSeparator!5812 rule!403))))

(declare-fun lt!1277572 () Unit!56169)

(assert (=> b!3667828 (= lt!1277572 e!2271061)))

(declare-fun c!634124 () Bool)

(declare-fun lt!1277552 () List!38807)

(assert (=> b!3667828 (= c!634124 (not (contains!7691 lt!1277552 lt!1277567)))))

(declare-fun head!7848 (List!38807) C!21328)

(assert (=> b!3667828 (= lt!1277567 (head!7848 lt!1277541))))

(declare-fun b!3667829 () Bool)

(assert (=> b!3667829 false))

(declare-fun lt!1277549 () Unit!56169)

(declare-fun call!265479 () Unit!56169)

(assert (=> b!3667829 (= lt!1277549 call!265479)))

(assert (=> b!3667829 (not call!265482)))

(declare-fun lt!1277574 () Unit!56169)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!340 (LexerInterface!5401 List!38809 List!38809 Rule!11424 Rule!11424 C!21328) Unit!56169)

(assert (=> b!3667829 (= lt!1277574 (lemmaSepRuleNotContainsCharContainedInANonSepRule!340 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8632 (_1!22410 lt!1277551)) lt!1277567))))

(declare-fun Unit!56177 () Unit!56169)

(assert (=> b!3667829 (= e!2271075 Unit!56177)))

(declare-fun b!3667830 () Bool)

(declare-fun Unit!56178 () Unit!56169)

(assert (=> b!3667830 (= e!2271079 Unit!56178)))

(declare-fun b!3667831 () Bool)

(declare-fun tp_is_empty!18225 () Bool)

(declare-fun tp!1116455 () Bool)

(assert (=> b!3667831 (= e!2271051 (and tp_is_empty!18225 tp!1116455))))

(declare-fun b!3667832 () Bool)

(assert (=> b!3667832 (= e!2271074 false)))

(declare-fun b!3667833 () Bool)

(declare-fun tp!1116456 () Bool)

(assert (=> b!3667833 (= e!2271056 (and e!2271069 tp!1116456))))

(declare-fun b!3667834 () Bool)

(declare-fun tp!1116452 () Bool)

(assert (=> b!3667834 (= e!2271060 (and tp!1116452 (inv!52161 (tag!6598 (rule!8632 token!511))) (inv!52164 (transformation!5812 (rule!8632 token!511))) e!2271046))))

(declare-fun b!3667835 () Bool)

(declare-fun e!2271059 () Bool)

(assert (=> b!3667835 (= e!2271059 e!2271077)))

(declare-fun res!1489356 () Bool)

(assert (=> b!3667835 (=> (not res!1489356) (not e!2271077))))

(assert (=> b!3667835 (= res!1489356 (= (_1!22410 lt!1277564) token!511))))

(declare-fun lt!1277559 () Option!8253)

(assert (=> b!3667835 (= lt!1277564 (get!12768 lt!1277559))))

(declare-fun b!3667836 () Bool)

(assert (=> b!3667836 false))

(declare-fun lt!1277558 () Unit!56169)

(assert (=> b!3667836 (= lt!1277558 call!265483)))

(assert (=> b!3667836 (not call!265480)))

(declare-fun lt!1277586 () Unit!56169)

(assert (=> b!3667836 (= lt!1277586 (lemmaSepRuleNotContainsCharContainedInANonSepRule!340 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8632 (_1!22410 lt!1277551)) lt!1277590))))

(declare-fun Unit!56179 () Unit!56169)

(assert (=> b!3667836 (= e!2271053 Unit!56179)))

(declare-fun b!3667837 () Bool)

(declare-fun Unit!56180 () Unit!56169)

(assert (=> b!3667837 (= e!2271061 Unit!56180)))

(declare-fun b!3667838 () Bool)

(declare-fun res!1489349 () Bool)

(assert (=> b!3667838 (=> (not res!1489349) (not e!2271077))))

(assert (=> b!3667838 (= res!1489349 (= (rule!8632 token!511) rule!403))))

(declare-fun b!3667839 () Bool)

(declare-fun e!2271078 () Bool)

(declare-fun lt!1277583 () Rule!11424)

(assert (=> b!3667839 (= e!2271078 (= (rule!8632 (_1!22410 lt!1277551)) lt!1277583))))

(declare-fun b!3667840 () Bool)

(assert (=> b!3667840 (= e!2271076 e!2271055)))

(declare-fun res!1489352 () Bool)

(assert (=> b!3667840 (=> res!1489352 e!2271055)))

(assert (=> b!3667840 (= res!1489352 (contains!7691 lt!1277552 lt!1277590))))

(assert (=> b!3667840 (= lt!1277590 (head!7848 suffix!1395))))

(assert (=> b!3667840 (= lt!1277552 (usedCharacters!1024 (regex!5812 rule!403)))))

(declare-fun b!3667841 () Bool)

(declare-fun res!1489353 () Bool)

(assert (=> b!3667841 (=> (not res!1489353) (not e!2271072))))

(assert (=> b!3667841 (= res!1489353 (not (= (isSeparator!5812 anOtherTypeRule!33) (isSeparator!5812 rule!403))))))

(declare-fun b!3667842 () Bool)

(assert (=> b!3667842 (= e!2271072 e!2271059)))

(declare-fun res!1489345 () Bool)

(assert (=> b!3667842 (=> (not res!1489345) (not e!2271059))))

(declare-fun isDefined!6485 (Option!8253) Bool)

(assert (=> b!3667842 (= res!1489345 (isDefined!6485 lt!1277559))))

(assert (=> b!3667842 (= lt!1277559 (maxPrefix!2935 thiss!23823 rules!3307 lt!1277578))))

(assert (=> b!3667842 (= lt!1277578 (list!14362 lt!1277542))))

(assert (=> b!3667842 (= lt!1277542 (charsOf!3826 token!511))))

(declare-fun b!3667843 () Bool)

(declare-fun e!2271080 () Bool)

(assert (=> b!3667843 (= e!2271080 e!2271062)))

(declare-fun res!1489359 () Bool)

(assert (=> b!3667843 (=> res!1489359 e!2271062)))

(declare-fun lt!1277592 () Option!8253)

(declare-fun lt!1277576 () List!38807)

(assert (=> b!3667843 (= res!1489359 (or (not (= lt!1277576 (_2!22410 lt!1277551))) (not (= lt!1277592 (Some!8252 (tuple2!38553 (_1!22410 lt!1277551) lt!1277576))))))))

(assert (=> b!3667843 (= (_2!22410 lt!1277551) lt!1277576)))

(declare-fun lt!1277543 () Unit!56169)

(declare-fun lemmaSamePrefixThenSameSuffix!1502 (List!38807 List!38807 List!38807 List!38807 List!38807) Unit!56169)

(assert (=> b!3667843 (= lt!1277543 (lemmaSamePrefixThenSameSuffix!1502 lt!1277541 (_2!22410 lt!1277551) lt!1277541 lt!1277576 lt!1277555))))

(assert (=> b!3667843 (= lt!1277576 (getSuffix!1728 lt!1277555 lt!1277541))))

(declare-fun lt!1277591 () TokenValue!6042)

(declare-fun lt!1277547 () Int)

(assert (=> b!3667843 (= lt!1277592 (Some!8252 (tuple2!38553 (Token!10991 lt!1277591 (rule!8632 (_1!22410 lt!1277551)) lt!1277547 lt!1277541) (_2!22410 lt!1277551))))))

(declare-fun maxPrefixOneRule!2073 (LexerInterface!5401 Rule!11424 List!38807) Option!8253)

(assert (=> b!3667843 (= lt!1277592 (maxPrefixOneRule!2073 thiss!23823 (rule!8632 (_1!22410 lt!1277551)) lt!1277555))))

(declare-fun size!29565 (List!38807) Int)

(assert (=> b!3667843 (= lt!1277547 (size!29565 lt!1277541))))

(declare-fun apply!9314 (TokenValueInjection!11512 BalanceConc!23280) TokenValue!6042)

(declare-fun seqFromList!4361 (List!38807) BalanceConc!23280)

(assert (=> b!3667843 (= lt!1277591 (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) (seqFromList!4361 lt!1277541)))))

(declare-fun lt!1277577 () Unit!56169)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1129 (LexerInterface!5401 List!38809 List!38807 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> b!3667843 (= lt!1277577 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1129 thiss!23823 rules!3307 lt!1277541 lt!1277555 (_2!22410 lt!1277551) (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun b!3667844 () Bool)

(declare-fun Unit!56181 () Unit!56169)

(assert (=> b!3667844 (= e!2271079 Unit!56181)))

(declare-fun lt!1277563 () Unit!56169)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!354 (LexerInterface!5401 List!38809 Rule!11424 List!38807 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> b!3667844 (= lt!1277563 (lemmaMaxPrefixOutputsMaxPrefix!354 thiss!23823 rules!3307 (rule!8632 (_1!22410 lt!1277551)) lt!1277541 lt!1277555 lt!1277578 rule!403))))

(assert (=> b!3667844 false))

(declare-fun bm!265478 () Bool)

(assert (=> bm!265478 (= call!265479 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277567))))

(declare-fun b!3667845 () Bool)

(assert (=> b!3667845 (= e!2271073 e!2271078)))

(declare-fun res!1489339 () Bool)

(assert (=> b!3667845 (=> (not res!1489339) (not e!2271078))))

(assert (=> b!3667845 (= res!1489339 (matchR!5140 (regex!5812 lt!1277583) (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))))))

(declare-fun get!12769 (Option!8252) Rule!11424)

(assert (=> b!3667845 (= lt!1277583 (get!12769 lt!1277566))))

(declare-fun bm!265479 () Bool)

(assert (=> bm!265479 (= call!265480 (contains!7691 call!265481 lt!1277590))))

(declare-fun b!3667846 () Bool)

(declare-fun Unit!56182 () Unit!56169)

(assert (=> b!3667846 (= e!2271058 Unit!56182)))

(declare-fun b!3667847 () Bool)

(declare-fun res!1489340 () Bool)

(assert (=> b!3667847 (=> (not res!1489340) (not e!2271072))))

(declare-fun rulesInvariant!4798 (LexerInterface!5401 List!38809) Bool)

(assert (=> b!3667847 (= res!1489340 (rulesInvariant!4798 thiss!23823 rules!3307))))

(assert (=> b!3667848 (= e!2271050 (and tp!1116459 tp!1116462))))

(declare-fun b!3667849 () Bool)

(assert (=> b!3667849 false))

(declare-fun lt!1277573 () Unit!56169)

(assert (=> b!3667849 (= lt!1277573 call!265479)))

(assert (=> b!3667849 (not call!265482)))

(declare-fun lt!1277545 () Unit!56169)

(assert (=> b!3667849 (= lt!1277545 (lemmaNonSepRuleNotContainsCharContainedInASepRule!458 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) rule!403 lt!1277567))))

(declare-fun Unit!56183 () Unit!56169)

(assert (=> b!3667849 (= e!2271048 Unit!56183)))

(declare-fun b!3667850 () Bool)

(assert (=> b!3667850 (= e!2271054 e!2271080)))

(declare-fun res!1489350 () Bool)

(assert (=> b!3667850 (=> res!1489350 e!2271080)))

(declare-fun lt!1277588 () TokenValue!6042)

(assert (=> b!3667850 (= res!1489350 (not (= lt!1277580 (Some!8252 (tuple2!38553 (Token!10991 lt!1277588 (rule!8632 (_1!22410 lt!1277551)) lt!1277587 lt!1277541) (_2!22410 lt!1277551))))))))

(assert (=> b!3667850 (= lt!1277587 (size!29564 lt!1277556))))

(assert (=> b!3667850 (= lt!1277588 (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556))))

(declare-fun lt!1277589 () Unit!56169)

(declare-fun lemmaCharactersSize!857 (Token!10990) Unit!56169)

(assert (=> b!3667850 (= lt!1277589 (lemmaCharactersSize!857 (_1!22410 lt!1277551)))))

(declare-fun lt!1277585 () Unit!56169)

(declare-fun lemmaEqSameImage!995 (TokenValueInjection!11512 BalanceConc!23280 BalanceConc!23280) Unit!56169)

(assert (=> b!3667850 (= lt!1277585 (lemmaEqSameImage!995 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556 (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551)))))))

(declare-fun lt!1277575 () Unit!56169)

(declare-fun lemmaSemiInverse!1561 (TokenValueInjection!11512 BalanceConc!23280) Unit!56169)

(assert (=> b!3667850 (= lt!1277575 (lemmaSemiInverse!1561 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556))))

(assert (= (and start!343614 res!1489336) b!3667806))

(assert (= (and b!3667806 res!1489337) b!3667847))

(assert (= (and b!3667847 res!1489340) b!3667803))

(assert (= (and b!3667803 res!1489360) b!3667801))

(assert (= (and b!3667801 res!1489351) b!3667841))

(assert (= (and b!3667841 res!1489353) b!3667842))

(assert (= (and b!3667842 res!1489345) b!3667835))

(assert (= (and b!3667835 res!1489356) b!3667805))

(assert (= (and b!3667805 res!1489341) b!3667838))

(assert (= (and b!3667838 res!1489349) b!3667827))

(assert (= (and b!3667827 (not res!1489346)) b!3667826))

(assert (= (and b!3667826 (not res!1489343)) b!3667840))

(assert (= (and b!3667840 (not res!1489352)) b!3667825))

(assert (= (and b!3667825 (not res!1489338)) b!3667808))

(assert (= (and b!3667808 (not res!1489357)) b!3667799))

(assert (= (and b!3667799 res!1489358) b!3667845))

(assert (= (and b!3667845 res!1489339) b!3667839))

(assert (= (and b!3667799 (not res!1489355)) b!3667816))

(assert (= (and b!3667816 (not res!1489347)) b!3667850))

(assert (= (and b!3667850 (not res!1489350)) b!3667843))

(assert (= (and b!3667843 (not res!1489359)) b!3667828))

(assert (= (and b!3667828 c!634124) b!3667812))

(assert (= (and b!3667828 (not c!634124)) b!3667837))

(assert (= (and b!3667828 c!634125) b!3667804))

(assert (= (and b!3667828 (not c!634125)) b!3667820))

(assert (= (and b!3667804 c!634122) b!3667849))

(assert (= (and b!3667804 (not c!634122)) b!3667819))

(assert (= (and b!3667820 c!634127) b!3667829))

(assert (= (and b!3667820 (not c!634127)) b!3667817))

(assert (= (or b!3667849 b!3667829) bm!265478))

(assert (= (or b!3667849 b!3667829) bm!265475))

(assert (= (or b!3667849 b!3667829) bm!265474))

(assert (= (and b!3667828 c!634126) b!3667821))

(assert (= (and b!3667828 (not c!634126)) b!3667846))

(assert (= (and b!3667821 c!634128) b!3667836))

(assert (= (and b!3667821 (not c!634128)) b!3667814))

(assert (= (or b!3667836 b!3667814) bm!265476))

(assert (= (or b!3667836 b!3667814) bm!265477))

(assert (= (or b!3667836 b!3667814) bm!265479))

(assert (= (and b!3667828 c!634123) b!3667844))

(assert (= (and b!3667828 (not c!634123)) b!3667830))

(assert (= (and b!3667828 (not res!1489348)) b!3667823))

(assert (= (and b!3667823 c!634129) b!3667822))

(assert (= (and b!3667823 (not c!634129)) b!3667815))

(assert (= (and b!3667822 res!1489354) b!3667832))

(assert (= (and b!3667823 (not res!1489344)) b!3667802))

(assert (= (and b!3667802 (not res!1489342)) b!3667818))

(assert (= b!3667800 b!3667811))

(assert (= b!3667833 b!3667800))

(assert (= (and start!343614 ((_ is Cons!38685) rules!3307)) b!3667833))

(assert (= (and start!343614 ((_ is Cons!38683) suffix!1395)) b!3667831))

(assert (= b!3667834 b!3667809))

(assert (= b!3667824 b!3667834))

(assert (= start!343614 b!3667824))

(assert (= b!3667813 b!3667848))

(assert (= start!343614 b!3667813))

(assert (= b!3667807 b!3667810))

(assert (= start!343614 b!3667807))

(declare-fun m!4175881 () Bool)

(assert (=> b!3667847 m!4175881))

(declare-fun m!4175883 () Bool)

(assert (=> b!3667822 m!4175883))

(declare-fun m!4175885 () Bool)

(assert (=> b!3667822 m!4175885))

(declare-fun m!4175887 () Bool)

(assert (=> b!3667822 m!4175887))

(declare-fun m!4175889 () Bool)

(assert (=> b!3667822 m!4175889))

(declare-fun m!4175891 () Bool)

(assert (=> b!3667822 m!4175891))

(assert (=> b!3667822 m!4175883))

(declare-fun m!4175893 () Bool)

(assert (=> b!3667807 m!4175893))

(declare-fun m!4175895 () Bool)

(assert (=> b!3667807 m!4175895))

(declare-fun m!4175897 () Bool)

(assert (=> b!3667821 m!4175897))

(declare-fun m!4175899 () Bool)

(assert (=> b!3667821 m!4175899))

(declare-fun m!4175901 () Bool)

(assert (=> b!3667843 m!4175901))

(declare-fun m!4175903 () Bool)

(assert (=> b!3667843 m!4175903))

(declare-fun m!4175905 () Bool)

(assert (=> b!3667843 m!4175905))

(declare-fun m!4175907 () Bool)

(assert (=> b!3667843 m!4175907))

(declare-fun m!4175909 () Bool)

(assert (=> b!3667843 m!4175909))

(declare-fun m!4175911 () Bool)

(assert (=> b!3667843 m!4175911))

(assert (=> b!3667843 m!4175905))

(declare-fun m!4175913 () Bool)

(assert (=> b!3667843 m!4175913))

(declare-fun m!4175915 () Bool)

(assert (=> b!3667816 m!4175915))

(declare-fun m!4175917 () Bool)

(assert (=> bm!265476 m!4175917))

(declare-fun m!4175919 () Bool)

(assert (=> b!3667805 m!4175919))

(declare-fun m!4175921 () Bool)

(assert (=> b!3667808 m!4175921))

(declare-fun m!4175923 () Bool)

(assert (=> b!3667836 m!4175923))

(declare-fun m!4175925 () Bool)

(assert (=> b!3667845 m!4175925))

(assert (=> b!3667845 m!4175925))

(declare-fun m!4175927 () Bool)

(assert (=> b!3667845 m!4175927))

(assert (=> b!3667845 m!4175927))

(declare-fun m!4175929 () Bool)

(assert (=> b!3667845 m!4175929))

(declare-fun m!4175931 () Bool)

(assert (=> b!3667845 m!4175931))

(declare-fun m!4175933 () Bool)

(assert (=> b!3667813 m!4175933))

(declare-fun m!4175935 () Bool)

(assert (=> b!3667813 m!4175935))

(declare-fun m!4175937 () Bool)

(assert (=> b!3667824 m!4175937))

(declare-fun m!4175939 () Bool)

(assert (=> b!3667802 m!4175939))

(declare-fun m!4175941 () Bool)

(assert (=> bm!265477 m!4175941))

(declare-fun m!4175943 () Bool)

(assert (=> b!3667803 m!4175943))

(declare-fun m!4175945 () Bool)

(assert (=> b!3667827 m!4175945))

(declare-fun m!4175947 () Bool)

(assert (=> b!3667827 m!4175947))

(declare-fun m!4175949 () Bool)

(assert (=> b!3667827 m!4175949))

(declare-fun m!4175951 () Bool)

(assert (=> b!3667835 m!4175951))

(declare-fun m!4175953 () Bool)

(assert (=> bm!265474 m!4175953))

(declare-fun m!4175955 () Bool)

(assert (=> b!3667812 m!4175955))

(declare-fun m!4175957 () Bool)

(assert (=> b!3667842 m!4175957))

(declare-fun m!4175959 () Bool)

(assert (=> b!3667842 m!4175959))

(declare-fun m!4175961 () Bool)

(assert (=> b!3667842 m!4175961))

(declare-fun m!4175963 () Bool)

(assert (=> b!3667842 m!4175963))

(declare-fun m!4175965 () Bool)

(assert (=> b!3667849 m!4175965))

(assert (=> bm!265475 m!4175941))

(declare-fun m!4175967 () Bool)

(assert (=> b!3667840 m!4175967))

(declare-fun m!4175969 () Bool)

(assert (=> b!3667840 m!4175969))

(declare-fun m!4175971 () Bool)

(assert (=> b!3667840 m!4175971))

(declare-fun m!4175973 () Bool)

(assert (=> b!3667825 m!4175973))

(assert (=> b!3667825 m!4175973))

(declare-fun m!4175975 () Bool)

(assert (=> b!3667825 m!4175975))

(declare-fun m!4175977 () Bool)

(assert (=> b!3667799 m!4175977))

(declare-fun m!4175979 () Bool)

(assert (=> b!3667799 m!4175979))

(declare-fun m!4175981 () Bool)

(assert (=> b!3667799 m!4175981))

(declare-fun m!4175983 () Bool)

(assert (=> b!3667799 m!4175983))

(declare-fun m!4175985 () Bool)

(assert (=> b!3667799 m!4175985))

(declare-fun m!4175987 () Bool)

(assert (=> b!3667799 m!4175987))

(assert (=> b!3667799 m!4175925))

(declare-fun m!4175989 () Bool)

(assert (=> b!3667799 m!4175989))

(declare-fun m!4175991 () Bool)

(assert (=> b!3667799 m!4175991))

(declare-fun m!4175993 () Bool)

(assert (=> b!3667799 m!4175993))

(declare-fun m!4175995 () Bool)

(assert (=> b!3667799 m!4175995))

(declare-fun m!4175997 () Bool)

(assert (=> b!3667799 m!4175997))

(declare-fun m!4175999 () Bool)

(assert (=> b!3667799 m!4175999))

(assert (=> b!3667799 m!4175997))

(declare-fun m!4176001 () Bool)

(assert (=> b!3667799 m!4176001))

(declare-fun m!4176003 () Bool)

(assert (=> b!3667799 m!4176003))

(declare-fun m!4176005 () Bool)

(assert (=> b!3667800 m!4176005))

(declare-fun m!4176007 () Bool)

(assert (=> b!3667800 m!4176007))

(declare-fun m!4176009 () Bool)

(assert (=> b!3667829 m!4176009))

(declare-fun m!4176011 () Bool)

(assert (=> start!343614 m!4176011))

(declare-fun m!4176013 () Bool)

(assert (=> bm!265478 m!4176013))

(declare-fun m!4176015 () Bool)

(assert (=> b!3667844 m!4176015))

(declare-fun m!4176017 () Bool)

(assert (=> b!3667826 m!4176017))

(declare-fun m!4176019 () Bool)

(assert (=> b!3667818 m!4176019))

(declare-fun m!4176021 () Bool)

(assert (=> bm!265479 m!4176021))

(declare-fun m!4176023 () Bool)

(assert (=> b!3667834 m!4176023))

(declare-fun m!4176025 () Bool)

(assert (=> b!3667834 m!4176025))

(declare-fun m!4176027 () Bool)

(assert (=> b!3667823 m!4176027))

(declare-fun m!4176029 () Bool)

(assert (=> b!3667823 m!4176029))

(declare-fun m!4176031 () Bool)

(assert (=> b!3667828 m!4176031))

(declare-fun m!4176033 () Bool)

(assert (=> b!3667828 m!4176033))

(declare-fun m!4176035 () Bool)

(assert (=> b!3667828 m!4176035))

(declare-fun m!4176037 () Bool)

(assert (=> b!3667828 m!4176037))

(declare-fun m!4176039 () Bool)

(assert (=> b!3667814 m!4176039))

(declare-fun m!4176041 () Bool)

(assert (=> b!3667850 m!4176041))

(declare-fun m!4176043 () Bool)

(assert (=> b!3667850 m!4176043))

(declare-fun m!4176045 () Bool)

(assert (=> b!3667850 m!4176045))

(assert (=> b!3667850 m!4176043))

(declare-fun m!4176047 () Bool)

(assert (=> b!3667850 m!4176047))

(declare-fun m!4176049 () Bool)

(assert (=> b!3667850 m!4176049))

(declare-fun m!4176051 () Bool)

(assert (=> b!3667850 m!4176051))

(declare-fun m!4176053 () Bool)

(assert (=> b!3667806 m!4176053))

(declare-fun m!4176055 () Bool)

(assert (=> b!3667801 m!4176055))

(check-sat (not bm!265476) (not b!3667835) (not b_next!97591) (not b_next!97589) (not b!3667799) (not b!3667844) (not b_next!97577) (not b!3667821) (not b!3667800) (not b!3667829) (not b!3667825) (not bm!265475) (not b!3667827) (not b!3667847) (not b!3667828) b_and!272901 (not b!3667850) (not b!3667845) (not b!3667803) (not b!3667816) (not b_next!97587) (not b_next!97579) (not b_next!97585) b_and!272899 b_and!272891 (not b!3667836) b_and!272897 (not b!3667805) (not b_next!97583) (not b!3667826) b_and!272905 (not b_next!97581) (not b!3667813) (not b!3667822) (not bm!265478) b_and!272895 (not b!3667831) (not bm!265479) (not b!3667834) (not b!3667814) (not b!3667806) b_and!272893 (not b!3667842) (not start!343614) b_and!272903 (not b!3667833) (not b!3667849) (not b!3667824) (not bm!265477) (not b!3667823) (not b!3667808) (not b!3667843) (not bm!265474) (not b!3667818) (not b!3667807) (not b!3667840) (not b!3667801) tp_is_empty!18225 (not b!3667812) (not b!3667802))
(check-sat (not b_next!97577) b_and!272901 (not b_next!97591) (not b_next!97589) (not b_next!97583) b_and!272895 b_and!272893 b_and!272903 (not b_next!97587) (not b_next!97579) (not b_next!97585) b_and!272899 b_and!272891 b_and!272897 b_and!272905 (not b_next!97581))
(get-model)

(declare-fun d!1077243 () Bool)

(assert (=> d!1077243 (not (matchR!5140 (regex!5812 rule!403) lt!1277578))))

(declare-fun lt!1277595 () Unit!56169)

(declare-fun choose!21771 (Regex!10571 List!38807 C!21328) Unit!56169)

(assert (=> d!1077243 (= lt!1277595 (choose!21771 (regex!5812 rule!403) lt!1277578 lt!1277567))))

(declare-fun validRegex!4840 (Regex!10571) Bool)

(assert (=> d!1077243 (validRegex!4840 (regex!5812 rule!403))))

(assert (=> d!1077243 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 rule!403) lt!1277578 lt!1277567) lt!1277595)))

(declare-fun bs!573032 () Bool)

(assert (= bs!573032 d!1077243))

(assert (=> bs!573032 m!4175945))

(declare-fun m!4176057 () Bool)

(assert (=> bs!573032 m!4176057))

(declare-fun m!4176059 () Bool)

(assert (=> bs!573032 m!4176059))

(assert (=> b!3667812 d!1077243))

(declare-fun d!1077245 () Bool)

(declare-fun fromListB!2015 (List!38807) BalanceConc!23280)

(assert (=> d!1077245 (= (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551))) (fromListB!2015 (originalCharacters!6526 (_1!22410 lt!1277551))))))

(declare-fun bs!573033 () Bool)

(assert (= bs!573033 d!1077245))

(declare-fun m!4176061 () Bool)

(assert (=> bs!573033 m!4176061))

(assert (=> b!3667850 d!1077245))

(declare-fun b!3667975 () Bool)

(declare-fun e!2271164 () Bool)

(assert (=> b!3667975 (= e!2271164 true)))

(declare-fun d!1077247 () Bool)

(assert (=> d!1077247 e!2271164))

(assert (= d!1077247 b!3667975))

(declare-fun lambda!124660 () Int)

(declare-fun order!21387 () Int)

(declare-fun order!21389 () Int)

(declare-fun dynLambda!16924 (Int Int) Int)

(declare-fun dynLambda!16925 (Int Int) Int)

(assert (=> b!3667975 (< (dynLambda!16924 order!21387 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) (dynLambda!16925 order!21389 lambda!124660))))

(declare-fun order!21391 () Int)

(declare-fun dynLambda!16926 (Int Int) Int)

(assert (=> b!3667975 (< (dynLambda!16926 order!21391 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) (dynLambda!16925 order!21389 lambda!124660))))

(declare-fun dynLambda!16927 (Int BalanceConc!23280) TokenValue!6042)

(assert (=> d!1077247 (= (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551)))))))

(declare-fun lt!1277626 () Unit!56169)

(declare-fun Forall2of!394 (Int BalanceConc!23280 BalanceConc!23280) Unit!56169)

(assert (=> d!1077247 (= lt!1277626 (Forall2of!394 lambda!124660 lt!1277556 (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551)))))))

(assert (=> d!1077247 (= (list!14362 lt!1277556) (list!14362 (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551)))))))

(assert (=> d!1077247 (= (lemmaEqSameImage!995 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556 (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551)))) lt!1277626)))

(declare-fun b_lambda!108903 () Bool)

(assert (=> (not b_lambda!108903) (not d!1077247)))

(declare-fun t!299358 () Bool)

(declare-fun tb!212301 () Bool)

(assert (=> (and b!3667811 (= (toValue!8108 (transformation!5812 (h!44105 rules!3307))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299358) tb!212301))

(declare-fun result!258390 () Bool)

(assert (=> tb!212301 (= result!258390 (inv!21 (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556)))))

(declare-fun m!4176169 () Bool)

(assert (=> tb!212301 m!4176169))

(assert (=> d!1077247 t!299358))

(declare-fun b_and!272955 () Bool)

(assert (= b_and!272891 (and (=> t!299358 result!258390) b_and!272955)))

(declare-fun t!299360 () Bool)

(declare-fun tb!212303 () Bool)

(assert (=> (and b!3667809 (= (toValue!8108 (transformation!5812 (rule!8632 token!511))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299360) tb!212303))

(declare-fun result!258394 () Bool)

(assert (= result!258394 result!258390))

(assert (=> d!1077247 t!299360))

(declare-fun b_and!272957 () Bool)

(assert (= b_and!272895 (and (=> t!299360 result!258394) b_and!272957)))

(declare-fun tb!212305 () Bool)

(declare-fun t!299362 () Bool)

(assert (=> (and b!3667810 (= (toValue!8108 (transformation!5812 anOtherTypeRule!33)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299362) tb!212305))

(declare-fun result!258396 () Bool)

(assert (= result!258396 result!258390))

(assert (=> d!1077247 t!299362))

(declare-fun b_and!272959 () Bool)

(assert (= b_and!272899 (and (=> t!299362 result!258396) b_and!272959)))

(declare-fun tb!212307 () Bool)

(declare-fun t!299364 () Bool)

(assert (=> (and b!3667848 (= (toValue!8108 (transformation!5812 rule!403)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299364) tb!212307))

(declare-fun result!258398 () Bool)

(assert (= result!258398 result!258390))

(assert (=> d!1077247 t!299364))

(declare-fun b_and!272961 () Bool)

(assert (= b_and!272903 (and (=> t!299364 result!258398) b_and!272961)))

(declare-fun b_lambda!108905 () Bool)

(assert (=> (not b_lambda!108905) (not d!1077247)))

(declare-fun t!299366 () Bool)

(declare-fun tb!212309 () Bool)

(assert (=> (and b!3667811 (= (toValue!8108 (transformation!5812 (h!44105 rules!3307))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299366) tb!212309))

(declare-fun result!258400 () Bool)

(assert (=> tb!212309 (= result!258400 (inv!21 (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (seqFromList!4361 (originalCharacters!6526 (_1!22410 lt!1277551))))))))

(declare-fun m!4176171 () Bool)

(assert (=> tb!212309 m!4176171))

(assert (=> d!1077247 t!299366))

(declare-fun b_and!272963 () Bool)

(assert (= b_and!272955 (and (=> t!299366 result!258400) b_and!272963)))

(declare-fun tb!212311 () Bool)

(declare-fun t!299368 () Bool)

(assert (=> (and b!3667809 (= (toValue!8108 (transformation!5812 (rule!8632 token!511))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299368) tb!212311))

(declare-fun result!258402 () Bool)

(assert (= result!258402 result!258400))

(assert (=> d!1077247 t!299368))

(declare-fun b_and!272965 () Bool)

(assert (= b_and!272957 (and (=> t!299368 result!258402) b_and!272965)))

(declare-fun tb!212313 () Bool)

(declare-fun t!299370 () Bool)

(assert (=> (and b!3667810 (= (toValue!8108 (transformation!5812 anOtherTypeRule!33)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299370) tb!212313))

(declare-fun result!258404 () Bool)

(assert (= result!258404 result!258400))

(assert (=> d!1077247 t!299370))

(declare-fun b_and!272967 () Bool)

(assert (= b_and!272959 (and (=> t!299370 result!258404) b_and!272967)))

(declare-fun t!299372 () Bool)

(declare-fun tb!212315 () Bool)

(assert (=> (and b!3667848 (= (toValue!8108 (transformation!5812 rule!403)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299372) tb!212315))

(declare-fun result!258406 () Bool)

(assert (= result!258406 result!258400))

(assert (=> d!1077247 t!299372))

(declare-fun b_and!272969 () Bool)

(assert (= b_and!272961 (and (=> t!299372 result!258406) b_and!272969)))

(declare-fun m!4176173 () Bool)

(assert (=> d!1077247 m!4176173))

(assert (=> d!1077247 m!4176043))

(declare-fun m!4176175 () Bool)

(assert (=> d!1077247 m!4176175))

(assert (=> d!1077247 m!4176043))

(declare-fun m!4176177 () Bool)

(assert (=> d!1077247 m!4176177))

(assert (=> d!1077247 m!4175985))

(assert (=> d!1077247 m!4176043))

(declare-fun m!4176179 () Bool)

(assert (=> d!1077247 m!4176179))

(assert (=> b!3667850 d!1077247))

(declare-fun d!1077305 () Bool)

(assert (=> d!1077305 (= (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556))))

(declare-fun b_lambda!108907 () Bool)

(assert (=> (not b_lambda!108907) (not d!1077305)))

(assert (=> d!1077305 t!299358))

(declare-fun b_and!272971 () Bool)

(assert (= b_and!272963 (and (=> t!299358 result!258390) b_and!272971)))

(assert (=> d!1077305 t!299360))

(declare-fun b_and!272973 () Bool)

(assert (= b_and!272965 (and (=> t!299360 result!258394) b_and!272973)))

(assert (=> d!1077305 t!299362))

(declare-fun b_and!272975 () Bool)

(assert (= b_and!272967 (and (=> t!299362 result!258396) b_and!272975)))

(assert (=> d!1077305 t!299364))

(declare-fun b_and!272977 () Bool)

(assert (= b_and!272969 (and (=> t!299364 result!258398) b_and!272977)))

(assert (=> d!1077305 m!4176173))

(assert (=> b!3667850 d!1077305))

(declare-fun b!3668008 () Bool)

(declare-fun e!2271186 () Bool)

(assert (=> b!3668008 (= e!2271186 true)))

(declare-fun d!1077309 () Bool)

(assert (=> d!1077309 e!2271186))

(assert (= d!1077309 b!3668008))

(declare-fun order!21393 () Int)

(declare-fun lambda!124663 () Int)

(declare-fun dynLambda!16928 (Int Int) Int)

(assert (=> b!3668008 (< (dynLambda!16924 order!21387 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) (dynLambda!16928 order!21393 lambda!124663))))

(assert (=> b!3668008 (< (dynLambda!16926 order!21391 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) (dynLambda!16928 order!21393 lambda!124663))))

(declare-fun dynLambda!16929 (Int TokenValue!6042) BalanceConc!23280)

(assert (=> d!1077309 (= (list!14362 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556))) (list!14362 lt!1277556))))

(declare-fun lt!1277633 () Unit!56169)

(declare-fun ForallOf!736 (Int BalanceConc!23280) Unit!56169)

(assert (=> d!1077309 (= lt!1277633 (ForallOf!736 lambda!124663 lt!1277556))))

(assert (=> d!1077309 (= (lemmaSemiInverse!1561 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277556) lt!1277633)))

(declare-fun b_lambda!108909 () Bool)

(assert (=> (not b_lambda!108909) (not d!1077309)))

(declare-fun t!299374 () Bool)

(declare-fun tb!212317 () Bool)

(assert (=> (and b!3667811 (= (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299374) tb!212317))

(declare-fun tp!1116473 () Bool)

(declare-fun b!3668017 () Bool)

(declare-fun e!2271191 () Bool)

(declare-fun inv!52168 (Conc!11833) Bool)

(assert (=> b!3668017 (= e!2271191 (and (inv!52168 (c!634131 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556)))) tp!1116473))))

(declare-fun result!258408 () Bool)

(declare-fun inv!52169 (BalanceConc!23280) Bool)

(assert (=> tb!212317 (= result!258408 (and (inv!52169 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277556))) e!2271191))))

(assert (= tb!212317 b!3668017))

(declare-fun m!4176205 () Bool)

(assert (=> b!3668017 m!4176205))

(declare-fun m!4176207 () Bool)

(assert (=> tb!212317 m!4176207))

(assert (=> d!1077309 t!299374))

(declare-fun b_and!272979 () Bool)

(assert (= b_and!272893 (and (=> t!299374 result!258408) b_and!272979)))

(declare-fun t!299376 () Bool)

(declare-fun tb!212319 () Bool)

(assert (=> (and b!3667809 (= (toChars!7967 (transformation!5812 (rule!8632 token!511))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299376) tb!212319))

(declare-fun result!258412 () Bool)

(assert (= result!258412 result!258408))

(assert (=> d!1077309 t!299376))

(declare-fun b_and!272981 () Bool)

(assert (= b_and!272897 (and (=> t!299376 result!258412) b_and!272981)))

(declare-fun t!299378 () Bool)

(declare-fun tb!212321 () Bool)

(assert (=> (and b!3667810 (= (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299378) tb!212321))

(declare-fun result!258414 () Bool)

(assert (= result!258414 result!258408))

(assert (=> d!1077309 t!299378))

(declare-fun b_and!272983 () Bool)

(assert (= b_and!272901 (and (=> t!299378 result!258414) b_and!272983)))

(declare-fun tb!212323 () Bool)

(declare-fun t!299380 () Bool)

(assert (=> (and b!3667848 (= (toChars!7967 (transformation!5812 rule!403)) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299380) tb!212323))

(declare-fun result!258416 () Bool)

(assert (= result!258416 result!258408))

(assert (=> d!1077309 t!299380))

(declare-fun b_and!272985 () Bool)

(assert (= b_and!272905 (and (=> t!299380 result!258416) b_and!272985)))

(declare-fun b_lambda!108911 () Bool)

(assert (=> (not b_lambda!108911) (not d!1077309)))

(assert (=> d!1077309 t!299358))

(declare-fun b_and!272987 () Bool)

(assert (= b_and!272971 (and (=> t!299358 result!258390) b_and!272987)))

(assert (=> d!1077309 t!299360))

(declare-fun b_and!272989 () Bool)

(assert (= b_and!272973 (and (=> t!299360 result!258394) b_and!272989)))

(assert (=> d!1077309 t!299362))

(declare-fun b_and!272991 () Bool)

(assert (= b_and!272975 (and (=> t!299362 result!258396) b_and!272991)))

(assert (=> d!1077309 t!299364))

(declare-fun b_and!272993 () Bool)

(assert (= b_and!272977 (and (=> t!299364 result!258398) b_and!272993)))

(assert (=> d!1077309 m!4175985))

(declare-fun m!4176209 () Bool)

(assert (=> d!1077309 m!4176209))

(assert (=> d!1077309 m!4176173))

(declare-fun m!4176211 () Bool)

(assert (=> d!1077309 m!4176211))

(declare-fun m!4176213 () Bool)

(assert (=> d!1077309 m!4176213))

(assert (=> d!1077309 m!4176173))

(assert (=> d!1077309 m!4176211))

(assert (=> b!3667850 d!1077309))

(declare-fun d!1077319 () Bool)

(assert (=> d!1077319 (= (size!29563 (_1!22410 lt!1277551)) (size!29565 (originalCharacters!6526 (_1!22410 lt!1277551))))))

(declare-fun Unit!56185 () Unit!56169)

(assert (=> d!1077319 (= (lemmaCharactersSize!857 (_1!22410 lt!1277551)) Unit!56185)))

(declare-fun bs!573041 () Bool)

(assert (= bs!573041 d!1077319))

(declare-fun m!4176227 () Bool)

(assert (=> bs!573041 m!4176227))

(assert (=> b!3667850 d!1077319))

(declare-fun d!1077323 () Bool)

(declare-fun lt!1277636 () Int)

(assert (=> d!1077323 (= lt!1277636 (size!29565 (list!14362 lt!1277556)))))

(declare-fun size!29567 (Conc!11833) Int)

(assert (=> d!1077323 (= lt!1277636 (size!29567 (c!634131 lt!1277556)))))

(assert (=> d!1077323 (= (size!29564 lt!1277556) lt!1277636)))

(declare-fun bs!573042 () Bool)

(assert (= bs!573042 d!1077323))

(assert (=> bs!573042 m!4175985))

(assert (=> bs!573042 m!4175985))

(declare-fun m!4176229 () Bool)

(assert (=> bs!573042 m!4176229))

(declare-fun m!4176231 () Bool)

(assert (=> bs!573042 m!4176231))

(assert (=> b!3667850 d!1077323))

(declare-fun d!1077325 () Bool)

(assert (=> d!1077325 (= (get!12768 lt!1277559) (v!38156 lt!1277559))))

(assert (=> b!3667835 d!1077325))

(declare-fun d!1077327 () Bool)

(assert (=> d!1077327 (not (contains!7691 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277590))))

(declare-fun lt!1277639 () Unit!56169)

(declare-fun choose!21772 (LexerInterface!5401 List!38809 List!38809 Rule!11424 Rule!11424 C!21328) Unit!56169)

(assert (=> d!1077327 (= lt!1277639 (choose!21772 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) anOtherTypeRule!33 lt!1277590))))

(assert (=> d!1077327 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077327 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!458 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) anOtherTypeRule!33 lt!1277590) lt!1277639)))

(declare-fun bs!573043 () Bool)

(assert (= bs!573043 d!1077327))

(assert (=> bs!573043 m!4175941))

(assert (=> bs!573043 m!4175941))

(declare-fun m!4176233 () Bool)

(assert (=> bs!573043 m!4176233))

(declare-fun m!4176235 () Bool)

(assert (=> bs!573043 m!4176235))

(assert (=> bs!573043 m!4175881))

(assert (=> b!3667814 d!1077327))

(declare-fun d!1077329 () Bool)

(assert (=> d!1077329 (= (inv!52161 (tag!6598 (rule!8632 token!511))) (= (mod (str.len (value!186101 (tag!6598 (rule!8632 token!511)))) 2) 0))))

(assert (=> b!3667834 d!1077329))

(declare-fun d!1077331 () Bool)

(declare-fun res!1489448 () Bool)

(declare-fun e!2271196 () Bool)

(assert (=> d!1077331 (=> (not res!1489448) (not e!2271196))))

(declare-fun semiInverseModEq!2479 (Int Int) Bool)

(assert (=> d!1077331 (= res!1489448 (semiInverseModEq!2479 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (toValue!8108 (transformation!5812 (rule!8632 token!511)))))))

(assert (=> d!1077331 (= (inv!52164 (transformation!5812 (rule!8632 token!511))) e!2271196)))

(declare-fun b!3668023 () Bool)

(declare-fun equivClasses!2378 (Int Int) Bool)

(assert (=> b!3668023 (= e!2271196 (equivClasses!2378 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (toValue!8108 (transformation!5812 (rule!8632 token!511)))))))

(assert (= (and d!1077331 res!1489448) b!3668023))

(declare-fun m!4176237 () Bool)

(assert (=> d!1077331 m!4176237))

(declare-fun m!4176239 () Bool)

(assert (=> b!3668023 m!4176239))

(assert (=> b!3667834 d!1077331))

(declare-fun d!1077333 () Bool)

(assert (=> d!1077333 (= (inv!52161 (tag!6598 rule!403)) (= (mod (str.len (value!186101 (tag!6598 rule!403))) 2) 0))))

(assert (=> b!3667813 d!1077333))

(declare-fun d!1077335 () Bool)

(declare-fun res!1489449 () Bool)

(declare-fun e!2271197 () Bool)

(assert (=> d!1077335 (=> (not res!1489449) (not e!2271197))))

(assert (=> d!1077335 (= res!1489449 (semiInverseModEq!2479 (toChars!7967 (transformation!5812 rule!403)) (toValue!8108 (transformation!5812 rule!403))))))

(assert (=> d!1077335 (= (inv!52164 (transformation!5812 rule!403)) e!2271197)))

(declare-fun b!3668024 () Bool)

(assert (=> b!3668024 (= e!2271197 (equivClasses!2378 (toChars!7967 (transformation!5812 rule!403)) (toValue!8108 (transformation!5812 rule!403))))))

(assert (= (and d!1077335 res!1489449) b!3668024))

(declare-fun m!4176241 () Bool)

(assert (=> d!1077335 m!4176241))

(declare-fun m!4176243 () Bool)

(assert (=> b!3668024 m!4176243))

(assert (=> b!3667813 d!1077335))

(declare-fun b!3668053 () Bool)

(declare-fun e!2271215 () Bool)

(declare-fun nullable!3679 (Regex!10571) Bool)

(assert (=> b!3668053 (= e!2271215 (nullable!3679 (regex!5812 rule!403)))))

(declare-fun d!1077337 () Bool)

(declare-fun e!2271212 () Bool)

(assert (=> d!1077337 e!2271212))

(declare-fun c!634175 () Bool)

(assert (=> d!1077337 (= c!634175 ((_ is EmptyExpr!10571) (regex!5812 rule!403)))))

(declare-fun lt!1277642 () Bool)

(assert (=> d!1077337 (= lt!1277642 e!2271215)))

(declare-fun c!634176 () Bool)

(assert (=> d!1077337 (= c!634176 (isEmpty!22954 lt!1277578))))

(assert (=> d!1077337 (validRegex!4840 (regex!5812 rule!403))))

(assert (=> d!1077337 (= (matchR!5140 (regex!5812 rule!403) lt!1277578) lt!1277642)))

(declare-fun b!3668054 () Bool)

(declare-fun e!2271213 () Bool)

(declare-fun e!2271218 () Bool)

(assert (=> b!3668054 (= e!2271213 e!2271218)))

(declare-fun res!1489470 () Bool)

(assert (=> b!3668054 (=> (not res!1489470) (not e!2271218))))

(assert (=> b!3668054 (= res!1489470 (not lt!1277642))))

(declare-fun b!3668055 () Bool)

(declare-fun res!1489467 () Bool)

(declare-fun e!2271214 () Bool)

(assert (=> b!3668055 (=> (not res!1489467) (not e!2271214))))

(declare-fun tail!5677 (List!38807) List!38807)

(assert (=> b!3668055 (= res!1489467 (isEmpty!22954 (tail!5677 lt!1277578)))))

(declare-fun b!3668056 () Bool)

(declare-fun derivativeStep!3228 (Regex!10571 C!21328) Regex!10571)

(assert (=> b!3668056 (= e!2271215 (matchR!5140 (derivativeStep!3228 (regex!5812 rule!403) (head!7848 lt!1277578)) (tail!5677 lt!1277578)))))

(declare-fun b!3668057 () Bool)

(assert (=> b!3668057 (= e!2271214 (= (head!7848 lt!1277578) (c!634130 (regex!5812 rule!403))))))

(declare-fun b!3668058 () Bool)

(declare-fun res!1489469 () Bool)

(declare-fun e!2271216 () Bool)

(assert (=> b!3668058 (=> res!1489469 e!2271216)))

(assert (=> b!3668058 (= res!1489469 (not (isEmpty!22954 (tail!5677 lt!1277578))))))

(declare-fun bm!265498 () Bool)

(declare-fun call!265503 () Bool)

(assert (=> bm!265498 (= call!265503 (isEmpty!22954 lt!1277578))))

(declare-fun b!3668059 () Bool)

(assert (=> b!3668059 (= e!2271212 (= lt!1277642 call!265503))))

(declare-fun b!3668060 () Bool)

(declare-fun res!1489472 () Bool)

(assert (=> b!3668060 (=> res!1489472 e!2271213)))

(assert (=> b!3668060 (= res!1489472 e!2271214)))

(declare-fun res!1489473 () Bool)

(assert (=> b!3668060 (=> (not res!1489473) (not e!2271214))))

(assert (=> b!3668060 (= res!1489473 lt!1277642)))

(declare-fun b!3668061 () Bool)

(declare-fun res!1489466 () Bool)

(assert (=> b!3668061 (=> res!1489466 e!2271213)))

(assert (=> b!3668061 (= res!1489466 (not ((_ is ElementMatch!10571) (regex!5812 rule!403))))))

(declare-fun e!2271217 () Bool)

(assert (=> b!3668061 (= e!2271217 e!2271213)))

(declare-fun b!3668062 () Bool)

(assert (=> b!3668062 (= e!2271218 e!2271216)))

(declare-fun res!1489468 () Bool)

(assert (=> b!3668062 (=> res!1489468 e!2271216)))

(assert (=> b!3668062 (= res!1489468 call!265503)))

(declare-fun b!3668063 () Bool)

(assert (=> b!3668063 (= e!2271212 e!2271217)))

(declare-fun c!634174 () Bool)

(assert (=> b!3668063 (= c!634174 ((_ is EmptyLang!10571) (regex!5812 rule!403)))))

(declare-fun b!3668064 () Bool)

(declare-fun res!1489471 () Bool)

(assert (=> b!3668064 (=> (not res!1489471) (not e!2271214))))

(assert (=> b!3668064 (= res!1489471 (not call!265503))))

(declare-fun b!3668065 () Bool)

(assert (=> b!3668065 (= e!2271216 (not (= (head!7848 lt!1277578) (c!634130 (regex!5812 rule!403)))))))

(declare-fun b!3668066 () Bool)

(assert (=> b!3668066 (= e!2271217 (not lt!1277642))))

(assert (= (and d!1077337 c!634176) b!3668053))

(assert (= (and d!1077337 (not c!634176)) b!3668056))

(assert (= (and d!1077337 c!634175) b!3668059))

(assert (= (and d!1077337 (not c!634175)) b!3668063))

(assert (= (and b!3668063 c!634174) b!3668066))

(assert (= (and b!3668063 (not c!634174)) b!3668061))

(assert (= (and b!3668061 (not res!1489466)) b!3668060))

(assert (= (and b!3668060 res!1489473) b!3668064))

(assert (= (and b!3668064 res!1489471) b!3668055))

(assert (= (and b!3668055 res!1489467) b!3668057))

(assert (= (and b!3668060 (not res!1489472)) b!3668054))

(assert (= (and b!3668054 res!1489470) b!3668062))

(assert (= (and b!3668062 (not res!1489468)) b!3668058))

(assert (= (and b!3668058 (not res!1489469)) b!3668065))

(assert (= (or b!3668059 b!3668062 b!3668064) bm!265498))

(declare-fun m!4176245 () Bool)

(assert (=> b!3668057 m!4176245))

(assert (=> bm!265498 m!4176019))

(assert (=> d!1077337 m!4176019))

(assert (=> d!1077337 m!4176059))

(declare-fun m!4176247 () Bool)

(assert (=> b!3668055 m!4176247))

(assert (=> b!3668055 m!4176247))

(declare-fun m!4176249 () Bool)

(assert (=> b!3668055 m!4176249))

(assert (=> b!3668058 m!4176247))

(assert (=> b!3668058 m!4176247))

(assert (=> b!3668058 m!4176249))

(assert (=> b!3668065 m!4176245))

(declare-fun m!4176251 () Bool)

(assert (=> b!3668053 m!4176251))

(assert (=> b!3668056 m!4176245))

(assert (=> b!3668056 m!4176245))

(declare-fun m!4176253 () Bool)

(assert (=> b!3668056 m!4176253))

(assert (=> b!3668056 m!4176247))

(assert (=> b!3668056 m!4176253))

(assert (=> b!3668056 m!4176247))

(declare-fun m!4176255 () Bool)

(assert (=> b!3668056 m!4176255))

(assert (=> b!3667827 d!1077337))

(declare-fun d!1077339 () Bool)

(declare-fun res!1489492 () Bool)

(declare-fun e!2271227 () Bool)

(assert (=> d!1077339 (=> (not res!1489492) (not e!2271227))))

(assert (=> d!1077339 (= res!1489492 (validRegex!4840 (regex!5812 rule!403)))))

(assert (=> d!1077339 (= (ruleValid!2076 thiss!23823 rule!403) e!2271227)))

(declare-fun b!3668089 () Bool)

(declare-fun res!1489493 () Bool)

(assert (=> b!3668089 (=> (not res!1489493) (not e!2271227))))

(assert (=> b!3668089 (= res!1489493 (not (nullable!3679 (regex!5812 rule!403))))))

(declare-fun b!3668090 () Bool)

(assert (=> b!3668090 (= e!2271227 (not (= (tag!6598 rule!403) (String!43545 ""))))))

(assert (= (and d!1077339 res!1489492) b!3668089))

(assert (= (and b!3668089 res!1489493) b!3668090))

(assert (=> d!1077339 m!4176059))

(assert (=> b!3668089 m!4176251))

(assert (=> b!3667827 d!1077339))

(declare-fun d!1077341 () Bool)

(assert (=> d!1077341 (ruleValid!2076 thiss!23823 rule!403)))

(declare-fun lt!1277655 () Unit!56169)

(declare-fun choose!21775 (LexerInterface!5401 Rule!11424 List!38809) Unit!56169)

(assert (=> d!1077341 (= lt!1277655 (choose!21775 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1077341 (contains!7692 rules!3307 rule!403)))

(assert (=> d!1077341 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1230 thiss!23823 rule!403 rules!3307) lt!1277655)))

(declare-fun bs!573044 () Bool)

(assert (= bs!573044 d!1077341))

(assert (=> bs!573044 m!4175947))

(declare-fun m!4176257 () Bool)

(assert (=> bs!573044 m!4176257))

(assert (=> bs!573044 m!4175943))

(assert (=> b!3667827 d!1077341))

(declare-fun d!1077343 () Bool)

(assert (=> d!1077343 (= (isEmpty!22955 rules!3307) ((_ is Nil!38685) rules!3307))))

(assert (=> b!3667806 d!1077343))

(declare-fun d!1077345 () Bool)

(assert (=> d!1077345 (= (isEmpty!22954 suffix!1395) ((_ is Nil!38683) suffix!1395))))

(assert (=> b!3667826 d!1077345))

(declare-fun d!1077347 () Bool)

(declare-fun lt!1277663 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5598 (List!38807) (InoxSet C!21328))

(assert (=> d!1077347 (= lt!1277663 (select (content!5598 call!265481) lt!1277590))))

(declare-fun e!2271236 () Bool)

(assert (=> d!1077347 (= lt!1277663 e!2271236)))

(declare-fun res!1489505 () Bool)

(assert (=> d!1077347 (=> (not res!1489505) (not e!2271236))))

(assert (=> d!1077347 (= res!1489505 ((_ is Cons!38683) call!265481))))

(assert (=> d!1077347 (= (contains!7691 call!265481 lt!1277590) lt!1277663)))

(declare-fun b!3668104 () Bool)

(declare-fun e!2271235 () Bool)

(assert (=> b!3668104 (= e!2271236 e!2271235)))

(declare-fun res!1489506 () Bool)

(assert (=> b!3668104 (=> res!1489506 e!2271235)))

(assert (=> b!3668104 (= res!1489506 (= (h!44103 call!265481) lt!1277590))))

(declare-fun b!3668105 () Bool)

(assert (=> b!3668105 (= e!2271235 (contains!7691 (t!299322 call!265481) lt!1277590))))

(assert (= (and d!1077347 res!1489505) b!3668104))

(assert (= (and b!3668104 (not res!1489506)) b!3668105))

(declare-fun m!4176265 () Bool)

(assert (=> d!1077347 m!4176265))

(declare-fun m!4176271 () Bool)

(assert (=> d!1077347 m!4176271))

(declare-fun m!4176273 () Bool)

(assert (=> b!3668105 m!4176273))

(assert (=> bm!265479 d!1077347))

(declare-fun d!1077349 () Bool)

(assert (=> d!1077349 (= (isEmpty!22954 (_2!22410 lt!1277564)) ((_ is Nil!38683) (_2!22410 lt!1277564)))))

(assert (=> b!3667805 d!1077349))

(declare-fun d!1077351 () Bool)

(declare-fun lt!1277664 () Bool)

(assert (=> d!1077351 (= lt!1277664 (select (content!5598 (usedCharacters!1024 (regex!5812 anOtherTypeRule!33))) lt!1277590))))

(declare-fun e!2271238 () Bool)

(assert (=> d!1077351 (= lt!1277664 e!2271238)))

(declare-fun res!1489507 () Bool)

(assert (=> d!1077351 (=> (not res!1489507) (not e!2271238))))

(assert (=> d!1077351 (= res!1489507 ((_ is Cons!38683) (usedCharacters!1024 (regex!5812 anOtherTypeRule!33))))))

(assert (=> d!1077351 (= (contains!7691 (usedCharacters!1024 (regex!5812 anOtherTypeRule!33)) lt!1277590) lt!1277664)))

(declare-fun b!3668106 () Bool)

(declare-fun e!2271237 () Bool)

(assert (=> b!3668106 (= e!2271238 e!2271237)))

(declare-fun res!1489508 () Bool)

(assert (=> b!3668106 (=> res!1489508 e!2271237)))

(assert (=> b!3668106 (= res!1489508 (= (h!44103 (usedCharacters!1024 (regex!5812 anOtherTypeRule!33))) lt!1277590))))

(declare-fun b!3668107 () Bool)

(assert (=> b!3668107 (= e!2271237 (contains!7691 (t!299322 (usedCharacters!1024 (regex!5812 anOtherTypeRule!33))) lt!1277590))))

(assert (= (and d!1077351 res!1489507) b!3668106))

(assert (= (and b!3668106 (not res!1489508)) b!3668107))

(assert (=> d!1077351 m!4175973))

(declare-fun m!4176285 () Bool)

(assert (=> d!1077351 m!4176285))

(declare-fun m!4176287 () Bool)

(assert (=> d!1077351 m!4176287))

(declare-fun m!4176289 () Bool)

(assert (=> b!3668107 m!4176289))

(assert (=> b!3667825 d!1077351))

(declare-fun d!1077353 () Bool)

(declare-fun c!634190 () Bool)

(assert (=> d!1077353 (= c!634190 (or ((_ is EmptyExpr!10571) (regex!5812 anOtherTypeRule!33)) ((_ is EmptyLang!10571) (regex!5812 anOtherTypeRule!33))))))

(declare-fun e!2271258 () List!38807)

(assert (=> d!1077353 (= (usedCharacters!1024 (regex!5812 anOtherTypeRule!33)) e!2271258)))

(declare-fun bm!265510 () Bool)

(declare-fun call!265515 () List!38807)

(declare-fun call!265517 () List!38807)

(assert (=> bm!265510 (= call!265515 call!265517)))

(declare-fun b!3668136 () Bool)

(assert (=> b!3668136 (= e!2271258 Nil!38683)))

(declare-fun b!3668137 () Bool)

(declare-fun e!2271256 () List!38807)

(assert (=> b!3668137 (= e!2271256 (Cons!38683 (c!634130 (regex!5812 anOtherTypeRule!33)) Nil!38683))))

(declare-fun b!3668138 () Bool)

(declare-fun c!634189 () Bool)

(assert (=> b!3668138 (= c!634189 ((_ is Star!10571) (regex!5812 anOtherTypeRule!33)))))

(declare-fun e!2271259 () List!38807)

(assert (=> b!3668138 (= e!2271256 e!2271259)))

(declare-fun bm!265511 () Bool)

(declare-fun c!634191 () Bool)

(assert (=> bm!265511 (= call!265517 (usedCharacters!1024 (ite c!634189 (reg!10900 (regex!5812 anOtherTypeRule!33)) (ite c!634191 (regOne!21655 (regex!5812 anOtherTypeRule!33)) (regTwo!21654 (regex!5812 anOtherTypeRule!33))))))))

(declare-fun b!3668139 () Bool)

(assert (=> b!3668139 (= e!2271259 call!265517)))

(declare-fun call!265518 () List!38807)

(declare-fun bm!265512 () Bool)

(declare-fun call!265516 () List!38807)

(assert (=> bm!265512 (= call!265518 (++!9628 (ite c!634191 call!265515 call!265516) (ite c!634191 call!265516 call!265515)))))

(declare-fun b!3668140 () Bool)

(declare-fun e!2271257 () List!38807)

(assert (=> b!3668140 (= e!2271259 e!2271257)))

(assert (=> b!3668140 (= c!634191 ((_ is Union!10571) (regex!5812 anOtherTypeRule!33)))))

(declare-fun b!3668141 () Bool)

(assert (=> b!3668141 (= e!2271257 call!265518)))

(declare-fun bm!265513 () Bool)

(assert (=> bm!265513 (= call!265516 (usedCharacters!1024 (ite c!634191 (regTwo!21655 (regex!5812 anOtherTypeRule!33)) (regOne!21654 (regex!5812 anOtherTypeRule!33)))))))

(declare-fun b!3668142 () Bool)

(assert (=> b!3668142 (= e!2271257 call!265518)))

(declare-fun b!3668143 () Bool)

(assert (=> b!3668143 (= e!2271258 e!2271256)))

(declare-fun c!634188 () Bool)

(assert (=> b!3668143 (= c!634188 ((_ is ElementMatch!10571) (regex!5812 anOtherTypeRule!33)))))

(assert (= (and d!1077353 c!634190) b!3668136))

(assert (= (and d!1077353 (not c!634190)) b!3668143))

(assert (= (and b!3668143 c!634188) b!3668137))

(assert (= (and b!3668143 (not c!634188)) b!3668138))

(assert (= (and b!3668138 c!634189) b!3668139))

(assert (= (and b!3668138 (not c!634189)) b!3668140))

(assert (= (and b!3668140 c!634191) b!3668141))

(assert (= (and b!3668140 (not c!634191)) b!3668142))

(assert (= (or b!3668141 b!3668142) bm!265510))

(assert (= (or b!3668141 b!3668142) bm!265513))

(assert (= (or b!3668141 b!3668142) bm!265512))

(assert (= (or b!3668139 bm!265510) bm!265511))

(declare-fun m!4176311 () Bool)

(assert (=> bm!265511 m!4176311))

(declare-fun m!4176313 () Bool)

(assert (=> bm!265512 m!4176313))

(declare-fun m!4176315 () Bool)

(assert (=> bm!265513 m!4176315))

(assert (=> b!3667825 d!1077353))

(declare-fun b!3668144 () Bool)

(declare-fun e!2271263 () Bool)

(assert (=> b!3668144 (= e!2271263 (nullable!3679 (regex!5812 lt!1277583)))))

(declare-fun d!1077361 () Bool)

(declare-fun e!2271260 () Bool)

(assert (=> d!1077361 e!2271260))

(declare-fun c!634193 () Bool)

(assert (=> d!1077361 (= c!634193 ((_ is EmptyExpr!10571) (regex!5812 lt!1277583)))))

(declare-fun lt!1277671 () Bool)

(assert (=> d!1077361 (= lt!1277671 e!2271263)))

(declare-fun c!634194 () Bool)

(assert (=> d!1077361 (= c!634194 (isEmpty!22954 (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))))))

(assert (=> d!1077361 (validRegex!4840 (regex!5812 lt!1277583))))

(assert (=> d!1077361 (= (matchR!5140 (regex!5812 lt!1277583) (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))) lt!1277671)))

(declare-fun b!3668145 () Bool)

(declare-fun e!2271261 () Bool)

(declare-fun e!2271266 () Bool)

(assert (=> b!3668145 (= e!2271261 e!2271266)))

(declare-fun res!1489525 () Bool)

(assert (=> b!3668145 (=> (not res!1489525) (not e!2271266))))

(assert (=> b!3668145 (= res!1489525 (not lt!1277671))))

(declare-fun b!3668146 () Bool)

(declare-fun res!1489522 () Bool)

(declare-fun e!2271262 () Bool)

(assert (=> b!3668146 (=> (not res!1489522) (not e!2271262))))

(assert (=> b!3668146 (= res!1489522 (isEmpty!22954 (tail!5677 (list!14362 (charsOf!3826 (_1!22410 lt!1277551))))))))

(declare-fun b!3668147 () Bool)

(assert (=> b!3668147 (= e!2271263 (matchR!5140 (derivativeStep!3228 (regex!5812 lt!1277583) (head!7848 (list!14362 (charsOf!3826 (_1!22410 lt!1277551))))) (tail!5677 (list!14362 (charsOf!3826 (_1!22410 lt!1277551))))))))

(declare-fun b!3668148 () Bool)

(assert (=> b!3668148 (= e!2271262 (= (head!7848 (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))) (c!634130 (regex!5812 lt!1277583))))))

(declare-fun b!3668149 () Bool)

(declare-fun res!1489524 () Bool)

(declare-fun e!2271264 () Bool)

(assert (=> b!3668149 (=> res!1489524 e!2271264)))

(assert (=> b!3668149 (= res!1489524 (not (isEmpty!22954 (tail!5677 (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))))))))

(declare-fun bm!265514 () Bool)

(declare-fun call!265519 () Bool)

(assert (=> bm!265514 (= call!265519 (isEmpty!22954 (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))))))

(declare-fun b!3668150 () Bool)

(assert (=> b!3668150 (= e!2271260 (= lt!1277671 call!265519))))

(declare-fun b!3668151 () Bool)

(declare-fun res!1489527 () Bool)

(assert (=> b!3668151 (=> res!1489527 e!2271261)))

(assert (=> b!3668151 (= res!1489527 e!2271262)))

(declare-fun res!1489528 () Bool)

(assert (=> b!3668151 (=> (not res!1489528) (not e!2271262))))

(assert (=> b!3668151 (= res!1489528 lt!1277671)))

(declare-fun b!3668152 () Bool)

(declare-fun res!1489521 () Bool)

(assert (=> b!3668152 (=> res!1489521 e!2271261)))

(assert (=> b!3668152 (= res!1489521 (not ((_ is ElementMatch!10571) (regex!5812 lt!1277583))))))

(declare-fun e!2271265 () Bool)

(assert (=> b!3668152 (= e!2271265 e!2271261)))

(declare-fun b!3668153 () Bool)

(assert (=> b!3668153 (= e!2271266 e!2271264)))

(declare-fun res!1489523 () Bool)

(assert (=> b!3668153 (=> res!1489523 e!2271264)))

(assert (=> b!3668153 (= res!1489523 call!265519)))

(declare-fun b!3668154 () Bool)

(assert (=> b!3668154 (= e!2271260 e!2271265)))

(declare-fun c!634192 () Bool)

(assert (=> b!3668154 (= c!634192 ((_ is EmptyLang!10571) (regex!5812 lt!1277583)))))

(declare-fun b!3668155 () Bool)

(declare-fun res!1489526 () Bool)

(assert (=> b!3668155 (=> (not res!1489526) (not e!2271262))))

(assert (=> b!3668155 (= res!1489526 (not call!265519))))

(declare-fun b!3668156 () Bool)

(assert (=> b!3668156 (= e!2271264 (not (= (head!7848 (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))) (c!634130 (regex!5812 lt!1277583)))))))

(declare-fun b!3668157 () Bool)

(assert (=> b!3668157 (= e!2271265 (not lt!1277671))))

(assert (= (and d!1077361 c!634194) b!3668144))

(assert (= (and d!1077361 (not c!634194)) b!3668147))

(assert (= (and d!1077361 c!634193) b!3668150))

(assert (= (and d!1077361 (not c!634193)) b!3668154))

(assert (= (and b!3668154 c!634192) b!3668157))

(assert (= (and b!3668154 (not c!634192)) b!3668152))

(assert (= (and b!3668152 (not res!1489521)) b!3668151))

(assert (= (and b!3668151 res!1489528) b!3668155))

(assert (= (and b!3668155 res!1489526) b!3668146))

(assert (= (and b!3668146 res!1489522) b!3668148))

(assert (= (and b!3668151 (not res!1489527)) b!3668145))

(assert (= (and b!3668145 res!1489525) b!3668153))

(assert (= (and b!3668153 (not res!1489523)) b!3668149))

(assert (= (and b!3668149 (not res!1489524)) b!3668156))

(assert (= (or b!3668150 b!3668153 b!3668155) bm!265514))

(assert (=> b!3668148 m!4175927))

(declare-fun m!4176321 () Bool)

(assert (=> b!3668148 m!4176321))

(assert (=> bm!265514 m!4175927))

(declare-fun m!4176323 () Bool)

(assert (=> bm!265514 m!4176323))

(assert (=> d!1077361 m!4175927))

(assert (=> d!1077361 m!4176323))

(declare-fun m!4176325 () Bool)

(assert (=> d!1077361 m!4176325))

(assert (=> b!3668146 m!4175927))

(declare-fun m!4176327 () Bool)

(assert (=> b!3668146 m!4176327))

(assert (=> b!3668146 m!4176327))

(declare-fun m!4176329 () Bool)

(assert (=> b!3668146 m!4176329))

(assert (=> b!3668149 m!4175927))

(assert (=> b!3668149 m!4176327))

(assert (=> b!3668149 m!4176327))

(assert (=> b!3668149 m!4176329))

(assert (=> b!3668156 m!4175927))

(assert (=> b!3668156 m!4176321))

(declare-fun m!4176331 () Bool)

(assert (=> b!3668144 m!4176331))

(assert (=> b!3668147 m!4175927))

(assert (=> b!3668147 m!4176321))

(assert (=> b!3668147 m!4176321))

(declare-fun m!4176333 () Bool)

(assert (=> b!3668147 m!4176333))

(assert (=> b!3668147 m!4175927))

(assert (=> b!3668147 m!4176327))

(assert (=> b!3668147 m!4176333))

(assert (=> b!3668147 m!4176327))

(declare-fun m!4176335 () Bool)

(assert (=> b!3668147 m!4176335))

(assert (=> b!3667845 d!1077361))

(declare-fun d!1077365 () Bool)

(declare-fun list!14364 (Conc!11833) List!38807)

(assert (=> d!1077365 (= (list!14362 (charsOf!3826 (_1!22410 lt!1277551))) (list!14364 (c!634131 (charsOf!3826 (_1!22410 lt!1277551)))))))

(declare-fun bs!573047 () Bool)

(assert (= bs!573047 d!1077365))

(declare-fun m!4176337 () Bool)

(assert (=> bs!573047 m!4176337))

(assert (=> b!3667845 d!1077365))

(declare-fun d!1077367 () Bool)

(declare-fun lt!1277674 () BalanceConc!23280)

(assert (=> d!1077367 (= (list!14362 lt!1277674) (originalCharacters!6526 (_1!22410 lt!1277551)))))

(assert (=> d!1077367 (= lt!1277674 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (value!186102 (_1!22410 lt!1277551))))))

(assert (=> d!1077367 (= (charsOf!3826 (_1!22410 lt!1277551)) lt!1277674)))

(declare-fun b_lambda!108915 () Bool)

(assert (=> (not b_lambda!108915) (not d!1077367)))

(declare-fun t!299390 () Bool)

(declare-fun tb!212333 () Bool)

(assert (=> (and b!3667811 (= (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299390) tb!212333))

(declare-fun b!3668158 () Bool)

(declare-fun e!2271267 () Bool)

(declare-fun tp!1116475 () Bool)

(assert (=> b!3668158 (= e!2271267 (and (inv!52168 (c!634131 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (value!186102 (_1!22410 lt!1277551))))) tp!1116475))))

(declare-fun result!258426 () Bool)

(assert (=> tb!212333 (= result!258426 (and (inv!52169 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (value!186102 (_1!22410 lt!1277551)))) e!2271267))))

(assert (= tb!212333 b!3668158))

(declare-fun m!4176339 () Bool)

(assert (=> b!3668158 m!4176339))

(declare-fun m!4176341 () Bool)

(assert (=> tb!212333 m!4176341))

(assert (=> d!1077367 t!299390))

(declare-fun b_and!273003 () Bool)

(assert (= b_and!272979 (and (=> t!299390 result!258426) b_and!273003)))

(declare-fun tb!212335 () Bool)

(declare-fun t!299392 () Bool)

(assert (=> (and b!3667809 (= (toChars!7967 (transformation!5812 (rule!8632 token!511))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299392) tb!212335))

(declare-fun result!258428 () Bool)

(assert (= result!258428 result!258426))

(assert (=> d!1077367 t!299392))

(declare-fun b_and!273005 () Bool)

(assert (= b_and!272981 (and (=> t!299392 result!258428) b_and!273005)))

(declare-fun tb!212337 () Bool)

(declare-fun t!299394 () Bool)

(assert (=> (and b!3667810 (= (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299394) tb!212337))

(declare-fun result!258430 () Bool)

(assert (= result!258430 result!258426))

(assert (=> d!1077367 t!299394))

(declare-fun b_and!273007 () Bool)

(assert (= b_and!272983 (and (=> t!299394 result!258430) b_and!273007)))

(declare-fun tb!212339 () Bool)

(declare-fun t!299396 () Bool)

(assert (=> (and b!3667848 (= (toChars!7967 (transformation!5812 rule!403)) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299396) tb!212339))

(declare-fun result!258432 () Bool)

(assert (= result!258432 result!258426))

(assert (=> d!1077367 t!299396))

(declare-fun b_and!273009 () Bool)

(assert (= b_and!272985 (and (=> t!299396 result!258432) b_and!273009)))

(declare-fun m!4176343 () Bool)

(assert (=> d!1077367 m!4176343))

(declare-fun m!4176345 () Bool)

(assert (=> d!1077367 m!4176345))

(assert (=> b!3667845 d!1077367))

(declare-fun d!1077369 () Bool)

(assert (=> d!1077369 (= (get!12769 lt!1277566) (v!38155 lt!1277566))))

(assert (=> b!3667845 d!1077369))

(declare-fun d!1077371 () Bool)

(assert (=> d!1077371 (not (contains!7691 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277567))))

(declare-fun lt!1277675 () Unit!56169)

(assert (=> d!1077371 (= lt!1277675 (choose!21772 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) rule!403 lt!1277567))))

(assert (=> d!1077371 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077371 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!458 thiss!23823 rules!3307 rules!3307 (rule!8632 (_1!22410 lt!1277551)) rule!403 lt!1277567) lt!1277675)))

(declare-fun bs!573048 () Bool)

(assert (= bs!573048 d!1077371))

(assert (=> bs!573048 m!4175941))

(assert (=> bs!573048 m!4175941))

(declare-fun m!4176347 () Bool)

(assert (=> bs!573048 m!4176347))

(declare-fun m!4176349 () Bool)

(assert (=> bs!573048 m!4176349))

(assert (=> bs!573048 m!4175881))

(assert (=> b!3667849 d!1077371))

(declare-fun d!1077373 () Bool)

(assert (=> d!1077373 (not (contains!7691 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277567))))

(declare-fun lt!1277684 () Unit!56169)

(declare-fun choose!21776 (LexerInterface!5401 List!38809 List!38809 Rule!11424 Rule!11424 C!21328) Unit!56169)

(assert (=> d!1077373 (= lt!1277684 (choose!21776 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8632 (_1!22410 lt!1277551)) lt!1277567))))

(assert (=> d!1077373 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077373 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!340 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8632 (_1!22410 lt!1277551)) lt!1277567) lt!1277684)))

(declare-fun bs!573049 () Bool)

(assert (= bs!573049 d!1077373))

(assert (=> bs!573049 m!4175941))

(assert (=> bs!573049 m!4175941))

(assert (=> bs!573049 m!4176347))

(declare-fun m!4176351 () Bool)

(assert (=> bs!573049 m!4176351))

(assert (=> bs!573049 m!4175881))

(assert (=> b!3667829 d!1077373))

(declare-fun d!1077375 () Bool)

(declare-fun res!1489539 () Bool)

(declare-fun e!2271284 () Bool)

(assert (=> d!1077375 (=> res!1489539 e!2271284)))

(assert (=> d!1077375 (= res!1489539 (not ((_ is Cons!38685) rules!3307)))))

(assert (=> d!1077375 (= (sepAndNonSepRulesDisjointChars!1980 rules!3307 rules!3307) e!2271284)))

(declare-fun b!3668181 () Bool)

(declare-fun e!2271285 () Bool)

(assert (=> b!3668181 (= e!2271284 e!2271285)))

(declare-fun res!1489540 () Bool)

(assert (=> b!3668181 (=> (not res!1489540) (not e!2271285))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!903 (Rule!11424 List!38809) Bool)

(assert (=> b!3668181 (= res!1489540 (ruleDisjointCharsFromAllFromOtherType!903 (h!44105 rules!3307) rules!3307))))

(declare-fun b!3668182 () Bool)

(assert (=> b!3668182 (= e!2271285 (sepAndNonSepRulesDisjointChars!1980 rules!3307 (t!299324 rules!3307)))))

(assert (= (and d!1077375 (not res!1489539)) b!3668181))

(assert (= (and b!3668181 res!1489540) b!3668182))

(declare-fun m!4176365 () Bool)

(assert (=> b!3668181 m!4176365))

(declare-fun m!4176367 () Bool)

(assert (=> b!3668182 m!4176367))

(assert (=> b!3667808 d!1077375))

(declare-fun d!1077379 () Bool)

(assert (=> d!1077379 (= lt!1277541 lt!1277578)))

(declare-fun lt!1277690 () Unit!56169)

(declare-fun choose!21778 (List!38807 List!38807 List!38807) Unit!56169)

(assert (=> d!1077379 (= lt!1277690 (choose!21778 lt!1277541 lt!1277578 lt!1277555))))

(assert (=> d!1077379 (isPrefix!3175 lt!1277541 lt!1277555)))

(assert (=> d!1077379 (= (lemmaIsPrefixSameLengthThenSameList!637 lt!1277541 lt!1277578 lt!1277555) lt!1277690)))

(declare-fun bs!573050 () Bool)

(assert (= bs!573050 d!1077379))

(declare-fun m!4176369 () Bool)

(assert (=> bs!573050 m!4176369))

(assert (=> bs!573050 m!4175977))

(assert (=> b!3667828 d!1077379))

(declare-fun d!1077381 () Bool)

(declare-fun lt!1277691 () Int)

(assert (=> d!1077381 (= lt!1277691 (size!29565 (list!14362 lt!1277542)))))

(assert (=> d!1077381 (= lt!1277691 (size!29567 (c!634131 lt!1277542)))))

(assert (=> d!1077381 (= (size!29564 lt!1277542) lt!1277691)))

(declare-fun bs!573051 () Bool)

(assert (= bs!573051 d!1077381))

(assert (=> bs!573051 m!4175961))

(assert (=> bs!573051 m!4175961))

(declare-fun m!4176371 () Bool)

(assert (=> bs!573051 m!4176371))

(declare-fun m!4176373 () Bool)

(assert (=> bs!573051 m!4176373))

(assert (=> b!3667828 d!1077381))

(declare-fun d!1077383 () Bool)

(declare-fun lt!1277692 () Bool)

(assert (=> d!1077383 (= lt!1277692 (select (content!5598 lt!1277552) lt!1277567))))

(declare-fun e!2271287 () Bool)

(assert (=> d!1077383 (= lt!1277692 e!2271287)))

(declare-fun res!1489541 () Bool)

(assert (=> d!1077383 (=> (not res!1489541) (not e!2271287))))

(assert (=> d!1077383 (= res!1489541 ((_ is Cons!38683) lt!1277552))))

(assert (=> d!1077383 (= (contains!7691 lt!1277552 lt!1277567) lt!1277692)))

(declare-fun b!3668183 () Bool)

(declare-fun e!2271286 () Bool)

(assert (=> b!3668183 (= e!2271287 e!2271286)))

(declare-fun res!1489542 () Bool)

(assert (=> b!3668183 (=> res!1489542 e!2271286)))

(assert (=> b!3668183 (= res!1489542 (= (h!44103 lt!1277552) lt!1277567))))

(declare-fun b!3668184 () Bool)

(assert (=> b!3668184 (= e!2271286 (contains!7691 (t!299322 lt!1277552) lt!1277567))))

(assert (= (and d!1077383 res!1489541) b!3668183))

(assert (= (and b!3668183 (not res!1489542)) b!3668184))

(declare-fun m!4176375 () Bool)

(assert (=> d!1077383 m!4176375))

(declare-fun m!4176377 () Bool)

(assert (=> d!1077383 m!4176377))

(declare-fun m!4176379 () Bool)

(assert (=> b!3668184 m!4176379))

(assert (=> b!3667828 d!1077383))

(declare-fun d!1077385 () Bool)

(assert (=> d!1077385 (= (head!7848 lt!1277541) (h!44103 lt!1277541))))

(assert (=> b!3667828 d!1077385))

(declare-fun d!1077387 () Bool)

(declare-fun res!1489549 () Bool)

(declare-fun e!2271292 () Bool)

(assert (=> d!1077387 (=> (not res!1489549) (not e!2271292))))

(declare-fun rulesValid!2236 (LexerInterface!5401 List!38809) Bool)

(assert (=> d!1077387 (= res!1489549 (rulesValid!2236 thiss!23823 rules!3307))))

(assert (=> d!1077387 (= (rulesInvariant!4798 thiss!23823 rules!3307) e!2271292)))

(declare-fun b!3668191 () Bool)

(declare-datatypes ((List!38811 0))(
  ( (Nil!38687) (Cons!38687 (h!44107 String!43544) (t!299446 List!38811)) )
))
(declare-fun noDuplicateTag!2232 (LexerInterface!5401 List!38809 List!38811) Bool)

(assert (=> b!3668191 (= e!2271292 (noDuplicateTag!2232 thiss!23823 rules!3307 Nil!38687))))

(assert (= (and d!1077387 res!1489549) b!3668191))

(declare-fun m!4176381 () Bool)

(assert (=> d!1077387 m!4176381))

(declare-fun m!4176383 () Bool)

(assert (=> b!3668191 m!4176383))

(assert (=> b!3667847 d!1077387))

(declare-fun d!1077389 () Bool)

(assert (=> d!1077389 (= (inv!52161 (tag!6598 anOtherTypeRule!33)) (= (mod (str.len (value!186101 (tag!6598 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3667807 d!1077389))

(declare-fun d!1077391 () Bool)

(declare-fun res!1489550 () Bool)

(declare-fun e!2271293 () Bool)

(assert (=> d!1077391 (=> (not res!1489550) (not e!2271293))))

(assert (=> d!1077391 (= res!1489550 (semiInverseModEq!2479 (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toValue!8108 (transformation!5812 anOtherTypeRule!33))))))

(assert (=> d!1077391 (= (inv!52164 (transformation!5812 anOtherTypeRule!33)) e!2271293)))

(declare-fun b!3668192 () Bool)

(assert (=> b!3668192 (= e!2271293 (equivClasses!2378 (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toValue!8108 (transformation!5812 anOtherTypeRule!33))))))

(assert (= (and d!1077391 res!1489550) b!3668192))

(declare-fun m!4176385 () Bool)

(assert (=> d!1077391 m!4176385))

(declare-fun m!4176387 () Bool)

(assert (=> b!3668192 m!4176387))

(assert (=> b!3667807 d!1077391))

(declare-fun d!1077393 () Bool)

(assert (=> d!1077393 (= (maxPrefixOneRule!2073 thiss!23823 (rule!8632 (_1!22410 lt!1277551)) lt!1277555) (Some!8252 (tuple2!38553 (Token!10991 (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) (seqFromList!4361 lt!1277541)) (rule!8632 (_1!22410 lt!1277551)) (size!29565 lt!1277541) lt!1277541) (_2!22410 lt!1277551))))))

(declare-fun lt!1277704 () Unit!56169)

(declare-fun choose!21780 (LexerInterface!5401 List!38809 List!38807 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> d!1077393 (= lt!1277704 (choose!21780 thiss!23823 rules!3307 lt!1277541 lt!1277555 (_2!22410 lt!1277551) (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077393 (not (isEmpty!22955 rules!3307))))

(assert (=> d!1077393 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1129 thiss!23823 rules!3307 lt!1277541 lt!1277555 (_2!22410 lt!1277551) (rule!8632 (_1!22410 lt!1277551))) lt!1277704)))

(declare-fun bs!573053 () Bool)

(assert (= bs!573053 d!1077393))

(assert (=> bs!573053 m!4176053))

(assert (=> bs!573053 m!4175905))

(assert (=> bs!573053 m!4175913))

(assert (=> bs!573053 m!4175911))

(declare-fun m!4176439 () Bool)

(assert (=> bs!573053 m!4176439))

(assert (=> bs!573053 m!4175901))

(assert (=> bs!573053 m!4175905))

(assert (=> b!3667843 d!1077393))

(declare-fun d!1077409 () Bool)

(assert (=> d!1077409 (= (_2!22410 lt!1277551) lt!1277576)))

(declare-fun lt!1277707 () Unit!56169)

(declare-fun choose!21781 (List!38807 List!38807 List!38807 List!38807 List!38807) Unit!56169)

(assert (=> d!1077409 (= lt!1277707 (choose!21781 lt!1277541 (_2!22410 lt!1277551) lt!1277541 lt!1277576 lt!1277555))))

(assert (=> d!1077409 (isPrefix!3175 lt!1277541 lt!1277555)))

(assert (=> d!1077409 (= (lemmaSamePrefixThenSameSuffix!1502 lt!1277541 (_2!22410 lt!1277551) lt!1277541 lt!1277576 lt!1277555) lt!1277707)))

(declare-fun bs!573054 () Bool)

(assert (= bs!573054 d!1077409))

(declare-fun m!4176441 () Bool)

(assert (=> bs!573054 m!4176441))

(assert (=> bs!573054 m!4175977))

(assert (=> b!3667843 d!1077409))

(declare-fun d!1077411 () Bool)

(declare-fun lt!1277710 () List!38807)

(assert (=> d!1077411 (= (++!9628 lt!1277541 lt!1277710) lt!1277555)))

(declare-fun e!2271311 () List!38807)

(assert (=> d!1077411 (= lt!1277710 e!2271311)))

(declare-fun c!634208 () Bool)

(assert (=> d!1077411 (= c!634208 ((_ is Cons!38683) lt!1277541))))

(assert (=> d!1077411 (>= (size!29565 lt!1277555) (size!29565 lt!1277541))))

(assert (=> d!1077411 (= (getSuffix!1728 lt!1277555 lt!1277541) lt!1277710)))

(declare-fun b!3668223 () Bool)

(assert (=> b!3668223 (= e!2271311 (getSuffix!1728 (tail!5677 lt!1277555) (t!299322 lt!1277541)))))

(declare-fun b!3668224 () Bool)

(assert (=> b!3668224 (= e!2271311 lt!1277555)))

(assert (= (and d!1077411 c!634208) b!3668223))

(assert (= (and d!1077411 (not c!634208)) b!3668224))

(declare-fun m!4176443 () Bool)

(assert (=> d!1077411 m!4176443))

(declare-fun m!4176445 () Bool)

(assert (=> d!1077411 m!4176445))

(assert (=> d!1077411 m!4175901))

(declare-fun m!4176447 () Bool)

(assert (=> b!3668223 m!4176447))

(assert (=> b!3668223 m!4176447))

(declare-fun m!4176449 () Bool)

(assert (=> b!3668223 m!4176449))

(assert (=> b!3667843 d!1077411))

(declare-fun d!1077413 () Bool)

(declare-fun lt!1277713 () Int)

(assert (=> d!1077413 (>= lt!1277713 0)))

(declare-fun e!2271314 () Int)

(assert (=> d!1077413 (= lt!1277713 e!2271314)))

(declare-fun c!634211 () Bool)

(assert (=> d!1077413 (= c!634211 ((_ is Nil!38683) lt!1277541))))

(assert (=> d!1077413 (= (size!29565 lt!1277541) lt!1277713)))

(declare-fun b!3668229 () Bool)

(assert (=> b!3668229 (= e!2271314 0)))

(declare-fun b!3668230 () Bool)

(assert (=> b!3668230 (= e!2271314 (+ 1 (size!29565 (t!299322 lt!1277541))))))

(assert (= (and d!1077413 c!634211) b!3668229))

(assert (= (and d!1077413 (not c!634211)) b!3668230))

(declare-fun m!4176451 () Bool)

(assert (=> b!3668230 m!4176451))

(assert (=> b!3667843 d!1077413))

(declare-fun b!3668249 () Bool)

(declare-fun e!2271323 () Bool)

(declare-fun e!2271326 () Bool)

(assert (=> b!3668249 (= e!2271323 e!2271326)))

(declare-fun res!1489588 () Bool)

(assert (=> b!3668249 (=> (not res!1489588) (not e!2271326))))

(declare-fun lt!1277724 () Option!8253)

(assert (=> b!3668249 (= res!1489588 (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277724))))))))

(declare-fun b!3668250 () Bool)

(assert (=> b!3668250 (= e!2271326 (= (size!29563 (_1!22410 (get!12768 lt!1277724))) (size!29565 (originalCharacters!6526 (_1!22410 (get!12768 lt!1277724))))))))

(declare-fun b!3668251 () Bool)

(declare-fun e!2271324 () Option!8253)

(assert (=> b!3668251 (= e!2271324 None!8252)))

(declare-fun b!3668252 () Bool)

(declare-fun res!1489586 () Bool)

(assert (=> b!3668252 (=> (not res!1489586) (not e!2271326))))

(assert (=> b!3668252 (= res!1489586 (< (size!29565 (_2!22410 (get!12768 lt!1277724))) (size!29565 lt!1277555)))))

(declare-fun d!1077415 () Bool)

(assert (=> d!1077415 e!2271323))

(declare-fun res!1489585 () Bool)

(assert (=> d!1077415 (=> res!1489585 e!2271323)))

(declare-fun isEmpty!22958 (Option!8253) Bool)

(assert (=> d!1077415 (= res!1489585 (isEmpty!22958 lt!1277724))))

(assert (=> d!1077415 (= lt!1277724 e!2271324)))

(declare-fun c!634214 () Bool)

(declare-datatypes ((tuple2!38554 0))(
  ( (tuple2!38555 (_1!22411 List!38807) (_2!22411 List!38807)) )
))
(declare-fun lt!1277727 () tuple2!38554)

(assert (=> d!1077415 (= c!634214 (isEmpty!22954 (_1!22411 lt!1277727)))))

(declare-fun findLongestMatch!989 (Regex!10571 List!38807) tuple2!38554)

(assert (=> d!1077415 (= lt!1277727 (findLongestMatch!989 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277555))))

(assert (=> d!1077415 (ruleValid!2076 thiss!23823 (rule!8632 (_1!22410 lt!1277551)))))

(assert (=> d!1077415 (= (maxPrefixOneRule!2073 thiss!23823 (rule!8632 (_1!22410 lt!1277551)) lt!1277555) lt!1277724)))

(declare-fun b!3668253 () Bool)

(declare-fun res!1489583 () Bool)

(assert (=> b!3668253 (=> (not res!1489583) (not e!2271326))))

(assert (=> b!3668253 (= res!1489583 (= (rule!8632 (_1!22410 (get!12768 lt!1277724))) (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun b!3668254 () Bool)

(declare-fun e!2271325 () Bool)

(declare-fun findLongestMatchInner!1074 (Regex!10571 List!38807 Int List!38807 List!38807 Int) tuple2!38554)

(assert (=> b!3668254 (= e!2271325 (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) (_1!22411 (findLongestMatchInner!1074 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) Nil!38683 (size!29565 Nil!38683) lt!1277555 lt!1277555 (size!29565 lt!1277555)))))))

(declare-fun b!3668255 () Bool)

(declare-fun res!1489589 () Bool)

(assert (=> b!3668255 (=> (not res!1489589) (not e!2271326))))

(assert (=> b!3668255 (= res!1489589 (= (value!186102 (_1!22410 (get!12768 lt!1277724))) (apply!9314 (transformation!5812 (rule!8632 (_1!22410 (get!12768 lt!1277724)))) (seqFromList!4361 (originalCharacters!6526 (_1!22410 (get!12768 lt!1277724)))))))))

(declare-fun b!3668256 () Bool)

(declare-fun res!1489587 () Bool)

(assert (=> b!3668256 (=> (not res!1489587) (not e!2271326))))

(assert (=> b!3668256 (= res!1489587 (= (++!9628 (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277724)))) (_2!22410 (get!12768 lt!1277724))) lt!1277555))))

(declare-fun b!3668257 () Bool)

(assert (=> b!3668257 (= e!2271324 (Some!8252 (tuple2!38553 (Token!10991 (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) (seqFromList!4361 (_1!22411 lt!1277727))) (rule!8632 (_1!22410 lt!1277551)) (size!29564 (seqFromList!4361 (_1!22411 lt!1277727))) (_1!22411 lt!1277727)) (_2!22411 lt!1277727))))))

(declare-fun lt!1277726 () Unit!56169)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1047 (Regex!10571 List!38807) Unit!56169)

(assert (=> b!3668257 (= lt!1277726 (longestMatchIsAcceptedByMatchOrIsEmpty!1047 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277555))))

(declare-fun res!1489584 () Bool)

(assert (=> b!3668257 (= res!1489584 (isEmpty!22954 (_1!22411 (findLongestMatchInner!1074 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) Nil!38683 (size!29565 Nil!38683) lt!1277555 lt!1277555 (size!29565 lt!1277555)))))))

(assert (=> b!3668257 (=> res!1489584 e!2271325)))

(assert (=> b!3668257 e!2271325))

(declare-fun lt!1277728 () Unit!56169)

(assert (=> b!3668257 (= lt!1277728 lt!1277726)))

(declare-fun lt!1277725 () Unit!56169)

(assert (=> b!3668257 (= lt!1277725 (lemmaSemiInverse!1561 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) (seqFromList!4361 (_1!22411 lt!1277727))))))

(assert (= (and d!1077415 c!634214) b!3668251))

(assert (= (and d!1077415 (not c!634214)) b!3668257))

(assert (= (and b!3668257 (not res!1489584)) b!3668254))

(assert (= (and d!1077415 (not res!1489585)) b!3668249))

(assert (= (and b!3668249 res!1489588) b!3668256))

(assert (= (and b!3668256 res!1489587) b!3668252))

(assert (= (and b!3668252 res!1489586) b!3668253))

(assert (= (and b!3668253 res!1489583) b!3668255))

(assert (= (and b!3668255 res!1489589) b!3668250))

(declare-fun m!4176453 () Bool)

(assert (=> b!3668249 m!4176453))

(declare-fun m!4176455 () Bool)

(assert (=> b!3668249 m!4176455))

(assert (=> b!3668249 m!4176455))

(declare-fun m!4176457 () Bool)

(assert (=> b!3668249 m!4176457))

(assert (=> b!3668249 m!4176457))

(declare-fun m!4176459 () Bool)

(assert (=> b!3668249 m!4176459))

(declare-fun m!4176461 () Bool)

(assert (=> b!3668257 m!4176461))

(assert (=> b!3668257 m!4176445))

(declare-fun m!4176463 () Bool)

(assert (=> b!3668257 m!4176463))

(declare-fun m!4176465 () Bool)

(assert (=> b!3668257 m!4176465))

(assert (=> b!3668257 m!4176445))

(declare-fun m!4176467 () Bool)

(assert (=> b!3668257 m!4176467))

(declare-fun m!4176469 () Bool)

(assert (=> b!3668257 m!4176469))

(assert (=> b!3668257 m!4176467))

(assert (=> b!3668257 m!4176467))

(declare-fun m!4176471 () Bool)

(assert (=> b!3668257 m!4176471))

(declare-fun m!4176473 () Bool)

(assert (=> b!3668257 m!4176473))

(assert (=> b!3668257 m!4176461))

(assert (=> b!3668257 m!4176467))

(declare-fun m!4176475 () Bool)

(assert (=> b!3668257 m!4176475))

(assert (=> b!3668254 m!4176461))

(assert (=> b!3668254 m!4176445))

(assert (=> b!3668254 m!4176461))

(assert (=> b!3668254 m!4176445))

(assert (=> b!3668254 m!4176463))

(declare-fun m!4176477 () Bool)

(assert (=> b!3668254 m!4176477))

(declare-fun m!4176479 () Bool)

(assert (=> d!1077415 m!4176479))

(declare-fun m!4176481 () Bool)

(assert (=> d!1077415 m!4176481))

(declare-fun m!4176483 () Bool)

(assert (=> d!1077415 m!4176483))

(declare-fun m!4176485 () Bool)

(assert (=> d!1077415 m!4176485))

(assert (=> b!3668253 m!4176453))

(assert (=> b!3668255 m!4176453))

(declare-fun m!4176487 () Bool)

(assert (=> b!3668255 m!4176487))

(assert (=> b!3668255 m!4176487))

(declare-fun m!4176489 () Bool)

(assert (=> b!3668255 m!4176489))

(assert (=> b!3668250 m!4176453))

(declare-fun m!4176491 () Bool)

(assert (=> b!3668250 m!4176491))

(assert (=> b!3668252 m!4176453))

(declare-fun m!4176493 () Bool)

(assert (=> b!3668252 m!4176493))

(assert (=> b!3668252 m!4176445))

(assert (=> b!3668256 m!4176453))

(assert (=> b!3668256 m!4176455))

(assert (=> b!3668256 m!4176455))

(assert (=> b!3668256 m!4176457))

(assert (=> b!3668256 m!4176457))

(declare-fun m!4176495 () Bool)

(assert (=> b!3668256 m!4176495))

(assert (=> b!3667843 d!1077415))

(declare-fun d!1077417 () Bool)

(assert (=> d!1077417 (= (seqFromList!4361 lt!1277541) (fromListB!2015 lt!1277541))))

(declare-fun bs!573055 () Bool)

(assert (= bs!573055 d!1077417))

(declare-fun m!4176497 () Bool)

(assert (=> bs!573055 m!4176497))

(assert (=> b!3667843 d!1077417))

(declare-fun d!1077419 () Bool)

(assert (=> d!1077419 (= (apply!9314 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))) (seqFromList!4361 lt!1277541)) (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (seqFromList!4361 lt!1277541)))))

(declare-fun b_lambda!108917 () Bool)

(assert (=> (not b_lambda!108917) (not d!1077419)))

(declare-fun t!299398 () Bool)

(declare-fun tb!212341 () Bool)

(assert (=> (and b!3667811 (= (toValue!8108 (transformation!5812 (h!44105 rules!3307))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299398) tb!212341))

(declare-fun result!258434 () Bool)

(assert (=> tb!212341 (= result!258434 (inv!21 (dynLambda!16927 (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551)))) (seqFromList!4361 lt!1277541))))))

(declare-fun m!4176499 () Bool)

(assert (=> tb!212341 m!4176499))

(assert (=> d!1077419 t!299398))

(declare-fun b_and!273011 () Bool)

(assert (= b_and!272987 (and (=> t!299398 result!258434) b_and!273011)))

(declare-fun tb!212343 () Bool)

(declare-fun t!299400 () Bool)

(assert (=> (and b!3667809 (= (toValue!8108 (transformation!5812 (rule!8632 token!511))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299400) tb!212343))

(declare-fun result!258436 () Bool)

(assert (= result!258436 result!258434))

(assert (=> d!1077419 t!299400))

(declare-fun b_and!273013 () Bool)

(assert (= b_and!272989 (and (=> t!299400 result!258436) b_and!273013)))

(declare-fun tb!212345 () Bool)

(declare-fun t!299402 () Bool)

(assert (=> (and b!3667810 (= (toValue!8108 (transformation!5812 anOtherTypeRule!33)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299402) tb!212345))

(declare-fun result!258438 () Bool)

(assert (= result!258438 result!258434))

(assert (=> d!1077419 t!299402))

(declare-fun b_and!273015 () Bool)

(assert (= b_and!272991 (and (=> t!299402 result!258438) b_and!273015)))

(declare-fun tb!212347 () Bool)

(declare-fun t!299404 () Bool)

(assert (=> (and b!3667848 (= (toValue!8108 (transformation!5812 rule!403)) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299404) tb!212347))

(declare-fun result!258440 () Bool)

(assert (= result!258440 result!258434))

(assert (=> d!1077419 t!299404))

(declare-fun b_and!273017 () Bool)

(assert (= b_and!272993 (and (=> t!299404 result!258440) b_and!273017)))

(assert (=> d!1077419 m!4175905))

(declare-fun m!4176501 () Bool)

(assert (=> d!1077419 m!4176501))

(assert (=> b!3667843 d!1077419))

(declare-fun d!1077421 () Bool)

(declare-fun lt!1277731 () Bool)

(declare-fun content!5599 (List!38809) (InoxSet Rule!11424))

(assert (=> d!1077421 (= lt!1277731 (select (content!5599 rules!3307) (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun e!2271333 () Bool)

(assert (=> d!1077421 (= lt!1277731 e!2271333)))

(declare-fun res!1489594 () Bool)

(assert (=> d!1077421 (=> (not res!1489594) (not e!2271333))))

(assert (=> d!1077421 (= res!1489594 ((_ is Cons!38685) rules!3307))))

(assert (=> d!1077421 (= (contains!7692 rules!3307 (rule!8632 (_1!22410 lt!1277551))) lt!1277731)))

(declare-fun b!3668262 () Bool)

(declare-fun e!2271332 () Bool)

(assert (=> b!3668262 (= e!2271333 e!2271332)))

(declare-fun res!1489595 () Bool)

(assert (=> b!3668262 (=> res!1489595 e!2271332)))

(assert (=> b!3668262 (= res!1489595 (= (h!44105 rules!3307) (rule!8632 (_1!22410 lt!1277551))))))

(declare-fun b!3668263 () Bool)

(assert (=> b!3668263 (= e!2271332 (contains!7692 (t!299324 rules!3307) (rule!8632 (_1!22410 lt!1277551))))))

(assert (= (and d!1077421 res!1489594) b!3668262))

(assert (= (and b!3668262 (not res!1489595)) b!3668263))

(declare-fun m!4176503 () Bool)

(assert (=> d!1077421 m!4176503))

(declare-fun m!4176505 () Bool)

(assert (=> d!1077421 m!4176505))

(declare-fun m!4176507 () Bool)

(assert (=> b!3668263 m!4176507))

(assert (=> b!3667802 d!1077421))

(declare-fun d!1077423 () Bool)

(assert (=> d!1077423 (contains!7691 lt!1277541 (head!7848 suffix!1395))))

(declare-fun lt!1277734 () Unit!56169)

(declare-fun choose!21782 (List!38807 List!38807 List!38807 List!38807) Unit!56169)

(assert (=> d!1077423 (= lt!1277734 (choose!21782 lt!1277578 suffix!1395 lt!1277541 lt!1277555))))

(assert (=> d!1077423 (isPrefix!3175 lt!1277541 lt!1277555)))

(assert (=> d!1077423 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!120 lt!1277578 suffix!1395 lt!1277541 lt!1277555) lt!1277734)))

(declare-fun bs!573056 () Bool)

(assert (= bs!573056 d!1077423))

(assert (=> bs!573056 m!4175969))

(assert (=> bs!573056 m!4175969))

(declare-fun m!4176509 () Bool)

(assert (=> bs!573056 m!4176509))

(declare-fun m!4176511 () Bool)

(assert (=> bs!573056 m!4176511))

(assert (=> bs!573056 m!4175977))

(assert (=> b!3667821 d!1077423))

(declare-fun d!1077425 () Bool)

(declare-fun lt!1277735 () Bool)

(assert (=> d!1077425 (= lt!1277735 (select (content!5598 lt!1277541) lt!1277590))))

(declare-fun e!2271335 () Bool)

(assert (=> d!1077425 (= lt!1277735 e!2271335)))

(declare-fun res!1489596 () Bool)

(assert (=> d!1077425 (=> (not res!1489596) (not e!2271335))))

(assert (=> d!1077425 (= res!1489596 ((_ is Cons!38683) lt!1277541))))

(assert (=> d!1077425 (= (contains!7691 lt!1277541 lt!1277590) lt!1277735)))

(declare-fun b!3668264 () Bool)

(declare-fun e!2271334 () Bool)

(assert (=> b!3668264 (= e!2271335 e!2271334)))

(declare-fun res!1489597 () Bool)

(assert (=> b!3668264 (=> res!1489597 e!2271334)))

(assert (=> b!3668264 (= res!1489597 (= (h!44103 lt!1277541) lt!1277590))))

(declare-fun b!3668265 () Bool)

(assert (=> b!3668265 (= e!2271334 (contains!7691 (t!299322 lt!1277541) lt!1277590))))

(assert (= (and d!1077425 res!1489596) b!3668264))

(assert (= (and b!3668264 (not res!1489597)) b!3668265))

(declare-fun m!4176513 () Bool)

(assert (=> d!1077425 m!4176513))

(declare-fun m!4176515 () Bool)

(assert (=> d!1077425 m!4176515))

(declare-fun m!4176517 () Bool)

(assert (=> b!3668265 m!4176517))

(assert (=> b!3667821 d!1077425))

(declare-fun d!1077427 () Bool)

(assert (=> d!1077427 (= (isDefined!6485 lt!1277559) (not (isEmpty!22958 lt!1277559)))))

(declare-fun bs!573057 () Bool)

(assert (= bs!573057 d!1077427))

(declare-fun m!4176519 () Bool)

(assert (=> bs!573057 m!4176519))

(assert (=> b!3667842 d!1077427))

(declare-fun d!1077429 () Bool)

(declare-fun e!2271346 () Bool)

(assert (=> d!1077429 e!2271346))

(declare-fun res!1489617 () Bool)

(assert (=> d!1077429 (=> res!1489617 e!2271346)))

(declare-fun lt!1277782 () Option!8253)

(assert (=> d!1077429 (= res!1489617 (isEmpty!22958 lt!1277782))))

(declare-fun e!2271347 () Option!8253)

(assert (=> d!1077429 (= lt!1277782 e!2271347)))

(declare-fun c!634219 () Bool)

(assert (=> d!1077429 (= c!634219 (and ((_ is Cons!38685) rules!3307) ((_ is Nil!38685) (t!299324 rules!3307))))))

(declare-fun lt!1277780 () Unit!56169)

(declare-fun lt!1277784 () Unit!56169)

(assert (=> d!1077429 (= lt!1277780 lt!1277784)))

(assert (=> d!1077429 (isPrefix!3175 lt!1277578 lt!1277578)))

(declare-fun lemmaIsPrefixRefl!2002 (List!38807 List!38807) Unit!56169)

(assert (=> d!1077429 (= lt!1277784 (lemmaIsPrefixRefl!2002 lt!1277578 lt!1277578))))

(declare-fun rulesValidInductive!2065 (LexerInterface!5401 List!38809) Bool)

(assert (=> d!1077429 (rulesValidInductive!2065 thiss!23823 rules!3307)))

(assert (=> d!1077429 (= (maxPrefix!2935 thiss!23823 rules!3307 lt!1277578) lt!1277782)))

(declare-fun b!3668292 () Bool)

(declare-fun e!2271348 () Bool)

(assert (=> b!3668292 (= e!2271348 (contains!7692 rules!3307 (rule!8632 (_1!22410 (get!12768 lt!1277782)))))))

(declare-fun b!3668293 () Bool)

(declare-fun res!1489621 () Bool)

(assert (=> b!3668293 (=> (not res!1489621) (not e!2271348))))

(assert (=> b!3668293 (= res!1489621 (= (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277782)))) (originalCharacters!6526 (_1!22410 (get!12768 lt!1277782)))))))

(declare-fun call!265522 () Option!8253)

(declare-fun bm!265517 () Bool)

(assert (=> bm!265517 (= call!265522 (maxPrefixOneRule!2073 thiss!23823 (h!44105 rules!3307) lt!1277578))))

(declare-fun b!3668294 () Bool)

(declare-fun lt!1277783 () Option!8253)

(declare-fun lt!1277781 () Option!8253)

(assert (=> b!3668294 (= e!2271347 (ite (and ((_ is None!8252) lt!1277783) ((_ is None!8252) lt!1277781)) None!8252 (ite ((_ is None!8252) lt!1277781) lt!1277783 (ite ((_ is None!8252) lt!1277783) lt!1277781 (ite (>= (size!29563 (_1!22410 (v!38156 lt!1277783))) (size!29563 (_1!22410 (v!38156 lt!1277781)))) lt!1277783 lt!1277781)))))))

(assert (=> b!3668294 (= lt!1277783 call!265522)))

(assert (=> b!3668294 (= lt!1277781 (maxPrefix!2935 thiss!23823 (t!299324 rules!3307) lt!1277578))))

(declare-fun b!3668295 () Bool)

(assert (=> b!3668295 (= e!2271347 call!265522)))

(declare-fun b!3668296 () Bool)

(declare-fun res!1489616 () Bool)

(assert (=> b!3668296 (=> (not res!1489616) (not e!2271348))))

(assert (=> b!3668296 (= res!1489616 (= (value!186102 (_1!22410 (get!12768 lt!1277782))) (apply!9314 (transformation!5812 (rule!8632 (_1!22410 (get!12768 lt!1277782)))) (seqFromList!4361 (originalCharacters!6526 (_1!22410 (get!12768 lt!1277782)))))))))

(declare-fun b!3668297 () Bool)

(declare-fun res!1489618 () Bool)

(assert (=> b!3668297 (=> (not res!1489618) (not e!2271348))))

(assert (=> b!3668297 (= res!1489618 (= (++!9628 (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277782)))) (_2!22410 (get!12768 lt!1277782))) lt!1277578))))

(declare-fun b!3668298 () Bool)

(assert (=> b!3668298 (= e!2271346 e!2271348)))

(declare-fun res!1489619 () Bool)

(assert (=> b!3668298 (=> (not res!1489619) (not e!2271348))))

(assert (=> b!3668298 (= res!1489619 (isDefined!6485 lt!1277782))))

(declare-fun b!3668299 () Bool)

(declare-fun res!1489620 () Bool)

(assert (=> b!3668299 (=> (not res!1489620) (not e!2271348))))

(assert (=> b!3668299 (= res!1489620 (< (size!29565 (_2!22410 (get!12768 lt!1277782))) (size!29565 lt!1277578)))))

(declare-fun b!3668300 () Bool)

(declare-fun res!1489622 () Bool)

(assert (=> b!3668300 (=> (not res!1489622) (not e!2271348))))

(assert (=> b!3668300 (= res!1489622 (matchR!5140 (regex!5812 (rule!8632 (_1!22410 (get!12768 lt!1277782)))) (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277782))))))))

(assert (= (and d!1077429 c!634219) b!3668295))

(assert (= (and d!1077429 (not c!634219)) b!3668294))

(assert (= (or b!3668295 b!3668294) bm!265517))

(assert (= (and d!1077429 (not res!1489617)) b!3668298))

(assert (= (and b!3668298 res!1489619) b!3668293))

(assert (= (and b!3668293 res!1489621) b!3668299))

(assert (= (and b!3668299 res!1489620) b!3668297))

(assert (= (and b!3668297 res!1489618) b!3668296))

(assert (= (and b!3668296 res!1489616) b!3668300))

(assert (= (and b!3668300 res!1489622) b!3668292))

(declare-fun m!4176521 () Bool)

(assert (=> b!3668293 m!4176521))

(declare-fun m!4176523 () Bool)

(assert (=> b!3668293 m!4176523))

(assert (=> b!3668293 m!4176523))

(declare-fun m!4176525 () Bool)

(assert (=> b!3668293 m!4176525))

(assert (=> b!3668300 m!4176521))

(assert (=> b!3668300 m!4176523))

(assert (=> b!3668300 m!4176523))

(assert (=> b!3668300 m!4176525))

(assert (=> b!3668300 m!4176525))

(declare-fun m!4176527 () Bool)

(assert (=> b!3668300 m!4176527))

(declare-fun m!4176529 () Bool)

(assert (=> bm!265517 m!4176529))

(assert (=> b!3668296 m!4176521))

(declare-fun m!4176531 () Bool)

(assert (=> b!3668296 m!4176531))

(assert (=> b!3668296 m!4176531))

(declare-fun m!4176533 () Bool)

(assert (=> b!3668296 m!4176533))

(declare-fun m!4176535 () Bool)

(assert (=> b!3668294 m!4176535))

(declare-fun m!4176537 () Bool)

(assert (=> d!1077429 m!4176537))

(declare-fun m!4176539 () Bool)

(assert (=> d!1077429 m!4176539))

(declare-fun m!4176541 () Bool)

(assert (=> d!1077429 m!4176541))

(declare-fun m!4176543 () Bool)

(assert (=> d!1077429 m!4176543))

(assert (=> b!3668292 m!4176521))

(declare-fun m!4176545 () Bool)

(assert (=> b!3668292 m!4176545))

(assert (=> b!3668297 m!4176521))

(assert (=> b!3668297 m!4176523))

(assert (=> b!3668297 m!4176523))

(assert (=> b!3668297 m!4176525))

(assert (=> b!3668297 m!4176525))

(declare-fun m!4176547 () Bool)

(assert (=> b!3668297 m!4176547))

(assert (=> b!3668299 m!4176521))

(declare-fun m!4176549 () Bool)

(assert (=> b!3668299 m!4176549))

(declare-fun m!4176551 () Bool)

(assert (=> b!3668299 m!4176551))

(declare-fun m!4176553 () Bool)

(assert (=> b!3668298 m!4176553))

(assert (=> b!3667842 d!1077429))

(declare-fun d!1077431 () Bool)

(assert (=> d!1077431 (= (list!14362 lt!1277542) (list!14364 (c!634131 lt!1277542)))))

(declare-fun bs!573058 () Bool)

(assert (= bs!573058 d!1077431))

(declare-fun m!4176555 () Bool)

(assert (=> bs!573058 m!4176555))

(assert (=> b!3667842 d!1077431))

(declare-fun d!1077433 () Bool)

(declare-fun lt!1277785 () BalanceConc!23280)

(assert (=> d!1077433 (= (list!14362 lt!1277785) (originalCharacters!6526 token!511))))

(assert (=> d!1077433 (= lt!1277785 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (value!186102 token!511)))))

(assert (=> d!1077433 (= (charsOf!3826 token!511) lt!1277785)))

(declare-fun b_lambda!108919 () Bool)

(assert (=> (not b_lambda!108919) (not d!1077433)))

(declare-fun tb!212349 () Bool)

(declare-fun t!299406 () Bool)

(assert (=> (and b!3667811 (= (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toChars!7967 (transformation!5812 (rule!8632 token!511)))) t!299406) tb!212349))

(declare-fun b!3668301 () Bool)

(declare-fun e!2271349 () Bool)

(declare-fun tp!1116476 () Bool)

(assert (=> b!3668301 (= e!2271349 (and (inv!52168 (c!634131 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (value!186102 token!511)))) tp!1116476))))

(declare-fun result!258442 () Bool)

(assert (=> tb!212349 (= result!258442 (and (inv!52169 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (value!186102 token!511))) e!2271349))))

(assert (= tb!212349 b!3668301))

(declare-fun m!4176557 () Bool)

(assert (=> b!3668301 m!4176557))

(declare-fun m!4176559 () Bool)

(assert (=> tb!212349 m!4176559))

(assert (=> d!1077433 t!299406))

(declare-fun b_and!273019 () Bool)

(assert (= b_and!273003 (and (=> t!299406 result!258442) b_and!273019)))

(declare-fun t!299408 () Bool)

(declare-fun tb!212351 () Bool)

(assert (=> (and b!3667809 (= (toChars!7967 (transformation!5812 (rule!8632 token!511))) (toChars!7967 (transformation!5812 (rule!8632 token!511)))) t!299408) tb!212351))

(declare-fun result!258444 () Bool)

(assert (= result!258444 result!258442))

(assert (=> d!1077433 t!299408))

(declare-fun b_and!273021 () Bool)

(assert (= b_and!273005 (and (=> t!299408 result!258444) b_and!273021)))

(declare-fun tb!212353 () Bool)

(declare-fun t!299410 () Bool)

(assert (=> (and b!3667810 (= (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toChars!7967 (transformation!5812 (rule!8632 token!511)))) t!299410) tb!212353))

(declare-fun result!258446 () Bool)

(assert (= result!258446 result!258442))

(assert (=> d!1077433 t!299410))

(declare-fun b_and!273023 () Bool)

(assert (= b_and!273007 (and (=> t!299410 result!258446) b_and!273023)))

(declare-fun t!299412 () Bool)

(declare-fun tb!212355 () Bool)

(assert (=> (and b!3667848 (= (toChars!7967 (transformation!5812 rule!403)) (toChars!7967 (transformation!5812 (rule!8632 token!511)))) t!299412) tb!212355))

(declare-fun result!258448 () Bool)

(assert (= result!258448 result!258442))

(assert (=> d!1077433 t!299412))

(declare-fun b_and!273025 () Bool)

(assert (= b_and!273009 (and (=> t!299412 result!258448) b_and!273025)))

(declare-fun m!4176561 () Bool)

(assert (=> d!1077433 m!4176561))

(declare-fun m!4176563 () Bool)

(assert (=> d!1077433 m!4176563))

(assert (=> b!3667842 d!1077433))

(declare-fun d!1077435 () Bool)

(declare-fun lt!1277803 () Bool)

(assert (=> d!1077435 (= lt!1277803 (select (content!5599 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2271353 () Bool)

(assert (=> d!1077435 (= lt!1277803 e!2271353)))

(declare-fun res!1489625 () Bool)

(assert (=> d!1077435 (=> (not res!1489625) (not e!2271353))))

(assert (=> d!1077435 (= res!1489625 ((_ is Cons!38685) rules!3307))))

(assert (=> d!1077435 (= (contains!7692 rules!3307 anOtherTypeRule!33) lt!1277803)))

(declare-fun b!3668306 () Bool)

(declare-fun e!2271352 () Bool)

(assert (=> b!3668306 (= e!2271353 e!2271352)))

(declare-fun res!1489626 () Bool)

(assert (=> b!3668306 (=> res!1489626 e!2271352)))

(assert (=> b!3668306 (= res!1489626 (= (h!44105 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3668307 () Bool)

(assert (=> b!3668307 (= e!2271352 (contains!7692 (t!299324 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1077435 res!1489625) b!3668306))

(assert (= (and b!3668306 (not res!1489626)) b!3668307))

(assert (=> d!1077435 m!4176503))

(declare-fun m!4176565 () Bool)

(assert (=> d!1077435 m!4176565))

(declare-fun m!4176567 () Bool)

(assert (=> b!3668307 m!4176567))

(assert (=> b!3667801 d!1077435))

(declare-fun d!1077437 () Bool)

(declare-fun c!634223 () Bool)

(assert (=> d!1077437 (= c!634223 (or ((_ is EmptyExpr!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) ((_ is EmptyLang!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun e!2271356 () List!38807)

(assert (=> d!1077437 (= (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) e!2271356)))

(declare-fun bm!265518 () Bool)

(declare-fun call!265523 () List!38807)

(declare-fun call!265525 () List!38807)

(assert (=> bm!265518 (= call!265523 call!265525)))

(declare-fun b!3668308 () Bool)

(assert (=> b!3668308 (= e!2271356 Nil!38683)))

(declare-fun b!3668309 () Bool)

(declare-fun e!2271354 () List!38807)

(assert (=> b!3668309 (= e!2271354 (Cons!38683 (c!634130 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) Nil!38683))))

(declare-fun b!3668310 () Bool)

(declare-fun c!634222 () Bool)

(assert (=> b!3668310 (= c!634222 ((_ is Star!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun e!2271357 () List!38807)

(assert (=> b!3668310 (= e!2271354 e!2271357)))

(declare-fun c!634224 () Bool)

(declare-fun bm!265519 () Bool)

(assert (=> bm!265519 (= call!265525 (usedCharacters!1024 (ite c!634222 (reg!10900 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) (ite c!634224 (regOne!21655 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) (regTwo!21654 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))))

(declare-fun b!3668311 () Bool)

(assert (=> b!3668311 (= e!2271357 call!265525)))

(declare-fun call!265524 () List!38807)

(declare-fun bm!265520 () Bool)

(declare-fun call!265526 () List!38807)

(assert (=> bm!265520 (= call!265526 (++!9628 (ite c!634224 call!265523 call!265524) (ite c!634224 call!265524 call!265523)))))

(declare-fun b!3668312 () Bool)

(declare-fun e!2271355 () List!38807)

(assert (=> b!3668312 (= e!2271357 e!2271355)))

(assert (=> b!3668312 (= c!634224 ((_ is Union!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3668313 () Bool)

(assert (=> b!3668313 (= e!2271355 call!265526)))

(declare-fun bm!265521 () Bool)

(assert (=> bm!265521 (= call!265524 (usedCharacters!1024 (ite c!634224 (regTwo!21655 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) (regOne!21654 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))))

(declare-fun b!3668314 () Bool)

(assert (=> b!3668314 (= e!2271355 call!265526)))

(declare-fun b!3668315 () Bool)

(assert (=> b!3668315 (= e!2271356 e!2271354)))

(declare-fun c!634221 () Bool)

(assert (=> b!3668315 (= c!634221 ((_ is ElementMatch!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(assert (= (and d!1077437 c!634223) b!3668308))

(assert (= (and d!1077437 (not c!634223)) b!3668315))

(assert (= (and b!3668315 c!634221) b!3668309))

(assert (= (and b!3668315 (not c!634221)) b!3668310))

(assert (= (and b!3668310 c!634222) b!3668311))

(assert (= (and b!3668310 (not c!634222)) b!3668312))

(assert (= (and b!3668312 c!634224) b!3668313))

(assert (= (and b!3668312 (not c!634224)) b!3668314))

(assert (= (or b!3668313 b!3668314) bm!265518))

(assert (= (or b!3668313 b!3668314) bm!265521))

(assert (= (or b!3668313 b!3668314) bm!265520))

(assert (= (or b!3668311 bm!265518) bm!265519))

(declare-fun m!4176569 () Bool)

(assert (=> bm!265519 m!4176569))

(declare-fun m!4176571 () Bool)

(assert (=> bm!265520 m!4176571))

(declare-fun m!4176573 () Bool)

(assert (=> bm!265521 m!4176573))

(assert (=> bm!265475 d!1077437))

(declare-fun b!3668336 () Bool)

(declare-fun res!1489631 () Bool)

(declare-fun e!2271371 () Bool)

(assert (=> b!3668336 (=> res!1489631 e!2271371)))

(assert (=> b!3668336 (= res!1489631 (not ((_ is IntegerValue!18128) (value!186102 token!511))))))

(declare-fun e!2271372 () Bool)

(assert (=> b!3668336 (= e!2271372 e!2271371)))

(declare-fun b!3668337 () Bool)

(declare-fun e!2271370 () Bool)

(declare-fun inv!16 (TokenValue!6042) Bool)

(assert (=> b!3668337 (= e!2271370 (inv!16 (value!186102 token!511)))))

(declare-fun b!3668338 () Bool)

(declare-fun inv!17 (TokenValue!6042) Bool)

(assert (=> b!3668338 (= e!2271372 (inv!17 (value!186102 token!511)))))

(declare-fun b!3668339 () Bool)

(assert (=> b!3668339 (= e!2271370 e!2271372)))

(declare-fun c!634234 () Bool)

(assert (=> b!3668339 (= c!634234 ((_ is IntegerValue!18127) (value!186102 token!511)))))

(declare-fun d!1077439 () Bool)

(declare-fun c!634233 () Bool)

(assert (=> d!1077439 (= c!634233 ((_ is IntegerValue!18126) (value!186102 token!511)))))

(assert (=> d!1077439 (= (inv!21 (value!186102 token!511)) e!2271370)))

(declare-fun b!3668340 () Bool)

(declare-fun inv!15 (TokenValue!6042) Bool)

(assert (=> b!3668340 (= e!2271371 (inv!15 (value!186102 token!511)))))

(assert (= (and d!1077439 c!634233) b!3668337))

(assert (= (and d!1077439 (not c!634233)) b!3668339))

(assert (= (and b!3668339 c!634234) b!3668338))

(assert (= (and b!3668339 (not c!634234)) b!3668336))

(assert (= (and b!3668336 (not res!1489631)) b!3668340))

(declare-fun m!4176641 () Bool)

(assert (=> b!3668337 m!4176641))

(declare-fun m!4176643 () Bool)

(assert (=> b!3668338 m!4176643))

(declare-fun m!4176645 () Bool)

(assert (=> b!3668340 m!4176645))

(assert (=> b!3667824 d!1077439))

(declare-fun d!1077453 () Bool)

(assert (=> d!1077453 (not (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541))))

(declare-fun lt!1277806 () Unit!56169)

(assert (=> d!1077453 (= lt!1277806 (choose!21771 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277567))))

(assert (=> d!1077453 (validRegex!4840 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077453 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277567) lt!1277806)))

(declare-fun bs!573060 () Bool)

(assert (= bs!573060 d!1077453))

(assert (=> bs!573060 m!4175915))

(declare-fun m!4176647 () Bool)

(assert (=> bs!573060 m!4176647))

(declare-fun m!4176649 () Bool)

(assert (=> bs!573060 m!4176649))

(assert (=> bm!265478 d!1077453))

(declare-fun d!1077455 () Bool)

(assert (=> d!1077455 (not (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541))))

(declare-fun lt!1277807 () Unit!56169)

(assert (=> d!1077455 (= lt!1277807 (choose!21771 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277590))))

(assert (=> d!1077455 (validRegex!4840 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077455 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!760 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541 lt!1277590) lt!1277807)))

(declare-fun bs!573061 () Bool)

(assert (= bs!573061 d!1077455))

(assert (=> bs!573061 m!4175915))

(declare-fun m!4176651 () Bool)

(assert (=> bs!573061 m!4176651))

(assert (=> bs!573061 m!4176649))

(assert (=> bm!265476 d!1077455))

(declare-fun b!3668351 () Bool)

(declare-fun e!2271381 () Int)

(assert (=> b!3668351 (= e!2271381 0)))

(declare-fun d!1077457 () Bool)

(declare-fun lt!1277817 () Int)

(assert (=> d!1077457 (>= lt!1277817 0)))

(assert (=> d!1077457 (= lt!1277817 e!2271381)))

(declare-fun c!634239 () Bool)

(assert (=> d!1077457 (= c!634239 (and ((_ is Cons!38685) rules!3307) (= (h!44105 rules!3307) rule!403)))))

(assert (=> d!1077457 (contains!7692 rules!3307 rule!403)))

(assert (=> d!1077457 (= (getIndex!480 rules!3307 rule!403) lt!1277817)))

(declare-fun b!3668354 () Bool)

(declare-fun e!2271380 () Int)

(assert (=> b!3668354 (= e!2271380 (- 1))))

(declare-fun b!3668352 () Bool)

(assert (=> b!3668352 (= e!2271381 e!2271380)))

(declare-fun c!634240 () Bool)

(assert (=> b!3668352 (= c!634240 (and ((_ is Cons!38685) rules!3307) (not (= (h!44105 rules!3307) rule!403))))))

(declare-fun b!3668353 () Bool)

(assert (=> b!3668353 (= e!2271380 (+ 1 (getIndex!480 (t!299324 rules!3307) rule!403)))))

(assert (= (and d!1077457 c!634239) b!3668351))

(assert (= (and d!1077457 (not c!634239)) b!3668352))

(assert (= (and b!3668352 c!634240) b!3668353))

(assert (= (and b!3668352 (not c!634240)) b!3668354))

(assert (=> d!1077457 m!4175943))

(declare-fun m!4176669 () Bool)

(assert (=> b!3668353 m!4176669))

(assert (=> b!3667823 d!1077457))

(declare-fun b!3668355 () Bool)

(declare-fun e!2271383 () Int)

(assert (=> b!3668355 (= e!2271383 0)))

(declare-fun d!1077471 () Bool)

(declare-fun lt!1277818 () Int)

(assert (=> d!1077471 (>= lt!1277818 0)))

(assert (=> d!1077471 (= lt!1277818 e!2271383)))

(declare-fun c!634241 () Bool)

(assert (=> d!1077471 (= c!634241 (and ((_ is Cons!38685) rules!3307) (= (h!44105 rules!3307) (rule!8632 (_1!22410 lt!1277551)))))))

(assert (=> d!1077471 (contains!7692 rules!3307 (rule!8632 (_1!22410 lt!1277551)))))

(assert (=> d!1077471 (= (getIndex!480 rules!3307 (rule!8632 (_1!22410 lt!1277551))) lt!1277818)))

(declare-fun b!3668358 () Bool)

(declare-fun e!2271382 () Int)

(assert (=> b!3668358 (= e!2271382 (- 1))))

(declare-fun b!3668356 () Bool)

(assert (=> b!3668356 (= e!2271383 e!2271382)))

(declare-fun c!634242 () Bool)

(assert (=> b!3668356 (= c!634242 (and ((_ is Cons!38685) rules!3307) (not (= (h!44105 rules!3307) (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun b!3668357 () Bool)

(assert (=> b!3668357 (= e!2271382 (+ 1 (getIndex!480 (t!299324 rules!3307) (rule!8632 (_1!22410 lt!1277551)))))))

(assert (= (and d!1077471 c!634241) b!3668355))

(assert (= (and d!1077471 (not c!634241)) b!3668356))

(assert (= (and b!3668356 c!634242) b!3668357))

(assert (= (and b!3668356 (not c!634242)) b!3668358))

(assert (=> d!1077471 m!4175939))

(declare-fun m!4176671 () Bool)

(assert (=> b!3668357 m!4176671))

(assert (=> b!3667823 d!1077471))

(declare-fun d!1077473 () Bool)

(assert (=> d!1077473 (not (matchR!5140 (regex!5812 rule!403) lt!1277578))))

(declare-fun lt!1277827 () Unit!56169)

(declare-fun choose!21785 (LexerInterface!5401 List!38809 Rule!11424 List!38807 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> d!1077473 (= lt!1277827 (choose!21785 thiss!23823 rules!3307 (rule!8632 (_1!22410 lt!1277551)) lt!1277541 lt!1277555 lt!1277578 rule!403))))

(assert (=> d!1077473 (isPrefix!3175 lt!1277541 lt!1277555)))

(assert (=> d!1077473 (= (lemmaMaxPrefixOutputsMaxPrefix!354 thiss!23823 rules!3307 (rule!8632 (_1!22410 lt!1277551)) lt!1277541 lt!1277555 lt!1277578 rule!403) lt!1277827)))

(declare-fun bs!573068 () Bool)

(assert (= bs!573068 d!1077473))

(assert (=> bs!573068 m!4175945))

(declare-fun m!4176679 () Bool)

(assert (=> bs!573068 m!4176679))

(assert (=> bs!573068 m!4175977))

(assert (=> b!3667844 d!1077473))

(declare-fun d!1077483 () Bool)

(declare-fun lt!1277828 () Bool)

(assert (=> d!1077483 (= lt!1277828 (select (content!5599 rules!3307) rule!403))))

(declare-fun e!2271388 () Bool)

(assert (=> d!1077483 (= lt!1277828 e!2271388)))

(declare-fun res!1489634 () Bool)

(assert (=> d!1077483 (=> (not res!1489634) (not e!2271388))))

(assert (=> d!1077483 (= res!1489634 ((_ is Cons!38685) rules!3307))))

(assert (=> d!1077483 (= (contains!7692 rules!3307 rule!403) lt!1277828)))

(declare-fun b!3668365 () Bool)

(declare-fun e!2271387 () Bool)

(assert (=> b!3668365 (= e!2271388 e!2271387)))

(declare-fun res!1489635 () Bool)

(assert (=> b!3668365 (=> res!1489635 e!2271387)))

(assert (=> b!3668365 (= res!1489635 (= (h!44105 rules!3307) rule!403))))

(declare-fun b!3668366 () Bool)

(assert (=> b!3668366 (= e!2271387 (contains!7692 (t!299324 rules!3307) rule!403))))

(assert (= (and d!1077483 res!1489634) b!3668365))

(assert (= (and b!3668365 (not res!1489635)) b!3668366))

(assert (=> d!1077483 m!4176503))

(declare-fun m!4176681 () Bool)

(assert (=> d!1077483 m!4176681))

(declare-fun m!4176683 () Bool)

(assert (=> b!3668366 m!4176683))

(assert (=> b!3667803 d!1077483))

(declare-fun d!1077485 () Bool)

(declare-fun res!1489640 () Bool)

(declare-fun e!2271394 () Bool)

(assert (=> d!1077485 (=> (not res!1489640) (not e!2271394))))

(assert (=> d!1077485 (= res!1489640 (not (isEmpty!22954 (originalCharacters!6526 token!511))))))

(assert (=> d!1077485 (= (inv!52165 token!511) e!2271394)))

(declare-fun b!3668377 () Bool)

(declare-fun res!1489641 () Bool)

(assert (=> b!3668377 (=> (not res!1489641) (not e!2271394))))

(assert (=> b!3668377 (= res!1489641 (= (originalCharacters!6526 token!511) (list!14362 (dynLambda!16929 (toChars!7967 (transformation!5812 (rule!8632 token!511))) (value!186102 token!511)))))))

(declare-fun b!3668378 () Bool)

(assert (=> b!3668378 (= e!2271394 (= (size!29563 token!511) (size!29565 (originalCharacters!6526 token!511))))))

(assert (= (and d!1077485 res!1489640) b!3668377))

(assert (= (and b!3668377 res!1489641) b!3668378))

(declare-fun b_lambda!108921 () Bool)

(assert (=> (not b_lambda!108921) (not b!3668377)))

(assert (=> b!3668377 t!299406))

(declare-fun b_and!273027 () Bool)

(assert (= b_and!273019 (and (=> t!299406 result!258442) b_and!273027)))

(assert (=> b!3668377 t!299408))

(declare-fun b_and!273029 () Bool)

(assert (= b_and!273021 (and (=> t!299408 result!258444) b_and!273029)))

(assert (=> b!3668377 t!299410))

(declare-fun b_and!273031 () Bool)

(assert (= b_and!273023 (and (=> t!299410 result!258446) b_and!273031)))

(assert (=> b!3668377 t!299412))

(declare-fun b_and!273033 () Bool)

(assert (= b_and!273025 (and (=> t!299412 result!258448) b_and!273033)))

(declare-fun m!4176689 () Bool)

(assert (=> d!1077485 m!4176689))

(assert (=> b!3668377 m!4176563))

(assert (=> b!3668377 m!4176563))

(declare-fun m!4176691 () Bool)

(assert (=> b!3668377 m!4176691))

(declare-fun m!4176693 () Bool)

(assert (=> b!3668378 m!4176693))

(assert (=> start!343614 d!1077485))

(declare-fun d!1077489 () Bool)

(declare-fun lt!1277832 () List!38807)

(assert (=> d!1077489 (= (++!9628 lt!1277578 lt!1277832) lt!1277578)))

(declare-fun e!2271395 () List!38807)

(assert (=> d!1077489 (= lt!1277832 e!2271395)))

(declare-fun c!634250 () Bool)

(assert (=> d!1077489 (= c!634250 ((_ is Cons!38683) lt!1277578))))

(assert (=> d!1077489 (>= (size!29565 lt!1277578) (size!29565 lt!1277578))))

(assert (=> d!1077489 (= (getSuffix!1728 lt!1277578 lt!1277578) lt!1277832)))

(declare-fun b!3668379 () Bool)

(assert (=> b!3668379 (= e!2271395 (getSuffix!1728 (tail!5677 lt!1277578) (t!299322 lt!1277578)))))

(declare-fun b!3668380 () Bool)

(assert (=> b!3668380 (= e!2271395 lt!1277578)))

(assert (= (and d!1077489 c!634250) b!3668379))

(assert (= (and d!1077489 (not c!634250)) b!3668380))

(declare-fun m!4176695 () Bool)

(assert (=> d!1077489 m!4176695))

(assert (=> d!1077489 m!4176551))

(assert (=> d!1077489 m!4176551))

(assert (=> b!3668379 m!4176247))

(assert (=> b!3668379 m!4176247))

(declare-fun m!4176697 () Bool)

(assert (=> b!3668379 m!4176697))

(assert (=> b!3667822 d!1077489))

(declare-fun d!1077491 () Bool)

(assert (=> d!1077491 (= (isEmpty!22954 (getSuffix!1728 lt!1277578 lt!1277578)) ((_ is Nil!38683) (getSuffix!1728 lt!1277578 lt!1277578)))))

(assert (=> b!3667822 d!1077491))

(declare-fun d!1077493 () Bool)

(assert (=> d!1077493 (not (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277578))))

(declare-fun lt!1277835 () Unit!56169)

(declare-fun choose!21787 (LexerInterface!5401 List!38809 Rule!11424 List!38807 List!38807 Rule!11424) Unit!56169)

(assert (=> d!1077493 (= lt!1277835 (choose!21787 thiss!23823 rules!3307 rule!403 lt!1277578 lt!1277578 (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077493 (isPrefix!3175 lt!1277578 lt!1277578)))

(assert (=> d!1077493 (= (lemmaMaxPrefNoSmallerRuleMatches!220 thiss!23823 rules!3307 rule!403 lt!1277578 lt!1277578 (rule!8632 (_1!22410 lt!1277551))) lt!1277835)))

(declare-fun bs!573069 () Bool)

(assert (= bs!573069 d!1077493))

(assert (=> bs!573069 m!4175887))

(declare-fun m!4176699 () Bool)

(assert (=> bs!573069 m!4176699))

(assert (=> bs!573069 m!4176539))

(assert (=> b!3667822 d!1077493))

(declare-fun b!3668381 () Bool)

(declare-fun e!2271399 () Bool)

(assert (=> b!3668381 (= e!2271399 (nullable!3679 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun d!1077495 () Bool)

(declare-fun e!2271396 () Bool)

(assert (=> d!1077495 e!2271396))

(declare-fun c!634252 () Bool)

(assert (=> d!1077495 (= c!634252 ((_ is EmptyExpr!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun lt!1277836 () Bool)

(assert (=> d!1077495 (= lt!1277836 e!2271399)))

(declare-fun c!634253 () Bool)

(assert (=> d!1077495 (= c!634253 (isEmpty!22954 lt!1277578))))

(assert (=> d!1077495 (validRegex!4840 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077495 (= (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277578) lt!1277836)))

(declare-fun b!3668382 () Bool)

(declare-fun e!2271397 () Bool)

(declare-fun e!2271402 () Bool)

(assert (=> b!3668382 (= e!2271397 e!2271402)))

(declare-fun res!1489646 () Bool)

(assert (=> b!3668382 (=> (not res!1489646) (not e!2271402))))

(assert (=> b!3668382 (= res!1489646 (not lt!1277836))))

(declare-fun b!3668383 () Bool)

(declare-fun res!1489643 () Bool)

(declare-fun e!2271398 () Bool)

(assert (=> b!3668383 (=> (not res!1489643) (not e!2271398))))

(assert (=> b!3668383 (= res!1489643 (isEmpty!22954 (tail!5677 lt!1277578)))))

(declare-fun b!3668384 () Bool)

(assert (=> b!3668384 (= e!2271399 (matchR!5140 (derivativeStep!3228 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) (head!7848 lt!1277578)) (tail!5677 lt!1277578)))))

(declare-fun b!3668385 () Bool)

(assert (=> b!3668385 (= e!2271398 (= (head!7848 lt!1277578) (c!634130 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun b!3668386 () Bool)

(declare-fun res!1489645 () Bool)

(declare-fun e!2271400 () Bool)

(assert (=> b!3668386 (=> res!1489645 e!2271400)))

(assert (=> b!3668386 (= res!1489645 (not (isEmpty!22954 (tail!5677 lt!1277578))))))

(declare-fun bm!265526 () Bool)

(declare-fun call!265531 () Bool)

(assert (=> bm!265526 (= call!265531 (isEmpty!22954 lt!1277578))))

(declare-fun b!3668387 () Bool)

(assert (=> b!3668387 (= e!2271396 (= lt!1277836 call!265531))))

(declare-fun b!3668388 () Bool)

(declare-fun res!1489648 () Bool)

(assert (=> b!3668388 (=> res!1489648 e!2271397)))

(assert (=> b!3668388 (= res!1489648 e!2271398)))

(declare-fun res!1489649 () Bool)

(assert (=> b!3668388 (=> (not res!1489649) (not e!2271398))))

(assert (=> b!3668388 (= res!1489649 lt!1277836)))

(declare-fun b!3668389 () Bool)

(declare-fun res!1489642 () Bool)

(assert (=> b!3668389 (=> res!1489642 e!2271397)))

(assert (=> b!3668389 (= res!1489642 (not ((_ is ElementMatch!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun e!2271401 () Bool)

(assert (=> b!3668389 (= e!2271401 e!2271397)))

(declare-fun b!3668390 () Bool)

(assert (=> b!3668390 (= e!2271402 e!2271400)))

(declare-fun res!1489644 () Bool)

(assert (=> b!3668390 (=> res!1489644 e!2271400)))

(assert (=> b!3668390 (= res!1489644 call!265531)))

(declare-fun b!3668391 () Bool)

(assert (=> b!3668391 (= e!2271396 e!2271401)))

(declare-fun c!634251 () Bool)

(assert (=> b!3668391 (= c!634251 ((_ is EmptyLang!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3668392 () Bool)

(declare-fun res!1489647 () Bool)

(assert (=> b!3668392 (=> (not res!1489647) (not e!2271398))))

(assert (=> b!3668392 (= res!1489647 (not call!265531))))

(declare-fun b!3668393 () Bool)

(assert (=> b!3668393 (= e!2271400 (not (= (head!7848 lt!1277578) (c!634130 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))))

(declare-fun b!3668394 () Bool)

(assert (=> b!3668394 (= e!2271401 (not lt!1277836))))

(assert (= (and d!1077495 c!634253) b!3668381))

(assert (= (and d!1077495 (not c!634253)) b!3668384))

(assert (= (and d!1077495 c!634252) b!3668387))

(assert (= (and d!1077495 (not c!634252)) b!3668391))

(assert (= (and b!3668391 c!634251) b!3668394))

(assert (= (and b!3668391 (not c!634251)) b!3668389))

(assert (= (and b!3668389 (not res!1489642)) b!3668388))

(assert (= (and b!3668388 res!1489649) b!3668392))

(assert (= (and b!3668392 res!1489647) b!3668383))

(assert (= (and b!3668383 res!1489643) b!3668385))

(assert (= (and b!3668388 (not res!1489648)) b!3668382))

(assert (= (and b!3668382 res!1489646) b!3668390))

(assert (= (and b!3668390 (not res!1489644)) b!3668386))

(assert (= (and b!3668386 (not res!1489645)) b!3668393))

(assert (= (or b!3668387 b!3668390 b!3668392) bm!265526))

(assert (=> b!3668385 m!4176245))

(assert (=> bm!265526 m!4176019))

(assert (=> d!1077495 m!4176019))

(assert (=> d!1077495 m!4176649))

(assert (=> b!3668383 m!4176247))

(assert (=> b!3668383 m!4176247))

(assert (=> b!3668383 m!4176249))

(assert (=> b!3668386 m!4176247))

(assert (=> b!3668386 m!4176247))

(assert (=> b!3668386 m!4176249))

(assert (=> b!3668393 m!4176245))

(declare-fun m!4176701 () Bool)

(assert (=> b!3668381 m!4176701))

(assert (=> b!3668384 m!4176245))

(assert (=> b!3668384 m!4176245))

(declare-fun m!4176703 () Bool)

(assert (=> b!3668384 m!4176703))

(assert (=> b!3668384 m!4176247))

(assert (=> b!3668384 m!4176703))

(assert (=> b!3668384 m!4176247))

(declare-fun m!4176705 () Bool)

(assert (=> b!3668384 m!4176705))

(assert (=> b!3667822 d!1077495))

(declare-fun d!1077497 () Bool)

(assert (=> d!1077497 (isEmpty!22954 (getSuffix!1728 lt!1277578 lt!1277578))))

(declare-fun lt!1277839 () Unit!56169)

(declare-fun choose!21790 (List!38807) Unit!56169)

(assert (=> d!1077497 (= lt!1277839 (choose!21790 lt!1277578))))

(assert (=> d!1077497 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!192 lt!1277578) lt!1277839)))

(declare-fun bs!573070 () Bool)

(assert (= bs!573070 d!1077497))

(assert (=> bs!573070 m!4175883))

(assert (=> bs!573070 m!4175883))

(assert (=> bs!573070 m!4175885))

(declare-fun m!4176707 () Bool)

(assert (=> bs!573070 m!4176707))

(assert (=> b!3667822 d!1077497))

(declare-fun d!1077499 () Bool)

(assert (=> d!1077499 (= (list!14362 lt!1277556) (list!14364 (c!634131 lt!1277556)))))

(declare-fun bs!573071 () Bool)

(assert (= bs!573071 d!1077499))

(declare-fun m!4176709 () Bool)

(assert (=> bs!573071 m!4176709))

(assert (=> b!3667799 d!1077499))

(declare-fun b!3668403 () Bool)

(declare-fun e!2271408 () List!38807)

(assert (=> b!3668403 (= e!2271408 suffix!1395)))

(declare-fun d!1077501 () Bool)

(declare-fun e!2271407 () Bool)

(assert (=> d!1077501 e!2271407))

(declare-fun res!1489654 () Bool)

(assert (=> d!1077501 (=> (not res!1489654) (not e!2271407))))

(declare-fun lt!1277842 () List!38807)

(assert (=> d!1077501 (= res!1489654 (= (content!5598 lt!1277842) ((_ map or) (content!5598 lt!1277578) (content!5598 suffix!1395))))))

(assert (=> d!1077501 (= lt!1277842 e!2271408)))

(declare-fun c!634256 () Bool)

(assert (=> d!1077501 (= c!634256 ((_ is Nil!38683) lt!1277578))))

(assert (=> d!1077501 (= (++!9628 lt!1277578 suffix!1395) lt!1277842)))

(declare-fun b!3668406 () Bool)

(assert (=> b!3668406 (= e!2271407 (or (not (= suffix!1395 Nil!38683)) (= lt!1277842 lt!1277578)))))

(declare-fun b!3668404 () Bool)

(assert (=> b!3668404 (= e!2271408 (Cons!38683 (h!44103 lt!1277578) (++!9628 (t!299322 lt!1277578) suffix!1395)))))

(declare-fun b!3668405 () Bool)

(declare-fun res!1489655 () Bool)

(assert (=> b!3668405 (=> (not res!1489655) (not e!2271407))))

(assert (=> b!3668405 (= res!1489655 (= (size!29565 lt!1277842) (+ (size!29565 lt!1277578) (size!29565 suffix!1395))))))

(assert (= (and d!1077501 c!634256) b!3668403))

(assert (= (and d!1077501 (not c!634256)) b!3668404))

(assert (= (and d!1077501 res!1489654) b!3668405))

(assert (= (and b!3668405 res!1489655) b!3668406))

(declare-fun m!4176711 () Bool)

(assert (=> d!1077501 m!4176711))

(declare-fun m!4176713 () Bool)

(assert (=> d!1077501 m!4176713))

(declare-fun m!4176715 () Bool)

(assert (=> d!1077501 m!4176715))

(declare-fun m!4176717 () Bool)

(assert (=> b!3668404 m!4176717))

(declare-fun m!4176719 () Bool)

(assert (=> b!3668405 m!4176719))

(assert (=> b!3668405 m!4176551))

(declare-fun m!4176721 () Bool)

(assert (=> b!3668405 m!4176721))

(assert (=> b!3667799 d!1077501))

(declare-fun b!3668418 () Bool)

(declare-fun e!2271415 () Bool)

(assert (=> b!3668418 (= e!2271415 (>= (size!29565 (++!9628 lt!1277541 (_2!22410 lt!1277551))) (size!29565 lt!1277541)))))

(declare-fun d!1077503 () Bool)

(assert (=> d!1077503 e!2271415))

(declare-fun res!1489664 () Bool)

(assert (=> d!1077503 (=> res!1489664 e!2271415)))

(declare-fun lt!1277845 () Bool)

(assert (=> d!1077503 (= res!1489664 (not lt!1277845))))

(declare-fun e!2271417 () Bool)

(assert (=> d!1077503 (= lt!1277845 e!2271417)))

(declare-fun res!1489665 () Bool)

(assert (=> d!1077503 (=> res!1489665 e!2271417)))

(assert (=> d!1077503 (= res!1489665 ((_ is Nil!38683) lt!1277541))))

(assert (=> d!1077503 (= (isPrefix!3175 lt!1277541 (++!9628 lt!1277541 (_2!22410 lt!1277551))) lt!1277845)))

(declare-fun b!3668417 () Bool)

(declare-fun e!2271416 () Bool)

(assert (=> b!3668417 (= e!2271416 (isPrefix!3175 (tail!5677 lt!1277541) (tail!5677 (++!9628 lt!1277541 (_2!22410 lt!1277551)))))))

(declare-fun b!3668416 () Bool)

(declare-fun res!1489666 () Bool)

(assert (=> b!3668416 (=> (not res!1489666) (not e!2271416))))

(assert (=> b!3668416 (= res!1489666 (= (head!7848 lt!1277541) (head!7848 (++!9628 lt!1277541 (_2!22410 lt!1277551)))))))

(declare-fun b!3668415 () Bool)

(assert (=> b!3668415 (= e!2271417 e!2271416)))

(declare-fun res!1489667 () Bool)

(assert (=> b!3668415 (=> (not res!1489667) (not e!2271416))))

(assert (=> b!3668415 (= res!1489667 (not ((_ is Nil!38683) (++!9628 lt!1277541 (_2!22410 lt!1277551)))))))

(assert (= (and d!1077503 (not res!1489665)) b!3668415))

(assert (= (and b!3668415 res!1489667) b!3668416))

(assert (= (and b!3668416 res!1489666) b!3668417))

(assert (= (and d!1077503 (not res!1489664)) b!3668418))

(assert (=> b!3668418 m!4175997))

(declare-fun m!4176723 () Bool)

(assert (=> b!3668418 m!4176723))

(assert (=> b!3668418 m!4175901))

(declare-fun m!4176725 () Bool)

(assert (=> b!3668417 m!4176725))

(assert (=> b!3668417 m!4175997))

(declare-fun m!4176727 () Bool)

(assert (=> b!3668417 m!4176727))

(assert (=> b!3668417 m!4176725))

(assert (=> b!3668417 m!4176727))

(declare-fun m!4176729 () Bool)

(assert (=> b!3668417 m!4176729))

(assert (=> b!3668416 m!4176037))

(assert (=> b!3668416 m!4175997))

(declare-fun m!4176731 () Bool)

(assert (=> b!3668416 m!4176731))

(assert (=> b!3667799 d!1077503))

(declare-fun b!3668422 () Bool)

(declare-fun e!2271418 () Bool)

(assert (=> b!3668422 (= e!2271418 (>= (size!29565 lt!1277555) (size!29565 lt!1277541)))))

(declare-fun d!1077505 () Bool)

(assert (=> d!1077505 e!2271418))

(declare-fun res!1489668 () Bool)

(assert (=> d!1077505 (=> res!1489668 e!2271418)))

(declare-fun lt!1277846 () Bool)

(assert (=> d!1077505 (= res!1489668 (not lt!1277846))))

(declare-fun e!2271420 () Bool)

(assert (=> d!1077505 (= lt!1277846 e!2271420)))

(declare-fun res!1489669 () Bool)

(assert (=> d!1077505 (=> res!1489669 e!2271420)))

(assert (=> d!1077505 (= res!1489669 ((_ is Nil!38683) lt!1277541))))

(assert (=> d!1077505 (= (isPrefix!3175 lt!1277541 lt!1277555) lt!1277846)))

(declare-fun b!3668421 () Bool)

(declare-fun e!2271419 () Bool)

(assert (=> b!3668421 (= e!2271419 (isPrefix!3175 (tail!5677 lt!1277541) (tail!5677 lt!1277555)))))

(declare-fun b!3668420 () Bool)

(declare-fun res!1489670 () Bool)

(assert (=> b!3668420 (=> (not res!1489670) (not e!2271419))))

(assert (=> b!3668420 (= res!1489670 (= (head!7848 lt!1277541) (head!7848 lt!1277555)))))

(declare-fun b!3668419 () Bool)

(assert (=> b!3668419 (= e!2271420 e!2271419)))

(declare-fun res!1489671 () Bool)

(assert (=> b!3668419 (=> (not res!1489671) (not e!2271419))))

(assert (=> b!3668419 (= res!1489671 (not ((_ is Nil!38683) lt!1277555)))))

(assert (= (and d!1077505 (not res!1489669)) b!3668419))

(assert (= (and b!3668419 res!1489671) b!3668420))

(assert (= (and b!3668420 res!1489670) b!3668421))

(assert (= (and d!1077505 (not res!1489668)) b!3668422))

(assert (=> b!3668422 m!4176445))

(assert (=> b!3668422 m!4175901))

(assert (=> b!3668421 m!4176725))

(assert (=> b!3668421 m!4176447))

(assert (=> b!3668421 m!4176725))

(assert (=> b!3668421 m!4176447))

(declare-fun m!4176733 () Bool)

(assert (=> b!3668421 m!4176733))

(assert (=> b!3668420 m!4176037))

(declare-fun m!4176735 () Bool)

(assert (=> b!3668420 m!4176735))

(assert (=> b!3667799 d!1077505))

(declare-fun b!3668580 () Bool)

(declare-fun e!2271502 () Unit!56169)

(declare-fun Unit!56188 () Unit!56169)

(assert (=> b!3668580 (= e!2271502 Unit!56188)))

(declare-fun lt!1277939 () List!38807)

(assert (=> b!3668580 (= lt!1277939 (++!9628 lt!1277578 suffix!1395))))

(declare-fun lt!1277946 () Unit!56169)

(declare-fun lt!1277947 () Token!10990)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!566 (LexerInterface!5401 Rule!11424 List!38809 List!38807) Unit!56169)

(assert (=> b!3668580 (= lt!1277946 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!566 thiss!23823 (rule!8632 lt!1277947) rules!3307 lt!1277939))))

(assert (=> b!3668580 (isEmpty!22958 (maxPrefixOneRule!2073 thiss!23823 (rule!8632 lt!1277947) lt!1277939))))

(declare-fun lt!1277945 () Unit!56169)

(assert (=> b!3668580 (= lt!1277945 lt!1277946)))

(declare-fun lt!1277933 () List!38807)

(assert (=> b!3668580 (= lt!1277933 (list!14362 (charsOf!3826 lt!1277947)))))

(declare-fun lt!1277938 () Unit!56169)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!554 (LexerInterface!5401 Rule!11424 List!38807 List!38807) Unit!56169)

(assert (=> b!3668580 (= lt!1277938 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!554 thiss!23823 (rule!8632 lt!1277947) lt!1277933 (++!9628 lt!1277578 suffix!1395)))))

(assert (=> b!3668580 (not (matchR!5140 (regex!5812 (rule!8632 lt!1277947)) lt!1277933))))

(declare-fun lt!1277935 () Unit!56169)

(assert (=> b!3668580 (= lt!1277935 lt!1277938)))

(assert (=> b!3668580 false))

(declare-fun d!1077507 () Bool)

(assert (=> d!1077507 (isDefined!6485 (maxPrefix!2935 thiss!23823 rules!3307 (++!9628 lt!1277578 suffix!1395)))))

(declare-fun lt!1277934 () Unit!56169)

(assert (=> d!1077507 (= lt!1277934 e!2271502)))

(declare-fun c!634282 () Bool)

(assert (=> d!1077507 (= c!634282 (isEmpty!22958 (maxPrefix!2935 thiss!23823 rules!3307 (++!9628 lt!1277578 suffix!1395))))))

(declare-fun lt!1277944 () Unit!56169)

(declare-fun lt!1277942 () Unit!56169)

(assert (=> d!1077507 (= lt!1277944 lt!1277942)))

(declare-fun e!2271503 () Bool)

(assert (=> d!1077507 e!2271503))

(declare-fun res!1489735 () Bool)

(assert (=> d!1077507 (=> (not res!1489735) (not e!2271503))))

(assert (=> d!1077507 (= res!1489735 (isDefined!6484 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 lt!1277947)))))))

(assert (=> d!1077507 (= lt!1277942 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1416 thiss!23823 rules!3307 lt!1277578 lt!1277947))))

(declare-fun lt!1277948 () Unit!56169)

(declare-fun lt!1277940 () Unit!56169)

(assert (=> d!1077507 (= lt!1277948 lt!1277940)))

(declare-fun lt!1277937 () List!38807)

(assert (=> d!1077507 (isPrefix!3175 lt!1277937 (++!9628 lt!1277578 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!530 (List!38807 List!38807 List!38807) Unit!56169)

(assert (=> d!1077507 (= lt!1277940 (lemmaPrefixStaysPrefixWhenAddingToSuffix!530 lt!1277937 lt!1277578 suffix!1395))))

(assert (=> d!1077507 (= lt!1277937 (list!14362 (charsOf!3826 lt!1277947)))))

(declare-fun lt!1277941 () Unit!56169)

(declare-fun lt!1277949 () Unit!56169)

(assert (=> d!1077507 (= lt!1277941 lt!1277949)))

(declare-fun lt!1277936 () List!38807)

(declare-fun lt!1277943 () List!38807)

(assert (=> d!1077507 (isPrefix!3175 lt!1277936 (++!9628 lt!1277936 lt!1277943))))

(assert (=> d!1077507 (= lt!1277949 (lemmaConcatTwoListThenFirstIsPrefix!2094 lt!1277936 lt!1277943))))

(assert (=> d!1077507 (= lt!1277943 (_2!22410 (get!12768 (maxPrefix!2935 thiss!23823 rules!3307 lt!1277578))))))

(assert (=> d!1077507 (= lt!1277936 (list!14362 (charsOf!3826 lt!1277947)))))

(declare-datatypes ((List!38813 0))(
  ( (Nil!38689) (Cons!38689 (h!44109 Token!10990) (t!299448 List!38813)) )
))
(declare-fun head!7850 (List!38813) Token!10990)

(declare-datatypes ((IArray!23675 0))(
  ( (IArray!23676 (innerList!11895 List!38813)) )
))
(declare-datatypes ((Conc!11835 0))(
  ( (Node!11835 (left!30195 Conc!11835) (right!30525 Conc!11835) (csize!23900 Int) (cheight!12046 Int)) (Leaf!18352 (xs!15037 IArray!23675) (csize!23901 Int)) (Empty!11835) )
))
(declare-datatypes ((BalanceConc!23284 0))(
  ( (BalanceConc!23285 (c!634299 Conc!11835)) )
))
(declare-fun list!14366 (BalanceConc!23284) List!38813)

(declare-datatypes ((tuple2!38560 0))(
  ( (tuple2!38561 (_1!22414 BalanceConc!23284) (_2!22414 BalanceConc!23280)) )
))
(declare-fun lex!2562 (LexerInterface!5401 List!38809 BalanceConc!23280) tuple2!38560)

(assert (=> d!1077507 (= lt!1277947 (head!7850 (list!14366 (_1!22414 (lex!2562 thiss!23823 rules!3307 (seqFromList!4361 lt!1277578))))))))

(assert (=> d!1077507 (not (isEmpty!22955 rules!3307))))

(assert (=> d!1077507 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1079 thiss!23823 rules!3307 lt!1277578 suffix!1395) lt!1277934)))

(declare-fun b!3668578 () Bool)

(declare-fun res!1489734 () Bool)

(assert (=> b!3668578 (=> (not res!1489734) (not e!2271503))))

(assert (=> b!3668578 (= res!1489734 (matchR!5140 (regex!5812 (get!12769 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 lt!1277947))))) (list!14362 (charsOf!3826 lt!1277947))))))

(declare-fun b!3668581 () Bool)

(declare-fun Unit!56189 () Unit!56169)

(assert (=> b!3668581 (= e!2271502 Unit!56189)))

(declare-fun b!3668579 () Bool)

(assert (=> b!3668579 (= e!2271503 (= (rule!8632 lt!1277947) (get!12769 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 lt!1277947))))))))

(assert (= (and d!1077507 res!1489735) b!3668578))

(assert (= (and b!3668578 res!1489734) b!3668579))

(assert (= (and d!1077507 c!634282) b!3668580))

(assert (= (and d!1077507 (not c!634282)) b!3668581))

(assert (=> b!3668580 m!4176003))

(declare-fun m!4176891 () Bool)

(assert (=> b!3668580 m!4176891))

(assert (=> b!3668580 m!4176003))

(declare-fun m!4176893 () Bool)

(assert (=> b!3668580 m!4176893))

(declare-fun m!4176895 () Bool)

(assert (=> b!3668580 m!4176895))

(declare-fun m!4176897 () Bool)

(assert (=> b!3668580 m!4176897))

(declare-fun m!4176899 () Bool)

(assert (=> b!3668580 m!4176899))

(assert (=> b!3668580 m!4176897))

(assert (=> b!3668580 m!4176895))

(declare-fun m!4176901 () Bool)

(assert (=> b!3668580 m!4176901))

(declare-fun m!4176903 () Bool)

(assert (=> b!3668580 m!4176903))

(declare-fun m!4176905 () Bool)

(assert (=> d!1077507 m!4176905))

(declare-fun m!4176907 () Bool)

(assert (=> d!1077507 m!4176907))

(assert (=> d!1077507 m!4176003))

(declare-fun m!4176909 () Bool)

(assert (=> d!1077507 m!4176909))

(declare-fun m!4176911 () Bool)

(assert (=> d!1077507 m!4176911))

(declare-fun m!4176913 () Bool)

(assert (=> d!1077507 m!4176913))

(assert (=> d!1077507 m!4175959))

(declare-fun m!4176915 () Bool)

(assert (=> d!1077507 m!4176915))

(declare-fun m!4176917 () Bool)

(assert (=> d!1077507 m!4176917))

(declare-fun m!4176919 () Bool)

(assert (=> d!1077507 m!4176919))

(assert (=> d!1077507 m!4176897))

(assert (=> d!1077507 m!4176899))

(assert (=> d!1077507 m!4176907))

(declare-fun m!4176921 () Bool)

(assert (=> d!1077507 m!4176921))

(assert (=> d!1077507 m!4176897))

(assert (=> d!1077507 m!4176917))

(declare-fun m!4176923 () Bool)

(assert (=> d!1077507 m!4176923))

(declare-fun m!4176925 () Bool)

(assert (=> d!1077507 m!4176925))

(declare-fun m!4176927 () Bool)

(assert (=> d!1077507 m!4176927))

(declare-fun m!4176929 () Bool)

(assert (=> d!1077507 m!4176929))

(assert (=> d!1077507 m!4176911))

(assert (=> d!1077507 m!4176003))

(assert (=> d!1077507 m!4176925))

(assert (=> d!1077507 m!4176003))

(assert (=> d!1077507 m!4176053))

(declare-fun m!4176931 () Bool)

(assert (=> d!1077507 m!4176931))

(assert (=> d!1077507 m!4175959))

(assert (=> d!1077507 m!4176925))

(declare-fun m!4176933 () Bool)

(assert (=> d!1077507 m!4176933))

(assert (=> d!1077507 m!4176929))

(declare-fun m!4176935 () Bool)

(assert (=> d!1077507 m!4176935))

(assert (=> b!3668578 m!4176929))

(assert (=> b!3668578 m!4176899))

(declare-fun m!4176937 () Bool)

(assert (=> b!3668578 m!4176937))

(assert (=> b!3668578 m!4176897))

(assert (=> b!3668578 m!4176899))

(assert (=> b!3668578 m!4176929))

(declare-fun m!4176939 () Bool)

(assert (=> b!3668578 m!4176939))

(assert (=> b!3668578 m!4176897))

(assert (=> b!3668579 m!4176929))

(assert (=> b!3668579 m!4176929))

(assert (=> b!3668579 m!4176939))

(assert (=> b!3667799 d!1077507))

(declare-fun d!1077559 () Bool)

(declare-fun e!2271506 () Bool)

(assert (=> d!1077559 e!2271506))

(declare-fun res!1489740 () Bool)

(assert (=> d!1077559 (=> (not res!1489740) (not e!2271506))))

(assert (=> d!1077559 (= res!1489740 (isDefined!6484 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun lt!1277952 () Unit!56169)

(declare-fun choose!21793 (LexerInterface!5401 List!38809 List!38807 Token!10990) Unit!56169)

(assert (=> d!1077559 (= lt!1277952 (choose!21793 thiss!23823 rules!3307 lt!1277555 (_1!22410 lt!1277551)))))

(assert (=> d!1077559 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077559 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1416 thiss!23823 rules!3307 lt!1277555 (_1!22410 lt!1277551)) lt!1277952)))

(declare-fun b!3668586 () Bool)

(declare-fun res!1489741 () Bool)

(assert (=> b!3668586 (=> (not res!1489741) (not e!2271506))))

(assert (=> b!3668586 (= res!1489741 (matchR!5140 (regex!5812 (get!12769 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))) (list!14362 (charsOf!3826 (_1!22410 lt!1277551)))))))

(declare-fun b!3668587 () Bool)

(assert (=> b!3668587 (= e!2271506 (= (rule!8632 (_1!22410 lt!1277551)) (get!12769 (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))))))

(assert (= (and d!1077559 res!1489740) b!3668586))

(assert (= (and b!3668586 res!1489741) b!3668587))

(assert (=> d!1077559 m!4175989))

(assert (=> d!1077559 m!4175989))

(declare-fun m!4176941 () Bool)

(assert (=> d!1077559 m!4176941))

(declare-fun m!4176943 () Bool)

(assert (=> d!1077559 m!4176943))

(assert (=> d!1077559 m!4175881))

(assert (=> b!3668586 m!4175925))

(assert (=> b!3668586 m!4175925))

(assert (=> b!3668586 m!4175927))

(assert (=> b!3668586 m!4175989))

(declare-fun m!4176945 () Bool)

(assert (=> b!3668586 m!4176945))

(assert (=> b!3668586 m!4175927))

(declare-fun m!4176947 () Bool)

(assert (=> b!3668586 m!4176947))

(assert (=> b!3668586 m!4175989))

(assert (=> b!3668587 m!4175989))

(assert (=> b!3668587 m!4175989))

(assert (=> b!3668587 m!4176945))

(assert (=> b!3667799 d!1077559))

(declare-fun d!1077561 () Bool)

(declare-fun isEmpty!22959 (Option!8252) Bool)

(assert (=> d!1077561 (= (isDefined!6484 lt!1277566) (not (isEmpty!22959 lt!1277566)))))

(declare-fun bs!573082 () Bool)

(assert (= bs!573082 d!1077561))

(declare-fun m!4176949 () Bool)

(assert (=> bs!573082 m!4176949))

(assert (=> b!3667799 d!1077561))

(declare-fun d!1077563 () Bool)

(assert (=> d!1077563 (isPrefix!3175 lt!1277541 (++!9628 lt!1277541 (_2!22410 lt!1277551)))))

(declare-fun lt!1277955 () Unit!56169)

(declare-fun choose!21794 (List!38807 List!38807) Unit!56169)

(assert (=> d!1077563 (= lt!1277955 (choose!21794 lt!1277541 (_2!22410 lt!1277551)))))

(assert (=> d!1077563 (= (lemmaConcatTwoListThenFirstIsPrefix!2094 lt!1277541 (_2!22410 lt!1277551)) lt!1277955)))

(declare-fun bs!573083 () Bool)

(assert (= bs!573083 d!1077563))

(assert (=> bs!573083 m!4175997))

(assert (=> bs!573083 m!4175997))

(assert (=> bs!573083 m!4176001))

(declare-fun m!4176951 () Bool)

(assert (=> bs!573083 m!4176951))

(assert (=> b!3667799 d!1077563))

(assert (=> b!3667799 d!1077367))

(declare-fun d!1077565 () Bool)

(declare-fun e!2271507 () Bool)

(assert (=> d!1077565 e!2271507))

(declare-fun res!1489743 () Bool)

(assert (=> d!1077565 (=> res!1489743 e!2271507)))

(declare-fun lt!1277958 () Option!8253)

(assert (=> d!1077565 (= res!1489743 (isEmpty!22958 lt!1277958))))

(declare-fun e!2271508 () Option!8253)

(assert (=> d!1077565 (= lt!1277958 e!2271508)))

(declare-fun c!634283 () Bool)

(assert (=> d!1077565 (= c!634283 (and ((_ is Cons!38685) rules!3307) ((_ is Nil!38685) (t!299324 rules!3307))))))

(declare-fun lt!1277956 () Unit!56169)

(declare-fun lt!1277960 () Unit!56169)

(assert (=> d!1077565 (= lt!1277956 lt!1277960)))

(assert (=> d!1077565 (isPrefix!3175 lt!1277555 lt!1277555)))

(assert (=> d!1077565 (= lt!1277960 (lemmaIsPrefixRefl!2002 lt!1277555 lt!1277555))))

(assert (=> d!1077565 (rulesValidInductive!2065 thiss!23823 rules!3307)))

(assert (=> d!1077565 (= (maxPrefix!2935 thiss!23823 rules!3307 lt!1277555) lt!1277958)))

(declare-fun b!3668588 () Bool)

(declare-fun e!2271509 () Bool)

(assert (=> b!3668588 (= e!2271509 (contains!7692 rules!3307 (rule!8632 (_1!22410 (get!12768 lt!1277958)))))))

(declare-fun b!3668589 () Bool)

(declare-fun res!1489747 () Bool)

(assert (=> b!3668589 (=> (not res!1489747) (not e!2271509))))

(assert (=> b!3668589 (= res!1489747 (= (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277958)))) (originalCharacters!6526 (_1!22410 (get!12768 lt!1277958)))))))

(declare-fun bm!265534 () Bool)

(declare-fun call!265539 () Option!8253)

(assert (=> bm!265534 (= call!265539 (maxPrefixOneRule!2073 thiss!23823 (h!44105 rules!3307) lt!1277555))))

(declare-fun b!3668590 () Bool)

(declare-fun lt!1277959 () Option!8253)

(declare-fun lt!1277957 () Option!8253)

(assert (=> b!3668590 (= e!2271508 (ite (and ((_ is None!8252) lt!1277959) ((_ is None!8252) lt!1277957)) None!8252 (ite ((_ is None!8252) lt!1277957) lt!1277959 (ite ((_ is None!8252) lt!1277959) lt!1277957 (ite (>= (size!29563 (_1!22410 (v!38156 lt!1277959))) (size!29563 (_1!22410 (v!38156 lt!1277957)))) lt!1277959 lt!1277957)))))))

(assert (=> b!3668590 (= lt!1277959 call!265539)))

(assert (=> b!3668590 (= lt!1277957 (maxPrefix!2935 thiss!23823 (t!299324 rules!3307) lt!1277555))))

(declare-fun b!3668591 () Bool)

(assert (=> b!3668591 (= e!2271508 call!265539)))

(declare-fun b!3668592 () Bool)

(declare-fun res!1489742 () Bool)

(assert (=> b!3668592 (=> (not res!1489742) (not e!2271509))))

(assert (=> b!3668592 (= res!1489742 (= (value!186102 (_1!22410 (get!12768 lt!1277958))) (apply!9314 (transformation!5812 (rule!8632 (_1!22410 (get!12768 lt!1277958)))) (seqFromList!4361 (originalCharacters!6526 (_1!22410 (get!12768 lt!1277958)))))))))

(declare-fun b!3668593 () Bool)

(declare-fun res!1489744 () Bool)

(assert (=> b!3668593 (=> (not res!1489744) (not e!2271509))))

(assert (=> b!3668593 (= res!1489744 (= (++!9628 (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277958)))) (_2!22410 (get!12768 lt!1277958))) lt!1277555))))

(declare-fun b!3668594 () Bool)

(assert (=> b!3668594 (= e!2271507 e!2271509)))

(declare-fun res!1489745 () Bool)

(assert (=> b!3668594 (=> (not res!1489745) (not e!2271509))))

(assert (=> b!3668594 (= res!1489745 (isDefined!6485 lt!1277958))))

(declare-fun b!3668595 () Bool)

(declare-fun res!1489746 () Bool)

(assert (=> b!3668595 (=> (not res!1489746) (not e!2271509))))

(assert (=> b!3668595 (= res!1489746 (< (size!29565 (_2!22410 (get!12768 lt!1277958))) (size!29565 lt!1277555)))))

(declare-fun b!3668596 () Bool)

(declare-fun res!1489748 () Bool)

(assert (=> b!3668596 (=> (not res!1489748) (not e!2271509))))

(assert (=> b!3668596 (= res!1489748 (matchR!5140 (regex!5812 (rule!8632 (_1!22410 (get!12768 lt!1277958)))) (list!14362 (charsOf!3826 (_1!22410 (get!12768 lt!1277958))))))))

(assert (= (and d!1077565 c!634283) b!3668591))

(assert (= (and d!1077565 (not c!634283)) b!3668590))

(assert (= (or b!3668591 b!3668590) bm!265534))

(assert (= (and d!1077565 (not res!1489743)) b!3668594))

(assert (= (and b!3668594 res!1489745) b!3668589))

(assert (= (and b!3668589 res!1489747) b!3668595))

(assert (= (and b!3668595 res!1489746) b!3668593))

(assert (= (and b!3668593 res!1489744) b!3668592))

(assert (= (and b!3668592 res!1489742) b!3668596))

(assert (= (and b!3668596 res!1489748) b!3668588))

(declare-fun m!4176953 () Bool)

(assert (=> b!3668589 m!4176953))

(declare-fun m!4176955 () Bool)

(assert (=> b!3668589 m!4176955))

(assert (=> b!3668589 m!4176955))

(declare-fun m!4176957 () Bool)

(assert (=> b!3668589 m!4176957))

(assert (=> b!3668596 m!4176953))

(assert (=> b!3668596 m!4176955))

(assert (=> b!3668596 m!4176955))

(assert (=> b!3668596 m!4176957))

(assert (=> b!3668596 m!4176957))

(declare-fun m!4176959 () Bool)

(assert (=> b!3668596 m!4176959))

(declare-fun m!4176961 () Bool)

(assert (=> bm!265534 m!4176961))

(assert (=> b!3668592 m!4176953))

(declare-fun m!4176963 () Bool)

(assert (=> b!3668592 m!4176963))

(assert (=> b!3668592 m!4176963))

(declare-fun m!4176965 () Bool)

(assert (=> b!3668592 m!4176965))

(declare-fun m!4176967 () Bool)

(assert (=> b!3668590 m!4176967))

(declare-fun m!4176969 () Bool)

(assert (=> d!1077565 m!4176969))

(declare-fun m!4176971 () Bool)

(assert (=> d!1077565 m!4176971))

(declare-fun m!4176973 () Bool)

(assert (=> d!1077565 m!4176973))

(assert (=> d!1077565 m!4176543))

(assert (=> b!3668588 m!4176953))

(declare-fun m!4176975 () Bool)

(assert (=> b!3668588 m!4176975))

(assert (=> b!3668593 m!4176953))

(assert (=> b!3668593 m!4176955))

(assert (=> b!3668593 m!4176955))

(assert (=> b!3668593 m!4176957))

(assert (=> b!3668593 m!4176957))

(declare-fun m!4176977 () Bool)

(assert (=> b!3668593 m!4176977))

(assert (=> b!3668595 m!4176953))

(declare-fun m!4176979 () Bool)

(assert (=> b!3668595 m!4176979))

(assert (=> b!3668595 m!4176445))

(declare-fun m!4176981 () Bool)

(assert (=> b!3668594 m!4176981))

(assert (=> b!3667799 d!1077565))

(declare-fun b!3668600 () Bool)

(declare-fun e!2271510 () Bool)

(assert (=> b!3668600 (= e!2271510 (>= (size!29565 lt!1277555) (size!29565 lt!1277578)))))

(declare-fun d!1077567 () Bool)

(assert (=> d!1077567 e!2271510))

(declare-fun res!1489749 () Bool)

(assert (=> d!1077567 (=> res!1489749 e!2271510)))

(declare-fun lt!1277961 () Bool)

(assert (=> d!1077567 (= res!1489749 (not lt!1277961))))

(declare-fun e!2271512 () Bool)

(assert (=> d!1077567 (= lt!1277961 e!2271512)))

(declare-fun res!1489750 () Bool)

(assert (=> d!1077567 (=> res!1489750 e!2271512)))

(assert (=> d!1077567 (= res!1489750 ((_ is Nil!38683) lt!1277578))))

(assert (=> d!1077567 (= (isPrefix!3175 lt!1277578 lt!1277555) lt!1277961)))

(declare-fun b!3668599 () Bool)

(declare-fun e!2271511 () Bool)

(assert (=> b!3668599 (= e!2271511 (isPrefix!3175 (tail!5677 lt!1277578) (tail!5677 lt!1277555)))))

(declare-fun b!3668598 () Bool)

(declare-fun res!1489751 () Bool)

(assert (=> b!3668598 (=> (not res!1489751) (not e!2271511))))

(assert (=> b!3668598 (= res!1489751 (= (head!7848 lt!1277578) (head!7848 lt!1277555)))))

(declare-fun b!3668597 () Bool)

(assert (=> b!3668597 (= e!2271512 e!2271511)))

(declare-fun res!1489752 () Bool)

(assert (=> b!3668597 (=> (not res!1489752) (not e!2271511))))

(assert (=> b!3668597 (= res!1489752 (not ((_ is Nil!38683) lt!1277555)))))

(assert (= (and d!1077567 (not res!1489750)) b!3668597))

(assert (= (and b!3668597 res!1489752) b!3668598))

(assert (= (and b!3668598 res!1489751) b!3668599))

(assert (= (and d!1077567 (not res!1489749)) b!3668600))

(assert (=> b!3668600 m!4176445))

(assert (=> b!3668600 m!4176551))

(assert (=> b!3668599 m!4176247))

(assert (=> b!3668599 m!4176447))

(assert (=> b!3668599 m!4176247))

(assert (=> b!3668599 m!4176447))

(declare-fun m!4176983 () Bool)

(assert (=> b!3668599 m!4176983))

(assert (=> b!3668598 m!4176245))

(assert (=> b!3668598 m!4176735))

(assert (=> b!3667799 d!1077567))

(declare-fun b!3668613 () Bool)

(declare-fun e!2271524 () Option!8252)

(assert (=> b!3668613 (= e!2271524 None!8251)))

(declare-fun d!1077569 () Bool)

(declare-fun e!2271523 () Bool)

(assert (=> d!1077569 e!2271523))

(declare-fun res!1489757 () Bool)

(assert (=> d!1077569 (=> res!1489757 e!2271523)))

(declare-fun lt!1277970 () Option!8252)

(assert (=> d!1077569 (= res!1489757 (isEmpty!22959 lt!1277970))))

(declare-fun e!2271521 () Option!8252)

(assert (=> d!1077569 (= lt!1277970 e!2271521)))

(declare-fun c!634288 () Bool)

(assert (=> d!1077569 (= c!634288 (and ((_ is Cons!38685) rules!3307) (= (tag!6598 (h!44105 rules!3307)) (tag!6598 (rule!8632 (_1!22410 lt!1277551))))))))

(assert (=> d!1077569 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077569 (= (getRuleFromTag!1416 thiss!23823 rules!3307 (tag!6598 (rule!8632 (_1!22410 lt!1277551)))) lt!1277970)))

(declare-fun b!3668614 () Bool)

(declare-fun lt!1277968 () Unit!56169)

(declare-fun lt!1277969 () Unit!56169)

(assert (=> b!3668614 (= lt!1277968 lt!1277969)))

(assert (=> b!3668614 (rulesInvariant!4798 thiss!23823 (t!299324 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!609 (LexerInterface!5401 Rule!11424 List!38809) Unit!56169)

(assert (=> b!3668614 (= lt!1277969 (lemmaInvariantOnRulesThenOnTail!609 thiss!23823 (h!44105 rules!3307) (t!299324 rules!3307)))))

(assert (=> b!3668614 (= e!2271524 (getRuleFromTag!1416 thiss!23823 (t!299324 rules!3307) (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3668615 () Bool)

(assert (=> b!3668615 (= e!2271521 (Some!8251 (h!44105 rules!3307)))))

(declare-fun b!3668616 () Bool)

(declare-fun e!2271522 () Bool)

(assert (=> b!3668616 (= e!2271523 e!2271522)))

(declare-fun res!1489758 () Bool)

(assert (=> b!3668616 (=> (not res!1489758) (not e!2271522))))

(assert (=> b!3668616 (= res!1489758 (contains!7692 rules!3307 (get!12769 lt!1277970)))))

(declare-fun b!3668617 () Bool)

(assert (=> b!3668617 (= e!2271522 (= (tag!6598 (get!12769 lt!1277970)) (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3668618 () Bool)

(assert (=> b!3668618 (= e!2271521 e!2271524)))

(declare-fun c!634289 () Bool)

(assert (=> b!3668618 (= c!634289 (and ((_ is Cons!38685) rules!3307) (not (= (tag!6598 (h!44105 rules!3307)) (tag!6598 (rule!8632 (_1!22410 lt!1277551)))))))))

(assert (= (and d!1077569 c!634288) b!3668615))

(assert (= (and d!1077569 (not c!634288)) b!3668618))

(assert (= (and b!3668618 c!634289) b!3668614))

(assert (= (and b!3668618 (not c!634289)) b!3668613))

(assert (= (and d!1077569 (not res!1489757)) b!3668616))

(assert (= (and b!3668616 res!1489758) b!3668617))

(declare-fun m!4176985 () Bool)

(assert (=> d!1077569 m!4176985))

(assert (=> d!1077569 m!4175881))

(declare-fun m!4176987 () Bool)

(assert (=> b!3668614 m!4176987))

(declare-fun m!4176989 () Bool)

(assert (=> b!3668614 m!4176989))

(declare-fun m!4176991 () Bool)

(assert (=> b!3668614 m!4176991))

(declare-fun m!4176993 () Bool)

(assert (=> b!3668616 m!4176993))

(assert (=> b!3668616 m!4176993))

(declare-fun m!4176995 () Bool)

(assert (=> b!3668616 m!4176995))

(assert (=> b!3668617 m!4176993))

(assert (=> b!3667799 d!1077569))

(declare-fun d!1077571 () Bool)

(assert (=> d!1077571 (isPrefix!3175 lt!1277578 (++!9628 lt!1277578 suffix!1395))))

(declare-fun lt!1277971 () Unit!56169)

(assert (=> d!1077571 (= lt!1277971 (choose!21794 lt!1277578 suffix!1395))))

(assert (=> d!1077571 (= (lemmaConcatTwoListThenFirstIsPrefix!2094 lt!1277578 suffix!1395) lt!1277971)))

(declare-fun bs!573084 () Bool)

(assert (= bs!573084 d!1077571))

(assert (=> bs!573084 m!4176003))

(assert (=> bs!573084 m!4176003))

(declare-fun m!4176997 () Bool)

(assert (=> bs!573084 m!4176997))

(declare-fun m!4176999 () Bool)

(assert (=> bs!573084 m!4176999))

(assert (=> b!3667799 d!1077571))

(declare-fun d!1077573 () Bool)

(assert (=> d!1077573 (= (get!12768 lt!1277580) (v!38156 lt!1277580))))

(assert (=> b!3667799 d!1077573))

(declare-fun b!3668619 () Bool)

(declare-fun e!2271526 () List!38807)

(assert (=> b!3668619 (= e!2271526 (_2!22410 lt!1277551))))

(declare-fun d!1077575 () Bool)

(declare-fun e!2271525 () Bool)

(assert (=> d!1077575 e!2271525))

(declare-fun res!1489759 () Bool)

(assert (=> d!1077575 (=> (not res!1489759) (not e!2271525))))

(declare-fun lt!1277972 () List!38807)

(assert (=> d!1077575 (= res!1489759 (= (content!5598 lt!1277972) ((_ map or) (content!5598 lt!1277541) (content!5598 (_2!22410 lt!1277551)))))))

(assert (=> d!1077575 (= lt!1277972 e!2271526)))

(declare-fun c!634290 () Bool)

(assert (=> d!1077575 (= c!634290 ((_ is Nil!38683) lt!1277541))))

(assert (=> d!1077575 (= (++!9628 lt!1277541 (_2!22410 lt!1277551)) lt!1277972)))

(declare-fun b!3668622 () Bool)

(assert (=> b!3668622 (= e!2271525 (or (not (= (_2!22410 lt!1277551) Nil!38683)) (= lt!1277972 lt!1277541)))))

(declare-fun b!3668620 () Bool)

(assert (=> b!3668620 (= e!2271526 (Cons!38683 (h!44103 lt!1277541) (++!9628 (t!299322 lt!1277541) (_2!22410 lt!1277551))))))

(declare-fun b!3668621 () Bool)

(declare-fun res!1489760 () Bool)

(assert (=> b!3668621 (=> (not res!1489760) (not e!2271525))))

(assert (=> b!3668621 (= res!1489760 (= (size!29565 lt!1277972) (+ (size!29565 lt!1277541) (size!29565 (_2!22410 lt!1277551)))))))

(assert (= (and d!1077575 c!634290) b!3668619))

(assert (= (and d!1077575 (not c!634290)) b!3668620))

(assert (= (and d!1077575 res!1489759) b!3668621))

(assert (= (and b!3668621 res!1489760) b!3668622))

(declare-fun m!4177001 () Bool)

(assert (=> d!1077575 m!4177001))

(assert (=> d!1077575 m!4176513))

(declare-fun m!4177003 () Bool)

(assert (=> d!1077575 m!4177003))

(declare-fun m!4177005 () Bool)

(assert (=> b!3668620 m!4177005))

(declare-fun m!4177007 () Bool)

(assert (=> b!3668621 m!4177007))

(assert (=> b!3668621 m!4175901))

(declare-fun m!4177009 () Bool)

(assert (=> b!3668621 m!4177009))

(assert (=> b!3667799 d!1077575))

(declare-fun b!3668623 () Bool)

(declare-fun e!2271530 () Bool)

(assert (=> b!3668623 (= e!2271530 (nullable!3679 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun d!1077577 () Bool)

(declare-fun e!2271527 () Bool)

(assert (=> d!1077577 e!2271527))

(declare-fun c!634292 () Bool)

(assert (=> d!1077577 (= c!634292 ((_ is EmptyExpr!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun lt!1277973 () Bool)

(assert (=> d!1077577 (= lt!1277973 e!2271530)))

(declare-fun c!634293 () Bool)

(assert (=> d!1077577 (= c!634293 (isEmpty!22954 lt!1277541))))

(assert (=> d!1077577 (validRegex!4840 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))

(assert (=> d!1077577 (= (matchR!5140 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) lt!1277541) lt!1277973)))

(declare-fun b!3668624 () Bool)

(declare-fun e!2271528 () Bool)

(declare-fun e!2271533 () Bool)

(assert (=> b!3668624 (= e!2271528 e!2271533)))

(declare-fun res!1489765 () Bool)

(assert (=> b!3668624 (=> (not res!1489765) (not e!2271533))))

(assert (=> b!3668624 (= res!1489765 (not lt!1277973))))

(declare-fun b!3668625 () Bool)

(declare-fun res!1489762 () Bool)

(declare-fun e!2271529 () Bool)

(assert (=> b!3668625 (=> (not res!1489762) (not e!2271529))))

(assert (=> b!3668625 (= res!1489762 (isEmpty!22954 (tail!5677 lt!1277541)))))

(declare-fun b!3668626 () Bool)

(assert (=> b!3668626 (= e!2271530 (matchR!5140 (derivativeStep!3228 (regex!5812 (rule!8632 (_1!22410 lt!1277551))) (head!7848 lt!1277541)) (tail!5677 lt!1277541)))))

(declare-fun b!3668627 () Bool)

(assert (=> b!3668627 (= e!2271529 (= (head!7848 lt!1277541) (c!634130 (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun b!3668628 () Bool)

(declare-fun res!1489764 () Bool)

(declare-fun e!2271531 () Bool)

(assert (=> b!3668628 (=> res!1489764 e!2271531)))

(assert (=> b!3668628 (= res!1489764 (not (isEmpty!22954 (tail!5677 lt!1277541))))))

(declare-fun bm!265535 () Bool)

(declare-fun call!265540 () Bool)

(assert (=> bm!265535 (= call!265540 (isEmpty!22954 lt!1277541))))

(declare-fun b!3668629 () Bool)

(assert (=> b!3668629 (= e!2271527 (= lt!1277973 call!265540))))

(declare-fun b!3668630 () Bool)

(declare-fun res!1489767 () Bool)

(assert (=> b!3668630 (=> res!1489767 e!2271528)))

(assert (=> b!3668630 (= res!1489767 e!2271529)))

(declare-fun res!1489768 () Bool)

(assert (=> b!3668630 (=> (not res!1489768) (not e!2271529))))

(assert (=> b!3668630 (= res!1489768 lt!1277973)))

(declare-fun b!3668631 () Bool)

(declare-fun res!1489761 () Bool)

(assert (=> b!3668631 (=> res!1489761 e!2271528)))

(assert (=> b!3668631 (= res!1489761 (not ((_ is ElementMatch!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551))))))))

(declare-fun e!2271532 () Bool)

(assert (=> b!3668631 (= e!2271532 e!2271528)))

(declare-fun b!3668632 () Bool)

(assert (=> b!3668632 (= e!2271533 e!2271531)))

(declare-fun res!1489763 () Bool)

(assert (=> b!3668632 (=> res!1489763 e!2271531)))

(assert (=> b!3668632 (= res!1489763 call!265540)))

(declare-fun b!3668633 () Bool)

(assert (=> b!3668633 (= e!2271527 e!2271532)))

(declare-fun c!634291 () Bool)

(assert (=> b!3668633 (= c!634291 ((_ is EmptyLang!10571) (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))

(declare-fun b!3668634 () Bool)

(declare-fun res!1489766 () Bool)

(assert (=> b!3668634 (=> (not res!1489766) (not e!2271529))))

(assert (=> b!3668634 (= res!1489766 (not call!265540))))

(declare-fun b!3668635 () Bool)

(assert (=> b!3668635 (= e!2271531 (not (= (head!7848 lt!1277541) (c!634130 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))))))))

(declare-fun b!3668636 () Bool)

(assert (=> b!3668636 (= e!2271532 (not lt!1277973))))

(assert (= (and d!1077577 c!634293) b!3668623))

(assert (= (and d!1077577 (not c!634293)) b!3668626))

(assert (= (and d!1077577 c!634292) b!3668629))

(assert (= (and d!1077577 (not c!634292)) b!3668633))

(assert (= (and b!3668633 c!634291) b!3668636))

(assert (= (and b!3668633 (not c!634291)) b!3668631))

(assert (= (and b!3668631 (not res!1489761)) b!3668630))

(assert (= (and b!3668630 res!1489768) b!3668634))

(assert (= (and b!3668634 res!1489766) b!3668625))

(assert (= (and b!3668625 res!1489762) b!3668627))

(assert (= (and b!3668630 (not res!1489767)) b!3668624))

(assert (= (and b!3668624 res!1489765) b!3668632))

(assert (= (and b!3668632 (not res!1489763)) b!3668628))

(assert (= (and b!3668628 (not res!1489764)) b!3668635))

(assert (= (or b!3668629 b!3668632 b!3668634) bm!265535))

(assert (=> b!3668627 m!4176037))

(declare-fun m!4177011 () Bool)

(assert (=> bm!265535 m!4177011))

(assert (=> d!1077577 m!4177011))

(assert (=> d!1077577 m!4176649))

(assert (=> b!3668625 m!4176725))

(assert (=> b!3668625 m!4176725))

(declare-fun m!4177013 () Bool)

(assert (=> b!3668625 m!4177013))

(assert (=> b!3668628 m!4176725))

(assert (=> b!3668628 m!4176725))

(assert (=> b!3668628 m!4177013))

(assert (=> b!3668635 m!4176037))

(assert (=> b!3668623 m!4176701))

(assert (=> b!3668626 m!4176037))

(assert (=> b!3668626 m!4176037))

(declare-fun m!4177015 () Bool)

(assert (=> b!3668626 m!4177015))

(assert (=> b!3668626 m!4176725))

(assert (=> b!3668626 m!4177015))

(assert (=> b!3668626 m!4176725))

(declare-fun m!4177017 () Bool)

(assert (=> b!3668626 m!4177017))

(assert (=> b!3667816 d!1077577))

(declare-fun d!1077579 () Bool)

(assert (=> d!1077579 (not (contains!7691 (usedCharacters!1024 (regex!5812 (rule!8632 (_1!22410 lt!1277551)))) lt!1277590))))

(declare-fun lt!1277974 () Unit!56169)

(assert (=> d!1077579 (= lt!1277974 (choose!21776 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8632 (_1!22410 lt!1277551)) lt!1277590))))

(assert (=> d!1077579 (rulesInvariant!4798 thiss!23823 rules!3307)))

(assert (=> d!1077579 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!340 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8632 (_1!22410 lt!1277551)) lt!1277590) lt!1277974)))

(declare-fun bs!573085 () Bool)

(assert (= bs!573085 d!1077579))

(assert (=> bs!573085 m!4175941))

(assert (=> bs!573085 m!4175941))

(assert (=> bs!573085 m!4176233))

(declare-fun m!4177019 () Bool)

(assert (=> bs!573085 m!4177019))

(assert (=> bs!573085 m!4175881))

(assert (=> b!3667836 d!1077579))

(declare-fun d!1077581 () Bool)

(declare-fun lt!1277975 () Bool)

(assert (=> d!1077581 (= lt!1277975 (select (content!5598 lt!1277552) lt!1277590))))

(declare-fun e!2271535 () Bool)

(assert (=> d!1077581 (= lt!1277975 e!2271535)))

(declare-fun res!1489769 () Bool)

(assert (=> d!1077581 (=> (not res!1489769) (not e!2271535))))

(assert (=> d!1077581 (= res!1489769 ((_ is Cons!38683) lt!1277552))))

(assert (=> d!1077581 (= (contains!7691 lt!1277552 lt!1277590) lt!1277975)))

(declare-fun b!3668637 () Bool)

(declare-fun e!2271534 () Bool)

(assert (=> b!3668637 (= e!2271535 e!2271534)))

(declare-fun res!1489770 () Bool)

(assert (=> b!3668637 (=> res!1489770 e!2271534)))

(assert (=> b!3668637 (= res!1489770 (= (h!44103 lt!1277552) lt!1277590))))

(declare-fun b!3668638 () Bool)

(assert (=> b!3668638 (= e!2271534 (contains!7691 (t!299322 lt!1277552) lt!1277590))))

(assert (= (and d!1077581 res!1489769) b!3668637))

(assert (= (and b!3668637 (not res!1489770)) b!3668638))

(assert (=> d!1077581 m!4176375))

(declare-fun m!4177021 () Bool)

(assert (=> d!1077581 m!4177021))

(declare-fun m!4177023 () Bool)

(assert (=> b!3668638 m!4177023))

(assert (=> b!3667840 d!1077581))

(declare-fun d!1077583 () Bool)

(assert (=> d!1077583 (= (head!7848 suffix!1395) (h!44103 suffix!1395))))

(assert (=> b!3667840 d!1077583))

(declare-fun d!1077585 () Bool)

(declare-fun c!634296 () Bool)

(assert (=> d!1077585 (= c!634296 (or ((_ is EmptyExpr!10571) (regex!5812 rule!403)) ((_ is EmptyLang!10571) (regex!5812 rule!403))))))

(declare-fun e!2271538 () List!38807)

(assert (=> d!1077585 (= (usedCharacters!1024 (regex!5812 rule!403)) e!2271538)))

(declare-fun bm!265536 () Bool)

(declare-fun call!265541 () List!38807)

(declare-fun call!265543 () List!38807)

(assert (=> bm!265536 (= call!265541 call!265543)))

(declare-fun b!3668639 () Bool)

(assert (=> b!3668639 (= e!2271538 Nil!38683)))

(declare-fun b!3668640 () Bool)

(declare-fun e!2271536 () List!38807)

(assert (=> b!3668640 (= e!2271536 (Cons!38683 (c!634130 (regex!5812 rule!403)) Nil!38683))))

(declare-fun b!3668641 () Bool)

(declare-fun c!634295 () Bool)

(assert (=> b!3668641 (= c!634295 ((_ is Star!10571) (regex!5812 rule!403)))))

(declare-fun e!2271539 () List!38807)

(assert (=> b!3668641 (= e!2271536 e!2271539)))

(declare-fun bm!265537 () Bool)

(declare-fun c!634297 () Bool)

(assert (=> bm!265537 (= call!265543 (usedCharacters!1024 (ite c!634295 (reg!10900 (regex!5812 rule!403)) (ite c!634297 (regOne!21655 (regex!5812 rule!403)) (regTwo!21654 (regex!5812 rule!403))))))))

(declare-fun b!3668642 () Bool)

(assert (=> b!3668642 (= e!2271539 call!265543)))

(declare-fun call!265542 () List!38807)

(declare-fun bm!265538 () Bool)

(declare-fun call!265544 () List!38807)

(assert (=> bm!265538 (= call!265544 (++!9628 (ite c!634297 call!265541 call!265542) (ite c!634297 call!265542 call!265541)))))

(declare-fun b!3668643 () Bool)

(declare-fun e!2271537 () List!38807)

(assert (=> b!3668643 (= e!2271539 e!2271537)))

(assert (=> b!3668643 (= c!634297 ((_ is Union!10571) (regex!5812 rule!403)))))

(declare-fun b!3668644 () Bool)

(assert (=> b!3668644 (= e!2271537 call!265544)))

(declare-fun bm!265539 () Bool)

(assert (=> bm!265539 (= call!265542 (usedCharacters!1024 (ite c!634297 (regTwo!21655 (regex!5812 rule!403)) (regOne!21654 (regex!5812 rule!403)))))))

(declare-fun b!3668645 () Bool)

(assert (=> b!3668645 (= e!2271537 call!265544)))

(declare-fun b!3668646 () Bool)

(assert (=> b!3668646 (= e!2271538 e!2271536)))

(declare-fun c!634294 () Bool)

(assert (=> b!3668646 (= c!634294 ((_ is ElementMatch!10571) (regex!5812 rule!403)))))

(assert (= (and d!1077585 c!634296) b!3668639))

(assert (= (and d!1077585 (not c!634296)) b!3668646))

(assert (= (and b!3668646 c!634294) b!3668640))

(assert (= (and b!3668646 (not c!634294)) b!3668641))

(assert (= (and b!3668641 c!634295) b!3668642))

(assert (= (and b!3668641 (not c!634295)) b!3668643))

(assert (= (and b!3668643 c!634297) b!3668644))

(assert (= (and b!3668643 (not c!634297)) b!3668645))

(assert (= (or b!3668644 b!3668645) bm!265536))

(assert (= (or b!3668644 b!3668645) bm!265539))

(assert (= (or b!3668644 b!3668645) bm!265538))

(assert (= (or b!3668642 bm!265536) bm!265537))

(declare-fun m!4177025 () Bool)

(assert (=> bm!265537 m!4177025))

(declare-fun m!4177027 () Bool)

(assert (=> bm!265538 m!4177027))

(declare-fun m!4177029 () Bool)

(assert (=> bm!265539 m!4177029))

(assert (=> b!3667840 d!1077585))

(declare-fun d!1077587 () Bool)

(declare-fun lt!1277976 () Bool)

(assert (=> d!1077587 (= lt!1277976 (select (content!5598 call!265484) lt!1277567))))

(declare-fun e!2271541 () Bool)

(assert (=> d!1077587 (= lt!1277976 e!2271541)))

(declare-fun res!1489771 () Bool)

(assert (=> d!1077587 (=> (not res!1489771) (not e!2271541))))

(assert (=> d!1077587 (= res!1489771 ((_ is Cons!38683) call!265484))))

(assert (=> d!1077587 (= (contains!7691 call!265484 lt!1277567) lt!1277976)))

(declare-fun b!3668647 () Bool)

(declare-fun e!2271540 () Bool)

(assert (=> b!3668647 (= e!2271541 e!2271540)))

(declare-fun res!1489772 () Bool)

(assert (=> b!3668647 (=> res!1489772 e!2271540)))

(assert (=> b!3668647 (= res!1489772 (= (h!44103 call!265484) lt!1277567))))

(declare-fun b!3668648 () Bool)

(assert (=> b!3668648 (= e!2271540 (contains!7691 (t!299322 call!265484) lt!1277567))))

(assert (= (and d!1077587 res!1489771) b!3668647))

(assert (= (and b!3668647 (not res!1489772)) b!3668648))

(declare-fun m!4177031 () Bool)

(assert (=> d!1077587 m!4177031))

(declare-fun m!4177033 () Bool)

(assert (=> d!1077587 m!4177033))

(declare-fun m!4177035 () Bool)

(assert (=> b!3668648 m!4177035))

(assert (=> bm!265474 d!1077587))

(assert (=> bm!265477 d!1077437))

(declare-fun d!1077589 () Bool)

(assert (=> d!1077589 (= (inv!52161 (tag!6598 (h!44105 rules!3307))) (= (mod (str.len (value!186101 (tag!6598 (h!44105 rules!3307)))) 2) 0))))

(assert (=> b!3667800 d!1077589))

(declare-fun d!1077591 () Bool)

(declare-fun res!1489773 () Bool)

(declare-fun e!2271542 () Bool)

(assert (=> d!1077591 (=> (not res!1489773) (not e!2271542))))

(assert (=> d!1077591 (= res!1489773 (semiInverseModEq!2479 (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toValue!8108 (transformation!5812 (h!44105 rules!3307)))))))

(assert (=> d!1077591 (= (inv!52164 (transformation!5812 (h!44105 rules!3307))) e!2271542)))

(declare-fun b!3668649 () Bool)

(assert (=> b!3668649 (= e!2271542 (equivClasses!2378 (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toValue!8108 (transformation!5812 (h!44105 rules!3307)))))))

(assert (= (and d!1077591 res!1489773) b!3668649))

(declare-fun m!4177037 () Bool)

(assert (=> d!1077591 m!4177037))

(declare-fun m!4177039 () Bool)

(assert (=> b!3668649 m!4177039))

(assert (=> b!3667800 d!1077591))

(declare-fun d!1077593 () Bool)

(assert (=> d!1077593 (= (isEmpty!22954 lt!1277578) ((_ is Nil!38683) lt!1277578))))

(assert (=> b!3667818 d!1077593))

(declare-fun b!3668654 () Bool)

(declare-fun e!2271545 () Bool)

(declare-fun tp!1116525 () Bool)

(assert (=> b!3668654 (= e!2271545 (and tp_is_empty!18225 tp!1116525))))

(assert (=> b!3667831 (= tp!1116455 e!2271545)))

(assert (= (and b!3667831 ((_ is Cons!38683) (t!299322 suffix!1395))) b!3668654))

(declare-fun b!3668655 () Bool)

(declare-fun e!2271546 () Bool)

(declare-fun tp!1116526 () Bool)

(assert (=> b!3668655 (= e!2271546 (and tp_is_empty!18225 tp!1116526))))

(assert (=> b!3667824 (= tp!1116465 e!2271546)))

(assert (= (and b!3667824 ((_ is Cons!38683) (originalCharacters!6526 token!511))) b!3668655))

(declare-fun e!2271549 () Bool)

(assert (=> b!3667834 (= tp!1116452 e!2271549)))

(declare-fun b!3668669 () Bool)

(declare-fun tp!1116539 () Bool)

(declare-fun tp!1116537 () Bool)

(assert (=> b!3668669 (= e!2271549 (and tp!1116539 tp!1116537))))

(declare-fun b!3668666 () Bool)

(assert (=> b!3668666 (= e!2271549 tp_is_empty!18225)))

(declare-fun b!3668667 () Bool)

(declare-fun tp!1116538 () Bool)

(declare-fun tp!1116541 () Bool)

(assert (=> b!3668667 (= e!2271549 (and tp!1116538 tp!1116541))))

(declare-fun b!3668668 () Bool)

(declare-fun tp!1116540 () Bool)

(assert (=> b!3668668 (= e!2271549 tp!1116540)))

(assert (= (and b!3667834 ((_ is ElementMatch!10571) (regex!5812 (rule!8632 token!511)))) b!3668666))

(assert (= (and b!3667834 ((_ is Concat!16614) (regex!5812 (rule!8632 token!511)))) b!3668667))

(assert (= (and b!3667834 ((_ is Star!10571) (regex!5812 (rule!8632 token!511)))) b!3668668))

(assert (= (and b!3667834 ((_ is Union!10571) (regex!5812 (rule!8632 token!511)))) b!3668669))

(declare-fun e!2271550 () Bool)

(assert (=> b!3667813 (= tp!1116460 e!2271550)))

(declare-fun b!3668673 () Bool)

(declare-fun tp!1116544 () Bool)

(declare-fun tp!1116542 () Bool)

(assert (=> b!3668673 (= e!2271550 (and tp!1116544 tp!1116542))))

(declare-fun b!3668670 () Bool)

(assert (=> b!3668670 (= e!2271550 tp_is_empty!18225)))

(declare-fun b!3668671 () Bool)

(declare-fun tp!1116543 () Bool)

(declare-fun tp!1116546 () Bool)

(assert (=> b!3668671 (= e!2271550 (and tp!1116543 tp!1116546))))

(declare-fun b!3668672 () Bool)

(declare-fun tp!1116545 () Bool)

(assert (=> b!3668672 (= e!2271550 tp!1116545)))

(assert (= (and b!3667813 ((_ is ElementMatch!10571) (regex!5812 rule!403))) b!3668670))

(assert (= (and b!3667813 ((_ is Concat!16614) (regex!5812 rule!403))) b!3668671))

(assert (= (and b!3667813 ((_ is Star!10571) (regex!5812 rule!403))) b!3668672))

(assert (= (and b!3667813 ((_ is Union!10571) (regex!5812 rule!403))) b!3668673))

(declare-fun e!2271551 () Bool)

(assert (=> b!3667800 (= tp!1116463 e!2271551)))

(declare-fun b!3668677 () Bool)

(declare-fun tp!1116549 () Bool)

(declare-fun tp!1116547 () Bool)

(assert (=> b!3668677 (= e!2271551 (and tp!1116549 tp!1116547))))

(declare-fun b!3668674 () Bool)

(assert (=> b!3668674 (= e!2271551 tp_is_empty!18225)))

(declare-fun b!3668675 () Bool)

(declare-fun tp!1116548 () Bool)

(declare-fun tp!1116551 () Bool)

(assert (=> b!3668675 (= e!2271551 (and tp!1116548 tp!1116551))))

(declare-fun b!3668676 () Bool)

(declare-fun tp!1116550 () Bool)

(assert (=> b!3668676 (= e!2271551 tp!1116550)))

(assert (= (and b!3667800 ((_ is ElementMatch!10571) (regex!5812 (h!44105 rules!3307)))) b!3668674))

(assert (= (and b!3667800 ((_ is Concat!16614) (regex!5812 (h!44105 rules!3307)))) b!3668675))

(assert (= (and b!3667800 ((_ is Star!10571) (regex!5812 (h!44105 rules!3307)))) b!3668676))

(assert (= (and b!3667800 ((_ is Union!10571) (regex!5812 (h!44105 rules!3307)))) b!3668677))

(declare-fun b!3668688 () Bool)

(declare-fun b_free!96893 () Bool)

(declare-fun b_next!97597 () Bool)

(assert (=> b!3668688 (= b_free!96893 (not b_next!97597))))

(declare-fun tb!212377 () Bool)

(declare-fun t!299434 () Bool)

(assert (=> (and b!3668688 (= (toValue!8108 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299434) tb!212377))

(declare-fun result!258482 () Bool)

(assert (= result!258482 result!258390))

(assert (=> d!1077309 t!299434))

(assert (=> d!1077305 t!299434))

(declare-fun t!299436 () Bool)

(declare-fun tb!212379 () Bool)

(assert (=> (and b!3668688 (= (toValue!8108 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299436) tb!212379))

(declare-fun result!258484 () Bool)

(assert (= result!258484 result!258434))

(assert (=> d!1077419 t!299436))

(declare-fun t!299438 () Bool)

(declare-fun tb!212381 () Bool)

(assert (=> (and b!3668688 (= (toValue!8108 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toValue!8108 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299438) tb!212381))

(declare-fun result!258486 () Bool)

(assert (= result!258486 result!258400))

(assert (=> d!1077247 t!299438))

(assert (=> d!1077247 t!299434))

(declare-fun b_and!273055 () Bool)

(declare-fun tp!1116561 () Bool)

(assert (=> b!3668688 (= tp!1116561 (and (=> t!299438 result!258486) (=> t!299436 result!258484) (=> t!299434 result!258482) b_and!273055))))

(declare-fun b_free!96895 () Bool)

(declare-fun b_next!97599 () Bool)

(assert (=> b!3668688 (= b_free!96895 (not b_next!97599))))

(declare-fun tb!212383 () Bool)

(declare-fun t!299440 () Bool)

(assert (=> (and b!3668688 (= (toChars!7967 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299440) tb!212383))

(declare-fun result!258488 () Bool)

(assert (= result!258488 result!258408))

(assert (=> d!1077309 t!299440))

(declare-fun t!299442 () Bool)

(declare-fun tb!212385 () Bool)

(assert (=> (and b!3668688 (= (toChars!7967 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toChars!7967 (transformation!5812 (rule!8632 (_1!22410 lt!1277551))))) t!299442) tb!212385))

(declare-fun result!258490 () Bool)

(assert (= result!258490 result!258426))

(assert (=> d!1077367 t!299442))

(declare-fun t!299444 () Bool)

(declare-fun tb!212387 () Bool)

(assert (=> (and b!3668688 (= (toChars!7967 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toChars!7967 (transformation!5812 (rule!8632 token!511)))) t!299444) tb!212387))

(declare-fun result!258492 () Bool)

(assert (= result!258492 result!258442))

(assert (=> d!1077433 t!299444))

(assert (=> b!3668377 t!299444))

(declare-fun tp!1116563 () Bool)

(declare-fun b_and!273057 () Bool)

(assert (=> b!3668688 (= tp!1116563 (and (=> t!299440 result!258488) (=> t!299442 result!258490) (=> t!299444 result!258492) b_and!273057))))

(declare-fun e!2271560 () Bool)

(assert (=> b!3668688 (= e!2271560 (and tp!1116561 tp!1116563))))

(declare-fun tp!1116560 () Bool)

(declare-fun e!2271563 () Bool)

(declare-fun b!3668687 () Bool)

(assert (=> b!3668687 (= e!2271563 (and tp!1116560 (inv!52161 (tag!6598 (h!44105 (t!299324 rules!3307)))) (inv!52164 (transformation!5812 (h!44105 (t!299324 rules!3307)))) e!2271560))))

(declare-fun b!3668686 () Bool)

(declare-fun e!2271561 () Bool)

(declare-fun tp!1116562 () Bool)

(assert (=> b!3668686 (= e!2271561 (and e!2271563 tp!1116562))))

(assert (=> b!3667833 (= tp!1116456 e!2271561)))

(assert (= b!3668687 b!3668688))

(assert (= b!3668686 b!3668687))

(assert (= (and b!3667833 ((_ is Cons!38685) (t!299324 rules!3307))) b!3668686))

(declare-fun m!4177041 () Bool)

(assert (=> b!3668687 m!4177041))

(declare-fun m!4177043 () Bool)

(assert (=> b!3668687 m!4177043))

(declare-fun e!2271564 () Bool)

(assert (=> b!3667807 (= tp!1116461 e!2271564)))

(declare-fun b!3668692 () Bool)

(declare-fun tp!1116566 () Bool)

(declare-fun tp!1116564 () Bool)

(assert (=> b!3668692 (= e!2271564 (and tp!1116566 tp!1116564))))

(declare-fun b!3668689 () Bool)

(assert (=> b!3668689 (= e!2271564 tp_is_empty!18225)))

(declare-fun b!3668690 () Bool)

(declare-fun tp!1116565 () Bool)

(declare-fun tp!1116568 () Bool)

(assert (=> b!3668690 (= e!2271564 (and tp!1116565 tp!1116568))))

(declare-fun b!3668691 () Bool)

(declare-fun tp!1116567 () Bool)

(assert (=> b!3668691 (= e!2271564 tp!1116567)))

(assert (= (and b!3667807 ((_ is ElementMatch!10571) (regex!5812 anOtherTypeRule!33))) b!3668689))

(assert (= (and b!3667807 ((_ is Concat!16614) (regex!5812 anOtherTypeRule!33))) b!3668690))

(assert (= (and b!3667807 ((_ is Star!10571) (regex!5812 anOtherTypeRule!33))) b!3668691))

(assert (= (and b!3667807 ((_ is Union!10571) (regex!5812 anOtherTypeRule!33))) b!3668692))

(declare-fun b_lambda!108931 () Bool)

(assert (= b_lambda!108921 (or (and b!3667809 b_free!96879) (and b!3667810 b_free!96883 (= (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3667811 b_free!96875 (= (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3667848 b_free!96887 (= (toChars!7967 (transformation!5812 rule!403)) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3668688 b_free!96895 (= (toChars!7967 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) b_lambda!108931)))

(declare-fun b_lambda!108933 () Bool)

(assert (= b_lambda!108919 (or (and b!3667809 b_free!96879) (and b!3667810 b_free!96883 (= (toChars!7967 (transformation!5812 anOtherTypeRule!33)) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3667811 b_free!96875 (= (toChars!7967 (transformation!5812 (h!44105 rules!3307))) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3667848 b_free!96887 (= (toChars!7967 (transformation!5812 rule!403)) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) (and b!3668688 b_free!96895 (= (toChars!7967 (transformation!5812 (h!44105 (t!299324 rules!3307)))) (toChars!7967 (transformation!5812 (rule!8632 token!511))))) b_lambda!108933)))

(check-sat (not b!3668385) (not b!3668338) (not bm!265538) (not b!3668265) (not bm!265534) (not d!1077361) (not tb!212333) (not b_next!97577) (not tb!212309) (not bm!265539) (not d!1077339) (not d!1077495) (not d!1077309) (not d!1077387) b_and!273015 (not b!3668298) (not d!1077427) (not b!3668590) (not d!1077587) b_and!273033 (not bm!265513) (not d!1077367) (not d!1077591) (not b!3668300) (not d!1077243) (not d!1077335) (not b!3668667) (not bm!265517) (not d!1077347) (not b!3668417) (not d!1077457) (not b!3668686) (not bm!265498) (not b!3668593) (not b!3668181) (not d!1077247) (not b!3668617) (not b!3668250) (not b!3668058) (not b!3668599) (not d!1077373) (not d!1077435) (not d!1077471) (not b!3668598) (not d!1077365) (not b!3668675) (not b!3668690) (not d!1077341) (not b!3668307) b_and!273017 (not b!3668340) b_and!273013 (not b!3668673) (not b_lambda!108907) (not b!3668017) (not b!3668592) (not b!3668648) (not b!3668381) (not d!1077425) (not b!3668056) (not b!3668422) (not b_next!97587) (not b_next!97579) (not bm!265535) (not b!3668192) (not d!1077455) (not b!3668638) (not tb!212341) (not b_next!97591) (not b!3668256) b_and!273027 (not d!1077569) (not d!1077319) (not d!1077431) (not b_lambda!108915) (not b!3668024) (not b_next!97589) (not b!3668595) (not b!3668182) (not b!3668065) (not d!1077351) (not b!3668149) (not b_next!97585) (not d!1077571) (not bm!265519) (not b!3668620) (not d!1077507) (not b!3668628) (not b!3668404) (not b!3668692) (not b!3668676) (not d!1077409) (not b!3668301) (not b!3668691) (not d!1077473) (not d!1077331) (not d!1077421) (not bm!265514) (not d!1077393) (not b!3668252) (not b!3668625) (not b_next!97583) (not d!1077337) (not b!3668353) (not bm!265520) (not tb!212317) b_and!273057 (not b!3668672) (not b!3668578) (not b!3668635) (not b!3668057) (not b_next!97581) (not bm!265537) (not d!1077429) (not d!1077497) (not b!3668587) (not b!3668292) b_and!273031 (not b!3668649) (not d!1077423) (not b!3668147) (not b!3668621) (not b!3668146) (not b!3668249) (not b!3668296) (not b_lambda!108909) (not d!1077489) (not b_lambda!108931) (not b!3668105) (not b!3668253) (not b!3668158) (not b!3668418) (not b!3668579) (not tb!212349) (not tb!212301) (not d!1077327) (not b!3668580) (not b!3668023) (not b_lambda!108905) (not d!1077453) (not d!1077245) (not b!3668596) (not d!1077565) (not b!3668654) (not d!1077577) (not b_lambda!108903) (not b!3668614) (not b!3668299) (not b!3668107) (not b!3668378) (not d!1077323) (not b!3668405) (not b_lambda!108911) (not b!3668366) (not b!3668191) (not b!3668383) (not b!3668671) b_and!273029 (not b!3668589) (not b!3668257) (not b!3668379) (not d!1077559) (not b!3668255) (not b!3668420) (not b!3668616) (not b_lambda!108933) b_and!273011 (not bm!265512) (not d!1077483) (not b!3668144) (not d!1077485) (not b_next!97599) (not b!3668416) (not b!3668055) (not d!1077433) (not b!3668594) (not b!3668600) (not b!3668386) (not b!3668337) (not b!3668293) (not d!1077417) (not d!1077371) (not b!3668384) (not bm!265526) (not d!1077563) (not d!1077579) (not d!1077499) (not b!3668623) (not b!3668053) (not b!3668588) (not b!3668393) (not b!3668421) (not b_next!97597) (not d!1077561) (not d!1077575) (not b!3668677) (not d!1077383) (not b!3668148) (not b!3668156) (not b!3668687) (not bm!265511) (not b!3668655) (not d!1077501) (not b!3668627) tp_is_empty!18225 (not b!3668263) (not b!3668586) (not d!1077381) (not b!3668254) b_and!273055 (not b!3668626) (not b!3668184) (not d!1077581) (not bm!265521) (not b!3668089) (not b!3668377) (not b!3668223) (not d!1077379) (not b!3668669) (not d!1077415) (not b!3668294) (not d!1077391) (not d!1077411) (not b!3668230) (not d!1077493) (not b!3668668) (not b!3668357) (not b!3668297) (not b_lambda!108917))
(check-sat (not b_next!97577) b_and!273017 b_and!273013 (not b_next!97589) (not b_next!97585) (not b_next!97583) b_and!273031 b_and!273029 (not b_next!97597) b_and!273055 b_and!273015 b_and!273033 (not b_next!97587) (not b_next!97579) (not b_next!97591) b_and!273027 b_and!273057 (not b_next!97581) (not b_next!97599) b_and!273011)
