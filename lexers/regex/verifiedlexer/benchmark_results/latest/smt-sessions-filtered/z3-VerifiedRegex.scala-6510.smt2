; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342834 () Bool)

(assert start!342834)

(declare-fun b!3661892 () Bool)

(declare-fun b_free!96649 () Bool)

(declare-fun b_next!97353 () Bool)

(assert (=> b!3661892 (= b_free!96649 (not b_next!97353))))

(declare-fun tp!1115339 () Bool)

(declare-fun b_and!271843 () Bool)

(assert (=> b!3661892 (= tp!1115339 b_and!271843)))

(declare-fun b_free!96651 () Bool)

(declare-fun b_next!97355 () Bool)

(assert (=> b!3661892 (= b_free!96651 (not b_next!97355))))

(declare-fun tp!1115341 () Bool)

(declare-fun b_and!271845 () Bool)

(assert (=> b!3661892 (= tp!1115341 b_and!271845)))

(declare-fun b!3661893 () Bool)

(declare-fun b_free!96653 () Bool)

(declare-fun b_next!97357 () Bool)

(assert (=> b!3661893 (= b_free!96653 (not b_next!97357))))

(declare-fun tp!1115345 () Bool)

(declare-fun b_and!271847 () Bool)

(assert (=> b!3661893 (= tp!1115345 b_and!271847)))

(declare-fun b_free!96655 () Bool)

(declare-fun b_next!97359 () Bool)

(assert (=> b!3661893 (= b_free!96655 (not b_next!97359))))

(declare-fun tp!1115350 () Bool)

(declare-fun b_and!271849 () Bool)

(assert (=> b!3661893 (= tp!1115350 b_and!271849)))

(declare-fun b!3661891 () Bool)

(declare-fun b_free!96657 () Bool)

(declare-fun b_next!97361 () Bool)

(assert (=> b!3661891 (= b_free!96657 (not b_next!97361))))

(declare-fun tp!1115336 () Bool)

(declare-fun b_and!271851 () Bool)

(assert (=> b!3661891 (= tp!1115336 b_and!271851)))

(declare-fun b_free!96659 () Bool)

(declare-fun b_next!97363 () Bool)

(assert (=> b!3661891 (= b_free!96659 (not b_next!97363))))

(declare-fun tp!1115342 () Bool)

(declare-fun b_and!271853 () Bool)

(assert (=> b!3661891 (= tp!1115342 b_and!271853)))

(declare-fun b!3661852 () Bool)

(declare-fun b_free!96661 () Bool)

(declare-fun b_next!97365 () Bool)

(assert (=> b!3661852 (= b_free!96661 (not b_next!97365))))

(declare-fun tp!1115343 () Bool)

(declare-fun b_and!271855 () Bool)

(assert (=> b!3661852 (= tp!1115343 b_and!271855)))

(declare-fun b_free!96663 () Bool)

(declare-fun b_next!97367 () Bool)

(assert (=> b!3661852 (= b_free!96663 (not b_next!97367))))

(declare-fun tp!1115347 () Bool)

(declare-fun b_and!271857 () Bool)

(assert (=> b!3661852 (= tp!1115347 b_and!271857)))

(declare-fun b!3661851 () Bool)

(declare-datatypes ((Unit!55962 0))(
  ( (Unit!55963) )
))
(declare-fun e!2267403 () Unit!55962)

(declare-fun Unit!55964 () Unit!55962)

(assert (=> b!3661851 (= e!2267403 Unit!55964)))

(declare-fun e!2267423 () Bool)

(assert (=> b!3661852 (= e!2267423 (and tp!1115343 tp!1115347))))

(declare-fun b!3661853 () Bool)

(declare-fun e!2267416 () Bool)

(declare-fun e!2267406 () Bool)

(assert (=> b!3661853 (= e!2267416 e!2267406)))

(declare-fun res!1486642 () Bool)

(assert (=> b!3661853 (=> res!1486642 e!2267406)))

(declare-datatypes ((C!21304 0))(
  ( (C!21305 (val!12700 Int)) )
))
(declare-datatypes ((List!38759 0))(
  ( (Nil!38635) (Cons!38635 (h!44055 C!21304) (t!298622 List!38759)) )
))
(declare-fun lt!1274048 () List!38759)

(declare-datatypes ((List!38760 0))(
  ( (Nil!38636) (Cons!38636 (h!44056 (_ BitVec 16)) (t!298623 List!38760)) )
))
(declare-datatypes ((TokenValue!6030 0))(
  ( (FloatLiteralValue!12060 (text!42655 List!38760)) (TokenValueExt!6029 (__x!24277 Int)) (Broken!30150 (value!185734 List!38760)) (Object!6153) (End!6030) (Def!6030) (Underscore!6030) (Match!6030) (Else!6030) (Error!6030) (Case!6030) (If!6030) (Extends!6030) (Abstract!6030) (Class!6030) (Val!6030) (DelimiterValue!12060 (del!6090 List!38760)) (KeywordValue!6036 (value!185735 List!38760)) (CommentValue!12060 (value!185736 List!38760)) (WhitespaceValue!12060 (value!185737 List!38760)) (IndentationValue!6030 (value!185738 List!38760)) (String!43483) (Int32!6030) (Broken!30151 (value!185739 List!38760)) (Boolean!6031) (Unit!55965) (OperatorValue!6033 (op!6090 List!38760)) (IdentifierValue!12060 (value!185740 List!38760)) (IdentifierValue!12061 (value!185741 List!38760)) (WhitespaceValue!12061 (value!185742 List!38760)) (True!12060) (False!12060) (Broken!30152 (value!185743 List!38760)) (Broken!30153 (value!185744 List!38760)) (True!12061) (RightBrace!6030) (RightBracket!6030) (Colon!6030) (Null!6030) (Comma!6030) (LeftBracket!6030) (False!12061) (LeftBrace!6030) (ImaginaryLiteralValue!6030 (text!42656 List!38760)) (StringLiteralValue!18090 (value!185745 List!38760)) (EOFValue!6030 (value!185746 List!38760)) (IdentValue!6030 (value!185747 List!38760)) (DelimiterValue!12061 (value!185748 List!38760)) (DedentValue!6030 (value!185749 List!38760)) (NewLineValue!6030 (value!185750 List!38760)) (IntegerValue!18090 (value!185751 (_ BitVec 32)) (text!42657 List!38760)) (IntegerValue!18091 (value!185752 Int) (text!42658 List!38760)) (Times!6030) (Or!6030) (Equal!6030) (Minus!6030) (Broken!30154 (value!185753 List!38760)) (And!6030) (Div!6030) (LessEqual!6030) (Mod!6030) (Concat!16589) (Not!6030) (Plus!6030) (SpaceValue!6030 (value!185754 List!38760)) (IntegerValue!18092 (value!185755 Int) (text!42659 List!38760)) (StringLiteralValue!18091 (text!42660 List!38760)) (FloatLiteralValue!12061 (text!42661 List!38760)) (BytesLiteralValue!6030 (value!185756 List!38760)) (CommentValue!12061 (value!185757 List!38760)) (StringLiteralValue!18092 (value!185758 List!38760)) (ErrorTokenValue!6030 (msg!6091 List!38760)) )
))
(declare-datatypes ((Regex!10559 0))(
  ( (ElementMatch!10559 (c!632924 C!21304)) (Concat!16590 (regOne!21630 Regex!10559) (regTwo!21630 Regex!10559)) (EmptyExpr!10559) (Star!10559 (reg!10888 Regex!10559)) (EmptyLang!10559) (Union!10559 (regOne!21631 Regex!10559) (regTwo!21631 Regex!10559)) )
))
(declare-datatypes ((String!43484 0))(
  ( (String!43485 (value!185759 String)) )
))
(declare-datatypes ((IArray!23635 0))(
  ( (IArray!23636 (innerList!11875 List!38759)) )
))
(declare-datatypes ((Conc!11815 0))(
  ( (Node!11815 (left!30153 Conc!11815) (right!30483 Conc!11815) (csize!23860 Int) (cheight!12026 Int)) (Leaf!18326 (xs!15017 IArray!23635) (csize!23861 Int)) (Empty!11815) )
))
(declare-datatypes ((BalanceConc!23244 0))(
  ( (BalanceConc!23245 (c!632925 Conc!11815)) )
))
(declare-datatypes ((TokenValueInjection!11488 0))(
  ( (TokenValueInjection!11489 (toValue!8092 Int) (toChars!7951 Int)) )
))
(declare-datatypes ((Rule!11400 0))(
  ( (Rule!11401 (regex!5800 Regex!10559) (tag!6580 String!43484) (isSeparator!5800 Bool) (transformation!5800 TokenValueInjection!11488)) )
))
(declare-datatypes ((Token!10966 0))(
  ( (Token!10967 (value!185760 TokenValue!6030) (rule!8614 Rule!11400) (size!29519 Int) (originalCharacters!6514 List!38759)) )
))
(declare-datatypes ((tuple2!38500 0))(
  ( (tuple2!38501 (_1!22384 Token!10966) (_2!22384 List!38759)) )
))
(declare-datatypes ((Option!8228 0))(
  ( (None!8227) (Some!8227 (v!38119 tuple2!38500)) )
))
(declare-fun lt!1274042 () Option!8228)

(declare-fun lt!1274057 () TokenValue!6030)

(declare-fun lt!1274045 () Int)

(declare-fun lt!1274028 () tuple2!38500)

(assert (=> b!3661853 (= res!1486642 (not (= lt!1274042 (Some!8227 (tuple2!38501 (Token!10967 lt!1274057 (rule!8614 (_1!22384 lt!1274028)) lt!1274045 lt!1274048) (_2!22384 lt!1274028))))))))

(declare-fun lt!1274056 () BalanceConc!23244)

(declare-fun size!29520 (BalanceConc!23244) Int)

(assert (=> b!3661853 (= lt!1274045 (size!29520 lt!1274056))))

(declare-fun apply!9302 (TokenValueInjection!11488 BalanceConc!23244) TokenValue!6030)

(assert (=> b!3661853 (= lt!1274057 (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056))))

(declare-fun lt!1274071 () Unit!55962)

(declare-fun lemmaCharactersSize!845 (Token!10966) Unit!55962)

(assert (=> b!3661853 (= lt!1274071 (lemmaCharactersSize!845 (_1!22384 lt!1274028)))))

(declare-fun lt!1274053 () Unit!55962)

(declare-fun lemmaEqSameImage!983 (TokenValueInjection!11488 BalanceConc!23244 BalanceConc!23244) Unit!55962)

(declare-fun seqFromList!4349 (List!38759) BalanceConc!23244)

(assert (=> b!3661853 (= lt!1274053 (lemmaEqSameImage!983 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056 (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028)))))))

(declare-fun lt!1274043 () Unit!55962)

(declare-fun lemmaSemiInverse!1549 (TokenValueInjection!11488 BalanceConc!23244) Unit!55962)

(assert (=> b!3661853 (= lt!1274043 (lemmaSemiInverse!1549 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056))))

(declare-fun b!3661854 () Bool)

(declare-fun e!2267408 () Unit!55962)

(assert (=> b!3661854 (= e!2267403 e!2267408)))

(declare-fun lt!1274039 () List!38759)

(declare-fun lt!1274047 () List!38759)

(declare-fun lt!1274062 () Unit!55962)

(declare-fun suffix!1395 () List!38759)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!108 (List!38759 List!38759 List!38759 List!38759) Unit!55962)

(assert (=> b!3661854 (= lt!1274062 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!108 lt!1274047 suffix!1395 lt!1274048 lt!1274039))))

(declare-fun lt!1274035 () C!21304)

(declare-fun contains!7665 (List!38759 C!21304) Bool)

(assert (=> b!3661854 (contains!7665 lt!1274048 lt!1274035)))

(declare-fun c!632922 () Bool)

(declare-fun rule!403 () Rule!11400)

(assert (=> b!3661854 (= c!632922 (isSeparator!5800 rule!403))))

(declare-fun b!3661855 () Bool)

(declare-fun res!1486657 () Bool)

(declare-fun e!2267422 () Bool)

(assert (=> b!3661855 (=> (not res!1486657) (not e!2267422))))

(declare-datatypes ((LexerInterface!5389 0))(
  ( (LexerInterfaceExt!5386 (__x!24278 Int)) (Lexer!5387) )
))
(declare-fun thiss!23823 () LexerInterface!5389)

(declare-datatypes ((List!38761 0))(
  ( (Nil!38637) (Cons!38637 (h!44057 Rule!11400) (t!298624 List!38761)) )
))
(declare-fun rules!3307 () List!38761)

(declare-fun rulesInvariant!4786 (LexerInterface!5389 List!38761) Bool)

(assert (=> b!3661855 (= res!1486657 (rulesInvariant!4786 thiss!23823 rules!3307))))

(declare-fun b!3661856 () Bool)

(declare-fun e!2267404 () Bool)

(declare-fun e!2267431 () Bool)

(assert (=> b!3661856 (= e!2267404 e!2267431)))

(declare-fun res!1486651 () Bool)

(assert (=> b!3661856 (=> res!1486651 e!2267431)))

(declare-fun isPrefix!3163 (List!38759 List!38759) Bool)

(assert (=> b!3661856 (= res!1486651 (not (isPrefix!3163 lt!1274047 lt!1274047)))))

(declare-fun isEmpty!22916 (List!38759) Bool)

(declare-fun getSuffix!1716 (List!38759 List!38759) List!38759)

(assert (=> b!3661856 (isEmpty!22916 (getSuffix!1716 lt!1274047 lt!1274047))))

(declare-fun lt!1274054 () Unit!55962)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!180 (List!38759) Unit!55962)

(assert (=> b!3661856 (= lt!1274054 (lemmaGetSuffixOnListWithItSelfIsEmpty!180 lt!1274047))))

(declare-fun b!3661857 () Bool)

(declare-fun res!1486656 () Bool)

(assert (=> b!3661857 (=> res!1486656 e!2267404)))

(declare-fun getIndex!468 (List!38761 Rule!11400) Int)

(assert (=> b!3661857 (= res!1486656 (>= (getIndex!468 rules!3307 (rule!8614 (_1!22384 lt!1274028))) (getIndex!468 rules!3307 rule!403)))))

(declare-fun b!3661859 () Bool)

(declare-fun e!2267407 () Bool)

(declare-fun e!2267425 () Bool)

(assert (=> b!3661859 (= e!2267407 (not e!2267425))))

(declare-fun res!1486644 () Bool)

(assert (=> b!3661859 (=> res!1486644 e!2267425)))

(declare-fun matchR!5128 (Regex!10559 List!38759) Bool)

(assert (=> b!3661859 (= res!1486644 (not (matchR!5128 (regex!5800 rule!403) lt!1274047)))))

(declare-fun ruleValid!2064 (LexerInterface!5389 Rule!11400) Bool)

(assert (=> b!3661859 (ruleValid!2064 thiss!23823 rule!403)))

(declare-fun lt!1274049 () Unit!55962)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1218 (LexerInterface!5389 Rule!11400 List!38761) Unit!55962)

(assert (=> b!3661859 (= lt!1274049 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1218 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!264884 () Bool)

(declare-fun call!264890 () List!38759)

(declare-fun usedCharacters!1012 (Regex!10559) List!38759)

(assert (=> bm!264884 (= call!264890 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3661860 () Bool)

(declare-fun e!2267405 () Bool)

(declare-fun tp!1115344 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11400)

(declare-fun inv!52101 (String!43484) Bool)

(declare-fun inv!52104 (TokenValueInjection!11488) Bool)

(assert (=> b!3661860 (= e!2267405 (and tp!1115344 (inv!52101 (tag!6580 anOtherTypeRule!33)) (inv!52104 (transformation!5800 anOtherTypeRule!33)) e!2267423))))

(declare-fun b!3661861 () Bool)

(assert (=> b!3661861 false))

(declare-fun lt!1274060 () Unit!55962)

(declare-fun call!264891 () Unit!55962)

(assert (=> b!3661861 (= lt!1274060 call!264891)))

(declare-fun call!264889 () Bool)

(assert (=> b!3661861 (not call!264889)))

(declare-fun lt!1274029 () Unit!55962)

(declare-fun lt!1274052 () C!21304)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!328 (LexerInterface!5389 List!38761 List!38761 Rule!11400 Rule!11400 C!21304) Unit!55962)

(assert (=> b!3661861 (= lt!1274029 (lemmaSepRuleNotContainsCharContainedInANonSepRule!328 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8614 (_1!22384 lt!1274028)) lt!1274052))))

(declare-fun e!2267414 () Unit!55962)

(declare-fun Unit!55966 () Unit!55962)

(assert (=> b!3661861 (= e!2267414 Unit!55966)))

(declare-fun b!3661862 () Bool)

(declare-fun e!2267428 () Unit!55962)

(declare-fun e!2267413 () Unit!55962)

(assert (=> b!3661862 (= e!2267428 e!2267413)))

(declare-fun c!632923 () Bool)

(assert (=> b!3661862 (= c!632923 (not (isSeparator!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3661863 () Bool)

(declare-fun e!2267398 () Bool)

(assert (=> b!3661863 (= e!2267398 e!2267416)))

(declare-fun res!1486648 () Bool)

(assert (=> b!3661863 (=> res!1486648 e!2267416)))

(assert (=> b!3661863 (= res!1486648 (not (isPrefix!3163 lt!1274048 lt!1274039)))))

(declare-fun ++!9616 (List!38759 List!38759) List!38759)

(assert (=> b!3661863 (isPrefix!3163 lt!1274048 (++!9616 lt!1274048 (_2!22384 lt!1274028)))))

(declare-fun lt!1274031 () Unit!55962)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2082 (List!38759 List!38759) Unit!55962)

(assert (=> b!3661863 (= lt!1274031 (lemmaConcatTwoListThenFirstIsPrefix!2082 lt!1274048 (_2!22384 lt!1274028)))))

(declare-fun list!14334 (BalanceConc!23244) List!38759)

(assert (=> b!3661863 (= lt!1274048 (list!14334 lt!1274056))))

(declare-fun charsOf!3814 (Token!10966) BalanceConc!23244)

(assert (=> b!3661863 (= lt!1274056 (charsOf!3814 (_1!22384 lt!1274028)))))

(declare-fun e!2267399 () Bool)

(assert (=> b!3661863 e!2267399))

(declare-fun res!1486643 () Bool)

(assert (=> b!3661863 (=> (not res!1486643) (not e!2267399))))

(declare-datatypes ((Option!8229 0))(
  ( (None!8228) (Some!8228 (v!38120 Rule!11400)) )
))
(declare-fun lt!1274070 () Option!8229)

(declare-fun isDefined!6460 (Option!8229) Bool)

(assert (=> b!3661863 (= res!1486643 (isDefined!6460 lt!1274070))))

(declare-fun getRuleFromTag!1404 (LexerInterface!5389 List!38761 String!43484) Option!8229)

(assert (=> b!3661863 (= lt!1274070 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun lt!1274059 () Unit!55962)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1404 (LexerInterface!5389 List!38761 List!38759 Token!10966) Unit!55962)

(assert (=> b!3661863 (= lt!1274059 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1404 thiss!23823 rules!3307 lt!1274039 (_1!22384 lt!1274028)))))

(declare-fun get!12738 (Option!8228) tuple2!38500)

(assert (=> b!3661863 (= lt!1274028 (get!12738 lt!1274042))))

(declare-fun lt!1274051 () Unit!55962)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1067 (LexerInterface!5389 List!38761 List!38759 List!38759) Unit!55962)

(assert (=> b!3661863 (= lt!1274051 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1067 thiss!23823 rules!3307 lt!1274047 suffix!1395))))

(declare-fun maxPrefix!2923 (LexerInterface!5389 List!38761 List!38759) Option!8228)

(assert (=> b!3661863 (= lt!1274042 (maxPrefix!2923 thiss!23823 rules!3307 lt!1274039))))

(assert (=> b!3661863 (isPrefix!3163 lt!1274047 lt!1274039)))

(declare-fun lt!1274032 () Unit!55962)

(assert (=> b!3661863 (= lt!1274032 (lemmaConcatTwoListThenFirstIsPrefix!2082 lt!1274047 suffix!1395))))

(assert (=> b!3661863 (= lt!1274039 (++!9616 lt!1274047 suffix!1395))))

(declare-fun b!3661864 () Bool)

(declare-fun res!1486658 () Bool)

(assert (=> b!3661864 (=> (not res!1486658) (not e!2267422))))

(declare-fun isEmpty!22917 (List!38761) Bool)

(assert (=> b!3661864 (= res!1486658 (not (isEmpty!22917 rules!3307)))))

(declare-fun b!3661865 () Bool)

(declare-fun res!1486659 () Bool)

(assert (=> b!3661865 (=> (not res!1486659) (not e!2267407))))

(declare-fun token!511 () Token!10966)

(assert (=> b!3661865 (= res!1486659 (= (rule!8614 token!511) rule!403))))

(declare-fun tp!1115349 () Bool)

(declare-fun e!2267429 () Bool)

(declare-fun e!2267427 () Bool)

(declare-fun b!3661866 () Bool)

(assert (=> b!3661866 (= e!2267429 (and tp!1115349 (inv!52101 (tag!6580 rule!403)) (inv!52104 (transformation!5800 rule!403)) e!2267427))))

(declare-fun e!2267419 () Bool)

(declare-fun e!2267412 () Bool)

(declare-fun tp!1115346 () Bool)

(declare-fun b!3661867 () Bool)

(declare-fun inv!21 (TokenValue!6030) Bool)

(assert (=> b!3661867 (= e!2267419 (and (inv!21 (value!185760 token!511)) e!2267412 tp!1115346))))

(declare-fun b!3661868 () Bool)

(assert (=> b!3661868 (= e!2267428 e!2267414)))

(declare-fun c!632920 () Bool)

(assert (=> b!3661868 (= c!632920 (isSeparator!5800 (rule!8614 (_1!22384 lt!1274028))))))

(declare-fun b!3661869 () Bool)

(declare-fun e!2267432 () Bool)

(declare-fun tp_is_empty!18201 () Bool)

(declare-fun tp!1115340 () Bool)

(assert (=> b!3661869 (= e!2267432 (and tp_is_empty!18201 tp!1115340))))

(declare-fun b!3661870 () Bool)

(declare-fun res!1486660 () Bool)

(assert (=> b!3661870 (=> (not res!1486660) (not e!2267422))))

(declare-fun contains!7666 (List!38761 Rule!11400) Bool)

(assert (=> b!3661870 (= res!1486660 (contains!7666 rules!3307 rule!403))))

(declare-fun b!3661871 () Bool)

(declare-fun res!1486639 () Bool)

(assert (=> b!3661871 (=> res!1486639 e!2267431)))

(assert (=> b!3661871 (= res!1486639 (not (contains!7666 rules!3307 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun tp!1115337 () Bool)

(declare-fun e!2267424 () Bool)

(declare-fun e!2267402 () Bool)

(declare-fun b!3661872 () Bool)

(assert (=> b!3661872 (= e!2267424 (and tp!1115337 (inv!52101 (tag!6580 (h!44057 rules!3307))) (inv!52104 (transformation!5800 (h!44057 rules!3307))) e!2267402))))

(declare-fun b!3661873 () Bool)

(declare-fun e!2267426 () Bool)

(declare-fun tp!1115338 () Bool)

(assert (=> b!3661873 (= e!2267426 (and e!2267424 tp!1115338))))

(declare-fun b!3661874 () Bool)

(declare-fun res!1486650 () Bool)

(assert (=> b!3661874 (=> res!1486650 e!2267425)))

(assert (=> b!3661874 (= res!1486650 (isEmpty!22916 suffix!1395))))

(declare-fun b!3661875 () Bool)

(declare-fun e!2267420 () Bool)

(assert (=> b!3661875 (= e!2267422 e!2267420)))

(declare-fun res!1486637 () Bool)

(assert (=> b!3661875 (=> (not res!1486637) (not e!2267420))))

(declare-fun lt!1274066 () Option!8228)

(declare-fun isDefined!6461 (Option!8228) Bool)

(assert (=> b!3661875 (= res!1486637 (isDefined!6461 lt!1274066))))

(assert (=> b!3661875 (= lt!1274066 (maxPrefix!2923 thiss!23823 rules!3307 lt!1274047))))

(declare-fun lt!1274044 () BalanceConc!23244)

(assert (=> b!3661875 (= lt!1274047 (list!14334 lt!1274044))))

(assert (=> b!3661875 (= lt!1274044 (charsOf!3814 token!511))))

(declare-fun b!3661876 () Bool)

(declare-fun e!2267401 () Unit!55962)

(declare-fun Unit!55967 () Unit!55962)

(assert (=> b!3661876 (= e!2267401 Unit!55967)))

(declare-fun b!3661877 () Bool)

(declare-fun e!2267409 () Bool)

(assert (=> b!3661877 (= e!2267409 e!2267404)))

(declare-fun res!1486647 () Bool)

(assert (=> b!3661877 (=> res!1486647 e!2267404)))

(assert (=> b!3661877 (= res!1486647 (= (rule!8614 (_1!22384 lt!1274028)) (rule!8614 token!511)))))

(assert (=> b!3661877 (= lt!1274048 lt!1274047)))

(declare-fun lt!1274027 () Unit!55962)

(declare-fun lemmaIsPrefixSameLengthThenSameList!625 (List!38759 List!38759 List!38759) Unit!55962)

(assert (=> b!3661877 (= lt!1274027 (lemmaIsPrefixSameLengthThenSameList!625 lt!1274048 lt!1274047 lt!1274039))))

(declare-fun lt!1274068 () Unit!55962)

(assert (=> b!3661877 (= lt!1274068 e!2267401)))

(declare-fun c!632917 () Bool)

(declare-fun lt!1274067 () Int)

(assert (=> b!3661877 (= c!632917 (< lt!1274045 lt!1274067))))

(declare-fun lt!1274061 () Unit!55962)

(assert (=> b!3661877 (= lt!1274061 e!2267403)))

(declare-fun c!632919 () Bool)

(assert (=> b!3661877 (= c!632919 (> lt!1274045 lt!1274067))))

(assert (=> b!3661877 (= lt!1274067 (size!29520 lt!1274044))))

(declare-fun lt!1274050 () Unit!55962)

(assert (=> b!3661877 (= lt!1274050 e!2267428)))

(declare-fun c!632921 () Bool)

(assert (=> b!3661877 (= c!632921 (isSeparator!5800 rule!403))))

(declare-fun lt!1274055 () Unit!55962)

(declare-fun e!2267411 () Unit!55962)

(assert (=> b!3661877 (= lt!1274055 e!2267411)))

(declare-fun c!632918 () Bool)

(declare-fun lt!1274064 () List!38759)

(assert (=> b!3661877 (= c!632918 (not (contains!7665 lt!1274064 lt!1274052)))))

(declare-fun head!7830 (List!38759) C!21304)

(assert (=> b!3661877 (= lt!1274052 (head!7830 lt!1274048))))

(declare-fun bm!264885 () Bool)

(declare-fun call!264894 () List!38759)

(assert (=> bm!264885 (= call!264894 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3661878 () Bool)

(declare-fun res!1486641 () Bool)

(assert (=> b!3661878 (=> res!1486641 e!2267398)))

(assert (=> b!3661878 (= res!1486641 (not (contains!7665 (usedCharacters!1012 (regex!5800 anOtherTypeRule!33)) lt!1274035)))))

(declare-fun b!3661879 () Bool)

(declare-fun e!2267410 () Bool)

(assert (=> b!3661879 (= e!2267399 e!2267410)))

(declare-fun res!1486655 () Bool)

(assert (=> b!3661879 (=> (not res!1486655) (not e!2267410))))

(declare-fun lt!1274030 () Rule!11400)

(assert (=> b!3661879 (= res!1486655 (matchR!5128 (regex!5800 lt!1274030) (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))))))

(declare-fun get!12739 (Option!8229) Rule!11400)

(assert (=> b!3661879 (= lt!1274030 (get!12739 lt!1274070))))

(declare-fun b!3661880 () Bool)

(assert (=> b!3661880 (= e!2267425 e!2267398)))

(declare-fun res!1486640 () Bool)

(assert (=> b!3661880 (=> res!1486640 e!2267398)))

(assert (=> b!3661880 (= res!1486640 (contains!7665 lt!1274064 lt!1274035))))

(assert (=> b!3661880 (= lt!1274035 (head!7830 suffix!1395))))

(assert (=> b!3661880 (= lt!1274064 (usedCharacters!1012 (regex!5800 rule!403)))))

(declare-fun b!3661881 () Bool)

(declare-fun Unit!55968 () Unit!55962)

(assert (=> b!3661881 (= e!2267414 Unit!55968)))

(declare-fun bm!264886 () Bool)

(declare-fun call!264893 () Bool)

(assert (=> bm!264886 (= call!264893 (contains!7665 call!264894 lt!1274035))))

(declare-fun b!3661882 () Bool)

(declare-fun Unit!55969 () Unit!55962)

(assert (=> b!3661882 (= e!2267411 Unit!55969)))

(declare-fun b!3661883 () Bool)

(declare-fun res!1486646 () Bool)

(assert (=> b!3661883 (=> res!1486646 e!2267416)))

(assert (=> b!3661883 (= res!1486646 (not (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048)))))

(declare-fun b!3661884 () Bool)

(declare-fun res!1486652 () Bool)

(assert (=> b!3661884 (=> res!1486652 e!2267398)))

(declare-fun sepAndNonSepRulesDisjointChars!1968 (List!38761 List!38761) Bool)

(assert (=> b!3661884 (= res!1486652 (not (sepAndNonSepRulesDisjointChars!1968 rules!3307 rules!3307)))))

(declare-fun b!3661885 () Bool)

(declare-fun Unit!55970 () Unit!55962)

(assert (=> b!3661885 (= e!2267411 Unit!55970)))

(declare-fun lt!1274033 () Unit!55962)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (Regex!10559 List!38759 C!21304) Unit!55962)

(assert (=> b!3661885 (= lt!1274033 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 rule!403) lt!1274047 lt!1274052))))

(assert (=> b!3661885 false))

(declare-fun b!3661886 () Bool)

(assert (=> b!3661886 (= e!2267406 e!2267409)))

(declare-fun res!1486654 () Bool)

(assert (=> b!3661886 (=> res!1486654 e!2267409)))

(declare-fun lt!1274041 () Option!8228)

(declare-fun lt!1274069 () List!38759)

(assert (=> b!3661886 (= res!1486654 (or (not (= lt!1274069 (_2!22384 lt!1274028))) (not (= lt!1274041 (Some!8227 (tuple2!38501 (_1!22384 lt!1274028) lt!1274069))))))))

(assert (=> b!3661886 (= (_2!22384 lt!1274028) lt!1274069)))

(declare-fun lt!1274072 () Unit!55962)

(declare-fun lemmaSamePrefixThenSameSuffix!1490 (List!38759 List!38759 List!38759 List!38759 List!38759) Unit!55962)

(assert (=> b!3661886 (= lt!1274072 (lemmaSamePrefixThenSameSuffix!1490 lt!1274048 (_2!22384 lt!1274028) lt!1274048 lt!1274069 lt!1274039))))

(assert (=> b!3661886 (= lt!1274069 (getSuffix!1716 lt!1274039 lt!1274048))))

(declare-fun lt!1274063 () Int)

(declare-fun lt!1274038 () TokenValue!6030)

(assert (=> b!3661886 (= lt!1274041 (Some!8227 (tuple2!38501 (Token!10967 lt!1274038 (rule!8614 (_1!22384 lt!1274028)) lt!1274063 lt!1274048) (_2!22384 lt!1274028))))))

(declare-fun maxPrefixOneRule!2061 (LexerInterface!5389 Rule!11400 List!38759) Option!8228)

(assert (=> b!3661886 (= lt!1274041 (maxPrefixOneRule!2061 thiss!23823 (rule!8614 (_1!22384 lt!1274028)) lt!1274039))))

(declare-fun size!29521 (List!38759) Int)

(assert (=> b!3661886 (= lt!1274063 (size!29521 lt!1274048))))

(assert (=> b!3661886 (= lt!1274038 (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) (seqFromList!4349 lt!1274048)))))

(declare-fun lt!1274074 () Unit!55962)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1117 (LexerInterface!5389 List!38761 List!38759 List!38759 List!38759 Rule!11400) Unit!55962)

(assert (=> b!3661886 (= lt!1274074 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1117 thiss!23823 rules!3307 lt!1274048 lt!1274039 (_2!22384 lt!1274028) (rule!8614 (_1!22384 lt!1274028))))))

(declare-fun b!3661887 () Bool)

(declare-fun Unit!55971 () Unit!55962)

(assert (=> b!3661887 (= e!2267401 Unit!55971)))

(declare-fun lt!1274065 () Unit!55962)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!342 (LexerInterface!5389 List!38761 Rule!11400 List!38759 List!38759 List!38759 Rule!11400) Unit!55962)

(assert (=> b!3661887 (= lt!1274065 (lemmaMaxPrefixOutputsMaxPrefix!342 thiss!23823 rules!3307 (rule!8614 (_1!22384 lt!1274028)) lt!1274048 lt!1274039 lt!1274047 rule!403))))

(assert (=> b!3661887 false))

(declare-fun bm!264887 () Bool)

(assert (=> bm!264887 (= call!264889 (contains!7665 call!264890 lt!1274052))))

(declare-fun b!3661888 () Bool)

(assert (=> b!3661888 (= e!2267410 (= (rule!8614 (_1!22384 lt!1274028)) lt!1274030))))

(declare-fun bm!264888 () Bool)

(declare-fun call!264892 () Unit!55962)

(assert (=> bm!264888 (= call!264892 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274035))))

(declare-fun b!3661889 () Bool)

(assert (=> b!3661889 false))

(declare-fun lt!1274058 () Unit!55962)

(assert (=> b!3661889 (= lt!1274058 call!264891)))

(assert (=> b!3661889 (not call!264889)))

(declare-fun lt!1274046 () Unit!55962)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!446 (LexerInterface!5389 List!38761 List!38761 Rule!11400 Rule!11400 C!21304) Unit!55962)

(assert (=> b!3661889 (= lt!1274046 (lemmaNonSepRuleNotContainsCharContainedInASepRule!446 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) rule!403 lt!1274052))))

(declare-fun Unit!55972 () Unit!55962)

(assert (=> b!3661889 (= e!2267413 Unit!55972)))

(declare-fun b!3661890 () Bool)

(declare-fun res!1486649 () Bool)

(assert (=> b!3661890 (=> (not res!1486649) (not e!2267422))))

(assert (=> b!3661890 (= res!1486649 (not (= (isSeparator!5800 anOtherTypeRule!33) (isSeparator!5800 rule!403))))))

(assert (=> b!3661891 (= e!2267402 (and tp!1115336 tp!1115342))))

(declare-fun bm!264889 () Bool)

(assert (=> bm!264889 (= call!264891 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274052))))

(declare-fun res!1486645 () Bool)

(assert (=> start!342834 (=> (not res!1486645) (not e!2267422))))

(get-info :version)

(assert (=> start!342834 (= res!1486645 ((_ is Lexer!5387) thiss!23823))))

(assert (=> start!342834 e!2267422))

(assert (=> start!342834 e!2267426))

(assert (=> start!342834 e!2267432))

(assert (=> start!342834 true))

(declare-fun inv!52105 (Token!10966) Bool)

(assert (=> start!342834 (and (inv!52105 token!511) e!2267419)))

(assert (=> start!342834 e!2267429))

(assert (=> start!342834 e!2267405))

(declare-fun e!2267400 () Bool)

(declare-fun b!3661858 () Bool)

(declare-fun tp!1115348 () Bool)

(assert (=> b!3661858 (= e!2267412 (and tp!1115348 (inv!52101 (tag!6580 (rule!8614 token!511))) (inv!52104 (transformation!5800 (rule!8614 token!511))) e!2267400))))

(assert (=> b!3661892 (= e!2267400 (and tp!1115339 tp!1115341))))

(assert (=> b!3661893 (= e!2267427 (and tp!1115345 tp!1115350))))

(declare-fun b!3661894 () Bool)

(declare-fun Unit!55973 () Unit!55962)

(assert (=> b!3661894 (= e!2267413 Unit!55973)))

(declare-fun b!3661895 () Bool)

(assert (=> b!3661895 false))

(declare-fun lt!1274073 () Unit!55962)

(assert (=> b!3661895 (= lt!1274073 call!264892)))

(assert (=> b!3661895 (not call!264893)))

(declare-fun lt!1274037 () Unit!55962)

(assert (=> b!3661895 (= lt!1274037 (lemmaNonSepRuleNotContainsCharContainedInASepRule!446 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) anOtherTypeRule!33 lt!1274035))))

(declare-fun Unit!55974 () Unit!55962)

(assert (=> b!3661895 (= e!2267408 Unit!55974)))

(declare-fun b!3661896 () Bool)

(assert (=> b!3661896 (= e!2267420 e!2267407)))

(declare-fun res!1486638 () Bool)

(assert (=> b!3661896 (=> (not res!1486638) (not e!2267407))))

(declare-fun lt!1274036 () tuple2!38500)

(assert (=> b!3661896 (= res!1486638 (= (_1!22384 lt!1274036) token!511))))

(assert (=> b!3661896 (= lt!1274036 (get!12738 lt!1274066))))

(declare-fun b!3661897 () Bool)

(declare-fun res!1486661 () Bool)

(assert (=> b!3661897 (=> (not res!1486661) (not e!2267422))))

(assert (=> b!3661897 (= res!1486661 (contains!7666 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3661898 () Bool)

(declare-fun res!1486653 () Bool)

(assert (=> b!3661898 (=> (not res!1486653) (not e!2267407))))

(assert (=> b!3661898 (= res!1486653 (isEmpty!22916 (_2!22384 lt!1274036)))))

(declare-fun b!3661899 () Bool)

(assert (=> b!3661899 false))

(declare-fun lt!1274040 () Unit!55962)

(assert (=> b!3661899 (= lt!1274040 call!264892)))

(assert (=> b!3661899 (not call!264893)))

(declare-fun lt!1274034 () Unit!55962)

(assert (=> b!3661899 (= lt!1274034 (lemmaSepRuleNotContainsCharContainedInANonSepRule!328 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8614 (_1!22384 lt!1274028)) lt!1274035))))

(declare-fun Unit!55975 () Unit!55962)

(assert (=> b!3661899 (= e!2267408 Unit!55975)))

(declare-fun b!3661900 () Bool)

(assert (=> b!3661900 (= e!2267431 (not (isEmpty!22916 lt!1274047)))))

(assert (= (and start!342834 res!1486645) b!3661864))

(assert (= (and b!3661864 res!1486658) b!3661855))

(assert (= (and b!3661855 res!1486657) b!3661870))

(assert (= (and b!3661870 res!1486660) b!3661897))

(assert (= (and b!3661897 res!1486661) b!3661890))

(assert (= (and b!3661890 res!1486649) b!3661875))

(assert (= (and b!3661875 res!1486637) b!3661896))

(assert (= (and b!3661896 res!1486638) b!3661898))

(assert (= (and b!3661898 res!1486653) b!3661865))

(assert (= (and b!3661865 res!1486659) b!3661859))

(assert (= (and b!3661859 (not res!1486644)) b!3661874))

(assert (= (and b!3661874 (not res!1486650)) b!3661880))

(assert (= (and b!3661880 (not res!1486640)) b!3661878))

(assert (= (and b!3661878 (not res!1486641)) b!3661884))

(assert (= (and b!3661884 (not res!1486652)) b!3661863))

(assert (= (and b!3661863 res!1486643) b!3661879))

(assert (= (and b!3661879 res!1486655) b!3661888))

(assert (= (and b!3661863 (not res!1486648)) b!3661883))

(assert (= (and b!3661883 (not res!1486646)) b!3661853))

(assert (= (and b!3661853 (not res!1486642)) b!3661886))

(assert (= (and b!3661886 (not res!1486654)) b!3661877))

(assert (= (and b!3661877 c!632918) b!3661885))

(assert (= (and b!3661877 (not c!632918)) b!3661882))

(assert (= (and b!3661877 c!632921) b!3661862))

(assert (= (and b!3661877 (not c!632921)) b!3661868))

(assert (= (and b!3661862 c!632923) b!3661889))

(assert (= (and b!3661862 (not c!632923)) b!3661894))

(assert (= (and b!3661868 c!632920) b!3661861))

(assert (= (and b!3661868 (not c!632920)) b!3661881))

(assert (= (or b!3661889 b!3661861) bm!264889))

(assert (= (or b!3661889 b!3661861) bm!264884))

(assert (= (or b!3661889 b!3661861) bm!264887))

(assert (= (and b!3661877 c!632919) b!3661854))

(assert (= (and b!3661877 (not c!632919)) b!3661851))

(assert (= (and b!3661854 c!632922) b!3661899))

(assert (= (and b!3661854 (not c!632922)) b!3661895))

(assert (= (or b!3661899 b!3661895) bm!264888))

(assert (= (or b!3661899 b!3661895) bm!264885))

(assert (= (or b!3661899 b!3661895) bm!264886))

(assert (= (and b!3661877 c!632917) b!3661887))

(assert (= (and b!3661877 (not c!632917)) b!3661876))

(assert (= (and b!3661877 (not res!1486647)) b!3661857))

(assert (= (and b!3661857 (not res!1486656)) b!3661856))

(assert (= (and b!3661856 (not res!1486651)) b!3661871))

(assert (= (and b!3661871 (not res!1486639)) b!3661900))

(assert (= b!3661872 b!3661891))

(assert (= b!3661873 b!3661872))

(assert (= (and start!342834 ((_ is Cons!38637) rules!3307)) b!3661873))

(assert (= (and start!342834 ((_ is Cons!38635) suffix!1395)) b!3661869))

(assert (= b!3661858 b!3661892))

(assert (= b!3661867 b!3661858))

(assert (= start!342834 b!3661867))

(assert (= b!3661866 b!3661893))

(assert (= start!342834 b!3661866))

(assert (= b!3661860 b!3661852))

(assert (= start!342834 b!3661860))

(declare-fun m!4168467 () Bool)

(assert (=> b!3661861 m!4168467))

(declare-fun m!4168469 () Bool)

(assert (=> b!3661886 m!4168469))

(declare-fun m!4168471 () Bool)

(assert (=> b!3661886 m!4168471))

(declare-fun m!4168473 () Bool)

(assert (=> b!3661886 m!4168473))

(assert (=> b!3661886 m!4168469))

(declare-fun m!4168475 () Bool)

(assert (=> b!3661886 m!4168475))

(declare-fun m!4168477 () Bool)

(assert (=> b!3661886 m!4168477))

(declare-fun m!4168479 () Bool)

(assert (=> b!3661886 m!4168479))

(declare-fun m!4168481 () Bool)

(assert (=> b!3661886 m!4168481))

(declare-fun m!4168483 () Bool)

(assert (=> b!3661863 m!4168483))

(declare-fun m!4168485 () Bool)

(assert (=> b!3661863 m!4168485))

(declare-fun m!4168487 () Bool)

(assert (=> b!3661863 m!4168487))

(declare-fun m!4168489 () Bool)

(assert (=> b!3661863 m!4168489))

(declare-fun m!4168491 () Bool)

(assert (=> b!3661863 m!4168491))

(declare-fun m!4168493 () Bool)

(assert (=> b!3661863 m!4168493))

(declare-fun m!4168495 () Bool)

(assert (=> b!3661863 m!4168495))

(declare-fun m!4168497 () Bool)

(assert (=> b!3661863 m!4168497))

(declare-fun m!4168499 () Bool)

(assert (=> b!3661863 m!4168499))

(declare-fun m!4168501 () Bool)

(assert (=> b!3661863 m!4168501))

(declare-fun m!4168503 () Bool)

(assert (=> b!3661863 m!4168503))

(declare-fun m!4168505 () Bool)

(assert (=> b!3661863 m!4168505))

(declare-fun m!4168507 () Bool)

(assert (=> b!3661863 m!4168507))

(assert (=> b!3661863 m!4168491))

(declare-fun m!4168509 () Bool)

(assert (=> b!3661863 m!4168509))

(declare-fun m!4168511 () Bool)

(assert (=> b!3661863 m!4168511))

(declare-fun m!4168513 () Bool)

(assert (=> bm!264884 m!4168513))

(declare-fun m!4168515 () Bool)

(assert (=> b!3661880 m!4168515))

(declare-fun m!4168517 () Bool)

(assert (=> b!3661880 m!4168517))

(declare-fun m!4168519 () Bool)

(assert (=> b!3661880 m!4168519))

(declare-fun m!4168521 () Bool)

(assert (=> b!3661857 m!4168521))

(declare-fun m!4168523 () Bool)

(assert (=> b!3661857 m!4168523))

(declare-fun m!4168525 () Bool)

(assert (=> b!3661899 m!4168525))

(declare-fun m!4168527 () Bool)

(assert (=> b!3661877 m!4168527))

(declare-fun m!4168529 () Bool)

(assert (=> b!3661877 m!4168529))

(declare-fun m!4168531 () Bool)

(assert (=> b!3661877 m!4168531))

(declare-fun m!4168533 () Bool)

(assert (=> b!3661877 m!4168533))

(declare-fun m!4168535 () Bool)

(assert (=> bm!264889 m!4168535))

(declare-fun m!4168537 () Bool)

(assert (=> b!3661856 m!4168537))

(declare-fun m!4168539 () Bool)

(assert (=> b!3661856 m!4168539))

(assert (=> b!3661856 m!4168539))

(declare-fun m!4168541 () Bool)

(assert (=> b!3661856 m!4168541))

(declare-fun m!4168543 () Bool)

(assert (=> b!3661856 m!4168543))

(declare-fun m!4168545 () Bool)

(assert (=> b!3661900 m!4168545))

(declare-fun m!4168547 () Bool)

(assert (=> b!3661854 m!4168547))

(declare-fun m!4168549 () Bool)

(assert (=> b!3661854 m!4168549))

(declare-fun m!4168551 () Bool)

(assert (=> b!3661872 m!4168551))

(declare-fun m!4168553 () Bool)

(assert (=> b!3661872 m!4168553))

(declare-fun m!4168555 () Bool)

(assert (=> b!3661895 m!4168555))

(assert (=> bm!264885 m!4168513))

(declare-fun m!4168557 () Bool)

(assert (=> b!3661867 m!4168557))

(declare-fun m!4168559 () Bool)

(assert (=> b!3661870 m!4168559))

(declare-fun m!4168561 () Bool)

(assert (=> bm!264888 m!4168561))

(declare-fun m!4168563 () Bool)

(assert (=> b!3661897 m!4168563))

(declare-fun m!4168565 () Bool)

(assert (=> b!3661898 m!4168565))

(declare-fun m!4168567 () Bool)

(assert (=> b!3661896 m!4168567))

(declare-fun m!4168569 () Bool)

(assert (=> b!3661875 m!4168569))

(declare-fun m!4168571 () Bool)

(assert (=> b!3661875 m!4168571))

(declare-fun m!4168573 () Bool)

(assert (=> b!3661875 m!4168573))

(declare-fun m!4168575 () Bool)

(assert (=> b!3661875 m!4168575))

(declare-fun m!4168577 () Bool)

(assert (=> b!3661878 m!4168577))

(assert (=> b!3661878 m!4168577))

(declare-fun m!4168579 () Bool)

(assert (=> b!3661878 m!4168579))

(assert (=> b!3661879 m!4168501))

(assert (=> b!3661879 m!4168501))

(declare-fun m!4168581 () Bool)

(assert (=> b!3661879 m!4168581))

(assert (=> b!3661879 m!4168581))

(declare-fun m!4168583 () Bool)

(assert (=> b!3661879 m!4168583))

(declare-fun m!4168585 () Bool)

(assert (=> b!3661879 m!4168585))

(declare-fun m!4168587 () Bool)

(assert (=> b!3661889 m!4168587))

(declare-fun m!4168589 () Bool)

(assert (=> b!3661860 m!4168589))

(declare-fun m!4168591 () Bool)

(assert (=> b!3661860 m!4168591))

(declare-fun m!4168593 () Bool)

(assert (=> b!3661885 m!4168593))

(declare-fun m!4168595 () Bool)

(assert (=> b!3661866 m!4168595))

(declare-fun m!4168597 () Bool)

(assert (=> b!3661866 m!4168597))

(declare-fun m!4168599 () Bool)

(assert (=> b!3661874 m!4168599))

(declare-fun m!4168601 () Bool)

(assert (=> bm!264887 m!4168601))

(declare-fun m!4168603 () Bool)

(assert (=> b!3661887 m!4168603))

(declare-fun m!4168605 () Bool)

(assert (=> b!3661853 m!4168605))

(assert (=> b!3661853 m!4168605))

(declare-fun m!4168607 () Bool)

(assert (=> b!3661853 m!4168607))

(declare-fun m!4168609 () Bool)

(assert (=> b!3661853 m!4168609))

(declare-fun m!4168611 () Bool)

(assert (=> b!3661853 m!4168611))

(declare-fun m!4168613 () Bool)

(assert (=> b!3661853 m!4168613))

(declare-fun m!4168615 () Bool)

(assert (=> b!3661853 m!4168615))

(declare-fun m!4168617 () Bool)

(assert (=> b!3661864 m!4168617))

(declare-fun m!4168619 () Bool)

(assert (=> b!3661883 m!4168619))

(declare-fun m!4168621 () Bool)

(assert (=> b!3661884 m!4168621))

(declare-fun m!4168623 () Bool)

(assert (=> b!3661855 m!4168623))

(declare-fun m!4168625 () Bool)

(assert (=> bm!264886 m!4168625))

(declare-fun m!4168627 () Bool)

(assert (=> b!3661858 m!4168627))

(declare-fun m!4168629 () Bool)

(assert (=> b!3661858 m!4168629))

(declare-fun m!4168631 () Bool)

(assert (=> start!342834 m!4168631))

(declare-fun m!4168633 () Bool)

(assert (=> b!3661871 m!4168633))

(declare-fun m!4168635 () Bool)

(assert (=> b!3661859 m!4168635))

(declare-fun m!4168637 () Bool)

(assert (=> b!3661859 m!4168637))

(declare-fun m!4168639 () Bool)

(assert (=> b!3661859 m!4168639))

(check-sat (not b!3661880) b_and!271857 (not b!3661854) b_and!271853 (not b!3661869) (not bm!264886) (not b!3661878) (not b!3661866) (not b!3661864) b_and!271843 (not b!3661884) (not b!3661883) (not b_next!97365) (not b!3661873) (not b!3661879) (not b!3661856) (not b!3661861) (not b!3661889) (not b!3661855) (not b_next!97353) (not b!3661853) (not b!3661899) (not b!3661871) (not b!3661872) (not bm!264887) (not b!3661898) (not b_next!97359) (not b!3661895) (not bm!264889) (not b!3661870) (not b!3661897) (not b_next!97363) (not b!3661874) tp_is_empty!18201 (not b_next!97355) (not b!3661857) (not b!3661877) (not start!342834) b_and!271847 (not bm!264888) (not b!3661858) (not b!3661863) b_and!271849 (not b_next!97367) b_and!271851 (not b_next!97361) b_and!271855 (not b!3661867) (not b!3661875) (not b!3661885) (not b!3661887) (not b!3661886) (not b!3661900) (not b!3661896) (not b_next!97357) b_and!271845 (not bm!264884) (not b!3661860) (not bm!264885) (not b!3661859))
(check-sat b_and!271843 (not b_next!97365) b_and!271857 (not b_next!97353) (not b_next!97359) b_and!271853 (not b_next!97363) (not b_next!97355) b_and!271847 (not b_next!97357) b_and!271845 b_and!271849 (not b_next!97367) b_and!271851 (not b_next!97361) b_and!271855)
(get-model)

(declare-fun d!1075257 () Bool)

(assert (=> d!1075257 (not (matchR!5128 (regex!5800 rule!403) lt!1274047))))

(declare-fun lt!1274105 () Unit!55962)

(declare-fun choose!21682 (LexerInterface!5389 List!38761 Rule!11400 List!38759 List!38759 List!38759 Rule!11400) Unit!55962)

(assert (=> d!1075257 (= lt!1274105 (choose!21682 thiss!23823 rules!3307 (rule!8614 (_1!22384 lt!1274028)) lt!1274048 lt!1274039 lt!1274047 rule!403))))

(assert (=> d!1075257 (isPrefix!3163 lt!1274048 lt!1274039)))

(assert (=> d!1075257 (= (lemmaMaxPrefixOutputsMaxPrefix!342 thiss!23823 rules!3307 (rule!8614 (_1!22384 lt!1274028)) lt!1274048 lt!1274039 lt!1274047 rule!403) lt!1274105)))

(declare-fun bs!572658 () Bool)

(assert (= bs!572658 d!1075257))

(assert (=> bs!572658 m!4168635))

(declare-fun m!4168733 () Bool)

(assert (=> bs!572658 m!4168733))

(assert (=> bs!572658 m!4168487))

(assert (=> b!3661887 d!1075257))

(declare-fun d!1075259 () Bool)

(assert (=> d!1075259 (= (inv!52101 (tag!6580 rule!403)) (= (mod (str.len (value!185759 (tag!6580 rule!403))) 2) 0))))

(assert (=> b!3661866 d!1075259))

(declare-fun d!1075261 () Bool)

(declare-fun res!1486721 () Bool)

(declare-fun e!2267491 () Bool)

(assert (=> d!1075261 (=> (not res!1486721) (not e!2267491))))

(declare-fun semiInverseModEq!2472 (Int Int) Bool)

(assert (=> d!1075261 (= res!1486721 (semiInverseModEq!2472 (toChars!7951 (transformation!5800 rule!403)) (toValue!8092 (transformation!5800 rule!403))))))

(assert (=> d!1075261 (= (inv!52104 (transformation!5800 rule!403)) e!2267491)))

(declare-fun b!3661993 () Bool)

(declare-fun equivClasses!2371 (Int Int) Bool)

(assert (=> b!3661993 (= e!2267491 (equivClasses!2371 (toChars!7951 (transformation!5800 rule!403)) (toValue!8092 (transformation!5800 rule!403))))))

(assert (= (and d!1075261 res!1486721) b!3661993))

(declare-fun m!4168735 () Bool)

(assert (=> d!1075261 m!4168735))

(declare-fun m!4168737 () Bool)

(assert (=> b!3661993 m!4168737))

(assert (=> b!3661866 d!1075261))

(declare-fun b!3662004 () Bool)

(declare-fun e!2267498 () Bool)

(declare-fun inv!15 (TokenValue!6030) Bool)

(assert (=> b!3662004 (= e!2267498 (inv!15 (value!185760 token!511)))))

(declare-fun b!3662005 () Bool)

(declare-fun e!2267499 () Bool)

(declare-fun inv!16 (TokenValue!6030) Bool)

(assert (=> b!3662005 (= e!2267499 (inv!16 (value!185760 token!511)))))

(declare-fun b!3662006 () Bool)

(declare-fun e!2267500 () Bool)

(declare-fun inv!17 (TokenValue!6030) Bool)

(assert (=> b!3662006 (= e!2267500 (inv!17 (value!185760 token!511)))))

(declare-fun d!1075263 () Bool)

(declare-fun c!632952 () Bool)

(assert (=> d!1075263 (= c!632952 ((_ is IntegerValue!18090) (value!185760 token!511)))))

(assert (=> d!1075263 (= (inv!21 (value!185760 token!511)) e!2267499)))

(declare-fun b!3662007 () Bool)

(assert (=> b!3662007 (= e!2267499 e!2267500)))

(declare-fun c!632953 () Bool)

(assert (=> b!3662007 (= c!632953 ((_ is IntegerValue!18091) (value!185760 token!511)))))

(declare-fun b!3662008 () Bool)

(declare-fun res!1486724 () Bool)

(assert (=> b!3662008 (=> res!1486724 e!2267498)))

(assert (=> b!3662008 (= res!1486724 (not ((_ is IntegerValue!18092) (value!185760 token!511))))))

(assert (=> b!3662008 (= e!2267500 e!2267498)))

(assert (= (and d!1075263 c!632952) b!3662005))

(assert (= (and d!1075263 (not c!632952)) b!3662007))

(assert (= (and b!3662007 c!632953) b!3662006))

(assert (= (and b!3662007 (not c!632953)) b!3662008))

(assert (= (and b!3662008 (not res!1486724)) b!3662004))

(declare-fun m!4168739 () Bool)

(assert (=> b!3662004 m!4168739))

(declare-fun m!4168741 () Bool)

(assert (=> b!3662005 m!4168741))

(declare-fun m!4168743 () Bool)

(assert (=> b!3662006 m!4168743))

(assert (=> b!3661867 d!1075263))

(declare-fun d!1075265 () Bool)

(declare-fun e!2267533 () Bool)

(assert (=> d!1075265 e!2267533))

(declare-fun res!1486777 () Bool)

(assert (=> d!1075265 (=> res!1486777 e!2267533)))

(declare-fun lt!1274189 () Option!8228)

(declare-fun isEmpty!22920 (Option!8228) Bool)

(assert (=> d!1075265 (= res!1486777 (isEmpty!22920 lt!1274189))))

(declare-fun e!2267534 () Option!8228)

(assert (=> d!1075265 (= lt!1274189 e!2267534)))

(declare-fun c!632962 () Bool)

(declare-datatypes ((tuple2!38504 0))(
  ( (tuple2!38505 (_1!22386 List!38759) (_2!22386 List!38759)) )
))
(declare-fun lt!1274188 () tuple2!38504)

(assert (=> d!1075265 (= c!632962 (isEmpty!22916 (_1!22386 lt!1274188)))))

(declare-fun findLongestMatch!983 (Regex!10559 List!38759) tuple2!38504)

(assert (=> d!1075265 (= lt!1274188 (findLongestMatch!983 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274039))))

(assert (=> d!1075265 (ruleValid!2064 thiss!23823 (rule!8614 (_1!22384 lt!1274028)))))

(assert (=> d!1075265 (= (maxPrefixOneRule!2061 thiss!23823 (rule!8614 (_1!22384 lt!1274028)) lt!1274039) lt!1274189)))

(declare-fun b!3662078 () Bool)

(declare-fun res!1486776 () Bool)

(declare-fun e!2267535 () Bool)

(assert (=> b!3662078 (=> (not res!1486776) (not e!2267535))))

(assert (=> b!3662078 (= res!1486776 (= (++!9616 (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274189)))) (_2!22384 (get!12738 lt!1274189))) lt!1274039))))

(declare-fun b!3662079 () Bool)

(assert (=> b!3662079 (= e!2267535 (= (size!29519 (_1!22384 (get!12738 lt!1274189))) (size!29521 (originalCharacters!6514 (_1!22384 (get!12738 lt!1274189))))))))

(declare-fun b!3662080 () Bool)

(assert (=> b!3662080 (= e!2267534 (Some!8227 (tuple2!38501 (Token!10967 (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) (seqFromList!4349 (_1!22386 lt!1274188))) (rule!8614 (_1!22384 lt!1274028)) (size!29520 (seqFromList!4349 (_1!22386 lt!1274188))) (_1!22386 lt!1274188)) (_2!22386 lt!1274188))))))

(declare-fun lt!1274186 () Unit!55962)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1041 (Regex!10559 List!38759) Unit!55962)

(assert (=> b!3662080 (= lt!1274186 (longestMatchIsAcceptedByMatchOrIsEmpty!1041 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274039))))

(declare-fun res!1486779 () Bool)

(declare-fun findLongestMatchInner!1068 (Regex!10559 List!38759 Int List!38759 List!38759 Int) tuple2!38504)

(assert (=> b!3662080 (= res!1486779 (isEmpty!22916 (_1!22386 (findLongestMatchInner!1068 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) Nil!38635 (size!29521 Nil!38635) lt!1274039 lt!1274039 (size!29521 lt!1274039)))))))

(declare-fun e!2267536 () Bool)

(assert (=> b!3662080 (=> res!1486779 e!2267536)))

(assert (=> b!3662080 e!2267536))

(declare-fun lt!1274190 () Unit!55962)

(assert (=> b!3662080 (= lt!1274190 lt!1274186)))

(declare-fun lt!1274187 () Unit!55962)

(assert (=> b!3662080 (= lt!1274187 (lemmaSemiInverse!1549 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) (seqFromList!4349 (_1!22386 lt!1274188))))))

(declare-fun b!3662081 () Bool)

(declare-fun res!1486773 () Bool)

(assert (=> b!3662081 (=> (not res!1486773) (not e!2267535))))

(assert (=> b!3662081 (= res!1486773 (< (size!29521 (_2!22384 (get!12738 lt!1274189))) (size!29521 lt!1274039)))))

(declare-fun b!3662082 () Bool)

(assert (=> b!3662082 (= e!2267536 (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) (_1!22386 (findLongestMatchInner!1068 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) Nil!38635 (size!29521 Nil!38635) lt!1274039 lt!1274039 (size!29521 lt!1274039)))))))

(declare-fun b!3662083 () Bool)

(assert (=> b!3662083 (= e!2267534 None!8227)))

(declare-fun b!3662084 () Bool)

(declare-fun res!1486778 () Bool)

(assert (=> b!3662084 (=> (not res!1486778) (not e!2267535))))

(assert (=> b!3662084 (= res!1486778 (= (rule!8614 (_1!22384 (get!12738 lt!1274189))) (rule!8614 (_1!22384 lt!1274028))))))

(declare-fun b!3662085 () Bool)

(declare-fun res!1486774 () Bool)

(assert (=> b!3662085 (=> (not res!1486774) (not e!2267535))))

(assert (=> b!3662085 (= res!1486774 (= (value!185760 (_1!22384 (get!12738 lt!1274189))) (apply!9302 (transformation!5800 (rule!8614 (_1!22384 (get!12738 lt!1274189)))) (seqFromList!4349 (originalCharacters!6514 (_1!22384 (get!12738 lt!1274189)))))))))

(declare-fun b!3662086 () Bool)

(assert (=> b!3662086 (= e!2267533 e!2267535)))

(declare-fun res!1486775 () Bool)

(assert (=> b!3662086 (=> (not res!1486775) (not e!2267535))))

(assert (=> b!3662086 (= res!1486775 (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274189))))))))

(assert (= (and d!1075265 c!632962) b!3662083))

(assert (= (and d!1075265 (not c!632962)) b!3662080))

(assert (= (and b!3662080 (not res!1486779)) b!3662082))

(assert (= (and d!1075265 (not res!1486777)) b!3662086))

(assert (= (and b!3662086 res!1486775) b!3662078))

(assert (= (and b!3662078 res!1486776) b!3662081))

(assert (= (and b!3662081 res!1486773) b!3662084))

(assert (= (and b!3662084 res!1486778) b!3662085))

(assert (= (and b!3662085 res!1486774) b!3662079))

(declare-fun m!4168845 () Bool)

(assert (=> b!3662078 m!4168845))

(declare-fun m!4168847 () Bool)

(assert (=> b!3662078 m!4168847))

(assert (=> b!3662078 m!4168847))

(declare-fun m!4168849 () Bool)

(assert (=> b!3662078 m!4168849))

(assert (=> b!3662078 m!4168849))

(declare-fun m!4168851 () Bool)

(assert (=> b!3662078 m!4168851))

(assert (=> b!3662086 m!4168845))

(assert (=> b!3662086 m!4168847))

(assert (=> b!3662086 m!4168847))

(assert (=> b!3662086 m!4168849))

(assert (=> b!3662086 m!4168849))

(declare-fun m!4168853 () Bool)

(assert (=> b!3662086 m!4168853))

(assert (=> b!3662085 m!4168845))

(declare-fun m!4168855 () Bool)

(assert (=> b!3662085 m!4168855))

(assert (=> b!3662085 m!4168855))

(declare-fun m!4168857 () Bool)

(assert (=> b!3662085 m!4168857))

(declare-fun m!4168859 () Bool)

(assert (=> b!3662082 m!4168859))

(declare-fun m!4168861 () Bool)

(assert (=> b!3662082 m!4168861))

(assert (=> b!3662082 m!4168859))

(assert (=> b!3662082 m!4168861))

(declare-fun m!4168863 () Bool)

(assert (=> b!3662082 m!4168863))

(declare-fun m!4168865 () Bool)

(assert (=> b!3662082 m!4168865))

(declare-fun m!4168867 () Bool)

(assert (=> b!3662080 m!4168867))

(declare-fun m!4168869 () Bool)

(assert (=> b!3662080 m!4168869))

(assert (=> b!3662080 m!4168861))

(assert (=> b!3662080 m!4168867))

(declare-fun m!4168871 () Bool)

(assert (=> b!3662080 m!4168871))

(assert (=> b!3662080 m!4168867))

(declare-fun m!4168873 () Bool)

(assert (=> b!3662080 m!4168873))

(assert (=> b!3662080 m!4168859))

(assert (=> b!3662080 m!4168861))

(assert (=> b!3662080 m!4168863))

(assert (=> b!3662080 m!4168867))

(declare-fun m!4168875 () Bool)

(assert (=> b!3662080 m!4168875))

(assert (=> b!3662080 m!4168859))

(declare-fun m!4168877 () Bool)

(assert (=> b!3662080 m!4168877))

(assert (=> b!3662084 m!4168845))

(assert (=> b!3662081 m!4168845))

(declare-fun m!4168879 () Bool)

(assert (=> b!3662081 m!4168879))

(assert (=> b!3662081 m!4168861))

(declare-fun m!4168881 () Bool)

(assert (=> d!1075265 m!4168881))

(declare-fun m!4168883 () Bool)

(assert (=> d!1075265 m!4168883))

(declare-fun m!4168885 () Bool)

(assert (=> d!1075265 m!4168885))

(declare-fun m!4168887 () Bool)

(assert (=> d!1075265 m!4168887))

(assert (=> b!3662079 m!4168845))

(declare-fun m!4168889 () Bool)

(assert (=> b!3662079 m!4168889))

(assert (=> b!3661886 d!1075265))

(declare-fun d!1075281 () Bool)

(declare-fun lt!1274201 () List!38759)

(assert (=> d!1075281 (= (++!9616 lt!1274048 lt!1274201) lt!1274039)))

(declare-fun e!2267542 () List!38759)

(assert (=> d!1075281 (= lt!1274201 e!2267542)))

(declare-fun c!632969 () Bool)

(assert (=> d!1075281 (= c!632969 ((_ is Cons!38635) lt!1274048))))

(assert (=> d!1075281 (>= (size!29521 lt!1274039) (size!29521 lt!1274048))))

(assert (=> d!1075281 (= (getSuffix!1716 lt!1274039 lt!1274048) lt!1274201)))

(declare-fun b!3662097 () Bool)

(declare-fun tail!5671 (List!38759) List!38759)

(assert (=> b!3662097 (= e!2267542 (getSuffix!1716 (tail!5671 lt!1274039) (t!298622 lt!1274048)))))

(declare-fun b!3662098 () Bool)

(assert (=> b!3662098 (= e!2267542 lt!1274039)))

(assert (= (and d!1075281 c!632969) b!3662097))

(assert (= (and d!1075281 (not c!632969)) b!3662098))

(declare-fun m!4168893 () Bool)

(assert (=> d!1075281 m!4168893))

(assert (=> d!1075281 m!4168861))

(assert (=> d!1075281 m!4168481))

(declare-fun m!4168895 () Bool)

(assert (=> b!3662097 m!4168895))

(assert (=> b!3662097 m!4168895))

(declare-fun m!4168897 () Bool)

(assert (=> b!3662097 m!4168897))

(assert (=> b!3661886 d!1075281))

(declare-fun d!1075285 () Bool)

(declare-fun lt!1274205 () Int)

(assert (=> d!1075285 (>= lt!1274205 0)))

(declare-fun e!2267545 () Int)

(assert (=> d!1075285 (= lt!1274205 e!2267545)))

(declare-fun c!632972 () Bool)

(assert (=> d!1075285 (= c!632972 ((_ is Nil!38635) lt!1274048))))

(assert (=> d!1075285 (= (size!29521 lt!1274048) lt!1274205)))

(declare-fun b!3662103 () Bool)

(assert (=> b!3662103 (= e!2267545 0)))

(declare-fun b!3662104 () Bool)

(assert (=> b!3662104 (= e!2267545 (+ 1 (size!29521 (t!298622 lt!1274048))))))

(assert (= (and d!1075285 c!632972) b!3662103))

(assert (= (and d!1075285 (not c!632972)) b!3662104))

(declare-fun m!4168903 () Bool)

(assert (=> b!3662104 m!4168903))

(assert (=> b!3661886 d!1075285))

(declare-fun d!1075289 () Bool)

(declare-fun fromListB!2008 (List!38759) BalanceConc!23244)

(assert (=> d!1075289 (= (seqFromList!4349 lt!1274048) (fromListB!2008 lt!1274048))))

(declare-fun bs!572662 () Bool)

(assert (= bs!572662 d!1075289))

(declare-fun m!4168909 () Bool)

(assert (=> bs!572662 m!4168909))

(assert (=> b!3661886 d!1075289))

(declare-fun d!1075293 () Bool)

(declare-fun dynLambda!16879 (Int BalanceConc!23244) TokenValue!6030)

(assert (=> d!1075293 (= (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) (seqFromList!4349 lt!1274048)) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (seqFromList!4349 lt!1274048)))))

(declare-fun b_lambda!108621 () Bool)

(assert (=> (not b_lambda!108621) (not d!1075293)))

(declare-fun tb!211629 () Bool)

(declare-fun t!298634 () Bool)

(assert (=> (and b!3661892 (= (toValue!8092 (transformation!5800 (rule!8614 token!511))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298634) tb!211629))

(declare-fun result!257652 () Bool)

(assert (=> tb!211629 (= result!257652 (inv!21 (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (seqFromList!4349 lt!1274048))))))

(declare-fun m!4168911 () Bool)

(assert (=> tb!211629 m!4168911))

(assert (=> d!1075293 t!298634))

(declare-fun b_and!271867 () Bool)

(assert (= b_and!271843 (and (=> t!298634 result!257652) b_and!271867)))

(declare-fun t!298636 () Bool)

(declare-fun tb!211631 () Bool)

(assert (=> (and b!3661893 (= (toValue!8092 (transformation!5800 rule!403)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298636) tb!211631))

(declare-fun result!257656 () Bool)

(assert (= result!257656 result!257652))

(assert (=> d!1075293 t!298636))

(declare-fun b_and!271869 () Bool)

(assert (= b_and!271847 (and (=> t!298636 result!257656) b_and!271869)))

(declare-fun tb!211633 () Bool)

(declare-fun t!298638 () Bool)

(assert (=> (and b!3661891 (= (toValue!8092 (transformation!5800 (h!44057 rules!3307))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298638) tb!211633))

(declare-fun result!257658 () Bool)

(assert (= result!257658 result!257652))

(assert (=> d!1075293 t!298638))

(declare-fun b_and!271871 () Bool)

(assert (= b_and!271851 (and (=> t!298638 result!257658) b_and!271871)))

(declare-fun t!298640 () Bool)

(declare-fun tb!211635 () Bool)

(assert (=> (and b!3661852 (= (toValue!8092 (transformation!5800 anOtherTypeRule!33)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298640) tb!211635))

(declare-fun result!257660 () Bool)

(assert (= result!257660 result!257652))

(assert (=> d!1075293 t!298640))

(declare-fun b_and!271873 () Bool)

(assert (= b_and!271855 (and (=> t!298640 result!257660) b_and!271873)))

(assert (=> d!1075293 m!4168469))

(declare-fun m!4168913 () Bool)

(assert (=> d!1075293 m!4168913))

(assert (=> b!3661886 d!1075293))

(declare-fun d!1075295 () Bool)

(assert (=> d!1075295 (= (_2!22384 lt!1274028) lt!1274069)))

(declare-fun lt!1274211 () Unit!55962)

(declare-fun choose!21688 (List!38759 List!38759 List!38759 List!38759 List!38759) Unit!55962)

(assert (=> d!1075295 (= lt!1274211 (choose!21688 lt!1274048 (_2!22384 lt!1274028) lt!1274048 lt!1274069 lt!1274039))))

(assert (=> d!1075295 (isPrefix!3163 lt!1274048 lt!1274039)))

(assert (=> d!1075295 (= (lemmaSamePrefixThenSameSuffix!1490 lt!1274048 (_2!22384 lt!1274028) lt!1274048 lt!1274069 lt!1274039) lt!1274211)))

(declare-fun bs!572663 () Bool)

(assert (= bs!572663 d!1075295))

(declare-fun m!4168915 () Bool)

(assert (=> bs!572663 m!4168915))

(assert (=> bs!572663 m!4168487))

(assert (=> b!3661886 d!1075295))

(declare-fun d!1075297 () Bool)

(assert (=> d!1075297 (= (maxPrefixOneRule!2061 thiss!23823 (rule!8614 (_1!22384 lt!1274028)) lt!1274039) (Some!8227 (tuple2!38501 (Token!10967 (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) (seqFromList!4349 lt!1274048)) (rule!8614 (_1!22384 lt!1274028)) (size!29521 lt!1274048) lt!1274048) (_2!22384 lt!1274028))))))

(declare-fun lt!1274220 () Unit!55962)

(declare-fun choose!21689 (LexerInterface!5389 List!38761 List!38759 List!38759 List!38759 Rule!11400) Unit!55962)

(assert (=> d!1075297 (= lt!1274220 (choose!21689 thiss!23823 rules!3307 lt!1274048 lt!1274039 (_2!22384 lt!1274028) (rule!8614 (_1!22384 lt!1274028))))))

(assert (=> d!1075297 (not (isEmpty!22917 rules!3307))))

(assert (=> d!1075297 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1117 thiss!23823 rules!3307 lt!1274048 lt!1274039 (_2!22384 lt!1274028) (rule!8614 (_1!22384 lt!1274028))) lt!1274220)))

(declare-fun bs!572665 () Bool)

(assert (= bs!572665 d!1075297))

(assert (=> bs!572665 m!4168481))

(assert (=> bs!572665 m!4168617))

(assert (=> bs!572665 m!4168477))

(declare-fun m!4168929 () Bool)

(assert (=> bs!572665 m!4168929))

(assert (=> bs!572665 m!4168469))

(assert (=> bs!572665 m!4168469))

(assert (=> bs!572665 m!4168471))

(assert (=> b!3661886 d!1075297))

(declare-fun d!1075305 () Bool)

(declare-fun res!1486814 () Bool)

(declare-fun e!2267577 () Bool)

(assert (=> d!1075305 (=> res!1486814 e!2267577)))

(assert (=> d!1075305 (= res!1486814 (not ((_ is Cons!38637) rules!3307)))))

(assert (=> d!1075305 (= (sepAndNonSepRulesDisjointChars!1968 rules!3307 rules!3307) e!2267577)))

(declare-fun b!3662159 () Bool)

(declare-fun e!2267578 () Bool)

(assert (=> b!3662159 (= e!2267577 e!2267578)))

(declare-fun res!1486815 () Bool)

(assert (=> b!3662159 (=> (not res!1486815) (not e!2267578))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!896 (Rule!11400 List!38761) Bool)

(assert (=> b!3662159 (= res!1486815 (ruleDisjointCharsFromAllFromOtherType!896 (h!44057 rules!3307) rules!3307))))

(declare-fun b!3662160 () Bool)

(assert (=> b!3662160 (= e!2267578 (sepAndNonSepRulesDisjointChars!1968 rules!3307 (t!298624 rules!3307)))))

(assert (= (and d!1075305 (not res!1486814)) b!3662159))

(assert (= (and b!3662159 res!1486815) b!3662160))

(declare-fun m!4168931 () Bool)

(assert (=> b!3662159 m!4168931))

(declare-fun m!4168933 () Bool)

(assert (=> b!3662160 m!4168933))

(assert (=> b!3661884 d!1075305))

(declare-fun d!1075307 () Bool)

(assert (=> d!1075307 (not (matchR!5128 (regex!5800 rule!403) lt!1274047))))

(declare-fun lt!1274227 () Unit!55962)

(declare-fun choose!21690 (Regex!10559 List!38759 C!21304) Unit!55962)

(assert (=> d!1075307 (= lt!1274227 (choose!21690 (regex!5800 rule!403) lt!1274047 lt!1274052))))

(declare-fun validRegex!4835 (Regex!10559) Bool)

(assert (=> d!1075307 (validRegex!4835 (regex!5800 rule!403))))

(assert (=> d!1075307 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 rule!403) lt!1274047 lt!1274052) lt!1274227)))

(declare-fun bs!572667 () Bool)

(assert (= bs!572667 d!1075307))

(assert (=> bs!572667 m!4168635))

(declare-fun m!4168943 () Bool)

(assert (=> bs!572667 m!4168943))

(declare-fun m!4168945 () Bool)

(assert (=> bs!572667 m!4168945))

(assert (=> b!3661885 d!1075307))

(declare-fun b!3662209 () Bool)

(declare-fun e!2267609 () Bool)

(declare-fun e!2267606 () Bool)

(assert (=> b!3662209 (= e!2267609 e!2267606)))

(declare-fun res!1486840 () Bool)

(assert (=> b!3662209 (=> (not res!1486840) (not e!2267606))))

(declare-fun lt!1274243 () Bool)

(assert (=> b!3662209 (= res!1486840 (not lt!1274243))))

(declare-fun b!3662210 () Bool)

(declare-fun e!2267610 () Bool)

(assert (=> b!3662210 (= e!2267610 (not lt!1274243))))

(declare-fun b!3662211 () Bool)

(declare-fun e!2267607 () Bool)

(assert (=> b!3662211 (= e!2267607 (= (head!7830 lt!1274048) (c!632924 (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))))

(declare-fun b!3662212 () Bool)

(declare-fun e!2267611 () Bool)

(declare-fun nullable!3673 (Regex!10559) Bool)

(assert (=> b!3662212 (= e!2267611 (nullable!3673 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3662213 () Bool)

(declare-fun res!1486836 () Bool)

(assert (=> b!3662213 (=> (not res!1486836) (not e!2267607))))

(assert (=> b!3662213 (= res!1486836 (isEmpty!22916 (tail!5671 lt!1274048)))))

(declare-fun b!3662214 () Bool)

(declare-fun e!2267608 () Bool)

(declare-fun call!264915 () Bool)

(assert (=> b!3662214 (= e!2267608 (= lt!1274243 call!264915))))

(declare-fun bm!264910 () Bool)

(assert (=> bm!264910 (= call!264915 (isEmpty!22916 lt!1274048))))

(declare-fun b!3662215 () Bool)

(declare-fun res!1486837 () Bool)

(assert (=> b!3662215 (=> res!1486837 e!2267609)))

(assert (=> b!3662215 (= res!1486837 e!2267607)))

(declare-fun res!1486842 () Bool)

(assert (=> b!3662215 (=> (not res!1486842) (not e!2267607))))

(assert (=> b!3662215 (= res!1486842 lt!1274243)))

(declare-fun d!1075315 () Bool)

(assert (=> d!1075315 e!2267608))

(declare-fun c!633000 () Bool)

(assert (=> d!1075315 (= c!633000 ((_ is EmptyExpr!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(assert (=> d!1075315 (= lt!1274243 e!2267611)))

(declare-fun c!633001 () Bool)

(assert (=> d!1075315 (= c!633001 (isEmpty!22916 lt!1274048))))

(assert (=> d!1075315 (validRegex!4835 (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))

(assert (=> d!1075315 (= (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048) lt!1274243)))

(declare-fun b!3662216 () Bool)

(assert (=> b!3662216 (= e!2267608 e!2267610)))

(declare-fun c!632999 () Bool)

(assert (=> b!3662216 (= c!632999 ((_ is EmptyLang!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3662217 () Bool)

(declare-fun e!2267612 () Bool)

(assert (=> b!3662217 (= e!2267612 (not (= (head!7830 lt!1274048) (c!632924 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))))

(declare-fun b!3662218 () Bool)

(declare-fun derivativeStep!3222 (Regex!10559 C!21304) Regex!10559)

(assert (=> b!3662218 (= e!2267611 (matchR!5128 (derivativeStep!3222 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) (head!7830 lt!1274048)) (tail!5671 lt!1274048)))))

(declare-fun b!3662219 () Bool)

(declare-fun res!1486839 () Bool)

(assert (=> b!3662219 (=> res!1486839 e!2267612)))

(assert (=> b!3662219 (= res!1486839 (not (isEmpty!22916 (tail!5671 lt!1274048))))))

(declare-fun b!3662220 () Bool)

(declare-fun res!1486838 () Bool)

(assert (=> b!3662220 (=> (not res!1486838) (not e!2267607))))

(assert (=> b!3662220 (= res!1486838 (not call!264915))))

(declare-fun b!3662221 () Bool)

(assert (=> b!3662221 (= e!2267606 e!2267612)))

(declare-fun res!1486843 () Bool)

(assert (=> b!3662221 (=> res!1486843 e!2267612)))

(assert (=> b!3662221 (= res!1486843 call!264915)))

(declare-fun b!3662222 () Bool)

(declare-fun res!1486841 () Bool)

(assert (=> b!3662222 (=> res!1486841 e!2267609)))

(assert (=> b!3662222 (= res!1486841 (not ((_ is ElementMatch!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))))

(assert (=> b!3662222 (= e!2267610 e!2267609)))

(assert (= (and d!1075315 c!633001) b!3662212))

(assert (= (and d!1075315 (not c!633001)) b!3662218))

(assert (= (and d!1075315 c!633000) b!3662214))

(assert (= (and d!1075315 (not c!633000)) b!3662216))

(assert (= (and b!3662216 c!632999) b!3662210))

(assert (= (and b!3662216 (not c!632999)) b!3662222))

(assert (= (and b!3662222 (not res!1486841)) b!3662215))

(assert (= (and b!3662215 res!1486842) b!3662220))

(assert (= (and b!3662220 res!1486838) b!3662213))

(assert (= (and b!3662213 res!1486836) b!3662211))

(assert (= (and b!3662215 (not res!1486837)) b!3662209))

(assert (= (and b!3662209 res!1486840) b!3662221))

(assert (= (and b!3662221 (not res!1486843)) b!3662219))

(assert (= (and b!3662219 (not res!1486839)) b!3662217))

(assert (= (or b!3662214 b!3662220 b!3662221) bm!264910))

(assert (=> b!3662217 m!4168533))

(declare-fun m!4168973 () Bool)

(assert (=> bm!264910 m!4168973))

(declare-fun m!4168975 () Bool)

(assert (=> b!3662213 m!4168975))

(assert (=> b!3662213 m!4168975))

(declare-fun m!4168979 () Bool)

(assert (=> b!3662213 m!4168979))

(assert (=> b!3662219 m!4168975))

(assert (=> b!3662219 m!4168975))

(assert (=> b!3662219 m!4168979))

(assert (=> b!3662211 m!4168533))

(assert (=> b!3662218 m!4168533))

(assert (=> b!3662218 m!4168533))

(declare-fun m!4168981 () Bool)

(assert (=> b!3662218 m!4168981))

(assert (=> b!3662218 m!4168975))

(assert (=> b!3662218 m!4168981))

(assert (=> b!3662218 m!4168975))

(declare-fun m!4168983 () Bool)

(assert (=> b!3662218 m!4168983))

(declare-fun m!4168985 () Bool)

(assert (=> b!3662212 m!4168985))

(assert (=> d!1075315 m!4168973))

(declare-fun m!4168987 () Bool)

(assert (=> d!1075315 m!4168987))

(assert (=> b!3661883 d!1075315))

(declare-fun d!1075339 () Bool)

(assert (=> d!1075339 (= (isEmpty!22917 rules!3307) ((_ is Nil!38637) rules!3307))))

(assert (=> b!3661864 d!1075339))

(declare-fun d!1075341 () Bool)

(assert (=> d!1075341 (= (isEmpty!22916 lt!1274047) ((_ is Nil!38635) lt!1274047))))

(assert (=> b!3661900 d!1075341))

(declare-fun d!1075343 () Bool)

(declare-fun lt!1274248 () BalanceConc!23244)

(assert (=> d!1075343 (= (list!14334 lt!1274248) (originalCharacters!6514 (_1!22384 lt!1274028)))))

(declare-fun dynLambda!16881 (Int TokenValue!6030) BalanceConc!23244)

(assert (=> d!1075343 (= lt!1274248 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (value!185760 (_1!22384 lt!1274028))))))

(assert (=> d!1075343 (= (charsOf!3814 (_1!22384 lt!1274028)) lt!1274248)))

(declare-fun b_lambda!108625 () Bool)

(assert (=> (not b_lambda!108625) (not d!1075343)))

(declare-fun t!298650 () Bool)

(declare-fun tb!211645 () Bool)

(assert (=> (and b!3661892 (= (toChars!7951 (transformation!5800 (rule!8614 token!511))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298650) tb!211645))

(declare-fun b!3662229 () Bool)

(declare-fun e!2267618 () Bool)

(declare-fun tp!1115356 () Bool)

(declare-fun inv!52108 (Conc!11815) Bool)

(assert (=> b!3662229 (= e!2267618 (and (inv!52108 (c!632925 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (value!185760 (_1!22384 lt!1274028))))) tp!1115356))))

(declare-fun result!257672 () Bool)

(declare-fun inv!52109 (BalanceConc!23244) Bool)

(assert (=> tb!211645 (= result!257672 (and (inv!52109 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (value!185760 (_1!22384 lt!1274028)))) e!2267618))))

(assert (= tb!211645 b!3662229))

(declare-fun m!4168989 () Bool)

(assert (=> b!3662229 m!4168989))

(declare-fun m!4168991 () Bool)

(assert (=> tb!211645 m!4168991))

(assert (=> d!1075343 t!298650))

(declare-fun b_and!271883 () Bool)

(assert (= b_and!271845 (and (=> t!298650 result!257672) b_and!271883)))

(declare-fun tb!211647 () Bool)

(declare-fun t!298652 () Bool)

(assert (=> (and b!3661893 (= (toChars!7951 (transformation!5800 rule!403)) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298652) tb!211647))

(declare-fun result!257676 () Bool)

(assert (= result!257676 result!257672))

(assert (=> d!1075343 t!298652))

(declare-fun b_and!271885 () Bool)

(assert (= b_and!271849 (and (=> t!298652 result!257676) b_and!271885)))

(declare-fun t!298654 () Bool)

(declare-fun tb!211649 () Bool)

(assert (=> (and b!3661891 (= (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298654) tb!211649))

(declare-fun result!257678 () Bool)

(assert (= result!257678 result!257672))

(assert (=> d!1075343 t!298654))

(declare-fun b_and!271887 () Bool)

(assert (= b_and!271853 (and (=> t!298654 result!257678) b_and!271887)))

(declare-fun tb!211651 () Bool)

(declare-fun t!298656 () Bool)

(assert (=> (and b!3661852 (= (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298656) tb!211651))

(declare-fun result!257680 () Bool)

(assert (= result!257680 result!257672))

(assert (=> d!1075343 t!298656))

(declare-fun b_and!271889 () Bool)

(assert (= b_and!271857 (and (=> t!298656 result!257680) b_and!271889)))

(declare-fun m!4168993 () Bool)

(assert (=> d!1075343 m!4168993))

(declare-fun m!4168995 () Bool)

(assert (=> d!1075343 m!4168995))

(assert (=> b!3661863 d!1075343))

(declare-fun d!1075345 () Bool)

(declare-fun isEmpty!22921 (Option!8229) Bool)

(assert (=> d!1075345 (= (isDefined!6460 lt!1274070) (not (isEmpty!22921 lt!1274070)))))

(declare-fun bs!572674 () Bool)

(assert (= bs!572674 d!1075345))

(declare-fun m!4168997 () Bool)

(assert (=> bs!572674 m!4168997))

(assert (=> b!3661863 d!1075345))

(declare-fun lt!1274251 () List!38759)

(declare-fun b!3662241 () Bool)

(declare-fun e!2267624 () Bool)

(assert (=> b!3662241 (= e!2267624 (or (not (= suffix!1395 Nil!38635)) (= lt!1274251 lt!1274047)))))

(declare-fun b!3662238 () Bool)

(declare-fun e!2267623 () List!38759)

(assert (=> b!3662238 (= e!2267623 suffix!1395)))

(declare-fun d!1075347 () Bool)

(assert (=> d!1075347 e!2267624))

(declare-fun res!1486849 () Bool)

(assert (=> d!1075347 (=> (not res!1486849) (not e!2267624))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5585 (List!38759) (InoxSet C!21304))

(assert (=> d!1075347 (= res!1486849 (= (content!5585 lt!1274251) ((_ map or) (content!5585 lt!1274047) (content!5585 suffix!1395))))))

(assert (=> d!1075347 (= lt!1274251 e!2267623)))

(declare-fun c!633005 () Bool)

(assert (=> d!1075347 (= c!633005 ((_ is Nil!38635) lt!1274047))))

(assert (=> d!1075347 (= (++!9616 lt!1274047 suffix!1395) lt!1274251)))

(declare-fun b!3662239 () Bool)

(assert (=> b!3662239 (= e!2267623 (Cons!38635 (h!44055 lt!1274047) (++!9616 (t!298622 lt!1274047) suffix!1395)))))

(declare-fun b!3662240 () Bool)

(declare-fun res!1486848 () Bool)

(assert (=> b!3662240 (=> (not res!1486848) (not e!2267624))))

(assert (=> b!3662240 (= res!1486848 (= (size!29521 lt!1274251) (+ (size!29521 lt!1274047) (size!29521 suffix!1395))))))

(assert (= (and d!1075347 c!633005) b!3662238))

(assert (= (and d!1075347 (not c!633005)) b!3662239))

(assert (= (and d!1075347 res!1486849) b!3662240))

(assert (= (and b!3662240 res!1486848) b!3662241))

(declare-fun m!4168999 () Bool)

(assert (=> d!1075347 m!4168999))

(declare-fun m!4169001 () Bool)

(assert (=> d!1075347 m!4169001))

(declare-fun m!4169003 () Bool)

(assert (=> d!1075347 m!4169003))

(declare-fun m!4169005 () Bool)

(assert (=> b!3662239 m!4169005))

(declare-fun m!4169007 () Bool)

(assert (=> b!3662240 m!4169007))

(declare-fun m!4169009 () Bool)

(assert (=> b!3662240 m!4169009))

(declare-fun m!4169011 () Bool)

(assert (=> b!3662240 m!4169011))

(assert (=> b!3661863 d!1075347))

(declare-fun e!2267626 () Bool)

(declare-fun lt!1274252 () List!38759)

(declare-fun b!3662245 () Bool)

(assert (=> b!3662245 (= e!2267626 (or (not (= (_2!22384 lt!1274028) Nil!38635)) (= lt!1274252 lt!1274048)))))

(declare-fun b!3662242 () Bool)

(declare-fun e!2267625 () List!38759)

(assert (=> b!3662242 (= e!2267625 (_2!22384 lt!1274028))))

(declare-fun d!1075349 () Bool)

(assert (=> d!1075349 e!2267626))

(declare-fun res!1486851 () Bool)

(assert (=> d!1075349 (=> (not res!1486851) (not e!2267626))))

(assert (=> d!1075349 (= res!1486851 (= (content!5585 lt!1274252) ((_ map or) (content!5585 lt!1274048) (content!5585 (_2!22384 lt!1274028)))))))

(assert (=> d!1075349 (= lt!1274252 e!2267625)))

(declare-fun c!633006 () Bool)

(assert (=> d!1075349 (= c!633006 ((_ is Nil!38635) lt!1274048))))

(assert (=> d!1075349 (= (++!9616 lt!1274048 (_2!22384 lt!1274028)) lt!1274252)))

(declare-fun b!3662243 () Bool)

(assert (=> b!3662243 (= e!2267625 (Cons!38635 (h!44055 lt!1274048) (++!9616 (t!298622 lt!1274048) (_2!22384 lt!1274028))))))

(declare-fun b!3662244 () Bool)

(declare-fun res!1486850 () Bool)

(assert (=> b!3662244 (=> (not res!1486850) (not e!2267626))))

(assert (=> b!3662244 (= res!1486850 (= (size!29521 lt!1274252) (+ (size!29521 lt!1274048) (size!29521 (_2!22384 lt!1274028)))))))

(assert (= (and d!1075349 c!633006) b!3662242))

(assert (= (and d!1075349 (not c!633006)) b!3662243))

(assert (= (and d!1075349 res!1486851) b!3662244))

(assert (= (and b!3662244 res!1486850) b!3662245))

(declare-fun m!4169013 () Bool)

(assert (=> d!1075349 m!4169013))

(declare-fun m!4169015 () Bool)

(assert (=> d!1075349 m!4169015))

(declare-fun m!4169017 () Bool)

(assert (=> d!1075349 m!4169017))

(declare-fun m!4169019 () Bool)

(assert (=> b!3662243 m!4169019))

(declare-fun m!4169021 () Bool)

(assert (=> b!3662244 m!4169021))

(assert (=> b!3662244 m!4168481))

(declare-fun m!4169023 () Bool)

(assert (=> b!3662244 m!4169023))

(assert (=> b!3661863 d!1075349))

(declare-fun d!1075351 () Bool)

(declare-fun list!14337 (Conc!11815) List!38759)

(assert (=> d!1075351 (= (list!14334 lt!1274056) (list!14337 (c!632925 lt!1274056)))))

(declare-fun bs!572675 () Bool)

(assert (= bs!572675 d!1075351))

(declare-fun m!4169025 () Bool)

(assert (=> bs!572675 m!4169025))

(assert (=> b!3661863 d!1075351))

(declare-fun d!1075353 () Bool)

(declare-fun e!2267629 () Bool)

(assert (=> d!1075353 e!2267629))

(declare-fun res!1486856 () Bool)

(assert (=> d!1075353 (=> (not res!1486856) (not e!2267629))))

(assert (=> d!1075353 (= res!1486856 (isDefined!6460 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 (_1!22384 lt!1274028))))))))

(declare-fun lt!1274255 () Unit!55962)

(declare-fun choose!21692 (LexerInterface!5389 List!38761 List!38759 Token!10966) Unit!55962)

(assert (=> d!1075353 (= lt!1274255 (choose!21692 thiss!23823 rules!3307 lt!1274039 (_1!22384 lt!1274028)))))

(assert (=> d!1075353 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075353 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1404 thiss!23823 rules!3307 lt!1274039 (_1!22384 lt!1274028)) lt!1274255)))

(declare-fun b!3662250 () Bool)

(declare-fun res!1486857 () Bool)

(assert (=> b!3662250 (=> (not res!1486857) (not e!2267629))))

(assert (=> b!3662250 (= res!1486857 (matchR!5128 (regex!5800 (get!12739 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))) (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))))))

(declare-fun b!3662251 () Bool)

(assert (=> b!3662251 (= e!2267629 (= (rule!8614 (_1!22384 lt!1274028)) (get!12739 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))))))

(assert (= (and d!1075353 res!1486856) b!3662250))

(assert (= (and b!3662250 res!1486857) b!3662251))

(assert (=> d!1075353 m!4168485))

(assert (=> d!1075353 m!4168485))

(declare-fun m!4169027 () Bool)

(assert (=> d!1075353 m!4169027))

(declare-fun m!4169029 () Bool)

(assert (=> d!1075353 m!4169029))

(assert (=> d!1075353 m!4168623))

(assert (=> b!3662250 m!4168485))

(assert (=> b!3662250 m!4168501))

(assert (=> b!3662250 m!4168581))

(assert (=> b!3662250 m!4168501))

(assert (=> b!3662250 m!4168485))

(declare-fun m!4169031 () Bool)

(assert (=> b!3662250 m!4169031))

(assert (=> b!3662250 m!4168581))

(declare-fun m!4169033 () Bool)

(assert (=> b!3662250 m!4169033))

(assert (=> b!3662251 m!4168485))

(assert (=> b!3662251 m!4168485))

(assert (=> b!3662251 m!4169031))

(assert (=> b!3661863 d!1075353))

(declare-fun d!1075355 () Bool)

(assert (=> d!1075355 (isPrefix!3163 lt!1274047 (++!9616 lt!1274047 suffix!1395))))

(declare-fun lt!1274258 () Unit!55962)

(declare-fun choose!21693 (List!38759 List!38759) Unit!55962)

(assert (=> d!1075355 (= lt!1274258 (choose!21693 lt!1274047 suffix!1395))))

(assert (=> d!1075355 (= (lemmaConcatTwoListThenFirstIsPrefix!2082 lt!1274047 suffix!1395) lt!1274258)))

(declare-fun bs!572676 () Bool)

(assert (= bs!572676 d!1075355))

(assert (=> bs!572676 m!4168489))

(assert (=> bs!572676 m!4168489))

(declare-fun m!4169035 () Bool)

(assert (=> bs!572676 m!4169035))

(declare-fun m!4169037 () Bool)

(assert (=> bs!572676 m!4169037))

(assert (=> b!3661863 d!1075355))

(declare-fun b!3662263 () Bool)

(declare-fun e!2267638 () Bool)

(assert (=> b!3662263 (= e!2267638 (>= (size!29521 lt!1274039) (size!29521 lt!1274047)))))

(declare-fun b!3662260 () Bool)

(declare-fun e!2267637 () Bool)

(declare-fun e!2267636 () Bool)

(assert (=> b!3662260 (= e!2267637 e!2267636)))

(declare-fun res!1486868 () Bool)

(assert (=> b!3662260 (=> (not res!1486868) (not e!2267636))))

(assert (=> b!3662260 (= res!1486868 (not ((_ is Nil!38635) lt!1274039)))))

(declare-fun d!1075357 () Bool)

(assert (=> d!1075357 e!2267638))

(declare-fun res!1486866 () Bool)

(assert (=> d!1075357 (=> res!1486866 e!2267638)))

(declare-fun lt!1274261 () Bool)

(assert (=> d!1075357 (= res!1486866 (not lt!1274261))))

(assert (=> d!1075357 (= lt!1274261 e!2267637)))

(declare-fun res!1486869 () Bool)

(assert (=> d!1075357 (=> res!1486869 e!2267637)))

(assert (=> d!1075357 (= res!1486869 ((_ is Nil!38635) lt!1274047))))

(assert (=> d!1075357 (= (isPrefix!3163 lt!1274047 lt!1274039) lt!1274261)))

(declare-fun b!3662261 () Bool)

(declare-fun res!1486867 () Bool)

(assert (=> b!3662261 (=> (not res!1486867) (not e!2267636))))

(assert (=> b!3662261 (= res!1486867 (= (head!7830 lt!1274047) (head!7830 lt!1274039)))))

(declare-fun b!3662262 () Bool)

(assert (=> b!3662262 (= e!2267636 (isPrefix!3163 (tail!5671 lt!1274047) (tail!5671 lt!1274039)))))

(assert (= (and d!1075357 (not res!1486869)) b!3662260))

(assert (= (and b!3662260 res!1486868) b!3662261))

(assert (= (and b!3662261 res!1486867) b!3662262))

(assert (= (and d!1075357 (not res!1486866)) b!3662263))

(assert (=> b!3662263 m!4168861))

(assert (=> b!3662263 m!4169009))

(declare-fun m!4169039 () Bool)

(assert (=> b!3662261 m!4169039))

(declare-fun m!4169041 () Bool)

(assert (=> b!3662261 m!4169041))

(declare-fun m!4169043 () Bool)

(assert (=> b!3662262 m!4169043))

(assert (=> b!3662262 m!4168895))

(assert (=> b!3662262 m!4169043))

(assert (=> b!3662262 m!4168895))

(declare-fun m!4169045 () Bool)

(assert (=> b!3662262 m!4169045))

(assert (=> b!3661863 d!1075357))

(declare-fun d!1075359 () Bool)

(assert (=> d!1075359 (= (get!12738 lt!1274042) (v!38119 lt!1274042))))

(assert (=> b!3661863 d!1075359))

(declare-fun b!3662275 () Bool)

(declare-fun e!2267643 () Unit!55962)

(declare-fun Unit!55979 () Unit!55962)

(assert (=> b!3662275 (= e!2267643 Unit!55979)))

(declare-fun d!1075361 () Bool)

(assert (=> d!1075361 (isDefined!6461 (maxPrefix!2923 thiss!23823 rules!3307 (++!9616 lt!1274047 suffix!1395)))))

(declare-fun lt!1274308 () Unit!55962)

(assert (=> d!1075361 (= lt!1274308 e!2267643)))

(declare-fun c!633009 () Bool)

(assert (=> d!1075361 (= c!633009 (isEmpty!22920 (maxPrefix!2923 thiss!23823 rules!3307 (++!9616 lt!1274047 suffix!1395))))))

(declare-fun lt!1274309 () Unit!55962)

(declare-fun lt!1274301 () Unit!55962)

(assert (=> d!1075361 (= lt!1274309 lt!1274301)))

(declare-fun e!2267644 () Bool)

(assert (=> d!1075361 e!2267644))

(declare-fun res!1486875 () Bool)

(assert (=> d!1075361 (=> (not res!1486875) (not e!2267644))))

(declare-fun lt!1274304 () Token!10966)

(assert (=> d!1075361 (= res!1486875 (isDefined!6460 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 lt!1274304)))))))

(assert (=> d!1075361 (= lt!1274301 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1404 thiss!23823 rules!3307 lt!1274047 lt!1274304))))

(declare-fun lt!1274303 () Unit!55962)

(declare-fun lt!1274297 () Unit!55962)

(assert (=> d!1075361 (= lt!1274303 lt!1274297)))

(declare-fun lt!1274296 () List!38759)

(assert (=> d!1075361 (isPrefix!3163 lt!1274296 (++!9616 lt!1274047 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!524 (List!38759 List!38759 List!38759) Unit!55962)

(assert (=> d!1075361 (= lt!1274297 (lemmaPrefixStaysPrefixWhenAddingToSuffix!524 lt!1274296 lt!1274047 suffix!1395))))

(assert (=> d!1075361 (= lt!1274296 (list!14334 (charsOf!3814 lt!1274304)))))

(declare-fun lt!1274310 () Unit!55962)

(declare-fun lt!1274307 () Unit!55962)

(assert (=> d!1075361 (= lt!1274310 lt!1274307)))

(declare-fun lt!1274299 () List!38759)

(declare-fun lt!1274300 () List!38759)

(assert (=> d!1075361 (isPrefix!3163 lt!1274299 (++!9616 lt!1274299 lt!1274300))))

(assert (=> d!1075361 (= lt!1274307 (lemmaConcatTwoListThenFirstIsPrefix!2082 lt!1274299 lt!1274300))))

(assert (=> d!1075361 (= lt!1274300 (_2!22384 (get!12738 (maxPrefix!2923 thiss!23823 rules!3307 lt!1274047))))))

(assert (=> d!1075361 (= lt!1274299 (list!14334 (charsOf!3814 lt!1274304)))))

(declare-datatypes ((List!38764 0))(
  ( (Nil!38640) (Cons!38640 (h!44060 Token!10966) (t!298747 List!38764)) )
))
(declare-fun head!7832 (List!38764) Token!10966)

(declare-datatypes ((IArray!23639 0))(
  ( (IArray!23640 (innerList!11877 List!38764)) )
))
(declare-datatypes ((Conc!11817 0))(
  ( (Node!11817 (left!30159 Conc!11817) (right!30489 Conc!11817) (csize!23864 Int) (cheight!12028 Int)) (Leaf!18328 (xs!15019 IArray!23639) (csize!23865 Int)) (Empty!11817) )
))
(declare-datatypes ((BalanceConc!23248 0))(
  ( (BalanceConc!23249 (c!633087 Conc!11817)) )
))
(declare-fun list!14338 (BalanceConc!23248) List!38764)

(declare-datatypes ((tuple2!38506 0))(
  ( (tuple2!38507 (_1!22387 BalanceConc!23248) (_2!22387 BalanceConc!23244)) )
))
(declare-fun lex!2556 (LexerInterface!5389 List!38761 BalanceConc!23244) tuple2!38506)

(assert (=> d!1075361 (= lt!1274304 (head!7832 (list!14338 (_1!22387 (lex!2556 thiss!23823 rules!3307 (seqFromList!4349 lt!1274047))))))))

(assert (=> d!1075361 (not (isEmpty!22917 rules!3307))))

(assert (=> d!1075361 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1067 thiss!23823 rules!3307 lt!1274047 suffix!1395) lt!1274308)))

(declare-fun b!3662274 () Bool)

(declare-fun Unit!55980 () Unit!55962)

(assert (=> b!3662274 (= e!2267643 Unit!55980)))

(declare-fun lt!1274306 () List!38759)

(assert (=> b!3662274 (= lt!1274306 (++!9616 lt!1274047 suffix!1395))))

(declare-fun lt!1274311 () Unit!55962)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!560 (LexerInterface!5389 Rule!11400 List!38761 List!38759) Unit!55962)

(assert (=> b!3662274 (= lt!1274311 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!560 thiss!23823 (rule!8614 lt!1274304) rules!3307 lt!1274306))))

(assert (=> b!3662274 (isEmpty!22920 (maxPrefixOneRule!2061 thiss!23823 (rule!8614 lt!1274304) lt!1274306))))

(declare-fun lt!1274298 () Unit!55962)

(assert (=> b!3662274 (= lt!1274298 lt!1274311)))

(declare-fun lt!1274312 () List!38759)

(assert (=> b!3662274 (= lt!1274312 (list!14334 (charsOf!3814 lt!1274304)))))

(declare-fun lt!1274305 () Unit!55962)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!548 (LexerInterface!5389 Rule!11400 List!38759 List!38759) Unit!55962)

(assert (=> b!3662274 (= lt!1274305 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!548 thiss!23823 (rule!8614 lt!1274304) lt!1274312 (++!9616 lt!1274047 suffix!1395)))))

(assert (=> b!3662274 (not (matchR!5128 (regex!5800 (rule!8614 lt!1274304)) lt!1274312))))

(declare-fun lt!1274302 () Unit!55962)

(assert (=> b!3662274 (= lt!1274302 lt!1274305)))

(assert (=> b!3662274 false))

(declare-fun b!3662273 () Bool)

(assert (=> b!3662273 (= e!2267644 (= (rule!8614 lt!1274304) (get!12739 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 lt!1274304))))))))

(declare-fun b!3662272 () Bool)

(declare-fun res!1486874 () Bool)

(assert (=> b!3662272 (=> (not res!1486874) (not e!2267644))))

(assert (=> b!3662272 (= res!1486874 (matchR!5128 (regex!5800 (get!12739 (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 lt!1274304))))) (list!14334 (charsOf!3814 lt!1274304))))))

(assert (= (and d!1075361 res!1486875) b!3662272))

(assert (= (and b!3662272 res!1486874) b!3662273))

(assert (= (and d!1075361 c!633009) b!3662274))

(assert (= (and d!1075361 (not c!633009)) b!3662275))

(declare-fun m!4169047 () Bool)

(assert (=> d!1075361 m!4169047))

(assert (=> d!1075361 m!4168571))

(assert (=> d!1075361 m!4168617))

(assert (=> d!1075361 m!4168489))

(declare-fun m!4169049 () Bool)

(assert (=> d!1075361 m!4169049))

(declare-fun m!4169051 () Bool)

(assert (=> d!1075361 m!4169051))

(declare-fun m!4169053 () Bool)

(assert (=> d!1075361 m!4169053))

(declare-fun m!4169055 () Bool)

(assert (=> d!1075361 m!4169055))

(assert (=> d!1075361 m!4168489))

(declare-fun m!4169057 () Bool)

(assert (=> d!1075361 m!4169057))

(assert (=> d!1075361 m!4168571))

(declare-fun m!4169059 () Bool)

(assert (=> d!1075361 m!4169059))

(declare-fun m!4169061 () Bool)

(assert (=> d!1075361 m!4169061))

(declare-fun m!4169063 () Bool)

(assert (=> d!1075361 m!4169063))

(declare-fun m!4169065 () Bool)

(assert (=> d!1075361 m!4169065))

(assert (=> d!1075361 m!4169047))

(declare-fun m!4169067 () Bool)

(assert (=> d!1075361 m!4169067))

(assert (=> d!1075361 m!4169049))

(declare-fun m!4169069 () Bool)

(assert (=> d!1075361 m!4169069))

(declare-fun m!4169071 () Bool)

(assert (=> d!1075361 m!4169071))

(declare-fun m!4169073 () Bool)

(assert (=> d!1075361 m!4169073))

(assert (=> d!1075361 m!4169063))

(declare-fun m!4169075 () Bool)

(assert (=> d!1075361 m!4169075))

(declare-fun m!4169077 () Bool)

(assert (=> d!1075361 m!4169077))

(assert (=> d!1075361 m!4169053))

(assert (=> d!1075361 m!4169061))

(declare-fun m!4169079 () Bool)

(assert (=> d!1075361 m!4169079))

(assert (=> d!1075361 m!4168489))

(assert (=> d!1075361 m!4169049))

(assert (=> d!1075361 m!4169073))

(declare-fun m!4169081 () Bool)

(assert (=> d!1075361 m!4169081))

(assert (=> b!3662274 m!4168489))

(declare-fun m!4169083 () Bool)

(assert (=> b!3662274 m!4169083))

(declare-fun m!4169085 () Bool)

(assert (=> b!3662274 m!4169085))

(declare-fun m!4169087 () Bool)

(assert (=> b!3662274 m!4169087))

(declare-fun m!4169089 () Bool)

(assert (=> b!3662274 m!4169089))

(assert (=> b!3662274 m!4169061))

(assert (=> b!3662274 m!4169079))

(assert (=> b!3662274 m!4168489))

(declare-fun m!4169091 () Bool)

(assert (=> b!3662274 m!4169091))

(assert (=> b!3662274 m!4169061))

(assert (=> b!3662274 m!4169087))

(assert (=> b!3662273 m!4169047))

(assert (=> b!3662273 m!4169047))

(declare-fun m!4169093 () Bool)

(assert (=> b!3662273 m!4169093))

(assert (=> b!3662272 m!4169047))

(assert (=> b!3662272 m!4169047))

(assert (=> b!3662272 m!4169093))

(assert (=> b!3662272 m!4169061))

(assert (=> b!3662272 m!4169079))

(assert (=> b!3662272 m!4169079))

(declare-fun m!4169095 () Bool)

(assert (=> b!3662272 m!4169095))

(assert (=> b!3662272 m!4169061))

(assert (=> b!3661863 d!1075361))

(declare-fun b!3662279 () Bool)

(declare-fun e!2267647 () Bool)

(assert (=> b!3662279 (= e!2267647 (>= (size!29521 (++!9616 lt!1274048 (_2!22384 lt!1274028))) (size!29521 lt!1274048)))))

(declare-fun b!3662276 () Bool)

(declare-fun e!2267646 () Bool)

(declare-fun e!2267645 () Bool)

(assert (=> b!3662276 (= e!2267646 e!2267645)))

(declare-fun res!1486878 () Bool)

(assert (=> b!3662276 (=> (not res!1486878) (not e!2267645))))

(assert (=> b!3662276 (= res!1486878 (not ((_ is Nil!38635) (++!9616 lt!1274048 (_2!22384 lt!1274028)))))))

(declare-fun d!1075363 () Bool)

(assert (=> d!1075363 e!2267647))

(declare-fun res!1486876 () Bool)

(assert (=> d!1075363 (=> res!1486876 e!2267647)))

(declare-fun lt!1274313 () Bool)

(assert (=> d!1075363 (= res!1486876 (not lt!1274313))))

(assert (=> d!1075363 (= lt!1274313 e!2267646)))

(declare-fun res!1486879 () Bool)

(assert (=> d!1075363 (=> res!1486879 e!2267646)))

(assert (=> d!1075363 (= res!1486879 ((_ is Nil!38635) lt!1274048))))

(assert (=> d!1075363 (= (isPrefix!3163 lt!1274048 (++!9616 lt!1274048 (_2!22384 lt!1274028))) lt!1274313)))

(declare-fun b!3662277 () Bool)

(declare-fun res!1486877 () Bool)

(assert (=> b!3662277 (=> (not res!1486877) (not e!2267645))))

(assert (=> b!3662277 (= res!1486877 (= (head!7830 lt!1274048) (head!7830 (++!9616 lt!1274048 (_2!22384 lt!1274028)))))))

(declare-fun b!3662278 () Bool)

(assert (=> b!3662278 (= e!2267645 (isPrefix!3163 (tail!5671 lt!1274048) (tail!5671 (++!9616 lt!1274048 (_2!22384 lt!1274028)))))))

(assert (= (and d!1075363 (not res!1486879)) b!3662276))

(assert (= (and b!3662276 res!1486878) b!3662277))

(assert (= (and b!3662277 res!1486877) b!3662278))

(assert (= (and d!1075363 (not res!1486876)) b!3662279))

(assert (=> b!3662279 m!4168491))

(declare-fun m!4169097 () Bool)

(assert (=> b!3662279 m!4169097))

(assert (=> b!3662279 m!4168481))

(assert (=> b!3662277 m!4168533))

(assert (=> b!3662277 m!4168491))

(declare-fun m!4169099 () Bool)

(assert (=> b!3662277 m!4169099))

(assert (=> b!3662278 m!4168975))

(assert (=> b!3662278 m!4168491))

(declare-fun m!4169101 () Bool)

(assert (=> b!3662278 m!4169101))

(assert (=> b!3662278 m!4168975))

(assert (=> b!3662278 m!4169101))

(declare-fun m!4169103 () Bool)

(assert (=> b!3662278 m!4169103))

(assert (=> b!3661863 d!1075363))

(declare-fun b!3662298 () Bool)

(declare-fun e!2267655 () Bool)

(declare-fun lt!1274325 () Option!8228)

(assert (=> b!3662298 (= e!2267655 (contains!7666 rules!3307 (rule!8614 (_1!22384 (get!12738 lt!1274325)))))))

(declare-fun b!3662299 () Bool)

(declare-fun e!2267656 () Bool)

(assert (=> b!3662299 (= e!2267656 e!2267655)))

(declare-fun res!1486900 () Bool)

(assert (=> b!3662299 (=> (not res!1486900) (not e!2267655))))

(assert (=> b!3662299 (= res!1486900 (isDefined!6461 lt!1274325))))

(declare-fun b!3662300 () Bool)

(declare-fun res!1486899 () Bool)

(assert (=> b!3662300 (=> (not res!1486899) (not e!2267655))))

(assert (=> b!3662300 (= res!1486899 (matchR!5128 (regex!5800 (rule!8614 (_1!22384 (get!12738 lt!1274325)))) (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274325))))))))

(declare-fun call!264918 () Option!8228)

(declare-fun bm!264913 () Bool)

(assert (=> bm!264913 (= call!264918 (maxPrefixOneRule!2061 thiss!23823 (h!44057 rules!3307) lt!1274039))))

(declare-fun b!3662301 () Bool)

(declare-fun e!2267654 () Option!8228)

(declare-fun lt!1274326 () Option!8228)

(declare-fun lt!1274327 () Option!8228)

(assert (=> b!3662301 (= e!2267654 (ite (and ((_ is None!8227) lt!1274326) ((_ is None!8227) lt!1274327)) None!8227 (ite ((_ is None!8227) lt!1274327) lt!1274326 (ite ((_ is None!8227) lt!1274326) lt!1274327 (ite (>= (size!29519 (_1!22384 (v!38119 lt!1274326))) (size!29519 (_1!22384 (v!38119 lt!1274327)))) lt!1274326 lt!1274327)))))))

(assert (=> b!3662301 (= lt!1274326 call!264918)))

(assert (=> b!3662301 (= lt!1274327 (maxPrefix!2923 thiss!23823 (t!298624 rules!3307) lt!1274039))))

(declare-fun b!3662302 () Bool)

(declare-fun res!1486895 () Bool)

(assert (=> b!3662302 (=> (not res!1486895) (not e!2267655))))

(assert (=> b!3662302 (= res!1486895 (= (++!9616 (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274325)))) (_2!22384 (get!12738 lt!1274325))) lt!1274039))))

(declare-fun b!3662303 () Bool)

(assert (=> b!3662303 (= e!2267654 call!264918)))

(declare-fun b!3662304 () Bool)

(declare-fun res!1486898 () Bool)

(assert (=> b!3662304 (=> (not res!1486898) (not e!2267655))))

(assert (=> b!3662304 (= res!1486898 (= (value!185760 (_1!22384 (get!12738 lt!1274325))) (apply!9302 (transformation!5800 (rule!8614 (_1!22384 (get!12738 lt!1274325)))) (seqFromList!4349 (originalCharacters!6514 (_1!22384 (get!12738 lt!1274325)))))))))

(declare-fun b!3662305 () Bool)

(declare-fun res!1486894 () Bool)

(assert (=> b!3662305 (=> (not res!1486894) (not e!2267655))))

(assert (=> b!3662305 (= res!1486894 (< (size!29521 (_2!22384 (get!12738 lt!1274325))) (size!29521 lt!1274039)))))

(declare-fun b!3662306 () Bool)

(declare-fun res!1486896 () Bool)

(assert (=> b!3662306 (=> (not res!1486896) (not e!2267655))))

(assert (=> b!3662306 (= res!1486896 (= (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274325)))) (originalCharacters!6514 (_1!22384 (get!12738 lt!1274325)))))))

(declare-fun d!1075365 () Bool)

(assert (=> d!1075365 e!2267656))

(declare-fun res!1486897 () Bool)

(assert (=> d!1075365 (=> res!1486897 e!2267656)))

(assert (=> d!1075365 (= res!1486897 (isEmpty!22920 lt!1274325))))

(assert (=> d!1075365 (= lt!1274325 e!2267654)))

(declare-fun c!633012 () Bool)

(assert (=> d!1075365 (= c!633012 (and ((_ is Cons!38637) rules!3307) ((_ is Nil!38637) (t!298624 rules!3307))))))

(declare-fun lt!1274324 () Unit!55962)

(declare-fun lt!1274328 () Unit!55962)

(assert (=> d!1075365 (= lt!1274324 lt!1274328)))

(assert (=> d!1075365 (isPrefix!3163 lt!1274039 lt!1274039)))

(declare-fun lemmaIsPrefixRefl!1996 (List!38759 List!38759) Unit!55962)

(assert (=> d!1075365 (= lt!1274328 (lemmaIsPrefixRefl!1996 lt!1274039 lt!1274039))))

(declare-fun rulesValidInductive!2059 (LexerInterface!5389 List!38761) Bool)

(assert (=> d!1075365 (rulesValidInductive!2059 thiss!23823 rules!3307)))

(assert (=> d!1075365 (= (maxPrefix!2923 thiss!23823 rules!3307 lt!1274039) lt!1274325)))

(assert (= (and d!1075365 c!633012) b!3662303))

(assert (= (and d!1075365 (not c!633012)) b!3662301))

(assert (= (or b!3662303 b!3662301) bm!264913))

(assert (= (and d!1075365 (not res!1486897)) b!3662299))

(assert (= (and b!3662299 res!1486900) b!3662306))

(assert (= (and b!3662306 res!1486896) b!3662305))

(assert (= (and b!3662305 res!1486894) b!3662302))

(assert (= (and b!3662302 res!1486895) b!3662304))

(assert (= (and b!3662304 res!1486898) b!3662300))

(assert (= (and b!3662300 res!1486899) b!3662298))

(declare-fun m!4169105 () Bool)

(assert (=> b!3662301 m!4169105))

(declare-fun m!4169107 () Bool)

(assert (=> b!3662305 m!4169107))

(declare-fun m!4169109 () Bool)

(assert (=> b!3662305 m!4169109))

(assert (=> b!3662305 m!4168861))

(assert (=> b!3662300 m!4169107))

(declare-fun m!4169111 () Bool)

(assert (=> b!3662300 m!4169111))

(assert (=> b!3662300 m!4169111))

(declare-fun m!4169113 () Bool)

(assert (=> b!3662300 m!4169113))

(assert (=> b!3662300 m!4169113))

(declare-fun m!4169115 () Bool)

(assert (=> b!3662300 m!4169115))

(declare-fun m!4169117 () Bool)

(assert (=> b!3662299 m!4169117))

(assert (=> b!3662302 m!4169107))

(assert (=> b!3662302 m!4169111))

(assert (=> b!3662302 m!4169111))

(assert (=> b!3662302 m!4169113))

(assert (=> b!3662302 m!4169113))

(declare-fun m!4169119 () Bool)

(assert (=> b!3662302 m!4169119))

(assert (=> b!3662306 m!4169107))

(assert (=> b!3662306 m!4169111))

(assert (=> b!3662306 m!4169111))

(assert (=> b!3662306 m!4169113))

(assert (=> b!3662298 m!4169107))

(declare-fun m!4169121 () Bool)

(assert (=> b!3662298 m!4169121))

(declare-fun m!4169123 () Bool)

(assert (=> bm!264913 m!4169123))

(assert (=> b!3662304 m!4169107))

(declare-fun m!4169125 () Bool)

(assert (=> b!3662304 m!4169125))

(assert (=> b!3662304 m!4169125))

(declare-fun m!4169127 () Bool)

(assert (=> b!3662304 m!4169127))

(declare-fun m!4169129 () Bool)

(assert (=> d!1075365 m!4169129))

(declare-fun m!4169131 () Bool)

(assert (=> d!1075365 m!4169131))

(declare-fun m!4169133 () Bool)

(assert (=> d!1075365 m!4169133))

(declare-fun m!4169135 () Bool)

(assert (=> d!1075365 m!4169135))

(assert (=> b!3661863 d!1075365))

(declare-fun b!3662319 () Bool)

(declare-fun e!2267665 () Bool)

(declare-fun lt!1274337 () Option!8229)

(assert (=> b!3662319 (= e!2267665 (= (tag!6580 (get!12739 lt!1274337)) (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3662320 () Bool)

(declare-fun e!2267666 () Option!8229)

(assert (=> b!3662320 (= e!2267666 None!8228)))

(declare-fun b!3662321 () Bool)

(declare-fun e!2267668 () Bool)

(assert (=> b!3662321 (= e!2267668 e!2267665)))

(declare-fun res!1486906 () Bool)

(assert (=> b!3662321 (=> (not res!1486906) (not e!2267665))))

(assert (=> b!3662321 (= res!1486906 (contains!7666 rules!3307 (get!12739 lt!1274337)))))

(declare-fun d!1075367 () Bool)

(assert (=> d!1075367 e!2267668))

(declare-fun res!1486905 () Bool)

(assert (=> d!1075367 (=> res!1486905 e!2267668)))

(assert (=> d!1075367 (= res!1486905 (isEmpty!22921 lt!1274337))))

(declare-fun e!2267667 () Option!8229)

(assert (=> d!1075367 (= lt!1274337 e!2267667)))

(declare-fun c!633018 () Bool)

(assert (=> d!1075367 (= c!633018 (and ((_ is Cons!38637) rules!3307) (= (tag!6580 (h!44057 rules!3307)) (tag!6580 (rule!8614 (_1!22384 lt!1274028))))))))

(assert (=> d!1075367 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075367 (= (getRuleFromTag!1404 thiss!23823 rules!3307 (tag!6580 (rule!8614 (_1!22384 lt!1274028)))) lt!1274337)))

(declare-fun b!3662322 () Bool)

(assert (=> b!3662322 (= e!2267667 e!2267666)))

(declare-fun c!633017 () Bool)

(assert (=> b!3662322 (= c!633017 (and ((_ is Cons!38637) rules!3307) (not (= (tag!6580 (h!44057 rules!3307)) (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))))))

(declare-fun b!3662323 () Bool)

(assert (=> b!3662323 (= e!2267667 (Some!8228 (h!44057 rules!3307)))))

(declare-fun b!3662324 () Bool)

(declare-fun lt!1274335 () Unit!55962)

(declare-fun lt!1274336 () Unit!55962)

(assert (=> b!3662324 (= lt!1274335 lt!1274336)))

(assert (=> b!3662324 (rulesInvariant!4786 thiss!23823 (t!298624 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!603 (LexerInterface!5389 Rule!11400 List!38761) Unit!55962)

(assert (=> b!3662324 (= lt!1274336 (lemmaInvariantOnRulesThenOnTail!603 thiss!23823 (h!44057 rules!3307) (t!298624 rules!3307)))))

(assert (=> b!3662324 (= e!2267666 (getRuleFromTag!1404 thiss!23823 (t!298624 rules!3307) (tag!6580 (rule!8614 (_1!22384 lt!1274028)))))))

(assert (= (and d!1075367 c!633018) b!3662323))

(assert (= (and d!1075367 (not c!633018)) b!3662322))

(assert (= (and b!3662322 c!633017) b!3662324))

(assert (= (and b!3662322 (not c!633017)) b!3662320))

(assert (= (and d!1075367 (not res!1486905)) b!3662321))

(assert (= (and b!3662321 res!1486906) b!3662319))

(declare-fun m!4169137 () Bool)

(assert (=> b!3662319 m!4169137))

(assert (=> b!3662321 m!4169137))

(assert (=> b!3662321 m!4169137))

(declare-fun m!4169139 () Bool)

(assert (=> b!3662321 m!4169139))

(declare-fun m!4169141 () Bool)

(assert (=> d!1075367 m!4169141))

(assert (=> d!1075367 m!4168623))

(declare-fun m!4169143 () Bool)

(assert (=> b!3662324 m!4169143))

(declare-fun m!4169145 () Bool)

(assert (=> b!3662324 m!4169145))

(declare-fun m!4169147 () Bool)

(assert (=> b!3662324 m!4169147))

(assert (=> b!3661863 d!1075367))

(declare-fun b!3662328 () Bool)

(declare-fun e!2267671 () Bool)

(assert (=> b!3662328 (= e!2267671 (>= (size!29521 lt!1274039) (size!29521 lt!1274048)))))

(declare-fun b!3662325 () Bool)

(declare-fun e!2267670 () Bool)

(declare-fun e!2267669 () Bool)

(assert (=> b!3662325 (= e!2267670 e!2267669)))

(declare-fun res!1486909 () Bool)

(assert (=> b!3662325 (=> (not res!1486909) (not e!2267669))))

(assert (=> b!3662325 (= res!1486909 (not ((_ is Nil!38635) lt!1274039)))))

(declare-fun d!1075369 () Bool)

(assert (=> d!1075369 e!2267671))

(declare-fun res!1486907 () Bool)

(assert (=> d!1075369 (=> res!1486907 e!2267671)))

(declare-fun lt!1274338 () Bool)

(assert (=> d!1075369 (= res!1486907 (not lt!1274338))))

(assert (=> d!1075369 (= lt!1274338 e!2267670)))

(declare-fun res!1486910 () Bool)

(assert (=> d!1075369 (=> res!1486910 e!2267670)))

(assert (=> d!1075369 (= res!1486910 ((_ is Nil!38635) lt!1274048))))

(assert (=> d!1075369 (= (isPrefix!3163 lt!1274048 lt!1274039) lt!1274338)))

(declare-fun b!3662326 () Bool)

(declare-fun res!1486908 () Bool)

(assert (=> b!3662326 (=> (not res!1486908) (not e!2267669))))

(assert (=> b!3662326 (= res!1486908 (= (head!7830 lt!1274048) (head!7830 lt!1274039)))))

(declare-fun b!3662327 () Bool)

(assert (=> b!3662327 (= e!2267669 (isPrefix!3163 (tail!5671 lt!1274048) (tail!5671 lt!1274039)))))

(assert (= (and d!1075369 (not res!1486910)) b!3662325))

(assert (= (and b!3662325 res!1486909) b!3662326))

(assert (= (and b!3662326 res!1486908) b!3662327))

(assert (= (and d!1075369 (not res!1486907)) b!3662328))

(assert (=> b!3662328 m!4168861))

(assert (=> b!3662328 m!4168481))

(assert (=> b!3662326 m!4168533))

(assert (=> b!3662326 m!4169041))

(assert (=> b!3662327 m!4168975))

(assert (=> b!3662327 m!4168895))

(assert (=> b!3662327 m!4168975))

(assert (=> b!3662327 m!4168895))

(declare-fun m!4169149 () Bool)

(assert (=> b!3662327 m!4169149))

(assert (=> b!3661863 d!1075369))

(declare-fun d!1075371 () Bool)

(assert (=> d!1075371 (isPrefix!3163 lt!1274048 (++!9616 lt!1274048 (_2!22384 lt!1274028)))))

(declare-fun lt!1274339 () Unit!55962)

(assert (=> d!1075371 (= lt!1274339 (choose!21693 lt!1274048 (_2!22384 lt!1274028)))))

(assert (=> d!1075371 (= (lemmaConcatTwoListThenFirstIsPrefix!2082 lt!1274048 (_2!22384 lt!1274028)) lt!1274339)))

(declare-fun bs!572677 () Bool)

(assert (= bs!572677 d!1075371))

(assert (=> bs!572677 m!4168491))

(assert (=> bs!572677 m!4168491))

(assert (=> bs!572677 m!4168509))

(declare-fun m!4169151 () Bool)

(assert (=> bs!572677 m!4169151))

(assert (=> b!3661863 d!1075371))

(declare-fun d!1075373 () Bool)

(assert (=> d!1075373 (not (contains!7665 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274052))))

(declare-fun lt!1274342 () Unit!55962)

(declare-fun choose!21695 (LexerInterface!5389 List!38761 List!38761 Rule!11400 Rule!11400 C!21304) Unit!55962)

(assert (=> d!1075373 (= lt!1274342 (choose!21695 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8614 (_1!22384 lt!1274028)) lt!1274052))))

(assert (=> d!1075373 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075373 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!328 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8614 (_1!22384 lt!1274028)) lt!1274052) lt!1274342)))

(declare-fun bs!572678 () Bool)

(assert (= bs!572678 d!1075373))

(assert (=> bs!572678 m!4168513))

(assert (=> bs!572678 m!4168513))

(declare-fun m!4169153 () Bool)

(assert (=> bs!572678 m!4169153))

(declare-fun m!4169155 () Bool)

(assert (=> bs!572678 m!4169155))

(assert (=> bs!572678 m!4168623))

(assert (=> b!3661861 d!1075373))

(declare-fun d!1075375 () Bool)

(declare-fun lt!1274346 () Bool)

(assert (=> d!1075375 (= lt!1274346 (select (content!5585 call!264894) lt!1274035))))

(declare-fun e!2267681 () Bool)

(assert (=> d!1075375 (= lt!1274346 e!2267681)))

(declare-fun res!1486915 () Bool)

(assert (=> d!1075375 (=> (not res!1486915) (not e!2267681))))

(assert (=> d!1075375 (= res!1486915 ((_ is Cons!38635) call!264894))))

(assert (=> d!1075375 (= (contains!7665 call!264894 lt!1274035) lt!1274346)))

(declare-fun b!3662339 () Bool)

(declare-fun e!2267680 () Bool)

(assert (=> b!3662339 (= e!2267681 e!2267680)))

(declare-fun res!1486916 () Bool)

(assert (=> b!3662339 (=> res!1486916 e!2267680)))

(assert (=> b!3662339 (= res!1486916 (= (h!44055 call!264894) lt!1274035))))

(declare-fun b!3662340 () Bool)

(assert (=> b!3662340 (= e!2267680 (contains!7665 (t!298622 call!264894) lt!1274035))))

(assert (= (and d!1075375 res!1486915) b!3662339))

(assert (= (and b!3662339 (not res!1486916)) b!3662340))

(declare-fun m!4169161 () Bool)

(assert (=> d!1075375 m!4169161))

(declare-fun m!4169163 () Bool)

(assert (=> d!1075375 m!4169163))

(declare-fun m!4169165 () Bool)

(assert (=> b!3662340 m!4169165))

(assert (=> bm!264886 d!1075375))

(declare-fun d!1075377 () Bool)

(assert (=> d!1075377 (not (contains!7665 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274035))))

(declare-fun lt!1274347 () Unit!55962)

(assert (=> d!1075377 (= lt!1274347 (choose!21695 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8614 (_1!22384 lt!1274028)) lt!1274035))))

(assert (=> d!1075377 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075377 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!328 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8614 (_1!22384 lt!1274028)) lt!1274035) lt!1274347)))

(declare-fun bs!572679 () Bool)

(assert (= bs!572679 d!1075377))

(assert (=> bs!572679 m!4168513))

(assert (=> bs!572679 m!4168513))

(declare-fun m!4169167 () Bool)

(assert (=> bs!572679 m!4169167))

(declare-fun m!4169171 () Bool)

(assert (=> bs!572679 m!4169171))

(assert (=> bs!572679 m!4168623))

(assert (=> b!3661899 d!1075377))

(declare-fun d!1075379 () Bool)

(declare-fun lt!1274348 () Bool)

(assert (=> d!1075379 (= lt!1274348 (select (content!5585 lt!1274064) lt!1274035))))

(declare-fun e!2267683 () Bool)

(assert (=> d!1075379 (= lt!1274348 e!2267683)))

(declare-fun res!1486917 () Bool)

(assert (=> d!1075379 (=> (not res!1486917) (not e!2267683))))

(assert (=> d!1075379 (= res!1486917 ((_ is Cons!38635) lt!1274064))))

(assert (=> d!1075379 (= (contains!7665 lt!1274064 lt!1274035) lt!1274348)))

(declare-fun b!3662341 () Bool)

(declare-fun e!2267682 () Bool)

(assert (=> b!3662341 (= e!2267683 e!2267682)))

(declare-fun res!1486918 () Bool)

(assert (=> b!3662341 (=> res!1486918 e!2267682)))

(assert (=> b!3662341 (= res!1486918 (= (h!44055 lt!1274064) lt!1274035))))

(declare-fun b!3662342 () Bool)

(assert (=> b!3662342 (= e!2267682 (contains!7665 (t!298622 lt!1274064) lt!1274035))))

(assert (= (and d!1075379 res!1486917) b!3662341))

(assert (= (and b!3662341 (not res!1486918)) b!3662342))

(declare-fun m!4169177 () Bool)

(assert (=> d!1075379 m!4169177))

(declare-fun m!4169179 () Bool)

(assert (=> d!1075379 m!4169179))

(declare-fun m!4169181 () Bool)

(assert (=> b!3662342 m!4169181))

(assert (=> b!3661880 d!1075379))

(declare-fun d!1075383 () Bool)

(assert (=> d!1075383 (= (head!7830 suffix!1395) (h!44055 suffix!1395))))

(assert (=> b!3661880 d!1075383))

(declare-fun b!3662361 () Bool)

(declare-fun e!2267697 () List!38759)

(assert (=> b!3662361 (= e!2267697 Nil!38635)))

(declare-fun b!3662362 () Bool)

(declare-fun e!2267695 () List!38759)

(declare-fun call!264929 () List!38759)

(assert (=> b!3662362 (= e!2267695 call!264929)))

(declare-fun b!3662363 () Bool)

(declare-fun e!2267696 () List!38759)

(assert (=> b!3662363 (= e!2267696 (Cons!38635 (c!632924 (regex!5800 rule!403)) Nil!38635))))

(declare-fun b!3662364 () Bool)

(declare-fun e!2267694 () List!38759)

(assert (=> b!3662364 (= e!2267694 e!2267695)))

(declare-fun c!633028 () Bool)

(assert (=> b!3662364 (= c!633028 ((_ is Union!10559) (regex!5800 rule!403)))))

(declare-fun b!3662365 () Bool)

(declare-fun c!633030 () Bool)

(assert (=> b!3662365 (= c!633030 ((_ is Star!10559) (regex!5800 rule!403)))))

(assert (=> b!3662365 (= e!2267696 e!2267694)))

(declare-fun bm!264923 () Bool)

(declare-fun call!264927 () List!38759)

(declare-fun call!264928 () List!38759)

(assert (=> bm!264923 (= call!264927 call!264928)))

(declare-fun b!3662366 () Bool)

(assert (=> b!3662366 (= e!2267695 call!264929)))

(declare-fun bm!264924 () Bool)

(declare-fun call!264930 () List!38759)

(assert (=> bm!264924 (= call!264930 (usedCharacters!1012 (ite c!633028 (regOne!21631 (regex!5800 rule!403)) (regTwo!21630 (regex!5800 rule!403)))))))

(declare-fun b!3662367 () Bool)

(assert (=> b!3662367 (= e!2267694 call!264928)))

(declare-fun bm!264922 () Bool)

(assert (=> bm!264922 (= call!264928 (usedCharacters!1012 (ite c!633030 (reg!10888 (regex!5800 rule!403)) (ite c!633028 (regTwo!21631 (regex!5800 rule!403)) (regOne!21630 (regex!5800 rule!403))))))))

(declare-fun d!1075385 () Bool)

(declare-fun c!633031 () Bool)

(assert (=> d!1075385 (= c!633031 (or ((_ is EmptyExpr!10559) (regex!5800 rule!403)) ((_ is EmptyLang!10559) (regex!5800 rule!403))))))

(assert (=> d!1075385 (= (usedCharacters!1012 (regex!5800 rule!403)) e!2267697)))

(declare-fun b!3662368 () Bool)

(assert (=> b!3662368 (= e!2267697 e!2267696)))

(declare-fun c!633029 () Bool)

(assert (=> b!3662368 (= c!633029 ((_ is ElementMatch!10559) (regex!5800 rule!403)))))

(declare-fun bm!264925 () Bool)

(assert (=> bm!264925 (= call!264929 (++!9616 (ite c!633028 call!264930 call!264927) (ite c!633028 call!264927 call!264930)))))

(assert (= (and d!1075385 c!633031) b!3662361))

(assert (= (and d!1075385 (not c!633031)) b!3662368))

(assert (= (and b!3662368 c!633029) b!3662363))

(assert (= (and b!3662368 (not c!633029)) b!3662365))

(assert (= (and b!3662365 c!633030) b!3662367))

(assert (= (and b!3662365 (not c!633030)) b!3662364))

(assert (= (and b!3662364 c!633028) b!3662366))

(assert (= (and b!3662364 (not c!633028)) b!3662362))

(assert (= (or b!3662366 b!3662362) bm!264924))

(assert (= (or b!3662366 b!3662362) bm!264923))

(assert (= (or b!3662366 b!3662362) bm!264925))

(assert (= (or b!3662367 bm!264923) bm!264922))

(declare-fun m!4169183 () Bool)

(assert (=> bm!264924 m!4169183))

(declare-fun m!4169185 () Bool)

(assert (=> bm!264922 m!4169185))

(declare-fun m!4169187 () Bool)

(assert (=> bm!264925 m!4169187))

(assert (=> b!3661880 d!1075385))

(declare-fun d!1075387 () Bool)

(declare-fun lt!1274354 () Bool)

(declare-fun content!5587 (List!38761) (InoxSet Rule!11400))

(assert (=> d!1075387 (= lt!1274354 (select (content!5587 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2267706 () Bool)

(assert (=> d!1075387 (= lt!1274354 e!2267706)))

(declare-fun res!1486925 () Bool)

(assert (=> d!1075387 (=> (not res!1486925) (not e!2267706))))

(assert (=> d!1075387 (= res!1486925 ((_ is Cons!38637) rules!3307))))

(assert (=> d!1075387 (= (contains!7666 rules!3307 anOtherTypeRule!33) lt!1274354)))

(declare-fun b!3662378 () Bool)

(declare-fun e!2267707 () Bool)

(assert (=> b!3662378 (= e!2267706 e!2267707)))

(declare-fun res!1486926 () Bool)

(assert (=> b!3662378 (=> res!1486926 e!2267707)))

(assert (=> b!3662378 (= res!1486926 (= (h!44057 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3662379 () Bool)

(assert (=> b!3662379 (= e!2267707 (contains!7666 (t!298624 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1075387 res!1486925) b!3662378))

(assert (= (and b!3662378 (not res!1486926)) b!3662379))

(declare-fun m!4169197 () Bool)

(assert (=> d!1075387 m!4169197))

(declare-fun m!4169199 () Bool)

(assert (=> d!1075387 m!4169199))

(declare-fun m!4169201 () Bool)

(assert (=> b!3662379 m!4169201))

(assert (=> b!3661897 d!1075387))

(declare-fun d!1075391 () Bool)

(declare-fun res!1486937 () Bool)

(declare-fun e!2267716 () Bool)

(assert (=> d!1075391 (=> (not res!1486937) (not e!2267716))))

(assert (=> d!1075391 (= res!1486937 (not (isEmpty!22916 (originalCharacters!6514 token!511))))))

(assert (=> d!1075391 (= (inv!52105 token!511) e!2267716)))

(declare-fun b!3662390 () Bool)

(declare-fun res!1486938 () Bool)

(assert (=> b!3662390 (=> (not res!1486938) (not e!2267716))))

(assert (=> b!3662390 (= res!1486938 (= (originalCharacters!6514 token!511) (list!14334 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (value!185760 token!511)))))))

(declare-fun b!3662391 () Bool)

(assert (=> b!3662391 (= e!2267716 (= (size!29519 token!511) (size!29521 (originalCharacters!6514 token!511))))))

(assert (= (and d!1075391 res!1486937) b!3662390))

(assert (= (and b!3662390 res!1486938) b!3662391))

(declare-fun b_lambda!108635 () Bool)

(assert (=> (not b_lambda!108635) (not b!3662390)))

(declare-fun t!298674 () Bool)

(declare-fun tb!211669 () Bool)

(assert (=> (and b!3661892 (= (toChars!7951 (transformation!5800 (rule!8614 token!511))) (toChars!7951 (transformation!5800 (rule!8614 token!511)))) t!298674) tb!211669))

(declare-fun b!3662392 () Bool)

(declare-fun e!2267717 () Bool)

(declare-fun tp!1115358 () Bool)

(assert (=> b!3662392 (= e!2267717 (and (inv!52108 (c!632925 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (value!185760 token!511)))) tp!1115358))))

(declare-fun result!257698 () Bool)

(assert (=> tb!211669 (= result!257698 (and (inv!52109 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (value!185760 token!511))) e!2267717))))

(assert (= tb!211669 b!3662392))

(declare-fun m!4169209 () Bool)

(assert (=> b!3662392 m!4169209))

(declare-fun m!4169211 () Bool)

(assert (=> tb!211669 m!4169211))

(assert (=> b!3662390 t!298674))

(declare-fun b_and!271923 () Bool)

(assert (= b_and!271883 (and (=> t!298674 result!257698) b_and!271923)))

(declare-fun tb!211671 () Bool)

(declare-fun t!298676 () Bool)

(assert (=> (and b!3661893 (= (toChars!7951 (transformation!5800 rule!403)) (toChars!7951 (transformation!5800 (rule!8614 token!511)))) t!298676) tb!211671))

(declare-fun result!257700 () Bool)

(assert (= result!257700 result!257698))

(assert (=> b!3662390 t!298676))

(declare-fun b_and!271925 () Bool)

(assert (= b_and!271885 (and (=> t!298676 result!257700) b_and!271925)))

(declare-fun t!298678 () Bool)

(declare-fun tb!211673 () Bool)

(assert (=> (and b!3661891 (= (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toChars!7951 (transformation!5800 (rule!8614 token!511)))) t!298678) tb!211673))

(declare-fun result!257702 () Bool)

(assert (= result!257702 result!257698))

(assert (=> b!3662390 t!298678))

(declare-fun b_and!271927 () Bool)

(assert (= b_and!271887 (and (=> t!298678 result!257702) b_and!271927)))

(declare-fun t!298680 () Bool)

(declare-fun tb!211675 () Bool)

(assert (=> (and b!3661852 (= (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toChars!7951 (transformation!5800 (rule!8614 token!511)))) t!298680) tb!211675))

(declare-fun result!257704 () Bool)

(assert (= result!257704 result!257698))

(assert (=> b!3662390 t!298680))

(declare-fun b_and!271929 () Bool)

(assert (= b_and!271889 (and (=> t!298680 result!257704) b_and!271929)))

(declare-fun m!4169213 () Bool)

(assert (=> d!1075391 m!4169213))

(declare-fun m!4169215 () Bool)

(assert (=> b!3662390 m!4169215))

(assert (=> b!3662390 m!4169215))

(declare-fun m!4169217 () Bool)

(assert (=> b!3662390 m!4169217))

(declare-fun m!4169219 () Bool)

(assert (=> b!3662391 m!4169219))

(assert (=> start!342834 d!1075391))

(declare-fun d!1075395 () Bool)

(assert (=> d!1075395 (= (inv!52101 (tag!6580 anOtherTypeRule!33)) (= (mod (str.len (value!185759 (tag!6580 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3661860 d!1075395))

(declare-fun d!1075397 () Bool)

(declare-fun res!1486939 () Bool)

(declare-fun e!2267718 () Bool)

(assert (=> d!1075397 (=> (not res!1486939) (not e!2267718))))

(assert (=> d!1075397 (= res!1486939 (semiInverseModEq!2472 (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toValue!8092 (transformation!5800 anOtherTypeRule!33))))))

(assert (=> d!1075397 (= (inv!52104 (transformation!5800 anOtherTypeRule!33)) e!2267718)))

(declare-fun b!3662393 () Bool)

(assert (=> b!3662393 (= e!2267718 (equivClasses!2371 (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toValue!8092 (transformation!5800 anOtherTypeRule!33))))))

(assert (= (and d!1075397 res!1486939) b!3662393))

(declare-fun m!4169221 () Bool)

(assert (=> d!1075397 m!4169221))

(declare-fun m!4169223 () Bool)

(assert (=> b!3662393 m!4169223))

(assert (=> b!3661860 d!1075397))

(declare-fun d!1075399 () Bool)

(assert (=> d!1075399 (= (isEmpty!22916 (_2!22384 lt!1274036)) ((_ is Nil!38635) (_2!22384 lt!1274036)))))

(assert (=> b!3661898 d!1075399))

(declare-fun b!3662394 () Bool)

(declare-fun e!2267722 () Bool)

(declare-fun e!2267719 () Bool)

(assert (=> b!3662394 (= e!2267722 e!2267719)))

(declare-fun res!1486944 () Bool)

(assert (=> b!3662394 (=> (not res!1486944) (not e!2267719))))

(declare-fun lt!1274358 () Bool)

(assert (=> b!3662394 (= res!1486944 (not lt!1274358))))

(declare-fun b!3662395 () Bool)

(declare-fun e!2267723 () Bool)

(assert (=> b!3662395 (= e!2267723 (not lt!1274358))))

(declare-fun b!3662396 () Bool)

(declare-fun e!2267720 () Bool)

(assert (=> b!3662396 (= e!2267720 (= (head!7830 lt!1274047) (c!632924 (regex!5800 rule!403))))))

(declare-fun b!3662397 () Bool)

(declare-fun e!2267724 () Bool)

(assert (=> b!3662397 (= e!2267724 (nullable!3673 (regex!5800 rule!403)))))

(declare-fun b!3662398 () Bool)

(declare-fun res!1486940 () Bool)

(assert (=> b!3662398 (=> (not res!1486940) (not e!2267720))))

(assert (=> b!3662398 (= res!1486940 (isEmpty!22916 (tail!5671 lt!1274047)))))

(declare-fun b!3662399 () Bool)

(declare-fun e!2267721 () Bool)

(declare-fun call!264931 () Bool)

(assert (=> b!3662399 (= e!2267721 (= lt!1274358 call!264931))))

(declare-fun bm!264926 () Bool)

(assert (=> bm!264926 (= call!264931 (isEmpty!22916 lt!1274047))))

(declare-fun b!3662400 () Bool)

(declare-fun res!1486941 () Bool)

(assert (=> b!3662400 (=> res!1486941 e!2267722)))

(assert (=> b!3662400 (= res!1486941 e!2267720)))

(declare-fun res!1486946 () Bool)

(assert (=> b!3662400 (=> (not res!1486946) (not e!2267720))))

(assert (=> b!3662400 (= res!1486946 lt!1274358)))

(declare-fun d!1075401 () Bool)

(assert (=> d!1075401 e!2267721))

(declare-fun c!633033 () Bool)

(assert (=> d!1075401 (= c!633033 ((_ is EmptyExpr!10559) (regex!5800 rule!403)))))

(assert (=> d!1075401 (= lt!1274358 e!2267724)))

(declare-fun c!633034 () Bool)

(assert (=> d!1075401 (= c!633034 (isEmpty!22916 lt!1274047))))

(assert (=> d!1075401 (validRegex!4835 (regex!5800 rule!403))))

(assert (=> d!1075401 (= (matchR!5128 (regex!5800 rule!403) lt!1274047) lt!1274358)))

(declare-fun b!3662401 () Bool)

(assert (=> b!3662401 (= e!2267721 e!2267723)))

(declare-fun c!633032 () Bool)

(assert (=> b!3662401 (= c!633032 ((_ is EmptyLang!10559) (regex!5800 rule!403)))))

(declare-fun b!3662402 () Bool)

(declare-fun e!2267725 () Bool)

(assert (=> b!3662402 (= e!2267725 (not (= (head!7830 lt!1274047) (c!632924 (regex!5800 rule!403)))))))

(declare-fun b!3662403 () Bool)

(assert (=> b!3662403 (= e!2267724 (matchR!5128 (derivativeStep!3222 (regex!5800 rule!403) (head!7830 lt!1274047)) (tail!5671 lt!1274047)))))

(declare-fun b!3662404 () Bool)

(declare-fun res!1486943 () Bool)

(assert (=> b!3662404 (=> res!1486943 e!2267725)))

(assert (=> b!3662404 (= res!1486943 (not (isEmpty!22916 (tail!5671 lt!1274047))))))

(declare-fun b!3662405 () Bool)

(declare-fun res!1486942 () Bool)

(assert (=> b!3662405 (=> (not res!1486942) (not e!2267720))))

(assert (=> b!3662405 (= res!1486942 (not call!264931))))

(declare-fun b!3662406 () Bool)

(assert (=> b!3662406 (= e!2267719 e!2267725)))

(declare-fun res!1486947 () Bool)

(assert (=> b!3662406 (=> res!1486947 e!2267725)))

(assert (=> b!3662406 (= res!1486947 call!264931)))

(declare-fun b!3662407 () Bool)

(declare-fun res!1486945 () Bool)

(assert (=> b!3662407 (=> res!1486945 e!2267722)))

(assert (=> b!3662407 (= res!1486945 (not ((_ is ElementMatch!10559) (regex!5800 rule!403))))))

(assert (=> b!3662407 (= e!2267723 e!2267722)))

(assert (= (and d!1075401 c!633034) b!3662397))

(assert (= (and d!1075401 (not c!633034)) b!3662403))

(assert (= (and d!1075401 c!633033) b!3662399))

(assert (= (and d!1075401 (not c!633033)) b!3662401))

(assert (= (and b!3662401 c!633032) b!3662395))

(assert (= (and b!3662401 (not c!633032)) b!3662407))

(assert (= (and b!3662407 (not res!1486945)) b!3662400))

(assert (= (and b!3662400 res!1486946) b!3662405))

(assert (= (and b!3662405 res!1486942) b!3662398))

(assert (= (and b!3662398 res!1486940) b!3662396))

(assert (= (and b!3662400 (not res!1486941)) b!3662394))

(assert (= (and b!3662394 res!1486944) b!3662406))

(assert (= (and b!3662406 (not res!1486947)) b!3662404))

(assert (= (and b!3662404 (not res!1486943)) b!3662402))

(assert (= (or b!3662399 b!3662405 b!3662406) bm!264926))

(assert (=> b!3662402 m!4169039))

(assert (=> bm!264926 m!4168545))

(assert (=> b!3662398 m!4169043))

(assert (=> b!3662398 m!4169043))

(declare-fun m!4169225 () Bool)

(assert (=> b!3662398 m!4169225))

(assert (=> b!3662404 m!4169043))

(assert (=> b!3662404 m!4169043))

(assert (=> b!3662404 m!4169225))

(assert (=> b!3662396 m!4169039))

(assert (=> b!3662403 m!4169039))

(assert (=> b!3662403 m!4169039))

(declare-fun m!4169227 () Bool)

(assert (=> b!3662403 m!4169227))

(assert (=> b!3662403 m!4169043))

(assert (=> b!3662403 m!4169227))

(assert (=> b!3662403 m!4169043))

(declare-fun m!4169229 () Bool)

(assert (=> b!3662403 m!4169229))

(declare-fun m!4169231 () Bool)

(assert (=> b!3662397 m!4169231))

(assert (=> d!1075401 m!4168545))

(assert (=> d!1075401 m!4168945))

(assert (=> b!3661859 d!1075401))

(declare-fun d!1075403 () Bool)

(declare-fun res!1486957 () Bool)

(declare-fun e!2267734 () Bool)

(assert (=> d!1075403 (=> (not res!1486957) (not e!2267734))))

(assert (=> d!1075403 (= res!1486957 (validRegex!4835 (regex!5800 rule!403)))))

(assert (=> d!1075403 (= (ruleValid!2064 thiss!23823 rule!403) e!2267734)))

(declare-fun b!3662420 () Bool)

(declare-fun res!1486958 () Bool)

(assert (=> b!3662420 (=> (not res!1486958) (not e!2267734))))

(assert (=> b!3662420 (= res!1486958 (not (nullable!3673 (regex!5800 rule!403))))))

(declare-fun b!3662421 () Bool)

(assert (=> b!3662421 (= e!2267734 (not (= (tag!6580 rule!403) (String!43485 ""))))))

(assert (= (and d!1075403 res!1486957) b!3662420))

(assert (= (and b!3662420 res!1486958) b!3662421))

(assert (=> d!1075403 m!4168945))

(assert (=> b!3662420 m!4169231))

(assert (=> b!3661859 d!1075403))

(declare-fun d!1075411 () Bool)

(assert (=> d!1075411 (ruleValid!2064 thiss!23823 rule!403)))

(declare-fun lt!1274369 () Unit!55962)

(declare-fun choose!21698 (LexerInterface!5389 Rule!11400 List!38761) Unit!55962)

(assert (=> d!1075411 (= lt!1274369 (choose!21698 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1075411 (contains!7666 rules!3307 rule!403)))

(assert (=> d!1075411 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1218 thiss!23823 rule!403 rules!3307) lt!1274369)))

(declare-fun bs!572682 () Bool)

(assert (= bs!572682 d!1075411))

(assert (=> bs!572682 m!4168637))

(declare-fun m!4169259 () Bool)

(assert (=> bs!572682 m!4169259))

(assert (=> bs!572682 m!4168559))

(assert (=> b!3661859 d!1075411))

(declare-fun d!1075413 () Bool)

(assert (=> d!1075413 (= (get!12738 lt!1274066) (v!38119 lt!1274066))))

(assert (=> b!3661896 d!1075413))

(declare-fun b!3662431 () Bool)

(declare-fun e!2267739 () List!38759)

(assert (=> b!3662431 (= e!2267739 Nil!38635)))

(declare-fun b!3662432 () Bool)

(declare-fun e!2267737 () List!38759)

(declare-fun call!264939 () List!38759)

(assert (=> b!3662432 (= e!2267737 call!264939)))

(declare-fun b!3662433 () Bool)

(declare-fun e!2267738 () List!38759)

(assert (=> b!3662433 (= e!2267738 (Cons!38635 (c!632924 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) Nil!38635))))

(declare-fun b!3662434 () Bool)

(declare-fun e!2267736 () List!38759)

(assert (=> b!3662434 (= e!2267736 e!2267737)))

(declare-fun c!633040 () Bool)

(assert (=> b!3662434 (= c!633040 ((_ is Union!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun b!3662435 () Bool)

(declare-fun c!633042 () Bool)

(assert (=> b!3662435 (= c!633042 ((_ is Star!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(assert (=> b!3662435 (= e!2267738 e!2267736)))

(declare-fun bm!264933 () Bool)

(declare-fun call!264937 () List!38759)

(declare-fun call!264938 () List!38759)

(assert (=> bm!264933 (= call!264937 call!264938)))

(declare-fun b!3662436 () Bool)

(assert (=> b!3662436 (= e!2267737 call!264939)))

(declare-fun bm!264934 () Bool)

(declare-fun call!264940 () List!38759)

(assert (=> bm!264934 (= call!264940 (usedCharacters!1012 (ite c!633040 (regOne!21631 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) (regTwo!21630 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))))

(declare-fun b!3662437 () Bool)

(assert (=> b!3662437 (= e!2267736 call!264938)))

(declare-fun bm!264932 () Bool)

(assert (=> bm!264932 (= call!264938 (usedCharacters!1012 (ite c!633042 (reg!10888 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) (ite c!633040 (regTwo!21631 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) (regOne!21630 (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))))))

(declare-fun d!1075415 () Bool)

(declare-fun c!633043 () Bool)

(assert (=> d!1075415 (= c!633043 (or ((_ is EmptyExpr!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) ((_ is EmptyLang!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))))

(assert (=> d!1075415 (= (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) e!2267739)))

(declare-fun b!3662438 () Bool)

(assert (=> b!3662438 (= e!2267739 e!2267738)))

(declare-fun c!633041 () Bool)

(assert (=> b!3662438 (= c!633041 ((_ is ElementMatch!10559) (regex!5800 (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun bm!264935 () Bool)

(assert (=> bm!264935 (= call!264939 (++!9616 (ite c!633040 call!264940 call!264937) (ite c!633040 call!264937 call!264940)))))

(assert (= (and d!1075415 c!633043) b!3662431))

(assert (= (and d!1075415 (not c!633043)) b!3662438))

(assert (= (and b!3662438 c!633041) b!3662433))

(assert (= (and b!3662438 (not c!633041)) b!3662435))

(assert (= (and b!3662435 c!633042) b!3662437))

(assert (= (and b!3662435 (not c!633042)) b!3662434))

(assert (= (and b!3662434 c!633040) b!3662436))

(assert (= (and b!3662434 (not c!633040)) b!3662432))

(assert (= (or b!3662436 b!3662432) bm!264934))

(assert (= (or b!3662436 b!3662432) bm!264933))

(assert (= (or b!3662436 b!3662432) bm!264935))

(assert (= (or b!3662437 bm!264933) bm!264932))

(declare-fun m!4169275 () Bool)

(assert (=> bm!264934 m!4169275))

(declare-fun m!4169277 () Bool)

(assert (=> bm!264932 m!4169277))

(declare-fun m!4169279 () Bool)

(assert (=> bm!264935 m!4169279))

(assert (=> bm!264884 d!1075415))

(declare-fun b!3662440 () Bool)

(declare-fun e!2267744 () Bool)

(declare-fun e!2267741 () Bool)

(assert (=> b!3662440 (= e!2267744 e!2267741)))

(declare-fun res!1486965 () Bool)

(assert (=> b!3662440 (=> (not res!1486965) (not e!2267741))))

(declare-fun lt!1274371 () Bool)

(assert (=> b!3662440 (= res!1486965 (not lt!1274371))))

(declare-fun b!3662441 () Bool)

(declare-fun e!2267745 () Bool)

(assert (=> b!3662441 (= e!2267745 (not lt!1274371))))

(declare-fun b!3662442 () Bool)

(declare-fun e!2267742 () Bool)

(assert (=> b!3662442 (= e!2267742 (= (head!7830 (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))) (c!632924 (regex!5800 lt!1274030))))))

(declare-fun b!3662443 () Bool)

(declare-fun e!2267746 () Bool)

(assert (=> b!3662443 (= e!2267746 (nullable!3673 (regex!5800 lt!1274030)))))

(declare-fun b!3662444 () Bool)

(declare-fun res!1486961 () Bool)

(assert (=> b!3662444 (=> (not res!1486961) (not e!2267742))))

(assert (=> b!3662444 (= res!1486961 (isEmpty!22916 (tail!5671 (list!14334 (charsOf!3814 (_1!22384 lt!1274028))))))))

(declare-fun b!3662445 () Bool)

(declare-fun e!2267743 () Bool)

(declare-fun call!264941 () Bool)

(assert (=> b!3662445 (= e!2267743 (= lt!1274371 call!264941))))

(declare-fun bm!264936 () Bool)

(assert (=> bm!264936 (= call!264941 (isEmpty!22916 (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))))))

(declare-fun b!3662446 () Bool)

(declare-fun res!1486962 () Bool)

(assert (=> b!3662446 (=> res!1486962 e!2267744)))

(assert (=> b!3662446 (= res!1486962 e!2267742)))

(declare-fun res!1486967 () Bool)

(assert (=> b!3662446 (=> (not res!1486967) (not e!2267742))))

(assert (=> b!3662446 (= res!1486967 lt!1274371)))

(declare-fun d!1075421 () Bool)

(assert (=> d!1075421 e!2267743))

(declare-fun c!633045 () Bool)

(assert (=> d!1075421 (= c!633045 ((_ is EmptyExpr!10559) (regex!5800 lt!1274030)))))

(assert (=> d!1075421 (= lt!1274371 e!2267746)))

(declare-fun c!633046 () Bool)

(assert (=> d!1075421 (= c!633046 (isEmpty!22916 (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))))))

(assert (=> d!1075421 (validRegex!4835 (regex!5800 lt!1274030))))

(assert (=> d!1075421 (= (matchR!5128 (regex!5800 lt!1274030) (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))) lt!1274371)))

(declare-fun b!3662447 () Bool)

(assert (=> b!3662447 (= e!2267743 e!2267745)))

(declare-fun c!633044 () Bool)

(assert (=> b!3662447 (= c!633044 ((_ is EmptyLang!10559) (regex!5800 lt!1274030)))))

(declare-fun b!3662448 () Bool)

(declare-fun e!2267747 () Bool)

(assert (=> b!3662448 (= e!2267747 (not (= (head!7830 (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))) (c!632924 (regex!5800 lt!1274030)))))))

(declare-fun b!3662449 () Bool)

(assert (=> b!3662449 (= e!2267746 (matchR!5128 (derivativeStep!3222 (regex!5800 lt!1274030) (head!7830 (list!14334 (charsOf!3814 (_1!22384 lt!1274028))))) (tail!5671 (list!14334 (charsOf!3814 (_1!22384 lt!1274028))))))))

(declare-fun b!3662450 () Bool)

(declare-fun res!1486964 () Bool)

(assert (=> b!3662450 (=> res!1486964 e!2267747)))

(assert (=> b!3662450 (= res!1486964 (not (isEmpty!22916 (tail!5671 (list!14334 (charsOf!3814 (_1!22384 lt!1274028)))))))))

(declare-fun b!3662451 () Bool)

(declare-fun res!1486963 () Bool)

(assert (=> b!3662451 (=> (not res!1486963) (not e!2267742))))

(assert (=> b!3662451 (= res!1486963 (not call!264941))))

(declare-fun b!3662452 () Bool)

(assert (=> b!3662452 (= e!2267741 e!2267747)))

(declare-fun res!1486968 () Bool)

(assert (=> b!3662452 (=> res!1486968 e!2267747)))

(assert (=> b!3662452 (= res!1486968 call!264941)))

(declare-fun b!3662453 () Bool)

(declare-fun res!1486966 () Bool)

(assert (=> b!3662453 (=> res!1486966 e!2267744)))

(assert (=> b!3662453 (= res!1486966 (not ((_ is ElementMatch!10559) (regex!5800 lt!1274030))))))

(assert (=> b!3662453 (= e!2267745 e!2267744)))

(assert (= (and d!1075421 c!633046) b!3662443))

(assert (= (and d!1075421 (not c!633046)) b!3662449))

(assert (= (and d!1075421 c!633045) b!3662445))

(assert (= (and d!1075421 (not c!633045)) b!3662447))

(assert (= (and b!3662447 c!633044) b!3662441))

(assert (= (and b!3662447 (not c!633044)) b!3662453))

(assert (= (and b!3662453 (not res!1486966)) b!3662446))

(assert (= (and b!3662446 res!1486967) b!3662451))

(assert (= (and b!3662451 res!1486963) b!3662444))

(assert (= (and b!3662444 res!1486961) b!3662442))

(assert (= (and b!3662446 (not res!1486962)) b!3662440))

(assert (= (and b!3662440 res!1486965) b!3662452))

(assert (= (and b!3662452 (not res!1486968)) b!3662450))

(assert (= (and b!3662450 (not res!1486964)) b!3662448))

(assert (= (or b!3662445 b!3662451 b!3662452) bm!264936))

(assert (=> b!3662448 m!4168581))

(declare-fun m!4169291 () Bool)

(assert (=> b!3662448 m!4169291))

(assert (=> bm!264936 m!4168581))

(declare-fun m!4169293 () Bool)

(assert (=> bm!264936 m!4169293))

(assert (=> b!3662444 m!4168581))

(declare-fun m!4169295 () Bool)

(assert (=> b!3662444 m!4169295))

(assert (=> b!3662444 m!4169295))

(declare-fun m!4169297 () Bool)

(assert (=> b!3662444 m!4169297))

(assert (=> b!3662450 m!4168581))

(assert (=> b!3662450 m!4169295))

(assert (=> b!3662450 m!4169295))

(assert (=> b!3662450 m!4169297))

(assert (=> b!3662442 m!4168581))

(assert (=> b!3662442 m!4169291))

(assert (=> b!3662449 m!4168581))

(assert (=> b!3662449 m!4169291))

(assert (=> b!3662449 m!4169291))

(declare-fun m!4169299 () Bool)

(assert (=> b!3662449 m!4169299))

(assert (=> b!3662449 m!4168581))

(assert (=> b!3662449 m!4169295))

(assert (=> b!3662449 m!4169299))

(assert (=> b!3662449 m!4169295))

(declare-fun m!4169301 () Bool)

(assert (=> b!3662449 m!4169301))

(declare-fun m!4169303 () Bool)

(assert (=> b!3662443 m!4169303))

(assert (=> d!1075421 m!4168581))

(assert (=> d!1075421 m!4169293))

(declare-fun m!4169305 () Bool)

(assert (=> d!1075421 m!4169305))

(assert (=> b!3661879 d!1075421))

(declare-fun d!1075427 () Bool)

(assert (=> d!1075427 (= (list!14334 (charsOf!3814 (_1!22384 lt!1274028))) (list!14337 (c!632925 (charsOf!3814 (_1!22384 lt!1274028)))))))

(declare-fun bs!572685 () Bool)

(assert (= bs!572685 d!1075427))

(declare-fun m!4169307 () Bool)

(assert (=> bs!572685 m!4169307))

(assert (=> b!3661879 d!1075427))

(assert (=> b!3661879 d!1075343))

(declare-fun d!1075429 () Bool)

(assert (=> d!1075429 (= (get!12739 lt!1274070) (v!38120 lt!1274070))))

(assert (=> b!3661879 d!1075429))

(declare-fun d!1075431 () Bool)

(assert (=> d!1075431 (= (inv!52101 (tag!6580 (rule!8614 token!511))) (= (mod (str.len (value!185759 (tag!6580 (rule!8614 token!511)))) 2) 0))))

(assert (=> b!3661858 d!1075431))

(declare-fun d!1075433 () Bool)

(declare-fun res!1486969 () Bool)

(declare-fun e!2267750 () Bool)

(assert (=> d!1075433 (=> (not res!1486969) (not e!2267750))))

(assert (=> d!1075433 (= res!1486969 (semiInverseModEq!2472 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (toValue!8092 (transformation!5800 (rule!8614 token!511)))))))

(assert (=> d!1075433 (= (inv!52104 (transformation!5800 (rule!8614 token!511))) e!2267750)))

(declare-fun b!3662458 () Bool)

(assert (=> b!3662458 (= e!2267750 (equivClasses!2371 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (toValue!8092 (transformation!5800 (rule!8614 token!511)))))))

(assert (= (and d!1075433 res!1486969) b!3662458))

(declare-fun m!4169309 () Bool)

(assert (=> d!1075433 m!4169309))

(declare-fun m!4169311 () Bool)

(assert (=> b!3662458 m!4169311))

(assert (=> b!3661858 d!1075433))

(assert (=> bm!264885 d!1075415))

(declare-fun d!1075435 () Bool)

(declare-fun lt!1274375 () Bool)

(assert (=> d!1075435 (= lt!1274375 (select (content!5585 (usedCharacters!1012 (regex!5800 anOtherTypeRule!33))) lt!1274035))))

(declare-fun e!2267753 () Bool)

(assert (=> d!1075435 (= lt!1274375 e!2267753)))

(declare-fun res!1486970 () Bool)

(assert (=> d!1075435 (=> (not res!1486970) (not e!2267753))))

(assert (=> d!1075435 (= res!1486970 ((_ is Cons!38635) (usedCharacters!1012 (regex!5800 anOtherTypeRule!33))))))

(assert (=> d!1075435 (= (contains!7665 (usedCharacters!1012 (regex!5800 anOtherTypeRule!33)) lt!1274035) lt!1274375)))

(declare-fun b!3662461 () Bool)

(declare-fun e!2267752 () Bool)

(assert (=> b!3662461 (= e!2267753 e!2267752)))

(declare-fun res!1486971 () Bool)

(assert (=> b!3662461 (=> res!1486971 e!2267752)))

(assert (=> b!3662461 (= res!1486971 (= (h!44055 (usedCharacters!1012 (regex!5800 anOtherTypeRule!33))) lt!1274035))))

(declare-fun b!3662462 () Bool)

(assert (=> b!3662462 (= e!2267752 (contains!7665 (t!298622 (usedCharacters!1012 (regex!5800 anOtherTypeRule!33))) lt!1274035))))

(assert (= (and d!1075435 res!1486970) b!3662461))

(assert (= (and b!3662461 (not res!1486971)) b!3662462))

(assert (=> d!1075435 m!4168577))

(declare-fun m!4169315 () Bool)

(assert (=> d!1075435 m!4169315))

(declare-fun m!4169317 () Bool)

(assert (=> d!1075435 m!4169317))

(declare-fun m!4169319 () Bool)

(assert (=> b!3662462 m!4169319))

(assert (=> b!3661878 d!1075435))

(declare-fun b!3662465 () Bool)

(declare-fun e!2267758 () List!38759)

(assert (=> b!3662465 (= e!2267758 Nil!38635)))

(declare-fun b!3662466 () Bool)

(declare-fun e!2267756 () List!38759)

(declare-fun call!264944 () List!38759)

(assert (=> b!3662466 (= e!2267756 call!264944)))

(declare-fun b!3662467 () Bool)

(declare-fun e!2267757 () List!38759)

(assert (=> b!3662467 (= e!2267757 (Cons!38635 (c!632924 (regex!5800 anOtherTypeRule!33)) Nil!38635))))

(declare-fun b!3662468 () Bool)

(declare-fun e!2267755 () List!38759)

(assert (=> b!3662468 (= e!2267755 e!2267756)))

(declare-fun c!633051 () Bool)

(assert (=> b!3662468 (= c!633051 ((_ is Union!10559) (regex!5800 anOtherTypeRule!33)))))

(declare-fun b!3662469 () Bool)

(declare-fun c!633053 () Bool)

(assert (=> b!3662469 (= c!633053 ((_ is Star!10559) (regex!5800 anOtherTypeRule!33)))))

(assert (=> b!3662469 (= e!2267757 e!2267755)))

(declare-fun bm!264938 () Bool)

(declare-fun call!264942 () List!38759)

(declare-fun call!264943 () List!38759)

(assert (=> bm!264938 (= call!264942 call!264943)))

(declare-fun b!3662470 () Bool)

(assert (=> b!3662470 (= e!2267756 call!264944)))

(declare-fun bm!264939 () Bool)

(declare-fun call!264945 () List!38759)

(assert (=> bm!264939 (= call!264945 (usedCharacters!1012 (ite c!633051 (regOne!21631 (regex!5800 anOtherTypeRule!33)) (regTwo!21630 (regex!5800 anOtherTypeRule!33)))))))

(declare-fun b!3662471 () Bool)

(assert (=> b!3662471 (= e!2267755 call!264943)))

(declare-fun bm!264937 () Bool)

(assert (=> bm!264937 (= call!264943 (usedCharacters!1012 (ite c!633053 (reg!10888 (regex!5800 anOtherTypeRule!33)) (ite c!633051 (regTwo!21631 (regex!5800 anOtherTypeRule!33)) (regOne!21630 (regex!5800 anOtherTypeRule!33))))))))

(declare-fun d!1075439 () Bool)

(declare-fun c!633054 () Bool)

(assert (=> d!1075439 (= c!633054 (or ((_ is EmptyExpr!10559) (regex!5800 anOtherTypeRule!33)) ((_ is EmptyLang!10559) (regex!5800 anOtherTypeRule!33))))))

(assert (=> d!1075439 (= (usedCharacters!1012 (regex!5800 anOtherTypeRule!33)) e!2267758)))

(declare-fun b!3662472 () Bool)

(assert (=> b!3662472 (= e!2267758 e!2267757)))

(declare-fun c!633052 () Bool)

(assert (=> b!3662472 (= c!633052 ((_ is ElementMatch!10559) (regex!5800 anOtherTypeRule!33)))))

(declare-fun bm!264940 () Bool)

(assert (=> bm!264940 (= call!264944 (++!9616 (ite c!633051 call!264945 call!264942) (ite c!633051 call!264942 call!264945)))))

(assert (= (and d!1075439 c!633054) b!3662465))

(assert (= (and d!1075439 (not c!633054)) b!3662472))

(assert (= (and b!3662472 c!633052) b!3662467))

(assert (= (and b!3662472 (not c!633052)) b!3662469))

(assert (= (and b!3662469 c!633053) b!3662471))

(assert (= (and b!3662469 (not c!633053)) b!3662468))

(assert (= (and b!3662468 c!633051) b!3662470))

(assert (= (and b!3662468 (not c!633051)) b!3662466))

(assert (= (or b!3662470 b!3662466) bm!264939))

(assert (= (or b!3662470 b!3662466) bm!264938))

(assert (= (or b!3662470 b!3662466) bm!264940))

(assert (= (or b!3662471 bm!264938) bm!264937))

(declare-fun m!4169325 () Bool)

(assert (=> bm!264939 m!4169325))

(declare-fun m!4169327 () Bool)

(assert (=> bm!264937 m!4169327))

(declare-fun m!4169329 () Bool)

(assert (=> bm!264940 m!4169329))

(assert (=> b!3661878 d!1075439))

(declare-fun d!1075443 () Bool)

(assert (=> d!1075443 (not (contains!7665 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274035))))

(declare-fun lt!1274379 () Unit!55962)

(declare-fun choose!21700 (LexerInterface!5389 List!38761 List!38761 Rule!11400 Rule!11400 C!21304) Unit!55962)

(assert (=> d!1075443 (= lt!1274379 (choose!21700 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) anOtherTypeRule!33 lt!1274035))))

(assert (=> d!1075443 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075443 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!446 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) anOtherTypeRule!33 lt!1274035) lt!1274379)))

(declare-fun bs!572686 () Bool)

(assert (= bs!572686 d!1075443))

(assert (=> bs!572686 m!4168513))

(assert (=> bs!572686 m!4168513))

(assert (=> bs!572686 m!4169167))

(declare-fun m!4169331 () Bool)

(assert (=> bs!572686 m!4169331))

(assert (=> bs!572686 m!4168623))

(assert (=> b!3661895 d!1075443))

(declare-fun d!1075445 () Bool)

(assert (=> d!1075445 (= lt!1274048 lt!1274047)))

(declare-fun lt!1274382 () Unit!55962)

(declare-fun choose!21701 (List!38759 List!38759 List!38759) Unit!55962)

(assert (=> d!1075445 (= lt!1274382 (choose!21701 lt!1274048 lt!1274047 lt!1274039))))

(assert (=> d!1075445 (isPrefix!3163 lt!1274048 lt!1274039)))

(assert (=> d!1075445 (= (lemmaIsPrefixSameLengthThenSameList!625 lt!1274048 lt!1274047 lt!1274039) lt!1274382)))

(declare-fun bs!572687 () Bool)

(assert (= bs!572687 d!1075445))

(declare-fun m!4169333 () Bool)

(assert (=> bs!572687 m!4169333))

(assert (=> bs!572687 m!4168487))

(assert (=> b!3661877 d!1075445))

(declare-fun d!1075447 () Bool)

(declare-fun lt!1274385 () Int)

(assert (=> d!1075447 (= lt!1274385 (size!29521 (list!14334 lt!1274044)))))

(declare-fun size!29523 (Conc!11815) Int)

(assert (=> d!1075447 (= lt!1274385 (size!29523 (c!632925 lt!1274044)))))

(assert (=> d!1075447 (= (size!29520 lt!1274044) lt!1274385)))

(declare-fun bs!572688 () Bool)

(assert (= bs!572688 d!1075447))

(assert (=> bs!572688 m!4168573))

(assert (=> bs!572688 m!4168573))

(declare-fun m!4169335 () Bool)

(assert (=> bs!572688 m!4169335))

(declare-fun m!4169337 () Bool)

(assert (=> bs!572688 m!4169337))

(assert (=> b!3661877 d!1075447))

(declare-fun d!1075449 () Bool)

(declare-fun lt!1274386 () Bool)

(assert (=> d!1075449 (= lt!1274386 (select (content!5585 lt!1274064) lt!1274052))))

(declare-fun e!2267760 () Bool)

(assert (=> d!1075449 (= lt!1274386 e!2267760)))

(declare-fun res!1486972 () Bool)

(assert (=> d!1075449 (=> (not res!1486972) (not e!2267760))))

(assert (=> d!1075449 (= res!1486972 ((_ is Cons!38635) lt!1274064))))

(assert (=> d!1075449 (= (contains!7665 lt!1274064 lt!1274052) lt!1274386)))

(declare-fun b!3662473 () Bool)

(declare-fun e!2267759 () Bool)

(assert (=> b!3662473 (= e!2267760 e!2267759)))

(declare-fun res!1486973 () Bool)

(assert (=> b!3662473 (=> res!1486973 e!2267759)))

(assert (=> b!3662473 (= res!1486973 (= (h!44055 lt!1274064) lt!1274052))))

(declare-fun b!3662474 () Bool)

(assert (=> b!3662474 (= e!2267759 (contains!7665 (t!298622 lt!1274064) lt!1274052))))

(assert (= (and d!1075449 res!1486972) b!3662473))

(assert (= (and b!3662473 (not res!1486973)) b!3662474))

(assert (=> d!1075449 m!4169177))

(declare-fun m!4169339 () Bool)

(assert (=> d!1075449 m!4169339))

(declare-fun m!4169341 () Bool)

(assert (=> b!3662474 m!4169341))

(assert (=> b!3661877 d!1075449))

(declare-fun d!1075451 () Bool)

(assert (=> d!1075451 (= (head!7830 lt!1274048) (h!44055 lt!1274048))))

(assert (=> b!3661877 d!1075451))

(declare-fun b!3662483 () Bool)

(declare-fun e!2267767 () Int)

(assert (=> b!3662483 (= e!2267767 0)))

(declare-fun b!3662486 () Bool)

(declare-fun e!2267766 () Int)

(assert (=> b!3662486 (= e!2267766 (- 1))))

(declare-fun b!3662484 () Bool)

(assert (=> b!3662484 (= e!2267767 e!2267766)))

(declare-fun c!633060 () Bool)

(assert (=> b!3662484 (= c!633060 (and ((_ is Cons!38637) rules!3307) (not (= (h!44057 rules!3307) (rule!8614 (_1!22384 lt!1274028))))))))

(declare-fun b!3662485 () Bool)

(assert (=> b!3662485 (= e!2267766 (+ 1 (getIndex!468 (t!298624 rules!3307) (rule!8614 (_1!22384 lt!1274028)))))))

(declare-fun d!1075453 () Bool)

(declare-fun lt!1274389 () Int)

(assert (=> d!1075453 (>= lt!1274389 0)))

(assert (=> d!1075453 (= lt!1274389 e!2267767)))

(declare-fun c!633061 () Bool)

(assert (=> d!1075453 (= c!633061 (and ((_ is Cons!38637) rules!3307) (= (h!44057 rules!3307) (rule!8614 (_1!22384 lt!1274028)))))))

(assert (=> d!1075453 (contains!7666 rules!3307 (rule!8614 (_1!22384 lt!1274028)))))

(assert (=> d!1075453 (= (getIndex!468 rules!3307 (rule!8614 (_1!22384 lt!1274028))) lt!1274389)))

(assert (= (and d!1075453 c!633061) b!3662483))

(assert (= (and d!1075453 (not c!633061)) b!3662484))

(assert (= (and b!3662484 c!633060) b!3662485))

(assert (= (and b!3662484 (not c!633060)) b!3662486))

(declare-fun m!4169343 () Bool)

(assert (=> b!3662485 m!4169343))

(assert (=> d!1075453 m!4168633))

(assert (=> b!3661857 d!1075453))

(declare-fun b!3662487 () Bool)

(declare-fun e!2267769 () Int)

(assert (=> b!3662487 (= e!2267769 0)))

(declare-fun b!3662490 () Bool)

(declare-fun e!2267768 () Int)

(assert (=> b!3662490 (= e!2267768 (- 1))))

(declare-fun b!3662488 () Bool)

(assert (=> b!3662488 (= e!2267769 e!2267768)))

(declare-fun c!633062 () Bool)

(assert (=> b!3662488 (= c!633062 (and ((_ is Cons!38637) rules!3307) (not (= (h!44057 rules!3307) rule!403))))))

(declare-fun b!3662489 () Bool)

(assert (=> b!3662489 (= e!2267768 (+ 1 (getIndex!468 (t!298624 rules!3307) rule!403)))))

(declare-fun d!1075455 () Bool)

(declare-fun lt!1274390 () Int)

(assert (=> d!1075455 (>= lt!1274390 0)))

(assert (=> d!1075455 (= lt!1274390 e!2267769)))

(declare-fun c!633063 () Bool)

(assert (=> d!1075455 (= c!633063 (and ((_ is Cons!38637) rules!3307) (= (h!44057 rules!3307) rule!403)))))

(assert (=> d!1075455 (contains!7666 rules!3307 rule!403)))

(assert (=> d!1075455 (= (getIndex!468 rules!3307 rule!403) lt!1274390)))

(assert (= (and d!1075455 c!633063) b!3662487))

(assert (= (and d!1075455 (not c!633063)) b!3662488))

(assert (= (and b!3662488 c!633062) b!3662489))

(assert (= (and b!3662488 (not c!633062)) b!3662490))

(declare-fun m!4169345 () Bool)

(assert (=> b!3662489 m!4169345))

(assert (=> d!1075455 m!4168559))

(assert (=> b!3661857 d!1075455))

(declare-fun d!1075457 () Bool)

(declare-fun res!1486976 () Bool)

(declare-fun e!2267772 () Bool)

(assert (=> d!1075457 (=> (not res!1486976) (not e!2267772))))

(declare-fun rulesValid!2230 (LexerInterface!5389 List!38761) Bool)

(assert (=> d!1075457 (= res!1486976 (rulesValid!2230 thiss!23823 rules!3307))))

(assert (=> d!1075457 (= (rulesInvariant!4786 thiss!23823 rules!3307) e!2267772)))

(declare-fun b!3662493 () Bool)

(declare-datatypes ((List!38765 0))(
  ( (Nil!38641) (Cons!38641 (h!44061 String!43484) (t!298748 List!38765)) )
))
(declare-fun noDuplicateTag!2226 (LexerInterface!5389 List!38761 List!38765) Bool)

(assert (=> b!3662493 (= e!2267772 (noDuplicateTag!2226 thiss!23823 rules!3307 Nil!38641))))

(assert (= (and d!1075457 res!1486976) b!3662493))

(declare-fun m!4169347 () Bool)

(assert (=> d!1075457 m!4169347))

(declare-fun m!4169349 () Bool)

(assert (=> b!3662493 m!4169349))

(assert (=> b!3661855 d!1075457))

(declare-fun b!3662497 () Bool)

(declare-fun e!2267775 () Bool)

(assert (=> b!3662497 (= e!2267775 (>= (size!29521 lt!1274047) (size!29521 lt!1274047)))))

(declare-fun b!3662494 () Bool)

(declare-fun e!2267774 () Bool)

(declare-fun e!2267773 () Bool)

(assert (=> b!3662494 (= e!2267774 e!2267773)))

(declare-fun res!1486979 () Bool)

(assert (=> b!3662494 (=> (not res!1486979) (not e!2267773))))

(assert (=> b!3662494 (= res!1486979 (not ((_ is Nil!38635) lt!1274047)))))

(declare-fun d!1075459 () Bool)

(assert (=> d!1075459 e!2267775))

(declare-fun res!1486977 () Bool)

(assert (=> d!1075459 (=> res!1486977 e!2267775)))

(declare-fun lt!1274391 () Bool)

(assert (=> d!1075459 (= res!1486977 (not lt!1274391))))

(assert (=> d!1075459 (= lt!1274391 e!2267774)))

(declare-fun res!1486980 () Bool)

(assert (=> d!1075459 (=> res!1486980 e!2267774)))

(assert (=> d!1075459 (= res!1486980 ((_ is Nil!38635) lt!1274047))))

(assert (=> d!1075459 (= (isPrefix!3163 lt!1274047 lt!1274047) lt!1274391)))

(declare-fun b!3662495 () Bool)

(declare-fun res!1486978 () Bool)

(assert (=> b!3662495 (=> (not res!1486978) (not e!2267773))))

(assert (=> b!3662495 (= res!1486978 (= (head!7830 lt!1274047) (head!7830 lt!1274047)))))

(declare-fun b!3662496 () Bool)

(assert (=> b!3662496 (= e!2267773 (isPrefix!3163 (tail!5671 lt!1274047) (tail!5671 lt!1274047)))))

(assert (= (and d!1075459 (not res!1486980)) b!3662494))

(assert (= (and b!3662494 res!1486979) b!3662495))

(assert (= (and b!3662495 res!1486978) b!3662496))

(assert (= (and d!1075459 (not res!1486977)) b!3662497))

(assert (=> b!3662497 m!4169009))

(assert (=> b!3662497 m!4169009))

(assert (=> b!3662495 m!4169039))

(assert (=> b!3662495 m!4169039))

(assert (=> b!3662496 m!4169043))

(assert (=> b!3662496 m!4169043))

(assert (=> b!3662496 m!4169043))

(assert (=> b!3662496 m!4169043))

(declare-fun m!4169351 () Bool)

(assert (=> b!3662496 m!4169351))

(assert (=> b!3661856 d!1075459))

(declare-fun d!1075461 () Bool)

(assert (=> d!1075461 (= (isEmpty!22916 (getSuffix!1716 lt!1274047 lt!1274047)) ((_ is Nil!38635) (getSuffix!1716 lt!1274047 lt!1274047)))))

(assert (=> b!3661856 d!1075461))

(declare-fun d!1075463 () Bool)

(declare-fun lt!1274392 () List!38759)

(assert (=> d!1075463 (= (++!9616 lt!1274047 lt!1274392) lt!1274047)))

(declare-fun e!2267776 () List!38759)

(assert (=> d!1075463 (= lt!1274392 e!2267776)))

(declare-fun c!633064 () Bool)

(assert (=> d!1075463 (= c!633064 ((_ is Cons!38635) lt!1274047))))

(assert (=> d!1075463 (>= (size!29521 lt!1274047) (size!29521 lt!1274047))))

(assert (=> d!1075463 (= (getSuffix!1716 lt!1274047 lt!1274047) lt!1274392)))

(declare-fun b!3662498 () Bool)

(assert (=> b!3662498 (= e!2267776 (getSuffix!1716 (tail!5671 lt!1274047) (t!298622 lt!1274047)))))

(declare-fun b!3662499 () Bool)

(assert (=> b!3662499 (= e!2267776 lt!1274047)))

(assert (= (and d!1075463 c!633064) b!3662498))

(assert (= (and d!1075463 (not c!633064)) b!3662499))

(declare-fun m!4169353 () Bool)

(assert (=> d!1075463 m!4169353))

(assert (=> d!1075463 m!4169009))

(assert (=> d!1075463 m!4169009))

(assert (=> b!3662498 m!4169043))

(assert (=> b!3662498 m!4169043))

(declare-fun m!4169355 () Bool)

(assert (=> b!3662498 m!4169355))

(assert (=> b!3661856 d!1075463))

(declare-fun d!1075465 () Bool)

(assert (=> d!1075465 (isEmpty!22916 (getSuffix!1716 lt!1274047 lt!1274047))))

(declare-fun lt!1274395 () Unit!55962)

(declare-fun choose!21702 (List!38759) Unit!55962)

(assert (=> d!1075465 (= lt!1274395 (choose!21702 lt!1274047))))

(assert (=> d!1075465 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!180 lt!1274047) lt!1274395)))

(declare-fun bs!572689 () Bool)

(assert (= bs!572689 d!1075465))

(assert (=> bs!572689 m!4168539))

(assert (=> bs!572689 m!4168539))

(assert (=> bs!572689 m!4168541))

(declare-fun m!4169357 () Bool)

(assert (=> bs!572689 m!4169357))

(assert (=> b!3661856 d!1075465))

(declare-fun d!1075467 () Bool)

(assert (=> d!1075467 (contains!7665 lt!1274048 (head!7830 suffix!1395))))

(declare-fun lt!1274398 () Unit!55962)

(declare-fun choose!21703 (List!38759 List!38759 List!38759 List!38759) Unit!55962)

(assert (=> d!1075467 (= lt!1274398 (choose!21703 lt!1274047 suffix!1395 lt!1274048 lt!1274039))))

(assert (=> d!1075467 (isPrefix!3163 lt!1274048 lt!1274039)))

(assert (=> d!1075467 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!108 lt!1274047 suffix!1395 lt!1274048 lt!1274039) lt!1274398)))

(declare-fun bs!572690 () Bool)

(assert (= bs!572690 d!1075467))

(assert (=> bs!572690 m!4168517))

(assert (=> bs!572690 m!4168517))

(declare-fun m!4169359 () Bool)

(assert (=> bs!572690 m!4169359))

(declare-fun m!4169361 () Bool)

(assert (=> bs!572690 m!4169361))

(assert (=> bs!572690 m!4168487))

(assert (=> b!3661854 d!1075467))

(declare-fun d!1075469 () Bool)

(declare-fun lt!1274399 () Bool)

(assert (=> d!1075469 (= lt!1274399 (select (content!5585 lt!1274048) lt!1274035))))

(declare-fun e!2267778 () Bool)

(assert (=> d!1075469 (= lt!1274399 e!2267778)))

(declare-fun res!1486981 () Bool)

(assert (=> d!1075469 (=> (not res!1486981) (not e!2267778))))

(assert (=> d!1075469 (= res!1486981 ((_ is Cons!38635) lt!1274048))))

(assert (=> d!1075469 (= (contains!7665 lt!1274048 lt!1274035) lt!1274399)))

(declare-fun b!3662500 () Bool)

(declare-fun e!2267777 () Bool)

(assert (=> b!3662500 (= e!2267778 e!2267777)))

(declare-fun res!1486982 () Bool)

(assert (=> b!3662500 (=> res!1486982 e!2267777)))

(assert (=> b!3662500 (= res!1486982 (= (h!44055 lt!1274048) lt!1274035))))

(declare-fun b!3662501 () Bool)

(assert (=> b!3662501 (= e!2267777 (contains!7665 (t!298622 lt!1274048) lt!1274035))))

(assert (= (and d!1075469 res!1486981) b!3662500))

(assert (= (and b!3662500 (not res!1486982)) b!3662501))

(assert (=> d!1075469 m!4169015))

(declare-fun m!4169363 () Bool)

(assert (=> d!1075469 m!4169363))

(declare-fun m!4169365 () Bool)

(assert (=> b!3662501 m!4169365))

(assert (=> b!3661854 d!1075469))

(declare-fun d!1075471 () Bool)

(assert (=> d!1075471 (= (isEmpty!22916 suffix!1395) ((_ is Nil!38635) suffix!1395))))

(assert (=> b!3661874 d!1075471))

(declare-fun d!1075473 () Bool)

(assert (=> d!1075473 (= (isDefined!6461 lt!1274066) (not (isEmpty!22920 lt!1274066)))))

(declare-fun bs!572691 () Bool)

(assert (= bs!572691 d!1075473))

(declare-fun m!4169367 () Bool)

(assert (=> bs!572691 m!4169367))

(assert (=> b!3661875 d!1075473))

(declare-fun b!3662502 () Bool)

(declare-fun e!2267780 () Bool)

(declare-fun lt!1274401 () Option!8228)

(assert (=> b!3662502 (= e!2267780 (contains!7666 rules!3307 (rule!8614 (_1!22384 (get!12738 lt!1274401)))))))

(declare-fun b!3662503 () Bool)

(declare-fun e!2267781 () Bool)

(assert (=> b!3662503 (= e!2267781 e!2267780)))

(declare-fun res!1486989 () Bool)

(assert (=> b!3662503 (=> (not res!1486989) (not e!2267780))))

(assert (=> b!3662503 (= res!1486989 (isDefined!6461 lt!1274401))))

(declare-fun b!3662504 () Bool)

(declare-fun res!1486988 () Bool)

(assert (=> b!3662504 (=> (not res!1486988) (not e!2267780))))

(assert (=> b!3662504 (= res!1486988 (matchR!5128 (regex!5800 (rule!8614 (_1!22384 (get!12738 lt!1274401)))) (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274401))))))))

(declare-fun bm!264941 () Bool)

(declare-fun call!264946 () Option!8228)

(assert (=> bm!264941 (= call!264946 (maxPrefixOneRule!2061 thiss!23823 (h!44057 rules!3307) lt!1274047))))

(declare-fun b!3662505 () Bool)

(declare-fun e!2267779 () Option!8228)

(declare-fun lt!1274402 () Option!8228)

(declare-fun lt!1274403 () Option!8228)

(assert (=> b!3662505 (= e!2267779 (ite (and ((_ is None!8227) lt!1274402) ((_ is None!8227) lt!1274403)) None!8227 (ite ((_ is None!8227) lt!1274403) lt!1274402 (ite ((_ is None!8227) lt!1274402) lt!1274403 (ite (>= (size!29519 (_1!22384 (v!38119 lt!1274402))) (size!29519 (_1!22384 (v!38119 lt!1274403)))) lt!1274402 lt!1274403)))))))

(assert (=> b!3662505 (= lt!1274402 call!264946)))

(assert (=> b!3662505 (= lt!1274403 (maxPrefix!2923 thiss!23823 (t!298624 rules!3307) lt!1274047))))

(declare-fun b!3662506 () Bool)

(declare-fun res!1486984 () Bool)

(assert (=> b!3662506 (=> (not res!1486984) (not e!2267780))))

(assert (=> b!3662506 (= res!1486984 (= (++!9616 (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274401)))) (_2!22384 (get!12738 lt!1274401))) lt!1274047))))

(declare-fun b!3662507 () Bool)

(assert (=> b!3662507 (= e!2267779 call!264946)))

(declare-fun b!3662508 () Bool)

(declare-fun res!1486987 () Bool)

(assert (=> b!3662508 (=> (not res!1486987) (not e!2267780))))

(assert (=> b!3662508 (= res!1486987 (= (value!185760 (_1!22384 (get!12738 lt!1274401))) (apply!9302 (transformation!5800 (rule!8614 (_1!22384 (get!12738 lt!1274401)))) (seqFromList!4349 (originalCharacters!6514 (_1!22384 (get!12738 lt!1274401)))))))))

(declare-fun b!3662509 () Bool)

(declare-fun res!1486983 () Bool)

(assert (=> b!3662509 (=> (not res!1486983) (not e!2267780))))

(assert (=> b!3662509 (= res!1486983 (< (size!29521 (_2!22384 (get!12738 lt!1274401))) (size!29521 lt!1274047)))))

(declare-fun b!3662510 () Bool)

(declare-fun res!1486985 () Bool)

(assert (=> b!3662510 (=> (not res!1486985) (not e!2267780))))

(assert (=> b!3662510 (= res!1486985 (= (list!14334 (charsOf!3814 (_1!22384 (get!12738 lt!1274401)))) (originalCharacters!6514 (_1!22384 (get!12738 lt!1274401)))))))

(declare-fun d!1075475 () Bool)

(assert (=> d!1075475 e!2267781))

(declare-fun res!1486986 () Bool)

(assert (=> d!1075475 (=> res!1486986 e!2267781)))

(assert (=> d!1075475 (= res!1486986 (isEmpty!22920 lt!1274401))))

(assert (=> d!1075475 (= lt!1274401 e!2267779)))

(declare-fun c!633065 () Bool)

(assert (=> d!1075475 (= c!633065 (and ((_ is Cons!38637) rules!3307) ((_ is Nil!38637) (t!298624 rules!3307))))))

(declare-fun lt!1274400 () Unit!55962)

(declare-fun lt!1274404 () Unit!55962)

(assert (=> d!1075475 (= lt!1274400 lt!1274404)))

(assert (=> d!1075475 (isPrefix!3163 lt!1274047 lt!1274047)))

(assert (=> d!1075475 (= lt!1274404 (lemmaIsPrefixRefl!1996 lt!1274047 lt!1274047))))

(assert (=> d!1075475 (rulesValidInductive!2059 thiss!23823 rules!3307)))

(assert (=> d!1075475 (= (maxPrefix!2923 thiss!23823 rules!3307 lt!1274047) lt!1274401)))

(assert (= (and d!1075475 c!633065) b!3662507))

(assert (= (and d!1075475 (not c!633065)) b!3662505))

(assert (= (or b!3662507 b!3662505) bm!264941))

(assert (= (and d!1075475 (not res!1486986)) b!3662503))

(assert (= (and b!3662503 res!1486989) b!3662510))

(assert (= (and b!3662510 res!1486985) b!3662509))

(assert (= (and b!3662509 res!1486983) b!3662506))

(assert (= (and b!3662506 res!1486984) b!3662508))

(assert (= (and b!3662508 res!1486987) b!3662504))

(assert (= (and b!3662504 res!1486988) b!3662502))

(declare-fun m!4169369 () Bool)

(assert (=> b!3662505 m!4169369))

(declare-fun m!4169371 () Bool)

(assert (=> b!3662509 m!4169371))

(declare-fun m!4169373 () Bool)

(assert (=> b!3662509 m!4169373))

(assert (=> b!3662509 m!4169009))

(assert (=> b!3662504 m!4169371))

(declare-fun m!4169375 () Bool)

(assert (=> b!3662504 m!4169375))

(assert (=> b!3662504 m!4169375))

(declare-fun m!4169377 () Bool)

(assert (=> b!3662504 m!4169377))

(assert (=> b!3662504 m!4169377))

(declare-fun m!4169379 () Bool)

(assert (=> b!3662504 m!4169379))

(declare-fun m!4169381 () Bool)

(assert (=> b!3662503 m!4169381))

(assert (=> b!3662506 m!4169371))

(assert (=> b!3662506 m!4169375))

(assert (=> b!3662506 m!4169375))

(assert (=> b!3662506 m!4169377))

(assert (=> b!3662506 m!4169377))

(declare-fun m!4169383 () Bool)

(assert (=> b!3662506 m!4169383))

(assert (=> b!3662510 m!4169371))

(assert (=> b!3662510 m!4169375))

(assert (=> b!3662510 m!4169375))

(assert (=> b!3662510 m!4169377))

(assert (=> b!3662502 m!4169371))

(declare-fun m!4169385 () Bool)

(assert (=> b!3662502 m!4169385))

(declare-fun m!4169387 () Bool)

(assert (=> bm!264941 m!4169387))

(assert (=> b!3662508 m!4169371))

(declare-fun m!4169389 () Bool)

(assert (=> b!3662508 m!4169389))

(assert (=> b!3662508 m!4169389))

(declare-fun m!4169391 () Bool)

(assert (=> b!3662508 m!4169391))

(declare-fun m!4169393 () Bool)

(assert (=> d!1075475 m!4169393))

(assert (=> d!1075475 m!4168537))

(declare-fun m!4169395 () Bool)

(assert (=> d!1075475 m!4169395))

(assert (=> d!1075475 m!4169135))

(assert (=> b!3661875 d!1075475))

(declare-fun d!1075477 () Bool)

(assert (=> d!1075477 (= (list!14334 lt!1274044) (list!14337 (c!632925 lt!1274044)))))

(declare-fun bs!572692 () Bool)

(assert (= bs!572692 d!1075477))

(declare-fun m!4169397 () Bool)

(assert (=> bs!572692 m!4169397))

(assert (=> b!3661875 d!1075477))

(declare-fun d!1075479 () Bool)

(declare-fun lt!1274405 () BalanceConc!23244)

(assert (=> d!1075479 (= (list!14334 lt!1274405) (originalCharacters!6514 token!511))))

(assert (=> d!1075479 (= lt!1274405 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 token!511))) (value!185760 token!511)))))

(assert (=> d!1075479 (= (charsOf!3814 token!511) lt!1274405)))

(declare-fun b_lambda!108639 () Bool)

(assert (=> (not b_lambda!108639) (not d!1075479)))

(assert (=> d!1075479 t!298674))

(declare-fun b_and!271939 () Bool)

(assert (= b_and!271923 (and (=> t!298674 result!257698) b_and!271939)))

(assert (=> d!1075479 t!298676))

(declare-fun b_and!271941 () Bool)

(assert (= b_and!271925 (and (=> t!298676 result!257700) b_and!271941)))

(assert (=> d!1075479 t!298678))

(declare-fun b_and!271943 () Bool)

(assert (= b_and!271927 (and (=> t!298678 result!257702) b_and!271943)))

(assert (=> d!1075479 t!298680))

(declare-fun b_and!271945 () Bool)

(assert (= b_and!271929 (and (=> t!298680 result!257704) b_and!271945)))

(declare-fun m!4169399 () Bool)

(assert (=> d!1075479 m!4169399))

(assert (=> d!1075479 m!4169215))

(assert (=> b!3661875 d!1075479))

(declare-fun d!1075481 () Bool)

(assert (=> d!1075481 (not (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048))))

(declare-fun lt!1274406 () Unit!55962)

(assert (=> d!1075481 (= lt!1274406 (choose!21690 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274052))))

(assert (=> d!1075481 (validRegex!4835 (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))

(assert (=> d!1075481 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274052) lt!1274406)))

(declare-fun bs!572693 () Bool)

(assert (= bs!572693 d!1075481))

(assert (=> bs!572693 m!4168619))

(declare-fun m!4169401 () Bool)

(assert (=> bs!572693 m!4169401))

(assert (=> bs!572693 m!4168987))

(assert (=> bm!264889 d!1075481))

(declare-fun d!1075483 () Bool)

(declare-fun lt!1274407 () Int)

(assert (=> d!1075483 (= lt!1274407 (size!29521 (list!14334 lt!1274056)))))

(assert (=> d!1075483 (= lt!1274407 (size!29523 (c!632925 lt!1274056)))))

(assert (=> d!1075483 (= (size!29520 lt!1274056) lt!1274407)))

(declare-fun bs!572694 () Bool)

(assert (= bs!572694 d!1075483))

(assert (=> bs!572694 m!4168499))

(assert (=> bs!572694 m!4168499))

(declare-fun m!4169403 () Bool)

(assert (=> bs!572694 m!4169403))

(declare-fun m!4169405 () Bool)

(assert (=> bs!572694 m!4169405))

(assert (=> b!3661853 d!1075483))

(declare-fun d!1075485 () Bool)

(assert (=> d!1075485 (= (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028))) (fromListB!2008 (originalCharacters!6514 (_1!22384 lt!1274028))))))

(declare-fun bs!572695 () Bool)

(assert (= bs!572695 d!1075485))

(declare-fun m!4169407 () Bool)

(assert (=> bs!572695 m!4169407))

(assert (=> b!3661853 d!1075485))

(declare-fun b!3662664 () Bool)

(declare-fun e!2267871 () Bool)

(assert (=> b!3662664 (= e!2267871 true)))

(declare-fun d!1075487 () Bool)

(assert (=> d!1075487 e!2267871))

(assert (= d!1075487 b!3662664))

(declare-fun lambda!124584 () Int)

(declare-fun order!21341 () Int)

(declare-fun order!21339 () Int)

(declare-fun dynLambda!16886 (Int Int) Int)

(declare-fun dynLambda!16887 (Int Int) Int)

(assert (=> b!3662664 (< (dynLambda!16886 order!21339 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) (dynLambda!16887 order!21341 lambda!124584))))

(declare-fun order!21343 () Int)

(declare-fun dynLambda!16888 (Int Int) Int)

(assert (=> b!3662664 (< (dynLambda!16888 order!21343 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) (dynLambda!16887 order!21341 lambda!124584))))

(assert (=> d!1075487 (= (list!14334 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056))) (list!14334 lt!1274056))))

(declare-fun lt!1274444 () Unit!55962)

(declare-fun ForallOf!730 (Int BalanceConc!23244) Unit!55962)

(assert (=> d!1075487 (= lt!1274444 (ForallOf!730 lambda!124584 lt!1274056))))

(assert (=> d!1075487 (= (lemmaSemiInverse!1549 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056) lt!1274444)))

(declare-fun b_lambda!108649 () Bool)

(assert (=> (not b_lambda!108649) (not d!1075487)))

(declare-fun t!298711 () Bool)

(declare-fun tb!211705 () Bool)

(assert (=> (and b!3661892 (= (toChars!7951 (transformation!5800 (rule!8614 token!511))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298711) tb!211705))

(declare-fun tp!1115406 () Bool)

(declare-fun b!3662665 () Bool)

(declare-fun e!2267872 () Bool)

(assert (=> b!3662665 (= e!2267872 (and (inv!52108 (c!632925 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056)))) tp!1115406))))

(declare-fun result!257740 () Bool)

(assert (=> tb!211705 (= result!257740 (and (inv!52109 (dynLambda!16881 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056))) e!2267872))))

(assert (= tb!211705 b!3662665))

(declare-fun m!4169567 () Bool)

(assert (=> b!3662665 m!4169567))

(declare-fun m!4169569 () Bool)

(assert (=> tb!211705 m!4169569))

(assert (=> d!1075487 t!298711))

(declare-fun b_and!271967 () Bool)

(assert (= b_and!271939 (and (=> t!298711 result!257740) b_and!271967)))

(declare-fun t!298713 () Bool)

(declare-fun tb!211707 () Bool)

(assert (=> (and b!3661893 (= (toChars!7951 (transformation!5800 rule!403)) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298713) tb!211707))

(declare-fun result!257742 () Bool)

(assert (= result!257742 result!257740))

(assert (=> d!1075487 t!298713))

(declare-fun b_and!271969 () Bool)

(assert (= b_and!271941 (and (=> t!298713 result!257742) b_and!271969)))

(declare-fun t!298715 () Bool)

(declare-fun tb!211709 () Bool)

(assert (=> (and b!3661891 (= (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298715) tb!211709))

(declare-fun result!257744 () Bool)

(assert (= result!257744 result!257740))

(assert (=> d!1075487 t!298715))

(declare-fun b_and!271971 () Bool)

(assert (= b_and!271943 (and (=> t!298715 result!257744) b_and!271971)))

(declare-fun tb!211711 () Bool)

(declare-fun t!298717 () Bool)

(assert (=> (and b!3661852 (= (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298717) tb!211711))

(declare-fun result!257746 () Bool)

(assert (= result!257746 result!257740))

(assert (=> d!1075487 t!298717))

(declare-fun b_and!271973 () Bool)

(assert (= b_and!271945 (and (=> t!298717 result!257746) b_and!271973)))

(declare-fun b_lambda!108651 () Bool)

(assert (=> (not b_lambda!108651) (not d!1075487)))

(declare-fun t!298719 () Bool)

(declare-fun tb!211713 () Bool)

(assert (=> (and b!3661892 (= (toValue!8092 (transformation!5800 (rule!8614 token!511))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298719) tb!211713))

(declare-fun result!257748 () Bool)

(assert (=> tb!211713 (= result!257748 (inv!21 (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056)))))

(declare-fun m!4169571 () Bool)

(assert (=> tb!211713 m!4169571))

(assert (=> d!1075487 t!298719))

(declare-fun b_and!271975 () Bool)

(assert (= b_and!271867 (and (=> t!298719 result!257748) b_and!271975)))

(declare-fun tb!211715 () Bool)

(declare-fun t!298721 () Bool)

(assert (=> (and b!3661893 (= (toValue!8092 (transformation!5800 rule!403)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298721) tb!211715))

(declare-fun result!257750 () Bool)

(assert (= result!257750 result!257748))

(assert (=> d!1075487 t!298721))

(declare-fun b_and!271977 () Bool)

(assert (= b_and!271869 (and (=> t!298721 result!257750) b_and!271977)))

(declare-fun t!298723 () Bool)

(declare-fun tb!211717 () Bool)

(assert (=> (and b!3661891 (= (toValue!8092 (transformation!5800 (h!44057 rules!3307))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298723) tb!211717))

(declare-fun result!257752 () Bool)

(assert (= result!257752 result!257748))

(assert (=> d!1075487 t!298723))

(declare-fun b_and!271979 () Bool)

(assert (= b_and!271871 (and (=> t!298723 result!257752) b_and!271979)))

(declare-fun tb!211719 () Bool)

(declare-fun t!298725 () Bool)

(assert (=> (and b!3661852 (= (toValue!8092 (transformation!5800 anOtherTypeRule!33)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298725) tb!211719))

(declare-fun result!257754 () Bool)

(assert (= result!257754 result!257748))

(assert (=> d!1075487 t!298725))

(declare-fun b_and!271981 () Bool)

(assert (= b_and!271873 (and (=> t!298725 result!257754) b_and!271981)))

(declare-fun m!4169573 () Bool)

(assert (=> d!1075487 m!4169573))

(assert (=> d!1075487 m!4168499))

(declare-fun m!4169575 () Bool)

(assert (=> d!1075487 m!4169575))

(declare-fun m!4169577 () Bool)

(assert (=> d!1075487 m!4169577))

(declare-fun m!4169579 () Bool)

(assert (=> d!1075487 m!4169579))

(assert (=> d!1075487 m!4169575))

(assert (=> d!1075487 m!4169579))

(assert (=> b!3661853 d!1075487))

(declare-fun d!1075549 () Bool)

(assert (=> d!1075549 (= (size!29519 (_1!22384 lt!1274028)) (size!29521 (originalCharacters!6514 (_1!22384 lt!1274028))))))

(declare-fun Unit!55981 () Unit!55962)

(assert (=> d!1075549 (= (lemmaCharactersSize!845 (_1!22384 lt!1274028)) Unit!55981)))

(declare-fun bs!572703 () Bool)

(assert (= bs!572703 d!1075549))

(declare-fun m!4169581 () Bool)

(assert (=> bs!572703 m!4169581))

(assert (=> b!3661853 d!1075549))

(declare-fun d!1075551 () Bool)

(assert (=> d!1075551 (= (apply!9302 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056))))

(declare-fun b_lambda!108653 () Bool)

(assert (=> (not b_lambda!108653) (not d!1075551)))

(assert (=> d!1075551 t!298719))

(declare-fun b_and!271983 () Bool)

(assert (= b_and!271975 (and (=> t!298719 result!257748) b_and!271983)))

(assert (=> d!1075551 t!298721))

(declare-fun b_and!271985 () Bool)

(assert (= b_and!271977 (and (=> t!298721 result!257750) b_and!271985)))

(assert (=> d!1075551 t!298723))

(declare-fun b_and!271987 () Bool)

(assert (= b_and!271979 (and (=> t!298723 result!257752) b_and!271987)))

(assert (=> d!1075551 t!298725))

(declare-fun b_and!271989 () Bool)

(assert (= b_and!271981 (and (=> t!298725 result!257754) b_and!271989)))

(assert (=> d!1075551 m!4169579))

(assert (=> b!3661853 d!1075551))

(declare-fun b!3662672 () Bool)

(declare-fun e!2267878 () Bool)

(assert (=> b!3662672 (= e!2267878 true)))

(declare-fun d!1075553 () Bool)

(assert (=> d!1075553 e!2267878))

(assert (= d!1075553 b!3662672))

(declare-fun order!21345 () Int)

(declare-fun lambda!124587 () Int)

(declare-fun dynLambda!16889 (Int Int) Int)

(assert (=> b!3662672 (< (dynLambda!16886 order!21339 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) (dynLambda!16889 order!21345 lambda!124587))))

(assert (=> b!3662672 (< (dynLambda!16888 order!21343 (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) (dynLambda!16889 order!21345 lambda!124587))))

(assert (=> d!1075553 (= (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274056) (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028)))))))

(declare-fun lt!1274447 () Unit!55962)

(declare-fun Forall2of!388 (Int BalanceConc!23244 BalanceConc!23244) Unit!55962)

(assert (=> d!1075553 (= lt!1274447 (Forall2of!388 lambda!124587 lt!1274056 (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028)))))))

(assert (=> d!1075553 (= (list!14334 lt!1274056) (list!14334 (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028)))))))

(assert (=> d!1075553 (= (lemmaEqSameImage!983 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274056 (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028)))) lt!1274447)))

(declare-fun b_lambda!108655 () Bool)

(assert (=> (not b_lambda!108655) (not d!1075553)))

(assert (=> d!1075553 t!298719))

(declare-fun b_and!271991 () Bool)

(assert (= b_and!271983 (and (=> t!298719 result!257748) b_and!271991)))

(assert (=> d!1075553 t!298721))

(declare-fun b_and!271993 () Bool)

(assert (= b_and!271985 (and (=> t!298721 result!257750) b_and!271993)))

(assert (=> d!1075553 t!298723))

(declare-fun b_and!271995 () Bool)

(assert (= b_and!271987 (and (=> t!298723 result!257752) b_and!271995)))

(assert (=> d!1075553 t!298725))

(declare-fun b_and!271997 () Bool)

(assert (= b_and!271989 (and (=> t!298725 result!257754) b_and!271997)))

(declare-fun b_lambda!108657 () Bool)

(assert (=> (not b_lambda!108657) (not d!1075553)))

(declare-fun t!298727 () Bool)

(declare-fun tb!211721 () Bool)

(assert (=> (and b!3661892 (= (toValue!8092 (transformation!5800 (rule!8614 token!511))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298727) tb!211721))

(declare-fun result!257756 () Bool)

(assert (=> tb!211721 (= result!257756 (inv!21 (dynLambda!16879 (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028)))) (seqFromList!4349 (originalCharacters!6514 (_1!22384 lt!1274028))))))))

(declare-fun m!4169583 () Bool)

(assert (=> tb!211721 m!4169583))

(assert (=> d!1075553 t!298727))

(declare-fun b_and!271999 () Bool)

(assert (= b_and!271991 (and (=> t!298727 result!257756) b_and!271999)))

(declare-fun t!298729 () Bool)

(declare-fun tb!211723 () Bool)

(assert (=> (and b!3661893 (= (toValue!8092 (transformation!5800 rule!403)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298729) tb!211723))

(declare-fun result!257758 () Bool)

(assert (= result!257758 result!257756))

(assert (=> d!1075553 t!298729))

(declare-fun b_and!272001 () Bool)

(assert (= b_and!271993 (and (=> t!298729 result!257758) b_and!272001)))

(declare-fun tb!211725 () Bool)

(declare-fun t!298731 () Bool)

(assert (=> (and b!3661891 (= (toValue!8092 (transformation!5800 (h!44057 rules!3307))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298731) tb!211725))

(declare-fun result!257760 () Bool)

(assert (= result!257760 result!257756))

(assert (=> d!1075553 t!298731))

(declare-fun b_and!272003 () Bool)

(assert (= b_and!271995 (and (=> t!298731 result!257760) b_and!272003)))

(declare-fun tb!211727 () Bool)

(declare-fun t!298733 () Bool)

(assert (=> (and b!3661852 (= (toValue!8092 (transformation!5800 anOtherTypeRule!33)) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298733) tb!211727))

(declare-fun result!257762 () Bool)

(assert (= result!257762 result!257756))

(assert (=> d!1075553 t!298733))

(declare-fun b_and!272005 () Bool)

(assert (= b_and!271997 (and (=> t!298733 result!257762) b_and!272005)))

(assert (=> d!1075553 m!4168605))

(declare-fun m!4169585 () Bool)

(assert (=> d!1075553 m!4169585))

(assert (=> d!1075553 m!4168605))

(declare-fun m!4169587 () Bool)

(assert (=> d!1075553 m!4169587))

(assert (=> d!1075553 m!4168605))

(declare-fun m!4169589 () Bool)

(assert (=> d!1075553 m!4169589))

(assert (=> d!1075553 m!4168499))

(assert (=> d!1075553 m!4169579))

(assert (=> b!3661853 d!1075553))

(declare-fun d!1075555 () Bool)

(assert (=> d!1075555 (not (contains!7665 (usedCharacters!1012 (regex!5800 (rule!8614 (_1!22384 lt!1274028)))) lt!1274052))))

(declare-fun lt!1274448 () Unit!55962)

(assert (=> d!1075555 (= lt!1274448 (choose!21700 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) rule!403 lt!1274052))))

(assert (=> d!1075555 (rulesInvariant!4786 thiss!23823 rules!3307)))

(assert (=> d!1075555 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!446 thiss!23823 rules!3307 rules!3307 (rule!8614 (_1!22384 lt!1274028)) rule!403 lt!1274052) lt!1274448)))

(declare-fun bs!572704 () Bool)

(assert (= bs!572704 d!1075555))

(assert (=> bs!572704 m!4168513))

(assert (=> bs!572704 m!4168513))

(assert (=> bs!572704 m!4169153))

(declare-fun m!4169591 () Bool)

(assert (=> bs!572704 m!4169591))

(assert (=> bs!572704 m!4168623))

(assert (=> b!3661889 d!1075555))

(declare-fun d!1075557 () Bool)

(assert (=> d!1075557 (= (inv!52101 (tag!6580 (h!44057 rules!3307))) (= (mod (str.len (value!185759 (tag!6580 (h!44057 rules!3307)))) 2) 0))))

(assert (=> b!3661872 d!1075557))

(declare-fun d!1075559 () Bool)

(declare-fun res!1487060 () Bool)

(declare-fun e!2267880 () Bool)

(assert (=> d!1075559 (=> (not res!1487060) (not e!2267880))))

(assert (=> d!1075559 (= res!1487060 (semiInverseModEq!2472 (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toValue!8092 (transformation!5800 (h!44057 rules!3307)))))))

(assert (=> d!1075559 (= (inv!52104 (transformation!5800 (h!44057 rules!3307))) e!2267880)))

(declare-fun b!3662673 () Bool)

(assert (=> b!3662673 (= e!2267880 (equivClasses!2371 (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toValue!8092 (transformation!5800 (h!44057 rules!3307)))))))

(assert (= (and d!1075559 res!1487060) b!3662673))

(declare-fun m!4169593 () Bool)

(assert (=> d!1075559 m!4169593))

(declare-fun m!4169595 () Bool)

(assert (=> b!3662673 m!4169595))

(assert (=> b!3661872 d!1075559))

(declare-fun d!1075561 () Bool)

(declare-fun lt!1274449 () Bool)

(assert (=> d!1075561 (= lt!1274449 (select (content!5587 rules!3307) rule!403))))

(declare-fun e!2267881 () Bool)

(assert (=> d!1075561 (= lt!1274449 e!2267881)))

(declare-fun res!1487061 () Bool)

(assert (=> d!1075561 (=> (not res!1487061) (not e!2267881))))

(assert (=> d!1075561 (= res!1487061 ((_ is Cons!38637) rules!3307))))

(assert (=> d!1075561 (= (contains!7666 rules!3307 rule!403) lt!1274449)))

(declare-fun b!3662674 () Bool)

(declare-fun e!2267882 () Bool)

(assert (=> b!3662674 (= e!2267881 e!2267882)))

(declare-fun res!1487062 () Bool)

(assert (=> b!3662674 (=> res!1487062 e!2267882)))

(assert (=> b!3662674 (= res!1487062 (= (h!44057 rules!3307) rule!403))))

(declare-fun b!3662675 () Bool)

(assert (=> b!3662675 (= e!2267882 (contains!7666 (t!298624 rules!3307) rule!403))))

(assert (= (and d!1075561 res!1487061) b!3662674))

(assert (= (and b!3662674 (not res!1487062)) b!3662675))

(assert (=> d!1075561 m!4169197))

(declare-fun m!4169597 () Bool)

(assert (=> d!1075561 m!4169597))

(declare-fun m!4169599 () Bool)

(assert (=> b!3662675 m!4169599))

(assert (=> b!3661870 d!1075561))

(declare-fun d!1075563 () Bool)

(declare-fun lt!1274450 () Bool)

(assert (=> d!1075563 (= lt!1274450 (select (content!5587 rules!3307) (rule!8614 (_1!22384 lt!1274028))))))

(declare-fun e!2267883 () Bool)

(assert (=> d!1075563 (= lt!1274450 e!2267883)))

(declare-fun res!1487063 () Bool)

(assert (=> d!1075563 (=> (not res!1487063) (not e!2267883))))

(assert (=> d!1075563 (= res!1487063 ((_ is Cons!38637) rules!3307))))

(assert (=> d!1075563 (= (contains!7666 rules!3307 (rule!8614 (_1!22384 lt!1274028))) lt!1274450)))

(declare-fun b!3662676 () Bool)

(declare-fun e!2267884 () Bool)

(assert (=> b!3662676 (= e!2267883 e!2267884)))

(declare-fun res!1487064 () Bool)

(assert (=> b!3662676 (=> res!1487064 e!2267884)))

(assert (=> b!3662676 (= res!1487064 (= (h!44057 rules!3307) (rule!8614 (_1!22384 lt!1274028))))))

(declare-fun b!3662677 () Bool)

(assert (=> b!3662677 (= e!2267884 (contains!7666 (t!298624 rules!3307) (rule!8614 (_1!22384 lt!1274028))))))

(assert (= (and d!1075563 res!1487063) b!3662676))

(assert (= (and b!3662676 (not res!1487064)) b!3662677))

(assert (=> d!1075563 m!4169197))

(declare-fun m!4169601 () Bool)

(assert (=> d!1075563 m!4169601))

(declare-fun m!4169603 () Bool)

(assert (=> b!3662677 m!4169603))

(assert (=> b!3661871 d!1075563))

(declare-fun d!1075565 () Bool)

(assert (=> d!1075565 (not (matchR!5128 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048))))

(declare-fun lt!1274451 () Unit!55962)

(assert (=> d!1075565 (= lt!1274451 (choose!21690 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274035))))

(assert (=> d!1075565 (validRegex!4835 (regex!5800 (rule!8614 (_1!22384 lt!1274028))))))

(assert (=> d!1075565 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!748 (regex!5800 (rule!8614 (_1!22384 lt!1274028))) lt!1274048 lt!1274035) lt!1274451)))

(declare-fun bs!572705 () Bool)

(assert (= bs!572705 d!1075565))

(assert (=> bs!572705 m!4168619))

(declare-fun m!4169605 () Bool)

(assert (=> bs!572705 m!4169605))

(assert (=> bs!572705 m!4168987))

(assert (=> bm!264888 d!1075565))

(declare-fun d!1075567 () Bool)

(declare-fun lt!1274452 () Bool)

(assert (=> d!1075567 (= lt!1274452 (select (content!5585 call!264890) lt!1274052))))

(declare-fun e!2267886 () Bool)

(assert (=> d!1075567 (= lt!1274452 e!2267886)))

(declare-fun res!1487065 () Bool)

(assert (=> d!1075567 (=> (not res!1487065) (not e!2267886))))

(assert (=> d!1075567 (= res!1487065 ((_ is Cons!38635) call!264890))))

(assert (=> d!1075567 (= (contains!7665 call!264890 lt!1274052) lt!1274452)))

(declare-fun b!3662678 () Bool)

(declare-fun e!2267885 () Bool)

(assert (=> b!3662678 (= e!2267886 e!2267885)))

(declare-fun res!1487066 () Bool)

(assert (=> b!3662678 (=> res!1487066 e!2267885)))

(assert (=> b!3662678 (= res!1487066 (= (h!44055 call!264890) lt!1274052))))

(declare-fun b!3662679 () Bool)

(assert (=> b!3662679 (= e!2267885 (contains!7665 (t!298622 call!264890) lt!1274052))))

(assert (= (and d!1075567 res!1487065) b!3662678))

(assert (= (and b!3662678 (not res!1487066)) b!3662679))

(declare-fun m!4169607 () Bool)

(assert (=> d!1075567 m!4169607))

(declare-fun m!4169609 () Bool)

(assert (=> d!1075567 m!4169609))

(declare-fun m!4169611 () Bool)

(assert (=> b!3662679 m!4169611))

(assert (=> bm!264887 d!1075567))

(declare-fun b!3662690 () Bool)

(declare-fun b_free!96669 () Bool)

(declare-fun b_next!97373 () Bool)

(assert (=> b!3662690 (= b_free!96669 (not b_next!97373))))

(declare-fun tb!211729 () Bool)

(declare-fun t!298735 () Bool)

(assert (=> (and b!3662690 (= (toValue!8092 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298735) tb!211729))

(declare-fun result!257766 () Bool)

(assert (= result!257766 result!257748))

(assert (=> d!1075487 t!298735))

(declare-fun tb!211731 () Bool)

(declare-fun t!298737 () Bool)

(assert (=> (and b!3662690 (= (toValue!8092 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298737) tb!211731))

(declare-fun result!257768 () Bool)

(assert (= result!257768 result!257652))

(assert (=> d!1075293 t!298737))

(declare-fun tb!211733 () Bool)

(declare-fun t!298739 () Bool)

(assert (=> (and b!3662690 (= (toValue!8092 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toValue!8092 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298739) tb!211733))

(declare-fun result!257770 () Bool)

(assert (= result!257770 result!257756))

(assert (=> d!1075553 t!298739))

(assert (=> d!1075553 t!298735))

(assert (=> d!1075551 t!298735))

(declare-fun tp!1115415 () Bool)

(declare-fun b_and!272007 () Bool)

(assert (=> b!3662690 (= tp!1115415 (and (=> t!298739 result!257770) (=> t!298735 result!257766) (=> t!298737 result!257768) b_and!272007))))

(declare-fun b_free!96671 () Bool)

(declare-fun b_next!97375 () Bool)

(assert (=> b!3662690 (= b_free!96671 (not b_next!97375))))

(declare-fun tb!211735 () Bool)

(declare-fun t!298741 () Bool)

(assert (=> (and b!3662690 (= (toChars!7951 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298741) tb!211735))

(declare-fun result!257772 () Bool)

(assert (= result!257772 result!257672))

(assert (=> d!1075343 t!298741))

(declare-fun t!298743 () Bool)

(declare-fun tb!211737 () Bool)

(assert (=> (and b!3662690 (= (toChars!7951 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toChars!7951 (transformation!5800 (rule!8614 token!511)))) t!298743) tb!211737))

(declare-fun result!257774 () Bool)

(assert (= result!257774 result!257698))

(assert (=> b!3662390 t!298743))

(assert (=> d!1075479 t!298743))

(declare-fun tb!211739 () Bool)

(declare-fun t!298745 () Bool)

(assert (=> (and b!3662690 (= (toChars!7951 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toChars!7951 (transformation!5800 (rule!8614 (_1!22384 lt!1274028))))) t!298745) tb!211739))

(declare-fun result!257776 () Bool)

(assert (= result!257776 result!257740))

(assert (=> d!1075487 t!298745))

(declare-fun b_and!272009 () Bool)

(declare-fun tp!1115416 () Bool)

(assert (=> b!3662690 (= tp!1115416 (and (=> t!298741 result!257772) (=> t!298743 result!257774) (=> t!298745 result!257776) b_and!272009))))

(declare-fun e!2267895 () Bool)

(assert (=> b!3662690 (= e!2267895 (and tp!1115415 tp!1115416))))

(declare-fun e!2267898 () Bool)

(declare-fun b!3662689 () Bool)

(declare-fun tp!1115417 () Bool)

(assert (=> b!3662689 (= e!2267898 (and tp!1115417 (inv!52101 (tag!6580 (h!44057 (t!298624 rules!3307)))) (inv!52104 (transformation!5800 (h!44057 (t!298624 rules!3307)))) e!2267895))))

(declare-fun b!3662688 () Bool)

(declare-fun e!2267897 () Bool)

(declare-fun tp!1115418 () Bool)

(assert (=> b!3662688 (= e!2267897 (and e!2267898 tp!1115418))))

(assert (=> b!3661873 (= tp!1115338 e!2267897)))

(assert (= b!3662689 b!3662690))

(assert (= b!3662688 b!3662689))

(assert (= (and b!3661873 ((_ is Cons!38637) (t!298624 rules!3307))) b!3662688))

(declare-fun m!4169613 () Bool)

(assert (=> b!3662689 m!4169613))

(declare-fun m!4169615 () Bool)

(assert (=> b!3662689 m!4169615))

(declare-fun e!2267901 () Bool)

(assert (=> b!3661858 (= tp!1115348 e!2267901)))

(declare-fun b!3662701 () Bool)

(assert (=> b!3662701 (= e!2267901 tp_is_empty!18201)))

(declare-fun b!3662702 () Bool)

(declare-fun tp!1115432 () Bool)

(declare-fun tp!1115429 () Bool)

(assert (=> b!3662702 (= e!2267901 (and tp!1115432 tp!1115429))))

(declare-fun b!3662704 () Bool)

(declare-fun tp!1115433 () Bool)

(declare-fun tp!1115430 () Bool)

(assert (=> b!3662704 (= e!2267901 (and tp!1115433 tp!1115430))))

(declare-fun b!3662703 () Bool)

(declare-fun tp!1115431 () Bool)

(assert (=> b!3662703 (= e!2267901 tp!1115431)))

(assert (= (and b!3661858 ((_ is ElementMatch!10559) (regex!5800 (rule!8614 token!511)))) b!3662701))

(assert (= (and b!3661858 ((_ is Concat!16590) (regex!5800 (rule!8614 token!511)))) b!3662702))

(assert (= (and b!3661858 ((_ is Star!10559) (regex!5800 (rule!8614 token!511)))) b!3662703))

(assert (= (and b!3661858 ((_ is Union!10559) (regex!5800 (rule!8614 token!511)))) b!3662704))

(declare-fun e!2267902 () Bool)

(assert (=> b!3661866 (= tp!1115349 e!2267902)))

(declare-fun b!3662705 () Bool)

(assert (=> b!3662705 (= e!2267902 tp_is_empty!18201)))

(declare-fun b!3662706 () Bool)

(declare-fun tp!1115437 () Bool)

(declare-fun tp!1115434 () Bool)

(assert (=> b!3662706 (= e!2267902 (and tp!1115437 tp!1115434))))

(declare-fun b!3662708 () Bool)

(declare-fun tp!1115438 () Bool)

(declare-fun tp!1115435 () Bool)

(assert (=> b!3662708 (= e!2267902 (and tp!1115438 tp!1115435))))

(declare-fun b!3662707 () Bool)

(declare-fun tp!1115436 () Bool)

(assert (=> b!3662707 (= e!2267902 tp!1115436)))

(assert (= (and b!3661866 ((_ is ElementMatch!10559) (regex!5800 rule!403))) b!3662705))

(assert (= (and b!3661866 ((_ is Concat!16590) (regex!5800 rule!403))) b!3662706))

(assert (= (and b!3661866 ((_ is Star!10559) (regex!5800 rule!403))) b!3662707))

(assert (= (and b!3661866 ((_ is Union!10559) (regex!5800 rule!403))) b!3662708))

(declare-fun b!3662713 () Bool)

(declare-fun e!2267905 () Bool)

(declare-fun tp!1115441 () Bool)

(assert (=> b!3662713 (= e!2267905 (and tp_is_empty!18201 tp!1115441))))

(assert (=> b!3661867 (= tp!1115346 e!2267905)))

(assert (= (and b!3661867 ((_ is Cons!38635) (originalCharacters!6514 token!511))) b!3662713))

(declare-fun e!2267906 () Bool)

(assert (=> b!3661872 (= tp!1115337 e!2267906)))

(declare-fun b!3662714 () Bool)

(assert (=> b!3662714 (= e!2267906 tp_is_empty!18201)))

(declare-fun b!3662715 () Bool)

(declare-fun tp!1115445 () Bool)

(declare-fun tp!1115442 () Bool)

(assert (=> b!3662715 (= e!2267906 (and tp!1115445 tp!1115442))))

(declare-fun b!3662717 () Bool)

(declare-fun tp!1115446 () Bool)

(declare-fun tp!1115443 () Bool)

(assert (=> b!3662717 (= e!2267906 (and tp!1115446 tp!1115443))))

(declare-fun b!3662716 () Bool)

(declare-fun tp!1115444 () Bool)

(assert (=> b!3662716 (= e!2267906 tp!1115444)))

(assert (= (and b!3661872 ((_ is ElementMatch!10559) (regex!5800 (h!44057 rules!3307)))) b!3662714))

(assert (= (and b!3661872 ((_ is Concat!16590) (regex!5800 (h!44057 rules!3307)))) b!3662715))

(assert (= (and b!3661872 ((_ is Star!10559) (regex!5800 (h!44057 rules!3307)))) b!3662716))

(assert (= (and b!3661872 ((_ is Union!10559) (regex!5800 (h!44057 rules!3307)))) b!3662717))

(declare-fun e!2267907 () Bool)

(assert (=> b!3661860 (= tp!1115344 e!2267907)))

(declare-fun b!3662718 () Bool)

(assert (=> b!3662718 (= e!2267907 tp_is_empty!18201)))

(declare-fun b!3662719 () Bool)

(declare-fun tp!1115450 () Bool)

(declare-fun tp!1115447 () Bool)

(assert (=> b!3662719 (= e!2267907 (and tp!1115450 tp!1115447))))

(declare-fun b!3662721 () Bool)

(declare-fun tp!1115451 () Bool)

(declare-fun tp!1115448 () Bool)

(assert (=> b!3662721 (= e!2267907 (and tp!1115451 tp!1115448))))

(declare-fun b!3662720 () Bool)

(declare-fun tp!1115449 () Bool)

(assert (=> b!3662720 (= e!2267907 tp!1115449)))

(assert (= (and b!3661860 ((_ is ElementMatch!10559) (regex!5800 anOtherTypeRule!33))) b!3662718))

(assert (= (and b!3661860 ((_ is Concat!16590) (regex!5800 anOtherTypeRule!33))) b!3662719))

(assert (= (and b!3661860 ((_ is Star!10559) (regex!5800 anOtherTypeRule!33))) b!3662720))

(assert (= (and b!3661860 ((_ is Union!10559) (regex!5800 anOtherTypeRule!33))) b!3662721))

(declare-fun b!3662722 () Bool)

(declare-fun e!2267908 () Bool)

(declare-fun tp!1115452 () Bool)

(assert (=> b!3662722 (= e!2267908 (and tp_is_empty!18201 tp!1115452))))

(assert (=> b!3661869 (= tp!1115340 e!2267908)))

(assert (= (and b!3661869 ((_ is Cons!38635) (t!298622 suffix!1395))) b!3662722))

(declare-fun b_lambda!108659 () Bool)

(assert (= b_lambda!108635 (or (and b!3661891 b_free!96659 (= (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661893 b_free!96655 (= (toChars!7951 (transformation!5800 rule!403)) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3662690 b_free!96671 (= (toChars!7951 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661852 b_free!96663 (= (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661892 b_free!96651) b_lambda!108659)))

(declare-fun b_lambda!108661 () Bool)

(assert (= b_lambda!108639 (or (and b!3661891 b_free!96659 (= (toChars!7951 (transformation!5800 (h!44057 rules!3307))) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661893 b_free!96655 (= (toChars!7951 (transformation!5800 rule!403)) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3662690 b_free!96671 (= (toChars!7951 (transformation!5800 (h!44057 (t!298624 rules!3307)))) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661852 b_free!96663 (= (toChars!7951 (transformation!5800 anOtherTypeRule!33)) (toChars!7951 (transformation!5800 (rule!8614 token!511))))) (and b!3661892 b_free!96651) b_lambda!108661)))

(check-sat b_and!271969 (not b!3662243) (not d!1075443) (not b!3662510) (not d!1075345) (not b!3662328) (not b!3662720) (not b!3662390) (not b!3662213) (not b!3662496) (not b!3662244) b_and!272009 (not d!1075403) (not bm!264934) (not d!1075483) (not b_next!97365) (not d!1075371) (not b_lambda!108657) (not b!3662304) (not d!1075553) (not b!3662274) (not b!3662324) (not b!3662722) (not b!3662277) (not b!3662078) (not b!3662396) (not d!1075477) (not b!3662495) (not d!1075467) (not d!1075457) (not b_lambda!108651) (not d!1075469) (not b!3662319) (not d!1075379) (not d!1075265) (not b!3662006) (not b!3662081) (not b!3662708) (not d!1075289) (not b_next!97353) (not b!3662306) (not b!3662005) (not bm!264937) (not b!3662420) (not b!3662085) (not b!3662097) (not bm!264936) (not b!3662721) (not b!3662501) (not d!1075387) (not b!3662239) (not b!3662298) (not d!1075563) (not b!3662508) b_and!272001 (not b!3662261) (not bm!264939) (not b!3662679) (not d!1075361) (not b!3662443) (not b!3662300) (not d!1075307) (not b!3662262) (not d!1075297) (not b_next!97373) (not b!3662229) (not b!3662404) (not b!3662502) (not b!3662506) (not d!1075315) (not b!3662079) (not b!3662278) (not b!3662080) (not d!1075463) (not b!3662272) (not b!3662703) (not b!3662673) (not d!1075281) (not d!1075375) (not b!3662379) (not d!1075365) (not b!3662397) (not d!1075343) (not b!3662704) (not b!3662305) (not b!3662716) (not d!1075473) (not b!3662489) (not b!3662497) (not d!1075421) (not b!3662462) (not b_next!97359) (not b!3662505) (not bm!264935) (not d!1075347) (not tb!211721) (not b!3662218) (not d!1075377) (not d!1075397) (not b!3662444) (not b!3662688) (not b!3662402) (not b!3662084) (not b!3662302) (not b!3662509) (not b!3662263) (not d!1075479) (not b!3662504) (not tb!211645) (not b!3662393) (not d!1075351) (not d!1075391) (not tb!211705) (not b_lambda!108625) (not b!3662219) b_and!272007 (not d!1075411) (not b!3662493) (not b!3662250) (not b!3662458) (not d!1075555) (not b!3662448) b_and!271999 (not b!3662442) (not d!1075349) (not d!1075559) (not b_next!97363) (not d!1075481) (not d!1075373) (not b!3662474) (not b!3662665) (not d!1075485) b_and!272003 (not b_lambda!108621) (not d!1075427) (not d!1075353) tp_is_empty!18201 (not b!3662391) (not bm!264924) (not b_next!97355) (not tb!211629) (not b!3662327) (not d!1075433) (not b!3662211) (not bm!264910) (not b!3662212) (not b!3662159) (not d!1075453) (not b!3662004) (not d!1075487) (not d!1075355) (not b!3662251) (not b!3662342) (not b!3662086) (not b!3662485) (not d!1075565) (not bm!264925) (not b!3662321) (not b!3662503) (not b!3662719) (not bm!264913) b_and!272005 (not b!3662217) (not b!3662301) (not b_next!97367) (not b!3662702) (not bm!264941) (not d!1075367) (not d!1075449) (not b!3662340) (not d!1075261) (not b!3662299) (not d!1075561) (not b!3662403) (not bm!264940) (not b!3662273) (not d!1075257) (not b!3662160) (not b!3662675) (not b!3662707) (not b!3661993) (not b!3662498) (not b_lambda!108661) (not d!1075567) (not b!3662715) (not d!1075445) (not b!3662104) (not b!3662689) (not b_next!97375) (not b!3662326) (not b_next!97361) (not bm!264922) (not b_lambda!108659) (not b!3662392) (not b!3662677) b_and!271967 (not b!3662706) (not b!3662279) (not bm!264926) (not b!3662713) (not b!3662450) (not d!1075447) (not b!3662398) (not b_lambda!108649) b_and!271973 (not d!1075295) (not b_next!97357) (not b!3662082) (not d!1075455) (not tb!211713) (not bm!264932) (not d!1075465) (not b!3662717) (not d!1075435) (not d!1075549) (not b_lambda!108655) (not b!3662449) b_and!271971 (not b_lambda!108653) (not d!1075475) (not d!1075401) (not b!3662240) (not tb!211669))
(check-sat b_and!271969 b_and!272009 (not b_next!97365) (not b_next!97353) b_and!272001 (not b_next!97373) (not b_next!97359) b_and!272007 b_and!272003 (not b_next!97355) b_and!271967 b_and!271971 (not b_next!97363) b_and!271999 b_and!272005 (not b_next!97367) (not b_next!97375) (not b_next!97361) b_and!271973 (not b_next!97357))
