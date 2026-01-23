; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16962 () Bool)

(assert start!16962)

(declare-fun b!157705 () Bool)

(declare-fun b_free!5881 () Bool)

(declare-fun b_next!5881 () Bool)

(assert (=> b!157705 (= b_free!5881 (not b_next!5881))))

(declare-fun tp!80806 () Bool)

(declare-fun b_and!9569 () Bool)

(assert (=> b!157705 (= tp!80806 b_and!9569)))

(declare-fun b_free!5883 () Bool)

(declare-fun b_next!5883 () Bool)

(assert (=> b!157705 (= b_free!5883 (not b_next!5883))))

(declare-fun tp!80807 () Bool)

(declare-fun b_and!9571 () Bool)

(assert (=> b!157705 (= tp!80807 b_and!9571)))

(declare-fun b!157693 () Bool)

(declare-fun b_free!5885 () Bool)

(declare-fun b_next!5885 () Bool)

(assert (=> b!157693 (= b_free!5885 (not b_next!5885))))

(declare-fun tp!80814 () Bool)

(declare-fun b_and!9573 () Bool)

(assert (=> b!157693 (= tp!80814 b_and!9573)))

(declare-fun b_free!5887 () Bool)

(declare-fun b_next!5887 () Bool)

(assert (=> b!157693 (= b_free!5887 (not b_next!5887))))

(declare-fun tp!80811 () Bool)

(declare-fun b_and!9575 () Bool)

(assert (=> b!157693 (= tp!80811 b_and!9575)))

(declare-fun b!157697 () Bool)

(declare-fun b_free!5889 () Bool)

(declare-fun b_next!5889 () Bool)

(assert (=> b!157697 (= b_free!5889 (not b_next!5889))))

(declare-fun tp!80815 () Bool)

(declare-fun b_and!9577 () Bool)

(assert (=> b!157697 (= tp!80815 b_and!9577)))

(declare-fun b_free!5891 () Bool)

(declare-fun b_next!5891 () Bool)

(assert (=> b!157697 (= b_free!5891 (not b_next!5891))))

(declare-fun tp!80809 () Bool)

(declare-fun b_and!9579 () Bool)

(assert (=> b!157697 (= tp!80809 b_and!9579)))

(declare-fun b!157692 () Bool)

(declare-fun res!71750 () Bool)

(declare-fun e!94680 () Bool)

(assert (=> b!157692 (=> (not res!71750) (not e!94680))))

(declare-datatypes ((List!2729 0))(
  ( (Nil!2719) (Cons!2719 (h!8116 (_ BitVec 16)) (t!25593 List!2729)) )
))
(declare-datatypes ((TokenValue!499 0))(
  ( (FloatLiteralValue!998 (text!3938 List!2729)) (TokenValueExt!498 (__x!2485 Int)) (Broken!2495 (value!17884 List!2729)) (Object!508) (End!499) (Def!499) (Underscore!499) (Match!499) (Else!499) (Error!499) (Case!499) (If!499) (Extends!499) (Abstract!499) (Class!499) (Val!499) (DelimiterValue!998 (del!559 List!2729)) (KeywordValue!505 (value!17885 List!2729)) (CommentValue!998 (value!17886 List!2729)) (WhitespaceValue!998 (value!17887 List!2729)) (IndentationValue!499 (value!17888 List!2729)) (String!3574) (Int32!499) (Broken!2496 (value!17889 List!2729)) (Boolean!500) (Unit!2177) (OperatorValue!502 (op!559 List!2729)) (IdentifierValue!998 (value!17890 List!2729)) (IdentifierValue!999 (value!17891 List!2729)) (WhitespaceValue!999 (value!17892 List!2729)) (True!998) (False!998) (Broken!2497 (value!17893 List!2729)) (Broken!2498 (value!17894 List!2729)) (True!999) (RightBrace!499) (RightBracket!499) (Colon!499) (Null!499) (Comma!499) (LeftBracket!499) (False!999) (LeftBrace!499) (ImaginaryLiteralValue!499 (text!3939 List!2729)) (StringLiteralValue!1497 (value!17895 List!2729)) (EOFValue!499 (value!17896 List!2729)) (IdentValue!499 (value!17897 List!2729)) (DelimiterValue!999 (value!17898 List!2729)) (DedentValue!499 (value!17899 List!2729)) (NewLineValue!499 (value!17900 List!2729)) (IntegerValue!1497 (value!17901 (_ BitVec 32)) (text!3940 List!2729)) (IntegerValue!1498 (value!17902 Int) (text!3941 List!2729)) (Times!499) (Or!499) (Equal!499) (Minus!499) (Broken!2499 (value!17903 List!2729)) (And!499) (Div!499) (LessEqual!499) (Mod!499) (Concat!1200) (Not!499) (Plus!499) (SpaceValue!499 (value!17904 List!2729)) (IntegerValue!1499 (value!17905 Int) (text!3942 List!2729)) (StringLiteralValue!1498 (text!3943 List!2729)) (FloatLiteralValue!999 (text!3944 List!2729)) (BytesLiteralValue!499 (value!17906 List!2729)) (CommentValue!999 (value!17907 List!2729)) (StringLiteralValue!1499 (value!17908 List!2729)) (ErrorTokenValue!499 (msg!560 List!2729)) )
))
(declare-datatypes ((C!2324 0))(
  ( (C!2325 (val!1048 Int)) )
))
(declare-datatypes ((List!2730 0))(
  ( (Nil!2720) (Cons!2720 (h!8117 C!2324) (t!25594 List!2730)) )
))
(declare-datatypes ((IArray!1553 0))(
  ( (IArray!1554 (innerList!834 List!2730)) )
))
(declare-datatypes ((Conc!776 0))(
  ( (Node!776 (left!2053 Conc!776) (right!2383 Conc!776) (csize!1782 Int) (cheight!987 Int)) (Leaf!1354 (xs!3371 IArray!1553) (csize!1783 Int)) (Empty!776) )
))
(declare-datatypes ((BalanceConc!1560 0))(
  ( (BalanceConc!1561 (c!31667 Conc!776)) )
))
(declare-datatypes ((TokenValueInjection!770 0))(
  ( (TokenValueInjection!771 (toValue!1124 Int) (toChars!983 Int)) )
))
(declare-datatypes ((String!3575 0))(
  ( (String!3576 (value!17909 String)) )
))
(declare-datatypes ((Regex!701 0))(
  ( (ElementMatch!701 (c!31668 C!2324)) (Concat!1201 (regOne!1914 Regex!701) (regTwo!1914 Regex!701)) (EmptyExpr!701) (Star!701 (reg!1030 Regex!701)) (EmptyLang!701) (Union!701 (regOne!1915 Regex!701) (regTwo!1915 Regex!701)) )
))
(declare-datatypes ((Rule!754 0))(
  ( (Rule!755 (regex!477 Regex!701) (tag!655 String!3575) (isSeparator!477 Bool) (transformation!477 TokenValueInjection!770)) )
))
(declare-datatypes ((Token!698 0))(
  ( (Token!699 (value!17910 TokenValue!499) (rule!984 Rule!754) (size!2298 Int) (originalCharacters!520 List!2730)) )
))
(declare-fun separatorToken!170 () Token!698)

(assert (=> b!157692 (= res!71750 (isSeparator!477 (rule!984 separatorToken!170)))))

(declare-fun res!71744 () Bool)

(declare-fun e!94675 () Bool)

(assert (=> start!16962 (=> (not res!71744) (not e!94675))))

(declare-datatypes ((LexerInterface!363 0))(
  ( (LexerInterfaceExt!360 (__x!2486 Int)) (Lexer!361) )
))
(declare-fun thiss!17480 () LexerInterface!363)

(get-info :version)

(assert (=> start!16962 (= res!71744 ((_ is Lexer!361) thiss!17480))))

(assert (=> start!16962 e!94675))

(assert (=> start!16962 true))

(declare-fun e!94681 () Bool)

(assert (=> start!16962 e!94681))

(declare-fun e!94676 () Bool)

(declare-fun inv!3530 (Token!698) Bool)

(assert (=> start!16962 (and (inv!3530 separatorToken!170) e!94676)))

(declare-fun e!94683 () Bool)

(assert (=> start!16962 e!94683))

(declare-fun e!94678 () Bool)

(assert (=> b!157693 (= e!94678 (and tp!80814 tp!80811))))

(declare-fun b!157694 () Bool)

(declare-fun e!94684 () Bool)

(assert (=> b!157694 (= e!94680 e!94684)))

(declare-fun res!71746 () Bool)

(assert (=> b!157694 (=> (not res!71746) (not e!94684))))

(declare-fun lt!46999 () List!2730)

(declare-fun lt!47000 () List!2730)

(assert (=> b!157694 (= res!71746 (= lt!46999 lt!47000))))

(declare-datatypes ((List!2731 0))(
  ( (Nil!2721) (Cons!2721 (h!8118 Token!698) (t!25595 List!2731)) )
))
(declare-datatypes ((IArray!1555 0))(
  ( (IArray!1556 (innerList!835 List!2731)) )
))
(declare-datatypes ((Conc!777 0))(
  ( (Node!777 (left!2054 Conc!777) (right!2384 Conc!777) (csize!1784 Int) (cheight!988 Int)) (Leaf!1355 (xs!3372 IArray!1555) (csize!1785 Int)) (Empty!777) )
))
(declare-datatypes ((BalanceConc!1562 0))(
  ( (BalanceConc!1563 (c!31669 Conc!777)) )
))
(declare-fun lt!47004 () BalanceConc!1562)

(declare-datatypes ((List!2732 0))(
  ( (Nil!2722) (Cons!2722 (h!8119 Rule!754) (t!25596 List!2732)) )
))
(declare-fun rules!1920 () List!2732)

(declare-fun list!971 (BalanceConc!1560) List!2730)

(declare-fun printWithSeparatorTokenWhenNeededRec!46 (LexerInterface!363 List!2732 BalanceConc!1562 Token!698 Int) BalanceConc!1560)

(assert (=> b!157694 (= lt!47000 (list!971 (printWithSeparatorTokenWhenNeededRec!46 thiss!17480 rules!1920 lt!47004 separatorToken!170 0)))))

(declare-fun tokens!465 () List!2731)

(declare-fun printWithSeparatorTokenWhenNeededList!56 (LexerInterface!363 List!2732 List!2731 Token!698) List!2730)

(assert (=> b!157694 (= lt!46999 (printWithSeparatorTokenWhenNeededList!56 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!157695 () Bool)

(declare-fun res!71742 () Bool)

(assert (=> b!157695 (=> (not res!71742) (not e!94680))))

(assert (=> b!157695 (= res!71742 ((_ is Cons!2721) tokens!465))))

(declare-fun tp!80805 () Bool)

(declare-fun b!157696 () Bool)

(declare-fun e!94691 () Bool)

(declare-fun inv!21 (TokenValue!499) Bool)

(assert (=> b!157696 (= e!94676 (and (inv!21 (value!17910 separatorToken!170)) e!94691 tp!80805))))

(declare-fun e!94689 () Bool)

(assert (=> b!157697 (= e!94689 (and tp!80815 tp!80809))))

(declare-fun b!157698 () Bool)

(declare-fun res!71749 () Bool)

(assert (=> b!157698 (=> (not res!71749) (not e!94675))))

(declare-fun isEmpty!1092 (List!2732) Bool)

(assert (=> b!157698 (= res!71749 (not (isEmpty!1092 rules!1920)))))

(declare-fun e!94682 () Bool)

(declare-fun e!94688 () Bool)

(declare-fun tp!80810 () Bool)

(declare-fun b!157699 () Bool)

(assert (=> b!157699 (= e!94682 (and (inv!21 (value!17910 (h!8118 tokens!465))) e!94688 tp!80810))))

(declare-fun b!157700 () Bool)

(declare-fun res!71752 () Bool)

(assert (=> b!157700 (=> (not res!71752) (not e!94675))))

(declare-fun rulesInvariant!329 (LexerInterface!363 List!2732) Bool)

(assert (=> b!157700 (= res!71752 (rulesInvariant!329 thiss!17480 rules!1920))))

(declare-fun b!157701 () Bool)

(assert (=> b!157701 (= e!94684 (not true))))

(declare-fun lt!46996 () Int)

(declare-fun size!2299 (BalanceConc!1562) Int)

(declare-fun seqFromList!331 (List!2731) BalanceConc!1562)

(assert (=> b!157701 (= lt!46996 (size!2299 (seqFromList!331 (t!25595 tokens!465))))))

(declare-fun lt!47001 () List!2730)

(declare-fun lt!47002 () List!2730)

(declare-fun lt!47003 () List!2730)

(declare-fun lt!46997 () List!2730)

(declare-fun ++!598 (List!2730 List!2730) List!2730)

(assert (=> b!157701 (= (++!598 (++!598 lt!47002 lt!47003) lt!46997) (++!598 lt!47002 lt!47001))))

(declare-datatypes ((Unit!2178 0))(
  ( (Unit!2179) )
))
(declare-fun lt!46998 () Unit!2178)

(declare-fun lemmaConcatAssociativity!158 (List!2730 List!2730 List!2730) Unit!2178)

(assert (=> b!157701 (= lt!46998 (lemmaConcatAssociativity!158 lt!47002 lt!47003 lt!46997))))

(declare-fun charsOf!132 (Token!698) BalanceConc!1560)

(assert (=> b!157701 (= lt!47002 (list!971 (charsOf!132 (h!8118 tokens!465))))))

(assert (=> b!157701 (= lt!47001 (++!598 lt!47003 lt!46997))))

(assert (=> b!157701 (= lt!46997 (printWithSeparatorTokenWhenNeededList!56 thiss!17480 rules!1920 (t!25595 tokens!465) separatorToken!170))))

(assert (=> b!157701 (= lt!47003 (list!971 (charsOf!132 separatorToken!170)))))

(declare-fun tp!80803 () Bool)

(declare-fun b!157702 () Bool)

(declare-fun inv!3527 (String!3575) Bool)

(declare-fun inv!3531 (TokenValueInjection!770) Bool)

(assert (=> b!157702 (= e!94688 (and tp!80803 (inv!3527 (tag!655 (rule!984 (h!8118 tokens!465)))) (inv!3531 (transformation!477 (rule!984 (h!8118 tokens!465)))) e!94678))))

(declare-fun b!157703 () Bool)

(declare-fun res!71751 () Bool)

(assert (=> b!157703 (=> (not res!71751) (not e!94684))))

(declare-fun seqFromList!332 (List!2730) BalanceConc!1560)

(assert (=> b!157703 (= res!71751 (= (list!971 (seqFromList!332 lt!46999)) lt!47000))))

(declare-fun b!157704 () Bool)

(declare-fun res!71747 () Bool)

(assert (=> b!157704 (=> (not res!71747) (not e!94680))))

(declare-fun lambda!4226 () Int)

(declare-fun forall!487 (List!2731 Int) Bool)

(assert (=> b!157704 (= res!71747 (forall!487 tokens!465 lambda!4226))))

(declare-fun e!94677 () Bool)

(assert (=> b!157705 (= e!94677 (and tp!80806 tp!80807))))

(declare-fun b!157706 () Bool)

(assert (=> b!157706 (= e!94675 e!94680)))

(declare-fun res!71748 () Bool)

(assert (=> b!157706 (=> (not res!71748) (not e!94680))))

(declare-fun rulesProduceEachTokenIndividually!155 (LexerInterface!363 List!2732 BalanceConc!1562) Bool)

(assert (=> b!157706 (= res!71748 (rulesProduceEachTokenIndividually!155 thiss!17480 rules!1920 lt!47004))))

(assert (=> b!157706 (= lt!47004 (seqFromList!331 tokens!465))))

(declare-fun b!157707 () Bool)

(declare-fun res!71745 () Bool)

(assert (=> b!157707 (=> (not res!71745) (not e!94680))))

(declare-fun sepAndNonSepRulesDisjointChars!66 (List!2732 List!2732) Bool)

(assert (=> b!157707 (= res!71745 (sepAndNonSepRulesDisjointChars!66 rules!1920 rules!1920))))

(declare-fun b!157708 () Bool)

(declare-fun e!94679 () Bool)

(declare-fun tp!80804 () Bool)

(assert (=> b!157708 (= e!94681 (and e!94679 tp!80804))))

(declare-fun b!157709 () Bool)

(declare-fun tp!80813 () Bool)

(assert (=> b!157709 (= e!94679 (and tp!80813 (inv!3527 (tag!655 (h!8119 rules!1920))) (inv!3531 (transformation!477 (h!8119 rules!1920))) e!94677))))

(declare-fun b!157710 () Bool)

(declare-fun res!71743 () Bool)

(assert (=> b!157710 (=> (not res!71743) (not e!94680))))

(declare-fun rulesProduceIndividualToken!112 (LexerInterface!363 List!2732 Token!698) Bool)

(assert (=> b!157710 (= res!71743 (rulesProduceIndividualToken!112 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!80812 () Bool)

(declare-fun b!157711 () Bool)

(assert (=> b!157711 (= e!94691 (and tp!80812 (inv!3527 (tag!655 (rule!984 separatorToken!170))) (inv!3531 (transformation!477 (rule!984 separatorToken!170))) e!94689))))

(declare-fun tp!80808 () Bool)

(declare-fun b!157712 () Bool)

(assert (=> b!157712 (= e!94683 (and (inv!3530 (h!8118 tokens!465)) e!94682 tp!80808))))

(assert (= (and start!16962 res!71744) b!157698))

(assert (= (and b!157698 res!71749) b!157700))

(assert (= (and b!157700 res!71752) b!157706))

(assert (= (and b!157706 res!71748) b!157710))

(assert (= (and b!157710 res!71743) b!157692))

(assert (= (and b!157692 res!71750) b!157704))

(assert (= (and b!157704 res!71747) b!157707))

(assert (= (and b!157707 res!71745) b!157695))

(assert (= (and b!157695 res!71742) b!157694))

(assert (= (and b!157694 res!71746) b!157703))

(assert (= (and b!157703 res!71751) b!157701))

(assert (= b!157709 b!157705))

(assert (= b!157708 b!157709))

(assert (= (and start!16962 ((_ is Cons!2722) rules!1920)) b!157708))

(assert (= b!157711 b!157697))

(assert (= b!157696 b!157711))

(assert (= start!16962 b!157696))

(assert (= b!157702 b!157693))

(assert (= b!157699 b!157702))

(assert (= b!157712 b!157699))

(assert (= (and start!16962 ((_ is Cons!2721) tokens!465)) b!157712))

(declare-fun m!145103 () Bool)

(assert (=> b!157706 m!145103))

(declare-fun m!145105 () Bool)

(assert (=> b!157706 m!145105))

(declare-fun m!145107 () Bool)

(assert (=> b!157704 m!145107))

(declare-fun m!145109 () Bool)

(assert (=> b!157698 m!145109))

(declare-fun m!145111 () Bool)

(assert (=> b!157709 m!145111))

(declare-fun m!145113 () Bool)

(assert (=> b!157709 m!145113))

(declare-fun m!145115 () Bool)

(assert (=> b!157711 m!145115))

(declare-fun m!145117 () Bool)

(assert (=> b!157711 m!145117))

(declare-fun m!145119 () Bool)

(assert (=> b!157703 m!145119))

(assert (=> b!157703 m!145119))

(declare-fun m!145121 () Bool)

(assert (=> b!157703 m!145121))

(declare-fun m!145123 () Bool)

(assert (=> b!157696 m!145123))

(declare-fun m!145125 () Bool)

(assert (=> b!157699 m!145125))

(declare-fun m!145127 () Bool)

(assert (=> b!157694 m!145127))

(assert (=> b!157694 m!145127))

(declare-fun m!145129 () Bool)

(assert (=> b!157694 m!145129))

(declare-fun m!145131 () Bool)

(assert (=> b!157694 m!145131))

(declare-fun m!145133 () Bool)

(assert (=> b!157700 m!145133))

(declare-fun m!145135 () Bool)

(assert (=> b!157712 m!145135))

(declare-fun m!145137 () Bool)

(assert (=> b!157707 m!145137))

(declare-fun m!145139 () Bool)

(assert (=> b!157701 m!145139))

(declare-fun m!145141 () Bool)

(assert (=> b!157701 m!145141))

(declare-fun m!145143 () Bool)

(assert (=> b!157701 m!145143))

(declare-fun m!145145 () Bool)

(assert (=> b!157701 m!145145))

(declare-fun m!145147 () Bool)

(assert (=> b!157701 m!145147))

(declare-fun m!145149 () Bool)

(assert (=> b!157701 m!145149))

(declare-fun m!145151 () Bool)

(assert (=> b!157701 m!145151))

(declare-fun m!145153 () Bool)

(assert (=> b!157701 m!145153))

(assert (=> b!157701 m!145147))

(declare-fun m!145155 () Bool)

(assert (=> b!157701 m!145155))

(declare-fun m!145157 () Bool)

(assert (=> b!157701 m!145157))

(declare-fun m!145159 () Bool)

(assert (=> b!157701 m!145159))

(assert (=> b!157701 m!145157))

(assert (=> b!157701 m!145139))

(declare-fun m!145161 () Bool)

(assert (=> b!157701 m!145161))

(assert (=> b!157701 m!145151))

(declare-fun m!145163 () Bool)

(assert (=> b!157702 m!145163))

(declare-fun m!145165 () Bool)

(assert (=> b!157702 m!145165))

(declare-fun m!145167 () Bool)

(assert (=> start!16962 m!145167))

(declare-fun m!145169 () Bool)

(assert (=> b!157710 m!145169))

(check-sat b_and!9569 (not b_next!5889) (not b_next!5887) (not b!157707) b_and!9579 (not start!16962) (not b!157698) (not b_next!5885) b_and!9571 (not b!157708) (not b_next!5883) (not b!157701) b_and!9577 (not b!157700) (not b!157703) (not b!157711) (not b!157699) (not b_next!5891) (not b!157696) (not b!157712) (not b!157710) (not b!157694) (not b!157702) b_and!9575 (not b!157704) (not b_next!5881) (not b!157706) b_and!9573 (not b!157709))
(check-sat b_and!9569 (not b_next!5883) (not b_next!5889) (not b_next!5887) b_and!9577 (not b_next!5891) b_and!9579 b_and!9575 (not b_next!5885) (not b_next!5881) b_and!9571 b_and!9573)
