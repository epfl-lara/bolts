; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515416 () Bool)

(assert start!515416)

(declare-fun b!4911303 () Bool)

(declare-fun b_free!131995 () Bool)

(declare-fun b_next!132785 () Bool)

(assert (=> b!4911303 (= b_free!131995 (not b_next!132785))))

(declare-fun tp!1381044 () Bool)

(declare-fun b_and!346751 () Bool)

(assert (=> b!4911303 (= tp!1381044 b_and!346751)))

(declare-fun b_free!131997 () Bool)

(declare-fun b_next!132787 () Bool)

(assert (=> b!4911303 (= b_free!131997 (not b_next!132787))))

(declare-fun tp!1381045 () Bool)

(declare-fun b_and!346753 () Bool)

(assert (=> b!4911303 (= tp!1381045 b_and!346753)))

(declare-fun b!4911311 () Bool)

(declare-fun e!3069828 () Bool)

(assert (=> b!4911311 (= e!3069828 true)))

(declare-fun b!4911310 () Bool)

(declare-fun e!3069827 () Bool)

(assert (=> b!4911310 (= e!3069827 e!3069828)))

(declare-fun b!4911296 () Bool)

(assert (=> b!4911296 e!3069827))

(assert (= b!4911310 b!4911311))

(assert (= b!4911296 b!4911310))

(declare-fun lambda!244744 () Int)

(declare-fun order!25917 () Int)

(declare-datatypes ((C!26860 0))(
  ( (C!26861 (val!22764 Int)) )
))
(declare-datatypes ((Regex!13331 0))(
  ( (ElementMatch!13331 (c!834815 C!26860)) (Concat!21897 (regOne!27174 Regex!13331) (regTwo!27174 Regex!13331)) (EmptyExpr!13331) (Star!13331 (reg!13660 Regex!13331)) (EmptyLang!13331) (Union!13331 (regOne!27175 Regex!13331) (regTwo!27175 Regex!13331)) )
))
(declare-datatypes ((String!64271 0))(
  ( (String!64272 (value!264400 String)) )
))
(declare-datatypes ((List!56710 0))(
  ( (Nil!56586) (Cons!56586 (h!63034 (_ BitVec 16)) (t!367056 List!56710)) )
))
(declare-datatypes ((TokenValue!8566 0))(
  ( (FloatLiteralValue!17132 (text!60407 List!56710)) (TokenValueExt!8565 (__x!34425 Int)) (Broken!42830 (value!264401 List!56710)) (Object!8689) (End!8566) (Def!8566) (Underscore!8566) (Match!8566) (Else!8566) (Error!8566) (Case!8566) (If!8566) (Extends!8566) (Abstract!8566) (Class!8566) (Val!8566) (DelimiterValue!17132 (del!8626 List!56710)) (KeywordValue!8572 (value!264402 List!56710)) (CommentValue!17132 (value!264403 List!56710)) (WhitespaceValue!17132 (value!264404 List!56710)) (IndentationValue!8566 (value!264405 List!56710)) (String!64273) (Int32!8566) (Broken!42831 (value!264406 List!56710)) (Boolean!8567) (Unit!146851) (OperatorValue!8569 (op!8626 List!56710)) (IdentifierValue!17132 (value!264407 List!56710)) (IdentifierValue!17133 (value!264408 List!56710)) (WhitespaceValue!17133 (value!264409 List!56710)) (True!17132) (False!17132) (Broken!42832 (value!264410 List!56710)) (Broken!42833 (value!264411 List!56710)) (True!17133) (RightBrace!8566) (RightBracket!8566) (Colon!8566) (Null!8566) (Comma!8566) (LeftBracket!8566) (False!17133) (LeftBrace!8566) (ImaginaryLiteralValue!8566 (text!60408 List!56710)) (StringLiteralValue!25698 (value!264412 List!56710)) (EOFValue!8566 (value!264413 List!56710)) (IdentValue!8566 (value!264414 List!56710)) (DelimiterValue!17133 (value!264415 List!56710)) (DedentValue!8566 (value!264416 List!56710)) (NewLineValue!8566 (value!264417 List!56710)) (IntegerValue!25698 (value!264418 (_ BitVec 32)) (text!60409 List!56710)) (IntegerValue!25699 (value!264419 Int) (text!60410 List!56710)) (Times!8566) (Or!8566) (Equal!8566) (Minus!8566) (Broken!42834 (value!264420 List!56710)) (And!8566) (Div!8566) (LessEqual!8566) (Mod!8566) (Concat!21898) (Not!8566) (Plus!8566) (SpaceValue!8566 (value!264421 List!56710)) (IntegerValue!25700 (value!264422 Int) (text!60411 List!56710)) (StringLiteralValue!25699 (text!60412 List!56710)) (FloatLiteralValue!17133 (text!60413 List!56710)) (BytesLiteralValue!8566 (value!264423 List!56710)) (CommentValue!17133 (value!264424 List!56710)) (StringLiteralValue!25700 (value!264425 List!56710)) (ErrorTokenValue!8566 (msg!8627 List!56710)) )
))
(declare-datatypes ((List!56711 0))(
  ( (Nil!56587) (Cons!56587 (h!63035 C!26860) (t!367057 List!56711)) )
))
(declare-datatypes ((IArray!29709 0))(
  ( (IArray!29710 (innerList!14912 List!56711)) )
))
(declare-datatypes ((Conc!14824 0))(
  ( (Node!14824 (left!41238 Conc!14824) (right!41568 Conc!14824) (csize!29878 Int) (cheight!15035 Int)) (Leaf!24669 (xs!18140 IArray!29709) (csize!29879 Int)) (Empty!14824) )
))
(declare-datatypes ((BalanceConc!29078 0))(
  ( (BalanceConc!29079 (c!834816 Conc!14824)) )
))
(declare-datatypes ((TokenValueInjection!16440 0))(
  ( (TokenValueInjection!16441 (toValue!11201 Int) (toChars!11060 Int)) )
))
(declare-datatypes ((Rule!16312 0))(
  ( (Rule!16313 (regex!8256 Regex!13331) (tag!9120 String!64271) (isSeparator!8256 Bool) (transformation!8256 TokenValueInjection!16440)) )
))
(declare-fun rule!164 () Rule!16312)

(declare-fun order!25919 () Int)

(declare-fun dynLambda!22953 (Int Int) Int)

(declare-fun dynLambda!22954 (Int Int) Int)

(assert (=> b!4911311 (< (dynLambda!22953 order!25917 (toValue!11201 (transformation!8256 rule!164))) (dynLambda!22954 order!25919 lambda!244744))))

(declare-fun order!25921 () Int)

(declare-fun dynLambda!22955 (Int Int) Int)

(assert (=> b!4911311 (< (dynLambda!22955 order!25921 (toChars!11060 (transformation!8256 rule!164))) (dynLambda!22954 order!25919 lambda!244744))))

(declare-fun tp!1381047 () Bool)

(declare-fun b!4911295 () Bool)

(declare-fun e!3069816 () Bool)

(declare-fun e!3069817 () Bool)

(declare-fun inv!73159 (String!64271) Bool)

(declare-fun inv!73164 (TokenValueInjection!16440) Bool)

(assert (=> b!4911295 (= e!3069817 (and tp!1381047 (inv!73159 (tag!9120 rule!164)) (inv!73164 (transformation!8256 rule!164)) e!3069816))))

(declare-fun res!2097951 () Bool)

(declare-fun e!3069822 () Bool)

(assert (=> b!4911296 (=> res!2097951 e!3069822)))

(declare-fun Forall!1751 (Int) Bool)

(assert (=> b!4911296 (= res!2097951 (not (Forall!1751 lambda!244744)))))

(declare-fun b!4911297 () Bool)

(declare-fun e!3069815 () Bool)

(declare-fun e!3069818 () Bool)

(assert (=> b!4911297 (= e!3069815 e!3069818)))

(declare-fun res!2097953 () Bool)

(assert (=> b!4911297 (=> (not res!2097953) (not e!3069818))))

(declare-datatypes ((tuple2!60966 0))(
  ( (tuple2!60967 (_1!33786 BalanceConc!29078) (_2!33786 BalanceConc!29078)) )
))
(declare-fun lt!2016017 () tuple2!60966)

(declare-fun isEmpty!30513 (BalanceConc!29078) Bool)

(assert (=> b!4911297 (= res!2097953 (not (isEmpty!30513 (_1!33786 lt!2016017))))))

(declare-fun input!1509 () BalanceConc!29078)

(declare-fun findLongestMatchWithZipperSequence!344 (Regex!13331 BalanceConc!29078) tuple2!60966)

(assert (=> b!4911297 (= lt!2016017 (findLongestMatchWithZipperSequence!344 (regex!8256 rule!164) input!1509))))

(declare-fun b!4911298 () Bool)

(declare-fun e!3069821 () Bool)

(declare-fun tp!1381046 () Bool)

(declare-fun inv!73165 (Conc!14824) Bool)

(assert (=> b!4911298 (= e!3069821 (and (inv!73165 (c!834816 input!1509)) tp!1381046))))

(declare-fun b!4911299 () Bool)

(declare-fun res!2097952 () Bool)

(assert (=> b!4911299 (=> (not res!2097952) (not e!3069815))))

(declare-datatypes ((LexerInterface!7848 0))(
  ( (LexerInterfaceExt!7845 (__x!34426 Int)) (Lexer!7846) )
))
(declare-fun thiss!15943 () LexerInterface!7848)

(declare-fun ruleValid!3753 (LexerInterface!7848 Rule!16312) Bool)

(assert (=> b!4911299 (= res!2097952 (ruleValid!3753 thiss!15943 rule!164))))

(declare-fun b!4911300 () Bool)

(assert (=> b!4911300 (= e!3069818 (not e!3069822))))

(declare-fun res!2097956 () Bool)

(assert (=> b!4911300 (=> res!2097956 e!3069822)))

(declare-fun semiInverseModEq!3657 (Int Int) Bool)

(assert (=> b!4911300 (= res!2097956 (not (semiInverseModEq!3657 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164)))))))

(declare-datatypes ((Unit!146852 0))(
  ( (Unit!146853) )
))
(declare-fun lt!2016016 () Unit!146852)

(declare-fun lemmaInv!1298 (TokenValueInjection!16440) Unit!146852)

(assert (=> b!4911300 (= lt!2016016 (lemmaInv!1298 (transformation!8256 rule!164)))))

(declare-fun e!3069819 () Bool)

(assert (=> b!4911300 e!3069819))

(declare-fun res!2097955 () Bool)

(assert (=> b!4911300 (=> res!2097955 e!3069819)))

(declare-datatypes ((tuple2!60968 0))(
  ( (tuple2!60969 (_1!33787 List!56711) (_2!33787 List!56711)) )
))
(declare-fun lt!2016019 () tuple2!60968)

(declare-fun isEmpty!30514 (List!56711) Bool)

(assert (=> b!4911300 (= res!2097955 (isEmpty!30514 (_1!33787 lt!2016019)))))

(declare-fun lt!2016020 () List!56711)

(declare-fun findLongestMatchInner!1817 (Regex!13331 List!56711 Int List!56711 List!56711 Int) tuple2!60968)

(declare-fun size!37355 (List!56711) Int)

(assert (=> b!4911300 (= lt!2016019 (findLongestMatchInner!1817 (regex!8256 rule!164) Nil!56587 (size!37355 Nil!56587) lt!2016020 lt!2016020 (size!37355 lt!2016020)))))

(declare-fun lt!2016018 () Unit!146852)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1780 (Regex!13331 List!56711) Unit!146852)

(assert (=> b!4911300 (= lt!2016018 (longestMatchIsAcceptedByMatchOrIsEmpty!1780 (regex!8256 rule!164) lt!2016020))))

(declare-fun list!17862 (BalanceConc!29078) List!56711)

(assert (=> b!4911300 (= lt!2016020 (list!17862 input!1509))))

(declare-fun b!4911302 () Bool)

(declare-fun matchR!6596 (Regex!13331 List!56711) Bool)

(assert (=> b!4911302 (= e!3069819 (matchR!6596 (regex!8256 rule!164) (_1!33787 lt!2016019)))))

(assert (=> b!4911303 (= e!3069816 (and tp!1381044 tp!1381045))))

(declare-fun res!2097954 () Bool)

(assert (=> start!515416 (=> (not res!2097954) (not e!3069815))))

(get-info :version)

(assert (=> start!515416 (= res!2097954 ((_ is Lexer!7846) thiss!15943))))

(assert (=> start!515416 e!3069815))

(assert (=> start!515416 true))

(assert (=> start!515416 e!3069817))

(declare-fun inv!73166 (BalanceConc!29078) Bool)

(assert (=> start!515416 (and (inv!73166 input!1509) e!3069821)))

(declare-fun b!4911301 () Bool)

(declare-fun lt!2016021 () List!56711)

(declare-datatypes ((Token!15036 0))(
  ( (Token!15037 (value!264426 TokenValue!8566) (rule!11472 Rule!16312) (size!37356 Int) (originalCharacters!8549 List!56711)) )
))
(declare-fun inv!73167 (Token!15036) Bool)

(declare-fun apply!13598 (TokenValueInjection!16440 BalanceConc!29078) TokenValue!8566)

(declare-fun size!37357 (BalanceConc!29078) Int)

(assert (=> b!4911301 (= e!3069822 (inv!73167 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))))

(declare-fun lt!2016015 () Unit!146852)

(declare-fun ForallOf!1191 (Int BalanceConc!29078) Unit!146852)

(declare-fun seqFromList!5996 (List!56711) BalanceConc!29078)

(assert (=> b!4911301 (= lt!2016015 (ForallOf!1191 lambda!244744 (seqFromList!5996 lt!2016021)))))

(assert (=> b!4911301 (= lt!2016021 (list!17862 (_1!33786 lt!2016017)))))

(declare-fun lt!2016014 () Unit!146852)

(assert (=> b!4911301 (= lt!2016014 (ForallOf!1191 lambda!244744 (_1!33786 lt!2016017)))))

(assert (= (and start!515416 res!2097954) b!4911299))

(assert (= (and b!4911299 res!2097952) b!4911297))

(assert (= (and b!4911297 res!2097953) b!4911300))

(assert (= (and b!4911300 (not res!2097955)) b!4911302))

(assert (= (and b!4911300 (not res!2097956)) b!4911296))

(assert (= (and b!4911296 (not res!2097951)) b!4911301))

(assert (= b!4911295 b!4911303))

(assert (= start!515416 b!4911295))

(assert (= start!515416 b!4911298))

(declare-fun m!5921074 () Bool)

(assert (=> b!4911302 m!5921074))

(declare-fun m!5921076 () Bool)

(assert (=> b!4911298 m!5921076))

(declare-fun m!5921078 () Bool)

(assert (=> b!4911295 m!5921078))

(declare-fun m!5921080 () Bool)

(assert (=> b!4911295 m!5921080))

(declare-fun m!5921082 () Bool)

(assert (=> b!4911297 m!5921082))

(declare-fun m!5921084 () Bool)

(assert (=> b!4911297 m!5921084))

(declare-fun m!5921086 () Bool)

(assert (=> start!515416 m!5921086))

(declare-fun m!5921088 () Bool)

(assert (=> b!4911299 m!5921088))

(declare-fun m!5921090 () Bool)

(assert (=> b!4911300 m!5921090))

(declare-fun m!5921092 () Bool)

(assert (=> b!4911300 m!5921092))

(declare-fun m!5921094 () Bool)

(assert (=> b!4911300 m!5921094))

(assert (=> b!4911300 m!5921092))

(assert (=> b!4911300 m!5921094))

(declare-fun m!5921096 () Bool)

(assert (=> b!4911300 m!5921096))

(declare-fun m!5921098 () Bool)

(assert (=> b!4911300 m!5921098))

(declare-fun m!5921100 () Bool)

(assert (=> b!4911300 m!5921100))

(declare-fun m!5921102 () Bool)

(assert (=> b!4911300 m!5921102))

(declare-fun m!5921104 () Bool)

(assert (=> b!4911300 m!5921104))

(declare-fun m!5921106 () Bool)

(assert (=> b!4911296 m!5921106))

(declare-fun m!5921108 () Bool)

(assert (=> b!4911301 m!5921108))

(declare-fun m!5921110 () Bool)

(assert (=> b!4911301 m!5921110))

(declare-fun m!5921112 () Bool)

(assert (=> b!4911301 m!5921112))

(declare-fun m!5921114 () Bool)

(assert (=> b!4911301 m!5921114))

(declare-fun m!5921116 () Bool)

(assert (=> b!4911301 m!5921116))

(declare-fun m!5921118 () Bool)

(assert (=> b!4911301 m!5921118))

(assert (=> b!4911301 m!5921108))

(declare-fun m!5921120 () Bool)

(assert (=> b!4911301 m!5921120))

(check-sat (not b!4911300) (not b!4911297) (not b!4911296) (not b!4911301) (not b_next!132787) b_and!346753 (not b!4911299) b_and!346751 (not b!4911302) (not b_next!132785) (not start!515416) (not b!4911295) (not b!4911298))
(check-sat b_and!346753 b_and!346751 (not b_next!132787) (not b_next!132785))
(get-model)

(declare-fun d!1578273 () Bool)

(declare-fun res!2097963 () Bool)

(declare-fun e!3069831 () Bool)

(assert (=> d!1578273 (=> (not res!2097963) (not e!3069831))))

(declare-fun validRegex!5921 (Regex!13331) Bool)

(assert (=> d!1578273 (= res!2097963 (validRegex!5921 (regex!8256 rule!164)))))

(assert (=> d!1578273 (= (ruleValid!3753 thiss!15943 rule!164) e!3069831)))

(declare-fun b!4911316 () Bool)

(declare-fun res!2097964 () Bool)

(assert (=> b!4911316 (=> (not res!2097964) (not e!3069831))))

(declare-fun nullable!4594 (Regex!13331) Bool)

(assert (=> b!4911316 (= res!2097964 (not (nullable!4594 (regex!8256 rule!164))))))

(declare-fun b!4911317 () Bool)

(assert (=> b!4911317 (= e!3069831 (not (= (tag!9120 rule!164) (String!64272 ""))))))

(assert (= (and d!1578273 res!2097963) b!4911316))

(assert (= (and b!4911316 res!2097964) b!4911317))

(declare-fun m!5921122 () Bool)

(assert (=> d!1578273 m!5921122))

(declare-fun m!5921124 () Bool)

(assert (=> b!4911316 m!5921124))

(assert (=> b!4911299 d!1578273))

(declare-fun d!1578275 () Bool)

(declare-fun dynLambda!22956 (Int BalanceConc!29078) TokenValue!8566)

(assert (=> d!1578275 (= (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (_1!33786 lt!2016017)))))

(declare-fun b_lambda!195969 () Bool)

(assert (=> (not b_lambda!195969) (not d!1578275)))

(declare-fun t!367059 () Bool)

(declare-fun tb!260071 () Bool)

(assert (=> (and b!4911303 (= (toValue!11201 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))) t!367059) tb!260071))

(declare-fun result!323982 () Bool)

(declare-fun inv!21 (TokenValue!8566) Bool)

(assert (=> tb!260071 (= result!323982 (inv!21 (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (_1!33786 lt!2016017))))))

(declare-fun m!5921126 () Bool)

(assert (=> tb!260071 m!5921126))

(assert (=> d!1578275 t!367059))

(declare-fun b_and!346755 () Bool)

(assert (= b_and!346751 (and (=> t!367059 result!323982) b_and!346755)))

(declare-fun m!5921128 () Bool)

(assert (=> d!1578275 m!5921128))

(assert (=> b!4911301 d!1578275))

(declare-fun d!1578277 () Bool)

(declare-fun res!2097969 () Bool)

(declare-fun e!3069837 () Bool)

(assert (=> d!1578277 (=> (not res!2097969) (not e!3069837))))

(assert (=> d!1578277 (= res!2097969 (not (isEmpty!30514 (originalCharacters!8549 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))))))

(assert (=> d!1578277 (= (inv!73167 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)) e!3069837)))

(declare-fun b!4911324 () Bool)

(declare-fun res!2097970 () Bool)

(assert (=> b!4911324 (=> (not res!2097970) (not e!3069837))))

(declare-fun dynLambda!22957 (Int TokenValue!8566) BalanceConc!29078)

(assert (=> b!4911324 (= res!2097970 (= (originalCharacters!8549 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)) (list!17862 (dynLambda!22957 (toChars!11060 (transformation!8256 (rule!11472 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))) (value!264426 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021))))))))

(declare-fun b!4911325 () Bool)

(assert (=> b!4911325 (= e!3069837 (= (size!37356 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)) (size!37355 (originalCharacters!8549 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))))))

(assert (= (and d!1578277 res!2097969) b!4911324))

(assert (= (and b!4911324 res!2097970) b!4911325))

(declare-fun b_lambda!195971 () Bool)

(assert (=> (not b_lambda!195971) (not b!4911324)))

(declare-fun tb!260073 () Bool)

(declare-fun t!367061 () Bool)

(assert (=> (and b!4911303 (= (toChars!11060 (transformation!8256 rule!164)) (toChars!11060 (transformation!8256 (rule!11472 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021))))) t!367061) tb!260073))

(declare-fun e!3069840 () Bool)

(declare-fun tp!1381050 () Bool)

(declare-fun b!4911330 () Bool)

(assert (=> b!4911330 (= e!3069840 (and (inv!73165 (c!834816 (dynLambda!22957 (toChars!11060 (transformation!8256 (rule!11472 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))) (value!264426 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021))))) tp!1381050))))

(declare-fun result!323986 () Bool)

(assert (=> tb!260073 (= result!323986 (and (inv!73166 (dynLambda!22957 (toChars!11060 (transformation!8256 (rule!11472 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))) (value!264426 (Token!15037 (apply!13598 (transformation!8256 rule!164) (_1!33786 lt!2016017)) rule!164 (size!37357 (_1!33786 lt!2016017)) lt!2016021)))) e!3069840))))

(assert (= tb!260073 b!4911330))

(declare-fun m!5921130 () Bool)

(assert (=> b!4911330 m!5921130))

(declare-fun m!5921132 () Bool)

(assert (=> tb!260073 m!5921132))

(assert (=> b!4911324 t!367061))

(declare-fun b_and!346757 () Bool)

(assert (= b_and!346753 (and (=> t!367061 result!323986) b_and!346757)))

(declare-fun m!5921134 () Bool)

(assert (=> d!1578277 m!5921134))

(declare-fun m!5921136 () Bool)

(assert (=> b!4911324 m!5921136))

(assert (=> b!4911324 m!5921136))

(declare-fun m!5921138 () Bool)

(assert (=> b!4911324 m!5921138))

(declare-fun m!5921140 () Bool)

(assert (=> b!4911325 m!5921140))

(assert (=> b!4911301 d!1578277))

(declare-fun d!1578279 () Bool)

(declare-fun dynLambda!22958 (Int BalanceConc!29078) Bool)

(assert (=> d!1578279 (dynLambda!22958 lambda!244744 (seqFromList!5996 lt!2016021))))

(declare-fun lt!2016024 () Unit!146852)

(declare-fun choose!35928 (Int BalanceConc!29078) Unit!146852)

(assert (=> d!1578279 (= lt!2016024 (choose!35928 lambda!244744 (seqFromList!5996 lt!2016021)))))

(assert (=> d!1578279 (Forall!1751 lambda!244744)))

(assert (=> d!1578279 (= (ForallOf!1191 lambda!244744 (seqFromList!5996 lt!2016021)) lt!2016024)))

(declare-fun b_lambda!195973 () Bool)

(assert (=> (not b_lambda!195973) (not d!1578279)))

(declare-fun bs!1177481 () Bool)

(assert (= bs!1177481 d!1578279))

(assert (=> bs!1177481 m!5921108))

(declare-fun m!5921142 () Bool)

(assert (=> bs!1177481 m!5921142))

(assert (=> bs!1177481 m!5921108))

(declare-fun m!5921144 () Bool)

(assert (=> bs!1177481 m!5921144))

(assert (=> bs!1177481 m!5921106))

(assert (=> b!4911301 d!1578279))

(declare-fun d!1578281 () Bool)

(declare-fun lt!2016029 () Int)

(assert (=> d!1578281 (= lt!2016029 (size!37355 (list!17862 (_1!33786 lt!2016017))))))

(declare-fun size!37358 (Conc!14824) Int)

(assert (=> d!1578281 (= lt!2016029 (size!37358 (c!834816 (_1!33786 lt!2016017))))))

(assert (=> d!1578281 (= (size!37357 (_1!33786 lt!2016017)) lt!2016029)))

(declare-fun bs!1177482 () Bool)

(assert (= bs!1177482 d!1578281))

(assert (=> bs!1177482 m!5921112))

(assert (=> bs!1177482 m!5921112))

(declare-fun m!5921146 () Bool)

(assert (=> bs!1177482 m!5921146))

(declare-fun m!5921148 () Bool)

(assert (=> bs!1177482 m!5921148))

(assert (=> b!4911301 d!1578281))

(declare-fun d!1578285 () Bool)

(assert (=> d!1578285 (dynLambda!22958 lambda!244744 (_1!33786 lt!2016017))))

(declare-fun lt!2016031 () Unit!146852)

(assert (=> d!1578285 (= lt!2016031 (choose!35928 lambda!244744 (_1!33786 lt!2016017)))))

(assert (=> d!1578285 (Forall!1751 lambda!244744)))

(assert (=> d!1578285 (= (ForallOf!1191 lambda!244744 (_1!33786 lt!2016017)) lt!2016031)))

(declare-fun b_lambda!195975 () Bool)

(assert (=> (not b_lambda!195975) (not d!1578285)))

(declare-fun bs!1177484 () Bool)

(assert (= bs!1177484 d!1578285))

(declare-fun m!5921154 () Bool)

(assert (=> bs!1177484 m!5921154))

(declare-fun m!5921156 () Bool)

(assert (=> bs!1177484 m!5921156))

(assert (=> bs!1177484 m!5921106))

(assert (=> b!4911301 d!1578285))

(declare-fun d!1578289 () Bool)

(declare-fun fromListB!2721 (List!56711) BalanceConc!29078)

(assert (=> d!1578289 (= (seqFromList!5996 lt!2016021) (fromListB!2721 lt!2016021))))

(declare-fun bs!1177485 () Bool)

(assert (= bs!1177485 d!1578289))

(declare-fun m!5921158 () Bool)

(assert (=> bs!1177485 m!5921158))

(assert (=> b!4911301 d!1578289))

(declare-fun d!1578291 () Bool)

(declare-fun list!17864 (Conc!14824) List!56711)

(assert (=> d!1578291 (= (list!17862 (_1!33786 lt!2016017)) (list!17864 (c!834816 (_1!33786 lt!2016017))))))

(declare-fun bs!1177486 () Bool)

(assert (= bs!1177486 d!1578291))

(declare-fun m!5921160 () Bool)

(assert (=> bs!1177486 m!5921160))

(assert (=> b!4911301 d!1578291))

(declare-fun d!1578293 () Bool)

(assert (=> d!1578293 (= (inv!73159 (tag!9120 rule!164)) (= (mod (str.len (value!264400 (tag!9120 rule!164))) 2) 0))))

(assert (=> b!4911295 d!1578293))

(declare-fun d!1578295 () Bool)

(declare-fun res!2097975 () Bool)

(declare-fun e!3069843 () Bool)

(assert (=> d!1578295 (=> (not res!2097975) (not e!3069843))))

(assert (=> d!1578295 (= res!2097975 (semiInverseModEq!3657 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))))))

(assert (=> d!1578295 (= (inv!73164 (transformation!8256 rule!164)) e!3069843)))

(declare-fun b!4911333 () Bool)

(declare-fun equivClasses!3506 (Int Int) Bool)

(assert (=> b!4911333 (= e!3069843 (equivClasses!3506 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))))))

(assert (= (and d!1578295 res!2097975) b!4911333))

(assert (=> d!1578295 m!5921090))

(declare-fun m!5921162 () Bool)

(assert (=> b!4911333 m!5921162))

(assert (=> b!4911295 d!1578295))

(declare-fun d!1578297 () Bool)

(declare-fun e!3069846 () Bool)

(assert (=> d!1578297 e!3069846))

(declare-fun res!2097978 () Bool)

(assert (=> d!1578297 (=> res!2097978 e!3069846)))

(assert (=> d!1578297 (= res!2097978 (isEmpty!30514 (_1!33787 (findLongestMatchInner!1817 (regex!8256 rule!164) Nil!56587 (size!37355 Nil!56587) lt!2016020 lt!2016020 (size!37355 lt!2016020)))))))

(declare-fun lt!2016043 () Unit!146852)

(declare-fun choose!35930 (Regex!13331 List!56711) Unit!146852)

(assert (=> d!1578297 (= lt!2016043 (choose!35930 (regex!8256 rule!164) lt!2016020))))

(assert (=> d!1578297 (validRegex!5921 (regex!8256 rule!164))))

(assert (=> d!1578297 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1780 (regex!8256 rule!164) lt!2016020) lt!2016043)))

(declare-fun b!4911338 () Bool)

(assert (=> b!4911338 (= e!3069846 (matchR!6596 (regex!8256 rule!164) (_1!33787 (findLongestMatchInner!1817 (regex!8256 rule!164) Nil!56587 (size!37355 Nil!56587) lt!2016020 lt!2016020 (size!37355 lt!2016020)))))))

(assert (= (and d!1578297 (not res!2097978)) b!4911338))

(assert (=> d!1578297 m!5921092))

(declare-fun m!5921188 () Bool)

(assert (=> d!1578297 m!5921188))

(assert (=> d!1578297 m!5921094))

(assert (=> d!1578297 m!5921122))

(declare-fun m!5921190 () Bool)

(assert (=> d!1578297 m!5921190))

(assert (=> d!1578297 m!5921092))

(assert (=> d!1578297 m!5921094))

(assert (=> d!1578297 m!5921096))

(assert (=> b!4911338 m!5921092))

(assert (=> b!4911338 m!5921094))

(assert (=> b!4911338 m!5921092))

(assert (=> b!4911338 m!5921094))

(assert (=> b!4911338 m!5921096))

(declare-fun m!5921192 () Bool)

(assert (=> b!4911338 m!5921192))

(assert (=> b!4911300 d!1578297))

(declare-fun d!1578309 () Bool)

(assert (=> d!1578309 (= (list!17862 input!1509) (list!17864 (c!834816 input!1509)))))

(declare-fun bs!1177491 () Bool)

(assert (= bs!1177491 d!1578309))

(declare-fun m!5921194 () Bool)

(assert (=> bs!1177491 m!5921194))

(assert (=> b!4911300 d!1578309))

(declare-fun call!341052 () tuple2!60968)

(declare-fun lt!2016133 () List!56711)

(declare-fun bm!341044 () Bool)

(declare-fun call!341055 () List!56711)

(declare-fun call!341051 () Regex!13331)

(assert (=> bm!341044 (= call!341052 (findLongestMatchInner!1817 call!341051 lt!2016133 (+ (size!37355 Nil!56587) 1) call!341055 lt!2016020 (size!37355 lt!2016020)))))

(declare-fun b!4911414 () Bool)

(declare-fun e!3069899 () tuple2!60968)

(assert (=> b!4911414 (= e!3069899 (tuple2!60969 Nil!56587 lt!2016020))))

(declare-fun bm!341045 () Bool)

(declare-fun call!341053 () C!26860)

(declare-fun head!10493 (List!56711) C!26860)

(assert (=> bm!341045 (= call!341053 (head!10493 lt!2016020))))

(declare-fun bm!341046 () Bool)

(declare-fun call!341056 () Bool)

(assert (=> bm!341046 (= call!341056 (nullable!4594 (regex!8256 rule!164)))))

(declare-fun bm!341047 () Bool)

(declare-fun call!341054 () Bool)

(declare-fun isPrefix!4933 (List!56711 List!56711) Bool)

(assert (=> bm!341047 (= call!341054 (isPrefix!4933 lt!2016020 lt!2016020))))

(declare-fun b!4911415 () Bool)

(declare-fun e!3069895 () tuple2!60968)

(declare-fun lt!2016127 () tuple2!60968)

(assert (=> b!4911415 (= e!3069895 lt!2016127)))

(declare-fun b!4911416 () Bool)

(declare-fun e!3069894 () Unit!146852)

(declare-fun Unit!146854 () Unit!146852)

(assert (=> b!4911416 (= e!3069894 Unit!146854)))

(declare-fun lt!2016119 () Unit!146852)

(declare-fun call!341049 () Unit!146852)

(assert (=> b!4911416 (= lt!2016119 call!341049)))

(assert (=> b!4911416 call!341054))

(declare-fun lt!2016117 () Unit!146852)

(assert (=> b!4911416 (= lt!2016117 lt!2016119)))

(declare-fun lt!2016129 () Unit!146852)

(declare-fun call!341050 () Unit!146852)

(assert (=> b!4911416 (= lt!2016129 call!341050)))

(assert (=> b!4911416 (= lt!2016020 Nil!56587)))

(declare-fun lt!2016128 () Unit!146852)

(assert (=> b!4911416 (= lt!2016128 lt!2016129)))

(assert (=> b!4911416 false))

(declare-fun b!4911417 () Bool)

(declare-fun e!3069898 () tuple2!60968)

(assert (=> b!4911417 (= e!3069898 (tuple2!60969 Nil!56587 lt!2016020))))

(declare-fun b!4911418 () Bool)

(declare-fun e!3069900 () tuple2!60968)

(assert (=> b!4911418 (= e!3069899 e!3069900)))

(declare-fun c!834836 () Bool)

(assert (=> b!4911418 (= c!834836 (= (size!37355 Nil!56587) (size!37355 lt!2016020)))))

(declare-fun bm!341048 () Bool)

(declare-fun lemmaIsPrefixRefl!3330 (List!56711 List!56711) Unit!146852)

(assert (=> bm!341048 (= call!341049 (lemmaIsPrefixRefl!3330 lt!2016020 lt!2016020))))

(declare-fun bm!341049 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1092 (List!56711 List!56711 List!56711) Unit!146852)

(assert (=> bm!341049 (= call!341050 (lemmaIsPrefixSameLengthThenSameList!1092 lt!2016020 Nil!56587 lt!2016020))))

(declare-fun b!4911419 () Bool)

(declare-fun c!834837 () Bool)

(assert (=> b!4911419 (= c!834837 call!341056)))

(declare-fun lt!2016131 () Unit!146852)

(declare-fun lt!2016115 () Unit!146852)

(assert (=> b!4911419 (= lt!2016131 lt!2016115)))

(assert (=> b!4911419 (= lt!2016020 Nil!56587)))

(assert (=> b!4911419 (= lt!2016115 call!341050)))

(declare-fun lt!2016132 () Unit!146852)

(declare-fun lt!2016123 () Unit!146852)

(assert (=> b!4911419 (= lt!2016132 lt!2016123)))

(assert (=> b!4911419 call!341054))

(assert (=> b!4911419 (= lt!2016123 call!341049)))

(assert (=> b!4911419 (= e!3069900 e!3069898)))

(declare-fun bm!341050 () Bool)

(declare-fun derivativeStep!3912 (Regex!13331 C!26860) Regex!13331)

(assert (=> bm!341050 (= call!341051 (derivativeStep!3912 (regex!8256 rule!164) call!341053))))

(declare-fun b!4911420 () Bool)

(declare-fun e!3069901 () Bool)

(declare-fun e!3069896 () Bool)

(assert (=> b!4911420 (= e!3069901 e!3069896)))

(declare-fun res!2098008 () Bool)

(assert (=> b!4911420 (=> res!2098008 e!3069896)))

(declare-fun lt!2016118 () tuple2!60968)

(assert (=> b!4911420 (= res!2098008 (isEmpty!30514 (_1!33787 lt!2016118)))))

(declare-fun b!4911421 () Bool)

(assert (=> b!4911421 (= e!3069896 (>= (size!37355 (_1!33787 lt!2016118)) (size!37355 Nil!56587)))))

(declare-fun b!4911422 () Bool)

(assert (=> b!4911422 (= e!3069895 (tuple2!60969 Nil!56587 lt!2016020))))

(declare-fun b!4911423 () Bool)

(assert (=> b!4911423 (= e!3069898 (tuple2!60969 Nil!56587 Nil!56587))))

(declare-fun b!4911424 () Bool)

(declare-fun e!3069897 () tuple2!60968)

(assert (=> b!4911424 (= e!3069897 call!341052)))

(declare-fun b!4911425 () Bool)

(declare-fun c!834841 () Bool)

(assert (=> b!4911425 (= c!834841 call!341056)))

(declare-fun lt!2016122 () Unit!146852)

(declare-fun lt!2016112 () Unit!146852)

(assert (=> b!4911425 (= lt!2016122 lt!2016112)))

(declare-fun lt!2016125 () C!26860)

(declare-fun lt!2016134 () List!56711)

(declare-fun ++!12280 (List!56711 List!56711) List!56711)

(assert (=> b!4911425 (= (++!12280 (++!12280 Nil!56587 (Cons!56587 lt!2016125 Nil!56587)) lt!2016134) lt!2016020)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1364 (List!56711 C!26860 List!56711 List!56711) Unit!146852)

(assert (=> b!4911425 (= lt!2016112 (lemmaMoveElementToOtherListKeepsConcatEq!1364 Nil!56587 lt!2016125 lt!2016134 lt!2016020))))

(declare-fun tail!9640 (List!56711) List!56711)

(assert (=> b!4911425 (= lt!2016134 (tail!9640 lt!2016020))))

(assert (=> b!4911425 (= lt!2016125 (head!10493 lt!2016020))))

(declare-fun lt!2016111 () Unit!146852)

(declare-fun lt!2016124 () Unit!146852)

(assert (=> b!4911425 (= lt!2016111 lt!2016124)))

(declare-fun getSuffix!2921 (List!56711 List!56711) List!56711)

(assert (=> b!4911425 (isPrefix!4933 (++!12280 Nil!56587 (Cons!56587 (head!10493 (getSuffix!2921 lt!2016020 Nil!56587)) Nil!56587)) lt!2016020)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!746 (List!56711 List!56711) Unit!146852)

(assert (=> b!4911425 (= lt!2016124 (lemmaAddHeadSuffixToPrefixStillPrefix!746 Nil!56587 lt!2016020))))

(declare-fun lt!2016113 () Unit!146852)

(declare-fun lt!2016110 () Unit!146852)

(assert (=> b!4911425 (= lt!2016113 lt!2016110)))

(assert (=> b!4911425 (= lt!2016110 (lemmaAddHeadSuffixToPrefixStillPrefix!746 Nil!56587 lt!2016020))))

(assert (=> b!4911425 (= lt!2016133 (++!12280 Nil!56587 (Cons!56587 (head!10493 lt!2016020) Nil!56587)))))

(declare-fun lt!2016135 () Unit!146852)

(assert (=> b!4911425 (= lt!2016135 e!3069894)))

(declare-fun c!834839 () Bool)

(assert (=> b!4911425 (= c!834839 (= (size!37355 Nil!56587) (size!37355 lt!2016020)))))

(declare-fun lt!2016108 () Unit!146852)

(declare-fun lt!2016126 () Unit!146852)

(assert (=> b!4911425 (= lt!2016108 lt!2016126)))

(assert (=> b!4911425 (<= (size!37355 Nil!56587) (size!37355 lt!2016020))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!658 (List!56711 List!56711) Unit!146852)

(assert (=> b!4911425 (= lt!2016126 (lemmaIsPrefixThenSmallerEqSize!658 Nil!56587 lt!2016020))))

(assert (=> b!4911425 (= e!3069900 e!3069897)))

(declare-fun b!4911426 () Bool)

(assert (=> b!4911426 (= e!3069897 e!3069895)))

(assert (=> b!4911426 (= lt!2016127 call!341052)))

(declare-fun c!834840 () Bool)

(assert (=> b!4911426 (= c!834840 (isEmpty!30514 (_1!33787 lt!2016127)))))

(declare-fun d!1578311 () Bool)

(assert (=> d!1578311 e!3069901))

(declare-fun res!2098007 () Bool)

(assert (=> d!1578311 (=> (not res!2098007) (not e!3069901))))

(assert (=> d!1578311 (= res!2098007 (= (++!12280 (_1!33787 lt!2016118) (_2!33787 lt!2016118)) lt!2016020))))

(assert (=> d!1578311 (= lt!2016118 e!3069899)))

(declare-fun c!834838 () Bool)

(declare-fun lostCause!1120 (Regex!13331) Bool)

(assert (=> d!1578311 (= c!834838 (lostCause!1120 (regex!8256 rule!164)))))

(declare-fun lt!2016121 () Unit!146852)

(declare-fun Unit!146855 () Unit!146852)

(assert (=> d!1578311 (= lt!2016121 Unit!146855)))

(assert (=> d!1578311 (= (getSuffix!2921 lt!2016020 Nil!56587) lt!2016020)))

(declare-fun lt!2016120 () Unit!146852)

(declare-fun lt!2016116 () Unit!146852)

(assert (=> d!1578311 (= lt!2016120 lt!2016116)))

(declare-fun lt!2016114 () List!56711)

(assert (=> d!1578311 (= lt!2016020 lt!2016114)))

(declare-fun lemmaSamePrefixThenSameSuffix!2337 (List!56711 List!56711 List!56711 List!56711 List!56711) Unit!146852)

(assert (=> d!1578311 (= lt!2016116 (lemmaSamePrefixThenSameSuffix!2337 Nil!56587 lt!2016020 Nil!56587 lt!2016114 lt!2016020))))

(assert (=> d!1578311 (= lt!2016114 (getSuffix!2921 lt!2016020 Nil!56587))))

(declare-fun lt!2016130 () Unit!146852)

(declare-fun lt!2016109 () Unit!146852)

(assert (=> d!1578311 (= lt!2016130 lt!2016109)))

(assert (=> d!1578311 (isPrefix!4933 Nil!56587 (++!12280 Nil!56587 lt!2016020))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3157 (List!56711 List!56711) Unit!146852)

(assert (=> d!1578311 (= lt!2016109 (lemmaConcatTwoListThenFirstIsPrefix!3157 Nil!56587 lt!2016020))))

(assert (=> d!1578311 (validRegex!5921 (regex!8256 rule!164))))

(assert (=> d!1578311 (= (findLongestMatchInner!1817 (regex!8256 rule!164) Nil!56587 (size!37355 Nil!56587) lt!2016020 lt!2016020 (size!37355 lt!2016020)) lt!2016118)))

(declare-fun b!4911427 () Bool)

(declare-fun Unit!146856 () Unit!146852)

(assert (=> b!4911427 (= e!3069894 Unit!146856)))

(declare-fun bm!341051 () Bool)

(assert (=> bm!341051 (= call!341055 (tail!9640 lt!2016020))))

(assert (= (and d!1578311 c!834838) b!4911414))

(assert (= (and d!1578311 (not c!834838)) b!4911418))

(assert (= (and b!4911418 c!834836) b!4911419))

(assert (= (and b!4911418 (not c!834836)) b!4911425))

(assert (= (and b!4911419 c!834837) b!4911423))

(assert (= (and b!4911419 (not c!834837)) b!4911417))

(assert (= (and b!4911425 c!834839) b!4911416))

(assert (= (and b!4911425 (not c!834839)) b!4911427))

(assert (= (and b!4911425 c!834841) b!4911426))

(assert (= (and b!4911425 (not c!834841)) b!4911424))

(assert (= (and b!4911426 c!834840) b!4911422))

(assert (= (and b!4911426 (not c!834840)) b!4911415))

(assert (= (or b!4911426 b!4911424) bm!341045))

(assert (= (or b!4911426 b!4911424) bm!341051))

(assert (= (or b!4911426 b!4911424) bm!341050))

(assert (= (or b!4911426 b!4911424) bm!341044))

(assert (= (or b!4911419 b!4911416) bm!341047))

(assert (= (or b!4911419 b!4911416) bm!341048))

(assert (= (or b!4911419 b!4911416) bm!341049))

(assert (= (or b!4911419 b!4911425) bm!341046))

(assert (= (and d!1578311 res!2098007) b!4911420))

(assert (= (and b!4911420 (not res!2098008)) b!4911421))

(declare-fun m!5921240 () Bool)

(assert (=> bm!341045 m!5921240))

(declare-fun m!5921242 () Bool)

(assert (=> bm!341047 m!5921242))

(declare-fun m!5921244 () Bool)

(assert (=> b!4911426 m!5921244))

(declare-fun m!5921246 () Bool)

(assert (=> bm!341050 m!5921246))

(assert (=> bm!341046 m!5921124))

(assert (=> bm!341044 m!5921094))

(declare-fun m!5921248 () Bool)

(assert (=> bm!341044 m!5921248))

(declare-fun m!5921250 () Bool)

(assert (=> bm!341051 m!5921250))

(assert (=> b!4911425 m!5921250))

(declare-fun m!5921252 () Bool)

(assert (=> b!4911425 m!5921252))

(declare-fun m!5921254 () Bool)

(assert (=> b!4911425 m!5921254))

(declare-fun m!5921256 () Bool)

(assert (=> b!4911425 m!5921256))

(declare-fun m!5921258 () Bool)

(assert (=> b!4911425 m!5921258))

(declare-fun m!5921260 () Bool)

(assert (=> b!4911425 m!5921260))

(assert (=> b!4911425 m!5921256))

(declare-fun m!5921262 () Bool)

(assert (=> b!4911425 m!5921262))

(declare-fun m!5921264 () Bool)

(assert (=> b!4911425 m!5921264))

(declare-fun m!5921266 () Bool)

(assert (=> b!4911425 m!5921266))

(assert (=> b!4911425 m!5921092))

(declare-fun m!5921268 () Bool)

(assert (=> b!4911425 m!5921268))

(assert (=> b!4911425 m!5921240))

(assert (=> b!4911425 m!5921264))

(assert (=> b!4911425 m!5921262))

(declare-fun m!5921270 () Bool)

(assert (=> b!4911425 m!5921270))

(assert (=> b!4911425 m!5921094))

(declare-fun m!5921272 () Bool)

(assert (=> bm!341049 m!5921272))

(declare-fun m!5921274 () Bool)

(assert (=> d!1578311 m!5921274))

(declare-fun m!5921276 () Bool)

(assert (=> d!1578311 m!5921276))

(declare-fun m!5921278 () Bool)

(assert (=> d!1578311 m!5921278))

(assert (=> d!1578311 m!5921262))

(assert (=> d!1578311 m!5921122))

(declare-fun m!5921280 () Bool)

(assert (=> d!1578311 m!5921280))

(declare-fun m!5921282 () Bool)

(assert (=> d!1578311 m!5921282))

(assert (=> d!1578311 m!5921280))

(declare-fun m!5921284 () Bool)

(assert (=> d!1578311 m!5921284))

(declare-fun m!5921286 () Bool)

(assert (=> b!4911420 m!5921286))

(declare-fun m!5921288 () Bool)

(assert (=> b!4911421 m!5921288))

(assert (=> b!4911421 m!5921092))

(declare-fun m!5921290 () Bool)

(assert (=> bm!341048 m!5921290))

(assert (=> b!4911300 d!1578311))

(declare-fun d!1578345 () Bool)

(declare-fun e!3069904 () Bool)

(assert (=> d!1578345 e!3069904))

(declare-fun res!2098011 () Bool)

(assert (=> d!1578345 (=> (not res!2098011) (not e!3069904))))

(assert (=> d!1578345 (= res!2098011 (semiInverseModEq!3657 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))))))

(declare-fun Unit!146858 () Unit!146852)

(assert (=> d!1578345 (= (lemmaInv!1298 (transformation!8256 rule!164)) Unit!146858)))

(declare-fun b!4911430 () Bool)

(assert (=> b!4911430 (= e!3069904 (equivClasses!3506 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))))))

(assert (= (and d!1578345 res!2098011) b!4911430))

(assert (=> d!1578345 m!5921090))

(assert (=> b!4911430 m!5921162))

(assert (=> b!4911300 d!1578345))

(declare-fun bs!1177499 () Bool)

(declare-fun d!1578347 () Bool)

(assert (= bs!1177499 (and d!1578347 b!4911296)))

(declare-fun lambda!244750 () Int)

(assert (=> bs!1177499 (= lambda!244750 lambda!244744)))

(assert (=> d!1578347 true))

(assert (=> d!1578347 (< (dynLambda!22955 order!25921 (toChars!11060 (transformation!8256 rule!164))) (dynLambda!22954 order!25919 lambda!244750))))

(assert (=> d!1578347 true))

(assert (=> d!1578347 (< (dynLambda!22953 order!25917 (toValue!11201 (transformation!8256 rule!164))) (dynLambda!22954 order!25919 lambda!244750))))

(assert (=> d!1578347 (= (semiInverseModEq!3657 (toChars!11060 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))) (Forall!1751 lambda!244750))))

(declare-fun bs!1177500 () Bool)

(assert (= bs!1177500 d!1578347))

(declare-fun m!5921292 () Bool)

(assert (=> bs!1177500 m!5921292))

(assert (=> b!4911300 d!1578347))

(declare-fun d!1578349 () Bool)

(assert (=> d!1578349 (= (isEmpty!30514 (_1!33787 lt!2016019)) ((_ is Nil!56587) (_1!33787 lt!2016019)))))

(assert (=> b!4911300 d!1578349))

(declare-fun d!1578351 () Bool)

(declare-fun lt!2016138 () Int)

(assert (=> d!1578351 (>= lt!2016138 0)))

(declare-fun e!3069907 () Int)

(assert (=> d!1578351 (= lt!2016138 e!3069907)))

(declare-fun c!834844 () Bool)

(assert (=> d!1578351 (= c!834844 ((_ is Nil!56587) lt!2016020))))

(assert (=> d!1578351 (= (size!37355 lt!2016020) lt!2016138)))

(declare-fun b!4911439 () Bool)

(assert (=> b!4911439 (= e!3069907 0)))

(declare-fun b!4911440 () Bool)

(assert (=> b!4911440 (= e!3069907 (+ 1 (size!37355 (t!367057 lt!2016020))))))

(assert (= (and d!1578351 c!834844) b!4911439))

(assert (= (and d!1578351 (not c!834844)) b!4911440))

(declare-fun m!5921294 () Bool)

(assert (=> b!4911440 m!5921294))

(assert (=> b!4911300 d!1578351))

(declare-fun d!1578353 () Bool)

(declare-fun lt!2016139 () Int)

(assert (=> d!1578353 (>= lt!2016139 0)))

(declare-fun e!3069908 () Int)

(assert (=> d!1578353 (= lt!2016139 e!3069908)))

(declare-fun c!834845 () Bool)

(assert (=> d!1578353 (= c!834845 ((_ is Nil!56587) Nil!56587))))

(assert (=> d!1578353 (= (size!37355 Nil!56587) lt!2016139)))

(declare-fun b!4911441 () Bool)

(assert (=> b!4911441 (= e!3069908 0)))

(declare-fun b!4911442 () Bool)

(assert (=> b!4911442 (= e!3069908 (+ 1 (size!37355 (t!367057 Nil!56587))))))

(assert (= (and d!1578353 c!834845) b!4911441))

(assert (= (and d!1578353 (not c!834845)) b!4911442))

(declare-fun m!5921296 () Bool)

(assert (=> b!4911442 m!5921296))

(assert (=> b!4911300 d!1578353))

(declare-fun d!1578355 () Bool)

(declare-fun lt!2016142 () Bool)

(assert (=> d!1578355 (= lt!2016142 (isEmpty!30514 (list!17862 (_1!33786 lt!2016017))))))

(declare-fun isEmpty!30516 (Conc!14824) Bool)

(assert (=> d!1578355 (= lt!2016142 (isEmpty!30516 (c!834816 (_1!33786 lt!2016017))))))

(assert (=> d!1578355 (= (isEmpty!30513 (_1!33786 lt!2016017)) lt!2016142)))

(declare-fun bs!1177501 () Bool)

(assert (= bs!1177501 d!1578355))

(assert (=> bs!1177501 m!5921112))

(assert (=> bs!1177501 m!5921112))

(declare-fun m!5921298 () Bool)

(assert (=> bs!1177501 m!5921298))

(declare-fun m!5921300 () Bool)

(assert (=> bs!1177501 m!5921300))

(assert (=> b!4911297 d!1578355))

(declare-fun d!1578357 () Bool)

(declare-fun lt!2016145 () tuple2!60966)

(declare-fun findLongestMatch!1684 (Regex!13331 List!56711) tuple2!60968)

(assert (=> d!1578357 (= (tuple2!60969 (list!17862 (_1!33786 lt!2016145)) (list!17862 (_2!33786 lt!2016145))) (findLongestMatch!1684 (regex!8256 rule!164) (list!17862 input!1509)))))

(declare-fun choose!35933 (Regex!13331 BalanceConc!29078) tuple2!60966)

(assert (=> d!1578357 (= lt!2016145 (choose!35933 (regex!8256 rule!164) input!1509))))

(assert (=> d!1578357 (validRegex!5921 (regex!8256 rule!164))))

(assert (=> d!1578357 (= (findLongestMatchWithZipperSequence!344 (regex!8256 rule!164) input!1509) lt!2016145)))

(declare-fun bs!1177502 () Bool)

(assert (= bs!1177502 d!1578357))

(assert (=> bs!1177502 m!5921122))

(declare-fun m!5921302 () Bool)

(assert (=> bs!1177502 m!5921302))

(declare-fun m!5921304 () Bool)

(assert (=> bs!1177502 m!5921304))

(declare-fun m!5921306 () Bool)

(assert (=> bs!1177502 m!5921306))

(assert (=> bs!1177502 m!5921102))

(assert (=> bs!1177502 m!5921102))

(declare-fun m!5921308 () Bool)

(assert (=> bs!1177502 m!5921308))

(assert (=> b!4911297 d!1578357))

(declare-fun b!4911499 () Bool)

(declare-fun res!2098032 () Bool)

(declare-fun e!3069941 () Bool)

(assert (=> b!4911499 (=> res!2098032 e!3069941)))

(assert (=> b!4911499 (= res!2098032 (not ((_ is ElementMatch!13331) (regex!8256 rule!164))))))

(declare-fun e!3069939 () Bool)

(assert (=> b!4911499 (= e!3069939 e!3069941)))

(declare-fun b!4911500 () Bool)

(declare-fun e!3069945 () Bool)

(declare-fun lt!2016204 () Bool)

(declare-fun call!341075 () Bool)

(assert (=> b!4911500 (= e!3069945 (= lt!2016204 call!341075))))

(declare-fun b!4911501 () Bool)

(declare-fun e!3069940 () Bool)

(assert (=> b!4911501 (= e!3069940 (not (= (head!10493 (_1!33787 lt!2016019)) (c!834815 (regex!8256 rule!164)))))))

(declare-fun d!1578359 () Bool)

(assert (=> d!1578359 e!3069945))

(declare-fun c!834864 () Bool)

(assert (=> d!1578359 (= c!834864 ((_ is EmptyExpr!13331) (regex!8256 rule!164)))))

(declare-fun e!3069942 () Bool)

(assert (=> d!1578359 (= lt!2016204 e!3069942)))

(declare-fun c!834865 () Bool)

(assert (=> d!1578359 (= c!834865 (isEmpty!30514 (_1!33787 lt!2016019)))))

(assert (=> d!1578359 (validRegex!5921 (regex!8256 rule!164))))

(assert (=> d!1578359 (= (matchR!6596 (regex!8256 rule!164) (_1!33787 lt!2016019)) lt!2016204)))

(declare-fun b!4911502 () Bool)

(declare-fun res!2098036 () Bool)

(declare-fun e!3069943 () Bool)

(assert (=> b!4911502 (=> (not res!2098036) (not e!3069943))))

(assert (=> b!4911502 (= res!2098036 (isEmpty!30514 (tail!9640 (_1!33787 lt!2016019))))))

(declare-fun b!4911503 () Bool)

(declare-fun res!2098034 () Bool)

(assert (=> b!4911503 (=> res!2098034 e!3069941)))

(assert (=> b!4911503 (= res!2098034 e!3069943)))

(declare-fun res!2098033 () Bool)

(assert (=> b!4911503 (=> (not res!2098033) (not e!3069943))))

(assert (=> b!4911503 (= res!2098033 lt!2016204)))

(declare-fun b!4911504 () Bool)

(declare-fun e!3069944 () Bool)

(assert (=> b!4911504 (= e!3069944 e!3069940)))

(declare-fun res!2098039 () Bool)

(assert (=> b!4911504 (=> res!2098039 e!3069940)))

(assert (=> b!4911504 (= res!2098039 call!341075)))

(declare-fun b!4911505 () Bool)

(assert (=> b!4911505 (= e!3069942 (matchR!6596 (derivativeStep!3912 (regex!8256 rule!164) (head!10493 (_1!33787 lt!2016019))) (tail!9640 (_1!33787 lt!2016019))))))

(declare-fun b!4911506 () Bool)

(declare-fun res!2098038 () Bool)

(assert (=> b!4911506 (=> res!2098038 e!3069940)))

(assert (=> b!4911506 (= res!2098038 (not (isEmpty!30514 (tail!9640 (_1!33787 lt!2016019)))))))

(declare-fun b!4911507 () Bool)

(declare-fun res!2098037 () Bool)

(assert (=> b!4911507 (=> (not res!2098037) (not e!3069943))))

(assert (=> b!4911507 (= res!2098037 (not call!341075))))

(declare-fun bm!341070 () Bool)

(assert (=> bm!341070 (= call!341075 (isEmpty!30514 (_1!33787 lt!2016019)))))

(declare-fun b!4911508 () Bool)

(assert (=> b!4911508 (= e!3069943 (= (head!10493 (_1!33787 lt!2016019)) (c!834815 (regex!8256 rule!164))))))

(declare-fun b!4911509 () Bool)

(assert (=> b!4911509 (= e!3069942 (nullable!4594 (regex!8256 rule!164)))))

(declare-fun b!4911510 () Bool)

(assert (=> b!4911510 (= e!3069945 e!3069939)))

(declare-fun c!834866 () Bool)

(assert (=> b!4911510 (= c!834866 ((_ is EmptyLang!13331) (regex!8256 rule!164)))))

(declare-fun b!4911511 () Bool)

(assert (=> b!4911511 (= e!3069941 e!3069944)))

(declare-fun res!2098035 () Bool)

(assert (=> b!4911511 (=> (not res!2098035) (not e!3069944))))

(assert (=> b!4911511 (= res!2098035 (not lt!2016204))))

(declare-fun b!4911512 () Bool)

(assert (=> b!4911512 (= e!3069939 (not lt!2016204))))

(assert (= (and d!1578359 c!834865) b!4911509))

(assert (= (and d!1578359 (not c!834865)) b!4911505))

(assert (= (and d!1578359 c!834864) b!4911500))

(assert (= (and d!1578359 (not c!834864)) b!4911510))

(assert (= (and b!4911510 c!834866) b!4911512))

(assert (= (and b!4911510 (not c!834866)) b!4911499))

(assert (= (and b!4911499 (not res!2098032)) b!4911503))

(assert (= (and b!4911503 res!2098033) b!4911507))

(assert (= (and b!4911507 res!2098037) b!4911502))

(assert (= (and b!4911502 res!2098036) b!4911508))

(assert (= (and b!4911503 (not res!2098034)) b!4911511))

(assert (= (and b!4911511 res!2098035) b!4911504))

(assert (= (and b!4911504 (not res!2098039)) b!4911506))

(assert (= (and b!4911506 (not res!2098038)) b!4911501))

(assert (= (or b!4911500 b!4911504 b!4911507) bm!341070))

(assert (=> b!4911509 m!5921124))

(declare-fun m!5921310 () Bool)

(assert (=> b!4911502 m!5921310))

(assert (=> b!4911502 m!5921310))

(declare-fun m!5921312 () Bool)

(assert (=> b!4911502 m!5921312))

(assert (=> b!4911506 m!5921310))

(assert (=> b!4911506 m!5921310))

(assert (=> b!4911506 m!5921312))

(declare-fun m!5921314 () Bool)

(assert (=> b!4911501 m!5921314))

(assert (=> bm!341070 m!5921098))

(assert (=> b!4911508 m!5921314))

(assert (=> b!4911505 m!5921314))

(assert (=> b!4911505 m!5921314))

(declare-fun m!5921316 () Bool)

(assert (=> b!4911505 m!5921316))

(assert (=> b!4911505 m!5921310))

(assert (=> b!4911505 m!5921316))

(assert (=> b!4911505 m!5921310))

(declare-fun m!5921318 () Bool)

(assert (=> b!4911505 m!5921318))

(assert (=> d!1578359 m!5921098))

(assert (=> d!1578359 m!5921122))

(assert (=> b!4911302 d!1578359))

(declare-fun d!1578361 () Bool)

(declare-fun choose!35934 (Int) Bool)

(assert (=> d!1578361 (= (Forall!1751 lambda!244744) (choose!35934 lambda!244744))))

(declare-fun bs!1177503 () Bool)

(assert (= bs!1177503 d!1578361))

(declare-fun m!5921320 () Bool)

(assert (=> bs!1177503 m!5921320))

(assert (=> b!4911296 d!1578361))

(declare-fun d!1578363 () Bool)

(declare-fun c!834875 () Bool)

(assert (=> d!1578363 (= c!834875 ((_ is Node!14824) (c!834816 input!1509)))))

(declare-fun e!3069958 () Bool)

(assert (=> d!1578363 (= (inv!73165 (c!834816 input!1509)) e!3069958)))

(declare-fun b!4911533 () Bool)

(declare-fun inv!73170 (Conc!14824) Bool)

(assert (=> b!4911533 (= e!3069958 (inv!73170 (c!834816 input!1509)))))

(declare-fun b!4911534 () Bool)

(declare-fun e!3069959 () Bool)

(assert (=> b!4911534 (= e!3069958 e!3069959)))

(declare-fun res!2098044 () Bool)

(assert (=> b!4911534 (= res!2098044 (not ((_ is Leaf!24669) (c!834816 input!1509))))))

(assert (=> b!4911534 (=> res!2098044 e!3069959)))

(declare-fun b!4911535 () Bool)

(declare-fun inv!73171 (Conc!14824) Bool)

(assert (=> b!4911535 (= e!3069959 (inv!73171 (c!834816 input!1509)))))

(assert (= (and d!1578363 c!834875) b!4911533))

(assert (= (and d!1578363 (not c!834875)) b!4911534))

(assert (= (and b!4911534 (not res!2098044)) b!4911535))

(declare-fun m!5921322 () Bool)

(assert (=> b!4911533 m!5921322))

(declare-fun m!5921324 () Bool)

(assert (=> b!4911535 m!5921324))

(assert (=> b!4911298 d!1578363))

(declare-fun d!1578365 () Bool)

(declare-fun isBalanced!4052 (Conc!14824) Bool)

(assert (=> d!1578365 (= (inv!73166 input!1509) (isBalanced!4052 (c!834816 input!1509)))))

(declare-fun bs!1177504 () Bool)

(assert (= bs!1177504 d!1578365))

(declare-fun m!5921378 () Bool)

(assert (=> bs!1177504 m!5921378))

(assert (=> start!515416 d!1578365))

(declare-fun b!4911549 () Bool)

(declare-fun e!3069962 () Bool)

(declare-fun tp!1381066 () Bool)

(declare-fun tp!1381065 () Bool)

(assert (=> b!4911549 (= e!3069962 (and tp!1381066 tp!1381065))))

(declare-fun b!4911546 () Bool)

(declare-fun tp_is_empty!35865 () Bool)

(assert (=> b!4911546 (= e!3069962 tp_is_empty!35865)))

(declare-fun b!4911548 () Bool)

(declare-fun tp!1381067 () Bool)

(assert (=> b!4911548 (= e!3069962 tp!1381067)))

(assert (=> b!4911295 (= tp!1381047 e!3069962)))

(declare-fun b!4911547 () Bool)

(declare-fun tp!1381064 () Bool)

(declare-fun tp!1381068 () Bool)

(assert (=> b!4911547 (= e!3069962 (and tp!1381064 tp!1381068))))

(assert (= (and b!4911295 ((_ is ElementMatch!13331) (regex!8256 rule!164))) b!4911546))

(assert (= (and b!4911295 ((_ is Concat!21897) (regex!8256 rule!164))) b!4911547))

(assert (= (and b!4911295 ((_ is Star!13331) (regex!8256 rule!164))) b!4911548))

(assert (= (and b!4911295 ((_ is Union!13331) (regex!8256 rule!164))) b!4911549))

(declare-fun e!3069981 () Bool)

(declare-fun b!4911586 () Bool)

(declare-fun tp!1381075 () Bool)

(declare-fun tp!1381077 () Bool)

(assert (=> b!4911586 (= e!3069981 (and (inv!73165 (left!41238 (c!834816 input!1509))) tp!1381075 (inv!73165 (right!41568 (c!834816 input!1509))) tp!1381077))))

(declare-fun b!4911588 () Bool)

(declare-fun e!3069982 () Bool)

(declare-fun tp!1381076 () Bool)

(assert (=> b!4911588 (= e!3069982 tp!1381076)))

(declare-fun b!4911587 () Bool)

(declare-fun inv!73172 (IArray!29709) Bool)

(assert (=> b!4911587 (= e!3069981 (and (inv!73172 (xs!18140 (c!834816 input!1509))) e!3069982))))

(assert (=> b!4911298 (= tp!1381046 (and (inv!73165 (c!834816 input!1509)) e!3069981))))

(assert (= (and b!4911298 ((_ is Node!14824) (c!834816 input!1509))) b!4911586))

(assert (= b!4911587 b!4911588))

(assert (= (and b!4911298 ((_ is Leaf!24669) (c!834816 input!1509))) b!4911587))

(declare-fun m!5921380 () Bool)

(assert (=> b!4911586 m!5921380))

(declare-fun m!5921382 () Bool)

(assert (=> b!4911586 m!5921382))

(declare-fun m!5921384 () Bool)

(assert (=> b!4911587 m!5921384))

(assert (=> b!4911298 m!5921076))

(declare-fun b_lambda!195985 () Bool)

(assert (= b_lambda!195975 (or b!4911296 b_lambda!195985)))

(declare-fun bs!1177505 () Bool)

(declare-fun d!1578369 () Bool)

(assert (= bs!1177505 (and d!1578369 b!4911296)))

(assert (=> bs!1177505 (= (dynLambda!22958 lambda!244744 (_1!33786 lt!2016017)) (= (list!17862 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (_1!33786 lt!2016017)))) (list!17862 (_1!33786 lt!2016017))))))

(declare-fun b_lambda!195991 () Bool)

(assert (=> (not b_lambda!195991) (not bs!1177505)))

(declare-fun t!367067 () Bool)

(declare-fun tb!260079 () Bool)

(assert (=> (and b!4911303 (= (toChars!11060 (transformation!8256 rule!164)) (toChars!11060 (transformation!8256 rule!164))) t!367067) tb!260079))

(declare-fun b!4911589 () Bool)

(declare-fun e!3069983 () Bool)

(declare-fun tp!1381078 () Bool)

(assert (=> b!4911589 (= e!3069983 (and (inv!73165 (c!834816 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (_1!33786 lt!2016017))))) tp!1381078))))

(declare-fun result!324002 () Bool)

(assert (=> tb!260079 (= result!324002 (and (inv!73166 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (_1!33786 lt!2016017)))) e!3069983))))

(assert (= tb!260079 b!4911589))

(declare-fun m!5921386 () Bool)

(assert (=> b!4911589 m!5921386))

(declare-fun m!5921388 () Bool)

(assert (=> tb!260079 m!5921388))

(assert (=> bs!1177505 t!367067))

(declare-fun b_and!346763 () Bool)

(assert (= b_and!346757 (and (=> t!367067 result!324002) b_and!346763)))

(declare-fun b_lambda!195993 () Bool)

(assert (=> (not b_lambda!195993) (not bs!1177505)))

(assert (=> bs!1177505 t!367059))

(declare-fun b_and!346765 () Bool)

(assert (= b_and!346755 (and (=> t!367059 result!323982) b_and!346765)))

(declare-fun m!5921390 () Bool)

(assert (=> bs!1177505 m!5921390))

(declare-fun m!5921392 () Bool)

(assert (=> bs!1177505 m!5921392))

(assert (=> bs!1177505 m!5921112))

(assert (=> bs!1177505 m!5921128))

(assert (=> bs!1177505 m!5921128))

(assert (=> bs!1177505 m!5921390))

(assert (=> d!1578285 d!1578369))

(declare-fun b_lambda!195987 () Bool)

(assert (= b_lambda!195969 (or (and b!4911303 b_free!131995) b_lambda!195987)))

(declare-fun b_lambda!195989 () Bool)

(assert (= b_lambda!195973 (or b!4911296 b_lambda!195989)))

(declare-fun bs!1177506 () Bool)

(declare-fun d!1578371 () Bool)

(assert (= bs!1177506 (and d!1578371 b!4911296)))

(assert (=> bs!1177506 (= (dynLambda!22958 lambda!244744 (seqFromList!5996 lt!2016021)) (= (list!17862 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (seqFromList!5996 lt!2016021)))) (list!17862 (seqFromList!5996 lt!2016021))))))

(declare-fun b_lambda!195995 () Bool)

(assert (=> (not b_lambda!195995) (not bs!1177506)))

(declare-fun t!367069 () Bool)

(declare-fun tb!260081 () Bool)

(assert (=> (and b!4911303 (= (toChars!11060 (transformation!8256 rule!164)) (toChars!11060 (transformation!8256 rule!164))) t!367069) tb!260081))

(declare-fun tp!1381079 () Bool)

(declare-fun b!4911590 () Bool)

(declare-fun e!3069984 () Bool)

(assert (=> b!4911590 (= e!3069984 (and (inv!73165 (c!834816 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (seqFromList!5996 lt!2016021))))) tp!1381079))))

(declare-fun result!324004 () Bool)

(assert (=> tb!260081 (= result!324004 (and (inv!73166 (dynLambda!22957 (toChars!11060 (transformation!8256 rule!164)) (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (seqFromList!5996 lt!2016021)))) e!3069984))))

(assert (= tb!260081 b!4911590))

(declare-fun m!5921394 () Bool)

(assert (=> b!4911590 m!5921394))

(declare-fun m!5921396 () Bool)

(assert (=> tb!260081 m!5921396))

(assert (=> bs!1177506 t!367069))

(declare-fun b_and!346767 () Bool)

(assert (= b_and!346763 (and (=> t!367069 result!324004) b_and!346767)))

(declare-fun b_lambda!195997 () Bool)

(assert (=> (not b_lambda!195997) (not bs!1177506)))

(declare-fun t!367071 () Bool)

(declare-fun tb!260083 () Bool)

(assert (=> (and b!4911303 (= (toValue!11201 (transformation!8256 rule!164)) (toValue!11201 (transformation!8256 rule!164))) t!367071) tb!260083))

(declare-fun result!324006 () Bool)

(assert (=> tb!260083 (= result!324006 (inv!21 (dynLambda!22956 (toValue!11201 (transformation!8256 rule!164)) (seqFromList!5996 lt!2016021))))))

(declare-fun m!5921398 () Bool)

(assert (=> tb!260083 m!5921398))

(assert (=> bs!1177506 t!367071))

(declare-fun b_and!346769 () Bool)

(assert (= b_and!346765 (and (=> t!367071 result!324006) b_and!346769)))

(declare-fun m!5921400 () Bool)

(assert (=> bs!1177506 m!5921400))

(declare-fun m!5921402 () Bool)

(assert (=> bs!1177506 m!5921402))

(assert (=> bs!1177506 m!5921108))

(declare-fun m!5921404 () Bool)

(assert (=> bs!1177506 m!5921404))

(assert (=> bs!1177506 m!5921108))

(declare-fun m!5921406 () Bool)

(assert (=> bs!1177506 m!5921406))

(assert (=> bs!1177506 m!5921406))

(assert (=> bs!1177506 m!5921400))

(assert (=> d!1578279 d!1578371))

(check-sat (not b_lambda!195985) (not d!1578365) (not d!1578285) (not b!4911506) (not d!1578311) (not b!4911501) (not b_next!132787) (not b!4911333) (not b!4911549) (not b_lambda!195997) (not b!4911440) (not b!4911330) (not b!4911589) (not b!4911590) (not b!4911535) (not d!1578295) (not d!1578357) (not b!4911548) (not bs!1177506) (not b!4911509) (not b_next!132785) (not bm!341045) (not bm!341047) (not d!1578277) (not d!1578309) (not b!4911316) (not bm!341050) (not b!4911430) (not tb!260083) (not bm!341044) (not tb!260079) (not bm!341070) (not b!4911425) (not b!4911505) (not b!4911338) (not b!4911588) (not b!4911298) (not bm!341048) (not bm!341046) (not bs!1177505) (not b!4911420) (not b_lambda!195995) (not b_lambda!195987) (not d!1578281) (not d!1578347) (not d!1578359) (not b!4911533) (not tb!260081) (not d!1578345) b_and!346769 (not tb!260073) (not b_lambda!195991) (not b_lambda!195989) (not d!1578297) (not d!1578361) (not b!4911325) (not bm!341049) (not b!4911587) (not d!1578355) (not d!1578291) (not bm!341051) (not b_lambda!195993) (not b!4911442) (not d!1578279) (not b!4911502) (not b!4911324) b_and!346767 (not b!4911547) (not tb!260071) (not d!1578289) (not b_lambda!195971) tp_is_empty!35865 (not b!4911586) (not b!4911426) (not b!4911421) (not b!4911508) (not d!1578273))
(check-sat b_and!346767 b_and!346769 (not b_next!132787) (not b_next!132785))
