; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255458 () Bool)

(assert start!255458)

(declare-fun b!2626941 () Bool)

(declare-fun b_free!73845 () Bool)

(declare-fun b_next!74549 () Bool)

(assert (=> b!2626941 (= b_free!73845 (not b_next!74549))))

(declare-fun tp!832877 () Bool)

(declare-fun b_and!192379 () Bool)

(assert (=> b!2626941 (= tp!832877 b_and!192379)))

(declare-fun b_free!73847 () Bool)

(declare-fun b_next!74551 () Bool)

(assert (=> b!2626941 (= b_free!73847 (not b_next!74551))))

(declare-fun tp!832881 () Bool)

(declare-fun b_and!192381 () Bool)

(assert (=> b!2626941 (= tp!832881 b_and!192381)))

(declare-fun b!2626951 () Bool)

(declare-fun b_free!73849 () Bool)

(declare-fun b_next!74553 () Bool)

(assert (=> b!2626951 (= b_free!73849 (not b_next!74553))))

(declare-fun tp!832879 () Bool)

(declare-fun b_and!192383 () Bool)

(assert (=> b!2626951 (= tp!832879 b_and!192383)))

(declare-fun b_free!73851 () Bool)

(declare-fun b_next!74555 () Bool)

(assert (=> b!2626951 (= b_free!73851 (not b_next!74555))))

(declare-fun tp!832878 () Bool)

(declare-fun b_and!192385 () Bool)

(assert (=> b!2626951 (= tp!832878 b_and!192385)))

(declare-fun bs!475587 () Bool)

(declare-fun b!2626934 () Bool)

(declare-fun b!2626945 () Bool)

(assert (= bs!475587 (and b!2626934 b!2626945)))

(declare-fun lambda!98338 () Int)

(declare-fun lambda!98337 () Int)

(assert (=> bs!475587 (not (= lambda!98338 lambda!98337))))

(declare-fun b!2626962 () Bool)

(declare-fun e!1657185 () Bool)

(assert (=> b!2626962 (= e!1657185 true)))

(declare-fun b!2626961 () Bool)

(declare-fun e!1657184 () Bool)

(assert (=> b!2626961 (= e!1657184 e!1657185)))

(declare-fun b!2626960 () Bool)

(declare-fun e!1657183 () Bool)

(assert (=> b!2626960 (= e!1657183 e!1657184)))

(assert (=> b!2626934 e!1657183))

(assert (= b!2626961 b!2626962))

(assert (= b!2626960 b!2626961))

(declare-datatypes ((List!30415 0))(
  ( (Nil!30315) (Cons!30315 (h!35735 (_ BitVec 16)) (t!215986 List!30415)) )
))
(declare-datatypes ((C!15636 0))(
  ( (C!15637 (val!9752 Int)) )
))
(declare-datatypes ((String!33968 0))(
  ( (String!33969 (value!148536 String)) )
))
(declare-datatypes ((Regex!7739 0))(
  ( (ElementMatch!7739 (c!422645 C!15636)) (Concat!12556 (regOne!15990 Regex!7739) (regTwo!15990 Regex!7739)) (EmptyExpr!7739) (Star!7739 (reg!8068 Regex!7739)) (EmptyLang!7739) (Union!7739 (regOne!15991 Regex!7739) (regTwo!15991 Regex!7739)) )
))
(declare-datatypes ((TokenValue!4817 0))(
  ( (FloatLiteralValue!9634 (text!34164 List!30415)) (TokenValueExt!4816 (__x!19467 Int)) (Broken!24085 (value!148537 List!30415)) (Object!4916) (End!4817) (Def!4817) (Underscore!4817) (Match!4817) (Else!4817) (Error!4817) (Case!4817) (If!4817) (Extends!4817) (Abstract!4817) (Class!4817) (Val!4817) (DelimiterValue!9634 (del!4877 List!30415)) (KeywordValue!4823 (value!148538 List!30415)) (CommentValue!9634 (value!148539 List!30415)) (WhitespaceValue!9634 (value!148540 List!30415)) (IndentationValue!4817 (value!148541 List!30415)) (String!33970) (Int32!4817) (Broken!24086 (value!148542 List!30415)) (Boolean!4818) (Unit!44366) (OperatorValue!4820 (op!4877 List!30415)) (IdentifierValue!9634 (value!148543 List!30415)) (IdentifierValue!9635 (value!148544 List!30415)) (WhitespaceValue!9635 (value!148545 List!30415)) (True!9634) (False!9634) (Broken!24087 (value!148546 List!30415)) (Broken!24088 (value!148547 List!30415)) (True!9635) (RightBrace!4817) (RightBracket!4817) (Colon!4817) (Null!4817) (Comma!4817) (LeftBracket!4817) (False!9635) (LeftBrace!4817) (ImaginaryLiteralValue!4817 (text!34165 List!30415)) (StringLiteralValue!14451 (value!148548 List!30415)) (EOFValue!4817 (value!148549 List!30415)) (IdentValue!4817 (value!148550 List!30415)) (DelimiterValue!9635 (value!148551 List!30415)) (DedentValue!4817 (value!148552 List!30415)) (NewLineValue!4817 (value!148553 List!30415)) (IntegerValue!14451 (value!148554 (_ BitVec 32)) (text!34166 List!30415)) (IntegerValue!14452 (value!148555 Int) (text!34167 List!30415)) (Times!4817) (Or!4817) (Equal!4817) (Minus!4817) (Broken!24089 (value!148556 List!30415)) (And!4817) (Div!4817) (LessEqual!4817) (Mod!4817) (Concat!12557) (Not!4817) (Plus!4817) (SpaceValue!4817 (value!148557 List!30415)) (IntegerValue!14453 (value!148558 Int) (text!34168 List!30415)) (StringLiteralValue!14452 (text!34169 List!30415)) (FloatLiteralValue!9635 (text!34170 List!30415)) (BytesLiteralValue!4817 (value!148559 List!30415)) (CommentValue!9635 (value!148560 List!30415)) (StringLiteralValue!14453 (value!148561 List!30415)) (ErrorTokenValue!4817 (msg!4878 List!30415)) )
))
(declare-datatypes ((List!30416 0))(
  ( (Nil!30316) (Cons!30316 (h!35736 C!15636) (t!215987 List!30416)) )
))
(declare-datatypes ((IArray!18869 0))(
  ( (IArray!18870 (innerList!9492 List!30416)) )
))
(declare-datatypes ((Conc!9432 0))(
  ( (Node!9432 (left!23365 Conc!9432) (right!23695 Conc!9432) (csize!19094 Int) (cheight!9643 Int)) (Leaf!14470 (xs!12432 IArray!18869) (csize!19095 Int)) (Empty!9432) )
))
(declare-datatypes ((BalanceConc!18478 0))(
  ( (BalanceConc!18479 (c!422646 Conc!9432)) )
))
(declare-datatypes ((TokenValueInjection!9074 0))(
  ( (TokenValueInjection!9075 (toValue!6509 Int) (toChars!6368 Int)) )
))
(declare-datatypes ((Rule!8990 0))(
  ( (Rule!8991 (regex!4595 Regex!7739) (tag!5089 String!33968) (isSeparator!4595 Bool) (transformation!4595 TokenValueInjection!9074)) )
))
(declare-datatypes ((List!30417 0))(
  ( (Nil!30317) (Cons!30317 (h!35737 Rule!8990) (t!215988 List!30417)) )
))
(declare-fun rules!1726 () List!30417)

(get-info :version)

(assert (= (and b!2626934 ((_ is Cons!30317) rules!1726)) b!2626960))

(declare-fun order!16273 () Int)

(declare-fun order!16271 () Int)

(declare-fun dynLambda!12923 (Int Int) Int)

(declare-fun dynLambda!12924 (Int Int) Int)

(assert (=> b!2626962 (< (dynLambda!12923 order!16271 (toValue!6509 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98338))))

(declare-fun order!16275 () Int)

(declare-fun dynLambda!12925 (Int Int) Int)

(assert (=> b!2626962 (< (dynLambda!12925 order!16275 (toChars!6368 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98338))))

(assert (=> b!2626934 true))

(declare-fun tp!832875 () Bool)

(declare-fun e!1657170 () Bool)

(declare-fun b!2626931 () Bool)

(declare-datatypes ((Token!8660 0))(
  ( (Token!8661 (value!148562 TokenValue!4817) (rule!6977 Rule!8990) (size!23466 Int) (originalCharacters!5361 List!30416)) )
))
(declare-fun separatorToken!156 () Token!8660)

(declare-fun e!1657161 () Bool)

(declare-fun inv!41072 (String!33968) Bool)

(declare-fun inv!41077 (TokenValueInjection!9074) Bool)

(assert (=> b!2626931 (= e!1657161 (and tp!832875 (inv!41072 (tag!5089 (rule!6977 separatorToken!156))) (inv!41077 (transformation!4595 (rule!6977 separatorToken!156))) e!1657170))))

(declare-fun b!2626932 () Bool)

(declare-fun res!1105630 () Bool)

(declare-fun e!1657174 () Bool)

(assert (=> b!2626932 (=> (not res!1105630) (not e!1657174))))

(declare-fun sepAndNonSepRulesDisjointChars!1168 (List!30417 List!30417) Bool)

(assert (=> b!2626932 (= res!1105630 (sepAndNonSepRulesDisjointChars!1168 rules!1726 rules!1726))))

(declare-fun b!2626933 () Bool)

(declare-fun e!1657173 () Bool)

(assert (=> b!2626933 (= e!1657174 e!1657173)))

(declare-fun res!1105626 () Bool)

(assert (=> b!2626933 (=> (not res!1105626) (not e!1657173))))

(declare-fun from!862 () Int)

(declare-fun lt!923828 () Int)

(assert (=> b!2626933 (= res!1105626 (< from!862 lt!923828))))

(declare-datatypes ((List!30418 0))(
  ( (Nil!30318) (Cons!30318 (h!35738 Token!8660) (t!215989 List!30418)) )
))
(declare-fun lt!923827 () List!30418)

(declare-datatypes ((Unit!44367 0))(
  ( (Unit!44368) )
))
(declare-fun lt!923821 () Unit!44367)

(declare-fun lt!923820 () List!30418)

(declare-fun lemmaContentSubsetPreservesForall!264 (List!30418 List!30418 Int) Unit!44367)

(assert (=> b!2626933 (= lt!923821 (lemmaContentSubsetPreservesForall!264 lt!923820 lt!923827 lambda!98337))))

(declare-datatypes ((IArray!18871 0))(
  ( (IArray!18872 (innerList!9493 List!30418)) )
))
(declare-datatypes ((Conc!9433 0))(
  ( (Node!9433 (left!23366 Conc!9433) (right!23696 Conc!9433) (csize!19096 Int) (cheight!9644 Int)) (Leaf!14471 (xs!12433 IArray!18871) (csize!19097 Int)) (Empty!9433) )
))
(declare-datatypes ((BalanceConc!18480 0))(
  ( (BalanceConc!18481 (c!422647 Conc!9433)) )
))
(declare-fun v!6381 () BalanceConc!18480)

(declare-fun dropList!898 (BalanceConc!18480 Int) List!30418)

(assert (=> b!2626933 (= lt!923827 (dropList!898 v!6381 from!862))))

(declare-fun list!11389 (BalanceConc!18480) List!30418)

(assert (=> b!2626933 (= lt!923820 (list!11389 v!6381))))

(declare-fun e!1657162 () Bool)

(declare-fun e!1657164 () Bool)

(assert (=> b!2626934 (= e!1657162 e!1657164)))

(declare-fun res!1105628 () Bool)

(assert (=> b!2626934 (=> res!1105628 e!1657164)))

(declare-fun lt!923830 () Bool)

(declare-datatypes ((tuple2!29876 0))(
  ( (tuple2!29877 (_1!17480 Token!8660) (_2!17480 BalanceConc!18478)) )
))
(declare-datatypes ((Option!5984 0))(
  ( (None!5983) (Some!5983 (v!32364 tuple2!29876)) )
))
(declare-fun lt!923826 () Option!5984)

(declare-fun lt!923829 () Token!8660)

(assert (=> b!2626934 (= res!1105628 (or (and (not lt!923830) (= (_1!17480 (v!32364 lt!923826)) lt!923829)) lt!923830 (= (_1!17480 (v!32364 lt!923826)) lt!923829)))))

(assert (=> b!2626934 (= lt!923830 (not ((_ is Some!5983) lt!923826)))))

(declare-datatypes ((LexerInterface!4192 0))(
  ( (LexerInterfaceExt!4189 (__x!19468 Int)) (Lexer!4190) )
))
(declare-fun thiss!14197 () LexerInterface!4192)

(declare-fun lt!923824 () BalanceConc!18478)

(declare-fun lt!923825 () BalanceConc!18478)

(declare-fun maxPrefixZipperSequence!922 (LexerInterface!4192 List!30417 BalanceConc!18478) Option!5984)

(declare-fun ++!7377 (BalanceConc!18478 BalanceConc!18478) BalanceConc!18478)

(assert (=> b!2626934 (= lt!923826 (maxPrefixZipperSequence!922 thiss!14197 rules!1726 (++!7377 lt!923825 lt!923824)))))

(declare-fun charsOf!2886 (Token!8660) BalanceConc!18478)

(assert (=> b!2626934 (= lt!923825 (charsOf!2886 lt!923829))))

(declare-fun printWithSeparatorTokenWhenNeededRec!470 (LexerInterface!4192 List!30417 BalanceConc!18480 Token!8660 Int) BalanceConc!18478)

(assert (=> b!2626934 (= lt!923824 (printWithSeparatorTokenWhenNeededRec!470 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!923822 () Unit!44367)

(declare-fun forallContained!951 (List!30418 Int Token!8660) Unit!44367)

(assert (=> b!2626934 (= lt!923822 (forallContained!951 lt!923820 lambda!98338 lt!923829))))

(declare-fun b!2626935 () Bool)

(declare-fun res!1105629 () Bool)

(assert (=> b!2626935 (=> (not res!1105629) (not e!1657174))))

(declare-fun rulesProduceEachTokenIndividually!1012 (LexerInterface!4192 List!30417 BalanceConc!18480) Bool)

(assert (=> b!2626935 (= res!1105629 (rulesProduceEachTokenIndividually!1012 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2626936 () Bool)

(declare-fun res!1105635 () Bool)

(assert (=> b!2626936 (=> (not res!1105635) (not e!1657174))))

(assert (=> b!2626936 (= res!1105635 (isSeparator!4595 (rule!6977 separatorToken!156)))))

(declare-fun b!2626937 () Bool)

(declare-fun e!1657165 () Bool)

(assert (=> b!2626937 (= e!1657165 e!1657174)))

(declare-fun res!1105638 () Bool)

(assert (=> b!2626937 (=> (not res!1105638) (not e!1657174))))

(assert (=> b!2626937 (= res!1105638 (<= from!862 lt!923828))))

(declare-fun size!23467 (BalanceConc!18480) Int)

(assert (=> b!2626937 (= lt!923828 (size!23467 v!6381))))

(declare-fun b!2626938 () Bool)

(declare-fun e!1657171 () Bool)

(declare-fun tp!832882 () Bool)

(declare-fun inv!21 (TokenValue!4817) Bool)

(assert (=> b!2626938 (= e!1657171 (and (inv!21 (value!148562 separatorToken!156)) e!1657161 tp!832882))))

(declare-fun b!2626939 () Bool)

(declare-fun e!1657175 () Bool)

(declare-fun tp!832876 () Bool)

(declare-fun inv!41078 (Conc!9433) Bool)

(assert (=> b!2626939 (= e!1657175 (and (inv!41078 (c!422647 v!6381)) tp!832876))))

(declare-fun e!1657169 () Bool)

(declare-fun tp!832874 () Bool)

(declare-fun b!2626940 () Bool)

(declare-fun e!1657168 () Bool)

(assert (=> b!2626940 (= e!1657169 (and tp!832874 (inv!41072 (tag!5089 (h!35737 rules!1726))) (inv!41077 (transformation!4595 (h!35737 rules!1726))) e!1657168))))

(declare-fun res!1105636 () Bool)

(assert (=> start!255458 (=> (not res!1105636) (not e!1657165))))

(assert (=> start!255458 (= res!1105636 (and ((_ is Lexer!4190) thiss!14197) (>= from!862 0)))))

(assert (=> start!255458 e!1657165))

(assert (=> start!255458 true))

(declare-fun e!1657176 () Bool)

(assert (=> start!255458 e!1657176))

(declare-fun inv!41079 (Token!8660) Bool)

(assert (=> start!255458 (and (inv!41079 separatorToken!156) e!1657171)))

(declare-fun inv!41080 (BalanceConc!18480) Bool)

(assert (=> start!255458 (and (inv!41080 v!6381) e!1657175)))

(assert (=> b!2626941 (= e!1657170 (and tp!832877 tp!832881))))

(declare-fun b!2626942 () Bool)

(declare-fun res!1105632 () Bool)

(assert (=> b!2626942 (=> (not res!1105632) (not e!1657174))))

(declare-fun rulesInvariant!3692 (LexerInterface!4192 List!30417) Bool)

(assert (=> b!2626942 (= res!1105632 (rulesInvariant!3692 thiss!14197 rules!1726))))

(declare-fun b!2626943 () Bool)

(declare-fun res!1105627 () Bool)

(assert (=> b!2626943 (=> (not res!1105627) (not e!1657174))))

(declare-fun isEmpty!17324 (List!30417) Bool)

(assert (=> b!2626943 (= res!1105627 (not (isEmpty!17324 rules!1726)))))

(declare-fun b!2626944 () Bool)

(declare-fun res!1105633 () Bool)

(assert (=> b!2626944 (=> res!1105633 e!1657162)))

(declare-fun contains!5690 (List!30418 Token!8660) Bool)

(assert (=> b!2626944 (= res!1105633 (not (contains!5690 lt!923820 lt!923829)))))

(declare-fun res!1105631 () Bool)

(assert (=> b!2626945 (=> (not res!1105631) (not e!1657174))))

(declare-fun forall!6324 (BalanceConc!18480 Int) Bool)

(assert (=> b!2626945 (= res!1105631 (forall!6324 v!6381 lambda!98337))))

(declare-fun b!2626946 () Bool)

(declare-fun e!1657163 () Bool)

(assert (=> b!2626946 (= e!1657164 e!1657163)))

(declare-fun res!1105634 () Bool)

(assert (=> b!2626946 (=> res!1105634 e!1657163)))

(declare-fun rulesProduceEachTokenIndividuallyList!1451 (LexerInterface!4192 List!30417 List!30418) Bool)

(assert (=> b!2626946 (= res!1105634 (not (rulesProduceEachTokenIndividuallyList!1451 thiss!14197 rules!1726 lt!923827)))))

(declare-fun lt!923818 () BalanceConc!18478)

(assert (=> b!2626946 (= lt!923818 (++!7377 (++!7377 lt!923825 (charsOf!2886 separatorToken!156)) lt!923824))))

(declare-fun b!2626947 () Bool)

(declare-fun res!1105637 () Bool)

(assert (=> b!2626947 (=> (not res!1105637) (not e!1657174))))

(declare-fun rulesProduceIndividualToken!1904 (LexerInterface!4192 List!30417 Token!8660) Bool)

(assert (=> b!2626947 (= res!1105637 (rulesProduceIndividualToken!1904 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2626948 () Bool)

(assert (=> b!2626948 (= e!1657173 (not e!1657162))))

(declare-fun res!1105625 () Bool)

(assert (=> b!2626948 (=> res!1105625 e!1657162)))

(declare-fun contains!5691 (BalanceConc!18480 Token!8660) Bool)

(assert (=> b!2626948 (= res!1105625 (not (contains!5691 v!6381 lt!923829)))))

(declare-fun apply!7170 (BalanceConc!18480 Int) Token!8660)

(assert (=> b!2626948 (= lt!923829 (apply!7170 v!6381 from!862))))

(declare-fun lt!923831 () List!30418)

(declare-fun tail!4232 (List!30418) List!30418)

(declare-fun drop!1591 (List!30418 Int) List!30418)

(assert (=> b!2626948 (= (tail!4232 lt!923831) (drop!1591 lt!923820 (+ 1 from!862)))))

(declare-fun lt!923819 () Unit!44367)

(declare-fun lemmaDropTail!780 (List!30418 Int) Unit!44367)

(assert (=> b!2626948 (= lt!923819 (lemmaDropTail!780 lt!923820 from!862))))

(declare-fun head!5994 (List!30418) Token!8660)

(declare-fun apply!7171 (List!30418 Int) Token!8660)

(assert (=> b!2626948 (= (head!5994 lt!923831) (apply!7171 lt!923820 from!862))))

(assert (=> b!2626948 (= lt!923831 (drop!1591 lt!923820 from!862))))

(declare-fun lt!923823 () Unit!44367)

(declare-fun lemmaDropApply!806 (List!30418 Int) Unit!44367)

(assert (=> b!2626948 (= lt!923823 (lemmaDropApply!806 lt!923820 from!862))))

(declare-fun b!2626949 () Bool)

(declare-fun forall!6325 (List!30418 Int) Bool)

(assert (=> b!2626949 (= e!1657163 (forall!6325 lt!923827 lambda!98337))))

(declare-fun b!2626950 () Bool)

(declare-fun tp!832880 () Bool)

(assert (=> b!2626950 (= e!1657176 (and e!1657169 tp!832880))))

(assert (=> b!2626951 (= e!1657168 (and tp!832879 tp!832878))))

(assert (= (and start!255458 res!1105636) b!2626937))

(assert (= (and b!2626937 res!1105638) b!2626943))

(assert (= (and b!2626943 res!1105627) b!2626942))

(assert (= (and b!2626942 res!1105632) b!2626935))

(assert (= (and b!2626935 res!1105629) b!2626947))

(assert (= (and b!2626947 res!1105637) b!2626936))

(assert (= (and b!2626936 res!1105635) b!2626945))

(assert (= (and b!2626945 res!1105631) b!2626932))

(assert (= (and b!2626932 res!1105630) b!2626933))

(assert (= (and b!2626933 res!1105626) b!2626948))

(assert (= (and b!2626948 (not res!1105625)) b!2626944))

(assert (= (and b!2626944 (not res!1105633)) b!2626934))

(assert (= (and b!2626934 (not res!1105628)) b!2626946))

(assert (= (and b!2626946 (not res!1105634)) b!2626949))

(assert (= b!2626940 b!2626951))

(assert (= b!2626950 b!2626940))

(assert (= (and start!255458 ((_ is Cons!30317) rules!1726)) b!2626950))

(assert (= b!2626931 b!2626941))

(assert (= b!2626938 b!2626931))

(assert (= start!255458 b!2626938))

(assert (= start!255458 b!2626939))

(declare-fun m!2969957 () Bool)

(assert (=> b!2626938 m!2969957))

(declare-fun m!2969959 () Bool)

(assert (=> b!2626946 m!2969959))

(declare-fun m!2969961 () Bool)

(assert (=> b!2626946 m!2969961))

(assert (=> b!2626946 m!2969961))

(declare-fun m!2969963 () Bool)

(assert (=> b!2626946 m!2969963))

(assert (=> b!2626946 m!2969963))

(declare-fun m!2969965 () Bool)

(assert (=> b!2626946 m!2969965))

(declare-fun m!2969967 () Bool)

(assert (=> b!2626947 m!2969967))

(declare-fun m!2969969 () Bool)

(assert (=> b!2626939 m!2969969))

(declare-fun m!2969971 () Bool)

(assert (=> b!2626944 m!2969971))

(declare-fun m!2969973 () Bool)

(assert (=> b!2626931 m!2969973))

(declare-fun m!2969975 () Bool)

(assert (=> b!2626931 m!2969975))

(declare-fun m!2969977 () Bool)

(assert (=> start!255458 m!2969977))

(declare-fun m!2969979 () Bool)

(assert (=> start!255458 m!2969979))

(declare-fun m!2969981 () Bool)

(assert (=> b!2626934 m!2969981))

(declare-fun m!2969983 () Bool)

(assert (=> b!2626934 m!2969983))

(declare-fun m!2969985 () Bool)

(assert (=> b!2626934 m!2969985))

(assert (=> b!2626934 m!2969981))

(declare-fun m!2969987 () Bool)

(assert (=> b!2626934 m!2969987))

(declare-fun m!2969989 () Bool)

(assert (=> b!2626934 m!2969989))

(declare-fun m!2969991 () Bool)

(assert (=> b!2626933 m!2969991))

(declare-fun m!2969993 () Bool)

(assert (=> b!2626933 m!2969993))

(declare-fun m!2969995 () Bool)

(assert (=> b!2626933 m!2969995))

(declare-fun m!2969997 () Bool)

(assert (=> b!2626932 m!2969997))

(declare-fun m!2969999 () Bool)

(assert (=> b!2626940 m!2969999))

(declare-fun m!2970001 () Bool)

(assert (=> b!2626940 m!2970001))

(declare-fun m!2970003 () Bool)

(assert (=> b!2626942 m!2970003))

(declare-fun m!2970005 () Bool)

(assert (=> b!2626943 m!2970005))

(declare-fun m!2970007 () Bool)

(assert (=> b!2626948 m!2970007))

(declare-fun m!2970009 () Bool)

(assert (=> b!2626948 m!2970009))

(declare-fun m!2970011 () Bool)

(assert (=> b!2626948 m!2970011))

(declare-fun m!2970013 () Bool)

(assert (=> b!2626948 m!2970013))

(declare-fun m!2970015 () Bool)

(assert (=> b!2626948 m!2970015))

(declare-fun m!2970017 () Bool)

(assert (=> b!2626948 m!2970017))

(declare-fun m!2970019 () Bool)

(assert (=> b!2626948 m!2970019))

(declare-fun m!2970021 () Bool)

(assert (=> b!2626948 m!2970021))

(declare-fun m!2970023 () Bool)

(assert (=> b!2626948 m!2970023))

(declare-fun m!2970025 () Bool)

(assert (=> b!2626945 m!2970025))

(declare-fun m!2970027 () Bool)

(assert (=> b!2626937 m!2970027))

(declare-fun m!2970029 () Bool)

(assert (=> b!2626935 m!2970029))

(declare-fun m!2970031 () Bool)

(assert (=> b!2626949 m!2970031))

(check-sat (not b!2626934) (not b!2626940) (not b!2626949) (not start!255458) (not b!2626960) (not b!2626932) (not b!2626944) (not b_next!74551) (not b_next!74555) (not b!2626937) b_and!192383 (not b!2626947) (not b!2626946) (not b!2626948) (not b!2626945) (not b!2626942) (not b!2626938) b_and!192379 (not b!2626931) (not b!2626935) (not b_next!74549) (not b!2626950) (not b!2626933) b_and!192381 (not b!2626943) (not b!2626939) (not b_next!74553) b_and!192385)
(check-sat b_and!192379 (not b_next!74549) b_and!192381 (not b_next!74551) (not b_next!74555) b_and!192383 (not b_next!74553) b_and!192385)
(get-model)

(declare-fun d!746112 () Bool)

(declare-fun res!1105678 () Bool)

(declare-fun e!1657235 () Bool)

(assert (=> d!746112 (=> (not res!1105678) (not e!1657235))))

(declare-fun rulesValid!1713 (LexerInterface!4192 List!30417) Bool)

(assert (=> d!746112 (= res!1105678 (rulesValid!1713 thiss!14197 rules!1726))))

(assert (=> d!746112 (= (rulesInvariant!3692 thiss!14197 rules!1726) e!1657235)))

(declare-fun b!2627033 () Bool)

(declare-datatypes ((List!30419 0))(
  ( (Nil!30319) (Cons!30319 (h!35739 String!33968) (t!216036 List!30419)) )
))
(declare-fun noDuplicateTag!1709 (LexerInterface!4192 List!30417 List!30419) Bool)

(assert (=> b!2627033 (= e!1657235 (noDuplicateTag!1709 thiss!14197 rules!1726 Nil!30319))))

(assert (= (and d!746112 res!1105678) b!2627033))

(declare-fun m!2970083 () Bool)

(assert (=> d!746112 m!2970083))

(declare-fun m!2970085 () Bool)

(assert (=> b!2627033 m!2970085))

(assert (=> b!2626942 d!746112))

(declare-fun d!746114 () Bool)

(declare-fun res!1105683 () Bool)

(declare-fun e!1657238 () Bool)

(assert (=> d!746114 (=> (not res!1105683) (not e!1657238))))

(declare-fun isEmpty!17326 (List!30416) Bool)

(assert (=> d!746114 (= res!1105683 (not (isEmpty!17326 (originalCharacters!5361 separatorToken!156))))))

(assert (=> d!746114 (= (inv!41079 separatorToken!156) e!1657238)))

(declare-fun b!2627038 () Bool)

(declare-fun res!1105684 () Bool)

(assert (=> b!2627038 (=> (not res!1105684) (not e!1657238))))

(declare-fun list!11391 (BalanceConc!18478) List!30416)

(declare-fun dynLambda!12928 (Int TokenValue!4817) BalanceConc!18478)

(assert (=> b!2627038 (= res!1105684 (= (originalCharacters!5361 separatorToken!156) (list!11391 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (value!148562 separatorToken!156)))))))

(declare-fun b!2627039 () Bool)

(declare-fun size!23469 (List!30416) Int)

(assert (=> b!2627039 (= e!1657238 (= (size!23466 separatorToken!156) (size!23469 (originalCharacters!5361 separatorToken!156))))))

(assert (= (and d!746114 res!1105683) b!2627038))

(assert (= (and b!2627038 res!1105684) b!2627039))

(declare-fun b_lambda!79173 () Bool)

(assert (=> (not b_lambda!79173) (not b!2627038)))

(declare-fun t!215991 () Bool)

(declare-fun tb!143535 () Bool)

(assert (=> (and b!2626941 (= (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156)))) t!215991) tb!143535))

(declare-fun b!2627044 () Bool)

(declare-fun e!1657241 () Bool)

(declare-fun tp!832885 () Bool)

(declare-fun inv!41083 (Conc!9432) Bool)

(assert (=> b!2627044 (= e!1657241 (and (inv!41083 (c!422646 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (value!148562 separatorToken!156)))) tp!832885))))

(declare-fun result!178330 () Bool)

(declare-fun inv!41084 (BalanceConc!18478) Bool)

(assert (=> tb!143535 (= result!178330 (and (inv!41084 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (value!148562 separatorToken!156))) e!1657241))))

(assert (= tb!143535 b!2627044))

(declare-fun m!2970087 () Bool)

(assert (=> b!2627044 m!2970087))

(declare-fun m!2970089 () Bool)

(assert (=> tb!143535 m!2970089))

(assert (=> b!2627038 t!215991))

(declare-fun b_and!192387 () Bool)

(assert (= b_and!192381 (and (=> t!215991 result!178330) b_and!192387)))

(declare-fun tb!143537 () Bool)

(declare-fun t!215993 () Bool)

(assert (=> (and b!2626951 (= (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156)))) t!215993) tb!143537))

(declare-fun result!178334 () Bool)

(assert (= result!178334 result!178330))

(assert (=> b!2627038 t!215993))

(declare-fun b_and!192389 () Bool)

(assert (= b_and!192385 (and (=> t!215993 result!178334) b_and!192389)))

(declare-fun m!2970091 () Bool)

(assert (=> d!746114 m!2970091))

(declare-fun m!2970093 () Bool)

(assert (=> b!2627038 m!2970093))

(assert (=> b!2627038 m!2970093))

(declare-fun m!2970095 () Bool)

(assert (=> b!2627038 m!2970095))

(declare-fun m!2970097 () Bool)

(assert (=> b!2627039 m!2970097))

(assert (=> start!255458 d!746114))

(declare-fun d!746116 () Bool)

(declare-fun isBalanced!2865 (Conc!9433) Bool)

(assert (=> d!746116 (= (inv!41080 v!6381) (isBalanced!2865 (c!422647 v!6381)))))

(declare-fun bs!475589 () Bool)

(assert (= bs!475589 d!746116))

(declare-fun m!2970099 () Bool)

(assert (=> bs!475589 m!2970099))

(assert (=> start!255458 d!746116))

(declare-fun d!746118 () Bool)

(assert (=> d!746118 (= (inv!41072 (tag!5089 (rule!6977 separatorToken!156))) (= (mod (str.len (value!148536 (tag!5089 (rule!6977 separatorToken!156)))) 2) 0))))

(assert (=> b!2626931 d!746118))

(declare-fun d!746120 () Bool)

(declare-fun res!1105687 () Bool)

(declare-fun e!1657244 () Bool)

(assert (=> d!746120 (=> (not res!1105687) (not e!1657244))))

(declare-fun semiInverseModEq!1909 (Int Int) Bool)

(assert (=> d!746120 (= res!1105687 (semiInverseModEq!1909 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (toValue!6509 (transformation!4595 (rule!6977 separatorToken!156)))))))

(assert (=> d!746120 (= (inv!41077 (transformation!4595 (rule!6977 separatorToken!156))) e!1657244)))

(declare-fun b!2627047 () Bool)

(declare-fun equivClasses!1810 (Int Int) Bool)

(assert (=> b!2627047 (= e!1657244 (equivClasses!1810 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (toValue!6509 (transformation!4595 (rule!6977 separatorToken!156)))))))

(assert (= (and d!746120 res!1105687) b!2627047))

(declare-fun m!2970101 () Bool)

(assert (=> d!746120 m!2970101))

(declare-fun m!2970103 () Bool)

(assert (=> b!2627047 m!2970103))

(assert (=> b!2626931 d!746120))

(declare-fun d!746122 () Bool)

(assert (=> d!746122 (= (isEmpty!17324 rules!1726) ((_ is Nil!30317) rules!1726))))

(assert (=> b!2626943 d!746122))

(declare-fun d!746124 () Bool)

(declare-fun res!1105692 () Bool)

(declare-fun e!1657249 () Bool)

(assert (=> d!746124 (=> res!1105692 e!1657249)))

(assert (=> d!746124 (= res!1105692 (not ((_ is Cons!30317) rules!1726)))))

(assert (=> d!746124 (= (sepAndNonSepRulesDisjointChars!1168 rules!1726 rules!1726) e!1657249)))

(declare-fun b!2627052 () Bool)

(declare-fun e!1657250 () Bool)

(assert (=> b!2627052 (= e!1657249 e!1657250)))

(declare-fun res!1105693 () Bool)

(assert (=> b!2627052 (=> (not res!1105693) (not e!1657250))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!516 (Rule!8990 List!30417) Bool)

(assert (=> b!2627052 (= res!1105693 (ruleDisjointCharsFromAllFromOtherType!516 (h!35737 rules!1726) rules!1726))))

(declare-fun b!2627053 () Bool)

(assert (=> b!2627053 (= e!1657250 (sepAndNonSepRulesDisjointChars!1168 rules!1726 (t!215988 rules!1726)))))

(assert (= (and d!746124 (not res!1105692)) b!2627052))

(assert (= (and b!2627052 res!1105693) b!2627053))

(declare-fun m!2970105 () Bool)

(assert (=> b!2627052 m!2970105))

(declare-fun m!2970107 () Bool)

(assert (=> b!2627053 m!2970107))

(assert (=> b!2626932 d!746124))

(declare-fun d!746126 () Bool)

(declare-fun c!422669 () Bool)

(assert (=> d!746126 (= c!422669 ((_ is Node!9433) (c!422647 v!6381)))))

(declare-fun e!1657255 () Bool)

(assert (=> d!746126 (= (inv!41078 (c!422647 v!6381)) e!1657255)))

(declare-fun b!2627060 () Bool)

(declare-fun inv!41085 (Conc!9433) Bool)

(assert (=> b!2627060 (= e!1657255 (inv!41085 (c!422647 v!6381)))))

(declare-fun b!2627061 () Bool)

(declare-fun e!1657256 () Bool)

(assert (=> b!2627061 (= e!1657255 e!1657256)))

(declare-fun res!1105696 () Bool)

(assert (=> b!2627061 (= res!1105696 (not ((_ is Leaf!14471) (c!422647 v!6381))))))

(assert (=> b!2627061 (=> res!1105696 e!1657256)))

(declare-fun b!2627062 () Bool)

(declare-fun inv!41086 (Conc!9433) Bool)

(assert (=> b!2627062 (= e!1657256 (inv!41086 (c!422647 v!6381)))))

(assert (= (and d!746126 c!422669) b!2627060))

(assert (= (and d!746126 (not c!422669)) b!2627061))

(assert (= (and b!2627061 (not res!1105696)) b!2627062))

(declare-fun m!2970109 () Bool)

(assert (=> b!2627060 m!2970109))

(declare-fun m!2970111 () Bool)

(assert (=> b!2627062 m!2970111))

(assert (=> b!2626939 d!746126))

(declare-fun d!746128 () Bool)

(declare-fun res!1105701 () Bool)

(declare-fun e!1657261 () Bool)

(assert (=> d!746128 (=> res!1105701 e!1657261)))

(assert (=> d!746128 (= res!1105701 ((_ is Nil!30318) lt!923827))))

(assert (=> d!746128 (= (forall!6325 lt!923827 lambda!98337) e!1657261)))

(declare-fun b!2627067 () Bool)

(declare-fun e!1657262 () Bool)

(assert (=> b!2627067 (= e!1657261 e!1657262)))

(declare-fun res!1105702 () Bool)

(assert (=> b!2627067 (=> (not res!1105702) (not e!1657262))))

(declare-fun dynLambda!12929 (Int Token!8660) Bool)

(assert (=> b!2627067 (= res!1105702 (dynLambda!12929 lambda!98337 (h!35738 lt!923827)))))

(declare-fun b!2627068 () Bool)

(assert (=> b!2627068 (= e!1657262 (forall!6325 (t!215989 lt!923827) lambda!98337))))

(assert (= (and d!746128 (not res!1105701)) b!2627067))

(assert (= (and b!2627067 res!1105702) b!2627068))

(declare-fun b_lambda!79175 () Bool)

(assert (=> (not b_lambda!79175) (not b!2627067)))

(declare-fun m!2970113 () Bool)

(assert (=> b!2627067 m!2970113))

(declare-fun m!2970115 () Bool)

(assert (=> b!2627068 m!2970115))

(assert (=> b!2626949 d!746128))

(declare-fun d!746130 () Bool)

(assert (=> d!746130 (= (inv!41072 (tag!5089 (h!35737 rules!1726))) (= (mod (str.len (value!148536 (tag!5089 (h!35737 rules!1726)))) 2) 0))))

(assert (=> b!2626940 d!746130))

(declare-fun d!746132 () Bool)

(declare-fun res!1105703 () Bool)

(declare-fun e!1657263 () Bool)

(assert (=> d!746132 (=> (not res!1105703) (not e!1657263))))

(assert (=> d!746132 (= res!1105703 (semiInverseModEq!1909 (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toValue!6509 (transformation!4595 (h!35737 rules!1726)))))))

(assert (=> d!746132 (= (inv!41077 (transformation!4595 (h!35737 rules!1726))) e!1657263)))

(declare-fun b!2627069 () Bool)

(assert (=> b!2627069 (= e!1657263 (equivClasses!1810 (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toValue!6509 (transformation!4595 (h!35737 rules!1726)))))))

(assert (= (and d!746132 res!1105703) b!2627069))

(declare-fun m!2970117 () Bool)

(assert (=> d!746132 m!2970117))

(declare-fun m!2970119 () Bool)

(assert (=> b!2627069 m!2970119))

(assert (=> b!2626940 d!746132))

(declare-fun d!746134 () Bool)

(declare-fun lt!923875 () Bool)

(declare-fun e!1657301 () Bool)

(assert (=> d!746134 (= lt!923875 e!1657301)))

(declare-fun res!1105753 () Bool)

(assert (=> d!746134 (=> (not res!1105753) (not e!1657301))))

(declare-datatypes ((tuple2!29882 0))(
  ( (tuple2!29883 (_1!17483 BalanceConc!18480) (_2!17483 BalanceConc!18478)) )
))
(declare-fun lex!1886 (LexerInterface!4192 List!30417 BalanceConc!18478) tuple2!29882)

(declare-fun print!1608 (LexerInterface!4192 BalanceConc!18480) BalanceConc!18478)

(declare-fun singletonSeq!2025 (Token!8660) BalanceConc!18480)

(assert (=> d!746134 (= res!1105753 (= (list!11389 (_1!17483 (lex!1886 thiss!14197 rules!1726 (print!1608 thiss!14197 (singletonSeq!2025 separatorToken!156))))) (list!11389 (singletonSeq!2025 separatorToken!156))))))

(declare-fun e!1657300 () Bool)

(assert (=> d!746134 (= lt!923875 e!1657300)))

(declare-fun res!1105752 () Bool)

(assert (=> d!746134 (=> (not res!1105752) (not e!1657300))))

(declare-fun lt!923874 () tuple2!29882)

(assert (=> d!746134 (= res!1105752 (= (size!23467 (_1!17483 lt!923874)) 1))))

(assert (=> d!746134 (= lt!923874 (lex!1886 thiss!14197 rules!1726 (print!1608 thiss!14197 (singletonSeq!2025 separatorToken!156))))))

(assert (=> d!746134 (not (isEmpty!17324 rules!1726))))

(assert (=> d!746134 (= (rulesProduceIndividualToken!1904 thiss!14197 rules!1726 separatorToken!156) lt!923875)))

(declare-fun b!2627125 () Bool)

(declare-fun res!1105751 () Bool)

(assert (=> b!2627125 (=> (not res!1105751) (not e!1657300))))

(assert (=> b!2627125 (= res!1105751 (= (apply!7170 (_1!17483 lt!923874) 0) separatorToken!156))))

(declare-fun b!2627126 () Bool)

(declare-fun isEmpty!17327 (BalanceConc!18478) Bool)

(assert (=> b!2627126 (= e!1657300 (isEmpty!17327 (_2!17483 lt!923874)))))

(declare-fun b!2627127 () Bool)

(assert (=> b!2627127 (= e!1657301 (isEmpty!17327 (_2!17483 (lex!1886 thiss!14197 rules!1726 (print!1608 thiss!14197 (singletonSeq!2025 separatorToken!156))))))))

(assert (= (and d!746134 res!1105752) b!2627125))

(assert (= (and b!2627125 res!1105751) b!2627126))

(assert (= (and d!746134 res!1105753) b!2627127))

(declare-fun m!2970209 () Bool)

(assert (=> d!746134 m!2970209))

(declare-fun m!2970211 () Bool)

(assert (=> d!746134 m!2970211))

(assert (=> d!746134 m!2970209))

(declare-fun m!2970213 () Bool)

(assert (=> d!746134 m!2970213))

(assert (=> d!746134 m!2970211))

(declare-fun m!2970215 () Bool)

(assert (=> d!746134 m!2970215))

(assert (=> d!746134 m!2970209))

(declare-fun m!2970217 () Bool)

(assert (=> d!746134 m!2970217))

(assert (=> d!746134 m!2970005))

(declare-fun m!2970219 () Bool)

(assert (=> d!746134 m!2970219))

(declare-fun m!2970221 () Bool)

(assert (=> b!2627125 m!2970221))

(declare-fun m!2970223 () Bool)

(assert (=> b!2627126 m!2970223))

(assert (=> b!2627127 m!2970209))

(assert (=> b!2627127 m!2970209))

(assert (=> b!2627127 m!2970211))

(assert (=> b!2627127 m!2970211))

(assert (=> b!2627127 m!2970215))

(declare-fun m!2970225 () Bool)

(assert (=> b!2627127 m!2970225))

(assert (=> b!2626947 d!746134))

(declare-fun b!2627138 () Bool)

(declare-fun res!1105756 () Bool)

(declare-fun e!1657308 () Bool)

(assert (=> b!2627138 (=> res!1105756 e!1657308)))

(assert (=> b!2627138 (= res!1105756 (not ((_ is IntegerValue!14453) (value!148562 separatorToken!156))))))

(declare-fun e!1657309 () Bool)

(assert (=> b!2627138 (= e!1657309 e!1657308)))

(declare-fun b!2627139 () Bool)

(declare-fun e!1657310 () Bool)

(assert (=> b!2627139 (= e!1657310 e!1657309)))

(declare-fun c!422678 () Bool)

(assert (=> b!2627139 (= c!422678 ((_ is IntegerValue!14452) (value!148562 separatorToken!156)))))

(declare-fun b!2627140 () Bool)

(declare-fun inv!15 (TokenValue!4817) Bool)

(assert (=> b!2627140 (= e!1657308 (inv!15 (value!148562 separatorToken!156)))))

(declare-fun b!2627141 () Bool)

(declare-fun inv!16 (TokenValue!4817) Bool)

(assert (=> b!2627141 (= e!1657310 (inv!16 (value!148562 separatorToken!156)))))

(declare-fun b!2627142 () Bool)

(declare-fun inv!17 (TokenValue!4817) Bool)

(assert (=> b!2627142 (= e!1657309 (inv!17 (value!148562 separatorToken!156)))))

(declare-fun d!746156 () Bool)

(declare-fun c!422677 () Bool)

(assert (=> d!746156 (= c!422677 ((_ is IntegerValue!14451) (value!148562 separatorToken!156)))))

(assert (=> d!746156 (= (inv!21 (value!148562 separatorToken!156)) e!1657310)))

(assert (= (and d!746156 c!422677) b!2627141))

(assert (= (and d!746156 (not c!422677)) b!2627139))

(assert (= (and b!2627139 c!422678) b!2627142))

(assert (= (and b!2627139 (not c!422678)) b!2627138))

(assert (= (and b!2627138 (not res!1105756)) b!2627140))

(declare-fun m!2970227 () Bool)

(assert (=> b!2627140 m!2970227))

(declare-fun m!2970229 () Bool)

(assert (=> b!2627141 m!2970229))

(declare-fun m!2970231 () Bool)

(assert (=> b!2627142 m!2970231))

(assert (=> b!2626938 d!746156))

(declare-fun d!746158 () Bool)

(assert (=> d!746158 (= (head!5994 lt!923831) (h!35738 lt!923831))))

(assert (=> b!2626948 d!746158))

(declare-fun d!746160 () Bool)

(assert (=> d!746160 (= (tail!4232 lt!923831) (t!215989 lt!923831))))

(assert (=> b!2626948 d!746160))

(declare-fun d!746162 () Bool)

(declare-fun lt!923878 () Bool)

(assert (=> d!746162 (= lt!923878 (contains!5690 (list!11389 v!6381) lt!923829))))

(declare-fun contains!5693 (Conc!9433 Token!8660) Bool)

(assert (=> d!746162 (= lt!923878 (contains!5693 (c!422647 v!6381) lt!923829))))

(assert (=> d!746162 (= (contains!5691 v!6381 lt!923829) lt!923878)))

(declare-fun bs!475592 () Bool)

(assert (= bs!475592 d!746162))

(assert (=> bs!475592 m!2969995))

(assert (=> bs!475592 m!2969995))

(declare-fun m!2970233 () Bool)

(assert (=> bs!475592 m!2970233))

(declare-fun m!2970235 () Bool)

(assert (=> bs!475592 m!2970235))

(assert (=> b!2626948 d!746162))

(declare-fun b!2627161 () Bool)

(declare-fun e!1657325 () Int)

(assert (=> b!2627161 (= e!1657325 0)))

(declare-fun b!2627162 () Bool)

(declare-fun e!1657321 () List!30418)

(assert (=> b!2627162 (= e!1657321 Nil!30318)))

(declare-fun b!2627163 () Bool)

(declare-fun e!1657324 () Int)

(declare-fun call!169155 () Int)

(assert (=> b!2627163 (= e!1657324 call!169155)))

(declare-fun b!2627164 () Bool)

(declare-fun e!1657323 () List!30418)

(assert (=> b!2627164 (= e!1657323 lt!923820)))

(declare-fun b!2627165 () Bool)

(assert (=> b!2627165 (= e!1657324 e!1657325)))

(declare-fun c!422689 () Bool)

(assert (=> b!2627165 (= c!422689 (>= (+ 1 from!862) call!169155))))

(declare-fun b!2627166 () Bool)

(assert (=> b!2627166 (= e!1657325 (- call!169155 (+ 1 from!862)))))

(declare-fun b!2627167 () Bool)

(assert (=> b!2627167 (= e!1657323 (drop!1591 (t!215989 lt!923820) (- (+ 1 from!862) 1)))))

(declare-fun d!746164 () Bool)

(declare-fun e!1657322 () Bool)

(assert (=> d!746164 e!1657322))

(declare-fun res!1105759 () Bool)

(assert (=> d!746164 (=> (not res!1105759) (not e!1657322))))

(declare-fun lt!923881 () List!30418)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4299 (List!30418) (InoxSet Token!8660))

(assert (=> d!746164 (= res!1105759 (= ((_ map implies) (content!4299 lt!923881) (content!4299 lt!923820)) ((as const (InoxSet Token!8660)) true)))))

(assert (=> d!746164 (= lt!923881 e!1657321)))

(declare-fun c!422690 () Bool)

(assert (=> d!746164 (= c!422690 ((_ is Nil!30318) lt!923820))))

(assert (=> d!746164 (= (drop!1591 lt!923820 (+ 1 from!862)) lt!923881)))

(declare-fun b!2627168 () Bool)

(declare-fun size!23470 (List!30418) Int)

(assert (=> b!2627168 (= e!1657322 (= (size!23470 lt!923881) e!1657324))))

(declare-fun c!422687 () Bool)

(assert (=> b!2627168 (= c!422687 (<= (+ 1 from!862) 0))))

(declare-fun bm!169150 () Bool)

(assert (=> bm!169150 (= call!169155 (size!23470 lt!923820))))

(declare-fun b!2627169 () Bool)

(assert (=> b!2627169 (= e!1657321 e!1657323)))

(declare-fun c!422688 () Bool)

(assert (=> b!2627169 (= c!422688 (<= (+ 1 from!862) 0))))

(assert (= (and d!746164 c!422690) b!2627162))

(assert (= (and d!746164 (not c!422690)) b!2627169))

(assert (= (and b!2627169 c!422688) b!2627164))

(assert (= (and b!2627169 (not c!422688)) b!2627167))

(assert (= (and d!746164 res!1105759) b!2627168))

(assert (= (and b!2627168 c!422687) b!2627163))

(assert (= (and b!2627168 (not c!422687)) b!2627165))

(assert (= (and b!2627165 c!422689) b!2627161))

(assert (= (and b!2627165 (not c!422689)) b!2627166))

(assert (= (or b!2627163 b!2627165 b!2627166) bm!169150))

(declare-fun m!2970237 () Bool)

(assert (=> b!2627167 m!2970237))

(declare-fun m!2970239 () Bool)

(assert (=> d!746164 m!2970239))

(declare-fun m!2970241 () Bool)

(assert (=> d!746164 m!2970241))

(declare-fun m!2970243 () Bool)

(assert (=> b!2627168 m!2970243))

(declare-fun m!2970245 () Bool)

(assert (=> bm!169150 m!2970245))

(assert (=> b!2626948 d!746164))

(declare-fun d!746166 () Bool)

(declare-fun lt!923884 () Token!8660)

(assert (=> d!746166 (= lt!923884 (apply!7171 (list!11389 v!6381) from!862))))

(declare-fun apply!7173 (Conc!9433 Int) Token!8660)

(assert (=> d!746166 (= lt!923884 (apply!7173 (c!422647 v!6381) from!862))))

(declare-fun e!1657328 () Bool)

(assert (=> d!746166 e!1657328))

(declare-fun res!1105762 () Bool)

(assert (=> d!746166 (=> (not res!1105762) (not e!1657328))))

(assert (=> d!746166 (= res!1105762 (<= 0 from!862))))

(assert (=> d!746166 (= (apply!7170 v!6381 from!862) lt!923884)))

(declare-fun b!2627172 () Bool)

(assert (=> b!2627172 (= e!1657328 (< from!862 (size!23467 v!6381)))))

(assert (= (and d!746166 res!1105762) b!2627172))

(assert (=> d!746166 m!2969995))

(assert (=> d!746166 m!2969995))

(declare-fun m!2970247 () Bool)

(assert (=> d!746166 m!2970247))

(declare-fun m!2970249 () Bool)

(assert (=> d!746166 m!2970249))

(assert (=> b!2627172 m!2970027))

(assert (=> b!2626948 d!746166))

(declare-fun d!746168 () Bool)

(assert (=> d!746168 (= (tail!4232 (drop!1591 lt!923820 from!862)) (drop!1591 lt!923820 (+ from!862 1)))))

(declare-fun lt!923887 () Unit!44367)

(declare-fun choose!15595 (List!30418 Int) Unit!44367)

(assert (=> d!746168 (= lt!923887 (choose!15595 lt!923820 from!862))))

(declare-fun e!1657331 () Bool)

(assert (=> d!746168 e!1657331))

(declare-fun res!1105765 () Bool)

(assert (=> d!746168 (=> (not res!1105765) (not e!1657331))))

(assert (=> d!746168 (= res!1105765 (>= from!862 0))))

(assert (=> d!746168 (= (lemmaDropTail!780 lt!923820 from!862) lt!923887)))

(declare-fun b!2627175 () Bool)

(assert (=> b!2627175 (= e!1657331 (< from!862 (size!23470 lt!923820)))))

(assert (= (and d!746168 res!1105765) b!2627175))

(assert (=> d!746168 m!2970021))

(assert (=> d!746168 m!2970021))

(declare-fun m!2970251 () Bool)

(assert (=> d!746168 m!2970251))

(declare-fun m!2970253 () Bool)

(assert (=> d!746168 m!2970253))

(declare-fun m!2970255 () Bool)

(assert (=> d!746168 m!2970255))

(assert (=> b!2627175 m!2970245))

(assert (=> b!2626948 d!746168))

(declare-fun d!746170 () Bool)

(assert (=> d!746170 (= (head!5994 (drop!1591 lt!923820 from!862)) (apply!7171 lt!923820 from!862))))

(declare-fun lt!923890 () Unit!44367)

(declare-fun choose!15596 (List!30418 Int) Unit!44367)

(assert (=> d!746170 (= lt!923890 (choose!15596 lt!923820 from!862))))

(declare-fun e!1657334 () Bool)

(assert (=> d!746170 e!1657334))

(declare-fun res!1105768 () Bool)

(assert (=> d!746170 (=> (not res!1105768) (not e!1657334))))

(assert (=> d!746170 (= res!1105768 (>= from!862 0))))

(assert (=> d!746170 (= (lemmaDropApply!806 lt!923820 from!862) lt!923890)))

(declare-fun b!2627178 () Bool)

(assert (=> b!2627178 (= e!1657334 (< from!862 (size!23470 lt!923820)))))

(assert (= (and d!746170 res!1105768) b!2627178))

(assert (=> d!746170 m!2970021))

(assert (=> d!746170 m!2970021))

(declare-fun m!2970257 () Bool)

(assert (=> d!746170 m!2970257))

(assert (=> d!746170 m!2970009))

(declare-fun m!2970259 () Bool)

(assert (=> d!746170 m!2970259))

(assert (=> b!2627178 m!2970245))

(assert (=> b!2626948 d!746170))

(declare-fun d!746172 () Bool)

(declare-fun lt!923893 () Token!8660)

(assert (=> d!746172 (contains!5690 lt!923820 lt!923893)))

(declare-fun e!1657339 () Token!8660)

(assert (=> d!746172 (= lt!923893 e!1657339)))

(declare-fun c!422693 () Bool)

(assert (=> d!746172 (= c!422693 (= from!862 0))))

(declare-fun e!1657340 () Bool)

(assert (=> d!746172 e!1657340))

(declare-fun res!1105771 () Bool)

(assert (=> d!746172 (=> (not res!1105771) (not e!1657340))))

(assert (=> d!746172 (= res!1105771 (<= 0 from!862))))

(assert (=> d!746172 (= (apply!7171 lt!923820 from!862) lt!923893)))

(declare-fun b!2627185 () Bool)

(assert (=> b!2627185 (= e!1657340 (< from!862 (size!23470 lt!923820)))))

(declare-fun b!2627186 () Bool)

(assert (=> b!2627186 (= e!1657339 (head!5994 lt!923820))))

(declare-fun b!2627187 () Bool)

(assert (=> b!2627187 (= e!1657339 (apply!7171 (tail!4232 lt!923820) (- from!862 1)))))

(assert (= (and d!746172 res!1105771) b!2627185))

(assert (= (and d!746172 c!422693) b!2627186))

(assert (= (and d!746172 (not c!422693)) b!2627187))

(declare-fun m!2970261 () Bool)

(assert (=> d!746172 m!2970261))

(assert (=> b!2627185 m!2970245))

(declare-fun m!2970263 () Bool)

(assert (=> b!2627186 m!2970263))

(declare-fun m!2970265 () Bool)

(assert (=> b!2627187 m!2970265))

(assert (=> b!2627187 m!2970265))

(declare-fun m!2970267 () Bool)

(assert (=> b!2627187 m!2970267))

(assert (=> b!2626948 d!746172))

(declare-fun b!2627188 () Bool)

(declare-fun e!1657345 () Int)

(assert (=> b!2627188 (= e!1657345 0)))

(declare-fun b!2627189 () Bool)

(declare-fun e!1657341 () List!30418)

(assert (=> b!2627189 (= e!1657341 Nil!30318)))

(declare-fun b!2627190 () Bool)

(declare-fun e!1657344 () Int)

(declare-fun call!169156 () Int)

(assert (=> b!2627190 (= e!1657344 call!169156)))

(declare-fun b!2627191 () Bool)

(declare-fun e!1657343 () List!30418)

(assert (=> b!2627191 (= e!1657343 lt!923820)))

(declare-fun b!2627192 () Bool)

(assert (=> b!2627192 (= e!1657344 e!1657345)))

(declare-fun c!422696 () Bool)

(assert (=> b!2627192 (= c!422696 (>= from!862 call!169156))))

(declare-fun b!2627193 () Bool)

(assert (=> b!2627193 (= e!1657345 (- call!169156 from!862))))

(declare-fun b!2627194 () Bool)

(assert (=> b!2627194 (= e!1657343 (drop!1591 (t!215989 lt!923820) (- from!862 1)))))

(declare-fun d!746174 () Bool)

(declare-fun e!1657342 () Bool)

(assert (=> d!746174 e!1657342))

(declare-fun res!1105772 () Bool)

(assert (=> d!746174 (=> (not res!1105772) (not e!1657342))))

(declare-fun lt!923894 () List!30418)

(assert (=> d!746174 (= res!1105772 (= ((_ map implies) (content!4299 lt!923894) (content!4299 lt!923820)) ((as const (InoxSet Token!8660)) true)))))

(assert (=> d!746174 (= lt!923894 e!1657341)))

(declare-fun c!422697 () Bool)

(assert (=> d!746174 (= c!422697 ((_ is Nil!30318) lt!923820))))

(assert (=> d!746174 (= (drop!1591 lt!923820 from!862) lt!923894)))

(declare-fun b!2627195 () Bool)

(assert (=> b!2627195 (= e!1657342 (= (size!23470 lt!923894) e!1657344))))

(declare-fun c!422694 () Bool)

(assert (=> b!2627195 (= c!422694 (<= from!862 0))))

(declare-fun bm!169151 () Bool)

(assert (=> bm!169151 (= call!169156 (size!23470 lt!923820))))

(declare-fun b!2627196 () Bool)

(assert (=> b!2627196 (= e!1657341 e!1657343)))

(declare-fun c!422695 () Bool)

(assert (=> b!2627196 (= c!422695 (<= from!862 0))))

(assert (= (and d!746174 c!422697) b!2627189))

(assert (= (and d!746174 (not c!422697)) b!2627196))

(assert (= (and b!2627196 c!422695) b!2627191))

(assert (= (and b!2627196 (not c!422695)) b!2627194))

(assert (= (and d!746174 res!1105772) b!2627195))

(assert (= (and b!2627195 c!422694) b!2627190))

(assert (= (and b!2627195 (not c!422694)) b!2627192))

(assert (= (and b!2627192 c!422696) b!2627188))

(assert (= (and b!2627192 (not c!422696)) b!2627193))

(assert (= (or b!2627190 b!2627192 b!2627193) bm!169151))

(declare-fun m!2970269 () Bool)

(assert (=> b!2627194 m!2970269))

(declare-fun m!2970271 () Bool)

(assert (=> d!746174 m!2970271))

(assert (=> d!746174 m!2970241))

(declare-fun m!2970273 () Bool)

(assert (=> b!2627195 m!2970273))

(assert (=> bm!169151 m!2970245))

(assert (=> b!2626948 d!746174))

(declare-fun d!746176 () Bool)

(declare-fun lt!923897 () Int)

(assert (=> d!746176 (= lt!923897 (size!23470 (list!11389 v!6381)))))

(declare-fun size!23472 (Conc!9433) Int)

(assert (=> d!746176 (= lt!923897 (size!23472 (c!422647 v!6381)))))

(assert (=> d!746176 (= (size!23467 v!6381) lt!923897)))

(declare-fun bs!475593 () Bool)

(assert (= bs!475593 d!746176))

(assert (=> bs!475593 m!2969995))

(assert (=> bs!475593 m!2969995))

(declare-fun m!2970275 () Bool)

(assert (=> bs!475593 m!2970275))

(declare-fun m!2970277 () Bool)

(assert (=> bs!475593 m!2970277))

(assert (=> b!2626937 d!746176))

(declare-fun d!746178 () Bool)

(assert (=> d!746178 (dynLambda!12929 lambda!98338 lt!923829)))

(declare-fun lt!923900 () Unit!44367)

(declare-fun choose!15598 (List!30418 Int Token!8660) Unit!44367)

(assert (=> d!746178 (= lt!923900 (choose!15598 lt!923820 lambda!98338 lt!923829))))

(declare-fun e!1657348 () Bool)

(assert (=> d!746178 e!1657348))

(declare-fun res!1105775 () Bool)

(assert (=> d!746178 (=> (not res!1105775) (not e!1657348))))

(assert (=> d!746178 (= res!1105775 (forall!6325 lt!923820 lambda!98338))))

(assert (=> d!746178 (= (forallContained!951 lt!923820 lambda!98338 lt!923829) lt!923900)))

(declare-fun b!2627199 () Bool)

(assert (=> b!2627199 (= e!1657348 (contains!5690 lt!923820 lt!923829))))

(assert (= (and d!746178 res!1105775) b!2627199))

(declare-fun b_lambda!79179 () Bool)

(assert (=> (not b_lambda!79179) (not d!746178)))

(declare-fun m!2970279 () Bool)

(assert (=> d!746178 m!2970279))

(declare-fun m!2970281 () Bool)

(assert (=> d!746178 m!2970281))

(declare-fun m!2970283 () Bool)

(assert (=> d!746178 m!2970283))

(assert (=> b!2627199 m!2969971))

(assert (=> b!2626934 d!746178))

(declare-fun b!2627248 () Bool)

(declare-fun e!1657389 () Option!5984)

(declare-fun lt!923945 () Option!5984)

(declare-fun lt!923946 () Option!5984)

(assert (=> b!2627248 (= e!1657389 (ite (and ((_ is None!5983) lt!923945) ((_ is None!5983) lt!923946)) None!5983 (ite ((_ is None!5983) lt!923946) lt!923945 (ite ((_ is None!5983) lt!923945) lt!923946 (ite (>= (size!23466 (_1!17480 (v!32364 lt!923945))) (size!23466 (_1!17480 (v!32364 lt!923946)))) lt!923945 lt!923946)))))))

(declare-fun call!169162 () Option!5984)

(assert (=> b!2627248 (= lt!923945 call!169162)))

(assert (=> b!2627248 (= lt!923946 (maxPrefixZipperSequence!922 thiss!14197 (t!215988 rules!1726) (++!7377 lt!923825 lt!923824)))))

(declare-fun d!746180 () Bool)

(declare-fun e!1657385 () Bool)

(assert (=> d!746180 e!1657385))

(declare-fun res!1105813 () Bool)

(assert (=> d!746180 (=> (not res!1105813) (not e!1657385))))

(declare-fun lt!923941 () Option!5984)

(declare-fun isDefined!4785 (Option!5984) Bool)

(declare-datatypes ((tuple2!29884 0))(
  ( (tuple2!29885 (_1!17484 Token!8660) (_2!17484 List!30416)) )
))
(declare-datatypes ((Option!5986 0))(
  ( (None!5985) (Some!5985 (v!32372 tuple2!29884)) )
))
(declare-fun isDefined!4786 (Option!5986) Bool)

(declare-fun maxPrefixZipper!432 (LexerInterface!4192 List!30417 List!30416) Option!5986)

(assert (=> d!746180 (= res!1105813 (= (isDefined!4785 lt!923941) (isDefined!4786 (maxPrefixZipper!432 thiss!14197 rules!1726 (list!11391 (++!7377 lt!923825 lt!923824))))))))

(assert (=> d!746180 (= lt!923941 e!1657389)))

(declare-fun c!422705 () Bool)

(assert (=> d!746180 (= c!422705 (and ((_ is Cons!30317) rules!1726) ((_ is Nil!30317) (t!215988 rules!1726))))))

(declare-fun lt!923947 () Unit!44367)

(declare-fun lt!923943 () Unit!44367)

(assert (=> d!746180 (= lt!923947 lt!923943)))

(declare-fun lt!923942 () List!30416)

(declare-fun lt!923944 () List!30416)

(declare-fun isPrefix!2433 (List!30416 List!30416) Bool)

(assert (=> d!746180 (isPrefix!2433 lt!923942 lt!923944)))

(declare-fun lemmaIsPrefixRefl!1559 (List!30416 List!30416) Unit!44367)

(assert (=> d!746180 (= lt!923943 (lemmaIsPrefixRefl!1559 lt!923942 lt!923944))))

(assert (=> d!746180 (= lt!923944 (list!11391 (++!7377 lt!923825 lt!923824)))))

(assert (=> d!746180 (= lt!923942 (list!11391 (++!7377 lt!923825 lt!923824)))))

(declare-fun rulesValidInductive!1611 (LexerInterface!4192 List!30417) Bool)

(assert (=> d!746180 (rulesValidInductive!1611 thiss!14197 rules!1726)))

(assert (=> d!746180 (= (maxPrefixZipperSequence!922 thiss!14197 rules!1726 (++!7377 lt!923825 lt!923824)) lt!923941)))

(declare-fun b!2627249 () Bool)

(declare-fun e!1657387 () Bool)

(declare-fun e!1657388 () Bool)

(assert (=> b!2627249 (= e!1657387 e!1657388)))

(declare-fun res!1105815 () Bool)

(assert (=> b!2627249 (=> (not res!1105815) (not e!1657388))))

(declare-fun get!9566 (Option!5984) tuple2!29876)

(declare-fun get!9567 (Option!5986) tuple2!29884)

(assert (=> b!2627249 (= res!1105815 (= (_1!17480 (get!9566 lt!923941)) (_1!17484 (get!9567 (maxPrefixZipper!432 thiss!14197 rules!1726 (list!11391 (++!7377 lt!923825 lt!923824)))))))))

(declare-fun b!2627250 () Bool)

(declare-fun e!1657384 () Bool)

(assert (=> b!2627250 (= e!1657385 e!1657384)))

(declare-fun res!1105817 () Bool)

(assert (=> b!2627250 (=> res!1105817 e!1657384)))

(assert (=> b!2627250 (= res!1105817 (not (isDefined!4785 lt!923941)))))

(declare-fun e!1657386 () Bool)

(declare-fun b!2627251 () Bool)

(declare-fun maxPrefix!2304 (LexerInterface!4192 List!30417 List!30416) Option!5986)

(assert (=> b!2627251 (= e!1657386 (= (list!11391 (_2!17480 (get!9566 lt!923941))) (_2!17484 (get!9567 (maxPrefix!2304 thiss!14197 rules!1726 (list!11391 (++!7377 lt!923825 lt!923824)))))))))

(declare-fun b!2627252 () Bool)

(declare-fun res!1105814 () Bool)

(assert (=> b!2627252 (=> (not res!1105814) (not e!1657385))))

(assert (=> b!2627252 (= res!1105814 e!1657387)))

(declare-fun res!1105816 () Bool)

(assert (=> b!2627252 (=> res!1105816 e!1657387)))

(assert (=> b!2627252 (= res!1105816 (not (isDefined!4785 lt!923941)))))

(declare-fun bm!169157 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!441 (LexerInterface!4192 Rule!8990 BalanceConc!18478) Option!5984)

(assert (=> bm!169157 (= call!169162 (maxPrefixOneRuleZipperSequence!441 thiss!14197 (h!35737 rules!1726) (++!7377 lt!923825 lt!923824)))))

(declare-fun b!2627253 () Bool)

(assert (=> b!2627253 (= e!1657388 (= (list!11391 (_2!17480 (get!9566 lt!923941))) (_2!17484 (get!9567 (maxPrefixZipper!432 thiss!14197 rules!1726 (list!11391 (++!7377 lt!923825 lt!923824)))))))))

(declare-fun b!2627254 () Bool)

(assert (=> b!2627254 (= e!1657384 e!1657386)))

(declare-fun res!1105818 () Bool)

(assert (=> b!2627254 (=> (not res!1105818) (not e!1657386))))

(assert (=> b!2627254 (= res!1105818 (= (_1!17480 (get!9566 lt!923941)) (_1!17484 (get!9567 (maxPrefix!2304 thiss!14197 rules!1726 (list!11391 (++!7377 lt!923825 lt!923824)))))))))

(declare-fun b!2627255 () Bool)

(assert (=> b!2627255 (= e!1657389 call!169162)))

(assert (= (and d!746180 c!422705) b!2627255))

(assert (= (and d!746180 (not c!422705)) b!2627248))

(assert (= (or b!2627255 b!2627248) bm!169157))

(assert (= (and d!746180 res!1105813) b!2627252))

(assert (= (and b!2627252 (not res!1105816)) b!2627249))

(assert (= (and b!2627249 res!1105815) b!2627253))

(assert (= (and b!2627252 res!1105814) b!2627250))

(assert (= (and b!2627250 (not res!1105817)) b!2627254))

(assert (= (and b!2627254 res!1105818) b!2627251))

(assert (=> b!2627248 m!2969981))

(declare-fun m!2970341 () Bool)

(assert (=> b!2627248 m!2970341))

(declare-fun m!2970343 () Bool)

(assert (=> b!2627249 m!2970343))

(assert (=> b!2627249 m!2969981))

(declare-fun m!2970345 () Bool)

(assert (=> b!2627249 m!2970345))

(assert (=> b!2627249 m!2970345))

(declare-fun m!2970347 () Bool)

(assert (=> b!2627249 m!2970347))

(assert (=> b!2627249 m!2970347))

(declare-fun m!2970349 () Bool)

(assert (=> b!2627249 m!2970349))

(declare-fun m!2970351 () Bool)

(assert (=> b!2627250 m!2970351))

(assert (=> b!2627252 m!2970351))

(assert (=> b!2627253 m!2970343))

(declare-fun m!2970353 () Bool)

(assert (=> b!2627253 m!2970353))

(assert (=> b!2627253 m!2970345))

(assert (=> b!2627253 m!2970347))

(assert (=> b!2627253 m!2969981))

(assert (=> b!2627253 m!2970345))

(assert (=> b!2627253 m!2970347))

(assert (=> b!2627253 m!2970349))

(assert (=> d!746180 m!2970345))

(assert (=> d!746180 m!2970347))

(assert (=> d!746180 m!2969981))

(assert (=> d!746180 m!2970345))

(declare-fun m!2970355 () Bool)

(assert (=> d!746180 m!2970355))

(assert (=> d!746180 m!2970351))

(declare-fun m!2970357 () Bool)

(assert (=> d!746180 m!2970357))

(assert (=> d!746180 m!2970347))

(declare-fun m!2970359 () Bool)

(assert (=> d!746180 m!2970359))

(declare-fun m!2970361 () Bool)

(assert (=> d!746180 m!2970361))

(assert (=> bm!169157 m!2969981))

(declare-fun m!2970363 () Bool)

(assert (=> bm!169157 m!2970363))

(declare-fun m!2970365 () Bool)

(assert (=> b!2627251 m!2970365))

(declare-fun m!2970367 () Bool)

(assert (=> b!2627251 m!2970367))

(assert (=> b!2627251 m!2970343))

(assert (=> b!2627251 m!2970353))

(assert (=> b!2627251 m!2969981))

(assert (=> b!2627251 m!2970345))

(assert (=> b!2627251 m!2970345))

(assert (=> b!2627251 m!2970365))

(assert (=> b!2627254 m!2970343))

(assert (=> b!2627254 m!2969981))

(assert (=> b!2627254 m!2970345))

(assert (=> b!2627254 m!2970345))

(assert (=> b!2627254 m!2970365))

(assert (=> b!2627254 m!2970365))

(assert (=> b!2627254 m!2970367))

(assert (=> b!2626934 d!746180))

(declare-fun d!746190 () Bool)

(declare-fun lt!923950 () BalanceConc!18478)

(assert (=> d!746190 (= (list!11391 lt!923950) (originalCharacters!5361 lt!923829))))

(assert (=> d!746190 (= lt!923950 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 lt!923829))) (value!148562 lt!923829)))))

(assert (=> d!746190 (= (charsOf!2886 lt!923829) lt!923950)))

(declare-fun b_lambda!79185 () Bool)

(assert (=> (not b_lambda!79185) (not d!746190)))

(declare-fun tb!143547 () Bool)

(declare-fun t!216007 () Bool)

(assert (=> (and b!2626941 (= (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (toChars!6368 (transformation!4595 (rule!6977 lt!923829)))) t!216007) tb!143547))

(declare-fun b!2627256 () Bool)

(declare-fun e!1657390 () Bool)

(declare-fun tp!832890 () Bool)

(assert (=> b!2627256 (= e!1657390 (and (inv!41083 (c!422646 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 lt!923829))) (value!148562 lt!923829)))) tp!832890))))

(declare-fun result!178346 () Bool)

(assert (=> tb!143547 (= result!178346 (and (inv!41084 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 lt!923829))) (value!148562 lt!923829))) e!1657390))))

(assert (= tb!143547 b!2627256))

(declare-fun m!2970369 () Bool)

(assert (=> b!2627256 m!2970369))

(declare-fun m!2970371 () Bool)

(assert (=> tb!143547 m!2970371))

(assert (=> d!746190 t!216007))

(declare-fun b_and!192399 () Bool)

(assert (= b_and!192387 (and (=> t!216007 result!178346) b_and!192399)))

(declare-fun t!216009 () Bool)

(declare-fun tb!143549 () Bool)

(assert (=> (and b!2626951 (= (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toChars!6368 (transformation!4595 (rule!6977 lt!923829)))) t!216009) tb!143549))

(declare-fun result!178348 () Bool)

(assert (= result!178348 result!178346))

(assert (=> d!746190 t!216009))

(declare-fun b_and!192401 () Bool)

(assert (= b_and!192389 (and (=> t!216009 result!178348) b_and!192401)))

(declare-fun m!2970373 () Bool)

(assert (=> d!746190 m!2970373))

(declare-fun m!2970375 () Bool)

(assert (=> d!746190 m!2970375))

(assert (=> b!2626934 d!746190))

(declare-fun b!2627267 () Bool)

(declare-fun res!1105828 () Bool)

(declare-fun e!1657393 () Bool)

(assert (=> b!2627267 (=> (not res!1105828) (not e!1657393))))

(declare-fun height!1370 (Conc!9432) Int)

(declare-fun ++!7380 (Conc!9432 Conc!9432) Conc!9432)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2627267 (= res!1105828 (>= (height!1370 (++!7380 (c!422646 lt!923825) (c!422646 lt!923824))) (max!0 (height!1370 (c!422646 lt!923825)) (height!1370 (c!422646 lt!923824)))))))

(declare-fun b!2627266 () Bool)

(declare-fun res!1105829 () Bool)

(assert (=> b!2627266 (=> (not res!1105829) (not e!1657393))))

(assert (=> b!2627266 (= res!1105829 (<= (height!1370 (++!7380 (c!422646 lt!923825) (c!422646 lt!923824))) (+ (max!0 (height!1370 (c!422646 lt!923825)) (height!1370 (c!422646 lt!923824))) 1)))))

(declare-fun d!746192 () Bool)

(assert (=> d!746192 e!1657393))

(declare-fun res!1105827 () Bool)

(assert (=> d!746192 (=> (not res!1105827) (not e!1657393))))

(declare-fun appendAssocInst!628 (Conc!9432 Conc!9432) Bool)

(assert (=> d!746192 (= res!1105827 (appendAssocInst!628 (c!422646 lt!923825) (c!422646 lt!923824)))))

(declare-fun lt!923953 () BalanceConc!18478)

(assert (=> d!746192 (= lt!923953 (BalanceConc!18479 (++!7380 (c!422646 lt!923825) (c!422646 lt!923824))))))

(assert (=> d!746192 (= (++!7377 lt!923825 lt!923824) lt!923953)))

(declare-fun b!2627268 () Bool)

(declare-fun ++!7381 (List!30416 List!30416) List!30416)

(assert (=> b!2627268 (= e!1657393 (= (list!11391 lt!923953) (++!7381 (list!11391 lt!923825) (list!11391 lt!923824))))))

(declare-fun b!2627265 () Bool)

(declare-fun res!1105830 () Bool)

(assert (=> b!2627265 (=> (not res!1105830) (not e!1657393))))

(declare-fun isBalanced!2867 (Conc!9432) Bool)

(assert (=> b!2627265 (= res!1105830 (isBalanced!2867 (++!7380 (c!422646 lt!923825) (c!422646 lt!923824))))))

(assert (= (and d!746192 res!1105827) b!2627265))

(assert (= (and b!2627265 res!1105830) b!2627266))

(assert (= (and b!2627266 res!1105829) b!2627267))

(assert (= (and b!2627267 res!1105828) b!2627268))

(declare-fun m!2970377 () Bool)

(assert (=> d!746192 m!2970377))

(declare-fun m!2970379 () Bool)

(assert (=> d!746192 m!2970379))

(assert (=> b!2627265 m!2970379))

(assert (=> b!2627265 m!2970379))

(declare-fun m!2970381 () Bool)

(assert (=> b!2627265 m!2970381))

(assert (=> b!2627267 m!2970379))

(declare-fun m!2970383 () Bool)

(assert (=> b!2627267 m!2970383))

(declare-fun m!2970385 () Bool)

(assert (=> b!2627267 m!2970385))

(declare-fun m!2970387 () Bool)

(assert (=> b!2627267 m!2970387))

(assert (=> b!2627267 m!2970379))

(assert (=> b!2627267 m!2970387))

(assert (=> b!2627267 m!2970385))

(declare-fun m!2970389 () Bool)

(assert (=> b!2627267 m!2970389))

(assert (=> b!2627266 m!2970379))

(assert (=> b!2627266 m!2970383))

(assert (=> b!2627266 m!2970385))

(assert (=> b!2627266 m!2970387))

(assert (=> b!2627266 m!2970379))

(assert (=> b!2627266 m!2970387))

(assert (=> b!2627266 m!2970385))

(assert (=> b!2627266 m!2970389))

(declare-fun m!2970391 () Bool)

(assert (=> b!2627268 m!2970391))

(declare-fun m!2970393 () Bool)

(assert (=> b!2627268 m!2970393))

(declare-fun m!2970395 () Bool)

(assert (=> b!2627268 m!2970395))

(assert (=> b!2627268 m!2970393))

(assert (=> b!2627268 m!2970395))

(declare-fun m!2970397 () Bool)

(assert (=> b!2627268 m!2970397))

(assert (=> b!2626934 d!746192))

(declare-fun bs!475607 () Bool)

(declare-fun d!746194 () Bool)

(assert (= bs!475607 (and d!746194 b!2626945)))

(declare-fun lambda!98352 () Int)

(assert (=> bs!475607 (= lambda!98352 lambda!98337)))

(declare-fun bs!475608 () Bool)

(assert (= bs!475608 (and d!746194 b!2626934)))

(assert (=> bs!475608 (not (= lambda!98352 lambda!98338))))

(declare-fun bs!475609 () Bool)

(declare-fun b!2627356 () Bool)

(assert (= bs!475609 (and b!2627356 b!2626945)))

(declare-fun lambda!98353 () Int)

(assert (=> bs!475609 (not (= lambda!98353 lambda!98337))))

(declare-fun bs!475610 () Bool)

(assert (= bs!475610 (and b!2627356 b!2626934)))

(assert (=> bs!475610 (= lambda!98353 lambda!98338)))

(declare-fun bs!475611 () Bool)

(assert (= bs!475611 (and b!2627356 d!746194)))

(assert (=> bs!475611 (not (= lambda!98353 lambda!98352))))

(declare-fun b!2627367 () Bool)

(declare-fun e!1657459 () Bool)

(assert (=> b!2627367 (= e!1657459 true)))

(declare-fun b!2627366 () Bool)

(declare-fun e!1657458 () Bool)

(assert (=> b!2627366 (= e!1657458 e!1657459)))

(declare-fun b!2627365 () Bool)

(declare-fun e!1657457 () Bool)

(assert (=> b!2627365 (= e!1657457 e!1657458)))

(assert (=> b!2627356 e!1657457))

(assert (= b!2627366 b!2627367))

(assert (= b!2627365 b!2627366))

(assert (= (and b!2627356 ((_ is Cons!30317) rules!1726)) b!2627365))

(assert (=> b!2627367 (< (dynLambda!12923 order!16271 (toValue!6509 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98353))))

(assert (=> b!2627367 (< (dynLambda!12925 order!16275 (toChars!6368 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98353))))

(assert (=> b!2627356 true))

(declare-fun b!2627355 () Bool)

(declare-fun e!1657455 () BalanceConc!18478)

(assert (=> b!2627355 (= e!1657455 (BalanceConc!18479 Empty!9432))))

(declare-fun call!169192 () Token!8660)

(declare-fun printTailRec!1097 (LexerInterface!4192 BalanceConc!18480 Int BalanceConc!18478) BalanceConc!18478)

(assert (=> b!2627355 (= (print!1608 thiss!14197 (singletonSeq!2025 call!169192)) (printTailRec!1097 thiss!14197 (singletonSeq!2025 call!169192) 0 (BalanceConc!18479 Empty!9432)))))

(declare-fun lt!924042 () Unit!44367)

(declare-fun Unit!44371 () Unit!44367)

(assert (=> b!2627355 (= lt!924042 Unit!44371)))

(declare-fun call!169191 () BalanceConc!18478)

(declare-fun lt!924046 () BalanceConc!18478)

(declare-fun lt!924035 () Unit!44367)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!793 (LexerInterface!4192 List!30417 List!30416 List!30416) Unit!44367)

(assert (=> b!2627355 (= lt!924035 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!793 thiss!14197 rules!1726 (list!11391 call!169191) (list!11391 lt!924046)))))

(assert (=> b!2627355 false))

(declare-fun lt!924045 () Unit!44367)

(declare-fun Unit!44372 () Unit!44367)

(assert (=> b!2627355 (= lt!924045 Unit!44372)))

(declare-fun e!1657456 () BalanceConc!18478)

(declare-fun e!1657451 () BalanceConc!18478)

(assert (=> b!2627356 (= e!1657456 e!1657451)))

(declare-fun lt!924038 () List!30418)

(assert (=> b!2627356 (= lt!924038 (list!11389 v!6381))))

(declare-fun lt!924033 () Unit!44367)

(assert (=> b!2627356 (= lt!924033 (lemmaDropApply!806 lt!924038 (+ 1 from!862)))))

(assert (=> b!2627356 (= (head!5994 (drop!1591 lt!924038 (+ 1 from!862))) (apply!7171 lt!924038 (+ 1 from!862)))))

(declare-fun lt!924039 () Unit!44367)

(assert (=> b!2627356 (= lt!924039 lt!924033)))

(declare-fun lt!924037 () List!30418)

(assert (=> b!2627356 (= lt!924037 (list!11389 v!6381))))

(declare-fun lt!924034 () Unit!44367)

(assert (=> b!2627356 (= lt!924034 (lemmaDropTail!780 lt!924037 (+ 1 from!862)))))

(assert (=> b!2627356 (= (tail!4232 (drop!1591 lt!924037 (+ 1 from!862))) (drop!1591 lt!924037 (+ 1 from!862 1)))))

(declare-fun lt!924043 () Unit!44367)

(assert (=> b!2627356 (= lt!924043 lt!924034)))

(declare-fun lt!924036 () Unit!44367)

(assert (=> b!2627356 (= lt!924036 (forallContained!951 (list!11389 v!6381) lambda!98353 (apply!7170 v!6381 (+ 1 from!862))))))

(assert (=> b!2627356 (= lt!924046 (printWithSeparatorTokenWhenNeededRec!470 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(declare-fun lt!924040 () Option!5984)

(assert (=> b!2627356 (= lt!924040 (maxPrefixZipperSequence!922 thiss!14197 rules!1726 (++!7377 (charsOf!2886 (apply!7170 v!6381 (+ 1 from!862))) lt!924046)))))

(declare-fun res!1105861 () Bool)

(assert (=> b!2627356 (= res!1105861 ((_ is Some!5983) lt!924040))))

(declare-fun e!1657453 () Bool)

(assert (=> b!2627356 (=> (not res!1105861) (not e!1657453))))

(declare-fun c!422738 () Bool)

(assert (=> b!2627356 (= c!422738 e!1657453)))

(declare-fun bm!169183 () Bool)

(declare-fun call!169190 () BalanceConc!18478)

(assert (=> bm!169183 (= call!169191 call!169190)))

(declare-fun b!2627357 () Bool)

(declare-fun call!169188 () BalanceConc!18478)

(assert (=> b!2627357 (= e!1657451 call!169188)))

(declare-fun c!422737 () Bool)

(declare-fun call!169189 () Token!8660)

(declare-fun bm!169184 () Bool)

(assert (=> bm!169184 (= call!169190 (charsOf!2886 (ite c!422738 call!169189 (ite c!422737 separatorToken!156 call!169192))))))

(declare-fun b!2627358 () Bool)

(assert (=> b!2627358 (= e!1657456 (BalanceConc!18479 Empty!9432))))

(declare-fun b!2627359 () Bool)

(assert (=> b!2627359 (= e!1657453 (= (_1!17480 (v!32364 lt!924040)) (apply!7170 v!6381 (+ 1 from!862))))))

(declare-fun b!2627360 () Bool)

(declare-fun e!1657450 () BalanceConc!18478)

(assert (=> b!2627360 (= e!1657450 call!169190)))

(declare-fun b!2627361 () Bool)

(assert (=> b!2627361 (= e!1657450 (charsOf!2886 call!169192))))

(declare-fun b!2627354 () Bool)

(declare-fun e!1657452 () Bool)

(assert (=> b!2627354 (= e!1657452 (<= (+ 1 from!862) (size!23467 v!6381)))))

(declare-fun lt!924044 () BalanceConc!18478)

(declare-fun printWithSeparatorTokenWhenNeededList!652 (LexerInterface!4192 List!30417 List!30418 Token!8660) List!30416)

(assert (=> d!746194 (= (list!11391 lt!924044) (printWithSeparatorTokenWhenNeededList!652 thiss!14197 rules!1726 (dropList!898 v!6381 (+ 1 from!862)) separatorToken!156))))

(assert (=> d!746194 (= lt!924044 e!1657456)))

(declare-fun c!422736 () Bool)

(assert (=> d!746194 (= c!422736 (>= (+ 1 from!862) (size!23467 v!6381)))))

(declare-fun lt!924041 () Unit!44367)

(assert (=> d!746194 (= lt!924041 (lemmaContentSubsetPreservesForall!264 (list!11389 v!6381) (dropList!898 v!6381 (+ 1 from!862)) lambda!98352))))

(assert (=> d!746194 e!1657452))

(declare-fun res!1105862 () Bool)

(assert (=> d!746194 (=> (not res!1105862) (not e!1657452))))

(assert (=> d!746194 (= res!1105862 (>= (+ 1 from!862) 0))))

(assert (=> d!746194 (= (printWithSeparatorTokenWhenNeededRec!470 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!924044)))

(declare-fun bm!169185 () Bool)

(assert (=> bm!169185 (= call!169192 call!169189)))

(declare-fun bm!169186 () Bool)

(assert (=> bm!169186 (= call!169189 (apply!7170 v!6381 (+ 1 from!862)))))

(declare-fun b!2627362 () Bool)

(assert (=> b!2627362 (= e!1657455 (++!7377 call!169188 lt!924046))))

(declare-fun bm!169187 () Bool)

(declare-fun c!422735 () Bool)

(assert (=> bm!169187 (= c!422735 c!422738)))

(assert (=> bm!169187 (= call!169188 (++!7377 e!1657450 (ite c!422738 lt!924046 call!169191)))))

(declare-fun b!2627363 () Bool)

(declare-fun e!1657454 () Bool)

(assert (=> b!2627363 (= c!422737 e!1657454)))

(declare-fun res!1105863 () Bool)

(assert (=> b!2627363 (=> (not res!1105863) (not e!1657454))))

(assert (=> b!2627363 (= res!1105863 ((_ is Some!5983) lt!924040))))

(assert (=> b!2627363 (= e!1657451 e!1657455)))

(declare-fun b!2627364 () Bool)

(assert (=> b!2627364 (= e!1657454 (not (= (_1!17480 (v!32364 lt!924040)) call!169189)))))

(assert (= (and d!746194 res!1105862) b!2627354))

(assert (= (and d!746194 c!422736) b!2627358))

(assert (= (and d!746194 (not c!422736)) b!2627356))

(assert (= (and b!2627356 res!1105861) b!2627359))

(assert (= (and b!2627356 c!422738) b!2627357))

(assert (= (and b!2627356 (not c!422738)) b!2627363))

(assert (= (and b!2627363 res!1105863) b!2627364))

(assert (= (and b!2627363 c!422737) b!2627362))

(assert (= (and b!2627363 (not c!422737)) b!2627355))

(assert (= (or b!2627362 b!2627355) bm!169185))

(assert (= (or b!2627362 b!2627355) bm!169183))

(assert (= (or b!2627357 bm!169185 b!2627364) bm!169186))

(assert (= (or b!2627357 bm!169183) bm!169184))

(assert (= (or b!2627357 b!2627362) bm!169187))

(assert (= (and bm!169187 c!422735) b!2627360))

(assert (= (and bm!169187 (not c!422735)) b!2627361))

(declare-fun m!2970493 () Bool)

(assert (=> b!2627359 m!2970493))

(declare-fun m!2970495 () Bool)

(assert (=> b!2627355 m!2970495))

(declare-fun m!2970497 () Bool)

(assert (=> b!2627355 m!2970497))

(declare-fun m!2970499 () Bool)

(assert (=> b!2627355 m!2970499))

(assert (=> b!2627355 m!2970495))

(declare-fun m!2970501 () Bool)

(assert (=> b!2627355 m!2970501))

(assert (=> b!2627355 m!2970501))

(declare-fun m!2970503 () Bool)

(assert (=> b!2627355 m!2970503))

(assert (=> b!2627355 m!2970497))

(assert (=> b!2627355 m!2970501))

(declare-fun m!2970505 () Bool)

(assert (=> b!2627355 m!2970505))

(assert (=> d!746194 m!2969995))

(declare-fun m!2970507 () Bool)

(assert (=> d!746194 m!2970507))

(declare-fun m!2970509 () Bool)

(assert (=> d!746194 m!2970509))

(assert (=> d!746194 m!2970027))

(declare-fun m!2970511 () Bool)

(assert (=> d!746194 m!2970511))

(assert (=> d!746194 m!2970507))

(declare-fun m!2970513 () Bool)

(assert (=> d!746194 m!2970513))

(assert (=> d!746194 m!2970507))

(assert (=> d!746194 m!2969995))

(declare-fun m!2970515 () Bool)

(assert (=> bm!169184 m!2970515))

(declare-fun m!2970517 () Bool)

(assert (=> b!2627361 m!2970517))

(declare-fun m!2970519 () Bool)

(assert (=> bm!169187 m!2970519))

(assert (=> b!2627354 m!2970027))

(declare-fun m!2970521 () Bool)

(assert (=> b!2627362 m!2970521))

(assert (=> b!2627356 m!2970493))

(declare-fun m!2970523 () Bool)

(assert (=> b!2627356 m!2970523))

(declare-fun m!2970525 () Bool)

(assert (=> b!2627356 m!2970525))

(declare-fun m!2970527 () Bool)

(assert (=> b!2627356 m!2970527))

(assert (=> b!2627356 m!2970493))

(assert (=> b!2627356 m!2969995))

(assert (=> b!2627356 m!2970493))

(declare-fun m!2970529 () Bool)

(assert (=> b!2627356 m!2970529))

(declare-fun m!2970531 () Bool)

(assert (=> b!2627356 m!2970531))

(declare-fun m!2970533 () Bool)

(assert (=> b!2627356 m!2970533))

(declare-fun m!2970535 () Bool)

(assert (=> b!2627356 m!2970535))

(assert (=> b!2627356 m!2969995))

(declare-fun m!2970537 () Bool)

(assert (=> b!2627356 m!2970537))

(declare-fun m!2970539 () Bool)

(assert (=> b!2627356 m!2970539))

(declare-fun m!2970541 () Bool)

(assert (=> b!2627356 m!2970541))

(assert (=> b!2627356 m!2970541))

(declare-fun m!2970543 () Bool)

(assert (=> b!2627356 m!2970543))

(assert (=> b!2627356 m!2970531))

(declare-fun m!2970545 () Bool)

(assert (=> b!2627356 m!2970545))

(declare-fun m!2970547 () Bool)

(assert (=> b!2627356 m!2970547))

(assert (=> b!2627356 m!2970523))

(assert (=> b!2627356 m!2970537))

(assert (=> bm!169186 m!2970493))

(assert (=> b!2626934 d!746194))

(declare-fun d!746220 () Bool)

(declare-fun lt!924049 () Bool)

(assert (=> d!746220 (= lt!924049 (select (content!4299 lt!923820) lt!923829))))

(declare-fun e!1657464 () Bool)

(assert (=> d!746220 (= lt!924049 e!1657464)))

(declare-fun res!1105869 () Bool)

(assert (=> d!746220 (=> (not res!1105869) (not e!1657464))))

(assert (=> d!746220 (= res!1105869 ((_ is Cons!30318) lt!923820))))

(assert (=> d!746220 (= (contains!5690 lt!923820 lt!923829) lt!924049)))

(declare-fun b!2627372 () Bool)

(declare-fun e!1657465 () Bool)

(assert (=> b!2627372 (= e!1657464 e!1657465)))

(declare-fun res!1105868 () Bool)

(assert (=> b!2627372 (=> res!1105868 e!1657465)))

(assert (=> b!2627372 (= res!1105868 (= (h!35738 lt!923820) lt!923829))))

(declare-fun b!2627373 () Bool)

(assert (=> b!2627373 (= e!1657465 (contains!5690 (t!215989 lt!923820) lt!923829))))

(assert (= (and d!746220 res!1105869) b!2627372))

(assert (= (and b!2627372 (not res!1105868)) b!2627373))

(assert (=> d!746220 m!2970241))

(declare-fun m!2970549 () Bool)

(assert (=> d!746220 m!2970549))

(declare-fun m!2970551 () Bool)

(assert (=> b!2627373 m!2970551))

(assert (=> b!2626944 d!746220))

(declare-fun d!746222 () Bool)

(assert (=> d!746222 (forall!6325 lt!923827 lambda!98337)))

(declare-fun lt!924052 () Unit!44367)

(declare-fun choose!15599 (List!30418 List!30418 Int) Unit!44367)

(assert (=> d!746222 (= lt!924052 (choose!15599 lt!923820 lt!923827 lambda!98337))))

(assert (=> d!746222 (forall!6325 lt!923820 lambda!98337)))

(assert (=> d!746222 (= (lemmaContentSubsetPreservesForall!264 lt!923820 lt!923827 lambda!98337) lt!924052)))

(declare-fun bs!475612 () Bool)

(assert (= bs!475612 d!746222))

(assert (=> bs!475612 m!2970031))

(declare-fun m!2970553 () Bool)

(assert (=> bs!475612 m!2970553))

(declare-fun m!2970555 () Bool)

(assert (=> bs!475612 m!2970555))

(assert (=> b!2626933 d!746222))

(declare-fun d!746224 () Bool)

(declare-fun list!11393 (Conc!9433) List!30418)

(assert (=> d!746224 (= (dropList!898 v!6381 from!862) (drop!1591 (list!11393 (c!422647 v!6381)) from!862))))

(declare-fun bs!475613 () Bool)

(assert (= bs!475613 d!746224))

(declare-fun m!2970557 () Bool)

(assert (=> bs!475613 m!2970557))

(assert (=> bs!475613 m!2970557))

(declare-fun m!2970559 () Bool)

(assert (=> bs!475613 m!2970559))

(assert (=> b!2626933 d!746224))

(declare-fun d!746226 () Bool)

(assert (=> d!746226 (= (list!11389 v!6381) (list!11393 (c!422647 v!6381)))))

(declare-fun bs!475614 () Bool)

(assert (= bs!475614 d!746226))

(assert (=> bs!475614 m!2970557))

(assert (=> b!2626933 d!746226))

(declare-fun bs!475622 () Bool)

(declare-fun d!746228 () Bool)

(assert (= bs!475622 (and d!746228 b!2626945)))

(declare-fun lambda!98361 () Int)

(assert (=> bs!475622 (not (= lambda!98361 lambda!98337))))

(declare-fun bs!475623 () Bool)

(assert (= bs!475623 (and d!746228 b!2626934)))

(assert (=> bs!475623 (= lambda!98361 lambda!98338)))

(declare-fun bs!475624 () Bool)

(assert (= bs!475624 (and d!746228 d!746194)))

(assert (=> bs!475624 (not (= lambda!98361 lambda!98352))))

(declare-fun bs!475625 () Bool)

(assert (= bs!475625 (and d!746228 b!2627356)))

(assert (=> bs!475625 (= lambda!98361 lambda!98353)))

(declare-fun b!2627436 () Bool)

(declare-fun e!1657508 () Bool)

(assert (=> b!2627436 (= e!1657508 true)))

(declare-fun b!2627435 () Bool)

(declare-fun e!1657507 () Bool)

(assert (=> b!2627435 (= e!1657507 e!1657508)))

(declare-fun b!2627434 () Bool)

(declare-fun e!1657506 () Bool)

(assert (=> b!2627434 (= e!1657506 e!1657507)))

(assert (=> d!746228 e!1657506))

(assert (= b!2627435 b!2627436))

(assert (= b!2627434 b!2627435))

(assert (= (and d!746228 ((_ is Cons!30317) rules!1726)) b!2627434))

(assert (=> b!2627436 (< (dynLambda!12923 order!16271 (toValue!6509 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98361))))

(assert (=> b!2627436 (< (dynLambda!12925 order!16275 (toChars!6368 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98361))))

(assert (=> d!746228 true))

(declare-fun lt!924058 () Bool)

(assert (=> d!746228 (= lt!924058 (forall!6325 lt!923827 lambda!98361))))

(declare-fun e!1657504 () Bool)

(assert (=> d!746228 (= lt!924058 e!1657504)))

(declare-fun res!1105877 () Bool)

(assert (=> d!746228 (=> res!1105877 e!1657504)))

(assert (=> d!746228 (= res!1105877 (not ((_ is Cons!30318) lt!923827)))))

(assert (=> d!746228 (not (isEmpty!17324 rules!1726))))

(assert (=> d!746228 (= (rulesProduceEachTokenIndividuallyList!1451 thiss!14197 rules!1726 lt!923827) lt!924058)))

(declare-fun b!2627432 () Bool)

(declare-fun e!1657505 () Bool)

(assert (=> b!2627432 (= e!1657504 e!1657505)))

(declare-fun res!1105878 () Bool)

(assert (=> b!2627432 (=> (not res!1105878) (not e!1657505))))

(assert (=> b!2627432 (= res!1105878 (rulesProduceIndividualToken!1904 thiss!14197 rules!1726 (h!35738 lt!923827)))))

(declare-fun b!2627433 () Bool)

(assert (=> b!2627433 (= e!1657505 (rulesProduceEachTokenIndividuallyList!1451 thiss!14197 rules!1726 (t!215989 lt!923827)))))

(assert (= (and d!746228 (not res!1105877)) b!2627432))

(assert (= (and b!2627432 res!1105878) b!2627433))

(declare-fun m!2970579 () Bool)

(assert (=> d!746228 m!2970579))

(assert (=> d!746228 m!2970005))

(declare-fun m!2970581 () Bool)

(assert (=> b!2627432 m!2970581))

(declare-fun m!2970583 () Bool)

(assert (=> b!2627433 m!2970583))

(assert (=> b!2626946 d!746228))

(declare-fun b!2627439 () Bool)

(declare-fun res!1105880 () Bool)

(declare-fun e!1657509 () Bool)

(assert (=> b!2627439 (=> (not res!1105880) (not e!1657509))))

(assert (=> b!2627439 (= res!1105880 (>= (height!1370 (++!7380 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (c!422646 lt!923824))) (max!0 (height!1370 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156)))) (height!1370 (c!422646 lt!923824)))))))

(declare-fun b!2627438 () Bool)

(declare-fun res!1105881 () Bool)

(assert (=> b!2627438 (=> (not res!1105881) (not e!1657509))))

(assert (=> b!2627438 (= res!1105881 (<= (height!1370 (++!7380 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (c!422646 lt!923824))) (+ (max!0 (height!1370 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156)))) (height!1370 (c!422646 lt!923824))) 1)))))

(declare-fun d!746234 () Bool)

(assert (=> d!746234 e!1657509))

(declare-fun res!1105879 () Bool)

(assert (=> d!746234 (=> (not res!1105879) (not e!1657509))))

(assert (=> d!746234 (= res!1105879 (appendAssocInst!628 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (c!422646 lt!923824)))))

(declare-fun lt!924059 () BalanceConc!18478)

(assert (=> d!746234 (= lt!924059 (BalanceConc!18479 (++!7380 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (c!422646 lt!923824))))))

(assert (=> d!746234 (= (++!7377 (++!7377 lt!923825 (charsOf!2886 separatorToken!156)) lt!923824) lt!924059)))

(declare-fun b!2627440 () Bool)

(assert (=> b!2627440 (= e!1657509 (= (list!11391 lt!924059) (++!7381 (list!11391 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (list!11391 lt!923824))))))

(declare-fun b!2627437 () Bool)

(declare-fun res!1105882 () Bool)

(assert (=> b!2627437 (=> (not res!1105882) (not e!1657509))))

(assert (=> b!2627437 (= res!1105882 (isBalanced!2867 (++!7380 (c!422646 (++!7377 lt!923825 (charsOf!2886 separatorToken!156))) (c!422646 lt!923824))))))

(assert (= (and d!746234 res!1105879) b!2627437))

(assert (= (and b!2627437 res!1105882) b!2627438))

(assert (= (and b!2627438 res!1105881) b!2627439))

(assert (= (and b!2627439 res!1105880) b!2627440))

(declare-fun m!2970585 () Bool)

(assert (=> d!746234 m!2970585))

(declare-fun m!2970587 () Bool)

(assert (=> d!746234 m!2970587))

(assert (=> b!2627437 m!2970587))

(assert (=> b!2627437 m!2970587))

(declare-fun m!2970589 () Bool)

(assert (=> b!2627437 m!2970589))

(assert (=> b!2627439 m!2970587))

(declare-fun m!2970591 () Bool)

(assert (=> b!2627439 m!2970591))

(assert (=> b!2627439 m!2970385))

(declare-fun m!2970593 () Bool)

(assert (=> b!2627439 m!2970593))

(assert (=> b!2627439 m!2970587))

(assert (=> b!2627439 m!2970593))

(assert (=> b!2627439 m!2970385))

(declare-fun m!2970595 () Bool)

(assert (=> b!2627439 m!2970595))

(assert (=> b!2627438 m!2970587))

(assert (=> b!2627438 m!2970591))

(assert (=> b!2627438 m!2970385))

(assert (=> b!2627438 m!2970593))

(assert (=> b!2627438 m!2970587))

(assert (=> b!2627438 m!2970593))

(assert (=> b!2627438 m!2970385))

(assert (=> b!2627438 m!2970595))

(declare-fun m!2970597 () Bool)

(assert (=> b!2627440 m!2970597))

(assert (=> b!2627440 m!2969963))

(declare-fun m!2970599 () Bool)

(assert (=> b!2627440 m!2970599))

(assert (=> b!2627440 m!2970395))

(assert (=> b!2627440 m!2970599))

(assert (=> b!2627440 m!2970395))

(declare-fun m!2970601 () Bool)

(assert (=> b!2627440 m!2970601))

(assert (=> b!2626946 d!746234))

(declare-fun b!2627443 () Bool)

(declare-fun res!1105884 () Bool)

(declare-fun e!1657510 () Bool)

(assert (=> b!2627443 (=> (not res!1105884) (not e!1657510))))

(assert (=> b!2627443 (= res!1105884 (>= (height!1370 (++!7380 (c!422646 lt!923825) (c!422646 (charsOf!2886 separatorToken!156)))) (max!0 (height!1370 (c!422646 lt!923825)) (height!1370 (c!422646 (charsOf!2886 separatorToken!156))))))))

(declare-fun b!2627442 () Bool)

(declare-fun res!1105885 () Bool)

(assert (=> b!2627442 (=> (not res!1105885) (not e!1657510))))

(assert (=> b!2627442 (= res!1105885 (<= (height!1370 (++!7380 (c!422646 lt!923825) (c!422646 (charsOf!2886 separatorToken!156)))) (+ (max!0 (height!1370 (c!422646 lt!923825)) (height!1370 (c!422646 (charsOf!2886 separatorToken!156)))) 1)))))

(declare-fun d!746236 () Bool)

(assert (=> d!746236 e!1657510))

(declare-fun res!1105883 () Bool)

(assert (=> d!746236 (=> (not res!1105883) (not e!1657510))))

(assert (=> d!746236 (= res!1105883 (appendAssocInst!628 (c!422646 lt!923825) (c!422646 (charsOf!2886 separatorToken!156))))))

(declare-fun lt!924060 () BalanceConc!18478)

(assert (=> d!746236 (= lt!924060 (BalanceConc!18479 (++!7380 (c!422646 lt!923825) (c!422646 (charsOf!2886 separatorToken!156)))))))

(assert (=> d!746236 (= (++!7377 lt!923825 (charsOf!2886 separatorToken!156)) lt!924060)))

(declare-fun b!2627444 () Bool)

(assert (=> b!2627444 (= e!1657510 (= (list!11391 lt!924060) (++!7381 (list!11391 lt!923825) (list!11391 (charsOf!2886 separatorToken!156)))))))

(declare-fun b!2627441 () Bool)

(declare-fun res!1105886 () Bool)

(assert (=> b!2627441 (=> (not res!1105886) (not e!1657510))))

(assert (=> b!2627441 (= res!1105886 (isBalanced!2867 (++!7380 (c!422646 lt!923825) (c!422646 (charsOf!2886 separatorToken!156)))))))

(assert (= (and d!746236 res!1105883) b!2627441))

(assert (= (and b!2627441 res!1105886) b!2627442))

(assert (= (and b!2627442 res!1105885) b!2627443))

(assert (= (and b!2627443 res!1105884) b!2627444))

(declare-fun m!2970603 () Bool)

(assert (=> d!746236 m!2970603))

(declare-fun m!2970605 () Bool)

(assert (=> d!746236 m!2970605))

(assert (=> b!2627441 m!2970605))

(assert (=> b!2627441 m!2970605))

(declare-fun m!2970607 () Bool)

(assert (=> b!2627441 m!2970607))

(assert (=> b!2627443 m!2970605))

(declare-fun m!2970609 () Bool)

(assert (=> b!2627443 m!2970609))

(declare-fun m!2970611 () Bool)

(assert (=> b!2627443 m!2970611))

(assert (=> b!2627443 m!2970387))

(assert (=> b!2627443 m!2970605))

(assert (=> b!2627443 m!2970387))

(assert (=> b!2627443 m!2970611))

(declare-fun m!2970613 () Bool)

(assert (=> b!2627443 m!2970613))

(assert (=> b!2627442 m!2970605))

(assert (=> b!2627442 m!2970609))

(assert (=> b!2627442 m!2970611))

(assert (=> b!2627442 m!2970387))

(assert (=> b!2627442 m!2970605))

(assert (=> b!2627442 m!2970387))

(assert (=> b!2627442 m!2970611))

(assert (=> b!2627442 m!2970613))

(declare-fun m!2970615 () Bool)

(assert (=> b!2627444 m!2970615))

(assert (=> b!2627444 m!2970393))

(assert (=> b!2627444 m!2969961))

(declare-fun m!2970617 () Bool)

(assert (=> b!2627444 m!2970617))

(assert (=> b!2627444 m!2970393))

(assert (=> b!2627444 m!2970617))

(declare-fun m!2970619 () Bool)

(assert (=> b!2627444 m!2970619))

(assert (=> b!2626946 d!746236))

(declare-fun d!746238 () Bool)

(declare-fun lt!924061 () BalanceConc!18478)

(assert (=> d!746238 (= (list!11391 lt!924061) (originalCharacters!5361 separatorToken!156))))

(assert (=> d!746238 (= lt!924061 (dynLambda!12928 (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))) (value!148562 separatorToken!156)))))

(assert (=> d!746238 (= (charsOf!2886 separatorToken!156) lt!924061)))

(declare-fun b_lambda!79197 () Bool)

(assert (=> (not b_lambda!79197) (not d!746238)))

(assert (=> d!746238 t!215991))

(declare-fun b_and!192411 () Bool)

(assert (= b_and!192399 (and (=> t!215991 result!178330) b_and!192411)))

(assert (=> d!746238 t!215993))

(declare-fun b_and!192413 () Bool)

(assert (= b_and!192401 (and (=> t!215993 result!178334) b_and!192413)))

(declare-fun m!2970621 () Bool)

(assert (=> d!746238 m!2970621))

(assert (=> d!746238 m!2970093))

(assert (=> b!2626946 d!746238))

(declare-fun bs!475626 () Bool)

(declare-fun d!746240 () Bool)

(assert (= bs!475626 (and d!746240 d!746228)))

(declare-fun lambda!98366 () Int)

(assert (=> bs!475626 (= lambda!98366 lambda!98361)))

(declare-fun bs!475627 () Bool)

(assert (= bs!475627 (and d!746240 b!2626945)))

(assert (=> bs!475627 (not (= lambda!98366 lambda!98337))))

(declare-fun bs!475628 () Bool)

(assert (= bs!475628 (and d!746240 d!746194)))

(assert (=> bs!475628 (not (= lambda!98366 lambda!98352))))

(declare-fun bs!475629 () Bool)

(assert (= bs!475629 (and d!746240 b!2626934)))

(assert (=> bs!475629 (= lambda!98366 lambda!98338)))

(declare-fun bs!475630 () Bool)

(assert (= bs!475630 (and d!746240 b!2627356)))

(assert (=> bs!475630 (= lambda!98366 lambda!98353)))

(declare-fun b!2627450 () Bool)

(declare-fun e!1657516 () Bool)

(assert (=> b!2627450 (= e!1657516 true)))

(declare-fun b!2627449 () Bool)

(declare-fun e!1657515 () Bool)

(assert (=> b!2627449 (= e!1657515 e!1657516)))

(declare-fun b!2627448 () Bool)

(declare-fun e!1657514 () Bool)

(assert (=> b!2627448 (= e!1657514 e!1657515)))

(assert (=> d!746240 e!1657514))

(assert (= b!2627449 b!2627450))

(assert (= b!2627448 b!2627449))

(assert (= (and d!746240 ((_ is Cons!30317) rules!1726)) b!2627448))

(assert (=> b!2627450 (< (dynLambda!12923 order!16271 (toValue!6509 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98366))))

(assert (=> b!2627450 (< (dynLambda!12925 order!16275 (toChars!6368 (transformation!4595 (h!35737 rules!1726)))) (dynLambda!12924 order!16273 lambda!98366))))

(assert (=> d!746240 true))

(declare-fun e!1657513 () Bool)

(assert (=> d!746240 e!1657513))

(declare-fun res!1105889 () Bool)

(assert (=> d!746240 (=> (not res!1105889) (not e!1657513))))

(declare-fun lt!924064 () Bool)

(assert (=> d!746240 (= res!1105889 (= lt!924064 (forall!6325 (list!11389 v!6381) lambda!98366)))))

(assert (=> d!746240 (= lt!924064 (forall!6324 v!6381 lambda!98366))))

(assert (=> d!746240 (not (isEmpty!17324 rules!1726))))

(assert (=> d!746240 (= (rulesProduceEachTokenIndividually!1012 thiss!14197 rules!1726 v!6381) lt!924064)))

(declare-fun b!2627447 () Bool)

(assert (=> b!2627447 (= e!1657513 (= lt!924064 (rulesProduceEachTokenIndividuallyList!1451 thiss!14197 rules!1726 (list!11389 v!6381))))))

(assert (= (and d!746240 res!1105889) b!2627447))

(assert (=> d!746240 m!2969995))

(assert (=> d!746240 m!2969995))

(declare-fun m!2970623 () Bool)

(assert (=> d!746240 m!2970623))

(declare-fun m!2970625 () Bool)

(assert (=> d!746240 m!2970625))

(assert (=> d!746240 m!2970005))

(assert (=> b!2627447 m!2969995))

(assert (=> b!2627447 m!2969995))

(declare-fun m!2970627 () Bool)

(assert (=> b!2627447 m!2970627))

(assert (=> b!2626935 d!746240))

(declare-fun d!746242 () Bool)

(declare-fun lt!924067 () Bool)

(assert (=> d!746242 (= lt!924067 (forall!6325 (list!11389 v!6381) lambda!98337))))

(declare-fun forall!6327 (Conc!9433 Int) Bool)

(assert (=> d!746242 (= lt!924067 (forall!6327 (c!422647 v!6381) lambda!98337))))

(assert (=> d!746242 (= (forall!6324 v!6381 lambda!98337) lt!924067)))

(declare-fun bs!475631 () Bool)

(assert (= bs!475631 d!746242))

(assert (=> bs!475631 m!2969995))

(assert (=> bs!475631 m!2969995))

(declare-fun m!2970629 () Bool)

(assert (=> bs!475631 m!2970629))

(declare-fun m!2970631 () Bool)

(assert (=> bs!475631 m!2970631))

(assert (=> b!2626945 d!746242))

(declare-fun b!2627462 () Bool)

(declare-fun e!1657519 () Bool)

(declare-fun tp!832949 () Bool)

(declare-fun tp!832945 () Bool)

(assert (=> b!2627462 (= e!1657519 (and tp!832949 tp!832945))))

(declare-fun b!2627464 () Bool)

(declare-fun tp!832947 () Bool)

(declare-fun tp!832948 () Bool)

(assert (=> b!2627464 (= e!1657519 (and tp!832947 tp!832948))))

(declare-fun b!2627461 () Bool)

(declare-fun tp_is_empty!13745 () Bool)

(assert (=> b!2627461 (= e!1657519 tp_is_empty!13745)))

(assert (=> b!2626931 (= tp!832875 e!1657519)))

(declare-fun b!2627463 () Bool)

(declare-fun tp!832946 () Bool)

(assert (=> b!2627463 (= e!1657519 tp!832946)))

(assert (= (and b!2626931 ((_ is ElementMatch!7739) (regex!4595 (rule!6977 separatorToken!156)))) b!2627461))

(assert (= (and b!2626931 ((_ is Concat!12556) (regex!4595 (rule!6977 separatorToken!156)))) b!2627462))

(assert (= (and b!2626931 ((_ is Star!7739) (regex!4595 (rule!6977 separatorToken!156)))) b!2627463))

(assert (= (and b!2626931 ((_ is Union!7739) (regex!4595 (rule!6977 separatorToken!156)))) b!2627464))

(declare-fun b!2627469 () Bool)

(declare-fun e!1657522 () Bool)

(declare-fun tp!832952 () Bool)

(assert (=> b!2627469 (= e!1657522 (and tp_is_empty!13745 tp!832952))))

(assert (=> b!2626938 (= tp!832882 e!1657522)))

(assert (= (and b!2626938 ((_ is Cons!30316) (originalCharacters!5361 separatorToken!156))) b!2627469))

(declare-fun b!2627480 () Bool)

(declare-fun b_free!73857 () Bool)

(declare-fun b_next!74561 () Bool)

(assert (=> b!2627480 (= b_free!73857 (not b_next!74561))))

(declare-fun tp!832962 () Bool)

(declare-fun b_and!192415 () Bool)

(assert (=> b!2627480 (= tp!832962 b_and!192415)))

(declare-fun b_free!73859 () Bool)

(declare-fun b_next!74563 () Bool)

(assert (=> b!2627480 (= b_free!73859 (not b_next!74563))))

(declare-fun tb!143555 () Bool)

(declare-fun t!216033 () Bool)

(assert (=> (and b!2627480 (= (toChars!6368 (transformation!4595 (h!35737 (t!215988 rules!1726)))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156)))) t!216033) tb!143555))

(declare-fun result!178368 () Bool)

(assert (= result!178368 result!178330))

(assert (=> b!2627038 t!216033))

(declare-fun tb!143557 () Bool)

(declare-fun t!216035 () Bool)

(assert (=> (and b!2627480 (= (toChars!6368 (transformation!4595 (h!35737 (t!215988 rules!1726)))) (toChars!6368 (transformation!4595 (rule!6977 lt!923829)))) t!216035) tb!143557))

(declare-fun result!178370 () Bool)

(assert (= result!178370 result!178346))

(assert (=> d!746190 t!216035))

(assert (=> d!746238 t!216033))

(declare-fun b_and!192417 () Bool)

(declare-fun tp!832961 () Bool)

(assert (=> b!2627480 (= tp!832961 (and (=> t!216033 result!178368) (=> t!216035 result!178370) b_and!192417))))

(declare-fun e!1657534 () Bool)

(assert (=> b!2627480 (= e!1657534 (and tp!832962 tp!832961))))

(declare-fun tp!832963 () Bool)

(declare-fun b!2627479 () Bool)

(declare-fun e!1657533 () Bool)

(assert (=> b!2627479 (= e!1657533 (and tp!832963 (inv!41072 (tag!5089 (h!35737 (t!215988 rules!1726)))) (inv!41077 (transformation!4595 (h!35737 (t!215988 rules!1726)))) e!1657534))))

(declare-fun b!2627478 () Bool)

(declare-fun e!1657531 () Bool)

(declare-fun tp!832964 () Bool)

(assert (=> b!2627478 (= e!1657531 (and e!1657533 tp!832964))))

(assert (=> b!2626950 (= tp!832880 e!1657531)))

(assert (= b!2627479 b!2627480))

(assert (= b!2627478 b!2627479))

(assert (= (and b!2626950 ((_ is Cons!30317) (t!215988 rules!1726))) b!2627478))

(declare-fun m!2970633 () Bool)

(assert (=> b!2627479 m!2970633))

(declare-fun m!2970635 () Bool)

(assert (=> b!2627479 m!2970635))

(declare-fun b!2627489 () Bool)

(declare-fun e!1657539 () Bool)

(declare-fun tp!832971 () Bool)

(declare-fun tp!832973 () Bool)

(assert (=> b!2627489 (= e!1657539 (and (inv!41078 (left!23366 (c!422647 v!6381))) tp!832971 (inv!41078 (right!23696 (c!422647 v!6381))) tp!832973))))

(declare-fun b!2627491 () Bool)

(declare-fun e!1657540 () Bool)

(declare-fun tp!832972 () Bool)

(assert (=> b!2627491 (= e!1657540 tp!832972)))

(declare-fun b!2627490 () Bool)

(declare-fun inv!41090 (IArray!18871) Bool)

(assert (=> b!2627490 (= e!1657539 (and (inv!41090 (xs!12433 (c!422647 v!6381))) e!1657540))))

(assert (=> b!2626939 (= tp!832876 (and (inv!41078 (c!422647 v!6381)) e!1657539))))

(assert (= (and b!2626939 ((_ is Node!9433) (c!422647 v!6381))) b!2627489))

(assert (= b!2627490 b!2627491))

(assert (= (and b!2626939 ((_ is Leaf!14471) (c!422647 v!6381))) b!2627490))

(declare-fun m!2970637 () Bool)

(assert (=> b!2627489 m!2970637))

(declare-fun m!2970639 () Bool)

(assert (=> b!2627489 m!2970639))

(declare-fun m!2970641 () Bool)

(assert (=> b!2627490 m!2970641))

(assert (=> b!2626939 m!2969969))

(declare-fun b!2627494 () Bool)

(declare-fun e!1657543 () Bool)

(assert (=> b!2627494 (= e!1657543 true)))

(declare-fun b!2627493 () Bool)

(declare-fun e!1657542 () Bool)

(assert (=> b!2627493 (= e!1657542 e!1657543)))

(declare-fun b!2627492 () Bool)

(declare-fun e!1657541 () Bool)

(assert (=> b!2627492 (= e!1657541 e!1657542)))

(assert (=> b!2626960 e!1657541))

(assert (= b!2627493 b!2627494))

(assert (= b!2627492 b!2627493))

(assert (= (and b!2626960 ((_ is Cons!30317) (t!215988 rules!1726))) b!2627492))

(assert (=> b!2627494 (< (dynLambda!12923 order!16271 (toValue!6509 (transformation!4595 (h!35737 (t!215988 rules!1726))))) (dynLambda!12924 order!16273 lambda!98338))))

(assert (=> b!2627494 (< (dynLambda!12925 order!16275 (toChars!6368 (transformation!4595 (h!35737 (t!215988 rules!1726))))) (dynLambda!12924 order!16273 lambda!98338))))

(declare-fun b!2627496 () Bool)

(declare-fun e!1657544 () Bool)

(declare-fun tp!832978 () Bool)

(declare-fun tp!832974 () Bool)

(assert (=> b!2627496 (= e!1657544 (and tp!832978 tp!832974))))

(declare-fun b!2627498 () Bool)

(declare-fun tp!832976 () Bool)

(declare-fun tp!832977 () Bool)

(assert (=> b!2627498 (= e!1657544 (and tp!832976 tp!832977))))

(declare-fun b!2627495 () Bool)

(assert (=> b!2627495 (= e!1657544 tp_is_empty!13745)))

(assert (=> b!2626940 (= tp!832874 e!1657544)))

(declare-fun b!2627497 () Bool)

(declare-fun tp!832975 () Bool)

(assert (=> b!2627497 (= e!1657544 tp!832975)))

(assert (= (and b!2626940 ((_ is ElementMatch!7739) (regex!4595 (h!35737 rules!1726)))) b!2627495))

(assert (= (and b!2626940 ((_ is Concat!12556) (regex!4595 (h!35737 rules!1726)))) b!2627496))

(assert (= (and b!2626940 ((_ is Star!7739) (regex!4595 (h!35737 rules!1726)))) b!2627497))

(assert (= (and b!2626940 ((_ is Union!7739) (regex!4595 (h!35737 rules!1726)))) b!2627498))

(declare-fun b_lambda!79199 () Bool)

(assert (= b_lambda!79197 (or (and b!2626941 b_free!73847) (and b!2626951 b_free!73851 (= (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))))) (and b!2627480 b_free!73859 (= (toChars!6368 (transformation!4595 (h!35737 (t!215988 rules!1726)))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))))) b_lambda!79199)))

(declare-fun b_lambda!79201 () Bool)

(assert (= b_lambda!79173 (or (and b!2626941 b_free!73847) (and b!2626951 b_free!73851 (= (toChars!6368 (transformation!4595 (h!35737 rules!1726))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))))) (and b!2627480 b_free!73859 (= (toChars!6368 (transformation!4595 (h!35737 (t!215988 rules!1726)))) (toChars!6368 (transformation!4595 (rule!6977 separatorToken!156))))) b_lambda!79201)))

(declare-fun b_lambda!79203 () Bool)

(assert (= b_lambda!79179 (or b!2626934 b_lambda!79203)))

(declare-fun bs!475632 () Bool)

(declare-fun d!746244 () Bool)

(assert (= bs!475632 (and d!746244 b!2626934)))

(assert (=> bs!475632 (= (dynLambda!12929 lambda!98338 lt!923829) (rulesProduceIndividualToken!1904 thiss!14197 rules!1726 lt!923829))))

(declare-fun m!2970643 () Bool)

(assert (=> bs!475632 m!2970643))

(assert (=> d!746178 d!746244))

(declare-fun b_lambda!79205 () Bool)

(assert (= b_lambda!79175 (or b!2626945 b_lambda!79205)))

(declare-fun bs!475633 () Bool)

(declare-fun d!746246 () Bool)

(assert (= bs!475633 (and d!746246 b!2626945)))

(assert (=> bs!475633 (= (dynLambda!12929 lambda!98337 (h!35738 lt!923827)) (not (isSeparator!4595 (rule!6977 (h!35738 lt!923827)))))))

(assert (=> b!2627067 d!746246))

(check-sat (not b!2627441) b_and!192417 (not b!2627168) (not d!746194) (not b!2627462) (not d!746234) (not b!2627047) (not b!2627265) (not b!2627053) (not b!2627178) (not b!2627172) (not b!2627267) (not b!2627127) (not bm!169186) (not tb!143547) (not b!2627194) (not b!2627256) (not b!2627187) (not bm!169157) (not b!2627126) (not b_next!74561) (not b!2627434) (not b_lambda!79201) (not d!746114) (not b!2627249) (not b_lambda!79203) (not d!746132) (not b!2627141) (not b!2627362) (not d!746180) (not d!746134) (not b!2627443) b_and!192411 (not d!746222) (not d!746162) (not b!2627479) (not d!746192) b_and!192413 (not b!2627437) (not d!746240) (not b!2627142) (not bm!169150) (not b!2627373) (not d!746120) (not bm!169187) tp_is_empty!13745 (not b!2627444) (not b!2627365) (not b!2627355) (not d!746166) (not d!746172) (not b!2627359) (not b!2627438) (not b!2627068) b_and!192379 (not b!2627038) (not b!2627356) (not b!2627440) (not b!2627060) (not b_lambda!79199) (not bm!169151) (not b!2627175) (not b_next!74549) (not b!2627069) (not b!2627185) (not b!2627490) (not b!2627251) (not b_next!74551) (not b!2627252) (not b!2627199) (not b!2627439) (not b!2627125) (not d!746116) (not b_lambda!79185) (not b_lambda!79205) (not b_next!74555) (not b!2627448) (not b!2627195) (not b!2627062) (not b!2627248) (not d!746190) (not b!2627442) (not b!2627492) (not d!746224) (not b!2627497) (not d!746168) (not d!746238) (not b!2627167) (not b!2627140) b_and!192383 (not b!2627496) (not tb!143535) (not b!2627268) (not d!746176) (not b!2627469) (not d!746226) (not d!746178) (not d!746164) (not b!2627361) (not b!2627464) (not b!2627491) (not b!2627498) (not b!2627432) (not d!746220) (not b!2626939) (not b!2627447) (not b_next!74563) (not d!746242) (not b!2627478) (not b!2627052) (not b!2627250) (not d!746174) (not b!2627266) (not d!746228) (not b_next!74553) (not b!2627463) (not b!2627039) b_and!192415 (not bm!169184) (not b!2627354) (not d!746236) (not b!2627044) (not b!2627253) (not b!2627186) (not d!746170) (not b!2627433) (not b!2627033) (not bs!475632) (not b!2627254) (not d!746112) (not b!2627489))
(check-sat (not b_next!74561) b_and!192411 b_and!192413 b_and!192379 (not b_next!74549) (not b_next!74551) (not b_next!74555) b_and!192417 b_and!192383 (not b_next!74563) (not b_next!74553) b_and!192415)
