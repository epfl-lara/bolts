; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!524424 () Bool)

(assert start!524424)

(declare-fun b!4971386 () Bool)

(declare-fun b_free!132823 () Bool)

(declare-fun b_next!133613 () Bool)

(assert (=> b!4971386 (= b_free!132823 (not b_next!133613))))

(declare-fun tp!1394146 () Bool)

(declare-fun b_and!348715 () Bool)

(assert (=> b!4971386 (= tp!1394146 b_and!348715)))

(declare-fun b_free!132825 () Bool)

(declare-fun b_next!133615 () Bool)

(assert (=> b!4971386 (= b_free!132825 (not b_next!133615))))

(declare-fun tp!1394143 () Bool)

(declare-fun b_and!348717 () Bool)

(assert (=> b!4971386 (= tp!1394143 b_and!348717)))

(declare-fun b!4971381 () Bool)

(declare-fun e!3107133 () Bool)

(declare-fun e!3107132 () Bool)

(assert (=> b!4971381 (= e!3107133 e!3107132)))

(declare-fun res!2122003 () Bool)

(assert (=> b!4971381 (=> res!2122003 e!3107132)))

(declare-datatypes ((List!57580 0))(
  ( (Nil!57456) (Cons!57456 (h!63904 (_ BitVec 16)) (t!369110 List!57580)) )
))
(declare-datatypes ((TokenValue!8707 0))(
  ( (FloatLiteralValue!17414 (text!61394 List!57580)) (TokenValueExt!8706 (__x!34707 Int)) (Broken!43535 (value!268730 List!57580)) (Object!8830) (End!8707) (Def!8707) (Underscore!8707) (Match!8707) (Else!8707) (Error!8707) (Case!8707) (If!8707) (Extends!8707) (Abstract!8707) (Class!8707) (Val!8707) (DelimiterValue!17414 (del!8767 List!57580)) (KeywordValue!8713 (value!268731 List!57580)) (CommentValue!17414 (value!268732 List!57580)) (WhitespaceValue!17414 (value!268733 List!57580)) (IndentationValue!8707 (value!268734 List!57580)) (String!65410) (Int32!8707) (Broken!43536 (value!268735 List!57580)) (Boolean!8708) (Unit!148414) (OperatorValue!8710 (op!8767 List!57580)) (IdentifierValue!17414 (value!268736 List!57580)) (IdentifierValue!17415 (value!268737 List!57580)) (WhitespaceValue!17415 (value!268738 List!57580)) (True!17414) (False!17414) (Broken!43537 (value!268739 List!57580)) (Broken!43538 (value!268740 List!57580)) (True!17415) (RightBrace!8707) (RightBracket!8707) (Colon!8707) (Null!8707) (Comma!8707) (LeftBracket!8707) (False!17415) (LeftBrace!8707) (ImaginaryLiteralValue!8707 (text!61395 List!57580)) (StringLiteralValue!26121 (value!268741 List!57580)) (EOFValue!8707 (value!268742 List!57580)) (IdentValue!8707 (value!268743 List!57580)) (DelimiterValue!17415 (value!268744 List!57580)) (DedentValue!8707 (value!268745 List!57580)) (NewLineValue!8707 (value!268746 List!57580)) (IntegerValue!26121 (value!268747 (_ BitVec 32)) (text!61396 List!57580)) (IntegerValue!26122 (value!268748 Int) (text!61397 List!57580)) (Times!8707) (Or!8707) (Equal!8707) (Minus!8707) (Broken!43539 (value!268749 List!57580)) (And!8707) (Div!8707) (LessEqual!8707) (Mod!8707) (Concat!22337) (Not!8707) (Plus!8707) (SpaceValue!8707 (value!268750 List!57580)) (IntegerValue!26123 (value!268751 Int) (text!61398 List!57580)) (StringLiteralValue!26122 (text!61399 List!57580)) (FloatLiteralValue!17415 (text!61400 List!57580)) (BytesLiteralValue!8707 (value!268752 List!57580)) (CommentValue!17415 (value!268753 List!57580)) (StringLiteralValue!26123 (value!268754 List!57580)) (ErrorTokenValue!8707 (msg!8768 List!57580)) )
))
(declare-datatypes ((C!27510 0))(
  ( (C!27511 (val!23121 Int)) )
))
(declare-datatypes ((Regex!13630 0))(
  ( (ElementMatch!13630 (c!848310 C!27510)) (Concat!22338 (regOne!27772 Regex!13630) (regTwo!27772 Regex!13630)) (EmptyExpr!13630) (Star!13630 (reg!13959 Regex!13630)) (EmptyLang!13630) (Union!13630 (regOne!27773 Regex!13630) (regTwo!27773 Regex!13630)) )
))
(declare-datatypes ((String!65411 0))(
  ( (String!65412 (value!268755 String)) )
))
(declare-datatypes ((List!57581 0))(
  ( (Nil!57457) (Cons!57457 (h!63905 C!27510) (t!369111 List!57581)) )
))
(declare-datatypes ((IArray!30359 0))(
  ( (IArray!30360 (innerList!15237 List!57581)) )
))
(declare-datatypes ((Conc!15149 0))(
  ( (Node!15149 (left!41914 Conc!15149) (right!42244 Conc!15149) (csize!30528 Int) (cheight!15360 Int)) (Leaf!25173 (xs!18475 IArray!30359) (csize!30529 Int)) (Empty!15149) )
))
(declare-datatypes ((BalanceConc!29728 0))(
  ( (BalanceConc!29729 (c!848311 Conc!15149)) )
))
(declare-datatypes ((TokenValueInjection!16722 0))(
  ( (TokenValueInjection!16723 (toValue!11364 Int) (toChars!11223 Int)) )
))
(declare-datatypes ((Rule!16594 0))(
  ( (Rule!16595 (regex!8397 Regex!13630) (tag!9261 String!65411) (isSeparator!8397 Bool) (transformation!8397 TokenValueInjection!16722)) )
))
(declare-datatypes ((Token!15290 0))(
  ( (Token!15291 (value!268756 TokenValue!8707) (rule!11653 Rule!16594) (size!38086 Int) (originalCharacters!8676 List!57581)) )
))
(declare-datatypes ((tuple2!62196 0))(
  ( (tuple2!62197 (_1!34401 Token!15290) (_2!34401 BalanceConc!29728)) )
))
(declare-datatypes ((Option!14457 0))(
  ( (None!14456) (Some!14456 (v!50449 tuple2!62196)) )
))
(declare-fun lt!2052981 () Option!14457)

(declare-fun lt!2052983 () Option!14457)

(assert (=> b!4971381 (= res!2122003 (or (and (is-None!14456 lt!2052981) (is-None!14456 lt!2052983)) (is-None!14456 lt!2052983) (is-None!14456 lt!2052981) (< (size!38086 (_1!34401 (v!50449 lt!2052981))) (size!38086 (_1!34401 (v!50449 lt!2052983))))))))

(declare-fun input!1342 () BalanceConc!29728)

(declare-datatypes ((List!57582 0))(
  ( (Nil!57458) (Cons!57458 (h!63906 Rule!16594) (t!369112 List!57582)) )
))
(declare-fun rulesArg!259 () List!57582)

(declare-fun totalInput!464 () BalanceConc!29728)

(declare-datatypes ((LexerInterface!7989 0))(
  ( (LexerInterfaceExt!7986 (__x!34708 Int)) (Lexer!7987) )
))
(declare-fun thiss!15247 () LexerInterface!7989)

(declare-fun maxPrefixZipperSequenceV2!708 (LexerInterface!7989 List!57582 BalanceConc!29728 BalanceConc!29728) Option!14457)

(assert (=> b!4971381 (= lt!2052983 (maxPrefixZipperSequenceV2!708 thiss!15247 (t!369112 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!365 (LexerInterface!7989 Rule!16594 BalanceConc!29728 BalanceConc!29728) Option!14457)

(assert (=> b!4971381 (= lt!2052981 (maxPrefixOneRuleZipperSequenceV2!365 thiss!15247 (h!63906 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4971382 () Bool)

(declare-fun res!2122002 () Bool)

(declare-fun e!3107139 () Bool)

(assert (=> b!4971382 (=> (not res!2122002) (not e!3107139))))

(declare-fun rulesValidInductive!3300 (LexerInterface!7989 List!57582) Bool)

(assert (=> b!4971382 (= res!2122002 (rulesValidInductive!3300 thiss!15247 rulesArg!259))))

(declare-fun b!4971383 () Bool)

(declare-fun e!3107130 () Bool)

(declare-fun e!3107131 () Bool)

(assert (=> b!4971383 (= e!3107130 e!3107131)))

(declare-fun res!2122010 () Bool)

(assert (=> b!4971383 (=> res!2122010 e!3107131)))

(declare-fun lt!2052985 () Bool)

(assert (=> b!4971383 (= res!2122010 lt!2052985)))

(declare-fun b!4971384 () Bool)

(declare-fun e!3107134 () Bool)

(assert (=> b!4971384 (= e!3107134 e!3107130)))

(declare-fun res!2122011 () Bool)

(assert (=> b!4971384 (=> (not res!2122011) (not e!3107130))))

(declare-fun e!3107138 () Bool)

(assert (=> b!4971384 (= res!2122011 e!3107138)))

(declare-fun res!2122007 () Bool)

(assert (=> b!4971384 (=> res!2122007 e!3107138)))

(assert (=> b!4971384 (= res!2122007 lt!2052985)))

(declare-fun lt!2052979 () Bool)

(assert (=> b!4971384 (= lt!2052985 (not lt!2052979))))

(declare-fun b!4971385 () Bool)

(declare-fun e!3107135 () Bool)

(declare-fun e!3107142 () Bool)

(declare-fun tp!1394142 () Bool)

(declare-fun inv!75101 (String!65411) Bool)

(declare-fun inv!75104 (TokenValueInjection!16722) Bool)

(assert (=> b!4971385 (= e!3107135 (and tp!1394142 (inv!75101 (tag!9261 (h!63906 rulesArg!259))) (inv!75104 (transformation!8397 (h!63906 rulesArg!259))) e!3107142))))

(assert (=> b!4971386 (= e!3107142 (and tp!1394146 tp!1394143))))

(declare-fun b!4971387 () Bool)

(declare-fun e!3107145 () Bool)

(declare-fun tp!1394144 () Bool)

(declare-fun inv!75105 (Conc!15149) Bool)

(assert (=> b!4971387 (= e!3107145 (and (inv!75105 (c!848311 totalInput!464)) tp!1394144))))

(declare-fun b!4971388 () Bool)

(declare-fun e!3107141 () Bool)

(declare-fun tp!1394145 () Bool)

(assert (=> b!4971388 (= e!3107141 (and e!3107135 tp!1394145))))

(declare-fun b!4971389 () Bool)

(declare-fun e!3107144 () Bool)

(declare-fun tp!1394141 () Bool)

(assert (=> b!4971389 (= e!3107144 (and (inv!75105 (c!848311 input!1342)) tp!1394141))))

(declare-fun b!4971390 () Bool)

(declare-fun e!3107137 () Bool)

(declare-fun lt!2052980 () tuple2!62196)

(declare-datatypes ((tuple2!62198 0))(
  ( (tuple2!62199 (_1!34402 Token!15290) (_2!34402 List!57581)) )
))
(declare-fun lt!2052984 () tuple2!62198)

(declare-fun list!18377 (BalanceConc!29728) List!57581)

(assert (=> b!4971390 (= e!3107137 (= (list!18377 (_2!34401 lt!2052980)) (_2!34402 lt!2052984)))))

(declare-fun res!2122008 () Bool)

(assert (=> start!524424 (=> (not res!2122008) (not e!3107139))))

(assert (=> start!524424 (= res!2122008 (is-Lexer!7987 thiss!15247))))

(assert (=> start!524424 e!3107139))

(assert (=> start!524424 true))

(assert (=> start!524424 e!3107141))

(declare-fun inv!75106 (BalanceConc!29728) Bool)

(assert (=> start!524424 (and (inv!75106 input!1342) e!3107144)))

(assert (=> start!524424 (and (inv!75106 totalInput!464) e!3107145)))

(declare-fun b!4971391 () Bool)

(declare-fun res!2122009 () Bool)

(assert (=> b!4971391 (=> (not res!2122009) (not e!3107139))))

(declare-fun isEmpty!30957 (List!57582) Bool)

(assert (=> b!4971391 (= res!2122009 (not (isEmpty!30957 rulesArg!259)))))

(declare-fun b!4971392 () Bool)

(declare-fun e!3107143 () Bool)

(assert (=> b!4971392 (= e!3107139 e!3107143)))

(declare-fun res!2122012 () Bool)

(assert (=> b!4971392 (=> (not res!2122012) (not e!3107143))))

(declare-fun lt!2052978 () List!57581)

(declare-fun isSuffix!1196 (List!57581 List!57581) Bool)

(assert (=> b!4971392 (= res!2122012 (isSuffix!1196 lt!2052978 (list!18377 totalInput!464)))))

(assert (=> b!4971392 (= lt!2052978 (list!18377 input!1342))))

(declare-fun b!4971393 () Bool)

(assert (=> b!4971393 (= e!3107138 e!3107137)))

(declare-fun res!2122013 () Bool)

(assert (=> b!4971393 (=> (not res!2122013) (not e!3107137))))

(assert (=> b!4971393 (= res!2122013 (= (_1!34401 lt!2052980) (_1!34402 lt!2052984)))))

(declare-datatypes ((Option!14458 0))(
  ( (None!14457) (Some!14457 (v!50450 tuple2!62198)) )
))
(declare-fun lt!2052976 () Option!14458)

(declare-fun get!19950 (Option!14458) tuple2!62198)

(assert (=> b!4971393 (= lt!2052984 (get!19950 lt!2052976))))

(declare-fun get!19951 (Option!14457) tuple2!62196)

(assert (=> b!4971393 (= lt!2052980 (get!19951 lt!2052981))))

(declare-fun b!4971394 () Bool)

(assert (=> b!4971394 (= e!3107143 (not e!3107133))))

(declare-fun res!2122005 () Bool)

(assert (=> b!4971394 (=> res!2122005 e!3107133)))

(assert (=> b!4971394 (= res!2122005 (or (and (is-Cons!57458 rulesArg!259) (is-Nil!57458 (t!369112 rulesArg!259))) (not (is-Cons!57458 rulesArg!259))))))

(declare-fun isPrefix!5248 (List!57581 List!57581) Bool)

(assert (=> b!4971394 (isPrefix!5248 lt!2052978 lt!2052978)))

(declare-datatypes ((Unit!148415 0))(
  ( (Unit!148416) )
))
(declare-fun lt!2052982 () Unit!148415)

(declare-fun lemmaIsPrefixRefl!3572 (List!57581 List!57581) Unit!148415)

(assert (=> b!4971394 (= lt!2052982 (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978))))

(declare-fun b!4971395 () Bool)

(declare-fun e!3107140 () Bool)

(declare-fun lt!2052975 () tuple2!62196)

(declare-fun lt!2052977 () tuple2!62198)

(assert (=> b!4971395 (= e!3107140 (= (list!18377 (_2!34401 lt!2052975)) (_2!34402 lt!2052977)))))

(declare-fun b!4971396 () Bool)

(assert (=> b!4971396 (= e!3107131 e!3107140)))

(declare-fun res!2122004 () Bool)

(assert (=> b!4971396 (=> (not res!2122004) (not e!3107140))))

(assert (=> b!4971396 (= res!2122004 (= (_1!34401 lt!2052975) (_1!34402 lt!2052977)))))

(declare-fun maxPrefix!4664 (LexerInterface!7989 List!57582 List!57581) Option!14458)

(assert (=> b!4971396 (= lt!2052977 (get!19950 (maxPrefix!4664 thiss!15247 rulesArg!259 lt!2052978)))))

(assert (=> b!4971396 (= lt!2052975 (get!19951 lt!2052981))))

(declare-fun b!4971397 () Bool)

(assert (=> b!4971397 (= e!3107132 e!3107134)))

(declare-fun res!2122006 () Bool)

(assert (=> b!4971397 (=> (not res!2122006) (not e!3107134))))

(declare-fun isDefined!11370 (Option!14458) Bool)

(assert (=> b!4971397 (= res!2122006 (= lt!2052979 (isDefined!11370 lt!2052976)))))

(declare-fun isDefined!11371 (Option!14457) Bool)

(assert (=> b!4971397 (= lt!2052979 (isDefined!11371 lt!2052981))))

(declare-fun maxPrefixZipper!790 (LexerInterface!7989 List!57582 List!57581) Option!14458)

(assert (=> b!4971397 (= lt!2052976 (maxPrefixZipper!790 thiss!15247 rulesArg!259 lt!2052978))))

(assert (= (and start!524424 res!2122008) b!4971382))

(assert (= (and b!4971382 res!2122002) b!4971391))

(assert (= (and b!4971391 res!2122009) b!4971392))

(assert (= (and b!4971392 res!2122012) b!4971394))

(assert (= (and b!4971394 (not res!2122005)) b!4971381))

(assert (= (and b!4971381 (not res!2122003)) b!4971397))

(assert (= (and b!4971397 res!2122006) b!4971384))

(assert (= (and b!4971384 (not res!2122007)) b!4971393))

(assert (= (and b!4971393 res!2122013) b!4971390))

(assert (= (and b!4971384 res!2122011) b!4971383))

(assert (= (and b!4971383 (not res!2122010)) b!4971396))

(assert (= (and b!4971396 res!2122004) b!4971395))

(assert (= b!4971385 b!4971386))

(assert (= b!4971388 b!4971385))

(assert (= (and start!524424 (is-Cons!57458 rulesArg!259)) b!4971388))

(assert (= start!524424 b!4971389))

(assert (= start!524424 b!4971387))

(declare-fun m!5999658 () Bool)

(assert (=> b!4971381 m!5999658))

(declare-fun m!5999660 () Bool)

(assert (=> b!4971381 m!5999660))

(declare-fun m!5999662 () Bool)

(assert (=> b!4971394 m!5999662))

(declare-fun m!5999664 () Bool)

(assert (=> b!4971394 m!5999664))

(declare-fun m!5999666 () Bool)

(assert (=> b!4971392 m!5999666))

(assert (=> b!4971392 m!5999666))

(declare-fun m!5999668 () Bool)

(assert (=> b!4971392 m!5999668))

(declare-fun m!5999670 () Bool)

(assert (=> b!4971392 m!5999670))

(declare-fun m!5999672 () Bool)

(assert (=> b!4971397 m!5999672))

(declare-fun m!5999674 () Bool)

(assert (=> b!4971397 m!5999674))

(declare-fun m!5999676 () Bool)

(assert (=> b!4971397 m!5999676))

(declare-fun m!5999678 () Bool)

(assert (=> b!4971387 m!5999678))

(declare-fun m!5999680 () Bool)

(assert (=> b!4971396 m!5999680))

(assert (=> b!4971396 m!5999680))

(declare-fun m!5999682 () Bool)

(assert (=> b!4971396 m!5999682))

(declare-fun m!5999684 () Bool)

(assert (=> b!4971396 m!5999684))

(declare-fun m!5999686 () Bool)

(assert (=> b!4971385 m!5999686))

(declare-fun m!5999688 () Bool)

(assert (=> b!4971385 m!5999688))

(declare-fun m!5999690 () Bool)

(assert (=> b!4971391 m!5999690))

(declare-fun m!5999692 () Bool)

(assert (=> b!4971389 m!5999692))

(declare-fun m!5999694 () Bool)

(assert (=> start!524424 m!5999694))

(declare-fun m!5999696 () Bool)

(assert (=> start!524424 m!5999696))

(declare-fun m!5999698 () Bool)

(assert (=> b!4971390 m!5999698))

(declare-fun m!5999700 () Bool)

(assert (=> b!4971393 m!5999700))

(assert (=> b!4971393 m!5999684))

(declare-fun m!5999702 () Bool)

(assert (=> b!4971395 m!5999702))

(declare-fun m!5999704 () Bool)

(assert (=> b!4971382 m!5999704))

(push 1)

(assert (not b!4971396))

(assert (not b!4971381))

(assert (not b!4971397))

(assert (not b!4971387))

(assert (not b!4971393))

(assert (not start!524424))

(assert (not b_next!133615))

(assert (not b!4971392))

(assert (not b!4971388))

(assert (not b!4971390))

(assert (not b!4971395))

(assert (not b_next!133613))

(assert b_and!348715)

(assert (not b!4971391))

(assert (not b!4971394))

(assert (not b!4971385))

(assert (not b!4971389))

(assert (not b!4971382))

(assert b_and!348717)

(check-sat)

(pop 1)

(push 1)

(assert b_and!348715)

(assert b_and!348717)

(assert (not b_next!133613))

(assert (not b_next!133615))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1600688 () Bool)

(declare-fun c!848317 () Bool)

(assert (=> d!1600688 (= c!848317 (is-Node!15149 (c!848311 input!1342)))))

(declare-fun e!3107198 () Bool)

(assert (=> d!1600688 (= (inv!75105 (c!848311 input!1342)) e!3107198)))

(declare-fun b!4971455 () Bool)

(declare-fun inv!75110 (Conc!15149) Bool)

(assert (=> b!4971455 (= e!3107198 (inv!75110 (c!848311 input!1342)))))

(declare-fun b!4971456 () Bool)

(declare-fun e!3107199 () Bool)

(assert (=> b!4971456 (= e!3107198 e!3107199)))

(declare-fun res!2122066 () Bool)

(assert (=> b!4971456 (= res!2122066 (not (is-Leaf!25173 (c!848311 input!1342))))))

(assert (=> b!4971456 (=> res!2122066 e!3107199)))

(declare-fun b!4971457 () Bool)

(declare-fun inv!75111 (Conc!15149) Bool)

(assert (=> b!4971457 (= e!3107199 (inv!75111 (c!848311 input!1342)))))

(assert (= (and d!1600688 c!848317) b!4971455))

(assert (= (and d!1600688 (not c!848317)) b!4971456))

(assert (= (and b!4971456 (not res!2122066)) b!4971457))

(declare-fun m!5999754 () Bool)

(assert (=> b!4971455 m!5999754))

(declare-fun m!5999756 () Bool)

(assert (=> b!4971457 m!5999756))

(assert (=> b!4971389 d!1600688))

(declare-fun d!1600690 () Bool)

(declare-fun list!18379 (Conc!15149) List!57581)

(assert (=> d!1600690 (= (list!18377 (_2!34401 lt!2052980)) (list!18379 (c!848311 (_2!34401 lt!2052980))))))

(declare-fun bs!1183557 () Bool)

(assert (= bs!1183557 d!1600690))

(declare-fun m!5999758 () Bool)

(assert (=> bs!1183557 m!5999758))

(assert (=> b!4971390 d!1600690))

(declare-fun d!1600692 () Bool)

(declare-fun isBalanced!4206 (Conc!15149) Bool)

(assert (=> d!1600692 (= (inv!75106 input!1342) (isBalanced!4206 (c!848311 input!1342)))))

(declare-fun bs!1183558 () Bool)

(assert (= bs!1183558 d!1600692))

(declare-fun m!5999760 () Bool)

(assert (=> bs!1183558 m!5999760))

(assert (=> start!524424 d!1600692))

(declare-fun d!1600694 () Bool)

(assert (=> d!1600694 (= (inv!75106 totalInput!464) (isBalanced!4206 (c!848311 totalInput!464)))))

(declare-fun bs!1183559 () Bool)

(assert (= bs!1183559 d!1600694))

(declare-fun m!5999762 () Bool)

(assert (=> bs!1183559 m!5999762))

(assert (=> start!524424 d!1600694))

(declare-fun b!4971474 () Bool)

(declare-fun e!3107214 () Bool)

(declare-fun e!3107215 () Bool)

(assert (=> b!4971474 (= e!3107214 e!3107215)))

(declare-fun res!2122087 () Bool)

(assert (=> b!4971474 (=> (not res!2122087) (not e!3107215))))

(declare-fun lt!2053037 () Option!14457)

(assert (=> b!4971474 (= res!2122087 (= (_1!34401 (get!19951 lt!2053037)) (_1!34402 (get!19950 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun b!4971475 () Bool)

(declare-fun e!3107216 () Bool)

(assert (=> b!4971475 (= e!3107216 e!3107214)))

(declare-fun res!2122086 () Bool)

(assert (=> b!4971475 (=> res!2122086 e!3107214)))

(assert (=> b!4971475 (= res!2122086 (not (isDefined!11371 lt!2053037)))))

(declare-fun b!4971476 () Bool)

(assert (=> b!4971476 (= e!3107215 (= (list!18377 (_2!34401 (get!19951 lt!2053037))) (_2!34402 (get!19950 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun b!4971477 () Bool)

(declare-fun res!2122089 () Bool)

(assert (=> b!4971477 (=> (not res!2122089) (not e!3107216))))

(declare-fun e!3107213 () Bool)

(assert (=> b!4971477 (= res!2122089 e!3107213)))

(declare-fun res!2122088 () Bool)

(assert (=> b!4971477 (=> res!2122088 e!3107213)))

(assert (=> b!4971477 (= res!2122088 (not (isDefined!11371 lt!2053037)))))

(declare-fun e!3107212 () Bool)

(declare-fun b!4971478 () Bool)

(assert (=> b!4971478 (= e!3107212 (= (list!18377 (_2!34401 (get!19951 lt!2053037))) (_2!34402 (get!19950 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun d!1600696 () Bool)

(assert (=> d!1600696 e!3107216))

(declare-fun res!2122085 () Bool)

(assert (=> d!1600696 (=> (not res!2122085) (not e!3107216))))

(assert (=> d!1600696 (= res!2122085 (= (isDefined!11371 lt!2053037) (isDefined!11370 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342)))))))

(declare-fun e!3107217 () Option!14457)

(assert (=> d!1600696 (= lt!2053037 e!3107217)))

(declare-fun c!848320 () Bool)

(assert (=> d!1600696 (= c!848320 (and (is-Cons!57458 (t!369112 rulesArg!259)) (is-Nil!57458 (t!369112 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053039 () Unit!148415)

(declare-fun lt!2053034 () Unit!148415)

(assert (=> d!1600696 (= lt!2053039 lt!2053034)))

(declare-fun lt!2053035 () List!57581)

(declare-fun lt!2053036 () List!57581)

(assert (=> d!1600696 (isPrefix!5248 lt!2053035 lt!2053036)))

(assert (=> d!1600696 (= lt!2053034 (lemmaIsPrefixRefl!3572 lt!2053035 lt!2053036))))

(assert (=> d!1600696 (= lt!2053036 (list!18377 input!1342))))

(assert (=> d!1600696 (= lt!2053035 (list!18377 input!1342))))

(assert (=> d!1600696 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259))))

(assert (=> d!1600696 (= (maxPrefixZipperSequenceV2!708 thiss!15247 (t!369112 rulesArg!259) input!1342 totalInput!464) lt!2053037)))

(declare-fun b!4971479 () Bool)

(declare-fun lt!2053038 () Option!14457)

(declare-fun lt!2053033 () Option!14457)

(assert (=> b!4971479 (= e!3107217 (ite (and (is-None!14456 lt!2053038) (is-None!14456 lt!2053033)) None!14456 (ite (is-None!14456 lt!2053033) lt!2053038 (ite (is-None!14456 lt!2053038) lt!2053033 (ite (>= (size!38086 (_1!34401 (v!50449 lt!2053038))) (size!38086 (_1!34401 (v!50449 lt!2053033)))) lt!2053038 lt!2053033)))))))

(declare-fun call!346718 () Option!14457)

(assert (=> b!4971479 (= lt!2053038 call!346718)))

(assert (=> b!4971479 (= lt!2053033 (maxPrefixZipperSequenceV2!708 thiss!15247 (t!369112 (t!369112 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4971480 () Bool)

(assert (=> b!4971480 (= e!3107213 e!3107212)))

(declare-fun res!2122084 () Bool)

(assert (=> b!4971480 (=> (not res!2122084) (not e!3107212))))

(assert (=> b!4971480 (= res!2122084 (= (_1!34401 (get!19951 lt!2053037)) (_1!34402 (get!19950 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun b!4971481 () Bool)

(assert (=> b!4971481 (= e!3107217 call!346718)))

(declare-fun bm!346713 () Bool)

(assert (=> bm!346713 (= call!346718 (maxPrefixOneRuleZipperSequenceV2!365 thiss!15247 (h!63906 (t!369112 rulesArg!259)) input!1342 totalInput!464))))

(assert (= (and d!1600696 c!848320) b!4971481))

(assert (= (and d!1600696 (not c!848320)) b!4971479))

(assert (= (or b!4971481 b!4971479) bm!346713))

(assert (= (and d!1600696 res!2122085) b!4971477))

(assert (= (and b!4971477 (not res!2122088)) b!4971480))

(assert (= (and b!4971480 res!2122084) b!4971478))

(assert (= (and b!4971477 res!2122089) b!4971475))

(assert (= (and b!4971475 (not res!2122086)) b!4971474))

(assert (= (and b!4971474 res!2122087) b!4971476))

(declare-fun m!5999764 () Bool)

(assert (=> bm!346713 m!5999764))

(declare-fun m!5999766 () Bool)

(assert (=> b!4971475 m!5999766))

(declare-fun m!5999768 () Bool)

(assert (=> b!4971476 m!5999768))

(declare-fun m!5999770 () Bool)

(assert (=> b!4971476 m!5999770))

(declare-fun m!5999772 () Bool)

(assert (=> b!4971476 m!5999772))

(assert (=> b!4971476 m!5999670))

(assert (=> b!4971476 m!5999770))

(assert (=> b!4971476 m!5999670))

(declare-fun m!5999774 () Bool)

(assert (=> b!4971476 m!5999774))

(declare-fun m!5999776 () Bool)

(assert (=> b!4971479 m!5999776))

(assert (=> b!4971474 m!5999768))

(assert (=> b!4971474 m!5999670))

(assert (=> b!4971474 m!5999670))

(assert (=> b!4971474 m!5999770))

(assert (=> b!4971474 m!5999770))

(assert (=> b!4971474 m!5999772))

(assert (=> b!4971477 m!5999766))

(declare-fun m!5999778 () Bool)

(assert (=> d!1600696 m!5999778))

(declare-fun m!5999780 () Bool)

(assert (=> d!1600696 m!5999780))

(assert (=> d!1600696 m!5999670))

(declare-fun m!5999782 () Bool)

(assert (=> d!1600696 m!5999782))

(assert (=> d!1600696 m!5999766))

(declare-fun m!5999784 () Bool)

(assert (=> d!1600696 m!5999784))

(assert (=> d!1600696 m!5999670))

(assert (=> d!1600696 m!5999778))

(declare-fun m!5999786 () Bool)

(assert (=> d!1600696 m!5999786))

(assert (=> b!4971480 m!5999768))

(assert (=> b!4971480 m!5999670))

(assert (=> b!4971480 m!5999670))

(assert (=> b!4971480 m!5999778))

(assert (=> b!4971480 m!5999778))

(declare-fun m!5999788 () Bool)

(assert (=> b!4971480 m!5999788))

(assert (=> b!4971478 m!5999768))

(assert (=> b!4971478 m!5999670))

(assert (=> b!4971478 m!5999774))

(assert (=> b!4971478 m!5999670))

(assert (=> b!4971478 m!5999778))

(assert (=> b!4971478 m!5999778))

(assert (=> b!4971478 m!5999788))

(assert (=> b!4971381 d!1600696))

(declare-fun b!4971537 () Bool)

(declare-fun e!3107260 () Bool)

(assert (=> b!4971537 (= e!3107260 true)))

(declare-fun b!4971536 () Bool)

(declare-fun e!3107259 () Bool)

(assert (=> b!4971536 (= e!3107259 e!3107260)))

(declare-fun b!4971528 () Bool)

(assert (=> b!4971528 e!3107259))

(assert (= b!4971536 b!4971537))

(assert (= b!4971528 b!4971536))

(declare-fun order!26237 () Int)

(declare-fun lambda!247457 () Int)

(declare-fun order!26235 () Int)

(declare-fun dynLambda!23193 (Int Int) Int)

(declare-fun dynLambda!23194 (Int Int) Int)

(assert (=> b!4971537 (< (dynLambda!23193 order!26235 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23194 order!26237 lambda!247457))))

(declare-fun order!26239 () Int)

(declare-fun dynLambda!23195 (Int Int) Int)

(assert (=> b!4971537 (< (dynLambda!23195 order!26239 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23194 order!26237 lambda!247457))))

(declare-fun b!4971524 () Bool)

(declare-fun e!3107254 () Bool)

(declare-fun lt!2053102 () Option!14457)

(declare-fun maxPrefixOneRule!3633 (LexerInterface!7989 Rule!16594 List!57581) Option!14458)

(assert (=> b!4971524 (= e!3107254 (= (list!18377 (_2!34401 (get!19951 lt!2053102))) (_2!34402 (get!19950 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun b!4971525 () Bool)

(declare-fun e!3107251 () Bool)

(assert (=> b!4971525 (= e!3107251 e!3107254)))

(declare-fun res!2122119 () Bool)

(assert (=> b!4971525 (=> (not res!2122119) (not e!3107254))))

(assert (=> b!4971525 (= res!2122119 (= (_1!34401 (get!19951 lt!2053102)) (_1!34402 (get!19950 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342))))))))

(declare-fun b!4971526 () Bool)

(declare-fun e!3107250 () Bool)

(declare-fun lt!2053104 () List!57581)

(declare-fun matchR!6640 (Regex!13630 List!57581) Bool)

(declare-datatypes ((tuple2!62204 0))(
  ( (tuple2!62205 (_1!34405 List!57581) (_2!34405 List!57581)) )
))
(declare-fun findLongestMatchInner!1859 (Regex!13630 List!57581 Int List!57581 List!57581 Int) tuple2!62204)

(declare-fun size!38088 (List!57581) Int)

(assert (=> b!4971526 (= e!3107250 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(declare-fun d!1600700 () Bool)

(declare-fun e!3107253 () Bool)

(assert (=> d!1600700 e!3107253))

(declare-fun res!2122121 () Bool)

(assert (=> d!1600700 (=> (not res!2122121) (not e!3107253))))

(assert (=> d!1600700 (= res!2122121 (= (isDefined!11371 lt!2053102) (isDefined!11370 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342)))))))

(declare-fun e!3107252 () Option!14457)

(assert (=> d!1600700 (= lt!2053102 e!3107252)))

(declare-fun c!848328 () Bool)

(declare-datatypes ((tuple2!62206 0))(
  ( (tuple2!62207 (_1!34406 BalanceConc!29728) (_2!34406 BalanceConc!29728)) )
))
(declare-fun lt!2053100 () tuple2!62206)

(declare-fun isEmpty!30959 (BalanceConc!29728) Bool)

(assert (=> d!1600700 (= c!848328 (isEmpty!30959 (_1!34406 lt!2053100)))))

(declare-fun findLongestMatchWithZipperSequenceV2!168 (Regex!13630 BalanceConc!29728 BalanceConc!29728) tuple2!62206)

(assert (=> d!1600700 (= lt!2053100 (findLongestMatchWithZipperSequenceV2!168 (regex!8397 (h!63906 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3806 (LexerInterface!7989 Rule!16594) Bool)

(assert (=> d!1600700 (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259))))

(assert (=> d!1600700 (= (maxPrefixOneRuleZipperSequenceV2!365 thiss!15247 (h!63906 rulesArg!259) input!1342 totalInput!464) lt!2053102)))

(declare-fun b!4971527 () Bool)

(assert (=> b!4971527 (= e!3107253 e!3107251)))

(declare-fun res!2122118 () Bool)

(assert (=> b!4971527 (=> res!2122118 e!3107251)))

(assert (=> b!4971527 (= res!2122118 (not (isDefined!11371 lt!2053102)))))

(declare-fun apply!13908 (TokenValueInjection!16722 BalanceConc!29728) TokenValue!8707)

(declare-fun size!38089 (BalanceConc!29728) Int)

(assert (=> b!4971528 (= e!3107252 (Some!14456 (tuple2!62197 (Token!15291 (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (_1!34406 lt!2053100)) (h!63906 rulesArg!259) (size!38089 (_1!34406 lt!2053100)) (list!18377 (_1!34406 lt!2053100))) (_2!34406 lt!2053100))))))

(assert (=> b!4971528 (= lt!2053104 (list!18377 input!1342))))

(declare-fun lt!2053096 () Unit!148415)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1820 (Regex!13630 List!57581) Unit!148415)

(assert (=> b!4971528 (= lt!2053096 (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 rulesArg!259)) lt!2053104))))

(declare-fun res!2122120 () Bool)

(declare-fun isEmpty!30960 (List!57581) Bool)

(assert (=> b!4971528 (= res!2122120 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(assert (=> b!4971528 (=> res!2122120 e!3107250)))

(assert (=> b!4971528 e!3107250))

(declare-fun lt!2053095 () Unit!148415)

(assert (=> b!4971528 (= lt!2053095 lt!2053096)))

(declare-fun lt!2053101 () Unit!148415)

(declare-fun lemmaInv!1338 (TokenValueInjection!16722) Unit!148415)

(assert (=> b!4971528 (= lt!2053101 (lemmaInv!1338 (transformation!8397 (h!63906 rulesArg!259))))))

(declare-fun lt!2053103 () Unit!148415)

(declare-fun ForallOf!1231 (Int BalanceConc!29728) Unit!148415)

(assert (=> b!4971528 (= lt!2053103 (ForallOf!1231 lambda!247457 (_1!34406 lt!2053100)))))

(declare-fun lt!2053099 () Unit!148415)

(declare-fun seqFromList!6040 (List!57581) BalanceConc!29728)

(assert (=> b!4971528 (= lt!2053099 (ForallOf!1231 lambda!247457 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(declare-fun lt!2053097 () Option!14457)

(assert (=> b!4971528 (= lt!2053097 (Some!14456 (tuple2!62197 (Token!15291 (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (_1!34406 lt!2053100)) (h!63906 rulesArg!259) (size!38089 (_1!34406 lt!2053100)) (list!18377 (_1!34406 lt!2053100))) (_2!34406 lt!2053100))))))

(declare-fun lt!2053098 () Unit!148415)

(declare-fun lemmaEqSameImage!1172 (TokenValueInjection!16722 BalanceConc!29728 BalanceConc!29728) Unit!148415)

(assert (=> b!4971528 (= lt!2053098 (lemmaEqSameImage!1172 (transformation!8397 (h!63906 rulesArg!259)) (_1!34406 lt!2053100) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(declare-fun b!4971529 () Bool)

(assert (=> b!4971529 (= e!3107252 None!14456)))

(assert (= (and d!1600700 c!848328) b!4971529))

(assert (= (and d!1600700 (not c!848328)) b!4971528))

(assert (= (and b!4971528 (not res!2122120)) b!4971526))

(assert (= (and d!1600700 res!2122121) b!4971527))

(assert (= (and b!4971527 (not res!2122118)) b!4971525))

(assert (= (and b!4971525 res!2122119) b!4971524))

(assert (=> b!4971524 m!5999670))

(declare-fun m!5999816 () Bool)

(assert (=> b!4971524 m!5999816))

(declare-fun m!5999818 () Bool)

(assert (=> b!4971524 m!5999818))

(assert (=> b!4971524 m!5999816))

(declare-fun m!5999820 () Bool)

(assert (=> b!4971524 m!5999820))

(assert (=> b!4971524 m!5999670))

(declare-fun m!5999822 () Bool)

(assert (=> b!4971524 m!5999822))

(declare-fun m!5999824 () Bool)

(assert (=> b!4971527 m!5999824))

(declare-fun m!5999826 () Bool)

(assert (=> b!4971526 m!5999826))

(declare-fun m!5999828 () Bool)

(assert (=> b!4971526 m!5999828))

(assert (=> b!4971526 m!5999826))

(assert (=> b!4971526 m!5999828))

(declare-fun m!5999830 () Bool)

(assert (=> b!4971526 m!5999830))

(declare-fun m!5999832 () Bool)

(assert (=> b!4971526 m!5999832))

(assert (=> b!4971525 m!5999822))

(assert (=> b!4971525 m!5999670))

(assert (=> b!4971525 m!5999670))

(assert (=> b!4971525 m!5999816))

(assert (=> b!4971525 m!5999816))

(assert (=> b!4971525 m!5999820))

(declare-fun m!5999834 () Bool)

(assert (=> b!4971528 m!5999834))

(declare-fun m!5999836 () Bool)

(assert (=> b!4971528 m!5999836))

(declare-fun m!5999838 () Bool)

(assert (=> b!4971528 m!5999838))

(assert (=> b!4971528 m!5999834))

(assert (=> b!4971528 m!5999670))

(declare-fun m!5999840 () Bool)

(assert (=> b!4971528 m!5999840))

(declare-fun m!5999842 () Bool)

(assert (=> b!4971528 m!5999842))

(declare-fun m!5999844 () Bool)

(assert (=> b!4971528 m!5999844))

(assert (=> b!4971528 m!5999828))

(declare-fun m!5999846 () Bool)

(assert (=> b!4971528 m!5999846))

(declare-fun m!5999848 () Bool)

(assert (=> b!4971528 m!5999848))

(assert (=> b!4971528 m!5999838))

(assert (=> b!4971528 m!5999826))

(declare-fun m!5999850 () Bool)

(assert (=> b!4971528 m!5999850))

(assert (=> b!4971528 m!5999834))

(declare-fun m!5999852 () Bool)

(assert (=> b!4971528 m!5999852))

(assert (=> b!4971528 m!5999826))

(assert (=> b!4971528 m!5999828))

(assert (=> b!4971528 m!5999830))

(assert (=> d!1600700 m!5999824))

(assert (=> d!1600700 m!5999670))

(declare-fun m!5999854 () Bool)

(assert (=> d!1600700 m!5999854))

(assert (=> d!1600700 m!5999670))

(assert (=> d!1600700 m!5999816))

(assert (=> d!1600700 m!5999816))

(declare-fun m!5999856 () Bool)

(assert (=> d!1600700 m!5999856))

(declare-fun m!5999858 () Bool)

(assert (=> d!1600700 m!5999858))

(declare-fun m!5999860 () Bool)

(assert (=> d!1600700 m!5999860))

(assert (=> b!4971381 d!1600700))

(declare-fun d!1600704 () Bool)

(assert (=> d!1600704 (= (isEmpty!30957 rulesArg!259) (is-Nil!57458 rulesArg!259))))

(assert (=> b!4971391 d!1600704))

(declare-fun d!1600706 () Bool)

(assert (=> d!1600706 true))

(declare-fun lt!2053107 () Bool)

(declare-fun lambda!247460 () Int)

(declare-fun forall!13332 (List!57582 Int) Bool)

(assert (=> d!1600706 (= lt!2053107 (forall!13332 rulesArg!259 lambda!247460))))

(declare-fun e!3107265 () Bool)

(assert (=> d!1600706 (= lt!2053107 e!3107265)))

(declare-fun res!2122126 () Bool)

(assert (=> d!1600706 (=> res!2122126 e!3107265)))

(assert (=> d!1600706 (= res!2122126 (not (is-Cons!57458 rulesArg!259)))))

(assert (=> d!1600706 (= (rulesValidInductive!3300 thiss!15247 rulesArg!259) lt!2053107)))

(declare-fun b!4971542 () Bool)

(declare-fun e!3107266 () Bool)

(assert (=> b!4971542 (= e!3107265 e!3107266)))

(declare-fun res!2122127 () Bool)

(assert (=> b!4971542 (=> (not res!2122127) (not e!3107266))))

(assert (=> b!4971542 (= res!2122127 (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259)))))

(declare-fun b!4971543 () Bool)

(assert (=> b!4971543 (= e!3107266 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259)))))

(assert (= (and d!1600706 (not res!2122126)) b!4971542))

(assert (= (and b!4971542 res!2122127) b!4971543))

(declare-fun m!5999862 () Bool)

(assert (=> d!1600706 m!5999862))

(assert (=> b!4971542 m!5999860))

(assert (=> b!4971543 m!5999784))

(assert (=> b!4971382 d!1600706))

(declare-fun d!1600708 () Bool)

(assert (=> d!1600708 (= (get!19950 lt!2052976) (v!50450 lt!2052976))))

(assert (=> b!4971393 d!1600708))

(declare-fun d!1600710 () Bool)

(assert (=> d!1600710 (= (get!19951 lt!2052981) (v!50449 lt!2052981))))

(assert (=> b!4971393 d!1600710))

(declare-fun d!1600712 () Bool)

(declare-fun e!3107269 () Bool)

(assert (=> d!1600712 e!3107269))

(declare-fun res!2122130 () Bool)

(assert (=> d!1600712 (=> res!2122130 e!3107269)))

(declare-fun lt!2053110 () Bool)

(assert (=> d!1600712 (= res!2122130 (not lt!2053110))))

(declare-fun drop!2353 (List!57581 Int) List!57581)

(assert (=> d!1600712 (= lt!2053110 (= lt!2052978 (drop!2353 (list!18377 totalInput!464) (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)))))))

(assert (=> d!1600712 (= (isSuffix!1196 lt!2052978 (list!18377 totalInput!464)) lt!2053110)))

(declare-fun b!4971548 () Bool)

(assert (=> b!4971548 (= e!3107269 (>= (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)))))

(assert (= (and d!1600712 (not res!2122130)) b!4971548))

(assert (=> d!1600712 m!5999666))

(declare-fun m!5999864 () Bool)

(assert (=> d!1600712 m!5999864))

(declare-fun m!5999866 () Bool)

(assert (=> d!1600712 m!5999866))

(assert (=> d!1600712 m!5999666))

(declare-fun m!5999868 () Bool)

(assert (=> d!1600712 m!5999868))

(assert (=> b!4971548 m!5999666))

(assert (=> b!4971548 m!5999864))

(assert (=> b!4971548 m!5999866))

(assert (=> b!4971392 d!1600712))

(declare-fun d!1600714 () Bool)

(assert (=> d!1600714 (= (list!18377 totalInput!464) (list!18379 (c!848311 totalInput!464)))))

(declare-fun bs!1183560 () Bool)

(assert (= bs!1183560 d!1600714))

(declare-fun m!5999870 () Bool)

(assert (=> bs!1183560 m!5999870))

(assert (=> b!4971392 d!1600714))

(declare-fun d!1600716 () Bool)

(assert (=> d!1600716 (= (list!18377 input!1342) (list!18379 (c!848311 input!1342)))))

(declare-fun bs!1183561 () Bool)

(assert (= bs!1183561 d!1600716))

(declare-fun m!5999872 () Bool)

(assert (=> bs!1183561 m!5999872))

(assert (=> b!4971392 d!1600716))

(declare-fun b!4971560 () Bool)

(declare-fun e!3107276 () Bool)

(assert (=> b!4971560 (= e!3107276 (>= (size!38088 lt!2052978) (size!38088 lt!2052978)))))

(declare-fun d!1600718 () Bool)

(assert (=> d!1600718 e!3107276))

(declare-fun res!2122142 () Bool)

(assert (=> d!1600718 (=> res!2122142 e!3107276)))

(declare-fun lt!2053113 () Bool)

(assert (=> d!1600718 (= res!2122142 (not lt!2053113))))

(declare-fun e!3107278 () Bool)

(assert (=> d!1600718 (= lt!2053113 e!3107278)))

(declare-fun res!2122141 () Bool)

(assert (=> d!1600718 (=> res!2122141 e!3107278)))

(assert (=> d!1600718 (= res!2122141 (is-Nil!57457 lt!2052978))))

(assert (=> d!1600718 (= (isPrefix!5248 lt!2052978 lt!2052978) lt!2053113)))

(declare-fun b!4971559 () Bool)

(declare-fun e!3107277 () Bool)

(declare-fun tail!9805 (List!57581) List!57581)

(assert (=> b!4971559 (= e!3107277 (isPrefix!5248 (tail!9805 lt!2052978) (tail!9805 lt!2052978)))))

(declare-fun b!4971557 () Bool)

(assert (=> b!4971557 (= e!3107278 e!3107277)))

(declare-fun res!2122139 () Bool)

(assert (=> b!4971557 (=> (not res!2122139) (not e!3107277))))

(assert (=> b!4971557 (= res!2122139 (not (is-Nil!57457 lt!2052978)))))

(declare-fun b!4971558 () Bool)

(declare-fun res!2122140 () Bool)

(assert (=> b!4971558 (=> (not res!2122140) (not e!3107277))))

(declare-fun head!10672 (List!57581) C!27510)

(assert (=> b!4971558 (= res!2122140 (= (head!10672 lt!2052978) (head!10672 lt!2052978)))))

(assert (= (and d!1600718 (not res!2122141)) b!4971557))

(assert (= (and b!4971557 res!2122139) b!4971558))

(assert (= (and b!4971558 res!2122140) b!4971559))

(assert (= (and d!1600718 (not res!2122142)) b!4971560))

(assert (=> b!4971560 m!5999866))

(assert (=> b!4971560 m!5999866))

(declare-fun m!5999874 () Bool)

(assert (=> b!4971559 m!5999874))

(assert (=> b!4971559 m!5999874))

(assert (=> b!4971559 m!5999874))

(assert (=> b!4971559 m!5999874))

(declare-fun m!5999876 () Bool)

(assert (=> b!4971559 m!5999876))

(declare-fun m!5999878 () Bool)

(assert (=> b!4971558 m!5999878))

(assert (=> b!4971558 m!5999878))

(assert (=> b!4971394 d!1600718))

(declare-fun d!1600720 () Bool)

(assert (=> d!1600720 (isPrefix!5248 lt!2052978 lt!2052978)))

(declare-fun lt!2053116 () Unit!148415)

(declare-fun choose!36702 (List!57581 List!57581) Unit!148415)

(assert (=> d!1600720 (= lt!2053116 (choose!36702 lt!2052978 lt!2052978))))

(assert (=> d!1600720 (= (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978) lt!2053116)))

(declare-fun bs!1183562 () Bool)

(assert (= bs!1183562 d!1600720))

(assert (=> bs!1183562 m!5999662))

(declare-fun m!5999880 () Bool)

(assert (=> bs!1183562 m!5999880))

(assert (=> b!4971394 d!1600720))

(declare-fun d!1600722 () Bool)

(assert (=> d!1600722 (= (inv!75101 (tag!9261 (h!63906 rulesArg!259))) (= (mod (str.len (value!268755 (tag!9261 (h!63906 rulesArg!259)))) 2) 0))))

(assert (=> b!4971385 d!1600722))

(declare-fun d!1600724 () Bool)

(declare-fun res!2122145 () Bool)

(declare-fun e!3107281 () Bool)

(assert (=> d!1600724 (=> (not res!2122145) (not e!3107281))))

(declare-fun semiInverseModEq!3704 (Int Int) Bool)

(assert (=> d!1600724 (= res!2122145 (semiInverseModEq!3704 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))))))

(assert (=> d!1600724 (= (inv!75104 (transformation!8397 (h!63906 rulesArg!259))) e!3107281)))

(declare-fun b!4971563 () Bool)

(declare-fun equivClasses!3552 (Int Int) Bool)

(assert (=> b!4971563 (= e!3107281 (equivClasses!3552 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))))))

(assert (= (and d!1600724 res!2122145) b!4971563))

(declare-fun m!5999882 () Bool)

(assert (=> d!1600724 m!5999882))

(declare-fun m!5999884 () Bool)

(assert (=> b!4971563 m!5999884))

(assert (=> b!4971385 d!1600724))

(declare-fun d!1600726 () Bool)

(assert (=> d!1600726 (= (list!18377 (_2!34401 lt!2052975)) (list!18379 (c!848311 (_2!34401 lt!2052975))))))

(declare-fun bs!1183563 () Bool)

(assert (= bs!1183563 d!1600726))

(declare-fun m!5999886 () Bool)

(assert (=> bs!1183563 m!5999886))

(assert (=> b!4971395 d!1600726))

(declare-fun d!1600728 () Bool)

(declare-fun isEmpty!30961 (Option!14458) Bool)

(assert (=> d!1600728 (= (isDefined!11370 lt!2052976) (not (isEmpty!30961 lt!2052976)))))

(declare-fun bs!1183564 () Bool)

(assert (= bs!1183564 d!1600728))

(declare-fun m!5999888 () Bool)

(assert (=> bs!1183564 m!5999888))

(assert (=> b!4971397 d!1600728))

(declare-fun d!1600730 () Bool)

(declare-fun isEmpty!30962 (Option!14457) Bool)

(assert (=> d!1600730 (= (isDefined!11371 lt!2052981) (not (isEmpty!30962 lt!2052981)))))

(declare-fun bs!1183565 () Bool)

(assert (= bs!1183565 d!1600730))

(declare-fun m!5999890 () Bool)

(assert (=> bs!1183565 m!5999890))

(assert (=> b!4971397 d!1600730))

(declare-fun lt!2053130 () Option!14458)

(declare-fun d!1600732 () Bool)

(assert (=> d!1600732 (= lt!2053130 (maxPrefix!4664 thiss!15247 rulesArg!259 lt!2052978))))

(declare-fun e!3107284 () Option!14458)

(assert (=> d!1600732 (= lt!2053130 e!3107284)))

(declare-fun c!848331 () Bool)

(assert (=> d!1600732 (= c!848331 (and (is-Cons!57458 rulesArg!259) (is-Nil!57458 (t!369112 rulesArg!259))))))

(declare-fun lt!2053129 () Unit!148415)

(declare-fun lt!2053131 () Unit!148415)

(assert (=> d!1600732 (= lt!2053129 lt!2053131)))

(assert (=> d!1600732 (isPrefix!5248 lt!2052978 lt!2052978)))

(assert (=> d!1600732 (= lt!2053131 (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978))))

(assert (=> d!1600732 (rulesValidInductive!3300 thiss!15247 rulesArg!259)))

(assert (=> d!1600732 (= (maxPrefixZipper!790 thiss!15247 rulesArg!259 lt!2052978) lt!2053130)))

(declare-fun bm!346719 () Bool)

(declare-fun call!346724 () Option!14458)

(declare-fun maxPrefixOneRuleZipper!300 (LexerInterface!7989 Rule!16594 List!57581) Option!14458)

(assert (=> bm!346719 (= call!346724 (maxPrefixOneRuleZipper!300 thiss!15247 (h!63906 rulesArg!259) lt!2052978))))

(declare-fun b!4971568 () Bool)

(assert (=> b!4971568 (= e!3107284 call!346724)))

(declare-fun b!4971569 () Bool)

(declare-fun lt!2053127 () Option!14458)

(declare-fun lt!2053128 () Option!14458)

(assert (=> b!4971569 (= e!3107284 (ite (and (is-None!14457 lt!2053127) (is-None!14457 lt!2053128)) None!14457 (ite (is-None!14457 lt!2053128) lt!2053127 (ite (is-None!14457 lt!2053127) lt!2053128 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053127))) (size!38086 (_1!34402 (v!50450 lt!2053128)))) lt!2053127 lt!2053128)))))))

(assert (=> b!4971569 (= lt!2053127 call!346724)))

(assert (=> b!4971569 (= lt!2053128 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) lt!2052978))))

(assert (= (and d!1600732 c!848331) b!4971568))

(assert (= (and d!1600732 (not c!848331)) b!4971569))

(assert (= (or b!4971568 b!4971569) bm!346719))

(assert (=> d!1600732 m!5999680))

(assert (=> d!1600732 m!5999662))

(assert (=> d!1600732 m!5999664))

(assert (=> d!1600732 m!5999704))

(declare-fun m!5999892 () Bool)

(assert (=> bm!346719 m!5999892))

(declare-fun m!5999894 () Bool)

(assert (=> b!4971569 m!5999894))

(assert (=> b!4971397 d!1600732))

(declare-fun d!1600734 () Bool)

(assert (=> d!1600734 (= (get!19950 (maxPrefix!4664 thiss!15247 rulesArg!259 lt!2052978)) (v!50450 (maxPrefix!4664 thiss!15247 rulesArg!259 lt!2052978)))))

(assert (=> b!4971396 d!1600734))

(declare-fun b!4971588 () Bool)

(declare-fun res!2122162 () Bool)

(declare-fun e!3107292 () Bool)

(assert (=> b!4971588 (=> (not res!2122162) (not e!3107292))))

(declare-fun lt!2053145 () Option!14458)

(declare-fun charsOf!5441 (Token!15290) BalanceConc!29728)

(assert (=> b!4971588 (= res!2122162 (matchR!6640 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))

(declare-fun b!4971589 () Bool)

(declare-fun e!3107291 () Bool)

(assert (=> b!4971589 (= e!3107291 e!3107292)))

(declare-fun res!2122163 () Bool)

(assert (=> b!4971589 (=> (not res!2122163) (not e!3107292))))

(assert (=> b!4971589 (= res!2122163 (isDefined!11370 lt!2053145))))

(declare-fun b!4971590 () Bool)

(declare-fun e!3107293 () Option!14458)

(declare-fun call!346727 () Option!14458)

(assert (=> b!4971590 (= e!3107293 call!346727)))

(declare-fun b!4971591 () Bool)

(declare-fun res!2122160 () Bool)

(assert (=> b!4971591 (=> (not res!2122160) (not e!3107292))))

(assert (=> b!4971591 (= res!2122160 (= (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))) (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145)))))))

(declare-fun b!4971592 () Bool)

(declare-fun res!2122164 () Bool)

(assert (=> b!4971592 (=> (not res!2122164) (not e!3107292))))

(assert (=> b!4971592 (= res!2122164 (= (value!268756 (_1!34402 (get!19950 lt!2053145))) (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun bm!346722 () Bool)

(assert (=> bm!346722 (= call!346727 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) lt!2052978))))

(declare-fun b!4971593 () Bool)

(declare-fun contains!19542 (List!57582 Rule!16594) Bool)

(assert (=> b!4971593 (= e!3107292 (contains!19542 rulesArg!259 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))

(declare-fun b!4971594 () Bool)

(declare-fun res!2122161 () Bool)

(assert (=> b!4971594 (=> (not res!2122161) (not e!3107292))))

(assert (=> b!4971594 (= res!2122161 (< (size!38088 (_2!34402 (get!19950 lt!2053145))) (size!38088 lt!2052978)))))

(declare-fun d!1600736 () Bool)

(assert (=> d!1600736 e!3107291))

(declare-fun res!2122166 () Bool)

(assert (=> d!1600736 (=> res!2122166 e!3107291)))

(assert (=> d!1600736 (= res!2122166 (isEmpty!30961 lt!2053145))))

(assert (=> d!1600736 (= lt!2053145 e!3107293)))

(declare-fun c!848334 () Bool)

(assert (=> d!1600736 (= c!848334 (and (is-Cons!57458 rulesArg!259) (is-Nil!57458 (t!369112 rulesArg!259))))))

(declare-fun lt!2053146 () Unit!148415)

(declare-fun lt!2053144 () Unit!148415)

(assert (=> d!1600736 (= lt!2053146 lt!2053144)))

(assert (=> d!1600736 (isPrefix!5248 lt!2052978 lt!2052978)))

(assert (=> d!1600736 (= lt!2053144 (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978))))

(assert (=> d!1600736 (rulesValidInductive!3300 thiss!15247 rulesArg!259)))

(assert (=> d!1600736 (= (maxPrefix!4664 thiss!15247 rulesArg!259 lt!2052978) lt!2053145)))

(declare-fun b!4971595 () Bool)

(declare-fun lt!2053142 () Option!14458)

(declare-fun lt!2053143 () Option!14458)

(assert (=> b!4971595 (= e!3107293 (ite (and (is-None!14457 lt!2053142) (is-None!14457 lt!2053143)) None!14457 (ite (is-None!14457 lt!2053143) lt!2053142 (ite (is-None!14457 lt!2053142) lt!2053143 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053142))) (size!38086 (_1!34402 (v!50450 lt!2053143)))) lt!2053142 lt!2053143)))))))

(assert (=> b!4971595 (= lt!2053142 call!346727)))

(assert (=> b!4971595 (= lt!2053143 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) lt!2052978))))

(declare-fun b!4971596 () Bool)

(declare-fun res!2122165 () Bool)

(assert (=> b!4971596 (=> (not res!2122165) (not e!3107292))))

(declare-fun ++!12536 (List!57581 List!57581) List!57581)

(assert (=> b!4971596 (= res!2122165 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))) (_2!34402 (get!19950 lt!2053145))) lt!2052978))))

(assert (= (and d!1600736 c!848334) b!4971590))

(assert (= (and d!1600736 (not c!848334)) b!4971595))

(assert (= (or b!4971590 b!4971595) bm!346722))

(assert (= (and d!1600736 (not res!2122166)) b!4971589))

(assert (= (and b!4971589 res!2122163) b!4971591))

(assert (= (and b!4971591 res!2122160) b!4971594))

(assert (= (and b!4971594 res!2122161) b!4971596))

(assert (= (and b!4971596 res!2122165) b!4971592))

(assert (= (and b!4971592 res!2122164) b!4971588))

(assert (= (and b!4971588 res!2122162) b!4971593))

(declare-fun m!5999896 () Bool)

(assert (=> d!1600736 m!5999896))

(assert (=> d!1600736 m!5999662))

(assert (=> d!1600736 m!5999664))

(assert (=> d!1600736 m!5999704))

(declare-fun m!5999898 () Bool)

(assert (=> bm!346722 m!5999898))

(declare-fun m!5999900 () Bool)

(assert (=> b!4971596 m!5999900))

(declare-fun m!5999902 () Bool)

(assert (=> b!4971596 m!5999902))

(assert (=> b!4971596 m!5999902))

(declare-fun m!5999904 () Bool)

(assert (=> b!4971596 m!5999904))

(assert (=> b!4971596 m!5999904))

(declare-fun m!5999906 () Bool)

(assert (=> b!4971596 m!5999906))

(declare-fun m!5999908 () Bool)

(assert (=> b!4971589 m!5999908))

(assert (=> b!4971593 m!5999900))

(declare-fun m!5999910 () Bool)

(assert (=> b!4971593 m!5999910))

(assert (=> b!4971594 m!5999900))

(declare-fun m!5999912 () Bool)

(assert (=> b!4971594 m!5999912))

(assert (=> b!4971594 m!5999866))

(assert (=> b!4971591 m!5999900))

(assert (=> b!4971591 m!5999902))

(assert (=> b!4971591 m!5999902))

(assert (=> b!4971591 m!5999904))

(assert (=> b!4971588 m!5999900))

(assert (=> b!4971588 m!5999902))

(assert (=> b!4971588 m!5999902))

(assert (=> b!4971588 m!5999904))

(assert (=> b!4971588 m!5999904))

(declare-fun m!5999914 () Bool)

(assert (=> b!4971588 m!5999914))

(declare-fun m!5999916 () Bool)

(assert (=> b!4971595 m!5999916))

(assert (=> b!4971592 m!5999900))

(declare-fun m!5999918 () Bool)

(assert (=> b!4971592 m!5999918))

(assert (=> b!4971592 m!5999918))

(declare-fun m!5999920 () Bool)

(assert (=> b!4971592 m!5999920))

(assert (=> b!4971396 d!1600736))

(assert (=> b!4971396 d!1600710))

(declare-fun d!1600738 () Bool)

(declare-fun c!848335 () Bool)

(assert (=> d!1600738 (= c!848335 (is-Node!15149 (c!848311 totalInput!464)))))

(declare-fun e!3107294 () Bool)

(assert (=> d!1600738 (= (inv!75105 (c!848311 totalInput!464)) e!3107294)))

(declare-fun b!4971597 () Bool)

(assert (=> b!4971597 (= e!3107294 (inv!75110 (c!848311 totalInput!464)))))

(declare-fun b!4971598 () Bool)

(declare-fun e!3107295 () Bool)

(assert (=> b!4971598 (= e!3107294 e!3107295)))

(declare-fun res!2122167 () Bool)

(assert (=> b!4971598 (= res!2122167 (not (is-Leaf!25173 (c!848311 totalInput!464))))))

(assert (=> b!4971598 (=> res!2122167 e!3107295)))

(declare-fun b!4971599 () Bool)

(assert (=> b!4971599 (= e!3107295 (inv!75111 (c!848311 totalInput!464)))))

(assert (= (and d!1600738 c!848335) b!4971597))

(assert (= (and d!1600738 (not c!848335)) b!4971598))

(assert (= (and b!4971598 (not res!2122167)) b!4971599))

(declare-fun m!5999922 () Bool)

(assert (=> b!4971597 m!5999922))

(declare-fun m!5999924 () Bool)

(assert (=> b!4971599 m!5999924))

(assert (=> b!4971387 d!1600738))

(declare-fun tp!1394172 () Bool)

(declare-fun tp!1394171 () Bool)

(declare-fun b!4971614 () Bool)

(declare-fun e!3107307 () Bool)

(assert (=> b!4971614 (= e!3107307 (and (inv!75105 (left!41914 (c!848311 input!1342))) tp!1394171 (inv!75105 (right!42244 (c!848311 input!1342))) tp!1394172))))

(declare-fun b!4971616 () Bool)

(declare-fun e!3107306 () Bool)

(declare-fun tp!1394173 () Bool)

(assert (=> b!4971616 (= e!3107306 tp!1394173)))

(declare-fun b!4971615 () Bool)

(declare-fun inv!75112 (IArray!30359) Bool)

(assert (=> b!4971615 (= e!3107307 (and (inv!75112 (xs!18475 (c!848311 input!1342))) e!3107306))))

(assert (=> b!4971389 (= tp!1394141 (and (inv!75105 (c!848311 input!1342)) e!3107307))))

(assert (= (and b!4971389 (is-Node!15149 (c!848311 input!1342))) b!4971614))

(assert (= b!4971615 b!4971616))

(assert (= (and b!4971389 (is-Leaf!25173 (c!848311 input!1342))) b!4971615))

(declare-fun m!5999926 () Bool)

(assert (=> b!4971614 m!5999926))

(declare-fun m!5999928 () Bool)

(assert (=> b!4971614 m!5999928))

(declare-fun m!5999930 () Bool)

(assert (=> b!4971615 m!5999930))

(assert (=> b!4971389 m!5999692))

(declare-fun b!4971627 () Bool)

(declare-fun b_free!132831 () Bool)

(declare-fun b_next!133621 () Bool)

(assert (=> b!4971627 (= b_free!132831 (not b_next!133621))))

(declare-fun tp!1394185 () Bool)

(declare-fun b_and!348723 () Bool)

(assert (=> b!4971627 (= tp!1394185 b_and!348723)))

(declare-fun b_free!132833 () Bool)

(declare-fun b_next!133623 () Bool)

(assert (=> b!4971627 (= b_free!132833 (not b_next!133623))))

(declare-fun tp!1394184 () Bool)

(declare-fun b_and!348725 () Bool)

(assert (=> b!4971627 (= tp!1394184 b_and!348725)))

(declare-fun e!3107317 () Bool)

(assert (=> b!4971627 (= e!3107317 (and tp!1394185 tp!1394184))))

(declare-fun tp!1394183 () Bool)

(declare-fun e!3107316 () Bool)

(declare-fun b!4971626 () Bool)

(assert (=> b!4971626 (= e!3107316 (and tp!1394183 (inv!75101 (tag!9261 (h!63906 (t!369112 rulesArg!259)))) (inv!75104 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) e!3107317))))

(declare-fun b!4971625 () Bool)

(declare-fun e!3107319 () Bool)

(declare-fun tp!1394182 () Bool)

(assert (=> b!4971625 (= e!3107319 (and e!3107316 tp!1394182))))

(assert (=> b!4971388 (= tp!1394145 e!3107319)))

(assert (= b!4971626 b!4971627))

(assert (= b!4971625 b!4971626))

(assert (= (and b!4971388 (is-Cons!57458 (t!369112 rulesArg!259))) b!4971625))

(declare-fun m!5999932 () Bool)

(assert (=> b!4971626 m!5999932))

(declare-fun m!5999934 () Bool)

(assert (=> b!4971626 m!5999934))

(declare-fun b!4971641 () Bool)

(declare-fun e!3107322 () Bool)

(declare-fun tp!1394196 () Bool)

(declare-fun tp!1394200 () Bool)

(assert (=> b!4971641 (= e!3107322 (and tp!1394196 tp!1394200))))

(declare-fun b!4971640 () Bool)

(declare-fun tp!1394198 () Bool)

(assert (=> b!4971640 (= e!3107322 tp!1394198)))

(declare-fun b!4971639 () Bool)

(declare-fun tp!1394199 () Bool)

(declare-fun tp!1394197 () Bool)

(assert (=> b!4971639 (= e!3107322 (and tp!1394199 tp!1394197))))

(declare-fun b!4971638 () Bool)

(declare-fun tp_is_empty!36341 () Bool)

(assert (=> b!4971638 (= e!3107322 tp_is_empty!36341)))

(assert (=> b!4971385 (= tp!1394142 e!3107322)))

(assert (= (and b!4971385 (is-ElementMatch!13630 (regex!8397 (h!63906 rulesArg!259)))) b!4971638))

(assert (= (and b!4971385 (is-Concat!22338 (regex!8397 (h!63906 rulesArg!259)))) b!4971639))

(assert (= (and b!4971385 (is-Star!13630 (regex!8397 (h!63906 rulesArg!259)))) b!4971640))

(assert (= (and b!4971385 (is-Union!13630 (regex!8397 (h!63906 rulesArg!259)))) b!4971641))

(declare-fun b!4971642 () Bool)

(declare-fun tp!1394202 () Bool)

(declare-fun e!3107324 () Bool)

(declare-fun tp!1394201 () Bool)

(assert (=> b!4971642 (= e!3107324 (and (inv!75105 (left!41914 (c!848311 totalInput!464))) tp!1394201 (inv!75105 (right!42244 (c!848311 totalInput!464))) tp!1394202))))

(declare-fun b!4971644 () Bool)

(declare-fun e!3107323 () Bool)

(declare-fun tp!1394203 () Bool)

(assert (=> b!4971644 (= e!3107323 tp!1394203)))

(declare-fun b!4971643 () Bool)

(assert (=> b!4971643 (= e!3107324 (and (inv!75112 (xs!18475 (c!848311 totalInput!464))) e!3107323))))

(assert (=> b!4971387 (= tp!1394144 (and (inv!75105 (c!848311 totalInput!464)) e!3107324))))

(assert (= (and b!4971387 (is-Node!15149 (c!848311 totalInput!464))) b!4971642))

(assert (= b!4971643 b!4971644))

(assert (= (and b!4971387 (is-Leaf!25173 (c!848311 totalInput!464))) b!4971643))

(declare-fun m!5999936 () Bool)

(assert (=> b!4971642 m!5999936))

(declare-fun m!5999938 () Bool)

(assert (=> b!4971642 m!5999938))

(declare-fun m!5999940 () Bool)

(assert (=> b!4971643 m!5999940))

(assert (=> b!4971387 m!5999678))

(push 1)

(assert (not b!4971588))

(assert (not b!4971542))

(assert (not b!4971478))

(assert (not b!4971480))

(assert (not b!4971597))

(assert (not b!4971457))

(assert (not b!4971595))

(assert (not d!1600716))

(assert (not d!1600700))

(assert (not b!4971525))

(assert (not b!4971543))

(assert (not b_next!133623))

(assert (not b!4971642))

(assert (not d!1600692))

(assert (not b!4971477))

(assert (not d!1600712))

(assert (not b!4971589))

(assert (not b!4971569))

(assert (not d!1600714))

(assert (not b!4971548))

(assert (not b!4971560))

(assert (not bm!346722))

(assert (not bm!346713))

(assert b_and!348725)

(assert (not d!1600728))

(assert (not b_next!133613))

(assert (not d!1600726))

(assert (not b!4971599))

(assert (not b!4971625))

(assert (not b!4971594))

(assert (not d!1600706))

(assert (not b!4971591))

(assert (not b!4971563))

(assert (not b!4971558))

(assert (not b!4971614))

(assert (not b!4971387))

(assert (not b!4971593))

(assert (not b!4971559))

(assert (not b_next!133621))

(assert (not b!4971592))

(assert (not b!4971475))

(assert (not b!4971615))

(assert (not d!1600730))

(assert (not b!4971616))

(assert b_and!348715)

(assert (not d!1600736))

(assert (not b!4971476))

(assert (not d!1600720))

(assert (not b!4971524))

(assert (not b!4971596))

(assert (not b!4971455))

(assert (not d!1600724))

(assert (not b!4971643))

(assert (not b!4971389))

(assert (not d!1600690))

(assert b_and!348717)

(assert (not b!4971528))

(assert (not b!4971641))

(assert (not d!1600732))

(assert (not bm!346719))

(assert (not d!1600694))

(assert b_and!348723)

(assert (not d!1600696))

(assert (not b!4971479))

(assert (not b_next!133615))

(assert (not b!4971640))

(assert (not b!4971626))

(assert (not b!4971639))

(assert (not b!4971526))

(assert (not b!4971527))

(assert (not b!4971644))

(assert (not b!4971474))

(assert tp_is_empty!36341)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133623))

(assert b_and!348725)

(assert (not b_next!133613))

(assert (not b_next!133621))

(assert b_and!348715)

(assert b_and!348717)

(assert b_and!348723)

(assert (not b_next!133615))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1600784 () Bool)

(assert (=> d!1600784 (= (get!19950 lt!2053145) (v!50450 lt!2053145))))

(assert (=> b!4971592 d!1600784))

(declare-fun d!1600786 () Bool)

(declare-fun dynLambda!23199 (Int BalanceConc!29728) TokenValue!8707)

(assert (=> d!1600786 (= (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145))))) (dynLambda!23199 (toValue!11364 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145))))))))

(declare-fun b_lambda!197213 () Bool)

(assert (=> (not b_lambda!197213) (not d!1600786)))

(declare-fun tb!261067 () Bool)

(declare-fun t!369117 () Bool)

(assert (=> (and b!4971386 (= (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369117) tb!261067))

(declare-fun result!326222 () Bool)

(declare-fun inv!21 (TokenValue!8707) Bool)

(assert (=> tb!261067 (= result!326222 (inv!21 (dynLambda!23199 (toValue!11364 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun m!6000078 () Bool)

(assert (=> tb!261067 m!6000078))

(assert (=> d!1600786 t!369117))

(declare-fun b_and!348731 () Bool)

(assert (= b_and!348715 (and (=> t!369117 result!326222) b_and!348731)))

(declare-fun t!369119 () Bool)

(declare-fun tb!261069 () Bool)

(assert (=> (and b!4971627 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369119) tb!261069))

(declare-fun result!326226 () Bool)

(assert (= result!326226 result!326222))

(assert (=> d!1600786 t!369119))

(declare-fun b_and!348733 () Bool)

(assert (= b_and!348723 (and (=> t!369119 result!326226) b_and!348733)))

(assert (=> d!1600786 m!5999918))

(declare-fun m!6000080 () Bool)

(assert (=> d!1600786 m!6000080))

(assert (=> b!4971592 d!1600786))

(declare-fun d!1600788 () Bool)

(declare-fun fromListB!2735 (List!57581) BalanceConc!29728)

(assert (=> d!1600788 (= (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145)))) (fromListB!2735 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145)))))))

(declare-fun bs!1183575 () Bool)

(assert (= bs!1183575 d!1600788))

(declare-fun m!6000082 () Bool)

(assert (=> bs!1183575 m!6000082))

(assert (=> b!4971592 d!1600788))

(declare-fun d!1600790 () Bool)

(declare-fun res!2122237 () Bool)

(declare-fun e!3107405 () Bool)

(assert (=> d!1600790 (=> (not res!2122237) (not e!3107405))))

(declare-fun size!38092 (Conc!15149) Int)

(assert (=> d!1600790 (= res!2122237 (= (csize!30528 (c!848311 input!1342)) (+ (size!38092 (left!41914 (c!848311 input!1342))) (size!38092 (right!42244 (c!848311 input!1342))))))))

(assert (=> d!1600790 (= (inv!75110 (c!848311 input!1342)) e!3107405)))

(declare-fun b!4971777 () Bool)

(declare-fun res!2122238 () Bool)

(assert (=> b!4971777 (=> (not res!2122238) (not e!3107405))))

(assert (=> b!4971777 (= res!2122238 (and (not (= (left!41914 (c!848311 input!1342)) Empty!15149)) (not (= (right!42244 (c!848311 input!1342)) Empty!15149))))))

(declare-fun b!4971778 () Bool)

(declare-fun res!2122239 () Bool)

(assert (=> b!4971778 (=> (not res!2122239) (not e!3107405))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2017 (Conc!15149) Int)

(assert (=> b!4971778 (= res!2122239 (= (cheight!15360 (c!848311 input!1342)) (+ (max!0 (height!2017 (left!41914 (c!848311 input!1342))) (height!2017 (right!42244 (c!848311 input!1342)))) 1)))))

(declare-fun b!4971779 () Bool)

(assert (=> b!4971779 (= e!3107405 (<= 0 (cheight!15360 (c!848311 input!1342))))))

(assert (= (and d!1600790 res!2122237) b!4971777))

(assert (= (and b!4971777 res!2122238) b!4971778))

(assert (= (and b!4971778 res!2122239) b!4971779))

(declare-fun m!6000084 () Bool)

(assert (=> d!1600790 m!6000084))

(declare-fun m!6000086 () Bool)

(assert (=> d!1600790 m!6000086))

(declare-fun m!6000088 () Bool)

(assert (=> b!4971778 m!6000088))

(declare-fun m!6000090 () Bool)

(assert (=> b!4971778 m!6000090))

(assert (=> b!4971778 m!6000088))

(assert (=> b!4971778 m!6000090))

(declare-fun m!6000092 () Bool)

(assert (=> b!4971778 m!6000092))

(assert (=> b!4971455 d!1600790))

(declare-fun d!1600792 () Bool)

(declare-fun lt!2053207 () Int)

(assert (=> d!1600792 (>= lt!2053207 0)))

(declare-fun e!3107408 () Int)

(assert (=> d!1600792 (= lt!2053207 e!3107408)))

(declare-fun c!848349 () Bool)

(assert (=> d!1600792 (= c!848349 (is-Nil!57457 lt!2052978))))

(assert (=> d!1600792 (= (size!38088 lt!2052978) lt!2053207)))

(declare-fun b!4971784 () Bool)

(assert (=> b!4971784 (= e!3107408 0)))

(declare-fun b!4971785 () Bool)

(assert (=> b!4971785 (= e!3107408 (+ 1 (size!38088 (t!369111 lt!2052978))))))

(assert (= (and d!1600792 c!848349) b!4971784))

(assert (= (and d!1600792 (not c!848349)) b!4971785))

(declare-fun m!6000094 () Bool)

(assert (=> b!4971785 m!6000094))

(assert (=> b!4971560 d!1600792))

(declare-fun d!1600794 () Bool)

(assert (=> d!1600794 (= (isDefined!11371 lt!2053037) (not (isEmpty!30962 lt!2053037)))))

(declare-fun bs!1183576 () Bool)

(assert (= bs!1183576 d!1600794))

(declare-fun m!6000096 () Bool)

(assert (=> bs!1183576 m!6000096))

(assert (=> b!4971477 d!1600794))

(declare-fun d!1600796 () Bool)

(declare-fun lt!2053210 () Bool)

(declare-fun content!10191 (List!57582) (Set Rule!16594))

(assert (=> d!1600796 (= lt!2053210 (set.member (rule!11653 (_1!34402 (get!19950 lt!2053145))) (content!10191 rulesArg!259)))))

(declare-fun e!3107414 () Bool)

(assert (=> d!1600796 (= lt!2053210 e!3107414)))

(declare-fun res!2122245 () Bool)

(assert (=> d!1600796 (=> (not res!2122245) (not e!3107414))))

(assert (=> d!1600796 (= res!2122245 (is-Cons!57458 rulesArg!259))))

(assert (=> d!1600796 (= (contains!19542 rulesArg!259 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) lt!2053210)))

(declare-fun b!4971790 () Bool)

(declare-fun e!3107413 () Bool)

(assert (=> b!4971790 (= e!3107414 e!3107413)))

(declare-fun res!2122244 () Bool)

(assert (=> b!4971790 (=> res!2122244 e!3107413)))

(assert (=> b!4971790 (= res!2122244 (= (h!63906 rulesArg!259) (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))

(declare-fun b!4971791 () Bool)

(assert (=> b!4971791 (= e!3107413 (contains!19542 (t!369112 rulesArg!259) (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))

(assert (= (and d!1600796 res!2122245) b!4971790))

(assert (= (and b!4971790 (not res!2122244)) b!4971791))

(declare-fun m!6000098 () Bool)

(assert (=> d!1600796 m!6000098))

(declare-fun m!6000100 () Bool)

(assert (=> d!1600796 m!6000100))

(declare-fun m!6000102 () Bool)

(assert (=> b!4971791 m!6000102))

(assert (=> b!4971593 d!1600796))

(assert (=> b!4971593 d!1600784))

(declare-fun d!1600798 () Bool)

(declare-fun res!2122250 () Bool)

(declare-fun e!3107417 () Bool)

(assert (=> d!1600798 (=> (not res!2122250) (not e!3107417))))

(declare-fun list!18381 (IArray!30359) List!57581)

(assert (=> d!1600798 (= res!2122250 (<= (size!38088 (list!18381 (xs!18475 (c!848311 input!1342)))) 512))))

(assert (=> d!1600798 (= (inv!75111 (c!848311 input!1342)) e!3107417)))

(declare-fun b!4971796 () Bool)

(declare-fun res!2122251 () Bool)

(assert (=> b!4971796 (=> (not res!2122251) (not e!3107417))))

(assert (=> b!4971796 (= res!2122251 (= (csize!30529 (c!848311 input!1342)) (size!38088 (list!18381 (xs!18475 (c!848311 input!1342))))))))

(declare-fun b!4971797 () Bool)

(assert (=> b!4971797 (= e!3107417 (and (> (csize!30529 (c!848311 input!1342)) 0) (<= (csize!30529 (c!848311 input!1342)) 512)))))

(assert (= (and d!1600798 res!2122250) b!4971796))

(assert (= (and b!4971796 res!2122251) b!4971797))

(declare-fun m!6000104 () Bool)

(assert (=> d!1600798 m!6000104))

(assert (=> d!1600798 m!6000104))

(declare-fun m!6000106 () Bool)

(assert (=> d!1600798 m!6000106))

(assert (=> b!4971796 m!6000104))

(assert (=> b!4971796 m!6000104))

(assert (=> b!4971796 m!6000106))

(assert (=> b!4971457 d!1600798))

(declare-fun b!4971798 () Bool)

(declare-fun e!3107420 () Bool)

(declare-fun e!3107421 () Bool)

(assert (=> b!4971798 (= e!3107420 e!3107421)))

(declare-fun res!2122255 () Bool)

(assert (=> b!4971798 (=> (not res!2122255) (not e!3107421))))

(declare-fun lt!2053215 () Option!14457)

(assert (=> b!4971798 (= res!2122255 (= (_1!34401 (get!19951 lt!2053215)) (_1!34402 (get!19950 (maxPrefix!4664 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun b!4971799 () Bool)

(declare-fun e!3107422 () Bool)

(assert (=> b!4971799 (= e!3107422 e!3107420)))

(declare-fun res!2122254 () Bool)

(assert (=> b!4971799 (=> res!2122254 e!3107420)))

(assert (=> b!4971799 (= res!2122254 (not (isDefined!11371 lt!2053215)))))

(declare-fun b!4971800 () Bool)

(assert (=> b!4971800 (= e!3107421 (= (list!18377 (_2!34401 (get!19951 lt!2053215))) (_2!34402 (get!19950 (maxPrefix!4664 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun b!4971801 () Bool)

(declare-fun res!2122257 () Bool)

(assert (=> b!4971801 (=> (not res!2122257) (not e!3107422))))

(declare-fun e!3107419 () Bool)

(assert (=> b!4971801 (= res!2122257 e!3107419)))

(declare-fun res!2122256 () Bool)

(assert (=> b!4971801 (=> res!2122256 e!3107419)))

(assert (=> b!4971801 (= res!2122256 (not (isDefined!11371 lt!2053215)))))

(declare-fun e!3107418 () Bool)

(declare-fun b!4971802 () Bool)

(assert (=> b!4971802 (= e!3107418 (= (list!18377 (_2!34401 (get!19951 lt!2053215))) (_2!34402 (get!19950 (maxPrefixZipper!790 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun d!1600800 () Bool)

(assert (=> d!1600800 e!3107422))

(declare-fun res!2122253 () Bool)

(assert (=> d!1600800 (=> (not res!2122253) (not e!3107422))))

(assert (=> d!1600800 (= res!2122253 (= (isDefined!11371 lt!2053215) (isDefined!11370 (maxPrefixZipper!790 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342)))))))

(declare-fun e!3107423 () Option!14457)

(assert (=> d!1600800 (= lt!2053215 e!3107423)))

(declare-fun c!848350 () Bool)

(assert (=> d!1600800 (= c!848350 (and (is-Cons!57458 (t!369112 (t!369112 rulesArg!259))) (is-Nil!57458 (t!369112 (t!369112 (t!369112 rulesArg!259))))))))

(declare-fun lt!2053217 () Unit!148415)

(declare-fun lt!2053212 () Unit!148415)

(assert (=> d!1600800 (= lt!2053217 lt!2053212)))

(declare-fun lt!2053213 () List!57581)

(declare-fun lt!2053214 () List!57581)

(assert (=> d!1600800 (isPrefix!5248 lt!2053213 lt!2053214)))

(assert (=> d!1600800 (= lt!2053212 (lemmaIsPrefixRefl!3572 lt!2053213 lt!2053214))))

(assert (=> d!1600800 (= lt!2053214 (list!18377 input!1342))))

(assert (=> d!1600800 (= lt!2053213 (list!18377 input!1342))))

(assert (=> d!1600800 (rulesValidInductive!3300 thiss!15247 (t!369112 (t!369112 rulesArg!259)))))

(assert (=> d!1600800 (= (maxPrefixZipperSequenceV2!708 thiss!15247 (t!369112 (t!369112 rulesArg!259)) input!1342 totalInput!464) lt!2053215)))

(declare-fun b!4971803 () Bool)

(declare-fun lt!2053216 () Option!14457)

(declare-fun lt!2053211 () Option!14457)

(assert (=> b!4971803 (= e!3107423 (ite (and (is-None!14456 lt!2053216) (is-None!14456 lt!2053211)) None!14456 (ite (is-None!14456 lt!2053211) lt!2053216 (ite (is-None!14456 lt!2053216) lt!2053211 (ite (>= (size!38086 (_1!34401 (v!50449 lt!2053216))) (size!38086 (_1!34401 (v!50449 lt!2053211)))) lt!2053216 lt!2053211)))))))

(declare-fun call!346734 () Option!14457)

(assert (=> b!4971803 (= lt!2053216 call!346734)))

(assert (=> b!4971803 (= lt!2053211 (maxPrefixZipperSequenceV2!708 thiss!15247 (t!369112 (t!369112 (t!369112 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4971804 () Bool)

(assert (=> b!4971804 (= e!3107419 e!3107418)))

(declare-fun res!2122252 () Bool)

(assert (=> b!4971804 (=> (not res!2122252) (not e!3107418))))

(assert (=> b!4971804 (= res!2122252 (= (_1!34401 (get!19951 lt!2053215)) (_1!34402 (get!19950 (maxPrefixZipper!790 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun b!4971805 () Bool)

(assert (=> b!4971805 (= e!3107423 call!346734)))

(declare-fun bm!346729 () Bool)

(assert (=> bm!346729 (= call!346734 (maxPrefixOneRuleZipperSequenceV2!365 thiss!15247 (h!63906 (t!369112 (t!369112 rulesArg!259))) input!1342 totalInput!464))))

(assert (= (and d!1600800 c!848350) b!4971805))

(assert (= (and d!1600800 (not c!848350)) b!4971803))

(assert (= (or b!4971805 b!4971803) bm!346729))

(assert (= (and d!1600800 res!2122253) b!4971801))

(assert (= (and b!4971801 (not res!2122256)) b!4971804))

(assert (= (and b!4971804 res!2122252) b!4971802))

(assert (= (and b!4971801 res!2122257) b!4971799))

(assert (= (and b!4971799 (not res!2122254)) b!4971798))

(assert (= (and b!4971798 res!2122255) b!4971800))

(declare-fun m!6000108 () Bool)

(assert (=> bm!346729 m!6000108))

(declare-fun m!6000110 () Bool)

(assert (=> b!4971799 m!6000110))

(declare-fun m!6000112 () Bool)

(assert (=> b!4971800 m!6000112))

(declare-fun m!6000114 () Bool)

(assert (=> b!4971800 m!6000114))

(declare-fun m!6000116 () Bool)

(assert (=> b!4971800 m!6000116))

(assert (=> b!4971800 m!5999670))

(assert (=> b!4971800 m!6000114))

(assert (=> b!4971800 m!5999670))

(declare-fun m!6000118 () Bool)

(assert (=> b!4971800 m!6000118))

(declare-fun m!6000120 () Bool)

(assert (=> b!4971803 m!6000120))

(assert (=> b!4971798 m!6000112))

(assert (=> b!4971798 m!5999670))

(assert (=> b!4971798 m!5999670))

(assert (=> b!4971798 m!6000114))

(assert (=> b!4971798 m!6000114))

(assert (=> b!4971798 m!6000116))

(assert (=> b!4971801 m!6000110))

(declare-fun m!6000122 () Bool)

(assert (=> d!1600800 m!6000122))

(declare-fun m!6000124 () Bool)

(assert (=> d!1600800 m!6000124))

(assert (=> d!1600800 m!5999670))

(declare-fun m!6000126 () Bool)

(assert (=> d!1600800 m!6000126))

(assert (=> d!1600800 m!6000110))

(declare-fun m!6000128 () Bool)

(assert (=> d!1600800 m!6000128))

(assert (=> d!1600800 m!5999670))

(assert (=> d!1600800 m!6000122))

(declare-fun m!6000130 () Bool)

(assert (=> d!1600800 m!6000130))

(assert (=> b!4971804 m!6000112))

(assert (=> b!4971804 m!5999670))

(assert (=> b!4971804 m!5999670))

(assert (=> b!4971804 m!6000122))

(assert (=> b!4971804 m!6000122))

(declare-fun m!6000132 () Bool)

(assert (=> b!4971804 m!6000132))

(assert (=> b!4971802 m!6000112))

(assert (=> b!4971802 m!5999670))

(assert (=> b!4971802 m!6000118))

(assert (=> b!4971802 m!5999670))

(assert (=> b!4971802 m!6000122))

(assert (=> b!4971802 m!6000122))

(assert (=> b!4971802 m!6000132))

(assert (=> b!4971479 d!1600800))

(declare-fun b!4971806 () Bool)

(declare-fun res!2122260 () Bool)

(declare-fun e!3107425 () Bool)

(assert (=> b!4971806 (=> (not res!2122260) (not e!3107425))))

(declare-fun lt!2053221 () Option!14458)

(assert (=> b!4971806 (= res!2122260 (matchR!6640 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053221)))) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053221))))))))

(declare-fun b!4971807 () Bool)

(declare-fun e!3107424 () Bool)

(assert (=> b!4971807 (= e!3107424 e!3107425)))

(declare-fun res!2122261 () Bool)

(assert (=> b!4971807 (=> (not res!2122261) (not e!3107425))))

(assert (=> b!4971807 (= res!2122261 (isDefined!11370 lt!2053221))))

(declare-fun b!4971808 () Bool)

(declare-fun e!3107426 () Option!14458)

(declare-fun call!346735 () Option!14458)

(assert (=> b!4971808 (= e!3107426 call!346735)))

(declare-fun b!4971809 () Bool)

(declare-fun res!2122258 () Bool)

(assert (=> b!4971809 (=> (not res!2122258) (not e!3107425))))

(assert (=> b!4971809 (= res!2122258 (= (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053221)))) (originalCharacters!8676 (_1!34402 (get!19950 lt!2053221)))))))

(declare-fun b!4971810 () Bool)

(declare-fun res!2122262 () Bool)

(assert (=> b!4971810 (=> (not res!2122262) (not e!3107425))))

(assert (=> b!4971810 (= res!2122262 (= (value!268756 (_1!34402 (get!19950 lt!2053221))) (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053221)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053221)))))))))

(declare-fun bm!346730 () Bool)

(assert (=> bm!346730 (= call!346735 (maxPrefixOneRule!3633 thiss!15247 (h!63906 (t!369112 rulesArg!259)) lt!2052978))))

(declare-fun b!4971811 () Bool)

(assert (=> b!4971811 (= e!3107425 (contains!19542 (t!369112 rulesArg!259) (rule!11653 (_1!34402 (get!19950 lt!2053221)))))))

(declare-fun b!4971812 () Bool)

(declare-fun res!2122259 () Bool)

(assert (=> b!4971812 (=> (not res!2122259) (not e!3107425))))

(assert (=> b!4971812 (= res!2122259 (< (size!38088 (_2!34402 (get!19950 lt!2053221))) (size!38088 lt!2052978)))))

(declare-fun d!1600802 () Bool)

(assert (=> d!1600802 e!3107424))

(declare-fun res!2122264 () Bool)

(assert (=> d!1600802 (=> res!2122264 e!3107424)))

(assert (=> d!1600802 (= res!2122264 (isEmpty!30961 lt!2053221))))

(assert (=> d!1600802 (= lt!2053221 e!3107426)))

(declare-fun c!848351 () Bool)

(assert (=> d!1600802 (= c!848351 (and (is-Cons!57458 (t!369112 rulesArg!259)) (is-Nil!57458 (t!369112 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053222 () Unit!148415)

(declare-fun lt!2053220 () Unit!148415)

(assert (=> d!1600802 (= lt!2053222 lt!2053220)))

(assert (=> d!1600802 (isPrefix!5248 lt!2052978 lt!2052978)))

(assert (=> d!1600802 (= lt!2053220 (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978))))

(assert (=> d!1600802 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259))))

(assert (=> d!1600802 (= (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) lt!2052978) lt!2053221)))

(declare-fun b!4971813 () Bool)

(declare-fun lt!2053218 () Option!14458)

(declare-fun lt!2053219 () Option!14458)

(assert (=> b!4971813 (= e!3107426 (ite (and (is-None!14457 lt!2053218) (is-None!14457 lt!2053219)) None!14457 (ite (is-None!14457 lt!2053219) lt!2053218 (ite (is-None!14457 lt!2053218) lt!2053219 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053218))) (size!38086 (_1!34402 (v!50450 lt!2053219)))) lt!2053218 lt!2053219)))))))

(assert (=> b!4971813 (= lt!2053218 call!346735)))

(assert (=> b!4971813 (= lt!2053219 (maxPrefix!4664 thiss!15247 (t!369112 (t!369112 rulesArg!259)) lt!2052978))))

(declare-fun b!4971814 () Bool)

(declare-fun res!2122263 () Bool)

(assert (=> b!4971814 (=> (not res!2122263) (not e!3107425))))

(assert (=> b!4971814 (= res!2122263 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053221)))) (_2!34402 (get!19950 lt!2053221))) lt!2052978))))

(assert (= (and d!1600802 c!848351) b!4971808))

(assert (= (and d!1600802 (not c!848351)) b!4971813))

(assert (= (or b!4971808 b!4971813) bm!346730))

(assert (= (and d!1600802 (not res!2122264)) b!4971807))

(assert (= (and b!4971807 res!2122261) b!4971809))

(assert (= (and b!4971809 res!2122258) b!4971812))

(assert (= (and b!4971812 res!2122259) b!4971814))

(assert (= (and b!4971814 res!2122263) b!4971810))

(assert (= (and b!4971810 res!2122262) b!4971806))

(assert (= (and b!4971806 res!2122260) b!4971811))

(declare-fun m!6000134 () Bool)

(assert (=> d!1600802 m!6000134))

(assert (=> d!1600802 m!5999662))

(assert (=> d!1600802 m!5999664))

(assert (=> d!1600802 m!5999784))

(declare-fun m!6000136 () Bool)

(assert (=> bm!346730 m!6000136))

(declare-fun m!6000138 () Bool)

(assert (=> b!4971814 m!6000138))

(declare-fun m!6000140 () Bool)

(assert (=> b!4971814 m!6000140))

(assert (=> b!4971814 m!6000140))

(declare-fun m!6000142 () Bool)

(assert (=> b!4971814 m!6000142))

(assert (=> b!4971814 m!6000142))

(declare-fun m!6000144 () Bool)

(assert (=> b!4971814 m!6000144))

(declare-fun m!6000146 () Bool)

(assert (=> b!4971807 m!6000146))

(assert (=> b!4971811 m!6000138))

(declare-fun m!6000148 () Bool)

(assert (=> b!4971811 m!6000148))

(assert (=> b!4971812 m!6000138))

(declare-fun m!6000150 () Bool)

(assert (=> b!4971812 m!6000150))

(assert (=> b!4971812 m!5999866))

(assert (=> b!4971809 m!6000138))

(assert (=> b!4971809 m!6000140))

(assert (=> b!4971809 m!6000140))

(assert (=> b!4971809 m!6000142))

(assert (=> b!4971806 m!6000138))

(assert (=> b!4971806 m!6000140))

(assert (=> b!4971806 m!6000140))

(assert (=> b!4971806 m!6000142))

(assert (=> b!4971806 m!6000142))

(declare-fun m!6000152 () Bool)

(assert (=> b!4971806 m!6000152))

(declare-fun m!6000154 () Bool)

(assert (=> b!4971813 m!6000154))

(assert (=> b!4971810 m!6000138))

(declare-fun m!6000156 () Bool)

(assert (=> b!4971810 m!6000156))

(assert (=> b!4971810 m!6000156))

(declare-fun m!6000158 () Bool)

(assert (=> b!4971810 m!6000158))

(assert (=> b!4971595 d!1600802))

(declare-fun d!1600804 () Bool)

(assert (=> d!1600804 (= (inv!75112 (xs!18475 (c!848311 input!1342))) (<= (size!38088 (innerList!15237 (xs!18475 (c!848311 input!1342)))) 2147483647))))

(declare-fun bs!1183577 () Bool)

(assert (= bs!1183577 d!1600804))

(declare-fun m!6000160 () Bool)

(assert (=> bs!1183577 m!6000160))

(assert (=> b!4971615 d!1600804))

(declare-fun d!1600806 () Bool)

(assert (=> d!1600806 (= (inv!75112 (xs!18475 (c!848311 totalInput!464))) (<= (size!38088 (innerList!15237 (xs!18475 (c!848311 totalInput!464)))) 2147483647))))

(declare-fun bs!1183578 () Bool)

(assert (= bs!1183578 d!1600806))

(declare-fun m!6000162 () Bool)

(assert (=> bs!1183578 m!6000162))

(assert (=> b!4971643 d!1600806))

(declare-fun bs!1183579 () Bool)

(declare-fun d!1600808 () Bool)

(assert (= bs!1183579 (and d!1600808 b!4971528)))

(declare-fun lambda!247471 () Int)

(assert (=> bs!1183579 (= lambda!247471 lambda!247457)))

(assert (=> d!1600808 true))

(assert (=> d!1600808 (< (dynLambda!23195 order!26239 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23194 order!26237 lambda!247471))))

(assert (=> d!1600808 true))

(assert (=> d!1600808 (< (dynLambda!23193 order!26235 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23194 order!26237 lambda!247471))))

(declare-fun Forall!1766 (Int) Bool)

(assert (=> d!1600808 (= (semiInverseModEq!3704 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (Forall!1766 lambda!247471))))

(declare-fun bs!1183580 () Bool)

(assert (= bs!1183580 d!1600808))

(declare-fun m!6000164 () Bool)

(assert (=> bs!1183580 m!6000164))

(assert (=> d!1600724 d!1600808))

(declare-fun b!4971847 () Bool)

(declare-fun e!3107443 () Bool)

(declare-fun derivativeStep!3926 (Regex!13630 C!27510) Regex!13630)

(assert (=> b!4971847 (= e!3107443 (matchR!6640 (derivativeStep!3926 (regex!8397 (h!63906 rulesArg!259)) (head!10672 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104))))) (tail!9805 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104))))))))

(declare-fun b!4971848 () Bool)

(declare-fun res!2122288 () Bool)

(declare-fun e!3107447 () Bool)

(assert (=> b!4971848 (=> res!2122288 e!3107447)))

(assert (=> b!4971848 (= res!2122288 (not (is-ElementMatch!13630 (regex!8397 (h!63906 rulesArg!259)))))))

(declare-fun e!3107441 () Bool)

(assert (=> b!4971848 (= e!3107441 e!3107447)))

(declare-fun b!4971849 () Bool)

(declare-fun e!3107446 () Bool)

(declare-fun lt!2053225 () Bool)

(declare-fun call!346738 () Bool)

(assert (=> b!4971849 (= e!3107446 (= lt!2053225 call!346738))))

(declare-fun b!4971850 () Bool)

(declare-fun e!3107445 () Bool)

(assert (=> b!4971850 (= e!3107445 (not (= (head!10672 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))) (c!848310 (regex!8397 (h!63906 rulesArg!259))))))))

(declare-fun b!4971851 () Bool)

(declare-fun res!2122287 () Bool)

(declare-fun e!3107444 () Bool)

(assert (=> b!4971851 (=> (not res!2122287) (not e!3107444))))

(assert (=> b!4971851 (= res!2122287 (not call!346738))))

(declare-fun b!4971852 () Bool)

(assert (=> b!4971852 (= e!3107446 e!3107441)))

(declare-fun c!848360 () Bool)

(assert (=> b!4971852 (= c!848360 (is-EmptyLang!13630 (regex!8397 (h!63906 rulesArg!259))))))

(declare-fun b!4971853 () Bool)

(declare-fun res!2122282 () Bool)

(assert (=> b!4971853 (=> (not res!2122282) (not e!3107444))))

(assert (=> b!4971853 (= res!2122282 (isEmpty!30960 (tail!9805 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104))))))))

(declare-fun b!4971855 () Bool)

(declare-fun res!2122283 () Bool)

(assert (=> b!4971855 (=> res!2122283 e!3107445)))

(assert (=> b!4971855 (= res!2122283 (not (isEmpty!30960 (tail!9805 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))))

(declare-fun b!4971856 () Bool)

(declare-fun e!3107442 () Bool)

(assert (=> b!4971856 (= e!3107447 e!3107442)))

(declare-fun res!2122286 () Bool)

(assert (=> b!4971856 (=> (not res!2122286) (not e!3107442))))

(assert (=> b!4971856 (= res!2122286 (not lt!2053225))))

(declare-fun b!4971857 () Bool)

(assert (=> b!4971857 (= e!3107442 e!3107445)))

(declare-fun res!2122285 () Bool)

(assert (=> b!4971857 (=> res!2122285 e!3107445)))

(assert (=> b!4971857 (= res!2122285 call!346738)))

(declare-fun b!4971858 () Bool)

(assert (=> b!4971858 (= e!3107444 (= (head!10672 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))) (c!848310 (regex!8397 (h!63906 rulesArg!259)))))))

(declare-fun bm!346733 () Bool)

(assert (=> bm!346733 (= call!346738 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(declare-fun b!4971859 () Bool)

(assert (=> b!4971859 (= e!3107441 (not lt!2053225))))

(declare-fun b!4971860 () Bool)

(declare-fun res!2122284 () Bool)

(assert (=> b!4971860 (=> res!2122284 e!3107447)))

(assert (=> b!4971860 (= res!2122284 e!3107444)))

(declare-fun res!2122281 () Bool)

(assert (=> b!4971860 (=> (not res!2122281) (not e!3107444))))

(assert (=> b!4971860 (= res!2122281 lt!2053225)))

(declare-fun d!1600810 () Bool)

(assert (=> d!1600810 e!3107446))

(declare-fun c!848359 () Bool)

(assert (=> d!1600810 (= c!848359 (is-EmptyExpr!13630 (regex!8397 (h!63906 rulesArg!259))))))

(assert (=> d!1600810 (= lt!2053225 e!3107443)))

(declare-fun c!848358 () Bool)

(assert (=> d!1600810 (= c!848358 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(declare-fun validRegex!5973 (Regex!13630) Bool)

(assert (=> d!1600810 (validRegex!5973 (regex!8397 (h!63906 rulesArg!259)))))

(assert (=> d!1600810 (= (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))) lt!2053225)))

(declare-fun b!4971854 () Bool)

(declare-fun nullable!4624 (Regex!13630) Bool)

(assert (=> b!4971854 (= e!3107443 (nullable!4624 (regex!8397 (h!63906 rulesArg!259))))))

(assert (= (and d!1600810 c!848358) b!4971854))

(assert (= (and d!1600810 (not c!848358)) b!4971847))

(assert (= (and d!1600810 c!848359) b!4971849))

(assert (= (and d!1600810 (not c!848359)) b!4971852))

(assert (= (and b!4971852 c!848360) b!4971859))

(assert (= (and b!4971852 (not c!848360)) b!4971848))

(assert (= (and b!4971848 (not res!2122288)) b!4971860))

(assert (= (and b!4971860 res!2122281) b!4971851))

(assert (= (and b!4971851 res!2122287) b!4971853))

(assert (= (and b!4971853 res!2122282) b!4971858))

(assert (= (and b!4971860 (not res!2122284)) b!4971856))

(assert (= (and b!4971856 res!2122286) b!4971857))

(assert (= (and b!4971857 (not res!2122285)) b!4971855))

(assert (= (and b!4971855 (not res!2122283)) b!4971850))

(assert (= (or b!4971849 b!4971851 b!4971857) bm!346733))

(assert (=> d!1600810 m!5999844))

(declare-fun m!6000166 () Bool)

(assert (=> d!1600810 m!6000166))

(declare-fun m!6000168 () Bool)

(assert (=> b!4971854 m!6000168))

(declare-fun m!6000170 () Bool)

(assert (=> b!4971847 m!6000170))

(assert (=> b!4971847 m!6000170))

(declare-fun m!6000172 () Bool)

(assert (=> b!4971847 m!6000172))

(declare-fun m!6000174 () Bool)

(assert (=> b!4971847 m!6000174))

(assert (=> b!4971847 m!6000172))

(assert (=> b!4971847 m!6000174))

(declare-fun m!6000176 () Bool)

(assert (=> b!4971847 m!6000176))

(assert (=> bm!346733 m!5999844))

(assert (=> b!4971853 m!6000174))

(assert (=> b!4971853 m!6000174))

(declare-fun m!6000178 () Bool)

(assert (=> b!4971853 m!6000178))

(assert (=> b!4971855 m!6000174))

(assert (=> b!4971855 m!6000174))

(assert (=> b!4971855 m!6000178))

(assert (=> b!4971858 m!6000170))

(assert (=> b!4971850 m!6000170))

(assert (=> b!4971526 d!1600810))

(declare-fun b!4971889 () Bool)

(declare-fun e!3107470 () tuple2!62204)

(declare-fun call!346755 () tuple2!62204)

(assert (=> b!4971889 (= e!3107470 call!346755)))

(declare-fun b!4971890 () Bool)

(declare-fun e!3107471 () tuple2!62204)

(assert (=> b!4971890 (= e!3107470 e!3107471)))

(declare-fun lt!2053306 () tuple2!62204)

(assert (=> b!4971890 (= lt!2053306 call!346755)))

(declare-fun c!848376 () Bool)

(assert (=> b!4971890 (= c!848376 (isEmpty!30960 (_1!34405 lt!2053306)))))

(declare-fun b!4971891 () Bool)

(declare-fun c!848378 () Bool)

(declare-fun call!346761 () Bool)

(assert (=> b!4971891 (= c!848378 call!346761)))

(declare-fun lt!2053296 () Unit!148415)

(declare-fun lt!2053291 () Unit!148415)

(assert (=> b!4971891 (= lt!2053296 lt!2053291)))

(declare-fun lt!2053295 () C!27510)

(declare-fun lt!2053282 () List!57581)

(assert (=> b!4971891 (= (++!12536 (++!12536 Nil!57457 (Cons!57457 lt!2053295 Nil!57457)) lt!2053282) lt!2053104)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1449 (List!57581 C!27510 List!57581 List!57581) Unit!148415)

(assert (=> b!4971891 (= lt!2053291 (lemmaMoveElementToOtherListKeepsConcatEq!1449 Nil!57457 lt!2053295 lt!2053282 lt!2053104))))

(assert (=> b!4971891 (= lt!2053282 (tail!9805 lt!2053104))))

(assert (=> b!4971891 (= lt!2053295 (head!10672 lt!2053104))))

(declare-fun lt!2053294 () Unit!148415)

(declare-fun lt!2053283 () Unit!148415)

(assert (=> b!4971891 (= lt!2053294 lt!2053283)))

(declare-fun getSuffix!3092 (List!57581 List!57581) List!57581)

(assert (=> b!4971891 (isPrefix!5248 (++!12536 Nil!57457 (Cons!57457 (head!10672 (getSuffix!3092 lt!2053104 Nil!57457)) Nil!57457)) lt!2053104)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!839 (List!57581 List!57581) Unit!148415)

(assert (=> b!4971891 (= lt!2053283 (lemmaAddHeadSuffixToPrefixStillPrefix!839 Nil!57457 lt!2053104))))

(declare-fun lt!2053289 () Unit!148415)

(declare-fun lt!2053304 () Unit!148415)

(assert (=> b!4971891 (= lt!2053289 lt!2053304)))

(assert (=> b!4971891 (= lt!2053304 (lemmaAddHeadSuffixToPrefixStillPrefix!839 Nil!57457 lt!2053104))))

(declare-fun lt!2053286 () List!57581)

(assert (=> b!4971891 (= lt!2053286 (++!12536 Nil!57457 (Cons!57457 (head!10672 lt!2053104) Nil!57457)))))

(declare-fun lt!2053299 () Unit!148415)

(declare-fun e!3107468 () Unit!148415)

(assert (=> b!4971891 (= lt!2053299 e!3107468)))

(declare-fun c!848374 () Bool)

(assert (=> b!4971891 (= c!848374 (= (size!38088 Nil!57457) (size!38088 lt!2053104)))))

(declare-fun lt!2053307 () Unit!148415)

(declare-fun lt!2053293 () Unit!148415)

(assert (=> b!4971891 (= lt!2053307 lt!2053293)))

(assert (=> b!4971891 (<= (size!38088 Nil!57457) (size!38088 lt!2053104))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!765 (List!57581 List!57581) Unit!148415)

(assert (=> b!4971891 (= lt!2053293 (lemmaIsPrefixThenSmallerEqSize!765 Nil!57457 lt!2053104))))

(declare-fun e!3107464 () tuple2!62204)

(assert (=> b!4971891 (= e!3107464 e!3107470)))

(declare-fun bm!346750 () Bool)

(declare-fun call!346760 () Bool)

(assert (=> bm!346750 (= call!346760 (isPrefix!5248 lt!2053104 lt!2053104))))

(declare-fun call!346759 () Regex!13630)

(declare-fun call!346757 () List!57581)

(declare-fun bm!346751 () Bool)

(assert (=> bm!346751 (= call!346755 (findLongestMatchInner!1859 call!346759 lt!2053286 (+ (size!38088 Nil!57457) 1) call!346757 lt!2053104 (size!38088 lt!2053104)))))

(declare-fun bm!346752 () Bool)

(declare-fun call!346758 () C!27510)

(assert (=> bm!346752 (= call!346758 (head!10672 lt!2053104))))

(declare-fun bm!346753 () Bool)

(declare-fun call!346756 () Unit!148415)

(assert (=> bm!346753 (= call!346756 (lemmaIsPrefixRefl!3572 lt!2053104 lt!2053104))))

(declare-fun b!4971892 () Bool)

(declare-fun e!3107466 () tuple2!62204)

(assert (=> b!4971892 (= e!3107466 (tuple2!62205 Nil!57457 lt!2053104))))

(declare-fun b!4971893 () Bool)

(assert (=> b!4971893 (= e!3107466 e!3107464)))

(declare-fun c!848373 () Bool)

(assert (=> b!4971893 (= c!848373 (= (size!38088 Nil!57457) (size!38088 lt!2053104)))))

(declare-fun b!4971894 () Bool)

(declare-fun c!848375 () Bool)

(assert (=> b!4971894 (= c!848375 call!346761)))

(declare-fun lt!2053301 () Unit!148415)

(declare-fun lt!2053308 () Unit!148415)

(assert (=> b!4971894 (= lt!2053301 lt!2053308)))

(assert (=> b!4971894 (= lt!2053104 Nil!57457)))

(declare-fun call!346762 () Unit!148415)

(assert (=> b!4971894 (= lt!2053308 call!346762)))

(declare-fun lt!2053309 () Unit!148415)

(declare-fun lt!2053303 () Unit!148415)

(assert (=> b!4971894 (= lt!2053309 lt!2053303)))

(assert (=> b!4971894 call!346760))

(assert (=> b!4971894 (= lt!2053303 call!346756)))

(declare-fun e!3107467 () tuple2!62204)

(assert (=> b!4971894 (= e!3107464 e!3107467)))

(declare-fun b!4971895 () Bool)

(declare-fun e!3107469 () Bool)

(declare-fun e!3107465 () Bool)

(assert (=> b!4971895 (= e!3107469 e!3107465)))

(declare-fun res!2122302 () Bool)

(assert (=> b!4971895 (=> res!2122302 e!3107465)))

(declare-fun lt!2053298 () tuple2!62204)

(assert (=> b!4971895 (= res!2122302 (isEmpty!30960 (_1!34405 lt!2053298)))))

(declare-fun b!4971896 () Bool)

(assert (=> b!4971896 (= e!3107467 (tuple2!62205 Nil!57457 Nil!57457))))

(declare-fun b!4971897 () Bool)

(declare-fun Unit!148420 () Unit!148415)

(assert (=> b!4971897 (= e!3107468 Unit!148420)))

(declare-fun lt!2053290 () Unit!148415)

(assert (=> b!4971897 (= lt!2053290 call!346756)))

(assert (=> b!4971897 call!346760))

(declare-fun lt!2053302 () Unit!148415)

(assert (=> b!4971897 (= lt!2053302 lt!2053290)))

(declare-fun lt!2053288 () Unit!148415)

(assert (=> b!4971897 (= lt!2053288 call!346762)))

(assert (=> b!4971897 (= lt!2053104 Nil!57457)))

(declare-fun lt!2053297 () Unit!148415)

(assert (=> b!4971897 (= lt!2053297 lt!2053288)))

(assert (=> b!4971897 false))

(declare-fun b!4971898 () Bool)

(assert (=> b!4971898 (= e!3107471 lt!2053306)))

(declare-fun b!4971899 () Bool)

(assert (=> b!4971899 (= e!3107467 (tuple2!62205 Nil!57457 lt!2053104))))

(declare-fun bm!346754 () Bool)

(assert (=> bm!346754 (= call!346759 (derivativeStep!3926 (regex!8397 (h!63906 rulesArg!259)) call!346758))))

(declare-fun bm!346755 () Bool)

(assert (=> bm!346755 (= call!346761 (nullable!4624 (regex!8397 (h!63906 rulesArg!259))))))

(declare-fun b!4971900 () Bool)

(declare-fun Unit!148421 () Unit!148415)

(assert (=> b!4971900 (= e!3107468 Unit!148421)))

(declare-fun bm!346756 () Bool)

(assert (=> bm!346756 (= call!346757 (tail!9805 lt!2053104))))

(declare-fun bm!346757 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1212 (List!57581 List!57581 List!57581) Unit!148415)

(assert (=> bm!346757 (= call!346762 (lemmaIsPrefixSameLengthThenSameList!1212 lt!2053104 Nil!57457 lt!2053104))))

(declare-fun d!1600812 () Bool)

(assert (=> d!1600812 e!3107469))

(declare-fun res!2122301 () Bool)

(assert (=> d!1600812 (=> (not res!2122301) (not e!3107469))))

(assert (=> d!1600812 (= res!2122301 (= (++!12536 (_1!34405 lt!2053298) (_2!34405 lt!2053298)) lt!2053104))))

(assert (=> d!1600812 (= lt!2053298 e!3107466)))

(declare-fun c!848377 () Bool)

(declare-fun lostCause!1136 (Regex!13630) Bool)

(assert (=> d!1600812 (= c!848377 (lostCause!1136 (regex!8397 (h!63906 rulesArg!259))))))

(declare-fun lt!2053284 () Unit!148415)

(declare-fun Unit!148422 () Unit!148415)

(assert (=> d!1600812 (= lt!2053284 Unit!148422)))

(assert (=> d!1600812 (= (getSuffix!3092 lt!2053104 Nil!57457) lt!2053104)))

(declare-fun lt!2053287 () Unit!148415)

(declare-fun lt!2053300 () Unit!148415)

(assert (=> d!1600812 (= lt!2053287 lt!2053300)))

(declare-fun lt!2053305 () List!57581)

(assert (=> d!1600812 (= lt!2053104 lt!2053305)))

(declare-fun lemmaSamePrefixThenSameSuffix!2504 (List!57581 List!57581 List!57581 List!57581 List!57581) Unit!148415)

(assert (=> d!1600812 (= lt!2053300 (lemmaSamePrefixThenSameSuffix!2504 Nil!57457 lt!2053104 Nil!57457 lt!2053305 lt!2053104))))

(assert (=> d!1600812 (= lt!2053305 (getSuffix!3092 lt!2053104 Nil!57457))))

(declare-fun lt!2053285 () Unit!148415)

(declare-fun lt!2053292 () Unit!148415)

(assert (=> d!1600812 (= lt!2053285 lt!2053292)))

(assert (=> d!1600812 (isPrefix!5248 Nil!57457 (++!12536 Nil!57457 lt!2053104))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3350 (List!57581 List!57581) Unit!148415)

(assert (=> d!1600812 (= lt!2053292 (lemmaConcatTwoListThenFirstIsPrefix!3350 Nil!57457 lt!2053104))))

(assert (=> d!1600812 (validRegex!5973 (regex!8397 (h!63906 rulesArg!259)))))

(assert (=> d!1600812 (= (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)) lt!2053298)))

(declare-fun b!4971901 () Bool)

(assert (=> b!4971901 (= e!3107465 (>= (size!38088 (_1!34405 lt!2053298)) (size!38088 Nil!57457)))))

(declare-fun b!4971902 () Bool)

(assert (=> b!4971902 (= e!3107471 (tuple2!62205 Nil!57457 lt!2053104))))

(assert (= (and d!1600812 c!848377) b!4971892))

(assert (= (and d!1600812 (not c!848377)) b!4971893))

(assert (= (and b!4971893 c!848373) b!4971894))

(assert (= (and b!4971893 (not c!848373)) b!4971891))

(assert (= (and b!4971894 c!848375) b!4971896))

(assert (= (and b!4971894 (not c!848375)) b!4971899))

(assert (= (and b!4971891 c!848374) b!4971897))

(assert (= (and b!4971891 (not c!848374)) b!4971900))

(assert (= (and b!4971891 c!848378) b!4971890))

(assert (= (and b!4971891 (not c!848378)) b!4971889))

(assert (= (and b!4971890 c!848376) b!4971902))

(assert (= (and b!4971890 (not c!848376)) b!4971898))

(assert (= (or b!4971890 b!4971889) bm!346752))

(assert (= (or b!4971890 b!4971889) bm!346756))

(assert (= (or b!4971890 b!4971889) bm!346754))

(assert (= (or b!4971890 b!4971889) bm!346751))

(assert (= (or b!4971894 b!4971897) bm!346753))

(assert (= (or b!4971894 b!4971897) bm!346757))

(assert (= (or b!4971894 b!4971891) bm!346755))

(assert (= (or b!4971894 b!4971897) bm!346750))

(assert (= (and d!1600812 res!2122301) b!4971895))

(assert (= (and b!4971895 (not res!2122302)) b!4971901))

(assert (=> bm!346755 m!6000168))

(declare-fun m!6000180 () Bool)

(assert (=> bm!346750 m!6000180))

(declare-fun m!6000182 () Bool)

(assert (=> bm!346756 m!6000182))

(assert (=> bm!346751 m!5999828))

(declare-fun m!6000184 () Bool)

(assert (=> bm!346751 m!6000184))

(assert (=> b!4971891 m!5999826))

(declare-fun m!6000186 () Bool)

(assert (=> b!4971891 m!6000186))

(declare-fun m!6000188 () Bool)

(assert (=> b!4971891 m!6000188))

(declare-fun m!6000190 () Bool)

(assert (=> b!4971891 m!6000190))

(declare-fun m!6000192 () Bool)

(assert (=> b!4971891 m!6000192))

(declare-fun m!6000194 () Bool)

(assert (=> b!4971891 m!6000194))

(declare-fun m!6000196 () Bool)

(assert (=> b!4971891 m!6000196))

(declare-fun m!6000198 () Bool)

(assert (=> b!4971891 m!6000198))

(assert (=> b!4971891 m!6000196))

(declare-fun m!6000200 () Bool)

(assert (=> b!4971891 m!6000200))

(assert (=> b!4971891 m!6000198))

(declare-fun m!6000202 () Bool)

(assert (=> b!4971891 m!6000202))

(assert (=> b!4971891 m!5999828))

(assert (=> b!4971891 m!6000182))

(assert (=> b!4971891 m!6000192))

(declare-fun m!6000204 () Bool)

(assert (=> b!4971891 m!6000204))

(declare-fun m!6000206 () Bool)

(assert (=> b!4971891 m!6000206))

(declare-fun m!6000208 () Bool)

(assert (=> b!4971901 m!6000208))

(assert (=> b!4971901 m!5999826))

(declare-fun m!6000210 () Bool)

(assert (=> bm!346754 m!6000210))

(declare-fun m!6000212 () Bool)

(assert (=> b!4971895 m!6000212))

(assert (=> bm!346752 m!6000194))

(declare-fun m!6000214 () Bool)

(assert (=> bm!346753 m!6000214))

(declare-fun m!6000216 () Bool)

(assert (=> b!4971890 m!6000216))

(declare-fun m!6000218 () Bool)

(assert (=> d!1600812 m!6000218))

(declare-fun m!6000220 () Bool)

(assert (=> d!1600812 m!6000220))

(declare-fun m!6000222 () Bool)

(assert (=> d!1600812 m!6000222))

(assert (=> d!1600812 m!6000166))

(declare-fun m!6000224 () Bool)

(assert (=> d!1600812 m!6000224))

(assert (=> d!1600812 m!6000192))

(assert (=> d!1600812 m!6000220))

(declare-fun m!6000226 () Bool)

(assert (=> d!1600812 m!6000226))

(declare-fun m!6000228 () Bool)

(assert (=> d!1600812 m!6000228))

(declare-fun m!6000230 () Bool)

(assert (=> bm!346757 m!6000230))

(assert (=> b!4971526 d!1600812))

(declare-fun d!1600814 () Bool)

(declare-fun lt!2053310 () Int)

(assert (=> d!1600814 (>= lt!2053310 0)))

(declare-fun e!3107472 () Int)

(assert (=> d!1600814 (= lt!2053310 e!3107472)))

(declare-fun c!848379 () Bool)

(assert (=> d!1600814 (= c!848379 (is-Nil!57457 Nil!57457))))

(assert (=> d!1600814 (= (size!38088 Nil!57457) lt!2053310)))

(declare-fun b!4971903 () Bool)

(assert (=> b!4971903 (= e!3107472 0)))

(declare-fun b!4971904 () Bool)

(assert (=> b!4971904 (= e!3107472 (+ 1 (size!38088 (t!369111 Nil!57457))))))

(assert (= (and d!1600814 c!848379) b!4971903))

(assert (= (and d!1600814 (not c!848379)) b!4971904))

(declare-fun m!6000232 () Bool)

(assert (=> b!4971904 m!6000232))

(assert (=> b!4971526 d!1600814))

(declare-fun d!1600816 () Bool)

(declare-fun lt!2053311 () Int)

(assert (=> d!1600816 (>= lt!2053311 0)))

(declare-fun e!3107473 () Int)

(assert (=> d!1600816 (= lt!2053311 e!3107473)))

(declare-fun c!848380 () Bool)

(assert (=> d!1600816 (= c!848380 (is-Nil!57457 lt!2053104))))

(assert (=> d!1600816 (= (size!38088 lt!2053104) lt!2053311)))

(declare-fun b!4971905 () Bool)

(assert (=> b!4971905 (= e!3107473 0)))

(declare-fun b!4971906 () Bool)

(assert (=> b!4971906 (= e!3107473 (+ 1 (size!38088 (t!369111 lt!2053104))))))

(assert (= (and d!1600816 c!848380) b!4971905))

(assert (= (and d!1600816 (not c!848380)) b!4971906))

(declare-fun m!6000234 () Bool)

(assert (=> b!4971906 m!6000234))

(assert (=> b!4971526 d!1600816))

(declare-fun d!1600818 () Bool)

(declare-fun lt!2053315 () Option!14458)

(assert (=> d!1600818 (= lt!2053315 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) lt!2052978))))

(declare-fun e!3107474 () Option!14458)

(assert (=> d!1600818 (= lt!2053315 e!3107474)))

(declare-fun c!848381 () Bool)

(assert (=> d!1600818 (= c!848381 (and (is-Cons!57458 (t!369112 rulesArg!259)) (is-Nil!57458 (t!369112 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053314 () Unit!148415)

(declare-fun lt!2053316 () Unit!148415)

(assert (=> d!1600818 (= lt!2053314 lt!2053316)))

(assert (=> d!1600818 (isPrefix!5248 lt!2052978 lt!2052978)))

(assert (=> d!1600818 (= lt!2053316 (lemmaIsPrefixRefl!3572 lt!2052978 lt!2052978))))

(assert (=> d!1600818 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259))))

(assert (=> d!1600818 (= (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) lt!2052978) lt!2053315)))

(declare-fun call!346763 () Option!14458)

(declare-fun bm!346758 () Bool)

(assert (=> bm!346758 (= call!346763 (maxPrefixOneRuleZipper!300 thiss!15247 (h!63906 (t!369112 rulesArg!259)) lt!2052978))))

(declare-fun b!4971907 () Bool)

(assert (=> b!4971907 (= e!3107474 call!346763)))

(declare-fun b!4971908 () Bool)

(declare-fun lt!2053312 () Option!14458)

(declare-fun lt!2053313 () Option!14458)

(assert (=> b!4971908 (= e!3107474 (ite (and (is-None!14457 lt!2053312) (is-None!14457 lt!2053313)) None!14457 (ite (is-None!14457 lt!2053313) lt!2053312 (ite (is-None!14457 lt!2053312) lt!2053313 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053312))) (size!38086 (_1!34402 (v!50450 lt!2053313)))) lt!2053312 lt!2053313)))))))

(assert (=> b!4971908 (= lt!2053312 call!346763)))

(assert (=> b!4971908 (= lt!2053313 (maxPrefixZipper!790 thiss!15247 (t!369112 (t!369112 rulesArg!259)) lt!2052978))))

(assert (= (and d!1600818 c!848381) b!4971907))

(assert (= (and d!1600818 (not c!848381)) b!4971908))

(assert (= (or b!4971907 b!4971908) bm!346758))

(assert (=> d!1600818 m!5999916))

(assert (=> d!1600818 m!5999662))

(assert (=> d!1600818 m!5999664))

(assert (=> d!1600818 m!5999784))

(declare-fun m!6000236 () Bool)

(assert (=> bm!346758 m!6000236))

(declare-fun m!6000238 () Bool)

(assert (=> b!4971908 m!6000238))

(assert (=> b!4971569 d!1600818))

(declare-fun b!4971909 () Bool)

(declare-fun e!3107477 () Bool)

(assert (=> b!4971909 (= e!3107477 (matchR!6640 (derivativeStep!3926 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) (head!10672 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))))) (tail!9805 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun b!4971910 () Bool)

(declare-fun res!2122313 () Bool)

(declare-fun e!3107481 () Bool)

(assert (=> b!4971910 (=> res!2122313 e!3107481)))

(assert (=> b!4971910 (= res!2122313 (not (is-ElementMatch!13630 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun e!3107475 () Bool)

(assert (=> b!4971910 (= e!3107475 e!3107481)))

(declare-fun b!4971911 () Bool)

(declare-fun e!3107480 () Bool)

(declare-fun lt!2053317 () Bool)

(declare-fun call!346764 () Bool)

(assert (=> b!4971911 (= e!3107480 (= lt!2053317 call!346764))))

(declare-fun b!4971912 () Bool)

(declare-fun e!3107479 () Bool)

(assert (=> b!4971912 (= e!3107479 (not (= (head!10672 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (c!848310 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))))))))

(declare-fun b!4971913 () Bool)

(declare-fun res!2122312 () Bool)

(declare-fun e!3107478 () Bool)

(assert (=> b!4971913 (=> (not res!2122312) (not e!3107478))))

(assert (=> b!4971913 (= res!2122312 (not call!346764))))

(declare-fun b!4971914 () Bool)

(assert (=> b!4971914 (= e!3107480 e!3107475)))

(declare-fun c!848384 () Bool)

(assert (=> b!4971914 (= c!848384 (is-EmptyLang!13630 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))))))

(declare-fun b!4971915 () Bool)

(declare-fun res!2122307 () Bool)

(assert (=> b!4971915 (=> (not res!2122307) (not e!3107478))))

(assert (=> b!4971915 (= res!2122307 (isEmpty!30960 (tail!9805 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun b!4971917 () Bool)

(declare-fun res!2122308 () Bool)

(assert (=> b!4971917 (=> res!2122308 e!3107479)))

(assert (=> b!4971917 (= res!2122308 (not (isEmpty!30960 (tail!9805 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))))

(declare-fun b!4971918 () Bool)

(declare-fun e!3107476 () Bool)

(assert (=> b!4971918 (= e!3107481 e!3107476)))

(declare-fun res!2122311 () Bool)

(assert (=> b!4971918 (=> (not res!2122311) (not e!3107476))))

(assert (=> b!4971918 (= res!2122311 (not lt!2053317))))

(declare-fun b!4971919 () Bool)

(assert (=> b!4971919 (= e!3107476 e!3107479)))

(declare-fun res!2122310 () Bool)

(assert (=> b!4971919 (=> res!2122310 e!3107479)))

(assert (=> b!4971919 (= res!2122310 call!346764)))

(declare-fun b!4971920 () Bool)

(assert (=> b!4971920 (= e!3107478 (= (head!10672 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (c!848310 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun bm!346759 () Bool)

(assert (=> bm!346759 (= call!346764 (isEmpty!30960 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))

(declare-fun b!4971921 () Bool)

(assert (=> b!4971921 (= e!3107475 (not lt!2053317))))

(declare-fun b!4971922 () Bool)

(declare-fun res!2122309 () Bool)

(assert (=> b!4971922 (=> res!2122309 e!3107481)))

(assert (=> b!4971922 (= res!2122309 e!3107478)))

(declare-fun res!2122306 () Bool)

(assert (=> b!4971922 (=> (not res!2122306) (not e!3107478))))

(assert (=> b!4971922 (= res!2122306 lt!2053317)))

(declare-fun d!1600820 () Bool)

(assert (=> d!1600820 e!3107480))

(declare-fun c!848383 () Bool)

(assert (=> d!1600820 (= c!848383 (is-EmptyExpr!13630 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))))))

(assert (=> d!1600820 (= lt!2053317 e!3107477)))

(declare-fun c!848382 () Bool)

(assert (=> d!1600820 (= c!848382 (isEmpty!30960 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))

(assert (=> d!1600820 (validRegex!5973 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))))

(assert (=> d!1600820 (= (matchR!6640 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) lt!2053317)))

(declare-fun b!4971916 () Bool)

(assert (=> b!4971916 (= e!3107477 (nullable!4624 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))))))

(assert (= (and d!1600820 c!848382) b!4971916))

(assert (= (and d!1600820 (not c!848382)) b!4971909))

(assert (= (and d!1600820 c!848383) b!4971911))

(assert (= (and d!1600820 (not c!848383)) b!4971914))

(assert (= (and b!4971914 c!848384) b!4971921))

(assert (= (and b!4971914 (not c!848384)) b!4971910))

(assert (= (and b!4971910 (not res!2122313)) b!4971922))

(assert (= (and b!4971922 res!2122306) b!4971913))

(assert (= (and b!4971913 res!2122312) b!4971915))

(assert (= (and b!4971915 res!2122307) b!4971920))

(assert (= (and b!4971922 (not res!2122309)) b!4971918))

(assert (= (and b!4971918 res!2122311) b!4971919))

(assert (= (and b!4971919 (not res!2122310)) b!4971917))

(assert (= (and b!4971917 (not res!2122308)) b!4971912))

(assert (= (or b!4971911 b!4971913 b!4971919) bm!346759))

(assert (=> d!1600820 m!5999904))

(declare-fun m!6000240 () Bool)

(assert (=> d!1600820 m!6000240))

(declare-fun m!6000242 () Bool)

(assert (=> d!1600820 m!6000242))

(declare-fun m!6000244 () Bool)

(assert (=> b!4971916 m!6000244))

(assert (=> b!4971909 m!5999904))

(declare-fun m!6000246 () Bool)

(assert (=> b!4971909 m!6000246))

(assert (=> b!4971909 m!6000246))

(declare-fun m!6000248 () Bool)

(assert (=> b!4971909 m!6000248))

(assert (=> b!4971909 m!5999904))

(declare-fun m!6000250 () Bool)

(assert (=> b!4971909 m!6000250))

(assert (=> b!4971909 m!6000248))

(assert (=> b!4971909 m!6000250))

(declare-fun m!6000252 () Bool)

(assert (=> b!4971909 m!6000252))

(assert (=> bm!346759 m!5999904))

(assert (=> bm!346759 m!6000240))

(assert (=> b!4971915 m!5999904))

(assert (=> b!4971915 m!6000250))

(assert (=> b!4971915 m!6000250))

(declare-fun m!6000254 () Bool)

(assert (=> b!4971915 m!6000254))

(assert (=> b!4971917 m!5999904))

(assert (=> b!4971917 m!6000250))

(assert (=> b!4971917 m!6000250))

(assert (=> b!4971917 m!6000254))

(assert (=> b!4971920 m!5999904))

(assert (=> b!4971920 m!6000246))

(assert (=> b!4971912 m!5999904))

(assert (=> b!4971912 m!6000246))

(assert (=> b!4971588 d!1600820))

(assert (=> b!4971588 d!1600784))

(declare-fun d!1600822 () Bool)

(assert (=> d!1600822 (= (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))) (list!18379 (c!848311 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))

(declare-fun bs!1183581 () Bool)

(assert (= bs!1183581 d!1600822))

(declare-fun m!6000256 () Bool)

(assert (=> bs!1183581 m!6000256))

(assert (=> b!4971588 d!1600822))

(declare-fun d!1600824 () Bool)

(declare-fun lt!2053320 () BalanceConc!29728)

(assert (=> d!1600824 (= (list!18377 lt!2053320) (originalCharacters!8676 (_1!34402 (get!19950 lt!2053145))))))

(declare-fun dynLambda!23200 (Int TokenValue!8707) BalanceConc!29728)

(assert (=> d!1600824 (= lt!2053320 (dynLambda!23200 (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))) (value!268756 (_1!34402 (get!19950 lt!2053145)))))))

(assert (=> d!1600824 (= (charsOf!5441 (_1!34402 (get!19950 lt!2053145))) lt!2053320)))

(declare-fun b_lambda!197215 () Bool)

(assert (=> (not b_lambda!197215) (not d!1600824)))

(declare-fun t!369121 () Bool)

(declare-fun tb!261071 () Bool)

(assert (=> (and b!4971386 (= (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369121) tb!261071))

(declare-fun b!4971927 () Bool)

(declare-fun e!3107484 () Bool)

(declare-fun tp!1394245 () Bool)

(assert (=> b!4971927 (= e!3107484 (and (inv!75105 (c!848311 (dynLambda!23200 (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))) (value!268756 (_1!34402 (get!19950 lt!2053145)))))) tp!1394245))))

(declare-fun result!326228 () Bool)

(assert (=> tb!261071 (= result!326228 (and (inv!75106 (dynLambda!23200 (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145))))) (value!268756 (_1!34402 (get!19950 lt!2053145))))) e!3107484))))

(assert (= tb!261071 b!4971927))

(declare-fun m!6000258 () Bool)

(assert (=> b!4971927 m!6000258))

(declare-fun m!6000260 () Bool)

(assert (=> tb!261071 m!6000260))

(assert (=> d!1600824 t!369121))

(declare-fun b_and!348735 () Bool)

(assert (= b_and!348717 (and (=> t!369121 result!326228) b_and!348735)))

(declare-fun tb!261073 () Bool)

(declare-fun t!369123 () Bool)

(assert (=> (and b!4971627 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369123) tb!261073))

(declare-fun result!326232 () Bool)

(assert (= result!326232 result!326228))

(assert (=> d!1600824 t!369123))

(declare-fun b_and!348737 () Bool)

(assert (= b_and!348725 (and (=> t!369123 result!326232) b_and!348737)))

(declare-fun m!6000262 () Bool)

(assert (=> d!1600824 m!6000262))

(declare-fun m!6000264 () Bool)

(assert (=> d!1600824 m!6000264))

(assert (=> b!4971588 d!1600824))

(declare-fun b!4971934 () Bool)

(declare-fun e!3107489 () Bool)

(assert (=> b!4971934 (= e!3107489 true)))

(declare-fun d!1600826 () Bool)

(assert (=> d!1600826 e!3107489))

(assert (= d!1600826 b!4971934))

(declare-fun lambda!247474 () Int)

(declare-fun order!26247 () Int)

(declare-fun dynLambda!23201 (Int Int) Int)

(assert (=> b!4971934 (< (dynLambda!23193 order!26235 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23201 order!26247 lambda!247474))))

(assert (=> b!4971934 (< (dynLambda!23195 order!26239 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23201 order!26247 lambda!247474))))

(assert (=> d!1600826 (= (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100)) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(declare-fun lt!2053323 () Unit!148415)

(declare-fun Forall2of!481 (Int BalanceConc!29728 BalanceConc!29728) Unit!148415)

(assert (=> d!1600826 (= lt!2053323 (Forall2of!481 lambda!247474 (_1!34406 lt!2053100) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(assert (=> d!1600826 (= (list!18377 (_1!34406 lt!2053100)) (list!18377 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(assert (=> d!1600826 (= (lemmaEqSameImage!1172 (transformation!8397 (h!63906 rulesArg!259)) (_1!34406 lt!2053100) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))) lt!2053323)))

(declare-fun b_lambda!197217 () Bool)

(assert (=> (not b_lambda!197217) (not d!1600826)))

(declare-fun t!369125 () Bool)

(declare-fun tb!261075 () Bool)

(assert (=> (and b!4971386 (= (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369125) tb!261075))

(declare-fun result!326234 () Bool)

(assert (=> tb!261075 (= result!326234 (inv!21 (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100))))))

(declare-fun m!6000266 () Bool)

(assert (=> tb!261075 m!6000266))

(assert (=> d!1600826 t!369125))

(declare-fun b_and!348739 () Bool)

(assert (= b_and!348731 (and (=> t!369125 result!326234) b_and!348739)))

(declare-fun t!369127 () Bool)

(declare-fun tb!261077 () Bool)

(assert (=> (and b!4971627 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369127) tb!261077))

(declare-fun result!326236 () Bool)

(assert (= result!326236 result!326234))

(assert (=> d!1600826 t!369127))

(declare-fun b_and!348741 () Bool)

(assert (= b_and!348733 (and (=> t!369127 result!326236) b_and!348741)))

(declare-fun b_lambda!197219 () Bool)

(assert (=> (not b_lambda!197219) (not d!1600826)))

(declare-fun t!369129 () Bool)

(declare-fun tb!261079 () Bool)

(assert (=> (and b!4971386 (= (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369129) tb!261079))

(declare-fun result!326238 () Bool)

(assert (=> tb!261079 (= result!326238 (inv!21 (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100))))))))

(declare-fun m!6000268 () Bool)

(assert (=> tb!261079 m!6000268))

(assert (=> d!1600826 t!369129))

(declare-fun b_and!348743 () Bool)

(assert (= b_and!348739 (and (=> t!369129 result!326238) b_and!348743)))

(declare-fun t!369131 () Bool)

(declare-fun tb!261081 () Bool)

(assert (=> (and b!4971627 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369131) tb!261081))

(declare-fun result!326240 () Bool)

(assert (= result!326240 result!326238))

(assert (=> d!1600826 t!369131))

(declare-fun b_and!348745 () Bool)

(assert (= b_and!348741 (and (=> t!369131 result!326240) b_and!348745)))

(assert (=> d!1600826 m!5999834))

(declare-fun m!6000270 () Bool)

(assert (=> d!1600826 m!6000270))

(assert (=> d!1600826 m!5999834))

(declare-fun m!6000272 () Bool)

(assert (=> d!1600826 m!6000272))

(declare-fun m!6000274 () Bool)

(assert (=> d!1600826 m!6000274))

(assert (=> d!1600826 m!5999838))

(assert (=> d!1600826 m!5999834))

(declare-fun m!6000276 () Bool)

(assert (=> d!1600826 m!6000276))

(assert (=> b!4971528 d!1600826))

(declare-fun d!1600828 () Bool)

(declare-fun lt!2053326 () Int)

(assert (=> d!1600828 (= lt!2053326 (size!38088 (list!18377 (_1!34406 lt!2053100))))))

(assert (=> d!1600828 (= lt!2053326 (size!38092 (c!848311 (_1!34406 lt!2053100))))))

(assert (=> d!1600828 (= (size!38089 (_1!34406 lt!2053100)) lt!2053326)))

(declare-fun bs!1183582 () Bool)

(assert (= bs!1183582 d!1600828))

(assert (=> bs!1183582 m!5999838))

(assert (=> bs!1183582 m!5999838))

(declare-fun m!6000278 () Bool)

(assert (=> bs!1183582 m!6000278))

(declare-fun m!6000280 () Bool)

(assert (=> bs!1183582 m!6000280))

(assert (=> b!4971528 d!1600828))

(declare-fun d!1600830 () Bool)

(declare-fun e!3107494 () Bool)

(assert (=> d!1600830 e!3107494))

(declare-fun res!2122327 () Bool)

(assert (=> d!1600830 (=> res!2122327 e!3107494)))

(assert (=> d!1600830 (= res!2122327 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(declare-fun lt!2053329 () Unit!148415)

(declare-fun choose!36704 (Regex!13630 List!57581) Unit!148415)

(assert (=> d!1600830 (= lt!2053329 (choose!36704 (regex!8397 (h!63906 rulesArg!259)) lt!2053104))))

(assert (=> d!1600830 (validRegex!5973 (regex!8397 (h!63906 rulesArg!259)))))

(assert (=> d!1600830 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 rulesArg!259)) lt!2053104) lt!2053329)))

(declare-fun b!4971937 () Bool)

(assert (=> b!4971937 (= e!3107494 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(assert (= (and d!1600830 (not res!2122327)) b!4971937))

(assert (=> d!1600830 m!5999826))

(declare-fun m!6000282 () Bool)

(assert (=> d!1600830 m!6000282))

(assert (=> d!1600830 m!5999844))

(assert (=> d!1600830 m!5999828))

(assert (=> d!1600830 m!5999826))

(assert (=> d!1600830 m!5999828))

(assert (=> d!1600830 m!5999830))

(assert (=> d!1600830 m!6000166))

(assert (=> b!4971937 m!5999826))

(assert (=> b!4971937 m!5999828))

(assert (=> b!4971937 m!5999826))

(assert (=> b!4971937 m!5999828))

(assert (=> b!4971937 m!5999830))

(assert (=> b!4971937 m!5999832))

(assert (=> b!4971528 d!1600830))

(declare-fun d!1600832 () Bool)

(assert (=> d!1600832 (= (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (_1!34406 lt!2053100)) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100)))))

(declare-fun b_lambda!197221 () Bool)

(assert (=> (not b_lambda!197221) (not d!1600832)))

(assert (=> d!1600832 t!369125))

(declare-fun b_and!348747 () Bool)

(assert (= b_and!348743 (and (=> t!369125 result!326234) b_and!348747)))

(assert (=> d!1600832 t!369127))

(declare-fun b_and!348749 () Bool)

(assert (= b_and!348745 (and (=> t!369127 result!326236) b_and!348749)))

(assert (=> d!1600832 m!6000274))

(assert (=> b!4971528 d!1600832))

(declare-fun d!1600834 () Bool)

(assert (=> d!1600834 (= (list!18377 (_1!34406 lt!2053100)) (list!18379 (c!848311 (_1!34406 lt!2053100))))))

(declare-fun bs!1183583 () Bool)

(assert (= bs!1183583 d!1600834))

(declare-fun m!6000284 () Bool)

(assert (=> bs!1183583 m!6000284))

(assert (=> b!4971528 d!1600834))

(assert (=> b!4971528 d!1600716))

(assert (=> b!4971528 d!1600812))

(declare-fun d!1600836 () Bool)

(declare-fun dynLambda!23202 (Int BalanceConc!29728) Bool)

(assert (=> d!1600836 (dynLambda!23202 lambda!247457 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100))))))

(declare-fun lt!2053332 () Unit!148415)

(declare-fun choose!36705 (Int BalanceConc!29728) Unit!148415)

(assert (=> d!1600836 (= lt!2053332 (choose!36705 lambda!247457 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))))

(assert (=> d!1600836 (Forall!1766 lambda!247457)))

(assert (=> d!1600836 (= (ForallOf!1231 lambda!247457 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))) lt!2053332)))

(declare-fun b_lambda!197223 () Bool)

(assert (=> (not b_lambda!197223) (not d!1600836)))

(declare-fun bs!1183584 () Bool)

(assert (= bs!1183584 d!1600836))

(assert (=> bs!1183584 m!5999834))

(declare-fun m!6000286 () Bool)

(assert (=> bs!1183584 m!6000286))

(assert (=> bs!1183584 m!5999834))

(declare-fun m!6000288 () Bool)

(assert (=> bs!1183584 m!6000288))

(declare-fun m!6000290 () Bool)

(assert (=> bs!1183584 m!6000290))

(assert (=> b!4971528 d!1600836))

(declare-fun d!1600838 () Bool)

(assert (=> d!1600838 (= (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))) (is-Nil!57457 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2053104 lt!2053104 (size!38088 lt!2053104)))))))

(assert (=> b!4971528 d!1600838))

(assert (=> b!4971528 d!1600816))

(declare-fun d!1600840 () Bool)

(assert (=> d!1600840 (= (seqFromList!6040 (list!18377 (_1!34406 lt!2053100))) (fromListB!2735 (list!18377 (_1!34406 lt!2053100))))))

(declare-fun bs!1183585 () Bool)

(assert (= bs!1183585 d!1600840))

(assert (=> bs!1183585 m!5999838))

(declare-fun m!6000292 () Bool)

(assert (=> bs!1183585 m!6000292))

(assert (=> b!4971528 d!1600840))

(assert (=> b!4971528 d!1600814))

(declare-fun d!1600842 () Bool)

(declare-fun e!3107497 () Bool)

(assert (=> d!1600842 e!3107497))

(declare-fun res!2122332 () Bool)

(assert (=> d!1600842 (=> (not res!2122332) (not e!3107497))))

(assert (=> d!1600842 (= res!2122332 (semiInverseModEq!3704 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))))))

(declare-fun Unit!148423 () Unit!148415)

(assert (=> d!1600842 (= (lemmaInv!1338 (transformation!8397 (h!63906 rulesArg!259))) Unit!148423)))

(declare-fun b!4971940 () Bool)

(assert (=> b!4971940 (= e!3107497 (equivClasses!3552 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))))))

(assert (= (and d!1600842 res!2122332) b!4971940))

(assert (=> d!1600842 m!5999882))

(assert (=> b!4971940 m!5999884))

(assert (=> b!4971528 d!1600842))

(declare-fun d!1600844 () Bool)

(assert (=> d!1600844 (dynLambda!23202 lambda!247457 (_1!34406 lt!2053100))))

(declare-fun lt!2053333 () Unit!148415)

(assert (=> d!1600844 (= lt!2053333 (choose!36705 lambda!247457 (_1!34406 lt!2053100)))))

(assert (=> d!1600844 (Forall!1766 lambda!247457)))

(assert (=> d!1600844 (= (ForallOf!1231 lambda!247457 (_1!34406 lt!2053100)) lt!2053333)))

(declare-fun b_lambda!197225 () Bool)

(assert (=> (not b_lambda!197225) (not d!1600844)))

(declare-fun bs!1183586 () Bool)

(assert (= bs!1183586 d!1600844))

(declare-fun m!6000294 () Bool)

(assert (=> bs!1183586 m!6000294))

(declare-fun m!6000296 () Bool)

(assert (=> bs!1183586 m!6000296))

(assert (=> bs!1183586 m!6000290))

(assert (=> b!4971528 d!1600844))

(declare-fun d!1600846 () Bool)

(assert (=> d!1600846 (= (head!10672 lt!2052978) (h!63905 lt!2052978))))

(assert (=> b!4971558 d!1600846))

(assert (=> b!4971475 d!1600794))

(declare-fun d!1600848 () Bool)

(declare-fun res!2122337 () Bool)

(declare-fun e!3107500 () Bool)

(assert (=> d!1600848 (=> (not res!2122337) (not e!3107500))))

(assert (=> d!1600848 (= res!2122337 (validRegex!5973 (regex!8397 (h!63906 rulesArg!259))))))

(assert (=> d!1600848 (= (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259)) e!3107500)))

(declare-fun b!4971945 () Bool)

(declare-fun res!2122338 () Bool)

(assert (=> b!4971945 (=> (not res!2122338) (not e!3107500))))

(assert (=> b!4971945 (= res!2122338 (not (nullable!4624 (regex!8397 (h!63906 rulesArg!259)))))))

(declare-fun b!4971946 () Bool)

(assert (=> b!4971946 (= e!3107500 (not (= (tag!9261 (h!63906 rulesArg!259)) (String!65412 ""))))))

(assert (= (and d!1600848 res!2122337) b!4971945))

(assert (= (and b!4971945 res!2122338) b!4971946))

(assert (=> d!1600848 m!6000166))

(assert (=> b!4971945 m!6000168))

(assert (=> b!4971542 d!1600848))

(declare-fun d!1600850 () Bool)

(assert (=> d!1600850 (= (get!19951 lt!2053102) (v!50449 lt!2053102))))

(assert (=> b!4971524 d!1600850))

(assert (=> b!4971524 d!1600716))

(declare-fun d!1600852 () Bool)

(assert (=> d!1600852 (= (list!18377 (_2!34401 (get!19951 lt!2053102))) (list!18379 (c!848311 (_2!34401 (get!19951 lt!2053102)))))))

(declare-fun bs!1183587 () Bool)

(assert (= bs!1183587 d!1600852))

(declare-fun m!6000298 () Bool)

(assert (=> bs!1183587 m!6000298))

(assert (=> b!4971524 d!1600852))

(declare-fun b!4971965 () Bool)

(declare-fun e!3107512 () Bool)

(declare-fun e!3107509 () Bool)

(assert (=> b!4971965 (= e!3107512 e!3107509)))

(declare-fun res!2122359 () Bool)

(assert (=> b!4971965 (=> (not res!2122359) (not e!3107509))))

(declare-fun lt!2053345 () Option!14458)

(assert (=> b!4971965 (= res!2122359 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053345))))))))

(declare-fun b!4971966 () Bool)

(declare-fun res!2122353 () Bool)

(assert (=> b!4971966 (=> (not res!2122353) (not e!3107509))))

(assert (=> b!4971966 (= res!2122353 (< (size!38088 (_2!34402 (get!19950 lt!2053345))) (size!38088 (list!18377 input!1342))))))

(declare-fun b!4971967 () Bool)

(declare-fun res!2122355 () Bool)

(assert (=> b!4971967 (=> (not res!2122355) (not e!3107509))))

(assert (=> b!4971967 (= res!2122355 (= (value!268756 (_1!34402 (get!19950 lt!2053345))) (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053345)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053345)))))))))

(declare-fun b!4971968 () Bool)

(assert (=> b!4971968 (= e!3107509 (= (size!38086 (_1!34402 (get!19950 lt!2053345))) (size!38088 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053345))))))))

(declare-fun d!1600854 () Bool)

(assert (=> d!1600854 e!3107512))

(declare-fun res!2122358 () Bool)

(assert (=> d!1600854 (=> res!2122358 e!3107512)))

(assert (=> d!1600854 (= res!2122358 (isEmpty!30961 lt!2053345))))

(declare-fun e!3107511 () Option!14458)

(assert (=> d!1600854 (= lt!2053345 e!3107511)))

(declare-fun c!848387 () Bool)

(declare-fun lt!2053348 () tuple2!62204)

(assert (=> d!1600854 (= c!848387 (isEmpty!30960 (_1!34405 lt!2053348)))))

(declare-fun findLongestMatch!1701 (Regex!13630 List!57581) tuple2!62204)

(assert (=> d!1600854 (= lt!2053348 (findLongestMatch!1701 (regex!8397 (h!63906 rulesArg!259)) (list!18377 input!1342)))))

(assert (=> d!1600854 (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259))))

(assert (=> d!1600854 (= (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342)) lt!2053345)))

(declare-fun b!4971969 () Bool)

(assert (=> b!4971969 (= e!3107511 (Some!14457 (tuple2!62199 (Token!15291 (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053348))) (h!63906 rulesArg!259) (size!38089 (seqFromList!6040 (_1!34405 lt!2053348))) (_1!34405 lt!2053348)) (_2!34405 lt!2053348))))))

(declare-fun lt!2053347 () Unit!148415)

(assert (=> b!4971969 (= lt!2053347 (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 rulesArg!259)) (list!18377 input!1342)))))

(declare-fun res!2122354 () Bool)

(assert (=> b!4971969 (= res!2122354 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) (list!18377 input!1342) (list!18377 input!1342) (size!38088 (list!18377 input!1342))))))))

(declare-fun e!3107510 () Bool)

(assert (=> b!4971969 (=> res!2122354 e!3107510)))

(assert (=> b!4971969 e!3107510))

(declare-fun lt!2053346 () Unit!148415)

(assert (=> b!4971969 (= lt!2053346 lt!2053347)))

(declare-fun lt!2053344 () Unit!148415)

(declare-fun lemmaSemiInverse!2606 (TokenValueInjection!16722 BalanceConc!29728) Unit!148415)

(assert (=> b!4971969 (= lt!2053344 (lemmaSemiInverse!2606 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053348))))))

(declare-fun b!4971970 () Bool)

(declare-fun res!2122356 () Bool)

(assert (=> b!4971970 (=> (not res!2122356) (not e!3107509))))

(assert (=> b!4971970 (= res!2122356 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053345)))) (_2!34402 (get!19950 lt!2053345))) (list!18377 input!1342)))))

(declare-fun b!4971971 () Bool)

(declare-fun res!2122357 () Bool)

(assert (=> b!4971971 (=> (not res!2122357) (not e!3107509))))

(assert (=> b!4971971 (= res!2122357 (= (rule!11653 (_1!34402 (get!19950 lt!2053345))) (h!63906 rulesArg!259)))))

(declare-fun b!4971972 () Bool)

(assert (=> b!4971972 (= e!3107510 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) (list!18377 input!1342) (list!18377 input!1342) (size!38088 (list!18377 input!1342))))))))

(declare-fun b!4971973 () Bool)

(assert (=> b!4971973 (= e!3107511 None!14457)))

(assert (= (and d!1600854 c!848387) b!4971973))

(assert (= (and d!1600854 (not c!848387)) b!4971969))

(assert (= (and b!4971969 (not res!2122354)) b!4971972))

(assert (= (and d!1600854 (not res!2122358)) b!4971965))

(assert (= (and b!4971965 res!2122359) b!4971970))

(assert (= (and b!4971970 res!2122356) b!4971966))

(assert (= (and b!4971966 res!2122353) b!4971971))

(assert (= (and b!4971971 res!2122357) b!4971967))

(assert (= (and b!4971967 res!2122355) b!4971968))

(declare-fun m!6000300 () Bool)

(assert (=> b!4971969 m!6000300))

(declare-fun m!6000302 () Bool)

(assert (=> b!4971969 m!6000302))

(assert (=> b!4971969 m!5999826))

(declare-fun m!6000304 () Bool)

(assert (=> b!4971969 m!6000304))

(assert (=> b!4971969 m!6000300))

(declare-fun m!6000306 () Bool)

(assert (=> b!4971969 m!6000306))

(assert (=> b!4971969 m!5999670))

(declare-fun m!6000308 () Bool)

(assert (=> b!4971969 m!6000308))

(assert (=> b!4971969 m!5999670))

(declare-fun m!6000310 () Bool)

(assert (=> b!4971969 m!6000310))

(assert (=> b!4971969 m!5999826))

(assert (=> b!4971969 m!5999670))

(assert (=> b!4971969 m!5999670))

(assert (=> b!4971969 m!6000308))

(declare-fun m!6000312 () Bool)

(assert (=> b!4971969 m!6000312))

(assert (=> b!4971969 m!6000300))

(assert (=> b!4971969 m!6000300))

(declare-fun m!6000314 () Bool)

(assert (=> b!4971969 m!6000314))

(declare-fun m!6000316 () Bool)

(assert (=> b!4971970 m!6000316))

(declare-fun m!6000318 () Bool)

(assert (=> b!4971970 m!6000318))

(assert (=> b!4971970 m!6000318))

(declare-fun m!6000320 () Bool)

(assert (=> b!4971970 m!6000320))

(assert (=> b!4971970 m!6000320))

(declare-fun m!6000322 () Bool)

(assert (=> b!4971970 m!6000322))

(declare-fun m!6000324 () Bool)

(assert (=> d!1600854 m!6000324))

(declare-fun m!6000326 () Bool)

(assert (=> d!1600854 m!6000326))

(assert (=> d!1600854 m!5999670))

(declare-fun m!6000328 () Bool)

(assert (=> d!1600854 m!6000328))

(assert (=> d!1600854 m!5999860))

(assert (=> b!4971972 m!5999826))

(assert (=> b!4971972 m!5999670))

(assert (=> b!4971972 m!6000308))

(assert (=> b!4971972 m!5999826))

(assert (=> b!4971972 m!5999670))

(assert (=> b!4971972 m!5999670))

(assert (=> b!4971972 m!6000308))

(assert (=> b!4971972 m!6000312))

(declare-fun m!6000330 () Bool)

(assert (=> b!4971972 m!6000330))

(assert (=> b!4971965 m!6000316))

(assert (=> b!4971965 m!6000318))

(assert (=> b!4971965 m!6000318))

(assert (=> b!4971965 m!6000320))

(assert (=> b!4971965 m!6000320))

(declare-fun m!6000332 () Bool)

(assert (=> b!4971965 m!6000332))

(assert (=> b!4971967 m!6000316))

(declare-fun m!6000334 () Bool)

(assert (=> b!4971967 m!6000334))

(assert (=> b!4971967 m!6000334))

(declare-fun m!6000336 () Bool)

(assert (=> b!4971967 m!6000336))

(assert (=> b!4971968 m!6000316))

(declare-fun m!6000338 () Bool)

(assert (=> b!4971968 m!6000338))

(assert (=> b!4971971 m!6000316))

(assert (=> b!4971966 m!6000316))

(declare-fun m!6000340 () Bool)

(assert (=> b!4971966 m!6000340))

(assert (=> b!4971966 m!5999670))

(assert (=> b!4971966 m!6000308))

(assert (=> b!4971524 d!1600854))

(declare-fun d!1600856 () Bool)

(assert (=> d!1600856 (= (get!19950 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342))) (v!50450 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342))))))

(assert (=> b!4971524 d!1600856))

(declare-fun bs!1183588 () Bool)

(declare-fun d!1600858 () Bool)

(assert (= bs!1183588 (and d!1600858 d!1600706)))

(declare-fun lambda!247475 () Int)

(assert (=> bs!1183588 (= lambda!247475 lambda!247460)))

(assert (=> d!1600858 true))

(declare-fun lt!2053349 () Bool)

(assert (=> d!1600858 (= lt!2053349 (forall!13332 (t!369112 rulesArg!259) lambda!247475))))

(declare-fun e!3107513 () Bool)

(assert (=> d!1600858 (= lt!2053349 e!3107513)))

(declare-fun res!2122360 () Bool)

(assert (=> d!1600858 (=> res!2122360 e!3107513)))

(assert (=> d!1600858 (= res!2122360 (not (is-Cons!57458 (t!369112 rulesArg!259))))))

(assert (=> d!1600858 (= (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259)) lt!2053349)))

(declare-fun b!4971974 () Bool)

(declare-fun e!3107514 () Bool)

(assert (=> b!4971974 (= e!3107513 e!3107514)))

(declare-fun res!2122361 () Bool)

(assert (=> b!4971974 (=> (not res!2122361) (not e!3107514))))

(assert (=> b!4971974 (= res!2122361 (ruleValid!3806 thiss!15247 (h!63906 (t!369112 rulesArg!259))))))

(declare-fun b!4971975 () Bool)

(assert (=> b!4971975 (= e!3107514 (rulesValidInductive!3300 thiss!15247 (t!369112 (t!369112 rulesArg!259))))))

(assert (= (and d!1600858 (not res!2122360)) b!4971974))

(assert (= (and b!4971974 res!2122361) b!4971975))

(declare-fun m!6000342 () Bool)

(assert (=> d!1600858 m!6000342))

(declare-fun m!6000344 () Bool)

(assert (=> b!4971974 m!6000344))

(assert (=> b!4971975 m!6000128))

(assert (=> d!1600696 d!1600858))

(declare-fun d!1600860 () Bool)

(assert (=> d!1600860 (= (isDefined!11370 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))) (not (isEmpty!30961 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342)))))))

(declare-fun bs!1183589 () Bool)

(assert (= bs!1183589 d!1600860))

(assert (=> bs!1183589 m!5999778))

(declare-fun m!6000346 () Bool)

(assert (=> bs!1183589 m!6000346))

(assert (=> d!1600696 d!1600860))

(declare-fun b!4971979 () Bool)

(declare-fun e!3107515 () Bool)

(assert (=> b!4971979 (= e!3107515 (>= (size!38088 lt!2053036) (size!38088 lt!2053035)))))

(declare-fun d!1600862 () Bool)

(assert (=> d!1600862 e!3107515))

(declare-fun res!2122365 () Bool)

(assert (=> d!1600862 (=> res!2122365 e!3107515)))

(declare-fun lt!2053350 () Bool)

(assert (=> d!1600862 (= res!2122365 (not lt!2053350))))

(declare-fun e!3107517 () Bool)

(assert (=> d!1600862 (= lt!2053350 e!3107517)))

(declare-fun res!2122364 () Bool)

(assert (=> d!1600862 (=> res!2122364 e!3107517)))

(assert (=> d!1600862 (= res!2122364 (is-Nil!57457 lt!2053035))))

(assert (=> d!1600862 (= (isPrefix!5248 lt!2053035 lt!2053036) lt!2053350)))

(declare-fun b!4971978 () Bool)

(declare-fun e!3107516 () Bool)

(assert (=> b!4971978 (= e!3107516 (isPrefix!5248 (tail!9805 lt!2053035) (tail!9805 lt!2053036)))))

(declare-fun b!4971976 () Bool)

(assert (=> b!4971976 (= e!3107517 e!3107516)))

(declare-fun res!2122362 () Bool)

(assert (=> b!4971976 (=> (not res!2122362) (not e!3107516))))

(assert (=> b!4971976 (= res!2122362 (not (is-Nil!57457 lt!2053036)))))

(declare-fun b!4971977 () Bool)

(declare-fun res!2122363 () Bool)

(assert (=> b!4971977 (=> (not res!2122363) (not e!3107516))))

(assert (=> b!4971977 (= res!2122363 (= (head!10672 lt!2053035) (head!10672 lt!2053036)))))

(assert (= (and d!1600862 (not res!2122364)) b!4971976))

(assert (= (and b!4971976 res!2122362) b!4971977))

(assert (= (and b!4971977 res!2122363) b!4971978))

(assert (= (and d!1600862 (not res!2122365)) b!4971979))

(declare-fun m!6000348 () Bool)

(assert (=> b!4971979 m!6000348))

(declare-fun m!6000350 () Bool)

(assert (=> b!4971979 m!6000350))

(declare-fun m!6000352 () Bool)

(assert (=> b!4971978 m!6000352))

(declare-fun m!6000354 () Bool)

(assert (=> b!4971978 m!6000354))

(assert (=> b!4971978 m!6000352))

(assert (=> b!4971978 m!6000354))

(declare-fun m!6000356 () Bool)

(assert (=> b!4971978 m!6000356))

(declare-fun m!6000358 () Bool)

(assert (=> b!4971977 m!6000358))

(declare-fun m!6000360 () Bool)

(assert (=> b!4971977 m!6000360))

(assert (=> d!1600696 d!1600862))

(declare-fun d!1600864 () Bool)

(assert (=> d!1600864 (isPrefix!5248 lt!2053035 lt!2053036)))

(declare-fun lt!2053351 () Unit!148415)

(assert (=> d!1600864 (= lt!2053351 (choose!36702 lt!2053035 lt!2053036))))

(assert (=> d!1600864 (= (lemmaIsPrefixRefl!3572 lt!2053035 lt!2053036) lt!2053351)))

(declare-fun bs!1183590 () Bool)

(assert (= bs!1183590 d!1600864))

(assert (=> bs!1183590 m!5999782))

(declare-fun m!6000362 () Bool)

(assert (=> bs!1183590 m!6000362))

(assert (=> d!1600696 d!1600864))

(assert (=> d!1600696 d!1600716))

(declare-fun d!1600866 () Bool)

(declare-fun lt!2053355 () Option!14458)

(assert (=> d!1600866 (= lt!2053355 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342)))))

(declare-fun e!3107518 () Option!14458)

(assert (=> d!1600866 (= lt!2053355 e!3107518)))

(declare-fun c!848388 () Bool)

(assert (=> d!1600866 (= c!848388 (and (is-Cons!57458 (t!369112 rulesArg!259)) (is-Nil!57458 (t!369112 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053354 () Unit!148415)

(declare-fun lt!2053356 () Unit!148415)

(assert (=> d!1600866 (= lt!2053354 lt!2053356)))

(assert (=> d!1600866 (isPrefix!5248 (list!18377 input!1342) (list!18377 input!1342))))

(assert (=> d!1600866 (= lt!2053356 (lemmaIsPrefixRefl!3572 (list!18377 input!1342) (list!18377 input!1342)))))

(assert (=> d!1600866 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259))))

(assert (=> d!1600866 (= (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342)) lt!2053355)))

(declare-fun bm!346760 () Bool)

(declare-fun call!346765 () Option!14458)

(assert (=> bm!346760 (= call!346765 (maxPrefixOneRuleZipper!300 thiss!15247 (h!63906 (t!369112 rulesArg!259)) (list!18377 input!1342)))))

(declare-fun b!4971980 () Bool)

(assert (=> b!4971980 (= e!3107518 call!346765)))

(declare-fun b!4971981 () Bool)

(declare-fun lt!2053352 () Option!14458)

(declare-fun lt!2053353 () Option!14458)

(assert (=> b!4971981 (= e!3107518 (ite (and (is-None!14457 lt!2053352) (is-None!14457 lt!2053353)) None!14457 (ite (is-None!14457 lt!2053353) lt!2053352 (ite (is-None!14457 lt!2053352) lt!2053353 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053352))) (size!38086 (_1!34402 (v!50450 lt!2053353)))) lt!2053352 lt!2053353)))))))

(assert (=> b!4971981 (= lt!2053352 call!346765)))

(assert (=> b!4971981 (= lt!2053353 (maxPrefixZipper!790 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342)))))

(assert (= (and d!1600866 c!848388) b!4971980))

(assert (= (and d!1600866 (not c!848388)) b!4971981))

(assert (= (or b!4971980 b!4971981) bm!346760))

(assert (=> d!1600866 m!5999670))

(assert (=> d!1600866 m!5999770))

(assert (=> d!1600866 m!5999670))

(assert (=> d!1600866 m!5999670))

(declare-fun m!6000364 () Bool)

(assert (=> d!1600866 m!6000364))

(assert (=> d!1600866 m!5999670))

(assert (=> d!1600866 m!5999670))

(declare-fun m!6000366 () Bool)

(assert (=> d!1600866 m!6000366))

(assert (=> d!1600866 m!5999784))

(assert (=> bm!346760 m!5999670))

(declare-fun m!6000368 () Bool)

(assert (=> bm!346760 m!6000368))

(assert (=> b!4971981 m!5999670))

(assert (=> b!4971981 m!6000122))

(assert (=> d!1600696 d!1600866))

(assert (=> d!1600696 d!1600794))

(declare-fun b!4971991 () Bool)

(declare-fun e!3107523 () List!57581)

(declare-fun e!3107524 () List!57581)

(assert (=> b!4971991 (= e!3107523 e!3107524)))

(declare-fun c!848394 () Bool)

(assert (=> b!4971991 (= c!848394 (is-Leaf!25173 (c!848311 totalInput!464)))))

(declare-fun b!4971993 () Bool)

(assert (=> b!4971993 (= e!3107524 (++!12536 (list!18379 (left!41914 (c!848311 totalInput!464))) (list!18379 (right!42244 (c!848311 totalInput!464)))))))

(declare-fun d!1600868 () Bool)

(declare-fun c!848393 () Bool)

(assert (=> d!1600868 (= c!848393 (is-Empty!15149 (c!848311 totalInput!464)))))

(assert (=> d!1600868 (= (list!18379 (c!848311 totalInput!464)) e!3107523)))

(declare-fun b!4971990 () Bool)

(assert (=> b!4971990 (= e!3107523 Nil!57457)))

(declare-fun b!4971992 () Bool)

(assert (=> b!4971992 (= e!3107524 (list!18381 (xs!18475 (c!848311 totalInput!464))))))

(assert (= (and d!1600868 c!848393) b!4971990))

(assert (= (and d!1600868 (not c!848393)) b!4971991))

(assert (= (and b!4971991 c!848394) b!4971992))

(assert (= (and b!4971991 (not c!848394)) b!4971993))

(declare-fun m!6000370 () Bool)

(assert (=> b!4971993 m!6000370))

(declare-fun m!6000372 () Bool)

(assert (=> b!4971993 m!6000372))

(assert (=> b!4971993 m!6000370))

(assert (=> b!4971993 m!6000372))

(declare-fun m!6000374 () Bool)

(assert (=> b!4971993 m!6000374))

(declare-fun m!6000376 () Bool)

(assert (=> b!4971992 m!6000376))

(assert (=> d!1600714 d!1600868))

(declare-fun d!1600870 () Bool)

(declare-fun e!3107529 () Bool)

(assert (=> d!1600870 e!3107529))

(declare-fun res!2122371 () Bool)

(assert (=> d!1600870 (=> (not res!2122371) (not e!3107529))))

(declare-fun lt!2053359 () List!57581)

(declare-fun content!10192 (List!57581) (Set C!27510))

(assert (=> d!1600870 (= res!2122371 (= (content!10192 lt!2053359) (set.union (content!10192 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (content!10192 (_2!34402 (get!19950 lt!2053145))))))))

(declare-fun e!3107530 () List!57581)

(assert (=> d!1600870 (= lt!2053359 e!3107530)))

(declare-fun c!848397 () Bool)

(assert (=> d!1600870 (= c!848397 (is-Nil!57457 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))))))

(assert (=> d!1600870 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))) (_2!34402 (get!19950 lt!2053145))) lt!2053359)))

(declare-fun b!4972002 () Bool)

(assert (=> b!4972002 (= e!3107530 (_2!34402 (get!19950 lt!2053145)))))

(declare-fun b!4972005 () Bool)

(assert (=> b!4972005 (= e!3107529 (or (not (= (_2!34402 (get!19950 lt!2053145)) Nil!57457)) (= lt!2053359 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145)))))))))

(declare-fun b!4972004 () Bool)

(declare-fun res!2122370 () Bool)

(assert (=> b!4972004 (=> (not res!2122370) (not e!3107529))))

(assert (=> b!4972004 (= res!2122370 (= (size!38088 lt!2053359) (+ (size!38088 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (size!38088 (_2!34402 (get!19950 lt!2053145))))))))

(declare-fun b!4972003 () Bool)

(assert (=> b!4972003 (= e!3107530 (Cons!57457 (h!63905 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (++!12536 (t!369111 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053145))))) (_2!34402 (get!19950 lt!2053145)))))))

(assert (= (and d!1600870 c!848397) b!4972002))

(assert (= (and d!1600870 (not c!848397)) b!4972003))

(assert (= (and d!1600870 res!2122371) b!4972004))

(assert (= (and b!4972004 res!2122370) b!4972005))

(declare-fun m!6000378 () Bool)

(assert (=> d!1600870 m!6000378))

(assert (=> d!1600870 m!5999904))

(declare-fun m!6000380 () Bool)

(assert (=> d!1600870 m!6000380))

(declare-fun m!6000382 () Bool)

(assert (=> d!1600870 m!6000382))

(declare-fun m!6000384 () Bool)

(assert (=> b!4972004 m!6000384))

(assert (=> b!4972004 m!5999904))

(declare-fun m!6000386 () Bool)

(assert (=> b!4972004 m!6000386))

(assert (=> b!4972004 m!5999912))

(declare-fun m!6000388 () Bool)

(assert (=> b!4972003 m!6000388))

(assert (=> b!4971596 d!1600870))

(assert (=> b!4971596 d!1600822))

(assert (=> b!4971596 d!1600824))

(assert (=> b!4971596 d!1600784))

(declare-fun bs!1183591 () Bool)

(declare-fun b!4972010 () Bool)

(assert (= bs!1183591 (and b!4972010 b!4971528)))

(declare-fun lambda!247476 () Int)

(assert (=> bs!1183591 (= (and (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) (= lambda!247476 lambda!247457))))

(declare-fun bs!1183592 () Bool)

(assert (= bs!1183592 (and b!4972010 d!1600808)))

(assert (=> bs!1183592 (= (and (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) (= lambda!247476 lambda!247471))))

(declare-fun b!4972013 () Bool)

(declare-fun e!3107537 () Bool)

(assert (=> b!4972013 (= e!3107537 true)))

(declare-fun b!4972012 () Bool)

(declare-fun e!3107536 () Bool)

(assert (=> b!4972012 (= e!3107536 e!3107537)))

(assert (=> b!4972010 e!3107536))

(assert (= b!4972012 b!4972013))

(assert (= b!4972010 b!4972012))

(assert (=> b!4972013 (< (dynLambda!23193 order!26235 (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259))))) (dynLambda!23194 order!26237 lambda!247476))))

(assert (=> b!4972013 (< (dynLambda!23195 order!26239 (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259))))) (dynLambda!23194 order!26237 lambda!247476))))

(declare-fun lt!2053367 () Option!14457)

(declare-fun e!3107535 () Bool)

(declare-fun b!4972006 () Bool)

(assert (=> b!4972006 (= e!3107535 (= (list!18377 (_2!34401 (get!19951 lt!2053367))) (_2!34402 (get!19950 (maxPrefixOneRule!3633 thiss!15247 (h!63906 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun b!4972007 () Bool)

(declare-fun e!3107532 () Bool)

(assert (=> b!4972007 (= e!3107532 e!3107535)))

(declare-fun res!2122373 () Bool)

(assert (=> b!4972007 (=> (not res!2122373) (not e!3107535))))

(assert (=> b!4972007 (= res!2122373 (= (_1!34401 (get!19951 lt!2053367)) (_1!34402 (get!19950 (maxPrefixOneRule!3633 thiss!15247 (h!63906 (t!369112 rulesArg!259)) (list!18377 input!1342))))))))

(declare-fun b!4972008 () Bool)

(declare-fun e!3107531 () Bool)

(declare-fun lt!2053369 () List!57581)

(assert (=> b!4972008 (= e!3107531 (matchR!6640 (regex!8397 (h!63906 (t!369112 rulesArg!259))) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 (t!369112 rulesArg!259))) Nil!57457 (size!38088 Nil!57457) lt!2053369 lt!2053369 (size!38088 lt!2053369)))))))

(declare-fun d!1600872 () Bool)

(declare-fun e!3107534 () Bool)

(assert (=> d!1600872 e!3107534))

(declare-fun res!2122375 () Bool)

(assert (=> d!1600872 (=> (not res!2122375) (not e!3107534))))

(assert (=> d!1600872 (= res!2122375 (= (isDefined!11371 lt!2053367) (isDefined!11370 (maxPrefixOneRule!3633 thiss!15247 (h!63906 (t!369112 rulesArg!259)) (list!18377 input!1342)))))))

(declare-fun e!3107533 () Option!14457)

(assert (=> d!1600872 (= lt!2053367 e!3107533)))

(declare-fun c!848398 () Bool)

(declare-fun lt!2053365 () tuple2!62206)

(assert (=> d!1600872 (= c!848398 (isEmpty!30959 (_1!34406 lt!2053365)))))

(assert (=> d!1600872 (= lt!2053365 (findLongestMatchWithZipperSequenceV2!168 (regex!8397 (h!63906 (t!369112 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1600872 (ruleValid!3806 thiss!15247 (h!63906 (t!369112 rulesArg!259)))))

(assert (=> d!1600872 (= (maxPrefixOneRuleZipperSequenceV2!365 thiss!15247 (h!63906 (t!369112 rulesArg!259)) input!1342 totalInput!464) lt!2053367)))

(declare-fun b!4972009 () Bool)

(assert (=> b!4972009 (= e!3107534 e!3107532)))

(declare-fun res!2122372 () Bool)

(assert (=> b!4972009 (=> res!2122372 e!3107532)))

(assert (=> b!4972009 (= res!2122372 (not (isDefined!11371 lt!2053367)))))

(assert (=> b!4972010 (= e!3107533 (Some!14456 (tuple2!62197 (Token!15291 (apply!13908 (transformation!8397 (h!63906 (t!369112 rulesArg!259))) (_1!34406 lt!2053365)) (h!63906 (t!369112 rulesArg!259)) (size!38089 (_1!34406 lt!2053365)) (list!18377 (_1!34406 lt!2053365))) (_2!34406 lt!2053365))))))

(assert (=> b!4972010 (= lt!2053369 (list!18377 input!1342))))

(declare-fun lt!2053361 () Unit!148415)

(assert (=> b!4972010 (= lt!2053361 (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 (t!369112 rulesArg!259))) lt!2053369))))

(declare-fun res!2122374 () Bool)

(assert (=> b!4972010 (= res!2122374 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 (t!369112 rulesArg!259))) Nil!57457 (size!38088 Nil!57457) lt!2053369 lt!2053369 (size!38088 lt!2053369)))))))

(assert (=> b!4972010 (=> res!2122374 e!3107531)))

(assert (=> b!4972010 e!3107531))

(declare-fun lt!2053360 () Unit!148415)

(assert (=> b!4972010 (= lt!2053360 lt!2053361)))

(declare-fun lt!2053366 () Unit!148415)

(assert (=> b!4972010 (= lt!2053366 (lemmaInv!1338 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053368 () Unit!148415)

(assert (=> b!4972010 (= lt!2053368 (ForallOf!1231 lambda!247476 (_1!34406 lt!2053365)))))

(declare-fun lt!2053364 () Unit!148415)

(assert (=> b!4972010 (= lt!2053364 (ForallOf!1231 lambda!247476 (seqFromList!6040 (list!18377 (_1!34406 lt!2053365)))))))

(declare-fun lt!2053362 () Option!14457)

(assert (=> b!4972010 (= lt!2053362 (Some!14456 (tuple2!62197 (Token!15291 (apply!13908 (transformation!8397 (h!63906 (t!369112 rulesArg!259))) (_1!34406 lt!2053365)) (h!63906 (t!369112 rulesArg!259)) (size!38089 (_1!34406 lt!2053365)) (list!18377 (_1!34406 lt!2053365))) (_2!34406 lt!2053365))))))

(declare-fun lt!2053363 () Unit!148415)

(assert (=> b!4972010 (= lt!2053363 (lemmaEqSameImage!1172 (transformation!8397 (h!63906 (t!369112 rulesArg!259))) (_1!34406 lt!2053365) (seqFromList!6040 (list!18377 (_1!34406 lt!2053365)))))))

(declare-fun b!4972011 () Bool)

(assert (=> b!4972011 (= e!3107533 None!14456)))

(assert (= (and d!1600872 c!848398) b!4972011))

(assert (= (and d!1600872 (not c!848398)) b!4972010))

(assert (= (and b!4972010 (not res!2122374)) b!4972008))

(assert (= (and d!1600872 res!2122375) b!4972009))

(assert (= (and b!4972009 (not res!2122372)) b!4972007))

(assert (= (and b!4972007 res!2122373) b!4972006))

(assert (=> b!4972006 m!5999670))

(declare-fun m!6000390 () Bool)

(assert (=> b!4972006 m!6000390))

(declare-fun m!6000392 () Bool)

(assert (=> b!4972006 m!6000392))

(assert (=> b!4972006 m!6000390))

(declare-fun m!6000394 () Bool)

(assert (=> b!4972006 m!6000394))

(assert (=> b!4972006 m!5999670))

(declare-fun m!6000396 () Bool)

(assert (=> b!4972006 m!6000396))

(declare-fun m!6000398 () Bool)

(assert (=> b!4972009 m!6000398))

(assert (=> b!4972008 m!5999826))

(declare-fun m!6000400 () Bool)

(assert (=> b!4972008 m!6000400))

(assert (=> b!4972008 m!5999826))

(assert (=> b!4972008 m!6000400))

(declare-fun m!6000402 () Bool)

(assert (=> b!4972008 m!6000402))

(declare-fun m!6000404 () Bool)

(assert (=> b!4972008 m!6000404))

(assert (=> b!4972007 m!6000396))

(assert (=> b!4972007 m!5999670))

(assert (=> b!4972007 m!5999670))

(assert (=> b!4972007 m!6000390))

(assert (=> b!4972007 m!6000390))

(assert (=> b!4972007 m!6000394))

(declare-fun m!6000406 () Bool)

(assert (=> b!4972010 m!6000406))

(declare-fun m!6000408 () Bool)

(assert (=> b!4972010 m!6000408))

(declare-fun m!6000410 () Bool)

(assert (=> b!4972010 m!6000410))

(assert (=> b!4972010 m!6000406))

(assert (=> b!4972010 m!5999670))

(declare-fun m!6000412 () Bool)

(assert (=> b!4972010 m!6000412))

(declare-fun m!6000414 () Bool)

(assert (=> b!4972010 m!6000414))

(declare-fun m!6000416 () Bool)

(assert (=> b!4972010 m!6000416))

(assert (=> b!4972010 m!6000400))

(declare-fun m!6000418 () Bool)

(assert (=> b!4972010 m!6000418))

(declare-fun m!6000420 () Bool)

(assert (=> b!4972010 m!6000420))

(assert (=> b!4972010 m!6000410))

(assert (=> b!4972010 m!5999826))

(declare-fun m!6000422 () Bool)

(assert (=> b!4972010 m!6000422))

(assert (=> b!4972010 m!6000406))

(declare-fun m!6000424 () Bool)

(assert (=> b!4972010 m!6000424))

(assert (=> b!4972010 m!5999826))

(assert (=> b!4972010 m!6000400))

(assert (=> b!4972010 m!6000402))

(assert (=> d!1600872 m!6000398))

(assert (=> d!1600872 m!5999670))

(declare-fun m!6000426 () Bool)

(assert (=> d!1600872 m!6000426))

(assert (=> d!1600872 m!5999670))

(assert (=> d!1600872 m!6000390))

(assert (=> d!1600872 m!6000390))

(declare-fun m!6000428 () Bool)

(assert (=> d!1600872 m!6000428))

(declare-fun m!6000430 () Bool)

(assert (=> d!1600872 m!6000430))

(assert (=> d!1600872 m!6000344))

(assert (=> bm!346713 d!1600872))

(declare-fun d!1600874 () Bool)

(assert (=> d!1600874 (= (inv!75101 (tag!9261 (h!63906 (t!369112 rulesArg!259)))) (= (mod (str.len (value!268755 (tag!9261 (h!63906 (t!369112 rulesArg!259))))) 2) 0))))

(assert (=> b!4971626 d!1600874))

(declare-fun d!1600876 () Bool)

(declare-fun res!2122376 () Bool)

(declare-fun e!3107538 () Bool)

(assert (=> d!1600876 (=> (not res!2122376) (not e!3107538))))

(assert (=> d!1600876 (= res!2122376 (semiInverseModEq!3704 (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259))))))))

(assert (=> d!1600876 (= (inv!75104 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) e!3107538)))

(declare-fun b!4972014 () Bool)

(assert (=> b!4972014 (= e!3107538 (equivClasses!3552 (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259))))))))

(assert (= (and d!1600876 res!2122376) b!4972014))

(declare-fun m!6000432 () Bool)

(assert (=> d!1600876 m!6000432))

(declare-fun m!6000434 () Bool)

(assert (=> b!4972014 m!6000434))

(assert (=> b!4971626 d!1600876))

(declare-fun d!1600878 () Bool)

(declare-fun lt!2053370 () Int)

(assert (=> d!1600878 (>= lt!2053370 0)))

(declare-fun e!3107539 () Int)

(assert (=> d!1600878 (= lt!2053370 e!3107539)))

(declare-fun c!848399 () Bool)

(assert (=> d!1600878 (= c!848399 (is-Nil!57457 (list!18377 totalInput!464)))))

(assert (=> d!1600878 (= (size!38088 (list!18377 totalInput!464)) lt!2053370)))

(declare-fun b!4972015 () Bool)

(assert (=> b!4972015 (= e!3107539 0)))

(declare-fun b!4972016 () Bool)

(assert (=> b!4972016 (= e!3107539 (+ 1 (size!38088 (t!369111 (list!18377 totalInput!464)))))))

(assert (= (and d!1600878 c!848399) b!4972015))

(assert (= (and d!1600878 (not c!848399)) b!4972016))

(declare-fun m!6000436 () Bool)

(assert (=> b!4972016 m!6000436))

(assert (=> b!4971548 d!1600878))

(assert (=> b!4971548 d!1600792))

(declare-fun b!4972029 () Bool)

(declare-fun res!2122393 () Bool)

(declare-fun e!3107545 () Bool)

(assert (=> b!4972029 (=> (not res!2122393) (not e!3107545))))

(assert (=> b!4972029 (= res!2122393 (<= (- (height!2017 (left!41914 (c!848311 totalInput!464))) (height!2017 (right!42244 (c!848311 totalInput!464)))) 1))))

(declare-fun b!4972030 () Bool)

(declare-fun res!2122394 () Bool)

(assert (=> b!4972030 (=> (not res!2122394) (not e!3107545))))

(assert (=> b!4972030 (= res!2122394 (isBalanced!4206 (left!41914 (c!848311 totalInput!464))))))

(declare-fun d!1600880 () Bool)

(declare-fun res!2122390 () Bool)

(declare-fun e!3107544 () Bool)

(assert (=> d!1600880 (=> res!2122390 e!3107544)))

(assert (=> d!1600880 (= res!2122390 (not (is-Node!15149 (c!848311 totalInput!464))))))

(assert (=> d!1600880 (= (isBalanced!4206 (c!848311 totalInput!464)) e!3107544)))

(declare-fun b!4972031 () Bool)

(declare-fun res!2122391 () Bool)

(assert (=> b!4972031 (=> (not res!2122391) (not e!3107545))))

(declare-fun isEmpty!30967 (Conc!15149) Bool)

(assert (=> b!4972031 (= res!2122391 (not (isEmpty!30967 (left!41914 (c!848311 totalInput!464)))))))

(declare-fun b!4972032 () Bool)

(assert (=> b!4972032 (= e!3107545 (not (isEmpty!30967 (right!42244 (c!848311 totalInput!464)))))))

(declare-fun b!4972033 () Bool)

(assert (=> b!4972033 (= e!3107544 e!3107545)))

(declare-fun res!2122389 () Bool)

(assert (=> b!4972033 (=> (not res!2122389) (not e!3107545))))

(assert (=> b!4972033 (= res!2122389 (<= (- 1) (- (height!2017 (left!41914 (c!848311 totalInput!464))) (height!2017 (right!42244 (c!848311 totalInput!464))))))))

(declare-fun b!4972034 () Bool)

(declare-fun res!2122392 () Bool)

(assert (=> b!4972034 (=> (not res!2122392) (not e!3107545))))

(assert (=> b!4972034 (= res!2122392 (isBalanced!4206 (right!42244 (c!848311 totalInput!464))))))

(assert (= (and d!1600880 (not res!2122390)) b!4972033))

(assert (= (and b!4972033 res!2122389) b!4972029))

(assert (= (and b!4972029 res!2122393) b!4972030))

(assert (= (and b!4972030 res!2122394) b!4972034))

(assert (= (and b!4972034 res!2122392) b!4972031))

(assert (= (and b!4972031 res!2122391) b!4972032))

(declare-fun m!6000438 () Bool)

(assert (=> b!4972031 m!6000438))

(declare-fun m!6000440 () Bool)

(assert (=> b!4972032 m!6000440))

(declare-fun m!6000442 () Bool)

(assert (=> b!4972029 m!6000442))

(declare-fun m!6000444 () Bool)

(assert (=> b!4972029 m!6000444))

(declare-fun m!6000446 () Bool)

(assert (=> b!4972034 m!6000446))

(assert (=> b!4972033 m!6000442))

(assert (=> b!4972033 m!6000444))

(declare-fun m!6000448 () Bool)

(assert (=> b!4972030 m!6000448))

(assert (=> d!1600694 d!1600880))

(declare-fun b!4972038 () Bool)

(declare-fun e!3107546 () Bool)

(assert (=> b!4972038 (= e!3107546 (>= (size!38088 (tail!9805 lt!2052978)) (size!38088 (tail!9805 lt!2052978))))))

(declare-fun d!1600882 () Bool)

(assert (=> d!1600882 e!3107546))

(declare-fun res!2122398 () Bool)

(assert (=> d!1600882 (=> res!2122398 e!3107546)))

(declare-fun lt!2053371 () Bool)

(assert (=> d!1600882 (= res!2122398 (not lt!2053371))))

(declare-fun e!3107548 () Bool)

(assert (=> d!1600882 (= lt!2053371 e!3107548)))

(declare-fun res!2122397 () Bool)

(assert (=> d!1600882 (=> res!2122397 e!3107548)))

(assert (=> d!1600882 (= res!2122397 (is-Nil!57457 (tail!9805 lt!2052978)))))

(assert (=> d!1600882 (= (isPrefix!5248 (tail!9805 lt!2052978) (tail!9805 lt!2052978)) lt!2053371)))

(declare-fun b!4972037 () Bool)

(declare-fun e!3107547 () Bool)

(assert (=> b!4972037 (= e!3107547 (isPrefix!5248 (tail!9805 (tail!9805 lt!2052978)) (tail!9805 (tail!9805 lt!2052978))))))

(declare-fun b!4972035 () Bool)

(assert (=> b!4972035 (= e!3107548 e!3107547)))

(declare-fun res!2122395 () Bool)

(assert (=> b!4972035 (=> (not res!2122395) (not e!3107547))))

(assert (=> b!4972035 (= res!2122395 (not (is-Nil!57457 (tail!9805 lt!2052978))))))

(declare-fun b!4972036 () Bool)

(declare-fun res!2122396 () Bool)

(assert (=> b!4972036 (=> (not res!2122396) (not e!3107547))))

(assert (=> b!4972036 (= res!2122396 (= (head!10672 (tail!9805 lt!2052978)) (head!10672 (tail!9805 lt!2052978))))))

(assert (= (and d!1600882 (not res!2122397)) b!4972035))

(assert (= (and b!4972035 res!2122395) b!4972036))

(assert (= (and b!4972036 res!2122396) b!4972037))

(assert (= (and d!1600882 (not res!2122398)) b!4972038))

(assert (=> b!4972038 m!5999874))

(declare-fun m!6000450 () Bool)

(assert (=> b!4972038 m!6000450))

(assert (=> b!4972038 m!5999874))

(assert (=> b!4972038 m!6000450))

(assert (=> b!4972037 m!5999874))

(declare-fun m!6000452 () Bool)

(assert (=> b!4972037 m!6000452))

(assert (=> b!4972037 m!5999874))

(assert (=> b!4972037 m!6000452))

(assert (=> b!4972037 m!6000452))

(assert (=> b!4972037 m!6000452))

(declare-fun m!6000454 () Bool)

(assert (=> b!4972037 m!6000454))

(assert (=> b!4972036 m!5999874))

(declare-fun m!6000456 () Bool)

(assert (=> b!4972036 m!6000456))

(assert (=> b!4972036 m!5999874))

(assert (=> b!4972036 m!6000456))

(assert (=> b!4971559 d!1600882))

(declare-fun d!1600884 () Bool)

(assert (=> d!1600884 (= (tail!9805 lt!2052978) (t!369111 lt!2052978))))

(assert (=> b!4971559 d!1600884))

(declare-fun d!1600886 () Bool)

(declare-fun res!2122403 () Bool)

(declare-fun e!3107553 () Bool)

(assert (=> d!1600886 (=> res!2122403 e!3107553)))

(assert (=> d!1600886 (= res!2122403 (is-Nil!57458 rulesArg!259))))

(assert (=> d!1600886 (= (forall!13332 rulesArg!259 lambda!247460) e!3107553)))

(declare-fun b!4972043 () Bool)

(declare-fun e!3107554 () Bool)

(assert (=> b!4972043 (= e!3107553 e!3107554)))

(declare-fun res!2122404 () Bool)

(assert (=> b!4972043 (=> (not res!2122404) (not e!3107554))))

(declare-fun dynLambda!23203 (Int Rule!16594) Bool)

(assert (=> b!4972043 (= res!2122404 (dynLambda!23203 lambda!247460 (h!63906 rulesArg!259)))))

(declare-fun b!4972044 () Bool)

(assert (=> b!4972044 (= e!3107554 (forall!13332 (t!369112 rulesArg!259) lambda!247460))))

(assert (= (and d!1600886 (not res!2122403)) b!4972043))

(assert (= (and b!4972043 res!2122404) b!4972044))

(declare-fun b_lambda!197227 () Bool)

(assert (=> (not b_lambda!197227) (not b!4972043)))

(declare-fun m!6000458 () Bool)

(assert (=> b!4972043 m!6000458))

(declare-fun m!6000460 () Bool)

(assert (=> b!4972044 m!6000460))

(assert (=> d!1600706 d!1600886))

(declare-fun b!4972045 () Bool)

(declare-fun res!2122407 () Bool)

(declare-fun e!3107556 () Bool)

(assert (=> b!4972045 (=> (not res!2122407) (not e!3107556))))

(declare-fun lt!2053375 () Option!14458)

(assert (=> b!4972045 (= res!2122407 (matchR!6640 (regex!8397 (rule!11653 (_1!34402 (get!19950 lt!2053375)))) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053375))))))))

(declare-fun b!4972046 () Bool)

(declare-fun e!3107555 () Bool)

(assert (=> b!4972046 (= e!3107555 e!3107556)))

(declare-fun res!2122408 () Bool)

(assert (=> b!4972046 (=> (not res!2122408) (not e!3107556))))

(assert (=> b!4972046 (= res!2122408 (isDefined!11370 lt!2053375))))

(declare-fun b!4972047 () Bool)

(declare-fun e!3107557 () Option!14458)

(declare-fun call!346766 () Option!14458)

(assert (=> b!4972047 (= e!3107557 call!346766)))

(declare-fun b!4972048 () Bool)

(declare-fun res!2122405 () Bool)

(assert (=> b!4972048 (=> (not res!2122405) (not e!3107556))))

(assert (=> b!4972048 (= res!2122405 (= (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053375)))) (originalCharacters!8676 (_1!34402 (get!19950 lt!2053375)))))))

(declare-fun b!4972049 () Bool)

(declare-fun res!2122409 () Bool)

(assert (=> b!4972049 (=> (not res!2122409) (not e!3107556))))

(assert (=> b!4972049 (= res!2122409 (= (value!268756 (_1!34402 (get!19950 lt!2053375))) (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053375)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053375)))))))))

(declare-fun bm!346761 () Bool)

(assert (=> bm!346761 (= call!346766 (maxPrefixOneRule!3633 thiss!15247 (h!63906 (t!369112 rulesArg!259)) (list!18377 input!1342)))))

(declare-fun b!4972050 () Bool)

(assert (=> b!4972050 (= e!3107556 (contains!19542 (t!369112 rulesArg!259) (rule!11653 (_1!34402 (get!19950 lt!2053375)))))))

(declare-fun b!4972051 () Bool)

(declare-fun res!2122406 () Bool)

(assert (=> b!4972051 (=> (not res!2122406) (not e!3107556))))

(assert (=> b!4972051 (= res!2122406 (< (size!38088 (_2!34402 (get!19950 lt!2053375))) (size!38088 (list!18377 input!1342))))))

(declare-fun d!1600888 () Bool)

(assert (=> d!1600888 e!3107555))

(declare-fun res!2122411 () Bool)

(assert (=> d!1600888 (=> res!2122411 e!3107555)))

(assert (=> d!1600888 (= res!2122411 (isEmpty!30961 lt!2053375))))

(assert (=> d!1600888 (= lt!2053375 e!3107557)))

(declare-fun c!848400 () Bool)

(assert (=> d!1600888 (= c!848400 (and (is-Cons!57458 (t!369112 rulesArg!259)) (is-Nil!57458 (t!369112 (t!369112 rulesArg!259)))))))

(declare-fun lt!2053376 () Unit!148415)

(declare-fun lt!2053374 () Unit!148415)

(assert (=> d!1600888 (= lt!2053376 lt!2053374)))

(assert (=> d!1600888 (isPrefix!5248 (list!18377 input!1342) (list!18377 input!1342))))

(assert (=> d!1600888 (= lt!2053374 (lemmaIsPrefixRefl!3572 (list!18377 input!1342) (list!18377 input!1342)))))

(assert (=> d!1600888 (rulesValidInductive!3300 thiss!15247 (t!369112 rulesArg!259))))

(assert (=> d!1600888 (= (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342)) lt!2053375)))

(declare-fun b!4972052 () Bool)

(declare-fun lt!2053372 () Option!14458)

(declare-fun lt!2053373 () Option!14458)

(assert (=> b!4972052 (= e!3107557 (ite (and (is-None!14457 lt!2053372) (is-None!14457 lt!2053373)) None!14457 (ite (is-None!14457 lt!2053373) lt!2053372 (ite (is-None!14457 lt!2053372) lt!2053373 (ite (>= (size!38086 (_1!34402 (v!50450 lt!2053372))) (size!38086 (_1!34402 (v!50450 lt!2053373)))) lt!2053372 lt!2053373)))))))

(assert (=> b!4972052 (= lt!2053372 call!346766)))

(assert (=> b!4972052 (= lt!2053373 (maxPrefix!4664 thiss!15247 (t!369112 (t!369112 rulesArg!259)) (list!18377 input!1342)))))

(declare-fun b!4972053 () Bool)

(declare-fun res!2122410 () Bool)

(assert (=> b!4972053 (=> (not res!2122410) (not e!3107556))))

(assert (=> b!4972053 (= res!2122410 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053375)))) (_2!34402 (get!19950 lt!2053375))) (list!18377 input!1342)))))

(assert (= (and d!1600888 c!848400) b!4972047))

(assert (= (and d!1600888 (not c!848400)) b!4972052))

(assert (= (or b!4972047 b!4972052) bm!346761))

(assert (= (and d!1600888 (not res!2122411)) b!4972046))

(assert (= (and b!4972046 res!2122408) b!4972048))

(assert (= (and b!4972048 res!2122405) b!4972051))

(assert (= (and b!4972051 res!2122406) b!4972053))

(assert (= (and b!4972053 res!2122410) b!4972049))

(assert (= (and b!4972049 res!2122409) b!4972045))

(assert (= (and b!4972045 res!2122407) b!4972050))

(declare-fun m!6000462 () Bool)

(assert (=> d!1600888 m!6000462))

(assert (=> d!1600888 m!5999670))

(assert (=> d!1600888 m!5999670))

(assert (=> d!1600888 m!6000364))

(assert (=> d!1600888 m!5999670))

(assert (=> d!1600888 m!5999670))

(assert (=> d!1600888 m!6000366))

(assert (=> d!1600888 m!5999784))

(assert (=> bm!346761 m!5999670))

(assert (=> bm!346761 m!6000390))

(declare-fun m!6000464 () Bool)

(assert (=> b!4972053 m!6000464))

(declare-fun m!6000466 () Bool)

(assert (=> b!4972053 m!6000466))

(assert (=> b!4972053 m!6000466))

(declare-fun m!6000468 () Bool)

(assert (=> b!4972053 m!6000468))

(assert (=> b!4972053 m!6000468))

(declare-fun m!6000470 () Bool)

(assert (=> b!4972053 m!6000470))

(declare-fun m!6000472 () Bool)

(assert (=> b!4972046 m!6000472))

(assert (=> b!4972050 m!6000464))

(declare-fun m!6000474 () Bool)

(assert (=> b!4972050 m!6000474))

(assert (=> b!4972051 m!6000464))

(declare-fun m!6000476 () Bool)

(assert (=> b!4972051 m!6000476))

(assert (=> b!4972051 m!5999670))

(assert (=> b!4972051 m!6000308))

(assert (=> b!4972048 m!6000464))

(assert (=> b!4972048 m!6000466))

(assert (=> b!4972048 m!6000466))

(assert (=> b!4972048 m!6000468))

(assert (=> b!4972045 m!6000464))

(assert (=> b!4972045 m!6000466))

(assert (=> b!4972045 m!6000466))

(assert (=> b!4972045 m!6000468))

(assert (=> b!4972045 m!6000468))

(declare-fun m!6000478 () Bool)

(assert (=> b!4972045 m!6000478))

(assert (=> b!4972052 m!5999670))

(assert (=> b!4972052 m!6000114))

(assert (=> b!4972049 m!6000464))

(declare-fun m!6000480 () Bool)

(assert (=> b!4972049 m!6000480))

(assert (=> b!4972049 m!6000480))

(declare-fun m!6000482 () Bool)

(assert (=> b!4972049 m!6000482))

(assert (=> b!4971476 d!1600888))

(assert (=> b!4971476 d!1600716))

(declare-fun d!1600890 () Bool)

(assert (=> d!1600890 (= (list!18377 (_2!34401 (get!19951 lt!2053037))) (list!18379 (c!848311 (_2!34401 (get!19951 lt!2053037)))))))

(declare-fun bs!1183593 () Bool)

(assert (= bs!1183593 d!1600890))

(declare-fun m!6000484 () Bool)

(assert (=> bs!1183593 m!6000484))

(assert (=> b!4971476 d!1600890))

(declare-fun d!1600892 () Bool)

(assert (=> d!1600892 (= (get!19950 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))) (v!50450 (maxPrefix!4664 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))

(assert (=> b!4971476 d!1600892))

(declare-fun d!1600894 () Bool)

(assert (=> d!1600894 (= (get!19951 lt!2053037) (v!50449 lt!2053037))))

(assert (=> b!4971476 d!1600894))

(assert (=> b!4971389 d!1600688))

(declare-fun b!4972054 () Bool)

(declare-fun e!3107561 () Bool)

(declare-fun e!3107558 () Bool)

(assert (=> b!4972054 (= e!3107561 e!3107558)))

(declare-fun res!2122418 () Bool)

(assert (=> b!4972054 (=> (not res!2122418) (not e!3107558))))

(declare-fun lt!2053378 () Option!14458)

(assert (=> b!4972054 (= res!2122418 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053378))))))))

(declare-fun b!4972055 () Bool)

(declare-fun res!2122412 () Bool)

(assert (=> b!4972055 (=> (not res!2122412) (not e!3107558))))

(assert (=> b!4972055 (= res!2122412 (< (size!38088 (_2!34402 (get!19950 lt!2053378))) (size!38088 lt!2052978)))))

(declare-fun b!4972056 () Bool)

(declare-fun res!2122414 () Bool)

(assert (=> b!4972056 (=> (not res!2122414) (not e!3107558))))

(assert (=> b!4972056 (= res!2122414 (= (value!268756 (_1!34402 (get!19950 lt!2053378))) (apply!13908 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053378)))) (seqFromList!6040 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053378)))))))))

(declare-fun b!4972057 () Bool)

(assert (=> b!4972057 (= e!3107558 (= (size!38086 (_1!34402 (get!19950 lt!2053378))) (size!38088 (originalCharacters!8676 (_1!34402 (get!19950 lt!2053378))))))))

(declare-fun d!1600896 () Bool)

(assert (=> d!1600896 e!3107561))

(declare-fun res!2122417 () Bool)

(assert (=> d!1600896 (=> res!2122417 e!3107561)))

(assert (=> d!1600896 (= res!2122417 (isEmpty!30961 lt!2053378))))

(declare-fun e!3107560 () Option!14458)

(assert (=> d!1600896 (= lt!2053378 e!3107560)))

(declare-fun c!848401 () Bool)

(declare-fun lt!2053381 () tuple2!62204)

(assert (=> d!1600896 (= c!848401 (isEmpty!30960 (_1!34405 lt!2053381)))))

(assert (=> d!1600896 (= lt!2053381 (findLongestMatch!1701 (regex!8397 (h!63906 rulesArg!259)) lt!2052978))))

(assert (=> d!1600896 (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259))))

(assert (=> d!1600896 (= (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) lt!2052978) lt!2053378)))

(declare-fun b!4972058 () Bool)

(assert (=> b!4972058 (= e!3107560 (Some!14457 (tuple2!62199 (Token!15291 (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053381))) (h!63906 rulesArg!259) (size!38089 (seqFromList!6040 (_1!34405 lt!2053381))) (_1!34405 lt!2053381)) (_2!34405 lt!2053381))))))

(declare-fun lt!2053380 () Unit!148415)

(assert (=> b!4972058 (= lt!2053380 (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 rulesArg!259)) lt!2052978))))

(declare-fun res!2122413 () Bool)

(assert (=> b!4972058 (= res!2122413 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2052978 lt!2052978 (size!38088 lt!2052978)))))))

(declare-fun e!3107559 () Bool)

(assert (=> b!4972058 (=> res!2122413 e!3107559)))

(assert (=> b!4972058 e!3107559))

(declare-fun lt!2053379 () Unit!148415)

(assert (=> b!4972058 (= lt!2053379 lt!2053380)))

(declare-fun lt!2053377 () Unit!148415)

(assert (=> b!4972058 (= lt!2053377 (lemmaSemiInverse!2606 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053381))))))

(declare-fun b!4972059 () Bool)

(declare-fun res!2122415 () Bool)

(assert (=> b!4972059 (=> (not res!2122415) (not e!3107558))))

(assert (=> b!4972059 (= res!2122415 (= (++!12536 (list!18377 (charsOf!5441 (_1!34402 (get!19950 lt!2053378)))) (_2!34402 (get!19950 lt!2053378))) lt!2052978))))

(declare-fun b!4972060 () Bool)

(declare-fun res!2122416 () Bool)

(assert (=> b!4972060 (=> (not res!2122416) (not e!3107558))))

(assert (=> b!4972060 (= res!2122416 (= (rule!11653 (_1!34402 (get!19950 lt!2053378))) (h!63906 rulesArg!259)))))

(declare-fun b!4972061 () Bool)

(assert (=> b!4972061 (= e!3107559 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2052978 lt!2052978 (size!38088 lt!2052978)))))))

(declare-fun b!4972062 () Bool)

(assert (=> b!4972062 (= e!3107560 None!14457)))

(assert (= (and d!1600896 c!848401) b!4972062))

(assert (= (and d!1600896 (not c!848401)) b!4972058))

(assert (= (and b!4972058 (not res!2122413)) b!4972061))

(assert (= (and d!1600896 (not res!2122417)) b!4972054))

(assert (= (and b!4972054 res!2122418) b!4972059))

(assert (= (and b!4972059 res!2122415) b!4972055))

(assert (= (and b!4972055 res!2122412) b!4972060))

(assert (= (and b!4972060 res!2122416) b!4972056))

(assert (= (and b!4972056 res!2122414) b!4972057))

(declare-fun m!6000486 () Bool)

(assert (=> b!4972058 m!6000486))

(declare-fun m!6000488 () Bool)

(assert (=> b!4972058 m!6000488))

(assert (=> b!4972058 m!5999826))

(declare-fun m!6000490 () Bool)

(assert (=> b!4972058 m!6000490))

(assert (=> b!4972058 m!6000486))

(declare-fun m!6000492 () Bool)

(assert (=> b!4972058 m!6000492))

(assert (=> b!4972058 m!5999866))

(declare-fun m!6000494 () Bool)

(assert (=> b!4972058 m!6000494))

(assert (=> b!4972058 m!5999826))

(assert (=> b!4972058 m!5999866))

(declare-fun m!6000496 () Bool)

(assert (=> b!4972058 m!6000496))

(assert (=> b!4972058 m!6000486))

(assert (=> b!4972058 m!6000486))

(declare-fun m!6000498 () Bool)

(assert (=> b!4972058 m!6000498))

(declare-fun m!6000500 () Bool)

(assert (=> b!4972059 m!6000500))

(declare-fun m!6000502 () Bool)

(assert (=> b!4972059 m!6000502))

(assert (=> b!4972059 m!6000502))

(declare-fun m!6000504 () Bool)

(assert (=> b!4972059 m!6000504))

(assert (=> b!4972059 m!6000504))

(declare-fun m!6000506 () Bool)

(assert (=> b!4972059 m!6000506))

(declare-fun m!6000508 () Bool)

(assert (=> d!1600896 m!6000508))

(declare-fun m!6000510 () Bool)

(assert (=> d!1600896 m!6000510))

(declare-fun m!6000512 () Bool)

(assert (=> d!1600896 m!6000512))

(assert (=> d!1600896 m!5999860))

(assert (=> b!4972061 m!5999826))

(assert (=> b!4972061 m!5999866))

(assert (=> b!4972061 m!5999826))

(assert (=> b!4972061 m!5999866))

(assert (=> b!4972061 m!6000496))

(declare-fun m!6000514 () Bool)

(assert (=> b!4972061 m!6000514))

(assert (=> b!4972054 m!6000500))

(assert (=> b!4972054 m!6000502))

(assert (=> b!4972054 m!6000502))

(assert (=> b!4972054 m!6000504))

(assert (=> b!4972054 m!6000504))

(declare-fun m!6000516 () Bool)

(assert (=> b!4972054 m!6000516))

(assert (=> b!4972056 m!6000500))

(declare-fun m!6000518 () Bool)

(assert (=> b!4972056 m!6000518))

(assert (=> b!4972056 m!6000518))

(declare-fun m!6000520 () Bool)

(assert (=> b!4972056 m!6000520))

(assert (=> b!4972057 m!6000500))

(declare-fun m!6000522 () Bool)

(assert (=> b!4972057 m!6000522))

(assert (=> b!4972060 m!6000500))

(assert (=> b!4972055 m!6000500))

(declare-fun m!6000524 () Bool)

(assert (=> b!4972055 m!6000524))

(assert (=> b!4972055 m!5999866))

(assert (=> bm!346722 d!1600896))

(assert (=> d!1600732 d!1600736))

(assert (=> d!1600732 d!1600718))

(assert (=> d!1600732 d!1600720))

(assert (=> d!1600732 d!1600706))

(declare-fun b!4972063 () Bool)

(declare-fun res!2122423 () Bool)

(declare-fun e!3107563 () Bool)

(assert (=> b!4972063 (=> (not res!2122423) (not e!3107563))))

(assert (=> b!4972063 (= res!2122423 (<= (- (height!2017 (left!41914 (c!848311 input!1342))) (height!2017 (right!42244 (c!848311 input!1342)))) 1))))

(declare-fun b!4972064 () Bool)

(declare-fun res!2122424 () Bool)

(assert (=> b!4972064 (=> (not res!2122424) (not e!3107563))))

(assert (=> b!4972064 (= res!2122424 (isBalanced!4206 (left!41914 (c!848311 input!1342))))))

(declare-fun d!1600898 () Bool)

(declare-fun res!2122420 () Bool)

(declare-fun e!3107562 () Bool)

(assert (=> d!1600898 (=> res!2122420 e!3107562)))

(assert (=> d!1600898 (= res!2122420 (not (is-Node!15149 (c!848311 input!1342))))))

(assert (=> d!1600898 (= (isBalanced!4206 (c!848311 input!1342)) e!3107562)))

(declare-fun b!4972065 () Bool)

(declare-fun res!2122421 () Bool)

(assert (=> b!4972065 (=> (not res!2122421) (not e!3107563))))

(assert (=> b!4972065 (= res!2122421 (not (isEmpty!30967 (left!41914 (c!848311 input!1342)))))))

(declare-fun b!4972066 () Bool)

(assert (=> b!4972066 (= e!3107563 (not (isEmpty!30967 (right!42244 (c!848311 input!1342)))))))

(declare-fun b!4972067 () Bool)

(assert (=> b!4972067 (= e!3107562 e!3107563)))

(declare-fun res!2122419 () Bool)

(assert (=> b!4972067 (=> (not res!2122419) (not e!3107563))))

(assert (=> b!4972067 (= res!2122419 (<= (- 1) (- (height!2017 (left!41914 (c!848311 input!1342))) (height!2017 (right!42244 (c!848311 input!1342))))))))

(declare-fun b!4972068 () Bool)

(declare-fun res!2122422 () Bool)

(assert (=> b!4972068 (=> (not res!2122422) (not e!3107563))))

(assert (=> b!4972068 (= res!2122422 (isBalanced!4206 (right!42244 (c!848311 input!1342))))))

(assert (= (and d!1600898 (not res!2122420)) b!4972067))

(assert (= (and b!4972067 res!2122419) b!4972063))

(assert (= (and b!4972063 res!2122423) b!4972064))

(assert (= (and b!4972064 res!2122424) b!4972068))

(assert (= (and b!4972068 res!2122422) b!4972065))

(assert (= (and b!4972065 res!2122421) b!4972066))

(declare-fun m!6000526 () Bool)

(assert (=> b!4972065 m!6000526))

(declare-fun m!6000528 () Bool)

(assert (=> b!4972066 m!6000528))

(assert (=> b!4972063 m!6000088))

(assert (=> b!4972063 m!6000090))

(declare-fun m!6000530 () Bool)

(assert (=> b!4972068 m!6000530))

(assert (=> b!4972067 m!6000088))

(assert (=> b!4972067 m!6000090))

(declare-fun m!6000532 () Bool)

(assert (=> b!4972064 m!6000532))

(assert (=> d!1600692 d!1600898))

(declare-fun b!4972070 () Bool)

(declare-fun e!3107564 () List!57581)

(declare-fun e!3107565 () List!57581)

(assert (=> b!4972070 (= e!3107564 e!3107565)))

(declare-fun c!848403 () Bool)

(assert (=> b!4972070 (= c!848403 (is-Leaf!25173 (c!848311 (_2!34401 lt!2052975))))))

(declare-fun b!4972072 () Bool)

(assert (=> b!4972072 (= e!3107565 (++!12536 (list!18379 (left!41914 (c!848311 (_2!34401 lt!2052975)))) (list!18379 (right!42244 (c!848311 (_2!34401 lt!2052975))))))))

(declare-fun d!1600900 () Bool)

(declare-fun c!848402 () Bool)

(assert (=> d!1600900 (= c!848402 (is-Empty!15149 (c!848311 (_2!34401 lt!2052975))))))

(assert (=> d!1600900 (= (list!18379 (c!848311 (_2!34401 lt!2052975))) e!3107564)))

(declare-fun b!4972069 () Bool)

(assert (=> b!4972069 (= e!3107564 Nil!57457)))

(declare-fun b!4972071 () Bool)

(assert (=> b!4972071 (= e!3107565 (list!18381 (xs!18475 (c!848311 (_2!34401 lt!2052975)))))))

(assert (= (and d!1600900 c!848402) b!4972069))

(assert (= (and d!1600900 (not c!848402)) b!4972070))

(assert (= (and b!4972070 c!848403) b!4972071))

(assert (= (and b!4972070 (not c!848403)) b!4972072))

(declare-fun m!6000534 () Bool)

(assert (=> b!4972072 m!6000534))

(declare-fun m!6000536 () Bool)

(assert (=> b!4972072 m!6000536))

(assert (=> b!4972072 m!6000534))

(assert (=> b!4972072 m!6000536))

(declare-fun m!6000538 () Bool)

(assert (=> b!4972072 m!6000538))

(declare-fun m!6000540 () Bool)

(assert (=> b!4972071 m!6000540))

(assert (=> d!1600726 d!1600900))

(assert (=> b!4971478 d!1600716))

(assert (=> b!4971478 d!1600890))

(assert (=> b!4971478 d!1600894))

(assert (=> b!4971478 d!1600866))

(declare-fun d!1600902 () Bool)

(assert (=> d!1600902 (= (get!19950 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))) (v!50450 (maxPrefixZipper!790 thiss!15247 (t!369112 rulesArg!259) (list!18377 input!1342))))))

(assert (=> b!4971478 d!1600902))

(declare-fun d!1600904 () Bool)

(declare-fun lt!2053382 () Int)

(assert (=> d!1600904 (>= lt!2053382 0)))

(declare-fun e!3107566 () Int)

(assert (=> d!1600904 (= lt!2053382 e!3107566)))

(declare-fun c!848404 () Bool)

(assert (=> d!1600904 (= c!848404 (is-Nil!57457 (_2!34402 (get!19950 lt!2053145))))))

(assert (=> d!1600904 (= (size!38088 (_2!34402 (get!19950 lt!2053145))) lt!2053382)))

(declare-fun b!4972073 () Bool)

(assert (=> b!4972073 (= e!3107566 0)))

(declare-fun b!4972074 () Bool)

(assert (=> b!4972074 (= e!3107566 (+ 1 (size!38088 (t!369111 (_2!34402 (get!19950 lt!2053145))))))))

(assert (= (and d!1600904 c!848404) b!4972073))

(assert (= (and d!1600904 (not c!848404)) b!4972074))

(declare-fun m!6000542 () Bool)

(assert (=> b!4972074 m!6000542))

(assert (=> b!4971594 d!1600904))

(assert (=> b!4971594 d!1600784))

(assert (=> b!4971594 d!1600792))

(declare-fun d!1600906 () Bool)

(declare-fun c!848405 () Bool)

(assert (=> d!1600906 (= c!848405 (is-Node!15149 (left!41914 (c!848311 input!1342))))))

(declare-fun e!3107567 () Bool)

(assert (=> d!1600906 (= (inv!75105 (left!41914 (c!848311 input!1342))) e!3107567)))

(declare-fun b!4972075 () Bool)

(assert (=> b!4972075 (= e!3107567 (inv!75110 (left!41914 (c!848311 input!1342))))))

(declare-fun b!4972076 () Bool)

(declare-fun e!3107568 () Bool)

(assert (=> b!4972076 (= e!3107567 e!3107568)))

(declare-fun res!2122425 () Bool)

(assert (=> b!4972076 (= res!2122425 (not (is-Leaf!25173 (left!41914 (c!848311 input!1342)))))))

(assert (=> b!4972076 (=> res!2122425 e!3107568)))

(declare-fun b!4972077 () Bool)

(assert (=> b!4972077 (= e!3107568 (inv!75111 (left!41914 (c!848311 input!1342))))))

(assert (= (and d!1600906 c!848405) b!4972075))

(assert (= (and d!1600906 (not c!848405)) b!4972076))

(assert (= (and b!4972076 (not res!2122425)) b!4972077))

(declare-fun m!6000544 () Bool)

(assert (=> b!4972075 m!6000544))

(declare-fun m!6000546 () Bool)

(assert (=> b!4972077 m!6000546))

(assert (=> b!4971614 d!1600906))

(declare-fun d!1600908 () Bool)

(declare-fun c!848406 () Bool)

(assert (=> d!1600908 (= c!848406 (is-Node!15149 (right!42244 (c!848311 input!1342))))))

(declare-fun e!3107569 () Bool)

(assert (=> d!1600908 (= (inv!75105 (right!42244 (c!848311 input!1342))) e!3107569)))

(declare-fun b!4972078 () Bool)

(assert (=> b!4972078 (= e!3107569 (inv!75110 (right!42244 (c!848311 input!1342))))))

(declare-fun b!4972079 () Bool)

(declare-fun e!3107570 () Bool)

(assert (=> b!4972079 (= e!3107569 e!3107570)))

(declare-fun res!2122426 () Bool)

(assert (=> b!4972079 (= res!2122426 (not (is-Leaf!25173 (right!42244 (c!848311 input!1342)))))))

(assert (=> b!4972079 (=> res!2122426 e!3107570)))

(declare-fun b!4972080 () Bool)

(assert (=> b!4972080 (= e!3107570 (inv!75111 (right!42244 (c!848311 input!1342))))))

(assert (= (and d!1600908 c!848406) b!4972078))

(assert (= (and d!1600908 (not c!848406)) b!4972079))

(assert (= (and b!4972079 (not res!2122426)) b!4972080))

(declare-fun m!6000548 () Bool)

(assert (=> b!4972078 m!6000548))

(declare-fun m!6000550 () Bool)

(assert (=> b!4972080 m!6000550))

(assert (=> b!4971614 d!1600908))

(assert (=> b!4971480 d!1600894))

(assert (=> b!4971480 d!1600902))

(assert (=> b!4971480 d!1600866))

(assert (=> b!4971480 d!1600716))

(declare-fun d!1600910 () Bool)

(declare-fun c!848407 () Bool)

(assert (=> d!1600910 (= c!848407 (is-Node!15149 (left!41914 (c!848311 totalInput!464))))))

(declare-fun e!3107571 () Bool)

(assert (=> d!1600910 (= (inv!75105 (left!41914 (c!848311 totalInput!464))) e!3107571)))

(declare-fun b!4972081 () Bool)

(assert (=> b!4972081 (= e!3107571 (inv!75110 (left!41914 (c!848311 totalInput!464))))))

(declare-fun b!4972082 () Bool)

(declare-fun e!3107572 () Bool)

(assert (=> b!4972082 (= e!3107571 e!3107572)))

(declare-fun res!2122427 () Bool)

(assert (=> b!4972082 (= res!2122427 (not (is-Leaf!25173 (left!41914 (c!848311 totalInput!464)))))))

(assert (=> b!4972082 (=> res!2122427 e!3107572)))

(declare-fun b!4972083 () Bool)

(assert (=> b!4972083 (= e!3107572 (inv!75111 (left!41914 (c!848311 totalInput!464))))))

(assert (= (and d!1600910 c!848407) b!4972081))

(assert (= (and d!1600910 (not c!848407)) b!4972082))

(assert (= (and b!4972082 (not res!2122427)) b!4972083))

(declare-fun m!6000552 () Bool)

(assert (=> b!4972081 m!6000552))

(declare-fun m!6000554 () Bool)

(assert (=> b!4972083 m!6000554))

(assert (=> b!4971642 d!1600910))

(declare-fun d!1600912 () Bool)

(declare-fun c!848408 () Bool)

(assert (=> d!1600912 (= c!848408 (is-Node!15149 (right!42244 (c!848311 totalInput!464))))))

(declare-fun e!3107573 () Bool)

(assert (=> d!1600912 (= (inv!75105 (right!42244 (c!848311 totalInput!464))) e!3107573)))

(declare-fun b!4972084 () Bool)

(assert (=> b!4972084 (= e!3107573 (inv!75110 (right!42244 (c!848311 totalInput!464))))))

(declare-fun b!4972085 () Bool)

(declare-fun e!3107574 () Bool)

(assert (=> b!4972085 (= e!3107573 e!3107574)))

(declare-fun res!2122428 () Bool)

(assert (=> b!4972085 (= res!2122428 (not (is-Leaf!25173 (right!42244 (c!848311 totalInput!464)))))))

(assert (=> b!4972085 (=> res!2122428 e!3107574)))

(declare-fun b!4972086 () Bool)

(assert (=> b!4972086 (= e!3107574 (inv!75111 (right!42244 (c!848311 totalInput!464))))))

(assert (= (and d!1600912 c!848408) b!4972084))

(assert (= (and d!1600912 (not c!848408)) b!4972085))

(assert (= (and b!4972085 (not res!2122428)) b!4972086))

(declare-fun m!6000556 () Bool)

(assert (=> b!4972084 m!6000556))

(declare-fun m!6000558 () Bool)

(assert (=> b!4972086 m!6000558))

(assert (=> b!4971642 d!1600912))

(declare-fun d!1600914 () Bool)

(assert (=> d!1600914 (= (isEmpty!30961 lt!2053145) (not (is-Some!14457 lt!2053145)))))

(assert (=> d!1600736 d!1600914))

(assert (=> d!1600736 d!1600718))

(assert (=> d!1600736 d!1600720))

(assert (=> d!1600736 d!1600706))

(declare-fun d!1600916 () Bool)

(assert (=> d!1600916 (= (isDefined!11371 lt!2053102) (not (isEmpty!30962 lt!2053102)))))

(declare-fun bs!1183594 () Bool)

(assert (= bs!1183594 d!1600916))

(declare-fun m!6000560 () Bool)

(assert (=> bs!1183594 m!6000560))

(assert (=> b!4971527 d!1600916))

(declare-fun bs!1183595 () Bool)

(declare-fun d!1600918 () Bool)

(assert (= bs!1183595 (and d!1600918 d!1600826)))

(declare-fun lambda!247479 () Int)

(assert (=> bs!1183595 (= lambda!247479 lambda!247474)))

(assert (=> d!1600918 true))

(assert (=> d!1600918 (< (dynLambda!23193 order!26235 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (dynLambda!23201 order!26247 lambda!247479))))

(declare-fun Forall2!1291 (Int) Bool)

(assert (=> d!1600918 (= (equivClasses!3552 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) (Forall2!1291 lambda!247479))))

(declare-fun bs!1183596 () Bool)

(assert (= bs!1183596 d!1600918))

(declare-fun m!6000562 () Bool)

(assert (=> bs!1183596 m!6000562))

(assert (=> b!4971563 d!1600918))

(declare-fun d!1600920 () Bool)

(declare-fun res!2122431 () Bool)

(declare-fun e!3107577 () Bool)

(assert (=> d!1600920 (=> (not res!2122431) (not e!3107577))))

(assert (=> d!1600920 (= res!2122431 (<= (size!38088 (list!18381 (xs!18475 (c!848311 totalInput!464)))) 512))))

(assert (=> d!1600920 (= (inv!75111 (c!848311 totalInput!464)) e!3107577)))

(declare-fun b!4972091 () Bool)

(declare-fun res!2122432 () Bool)

(assert (=> b!4972091 (=> (not res!2122432) (not e!3107577))))

(assert (=> b!4972091 (= res!2122432 (= (csize!30529 (c!848311 totalInput!464)) (size!38088 (list!18381 (xs!18475 (c!848311 totalInput!464))))))))

(declare-fun b!4972092 () Bool)

(assert (=> b!4972092 (= e!3107577 (and (> (csize!30529 (c!848311 totalInput!464)) 0) (<= (csize!30529 (c!848311 totalInput!464)) 512)))))

(assert (= (and d!1600920 res!2122431) b!4972091))

(assert (= (and b!4972091 res!2122432) b!4972092))

(assert (=> d!1600920 m!6000376))

(assert (=> d!1600920 m!6000376))

(declare-fun m!6000564 () Bool)

(assert (=> d!1600920 m!6000564))

(assert (=> b!4972091 m!6000376))

(assert (=> b!4972091 m!6000376))

(assert (=> b!4972091 m!6000564))

(assert (=> b!4971599 d!1600920))

(declare-fun d!1600922 () Bool)

(declare-fun lt!2053409 () Option!14458)

(assert (=> d!1600922 (= lt!2053409 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) lt!2052978))))

(declare-fun e!3107608 () Option!14458)

(assert (=> d!1600922 (= lt!2053409 e!3107608)))

(declare-fun c!848428 () Bool)

(declare-fun lt!2053411 () tuple2!62204)

(assert (=> d!1600922 (= c!848428 (isEmpty!30960 (_1!34405 lt!2053411)))))

(declare-fun findLongestMatchWithZipper!98 (Regex!13630 List!57581) tuple2!62204)

(assert (=> d!1600922 (= lt!2053411 (findLongestMatchWithZipper!98 (regex!8397 (h!63906 rulesArg!259)) lt!2052978))))

(assert (=> d!1600922 (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259))))

(assert (=> d!1600922 (= (maxPrefixOneRuleZipper!300 thiss!15247 (h!63906 rulesArg!259) lt!2052978) lt!2053409)))

(declare-fun b!4972154 () Bool)

(assert (=> b!4972154 (= e!3107608 None!14457)))

(declare-fun b!4972155 () Bool)

(assert (=> b!4972155 (= e!3107608 (Some!14457 (tuple2!62199 (Token!15291 (apply!13908 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053411))) (h!63906 rulesArg!259) (size!38088 (_1!34405 lt!2053411)) (_1!34405 lt!2053411)) (_2!34405 lt!2053411))))))

(declare-fun lt!2053408 () Unit!148415)

(assert (=> b!4972155 (= lt!2053408 (longestMatchIsAcceptedByMatchOrIsEmpty!1820 (regex!8397 (h!63906 rulesArg!259)) lt!2052978))))

(declare-fun res!2122456 () Bool)

(assert (=> b!4972155 (= res!2122456 (isEmpty!30960 (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2052978 lt!2052978 (size!38088 lt!2052978)))))))

(declare-fun e!3107609 () Bool)

(assert (=> b!4972155 (=> res!2122456 e!3107609)))

(assert (=> b!4972155 e!3107609))

(declare-fun lt!2053407 () Unit!148415)

(assert (=> b!4972155 (= lt!2053407 lt!2053408)))

(declare-fun lt!2053406 () Unit!148415)

(assert (=> b!4972155 (= lt!2053406 (lemmaInv!1338 (transformation!8397 (h!63906 rulesArg!259))))))

(declare-fun lt!2053410 () Unit!148415)

(assert (=> b!4972155 (= lt!2053410 (lemmaSemiInverse!2606 (transformation!8397 (h!63906 rulesArg!259)) (seqFromList!6040 (_1!34405 lt!2053411))))))

(declare-fun b!4972156 () Bool)

(assert (=> b!4972156 (= e!3107609 (matchR!6640 (regex!8397 (h!63906 rulesArg!259)) (_1!34405 (findLongestMatchInner!1859 (regex!8397 (h!63906 rulesArg!259)) Nil!57457 (size!38088 Nil!57457) lt!2052978 lt!2052978 (size!38088 lt!2052978)))))))

(assert (= (and d!1600922 c!848428) b!4972154))

(assert (= (and d!1600922 (not c!848428)) b!4972155))

(assert (= (and b!4972155 (not res!2122456)) b!4972156))

(assert (=> d!1600922 m!5999898))

(declare-fun m!6000600 () Bool)

(assert (=> d!1600922 m!6000600))

(declare-fun m!6000602 () Bool)

(assert (=> d!1600922 m!6000602))

(assert (=> d!1600922 m!5999860))

(assert (=> b!4972155 m!5999826))

(assert (=> b!4972155 m!6000490))

(declare-fun m!6000604 () Bool)

(assert (=> b!4972155 m!6000604))

(declare-fun m!6000606 () Bool)

(assert (=> b!4972155 m!6000606))

(assert (=> b!4972155 m!5999848))

(declare-fun m!6000608 () Bool)

(assert (=> b!4972155 m!6000608))

(assert (=> b!4972155 m!6000494))

(assert (=> b!4972155 m!5999826))

(assert (=> b!4972155 m!5999866))

(assert (=> b!4972155 m!6000496))

(assert (=> b!4972155 m!5999866))

(assert (=> b!4972155 m!6000604))

(declare-fun m!6000610 () Bool)

(assert (=> b!4972155 m!6000610))

(assert (=> b!4972155 m!6000604))

(assert (=> b!4972156 m!5999826))

(assert (=> b!4972156 m!5999866))

(assert (=> b!4972156 m!5999826))

(assert (=> b!4972156 m!5999866))

(assert (=> b!4972156 m!6000496))

(assert (=> b!4972156 m!6000514))

(assert (=> bm!346719 d!1600922))

(declare-fun d!1600946 () Bool)

(assert (=> d!1600946 (= (isDefined!11370 lt!2053145) (not (isEmpty!30961 lt!2053145)))))

(declare-fun bs!1183601 () Bool)

(assert (= bs!1183601 d!1600946))

(assert (=> bs!1183601 m!5999896))

(assert (=> b!4971589 d!1600946))

(assert (=> b!4971474 d!1600894))

(assert (=> b!4971474 d!1600892))

(assert (=> b!4971474 d!1600888))

(assert (=> b!4971474 d!1600716))

(declare-fun b!4972164 () Bool)

(declare-fun e!3107613 () List!57581)

(declare-fun e!3107614 () List!57581)

(assert (=> b!4972164 (= e!3107613 e!3107614)))

(declare-fun c!848430 () Bool)

(assert (=> b!4972164 (= c!848430 (is-Leaf!25173 (c!848311 input!1342)))))

(declare-fun b!4972166 () Bool)

(assert (=> b!4972166 (= e!3107614 (++!12536 (list!18379 (left!41914 (c!848311 input!1342))) (list!18379 (right!42244 (c!848311 input!1342)))))))

(declare-fun d!1600950 () Bool)

(declare-fun c!848429 () Bool)

(assert (=> d!1600950 (= c!848429 (is-Empty!15149 (c!848311 input!1342)))))

(assert (=> d!1600950 (= (list!18379 (c!848311 input!1342)) e!3107613)))

(declare-fun b!4972163 () Bool)

(assert (=> b!4972163 (= e!3107613 Nil!57457)))

(declare-fun b!4972165 () Bool)

(assert (=> b!4972165 (= e!3107614 (list!18381 (xs!18475 (c!848311 input!1342))))))

(assert (= (and d!1600950 c!848429) b!4972163))

(assert (= (and d!1600950 (not c!848429)) b!4972164))

(assert (= (and b!4972164 c!848430) b!4972165))

(assert (= (and b!4972164 (not c!848430)) b!4972166))

(declare-fun m!6000616 () Bool)

(assert (=> b!4972166 m!6000616))

(declare-fun m!6000618 () Bool)

(assert (=> b!4972166 m!6000618))

(assert (=> b!4972166 m!6000616))

(assert (=> b!4972166 m!6000618))

(declare-fun m!6000620 () Bool)

(assert (=> b!4972166 m!6000620))

(assert (=> b!4972165 m!6000104))

(assert (=> d!1600716 d!1600950))

(assert (=> b!4971591 d!1600822))

(assert (=> b!4971591 d!1600824))

(assert (=> b!4971591 d!1600784))

(assert (=> b!4971387 d!1600738))

(assert (=> b!4971543 d!1600858))

(declare-fun b!4972185 () Bool)

(declare-fun e!3107629 () Int)

(declare-fun e!3107625 () Int)

(assert (=> b!4972185 (= e!3107629 e!3107625)))

(declare-fun call!346772 () Int)

(declare-fun c!848440 () Bool)

(assert (=> b!4972185 (= c!848440 (>= (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)) call!346772))))

(declare-fun b!4972186 () Bool)

(declare-fun e!3107626 () List!57581)

(declare-fun e!3107627 () List!57581)

(assert (=> b!4972186 (= e!3107626 e!3107627)))

(declare-fun c!848441 () Bool)

(assert (=> b!4972186 (= c!848441 (<= (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)) 0))))

(declare-fun b!4972187 () Bool)

(assert (=> b!4972187 (= e!3107627 (drop!2353 (t!369111 (list!18377 totalInput!464)) (- (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)) 1)))))

(declare-fun b!4972188 () Bool)

(assert (=> b!4972188 (= e!3107626 Nil!57457)))

(declare-fun b!4972189 () Bool)

(assert (=> b!4972189 (= e!3107625 (- call!346772 (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978))))))

(declare-fun d!1600952 () Bool)

(declare-fun e!3107628 () Bool)

(assert (=> d!1600952 e!3107628))

(declare-fun res!2122465 () Bool)

(assert (=> d!1600952 (=> (not res!2122465) (not e!3107628))))

(declare-fun lt!2053414 () List!57581)

(assert (=> d!1600952 (= res!2122465 (set.subset (content!10192 lt!2053414) (content!10192 (list!18377 totalInput!464))))))

(assert (=> d!1600952 (= lt!2053414 e!3107626)))

(declare-fun c!848442 () Bool)

(assert (=> d!1600952 (= c!848442 (is-Nil!57457 (list!18377 totalInput!464)))))

(assert (=> d!1600952 (= (drop!2353 (list!18377 totalInput!464) (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978))) lt!2053414)))

(declare-fun b!4972190 () Bool)

(assert (=> b!4972190 (= e!3107628 (= (size!38088 lt!2053414) e!3107629))))

(declare-fun c!848439 () Bool)

(assert (=> b!4972190 (= c!848439 (<= (- (size!38088 (list!18377 totalInput!464)) (size!38088 lt!2052978)) 0))))

(declare-fun bm!346767 () Bool)

(assert (=> bm!346767 (= call!346772 (size!38088 (list!18377 totalInput!464)))))

(declare-fun b!4972191 () Bool)

(assert (=> b!4972191 (= e!3107629 call!346772)))

(declare-fun b!4972192 () Bool)

(assert (=> b!4972192 (= e!3107627 (list!18377 totalInput!464))))

(declare-fun b!4972193 () Bool)

(assert (=> b!4972193 (= e!3107625 0)))

(assert (= (and d!1600952 c!848442) b!4972188))

(assert (= (and d!1600952 (not c!848442)) b!4972186))

(assert (= (and b!4972186 c!848441) b!4972192))

(assert (= (and b!4972186 (not c!848441)) b!4972187))

(assert (= (and d!1600952 res!2122465) b!4972190))

(assert (= (and b!4972190 c!848439) b!4972191))

(assert (= (and b!4972190 (not c!848439)) b!4972185))

(assert (= (and b!4972185 c!848440) b!4972193))

(assert (= (and b!4972185 (not c!848440)) b!4972189))

(assert (= (or b!4972191 b!4972185 b!4972189) bm!346767))

(declare-fun m!6000622 () Bool)

(assert (=> b!4972187 m!6000622))

(declare-fun m!6000624 () Bool)

(assert (=> d!1600952 m!6000624))

(assert (=> d!1600952 m!5999666))

(declare-fun m!6000626 () Bool)

(assert (=> d!1600952 m!6000626))

(declare-fun m!6000628 () Bool)

(assert (=> b!4972190 m!6000628))

(assert (=> bm!346767 m!5999666))

(assert (=> bm!346767 m!5999864))

(assert (=> d!1600712 d!1600952))

(assert (=> d!1600712 d!1600878))

(assert (=> d!1600712 d!1600792))

(assert (=> b!4971525 d!1600850))

(assert (=> b!4971525 d!1600856))

(assert (=> b!4971525 d!1600854))

(assert (=> b!4971525 d!1600716))

(assert (=> d!1600700 d!1600916))

(declare-fun d!1600954 () Bool)

(assert (=> d!1600954 (= (isDefined!11370 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342))) (not (isEmpty!30961 (maxPrefixOneRule!3633 thiss!15247 (h!63906 rulesArg!259) (list!18377 input!1342)))))))

(declare-fun bs!1183602 () Bool)

(assert (= bs!1183602 d!1600954))

(assert (=> bs!1183602 m!5999816))

(declare-fun m!6000630 () Bool)

(assert (=> bs!1183602 m!6000630))

(assert (=> d!1600700 d!1600954))

(declare-fun d!1600956 () Bool)

(declare-fun lt!2053420 () Bool)

(assert (=> d!1600956 (= lt!2053420 (isEmpty!30960 (list!18377 (_1!34406 lt!2053100))))))

(assert (=> d!1600956 (= lt!2053420 (isEmpty!30967 (c!848311 (_1!34406 lt!2053100))))))

(assert (=> d!1600956 (= (isEmpty!30959 (_1!34406 lt!2053100)) lt!2053420)))

(declare-fun bs!1183604 () Bool)

(assert (= bs!1183604 d!1600956))

(assert (=> bs!1183604 m!5999838))

(assert (=> bs!1183604 m!5999838))

(declare-fun m!6000640 () Bool)

(assert (=> bs!1183604 m!6000640))

(declare-fun m!6000642 () Bool)

(assert (=> bs!1183604 m!6000642))

(assert (=> d!1600700 d!1600956))

(assert (=> d!1600700 d!1600716))

(assert (=> d!1600700 d!1600848))

(declare-fun d!1600960 () Bool)

(declare-fun lt!2053423 () tuple2!62206)

(assert (=> d!1600960 (= (tuple2!62205 (list!18377 (_1!34406 lt!2053423)) (list!18377 (_2!34406 lt!2053423))) (findLongestMatch!1701 (regex!8397 (h!63906 rulesArg!259)) (list!18377 input!1342)))))

(declare-fun choose!36706 (Regex!13630 BalanceConc!29728 BalanceConc!29728) tuple2!62206)

(assert (=> d!1600960 (= lt!2053423 (choose!36706 (regex!8397 (h!63906 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1600960 (validRegex!5973 (regex!8397 (h!63906 rulesArg!259)))))

(assert (=> d!1600960 (= (findLongestMatchWithZipperSequenceV2!168 (regex!8397 (h!63906 rulesArg!259)) input!1342 totalInput!464) lt!2053423)))

(declare-fun bs!1183605 () Bool)

(assert (= bs!1183605 d!1600960))

(declare-fun m!6000644 () Bool)

(assert (=> bs!1183605 m!6000644))

(assert (=> bs!1183605 m!5999670))

(declare-fun m!6000646 () Bool)

(assert (=> bs!1183605 m!6000646))

(assert (=> bs!1183605 m!5999670))

(assert (=> bs!1183605 m!6000328))

(declare-fun m!6000648 () Bool)

(assert (=> bs!1183605 m!6000648))

(assert (=> bs!1183605 m!6000166))

(assert (=> d!1600700 d!1600960))

(assert (=> d!1600700 d!1600854))

(declare-fun d!1600962 () Bool)

(assert (=> d!1600962 (= (isEmpty!30962 lt!2052981) (not (is-Some!14456 lt!2052981)))))

(assert (=> d!1600730 d!1600962))

(declare-fun d!1600964 () Bool)

(declare-fun res!2122466 () Bool)

(declare-fun e!3107630 () Bool)

(assert (=> d!1600964 (=> (not res!2122466) (not e!3107630))))

(assert (=> d!1600964 (= res!2122466 (= (csize!30528 (c!848311 totalInput!464)) (+ (size!38092 (left!41914 (c!848311 totalInput!464))) (size!38092 (right!42244 (c!848311 totalInput!464))))))))

(assert (=> d!1600964 (= (inv!75110 (c!848311 totalInput!464)) e!3107630)))

(declare-fun b!4972194 () Bool)

(declare-fun res!2122467 () Bool)

(assert (=> b!4972194 (=> (not res!2122467) (not e!3107630))))

(assert (=> b!4972194 (= res!2122467 (and (not (= (left!41914 (c!848311 totalInput!464)) Empty!15149)) (not (= (right!42244 (c!848311 totalInput!464)) Empty!15149))))))

(declare-fun b!4972195 () Bool)

(declare-fun res!2122468 () Bool)

(assert (=> b!4972195 (=> (not res!2122468) (not e!3107630))))

(assert (=> b!4972195 (= res!2122468 (= (cheight!15360 (c!848311 totalInput!464)) (+ (max!0 (height!2017 (left!41914 (c!848311 totalInput!464))) (height!2017 (right!42244 (c!848311 totalInput!464)))) 1)))))

(declare-fun b!4972196 () Bool)

(assert (=> b!4972196 (= e!3107630 (<= 0 (cheight!15360 (c!848311 totalInput!464))))))

(assert (= (and d!1600964 res!2122466) b!4972194))

(assert (= (and b!4972194 res!2122467) b!4972195))

(assert (= (and b!4972195 res!2122468) b!4972196))

(declare-fun m!6000650 () Bool)

(assert (=> d!1600964 m!6000650))

(declare-fun m!6000652 () Bool)

(assert (=> d!1600964 m!6000652))

(assert (=> b!4972195 m!6000442))

(assert (=> b!4972195 m!6000444))

(assert (=> b!4972195 m!6000442))

(assert (=> b!4972195 m!6000444))

(declare-fun m!6000654 () Bool)

(assert (=> b!4972195 m!6000654))

(assert (=> b!4971597 d!1600964))

(declare-fun d!1600966 () Bool)

(assert (=> d!1600966 (= (isEmpty!30961 lt!2052976) (not (is-Some!14457 lt!2052976)))))

(assert (=> d!1600728 d!1600966))

(declare-fun b!4972198 () Bool)

(declare-fun e!3107631 () List!57581)

(declare-fun e!3107632 () List!57581)

(assert (=> b!4972198 (= e!3107631 e!3107632)))

(declare-fun c!848444 () Bool)

(assert (=> b!4972198 (= c!848444 (is-Leaf!25173 (c!848311 (_2!34401 lt!2052980))))))

(declare-fun b!4972200 () Bool)

(assert (=> b!4972200 (= e!3107632 (++!12536 (list!18379 (left!41914 (c!848311 (_2!34401 lt!2052980)))) (list!18379 (right!42244 (c!848311 (_2!34401 lt!2052980))))))))

(declare-fun d!1600968 () Bool)

(declare-fun c!848443 () Bool)

(assert (=> d!1600968 (= c!848443 (is-Empty!15149 (c!848311 (_2!34401 lt!2052980))))))

(assert (=> d!1600968 (= (list!18379 (c!848311 (_2!34401 lt!2052980))) e!3107631)))

(declare-fun b!4972197 () Bool)

(assert (=> b!4972197 (= e!3107631 Nil!57457)))

(declare-fun b!4972199 () Bool)

(assert (=> b!4972199 (= e!3107632 (list!18381 (xs!18475 (c!848311 (_2!34401 lt!2052980)))))))

(assert (= (and d!1600968 c!848443) b!4972197))

(assert (= (and d!1600968 (not c!848443)) b!4972198))

(assert (= (and b!4972198 c!848444) b!4972199))

(assert (= (and b!4972198 (not c!848444)) b!4972200))

(declare-fun m!6000656 () Bool)

(assert (=> b!4972200 m!6000656))

(declare-fun m!6000658 () Bool)

(assert (=> b!4972200 m!6000658))

(assert (=> b!4972200 m!6000656))

(assert (=> b!4972200 m!6000658))

(declare-fun m!6000660 () Bool)

(assert (=> b!4972200 m!6000660))

(declare-fun m!6000662 () Bool)

(assert (=> b!4972199 m!6000662))

(assert (=> d!1600690 d!1600968))

(assert (=> d!1600720 d!1600718))

(declare-fun d!1600970 () Bool)

(assert (=> d!1600970 (isPrefix!5248 lt!2052978 lt!2052978)))

(assert (=> d!1600970 true))

(declare-fun _$45!2288 () Unit!148415)

(assert (=> d!1600970 (= (choose!36702 lt!2052978 lt!2052978) _$45!2288)))

(declare-fun bs!1183606 () Bool)

(assert (= bs!1183606 d!1600970))

(assert (=> bs!1183606 m!5999662))

(assert (=> d!1600720 d!1600970))

(declare-fun b!4972205 () Bool)

(declare-fun e!3107635 () Bool)

(declare-fun tp!1394248 () Bool)

(assert (=> b!4972205 (= e!3107635 (and tp_is_empty!36341 tp!1394248))))

(assert (=> b!4971616 (= tp!1394173 e!3107635)))

(assert (= (and b!4971616 (is-Cons!57457 (innerList!15237 (xs!18475 (c!848311 input!1342))))) b!4972205))

(declare-fun b!4972208 () Bool)

(declare-fun b_free!132839 () Bool)

(declare-fun b_next!133629 () Bool)

(assert (=> b!4972208 (= b_free!132839 (not b_next!133629))))

(declare-fun t!369136 () Bool)

(declare-fun tb!261083 () Bool)

(assert (=> (and b!4972208 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369136) tb!261083))

(declare-fun result!326244 () Bool)

(assert (= result!326244 result!326222))

(assert (=> d!1600786 t!369136))

(declare-fun t!369138 () Bool)

(declare-fun tb!261085 () Bool)

(assert (=> (and b!4972208 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369138) tb!261085))

(declare-fun result!326246 () Bool)

(assert (= result!326246 result!326234))

(assert (=> d!1600826 t!369138))

(declare-fun t!369140 () Bool)

(declare-fun tb!261087 () Bool)

(assert (=> (and b!4972208 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259)))) t!369140) tb!261087))

(declare-fun result!326248 () Bool)

(assert (= result!326248 result!326238))

(assert (=> d!1600826 t!369140))

(assert (=> d!1600832 t!369138))

(declare-fun tp!1394252 () Bool)

(declare-fun b_and!348751 () Bool)

(assert (=> b!4972208 (= tp!1394252 (and (=> t!369136 result!326244) (=> t!369138 result!326246) (=> t!369140 result!326248) b_and!348751))))

(declare-fun b_free!132841 () Bool)

(declare-fun b_next!133631 () Bool)

(assert (=> b!4972208 (= b_free!132841 (not b_next!133631))))

(declare-fun t!369142 () Bool)

(declare-fun tb!261089 () Bool)

(assert (=> (and b!4972208 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toChars!11223 (transformation!8397 (rule!11653 (_1!34402 (get!19950 lt!2053145)))))) t!369142) tb!261089))

(declare-fun result!326250 () Bool)

(assert (= result!326250 result!326228))

(assert (=> d!1600824 t!369142))

(declare-fun tp!1394251 () Bool)

(declare-fun b_and!348753 () Bool)

(assert (=> b!4972208 (= tp!1394251 (and (=> t!369142 result!326250) b_and!348753))))

(declare-fun e!3107637 () Bool)

(assert (=> b!4972208 (= e!3107637 (and tp!1394252 tp!1394251))))

(declare-fun e!3107636 () Bool)

(declare-fun b!4972207 () Bool)

(declare-fun tp!1394250 () Bool)

(assert (=> b!4972207 (= e!3107636 (and tp!1394250 (inv!75101 (tag!9261 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (inv!75104 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) e!3107637))))

(declare-fun b!4972206 () Bool)

(declare-fun e!3107639 () Bool)

(declare-fun tp!1394249 () Bool)

(assert (=> b!4972206 (= e!3107639 (and e!3107636 tp!1394249))))

(assert (=> b!4971625 (= tp!1394182 e!3107639)))

(assert (= b!4972207 b!4972208))

(assert (= b!4972206 b!4972207))

(assert (= (and b!4971625 (is-Cons!57458 (t!369112 (t!369112 rulesArg!259)))) b!4972206))

(declare-fun m!6000664 () Bool)

(assert (=> b!4972207 m!6000664))

(declare-fun m!6000666 () Bool)

(assert (=> b!4972207 m!6000666))

(declare-fun b!4972209 () Bool)

(declare-fun e!3107640 () Bool)

(declare-fun tp!1394253 () Bool)

(assert (=> b!4972209 (= e!3107640 (and tp_is_empty!36341 tp!1394253))))

(assert (=> b!4971644 (= tp!1394203 e!3107640)))

(assert (= (and b!4971644 (is-Cons!57457 (innerList!15237 (xs!18475 (c!848311 totalInput!464))))) b!4972209))

(declare-fun b!4972213 () Bool)

(declare-fun e!3107641 () Bool)

(declare-fun tp!1394254 () Bool)

(declare-fun tp!1394258 () Bool)

(assert (=> b!4972213 (= e!3107641 (and tp!1394254 tp!1394258))))

(declare-fun b!4972212 () Bool)

(declare-fun tp!1394256 () Bool)

(assert (=> b!4972212 (= e!3107641 tp!1394256)))

(declare-fun b!4972211 () Bool)

(declare-fun tp!1394257 () Bool)

(declare-fun tp!1394255 () Bool)

(assert (=> b!4972211 (= e!3107641 (and tp!1394257 tp!1394255))))

(declare-fun b!4972210 () Bool)

(assert (=> b!4972210 (= e!3107641 tp_is_empty!36341)))

(assert (=> b!4971639 (= tp!1394199 e!3107641)))

(assert (= (and b!4971639 (is-ElementMatch!13630 (regOne!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972210))

(assert (= (and b!4971639 (is-Concat!22338 (regOne!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972211))

(assert (= (and b!4971639 (is-Star!13630 (regOne!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972212))

(assert (= (and b!4971639 (is-Union!13630 (regOne!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972213))

(declare-fun b!4972217 () Bool)

(declare-fun e!3107642 () Bool)

(declare-fun tp!1394259 () Bool)

(declare-fun tp!1394263 () Bool)

(assert (=> b!4972217 (= e!3107642 (and tp!1394259 tp!1394263))))

(declare-fun b!4972216 () Bool)

(declare-fun tp!1394261 () Bool)

(assert (=> b!4972216 (= e!3107642 tp!1394261)))

(declare-fun b!4972215 () Bool)

(declare-fun tp!1394262 () Bool)

(declare-fun tp!1394260 () Bool)

(assert (=> b!4972215 (= e!3107642 (and tp!1394262 tp!1394260))))

(declare-fun b!4972214 () Bool)

(assert (=> b!4972214 (= e!3107642 tp_is_empty!36341)))

(assert (=> b!4971639 (= tp!1394197 e!3107642)))

(assert (= (and b!4971639 (is-ElementMatch!13630 (regTwo!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972214))

(assert (= (and b!4971639 (is-Concat!22338 (regTwo!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972215))

(assert (= (and b!4971639 (is-Star!13630 (regTwo!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972216))

(assert (= (and b!4971639 (is-Union!13630 (regTwo!27772 (regex!8397 (h!63906 rulesArg!259))))) b!4972217))

(declare-fun b!4972221 () Bool)

(declare-fun e!3107643 () Bool)

(declare-fun tp!1394264 () Bool)

(declare-fun tp!1394268 () Bool)

(assert (=> b!4972221 (= e!3107643 (and tp!1394264 tp!1394268))))

(declare-fun b!4972220 () Bool)

(declare-fun tp!1394266 () Bool)

(assert (=> b!4972220 (= e!3107643 tp!1394266)))

(declare-fun b!4972219 () Bool)

(declare-fun tp!1394267 () Bool)

(declare-fun tp!1394265 () Bool)

(assert (=> b!4972219 (= e!3107643 (and tp!1394267 tp!1394265))))

(declare-fun b!4972218 () Bool)

(assert (=> b!4972218 (= e!3107643 tp_is_empty!36341)))

(assert (=> b!4971626 (= tp!1394183 e!3107643)))

(assert (= (and b!4971626 (is-ElementMatch!13630 (regex!8397 (h!63906 (t!369112 rulesArg!259))))) b!4972218))

(assert (= (and b!4971626 (is-Concat!22338 (regex!8397 (h!63906 (t!369112 rulesArg!259))))) b!4972219))

(assert (= (and b!4971626 (is-Star!13630 (regex!8397 (h!63906 (t!369112 rulesArg!259))))) b!4972220))

(assert (= (and b!4971626 (is-Union!13630 (regex!8397 (h!63906 (t!369112 rulesArg!259))))) b!4972221))

(declare-fun b!4972225 () Bool)

(declare-fun e!3107644 () Bool)

(declare-fun tp!1394269 () Bool)

(declare-fun tp!1394273 () Bool)

(assert (=> b!4972225 (= e!3107644 (and tp!1394269 tp!1394273))))

(declare-fun b!4972224 () Bool)

(declare-fun tp!1394271 () Bool)

(assert (=> b!4972224 (= e!3107644 tp!1394271)))

(declare-fun b!4972223 () Bool)

(declare-fun tp!1394272 () Bool)

(declare-fun tp!1394270 () Bool)

(assert (=> b!4972223 (= e!3107644 (and tp!1394272 tp!1394270))))

(declare-fun b!4972222 () Bool)

(assert (=> b!4972222 (= e!3107644 tp_is_empty!36341)))

(assert (=> b!4971640 (= tp!1394198 e!3107644)))

(assert (= (and b!4971640 (is-ElementMatch!13630 (reg!13959 (regex!8397 (h!63906 rulesArg!259))))) b!4972222))

(assert (= (and b!4971640 (is-Concat!22338 (reg!13959 (regex!8397 (h!63906 rulesArg!259))))) b!4972223))

(assert (= (and b!4971640 (is-Star!13630 (reg!13959 (regex!8397 (h!63906 rulesArg!259))))) b!4972224))

(assert (= (and b!4971640 (is-Union!13630 (reg!13959 (regex!8397 (h!63906 rulesArg!259))))) b!4972225))

(declare-fun b!4972229 () Bool)

(declare-fun e!3107645 () Bool)

(declare-fun tp!1394274 () Bool)

(declare-fun tp!1394278 () Bool)

(assert (=> b!4972229 (= e!3107645 (and tp!1394274 tp!1394278))))

(declare-fun b!4972228 () Bool)

(declare-fun tp!1394276 () Bool)

(assert (=> b!4972228 (= e!3107645 tp!1394276)))

(declare-fun b!4972227 () Bool)

(declare-fun tp!1394277 () Bool)

(declare-fun tp!1394275 () Bool)

(assert (=> b!4972227 (= e!3107645 (and tp!1394277 tp!1394275))))

(declare-fun b!4972226 () Bool)

(assert (=> b!4972226 (= e!3107645 tp_is_empty!36341)))

(assert (=> b!4971641 (= tp!1394196 e!3107645)))

(assert (= (and b!4971641 (is-ElementMatch!13630 (regOne!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972226))

(assert (= (and b!4971641 (is-Concat!22338 (regOne!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972227))

(assert (= (and b!4971641 (is-Star!13630 (regOne!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972228))

(assert (= (and b!4971641 (is-Union!13630 (regOne!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972229))

(declare-fun b!4972233 () Bool)

(declare-fun e!3107646 () Bool)

(declare-fun tp!1394279 () Bool)

(declare-fun tp!1394283 () Bool)

(assert (=> b!4972233 (= e!3107646 (and tp!1394279 tp!1394283))))

(declare-fun b!4972232 () Bool)

(declare-fun tp!1394281 () Bool)

(assert (=> b!4972232 (= e!3107646 tp!1394281)))

(declare-fun b!4972231 () Bool)

(declare-fun tp!1394282 () Bool)

(declare-fun tp!1394280 () Bool)

(assert (=> b!4972231 (= e!3107646 (and tp!1394282 tp!1394280))))

(declare-fun b!4972230 () Bool)

(assert (=> b!4972230 (= e!3107646 tp_is_empty!36341)))

(assert (=> b!4971641 (= tp!1394200 e!3107646)))

(assert (= (and b!4971641 (is-ElementMatch!13630 (regTwo!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972230))

(assert (= (and b!4971641 (is-Concat!22338 (regTwo!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972231))

(assert (= (and b!4971641 (is-Star!13630 (regTwo!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972232))

(assert (= (and b!4971641 (is-Union!13630 (regTwo!27773 (regex!8397 (h!63906 rulesArg!259))))) b!4972233))

(declare-fun e!3107648 () Bool)

(declare-fun tp!1394284 () Bool)

(declare-fun tp!1394285 () Bool)

(declare-fun b!4972234 () Bool)

(assert (=> b!4972234 (= e!3107648 (and (inv!75105 (left!41914 (left!41914 (c!848311 input!1342)))) tp!1394284 (inv!75105 (right!42244 (left!41914 (c!848311 input!1342)))) tp!1394285))))

(declare-fun b!4972236 () Bool)

(declare-fun e!3107647 () Bool)

(declare-fun tp!1394286 () Bool)

(assert (=> b!4972236 (= e!3107647 tp!1394286)))

(declare-fun b!4972235 () Bool)

(assert (=> b!4972235 (= e!3107648 (and (inv!75112 (xs!18475 (left!41914 (c!848311 input!1342)))) e!3107647))))

(assert (=> b!4971614 (= tp!1394171 (and (inv!75105 (left!41914 (c!848311 input!1342))) e!3107648))))

(assert (= (and b!4971614 (is-Node!15149 (left!41914 (c!848311 input!1342)))) b!4972234))

(assert (= b!4972235 b!4972236))

(assert (= (and b!4971614 (is-Leaf!25173 (left!41914 (c!848311 input!1342)))) b!4972235))

(declare-fun m!6000668 () Bool)

(assert (=> b!4972234 m!6000668))

(declare-fun m!6000670 () Bool)

(assert (=> b!4972234 m!6000670))

(declare-fun m!6000672 () Bool)

(assert (=> b!4972235 m!6000672))

(assert (=> b!4971614 m!5999926))

(declare-fun b!4972237 () Bool)

(declare-fun e!3107650 () Bool)

(declare-fun tp!1394287 () Bool)

(declare-fun tp!1394288 () Bool)

(assert (=> b!4972237 (= e!3107650 (and (inv!75105 (left!41914 (right!42244 (c!848311 input!1342)))) tp!1394287 (inv!75105 (right!42244 (right!42244 (c!848311 input!1342)))) tp!1394288))))

(declare-fun b!4972239 () Bool)

(declare-fun e!3107649 () Bool)

(declare-fun tp!1394289 () Bool)

(assert (=> b!4972239 (= e!3107649 tp!1394289)))

(declare-fun b!4972238 () Bool)

(assert (=> b!4972238 (= e!3107650 (and (inv!75112 (xs!18475 (right!42244 (c!848311 input!1342)))) e!3107649))))

(assert (=> b!4971614 (= tp!1394172 (and (inv!75105 (right!42244 (c!848311 input!1342))) e!3107650))))

(assert (= (and b!4971614 (is-Node!15149 (right!42244 (c!848311 input!1342)))) b!4972237))

(assert (= b!4972238 b!4972239))

(assert (= (and b!4971614 (is-Leaf!25173 (right!42244 (c!848311 input!1342)))) b!4972238))

(declare-fun m!6000674 () Bool)

(assert (=> b!4972237 m!6000674))

(declare-fun m!6000676 () Bool)

(assert (=> b!4972237 m!6000676))

(declare-fun m!6000678 () Bool)

(assert (=> b!4972238 m!6000678))

(assert (=> b!4971614 m!5999928))

(declare-fun tp!1394290 () Bool)

(declare-fun b!4972240 () Bool)

(declare-fun e!3107652 () Bool)

(declare-fun tp!1394291 () Bool)

(assert (=> b!4972240 (= e!3107652 (and (inv!75105 (left!41914 (left!41914 (c!848311 totalInput!464)))) tp!1394290 (inv!75105 (right!42244 (left!41914 (c!848311 totalInput!464)))) tp!1394291))))

(declare-fun b!4972242 () Bool)

(declare-fun e!3107651 () Bool)

(declare-fun tp!1394292 () Bool)

(assert (=> b!4972242 (= e!3107651 tp!1394292)))

(declare-fun b!4972241 () Bool)

(assert (=> b!4972241 (= e!3107652 (and (inv!75112 (xs!18475 (left!41914 (c!848311 totalInput!464)))) e!3107651))))

(assert (=> b!4971642 (= tp!1394201 (and (inv!75105 (left!41914 (c!848311 totalInput!464))) e!3107652))))

(assert (= (and b!4971642 (is-Node!15149 (left!41914 (c!848311 totalInput!464)))) b!4972240))

(assert (= b!4972241 b!4972242))

(assert (= (and b!4971642 (is-Leaf!25173 (left!41914 (c!848311 totalInput!464)))) b!4972241))

(declare-fun m!6000680 () Bool)

(assert (=> b!4972240 m!6000680))

(declare-fun m!6000682 () Bool)

(assert (=> b!4972240 m!6000682))

(declare-fun m!6000684 () Bool)

(assert (=> b!4972241 m!6000684))

(assert (=> b!4971642 m!5999936))

(declare-fun tp!1394293 () Bool)

(declare-fun tp!1394294 () Bool)

(declare-fun b!4972243 () Bool)

(declare-fun e!3107654 () Bool)

(assert (=> b!4972243 (= e!3107654 (and (inv!75105 (left!41914 (right!42244 (c!848311 totalInput!464)))) tp!1394293 (inv!75105 (right!42244 (right!42244 (c!848311 totalInput!464)))) tp!1394294))))

(declare-fun b!4972245 () Bool)

(declare-fun e!3107653 () Bool)

(declare-fun tp!1394295 () Bool)

(assert (=> b!4972245 (= e!3107653 tp!1394295)))

(declare-fun b!4972244 () Bool)

(assert (=> b!4972244 (= e!3107654 (and (inv!75112 (xs!18475 (right!42244 (c!848311 totalInput!464)))) e!3107653))))

(assert (=> b!4971642 (= tp!1394202 (and (inv!75105 (right!42244 (c!848311 totalInput!464))) e!3107654))))

(assert (= (and b!4971642 (is-Node!15149 (right!42244 (c!848311 totalInput!464)))) b!4972243))

(assert (= b!4972244 b!4972245))

(assert (= (and b!4971642 (is-Leaf!25173 (right!42244 (c!848311 totalInput!464)))) b!4972244))

(declare-fun m!6000686 () Bool)

(assert (=> b!4972243 m!6000686))

(declare-fun m!6000688 () Bool)

(assert (=> b!4972243 m!6000688))

(declare-fun m!6000690 () Bool)

(assert (=> b!4972244 m!6000690))

(assert (=> b!4971642 m!5999938))

(declare-fun b_lambda!197229 () Bool)

(assert (= b_lambda!197219 (or (and b!4971386 b_free!132823) (and b!4971627 b_free!132831 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) (and b!4972208 b_free!132839 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) b_lambda!197229)))

(declare-fun b_lambda!197231 () Bool)

(assert (= b_lambda!197225 (or b!4971528 b_lambda!197231)))

(declare-fun bs!1183607 () Bool)

(declare-fun d!1600972 () Bool)

(assert (= bs!1183607 (and d!1600972 b!4971528)))

(assert (=> bs!1183607 (= (dynLambda!23202 lambda!247457 (_1!34406 lt!2053100)) (= (list!18377 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100)))) (list!18377 (_1!34406 lt!2053100))))))

(declare-fun b_lambda!197241 () Bool)

(assert (=> (not b_lambda!197241) (not bs!1183607)))

(declare-fun t!369144 () Bool)

(declare-fun tb!261091 () Bool)

(assert (=> (and b!4971386 (= (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369144) tb!261091))

(declare-fun b!4972246 () Bool)

(declare-fun tp!1394296 () Bool)

(declare-fun e!3107655 () Bool)

(assert (=> b!4972246 (= e!3107655 (and (inv!75105 (c!848311 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100))))) tp!1394296))))

(declare-fun result!326252 () Bool)

(assert (=> tb!261091 (= result!326252 (and (inv!75106 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (_1!34406 lt!2053100)))) e!3107655))))

(assert (= tb!261091 b!4972246))

(declare-fun m!6000692 () Bool)

(assert (=> b!4972246 m!6000692))

(declare-fun m!6000694 () Bool)

(assert (=> tb!261091 m!6000694))

(assert (=> bs!1183607 t!369144))

(declare-fun b_and!348755 () Bool)

(assert (= b_and!348735 (and (=> t!369144 result!326252) b_and!348755)))

(declare-fun t!369146 () Bool)

(declare-fun tb!261093 () Bool)

(assert (=> (and b!4971627 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369146) tb!261093))

(declare-fun result!326254 () Bool)

(assert (= result!326254 result!326252))

(assert (=> bs!1183607 t!369146))

(declare-fun b_and!348757 () Bool)

(assert (= b_and!348737 (and (=> t!369146 result!326254) b_and!348757)))

(declare-fun t!369148 () Bool)

(declare-fun tb!261095 () Bool)

(assert (=> (and b!4972208 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369148) tb!261095))

(declare-fun result!326256 () Bool)

(assert (= result!326256 result!326252))

(assert (=> bs!1183607 t!369148))

(declare-fun b_and!348759 () Bool)

(assert (= b_and!348753 (and (=> t!369148 result!326256) b_and!348759)))

(declare-fun b_lambda!197243 () Bool)

(assert (=> (not b_lambda!197243) (not bs!1183607)))

(assert (=> bs!1183607 t!369125))

(declare-fun b_and!348761 () Bool)

(assert (= b_and!348747 (and (=> t!369125 result!326234) b_and!348761)))

(assert (=> bs!1183607 t!369127))

(declare-fun b_and!348763 () Bool)

(assert (= b_and!348749 (and (=> t!369127 result!326236) b_and!348763)))

(assert (=> bs!1183607 t!369138))

(declare-fun b_and!348765 () Bool)

(assert (= b_and!348751 (and (=> t!369138 result!326246) b_and!348765)))

(assert (=> bs!1183607 m!6000274))

(declare-fun m!6000696 () Bool)

(assert (=> bs!1183607 m!6000696))

(assert (=> bs!1183607 m!6000696))

(declare-fun m!6000698 () Bool)

(assert (=> bs!1183607 m!6000698))

(assert (=> bs!1183607 m!6000274))

(assert (=> bs!1183607 m!5999838))

(assert (=> d!1600844 d!1600972))

(declare-fun b_lambda!197233 () Bool)

(assert (= b_lambda!197223 (or b!4971528 b_lambda!197233)))

(declare-fun bs!1183608 () Bool)

(declare-fun d!1600974 () Bool)

(assert (= bs!1183608 (and d!1600974 b!4971528)))

(assert (=> bs!1183608 (= (dynLambda!23202 lambda!247457 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))) (= (list!18377 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))) (list!18377 (seqFromList!6040 (list!18377 (_1!34406 lt!2053100))))))))

(declare-fun b_lambda!197245 () Bool)

(assert (=> (not b_lambda!197245) (not bs!1183608)))

(declare-fun t!369150 () Bool)

(declare-fun tb!261097 () Bool)

(assert (=> (and b!4971386 (= (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369150) tb!261097))

(declare-fun e!3107656 () Bool)

(declare-fun b!4972247 () Bool)

(declare-fun tp!1394297 () Bool)

(assert (=> b!4972247 (= e!3107656 (and (inv!75105 (c!848311 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100))))))) tp!1394297))))

(declare-fun result!326258 () Bool)

(assert (=> tb!261097 (= result!326258 (and (inv!75106 (dynLambda!23200 (toChars!11223 (transformation!8397 (h!63906 rulesArg!259))) (dynLambda!23199 (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))) (seqFromList!6040 (list!18377 (_1!34406 lt!2053100)))))) e!3107656))))

(assert (= tb!261097 b!4972247))

(declare-fun m!6000700 () Bool)

(assert (=> b!4972247 m!6000700))

(declare-fun m!6000702 () Bool)

(assert (=> tb!261097 m!6000702))

(assert (=> bs!1183608 t!369150))

(declare-fun b_and!348767 () Bool)

(assert (= b_and!348755 (and (=> t!369150 result!326258) b_and!348767)))

(declare-fun t!369152 () Bool)

(declare-fun tb!261099 () Bool)

(assert (=> (and b!4971627 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369152) tb!261099))

(declare-fun result!326260 () Bool)

(assert (= result!326260 result!326258))

(assert (=> bs!1183608 t!369152))

(declare-fun b_and!348769 () Bool)

(assert (= b_and!348757 (and (=> t!369152 result!326260) b_and!348769)))

(declare-fun t!369154 () Bool)

(declare-fun tb!261101 () Bool)

(assert (=> (and b!4972208 (= (toChars!11223 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toChars!11223 (transformation!8397 (h!63906 rulesArg!259)))) t!369154) tb!261101))

(declare-fun result!326262 () Bool)

(assert (= result!326262 result!326258))

(assert (=> bs!1183608 t!369154))

(declare-fun b_and!348771 () Bool)

(assert (= b_and!348759 (and (=> t!369154 result!326262) b_and!348771)))

(declare-fun b_lambda!197247 () Bool)

(assert (=> (not b_lambda!197247) (not bs!1183608)))

(assert (=> bs!1183608 t!369129))

(declare-fun b_and!348773 () Bool)

(assert (= b_and!348761 (and (=> t!369129 result!326238) b_and!348773)))

(assert (=> bs!1183608 t!369131))

(declare-fun b_and!348775 () Bool)

(assert (= b_and!348763 (and (=> t!369131 result!326240) b_and!348775)))

(assert (=> bs!1183608 t!369140))

(declare-fun b_and!348777 () Bool)

(assert (= b_and!348765 (and (=> t!369140 result!326248) b_and!348777)))

(assert (=> bs!1183608 m!6000272))

(declare-fun m!6000704 () Bool)

(assert (=> bs!1183608 m!6000704))

(assert (=> bs!1183608 m!6000704))

(declare-fun m!6000706 () Bool)

(assert (=> bs!1183608 m!6000706))

(assert (=> bs!1183608 m!5999834))

(assert (=> bs!1183608 m!6000272))

(assert (=> bs!1183608 m!5999834))

(assert (=> bs!1183608 m!6000270))

(assert (=> d!1600836 d!1600974))

(declare-fun b_lambda!197235 () Bool)

(assert (= b_lambda!197217 (or (and b!4971386 b_free!132823) (and b!4971627 b_free!132831 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) (and b!4972208 b_free!132839 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) b_lambda!197235)))

(declare-fun b_lambda!197237 () Bool)

(assert (= b_lambda!197221 (or (and b!4971386 b_free!132823) (and b!4971627 b_free!132831 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 rulesArg!259)))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) (and b!4972208 b_free!132839 (= (toValue!11364 (transformation!8397 (h!63906 (t!369112 (t!369112 rulesArg!259))))) (toValue!11364 (transformation!8397 (h!63906 rulesArg!259))))) b_lambda!197237)))

(declare-fun b_lambda!197239 () Bool)

(assert (= b_lambda!197227 (or d!1600706 b_lambda!197239)))

(declare-fun bs!1183609 () Bool)

(declare-fun d!1600976 () Bool)

(assert (= bs!1183609 (and d!1600976 d!1600706)))

(assert (=> bs!1183609 (= (dynLambda!23203 lambda!247460 (h!63906 rulesArg!259)) (ruleValid!3806 thiss!15247 (h!63906 rulesArg!259)))))

(assert (=> bs!1183609 m!5999860))

(assert (=> b!4972043 d!1600976))

(push 1)

(assert (not d!1600794))

(assert (not b!4972212))

(assert (not b!4972048))

(assert (not b_next!133629))

(assert (not b!4972234))

(assert (not b!4971847))

(assert (not b!4972007))

(assert (not b!4972055))

(assert (not b!4971992))

(assert (not b!4972081))

(assert (not b!4972037))

(assert (not d!1600844))

(assert (not b_next!133623))

(assert (not b!4971642))

(assert (not d!1600830))

(assert (not b!4972030))

(assert (not b_lambda!197213))

(assert (not b!4972220))

(assert (not b!4971811))

(assert (not d!1600960))

(assert (not b!4971981))

(assert (not b!4971945))

(assert (not bm!346754))

(assert (not b!4971974))

(assert (not b!4972068))

(assert b_and!348771)

(assert (not b!4972200))

(assert (not b!4971915))

(assert (not b!4971854))

(assert (not d!1600860))

(assert (not b!4972242))

(assert (not b!4972063))

(assert (not b!4971813))

(assert (not b!4972083))

(assert (not b!4972209))

(assert (not d!1600866))

(assert (not b!4971979))

(assert (not b!4972091))

(assert (not d!1600876))

(assert (not b!4972071))

(assert (not b!4972232))

(assert (not b!4972236))

(assert (not bm!346755))

(assert (not b!4971791))

(assert (not bm!346767))

(assert (not b!4972050))

(assert (not d!1600864))

(assert (not b_next!133613))

(assert (not b!4971812))

(assert (not b!4972225))

(assert (not d!1600922))

(assert (not d!1600812))

(assert (not b!4971901))

(assert (not b!4972206))

(assert (not b!4972031))

(assert (not b!4971890))

(assert (not b!4972006))

(assert (not b!4972029))

(assert (not b!4972064))

(assert (not b!4972190))

(assert (not b!4971908))

(assert (not b!4971807))

(assert (not b!4972056))

(assert (not b!4972247))

(assert (not b_lambda!197239))

(assert (not d!1600952))

(assert (not b!4972217))

(assert (not b!4972078))

(assert (not b!4972213))

(assert (not b!4972065))

(assert (not b!4972004))

(assert (not b!4971798))

(assert (not b!4972008))

(assert (not b!4971809))

(assert (not b!4972187))

(assert (not b_lambda!197237))

(assert (not b!4971778))

(assert (not b!4971895))

(assert (not b!4972045))

(assert (not d!1600854))

(assert (not d!1600954))

(assert (not bm!346757))

(assert (not b!4971858))

(assert b_and!348767)

(assert (not b!4971971))

(assert (not b!4971803))

(assert (not d!1600920))

(assert (not b!4972211))

(assert (not b!4971796))

(assert (not bm!346759))

(assert (not b!4971912))

(assert (not b!4971916))

(assert (not d!1600916))

(assert (not bs!1183608))

(assert (not bm!346761))

(assert (not b!4972014))

(assert (not b!4972237))

(assert (not b_lambda!197235))

(assert (not d!1600790))

(assert (not b!4972051))

(assert (not bs!1183607))

(assert (not b!4971937))

(assert (not d!1600836))

(assert (not b!4972239))

(assert (not b!4972216))

(assert (not b!4971800))

(assert (not b!4972205))

(assert (not b_lambda!197247))

(assert (not b!4971614))

(assert (not b!4972010))

(assert (not tb!261097))

(assert (not b_lambda!197233))

(assert (not d!1600808))

(assert (not b!4972033))

(assert (not bs!1183609))

(assert (not b_lambda!197243))

(assert (not b!4971814))

(assert (not b!4972074))

(assert (not b!4972199))

(assert (not b!4972223))

(assert (not d!1600826))

(assert (not b_lambda!197215))

(assert (not d!1600848))

(assert (not b!4972240))

(assert (not b_lambda!197241))

(assert (not b!4972155))

(assert (not b!4972046))

(assert (not b!4972235))

(assert (not b!4972233))

(assert (not b!4972219))

(assert (not b!4971891))

(assert (not b_next!133621))

(assert (not b!4972227))

(assert (not b!4971970))

(assert (not b!4972057))

(assert (not b!4972032))

(assert (not b!4972067))

(assert (not b!4972231))

(assert (not b!4971810))

(assert (not b!4972084))

(assert b_and!348769)

(assert (not d!1600842))

(assert (not bm!346753))

(assert (not b!4972086))

(assert (not b!4972243))

(assert (not b!4972044))

(assert (not b!4972195))

(assert (not b!4972049))

(assert (not b!4972016))

(assert (not d!1600896))

(assert (not b!4971904))

(assert (not d!1600822))

(assert (not b!4972075))

(assert (not b!4971993))

(assert (not d!1600852))

(assert (not b!4971850))

(assert (not d!1600964))

(assert (not b!4971966))

(assert (not d!1600890))

(assert (not b!4972238))

(assert (not b!4972245))

(assert (not d!1600828))

(assert (not b!4971801))

(assert (not b!4972207))

(assert (not b!4972224))

(assert (not b!4971917))

(assert b_and!348773)

(assert (not b!4972038))

(assert (not b!4972229))

(assert (not d!1600872))

(assert (not tb!261075))

(assert (not bm!346730))

(assert (not b!4972053))

(assert (not d!1600834))

(assert (not b!4971968))

(assert (not b!4972215))

(assert (not b!4972036))

(assert (not b!4972165))

(assert b_and!348777)

(assert (not d!1600804))

(assert (not b!4971977))

(assert (not d!1600946))

(assert (not b!4971806))

(assert (not bm!346729))

(assert (not b!4971853))

(assert (not b!4971906))

(assert b_and!348775)

(assert (not b!4971972))

(assert (not b!4971785))

(assert (not d!1600818))

(assert (not d!1600788))

(assert (not d!1600888))

(assert (not b!4972156))

(assert (not bm!346756))

(assert (not b!4972072))

(assert (not tb!261079))

(assert (not b!4972166))

(assert (not bm!346751))

(assert (not b!4971965))

(assert (not tb!261091))

(assert (not b!4972244))

(assert (not b!4971927))

(assert (not b!4971920))

(assert (not b_lambda!197245))

(assert (not d!1600870))

(assert (not tb!261067))

(assert (not b!4972052))

(assert (not b!4972061))

(assert (not d!1600796))

(assert (not d!1600824))

(assert (not bm!346733))

(assert (not d!1600800))

(assert (not b!4971802))

(assert (not d!1600820))

(assert (not bm!346758))

(assert (not b!4972009))

(assert (not tb!261071))

(assert (not bm!346760))

(assert (not b_next!133615))

(assert (not b!4972221))

(assert (not d!1600802))

(assert (not b!4972228))

(assert (not b_lambda!197231))

(assert (not b!4971909))

(assert (not d!1600806))

(assert (not b!4971975))

(assert (not b!4971978))

(assert (not b!4971804))

(assert (not b!4971940))

(assert (not b!4972241))

(assert (not b!4972080))

(assert (not b!4971799))

(assert (not d!1600956))

(assert (not d!1600858))

(assert (not b_lambda!197229))

(assert (not b!4972060))

(assert (not d!1600810))

(assert (not bm!346752))

(assert (not b!4972003))

(assert (not b!4971969))

(assert (not b!4972066))

(assert tp_is_empty!36341)

(assert (not d!1600918))

(assert (not d!1600798))

(assert (not b!4972034))

(assert (not b!4972077))

(assert (not bm!346750))

(assert (not d!1600840))

(assert (not b!4972058))

(assert (not b_next!133631))

(assert (not b!4972246))

(assert (not b!4971855))

(assert (not b!4972059))

(assert (not b!4971967))

(assert (not d!1600970))

(assert (not b!4972054))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133629))

(assert (not b_next!133623))

(assert b_and!348771)

(assert (not b_next!133613))

(assert b_and!348767)

(assert (not b_next!133621))

(assert b_and!348769)

(assert b_and!348773)

(assert b_and!348777)

(assert b_and!348775)

(assert (not b_next!133615))

(assert (not b_next!133631))

(check-sat)

(pop 1)

