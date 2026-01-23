; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522274 () Bool)

(assert start!522274)

(declare-fun b!4954908 () Bool)

(declare-fun b_free!132159 () Bool)

(declare-fun b_next!132949 () Bool)

(assert (=> b!4954908 (= b_free!132159 (not b_next!132949))))

(declare-fun tp!1389283 () Bool)

(declare-fun b_and!347011 () Bool)

(assert (=> b!4954908 (= tp!1389283 b_and!347011)))

(declare-fun b_free!132161 () Bool)

(declare-fun b_next!132951 () Bool)

(assert (=> b!4954908 (= b_free!132161 (not b_next!132951))))

(declare-fun tp!1389287 () Bool)

(declare-fun b_and!347013 () Bool)

(assert (=> b!4954908 (= tp!1389287 b_and!347013)))

(declare-datatypes ((List!57256 0))(
  ( (Nil!57132) (Cons!57132 (h!63580 (_ BitVec 16)) (t!367822 List!57256)) )
))
(declare-datatypes ((TokenValue!8600 0))(
  ( (FloatLiteralValue!17200 (text!60645 List!57256)) (TokenValueExt!8599 (__x!34493 Int)) (Broken!43000 (value!265682 List!57256)) (Object!8723) (End!8600) (Def!8600) (Underscore!8600) (Match!8600) (Else!8600) (Error!8600) (Case!8600) (If!8600) (Extends!8600) (Abstract!8600) (Class!8600) (Val!8600) (DelimiterValue!17200 (del!8660 List!57256)) (KeywordValue!8606 (value!265683 List!57256)) (CommentValue!17200 (value!265684 List!57256)) (WhitespaceValue!17200 (value!265685 List!57256)) (IndentationValue!8600 (value!265686 List!57256)) (String!64873) (Int32!8600) (Broken!43001 (value!265687 List!57256)) (Boolean!8601) (Unit!148026) (OperatorValue!8603 (op!8660 List!57256)) (IdentifierValue!17200 (value!265688 List!57256)) (IdentifierValue!17201 (value!265689 List!57256)) (WhitespaceValue!17201 (value!265690 List!57256)) (True!17200) (False!17200) (Broken!43002 (value!265691 List!57256)) (Broken!43003 (value!265692 List!57256)) (True!17201) (RightBrace!8600) (RightBracket!8600) (Colon!8600) (Null!8600) (Comma!8600) (LeftBracket!8600) (False!17201) (LeftBrace!8600) (ImaginaryLiteralValue!8600 (text!60646 List!57256)) (StringLiteralValue!25800 (value!265693 List!57256)) (EOFValue!8600 (value!265694 List!57256)) (IdentValue!8600 (value!265695 List!57256)) (DelimiterValue!17201 (value!265696 List!57256)) (DedentValue!8600 (value!265697 List!57256)) (NewLineValue!8600 (value!265698 List!57256)) (IntegerValue!25800 (value!265699 (_ BitVec 32)) (text!60647 List!57256)) (IntegerValue!25801 (value!265700 Int) (text!60648 List!57256)) (Times!8600) (Or!8600) (Equal!8600) (Minus!8600) (Broken!43004 (value!265701 List!57256)) (And!8600) (Div!8600) (LessEqual!8600) (Mod!8600) (Concat!22123) (Not!8600) (Plus!8600) (SpaceValue!8600 (value!265702 List!57256)) (IntegerValue!25802 (value!265703 Int) (text!60649 List!57256)) (StringLiteralValue!25801 (text!60650 List!57256)) (FloatLiteralValue!17201 (text!60651 List!57256)) (BytesLiteralValue!8600 (value!265704 List!57256)) (CommentValue!17201 (value!265705 List!57256)) (StringLiteralValue!25802 (value!265706 List!57256)) (ErrorTokenValue!8600 (msg!8661 List!57256)) )
))
(declare-datatypes ((C!27296 0))(
  ( (C!27297 (val!23014 Int)) )
))
(declare-datatypes ((List!57257 0))(
  ( (Nil!57133) (Cons!57133 (h!63581 C!27296) (t!367823 List!57257)) )
))
(declare-datatypes ((IArray!30145 0))(
  ( (IArray!30146 (innerList!15130 List!57257)) )
))
(declare-datatypes ((Regex!13523 0))(
  ( (ElementMatch!13523 (c!846055 C!27296)) (Concat!22124 (regOne!27558 Regex!13523) (regTwo!27558 Regex!13523)) (EmptyExpr!13523) (Star!13523 (reg!13852 Regex!13523)) (EmptyLang!13523) (Union!13523 (regOne!27559 Regex!13523) (regTwo!27559 Regex!13523)) )
))
(declare-datatypes ((String!64874 0))(
  ( (String!64875 (value!265707 String)) )
))
(declare-datatypes ((Conc!15042 0))(
  ( (Node!15042 (left!41681 Conc!15042) (right!42011 Conc!15042) (csize!30314 Int) (cheight!15253 Int)) (Leaf!25012 (xs!18368 IArray!30145) (csize!30315 Int)) (Empty!15042) )
))
(declare-datatypes ((BalanceConc!29514 0))(
  ( (BalanceConc!29515 (c!846056 Conc!15042)) )
))
(declare-datatypes ((TokenValueInjection!16508 0))(
  ( (TokenValueInjection!16509 (toValue!11241 Int) (toChars!11100 Int)) )
))
(declare-datatypes ((Rule!16380 0))(
  ( (Rule!16381 (regex!8290 Regex!13523) (tag!9154 String!64874) (isSeparator!8290 Bool) (transformation!8290 TokenValueInjection!16508)) )
))
(declare-datatypes ((List!57258 0))(
  ( (Nil!57134) (Cons!57134 (h!63582 Rule!16380) (t!367824 List!57258)) )
))
(declare-fun rulesArg!259 () List!57258)

(declare-fun e!3096003 () Bool)

(declare-fun tp!1389286 () Bool)

(declare-fun b!4954903 () Bool)

(declare-fun e!3096002 () Bool)

(declare-fun inv!74503 (String!64874) Bool)

(declare-fun inv!74507 (TokenValueInjection!16508) Bool)

(assert (=> b!4954903 (= e!3096002 (and tp!1389286 (inv!74503 (tag!9154 (h!63582 rulesArg!259))) (inv!74507 (transformation!8290 (h!63582 rulesArg!259))) e!3096003))))

(declare-fun res!2113956 () Bool)

(declare-fun e!3095999 () Bool)

(assert (=> start!522274 (=> (not res!2113956) (not e!3095999))))

(declare-datatypes ((LexerInterface!7882 0))(
  ( (LexerInterfaceExt!7879 (__x!34494 Int)) (Lexer!7880) )
))
(declare-fun thiss!15247 () LexerInterface!7882)

(get-info :version)

(assert (=> start!522274 (= res!2113956 ((_ is Lexer!7880) thiss!15247))))

(assert (=> start!522274 e!3095999))

(assert (=> start!522274 true))

(declare-fun e!3095996 () Bool)

(assert (=> start!522274 e!3095996))

(declare-fun input!1342 () BalanceConc!29514)

(declare-fun e!3096001 () Bool)

(declare-fun inv!74508 (BalanceConc!29514) Bool)

(assert (=> start!522274 (and (inv!74508 input!1342) e!3096001)))

(declare-fun totalInput!464 () BalanceConc!29514)

(declare-fun e!3095995 () Bool)

(assert (=> start!522274 (and (inv!74508 totalInput!464) e!3095995)))

(declare-fun b!4954904 () Bool)

(declare-fun e!3095998 () Bool)

(declare-fun e!3095997 () Bool)

(assert (=> b!4954904 (= e!3095998 (not e!3095997))))

(declare-fun res!2113959 () Bool)

(assert (=> b!4954904 (=> res!2113959 e!3095997)))

(assert (=> b!4954904 (= res!2113959 (or (and ((_ is Cons!57134) rulesArg!259) ((_ is Nil!57134) (t!367824 rulesArg!259))) (not ((_ is Cons!57134) rulesArg!259))))))

(declare-fun lt!2044970 () List!57257)

(declare-fun isPrefix!5143 (List!57257 List!57257) Bool)

(assert (=> b!4954904 (isPrefix!5143 lt!2044970 lt!2044970)))

(declare-datatypes ((Unit!148027 0))(
  ( (Unit!148028) )
))
(declare-fun lt!2044969 () Unit!148027)

(declare-fun lemmaIsPrefixRefl!3467 (List!57257 List!57257) Unit!148027)

(assert (=> b!4954904 (= lt!2044969 (lemmaIsPrefixRefl!3467 lt!2044970 lt!2044970))))

(declare-fun b!4954905 () Bool)

(declare-fun tp!1389288 () Bool)

(declare-fun inv!74509 (Conc!15042) Bool)

(assert (=> b!4954905 (= e!3096001 (and (inv!74509 (c!846056 input!1342)) tp!1389288))))

(declare-fun b!4954906 () Bool)

(declare-fun tp!1389285 () Bool)

(assert (=> b!4954906 (= e!3095995 (and (inv!74509 (c!846056 totalInput!464)) tp!1389285))))

(declare-fun b!4954907 () Bool)

(declare-fun tp!1389284 () Bool)

(assert (=> b!4954907 (= e!3095996 (and e!3096002 tp!1389284))))

(assert (=> b!4954908 (= e!3096003 (and tp!1389283 tp!1389287))))

(declare-fun b!4954909 () Bool)

(declare-fun res!2113957 () Bool)

(assert (=> b!4954909 (=> (not res!2113957) (not e!3095999))))

(declare-fun isEmpty!30722 (List!57258) Bool)

(assert (=> b!4954909 (= res!2113957 (not (isEmpty!30722 rulesArg!259)))))

(declare-fun b!4954910 () Bool)

(assert (=> b!4954910 (= e!3095999 e!3095998)))

(declare-fun res!2113958 () Bool)

(assert (=> b!4954910 (=> (not res!2113958) (not e!3095998))))

(declare-fun isSuffix!1089 (List!57257 List!57257) Bool)

(declare-fun list!18227 (BalanceConc!29514) List!57257)

(assert (=> b!4954910 (= res!2113958 (isSuffix!1089 lt!2044970 (list!18227 totalInput!464)))))

(assert (=> b!4954910 (= lt!2044970 (list!18227 input!1342))))

(declare-fun b!4954911 () Bool)

(assert (=> b!4954911 (= e!3095997 true)))

(declare-fun lt!2044968 () Bool)

(declare-fun ruleValid!3770 (LexerInterface!7882 Rule!16380) Bool)

(assert (=> b!4954911 (= lt!2044968 (ruleValid!3770 thiss!15247 (h!63582 rulesArg!259)))))

(declare-fun b!4954912 () Bool)

(declare-fun res!2113955 () Bool)

(assert (=> b!4954912 (=> (not res!2113955) (not e!3095999))))

(declare-fun rulesValidInductive!3193 (LexerInterface!7882 List!57258) Bool)

(assert (=> b!4954912 (= res!2113955 (rulesValidInductive!3193 thiss!15247 rulesArg!259))))

(assert (= (and start!522274 res!2113956) b!4954912))

(assert (= (and b!4954912 res!2113955) b!4954909))

(assert (= (and b!4954909 res!2113957) b!4954910))

(assert (= (and b!4954910 res!2113958) b!4954904))

(assert (= (and b!4954904 (not res!2113959)) b!4954911))

(assert (= b!4954903 b!4954908))

(assert (= b!4954907 b!4954903))

(assert (= (and start!522274 ((_ is Cons!57134) rulesArg!259)) b!4954907))

(assert (= start!522274 b!4954905))

(assert (= start!522274 b!4954906))

(declare-fun m!5979532 () Bool)

(assert (=> b!4954906 m!5979532))

(declare-fun m!5979534 () Bool)

(assert (=> b!4954911 m!5979534))

(declare-fun m!5979536 () Bool)

(assert (=> b!4954909 m!5979536))

(declare-fun m!5979538 () Bool)

(assert (=> b!4954904 m!5979538))

(declare-fun m!5979540 () Bool)

(assert (=> b!4954904 m!5979540))

(declare-fun m!5979542 () Bool)

(assert (=> b!4954905 m!5979542))

(declare-fun m!5979544 () Bool)

(assert (=> b!4954912 m!5979544))

(declare-fun m!5979546 () Bool)

(assert (=> start!522274 m!5979546))

(declare-fun m!5979548 () Bool)

(assert (=> start!522274 m!5979548))

(declare-fun m!5979550 () Bool)

(assert (=> b!4954903 m!5979550))

(declare-fun m!5979552 () Bool)

(assert (=> b!4954903 m!5979552))

(declare-fun m!5979554 () Bool)

(assert (=> b!4954910 m!5979554))

(assert (=> b!4954910 m!5979554))

(declare-fun m!5979556 () Bool)

(assert (=> b!4954910 m!5979556))

(declare-fun m!5979558 () Bool)

(assert (=> b!4954910 m!5979558))

(check-sat (not b_next!132951) (not b_next!132949) (not b!4954905) b_and!347011 (not b!4954907) (not b!4954909) (not b!4954906) (not b!4954910) (not b!4954903) (not b!4954911) (not b!4954912) (not start!522274) (not b!4954904) b_and!347013)
(check-sat b_and!347011 b_and!347013 (not b_next!132949) (not b_next!132951))
