; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335694 () Bool)

(assert start!335694)

(declare-fun b!3607216 () Bool)

(declare-fun b_free!93529 () Bool)

(declare-fun b_next!94233 () Bool)

(assert (=> b!3607216 (= b_free!93529 (not b_next!94233))))

(declare-fun tp!1102912 () Bool)

(declare-fun b_and!262715 () Bool)

(assert (=> b!3607216 (= tp!1102912 b_and!262715)))

(declare-fun b_free!93531 () Bool)

(declare-fun b_next!94235 () Bool)

(assert (=> b!3607216 (= b_free!93531 (not b_next!94235))))

(declare-fun tp!1102923 () Bool)

(declare-fun b_and!262717 () Bool)

(assert (=> b!3607216 (= tp!1102923 b_and!262717)))

(declare-fun b!3607193 () Bool)

(declare-fun b_free!93533 () Bool)

(declare-fun b_next!94237 () Bool)

(assert (=> b!3607193 (= b_free!93533 (not b_next!94237))))

(declare-fun tp!1102915 () Bool)

(declare-fun b_and!262719 () Bool)

(assert (=> b!3607193 (= tp!1102915 b_and!262719)))

(declare-fun b_free!93535 () Bool)

(declare-fun b_next!94239 () Bool)

(assert (=> b!3607193 (= b_free!93535 (not b_next!94239))))

(declare-fun tp!1102918 () Bool)

(declare-fun b_and!262721 () Bool)

(assert (=> b!3607193 (= tp!1102918 b_and!262721)))

(declare-fun b!3607198 () Bool)

(declare-fun b_free!93537 () Bool)

(declare-fun b_next!94241 () Bool)

(assert (=> b!3607198 (= b_free!93537 (not b_next!94241))))

(declare-fun tp!1102916 () Bool)

(declare-fun b_and!262723 () Bool)

(assert (=> b!3607198 (= tp!1102916 b_and!262723)))

(declare-fun b_free!93539 () Bool)

(declare-fun b_next!94243 () Bool)

(assert (=> b!3607198 (= b_free!93539 (not b_next!94243))))

(declare-fun tp!1102913 () Bool)

(declare-fun b_and!262725 () Bool)

(assert (=> b!3607198 (= tp!1102913 b_and!262725)))

(declare-fun b!3607220 () Bool)

(declare-fun b_free!93541 () Bool)

(declare-fun b_next!94245 () Bool)

(assert (=> b!3607220 (= b_free!93541 (not b_next!94245))))

(declare-fun tp!1102910 () Bool)

(declare-fun b_and!262727 () Bool)

(assert (=> b!3607220 (= tp!1102910 b_and!262727)))

(declare-fun b_free!93543 () Bool)

(declare-fun b_next!94247 () Bool)

(assert (=> b!3607220 (= b_free!93543 (not b_next!94247))))

(declare-fun tp!1102911 () Bool)

(declare-fun b_and!262729 () Bool)

(assert (=> b!3607220 (= tp!1102911 b_and!262729)))

(declare-fun b!3607183 () Bool)

(declare-datatypes ((Unit!54063 0))(
  ( (Unit!54064) )
))
(declare-fun e!2232311 () Unit!54063)

(declare-fun Unit!54065 () Unit!54063)

(assert (=> b!3607183 (= e!2232311 Unit!54065)))

(declare-fun tp!1102924 () Bool)

(declare-fun e!2232314 () Bool)

(declare-datatypes ((List!38079 0))(
  ( (Nil!37955) (Cons!37955 (h!43375 (_ BitVec 16)) (t!293010 List!38079)) )
))
(declare-datatypes ((TokenValue!5856 0))(
  ( (FloatLiteralValue!11712 (text!41437 List!38079)) (TokenValueExt!5855 (__x!23929 Int)) (Broken!29280 (value!180775 List!38079)) (Object!5979) (End!5856) (Def!5856) (Underscore!5856) (Match!5856) (Else!5856) (Error!5856) (Case!5856) (If!5856) (Extends!5856) (Abstract!5856) (Class!5856) (Val!5856) (DelimiterValue!11712 (del!5916 List!38079)) (KeywordValue!5862 (value!180776 List!38079)) (CommentValue!11712 (value!180777 List!38079)) (WhitespaceValue!11712 (value!180778 List!38079)) (IndentationValue!5856 (value!180779 List!38079)) (String!42613) (Int32!5856) (Broken!29281 (value!180780 List!38079)) (Boolean!5857) (Unit!54066) (OperatorValue!5859 (op!5916 List!38079)) (IdentifierValue!11712 (value!180781 List!38079)) (IdentifierValue!11713 (value!180782 List!38079)) (WhitespaceValue!11713 (value!180783 List!38079)) (True!11712) (False!11712) (Broken!29282 (value!180784 List!38079)) (Broken!29283 (value!180785 List!38079)) (True!11713) (RightBrace!5856) (RightBracket!5856) (Colon!5856) (Null!5856) (Comma!5856) (LeftBracket!5856) (False!11713) (LeftBrace!5856) (ImaginaryLiteralValue!5856 (text!41438 List!38079)) (StringLiteralValue!17568 (value!180786 List!38079)) (EOFValue!5856 (value!180787 List!38079)) (IdentValue!5856 (value!180788 List!38079)) (DelimiterValue!11713 (value!180789 List!38079)) (DedentValue!5856 (value!180790 List!38079)) (NewLineValue!5856 (value!180791 List!38079)) (IntegerValue!17568 (value!180792 (_ BitVec 32)) (text!41439 List!38079)) (IntegerValue!17569 (value!180793 Int) (text!41440 List!38079)) (Times!5856) (Or!5856) (Equal!5856) (Minus!5856) (Broken!29284 (value!180794 List!38079)) (And!5856) (Div!5856) (LessEqual!5856) (Mod!5856) (Concat!16241) (Not!5856) (Plus!5856) (SpaceValue!5856 (value!180795 List!38079)) (IntegerValue!17570 (value!180796 Int) (text!41441 List!38079)) (StringLiteralValue!17569 (text!41442 List!38079)) (FloatLiteralValue!11713 (text!41443 List!38079)) (BytesLiteralValue!5856 (value!180797 List!38079)) (CommentValue!11713 (value!180798 List!38079)) (StringLiteralValue!17570 (value!180799 List!38079)) (ErrorTokenValue!5856 (msg!5917 List!38079)) )
))
(declare-datatypes ((C!20956 0))(
  ( (C!20957 (val!12526 Int)) )
))
(declare-datatypes ((List!38080 0))(
  ( (Nil!37956) (Cons!37956 (h!43376 C!20956) (t!293011 List!38080)) )
))
(declare-datatypes ((Regex!10385 0))(
  ( (ElementMatch!10385 (c!624118 C!20956)) (Concat!16242 (regOne!21282 Regex!10385) (regTwo!21282 Regex!10385)) (EmptyExpr!10385) (Star!10385 (reg!10714 Regex!10385)) (EmptyLang!10385) (Union!10385 (regOne!21283 Regex!10385) (regTwo!21283 Regex!10385)) )
))
(declare-datatypes ((IArray!23131 0))(
  ( (IArray!23132 (innerList!11623 List!38080)) )
))
(declare-datatypes ((Conc!11563 0))(
  ( (Node!11563 (left!29658 Conc!11563) (right!29988 Conc!11563) (csize!23356 Int) (cheight!11774 Int)) (Leaf!17987 (xs!14765 IArray!23131) (csize!23357 Int)) (Empty!11563) )
))
(declare-datatypes ((BalanceConc!22740 0))(
  ( (BalanceConc!22741 (c!624119 Conc!11563)) )
))
(declare-datatypes ((TokenValueInjection!11140 0))(
  ( (TokenValueInjection!11141 (toValue!7910 Int) (toChars!7769 Int)) )
))
(declare-datatypes ((String!42614 0))(
  ( (String!42615 (value!180800 String)) )
))
(declare-datatypes ((Rule!11052 0))(
  ( (Rule!11053 (regex!5626 Regex!10385) (tag!6328 String!42614) (isSeparator!5626 Bool) (transformation!5626 TokenValueInjection!11140)) )
))
(declare-datatypes ((Token!10618 0))(
  ( (Token!10619 (value!180801 TokenValue!5856) (rule!8372 Rule!11052) (size!28931 Int) (originalCharacters!6340 List!38080)) )
))
(declare-fun token!511 () Token!10618)

(declare-fun e!2232322 () Bool)

(declare-fun b!3607184 () Bool)

(declare-fun inv!51321 (String!42614) Bool)

(declare-fun inv!51324 (TokenValueInjection!11140) Bool)

(assert (=> b!3607184 (= e!2232314 (and tp!1102924 (inv!51321 (tag!6328 (rule!8372 token!511))) (inv!51324 (transformation!5626 (rule!8372 token!511))) e!2232322))))

(declare-fun b!3607185 () Bool)

(declare-fun res!1458677 () Bool)

(declare-fun e!2232301 () Bool)

(assert (=> b!3607185 (=> res!1458677 e!2232301)))

(declare-fun anOtherTypeRule!33 () Rule!11052)

(declare-fun lt!1240800 () C!20956)

(declare-fun contains!7315 (List!38080 C!20956) Bool)

(declare-fun usedCharacters!840 (Regex!10385) List!38080)

(assert (=> b!3607185 (= res!1458677 (not (contains!7315 (usedCharacters!840 (regex!5626 anOtherTypeRule!33)) lt!1240800)))))

(declare-fun b!3607186 () Bool)

(declare-fun res!1458685 () Bool)

(assert (=> b!3607186 (=> res!1458685 e!2232301)))

(declare-datatypes ((List!38081 0))(
  ( (Nil!37957) (Cons!37957 (h!43377 Rule!11052) (t!293012 List!38081)) )
))
(declare-fun rules!3307 () List!38081)

(declare-fun sepAndNonSepRulesDisjointChars!1796 (List!38081 List!38081) Bool)

(assert (=> b!3607186 (= res!1458685 (not (sepAndNonSepRulesDisjointChars!1796 rules!3307 rules!3307)))))

(declare-fun b!3607187 () Bool)

(assert (=> b!3607187 false))

(declare-fun lt!1240804 () Unit!54063)

(declare-fun call!260743 () Unit!54063)

(assert (=> b!3607187 (= lt!1240804 call!260743)))

(declare-fun call!260744 () Bool)

(assert (=> b!3607187 (not call!260744)))

(declare-datatypes ((tuple2!37852 0))(
  ( (tuple2!37853 (_1!22060 Token!10618) (_2!22060 List!38080)) )
))
(declare-fun lt!1240789 () tuple2!37852)

(declare-fun lt!1240813 () Unit!54063)

(declare-datatypes ((LexerInterface!5215 0))(
  ( (LexerInterfaceExt!5212 (__x!23930 Int)) (Lexer!5213) )
))
(declare-fun thiss!23823 () LexerInterface!5215)

(declare-fun rule!403 () Rule!11052)

(declare-fun lt!1240798 () C!20956)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!214 (LexerInterface!5215 List!38081 List!38081 Rule!11052 Rule!11052 C!20956) Unit!54063)

(assert (=> b!3607187 (= lt!1240813 (lemmaSepRuleNotContainsCharContainedInANonSepRule!214 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8372 (_1!22060 lt!1240789)) lt!1240798))))

(declare-fun e!2232316 () Unit!54063)

(declare-fun Unit!54067 () Unit!54063)

(assert (=> b!3607187 (= e!2232316 Unit!54067)))

(declare-fun b!3607188 () Bool)

(declare-fun e!2232303 () Bool)

(declare-fun e!2232330 () Bool)

(assert (=> b!3607188 (= e!2232303 e!2232330)))

(declare-fun res!1458682 () Bool)

(assert (=> b!3607188 (=> (not res!1458682) (not e!2232330))))

(declare-fun lt!1240812 () tuple2!37852)

(assert (=> b!3607188 (= res!1458682 (= (_1!22060 lt!1240812) token!511))))

(declare-datatypes ((Option!7882 0))(
  ( (None!7881) (Some!7881 (v!37615 tuple2!37852)) )
))
(declare-fun lt!1240787 () Option!7882)

(declare-fun get!12305 (Option!7882) tuple2!37852)

(assert (=> b!3607188 (= lt!1240812 (get!12305 lt!1240787))))

(declare-fun b!3607189 () Bool)

(declare-fun e!2232304 () Bool)

(assert (=> b!3607189 (= e!2232304 e!2232301)))

(declare-fun res!1458684 () Bool)

(assert (=> b!3607189 (=> res!1458684 e!2232301)))

(declare-fun lt!1240785 () List!38080)

(assert (=> b!3607189 (= res!1458684 (contains!7315 lt!1240785 lt!1240800))))

(declare-fun suffix!1395 () List!38080)

(declare-fun head!7580 (List!38080) C!20956)

(assert (=> b!3607189 (= lt!1240800 (head!7580 suffix!1395))))

(assert (=> b!3607189 (= lt!1240785 (usedCharacters!840 (regex!5626 rule!403)))))

(declare-fun b!3607190 () Bool)

(declare-fun res!1458675 () Bool)

(declare-fun e!2232327 () Bool)

(assert (=> b!3607190 (=> (not res!1458675) (not e!2232327))))

(declare-fun isEmpty!22406 (List!38081) Bool)

(assert (=> b!3607190 (= res!1458675 (not (isEmpty!22406 rules!3307)))))

(declare-fun res!1458673 () Bool)

(assert (=> start!335694 (=> (not res!1458673) (not e!2232327))))

(get-info :version)

(assert (=> start!335694 (= res!1458673 ((_ is Lexer!5213) thiss!23823))))

(assert (=> start!335694 e!2232327))

(declare-fun e!2232331 () Bool)

(assert (=> start!335694 e!2232331))

(declare-fun e!2232320 () Bool)

(assert (=> start!335694 e!2232320))

(assert (=> start!335694 true))

(declare-fun e!2232308 () Bool)

(declare-fun inv!51325 (Token!10618) Bool)

(assert (=> start!335694 (and (inv!51325 token!511) e!2232308)))

(declare-fun e!2232309 () Bool)

(assert (=> start!335694 e!2232309))

(declare-fun e!2232306 () Bool)

(assert (=> start!335694 e!2232306))

(declare-fun b!3607191 () Bool)

(declare-fun res!1458670 () Bool)

(assert (=> b!3607191 (=> (not res!1458670) (not e!2232327))))

(assert (=> b!3607191 (= res!1458670 (not (= (isSeparator!5626 anOtherTypeRule!33) (isSeparator!5626 rule!403))))))

(declare-fun b!3607192 () Bool)

(declare-fun e!2232312 () Bool)

(declare-fun e!2232302 () Bool)

(assert (=> b!3607192 (= e!2232312 e!2232302)))

(declare-fun res!1458679 () Bool)

(assert (=> b!3607192 (=> (not res!1458679) (not e!2232302))))

(declare-fun lt!1240815 () Rule!11052)

(declare-fun matchR!4954 (Regex!10385 List!38080) Bool)

(declare-fun list!13994 (BalanceConc!22740) List!38080)

(declare-fun charsOf!3640 (Token!10618) BalanceConc!22740)

(assert (=> b!3607192 (= res!1458679 (matchR!4954 (regex!5626 lt!1240815) (list!13994 (charsOf!3640 (_1!22060 lt!1240789)))))))

(declare-datatypes ((Option!7883 0))(
  ( (None!7882) (Some!7882 (v!37616 Rule!11052)) )
))
(declare-fun lt!1240786 () Option!7883)

(declare-fun get!12306 (Option!7883) Rule!11052)

(assert (=> b!3607192 (= lt!1240815 (get!12306 lt!1240786))))

(declare-fun e!2232310 () Bool)

(assert (=> b!3607193 (= e!2232310 (and tp!1102915 tp!1102918))))

(declare-fun tp!1102914 () Bool)

(declare-fun b!3607194 () Bool)

(declare-fun e!2232321 () Bool)

(declare-fun e!2232332 () Bool)

(assert (=> b!3607194 (= e!2232332 (and tp!1102914 (inv!51321 (tag!6328 (h!43377 rules!3307))) (inv!51324 (transformation!5626 (h!43377 rules!3307))) e!2232321))))

(declare-fun b!3607195 () Bool)

(assert (=> b!3607195 false))

(declare-fun lt!1240807 () Unit!54063)

(assert (=> b!3607195 (= lt!1240807 call!260743)))

(assert (=> b!3607195 (not call!260744)))

(declare-fun lt!1240795 () Unit!54063)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!332 (LexerInterface!5215 List!38081 List!38081 Rule!11052 Rule!11052 C!20956) Unit!54063)

(assert (=> b!3607195 (= lt!1240795 (lemmaNonSepRuleNotContainsCharContainedInASepRule!332 thiss!23823 rules!3307 rules!3307 (rule!8372 (_1!22060 lt!1240789)) rule!403 lt!1240798))))

(declare-fun Unit!54068 () Unit!54063)

(assert (=> b!3607195 (= e!2232311 Unit!54068)))

(declare-fun tp!1102919 () Bool)

(declare-fun b!3607196 () Bool)

(declare-fun inv!21 (TokenValue!5856) Bool)

(assert (=> b!3607196 (= e!2232308 (and (inv!21 (value!180801 token!511)) e!2232314 tp!1102919))))

(declare-fun lt!1240817 () List!38080)

(declare-fun bm!260737 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!610 (Regex!10385 List!38080 C!20956) Unit!54063)

(assert (=> bm!260737 (= call!260743 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!610 (regex!5626 (rule!8372 (_1!22060 lt!1240789))) lt!1240817 lt!1240798))))

(declare-fun b!3607197 () Bool)

(declare-fun tp!1102917 () Bool)

(assert (=> b!3607197 (= e!2232306 (and tp!1102917 (inv!51321 (tag!6328 anOtherTypeRule!33)) (inv!51324 (transformation!5626 anOtherTypeRule!33)) e!2232310))))

(assert (=> b!3607198 (= e!2232322 (and tp!1102916 tp!1102913))))

(declare-fun b!3607199 () Bool)

(assert (=> b!3607199 (= e!2232302 (= (rule!8372 (_1!22060 lt!1240789)) lt!1240815))))

(declare-fun b!3607200 () Bool)

(assert (=> b!3607200 (= e!2232327 e!2232303)))

(declare-fun res!1458674 () Bool)

(assert (=> b!3607200 (=> (not res!1458674) (not e!2232303))))

(declare-fun isDefined!6114 (Option!7882) Bool)

(assert (=> b!3607200 (= res!1458674 (isDefined!6114 lt!1240787))))

(declare-fun lt!1240806 () List!38080)

(declare-fun maxPrefix!2749 (LexerInterface!5215 List!38081 List!38080) Option!7882)

(assert (=> b!3607200 (= lt!1240787 (maxPrefix!2749 thiss!23823 rules!3307 lt!1240806))))

(declare-fun lt!1240791 () BalanceConc!22740)

(assert (=> b!3607200 (= lt!1240806 (list!13994 lt!1240791))))

(assert (=> b!3607200 (= lt!1240791 (charsOf!3640 token!511))))

(declare-fun b!3607201 () Bool)

(declare-fun e!2232317 () Bool)

(assert (=> b!3607201 (= e!2232301 e!2232317)))

(declare-fun res!1458678 () Bool)

(assert (=> b!3607201 (=> res!1458678 e!2232317)))

(declare-fun lt!1240801 () List!38080)

(declare-fun isPrefix!2989 (List!38080 List!38080) Bool)

(assert (=> b!3607201 (= res!1458678 (not (isPrefix!2989 lt!1240817 lt!1240801)))))

(declare-fun ++!9442 (List!38080 List!38080) List!38080)

(assert (=> b!3607201 (isPrefix!2989 lt!1240817 (++!9442 lt!1240817 (_2!22060 lt!1240789)))))

(declare-fun lt!1240784 () Unit!54063)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1910 (List!38080 List!38080) Unit!54063)

(assert (=> b!3607201 (= lt!1240784 (lemmaConcatTwoListThenFirstIsPrefix!1910 lt!1240817 (_2!22060 lt!1240789)))))

(declare-fun lt!1240793 () BalanceConc!22740)

(assert (=> b!3607201 (= lt!1240817 (list!13994 lt!1240793))))

(assert (=> b!3607201 (= lt!1240793 (charsOf!3640 (_1!22060 lt!1240789)))))

(assert (=> b!3607201 e!2232312))

(declare-fun res!1458669 () Bool)

(assert (=> b!3607201 (=> (not res!1458669) (not e!2232312))))

(declare-fun isDefined!6115 (Option!7883) Bool)

(assert (=> b!3607201 (= res!1458669 (isDefined!6115 lt!1240786))))

(declare-fun getRuleFromTag!1232 (LexerInterface!5215 List!38081 String!42614) Option!7883)

(assert (=> b!3607201 (= lt!1240786 (getRuleFromTag!1232 thiss!23823 rules!3307 (tag!6328 (rule!8372 (_1!22060 lt!1240789)))))))

(declare-fun lt!1240816 () Unit!54063)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1232 (LexerInterface!5215 List!38081 List!38080 Token!10618) Unit!54063)

(assert (=> b!3607201 (= lt!1240816 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1232 thiss!23823 rules!3307 lt!1240801 (_1!22060 lt!1240789)))))

(declare-fun lt!1240794 () Option!7882)

(assert (=> b!3607201 (= lt!1240789 (get!12305 lt!1240794))))

(declare-fun lt!1240797 () Unit!54063)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!895 (LexerInterface!5215 List!38081 List!38080 List!38080) Unit!54063)

(assert (=> b!3607201 (= lt!1240797 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!895 thiss!23823 rules!3307 lt!1240806 suffix!1395))))

(assert (=> b!3607201 (= lt!1240794 (maxPrefix!2749 thiss!23823 rules!3307 lt!1240801))))

(assert (=> b!3607201 (isPrefix!2989 lt!1240806 lt!1240801)))

(declare-fun lt!1240810 () Unit!54063)

(assert (=> b!3607201 (= lt!1240810 (lemmaConcatTwoListThenFirstIsPrefix!1910 lt!1240806 suffix!1395))))

(assert (=> b!3607201 (= lt!1240801 (++!9442 lt!1240806 suffix!1395))))

(declare-fun b!3607202 () Bool)

(declare-fun e!2232326 () Bool)

(declare-fun e!2232315 () Bool)

(assert (=> b!3607202 (= e!2232326 e!2232315)))

(declare-fun res!1458676 () Bool)

(assert (=> b!3607202 (=> res!1458676 e!2232315)))

(assert (=> b!3607202 (= res!1458676 (not (isSeparator!5626 rule!403)))))

(assert (=> b!3607202 (contains!7315 lt!1240817 lt!1240800)))

(declare-fun lt!1240811 () Unit!54063)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!4 (List!38080 List!38080 List!38080 List!38080) Unit!54063)

(assert (=> b!3607202 (= lt!1240811 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!4 lt!1240806 suffix!1395 lt!1240817 lt!1240801))))

(declare-fun b!3607203 () Bool)

(declare-fun res!1458665 () Bool)

(assert (=> b!3607203 (=> (not res!1458665) (not e!2232327))))

(declare-fun contains!7316 (List!38081 Rule!11052) Bool)

(assert (=> b!3607203 (= res!1458665 (contains!7316 rules!3307 rule!403))))

(declare-fun b!3607204 () Bool)

(declare-fun e!2232318 () Unit!54063)

(declare-fun Unit!54069 () Unit!54063)

(assert (=> b!3607204 (= e!2232318 Unit!54069)))

(declare-fun b!3607205 () Bool)

(declare-fun res!1458681 () Bool)

(assert (=> b!3607205 (=> (not res!1458681) (not e!2232330))))

(declare-fun isEmpty!22407 (List!38080) Bool)

(assert (=> b!3607205 (= res!1458681 (isEmpty!22407 (_2!22060 lt!1240812)))))

(declare-fun b!3607206 () Bool)

(declare-fun e!2232323 () Bool)

(assert (=> b!3607206 (= e!2232323 e!2232326)))

(declare-fun res!1458672 () Bool)

(assert (=> b!3607206 (=> res!1458672 e!2232326)))

(declare-fun lt!1240792 () Int)

(declare-fun size!28932 (BalanceConc!22740) Int)

(assert (=> b!3607206 (= res!1458672 (<= lt!1240792 (size!28932 lt!1240791)))))

(declare-fun lt!1240809 () Unit!54063)

(declare-fun e!2232329 () Unit!54063)

(assert (=> b!3607206 (= lt!1240809 e!2232329)))

(declare-fun c!624117 () Bool)

(assert (=> b!3607206 (= c!624117 (isSeparator!5626 rule!403))))

(declare-fun lt!1240818 () Unit!54063)

(assert (=> b!3607206 (= lt!1240818 e!2232318)))

(declare-fun c!624114 () Bool)

(assert (=> b!3607206 (= c!624114 (not (contains!7315 lt!1240785 lt!1240798)))))

(assert (=> b!3607206 (= lt!1240798 (head!7580 lt!1240817))))

(declare-fun b!3607207 () Bool)

(assert (=> b!3607207 (= e!2232329 e!2232311)))

(declare-fun c!624116 () Bool)

(assert (=> b!3607207 (= c!624116 (not (isSeparator!5626 (rule!8372 (_1!22060 lt!1240789)))))))

(declare-fun b!3607208 () Bool)

(declare-fun res!1458663 () Bool)

(assert (=> b!3607208 (=> (not res!1458663) (not e!2232327))))

(declare-fun rulesInvariant!4612 (LexerInterface!5215 List!38081) Bool)

(assert (=> b!3607208 (= res!1458663 (rulesInvariant!4612 thiss!23823 rules!3307))))

(declare-fun e!2232319 () Bool)

(declare-fun b!3607209 () Bool)

(declare-fun tp!1102921 () Bool)

(assert (=> b!3607209 (= e!2232309 (and tp!1102921 (inv!51321 (tag!6328 rule!403)) (inv!51324 (transformation!5626 rule!403)) e!2232319))))

(declare-fun b!3607210 () Bool)

(assert (=> b!3607210 (= e!2232330 (not e!2232304))))

(declare-fun res!1458664 () Bool)

(assert (=> b!3607210 (=> res!1458664 e!2232304)))

(assert (=> b!3607210 (= res!1458664 (not (matchR!4954 (regex!5626 rule!403) lt!1240806)))))

(declare-fun ruleValid!1891 (LexerInterface!5215 Rule!11052) Bool)

(assert (=> b!3607210 (ruleValid!1891 thiss!23823 rule!403)))

(declare-fun lt!1240788 () Unit!54063)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1046 (LexerInterface!5215 Rule!11052 List!38081) Unit!54063)

(assert (=> b!3607210 (= lt!1240788 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1046 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3607211 () Bool)

(declare-fun tp!1102920 () Bool)

(assert (=> b!3607211 (= e!2232331 (and e!2232332 tp!1102920))))

(declare-fun bm!260738 () Bool)

(declare-fun call!260742 () List!38080)

(assert (=> bm!260738 (= call!260744 (contains!7315 call!260742 lt!1240798))))

(declare-fun b!3607212 () Bool)

(declare-fun Unit!54070 () Unit!54063)

(assert (=> b!3607212 (= e!2232318 Unit!54070)))

(declare-fun lt!1240822 () Unit!54063)

(assert (=> b!3607212 (= lt!1240822 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!610 (regex!5626 rule!403) lt!1240806 lt!1240798))))

(assert (=> b!3607212 false))

(declare-fun b!3607213 () Bool)

(assert (=> b!3607213 (= e!2232315 true)))

(declare-fun lt!1240819 () Bool)

(assert (=> b!3607213 (= lt!1240819 (contains!7316 rules!3307 (rule!8372 (_1!22060 lt!1240789))))))

(declare-fun b!3607214 () Bool)

(declare-fun res!1458668 () Bool)

(assert (=> b!3607214 (=> res!1458668 e!2232317)))

(assert (=> b!3607214 (= res!1458668 (not (matchR!4954 (regex!5626 (rule!8372 (_1!22060 lt!1240789))) lt!1240817)))))

(declare-fun b!3607215 () Bool)

(declare-fun tp_is_empty!17853 () Bool)

(declare-fun tp!1102922 () Bool)

(assert (=> b!3607215 (= e!2232320 (and tp_is_empty!17853 tp!1102922))))

(declare-fun bm!260739 () Bool)

(assert (=> bm!260739 (= call!260742 (usedCharacters!840 (regex!5626 (rule!8372 (_1!22060 lt!1240789)))))))

(assert (=> b!3607216 (= e!2232321 (and tp!1102912 tp!1102923))))

(declare-fun b!3607217 () Bool)

(declare-fun res!1458667 () Bool)

(assert (=> b!3607217 (=> (not res!1458667) (not e!2232330))))

(assert (=> b!3607217 (= res!1458667 (= (rule!8372 token!511) rule!403))))

(declare-fun b!3607218 () Bool)

(assert (=> b!3607218 (= e!2232329 e!2232316)))

(declare-fun c!624115 () Bool)

(assert (=> b!3607218 (= c!624115 (isSeparator!5626 (rule!8372 (_1!22060 lt!1240789))))))

(declare-fun b!3607219 () Bool)

(declare-fun e!2232313 () Bool)

(assert (=> b!3607219 (= e!2232313 e!2232323)))

(declare-fun res!1458666 () Bool)

(assert (=> b!3607219 (=> res!1458666 e!2232323)))

(declare-fun lt!1240790 () List!38080)

(declare-fun lt!1240808 () Option!7882)

(assert (=> b!3607219 (= res!1458666 (or (not (= lt!1240790 (_2!22060 lt!1240789))) (not (= lt!1240808 (Some!7881 (tuple2!37853 (_1!22060 lt!1240789) lt!1240790))))))))

(assert (=> b!3607219 (= (_2!22060 lt!1240789) lt!1240790)))

(declare-fun lt!1240805 () Unit!54063)

(declare-fun lemmaSamePrefixThenSameSuffix!1344 (List!38080 List!38080 List!38080 List!38080 List!38080) Unit!54063)

(assert (=> b!3607219 (= lt!1240805 (lemmaSamePrefixThenSameSuffix!1344 lt!1240817 (_2!22060 lt!1240789) lt!1240817 lt!1240790 lt!1240801))))

(declare-fun getSuffix!1564 (List!38080 List!38080) List!38080)

(assert (=> b!3607219 (= lt!1240790 (getSuffix!1564 lt!1240801 lt!1240817))))

(declare-fun lt!1240820 () Int)

(declare-fun lt!1240802 () TokenValue!5856)

(assert (=> b!3607219 (= lt!1240808 (Some!7881 (tuple2!37853 (Token!10619 lt!1240802 (rule!8372 (_1!22060 lt!1240789)) lt!1240820 lt!1240817) (_2!22060 lt!1240789))))))

(declare-fun maxPrefixOneRule!1893 (LexerInterface!5215 Rule!11052 List!38080) Option!7882)

(assert (=> b!3607219 (= lt!1240808 (maxPrefixOneRule!1893 thiss!23823 (rule!8372 (_1!22060 lt!1240789)) lt!1240801))))

(declare-fun size!28933 (List!38080) Int)

(assert (=> b!3607219 (= lt!1240820 (size!28933 lt!1240817))))

(declare-fun apply!9132 (TokenValueInjection!11140 BalanceConc!22740) TokenValue!5856)

(declare-fun seqFromList!4179 (List!38080) BalanceConc!22740)

(assert (=> b!3607219 (= lt!1240802 (apply!9132 (transformation!5626 (rule!8372 (_1!22060 lt!1240789))) (seqFromList!4179 lt!1240817)))))

(declare-fun lt!1240821 () Unit!54063)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!965 (LexerInterface!5215 List!38081 List!38080 List!38080 List!38080 Rule!11052) Unit!54063)

(assert (=> b!3607219 (= lt!1240821 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!965 thiss!23823 rules!3307 lt!1240817 lt!1240801 (_2!22060 lt!1240789) (rule!8372 (_1!22060 lt!1240789))))))

(assert (=> b!3607220 (= e!2232319 (and tp!1102910 tp!1102911))))

(declare-fun b!3607221 () Bool)

(assert (=> b!3607221 (= e!2232317 e!2232313)))

(declare-fun res!1458671 () Bool)

(assert (=> b!3607221 (=> res!1458671 e!2232313)))

(declare-fun lt!1240803 () TokenValue!5856)

(assert (=> b!3607221 (= res!1458671 (not (= lt!1240794 (Some!7881 (tuple2!37853 (Token!10619 lt!1240803 (rule!8372 (_1!22060 lt!1240789)) lt!1240792 lt!1240817) (_2!22060 lt!1240789))))))))

(assert (=> b!3607221 (= lt!1240792 (size!28932 lt!1240793))))

(assert (=> b!3607221 (= lt!1240803 (apply!9132 (transformation!5626 (rule!8372 (_1!22060 lt!1240789))) lt!1240793))))

(declare-fun lt!1240799 () Unit!54063)

(declare-fun lemmaCharactersSize!679 (Token!10618) Unit!54063)

(assert (=> b!3607221 (= lt!1240799 (lemmaCharactersSize!679 (_1!22060 lt!1240789)))))

(declare-fun lt!1240814 () Unit!54063)

(declare-fun lemmaEqSameImage!817 (TokenValueInjection!11140 BalanceConc!22740 BalanceConc!22740) Unit!54063)

(assert (=> b!3607221 (= lt!1240814 (lemmaEqSameImage!817 (transformation!5626 (rule!8372 (_1!22060 lt!1240789))) lt!1240793 (seqFromList!4179 (originalCharacters!6340 (_1!22060 lt!1240789)))))))

(declare-fun lt!1240796 () Unit!54063)

(declare-fun lemmaSemiInverse!1383 (TokenValueInjection!11140 BalanceConc!22740) Unit!54063)

(assert (=> b!3607221 (= lt!1240796 (lemmaSemiInverse!1383 (transformation!5626 (rule!8372 (_1!22060 lt!1240789))) lt!1240793))))

(declare-fun b!3607222 () Bool)

(declare-fun res!1458680 () Bool)

(assert (=> b!3607222 (=> res!1458680 e!2232304)))

(assert (=> b!3607222 (= res!1458680 (isEmpty!22407 suffix!1395))))

(declare-fun b!3607223 () Bool)

(declare-fun Unit!54071 () Unit!54063)

(assert (=> b!3607223 (= e!2232316 Unit!54071)))

(declare-fun b!3607224 () Bool)

(declare-fun res!1458683 () Bool)

(assert (=> b!3607224 (=> (not res!1458683) (not e!2232327))))

(assert (=> b!3607224 (= res!1458683 (contains!7316 rules!3307 anOtherTypeRule!33))))

(assert (= (and start!335694 res!1458673) b!3607190))

(assert (= (and b!3607190 res!1458675) b!3607208))

(assert (= (and b!3607208 res!1458663) b!3607203))

(assert (= (and b!3607203 res!1458665) b!3607224))

(assert (= (and b!3607224 res!1458683) b!3607191))

(assert (= (and b!3607191 res!1458670) b!3607200))

(assert (= (and b!3607200 res!1458674) b!3607188))

(assert (= (and b!3607188 res!1458682) b!3607205))

(assert (= (and b!3607205 res!1458681) b!3607217))

(assert (= (and b!3607217 res!1458667) b!3607210))

(assert (= (and b!3607210 (not res!1458664)) b!3607222))

(assert (= (and b!3607222 (not res!1458680)) b!3607189))

(assert (= (and b!3607189 (not res!1458684)) b!3607185))

(assert (= (and b!3607185 (not res!1458677)) b!3607186))

(assert (= (and b!3607186 (not res!1458685)) b!3607201))

(assert (= (and b!3607201 res!1458669) b!3607192))

(assert (= (and b!3607192 res!1458679) b!3607199))

(assert (= (and b!3607201 (not res!1458678)) b!3607214))

(assert (= (and b!3607214 (not res!1458668)) b!3607221))

(assert (= (and b!3607221 (not res!1458671)) b!3607219))

(assert (= (and b!3607219 (not res!1458666)) b!3607206))

(assert (= (and b!3607206 c!624114) b!3607212))

(assert (= (and b!3607206 (not c!624114)) b!3607204))

(assert (= (and b!3607206 c!624117) b!3607207))

(assert (= (and b!3607206 (not c!624117)) b!3607218))

(assert (= (and b!3607207 c!624116) b!3607195))

(assert (= (and b!3607207 (not c!624116)) b!3607183))

(assert (= (and b!3607218 c!624115) b!3607187))

(assert (= (and b!3607218 (not c!624115)) b!3607223))

(assert (= (or b!3607195 b!3607187) bm!260737))

(assert (= (or b!3607195 b!3607187) bm!260739))

(assert (= (or b!3607195 b!3607187) bm!260738))

(assert (= (and b!3607206 (not res!1458672)) b!3607202))

(assert (= (and b!3607202 (not res!1458676)) b!3607213))

(assert (= b!3607194 b!3607216))

(assert (= b!3607211 b!3607194))

(assert (= (and start!335694 ((_ is Cons!37957) rules!3307)) b!3607211))

(assert (= (and start!335694 ((_ is Cons!37956) suffix!1395)) b!3607215))

(assert (= b!3607184 b!3607198))

(assert (= b!3607196 b!3607184))

(assert (= start!335694 b!3607196))

(assert (= b!3607209 b!3607220))

(assert (= start!335694 b!3607209))

(assert (= b!3607197 b!3607193))

(assert (= start!335694 b!3607197))

(declare-fun m!4104165 () Bool)

(assert (=> b!3607208 m!4104165))

(declare-fun m!4104167 () Bool)

(assert (=> bm!260739 m!4104167))

(declare-fun m!4104169 () Bool)

(assert (=> b!3607224 m!4104169))

(declare-fun m!4104171 () Bool)

(assert (=> b!3607190 m!4104171))

(declare-fun m!4104173 () Bool)

(assert (=> b!3607197 m!4104173))

(declare-fun m!4104175 () Bool)

(assert (=> b!3607197 m!4104175))

(declare-fun m!4104177 () Bool)

(assert (=> b!3607219 m!4104177))

(declare-fun m!4104179 () Bool)

(assert (=> b!3607219 m!4104179))

(declare-fun m!4104181 () Bool)

(assert (=> b!3607219 m!4104181))

(declare-fun m!4104183 () Bool)

(assert (=> b!3607219 m!4104183))

(declare-fun m!4104185 () Bool)

(assert (=> b!3607219 m!4104185))

(declare-fun m!4104187 () Bool)

(assert (=> b!3607219 m!4104187))

(assert (=> b!3607219 m!4104183))

(declare-fun m!4104189 () Bool)

(assert (=> b!3607219 m!4104189))

(declare-fun m!4104191 () Bool)

(assert (=> b!3607196 m!4104191))

(declare-fun m!4104193 () Bool)

(assert (=> b!3607189 m!4104193))

(declare-fun m!4104195 () Bool)

(assert (=> b!3607189 m!4104195))

(declare-fun m!4104197 () Bool)

(assert (=> b!3607189 m!4104197))

(declare-fun m!4104199 () Bool)

(assert (=> start!335694 m!4104199))

(declare-fun m!4104201 () Bool)

(assert (=> b!3607222 m!4104201))

(declare-fun m!4104203 () Bool)

(assert (=> b!3607201 m!4104203))

(declare-fun m!4104205 () Bool)

(assert (=> b!3607201 m!4104205))

(declare-fun m!4104207 () Bool)

(assert (=> b!3607201 m!4104207))

(declare-fun m!4104209 () Bool)

(assert (=> b!3607201 m!4104209))

(declare-fun m!4104211 () Bool)

(assert (=> b!3607201 m!4104211))

(declare-fun m!4104213 () Bool)

(assert (=> b!3607201 m!4104213))

(declare-fun m!4104215 () Bool)

(assert (=> b!3607201 m!4104215))

(declare-fun m!4104217 () Bool)

(assert (=> b!3607201 m!4104217))

(declare-fun m!4104219 () Bool)

(assert (=> b!3607201 m!4104219))

(declare-fun m!4104221 () Bool)

(assert (=> b!3607201 m!4104221))

(assert (=> b!3607201 m!4104211))

(declare-fun m!4104223 () Bool)

(assert (=> b!3607201 m!4104223))

(declare-fun m!4104225 () Bool)

(assert (=> b!3607201 m!4104225))

(declare-fun m!4104227 () Bool)

(assert (=> b!3607201 m!4104227))

(declare-fun m!4104229 () Bool)

(assert (=> b!3607201 m!4104229))

(declare-fun m!4104231 () Bool)

(assert (=> b!3607201 m!4104231))

(declare-fun m!4104233 () Bool)

(assert (=> b!3607187 m!4104233))

(declare-fun m!4104235 () Bool)

(assert (=> b!3607194 m!4104235))

(declare-fun m!4104237 () Bool)

(assert (=> b!3607194 m!4104237))

(declare-fun m!4104239 () Bool)

(assert (=> b!3607214 m!4104239))

(declare-fun m!4104241 () Bool)

(assert (=> b!3607202 m!4104241))

(declare-fun m!4104243 () Bool)

(assert (=> b!3607202 m!4104243))

(assert (=> b!3607192 m!4104219))

(assert (=> b!3607192 m!4104219))

(declare-fun m!4104245 () Bool)

(assert (=> b!3607192 m!4104245))

(assert (=> b!3607192 m!4104245))

(declare-fun m!4104247 () Bool)

(assert (=> b!3607192 m!4104247))

(declare-fun m!4104249 () Bool)

(assert (=> b!3607192 m!4104249))

(declare-fun m!4104251 () Bool)

(assert (=> bm!260737 m!4104251))

(declare-fun m!4104253 () Bool)

(assert (=> b!3607184 m!4104253))

(declare-fun m!4104255 () Bool)

(assert (=> b!3607184 m!4104255))

(declare-fun m!4104257 () Bool)

(assert (=> b!3607186 m!4104257))

(declare-fun m!4104259 () Bool)

(assert (=> b!3607185 m!4104259))

(assert (=> b!3607185 m!4104259))

(declare-fun m!4104261 () Bool)

(assert (=> b!3607185 m!4104261))

(declare-fun m!4104263 () Bool)

(assert (=> b!3607205 m!4104263))

(declare-fun m!4104265 () Bool)

(assert (=> b!3607206 m!4104265))

(declare-fun m!4104267 () Bool)

(assert (=> b!3607206 m!4104267))

(declare-fun m!4104269 () Bool)

(assert (=> b!3607206 m!4104269))

(declare-fun m!4104271 () Bool)

(assert (=> b!3607200 m!4104271))

(declare-fun m!4104273 () Bool)

(assert (=> b!3607200 m!4104273))

(declare-fun m!4104275 () Bool)

(assert (=> b!3607200 m!4104275))

(declare-fun m!4104277 () Bool)

(assert (=> b!3607200 m!4104277))

(declare-fun m!4104279 () Bool)

(assert (=> bm!260738 m!4104279))

(declare-fun m!4104281 () Bool)

(assert (=> b!3607188 m!4104281))

(declare-fun m!4104283 () Bool)

(assert (=> b!3607209 m!4104283))

(declare-fun m!4104285 () Bool)

(assert (=> b!3607209 m!4104285))

(declare-fun m!4104287 () Bool)

(assert (=> b!3607210 m!4104287))

(declare-fun m!4104289 () Bool)

(assert (=> b!3607210 m!4104289))

(declare-fun m!4104291 () Bool)

(assert (=> b!3607210 m!4104291))

(declare-fun m!4104293 () Bool)

(assert (=> b!3607213 m!4104293))

(declare-fun m!4104295 () Bool)

(assert (=> b!3607203 m!4104295))

(declare-fun m!4104297 () Bool)

(assert (=> b!3607221 m!4104297))

(declare-fun m!4104299 () Bool)

(assert (=> b!3607221 m!4104299))

(declare-fun m!4104301 () Bool)

(assert (=> b!3607221 m!4104301))

(declare-fun m!4104303 () Bool)

(assert (=> b!3607221 m!4104303))

(declare-fun m!4104305 () Bool)

(assert (=> b!3607221 m!4104305))

(declare-fun m!4104307 () Bool)

(assert (=> b!3607221 m!4104307))

(assert (=> b!3607221 m!4104301))

(declare-fun m!4104309 () Bool)

(assert (=> b!3607212 m!4104309))

(declare-fun m!4104311 () Bool)

(assert (=> b!3607195 m!4104311))

(check-sat (not b_next!94247) (not b!3607192) (not b!3607196) (not start!335694) (not b!3607206) (not b!3607200) (not b!3607210) (not b_next!94245) (not b!3607184) (not b!3607214) (not b!3607205) (not b!3607190) (not b_next!94235) (not b_next!94239) (not b!3607208) (not b!3607197) (not b!3607212) b_and!262725 (not b!3607201) (not bm!260738) b_and!262717 (not b_next!94233) b_and!262715 b_and!262727 (not b!3607222) (not b!3607195) tp_is_empty!17853 (not b_next!94237) (not b!3607185) (not b!3607203) (not b_next!94241) b_and!262721 (not b!3607202) (not b!3607213) (not b!3607189) (not b!3607211) (not b!3607194) b_and!262729 b_and!262719 (not b!3607186) (not b!3607215) (not b!3607224) b_and!262723 (not b_next!94243) (not b!3607188) (not b!3607209) (not b!3607187) (not b!3607221) (not bm!260737) (not bm!260739) (not b!3607219))
(check-sat (not b_next!94247) b_and!262725 (not b_next!94237) b_and!262723 (not b_next!94243) (not b_next!94245) (not b_next!94235) (not b_next!94239) b_and!262717 (not b_next!94233) b_and!262715 b_and!262727 (not b_next!94241) b_and!262721 b_and!262719 b_and!262729)
