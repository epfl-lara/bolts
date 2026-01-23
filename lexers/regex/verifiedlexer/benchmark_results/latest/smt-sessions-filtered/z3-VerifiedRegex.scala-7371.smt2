; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391798 () Bool)

(assert start!391798)

(declare-fun b!4128752 () Bool)

(declare-fun b_free!117027 () Bool)

(declare-fun b_next!117731 () Bool)

(assert (=> b!4128752 (= b_free!117027 (not b_next!117731))))

(declare-fun tp!1258213 () Bool)

(declare-fun b_and!319849 () Bool)

(assert (=> b!4128752 (= tp!1258213 b_and!319849)))

(declare-fun b_free!117029 () Bool)

(declare-fun b_next!117733 () Bool)

(assert (=> b!4128752 (= b_free!117029 (not b_next!117733))))

(declare-fun tp!1258206 () Bool)

(declare-fun b_and!319851 () Bool)

(assert (=> b!4128752 (= tp!1258206 b_and!319851)))

(declare-fun b!4128764 () Bool)

(declare-fun b_free!117031 () Bool)

(declare-fun b_next!117735 () Bool)

(assert (=> b!4128764 (= b_free!117031 (not b_next!117735))))

(declare-fun tp!1258208 () Bool)

(declare-fun b_and!319853 () Bool)

(assert (=> b!4128764 (= tp!1258208 b_and!319853)))

(declare-fun b_free!117033 () Bool)

(declare-fun b_next!117737 () Bool)

(assert (=> b!4128764 (= b_free!117033 (not b_next!117737))))

(declare-fun tp!1258203 () Bool)

(declare-fun b_and!319855 () Bool)

(assert (=> b!4128764 (= tp!1258203 b_and!319855)))

(declare-fun b!4128746 () Bool)

(declare-fun b_free!117035 () Bool)

(declare-fun b_next!117739 () Bool)

(assert (=> b!4128746 (= b_free!117035 (not b_next!117739))))

(declare-fun tp!1258204 () Bool)

(declare-fun b_and!319857 () Bool)

(assert (=> b!4128746 (= tp!1258204 b_and!319857)))

(declare-fun b_free!117037 () Bool)

(declare-fun b_next!117741 () Bool)

(assert (=> b!4128746 (= b_free!117037 (not b_next!117741))))

(declare-fun tp!1258207 () Bool)

(declare-fun b_and!319859 () Bool)

(assert (=> b!4128746 (= tp!1258207 b_and!319859)))

(declare-fun b!4128743 () Bool)

(declare-fun tp!1258211 () Bool)

(declare-fun e!2561786 () Bool)

(declare-datatypes ((List!44813 0))(
  ( (Nil!44689) (Cons!44689 (h!50109 (_ BitVec 16)) (t!341390 List!44813)) )
))
(declare-datatypes ((TokenValue!7544 0))(
  ( (FloatLiteralValue!15088 (text!53253 List!44813)) (TokenValueExt!7543 (__x!27305 Int)) (Broken!37720 (value!228977 List!44813)) (Object!7667) (End!7544) (Def!7544) (Underscore!7544) (Match!7544) (Else!7544) (Error!7544) (Case!7544) (If!7544) (Extends!7544) (Abstract!7544) (Class!7544) (Val!7544) (DelimiterValue!15088 (del!7604 List!44813)) (KeywordValue!7550 (value!228978 List!44813)) (CommentValue!15088 (value!228979 List!44813)) (WhitespaceValue!15088 (value!228980 List!44813)) (IndentationValue!7544 (value!228981 List!44813)) (String!51469) (Int32!7544) (Broken!37721 (value!228982 List!44813)) (Boolean!7545) (Unit!64024) (OperatorValue!7547 (op!7604 List!44813)) (IdentifierValue!15088 (value!228983 List!44813)) (IdentifierValue!15089 (value!228984 List!44813)) (WhitespaceValue!15089 (value!228985 List!44813)) (True!15088) (False!15088) (Broken!37722 (value!228986 List!44813)) (Broken!37723 (value!228987 List!44813)) (True!15089) (RightBrace!7544) (RightBracket!7544) (Colon!7544) (Null!7544) (Comma!7544) (LeftBracket!7544) (False!15089) (LeftBrace!7544) (ImaginaryLiteralValue!7544 (text!53254 List!44813)) (StringLiteralValue!22632 (value!228988 List!44813)) (EOFValue!7544 (value!228989 List!44813)) (IdentValue!7544 (value!228990 List!44813)) (DelimiterValue!15089 (value!228991 List!44813)) (DedentValue!7544 (value!228992 List!44813)) (NewLineValue!7544 (value!228993 List!44813)) (IntegerValue!22632 (value!228994 (_ BitVec 32)) (text!53255 List!44813)) (IntegerValue!22633 (value!228995 Int) (text!53256 List!44813)) (Times!7544) (Or!7544) (Equal!7544) (Minus!7544) (Broken!37724 (value!228996 List!44813)) (And!7544) (Div!7544) (LessEqual!7544) (Mod!7544) (Concat!19763) (Not!7544) (Plus!7544) (SpaceValue!7544 (value!228997 List!44813)) (IntegerValue!22634 (value!228998 Int) (text!53257 List!44813)) (StringLiteralValue!22633 (text!53258 List!44813)) (FloatLiteralValue!15089 (text!53259 List!44813)) (BytesLiteralValue!7544 (value!228999 List!44813)) (CommentValue!15089 (value!229000 List!44813)) (StringLiteralValue!22634 (value!229001 List!44813)) (ErrorTokenValue!7544 (msg!7605 List!44813)) )
))
(declare-datatypes ((C!24624 0))(
  ( (C!24625 (val!14422 Int)) )
))
(declare-datatypes ((List!44814 0))(
  ( (Nil!44690) (Cons!44690 (h!50110 C!24624) (t!341391 List!44814)) )
))
(declare-datatypes ((IArray!27055 0))(
  ( (IArray!27056 (innerList!13585 List!44814)) )
))
(declare-datatypes ((Conc!13525 0))(
  ( (Node!13525 (left!33464 Conc!13525) (right!33794 Conc!13525) (csize!27280 Int) (cheight!13736 Int)) (Leaf!20897 (xs!16831 IArray!27055) (csize!27281 Int)) (Empty!13525) )
))
(declare-datatypes ((BalanceConc!26644 0))(
  ( (BalanceConc!26645 (c!708540 Conc!13525)) )
))
(declare-datatypes ((String!51470 0))(
  ( (String!51471 (value!229002 String)) )
))
(declare-datatypes ((Regex!12219 0))(
  ( (ElementMatch!12219 (c!708541 C!24624)) (Concat!19764 (regOne!24950 Regex!12219) (regTwo!24950 Regex!12219)) (EmptyExpr!12219) (Star!12219 (reg!12548 Regex!12219)) (EmptyLang!12219) (Union!12219 (regOne!24951 Regex!12219) (regTwo!24951 Regex!12219)) )
))
(declare-datatypes ((TokenValueInjection!14516 0))(
  ( (TokenValueInjection!14517 (toValue!9974 Int) (toChars!9833 Int)) )
))
(declare-datatypes ((Rule!14428 0))(
  ( (Rule!14429 (regex!7314 Regex!12219) (tag!8174 String!51470) (isSeparator!7314 Bool) (transformation!7314 TokenValueInjection!14516)) )
))
(declare-datatypes ((List!44815 0))(
  ( (Nil!44691) (Cons!44691 (h!50111 Rule!14428) (t!341392 List!44815)) )
))
(declare-fun rules!3756 () List!44815)

(declare-fun e!2561780 () Bool)

(declare-fun inv!59278 (String!51470) Bool)

(declare-fun inv!59280 (TokenValueInjection!14516) Bool)

(assert (=> b!4128743 (= e!2561780 (and tp!1258211 (inv!59278 (tag!8174 (h!50111 rules!3756))) (inv!59280 (transformation!7314 (h!50111 rules!3756))) e!2561786))))

(declare-fun b!4128744 () Bool)

(declare-fun res!1687708 () Bool)

(declare-fun e!2561784 () Bool)

(assert (=> b!4128744 (=> (not res!1687708) (not e!2561784))))

(declare-datatypes ((LexerInterface!6903 0))(
  ( (LexerInterfaceExt!6900 (__x!27306 Int)) (Lexer!6901) )
))
(declare-fun thiss!25645 () LexerInterface!6903)

(declare-fun r!4008 () Rule!14428)

(declare-fun ruleValid!3122 (LexerInterface!6903 Rule!14428) Bool)

(assert (=> b!4128744 (= res!1687708 (ruleValid!3122 thiss!25645 r!4008))))

(declare-fun b!4128745 () Bool)

(declare-fun res!1687707 () Bool)

(declare-fun e!2561777 () Bool)

(assert (=> b!4128745 (=> (not res!1687707) (not e!2561777))))

(declare-fun contains!8990 (List!44815 Rule!14428) Bool)

(assert (=> b!4128745 (= res!1687707 (contains!8990 rules!3756 r!4008))))

(declare-fun b!4128747 () Bool)

(declare-fun res!1687710 () Bool)

(declare-fun e!2561781 () Bool)

(assert (=> b!4128747 (=> res!1687710 e!2561781)))

(declare-datatypes ((Token!13558 0))(
  ( (Token!13559 (value!229003 TokenValue!7544) (rule!10404 Rule!14428) (size!33091 Int) (originalCharacters!7810 List!44814)) )
))
(declare-datatypes ((tuple2!43134 0))(
  ( (tuple2!43135 (_1!24701 Token!13558) (_2!24701 List!44814)) )
))
(declare-datatypes ((Option!9622 0))(
  ( (None!9621) (Some!9621 (v!40223 tuple2!43134)) )
))
(declare-fun lt!1472808 () Option!9622)

(declare-fun lt!1472809 () Option!9622)

(assert (=> b!4128747 (= res!1687710 (not (= lt!1472808 lt!1472809)))))

(declare-fun b!4128748 () Bool)

(declare-fun res!1687713 () Bool)

(assert (=> b!4128748 (=> (not res!1687713) (not e!2561777))))

(declare-fun p!2912 () List!44814)

(declare-fun isEmpty!26605 (List!44814) Bool)

(assert (=> b!4128748 (= res!1687713 (not (isEmpty!26605 p!2912)))))

(declare-fun b!4128749 () Bool)

(declare-fun e!2561778 () Bool)

(assert (=> b!4128749 (= e!2561784 (not e!2561778))))

(declare-fun res!1687711 () Bool)

(assert (=> b!4128749 (=> res!1687711 e!2561778)))

(declare-fun rBis!149 () Rule!14428)

(get-info :version)

(assert (=> b!4128749 (= res!1687711 (or (and ((_ is Cons!44691) rules!3756) (= (h!50111 rules!3756) rBis!149)) (not ((_ is Cons!44691) rules!3756)) (= (h!50111 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64025 0))(
  ( (Unit!64026) )
))
(declare-fun lt!1472805 () Unit!64025)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2166 (LexerInterface!6903 Rule!14428 List!44815) Unit!64025)

(assert (=> b!4128749 (= lt!1472805 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2166 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4128749 (ruleValid!3122 thiss!25645 rBis!149)))

(declare-fun lt!1472807 () Unit!64025)

(assert (=> b!4128749 (= lt!1472807 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2166 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4128750 () Bool)

(declare-fun res!1687714 () Bool)

(assert (=> b!4128750 (=> (not res!1687714) (not e!2561777))))

(declare-fun rulesInvariant!6200 (LexerInterface!6903 List!44815) Bool)

(assert (=> b!4128750 (= res!1687714 (rulesInvariant!6200 thiss!25645 rules!3756))))

(declare-fun b!4128751 () Bool)

(declare-fun res!1687701 () Bool)

(assert (=> b!4128751 (=> res!1687701 e!2561778)))

(assert (=> b!4128751 (= res!1687701 (not (contains!8990 (t!341392 rules!3756) rBis!149)))))

(declare-fun e!2561782 () Bool)

(assert (=> b!4128752 (= e!2561782 (and tp!1258213 tp!1258206))))

(declare-fun b!4128753 () Bool)

(declare-fun res!1687698 () Bool)

(assert (=> b!4128753 (=> res!1687698 e!2561781)))

(declare-fun getIndex!662 (List!44815 Rule!14428) Int)

(assert (=> b!4128753 (= res!1687698 (>= (getIndex!662 (t!341392 rules!3756) rBis!149) (getIndex!662 (t!341392 rules!3756) r!4008)))))

(declare-fun e!2561790 () Bool)

(declare-fun e!2561789 () Bool)

(declare-fun tp!1258205 () Bool)

(declare-fun b!4128754 () Bool)

(assert (=> b!4128754 (= e!2561790 (and tp!1258205 (inv!59278 (tag!8174 r!4008)) (inv!59280 (transformation!7314 r!4008)) e!2561789))))

(declare-fun b!4128755 () Bool)

(declare-fun res!1687702 () Bool)

(assert (=> b!4128755 (=> (not res!1687702) (not e!2561777))))

(declare-fun input!3238 () List!44814)

(declare-fun isPrefix!4249 (List!44814 List!44814) Bool)

(assert (=> b!4128755 (= res!1687702 (isPrefix!4249 p!2912 input!3238))))

(declare-fun b!4128756 () Bool)

(assert (=> b!4128756 (= e!2561777 e!2561784)))

(declare-fun res!1687704 () Bool)

(assert (=> b!4128756 (=> (not res!1687704) (not e!2561784))))

(declare-fun maxPrefix!4095 (LexerInterface!6903 List!44815 List!44814) Option!9622)

(assert (=> b!4128756 (= res!1687704 (= (maxPrefix!4095 thiss!25645 rules!3756 input!3238) lt!1472809))))

(declare-fun lt!1472811 () BalanceConc!26644)

(declare-fun apply!10387 (TokenValueInjection!14516 BalanceConc!26644) TokenValue!7544)

(declare-fun size!33092 (List!44814) Int)

(declare-fun getSuffix!2578 (List!44814 List!44814) List!44814)

(assert (=> b!4128756 (= lt!1472809 (Some!9621 (tuple2!43135 (Token!13559 (apply!10387 (transformation!7314 r!4008) lt!1472811) r!4008 (size!33092 p!2912) p!2912) (getSuffix!2578 input!3238 p!2912))))))

(declare-fun lt!1472806 () Unit!64025)

(declare-fun lemmaSemiInverse!2172 (TokenValueInjection!14516 BalanceConc!26644) Unit!64025)

(assert (=> b!4128756 (= lt!1472806 (lemmaSemiInverse!2172 (transformation!7314 r!4008) lt!1472811))))

(declare-fun seqFromList!5431 (List!44814) BalanceConc!26644)

(assert (=> b!4128756 (= lt!1472811 (seqFromList!5431 p!2912))))

(declare-fun b!4128757 () Bool)

(declare-fun res!1687706 () Bool)

(assert (=> b!4128757 (=> (not res!1687706) (not e!2561777))))

(declare-fun isEmpty!26606 (List!44815) Bool)

(assert (=> b!4128757 (= res!1687706 (not (isEmpty!26606 rules!3756)))))

(declare-fun b!4128758 () Bool)

(declare-fun e!2561791 () Bool)

(declare-fun tp!1258212 () Bool)

(assert (=> b!4128758 (= e!2561791 (and e!2561780 tp!1258212))))

(declare-fun b!4128759 () Bool)

(declare-fun validRegex!5496 (Regex!12219) Bool)

(assert (=> b!4128759 (= e!2561781 (validRegex!5496 (regex!7314 rBis!149)))))

(declare-fun matchR!6050 (Regex!12219 List!44814) Bool)

(assert (=> b!4128759 (not (matchR!6050 (regex!7314 rBis!149) p!2912))))

(declare-fun lt!1472804 () Unit!64025)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!310 (LexerInterface!6903 List!44815 Rule!14428 List!44814 List!44814 Rule!14428) Unit!64025)

(assert (=> b!4128759 (= lt!1472804 (lemmaMaxPrefNoSmallerRuleMatches!310 thiss!25645 (t!341392 rules!3756) r!4008 p!2912 input!3238 rBis!149))))

(declare-fun res!1687703 () Bool)

(assert (=> start!391798 (=> (not res!1687703) (not e!2561777))))

(assert (=> start!391798 (= res!1687703 ((_ is Lexer!6901) thiss!25645))))

(assert (=> start!391798 e!2561777))

(assert (=> start!391798 e!2561791))

(declare-fun e!2561783 () Bool)

(assert (=> start!391798 e!2561783))

(assert (=> start!391798 true))

(assert (=> start!391798 e!2561790))

(declare-fun e!2561788 () Bool)

(assert (=> start!391798 e!2561788))

(declare-fun e!2561787 () Bool)

(assert (=> start!391798 e!2561787))

(assert (=> b!4128746 (= e!2561789 (and tp!1258204 tp!1258207))))

(declare-fun b!4128760 () Bool)

(declare-fun res!1687705 () Bool)

(assert (=> b!4128760 (=> (not res!1687705) (not e!2561777))))

(assert (=> b!4128760 (= res!1687705 (contains!8990 rules!3756 rBis!149))))

(declare-fun b!4128761 () Bool)

(declare-fun res!1687712 () Bool)

(assert (=> b!4128761 (=> (not res!1687712) (not e!2561784))))

(assert (=> b!4128761 (= res!1687712 (matchR!6050 (regex!7314 r!4008) p!2912))))

(declare-fun b!4128762 () Bool)

(declare-fun tp_is_empty!21361 () Bool)

(declare-fun tp!1258209 () Bool)

(assert (=> b!4128762 (= e!2561783 (and tp_is_empty!21361 tp!1258209))))

(declare-fun b!4128763 () Bool)

(assert (=> b!4128763 (= e!2561778 e!2561781)))

(declare-fun res!1687709 () Bool)

(assert (=> b!4128763 (=> res!1687709 e!2561781)))

(assert (=> b!4128763 (= res!1687709 (isEmpty!26606 (t!341392 rules!3756)))))

(assert (=> b!4128763 (not (= (tag!8174 (h!50111 rules!3756)) (tag!8174 r!4008)))))

(declare-fun lt!1472810 () Unit!64025)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!58 (LexerInterface!6903 List!44815 Rule!14428 Rule!14428) Unit!64025)

(assert (=> b!4128763 (= lt!1472810 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!58 thiss!25645 rules!3756 (h!50111 rules!3756) r!4008))))

(assert (=> b!4128763 (rulesInvariant!6200 thiss!25645 (t!341392 rules!3756))))

(declare-fun lt!1472803 () Unit!64025)

(declare-fun lemmaInvariantOnRulesThenOnTail!820 (LexerInterface!6903 Rule!14428 List!44815) Unit!64025)

(assert (=> b!4128763 (= lt!1472803 (lemmaInvariantOnRulesThenOnTail!820 thiss!25645 (h!50111 rules!3756) (t!341392 rules!3756)))))

(assert (=> b!4128763 (= lt!1472808 (maxPrefix!4095 thiss!25645 (t!341392 rules!3756) input!3238))))

(declare-fun lt!1472812 () Option!9622)

(declare-fun maxPrefixOneRule!3043 (LexerInterface!6903 Rule!14428 List!44814) Option!9622)

(assert (=> b!4128763 (= lt!1472812 (maxPrefixOneRule!3043 thiss!25645 (h!50111 rules!3756) input!3238))))

(assert (=> b!4128764 (= e!2561786 (and tp!1258208 tp!1258203))))

(declare-fun tp!1258210 () Bool)

(declare-fun b!4128765 () Bool)

(assert (=> b!4128765 (= e!2561787 (and tp!1258210 (inv!59278 (tag!8174 rBis!149)) (inv!59280 (transformation!7314 rBis!149)) e!2561782))))

(declare-fun b!4128766 () Bool)

(declare-fun tp!1258214 () Bool)

(assert (=> b!4128766 (= e!2561788 (and tp_is_empty!21361 tp!1258214))))

(declare-fun b!4128767 () Bool)

(declare-fun res!1687700 () Bool)

(assert (=> b!4128767 (=> (not res!1687700) (not e!2561784))))

(assert (=> b!4128767 (= res!1687700 (< (getIndex!662 rules!3756 rBis!149) (getIndex!662 rules!3756 r!4008)))))

(declare-fun b!4128768 () Bool)

(declare-fun res!1687699 () Bool)

(assert (=> b!4128768 (=> res!1687699 e!2561778)))

(assert (=> b!4128768 (= res!1687699 (not (contains!8990 (t!341392 rules!3756) r!4008)))))

(assert (= (and start!391798 res!1687703) b!4128755))

(assert (= (and b!4128755 res!1687702) b!4128757))

(assert (= (and b!4128757 res!1687706) b!4128750))

(assert (= (and b!4128750 res!1687714) b!4128745))

(assert (= (and b!4128745 res!1687707) b!4128760))

(assert (= (and b!4128760 res!1687705) b!4128748))

(assert (= (and b!4128748 res!1687713) b!4128756))

(assert (= (and b!4128756 res!1687704) b!4128761))

(assert (= (and b!4128761 res!1687712) b!4128767))

(assert (= (and b!4128767 res!1687700) b!4128744))

(assert (= (and b!4128744 res!1687708) b!4128749))

(assert (= (and b!4128749 (not res!1687711)) b!4128768))

(assert (= (and b!4128768 (not res!1687699)) b!4128751))

(assert (= (and b!4128751 (not res!1687701)) b!4128763))

(assert (= (and b!4128763 (not res!1687709)) b!4128747))

(assert (= (and b!4128747 (not res!1687710)) b!4128753))

(assert (= (and b!4128753 (not res!1687698)) b!4128759))

(assert (= b!4128743 b!4128764))

(assert (= b!4128758 b!4128743))

(assert (= (and start!391798 ((_ is Cons!44691) rules!3756)) b!4128758))

(assert (= (and start!391798 ((_ is Cons!44690) p!2912)) b!4128762))

(assert (= b!4128754 b!4128746))

(assert (= start!391798 b!4128754))

(assert (= (and start!391798 ((_ is Cons!44690) input!3238)) b!4128766))

(assert (= b!4128765 b!4128752))

(assert (= start!391798 b!4128765))

(declare-fun m!4726961 () Bool)

(assert (=> b!4128754 m!4726961))

(declare-fun m!4726963 () Bool)

(assert (=> b!4128754 m!4726963))

(declare-fun m!4726965 () Bool)

(assert (=> b!4128751 m!4726965))

(declare-fun m!4726967 () Bool)

(assert (=> b!4128745 m!4726967))

(declare-fun m!4726969 () Bool)

(assert (=> b!4128768 m!4726969))

(declare-fun m!4726971 () Bool)

(assert (=> b!4128744 m!4726971))

(declare-fun m!4726973 () Bool)

(assert (=> b!4128755 m!4726973))

(declare-fun m!4726975 () Bool)

(assert (=> b!4128753 m!4726975))

(declare-fun m!4726977 () Bool)

(assert (=> b!4128753 m!4726977))

(declare-fun m!4726979 () Bool)

(assert (=> b!4128756 m!4726979))

(declare-fun m!4726981 () Bool)

(assert (=> b!4128756 m!4726981))

(declare-fun m!4726983 () Bool)

(assert (=> b!4128756 m!4726983))

(declare-fun m!4726985 () Bool)

(assert (=> b!4128756 m!4726985))

(declare-fun m!4726987 () Bool)

(assert (=> b!4128756 m!4726987))

(declare-fun m!4726989 () Bool)

(assert (=> b!4128756 m!4726989))

(declare-fun m!4726991 () Bool)

(assert (=> b!4128763 m!4726991))

(declare-fun m!4726993 () Bool)

(assert (=> b!4128763 m!4726993))

(declare-fun m!4726995 () Bool)

(assert (=> b!4128763 m!4726995))

(declare-fun m!4726997 () Bool)

(assert (=> b!4128763 m!4726997))

(declare-fun m!4726999 () Bool)

(assert (=> b!4128763 m!4726999))

(declare-fun m!4727001 () Bool)

(assert (=> b!4128763 m!4727001))

(declare-fun m!4727003 () Bool)

(assert (=> b!4128748 m!4727003))

(declare-fun m!4727005 () Bool)

(assert (=> b!4128750 m!4727005))

(declare-fun m!4727007 () Bool)

(assert (=> b!4128761 m!4727007))

(declare-fun m!4727009 () Bool)

(assert (=> b!4128765 m!4727009))

(declare-fun m!4727011 () Bool)

(assert (=> b!4128765 m!4727011))

(declare-fun m!4727013 () Bool)

(assert (=> b!4128749 m!4727013))

(declare-fun m!4727015 () Bool)

(assert (=> b!4128749 m!4727015))

(declare-fun m!4727017 () Bool)

(assert (=> b!4128749 m!4727017))

(declare-fun m!4727019 () Bool)

(assert (=> b!4128743 m!4727019))

(declare-fun m!4727021 () Bool)

(assert (=> b!4128743 m!4727021))

(declare-fun m!4727023 () Bool)

(assert (=> b!4128757 m!4727023))

(declare-fun m!4727025 () Bool)

(assert (=> b!4128759 m!4727025))

(declare-fun m!4727027 () Bool)

(assert (=> b!4128759 m!4727027))

(declare-fun m!4727029 () Bool)

(assert (=> b!4128759 m!4727029))

(declare-fun m!4727031 () Bool)

(assert (=> b!4128760 m!4727031))

(declare-fun m!4727033 () Bool)

(assert (=> b!4128767 m!4727033))

(declare-fun m!4727035 () Bool)

(assert (=> b!4128767 m!4727035))

(check-sat (not b!4128768) (not b!4128750) (not b!4128759) (not b_next!117735) (not b_next!117737) b_and!319853 (not b!4128743) (not b!4128757) (not b!4128760) (not b_next!117741) (not b!4128767) (not b!4128751) (not b!4128749) (not b!4128763) b_and!319857 tp_is_empty!21361 (not b!4128761) b_and!319859 (not b!4128748) (not b!4128758) (not b_next!117739) (not b!4128753) (not b!4128754) (not b!4128762) b_and!319851 (not b!4128765) (not b_next!117731) (not b!4128745) (not b!4128756) (not b_next!117733) (not b!4128744) (not b!4128766) b_and!319849 b_and!319855 (not b!4128755))
(check-sat b_and!319857 (not b_next!117735) b_and!319859 (not b_next!117737) b_and!319853 (not b_next!117739) b_and!319851 (not b_next!117731) (not b_next!117741) (not b_next!117733) b_and!319849 b_and!319855)
(get-model)

(declare-fun d!1223396 () Bool)

(declare-fun lt!1472815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6892 (List!44815) (InoxSet Rule!14428))

(assert (=> d!1223396 (= lt!1472815 (select (content!6892 (t!341392 rules!3756)) rBis!149))))

(declare-fun e!2561800 () Bool)

(assert (=> d!1223396 (= lt!1472815 e!2561800)))

(declare-fun res!1687733 () Bool)

(assert (=> d!1223396 (=> (not res!1687733) (not e!2561800))))

(assert (=> d!1223396 (= res!1687733 ((_ is Cons!44691) (t!341392 rules!3756)))))

(assert (=> d!1223396 (= (contains!8990 (t!341392 rules!3756) rBis!149) lt!1472815)))

(declare-fun b!4128776 () Bool)

(declare-fun e!2561801 () Bool)

(assert (=> b!4128776 (= e!2561800 e!2561801)))

(declare-fun res!1687732 () Bool)

(assert (=> b!4128776 (=> res!1687732 e!2561801)))

(assert (=> b!4128776 (= res!1687732 (= (h!50111 (t!341392 rules!3756)) rBis!149))))

(declare-fun b!4128777 () Bool)

(assert (=> b!4128777 (= e!2561801 (contains!8990 (t!341392 (t!341392 rules!3756)) rBis!149))))

(assert (= (and d!1223396 res!1687733) b!4128776))

(assert (= (and b!4128776 (not res!1687732)) b!4128777))

(declare-fun m!4727041 () Bool)

(assert (=> d!1223396 m!4727041))

(declare-fun m!4727043 () Bool)

(assert (=> d!1223396 m!4727043))

(declare-fun m!4727045 () Bool)

(assert (=> b!4128777 m!4727045))

(assert (=> b!4128751 d!1223396))

(declare-fun d!1223404 () Bool)

(declare-fun res!1687739 () Bool)

(declare-fun e!2561807 () Bool)

(assert (=> d!1223404 (=> (not res!1687739) (not e!2561807))))

(declare-fun rulesValid!2866 (LexerInterface!6903 List!44815) Bool)

(assert (=> d!1223404 (= res!1687739 (rulesValid!2866 thiss!25645 (t!341392 rules!3756)))))

(assert (=> d!1223404 (= (rulesInvariant!6200 thiss!25645 (t!341392 rules!3756)) e!2561807)))

(declare-fun b!4128783 () Bool)

(declare-datatypes ((List!44817 0))(
  ( (Nil!44693) (Cons!44693 (h!50113 String!51470) (t!341426 List!44817)) )
))
(declare-fun noDuplicateTag!2949 (LexerInterface!6903 List!44815 List!44817) Bool)

(assert (=> b!4128783 (= e!2561807 (noDuplicateTag!2949 thiss!25645 (t!341392 rules!3756) Nil!44693))))

(assert (= (and d!1223404 res!1687739) b!4128783))

(declare-fun m!4727051 () Bool)

(assert (=> d!1223404 m!4727051))

(declare-fun m!4727053 () Bool)

(assert (=> b!4128783 m!4727053))

(assert (=> b!4128763 d!1223404))

(declare-fun d!1223408 () Bool)

(assert (=> d!1223408 (not (= (tag!8174 (h!50111 rules!3756)) (tag!8174 r!4008)))))

(declare-fun lt!1472821 () Unit!64025)

(declare-fun choose!25240 (LexerInterface!6903 List!44815 Rule!14428 Rule!14428) Unit!64025)

(assert (=> d!1223408 (= lt!1472821 (choose!25240 thiss!25645 rules!3756 (h!50111 rules!3756) r!4008))))

(assert (=> d!1223408 (contains!8990 rules!3756 (h!50111 rules!3756))))

(assert (=> d!1223408 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!58 thiss!25645 rules!3756 (h!50111 rules!3756) r!4008) lt!1472821)))

(declare-fun bs!594966 () Bool)

(assert (= bs!594966 d!1223408))

(declare-fun m!4727061 () Bool)

(assert (=> bs!594966 m!4727061))

(declare-fun m!4727063 () Bool)

(assert (=> bs!594966 m!4727063))

(assert (=> b!4128763 d!1223408))

(declare-fun b!4128956 () Bool)

(declare-fun res!1687838 () Bool)

(declare-fun e!2561906 () Bool)

(assert (=> b!4128956 (=> (not res!1687838) (not e!2561906))))

(declare-fun lt!1472867 () Option!9622)

(declare-fun ++!11571 (List!44814 List!44814) List!44814)

(declare-fun list!16380 (BalanceConc!26644) List!44814)

(declare-fun charsOf!4925 (Token!13558) BalanceConc!26644)

(declare-fun get!14578 (Option!9622) tuple2!43134)

(assert (=> b!4128956 (= res!1687838 (= (++!11571 (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472867)))) (_2!24701 (get!14578 lt!1472867))) input!3238))))

(declare-fun b!4128957 () Bool)

(declare-fun e!2561904 () Option!9622)

(assert (=> b!4128957 (= e!2561904 None!9621)))

(declare-fun b!4128958 () Bool)

(assert (=> b!4128958 (= e!2561906 (= (size!33091 (_1!24701 (get!14578 lt!1472867))) (size!33092 (originalCharacters!7810 (_1!24701 (get!14578 lt!1472867))))))))

(declare-fun d!1223414 () Bool)

(declare-fun e!2561905 () Bool)

(assert (=> d!1223414 e!2561905))

(declare-fun res!1687839 () Bool)

(assert (=> d!1223414 (=> res!1687839 e!2561905)))

(declare-fun isEmpty!26607 (Option!9622) Bool)

(assert (=> d!1223414 (= res!1687839 (isEmpty!26607 lt!1472867))))

(assert (=> d!1223414 (= lt!1472867 e!2561904)))

(declare-fun c!708580 () Bool)

(declare-datatypes ((tuple2!43136 0))(
  ( (tuple2!43137 (_1!24702 List!44814) (_2!24702 List!44814)) )
))
(declare-fun lt!1472869 () tuple2!43136)

(assert (=> d!1223414 (= c!708580 (isEmpty!26605 (_1!24702 lt!1472869)))))

(declare-fun findLongestMatch!1419 (Regex!12219 List!44814) tuple2!43136)

(assert (=> d!1223414 (= lt!1472869 (findLongestMatch!1419 (regex!7314 (h!50111 rules!3756)) input!3238))))

(assert (=> d!1223414 (ruleValid!3122 thiss!25645 (h!50111 rules!3756))))

(assert (=> d!1223414 (= (maxPrefixOneRule!3043 thiss!25645 (h!50111 rules!3756) input!3238) lt!1472867)))

(declare-fun b!4128959 () Bool)

(declare-fun res!1687842 () Bool)

(assert (=> b!4128959 (=> (not res!1687842) (not e!2561906))))

(assert (=> b!4128959 (= res!1687842 (= (rule!10404 (_1!24701 (get!14578 lt!1472867))) (h!50111 rules!3756)))))

(declare-fun b!4128960 () Bool)

(assert (=> b!4128960 (= e!2561905 e!2561906)))

(declare-fun res!1687840 () Bool)

(assert (=> b!4128960 (=> (not res!1687840) (not e!2561906))))

(assert (=> b!4128960 (= res!1687840 (matchR!6050 (regex!7314 (h!50111 rules!3756)) (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472867))))))))

(declare-fun b!4128961 () Bool)

(declare-fun size!33093 (BalanceConc!26644) Int)

(assert (=> b!4128961 (= e!2561904 (Some!9621 (tuple2!43135 (Token!13559 (apply!10387 (transformation!7314 (h!50111 rules!3756)) (seqFromList!5431 (_1!24702 lt!1472869))) (h!50111 rules!3756) (size!33093 (seqFromList!5431 (_1!24702 lt!1472869))) (_1!24702 lt!1472869)) (_2!24702 lt!1472869))))))

(declare-fun lt!1472868 () Unit!64025)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1479 (Regex!12219 List!44814) Unit!64025)

(assert (=> b!4128961 (= lt!1472868 (longestMatchIsAcceptedByMatchOrIsEmpty!1479 (regex!7314 (h!50111 rules!3756)) input!3238))))

(declare-fun res!1687836 () Bool)

(declare-fun findLongestMatchInner!1506 (Regex!12219 List!44814 Int List!44814 List!44814 Int) tuple2!43136)

(assert (=> b!4128961 (= res!1687836 (isEmpty!26605 (_1!24702 (findLongestMatchInner!1506 (regex!7314 (h!50111 rules!3756)) Nil!44690 (size!33092 Nil!44690) input!3238 input!3238 (size!33092 input!3238)))))))

(declare-fun e!2561903 () Bool)

(assert (=> b!4128961 (=> res!1687836 e!2561903)))

(assert (=> b!4128961 e!2561903))

(declare-fun lt!1472871 () Unit!64025)

(assert (=> b!4128961 (= lt!1472871 lt!1472868)))

(declare-fun lt!1472870 () Unit!64025)

(assert (=> b!4128961 (= lt!1472870 (lemmaSemiInverse!2172 (transformation!7314 (h!50111 rules!3756)) (seqFromList!5431 (_1!24702 lt!1472869))))))

(declare-fun b!4128962 () Bool)

(declare-fun res!1687837 () Bool)

(assert (=> b!4128962 (=> (not res!1687837) (not e!2561906))))

(assert (=> b!4128962 (= res!1687837 (= (value!229003 (_1!24701 (get!14578 lt!1472867))) (apply!10387 (transformation!7314 (rule!10404 (_1!24701 (get!14578 lt!1472867)))) (seqFromList!5431 (originalCharacters!7810 (_1!24701 (get!14578 lt!1472867)))))))))

(declare-fun b!4128963 () Bool)

(declare-fun res!1687841 () Bool)

(assert (=> b!4128963 (=> (not res!1687841) (not e!2561906))))

(assert (=> b!4128963 (= res!1687841 (< (size!33092 (_2!24701 (get!14578 lt!1472867))) (size!33092 input!3238)))))

(declare-fun b!4128964 () Bool)

(assert (=> b!4128964 (= e!2561903 (matchR!6050 (regex!7314 (h!50111 rules!3756)) (_1!24702 (findLongestMatchInner!1506 (regex!7314 (h!50111 rules!3756)) Nil!44690 (size!33092 Nil!44690) input!3238 input!3238 (size!33092 input!3238)))))))

(assert (= (and d!1223414 c!708580) b!4128957))

(assert (= (and d!1223414 (not c!708580)) b!4128961))

(assert (= (and b!4128961 (not res!1687836)) b!4128964))

(assert (= (and d!1223414 (not res!1687839)) b!4128960))

(assert (= (and b!4128960 res!1687840) b!4128956))

(assert (= (and b!4128956 res!1687838) b!4128963))

(assert (= (and b!4128963 res!1687841) b!4128959))

(assert (= (and b!4128959 res!1687842) b!4128962))

(assert (= (and b!4128962 res!1687837) b!4128958))

(declare-fun m!4727145 () Bool)

(assert (=> d!1223414 m!4727145))

(declare-fun m!4727147 () Bool)

(assert (=> d!1223414 m!4727147))

(declare-fun m!4727149 () Bool)

(assert (=> d!1223414 m!4727149))

(declare-fun m!4727151 () Bool)

(assert (=> d!1223414 m!4727151))

(declare-fun m!4727153 () Bool)

(assert (=> b!4128962 m!4727153))

(declare-fun m!4727155 () Bool)

(assert (=> b!4128962 m!4727155))

(assert (=> b!4128962 m!4727155))

(declare-fun m!4727157 () Bool)

(assert (=> b!4128962 m!4727157))

(assert (=> b!4128963 m!4727153))

(declare-fun m!4727159 () Bool)

(assert (=> b!4128963 m!4727159))

(declare-fun m!4727161 () Bool)

(assert (=> b!4128963 m!4727161))

(assert (=> b!4128956 m!4727153))

(declare-fun m!4727163 () Bool)

(assert (=> b!4128956 m!4727163))

(assert (=> b!4128956 m!4727163))

(declare-fun m!4727165 () Bool)

(assert (=> b!4128956 m!4727165))

(assert (=> b!4128956 m!4727165))

(declare-fun m!4727167 () Bool)

(assert (=> b!4128956 m!4727167))

(assert (=> b!4128958 m!4727153))

(declare-fun m!4727169 () Bool)

(assert (=> b!4128958 m!4727169))

(declare-fun m!4727171 () Bool)

(assert (=> b!4128964 m!4727171))

(assert (=> b!4128964 m!4727161))

(assert (=> b!4128964 m!4727171))

(assert (=> b!4128964 m!4727161))

(declare-fun m!4727173 () Bool)

(assert (=> b!4128964 m!4727173))

(declare-fun m!4727175 () Bool)

(assert (=> b!4128964 m!4727175))

(declare-fun m!4727177 () Bool)

(assert (=> b!4128961 m!4727177))

(declare-fun m!4727179 () Bool)

(assert (=> b!4128961 m!4727179))

(assert (=> b!4128961 m!4727171))

(assert (=> b!4128961 m!4727161))

(declare-fun m!4727181 () Bool)

(assert (=> b!4128961 m!4727181))

(assert (=> b!4128961 m!4727171))

(assert (=> b!4128961 m!4727161))

(assert (=> b!4128961 m!4727173))

(assert (=> b!4128961 m!4727177))

(declare-fun m!4727183 () Bool)

(assert (=> b!4128961 m!4727183))

(declare-fun m!4727185 () Bool)

(assert (=> b!4128961 m!4727185))

(assert (=> b!4128961 m!4727177))

(declare-fun m!4727187 () Bool)

(assert (=> b!4128961 m!4727187))

(assert (=> b!4128961 m!4727177))

(assert (=> b!4128960 m!4727153))

(assert (=> b!4128960 m!4727163))

(assert (=> b!4128960 m!4727163))

(assert (=> b!4128960 m!4727165))

(assert (=> b!4128960 m!4727165))

(declare-fun m!4727189 () Bool)

(assert (=> b!4128960 m!4727189))

(assert (=> b!4128959 m!4727153))

(assert (=> b!4128763 d!1223414))

(declare-fun d!1223442 () Bool)

(assert (=> d!1223442 (rulesInvariant!6200 thiss!25645 (t!341392 rules!3756))))

(declare-fun lt!1472874 () Unit!64025)

(declare-fun choose!25242 (LexerInterface!6903 Rule!14428 List!44815) Unit!64025)

(assert (=> d!1223442 (= lt!1472874 (choose!25242 thiss!25645 (h!50111 rules!3756) (t!341392 rules!3756)))))

(assert (=> d!1223442 (rulesInvariant!6200 thiss!25645 (Cons!44691 (h!50111 rules!3756) (t!341392 rules!3756)))))

(assert (=> d!1223442 (= (lemmaInvariantOnRulesThenOnTail!820 thiss!25645 (h!50111 rules!3756) (t!341392 rules!3756)) lt!1472874)))

(declare-fun bs!594969 () Bool)

(assert (= bs!594969 d!1223442))

(assert (=> bs!594969 m!4727001))

(declare-fun m!4727191 () Bool)

(assert (=> bs!594969 m!4727191))

(declare-fun m!4727193 () Bool)

(assert (=> bs!594969 m!4727193))

(assert (=> b!4128763 d!1223442))

(declare-fun bm!290288 () Bool)

(declare-fun call!290293 () Option!9622)

(assert (=> bm!290288 (= call!290293 (maxPrefixOneRule!3043 thiss!25645 (h!50111 (t!341392 rules!3756)) input!3238))))

(declare-fun b!4128983 () Bool)

(declare-fun res!1687857 () Bool)

(declare-fun e!2561915 () Bool)

(assert (=> b!4128983 (=> (not res!1687857) (not e!2561915))))

(declare-fun lt!1472888 () Option!9622)

(assert (=> b!4128983 (= res!1687857 (= (value!229003 (_1!24701 (get!14578 lt!1472888))) (apply!10387 (transformation!7314 (rule!10404 (_1!24701 (get!14578 lt!1472888)))) (seqFromList!5431 (originalCharacters!7810 (_1!24701 (get!14578 lt!1472888)))))))))

(declare-fun b!4128984 () Bool)

(assert (=> b!4128984 (= e!2561915 (contains!8990 (t!341392 rules!3756) (rule!10404 (_1!24701 (get!14578 lt!1472888)))))))

(declare-fun b!4128985 () Bool)

(declare-fun e!2561914 () Bool)

(assert (=> b!4128985 (= e!2561914 e!2561915)))

(declare-fun res!1687861 () Bool)

(assert (=> b!4128985 (=> (not res!1687861) (not e!2561915))))

(declare-fun isDefined!7245 (Option!9622) Bool)

(assert (=> b!4128985 (= res!1687861 (isDefined!7245 lt!1472888))))

(declare-fun b!4128986 () Bool)

(declare-fun res!1687862 () Bool)

(assert (=> b!4128986 (=> (not res!1687862) (not e!2561915))))

(assert (=> b!4128986 (= res!1687862 (matchR!6050 (regex!7314 (rule!10404 (_1!24701 (get!14578 lt!1472888)))) (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472888))))))))

(declare-fun d!1223444 () Bool)

(assert (=> d!1223444 e!2561914))

(declare-fun res!1687863 () Bool)

(assert (=> d!1223444 (=> res!1687863 e!2561914)))

(assert (=> d!1223444 (= res!1687863 (isEmpty!26607 lt!1472888))))

(declare-fun e!2561913 () Option!9622)

(assert (=> d!1223444 (= lt!1472888 e!2561913)))

(declare-fun c!708583 () Bool)

(assert (=> d!1223444 (= c!708583 (and ((_ is Cons!44691) (t!341392 rules!3756)) ((_ is Nil!44691) (t!341392 (t!341392 rules!3756)))))))

(declare-fun lt!1472885 () Unit!64025)

(declare-fun lt!1472887 () Unit!64025)

(assert (=> d!1223444 (= lt!1472885 lt!1472887)))

(assert (=> d!1223444 (isPrefix!4249 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2751 (List!44814 List!44814) Unit!64025)

(assert (=> d!1223444 (= lt!1472887 (lemmaIsPrefixRefl!2751 input!3238 input!3238))))

(declare-fun rulesValidInductive!2702 (LexerInterface!6903 List!44815) Bool)

(assert (=> d!1223444 (rulesValidInductive!2702 thiss!25645 (t!341392 rules!3756))))

(assert (=> d!1223444 (= (maxPrefix!4095 thiss!25645 (t!341392 rules!3756) input!3238) lt!1472888)))

(declare-fun b!4128987 () Bool)

(declare-fun res!1687859 () Bool)

(assert (=> b!4128987 (=> (not res!1687859) (not e!2561915))))

(assert (=> b!4128987 (= res!1687859 (= (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472888)))) (originalCharacters!7810 (_1!24701 (get!14578 lt!1472888)))))))

(declare-fun b!4128988 () Bool)

(declare-fun res!1687858 () Bool)

(assert (=> b!4128988 (=> (not res!1687858) (not e!2561915))))

(assert (=> b!4128988 (= res!1687858 (< (size!33092 (_2!24701 (get!14578 lt!1472888))) (size!33092 input!3238)))))

(declare-fun b!4128989 () Bool)

(declare-fun lt!1472889 () Option!9622)

(declare-fun lt!1472886 () Option!9622)

(assert (=> b!4128989 (= e!2561913 (ite (and ((_ is None!9621) lt!1472889) ((_ is None!9621) lt!1472886)) None!9621 (ite ((_ is None!9621) lt!1472886) lt!1472889 (ite ((_ is None!9621) lt!1472889) lt!1472886 (ite (>= (size!33091 (_1!24701 (v!40223 lt!1472889))) (size!33091 (_1!24701 (v!40223 lt!1472886)))) lt!1472889 lt!1472886)))))))

(assert (=> b!4128989 (= lt!1472889 call!290293)))

(assert (=> b!4128989 (= lt!1472886 (maxPrefix!4095 thiss!25645 (t!341392 (t!341392 rules!3756)) input!3238))))

(declare-fun b!4128990 () Bool)

(declare-fun res!1687860 () Bool)

(assert (=> b!4128990 (=> (not res!1687860) (not e!2561915))))

(assert (=> b!4128990 (= res!1687860 (= (++!11571 (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472888)))) (_2!24701 (get!14578 lt!1472888))) input!3238))))

(declare-fun b!4128991 () Bool)

(assert (=> b!4128991 (= e!2561913 call!290293)))

(assert (= (and d!1223444 c!708583) b!4128991))

(assert (= (and d!1223444 (not c!708583)) b!4128989))

(assert (= (or b!4128991 b!4128989) bm!290288))

(assert (= (and d!1223444 (not res!1687863)) b!4128985))

(assert (= (and b!4128985 res!1687861) b!4128987))

(assert (= (and b!4128987 res!1687859) b!4128988))

(assert (= (and b!4128988 res!1687858) b!4128990))

(assert (= (and b!4128990 res!1687860) b!4128983))

(assert (= (and b!4128983 res!1687857) b!4128986))

(assert (= (and b!4128986 res!1687862) b!4128984))

(declare-fun m!4727195 () Bool)

(assert (=> b!4128990 m!4727195))

(declare-fun m!4727197 () Bool)

(assert (=> b!4128990 m!4727197))

(assert (=> b!4128990 m!4727197))

(declare-fun m!4727199 () Bool)

(assert (=> b!4128990 m!4727199))

(assert (=> b!4128990 m!4727199))

(declare-fun m!4727201 () Bool)

(assert (=> b!4128990 m!4727201))

(declare-fun m!4727203 () Bool)

(assert (=> b!4128985 m!4727203))

(assert (=> b!4128986 m!4727195))

(assert (=> b!4128986 m!4727197))

(assert (=> b!4128986 m!4727197))

(assert (=> b!4128986 m!4727199))

(assert (=> b!4128986 m!4727199))

(declare-fun m!4727205 () Bool)

(assert (=> b!4128986 m!4727205))

(assert (=> b!4128987 m!4727195))

(assert (=> b!4128987 m!4727197))

(assert (=> b!4128987 m!4727197))

(assert (=> b!4128987 m!4727199))

(assert (=> b!4128983 m!4727195))

(declare-fun m!4727207 () Bool)

(assert (=> b!4128983 m!4727207))

(assert (=> b!4128983 m!4727207))

(declare-fun m!4727209 () Bool)

(assert (=> b!4128983 m!4727209))

(assert (=> b!4128988 m!4727195))

(declare-fun m!4727211 () Bool)

(assert (=> b!4128988 m!4727211))

(assert (=> b!4128988 m!4727161))

(declare-fun m!4727213 () Bool)

(assert (=> d!1223444 m!4727213))

(declare-fun m!4727215 () Bool)

(assert (=> d!1223444 m!4727215))

(declare-fun m!4727217 () Bool)

(assert (=> d!1223444 m!4727217))

(declare-fun m!4727219 () Bool)

(assert (=> d!1223444 m!4727219))

(declare-fun m!4727221 () Bool)

(assert (=> b!4128989 m!4727221))

(assert (=> b!4128984 m!4727195))

(declare-fun m!4727223 () Bool)

(assert (=> b!4128984 m!4727223))

(declare-fun m!4727225 () Bool)

(assert (=> bm!290288 m!4727225))

(assert (=> b!4128763 d!1223444))

(declare-fun d!1223446 () Bool)

(assert (=> d!1223446 (= (isEmpty!26606 (t!341392 rules!3756)) ((_ is Nil!44691) (t!341392 rules!3756)))))

(assert (=> b!4128763 d!1223446))

(declare-fun b!4129001 () Bool)

(declare-fun e!2561921 () Int)

(declare-fun e!2561922 () Int)

(assert (=> b!4129001 (= e!2561921 e!2561922)))

(declare-fun c!708589 () Bool)

(assert (=> b!4129001 (= c!708589 (and ((_ is Cons!44691) (t!341392 rules!3756)) (not (= (h!50111 (t!341392 rules!3756)) rBis!149))))))

(declare-fun b!4129003 () Bool)

(assert (=> b!4129003 (= e!2561922 (- 1))))

(declare-fun b!4129000 () Bool)

(assert (=> b!4129000 (= e!2561921 0)))

(declare-fun d!1223448 () Bool)

(declare-fun lt!1472892 () Int)

(assert (=> d!1223448 (>= lt!1472892 0)))

(assert (=> d!1223448 (= lt!1472892 e!2561921)))

(declare-fun c!708588 () Bool)

(assert (=> d!1223448 (= c!708588 (and ((_ is Cons!44691) (t!341392 rules!3756)) (= (h!50111 (t!341392 rules!3756)) rBis!149)))))

(assert (=> d!1223448 (contains!8990 (t!341392 rules!3756) rBis!149)))

(assert (=> d!1223448 (= (getIndex!662 (t!341392 rules!3756) rBis!149) lt!1472892)))

(declare-fun b!4129002 () Bool)

(assert (=> b!4129002 (= e!2561922 (+ 1 (getIndex!662 (t!341392 (t!341392 rules!3756)) rBis!149)))))

(assert (= (and d!1223448 c!708588) b!4129000))

(assert (= (and d!1223448 (not c!708588)) b!4129001))

(assert (= (and b!4129001 c!708589) b!4129002))

(assert (= (and b!4129001 (not c!708589)) b!4129003))

(assert (=> d!1223448 m!4726965))

(declare-fun m!4727227 () Bool)

(assert (=> b!4129002 m!4727227))

(assert (=> b!4128753 d!1223448))

(declare-fun b!4129005 () Bool)

(declare-fun e!2561923 () Int)

(declare-fun e!2561924 () Int)

(assert (=> b!4129005 (= e!2561923 e!2561924)))

(declare-fun c!708591 () Bool)

(assert (=> b!4129005 (= c!708591 (and ((_ is Cons!44691) (t!341392 rules!3756)) (not (= (h!50111 (t!341392 rules!3756)) r!4008))))))

(declare-fun b!4129007 () Bool)

(assert (=> b!4129007 (= e!2561924 (- 1))))

(declare-fun b!4129004 () Bool)

(assert (=> b!4129004 (= e!2561923 0)))

(declare-fun d!1223450 () Bool)

(declare-fun lt!1472893 () Int)

(assert (=> d!1223450 (>= lt!1472893 0)))

(assert (=> d!1223450 (= lt!1472893 e!2561923)))

(declare-fun c!708590 () Bool)

(assert (=> d!1223450 (= c!708590 (and ((_ is Cons!44691) (t!341392 rules!3756)) (= (h!50111 (t!341392 rules!3756)) r!4008)))))

(assert (=> d!1223450 (contains!8990 (t!341392 rules!3756) r!4008)))

(assert (=> d!1223450 (= (getIndex!662 (t!341392 rules!3756) r!4008) lt!1472893)))

(declare-fun b!4129006 () Bool)

(assert (=> b!4129006 (= e!2561924 (+ 1 (getIndex!662 (t!341392 (t!341392 rules!3756)) r!4008)))))

(assert (= (and d!1223450 c!708590) b!4129004))

(assert (= (and d!1223450 (not c!708590)) b!4129005))

(assert (= (and b!4129005 c!708591) b!4129006))

(assert (= (and b!4129005 (not c!708591)) b!4129007))

(assert (=> d!1223450 m!4726969))

(declare-fun m!4727229 () Bool)

(assert (=> b!4129006 m!4727229))

(assert (=> b!4128753 d!1223450))

(declare-fun d!1223452 () Bool)

(assert (=> d!1223452 (= (isEmpty!26605 p!2912) ((_ is Nil!44690) p!2912))))

(assert (=> b!4128748 d!1223452))

(declare-fun bm!290295 () Bool)

(declare-fun call!290301 () Bool)

(declare-fun call!290300 () Bool)

(assert (=> bm!290295 (= call!290301 call!290300)))

(declare-fun b!4129026 () Bool)

(declare-fun e!2561944 () Bool)

(declare-fun call!290302 () Bool)

(assert (=> b!4129026 (= e!2561944 call!290302)))

(declare-fun c!708597 () Bool)

(declare-fun bm!290296 () Bool)

(declare-fun c!708596 () Bool)

(assert (=> bm!290296 (= call!290300 (validRegex!5496 (ite c!708596 (reg!12548 (regex!7314 rBis!149)) (ite c!708597 (regOne!24951 (regex!7314 rBis!149)) (regOne!24950 (regex!7314 rBis!149))))))))

(declare-fun d!1223454 () Bool)

(declare-fun res!1687877 () Bool)

(declare-fun e!2561941 () Bool)

(assert (=> d!1223454 (=> res!1687877 e!2561941)))

(assert (=> d!1223454 (= res!1687877 ((_ is ElementMatch!12219) (regex!7314 rBis!149)))))

(assert (=> d!1223454 (= (validRegex!5496 (regex!7314 rBis!149)) e!2561941)))

(declare-fun bm!290297 () Bool)

(assert (=> bm!290297 (= call!290302 (validRegex!5496 (ite c!708597 (regTwo!24951 (regex!7314 rBis!149)) (regTwo!24950 (regex!7314 rBis!149)))))))

(declare-fun b!4129027 () Bool)

(declare-fun res!1687875 () Bool)

(assert (=> b!4129027 (=> (not res!1687875) (not e!2561944))))

(assert (=> b!4129027 (= res!1687875 call!290301)))

(declare-fun e!2561942 () Bool)

(assert (=> b!4129027 (= e!2561942 e!2561944)))

(declare-fun b!4129028 () Bool)

(declare-fun e!2561939 () Bool)

(declare-fun e!2561940 () Bool)

(assert (=> b!4129028 (= e!2561939 e!2561940)))

(declare-fun res!1687878 () Bool)

(declare-fun nullable!4290 (Regex!12219) Bool)

(assert (=> b!4129028 (= res!1687878 (not (nullable!4290 (reg!12548 (regex!7314 rBis!149)))))))

(assert (=> b!4129028 (=> (not res!1687878) (not e!2561940))))

(declare-fun b!4129029 () Bool)

(assert (=> b!4129029 (= e!2561941 e!2561939)))

(assert (=> b!4129029 (= c!708596 ((_ is Star!12219) (regex!7314 rBis!149)))))

(declare-fun b!4129030 () Bool)

(declare-fun res!1687876 () Bool)

(declare-fun e!2561943 () Bool)

(assert (=> b!4129030 (=> res!1687876 e!2561943)))

(assert (=> b!4129030 (= res!1687876 (not ((_ is Concat!19764) (regex!7314 rBis!149))))))

(assert (=> b!4129030 (= e!2561942 e!2561943)))

(declare-fun b!4129031 () Bool)

(declare-fun e!2561945 () Bool)

(assert (=> b!4129031 (= e!2561943 e!2561945)))

(declare-fun res!1687874 () Bool)

(assert (=> b!4129031 (=> (not res!1687874) (not e!2561945))))

(assert (=> b!4129031 (= res!1687874 call!290301)))

(declare-fun b!4129032 () Bool)

(assert (=> b!4129032 (= e!2561940 call!290300)))

(declare-fun b!4129033 () Bool)

(assert (=> b!4129033 (= e!2561939 e!2561942)))

(assert (=> b!4129033 (= c!708597 ((_ is Union!12219) (regex!7314 rBis!149)))))

(declare-fun b!4129034 () Bool)

(assert (=> b!4129034 (= e!2561945 call!290302)))

(assert (= (and d!1223454 (not res!1687877)) b!4129029))

(assert (= (and b!4129029 c!708596) b!4129028))

(assert (= (and b!4129029 (not c!708596)) b!4129033))

(assert (= (and b!4129028 res!1687878) b!4129032))

(assert (= (and b!4129033 c!708597) b!4129027))

(assert (= (and b!4129033 (not c!708597)) b!4129030))

(assert (= (and b!4129027 res!1687875) b!4129026))

(assert (= (and b!4129030 (not res!1687876)) b!4129031))

(assert (= (and b!4129031 res!1687874) b!4129034))

(assert (= (or b!4129027 b!4129031) bm!290295))

(assert (= (or b!4129026 b!4129034) bm!290297))

(assert (= (or b!4129032 bm!290295) bm!290296))

(declare-fun m!4727231 () Bool)

(assert (=> bm!290296 m!4727231))

(declare-fun m!4727233 () Bool)

(assert (=> bm!290297 m!4727233))

(declare-fun m!4727235 () Bool)

(assert (=> b!4129028 m!4727235))

(assert (=> b!4128759 d!1223454))

(declare-fun bm!290300 () Bool)

(declare-fun call!290305 () Bool)

(assert (=> bm!290300 (= call!290305 (isEmpty!26605 p!2912))))

(declare-fun b!4129063 () Bool)

(declare-fun res!1687896 () Bool)

(declare-fun e!2561963 () Bool)

(assert (=> b!4129063 (=> res!1687896 e!2561963)))

(declare-fun e!2561962 () Bool)

(assert (=> b!4129063 (= res!1687896 e!2561962)))

(declare-fun res!1687901 () Bool)

(assert (=> b!4129063 (=> (not res!1687901) (not e!2561962))))

(declare-fun lt!1472896 () Bool)

(assert (=> b!4129063 (= res!1687901 lt!1472896)))

(declare-fun b!4129064 () Bool)

(declare-fun e!2561965 () Bool)

(assert (=> b!4129064 (= e!2561963 e!2561965)))

(declare-fun res!1687897 () Bool)

(assert (=> b!4129064 (=> (not res!1687897) (not e!2561965))))

(assert (=> b!4129064 (= res!1687897 (not lt!1472896))))

(declare-fun b!4129065 () Bool)

(declare-fun head!8698 (List!44814) C!24624)

(assert (=> b!4129065 (= e!2561962 (= (head!8698 p!2912) (c!708541 (regex!7314 rBis!149))))))

(declare-fun b!4129066 () Bool)

(declare-fun e!2561964 () Bool)

(assert (=> b!4129066 (= e!2561965 e!2561964)))

(declare-fun res!1687900 () Bool)

(assert (=> b!4129066 (=> res!1687900 e!2561964)))

(assert (=> b!4129066 (= res!1687900 call!290305)))

(declare-fun b!4129067 () Bool)

(declare-fun res!1687895 () Bool)

(assert (=> b!4129067 (=> (not res!1687895) (not e!2561962))))

(declare-fun tail!6471 (List!44814) List!44814)

(assert (=> b!4129067 (= res!1687895 (isEmpty!26605 (tail!6471 p!2912)))))

(declare-fun b!4129068 () Bool)

(declare-fun e!2561961 () Bool)

(declare-fun derivativeStep!3685 (Regex!12219 C!24624) Regex!12219)

(assert (=> b!4129068 (= e!2561961 (matchR!6050 (derivativeStep!3685 (regex!7314 rBis!149) (head!8698 p!2912)) (tail!6471 p!2912)))))

(declare-fun b!4129069 () Bool)

(assert (=> b!4129069 (= e!2561961 (nullable!4290 (regex!7314 rBis!149)))))

(declare-fun d!1223456 () Bool)

(declare-fun e!2561960 () Bool)

(assert (=> d!1223456 e!2561960))

(declare-fun c!708606 () Bool)

(assert (=> d!1223456 (= c!708606 ((_ is EmptyExpr!12219) (regex!7314 rBis!149)))))

(assert (=> d!1223456 (= lt!1472896 e!2561961)))

(declare-fun c!708605 () Bool)

(assert (=> d!1223456 (= c!708605 (isEmpty!26605 p!2912))))

(assert (=> d!1223456 (validRegex!5496 (regex!7314 rBis!149))))

(assert (=> d!1223456 (= (matchR!6050 (regex!7314 rBis!149) p!2912) lt!1472896)))

(declare-fun b!4129070 () Bool)

(declare-fun res!1687898 () Bool)

(assert (=> b!4129070 (=> res!1687898 e!2561964)))

(assert (=> b!4129070 (= res!1687898 (not (isEmpty!26605 (tail!6471 p!2912))))))

(declare-fun b!4129071 () Bool)

(declare-fun res!1687902 () Bool)

(assert (=> b!4129071 (=> (not res!1687902) (not e!2561962))))

(assert (=> b!4129071 (= res!1687902 (not call!290305))))

(declare-fun b!4129072 () Bool)

(assert (=> b!4129072 (= e!2561960 (= lt!1472896 call!290305))))

(declare-fun b!4129073 () Bool)

(declare-fun e!2561966 () Bool)

(assert (=> b!4129073 (= e!2561960 e!2561966)))

(declare-fun c!708604 () Bool)

(assert (=> b!4129073 (= c!708604 ((_ is EmptyLang!12219) (regex!7314 rBis!149)))))

(declare-fun b!4129074 () Bool)

(assert (=> b!4129074 (= e!2561966 (not lt!1472896))))

(declare-fun b!4129075 () Bool)

(declare-fun res!1687899 () Bool)

(assert (=> b!4129075 (=> res!1687899 e!2561963)))

(assert (=> b!4129075 (= res!1687899 (not ((_ is ElementMatch!12219) (regex!7314 rBis!149))))))

(assert (=> b!4129075 (= e!2561966 e!2561963)))

(declare-fun b!4129076 () Bool)

(assert (=> b!4129076 (= e!2561964 (not (= (head!8698 p!2912) (c!708541 (regex!7314 rBis!149)))))))

(assert (= (and d!1223456 c!708605) b!4129069))

(assert (= (and d!1223456 (not c!708605)) b!4129068))

(assert (= (and d!1223456 c!708606) b!4129072))

(assert (= (and d!1223456 (not c!708606)) b!4129073))

(assert (= (and b!4129073 c!708604) b!4129074))

(assert (= (and b!4129073 (not c!708604)) b!4129075))

(assert (= (and b!4129075 (not res!1687899)) b!4129063))

(assert (= (and b!4129063 res!1687901) b!4129071))

(assert (= (and b!4129071 res!1687902) b!4129067))

(assert (= (and b!4129067 res!1687895) b!4129065))

(assert (= (and b!4129063 (not res!1687896)) b!4129064))

(assert (= (and b!4129064 res!1687897) b!4129066))

(assert (= (and b!4129066 (not res!1687900)) b!4129070))

(assert (= (and b!4129070 (not res!1687898)) b!4129076))

(assert (= (or b!4129072 b!4129066 b!4129071) bm!290300))

(declare-fun m!4727237 () Bool)

(assert (=> b!4129067 m!4727237))

(assert (=> b!4129067 m!4727237))

(declare-fun m!4727239 () Bool)

(assert (=> b!4129067 m!4727239))

(assert (=> d!1223456 m!4727003))

(assert (=> d!1223456 m!4727025))

(declare-fun m!4727241 () Bool)

(assert (=> b!4129065 m!4727241))

(declare-fun m!4727243 () Bool)

(assert (=> b!4129069 m!4727243))

(assert (=> b!4129076 m!4727241))

(assert (=> b!4129068 m!4727241))

(assert (=> b!4129068 m!4727241))

(declare-fun m!4727245 () Bool)

(assert (=> b!4129068 m!4727245))

(assert (=> b!4129068 m!4727237))

(assert (=> b!4129068 m!4727245))

(assert (=> b!4129068 m!4727237))

(declare-fun m!4727247 () Bool)

(assert (=> b!4129068 m!4727247))

(assert (=> bm!290300 m!4727003))

(assert (=> b!4129070 m!4727237))

(assert (=> b!4129070 m!4727237))

(assert (=> b!4129070 m!4727239))

(assert (=> b!4128759 d!1223456))

(declare-fun d!1223458 () Bool)

(assert (=> d!1223458 (not (matchR!6050 (regex!7314 rBis!149) p!2912))))

(declare-fun lt!1472899 () Unit!64025)

(declare-fun choose!25244 (LexerInterface!6903 List!44815 Rule!14428 List!44814 List!44814 Rule!14428) Unit!64025)

(assert (=> d!1223458 (= lt!1472899 (choose!25244 thiss!25645 (t!341392 rules!3756) r!4008 p!2912 input!3238 rBis!149))))

(assert (=> d!1223458 (isPrefix!4249 p!2912 input!3238)))

(assert (=> d!1223458 (= (lemmaMaxPrefNoSmallerRuleMatches!310 thiss!25645 (t!341392 rules!3756) r!4008 p!2912 input!3238 rBis!149) lt!1472899)))

(declare-fun bs!594970 () Bool)

(assert (= bs!594970 d!1223458))

(assert (=> bs!594970 m!4727027))

(declare-fun m!4727249 () Bool)

(assert (=> bs!594970 m!4727249))

(assert (=> bs!594970 m!4726973))

(assert (=> b!4128759 d!1223458))

(declare-fun d!1223460 () Bool)

(assert (=> d!1223460 (ruleValid!3122 thiss!25645 r!4008)))

(declare-fun lt!1472902 () Unit!64025)

(declare-fun choose!25245 (LexerInterface!6903 Rule!14428 List!44815) Unit!64025)

(assert (=> d!1223460 (= lt!1472902 (choose!25245 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1223460 (contains!8990 rules!3756 r!4008)))

(assert (=> d!1223460 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2166 thiss!25645 r!4008 rules!3756) lt!1472902)))

(declare-fun bs!594971 () Bool)

(assert (= bs!594971 d!1223460))

(assert (=> bs!594971 m!4726971))

(declare-fun m!4727251 () Bool)

(assert (=> bs!594971 m!4727251))

(assert (=> bs!594971 m!4726967))

(assert (=> b!4128749 d!1223460))

(declare-fun d!1223462 () Bool)

(declare-fun res!1687907 () Bool)

(declare-fun e!2561969 () Bool)

(assert (=> d!1223462 (=> (not res!1687907) (not e!2561969))))

(assert (=> d!1223462 (= res!1687907 (validRegex!5496 (regex!7314 rBis!149)))))

(assert (=> d!1223462 (= (ruleValid!3122 thiss!25645 rBis!149) e!2561969)))

(declare-fun b!4129081 () Bool)

(declare-fun res!1687908 () Bool)

(assert (=> b!4129081 (=> (not res!1687908) (not e!2561969))))

(assert (=> b!4129081 (= res!1687908 (not (nullable!4290 (regex!7314 rBis!149))))))

(declare-fun b!4129082 () Bool)

(assert (=> b!4129082 (= e!2561969 (not (= (tag!8174 rBis!149) (String!51471 ""))))))

(assert (= (and d!1223462 res!1687907) b!4129081))

(assert (= (and b!4129081 res!1687908) b!4129082))

(assert (=> d!1223462 m!4727025))

(assert (=> b!4129081 m!4727243))

(assert (=> b!4128749 d!1223462))

(declare-fun d!1223464 () Bool)

(assert (=> d!1223464 (ruleValid!3122 thiss!25645 rBis!149)))

(declare-fun lt!1472903 () Unit!64025)

(assert (=> d!1223464 (= lt!1472903 (choose!25245 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1223464 (contains!8990 rules!3756 rBis!149)))

(assert (=> d!1223464 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2166 thiss!25645 rBis!149 rules!3756) lt!1472903)))

(declare-fun bs!594972 () Bool)

(assert (= bs!594972 d!1223464))

(assert (=> bs!594972 m!4727015))

(declare-fun m!4727253 () Bool)

(assert (=> bs!594972 m!4727253))

(assert (=> bs!594972 m!4727031))

(assert (=> b!4128749 d!1223464))

(declare-fun d!1223466 () Bool)

(declare-fun lt!1472904 () Bool)

(assert (=> d!1223466 (= lt!1472904 (select (content!6892 rules!3756) rBis!149))))

(declare-fun e!2561970 () Bool)

(assert (=> d!1223466 (= lt!1472904 e!2561970)))

(declare-fun res!1687910 () Bool)

(assert (=> d!1223466 (=> (not res!1687910) (not e!2561970))))

(assert (=> d!1223466 (= res!1687910 ((_ is Cons!44691) rules!3756))))

(assert (=> d!1223466 (= (contains!8990 rules!3756 rBis!149) lt!1472904)))

(declare-fun b!4129083 () Bool)

(declare-fun e!2561971 () Bool)

(assert (=> b!4129083 (= e!2561970 e!2561971)))

(declare-fun res!1687909 () Bool)

(assert (=> b!4129083 (=> res!1687909 e!2561971)))

(assert (=> b!4129083 (= res!1687909 (= (h!50111 rules!3756) rBis!149))))

(declare-fun b!4129084 () Bool)

(assert (=> b!4129084 (= e!2561971 (contains!8990 (t!341392 rules!3756) rBis!149))))

(assert (= (and d!1223466 res!1687910) b!4129083))

(assert (= (and b!4129083 (not res!1687909)) b!4129084))

(declare-fun m!4727255 () Bool)

(assert (=> d!1223466 m!4727255))

(declare-fun m!4727257 () Bool)

(assert (=> d!1223466 m!4727257))

(assert (=> b!4129084 m!4726965))

(assert (=> b!4128760 d!1223466))

(declare-fun d!1223468 () Bool)

(declare-fun res!1687911 () Bool)

(declare-fun e!2561972 () Bool)

(assert (=> d!1223468 (=> (not res!1687911) (not e!2561972))))

(assert (=> d!1223468 (= res!1687911 (rulesValid!2866 thiss!25645 rules!3756))))

(assert (=> d!1223468 (= (rulesInvariant!6200 thiss!25645 rules!3756) e!2561972)))

(declare-fun b!4129085 () Bool)

(assert (=> b!4129085 (= e!2561972 (noDuplicateTag!2949 thiss!25645 rules!3756 Nil!44693))))

(assert (= (and d!1223468 res!1687911) b!4129085))

(declare-fun m!4727259 () Bool)

(assert (=> d!1223468 m!4727259))

(declare-fun m!4727261 () Bool)

(assert (=> b!4129085 m!4727261))

(assert (=> b!4128750 d!1223468))

(declare-fun bm!290301 () Bool)

(declare-fun call!290306 () Bool)

(assert (=> bm!290301 (= call!290306 (isEmpty!26605 p!2912))))

(declare-fun b!4129086 () Bool)

(declare-fun res!1687913 () Bool)

(declare-fun e!2561976 () Bool)

(assert (=> b!4129086 (=> res!1687913 e!2561976)))

(declare-fun e!2561975 () Bool)

(assert (=> b!4129086 (= res!1687913 e!2561975)))

(declare-fun res!1687918 () Bool)

(assert (=> b!4129086 (=> (not res!1687918) (not e!2561975))))

(declare-fun lt!1472905 () Bool)

(assert (=> b!4129086 (= res!1687918 lt!1472905)))

(declare-fun b!4129087 () Bool)

(declare-fun e!2561978 () Bool)

(assert (=> b!4129087 (= e!2561976 e!2561978)))

(declare-fun res!1687914 () Bool)

(assert (=> b!4129087 (=> (not res!1687914) (not e!2561978))))

(assert (=> b!4129087 (= res!1687914 (not lt!1472905))))

(declare-fun b!4129088 () Bool)

(assert (=> b!4129088 (= e!2561975 (= (head!8698 p!2912) (c!708541 (regex!7314 r!4008))))))

(declare-fun b!4129089 () Bool)

(declare-fun e!2561977 () Bool)

(assert (=> b!4129089 (= e!2561978 e!2561977)))

(declare-fun res!1687917 () Bool)

(assert (=> b!4129089 (=> res!1687917 e!2561977)))

(assert (=> b!4129089 (= res!1687917 call!290306)))

(declare-fun b!4129090 () Bool)

(declare-fun res!1687912 () Bool)

(assert (=> b!4129090 (=> (not res!1687912) (not e!2561975))))

(assert (=> b!4129090 (= res!1687912 (isEmpty!26605 (tail!6471 p!2912)))))

(declare-fun b!4129091 () Bool)

(declare-fun e!2561974 () Bool)

(assert (=> b!4129091 (= e!2561974 (matchR!6050 (derivativeStep!3685 (regex!7314 r!4008) (head!8698 p!2912)) (tail!6471 p!2912)))))

(declare-fun b!4129092 () Bool)

(assert (=> b!4129092 (= e!2561974 (nullable!4290 (regex!7314 r!4008)))))

(declare-fun d!1223470 () Bool)

(declare-fun e!2561973 () Bool)

(assert (=> d!1223470 e!2561973))

(declare-fun c!708609 () Bool)

(assert (=> d!1223470 (= c!708609 ((_ is EmptyExpr!12219) (regex!7314 r!4008)))))

(assert (=> d!1223470 (= lt!1472905 e!2561974)))

(declare-fun c!708608 () Bool)

(assert (=> d!1223470 (= c!708608 (isEmpty!26605 p!2912))))

(assert (=> d!1223470 (validRegex!5496 (regex!7314 r!4008))))

(assert (=> d!1223470 (= (matchR!6050 (regex!7314 r!4008) p!2912) lt!1472905)))

(declare-fun b!4129093 () Bool)

(declare-fun res!1687915 () Bool)

(assert (=> b!4129093 (=> res!1687915 e!2561977)))

(assert (=> b!4129093 (= res!1687915 (not (isEmpty!26605 (tail!6471 p!2912))))))

(declare-fun b!4129094 () Bool)

(declare-fun res!1687919 () Bool)

(assert (=> b!4129094 (=> (not res!1687919) (not e!2561975))))

(assert (=> b!4129094 (= res!1687919 (not call!290306))))

(declare-fun b!4129095 () Bool)

(assert (=> b!4129095 (= e!2561973 (= lt!1472905 call!290306))))

(declare-fun b!4129096 () Bool)

(declare-fun e!2561979 () Bool)

(assert (=> b!4129096 (= e!2561973 e!2561979)))

(declare-fun c!708607 () Bool)

(assert (=> b!4129096 (= c!708607 ((_ is EmptyLang!12219) (regex!7314 r!4008)))))

(declare-fun b!4129097 () Bool)

(assert (=> b!4129097 (= e!2561979 (not lt!1472905))))

(declare-fun b!4129098 () Bool)

(declare-fun res!1687916 () Bool)

(assert (=> b!4129098 (=> res!1687916 e!2561976)))

(assert (=> b!4129098 (= res!1687916 (not ((_ is ElementMatch!12219) (regex!7314 r!4008))))))

(assert (=> b!4129098 (= e!2561979 e!2561976)))

(declare-fun b!4129099 () Bool)

(assert (=> b!4129099 (= e!2561977 (not (= (head!8698 p!2912) (c!708541 (regex!7314 r!4008)))))))

(assert (= (and d!1223470 c!708608) b!4129092))

(assert (= (and d!1223470 (not c!708608)) b!4129091))

(assert (= (and d!1223470 c!708609) b!4129095))

(assert (= (and d!1223470 (not c!708609)) b!4129096))

(assert (= (and b!4129096 c!708607) b!4129097))

(assert (= (and b!4129096 (not c!708607)) b!4129098))

(assert (= (and b!4129098 (not res!1687916)) b!4129086))

(assert (= (and b!4129086 res!1687918) b!4129094))

(assert (= (and b!4129094 res!1687919) b!4129090))

(assert (= (and b!4129090 res!1687912) b!4129088))

(assert (= (and b!4129086 (not res!1687913)) b!4129087))

(assert (= (and b!4129087 res!1687914) b!4129089))

(assert (= (and b!4129089 (not res!1687917)) b!4129093))

(assert (= (and b!4129093 (not res!1687915)) b!4129099))

(assert (= (or b!4129095 b!4129089 b!4129094) bm!290301))

(assert (=> b!4129090 m!4727237))

(assert (=> b!4129090 m!4727237))

(assert (=> b!4129090 m!4727239))

(assert (=> d!1223470 m!4727003))

(declare-fun m!4727263 () Bool)

(assert (=> d!1223470 m!4727263))

(assert (=> b!4129088 m!4727241))

(declare-fun m!4727265 () Bool)

(assert (=> b!4129092 m!4727265))

(assert (=> b!4129099 m!4727241))

(assert (=> b!4129091 m!4727241))

(assert (=> b!4129091 m!4727241))

(declare-fun m!4727267 () Bool)

(assert (=> b!4129091 m!4727267))

(assert (=> b!4129091 m!4727237))

(assert (=> b!4129091 m!4727267))

(assert (=> b!4129091 m!4727237))

(declare-fun m!4727269 () Bool)

(assert (=> b!4129091 m!4727269))

(assert (=> bm!290301 m!4727003))

(assert (=> b!4129093 m!4727237))

(assert (=> b!4129093 m!4727237))

(assert (=> b!4129093 m!4727239))

(assert (=> b!4128761 d!1223470))

(declare-fun b!4129218 () Bool)

(declare-fun e!2562045 () Bool)

(assert (=> b!4129218 (= e!2562045 true)))

(declare-fun d!1223472 () Bool)

(assert (=> d!1223472 e!2562045))

(assert (= d!1223472 b!4129218))

(declare-fun lambda!128803 () Int)

(declare-fun order!23545 () Int)

(declare-fun order!23547 () Int)

(declare-fun dynLambda!19129 (Int Int) Int)

(declare-fun dynLambda!19130 (Int Int) Int)

(assert (=> b!4129218 (< (dynLambda!19129 order!23545 (toValue!9974 (transformation!7314 r!4008))) (dynLambda!19130 order!23547 lambda!128803))))

(declare-fun order!23549 () Int)

(declare-fun dynLambda!19131 (Int Int) Int)

(assert (=> b!4129218 (< (dynLambda!19131 order!23549 (toChars!9833 (transformation!7314 r!4008))) (dynLambda!19130 order!23547 lambda!128803))))

(declare-fun dynLambda!19132 (Int TokenValue!7544) BalanceConc!26644)

(declare-fun dynLambda!19133 (Int BalanceConc!26644) TokenValue!7544)

(assert (=> d!1223472 (= (list!16380 (dynLambda!19132 (toChars!9833 (transformation!7314 r!4008)) (dynLambda!19133 (toValue!9974 (transformation!7314 r!4008)) lt!1472811))) (list!16380 lt!1472811))))

(declare-fun lt!1472946 () Unit!64025)

(declare-fun ForallOf!934 (Int BalanceConc!26644) Unit!64025)

(assert (=> d!1223472 (= lt!1472946 (ForallOf!934 lambda!128803 lt!1472811))))

(assert (=> d!1223472 (= (lemmaSemiInverse!2172 (transformation!7314 r!4008) lt!1472811) lt!1472946)))

(declare-fun b_lambda!121231 () Bool)

(assert (=> (not b_lambda!121231) (not d!1223472)))

(declare-fun tb!247815 () Bool)

(declare-fun t!341411 () Bool)

(assert (=> (and b!4128752 (= (toChars!9833 (transformation!7314 rBis!149)) (toChars!9833 (transformation!7314 r!4008))) t!341411) tb!247815))

(declare-fun e!2562048 () Bool)

(declare-fun b!4129223 () Bool)

(declare-fun tp!1258261 () Bool)

(declare-fun inv!59283 (Conc!13525) Bool)

(assert (=> b!4129223 (= e!2562048 (and (inv!59283 (c!708540 (dynLambda!19132 (toChars!9833 (transformation!7314 r!4008)) (dynLambda!19133 (toValue!9974 (transformation!7314 r!4008)) lt!1472811)))) tp!1258261))))

(declare-fun result!301138 () Bool)

(declare-fun inv!59284 (BalanceConc!26644) Bool)

(assert (=> tb!247815 (= result!301138 (and (inv!59284 (dynLambda!19132 (toChars!9833 (transformation!7314 r!4008)) (dynLambda!19133 (toValue!9974 (transformation!7314 r!4008)) lt!1472811))) e!2562048))))

(assert (= tb!247815 b!4129223))

(declare-fun m!4727393 () Bool)

(assert (=> b!4129223 m!4727393))

(declare-fun m!4727395 () Bool)

(assert (=> tb!247815 m!4727395))

(assert (=> d!1223472 t!341411))

(declare-fun b_and!319883 () Bool)

(assert (= b_and!319851 (and (=> t!341411 result!301138) b_and!319883)))

(declare-fun t!341413 () Bool)

(declare-fun tb!247817 () Bool)

(assert (=> (and b!4128764 (= (toChars!9833 (transformation!7314 (h!50111 rules!3756))) (toChars!9833 (transformation!7314 r!4008))) t!341413) tb!247817))

(declare-fun result!301142 () Bool)

(assert (= result!301142 result!301138))

(assert (=> d!1223472 t!341413))

(declare-fun b_and!319885 () Bool)

(assert (= b_and!319855 (and (=> t!341413 result!301142) b_and!319885)))

(declare-fun t!341415 () Bool)

(declare-fun tb!247819 () Bool)

(assert (=> (and b!4128746 (= (toChars!9833 (transformation!7314 r!4008)) (toChars!9833 (transformation!7314 r!4008))) t!341415) tb!247819))

(declare-fun result!301144 () Bool)

(assert (= result!301144 result!301138))

(assert (=> d!1223472 t!341415))

(declare-fun b_and!319887 () Bool)

(assert (= b_and!319859 (and (=> t!341415 result!301144) b_and!319887)))

(declare-fun b_lambda!121233 () Bool)

(assert (=> (not b_lambda!121233) (not d!1223472)))

(declare-fun tb!247821 () Bool)

(declare-fun t!341417 () Bool)

(assert (=> (and b!4128752 (= (toValue!9974 (transformation!7314 rBis!149)) (toValue!9974 (transformation!7314 r!4008))) t!341417) tb!247821))

(declare-fun result!301146 () Bool)

(declare-fun inv!21 (TokenValue!7544) Bool)

(assert (=> tb!247821 (= result!301146 (inv!21 (dynLambda!19133 (toValue!9974 (transformation!7314 r!4008)) lt!1472811)))))

(declare-fun m!4727397 () Bool)

(assert (=> tb!247821 m!4727397))

(assert (=> d!1223472 t!341417))

(declare-fun b_and!319889 () Bool)

(assert (= b_and!319849 (and (=> t!341417 result!301146) b_and!319889)))

(declare-fun t!341419 () Bool)

(declare-fun tb!247823 () Bool)

(assert (=> (and b!4128764 (= (toValue!9974 (transformation!7314 (h!50111 rules!3756))) (toValue!9974 (transformation!7314 r!4008))) t!341419) tb!247823))

(declare-fun result!301150 () Bool)

(assert (= result!301150 result!301146))

(assert (=> d!1223472 t!341419))

(declare-fun b_and!319891 () Bool)

(assert (= b_and!319853 (and (=> t!341419 result!301150) b_and!319891)))

(declare-fun t!341421 () Bool)

(declare-fun tb!247825 () Bool)

(assert (=> (and b!4128746 (= (toValue!9974 (transformation!7314 r!4008)) (toValue!9974 (transformation!7314 r!4008))) t!341421) tb!247825))

(declare-fun result!301152 () Bool)

(assert (= result!301152 result!301146))

(assert (=> d!1223472 t!341421))

(declare-fun b_and!319893 () Bool)

(assert (= b_and!319857 (and (=> t!341421 result!301152) b_and!319893)))

(declare-fun m!4727399 () Bool)

(assert (=> d!1223472 m!4727399))

(assert (=> d!1223472 m!4727399))

(declare-fun m!4727401 () Bool)

(assert (=> d!1223472 m!4727401))

(assert (=> d!1223472 m!4727401))

(declare-fun m!4727403 () Bool)

(assert (=> d!1223472 m!4727403))

(declare-fun m!4727405 () Bool)

(assert (=> d!1223472 m!4727405))

(declare-fun m!4727407 () Bool)

(assert (=> d!1223472 m!4727407))

(assert (=> b!4128756 d!1223472))

(declare-fun d!1223512 () Bool)

(declare-fun lt!1472949 () List!44814)

(assert (=> d!1223512 (= (++!11571 p!2912 lt!1472949) input!3238)))

(declare-fun e!2562054 () List!44814)

(assert (=> d!1223512 (= lt!1472949 e!2562054)))

(declare-fun c!708621 () Bool)

(assert (=> d!1223512 (= c!708621 ((_ is Cons!44690) p!2912))))

(assert (=> d!1223512 (>= (size!33092 input!3238) (size!33092 p!2912))))

(assert (=> d!1223512 (= (getSuffix!2578 input!3238 p!2912) lt!1472949)))

(declare-fun b!4129230 () Bool)

(assert (=> b!4129230 (= e!2562054 (getSuffix!2578 (tail!6471 input!3238) (t!341391 p!2912)))))

(declare-fun b!4129231 () Bool)

(assert (=> b!4129231 (= e!2562054 input!3238)))

(assert (= (and d!1223512 c!708621) b!4129230))

(assert (= (and d!1223512 (not c!708621)) b!4129231))

(declare-fun m!4727409 () Bool)

(assert (=> d!1223512 m!4727409))

(assert (=> d!1223512 m!4727161))

(assert (=> d!1223512 m!4726981))

(declare-fun m!4727411 () Bool)

(assert (=> b!4129230 m!4727411))

(assert (=> b!4129230 m!4727411))

(declare-fun m!4727413 () Bool)

(assert (=> b!4129230 m!4727413))

(assert (=> b!4128756 d!1223512))

(declare-fun d!1223514 () Bool)

(assert (=> d!1223514 (= (apply!10387 (transformation!7314 r!4008) lt!1472811) (dynLambda!19133 (toValue!9974 (transformation!7314 r!4008)) lt!1472811))))

(declare-fun b_lambda!121235 () Bool)

(assert (=> (not b_lambda!121235) (not d!1223514)))

(assert (=> d!1223514 t!341417))

(declare-fun b_and!319895 () Bool)

(assert (= b_and!319889 (and (=> t!341417 result!301146) b_and!319895)))

(assert (=> d!1223514 t!341419))

(declare-fun b_and!319897 () Bool)

(assert (= b_and!319891 (and (=> t!341419 result!301150) b_and!319897)))

(assert (=> d!1223514 t!341421))

(declare-fun b_and!319899 () Bool)

(assert (= b_and!319893 (and (=> t!341421 result!301152) b_and!319899)))

(assert (=> d!1223514 m!4727399))

(assert (=> b!4128756 d!1223514))

(declare-fun call!290308 () Option!9622)

(declare-fun bm!290303 () Bool)

(assert (=> bm!290303 (= call!290308 (maxPrefixOneRule!3043 thiss!25645 (h!50111 rules!3756) input!3238))))

(declare-fun b!4129232 () Bool)

(declare-fun res!1687969 () Bool)

(declare-fun e!2562057 () Bool)

(assert (=> b!4129232 (=> (not res!1687969) (not e!2562057))))

(declare-fun lt!1472953 () Option!9622)

(assert (=> b!4129232 (= res!1687969 (= (value!229003 (_1!24701 (get!14578 lt!1472953))) (apply!10387 (transformation!7314 (rule!10404 (_1!24701 (get!14578 lt!1472953)))) (seqFromList!5431 (originalCharacters!7810 (_1!24701 (get!14578 lt!1472953)))))))))

(declare-fun b!4129233 () Bool)

(assert (=> b!4129233 (= e!2562057 (contains!8990 rules!3756 (rule!10404 (_1!24701 (get!14578 lt!1472953)))))))

(declare-fun b!4129234 () Bool)

(declare-fun e!2562056 () Bool)

(assert (=> b!4129234 (= e!2562056 e!2562057)))

(declare-fun res!1687973 () Bool)

(assert (=> b!4129234 (=> (not res!1687973) (not e!2562057))))

(assert (=> b!4129234 (= res!1687973 (isDefined!7245 lt!1472953))))

(declare-fun b!4129235 () Bool)

(declare-fun res!1687974 () Bool)

(assert (=> b!4129235 (=> (not res!1687974) (not e!2562057))))

(assert (=> b!4129235 (= res!1687974 (matchR!6050 (regex!7314 (rule!10404 (_1!24701 (get!14578 lt!1472953)))) (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472953))))))))

(declare-fun d!1223516 () Bool)

(assert (=> d!1223516 e!2562056))

(declare-fun res!1687975 () Bool)

(assert (=> d!1223516 (=> res!1687975 e!2562056)))

(assert (=> d!1223516 (= res!1687975 (isEmpty!26607 lt!1472953))))

(declare-fun e!2562055 () Option!9622)

(assert (=> d!1223516 (= lt!1472953 e!2562055)))

(declare-fun c!708622 () Bool)

(assert (=> d!1223516 (= c!708622 (and ((_ is Cons!44691) rules!3756) ((_ is Nil!44691) (t!341392 rules!3756))))))

(declare-fun lt!1472950 () Unit!64025)

(declare-fun lt!1472952 () Unit!64025)

(assert (=> d!1223516 (= lt!1472950 lt!1472952)))

(assert (=> d!1223516 (isPrefix!4249 input!3238 input!3238)))

(assert (=> d!1223516 (= lt!1472952 (lemmaIsPrefixRefl!2751 input!3238 input!3238))))

(assert (=> d!1223516 (rulesValidInductive!2702 thiss!25645 rules!3756)))

(assert (=> d!1223516 (= (maxPrefix!4095 thiss!25645 rules!3756 input!3238) lt!1472953)))

(declare-fun b!4129236 () Bool)

(declare-fun res!1687971 () Bool)

(assert (=> b!4129236 (=> (not res!1687971) (not e!2562057))))

(assert (=> b!4129236 (= res!1687971 (= (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472953)))) (originalCharacters!7810 (_1!24701 (get!14578 lt!1472953)))))))

(declare-fun b!4129237 () Bool)

(declare-fun res!1687970 () Bool)

(assert (=> b!4129237 (=> (not res!1687970) (not e!2562057))))

(assert (=> b!4129237 (= res!1687970 (< (size!33092 (_2!24701 (get!14578 lt!1472953))) (size!33092 input!3238)))))

(declare-fun b!4129238 () Bool)

(declare-fun lt!1472954 () Option!9622)

(declare-fun lt!1472951 () Option!9622)

(assert (=> b!4129238 (= e!2562055 (ite (and ((_ is None!9621) lt!1472954) ((_ is None!9621) lt!1472951)) None!9621 (ite ((_ is None!9621) lt!1472951) lt!1472954 (ite ((_ is None!9621) lt!1472954) lt!1472951 (ite (>= (size!33091 (_1!24701 (v!40223 lt!1472954))) (size!33091 (_1!24701 (v!40223 lt!1472951)))) lt!1472954 lt!1472951)))))))

(assert (=> b!4129238 (= lt!1472954 call!290308)))

(assert (=> b!4129238 (= lt!1472951 (maxPrefix!4095 thiss!25645 (t!341392 rules!3756) input!3238))))

(declare-fun b!4129239 () Bool)

(declare-fun res!1687972 () Bool)

(assert (=> b!4129239 (=> (not res!1687972) (not e!2562057))))

(assert (=> b!4129239 (= res!1687972 (= (++!11571 (list!16380 (charsOf!4925 (_1!24701 (get!14578 lt!1472953)))) (_2!24701 (get!14578 lt!1472953))) input!3238))))

(declare-fun b!4129240 () Bool)

(assert (=> b!4129240 (= e!2562055 call!290308)))

(assert (= (and d!1223516 c!708622) b!4129240))

(assert (= (and d!1223516 (not c!708622)) b!4129238))

(assert (= (or b!4129240 b!4129238) bm!290303))

(assert (= (and d!1223516 (not res!1687975)) b!4129234))

(assert (= (and b!4129234 res!1687973) b!4129236))

(assert (= (and b!4129236 res!1687971) b!4129237))

(assert (= (and b!4129237 res!1687970) b!4129239))

(assert (= (and b!4129239 res!1687972) b!4129232))

(assert (= (and b!4129232 res!1687969) b!4129235))

(assert (= (and b!4129235 res!1687974) b!4129233))

(declare-fun m!4727415 () Bool)

(assert (=> b!4129239 m!4727415))

(declare-fun m!4727417 () Bool)

(assert (=> b!4129239 m!4727417))

(assert (=> b!4129239 m!4727417))

(declare-fun m!4727419 () Bool)

(assert (=> b!4129239 m!4727419))

(assert (=> b!4129239 m!4727419))

(declare-fun m!4727421 () Bool)

(assert (=> b!4129239 m!4727421))

(declare-fun m!4727423 () Bool)

(assert (=> b!4129234 m!4727423))

(assert (=> b!4129235 m!4727415))

(assert (=> b!4129235 m!4727417))

(assert (=> b!4129235 m!4727417))

(assert (=> b!4129235 m!4727419))

(assert (=> b!4129235 m!4727419))

(declare-fun m!4727425 () Bool)

(assert (=> b!4129235 m!4727425))

(assert (=> b!4129236 m!4727415))

(assert (=> b!4129236 m!4727417))

(assert (=> b!4129236 m!4727417))

(assert (=> b!4129236 m!4727419))

(assert (=> b!4129232 m!4727415))

(declare-fun m!4727427 () Bool)

(assert (=> b!4129232 m!4727427))

(assert (=> b!4129232 m!4727427))

(declare-fun m!4727429 () Bool)

(assert (=> b!4129232 m!4727429))

(assert (=> b!4129237 m!4727415))

(declare-fun m!4727431 () Bool)

(assert (=> b!4129237 m!4727431))

(assert (=> b!4129237 m!4727161))

(declare-fun m!4727433 () Bool)

(assert (=> d!1223516 m!4727433))

(assert (=> d!1223516 m!4727215))

(assert (=> d!1223516 m!4727217))

(declare-fun m!4727435 () Bool)

(assert (=> d!1223516 m!4727435))

(assert (=> b!4129238 m!4726997))

(assert (=> b!4129233 m!4727415))

(declare-fun m!4727437 () Bool)

(assert (=> b!4129233 m!4727437))

(assert (=> bm!290303 m!4726993))

(assert (=> b!4128756 d!1223516))

(declare-fun d!1223518 () Bool)

(declare-fun fromListB!2484 (List!44814) BalanceConc!26644)

(assert (=> d!1223518 (= (seqFromList!5431 p!2912) (fromListB!2484 p!2912))))

(declare-fun bs!594977 () Bool)

(assert (= bs!594977 d!1223518))

(declare-fun m!4727439 () Bool)

(assert (=> bs!594977 m!4727439))

(assert (=> b!4128756 d!1223518))

(declare-fun d!1223520 () Bool)

(declare-fun lt!1472957 () Int)

(assert (=> d!1223520 (>= lt!1472957 0)))

(declare-fun e!2562060 () Int)

(assert (=> d!1223520 (= lt!1472957 e!2562060)))

(declare-fun c!708625 () Bool)

(assert (=> d!1223520 (= c!708625 ((_ is Nil!44690) p!2912))))

(assert (=> d!1223520 (= (size!33092 p!2912) lt!1472957)))

(declare-fun b!4129245 () Bool)

(assert (=> b!4129245 (= e!2562060 0)))

(declare-fun b!4129246 () Bool)

(assert (=> b!4129246 (= e!2562060 (+ 1 (size!33092 (t!341391 p!2912))))))

(assert (= (and d!1223520 c!708625) b!4129245))

(assert (= (and d!1223520 (not c!708625)) b!4129246))

(declare-fun m!4727441 () Bool)

(assert (=> b!4129246 m!4727441))

(assert (=> b!4128756 d!1223520))

(declare-fun b!4129248 () Bool)

(declare-fun e!2562061 () Int)

(declare-fun e!2562062 () Int)

(assert (=> b!4129248 (= e!2562061 e!2562062)))

(declare-fun c!708627 () Bool)

(assert (=> b!4129248 (= c!708627 (and ((_ is Cons!44691) rules!3756) (not (= (h!50111 rules!3756) rBis!149))))))

(declare-fun b!4129250 () Bool)

(assert (=> b!4129250 (= e!2562062 (- 1))))

(declare-fun b!4129247 () Bool)

(assert (=> b!4129247 (= e!2562061 0)))

(declare-fun d!1223522 () Bool)

(declare-fun lt!1472958 () Int)

(assert (=> d!1223522 (>= lt!1472958 0)))

(assert (=> d!1223522 (= lt!1472958 e!2562061)))

(declare-fun c!708626 () Bool)

(assert (=> d!1223522 (= c!708626 (and ((_ is Cons!44691) rules!3756) (= (h!50111 rules!3756) rBis!149)))))

(assert (=> d!1223522 (contains!8990 rules!3756 rBis!149)))

(assert (=> d!1223522 (= (getIndex!662 rules!3756 rBis!149) lt!1472958)))

(declare-fun b!4129249 () Bool)

(assert (=> b!4129249 (= e!2562062 (+ 1 (getIndex!662 (t!341392 rules!3756) rBis!149)))))

(assert (= (and d!1223522 c!708626) b!4129247))

(assert (= (and d!1223522 (not c!708626)) b!4129248))

(assert (= (and b!4129248 c!708627) b!4129249))

(assert (= (and b!4129248 (not c!708627)) b!4129250))

(assert (=> d!1223522 m!4727031))

(assert (=> b!4129249 m!4726975))

(assert (=> b!4128767 d!1223522))

(declare-fun b!4129252 () Bool)

(declare-fun e!2562063 () Int)

(declare-fun e!2562064 () Int)

(assert (=> b!4129252 (= e!2562063 e!2562064)))

(declare-fun c!708629 () Bool)

(assert (=> b!4129252 (= c!708629 (and ((_ is Cons!44691) rules!3756) (not (= (h!50111 rules!3756) r!4008))))))

(declare-fun b!4129254 () Bool)

(assert (=> b!4129254 (= e!2562064 (- 1))))

(declare-fun b!4129251 () Bool)

(assert (=> b!4129251 (= e!2562063 0)))

(declare-fun d!1223524 () Bool)

(declare-fun lt!1472959 () Int)

(assert (=> d!1223524 (>= lt!1472959 0)))

(assert (=> d!1223524 (= lt!1472959 e!2562063)))

(declare-fun c!708628 () Bool)

(assert (=> d!1223524 (= c!708628 (and ((_ is Cons!44691) rules!3756) (= (h!50111 rules!3756) r!4008)))))

(assert (=> d!1223524 (contains!8990 rules!3756 r!4008)))

(assert (=> d!1223524 (= (getIndex!662 rules!3756 r!4008) lt!1472959)))

(declare-fun b!4129253 () Bool)

(assert (=> b!4129253 (= e!2562064 (+ 1 (getIndex!662 (t!341392 rules!3756) r!4008)))))

(assert (= (and d!1223524 c!708628) b!4129251))

(assert (= (and d!1223524 (not c!708628)) b!4129252))

(assert (= (and b!4129252 c!708629) b!4129253))

(assert (= (and b!4129252 (not c!708629)) b!4129254))

(assert (=> d!1223524 m!4726967))

(assert (=> b!4129253 m!4726977))

(assert (=> b!4128767 d!1223524))

(declare-fun d!1223526 () Bool)

(assert (=> d!1223526 (= (isEmpty!26606 rules!3756) ((_ is Nil!44691) rules!3756))))

(assert (=> b!4128757 d!1223526))

(declare-fun d!1223528 () Bool)

(declare-fun lt!1472960 () Bool)

(assert (=> d!1223528 (= lt!1472960 (select (content!6892 (t!341392 rules!3756)) r!4008))))

(declare-fun e!2562065 () Bool)

(assert (=> d!1223528 (= lt!1472960 e!2562065)))

(declare-fun res!1687977 () Bool)

(assert (=> d!1223528 (=> (not res!1687977) (not e!2562065))))

(assert (=> d!1223528 (= res!1687977 ((_ is Cons!44691) (t!341392 rules!3756)))))

(assert (=> d!1223528 (= (contains!8990 (t!341392 rules!3756) r!4008) lt!1472960)))

(declare-fun b!4129255 () Bool)

(declare-fun e!2562066 () Bool)

(assert (=> b!4129255 (= e!2562065 e!2562066)))

(declare-fun res!1687976 () Bool)

(assert (=> b!4129255 (=> res!1687976 e!2562066)))

(assert (=> b!4129255 (= res!1687976 (= (h!50111 (t!341392 rules!3756)) r!4008))))

(declare-fun b!4129256 () Bool)

(assert (=> b!4129256 (= e!2562066 (contains!8990 (t!341392 (t!341392 rules!3756)) r!4008))))

(assert (= (and d!1223528 res!1687977) b!4129255))

(assert (= (and b!4129255 (not res!1687976)) b!4129256))

(assert (=> d!1223528 m!4727041))

(declare-fun m!4727443 () Bool)

(assert (=> d!1223528 m!4727443))

(declare-fun m!4727445 () Bool)

(assert (=> b!4129256 m!4727445))

(assert (=> b!4128768 d!1223528))

(declare-fun d!1223530 () Bool)

(assert (=> d!1223530 (= (inv!59278 (tag!8174 (h!50111 rules!3756))) (= (mod (str.len (value!229002 (tag!8174 (h!50111 rules!3756)))) 2) 0))))

(assert (=> b!4128743 d!1223530))

(declare-fun d!1223532 () Bool)

(declare-fun res!1687980 () Bool)

(declare-fun e!2562069 () Bool)

(assert (=> d!1223532 (=> (not res!1687980) (not e!2562069))))

(declare-fun semiInverseModEq!3151 (Int Int) Bool)

(assert (=> d!1223532 (= res!1687980 (semiInverseModEq!3151 (toChars!9833 (transformation!7314 (h!50111 rules!3756))) (toValue!9974 (transformation!7314 (h!50111 rules!3756)))))))

(assert (=> d!1223532 (= (inv!59280 (transformation!7314 (h!50111 rules!3756))) e!2562069)))

(declare-fun b!4129259 () Bool)

(declare-fun equivClasses!3050 (Int Int) Bool)

(assert (=> b!4129259 (= e!2562069 (equivClasses!3050 (toChars!9833 (transformation!7314 (h!50111 rules!3756))) (toValue!9974 (transformation!7314 (h!50111 rules!3756)))))))

(assert (= (and d!1223532 res!1687980) b!4129259))

(declare-fun m!4727447 () Bool)

(assert (=> d!1223532 m!4727447))

(declare-fun m!4727449 () Bool)

(assert (=> b!4129259 m!4727449))

(assert (=> b!4128743 d!1223532))

(declare-fun d!1223534 () Bool)

(assert (=> d!1223534 (= (inv!59278 (tag!8174 r!4008)) (= (mod (str.len (value!229002 (tag!8174 r!4008))) 2) 0))))

(assert (=> b!4128754 d!1223534))

(declare-fun d!1223536 () Bool)

(declare-fun res!1687981 () Bool)

(declare-fun e!2562070 () Bool)

(assert (=> d!1223536 (=> (not res!1687981) (not e!2562070))))

(assert (=> d!1223536 (= res!1687981 (semiInverseModEq!3151 (toChars!9833 (transformation!7314 r!4008)) (toValue!9974 (transformation!7314 r!4008))))))

(assert (=> d!1223536 (= (inv!59280 (transformation!7314 r!4008)) e!2562070)))

(declare-fun b!4129260 () Bool)

(assert (=> b!4129260 (= e!2562070 (equivClasses!3050 (toChars!9833 (transformation!7314 r!4008)) (toValue!9974 (transformation!7314 r!4008))))))

(assert (= (and d!1223536 res!1687981) b!4129260))

(declare-fun m!4727451 () Bool)

(assert (=> d!1223536 m!4727451))

(declare-fun m!4727453 () Bool)

(assert (=> b!4129260 m!4727453))

(assert (=> b!4128754 d!1223536))

(declare-fun d!1223538 () Bool)

(assert (=> d!1223538 (= (inv!59278 (tag!8174 rBis!149)) (= (mod (str.len (value!229002 (tag!8174 rBis!149))) 2) 0))))

(assert (=> b!4128765 d!1223538))

(declare-fun d!1223540 () Bool)

(declare-fun res!1687982 () Bool)

(declare-fun e!2562071 () Bool)

(assert (=> d!1223540 (=> (not res!1687982) (not e!2562071))))

(assert (=> d!1223540 (= res!1687982 (semiInverseModEq!3151 (toChars!9833 (transformation!7314 rBis!149)) (toValue!9974 (transformation!7314 rBis!149))))))

(assert (=> d!1223540 (= (inv!59280 (transformation!7314 rBis!149)) e!2562071)))

(declare-fun b!4129261 () Bool)

(assert (=> b!4129261 (= e!2562071 (equivClasses!3050 (toChars!9833 (transformation!7314 rBis!149)) (toValue!9974 (transformation!7314 rBis!149))))))

(assert (= (and d!1223540 res!1687982) b!4129261))

(declare-fun m!4727455 () Bool)

(assert (=> d!1223540 m!4727455))

(declare-fun m!4727457 () Bool)

(assert (=> b!4129261 m!4727457))

(assert (=> b!4128765 d!1223540))

(declare-fun d!1223542 () Bool)

(declare-fun res!1687983 () Bool)

(declare-fun e!2562072 () Bool)

(assert (=> d!1223542 (=> (not res!1687983) (not e!2562072))))

(assert (=> d!1223542 (= res!1687983 (validRegex!5496 (regex!7314 r!4008)))))

(assert (=> d!1223542 (= (ruleValid!3122 thiss!25645 r!4008) e!2562072)))

(declare-fun b!4129262 () Bool)

(declare-fun res!1687984 () Bool)

(assert (=> b!4129262 (=> (not res!1687984) (not e!2562072))))

(assert (=> b!4129262 (= res!1687984 (not (nullable!4290 (regex!7314 r!4008))))))

(declare-fun b!4129263 () Bool)

(assert (=> b!4129263 (= e!2562072 (not (= (tag!8174 r!4008) (String!51471 ""))))))

(assert (= (and d!1223542 res!1687983) b!4129262))

(assert (= (and b!4129262 res!1687984) b!4129263))

(assert (=> d!1223542 m!4727263))

(assert (=> b!4129262 m!4727265))

(assert (=> b!4128744 d!1223542))

(declare-fun d!1223544 () Bool)

(declare-fun e!2562079 () Bool)

(assert (=> d!1223544 e!2562079))

(declare-fun res!1687996 () Bool)

(assert (=> d!1223544 (=> res!1687996 e!2562079)))

(declare-fun lt!1472963 () Bool)

(assert (=> d!1223544 (= res!1687996 (not lt!1472963))))

(declare-fun e!2562080 () Bool)

(assert (=> d!1223544 (= lt!1472963 e!2562080)))

(declare-fun res!1687995 () Bool)

(assert (=> d!1223544 (=> res!1687995 e!2562080)))

(assert (=> d!1223544 (= res!1687995 ((_ is Nil!44690) p!2912))))

(assert (=> d!1223544 (= (isPrefix!4249 p!2912 input!3238) lt!1472963)))

(declare-fun b!4129273 () Bool)

(declare-fun res!1687994 () Bool)

(declare-fun e!2562081 () Bool)

(assert (=> b!4129273 (=> (not res!1687994) (not e!2562081))))

(assert (=> b!4129273 (= res!1687994 (= (head!8698 p!2912) (head!8698 input!3238)))))

(declare-fun b!4129272 () Bool)

(assert (=> b!4129272 (= e!2562080 e!2562081)))

(declare-fun res!1687993 () Bool)

(assert (=> b!4129272 (=> (not res!1687993) (not e!2562081))))

(assert (=> b!4129272 (= res!1687993 (not ((_ is Nil!44690) input!3238)))))

(declare-fun b!4129275 () Bool)

(assert (=> b!4129275 (= e!2562079 (>= (size!33092 input!3238) (size!33092 p!2912)))))

(declare-fun b!4129274 () Bool)

(assert (=> b!4129274 (= e!2562081 (isPrefix!4249 (tail!6471 p!2912) (tail!6471 input!3238)))))

(assert (= (and d!1223544 (not res!1687995)) b!4129272))

(assert (= (and b!4129272 res!1687993) b!4129273))

(assert (= (and b!4129273 res!1687994) b!4129274))

(assert (= (and d!1223544 (not res!1687996)) b!4129275))

(assert (=> b!4129273 m!4727241))

(declare-fun m!4727459 () Bool)

(assert (=> b!4129273 m!4727459))

(assert (=> b!4129275 m!4727161))

(assert (=> b!4129275 m!4726981))

(assert (=> b!4129274 m!4727237))

(assert (=> b!4129274 m!4727411))

(assert (=> b!4129274 m!4727237))

(assert (=> b!4129274 m!4727411))

(declare-fun m!4727461 () Bool)

(assert (=> b!4129274 m!4727461))

(assert (=> b!4128755 d!1223544))

(declare-fun d!1223546 () Bool)

(declare-fun lt!1472964 () Bool)

(assert (=> d!1223546 (= lt!1472964 (select (content!6892 rules!3756) r!4008))))

(declare-fun e!2562082 () Bool)

(assert (=> d!1223546 (= lt!1472964 e!2562082)))

(declare-fun res!1687998 () Bool)

(assert (=> d!1223546 (=> (not res!1687998) (not e!2562082))))

(assert (=> d!1223546 (= res!1687998 ((_ is Cons!44691) rules!3756))))

(assert (=> d!1223546 (= (contains!8990 rules!3756 r!4008) lt!1472964)))

(declare-fun b!4129276 () Bool)

(declare-fun e!2562083 () Bool)

(assert (=> b!4129276 (= e!2562082 e!2562083)))

(declare-fun res!1687997 () Bool)

(assert (=> b!4129276 (=> res!1687997 e!2562083)))

(assert (=> b!4129276 (= res!1687997 (= (h!50111 rules!3756) r!4008))))

(declare-fun b!4129277 () Bool)

(assert (=> b!4129277 (= e!2562083 (contains!8990 (t!341392 rules!3756) r!4008))))

(assert (= (and d!1223546 res!1687998) b!4129276))

(assert (= (and b!4129276 (not res!1687997)) b!4129277))

(assert (=> d!1223546 m!4727255))

(declare-fun m!4727463 () Bool)

(assert (=> d!1223546 m!4727463))

(assert (=> b!4129277 m!4726969))

(assert (=> b!4128745 d!1223546))

(declare-fun b!4129282 () Bool)

(declare-fun e!2562086 () Bool)

(declare-fun tp!1258264 () Bool)

(assert (=> b!4129282 (= e!2562086 (and tp_is_empty!21361 tp!1258264))))

(assert (=> b!4128762 (= tp!1258209 e!2562086)))

(assert (= (and b!4128762 ((_ is Cons!44690) (t!341391 p!2912))) b!4129282))

(declare-fun b!4129293 () Bool)

(declare-fun b_free!117043 () Bool)

(declare-fun b_next!117747 () Bool)

(assert (=> b!4129293 (= b_free!117043 (not b_next!117747))))

(declare-fun tb!247827 () Bool)

(declare-fun t!341423 () Bool)

(assert (=> (and b!4129293 (= (toValue!9974 (transformation!7314 (h!50111 (t!341392 rules!3756)))) (toValue!9974 (transformation!7314 r!4008))) t!341423) tb!247827))

(declare-fun result!301158 () Bool)

(assert (= result!301158 result!301146))

(assert (=> d!1223472 t!341423))

(assert (=> d!1223514 t!341423))

(declare-fun tp!1258273 () Bool)

(declare-fun b_and!319901 () Bool)

(assert (=> b!4129293 (= tp!1258273 (and (=> t!341423 result!301158) b_and!319901))))

(declare-fun b_free!117045 () Bool)

(declare-fun b_next!117749 () Bool)

(assert (=> b!4129293 (= b_free!117045 (not b_next!117749))))

(declare-fun t!341425 () Bool)

(declare-fun tb!247829 () Bool)

(assert (=> (and b!4129293 (= (toChars!9833 (transformation!7314 (h!50111 (t!341392 rules!3756)))) (toChars!9833 (transformation!7314 r!4008))) t!341425) tb!247829))

(declare-fun result!301160 () Bool)

(assert (= result!301160 result!301138))

(assert (=> d!1223472 t!341425))

(declare-fun b_and!319903 () Bool)

(declare-fun tp!1258276 () Bool)

(assert (=> b!4129293 (= tp!1258276 (and (=> t!341425 result!301160) b_and!319903))))

(declare-fun e!2562098 () Bool)

(assert (=> b!4129293 (= e!2562098 (and tp!1258273 tp!1258276))))

(declare-fun e!2562096 () Bool)

(declare-fun tp!1258274 () Bool)

(declare-fun b!4129292 () Bool)

(assert (=> b!4129292 (= e!2562096 (and tp!1258274 (inv!59278 (tag!8174 (h!50111 (t!341392 rules!3756)))) (inv!59280 (transformation!7314 (h!50111 (t!341392 rules!3756)))) e!2562098))))

(declare-fun b!4129291 () Bool)

(declare-fun e!2562097 () Bool)

(declare-fun tp!1258275 () Bool)

(assert (=> b!4129291 (= e!2562097 (and e!2562096 tp!1258275))))

(assert (=> b!4128758 (= tp!1258212 e!2562097)))

(assert (= b!4129292 b!4129293))

(assert (= b!4129291 b!4129292))

(assert (= (and b!4128758 ((_ is Cons!44691) (t!341392 rules!3756))) b!4129291))

(declare-fun m!4727465 () Bool)

(assert (=> b!4129292 m!4727465))

(declare-fun m!4727467 () Bool)

(assert (=> b!4129292 m!4727467))

(declare-fun b!4129305 () Bool)

(declare-fun e!2562101 () Bool)

(declare-fun tp!1258290 () Bool)

(declare-fun tp!1258289 () Bool)

(assert (=> b!4129305 (= e!2562101 (and tp!1258290 tp!1258289))))

(declare-fun b!4129307 () Bool)

(declare-fun tp!1258287 () Bool)

(declare-fun tp!1258291 () Bool)

(assert (=> b!4129307 (= e!2562101 (and tp!1258287 tp!1258291))))

(declare-fun b!4129306 () Bool)

(declare-fun tp!1258288 () Bool)

(assert (=> b!4129306 (= e!2562101 tp!1258288)))

(assert (=> b!4128743 (= tp!1258211 e!2562101)))

(declare-fun b!4129304 () Bool)

(assert (=> b!4129304 (= e!2562101 tp_is_empty!21361)))

(assert (= (and b!4128743 ((_ is ElementMatch!12219) (regex!7314 (h!50111 rules!3756)))) b!4129304))

(assert (= (and b!4128743 ((_ is Concat!19764) (regex!7314 (h!50111 rules!3756)))) b!4129305))

(assert (= (and b!4128743 ((_ is Star!12219) (regex!7314 (h!50111 rules!3756)))) b!4129306))

(assert (= (and b!4128743 ((_ is Union!12219) (regex!7314 (h!50111 rules!3756)))) b!4129307))

(declare-fun b!4129309 () Bool)

(declare-fun e!2562102 () Bool)

(declare-fun tp!1258295 () Bool)

(declare-fun tp!1258294 () Bool)

(assert (=> b!4129309 (= e!2562102 (and tp!1258295 tp!1258294))))

(declare-fun b!4129311 () Bool)

(declare-fun tp!1258292 () Bool)

(declare-fun tp!1258296 () Bool)

(assert (=> b!4129311 (= e!2562102 (and tp!1258292 tp!1258296))))

(declare-fun b!4129310 () Bool)

(declare-fun tp!1258293 () Bool)

(assert (=> b!4129310 (= e!2562102 tp!1258293)))

(assert (=> b!4128754 (= tp!1258205 e!2562102)))

(declare-fun b!4129308 () Bool)

(assert (=> b!4129308 (= e!2562102 tp_is_empty!21361)))

(assert (= (and b!4128754 ((_ is ElementMatch!12219) (regex!7314 r!4008))) b!4129308))

(assert (= (and b!4128754 ((_ is Concat!19764) (regex!7314 r!4008))) b!4129309))

(assert (= (and b!4128754 ((_ is Star!12219) (regex!7314 r!4008))) b!4129310))

(assert (= (and b!4128754 ((_ is Union!12219) (regex!7314 r!4008))) b!4129311))

(declare-fun b!4129313 () Bool)

(declare-fun e!2562103 () Bool)

(declare-fun tp!1258300 () Bool)

(declare-fun tp!1258299 () Bool)

(assert (=> b!4129313 (= e!2562103 (and tp!1258300 tp!1258299))))

(declare-fun b!4129315 () Bool)

(declare-fun tp!1258297 () Bool)

(declare-fun tp!1258301 () Bool)

(assert (=> b!4129315 (= e!2562103 (and tp!1258297 tp!1258301))))

(declare-fun b!4129314 () Bool)

(declare-fun tp!1258298 () Bool)

(assert (=> b!4129314 (= e!2562103 tp!1258298)))

(assert (=> b!4128765 (= tp!1258210 e!2562103)))

(declare-fun b!4129312 () Bool)

(assert (=> b!4129312 (= e!2562103 tp_is_empty!21361)))

(assert (= (and b!4128765 ((_ is ElementMatch!12219) (regex!7314 rBis!149))) b!4129312))

(assert (= (and b!4128765 ((_ is Concat!19764) (regex!7314 rBis!149))) b!4129313))

(assert (= (and b!4128765 ((_ is Star!12219) (regex!7314 rBis!149))) b!4129314))

(assert (= (and b!4128765 ((_ is Union!12219) (regex!7314 rBis!149))) b!4129315))

(declare-fun b!4129316 () Bool)

(declare-fun e!2562104 () Bool)

(declare-fun tp!1258302 () Bool)

(assert (=> b!4129316 (= e!2562104 (and tp_is_empty!21361 tp!1258302))))

(assert (=> b!4128766 (= tp!1258214 e!2562104)))

(assert (= (and b!4128766 ((_ is Cons!44690) (t!341391 input!3238))) b!4129316))

(declare-fun b_lambda!121237 () Bool)

(assert (= b_lambda!121233 (or (and b!4128752 b_free!117027 (= (toValue!9974 (transformation!7314 rBis!149)) (toValue!9974 (transformation!7314 r!4008)))) (and b!4128764 b_free!117031 (= (toValue!9974 (transformation!7314 (h!50111 rules!3756))) (toValue!9974 (transformation!7314 r!4008)))) (and b!4128746 b_free!117035) (and b!4129293 b_free!117043 (= (toValue!9974 (transformation!7314 (h!50111 (t!341392 rules!3756)))) (toValue!9974 (transformation!7314 r!4008)))) b_lambda!121237)))

(declare-fun b_lambda!121239 () Bool)

(assert (= b_lambda!121231 (or (and b!4128752 b_free!117029 (= (toChars!9833 (transformation!7314 rBis!149)) (toChars!9833 (transformation!7314 r!4008)))) (and b!4128764 b_free!117033 (= (toChars!9833 (transformation!7314 (h!50111 rules!3756))) (toChars!9833 (transformation!7314 r!4008)))) (and b!4128746 b_free!117037) (and b!4129293 b_free!117045 (= (toChars!9833 (transformation!7314 (h!50111 (t!341392 rules!3756)))) (toChars!9833 (transformation!7314 r!4008)))) b_lambda!121239)))

(declare-fun b_lambda!121241 () Bool)

(assert (= b_lambda!121235 (or (and b!4128752 b_free!117027 (= (toValue!9974 (transformation!7314 rBis!149)) (toValue!9974 (transformation!7314 r!4008)))) (and b!4128764 b_free!117031 (= (toValue!9974 (transformation!7314 (h!50111 rules!3756))) (toValue!9974 (transformation!7314 r!4008)))) (and b!4128746 b_free!117035) (and b!4129293 b_free!117043 (= (toValue!9974 (transformation!7314 (h!50111 (t!341392 rules!3756)))) (toValue!9974 (transformation!7314 r!4008)))) b_lambda!121241)))

(check-sat (not b_next!117735) (not d!1223460) (not b!4128964) (not d!1223532) (not bm!290303) (not b!4129085) (not d!1223470) (not d!1223542) (not b!4129309) (not b!4129282) (not d!1223450) (not b!4129274) b_and!319899 (not b!4129081) (not tb!247821) (not b!4129068) (not b!4129305) (not d!1223408) (not b!4129091) (not b!4129090) (not b!4129092) (not b!4129273) (not b!4129237) (not b!4128961) (not d!1223444) tp_is_empty!21361 (not b!4129088) (not d!1223466) (not b!4129235) (not b!4129249) b_and!319897 (not b!4128959) (not b!4129256) (not b!4129065) (not b!4129067) (not b!4128962) (not bm!290297) (not b!4129316) (not b!4129070) (not d!1223448) (not b!4129076) (not b!4129099) (not b!4129230) (not b!4129223) (not b!4129275) (not d!1223524) (not b!4128958) (not b!4128985) (not b!4128956) (not d!1223472) (not b!4129239) (not b!4129291) (not b_lambda!121237) (not b!4129313) (not b!4128960) (not d!1223518) (not d!1223468) (not d!1223442) (not b_lambda!121239) (not d!1223414) (not b_next!117737) (not b!4129093) (not b!4128987) b_and!319885 (not b!4129233) (not b_next!117749) (not bm!290288) (not b!4129292) (not b!4129238) (not b!4128990) (not b!4128983) (not b_next!117739) (not d!1223536) (not b!4129259) (not b!4129232) (not b!4129310) b_and!319903 (not b!4128984) (not b!4129260) (not b!4129253) b_and!319887 (not b!4128986) (not d!1223458) (not d!1223528) (not b!4129306) (not b!4129246) (not d!1223404) (not b!4128783) (not d!1223522) (not b!4129314) (not b!4129234) (not d!1223512) (not b!4129261) (not b_next!117731) b_and!319901 (not b!4128989) (not b!4129236) (not b!4128988) (not b!4129307) b_and!319895 (not b!4129262) (not b_next!117741) (not b!4129084) (not b!4129002) (not b!4129006) (not d!1223462) (not b!4129069) (not b!4128963) (not d!1223546) (not d!1223456) (not d!1223540) (not b_lambda!121241) (not bm!290296) (not b!4129311) (not b_next!117747) (not d!1223516) (not b!4128777) (not b!4129315) b_and!319883 (not b_next!117733) (not bm!290301) (not bm!290300) (not b!4129028) (not b!4129277) (not tb!247815) (not d!1223464) (not d!1223396))
(check-sat b_and!319899 b_and!319897 (not b_next!117735) (not b_next!117737) b_and!319885 (not b_next!117749) (not b_next!117739) b_and!319903 b_and!319887 b_and!319895 (not b_next!117741) (not b_next!117747) (not b_next!117731) b_and!319901 b_and!319883 (not b_next!117733))
