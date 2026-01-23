; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393450 () Bool)

(assert start!393450)

(declare-fun b!4139875 () Bool)

(declare-fun b_free!117843 () Bool)

(declare-fun b_next!118547 () Bool)

(assert (=> b!4139875 (= b_free!117843 (not b_next!118547))))

(declare-fun tp!1261931 () Bool)

(declare-fun b_and!321425 () Bool)

(assert (=> b!4139875 (= tp!1261931 b_and!321425)))

(declare-fun b_free!117845 () Bool)

(declare-fun b_next!118549 () Bool)

(assert (=> b!4139875 (= b_free!117845 (not b_next!118549))))

(declare-fun tp!1261932 () Bool)

(declare-fun b_and!321427 () Bool)

(assert (=> b!4139875 (= tp!1261932 b_and!321427)))

(declare-fun b!4139867 () Bool)

(declare-fun b_free!117847 () Bool)

(declare-fun b_next!118551 () Bool)

(assert (=> b!4139867 (= b_free!117847 (not b_next!118551))))

(declare-fun tp!1261938 () Bool)

(declare-fun b_and!321429 () Bool)

(assert (=> b!4139867 (= tp!1261938 b_and!321429)))

(declare-fun b_free!117849 () Bool)

(declare-fun b_next!118553 () Bool)

(assert (=> b!4139867 (= b_free!117849 (not b_next!118553))))

(declare-fun tp!1261937 () Bool)

(declare-fun b_and!321431 () Bool)

(assert (=> b!4139867 (= tp!1261937 b_and!321431)))

(declare-fun b!4139880 () Bool)

(declare-fun b_free!117851 () Bool)

(declare-fun b_next!118555 () Bool)

(assert (=> b!4139880 (= b_free!117851 (not b_next!118555))))

(declare-fun tp!1261934 () Bool)

(declare-fun b_and!321433 () Bool)

(assert (=> b!4139880 (= tp!1261934 b_and!321433)))

(declare-fun b_free!117853 () Bool)

(declare-fun b_next!118557 () Bool)

(assert (=> b!4139880 (= b_free!117853 (not b_next!118557))))

(declare-fun tp!1261939 () Bool)

(declare-fun b_and!321435 () Bool)

(assert (=> b!4139880 (= tp!1261939 b_and!321435)))

(declare-fun b!4139858 () Bool)

(declare-fun e!2568670 () Bool)

(declare-fun tp_is_empty!21473 () Bool)

(declare-fun tp!1261930 () Bool)

(assert (=> b!4139858 (= e!2568670 (and tp_is_empty!21473 tp!1261930))))

(declare-fun b!4139859 () Bool)

(declare-fun e!2568664 () Bool)

(declare-fun e!2568672 () Bool)

(declare-fun tp!1261940 () Bool)

(declare-datatypes ((List!45014 0))(
  ( (Nil!44890) (Cons!44890 (h!50310 (_ BitVec 16)) (t!342293 List!45014)) )
))
(declare-datatypes ((TokenValue!7600 0))(
  ( (FloatLiteralValue!15200 (text!53645 List!45014)) (TokenValueExt!7599 (__x!27417 Int)) (Broken!38000 (value!230573 List!45014)) (Object!7723) (End!7600) (Def!7600) (Underscore!7600) (Match!7600) (Else!7600) (Error!7600) (Case!7600) (If!7600) (Extends!7600) (Abstract!7600) (Class!7600) (Val!7600) (DelimiterValue!15200 (del!7660 List!45014)) (KeywordValue!7606 (value!230574 List!45014)) (CommentValue!15200 (value!230575 List!45014)) (WhitespaceValue!15200 (value!230576 List!45014)) (IndentationValue!7600 (value!230577 List!45014)) (String!51749) (Int32!7600) (Broken!38001 (value!230578 List!45014)) (Boolean!7601) (Unit!64192) (OperatorValue!7603 (op!7660 List!45014)) (IdentifierValue!15200 (value!230579 List!45014)) (IdentifierValue!15201 (value!230580 List!45014)) (WhitespaceValue!15201 (value!230581 List!45014)) (True!15200) (False!15200) (Broken!38002 (value!230582 List!45014)) (Broken!38003 (value!230583 List!45014)) (True!15201) (RightBrace!7600) (RightBracket!7600) (Colon!7600) (Null!7600) (Comma!7600) (LeftBracket!7600) (False!15201) (LeftBrace!7600) (ImaginaryLiteralValue!7600 (text!53646 List!45014)) (StringLiteralValue!22800 (value!230584 List!45014)) (EOFValue!7600 (value!230585 List!45014)) (IdentValue!7600 (value!230586 List!45014)) (DelimiterValue!15201 (value!230587 List!45014)) (DedentValue!7600 (value!230588 List!45014)) (NewLineValue!7600 (value!230589 List!45014)) (IntegerValue!22800 (value!230590 (_ BitVec 32)) (text!53647 List!45014)) (IntegerValue!22801 (value!230591 Int) (text!53648 List!45014)) (Times!7600) (Or!7600) (Equal!7600) (Minus!7600) (Broken!38004 (value!230592 List!45014)) (And!7600) (Div!7600) (LessEqual!7600) (Mod!7600) (Concat!19875) (Not!7600) (Plus!7600) (SpaceValue!7600 (value!230593 List!45014)) (IntegerValue!22802 (value!230594 Int) (text!53649 List!45014)) (StringLiteralValue!22801 (text!53650 List!45014)) (FloatLiteralValue!15201 (text!53651 List!45014)) (BytesLiteralValue!7600 (value!230595 List!45014)) (CommentValue!15201 (value!230596 List!45014)) (StringLiteralValue!22802 (value!230597 List!45014)) (ErrorTokenValue!7600 (msg!7661 List!45014)) )
))
(declare-datatypes ((C!24736 0))(
  ( (C!24737 (val!14478 Int)) )
))
(declare-datatypes ((List!45015 0))(
  ( (Nil!44891) (Cons!44891 (h!50311 C!24736) (t!342294 List!45015)) )
))
(declare-datatypes ((IArray!27167 0))(
  ( (IArray!27168 (innerList!13641 List!45015)) )
))
(declare-datatypes ((Conc!13581 0))(
  ( (Node!13581 (left!33616 Conc!13581) (right!33946 Conc!13581) (csize!27392 Int) (cheight!13792 Int)) (Leaf!20981 (xs!16887 IArray!27167) (csize!27393 Int)) (Empty!13581) )
))
(declare-datatypes ((BalanceConc!26756 0))(
  ( (BalanceConc!26757 (c!709748 Conc!13581)) )
))
(declare-datatypes ((String!51750 0))(
  ( (String!51751 (value!230598 String)) )
))
(declare-datatypes ((Regex!12275 0))(
  ( (ElementMatch!12275 (c!709749 C!24736)) (Concat!19876 (regOne!25062 Regex!12275) (regTwo!25062 Regex!12275)) (EmptyExpr!12275) (Star!12275 (reg!12604 Regex!12275)) (EmptyLang!12275) (Union!12275 (regOne!25063 Regex!12275) (regTwo!25063 Regex!12275)) )
))
(declare-datatypes ((TokenValueInjection!14628 0))(
  ( (TokenValueInjection!14629 (toValue!10034 Int) (toChars!9893 Int)) )
))
(declare-datatypes ((Rule!14540 0))(
  ( (Rule!14541 (regex!7370 Regex!12275) (tag!8230 String!51750) (isSeparator!7370 Bool) (transformation!7370 TokenValueInjection!14628)) )
))
(declare-fun r!4008 () Rule!14540)

(declare-fun inv!59496 (String!51750) Bool)

(declare-fun inv!59498 (TokenValueInjection!14628) Bool)

(assert (=> b!4139859 (= e!2568672 (and tp!1261940 (inv!59496 (tag!8230 r!4008)) (inv!59498 (transformation!7370 r!4008)) e!2568664))))

(declare-fun b!4139860 () Bool)

(declare-fun res!1693496 () Bool)

(declare-fun e!2568671 () Bool)

(assert (=> b!4139860 (=> (not res!1693496) (not e!2568671))))

(declare-fun p!2912 () List!45015)

(declare-fun input!3238 () List!45015)

(declare-fun isPrefix!4305 (List!45015 List!45015) Bool)

(assert (=> b!4139860 (= res!1693496 (isPrefix!4305 p!2912 input!3238))))

(declare-fun b!4139861 () Bool)

(declare-fun e!2568667 () Bool)

(declare-fun e!2568669 () Bool)

(assert (=> b!4139861 (= e!2568667 (not e!2568669))))

(declare-fun res!1693493 () Bool)

(assert (=> b!4139861 (=> res!1693493 e!2568669)))

(declare-datatypes ((List!45016 0))(
  ( (Nil!44892) (Cons!44892 (h!50312 Rule!14540) (t!342295 List!45016)) )
))
(declare-fun rules!3756 () List!45016)

(declare-fun rBis!149 () Rule!14540)

(get-info :version)

(assert (=> b!4139861 (= res!1693493 (or (not ((_ is Cons!44892) rules!3756)) (not (= (h!50312 rules!3756) rBis!149))))))

(declare-datatypes ((LexerInterface!6959 0))(
  ( (LexerInterfaceExt!6956 (__x!27418 Int)) (Lexer!6957) )
))
(declare-fun thiss!25645 () LexerInterface!6959)

(declare-datatypes ((Unit!64193 0))(
  ( (Unit!64194) )
))
(declare-fun lt!1476302 () Unit!64193)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2216 (LexerInterface!6959 Rule!14540 List!45016) Unit!64193)

(assert (=> b!4139861 (= lt!1476302 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2216 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3176 (LexerInterface!6959 Rule!14540) Bool)

(assert (=> b!4139861 (ruleValid!3176 thiss!25645 rBis!149)))

(declare-fun lt!1476304 () Unit!64193)

(assert (=> b!4139861 (= lt!1476304 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2216 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4139862 () Bool)

(declare-fun res!1693495 () Bool)

(assert (=> b!4139862 (=> (not res!1693495) (not e!2568671))))

(declare-fun isEmpty!26763 (List!45016) Bool)

(assert (=> b!4139862 (= res!1693495 (not (isEmpty!26763 rules!3756)))))

(declare-fun b!4139863 () Bool)

(declare-fun res!1693501 () Bool)

(assert (=> b!4139863 (=> (not res!1693501) (not e!2568671))))

(declare-fun rulesInvariant!6256 (LexerInterface!6959 List!45016) Bool)

(assert (=> b!4139863 (= res!1693501 (rulesInvariant!6256 thiss!25645 rules!3756))))

(declare-fun b!4139864 () Bool)

(assert (=> b!4139864 (= e!2568671 e!2568667)))

(declare-fun res!1693497 () Bool)

(assert (=> b!4139864 (=> (not res!1693497) (not e!2568667))))

(declare-fun lt!1476306 () TokenValue!7600)

(declare-fun lt!1476305 () Int)

(declare-datatypes ((Token!13670 0))(
  ( (Token!13671 (value!230599 TokenValue!7600) (rule!10478 Rule!14540) (size!33248 Int) (originalCharacters!7866 List!45015)) )
))
(declare-datatypes ((tuple2!43278 0))(
  ( (tuple2!43279 (_1!24773 Token!13670) (_2!24773 List!45015)) )
))
(declare-datatypes ((Option!9676 0))(
  ( (None!9675) (Some!9675 (v!40311 tuple2!43278)) )
))
(declare-fun maxPrefix!4149 (LexerInterface!6959 List!45016 List!45015) Option!9676)

(declare-fun getSuffix!2632 (List!45015 List!45015) List!45015)

(assert (=> b!4139864 (= res!1693497 (= (maxPrefix!4149 thiss!25645 rules!3756 input!3238) (Some!9675 (tuple2!43279 (Token!13671 lt!1476306 r!4008 lt!1476305 p!2912) (getSuffix!2632 input!3238 p!2912)))))))

(declare-fun size!33249 (List!45015) Int)

(assert (=> b!4139864 (= lt!1476305 (size!33249 p!2912))))

(declare-fun lt!1476295 () BalanceConc!26756)

(declare-fun apply!10443 (TokenValueInjection!14628 BalanceConc!26756) TokenValue!7600)

(assert (=> b!4139864 (= lt!1476306 (apply!10443 (transformation!7370 r!4008) lt!1476295))))

(declare-fun lt!1476300 () Unit!64193)

(declare-fun lemmaSemiInverse!2228 (TokenValueInjection!14628 BalanceConc!26756) Unit!64193)

(assert (=> b!4139864 (= lt!1476300 (lemmaSemiInverse!2228 (transformation!7370 r!4008) lt!1476295))))

(declare-fun seqFromList!5487 (List!45015) BalanceConc!26756)

(assert (=> b!4139864 (= lt!1476295 (seqFromList!5487 p!2912))))

(declare-fun res!1693500 () Bool)

(assert (=> start!393450 (=> (not res!1693500) (not e!2568671))))

(assert (=> start!393450 (= res!1693500 ((_ is Lexer!6957) thiss!25645))))

(assert (=> start!393450 e!2568671))

(declare-fun e!2568656 () Bool)

(assert (=> start!393450 e!2568656))

(declare-fun e!2568662 () Bool)

(assert (=> start!393450 e!2568662))

(assert (=> start!393450 true))

(assert (=> start!393450 e!2568672))

(assert (=> start!393450 e!2568670))

(declare-fun e!2568668 () Bool)

(assert (=> start!393450 e!2568668))

(declare-fun b!4139865 () Bool)

(declare-fun res!1693502 () Bool)

(assert (=> b!4139865 (=> (not res!1693502) (not e!2568671))))

(declare-fun contains!9050 (List!45016 Rule!14540) Bool)

(assert (=> b!4139865 (= res!1693502 (contains!9050 rules!3756 r!4008))))

(declare-fun b!4139866 () Bool)

(declare-fun res!1693494 () Bool)

(assert (=> b!4139866 (=> (not res!1693494) (not e!2568667))))

(assert (=> b!4139866 (= res!1693494 (ruleValid!3176 thiss!25645 r!4008))))

(assert (=> b!4139867 (= e!2568664 (and tp!1261938 tp!1261937))))

(declare-fun b!4139868 () Bool)

(declare-fun res!1693489 () Bool)

(assert (=> b!4139868 (=> (not res!1693489) (not e!2568671))))

(assert (=> b!4139868 (= res!1693489 (contains!9050 rules!3756 rBis!149))))

(declare-fun e!2568663 () Bool)

(declare-fun b!4139869 () Bool)

(declare-fun tp!1261933 () Bool)

(assert (=> b!4139869 (= e!2568668 (and tp!1261933 (inv!59496 (tag!8230 rBis!149)) (inv!59498 (transformation!7370 rBis!149)) e!2568663))))

(declare-fun b!4139870 () Bool)

(declare-fun tp!1261935 () Bool)

(assert (=> b!4139870 (= e!2568662 (and tp_is_empty!21473 tp!1261935))))

(declare-fun b!4139871 () Bool)

(declare-fun e!2568666 () Bool)

(assert (=> b!4139871 (= e!2568669 e!2568666)))

(declare-fun res!1693492 () Bool)

(assert (=> b!4139871 (=> res!1693492 e!2568666)))

(declare-fun lt!1476299 () Option!9676)

(declare-fun isEmpty!26764 (Option!9676) Bool)

(assert (=> b!4139871 (= res!1693492 (isEmpty!26764 lt!1476299))))

(declare-fun maxPrefixOneRule!3088 (LexerInterface!6959 Rule!14540 List!45015) Option!9676)

(assert (=> b!4139871 (= lt!1476299 (maxPrefixOneRule!3088 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4139871 (not (= rBis!149 r!4008))))

(declare-fun lt!1476301 () Unit!64193)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!68 (LexerInterface!6959 List!45016 Rule!14540 Rule!14540) Unit!64193)

(assert (=> b!4139871 (= lt!1476301 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!68 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6539 (List!45016) List!45016)

(assert (=> b!4139871 (contains!9050 (tail!6539 rules!3756) r!4008)))

(declare-fun lt!1476297 () Unit!64193)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!74 (List!45016 Rule!14540 Rule!14540) Unit!64193)

(assert (=> b!4139871 (= lt!1476297 (lemmaGetIndexBiggerAndHeadEqThenTailContains!74 rules!3756 rBis!149 r!4008))))

(declare-fun b!4139872 () Bool)

(declare-fun res!1693499 () Bool)

(assert (=> b!4139872 (=> (not res!1693499) (not e!2568667))))

(declare-fun matchR!6104 (Regex!12275 List!45015) Bool)

(assert (=> b!4139872 (= res!1693499 (matchR!6104 (regex!7370 r!4008) p!2912))))

(declare-fun b!4139873 () Bool)

(declare-fun res!1693490 () Bool)

(assert (=> b!4139873 (=> (not res!1693490) (not e!2568667))))

(declare-fun getIndex!716 (List!45016 Rule!14540) Int)

(assert (=> b!4139873 (= res!1693490 (< (getIndex!716 rules!3756 rBis!149) (getIndex!716 rules!3756 r!4008)))))

(declare-fun b!4139874 () Bool)

(declare-fun tp!1261936 () Bool)

(declare-fun e!2568657 () Bool)

(declare-fun e!2568665 () Bool)

(assert (=> b!4139874 (= e!2568665 (and tp!1261936 (inv!59496 (tag!8230 (h!50312 rules!3756))) (inv!59498 (transformation!7370 (h!50312 rules!3756))) e!2568657))))

(assert (=> b!4139875 (= e!2568663 (and tp!1261931 tp!1261932))))

(declare-fun b!4139876 () Bool)

(declare-fun res!1693491 () Bool)

(assert (=> b!4139876 (=> (not res!1693491) (not e!2568671))))

(declare-fun isEmpty!26765 (List!45015) Bool)

(assert (=> b!4139876 (= res!1693491 (not (isEmpty!26765 p!2912)))))

(declare-fun b!4139877 () Bool)

(declare-fun tp!1261929 () Bool)

(assert (=> b!4139877 (= e!2568656 (and e!2568665 tp!1261929))))

(declare-fun b!4139878 () Bool)

(declare-fun e!2568658 () Bool)

(assert (=> b!4139878 (= e!2568658 true)))

(declare-fun lt!1476307 () List!45015)

(declare-fun lt!1476296 () tuple2!43278)

(declare-fun ++!11610 (List!45015 List!45015) List!45015)

(assert (=> b!4139878 (isPrefix!4305 lt!1476307 (++!11610 lt!1476307 (_2!24773 lt!1476296)))))

(declare-fun lt!1476303 () Unit!64193)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2934 (List!45015 List!45015) Unit!64193)

(assert (=> b!4139878 (= lt!1476303 (lemmaConcatTwoListThenFirstIsPrefix!2934 lt!1476307 (_2!24773 lt!1476296)))))

(declare-fun lt!1476298 () BalanceConc!26756)

(declare-fun list!16441 (BalanceConc!26756) List!45015)

(assert (=> b!4139878 (= lt!1476307 (list!16441 lt!1476298))))

(declare-fun b!4139879 () Bool)

(assert (=> b!4139879 (= e!2568666 e!2568658)))

(declare-fun res!1693498 () Bool)

(assert (=> b!4139879 (=> res!1693498 e!2568658)))

(declare-fun lt!1476308 () Int)

(assert (=> b!4139879 (= res!1693498 (or (> lt!1476308 lt!1476305) (>= lt!1476308 lt!1476305)))))

(declare-fun size!33250 (BalanceConc!26756) Int)

(assert (=> b!4139879 (= lt!1476308 (size!33250 lt!1476298))))

(declare-fun charsOf!4969 (Token!13670) BalanceConc!26756)

(assert (=> b!4139879 (= lt!1476298 (charsOf!4969 (_1!24773 lt!1476296)))))

(declare-fun get!14650 (Option!9676) tuple2!43278)

(assert (=> b!4139879 (= lt!1476296 (get!14650 lt!1476299))))

(assert (=> b!4139880 (= e!2568657 (and tp!1261934 tp!1261939))))

(assert (= (and start!393450 res!1693500) b!4139860))

(assert (= (and b!4139860 res!1693496) b!4139862))

(assert (= (and b!4139862 res!1693495) b!4139863))

(assert (= (and b!4139863 res!1693501) b!4139865))

(assert (= (and b!4139865 res!1693502) b!4139868))

(assert (= (and b!4139868 res!1693489) b!4139876))

(assert (= (and b!4139876 res!1693491) b!4139864))

(assert (= (and b!4139864 res!1693497) b!4139872))

(assert (= (and b!4139872 res!1693499) b!4139873))

(assert (= (and b!4139873 res!1693490) b!4139866))

(assert (= (and b!4139866 res!1693494) b!4139861))

(assert (= (and b!4139861 (not res!1693493)) b!4139871))

(assert (= (and b!4139871 (not res!1693492)) b!4139879))

(assert (= (and b!4139879 (not res!1693498)) b!4139878))

(assert (= b!4139874 b!4139880))

(assert (= b!4139877 b!4139874))

(assert (= (and start!393450 ((_ is Cons!44892) rules!3756)) b!4139877))

(assert (= (and start!393450 ((_ is Cons!44891) p!2912)) b!4139870))

(assert (= b!4139859 b!4139867))

(assert (= start!393450 b!4139859))

(assert (= (and start!393450 ((_ is Cons!44891) input!3238)) b!4139858))

(assert (= b!4139869 b!4139875))

(assert (= start!393450 b!4139869))

(declare-fun m!4736301 () Bool)

(assert (=> b!4139871 m!4736301))

(declare-fun m!4736303 () Bool)

(assert (=> b!4139871 m!4736303))

(declare-fun m!4736305 () Bool)

(assert (=> b!4139871 m!4736305))

(assert (=> b!4139871 m!4736301))

(declare-fun m!4736307 () Bool)

(assert (=> b!4139871 m!4736307))

(declare-fun m!4736309 () Bool)

(assert (=> b!4139871 m!4736309))

(declare-fun m!4736311 () Bool)

(assert (=> b!4139871 m!4736311))

(declare-fun m!4736313 () Bool)

(assert (=> b!4139876 m!4736313))

(declare-fun m!4736315 () Bool)

(assert (=> b!4139873 m!4736315))

(declare-fun m!4736317 () Bool)

(assert (=> b!4139873 m!4736317))

(declare-fun m!4736319 () Bool)

(assert (=> b!4139866 m!4736319))

(declare-fun m!4736321 () Bool)

(assert (=> b!4139868 m!4736321))

(declare-fun m!4736323 () Bool)

(assert (=> b!4139859 m!4736323))

(declare-fun m!4736325 () Bool)

(assert (=> b!4139859 m!4736325))

(declare-fun m!4736327 () Bool)

(assert (=> b!4139872 m!4736327))

(declare-fun m!4736329 () Bool)

(assert (=> b!4139869 m!4736329))

(declare-fun m!4736331 () Bool)

(assert (=> b!4139869 m!4736331))

(declare-fun m!4736333 () Bool)

(assert (=> b!4139865 m!4736333))

(declare-fun m!4736335 () Bool)

(assert (=> b!4139862 m!4736335))

(declare-fun m!4736337 () Bool)

(assert (=> b!4139864 m!4736337))

(declare-fun m!4736339 () Bool)

(assert (=> b!4139864 m!4736339))

(declare-fun m!4736341 () Bool)

(assert (=> b!4139864 m!4736341))

(declare-fun m!4736343 () Bool)

(assert (=> b!4139864 m!4736343))

(declare-fun m!4736345 () Bool)

(assert (=> b!4139864 m!4736345))

(declare-fun m!4736347 () Bool)

(assert (=> b!4139864 m!4736347))

(declare-fun m!4736349 () Bool)

(assert (=> b!4139874 m!4736349))

(declare-fun m!4736351 () Bool)

(assert (=> b!4139874 m!4736351))

(declare-fun m!4736353 () Bool)

(assert (=> b!4139861 m!4736353))

(declare-fun m!4736355 () Bool)

(assert (=> b!4139861 m!4736355))

(declare-fun m!4736357 () Bool)

(assert (=> b!4139861 m!4736357))

(declare-fun m!4736359 () Bool)

(assert (=> b!4139878 m!4736359))

(assert (=> b!4139878 m!4736359))

(declare-fun m!4736361 () Bool)

(assert (=> b!4139878 m!4736361))

(declare-fun m!4736363 () Bool)

(assert (=> b!4139878 m!4736363))

(declare-fun m!4736365 () Bool)

(assert (=> b!4139878 m!4736365))

(declare-fun m!4736367 () Bool)

(assert (=> b!4139879 m!4736367))

(declare-fun m!4736369 () Bool)

(assert (=> b!4139879 m!4736369))

(declare-fun m!4736371 () Bool)

(assert (=> b!4139879 m!4736371))

(declare-fun m!4736373 () Bool)

(assert (=> b!4139863 m!4736373))

(declare-fun m!4736375 () Bool)

(assert (=> b!4139860 m!4736375))

(check-sat b_and!321435 b_and!321427 (not b!4139874) (not b_next!118549) (not b!4139869) (not b!4139863) (not b_next!118547) (not b!4139858) b_and!321431 (not b!4139872) b_and!321429 (not b!4139865) (not b!4139861) (not b!4139876) (not b_next!118557) (not b!4139877) (not b_next!118555) (not b!4139868) (not b!4139862) (not b!4139873) (not b!4139879) (not b!4139871) (not b!4139864) (not b!4139870) b_and!321433 (not b_next!118553) (not b!4139859) b_and!321425 (not b!4139866) (not b!4139878) (not b!4139860) (not b_next!118551) tp_is_empty!21473)
(check-sat b_and!321429 (not b_next!118557) b_and!321435 (not b_next!118555) b_and!321427 b_and!321425 (not b_next!118551) (not b_next!118549) (not b_next!118547) b_and!321431 b_and!321433 (not b_next!118553))
