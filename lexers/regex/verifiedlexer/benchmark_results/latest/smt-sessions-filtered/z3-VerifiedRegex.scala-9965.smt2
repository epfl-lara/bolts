; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522080 () Bool)

(assert start!522080)

(declare-fun b!4953886 () Bool)

(declare-fun b_free!132107 () Bool)

(declare-fun b_next!132897 () Bool)

(assert (=> b!4953886 (= b_free!132107 (not b_next!132897))))

(declare-fun tp!1388909 () Bool)

(declare-fun b_and!346959 () Bool)

(assert (=> b!4953886 (= tp!1388909 b_and!346959)))

(declare-fun b_free!132109 () Bool)

(declare-fun b_next!132899 () Bool)

(assert (=> b!4953886 (= b_free!132109 (not b_next!132899))))

(declare-fun tp!1388908 () Bool)

(declare-fun b_and!346961 () Bool)

(assert (=> b!4953886 (= tp!1388908 b_and!346961)))

(declare-fun e!3095283 () Bool)

(declare-datatypes ((List!57232 0))(
  ( (Nil!57108) (Cons!57108 (h!63556 (_ BitVec 16)) (t!367798 List!57232)) )
))
(declare-datatypes ((TokenValue!8592 0))(
  ( (FloatLiteralValue!17184 (text!60589 List!57232)) (TokenValueExt!8591 (__x!34477 Int)) (Broken!42960 (value!265457 List!57232)) (Object!8715) (End!8592) (Def!8592) (Underscore!8592) (Match!8592) (Else!8592) (Error!8592) (Case!8592) (If!8592) (Extends!8592) (Abstract!8592) (Class!8592) (Val!8592) (DelimiterValue!17184 (del!8652 List!57232)) (KeywordValue!8598 (value!265458 List!57232)) (CommentValue!17184 (value!265459 List!57232)) (WhitespaceValue!17184 (value!265460 List!57232)) (IndentationValue!8592 (value!265461 List!57232)) (String!64833) (Int32!8592) (Broken!42961 (value!265462 List!57232)) (Boolean!8593) (Unit!148002) (OperatorValue!8595 (op!8652 List!57232)) (IdentifierValue!17184 (value!265463 List!57232)) (IdentifierValue!17185 (value!265464 List!57232)) (WhitespaceValue!17185 (value!265465 List!57232)) (True!17184) (False!17184) (Broken!42962 (value!265466 List!57232)) (Broken!42963 (value!265467 List!57232)) (True!17185) (RightBrace!8592) (RightBracket!8592) (Colon!8592) (Null!8592) (Comma!8592) (LeftBracket!8592) (False!17185) (LeftBrace!8592) (ImaginaryLiteralValue!8592 (text!60590 List!57232)) (StringLiteralValue!25776 (value!265468 List!57232)) (EOFValue!8592 (value!265469 List!57232)) (IdentValue!8592 (value!265470 List!57232)) (DelimiterValue!17185 (value!265471 List!57232)) (DedentValue!8592 (value!265472 List!57232)) (NewLineValue!8592 (value!265473 List!57232)) (IntegerValue!25776 (value!265474 (_ BitVec 32)) (text!60591 List!57232)) (IntegerValue!25777 (value!265475 Int) (text!60592 List!57232)) (Times!8592) (Or!8592) (Equal!8592) (Minus!8592) (Broken!42964 (value!265476 List!57232)) (And!8592) (Div!8592) (LessEqual!8592) (Mod!8592) (Concat!22107) (Not!8592) (Plus!8592) (SpaceValue!8592 (value!265477 List!57232)) (IntegerValue!25778 (value!265478 Int) (text!60593 List!57232)) (StringLiteralValue!25777 (text!60594 List!57232)) (FloatLiteralValue!17185 (text!60595 List!57232)) (BytesLiteralValue!8592 (value!265479 List!57232)) (CommentValue!17185 (value!265480 List!57232)) (StringLiteralValue!25778 (value!265481 List!57232)) (ErrorTokenValue!8592 (msg!8653 List!57232)) )
))
(declare-datatypes ((C!27280 0))(
  ( (C!27281 (val!23006 Int)) )
))
(declare-datatypes ((List!57233 0))(
  ( (Nil!57109) (Cons!57109 (h!63557 C!27280) (t!367799 List!57233)) )
))
(declare-datatypes ((IArray!30129 0))(
  ( (IArray!30130 (innerList!15122 List!57233)) )
))
(declare-datatypes ((Regex!13515 0))(
  ( (ElementMatch!13515 (c!845975 C!27280)) (Concat!22108 (regOne!27542 Regex!13515) (regTwo!27542 Regex!13515)) (EmptyExpr!13515) (Star!13515 (reg!13844 Regex!13515)) (EmptyLang!13515) (Union!13515 (regOne!27543 Regex!13515) (regTwo!27543 Regex!13515)) )
))
(declare-datatypes ((String!64834 0))(
  ( (String!64835 (value!265482 String)) )
))
(declare-datatypes ((Conc!15034 0))(
  ( (Node!15034 (left!41657 Conc!15034) (right!41987 Conc!15034) (csize!30298 Int) (cheight!15245 Int)) (Leaf!25000 (xs!18360 IArray!30129) (csize!30299 Int)) (Empty!15034) )
))
(declare-datatypes ((BalanceConc!29498 0))(
  ( (BalanceConc!29499 (c!845976 Conc!15034)) )
))
(declare-datatypes ((TokenValueInjection!16492 0))(
  ( (TokenValueInjection!16493 (toValue!11233 Int) (toChars!11092 Int)) )
))
(declare-datatypes ((Rule!16364 0))(
  ( (Rule!16365 (regex!8282 Regex!13515) (tag!9146 String!64834) (isSeparator!8282 Bool) (transformation!8282 TokenValueInjection!16492)) )
))
(declare-datatypes ((List!57234 0))(
  ( (Nil!57110) (Cons!57110 (h!63558 Rule!16364) (t!367800 List!57234)) )
))
(declare-fun rulesArg!259 () List!57234)

(declare-fun b!4953882 () Bool)

(declare-fun e!3095278 () Bool)

(declare-fun tp!1388910 () Bool)

(declare-fun inv!74452 (String!64834) Bool)

(declare-fun inv!74456 (TokenValueInjection!16492) Bool)

(assert (=> b!4953882 (= e!3095278 (and tp!1388910 (inv!74452 (tag!9146 (h!63558 rulesArg!259))) (inv!74456 (transformation!8282 (h!63558 rulesArg!259))) e!3095283))))

(declare-fun b!4953883 () Bool)

(declare-fun e!3095276 () Bool)

(declare-fun tp!1388907 () Bool)

(assert (=> b!4953883 (= e!3095276 (and e!3095278 tp!1388907))))

(declare-fun b!4953884 () Bool)

(declare-fun e!3095277 () Bool)

(declare-fun e!3095280 () Bool)

(assert (=> b!4953884 (= e!3095277 e!3095280)))

(declare-fun res!2113438 () Bool)

(assert (=> b!4953884 (=> res!2113438 e!3095280)))

(declare-datatypes ((Token!15072 0))(
  ( (Token!15073 (value!265483 TokenValue!8592) (rule!11494 Rule!16364) (size!37892 Int) (originalCharacters!8567 List!57233)) )
))
(declare-datatypes ((tuple2!61644 0))(
  ( (tuple2!61645 (_1!34125 Token!15072) (_2!34125 BalanceConc!29498)) )
))
(declare-fun lt!2044516 () tuple2!61644)

(declare-datatypes ((tuple2!61646 0))(
  ( (tuple2!61647 (_1!34126 Token!15072) (_2!34126 List!57233)) )
))
(declare-fun lt!2044522 () tuple2!61646)

(assert (=> b!4953884 (= res!2113438 (not (= (_1!34125 lt!2044516) (_1!34126 lt!2044522))))))

(declare-datatypes ((Option!14247 0))(
  ( (None!14246) (Some!14246 (v!50231 tuple2!61646)) )
))
(declare-fun lt!2044517 () Option!14247)

(declare-fun get!19734 (Option!14247) tuple2!61646)

(assert (=> b!4953884 (= lt!2044522 (get!19734 lt!2044517))))

(declare-datatypes ((Option!14248 0))(
  ( (None!14247) (Some!14247 (v!50232 tuple2!61644)) )
))
(declare-fun lt!2044523 () Option!14248)

(declare-fun get!19735 (Option!14248) tuple2!61644)

(assert (=> b!4953884 (= lt!2044516 (get!19735 lt!2044523))))

(declare-fun b!4953885 () Bool)

(declare-fun e!3095271 () Bool)

(declare-fun e!3095272 () Bool)

(assert (=> b!4953885 (= e!3095271 e!3095272)))

(declare-fun res!2113434 () Bool)

(assert (=> b!4953885 (=> res!2113434 e!3095272)))

(assert (=> b!4953885 (= res!2113434 e!3095277)))

(declare-fun res!2113442 () Bool)

(assert (=> b!4953885 (=> (not res!2113442) (not e!3095277))))

(declare-fun lt!2044521 () Bool)

(assert (=> b!4953885 (= res!2113442 (not lt!2044521))))

(declare-fun lt!2044520 () Bool)

(assert (=> b!4953885 (= lt!2044521 (not lt!2044520))))

(assert (=> b!4953886 (= e!3095283 (and tp!1388909 tp!1388908))))

(declare-fun b!4953887 () Bool)

(declare-fun e!3095279 () Bool)

(declare-fun e!3095274 () Bool)

(assert (=> b!4953887 (= e!3095279 e!3095274)))

(declare-fun res!2113435 () Bool)

(assert (=> b!4953887 (=> (not res!2113435) (not e!3095274))))

(declare-fun lt!2044519 () List!57233)

(declare-fun totalInput!464 () BalanceConc!29498)

(declare-fun isSuffix!1081 (List!57233 List!57233) Bool)

(declare-fun list!18214 (BalanceConc!29498) List!57233)

(assert (=> b!4953887 (= res!2113435 (isSuffix!1081 lt!2044519 (list!18214 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29498)

(assert (=> b!4953887 (= lt!2044519 (list!18214 input!1342))))

(declare-fun b!4953888 () Bool)

(declare-fun res!2113439 () Bool)

(assert (=> b!4953888 (=> (not res!2113439) (not e!3095279))))

(declare-fun isEmpty!30702 (List!57234) Bool)

(assert (=> b!4953888 (= res!2113439 (not (isEmpty!30702 rulesArg!259)))))

(declare-fun b!4953889 () Bool)

(declare-fun res!2113440 () Bool)

(assert (=> b!4953889 (=> (not res!2113440) (not e!3095279))))

(declare-datatypes ((LexerInterface!7874 0))(
  ( (LexerInterfaceExt!7871 (__x!34478 Int)) (Lexer!7872) )
))
(declare-fun thiss!15247 () LexerInterface!7874)

(declare-fun rulesValidInductive!3185 (LexerInterface!7874 List!57234) Bool)

(assert (=> b!4953889 (= res!2113440 (rulesValidInductive!3185 thiss!15247 rulesArg!259))))

(declare-fun b!4953890 () Bool)

(declare-fun res!2113433 () Bool)

(assert (=> b!4953890 (=> res!2113433 e!3095272)))

(assert (=> b!4953890 (= res!2113433 lt!2044521)))

(declare-fun b!4953891 () Bool)

(declare-fun e!3095281 () Bool)

(assert (=> b!4953891 (= e!3095281 e!3095271)))

(declare-fun res!2113441 () Bool)

(assert (=> b!4953891 (=> res!2113441 e!3095271)))

(declare-fun isDefined!11200 (Option!14247) Bool)

(assert (=> b!4953891 (= res!2113441 (not (= lt!2044520 (isDefined!11200 lt!2044517))))))

(declare-fun isDefined!11201 (Option!14248) Bool)

(assert (=> b!4953891 (= lt!2044520 (isDefined!11201 lt!2044523))))

(declare-fun maxPrefixZipper!693 (LexerInterface!7874 List!57234 List!57233) Option!14247)

(assert (=> b!4953891 (= lt!2044517 (maxPrefixZipper!693 thiss!15247 rulesArg!259 lt!2044519))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!270 (LexerInterface!7874 Rule!16364 BalanceConc!29498 BalanceConc!29498) Option!14248)

(assert (=> b!4953891 (= lt!2044523 (maxPrefixOneRuleZipperSequenceV2!270 thiss!15247 (h!63558 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4953892 () Bool)

(declare-fun e!3095273 () Bool)

(declare-fun tp!1388906 () Bool)

(declare-fun inv!74457 (Conc!15034) Bool)

(assert (=> b!4953892 (= e!3095273 (and (inv!74457 (c!845976 totalInput!464)) tp!1388906))))

(declare-fun b!4953893 () Bool)

(declare-fun maxPrefix!4615 (LexerInterface!7874 List!57234 List!57233) Option!14247)

(assert (=> b!4953893 (= e!3095272 (isDefined!11200 (maxPrefix!4615 thiss!15247 rulesArg!259 lt!2044519)))))

(declare-fun b!4953894 () Bool)

(declare-fun e!3095282 () Bool)

(declare-fun tp!1388905 () Bool)

(assert (=> b!4953894 (= e!3095282 (and (inv!74457 (c!845976 input!1342)) tp!1388905))))

(declare-fun b!4953895 () Bool)

(assert (=> b!4953895 (= e!3095280 (not (= (list!18214 (_2!34125 lt!2044516)) (_2!34126 lt!2044522))))))

(declare-fun res!2113437 () Bool)

(assert (=> start!522080 (=> (not res!2113437) (not e!3095279))))

(get-info :version)

(assert (=> start!522080 (= res!2113437 ((_ is Lexer!7872) thiss!15247))))

(assert (=> start!522080 e!3095279))

(assert (=> start!522080 true))

(assert (=> start!522080 e!3095276))

(declare-fun inv!74458 (BalanceConc!29498) Bool)

(assert (=> start!522080 (and (inv!74458 input!1342) e!3095282)))

(assert (=> start!522080 (and (inv!74458 totalInput!464) e!3095273)))

(declare-fun b!4953896 () Bool)

(assert (=> b!4953896 (= e!3095274 (not e!3095281))))

(declare-fun res!2113436 () Bool)

(assert (=> b!4953896 (=> res!2113436 e!3095281)))

(assert (=> b!4953896 (= res!2113436 (or (not ((_ is Cons!57110) rulesArg!259)) (not ((_ is Nil!57110) (t!367800 rulesArg!259)))))))

(declare-fun isPrefix!5135 (List!57233 List!57233) Bool)

(assert (=> b!4953896 (isPrefix!5135 lt!2044519 lt!2044519)))

(declare-datatypes ((Unit!148003 0))(
  ( (Unit!148004) )
))
(declare-fun lt!2044518 () Unit!148003)

(declare-fun lemmaIsPrefixRefl!3459 (List!57233 List!57233) Unit!148003)

(assert (=> b!4953896 (= lt!2044518 (lemmaIsPrefixRefl!3459 lt!2044519 lt!2044519))))

(assert (= (and start!522080 res!2113437) b!4953889))

(assert (= (and b!4953889 res!2113440) b!4953888))

(assert (= (and b!4953888 res!2113439) b!4953887))

(assert (= (and b!4953887 res!2113435) b!4953896))

(assert (= (and b!4953896 (not res!2113436)) b!4953891))

(assert (= (and b!4953891 (not res!2113441)) b!4953885))

(assert (= (and b!4953885 res!2113442) b!4953884))

(assert (= (and b!4953884 (not res!2113438)) b!4953895))

(assert (= (and b!4953885 (not res!2113434)) b!4953890))

(assert (= (and b!4953890 (not res!2113433)) b!4953893))

(assert (= b!4953882 b!4953886))

(assert (= b!4953883 b!4953882))

(assert (= (and start!522080 ((_ is Cons!57110) rulesArg!259)) b!4953883))

(assert (= start!522080 b!4953894))

(assert (= start!522080 b!4953892))

(declare-fun m!5978584 () Bool)

(assert (=> b!4953882 m!5978584))

(declare-fun m!5978586 () Bool)

(assert (=> b!4953882 m!5978586))

(declare-fun m!5978588 () Bool)

(assert (=> b!4953891 m!5978588))

(declare-fun m!5978590 () Bool)

(assert (=> b!4953891 m!5978590))

(declare-fun m!5978592 () Bool)

(assert (=> b!4953891 m!5978592))

(declare-fun m!5978594 () Bool)

(assert (=> b!4953891 m!5978594))

(declare-fun m!5978596 () Bool)

(assert (=> b!4953895 m!5978596))

(declare-fun m!5978598 () Bool)

(assert (=> b!4953888 m!5978598))

(declare-fun m!5978600 () Bool)

(assert (=> b!4953884 m!5978600))

(declare-fun m!5978602 () Bool)

(assert (=> b!4953884 m!5978602))

(declare-fun m!5978604 () Bool)

(assert (=> b!4953894 m!5978604))

(declare-fun m!5978606 () Bool)

(assert (=> b!4953892 m!5978606))

(declare-fun m!5978608 () Bool)

(assert (=> b!4953889 m!5978608))

(declare-fun m!5978610 () Bool)

(assert (=> start!522080 m!5978610))

(declare-fun m!5978612 () Bool)

(assert (=> start!522080 m!5978612))

(declare-fun m!5978614 () Bool)

(assert (=> b!4953893 m!5978614))

(assert (=> b!4953893 m!5978614))

(declare-fun m!5978616 () Bool)

(assert (=> b!4953893 m!5978616))

(declare-fun m!5978618 () Bool)

(assert (=> b!4953887 m!5978618))

(assert (=> b!4953887 m!5978618))

(declare-fun m!5978620 () Bool)

(assert (=> b!4953887 m!5978620))

(declare-fun m!5978622 () Bool)

(assert (=> b!4953887 m!5978622))

(declare-fun m!5978624 () Bool)

(assert (=> b!4953896 m!5978624))

(declare-fun m!5978626 () Bool)

(assert (=> b!4953896 m!5978626))

(check-sat (not b!4953884) (not b!4953887) (not b!4953882) b_and!346961 (not b_next!132899) (not b!4953893) (not b_next!132897) (not b!4953888) b_and!346959 (not b!4953896) (not b!4953895) (not b!4953889) (not start!522080) (not b!4953883) (not b!4953892) (not b!4953891) (not b!4953894))
(check-sat b_and!346959 b_and!346961 (not b_next!132897) (not b_next!132899))
(get-model)

(declare-fun d!1595228 () Bool)

(assert (=> d!1595228 true))

(declare-fun lt!2044553 () Bool)

(declare-fun lambda!247032 () Int)

(declare-fun forall!13293 (List!57234 Int) Bool)

(assert (=> d!1595228 (= lt!2044553 (forall!13293 rulesArg!259 lambda!247032))))

(declare-fun e!3095318 () Bool)

(assert (=> d!1595228 (= lt!2044553 e!3095318)))

(declare-fun res!2113481 () Bool)

(assert (=> d!1595228 (=> res!2113481 e!3095318)))

(assert (=> d!1595228 (= res!2113481 (not ((_ is Cons!57110) rulesArg!259)))))

(assert (=> d!1595228 (= (rulesValidInductive!3185 thiss!15247 rulesArg!259) lt!2044553)))

(declare-fun b!4953942 () Bool)

(declare-fun e!3095319 () Bool)

(assert (=> b!4953942 (= e!3095318 e!3095319)))

(declare-fun res!2113480 () Bool)

(assert (=> b!4953942 (=> (not res!2113480) (not e!3095319))))

(declare-fun ruleValid!3765 (LexerInterface!7874 Rule!16364) Bool)

(assert (=> b!4953942 (= res!2113480 (ruleValid!3765 thiss!15247 (h!63558 rulesArg!259)))))

(declare-fun b!4953943 () Bool)

(assert (=> b!4953943 (= e!3095319 (rulesValidInductive!3185 thiss!15247 (t!367800 rulesArg!259)))))

(assert (= (and d!1595228 (not res!2113481)) b!4953942))

(assert (= (and b!4953942 res!2113480) b!4953943))

(declare-fun m!5978674 () Bool)

(assert (=> d!1595228 m!5978674))

(declare-fun m!5978676 () Bool)

(assert (=> b!4953942 m!5978676))

(declare-fun m!5978678 () Bool)

(assert (=> b!4953943 m!5978678))

(assert (=> b!4953889 d!1595228))

(declare-fun d!1595260 () Bool)

(declare-fun isBalanced!4167 (Conc!15034) Bool)

(assert (=> d!1595260 (= (inv!74458 input!1342) (isBalanced!4167 (c!845976 input!1342)))))

(declare-fun bs!1182432 () Bool)

(assert (= bs!1182432 d!1595260))

(declare-fun m!5978680 () Bool)

(assert (=> bs!1182432 m!5978680))

(assert (=> start!522080 d!1595260))

(declare-fun d!1595262 () Bool)

(assert (=> d!1595262 (= (inv!74458 totalInput!464) (isBalanced!4167 (c!845976 totalInput!464)))))

(declare-fun bs!1182433 () Bool)

(assert (= bs!1182433 d!1595262))

(declare-fun m!5978682 () Bool)

(assert (=> bs!1182433 m!5978682))

(assert (=> start!522080 d!1595262))

(declare-fun d!1595264 () Bool)

(assert (=> d!1595264 (= (isEmpty!30702 rulesArg!259) ((_ is Nil!57110) rulesArg!259))))

(assert (=> b!4953888 d!1595264))

(declare-fun d!1595266 () Bool)

(declare-fun e!3095322 () Bool)

(assert (=> d!1595266 e!3095322))

(declare-fun res!2113484 () Bool)

(assert (=> d!1595266 (=> res!2113484 e!3095322)))

(declare-fun lt!2044556 () Bool)

(assert (=> d!1595266 (= res!2113484 (not lt!2044556))))

(declare-fun drop!2315 (List!57233 Int) List!57233)

(declare-fun size!37895 (List!57233) Int)

(assert (=> d!1595266 (= lt!2044556 (= lt!2044519 (drop!2315 (list!18214 totalInput!464) (- (size!37895 (list!18214 totalInput!464)) (size!37895 lt!2044519)))))))

(assert (=> d!1595266 (= (isSuffix!1081 lt!2044519 (list!18214 totalInput!464)) lt!2044556)))

(declare-fun b!4953948 () Bool)

(assert (=> b!4953948 (= e!3095322 (>= (size!37895 (list!18214 totalInput!464)) (size!37895 lt!2044519)))))

(assert (= (and d!1595266 (not res!2113484)) b!4953948))

(assert (=> d!1595266 m!5978618))

(declare-fun m!5978684 () Bool)

(assert (=> d!1595266 m!5978684))

(declare-fun m!5978686 () Bool)

(assert (=> d!1595266 m!5978686))

(assert (=> d!1595266 m!5978618))

(declare-fun m!5978688 () Bool)

(assert (=> d!1595266 m!5978688))

(assert (=> b!4953948 m!5978618))

(assert (=> b!4953948 m!5978684))

(assert (=> b!4953948 m!5978686))

(assert (=> b!4953887 d!1595266))

(declare-fun d!1595268 () Bool)

(declare-fun list!18216 (Conc!15034) List!57233)

(assert (=> d!1595268 (= (list!18214 totalInput!464) (list!18216 (c!845976 totalInput!464)))))

(declare-fun bs!1182434 () Bool)

(assert (= bs!1182434 d!1595268))

(declare-fun m!5978690 () Bool)

(assert (=> bs!1182434 m!5978690))

(assert (=> b!4953887 d!1595268))

(declare-fun d!1595270 () Bool)

(assert (=> d!1595270 (= (list!18214 input!1342) (list!18216 (c!845976 input!1342)))))

(declare-fun bs!1182435 () Bool)

(assert (= bs!1182435 d!1595270))

(declare-fun m!5978692 () Bool)

(assert (=> bs!1182435 m!5978692))

(assert (=> b!4953887 d!1595270))

(declare-fun b!4953959 () Bool)

(declare-fun e!3095329 () Bool)

(declare-fun tail!9768 (List!57233) List!57233)

(assert (=> b!4953959 (= e!3095329 (isPrefix!5135 (tail!9768 lt!2044519) (tail!9768 lt!2044519)))))

(declare-fun b!4953960 () Bool)

(declare-fun e!3095330 () Bool)

(assert (=> b!4953960 (= e!3095330 (>= (size!37895 lt!2044519) (size!37895 lt!2044519)))))

(declare-fun d!1595272 () Bool)

(assert (=> d!1595272 e!3095330))

(declare-fun res!2113495 () Bool)

(assert (=> d!1595272 (=> res!2113495 e!3095330)))

(declare-fun lt!2044559 () Bool)

(assert (=> d!1595272 (= res!2113495 (not lt!2044559))))

(declare-fun e!3095331 () Bool)

(assert (=> d!1595272 (= lt!2044559 e!3095331)))

(declare-fun res!2113493 () Bool)

(assert (=> d!1595272 (=> res!2113493 e!3095331)))

(assert (=> d!1595272 (= res!2113493 ((_ is Nil!57109) lt!2044519))))

(assert (=> d!1595272 (= (isPrefix!5135 lt!2044519 lt!2044519) lt!2044559)))

(declare-fun b!4953958 () Bool)

(declare-fun res!2113496 () Bool)

(assert (=> b!4953958 (=> (not res!2113496) (not e!3095329))))

(declare-fun head!10635 (List!57233) C!27280)

(assert (=> b!4953958 (= res!2113496 (= (head!10635 lt!2044519) (head!10635 lt!2044519)))))

(declare-fun b!4953957 () Bool)

(assert (=> b!4953957 (= e!3095331 e!3095329)))

(declare-fun res!2113494 () Bool)

(assert (=> b!4953957 (=> (not res!2113494) (not e!3095329))))

(assert (=> b!4953957 (= res!2113494 (not ((_ is Nil!57109) lt!2044519)))))

(assert (= (and d!1595272 (not res!2113493)) b!4953957))

(assert (= (and b!4953957 res!2113494) b!4953958))

(assert (= (and b!4953958 res!2113496) b!4953959))

(assert (= (and d!1595272 (not res!2113495)) b!4953960))

(declare-fun m!5978694 () Bool)

(assert (=> b!4953959 m!5978694))

(assert (=> b!4953959 m!5978694))

(assert (=> b!4953959 m!5978694))

(assert (=> b!4953959 m!5978694))

(declare-fun m!5978696 () Bool)

(assert (=> b!4953959 m!5978696))

(assert (=> b!4953960 m!5978686))

(assert (=> b!4953960 m!5978686))

(declare-fun m!5978698 () Bool)

(assert (=> b!4953958 m!5978698))

(assert (=> b!4953958 m!5978698))

(assert (=> b!4953896 d!1595272))

(declare-fun d!1595274 () Bool)

(assert (=> d!1595274 (isPrefix!5135 lt!2044519 lt!2044519)))

(declare-fun lt!2044562 () Unit!148003)

(declare-fun choose!36615 (List!57233 List!57233) Unit!148003)

(assert (=> d!1595274 (= lt!2044562 (choose!36615 lt!2044519 lt!2044519))))

(assert (=> d!1595274 (= (lemmaIsPrefixRefl!3459 lt!2044519 lt!2044519) lt!2044562)))

(declare-fun bs!1182436 () Bool)

(assert (= bs!1182436 d!1595274))

(assert (=> bs!1182436 m!5978624))

(declare-fun m!5978700 () Bool)

(assert (=> bs!1182436 m!5978700))

(assert (=> b!4953896 d!1595274))

(declare-fun d!1595276 () Bool)

(assert (=> d!1595276 (= (list!18214 (_2!34125 lt!2044516)) (list!18216 (c!845976 (_2!34125 lt!2044516))))))

(declare-fun bs!1182437 () Bool)

(assert (= bs!1182437 d!1595276))

(declare-fun m!5978702 () Bool)

(assert (=> bs!1182437 m!5978702))

(assert (=> b!4953895 d!1595276))

(declare-fun d!1595278 () Bool)

(assert (=> d!1595278 (= (get!19734 lt!2044517) (v!50231 lt!2044517))))

(assert (=> b!4953884 d!1595278))

(declare-fun d!1595280 () Bool)

(assert (=> d!1595280 (= (get!19735 lt!2044523) (v!50232 lt!2044523))))

(assert (=> b!4953884 d!1595280))

(declare-fun d!1595282 () Bool)

(declare-fun c!845985 () Bool)

(assert (=> d!1595282 (= c!845985 ((_ is Node!15034) (c!845976 input!1342)))))

(declare-fun e!3095336 () Bool)

(assert (=> d!1595282 (= (inv!74457 (c!845976 input!1342)) e!3095336)))

(declare-fun b!4953967 () Bool)

(declare-fun inv!74461 (Conc!15034) Bool)

(assert (=> b!4953967 (= e!3095336 (inv!74461 (c!845976 input!1342)))))

(declare-fun b!4953968 () Bool)

(declare-fun e!3095337 () Bool)

(assert (=> b!4953968 (= e!3095336 e!3095337)))

(declare-fun res!2113499 () Bool)

(assert (=> b!4953968 (= res!2113499 (not ((_ is Leaf!25000) (c!845976 input!1342))))))

(assert (=> b!4953968 (=> res!2113499 e!3095337)))

(declare-fun b!4953969 () Bool)

(declare-fun inv!74462 (Conc!15034) Bool)

(assert (=> b!4953969 (= e!3095337 (inv!74462 (c!845976 input!1342)))))

(assert (= (and d!1595282 c!845985) b!4953967))

(assert (= (and d!1595282 (not c!845985)) b!4953968))

(assert (= (and b!4953968 (not res!2113499)) b!4953969))

(declare-fun m!5978704 () Bool)

(assert (=> b!4953967 m!5978704))

(declare-fun m!5978706 () Bool)

(assert (=> b!4953969 m!5978706))

(assert (=> b!4953894 d!1595282))

(declare-fun d!1595284 () Bool)

(declare-fun isEmpty!30707 (Option!14247) Bool)

(assert (=> d!1595284 (= (isDefined!11200 (maxPrefix!4615 thiss!15247 rulesArg!259 lt!2044519)) (not (isEmpty!30707 (maxPrefix!4615 thiss!15247 rulesArg!259 lt!2044519))))))

(declare-fun bs!1182438 () Bool)

(assert (= bs!1182438 d!1595284))

(assert (=> bs!1182438 m!5978614))

(declare-fun m!5978708 () Bool)

(assert (=> bs!1182438 m!5978708))

(assert (=> b!4953893 d!1595284))

(declare-fun b!4954000 () Bool)

(declare-fun e!3095355 () Option!14247)

(declare-fun lt!2044597 () Option!14247)

(declare-fun lt!2044595 () Option!14247)

(assert (=> b!4954000 (= e!3095355 (ite (and ((_ is None!14246) lt!2044597) ((_ is None!14246) lt!2044595)) None!14246 (ite ((_ is None!14246) lt!2044595) lt!2044597 (ite ((_ is None!14246) lt!2044597) lt!2044595 (ite (>= (size!37892 (_1!34126 (v!50231 lt!2044597))) (size!37892 (_1!34126 (v!50231 lt!2044595)))) lt!2044597 lt!2044595)))))))

(declare-fun call!345865 () Option!14247)

(assert (=> b!4954000 (= lt!2044597 call!345865)))

(assert (=> b!4954000 (= lt!2044595 (maxPrefix!4615 thiss!15247 (t!367800 rulesArg!259) lt!2044519))))

(declare-fun bm!345860 () Bool)

(declare-fun maxPrefixOneRule!3597 (LexerInterface!7874 Rule!16364 List!57233) Option!14247)

(assert (=> bm!345860 (= call!345865 (maxPrefixOneRule!3597 thiss!15247 (h!63558 rulesArg!259) lt!2044519))))

(declare-fun b!4954001 () Bool)

(declare-fun res!2113528 () Bool)

(declare-fun e!3095356 () Bool)

(assert (=> b!4954001 (=> (not res!2113528) (not e!3095356))))

(declare-fun lt!2044594 () Option!14247)

(declare-fun apply!13872 (TokenValueInjection!16492 BalanceConc!29498) TokenValue!8592)

(declare-fun seqFromList!6004 (List!57233) BalanceConc!29498)

(assert (=> b!4954001 (= res!2113528 (= (value!265483 (_1!34126 (get!19734 lt!2044594))) (apply!13872 (transformation!8282 (rule!11494 (_1!34126 (get!19734 lt!2044594)))) (seqFromList!6004 (originalCharacters!8567 (_1!34126 (get!19734 lt!2044594)))))))))

(declare-fun b!4954002 () Bool)

(declare-fun res!2113527 () Bool)

(assert (=> b!4954002 (=> (not res!2113527) (not e!3095356))))

(assert (=> b!4954002 (= res!2113527 (< (size!37895 (_2!34126 (get!19734 lt!2044594))) (size!37895 lt!2044519)))))

(declare-fun b!4954003 () Bool)

(declare-fun contains!19512 (List!57234 Rule!16364) Bool)

(assert (=> b!4954003 (= e!3095356 (contains!19512 rulesArg!259 (rule!11494 (_1!34126 (get!19734 lt!2044594)))))))

(declare-fun b!4954004 () Bool)

(declare-fun res!2113525 () Bool)

(assert (=> b!4954004 (=> (not res!2113525) (not e!3095356))))

(declare-fun ++!12506 (List!57233 List!57233) List!57233)

(declare-fun charsOf!5411 (Token!15072) BalanceConc!29498)

(assert (=> b!4954004 (= res!2113525 (= (++!12506 (list!18214 (charsOf!5411 (_1!34126 (get!19734 lt!2044594)))) (_2!34126 (get!19734 lt!2044594))) lt!2044519))))

(declare-fun b!4954005 () Bool)

(declare-fun res!2113524 () Bool)

(assert (=> b!4954005 (=> (not res!2113524) (not e!3095356))))

(declare-fun matchR!6604 (Regex!13515 List!57233) Bool)

(assert (=> b!4954005 (= res!2113524 (matchR!6604 (regex!8282 (rule!11494 (_1!34126 (get!19734 lt!2044594)))) (list!18214 (charsOf!5411 (_1!34126 (get!19734 lt!2044594))))))))

(declare-fun b!4954006 () Bool)

(declare-fun e!3095354 () Bool)

(assert (=> b!4954006 (= e!3095354 e!3095356)))

(declare-fun res!2113522 () Bool)

(assert (=> b!4954006 (=> (not res!2113522) (not e!3095356))))

(assert (=> b!4954006 (= res!2113522 (isDefined!11200 lt!2044594))))

(declare-fun d!1595286 () Bool)

(assert (=> d!1595286 e!3095354))

(declare-fun res!2113523 () Bool)

(assert (=> d!1595286 (=> res!2113523 e!3095354)))

(assert (=> d!1595286 (= res!2113523 (isEmpty!30707 lt!2044594))))

(assert (=> d!1595286 (= lt!2044594 e!3095355)))

(declare-fun c!845990 () Bool)

(assert (=> d!1595286 (= c!845990 (and ((_ is Cons!57110) rulesArg!259) ((_ is Nil!57110) (t!367800 rulesArg!259))))))

(declare-fun lt!2044593 () Unit!148003)

(declare-fun lt!2044596 () Unit!148003)

(assert (=> d!1595286 (= lt!2044593 lt!2044596)))

(assert (=> d!1595286 (isPrefix!5135 lt!2044519 lt!2044519)))

(assert (=> d!1595286 (= lt!2044596 (lemmaIsPrefixRefl!3459 lt!2044519 lt!2044519))))

(assert (=> d!1595286 (rulesValidInductive!3185 thiss!15247 rulesArg!259)))

(assert (=> d!1595286 (= (maxPrefix!4615 thiss!15247 rulesArg!259 lt!2044519) lt!2044594)))

(declare-fun b!4954007 () Bool)

(declare-fun res!2113526 () Bool)

(assert (=> b!4954007 (=> (not res!2113526) (not e!3095356))))

(assert (=> b!4954007 (= res!2113526 (= (list!18214 (charsOf!5411 (_1!34126 (get!19734 lt!2044594)))) (originalCharacters!8567 (_1!34126 (get!19734 lt!2044594)))))))

(declare-fun b!4954008 () Bool)

(assert (=> b!4954008 (= e!3095355 call!345865)))

(assert (= (and d!1595286 c!845990) b!4954008))

(assert (= (and d!1595286 (not c!845990)) b!4954000))

(assert (= (or b!4954008 b!4954000) bm!345860))

(assert (= (and d!1595286 (not res!2113523)) b!4954006))

(assert (= (and b!4954006 res!2113522) b!4954007))

(assert (= (and b!4954007 res!2113526) b!4954002))

(assert (= (and b!4954002 res!2113527) b!4954004))

(assert (= (and b!4954004 res!2113525) b!4954001))

(assert (= (and b!4954001 res!2113528) b!4954005))

(assert (= (and b!4954005 res!2113524) b!4954003))

(declare-fun m!5978710 () Bool)

(assert (=> b!4954006 m!5978710))

(declare-fun m!5978712 () Bool)

(assert (=> b!4954004 m!5978712))

(declare-fun m!5978714 () Bool)

(assert (=> b!4954004 m!5978714))

(assert (=> b!4954004 m!5978714))

(declare-fun m!5978716 () Bool)

(assert (=> b!4954004 m!5978716))

(assert (=> b!4954004 m!5978716))

(declare-fun m!5978718 () Bool)

(assert (=> b!4954004 m!5978718))

(assert (=> b!4954001 m!5978712))

(declare-fun m!5978720 () Bool)

(assert (=> b!4954001 m!5978720))

(assert (=> b!4954001 m!5978720))

(declare-fun m!5978722 () Bool)

(assert (=> b!4954001 m!5978722))

(assert (=> b!4954005 m!5978712))

(assert (=> b!4954005 m!5978714))

(assert (=> b!4954005 m!5978714))

(assert (=> b!4954005 m!5978716))

(assert (=> b!4954005 m!5978716))

(declare-fun m!5978724 () Bool)

(assert (=> b!4954005 m!5978724))

(assert (=> b!4954003 m!5978712))

(declare-fun m!5978726 () Bool)

(assert (=> b!4954003 m!5978726))

(assert (=> b!4954007 m!5978712))

(assert (=> b!4954007 m!5978714))

(assert (=> b!4954007 m!5978714))

(assert (=> b!4954007 m!5978716))

(declare-fun m!5978728 () Bool)

(assert (=> d!1595286 m!5978728))

(assert (=> d!1595286 m!5978624))

(assert (=> d!1595286 m!5978626))

(assert (=> d!1595286 m!5978608))

(declare-fun m!5978730 () Bool)

(assert (=> b!4954000 m!5978730))

(assert (=> b!4954002 m!5978712))

(declare-fun m!5978732 () Bool)

(assert (=> b!4954002 m!5978732))

(assert (=> b!4954002 m!5978686))

(declare-fun m!5978734 () Bool)

(assert (=> bm!345860 m!5978734))

(assert (=> b!4953893 d!1595286))

(declare-fun d!1595288 () Bool)

(assert (=> d!1595288 (= (inv!74452 (tag!9146 (h!63558 rulesArg!259))) (= (mod (str.len (value!265482 (tag!9146 (h!63558 rulesArg!259)))) 2) 0))))

(assert (=> b!4953882 d!1595288))

(declare-fun d!1595290 () Bool)

(declare-fun res!2113535 () Bool)

(declare-fun e!3095370 () Bool)

(assert (=> d!1595290 (=> (not res!2113535) (not e!3095370))))

(declare-fun semiInverseModEq!3666 (Int Int) Bool)

(assert (=> d!1595290 (= res!2113535 (semiInverseModEq!3666 (toChars!11092 (transformation!8282 (h!63558 rulesArg!259))) (toValue!11233 (transformation!8282 (h!63558 rulesArg!259)))))))

(assert (=> d!1595290 (= (inv!74456 (transformation!8282 (h!63558 rulesArg!259))) e!3095370)))

(declare-fun b!4954025 () Bool)

(declare-fun equivClasses!3514 (Int Int) Bool)

(assert (=> b!4954025 (= e!3095370 (equivClasses!3514 (toChars!11092 (transformation!8282 (h!63558 rulesArg!259))) (toValue!11233 (transformation!8282 (h!63558 rulesArg!259)))))))

(assert (= (and d!1595290 res!2113535) b!4954025))

(declare-fun m!5978780 () Bool)

(assert (=> d!1595290 m!5978780))

(declare-fun m!5978782 () Bool)

(assert (=> b!4954025 m!5978782))

(assert (=> b!4953882 d!1595290))

(declare-fun d!1595294 () Bool)

(declare-fun c!845992 () Bool)

(assert (=> d!1595294 (= c!845992 ((_ is Node!15034) (c!845976 totalInput!464)))))

(declare-fun e!3095371 () Bool)

(assert (=> d!1595294 (= (inv!74457 (c!845976 totalInput!464)) e!3095371)))

(declare-fun b!4954026 () Bool)

(assert (=> b!4954026 (= e!3095371 (inv!74461 (c!845976 totalInput!464)))))

(declare-fun b!4954027 () Bool)

(declare-fun e!3095372 () Bool)

(assert (=> b!4954027 (= e!3095371 e!3095372)))

(declare-fun res!2113536 () Bool)

(assert (=> b!4954027 (= res!2113536 (not ((_ is Leaf!25000) (c!845976 totalInput!464))))))

(assert (=> b!4954027 (=> res!2113536 e!3095372)))

(declare-fun b!4954028 () Bool)

(assert (=> b!4954028 (= e!3095372 (inv!74462 (c!845976 totalInput!464)))))

(assert (= (and d!1595294 c!845992) b!4954026))

(assert (= (and d!1595294 (not c!845992)) b!4954027))

(assert (= (and b!4954027 (not res!2113536)) b!4954028))

(declare-fun m!5978784 () Bool)

(assert (=> b!4954026 m!5978784))

(declare-fun m!5978786 () Bool)

(assert (=> b!4954028 m!5978786))

(assert (=> b!4953892 d!1595294))

(declare-fun d!1595296 () Bool)

(assert (=> d!1595296 (= (isDefined!11200 lt!2044517) (not (isEmpty!30707 lt!2044517)))))

(declare-fun bs!1182439 () Bool)

(assert (= bs!1182439 d!1595296))

(declare-fun m!5978788 () Bool)

(assert (=> bs!1182439 m!5978788))

(assert (=> b!4953891 d!1595296))

(declare-fun d!1595300 () Bool)

(declare-fun isEmpty!30708 (Option!14248) Bool)

(assert (=> d!1595300 (= (isDefined!11201 lt!2044523) (not (isEmpty!30708 lt!2044523)))))

(declare-fun bs!1182440 () Bool)

(assert (= bs!1182440 d!1595300))

(declare-fun m!5978790 () Bool)

(assert (=> bs!1182440 m!5978790))

(assert (=> b!4953891 d!1595300))

(declare-fun lt!2044634 () Option!14247)

(declare-fun d!1595304 () Bool)

(assert (=> d!1595304 (= lt!2044634 (maxPrefix!4615 thiss!15247 rulesArg!259 lt!2044519))))

(declare-fun e!3095402 () Option!14247)

(assert (=> d!1595304 (= lt!2044634 e!3095402)))

(declare-fun c!845999 () Bool)

(assert (=> d!1595304 (= c!845999 (and ((_ is Cons!57110) rulesArg!259) ((_ is Nil!57110) (t!367800 rulesArg!259))))))

(declare-fun lt!2044633 () Unit!148003)

(declare-fun lt!2044636 () Unit!148003)

(assert (=> d!1595304 (= lt!2044633 lt!2044636)))

(assert (=> d!1595304 (isPrefix!5135 lt!2044519 lt!2044519)))

(assert (=> d!1595304 (= lt!2044636 (lemmaIsPrefixRefl!3459 lt!2044519 lt!2044519))))

(assert (=> d!1595304 (rulesValidInductive!3185 thiss!15247 rulesArg!259)))

(assert (=> d!1595304 (= (maxPrefixZipper!693 thiss!15247 rulesArg!259 lt!2044519) lt!2044634)))

(declare-fun call!345871 () Option!14247)

(declare-fun bm!345866 () Bool)

(declare-fun maxPrefixOneRuleZipper!270 (LexerInterface!7874 Rule!16364 List!57233) Option!14247)

(assert (=> bm!345866 (= call!345871 (maxPrefixOneRuleZipper!270 thiss!15247 (h!63558 rulesArg!259) lt!2044519))))

(declare-fun b!4954082 () Bool)

(assert (=> b!4954082 (= e!3095402 call!345871)))

(declare-fun b!4954083 () Bool)

(declare-fun lt!2044637 () Option!14247)

(declare-fun lt!2044635 () Option!14247)

(assert (=> b!4954083 (= e!3095402 (ite (and ((_ is None!14246) lt!2044637) ((_ is None!14246) lt!2044635)) None!14246 (ite ((_ is None!14246) lt!2044635) lt!2044637 (ite ((_ is None!14246) lt!2044637) lt!2044635 (ite (>= (size!37892 (_1!34126 (v!50231 lt!2044637))) (size!37892 (_1!34126 (v!50231 lt!2044635)))) lt!2044637 lt!2044635)))))))

(assert (=> b!4954083 (= lt!2044637 call!345871)))

(assert (=> b!4954083 (= lt!2044635 (maxPrefixZipper!693 thiss!15247 (t!367800 rulesArg!259) lt!2044519))))

(assert (= (and d!1595304 c!845999) b!4954082))

(assert (= (and d!1595304 (not c!845999)) b!4954083))

(assert (= (or b!4954082 b!4954083) bm!345866))

(assert (=> d!1595304 m!5978614))

(assert (=> d!1595304 m!5978624))

(assert (=> d!1595304 m!5978626))

(assert (=> d!1595304 m!5978608))

(declare-fun m!5978828 () Bool)

(assert (=> bm!345866 m!5978828))

(declare-fun m!5978830 () Bool)

(assert (=> b!4954083 m!5978830))

(assert (=> b!4953891 d!1595304))

(declare-fun b!4954129 () Bool)

(declare-fun e!3095430 () Bool)

(assert (=> b!4954129 (= e!3095430 true)))

(declare-fun b!4954128 () Bool)

(declare-fun e!3095429 () Bool)

(assert (=> b!4954128 (= e!3095429 e!3095430)))

(declare-fun b!4954120 () Bool)

(assert (=> b!4954120 e!3095429))

(assert (= b!4954128 b!4954129))

(assert (= b!4954120 b!4954128))

(declare-fun order!26021 () Int)

(declare-fun lambda!247042 () Int)

(declare-fun order!26023 () Int)

(declare-fun dynLambda!23051 (Int Int) Int)

(declare-fun dynLambda!23052 (Int Int) Int)

(assert (=> b!4954129 (< (dynLambda!23051 order!26021 (toValue!11233 (transformation!8282 (h!63558 rulesArg!259)))) (dynLambda!23052 order!26023 lambda!247042))))

(declare-fun order!26025 () Int)

(declare-fun dynLambda!23053 (Int Int) Int)

(assert (=> b!4954129 (< (dynLambda!23053 order!26025 (toChars!11092 (transformation!8282 (h!63558 rulesArg!259)))) (dynLambda!23052 order!26023 lambda!247042))))

(declare-fun b!4954116 () Bool)

(declare-fun lt!2044662 () Option!14248)

(declare-fun e!3095421 () Bool)

(assert (=> b!4954116 (= e!3095421 (= (list!18214 (_2!34125 (get!19735 lt!2044662))) (_2!34126 (get!19734 (maxPrefixOneRule!3597 thiss!15247 (h!63558 rulesArg!259) (list!18214 input!1342))))))))

(declare-fun b!4954117 () Bool)

(declare-fun e!3095420 () Bool)

(assert (=> b!4954117 (= e!3095420 e!3095421)))

(declare-fun res!2113568 () Bool)

(assert (=> b!4954117 (=> (not res!2113568) (not e!3095421))))

(assert (=> b!4954117 (= res!2113568 (= (_1!34125 (get!19735 lt!2044662)) (_1!34126 (get!19734 (maxPrefixOneRule!3597 thiss!15247 (h!63558 rulesArg!259) (list!18214 input!1342))))))))

(declare-fun b!4954119 () Bool)

(declare-fun e!3095423 () Bool)

(assert (=> b!4954119 (= e!3095423 e!3095420)))

(declare-fun res!2113567 () Bool)

(assert (=> b!4954119 (=> res!2113567 e!3095420)))

(assert (=> b!4954119 (= res!2113567 (not (isDefined!11201 lt!2044662)))))

(declare-fun e!3095424 () Option!14248)

(declare-datatypes ((tuple2!61652 0))(
  ( (tuple2!61653 (_1!34129 BalanceConc!29498) (_2!34129 BalanceConc!29498)) )
))
(declare-fun lt!2044665 () tuple2!61652)

(declare-fun size!37896 (BalanceConc!29498) Int)

(assert (=> b!4954120 (= e!3095424 (Some!14247 (tuple2!61645 (Token!15073 (apply!13872 (transformation!8282 (h!63558 rulesArg!259)) (_1!34129 lt!2044665)) (h!63558 rulesArg!259) (size!37896 (_1!34129 lt!2044665)) (list!18214 (_1!34129 lt!2044665))) (_2!34129 lt!2044665))))))

(declare-fun lt!2044659 () List!57233)

(assert (=> b!4954120 (= lt!2044659 (list!18214 input!1342))))

(declare-fun lt!2044661 () Unit!148003)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1788 (Regex!13515 List!57233) Unit!148003)

(assert (=> b!4954120 (= lt!2044661 (longestMatchIsAcceptedByMatchOrIsEmpty!1788 (regex!8282 (h!63558 rulesArg!259)) lt!2044659))))

(declare-fun res!2113570 () Bool)

(declare-fun isEmpty!30709 (List!57233) Bool)

(declare-datatypes ((tuple2!61654 0))(
  ( (tuple2!61655 (_1!34130 List!57233) (_2!34130 List!57233)) )
))
(declare-fun findLongestMatchInner!1827 (Regex!13515 List!57233 Int List!57233 List!57233 Int) tuple2!61654)

(assert (=> b!4954120 (= res!2113570 (isEmpty!30709 (_1!34130 (findLongestMatchInner!1827 (regex!8282 (h!63558 rulesArg!259)) Nil!57109 (size!37895 Nil!57109) lt!2044659 lt!2044659 (size!37895 lt!2044659)))))))

(declare-fun e!3095422 () Bool)

(assert (=> b!4954120 (=> res!2113570 e!3095422)))

(assert (=> b!4954120 e!3095422))

(declare-fun lt!2044664 () Unit!148003)

(assert (=> b!4954120 (= lt!2044664 lt!2044661)))

(declare-fun lt!2044663 () Unit!148003)

(declare-fun lemmaInv!1306 (TokenValueInjection!16492) Unit!148003)

(assert (=> b!4954120 (= lt!2044663 (lemmaInv!1306 (transformation!8282 (h!63558 rulesArg!259))))))

(declare-fun lt!2044667 () Unit!148003)

(declare-fun ForallOf!1199 (Int BalanceConc!29498) Unit!148003)

(assert (=> b!4954120 (= lt!2044667 (ForallOf!1199 lambda!247042 (_1!34129 lt!2044665)))))

(declare-fun lt!2044660 () Unit!148003)

(assert (=> b!4954120 (= lt!2044660 (ForallOf!1199 lambda!247042 (seqFromList!6004 (list!18214 (_1!34129 lt!2044665)))))))

(declare-fun lt!2044658 () Option!14248)

(assert (=> b!4954120 (= lt!2044658 (Some!14247 (tuple2!61645 (Token!15073 (apply!13872 (transformation!8282 (h!63558 rulesArg!259)) (_1!34129 lt!2044665)) (h!63558 rulesArg!259) (size!37896 (_1!34129 lt!2044665)) (list!18214 (_1!34129 lt!2044665))) (_2!34129 lt!2044665))))))

(declare-fun lt!2044666 () Unit!148003)

(declare-fun lemmaEqSameImage!1140 (TokenValueInjection!16492 BalanceConc!29498 BalanceConc!29498) Unit!148003)

(assert (=> b!4954120 (= lt!2044666 (lemmaEqSameImage!1140 (transformation!8282 (h!63558 rulesArg!259)) (_1!34129 lt!2044665) (seqFromList!6004 (list!18214 (_1!34129 lt!2044665)))))))

(declare-fun b!4954121 () Bool)

(assert (=> b!4954121 (= e!3095422 (matchR!6604 (regex!8282 (h!63558 rulesArg!259)) (_1!34130 (findLongestMatchInner!1827 (regex!8282 (h!63558 rulesArg!259)) Nil!57109 (size!37895 Nil!57109) lt!2044659 lt!2044659 (size!37895 lt!2044659)))))))

(declare-fun d!1595310 () Bool)

(assert (=> d!1595310 e!3095423))

(declare-fun res!2113569 () Bool)

(assert (=> d!1595310 (=> (not res!2113569) (not e!3095423))))

(assert (=> d!1595310 (= res!2113569 (= (isDefined!11201 lt!2044662) (isDefined!11200 (maxPrefixOneRule!3597 thiss!15247 (h!63558 rulesArg!259) (list!18214 input!1342)))))))

(assert (=> d!1595310 (= lt!2044662 e!3095424)))

(declare-fun c!846002 () Bool)

(declare-fun isEmpty!30710 (BalanceConc!29498) Bool)

(assert (=> d!1595310 (= c!846002 (isEmpty!30710 (_1!34129 lt!2044665)))))

(declare-fun findLongestMatchWithZipperSequenceV2!136 (Regex!13515 BalanceConc!29498 BalanceConc!29498) tuple2!61652)

(assert (=> d!1595310 (= lt!2044665 (findLongestMatchWithZipperSequenceV2!136 (regex!8282 (h!63558 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595310 (ruleValid!3765 thiss!15247 (h!63558 rulesArg!259))))

(assert (=> d!1595310 (= (maxPrefixOneRuleZipperSequenceV2!270 thiss!15247 (h!63558 rulesArg!259) input!1342 totalInput!464) lt!2044662)))

(declare-fun b!4954118 () Bool)

(assert (=> b!4954118 (= e!3095424 None!14247)))

(assert (= (and d!1595310 c!846002) b!4954118))

(assert (= (and d!1595310 (not c!846002)) b!4954120))

(assert (= (and b!4954120 (not res!2113570)) b!4954121))

(assert (= (and d!1595310 res!2113569) b!4954119))

(assert (= (and b!4954119 (not res!2113567)) b!4954117))

(assert (= (and b!4954117 res!2113568) b!4954116))

(declare-fun m!5978844 () Bool)

(assert (=> b!4954121 m!5978844))

(declare-fun m!5978846 () Bool)

(assert (=> b!4954121 m!5978846))

(assert (=> b!4954121 m!5978844))

(assert (=> b!4954121 m!5978846))

(declare-fun m!5978848 () Bool)

(assert (=> b!4954121 m!5978848))

(declare-fun m!5978850 () Bool)

(assert (=> b!4954121 m!5978850))

(declare-fun m!5978852 () Bool)

(assert (=> d!1595310 m!5978852))

(declare-fun m!5978854 () Bool)

(assert (=> d!1595310 m!5978854))

(declare-fun m!5978856 () Bool)

(assert (=> d!1595310 m!5978856))

(assert (=> d!1595310 m!5978622))

(assert (=> d!1595310 m!5978676))

(declare-fun m!5978858 () Bool)

(assert (=> d!1595310 m!5978858))

(declare-fun m!5978860 () Bool)

(assert (=> d!1595310 m!5978860))

(assert (=> d!1595310 m!5978622))

(assert (=> d!1595310 m!5978858))

(declare-fun m!5978862 () Bool)

(assert (=> b!4954117 m!5978862))

(assert (=> b!4954117 m!5978622))

(assert (=> b!4954117 m!5978622))

(assert (=> b!4954117 m!5978858))

(assert (=> b!4954117 m!5978858))

(declare-fun m!5978864 () Bool)

(assert (=> b!4954117 m!5978864))

(assert (=> b!4954116 m!5978622))

(assert (=> b!4954116 m!5978858))

(declare-fun m!5978866 () Bool)

(assert (=> b!4954116 m!5978866))

(assert (=> b!4954116 m!5978858))

(assert (=> b!4954116 m!5978864))

(assert (=> b!4954116 m!5978622))

(assert (=> b!4954116 m!5978862))

(assert (=> b!4954119 m!5978854))

(assert (=> b!4954120 m!5978844))

(declare-fun m!5978868 () Bool)

(assert (=> b!4954120 m!5978868))

(declare-fun m!5978870 () Bool)

(assert (=> b!4954120 m!5978870))

(assert (=> b!4954120 m!5978846))

(declare-fun m!5978872 () Bool)

(assert (=> b!4954120 m!5978872))

(declare-fun m!5978874 () Bool)

(assert (=> b!4954120 m!5978874))

(assert (=> b!4954120 m!5978844))

(assert (=> b!4954120 m!5978846))

(assert (=> b!4954120 m!5978848))

(declare-fun m!5978876 () Bool)

(assert (=> b!4954120 m!5978876))

(declare-fun m!5978878 () Bool)

(assert (=> b!4954120 m!5978878))

(assert (=> b!4954120 m!5978622))

(declare-fun m!5978880 () Bool)

(assert (=> b!4954120 m!5978880))

(assert (=> b!4954120 m!5978878))

(declare-fun m!5978882 () Bool)

(assert (=> b!4954120 m!5978882))

(assert (=> b!4954120 m!5978882))

(declare-fun m!5978884 () Bool)

(assert (=> b!4954120 m!5978884))

(assert (=> b!4954120 m!5978882))

(declare-fun m!5978886 () Bool)

(assert (=> b!4954120 m!5978886))

(assert (=> b!4953891 d!1595310))

(declare-fun e!3095436 () Bool)

(declare-fun tp!1388956 () Bool)

(declare-fun tp!1388958 () Bool)

(declare-fun b!4954138 () Bool)

(assert (=> b!4954138 (= e!3095436 (and (inv!74457 (left!41657 (c!845976 input!1342))) tp!1388958 (inv!74457 (right!41987 (c!845976 input!1342))) tp!1388956))))

(declare-fun b!4954140 () Bool)

(declare-fun e!3095435 () Bool)

(declare-fun tp!1388957 () Bool)

(assert (=> b!4954140 (= e!3095435 tp!1388957)))

(declare-fun b!4954139 () Bool)

(declare-fun inv!74464 (IArray!30129) Bool)

(assert (=> b!4954139 (= e!3095436 (and (inv!74464 (xs!18360 (c!845976 input!1342))) e!3095435))))

(assert (=> b!4953894 (= tp!1388905 (and (inv!74457 (c!845976 input!1342)) e!3095436))))

(assert (= (and b!4953894 ((_ is Node!15034) (c!845976 input!1342))) b!4954138))

(assert (= b!4954139 b!4954140))

(assert (= (and b!4953894 ((_ is Leaf!25000) (c!845976 input!1342))) b!4954139))

(declare-fun m!5978888 () Bool)

(assert (=> b!4954138 m!5978888))

(declare-fun m!5978890 () Bool)

(assert (=> b!4954138 m!5978890))

(declare-fun m!5978892 () Bool)

(assert (=> b!4954139 m!5978892))

(assert (=> b!4953894 m!5978604))

(declare-fun b!4954151 () Bool)

(declare-fun b_free!132115 () Bool)

(declare-fun b_next!132905 () Bool)

(assert (=> b!4954151 (= b_free!132115 (not b_next!132905))))

(declare-fun tp!1388968 () Bool)

(declare-fun b_and!346967 () Bool)

(assert (=> b!4954151 (= tp!1388968 b_and!346967)))

(declare-fun b_free!132117 () Bool)

(declare-fun b_next!132907 () Bool)

(assert (=> b!4954151 (= b_free!132117 (not b_next!132907))))

(declare-fun tp!1388970 () Bool)

(declare-fun b_and!346969 () Bool)

(assert (=> b!4954151 (= tp!1388970 b_and!346969)))

(declare-fun e!3095447 () Bool)

(assert (=> b!4954151 (= e!3095447 (and tp!1388968 tp!1388970))))

(declare-fun e!3095448 () Bool)

(declare-fun tp!1388969 () Bool)

(declare-fun b!4954150 () Bool)

(assert (=> b!4954150 (= e!3095448 (and tp!1388969 (inv!74452 (tag!9146 (h!63558 (t!367800 rulesArg!259)))) (inv!74456 (transformation!8282 (h!63558 (t!367800 rulesArg!259)))) e!3095447))))

(declare-fun b!4954149 () Bool)

(declare-fun e!3095446 () Bool)

(declare-fun tp!1388967 () Bool)

(assert (=> b!4954149 (= e!3095446 (and e!3095448 tp!1388967))))

(assert (=> b!4953883 (= tp!1388907 e!3095446)))

(assert (= b!4954150 b!4954151))

(assert (= b!4954149 b!4954150))

(assert (= (and b!4953883 ((_ is Cons!57110) (t!367800 rulesArg!259))) b!4954149))

(declare-fun m!5978894 () Bool)

(assert (=> b!4954150 m!5978894))

(declare-fun m!5978896 () Bool)

(assert (=> b!4954150 m!5978896))

(declare-fun e!3095451 () Bool)

(assert (=> b!4953882 (= tp!1388910 e!3095451)))

(declare-fun b!4954164 () Bool)

(declare-fun tp!1388983 () Bool)

(assert (=> b!4954164 (= e!3095451 tp!1388983)))

(declare-fun b!4954162 () Bool)

(declare-fun tp_is_empty!36259 () Bool)

(assert (=> b!4954162 (= e!3095451 tp_is_empty!36259)))

(declare-fun b!4954165 () Bool)

(declare-fun tp!1388985 () Bool)

(declare-fun tp!1388984 () Bool)

(assert (=> b!4954165 (= e!3095451 (and tp!1388985 tp!1388984))))

(declare-fun b!4954163 () Bool)

(declare-fun tp!1388981 () Bool)

(declare-fun tp!1388982 () Bool)

(assert (=> b!4954163 (= e!3095451 (and tp!1388981 tp!1388982))))

(assert (= (and b!4953882 ((_ is ElementMatch!13515) (regex!8282 (h!63558 rulesArg!259)))) b!4954162))

(assert (= (and b!4953882 ((_ is Concat!22108) (regex!8282 (h!63558 rulesArg!259)))) b!4954163))

(assert (= (and b!4953882 ((_ is Star!13515) (regex!8282 (h!63558 rulesArg!259)))) b!4954164))

(assert (= (and b!4953882 ((_ is Union!13515) (regex!8282 (h!63558 rulesArg!259)))) b!4954165))

(declare-fun e!3095453 () Bool)

(declare-fun tp!1388986 () Bool)

(declare-fun tp!1388988 () Bool)

(declare-fun b!4954166 () Bool)

(assert (=> b!4954166 (= e!3095453 (and (inv!74457 (left!41657 (c!845976 totalInput!464))) tp!1388988 (inv!74457 (right!41987 (c!845976 totalInput!464))) tp!1388986))))

(declare-fun b!4954168 () Bool)

(declare-fun e!3095452 () Bool)

(declare-fun tp!1388987 () Bool)

(assert (=> b!4954168 (= e!3095452 tp!1388987)))

(declare-fun b!4954167 () Bool)

(assert (=> b!4954167 (= e!3095453 (and (inv!74464 (xs!18360 (c!845976 totalInput!464))) e!3095452))))

(assert (=> b!4953892 (= tp!1388906 (and (inv!74457 (c!845976 totalInput!464)) e!3095453))))

(assert (= (and b!4953892 ((_ is Node!15034) (c!845976 totalInput!464))) b!4954166))

(assert (= b!4954167 b!4954168))

(assert (= (and b!4953892 ((_ is Leaf!25000) (c!845976 totalInput!464))) b!4954167))

(declare-fun m!5978898 () Bool)

(assert (=> b!4954166 m!5978898))

(declare-fun m!5978900 () Bool)

(assert (=> b!4954166 m!5978900))

(declare-fun m!5978902 () Bool)

(assert (=> b!4954167 m!5978902))

(assert (=> b!4953892 m!5978606))

(check-sat (not b!4954000) (not b!4953892) (not d!1595274) b_and!346969 (not d!1595300) (not b_next!132897) (not b!4953967) (not d!1595290) (not b_next!132907) (not b!4953969) (not b!4954120) (not b!4954028) (not b!4954119) (not b!4954001) (not b!4954167) (not b!4953942) (not d!1595310) (not b!4954165) (not b!4954164) (not b_next!132905) (not b!4953958) (not d!1595296) (not b!4954026) (not b!4953960) (not d!1595270) (not b!4954140) (not b!4954150) (not b!4954163) (not b!4954139) (not b!4954149) b_and!346961 (not b!4954117) (not b!4953959) (not b!4954138) (not b!4954116) (not b_next!132899) (not b!4954004) (not d!1595266) (not b!4954005) (not bm!345860) b_and!346967 (not b!4954083) (not d!1595262) (not b!4954121) (not d!1595260) (not bm!345866) b_and!346959 (not b!4953894) (not b!4954168) (not b!4954025) (not d!1595284) (not b!4954166) (not b!4954006) (not b!4953948) tp_is_empty!36259 (not d!1595286) (not d!1595268) (not d!1595228) (not b!4954003) (not d!1595276) (not b!4954007) (not d!1595304) (not b!4953943) (not b!4954002))
(check-sat (not b_next!132907) (not b_next!132905) b_and!346969 b_and!346961 (not b_next!132899) (not b_next!132897) b_and!346967 b_and!346959)
