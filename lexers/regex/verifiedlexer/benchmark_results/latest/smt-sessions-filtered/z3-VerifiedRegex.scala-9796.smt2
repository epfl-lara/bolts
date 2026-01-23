; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511672 () Bool)

(assert start!511672)

(declare-fun b!4888352 () Bool)

(declare-fun b_free!131411 () Bool)

(declare-fun b_next!132201 () Bool)

(assert (=> b!4888352 (= b_free!131411 (not b_next!132201))))

(declare-fun tp!1375851 () Bool)

(declare-fun b_and!344243 () Bool)

(assert (=> b!4888352 (= tp!1375851 b_and!344243)))

(declare-fun b_free!131413 () Bool)

(declare-fun b_next!132203 () Bool)

(assert (=> b!4888352 (= b_free!131413 (not b_next!132203))))

(declare-fun tp!1375854 () Bool)

(declare-fun b_and!344245 () Bool)

(assert (=> b!4888352 (= tp!1375854 b_and!344245)))

(declare-fun b!4888348 () Bool)

(declare-fun b_free!131415 () Bool)

(declare-fun b_next!132205 () Bool)

(assert (=> b!4888348 (= b_free!131415 (not b_next!132205))))

(declare-fun tp!1375849 () Bool)

(declare-fun b_and!344247 () Bool)

(assert (=> b!4888348 (= tp!1375849 b_and!344247)))

(declare-fun b_free!131417 () Bool)

(declare-fun b_next!132207 () Bool)

(assert (=> b!4888348 (= b_free!131417 (not b_next!132207))))

(declare-fun tp!1375850 () Bool)

(declare-fun b_and!344249 () Bool)

(assert (=> b!4888348 (= tp!1375850 b_and!344249)))

(declare-fun b!4888342 () Bool)

(declare-datatypes ((C!26668 0))(
  ( (C!26669 (val!22668 Int)) )
))
(declare-datatypes ((List!56485 0))(
  ( (Nil!56361) (Cons!56361 (h!62809 C!26668) (t!365131 List!56485)) )
))
(declare-datatypes ((IArray!29517 0))(
  ( (IArray!29518 (innerList!14816 List!56485)) )
))
(declare-datatypes ((Conc!14728 0))(
  ( (Node!14728 (left!40934 Conc!14728) (right!41264 Conc!14728) (csize!29686 Int) (cheight!14939 Int)) (Leaf!24525 (xs!18044 IArray!29517) (csize!29687 Int)) (Empty!14728) )
))
(declare-datatypes ((BalanceConc!28886 0))(
  ( (BalanceConc!28887 (c!830901 Conc!14728)) )
))
(declare-datatypes ((List!56486 0))(
  ( (Nil!56362) (Cons!56362 (h!62810 (_ BitVec 16)) (t!365132 List!56486)) )
))
(declare-datatypes ((TokenValue!8470 0))(
  ( (FloatLiteralValue!16940 (text!59735 List!56486)) (TokenValueExt!8469 (__x!34233 Int)) (Broken!42350 (value!261686 List!56486)) (Object!8593) (End!8470) (Def!8470) (Underscore!8470) (Match!8470) (Else!8470) (Error!8470) (Case!8470) (If!8470) (Extends!8470) (Abstract!8470) (Class!8470) (Val!8470) (DelimiterValue!16940 (del!8530 List!56486)) (KeywordValue!8476 (value!261687 List!56486)) (CommentValue!16940 (value!261688 List!56486)) (WhitespaceValue!16940 (value!261689 List!56486)) (IndentationValue!8470 (value!261690 List!56486)) (String!63791) (Int32!8470) (Broken!42351 (value!261691 List!56486)) (Boolean!8471) (Unit!146351) (OperatorValue!8473 (op!8530 List!56486)) (IdentifierValue!16940 (value!261692 List!56486)) (IdentifierValue!16941 (value!261693 List!56486)) (WhitespaceValue!16941 (value!261694 List!56486)) (True!16940) (False!16940) (Broken!42352 (value!261695 List!56486)) (Broken!42353 (value!261696 List!56486)) (True!16941) (RightBrace!8470) (RightBracket!8470) (Colon!8470) (Null!8470) (Comma!8470) (LeftBracket!8470) (False!16941) (LeftBrace!8470) (ImaginaryLiteralValue!8470 (text!59736 List!56486)) (StringLiteralValue!25410 (value!261697 List!56486)) (EOFValue!8470 (value!261698 List!56486)) (IdentValue!8470 (value!261699 List!56486)) (DelimiterValue!16941 (value!261700 List!56486)) (DedentValue!8470 (value!261701 List!56486)) (NewLineValue!8470 (value!261702 List!56486)) (IntegerValue!25410 (value!261703 (_ BitVec 32)) (text!59737 List!56486)) (IntegerValue!25411 (value!261704 Int) (text!59738 List!56486)) (Times!8470) (Or!8470) (Equal!8470) (Minus!8470) (Broken!42354 (value!261705 List!56486)) (And!8470) (Div!8470) (LessEqual!8470) (Mod!8470) (Concat!21705) (Not!8470) (Plus!8470) (SpaceValue!8470 (value!261706 List!56486)) (IntegerValue!25412 (value!261707 Int) (text!59739 List!56486)) (StringLiteralValue!25411 (text!59740 List!56486)) (FloatLiteralValue!16941 (text!59741 List!56486)) (BytesLiteralValue!8470 (value!261708 List!56486)) (CommentValue!16941 (value!261709 List!56486)) (StringLiteralValue!25412 (value!261710 List!56486)) (ErrorTokenValue!8470 (msg!8531 List!56486)) )
))
(declare-datatypes ((Regex!13235 0))(
  ( (ElementMatch!13235 (c!830902 C!26668)) (Concat!21706 (regOne!26982 Regex!13235) (regTwo!26982 Regex!13235)) (EmptyExpr!13235) (Star!13235 (reg!13564 Regex!13235)) (EmptyLang!13235) (Union!13235 (regOne!26983 Regex!13235) (regTwo!26983 Regex!13235)) )
))
(declare-datatypes ((String!63792 0))(
  ( (String!63793 (value!261711 String)) )
))
(declare-datatypes ((TokenValueInjection!16248 0))(
  ( (TokenValueInjection!16249 (toValue!11047 Int) (toChars!10906 Int)) )
))
(declare-datatypes ((Rule!16120 0))(
  ( (Rule!16121 (regex!8160 Regex!13235) (tag!9024 String!63792) (isSeparator!8160 Bool) (transformation!8160 TokenValueInjection!16248)) )
))
(declare-datatypes ((Token!14888 0))(
  ( (Token!14889 (value!261712 TokenValue!8470) (rule!11338 Rule!16120) (size!37106 Int) (originalCharacters!8475 List!56485)) )
))
(declare-datatypes ((tuple2!60380 0))(
  ( (tuple2!60381 (_1!33493 Token!14888) (_2!33493 BalanceConc!28886)) )
))
(declare-datatypes ((Option!14001 0))(
  ( (None!14000) (Some!14000 (v!49950 tuple2!60380)) )
))
(declare-fun err!4505 () Option!14001)

(declare-fun tp!1375857 () Bool)

(declare-fun e!3055976 () Bool)

(declare-fun e!3055981 () Bool)

(declare-fun inv!21 (TokenValue!8470) Bool)

(assert (=> b!4888342 (= e!3055976 (and (inv!21 (value!261712 (_1!33493 (v!49950 err!4505)))) e!3055981 tp!1375857))))

(declare-fun e!3055984 () Bool)

(declare-fun tp!1375852 () Bool)

(declare-fun e!3055978 () Bool)

(declare-fun b!4888343 () Bool)

(declare-datatypes ((List!56487 0))(
  ( (Nil!56363) (Cons!56363 (h!62811 Rule!16120) (t!365133 List!56487)) )
))
(declare-fun rulesArg!165 () List!56487)

(declare-fun inv!72583 (String!63792) Bool)

(declare-fun inv!72588 (TokenValueInjection!16248) Bool)

(assert (=> b!4888343 (= e!3055978 (and tp!1375852 (inv!72583 (tag!9024 (h!62811 rulesArg!165))) (inv!72588 (transformation!8160 (h!62811 rulesArg!165))) e!3055984))))

(declare-fun b!4888344 () Bool)

(declare-fun e!3055986 () Bool)

(declare-fun tp!1375853 () Bool)

(declare-fun inv!72589 (Conc!14728) Bool)

(assert (=> b!4888344 (= e!3055986 (and (inv!72589 (c!830901 (_2!33493 (v!49950 err!4505)))) tp!1375853))))

(declare-fun b!4888346 () Bool)

(declare-fun res!2087660 () Bool)

(declare-fun e!3055974 () Bool)

(assert (=> b!4888346 (=> (not res!2087660) (not e!3055974))))

(declare-fun isEmpty!30214 (List!56487) Bool)

(assert (=> b!4888346 (= res!2087660 (not (isEmpty!30214 rulesArg!165)))))

(declare-fun e!3055980 () Bool)

(declare-fun tp!1375848 () Bool)

(declare-fun b!4888347 () Bool)

(assert (=> b!4888347 (= e!3055981 (and tp!1375848 (inv!72583 (tag!9024 (rule!11338 (_1!33493 (v!49950 err!4505))))) (inv!72588 (transformation!8160 (rule!11338 (_1!33493 (v!49950 err!4505))))) e!3055980))))

(assert (=> b!4888348 (= e!3055984 (and tp!1375849 tp!1375850))))

(declare-fun b!4888349 () Bool)

(declare-fun e!3055983 () Bool)

(assert (=> b!4888349 (= e!3055983 true)))

(declare-fun lt!2003496 () Bool)

(declare-fun e!3055977 () Bool)

(assert (=> b!4888349 (= lt!2003496 e!3055977)))

(declare-fun res!2087656 () Bool)

(assert (=> b!4888349 (=> res!2087656 e!3055977)))

(declare-fun lt!2003503 () Bool)

(assert (=> b!4888349 (= res!2087656 (not lt!2003503))))

(declare-fun b!4888350 () Bool)

(declare-fun e!3055979 () Bool)

(declare-fun tp!1375855 () Bool)

(assert (=> b!4888350 (= e!3055979 (and e!3055978 tp!1375855))))

(declare-fun b!4888351 () Bool)

(declare-fun res!2087654 () Bool)

(assert (=> b!4888351 (=> (not res!2087654) (not e!3055974))))

(declare-datatypes ((LexerInterface!7752 0))(
  ( (LexerInterfaceExt!7749 (__x!34234 Int)) (Lexer!7750) )
))
(declare-fun thiss!14805 () LexerInterface!7752)

(declare-fun rulesValidInductive!3139 (LexerInterface!7752 List!56487) Bool)

(assert (=> b!4888351 (= res!2087654 (rulesValidInductive!3139 thiss!14805 rulesArg!165))))

(assert (=> b!4888352 (= e!3055980 (and tp!1375851 tp!1375854))))

(declare-fun b!4888345 () Bool)

(declare-fun e!3055990 () Bool)

(declare-fun input!1236 () BalanceConc!28886)

(declare-fun tp!1375856 () Bool)

(assert (=> b!4888345 (= e!3055990 (and (inv!72589 (c!830901 input!1236)) tp!1375856))))

(declare-fun res!2087657 () Bool)

(assert (=> start!511672 (=> (not res!2087657) (not e!3055974))))

(get-info :version)

(assert (=> start!511672 (= res!2087657 ((_ is Lexer!7750) thiss!14805))))

(assert (=> start!511672 e!3055974))

(assert (=> start!511672 true))

(assert (=> start!511672 e!3055979))

(declare-fun inv!72590 (BalanceConc!28886) Bool)

(assert (=> start!511672 (and (inv!72590 input!1236) e!3055990)))

(declare-fun b!4888353 () Bool)

(declare-fun e!3055985 () Bool)

(declare-fun inv!72591 (Token!14888) Bool)

(assert (=> b!4888353 (= e!3055985 (and (inv!72591 (_1!33493 (v!49950 err!4505))) e!3055976 (inv!72590 (_2!33493 (v!49950 err!4505))) e!3055986))))

(declare-fun b!4888354 () Bool)

(declare-fun e!3055982 () Bool)

(assert (=> b!4888354 (= e!3055974 (not e!3055982))))

(declare-fun res!2087659 () Bool)

(assert (=> b!4888354 (=> res!2087659 e!3055982)))

(assert (=> b!4888354 (= res!2087659 (or (and ((_ is Cons!56363) rulesArg!165) ((_ is Nil!56363) (t!365133 rulesArg!165))) ((_ is Cons!56363) rulesArg!165)))))

(declare-fun lt!2003500 () List!56485)

(declare-fun isPrefix!4882 (List!56485 List!56485) Bool)

(assert (=> b!4888354 (isPrefix!4882 lt!2003500 lt!2003500)))

(declare-datatypes ((Unit!146352 0))(
  ( (Unit!146353) )
))
(declare-fun lt!2003499 () Unit!146352)

(declare-fun lemmaIsPrefixRefl!3279 (List!56485 List!56485) Unit!146352)

(assert (=> b!4888354 (= lt!2003499 (lemmaIsPrefixRefl!3279 lt!2003500 lt!2003500))))

(declare-fun list!17700 (BalanceConc!28886) List!56485)

(assert (=> b!4888354 (= lt!2003500 (list!17700 input!1236))))

(declare-fun b!4888355 () Bool)

(declare-fun e!3055987 () Bool)

(assert (=> b!4888355 (= e!3055977 e!3055987)))

(declare-fun res!2087658 () Bool)

(assert (=> b!4888355 (=> (not res!2087658) (not e!3055987))))

(declare-fun lt!2003498 () tuple2!60380)

(declare-datatypes ((tuple2!60382 0))(
  ( (tuple2!60383 (_1!33494 Token!14888) (_2!33494 List!56485)) )
))
(declare-fun lt!2003502 () tuple2!60382)

(assert (=> b!4888355 (= res!2087658 (= (_1!33493 lt!2003498) (_1!33494 lt!2003502)))))

(declare-datatypes ((Option!14002 0))(
  ( (None!14001) (Some!14001 (v!49951 tuple2!60382)) )
))
(declare-fun lt!2003497 () Option!14002)

(declare-fun get!19447 (Option!14002) tuple2!60382)

(assert (=> b!4888355 (= lt!2003502 (get!19447 lt!2003497))))

(declare-fun lt!2003501 () Option!14001)

(declare-fun get!19448 (Option!14001) tuple2!60380)

(assert (=> b!4888355 (= lt!2003498 (get!19448 lt!2003501))))

(declare-fun b!4888356 () Bool)

(assert (=> b!4888356 (= e!3055987 (= (list!17700 (_2!33493 lt!2003498)) (_2!33494 lt!2003502)))))

(declare-fun b!4888357 () Bool)

(assert (=> b!4888357 (= e!3055982 e!3055983)))

(declare-fun res!2087655 () Bool)

(assert (=> b!4888357 (=> res!2087655 e!3055983)))

(declare-fun isDefined!11014 (Option!14002) Bool)

(assert (=> b!4888357 (= res!2087655 (not (= lt!2003503 (isDefined!11014 lt!2003497))))))

(declare-fun isDefined!11015 (Option!14001) Bool)

(assert (=> b!4888357 (= lt!2003503 (isDefined!11015 lt!2003501))))

(declare-fun maxPrefixZipper!663 (LexerInterface!7752 List!56487 List!56485) Option!14002)

(assert (=> b!4888357 (= lt!2003497 (maxPrefixZipper!663 thiss!14805 rulesArg!165 lt!2003500))))

(assert (=> b!4888357 (= lt!2003501 err!4505)))

(assert (=> b!4888357 true))

(assert (=> b!4888357 e!3055985))

(assert (= (and start!511672 res!2087657) b!4888351))

(assert (= (and b!4888351 res!2087654) b!4888346))

(assert (= (and b!4888346 res!2087660) b!4888354))

(assert (= (and b!4888354 (not res!2087659)) b!4888357))

(assert (= b!4888347 b!4888352))

(assert (= b!4888342 b!4888347))

(assert (= b!4888353 b!4888342))

(assert (= b!4888353 b!4888344))

(assert (= (and b!4888357 ((_ is Some!14000) err!4505)) b!4888353))

(assert (= (and b!4888357 (not res!2087655)) b!4888349))

(assert (= (and b!4888349 (not res!2087656)) b!4888355))

(assert (= (and b!4888355 res!2087658) b!4888356))

(assert (= b!4888343 b!4888348))

(assert (= b!4888350 b!4888343))

(assert (= (and start!511672 ((_ is Cons!56363) rulesArg!165)) b!4888350))

(assert (= start!511672 b!4888345))

(declare-fun m!5891982 () Bool)

(assert (=> b!4888344 m!5891982))

(declare-fun m!5891984 () Bool)

(assert (=> b!4888356 m!5891984))

(declare-fun m!5891986 () Bool)

(assert (=> b!4888342 m!5891986))

(declare-fun m!5891988 () Bool)

(assert (=> b!4888345 m!5891988))

(declare-fun m!5891990 () Bool)

(assert (=> b!4888346 m!5891990))

(declare-fun m!5891992 () Bool)

(assert (=> b!4888351 m!5891992))

(declare-fun m!5891994 () Bool)

(assert (=> b!4888355 m!5891994))

(declare-fun m!5891996 () Bool)

(assert (=> b!4888355 m!5891996))

(declare-fun m!5891998 () Bool)

(assert (=> b!4888353 m!5891998))

(declare-fun m!5892000 () Bool)

(assert (=> b!4888353 m!5892000))

(declare-fun m!5892002 () Bool)

(assert (=> b!4888354 m!5892002))

(declare-fun m!5892004 () Bool)

(assert (=> b!4888354 m!5892004))

(declare-fun m!5892006 () Bool)

(assert (=> b!4888354 m!5892006))

(declare-fun m!5892008 () Bool)

(assert (=> b!4888347 m!5892008))

(declare-fun m!5892010 () Bool)

(assert (=> b!4888347 m!5892010))

(declare-fun m!5892012 () Bool)

(assert (=> b!4888343 m!5892012))

(declare-fun m!5892014 () Bool)

(assert (=> b!4888343 m!5892014))

(declare-fun m!5892016 () Bool)

(assert (=> start!511672 m!5892016))

(declare-fun m!5892018 () Bool)

(assert (=> b!4888357 m!5892018))

(declare-fun m!5892020 () Bool)

(assert (=> b!4888357 m!5892020))

(declare-fun m!5892022 () Bool)

(assert (=> b!4888357 m!5892022))

(check-sat (not b!4888355) (not b!4888354) b_and!344247 (not b!4888353) (not b!4888346) b_and!344249 (not b!4888345) (not b!4888351) (not b_next!132203) (not b!4888343) (not b!4888342) (not b!4888350) (not b_next!132207) (not b!4888347) (not b!4888357) (not b_next!132205) (not b!4888356) b_and!344243 (not start!511672) b_and!344245 (not b!4888344) (not b_next!132201))
(check-sat b_and!344247 (not b_next!132207) b_and!344249 (not b_next!132205) b_and!344243 b_and!344245 (not b_next!132201) (not b_next!132203))
