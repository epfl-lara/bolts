; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255594 () Bool)

(assert start!255594)

(declare-fun b!2627759 () Bool)

(declare-fun b_free!73885 () Bool)

(declare-fun b_next!74589 () Bool)

(assert (=> b!2627759 (= b_free!73885 (not b_next!74589))))

(declare-fun tp!833081 () Bool)

(declare-fun b_and!192443 () Bool)

(assert (=> b!2627759 (= tp!833081 b_and!192443)))

(declare-fun b_free!73887 () Bool)

(declare-fun b_next!74591 () Bool)

(assert (=> b!2627759 (= b_free!73887 (not b_next!74591))))

(declare-fun tp!833078 () Bool)

(declare-fun b_and!192445 () Bool)

(assert (=> b!2627759 (= tp!833078 b_and!192445)))

(declare-fun b!2627761 () Bool)

(declare-fun b_free!73889 () Bool)

(declare-fun b_next!74593 () Bool)

(assert (=> b!2627761 (= b_free!73889 (not b_next!74593))))

(declare-fun tp!833084 () Bool)

(declare-fun b_and!192447 () Bool)

(assert (=> b!2627761 (= tp!833084 b_and!192447)))

(declare-fun b_free!73891 () Bool)

(declare-fun b_next!74595 () Bool)

(assert (=> b!2627761 (= b_free!73891 (not b_next!74595))))

(declare-fun tp!833080 () Bool)

(declare-fun b_and!192449 () Bool)

(assert (=> b!2627761 (= tp!833080 b_and!192449)))

(declare-fun bs!475641 () Bool)

(declare-fun b!2627773 () Bool)

(declare-fun b!2627763 () Bool)

(assert (= bs!475641 (and b!2627773 b!2627763)))

(declare-fun lambda!98398 () Int)

(declare-fun lambda!98397 () Int)

(assert (=> bs!475641 (not (= lambda!98398 lambda!98397))))

(declare-fun b!2627788 () Bool)

(declare-fun e!1657760 () Bool)

(assert (=> b!2627788 (= e!1657760 true)))

(declare-fun b!2627787 () Bool)

(declare-fun e!1657759 () Bool)

(assert (=> b!2627787 (= e!1657759 e!1657760)))

(declare-fun b!2627786 () Bool)

(declare-fun e!1657758 () Bool)

(assert (=> b!2627786 (= e!1657758 e!1657759)))

(assert (=> b!2627773 e!1657758))

(assert (= b!2627787 b!2627788))

(assert (= b!2627786 b!2627787))

(declare-datatypes ((List!30433 0))(
  ( (Nil!30333) (Cons!30333 (h!35753 (_ BitVec 16)) (t!216066 List!30433)) )
))
(declare-datatypes ((C!15644 0))(
  ( (C!15645 (val!9756 Int)) )
))
(declare-datatypes ((String!33988 0))(
  ( (String!33989 (value!148650 String)) )
))
(declare-datatypes ((Regex!7743 0))(
  ( (ElementMatch!7743 (c!422748 C!15644)) (Concat!12564 (regOne!15998 Regex!7743) (regTwo!15998 Regex!7743)) (EmptyExpr!7743) (Star!7743 (reg!8072 Regex!7743)) (EmptyLang!7743) (Union!7743 (regOne!15999 Regex!7743) (regTwo!15999 Regex!7743)) )
))
(declare-datatypes ((TokenValue!4821 0))(
  ( (FloatLiteralValue!9642 (text!34192 List!30433)) (TokenValueExt!4820 (__x!19475 Int)) (Broken!24105 (value!148651 List!30433)) (Object!4920) (End!4821) (Def!4821) (Underscore!4821) (Match!4821) (Else!4821) (Error!4821) (Case!4821) (If!4821) (Extends!4821) (Abstract!4821) (Class!4821) (Val!4821) (DelimiterValue!9642 (del!4881 List!30433)) (KeywordValue!4827 (value!148652 List!30433)) (CommentValue!9642 (value!148653 List!30433)) (WhitespaceValue!9642 (value!148654 List!30433)) (IndentationValue!4821 (value!148655 List!30433)) (String!33990) (Int32!4821) (Broken!24106 (value!148656 List!30433)) (Boolean!4822) (Unit!44382) (OperatorValue!4824 (op!4881 List!30433)) (IdentifierValue!9642 (value!148657 List!30433)) (IdentifierValue!9643 (value!148658 List!30433)) (WhitespaceValue!9643 (value!148659 List!30433)) (True!9642) (False!9642) (Broken!24107 (value!148660 List!30433)) (Broken!24108 (value!148661 List!30433)) (True!9643) (RightBrace!4821) (RightBracket!4821) (Colon!4821) (Null!4821) (Comma!4821) (LeftBracket!4821) (False!9643) (LeftBrace!4821) (ImaginaryLiteralValue!4821 (text!34193 List!30433)) (StringLiteralValue!14463 (value!148662 List!30433)) (EOFValue!4821 (value!148663 List!30433)) (IdentValue!4821 (value!148664 List!30433)) (DelimiterValue!9643 (value!148665 List!30433)) (DedentValue!4821 (value!148666 List!30433)) (NewLineValue!4821 (value!148667 List!30433)) (IntegerValue!14463 (value!148668 (_ BitVec 32)) (text!34194 List!30433)) (IntegerValue!14464 (value!148669 Int) (text!34195 List!30433)) (Times!4821) (Or!4821) (Equal!4821) (Minus!4821) (Broken!24109 (value!148670 List!30433)) (And!4821) (Div!4821) (LessEqual!4821) (Mod!4821) (Concat!12565) (Not!4821) (Plus!4821) (SpaceValue!4821 (value!148671 List!30433)) (IntegerValue!14465 (value!148672 Int) (text!34196 List!30433)) (StringLiteralValue!14464 (text!34197 List!30433)) (FloatLiteralValue!9643 (text!34198 List!30433)) (BytesLiteralValue!4821 (value!148673 List!30433)) (CommentValue!9643 (value!148674 List!30433)) (StringLiteralValue!14465 (value!148675 List!30433)) (ErrorTokenValue!4821 (msg!4882 List!30433)) )
))
(declare-datatypes ((List!30434 0))(
  ( (Nil!30334) (Cons!30334 (h!35754 C!15644) (t!216067 List!30434)) )
))
(declare-datatypes ((IArray!18885 0))(
  ( (IArray!18886 (innerList!9500 List!30434)) )
))
(declare-datatypes ((Conc!9440 0))(
  ( (Node!9440 (left!23383 Conc!9440) (right!23713 Conc!9440) (csize!19110 Int) (cheight!9651 Int)) (Leaf!14480 (xs!12440 IArray!18885) (csize!19111 Int)) (Empty!9440) )
))
(declare-datatypes ((BalanceConc!18494 0))(
  ( (BalanceConc!18495 (c!422749 Conc!9440)) )
))
(declare-datatypes ((TokenValueInjection!9082 0))(
  ( (TokenValueInjection!9083 (toValue!6513 Int) (toChars!6372 Int)) )
))
(declare-datatypes ((Rule!8998 0))(
  ( (Rule!8999 (regex!4599 Regex!7743) (tag!5093 String!33988) (isSeparator!4599 Bool) (transformation!4599 TokenValueInjection!9082)) )
))
(declare-datatypes ((List!30435 0))(
  ( (Nil!30335) (Cons!30335 (h!35755 Rule!8998) (t!216068 List!30435)) )
))
(declare-fun rules!1726 () List!30435)

(get-info :version)

(assert (= (and b!2627773 ((_ is Cons!30335) rules!1726)) b!2627786))

(declare-fun order!16295 () Int)

(declare-fun order!16297 () Int)

(declare-fun dynLambda!12939 (Int Int) Int)

(declare-fun dynLambda!12940 (Int Int) Int)

(assert (=> b!2627788 (< (dynLambda!12939 order!16295 (toValue!6513 (transformation!4599 (h!35755 rules!1726)))) (dynLambda!12940 order!16297 lambda!98398))))

(declare-fun order!16299 () Int)

(declare-fun dynLambda!12941 (Int Int) Int)

(assert (=> b!2627788 (< (dynLambda!12941 order!16299 (toChars!6372 (transformation!4599 (h!35755 rules!1726)))) (dynLambda!12940 order!16297 lambda!98398))))

(assert (=> b!2627773 true))

(declare-fun e!1657745 () Bool)

(assert (=> b!2627759 (= e!1657745 (and tp!833081 tp!833078))))

(declare-fun b!2627760 () Bool)

(declare-fun e!1657746 () Bool)

(declare-datatypes ((Token!8668 0))(
  ( (Token!8669 (value!148676 TokenValue!4821) (rule!6981 Rule!8998) (size!23480 Int) (originalCharacters!5365 List!30434)) )
))
(declare-datatypes ((List!30436 0))(
  ( (Nil!30336) (Cons!30336 (h!35756 Token!8668) (t!216069 List!30436)) )
))
(declare-datatypes ((IArray!18887 0))(
  ( (IArray!18888 (innerList!9501 List!30436)) )
))
(declare-datatypes ((Conc!9441 0))(
  ( (Node!9441 (left!23384 Conc!9441) (right!23714 Conc!9441) (csize!19112 Int) (cheight!9652 Int)) (Leaf!14481 (xs!12441 IArray!18887) (csize!19113 Int)) (Empty!9441) )
))
(declare-datatypes ((BalanceConc!18496 0))(
  ( (BalanceConc!18497 (c!422750 Conc!9441)) )
))
(declare-fun v!6381 () BalanceConc!18496)

(declare-fun tp!833079 () Bool)

(declare-fun inv!41109 (Conc!9441) Bool)

(assert (=> b!2627760 (= e!1657746 (and (inv!41109 (c!422750 v!6381)) tp!833079))))

(declare-fun e!1657738 () Bool)

(assert (=> b!2627761 (= e!1657738 (and tp!833084 tp!833080))))

(declare-fun res!1106034 () Bool)

(declare-fun e!1657749 () Bool)

(assert (=> b!2627763 (=> (not res!1106034) (not e!1657749))))

(declare-fun forall!6331 (BalanceConc!18496 Int) Bool)

(assert (=> b!2627763 (= res!1106034 (forall!6331 v!6381 lambda!98397))))

(declare-fun b!2627764 () Bool)

(declare-fun res!1106042 () Bool)

(declare-fun e!1657744 () Bool)

(assert (=> b!2627764 (=> res!1106042 e!1657744)))

(declare-fun lt!924202 () List!30436)

(declare-fun lt!924206 () Token!8668)

(declare-fun contains!5700 (List!30436 Token!8668) Bool)

(assert (=> b!2627764 (= res!1106042 (not (contains!5700 lt!924202 lt!924206)))))

(declare-fun b!2627765 () Bool)

(declare-fun e!1657748 () Bool)

(assert (=> b!2627765 (= e!1657748 (not e!1657744))))

(declare-fun res!1106041 () Bool)

(assert (=> b!2627765 (=> res!1106041 e!1657744)))

(declare-fun contains!5701 (BalanceConc!18496 Token!8668) Bool)

(assert (=> b!2627765 (= res!1106041 (not (contains!5701 v!6381 lt!924206)))))

(declare-fun from!862 () Int)

(declare-fun apply!7180 (BalanceConc!18496 Int) Token!8668)

(assert (=> b!2627765 (= lt!924206 (apply!7180 v!6381 from!862))))

(declare-fun lt!924208 () List!30436)

(declare-fun tail!4236 (List!30436) List!30436)

(declare-fun drop!1595 (List!30436 Int) List!30436)

(assert (=> b!2627765 (= (tail!4236 lt!924208) (drop!1595 lt!924202 (+ 1 from!862)))))

(declare-datatypes ((Unit!44383 0))(
  ( (Unit!44384) )
))
(declare-fun lt!924209 () Unit!44383)

(declare-fun lemmaDropTail!784 (List!30436 Int) Unit!44383)

(assert (=> b!2627765 (= lt!924209 (lemmaDropTail!784 lt!924202 from!862))))

(declare-fun head!5998 (List!30436) Token!8668)

(declare-fun apply!7181 (List!30436 Int) Token!8668)

(assert (=> b!2627765 (= (head!5998 lt!924208) (apply!7181 lt!924202 from!862))))

(assert (=> b!2627765 (= lt!924208 (drop!1595 lt!924202 from!862))))

(declare-fun lt!924204 () Unit!44383)

(declare-fun lemmaDropApply!810 (List!30436 Int) Unit!44383)

(assert (=> b!2627765 (= lt!924204 (lemmaDropApply!810 lt!924202 from!862))))

(declare-fun b!2627766 () Bool)

(declare-fun separatorToken!156 () Token!8668)

(declare-fun e!1657739 () Bool)

(declare-fun tp!833086 () Bool)

(declare-fun inv!41104 (String!33988) Bool)

(declare-fun inv!41110 (TokenValueInjection!9082) Bool)

(assert (=> b!2627766 (= e!1657739 (and tp!833086 (inv!41104 (tag!5093 (rule!6981 separatorToken!156))) (inv!41110 (transformation!4599 (rule!6981 separatorToken!156))) e!1657745))))

(declare-fun b!2627767 () Bool)

(declare-fun res!1106036 () Bool)

(assert (=> b!2627767 (=> (not res!1106036) (not e!1657749))))

(declare-datatypes ((LexerInterface!4196 0))(
  ( (LexerInterfaceExt!4193 (__x!19476 Int)) (Lexer!4194) )
))
(declare-fun thiss!14197 () LexerInterface!4196)

(declare-fun rulesInvariant!3696 (LexerInterface!4196 List!30435) Bool)

(assert (=> b!2627767 (= res!1106036 (rulesInvariant!3696 thiss!14197 rules!1726))))

(declare-fun b!2627768 () Bool)

(declare-fun res!1106039 () Bool)

(assert (=> b!2627768 (=> (not res!1106039) (not e!1657749))))

(declare-fun isEmpty!17332 (List!30435) Bool)

(assert (=> b!2627768 (= res!1106039 (not (isEmpty!17332 rules!1726)))))

(declare-fun b!2627769 () Bool)

(assert (=> b!2627769 (= e!1657749 e!1657748)))

(declare-fun res!1106043 () Bool)

(assert (=> b!2627769 (=> (not res!1106043) (not e!1657748))))

(declare-fun lt!924203 () Int)

(assert (=> b!2627769 (= res!1106043 (< from!862 lt!924203))))

(declare-fun lt!924210 () Unit!44383)

(declare-fun lemmaContentSubsetPreservesForall!268 (List!30436 List!30436 Int) Unit!44383)

(declare-fun dropList!902 (BalanceConc!18496 Int) List!30436)

(assert (=> b!2627769 (= lt!924210 (lemmaContentSubsetPreservesForall!268 lt!924202 (dropList!902 v!6381 from!862) lambda!98397))))

(declare-fun list!11397 (BalanceConc!18496) List!30436)

(assert (=> b!2627769 (= lt!924202 (list!11397 v!6381))))

(declare-fun b!2627770 () Bool)

(declare-fun res!1106045 () Bool)

(assert (=> b!2627770 (=> (not res!1106045) (not e!1657749))))

(declare-fun rulesProduceIndividualToken!1908 (LexerInterface!4196 List!30435 Token!8668) Bool)

(assert (=> b!2627770 (= res!1106045 (rulesProduceIndividualToken!1908 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2627771 () Bool)

(declare-fun res!1106035 () Bool)

(assert (=> b!2627771 (=> (not res!1106035) (not e!1657749))))

(declare-fun sepAndNonSepRulesDisjointChars!1172 (List!30435 List!30435) Bool)

(assert (=> b!2627771 (= res!1106035 (sepAndNonSepRulesDisjointChars!1172 rules!1726 rules!1726))))

(declare-fun res!1106038 () Bool)

(declare-fun e!1657751 () Bool)

(assert (=> start!255594 (=> (not res!1106038) (not e!1657751))))

(assert (=> start!255594 (= res!1106038 (and ((_ is Lexer!4194) thiss!14197) (>= from!862 0)))))

(assert (=> start!255594 e!1657751))

(assert (=> start!255594 true))

(declare-fun e!1657750 () Bool)

(assert (=> start!255594 e!1657750))

(declare-fun e!1657742 () Bool)

(declare-fun inv!41111 (Token!8668) Bool)

(assert (=> start!255594 (and (inv!41111 separatorToken!156) e!1657742)))

(declare-fun inv!41112 (BalanceConc!18496) Bool)

(assert (=> start!255594 (and (inv!41112 v!6381) e!1657746)))

(declare-fun b!2627762 () Bool)

(declare-fun tp!833082 () Bool)

(declare-fun inv!21 (TokenValue!4821) Bool)

(assert (=> b!2627762 (= e!1657742 (and (inv!21 (value!148676 separatorToken!156)) e!1657739 tp!833082))))

(declare-fun e!1657741 () Bool)

(declare-fun tp!833085 () Bool)

(declare-fun b!2627772 () Bool)

(assert (=> b!2627772 (= e!1657741 (and tp!833085 (inv!41104 (tag!5093 (h!35755 rules!1726))) (inv!41110 (transformation!4599 (h!35755 rules!1726))) e!1657738))))

(declare-fun lt!924205 () Bool)

(declare-datatypes ((tuple2!29892 0))(
  ( (tuple2!29893 (_1!17488 Token!8668) (_2!17488 BalanceConc!18494)) )
))
(declare-datatypes ((Option!5990 0))(
  ( (None!5989) (Some!5989 (v!32376 tuple2!29892)) )
))
(declare-fun lt!924211 () Option!5990)

(assert (=> b!2627773 (= e!1657744 (or (and (not lt!924205) (= (_1!17488 (v!32376 lt!924211)) lt!924206)) (and (not lt!924205) (not (= (_1!17488 (v!32376 lt!924211)) lt!924206))) (not ((_ is None!5989) lt!924211)) (<= 0 from!862)))))

(assert (=> b!2627773 (= lt!924205 (not ((_ is Some!5989) lt!924211)))))

(declare-fun maxPrefixZipperSequence!926 (LexerInterface!4196 List!30435 BalanceConc!18494) Option!5990)

(declare-fun ++!7385 (BalanceConc!18494 BalanceConc!18494) BalanceConc!18494)

(declare-fun charsOf!2890 (Token!8668) BalanceConc!18494)

(declare-fun printWithSeparatorTokenWhenNeededRec!474 (LexerInterface!4196 List!30435 BalanceConc!18496 Token!8668 Int) BalanceConc!18494)

(assert (=> b!2627773 (= lt!924211 (maxPrefixZipperSequence!926 thiss!14197 rules!1726 (++!7385 (charsOf!2890 lt!924206) (printWithSeparatorTokenWhenNeededRec!474 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!924207 () Unit!44383)

(declare-fun forallContained!955 (List!30436 Int Token!8668) Unit!44383)

(assert (=> b!2627773 (= lt!924207 (forallContained!955 lt!924202 lambda!98398 lt!924206))))

(declare-fun b!2627774 () Bool)

(declare-fun tp!833083 () Bool)

(assert (=> b!2627774 (= e!1657750 (and e!1657741 tp!833083))))

(declare-fun b!2627775 () Bool)

(declare-fun res!1106040 () Bool)

(assert (=> b!2627775 (=> (not res!1106040) (not e!1657749))))

(declare-fun rulesProduceEachTokenIndividually!1016 (LexerInterface!4196 List!30435 BalanceConc!18496) Bool)

(assert (=> b!2627775 (= res!1106040 (rulesProduceEachTokenIndividually!1016 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2627776 () Bool)

(declare-fun res!1106037 () Bool)

(assert (=> b!2627776 (=> (not res!1106037) (not e!1657749))))

(assert (=> b!2627776 (= res!1106037 (isSeparator!4599 (rule!6981 separatorToken!156)))))

(declare-fun b!2627777 () Bool)

(assert (=> b!2627777 (= e!1657751 e!1657749)))

(declare-fun res!1106044 () Bool)

(assert (=> b!2627777 (=> (not res!1106044) (not e!1657749))))

(assert (=> b!2627777 (= res!1106044 (<= from!862 lt!924203))))

(declare-fun size!23481 (BalanceConc!18496) Int)

(assert (=> b!2627777 (= lt!924203 (size!23481 v!6381))))

(assert (= (and start!255594 res!1106038) b!2627777))

(assert (= (and b!2627777 res!1106044) b!2627768))

(assert (= (and b!2627768 res!1106039) b!2627767))

(assert (= (and b!2627767 res!1106036) b!2627775))

(assert (= (and b!2627775 res!1106040) b!2627770))

(assert (= (and b!2627770 res!1106045) b!2627776))

(assert (= (and b!2627776 res!1106037) b!2627763))

(assert (= (and b!2627763 res!1106034) b!2627771))

(assert (= (and b!2627771 res!1106035) b!2627769))

(assert (= (and b!2627769 res!1106043) b!2627765))

(assert (= (and b!2627765 (not res!1106041)) b!2627764))

(assert (= (and b!2627764 (not res!1106042)) b!2627773))

(assert (= b!2627772 b!2627761))

(assert (= b!2627774 b!2627772))

(assert (= (and start!255594 ((_ is Cons!30335) rules!1726)) b!2627774))

(assert (= b!2627766 b!2627759))

(assert (= b!2627762 b!2627766))

(assert (= start!255594 b!2627762))

(assert (= start!255594 b!2627760))

(declare-fun m!2970859 () Bool)

(assert (=> b!2627768 m!2970859))

(declare-fun m!2970861 () Bool)

(assert (=> b!2627766 m!2970861))

(declare-fun m!2970863 () Bool)

(assert (=> b!2627766 m!2970863))

(declare-fun m!2970865 () Bool)

(assert (=> b!2627777 m!2970865))

(declare-fun m!2970867 () Bool)

(assert (=> b!2627770 m!2970867))

(declare-fun m!2970869 () Bool)

(assert (=> b!2627773 m!2970869))

(declare-fun m!2970871 () Bool)

(assert (=> b!2627773 m!2970871))

(declare-fun m!2970873 () Bool)

(assert (=> b!2627773 m!2970873))

(declare-fun m!2970875 () Bool)

(assert (=> b!2627773 m!2970875))

(declare-fun m!2970877 () Bool)

(assert (=> b!2627773 m!2970877))

(assert (=> b!2627773 m!2970869))

(assert (=> b!2627773 m!2970871))

(assert (=> b!2627773 m!2970873))

(declare-fun m!2970879 () Bool)

(assert (=> start!255594 m!2970879))

(declare-fun m!2970881 () Bool)

(assert (=> start!255594 m!2970881))

(declare-fun m!2970883 () Bool)

(assert (=> b!2627764 m!2970883))

(declare-fun m!2970885 () Bool)

(assert (=> b!2627760 m!2970885))

(declare-fun m!2970887 () Bool)

(assert (=> b!2627775 m!2970887))

(declare-fun m!2970889 () Bool)

(assert (=> b!2627767 m!2970889))

(declare-fun m!2970891 () Bool)

(assert (=> b!2627765 m!2970891))

(declare-fun m!2970893 () Bool)

(assert (=> b!2627765 m!2970893))

(declare-fun m!2970895 () Bool)

(assert (=> b!2627765 m!2970895))

(declare-fun m!2970897 () Bool)

(assert (=> b!2627765 m!2970897))

(declare-fun m!2970899 () Bool)

(assert (=> b!2627765 m!2970899))

(declare-fun m!2970901 () Bool)

(assert (=> b!2627765 m!2970901))

(declare-fun m!2970903 () Bool)

(assert (=> b!2627765 m!2970903))

(declare-fun m!2970905 () Bool)

(assert (=> b!2627765 m!2970905))

(declare-fun m!2970907 () Bool)

(assert (=> b!2627765 m!2970907))

(declare-fun m!2970909 () Bool)

(assert (=> b!2627763 m!2970909))

(declare-fun m!2970911 () Bool)

(assert (=> b!2627771 m!2970911))

(declare-fun m!2970913 () Bool)

(assert (=> b!2627762 m!2970913))

(declare-fun m!2970915 () Bool)

(assert (=> b!2627769 m!2970915))

(assert (=> b!2627769 m!2970915))

(declare-fun m!2970917 () Bool)

(assert (=> b!2627769 m!2970917))

(declare-fun m!2970919 () Bool)

(assert (=> b!2627769 m!2970919))

(declare-fun m!2970921 () Bool)

(assert (=> b!2627772 m!2970921))

(declare-fun m!2970923 () Bool)

(assert (=> b!2627772 m!2970923))

(check-sat (not b_next!74591) (not b!2627765) (not b!2627774) (not start!255594) (not b_next!74589) b_and!192447 (not b!2627766) (not b!2627760) (not b!2627764) (not b!2627771) (not b!2627768) (not b!2627772) (not b!2627770) (not b!2627763) (not b!2627786) (not b!2627769) b_and!192443 (not b!2627767) (not b!2627777) b_and!192445 b_and!192449 (not b!2627775) (not b!2627762) (not b_next!74595) (not b!2627773) (not b_next!74593))
(check-sat (not b_next!74591) b_and!192443 (not b_next!74589) b_and!192447 (not b_next!74595) (not b_next!74593) b_and!192445 b_and!192449)
