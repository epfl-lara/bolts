; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513640 () Bool)

(assert start!513640)

(declare-fun b!4902925 () Bool)

(declare-fun b_free!131867 () Bool)

(declare-fun b_next!132657 () Bool)

(assert (=> b!4902925 (= b_free!131867 (not b_next!132657))))

(declare-fun tp!1379535 () Bool)

(declare-fun b_and!346259 () Bool)

(assert (=> b!4902925 (= tp!1379535 b_and!346259)))

(declare-fun b_free!131869 () Bool)

(declare-fun b_next!132659 () Bool)

(assert (=> b!4902925 (= b_free!131869 (not b_next!132659))))

(declare-fun tp!1379534 () Bool)

(declare-fun b_and!346261 () Bool)

(assert (=> b!4902925 (= tp!1379534 b_and!346261)))

(declare-fun b!4902941 () Bool)

(declare-fun e!3064958 () Bool)

(assert (=> b!4902941 (= e!3064958 true)))

(declare-fun b!4902940 () Bool)

(declare-fun e!3064957 () Bool)

(assert (=> b!4902940 (= e!3064957 e!3064958)))

(declare-fun b!4902924 () Bool)

(assert (=> b!4902924 e!3064957))

(assert (= b!4902940 b!4902941))

(assert (= b!4902924 b!4902940))

(declare-fun lambda!244402 () Int)

(declare-fun order!25695 () Int)

(declare-datatypes ((C!26796 0))(
  ( (C!26797 (val!22732 Int)) )
))
(declare-datatypes ((Regex!13299 0))(
  ( (ElementMatch!13299 (c!833223 C!26796)) (Concat!21833 (regOne!27110 Regex!13299) (regTwo!27110 Regex!13299)) (EmptyExpr!13299) (Star!13299 (reg!13628 Regex!13299)) (EmptyLang!13299) (Union!13299 (regOne!27111 Regex!13299) (regTwo!27111 Regex!13299)) )
))
(declare-datatypes ((String!64111 0))(
  ( (String!64112 (value!263494 String)) )
))
(declare-datatypes ((List!56646 0))(
  ( (Nil!56522) (Cons!56522 (h!62970 (_ BitVec 16)) (t!366738 List!56646)) )
))
(declare-datatypes ((TokenValue!8534 0))(
  ( (FloatLiteralValue!17068 (text!60183 List!56646)) (TokenValueExt!8533 (__x!34361 Int)) (Broken!42670 (value!263495 List!56646)) (Object!8657) (End!8534) (Def!8534) (Underscore!8534) (Match!8534) (Else!8534) (Error!8534) (Case!8534) (If!8534) (Extends!8534) (Abstract!8534) (Class!8534) (Val!8534) (DelimiterValue!17068 (del!8594 List!56646)) (KeywordValue!8540 (value!263496 List!56646)) (CommentValue!17068 (value!263497 List!56646)) (WhitespaceValue!17068 (value!263498 List!56646)) (IndentationValue!8534 (value!263499 List!56646)) (String!64113) (Int32!8534) (Broken!42671 (value!263500 List!56646)) (Boolean!8535) (Unit!146640) (OperatorValue!8537 (op!8594 List!56646)) (IdentifierValue!17068 (value!263501 List!56646)) (IdentifierValue!17069 (value!263502 List!56646)) (WhitespaceValue!17069 (value!263503 List!56646)) (True!17068) (False!17068) (Broken!42672 (value!263504 List!56646)) (Broken!42673 (value!263505 List!56646)) (True!17069) (RightBrace!8534) (RightBracket!8534) (Colon!8534) (Null!8534) (Comma!8534) (LeftBracket!8534) (False!17069) (LeftBrace!8534) (ImaginaryLiteralValue!8534 (text!60184 List!56646)) (StringLiteralValue!25602 (value!263506 List!56646)) (EOFValue!8534 (value!263507 List!56646)) (IdentValue!8534 (value!263508 List!56646)) (DelimiterValue!17069 (value!263509 List!56646)) (DedentValue!8534 (value!263510 List!56646)) (NewLineValue!8534 (value!263511 List!56646)) (IntegerValue!25602 (value!263512 (_ BitVec 32)) (text!60185 List!56646)) (IntegerValue!25603 (value!263513 Int) (text!60186 List!56646)) (Times!8534) (Or!8534) (Equal!8534) (Minus!8534) (Broken!42674 (value!263514 List!56646)) (And!8534) (Div!8534) (LessEqual!8534) (Mod!8534) (Concat!21834) (Not!8534) (Plus!8534) (SpaceValue!8534 (value!263515 List!56646)) (IntegerValue!25604 (value!263516 Int) (text!60187 List!56646)) (StringLiteralValue!25603 (text!60188 List!56646)) (FloatLiteralValue!17069 (text!60189 List!56646)) (BytesLiteralValue!8534 (value!263517 List!56646)) (CommentValue!17069 (value!263518 List!56646)) (StringLiteralValue!25604 (value!263519 List!56646)) (ErrorTokenValue!8534 (msg!8595 List!56646)) )
))
(declare-datatypes ((List!56647 0))(
  ( (Nil!56523) (Cons!56523 (h!62971 C!26796) (t!366739 List!56647)) )
))
(declare-datatypes ((IArray!29645 0))(
  ( (IArray!29646 (innerList!14880 List!56647)) )
))
(declare-datatypes ((Conc!14792 0))(
  ( (Node!14792 (left!41130 Conc!14792) (right!41460 Conc!14792) (csize!29814 Int) (cheight!15003 Int)) (Leaf!24621 (xs!18108 IArray!29645) (csize!29815 Int)) (Empty!14792) )
))
(declare-datatypes ((BalanceConc!29014 0))(
  ( (BalanceConc!29015 (c!833224 Conc!14792)) )
))
(declare-datatypes ((TokenValueInjection!16376 0))(
  ( (TokenValueInjection!16377 (toValue!11135 Int) (toChars!10994 Int)) )
))
(declare-datatypes ((Rule!16248 0))(
  ( (Rule!16249 (regex!8224 Regex!13299) (tag!9088 String!64111) (isSeparator!8224 Bool) (transformation!8224 TokenValueInjection!16376)) )
))
(declare-fun rule!164 () Rule!16248)

(declare-fun order!25693 () Int)

(declare-fun dynLambda!22780 (Int Int) Int)

(declare-fun dynLambda!22781 (Int Int) Int)

(assert (=> b!4902941 (< (dynLambda!22780 order!25693 (toValue!11135 (transformation!8224 rule!164))) (dynLambda!22781 order!25695 lambda!244402))))

(declare-fun order!25697 () Int)

(declare-fun dynLambda!22782 (Int Int) Int)

(assert (=> b!4902941 (< (dynLambda!22782 order!25697 (toChars!10994 (transformation!8224 rule!164))) (dynLambda!22781 order!25695 lambda!244402))))

(declare-fun b!4902919 () Bool)

(declare-fun e!3064944 () Bool)

(declare-fun input!1509 () BalanceConc!29014)

(declare-fun tp!1379532 () Bool)

(declare-fun inv!72939 (Conc!14792) Bool)

(assert (=> b!4902919 (= e!3064944 (and (inv!72939 (c!833224 input!1509)) tp!1379532))))

(declare-fun b!4902920 () Bool)

(declare-fun e!3064951 () Bool)

(declare-fun e!3064945 () Bool)

(assert (=> b!4902920 (= e!3064951 e!3064945)))

(declare-fun res!2094396 () Bool)

(assert (=> b!4902920 (=> res!2094396 e!3064945)))

(declare-fun lt!2011032 () Bool)

(declare-datatypes ((Token!14984 0))(
  ( (Token!14985 (value!263520 TokenValue!8534) (rule!11424 Rule!16248) (size!37252 Int) (originalCharacters!8523 List!56647)) )
))
(declare-datatypes ((tuple2!60740 0))(
  ( (tuple2!60741 (_1!33673 Token!14984) (_2!33673 List!56647)) )
))
(declare-datatypes ((Option!14093 0))(
  ( (None!14092) (Some!14092 (v!50054 tuple2!60740)) )
))
(declare-fun lt!2011019 () Option!14093)

(declare-fun isDefined!11102 (Option!14093) Bool)

(assert (=> b!4902920 (= res!2094396 (not (= lt!2011032 (isDefined!11102 lt!2011019))))))

(declare-datatypes ((tuple2!60742 0))(
  ( (tuple2!60743 (_1!33674 Token!14984) (_2!33674 BalanceConc!29014)) )
))
(declare-datatypes ((Option!14094 0))(
  ( (None!14093) (Some!14093 (v!50055 tuple2!60742)) )
))
(declare-fun lt!2011029 () Option!14094)

(declare-fun isDefined!11103 (Option!14094) Bool)

(assert (=> b!4902920 (= lt!2011032 (isDefined!11103 lt!2011029))))

(declare-datatypes ((LexerInterface!7816 0))(
  ( (LexerInterfaceExt!7813 (__x!34362 Int)) (Lexer!7814) )
))
(declare-fun thiss!15943 () LexerInterface!7816)

(declare-fun lt!2011022 () List!56647)

(declare-fun maxPrefixOneRule!3565 (LexerInterface!7816 Rule!16248 List!56647) Option!14093)

(assert (=> b!4902920 (= lt!2011019 (maxPrefixOneRule!3565 thiss!15943 rule!164 lt!2011022))))

(declare-fun lt!2011037 () Token!14984)

(declare-datatypes ((tuple2!60744 0))(
  ( (tuple2!60745 (_1!33675 BalanceConc!29014) (_2!33675 BalanceConc!29014)) )
))
(declare-fun lt!2011021 () tuple2!60744)

(assert (=> b!4902920 (= lt!2011029 (Some!14093 (tuple2!60743 lt!2011037 (_2!33675 lt!2011021))))))

(declare-fun lt!2011023 () List!56647)

(declare-fun lt!2011031 () TokenValue!8534)

(declare-fun lt!2011024 () Int)

(assert (=> b!4902920 (= lt!2011037 (Token!14985 lt!2011031 rule!164 lt!2011024 lt!2011023))))

(declare-fun size!37253 (BalanceConc!29014) Int)

(assert (=> b!4902920 (= lt!2011024 (size!37253 (_1!33675 lt!2011021)))))

(declare-fun apply!13572 (TokenValueInjection!16376 BalanceConc!29014) TokenValue!8534)

(assert (=> b!4902920 (= lt!2011031 (apply!13572 (transformation!8224 rule!164) (_1!33675 lt!2011021)))))

(declare-datatypes ((Unit!146641 0))(
  ( (Unit!146642) )
))
(declare-fun lt!2011027 () Unit!146641)

(declare-fun lt!2011033 () BalanceConc!29014)

(declare-fun ForallOf!1165 (Int BalanceConc!29014) Unit!146641)

(assert (=> b!4902920 (= lt!2011027 (ForallOf!1165 lambda!244402 lt!2011033))))

(declare-fun seqFromList!5970 (List!56647) BalanceConc!29014)

(assert (=> b!4902920 (= lt!2011033 (seqFromList!5970 lt!2011023))))

(declare-fun list!17794 (BalanceConc!29014) List!56647)

(assert (=> b!4902920 (= lt!2011023 (list!17794 (_1!33675 lt!2011021)))))

(declare-fun lt!2011025 () Unit!146641)

(assert (=> b!4902920 (= lt!2011025 (ForallOf!1165 lambda!244402 (_1!33675 lt!2011021)))))

(declare-fun b!4902922 () Bool)

(declare-fun e!3064946 () Bool)

(declare-fun tp!1379533 () Bool)

(declare-fun e!3064942 () Bool)

(declare-fun inv!72935 (String!64111) Bool)

(declare-fun inv!72940 (TokenValueInjection!16376) Bool)

(assert (=> b!4902922 (= e!3064946 (and tp!1379533 (inv!72935 (tag!9088 rule!164)) (inv!72940 (transformation!8224 rule!164)) e!3064942))))

(declare-fun b!4902923 () Bool)

(declare-fun res!2094390 () Bool)

(assert (=> b!4902923 (=> res!2094390 e!3064945)))

(assert (=> b!4902923 (= res!2094390 (not lt!2011032))))

(declare-fun res!2094392 () Bool)

(assert (=> b!4902924 (=> res!2094392 e!3064951)))

(declare-fun Forall!1721 (Int) Bool)

(assert (=> b!4902924 (= res!2094392 (not (Forall!1721 lambda!244402)))))

(assert (=> b!4902925 (= e!3064942 (and tp!1379535 tp!1379534))))

(declare-fun b!4902926 () Bool)

(declare-fun e!3064950 () Bool)

(declare-fun e!3064947 () Bool)

(assert (=> b!4902926 (= e!3064950 e!3064947)))

(declare-fun res!2094395 () Bool)

(assert (=> b!4902926 (=> (not res!2094395) (not e!3064947))))

(declare-fun isEmpty!30383 (BalanceConc!29014) Bool)

(assert (=> b!4902926 (= res!2094395 (not (isEmpty!30383 (_1!33675 lt!2011021))))))

(declare-fun findLongestMatchWithZipperSequence!312 (Regex!13299 BalanceConc!29014) tuple2!60744)

(assert (=> b!4902926 (= lt!2011021 (findLongestMatchWithZipperSequence!312 (regex!8224 rule!164) input!1509))))

(declare-fun b!4902927 () Bool)

(declare-fun e!3064949 () Bool)

(declare-datatypes ((tuple2!60746 0))(
  ( (tuple2!60747 (_1!33676 List!56647) (_2!33676 List!56647)) )
))
(declare-fun lt!2011030 () tuple2!60746)

(declare-fun matchR!6566 (Regex!13299 List!56647) Bool)

(assert (=> b!4902927 (= e!3064949 (matchR!6566 (regex!8224 rule!164) (_1!33676 lt!2011030)))))

(declare-fun b!4902928 () Bool)

(declare-fun res!2094385 () Bool)

(assert (=> b!4902928 (=> (not res!2094385) (not e!3064950))))

(declare-fun ruleValid!3721 (LexerInterface!7816 Rule!16248) Bool)

(assert (=> b!4902928 (= res!2094385 (ruleValid!3721 thiss!15943 rule!164))))

(declare-fun b!4902929 () Bool)

(declare-fun e!3064943 () Bool)

(assert (=> b!4902929 (= e!3064945 e!3064943)))

(declare-fun res!2094393 () Bool)

(assert (=> b!4902929 (=> res!2094393 e!3064943)))

(assert (=> b!4902929 (= res!2094393 (not (= (apply!13572 (transformation!8224 rule!164) lt!2011033) lt!2011031)))))

(declare-fun lt!2011020 () Unit!146641)

(declare-fun lemmaEqSameImage!1116 (TokenValueInjection!16376 BalanceConc!29014 BalanceConc!29014) Unit!146641)

(assert (=> b!4902929 (= lt!2011020 (lemmaEqSameImage!1116 (transformation!8224 rule!164) (_1!33675 lt!2011021) lt!2011033))))

(declare-fun b!4902921 () Bool)

(declare-fun e!3064952 () Bool)

(assert (=> b!4902921 (= e!3064943 e!3064952)))

(declare-fun res!2094386 () Bool)

(assert (=> b!4902921 (=> res!2094386 e!3064952)))

(declare-fun lt!2011026 () tuple2!60740)

(assert (=> b!4902921 (= res!2094386 (or (not (= (value!263520 (_1!33673 lt!2011026)) lt!2011031)) (not (= (rule!11424 (_1!33673 lt!2011026)) rule!164)) (not (= (size!37252 (_1!33673 lt!2011026)) lt!2011024)) (not (= (originalCharacters!8523 (_1!33673 lt!2011026)) lt!2011023)) (not (= lt!2011037 (_1!33673 lt!2011026)))))))

(declare-fun get!19545 (Option!14093) tuple2!60740)

(assert (=> b!4902921 (= lt!2011026 (get!19545 lt!2011019))))

(declare-fun res!2094389 () Bool)

(assert (=> start!513640 (=> (not res!2094389) (not e!3064950))))

(get-info :version)

(assert (=> start!513640 (= res!2094389 ((_ is Lexer!7814) thiss!15943))))

(assert (=> start!513640 e!3064950))

(assert (=> start!513640 true))

(assert (=> start!513640 e!3064946))

(declare-fun inv!72941 (BalanceConc!29014) Bool)

(assert (=> start!513640 (and (inv!72941 input!1509) e!3064944)))

(declare-fun b!4902930 () Bool)

(declare-fun res!2094394 () Bool)

(assert (=> b!4902930 (=> res!2094394 e!3064945)))

(assert (=> b!4902930 (= res!2094394 (not (= (list!17794 lt!2011033) lt!2011023)))))

(declare-fun b!4902931 () Bool)

(declare-fun e!3064948 () Bool)

(assert (=> b!4902931 (= e!3064952 e!3064948)))

(declare-fun res!2094388 () Bool)

(assert (=> b!4902931 (=> res!2094388 e!3064948)))

(declare-fun lt!2011036 () tuple2!60742)

(assert (=> b!4902931 (= res!2094388 (not (= (_1!33674 lt!2011036) (_1!33673 lt!2011026))))))

(declare-fun get!19546 (Option!14094) tuple2!60742)

(assert (=> b!4902931 (= lt!2011036 (get!19546 lt!2011029))))

(declare-fun b!4902932 () Bool)

(assert (=> b!4902932 (= e!3064947 (not e!3064951))))

(declare-fun res!2094391 () Bool)

(assert (=> b!4902932 (=> res!2094391 e!3064951)))

(declare-fun semiInverseModEq!3625 (Int Int) Bool)

(assert (=> b!4902932 (= res!2094391 (not (semiInverseModEq!3625 (toChars!10994 (transformation!8224 rule!164)) (toValue!11135 (transformation!8224 rule!164)))))))

(declare-fun lt!2011028 () Unit!146641)

(declare-fun lemmaInv!1270 (TokenValueInjection!16376) Unit!146641)

(assert (=> b!4902932 (= lt!2011028 (lemmaInv!1270 (transformation!8224 rule!164)))))

(assert (=> b!4902932 e!3064949))

(declare-fun res!2094387 () Bool)

(assert (=> b!4902932 (=> res!2094387 e!3064949)))

(declare-fun isEmpty!30384 (List!56647) Bool)

(assert (=> b!4902932 (= res!2094387 (isEmpty!30384 (_1!33676 lt!2011030)))))

(declare-fun findLongestMatchInner!1787 (Regex!13299 List!56647 Int List!56647 List!56647 Int) tuple2!60746)

(declare-fun size!37254 (List!56647) Int)

(assert (=> b!4902932 (= lt!2011030 (findLongestMatchInner!1787 (regex!8224 rule!164) Nil!56523 (size!37254 Nil!56523) lt!2011022 lt!2011022 (size!37254 lt!2011022)))))

(declare-fun lt!2011035 () Unit!146641)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1750 (Regex!13299 List!56647) Unit!146641)

(assert (=> b!4902932 (= lt!2011035 (longestMatchIsAcceptedByMatchOrIsEmpty!1750 (regex!8224 rule!164) lt!2011022))))

(assert (=> b!4902932 (= lt!2011022 (list!17794 input!1509))))

(declare-fun b!4902933 () Bool)

(assert (=> b!4902933 (= e!3064948 true)))

(declare-fun lt!2011034 () List!56647)

(assert (=> b!4902933 (= lt!2011034 (list!17794 (_2!33674 lt!2011036)))))

(assert (= (and start!513640 res!2094389) b!4902928))

(assert (= (and b!4902928 res!2094385) b!4902926))

(assert (= (and b!4902926 res!2094395) b!4902932))

(assert (= (and b!4902932 (not res!2094387)) b!4902927))

(assert (= (and b!4902932 (not res!2094391)) b!4902924))

(assert (= (and b!4902924 (not res!2094392)) b!4902920))

(assert (= (and b!4902920 (not res!2094396)) b!4902923))

(assert (= (and b!4902923 (not res!2094390)) b!4902930))

(assert (= (and b!4902930 (not res!2094394)) b!4902929))

(assert (= (and b!4902929 (not res!2094393)) b!4902921))

(assert (= (and b!4902921 (not res!2094386)) b!4902931))

(assert (= (and b!4902931 (not res!2094388)) b!4902933))

(assert (= b!4902922 b!4902925))

(assert (= start!513640 b!4902922))

(assert (= start!513640 b!4902919))

(declare-fun m!5911842 () Bool)

(assert (=> b!4902930 m!5911842))

(declare-fun m!5911844 () Bool)

(assert (=> b!4902929 m!5911844))

(declare-fun m!5911846 () Bool)

(assert (=> b!4902929 m!5911846))

(declare-fun m!5911848 () Bool)

(assert (=> b!4902919 m!5911848))

(declare-fun m!5911850 () Bool)

(assert (=> b!4902920 m!5911850))

(declare-fun m!5911852 () Bool)

(assert (=> b!4902920 m!5911852))

(declare-fun m!5911854 () Bool)

(assert (=> b!4902920 m!5911854))

(declare-fun m!5911856 () Bool)

(assert (=> b!4902920 m!5911856))

(declare-fun m!5911858 () Bool)

(assert (=> b!4902920 m!5911858))

(declare-fun m!5911860 () Bool)

(assert (=> b!4902920 m!5911860))

(declare-fun m!5911862 () Bool)

(assert (=> b!4902920 m!5911862))

(declare-fun m!5911864 () Bool)

(assert (=> b!4902920 m!5911864))

(declare-fun m!5911866 () Bool)

(assert (=> b!4902920 m!5911866))

(declare-fun m!5911868 () Bool)

(assert (=> b!4902921 m!5911868))

(declare-fun m!5911870 () Bool)

(assert (=> b!4902928 m!5911870))

(declare-fun m!5911872 () Bool)

(assert (=> b!4902932 m!5911872))

(declare-fun m!5911874 () Bool)

(assert (=> b!4902932 m!5911874))

(declare-fun m!5911876 () Bool)

(assert (=> b!4902932 m!5911876))

(declare-fun m!5911878 () Bool)

(assert (=> b!4902932 m!5911878))

(declare-fun m!5911880 () Bool)

(assert (=> b!4902932 m!5911880))

(assert (=> b!4902932 m!5911874))

(declare-fun m!5911882 () Bool)

(assert (=> b!4902932 m!5911882))

(assert (=> b!4902932 m!5911880))

(declare-fun m!5911884 () Bool)

(assert (=> b!4902932 m!5911884))

(declare-fun m!5911886 () Bool)

(assert (=> b!4902932 m!5911886))

(declare-fun m!5911888 () Bool)

(assert (=> b!4902922 m!5911888))

(declare-fun m!5911890 () Bool)

(assert (=> b!4902922 m!5911890))

(declare-fun m!5911892 () Bool)

(assert (=> b!4902931 m!5911892))

(declare-fun m!5911894 () Bool)

(assert (=> b!4902933 m!5911894))

(declare-fun m!5911896 () Bool)

(assert (=> b!4902926 m!5911896))

(declare-fun m!5911898 () Bool)

(assert (=> b!4902926 m!5911898))

(declare-fun m!5911900 () Bool)

(assert (=> b!4902924 m!5911900))

(declare-fun m!5911902 () Bool)

(assert (=> start!513640 m!5911902))

(declare-fun m!5911904 () Bool)

(assert (=> b!4902927 m!5911904))

(check-sat (not b!4902930) (not b!4902929) (not b!4902919) b_and!346261 (not b!4902922) (not b_next!132657) (not start!513640) (not b!4902931) (not b_next!132659) (not b!4902928) (not b!4902927) (not b!4902924) b_and!346259 (not b!4902926) (not b!4902920) (not b!4902932) (not b!4902933) (not b!4902921))
(check-sat b_and!346261 b_and!346259 (not b_next!132659) (not b_next!132657))
