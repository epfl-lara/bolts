; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!514908 () Bool)

(assert start!514908)

(declare-fun b!4908904 () Bool)

(declare-fun b_free!131947 () Bool)

(declare-fun b_next!132737 () Bool)

(assert (=> b!4908904 (= b_free!131947 (not b_next!132737))))

(declare-fun tp!1380548 () Bool)

(declare-fun b_and!346587 () Bool)

(assert (=> b!4908904 (= tp!1380548 b_and!346587)))

(declare-fun b_free!131949 () Bool)

(declare-fun b_next!132739 () Bool)

(assert (=> b!4908904 (= b_free!131949 (not b_next!132739))))

(declare-fun tp!1380551 () Bool)

(declare-fun b_and!346589 () Bool)

(assert (=> b!4908904 (= tp!1380551 b_and!346589)))

(declare-fun b!4908919 () Bool)

(declare-fun e!3068414 () Bool)

(assert (=> b!4908919 (= e!3068414 true)))

(declare-fun b!4908918 () Bool)

(declare-fun e!3068413 () Bool)

(assert (=> b!4908918 (= e!3068413 e!3068414)))

(declare-fun b!4908909 () Bool)

(assert (=> b!4908909 e!3068413))

(assert (= b!4908918 b!4908919))

(assert (= b!4908909 b!4908918))

(declare-fun order!25841 () Int)

(declare-datatypes ((C!26836 0))(
  ( (C!26837 (val!22752 Int)) )
))
(declare-datatypes ((Regex!13319 0))(
  ( (ElementMatch!13319 (c!834417 C!26836)) (Concat!21873 (regOne!27150 Regex!13319) (regTwo!27150 Regex!13319)) (EmptyExpr!13319) (Star!13319 (reg!13648 Regex!13319)) (EmptyLang!13319) (Union!13319 (regOne!27151 Regex!13319) (regTwo!27151 Regex!13319)) )
))
(declare-datatypes ((String!64211 0))(
  ( (String!64212 (value!264060 String)) )
))
(declare-datatypes ((List!56686 0))(
  ( (Nil!56562) (Cons!56562 (h!63010 (_ BitVec 16)) (t!366962 List!56686)) )
))
(declare-datatypes ((TokenValue!8554 0))(
  ( (FloatLiteralValue!17108 (text!60323 List!56686)) (TokenValueExt!8553 (__x!34401 Int)) (Broken!42770 (value!264061 List!56686)) (Object!8677) (End!8554) (Def!8554) (Underscore!8554) (Match!8554) (Else!8554) (Error!8554) (Case!8554) (If!8554) (Extends!8554) (Abstract!8554) (Class!8554) (Val!8554) (DelimiterValue!17108 (del!8614 List!56686)) (KeywordValue!8560 (value!264062 List!56686)) (CommentValue!17108 (value!264063 List!56686)) (WhitespaceValue!17108 (value!264064 List!56686)) (IndentationValue!8554 (value!264065 List!56686)) (String!64213) (Int32!8554) (Broken!42771 (value!264066 List!56686)) (Boolean!8555) (Unit!146789) (OperatorValue!8557 (op!8614 List!56686)) (IdentifierValue!17108 (value!264067 List!56686)) (IdentifierValue!17109 (value!264068 List!56686)) (WhitespaceValue!17109 (value!264069 List!56686)) (True!17108) (False!17108) (Broken!42772 (value!264070 List!56686)) (Broken!42773 (value!264071 List!56686)) (True!17109) (RightBrace!8554) (RightBracket!8554) (Colon!8554) (Null!8554) (Comma!8554) (LeftBracket!8554) (False!17109) (LeftBrace!8554) (ImaginaryLiteralValue!8554 (text!60324 List!56686)) (StringLiteralValue!25662 (value!264072 List!56686)) (EOFValue!8554 (value!264073 List!56686)) (IdentValue!8554 (value!264074 List!56686)) (DelimiterValue!17109 (value!264075 List!56686)) (DedentValue!8554 (value!264076 List!56686)) (NewLineValue!8554 (value!264077 List!56686)) (IntegerValue!25662 (value!264078 (_ BitVec 32)) (text!60325 List!56686)) (IntegerValue!25663 (value!264079 Int) (text!60326 List!56686)) (Times!8554) (Or!8554) (Equal!8554) (Minus!8554) (Broken!42774 (value!264080 List!56686)) (And!8554) (Div!8554) (LessEqual!8554) (Mod!8554) (Concat!21874) (Not!8554) (Plus!8554) (SpaceValue!8554 (value!264081 List!56686)) (IntegerValue!25664 (value!264082 Int) (text!60327 List!56686)) (StringLiteralValue!25663 (text!60328 List!56686)) (FloatLiteralValue!17109 (text!60329 List!56686)) (BytesLiteralValue!8554 (value!264083 List!56686)) (CommentValue!17109 (value!264084 List!56686)) (StringLiteralValue!25664 (value!264085 List!56686)) (ErrorTokenValue!8554 (msg!8615 List!56686)) )
))
(declare-datatypes ((List!56687 0))(
  ( (Nil!56563) (Cons!56563 (h!63011 C!26836) (t!366963 List!56687)) )
))
(declare-datatypes ((IArray!29685 0))(
  ( (IArray!29686 (innerList!14900 List!56687)) )
))
(declare-datatypes ((Conc!14812 0))(
  ( (Node!14812 (left!41200 Conc!14812) (right!41530 Conc!14812) (csize!29854 Int) (cheight!15023 Int)) (Leaf!24651 (xs!18128 IArray!29685) (csize!29855 Int)) (Empty!14812) )
))
(declare-datatypes ((BalanceConc!29054 0))(
  ( (BalanceConc!29055 (c!834418 Conc!14812)) )
))
(declare-datatypes ((TokenValueInjection!16416 0))(
  ( (TokenValueInjection!16417 (toValue!11179 Int) (toChars!11038 Int)) )
))
(declare-datatypes ((Rule!16288 0))(
  ( (Rule!16289 (regex!8244 Regex!13319) (tag!9108 String!64211) (isSeparator!8244 Bool) (transformation!8244 TokenValueInjection!16416)) )
))
(declare-fun rule!164 () Rule!16288)

(declare-fun order!25843 () Int)

(declare-fun lambda!244634 () Int)

(declare-fun dynLambda!22893 (Int Int) Int)

(declare-fun dynLambda!22894 (Int Int) Int)

(assert (=> b!4908919 (< (dynLambda!22893 order!25841 (toValue!11179 (transformation!8244 rule!164))) (dynLambda!22894 order!25843 lambda!244634))))

(declare-fun order!25845 () Int)

(declare-fun dynLambda!22895 (Int Int) Int)

(assert (=> b!4908919 (< (dynLambda!22895 order!25845 (toChars!11038 (transformation!8244 rule!164))) (dynLambda!22894 order!25843 lambda!244634))))

(declare-fun b!4908900 () Bool)

(declare-fun res!2096880 () Bool)

(declare-fun e!3068402 () Bool)

(assert (=> b!4908900 (=> res!2096880 e!3068402)))

(declare-fun lt!2014549 () BalanceConc!29054)

(declare-fun lt!2014559 () List!56687)

(declare-fun list!17838 (BalanceConc!29054) List!56687)

(assert (=> b!4908900 (= res!2096880 (not (= (list!17838 lt!2014549) lt!2014559)))))

(declare-fun b!4908901 () Bool)

(declare-fun tp!1380549 () Bool)

(declare-fun e!3068400 () Bool)

(declare-fun e!3068407 () Bool)

(declare-fun inv!73076 (String!64211) Bool)

(declare-fun inv!73080 (TokenValueInjection!16416) Bool)

(assert (=> b!4908901 (= e!3068400 (and tp!1380549 (inv!73076 (tag!9108 rule!164)) (inv!73080 (transformation!8244 rule!164)) e!3068407))))

(declare-fun b!4908902 () Bool)

(declare-fun lt!2014553 () Int)

(declare-datatypes ((Token!15016 0))(
  ( (Token!15017 (value!264086 TokenValue!8554) (rule!11454 Rule!16288) (size!37317 Int) (originalCharacters!8539 List!56687)) )
))
(declare-datatypes ((tuple2!60884 0))(
  ( (tuple2!60885 (_1!33745 Token!15016) (_2!33745 List!56687)) )
))
(declare-fun lt!2014548 () tuple2!60884)

(declare-fun lt!2014551 () TokenValue!8554)

(declare-fun e!3068399 () Bool)

(assert (=> b!4908902 (= e!3068399 (or (not (= (value!264086 (_1!33745 lt!2014548)) lt!2014551)) (not (= (rule!11454 (_1!33745 lt!2014548)) rule!164)) (not (= (size!37317 (_1!33745 lt!2014548)) lt!2014553)) (= (originalCharacters!8539 (_1!33745 lt!2014548)) lt!2014559)))))

(declare-datatypes ((Option!14125 0))(
  ( (None!14124) (Some!14124 (v!50086 tuple2!60884)) )
))
(declare-fun lt!2014561 () Option!14125)

(declare-fun get!19572 (Option!14125) tuple2!60884)

(assert (=> b!4908902 (= lt!2014548 (get!19572 lt!2014561))))

(declare-fun b!4908903 () Bool)

(assert (=> b!4908903 (= e!3068402 e!3068399)))

(declare-fun res!2096885 () Bool)

(assert (=> b!4908903 (=> res!2096885 e!3068399)))

(declare-fun apply!13588 (TokenValueInjection!16416 BalanceConc!29054) TokenValue!8554)

(assert (=> b!4908903 (= res!2096885 (not (= (apply!13588 (transformation!8244 rule!164) lt!2014549) lt!2014551)))))

(declare-datatypes ((tuple2!60886 0))(
  ( (tuple2!60887 (_1!33746 BalanceConc!29054) (_2!33746 BalanceConc!29054)) )
))
(declare-fun lt!2014550 () tuple2!60886)

(declare-datatypes ((Unit!146790 0))(
  ( (Unit!146791) )
))
(declare-fun lt!2014554 () Unit!146790)

(declare-fun lemmaEqSameImage!1126 (TokenValueInjection!16416 BalanceConc!29054 BalanceConc!29054) Unit!146790)

(assert (=> b!4908903 (= lt!2014554 (lemmaEqSameImage!1126 (transformation!8244 rule!164) (_1!33746 lt!2014550) lt!2014549))))

(assert (=> b!4908904 (= e!3068407 (and tp!1380548 tp!1380551))))

(declare-fun b!4908905 () Bool)

(declare-fun e!3068403 () Bool)

(assert (=> b!4908905 (= e!3068403 e!3068402)))

(declare-fun res!2096883 () Bool)

(assert (=> b!4908905 (=> res!2096883 e!3068402)))

(declare-fun lt!2014560 () Bool)

(declare-fun isDefined!11134 (Option!14125) Bool)

(assert (=> b!4908905 (= res!2096883 (not (= lt!2014560 (isDefined!11134 lt!2014561))))))

(declare-datatypes ((tuple2!60888 0))(
  ( (tuple2!60889 (_1!33747 Token!15016) (_2!33747 BalanceConc!29054)) )
))
(declare-datatypes ((Option!14126 0))(
  ( (None!14125) (Some!14125 (v!50087 tuple2!60888)) )
))
(declare-fun isDefined!11135 (Option!14126) Bool)

(assert (=> b!4908905 (= lt!2014560 (isDefined!11135 (Some!14125 (tuple2!60889 (Token!15017 lt!2014551 rule!164 lt!2014553 lt!2014559) (_2!33746 lt!2014550)))))))

(declare-fun lt!2014558 () List!56687)

(declare-datatypes ((LexerInterface!7836 0))(
  ( (LexerInterfaceExt!7833 (__x!34402 Int)) (Lexer!7834) )
))
(declare-fun thiss!15943 () LexerInterface!7836)

(declare-fun maxPrefixOneRule!3581 (LexerInterface!7836 Rule!16288 List!56687) Option!14125)

(assert (=> b!4908905 (= lt!2014561 (maxPrefixOneRule!3581 thiss!15943 rule!164 lt!2014558))))

(declare-fun size!37318 (BalanceConc!29054) Int)

(assert (=> b!4908905 (= lt!2014553 (size!37318 (_1!33746 lt!2014550)))))

(assert (=> b!4908905 (= lt!2014551 (apply!13588 (transformation!8244 rule!164) (_1!33746 lt!2014550)))))

(declare-fun lt!2014547 () Unit!146790)

(declare-fun ForallOf!1181 (Int BalanceConc!29054) Unit!146790)

(assert (=> b!4908905 (= lt!2014547 (ForallOf!1181 lambda!244634 lt!2014549))))

(declare-fun seqFromList!5986 (List!56687) BalanceConc!29054)

(assert (=> b!4908905 (= lt!2014549 (seqFromList!5986 lt!2014559))))

(assert (=> b!4908905 (= lt!2014559 (list!17838 (_1!33746 lt!2014550)))))

(declare-fun lt!2014556 () Unit!146790)

(assert (=> b!4908905 (= lt!2014556 (ForallOf!1181 lambda!244634 (_1!33746 lt!2014550)))))

(declare-fun b!4908906 () Bool)

(declare-fun res!2096877 () Bool)

(assert (=> b!4908906 (=> res!2096877 e!3068402)))

(assert (=> b!4908906 (= res!2096877 (not lt!2014560))))

(declare-fun b!4908907 () Bool)

(declare-fun e!3068405 () Bool)

(declare-fun e!3068408 () Bool)

(assert (=> b!4908907 (= e!3068405 e!3068408)))

(declare-fun res!2096879 () Bool)

(assert (=> b!4908907 (=> (not res!2096879) (not e!3068408))))

(declare-fun isEmpty!30467 (BalanceConc!29054) Bool)

(assert (=> b!4908907 (= res!2096879 (not (isEmpty!30467 (_1!33746 lt!2014550))))))

(declare-fun input!1509 () BalanceConc!29054)

(declare-fun findLongestMatchWithZipperSequence!332 (Regex!13319 BalanceConc!29054) tuple2!60886)

(assert (=> b!4908907 (= lt!2014550 (findLongestMatchWithZipperSequence!332 (regex!8244 rule!164) input!1509))))

(declare-fun b!4908908 () Bool)

(declare-fun res!2096884 () Bool)

(assert (=> b!4908908 (=> (not res!2096884) (not e!3068405))))

(declare-fun ruleValid!3741 (LexerInterface!7836 Rule!16288) Bool)

(assert (=> b!4908908 (= res!2096884 (ruleValid!3741 thiss!15943 rule!164))))

(declare-fun res!2096881 () Bool)

(assert (=> b!4908909 (=> res!2096881 e!3068403)))

(declare-fun Forall!1741 (Int) Bool)

(assert (=> b!4908909 (= res!2096881 (not (Forall!1741 lambda!244634)))))

(declare-fun res!2096882 () Bool)

(assert (=> start!514908 (=> (not res!2096882) (not e!3068405))))

(get-info :version)

(assert (=> start!514908 (= res!2096882 ((_ is Lexer!7834) thiss!15943))))

(assert (=> start!514908 e!3068405))

(assert (=> start!514908 true))

(assert (=> start!514908 e!3068400))

(declare-fun e!3068406 () Bool)

(declare-fun inv!73081 (BalanceConc!29054) Bool)

(assert (=> start!514908 (and (inv!73081 input!1509) e!3068406)))

(declare-fun b!4908899 () Bool)

(assert (=> b!4908899 (= e!3068408 (not e!3068403))))

(declare-fun res!2096886 () Bool)

(assert (=> b!4908899 (=> res!2096886 e!3068403)))

(declare-fun semiInverseModEq!3645 (Int Int) Bool)

(assert (=> b!4908899 (= res!2096886 (not (semiInverseModEq!3645 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164)))))))

(declare-fun lt!2014552 () Unit!146790)

(declare-fun lemmaInv!1290 (TokenValueInjection!16416) Unit!146790)

(assert (=> b!4908899 (= lt!2014552 (lemmaInv!1290 (transformation!8244 rule!164)))))

(declare-fun e!3068401 () Bool)

(assert (=> b!4908899 e!3068401))

(declare-fun res!2096878 () Bool)

(assert (=> b!4908899 (=> res!2096878 e!3068401)))

(declare-datatypes ((tuple2!60890 0))(
  ( (tuple2!60891 (_1!33748 List!56687) (_2!33748 List!56687)) )
))
(declare-fun lt!2014557 () tuple2!60890)

(declare-fun isEmpty!30468 (List!56687) Bool)

(assert (=> b!4908899 (= res!2096878 (isEmpty!30468 (_1!33748 lt!2014557)))))

(declare-fun findLongestMatchInner!1807 (Regex!13319 List!56687 Int List!56687 List!56687 Int) tuple2!60890)

(declare-fun size!37319 (List!56687) Int)

(assert (=> b!4908899 (= lt!2014557 (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)))))

(declare-fun lt!2014555 () Unit!146790)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1770 (Regex!13319 List!56687) Unit!146790)

(assert (=> b!4908899 (= lt!2014555 (longestMatchIsAcceptedByMatchOrIsEmpty!1770 (regex!8244 rule!164) lt!2014558))))

(assert (=> b!4908899 (= lt!2014558 (list!17838 input!1509))))

(declare-fun b!4908910 () Bool)

(declare-fun matchR!6586 (Regex!13319 List!56687) Bool)

(assert (=> b!4908910 (= e!3068401 (matchR!6586 (regex!8244 rule!164) (_1!33748 lt!2014557)))))

(declare-fun b!4908911 () Bool)

(declare-fun tp!1380550 () Bool)

(declare-fun inv!73082 (Conc!14812) Bool)

(assert (=> b!4908911 (= e!3068406 (and (inv!73082 (c!834418 input!1509)) tp!1380550))))

(assert (= (and start!514908 res!2096882) b!4908908))

(assert (= (and b!4908908 res!2096884) b!4908907))

(assert (= (and b!4908907 res!2096879) b!4908899))

(assert (= (and b!4908899 (not res!2096878)) b!4908910))

(assert (= (and b!4908899 (not res!2096886)) b!4908909))

(assert (= (and b!4908909 (not res!2096881)) b!4908905))

(assert (= (and b!4908905 (not res!2096883)) b!4908906))

(assert (= (and b!4908906 (not res!2096877)) b!4908900))

(assert (= (and b!4908900 (not res!2096880)) b!4908903))

(assert (= (and b!4908903 (not res!2096885)) b!4908902))

(assert (= b!4908901 b!4908904))

(assert (= start!514908 b!4908901))

(assert (= start!514908 b!4908911))

(declare-fun m!5918646 () Bool)

(assert (=> b!4908903 m!5918646))

(declare-fun m!5918648 () Bool)

(assert (=> b!4908903 m!5918648))

(declare-fun m!5918650 () Bool)

(assert (=> b!4908909 m!5918650))

(declare-fun m!5918652 () Bool)

(assert (=> b!4908911 m!5918652))

(declare-fun m!5918654 () Bool)

(assert (=> b!4908899 m!5918654))

(declare-fun m!5918656 () Bool)

(assert (=> b!4908899 m!5918656))

(declare-fun m!5918658 () Bool)

(assert (=> b!4908899 m!5918658))

(declare-fun m!5918660 () Bool)

(assert (=> b!4908899 m!5918660))

(declare-fun m!5918662 () Bool)

(assert (=> b!4908899 m!5918662))

(assert (=> b!4908899 m!5918656))

(assert (=> b!4908899 m!5918662))

(declare-fun m!5918664 () Bool)

(assert (=> b!4908899 m!5918664))

(declare-fun m!5918666 () Bool)

(assert (=> b!4908899 m!5918666))

(declare-fun m!5918668 () Bool)

(assert (=> b!4908899 m!5918668))

(declare-fun m!5918670 () Bool)

(assert (=> b!4908907 m!5918670))

(declare-fun m!5918672 () Bool)

(assert (=> b!4908907 m!5918672))

(declare-fun m!5918674 () Bool)

(assert (=> b!4908910 m!5918674))

(declare-fun m!5918676 () Bool)

(assert (=> start!514908 m!5918676))

(declare-fun m!5918678 () Bool)

(assert (=> b!4908905 m!5918678))

(declare-fun m!5918680 () Bool)

(assert (=> b!4908905 m!5918680))

(declare-fun m!5918682 () Bool)

(assert (=> b!4908905 m!5918682))

(declare-fun m!5918684 () Bool)

(assert (=> b!4908905 m!5918684))

(declare-fun m!5918686 () Bool)

(assert (=> b!4908905 m!5918686))

(declare-fun m!5918688 () Bool)

(assert (=> b!4908905 m!5918688))

(declare-fun m!5918690 () Bool)

(assert (=> b!4908905 m!5918690))

(declare-fun m!5918692 () Bool)

(assert (=> b!4908905 m!5918692))

(declare-fun m!5918694 () Bool)

(assert (=> b!4908905 m!5918694))

(declare-fun m!5918696 () Bool)

(assert (=> b!4908902 m!5918696))

(declare-fun m!5918698 () Bool)

(assert (=> b!4908908 m!5918698))

(declare-fun m!5918700 () Bool)

(assert (=> b!4908901 m!5918700))

(declare-fun m!5918702 () Bool)

(assert (=> b!4908901 m!5918702))

(declare-fun m!5918704 () Bool)

(assert (=> b!4908900 m!5918704))

(check-sat (not b_next!132737) (not b!4908910) (not b_next!132739) (not b!4908899) (not b!4908905) (not b!4908909) (not b!4908901) (not b!4908902) (not b!4908911) (not b!4908903) (not b!4908907) (not b!4908900) b_and!346589 (not start!514908) (not b!4908908) b_and!346587)
(check-sat b_and!346589 b_and!346587 (not b_next!132739) (not b_next!132737))
(get-model)

(declare-fun d!1577619 () Bool)

(declare-fun dynLambda!22896 (Int BalanceConc!29054) TokenValue!8554)

(assert (=> d!1577619 (= (apply!13588 (transformation!8244 rule!164) lt!2014549) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549))))

(declare-fun b_lambda!195745 () Bool)

(assert (=> (not b_lambda!195745) (not d!1577619)))

(declare-fun t!366965 () Bool)

(declare-fun tb!260007 () Bool)

(assert (=> (and b!4908904 (= (toValue!11179 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))) t!366965) tb!260007))

(declare-fun result!323842 () Bool)

(declare-fun inv!21 (TokenValue!8554) Bool)

(assert (=> tb!260007 (= result!323842 (inv!21 (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549)))))

(declare-fun m!5918706 () Bool)

(assert (=> tb!260007 m!5918706))

(assert (=> d!1577619 t!366965))

(declare-fun b_and!346591 () Bool)

(assert (= b_and!346587 (and (=> t!366965 result!323842) b_and!346591)))

(declare-fun m!5918708 () Bool)

(assert (=> d!1577619 m!5918708))

(assert (=> b!4908903 d!1577619))

(declare-fun b!4908928 () Bool)

(declare-fun e!3068422 () Bool)

(assert (=> b!4908928 (= e!3068422 true)))

(declare-fun d!1577621 () Bool)

(assert (=> d!1577621 e!3068422))

(assert (= d!1577621 b!4908928))

(declare-fun order!25847 () Int)

(declare-fun lambda!244637 () Int)

(declare-fun dynLambda!22897 (Int Int) Int)

(assert (=> b!4908928 (< (dynLambda!22893 order!25841 (toValue!11179 (transformation!8244 rule!164))) (dynLambda!22897 order!25847 lambda!244637))))

(assert (=> b!4908928 (< (dynLambda!22895 order!25845 (toChars!11038 (transformation!8244 rule!164))) (dynLambda!22897 order!25847 lambda!244637))))

(assert (=> d!1577621 (= (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549))))

(declare-fun lt!2014564 () Unit!146790)

(declare-fun Forall2of!463 (Int BalanceConc!29054 BalanceConc!29054) Unit!146790)

(assert (=> d!1577621 (= lt!2014564 (Forall2of!463 lambda!244637 (_1!33746 lt!2014550) lt!2014549))))

(assert (=> d!1577621 (= (list!17838 (_1!33746 lt!2014550)) (list!17838 lt!2014549))))

(assert (=> d!1577621 (= (lemmaEqSameImage!1126 (transformation!8244 rule!164) (_1!33746 lt!2014550) lt!2014549) lt!2014564)))

(declare-fun b_lambda!195747 () Bool)

(assert (=> (not b_lambda!195747) (not d!1577621)))

(declare-fun t!366967 () Bool)

(declare-fun tb!260009 () Bool)

(assert (=> (and b!4908904 (= (toValue!11179 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))) t!366967) tb!260009))

(declare-fun result!323846 () Bool)

(assert (=> tb!260009 (= result!323846 (inv!21 (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550))))))

(declare-fun m!5918710 () Bool)

(assert (=> tb!260009 m!5918710))

(assert (=> d!1577621 t!366967))

(declare-fun b_and!346593 () Bool)

(assert (= b_and!346591 (and (=> t!366967 result!323846) b_and!346593)))

(declare-fun b_lambda!195749 () Bool)

(assert (=> (not b_lambda!195749) (not d!1577621)))

(assert (=> d!1577621 t!366965))

(declare-fun b_and!346595 () Bool)

(assert (= b_and!346593 (and (=> t!366965 result!323842) b_and!346595)))

(assert (=> d!1577621 m!5918708))

(declare-fun m!5918712 () Bool)

(assert (=> d!1577621 m!5918712))

(assert (=> d!1577621 m!5918704))

(assert (=> d!1577621 m!5918678))

(declare-fun m!5918714 () Bool)

(assert (=> d!1577621 m!5918714))

(assert (=> b!4908903 d!1577621))

(declare-fun d!1577623 () Bool)

(declare-fun isBalanced!4042 (Conc!14812) Bool)

(assert (=> d!1577623 (= (inv!73081 input!1509) (isBalanced!4042 (c!834418 input!1509)))))

(declare-fun bs!1177317 () Bool)

(assert (= bs!1177317 d!1577623))

(declare-fun m!5918716 () Bool)

(assert (=> bs!1177317 m!5918716))

(assert (=> start!514908 d!1577623))

(declare-fun d!1577627 () Bool)

(declare-fun dynLambda!22898 (Int BalanceConc!29054) Bool)

(assert (=> d!1577627 (dynLambda!22898 lambda!244634 lt!2014549)))

(declare-fun lt!2014567 () Unit!146790)

(declare-fun choose!35898 (Int BalanceConc!29054) Unit!146790)

(assert (=> d!1577627 (= lt!2014567 (choose!35898 lambda!244634 lt!2014549))))

(assert (=> d!1577627 (Forall!1741 lambda!244634)))

(assert (=> d!1577627 (= (ForallOf!1181 lambda!244634 lt!2014549) lt!2014567)))

(declare-fun b_lambda!195751 () Bool)

(assert (=> (not b_lambda!195751) (not d!1577627)))

(declare-fun bs!1177318 () Bool)

(assert (= bs!1177318 d!1577627))

(declare-fun m!5918718 () Bool)

(assert (=> bs!1177318 m!5918718))

(declare-fun m!5918720 () Bool)

(assert (=> bs!1177318 m!5918720))

(assert (=> bs!1177318 m!5918650))

(assert (=> b!4908905 d!1577627))

(declare-fun d!1577629 () Bool)

(declare-fun lt!2014570 () Int)

(assert (=> d!1577629 (= lt!2014570 (size!37319 (list!17838 (_1!33746 lt!2014550))))))

(declare-fun size!37320 (Conc!14812) Int)

(assert (=> d!1577629 (= lt!2014570 (size!37320 (c!834418 (_1!33746 lt!2014550))))))

(assert (=> d!1577629 (= (size!37318 (_1!33746 lt!2014550)) lt!2014570)))

(declare-fun bs!1177319 () Bool)

(assert (= bs!1177319 d!1577629))

(assert (=> bs!1177319 m!5918678))

(assert (=> bs!1177319 m!5918678))

(declare-fun m!5918722 () Bool)

(assert (=> bs!1177319 m!5918722))

(declare-fun m!5918724 () Bool)

(assert (=> bs!1177319 m!5918724))

(assert (=> b!4908905 d!1577629))

(declare-fun d!1577631 () Bool)

(assert (=> d!1577631 (dynLambda!22898 lambda!244634 (_1!33746 lt!2014550))))

(declare-fun lt!2014571 () Unit!146790)

(assert (=> d!1577631 (= lt!2014571 (choose!35898 lambda!244634 (_1!33746 lt!2014550)))))

(assert (=> d!1577631 (Forall!1741 lambda!244634)))

(assert (=> d!1577631 (= (ForallOf!1181 lambda!244634 (_1!33746 lt!2014550)) lt!2014571)))

(declare-fun b_lambda!195753 () Bool)

(assert (=> (not b_lambda!195753) (not d!1577631)))

(declare-fun bs!1177320 () Bool)

(assert (= bs!1177320 d!1577631))

(declare-fun m!5918726 () Bool)

(assert (=> bs!1177320 m!5918726))

(declare-fun m!5918728 () Bool)

(assert (=> bs!1177320 m!5918728))

(assert (=> bs!1177320 m!5918650))

(assert (=> b!4908905 d!1577631))

(declare-fun d!1577633 () Bool)

(assert (=> d!1577633 (= (apply!13588 (transformation!8244 rule!164) (_1!33746 lt!2014550)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550)))))

(declare-fun b_lambda!195755 () Bool)

(assert (=> (not b_lambda!195755) (not d!1577633)))

(assert (=> d!1577633 t!366967))

(declare-fun b_and!346597 () Bool)

(assert (= b_and!346595 (and (=> t!366967 result!323846) b_and!346597)))

(assert (=> d!1577633 m!5918712))

(assert (=> b!4908905 d!1577633))

(declare-fun b!4908989 () Bool)

(declare-fun e!3068453 () Option!14125)

(declare-fun lt!2014591 () tuple2!60890)

(assert (=> b!4908989 (= e!3068453 (Some!14124 (tuple2!60885 (Token!15017 (apply!13588 (transformation!8244 rule!164) (seqFromList!5986 (_1!33748 lt!2014591))) rule!164 (size!37318 (seqFromList!5986 (_1!33748 lt!2014591))) (_1!33748 lt!2014591)) (_2!33748 lt!2014591))))))

(declare-fun lt!2014589 () Unit!146790)

(assert (=> b!4908989 (= lt!2014589 (longestMatchIsAcceptedByMatchOrIsEmpty!1770 (regex!8244 rule!164) lt!2014558))))

(declare-fun res!2096935 () Bool)

(assert (=> b!4908989 (= res!2096935 (isEmpty!30468 (_1!33748 (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)))))))

(declare-fun e!3068456 () Bool)

(assert (=> b!4908989 (=> res!2096935 e!3068456)))

(assert (=> b!4908989 e!3068456))

(declare-fun lt!2014588 () Unit!146790)

(assert (=> b!4908989 (= lt!2014588 lt!2014589)))

(declare-fun lt!2014590 () Unit!146790)

(declare-fun lemmaSemiInverse!2586 (TokenValueInjection!16416 BalanceConc!29054) Unit!146790)

(assert (=> b!4908989 (= lt!2014590 (lemmaSemiInverse!2586 (transformation!8244 rule!164) (seqFromList!5986 (_1!33748 lt!2014591))))))

(declare-fun b!4908990 () Bool)

(declare-fun e!3068455 () Bool)

(declare-fun lt!2014592 () Option!14125)

(assert (=> b!4908990 (= e!3068455 (= (size!37317 (_1!33745 (get!19572 lt!2014592))) (size!37319 (originalCharacters!8539 (_1!33745 (get!19572 lt!2014592))))))))

(declare-fun b!4908991 () Bool)

(assert (=> b!4908991 (= e!3068453 None!14124)))

(declare-fun b!4908992 () Bool)

(assert (=> b!4908992 (= e!3068456 (matchR!6586 (regex!8244 rule!164) (_1!33748 (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)))))))

(declare-fun d!1577635 () Bool)

(declare-fun e!3068454 () Bool)

(assert (=> d!1577635 e!3068454))

(declare-fun res!2096934 () Bool)

(assert (=> d!1577635 (=> res!2096934 e!3068454)))

(declare-fun isEmpty!30469 (Option!14125) Bool)

(assert (=> d!1577635 (= res!2096934 (isEmpty!30469 lt!2014592))))

(assert (=> d!1577635 (= lt!2014592 e!3068453)))

(declare-fun c!834430 () Bool)

(assert (=> d!1577635 (= c!834430 (isEmpty!30468 (_1!33748 lt!2014591)))))

(declare-fun findLongestMatch!1674 (Regex!13319 List!56687) tuple2!60890)

(assert (=> d!1577635 (= lt!2014591 (findLongestMatch!1674 (regex!8244 rule!164) lt!2014558))))

(assert (=> d!1577635 (ruleValid!3741 thiss!15943 rule!164)))

(assert (=> d!1577635 (= (maxPrefixOneRule!3581 thiss!15943 rule!164 lt!2014558) lt!2014592)))

(declare-fun b!4908993 () Bool)

(declare-fun res!2096933 () Bool)

(assert (=> b!4908993 (=> (not res!2096933) (not e!3068455))))

(assert (=> b!4908993 (= res!2096933 (= (value!264086 (_1!33745 (get!19572 lt!2014592))) (apply!13588 (transformation!8244 (rule!11454 (_1!33745 (get!19572 lt!2014592)))) (seqFromList!5986 (originalCharacters!8539 (_1!33745 (get!19572 lt!2014592)))))))))

(declare-fun b!4908994 () Bool)

(assert (=> b!4908994 (= e!3068454 e!3068455)))

(declare-fun res!2096932 () Bool)

(assert (=> b!4908994 (=> (not res!2096932) (not e!3068455))))

(declare-fun charsOf!5398 (Token!15016) BalanceConc!29054)

(assert (=> b!4908994 (= res!2096932 (matchR!6586 (regex!8244 rule!164) (list!17838 (charsOf!5398 (_1!33745 (get!19572 lt!2014592))))))))

(declare-fun b!4908995 () Bool)

(declare-fun res!2096931 () Bool)

(assert (=> b!4908995 (=> (not res!2096931) (not e!3068455))))

(declare-fun ++!12272 (List!56687 List!56687) List!56687)

(assert (=> b!4908995 (= res!2096931 (= (++!12272 (list!17838 (charsOf!5398 (_1!33745 (get!19572 lt!2014592)))) (_2!33745 (get!19572 lt!2014592))) lt!2014558))))

(declare-fun b!4908996 () Bool)

(declare-fun res!2096936 () Bool)

(assert (=> b!4908996 (=> (not res!2096936) (not e!3068455))))

(assert (=> b!4908996 (= res!2096936 (< (size!37319 (_2!33745 (get!19572 lt!2014592))) (size!37319 lt!2014558)))))

(declare-fun b!4908997 () Bool)

(declare-fun res!2096937 () Bool)

(assert (=> b!4908997 (=> (not res!2096937) (not e!3068455))))

(assert (=> b!4908997 (= res!2096937 (= (rule!11454 (_1!33745 (get!19572 lt!2014592))) rule!164))))

(assert (= (and d!1577635 c!834430) b!4908991))

(assert (= (and d!1577635 (not c!834430)) b!4908989))

(assert (= (and b!4908989 (not res!2096935)) b!4908992))

(assert (= (and d!1577635 (not res!2096934)) b!4908994))

(assert (= (and b!4908994 res!2096932) b!4908995))

(assert (= (and b!4908995 res!2096931) b!4908996))

(assert (= (and b!4908996 res!2096936) b!4908997))

(assert (= (and b!4908997 res!2096937) b!4908993))

(assert (= (and b!4908993 res!2096933) b!4908990))

(declare-fun m!5918754 () Bool)

(assert (=> b!4908990 m!5918754))

(declare-fun m!5918756 () Bool)

(assert (=> b!4908990 m!5918756))

(assert (=> b!4908995 m!5918754))

(declare-fun m!5918758 () Bool)

(assert (=> b!4908995 m!5918758))

(assert (=> b!4908995 m!5918758))

(declare-fun m!5918760 () Bool)

(assert (=> b!4908995 m!5918760))

(assert (=> b!4908995 m!5918760))

(declare-fun m!5918762 () Bool)

(assert (=> b!4908995 m!5918762))

(assert (=> b!4908997 m!5918754))

(assert (=> b!4908993 m!5918754))

(declare-fun m!5918764 () Bool)

(assert (=> b!4908993 m!5918764))

(assert (=> b!4908993 m!5918764))

(declare-fun m!5918766 () Bool)

(assert (=> b!4908993 m!5918766))

(declare-fun m!5918768 () Bool)

(assert (=> d!1577635 m!5918768))

(declare-fun m!5918770 () Bool)

(assert (=> d!1577635 m!5918770))

(declare-fun m!5918772 () Bool)

(assert (=> d!1577635 m!5918772))

(assert (=> d!1577635 m!5918698))

(assert (=> b!4908992 m!5918656))

(assert (=> b!4908992 m!5918662))

(assert (=> b!4908992 m!5918656))

(assert (=> b!4908992 m!5918662))

(assert (=> b!4908992 m!5918664))

(declare-fun m!5918774 () Bool)

(assert (=> b!4908992 m!5918774))

(assert (=> b!4908989 m!5918656))

(declare-fun m!5918776 () Bool)

(assert (=> b!4908989 m!5918776))

(assert (=> b!4908989 m!5918656))

(assert (=> b!4908989 m!5918662))

(assert (=> b!4908989 m!5918664))

(assert (=> b!4908989 m!5918662))

(assert (=> b!4908989 m!5918776))

(declare-fun m!5918778 () Bool)

(assert (=> b!4908989 m!5918778))

(assert (=> b!4908989 m!5918776))

(declare-fun m!5918780 () Bool)

(assert (=> b!4908989 m!5918780))

(assert (=> b!4908989 m!5918658))

(assert (=> b!4908989 m!5918776))

(declare-fun m!5918782 () Bool)

(assert (=> b!4908989 m!5918782))

(declare-fun m!5918784 () Bool)

(assert (=> b!4908989 m!5918784))

(assert (=> b!4908996 m!5918754))

(declare-fun m!5918786 () Bool)

(assert (=> b!4908996 m!5918786))

(assert (=> b!4908996 m!5918662))

(assert (=> b!4908994 m!5918754))

(assert (=> b!4908994 m!5918758))

(assert (=> b!4908994 m!5918758))

(assert (=> b!4908994 m!5918760))

(assert (=> b!4908994 m!5918760))

(declare-fun m!5918788 () Bool)

(assert (=> b!4908994 m!5918788))

(assert (=> b!4908905 d!1577635))

(declare-fun d!1577647 () Bool)

(assert (=> d!1577647 (= (isDefined!11134 lt!2014561) (not (isEmpty!30469 lt!2014561)))))

(declare-fun bs!1177325 () Bool)

(assert (= bs!1177325 d!1577647))

(declare-fun m!5918790 () Bool)

(assert (=> bs!1177325 m!5918790))

(assert (=> b!4908905 d!1577647))

(declare-fun d!1577649 () Bool)

(declare-fun isEmpty!30472 (Option!14126) Bool)

(assert (=> d!1577649 (= (isDefined!11135 (Some!14125 (tuple2!60889 (Token!15017 lt!2014551 rule!164 lt!2014553 lt!2014559) (_2!33746 lt!2014550)))) (not (isEmpty!30472 (Some!14125 (tuple2!60889 (Token!15017 lt!2014551 rule!164 lt!2014553 lt!2014559) (_2!33746 lt!2014550))))))))

(declare-fun bs!1177326 () Bool)

(assert (= bs!1177326 d!1577649))

(declare-fun m!5918792 () Bool)

(assert (=> bs!1177326 m!5918792))

(assert (=> b!4908905 d!1577649))

(declare-fun d!1577651 () Bool)

(declare-fun fromListB!2714 (List!56687) BalanceConc!29054)

(assert (=> d!1577651 (= (seqFromList!5986 lt!2014559) (fromListB!2714 lt!2014559))))

(declare-fun bs!1177327 () Bool)

(assert (= bs!1177327 d!1577651))

(declare-fun m!5918794 () Bool)

(assert (=> bs!1177327 m!5918794))

(assert (=> b!4908905 d!1577651))

(declare-fun d!1577653 () Bool)

(declare-fun list!17839 (Conc!14812) List!56687)

(assert (=> d!1577653 (= (list!17838 (_1!33746 lt!2014550)) (list!17839 (c!834418 (_1!33746 lt!2014550))))))

(declare-fun bs!1177328 () Bool)

(assert (= bs!1177328 d!1577653))

(declare-fun m!5918796 () Bool)

(assert (=> bs!1177328 m!5918796))

(assert (=> b!4908905 d!1577653))

(declare-fun d!1577655 () Bool)

(declare-fun lt!2014605 () Bool)

(assert (=> d!1577655 (= lt!2014605 (isEmpty!30468 (list!17838 (_1!33746 lt!2014550))))))

(declare-fun isEmpty!30473 (Conc!14812) Bool)

(assert (=> d!1577655 (= lt!2014605 (isEmpty!30473 (c!834418 (_1!33746 lt!2014550))))))

(assert (=> d!1577655 (= (isEmpty!30467 (_1!33746 lt!2014550)) lt!2014605)))

(declare-fun bs!1177329 () Bool)

(assert (= bs!1177329 d!1577655))

(assert (=> bs!1177329 m!5918678))

(assert (=> bs!1177329 m!5918678))

(declare-fun m!5918798 () Bool)

(assert (=> bs!1177329 m!5918798))

(declare-fun m!5918800 () Bool)

(assert (=> bs!1177329 m!5918800))

(assert (=> b!4908907 d!1577655))

(declare-fun d!1577657 () Bool)

(declare-fun lt!2014613 () tuple2!60886)

(assert (=> d!1577657 (= (tuple2!60891 (list!17838 (_1!33746 lt!2014613)) (list!17838 (_2!33746 lt!2014613))) (findLongestMatch!1674 (regex!8244 rule!164) (list!17838 input!1509)))))

(declare-fun choose!35900 (Regex!13319 BalanceConc!29054) tuple2!60886)

(assert (=> d!1577657 (= lt!2014613 (choose!35900 (regex!8244 rule!164) input!1509))))

(declare-fun validRegex!5912 (Regex!13319) Bool)

(assert (=> d!1577657 (validRegex!5912 (regex!8244 rule!164))))

(assert (=> d!1577657 (= (findLongestMatchWithZipperSequence!332 (regex!8244 rule!164) input!1509) lt!2014613)))

(declare-fun bs!1177330 () Bool)

(assert (= bs!1177330 d!1577657))

(declare-fun m!5918838 () Bool)

(assert (=> bs!1177330 m!5918838))

(declare-fun m!5918840 () Bool)

(assert (=> bs!1177330 m!5918840))

(declare-fun m!5918842 () Bool)

(assert (=> bs!1177330 m!5918842))

(assert (=> bs!1177330 m!5918666))

(declare-fun m!5918844 () Bool)

(assert (=> bs!1177330 m!5918844))

(assert (=> bs!1177330 m!5918666))

(declare-fun m!5918846 () Bool)

(assert (=> bs!1177330 m!5918846))

(assert (=> b!4908907 d!1577657))

(declare-fun d!1577661 () Bool)

(declare-fun choose!35901 (Int) Bool)

(assert (=> d!1577661 (= (Forall!1741 lambda!244634) (choose!35901 lambda!244634))))

(declare-fun bs!1177331 () Bool)

(assert (= bs!1177331 d!1577661))

(declare-fun m!5918848 () Bool)

(assert (=> bs!1177331 m!5918848))

(assert (=> b!4908909 d!1577661))

(declare-fun d!1577663 () Bool)

(declare-fun res!2096963 () Bool)

(declare-fun e!3068471 () Bool)

(assert (=> d!1577663 (=> (not res!2096963) (not e!3068471))))

(assert (=> d!1577663 (= res!2096963 (validRegex!5912 (regex!8244 rule!164)))))

(assert (=> d!1577663 (= (ruleValid!3741 thiss!15943 rule!164) e!3068471)))

(declare-fun b!4909031 () Bool)

(declare-fun res!2096964 () Bool)

(assert (=> b!4909031 (=> (not res!2096964) (not e!3068471))))

(declare-fun nullable!4585 (Regex!13319) Bool)

(assert (=> b!4909031 (= res!2096964 (not (nullable!4585 (regex!8244 rule!164))))))

(declare-fun b!4909032 () Bool)

(assert (=> b!4909032 (= e!3068471 (not (= (tag!9108 rule!164) (String!64212 ""))))))

(assert (= (and d!1577663 res!2096963) b!4909031))

(assert (= (and b!4909031 res!2096964) b!4909032))

(assert (=> d!1577663 m!5918840))

(declare-fun m!5918854 () Bool)

(assert (=> b!4909031 m!5918854))

(assert (=> b!4908908 d!1577663))

(declare-fun b!4909070 () Bool)

(declare-fun e!3068497 () Bool)

(declare-fun head!10486 (List!56687) C!26836)

(assert (=> b!4909070 (= e!3068497 (not (= (head!10486 (_1!33748 lt!2014557)) (c!834417 (regex!8244 rule!164)))))))

(declare-fun d!1577667 () Bool)

(declare-fun e!3068499 () Bool)

(assert (=> d!1577667 e!3068499))

(declare-fun c!834441 () Bool)

(assert (=> d!1577667 (= c!834441 ((_ is EmptyExpr!13319) (regex!8244 rule!164)))))

(declare-fun lt!2014622 () Bool)

(declare-fun e!3068502 () Bool)

(assert (=> d!1577667 (= lt!2014622 e!3068502)))

(declare-fun c!834440 () Bool)

(assert (=> d!1577667 (= c!834440 (isEmpty!30468 (_1!33748 lt!2014557)))))

(assert (=> d!1577667 (validRegex!5912 (regex!8244 rule!164))))

(assert (=> d!1577667 (= (matchR!6586 (regex!8244 rule!164) (_1!33748 lt!2014557)) lt!2014622)))

(declare-fun b!4909071 () Bool)

(declare-fun e!3068500 () Bool)

(assert (=> b!4909071 (= e!3068500 (not lt!2014622))))

(declare-fun b!4909072 () Bool)

(assert (=> b!4909072 (= e!3068502 (nullable!4585 (regex!8244 rule!164)))))

(declare-fun b!4909073 () Bool)

(declare-fun res!2096990 () Bool)

(declare-fun e!3068496 () Bool)

(assert (=> b!4909073 (=> res!2096990 e!3068496)))

(declare-fun e!3068501 () Bool)

(assert (=> b!4909073 (= res!2096990 e!3068501)))

(declare-fun res!2096992 () Bool)

(assert (=> b!4909073 (=> (not res!2096992) (not e!3068501))))

(assert (=> b!4909073 (= res!2096992 lt!2014622)))

(declare-fun b!4909074 () Bool)

(assert (=> b!4909074 (= e!3068501 (= (head!10486 (_1!33748 lt!2014557)) (c!834417 (regex!8244 rule!164))))))

(declare-fun b!4909075 () Bool)

(declare-fun res!2096995 () Bool)

(assert (=> b!4909075 (=> res!2096995 e!3068496)))

(assert (=> b!4909075 (= res!2096995 (not ((_ is ElementMatch!13319) (regex!8244 rule!164))))))

(assert (=> b!4909075 (= e!3068500 e!3068496)))

(declare-fun b!4909076 () Bool)

(declare-fun res!2096997 () Bool)

(assert (=> b!4909076 (=> (not res!2096997) (not e!3068501))))

(declare-fun call!340784 () Bool)

(assert (=> b!4909076 (= res!2096997 (not call!340784))))

(declare-fun b!4909077 () Bool)

(declare-fun derivativeStep!3905 (Regex!13319 C!26836) Regex!13319)

(declare-fun tail!9633 (List!56687) List!56687)

(assert (=> b!4909077 (= e!3068502 (matchR!6586 (derivativeStep!3905 (regex!8244 rule!164) (head!10486 (_1!33748 lt!2014557))) (tail!9633 (_1!33748 lt!2014557))))))

(declare-fun b!4909078 () Bool)

(assert (=> b!4909078 (= e!3068499 (= lt!2014622 call!340784))))

(declare-fun b!4909079 () Bool)

(declare-fun res!2096991 () Bool)

(assert (=> b!4909079 (=> res!2096991 e!3068497)))

(assert (=> b!4909079 (= res!2096991 (not (isEmpty!30468 (tail!9633 (_1!33748 lt!2014557)))))))

(declare-fun b!4909080 () Bool)

(declare-fun e!3068498 () Bool)

(assert (=> b!4909080 (= e!3068496 e!3068498)))

(declare-fun res!2096996 () Bool)

(assert (=> b!4909080 (=> (not res!2096996) (not e!3068498))))

(assert (=> b!4909080 (= res!2096996 (not lt!2014622))))

(declare-fun b!4909081 () Bool)

(assert (=> b!4909081 (= e!3068499 e!3068500)))

(declare-fun c!834442 () Bool)

(assert (=> b!4909081 (= c!834442 ((_ is EmptyLang!13319) (regex!8244 rule!164)))))

(declare-fun bm!340779 () Bool)

(assert (=> bm!340779 (= call!340784 (isEmpty!30468 (_1!33748 lt!2014557)))))

(declare-fun b!4909082 () Bool)

(declare-fun res!2096993 () Bool)

(assert (=> b!4909082 (=> (not res!2096993) (not e!3068501))))

(assert (=> b!4909082 (= res!2096993 (isEmpty!30468 (tail!9633 (_1!33748 lt!2014557))))))

(declare-fun b!4909083 () Bool)

(assert (=> b!4909083 (= e!3068498 e!3068497)))

(declare-fun res!2096994 () Bool)

(assert (=> b!4909083 (=> res!2096994 e!3068497)))

(assert (=> b!4909083 (= res!2096994 call!340784)))

(assert (= (and d!1577667 c!834440) b!4909072))

(assert (= (and d!1577667 (not c!834440)) b!4909077))

(assert (= (and d!1577667 c!834441) b!4909078))

(assert (= (and d!1577667 (not c!834441)) b!4909081))

(assert (= (and b!4909081 c!834442) b!4909071))

(assert (= (and b!4909081 (not c!834442)) b!4909075))

(assert (= (and b!4909075 (not res!2096995)) b!4909073))

(assert (= (and b!4909073 res!2096992) b!4909076))

(assert (= (and b!4909076 res!2096997) b!4909082))

(assert (= (and b!4909082 res!2096993) b!4909074))

(assert (= (and b!4909073 (not res!2096990)) b!4909080))

(assert (= (and b!4909080 res!2096996) b!4909083))

(assert (= (and b!4909083 (not res!2096994)) b!4909079))

(assert (= (and b!4909079 (not res!2096991)) b!4909070))

(assert (= (or b!4909078 b!4909076 b!4909083) bm!340779))

(assert (=> bm!340779 m!5918660))

(declare-fun m!5918874 () Bool)

(assert (=> b!4909070 m!5918874))

(assert (=> b!4909074 m!5918874))

(assert (=> b!4909077 m!5918874))

(assert (=> b!4909077 m!5918874))

(declare-fun m!5918876 () Bool)

(assert (=> b!4909077 m!5918876))

(declare-fun m!5918878 () Bool)

(assert (=> b!4909077 m!5918878))

(assert (=> b!4909077 m!5918876))

(assert (=> b!4909077 m!5918878))

(declare-fun m!5918880 () Bool)

(assert (=> b!4909077 m!5918880))

(assert (=> d!1577667 m!5918660))

(assert (=> d!1577667 m!5918840))

(assert (=> b!4909072 m!5918854))

(assert (=> b!4909079 m!5918878))

(assert (=> b!4909079 m!5918878))

(declare-fun m!5918882 () Bool)

(assert (=> b!4909079 m!5918882))

(assert (=> b!4909082 m!5918878))

(assert (=> b!4909082 m!5918878))

(assert (=> b!4909082 m!5918882))

(assert (=> b!4908910 d!1577667))

(declare-fun d!1577685 () Bool)

(assert (=> d!1577685 (= (list!17838 input!1509) (list!17839 (c!834418 input!1509)))))

(declare-fun bs!1177336 () Bool)

(assert (= bs!1177336 d!1577685))

(declare-fun m!5918884 () Bool)

(assert (=> bs!1177336 m!5918884))

(assert (=> b!4908899 d!1577685))

(declare-fun bm!340796 () Bool)

(declare-fun call!340803 () Regex!13319)

(declare-fun call!340806 () C!26836)

(assert (=> bm!340796 (= call!340803 (derivativeStep!3905 (regex!8244 rule!164) call!340806))))

(declare-fun b!4909131 () Bool)

(declare-fun e!3068534 () Bool)

(declare-fun lt!2014711 () tuple2!60890)

(assert (=> b!4909131 (= e!3068534 (>= (size!37319 (_1!33748 lt!2014711)) (size!37319 Nil!56563)))))

(declare-fun b!4909132 () Bool)

(declare-fun e!3068535 () Unit!146790)

(declare-fun Unit!146792 () Unit!146790)

(assert (=> b!4909132 (= e!3068535 Unit!146792)))

(declare-fun lt!2014696 () Unit!146790)

(declare-fun call!340805 () Unit!146790)

(assert (=> b!4909132 (= lt!2014696 call!340805)))

(declare-fun call!340804 () Bool)

(assert (=> b!4909132 call!340804))

(declare-fun lt!2014714 () Unit!146790)

(assert (=> b!4909132 (= lt!2014714 lt!2014696)))

(declare-fun lt!2014700 () Unit!146790)

(declare-fun call!340807 () Unit!146790)

(assert (=> b!4909132 (= lt!2014700 call!340807)))

(assert (=> b!4909132 (= lt!2014558 Nil!56563)))

(declare-fun lt!2014699 () Unit!146790)

(assert (=> b!4909132 (= lt!2014699 lt!2014700)))

(assert (=> b!4909132 false))

(declare-fun b!4909133 () Bool)

(declare-fun e!3068533 () Bool)

(assert (=> b!4909133 (= e!3068533 e!3068534)))

(declare-fun res!2097011 () Bool)

(assert (=> b!4909133 (=> res!2097011 e!3068534)))

(assert (=> b!4909133 (= res!2097011 (isEmpty!30468 (_1!33748 lt!2014711)))))

(declare-fun b!4909135 () Bool)

(declare-fun e!3068537 () tuple2!60890)

(assert (=> b!4909135 (= e!3068537 (tuple2!60891 Nil!56563 Nil!56563))))

(declare-fun b!4909136 () Bool)

(declare-fun e!3068538 () tuple2!60890)

(assert (=> b!4909136 (= e!3068538 (tuple2!60891 Nil!56563 lt!2014558))))

(declare-fun b!4909137 () Bool)

(declare-fun lt!2014701 () tuple2!60890)

(assert (=> b!4909137 (= e!3068538 lt!2014701)))

(declare-fun bm!340797 () Bool)

(assert (=> bm!340797 (= call!340806 (head!10486 lt!2014558))))

(declare-fun bm!340798 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1084 (List!56687 List!56687 List!56687) Unit!146790)

(assert (=> bm!340798 (= call!340807 (lemmaIsPrefixSameLengthThenSameList!1084 lt!2014558 Nil!56563 lt!2014558))))

(declare-fun bm!340799 () Bool)

(declare-fun call!340802 () Bool)

(assert (=> bm!340799 (= call!340802 (nullable!4585 (regex!8244 rule!164)))))

(declare-fun b!4909138 () Bool)

(declare-fun e!3068536 () tuple2!60890)

(declare-fun e!3068540 () tuple2!60890)

(assert (=> b!4909138 (= e!3068536 e!3068540)))

(declare-fun c!834463 () Bool)

(assert (=> b!4909138 (= c!834463 (= (size!37319 Nil!56563) (size!37319 lt!2014558)))))

(declare-fun b!4909139 () Bool)

(assert (=> b!4909139 (= e!3068536 (tuple2!60891 Nil!56563 lt!2014558))))

(declare-fun bm!340800 () Bool)

(declare-fun call!340808 () List!56687)

(assert (=> bm!340800 (= call!340808 (tail!9633 lt!2014558))))

(declare-fun call!340801 () tuple2!60890)

(declare-fun bm!340801 () Bool)

(declare-fun lt!2014690 () List!56687)

(assert (=> bm!340801 (= call!340801 (findLongestMatchInner!1807 call!340803 lt!2014690 (+ (size!37319 Nil!56563) 1) call!340808 lt!2014558 (size!37319 lt!2014558)))))

(declare-fun bm!340802 () Bool)

(declare-fun lemmaIsPrefixRefl!3322 (List!56687 List!56687) Unit!146790)

(assert (=> bm!340802 (= call!340805 (lemmaIsPrefixRefl!3322 lt!2014558 lt!2014558))))

(declare-fun b!4909134 () Bool)

(declare-fun c!834458 () Bool)

(assert (=> b!4909134 (= c!834458 call!340802)))

(declare-fun lt!2014706 () Unit!146790)

(declare-fun lt!2014691 () Unit!146790)

(assert (=> b!4909134 (= lt!2014706 lt!2014691)))

(declare-fun lt!2014713 () C!26836)

(declare-fun lt!2014697 () List!56687)

(assert (=> b!4909134 (= (++!12272 (++!12272 Nil!56563 (Cons!56563 lt!2014713 Nil!56563)) lt!2014697) lt!2014558)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1356 (List!56687 C!26836 List!56687 List!56687) Unit!146790)

(assert (=> b!4909134 (= lt!2014691 (lemmaMoveElementToOtherListKeepsConcatEq!1356 Nil!56563 lt!2014713 lt!2014697 lt!2014558))))

(assert (=> b!4909134 (= lt!2014697 (tail!9633 lt!2014558))))

(assert (=> b!4909134 (= lt!2014713 (head!10486 lt!2014558))))

(declare-fun lt!2014712 () Unit!146790)

(declare-fun lt!2014710 () Unit!146790)

(assert (=> b!4909134 (= lt!2014712 lt!2014710)))

(declare-fun isPrefix!4925 (List!56687 List!56687) Bool)

(declare-fun getSuffix!2913 (List!56687 List!56687) List!56687)

(assert (=> b!4909134 (isPrefix!4925 (++!12272 Nil!56563 (Cons!56563 (head!10486 (getSuffix!2913 lt!2014558 Nil!56563)) Nil!56563)) lt!2014558)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!738 (List!56687 List!56687) Unit!146790)

(assert (=> b!4909134 (= lt!2014710 (lemmaAddHeadSuffixToPrefixStillPrefix!738 Nil!56563 lt!2014558))))

(declare-fun lt!2014708 () Unit!146790)

(declare-fun lt!2014698 () Unit!146790)

(assert (=> b!4909134 (= lt!2014708 lt!2014698)))

(assert (=> b!4909134 (= lt!2014698 (lemmaAddHeadSuffixToPrefixStillPrefix!738 Nil!56563 lt!2014558))))

(assert (=> b!4909134 (= lt!2014690 (++!12272 Nil!56563 (Cons!56563 (head!10486 lt!2014558) Nil!56563)))))

(declare-fun lt!2014704 () Unit!146790)

(assert (=> b!4909134 (= lt!2014704 e!3068535)))

(declare-fun c!834461 () Bool)

(assert (=> b!4909134 (= c!834461 (= (size!37319 Nil!56563) (size!37319 lt!2014558)))))

(declare-fun lt!2014702 () Unit!146790)

(declare-fun lt!2014716 () Unit!146790)

(assert (=> b!4909134 (= lt!2014702 lt!2014716)))

(assert (=> b!4909134 (<= (size!37319 Nil!56563) (size!37319 lt!2014558))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!650 (List!56687 List!56687) Unit!146790)

(assert (=> b!4909134 (= lt!2014716 (lemmaIsPrefixThenSmallerEqSize!650 Nil!56563 lt!2014558))))

(declare-fun e!3068539 () tuple2!60890)

(assert (=> b!4909134 (= e!3068540 e!3068539)))

(declare-fun d!1577687 () Bool)

(assert (=> d!1577687 e!3068533))

(declare-fun res!2097010 () Bool)

(assert (=> d!1577687 (=> (not res!2097010) (not e!3068533))))

(assert (=> d!1577687 (= res!2097010 (= (++!12272 (_1!33748 lt!2014711) (_2!33748 lt!2014711)) lt!2014558))))

(assert (=> d!1577687 (= lt!2014711 e!3068536)))

(declare-fun c!834462 () Bool)

(declare-fun lostCause!1112 (Regex!13319) Bool)

(assert (=> d!1577687 (= c!834462 (lostCause!1112 (regex!8244 rule!164)))))

(declare-fun lt!2014707 () Unit!146790)

(declare-fun Unit!146793 () Unit!146790)

(assert (=> d!1577687 (= lt!2014707 Unit!146793)))

(assert (=> d!1577687 (= (getSuffix!2913 lt!2014558 Nil!56563) lt!2014558)))

(declare-fun lt!2014715 () Unit!146790)

(declare-fun lt!2014709 () Unit!146790)

(assert (=> d!1577687 (= lt!2014715 lt!2014709)))

(declare-fun lt!2014705 () List!56687)

(assert (=> d!1577687 (= lt!2014558 lt!2014705)))

(declare-fun lemmaSamePrefixThenSameSuffix!2329 (List!56687 List!56687 List!56687 List!56687 List!56687) Unit!146790)

(assert (=> d!1577687 (= lt!2014709 (lemmaSamePrefixThenSameSuffix!2329 Nil!56563 lt!2014558 Nil!56563 lt!2014705 lt!2014558))))

(assert (=> d!1577687 (= lt!2014705 (getSuffix!2913 lt!2014558 Nil!56563))))

(declare-fun lt!2014694 () Unit!146790)

(declare-fun lt!2014703 () Unit!146790)

(assert (=> d!1577687 (= lt!2014694 lt!2014703)))

(assert (=> d!1577687 (isPrefix!4925 Nil!56563 (++!12272 Nil!56563 lt!2014558))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3149 (List!56687 List!56687) Unit!146790)

(assert (=> d!1577687 (= lt!2014703 (lemmaConcatTwoListThenFirstIsPrefix!3149 Nil!56563 lt!2014558))))

(assert (=> d!1577687 (validRegex!5912 (regex!8244 rule!164))))

(assert (=> d!1577687 (= (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)) lt!2014711)))

(declare-fun b!4909140 () Bool)

(assert (=> b!4909140 (= e!3068537 (tuple2!60891 Nil!56563 lt!2014558))))

(declare-fun b!4909141 () Bool)

(assert (=> b!4909141 (= e!3068539 e!3068538)))

(assert (=> b!4909141 (= lt!2014701 call!340801)))

(declare-fun c!834459 () Bool)

(assert (=> b!4909141 (= c!834459 (isEmpty!30468 (_1!33748 lt!2014701)))))

(declare-fun b!4909142 () Bool)

(declare-fun c!834460 () Bool)

(assert (=> b!4909142 (= c!834460 call!340802)))

(declare-fun lt!2014692 () Unit!146790)

(declare-fun lt!2014695 () Unit!146790)

(assert (=> b!4909142 (= lt!2014692 lt!2014695)))

(assert (=> b!4909142 (= lt!2014558 Nil!56563)))

(assert (=> b!4909142 (= lt!2014695 call!340807)))

(declare-fun lt!2014689 () Unit!146790)

(declare-fun lt!2014693 () Unit!146790)

(assert (=> b!4909142 (= lt!2014689 lt!2014693)))

(assert (=> b!4909142 call!340804))

(assert (=> b!4909142 (= lt!2014693 call!340805)))

(assert (=> b!4909142 (= e!3068540 e!3068537)))

(declare-fun b!4909143 () Bool)

(declare-fun Unit!146794 () Unit!146790)

(assert (=> b!4909143 (= e!3068535 Unit!146794)))

(declare-fun bm!340803 () Bool)

(assert (=> bm!340803 (= call!340804 (isPrefix!4925 lt!2014558 lt!2014558))))

(declare-fun b!4909144 () Bool)

(assert (=> b!4909144 (= e!3068539 call!340801)))

(assert (= (and d!1577687 c!834462) b!4909139))

(assert (= (and d!1577687 (not c!834462)) b!4909138))

(assert (= (and b!4909138 c!834463) b!4909142))

(assert (= (and b!4909138 (not c!834463)) b!4909134))

(assert (= (and b!4909142 c!834460) b!4909135))

(assert (= (and b!4909142 (not c!834460)) b!4909140))

(assert (= (and b!4909134 c!834461) b!4909132))

(assert (= (and b!4909134 (not c!834461)) b!4909143))

(assert (= (and b!4909134 c!834458) b!4909141))

(assert (= (and b!4909134 (not c!834458)) b!4909144))

(assert (= (and b!4909141 c!834459) b!4909136))

(assert (= (and b!4909141 (not c!834459)) b!4909137))

(assert (= (or b!4909141 b!4909144) bm!340797))

(assert (= (or b!4909141 b!4909144) bm!340800))

(assert (= (or b!4909141 b!4909144) bm!340796))

(assert (= (or b!4909141 b!4909144) bm!340801))

(assert (= (or b!4909142 b!4909132) bm!340803))

(assert (= (or b!4909142 b!4909132) bm!340802))

(assert (= (or b!4909142 b!4909132) bm!340798))

(assert (= (or b!4909142 b!4909134) bm!340799))

(assert (= (and d!1577687 res!2097010) b!4909133))

(assert (= (and b!4909133 (not res!2097011)) b!4909131))

(assert (=> bm!340801 m!5918662))

(declare-fun m!5918912 () Bool)

(assert (=> bm!340801 m!5918912))

(declare-fun m!5918914 () Bool)

(assert (=> b!4909141 m!5918914))

(declare-fun m!5918916 () Bool)

(assert (=> b!4909134 m!5918916))

(declare-fun m!5918918 () Bool)

(assert (=> b!4909134 m!5918918))

(declare-fun m!5918920 () Bool)

(assert (=> b!4909134 m!5918920))

(declare-fun m!5918922 () Bool)

(assert (=> b!4909134 m!5918922))

(assert (=> b!4909134 m!5918656))

(declare-fun m!5918924 () Bool)

(assert (=> b!4909134 m!5918924))

(declare-fun m!5918926 () Bool)

(assert (=> b!4909134 m!5918926))

(declare-fun m!5918928 () Bool)

(assert (=> b!4909134 m!5918928))

(declare-fun m!5918930 () Bool)

(assert (=> b!4909134 m!5918930))

(declare-fun m!5918932 () Bool)

(assert (=> b!4909134 m!5918932))

(assert (=> b!4909134 m!5918928))

(declare-fun m!5918934 () Bool)

(assert (=> b!4909134 m!5918934))

(assert (=> b!4909134 m!5918930))

(assert (=> b!4909134 m!5918924))

(declare-fun m!5918936 () Bool)

(assert (=> b!4909134 m!5918936))

(assert (=> b!4909134 m!5918662))

(declare-fun m!5918938 () Bool)

(assert (=> b!4909134 m!5918938))

(assert (=> bm!340799 m!5918854))

(declare-fun m!5918940 () Bool)

(assert (=> b!4909131 m!5918940))

(assert (=> b!4909131 m!5918656))

(declare-fun m!5918942 () Bool)

(assert (=> bm!340802 m!5918942))

(assert (=> bm!340797 m!5918916))

(assert (=> d!1577687 m!5918928))

(declare-fun m!5918944 () Bool)

(assert (=> d!1577687 m!5918944))

(declare-fun m!5918946 () Bool)

(assert (=> d!1577687 m!5918946))

(declare-fun m!5918948 () Bool)

(assert (=> d!1577687 m!5918948))

(declare-fun m!5918950 () Bool)

(assert (=> d!1577687 m!5918950))

(assert (=> d!1577687 m!5918840))

(assert (=> d!1577687 m!5918950))

(declare-fun m!5918952 () Bool)

(assert (=> d!1577687 m!5918952))

(declare-fun m!5918954 () Bool)

(assert (=> d!1577687 m!5918954))

(assert (=> bm!340800 m!5918918))

(declare-fun m!5918956 () Bool)

(assert (=> bm!340803 m!5918956))

(declare-fun m!5918958 () Bool)

(assert (=> bm!340796 m!5918958))

(declare-fun m!5918960 () Bool)

(assert (=> bm!340798 m!5918960))

(declare-fun m!5918962 () Bool)

(assert (=> b!4909133 m!5918962))

(assert (=> b!4908899 d!1577687))

(declare-fun d!1577707 () Bool)

(declare-fun e!3068543 () Bool)

(assert (=> d!1577707 e!3068543))

(declare-fun res!2097014 () Bool)

(assert (=> d!1577707 (=> (not res!2097014) (not e!3068543))))

(assert (=> d!1577707 (= res!2097014 (semiInverseModEq!3645 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))))))

(declare-fun Unit!146797 () Unit!146790)

(assert (=> d!1577707 (= (lemmaInv!1290 (transformation!8244 rule!164)) Unit!146797)))

(declare-fun b!4909147 () Bool)

(declare-fun equivClasses!3497 (Int Int) Bool)

(assert (=> b!4909147 (= e!3068543 (equivClasses!3497 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))))))

(assert (= (and d!1577707 res!2097014) b!4909147))

(assert (=> d!1577707 m!5918654))

(declare-fun m!5918964 () Bool)

(assert (=> b!4909147 m!5918964))

(assert (=> b!4908899 d!1577707))

(declare-fun d!1577709 () Bool)

(declare-fun lt!2014719 () Int)

(assert (=> d!1577709 (>= lt!2014719 0)))

(declare-fun e!3068546 () Int)

(assert (=> d!1577709 (= lt!2014719 e!3068546)))

(declare-fun c!834466 () Bool)

(assert (=> d!1577709 (= c!834466 ((_ is Nil!56563) Nil!56563))))

(assert (=> d!1577709 (= (size!37319 Nil!56563) lt!2014719)))

(declare-fun b!4909152 () Bool)

(assert (=> b!4909152 (= e!3068546 0)))

(declare-fun b!4909153 () Bool)

(assert (=> b!4909153 (= e!3068546 (+ 1 (size!37319 (t!366963 Nil!56563))))))

(assert (= (and d!1577709 c!834466) b!4909152))

(assert (= (and d!1577709 (not c!834466)) b!4909153))

(declare-fun m!5918966 () Bool)

(assert (=> b!4909153 m!5918966))

(assert (=> b!4908899 d!1577709))

(declare-fun bs!1177342 () Bool)

(declare-fun d!1577711 () Bool)

(assert (= bs!1177342 (and d!1577711 b!4908909)))

(declare-fun lambda!244643 () Int)

(assert (=> bs!1177342 (= lambda!244643 lambda!244634)))

(assert (=> d!1577711 true))

(assert (=> d!1577711 (< (dynLambda!22895 order!25845 (toChars!11038 (transformation!8244 rule!164))) (dynLambda!22894 order!25843 lambda!244643))))

(assert (=> d!1577711 true))

(assert (=> d!1577711 (< (dynLambda!22893 order!25841 (toValue!11179 (transformation!8244 rule!164))) (dynLambda!22894 order!25843 lambda!244643))))

(assert (=> d!1577711 (= (semiInverseModEq!3645 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))) (Forall!1741 lambda!244643))))

(declare-fun bs!1177343 () Bool)

(assert (= bs!1177343 d!1577711))

(declare-fun m!5918968 () Bool)

(assert (=> bs!1177343 m!5918968))

(assert (=> b!4908899 d!1577711))

(declare-fun d!1577713 () Bool)

(declare-fun e!3068565 () Bool)

(assert (=> d!1577713 e!3068565))

(declare-fun res!2097021 () Bool)

(assert (=> d!1577713 (=> res!2097021 e!3068565)))

(assert (=> d!1577713 (= res!2097021 (isEmpty!30468 (_1!33748 (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)))))))

(declare-fun lt!2014778 () Unit!146790)

(declare-fun choose!35905 (Regex!13319 List!56687) Unit!146790)

(assert (=> d!1577713 (= lt!2014778 (choose!35905 (regex!8244 rule!164) lt!2014558))))

(assert (=> d!1577713 (validRegex!5912 (regex!8244 rule!164))))

(assert (=> d!1577713 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1770 (regex!8244 rule!164) lt!2014558) lt!2014778)))

(declare-fun b!4909188 () Bool)

(assert (=> b!4909188 (= e!3068565 (matchR!6586 (regex!8244 rule!164) (_1!33748 (findLongestMatchInner!1807 (regex!8244 rule!164) Nil!56563 (size!37319 Nil!56563) lt!2014558 lt!2014558 (size!37319 lt!2014558)))))))

(assert (= (and d!1577713 (not res!2097021)) b!4909188))

(assert (=> d!1577713 m!5918656))

(assert (=> d!1577713 m!5918656))

(assert (=> d!1577713 m!5918662))

(assert (=> d!1577713 m!5918664))

(assert (=> d!1577713 m!5918784))

(assert (=> d!1577713 m!5918662))

(declare-fun m!5918970 () Bool)

(assert (=> d!1577713 m!5918970))

(assert (=> d!1577713 m!5918840))

(assert (=> b!4909188 m!5918656))

(assert (=> b!4909188 m!5918662))

(assert (=> b!4909188 m!5918656))

(assert (=> b!4909188 m!5918662))

(assert (=> b!4909188 m!5918664))

(assert (=> b!4909188 m!5918774))

(assert (=> b!4908899 d!1577713))

(declare-fun d!1577715 () Bool)

(declare-fun lt!2014779 () Int)

(assert (=> d!1577715 (>= lt!2014779 0)))

(declare-fun e!3068566 () Int)

(assert (=> d!1577715 (= lt!2014779 e!3068566)))

(declare-fun c!834479 () Bool)

(assert (=> d!1577715 (= c!834479 ((_ is Nil!56563) lt!2014558))))

(assert (=> d!1577715 (= (size!37319 lt!2014558) lt!2014779)))

(declare-fun b!4909189 () Bool)

(assert (=> b!4909189 (= e!3068566 0)))

(declare-fun b!4909190 () Bool)

(assert (=> b!4909190 (= e!3068566 (+ 1 (size!37319 (t!366963 lt!2014558))))))

(assert (= (and d!1577715 c!834479) b!4909189))

(assert (= (and d!1577715 (not c!834479)) b!4909190))

(declare-fun m!5918972 () Bool)

(assert (=> b!4909190 m!5918972))

(assert (=> b!4908899 d!1577715))

(declare-fun d!1577717 () Bool)

(assert (=> d!1577717 (= (isEmpty!30468 (_1!33748 lt!2014557)) ((_ is Nil!56563) (_1!33748 lt!2014557)))))

(assert (=> b!4908899 d!1577717))

(declare-fun d!1577719 () Bool)

(assert (=> d!1577719 (= (inv!73076 (tag!9108 rule!164)) (= (mod (str.len (value!264060 (tag!9108 rule!164))) 2) 0))))

(assert (=> b!4908901 d!1577719))

(declare-fun d!1577721 () Bool)

(declare-fun res!2097024 () Bool)

(declare-fun e!3068569 () Bool)

(assert (=> d!1577721 (=> (not res!2097024) (not e!3068569))))

(assert (=> d!1577721 (= res!2097024 (semiInverseModEq!3645 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))))))

(assert (=> d!1577721 (= (inv!73080 (transformation!8244 rule!164)) e!3068569)))

(declare-fun b!4909193 () Bool)

(assert (=> b!4909193 (= e!3068569 (equivClasses!3497 (toChars!11038 (transformation!8244 rule!164)) (toValue!11179 (transformation!8244 rule!164))))))

(assert (= (and d!1577721 res!2097024) b!4909193))

(assert (=> d!1577721 m!5918654))

(assert (=> b!4909193 m!5918964))

(assert (=> b!4908901 d!1577721))

(declare-fun d!1577723 () Bool)

(declare-fun c!834488 () Bool)

(assert (=> d!1577723 (= c!834488 ((_ is Node!14812) (c!834418 input!1509)))))

(declare-fun e!3068582 () Bool)

(assert (=> d!1577723 (= (inv!73082 (c!834418 input!1509)) e!3068582)))

(declare-fun b!4909214 () Bool)

(declare-fun inv!73085 (Conc!14812) Bool)

(assert (=> b!4909214 (= e!3068582 (inv!73085 (c!834418 input!1509)))))

(declare-fun b!4909215 () Bool)

(declare-fun e!3068583 () Bool)

(assert (=> b!4909215 (= e!3068582 e!3068583)))

(declare-fun res!2097029 () Bool)

(assert (=> b!4909215 (= res!2097029 (not ((_ is Leaf!24651) (c!834418 input!1509))))))

(assert (=> b!4909215 (=> res!2097029 e!3068583)))

(declare-fun b!4909216 () Bool)

(declare-fun inv!73086 (Conc!14812) Bool)

(assert (=> b!4909216 (= e!3068583 (inv!73086 (c!834418 input!1509)))))

(assert (= (and d!1577723 c!834488) b!4909214))

(assert (= (and d!1577723 (not c!834488)) b!4909215))

(assert (= (and b!4909215 (not res!2097029)) b!4909216))

(declare-fun m!5918974 () Bool)

(assert (=> b!4909214 m!5918974))

(declare-fun m!5918978 () Bool)

(assert (=> b!4909216 m!5918978))

(assert (=> b!4908911 d!1577723))

(declare-fun d!1577725 () Bool)

(assert (=> d!1577725 (= (list!17838 lt!2014549) (list!17839 (c!834418 lt!2014549)))))

(declare-fun bs!1177344 () Bool)

(assert (= bs!1177344 d!1577725))

(declare-fun m!5918986 () Bool)

(assert (=> bs!1177344 m!5918986))

(assert (=> b!4908900 d!1577725))

(declare-fun d!1577727 () Bool)

(assert (=> d!1577727 (= (get!19572 lt!2014561) (v!50086 lt!2014561))))

(assert (=> b!4908902 d!1577727))

(declare-fun e!3068586 () Bool)

(assert (=> b!4908901 (= tp!1380549 e!3068586)))

(declare-fun b!4909230 () Bool)

(declare-fun tp!1380565 () Bool)

(declare-fun tp!1380566 () Bool)

(assert (=> b!4909230 (= e!3068586 (and tp!1380565 tp!1380566))))

(declare-fun b!4909229 () Bool)

(declare-fun tp!1380563 () Bool)

(assert (=> b!4909229 (= e!3068586 tp!1380563)))

(declare-fun b!4909228 () Bool)

(declare-fun tp!1380564 () Bool)

(declare-fun tp!1380562 () Bool)

(assert (=> b!4909228 (= e!3068586 (and tp!1380564 tp!1380562))))

(declare-fun b!4909227 () Bool)

(declare-fun tp_is_empty!35845 () Bool)

(assert (=> b!4909227 (= e!3068586 tp_is_empty!35845)))

(assert (= (and b!4908901 ((_ is ElementMatch!13319) (regex!8244 rule!164))) b!4909227))

(assert (= (and b!4908901 ((_ is Concat!21873) (regex!8244 rule!164))) b!4909228))

(assert (= (and b!4908901 ((_ is Star!13319) (regex!8244 rule!164))) b!4909229))

(assert (= (and b!4908901 ((_ is Union!13319) (regex!8244 rule!164))) b!4909230))

(declare-fun tp!1380573 () Bool)

(declare-fun e!3068594 () Bool)

(declare-fun tp!1380575 () Bool)

(declare-fun b!4909245 () Bool)

(assert (=> b!4909245 (= e!3068594 (and (inv!73082 (left!41200 (c!834418 input!1509))) tp!1380575 (inv!73082 (right!41530 (c!834418 input!1509))) tp!1380573))))

(declare-fun b!4909247 () Bool)

(declare-fun e!3068595 () Bool)

(declare-fun tp!1380574 () Bool)

(assert (=> b!4909247 (= e!3068595 tp!1380574)))

(declare-fun b!4909246 () Bool)

(declare-fun inv!73087 (IArray!29685) Bool)

(assert (=> b!4909246 (= e!3068594 (and (inv!73087 (xs!18128 (c!834418 input!1509))) e!3068595))))

(assert (=> b!4908911 (= tp!1380550 (and (inv!73082 (c!834418 input!1509)) e!3068594))))

(assert (= (and b!4908911 ((_ is Node!14812) (c!834418 input!1509))) b!4909245))

(assert (= b!4909246 b!4909247))

(assert (= (and b!4908911 ((_ is Leaf!24651) (c!834418 input!1509))) b!4909246))

(declare-fun m!5919034 () Bool)

(assert (=> b!4909245 m!5919034))

(declare-fun m!5919036 () Bool)

(assert (=> b!4909245 m!5919036))

(declare-fun m!5919038 () Bool)

(assert (=> b!4909246 m!5919038))

(assert (=> b!4908911 m!5918652))

(declare-fun b_lambda!195769 () Bool)

(assert (= b_lambda!195747 (or (and b!4908904 b_free!131947) b_lambda!195769)))

(declare-fun b_lambda!195771 () Bool)

(assert (= b_lambda!195745 (or (and b!4908904 b_free!131947) b_lambda!195771)))

(declare-fun b_lambda!195773 () Bool)

(assert (= b_lambda!195753 (or b!4908909 b_lambda!195773)))

(declare-fun bs!1177345 () Bool)

(declare-fun d!1577733 () Bool)

(assert (= bs!1177345 (and d!1577733 b!4908909)))

(declare-fun dynLambda!22902 (Int TokenValue!8554) BalanceConc!29054)

(assert (=> bs!1177345 (= (dynLambda!22898 lambda!244634 (_1!33746 lt!2014550)) (= (list!17838 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550)))) (list!17838 (_1!33746 lt!2014550))))))

(declare-fun b_lambda!195781 () Bool)

(assert (=> (not b_lambda!195781) (not bs!1177345)))

(declare-fun t!366973 () Bool)

(declare-fun tb!260015 () Bool)

(assert (=> (and b!4908904 (= (toChars!11038 (transformation!8244 rule!164)) (toChars!11038 (transformation!8244 rule!164))) t!366973) tb!260015))

(declare-fun b!4909252 () Bool)

(declare-fun tp!1380578 () Bool)

(declare-fun e!3068598 () Bool)

(assert (=> b!4909252 (= e!3068598 (and (inv!73082 (c!834418 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550))))) tp!1380578))))

(declare-fun result!323858 () Bool)

(assert (=> tb!260015 (= result!323858 (and (inv!73081 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) (_1!33746 lt!2014550)))) e!3068598))))

(assert (= tb!260015 b!4909252))

(declare-fun m!5919040 () Bool)

(assert (=> b!4909252 m!5919040))

(declare-fun m!5919042 () Bool)

(assert (=> tb!260015 m!5919042))

(assert (=> bs!1177345 t!366973))

(declare-fun b_and!346607 () Bool)

(assert (= b_and!346589 (and (=> t!366973 result!323858) b_and!346607)))

(declare-fun b_lambda!195783 () Bool)

(assert (=> (not b_lambda!195783) (not bs!1177345)))

(assert (=> bs!1177345 t!366967))

(declare-fun b_and!346609 () Bool)

(assert (= b_and!346597 (and (=> t!366967 result!323846) b_and!346609)))

(assert (=> bs!1177345 m!5918712))

(declare-fun m!5919044 () Bool)

(assert (=> bs!1177345 m!5919044))

(declare-fun m!5919046 () Bool)

(assert (=> bs!1177345 m!5919046))

(assert (=> bs!1177345 m!5918678))

(assert (=> bs!1177345 m!5918712))

(assert (=> bs!1177345 m!5919044))

(assert (=> d!1577631 d!1577733))

(declare-fun b_lambda!195775 () Bool)

(assert (= b_lambda!195755 (or (and b!4908904 b_free!131947) b_lambda!195775)))

(declare-fun b_lambda!195777 () Bool)

(assert (= b_lambda!195751 (or b!4908909 b_lambda!195777)))

(declare-fun bs!1177346 () Bool)

(declare-fun d!1577735 () Bool)

(assert (= bs!1177346 (and d!1577735 b!4908909)))

(assert (=> bs!1177346 (= (dynLambda!22898 lambda!244634 lt!2014549) (= (list!17838 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549))) (list!17838 lt!2014549)))))

(declare-fun b_lambda!195785 () Bool)

(assert (=> (not b_lambda!195785) (not bs!1177346)))

(declare-fun t!366975 () Bool)

(declare-fun tb!260017 () Bool)

(assert (=> (and b!4908904 (= (toChars!11038 (transformation!8244 rule!164)) (toChars!11038 (transformation!8244 rule!164))) t!366975) tb!260017))

(declare-fun tp!1380579 () Bool)

(declare-fun b!4909253 () Bool)

(declare-fun e!3068599 () Bool)

(assert (=> b!4909253 (= e!3068599 (and (inv!73082 (c!834418 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549)))) tp!1380579))))

(declare-fun result!323862 () Bool)

(assert (=> tb!260017 (= result!323862 (and (inv!73081 (dynLambda!22902 (toChars!11038 (transformation!8244 rule!164)) (dynLambda!22896 (toValue!11179 (transformation!8244 rule!164)) lt!2014549))) e!3068599))))

(assert (= tb!260017 b!4909253))

(declare-fun m!5919048 () Bool)

(assert (=> b!4909253 m!5919048))

(declare-fun m!5919050 () Bool)

(assert (=> tb!260017 m!5919050))

(assert (=> bs!1177346 t!366975))

(declare-fun b_and!346611 () Bool)

(assert (= b_and!346607 (and (=> t!366975 result!323862) b_and!346611)))

(declare-fun b_lambda!195787 () Bool)

(assert (=> (not b_lambda!195787) (not bs!1177346)))

(assert (=> bs!1177346 t!366965))

(declare-fun b_and!346613 () Bool)

(assert (= b_and!346609 (and (=> t!366965 result!323842) b_and!346613)))

(assert (=> bs!1177346 m!5918708))

(declare-fun m!5919052 () Bool)

(assert (=> bs!1177346 m!5919052))

(declare-fun m!5919054 () Bool)

(assert (=> bs!1177346 m!5919054))

(assert (=> bs!1177346 m!5918704))

(assert (=> bs!1177346 m!5918708))

(assert (=> bs!1177346 m!5919052))

(assert (=> d!1577627 d!1577735))

(declare-fun b_lambda!195779 () Bool)

(assert (= b_lambda!195749 (or (and b!4908904 b_free!131947) b_lambda!195779)))

(check-sat (not d!1577687) (not b_next!132737) (not bs!1177345) (not d!1577621) (not b_lambda!195777) (not bm!340779) (not bm!340796) (not d!1577661) (not d!1577635) (not b!4909247) (not b!4909216) (not b!4909230) (not b!4909077) (not b!4909214) (not b!4909229) (not d!1577651) (not d!1577667) (not b!4909153) (not b!4908989) (not bm!340803) (not b_next!132739) (not b!4909131) (not tb!260017) (not b!4908994) (not b!4909141) (not bs!1177346) (not b!4909252) (not bm!340797) (not b!4909072) (not d!1577721) (not bm!340800) (not b_lambda!195769) (not b!4908993) (not b!4909031) (not d!1577647) (not tb!260007) (not d!1577725) (not b_lambda!195785) (not d!1577653) (not b_lambda!195775) (not d!1577629) (not b!4909134) tp_is_empty!35845 (not b!4908992) (not b_lambda!195783) (not tb!260015) (not b_lambda!195787) (not b!4909188) (not b!4909190) (not d!1577707) (not b!4909245) (not d!1577623) (not bm!340798) (not d!1577657) (not b!4909082) (not b_lambda!195779) (not b!4908990) (not bm!340802) (not d!1577711) (not d!1577631) (not d!1577685) (not b!4909133) (not b!4908911) (not bm!340799) (not b_lambda!195781) (not d!1577649) b_and!346611 (not b!4909246) (not b!4909070) (not d!1577663) (not d!1577713) (not d!1577655) (not b_lambda!195773) (not b_lambda!195771) b_and!346613 (not b!4909193) (not b!4909074) (not b!4908996) (not bm!340801) (not b!4909147) (not b!4909079) (not b!4909253) (not b!4908995) (not b!4908997) (not d!1577627) (not b!4909228) (not tb!260009))
(check-sat b_and!346611 b_and!346613 (not b_next!132739) (not b_next!132737))
