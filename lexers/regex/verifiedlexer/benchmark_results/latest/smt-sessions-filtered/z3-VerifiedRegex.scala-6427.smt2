; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336054 () Bool)

(assert start!336054)

(declare-fun b!3609739 () Bool)

(declare-fun b_free!93673 () Bool)

(declare-fun b_next!94377 () Bool)

(assert (=> b!3609739 (= b_free!93673 (not b_next!94377))))

(declare-fun tp!1103485 () Bool)

(declare-fun b_and!263147 () Bool)

(assert (=> b!3609739 (= tp!1103485 b_and!263147)))

(declare-fun b_free!93675 () Bool)

(declare-fun b_next!94379 () Bool)

(assert (=> b!3609739 (= b_free!93675 (not b_next!94379))))

(declare-fun tp!1103478 () Bool)

(declare-fun b_and!263149 () Bool)

(assert (=> b!3609739 (= tp!1103478 b_and!263149)))

(declare-fun b!3609741 () Bool)

(declare-fun b_free!93677 () Bool)

(declare-fun b_next!94381 () Bool)

(assert (=> b!3609741 (= b_free!93677 (not b_next!94381))))

(declare-fun tp!1103482 () Bool)

(declare-fun b_and!263151 () Bool)

(assert (=> b!3609741 (= tp!1103482 b_and!263151)))

(declare-fun b_free!93679 () Bool)

(declare-fun b_next!94383 () Bool)

(assert (=> b!3609741 (= b_free!93679 (not b_next!94383))))

(declare-fun tp!1103474 () Bool)

(declare-fun b_and!263153 () Bool)

(assert (=> b!3609741 (= tp!1103474 b_and!263153)))

(declare-fun b!3609760 () Bool)

(declare-fun b_free!93681 () Bool)

(declare-fun b_next!94385 () Bool)

(assert (=> b!3609760 (= b_free!93681 (not b_next!94385))))

(declare-fun tp!1103487 () Bool)

(declare-fun b_and!263155 () Bool)

(assert (=> b!3609760 (= tp!1103487 b_and!263155)))

(declare-fun b_free!93683 () Bool)

(declare-fun b_next!94387 () Bool)

(assert (=> b!3609760 (= b_free!93683 (not b_next!94387))))

(declare-fun tp!1103477 () Bool)

(declare-fun b_and!263157 () Bool)

(assert (=> b!3609760 (= tp!1103477 b_and!263157)))

(declare-fun b!3609746 () Bool)

(declare-fun b_free!93685 () Bool)

(declare-fun b_next!94389 () Bool)

(assert (=> b!3609746 (= b_free!93685 (not b_next!94389))))

(declare-fun tp!1103488 () Bool)

(declare-fun b_and!263159 () Bool)

(assert (=> b!3609746 (= tp!1103488 b_and!263159)))

(declare-fun b_free!93687 () Bool)

(declare-fun b_next!94391 () Bool)

(assert (=> b!3609746 (= b_free!93687 (not b_next!94391))))

(declare-fun tp!1103486 () Bool)

(declare-fun b_and!263161 () Bool)

(assert (=> b!3609746 (= tp!1103486 b_and!263161)))

(declare-fun b!3609729 () Bool)

(declare-datatypes ((Unit!54147 0))(
  ( (Unit!54148) )
))
(declare-fun e!2233967 () Unit!54147)

(declare-fun Unit!54149 () Unit!54147)

(assert (=> b!3609729 (= e!2233967 Unit!54149)))

(declare-fun b!3609730 () Bool)

(declare-fun res!1460002 () Bool)

(declare-fun e!2233953 () Bool)

(assert (=> b!3609730 (=> (not res!1460002) (not e!2233953))))

(declare-datatypes ((List!38111 0))(
  ( (Nil!37987) (Cons!37987 (h!43407 (_ BitVec 16)) (t!293282 List!38111)) )
))
(declare-datatypes ((TokenValue!5864 0))(
  ( (FloatLiteralValue!11728 (text!41493 List!38111)) (TokenValueExt!5863 (__x!23945 Int)) (Broken!29320 (value!181003 List!38111)) (Object!5987) (End!5864) (Def!5864) (Underscore!5864) (Match!5864) (Else!5864) (Error!5864) (Case!5864) (If!5864) (Extends!5864) (Abstract!5864) (Class!5864) (Val!5864) (DelimiterValue!11728 (del!5924 List!38111)) (KeywordValue!5870 (value!181004 List!38111)) (CommentValue!11728 (value!181005 List!38111)) (WhitespaceValue!11728 (value!181006 List!38111)) (IndentationValue!5864 (value!181007 List!38111)) (String!42653) (Int32!5864) (Broken!29321 (value!181008 List!38111)) (Boolean!5865) (Unit!54150) (OperatorValue!5867 (op!5924 List!38111)) (IdentifierValue!11728 (value!181009 List!38111)) (IdentifierValue!11729 (value!181010 List!38111)) (WhitespaceValue!11729 (value!181011 List!38111)) (True!11728) (False!11728) (Broken!29322 (value!181012 List!38111)) (Broken!29323 (value!181013 List!38111)) (True!11729) (RightBrace!5864) (RightBracket!5864) (Colon!5864) (Null!5864) (Comma!5864) (LeftBracket!5864) (False!11729) (LeftBrace!5864) (ImaginaryLiteralValue!5864 (text!41494 List!38111)) (StringLiteralValue!17592 (value!181014 List!38111)) (EOFValue!5864 (value!181015 List!38111)) (IdentValue!5864 (value!181016 List!38111)) (DelimiterValue!11729 (value!181017 List!38111)) (DedentValue!5864 (value!181018 List!38111)) (NewLineValue!5864 (value!181019 List!38111)) (IntegerValue!17592 (value!181020 (_ BitVec 32)) (text!41495 List!38111)) (IntegerValue!17593 (value!181021 Int) (text!41496 List!38111)) (Times!5864) (Or!5864) (Equal!5864) (Minus!5864) (Broken!29324 (value!181022 List!38111)) (And!5864) (Div!5864) (LessEqual!5864) (Mod!5864) (Concat!16257) (Not!5864) (Plus!5864) (SpaceValue!5864 (value!181023 List!38111)) (IntegerValue!17594 (value!181024 Int) (text!41497 List!38111)) (StringLiteralValue!17593 (text!41498 List!38111)) (FloatLiteralValue!11729 (text!41499 List!38111)) (BytesLiteralValue!5864 (value!181025 List!38111)) (CommentValue!11729 (value!181026 List!38111)) (StringLiteralValue!17594 (value!181027 List!38111)) (ErrorTokenValue!5864 (msg!5925 List!38111)) )
))
(declare-datatypes ((C!20972 0))(
  ( (C!20973 (val!12534 Int)) )
))
(declare-datatypes ((Regex!10393 0))(
  ( (ElementMatch!10393 (c!624526 C!20972)) (Concat!16258 (regOne!21298 Regex!10393) (regTwo!21298 Regex!10393)) (EmptyExpr!10393) (Star!10393 (reg!10722 Regex!10393)) (EmptyLang!10393) (Union!10393 (regOne!21299 Regex!10393) (regTwo!21299 Regex!10393)) )
))
(declare-datatypes ((String!42654 0))(
  ( (String!42655 (value!181028 String)) )
))
(declare-datatypes ((List!38112 0))(
  ( (Nil!37988) (Cons!37988 (h!43408 C!20972) (t!293283 List!38112)) )
))
(declare-datatypes ((IArray!23155 0))(
  ( (IArray!23156 (innerList!11635 List!38112)) )
))
(declare-datatypes ((Conc!11575 0))(
  ( (Node!11575 (left!29682 Conc!11575) (right!30012 Conc!11575) (csize!23380 Int) (cheight!11786 Int)) (Leaf!18003 (xs!14777 IArray!23155) (csize!23381 Int)) (Empty!11575) )
))
(declare-datatypes ((BalanceConc!22764 0))(
  ( (BalanceConc!22765 (c!624527 Conc!11575)) )
))
(declare-datatypes ((TokenValueInjection!11156 0))(
  ( (TokenValueInjection!11157 (toValue!7918 Int) (toChars!7777 Int)) )
))
(declare-datatypes ((Rule!11068 0))(
  ( (Rule!11069 (regex!5634 Regex!10393) (tag!6340 String!42654) (isSeparator!5634 Bool) (transformation!5634 TokenValueInjection!11156)) )
))
(declare-datatypes ((List!38113 0))(
  ( (Nil!37989) (Cons!37989 (h!43409 Rule!11068) (t!293284 List!38113)) )
))
(declare-fun rules!3307 () List!38113)

(declare-fun isEmpty!22430 (List!38113) Bool)

(assert (=> b!3609730 (= res!1460002 (not (isEmpty!22430 rules!3307)))))

(declare-fun b!3609731 () Bool)

(declare-fun e!2233968 () Bool)

(declare-fun tp_is_empty!17869 () Bool)

(declare-fun tp!1103483 () Bool)

(assert (=> b!3609731 (= e!2233968 (and tp_is_empty!17869 tp!1103483))))

(declare-fun b!3609732 () Bool)

(declare-fun e!2233975 () Unit!54147)

(assert (=> b!3609732 (= e!2233975 e!2233967)))

(declare-fun c!624524 () Bool)

(declare-datatypes ((Token!10634 0))(
  ( (Token!10635 (value!181029 TokenValue!5864) (rule!8384 Rule!11068) (size!28959 Int) (originalCharacters!6348 List!38112)) )
))
(declare-datatypes ((tuple2!37884 0))(
  ( (tuple2!37885 (_1!22076 Token!10634) (_2!22076 List!38112)) )
))
(declare-fun lt!1242429 () tuple2!37884)

(assert (=> b!3609732 (= c!624524 (isSeparator!5634 (rule!8384 (_1!22076 lt!1242429))))))

(declare-fun b!3609733 () Bool)

(declare-fun res!1460010 () Bool)

(assert (=> b!3609733 (=> (not res!1460010) (not e!2233953))))

(declare-datatypes ((LexerInterface!5223 0))(
  ( (LexerInterfaceExt!5220 (__x!23946 Int)) (Lexer!5221) )
))
(declare-fun thiss!23823 () LexerInterface!5223)

(declare-fun rulesInvariant!4620 (LexerInterface!5223 List!38113) Bool)

(assert (=> b!3609733 (= res!1460010 (rulesInvariant!4620 thiss!23823 rules!3307))))

(declare-fun tp!1103476 () Bool)

(declare-fun e!2233969 () Bool)

(declare-fun b!3609734 () Bool)

(declare-fun e!2233951 () Bool)

(declare-fun inv!51357 (String!42654) Bool)

(declare-fun inv!51360 (TokenValueInjection!11156) Bool)

(assert (=> b!3609734 (= e!2233969 (and tp!1103476 (inv!51357 (tag!6340 (h!43409 rules!3307))) (inv!51360 (transformation!5634 (h!43409 rules!3307))) e!2233951))))

(declare-fun tp!1103484 () Bool)

(declare-fun b!3609735 () Bool)

(declare-fun e!2233956 () Bool)

(declare-fun e!2233972 () Bool)

(declare-fun rule!403 () Rule!11068)

(assert (=> b!3609735 (= e!2233972 (and tp!1103484 (inv!51357 (tag!6340 rule!403)) (inv!51360 (transformation!5634 rule!403)) e!2233956))))

(declare-fun b!3609736 () Bool)

(assert (=> b!3609736 false))

(declare-fun lt!1242428 () Unit!54147)

(declare-fun call!260932 () Unit!54147)

(assert (=> b!3609736 (= lt!1242428 call!260932)))

(declare-fun call!260930 () Bool)

(assert (=> b!3609736 (not call!260930)))

(declare-fun lt!1242396 () C!20972)

(declare-fun lt!1242424 () Unit!54147)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!340 (LexerInterface!5223 List!38113 List!38113 Rule!11068 Rule!11068 C!20972) Unit!54147)

(assert (=> b!3609736 (= lt!1242424 (lemmaNonSepRuleNotContainsCharContainedInASepRule!340 thiss!23823 rules!3307 rules!3307 (rule!8384 (_1!22076 lt!1242429)) rule!403 lt!1242396))))

(declare-fun e!2233970 () Unit!54147)

(declare-fun Unit!54151 () Unit!54147)

(assert (=> b!3609736 (= e!2233970 Unit!54151)))

(declare-fun b!3609737 () Bool)

(declare-fun e!2233954 () Bool)

(declare-fun e!2233959 () Bool)

(assert (=> b!3609737 (= e!2233954 e!2233959)))

(declare-fun res!1460008 () Bool)

(assert (=> b!3609737 (=> (not res!1460008) (not e!2233959))))

(declare-fun lt!1242415 () Rule!11068)

(declare-fun matchR!4962 (Regex!10393 List!38112) Bool)

(declare-fun list!14010 (BalanceConc!22764) List!38112)

(declare-fun charsOf!3648 (Token!10634) BalanceConc!22764)

(assert (=> b!3609737 (= res!1460008 (matchR!4962 (regex!5634 lt!1242415) (list!14010 (charsOf!3648 (_1!22076 lt!1242429)))))))

(declare-datatypes ((Option!7898 0))(
  ( (None!7897) (Some!7897 (v!37639 Rule!11068)) )
))
(declare-fun lt!1242425 () Option!7898)

(declare-fun get!12325 (Option!7898) Rule!11068)

(assert (=> b!3609737 (= lt!1242415 (get!12325 lt!1242425))))

(declare-fun b!3609738 () Bool)

(declare-fun e!2233979 () Bool)

(declare-fun tp!1103475 () Bool)

(assert (=> b!3609738 (= e!2233979 (and e!2233969 tp!1103475))))

(assert (=> b!3609739 (= e!2233956 (and tp!1103485 tp!1103478))))

(declare-fun b!3609740 () Bool)

(declare-fun res!1460006 () Bool)

(declare-fun e!2233978 () Bool)

(assert (=> b!3609740 (=> res!1460006 e!2233978)))

(declare-fun sepAndNonSepRulesDisjointChars!1804 (List!38113 List!38113) Bool)

(assert (=> b!3609740 (= res!1460006 (not (sepAndNonSepRulesDisjointChars!1804 rules!3307 rules!3307)))))

(declare-fun e!2233958 () Bool)

(assert (=> b!3609741 (= e!2233958 (and tp!1103482 tp!1103474))))

(declare-fun e!2233977 () Bool)

(declare-fun e!2233976 () Bool)

(declare-fun tp!1103480 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11068)

(declare-fun b!3609742 () Bool)

(assert (=> b!3609742 (= e!2233977 (and tp!1103480 (inv!51357 (tag!6340 anOtherTypeRule!33)) (inv!51360 (transformation!5634 anOtherTypeRule!33)) e!2233976))))

(declare-fun b!3609743 () Bool)

(declare-fun res!1460003 () Bool)

(assert (=> b!3609743 (=> (not res!1460003) (not e!2233953))))

(declare-fun contains!7331 (List!38113 Rule!11068) Bool)

(assert (=> b!3609743 (= res!1460003 (contains!7331 rules!3307 rule!403))))

(declare-fun b!3609744 () Bool)

(assert (=> b!3609744 (= e!2233975 e!2233970)))

(declare-fun c!624523 () Bool)

(assert (=> b!3609744 (= c!624523 (not (isSeparator!5634 (rule!8384 (_1!22076 lt!1242429)))))))

(declare-fun b!3609745 () Bool)

(declare-fun res!1460009 () Bool)

(assert (=> b!3609745 (=> (not res!1460009) (not e!2233953))))

(assert (=> b!3609745 (= res!1460009 (not (= (isSeparator!5634 anOtherTypeRule!33) (isSeparator!5634 rule!403))))))

(assert (=> b!3609746 (= e!2233976 (and tp!1103488 tp!1103486))))

(declare-fun bm!260925 () Bool)

(declare-fun call!260931 () List!38112)

(declare-fun usedCharacters!848 (Regex!10393) List!38112)

(assert (=> bm!260925 (= call!260931 (usedCharacters!848 (regex!5634 (rule!8384 (_1!22076 lt!1242429)))))))

(declare-fun b!3609747 () Bool)

(declare-fun e!2233971 () Bool)

(declare-fun e!2233973 () Bool)

(assert (=> b!3609747 (= e!2233971 e!2233973)))

(declare-fun res!1459996 () Bool)

(assert (=> b!3609747 (=> res!1459996 e!2233973)))

(assert (=> b!3609747 (= res!1459996 (isSeparator!5634 rule!403))))

(declare-fun lt!1242421 () List!38112)

(declare-fun lt!1242399 () C!20972)

(declare-fun contains!7332 (List!38112 C!20972) Bool)

(assert (=> b!3609747 (contains!7332 lt!1242421 lt!1242399)))

(declare-fun suffix!1395 () List!38112)

(declare-fun lt!1242426 () Unit!54147)

(declare-fun lt!1242406 () List!38112)

(declare-fun lt!1242427 () List!38112)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!12 (List!38112 List!38112 List!38112 List!38112) Unit!54147)

(assert (=> b!3609747 (= lt!1242426 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!12 lt!1242427 suffix!1395 lt!1242421 lt!1242406))))

(declare-fun b!3609748 () Bool)

(declare-fun e!2233961 () Bool)

(assert (=> b!3609748 (= e!2233978 e!2233961)))

(declare-fun res!1459998 () Bool)

(assert (=> b!3609748 (=> res!1459998 e!2233961)))

(declare-fun isPrefix!2997 (List!38112 List!38112) Bool)

(assert (=> b!3609748 (= res!1459998 (not (isPrefix!2997 lt!1242421 lt!1242406)))))

(declare-fun ++!9450 (List!38112 List!38112) List!38112)

(assert (=> b!3609748 (isPrefix!2997 lt!1242421 (++!9450 lt!1242421 (_2!22076 lt!1242429)))))

(declare-fun lt!1242432 () Unit!54147)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1918 (List!38112 List!38112) Unit!54147)

(assert (=> b!3609748 (= lt!1242432 (lemmaConcatTwoListThenFirstIsPrefix!1918 lt!1242421 (_2!22076 lt!1242429)))))

(declare-fun lt!1242398 () BalanceConc!22764)

(assert (=> b!3609748 (= lt!1242421 (list!14010 lt!1242398))))

(assert (=> b!3609748 (= lt!1242398 (charsOf!3648 (_1!22076 lt!1242429)))))

(assert (=> b!3609748 e!2233954))

(declare-fun res!1459991 () Bool)

(assert (=> b!3609748 (=> (not res!1459991) (not e!2233954))))

(declare-fun isDefined!6130 (Option!7898) Bool)

(assert (=> b!3609748 (= res!1459991 (isDefined!6130 lt!1242425))))

(declare-fun getRuleFromTag!1240 (LexerInterface!5223 List!38113 String!42654) Option!7898)

(assert (=> b!3609748 (= lt!1242425 (getRuleFromTag!1240 thiss!23823 rules!3307 (tag!6340 (rule!8384 (_1!22076 lt!1242429)))))))

(declare-fun lt!1242414 () Unit!54147)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1240 (LexerInterface!5223 List!38113 List!38112 Token!10634) Unit!54147)

(assert (=> b!3609748 (= lt!1242414 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1240 thiss!23823 rules!3307 lt!1242406 (_1!22076 lt!1242429)))))

(declare-datatypes ((Option!7899 0))(
  ( (None!7898) (Some!7898 (v!37640 tuple2!37884)) )
))
(declare-fun lt!1242420 () Option!7899)

(declare-fun get!12326 (Option!7899) tuple2!37884)

(assert (=> b!3609748 (= lt!1242429 (get!12326 lt!1242420))))

(declare-fun lt!1242395 () Unit!54147)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!903 (LexerInterface!5223 List!38113 List!38112 List!38112) Unit!54147)

(assert (=> b!3609748 (= lt!1242395 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!903 thiss!23823 rules!3307 lt!1242427 suffix!1395))))

(declare-fun maxPrefix!2757 (LexerInterface!5223 List!38113 List!38112) Option!7899)

(assert (=> b!3609748 (= lt!1242420 (maxPrefix!2757 thiss!23823 rules!3307 lt!1242406))))

(assert (=> b!3609748 (isPrefix!2997 lt!1242427 lt!1242406)))

(declare-fun lt!1242411 () Unit!54147)

(assert (=> b!3609748 (= lt!1242411 (lemmaConcatTwoListThenFirstIsPrefix!1918 lt!1242427 suffix!1395))))

(assert (=> b!3609748 (= lt!1242406 (++!9450 lt!1242427 suffix!1395))))

(declare-fun b!3609749 () Bool)

(declare-fun e!2233957 () Bool)

(declare-fun e!2233980 () Bool)

(assert (=> b!3609749 (= e!2233957 e!2233980)))

(declare-fun res!1459997 () Bool)

(assert (=> b!3609749 (=> (not res!1459997) (not e!2233980))))

(declare-fun lt!1242402 () tuple2!37884)

(declare-fun token!511 () Token!10634)

(assert (=> b!3609749 (= res!1459997 (= (_1!22076 lt!1242402) token!511))))

(declare-fun lt!1242417 () Option!7899)

(assert (=> b!3609749 (= lt!1242402 (get!12326 lt!1242417))))

(declare-fun b!3609750 () Bool)

(declare-fun res!1460011 () Bool)

(assert (=> b!3609750 (=> res!1460011 e!2233961)))

(assert (=> b!3609750 (= res!1460011 (not (matchR!4962 (regex!5634 (rule!8384 (_1!22076 lt!1242429))) lt!1242421)))))

(declare-fun b!3609751 () Bool)

(declare-fun res!1460004 () Bool)

(assert (=> b!3609751 (=> (not res!1460004) (not e!2233953))))

(assert (=> b!3609751 (= res!1460004 (contains!7331 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3609752 () Bool)

(declare-fun e!2233981 () Bool)

(assert (=> b!3609752 (= e!2233981 e!2233978)))

(declare-fun res!1460000 () Bool)

(assert (=> b!3609752 (=> res!1460000 e!2233978)))

(declare-fun lt!1242419 () List!38112)

(assert (=> b!3609752 (= res!1460000 (contains!7332 lt!1242419 lt!1242399))))

(declare-fun head!7592 (List!38112) C!20972)

(assert (=> b!3609752 (= lt!1242399 (head!7592 suffix!1395))))

(assert (=> b!3609752 (= lt!1242419 (usedCharacters!848 (regex!5634 rule!403)))))

(declare-fun b!3609753 () Bool)

(declare-fun res!1460012 () Bool)

(assert (=> b!3609753 (=> res!1460012 e!2233978)))

(assert (=> b!3609753 (= res!1460012 (not (contains!7332 (usedCharacters!848 (regex!5634 anOtherTypeRule!33)) lt!1242399)))))

(declare-fun b!3609754 () Bool)

(declare-fun e!2233982 () Unit!54147)

(declare-fun Unit!54152 () Unit!54147)

(assert (=> b!3609754 (= e!2233982 Unit!54152)))

(declare-fun b!3609755 () Bool)

(declare-fun Unit!54153 () Unit!54147)

(assert (=> b!3609755 (= e!2233970 Unit!54153)))

(declare-fun bm!260926 () Bool)

(assert (=> bm!260926 (= call!260930 (contains!7332 call!260931 lt!1242396))))

(declare-fun b!3609756 () Bool)

(assert (=> b!3609756 (= e!2233973 true)))

(declare-fun lt!1242410 () Bool)

(assert (=> b!3609756 (= lt!1242410 (contains!7331 rules!3307 (rule!8384 (_1!22076 lt!1242429))))))

(declare-fun b!3609757 () Bool)

(declare-fun e!2233952 () Bool)

(assert (=> b!3609757 (= e!2233961 e!2233952)))

(declare-fun res!1460007 () Bool)

(assert (=> b!3609757 (=> res!1460007 e!2233952)))

(declare-fun lt!1242394 () TokenValue!5864)

(declare-fun lt!1242423 () Int)

(assert (=> b!3609757 (= res!1460007 (not (= lt!1242420 (Some!7898 (tuple2!37885 (Token!10635 lt!1242394 (rule!8384 (_1!22076 lt!1242429)) lt!1242423 lt!1242421) (_2!22076 lt!1242429))))))))

(declare-fun size!28960 (BalanceConc!22764) Int)

(assert (=> b!3609757 (= lt!1242423 (size!28960 lt!1242398))))

(declare-fun apply!9140 (TokenValueInjection!11156 BalanceConc!22764) TokenValue!5864)

(assert (=> b!3609757 (= lt!1242394 (apply!9140 (transformation!5634 (rule!8384 (_1!22076 lt!1242429))) lt!1242398))))

(declare-fun lt!1242407 () Unit!54147)

(declare-fun lemmaCharactersSize!687 (Token!10634) Unit!54147)

(assert (=> b!3609757 (= lt!1242407 (lemmaCharactersSize!687 (_1!22076 lt!1242429)))))

(declare-fun lt!1242409 () Unit!54147)

(declare-fun lemmaEqSameImage!825 (TokenValueInjection!11156 BalanceConc!22764 BalanceConc!22764) Unit!54147)

(declare-fun seqFromList!4187 (List!38112) BalanceConc!22764)

(assert (=> b!3609757 (= lt!1242409 (lemmaEqSameImage!825 (transformation!5634 (rule!8384 (_1!22076 lt!1242429))) lt!1242398 (seqFromList!4187 (originalCharacters!6348 (_1!22076 lt!1242429)))))))

(declare-fun lt!1242416 () Unit!54147)

(declare-fun lemmaSemiInverse!1391 (TokenValueInjection!11156 BalanceConc!22764) Unit!54147)

(assert (=> b!3609757 (= lt!1242416 (lemmaSemiInverse!1391 (transformation!5634 (rule!8384 (_1!22076 lt!1242429))) lt!1242398))))

(declare-fun b!3609758 () Bool)

(declare-fun Unit!54154 () Unit!54147)

(assert (=> b!3609758 (= e!2233982 Unit!54154)))

(declare-fun lt!1242397 () Unit!54147)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!618 (Regex!10393 List!38112 C!20972) Unit!54147)

(assert (=> b!3609758 (= lt!1242397 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!618 (regex!5634 rule!403) lt!1242427 lt!1242396))))

(assert (=> b!3609758 false))

(declare-fun b!3609759 () Bool)

(assert (=> b!3609759 (= e!2233953 e!2233957)))

(declare-fun res!1459993 () Bool)

(assert (=> b!3609759 (=> (not res!1459993) (not e!2233957))))

(declare-fun isDefined!6131 (Option!7899) Bool)

(assert (=> b!3609759 (= res!1459993 (isDefined!6131 lt!1242417))))

(assert (=> b!3609759 (= lt!1242417 (maxPrefix!2757 thiss!23823 rules!3307 lt!1242427))))

(declare-fun lt!1242431 () BalanceConc!22764)

(assert (=> b!3609759 (= lt!1242427 (list!14010 lt!1242431))))

(assert (=> b!3609759 (= lt!1242431 (charsOf!3648 token!511))))

(assert (=> b!3609760 (= e!2233951 (and tp!1103487 tp!1103477))))

(declare-fun b!3609761 () Bool)

(declare-fun res!1459994 () Bool)

(assert (=> b!3609761 (=> res!1459994 e!2233981)))

(declare-fun isEmpty!22431 (List!38112) Bool)

(assert (=> b!3609761 (= res!1459994 (isEmpty!22431 suffix!1395))))

(declare-fun b!3609762 () Bool)

(declare-fun e!2233955 () Bool)

(declare-fun e!2233963 () Bool)

(declare-fun tp!1103481 () Bool)

(declare-fun inv!21 (TokenValue!5864) Bool)

(assert (=> b!3609762 (= e!2233963 (and (inv!21 (value!181029 token!511)) e!2233955 tp!1103481))))

(declare-fun b!3609763 () Bool)

(declare-fun res!1459995 () Bool)

(assert (=> b!3609763 (=> (not res!1459995) (not e!2233980))))

(assert (=> b!3609763 (= res!1459995 (= (rule!8384 token!511) rule!403))))

(declare-fun b!3609764 () Bool)

(declare-fun e!2233965 () Bool)

(assert (=> b!3609764 (= e!2233965 e!2233971)))

(declare-fun res!1459992 () Bool)

(assert (=> b!3609764 (=> res!1459992 e!2233971)))

(assert (=> b!3609764 (= res!1459992 (<= lt!1242423 (size!28960 lt!1242431)))))

(declare-fun lt!1242401 () Unit!54147)

(assert (=> b!3609764 (= lt!1242401 e!2233975)))

(declare-fun c!624525 () Bool)

(assert (=> b!3609764 (= c!624525 (isSeparator!5634 rule!403))))

(declare-fun lt!1242413 () Unit!54147)

(assert (=> b!3609764 (= lt!1242413 e!2233982)))

(declare-fun c!624522 () Bool)

(assert (=> b!3609764 (= c!624522 (not (contains!7332 lt!1242419 lt!1242396)))))

(assert (=> b!3609764 (= lt!1242396 (head!7592 lt!1242421))))

(declare-fun b!3609765 () Bool)

(assert (=> b!3609765 (= e!2233980 (not e!2233981))))

(declare-fun res!1459990 () Bool)

(assert (=> b!3609765 (=> res!1459990 e!2233981)))

(assert (=> b!3609765 (= res!1459990 (not (matchR!4962 (regex!5634 rule!403) lt!1242427)))))

(declare-fun ruleValid!1899 (LexerInterface!5223 Rule!11068) Bool)

(assert (=> b!3609765 (ruleValid!1899 thiss!23823 rule!403)))

(declare-fun lt!1242408 () Unit!54147)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1054 (LexerInterface!5223 Rule!11068 List!38113) Unit!54147)

(assert (=> b!3609765 (= lt!1242408 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1054 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3609766 () Bool)

(assert (=> b!3609766 (= e!2233952 e!2233965)))

(declare-fun res!1460001 () Bool)

(assert (=> b!3609766 (=> res!1460001 e!2233965)))

(declare-fun lt!1242418 () Option!7899)

(declare-fun lt!1242405 () List!38112)

(assert (=> b!3609766 (= res!1460001 (or (not (= lt!1242405 (_2!22076 lt!1242429))) (not (= lt!1242418 (Some!7898 (tuple2!37885 (_1!22076 lt!1242429) lt!1242405))))))))

(assert (=> b!3609766 (= (_2!22076 lt!1242429) lt!1242405)))

(declare-fun lt!1242403 () Unit!54147)

(declare-fun lemmaSamePrefixThenSameSuffix!1352 (List!38112 List!38112 List!38112 List!38112 List!38112) Unit!54147)

(assert (=> b!3609766 (= lt!1242403 (lemmaSamePrefixThenSameSuffix!1352 lt!1242421 (_2!22076 lt!1242429) lt!1242421 lt!1242405 lt!1242406))))

(declare-fun getSuffix!1572 (List!38112 List!38112) List!38112)

(assert (=> b!3609766 (= lt!1242405 (getSuffix!1572 lt!1242406 lt!1242421))))

(declare-fun lt!1242430 () Int)

(declare-fun lt!1242412 () TokenValue!5864)

(assert (=> b!3609766 (= lt!1242418 (Some!7898 (tuple2!37885 (Token!10635 lt!1242412 (rule!8384 (_1!22076 lt!1242429)) lt!1242430 lt!1242421) (_2!22076 lt!1242429))))))

(declare-fun maxPrefixOneRule!1901 (LexerInterface!5223 Rule!11068 List!38112) Option!7899)

(assert (=> b!3609766 (= lt!1242418 (maxPrefixOneRule!1901 thiss!23823 (rule!8384 (_1!22076 lt!1242429)) lt!1242406))))

(declare-fun size!28961 (List!38112) Int)

(assert (=> b!3609766 (= lt!1242430 (size!28961 lt!1242421))))

(assert (=> b!3609766 (= lt!1242412 (apply!9140 (transformation!5634 (rule!8384 (_1!22076 lt!1242429))) (seqFromList!4187 lt!1242421)))))

(declare-fun lt!1242404 () Unit!54147)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!973 (LexerInterface!5223 List!38113 List!38112 List!38112 List!38112 Rule!11068) Unit!54147)

(assert (=> b!3609766 (= lt!1242404 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!973 thiss!23823 rules!3307 lt!1242421 lt!1242406 (_2!22076 lt!1242429) (rule!8384 (_1!22076 lt!1242429))))))

(declare-fun bm!260927 () Bool)

(assert (=> bm!260927 (= call!260932 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!618 (regex!5634 (rule!8384 (_1!22076 lt!1242429))) lt!1242421 lt!1242396))))

(declare-fun res!1459999 () Bool)

(assert (=> start!336054 (=> (not res!1459999) (not e!2233953))))

(get-info :version)

(assert (=> start!336054 (= res!1459999 ((_ is Lexer!5221) thiss!23823))))

(assert (=> start!336054 e!2233953))

(assert (=> start!336054 e!2233979))

(assert (=> start!336054 e!2233968))

(assert (=> start!336054 true))

(declare-fun inv!51361 (Token!10634) Bool)

(assert (=> start!336054 (and (inv!51361 token!511) e!2233963)))

(assert (=> start!336054 e!2233972))

(assert (=> start!336054 e!2233977))

(declare-fun b!3609767 () Bool)

(assert (=> b!3609767 false))

(declare-fun lt!1242400 () Unit!54147)

(assert (=> b!3609767 (= lt!1242400 call!260932)))

(assert (=> b!3609767 (not call!260930)))

(declare-fun lt!1242422 () Unit!54147)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!222 (LexerInterface!5223 List!38113 List!38113 Rule!11068 Rule!11068 C!20972) Unit!54147)

(assert (=> b!3609767 (= lt!1242422 (lemmaSepRuleNotContainsCharContainedInANonSepRule!222 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8384 (_1!22076 lt!1242429)) lt!1242396))))

(declare-fun Unit!54155 () Unit!54147)

(assert (=> b!3609767 (= e!2233967 Unit!54155)))

(declare-fun b!3609768 () Bool)

(assert (=> b!3609768 (= e!2233959 (= (rule!8384 (_1!22076 lt!1242429)) lt!1242415))))

(declare-fun b!3609769 () Bool)

(declare-fun tp!1103479 () Bool)

(assert (=> b!3609769 (= e!2233955 (and tp!1103479 (inv!51357 (tag!6340 (rule!8384 token!511))) (inv!51360 (transformation!5634 (rule!8384 token!511))) e!2233958))))

(declare-fun b!3609770 () Bool)

(declare-fun res!1460005 () Bool)

(assert (=> b!3609770 (=> (not res!1460005) (not e!2233980))))

(assert (=> b!3609770 (= res!1460005 (isEmpty!22431 (_2!22076 lt!1242402)))))

(assert (= (and start!336054 res!1459999) b!3609730))

(assert (= (and b!3609730 res!1460002) b!3609733))

(assert (= (and b!3609733 res!1460010) b!3609743))

(assert (= (and b!3609743 res!1460003) b!3609751))

(assert (= (and b!3609751 res!1460004) b!3609745))

(assert (= (and b!3609745 res!1460009) b!3609759))

(assert (= (and b!3609759 res!1459993) b!3609749))

(assert (= (and b!3609749 res!1459997) b!3609770))

(assert (= (and b!3609770 res!1460005) b!3609763))

(assert (= (and b!3609763 res!1459995) b!3609765))

(assert (= (and b!3609765 (not res!1459990)) b!3609761))

(assert (= (and b!3609761 (not res!1459994)) b!3609752))

(assert (= (and b!3609752 (not res!1460000)) b!3609753))

(assert (= (and b!3609753 (not res!1460012)) b!3609740))

(assert (= (and b!3609740 (not res!1460006)) b!3609748))

(assert (= (and b!3609748 res!1459991) b!3609737))

(assert (= (and b!3609737 res!1460008) b!3609768))

(assert (= (and b!3609748 (not res!1459998)) b!3609750))

(assert (= (and b!3609750 (not res!1460011)) b!3609757))

(assert (= (and b!3609757 (not res!1460007)) b!3609766))

(assert (= (and b!3609766 (not res!1460001)) b!3609764))

(assert (= (and b!3609764 c!624522) b!3609758))

(assert (= (and b!3609764 (not c!624522)) b!3609754))

(assert (= (and b!3609764 c!624525) b!3609744))

(assert (= (and b!3609764 (not c!624525)) b!3609732))

(assert (= (and b!3609744 c!624523) b!3609736))

(assert (= (and b!3609744 (not c!624523)) b!3609755))

(assert (= (and b!3609732 c!624524) b!3609767))

(assert (= (and b!3609732 (not c!624524)) b!3609729))

(assert (= (or b!3609736 b!3609767) bm!260927))

(assert (= (or b!3609736 b!3609767) bm!260925))

(assert (= (or b!3609736 b!3609767) bm!260926))

(assert (= (and b!3609764 (not res!1459992)) b!3609747))

(assert (= (and b!3609747 (not res!1459996)) b!3609756))

(assert (= b!3609734 b!3609760))

(assert (= b!3609738 b!3609734))

(assert (= (and start!336054 ((_ is Cons!37989) rules!3307)) b!3609738))

(assert (= (and start!336054 ((_ is Cons!37988) suffix!1395)) b!3609731))

(assert (= b!3609769 b!3609741))

(assert (= b!3609762 b!3609769))

(assert (= start!336054 b!3609762))

(assert (= b!3609735 b!3609739))

(assert (= start!336054 b!3609735))

(assert (= b!3609742 b!3609746))

(assert (= start!336054 b!3609742))

(declare-fun m!4107201 () Bool)

(assert (=> b!3609750 m!4107201))

(declare-fun m!4107203 () Bool)

(assert (=> b!3609733 m!4107203))

(declare-fun m!4107205 () Bool)

(assert (=> bm!260927 m!4107205))

(declare-fun m!4107207 () Bool)

(assert (=> b!3609743 m!4107207))

(declare-fun m!4107209 () Bool)

(assert (=> b!3609756 m!4107209))

(declare-fun m!4107211 () Bool)

(assert (=> b!3609767 m!4107211))

(declare-fun m!4107213 () Bool)

(assert (=> b!3609769 m!4107213))

(declare-fun m!4107215 () Bool)

(assert (=> b!3609769 m!4107215))

(declare-fun m!4107217 () Bool)

(assert (=> b!3609730 m!4107217))

(declare-fun m!4107219 () Bool)

(assert (=> b!3609736 m!4107219))

(declare-fun m!4107221 () Bool)

(assert (=> b!3609735 m!4107221))

(declare-fun m!4107223 () Bool)

(assert (=> b!3609735 m!4107223))

(declare-fun m!4107225 () Bool)

(assert (=> bm!260925 m!4107225))

(declare-fun m!4107227 () Bool)

(assert (=> b!3609742 m!4107227))

(declare-fun m!4107229 () Bool)

(assert (=> b!3609742 m!4107229))

(declare-fun m!4107231 () Bool)

(assert (=> b!3609765 m!4107231))

(declare-fun m!4107233 () Bool)

(assert (=> b!3609765 m!4107233))

(declare-fun m!4107235 () Bool)

(assert (=> b!3609765 m!4107235))

(declare-fun m!4107237 () Bool)

(assert (=> b!3609758 m!4107237))

(declare-fun m!4107239 () Bool)

(assert (=> b!3609757 m!4107239))

(declare-fun m!4107241 () Bool)

(assert (=> b!3609757 m!4107241))

(declare-fun m!4107243 () Bool)

(assert (=> b!3609757 m!4107243))

(declare-fun m!4107245 () Bool)

(assert (=> b!3609757 m!4107245))

(assert (=> b!3609757 m!4107241))

(declare-fun m!4107247 () Bool)

(assert (=> b!3609757 m!4107247))

(declare-fun m!4107249 () Bool)

(assert (=> b!3609757 m!4107249))

(declare-fun m!4107251 () Bool)

(assert (=> b!3609770 m!4107251))

(declare-fun m!4107253 () Bool)

(assert (=> b!3609734 m!4107253))

(declare-fun m!4107255 () Bool)

(assert (=> b!3609734 m!4107255))

(declare-fun m!4107257 () Bool)

(assert (=> b!3609752 m!4107257))

(declare-fun m!4107259 () Bool)

(assert (=> b!3609752 m!4107259))

(declare-fun m!4107261 () Bool)

(assert (=> b!3609752 m!4107261))

(declare-fun m!4107263 () Bool)

(assert (=> b!3609749 m!4107263))

(declare-fun m!4107265 () Bool)

(assert (=> b!3609748 m!4107265))

(declare-fun m!4107267 () Bool)

(assert (=> b!3609748 m!4107267))

(declare-fun m!4107269 () Bool)

(assert (=> b!3609748 m!4107269))

(declare-fun m!4107271 () Bool)

(assert (=> b!3609748 m!4107271))

(declare-fun m!4107273 () Bool)

(assert (=> b!3609748 m!4107273))

(declare-fun m!4107275 () Bool)

(assert (=> b!3609748 m!4107275))

(declare-fun m!4107277 () Bool)

(assert (=> b!3609748 m!4107277))

(declare-fun m!4107279 () Bool)

(assert (=> b!3609748 m!4107279))

(declare-fun m!4107281 () Bool)

(assert (=> b!3609748 m!4107281))

(declare-fun m!4107283 () Bool)

(assert (=> b!3609748 m!4107283))

(declare-fun m!4107285 () Bool)

(assert (=> b!3609748 m!4107285))

(assert (=> b!3609748 m!4107281))

(declare-fun m!4107287 () Bool)

(assert (=> b!3609748 m!4107287))

(declare-fun m!4107289 () Bool)

(assert (=> b!3609748 m!4107289))

(declare-fun m!4107291 () Bool)

(assert (=> b!3609748 m!4107291))

(declare-fun m!4107293 () Bool)

(assert (=> b!3609748 m!4107293))

(declare-fun m!4107295 () Bool)

(assert (=> b!3609762 m!4107295))

(declare-fun m!4107297 () Bool)

(assert (=> bm!260926 m!4107297))

(declare-fun m!4107299 () Bool)

(assert (=> b!3609761 m!4107299))

(declare-fun m!4107301 () Bool)

(assert (=> b!3609766 m!4107301))

(declare-fun m!4107303 () Bool)

(assert (=> b!3609766 m!4107303))

(declare-fun m!4107305 () Bool)

(assert (=> b!3609766 m!4107305))

(declare-fun m!4107307 () Bool)

(assert (=> b!3609766 m!4107307))

(declare-fun m!4107309 () Bool)

(assert (=> b!3609766 m!4107309))

(declare-fun m!4107311 () Bool)

(assert (=> b!3609766 m!4107311))

(assert (=> b!3609766 m!4107309))

(declare-fun m!4107313 () Bool)

(assert (=> b!3609766 m!4107313))

(declare-fun m!4107315 () Bool)

(assert (=> b!3609751 m!4107315))

(declare-fun m!4107317 () Bool)

(assert (=> b!3609764 m!4107317))

(declare-fun m!4107319 () Bool)

(assert (=> b!3609764 m!4107319))

(declare-fun m!4107321 () Bool)

(assert (=> b!3609764 m!4107321))

(declare-fun m!4107323 () Bool)

(assert (=> b!3609753 m!4107323))

(assert (=> b!3609753 m!4107323))

(declare-fun m!4107325 () Bool)

(assert (=> b!3609753 m!4107325))

(declare-fun m!4107327 () Bool)

(assert (=> b!3609747 m!4107327))

(declare-fun m!4107329 () Bool)

(assert (=> b!3609747 m!4107329))

(declare-fun m!4107331 () Bool)

(assert (=> start!336054 m!4107331))

(assert (=> b!3609737 m!4107293))

(assert (=> b!3609737 m!4107293))

(declare-fun m!4107333 () Bool)

(assert (=> b!3609737 m!4107333))

(assert (=> b!3609737 m!4107333))

(declare-fun m!4107335 () Bool)

(assert (=> b!3609737 m!4107335))

(declare-fun m!4107337 () Bool)

(assert (=> b!3609737 m!4107337))

(declare-fun m!4107339 () Bool)

(assert (=> b!3609759 m!4107339))

(declare-fun m!4107341 () Bool)

(assert (=> b!3609759 m!4107341))

(declare-fun m!4107343 () Bool)

(assert (=> b!3609759 m!4107343))

(declare-fun m!4107345 () Bool)

(assert (=> b!3609759 m!4107345))

(declare-fun m!4107347 () Bool)

(assert (=> b!3609740 m!4107347))

(check-sat (not b!3609743) (not b!3609734) (not b!3609761) (not b_next!94389) (not bm!260926) (not b!3609767) (not b!3609757) b_and!263149 b_and!263157 (not b!3609738) (not b!3609756) (not start!336054) (not b!3609753) (not b!3609747) b_and!263161 (not b!3609740) (not b_next!94387) (not b_next!94377) (not b!3609748) tp_is_empty!17869 (not bm!260927) b_and!263155 b_and!263151 (not b!3609750) (not bm!260925) (not b_next!94385) (not b!3609730) (not b!3609737) (not b!3609751) (not b!3609770) (not b!3609765) (not b!3609766) (not b!3609769) (not b!3609752) (not b!3609759) (not b!3609749) b_and!263147 (not b!3609764) (not b!3609736) b_and!263159 (not b_next!94379) (not b_next!94383) b_and!263153 (not b!3609758) (not b!3609742) (not b_next!94381) (not b!3609762) (not b!3609733) (not b!3609735) (not b_next!94391) (not b!3609731))
(check-sat b_and!263161 (not b_next!94389) (not b_next!94385) b_and!263147 b_and!263149 b_and!263157 (not b_next!94381) (not b_next!94391) (not b_next!94387) (not b_next!94377) b_and!263155 b_and!263151 b_and!263159 (not b_next!94379) (not b_next!94383) b_and!263153)
