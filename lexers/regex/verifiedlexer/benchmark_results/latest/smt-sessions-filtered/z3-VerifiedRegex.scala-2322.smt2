; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115018 () Bool)

(assert start!115018)

(declare-fun b!1301876 () Bool)

(declare-fun b_free!30987 () Bool)

(declare-fun b_next!31691 () Bool)

(assert (=> b!1301876 (= b_free!30987 (not b_next!31691))))

(declare-fun tp!379918 () Bool)

(declare-fun b_and!86839 () Bool)

(assert (=> b!1301876 (= tp!379918 b_and!86839)))

(declare-fun b_free!30989 () Bool)

(declare-fun b_next!31693 () Bool)

(assert (=> b!1301876 (= b_free!30989 (not b_next!31693))))

(declare-fun tp!379919 () Bool)

(declare-fun b_and!86841 () Bool)

(assert (=> b!1301876 (= tp!379919 b_and!86841)))

(declare-fun b!1301894 () Bool)

(declare-fun b_free!30991 () Bool)

(declare-fun b_next!31695 () Bool)

(assert (=> b!1301894 (= b_free!30991 (not b_next!31695))))

(declare-fun tp!379916 () Bool)

(declare-fun b_and!86843 () Bool)

(assert (=> b!1301894 (= tp!379916 b_and!86843)))

(declare-fun b_free!30993 () Bool)

(declare-fun b_next!31697 () Bool)

(assert (=> b!1301894 (= b_free!30993 (not b_next!31697))))

(declare-fun tp!379920 () Bool)

(declare-fun b_and!86845 () Bool)

(assert (=> b!1301894 (= tp!379920 b_and!86845)))

(declare-fun b!1301870 () Bool)

(declare-fun b_free!30995 () Bool)

(declare-fun b_next!31699 () Bool)

(assert (=> b!1301870 (= b_free!30995 (not b_next!31699))))

(declare-fun tp!379928 () Bool)

(declare-fun b_and!86847 () Bool)

(assert (=> b!1301870 (= tp!379928 b_and!86847)))

(declare-fun b_free!30997 () Bool)

(declare-fun b_next!31701 () Bool)

(assert (=> b!1301870 (= b_free!30997 (not b_next!31701))))

(declare-fun tp!379922 () Bool)

(declare-fun b_and!86849 () Bool)

(assert (=> b!1301870 (= tp!379922 b_and!86849)))

(declare-fun b!1301886 () Bool)

(assert (=> b!1301886 true))

(assert (=> b!1301886 true))

(declare-fun b!1301874 () Bool)

(assert (=> b!1301874 true))

(declare-fun e!834685 () Bool)

(declare-fun e!834675 () Bool)

(declare-fun tp!379930 () Bool)

(declare-fun b!1301865 () Bool)

(declare-datatypes ((C!7424 0))(
  ( (C!7425 (val!4272 Int)) )
))
(declare-datatypes ((List!13121 0))(
  ( (Nil!13055) (Cons!13055 (h!18456 C!7424) (t!117682 List!13121)) )
))
(declare-datatypes ((IArray!8575 0))(
  ( (IArray!8576 (innerList!4345 List!13121)) )
))
(declare-datatypes ((List!13122 0))(
  ( (Nil!13056) (Cons!13056 (h!18457 (_ BitVec 16)) (t!117683 List!13122)) )
))
(declare-datatypes ((Conc!4285 0))(
  ( (Node!4285 (left!11225 Conc!4285) (right!11555 Conc!4285) (csize!8800 Int) (cheight!4496 Int)) (Leaf!6608 (xs!7000 IArray!8575) (csize!8801 Int)) (Empty!4285) )
))
(declare-datatypes ((BalanceConc!8510 0))(
  ( (BalanceConc!8511 (c!214231 Conc!4285)) )
))
(declare-datatypes ((TokenValue!2343 0))(
  ( (FloatLiteralValue!4686 (text!16846 List!13122)) (TokenValueExt!2342 (__x!8515 Int)) (Broken!11715 (value!73817 List!13122)) (Object!2408) (End!2343) (Def!2343) (Underscore!2343) (Match!2343) (Else!2343) (Error!2343) (Case!2343) (If!2343) (Extends!2343) (Abstract!2343) (Class!2343) (Val!2343) (DelimiterValue!4686 (del!2403 List!13122)) (KeywordValue!2349 (value!73818 List!13122)) (CommentValue!4686 (value!73819 List!13122)) (WhitespaceValue!4686 (value!73820 List!13122)) (IndentationValue!2343 (value!73821 List!13122)) (String!15950) (Int32!2343) (Broken!11716 (value!73822 List!13122)) (Boolean!2344) (Unit!19179) (OperatorValue!2346 (op!2403 List!13122)) (IdentifierValue!4686 (value!73823 List!13122)) (IdentifierValue!4687 (value!73824 List!13122)) (WhitespaceValue!4687 (value!73825 List!13122)) (True!4686) (False!4686) (Broken!11717 (value!73826 List!13122)) (Broken!11718 (value!73827 List!13122)) (True!4687) (RightBrace!2343) (RightBracket!2343) (Colon!2343) (Null!2343) (Comma!2343) (LeftBracket!2343) (False!4687) (LeftBrace!2343) (ImaginaryLiteralValue!2343 (text!16847 List!13122)) (StringLiteralValue!7029 (value!73828 List!13122)) (EOFValue!2343 (value!73829 List!13122)) (IdentValue!2343 (value!73830 List!13122)) (DelimiterValue!4687 (value!73831 List!13122)) (DedentValue!2343 (value!73832 List!13122)) (NewLineValue!2343 (value!73833 List!13122)) (IntegerValue!7029 (value!73834 (_ BitVec 32)) (text!16848 List!13122)) (IntegerValue!7030 (value!73835 Int) (text!16849 List!13122)) (Times!2343) (Or!2343) (Equal!2343) (Minus!2343) (Broken!11719 (value!73836 List!13122)) (And!2343) (Div!2343) (LessEqual!2343) (Mod!2343) (Concat!5910) (Not!2343) (Plus!2343) (SpaceValue!2343 (value!73837 List!13122)) (IntegerValue!7031 (value!73838 Int) (text!16850 List!13122)) (StringLiteralValue!7030 (text!16851 List!13122)) (FloatLiteralValue!4687 (text!16852 List!13122)) (BytesLiteralValue!2343 (value!73839 List!13122)) (CommentValue!4687 (value!73840 List!13122)) (StringLiteralValue!7031 (value!73841 List!13122)) (ErrorTokenValue!2343 (msg!2404 List!13122)) )
))
(declare-datatypes ((Regex!3567 0))(
  ( (ElementMatch!3567 (c!214232 C!7424)) (Concat!5911 (regOne!7646 Regex!3567) (regTwo!7646 Regex!3567)) (EmptyExpr!3567) (Star!3567 (reg!3896 Regex!3567)) (EmptyLang!3567) (Union!3567 (regOne!7647 Regex!3567) (regTwo!7647 Regex!3567)) )
))
(declare-datatypes ((String!15951 0))(
  ( (String!15952 (value!73842 String)) )
))
(declare-datatypes ((TokenValueInjection!4346 0))(
  ( (TokenValueInjection!4347 (toValue!3468 Int) (toChars!3327 Int)) )
))
(declare-datatypes ((Rule!4306 0))(
  ( (Rule!4307 (regex!2253 Regex!3567) (tag!2515 String!15951) (isSeparator!2253 Bool) (transformation!2253 TokenValueInjection!4346)) )
))
(declare-datatypes ((Token!4168 0))(
  ( (Token!4169 (value!73843 TokenValue!2343) (rule!3992 Rule!4306) (size!10672 Int) (originalCharacters!3115 List!13121)) )
))
(declare-fun t2!34 () Token!4168)

(declare-fun inv!21 (TokenValue!2343) Bool)

(assert (=> b!1301865 (= e!834675 (and (inv!21 (value!73843 t2!34)) e!834685 tp!379930))))

(declare-fun b!1301866 () Bool)

(declare-fun res!583133 () Bool)

(declare-fun e!834677 () Bool)

(assert (=> b!1301866 (=> res!583133 e!834677)))

(declare-fun lt!428044 () List!13121)

(declare-fun lt!428035 () C!7424)

(declare-fun contains!2193 (List!13121 C!7424) Bool)

(assert (=> b!1301866 (= res!583133 (not (contains!2193 lt!428044 lt!428035)))))

(declare-fun tp!379921 () Bool)

(declare-fun t1!34 () Token!4168)

(declare-fun e!834683 () Bool)

(declare-fun e!834686 () Bool)

(declare-fun b!1301867 () Bool)

(declare-fun inv!17483 (String!15951) Bool)

(declare-fun inv!17486 (TokenValueInjection!4346) Bool)

(assert (=> b!1301867 (= e!834686 (and tp!379921 (inv!17483 (tag!2515 (rule!3992 t1!34))) (inv!17486 (transformation!2253 (rule!3992 t1!34))) e!834683))))

(declare-fun b!1301868 () Bool)

(declare-fun e!834680 () Bool)

(declare-fun tp_is_empty!6603 () Bool)

(assert (=> b!1301868 (= e!834680 tp_is_empty!6603)))

(declare-fun b!1301869 () Bool)

(declare-fun e!834695 () Bool)

(assert (=> b!1301869 (= e!834695 true)))

(declare-datatypes ((List!13123 0))(
  ( (Nil!13057) (Cons!13057 (h!18458 Regex!3567) (t!117684 List!13123)) )
))
(declare-fun lt!428041 () List!13123)

(declare-datatypes ((List!13124 0))(
  ( (Nil!13058) (Cons!13058 (h!18459 Rule!4306) (t!117685 List!13124)) )
))
(declare-fun rules!2550 () List!13124)

(declare-fun lambda!51340 () Int)

(declare-fun map!2846 (List!13124 Int) List!13123)

(assert (=> b!1301869 (= lt!428041 (map!2846 rules!2550 lambda!51340))))

(declare-fun e!834688 () Bool)

(assert (=> b!1301870 (= e!834688 (and tp!379928 tp!379922))))

(declare-fun b!1301871 () Bool)

(declare-fun res!583135 () Bool)

(declare-fun e!834684 () Bool)

(assert (=> b!1301871 (=> (not res!583135) (not e!834684))))

(assert (=> b!1301871 (= res!583135 (not (= (isSeparator!2253 (rule!3992 t1!34)) (isSeparator!2253 (rule!3992 t2!34)))))))

(declare-fun b!1301872 () Bool)

(declare-fun e!834690 () Bool)

(assert (=> b!1301872 (= e!834684 e!834690)))

(declare-fun res!583140 () Bool)

(assert (=> b!1301872 (=> (not res!583140) (not e!834690))))

(declare-fun lt!428037 () BalanceConc!8510)

(declare-fun size!10673 (BalanceConc!8510) Int)

(assert (=> b!1301872 (= res!583140 (> (size!10673 lt!428037) 0))))

(declare-fun charsOf!1225 (Token!4168) BalanceConc!8510)

(assert (=> b!1301872 (= lt!428037 (charsOf!1225 t2!34))))

(declare-fun b!1301873 () Bool)

(declare-fun e!834681 () Bool)

(declare-fun e!834693 () Bool)

(declare-fun tp!379914 () Bool)

(assert (=> b!1301873 (= e!834681 (and e!834693 tp!379914))))

(assert (=> b!1301874 (= e!834677 e!834695)))

(declare-fun res!583127 () Bool)

(assert (=> b!1301874 (=> res!583127 e!834695)))

(declare-fun lambda!51341 () Int)

(declare-fun exists!213 (List!13123 Int) Bool)

(assert (=> b!1301874 (= res!583127 (not (exists!213 (map!2846 rules!2550 lambda!51340) lambda!51341)))))

(declare-fun lt!428043 () List!13123)

(assert (=> b!1301874 (exists!213 lt!428043 lambda!51341)))

(declare-datatypes ((Unit!19180 0))(
  ( (Unit!19181) )
))
(declare-fun lt!428042 () Unit!19180)

(declare-fun lt!428033 () Regex!3567)

(declare-fun lt!428039 () List!13121)

(declare-fun matchRGenUnionSpec!4 (Regex!3567 List!13123 List!13121) Unit!19180)

(assert (=> b!1301874 (= lt!428042 (matchRGenUnionSpec!4 lt!428033 lt!428043 lt!428039))))

(assert (=> b!1301874 (= lt!428043 (map!2846 rules!2550 lambda!51340))))

(declare-fun b!1301875 () Bool)

(declare-fun res!583132 () Bool)

(assert (=> b!1301875 (=> (not res!583132) (not e!834684))))

(declare-datatypes ((LexerInterface!1948 0))(
  ( (LexerInterfaceExt!1945 (__x!8516 Int)) (Lexer!1946) )
))
(declare-fun thiss!19762 () LexerInterface!1948)

(declare-fun rulesProduceIndividualToken!917 (LexerInterface!1948 List!13124 Token!4168) Bool)

(assert (=> b!1301875 (= res!583132 (rulesProduceIndividualToken!917 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1301876 (= e!834683 (and tp!379918 tp!379919))))

(declare-fun b!1301877 () Bool)

(declare-fun e!834694 () Bool)

(assert (=> b!1301877 (= e!834694 e!834677)))

(declare-fun res!583136 () Bool)

(assert (=> b!1301877 (=> res!583136 e!834677)))

(declare-fun lt!428040 () C!7424)

(assert (=> b!1301877 (= res!583136 (not (contains!2193 lt!428044 lt!428040)))))

(declare-fun lt!428034 () BalanceConc!8510)

(declare-fun apply!2919 (BalanceConc!8510 Int) C!7424)

(assert (=> b!1301877 (= lt!428040 (apply!2919 lt!428034 0))))

(declare-fun b!1301878 () Bool)

(declare-fun tp!379927 () Bool)

(assert (=> b!1301878 (= e!834680 tp!379927)))

(declare-fun tp!379924 () Bool)

(declare-fun b!1301879 () Bool)

(assert (=> b!1301879 (= e!834685 (and tp!379924 (inv!17483 (tag!2515 (rule!3992 t2!34))) (inv!17486 (transformation!2253 (rule!3992 t2!34))) e!834688))))

(declare-fun b!1301880 () Bool)

(declare-fun res!583130 () Bool)

(assert (=> b!1301880 (=> (not res!583130) (not e!834684))))

(declare-fun isEmpty!7751 (List!13124) Bool)

(assert (=> b!1301880 (= res!583130 (not (isEmpty!7751 rules!2550)))))

(declare-fun b!1301881 () Bool)

(declare-fun tp!379926 () Bool)

(declare-fun tp!379923 () Bool)

(assert (=> b!1301881 (= e!834680 (and tp!379926 tp!379923))))

(declare-fun b!1301882 () Bool)

(declare-fun e!834687 () Bool)

(assert (=> b!1301882 (= e!834687 e!834694)))

(declare-fun res!583128 () Bool)

(assert (=> b!1301882 (=> res!583128 e!834694)))

(declare-fun ++!3324 (List!13121 List!13121) List!13121)

(declare-fun getSuffix!423 (List!13121 List!13121) List!13121)

(assert (=> b!1301882 (= res!583128 (not (= lt!428039 (++!3324 lt!428044 (getSuffix!423 lt!428039 lt!428044)))))))

(declare-fun lambda!51339 () Int)

(declare-fun pickWitness!30 (Int) List!13121)

(assert (=> b!1301882 (= lt!428039 (pickWitness!30 lambda!51339))))

(declare-fun b!1301883 () Bool)

(declare-fun tp!379925 () Bool)

(declare-fun tp!379917 () Bool)

(assert (=> b!1301883 (= e!834680 (and tp!379925 tp!379917))))

(declare-fun tp!379915 () Bool)

(declare-fun b!1301884 () Bool)

(declare-fun e!834692 () Bool)

(assert (=> b!1301884 (= e!834692 (and (inv!21 (value!73843 t1!34)) e!834686 tp!379915))))

(declare-fun b!1301885 () Bool)

(declare-fun res!583129 () Bool)

(assert (=> b!1301885 (=> (not res!583129) (not e!834684))))

(assert (=> b!1301885 (= res!583129 (rulesProduceIndividualToken!917 thiss!19762 rules!2550 t2!34))))

(declare-fun e!834678 () Bool)

(assert (=> b!1301886 (= e!834678 (not e!834687))))

(declare-fun res!583126 () Bool)

(assert (=> b!1301886 (=> res!583126 e!834687)))

(declare-fun Exists!725 (Int) Bool)

(assert (=> b!1301886 (= res!583126 (not (Exists!725 lambda!51339)))))

(assert (=> b!1301886 (Exists!725 lambda!51339)))

(declare-fun lt!428036 () Unit!19180)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!43 (Regex!3567 List!13121) Unit!19180)

(assert (=> b!1301886 (= lt!428036 (lemmaPrefixMatchThenExistsStringThatMatches!43 lt!428033 lt!428044))))

(declare-fun b!1301887 () Bool)

(declare-fun res!583139 () Bool)

(assert (=> b!1301887 (=> (not res!583139) (not e!834690))))

(declare-fun sepAndNonSepRulesDisjointChars!626 (List!13124 List!13124) Bool)

(assert (=> b!1301887 (= res!583139 (sepAndNonSepRulesDisjointChars!626 rules!2550 rules!2550))))

(declare-fun b!1301888 () Bool)

(assert (=> b!1301888 (= e!834690 e!834678)))

(declare-fun res!583137 () Bool)

(assert (=> b!1301888 (=> (not res!583137) (not e!834678))))

(declare-fun prefixMatch!80 (Regex!3567 List!13121) Bool)

(assert (=> b!1301888 (= res!583137 (prefixMatch!80 lt!428033 lt!428044))))

(declare-fun rulesRegex!138 (LexerInterface!1948 List!13124) Regex!3567)

(assert (=> b!1301888 (= lt!428033 (rulesRegex!138 thiss!19762 rules!2550))))

(declare-fun lt!428038 () List!13121)

(assert (=> b!1301888 (= lt!428044 (++!3324 lt!428038 (Cons!13055 lt!428035 Nil!13055)))))

(assert (=> b!1301888 (= lt!428035 (apply!2919 lt!428037 0))))

(declare-fun list!4895 (BalanceConc!8510) List!13121)

(assert (=> b!1301888 (= lt!428038 (list!4895 lt!428034))))

(assert (=> b!1301888 (= lt!428034 (charsOf!1225 t1!34))))

(declare-fun b!1301889 () Bool)

(declare-fun res!583131 () Bool)

(assert (=> b!1301889 (=> res!583131 e!834677)))

(declare-fun matchR!1569 (Regex!3567 List!13121) Bool)

(assert (=> b!1301889 (= res!583131 (not (matchR!1569 lt!428033 lt!428039)))))

(declare-fun b!1301890 () Bool)

(declare-fun res!583142 () Bool)

(assert (=> b!1301890 (=> (not res!583142) (not e!834684))))

(declare-fun rulesInvariant!1818 (LexerInterface!1948 List!13124) Bool)

(assert (=> b!1301890 (= res!583142 (rulesInvariant!1818 thiss!19762 rules!2550))))

(declare-fun res!583141 () Bool)

(assert (=> start!115018 (=> (not res!583141) (not e!834684))))

(get-info :version)

(assert (=> start!115018 (= res!583141 ((_ is Lexer!1946) thiss!19762))))

(assert (=> start!115018 e!834684))

(assert (=> start!115018 e!834680))

(declare-fun inv!17487 (Token!4168) Bool)

(assert (=> start!115018 (and (inv!17487 t1!34) e!834692)))

(assert (=> start!115018 true))

(assert (=> start!115018 e!834681))

(assert (=> start!115018 (and (inv!17487 t2!34) e!834675)))

(declare-fun tp!379929 () Bool)

(declare-fun e!834689 () Bool)

(declare-fun b!1301891 () Bool)

(assert (=> b!1301891 (= e!834693 (and tp!379929 (inv!17483 (tag!2515 (h!18459 rules!2550))) (inv!17486 (transformation!2253 (h!18459 rules!2550))) e!834689))))

(declare-fun b!1301892 () Bool)

(declare-fun res!583134 () Bool)

(assert (=> b!1301892 (=> res!583134 e!834677)))

(assert (=> b!1301892 (= res!583134 (not (contains!2193 lt!428039 lt!428040)))))

(declare-fun b!1301893 () Bool)

(declare-fun res!583125 () Bool)

(assert (=> b!1301893 (=> (not res!583125) (not e!834690))))

(declare-fun separableTokensPredicate!231 (LexerInterface!1948 Token!4168 Token!4168 List!13124) Bool)

(assert (=> b!1301893 (= res!583125 (not (separableTokensPredicate!231 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1301894 (= e!834689 (and tp!379916 tp!379920))))

(declare-fun b!1301895 () Bool)

(declare-fun res!583138 () Bool)

(assert (=> b!1301895 (=> res!583138 e!834677)))

(assert (=> b!1301895 (= res!583138 (not (contains!2193 lt!428039 lt!428035)))))

(assert (= (and start!115018 res!583141) b!1301880))

(assert (= (and b!1301880 res!583130) b!1301890))

(assert (= (and b!1301890 res!583142) b!1301875))

(assert (= (and b!1301875 res!583132) b!1301885))

(assert (= (and b!1301885 res!583129) b!1301871))

(assert (= (and b!1301871 res!583135) b!1301872))

(assert (= (and b!1301872 res!583140) b!1301887))

(assert (= (and b!1301887 res!583139) b!1301893))

(assert (= (and b!1301893 res!583125) b!1301888))

(assert (= (and b!1301888 res!583137) b!1301886))

(assert (= (and b!1301886 (not res!583126)) b!1301882))

(assert (= (and b!1301882 (not res!583128)) b!1301877))

(assert (= (and b!1301877 (not res!583136)) b!1301892))

(assert (= (and b!1301892 (not res!583134)) b!1301866))

(assert (= (and b!1301866 (not res!583133)) b!1301895))

(assert (= (and b!1301895 (not res!583138)) b!1301889))

(assert (= (and b!1301889 (not res!583131)) b!1301874))

(assert (= (and b!1301874 (not res!583127)) b!1301869))

(declare-fun rr!28 () Regex!3567)

(assert (= (and start!115018 ((_ is ElementMatch!3567) rr!28)) b!1301868))

(assert (= (and start!115018 ((_ is Concat!5911) rr!28)) b!1301883))

(assert (= (and start!115018 ((_ is Star!3567) rr!28)) b!1301878))

(assert (= (and start!115018 ((_ is Union!3567) rr!28)) b!1301881))

(assert (= b!1301867 b!1301876))

(assert (= b!1301884 b!1301867))

(assert (= start!115018 b!1301884))

(assert (= b!1301891 b!1301894))

(assert (= b!1301873 b!1301891))

(assert (= (and start!115018 ((_ is Cons!13058) rules!2550)) b!1301873))

(assert (= b!1301879 b!1301870))

(assert (= b!1301865 b!1301879))

(assert (= start!115018 b!1301865))

(declare-fun m!1453477 () Bool)

(assert (=> b!1301879 m!1453477))

(declare-fun m!1453479 () Bool)

(assert (=> b!1301879 m!1453479))

(declare-fun m!1453481 () Bool)

(assert (=> b!1301880 m!1453481))

(declare-fun m!1453483 () Bool)

(assert (=> b!1301891 m!1453483))

(declare-fun m!1453485 () Bool)

(assert (=> b!1301891 m!1453485))

(declare-fun m!1453487 () Bool)

(assert (=> b!1301874 m!1453487))

(declare-fun m!1453489 () Bool)

(assert (=> b!1301874 m!1453489))

(assert (=> b!1301874 m!1453489))

(assert (=> b!1301874 m!1453489))

(declare-fun m!1453491 () Bool)

(assert (=> b!1301874 m!1453491))

(declare-fun m!1453493 () Bool)

(assert (=> b!1301874 m!1453493))

(declare-fun m!1453495 () Bool)

(assert (=> b!1301886 m!1453495))

(assert (=> b!1301886 m!1453495))

(declare-fun m!1453497 () Bool)

(assert (=> b!1301886 m!1453497))

(declare-fun m!1453499 () Bool)

(assert (=> b!1301872 m!1453499))

(declare-fun m!1453501 () Bool)

(assert (=> b!1301872 m!1453501))

(declare-fun m!1453503 () Bool)

(assert (=> b!1301867 m!1453503))

(declare-fun m!1453505 () Bool)

(assert (=> b!1301867 m!1453505))

(declare-fun m!1453507 () Bool)

(assert (=> b!1301865 m!1453507))

(declare-fun m!1453509 () Bool)

(assert (=> b!1301888 m!1453509))

(declare-fun m!1453511 () Bool)

(assert (=> b!1301888 m!1453511))

(declare-fun m!1453513 () Bool)

(assert (=> b!1301888 m!1453513))

(declare-fun m!1453515 () Bool)

(assert (=> b!1301888 m!1453515))

(declare-fun m!1453517 () Bool)

(assert (=> b!1301888 m!1453517))

(declare-fun m!1453519 () Bool)

(assert (=> b!1301888 m!1453519))

(declare-fun m!1453521 () Bool)

(assert (=> b!1301895 m!1453521))

(declare-fun m!1453523 () Bool)

(assert (=> b!1301882 m!1453523))

(assert (=> b!1301882 m!1453523))

(declare-fun m!1453525 () Bool)

(assert (=> b!1301882 m!1453525))

(declare-fun m!1453527 () Bool)

(assert (=> b!1301882 m!1453527))

(assert (=> b!1301869 m!1453489))

(declare-fun m!1453529 () Bool)

(assert (=> b!1301884 m!1453529))

(declare-fun m!1453531 () Bool)

(assert (=> b!1301887 m!1453531))

(declare-fun m!1453533 () Bool)

(assert (=> b!1301892 m!1453533))

(declare-fun m!1453535 () Bool)

(assert (=> b!1301877 m!1453535))

(declare-fun m!1453537 () Bool)

(assert (=> b!1301877 m!1453537))

(declare-fun m!1453539 () Bool)

(assert (=> start!115018 m!1453539))

(declare-fun m!1453541 () Bool)

(assert (=> start!115018 m!1453541))

(declare-fun m!1453543 () Bool)

(assert (=> b!1301889 m!1453543))

(declare-fun m!1453545 () Bool)

(assert (=> b!1301885 m!1453545))

(declare-fun m!1453547 () Bool)

(assert (=> b!1301875 m!1453547))

(declare-fun m!1453549 () Bool)

(assert (=> b!1301893 m!1453549))

(declare-fun m!1453551 () Bool)

(assert (=> b!1301866 m!1453551))

(declare-fun m!1453553 () Bool)

(assert (=> b!1301890 m!1453553))

(check-sat (not b!1301878) b_and!86841 (not b!1301873) (not b!1301880) (not b!1301874) (not b_next!31693) (not b!1301884) b_and!86845 (not b!1301881) (not b!1301885) (not b!1301872) (not b_next!31695) (not b!1301865) (not b_next!31691) (not b_next!31697) (not b!1301888) (not b!1301890) (not b!1301877) b_and!86847 b_and!86839 (not b!1301866) b_and!86849 (not b_next!31699) (not b!1301883) (not start!115018) (not b_next!31701) (not b!1301886) (not b!1301869) (not b!1301891) (not b!1301887) (not b!1301889) (not b!1301893) (not b!1301882) (not b!1301867) (not b!1301879) (not b!1301875) (not b!1301895) b_and!86843 tp_is_empty!6603 (not b!1301892))
(check-sat b_and!86847 b_and!86841 (not b_next!31693) b_and!86845 (not b_next!31701) (not b_next!31695) b_and!86843 (not b_next!31691) (not b_next!31697) b_and!86839 (not b_next!31699) b_and!86849)
