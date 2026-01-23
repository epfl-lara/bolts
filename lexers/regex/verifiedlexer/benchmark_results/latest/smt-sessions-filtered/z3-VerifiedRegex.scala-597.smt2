; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18330 () Bool)

(assert start!18330)

(declare-fun b!169757 () Bool)

(declare-fun b_free!6521 () Bool)

(declare-fun b_next!6521 () Bool)

(assert (=> b!169757 (= b_free!6521 (not b_next!6521))))

(declare-fun tp!84009 () Bool)

(declare-fun b_and!11097 () Bool)

(assert (=> b!169757 (= tp!84009 b_and!11097)))

(declare-fun b_free!6523 () Bool)

(declare-fun b_next!6523 () Bool)

(assert (=> b!169757 (= b_free!6523 (not b_next!6523))))

(declare-fun tp!84013 () Bool)

(declare-fun b_and!11099 () Bool)

(assert (=> b!169757 (= tp!84013 b_and!11099)))

(declare-fun b!169777 () Bool)

(declare-fun b_free!6525 () Bool)

(declare-fun b_next!6525 () Bool)

(assert (=> b!169777 (= b_free!6525 (not b_next!6525))))

(declare-fun tp!84014 () Bool)

(declare-fun b_and!11101 () Bool)

(assert (=> b!169777 (= tp!84014 b_and!11101)))

(declare-fun b_free!6527 () Bool)

(declare-fun b_next!6527 () Bool)

(assert (=> b!169777 (= b_free!6527 (not b_next!6527))))

(declare-fun tp!84018 () Bool)

(declare-fun b_and!11103 () Bool)

(assert (=> b!169777 (= tp!84018 b_and!11103)))

(declare-fun b!169758 () Bool)

(declare-fun b_free!6529 () Bool)

(declare-fun b_next!6529 () Bool)

(assert (=> b!169758 (= b_free!6529 (not b_next!6529))))

(declare-fun tp!84007 () Bool)

(declare-fun b_and!11105 () Bool)

(assert (=> b!169758 (= tp!84007 b_and!11105)))

(declare-fun b_free!6531 () Bool)

(declare-fun b_next!6531 () Bool)

(assert (=> b!169758 (= b_free!6531 (not b_next!6531))))

(declare-fun tp!84011 () Bool)

(declare-fun b_and!11107 () Bool)

(assert (=> b!169758 (= tp!84011 b_and!11107)))

(declare-fun bs!16478 () Bool)

(declare-fun b!169768 () Bool)

(declare-fun b!169764 () Bool)

(assert (= bs!16478 (and b!169768 b!169764)))

(declare-fun lambda!4816 () Int)

(declare-fun lambda!4815 () Int)

(assert (=> bs!16478 (not (= lambda!4816 lambda!4815))))

(declare-fun b!169796 () Bool)

(declare-fun e!102742 () Bool)

(assert (=> b!169796 (= e!102742 true)))

(declare-fun b!169795 () Bool)

(declare-fun e!102741 () Bool)

(assert (=> b!169795 (= e!102741 e!102742)))

(declare-fun b!169794 () Bool)

(declare-fun e!102740 () Bool)

(assert (=> b!169794 (= e!102740 e!102741)))

(assert (=> b!169768 e!102740))

(assert (= b!169795 b!169796))

(assert (= b!169794 b!169795))

(declare-datatypes ((List!2901 0))(
  ( (Nil!2891) (Cons!2891 (h!8288 (_ BitVec 16)) (t!27027 List!2901)) )
))
(declare-datatypes ((TokenValue!539 0))(
  ( (FloatLiteralValue!1078 (text!4218 List!2901)) (TokenValueExt!538 (__x!2565 Int)) (Broken!2695 (value!19024 List!2901)) (Object!548) (End!539) (Def!539) (Underscore!539) (Match!539) (Else!539) (Error!539) (Case!539) (If!539) (Extends!539) (Abstract!539) (Class!539) (Val!539) (DelimiterValue!1078 (del!599 List!2901)) (KeywordValue!545 (value!19025 List!2901)) (CommentValue!1078 (value!19026 List!2901)) (WhitespaceValue!1078 (value!19027 List!2901)) (IndentationValue!539 (value!19028 List!2901)) (String!3774) (Int32!539) (Broken!2696 (value!19029 List!2901)) (Boolean!540) (Unit!2513) (OperatorValue!542 (op!599 List!2901)) (IdentifierValue!1078 (value!19030 List!2901)) (IdentifierValue!1079 (value!19031 List!2901)) (WhitespaceValue!1079 (value!19032 List!2901)) (True!1078) (False!1078) (Broken!2697 (value!19033 List!2901)) (Broken!2698 (value!19034 List!2901)) (True!1079) (RightBrace!539) (RightBracket!539) (Colon!539) (Null!539) (Comma!539) (LeftBracket!539) (False!1079) (LeftBrace!539) (ImaginaryLiteralValue!539 (text!4219 List!2901)) (StringLiteralValue!1617 (value!19035 List!2901)) (EOFValue!539 (value!19036 List!2901)) (IdentValue!539 (value!19037 List!2901)) (DelimiterValue!1079 (value!19038 List!2901)) (DedentValue!539 (value!19039 List!2901)) (NewLineValue!539 (value!19040 List!2901)) (IntegerValue!1617 (value!19041 (_ BitVec 32)) (text!4220 List!2901)) (IntegerValue!1618 (value!19042 Int) (text!4221 List!2901)) (Times!539) (Or!539) (Equal!539) (Minus!539) (Broken!2699 (value!19043 List!2901)) (And!539) (Div!539) (LessEqual!539) (Mod!539) (Concat!1280) (Not!539) (Plus!539) (SpaceValue!539 (value!19044 List!2901)) (IntegerValue!1619 (value!19045 Int) (text!4222 List!2901)) (StringLiteralValue!1618 (text!4223 List!2901)) (FloatLiteralValue!1079 (text!4224 List!2901)) (BytesLiteralValue!539 (value!19046 List!2901)) (CommentValue!1079 (value!19047 List!2901)) (StringLiteralValue!1619 (value!19048 List!2901)) (ErrorTokenValue!539 (msg!600 List!2901)) )
))
(declare-datatypes ((C!2404 0))(
  ( (C!2405 (val!1088 Int)) )
))
(declare-datatypes ((List!2902 0))(
  ( (Nil!2892) (Cons!2892 (h!8289 C!2404) (t!27028 List!2902)) )
))
(declare-datatypes ((IArray!1713 0))(
  ( (IArray!1714 (innerList!914 List!2902)) )
))
(declare-datatypes ((Conc!856 0))(
  ( (Node!856 (left!2205 Conc!856) (right!2535 Conc!856) (csize!1942 Int) (cheight!1067 Int)) (Leaf!1454 (xs!3451 IArray!1713) (csize!1943 Int)) (Empty!856) )
))
(declare-datatypes ((BalanceConc!1720 0))(
  ( (BalanceConc!1721 (c!33668 Conc!856)) )
))
(declare-datatypes ((TokenValueInjection!850 0))(
  ( (TokenValueInjection!851 (toValue!1180 Int) (toChars!1039 Int)) )
))
(declare-datatypes ((String!3775 0))(
  ( (String!3776 (value!19049 String)) )
))
(declare-datatypes ((Regex!741 0))(
  ( (ElementMatch!741 (c!33669 C!2404)) (Concat!1281 (regOne!1994 Regex!741) (regTwo!1994 Regex!741)) (EmptyExpr!741) (Star!741 (reg!1070 Regex!741)) (EmptyLang!741) (Union!741 (regOne!1995 Regex!741) (regTwo!1995 Regex!741)) )
))
(declare-datatypes ((Rule!834 0))(
  ( (Rule!835 (regex!517 Regex!741) (tag!695 String!3775) (isSeparator!517 Bool) (transformation!517 TokenValueInjection!850)) )
))
(declare-datatypes ((List!2903 0))(
  ( (Nil!2893) (Cons!2893 (h!8290 Rule!834) (t!27029 List!2903)) )
))
(declare-fun rules!1920 () List!2903)

(get-info :version)

(assert (= (and b!169768 ((_ is Cons!2893) rules!1920)) b!169794))

(declare-fun order!1561 () Int)

(declare-fun order!1563 () Int)

(declare-fun dynLambda!1085 (Int Int) Int)

(declare-fun dynLambda!1086 (Int Int) Int)

(assert (=> b!169796 (< (dynLambda!1085 order!1561 (toValue!1180 (transformation!517 (h!8290 rules!1920)))) (dynLambda!1086 order!1563 lambda!4816))))

(declare-fun order!1565 () Int)

(declare-fun dynLambda!1087 (Int Int) Int)

(assert (=> b!169796 (< (dynLambda!1087 order!1565 (toChars!1039 (transformation!517 (h!8290 rules!1920)))) (dynLambda!1086 order!1563 lambda!4816))))

(assert (=> b!169768 true))

(declare-fun e!102723 () Bool)

(assert (=> b!169757 (= e!102723 (and tp!84009 tp!84013))))

(declare-fun res!76742 () Bool)

(declare-fun e!102732 () Bool)

(assert (=> start!18330 (=> (not res!76742) (not e!102732))))

(declare-datatypes ((LexerInterface!403 0))(
  ( (LexerInterfaceExt!400 (__x!2566 Int)) (Lexer!401) )
))
(declare-fun thiss!17480 () LexerInterface!403)

(assert (=> start!18330 (= res!76742 ((_ is Lexer!401) thiss!17480))))

(assert (=> start!18330 e!102732))

(assert (=> start!18330 true))

(declare-fun e!102731 () Bool)

(assert (=> start!18330 e!102731))

(declare-datatypes ((Token!778 0))(
  ( (Token!779 (value!19050 TokenValue!539) (rule!1024 Rule!834) (size!2399 Int) (originalCharacters!560 List!2902)) )
))
(declare-fun separatorToken!170 () Token!778)

(declare-fun e!102717 () Bool)

(declare-fun inv!3718 (Token!778) Bool)

(assert (=> start!18330 (and (inv!3718 separatorToken!170) e!102717)))

(declare-fun e!102721 () Bool)

(assert (=> start!18330 e!102721))

(declare-fun e!102714 () Bool)

(assert (=> b!169758 (= e!102714 (and tp!84007 tp!84011))))

(declare-fun b!169759 () Bool)

(declare-fun e!102712 () Bool)

(assert (=> b!169759 (= e!102712 true)))

(declare-fun e!102725 () Bool)

(assert (=> b!169759 e!102725))

(declare-fun res!76736 () Bool)

(assert (=> b!169759 (=> (not res!76736) (not e!102725))))

(declare-datatypes ((tuple2!2786 0))(
  ( (tuple2!2787 (_1!1609 Token!778) (_2!1609 List!2902)) )
))
(declare-datatypes ((Option!308 0))(
  ( (None!307) (Some!307 (v!13744 tuple2!2786)) )
))
(declare-fun lt!53448 () Option!308)

(declare-fun isDefined!159 (Option!308) Bool)

(assert (=> b!169759 (= res!76736 (isDefined!159 lt!53448))))

(declare-fun lt!53454 () List!2902)

(declare-fun maxPrefix!133 (LexerInterface!403 List!2903 List!2902) Option!308)

(assert (=> b!169759 (= lt!53448 (maxPrefix!133 thiss!17480 rules!1920 lt!53454))))

(declare-fun e!102713 () Bool)

(declare-datatypes ((List!2904 0))(
  ( (Nil!2894) (Cons!2894 (h!8291 Token!778) (t!27030 List!2904)) )
))
(declare-fun tokens!465 () List!2904)

(declare-fun b!169760 () Bool)

(declare-fun tp!84012 () Bool)

(assert (=> b!169760 (= e!102721 (and (inv!3718 (h!8291 tokens!465)) e!102713 tp!84012))))

(declare-fun e!102728 () Bool)

(declare-fun e!102716 () Bool)

(declare-fun b!169761 () Bool)

(declare-fun tp!84015 () Bool)

(declare-fun inv!3715 (String!3775) Bool)

(declare-fun inv!3719 (TokenValueInjection!850) Bool)

(assert (=> b!169761 (= e!102728 (and tp!84015 (inv!3715 (tag!695 (h!8290 rules!1920))) (inv!3719 (transformation!517 (h!8290 rules!1920))) e!102716))))

(declare-fun b!169762 () Bool)

(declare-fun e!102722 () Bool)

(assert (=> b!169762 (= e!102732 e!102722)))

(declare-fun res!76747 () Bool)

(assert (=> b!169762 (=> (not res!76747) (not e!102722))))

(declare-datatypes ((IArray!1715 0))(
  ( (IArray!1716 (innerList!915 List!2904)) )
))
(declare-datatypes ((Conc!857 0))(
  ( (Node!857 (left!2206 Conc!857) (right!2536 Conc!857) (csize!1944 Int) (cheight!1068 Int)) (Leaf!1455 (xs!3452 IArray!1715) (csize!1945 Int)) (Empty!857) )
))
(declare-datatypes ((BalanceConc!1722 0))(
  ( (BalanceConc!1723 (c!33670 Conc!857)) )
))
(declare-fun lt!53447 () BalanceConc!1722)

(declare-fun rulesProduceEachTokenIndividually!195 (LexerInterface!403 List!2903 BalanceConc!1722) Bool)

(assert (=> b!169762 (= res!76747 (rulesProduceEachTokenIndividually!195 thiss!17480 rules!1920 lt!53447))))

(declare-fun seqFromList!411 (List!2904) BalanceConc!1722)

(assert (=> b!169762 (= lt!53447 (seqFromList!411 tokens!465))))

(declare-fun b!169763 () Bool)

(declare-fun res!76749 () Bool)

(assert (=> b!169763 (=> (not res!76749) (not e!102732))))

(declare-fun isEmpty!1221 (List!2903) Bool)

(assert (=> b!169763 (= res!76749 (not (isEmpty!1221 rules!1920)))))

(declare-fun res!76745 () Bool)

(assert (=> b!169764 (=> (not res!76745) (not e!102722))))

(declare-fun forall!563 (List!2904 Int) Bool)

(assert (=> b!169764 (= res!76745 (forall!563 tokens!465 lambda!4815))))

(declare-fun b!169765 () Bool)

(declare-fun res!76753 () Bool)

(assert (=> b!169765 (=> (not res!76753) (not e!102722))))

(assert (=> b!169765 (= res!76753 ((_ is Cons!2894) tokens!465))))

(declare-fun b!169766 () Bool)

(declare-fun res!76738 () Bool)

(assert (=> b!169766 (=> (not res!76738) (not e!102722))))

(declare-fun sepAndNonSepRulesDisjointChars!106 (List!2903 List!2903) Bool)

(assert (=> b!169766 (= res!76738 (sepAndNonSepRulesDisjointChars!106 rules!1920 rules!1920))))

(declare-fun lt!53460 () List!2902)

(declare-fun b!169767 () Bool)

(declare-fun lt!53457 () List!2902)

(declare-fun e!102727 () Bool)

(declare-fun ++!662 (List!2902 List!2902) List!2902)

(assert (=> b!169767 (= e!102727 (not (= lt!53460 (++!662 lt!53454 lt!53457))))))

(declare-fun e!102729 () Bool)

(assert (=> b!169768 (= e!102729 e!102712)))

(declare-fun res!76741 () Bool)

(assert (=> b!169768 (=> res!76741 e!102712)))

(declare-datatypes ((tuple2!2788 0))(
  ( (tuple2!2789 (_1!1610 Token!778) (_2!1610 BalanceConc!1720)) )
))
(declare-datatypes ((Option!309 0))(
  ( (None!308) (Some!308 (v!13745 tuple2!2788)) )
))
(declare-fun isDefined!160 (Option!309) Bool)

(declare-fun maxPrefixZipperSequence!96 (LexerInterface!403 List!2903 BalanceConc!1720) Option!309)

(declare-fun seqFromList!412 (List!2902) BalanceConc!1720)

(assert (=> b!169768 (= res!76741 (not (isDefined!160 (maxPrefixZipperSequence!96 thiss!17480 rules!1920 (seqFromList!412 (originalCharacters!560 (h!8291 tokens!465)))))))))

(declare-datatypes ((Unit!2514 0))(
  ( (Unit!2515) )
))
(declare-fun lt!53446 () Unit!2514)

(declare-fun forallContained!84 (List!2904 Int Token!778) Unit!2514)

(assert (=> b!169768 (= lt!53446 (forallContained!84 tokens!465 lambda!4816 (h!8291 tokens!465)))))

(assert (=> b!169768 (= lt!53454 (originalCharacters!560 (h!8291 tokens!465)))))

(declare-fun b!169769 () Bool)

(declare-fun res!76751 () Bool)

(assert (=> b!169769 (=> (not res!76751) (not e!102722))))

(assert (=> b!169769 (= res!76751 (isSeparator!517 (rule!1024 separatorToken!170)))))

(declare-fun b!169770 () Bool)

(declare-fun tp!84019 () Bool)

(declare-fun e!102730 () Bool)

(declare-fun inv!21 (TokenValue!539) Bool)

(assert (=> b!169770 (= e!102717 (and (inv!21 (value!19050 separatorToken!170)) e!102730 tp!84019))))

(declare-fun b!169771 () Bool)

(declare-fun res!76748 () Bool)

(assert (=> b!169771 (=> (not res!76748) (not e!102722))))

(declare-fun rulesProduceIndividualToken!152 (LexerInterface!403 List!2903 Token!778) Bool)

(assert (=> b!169771 (= res!76748 (rulesProduceIndividualToken!152 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!169772 () Bool)

(declare-fun res!76750 () Bool)

(declare-fun e!102711 () Bool)

(assert (=> b!169772 (=> res!76750 e!102711)))

(assert (=> b!169772 (= res!76750 e!102727)))

(declare-fun res!76740 () Bool)

(assert (=> b!169772 (=> (not res!76740) (not e!102727))))

(declare-fun lt!53458 () List!2902)

(assert (=> b!169772 (= res!76740 (not (= lt!53460 lt!53458)))))

(declare-fun tp!84010 () Bool)

(declare-fun b!169773 () Bool)

(assert (=> b!169773 (= e!102730 (and tp!84010 (inv!3715 (tag!695 (rule!1024 separatorToken!170))) (inv!3719 (transformation!517 (rule!1024 separatorToken!170))) e!102723))))

(declare-fun b!169774 () Bool)

(declare-fun get!790 (Option!308) tuple2!2786)

(assert (=> b!169774 (= e!102725 (= (_1!1609 (get!790 lt!53448)) (h!8291 tokens!465)))))

(declare-fun e!102715 () Bool)

(declare-fun b!169775 () Bool)

(declare-fun tp!84017 () Bool)

(assert (=> b!169775 (= e!102713 (and (inv!21 (value!19050 (h!8291 tokens!465))) e!102715 tp!84017))))

(declare-fun b!169776 () Bool)

(assert (=> b!169776 (= e!102711 e!102729)))

(declare-fun res!76744 () Bool)

(assert (=> b!169776 (=> res!76744 e!102729)))

(declare-fun lt!53455 () List!2902)

(declare-fun lt!53459 () List!2902)

(assert (=> b!169776 (= res!76744 (or (not (= lt!53455 lt!53459)) (not (= lt!53459 lt!53454)) (not (= lt!53455 lt!53454))))))

(declare-fun printList!87 (LexerInterface!403 List!2904) List!2902)

(assert (=> b!169776 (= lt!53459 (printList!87 thiss!17480 (Cons!2894 (h!8291 tokens!465) Nil!2894)))))

(declare-fun lt!53451 () BalanceConc!1720)

(declare-fun list!1051 (BalanceConc!1720) List!2902)

(assert (=> b!169776 (= lt!53455 (list!1051 lt!53451))))

(declare-fun lt!53452 () BalanceConc!1722)

(declare-fun printTailRec!97 (LexerInterface!403 BalanceConc!1722 Int BalanceConc!1720) BalanceConc!1720)

(assert (=> b!169776 (= lt!53451 (printTailRec!97 thiss!17480 lt!53452 0 (BalanceConc!1721 Empty!856)))))

(declare-fun print!134 (LexerInterface!403 BalanceConc!1722) BalanceConc!1720)

(assert (=> b!169776 (= lt!53451 (print!134 thiss!17480 lt!53452))))

(declare-fun singletonSeq!69 (Token!778) BalanceConc!1722)

(assert (=> b!169776 (= lt!53452 (singletonSeq!69 (h!8291 tokens!465)))))

(assert (=> b!169777 (= e!102716 (and tp!84014 tp!84018))))

(declare-fun b!169778 () Bool)

(declare-fun e!102720 () Bool)

(assert (=> b!169778 (= e!102722 e!102720)))

(declare-fun res!76737 () Bool)

(assert (=> b!169778 (=> (not res!76737) (not e!102720))))

(declare-fun lt!53445 () List!2902)

(assert (=> b!169778 (= res!76737 (= lt!53460 lt!53445))))

(declare-fun printWithSeparatorTokenWhenNeededRec!86 (LexerInterface!403 List!2903 BalanceConc!1722 Token!778 Int) BalanceConc!1720)

(assert (=> b!169778 (= lt!53445 (list!1051 (printWithSeparatorTokenWhenNeededRec!86 thiss!17480 rules!1920 lt!53447 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!96 (LexerInterface!403 List!2903 List!2904 Token!778) List!2902)

(assert (=> b!169778 (= lt!53460 (printWithSeparatorTokenWhenNeededList!96 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!169779 () Bool)

(declare-fun res!76754 () Bool)

(assert (=> b!169779 (=> res!76754 e!102729)))

(declare-fun isEmpty!1222 (BalanceConc!1722) Bool)

(declare-datatypes ((tuple2!2790 0))(
  ( (tuple2!2791 (_1!1611 BalanceConc!1722) (_2!1611 BalanceConc!1720)) )
))
(declare-fun lex!203 (LexerInterface!403 List!2903 BalanceConc!1720) tuple2!2790)

(assert (=> b!169779 (= res!76754 (isEmpty!1222 (_1!1611 (lex!203 thiss!17480 rules!1920 (seqFromList!412 lt!53454)))))))

(declare-fun b!169780 () Bool)

(declare-fun res!76746 () Bool)

(assert (=> b!169780 (=> (not res!76746) (not e!102720))))

(assert (=> b!169780 (= res!76746 (= (list!1051 (seqFromList!412 lt!53460)) lt!53445))))

(declare-fun b!169781 () Bool)

(declare-fun res!76752 () Bool)

(assert (=> b!169781 (=> (not res!76752) (not e!102732))))

(declare-fun rulesInvariant!369 (LexerInterface!403 List!2903) Bool)

(assert (=> b!169781 (= res!76752 (rulesInvariant!369 thiss!17480 rules!1920))))

(declare-fun b!169782 () Bool)

(declare-fun res!76743 () Bool)

(assert (=> b!169782 (=> res!76743 e!102729)))

(assert (=> b!169782 (= res!76743 (not (rulesProduceIndividualToken!152 thiss!17480 rules!1920 (h!8291 tokens!465))))))

(declare-fun b!169783 () Bool)

(declare-fun tp!84016 () Bool)

(assert (=> b!169783 (= e!102731 (and e!102728 tp!84016))))

(declare-fun tp!84008 () Bool)

(declare-fun b!169784 () Bool)

(assert (=> b!169784 (= e!102715 (and tp!84008 (inv!3715 (tag!695 (rule!1024 (h!8291 tokens!465)))) (inv!3719 (transformation!517 (rule!1024 (h!8291 tokens!465)))) e!102714))))

(declare-fun b!169785 () Bool)

(assert (=> b!169785 (= e!102720 (not e!102711))))

(declare-fun res!76739 () Bool)

(assert (=> b!169785 (=> res!76739 e!102711)))

(assert (=> b!169785 (= res!76739 (not (= lt!53457 (list!1051 (printWithSeparatorTokenWhenNeededRec!86 thiss!17480 rules!1920 (seqFromList!411 (t!27030 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!53456 () List!2902)

(assert (=> b!169785 (= lt!53456 lt!53458)))

(declare-fun lt!53450 () List!2902)

(assert (=> b!169785 (= lt!53458 (++!662 lt!53454 lt!53450))))

(declare-fun lt!53449 () List!2902)

(assert (=> b!169785 (= lt!53456 (++!662 (++!662 lt!53454 lt!53449) lt!53457))))

(declare-fun lt!53453 () Unit!2514)

(declare-fun lemmaConcatAssociativity!202 (List!2902 List!2902 List!2902) Unit!2514)

(assert (=> b!169785 (= lt!53453 (lemmaConcatAssociativity!202 lt!53454 lt!53449 lt!53457))))

(declare-fun charsOf!172 (Token!778) BalanceConc!1720)

(assert (=> b!169785 (= lt!53454 (list!1051 (charsOf!172 (h!8291 tokens!465))))))

(assert (=> b!169785 (= lt!53450 (++!662 lt!53449 lt!53457))))

(assert (=> b!169785 (= lt!53457 (printWithSeparatorTokenWhenNeededList!96 thiss!17480 rules!1920 (t!27030 tokens!465) separatorToken!170))))

(assert (=> b!169785 (= lt!53449 (list!1051 (charsOf!172 separatorToken!170)))))

(assert (= (and start!18330 res!76742) b!169763))

(assert (= (and b!169763 res!76749) b!169781))

(assert (= (and b!169781 res!76752) b!169762))

(assert (= (and b!169762 res!76747) b!169771))

(assert (= (and b!169771 res!76748) b!169769))

(assert (= (and b!169769 res!76751) b!169764))

(assert (= (and b!169764 res!76745) b!169766))

(assert (= (and b!169766 res!76738) b!169765))

(assert (= (and b!169765 res!76753) b!169778))

(assert (= (and b!169778 res!76737) b!169780))

(assert (= (and b!169780 res!76746) b!169785))

(assert (= (and b!169785 (not res!76739)) b!169772))

(assert (= (and b!169772 res!76740) b!169767))

(assert (= (and b!169772 (not res!76750)) b!169776))

(assert (= (and b!169776 (not res!76744)) b!169782))

(assert (= (and b!169782 (not res!76743)) b!169779))

(assert (= (and b!169779 (not res!76754)) b!169768))

(assert (= (and b!169768 (not res!76741)) b!169759))

(assert (= (and b!169759 res!76736) b!169774))

(assert (= b!169761 b!169777))

(assert (= b!169783 b!169761))

(assert (= (and start!18330 ((_ is Cons!2893) rules!1920)) b!169783))

(assert (= b!169773 b!169757))

(assert (= b!169770 b!169773))

(assert (= start!18330 b!169770))

(assert (= b!169784 b!169758))

(assert (= b!169775 b!169784))

(assert (= b!169760 b!169775))

(assert (= (and start!18330 ((_ is Cons!2894) tokens!465)) b!169760))

(declare-fun m!165431 () Bool)

(assert (=> b!169761 m!165431))

(declare-fun m!165433 () Bool)

(assert (=> b!169761 m!165433))

(declare-fun m!165435 () Bool)

(assert (=> b!169782 m!165435))

(declare-fun m!165437 () Bool)

(assert (=> b!169775 m!165437))

(declare-fun m!165439 () Bool)

(assert (=> b!169766 m!165439))

(declare-fun m!165441 () Bool)

(assert (=> b!169764 m!165441))

(declare-fun m!165443 () Bool)

(assert (=> b!169762 m!165443))

(declare-fun m!165445 () Bool)

(assert (=> b!169762 m!165445))

(declare-fun m!165447 () Bool)

(assert (=> b!169781 m!165447))

(declare-fun m!165449 () Bool)

(assert (=> b!169771 m!165449))

(declare-fun m!165451 () Bool)

(assert (=> b!169778 m!165451))

(assert (=> b!169778 m!165451))

(declare-fun m!165453 () Bool)

(assert (=> b!169778 m!165453))

(declare-fun m!165455 () Bool)

(assert (=> b!169778 m!165455))

(declare-fun m!165457 () Bool)

(assert (=> b!169759 m!165457))

(declare-fun m!165459 () Bool)

(assert (=> b!169759 m!165459))

(declare-fun m!165461 () Bool)

(assert (=> b!169773 m!165461))

(declare-fun m!165463 () Bool)

(assert (=> b!169773 m!165463))

(declare-fun m!165465 () Bool)

(assert (=> b!169767 m!165465))

(declare-fun m!165467 () Bool)

(assert (=> b!169784 m!165467))

(declare-fun m!165469 () Bool)

(assert (=> b!169784 m!165469))

(declare-fun m!165471 () Bool)

(assert (=> b!169785 m!165471))

(declare-fun m!165473 () Bool)

(assert (=> b!169785 m!165473))

(declare-fun m!165475 () Bool)

(assert (=> b!169785 m!165475))

(declare-fun m!165477 () Bool)

(assert (=> b!169785 m!165477))

(assert (=> b!169785 m!165475))

(declare-fun m!165479 () Bool)

(assert (=> b!169785 m!165479))

(assert (=> b!169785 m!165479))

(declare-fun m!165481 () Bool)

(assert (=> b!169785 m!165481))

(declare-fun m!165483 () Bool)

(assert (=> b!169785 m!165483))

(declare-fun m!165485 () Bool)

(assert (=> b!169785 m!165485))

(declare-fun m!165487 () Bool)

(assert (=> b!169785 m!165487))

(declare-fun m!165489 () Bool)

(assert (=> b!169785 m!165489))

(declare-fun m!165491 () Bool)

(assert (=> b!169785 m!165491))

(assert (=> b!169785 m!165483))

(assert (=> b!169785 m!165487))

(declare-fun m!165493 () Bool)

(assert (=> b!169785 m!165493))

(assert (=> b!169785 m!165485))

(declare-fun m!165495 () Bool)

(assert (=> b!169785 m!165495))

(declare-fun m!165497 () Bool)

(assert (=> b!169770 m!165497))

(declare-fun m!165499 () Bool)

(assert (=> b!169768 m!165499))

(assert (=> b!169768 m!165499))

(declare-fun m!165501 () Bool)

(assert (=> b!169768 m!165501))

(assert (=> b!169768 m!165501))

(declare-fun m!165503 () Bool)

(assert (=> b!169768 m!165503))

(declare-fun m!165505 () Bool)

(assert (=> b!169768 m!165505))

(declare-fun m!165507 () Bool)

(assert (=> b!169776 m!165507))

(declare-fun m!165509 () Bool)

(assert (=> b!169776 m!165509))

(declare-fun m!165511 () Bool)

(assert (=> b!169776 m!165511))

(declare-fun m!165513 () Bool)

(assert (=> b!169776 m!165513))

(declare-fun m!165515 () Bool)

(assert (=> b!169776 m!165515))

(declare-fun m!165517 () Bool)

(assert (=> b!169763 m!165517))

(declare-fun m!165519 () Bool)

(assert (=> b!169780 m!165519))

(assert (=> b!169780 m!165519))

(declare-fun m!165521 () Bool)

(assert (=> b!169780 m!165521))

(declare-fun m!165523 () Bool)

(assert (=> b!169779 m!165523))

(assert (=> b!169779 m!165523))

(declare-fun m!165525 () Bool)

(assert (=> b!169779 m!165525))

(declare-fun m!165527 () Bool)

(assert (=> b!169779 m!165527))

(declare-fun m!165529 () Bool)

(assert (=> start!18330 m!165529))

(declare-fun m!165531 () Bool)

(assert (=> b!169760 m!165531))

(declare-fun m!165533 () Bool)

(assert (=> b!169774 m!165533))

(check-sat (not start!18330) (not b!169771) b_and!11107 (not b!169759) (not b_next!6527) (not b!169775) b_and!11103 b_and!11097 (not b!169768) (not b!169764) (not b!169794) (not b!169783) (not b!169782) b_and!11099 (not b!169767) (not b!169784) b_and!11105 (not b!169770) (not b!169773) (not b!169766) b_and!11101 (not b!169776) (not b_next!6529) (not b!169779) (not b!169761) (not b!169781) (not b_next!6523) (not b!169774) (not b!169763) (not b!169780) (not b_next!6531) (not b!169760) (not b_next!6525) (not b_next!6521) (not b!169785) (not b!169762) (not b!169778))
(check-sat b_and!11107 b_and!11105 (not b_next!6527) b_and!11101 (not b_next!6529) b_and!11103 (not b_next!6523) (not b_next!6531) b_and!11097 (not b_next!6525) (not b_next!6521) b_and!11099)
