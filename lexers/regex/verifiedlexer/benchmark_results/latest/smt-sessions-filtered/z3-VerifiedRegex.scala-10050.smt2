; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525578 () Bool)

(assert start!525578)

(declare-fun b!4980070 () Bool)

(declare-fun b_free!133107 () Bool)

(declare-fun b_next!133897 () Bool)

(assert (=> b!4980070 (= b_free!133107 (not b_next!133897))))

(declare-fun tp!1396340 () Bool)

(declare-fun b_and!349559 () Bool)

(assert (=> b!4980070 (= tp!1396340 b_and!349559)))

(declare-fun b_free!133109 () Bool)

(declare-fun b_next!133899 () Bool)

(assert (=> b!4980070 (= b_free!133109 (not b_next!133899))))

(declare-fun tp!1396338 () Bool)

(declare-fun b_and!349561 () Bool)

(assert (=> b!4980070 (= tp!1396338 b_and!349561)))

(declare-fun b!4980084 () Bool)

(declare-fun e!3112685 () Bool)

(assert (=> b!4980084 (= e!3112685 true)))

(declare-fun b!4980083 () Bool)

(declare-fun e!3112684 () Bool)

(assert (=> b!4980083 (= e!3112684 e!3112685)))

(declare-fun b!4980068 () Bool)

(assert (=> b!4980068 e!3112684))

(assert (= b!4980083 b!4980084))

(assert (= b!4980068 b!4980083))

(declare-fun lambda!247802 () Int)

(declare-fun order!26471 () Int)

(declare-fun order!26469 () Int)

(declare-datatypes ((C!27620 0))(
  ( (C!27621 (val!23176 Int)) )
))
(declare-datatypes ((List!57700 0))(
  ( (Nil!57576) (Cons!57576 (h!64024 C!27620) (t!369752 List!57700)) )
))
(declare-datatypes ((IArray!30469 0))(
  ( (IArray!30470 (innerList!15292 List!57700)) )
))
(declare-datatypes ((String!65683 0))(
  ( (String!65684 (value!270276 String)) )
))
(declare-datatypes ((List!57701 0))(
  ( (Nil!57577) (Cons!57577 (h!64025 (_ BitVec 16)) (t!369753 List!57701)) )
))
(declare-datatypes ((Regex!13685 0))(
  ( (ElementMatch!13685 (c!849709 C!27620)) (Concat!22447 (regOne!27882 Regex!13685) (regTwo!27882 Regex!13685)) (EmptyExpr!13685) (Star!13685 (reg!14014 Regex!13685)) (EmptyLang!13685) (Union!13685 (regOne!27883 Regex!13685) (regTwo!27883 Regex!13685)) )
))
(declare-datatypes ((Conc!15204 0))(
  ( (Node!15204 (left!42080 Conc!15204) (right!42410 Conc!15204) (csize!30638 Int) (cheight!15415 Int)) (Leaf!25255 (xs!18530 IArray!30469) (csize!30639 Int)) (Empty!15204) )
))
(declare-datatypes ((BalanceConc!29838 0))(
  ( (BalanceConc!29839 (c!849710 Conc!15204)) )
))
(declare-datatypes ((TokenValue!8762 0))(
  ( (FloatLiteralValue!17524 (text!61779 List!57701)) (TokenValueExt!8761 (__x!34817 Int)) (Broken!43810 (value!270277 List!57701)) (Object!8885) (End!8762) (Def!8762) (Underscore!8762) (Match!8762) (Else!8762) (Error!8762) (Case!8762) (If!8762) (Extends!8762) (Abstract!8762) (Class!8762) (Val!8762) (DelimiterValue!17524 (del!8822 List!57701)) (KeywordValue!8768 (value!270278 List!57701)) (CommentValue!17524 (value!270279 List!57701)) (WhitespaceValue!17524 (value!270280 List!57701)) (IndentationValue!8762 (value!270281 List!57701)) (String!65685) (Int32!8762) (Broken!43811 (value!270282 List!57701)) (Boolean!8763) (Unit!148621) (OperatorValue!8765 (op!8822 List!57701)) (IdentifierValue!17524 (value!270283 List!57701)) (IdentifierValue!17525 (value!270284 List!57701)) (WhitespaceValue!17525 (value!270285 List!57701)) (True!17524) (False!17524) (Broken!43812 (value!270286 List!57701)) (Broken!43813 (value!270287 List!57701)) (True!17525) (RightBrace!8762) (RightBracket!8762) (Colon!8762) (Null!8762) (Comma!8762) (LeftBracket!8762) (False!17525) (LeftBrace!8762) (ImaginaryLiteralValue!8762 (text!61780 List!57701)) (StringLiteralValue!26286 (value!270288 List!57701)) (EOFValue!8762 (value!270289 List!57701)) (IdentValue!8762 (value!270290 List!57701)) (DelimiterValue!17525 (value!270291 List!57701)) (DedentValue!8762 (value!270292 List!57701)) (NewLineValue!8762 (value!270293 List!57701)) (IntegerValue!26286 (value!270294 (_ BitVec 32)) (text!61781 List!57701)) (IntegerValue!26287 (value!270295 Int) (text!61782 List!57701)) (Times!8762) (Or!8762) (Equal!8762) (Minus!8762) (Broken!43814 (value!270296 List!57701)) (And!8762) (Div!8762) (LessEqual!8762) (Mod!8762) (Concat!22448) (Not!8762) (Plus!8762) (SpaceValue!8762 (value!270297 List!57701)) (IntegerValue!26288 (value!270298 Int) (text!61783 List!57701)) (StringLiteralValue!26287 (text!61784 List!57701)) (FloatLiteralValue!17525 (text!61785 List!57701)) (BytesLiteralValue!8762 (value!270299 List!57701)) (CommentValue!17525 (value!270300 List!57701)) (StringLiteralValue!26288 (value!270301 List!57701)) (ErrorTokenValue!8762 (msg!8823 List!57701)) )
))
(declare-datatypes ((TokenValueInjection!16832 0))(
  ( (TokenValueInjection!16833 (toValue!11435 Int) (toChars!11294 Int)) )
))
(declare-datatypes ((Rule!16704 0))(
  ( (Rule!16705 (regex!8452 Regex!13685) (tag!9316 String!65683) (isSeparator!8452 Bool) (transformation!8452 TokenValueInjection!16832)) )
))
(declare-fun rule!200 () Rule!16704)

(declare-fun dynLambda!23332 (Int Int) Int)

(declare-fun dynLambda!23333 (Int Int) Int)

(assert (=> b!4980084 (< (dynLambda!23332 order!26469 (toValue!11435 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247802))))

(declare-fun order!26473 () Int)

(declare-fun dynLambda!23334 (Int Int) Int)

(assert (=> b!4980084 (< (dynLambda!23334 order!26473 (toChars!11294 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247802))))

(declare-fun b!4980065 () Bool)

(declare-fun e!3112675 () Bool)

(declare-datatypes ((tuple2!62496 0))(
  ( (tuple2!62497 (_1!34551 List!57700) (_2!34551 List!57700)) )
))
(declare-fun lt!2057339 () tuple2!62496)

(declare-fun matchR!6679 (Regex!13685 List!57700) Bool)

(assert (=> b!4980065 (= e!3112675 (matchR!6679 (regex!8452 rule!200) (_1!34551 lt!2057339)))))

(declare-fun b!4980066 () Bool)

(declare-fun e!3112676 () Bool)

(declare-fun totalInput!520 () BalanceConc!29838)

(declare-fun tp!1396342 () Bool)

(declare-fun inv!75395 (Conc!15204) Bool)

(assert (=> b!4980066 (= e!3112676 (and (inv!75395 (c!849710 totalInput!520)) tp!1396342))))

(declare-fun b!4980067 () Bool)

(declare-fun e!3112670 () Bool)

(declare-fun e!3112671 () Bool)

(assert (=> b!4980067 (= e!3112670 e!3112671)))

(declare-fun res!2125942 () Bool)

(assert (=> b!4980067 (=> (not res!2125942) (not e!3112671))))

(declare-fun lt!2057340 () List!57700)

(declare-fun isSuffix!1251 (List!57700 List!57700) Bool)

(declare-fun list!18452 (BalanceConc!29838) List!57700)

(assert (=> b!4980067 (= res!2125942 (isSuffix!1251 lt!2057340 (list!18452 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29838)

(assert (=> b!4980067 (= lt!2057340 (list!18452 input!1580))))

(declare-fun res!2125946 () Bool)

(declare-fun e!3112673 () Bool)

(assert (=> b!4980068 (=> res!2125946 e!3112673)))

(declare-fun Forall!1802 (Int) Bool)

(assert (=> b!4980068 (= res!2125946 (not (Forall!1802 lambda!247802)))))

(declare-fun b!4980069 () Bool)

(declare-fun e!3112674 () Bool)

(assert (=> b!4980069 (= e!3112673 e!3112674)))

(declare-fun res!2125947 () Bool)

(assert (=> b!4980069 (=> res!2125947 e!3112674)))

(declare-fun lt!2057342 () Bool)

(declare-datatypes ((LexerInterface!8044 0))(
  ( (LexerInterfaceExt!8041 (__x!34818 Int)) (Lexer!8042) )
))
(declare-fun thiss!16165 () LexerInterface!8044)

(declare-datatypes ((Token!15360 0))(
  ( (Token!15361 (value!270302 TokenValue!8762) (rule!11702 Rule!16704) (size!38197 Int) (originalCharacters!8711 List!57700)) )
))
(declare-datatypes ((tuple2!62498 0))(
  ( (tuple2!62499 (_1!34552 Token!15360) (_2!34552 List!57700)) )
))
(declare-datatypes ((Option!14523 0))(
  ( (None!14522) (Some!14522 (v!50519 tuple2!62498)) )
))
(declare-fun isDefined!11432 (Option!14523) Bool)

(declare-fun maxPrefixOneRule!3668 (LexerInterface!8044 Rule!16704 List!57700) Option!14523)

(assert (=> b!4980069 (= res!2125947 (not (= lt!2057342 (isDefined!11432 (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340)))))))

(declare-fun lt!2057334 () List!57700)

(declare-datatypes ((tuple2!62500 0))(
  ( (tuple2!62501 (_1!34553 BalanceConc!29838) (_2!34553 BalanceConc!29838)) )
))
(declare-fun lt!2057338 () tuple2!62500)

(declare-datatypes ((tuple2!62502 0))(
  ( (tuple2!62503 (_1!34554 Token!15360) (_2!34554 BalanceConc!29838)) )
))
(declare-datatypes ((Option!14524 0))(
  ( (None!14523) (Some!14523 (v!50520 tuple2!62502)) )
))
(declare-fun isDefined!11433 (Option!14524) Bool)

(declare-fun apply!13939 (TokenValueInjection!16832 BalanceConc!29838) TokenValue!8762)

(declare-fun size!38198 (BalanceConc!29838) Int)

(assert (=> b!4980069 (= lt!2057342 (isDefined!11433 (Some!14523 (tuple2!62503 (Token!15361 (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) rule!200 (size!38198 (_1!34553 lt!2057338)) lt!2057334) (_2!34553 lt!2057338)))))))

(declare-datatypes ((Unit!148622 0))(
  ( (Unit!148623) )
))
(declare-fun lt!2057335 () Unit!148622)

(declare-fun ForallOf!1262 (Int BalanceConc!29838) Unit!148622)

(declare-fun seqFromList!6073 (List!57700) BalanceConc!29838)

(assert (=> b!4980069 (= lt!2057335 (ForallOf!1262 lambda!247802 (seqFromList!6073 lt!2057334)))))

(assert (=> b!4980069 (= lt!2057334 (list!18452 (_1!34553 lt!2057338)))))

(declare-fun lt!2057337 () Unit!148622)

(assert (=> b!4980069 (= lt!2057337 (ForallOf!1262 lambda!247802 (_1!34553 lt!2057338)))))

(declare-fun e!3112678 () Bool)

(assert (=> b!4980070 (= e!3112678 (and tp!1396340 tp!1396338))))

(declare-fun b!4980071 () Bool)

(declare-fun e!3112679 () Bool)

(declare-fun tp!1396341 () Bool)

(assert (=> b!4980071 (= e!3112679 (and (inv!75395 (c!849710 input!1580)) tp!1396341))))

(declare-fun b!4980072 () Bool)

(declare-fun res!2125944 () Bool)

(assert (=> b!4980072 (=> (not res!2125944) (not e!3112670))))

(declare-fun ruleValid!3860 (LexerInterface!8044 Rule!16704) Bool)

(assert (=> b!4980072 (= res!2125944 (ruleValid!3860 thiss!16165 rule!200))))

(declare-fun res!2125945 () Bool)

(assert (=> start!525578 (=> (not res!2125945) (not e!3112670))))

(get-info :version)

(assert (=> start!525578 (= res!2125945 ((_ is Lexer!8042) thiss!16165))))

(assert (=> start!525578 e!3112670))

(assert (=> start!525578 true))

(declare-fun e!3112669 () Bool)

(assert (=> start!525578 e!3112669))

(declare-fun inv!75396 (BalanceConc!29838) Bool)

(assert (=> start!525578 (and (inv!75396 totalInput!520) e!3112676)))

(assert (=> start!525578 (and (inv!75396 input!1580) e!3112679)))

(declare-fun tp!1396339 () Bool)

(declare-fun b!4980073 () Bool)

(declare-fun inv!75391 (String!65683) Bool)

(declare-fun inv!75397 (TokenValueInjection!16832) Bool)

(assert (=> b!4980073 (= e!3112669 (and tp!1396339 (inv!75391 (tag!9316 rule!200)) (inv!75397 (transformation!8452 rule!200)) e!3112678))))

(declare-fun b!4980074 () Bool)

(declare-fun e!3112677 () Bool)

(assert (=> b!4980074 (= e!3112677 (not e!3112673))))

(declare-fun res!2125940 () Bool)

(assert (=> b!4980074 (=> res!2125940 e!3112673)))

(declare-fun semiInverseModEq!3745 (Int Int) Bool)

(assert (=> b!4980074 (= res!2125940 (not (semiInverseModEq!3745 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200)))))))

(declare-fun lt!2057341 () Unit!148622)

(declare-fun lemmaInv!1375 (TokenValueInjection!16832) Unit!148622)

(assert (=> b!4980074 (= lt!2057341 (lemmaInv!1375 (transformation!8452 rule!200)))))

(assert (=> b!4980074 e!3112675))

(declare-fun res!2125943 () Bool)

(assert (=> b!4980074 (=> res!2125943 e!3112675)))

(declare-fun isEmpty!31075 (List!57700) Bool)

(assert (=> b!4980074 (= res!2125943 (isEmpty!31075 (_1!34551 lt!2057339)))))

(declare-fun findLongestMatchInner!1896 (Regex!13685 List!57700 Int List!57700 List!57700 Int) tuple2!62496)

(declare-fun size!38199 (List!57700) Int)

(assert (=> b!4980074 (= lt!2057339 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))

(declare-fun lt!2057336 () Unit!148622)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1857 (Regex!13685 List!57700) Unit!148622)

(assert (=> b!4980074 (= lt!2057336 (longestMatchIsAcceptedByMatchOrIsEmpty!1857 (regex!8452 rule!200) lt!2057340))))

(declare-fun b!4980075 () Bool)

(assert (=> b!4980075 (= e!3112674 lt!2057342)))

(declare-fun b!4980076 () Bool)

(assert (=> b!4980076 (= e!3112671 e!3112677)))

(declare-fun res!2125941 () Bool)

(assert (=> b!4980076 (=> (not res!2125941) (not e!3112677))))

(declare-fun isEmpty!31076 (BalanceConc!29838) Bool)

(assert (=> b!4980076 (= res!2125941 (not (isEmpty!31076 (_1!34553 lt!2057338))))))

(declare-fun findLongestMatchWithZipperSequenceV2!215 (Regex!13685 BalanceConc!29838 BalanceConc!29838) tuple2!62500)

(assert (=> b!4980076 (= lt!2057338 (findLongestMatchWithZipperSequenceV2!215 (regex!8452 rule!200) input!1580 totalInput!520))))

(assert (= (and start!525578 res!2125945) b!4980072))

(assert (= (and b!4980072 res!2125944) b!4980067))

(assert (= (and b!4980067 res!2125942) b!4980076))

(assert (= (and b!4980076 res!2125941) b!4980074))

(assert (= (and b!4980074 (not res!2125943)) b!4980065))

(assert (= (and b!4980074 (not res!2125940)) b!4980068))

(assert (= (and b!4980068 (not res!2125946)) b!4980069))

(assert (= (and b!4980069 (not res!2125947)) b!4980075))

(assert (= b!4980073 b!4980070))

(assert (= start!525578 b!4980073))

(assert (= start!525578 b!4980066))

(assert (= start!525578 b!4980071))

(declare-fun m!6010878 () Bool)

(assert (=> b!4980066 m!6010878))

(declare-fun m!6010880 () Bool)

(assert (=> b!4980069 m!6010880))

(declare-fun m!6010882 () Bool)

(assert (=> b!4980069 m!6010882))

(declare-fun m!6010884 () Bool)

(assert (=> b!4980069 m!6010884))

(declare-fun m!6010886 () Bool)

(assert (=> b!4980069 m!6010886))

(declare-fun m!6010888 () Bool)

(assert (=> b!4980069 m!6010888))

(declare-fun m!6010890 () Bool)

(assert (=> b!4980069 m!6010890))

(declare-fun m!6010892 () Bool)

(assert (=> b!4980069 m!6010892))

(declare-fun m!6010894 () Bool)

(assert (=> b!4980069 m!6010894))

(assert (=> b!4980069 m!6010886))

(declare-fun m!6010896 () Bool)

(assert (=> b!4980069 m!6010896))

(assert (=> b!4980069 m!6010882))

(declare-fun m!6010898 () Bool)

(assert (=> start!525578 m!6010898))

(declare-fun m!6010900 () Bool)

(assert (=> start!525578 m!6010900))

(declare-fun m!6010902 () Bool)

(assert (=> b!4980072 m!6010902))

(declare-fun m!6010904 () Bool)

(assert (=> b!4980074 m!6010904))

(declare-fun m!6010906 () Bool)

(assert (=> b!4980074 m!6010906))

(declare-fun m!6010908 () Bool)

(assert (=> b!4980074 m!6010908))

(declare-fun m!6010910 () Bool)

(assert (=> b!4980074 m!6010910))

(declare-fun m!6010912 () Bool)

(assert (=> b!4980074 m!6010912))

(assert (=> b!4980074 m!6010906))

(assert (=> b!4980074 m!6010904))

(declare-fun m!6010914 () Bool)

(assert (=> b!4980074 m!6010914))

(declare-fun m!6010916 () Bool)

(assert (=> b!4980074 m!6010916))

(declare-fun m!6010918 () Bool)

(assert (=> b!4980073 m!6010918))

(declare-fun m!6010920 () Bool)

(assert (=> b!4980073 m!6010920))

(declare-fun m!6010922 () Bool)

(assert (=> b!4980067 m!6010922))

(assert (=> b!4980067 m!6010922))

(declare-fun m!6010924 () Bool)

(assert (=> b!4980067 m!6010924))

(declare-fun m!6010926 () Bool)

(assert (=> b!4980067 m!6010926))

(declare-fun m!6010928 () Bool)

(assert (=> b!4980065 m!6010928))

(declare-fun m!6010930 () Bool)

(assert (=> b!4980076 m!6010930))

(declare-fun m!6010932 () Bool)

(assert (=> b!4980076 m!6010932))

(declare-fun m!6010934 () Bool)

(assert (=> b!4980071 m!6010934))

(declare-fun m!6010936 () Bool)

(assert (=> b!4980068 m!6010936))

(check-sat (not b!4980073) (not b!4980069) (not b!4980072) (not b!4980074) (not b!4980076) (not b_next!133899) (not b!4980067) (not b!4980071) b_and!349559 (not b_next!133897) (not b!4980066) b_and!349561 (not start!525578) (not b!4980065) (not b!4980068))
(check-sat b_and!349561 b_and!349559 (not b_next!133899) (not b_next!133897))
(get-model)

(declare-fun d!1603619 () Bool)

(declare-fun c!849713 () Bool)

(assert (=> d!1603619 (= c!849713 ((_ is Node!15204) (c!849710 totalInput!520)))))

(declare-fun e!3112690 () Bool)

(assert (=> d!1603619 (= (inv!75395 (c!849710 totalInput!520)) e!3112690)))

(declare-fun b!4980091 () Bool)

(declare-fun inv!75401 (Conc!15204) Bool)

(assert (=> b!4980091 (= e!3112690 (inv!75401 (c!849710 totalInput!520)))))

(declare-fun b!4980092 () Bool)

(declare-fun e!3112691 () Bool)

(assert (=> b!4980092 (= e!3112690 e!3112691)))

(declare-fun res!2125954 () Bool)

(assert (=> b!4980092 (= res!2125954 (not ((_ is Leaf!25255) (c!849710 totalInput!520))))))

(assert (=> b!4980092 (=> res!2125954 e!3112691)))

(declare-fun b!4980093 () Bool)

(declare-fun inv!75402 (Conc!15204) Bool)

(assert (=> b!4980093 (= e!3112691 (inv!75402 (c!849710 totalInput!520)))))

(assert (= (and d!1603619 c!849713) b!4980091))

(assert (= (and d!1603619 (not c!849713)) b!4980092))

(assert (= (and b!4980092 (not res!2125954)) b!4980093))

(declare-fun m!6010954 () Bool)

(assert (=> b!4980091 m!6010954))

(declare-fun m!6010956 () Bool)

(assert (=> b!4980093 m!6010956))

(assert (=> b!4980066 d!1603619))

(declare-fun d!1603621 () Bool)

(declare-fun isBalanced!4222 (Conc!15204) Bool)

(assert (=> d!1603621 (= (inv!75396 totalInput!520) (isBalanced!4222 (c!849710 totalInput!520)))))

(declare-fun bs!1184164 () Bool)

(assert (= bs!1184164 d!1603621))

(declare-fun m!6010958 () Bool)

(assert (=> bs!1184164 m!6010958))

(assert (=> start!525578 d!1603621))

(declare-fun d!1603623 () Bool)

(assert (=> d!1603623 (= (inv!75396 input!1580) (isBalanced!4222 (c!849710 input!1580)))))

(declare-fun bs!1184165 () Bool)

(assert (= bs!1184165 d!1603623))

(declare-fun m!6010960 () Bool)

(assert (=> bs!1184165 m!6010960))

(assert (=> start!525578 d!1603623))

(declare-fun d!1603625 () Bool)

(declare-fun c!849714 () Bool)

(assert (=> d!1603625 (= c!849714 ((_ is Node!15204) (c!849710 input!1580)))))

(declare-fun e!3112692 () Bool)

(assert (=> d!1603625 (= (inv!75395 (c!849710 input!1580)) e!3112692)))

(declare-fun b!4980094 () Bool)

(assert (=> b!4980094 (= e!3112692 (inv!75401 (c!849710 input!1580)))))

(declare-fun b!4980095 () Bool)

(declare-fun e!3112693 () Bool)

(assert (=> b!4980095 (= e!3112692 e!3112693)))

(declare-fun res!2125955 () Bool)

(assert (=> b!4980095 (= res!2125955 (not ((_ is Leaf!25255) (c!849710 input!1580))))))

(assert (=> b!4980095 (=> res!2125955 e!3112693)))

(declare-fun b!4980096 () Bool)

(assert (=> b!4980096 (= e!3112693 (inv!75402 (c!849710 input!1580)))))

(assert (= (and d!1603625 c!849714) b!4980094))

(assert (= (and d!1603625 (not c!849714)) b!4980095))

(assert (= (and b!4980095 (not res!2125955)) b!4980096))

(declare-fun m!6010962 () Bool)

(assert (=> b!4980094 m!6010962))

(declare-fun m!6010964 () Bool)

(assert (=> b!4980096 m!6010964))

(assert (=> b!4980071 d!1603625))

(declare-fun d!1603627 () Bool)

(declare-fun lt!2057351 () Bool)

(assert (=> d!1603627 (= lt!2057351 (isEmpty!31075 (list!18452 (_1!34553 lt!2057338))))))

(declare-fun isEmpty!31080 (Conc!15204) Bool)

(assert (=> d!1603627 (= lt!2057351 (isEmpty!31080 (c!849710 (_1!34553 lt!2057338))))))

(assert (=> d!1603627 (= (isEmpty!31076 (_1!34553 lt!2057338)) lt!2057351)))

(declare-fun bs!1184166 () Bool)

(assert (= bs!1184166 d!1603627))

(assert (=> bs!1184166 m!6010890))

(assert (=> bs!1184166 m!6010890))

(declare-fun m!6010966 () Bool)

(assert (=> bs!1184166 m!6010966))

(declare-fun m!6010968 () Bool)

(assert (=> bs!1184166 m!6010968))

(assert (=> b!4980076 d!1603627))

(declare-fun d!1603629 () Bool)

(declare-fun lt!2057354 () tuple2!62500)

(declare-fun findLongestMatch!1712 (Regex!13685 List!57700) tuple2!62496)

(assert (=> d!1603629 (= (tuple2!62497 (list!18452 (_1!34553 lt!2057354)) (list!18452 (_2!34553 lt!2057354))) (findLongestMatch!1712 (regex!8452 rule!200) (list!18452 input!1580)))))

(declare-fun choose!36771 (Regex!13685 BalanceConc!29838 BalanceConc!29838) tuple2!62500)

(assert (=> d!1603629 (= lt!2057354 (choose!36771 (regex!8452 rule!200) input!1580 totalInput!520))))

(declare-fun validRegex!5986 (Regex!13685) Bool)

(assert (=> d!1603629 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603629 (= (findLongestMatchWithZipperSequenceV2!215 (regex!8452 rule!200) input!1580 totalInput!520) lt!2057354)))

(declare-fun bs!1184167 () Bool)

(assert (= bs!1184167 d!1603629))

(declare-fun m!6010970 () Bool)

(assert (=> bs!1184167 m!6010970))

(assert (=> bs!1184167 m!6010926))

(declare-fun m!6010972 () Bool)

(assert (=> bs!1184167 m!6010972))

(declare-fun m!6010974 () Bool)

(assert (=> bs!1184167 m!6010974))

(assert (=> bs!1184167 m!6010926))

(declare-fun m!6010976 () Bool)

(assert (=> bs!1184167 m!6010976))

(declare-fun m!6010978 () Bool)

(assert (=> bs!1184167 m!6010978))

(assert (=> b!4980076 d!1603629))

(declare-fun d!1603631 () Bool)

(assert (=> d!1603631 (= (inv!75391 (tag!9316 rule!200)) (= (mod (str.len (value!270276 (tag!9316 rule!200))) 2) 0))))

(assert (=> b!4980073 d!1603631))

(declare-fun d!1603633 () Bool)

(declare-fun res!2125958 () Bool)

(declare-fun e!3112696 () Bool)

(assert (=> d!1603633 (=> (not res!2125958) (not e!3112696))))

(assert (=> d!1603633 (= res!2125958 (semiInverseModEq!3745 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))))))

(assert (=> d!1603633 (= (inv!75397 (transformation!8452 rule!200)) e!3112696)))

(declare-fun b!4980099 () Bool)

(declare-fun equivClasses!3567 (Int Int) Bool)

(assert (=> b!4980099 (= e!3112696 (equivClasses!3567 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))))))

(assert (= (and d!1603633 res!2125958) b!4980099))

(assert (=> d!1603633 m!6010914))

(declare-fun m!6010980 () Bool)

(assert (=> b!4980099 m!6010980))

(assert (=> b!4980073 d!1603633))

(declare-fun d!1603635 () Bool)

(declare-fun e!3112711 () Bool)

(assert (=> d!1603635 e!3112711))

(declare-fun res!2125961 () Bool)

(assert (=> d!1603635 (=> res!2125961 e!3112711)))

(declare-fun lt!2057413 () Bool)

(assert (=> d!1603635 (= res!2125961 (not lt!2057413))))

(declare-fun drop!2368 (List!57700 Int) List!57700)

(assert (=> d!1603635 (= lt!2057413 (= lt!2057340 (drop!2368 (list!18452 totalInput!520) (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)))))))

(assert (=> d!1603635 (= (isSuffix!1251 lt!2057340 (list!18452 totalInput!520)) lt!2057413)))

(declare-fun b!4980126 () Bool)

(assert (=> b!4980126 (= e!3112711 (>= (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)))))

(assert (= (and d!1603635 (not res!2125961)) b!4980126))

(assert (=> d!1603635 m!6010922))

(declare-fun m!6010982 () Bool)

(assert (=> d!1603635 m!6010982))

(assert (=> d!1603635 m!6010906))

(assert (=> d!1603635 m!6010922))

(declare-fun m!6010984 () Bool)

(assert (=> d!1603635 m!6010984))

(assert (=> b!4980126 m!6010922))

(assert (=> b!4980126 m!6010982))

(assert (=> b!4980126 m!6010906))

(assert (=> b!4980067 d!1603635))

(declare-fun d!1603637 () Bool)

(declare-fun list!18454 (Conc!15204) List!57700)

(assert (=> d!1603637 (= (list!18452 totalInput!520) (list!18454 (c!849710 totalInput!520)))))

(declare-fun bs!1184168 () Bool)

(assert (= bs!1184168 d!1603637))

(declare-fun m!6010986 () Bool)

(assert (=> bs!1184168 m!6010986))

(assert (=> b!4980067 d!1603637))

(declare-fun d!1603639 () Bool)

(assert (=> d!1603639 (= (list!18452 input!1580) (list!18454 (c!849710 input!1580)))))

(declare-fun bs!1184169 () Bool)

(assert (= bs!1184169 d!1603639))

(declare-fun m!6010988 () Bool)

(assert (=> bs!1184169 m!6010988))

(assert (=> b!4980067 d!1603639))

(declare-fun d!1603641 () Bool)

(declare-fun res!2125970 () Bool)

(declare-fun e!3112718 () Bool)

(assert (=> d!1603641 (=> (not res!2125970) (not e!3112718))))

(assert (=> d!1603641 (= res!2125970 (validRegex!5986 (regex!8452 rule!200)))))

(assert (=> d!1603641 (= (ruleValid!3860 thiss!16165 rule!200) e!3112718)))

(declare-fun b!4980135 () Bool)

(declare-fun res!2125971 () Bool)

(assert (=> b!4980135 (=> (not res!2125971) (not e!3112718))))

(declare-fun nullable!4637 (Regex!13685) Bool)

(assert (=> b!4980135 (= res!2125971 (not (nullable!4637 (regex!8452 rule!200))))))

(declare-fun b!4980136 () Bool)

(assert (=> b!4980136 (= e!3112718 (not (= (tag!9316 rule!200) (String!65684 ""))))))

(assert (= (and d!1603641 res!2125970) b!4980135))

(assert (= (and b!4980135 res!2125971) b!4980136))

(assert (=> d!1603641 m!6010974))

(declare-fun m!6010990 () Bool)

(assert (=> b!4980135 m!6010990))

(assert (=> b!4980072 d!1603641))

(declare-fun d!1603643 () Bool)

(declare-fun lt!2057444 () Int)

(assert (=> d!1603643 (= lt!2057444 (size!38199 (list!18452 (_1!34553 lt!2057338))))))

(declare-fun size!38201 (Conc!15204) Int)

(assert (=> d!1603643 (= lt!2057444 (size!38201 (c!849710 (_1!34553 lt!2057338))))))

(assert (=> d!1603643 (= (size!38198 (_1!34553 lt!2057338)) lt!2057444)))

(declare-fun bs!1184170 () Bool)

(assert (= bs!1184170 d!1603643))

(assert (=> bs!1184170 m!6010890))

(assert (=> bs!1184170 m!6010890))

(declare-fun m!6011030 () Bool)

(assert (=> bs!1184170 m!6011030))

(declare-fun m!6011036 () Bool)

(assert (=> bs!1184170 m!6011036))

(assert (=> b!4980069 d!1603643))

(declare-fun d!1603645 () Bool)

(declare-fun isEmpty!31081 (Option!14523) Bool)

(assert (=> d!1603645 (= (isDefined!11432 (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340)) (not (isEmpty!31081 (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340))))))

(declare-fun bs!1184171 () Bool)

(assert (= bs!1184171 d!1603645))

(assert (=> bs!1184171 m!6010886))

(declare-fun m!6011050 () Bool)

(assert (=> bs!1184171 m!6011050))

(assert (=> b!4980069 d!1603645))

(declare-fun d!1603649 () Bool)

(declare-fun dynLambda!23338 (Int BalanceConc!29838) Bool)

(assert (=> d!1603649 (dynLambda!23338 lambda!247802 (_1!34553 lt!2057338))))

(declare-fun lt!2057447 () Unit!148622)

(declare-fun choose!36772 (Int BalanceConc!29838) Unit!148622)

(assert (=> d!1603649 (= lt!2057447 (choose!36772 lambda!247802 (_1!34553 lt!2057338)))))

(assert (=> d!1603649 (Forall!1802 lambda!247802)))

(assert (=> d!1603649 (= (ForallOf!1262 lambda!247802 (_1!34553 lt!2057338)) lt!2057447)))

(declare-fun b_lambda!197701 () Bool)

(assert (=> (not b_lambda!197701) (not d!1603649)))

(declare-fun bs!1184172 () Bool)

(assert (= bs!1184172 d!1603649))

(declare-fun m!6011052 () Bool)

(assert (=> bs!1184172 m!6011052))

(declare-fun m!6011054 () Bool)

(assert (=> bs!1184172 m!6011054))

(assert (=> bs!1184172 m!6010936))

(assert (=> b!4980069 d!1603649))

(declare-fun d!1603651 () Bool)

(declare-fun fromListB!2742 (List!57700) BalanceConc!29838)

(assert (=> d!1603651 (= (seqFromList!6073 lt!2057334) (fromListB!2742 lt!2057334))))

(declare-fun bs!1184173 () Bool)

(assert (= bs!1184173 d!1603651))

(declare-fun m!6011060 () Bool)

(assert (=> bs!1184173 m!6011060))

(assert (=> b!4980069 d!1603651))

(declare-fun d!1603653 () Bool)

(assert (=> d!1603653 (= (list!18452 (_1!34553 lt!2057338)) (list!18454 (c!849710 (_1!34553 lt!2057338))))))

(declare-fun bs!1184174 () Bool)

(assert (= bs!1184174 d!1603653))

(declare-fun m!6011064 () Bool)

(assert (=> bs!1184174 m!6011064))

(assert (=> b!4980069 d!1603653))

(declare-fun b!4980228 () Bool)

(declare-fun e!3112769 () Bool)

(assert (=> b!4980228 (= e!3112769 (matchR!6679 (regex!8452 rule!200) (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(declare-fun d!1603657 () Bool)

(declare-fun e!3112771 () Bool)

(assert (=> d!1603657 e!3112771))

(declare-fun res!2126030 () Bool)

(assert (=> d!1603657 (=> res!2126030 e!3112771)))

(declare-fun lt!2057491 () Option!14523)

(assert (=> d!1603657 (= res!2126030 (isEmpty!31081 lt!2057491))))

(declare-fun e!3112770 () Option!14523)

(assert (=> d!1603657 (= lt!2057491 e!3112770)))

(declare-fun c!849742 () Bool)

(declare-fun lt!2057493 () tuple2!62496)

(assert (=> d!1603657 (= c!849742 (isEmpty!31075 (_1!34551 lt!2057493)))))

(assert (=> d!1603657 (= lt!2057493 (findLongestMatch!1712 (regex!8452 rule!200) lt!2057340))))

(assert (=> d!1603657 (ruleValid!3860 thiss!16165 rule!200)))

(assert (=> d!1603657 (= (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340) lt!2057491)))

(declare-fun b!4980229 () Bool)

(declare-fun res!2126032 () Bool)

(declare-fun e!3112772 () Bool)

(assert (=> b!4980229 (=> (not res!2126032) (not e!3112772))))

(declare-fun get!20014 (Option!14523) tuple2!62498)

(assert (=> b!4980229 (= res!2126032 (= (value!270302 (_1!34552 (get!20014 lt!2057491))) (apply!13939 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491)))) (seqFromList!6073 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))))))))

(declare-fun b!4980230 () Bool)

(assert (=> b!4980230 (= e!3112771 e!3112772)))

(declare-fun res!2126028 () Bool)

(assert (=> b!4980230 (=> (not res!2126028) (not e!3112772))))

(declare-fun charsOf!5450 (Token!15360) BalanceConc!29838)

(assert (=> b!4980230 (= res!2126028 (matchR!6679 (regex!8452 rule!200) (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))

(declare-fun b!4980231 () Bool)

(declare-fun res!2126029 () Bool)

(assert (=> b!4980231 (=> (not res!2126029) (not e!3112772))))

(assert (=> b!4980231 (= res!2126029 (= (rule!11702 (_1!34552 (get!20014 lt!2057491))) rule!200))))

(declare-fun b!4980232 () Bool)

(assert (=> b!4980232 (= e!3112770 None!14522)))

(declare-fun b!4980233 () Bool)

(assert (=> b!4980233 (= e!3112770 (Some!14522 (tuple2!62499 (Token!15361 (apply!13939 (transformation!8452 rule!200) (seqFromList!6073 (_1!34551 lt!2057493))) rule!200 (size!38198 (seqFromList!6073 (_1!34551 lt!2057493))) (_1!34551 lt!2057493)) (_2!34551 lt!2057493))))))

(declare-fun lt!2057494 () Unit!148622)

(assert (=> b!4980233 (= lt!2057494 (longestMatchIsAcceptedByMatchOrIsEmpty!1857 (regex!8452 rule!200) lt!2057340))))

(declare-fun res!2126027 () Bool)

(assert (=> b!4980233 (= res!2126027 (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (=> b!4980233 (=> res!2126027 e!3112769)))

(assert (=> b!4980233 e!3112769))

(declare-fun lt!2057492 () Unit!148622)

(assert (=> b!4980233 (= lt!2057492 lt!2057494)))

(declare-fun lt!2057490 () Unit!148622)

(declare-fun lemmaSemiInverse!2613 (TokenValueInjection!16832 BalanceConc!29838) Unit!148622)

(assert (=> b!4980233 (= lt!2057490 (lemmaSemiInverse!2613 (transformation!8452 rule!200) (seqFromList!6073 (_1!34551 lt!2057493))))))

(declare-fun b!4980234 () Bool)

(assert (=> b!4980234 (= e!3112772 (= (size!38197 (_1!34552 (get!20014 lt!2057491))) (size!38199 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491))))))))

(declare-fun b!4980235 () Bool)

(declare-fun res!2126033 () Bool)

(assert (=> b!4980235 (=> (not res!2126033) (not e!3112772))))

(declare-fun ++!12549 (List!57700 List!57700) List!57700)

(assert (=> b!4980235 (= res!2126033 (= (++!12549 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))) (_2!34552 (get!20014 lt!2057491))) lt!2057340))))

(declare-fun b!4980236 () Bool)

(declare-fun res!2126031 () Bool)

(assert (=> b!4980236 (=> (not res!2126031) (not e!3112772))))

(assert (=> b!4980236 (= res!2126031 (< (size!38199 (_2!34552 (get!20014 lt!2057491))) (size!38199 lt!2057340)))))

(assert (= (and d!1603657 c!849742) b!4980232))

(assert (= (and d!1603657 (not c!849742)) b!4980233))

(assert (= (and b!4980233 (not res!2126027)) b!4980228))

(assert (= (and d!1603657 (not res!2126030)) b!4980230))

(assert (= (and b!4980230 res!2126028) b!4980235))

(assert (= (and b!4980235 res!2126033) b!4980236))

(assert (= (and b!4980236 res!2126031) b!4980231))

(assert (= (and b!4980231 res!2126029) b!4980229))

(assert (= (and b!4980229 res!2126032) b!4980234))

(declare-fun m!6011138 () Bool)

(assert (=> b!4980230 m!6011138))

(declare-fun m!6011140 () Bool)

(assert (=> b!4980230 m!6011140))

(assert (=> b!4980230 m!6011140))

(declare-fun m!6011142 () Bool)

(assert (=> b!4980230 m!6011142))

(assert (=> b!4980230 m!6011142))

(declare-fun m!6011144 () Bool)

(assert (=> b!4980230 m!6011144))

(assert (=> b!4980236 m!6011138))

(declare-fun m!6011148 () Bool)

(assert (=> b!4980236 m!6011148))

(assert (=> b!4980236 m!6010906))

(assert (=> b!4980229 m!6011138))

(declare-fun m!6011152 () Bool)

(assert (=> b!4980229 m!6011152))

(assert (=> b!4980229 m!6011152))

(declare-fun m!6011154 () Bool)

(assert (=> b!4980229 m!6011154))

(assert (=> b!4980231 m!6011138))

(assert (=> b!4980233 m!6010904))

(assert (=> b!4980233 m!6010906))

(assert (=> b!4980233 m!6010908))

(declare-fun m!6011156 () Bool)

(assert (=> b!4980233 m!6011156))

(declare-fun m!6011158 () Bool)

(assert (=> b!4980233 m!6011158))

(declare-fun m!6011160 () Bool)

(assert (=> b!4980233 m!6011160))

(assert (=> b!4980233 m!6011158))

(declare-fun m!6011162 () Bool)

(assert (=> b!4980233 m!6011162))

(assert (=> b!4980233 m!6010912))

(assert (=> b!4980233 m!6010904))

(assert (=> b!4980233 m!6010906))

(assert (=> b!4980233 m!6011158))

(assert (=> b!4980233 m!6011158))

(declare-fun m!6011164 () Bool)

(assert (=> b!4980233 m!6011164))

(assert (=> b!4980235 m!6011138))

(assert (=> b!4980235 m!6011140))

(assert (=> b!4980235 m!6011140))

(assert (=> b!4980235 m!6011142))

(assert (=> b!4980235 m!6011142))

(declare-fun m!6011166 () Bool)

(assert (=> b!4980235 m!6011166))

(assert (=> b!4980234 m!6011138))

(declare-fun m!6011168 () Bool)

(assert (=> b!4980234 m!6011168))

(declare-fun m!6011170 () Bool)

(assert (=> d!1603657 m!6011170))

(declare-fun m!6011172 () Bool)

(assert (=> d!1603657 m!6011172))

(declare-fun m!6011174 () Bool)

(assert (=> d!1603657 m!6011174))

(assert (=> d!1603657 m!6010902))

(assert (=> b!4980228 m!6010904))

(assert (=> b!4980228 m!6010906))

(assert (=> b!4980228 m!6010904))

(assert (=> b!4980228 m!6010906))

(assert (=> b!4980228 m!6010908))

(declare-fun m!6011176 () Bool)

(assert (=> b!4980228 m!6011176))

(assert (=> b!4980069 d!1603657))

(declare-fun d!1603703 () Bool)

(declare-fun dynLambda!23339 (Int BalanceConc!29838) TokenValue!8762)

(assert (=> d!1603703 (= (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))

(declare-fun b_lambda!197709 () Bool)

(assert (=> (not b_lambda!197709) (not d!1603703)))

(declare-fun t!369757 () Bool)

(declare-fun tb!261569 () Bool)

(assert (=> (and b!4980070 (= (toValue!11435 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))) t!369757) tb!261569))

(declare-fun result!326838 () Bool)

(declare-fun inv!21 (TokenValue!8762) Bool)

(assert (=> tb!261569 (= result!326838 (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(declare-fun m!6011182 () Bool)

(assert (=> tb!261569 m!6011182))

(assert (=> d!1603703 t!369757))

(declare-fun b_and!349565 () Bool)

(assert (= b_and!349559 (and (=> t!369757 result!326838) b_and!349565)))

(declare-fun m!6011184 () Bool)

(assert (=> d!1603703 m!6011184))

(assert (=> b!4980069 d!1603703))

(declare-fun d!1603707 () Bool)

(assert (=> d!1603707 (dynLambda!23338 lambda!247802 (seqFromList!6073 lt!2057334))))

(declare-fun lt!2057495 () Unit!148622)

(assert (=> d!1603707 (= lt!2057495 (choose!36772 lambda!247802 (seqFromList!6073 lt!2057334)))))

(assert (=> d!1603707 (Forall!1802 lambda!247802)))

(assert (=> d!1603707 (= (ForallOf!1262 lambda!247802 (seqFromList!6073 lt!2057334)) lt!2057495)))

(declare-fun b_lambda!197711 () Bool)

(assert (=> (not b_lambda!197711) (not d!1603707)))

(declare-fun bs!1184188 () Bool)

(assert (= bs!1184188 d!1603707))

(assert (=> bs!1184188 m!6010882))

(declare-fun m!6011186 () Bool)

(assert (=> bs!1184188 m!6011186))

(assert (=> bs!1184188 m!6010882))

(declare-fun m!6011188 () Bool)

(assert (=> bs!1184188 m!6011188))

(assert (=> bs!1184188 m!6010936))

(assert (=> b!4980069 d!1603707))

(declare-fun d!1603709 () Bool)

(declare-fun isEmpty!31082 (Option!14524) Bool)

(assert (=> d!1603709 (= (isDefined!11433 (Some!14523 (tuple2!62503 (Token!15361 (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) rule!200 (size!38198 (_1!34553 lt!2057338)) lt!2057334) (_2!34553 lt!2057338)))) (not (isEmpty!31082 (Some!14523 (tuple2!62503 (Token!15361 (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) rule!200 (size!38198 (_1!34553 lt!2057338)) lt!2057334) (_2!34553 lt!2057338))))))))

(declare-fun bs!1184189 () Bool)

(assert (= bs!1184189 d!1603709))

(declare-fun m!6011190 () Bool)

(assert (=> bs!1184189 m!6011190))

(assert (=> b!4980069 d!1603709))

(declare-fun d!1603711 () Bool)

(assert (=> d!1603711 (= (isEmpty!31075 (_1!34551 lt!2057339)) ((_ is Nil!57576) (_1!34551 lt!2057339)))))

(assert (=> b!4980074 d!1603711))

(declare-fun d!1603713 () Bool)

(declare-fun lt!2057500 () Int)

(assert (=> d!1603713 (>= lt!2057500 0)))

(declare-fun e!3112798 () Int)

(assert (=> d!1603713 (= lt!2057500 e!3112798)))

(declare-fun c!849754 () Bool)

(assert (=> d!1603713 (= c!849754 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1603713 (= (size!38199 Nil!57576) lt!2057500)))

(declare-fun b!4980280 () Bool)

(assert (=> b!4980280 (= e!3112798 0)))

(declare-fun b!4980281 () Bool)

(assert (=> b!4980281 (= e!3112798 (+ 1 (size!38199 (t!369752 Nil!57576))))))

(assert (= (and d!1603713 c!849754) b!4980280))

(assert (= (and d!1603713 (not c!849754)) b!4980281))

(declare-fun m!6011192 () Bool)

(assert (=> b!4980281 m!6011192))

(assert (=> b!4980074 d!1603713))

(declare-fun bm!347362 () Bool)

(declare-fun call!347372 () C!27620)

(declare-fun head!10686 (List!57700) C!27620)

(assert (=> bm!347362 (= call!347372 (head!10686 lt!2057340))))

(declare-fun bm!347363 () Bool)

(declare-fun call!347374 () Bool)

(assert (=> bm!347363 (= call!347374 (nullable!4637 (regex!8452 rule!200)))))

(declare-fun b!4980361 () Bool)

(declare-fun c!849774 () Bool)

(assert (=> b!4980361 (= c!849774 call!347374)))

(declare-fun lt!2057567 () Unit!148622)

(declare-fun lt!2057583 () Unit!148622)

(assert (=> b!4980361 (= lt!2057567 lt!2057583)))

(declare-fun lt!2057573 () C!27620)

(declare-fun lt!2057574 () List!57700)

(assert (=> b!4980361 (= (++!12549 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576)) lt!2057574) lt!2057340)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1460 (List!57700 C!27620 List!57700 List!57700) Unit!148622)

(assert (=> b!4980361 (= lt!2057583 (lemmaMoveElementToOtherListKeepsConcatEq!1460 Nil!57576 lt!2057573 lt!2057574 lt!2057340))))

(declare-fun tail!9819 (List!57700) List!57700)

(assert (=> b!4980361 (= lt!2057574 (tail!9819 lt!2057340))))

(assert (=> b!4980361 (= lt!2057573 (head!10686 lt!2057340))))

(declare-fun lt!2057582 () Unit!148622)

(declare-fun lt!2057571 () Unit!148622)

(assert (=> b!4980361 (= lt!2057582 lt!2057571)))

(declare-fun isPrefix!5263 (List!57700 List!57700) Bool)

(declare-fun getSuffix!3103 (List!57700 List!57700) List!57700)

(assert (=> b!4980361 (isPrefix!5263 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)) lt!2057340)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!850 (List!57700 List!57700) Unit!148622)

(assert (=> b!4980361 (= lt!2057571 (lemmaAddHeadSuffixToPrefixStillPrefix!850 Nil!57576 lt!2057340))))

(declare-fun lt!2057572 () Unit!148622)

(declare-fun lt!2057561 () Unit!148622)

(assert (=> b!4980361 (= lt!2057572 lt!2057561)))

(assert (=> b!4980361 (= lt!2057561 (lemmaAddHeadSuffixToPrefixStillPrefix!850 Nil!57576 lt!2057340))))

(declare-fun lt!2057578 () List!57700)

(assert (=> b!4980361 (= lt!2057578 (++!12549 Nil!57576 (Cons!57576 (head!10686 lt!2057340) Nil!57576)))))

(declare-fun lt!2057577 () Unit!148622)

(declare-fun e!3112844 () Unit!148622)

(assert (=> b!4980361 (= lt!2057577 e!3112844)))

(declare-fun c!849773 () Bool)

(assert (=> b!4980361 (= c!849773 (= (size!38199 Nil!57576) (size!38199 lt!2057340)))))

(declare-fun lt!2057579 () Unit!148622)

(declare-fun lt!2057565 () Unit!148622)

(assert (=> b!4980361 (= lt!2057579 lt!2057565)))

(assert (=> b!4980361 (<= (size!38199 Nil!57576) (size!38199 lt!2057340))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!776 (List!57700 List!57700) Unit!148622)

(assert (=> b!4980361 (= lt!2057565 (lemmaIsPrefixThenSmallerEqSize!776 Nil!57576 lt!2057340))))

(declare-fun e!3112843 () tuple2!62496)

(declare-fun e!3112846 () tuple2!62496)

(assert (=> b!4980361 (= e!3112843 e!3112846)))

(declare-fun bm!347364 () Bool)

(declare-fun call!347367 () List!57700)

(declare-fun call!347371 () tuple2!62496)

(declare-fun call!347370 () Regex!13685)

(assert (=> bm!347364 (= call!347371 (findLongestMatchInner!1896 call!347370 lt!2057578 (+ (size!38199 Nil!57576) 1) call!347367 lt!2057340 (size!38199 lt!2057340)))))

(declare-fun bm!347365 () Bool)

(declare-fun call!347373 () Unit!148622)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1223 (List!57700 List!57700 List!57700) Unit!148622)

(assert (=> bm!347365 (= call!347373 (lemmaIsPrefixSameLengthThenSameList!1223 lt!2057340 Nil!57576 lt!2057340))))

(declare-fun bm!347366 () Bool)

(declare-fun call!347369 () Unit!148622)

(declare-fun lemmaIsPrefixRefl!3587 (List!57700 List!57700) Unit!148622)

(assert (=> bm!347366 (= call!347369 (lemmaIsPrefixRefl!3587 lt!2057340 lt!2057340))))

(declare-fun b!4980362 () Bool)

(declare-fun e!3112840 () Bool)

(declare-fun e!3112842 () Bool)

(assert (=> b!4980362 (= e!3112840 e!3112842)))

(declare-fun res!2126067 () Bool)

(assert (=> b!4980362 (=> res!2126067 e!3112842)))

(declare-fun lt!2057570 () tuple2!62496)

(assert (=> b!4980362 (= res!2126067 (isEmpty!31075 (_1!34551 lt!2057570)))))

(declare-fun b!4980363 () Bool)

(declare-fun e!3112847 () tuple2!62496)

(declare-fun lt!2057584 () tuple2!62496)

(assert (=> b!4980363 (= e!3112847 lt!2057584)))

(declare-fun bm!347367 () Bool)

(assert (=> bm!347367 (= call!347367 (tail!9819 lt!2057340))))

(declare-fun b!4980364 () Bool)

(declare-fun Unit!148628 () Unit!148622)

(assert (=> b!4980364 (= e!3112844 Unit!148628)))

(declare-fun b!4980365 () Bool)

(declare-fun e!3112845 () tuple2!62496)

(assert (=> b!4980365 (= e!3112845 (tuple2!62497 Nil!57576 Nil!57576))))

(declare-fun b!4980366 () Bool)

(declare-fun c!849771 () Bool)

(assert (=> b!4980366 (= c!849771 call!347374)))

(declare-fun lt!2057566 () Unit!148622)

(declare-fun lt!2057560 () Unit!148622)

(assert (=> b!4980366 (= lt!2057566 lt!2057560)))

(assert (=> b!4980366 (= lt!2057340 Nil!57576)))

(assert (=> b!4980366 (= lt!2057560 call!347373)))

(declare-fun lt!2057581 () Unit!148622)

(declare-fun lt!2057563 () Unit!148622)

(assert (=> b!4980366 (= lt!2057581 lt!2057563)))

(declare-fun call!347368 () Bool)

(assert (=> b!4980366 call!347368))

(assert (=> b!4980366 (= lt!2057563 call!347369)))

(assert (=> b!4980366 (= e!3112843 e!3112845)))

(declare-fun b!4980367 () Bool)

(declare-fun e!3112841 () tuple2!62496)

(assert (=> b!4980367 (= e!3112841 (tuple2!62497 Nil!57576 lt!2057340))))

(declare-fun bm!347368 () Bool)

(declare-fun derivativeStep!3937 (Regex!13685 C!27620) Regex!13685)

(assert (=> bm!347368 (= call!347370 (derivativeStep!3937 (regex!8452 rule!200) call!347372))))

(declare-fun b!4980368 () Bool)

(assert (=> b!4980368 (= e!3112846 call!347371)))

(declare-fun b!4980369 () Bool)

(declare-fun Unit!148629 () Unit!148622)

(assert (=> b!4980369 (= e!3112844 Unit!148629)))

(declare-fun lt!2057576 () Unit!148622)

(assert (=> b!4980369 (= lt!2057576 call!347369)))

(assert (=> b!4980369 call!347368))

(declare-fun lt!2057580 () Unit!148622)

(assert (=> b!4980369 (= lt!2057580 lt!2057576)))

(declare-fun lt!2057585 () Unit!148622)

(assert (=> b!4980369 (= lt!2057585 call!347373)))

(assert (=> b!4980369 (= lt!2057340 Nil!57576)))

(declare-fun lt!2057562 () Unit!148622)

(assert (=> b!4980369 (= lt!2057562 lt!2057585)))

(assert (=> b!4980369 false))

(declare-fun bm!347369 () Bool)

(assert (=> bm!347369 (= call!347368 (isPrefix!5263 lt!2057340 lt!2057340))))

(declare-fun b!4980370 () Bool)

(assert (=> b!4980370 (= e!3112845 (tuple2!62497 Nil!57576 lt!2057340))))

(declare-fun b!4980371 () Bool)

(assert (=> b!4980371 (= e!3112846 e!3112847)))

(assert (=> b!4980371 (= lt!2057584 call!347371)))

(declare-fun c!849772 () Bool)

(assert (=> b!4980371 (= c!849772 (isEmpty!31075 (_1!34551 lt!2057584)))))

(declare-fun d!1603715 () Bool)

(assert (=> d!1603715 e!3112840))

(declare-fun res!2126066 () Bool)

(assert (=> d!1603715 (=> (not res!2126066) (not e!3112840))))

(assert (=> d!1603715 (= res!2126066 (= (++!12549 (_1!34551 lt!2057570) (_2!34551 lt!2057570)) lt!2057340))))

(assert (=> d!1603715 (= lt!2057570 e!3112841)))

(declare-fun c!849775 () Bool)

(declare-fun lostCause!1147 (Regex!13685) Bool)

(assert (=> d!1603715 (= c!849775 (lostCause!1147 (regex!8452 rule!200)))))

(declare-fun lt!2057559 () Unit!148622)

(declare-fun Unit!148630 () Unit!148622)

(assert (=> d!1603715 (= lt!2057559 Unit!148630)))

(assert (=> d!1603715 (= (getSuffix!3103 lt!2057340 Nil!57576) lt!2057340)))

(declare-fun lt!2057575 () Unit!148622)

(declare-fun lt!2057558 () Unit!148622)

(assert (=> d!1603715 (= lt!2057575 lt!2057558)))

(declare-fun lt!2057569 () List!57700)

(assert (=> d!1603715 (= lt!2057340 lt!2057569)))

(declare-fun lemmaSamePrefixThenSameSuffix!2515 (List!57700 List!57700 List!57700 List!57700 List!57700) Unit!148622)

(assert (=> d!1603715 (= lt!2057558 (lemmaSamePrefixThenSameSuffix!2515 Nil!57576 lt!2057340 Nil!57576 lt!2057569 lt!2057340))))

(assert (=> d!1603715 (= lt!2057569 (getSuffix!3103 lt!2057340 Nil!57576))))

(declare-fun lt!2057568 () Unit!148622)

(declare-fun lt!2057564 () Unit!148622)

(assert (=> d!1603715 (= lt!2057568 lt!2057564)))

(assert (=> d!1603715 (isPrefix!5263 Nil!57576 (++!12549 Nil!57576 lt!2057340))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3361 (List!57700 List!57700) Unit!148622)

(assert (=> d!1603715 (= lt!2057564 (lemmaConcatTwoListThenFirstIsPrefix!3361 Nil!57576 lt!2057340))))

(assert (=> d!1603715 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603715 (= (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)) lt!2057570)))

(declare-fun b!4980372 () Bool)

(assert (=> b!4980372 (= e!3112842 (>= (size!38199 (_1!34551 lt!2057570)) (size!38199 Nil!57576)))))

(declare-fun b!4980373 () Bool)

(assert (=> b!4980373 (= e!3112847 (tuple2!62497 Nil!57576 lt!2057340))))

(declare-fun b!4980374 () Bool)

(assert (=> b!4980374 (= e!3112841 e!3112843)))

(declare-fun c!849776 () Bool)

(assert (=> b!4980374 (= c!849776 (= (size!38199 Nil!57576) (size!38199 lt!2057340)))))

(assert (= (and d!1603715 c!849775) b!4980367))

(assert (= (and d!1603715 (not c!849775)) b!4980374))

(assert (= (and b!4980374 c!849776) b!4980366))

(assert (= (and b!4980374 (not c!849776)) b!4980361))

(assert (= (and b!4980366 c!849771) b!4980365))

(assert (= (and b!4980366 (not c!849771)) b!4980370))

(assert (= (and b!4980361 c!849773) b!4980369))

(assert (= (and b!4980361 (not c!849773)) b!4980364))

(assert (= (and b!4980361 c!849774) b!4980371))

(assert (= (and b!4980361 (not c!849774)) b!4980368))

(assert (= (and b!4980371 c!849772) b!4980373))

(assert (= (and b!4980371 (not c!849772)) b!4980363))

(assert (= (or b!4980371 b!4980368) bm!347362))

(assert (= (or b!4980371 b!4980368) bm!347367))

(assert (= (or b!4980371 b!4980368) bm!347368))

(assert (= (or b!4980371 b!4980368) bm!347364))

(assert (= (or b!4980366 b!4980369) bm!347369))

(assert (= (or b!4980366 b!4980369) bm!347365))

(assert (= (or b!4980366 b!4980369) bm!347366))

(assert (= (or b!4980366 b!4980361) bm!347363))

(assert (= (and d!1603715 res!2126066) b!4980362))

(assert (= (and b!4980362 (not res!2126067)) b!4980372))

(assert (=> bm!347364 m!6010906))

(declare-fun m!6011242 () Bool)

(assert (=> bm!347364 m!6011242))

(declare-fun m!6011244 () Bool)

(assert (=> bm!347368 m!6011244))

(declare-fun m!6011246 () Bool)

(assert (=> bm!347366 m!6011246))

(declare-fun m!6011248 () Bool)

(assert (=> b!4980362 m!6011248))

(declare-fun m!6011250 () Bool)

(assert (=> bm!347362 m!6011250))

(assert (=> b!4980361 m!6010906))

(declare-fun m!6011252 () Bool)

(assert (=> b!4980361 m!6011252))

(assert (=> b!4980361 m!6010904))

(declare-fun m!6011254 () Bool)

(assert (=> b!4980361 m!6011254))

(declare-fun m!6011256 () Bool)

(assert (=> b!4980361 m!6011256))

(declare-fun m!6011258 () Bool)

(assert (=> b!4980361 m!6011258))

(assert (=> b!4980361 m!6011250))

(declare-fun m!6011260 () Bool)

(assert (=> b!4980361 m!6011260))

(declare-fun m!6011262 () Bool)

(assert (=> b!4980361 m!6011262))

(declare-fun m!6011264 () Bool)

(assert (=> b!4980361 m!6011264))

(assert (=> b!4980361 m!6011262))

(declare-fun m!6011266 () Bool)

(assert (=> b!4980361 m!6011266))

(declare-fun m!6011268 () Bool)

(assert (=> b!4980361 m!6011268))

(assert (=> b!4980361 m!6011254))

(declare-fun m!6011270 () Bool)

(assert (=> b!4980361 m!6011270))

(assert (=> b!4980361 m!6011252))

(declare-fun m!6011272 () Bool)

(assert (=> b!4980361 m!6011272))

(declare-fun m!6011274 () Bool)

(assert (=> d!1603715 m!6011274))

(declare-fun m!6011276 () Bool)

(assert (=> d!1603715 m!6011276))

(declare-fun m!6011278 () Bool)

(assert (=> d!1603715 m!6011278))

(declare-fun m!6011280 () Bool)

(assert (=> d!1603715 m!6011280))

(assert (=> d!1603715 m!6011278))

(declare-fun m!6011282 () Bool)

(assert (=> d!1603715 m!6011282))

(declare-fun m!6011284 () Bool)

(assert (=> d!1603715 m!6011284))

(assert (=> d!1603715 m!6010974))

(assert (=> d!1603715 m!6011262))

(declare-fun m!6011286 () Bool)

(assert (=> b!4980371 m!6011286))

(assert (=> bm!347367 m!6011258))

(assert (=> bm!347363 m!6010990))

(declare-fun m!6011288 () Bool)

(assert (=> bm!347369 m!6011288))

(declare-fun m!6011290 () Bool)

(assert (=> b!4980372 m!6011290))

(assert (=> b!4980372 m!6010904))

(declare-fun m!6011292 () Bool)

(assert (=> bm!347365 m!6011292))

(assert (=> b!4980074 d!1603715))

(declare-fun d!1603723 () Bool)

(declare-fun lt!2057586 () Int)

(assert (=> d!1603723 (>= lt!2057586 0)))

(declare-fun e!3112848 () Int)

(assert (=> d!1603723 (= lt!2057586 e!3112848)))

(declare-fun c!849777 () Bool)

(assert (=> d!1603723 (= c!849777 ((_ is Nil!57576) lt!2057340))))

(assert (=> d!1603723 (= (size!38199 lt!2057340) lt!2057586)))

(declare-fun b!4980375 () Bool)

(assert (=> b!4980375 (= e!3112848 0)))

(declare-fun b!4980376 () Bool)

(assert (=> b!4980376 (= e!3112848 (+ 1 (size!38199 (t!369752 lt!2057340))))))

(assert (= (and d!1603723 c!849777) b!4980375))

(assert (= (and d!1603723 (not c!849777)) b!4980376))

(declare-fun m!6011294 () Bool)

(assert (=> b!4980376 m!6011294))

(assert (=> b!4980074 d!1603723))

(declare-fun bs!1184192 () Bool)

(declare-fun d!1603725 () Bool)

(assert (= bs!1184192 (and d!1603725 b!4980068)))

(declare-fun lambda!247808 () Int)

(assert (=> bs!1184192 (= lambda!247808 lambda!247802)))

(assert (=> d!1603725 true))

(assert (=> d!1603725 (< (dynLambda!23334 order!26473 (toChars!11294 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247808))))

(assert (=> d!1603725 true))

(assert (=> d!1603725 (< (dynLambda!23332 order!26469 (toValue!11435 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247808))))

(assert (=> d!1603725 (= (semiInverseModEq!3745 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))) (Forall!1802 lambda!247808))))

(declare-fun bs!1184193 () Bool)

(assert (= bs!1184193 d!1603725))

(declare-fun m!6011296 () Bool)

(assert (=> bs!1184193 m!6011296))

(assert (=> b!4980074 d!1603725))

(declare-fun d!1603727 () Bool)

(declare-fun e!3112851 () Bool)

(assert (=> d!1603727 e!3112851))

(declare-fun res!2126070 () Bool)

(assert (=> d!1603727 (=> res!2126070 e!3112851)))

(assert (=> d!1603727 (= res!2126070 (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(declare-fun lt!2057589 () Unit!148622)

(declare-fun choose!36773 (Regex!13685 List!57700) Unit!148622)

(assert (=> d!1603727 (= lt!2057589 (choose!36773 (regex!8452 rule!200) lt!2057340))))

(assert (=> d!1603727 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603727 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1857 (regex!8452 rule!200) lt!2057340) lt!2057589)))

(declare-fun b!4980383 () Bool)

(assert (=> b!4980383 (= e!3112851 (matchR!6679 (regex!8452 rule!200) (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (= (and d!1603727 (not res!2126070)) b!4980383))

(assert (=> d!1603727 m!6010974))

(declare-fun m!6011298 () Bool)

(assert (=> d!1603727 m!6011298))

(assert (=> d!1603727 m!6010906))

(assert (=> d!1603727 m!6011156))

(assert (=> d!1603727 m!6010904))

(assert (=> d!1603727 m!6010904))

(assert (=> d!1603727 m!6010906))

(assert (=> d!1603727 m!6010908))

(assert (=> b!4980383 m!6010904))

(assert (=> b!4980383 m!6010906))

(assert (=> b!4980383 m!6010904))

(assert (=> b!4980383 m!6010906))

(assert (=> b!4980383 m!6010908))

(assert (=> b!4980383 m!6011176))

(assert (=> b!4980074 d!1603727))

(declare-fun d!1603729 () Bool)

(declare-fun e!3112854 () Bool)

(assert (=> d!1603729 e!3112854))

(declare-fun res!2126073 () Bool)

(assert (=> d!1603729 (=> (not res!2126073) (not e!3112854))))

(assert (=> d!1603729 (= res!2126073 (semiInverseModEq!3745 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))))))

(declare-fun Unit!148631 () Unit!148622)

(assert (=> d!1603729 (= (lemmaInv!1375 (transformation!8452 rule!200)) Unit!148631)))

(declare-fun b!4980386 () Bool)

(assert (=> b!4980386 (= e!3112854 (equivClasses!3567 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))))))

(assert (= (and d!1603729 res!2126073) b!4980386))

(assert (=> d!1603729 m!6010914))

(assert (=> b!4980386 m!6010980))

(assert (=> b!4980074 d!1603729))

(declare-fun d!1603731 () Bool)

(declare-fun choose!36774 (Int) Bool)

(assert (=> d!1603731 (= (Forall!1802 lambda!247802) (choose!36774 lambda!247802))))

(declare-fun bs!1184194 () Bool)

(assert (= bs!1184194 d!1603731))

(declare-fun m!6011300 () Bool)

(assert (=> bs!1184194 m!6011300))

(assert (=> b!4980068 d!1603731))

(declare-fun b!4980415 () Bool)

(declare-fun e!3112870 () Bool)

(assert (=> b!4980415 (= e!3112870 (nullable!4637 (regex!8452 rule!200)))))

(declare-fun b!4980416 () Bool)

(declare-fun e!3112875 () Bool)

(declare-fun lt!2057592 () Bool)

(assert (=> b!4980416 (= e!3112875 (not lt!2057592))))

(declare-fun b!4980418 () Bool)

(declare-fun res!2126092 () Bool)

(declare-fun e!3112872 () Bool)

(assert (=> b!4980418 (=> res!2126092 e!3112872)))

(declare-fun e!3112869 () Bool)

(assert (=> b!4980418 (= res!2126092 e!3112869)))

(declare-fun res!2126094 () Bool)

(assert (=> b!4980418 (=> (not res!2126094) (not e!3112869))))

(assert (=> b!4980418 (= res!2126094 lt!2057592)))

(declare-fun bm!347372 () Bool)

(declare-fun call!347377 () Bool)

(assert (=> bm!347372 (= call!347377 (isEmpty!31075 (_1!34551 lt!2057339)))))

(declare-fun b!4980419 () Bool)

(declare-fun e!3112873 () Bool)

(declare-fun e!3112874 () Bool)

(assert (=> b!4980419 (= e!3112873 e!3112874)))

(declare-fun res!2126096 () Bool)

(assert (=> b!4980419 (=> res!2126096 e!3112874)))

(assert (=> b!4980419 (= res!2126096 call!347377)))

(declare-fun b!4980420 () Bool)

(declare-fun e!3112871 () Bool)

(assert (=> b!4980420 (= e!3112871 e!3112875)))

(declare-fun c!849784 () Bool)

(assert (=> b!4980420 (= c!849784 ((_ is EmptyLang!13685) (regex!8452 rule!200)))))

(declare-fun b!4980421 () Bool)

(assert (=> b!4980421 (= e!3112869 (= (head!10686 (_1!34551 lt!2057339)) (c!849709 (regex!8452 rule!200))))))

(declare-fun b!4980422 () Bool)

(assert (=> b!4980422 (= e!3112870 (matchR!6679 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))) (tail!9819 (_1!34551 lt!2057339))))))

(declare-fun b!4980417 () Bool)

(assert (=> b!4980417 (= e!3112871 (= lt!2057592 call!347377))))

(declare-fun d!1603733 () Bool)

(assert (=> d!1603733 e!3112871))

(declare-fun c!849785 () Bool)

(assert (=> d!1603733 (= c!849785 ((_ is EmptyExpr!13685) (regex!8452 rule!200)))))

(assert (=> d!1603733 (= lt!2057592 e!3112870)))

(declare-fun c!849786 () Bool)

(assert (=> d!1603733 (= c!849786 (isEmpty!31075 (_1!34551 lt!2057339)))))

(assert (=> d!1603733 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603733 (= (matchR!6679 (regex!8452 rule!200) (_1!34551 lt!2057339)) lt!2057592)))

(declare-fun b!4980423 () Bool)

(declare-fun res!2126091 () Bool)

(assert (=> b!4980423 (=> (not res!2126091) (not e!3112869))))

(assert (=> b!4980423 (= res!2126091 (isEmpty!31075 (tail!9819 (_1!34551 lt!2057339))))))

(declare-fun b!4980424 () Bool)

(assert (=> b!4980424 (= e!3112874 (not (= (head!10686 (_1!34551 lt!2057339)) (c!849709 (regex!8452 rule!200)))))))

(declare-fun b!4980425 () Bool)

(declare-fun res!2126095 () Bool)

(assert (=> b!4980425 (=> res!2126095 e!3112872)))

(assert (=> b!4980425 (= res!2126095 (not ((_ is ElementMatch!13685) (regex!8452 rule!200))))))

(assert (=> b!4980425 (= e!3112875 e!3112872)))

(declare-fun b!4980426 () Bool)

(assert (=> b!4980426 (= e!3112872 e!3112873)))

(declare-fun res!2126090 () Bool)

(assert (=> b!4980426 (=> (not res!2126090) (not e!3112873))))

(assert (=> b!4980426 (= res!2126090 (not lt!2057592))))

(declare-fun b!4980427 () Bool)

(declare-fun res!2126093 () Bool)

(assert (=> b!4980427 (=> (not res!2126093) (not e!3112869))))

(assert (=> b!4980427 (= res!2126093 (not call!347377))))

(declare-fun b!4980428 () Bool)

(declare-fun res!2126097 () Bool)

(assert (=> b!4980428 (=> res!2126097 e!3112874)))

(assert (=> b!4980428 (= res!2126097 (not (isEmpty!31075 (tail!9819 (_1!34551 lt!2057339)))))))

(assert (= (and d!1603733 c!849786) b!4980415))

(assert (= (and d!1603733 (not c!849786)) b!4980422))

(assert (= (and d!1603733 c!849785) b!4980417))

(assert (= (and d!1603733 (not c!849785)) b!4980420))

(assert (= (and b!4980420 c!849784) b!4980416))

(assert (= (and b!4980420 (not c!849784)) b!4980425))

(assert (= (and b!4980425 (not res!2126095)) b!4980418))

(assert (= (and b!4980418 res!2126094) b!4980427))

(assert (= (and b!4980427 res!2126093) b!4980423))

(assert (= (and b!4980423 res!2126091) b!4980421))

(assert (= (and b!4980418 (not res!2126092)) b!4980426))

(assert (= (and b!4980426 res!2126090) b!4980419))

(assert (= (and b!4980419 (not res!2126096)) b!4980428))

(assert (= (and b!4980428 (not res!2126097)) b!4980424))

(assert (= (or b!4980417 b!4980419 b!4980427) bm!347372))

(assert (=> d!1603733 m!6010916))

(assert (=> d!1603733 m!6010974))

(assert (=> bm!347372 m!6010916))

(declare-fun m!6011302 () Bool)

(assert (=> b!4980421 m!6011302))

(assert (=> b!4980422 m!6011302))

(assert (=> b!4980422 m!6011302))

(declare-fun m!6011304 () Bool)

(assert (=> b!4980422 m!6011304))

(declare-fun m!6011306 () Bool)

(assert (=> b!4980422 m!6011306))

(assert (=> b!4980422 m!6011304))

(assert (=> b!4980422 m!6011306))

(declare-fun m!6011308 () Bool)

(assert (=> b!4980422 m!6011308))

(assert (=> b!4980424 m!6011302))

(assert (=> b!4980428 m!6011306))

(assert (=> b!4980428 m!6011306))

(declare-fun m!6011310 () Bool)

(assert (=> b!4980428 m!6011310))

(assert (=> b!4980423 m!6011306))

(assert (=> b!4980423 m!6011306))

(assert (=> b!4980423 m!6011310))

(assert (=> b!4980415 m!6010990))

(assert (=> b!4980065 d!1603733))

(declare-fun e!3112881 () Bool)

(declare-fun tp!1396380 () Bool)

(declare-fun b!4980437 () Bool)

(declare-fun tp!1396382 () Bool)

(assert (=> b!4980437 (= e!3112881 (and (inv!75395 (left!42080 (c!849710 totalInput!520))) tp!1396382 (inv!75395 (right!42410 (c!849710 totalInput!520))) tp!1396380))))

(declare-fun b!4980439 () Bool)

(declare-fun e!3112880 () Bool)

(declare-fun tp!1396381 () Bool)

(assert (=> b!4980439 (= e!3112880 tp!1396381)))

(declare-fun b!4980438 () Bool)

(declare-fun inv!75403 (IArray!30469) Bool)

(assert (=> b!4980438 (= e!3112881 (and (inv!75403 (xs!18530 (c!849710 totalInput!520))) e!3112880))))

(assert (=> b!4980066 (= tp!1396342 (and (inv!75395 (c!849710 totalInput!520)) e!3112881))))

(assert (= (and b!4980066 ((_ is Node!15204) (c!849710 totalInput!520))) b!4980437))

(assert (= b!4980438 b!4980439))

(assert (= (and b!4980066 ((_ is Leaf!25255) (c!849710 totalInput!520))) b!4980438))

(declare-fun m!6011312 () Bool)

(assert (=> b!4980437 m!6011312))

(declare-fun m!6011314 () Bool)

(assert (=> b!4980437 m!6011314))

(declare-fun m!6011316 () Bool)

(assert (=> b!4980438 m!6011316))

(assert (=> b!4980066 m!6010878))

(declare-fun tp!1396385 () Bool)

(declare-fun e!3112883 () Bool)

(declare-fun b!4980440 () Bool)

(declare-fun tp!1396383 () Bool)

(assert (=> b!4980440 (= e!3112883 (and (inv!75395 (left!42080 (c!849710 input!1580))) tp!1396385 (inv!75395 (right!42410 (c!849710 input!1580))) tp!1396383))))

(declare-fun b!4980442 () Bool)

(declare-fun e!3112882 () Bool)

(declare-fun tp!1396384 () Bool)

(assert (=> b!4980442 (= e!3112882 tp!1396384)))

(declare-fun b!4980441 () Bool)

(assert (=> b!4980441 (= e!3112883 (and (inv!75403 (xs!18530 (c!849710 input!1580))) e!3112882))))

(assert (=> b!4980071 (= tp!1396341 (and (inv!75395 (c!849710 input!1580)) e!3112883))))

(assert (= (and b!4980071 ((_ is Node!15204) (c!849710 input!1580))) b!4980440))

(assert (= b!4980441 b!4980442))

(assert (= (and b!4980071 ((_ is Leaf!25255) (c!849710 input!1580))) b!4980441))

(declare-fun m!6011318 () Bool)

(assert (=> b!4980440 m!6011318))

(declare-fun m!6011320 () Bool)

(assert (=> b!4980440 m!6011320))

(declare-fun m!6011322 () Bool)

(assert (=> b!4980441 m!6011322))

(assert (=> b!4980071 m!6010934))

(declare-fun e!3112886 () Bool)

(assert (=> b!4980073 (= tp!1396339 e!3112886)))

(declare-fun b!4980456 () Bool)

(declare-fun tp!1396397 () Bool)

(declare-fun tp!1396400 () Bool)

(assert (=> b!4980456 (= e!3112886 (and tp!1396397 tp!1396400))))

(declare-fun b!4980455 () Bool)

(declare-fun tp!1396396 () Bool)

(assert (=> b!4980455 (= e!3112886 tp!1396396)))

(declare-fun b!4980453 () Bool)

(declare-fun tp_is_empty!36375 () Bool)

(assert (=> b!4980453 (= e!3112886 tp_is_empty!36375)))

(declare-fun b!4980454 () Bool)

(declare-fun tp!1396398 () Bool)

(declare-fun tp!1396399 () Bool)

(assert (=> b!4980454 (= e!3112886 (and tp!1396398 tp!1396399))))

(assert (= (and b!4980073 ((_ is ElementMatch!13685) (regex!8452 rule!200))) b!4980453))

(assert (= (and b!4980073 ((_ is Concat!22447) (regex!8452 rule!200))) b!4980454))

(assert (= (and b!4980073 ((_ is Star!13685) (regex!8452 rule!200))) b!4980455))

(assert (= (and b!4980073 ((_ is Union!13685) (regex!8452 rule!200))) b!4980456))

(declare-fun b_lambda!197727 () Bool)

(assert (= b_lambda!197709 (or (and b!4980070 b_free!133107) b_lambda!197727)))

(declare-fun b_lambda!197729 () Bool)

(assert (= b_lambda!197711 (or b!4980068 b_lambda!197729)))

(declare-fun bs!1184195 () Bool)

(declare-fun d!1603735 () Bool)

(assert (= bs!1184195 (and d!1603735 b!4980068)))

(declare-fun dynLambda!23340 (Int TokenValue!8762) BalanceConc!29838)

(assert (=> bs!1184195 (= (dynLambda!23338 lambda!247802 (seqFromList!6073 lt!2057334)) (= (list!18452 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))) (list!18452 (seqFromList!6073 lt!2057334))))))

(declare-fun b_lambda!197733 () Bool)

(assert (=> (not b_lambda!197733) (not bs!1184195)))

(declare-fun t!369765 () Bool)

(declare-fun tb!261577 () Bool)

(assert (=> (and b!4980070 (= (toChars!11294 (transformation!8452 rule!200)) (toChars!11294 (transformation!8452 rule!200))) t!369765) tb!261577))

(declare-fun e!3112889 () Bool)

(declare-fun b!4980461 () Bool)

(declare-fun tp!1396403 () Bool)

(assert (=> b!4980461 (= e!3112889 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))) tp!1396403))))

(declare-fun result!326858 () Bool)

(assert (=> tb!261577 (= result!326858 (and (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))) e!3112889))))

(assert (= tb!261577 b!4980461))

(declare-fun m!6011324 () Bool)

(assert (=> b!4980461 m!6011324))

(declare-fun m!6011326 () Bool)

(assert (=> tb!261577 m!6011326))

(assert (=> bs!1184195 t!369765))

(declare-fun b_and!349575 () Bool)

(assert (= b_and!349561 (and (=> t!369765 result!326858) b_and!349575)))

(declare-fun b_lambda!197735 () Bool)

(assert (=> (not b_lambda!197735) (not bs!1184195)))

(declare-fun t!369767 () Bool)

(declare-fun tb!261579 () Bool)

(assert (=> (and b!4980070 (= (toValue!11435 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))) t!369767) tb!261579))

(declare-fun result!326862 () Bool)

(assert (=> tb!261579 (= result!326862 (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(declare-fun m!6011328 () Bool)

(assert (=> tb!261579 m!6011328))

(assert (=> bs!1184195 t!369767))

(declare-fun b_and!349577 () Bool)

(assert (= b_and!349565 (and (=> t!369767 result!326862) b_and!349577)))

(declare-fun m!6011330 () Bool)

(assert (=> bs!1184195 m!6011330))

(declare-fun m!6011332 () Bool)

(assert (=> bs!1184195 m!6011332))

(declare-fun m!6011334 () Bool)

(assert (=> bs!1184195 m!6011334))

(assert (=> bs!1184195 m!6011330))

(assert (=> bs!1184195 m!6010882))

(assert (=> bs!1184195 m!6011334))

(assert (=> bs!1184195 m!6010882))

(declare-fun m!6011336 () Bool)

(assert (=> bs!1184195 m!6011336))

(assert (=> d!1603707 d!1603735))

(declare-fun b_lambda!197731 () Bool)

(assert (= b_lambda!197701 (or b!4980068 b_lambda!197731)))

(declare-fun bs!1184196 () Bool)

(declare-fun d!1603737 () Bool)

(assert (= bs!1184196 (and d!1603737 b!4980068)))

(assert (=> bs!1184196 (= (dynLambda!23338 lambda!247802 (_1!34553 lt!2057338)) (= (list!18452 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))) (list!18452 (_1!34553 lt!2057338))))))

(declare-fun b_lambda!197737 () Bool)

(assert (=> (not b_lambda!197737) (not bs!1184196)))

(declare-fun t!369769 () Bool)

(declare-fun tb!261581 () Bool)

(assert (=> (and b!4980070 (= (toChars!11294 (transformation!8452 rule!200)) (toChars!11294 (transformation!8452 rule!200))) t!369769) tb!261581))

(declare-fun e!3112891 () Bool)

(declare-fun b!4980462 () Bool)

(declare-fun tp!1396404 () Bool)

(assert (=> b!4980462 (= e!3112891 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))) tp!1396404))))

(declare-fun result!326864 () Bool)

(assert (=> tb!261581 (= result!326864 (and (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))) e!3112891))))

(assert (= tb!261581 b!4980462))

(declare-fun m!6011338 () Bool)

(assert (=> b!4980462 m!6011338))

(declare-fun m!6011340 () Bool)

(assert (=> tb!261581 m!6011340))

(assert (=> bs!1184196 t!369769))

(declare-fun b_and!349579 () Bool)

(assert (= b_and!349575 (and (=> t!369769 result!326864) b_and!349579)))

(declare-fun b_lambda!197739 () Bool)

(assert (=> (not b_lambda!197739) (not bs!1184196)))

(assert (=> bs!1184196 t!369757))

(declare-fun b_and!349581 () Bool)

(assert (= b_and!349577 (and (=> t!369757 result!326838) b_and!349581)))

(declare-fun m!6011342 () Bool)

(assert (=> bs!1184196 m!6011342))

(declare-fun m!6011344 () Bool)

(assert (=> bs!1184196 m!6011344))

(assert (=> bs!1184196 m!6011184))

(assert (=> bs!1184196 m!6011342))

(assert (=> bs!1184196 m!6011184))

(assert (=> bs!1184196 m!6010890))

(assert (=> d!1603649 d!1603737))

(check-sat (not bm!347363) (not b!4980233) (not b!4980234) (not b!4980456) (not b!4980454) (not b!4980371) (not b!4980228) (not b!4980421) (not b!4980386) (not b!4980439) (not b!4980462) (not b!4980422) (not d!1603629) (not bm!347364) (not d!1603635) (not b_lambda!197735) (not b_lambda!197739) (not b!4980096) (not b!4980229) (not b!4980281) b_and!349579 (not bs!1184196) (not b!4980455) (not tb!261579) (not b_next!133899) (not b!4980423) (not bm!347369) (not d!1603733) (not b_lambda!197731) b_and!349581 (not b!4980441) (not b!4980372) (not b!4980361) (not d!1603639) (not b!4980415) (not b_lambda!197737) (not b!4980230) (not b_lambda!197727) tp_is_empty!36375 (not d!1603637) (not b!4980236) (not b!4980235) (not d!1603627) (not bm!347365) (not d!1603727) (not d!1603633) (not d!1603623) (not d!1603651) (not tb!261581) (not d!1603649) (not b!4980071) (not b!4980442) (not bs!1184195) (not b!4980094) (not b!4980440) (not d!1603729) (not b_next!133897) (not d!1603657) (not bm!347367) (not d!1603709) (not b!4980424) (not d!1603653) (not d!1603731) (not d!1603621) (not tb!261569) (not b!4980376) (not b!4980362) (not d!1603645) (not d!1603643) (not b!4980437) (not d!1603725) (not tb!261577) (not bm!347366) (not bm!347362) (not b!4980126) (not b!4980135) (not b!4980099) (not b!4980093) (not b!4980461) (not b!4980438) (not b!4980428) (not b!4980066) (not d!1603715) (not b_lambda!197733) (not d!1603707) (not b!4980091) (not bm!347372) (not b!4980231) (not b!4980383) (not b_lambda!197729) (not d!1603641) (not bm!347368))
(check-sat b_and!349579 b_and!349581 (not b_next!133899) (not b_next!133897))
(get-model)

(declare-fun b_lambda!197751 () Bool)

(assert (= b_lambda!197733 (or (and b!4980070 b_free!133109) b_lambda!197751)))

(declare-fun b_lambda!197753 () Bool)

(assert (= b_lambda!197737 (or (and b!4980070 b_free!133109) b_lambda!197753)))

(declare-fun b_lambda!197755 () Bool)

(assert (= b_lambda!197739 (or (and b!4980070 b_free!133107) b_lambda!197755)))

(declare-fun b_lambda!197757 () Bool)

(assert (= b_lambda!197735 (or (and b!4980070 b_free!133107) b_lambda!197757)))

(check-sat (not bm!347363) (not b!4980233) (not b!4980456) (not b!4980454) (not b!4980371) (not b!4980228) (not b!4980421) (not b!4980386) (not b!4980439) (not b!4980462) (not b!4980422) (not b!4980096) (not d!1603629) (not bm!347364) (not d!1603635) (not b_lambda!197751) (not b!4980234) (not b!4980229) (not b!4980281) b_and!349579 (not bs!1184196) (not b!4980455) (not tb!261579) (not b_next!133899) (not b!4980423) (not bm!347369) (not d!1603733) (not b_lambda!197731) b_and!349581 (not b!4980441) (not b!4980372) (not b!4980361) (not b!4980415) (not d!1603639) (not b!4980230) (not b_lambda!197727) tp_is_empty!36375 (not d!1603637) (not b!4980236) (not b!4980235) (not d!1603627) (not bm!347365) (not d!1603727) (not d!1603633) (not d!1603623) (not b_lambda!197753) (not d!1603651) (not tb!261581) (not d!1603649) (not b!4980071) (not b!4980442) (not b_lambda!197757) (not bs!1184195) (not b!4980094) (not b!4980440) (not d!1603729) (not b_next!133897) (not d!1603657) (not bm!347367) (not d!1603709) (not b!4980424) (not d!1603653) (not d!1603731) (not d!1603621) (not tb!261569) (not b!4980376) (not b!4980362) (not d!1603645) (not d!1603643) (not b!4980437) (not d!1603725) (not tb!261577) (not bm!347366) (not b_lambda!197755) (not bm!347362) (not b!4980126) (not b!4980135) (not b!4980099) (not b!4980093) (not b!4980461) (not b!4980438) (not b!4980428) (not b!4980066) (not d!1603715) (not d!1603707) (not b!4980091) (not bm!347372) (not b!4980231) (not b!4980383) (not b_lambda!197729) (not d!1603641) (not bm!347368))
(check-sat b_and!349579 b_and!349581 (not b_next!133899) (not b_next!133897))
(get-model)

(declare-fun d!1603843 () Bool)

(declare-fun c!849848 () Bool)

(assert (=> d!1603843 (= c!849848 ((_ is Node!15204) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))))

(declare-fun e!3113016 () Bool)

(assert (=> d!1603843 (= (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))) e!3113016)))

(declare-fun b!4980679 () Bool)

(assert (=> b!4980679 (= e!3113016 (inv!75401 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))))

(declare-fun b!4980680 () Bool)

(declare-fun e!3113017 () Bool)

(assert (=> b!4980680 (= e!3113016 e!3113017)))

(declare-fun res!2126193 () Bool)

(assert (=> b!4980680 (= res!2126193 (not ((_ is Leaf!25255) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))))))

(assert (=> b!4980680 (=> res!2126193 e!3113017)))

(declare-fun b!4980681 () Bool)

(assert (=> b!4980681 (= e!3113017 (inv!75402 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))))

(assert (= (and d!1603843 c!849848) b!4980679))

(assert (= (and d!1603843 (not c!849848)) b!4980680))

(assert (= (and b!4980680 (not res!2126193)) b!4980681))

(declare-fun m!6011588 () Bool)

(assert (=> b!4980679 m!6011588))

(declare-fun m!6011590 () Bool)

(assert (=> b!4980681 m!6011590))

(assert (=> b!4980461 d!1603843))

(assert (=> b!4980071 d!1603625))

(declare-fun b!4980682 () Bool)

(declare-fun e!3113019 () Bool)

(assert (=> b!4980682 (= e!3113019 (nullable!4637 (regex!8452 rule!200)))))

(declare-fun b!4980683 () Bool)

(declare-fun e!3113024 () Bool)

(declare-fun lt!2057633 () Bool)

(assert (=> b!4980683 (= e!3113024 (not lt!2057633))))

(declare-fun b!4980685 () Bool)

(declare-fun res!2126196 () Bool)

(declare-fun e!3113021 () Bool)

(assert (=> b!4980685 (=> res!2126196 e!3113021)))

(declare-fun e!3113018 () Bool)

(assert (=> b!4980685 (= res!2126196 e!3113018)))

(declare-fun res!2126198 () Bool)

(assert (=> b!4980685 (=> (not res!2126198) (not e!3113018))))

(assert (=> b!4980685 (= res!2126198 lt!2057633)))

(declare-fun bm!347396 () Bool)

(declare-fun call!347401 () Bool)

(assert (=> bm!347396 (= call!347401 (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(declare-fun b!4980686 () Bool)

(declare-fun e!3113022 () Bool)

(declare-fun e!3113023 () Bool)

(assert (=> b!4980686 (= e!3113022 e!3113023)))

(declare-fun res!2126200 () Bool)

(assert (=> b!4980686 (=> res!2126200 e!3113023)))

(assert (=> b!4980686 (= res!2126200 call!347401)))

(declare-fun b!4980687 () Bool)

(declare-fun e!3113020 () Bool)

(assert (=> b!4980687 (= e!3113020 e!3113024)))

(declare-fun c!849849 () Bool)

(assert (=> b!4980687 (= c!849849 ((_ is EmptyLang!13685) (regex!8452 rule!200)))))

(declare-fun b!4980688 () Bool)

(assert (=> b!4980688 (= e!3113018 (= (head!10686 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))) (c!849709 (regex!8452 rule!200))))))

(declare-fun b!4980689 () Bool)

(assert (=> b!4980689 (= e!3113019 (matchR!6679 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340))))) (tail!9819 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340))))))))

(declare-fun b!4980684 () Bool)

(assert (=> b!4980684 (= e!3113020 (= lt!2057633 call!347401))))

(declare-fun d!1603845 () Bool)

(assert (=> d!1603845 e!3113020))

(declare-fun c!849850 () Bool)

(assert (=> d!1603845 (= c!849850 ((_ is EmptyExpr!13685) (regex!8452 rule!200)))))

(assert (=> d!1603845 (= lt!2057633 e!3113019)))

(declare-fun c!849851 () Bool)

(assert (=> d!1603845 (= c!849851 (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (=> d!1603845 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603845 (= (matchR!6679 (regex!8452 rule!200) (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))) lt!2057633)))

(declare-fun b!4980690 () Bool)

(declare-fun res!2126195 () Bool)

(assert (=> b!4980690 (=> (not res!2126195) (not e!3113018))))

(assert (=> b!4980690 (= res!2126195 (isEmpty!31075 (tail!9819 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340))))))))

(declare-fun b!4980691 () Bool)

(assert (=> b!4980691 (= e!3113023 (not (= (head!10686 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))) (c!849709 (regex!8452 rule!200)))))))

(declare-fun b!4980692 () Bool)

(declare-fun res!2126199 () Bool)

(assert (=> b!4980692 (=> res!2126199 e!3113021)))

(assert (=> b!4980692 (= res!2126199 (not ((_ is ElementMatch!13685) (regex!8452 rule!200))))))

(assert (=> b!4980692 (= e!3113024 e!3113021)))

(declare-fun b!4980693 () Bool)

(assert (=> b!4980693 (= e!3113021 e!3113022)))

(declare-fun res!2126194 () Bool)

(assert (=> b!4980693 (=> (not res!2126194) (not e!3113022))))

(assert (=> b!4980693 (= res!2126194 (not lt!2057633))))

(declare-fun b!4980694 () Bool)

(declare-fun res!2126197 () Bool)

(assert (=> b!4980694 (=> (not res!2126197) (not e!3113018))))

(assert (=> b!4980694 (= res!2126197 (not call!347401))))

(declare-fun b!4980695 () Bool)

(declare-fun res!2126201 () Bool)

(assert (=> b!4980695 (=> res!2126201 e!3113023)))

(assert (=> b!4980695 (= res!2126201 (not (isEmpty!31075 (tail!9819 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))))

(assert (= (and d!1603845 c!849851) b!4980682))

(assert (= (and d!1603845 (not c!849851)) b!4980689))

(assert (= (and d!1603845 c!849850) b!4980684))

(assert (= (and d!1603845 (not c!849850)) b!4980687))

(assert (= (and b!4980687 c!849849) b!4980683))

(assert (= (and b!4980687 (not c!849849)) b!4980692))

(assert (= (and b!4980692 (not res!2126199)) b!4980685))

(assert (= (and b!4980685 res!2126198) b!4980694))

(assert (= (and b!4980694 res!2126197) b!4980690))

(assert (= (and b!4980690 res!2126195) b!4980688))

(assert (= (and b!4980685 (not res!2126196)) b!4980693))

(assert (= (and b!4980693 res!2126194) b!4980686))

(assert (= (and b!4980686 (not res!2126200)) b!4980695))

(assert (= (and b!4980695 (not res!2126201)) b!4980691))

(assert (= (or b!4980684 b!4980686 b!4980694) bm!347396))

(assert (=> d!1603845 m!6011156))

(assert (=> d!1603845 m!6010974))

(assert (=> bm!347396 m!6011156))

(declare-fun m!6011594 () Bool)

(assert (=> b!4980688 m!6011594))

(assert (=> b!4980689 m!6011594))

(assert (=> b!4980689 m!6011594))

(declare-fun m!6011596 () Bool)

(assert (=> b!4980689 m!6011596))

(declare-fun m!6011598 () Bool)

(assert (=> b!4980689 m!6011598))

(assert (=> b!4980689 m!6011596))

(assert (=> b!4980689 m!6011598))

(declare-fun m!6011600 () Bool)

(assert (=> b!4980689 m!6011600))

(assert (=> b!4980691 m!6011594))

(assert (=> b!4980695 m!6011598))

(assert (=> b!4980695 m!6011598))

(declare-fun m!6011602 () Bool)

(assert (=> b!4980695 m!6011602))

(assert (=> b!4980690 m!6011598))

(assert (=> b!4980690 m!6011598))

(assert (=> b!4980690 m!6011602))

(assert (=> b!4980682 m!6010990))

(assert (=> b!4980228 d!1603845))

(assert (=> b!4980228 d!1603715))

(assert (=> b!4980228 d!1603713))

(assert (=> b!4980228 d!1603723))

(declare-fun d!1603849 () Bool)

(declare-fun lt!2057635 () Int)

(assert (=> d!1603849 (>= lt!2057635 0)))

(declare-fun e!3113025 () Int)

(assert (=> d!1603849 (= lt!2057635 e!3113025)))

(declare-fun c!849852 () Bool)

(assert (=> d!1603849 (= c!849852 ((_ is Nil!57576) (t!369752 lt!2057340)))))

(assert (=> d!1603849 (= (size!38199 (t!369752 lt!2057340)) lt!2057635)))

(declare-fun b!4980696 () Bool)

(assert (=> b!4980696 (= e!3113025 0)))

(declare-fun b!4980697 () Bool)

(assert (=> b!4980697 (= e!3113025 (+ 1 (size!38199 (t!369752 (t!369752 lt!2057340)))))))

(assert (= (and d!1603849 c!849852) b!4980696))

(assert (= (and d!1603849 (not c!849852)) b!4980697))

(declare-fun m!6011604 () Bool)

(assert (=> b!4980697 m!6011604))

(assert (=> b!4980376 d!1603849))

(declare-fun d!1603851 () Bool)

(assert (=> d!1603851 true))

(declare-fun order!26475 () Int)

(declare-fun lambda!247811 () Int)

(declare-fun dynLambda!23341 (Int Int) Int)

(assert (=> d!1603851 (< (dynLambda!23332 order!26469 (toValue!11435 (transformation!8452 rule!200))) (dynLambda!23341 order!26475 lambda!247811))))

(declare-fun Forall2!1296 (Int) Bool)

(assert (=> d!1603851 (= (equivClasses!3567 (toChars!11294 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))) (Forall2!1296 lambda!247811))))

(declare-fun bs!1184212 () Bool)

(assert (= bs!1184212 d!1603851))

(declare-fun m!6011612 () Bool)

(assert (=> bs!1184212 m!6011612))

(assert (=> b!4980099 d!1603851))

(declare-fun d!1603859 () Bool)

(declare-fun lt!2057643 () Int)

(assert (=> d!1603859 (>= lt!2057643 0)))

(declare-fun e!3113031 () Int)

(assert (=> d!1603859 (= lt!2057643 e!3113031)))

(declare-fun c!849854 () Bool)

(assert (=> d!1603859 (= c!849854 ((_ is Nil!57576) (_1!34551 lt!2057570)))))

(assert (=> d!1603859 (= (size!38199 (_1!34551 lt!2057570)) lt!2057643)))

(declare-fun b!4980706 () Bool)

(assert (=> b!4980706 (= e!3113031 0)))

(declare-fun b!4980707 () Bool)

(assert (=> b!4980707 (= e!3113031 (+ 1 (size!38199 (t!369752 (_1!34551 lt!2057570)))))))

(assert (= (and d!1603859 c!849854) b!4980706))

(assert (= (and d!1603859 (not c!849854)) b!4980707))

(declare-fun m!6011614 () Bool)

(assert (=> b!4980707 m!6011614))

(assert (=> b!4980372 d!1603859))

(assert (=> b!4980372 d!1603713))

(declare-fun b!4980731 () Bool)

(declare-fun e!3113048 () Bool)

(declare-fun e!3113051 () Bool)

(assert (=> b!4980731 (= e!3113048 e!3113051)))

(declare-fun res!2126220 () Bool)

(assert (=> b!4980731 (= res!2126220 (not (nullable!4637 (reg!14014 (regex!8452 rule!200)))))))

(assert (=> b!4980731 (=> (not res!2126220) (not e!3113051))))

(declare-fun b!4980732 () Bool)

(declare-fun e!3113050 () Bool)

(declare-fun e!3113053 () Bool)

(assert (=> b!4980732 (= e!3113050 e!3113053)))

(declare-fun res!2126217 () Bool)

(assert (=> b!4980732 (=> (not res!2126217) (not e!3113053))))

(declare-fun call!347408 () Bool)

(assert (=> b!4980732 (= res!2126217 call!347408)))

(declare-fun b!4980733 () Bool)

(declare-fun e!3113049 () Bool)

(declare-fun call!347410 () Bool)

(assert (=> b!4980733 (= e!3113049 call!347410)))

(declare-fun b!4980734 () Bool)

(declare-fun res!2126221 () Bool)

(assert (=> b!4980734 (=> (not res!2126221) (not e!3113049))))

(assert (=> b!4980734 (= res!2126221 call!347408)))

(declare-fun e!3113054 () Bool)

(assert (=> b!4980734 (= e!3113054 e!3113049)))

(declare-fun bm!347403 () Bool)

(declare-fun c!849862 () Bool)

(assert (=> bm!347403 (= call!347410 (validRegex!5986 (ite c!849862 (regTwo!27883 (regex!8452 rule!200)) (regTwo!27882 (regex!8452 rule!200)))))))

(declare-fun c!849861 () Bool)

(declare-fun bm!347404 () Bool)

(declare-fun call!347409 () Bool)

(assert (=> bm!347404 (= call!347409 (validRegex!5986 (ite c!849861 (reg!14014 (regex!8452 rule!200)) (ite c!849862 (regOne!27883 (regex!8452 rule!200)) (regOne!27882 (regex!8452 rule!200))))))))

(declare-fun d!1603861 () Bool)

(declare-fun res!2126219 () Bool)

(declare-fun e!3113052 () Bool)

(assert (=> d!1603861 (=> res!2126219 e!3113052)))

(assert (=> d!1603861 (= res!2126219 ((_ is ElementMatch!13685) (regex!8452 rule!200)))))

(assert (=> d!1603861 (= (validRegex!5986 (regex!8452 rule!200)) e!3113052)))

(declare-fun bm!347405 () Bool)

(assert (=> bm!347405 (= call!347408 call!347409)))

(declare-fun b!4980735 () Bool)

(assert (=> b!4980735 (= e!3113048 e!3113054)))

(assert (=> b!4980735 (= c!849862 ((_ is Union!13685) (regex!8452 rule!200)))))

(declare-fun b!4980736 () Bool)

(assert (=> b!4980736 (= e!3113051 call!347409)))

(declare-fun b!4980737 () Bool)

(assert (=> b!4980737 (= e!3113052 e!3113048)))

(assert (=> b!4980737 (= c!849861 ((_ is Star!13685) (regex!8452 rule!200)))))

(declare-fun b!4980738 () Bool)

(assert (=> b!4980738 (= e!3113053 call!347410)))

(declare-fun b!4980739 () Bool)

(declare-fun res!2126218 () Bool)

(assert (=> b!4980739 (=> res!2126218 e!3113050)))

(assert (=> b!4980739 (= res!2126218 (not ((_ is Concat!22447) (regex!8452 rule!200))))))

(assert (=> b!4980739 (= e!3113054 e!3113050)))

(assert (= (and d!1603861 (not res!2126219)) b!4980737))

(assert (= (and b!4980737 c!849861) b!4980731))

(assert (= (and b!4980737 (not c!849861)) b!4980735))

(assert (= (and b!4980731 res!2126220) b!4980736))

(assert (= (and b!4980735 c!849862) b!4980734))

(assert (= (and b!4980735 (not c!849862)) b!4980739))

(assert (= (and b!4980734 res!2126221) b!4980733))

(assert (= (and b!4980739 (not res!2126218)) b!4980732))

(assert (= (and b!4980732 res!2126217) b!4980738))

(assert (= (or b!4980734 b!4980732) bm!347405))

(assert (= (or b!4980733 b!4980738) bm!347403))

(assert (= (or b!4980736 bm!347405) bm!347404))

(declare-fun m!6011622 () Bool)

(assert (=> b!4980731 m!6011622))

(declare-fun m!6011624 () Bool)

(assert (=> bm!347403 m!6011624))

(declare-fun m!6011626 () Bool)

(assert (=> bm!347404 m!6011626))

(assert (=> d!1603641 d!1603861))

(declare-fun b!4980744 () Bool)

(declare-fun e!3113058 () Bool)

(assert (=> b!4980744 (= e!3113058 (nullable!4637 (regex!8452 rule!200)))))

(declare-fun b!4980745 () Bool)

(declare-fun e!3113063 () Bool)

(declare-fun lt!2057647 () Bool)

(assert (=> b!4980745 (= e!3113063 (not lt!2057647))))

(declare-fun b!4980747 () Bool)

(declare-fun res!2126224 () Bool)

(declare-fun e!3113060 () Bool)

(assert (=> b!4980747 (=> res!2126224 e!3113060)))

(declare-fun e!3113057 () Bool)

(assert (=> b!4980747 (= res!2126224 e!3113057)))

(declare-fun res!2126226 () Bool)

(assert (=> b!4980747 (=> (not res!2126226) (not e!3113057))))

(assert (=> b!4980747 (= res!2126226 lt!2057647)))

(declare-fun bm!347406 () Bool)

(declare-fun call!347411 () Bool)

(assert (=> bm!347406 (= call!347411 (isEmpty!31075 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))

(declare-fun b!4980748 () Bool)

(declare-fun e!3113061 () Bool)

(declare-fun e!3113062 () Bool)

(assert (=> b!4980748 (= e!3113061 e!3113062)))

(declare-fun res!2126228 () Bool)

(assert (=> b!4980748 (=> res!2126228 e!3113062)))

(assert (=> b!4980748 (= res!2126228 call!347411)))

(declare-fun b!4980749 () Bool)

(declare-fun e!3113059 () Bool)

(assert (=> b!4980749 (= e!3113059 e!3113063)))

(declare-fun c!849863 () Bool)

(assert (=> b!4980749 (= c!849863 ((_ is EmptyLang!13685) (regex!8452 rule!200)))))

(declare-fun b!4980750 () Bool)

(assert (=> b!4980750 (= e!3113057 (= (head!10686 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (c!849709 (regex!8452 rule!200))))))

(declare-fun b!4980751 () Bool)

(assert (=> b!4980751 (= e!3113058 (matchR!6679 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))))) (tail!9819 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))))))))

(declare-fun b!4980746 () Bool)

(assert (=> b!4980746 (= e!3113059 (= lt!2057647 call!347411))))

(declare-fun d!1603867 () Bool)

(assert (=> d!1603867 e!3113059))

(declare-fun c!849864 () Bool)

(assert (=> d!1603867 (= c!849864 ((_ is EmptyExpr!13685) (regex!8452 rule!200)))))

(assert (=> d!1603867 (= lt!2057647 e!3113058)))

(declare-fun c!849865 () Bool)

(assert (=> d!1603867 (= c!849865 (isEmpty!31075 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))

(assert (=> d!1603867 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603867 (= (matchR!6679 (regex!8452 rule!200) (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) lt!2057647)))

(declare-fun b!4980752 () Bool)

(declare-fun res!2126223 () Bool)

(assert (=> b!4980752 (=> (not res!2126223) (not e!3113057))))

(assert (=> b!4980752 (= res!2126223 (isEmpty!31075 (tail!9819 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))))))))

(declare-fun b!4980753 () Bool)

(assert (=> b!4980753 (= e!3113062 (not (= (head!10686 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (c!849709 (regex!8452 rule!200)))))))

(declare-fun b!4980754 () Bool)

(declare-fun res!2126227 () Bool)

(assert (=> b!4980754 (=> res!2126227 e!3113060)))

(assert (=> b!4980754 (= res!2126227 (not ((_ is ElementMatch!13685) (regex!8452 rule!200))))))

(assert (=> b!4980754 (= e!3113063 e!3113060)))

(declare-fun b!4980755 () Bool)

(assert (=> b!4980755 (= e!3113060 e!3113061)))

(declare-fun res!2126222 () Bool)

(assert (=> b!4980755 (=> (not res!2126222) (not e!3113061))))

(assert (=> b!4980755 (= res!2126222 (not lt!2057647))))

(declare-fun b!4980756 () Bool)

(declare-fun res!2126225 () Bool)

(assert (=> b!4980756 (=> (not res!2126225) (not e!3113057))))

(assert (=> b!4980756 (= res!2126225 (not call!347411))))

(declare-fun b!4980757 () Bool)

(declare-fun res!2126229 () Bool)

(assert (=> b!4980757 (=> res!2126229 e!3113062)))

(assert (=> b!4980757 (= res!2126229 (not (isEmpty!31075 (tail!9819 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))))

(assert (= (and d!1603867 c!849865) b!4980744))

(assert (= (and d!1603867 (not c!849865)) b!4980751))

(assert (= (and d!1603867 c!849864) b!4980746))

(assert (= (and d!1603867 (not c!849864)) b!4980749))

(assert (= (and b!4980749 c!849863) b!4980745))

(assert (= (and b!4980749 (not c!849863)) b!4980754))

(assert (= (and b!4980754 (not res!2126227)) b!4980747))

(assert (= (and b!4980747 res!2126226) b!4980756))

(assert (= (and b!4980756 res!2126225) b!4980752))

(assert (= (and b!4980752 res!2126223) b!4980750))

(assert (= (and b!4980747 (not res!2126224)) b!4980755))

(assert (= (and b!4980755 res!2126222) b!4980748))

(assert (= (and b!4980748 (not res!2126228)) b!4980757))

(assert (= (and b!4980757 (not res!2126229)) b!4980753))

(assert (= (or b!4980746 b!4980748 b!4980756) bm!347406))

(assert (=> d!1603867 m!6011142))

(declare-fun m!6011628 () Bool)

(assert (=> d!1603867 m!6011628))

(assert (=> d!1603867 m!6010974))

(assert (=> bm!347406 m!6011142))

(assert (=> bm!347406 m!6011628))

(assert (=> b!4980750 m!6011142))

(declare-fun m!6011630 () Bool)

(assert (=> b!4980750 m!6011630))

(assert (=> b!4980751 m!6011142))

(assert (=> b!4980751 m!6011630))

(assert (=> b!4980751 m!6011630))

(declare-fun m!6011636 () Bool)

(assert (=> b!4980751 m!6011636))

(assert (=> b!4980751 m!6011142))

(declare-fun m!6011638 () Bool)

(assert (=> b!4980751 m!6011638))

(assert (=> b!4980751 m!6011636))

(assert (=> b!4980751 m!6011638))

(declare-fun m!6011640 () Bool)

(assert (=> b!4980751 m!6011640))

(assert (=> b!4980753 m!6011142))

(assert (=> b!4980753 m!6011630))

(assert (=> b!4980757 m!6011142))

(assert (=> b!4980757 m!6011638))

(assert (=> b!4980757 m!6011638))

(declare-fun m!6011644 () Bool)

(assert (=> b!4980757 m!6011644))

(assert (=> b!4980752 m!6011142))

(assert (=> b!4980752 m!6011638))

(assert (=> b!4980752 m!6011638))

(assert (=> b!4980752 m!6011644))

(assert (=> b!4980744 m!6010990))

(assert (=> b!4980230 d!1603867))

(declare-fun d!1603869 () Bool)

(assert (=> d!1603869 (= (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))) (list!18454 (c!849710 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))

(declare-fun bs!1184216 () Bool)

(assert (= bs!1184216 d!1603869))

(declare-fun m!6011654 () Bool)

(assert (=> bs!1184216 m!6011654))

(assert (=> b!4980230 d!1603869))

(declare-fun d!1603871 () Bool)

(declare-fun lt!2057651 () BalanceConc!29838)

(assert (=> d!1603871 (= (list!18452 lt!2057651) (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491))))))

(assert (=> d!1603871 (= lt!2057651 (dynLambda!23340 (toChars!11294 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491))))) (value!270302 (_1!34552 (get!20014 lt!2057491)))))))

(assert (=> d!1603871 (= (charsOf!5450 (_1!34552 (get!20014 lt!2057491))) lt!2057651)))

(declare-fun b_lambda!197769 () Bool)

(assert (=> (not b_lambda!197769) (not d!1603871)))

(declare-fun t!369781 () Bool)

(declare-fun tb!261591 () Bool)

(assert (=> (and b!4980070 (= (toChars!11294 (transformation!8452 rule!200)) (toChars!11294 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491)))))) t!369781) tb!261591))

(declare-fun b!4980760 () Bool)

(declare-fun e!3113067 () Bool)

(declare-fun tp!1396407 () Bool)

(assert (=> b!4980760 (= e!3113067 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491))))) (value!270302 (_1!34552 (get!20014 lt!2057491)))))) tp!1396407))))

(declare-fun result!326874 () Bool)

(assert (=> tb!261591 (= result!326874 (and (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491))))) (value!270302 (_1!34552 (get!20014 lt!2057491))))) e!3113067))))

(assert (= tb!261591 b!4980760))

(declare-fun m!6011664 () Bool)

(assert (=> b!4980760 m!6011664))

(declare-fun m!6011666 () Bool)

(assert (=> tb!261591 m!6011666))

(assert (=> d!1603871 t!369781))

(declare-fun b_and!349593 () Bool)

(assert (= b_and!349579 (and (=> t!369781 result!326874) b_and!349593)))

(declare-fun m!6011668 () Bool)

(assert (=> d!1603871 m!6011668))

(declare-fun m!6011670 () Bool)

(assert (=> d!1603871 m!6011670))

(assert (=> b!4980230 d!1603871))

(declare-fun d!1603885 () Bool)

(assert (=> d!1603885 (= (get!20014 lt!2057491) (v!50519 lt!2057491))))

(assert (=> b!4980230 d!1603885))

(declare-fun d!1603887 () Bool)

(assert (=> d!1603887 (= (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))) (isBalanced!4222 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))))

(declare-fun bs!1184221 () Bool)

(assert (= bs!1184221 d!1603887))

(declare-fun m!6011674 () Bool)

(assert (=> bs!1184221 m!6011674))

(assert (=> tb!261577 d!1603887))

(declare-fun d!1603891 () Bool)

(assert (=> d!1603891 (= (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))) ((_ is Nil!57576) (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (=> d!1603727 d!1603891))

(assert (=> d!1603727 d!1603713))

(declare-fun d!1603893 () Bool)

(declare-fun e!3113076 () Bool)

(assert (=> d!1603893 e!3113076))

(declare-fun res!2126245 () Bool)

(assert (=> d!1603893 (=> res!2126245 e!3113076)))

(assert (=> d!1603893 (= res!2126245 (isEmpty!31075 (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (=> d!1603893 true))

(declare-fun _$92!545 () Unit!148622)

(assert (=> d!1603893 (= (choose!36773 (regex!8452 rule!200) lt!2057340) _$92!545)))

(declare-fun b!4980773 () Bool)

(assert (=> b!4980773 (= e!3113076 (matchR!6679 (regex!8452 rule!200) (_1!34551 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 (size!38199 Nil!57576) lt!2057340 lt!2057340 (size!38199 lt!2057340)))))))

(assert (= (and d!1603893 (not res!2126245)) b!4980773))

(assert (=> d!1603893 m!6010904))

(assert (=> d!1603893 m!6010906))

(assert (=> d!1603893 m!6010904))

(assert (=> d!1603893 m!6010906))

(assert (=> d!1603893 m!6010908))

(assert (=> d!1603893 m!6011156))

(assert (=> b!4980773 m!6010904))

(assert (=> b!4980773 m!6010906))

(assert (=> b!4980773 m!6010904))

(assert (=> b!4980773 m!6010906))

(assert (=> b!4980773 m!6010908))

(assert (=> b!4980773 m!6011176))

(assert (=> d!1603727 d!1603893))

(assert (=> d!1603727 d!1603715))

(assert (=> d!1603727 d!1603723))

(assert (=> d!1603727 d!1603861))

(declare-fun d!1603901 () Bool)

(assert (=> d!1603901 (= (isEmpty!31081 lt!2057491) (not ((_ is Some!14522) lt!2057491)))))

(assert (=> d!1603657 d!1603901))

(declare-fun d!1603903 () Bool)

(assert (=> d!1603903 (= (isEmpty!31075 (_1!34551 lt!2057493)) ((_ is Nil!57576) (_1!34551 lt!2057493)))))

(assert (=> d!1603657 d!1603903))

(declare-fun d!1603905 () Bool)

(declare-fun lt!2057676 () tuple2!62496)

(assert (=> d!1603905 (= (++!12549 (_1!34551 lt!2057676) (_2!34551 lt!2057676)) lt!2057340)))

(declare-fun sizeTr!367 (List!57700 Int) Int)

(assert (=> d!1603905 (= lt!2057676 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 0 lt!2057340 lt!2057340 (sizeTr!367 lt!2057340 0)))))

(declare-fun lt!2057679 () Unit!148622)

(declare-fun lt!2057672 () Unit!148622)

(assert (=> d!1603905 (= lt!2057679 lt!2057672)))

(declare-fun lt!2057673 () List!57700)

(declare-fun lt!2057678 () Int)

(assert (=> d!1603905 (= (sizeTr!367 lt!2057673 lt!2057678) (+ (size!38199 lt!2057673) lt!2057678))))

(declare-fun lemmaSizeTrEqualsSize!366 (List!57700 Int) Unit!148622)

(assert (=> d!1603905 (= lt!2057672 (lemmaSizeTrEqualsSize!366 lt!2057673 lt!2057678))))

(assert (=> d!1603905 (= lt!2057678 0)))

(assert (=> d!1603905 (= lt!2057673 Nil!57576)))

(declare-fun lt!2057677 () Unit!148622)

(declare-fun lt!2057674 () Unit!148622)

(assert (=> d!1603905 (= lt!2057677 lt!2057674)))

(declare-fun lt!2057675 () Int)

(assert (=> d!1603905 (= (sizeTr!367 lt!2057340 lt!2057675) (+ (size!38199 lt!2057340) lt!2057675))))

(assert (=> d!1603905 (= lt!2057674 (lemmaSizeTrEqualsSize!366 lt!2057340 lt!2057675))))

(assert (=> d!1603905 (= lt!2057675 0)))

(assert (=> d!1603905 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603905 (= (findLongestMatch!1712 (regex!8452 rule!200) lt!2057340) lt!2057676)))

(declare-fun bs!1184222 () Bool)

(assert (= bs!1184222 d!1603905))

(declare-fun m!6011692 () Bool)

(assert (=> bs!1184222 m!6011692))

(declare-fun m!6011694 () Bool)

(assert (=> bs!1184222 m!6011694))

(assert (=> bs!1184222 m!6011694))

(declare-fun m!6011696 () Bool)

(assert (=> bs!1184222 m!6011696))

(declare-fun m!6011698 () Bool)

(assert (=> bs!1184222 m!6011698))

(declare-fun m!6011700 () Bool)

(assert (=> bs!1184222 m!6011700))

(declare-fun m!6011702 () Bool)

(assert (=> bs!1184222 m!6011702))

(declare-fun m!6011704 () Bool)

(assert (=> bs!1184222 m!6011704))

(assert (=> bs!1184222 m!6010906))

(assert (=> bs!1184222 m!6010974))

(declare-fun m!6011706 () Bool)

(assert (=> bs!1184222 m!6011706))

(assert (=> d!1603657 d!1603905))

(assert (=> d!1603657 d!1603641))

(declare-fun b!4980798 () Bool)

(declare-fun res!2126269 () Bool)

(declare-fun e!3113090 () Bool)

(assert (=> b!4980798 (=> (not res!2126269) (not e!3113090))))

(assert (=> b!4980798 (= res!2126269 (isBalanced!4222 (right!42410 (c!849710 input!1580))))))

(declare-fun d!1603909 () Bool)

(declare-fun res!2126272 () Bool)

(declare-fun e!3113089 () Bool)

(assert (=> d!1603909 (=> res!2126272 e!3113089)))

(assert (=> d!1603909 (= res!2126272 (not ((_ is Node!15204) (c!849710 input!1580))))))

(assert (=> d!1603909 (= (isBalanced!4222 (c!849710 input!1580)) e!3113089)))

(declare-fun b!4980799 () Bool)

(assert (=> b!4980799 (= e!3113089 e!3113090)))

(declare-fun res!2126268 () Bool)

(assert (=> b!4980799 (=> (not res!2126268) (not e!3113090))))

(declare-fun height!2024 (Conc!15204) Int)

(assert (=> b!4980799 (= res!2126268 (<= (- 1) (- (height!2024 (left!42080 (c!849710 input!1580))) (height!2024 (right!42410 (c!849710 input!1580))))))))

(declare-fun b!4980800 () Bool)

(declare-fun res!2126271 () Bool)

(assert (=> b!4980800 (=> (not res!2126271) (not e!3113090))))

(assert (=> b!4980800 (= res!2126271 (<= (- (height!2024 (left!42080 (c!849710 input!1580))) (height!2024 (right!42410 (c!849710 input!1580)))) 1))))

(declare-fun b!4980801 () Bool)

(declare-fun res!2126267 () Bool)

(assert (=> b!4980801 (=> (not res!2126267) (not e!3113090))))

(assert (=> b!4980801 (= res!2126267 (not (isEmpty!31080 (left!42080 (c!849710 input!1580)))))))

(declare-fun b!4980802 () Bool)

(assert (=> b!4980802 (= e!3113090 (not (isEmpty!31080 (right!42410 (c!849710 input!1580)))))))

(declare-fun b!4980803 () Bool)

(declare-fun res!2126270 () Bool)

(assert (=> b!4980803 (=> (not res!2126270) (not e!3113090))))

(assert (=> b!4980803 (= res!2126270 (isBalanced!4222 (left!42080 (c!849710 input!1580))))))

(assert (= (and d!1603909 (not res!2126272)) b!4980799))

(assert (= (and b!4980799 res!2126268) b!4980800))

(assert (= (and b!4980800 res!2126271) b!4980803))

(assert (= (and b!4980803 res!2126270) b!4980798))

(assert (= (and b!4980798 res!2126269) b!4980801))

(assert (= (and b!4980801 res!2126267) b!4980802))

(declare-fun m!6011742 () Bool)

(assert (=> b!4980800 m!6011742))

(declare-fun m!6011746 () Bool)

(assert (=> b!4980800 m!6011746))

(declare-fun m!6011748 () Bool)

(assert (=> b!4980801 m!6011748))

(assert (=> b!4980799 m!6011742))

(assert (=> b!4980799 m!6011746))

(declare-fun m!6011750 () Bool)

(assert (=> b!4980803 m!6011750))

(declare-fun m!6011752 () Bool)

(assert (=> b!4980802 m!6011752))

(declare-fun m!6011754 () Bool)

(assert (=> b!4980798 m!6011754))

(assert (=> d!1603623 d!1603909))

(declare-fun d!1603923 () Bool)

(declare-fun lostCauseFct!290 (Regex!13685) Bool)

(assert (=> d!1603923 (= (lostCause!1147 (regex!8452 rule!200)) (lostCauseFct!290 (regex!8452 rule!200)))))

(declare-fun bs!1184228 () Bool)

(assert (= bs!1184228 d!1603923))

(declare-fun m!6011760 () Bool)

(assert (=> bs!1184228 m!6011760))

(assert (=> d!1603715 d!1603923))

(declare-fun b!4980832 () Bool)

(declare-fun e!3113107 () List!57700)

(assert (=> b!4980832 (= e!3113107 (_2!34551 lt!2057570))))

(declare-fun b!4980835 () Bool)

(declare-fun e!3113106 () Bool)

(declare-fun lt!2057712 () List!57700)

(assert (=> b!4980835 (= e!3113106 (or (not (= (_2!34551 lt!2057570) Nil!57576)) (= lt!2057712 (_1!34551 lt!2057570))))))

(declare-fun b!4980833 () Bool)

(assert (=> b!4980833 (= e!3113107 (Cons!57576 (h!64024 (_1!34551 lt!2057570)) (++!12549 (t!369752 (_1!34551 lt!2057570)) (_2!34551 lt!2057570))))))

(declare-fun d!1603929 () Bool)

(assert (=> d!1603929 e!3113106))

(declare-fun res!2126280 () Bool)

(assert (=> d!1603929 (=> (not res!2126280) (not e!3113106))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10201 (List!57700) (InoxSet C!27620))

(assert (=> d!1603929 (= res!2126280 (= (content!10201 lt!2057712) ((_ map or) (content!10201 (_1!34551 lt!2057570)) (content!10201 (_2!34551 lt!2057570)))))))

(assert (=> d!1603929 (= lt!2057712 e!3113107)))

(declare-fun c!849877 () Bool)

(assert (=> d!1603929 (= c!849877 ((_ is Nil!57576) (_1!34551 lt!2057570)))))

(assert (=> d!1603929 (= (++!12549 (_1!34551 lt!2057570) (_2!34551 lt!2057570)) lt!2057712)))

(declare-fun b!4980834 () Bool)

(declare-fun res!2126279 () Bool)

(assert (=> b!4980834 (=> (not res!2126279) (not e!3113106))))

(assert (=> b!4980834 (= res!2126279 (= (size!38199 lt!2057712) (+ (size!38199 (_1!34551 lt!2057570)) (size!38199 (_2!34551 lt!2057570)))))))

(assert (= (and d!1603929 c!849877) b!4980832))

(assert (= (and d!1603929 (not c!849877)) b!4980833))

(assert (= (and d!1603929 res!2126280) b!4980834))

(assert (= (and b!4980834 res!2126279) b!4980835))

(declare-fun m!6011762 () Bool)

(assert (=> b!4980833 m!6011762))

(declare-fun m!6011764 () Bool)

(assert (=> d!1603929 m!6011764))

(declare-fun m!6011766 () Bool)

(assert (=> d!1603929 m!6011766))

(declare-fun m!6011768 () Bool)

(assert (=> d!1603929 m!6011768))

(declare-fun m!6011770 () Bool)

(assert (=> b!4980834 m!6011770))

(assert (=> b!4980834 m!6011290))

(declare-fun m!6011772 () Bool)

(assert (=> b!4980834 m!6011772))

(assert (=> d!1603715 d!1603929))

(declare-fun b!4980836 () Bool)

(declare-fun e!3113109 () List!57700)

(assert (=> b!4980836 (= e!3113109 lt!2057340)))

(declare-fun b!4980839 () Bool)

(declare-fun e!3113108 () Bool)

(declare-fun lt!2057713 () List!57700)

(assert (=> b!4980839 (= e!3113108 (or (not (= lt!2057340 Nil!57576)) (= lt!2057713 Nil!57576)))))

(declare-fun b!4980837 () Bool)

(assert (=> b!4980837 (= e!3113109 (Cons!57576 (h!64024 Nil!57576) (++!12549 (t!369752 Nil!57576) lt!2057340)))))

(declare-fun d!1603931 () Bool)

(assert (=> d!1603931 e!3113108))

(declare-fun res!2126282 () Bool)

(assert (=> d!1603931 (=> (not res!2126282) (not e!3113108))))

(assert (=> d!1603931 (= res!2126282 (= (content!10201 lt!2057713) ((_ map or) (content!10201 Nil!57576) (content!10201 lt!2057340))))))

(assert (=> d!1603931 (= lt!2057713 e!3113109)))

(declare-fun c!849878 () Bool)

(assert (=> d!1603931 (= c!849878 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1603931 (= (++!12549 Nil!57576 lt!2057340) lt!2057713)))

(declare-fun b!4980838 () Bool)

(declare-fun res!2126281 () Bool)

(assert (=> b!4980838 (=> (not res!2126281) (not e!3113108))))

(assert (=> b!4980838 (= res!2126281 (= (size!38199 lt!2057713) (+ (size!38199 Nil!57576) (size!38199 lt!2057340))))))

(assert (= (and d!1603931 c!849878) b!4980836))

(assert (= (and d!1603931 (not c!849878)) b!4980837))

(assert (= (and d!1603931 res!2126282) b!4980838))

(assert (= (and b!4980838 res!2126281) b!4980839))

(declare-fun m!6011774 () Bool)

(assert (=> b!4980837 m!6011774))

(declare-fun m!6011776 () Bool)

(assert (=> d!1603931 m!6011776))

(declare-fun m!6011778 () Bool)

(assert (=> d!1603931 m!6011778))

(declare-fun m!6011780 () Bool)

(assert (=> d!1603931 m!6011780))

(declare-fun m!6011782 () Bool)

(assert (=> b!4980838 m!6011782))

(assert (=> b!4980838 m!6010904))

(assert (=> b!4980838 m!6010906))

(assert (=> d!1603715 d!1603931))

(declare-fun d!1603933 () Bool)

(declare-fun e!3113133 () Bool)

(assert (=> d!1603933 e!3113133))

(declare-fun res!2126298 () Bool)

(assert (=> d!1603933 (=> res!2126298 e!3113133)))

(declare-fun lt!2057749 () Bool)

(assert (=> d!1603933 (= res!2126298 (not lt!2057749))))

(declare-fun e!3113135 () Bool)

(assert (=> d!1603933 (= lt!2057749 e!3113135)))

(declare-fun res!2126297 () Bool)

(assert (=> d!1603933 (=> res!2126297 e!3113135)))

(assert (=> d!1603933 (= res!2126297 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1603933 (= (isPrefix!5263 Nil!57576 (++!12549 Nil!57576 lt!2057340)) lt!2057749)))

(declare-fun b!4980881 () Bool)

(assert (=> b!4980881 (= e!3113133 (>= (size!38199 (++!12549 Nil!57576 lt!2057340)) (size!38199 Nil!57576)))))

(declare-fun b!4980880 () Bool)

(declare-fun e!3113134 () Bool)

(assert (=> b!4980880 (= e!3113134 (isPrefix!5263 (tail!9819 Nil!57576) (tail!9819 (++!12549 Nil!57576 lt!2057340))))))

(declare-fun b!4980879 () Bool)

(declare-fun res!2126295 () Bool)

(assert (=> b!4980879 (=> (not res!2126295) (not e!3113134))))

(assert (=> b!4980879 (= res!2126295 (= (head!10686 Nil!57576) (head!10686 (++!12549 Nil!57576 lt!2057340))))))

(declare-fun b!4980878 () Bool)

(assert (=> b!4980878 (= e!3113135 e!3113134)))

(declare-fun res!2126296 () Bool)

(assert (=> b!4980878 (=> (not res!2126296) (not e!3113134))))

(assert (=> b!4980878 (= res!2126296 (not ((_ is Nil!57576) (++!12549 Nil!57576 lt!2057340))))))

(assert (= (and d!1603933 (not res!2126297)) b!4980878))

(assert (= (and b!4980878 res!2126296) b!4980879))

(assert (= (and b!4980879 res!2126295) b!4980880))

(assert (= (and d!1603933 (not res!2126298)) b!4980881))

(assert (=> b!4980881 m!6011278))

(declare-fun m!6011802 () Bool)

(assert (=> b!4980881 m!6011802))

(assert (=> b!4980881 m!6010904))

(declare-fun m!6011804 () Bool)

(assert (=> b!4980880 m!6011804))

(assert (=> b!4980880 m!6011278))

(declare-fun m!6011806 () Bool)

(assert (=> b!4980880 m!6011806))

(assert (=> b!4980880 m!6011804))

(assert (=> b!4980880 m!6011806))

(declare-fun m!6011808 () Bool)

(assert (=> b!4980880 m!6011808))

(declare-fun m!6011810 () Bool)

(assert (=> b!4980879 m!6011810))

(assert (=> b!4980879 m!6011278))

(declare-fun m!6011812 () Bool)

(assert (=> b!4980879 m!6011812))

(assert (=> d!1603715 d!1603933))

(declare-fun d!1603943 () Bool)

(assert (=> d!1603943 (= lt!2057340 lt!2057569)))

(declare-fun lt!2057752 () Unit!148622)

(declare-fun choose!36781 (List!57700 List!57700 List!57700 List!57700 List!57700) Unit!148622)

(assert (=> d!1603943 (= lt!2057752 (choose!36781 Nil!57576 lt!2057340 Nil!57576 lt!2057569 lt!2057340))))

(assert (=> d!1603943 (isPrefix!5263 Nil!57576 lt!2057340)))

(assert (=> d!1603943 (= (lemmaSamePrefixThenSameSuffix!2515 Nil!57576 lt!2057340 Nil!57576 lt!2057569 lt!2057340) lt!2057752)))

(declare-fun bs!1184230 () Bool)

(assert (= bs!1184230 d!1603943))

(declare-fun m!6011868 () Bool)

(assert (=> bs!1184230 m!6011868))

(declare-fun m!6011870 () Bool)

(assert (=> bs!1184230 m!6011870))

(assert (=> d!1603715 d!1603943))

(declare-fun d!1603947 () Bool)

(declare-fun lt!2057756 () List!57700)

(assert (=> d!1603947 (= (++!12549 Nil!57576 lt!2057756) lt!2057340)))

(declare-fun e!3113141 () List!57700)

(assert (=> d!1603947 (= lt!2057756 e!3113141)))

(declare-fun c!849895 () Bool)

(assert (=> d!1603947 (= c!849895 ((_ is Cons!57576) Nil!57576))))

(assert (=> d!1603947 (>= (size!38199 lt!2057340) (size!38199 Nil!57576))))

(assert (=> d!1603947 (= (getSuffix!3103 lt!2057340 Nil!57576) lt!2057756)))

(declare-fun b!4980894 () Bool)

(assert (=> b!4980894 (= e!3113141 (getSuffix!3103 (tail!9819 lt!2057340) (t!369752 Nil!57576)))))

(declare-fun b!4980895 () Bool)

(assert (=> b!4980895 (= e!3113141 lt!2057340)))

(assert (= (and d!1603947 c!849895) b!4980894))

(assert (= (and d!1603947 (not c!849895)) b!4980895))

(declare-fun m!6011874 () Bool)

(assert (=> d!1603947 m!6011874))

(assert (=> d!1603947 m!6010906))

(assert (=> d!1603947 m!6010904))

(assert (=> b!4980894 m!6011258))

(assert (=> b!4980894 m!6011258))

(declare-fun m!6011876 () Bool)

(assert (=> b!4980894 m!6011876))

(assert (=> d!1603715 d!1603947))

(assert (=> d!1603715 d!1603861))

(declare-fun d!1603951 () Bool)

(assert (=> d!1603951 (isPrefix!5263 Nil!57576 (++!12549 Nil!57576 lt!2057340))))

(declare-fun lt!2057767 () Unit!148622)

(declare-fun choose!36782 (List!57700 List!57700) Unit!148622)

(assert (=> d!1603951 (= lt!2057767 (choose!36782 Nil!57576 lt!2057340))))

(assert (=> d!1603951 (= (lemmaConcatTwoListThenFirstIsPrefix!3361 Nil!57576 lt!2057340) lt!2057767)))

(declare-fun bs!1184232 () Bool)

(assert (= bs!1184232 d!1603951))

(assert (=> bs!1184232 m!6011278))

(assert (=> bs!1184232 m!6011278))

(assert (=> bs!1184232 m!6011282))

(declare-fun m!6011888 () Bool)

(assert (=> bs!1184232 m!6011888))

(assert (=> d!1603715 d!1603951))

(declare-fun d!1603959 () Bool)

(assert (=> d!1603959 (= (isEmpty!31075 (tail!9819 (_1!34551 lt!2057339))) ((_ is Nil!57576) (tail!9819 (_1!34551 lt!2057339))))))

(assert (=> b!4980428 d!1603959))

(declare-fun d!1603961 () Bool)

(assert (=> d!1603961 (= (tail!9819 (_1!34551 lt!2057339)) (t!369752 (_1!34551 lt!2057339)))))

(assert (=> b!4980428 d!1603961))

(declare-fun e!3113196 () Regex!13685)

(declare-fun call!347439 () Regex!13685)

(declare-fun b!4980998 () Bool)

(declare-fun call!347438 () Regex!13685)

(assert (=> b!4980998 (= e!3113196 (Union!13685 (Concat!22447 call!347439 (regTwo!27882 (regex!8452 rule!200))) call!347438))))

(declare-fun b!4980999 () Bool)

(declare-fun e!3113193 () Regex!13685)

(declare-fun call!347437 () Regex!13685)

(assert (=> b!4980999 (= e!3113193 (Union!13685 call!347438 call!347437))))

(declare-fun b!4981000 () Bool)

(assert (=> b!4981000 (= e!3113196 (Union!13685 (Concat!22447 call!347439 (regTwo!27882 (regex!8452 rule!200))) EmptyLang!13685))))

(declare-fun bm!347431 () Bool)

(declare-fun call!347436 () Regex!13685)

(assert (=> bm!347431 (= call!347439 call!347436)))

(declare-fun b!4981002 () Bool)

(declare-fun e!3113195 () Regex!13685)

(declare-fun e!3113194 () Regex!13685)

(assert (=> b!4981002 (= e!3113195 e!3113194)))

(declare-fun c!849918 () Bool)

(assert (=> b!4981002 (= c!849918 ((_ is ElementMatch!13685) (regex!8452 rule!200)))))

(declare-fun bm!347432 () Bool)

(declare-fun c!849917 () Bool)

(assert (=> bm!347432 (= call!347438 (derivativeStep!3937 (ite c!849917 (regOne!27883 (regex!8452 rule!200)) (regTwo!27882 (regex!8452 rule!200))) call!347372))))

(declare-fun b!4981003 () Bool)

(declare-fun c!849919 () Bool)

(assert (=> b!4981003 (= c!849919 (nullable!4637 (regOne!27882 (regex!8452 rule!200))))))

(declare-fun e!3113192 () Regex!13685)

(assert (=> b!4981003 (= e!3113192 e!3113196)))

(declare-fun b!4981004 () Bool)

(assert (=> b!4981004 (= e!3113195 EmptyLang!13685)))

(declare-fun b!4981005 () Bool)

(assert (=> b!4981005 (= c!849917 ((_ is Union!13685) (regex!8452 rule!200)))))

(assert (=> b!4981005 (= e!3113194 e!3113193)))

(declare-fun d!1603967 () Bool)

(declare-fun lt!2057772 () Regex!13685)

(assert (=> d!1603967 (validRegex!5986 lt!2057772)))

(assert (=> d!1603967 (= lt!2057772 e!3113195)))

(declare-fun c!849916 () Bool)

(assert (=> d!1603967 (= c!849916 (or ((_ is EmptyExpr!13685) (regex!8452 rule!200)) ((_ is EmptyLang!13685) (regex!8452 rule!200))))))

(assert (=> d!1603967 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603967 (= (derivativeStep!3937 (regex!8452 rule!200) call!347372) lt!2057772)))

(declare-fun b!4981001 () Bool)

(assert (=> b!4981001 (= e!3113194 (ite (= call!347372 (c!849709 (regex!8452 rule!200))) EmptyExpr!13685 EmptyLang!13685))))

(declare-fun bm!347433 () Bool)

(declare-fun c!849920 () Bool)

(assert (=> bm!347433 (= call!347437 (derivativeStep!3937 (ite c!849917 (regTwo!27883 (regex!8452 rule!200)) (ite c!849920 (reg!14014 (regex!8452 rule!200)) (regOne!27882 (regex!8452 rule!200)))) call!347372))))

(declare-fun b!4981006 () Bool)

(assert (=> b!4981006 (= e!3113193 e!3113192)))

(assert (=> b!4981006 (= c!849920 ((_ is Star!13685) (regex!8452 rule!200)))))

(declare-fun b!4981007 () Bool)

(assert (=> b!4981007 (= e!3113192 (Concat!22447 call!347436 (regex!8452 rule!200)))))

(declare-fun bm!347434 () Bool)

(assert (=> bm!347434 (= call!347436 call!347437)))

(assert (= (and d!1603967 c!849916) b!4981004))

(assert (= (and d!1603967 (not c!849916)) b!4981002))

(assert (= (and b!4981002 c!849918) b!4981001))

(assert (= (and b!4981002 (not c!849918)) b!4981005))

(assert (= (and b!4981005 c!849917) b!4980999))

(assert (= (and b!4981005 (not c!849917)) b!4981006))

(assert (= (and b!4981006 c!849920) b!4981007))

(assert (= (and b!4981006 (not c!849920)) b!4981003))

(assert (= (and b!4981003 c!849919) b!4980998))

(assert (= (and b!4981003 (not c!849919)) b!4981000))

(assert (= (or b!4980998 b!4981000) bm!347431))

(assert (= (or b!4981007 bm!347431) bm!347434))

(assert (= (or b!4980999 bm!347434) bm!347433))

(assert (= (or b!4980999 b!4980998) bm!347432))

(declare-fun m!6011978 () Bool)

(assert (=> bm!347432 m!6011978))

(declare-fun m!6011980 () Bool)

(assert (=> b!4981003 m!6011980))

(declare-fun m!6011982 () Bool)

(assert (=> d!1603967 m!6011982))

(assert (=> d!1603967 m!6010974))

(declare-fun m!6011984 () Bool)

(assert (=> bm!347433 m!6011984))

(assert (=> bm!347368 d!1603967))

(declare-fun d!1603985 () Bool)

(assert (=> d!1603985 (= (list!18452 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))) (list!18454 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))))

(declare-fun bs!1184236 () Bool)

(assert (= bs!1184236 d!1603985))

(declare-fun m!6011986 () Bool)

(assert (=> bs!1184236 m!6011986))

(assert (=> bs!1184195 d!1603985))

(declare-fun d!1603987 () Bool)

(assert (=> d!1603987 (= (list!18452 (seqFromList!6073 lt!2057334)) (list!18454 (c!849710 (seqFromList!6073 lt!2057334))))))

(declare-fun bs!1184237 () Bool)

(assert (= bs!1184237 d!1603987))

(declare-fun m!6011988 () Bool)

(assert (=> bs!1184237 m!6011988))

(assert (=> bs!1184195 d!1603987))

(declare-fun b!4981018 () Bool)

(declare-fun e!3113202 () List!57700)

(declare-fun list!18456 (IArray!30469) List!57700)

(assert (=> b!4981018 (= e!3113202 (list!18456 (xs!18530 (c!849710 totalInput!520))))))

(declare-fun d!1603989 () Bool)

(declare-fun c!849925 () Bool)

(assert (=> d!1603989 (= c!849925 ((_ is Empty!15204) (c!849710 totalInput!520)))))

(declare-fun e!3113201 () List!57700)

(assert (=> d!1603989 (= (list!18454 (c!849710 totalInput!520)) e!3113201)))

(declare-fun b!4981019 () Bool)

(assert (=> b!4981019 (= e!3113202 (++!12549 (list!18454 (left!42080 (c!849710 totalInput!520))) (list!18454 (right!42410 (c!849710 totalInput!520)))))))

(declare-fun b!4981016 () Bool)

(assert (=> b!4981016 (= e!3113201 Nil!57576)))

(declare-fun b!4981017 () Bool)

(assert (=> b!4981017 (= e!3113201 e!3113202)))

(declare-fun c!849926 () Bool)

(assert (=> b!4981017 (= c!849926 ((_ is Leaf!25255) (c!849710 totalInput!520)))))

(assert (= (and d!1603989 c!849925) b!4981016))

(assert (= (and d!1603989 (not c!849925)) b!4981017))

(assert (= (and b!4981017 c!849926) b!4981018))

(assert (= (and b!4981017 (not c!849926)) b!4981019))

(declare-fun m!6011990 () Bool)

(assert (=> b!4981018 m!6011990))

(declare-fun m!6011992 () Bool)

(assert (=> b!4981019 m!6011992))

(declare-fun m!6011994 () Bool)

(assert (=> b!4981019 m!6011994))

(assert (=> b!4981019 m!6011992))

(assert (=> b!4981019 m!6011994))

(declare-fun m!6011996 () Bool)

(assert (=> b!4981019 m!6011996))

(assert (=> d!1603637 d!1603989))

(declare-fun d!1603991 () Bool)

(assert (=> d!1603991 (isPrefix!5263 lt!2057340 lt!2057340)))

(declare-fun lt!2057775 () Unit!148622)

(declare-fun choose!36783 (List!57700 List!57700) Unit!148622)

(assert (=> d!1603991 (= lt!2057775 (choose!36783 lt!2057340 lt!2057340))))

(assert (=> d!1603991 (= (lemmaIsPrefixRefl!3587 lt!2057340 lt!2057340) lt!2057775)))

(declare-fun bs!1184238 () Bool)

(assert (= bs!1184238 d!1603991))

(assert (=> bs!1184238 m!6011288))

(declare-fun m!6011998 () Bool)

(assert (=> bs!1184238 m!6011998))

(assert (=> bm!347366 d!1603991))

(assert (=> d!1603633 d!1603725))

(declare-fun b!4981020 () Bool)

(declare-fun e!3113204 () Bool)

(assert (=> b!4981020 (= e!3113204 (nullable!4637 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339)))))))

(declare-fun b!4981021 () Bool)

(declare-fun e!3113209 () Bool)

(declare-fun lt!2057776 () Bool)

(assert (=> b!4981021 (= e!3113209 (not lt!2057776))))

(declare-fun b!4981023 () Bool)

(declare-fun res!2126325 () Bool)

(declare-fun e!3113206 () Bool)

(assert (=> b!4981023 (=> res!2126325 e!3113206)))

(declare-fun e!3113203 () Bool)

(assert (=> b!4981023 (= res!2126325 e!3113203)))

(declare-fun res!2126327 () Bool)

(assert (=> b!4981023 (=> (not res!2126327) (not e!3113203))))

(assert (=> b!4981023 (= res!2126327 lt!2057776)))

(declare-fun bm!347435 () Bool)

(declare-fun call!347440 () Bool)

(assert (=> bm!347435 (= call!347440 (isEmpty!31075 (tail!9819 (_1!34551 lt!2057339))))))

(declare-fun b!4981024 () Bool)

(declare-fun e!3113207 () Bool)

(declare-fun e!3113208 () Bool)

(assert (=> b!4981024 (= e!3113207 e!3113208)))

(declare-fun res!2126329 () Bool)

(assert (=> b!4981024 (=> res!2126329 e!3113208)))

(assert (=> b!4981024 (= res!2126329 call!347440)))

(declare-fun b!4981025 () Bool)

(declare-fun e!3113205 () Bool)

(assert (=> b!4981025 (= e!3113205 e!3113209)))

(declare-fun c!849927 () Bool)

(assert (=> b!4981025 (= c!849927 ((_ is EmptyLang!13685) (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339)))))))

(declare-fun b!4981026 () Bool)

(assert (=> b!4981026 (= e!3113203 (= (head!10686 (tail!9819 (_1!34551 lt!2057339))) (c!849709 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))))))))

(declare-fun b!4981027 () Bool)

(assert (=> b!4981027 (= e!3113204 (matchR!6679 (derivativeStep!3937 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))) (head!10686 (tail!9819 (_1!34551 lt!2057339)))) (tail!9819 (tail!9819 (_1!34551 lt!2057339)))))))

(declare-fun b!4981022 () Bool)

(assert (=> b!4981022 (= e!3113205 (= lt!2057776 call!347440))))

(declare-fun d!1603993 () Bool)

(assert (=> d!1603993 e!3113205))

(declare-fun c!849928 () Bool)

(assert (=> d!1603993 (= c!849928 ((_ is EmptyExpr!13685) (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339)))))))

(assert (=> d!1603993 (= lt!2057776 e!3113204)))

(declare-fun c!849929 () Bool)

(assert (=> d!1603993 (= c!849929 (isEmpty!31075 (tail!9819 (_1!34551 lt!2057339))))))

(assert (=> d!1603993 (validRegex!5986 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))))))

(assert (=> d!1603993 (= (matchR!6679 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))) (tail!9819 (_1!34551 lt!2057339))) lt!2057776)))

(declare-fun b!4981028 () Bool)

(declare-fun res!2126324 () Bool)

(assert (=> b!4981028 (=> (not res!2126324) (not e!3113203))))

(assert (=> b!4981028 (= res!2126324 (isEmpty!31075 (tail!9819 (tail!9819 (_1!34551 lt!2057339)))))))

(declare-fun b!4981029 () Bool)

(assert (=> b!4981029 (= e!3113208 (not (= (head!10686 (tail!9819 (_1!34551 lt!2057339))) (c!849709 (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339)))))))))

(declare-fun b!4981030 () Bool)

(declare-fun res!2126328 () Bool)

(assert (=> b!4981030 (=> res!2126328 e!3113206)))

(assert (=> b!4981030 (= res!2126328 (not ((_ is ElementMatch!13685) (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))))))))

(assert (=> b!4981030 (= e!3113209 e!3113206)))

(declare-fun b!4981031 () Bool)

(assert (=> b!4981031 (= e!3113206 e!3113207)))

(declare-fun res!2126323 () Bool)

(assert (=> b!4981031 (=> (not res!2126323) (not e!3113207))))

(assert (=> b!4981031 (= res!2126323 (not lt!2057776))))

(declare-fun b!4981032 () Bool)

(declare-fun res!2126326 () Bool)

(assert (=> b!4981032 (=> (not res!2126326) (not e!3113203))))

(assert (=> b!4981032 (= res!2126326 (not call!347440))))

(declare-fun b!4981033 () Bool)

(declare-fun res!2126330 () Bool)

(assert (=> b!4981033 (=> res!2126330 e!3113208)))

(assert (=> b!4981033 (= res!2126330 (not (isEmpty!31075 (tail!9819 (tail!9819 (_1!34551 lt!2057339))))))))

(assert (= (and d!1603993 c!849929) b!4981020))

(assert (= (and d!1603993 (not c!849929)) b!4981027))

(assert (= (and d!1603993 c!849928) b!4981022))

(assert (= (and d!1603993 (not c!849928)) b!4981025))

(assert (= (and b!4981025 c!849927) b!4981021))

(assert (= (and b!4981025 (not c!849927)) b!4981030))

(assert (= (and b!4981030 (not res!2126328)) b!4981023))

(assert (= (and b!4981023 res!2126327) b!4981032))

(assert (= (and b!4981032 res!2126326) b!4981028))

(assert (= (and b!4981028 res!2126324) b!4981026))

(assert (= (and b!4981023 (not res!2126325)) b!4981031))

(assert (= (and b!4981031 res!2126323) b!4981024))

(assert (= (and b!4981024 (not res!2126329)) b!4981033))

(assert (= (and b!4981033 (not res!2126330)) b!4981029))

(assert (= (or b!4981022 b!4981024 b!4981032) bm!347435))

(assert (=> d!1603993 m!6011306))

(assert (=> d!1603993 m!6011310))

(assert (=> d!1603993 m!6011304))

(declare-fun m!6012000 () Bool)

(assert (=> d!1603993 m!6012000))

(assert (=> bm!347435 m!6011306))

(assert (=> bm!347435 m!6011310))

(assert (=> b!4981026 m!6011306))

(declare-fun m!6012002 () Bool)

(assert (=> b!4981026 m!6012002))

(assert (=> b!4981027 m!6011306))

(assert (=> b!4981027 m!6012002))

(assert (=> b!4981027 m!6011304))

(assert (=> b!4981027 m!6012002))

(declare-fun m!6012004 () Bool)

(assert (=> b!4981027 m!6012004))

(assert (=> b!4981027 m!6011306))

(declare-fun m!6012006 () Bool)

(assert (=> b!4981027 m!6012006))

(assert (=> b!4981027 m!6012004))

(assert (=> b!4981027 m!6012006))

(declare-fun m!6012008 () Bool)

(assert (=> b!4981027 m!6012008))

(assert (=> b!4981029 m!6011306))

(assert (=> b!4981029 m!6012002))

(assert (=> b!4981033 m!6011306))

(assert (=> b!4981033 m!6012006))

(assert (=> b!4981033 m!6012006))

(declare-fun m!6012010 () Bool)

(assert (=> b!4981033 m!6012010))

(assert (=> b!4981028 m!6011306))

(assert (=> b!4981028 m!6012006))

(assert (=> b!4981028 m!6012006))

(assert (=> b!4981028 m!6012010))

(assert (=> b!4981020 m!6011304))

(declare-fun m!6012012 () Bool)

(assert (=> b!4981020 m!6012012))

(assert (=> b!4980422 d!1603993))

(declare-fun call!347443 () Regex!13685)

(declare-fun call!347444 () Regex!13685)

(declare-fun e!3113214 () Regex!13685)

(declare-fun b!4981034 () Bool)

(assert (=> b!4981034 (= e!3113214 (Union!13685 (Concat!22447 call!347444 (regTwo!27882 (regex!8452 rule!200))) call!347443))))

(declare-fun b!4981035 () Bool)

(declare-fun e!3113211 () Regex!13685)

(declare-fun call!347442 () Regex!13685)

(assert (=> b!4981035 (= e!3113211 (Union!13685 call!347443 call!347442))))

(declare-fun b!4981036 () Bool)

(assert (=> b!4981036 (= e!3113214 (Union!13685 (Concat!22447 call!347444 (regTwo!27882 (regex!8452 rule!200))) EmptyLang!13685))))

(declare-fun bm!347436 () Bool)

(declare-fun call!347441 () Regex!13685)

(assert (=> bm!347436 (= call!347444 call!347441)))

(declare-fun b!4981038 () Bool)

(declare-fun e!3113213 () Regex!13685)

(declare-fun e!3113212 () Regex!13685)

(assert (=> b!4981038 (= e!3113213 e!3113212)))

(declare-fun c!849932 () Bool)

(assert (=> b!4981038 (= c!849932 ((_ is ElementMatch!13685) (regex!8452 rule!200)))))

(declare-fun c!849931 () Bool)

(declare-fun bm!347437 () Bool)

(assert (=> bm!347437 (= call!347443 (derivativeStep!3937 (ite c!849931 (regOne!27883 (regex!8452 rule!200)) (regTwo!27882 (regex!8452 rule!200))) (head!10686 (_1!34551 lt!2057339))))))

(declare-fun b!4981039 () Bool)

(declare-fun c!849933 () Bool)

(assert (=> b!4981039 (= c!849933 (nullable!4637 (regOne!27882 (regex!8452 rule!200))))))

(declare-fun e!3113210 () Regex!13685)

(assert (=> b!4981039 (= e!3113210 e!3113214)))

(declare-fun b!4981040 () Bool)

(assert (=> b!4981040 (= e!3113213 EmptyLang!13685)))

(declare-fun b!4981041 () Bool)

(assert (=> b!4981041 (= c!849931 ((_ is Union!13685) (regex!8452 rule!200)))))

(assert (=> b!4981041 (= e!3113212 e!3113211)))

(declare-fun d!1603995 () Bool)

(declare-fun lt!2057777 () Regex!13685)

(assert (=> d!1603995 (validRegex!5986 lt!2057777)))

(assert (=> d!1603995 (= lt!2057777 e!3113213)))

(declare-fun c!849930 () Bool)

(assert (=> d!1603995 (= c!849930 (or ((_ is EmptyExpr!13685) (regex!8452 rule!200)) ((_ is EmptyLang!13685) (regex!8452 rule!200))))))

(assert (=> d!1603995 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1603995 (= (derivativeStep!3937 (regex!8452 rule!200) (head!10686 (_1!34551 lt!2057339))) lt!2057777)))

(declare-fun b!4981037 () Bool)

(assert (=> b!4981037 (= e!3113212 (ite (= (head!10686 (_1!34551 lt!2057339)) (c!849709 (regex!8452 rule!200))) EmptyExpr!13685 EmptyLang!13685))))

(declare-fun c!849934 () Bool)

(declare-fun bm!347438 () Bool)

(assert (=> bm!347438 (= call!347442 (derivativeStep!3937 (ite c!849931 (regTwo!27883 (regex!8452 rule!200)) (ite c!849934 (reg!14014 (regex!8452 rule!200)) (regOne!27882 (regex!8452 rule!200)))) (head!10686 (_1!34551 lt!2057339))))))

(declare-fun b!4981042 () Bool)

(assert (=> b!4981042 (= e!3113211 e!3113210)))

(assert (=> b!4981042 (= c!849934 ((_ is Star!13685) (regex!8452 rule!200)))))

(declare-fun b!4981043 () Bool)

(assert (=> b!4981043 (= e!3113210 (Concat!22447 call!347441 (regex!8452 rule!200)))))

(declare-fun bm!347439 () Bool)

(assert (=> bm!347439 (= call!347441 call!347442)))

(assert (= (and d!1603995 c!849930) b!4981040))

(assert (= (and d!1603995 (not c!849930)) b!4981038))

(assert (= (and b!4981038 c!849932) b!4981037))

(assert (= (and b!4981038 (not c!849932)) b!4981041))

(assert (= (and b!4981041 c!849931) b!4981035))

(assert (= (and b!4981041 (not c!849931)) b!4981042))

(assert (= (and b!4981042 c!849934) b!4981043))

(assert (= (and b!4981042 (not c!849934)) b!4981039))

(assert (= (and b!4981039 c!849933) b!4981034))

(assert (= (and b!4981039 (not c!849933)) b!4981036))

(assert (= (or b!4981034 b!4981036) bm!347436))

(assert (= (or b!4981043 bm!347436) bm!347439))

(assert (= (or b!4981035 bm!347439) bm!347438))

(assert (= (or b!4981035 b!4981034) bm!347437))

(assert (=> bm!347437 m!6011302))

(declare-fun m!6012014 () Bool)

(assert (=> bm!347437 m!6012014))

(assert (=> b!4981039 m!6011980))

(declare-fun m!6012016 () Bool)

(assert (=> d!1603995 m!6012016))

(assert (=> d!1603995 m!6010974))

(assert (=> bm!347438 m!6011302))

(declare-fun m!6012018 () Bool)

(assert (=> bm!347438 m!6012018))

(assert (=> b!4980422 d!1603995))

(declare-fun d!1603997 () Bool)

(assert (=> d!1603997 (= (head!10686 (_1!34551 lt!2057339)) (h!64024 (_1!34551 lt!2057339)))))

(assert (=> b!4980422 d!1603997))

(assert (=> b!4980422 d!1603961))

(declare-fun d!1603999 () Bool)

(assert (not d!1603999))

(assert (=> b!4980281 d!1603999))

(declare-fun d!1604001 () Bool)

(declare-fun c!849935 () Bool)

(assert (=> d!1604001 (= c!849935 ((_ is Node!15204) (left!42080 (c!849710 totalInput!520))))))

(declare-fun e!3113215 () Bool)

(assert (=> d!1604001 (= (inv!75395 (left!42080 (c!849710 totalInput!520))) e!3113215)))

(declare-fun b!4981044 () Bool)

(assert (=> b!4981044 (= e!3113215 (inv!75401 (left!42080 (c!849710 totalInput!520))))))

(declare-fun b!4981045 () Bool)

(declare-fun e!3113216 () Bool)

(assert (=> b!4981045 (= e!3113215 e!3113216)))

(declare-fun res!2126331 () Bool)

(assert (=> b!4981045 (= res!2126331 (not ((_ is Leaf!25255) (left!42080 (c!849710 totalInput!520)))))))

(assert (=> b!4981045 (=> res!2126331 e!3113216)))

(declare-fun b!4981046 () Bool)

(assert (=> b!4981046 (= e!3113216 (inv!75402 (left!42080 (c!849710 totalInput!520))))))

(assert (= (and d!1604001 c!849935) b!4981044))

(assert (= (and d!1604001 (not c!849935)) b!4981045))

(assert (= (and b!4981045 (not res!2126331)) b!4981046))

(declare-fun m!6012020 () Bool)

(assert (=> b!4981044 m!6012020))

(declare-fun m!6012022 () Bool)

(assert (=> b!4981046 m!6012022))

(assert (=> b!4980437 d!1604001))

(declare-fun d!1604003 () Bool)

(declare-fun c!849936 () Bool)

(assert (=> d!1604003 (= c!849936 ((_ is Node!15204) (right!42410 (c!849710 totalInput!520))))))

(declare-fun e!3113217 () Bool)

(assert (=> d!1604003 (= (inv!75395 (right!42410 (c!849710 totalInput!520))) e!3113217)))

(declare-fun b!4981047 () Bool)

(assert (=> b!4981047 (= e!3113217 (inv!75401 (right!42410 (c!849710 totalInput!520))))))

(declare-fun b!4981048 () Bool)

(declare-fun e!3113218 () Bool)

(assert (=> b!4981048 (= e!3113217 e!3113218)))

(declare-fun res!2126332 () Bool)

(assert (=> b!4981048 (= res!2126332 (not ((_ is Leaf!25255) (right!42410 (c!849710 totalInput!520)))))))

(assert (=> b!4981048 (=> res!2126332 e!3113218)))

(declare-fun b!4981049 () Bool)

(assert (=> b!4981049 (= e!3113218 (inv!75402 (right!42410 (c!849710 totalInput!520))))))

(assert (= (and d!1604003 c!849936) b!4981047))

(assert (= (and d!1604003 (not c!849936)) b!4981048))

(assert (= (and b!4981048 (not res!2126332)) b!4981049))

(declare-fun m!6012024 () Bool)

(assert (=> b!4981047 m!6012024))

(declare-fun m!6012026 () Bool)

(assert (=> b!4981049 m!6012026))

(assert (=> b!4980437 d!1604003))

(declare-fun d!1604005 () Bool)

(assert (=> d!1604005 (= (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))) (isBalanced!4222 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))))

(declare-fun bs!1184239 () Bool)

(assert (= bs!1184239 d!1604005))

(declare-fun m!6012028 () Bool)

(assert (=> bs!1184239 m!6012028))

(assert (=> tb!261581 d!1604005))

(assert (=> b!4980424 d!1603997))

(declare-fun d!1604007 () Bool)

(assert (=> d!1604007 (= (isEmpty!31082 (Some!14523 (tuple2!62503 (Token!15361 (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) rule!200 (size!38198 (_1!34553 lt!2057338)) lt!2057334) (_2!34553 lt!2057338)))) (not ((_ is Some!14523) (Some!14523 (tuple2!62503 (Token!15361 (apply!13939 (transformation!8452 rule!200) (_1!34553 lt!2057338)) rule!200 (size!38198 (_1!34553 lt!2057338)) lt!2057334) (_2!34553 lt!2057338))))))))

(assert (=> d!1603709 d!1604007))

(assert (=> d!1603733 d!1603711))

(assert (=> d!1603733 d!1603861))

(declare-fun d!1604009 () Bool)

(declare-fun nullableFct!1260 (Regex!13685) Bool)

(assert (=> d!1604009 (= (nullable!4637 (regex!8452 rule!200)) (nullableFct!1260 (regex!8452 rule!200)))))

(declare-fun bs!1184240 () Bool)

(assert (= bs!1184240 d!1604009))

(declare-fun m!6012030 () Bool)

(assert (=> bs!1184240 m!6012030))

(assert (=> b!4980415 d!1604009))

(declare-fun d!1604011 () Bool)

(declare-fun lt!2057778 () Int)

(assert (=> d!1604011 (>= lt!2057778 0)))

(declare-fun e!3113219 () Int)

(assert (=> d!1604011 (= lt!2057778 e!3113219)))

(declare-fun c!849937 () Bool)

(assert (=> d!1604011 (= c!849937 ((_ is Nil!57576) (list!18452 totalInput!520)))))

(assert (=> d!1604011 (= (size!38199 (list!18452 totalInput!520)) lt!2057778)))

(declare-fun b!4981050 () Bool)

(assert (=> b!4981050 (= e!3113219 0)))

(declare-fun b!4981051 () Bool)

(assert (=> b!4981051 (= e!3113219 (+ 1 (size!38199 (t!369752 (list!18452 totalInput!520)))))))

(assert (= (and d!1604011 c!849937) b!4981050))

(assert (= (and d!1604011 (not c!849937)) b!4981051))

(declare-fun m!6012032 () Bool)

(assert (=> b!4981051 m!6012032))

(assert (=> b!4980126 d!1604011))

(assert (=> b!4980126 d!1603723))

(assert (=> b!4980386 d!1603851))

(assert (=> b!4980231 d!1603885))

(declare-fun bs!1184241 () Bool)

(declare-fun d!1604013 () Bool)

(assert (= bs!1184241 (and d!1604013 b!4980068)))

(declare-fun lambda!247820 () Int)

(assert (=> bs!1184241 (= lambda!247820 lambda!247802)))

(declare-fun bs!1184242 () Bool)

(assert (= bs!1184242 (and d!1604013 d!1603725)))

(assert (=> bs!1184242 (= lambda!247820 lambda!247808)))

(declare-fun b!4981056 () Bool)

(declare-fun e!3113222 () Bool)

(assert (=> b!4981056 (= e!3113222 true)))

(assert (=> d!1604013 e!3113222))

(assert (= d!1604013 b!4981056))

(assert (=> b!4981056 (< (dynLambda!23332 order!26469 (toValue!11435 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247820))))

(assert (=> b!4981056 (< (dynLambda!23334 order!26473 (toChars!11294 (transformation!8452 rule!200))) (dynLambda!23333 order!26471 lambda!247820))))

(assert (=> d!1604013 (= (list!18452 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 (_1!34551 lt!2057493))))) (list!18452 (seqFromList!6073 (_1!34551 lt!2057493))))))

(declare-fun lt!2057781 () Unit!148622)

(assert (=> d!1604013 (= lt!2057781 (ForallOf!1262 lambda!247820 (seqFromList!6073 (_1!34551 lt!2057493))))))

(assert (=> d!1604013 (= (lemmaSemiInverse!2613 (transformation!8452 rule!200) (seqFromList!6073 (_1!34551 lt!2057493))) lt!2057781)))

(declare-fun b_lambda!197783 () Bool)

(assert (=> (not b_lambda!197783) (not d!1604013)))

(declare-fun t!369787 () Bool)

(declare-fun tb!261593 () Bool)

(assert (=> (and b!4980070 (= (toChars!11294 (transformation!8452 rule!200)) (toChars!11294 (transformation!8452 rule!200))) t!369787) tb!261593))

(declare-fun tp!1396461 () Bool)

(declare-fun e!3113223 () Bool)

(declare-fun b!4981057 () Bool)

(assert (=> b!4981057 (= e!3113223 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 (_1!34551 lt!2057493)))))) tp!1396461))))

(declare-fun result!326878 () Bool)

(assert (=> tb!261593 (= result!326878 (and (inv!75396 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 (_1!34551 lt!2057493))))) e!3113223))))

(assert (= tb!261593 b!4981057))

(declare-fun m!6012034 () Bool)

(assert (=> b!4981057 m!6012034))

(declare-fun m!6012036 () Bool)

(assert (=> tb!261593 m!6012036))

(assert (=> d!1604013 t!369787))

(declare-fun b_and!349595 () Bool)

(assert (= b_and!349593 (and (=> t!369787 result!326878) b_and!349595)))

(declare-fun b_lambda!197785 () Bool)

(assert (=> (not b_lambda!197785) (not d!1604013)))

(declare-fun t!369789 () Bool)

(declare-fun tb!261595 () Bool)

(assert (=> (and b!4980070 (= (toValue!11435 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 rule!200))) t!369789) tb!261595))

(declare-fun result!326880 () Bool)

(assert (=> tb!261595 (= result!326880 (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 (_1!34551 lt!2057493)))))))

(declare-fun m!6012038 () Bool)

(assert (=> tb!261595 m!6012038))

(assert (=> d!1604013 t!369789))

(declare-fun b_and!349597 () Bool)

(assert (= b_and!349581 (and (=> t!369789 result!326880) b_and!349597)))

(assert (=> d!1604013 m!6011158))

(declare-fun m!6012040 () Bool)

(assert (=> d!1604013 m!6012040))

(assert (=> d!1604013 m!6011158))

(declare-fun m!6012042 () Bool)

(assert (=> d!1604013 m!6012042))

(assert (=> d!1604013 m!6011158))

(declare-fun m!6012044 () Bool)

(assert (=> d!1604013 m!6012044))

(assert (=> d!1604013 m!6012044))

(declare-fun m!6012046 () Bool)

(assert (=> d!1604013 m!6012046))

(assert (=> d!1604013 m!6012046))

(declare-fun m!6012048 () Bool)

(assert (=> d!1604013 m!6012048))

(assert (=> b!4980233 d!1604013))

(declare-fun d!1604015 () Bool)

(assert (=> d!1604015 (= (seqFromList!6073 (_1!34551 lt!2057493)) (fromListB!2742 (_1!34551 lt!2057493)))))

(declare-fun bs!1184243 () Bool)

(assert (= bs!1184243 d!1604015))

(declare-fun m!6012050 () Bool)

(assert (=> bs!1184243 m!6012050))

(assert (=> b!4980233 d!1604015))

(assert (=> b!4980233 d!1603891))

(assert (=> b!4980233 d!1603713))

(assert (=> b!4980233 d!1603727))

(assert (=> b!4980233 d!1603715))

(declare-fun d!1604017 () Bool)

(assert (=> d!1604017 (= (apply!13939 (transformation!8452 rule!200) (seqFromList!6073 (_1!34551 lt!2057493))) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 (_1!34551 lt!2057493))))))

(declare-fun b_lambda!197787 () Bool)

(assert (=> (not b_lambda!197787) (not d!1604017)))

(assert (=> d!1604017 t!369789))

(declare-fun b_and!349599 () Bool)

(assert (= b_and!349597 (and (=> t!369789 result!326880) b_and!349599)))

(assert (=> d!1604017 m!6011158))

(assert (=> d!1604017 m!6012044))

(assert (=> b!4980233 d!1604017))

(assert (=> b!4980233 d!1603723))

(declare-fun d!1604019 () Bool)

(declare-fun lt!2057782 () Int)

(assert (=> d!1604019 (= lt!2057782 (size!38199 (list!18452 (seqFromList!6073 (_1!34551 lt!2057493)))))))

(assert (=> d!1604019 (= lt!2057782 (size!38201 (c!849710 (seqFromList!6073 (_1!34551 lt!2057493)))))))

(assert (=> d!1604019 (= (size!38198 (seqFromList!6073 (_1!34551 lt!2057493))) lt!2057782)))

(declare-fun bs!1184244 () Bool)

(assert (= bs!1184244 d!1604019))

(assert (=> bs!1184244 m!6011158))

(assert (=> bs!1184244 m!6012040))

(assert (=> bs!1184244 m!6012040))

(declare-fun m!6012052 () Bool)

(assert (=> bs!1184244 m!6012052))

(declare-fun m!6012054 () Bool)

(assert (=> bs!1184244 m!6012054))

(assert (=> b!4980233 d!1604019))

(declare-fun b!4981068 () Bool)

(declare-fun e!3113232 () Bool)

(declare-fun inv!17 (TokenValue!8762) Bool)

(assert (=> b!4981068 (= e!3113232 (inv!17 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(declare-fun b!4981069 () Bool)

(declare-fun e!3113231 () Bool)

(declare-fun inv!15 (TokenValue!8762) Bool)

(assert (=> b!4981069 (= e!3113231 (inv!15 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(declare-fun b!4981070 () Bool)

(declare-fun res!2126335 () Bool)

(assert (=> b!4981070 (=> res!2126335 e!3113231)))

(assert (=> b!4981070 (= res!2126335 (not ((_ is IntegerValue!26288) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))))

(assert (=> b!4981070 (= e!3113232 e!3113231)))

(declare-fun b!4981071 () Bool)

(declare-fun e!3113233 () Bool)

(assert (=> b!4981071 (= e!3113233 e!3113232)))

(declare-fun c!849944 () Bool)

(assert (=> b!4981071 (= c!849944 ((_ is IntegerValue!26287) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(declare-fun b!4981072 () Bool)

(declare-fun inv!16 (TokenValue!8762) Bool)

(assert (=> b!4981072 (= e!3113233 (inv!16 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(declare-fun d!1604021 () Bool)

(declare-fun c!849943 () Bool)

(assert (=> d!1604021 (= c!849943 ((_ is IntegerValue!26286) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))

(assert (=> d!1604021 (= (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))) e!3113233)))

(assert (= (and d!1604021 c!849943) b!4981072))

(assert (= (and d!1604021 (not c!849943)) b!4981071))

(assert (= (and b!4981071 c!849944) b!4981068))

(assert (= (and b!4981071 (not c!849944)) b!4981070))

(assert (= (and b!4981070 (not res!2126335)) b!4981069))

(declare-fun m!6012056 () Bool)

(assert (=> b!4981068 m!6012056))

(declare-fun m!6012058 () Bool)

(assert (=> b!4981069 m!6012058))

(declare-fun m!6012060 () Bool)

(assert (=> b!4981072 m!6012060))

(assert (=> tb!261569 d!1604021))

(declare-fun d!1604023 () Bool)

(assert (=> d!1604023 (= (isEmpty!31081 (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340)) (not ((_ is Some!14522) (maxPrefixOneRule!3668 thiss!16165 rule!200 lt!2057340))))))

(assert (=> d!1603645 d!1604023))

(assert (=> bm!347363 d!1604009))

(declare-fun d!1604025 () Bool)

(assert (=> d!1604025 true))

(assert (=> d!1604025 true))

(declare-fun res!2126338 () Bool)

(assert (=> d!1604025 (= (choose!36774 lambda!247802) res!2126338)))

(assert (=> d!1603731 d!1604025))

(declare-fun d!1604027 () Bool)

(assert (=> d!1604027 (= (list!18452 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))) (list!18454 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))))

(declare-fun bs!1184245 () Bool)

(assert (= bs!1184245 d!1604027))

(declare-fun m!6012062 () Bool)

(assert (=> bs!1184245 m!6012062))

(assert (=> bs!1184196 d!1604027))

(assert (=> bs!1184196 d!1603653))

(declare-fun d!1604029 () Bool)

(assert (=> d!1604029 (= (inv!75403 (xs!18530 (c!849710 input!1580))) (<= (size!38199 (innerList!15292 (xs!18530 (c!849710 input!1580)))) 2147483647))))

(declare-fun bs!1184246 () Bool)

(assert (= bs!1184246 d!1604029))

(declare-fun m!6012064 () Bool)

(assert (=> bs!1184246 m!6012064))

(assert (=> b!4980441 d!1604029))

(assert (=> bm!347372 d!1603711))

(declare-fun bm!347440 () Bool)

(declare-fun call!347450 () C!27620)

(assert (=> bm!347440 (= call!347450 (head!10686 call!347367))))

(declare-fun bm!347441 () Bool)

(declare-fun call!347452 () Bool)

(assert (=> bm!347441 (= call!347452 (nullable!4637 call!347370))))

(declare-fun b!4981073 () Bool)

(declare-fun c!849948 () Bool)

(assert (=> b!4981073 (= c!849948 call!347452)))

(declare-fun lt!2057792 () Unit!148622)

(declare-fun lt!2057808 () Unit!148622)

(assert (=> b!4981073 (= lt!2057792 lt!2057808)))

(declare-fun lt!2057799 () List!57700)

(declare-fun lt!2057798 () C!27620)

(assert (=> b!4981073 (= (++!12549 (++!12549 lt!2057578 (Cons!57576 lt!2057798 Nil!57576)) lt!2057799) lt!2057340)))

(assert (=> b!4981073 (= lt!2057808 (lemmaMoveElementToOtherListKeepsConcatEq!1460 lt!2057578 lt!2057798 lt!2057799 lt!2057340))))

(assert (=> b!4981073 (= lt!2057799 (tail!9819 call!347367))))

(assert (=> b!4981073 (= lt!2057798 (head!10686 call!347367))))

(declare-fun lt!2057807 () Unit!148622)

(declare-fun lt!2057796 () Unit!148622)

(assert (=> b!4981073 (= lt!2057807 lt!2057796)))

(assert (=> b!4981073 (isPrefix!5263 (++!12549 lt!2057578 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 lt!2057578)) Nil!57576)) lt!2057340)))

(assert (=> b!4981073 (= lt!2057796 (lemmaAddHeadSuffixToPrefixStillPrefix!850 lt!2057578 lt!2057340))))

(declare-fun lt!2057797 () Unit!148622)

(declare-fun lt!2057786 () Unit!148622)

(assert (=> b!4981073 (= lt!2057797 lt!2057786)))

(assert (=> b!4981073 (= lt!2057786 (lemmaAddHeadSuffixToPrefixStillPrefix!850 lt!2057578 lt!2057340))))

(declare-fun lt!2057803 () List!57700)

(assert (=> b!4981073 (= lt!2057803 (++!12549 lt!2057578 (Cons!57576 (head!10686 call!347367) Nil!57576)))))

(declare-fun lt!2057802 () Unit!148622)

(declare-fun e!3113238 () Unit!148622)

(assert (=> b!4981073 (= lt!2057802 e!3113238)))

(declare-fun c!849947 () Bool)

(assert (=> b!4981073 (= c!849947 (= (size!38199 lt!2057578) (size!38199 lt!2057340)))))

(declare-fun lt!2057804 () Unit!148622)

(declare-fun lt!2057790 () Unit!148622)

(assert (=> b!4981073 (= lt!2057804 lt!2057790)))

(assert (=> b!4981073 (<= (size!38199 lt!2057578) (size!38199 lt!2057340))))

(assert (=> b!4981073 (= lt!2057790 (lemmaIsPrefixThenSmallerEqSize!776 lt!2057578 lt!2057340))))

(declare-fun e!3113237 () tuple2!62496)

(declare-fun e!3113240 () tuple2!62496)

(assert (=> b!4981073 (= e!3113237 e!3113240)))

(declare-fun call!347449 () tuple2!62496)

(declare-fun call!347448 () Regex!13685)

(declare-fun bm!347442 () Bool)

(declare-fun call!347445 () List!57700)

(assert (=> bm!347442 (= call!347449 (findLongestMatchInner!1896 call!347448 lt!2057803 (+ (size!38199 Nil!57576) 1 1) call!347445 lt!2057340 (size!38199 lt!2057340)))))

(declare-fun bm!347443 () Bool)

(declare-fun call!347451 () Unit!148622)

(assert (=> bm!347443 (= call!347451 (lemmaIsPrefixSameLengthThenSameList!1223 lt!2057340 lt!2057578 lt!2057340))))

(declare-fun bm!347444 () Bool)

(declare-fun call!347447 () Unit!148622)

(assert (=> bm!347444 (= call!347447 (lemmaIsPrefixRefl!3587 lt!2057340 lt!2057340))))

(declare-fun b!4981074 () Bool)

(declare-fun e!3113234 () Bool)

(declare-fun e!3113236 () Bool)

(assert (=> b!4981074 (= e!3113234 e!3113236)))

(declare-fun res!2126340 () Bool)

(assert (=> b!4981074 (=> res!2126340 e!3113236)))

(declare-fun lt!2057795 () tuple2!62496)

(assert (=> b!4981074 (= res!2126340 (isEmpty!31075 (_1!34551 lt!2057795)))))

(declare-fun b!4981075 () Bool)

(declare-fun e!3113241 () tuple2!62496)

(declare-fun lt!2057809 () tuple2!62496)

(assert (=> b!4981075 (= e!3113241 lt!2057809)))

(declare-fun bm!347445 () Bool)

(assert (=> bm!347445 (= call!347445 (tail!9819 call!347367))))

(declare-fun b!4981076 () Bool)

(declare-fun Unit!148635 () Unit!148622)

(assert (=> b!4981076 (= e!3113238 Unit!148635)))

(declare-fun b!4981077 () Bool)

(declare-fun e!3113239 () tuple2!62496)

(assert (=> b!4981077 (= e!3113239 (tuple2!62497 lt!2057578 Nil!57576))))

(declare-fun b!4981078 () Bool)

(declare-fun c!849945 () Bool)

(assert (=> b!4981078 (= c!849945 call!347452)))

(declare-fun lt!2057791 () Unit!148622)

(declare-fun lt!2057785 () Unit!148622)

(assert (=> b!4981078 (= lt!2057791 lt!2057785)))

(assert (=> b!4981078 (= lt!2057340 lt!2057578)))

(assert (=> b!4981078 (= lt!2057785 call!347451)))

(declare-fun lt!2057806 () Unit!148622)

(declare-fun lt!2057788 () Unit!148622)

(assert (=> b!4981078 (= lt!2057806 lt!2057788)))

(declare-fun call!347446 () Bool)

(assert (=> b!4981078 call!347446))

(assert (=> b!4981078 (= lt!2057788 call!347447)))

(assert (=> b!4981078 (= e!3113237 e!3113239)))

(declare-fun b!4981079 () Bool)

(declare-fun e!3113235 () tuple2!62496)

(assert (=> b!4981079 (= e!3113235 (tuple2!62497 Nil!57576 lt!2057340))))

(declare-fun bm!347446 () Bool)

(assert (=> bm!347446 (= call!347448 (derivativeStep!3937 call!347370 call!347450))))

(declare-fun b!4981080 () Bool)

(assert (=> b!4981080 (= e!3113240 call!347449)))

(declare-fun b!4981081 () Bool)

(declare-fun Unit!148636 () Unit!148622)

(assert (=> b!4981081 (= e!3113238 Unit!148636)))

(declare-fun lt!2057801 () Unit!148622)

(assert (=> b!4981081 (= lt!2057801 call!347447)))

(assert (=> b!4981081 call!347446))

(declare-fun lt!2057805 () Unit!148622)

(assert (=> b!4981081 (= lt!2057805 lt!2057801)))

(declare-fun lt!2057810 () Unit!148622)

(assert (=> b!4981081 (= lt!2057810 call!347451)))

(assert (=> b!4981081 (= lt!2057340 lt!2057578)))

(declare-fun lt!2057787 () Unit!148622)

(assert (=> b!4981081 (= lt!2057787 lt!2057810)))

(assert (=> b!4981081 false))

(declare-fun bm!347447 () Bool)

(assert (=> bm!347447 (= call!347446 (isPrefix!5263 lt!2057340 lt!2057340))))

(declare-fun b!4981082 () Bool)

(assert (=> b!4981082 (= e!3113239 (tuple2!62497 Nil!57576 lt!2057340))))

(declare-fun b!4981083 () Bool)

(assert (=> b!4981083 (= e!3113240 e!3113241)))

(assert (=> b!4981083 (= lt!2057809 call!347449)))

(declare-fun c!849946 () Bool)

(assert (=> b!4981083 (= c!849946 (isEmpty!31075 (_1!34551 lt!2057809)))))

(declare-fun d!1604031 () Bool)

(assert (=> d!1604031 e!3113234))

(declare-fun res!2126339 () Bool)

(assert (=> d!1604031 (=> (not res!2126339) (not e!3113234))))

(assert (=> d!1604031 (= res!2126339 (= (++!12549 (_1!34551 lt!2057795) (_2!34551 lt!2057795)) lt!2057340))))

(assert (=> d!1604031 (= lt!2057795 e!3113235)))

(declare-fun c!849949 () Bool)

(assert (=> d!1604031 (= c!849949 (lostCause!1147 call!347370))))

(declare-fun lt!2057784 () Unit!148622)

(declare-fun Unit!148637 () Unit!148622)

(assert (=> d!1604031 (= lt!2057784 Unit!148637)))

(assert (=> d!1604031 (= (getSuffix!3103 lt!2057340 lt!2057578) call!347367)))

(declare-fun lt!2057800 () Unit!148622)

(declare-fun lt!2057783 () Unit!148622)

(assert (=> d!1604031 (= lt!2057800 lt!2057783)))

(declare-fun lt!2057794 () List!57700)

(assert (=> d!1604031 (= call!347367 lt!2057794)))

(assert (=> d!1604031 (= lt!2057783 (lemmaSamePrefixThenSameSuffix!2515 lt!2057578 call!347367 lt!2057578 lt!2057794 lt!2057340))))

(assert (=> d!1604031 (= lt!2057794 (getSuffix!3103 lt!2057340 lt!2057578))))

(declare-fun lt!2057793 () Unit!148622)

(declare-fun lt!2057789 () Unit!148622)

(assert (=> d!1604031 (= lt!2057793 lt!2057789)))

(assert (=> d!1604031 (isPrefix!5263 lt!2057578 (++!12549 lt!2057578 call!347367))))

(assert (=> d!1604031 (= lt!2057789 (lemmaConcatTwoListThenFirstIsPrefix!3361 lt!2057578 call!347367))))

(assert (=> d!1604031 (validRegex!5986 call!347370)))

(assert (=> d!1604031 (= (findLongestMatchInner!1896 call!347370 lt!2057578 (+ (size!38199 Nil!57576) 1) call!347367 lt!2057340 (size!38199 lt!2057340)) lt!2057795)))

(declare-fun b!4981084 () Bool)

(assert (=> b!4981084 (= e!3113236 (>= (size!38199 (_1!34551 lt!2057795)) (size!38199 lt!2057578)))))

(declare-fun b!4981085 () Bool)

(assert (=> b!4981085 (= e!3113241 (tuple2!62497 lt!2057578 call!347367))))

(declare-fun b!4981086 () Bool)

(assert (=> b!4981086 (= e!3113235 e!3113237)))

(declare-fun c!849950 () Bool)

(assert (=> b!4981086 (= c!849950 (= (+ (size!38199 Nil!57576) 1) (size!38199 lt!2057340)))))

(assert (= (and d!1604031 c!849949) b!4981079))

(assert (= (and d!1604031 (not c!849949)) b!4981086))

(assert (= (and b!4981086 c!849950) b!4981078))

(assert (= (and b!4981086 (not c!849950)) b!4981073))

(assert (= (and b!4981078 c!849945) b!4981077))

(assert (= (and b!4981078 (not c!849945)) b!4981082))

(assert (= (and b!4981073 c!849947) b!4981081))

(assert (= (and b!4981073 (not c!849947)) b!4981076))

(assert (= (and b!4981073 c!849948) b!4981083))

(assert (= (and b!4981073 (not c!849948)) b!4981080))

(assert (= (and b!4981083 c!849946) b!4981085))

(assert (= (and b!4981083 (not c!849946)) b!4981075))

(assert (= (or b!4981083 b!4981080) bm!347440))

(assert (= (or b!4981083 b!4981080) bm!347445))

(assert (= (or b!4981083 b!4981080) bm!347446))

(assert (= (or b!4981083 b!4981080) bm!347442))

(assert (= (or b!4981078 b!4981081) bm!347447))

(assert (= (or b!4981078 b!4981081) bm!347443))

(assert (= (or b!4981078 b!4981081) bm!347444))

(assert (= (or b!4981078 b!4981073) bm!347441))

(assert (= (and d!1604031 res!2126339) b!4981074))

(assert (= (and b!4981074 (not res!2126340)) b!4981084))

(assert (=> bm!347442 m!6010906))

(declare-fun m!6012066 () Bool)

(assert (=> bm!347442 m!6012066))

(declare-fun m!6012068 () Bool)

(assert (=> bm!347446 m!6012068))

(assert (=> bm!347444 m!6011246))

(declare-fun m!6012070 () Bool)

(assert (=> b!4981074 m!6012070))

(declare-fun m!6012072 () Bool)

(assert (=> bm!347440 m!6012072))

(assert (=> b!4981073 m!6010906))

(declare-fun m!6012074 () Bool)

(assert (=> b!4981073 m!6012074))

(declare-fun m!6012076 () Bool)

(assert (=> b!4981073 m!6012076))

(declare-fun m!6012078 () Bool)

(assert (=> b!4981073 m!6012078))

(declare-fun m!6012080 () Bool)

(assert (=> b!4981073 m!6012080))

(declare-fun m!6012082 () Bool)

(assert (=> b!4981073 m!6012082))

(assert (=> b!4981073 m!6012072))

(declare-fun m!6012084 () Bool)

(assert (=> b!4981073 m!6012084))

(declare-fun m!6012086 () Bool)

(assert (=> b!4981073 m!6012086))

(declare-fun m!6012088 () Bool)

(assert (=> b!4981073 m!6012088))

(assert (=> b!4981073 m!6012086))

(declare-fun m!6012090 () Bool)

(assert (=> b!4981073 m!6012090))

(declare-fun m!6012092 () Bool)

(assert (=> b!4981073 m!6012092))

(assert (=> b!4981073 m!6012078))

(declare-fun m!6012094 () Bool)

(assert (=> b!4981073 m!6012094))

(assert (=> b!4981073 m!6012074))

(declare-fun m!6012096 () Bool)

(assert (=> b!4981073 m!6012096))

(declare-fun m!6012098 () Bool)

(assert (=> d!1604031 m!6012098))

(declare-fun m!6012100 () Bool)

(assert (=> d!1604031 m!6012100))

(declare-fun m!6012102 () Bool)

(assert (=> d!1604031 m!6012102))

(declare-fun m!6012104 () Bool)

(assert (=> d!1604031 m!6012104))

(assert (=> d!1604031 m!6012102))

(declare-fun m!6012106 () Bool)

(assert (=> d!1604031 m!6012106))

(declare-fun m!6012108 () Bool)

(assert (=> d!1604031 m!6012108))

(declare-fun m!6012110 () Bool)

(assert (=> d!1604031 m!6012110))

(assert (=> d!1604031 m!6012086))

(declare-fun m!6012112 () Bool)

(assert (=> b!4981083 m!6012112))

(assert (=> bm!347445 m!6012082))

(declare-fun m!6012114 () Bool)

(assert (=> bm!347441 m!6012114))

(assert (=> bm!347447 m!6011288))

(declare-fun m!6012116 () Bool)

(assert (=> b!4981084 m!6012116))

(assert (=> b!4981084 m!6012076))

(declare-fun m!6012118 () Bool)

(assert (=> bm!347443 m!6012118))

(assert (=> bm!347364 d!1604031))

(declare-fun b!4981087 () Bool)

(declare-fun res!2126343 () Bool)

(declare-fun e!3113243 () Bool)

(assert (=> b!4981087 (=> (not res!2126343) (not e!3113243))))

(assert (=> b!4981087 (= res!2126343 (isBalanced!4222 (right!42410 (c!849710 totalInput!520))))))

(declare-fun d!1604033 () Bool)

(declare-fun res!2126346 () Bool)

(declare-fun e!3113242 () Bool)

(assert (=> d!1604033 (=> res!2126346 e!3113242)))

(assert (=> d!1604033 (= res!2126346 (not ((_ is Node!15204) (c!849710 totalInput!520))))))

(assert (=> d!1604033 (= (isBalanced!4222 (c!849710 totalInput!520)) e!3113242)))

(declare-fun b!4981088 () Bool)

(assert (=> b!4981088 (= e!3113242 e!3113243)))

(declare-fun res!2126342 () Bool)

(assert (=> b!4981088 (=> (not res!2126342) (not e!3113243))))

(assert (=> b!4981088 (= res!2126342 (<= (- 1) (- (height!2024 (left!42080 (c!849710 totalInput!520))) (height!2024 (right!42410 (c!849710 totalInput!520))))))))

(declare-fun b!4981089 () Bool)

(declare-fun res!2126345 () Bool)

(assert (=> b!4981089 (=> (not res!2126345) (not e!3113243))))

(assert (=> b!4981089 (= res!2126345 (<= (- (height!2024 (left!42080 (c!849710 totalInput!520))) (height!2024 (right!42410 (c!849710 totalInput!520)))) 1))))

(declare-fun b!4981090 () Bool)

(declare-fun res!2126341 () Bool)

(assert (=> b!4981090 (=> (not res!2126341) (not e!3113243))))

(assert (=> b!4981090 (= res!2126341 (not (isEmpty!31080 (left!42080 (c!849710 totalInput!520)))))))

(declare-fun b!4981091 () Bool)

(assert (=> b!4981091 (= e!3113243 (not (isEmpty!31080 (right!42410 (c!849710 totalInput!520)))))))

(declare-fun b!4981092 () Bool)

(declare-fun res!2126344 () Bool)

(assert (=> b!4981092 (=> (not res!2126344) (not e!3113243))))

(assert (=> b!4981092 (= res!2126344 (isBalanced!4222 (left!42080 (c!849710 totalInput!520))))))

(assert (= (and d!1604033 (not res!2126346)) b!4981088))

(assert (= (and b!4981088 res!2126342) b!4981089))

(assert (= (and b!4981089 res!2126345) b!4981092))

(assert (= (and b!4981092 res!2126344) b!4981087))

(assert (= (and b!4981087 res!2126343) b!4981090))

(assert (= (and b!4981090 res!2126341) b!4981091))

(declare-fun m!6012120 () Bool)

(assert (=> b!4981089 m!6012120))

(declare-fun m!6012122 () Bool)

(assert (=> b!4981089 m!6012122))

(declare-fun m!6012124 () Bool)

(assert (=> b!4981090 m!6012124))

(assert (=> b!4981088 m!6012120))

(assert (=> b!4981088 m!6012122))

(declare-fun m!6012126 () Bool)

(assert (=> b!4981092 m!6012126))

(declare-fun m!6012128 () Bool)

(assert (=> b!4981091 m!6012128))

(declare-fun m!6012130 () Bool)

(assert (=> b!4981087 m!6012130))

(assert (=> d!1603621 d!1604033))

(declare-fun b!4981093 () Bool)

(declare-fun e!3113245 () List!57700)

(assert (=> b!4981093 (= e!3113245 (_2!34552 (get!20014 lt!2057491)))))

(declare-fun b!4981096 () Bool)

(declare-fun e!3113244 () Bool)

(declare-fun lt!2057811 () List!57700)

(assert (=> b!4981096 (= e!3113244 (or (not (= (_2!34552 (get!20014 lt!2057491)) Nil!57576)) (= lt!2057811 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))))))))

(declare-fun b!4981094 () Bool)

(assert (=> b!4981094 (= e!3113245 (Cons!57576 (h!64024 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (++!12549 (t!369752 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (_2!34552 (get!20014 lt!2057491)))))))

(declare-fun d!1604035 () Bool)

(assert (=> d!1604035 e!3113244))

(declare-fun res!2126348 () Bool)

(assert (=> d!1604035 (=> (not res!2126348) (not e!3113244))))

(assert (=> d!1604035 (= res!2126348 (= (content!10201 lt!2057811) ((_ map or) (content!10201 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (content!10201 (_2!34552 (get!20014 lt!2057491))))))))

(assert (=> d!1604035 (= lt!2057811 e!3113245)))

(declare-fun c!849951 () Bool)

(assert (=> d!1604035 (= c!849951 ((_ is Nil!57576) (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))))))

(assert (=> d!1604035 (= (++!12549 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491)))) (_2!34552 (get!20014 lt!2057491))) lt!2057811)))

(declare-fun b!4981095 () Bool)

(declare-fun res!2126347 () Bool)

(assert (=> b!4981095 (=> (not res!2126347) (not e!3113244))))

(assert (=> b!4981095 (= res!2126347 (= (size!38199 lt!2057811) (+ (size!38199 (list!18452 (charsOf!5450 (_1!34552 (get!20014 lt!2057491))))) (size!38199 (_2!34552 (get!20014 lt!2057491))))))))

(assert (= (and d!1604035 c!849951) b!4981093))

(assert (= (and d!1604035 (not c!849951)) b!4981094))

(assert (= (and d!1604035 res!2126348) b!4981095))

(assert (= (and b!4981095 res!2126347) b!4981096))

(declare-fun m!6012132 () Bool)

(assert (=> b!4981094 m!6012132))

(declare-fun m!6012134 () Bool)

(assert (=> d!1604035 m!6012134))

(assert (=> d!1604035 m!6011142))

(declare-fun m!6012136 () Bool)

(assert (=> d!1604035 m!6012136))

(declare-fun m!6012138 () Bool)

(assert (=> d!1604035 m!6012138))

(declare-fun m!6012140 () Bool)

(assert (=> b!4981095 m!6012140))

(assert (=> b!4981095 m!6011142))

(declare-fun m!6012142 () Bool)

(assert (=> b!4981095 m!6012142))

(assert (=> b!4981095 m!6011148))

(assert (=> b!4980235 d!1604035))

(assert (=> b!4980235 d!1603869))

(assert (=> b!4980235 d!1603871))

(assert (=> b!4980235 d!1603885))

(assert (=> b!4980135 d!1604009))

(declare-fun d!1604037 () Bool)

(declare-fun e!3113248 () Bool)

(assert (=> d!1604037 e!3113248))

(declare-fun res!2126351 () Bool)

(assert (=> d!1604037 (=> (not res!2126351) (not e!3113248))))

(declare-fun lt!2057814 () BalanceConc!29838)

(assert (=> d!1604037 (= res!2126351 (= (list!18452 lt!2057814) lt!2057334))))

(declare-fun fromList!950 (List!57700) Conc!15204)

(assert (=> d!1604037 (= lt!2057814 (BalanceConc!29839 (fromList!950 lt!2057334)))))

(assert (=> d!1604037 (= (fromListB!2742 lt!2057334) lt!2057814)))

(declare-fun b!4981099 () Bool)

(assert (=> b!4981099 (= e!3113248 (isBalanced!4222 (fromList!950 lt!2057334)))))

(assert (= (and d!1604037 res!2126351) b!4981099))

(declare-fun m!6012144 () Bool)

(assert (=> d!1604037 m!6012144))

(declare-fun m!6012146 () Bool)

(assert (=> d!1604037 m!6012146))

(assert (=> b!4981099 m!6012146))

(assert (=> b!4981099 m!6012146))

(declare-fun m!6012148 () Bool)

(assert (=> b!4981099 m!6012148))

(assert (=> d!1603651 d!1604037))

(declare-fun d!1604039 () Bool)

(declare-fun e!3113249 () Bool)

(assert (=> d!1604039 e!3113249))

(declare-fun res!2126355 () Bool)

(assert (=> d!1604039 (=> res!2126355 e!3113249)))

(declare-fun lt!2057815 () Bool)

(assert (=> d!1604039 (= res!2126355 (not lt!2057815))))

(declare-fun e!3113251 () Bool)

(assert (=> d!1604039 (= lt!2057815 e!3113251)))

(declare-fun res!2126354 () Bool)

(assert (=> d!1604039 (=> res!2126354 e!3113251)))

(assert (=> d!1604039 (= res!2126354 ((_ is Nil!57576) lt!2057340))))

(assert (=> d!1604039 (= (isPrefix!5263 lt!2057340 lt!2057340) lt!2057815)))

(declare-fun b!4981103 () Bool)

(assert (=> b!4981103 (= e!3113249 (>= (size!38199 lt!2057340) (size!38199 lt!2057340)))))

(declare-fun b!4981102 () Bool)

(declare-fun e!3113250 () Bool)

(assert (=> b!4981102 (= e!3113250 (isPrefix!5263 (tail!9819 lt!2057340) (tail!9819 lt!2057340)))))

(declare-fun b!4981101 () Bool)

(declare-fun res!2126352 () Bool)

(assert (=> b!4981101 (=> (not res!2126352) (not e!3113250))))

(assert (=> b!4981101 (= res!2126352 (= (head!10686 lt!2057340) (head!10686 lt!2057340)))))

(declare-fun b!4981100 () Bool)

(assert (=> b!4981100 (= e!3113251 e!3113250)))

(declare-fun res!2126353 () Bool)

(assert (=> b!4981100 (=> (not res!2126353) (not e!3113250))))

(assert (=> b!4981100 (= res!2126353 (not ((_ is Nil!57576) lt!2057340)))))

(assert (= (and d!1604039 (not res!2126354)) b!4981100))

(assert (= (and b!4981100 res!2126353) b!4981101))

(assert (= (and b!4981101 res!2126352) b!4981102))

(assert (= (and d!1604039 (not res!2126355)) b!4981103))

(assert (=> b!4981103 m!6010906))

(assert (=> b!4981103 m!6010906))

(assert (=> b!4981102 m!6011258))

(assert (=> b!4981102 m!6011258))

(assert (=> b!4981102 m!6011258))

(assert (=> b!4981102 m!6011258))

(declare-fun m!6012150 () Bool)

(assert (=> b!4981102 m!6012150))

(assert (=> b!4981101 m!6011250))

(assert (=> b!4981101 m!6011250))

(assert (=> bm!347369 d!1604039))

(declare-fun d!1604041 () Bool)

(declare-fun res!2126362 () Bool)

(declare-fun e!3113254 () Bool)

(assert (=> d!1604041 (=> (not res!2126362) (not e!3113254))))

(assert (=> d!1604041 (= res!2126362 (= (csize!30638 (c!849710 totalInput!520)) (+ (size!38201 (left!42080 (c!849710 totalInput!520))) (size!38201 (right!42410 (c!849710 totalInput!520))))))))

(assert (=> d!1604041 (= (inv!75401 (c!849710 totalInput!520)) e!3113254)))

(declare-fun b!4981110 () Bool)

(declare-fun res!2126363 () Bool)

(assert (=> b!4981110 (=> (not res!2126363) (not e!3113254))))

(assert (=> b!4981110 (= res!2126363 (and (not (= (left!42080 (c!849710 totalInput!520)) Empty!15204)) (not (= (right!42410 (c!849710 totalInput!520)) Empty!15204))))))

(declare-fun b!4981111 () Bool)

(declare-fun res!2126364 () Bool)

(assert (=> b!4981111 (=> (not res!2126364) (not e!3113254))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4981111 (= res!2126364 (= (cheight!15415 (c!849710 totalInput!520)) (+ (max!0 (height!2024 (left!42080 (c!849710 totalInput!520))) (height!2024 (right!42410 (c!849710 totalInput!520)))) 1)))))

(declare-fun b!4981112 () Bool)

(assert (=> b!4981112 (= e!3113254 (<= 0 (cheight!15415 (c!849710 totalInput!520))))))

(assert (= (and d!1604041 res!2126362) b!4981110))

(assert (= (and b!4981110 res!2126363) b!4981111))

(assert (= (and b!4981111 res!2126364) b!4981112))

(declare-fun m!6012152 () Bool)

(assert (=> d!1604041 m!6012152))

(declare-fun m!6012154 () Bool)

(assert (=> d!1604041 m!6012154))

(assert (=> b!4981111 m!6012120))

(assert (=> b!4981111 m!6012122))

(assert (=> b!4981111 m!6012120))

(assert (=> b!4981111 m!6012122))

(declare-fun m!6012156 () Bool)

(assert (=> b!4981111 m!6012156))

(assert (=> b!4980091 d!1604041))

(declare-fun d!1604043 () Bool)

(declare-fun res!2126369 () Bool)

(declare-fun e!3113257 () Bool)

(assert (=> d!1604043 (=> (not res!2126369) (not e!3113257))))

(assert (=> d!1604043 (= res!2126369 (<= (size!38199 (list!18456 (xs!18530 (c!849710 totalInput!520)))) 512))))

(assert (=> d!1604043 (= (inv!75402 (c!849710 totalInput!520)) e!3113257)))

(declare-fun b!4981117 () Bool)

(declare-fun res!2126370 () Bool)

(assert (=> b!4981117 (=> (not res!2126370) (not e!3113257))))

(assert (=> b!4981117 (= res!2126370 (= (csize!30639 (c!849710 totalInput!520)) (size!38199 (list!18456 (xs!18530 (c!849710 totalInput!520))))))))

(declare-fun b!4981118 () Bool)

(assert (=> b!4981118 (= e!3113257 (and (> (csize!30639 (c!849710 totalInput!520)) 0) (<= (csize!30639 (c!849710 totalInput!520)) 512)))))

(assert (= (and d!1604043 res!2126369) b!4981117))

(assert (= (and b!4981117 res!2126370) b!4981118))

(assert (=> d!1604043 m!6011990))

(assert (=> d!1604043 m!6011990))

(declare-fun m!6012158 () Bool)

(assert (=> d!1604043 m!6012158))

(assert (=> b!4981117 m!6011990))

(assert (=> b!4981117 m!6011990))

(assert (=> b!4981117 m!6012158))

(assert (=> b!4980093 d!1604043))

(assert (=> b!4980229 d!1603885))

(declare-fun d!1604045 () Bool)

(assert (=> d!1604045 (= (apply!13939 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491)))) (seqFromList!6073 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491))))) (dynLambda!23339 (toValue!11435 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491))))) (seqFromList!6073 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491))))))))

(declare-fun b_lambda!197789 () Bool)

(assert (=> (not b_lambda!197789) (not d!1604045)))

(declare-fun t!369791 () Bool)

(declare-fun tb!261597 () Bool)

(assert (=> (and b!4980070 (= (toValue!11435 (transformation!8452 rule!200)) (toValue!11435 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491)))))) t!369791) tb!261597))

(declare-fun result!326882 () Bool)

(assert (=> tb!261597 (= result!326882 (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 (rule!11702 (_1!34552 (get!20014 lt!2057491))))) (seqFromList!6073 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))))))))

(declare-fun m!6012160 () Bool)

(assert (=> tb!261597 m!6012160))

(assert (=> d!1604045 t!369791))

(declare-fun b_and!349601 () Bool)

(assert (= b_and!349599 (and (=> t!369791 result!326882) b_and!349601)))

(assert (=> d!1604045 m!6011152))

(declare-fun m!6012162 () Bool)

(assert (=> d!1604045 m!6012162))

(assert (=> b!4980229 d!1604045))

(declare-fun d!1604047 () Bool)

(assert (=> d!1604047 (= (seqFromList!6073 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))) (fromListB!2742 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))))))

(declare-fun bs!1184247 () Bool)

(assert (= bs!1184247 d!1604047))

(declare-fun m!6012164 () Bool)

(assert (=> bs!1184247 m!6012164))

(assert (=> b!4980229 d!1604047))

(declare-fun d!1604049 () Bool)

(assert (=> d!1604049 (= (isEmpty!31075 (_1!34551 lt!2057584)) ((_ is Nil!57576) (_1!34551 lt!2057584)))))

(assert (=> b!4980371 d!1604049))

(declare-fun d!1604051 () Bool)

(assert (=> d!1604051 (dynLambda!23338 lambda!247802 (seqFromList!6073 lt!2057334))))

(assert (=> d!1604051 true))

(declare-fun _$1!11265 () Unit!148622)

(assert (=> d!1604051 (= (choose!36772 lambda!247802 (seqFromList!6073 lt!2057334)) _$1!11265)))

(declare-fun b_lambda!197791 () Bool)

(assert (=> (not b_lambda!197791) (not d!1604051)))

(declare-fun bs!1184248 () Bool)

(assert (= bs!1184248 d!1604051))

(assert (=> bs!1184248 m!6010882))

(assert (=> bs!1184248 m!6011186))

(assert (=> d!1603707 d!1604051))

(assert (=> d!1603707 d!1603731))

(declare-fun b!4981137 () Bool)

(declare-fun e!3113271 () List!57700)

(assert (=> b!4981137 (= e!3113271 (drop!2368 (t!369752 (list!18452 totalInput!520)) (- (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)) 1)))))

(declare-fun call!347455 () Int)

(declare-fun b!4981138 () Bool)

(declare-fun e!3113273 () Int)

(assert (=> b!4981138 (= e!3113273 (- call!347455 (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340))))))

(declare-fun b!4981139 () Bool)

(declare-fun e!3113272 () List!57700)

(assert (=> b!4981139 (= e!3113272 Nil!57576)))

(declare-fun d!1604053 () Bool)

(declare-fun e!3113269 () Bool)

(assert (=> d!1604053 e!3113269))

(declare-fun res!2126373 () Bool)

(assert (=> d!1604053 (=> (not res!2126373) (not e!3113269))))

(declare-fun lt!2057818 () List!57700)

(assert (=> d!1604053 (= res!2126373 (= ((_ map implies) (content!10201 lt!2057818) (content!10201 (list!18452 totalInput!520))) ((as const (InoxSet C!27620)) true)))))

(assert (=> d!1604053 (= lt!2057818 e!3113272)))

(declare-fun c!849964 () Bool)

(assert (=> d!1604053 (= c!849964 ((_ is Nil!57576) (list!18452 totalInput!520)))))

(assert (=> d!1604053 (= (drop!2368 (list!18452 totalInput!520) (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340))) lt!2057818)))

(declare-fun b!4981140 () Bool)

(declare-fun e!3113270 () Int)

(assert (=> b!4981140 (= e!3113270 call!347455)))

(declare-fun bm!347450 () Bool)

(assert (=> bm!347450 (= call!347455 (size!38199 (list!18452 totalInput!520)))))

(declare-fun b!4981141 () Bool)

(assert (=> b!4981141 (= e!3113273 0)))

(declare-fun b!4981142 () Bool)

(assert (=> b!4981142 (= e!3113270 e!3113273)))

(declare-fun c!849963 () Bool)

(assert (=> b!4981142 (= c!849963 (>= (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)) call!347455))))

(declare-fun b!4981143 () Bool)

(assert (=> b!4981143 (= e!3113271 (list!18452 totalInput!520))))

(declare-fun b!4981144 () Bool)

(assert (=> b!4981144 (= e!3113272 e!3113271)))

(declare-fun c!849962 () Bool)

(assert (=> b!4981144 (= c!849962 (<= (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)) 0))))

(declare-fun b!4981145 () Bool)

(assert (=> b!4981145 (= e!3113269 (= (size!38199 lt!2057818) e!3113270))))

(declare-fun c!849961 () Bool)

(assert (=> b!4981145 (= c!849961 (<= (- (size!38199 (list!18452 totalInput!520)) (size!38199 lt!2057340)) 0))))

(assert (= (and d!1604053 c!849964) b!4981139))

(assert (= (and d!1604053 (not c!849964)) b!4981144))

(assert (= (and b!4981144 c!849962) b!4981143))

(assert (= (and b!4981144 (not c!849962)) b!4981137))

(assert (= (and d!1604053 res!2126373) b!4981145))

(assert (= (and b!4981145 c!849961) b!4981140))

(assert (= (and b!4981145 (not c!849961)) b!4981142))

(assert (= (and b!4981142 c!849963) b!4981141))

(assert (= (and b!4981142 (not c!849963)) b!4981138))

(assert (= (or b!4981140 b!4981142 b!4981138) bm!347450))

(declare-fun m!6012166 () Bool)

(assert (=> b!4981137 m!6012166))

(declare-fun m!6012168 () Bool)

(assert (=> d!1604053 m!6012168))

(assert (=> d!1604053 m!6010922))

(declare-fun m!6012170 () Bool)

(assert (=> d!1604053 m!6012170))

(assert (=> bm!347450 m!6010922))

(assert (=> bm!347450 m!6010982))

(declare-fun m!6012172 () Bool)

(assert (=> b!4981145 m!6012172))

(assert (=> d!1603635 d!1604053))

(assert (=> d!1603635 d!1604011))

(assert (=> d!1603635 d!1603723))

(assert (=> b!4980066 d!1603619))

(declare-fun d!1604055 () Bool)

(assert (=> d!1604055 (= (inv!75403 (xs!18530 (c!849710 totalInput!520))) (<= (size!38199 (innerList!15292 (xs!18530 (c!849710 totalInput!520)))) 2147483647))))

(declare-fun bs!1184249 () Bool)

(assert (= bs!1184249 d!1604055))

(declare-fun m!6012174 () Bool)

(assert (=> bs!1184249 m!6012174))

(assert (=> b!4980438 d!1604055))

(declare-fun b!4981148 () Bool)

(declare-fun e!3113275 () List!57700)

(assert (=> b!4981148 (= e!3113275 (list!18456 (xs!18530 (c!849710 input!1580))))))

(declare-fun d!1604057 () Bool)

(declare-fun c!849965 () Bool)

(assert (=> d!1604057 (= c!849965 ((_ is Empty!15204) (c!849710 input!1580)))))

(declare-fun e!3113274 () List!57700)

(assert (=> d!1604057 (= (list!18454 (c!849710 input!1580)) e!3113274)))

(declare-fun b!4981149 () Bool)

(assert (=> b!4981149 (= e!3113275 (++!12549 (list!18454 (left!42080 (c!849710 input!1580))) (list!18454 (right!42410 (c!849710 input!1580)))))))

(declare-fun b!4981146 () Bool)

(assert (=> b!4981146 (= e!3113274 Nil!57576)))

(declare-fun b!4981147 () Bool)

(assert (=> b!4981147 (= e!3113274 e!3113275)))

(declare-fun c!849966 () Bool)

(assert (=> b!4981147 (= c!849966 ((_ is Leaf!25255) (c!849710 input!1580)))))

(assert (= (and d!1604057 c!849965) b!4981146))

(assert (= (and d!1604057 (not c!849965)) b!4981147))

(assert (= (and b!4981147 c!849966) b!4981148))

(assert (= (and b!4981147 (not c!849966)) b!4981149))

(declare-fun m!6012176 () Bool)

(assert (=> b!4981148 m!6012176))

(declare-fun m!6012178 () Bool)

(assert (=> b!4981149 m!6012178))

(declare-fun m!6012180 () Bool)

(assert (=> b!4981149 m!6012180))

(assert (=> b!4981149 m!6012178))

(assert (=> b!4981149 m!6012180))

(declare-fun m!6012182 () Bool)

(assert (=> b!4981149 m!6012182))

(assert (=> d!1603639 d!1604057))

(declare-fun d!1604059 () Bool)

(declare-fun c!849967 () Bool)

(assert (=> d!1604059 (= c!849967 ((_ is Node!15204) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))))

(declare-fun e!3113276 () Bool)

(assert (=> d!1604059 (= (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))) e!3113276)))

(declare-fun b!4981150 () Bool)

(assert (=> b!4981150 (= e!3113276 (inv!75401 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))))

(declare-fun b!4981151 () Bool)

(declare-fun e!3113277 () Bool)

(assert (=> b!4981151 (= e!3113276 e!3113277)))

(declare-fun res!2126374 () Bool)

(assert (=> b!4981151 (= res!2126374 (not ((_ is Leaf!25255) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))))))

(assert (=> b!4981151 (=> res!2126374 e!3113277)))

(declare-fun b!4981152 () Bool)

(assert (=> b!4981152 (= e!3113277 (inv!75402 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))))))

(assert (= (and d!1604059 c!849967) b!4981150))

(assert (= (and d!1604059 (not c!849967)) b!4981151))

(assert (= (and b!4981151 (not res!2126374)) b!4981152))

(declare-fun m!6012184 () Bool)

(assert (=> b!4981150 m!6012184))

(declare-fun m!6012186 () Bool)

(assert (=> b!4981152 m!6012186))

(assert (=> b!4980462 d!1604059))

(assert (=> b!4980383 d!1603845))

(assert (=> b!4980383 d!1603715))

(assert (=> b!4980383 d!1603713))

(assert (=> b!4980383 d!1603723))

(declare-fun d!1604061 () Bool)

(assert (=> d!1604061 (= lt!2057340 Nil!57576)))

(declare-fun lt!2057821 () Unit!148622)

(declare-fun choose!36785 (List!57700 List!57700 List!57700) Unit!148622)

(assert (=> d!1604061 (= lt!2057821 (choose!36785 lt!2057340 Nil!57576 lt!2057340))))

(assert (=> d!1604061 (isPrefix!5263 lt!2057340 lt!2057340)))

(assert (=> d!1604061 (= (lemmaIsPrefixSameLengthThenSameList!1223 lt!2057340 Nil!57576 lt!2057340) lt!2057821)))

(declare-fun bs!1184250 () Bool)

(assert (= bs!1184250 d!1604061))

(declare-fun m!6012188 () Bool)

(assert (=> bs!1184250 m!6012188))

(assert (=> bs!1184250 m!6011288))

(assert (=> bm!347365 d!1604061))

(declare-fun b!4981155 () Bool)

(declare-fun e!3113279 () List!57700)

(assert (=> b!4981155 (= e!3113279 (list!18456 (xs!18530 (c!849710 (_1!34553 lt!2057338)))))))

(declare-fun d!1604063 () Bool)

(declare-fun c!849968 () Bool)

(assert (=> d!1604063 (= c!849968 ((_ is Empty!15204) (c!849710 (_1!34553 lt!2057338))))))

(declare-fun e!3113278 () List!57700)

(assert (=> d!1604063 (= (list!18454 (c!849710 (_1!34553 lt!2057338))) e!3113278)))

(declare-fun b!4981156 () Bool)

(assert (=> b!4981156 (= e!3113279 (++!12549 (list!18454 (left!42080 (c!849710 (_1!34553 lt!2057338)))) (list!18454 (right!42410 (c!849710 (_1!34553 lt!2057338))))))))

(declare-fun b!4981153 () Bool)

(assert (=> b!4981153 (= e!3113278 Nil!57576)))

(declare-fun b!4981154 () Bool)

(assert (=> b!4981154 (= e!3113278 e!3113279)))

(declare-fun c!849969 () Bool)

(assert (=> b!4981154 (= c!849969 ((_ is Leaf!25255) (c!849710 (_1!34553 lt!2057338))))))

(assert (= (and d!1604063 c!849968) b!4981153))

(assert (= (and d!1604063 (not c!849968)) b!4981154))

(assert (= (and b!4981154 c!849969) b!4981155))

(assert (= (and b!4981154 (not c!849969)) b!4981156))

(declare-fun m!6012190 () Bool)

(assert (=> b!4981155 m!6012190))

(declare-fun m!6012192 () Bool)

(assert (=> b!4981156 m!6012192))

(declare-fun m!6012194 () Bool)

(assert (=> b!4981156 m!6012194))

(assert (=> b!4981156 m!6012192))

(assert (=> b!4981156 m!6012194))

(declare-fun m!6012196 () Bool)

(assert (=> b!4981156 m!6012196))

(assert (=> d!1603653 d!1604063))

(declare-fun b!4981157 () Bool)

(declare-fun e!3113281 () Bool)

(assert (=> b!4981157 (= e!3113281 (inv!17 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(declare-fun b!4981158 () Bool)

(declare-fun e!3113280 () Bool)

(assert (=> b!4981158 (= e!3113280 (inv!15 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(declare-fun b!4981159 () Bool)

(declare-fun res!2126375 () Bool)

(assert (=> b!4981159 (=> res!2126375 e!3113280)))

(assert (=> b!4981159 (= res!2126375 (not ((_ is IntegerValue!26288) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))))

(assert (=> b!4981159 (= e!3113281 e!3113280)))

(declare-fun b!4981160 () Bool)

(declare-fun e!3113282 () Bool)

(assert (=> b!4981160 (= e!3113282 e!3113281)))

(declare-fun c!849971 () Bool)

(assert (=> b!4981160 (= c!849971 ((_ is IntegerValue!26287) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(declare-fun b!4981161 () Bool)

(assert (=> b!4981161 (= e!3113282 (inv!16 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(declare-fun d!1604065 () Bool)

(declare-fun c!849970 () Bool)

(assert (=> d!1604065 (= c!849970 ((_ is IntegerValue!26286) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))))

(assert (=> d!1604065 (= (inv!21 (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))) e!3113282)))

(assert (= (and d!1604065 c!849970) b!4981161))

(assert (= (and d!1604065 (not c!849970)) b!4981160))

(assert (= (and b!4981160 c!849971) b!4981157))

(assert (= (and b!4981160 (not c!849971)) b!4981159))

(assert (= (and b!4981159 (not res!2126375)) b!4981158))

(declare-fun m!6012198 () Bool)

(assert (=> b!4981157 m!6012198))

(declare-fun m!6012200 () Bool)

(assert (=> b!4981158 m!6012200))

(declare-fun m!6012202 () Bool)

(assert (=> b!4981161 m!6012202))

(assert (=> tb!261579 d!1604065))

(assert (=> b!4980421 d!1603997))

(declare-fun d!1604067 () Bool)

(assert (=> d!1604067 (= (isEmpty!31075 (_1!34551 lt!2057570)) ((_ is Nil!57576) (_1!34551 lt!2057570)))))

(assert (=> b!4980362 d!1604067))

(declare-fun d!1604069 () Bool)

(assert (=> d!1604069 (= (isEmpty!31075 (list!18452 (_1!34553 lt!2057338))) ((_ is Nil!57576) (list!18452 (_1!34553 lt!2057338))))))

(assert (=> d!1603627 d!1604069))

(assert (=> d!1603627 d!1603653))

(declare-fun d!1604071 () Bool)

(declare-fun lt!2057824 () Bool)

(assert (=> d!1604071 (= lt!2057824 (isEmpty!31075 (list!18454 (c!849710 (_1!34553 lt!2057338)))))))

(assert (=> d!1604071 (= lt!2057824 (= (size!38201 (c!849710 (_1!34553 lt!2057338))) 0))))

(assert (=> d!1604071 (= (isEmpty!31080 (c!849710 (_1!34553 lt!2057338))) lt!2057824)))

(declare-fun bs!1184251 () Bool)

(assert (= bs!1184251 d!1604071))

(assert (=> bs!1184251 m!6011064))

(assert (=> bs!1184251 m!6011064))

(declare-fun m!6012204 () Bool)

(assert (=> bs!1184251 m!6012204))

(assert (=> bs!1184251 m!6011036))

(assert (=> d!1603627 d!1604071))

(assert (=> b!4980423 d!1603959))

(assert (=> b!4980423 d!1603961))

(assert (=> d!1603729 d!1603725))

(declare-fun d!1604073 () Bool)

(assert (=> d!1604073 (= (tail!9819 lt!2057340) (t!369752 lt!2057340))))

(assert (=> bm!347367 d!1604073))

(declare-fun d!1604075 () Bool)

(declare-fun res!2126376 () Bool)

(declare-fun e!3113283 () Bool)

(assert (=> d!1604075 (=> (not res!2126376) (not e!3113283))))

(assert (=> d!1604075 (= res!2126376 (= (csize!30638 (c!849710 input!1580)) (+ (size!38201 (left!42080 (c!849710 input!1580))) (size!38201 (right!42410 (c!849710 input!1580))))))))

(assert (=> d!1604075 (= (inv!75401 (c!849710 input!1580)) e!3113283)))

(declare-fun b!4981162 () Bool)

(declare-fun res!2126377 () Bool)

(assert (=> b!4981162 (=> (not res!2126377) (not e!3113283))))

(assert (=> b!4981162 (= res!2126377 (and (not (= (left!42080 (c!849710 input!1580)) Empty!15204)) (not (= (right!42410 (c!849710 input!1580)) Empty!15204))))))

(declare-fun b!4981163 () Bool)

(declare-fun res!2126378 () Bool)

(assert (=> b!4981163 (=> (not res!2126378) (not e!3113283))))

(assert (=> b!4981163 (= res!2126378 (= (cheight!15415 (c!849710 input!1580)) (+ (max!0 (height!2024 (left!42080 (c!849710 input!1580))) (height!2024 (right!42410 (c!849710 input!1580)))) 1)))))

(declare-fun b!4981164 () Bool)

(assert (=> b!4981164 (= e!3113283 (<= 0 (cheight!15415 (c!849710 input!1580))))))

(assert (= (and d!1604075 res!2126376) b!4981162))

(assert (= (and b!4981162 res!2126377) b!4981163))

(assert (= (and b!4981163 res!2126378) b!4981164))

(declare-fun m!6012206 () Bool)

(assert (=> d!1604075 m!6012206))

(declare-fun m!6012208 () Bool)

(assert (=> d!1604075 m!6012208))

(assert (=> b!4981163 m!6011742))

(assert (=> b!4981163 m!6011746))

(assert (=> b!4981163 m!6011742))

(assert (=> b!4981163 m!6011746))

(declare-fun m!6012210 () Bool)

(assert (=> b!4981163 m!6012210))

(assert (=> b!4980094 d!1604075))

(declare-fun d!1604077 () Bool)

(declare-fun lt!2057825 () Int)

(assert (=> d!1604077 (>= lt!2057825 0)))

(declare-fun e!3113284 () Int)

(assert (=> d!1604077 (= lt!2057825 e!3113284)))

(declare-fun c!849972 () Bool)

(assert (=> d!1604077 (= c!849972 ((_ is Nil!57576) (list!18452 (_1!34553 lt!2057338))))))

(assert (=> d!1604077 (= (size!38199 (list!18452 (_1!34553 lt!2057338))) lt!2057825)))

(declare-fun b!4981165 () Bool)

(assert (=> b!4981165 (= e!3113284 0)))

(declare-fun b!4981166 () Bool)

(assert (=> b!4981166 (= e!3113284 (+ 1 (size!38199 (t!369752 (list!18452 (_1!34553 lt!2057338))))))))

(assert (= (and d!1604077 c!849972) b!4981165))

(assert (= (and d!1604077 (not c!849972)) b!4981166))

(declare-fun m!6012212 () Bool)

(assert (=> b!4981166 m!6012212))

(assert (=> d!1603643 d!1604077))

(assert (=> d!1603643 d!1603653))

(declare-fun d!1604079 () Bool)

(declare-fun lt!2057828 () Int)

(assert (=> d!1604079 (= lt!2057828 (size!38199 (list!18454 (c!849710 (_1!34553 lt!2057338)))))))

(assert (=> d!1604079 (= lt!2057828 (ite ((_ is Empty!15204) (c!849710 (_1!34553 lt!2057338))) 0 (ite ((_ is Leaf!25255) (c!849710 (_1!34553 lt!2057338))) (csize!30639 (c!849710 (_1!34553 lt!2057338))) (csize!30638 (c!849710 (_1!34553 lt!2057338))))))))

(assert (=> d!1604079 (= (size!38201 (c!849710 (_1!34553 lt!2057338))) lt!2057828)))

(declare-fun bs!1184252 () Bool)

(assert (= bs!1184252 d!1604079))

(assert (=> bs!1184252 m!6011064))

(assert (=> bs!1184252 m!6011064))

(declare-fun m!6012214 () Bool)

(assert (=> bs!1184252 m!6012214))

(assert (=> d!1603643 d!1604079))

(declare-fun d!1604081 () Bool)

(declare-fun res!2126381 () tuple2!62500)

(assert (=> d!1604081 (= (tuple2!62497 (list!18452 (_1!34553 res!2126381)) (list!18452 (_2!34553 res!2126381))) (findLongestMatch!1712 (regex!8452 rule!200) (list!18452 input!1580)))))

(declare-fun e!3113289 () Bool)

(declare-fun e!3113290 () Bool)

(assert (=> d!1604081 (and (inv!75396 (_1!34553 res!2126381)) e!3113289 (inv!75396 (_2!34553 res!2126381)) e!3113290)))

(assert (=> d!1604081 (= (choose!36771 (regex!8452 rule!200) input!1580 totalInput!520) res!2126381)))

(declare-fun b!4981171 () Bool)

(declare-fun tp!1396466 () Bool)

(assert (=> b!4981171 (= e!3113289 (and (inv!75395 (c!849710 (_1!34553 res!2126381))) tp!1396466))))

(declare-fun b!4981172 () Bool)

(declare-fun tp!1396467 () Bool)

(assert (=> b!4981172 (= e!3113290 (and (inv!75395 (c!849710 (_2!34553 res!2126381))) tp!1396467))))

(assert (= d!1604081 b!4981171))

(assert (= d!1604081 b!4981172))

(declare-fun m!6012216 () Bool)

(assert (=> d!1604081 m!6012216))

(assert (=> d!1604081 m!6010926))

(assert (=> d!1604081 m!6010926))

(assert (=> d!1604081 m!6010976))

(declare-fun m!6012218 () Bool)

(assert (=> d!1604081 m!6012218))

(declare-fun m!6012220 () Bool)

(assert (=> d!1604081 m!6012220))

(declare-fun m!6012222 () Bool)

(assert (=> d!1604081 m!6012222))

(declare-fun m!6012224 () Bool)

(assert (=> b!4981171 m!6012224))

(declare-fun m!6012226 () Bool)

(assert (=> b!4981172 m!6012226))

(assert (=> d!1603629 d!1604081))

(declare-fun d!1604083 () Bool)

(declare-fun lt!2057833 () tuple2!62496)

(assert (=> d!1604083 (= (++!12549 (_1!34551 lt!2057833) (_2!34551 lt!2057833)) (list!18452 input!1580))))

(assert (=> d!1604083 (= lt!2057833 (findLongestMatchInner!1896 (regex!8452 rule!200) Nil!57576 0 (list!18452 input!1580) (list!18452 input!1580) (sizeTr!367 (list!18452 input!1580) 0)))))

(declare-fun lt!2057836 () Unit!148622)

(declare-fun lt!2057829 () Unit!148622)

(assert (=> d!1604083 (= lt!2057836 lt!2057829)))

(declare-fun lt!2057830 () List!57700)

(declare-fun lt!2057835 () Int)

(assert (=> d!1604083 (= (sizeTr!367 lt!2057830 lt!2057835) (+ (size!38199 lt!2057830) lt!2057835))))

(assert (=> d!1604083 (= lt!2057829 (lemmaSizeTrEqualsSize!366 lt!2057830 lt!2057835))))

(assert (=> d!1604083 (= lt!2057835 0)))

(assert (=> d!1604083 (= lt!2057830 Nil!57576)))

(declare-fun lt!2057834 () Unit!148622)

(declare-fun lt!2057831 () Unit!148622)

(assert (=> d!1604083 (= lt!2057834 lt!2057831)))

(declare-fun lt!2057832 () Int)

(assert (=> d!1604083 (= (sizeTr!367 (list!18452 input!1580) lt!2057832) (+ (size!38199 (list!18452 input!1580)) lt!2057832))))

(assert (=> d!1604083 (= lt!2057831 (lemmaSizeTrEqualsSize!366 (list!18452 input!1580) lt!2057832))))

(assert (=> d!1604083 (= lt!2057832 0)))

(assert (=> d!1604083 (validRegex!5986 (regex!8452 rule!200))))

(assert (=> d!1604083 (= (findLongestMatch!1712 (regex!8452 rule!200) (list!18452 input!1580)) lt!2057833)))

(declare-fun bs!1184253 () Bool)

(assert (= bs!1184253 d!1604083))

(assert (=> bs!1184253 m!6010926))

(declare-fun m!6012228 () Bool)

(assert (=> bs!1184253 m!6012228))

(assert (=> bs!1184253 m!6010926))

(declare-fun m!6012230 () Bool)

(assert (=> bs!1184253 m!6012230))

(assert (=> bs!1184253 m!6010926))

(assert (=> bs!1184253 m!6010926))

(assert (=> bs!1184253 m!6012230))

(declare-fun m!6012232 () Bool)

(assert (=> bs!1184253 m!6012232))

(assert (=> bs!1184253 m!6010926))

(declare-fun m!6012234 () Bool)

(assert (=> bs!1184253 m!6012234))

(declare-fun m!6012236 () Bool)

(assert (=> bs!1184253 m!6012236))

(declare-fun m!6012238 () Bool)

(assert (=> bs!1184253 m!6012238))

(declare-fun m!6012240 () Bool)

(assert (=> bs!1184253 m!6012240))

(assert (=> bs!1184253 m!6010926))

(declare-fun m!6012242 () Bool)

(assert (=> bs!1184253 m!6012242))

(assert (=> bs!1184253 m!6010974))

(declare-fun m!6012244 () Bool)

(assert (=> bs!1184253 m!6012244))

(assert (=> d!1603629 d!1604083))

(declare-fun d!1604085 () Bool)

(assert (=> d!1604085 (= (list!18452 (_1!34553 lt!2057354)) (list!18454 (c!849710 (_1!34553 lt!2057354))))))

(declare-fun bs!1184254 () Bool)

(assert (= bs!1184254 d!1604085))

(declare-fun m!6012246 () Bool)

(assert (=> bs!1184254 m!6012246))

(assert (=> d!1603629 d!1604085))

(declare-fun d!1604087 () Bool)

(assert (=> d!1604087 (= (list!18452 (_2!34553 lt!2057354)) (list!18454 (c!849710 (_2!34553 lt!2057354))))))

(declare-fun bs!1184255 () Bool)

(assert (= bs!1184255 d!1604087))

(declare-fun m!6012248 () Bool)

(assert (=> bs!1184255 m!6012248))

(assert (=> d!1603629 d!1604087))

(assert (=> d!1603629 d!1603861))

(assert (=> d!1603629 d!1603639))

(declare-fun d!1604089 () Bool)

(assert (=> d!1604089 (= (Forall!1802 lambda!247808) (choose!36774 lambda!247808))))

(declare-fun bs!1184256 () Bool)

(assert (= bs!1184256 d!1604089))

(declare-fun m!6012250 () Bool)

(assert (=> bs!1184256 m!6012250))

(assert (=> d!1603725 d!1604089))

(declare-fun d!1604091 () Bool)

(assert (=> d!1604091 (dynLambda!23338 lambda!247802 (_1!34553 lt!2057338))))

(assert (=> d!1604091 true))

(declare-fun _$1!11266 () Unit!148622)

(assert (=> d!1604091 (= (choose!36772 lambda!247802 (_1!34553 lt!2057338)) _$1!11266)))

(declare-fun b_lambda!197793 () Bool)

(assert (=> (not b_lambda!197793) (not d!1604091)))

(declare-fun bs!1184257 () Bool)

(assert (= bs!1184257 d!1604091))

(assert (=> bs!1184257 m!6011052))

(assert (=> d!1603649 d!1604091))

(assert (=> d!1603649 d!1603731))

(declare-fun d!1604093 () Bool)

(assert (=> d!1604093 (= (head!10686 lt!2057340) (h!64024 lt!2057340))))

(assert (=> bm!347362 d!1604093))

(declare-fun d!1604095 () Bool)

(declare-fun c!849973 () Bool)

(assert (=> d!1604095 (= c!849973 ((_ is Node!15204) (left!42080 (c!849710 input!1580))))))

(declare-fun e!3113291 () Bool)

(assert (=> d!1604095 (= (inv!75395 (left!42080 (c!849710 input!1580))) e!3113291)))

(declare-fun b!4981173 () Bool)

(assert (=> b!4981173 (= e!3113291 (inv!75401 (left!42080 (c!849710 input!1580))))))

(declare-fun b!4981174 () Bool)

(declare-fun e!3113292 () Bool)

(assert (=> b!4981174 (= e!3113291 e!3113292)))

(declare-fun res!2126382 () Bool)

(assert (=> b!4981174 (= res!2126382 (not ((_ is Leaf!25255) (left!42080 (c!849710 input!1580)))))))

(assert (=> b!4981174 (=> res!2126382 e!3113292)))

(declare-fun b!4981175 () Bool)

(assert (=> b!4981175 (= e!3113292 (inv!75402 (left!42080 (c!849710 input!1580))))))

(assert (= (and d!1604095 c!849973) b!4981173))

(assert (= (and d!1604095 (not c!849973)) b!4981174))

(assert (= (and b!4981174 (not res!2126382)) b!4981175))

(declare-fun m!6012252 () Bool)

(assert (=> b!4981173 m!6012252))

(declare-fun m!6012254 () Bool)

(assert (=> b!4981175 m!6012254))

(assert (=> b!4980440 d!1604095))

(declare-fun d!1604097 () Bool)

(declare-fun c!849974 () Bool)

(assert (=> d!1604097 (= c!849974 ((_ is Node!15204) (right!42410 (c!849710 input!1580))))))

(declare-fun e!3113293 () Bool)

(assert (=> d!1604097 (= (inv!75395 (right!42410 (c!849710 input!1580))) e!3113293)))

(declare-fun b!4981176 () Bool)

(assert (=> b!4981176 (= e!3113293 (inv!75401 (right!42410 (c!849710 input!1580))))))

(declare-fun b!4981177 () Bool)

(declare-fun e!3113294 () Bool)

(assert (=> b!4981177 (= e!3113293 e!3113294)))

(declare-fun res!2126383 () Bool)

(assert (=> b!4981177 (= res!2126383 (not ((_ is Leaf!25255) (right!42410 (c!849710 input!1580)))))))

(assert (=> b!4981177 (=> res!2126383 e!3113294)))

(declare-fun b!4981178 () Bool)

(assert (=> b!4981178 (= e!3113294 (inv!75402 (right!42410 (c!849710 input!1580))))))

(assert (= (and d!1604097 c!849974) b!4981176))

(assert (= (and d!1604097 (not c!849974)) b!4981177))

(assert (= (and b!4981177 (not res!2126383)) b!4981178))

(declare-fun m!6012256 () Bool)

(assert (=> b!4981176 m!6012256))

(declare-fun m!6012258 () Bool)

(assert (=> b!4981178 m!6012258))

(assert (=> b!4980440 d!1604097))

(declare-fun d!1604099 () Bool)

(declare-fun res!2126384 () Bool)

(declare-fun e!3113295 () Bool)

(assert (=> d!1604099 (=> (not res!2126384) (not e!3113295))))

(assert (=> d!1604099 (= res!2126384 (<= (size!38199 (list!18456 (xs!18530 (c!849710 input!1580)))) 512))))

(assert (=> d!1604099 (= (inv!75402 (c!849710 input!1580)) e!3113295)))

(declare-fun b!4981179 () Bool)

(declare-fun res!2126385 () Bool)

(assert (=> b!4981179 (=> (not res!2126385) (not e!3113295))))

(assert (=> b!4981179 (= res!2126385 (= (csize!30639 (c!849710 input!1580)) (size!38199 (list!18456 (xs!18530 (c!849710 input!1580))))))))

(declare-fun b!4981180 () Bool)

(assert (=> b!4981180 (= e!3113295 (and (> (csize!30639 (c!849710 input!1580)) 0) (<= (csize!30639 (c!849710 input!1580)) 512)))))

(assert (= (and d!1604099 res!2126384) b!4981179))

(assert (= (and b!4981179 res!2126385) b!4981180))

(assert (=> d!1604099 m!6012176))

(assert (=> d!1604099 m!6012176))

(declare-fun m!6012260 () Bool)

(assert (=> d!1604099 m!6012260))

(assert (=> b!4981179 m!6012176))

(assert (=> b!4981179 m!6012176))

(assert (=> b!4981179 m!6012260))

(assert (=> b!4980096 d!1604099))

(assert (=> b!4980234 d!1603885))

(declare-fun d!1604101 () Bool)

(declare-fun lt!2057837 () Int)

(assert (=> d!1604101 (>= lt!2057837 0)))

(declare-fun e!3113296 () Int)

(assert (=> d!1604101 (= lt!2057837 e!3113296)))

(declare-fun c!849975 () Bool)

(assert (=> d!1604101 (= c!849975 ((_ is Nil!57576) (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))))))

(assert (=> d!1604101 (= (size!38199 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))) lt!2057837)))

(declare-fun b!4981181 () Bool)

(assert (=> b!4981181 (= e!3113296 0)))

(declare-fun b!4981182 () Bool)

(assert (=> b!4981182 (= e!3113296 (+ 1 (size!38199 (t!369752 (originalCharacters!8711 (_1!34552 (get!20014 lt!2057491)))))))))

(assert (= (and d!1604101 c!849975) b!4981181))

(assert (= (and d!1604101 (not c!849975)) b!4981182))

(declare-fun m!6012262 () Bool)

(assert (=> b!4981182 m!6012262))

(assert (=> b!4980234 d!1604101))

(declare-fun b!4981183 () Bool)

(declare-fun e!3113298 () List!57700)

(assert (=> b!4981183 (= e!3113298 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576))))

(declare-fun b!4981186 () Bool)

(declare-fun e!3113297 () Bool)

(declare-fun lt!2057838 () List!57700)

(assert (=> b!4981186 (= e!3113297 (or (not (= (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576) Nil!57576)) (= lt!2057838 Nil!57576)))))

(declare-fun b!4981184 () Bool)

(assert (=> b!4981184 (= e!3113298 (Cons!57576 (h!64024 Nil!57576) (++!12549 (t!369752 Nil!57576) (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576))))))

(declare-fun d!1604103 () Bool)

(assert (=> d!1604103 e!3113297))

(declare-fun res!2126387 () Bool)

(assert (=> d!1604103 (=> (not res!2126387) (not e!3113297))))

(assert (=> d!1604103 (= res!2126387 (= (content!10201 lt!2057838) ((_ map or) (content!10201 Nil!57576) (content!10201 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)))))))

(assert (=> d!1604103 (= lt!2057838 e!3113298)))

(declare-fun c!849976 () Bool)

(assert (=> d!1604103 (= c!849976 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1604103 (= (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)) lt!2057838)))

(declare-fun b!4981185 () Bool)

(declare-fun res!2126386 () Bool)

(assert (=> b!4981185 (=> (not res!2126386) (not e!3113297))))

(assert (=> b!4981185 (= res!2126386 (= (size!38199 lt!2057838) (+ (size!38199 Nil!57576) (size!38199 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)))))))

(assert (= (and d!1604103 c!849976) b!4981183))

(assert (= (and d!1604103 (not c!849976)) b!4981184))

(assert (= (and d!1604103 res!2126387) b!4981185))

(assert (= (and b!4981185 res!2126386) b!4981186))

(declare-fun m!6012264 () Bool)

(assert (=> b!4981184 m!6012264))

(declare-fun m!6012266 () Bool)

(assert (=> d!1604103 m!6012266))

(assert (=> d!1604103 m!6011778))

(declare-fun m!6012268 () Bool)

(assert (=> d!1604103 m!6012268))

(declare-fun m!6012270 () Bool)

(assert (=> b!4981185 m!6012270))

(assert (=> b!4981185 m!6010904))

(declare-fun m!6012272 () Bool)

(assert (=> b!4981185 m!6012272))

(assert (=> b!4980361 d!1604103))

(assert (=> b!4980361 d!1603713))

(declare-fun b!4981187 () Bool)

(declare-fun e!3113300 () List!57700)

(assert (=> b!4981187 (= e!3113300 lt!2057574)))

(declare-fun lt!2057839 () List!57700)

(declare-fun b!4981190 () Bool)

(declare-fun e!3113299 () Bool)

(assert (=> b!4981190 (= e!3113299 (or (not (= lt!2057574 Nil!57576)) (= lt!2057839 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576)))))))

(declare-fun b!4981188 () Bool)

(assert (=> b!4981188 (= e!3113300 (Cons!57576 (h!64024 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576))) (++!12549 (t!369752 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576))) lt!2057574)))))

(declare-fun d!1604105 () Bool)

(assert (=> d!1604105 e!3113299))

(declare-fun res!2126389 () Bool)

(assert (=> d!1604105 (=> (not res!2126389) (not e!3113299))))

(assert (=> d!1604105 (= res!2126389 (= (content!10201 lt!2057839) ((_ map or) (content!10201 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576))) (content!10201 lt!2057574))))))

(assert (=> d!1604105 (= lt!2057839 e!3113300)))

(declare-fun c!849977 () Bool)

(assert (=> d!1604105 (= c!849977 ((_ is Nil!57576) (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576))))))

(assert (=> d!1604105 (= (++!12549 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576)) lt!2057574) lt!2057839)))

(declare-fun b!4981189 () Bool)

(declare-fun res!2126388 () Bool)

(assert (=> b!4981189 (=> (not res!2126388) (not e!3113299))))

(assert (=> b!4981189 (= res!2126388 (= (size!38199 lt!2057839) (+ (size!38199 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576))) (size!38199 lt!2057574))))))

(assert (= (and d!1604105 c!849977) b!4981187))

(assert (= (and d!1604105 (not c!849977)) b!4981188))

(assert (= (and d!1604105 res!2126389) b!4981189))

(assert (= (and b!4981189 res!2126388) b!4981190))

(declare-fun m!6012274 () Bool)

(assert (=> b!4981188 m!6012274))

(declare-fun m!6012276 () Bool)

(assert (=> d!1604105 m!6012276))

(assert (=> d!1604105 m!6011254))

(declare-fun m!6012278 () Bool)

(assert (=> d!1604105 m!6012278))

(declare-fun m!6012280 () Bool)

(assert (=> d!1604105 m!6012280))

(declare-fun m!6012282 () Bool)

(assert (=> b!4981189 m!6012282))

(assert (=> b!4981189 m!6011254))

(declare-fun m!6012284 () Bool)

(assert (=> b!4981189 m!6012284))

(declare-fun m!6012286 () Bool)

(assert (=> b!4981189 m!6012286))

(assert (=> b!4980361 d!1604105))

(declare-fun b!4981191 () Bool)

(declare-fun e!3113302 () List!57700)

(assert (=> b!4981191 (= e!3113302 (Cons!57576 (head!10686 lt!2057340) Nil!57576))))

(declare-fun b!4981194 () Bool)

(declare-fun e!3113301 () Bool)

(declare-fun lt!2057840 () List!57700)

(assert (=> b!4981194 (= e!3113301 (or (not (= (Cons!57576 (head!10686 lt!2057340) Nil!57576) Nil!57576)) (= lt!2057840 Nil!57576)))))

(declare-fun b!4981192 () Bool)

(assert (=> b!4981192 (= e!3113302 (Cons!57576 (h!64024 Nil!57576) (++!12549 (t!369752 Nil!57576) (Cons!57576 (head!10686 lt!2057340) Nil!57576))))))

(declare-fun d!1604107 () Bool)

(assert (=> d!1604107 e!3113301))

(declare-fun res!2126391 () Bool)

(assert (=> d!1604107 (=> (not res!2126391) (not e!3113301))))

(assert (=> d!1604107 (= res!2126391 (= (content!10201 lt!2057840) ((_ map or) (content!10201 Nil!57576) (content!10201 (Cons!57576 (head!10686 lt!2057340) Nil!57576)))))))

(assert (=> d!1604107 (= lt!2057840 e!3113302)))

(declare-fun c!849978 () Bool)

(assert (=> d!1604107 (= c!849978 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1604107 (= (++!12549 Nil!57576 (Cons!57576 (head!10686 lt!2057340) Nil!57576)) lt!2057840)))

(declare-fun b!4981193 () Bool)

(declare-fun res!2126390 () Bool)

(assert (=> b!4981193 (=> (not res!2126390) (not e!3113301))))

(assert (=> b!4981193 (= res!2126390 (= (size!38199 lt!2057840) (+ (size!38199 Nil!57576) (size!38199 (Cons!57576 (head!10686 lt!2057340) Nil!57576)))))))

(assert (= (and d!1604107 c!849978) b!4981191))

(assert (= (and d!1604107 (not c!849978)) b!4981192))

(assert (= (and d!1604107 res!2126391) b!4981193))

(assert (= (and b!4981193 res!2126390) b!4981194))

(declare-fun m!6012288 () Bool)

(assert (=> b!4981192 m!6012288))

(declare-fun m!6012290 () Bool)

(assert (=> d!1604107 m!6012290))

(assert (=> d!1604107 m!6011778))

(declare-fun m!6012292 () Bool)

(assert (=> d!1604107 m!6012292))

(declare-fun m!6012294 () Bool)

(assert (=> b!4981193 m!6012294))

(assert (=> b!4981193 m!6010904))

(declare-fun m!6012296 () Bool)

(assert (=> b!4981193 m!6012296))

(assert (=> b!4980361 d!1604107))

(assert (=> b!4980361 d!1603947))

(declare-fun b!4981195 () Bool)

(declare-fun e!3113304 () List!57700)

(assert (=> b!4981195 (= e!3113304 (Cons!57576 lt!2057573 Nil!57576))))

(declare-fun b!4981198 () Bool)

(declare-fun e!3113303 () Bool)

(declare-fun lt!2057841 () List!57700)

(assert (=> b!4981198 (= e!3113303 (or (not (= (Cons!57576 lt!2057573 Nil!57576) Nil!57576)) (= lt!2057841 Nil!57576)))))

(declare-fun b!4981196 () Bool)

(assert (=> b!4981196 (= e!3113304 (Cons!57576 (h!64024 Nil!57576) (++!12549 (t!369752 Nil!57576) (Cons!57576 lt!2057573 Nil!57576))))))

(declare-fun d!1604109 () Bool)

(assert (=> d!1604109 e!3113303))

(declare-fun res!2126393 () Bool)

(assert (=> d!1604109 (=> (not res!2126393) (not e!3113303))))

(assert (=> d!1604109 (= res!2126393 (= (content!10201 lt!2057841) ((_ map or) (content!10201 Nil!57576) (content!10201 (Cons!57576 lt!2057573 Nil!57576)))))))

(assert (=> d!1604109 (= lt!2057841 e!3113304)))

(declare-fun c!849979 () Bool)

(assert (=> d!1604109 (= c!849979 ((_ is Nil!57576) Nil!57576))))

(assert (=> d!1604109 (= (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576)) lt!2057841)))

(declare-fun b!4981197 () Bool)

(declare-fun res!2126392 () Bool)

(assert (=> b!4981197 (=> (not res!2126392) (not e!3113303))))

(assert (=> b!4981197 (= res!2126392 (= (size!38199 lt!2057841) (+ (size!38199 Nil!57576) (size!38199 (Cons!57576 lt!2057573 Nil!57576)))))))

(assert (= (and d!1604109 c!849979) b!4981195))

(assert (= (and d!1604109 (not c!849979)) b!4981196))

(assert (= (and d!1604109 res!2126393) b!4981197))

(assert (= (and b!4981197 res!2126392) b!4981198))

(declare-fun m!6012298 () Bool)

(assert (=> b!4981196 m!6012298))

(declare-fun m!6012300 () Bool)

(assert (=> d!1604109 m!6012300))

(assert (=> d!1604109 m!6011778))

(declare-fun m!6012302 () Bool)

(assert (=> d!1604109 m!6012302))

(declare-fun m!6012304 () Bool)

(assert (=> b!4981197 m!6012304))

(assert (=> b!4981197 m!6010904))

(declare-fun m!6012306 () Bool)

(assert (=> b!4981197 m!6012306))

(assert (=> b!4980361 d!1604109))

(assert (=> b!4980361 d!1603723))

(declare-fun d!1604111 () Bool)

(assert (=> d!1604111 (= (++!12549 (++!12549 Nil!57576 (Cons!57576 lt!2057573 Nil!57576)) lt!2057574) lt!2057340)))

(declare-fun lt!2057844 () Unit!148622)

(declare-fun choose!36786 (List!57700 C!27620 List!57700 List!57700) Unit!148622)

(assert (=> d!1604111 (= lt!2057844 (choose!36786 Nil!57576 lt!2057573 lt!2057574 lt!2057340))))

(assert (=> d!1604111 (= (++!12549 Nil!57576 (Cons!57576 lt!2057573 lt!2057574)) lt!2057340)))

(assert (=> d!1604111 (= (lemmaMoveElementToOtherListKeepsConcatEq!1460 Nil!57576 lt!2057573 lt!2057574 lt!2057340) lt!2057844)))

(declare-fun bs!1184258 () Bool)

(assert (= bs!1184258 d!1604111))

(assert (=> bs!1184258 m!6011254))

(assert (=> bs!1184258 m!6011254))

(assert (=> bs!1184258 m!6011256))

(declare-fun m!6012308 () Bool)

(assert (=> bs!1184258 m!6012308))

(declare-fun m!6012310 () Bool)

(assert (=> bs!1184258 m!6012310))

(assert (=> b!4980361 d!1604111))

(assert (=> b!4980361 d!1604093))

(declare-fun d!1604113 () Bool)

(assert (=> d!1604113 (<= (size!38199 Nil!57576) (size!38199 lt!2057340))))

(declare-fun lt!2057847 () Unit!148622)

(declare-fun choose!36787 (List!57700 List!57700) Unit!148622)

(assert (=> d!1604113 (= lt!2057847 (choose!36787 Nil!57576 lt!2057340))))

(assert (=> d!1604113 (isPrefix!5263 Nil!57576 lt!2057340)))

(assert (=> d!1604113 (= (lemmaIsPrefixThenSmallerEqSize!776 Nil!57576 lt!2057340) lt!2057847)))

(declare-fun bs!1184259 () Bool)

(assert (= bs!1184259 d!1604113))

(assert (=> bs!1184259 m!6010904))

(assert (=> bs!1184259 m!6010906))

(declare-fun m!6012312 () Bool)

(assert (=> bs!1184259 m!6012312))

(assert (=> bs!1184259 m!6011870))

(assert (=> b!4980361 d!1604113))

(declare-fun d!1604115 () Bool)

(declare-fun e!3113305 () Bool)

(assert (=> d!1604115 e!3113305))

(declare-fun res!2126397 () Bool)

(assert (=> d!1604115 (=> res!2126397 e!3113305)))

(declare-fun lt!2057848 () Bool)

(assert (=> d!1604115 (= res!2126397 (not lt!2057848))))

(declare-fun e!3113307 () Bool)

(assert (=> d!1604115 (= lt!2057848 e!3113307)))

(declare-fun res!2126396 () Bool)

(assert (=> d!1604115 (=> res!2126396 e!3113307)))

(assert (=> d!1604115 (= res!2126396 ((_ is Nil!57576) (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576))))))

(assert (=> d!1604115 (= (isPrefix!5263 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)) lt!2057340) lt!2057848)))

(declare-fun b!4981202 () Bool)

(assert (=> b!4981202 (= e!3113305 (>= (size!38199 lt!2057340) (size!38199 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)))))))

(declare-fun b!4981201 () Bool)

(declare-fun e!3113306 () Bool)

(assert (=> b!4981201 (= e!3113306 (isPrefix!5263 (tail!9819 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576))) (tail!9819 lt!2057340)))))

(declare-fun b!4981200 () Bool)

(declare-fun res!2126394 () Bool)

(assert (=> b!4981200 (=> (not res!2126394) (not e!3113306))))

(assert (=> b!4981200 (= res!2126394 (= (head!10686 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576))) (head!10686 lt!2057340)))))

(declare-fun b!4981199 () Bool)

(assert (=> b!4981199 (= e!3113307 e!3113306)))

(declare-fun res!2126395 () Bool)

(assert (=> b!4981199 (=> (not res!2126395) (not e!3113306))))

(assert (=> b!4981199 (= res!2126395 (not ((_ is Nil!57576) lt!2057340)))))

(assert (= (and d!1604115 (not res!2126396)) b!4981199))

(assert (= (and b!4981199 res!2126395) b!4981200))

(assert (= (and b!4981200 res!2126394) b!4981201))

(assert (= (and d!1604115 (not res!2126397)) b!4981202))

(assert (=> b!4981202 m!6010906))

(assert (=> b!4981202 m!6011252))

(declare-fun m!6012314 () Bool)

(assert (=> b!4981202 m!6012314))

(assert (=> b!4981201 m!6011252))

(declare-fun m!6012316 () Bool)

(assert (=> b!4981201 m!6012316))

(assert (=> b!4981201 m!6011258))

(assert (=> b!4981201 m!6012316))

(assert (=> b!4981201 m!6011258))

(declare-fun m!6012318 () Bool)

(assert (=> b!4981201 m!6012318))

(assert (=> b!4981200 m!6011252))

(declare-fun m!6012320 () Bool)

(assert (=> b!4981200 m!6012320))

(assert (=> b!4981200 m!6011250))

(assert (=> b!4980361 d!1604115))

(declare-fun d!1604117 () Bool)

(assert (=> d!1604117 (isPrefix!5263 (++!12549 Nil!57576 (Cons!57576 (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) Nil!57576)) lt!2057340)))

(declare-fun lt!2057851 () Unit!148622)

(declare-fun choose!36788 (List!57700 List!57700) Unit!148622)

(assert (=> d!1604117 (= lt!2057851 (choose!36788 Nil!57576 lt!2057340))))

(assert (=> d!1604117 (isPrefix!5263 Nil!57576 lt!2057340)))

(assert (=> d!1604117 (= (lemmaAddHeadSuffixToPrefixStillPrefix!850 Nil!57576 lt!2057340) lt!2057851)))

(declare-fun bs!1184260 () Bool)

(assert (= bs!1184260 d!1604117))

(assert (=> bs!1184260 m!6011262))

(assert (=> bs!1184260 m!6011266))

(assert (=> bs!1184260 m!6011252))

(assert (=> bs!1184260 m!6011272))

(declare-fun m!6012322 () Bool)

(assert (=> bs!1184260 m!6012322))

(assert (=> bs!1184260 m!6011262))

(assert (=> bs!1184260 m!6011870))

(assert (=> bs!1184260 m!6011252))

(assert (=> b!4980361 d!1604117))

(assert (=> b!4980361 d!1604073))

(declare-fun d!1604119 () Bool)

(assert (=> d!1604119 (= (head!10686 (getSuffix!3103 lt!2057340 Nil!57576)) (h!64024 (getSuffix!3103 lt!2057340 Nil!57576)))))

(assert (=> b!4980361 d!1604119))

(declare-fun d!1604121 () Bool)

(declare-fun lt!2057852 () Int)

(assert (=> d!1604121 (>= lt!2057852 0)))

(declare-fun e!3113308 () Int)

(assert (=> d!1604121 (= lt!2057852 e!3113308)))

(declare-fun c!849980 () Bool)

(assert (=> d!1604121 (= c!849980 ((_ is Nil!57576) (_2!34552 (get!20014 lt!2057491))))))

(assert (=> d!1604121 (= (size!38199 (_2!34552 (get!20014 lt!2057491))) lt!2057852)))

(declare-fun b!4981203 () Bool)

(assert (=> b!4981203 (= e!3113308 0)))

(declare-fun b!4981204 () Bool)

(assert (=> b!4981204 (= e!3113308 (+ 1 (size!38199 (t!369752 (_2!34552 (get!20014 lt!2057491))))))))

(assert (= (and d!1604121 c!849980) b!4981203))

(assert (= (and d!1604121 (not c!849980)) b!4981204))

(declare-fun m!6012324 () Bool)

(assert (=> b!4981204 m!6012324))

(assert (=> b!4980236 d!1604121))

(assert (=> b!4980236 d!1603885))

(assert (=> b!4980236 d!1603723))

(declare-fun e!3113309 () Bool)

(assert (=> b!4980456 (= tp!1396397 e!3113309)))

(declare-fun b!4981208 () Bool)

(declare-fun tp!1396469 () Bool)

(declare-fun tp!1396472 () Bool)

(assert (=> b!4981208 (= e!3113309 (and tp!1396469 tp!1396472))))

(declare-fun b!4981207 () Bool)

(declare-fun tp!1396468 () Bool)

(assert (=> b!4981207 (= e!3113309 tp!1396468)))

(declare-fun b!4981205 () Bool)

(assert (=> b!4981205 (= e!3113309 tp_is_empty!36375)))

(declare-fun b!4981206 () Bool)

(declare-fun tp!1396470 () Bool)

(declare-fun tp!1396471 () Bool)

(assert (=> b!4981206 (= e!3113309 (and tp!1396470 tp!1396471))))

(assert (= (and b!4980456 ((_ is ElementMatch!13685) (regOne!27883 (regex!8452 rule!200)))) b!4981205))

(assert (= (and b!4980456 ((_ is Concat!22447) (regOne!27883 (regex!8452 rule!200)))) b!4981206))

(assert (= (and b!4980456 ((_ is Star!13685) (regOne!27883 (regex!8452 rule!200)))) b!4981207))

(assert (= (and b!4980456 ((_ is Union!13685) (regOne!27883 (regex!8452 rule!200)))) b!4981208))

(declare-fun e!3113310 () Bool)

(assert (=> b!4980456 (= tp!1396400 e!3113310)))

(declare-fun b!4981212 () Bool)

(declare-fun tp!1396474 () Bool)

(declare-fun tp!1396477 () Bool)

(assert (=> b!4981212 (= e!3113310 (and tp!1396474 tp!1396477))))

(declare-fun b!4981211 () Bool)

(declare-fun tp!1396473 () Bool)

(assert (=> b!4981211 (= e!3113310 tp!1396473)))

(declare-fun b!4981209 () Bool)

(assert (=> b!4981209 (= e!3113310 tp_is_empty!36375)))

(declare-fun b!4981210 () Bool)

(declare-fun tp!1396475 () Bool)

(declare-fun tp!1396476 () Bool)

(assert (=> b!4981210 (= e!3113310 (and tp!1396475 tp!1396476))))

(assert (= (and b!4980456 ((_ is ElementMatch!13685) (regTwo!27883 (regex!8452 rule!200)))) b!4981209))

(assert (= (and b!4980456 ((_ is Concat!22447) (regTwo!27883 (regex!8452 rule!200)))) b!4981210))

(assert (= (and b!4980456 ((_ is Star!13685) (regTwo!27883 (regex!8452 rule!200)))) b!4981211))

(assert (= (and b!4980456 ((_ is Union!13685) (regTwo!27883 (regex!8452 rule!200)))) b!4981212))

(declare-fun tp!1396480 () Bool)

(declare-fun b!4981213 () Bool)

(declare-fun tp!1396478 () Bool)

(declare-fun e!3113312 () Bool)

(assert (=> b!4981213 (= e!3113312 (and (inv!75395 (left!42080 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))) tp!1396480 (inv!75395 (right!42410 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))) tp!1396478))))

(declare-fun b!4981215 () Bool)

(declare-fun e!3113311 () Bool)

(declare-fun tp!1396479 () Bool)

(assert (=> b!4981215 (= e!3113311 tp!1396479)))

(declare-fun b!4981214 () Bool)

(assert (=> b!4981214 (= e!3113312 (and (inv!75403 (xs!18530 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))) e!3113311))))

(assert (=> b!4980461 (= tp!1396403 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334))))) e!3113312))))

(assert (= (and b!4980461 ((_ is Node!15204) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))) b!4981213))

(assert (= b!4981214 b!4981215))

(assert (= (and b!4980461 ((_ is Leaf!25255) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (seqFromList!6073 lt!2057334)))))) b!4981214))

(declare-fun m!6012326 () Bool)

(assert (=> b!4981213 m!6012326))

(declare-fun m!6012328 () Bool)

(assert (=> b!4981213 m!6012328))

(declare-fun m!6012330 () Bool)

(assert (=> b!4981214 m!6012330))

(assert (=> b!4980461 m!6011324))

(declare-fun tp!1396481 () Bool)

(declare-fun e!3113314 () Bool)

(declare-fun b!4981216 () Bool)

(declare-fun tp!1396483 () Bool)

(assert (=> b!4981216 (= e!3113314 (and (inv!75395 (left!42080 (left!42080 (c!849710 totalInput!520)))) tp!1396483 (inv!75395 (right!42410 (left!42080 (c!849710 totalInput!520)))) tp!1396481))))

(declare-fun b!4981218 () Bool)

(declare-fun e!3113313 () Bool)

(declare-fun tp!1396482 () Bool)

(assert (=> b!4981218 (= e!3113313 tp!1396482)))

(declare-fun b!4981217 () Bool)

(assert (=> b!4981217 (= e!3113314 (and (inv!75403 (xs!18530 (left!42080 (c!849710 totalInput!520)))) e!3113313))))

(assert (=> b!4980437 (= tp!1396382 (and (inv!75395 (left!42080 (c!849710 totalInput!520))) e!3113314))))

(assert (= (and b!4980437 ((_ is Node!15204) (left!42080 (c!849710 totalInput!520)))) b!4981216))

(assert (= b!4981217 b!4981218))

(assert (= (and b!4980437 ((_ is Leaf!25255) (left!42080 (c!849710 totalInput!520)))) b!4981217))

(declare-fun m!6012332 () Bool)

(assert (=> b!4981216 m!6012332))

(declare-fun m!6012334 () Bool)

(assert (=> b!4981216 m!6012334))

(declare-fun m!6012336 () Bool)

(assert (=> b!4981217 m!6012336))

(assert (=> b!4980437 m!6011312))

(declare-fun tp!1396484 () Bool)

(declare-fun tp!1396486 () Bool)

(declare-fun e!3113316 () Bool)

(declare-fun b!4981219 () Bool)

(assert (=> b!4981219 (= e!3113316 (and (inv!75395 (left!42080 (right!42410 (c!849710 totalInput!520)))) tp!1396486 (inv!75395 (right!42410 (right!42410 (c!849710 totalInput!520)))) tp!1396484))))

(declare-fun b!4981221 () Bool)

(declare-fun e!3113315 () Bool)

(declare-fun tp!1396485 () Bool)

(assert (=> b!4981221 (= e!3113315 tp!1396485)))

(declare-fun b!4981220 () Bool)

(assert (=> b!4981220 (= e!3113316 (and (inv!75403 (xs!18530 (right!42410 (c!849710 totalInput!520)))) e!3113315))))

(assert (=> b!4980437 (= tp!1396380 (and (inv!75395 (right!42410 (c!849710 totalInput!520))) e!3113316))))

(assert (= (and b!4980437 ((_ is Node!15204) (right!42410 (c!849710 totalInput!520)))) b!4981219))

(assert (= b!4981220 b!4981221))

(assert (= (and b!4980437 ((_ is Leaf!25255) (right!42410 (c!849710 totalInput!520)))) b!4981220))

(declare-fun m!6012338 () Bool)

(assert (=> b!4981219 m!6012338))

(declare-fun m!6012340 () Bool)

(assert (=> b!4981219 m!6012340))

(declare-fun m!6012342 () Bool)

(assert (=> b!4981220 m!6012342))

(assert (=> b!4980437 m!6011314))

(declare-fun b!4981226 () Bool)

(declare-fun e!3113319 () Bool)

(declare-fun tp!1396489 () Bool)

(assert (=> b!4981226 (= e!3113319 (and tp_is_empty!36375 tp!1396489))))

(assert (=> b!4980439 (= tp!1396381 e!3113319)))

(assert (= (and b!4980439 ((_ is Cons!57576) (innerList!15292 (xs!18530 (c!849710 totalInput!520))))) b!4981226))

(declare-fun tp!1396492 () Bool)

(declare-fun tp!1396490 () Bool)

(declare-fun e!3113321 () Bool)

(declare-fun b!4981227 () Bool)

(assert (=> b!4981227 (= e!3113321 (and (inv!75395 (left!42080 (left!42080 (c!849710 input!1580)))) tp!1396492 (inv!75395 (right!42410 (left!42080 (c!849710 input!1580)))) tp!1396490))))

(declare-fun b!4981229 () Bool)

(declare-fun e!3113320 () Bool)

(declare-fun tp!1396491 () Bool)

(assert (=> b!4981229 (= e!3113320 tp!1396491)))

(declare-fun b!4981228 () Bool)

(assert (=> b!4981228 (= e!3113321 (and (inv!75403 (xs!18530 (left!42080 (c!849710 input!1580)))) e!3113320))))

(assert (=> b!4980440 (= tp!1396385 (and (inv!75395 (left!42080 (c!849710 input!1580))) e!3113321))))

(assert (= (and b!4980440 ((_ is Node!15204) (left!42080 (c!849710 input!1580)))) b!4981227))

(assert (= b!4981228 b!4981229))

(assert (= (and b!4980440 ((_ is Leaf!25255) (left!42080 (c!849710 input!1580)))) b!4981228))

(declare-fun m!6012344 () Bool)

(assert (=> b!4981227 m!6012344))

(declare-fun m!6012346 () Bool)

(assert (=> b!4981227 m!6012346))

(declare-fun m!6012348 () Bool)

(assert (=> b!4981228 m!6012348))

(assert (=> b!4980440 m!6011318))

(declare-fun e!3113323 () Bool)

(declare-fun tp!1396495 () Bool)

(declare-fun tp!1396493 () Bool)

(declare-fun b!4981230 () Bool)

(assert (=> b!4981230 (= e!3113323 (and (inv!75395 (left!42080 (right!42410 (c!849710 input!1580)))) tp!1396495 (inv!75395 (right!42410 (right!42410 (c!849710 input!1580)))) tp!1396493))))

(declare-fun b!4981232 () Bool)

(declare-fun e!3113322 () Bool)

(declare-fun tp!1396494 () Bool)

(assert (=> b!4981232 (= e!3113322 tp!1396494)))

(declare-fun b!4981231 () Bool)

(assert (=> b!4981231 (= e!3113323 (and (inv!75403 (xs!18530 (right!42410 (c!849710 input!1580)))) e!3113322))))

(assert (=> b!4980440 (= tp!1396383 (and (inv!75395 (right!42410 (c!849710 input!1580))) e!3113323))))

(assert (= (and b!4980440 ((_ is Node!15204) (right!42410 (c!849710 input!1580)))) b!4981230))

(assert (= b!4981231 b!4981232))

(assert (= (and b!4980440 ((_ is Leaf!25255) (right!42410 (c!849710 input!1580)))) b!4981231))

(declare-fun m!6012350 () Bool)

(assert (=> b!4981230 m!6012350))

(declare-fun m!6012352 () Bool)

(assert (=> b!4981230 m!6012352))

(declare-fun m!6012354 () Bool)

(assert (=> b!4981231 m!6012354))

(assert (=> b!4980440 m!6011320))

(declare-fun e!3113324 () Bool)

(assert (=> b!4980454 (= tp!1396398 e!3113324)))

(declare-fun b!4981236 () Bool)

(declare-fun tp!1396497 () Bool)

(declare-fun tp!1396500 () Bool)

(assert (=> b!4981236 (= e!3113324 (and tp!1396497 tp!1396500))))

(declare-fun b!4981235 () Bool)

(declare-fun tp!1396496 () Bool)

(assert (=> b!4981235 (= e!3113324 tp!1396496)))

(declare-fun b!4981233 () Bool)

(assert (=> b!4981233 (= e!3113324 tp_is_empty!36375)))

(declare-fun b!4981234 () Bool)

(declare-fun tp!1396498 () Bool)

(declare-fun tp!1396499 () Bool)

(assert (=> b!4981234 (= e!3113324 (and tp!1396498 tp!1396499))))

(assert (= (and b!4980454 ((_ is ElementMatch!13685) (regOne!27882 (regex!8452 rule!200)))) b!4981233))

(assert (= (and b!4980454 ((_ is Concat!22447) (regOne!27882 (regex!8452 rule!200)))) b!4981234))

(assert (= (and b!4980454 ((_ is Star!13685) (regOne!27882 (regex!8452 rule!200)))) b!4981235))

(assert (= (and b!4980454 ((_ is Union!13685) (regOne!27882 (regex!8452 rule!200)))) b!4981236))

(declare-fun e!3113325 () Bool)

(assert (=> b!4980454 (= tp!1396399 e!3113325)))

(declare-fun b!4981240 () Bool)

(declare-fun tp!1396502 () Bool)

(declare-fun tp!1396505 () Bool)

(assert (=> b!4981240 (= e!3113325 (and tp!1396502 tp!1396505))))

(declare-fun b!4981239 () Bool)

(declare-fun tp!1396501 () Bool)

(assert (=> b!4981239 (= e!3113325 tp!1396501)))

(declare-fun b!4981237 () Bool)

(assert (=> b!4981237 (= e!3113325 tp_is_empty!36375)))

(declare-fun b!4981238 () Bool)

(declare-fun tp!1396503 () Bool)

(declare-fun tp!1396504 () Bool)

(assert (=> b!4981238 (= e!3113325 (and tp!1396503 tp!1396504))))

(assert (= (and b!4980454 ((_ is ElementMatch!13685) (regTwo!27882 (regex!8452 rule!200)))) b!4981237))

(assert (= (and b!4980454 ((_ is Concat!22447) (regTwo!27882 (regex!8452 rule!200)))) b!4981238))

(assert (= (and b!4980454 ((_ is Star!13685) (regTwo!27882 (regex!8452 rule!200)))) b!4981239))

(assert (= (and b!4980454 ((_ is Union!13685) (regTwo!27882 (regex!8452 rule!200)))) b!4981240))

(declare-fun b!4981241 () Bool)

(declare-fun e!3113326 () Bool)

(declare-fun tp!1396506 () Bool)

(assert (=> b!4981241 (= e!3113326 (and tp_is_empty!36375 tp!1396506))))

(assert (=> b!4980442 (= tp!1396384 e!3113326)))

(assert (= (and b!4980442 ((_ is Cons!57576) (innerList!15292 (xs!18530 (c!849710 input!1580))))) b!4981241))

(declare-fun tp!1396509 () Bool)

(declare-fun tp!1396507 () Bool)

(declare-fun e!3113328 () Bool)

(declare-fun b!4981242 () Bool)

(assert (=> b!4981242 (= e!3113328 (and (inv!75395 (left!42080 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))) tp!1396509 (inv!75395 (right!42410 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))) tp!1396507))))

(declare-fun b!4981244 () Bool)

(declare-fun e!3113327 () Bool)

(declare-fun tp!1396508 () Bool)

(assert (=> b!4981244 (= e!3113327 tp!1396508)))

(declare-fun b!4981243 () Bool)

(assert (=> b!4981243 (= e!3113328 (and (inv!75403 (xs!18530 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))) e!3113327))))

(assert (=> b!4980462 (= tp!1396404 (and (inv!75395 (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338))))) e!3113328))))

(assert (= (and b!4980462 ((_ is Node!15204) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))) b!4981242))

(assert (= b!4981243 b!4981244))

(assert (= (and b!4980462 ((_ is Leaf!25255) (c!849710 (dynLambda!23340 (toChars!11294 (transformation!8452 rule!200)) (dynLambda!23339 (toValue!11435 (transformation!8452 rule!200)) (_1!34553 lt!2057338)))))) b!4981243))

(declare-fun m!6012356 () Bool)

(assert (=> b!4981242 m!6012356))

(declare-fun m!6012358 () Bool)

(assert (=> b!4981242 m!6012358))

(declare-fun m!6012360 () Bool)

(assert (=> b!4981243 m!6012360))

(assert (=> b!4980462 m!6011338))

(declare-fun e!3113329 () Bool)

(assert (=> b!4980455 (= tp!1396396 e!3113329)))

(declare-fun b!4981248 () Bool)

(declare-fun tp!1396511 () Bool)

(declare-fun tp!1396514 () Bool)

(assert (=> b!4981248 (= e!3113329 (and tp!1396511 tp!1396514))))

(declare-fun b!4981247 () Bool)

(declare-fun tp!1396510 () Bool)

(assert (=> b!4981247 (= e!3113329 tp!1396510)))

(declare-fun b!4981245 () Bool)

(assert (=> b!4981245 (= e!3113329 tp_is_empty!36375)))

(declare-fun b!4981246 () Bool)

(declare-fun tp!1396512 () Bool)

(declare-fun tp!1396513 () Bool)

(assert (=> b!4981246 (= e!3113329 (and tp!1396512 tp!1396513))))

(assert (= (and b!4980455 ((_ is ElementMatch!13685) (reg!14014 (regex!8452 rule!200)))) b!4981245))

(assert (= (and b!4980455 ((_ is Concat!22447) (reg!14014 (regex!8452 rule!200)))) b!4981246))

(assert (= (and b!4980455 ((_ is Star!13685) (reg!14014 (regex!8452 rule!200)))) b!4981247))

(assert (= (and b!4980455 ((_ is Union!13685) (reg!14014 (regex!8452 rule!200)))) b!4981248))

(declare-fun b_lambda!197795 () Bool)

(assert (= b_lambda!197791 (or b!4980068 b_lambda!197795)))

(assert (=> d!1604051 d!1603735))

(declare-fun b_lambda!197797 () Bool)

(assert (= b_lambda!197785 (or (and b!4980070 b_free!133107) b_lambda!197797)))

(declare-fun b_lambda!197799 () Bool)

(assert (= b_lambda!197787 (or (and b!4980070 b_free!133107) b_lambda!197799)))

(declare-fun b_lambda!197801 () Bool)

(assert (= b_lambda!197783 (or (and b!4980070 b_free!133109) b_lambda!197801)))

(declare-fun b_lambda!197803 () Bool)

(assert (= b_lambda!197793 (or b!4980068 b_lambda!197803)))

(assert (=> d!1604091 d!1603737))

(check-sat (not b!4981243) (not b!4981215) (not b!4981182) (not d!1603869) (not b!4980837) (not b!4981213) (not d!1603985) (not b_lambda!197795) (not b!4981238) (not b_lambda!197797) (not b!4980462) (not b!4981047) (not d!1604047) (not b!4981020) (not b!4980690) (not d!1604117) (not b!4980731) (not b!4981204) (not b!4981212) (not b!4981197) (not b!4981072) (not b!4981246) (not d!1604029) (not b!4981220) (not b!4981003) (not b!4981217) (not tb!261593) (not bm!347444) (not d!1604111) (not d!1603947) (not b!4981200) (not b!4980753) (not b!4981185) (not b!4981178) (not b!4981226) (not b!4980760) (not d!1604019) (not b!4981068) (not b!4981161) b_and!349601 (not b!4981193) (not b_lambda!197751) (not b!4981188) (not d!1604055) (not b!4981201) (not bm!347450) (not b!4980799) (not d!1604105) (not bm!347445) (not b!4981102) (not b_next!133899) (not d!1604013) (not b!4981083) (not b_lambda!197731) (not b!4981019) (not b!4980744) (not b!4980689) (not b!4981240) (not b!4981157) (not b!4981150) (not b!4981049) (not b!4981207) (not b!4981103) (not d!1604083) (not d!1604085) (not d!1604071) (not b!4981027) (not b_lambda!197727) tp_is_empty!36375 (not d!1604061) (not b!4981057) (not b!4981084) (not bm!347442) (not b!4980802) (not d!1604005) (not tb!261597) (not d!1604037) (not d!1604015) (not tb!261595) (not d!1603991) (not b!4981214) (not b!4980695) (not b!4980751) (not b!4980750) (not b!4981090) (not d!1604053) (not b!4981171) (not b_lambda!197803) (not b!4981230) (not bm!347396) (not bm!347446) (not b!4981218) (not b!4981046) (not b!4981074) (not b!4981117) (not b!4980773) (not b!4980894) (not d!1603967) (not d!1604089) (not bm!347403) (not b!4981239) (not b!4981202) (not b!4981092) (not b!4980752) (not b!4980681) b_and!349595 (not b_lambda!197753) (not bm!347404) (not d!1603851) (not b!4981091) (not d!1604041) (not d!1604113) (not b!4981172) (not d!1604031) (not b!4981210) (not b!4981069) (not bm!347440) (not b!4980880) (not b!4981111) (not b_lambda!197757) (not bm!347433) (not b_lambda!197769) (not b!4980688) (not b!4981087) (not b!4981235) (not b!4980440) (not b!4981156) (not b!4980838) (not b!4981248) (not d!1603871) (not b_lambda!197799) (not b!4981227) (not b_next!133897) (not b!4981163) (not b!4981044) (not b!4981192) (not b!4981179) (not b!4981166) (not d!1603951) (not b_lambda!197801) (not b!4980679) (not d!1603923) (not b!4981089) (not d!1603845) (not b!4981219) (not b!4981211) (not bm!347437) (not d!1603943) (not d!1603905) (not d!1603887) (not b!4981208) (not b!4981234) (not d!1604009) (not b_lambda!197789) (not b!4981247) (not b!4981039) (not bm!347447) (not b!4981232) (not b!4981241) (not d!1604075) (not d!1603867) (not b!4980437) (not b!4981073) (not b!4981196) (not b!4981018) (not b!4981033) (not b!4981155) (not b_lambda!197755) (not b!4981094) (not b!4980682) (not b!4981189) (not b!4981095) (not b!4980803) (not b!4980834) (not b!4981176) (not b!4981149) (not d!1603931) (not b!4980800) (not b!4981242) (not b!4981137) (not b!4980707) (not b!4980461) (not bm!347406) (not b!4980798) (not b!4981231) (not b!4981026) (not b!4981244) (not tb!261591) (not b!4981152) (not b!4981145) (not b!4981099) (not b!4980881) (not bm!347432) (not b!4980801) (not b!4980833) (not d!1604109) (not d!1604043) (not b!4981216) (not b!4981029) (not b!4981221) (not d!1603993) (not b!4981206) (not d!1603893) (not b!4981173) (not b!4981175) (not b!4981028) (not b_lambda!197729) (not bm!347441) (not b!4981101) (not bm!347438) (not d!1603995) (not b!4980879) (not d!1603987) (not b!4981148) (not d!1604107) (not b!4980757) (not d!1603929) (not b!4981088) (not b!4981184) (not b!4981051) (not b!4980691) (not b!4981236) (not bm!347443) (not b!4980697) (not d!1604099) (not bm!347435) (not b!4981229) (not b!4981228) (not d!1604035) (not d!1604081) (not d!1604087) (not d!1604027) (not d!1604079) (not d!1604103) (not b!4981158))
(check-sat b_and!349595 b_and!349601 (not b_next!133899) (not b_next!133897))
