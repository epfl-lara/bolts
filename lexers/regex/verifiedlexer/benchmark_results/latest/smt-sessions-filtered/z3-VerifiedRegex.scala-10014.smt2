; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523118 () Bool)

(assert start!523118)

(declare-fun b!4961608 () Bool)

(declare-fun b_free!132627 () Bool)

(declare-fun b_next!133417 () Bool)

(assert (=> b!4961608 (= b_free!132627 (not b_next!133417))))

(declare-fun tp!1391808 () Bool)

(declare-fun b_and!347479 () Bool)

(assert (=> b!4961608 (= tp!1391808 b_and!347479)))

(declare-fun b_free!132629 () Bool)

(declare-fun b_next!133419 () Bool)

(assert (=> b!4961608 (= b_free!132629 (not b_next!133419))))

(declare-fun tp!1391801 () Bool)

(declare-fun b_and!347481 () Bool)

(assert (=> b!4961608 (= tp!1391801 b_and!347481)))

(declare-fun b!4961599 () Bool)

(declare-fun b_free!132631 () Bool)

(declare-fun b_next!133421 () Bool)

(assert (=> b!4961599 (= b_free!132631 (not b_next!133421))))

(declare-fun tp!1391807 () Bool)

(declare-fun b_and!347483 () Bool)

(assert (=> b!4961599 (= tp!1391807 b_and!347483)))

(declare-fun b_free!132633 () Bool)

(declare-fun b_next!133423 () Bool)

(assert (=> b!4961599 (= b_free!132633 (not b_next!133423))))

(declare-fun tp!1391798 () Bool)

(declare-fun b_and!347485 () Bool)

(assert (=> b!4961599 (= tp!1391798 b_and!347485)))

(declare-fun e!3101304 () Bool)

(assert (=> b!4961599 (= e!3101304 (and tp!1391807 tp!1391798))))

(declare-fun b!4961600 () Bool)

(declare-fun e!3101305 () Bool)

(declare-fun e!3101323 () Bool)

(assert (=> b!4961600 (= e!3101305 (not e!3101323))))

(declare-fun res!2117763 () Bool)

(assert (=> b!4961600 (=> res!2117763 e!3101323)))

(declare-datatypes ((C!27476 0))(
  ( (C!27477 (val!23104 Int)) )
))
(declare-datatypes ((List!57526 0))(
  ( (Nil!57402) (Cons!57402 (h!63850 C!27476) (t!368092 List!57526)) )
))
(declare-datatypes ((IArray!30325 0))(
  ( (IArray!30326 (innerList!15220 List!57526)) )
))
(declare-datatypes ((Regex!13613 0))(
  ( (ElementMatch!13613 (c!846603 C!27476)) (Concat!22303 (regOne!27738 Regex!13613) (regTwo!27738 Regex!13613)) (EmptyExpr!13613) (Star!13613 (reg!13942 Regex!13613)) (EmptyLang!13613) (Union!13613 (regOne!27739 Regex!13613) (regTwo!27739 Regex!13613)) )
))
(declare-datatypes ((String!65323 0))(
  ( (String!65324 (value!268246 String)) )
))
(declare-datatypes ((List!57527 0))(
  ( (Nil!57403) (Cons!57403 (h!63851 (_ BitVec 16)) (t!368093 List!57527)) )
))
(declare-datatypes ((TokenValue!8690 0))(
  ( (FloatLiteralValue!17380 (text!61275 List!57527)) (TokenValueExt!8689 (__x!34673 Int)) (Broken!43450 (value!268247 List!57527)) (Object!8813) (End!8690) (Def!8690) (Underscore!8690) (Match!8690) (Else!8690) (Error!8690) (Case!8690) (If!8690) (Extends!8690) (Abstract!8690) (Class!8690) (Val!8690) (DelimiterValue!17380 (del!8750 List!57527)) (KeywordValue!8696 (value!268248 List!57527)) (CommentValue!17380 (value!268249 List!57527)) (WhitespaceValue!17380 (value!268250 List!57527)) (IndentationValue!8690 (value!268251 List!57527)) (String!65325) (Int32!8690) (Broken!43451 (value!268252 List!57527)) (Boolean!8691) (Unit!148296) (OperatorValue!8693 (op!8750 List!57527)) (IdentifierValue!17380 (value!268253 List!57527)) (IdentifierValue!17381 (value!268254 List!57527)) (WhitespaceValue!17381 (value!268255 List!57527)) (True!17380) (False!17380) (Broken!43452 (value!268256 List!57527)) (Broken!43453 (value!268257 List!57527)) (True!17381) (RightBrace!8690) (RightBracket!8690) (Colon!8690) (Null!8690) (Comma!8690) (LeftBracket!8690) (False!17381) (LeftBrace!8690) (ImaginaryLiteralValue!8690 (text!61276 List!57527)) (StringLiteralValue!26070 (value!268258 List!57527)) (EOFValue!8690 (value!268259 List!57527)) (IdentValue!8690 (value!268260 List!57527)) (DelimiterValue!17381 (value!268261 List!57527)) (DedentValue!8690 (value!268262 List!57527)) (NewLineValue!8690 (value!268263 List!57527)) (IntegerValue!26070 (value!268264 (_ BitVec 32)) (text!61277 List!57527)) (IntegerValue!26071 (value!268265 Int) (text!61278 List!57527)) (Times!8690) (Or!8690) (Equal!8690) (Minus!8690) (Broken!43454 (value!268266 List!57527)) (And!8690) (Div!8690) (LessEqual!8690) (Mod!8690) (Concat!22304) (Not!8690) (Plus!8690) (SpaceValue!8690 (value!268267 List!57527)) (IntegerValue!26072 (value!268268 Int) (text!61279 List!57527)) (StringLiteralValue!26071 (text!61280 List!57527)) (FloatLiteralValue!17381 (text!61281 List!57527)) (BytesLiteralValue!8690 (value!268269 List!57527)) (CommentValue!17381 (value!268270 List!57527)) (StringLiteralValue!26072 (value!268271 List!57527)) (ErrorTokenValue!8690 (msg!8751 List!57527)) )
))
(declare-datatypes ((Conc!15132 0))(
  ( (Node!15132 (left!41856 Conc!15132) (right!42186 Conc!15132) (csize!30494 Int) (cheight!15343 Int)) (Leaf!25147 (xs!18458 IArray!30325) (csize!30495 Int)) (Empty!15132) )
))
(declare-datatypes ((BalanceConc!29694 0))(
  ( (BalanceConc!29695 (c!846604 Conc!15132)) )
))
(declare-datatypes ((TokenValueInjection!16688 0))(
  ( (TokenValueInjection!16689 (toValue!11331 Int) (toChars!11190 Int)) )
))
(declare-datatypes ((Rule!16560 0))(
  ( (Rule!16561 (regex!8380 Regex!13613) (tag!9244 String!65323) (isSeparator!8380 Bool) (transformation!8380 TokenValueInjection!16688)) )
))
(declare-datatypes ((List!57528 0))(
  ( (Nil!57404) (Cons!57404 (h!63852 Rule!16560) (t!368094 List!57528)) )
))
(declare-fun rulesArg!259 () List!57528)

(get-info :version)

(assert (=> b!4961600 (= res!2117763 (or (and ((_ is Cons!57404) rulesArg!259) ((_ is Nil!57404) (t!368094 rulesArg!259))) ((_ is Cons!57404) rulesArg!259)))))

(declare-fun lt!2048584 () List!57526)

(declare-fun isPrefix!5233 (List!57526 List!57526) Bool)

(assert (=> b!4961600 (isPrefix!5233 lt!2048584 lt!2048584)))

(declare-datatypes ((Unit!148297 0))(
  ( (Unit!148298) )
))
(declare-fun lt!2048585 () Unit!148297)

(declare-fun lemmaIsPrefixRefl!3557 (List!57526 List!57526) Unit!148297)

(assert (=> b!4961600 (= lt!2048585 (lemmaIsPrefixRefl!3557 lt!2048584 lt!2048584))))

(declare-fun b!4961601 () Bool)

(declare-fun e!3101317 () Bool)

(assert (=> b!4961601 (= e!3101323 e!3101317)))

(declare-fun res!2117756 () Bool)

(assert (=> b!4961601 (=> res!2117756 e!3101317)))

(declare-fun lt!2048579 () Bool)

(declare-datatypes ((Token!15260 0))(
  ( (Token!15261 (value!268272 TokenValue!8690) (rule!11612 Rule!16560) (size!38034 Int) (originalCharacters!8661 List!57526)) )
))
(declare-datatypes ((tuple2!62096 0))(
  ( (tuple2!62097 (_1!34351 Token!15260) (_2!34351 List!57526)) )
))
(declare-datatypes ((Option!14427 0))(
  ( (None!14426) (Some!14426 (v!50411 tuple2!62096)) )
))
(declare-fun lt!2048582 () Option!14427)

(declare-fun isDefined!11340 (Option!14427) Bool)

(assert (=> b!4961601 (= res!2117756 (not (= lt!2048579 (isDefined!11340 lt!2048582))))))

(declare-datatypes ((tuple2!62098 0))(
  ( (tuple2!62099 (_1!34352 Token!15260) (_2!34352 BalanceConc!29694)) )
))
(declare-datatypes ((Option!14428 0))(
  ( (None!14427) (Some!14427 (v!50412 tuple2!62098)) )
))
(declare-fun lt!2048581 () Option!14428)

(declare-fun isDefined!11341 (Option!14428) Bool)

(assert (=> b!4961601 (= lt!2048579 (isDefined!11341 lt!2048581))))

(declare-datatypes ((LexerInterface!7972 0))(
  ( (LexerInterfaceExt!7969 (__x!34674 Int)) (Lexer!7970) )
))
(declare-fun thiss!15247 () LexerInterface!7972)

(declare-fun maxPrefixZipper!777 (LexerInterface!7972 List!57528 List!57526) Option!14427)

(assert (=> b!4961601 (= lt!2048582 (maxPrefixZipper!777 thiss!15247 rulesArg!259 lt!2048584))))

(declare-fun err!4569 () Option!14428)

(assert (=> b!4961601 (= lt!2048581 err!4569)))

(assert (=> b!4961601 true))

(declare-fun e!3101311 () Bool)

(assert (=> b!4961601 e!3101311))

(declare-fun e!3101308 () Bool)

(declare-fun e!3101314 () Bool)

(declare-fun b!4961602 () Bool)

(declare-fun tp!1391806 () Bool)

(declare-fun inv!74971 (String!65323) Bool)

(declare-fun inv!74976 (TokenValueInjection!16688) Bool)

(assert (=> b!4961602 (= e!3101314 (and tp!1391806 (inv!74971 (tag!9244 (rule!11612 (_1!34352 (v!50412 err!4569))))) (inv!74976 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) e!3101308))))

(declare-fun b!4961603 () Bool)

(declare-fun e!3101312 () Bool)

(declare-fun e!3101310 () Bool)

(assert (=> b!4961603 (= e!3101312 e!3101310)))

(declare-fun res!2117762 () Bool)

(assert (=> b!4961603 (=> res!2117762 e!3101310)))

(declare-fun lt!2048583 () tuple2!62098)

(declare-fun lt!2048586 () tuple2!62096)

(assert (=> b!4961603 (= res!2117762 (not (= (_1!34352 lt!2048583) (_1!34351 lt!2048586))))))

(declare-fun get!19911 (Option!14427) tuple2!62096)

(assert (=> b!4961603 (= lt!2048586 (get!19911 lt!2048582))))

(declare-fun get!19912 (Option!14428) tuple2!62098)

(assert (=> b!4961603 (= lt!2048583 (get!19912 lt!2048581))))

(declare-fun b!4961604 () Bool)

(declare-fun e!3101306 () Bool)

(assert (=> b!4961604 (= e!3101317 e!3101306)))

(declare-fun res!2117760 () Bool)

(assert (=> b!4961604 (=> res!2117760 e!3101306)))

(assert (=> b!4961604 (= res!2117760 e!3101312)))

(declare-fun res!2117758 () Bool)

(assert (=> b!4961604 (=> (not res!2117758) (not e!3101312))))

(declare-fun lt!2048580 () Bool)

(assert (=> b!4961604 (= res!2117758 (not lt!2048580))))

(assert (=> b!4961604 (= lt!2048580 (not lt!2048579))))

(declare-fun res!2117759 () Bool)

(declare-fun e!3101320 () Bool)

(assert (=> start!523118 (=> (not res!2117759) (not e!3101320))))

(assert (=> start!523118 (= res!2117759 ((_ is Lexer!7970) thiss!15247))))

(assert (=> start!523118 e!3101320))

(assert (=> start!523118 true))

(declare-fun e!3101309 () Bool)

(assert (=> start!523118 e!3101309))

(declare-fun input!1342 () BalanceConc!29694)

(declare-fun e!3101322 () Bool)

(declare-fun inv!74977 (BalanceConc!29694) Bool)

(assert (=> start!523118 (and (inv!74977 input!1342) e!3101322)))

(declare-fun totalInput!464 () BalanceConc!29694)

(declare-fun e!3101307 () Bool)

(assert (=> start!523118 (and (inv!74977 totalInput!464) e!3101307)))

(declare-fun b!4961605 () Bool)

(declare-fun tp!1391800 () Bool)

(declare-fun inv!74978 (Conc!15132) Bool)

(assert (=> b!4961605 (= e!3101322 (and (inv!74978 (c!846604 input!1342)) tp!1391800))))

(declare-fun b!4961606 () Bool)

(declare-fun list!18337 (BalanceConc!29694) List!57526)

(assert (=> b!4961606 (= e!3101310 (not (= (list!18337 (_2!34352 lt!2048583)) (_2!34351 lt!2048586))))))

(declare-fun b!4961607 () Bool)

(assert (=> b!4961607 (= e!3101320 e!3101305)))

(declare-fun res!2117757 () Bool)

(assert (=> b!4961607 (=> (not res!2117757) (not e!3101305))))

(declare-fun isSuffix!1179 (List!57526 List!57526) Bool)

(assert (=> b!4961607 (= res!2117757 (isSuffix!1179 lt!2048584 (list!18337 totalInput!464)))))

(assert (=> b!4961607 (= lt!2048584 (list!18337 input!1342))))

(assert (=> b!4961608 (= e!3101308 (and tp!1391808 tp!1391801))))

(declare-fun e!3101318 () Bool)

(declare-fun b!4961609 () Bool)

(declare-fun tp!1391803 () Bool)

(declare-fun inv!21 (TokenValue!8690) Bool)

(assert (=> b!4961609 (= e!3101318 (and (inv!21 (value!268272 (_1!34352 (v!50412 err!4569)))) e!3101314 tp!1391803))))

(declare-fun b!4961610 () Bool)

(declare-fun res!2117761 () Bool)

(assert (=> b!4961610 (=> (not res!2117761) (not e!3101320))))

(declare-fun rulesValidInductive!3283 (LexerInterface!7972 List!57528) Bool)

(assert (=> b!4961610 (= res!2117761 (rulesValidInductive!3283 thiss!15247 rulesArg!259))))

(declare-fun b!4961611 () Bool)

(declare-fun e!3101315 () Bool)

(declare-fun tp!1391799 () Bool)

(assert (=> b!4961611 (= e!3101315 (and (inv!74978 (c!846604 (_2!34352 (v!50412 err!4569)))) tp!1391799))))

(declare-fun b!4961612 () Bool)

(declare-fun res!2117755 () Bool)

(assert (=> b!4961612 (=> res!2117755 e!3101306)))

(assert (=> b!4961612 (= res!2117755 lt!2048580)))

(declare-fun b!4961613 () Bool)

(declare-fun res!2117764 () Bool)

(assert (=> b!4961613 (=> (not res!2117764) (not e!3101320))))

(declare-fun isEmpty!30884 (List!57528) Bool)

(assert (=> b!4961613 (= res!2117764 (not (isEmpty!30884 rulesArg!259)))))

(declare-fun e!3101321 () Bool)

(declare-fun b!4961614 () Bool)

(declare-fun tp!1391804 () Bool)

(assert (=> b!4961614 (= e!3101321 (and tp!1391804 (inv!74971 (tag!9244 (h!63852 rulesArg!259))) (inv!74976 (transformation!8380 (h!63852 rulesArg!259))) e!3101304))))

(declare-fun b!4961615 () Bool)

(declare-fun tp!1391802 () Bool)

(assert (=> b!4961615 (= e!3101307 (and (inv!74978 (c!846604 totalInput!464)) tp!1391802))))

(declare-fun b!4961616 () Bool)

(declare-fun tp!1391805 () Bool)

(assert (=> b!4961616 (= e!3101309 (and e!3101321 tp!1391805))))

(declare-fun b!4961617 () Bool)

(declare-fun maxPrefix!4651 (LexerInterface!7972 List!57528 List!57526) Option!14427)

(assert (=> b!4961617 (= e!3101306 (isDefined!11340 (maxPrefix!4651 thiss!15247 rulesArg!259 lt!2048584)))))

(declare-fun b!4961618 () Bool)

(declare-fun inv!74979 (Token!15260) Bool)

(assert (=> b!4961618 (= e!3101311 (and (inv!74979 (_1!34352 (v!50412 err!4569))) e!3101318 (inv!74977 (_2!34352 (v!50412 err!4569))) e!3101315))))

(assert (= (and start!523118 res!2117759) b!4961610))

(assert (= (and b!4961610 res!2117761) b!4961613))

(assert (= (and b!4961613 res!2117764) b!4961607))

(assert (= (and b!4961607 res!2117757) b!4961600))

(assert (= (and b!4961600 (not res!2117763)) b!4961601))

(assert (= b!4961602 b!4961608))

(assert (= b!4961609 b!4961602))

(assert (= b!4961618 b!4961609))

(assert (= b!4961618 b!4961611))

(assert (= (and b!4961601 ((_ is Some!14427) err!4569)) b!4961618))

(assert (= (and b!4961601 (not res!2117756)) b!4961604))

(assert (= (and b!4961604 res!2117758) b!4961603))

(assert (= (and b!4961603 (not res!2117762)) b!4961606))

(assert (= (and b!4961604 (not res!2117760)) b!4961612))

(assert (= (and b!4961612 (not res!2117755)) b!4961617))

(assert (= b!4961614 b!4961599))

(assert (= b!4961616 b!4961614))

(assert (= (and start!523118 ((_ is Cons!57404) rulesArg!259)) b!4961616))

(assert (= start!523118 b!4961605))

(assert (= start!523118 b!4961615))

(declare-fun m!5986118 () Bool)

(assert (=> b!4961602 m!5986118))

(declare-fun m!5986120 () Bool)

(assert (=> b!4961602 m!5986120))

(declare-fun m!5986122 () Bool)

(assert (=> b!4961611 m!5986122))

(declare-fun m!5986124 () Bool)

(assert (=> b!4961613 m!5986124))

(declare-fun m!5986126 () Bool)

(assert (=> b!4961615 m!5986126))

(declare-fun m!5986128 () Bool)

(assert (=> b!4961618 m!5986128))

(declare-fun m!5986130 () Bool)

(assert (=> b!4961618 m!5986130))

(declare-fun m!5986132 () Bool)

(assert (=> b!4961607 m!5986132))

(assert (=> b!4961607 m!5986132))

(declare-fun m!5986134 () Bool)

(assert (=> b!4961607 m!5986134))

(declare-fun m!5986136 () Bool)

(assert (=> b!4961607 m!5986136))

(declare-fun m!5986138 () Bool)

(assert (=> b!4961609 m!5986138))

(declare-fun m!5986140 () Bool)

(assert (=> b!4961600 m!5986140))

(declare-fun m!5986142 () Bool)

(assert (=> b!4961600 m!5986142))

(declare-fun m!5986144 () Bool)

(assert (=> b!4961610 m!5986144))

(declare-fun m!5986146 () Bool)

(assert (=> b!4961617 m!5986146))

(assert (=> b!4961617 m!5986146))

(declare-fun m!5986148 () Bool)

(assert (=> b!4961617 m!5986148))

(declare-fun m!5986150 () Bool)

(assert (=> b!4961601 m!5986150))

(declare-fun m!5986152 () Bool)

(assert (=> b!4961601 m!5986152))

(declare-fun m!5986154 () Bool)

(assert (=> b!4961601 m!5986154))

(declare-fun m!5986156 () Bool)

(assert (=> b!4961605 m!5986156))

(declare-fun m!5986158 () Bool)

(assert (=> b!4961606 m!5986158))

(declare-fun m!5986160 () Bool)

(assert (=> b!4961603 m!5986160))

(declare-fun m!5986162 () Bool)

(assert (=> b!4961603 m!5986162))

(declare-fun m!5986164 () Bool)

(assert (=> b!4961614 m!5986164))

(declare-fun m!5986166 () Bool)

(assert (=> b!4961614 m!5986166))

(declare-fun m!5986168 () Bool)

(assert (=> start!523118 m!5986168))

(declare-fun m!5986170 () Bool)

(assert (=> start!523118 m!5986170))

(check-sat (not b_next!133417) (not b_next!133421) (not b!4961603) (not b_next!133423) (not b!4961606) (not b!4961618) (not b!4961613) (not b!4961600) (not b!4961617) (not b!4961607) b_and!347483 b_and!347485 (not b!4961609) b_and!347481 (not b!4961611) (not b!4961614) (not b!4961601) (not b!4961605) (not b!4961602) (not b!4961616) (not b!4961615) (not b!4961610) (not start!523118) b_and!347479 (not b_next!133419))
(check-sat b_and!347481 (not b_next!133417) (not b_next!133421) (not b_next!133423) b_and!347483 b_and!347485 b_and!347479 (not b_next!133419))
(get-model)

(declare-fun d!1596383 () Bool)

(declare-fun c!846610 () Bool)

(assert (=> d!1596383 (= c!846610 ((_ is IntegerValue!26070) (value!268272 (_1!34352 (v!50412 err!4569)))))))

(declare-fun e!3101331 () Bool)

(assert (=> d!1596383 (= (inv!21 (value!268272 (_1!34352 (v!50412 err!4569)))) e!3101331)))

(declare-fun b!4961629 () Bool)

(declare-fun inv!16 (TokenValue!8690) Bool)

(assert (=> b!4961629 (= e!3101331 (inv!16 (value!268272 (_1!34352 (v!50412 err!4569)))))))

(declare-fun b!4961630 () Bool)

(declare-fun e!3101332 () Bool)

(declare-fun inv!17 (TokenValue!8690) Bool)

(assert (=> b!4961630 (= e!3101332 (inv!17 (value!268272 (_1!34352 (v!50412 err!4569)))))))

(declare-fun b!4961631 () Bool)

(declare-fun e!3101330 () Bool)

(declare-fun inv!15 (TokenValue!8690) Bool)

(assert (=> b!4961631 (= e!3101330 (inv!15 (value!268272 (_1!34352 (v!50412 err!4569)))))))

(declare-fun b!4961632 () Bool)

(declare-fun res!2117771 () Bool)

(assert (=> b!4961632 (=> res!2117771 e!3101330)))

(assert (=> b!4961632 (= res!2117771 (not ((_ is IntegerValue!26072) (value!268272 (_1!34352 (v!50412 err!4569))))))))

(assert (=> b!4961632 (= e!3101332 e!3101330)))

(declare-fun b!4961633 () Bool)

(assert (=> b!4961633 (= e!3101331 e!3101332)))

(declare-fun c!846609 () Bool)

(assert (=> b!4961633 (= c!846609 ((_ is IntegerValue!26071) (value!268272 (_1!34352 (v!50412 err!4569)))))))

(assert (= (and d!1596383 c!846610) b!4961629))

(assert (= (and d!1596383 (not c!846610)) b!4961633))

(assert (= (and b!4961633 c!846609) b!4961630))

(assert (= (and b!4961633 (not c!846609)) b!4961632))

(assert (= (and b!4961632 (not res!2117771)) b!4961631))

(declare-fun m!5986172 () Bool)

(assert (=> b!4961629 m!5986172))

(declare-fun m!5986174 () Bool)

(assert (=> b!4961630 m!5986174))

(declare-fun m!5986176 () Bool)

(assert (=> b!4961631 m!5986176))

(assert (=> b!4961609 d!1596383))

(declare-fun d!1596387 () Bool)

(assert (=> d!1596387 true))

(declare-fun lt!2048591 () Bool)

(declare-fun lambda!247231 () Int)

(declare-fun forall!13317 (List!57528 Int) Bool)

(assert (=> d!1596387 (= lt!2048591 (forall!13317 rulesArg!259 lambda!247231))))

(declare-fun e!3101350 () Bool)

(assert (=> d!1596387 (= lt!2048591 e!3101350)))

(declare-fun res!2117783 () Bool)

(assert (=> d!1596387 (=> res!2117783 e!3101350)))

(assert (=> d!1596387 (= res!2117783 (not ((_ is Cons!57404) rulesArg!259)))))

(assert (=> d!1596387 (= (rulesValidInductive!3283 thiss!15247 rulesArg!259) lt!2048591)))

(declare-fun b!4961657 () Bool)

(declare-fun e!3101351 () Bool)

(assert (=> b!4961657 (= e!3101350 e!3101351)))

(declare-fun res!2117784 () Bool)

(assert (=> b!4961657 (=> (not res!2117784) (not e!3101351))))

(declare-fun ruleValid!3791 (LexerInterface!7972 Rule!16560) Bool)

(assert (=> b!4961657 (= res!2117784 (ruleValid!3791 thiss!15247 (h!63852 rulesArg!259)))))

(declare-fun b!4961658 () Bool)

(assert (=> b!4961658 (= e!3101351 (rulesValidInductive!3283 thiss!15247 (t!368094 rulesArg!259)))))

(assert (= (and d!1596387 (not res!2117783)) b!4961657))

(assert (= (and b!4961657 res!2117784) b!4961658))

(declare-fun m!5986184 () Bool)

(assert (=> d!1596387 m!5986184))

(declare-fun m!5986186 () Bool)

(assert (=> b!4961657 m!5986186))

(declare-fun m!5986188 () Bool)

(assert (=> b!4961658 m!5986188))

(assert (=> b!4961610 d!1596387))

(declare-fun d!1596391 () Bool)

(declare-fun isBalanced!4191 (Conc!15132) Bool)

(assert (=> d!1596391 (= (inv!74977 input!1342) (isBalanced!4191 (c!846604 input!1342)))))

(declare-fun bs!1182735 () Bool)

(assert (= bs!1182735 d!1596391))

(declare-fun m!5986190 () Bool)

(assert (=> bs!1182735 m!5986190))

(assert (=> start!523118 d!1596391))

(declare-fun d!1596393 () Bool)

(assert (=> d!1596393 (= (inv!74977 totalInput!464) (isBalanced!4191 (c!846604 totalInput!464)))))

(declare-fun bs!1182736 () Bool)

(assert (= bs!1182736 d!1596393))

(declare-fun m!5986192 () Bool)

(assert (=> bs!1182736 m!5986192))

(assert (=> start!523118 d!1596393))

(declare-fun b!4961673 () Bool)

(declare-fun e!3101360 () Bool)

(declare-fun tail!9791 (List!57526) List!57526)

(assert (=> b!4961673 (= e!3101360 (isPrefix!5233 (tail!9791 lt!2048584) (tail!9791 lt!2048584)))))

(declare-fun b!4961671 () Bool)

(declare-fun e!3101362 () Bool)

(assert (=> b!4961671 (= e!3101362 e!3101360)))

(declare-fun res!2117795 () Bool)

(assert (=> b!4961671 (=> (not res!2117795) (not e!3101360))))

(assert (=> b!4961671 (= res!2117795 (not ((_ is Nil!57402) lt!2048584)))))

(declare-fun d!1596395 () Bool)

(declare-fun e!3101361 () Bool)

(assert (=> d!1596395 e!3101361))

(declare-fun res!2117798 () Bool)

(assert (=> d!1596395 (=> res!2117798 e!3101361)))

(declare-fun lt!2048595 () Bool)

(assert (=> d!1596395 (= res!2117798 (not lt!2048595))))

(assert (=> d!1596395 (= lt!2048595 e!3101362)))

(declare-fun res!2117796 () Bool)

(assert (=> d!1596395 (=> res!2117796 e!3101362)))

(assert (=> d!1596395 (= res!2117796 ((_ is Nil!57402) lt!2048584))))

(assert (=> d!1596395 (= (isPrefix!5233 lt!2048584 lt!2048584) lt!2048595)))

(declare-fun b!4961674 () Bool)

(declare-fun size!38035 (List!57526) Int)

(assert (=> b!4961674 (= e!3101361 (>= (size!38035 lt!2048584) (size!38035 lt!2048584)))))

(declare-fun b!4961672 () Bool)

(declare-fun res!2117797 () Bool)

(assert (=> b!4961672 (=> (not res!2117797) (not e!3101360))))

(declare-fun head!10658 (List!57526) C!27476)

(assert (=> b!4961672 (= res!2117797 (= (head!10658 lt!2048584) (head!10658 lt!2048584)))))

(assert (= (and d!1596395 (not res!2117796)) b!4961671))

(assert (= (and b!4961671 res!2117795) b!4961672))

(assert (= (and b!4961672 res!2117797) b!4961673))

(assert (= (and d!1596395 (not res!2117798)) b!4961674))

(declare-fun m!5986194 () Bool)

(assert (=> b!4961673 m!5986194))

(assert (=> b!4961673 m!5986194))

(assert (=> b!4961673 m!5986194))

(assert (=> b!4961673 m!5986194))

(declare-fun m!5986196 () Bool)

(assert (=> b!4961673 m!5986196))

(declare-fun m!5986198 () Bool)

(assert (=> b!4961674 m!5986198))

(assert (=> b!4961674 m!5986198))

(declare-fun m!5986200 () Bool)

(assert (=> b!4961672 m!5986200))

(assert (=> b!4961672 m!5986200))

(assert (=> b!4961600 d!1596395))

(declare-fun d!1596397 () Bool)

(assert (=> d!1596397 (isPrefix!5233 lt!2048584 lt!2048584)))

(declare-fun lt!2048598 () Unit!148297)

(declare-fun choose!36638 (List!57526 List!57526) Unit!148297)

(assert (=> d!1596397 (= lt!2048598 (choose!36638 lt!2048584 lt!2048584))))

(assert (=> d!1596397 (= (lemmaIsPrefixRefl!3557 lt!2048584 lt!2048584) lt!2048598)))

(declare-fun bs!1182737 () Bool)

(assert (= bs!1182737 d!1596397))

(assert (=> bs!1182737 m!5986140))

(declare-fun m!5986208 () Bool)

(assert (=> bs!1182737 m!5986208))

(assert (=> b!4961600 d!1596397))

(declare-fun d!1596401 () Bool)

(declare-fun c!846619 () Bool)

(assert (=> d!1596401 (= c!846619 ((_ is Node!15132) (c!846604 (_2!34352 (v!50412 err!4569)))))))

(declare-fun e!3101376 () Bool)

(assert (=> d!1596401 (= (inv!74978 (c!846604 (_2!34352 (v!50412 err!4569)))) e!3101376)))

(declare-fun b!4961695 () Bool)

(declare-fun inv!74980 (Conc!15132) Bool)

(assert (=> b!4961695 (= e!3101376 (inv!74980 (c!846604 (_2!34352 (v!50412 err!4569)))))))

(declare-fun b!4961696 () Bool)

(declare-fun e!3101377 () Bool)

(assert (=> b!4961696 (= e!3101376 e!3101377)))

(declare-fun res!2117813 () Bool)

(assert (=> b!4961696 (= res!2117813 (not ((_ is Leaf!25147) (c!846604 (_2!34352 (v!50412 err!4569))))))))

(assert (=> b!4961696 (=> res!2117813 e!3101377)))

(declare-fun b!4961697 () Bool)

(declare-fun inv!74981 (Conc!15132) Bool)

(assert (=> b!4961697 (= e!3101377 (inv!74981 (c!846604 (_2!34352 (v!50412 err!4569)))))))

(assert (= (and d!1596401 c!846619) b!4961695))

(assert (= (and d!1596401 (not c!846619)) b!4961696))

(assert (= (and b!4961696 (not res!2117813)) b!4961697))

(declare-fun m!5986218 () Bool)

(assert (=> b!4961695 m!5986218))

(declare-fun m!5986220 () Bool)

(assert (=> b!4961697 m!5986220))

(assert (=> b!4961611 d!1596401))

(declare-fun d!1596405 () Bool)

(declare-fun isEmpty!30885 (Option!14427) Bool)

(assert (=> d!1596405 (= (isDefined!11340 lt!2048582) (not (isEmpty!30885 lt!2048582)))))

(declare-fun bs!1182738 () Bool)

(assert (= bs!1182738 d!1596405))

(declare-fun m!5986222 () Bool)

(assert (=> bs!1182738 m!5986222))

(assert (=> b!4961601 d!1596405))

(declare-fun d!1596407 () Bool)

(declare-fun isEmpty!30886 (Option!14428) Bool)

(assert (=> d!1596407 (= (isDefined!11341 lt!2048581) (not (isEmpty!30886 lt!2048581)))))

(declare-fun bs!1182739 () Bool)

(assert (= bs!1182739 d!1596407))

(declare-fun m!5986224 () Bool)

(assert (=> bs!1182739 m!5986224))

(assert (=> b!4961601 d!1596407))

(declare-fun lt!2048632 () Option!14427)

(declare-fun d!1596409 () Bool)

(assert (=> d!1596409 (= lt!2048632 (maxPrefix!4651 thiss!15247 rulesArg!259 lt!2048584))))

(declare-fun e!3101389 () Option!14427)

(assert (=> d!1596409 (= lt!2048632 e!3101389)))

(declare-fun c!846625 () Bool)

(assert (=> d!1596409 (= c!846625 (and ((_ is Cons!57404) rulesArg!259) ((_ is Nil!57404) (t!368094 rulesArg!259))))))

(declare-fun lt!2048633 () Unit!148297)

(declare-fun lt!2048630 () Unit!148297)

(assert (=> d!1596409 (= lt!2048633 lt!2048630)))

(assert (=> d!1596409 (isPrefix!5233 lt!2048584 lt!2048584)))

(assert (=> d!1596409 (= lt!2048630 (lemmaIsPrefixRefl!3557 lt!2048584 lt!2048584))))

(assert (=> d!1596409 (rulesValidInductive!3283 thiss!15247 rulesArg!259)))

(assert (=> d!1596409 (= (maxPrefixZipper!777 thiss!15247 rulesArg!259 lt!2048584) lt!2048632)))

(declare-fun bm!346028 () Bool)

(declare-fun call!346033 () Option!14427)

(declare-fun maxPrefixOneRuleZipper!288 (LexerInterface!7972 Rule!16560 List!57526) Option!14427)

(assert (=> bm!346028 (= call!346033 (maxPrefixOneRuleZipper!288 thiss!15247 (h!63852 rulesArg!259) lt!2048584))))

(declare-fun b!4961729 () Bool)

(assert (=> b!4961729 (= e!3101389 call!346033)))

(declare-fun b!4961730 () Bool)

(declare-fun lt!2048634 () Option!14427)

(declare-fun lt!2048631 () Option!14427)

(assert (=> b!4961730 (= e!3101389 (ite (and ((_ is None!14426) lt!2048634) ((_ is None!14426) lt!2048631)) None!14426 (ite ((_ is None!14426) lt!2048631) lt!2048634 (ite ((_ is None!14426) lt!2048634) lt!2048631 (ite (>= (size!38034 (_1!34351 (v!50411 lt!2048634))) (size!38034 (_1!34351 (v!50411 lt!2048631)))) lt!2048634 lt!2048631)))))))

(assert (=> b!4961730 (= lt!2048634 call!346033)))

(assert (=> b!4961730 (= lt!2048631 (maxPrefixZipper!777 thiss!15247 (t!368094 rulesArg!259) lt!2048584))))

(assert (= (and d!1596409 c!846625) b!4961729))

(assert (= (and d!1596409 (not c!846625)) b!4961730))

(assert (= (or b!4961729 b!4961730) bm!346028))

(assert (=> d!1596409 m!5986146))

(assert (=> d!1596409 m!5986140))

(assert (=> d!1596409 m!5986142))

(assert (=> d!1596409 m!5986144))

(declare-fun m!5986258 () Bool)

(assert (=> bm!346028 m!5986258))

(declare-fun m!5986260 () Bool)

(assert (=> b!4961730 m!5986260))

(assert (=> b!4961601 d!1596409))

(declare-fun d!1596423 () Bool)

(assert (=> d!1596423 (= (inv!74971 (tag!9244 (rule!11612 (_1!34352 (v!50412 err!4569))))) (= (mod (str.len (value!268246 (tag!9244 (rule!11612 (_1!34352 (v!50412 err!4569)))))) 2) 0))))

(assert (=> b!4961602 d!1596423))

(declare-fun d!1596425 () Bool)

(declare-fun res!2117840 () Bool)

(declare-fun e!3101395 () Bool)

(assert (=> d!1596425 (=> (not res!2117840) (not e!3101395))))

(declare-fun semiInverseModEq!3689 (Int Int) Bool)

(assert (=> d!1596425 (= res!2117840 (semiInverseModEq!3689 (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (toValue!11331 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))))))

(assert (=> d!1596425 (= (inv!74976 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) e!3101395)))

(declare-fun b!4961736 () Bool)

(declare-fun equivClasses!3537 (Int Int) Bool)

(assert (=> b!4961736 (= e!3101395 (equivClasses!3537 (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (toValue!11331 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))))))

(assert (= (and d!1596425 res!2117840) b!4961736))

(declare-fun m!5986266 () Bool)

(assert (=> d!1596425 m!5986266))

(declare-fun m!5986268 () Bool)

(assert (=> b!4961736 m!5986268))

(assert (=> b!4961602 d!1596425))

(declare-fun d!1596429 () Bool)

(assert (=> d!1596429 (= (isEmpty!30884 rulesArg!259) ((_ is Nil!57404) rulesArg!259))))

(assert (=> b!4961613 d!1596429))

(declare-fun d!1596431 () Bool)

(assert (=> d!1596431 (= (inv!74971 (tag!9244 (h!63852 rulesArg!259))) (= (mod (str.len (value!268246 (tag!9244 (h!63852 rulesArg!259)))) 2) 0))))

(assert (=> b!4961614 d!1596431))

(declare-fun d!1596433 () Bool)

(declare-fun res!2117841 () Bool)

(declare-fun e!3101396 () Bool)

(assert (=> d!1596433 (=> (not res!2117841) (not e!3101396))))

(assert (=> d!1596433 (= res!2117841 (semiInverseModEq!3689 (toChars!11190 (transformation!8380 (h!63852 rulesArg!259))) (toValue!11331 (transformation!8380 (h!63852 rulesArg!259)))))))

(assert (=> d!1596433 (= (inv!74976 (transformation!8380 (h!63852 rulesArg!259))) e!3101396)))

(declare-fun b!4961737 () Bool)

(assert (=> b!4961737 (= e!3101396 (equivClasses!3537 (toChars!11190 (transformation!8380 (h!63852 rulesArg!259))) (toValue!11331 (transformation!8380 (h!63852 rulesArg!259)))))))

(assert (= (and d!1596433 res!2117841) b!4961737))

(declare-fun m!5986270 () Bool)

(assert (=> d!1596433 m!5986270))

(declare-fun m!5986272 () Bool)

(assert (=> b!4961737 m!5986272))

(assert (=> b!4961614 d!1596433))

(declare-fun d!1596435 () Bool)

(assert (=> d!1596435 (= (get!19911 lt!2048582) (v!50411 lt!2048582))))

(assert (=> b!4961603 d!1596435))

(declare-fun d!1596437 () Bool)

(assert (=> d!1596437 (= (get!19912 lt!2048581) (v!50412 lt!2048581))))

(assert (=> b!4961603 d!1596437))

(declare-fun d!1596439 () Bool)

(declare-fun c!846628 () Bool)

(assert (=> d!1596439 (= c!846628 ((_ is Node!15132) (c!846604 totalInput!464)))))

(declare-fun e!3101401 () Bool)

(assert (=> d!1596439 (= (inv!74978 (c!846604 totalInput!464)) e!3101401)))

(declare-fun b!4961744 () Bool)

(assert (=> b!4961744 (= e!3101401 (inv!74980 (c!846604 totalInput!464)))))

(declare-fun b!4961745 () Bool)

(declare-fun e!3101402 () Bool)

(assert (=> b!4961745 (= e!3101401 e!3101402)))

(declare-fun res!2117844 () Bool)

(assert (=> b!4961745 (= res!2117844 (not ((_ is Leaf!25147) (c!846604 totalInput!464))))))

(assert (=> b!4961745 (=> res!2117844 e!3101402)))

(declare-fun b!4961746 () Bool)

(assert (=> b!4961746 (= e!3101402 (inv!74981 (c!846604 totalInput!464)))))

(assert (= (and d!1596439 c!846628) b!4961744))

(assert (= (and d!1596439 (not c!846628)) b!4961745))

(assert (= (and b!4961745 (not res!2117844)) b!4961746))

(declare-fun m!5986274 () Bool)

(assert (=> b!4961744 m!5986274))

(declare-fun m!5986276 () Bool)

(assert (=> b!4961746 m!5986276))

(assert (=> b!4961615 d!1596439))

(declare-fun d!1596441 () Bool)

(declare-fun c!846629 () Bool)

(assert (=> d!1596441 (= c!846629 ((_ is Node!15132) (c!846604 input!1342)))))

(declare-fun e!3101403 () Bool)

(assert (=> d!1596441 (= (inv!74978 (c!846604 input!1342)) e!3101403)))

(declare-fun b!4961747 () Bool)

(assert (=> b!4961747 (= e!3101403 (inv!74980 (c!846604 input!1342)))))

(declare-fun b!4961748 () Bool)

(declare-fun e!3101404 () Bool)

(assert (=> b!4961748 (= e!3101403 e!3101404)))

(declare-fun res!2117845 () Bool)

(assert (=> b!4961748 (= res!2117845 (not ((_ is Leaf!25147) (c!846604 input!1342))))))

(assert (=> b!4961748 (=> res!2117845 e!3101404)))

(declare-fun b!4961749 () Bool)

(assert (=> b!4961749 (= e!3101404 (inv!74981 (c!846604 input!1342)))))

(assert (= (and d!1596441 c!846629) b!4961747))

(assert (= (and d!1596441 (not c!846629)) b!4961748))

(assert (= (and b!4961748 (not res!2117845)) b!4961749))

(declare-fun m!5986278 () Bool)

(assert (=> b!4961747 m!5986278))

(declare-fun m!5986280 () Bool)

(assert (=> b!4961749 m!5986280))

(assert (=> b!4961605 d!1596441))

(declare-fun d!1596443 () Bool)

(declare-fun list!18339 (Conc!15132) List!57526)

(assert (=> d!1596443 (= (list!18337 (_2!34352 lt!2048583)) (list!18339 (c!846604 (_2!34352 lt!2048583))))))

(declare-fun bs!1182743 () Bool)

(assert (= bs!1182743 d!1596443))

(declare-fun m!5986286 () Bool)

(assert (=> bs!1182743 m!5986286))

(assert (=> b!4961606 d!1596443))

(declare-fun d!1596447 () Bool)

(assert (=> d!1596447 (= (isDefined!11340 (maxPrefix!4651 thiss!15247 rulesArg!259 lt!2048584)) (not (isEmpty!30885 (maxPrefix!4651 thiss!15247 rulesArg!259 lt!2048584))))))

(declare-fun bs!1182744 () Bool)

(assert (= bs!1182744 d!1596447))

(assert (=> bs!1182744 m!5986146))

(declare-fun m!5986288 () Bool)

(assert (=> bs!1182744 m!5986288))

(assert (=> b!4961617 d!1596447))

(declare-fun b!4961785 () Bool)

(declare-fun res!2117871 () Bool)

(declare-fun e!3101421 () Bool)

(assert (=> b!4961785 (=> (not res!2117871) (not e!3101421))))

(declare-fun lt!2048647 () Option!14427)

(declare-fun apply!13895 (TokenValueInjection!16688 BalanceConc!29694) TokenValue!8690)

(declare-fun seqFromList!6027 (List!57526) BalanceConc!29694)

(assert (=> b!4961785 (= res!2117871 (= (value!268272 (_1!34351 (get!19911 lt!2048647))) (apply!13895 (transformation!8380 (rule!11612 (_1!34351 (get!19911 lt!2048647)))) (seqFromList!6027 (originalCharacters!8661 (_1!34351 (get!19911 lt!2048647)))))))))

(declare-fun bm!346031 () Bool)

(declare-fun call!346036 () Option!14427)

(declare-fun maxPrefixOneRule!3620 (LexerInterface!7972 Rule!16560 List!57526) Option!14427)

(assert (=> bm!346031 (= call!346036 (maxPrefixOneRule!3620 thiss!15247 (h!63852 rulesArg!259) lt!2048584))))

(declare-fun d!1596449 () Bool)

(declare-fun e!3101422 () Bool)

(assert (=> d!1596449 e!3101422))

(declare-fun res!2117872 () Bool)

(assert (=> d!1596449 (=> res!2117872 e!3101422)))

(assert (=> d!1596449 (= res!2117872 (isEmpty!30885 lt!2048647))))

(declare-fun e!3101423 () Option!14427)

(assert (=> d!1596449 (= lt!2048647 e!3101423)))

(declare-fun c!846634 () Bool)

(assert (=> d!1596449 (= c!846634 (and ((_ is Cons!57404) rulesArg!259) ((_ is Nil!57404) (t!368094 rulesArg!259))))))

(declare-fun lt!2048649 () Unit!148297)

(declare-fun lt!2048648 () Unit!148297)

(assert (=> d!1596449 (= lt!2048649 lt!2048648)))

(assert (=> d!1596449 (isPrefix!5233 lt!2048584 lt!2048584)))

(assert (=> d!1596449 (= lt!2048648 (lemmaIsPrefixRefl!3557 lt!2048584 lt!2048584))))

(assert (=> d!1596449 (rulesValidInductive!3283 thiss!15247 rulesArg!259)))

(assert (=> d!1596449 (= (maxPrefix!4651 thiss!15247 rulesArg!259 lt!2048584) lt!2048647)))

(declare-fun b!4961786 () Bool)

(declare-fun lt!2048645 () Option!14427)

(declare-fun lt!2048646 () Option!14427)

(assert (=> b!4961786 (= e!3101423 (ite (and ((_ is None!14426) lt!2048645) ((_ is None!14426) lt!2048646)) None!14426 (ite ((_ is None!14426) lt!2048646) lt!2048645 (ite ((_ is None!14426) lt!2048645) lt!2048646 (ite (>= (size!38034 (_1!34351 (v!50411 lt!2048645))) (size!38034 (_1!34351 (v!50411 lt!2048646)))) lt!2048645 lt!2048646)))))))

(assert (=> b!4961786 (= lt!2048645 call!346036)))

(assert (=> b!4961786 (= lt!2048646 (maxPrefix!4651 thiss!15247 (t!368094 rulesArg!259) lt!2048584))))

(declare-fun b!4961787 () Bool)

(declare-fun res!2117869 () Bool)

(assert (=> b!4961787 (=> (not res!2117869) (not e!3101421))))

(declare-fun charsOf!5430 (Token!15260) BalanceConc!29694)

(assert (=> b!4961787 (= res!2117869 (= (list!18337 (charsOf!5430 (_1!34351 (get!19911 lt!2048647)))) (originalCharacters!8661 (_1!34351 (get!19911 lt!2048647)))))))

(declare-fun b!4961788 () Bool)

(assert (=> b!4961788 (= e!3101423 call!346036)))

(declare-fun b!4961789 () Bool)

(declare-fun res!2117868 () Bool)

(assert (=> b!4961789 (=> (not res!2117868) (not e!3101421))))

(declare-fun matchR!6627 (Regex!13613 List!57526) Bool)

(assert (=> b!4961789 (= res!2117868 (matchR!6627 (regex!8380 (rule!11612 (_1!34351 (get!19911 lt!2048647)))) (list!18337 (charsOf!5430 (_1!34351 (get!19911 lt!2048647))))))))

(declare-fun b!4961790 () Bool)

(declare-fun res!2117874 () Bool)

(assert (=> b!4961790 (=> (not res!2117874) (not e!3101421))))

(declare-fun ++!12525 (List!57526 List!57526) List!57526)

(assert (=> b!4961790 (= res!2117874 (= (++!12525 (list!18337 (charsOf!5430 (_1!34351 (get!19911 lt!2048647)))) (_2!34351 (get!19911 lt!2048647))) lt!2048584))))

(declare-fun b!4961791 () Bool)

(declare-fun contains!19531 (List!57528 Rule!16560) Bool)

(assert (=> b!4961791 (= e!3101421 (contains!19531 rulesArg!259 (rule!11612 (_1!34351 (get!19911 lt!2048647)))))))

(declare-fun b!4961792 () Bool)

(declare-fun res!2117870 () Bool)

(assert (=> b!4961792 (=> (not res!2117870) (not e!3101421))))

(assert (=> b!4961792 (= res!2117870 (< (size!38035 (_2!34351 (get!19911 lt!2048647))) (size!38035 lt!2048584)))))

(declare-fun b!4961793 () Bool)

(assert (=> b!4961793 (= e!3101422 e!3101421)))

(declare-fun res!2117873 () Bool)

(assert (=> b!4961793 (=> (not res!2117873) (not e!3101421))))

(assert (=> b!4961793 (= res!2117873 (isDefined!11340 lt!2048647))))

(assert (= (and d!1596449 c!846634) b!4961788))

(assert (= (and d!1596449 (not c!846634)) b!4961786))

(assert (= (or b!4961788 b!4961786) bm!346031))

(assert (= (and d!1596449 (not res!2117872)) b!4961793))

(assert (= (and b!4961793 res!2117873) b!4961787))

(assert (= (and b!4961787 res!2117869) b!4961792))

(assert (= (and b!4961792 res!2117870) b!4961790))

(assert (= (and b!4961790 res!2117874) b!4961785))

(assert (= (and b!4961785 res!2117871) b!4961789))

(assert (= (and b!4961789 res!2117868) b!4961791))

(declare-fun m!5986312 () Bool)

(assert (=> b!4961792 m!5986312))

(declare-fun m!5986314 () Bool)

(assert (=> b!4961792 m!5986314))

(assert (=> b!4961792 m!5986198))

(declare-fun m!5986316 () Bool)

(assert (=> bm!346031 m!5986316))

(assert (=> b!4961789 m!5986312))

(declare-fun m!5986318 () Bool)

(assert (=> b!4961789 m!5986318))

(assert (=> b!4961789 m!5986318))

(declare-fun m!5986320 () Bool)

(assert (=> b!4961789 m!5986320))

(assert (=> b!4961789 m!5986320))

(declare-fun m!5986322 () Bool)

(assert (=> b!4961789 m!5986322))

(declare-fun m!5986324 () Bool)

(assert (=> b!4961793 m!5986324))

(assert (=> b!4961785 m!5986312))

(declare-fun m!5986326 () Bool)

(assert (=> b!4961785 m!5986326))

(assert (=> b!4961785 m!5986326))

(declare-fun m!5986328 () Bool)

(assert (=> b!4961785 m!5986328))

(assert (=> b!4961790 m!5986312))

(assert (=> b!4961790 m!5986318))

(assert (=> b!4961790 m!5986318))

(assert (=> b!4961790 m!5986320))

(assert (=> b!4961790 m!5986320))

(declare-fun m!5986330 () Bool)

(assert (=> b!4961790 m!5986330))

(declare-fun m!5986332 () Bool)

(assert (=> d!1596449 m!5986332))

(assert (=> d!1596449 m!5986140))

(assert (=> d!1596449 m!5986142))

(assert (=> d!1596449 m!5986144))

(assert (=> b!4961787 m!5986312))

(assert (=> b!4961787 m!5986318))

(assert (=> b!4961787 m!5986318))

(assert (=> b!4961787 m!5986320))

(declare-fun m!5986334 () Bool)

(assert (=> b!4961786 m!5986334))

(assert (=> b!4961791 m!5986312))

(declare-fun m!5986336 () Bool)

(assert (=> b!4961791 m!5986336))

(assert (=> b!4961617 d!1596449))

(declare-fun d!1596461 () Bool)

(declare-fun res!2117879 () Bool)

(declare-fun e!3101426 () Bool)

(assert (=> d!1596461 (=> (not res!2117879) (not e!3101426))))

(declare-fun isEmpty!30889 (List!57526) Bool)

(assert (=> d!1596461 (= res!2117879 (not (isEmpty!30889 (originalCharacters!8661 (_1!34352 (v!50412 err!4569))))))))

(assert (=> d!1596461 (= (inv!74979 (_1!34352 (v!50412 err!4569))) e!3101426)))

(declare-fun b!4961798 () Bool)

(declare-fun res!2117880 () Bool)

(assert (=> b!4961798 (=> (not res!2117880) (not e!3101426))))

(declare-fun dynLambda!23118 (Int TokenValue!8690) BalanceConc!29694)

(assert (=> b!4961798 (= res!2117880 (= (originalCharacters!8661 (_1!34352 (v!50412 err!4569))) (list!18337 (dynLambda!23118 (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (value!268272 (_1!34352 (v!50412 err!4569)))))))))

(declare-fun b!4961799 () Bool)

(assert (=> b!4961799 (= e!3101426 (= (size!38034 (_1!34352 (v!50412 err!4569))) (size!38035 (originalCharacters!8661 (_1!34352 (v!50412 err!4569))))))))

(assert (= (and d!1596461 res!2117879) b!4961798))

(assert (= (and b!4961798 res!2117880) b!4961799))

(declare-fun b_lambda!196447 () Bool)

(assert (=> (not b_lambda!196447) (not b!4961798)))

(declare-fun t!368100 () Bool)

(declare-fun tb!260135 () Bool)

(assert (=> (and b!4961608 (= (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) t!368100) tb!260135))

(declare-fun b!4961804 () Bool)

(declare-fun e!3101429 () Bool)

(declare-fun tp!1391814 () Bool)

(assert (=> b!4961804 (= e!3101429 (and (inv!74978 (c!846604 (dynLambda!23118 (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (value!268272 (_1!34352 (v!50412 err!4569)))))) tp!1391814))))

(declare-fun result!325120 () Bool)

(assert (=> tb!260135 (= result!325120 (and (inv!74977 (dynLambda!23118 (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))) (value!268272 (_1!34352 (v!50412 err!4569))))) e!3101429))))

(assert (= tb!260135 b!4961804))

(declare-fun m!5986338 () Bool)

(assert (=> b!4961804 m!5986338))

(declare-fun m!5986340 () Bool)

(assert (=> tb!260135 m!5986340))

(assert (=> b!4961798 t!368100))

(declare-fun b_and!347491 () Bool)

(assert (= b_and!347481 (and (=> t!368100 result!325120) b_and!347491)))

(declare-fun t!368102 () Bool)

(declare-fun tb!260137 () Bool)

(assert (=> (and b!4961599 (= (toChars!11190 (transformation!8380 (h!63852 rulesArg!259))) (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) t!368102) tb!260137))

(declare-fun result!325124 () Bool)

(assert (= result!325124 result!325120))

(assert (=> b!4961798 t!368102))

(declare-fun b_and!347493 () Bool)

(assert (= b_and!347485 (and (=> t!368102 result!325124) b_and!347493)))

(declare-fun m!5986342 () Bool)

(assert (=> d!1596461 m!5986342))

(declare-fun m!5986344 () Bool)

(assert (=> b!4961798 m!5986344))

(assert (=> b!4961798 m!5986344))

(declare-fun m!5986346 () Bool)

(assert (=> b!4961798 m!5986346))

(declare-fun m!5986348 () Bool)

(assert (=> b!4961799 m!5986348))

(assert (=> b!4961618 d!1596461))

(declare-fun d!1596463 () Bool)

(assert (=> d!1596463 (= (inv!74977 (_2!34352 (v!50412 err!4569))) (isBalanced!4191 (c!846604 (_2!34352 (v!50412 err!4569)))))))

(declare-fun bs!1182748 () Bool)

(assert (= bs!1182748 d!1596463))

(declare-fun m!5986350 () Bool)

(assert (=> bs!1182748 m!5986350))

(assert (=> b!4961618 d!1596463))

(declare-fun d!1596465 () Bool)

(declare-fun e!3101432 () Bool)

(assert (=> d!1596465 e!3101432))

(declare-fun res!2117883 () Bool)

(assert (=> d!1596465 (=> res!2117883 e!3101432)))

(declare-fun lt!2048652 () Bool)

(assert (=> d!1596465 (= res!2117883 (not lt!2048652))))

(declare-fun drop!2338 (List!57526 Int) List!57526)

(assert (=> d!1596465 (= lt!2048652 (= lt!2048584 (drop!2338 (list!18337 totalInput!464) (- (size!38035 (list!18337 totalInput!464)) (size!38035 lt!2048584)))))))

(assert (=> d!1596465 (= (isSuffix!1179 lt!2048584 (list!18337 totalInput!464)) lt!2048652)))

(declare-fun b!4961807 () Bool)

(assert (=> b!4961807 (= e!3101432 (>= (size!38035 (list!18337 totalInput!464)) (size!38035 lt!2048584)))))

(assert (= (and d!1596465 (not res!2117883)) b!4961807))

(assert (=> d!1596465 m!5986132))

(declare-fun m!5986352 () Bool)

(assert (=> d!1596465 m!5986352))

(assert (=> d!1596465 m!5986198))

(assert (=> d!1596465 m!5986132))

(declare-fun m!5986354 () Bool)

(assert (=> d!1596465 m!5986354))

(assert (=> b!4961807 m!5986132))

(assert (=> b!4961807 m!5986352))

(assert (=> b!4961807 m!5986198))

(assert (=> b!4961607 d!1596465))

(declare-fun d!1596467 () Bool)

(assert (=> d!1596467 (= (list!18337 totalInput!464) (list!18339 (c!846604 totalInput!464)))))

(declare-fun bs!1182749 () Bool)

(assert (= bs!1182749 d!1596467))

(declare-fun m!5986356 () Bool)

(assert (=> bs!1182749 m!5986356))

(assert (=> b!4961607 d!1596467))

(declare-fun d!1596469 () Bool)

(assert (=> d!1596469 (= (list!18337 input!1342) (list!18339 (c!846604 input!1342)))))

(declare-fun bs!1182750 () Bool)

(assert (= bs!1182750 d!1596469))

(declare-fun m!5986358 () Bool)

(assert (=> bs!1182750 m!5986358))

(assert (=> b!4961607 d!1596469))

(declare-fun b!4961823 () Bool)

(declare-fun e!3101437 () Bool)

(declare-fun tp!1391828 () Bool)

(declare-fun tp!1391829 () Bool)

(assert (=> b!4961823 (= e!3101437 (and tp!1391828 tp!1391829))))

(declare-fun b!4961824 () Bool)

(declare-fun tp!1391826 () Bool)

(assert (=> b!4961824 (= e!3101437 tp!1391826)))

(declare-fun b!4961822 () Bool)

(declare-fun tp_is_empty!36309 () Bool)

(assert (=> b!4961822 (= e!3101437 tp_is_empty!36309)))

(declare-fun b!4961825 () Bool)

(declare-fun tp!1391827 () Bool)

(declare-fun tp!1391825 () Bool)

(assert (=> b!4961825 (= e!3101437 (and tp!1391827 tp!1391825))))

(assert (=> b!4961614 (= tp!1391804 e!3101437)))

(assert (= (and b!4961614 ((_ is ElementMatch!13613) (regex!8380 (h!63852 rulesArg!259)))) b!4961822))

(assert (= (and b!4961614 ((_ is Concat!22303) (regex!8380 (h!63852 rulesArg!259)))) b!4961823))

(assert (= (and b!4961614 ((_ is Star!13613) (regex!8380 (h!63852 rulesArg!259)))) b!4961824))

(assert (= (and b!4961614 ((_ is Union!13613) (regex!8380 (h!63852 rulesArg!259)))) b!4961825))

(declare-fun b!4961830 () Bool)

(declare-fun e!3101440 () Bool)

(declare-fun tp!1391832 () Bool)

(assert (=> b!4961830 (= e!3101440 (and tp_is_empty!36309 tp!1391832))))

(assert (=> b!4961609 (= tp!1391803 e!3101440)))

(assert (= (and b!4961609 ((_ is Cons!57402) (originalCharacters!8661 (_1!34352 (v!50412 err!4569))))) b!4961830))

(declare-fun tp!1391840 () Bool)

(declare-fun tp!1391841 () Bool)

(declare-fun e!3101446 () Bool)

(declare-fun b!4961841 () Bool)

(assert (=> b!4961841 (= e!3101446 (and (inv!74978 (left!41856 (c!846604 totalInput!464))) tp!1391840 (inv!74978 (right!42186 (c!846604 totalInput!464))) tp!1391841))))

(declare-fun b!4961843 () Bool)

(declare-fun e!3101447 () Bool)

(declare-fun tp!1391839 () Bool)

(assert (=> b!4961843 (= e!3101447 tp!1391839)))

(declare-fun b!4961842 () Bool)

(declare-fun inv!74984 (IArray!30325) Bool)

(assert (=> b!4961842 (= e!3101446 (and (inv!74984 (xs!18458 (c!846604 totalInput!464))) e!3101447))))

(assert (=> b!4961615 (= tp!1391802 (and (inv!74978 (c!846604 totalInput!464)) e!3101446))))

(assert (= (and b!4961615 ((_ is Node!15132) (c!846604 totalInput!464))) b!4961841))

(assert (= b!4961842 b!4961843))

(assert (= (and b!4961615 ((_ is Leaf!25147) (c!846604 totalInput!464))) b!4961842))

(declare-fun m!5986360 () Bool)

(assert (=> b!4961841 m!5986360))

(declare-fun m!5986362 () Bool)

(assert (=> b!4961841 m!5986362))

(declare-fun m!5986364 () Bool)

(assert (=> b!4961842 m!5986364))

(assert (=> b!4961615 m!5986126))

(declare-fun b!4961857 () Bool)

(declare-fun b_free!132635 () Bool)

(declare-fun b_next!133425 () Bool)

(assert (=> b!4961857 (= b_free!132635 (not b_next!133425))))

(declare-fun tp!1391850 () Bool)

(declare-fun b_and!347495 () Bool)

(assert (=> b!4961857 (= tp!1391850 b_and!347495)))

(declare-fun b_free!132637 () Bool)

(declare-fun b_next!133427 () Bool)

(assert (=> b!4961857 (= b_free!132637 (not b_next!133427))))

(declare-fun t!368104 () Bool)

(declare-fun tb!260139 () Bool)

(assert (=> (and b!4961857 (= (toChars!11190 (transformation!8380 (h!63852 (t!368094 rulesArg!259)))) (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) t!368104) tb!260139))

(declare-fun result!325134 () Bool)

(assert (= result!325134 result!325120))

(assert (=> b!4961798 t!368104))

(declare-fun b_and!347497 () Bool)

(declare-fun tp!1391852 () Bool)

(assert (=> b!4961857 (= tp!1391852 (and (=> t!368104 result!325134) b_and!347497))))

(declare-fun e!3101458 () Bool)

(assert (=> b!4961857 (= e!3101458 (and tp!1391850 tp!1391852))))

(declare-fun tp!1391853 () Bool)

(declare-fun e!3101461 () Bool)

(declare-fun b!4961856 () Bool)

(assert (=> b!4961856 (= e!3101461 (and tp!1391853 (inv!74971 (tag!9244 (h!63852 (t!368094 rulesArg!259)))) (inv!74976 (transformation!8380 (h!63852 (t!368094 rulesArg!259)))) e!3101458))))

(declare-fun b!4961855 () Bool)

(declare-fun e!3101459 () Bool)

(declare-fun tp!1391851 () Bool)

(assert (=> b!4961855 (= e!3101459 (and e!3101461 tp!1391851))))

(assert (=> b!4961616 (= tp!1391805 e!3101459)))

(assert (= b!4961856 b!4961857))

(assert (= b!4961855 b!4961856))

(assert (= (and b!4961616 ((_ is Cons!57404) (t!368094 rulesArg!259))) b!4961855))

(declare-fun m!5986378 () Bool)

(assert (=> b!4961856 m!5986378))

(declare-fun m!5986380 () Bool)

(assert (=> b!4961856 m!5986380))

(declare-fun tp!1391856 () Bool)

(declare-fun tp!1391855 () Bool)

(declare-fun e!3101464 () Bool)

(declare-fun b!4961860 () Bool)

(assert (=> b!4961860 (= e!3101464 (and (inv!74978 (left!41856 (c!846604 input!1342))) tp!1391855 (inv!74978 (right!42186 (c!846604 input!1342))) tp!1391856))))

(declare-fun b!4961862 () Bool)

(declare-fun e!3101465 () Bool)

(declare-fun tp!1391854 () Bool)

(assert (=> b!4961862 (= e!3101465 tp!1391854)))

(declare-fun b!4961861 () Bool)

(assert (=> b!4961861 (= e!3101464 (and (inv!74984 (xs!18458 (c!846604 input!1342))) e!3101465))))

(assert (=> b!4961605 (= tp!1391800 (and (inv!74978 (c!846604 input!1342)) e!3101464))))

(assert (= (and b!4961605 ((_ is Node!15132) (c!846604 input!1342))) b!4961860))

(assert (= b!4961861 b!4961862))

(assert (= (and b!4961605 ((_ is Leaf!25147) (c!846604 input!1342))) b!4961861))

(declare-fun m!5986382 () Bool)

(assert (=> b!4961860 m!5986382))

(declare-fun m!5986384 () Bool)

(assert (=> b!4961860 m!5986384))

(declare-fun m!5986386 () Bool)

(assert (=> b!4961861 m!5986386))

(assert (=> b!4961605 m!5986156))

(declare-fun b!4961863 () Bool)

(declare-fun tp!1391858 () Bool)

(declare-fun tp!1391859 () Bool)

(declare-fun e!3101466 () Bool)

(assert (=> b!4961863 (= e!3101466 (and (inv!74978 (left!41856 (c!846604 (_2!34352 (v!50412 err!4569))))) tp!1391858 (inv!74978 (right!42186 (c!846604 (_2!34352 (v!50412 err!4569))))) tp!1391859))))

(declare-fun b!4961865 () Bool)

(declare-fun e!3101467 () Bool)

(declare-fun tp!1391857 () Bool)

(assert (=> b!4961865 (= e!3101467 tp!1391857)))

(declare-fun b!4961864 () Bool)

(assert (=> b!4961864 (= e!3101466 (and (inv!74984 (xs!18458 (c!846604 (_2!34352 (v!50412 err!4569))))) e!3101467))))

(assert (=> b!4961611 (= tp!1391799 (and (inv!74978 (c!846604 (_2!34352 (v!50412 err!4569)))) e!3101466))))

(assert (= (and b!4961611 ((_ is Node!15132) (c!846604 (_2!34352 (v!50412 err!4569))))) b!4961863))

(assert (= b!4961864 b!4961865))

(assert (= (and b!4961611 ((_ is Leaf!25147) (c!846604 (_2!34352 (v!50412 err!4569))))) b!4961864))

(declare-fun m!5986388 () Bool)

(assert (=> b!4961863 m!5986388))

(declare-fun m!5986390 () Bool)

(assert (=> b!4961863 m!5986390))

(declare-fun m!5986392 () Bool)

(assert (=> b!4961864 m!5986392))

(assert (=> b!4961611 m!5986122))

(declare-fun b!4961867 () Bool)

(declare-fun e!3101468 () Bool)

(declare-fun tp!1391863 () Bool)

(declare-fun tp!1391864 () Bool)

(assert (=> b!4961867 (= e!3101468 (and tp!1391863 tp!1391864))))

(declare-fun b!4961868 () Bool)

(declare-fun tp!1391861 () Bool)

(assert (=> b!4961868 (= e!3101468 tp!1391861)))

(declare-fun b!4961866 () Bool)

(assert (=> b!4961866 (= e!3101468 tp_is_empty!36309)))

(declare-fun b!4961869 () Bool)

(declare-fun tp!1391862 () Bool)

(declare-fun tp!1391860 () Bool)

(assert (=> b!4961869 (= e!3101468 (and tp!1391862 tp!1391860))))

(assert (=> b!4961602 (= tp!1391806 e!3101468)))

(assert (= (and b!4961602 ((_ is ElementMatch!13613) (regex!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) b!4961866))

(assert (= (and b!4961602 ((_ is Concat!22303) (regex!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) b!4961867))

(assert (= (and b!4961602 ((_ is Star!13613) (regex!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) b!4961868))

(assert (= (and b!4961602 ((_ is Union!13613) (regex!8380 (rule!11612 (_1!34352 (v!50412 err!4569)))))) b!4961869))

(declare-fun b_lambda!196449 () Bool)

(assert (= b_lambda!196447 (or (and b!4961608 b_free!132629) (and b!4961599 b_free!132633 (= (toChars!11190 (transformation!8380 (h!63852 rulesArg!259))) (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))))) (and b!4961857 b_free!132637 (= (toChars!11190 (transformation!8380 (h!63852 (t!368094 rulesArg!259)))) (toChars!11190 (transformation!8380 (rule!11612 (_1!34352 (v!50412 err!4569))))))) b_lambda!196449)))

(check-sat (not b!4961804) (not b!4961737) (not b!4961631) (not b!4961789) (not b!4961744) (not b_next!133427) (not b!4961843) (not bm!346028) (not b!4961823) (not b!4961657) (not b!4961611) (not b!4961830) (not b!4961842) (not b!4961629) (not b!4961860) (not b!4961790) (not b!4961799) (not d!1596433) (not b!4961865) (not b!4961730) (not b!4961863) (not b!4961792) (not d!1596467) (not b_next!133417) (not d!1596469) (not b_next!133421) (not b!4961862) (not b_next!133423) b_and!347491 (not b!4961605) (not b!4961825) (not d!1596407) (not b!4961747) (not b!4961658) (not b!4961785) (not b!4961697) (not d!1596465) b_and!347497 (not b!4961672) (not b!4961786) (not d!1596405) (not d!1596447) (not d!1596463) (not d!1596387) (not b_lambda!196449) (not b!4961855) (not d!1596461) (not b!4961674) (not d!1596409) (not b!4961868) (not b!4961864) (not d!1596443) b_and!347495 (not b!4961736) (not b!4961867) (not b!4961787) (not b!4961793) (not tb!260135) b_and!347493 (not b!4961673) (not d!1596391) (not b!4961861) (not b!4961695) tp_is_empty!36309 (not b!4961615) (not d!1596449) (not b!4961869) (not b!4961749) (not d!1596397) (not b!4961630) (not b_next!133425) (not b!4961824) (not b!4961746) b_and!347483 (not d!1596393) (not b!4961856) (not b!4961807) (not b!4961841) (not bm!346031) (not d!1596425) (not b_next!133419) (not b!4961791) b_and!347479 (not b!4961798))
(check-sat (not b_next!133427) (not b_next!133417) (not b_next!133421) b_and!347497 b_and!347495 b_and!347493 (not b_next!133425) b_and!347483 (not b_next!133423) b_and!347491 b_and!347479 (not b_next!133419))
