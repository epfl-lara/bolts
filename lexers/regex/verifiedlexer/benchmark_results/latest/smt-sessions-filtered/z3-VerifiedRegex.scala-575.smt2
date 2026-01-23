; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16714 () Bool)

(assert start!16714)

(declare-fun b!155901 () Bool)

(declare-fun b_free!5801 () Bool)

(declare-fun b_next!5801 () Bool)

(assert (=> b!155901 (= b_free!5801 (not b_next!5801))))

(declare-fun tp!80309 () Bool)

(declare-fun b_and!9341 () Bool)

(assert (=> b!155901 (= tp!80309 b_and!9341)))

(declare-fun b_free!5803 () Bool)

(declare-fun b_next!5803 () Bool)

(assert (=> b!155901 (= b_free!5803 (not b_next!5803))))

(declare-fun tp!80312 () Bool)

(declare-fun b_and!9343 () Bool)

(assert (=> b!155901 (= tp!80312 b_and!9343)))

(declare-fun b!155893 () Bool)

(declare-fun b_free!5805 () Bool)

(declare-fun b_next!5805 () Bool)

(assert (=> b!155893 (= b_free!5805 (not b_next!5805))))

(declare-fun tp!80313 () Bool)

(declare-fun b_and!9345 () Bool)

(assert (=> b!155893 (= tp!80313 b_and!9345)))

(declare-fun b_free!5807 () Bool)

(declare-fun b_next!5807 () Bool)

(assert (=> b!155893 (= b_free!5807 (not b_next!5807))))

(declare-fun tp!80310 () Bool)

(declare-fun b_and!9347 () Bool)

(assert (=> b!155893 (= tp!80310 b_and!9347)))

(declare-fun b!155904 () Bool)

(declare-fun b_free!5809 () Bool)

(declare-fun b_next!5809 () Bool)

(assert (=> b!155904 (= b_free!5809 (not b_next!5809))))

(declare-fun tp!80302 () Bool)

(declare-fun b_and!9349 () Bool)

(assert (=> b!155904 (= tp!80302 b_and!9349)))

(declare-fun b_free!5811 () Bool)

(declare-fun b_next!5811 () Bool)

(assert (=> b!155904 (= b_free!5811 (not b_next!5811))))

(declare-fun tp!80307 () Bool)

(declare-fun b_and!9351 () Bool)

(assert (=> b!155904 (= tp!80307 b_and!9351)))

(declare-fun b!155892 () Bool)

(declare-fun res!71102 () Bool)

(declare-fun e!93537 () Bool)

(assert (=> b!155892 (=> (not res!71102) (not e!93537))))

(declare-datatypes ((List!2711 0))(
  ( (Nil!2701) (Cons!2701 (h!8098 (_ BitVec 16)) (t!25375 List!2711)) )
))
(declare-datatypes ((TokenValue!495 0))(
  ( (FloatLiteralValue!990 (text!3910 List!2711)) (TokenValueExt!494 (__x!2477 Int)) (Broken!2475 (value!17770 List!2711)) (Object!504) (End!495) (Def!495) (Underscore!495) (Match!495) (Else!495) (Error!495) (Case!495) (If!495) (Extends!495) (Abstract!495) (Class!495) (Val!495) (DelimiterValue!990 (del!555 List!2711)) (KeywordValue!501 (value!17771 List!2711)) (CommentValue!990 (value!17772 List!2711)) (WhitespaceValue!990 (value!17773 List!2711)) (IndentationValue!495 (value!17774 List!2711)) (String!3554) (Int32!495) (Broken!2476 (value!17775 List!2711)) (Boolean!496) (Unit!2129) (OperatorValue!498 (op!555 List!2711)) (IdentifierValue!990 (value!17776 List!2711)) (IdentifierValue!991 (value!17777 List!2711)) (WhitespaceValue!991 (value!17778 List!2711)) (True!990) (False!990) (Broken!2477 (value!17779 List!2711)) (Broken!2478 (value!17780 List!2711)) (True!991) (RightBrace!495) (RightBracket!495) (Colon!495) (Null!495) (Comma!495) (LeftBracket!495) (False!991) (LeftBrace!495) (ImaginaryLiteralValue!495 (text!3911 List!2711)) (StringLiteralValue!1485 (value!17781 List!2711)) (EOFValue!495 (value!17782 List!2711)) (IdentValue!495 (value!17783 List!2711)) (DelimiterValue!991 (value!17784 List!2711)) (DedentValue!495 (value!17785 List!2711)) (NewLineValue!495 (value!17786 List!2711)) (IntegerValue!1485 (value!17787 (_ BitVec 32)) (text!3912 List!2711)) (IntegerValue!1486 (value!17788 Int) (text!3913 List!2711)) (Times!495) (Or!495) (Equal!495) (Minus!495) (Broken!2479 (value!17789 List!2711)) (And!495) (Div!495) (LessEqual!495) (Mod!495) (Concat!1192) (Not!495) (Plus!495) (SpaceValue!495 (value!17790 List!2711)) (IntegerValue!1487 (value!17791 Int) (text!3914 List!2711)) (StringLiteralValue!1486 (text!3915 List!2711)) (FloatLiteralValue!991 (text!3916 List!2711)) (BytesLiteralValue!495 (value!17792 List!2711)) (CommentValue!991 (value!17793 List!2711)) (StringLiteralValue!1487 (value!17794 List!2711)) (ErrorTokenValue!495 (msg!556 List!2711)) )
))
(declare-datatypes ((C!2316 0))(
  ( (C!2317 (val!1044 Int)) )
))
(declare-datatypes ((List!2712 0))(
  ( (Nil!2702) (Cons!2702 (h!8099 C!2316) (t!25376 List!2712)) )
))
(declare-datatypes ((IArray!1537 0))(
  ( (IArray!1538 (innerList!826 List!2712)) )
))
(declare-datatypes ((Conc!768 0))(
  ( (Node!768 (left!2039 Conc!768) (right!2369 Conc!768) (csize!1766 Int) (cheight!979 Int)) (Leaf!1344 (xs!3363 IArray!1537) (csize!1767 Int)) (Empty!768) )
))
(declare-datatypes ((BalanceConc!1544 0))(
  ( (BalanceConc!1545 (c!31327 Conc!768)) )
))
(declare-datatypes ((TokenValueInjection!762 0))(
  ( (TokenValueInjection!763 (toValue!1116 Int) (toChars!975 Int)) )
))
(declare-datatypes ((Regex!697 0))(
  ( (ElementMatch!697 (c!31328 C!2316)) (Concat!1193 (regOne!1906 Regex!697) (regTwo!1906 Regex!697)) (EmptyExpr!697) (Star!697 (reg!1026 Regex!697)) (EmptyLang!697) (Union!697 (regOne!1907 Regex!697) (regTwo!1907 Regex!697)) )
))
(declare-datatypes ((String!3555 0))(
  ( (String!3556 (value!17795 String)) )
))
(declare-datatypes ((Rule!746 0))(
  ( (Rule!747 (regex!473 Regex!697) (tag!651 String!3555) (isSeparator!473 Bool) (transformation!473 TokenValueInjection!762)) )
))
(declare-datatypes ((Token!690 0))(
  ( (Token!691 (value!17796 TokenValue!495) (rule!980 Rule!746) (size!2283 Int) (originalCharacters!516 List!2712)) )
))
(declare-fun separatorToken!170 () Token!690)

(assert (=> b!155892 (= res!71102 (isSeparator!473 (rule!980 separatorToken!170)))))

(declare-fun e!93540 () Bool)

(assert (=> b!155893 (= e!93540 (and tp!80313 tp!80310))))

(declare-fun tp!80303 () Bool)

(declare-fun b!155894 () Bool)

(declare-fun e!93546 () Bool)

(declare-datatypes ((List!2713 0))(
  ( (Nil!2703) (Cons!2703 (h!8100 Token!690) (t!25377 List!2713)) )
))
(declare-fun tokens!465 () List!2713)

(declare-fun inv!3503 (String!3555) Bool)

(declare-fun inv!3506 (TokenValueInjection!762) Bool)

(assert (=> b!155894 (= e!93546 (and tp!80303 (inv!3503 (tag!651 (rule!980 (h!8100 tokens!465)))) (inv!3506 (transformation!473 (rule!980 (h!8100 tokens!465)))) e!93540))))

(declare-fun b!155895 () Bool)

(declare-fun res!71100 () Bool)

(assert (=> b!155895 (=> (not res!71100) (not e!93537))))

(declare-fun lambda!4144 () Int)

(declare-fun forall!477 (List!2713 Int) Bool)

(assert (=> b!155895 (= res!71100 (forall!477 tokens!465 lambda!4144))))

(declare-fun b!155896 () Bool)

(declare-fun e!93532 () Bool)

(declare-fun e!93533 () Bool)

(declare-fun tp!80304 () Bool)

(assert (=> b!155896 (= e!93532 (and e!93533 tp!80304))))

(declare-fun b!155897 () Bool)

(declare-fun tp!80308 () Bool)

(declare-datatypes ((List!2714 0))(
  ( (Nil!2704) (Cons!2704 (h!8101 Rule!746) (t!25378 List!2714)) )
))
(declare-fun rules!1920 () List!2714)

(declare-fun e!93538 () Bool)

(assert (=> b!155897 (= e!93533 (and tp!80308 (inv!3503 (tag!651 (h!8101 rules!1920))) (inv!3506 (transformation!473 (h!8101 rules!1920))) e!93538))))

(declare-fun e!93530 () Bool)

(declare-fun b!155898 () Bool)

(declare-fun tp!80301 () Bool)

(declare-fun inv!21 (TokenValue!495) Bool)

(assert (=> b!155898 (= e!93530 (and (inv!21 (value!17796 (h!8100 tokens!465))) e!93546 tp!80301))))

(declare-fun b!155899 () Bool)

(declare-fun res!71101 () Bool)

(declare-fun e!93535 () Bool)

(assert (=> b!155899 (=> (not res!71101) (not e!93535))))

(declare-fun isEmpty!1078 (List!2714) Bool)

(assert (=> b!155899 (= res!71101 (not (isEmpty!1078 rules!1920)))))

(declare-fun b!155900 () Bool)

(declare-fun res!71098 () Bool)

(assert (=> b!155900 (=> (not res!71098) (not e!93537))))

(declare-fun sepAndNonSepRulesDisjointChars!62 (List!2714 List!2714) Bool)

(assert (=> b!155900 (= res!71098 (sepAndNonSepRulesDisjointChars!62 rules!1920 rules!1920))))

(declare-fun e!93544 () Bool)

(assert (=> b!155901 (= e!93544 (and tp!80309 tp!80312))))

(declare-fun b!155902 () Bool)

(assert (=> b!155902 (= e!93535 e!93537)))

(declare-fun res!71095 () Bool)

(assert (=> b!155902 (=> (not res!71095) (not e!93537))))

(declare-datatypes ((IArray!1539 0))(
  ( (IArray!1540 (innerList!827 List!2713)) )
))
(declare-datatypes ((Conc!769 0))(
  ( (Node!769 (left!2040 Conc!769) (right!2370 Conc!769) (csize!1768 Int) (cheight!980 Int)) (Leaf!1345 (xs!3364 IArray!1539) (csize!1769 Int)) (Empty!769) )
))
(declare-datatypes ((BalanceConc!1546 0))(
  ( (BalanceConc!1547 (c!31329 Conc!769)) )
))
(declare-fun lt!46142 () BalanceConc!1546)

(declare-datatypes ((LexerInterface!359 0))(
  ( (LexerInterfaceExt!356 (__x!2478 Int)) (Lexer!357) )
))
(declare-fun thiss!17480 () LexerInterface!359)

(declare-fun rulesProduceEachTokenIndividually!151 (LexerInterface!359 List!2714 BalanceConc!1546) Bool)

(assert (=> b!155902 (= res!71095 (rulesProduceEachTokenIndividually!151 thiss!17480 rules!1920 lt!46142))))

(declare-fun seqFromList!323 (List!2713) BalanceConc!1546)

(assert (=> b!155902 (= lt!46142 (seqFromList!323 tokens!465))))

(declare-fun b!155903 () Bool)

(declare-fun res!71099 () Bool)

(declare-fun e!93545 () Bool)

(assert (=> b!155903 (=> (not res!71099) (not e!93545))))

(declare-fun lt!46141 () List!2712)

(declare-fun lt!46137 () List!2712)

(declare-fun list!959 (BalanceConc!1544) List!2712)

(declare-fun seqFromList!324 (List!2712) BalanceConc!1544)

(assert (=> b!155903 (= res!71099 (= (list!959 (seqFromList!324 lt!46141)) lt!46137))))

(assert (=> b!155904 (= e!93538 (and tp!80302 tp!80307))))

(declare-fun b!155905 () Bool)

(declare-fun res!71096 () Bool)

(assert (=> b!155905 (=> (not res!71096) (not e!93537))))

(get-info :version)

(assert (=> b!155905 (= res!71096 ((_ is Cons!2703) tokens!465))))

(declare-fun b!155906 () Bool)

(assert (=> b!155906 (= e!93537 e!93545)))

(declare-fun res!71093 () Bool)

(assert (=> b!155906 (=> (not res!71093) (not e!93545))))

(assert (=> b!155906 (= res!71093 (= lt!46141 lt!46137))))

(declare-fun printWithSeparatorTokenWhenNeededRec!42 (LexerInterface!359 List!2714 BalanceConc!1546 Token!690 Int) BalanceConc!1544)

(assert (=> b!155906 (= lt!46137 (list!959 (printWithSeparatorTokenWhenNeededRec!42 thiss!17480 rules!1920 lt!46142 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!52 (LexerInterface!359 List!2714 List!2713 Token!690) List!2712)

(assert (=> b!155906 (= lt!46141 (printWithSeparatorTokenWhenNeededList!52 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!155907 () Bool)

(assert (=> b!155907 (= e!93545 (not true))))

(declare-fun lt!46139 () BalanceConc!1546)

(assert (=> b!155907 (= lt!46139 (seqFromList!323 (t!25377 tokens!465)))))

(declare-fun lt!46134 () List!2712)

(declare-fun lt!46135 () List!2712)

(declare-fun lt!46138 () List!2712)

(declare-fun lt!46140 () List!2712)

(declare-fun ++!590 (List!2712 List!2712) List!2712)

(assert (=> b!155907 (= (++!590 (++!590 lt!46138 lt!46140) lt!46135) (++!590 lt!46138 lt!46134))))

(declare-datatypes ((Unit!2130 0))(
  ( (Unit!2131) )
))
(declare-fun lt!46136 () Unit!2130)

(declare-fun lemmaConcatAssociativity!154 (List!2712 List!2712 List!2712) Unit!2130)

(assert (=> b!155907 (= lt!46136 (lemmaConcatAssociativity!154 lt!46138 lt!46140 lt!46135))))

(declare-fun charsOf!128 (Token!690) BalanceConc!1544)

(assert (=> b!155907 (= lt!46138 (list!959 (charsOf!128 (h!8100 tokens!465))))))

(assert (=> b!155907 (= lt!46134 (++!590 lt!46140 lt!46135))))

(assert (=> b!155907 (= lt!46135 (printWithSeparatorTokenWhenNeededList!52 thiss!17480 rules!1920 (t!25377 tokens!465) separatorToken!170))))

(assert (=> b!155907 (= lt!46140 (list!959 (charsOf!128 separatorToken!170)))))

(declare-fun b!155908 () Bool)

(declare-fun res!71094 () Bool)

(assert (=> b!155908 (=> (not res!71094) (not e!93535))))

(declare-fun rulesInvariant!325 (LexerInterface!359 List!2714) Bool)

(assert (=> b!155908 (= res!71094 (rulesInvariant!325 thiss!17480 rules!1920))))

(declare-fun e!93531 () Bool)

(declare-fun tp!80311 () Bool)

(declare-fun b!155909 () Bool)

(assert (=> b!155909 (= e!93531 (and tp!80311 (inv!3503 (tag!651 (rule!980 separatorToken!170))) (inv!3506 (transformation!473 (rule!980 separatorToken!170))) e!93544))))

(declare-fun b!155910 () Bool)

(declare-fun res!71097 () Bool)

(assert (=> b!155910 (=> (not res!71097) (not e!93537))))

(declare-fun rulesProduceIndividualToken!108 (LexerInterface!359 List!2714 Token!690) Bool)

(assert (=> b!155910 (= res!71097 (rulesProduceIndividualToken!108 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!155911 () Bool)

(declare-fun e!93541 () Bool)

(declare-fun tp!80306 () Bool)

(declare-fun inv!3507 (Token!690) Bool)

(assert (=> b!155911 (= e!93541 (and (inv!3507 (h!8100 tokens!465)) e!93530 tp!80306))))

(declare-fun e!93534 () Bool)

(declare-fun tp!80305 () Bool)

(declare-fun b!155912 () Bool)

(assert (=> b!155912 (= e!93534 (and (inv!21 (value!17796 separatorToken!170)) e!93531 tp!80305))))

(declare-fun res!71103 () Bool)

(assert (=> start!16714 (=> (not res!71103) (not e!93535))))

(assert (=> start!16714 (= res!71103 ((_ is Lexer!357) thiss!17480))))

(assert (=> start!16714 e!93535))

(assert (=> start!16714 true))

(assert (=> start!16714 e!93532))

(assert (=> start!16714 (and (inv!3507 separatorToken!170) e!93534)))

(assert (=> start!16714 e!93541))

(assert (= (and start!16714 res!71103) b!155899))

(assert (= (and b!155899 res!71101) b!155908))

(assert (= (and b!155908 res!71094) b!155902))

(assert (= (and b!155902 res!71095) b!155910))

(assert (= (and b!155910 res!71097) b!155892))

(assert (= (and b!155892 res!71102) b!155895))

(assert (= (and b!155895 res!71100) b!155900))

(assert (= (and b!155900 res!71098) b!155905))

(assert (= (and b!155905 res!71096) b!155906))

(assert (= (and b!155906 res!71093) b!155903))

(assert (= (and b!155903 res!71099) b!155907))

(assert (= b!155897 b!155904))

(assert (= b!155896 b!155897))

(assert (= (and start!16714 ((_ is Cons!2704) rules!1920)) b!155896))

(assert (= b!155909 b!155901))

(assert (= b!155912 b!155909))

(assert (= start!16714 b!155912))

(assert (= b!155894 b!155893))

(assert (= b!155898 b!155894))

(assert (= b!155911 b!155898))

(assert (= (and start!16714 ((_ is Cons!2703) tokens!465)) b!155911))

(declare-fun m!142093 () Bool)

(assert (=> b!155906 m!142093))

(assert (=> b!155906 m!142093))

(declare-fun m!142095 () Bool)

(assert (=> b!155906 m!142095))

(declare-fun m!142097 () Bool)

(assert (=> b!155906 m!142097))

(declare-fun m!142099 () Bool)

(assert (=> b!155908 m!142099))

(declare-fun m!142101 () Bool)

(assert (=> b!155907 m!142101))

(declare-fun m!142103 () Bool)

(assert (=> b!155907 m!142103))

(declare-fun m!142105 () Bool)

(assert (=> b!155907 m!142105))

(declare-fun m!142107 () Bool)

(assert (=> b!155907 m!142107))

(declare-fun m!142109 () Bool)

(assert (=> b!155907 m!142109))

(declare-fun m!142111 () Bool)

(assert (=> b!155907 m!142111))

(declare-fun m!142113 () Bool)

(assert (=> b!155907 m!142113))

(assert (=> b!155907 m!142107))

(declare-fun m!142115 () Bool)

(assert (=> b!155907 m!142115))

(assert (=> b!155907 m!142109))

(declare-fun m!142117 () Bool)

(assert (=> b!155907 m!142117))

(declare-fun m!142119 () Bool)

(assert (=> b!155907 m!142119))

(declare-fun m!142121 () Bool)

(assert (=> b!155907 m!142121))

(assert (=> b!155907 m!142119))

(declare-fun m!142123 () Bool)

(assert (=> b!155902 m!142123))

(declare-fun m!142125 () Bool)

(assert (=> b!155902 m!142125))

(declare-fun m!142127 () Bool)

(assert (=> b!155909 m!142127))

(declare-fun m!142129 () Bool)

(assert (=> b!155909 m!142129))

(declare-fun m!142131 () Bool)

(assert (=> b!155910 m!142131))

(declare-fun m!142133 () Bool)

(assert (=> b!155894 m!142133))

(declare-fun m!142135 () Bool)

(assert (=> b!155894 m!142135))

(declare-fun m!142137 () Bool)

(assert (=> b!155897 m!142137))

(declare-fun m!142139 () Bool)

(assert (=> b!155897 m!142139))

(declare-fun m!142141 () Bool)

(assert (=> b!155898 m!142141))

(declare-fun m!142143 () Bool)

(assert (=> start!16714 m!142143))

(declare-fun m!142145 () Bool)

(assert (=> b!155895 m!142145))

(declare-fun m!142147 () Bool)

(assert (=> b!155912 m!142147))

(declare-fun m!142149 () Bool)

(assert (=> b!155899 m!142149))

(declare-fun m!142151 () Bool)

(assert (=> b!155911 m!142151))

(declare-fun m!142153 () Bool)

(assert (=> b!155900 m!142153))

(declare-fun m!142155 () Bool)

(assert (=> b!155903 m!142155))

(assert (=> b!155903 m!142155))

(declare-fun m!142157 () Bool)

(assert (=> b!155903 m!142157))

(check-sat (not b!155911) (not b!155896) b_and!9341 (not b!155907) b_and!9343 (not b!155897) (not b!155900) (not b!155903) (not b!155906) (not start!16714) (not b_next!5809) (not b!155898) (not b_next!5801) (not b_next!5803) (not b!155912) (not b_next!5807) b_and!9349 (not b!155899) b_and!9347 (not b_next!5805) b_and!9345 (not b!155894) (not b_next!5811) (not b!155909) (not b!155895) (not b!155902) (not b!155910) (not b!155908) b_and!9351)
(check-sat b_and!9341 b_and!9343 (not b_next!5811) (not b_next!5809) (not b_next!5801) (not b_next!5803) (not b_next!5807) b_and!9349 b_and!9351 b_and!9347 (not b_next!5805) b_and!9345)
