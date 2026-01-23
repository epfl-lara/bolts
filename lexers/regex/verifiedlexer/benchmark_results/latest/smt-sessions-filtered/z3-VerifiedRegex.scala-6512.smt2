; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343406 () Bool)

(assert start!343406)

(declare-fun b!3665744 () Bool)

(declare-fun b_free!96737 () Bool)

(declare-fun b_next!97441 () Bool)

(assert (=> b!3665744 (= b_free!96737 (not b_next!97441))))

(declare-fun tp!1115991 () Bool)

(declare-fun b_and!272611 () Bool)

(assert (=> b!3665744 (= tp!1115991 b_and!272611)))

(declare-fun b_free!96739 () Bool)

(declare-fun b_next!97443 () Bool)

(assert (=> b!3665744 (= b_free!96739 (not b_next!97443))))

(declare-fun tp!1115998 () Bool)

(declare-fun b_and!272613 () Bool)

(assert (=> b!3665744 (= tp!1115998 b_and!272613)))

(declare-fun b!3665759 () Bool)

(declare-fun b_free!96741 () Bool)

(declare-fun b_next!97445 () Bool)

(assert (=> b!3665759 (= b_free!96741 (not b_next!97445))))

(declare-fun tp!1116004 () Bool)

(declare-fun b_and!272615 () Bool)

(assert (=> b!3665759 (= tp!1116004 b_and!272615)))

(declare-fun b_free!96743 () Bool)

(declare-fun b_next!97447 () Bool)

(assert (=> b!3665759 (= b_free!96743 (not b_next!97447))))

(declare-fun tp!1115995 () Bool)

(declare-fun b_and!272617 () Bool)

(assert (=> b!3665759 (= tp!1115995 b_and!272617)))

(declare-fun b!3665758 () Bool)

(declare-fun b_free!96745 () Bool)

(declare-fun b_next!97449 () Bool)

(assert (=> b!3665758 (= b_free!96745 (not b_next!97449))))

(declare-fun tp!1116003 () Bool)

(declare-fun b_and!272619 () Bool)

(assert (=> b!3665758 (= tp!1116003 b_and!272619)))

(declare-fun b_free!96747 () Bool)

(declare-fun b_next!97451 () Bool)

(assert (=> b!3665758 (= b_free!96747 (not b_next!97451))))

(declare-fun tp!1116002 () Bool)

(declare-fun b_and!272621 () Bool)

(assert (=> b!3665758 (= tp!1116002 b_and!272621)))

(declare-fun b!3665768 () Bool)

(declare-fun b_free!96749 () Bool)

(declare-fun b_next!97453 () Bool)

(assert (=> b!3665768 (= b_free!96749 (not b_next!97453))))

(declare-fun tp!1115994 () Bool)

(declare-fun b_and!272623 () Bool)

(assert (=> b!3665768 (= tp!1115994 b_and!272623)))

(declare-fun b_free!96751 () Bool)

(declare-fun b_next!97455 () Bool)

(assert (=> b!3665768 (= b_free!96751 (not b_next!97455))))

(declare-fun tp!1115992 () Bool)

(declare-fun b_and!272625 () Bool)

(assert (=> b!3665768 (= tp!1115992 b_and!272625)))

(declare-fun tp!1116001 () Bool)

(declare-fun e!2269690 () Bool)

(declare-datatypes ((List!38779 0))(
  ( (Nil!38655) (Cons!38655 (h!44075 (_ BitVec 16)) (t!299174 List!38779)) )
))
(declare-datatypes ((TokenValue!6034 0))(
  ( (FloatLiteralValue!12068 (text!42683 List!38779)) (TokenValueExt!6033 (__x!24285 Int)) (Broken!30170 (value!185848 List!38779)) (Object!6157) (End!6034) (Def!6034) (Underscore!6034) (Match!6034) (Else!6034) (Error!6034) (Case!6034) (If!6034) (Extends!6034) (Abstract!6034) (Class!6034) (Val!6034) (DelimiterValue!12068 (del!6094 List!38779)) (KeywordValue!6040 (value!185849 List!38779)) (CommentValue!12068 (value!185850 List!38779)) (WhitespaceValue!12068 (value!185851 List!38779)) (IndentationValue!6034 (value!185852 List!38779)) (String!43503) (Int32!6034) (Broken!30171 (value!185853 List!38779)) (Boolean!6035) (Unit!56036) (OperatorValue!6037 (op!6094 List!38779)) (IdentifierValue!12068 (value!185854 List!38779)) (IdentifierValue!12069 (value!185855 List!38779)) (WhitespaceValue!12069 (value!185856 List!38779)) (True!12068) (False!12068) (Broken!30172 (value!185857 List!38779)) (Broken!30173 (value!185858 List!38779)) (True!12069) (RightBrace!6034) (RightBracket!6034) (Colon!6034) (Null!6034) (Comma!6034) (LeftBracket!6034) (False!12069) (LeftBrace!6034) (ImaginaryLiteralValue!6034 (text!42684 List!38779)) (StringLiteralValue!18102 (value!185859 List!38779)) (EOFValue!6034 (value!185860 List!38779)) (IdentValue!6034 (value!185861 List!38779)) (DelimiterValue!12069 (value!185862 List!38779)) (DedentValue!6034 (value!185863 List!38779)) (NewLineValue!6034 (value!185864 List!38779)) (IntegerValue!18102 (value!185865 (_ BitVec 32)) (text!42685 List!38779)) (IntegerValue!18103 (value!185866 Int) (text!42686 List!38779)) (Times!6034) (Or!6034) (Equal!6034) (Minus!6034) (Broken!30174 (value!185867 List!38779)) (And!6034) (Div!6034) (LessEqual!6034) (Mod!6034) (Concat!16597) (Not!6034) (Plus!6034) (SpaceValue!6034 (value!185868 List!38779)) (IntegerValue!18104 (value!185869 Int) (text!42687 List!38779)) (StringLiteralValue!18103 (text!42688 List!38779)) (FloatLiteralValue!12069 (text!42689 List!38779)) (BytesLiteralValue!6034 (value!185870 List!38779)) (CommentValue!12069 (value!185871 List!38779)) (StringLiteralValue!18104 (value!185872 List!38779)) (ErrorTokenValue!6034 (msg!6095 List!38779)) )
))
(declare-datatypes ((C!21312 0))(
  ( (C!21313 (val!12704 Int)) )
))
(declare-datatypes ((Regex!10563 0))(
  ( (ElementMatch!10563 (c!633746 C!21312)) (Concat!16598 (regOne!21638 Regex!10563) (regTwo!21638 Regex!10563)) (EmptyExpr!10563) (Star!10563 (reg!10892 Regex!10563)) (EmptyLang!10563) (Union!10563 (regOne!21639 Regex!10563) (regTwo!21639 Regex!10563)) )
))
(declare-datatypes ((String!43504 0))(
  ( (String!43505 (value!185873 String)) )
))
(declare-datatypes ((List!38780 0))(
  ( (Nil!38656) (Cons!38656 (h!44076 C!21312) (t!299175 List!38780)) )
))
(declare-datatypes ((IArray!23651 0))(
  ( (IArray!23652 (innerList!11883 List!38780)) )
))
(declare-datatypes ((Conc!11823 0))(
  ( (Node!11823 (left!30171 Conc!11823) (right!30501 Conc!11823) (csize!23876 Int) (cheight!12034 Int)) (Leaf!18336 (xs!15025 IArray!23651) (csize!23877 Int)) (Empty!11823) )
))
(declare-datatypes ((BalanceConc!23260 0))(
  ( (BalanceConc!23261 (c!633747 Conc!11823)) )
))
(declare-datatypes ((TokenValueInjection!11496 0))(
  ( (TokenValueInjection!11497 (toValue!8100 Int) (toChars!7959 Int)) )
))
(declare-datatypes ((Rule!11408 0))(
  ( (Rule!11409 (regex!5804 Regex!10563) (tag!6588 String!43504) (isSeparator!5804 Bool) (transformation!5804 TokenValueInjection!11496)) )
))
(declare-datatypes ((Token!10974 0))(
  ( (Token!10975 (value!185874 TokenValue!6034) (rule!8622 Rule!11408) (size!29537 Int) (originalCharacters!6518 List!38780)) )
))
(declare-fun token!511 () Token!10974)

(declare-fun e!2269705 () Bool)

(declare-fun b!3665737 () Bool)

(declare-fun inv!52129 (String!43504) Bool)

(declare-fun inv!52132 (TokenValueInjection!11496) Bool)

(assert (=> b!3665737 (= e!2269705 (and tp!1116001 (inv!52129 (tag!6588 (rule!8622 token!511))) (inv!52132 (transformation!5804 (rule!8622 token!511))) e!2269690))))

(declare-fun b!3665738 () Bool)

(assert (=> b!3665738 false))

(declare-datatypes ((Unit!56037 0))(
  ( (Unit!56038) )
))
(declare-fun lt!1275949 () Unit!56037)

(declare-fun call!265280 () Unit!56037)

(assert (=> b!3665738 (= lt!1275949 call!265280)))

(declare-fun call!265278 () Bool)

(assert (=> b!3665738 (not call!265278)))

(declare-fun lt!1275924 () Unit!56037)

(declare-datatypes ((List!38781 0))(
  ( (Nil!38657) (Cons!38657 (h!44077 Rule!11408) (t!299176 List!38781)) )
))
(declare-fun rules!3307 () List!38781)

(declare-datatypes ((LexerInterface!5393 0))(
  ( (LexerInterfaceExt!5390 (__x!24286 Int)) (Lexer!5391) )
))
(declare-fun thiss!23823 () LexerInterface!5393)

(declare-fun lt!1275964 () C!21312)

(declare-datatypes ((tuple2!38528 0))(
  ( (tuple2!38529 (_1!22398 Token!10974) (_2!22398 List!38780)) )
))
(declare-fun lt!1275956 () tuple2!38528)

(declare-fun anOtherTypeRule!33 () Rule!11408)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!450 (LexerInterface!5393 List!38781 List!38781 Rule!11408 Rule!11408 C!21312) Unit!56037)

(assert (=> b!3665738 (= lt!1275924 (lemmaNonSepRuleNotContainsCharContainedInASepRule!450 thiss!23823 rules!3307 rules!3307 (rule!8622 (_1!22398 lt!1275956)) anOtherTypeRule!33 lt!1275964))))

(declare-fun e!2269697 () Unit!56037)

(declare-fun Unit!56039 () Unit!56037)

(assert (=> b!3665738 (= e!2269697 Unit!56039)))

(declare-fun b!3665739 () Bool)

(declare-fun e!2269692 () Bool)

(declare-fun e!2269711 () Bool)

(assert (=> b!3665739 (= e!2269692 e!2269711)))

(declare-fun res!1488351 () Bool)

(assert (=> b!3665739 (=> res!1488351 e!2269711)))

(declare-fun lt!1275959 () List!38780)

(declare-fun contains!7675 (List!38780 C!21312) Bool)

(assert (=> b!3665739 (= res!1488351 (contains!7675 lt!1275959 lt!1275964))))

(declare-fun suffix!1395 () List!38780)

(declare-fun head!7838 (List!38780) C!21312)

(assert (=> b!3665739 (= lt!1275964 (head!7838 suffix!1395))))

(declare-fun rule!403 () Rule!11408)

(declare-fun usedCharacters!1016 (Regex!10563) List!38780)

(assert (=> b!3665739 (= lt!1275959 (usedCharacters!1016 (regex!5804 rule!403)))))

(declare-fun bm!265270 () Bool)

(declare-fun call!265277 () List!38780)

(assert (=> bm!265270 (= call!265278 (contains!7675 call!265277 lt!1275964))))

(declare-fun b!3665740 () Bool)

(declare-fun res!1488369 () Bool)

(declare-fun e!2269693 () Bool)

(assert (=> b!3665740 (=> (not res!1488369) (not e!2269693))))

(assert (=> b!3665740 (= res!1488369 (not (= (isSeparator!5804 anOtherTypeRule!33) (isSeparator!5804 rule!403))))))

(declare-fun b!3665741 () Bool)

(declare-fun e!2269704 () Unit!56037)

(declare-fun e!2269699 () Unit!56037)

(assert (=> b!3665741 (= e!2269704 e!2269699)))

(declare-fun c!633743 () Bool)

(assert (=> b!3665741 (= c!633743 (not (isSeparator!5804 (rule!8622 (_1!22398 lt!1275956)))))))

(declare-fun b!3665742 () Bool)

(declare-fun e!2269713 () Unit!56037)

(assert (=> b!3665742 (= e!2269704 e!2269713)))

(declare-fun c!633740 () Bool)

(assert (=> b!3665742 (= c!633740 (isSeparator!5804 (rule!8622 (_1!22398 lt!1275956))))))

(declare-fun b!3665743 () Bool)

(declare-fun Unit!56040 () Unit!56037)

(assert (=> b!3665743 (= e!2269699 Unit!56040)))

(assert (=> b!3665744 (= e!2269690 (and tp!1115991 tp!1115998))))

(declare-fun b!3665745 () Bool)

(declare-fun e!2269686 () Bool)

(assert (=> b!3665745 (= e!2269686 (not e!2269692))))

(declare-fun res!1488358 () Bool)

(assert (=> b!3665745 (=> res!1488358 e!2269692)))

(declare-fun lt!1275966 () List!38780)

(declare-fun matchR!5132 (Regex!10563 List!38780) Bool)

(assert (=> b!3665745 (= res!1488358 (not (matchR!5132 (regex!5804 rule!403) lt!1275966)))))

(declare-fun ruleValid!2068 (LexerInterface!5393 Rule!11408) Bool)

(assert (=> b!3665745 (ruleValid!2068 thiss!23823 rule!403)))

(declare-fun lt!1275951 () Unit!56037)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1222 (LexerInterface!5393 Rule!11408 List!38781) Unit!56037)

(assert (=> b!3665745 (= lt!1275951 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1222 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3665746 () Bool)

(declare-fun e!2269685 () Bool)

(declare-fun lt!1275928 () Rule!11408)

(assert (=> b!3665746 (= e!2269685 (= (rule!8622 (_1!22398 lt!1275956)) lt!1275928))))

(declare-fun b!3665747 () Bool)

(declare-fun e!2269682 () Bool)

(declare-fun e!2269707 () Bool)

(assert (=> b!3665747 (= e!2269682 e!2269707)))

(declare-fun res!1488355 () Bool)

(assert (=> b!3665747 (=> res!1488355 e!2269707)))

(declare-datatypes ((Option!8236 0))(
  ( (None!8235) (Some!8235 (v!38135 tuple2!38528)) )
))
(declare-fun lt!1275941 () Option!8236)

(declare-fun lt!1275960 () List!38780)

(assert (=> b!3665747 (= res!1488355 (or (not (= lt!1275960 (_2!22398 lt!1275956))) (not (= lt!1275941 (Some!8235 (tuple2!38529 (_1!22398 lt!1275956) lt!1275960))))))))

(assert (=> b!3665747 (= (_2!22398 lt!1275956) lt!1275960)))

(declare-fun lt!1275923 () List!38780)

(declare-fun lt!1275962 () List!38780)

(declare-fun lt!1275953 () Unit!56037)

(declare-fun lemmaSamePrefixThenSameSuffix!1494 (List!38780 List!38780 List!38780 List!38780 List!38780) Unit!56037)

(assert (=> b!3665747 (= lt!1275953 (lemmaSamePrefixThenSameSuffix!1494 lt!1275962 (_2!22398 lt!1275956) lt!1275962 lt!1275960 lt!1275923))))

(declare-fun getSuffix!1720 (List!38780 List!38780) List!38780)

(assert (=> b!3665747 (= lt!1275960 (getSuffix!1720 lt!1275923 lt!1275962))))

(declare-fun lt!1275947 () TokenValue!6034)

(declare-fun lt!1275957 () Int)

(assert (=> b!3665747 (= lt!1275941 (Some!8235 (tuple2!38529 (Token!10975 lt!1275947 (rule!8622 (_1!22398 lt!1275956)) lt!1275957 lt!1275962) (_2!22398 lt!1275956))))))

(declare-fun maxPrefixOneRule!2065 (LexerInterface!5393 Rule!11408 List!38780) Option!8236)

(assert (=> b!3665747 (= lt!1275941 (maxPrefixOneRule!2065 thiss!23823 (rule!8622 (_1!22398 lt!1275956)) lt!1275923))))

(declare-fun size!29538 (List!38780) Int)

(assert (=> b!3665747 (= lt!1275957 (size!29538 lt!1275962))))

(declare-fun apply!9306 (TokenValueInjection!11496 BalanceConc!23260) TokenValue!6034)

(declare-fun seqFromList!4353 (List!38780) BalanceConc!23260)

(assert (=> b!3665747 (= lt!1275947 (apply!9306 (transformation!5804 (rule!8622 (_1!22398 lt!1275956))) (seqFromList!4353 lt!1275962)))))

(declare-fun lt!1275918 () Unit!56037)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1121 (LexerInterface!5393 List!38781 List!38780 List!38780 List!38780 Rule!11408) Unit!56037)

(assert (=> b!3665747 (= lt!1275918 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1121 thiss!23823 rules!3307 lt!1275962 lt!1275923 (_2!22398 lt!1275956) (rule!8622 (_1!22398 lt!1275956))))))

(declare-fun b!3665748 () Bool)

(declare-fun e!2269681 () Unit!56037)

(declare-fun Unit!56041 () Unit!56037)

(assert (=> b!3665748 (= e!2269681 Unit!56041)))

(declare-fun lt!1275919 () C!21312)

(declare-fun lt!1275944 () Unit!56037)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!752 (Regex!10563 List!38780 C!21312) Unit!56037)

(assert (=> b!3665748 (= lt!1275944 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!752 (regex!5804 rule!403) lt!1275966 lt!1275919))))

(assert (=> b!3665748 false))

(declare-fun b!3665749 () Bool)

(declare-fun e!2269689 () Bool)

(declare-fun tp_is_empty!18209 () Bool)

(declare-fun tp!1115999 () Bool)

(assert (=> b!3665749 (= e!2269689 (and tp_is_empty!18209 tp!1115999))))

(declare-fun b!3665750 () Bool)

(assert (=> b!3665750 false))

(declare-fun lt!1275940 () Unit!56037)

(declare-fun call!265275 () Unit!56037)

(assert (=> b!3665750 (= lt!1275940 call!265275)))

(declare-fun call!265279 () Bool)

(assert (=> b!3665750 (not call!265279)))

(declare-fun lt!1275925 () Unit!56037)

(assert (=> b!3665750 (= lt!1275925 (lemmaNonSepRuleNotContainsCharContainedInASepRule!450 thiss!23823 rules!3307 rules!3307 (rule!8622 (_1!22398 lt!1275956)) rule!403 lt!1275919))))

(declare-fun Unit!56042 () Unit!56037)

(assert (=> b!3665750 (= e!2269699 Unit!56042)))

(declare-fun b!3665751 () Bool)

(declare-fun e!2269694 () Bool)

(assert (=> b!3665751 (= e!2269694 false)))

(assert (=> b!3665751 (not (matchR!5132 (regex!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275966))))

(declare-fun lt!1275945 () Unit!56037)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!212 (LexerInterface!5393 List!38781 Rule!11408 List!38780 List!38780 Rule!11408) Unit!56037)

(assert (=> b!3665751 (= lt!1275945 (lemmaMaxPrefNoSmallerRuleMatches!212 thiss!23823 rules!3307 rule!403 lt!1275966 lt!1275966 (rule!8622 (_1!22398 lt!1275956))))))

(declare-fun isEmpty!22934 (List!38780) Bool)

(assert (=> b!3665751 (isEmpty!22934 (getSuffix!1720 lt!1275966 lt!1275966))))

(declare-fun lt!1275920 () Unit!56037)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!184 (List!38780) Unit!56037)

(assert (=> b!3665751 (= lt!1275920 (lemmaGetSuffixOnListWithItSelfIsEmpty!184 lt!1275966))))

(declare-fun b!3665752 () Bool)

(assert (=> b!3665752 false))

(declare-fun lt!1275948 () Unit!56037)

(assert (=> b!3665752 (= lt!1275948 call!265275)))

(assert (=> b!3665752 (not call!265279)))

(declare-fun lt!1275934 () Unit!56037)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!332 (LexerInterface!5393 List!38781 List!38781 Rule!11408 Rule!11408 C!21312) Unit!56037)

(assert (=> b!3665752 (= lt!1275934 (lemmaSepRuleNotContainsCharContainedInANonSepRule!332 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8622 (_1!22398 lt!1275956)) lt!1275919))))

(declare-fun Unit!56043 () Unit!56037)

(assert (=> b!3665752 (= e!2269713 Unit!56043)))

(declare-fun b!3665753 () Bool)

(declare-fun Unit!56044 () Unit!56037)

(assert (=> b!3665753 (= e!2269713 Unit!56044)))

(declare-fun b!3665754 () Bool)

(declare-fun res!1488368 () Bool)

(declare-fun e!2269706 () Bool)

(assert (=> b!3665754 (=> res!1488368 e!2269706)))

(assert (=> b!3665754 (= res!1488368 (not (matchR!5132 (regex!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275962)))))

(declare-fun b!3665755 () Bool)

(declare-fun e!2269710 () Unit!56037)

(assert (=> b!3665755 (= e!2269710 e!2269697)))

(declare-fun lt!1275933 () Unit!56037)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!112 (List!38780 List!38780 List!38780 List!38780) Unit!56037)

(assert (=> b!3665755 (= lt!1275933 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!112 lt!1275966 suffix!1395 lt!1275962 lt!1275923))))

(assert (=> b!3665755 (contains!7675 lt!1275962 lt!1275964)))

(declare-fun c!633739 () Bool)

(assert (=> b!3665755 (= c!633739 (isSeparator!5804 rule!403))))

(declare-fun b!3665756 () Bool)

(declare-fun res!1488365 () Bool)

(assert (=> b!3665756 (=> res!1488365 e!2269711)))

(assert (=> b!3665756 (= res!1488365 (not (contains!7675 (usedCharacters!1016 (regex!5804 anOtherTypeRule!33)) lt!1275964)))))

(declare-fun b!3665757 () Bool)

(declare-fun res!1488350 () Bool)

(assert (=> b!3665757 (=> res!1488350 e!2269694)))

(declare-fun getIndex!472 (List!38781 Rule!11408) Int)

(assert (=> b!3665757 (= res!1488350 (>= (getIndex!472 rules!3307 (rule!8622 (_1!22398 lt!1275956))) (getIndex!472 rules!3307 rule!403)))))

(declare-fun e!2269708 () Bool)

(assert (=> b!3665758 (= e!2269708 (and tp!1116003 tp!1116002))))

(declare-fun e!2269702 () Bool)

(assert (=> b!3665759 (= e!2269702 (and tp!1116004 tp!1115995))))

(declare-fun tp!1115996 () Bool)

(declare-fun e!2269709 () Bool)

(declare-fun b!3665760 () Bool)

(declare-fun inv!21 (TokenValue!6034) Bool)

(assert (=> b!3665760 (= e!2269709 (and (inv!21 (value!185874 token!511)) e!2269705 tp!1115996))))

(declare-fun e!2269714 () Bool)

(declare-fun tp!1115993 () Bool)

(declare-fun b!3665761 () Bool)

(assert (=> b!3665761 (= e!2269714 (and tp!1115993 (inv!52129 (tag!6588 (h!44077 rules!3307))) (inv!52132 (transformation!5804 (h!44077 rules!3307))) e!2269702))))

(declare-fun res!1488357 () Bool)

(assert (=> start!343406 (=> (not res!1488357) (not e!2269693))))

(get-info :version)

(assert (=> start!343406 (= res!1488357 ((_ is Lexer!5391) thiss!23823))))

(assert (=> start!343406 e!2269693))

(declare-fun e!2269698 () Bool)

(assert (=> start!343406 e!2269698))

(assert (=> start!343406 e!2269689))

(assert (=> start!343406 true))

(declare-fun inv!52133 (Token!10974) Bool)

(assert (=> start!343406 (and (inv!52133 token!511) e!2269709)))

(declare-fun e!2269683 () Bool)

(assert (=> start!343406 e!2269683))

(declare-fun e!2269703 () Bool)

(assert (=> start!343406 e!2269703))

(declare-fun bm!265271 () Bool)

(assert (=> bm!265271 (= call!265277 (usedCharacters!1016 (regex!5804 (rule!8622 (_1!22398 lt!1275956)))))))

(declare-fun e!2269696 () Bool)

(declare-fun b!3665762 () Bool)

(declare-fun tp!1116000 () Bool)

(assert (=> b!3665762 (= e!2269703 (and tp!1116000 (inv!52129 (tag!6588 anOtherTypeRule!33)) (inv!52132 (transformation!5804 anOtherTypeRule!33)) e!2269696))))

(declare-fun b!3665763 () Bool)

(assert (=> b!3665763 (= e!2269711 e!2269706)))

(declare-fun res!1488361 () Bool)

(assert (=> b!3665763 (=> res!1488361 e!2269706)))

(declare-fun isPrefix!3167 (List!38780 List!38780) Bool)

(assert (=> b!3665763 (= res!1488361 (not (isPrefix!3167 lt!1275962 lt!1275923)))))

(declare-fun ++!9620 (List!38780 List!38780) List!38780)

(assert (=> b!3665763 (isPrefix!3167 lt!1275962 (++!9620 lt!1275962 (_2!22398 lt!1275956)))))

(declare-fun lt!1275930 () Unit!56037)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2086 (List!38780 List!38780) Unit!56037)

(assert (=> b!3665763 (= lt!1275930 (lemmaConcatTwoListThenFirstIsPrefix!2086 lt!1275962 (_2!22398 lt!1275956)))))

(declare-fun lt!1275963 () BalanceConc!23260)

(declare-fun list!14350 (BalanceConc!23260) List!38780)

(assert (=> b!3665763 (= lt!1275962 (list!14350 lt!1275963))))

(declare-fun charsOf!3818 (Token!10974) BalanceConc!23260)

(assert (=> b!3665763 (= lt!1275963 (charsOf!3818 (_1!22398 lt!1275956)))))

(declare-fun e!2269684 () Bool)

(assert (=> b!3665763 e!2269684))

(declare-fun res!1488349 () Bool)

(assert (=> b!3665763 (=> (not res!1488349) (not e!2269684))))

(declare-datatypes ((Option!8237 0))(
  ( (None!8236) (Some!8236 (v!38136 Rule!11408)) )
))
(declare-fun lt!1275938 () Option!8237)

(declare-fun isDefined!6468 (Option!8237) Bool)

(assert (=> b!3665763 (= res!1488349 (isDefined!6468 lt!1275938))))

(declare-fun getRuleFromTag!1408 (LexerInterface!5393 List!38781 String!43504) Option!8237)

(assert (=> b!3665763 (= lt!1275938 (getRuleFromTag!1408 thiss!23823 rules!3307 (tag!6588 (rule!8622 (_1!22398 lt!1275956)))))))

(declare-fun lt!1275965 () Unit!56037)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1408 (LexerInterface!5393 List!38781 List!38780 Token!10974) Unit!56037)

(assert (=> b!3665763 (= lt!1275965 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1408 thiss!23823 rules!3307 lt!1275923 (_1!22398 lt!1275956)))))

(declare-fun lt!1275961 () Option!8236)

(declare-fun get!12748 (Option!8236) tuple2!38528)

(assert (=> b!3665763 (= lt!1275956 (get!12748 lt!1275961))))

(declare-fun lt!1275952 () Unit!56037)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1071 (LexerInterface!5393 List!38781 List!38780 List!38780) Unit!56037)

(assert (=> b!3665763 (= lt!1275952 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1071 thiss!23823 rules!3307 lt!1275966 suffix!1395))))

(declare-fun maxPrefix!2927 (LexerInterface!5393 List!38781 List!38780) Option!8236)

(assert (=> b!3665763 (= lt!1275961 (maxPrefix!2927 thiss!23823 rules!3307 lt!1275923))))

(assert (=> b!3665763 (isPrefix!3167 lt!1275966 lt!1275923)))

(declare-fun lt!1275937 () Unit!56037)

(assert (=> b!3665763 (= lt!1275937 (lemmaConcatTwoListThenFirstIsPrefix!2086 lt!1275966 suffix!1395))))

(assert (=> b!3665763 (= lt!1275923 (++!9620 lt!1275966 suffix!1395))))

(declare-fun b!3665764 () Bool)

(declare-fun e!2269691 () Bool)

(assert (=> b!3665764 (= e!2269693 e!2269691)))

(declare-fun res!1488352 () Bool)

(assert (=> b!3665764 (=> (not res!1488352) (not e!2269691))))

(declare-fun lt!1275955 () Option!8236)

(declare-fun isDefined!6469 (Option!8236) Bool)

(assert (=> b!3665764 (= res!1488352 (isDefined!6469 lt!1275955))))

(assert (=> b!3665764 (= lt!1275955 (maxPrefix!2927 thiss!23823 rules!3307 lt!1275966))))

(declare-fun lt!1275931 () BalanceConc!23260)

(assert (=> b!3665764 (= lt!1275966 (list!14350 lt!1275931))))

(assert (=> b!3665764 (= lt!1275931 (charsOf!3818 token!511))))

(declare-fun b!3665765 () Bool)

(declare-fun tp!1115990 () Bool)

(assert (=> b!3665765 (= e!2269683 (and tp!1115990 (inv!52129 (tag!6588 rule!403)) (inv!52132 (transformation!5804 rule!403)) e!2269708))))

(declare-fun b!3665766 () Bool)

(declare-fun Unit!56045 () Unit!56037)

(assert (=> b!3665766 (= e!2269710 Unit!56045)))

(declare-fun b!3665767 () Bool)

(declare-fun res!1488360 () Bool)

(assert (=> b!3665767 (=> (not res!1488360) (not e!2269686))))

(assert (=> b!3665767 (= res!1488360 (= (rule!8622 token!511) rule!403))))

(assert (=> b!3665768 (= e!2269696 (and tp!1115994 tp!1115992))))

(declare-fun bm!265272 () Bool)

(declare-fun call!265276 () List!38780)

(assert (=> bm!265272 (= call!265279 (contains!7675 call!265276 lt!1275919))))

(declare-fun b!3665769 () Bool)

(declare-fun tp!1115997 () Bool)

(assert (=> b!3665769 (= e!2269698 (and e!2269714 tp!1115997))))

(declare-fun b!3665770 () Bool)

(declare-fun res!1488356 () Bool)

(assert (=> b!3665770 (=> (not res!1488356) (not e!2269693))))

(declare-fun contains!7676 (List!38781 Rule!11408) Bool)

(assert (=> b!3665770 (= res!1488356 (contains!7676 rules!3307 rule!403))))

(declare-fun bm!265273 () Bool)

(assert (=> bm!265273 (= call!265275 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!752 (regex!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275962 lt!1275919))))

(declare-fun b!3665771 () Bool)

(declare-fun e!2269701 () Unit!56037)

(declare-fun Unit!56046 () Unit!56037)

(assert (=> b!3665771 (= e!2269701 Unit!56046)))

(declare-fun lt!1275927 () Unit!56037)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!346 (LexerInterface!5393 List!38781 Rule!11408 List!38780 List!38780 List!38780 Rule!11408) Unit!56037)

(assert (=> b!3665771 (= lt!1275927 (lemmaMaxPrefixOutputsMaxPrefix!346 thiss!23823 rules!3307 (rule!8622 (_1!22398 lt!1275956)) lt!1275962 lt!1275923 lt!1275966 rule!403))))

(assert (=> b!3665771 false))

(declare-fun bm!265274 () Bool)

(assert (=> bm!265274 (= call!265280 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!752 (regex!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275962 lt!1275964))))

(declare-fun b!3665772 () Bool)

(declare-fun res!1488370 () Bool)

(assert (=> b!3665772 (=> (not res!1488370) (not e!2269693))))

(declare-fun rulesInvariant!4790 (LexerInterface!5393 List!38781) Bool)

(assert (=> b!3665772 (= res!1488370 (rulesInvariant!4790 thiss!23823 rules!3307))))

(declare-fun b!3665773 () Bool)

(assert (=> b!3665773 false))

(declare-fun lt!1275954 () Unit!56037)

(assert (=> b!3665773 (= lt!1275954 call!265280)))

(assert (=> b!3665773 (not call!265278)))

(declare-fun lt!1275946 () Unit!56037)

(assert (=> b!3665773 (= lt!1275946 (lemmaSepRuleNotContainsCharContainedInANonSepRule!332 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8622 (_1!22398 lt!1275956)) lt!1275964))))

(declare-fun Unit!56047 () Unit!56037)

(assert (=> b!3665773 (= e!2269697 Unit!56047)))

(declare-fun b!3665774 () Bool)

(declare-fun res!1488362 () Bool)

(assert (=> b!3665774 (=> res!1488362 e!2269692)))

(assert (=> b!3665774 (= res!1488362 (isEmpty!22934 suffix!1395))))

(declare-fun b!3665775 () Bool)

(assert (=> b!3665775 (= e!2269684 e!2269685)))

(declare-fun res!1488353 () Bool)

(assert (=> b!3665775 (=> (not res!1488353) (not e!2269685))))

(assert (=> b!3665775 (= res!1488353 (matchR!5132 (regex!5804 lt!1275928) (list!14350 (charsOf!3818 (_1!22398 lt!1275956)))))))

(declare-fun get!12749 (Option!8237) Rule!11408)

(assert (=> b!3665775 (= lt!1275928 (get!12749 lt!1275938))))

(declare-fun b!3665776 () Bool)

(assert (=> b!3665776 (= e!2269691 e!2269686)))

(declare-fun res!1488371 () Bool)

(assert (=> b!3665776 (=> (not res!1488371) (not e!2269686))))

(declare-fun lt!1275935 () tuple2!38528)

(assert (=> b!3665776 (= res!1488371 (= (_1!22398 lt!1275935) token!511))))

(assert (=> b!3665776 (= lt!1275935 (get!12748 lt!1275955))))

(declare-fun b!3665777 () Bool)

(declare-fun Unit!56048 () Unit!56037)

(assert (=> b!3665777 (= e!2269701 Unit!56048)))

(declare-fun b!3665778 () Bool)

(assert (=> b!3665778 (= e!2269706 e!2269682)))

(declare-fun res!1488366 () Bool)

(assert (=> b!3665778 (=> res!1488366 e!2269682)))

(declare-fun lt!1275943 () Int)

(declare-fun lt!1275929 () TokenValue!6034)

(assert (=> b!3665778 (= res!1488366 (not (= lt!1275961 (Some!8235 (tuple2!38529 (Token!10975 lt!1275929 (rule!8622 (_1!22398 lt!1275956)) lt!1275943 lt!1275962) (_2!22398 lt!1275956))))))))

(declare-fun size!29539 (BalanceConc!23260) Int)

(assert (=> b!3665778 (= lt!1275943 (size!29539 lt!1275963))))

(assert (=> b!3665778 (= lt!1275929 (apply!9306 (transformation!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275963))))

(declare-fun lt!1275921 () Unit!56037)

(declare-fun lemmaCharactersSize!849 (Token!10974) Unit!56037)

(assert (=> b!3665778 (= lt!1275921 (lemmaCharactersSize!849 (_1!22398 lt!1275956)))))

(declare-fun lt!1275950 () Unit!56037)

(declare-fun lemmaEqSameImage!987 (TokenValueInjection!11496 BalanceConc!23260 BalanceConc!23260) Unit!56037)

(assert (=> b!3665778 (= lt!1275950 (lemmaEqSameImage!987 (transformation!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275963 (seqFromList!4353 (originalCharacters!6518 (_1!22398 lt!1275956)))))))

(declare-fun lt!1275922 () Unit!56037)

(declare-fun lemmaSemiInverse!1553 (TokenValueInjection!11496 BalanceConc!23260) Unit!56037)

(assert (=> b!3665778 (= lt!1275922 (lemmaSemiInverse!1553 (transformation!5804 (rule!8622 (_1!22398 lt!1275956))) lt!1275963))))

(declare-fun b!3665779 () Bool)

(declare-fun res!1488364 () Bool)

(assert (=> b!3665779 (=> (not res!1488364) (not e!2269693))))

(assert (=> b!3665779 (= res!1488364 (contains!7676 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3665780 () Bool)

(declare-fun res!1488354 () Bool)

(assert (=> b!3665780 (=> (not res!1488354) (not e!2269686))))

(assert (=> b!3665780 (= res!1488354 (isEmpty!22934 (_2!22398 lt!1275935)))))

(declare-fun b!3665781 () Bool)

(declare-fun res!1488363 () Bool)

(assert (=> b!3665781 (=> (not res!1488363) (not e!2269693))))

(declare-fun isEmpty!22935 (List!38781) Bool)

(assert (=> b!3665781 (= res!1488363 (not (isEmpty!22935 rules!3307)))))

(declare-fun b!3665782 () Bool)

(declare-fun res!1488359 () Bool)

(assert (=> b!3665782 (=> res!1488359 e!2269711)))

(declare-fun sepAndNonSepRulesDisjointChars!1972 (List!38781 List!38781) Bool)

(assert (=> b!3665782 (= res!1488359 (not (sepAndNonSepRulesDisjointChars!1972 rules!3307 rules!3307)))))

(declare-fun b!3665783 () Bool)

(assert (=> b!3665783 (= e!2269707 e!2269694)))

(declare-fun res!1488367 () Bool)

(assert (=> b!3665783 (=> res!1488367 e!2269694)))

(assert (=> b!3665783 (= res!1488367 (= (rule!8622 (_1!22398 lt!1275956)) (rule!8622 token!511)))))

(assert (=> b!3665783 (= lt!1275962 lt!1275966)))

(declare-fun lt!1275958 () Unit!56037)

(declare-fun lemmaIsPrefixSameLengthThenSameList!629 (List!38780 List!38780 List!38780) Unit!56037)

(assert (=> b!3665783 (= lt!1275958 (lemmaIsPrefixSameLengthThenSameList!629 lt!1275962 lt!1275966 lt!1275923))))

(declare-fun lt!1275932 () Unit!56037)

(assert (=> b!3665783 (= lt!1275932 e!2269701)))

(declare-fun c!633742 () Bool)

(declare-fun lt!1275936 () Int)

(assert (=> b!3665783 (= c!633742 (< lt!1275943 lt!1275936))))

(declare-fun lt!1275939 () Unit!56037)

(assert (=> b!3665783 (= lt!1275939 e!2269710)))

(declare-fun c!633744 () Bool)

(assert (=> b!3665783 (= c!633744 (> lt!1275943 lt!1275936))))

(assert (=> b!3665783 (= lt!1275936 (size!29539 lt!1275931))))

(declare-fun lt!1275942 () Unit!56037)

(assert (=> b!3665783 (= lt!1275942 e!2269704)))

(declare-fun c!633745 () Bool)

(assert (=> b!3665783 (= c!633745 (isSeparator!5804 rule!403))))

(declare-fun lt!1275926 () Unit!56037)

(assert (=> b!3665783 (= lt!1275926 e!2269681)))

(declare-fun c!633741 () Bool)

(assert (=> b!3665783 (= c!633741 (not (contains!7675 lt!1275959 lt!1275919)))))

(assert (=> b!3665783 (= lt!1275919 (head!7838 lt!1275962))))

(declare-fun bm!265275 () Bool)

(assert (=> bm!265275 (= call!265276 (usedCharacters!1016 (regex!5804 (rule!8622 (_1!22398 lt!1275956)))))))

(declare-fun b!3665784 () Bool)

(declare-fun Unit!56049 () Unit!56037)

(assert (=> b!3665784 (= e!2269681 Unit!56049)))

(assert (= (and start!343406 res!1488357) b!3665781))

(assert (= (and b!3665781 res!1488363) b!3665772))

(assert (= (and b!3665772 res!1488370) b!3665770))

(assert (= (and b!3665770 res!1488356) b!3665779))

(assert (= (and b!3665779 res!1488364) b!3665740))

(assert (= (and b!3665740 res!1488369) b!3665764))

(assert (= (and b!3665764 res!1488352) b!3665776))

(assert (= (and b!3665776 res!1488371) b!3665780))

(assert (= (and b!3665780 res!1488354) b!3665767))

(assert (= (and b!3665767 res!1488360) b!3665745))

(assert (= (and b!3665745 (not res!1488358)) b!3665774))

(assert (= (and b!3665774 (not res!1488362)) b!3665739))

(assert (= (and b!3665739 (not res!1488351)) b!3665756))

(assert (= (and b!3665756 (not res!1488365)) b!3665782))

(assert (= (and b!3665782 (not res!1488359)) b!3665763))

(assert (= (and b!3665763 res!1488349) b!3665775))

(assert (= (and b!3665775 res!1488353) b!3665746))

(assert (= (and b!3665763 (not res!1488361)) b!3665754))

(assert (= (and b!3665754 (not res!1488368)) b!3665778))

(assert (= (and b!3665778 (not res!1488366)) b!3665747))

(assert (= (and b!3665747 (not res!1488355)) b!3665783))

(assert (= (and b!3665783 c!633741) b!3665748))

(assert (= (and b!3665783 (not c!633741)) b!3665784))

(assert (= (and b!3665783 c!633745) b!3665741))

(assert (= (and b!3665783 (not c!633745)) b!3665742))

(assert (= (and b!3665741 c!633743) b!3665750))

(assert (= (and b!3665741 (not c!633743)) b!3665743))

(assert (= (and b!3665742 c!633740) b!3665752))

(assert (= (and b!3665742 (not c!633740)) b!3665753))

(assert (= (or b!3665750 b!3665752) bm!265273))

(assert (= (or b!3665750 b!3665752) bm!265275))

(assert (= (or b!3665750 b!3665752) bm!265272))

(assert (= (and b!3665783 c!633744) b!3665755))

(assert (= (and b!3665783 (not c!633744)) b!3665766))

(assert (= (and b!3665755 c!633739) b!3665773))

(assert (= (and b!3665755 (not c!633739)) b!3665738))

(assert (= (or b!3665773 b!3665738) bm!265274))

(assert (= (or b!3665773 b!3665738) bm!265271))

(assert (= (or b!3665773 b!3665738) bm!265270))

(assert (= (and b!3665783 c!633742) b!3665771))

(assert (= (and b!3665783 (not c!633742)) b!3665777))

(assert (= (and b!3665783 (not res!1488367)) b!3665757))

(assert (= (and b!3665757 (not res!1488350)) b!3665751))

(assert (= b!3665761 b!3665759))

(assert (= b!3665769 b!3665761))

(assert (= (and start!343406 ((_ is Cons!38657) rules!3307)) b!3665769))

(assert (= (and start!343406 ((_ is Cons!38656) suffix!1395)) b!3665749))

(assert (= b!3665737 b!3665744))

(assert (= b!3665760 b!3665737))

(assert (= start!343406 b!3665760))

(assert (= b!3665765 b!3665758))

(assert (= start!343406 b!3665765))

(assert (= b!3665762 b!3665768))

(assert (= start!343406 b!3665762))

(declare-fun m!4173501 () Bool)

(assert (=> bm!265273 m!4173501))

(declare-fun m!4173503 () Bool)

(assert (=> bm!265275 m!4173503))

(declare-fun m!4173505 () Bool)

(assert (=> b!3665745 m!4173505))

(declare-fun m!4173507 () Bool)

(assert (=> b!3665745 m!4173507))

(declare-fun m!4173509 () Bool)

(assert (=> b!3665745 m!4173509))

(declare-fun m!4173511 () Bool)

(assert (=> b!3665772 m!4173511))

(declare-fun m!4173513 () Bool)

(assert (=> b!3665765 m!4173513))

(declare-fun m!4173515 () Bool)

(assert (=> b!3665765 m!4173515))

(declare-fun m!4173517 () Bool)

(assert (=> start!343406 m!4173517))

(declare-fun m!4173519 () Bool)

(assert (=> b!3665770 m!4173519))

(declare-fun m!4173521 () Bool)

(assert (=> b!3665775 m!4173521))

(assert (=> b!3665775 m!4173521))

(declare-fun m!4173523 () Bool)

(assert (=> b!3665775 m!4173523))

(assert (=> b!3665775 m!4173523))

(declare-fun m!4173525 () Bool)

(assert (=> b!3665775 m!4173525))

(declare-fun m!4173527 () Bool)

(assert (=> b!3665775 m!4173527))

(declare-fun m!4173529 () Bool)

(assert (=> b!3665747 m!4173529))

(declare-fun m!4173531 () Bool)

(assert (=> b!3665747 m!4173531))

(declare-fun m!4173533 () Bool)

(assert (=> b!3665747 m!4173533))

(assert (=> b!3665747 m!4173529))

(declare-fun m!4173535 () Bool)

(assert (=> b!3665747 m!4173535))

(declare-fun m!4173537 () Bool)

(assert (=> b!3665747 m!4173537))

(declare-fun m!4173539 () Bool)

(assert (=> b!3665747 m!4173539))

(declare-fun m!4173541 () Bool)

(assert (=> b!3665747 m!4173541))

(declare-fun m!4173543 () Bool)

(assert (=> b!3665763 m!4173543))

(declare-fun m!4173545 () Bool)

(assert (=> b!3665763 m!4173545))

(declare-fun m!4173547 () Bool)

(assert (=> b!3665763 m!4173547))

(declare-fun m!4173549 () Bool)

(assert (=> b!3665763 m!4173549))

(declare-fun m!4173551 () Bool)

(assert (=> b!3665763 m!4173551))

(declare-fun m!4173553 () Bool)

(assert (=> b!3665763 m!4173553))

(declare-fun m!4173555 () Bool)

(assert (=> b!3665763 m!4173555))

(assert (=> b!3665763 m!4173521))

(declare-fun m!4173557 () Bool)

(assert (=> b!3665763 m!4173557))

(declare-fun m!4173559 () Bool)

(assert (=> b!3665763 m!4173559))

(declare-fun m!4173561 () Bool)

(assert (=> b!3665763 m!4173561))

(declare-fun m!4173563 () Bool)

(assert (=> b!3665763 m!4173563))

(declare-fun m!4173565 () Bool)

(assert (=> b!3665763 m!4173565))

(assert (=> b!3665763 m!4173545))

(declare-fun m!4173567 () Bool)

(assert (=> b!3665763 m!4173567))

(declare-fun m!4173569 () Bool)

(assert (=> b!3665763 m!4173569))

(declare-fun m!4173571 () Bool)

(assert (=> b!3665738 m!4173571))

(declare-fun m!4173573 () Bool)

(assert (=> b!3665778 m!4173573))

(declare-fun m!4173575 () Bool)

(assert (=> b!3665778 m!4173575))

(declare-fun m!4173577 () Bool)

(assert (=> b!3665778 m!4173577))

(declare-fun m!4173579 () Bool)

(assert (=> b!3665778 m!4173579))

(declare-fun m!4173581 () Bool)

(assert (=> b!3665778 m!4173581))

(assert (=> b!3665778 m!4173573))

(declare-fun m!4173583 () Bool)

(assert (=> b!3665778 m!4173583))

(declare-fun m!4173585 () Bool)

(assert (=> b!3665739 m!4173585))

(declare-fun m!4173587 () Bool)

(assert (=> b!3665739 m!4173587))

(declare-fun m!4173589 () Bool)

(assert (=> b!3665739 m!4173589))

(declare-fun m!4173591 () Bool)

(assert (=> b!3665771 m!4173591))

(declare-fun m!4173593 () Bool)

(assert (=> b!3665783 m!4173593))

(declare-fun m!4173595 () Bool)

(assert (=> b!3665783 m!4173595))

(declare-fun m!4173597 () Bool)

(assert (=> b!3665783 m!4173597))

(declare-fun m!4173599 () Bool)

(assert (=> b!3665783 m!4173599))

(declare-fun m!4173601 () Bool)

(assert (=> b!3665781 m!4173601))

(declare-fun m!4173603 () Bool)

(assert (=> b!3665773 m!4173603))

(declare-fun m!4173605 () Bool)

(assert (=> b!3665780 m!4173605))

(declare-fun m!4173607 () Bool)

(assert (=> bm!265274 m!4173607))

(declare-fun m!4173609 () Bool)

(assert (=> b!3665762 m!4173609))

(declare-fun m!4173611 () Bool)

(assert (=> b!3665762 m!4173611))

(declare-fun m!4173613 () Bool)

(assert (=> b!3665761 m!4173613))

(declare-fun m!4173615 () Bool)

(assert (=> b!3665761 m!4173615))

(declare-fun m!4173617 () Bool)

(assert (=> b!3665737 m!4173617))

(declare-fun m!4173619 () Bool)

(assert (=> b!3665737 m!4173619))

(declare-fun m!4173621 () Bool)

(assert (=> b!3665774 m!4173621))

(declare-fun m!4173623 () Bool)

(assert (=> b!3665776 m!4173623))

(assert (=> bm!265271 m!4173503))

(declare-fun m!4173625 () Bool)

(assert (=> b!3665754 m!4173625))

(declare-fun m!4173627 () Bool)

(assert (=> b!3665756 m!4173627))

(assert (=> b!3665756 m!4173627))

(declare-fun m!4173629 () Bool)

(assert (=> b!3665756 m!4173629))

(declare-fun m!4173631 () Bool)

(assert (=> b!3665752 m!4173631))

(declare-fun m!4173633 () Bool)

(assert (=> b!3665755 m!4173633))

(declare-fun m!4173635 () Bool)

(assert (=> b!3665755 m!4173635))

(declare-fun m!4173637 () Bool)

(assert (=> bm!265270 m!4173637))

(declare-fun m!4173639 () Bool)

(assert (=> bm!265272 m!4173639))

(declare-fun m!4173641 () Bool)

(assert (=> b!3665751 m!4173641))

(declare-fun m!4173643 () Bool)

(assert (=> b!3665751 m!4173643))

(declare-fun m!4173645 () Bool)

(assert (=> b!3665751 m!4173645))

(declare-fun m!4173647 () Bool)

(assert (=> b!3665751 m!4173647))

(assert (=> b!3665751 m!4173641))

(declare-fun m!4173649 () Bool)

(assert (=> b!3665751 m!4173649))

(declare-fun m!4173651 () Bool)

(assert (=> b!3665760 m!4173651))

(declare-fun m!4173653 () Bool)

(assert (=> b!3665750 m!4173653))

(declare-fun m!4173655 () Bool)

(assert (=> b!3665757 m!4173655))

(declare-fun m!4173657 () Bool)

(assert (=> b!3665757 m!4173657))

(declare-fun m!4173659 () Bool)

(assert (=> b!3665779 m!4173659))

(declare-fun m!4173661 () Bool)

(assert (=> b!3665764 m!4173661))

(declare-fun m!4173663 () Bool)

(assert (=> b!3665764 m!4173663))

(declare-fun m!4173665 () Bool)

(assert (=> b!3665764 m!4173665))

(declare-fun m!4173667 () Bool)

(assert (=> b!3665764 m!4173667))

(declare-fun m!4173669 () Bool)

(assert (=> b!3665782 m!4173669))

(declare-fun m!4173671 () Bool)

(assert (=> b!3665748 m!4173671))

(check-sat (not b!3665756) (not bm!265271) (not b!3665778) (not b!3665770) (not start!343406) (not b!3665775) b_and!272621 b_and!272623 (not bm!265274) (not b!3665748) (not b_next!97443) (not b!3665760) b_and!272619 (not b!3665783) (not b!3665738) (not b!3665754) (not b!3665773) b_and!272615 (not b!3665749) (not b!3665774) (not b!3665750) (not b!3665737) (not b!3665780) b_and!272611 (not b!3665771) b_and!272617 (not b!3665765) (not b!3665776) (not b!3665764) tp_is_empty!18209 (not b!3665779) (not b_next!97455) (not b!3665772) (not b!3665752) (not b!3665781) (not b!3665739) (not b!3665747) (not b!3665755) (not b!3665782) (not b!3665757) (not bm!265275) (not b!3665762) (not bm!265270) (not b_next!97451) (not b!3665751) (not bm!265273) (not bm!265272) b_and!272625 (not b!3665761) (not b_next!97453) b_and!272613 (not b!3665763) (not b!3665745) (not b_next!97447) (not b_next!97445) (not b!3665769) (not b_next!97441) (not b_next!97449))
(check-sat b_and!272615 b_and!272621 b_and!272623 (not b_next!97455) (not b_next!97451) b_and!272625 (not b_next!97443) b_and!272619 b_and!272611 b_and!272617 (not b_next!97453) b_and!272613 (not b_next!97447) (not b_next!97445) (not b_next!97441) (not b_next!97449))
