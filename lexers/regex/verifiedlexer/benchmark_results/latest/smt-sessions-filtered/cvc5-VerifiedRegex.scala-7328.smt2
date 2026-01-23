; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389874 () Bool)

(assert start!389874)

(declare-fun b!4114382 () Bool)

(declare-fun b_free!115871 () Bool)

(declare-fun b_next!116575 () Bool)

(assert (=> b!4114382 (= b_free!115871 (not b_next!116575))))

(declare-fun tp!1252853 () Bool)

(declare-fun b_and!317757 () Bool)

(assert (=> b!4114382 (= tp!1252853 b_and!317757)))

(declare-fun b_free!115873 () Bool)

(declare-fun b_next!116577 () Bool)

(assert (=> b!4114382 (= b_free!115873 (not b_next!116577))))

(declare-fun tp!1252852 () Bool)

(declare-fun b_and!317759 () Bool)

(assert (=> b!4114382 (= tp!1252852 b_and!317759)))

(declare-fun e!2552674 () Bool)

(assert (=> b!4114382 (= e!2552674 (and tp!1252853 tp!1252852))))

(declare-fun tp!1252856 () Bool)

(declare-fun b!4114383 () Bool)

(declare-datatypes ((List!44508 0))(
  ( (Nil!44384) (Cons!44384 (h!49804 (_ BitVec 16)) (t!340259 List!44508)) )
))
(declare-datatypes ((TokenValue!7457 0))(
  ( (FloatLiteralValue!14914 (text!52644 List!44508)) (TokenValueExt!7456 (__x!27131 Int)) (Broken!37285 (value!226517 List!44508)) (Object!7580) (End!7457) (Def!7457) (Underscore!7457) (Match!7457) (Else!7457) (Error!7457) (Case!7457) (If!7457) (Extends!7457) (Abstract!7457) (Class!7457) (Val!7457) (DelimiterValue!14914 (del!7517 List!44508)) (KeywordValue!7463 (value!226518 List!44508)) (CommentValue!14914 (value!226519 List!44508)) (WhitespaceValue!14914 (value!226520 List!44508)) (IndentationValue!7457 (value!226521 List!44508)) (String!51036) (Int32!7457) (Broken!37286 (value!226522 List!44508)) (Boolean!7458) (Unit!63761) (OperatorValue!7460 (op!7517 List!44508)) (IdentifierValue!14914 (value!226523 List!44508)) (IdentifierValue!14915 (value!226524 List!44508)) (WhitespaceValue!14915 (value!226525 List!44508)) (True!14914) (False!14914) (Broken!37287 (value!226526 List!44508)) (Broken!37288 (value!226527 List!44508)) (True!14915) (RightBrace!7457) (RightBracket!7457) (Colon!7457) (Null!7457) (Comma!7457) (LeftBracket!7457) (False!14915) (LeftBrace!7457) (ImaginaryLiteralValue!7457 (text!52645 List!44508)) (StringLiteralValue!22371 (value!226528 List!44508)) (EOFValue!7457 (value!226529 List!44508)) (IdentValue!7457 (value!226530 List!44508)) (DelimiterValue!14915 (value!226531 List!44508)) (DedentValue!7457 (value!226532 List!44508)) (NewLineValue!7457 (value!226533 List!44508)) (IntegerValue!22371 (value!226534 (_ BitVec 32)) (text!52646 List!44508)) (IntegerValue!22372 (value!226535 Int) (text!52647 List!44508)) (Times!7457) (Or!7457) (Equal!7457) (Minus!7457) (Broken!37289 (value!226536 List!44508)) (And!7457) (Div!7457) (LessEqual!7457) (Mod!7457) (Concat!19589) (Not!7457) (Plus!7457) (SpaceValue!7457 (value!226537 List!44508)) (IntegerValue!22373 (value!226538 Int) (text!52648 List!44508)) (StringLiteralValue!22372 (text!52649 List!44508)) (FloatLiteralValue!14915 (text!52650 List!44508)) (BytesLiteralValue!7457 (value!226539 List!44508)) (CommentValue!14915 (value!226540 List!44508)) (StringLiteralValue!22373 (value!226541 List!44508)) (ErrorTokenValue!7457 (msg!7518 List!44508)) )
))
(declare-datatypes ((C!24450 0))(
  ( (C!24451 (val!14335 Int)) )
))
(declare-datatypes ((List!44509 0))(
  ( (Nil!44385) (Cons!44385 (h!49805 C!24450) (t!340260 List!44509)) )
))
(declare-datatypes ((IArray!26881 0))(
  ( (IArray!26882 (innerList!13498 List!44509)) )
))
(declare-datatypes ((Conc!13438 0))(
  ( (Node!13438 (left!33262 Conc!13438) (right!33592 Conc!13438) (csize!27106 Int) (cheight!13649 Int)) (Leaf!20767 (xs!16744 IArray!26881) (csize!27107 Int)) (Empty!13438) )
))
(declare-datatypes ((BalanceConc!26470 0))(
  ( (BalanceConc!26471 (c!706998 Conc!13438)) )
))
(declare-datatypes ((TokenValueInjection!14342 0))(
  ( (TokenValueInjection!14343 (toValue!9871 Int) (toChars!9730 Int)) )
))
(declare-datatypes ((Regex!12132 0))(
  ( (ElementMatch!12132 (c!706999 C!24450)) (Concat!19590 (regOne!24776 Regex!12132) (regTwo!24776 Regex!12132)) (EmptyExpr!12132) (Star!12132 (reg!12461 Regex!12132)) (EmptyLang!12132) (Union!12132 (regOne!24777 Regex!12132) (regTwo!24777 Regex!12132)) )
))
(declare-datatypes ((String!51037 0))(
  ( (String!51038 (value!226542 String)) )
))
(declare-datatypes ((Rule!14254 0))(
  ( (Rule!14255 (regex!7227 Regex!12132) (tag!8087 String!51037) (isSeparator!7227 Bool) (transformation!7227 TokenValueInjection!14342)) )
))
(declare-datatypes ((List!44510 0))(
  ( (Nil!44386) (Cons!44386 (h!49806 Rule!14254) (t!340261 List!44510)) )
))
(declare-fun l!6467 () List!44510)

(declare-fun e!2552666 () Bool)

(declare-fun inv!58977 (String!51037) Bool)

(declare-fun inv!58980 (TokenValueInjection!14342) Bool)

(assert (=> b!4114383 (= e!2552666 (and tp!1252856 (inv!58977 (tag!8087 (h!49806 l!6467))) (inv!58980 (transformation!7227 (h!49806 l!6467))) e!2552674))))

(declare-fun b!4114384 () Bool)

(declare-fun e!2552670 () Bool)

(declare-fun e!2552669 () Bool)

(assert (=> b!4114384 (= e!2552670 e!2552669)))

(declare-fun res!1680492 () Bool)

(assert (=> b!4114384 (=> (not res!1680492) (not e!2552669))))

(declare-datatypes ((List!44511 0))(
  ( (Nil!44387) (Cons!44387 (h!49807 String!51037) (t!340262 List!44511)) )
))
(declare-fun newAcc!81 () List!44511)

(declare-fun acc!555 () List!44511)

(declare-fun contains!8895 (List!44511 String!51037) Bool)

(assert (=> b!4114384 (= res!1680492 (= (contains!8895 acc!555 (tag!8087 (h!49806 l!6467))) (contains!8895 newAcc!81 (tag!8087 (h!49806 l!6467)))))))

(declare-datatypes ((Unit!63762 0))(
  ( (Unit!63763) )
))
(declare-fun lt!1468546 () Unit!63762)

(declare-fun subsetContains!87 (List!44511 List!44511) Unit!63762)

(assert (=> b!4114384 (= lt!1468546 (subsetContains!87 newAcc!81 acc!555))))

(declare-fun lt!1468547 () Unit!63762)

(assert (=> b!4114384 (= lt!1468547 (subsetContains!87 acc!555 newAcc!81))))

(declare-fun b!4114385 () Bool)

(declare-fun res!1680489 () Bool)

(assert (=> b!4114385 (=> (not res!1680489) (not e!2552670))))

(declare-datatypes ((LexerInterface!6816 0))(
  ( (LexerInterfaceExt!6813 (__x!27132 Int)) (Lexer!6814) )
))
(declare-fun thiss!26911 () LexerInterface!6816)

(declare-fun noDuplicateTag!2904 (LexerInterface!6816 List!44510 List!44511) Bool)

(assert (=> b!4114385 (= res!1680489 (noDuplicateTag!2904 thiss!26911 l!6467 acc!555))))

(declare-fun b!4114386 () Bool)

(declare-fun res!1680488 () Bool)

(assert (=> b!4114386 (=> (not res!1680488) (not e!2552670))))

(assert (=> b!4114386 (= res!1680488 (is-Cons!44386 l!6467))))

(declare-fun res!1680490 () Bool)

(assert (=> start!389874 (=> (not res!1680490) (not e!2552670))))

(assert (=> start!389874 (= res!1680490 (is-Lexer!6814 thiss!26911))))

(assert (=> start!389874 e!2552670))

(assert (=> start!389874 true))

(declare-fun e!2552665 () Bool)

(assert (=> start!389874 e!2552665))

(declare-fun e!2552671 () Bool)

(assert (=> start!389874 e!2552671))

(declare-fun e!2552673 () Bool)

(assert (=> start!389874 e!2552673))

(declare-fun b!4114387 () Bool)

(declare-fun res!1680487 () Bool)

(assert (=> b!4114387 (=> (not res!1680487) (not e!2552670))))

(declare-fun content!6845 (List!44511) (Set String!51037))

(assert (=> b!4114387 (= res!1680487 (= (content!6845 acc!555) (content!6845 newAcc!81)))))

(declare-fun b!4114388 () Bool)

(declare-fun tp!1252854 () Bool)

(assert (=> b!4114388 (= e!2552665 (and e!2552666 tp!1252854))))

(declare-fun b!4114389 () Bool)

(declare-fun tp!1252855 () Bool)

(assert (=> b!4114389 (= e!2552673 (and (inv!58977 (h!49807 newAcc!81)) tp!1252855))))

(declare-fun b!4114390 () Bool)

(declare-fun tp!1252851 () Bool)

(assert (=> b!4114390 (= e!2552671 (and (inv!58977 (h!49807 acc!555)) tp!1252851))))

(declare-fun b!4114391 () Bool)

(declare-fun e!2552672 () Bool)

(assert (=> b!4114391 (= e!2552669 e!2552672)))

(declare-fun res!1680491 () Bool)

(assert (=> b!4114391 (=> (not res!1680491) (not e!2552672))))

(declare-fun lt!1468548 () List!44511)

(assert (=> b!4114391 (= res!1680491 (noDuplicateTag!2904 thiss!26911 (t!340261 l!6467) lt!1468548))))

(assert (=> b!4114391 (= lt!1468548 (Cons!44387 (tag!8087 (h!49806 l!6467)) acc!555))))

(declare-fun b!4114392 () Bool)

(assert (=> b!4114392 (= e!2552672 (not (= (content!6845 lt!1468548) (content!6845 (Cons!44387 (tag!8087 (h!49806 l!6467)) newAcc!81)))))))

(assert (= (and start!389874 res!1680490) b!4114385))

(assert (= (and b!4114385 res!1680489) b!4114387))

(assert (= (and b!4114387 res!1680487) b!4114386))

(assert (= (and b!4114386 res!1680488) b!4114384))

(assert (= (and b!4114384 res!1680492) b!4114391))

(assert (= (and b!4114391 res!1680491) b!4114392))

(assert (= b!4114383 b!4114382))

(assert (= b!4114388 b!4114383))

(assert (= (and start!389874 (is-Cons!44386 l!6467)) b!4114388))

(assert (= (and start!389874 (is-Cons!44387 acc!555)) b!4114390))

(assert (= (and start!389874 (is-Cons!44387 newAcc!81)) b!4114389))

(declare-fun m!4714813 () Bool)

(assert (=> b!4114389 m!4714813))

(declare-fun m!4714815 () Bool)

(assert (=> b!4114391 m!4714815))

(declare-fun m!4714817 () Bool)

(assert (=> b!4114390 m!4714817))

(declare-fun m!4714819 () Bool)

(assert (=> b!4114383 m!4714819))

(declare-fun m!4714821 () Bool)

(assert (=> b!4114383 m!4714821))

(declare-fun m!4714823 () Bool)

(assert (=> b!4114384 m!4714823))

(declare-fun m!4714825 () Bool)

(assert (=> b!4114384 m!4714825))

(declare-fun m!4714827 () Bool)

(assert (=> b!4114384 m!4714827))

(declare-fun m!4714829 () Bool)

(assert (=> b!4114384 m!4714829))

(declare-fun m!4714831 () Bool)

(assert (=> b!4114385 m!4714831))

(declare-fun m!4714833 () Bool)

(assert (=> b!4114387 m!4714833))

(declare-fun m!4714835 () Bool)

(assert (=> b!4114387 m!4714835))

(declare-fun m!4714837 () Bool)

(assert (=> b!4114392 m!4714837))

(declare-fun m!4714839 () Bool)

(assert (=> b!4114392 m!4714839))

(push 1)

(assert (not b!4114383))

(assert (not b!4114385))

(assert (not b!4114384))

(assert (not b!4114388))

(assert (not b!4114389))

(assert b_and!317757)

(assert (not b_next!116575))

(assert b_and!317759)

(assert (not b!4114387))

(assert (not b!4114390))

(assert (not b!4114391))

(assert (not b!4114392))

(assert (not b_next!116577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317759)

(assert b_and!317757)

(assert (not b_next!116577))

(assert (not b_next!116575))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220409 () Bool)

(declare-fun res!1680519 () Bool)

(declare-fun e!2552712 () Bool)

(assert (=> d!1220409 (=> res!1680519 e!2552712)))

(assert (=> d!1220409 (= res!1680519 (is-Nil!44386 l!6467))))

(assert (=> d!1220409 (= (noDuplicateTag!2904 thiss!26911 l!6467 acc!555) e!2552712)))

(declare-fun b!4114430 () Bool)

(declare-fun e!2552713 () Bool)

(assert (=> b!4114430 (= e!2552712 e!2552713)))

(declare-fun res!1680520 () Bool)

(assert (=> b!4114430 (=> (not res!1680520) (not e!2552713))))

(assert (=> b!4114430 (= res!1680520 (not (contains!8895 acc!555 (tag!8087 (h!49806 l!6467)))))))

(declare-fun b!4114431 () Bool)

(assert (=> b!4114431 (= e!2552713 (noDuplicateTag!2904 thiss!26911 (t!340261 l!6467) (Cons!44387 (tag!8087 (h!49806 l!6467)) acc!555)))))

(assert (= (and d!1220409 (not res!1680519)) b!4114430))

(assert (= (and b!4114430 res!1680520) b!4114431))

(assert (=> b!4114430 m!4714823))

(declare-fun m!4714869 () Bool)

(assert (=> b!4114431 m!4714869))

(assert (=> b!4114385 d!1220409))

(declare-fun d!1220411 () Bool)

(assert (=> d!1220411 (= (inv!58977 (h!49807 acc!555)) (= (mod (str.len (value!226542 (h!49807 acc!555))) 2) 0))))

(assert (=> b!4114390 d!1220411))

(declare-fun d!1220413 () Bool)

(declare-fun c!707004 () Bool)

(assert (=> d!1220413 (= c!707004 (is-Nil!44387 lt!1468548))))

(declare-fun e!2552716 () (Set String!51037))

(assert (=> d!1220413 (= (content!6845 lt!1468548) e!2552716)))

(declare-fun b!4114436 () Bool)

(assert (=> b!4114436 (= e!2552716 (as set.empty (Set String!51037)))))

(declare-fun b!4114437 () Bool)

(assert (=> b!4114437 (= e!2552716 (set.union (set.insert (h!49807 lt!1468548) (as set.empty (Set String!51037))) (content!6845 (t!340262 lt!1468548))))))

(assert (= (and d!1220413 c!707004) b!4114436))

(assert (= (and d!1220413 (not c!707004)) b!4114437))

(declare-fun m!4714871 () Bool)

(assert (=> b!4114437 m!4714871))

(declare-fun m!4714873 () Bool)

(assert (=> b!4114437 m!4714873))

(assert (=> b!4114392 d!1220413))

(declare-fun d!1220417 () Bool)

(declare-fun c!707005 () Bool)

(assert (=> d!1220417 (= c!707005 (is-Nil!44387 (Cons!44387 (tag!8087 (h!49806 l!6467)) newAcc!81)))))

(declare-fun e!2552717 () (Set String!51037))

(assert (=> d!1220417 (= (content!6845 (Cons!44387 (tag!8087 (h!49806 l!6467)) newAcc!81)) e!2552717)))

(declare-fun b!4114438 () Bool)

(assert (=> b!4114438 (= e!2552717 (as set.empty (Set String!51037)))))

(declare-fun b!4114439 () Bool)

(assert (=> b!4114439 (= e!2552717 (set.union (set.insert (h!49807 (Cons!44387 (tag!8087 (h!49806 l!6467)) newAcc!81)) (as set.empty (Set String!51037))) (content!6845 (t!340262 (Cons!44387 (tag!8087 (h!49806 l!6467)) newAcc!81)))))))

(assert (= (and d!1220417 c!707005) b!4114438))

(assert (= (and d!1220417 (not c!707005)) b!4114439))

(declare-fun m!4714875 () Bool)

(assert (=> b!4114439 m!4714875))

(declare-fun m!4714877 () Bool)

(assert (=> b!4114439 m!4714877))

(assert (=> b!4114392 d!1220417))

(declare-fun d!1220419 () Bool)

(declare-fun res!1680521 () Bool)

(declare-fun e!2552718 () Bool)

(assert (=> d!1220419 (=> res!1680521 e!2552718)))

(assert (=> d!1220419 (= res!1680521 (is-Nil!44386 (t!340261 l!6467)))))

(assert (=> d!1220419 (= (noDuplicateTag!2904 thiss!26911 (t!340261 l!6467) lt!1468548) e!2552718)))

(declare-fun b!4114440 () Bool)

(declare-fun e!2552719 () Bool)

(assert (=> b!4114440 (= e!2552718 e!2552719)))

(declare-fun res!1680522 () Bool)

(assert (=> b!4114440 (=> (not res!1680522) (not e!2552719))))

(assert (=> b!4114440 (= res!1680522 (not (contains!8895 lt!1468548 (tag!8087 (h!49806 (t!340261 l!6467))))))))

(declare-fun b!4114441 () Bool)

(assert (=> b!4114441 (= e!2552719 (noDuplicateTag!2904 thiss!26911 (t!340261 (t!340261 l!6467)) (Cons!44387 (tag!8087 (h!49806 (t!340261 l!6467))) lt!1468548)))))

(assert (= (and d!1220419 (not res!1680521)) b!4114440))

(assert (= (and b!4114440 res!1680522) b!4114441))

(declare-fun m!4714879 () Bool)

(assert (=> b!4114440 m!4714879))

(declare-fun m!4714881 () Bool)

(assert (=> b!4114441 m!4714881))

(assert (=> b!4114391 d!1220419))

(declare-fun d!1220421 () Bool)

(declare-fun c!707006 () Bool)

(assert (=> d!1220421 (= c!707006 (is-Nil!44387 acc!555))))

(declare-fun e!2552720 () (Set String!51037))

(assert (=> d!1220421 (= (content!6845 acc!555) e!2552720)))

(declare-fun b!4114442 () Bool)

(assert (=> b!4114442 (= e!2552720 (as set.empty (Set String!51037)))))

(declare-fun b!4114443 () Bool)

(assert (=> b!4114443 (= e!2552720 (set.union (set.insert (h!49807 acc!555) (as set.empty (Set String!51037))) (content!6845 (t!340262 acc!555))))))

(assert (= (and d!1220421 c!707006) b!4114442))

(assert (= (and d!1220421 (not c!707006)) b!4114443))

(declare-fun m!4714883 () Bool)

(assert (=> b!4114443 m!4714883))

(declare-fun m!4714885 () Bool)

(assert (=> b!4114443 m!4714885))

(assert (=> b!4114387 d!1220421))

(declare-fun d!1220423 () Bool)

(declare-fun c!707007 () Bool)

(assert (=> d!1220423 (= c!707007 (is-Nil!44387 newAcc!81))))

(declare-fun e!2552721 () (Set String!51037))

(assert (=> d!1220423 (= (content!6845 newAcc!81) e!2552721)))

(declare-fun b!4114444 () Bool)

(assert (=> b!4114444 (= e!2552721 (as set.empty (Set String!51037)))))

(declare-fun b!4114445 () Bool)

(assert (=> b!4114445 (= e!2552721 (set.union (set.insert (h!49807 newAcc!81) (as set.empty (Set String!51037))) (content!6845 (t!340262 newAcc!81))))))

(assert (= (and d!1220423 c!707007) b!4114444))

(assert (= (and d!1220423 (not c!707007)) b!4114445))

(declare-fun m!4714887 () Bool)

(assert (=> b!4114445 m!4714887))

(declare-fun m!4714889 () Bool)

(assert (=> b!4114445 m!4714889))

(assert (=> b!4114387 d!1220423))

(declare-fun d!1220425 () Bool)

(assert (=> d!1220425 (= (inv!58977 (h!49807 newAcc!81)) (= (mod (str.len (value!226542 (h!49807 newAcc!81))) 2) 0))))

(assert (=> b!4114389 d!1220425))

(declare-fun d!1220427 () Bool)

(declare-fun lt!1468560 () Bool)

(assert (=> d!1220427 (= lt!1468560 (set.member (tag!8087 (h!49806 l!6467)) (content!6845 acc!555)))))

(declare-fun e!2552729 () Bool)

(assert (=> d!1220427 (= lt!1468560 e!2552729)))

(declare-fun res!1680528 () Bool)

(assert (=> d!1220427 (=> (not res!1680528) (not e!2552729))))

(assert (=> d!1220427 (= res!1680528 (is-Cons!44387 acc!555))))

(assert (=> d!1220427 (= (contains!8895 acc!555 (tag!8087 (h!49806 l!6467))) lt!1468560)))

(declare-fun b!4114456 () Bool)

(declare-fun e!2552730 () Bool)

(assert (=> b!4114456 (= e!2552729 e!2552730)))

(declare-fun res!1680527 () Bool)

(assert (=> b!4114456 (=> res!1680527 e!2552730)))

(assert (=> b!4114456 (= res!1680527 (= (h!49807 acc!555) (tag!8087 (h!49806 l!6467))))))

(declare-fun b!4114457 () Bool)

(assert (=> b!4114457 (= e!2552730 (contains!8895 (t!340262 acc!555) (tag!8087 (h!49806 l!6467))))))

(assert (= (and d!1220427 res!1680528) b!4114456))

(assert (= (and b!4114456 (not res!1680527)) b!4114457))

(assert (=> d!1220427 m!4714833))

(declare-fun m!4714895 () Bool)

(assert (=> d!1220427 m!4714895))

(declare-fun m!4714897 () Bool)

(assert (=> b!4114457 m!4714897))

(assert (=> b!4114384 d!1220427))

(declare-fun d!1220431 () Bool)

(declare-fun lt!1468561 () Bool)

(assert (=> d!1220431 (= lt!1468561 (set.member (tag!8087 (h!49806 l!6467)) (content!6845 newAcc!81)))))

(declare-fun e!2552732 () Bool)

(assert (=> d!1220431 (= lt!1468561 e!2552732)))

(declare-fun res!1680530 () Bool)

(assert (=> d!1220431 (=> (not res!1680530) (not e!2552732))))

(assert (=> d!1220431 (= res!1680530 (is-Cons!44387 newAcc!81))))

(assert (=> d!1220431 (= (contains!8895 newAcc!81 (tag!8087 (h!49806 l!6467))) lt!1468561)))

(declare-fun b!4114460 () Bool)

(declare-fun e!2552733 () Bool)

(assert (=> b!4114460 (= e!2552732 e!2552733)))

(declare-fun res!1680529 () Bool)

(assert (=> b!4114460 (=> res!1680529 e!2552733)))

(assert (=> b!4114460 (= res!1680529 (= (h!49807 newAcc!81) (tag!8087 (h!49806 l!6467))))))

(declare-fun b!4114461 () Bool)

(assert (=> b!4114461 (= e!2552733 (contains!8895 (t!340262 newAcc!81) (tag!8087 (h!49806 l!6467))))))

(assert (= (and d!1220431 res!1680530) b!4114460))

(assert (= (and b!4114460 (not res!1680529)) b!4114461))

(assert (=> d!1220431 m!4714835))

(declare-fun m!4714903 () Bool)

(assert (=> d!1220431 m!4714903))

(declare-fun m!4714905 () Bool)

(assert (=> b!4114461 m!4714905))

(assert (=> b!4114384 d!1220431))

(declare-fun d!1220435 () Bool)

(assert (=> d!1220435 true))

(declare-fun lambda!128546 () Int)

(declare-fun forall!8439 (List!44511 Int) Bool)

(assert (=> d!1220435 (forall!8439 newAcc!81 lambda!128546)))

(declare-fun lt!1468570 () Unit!63762)

(declare-fun choose!25149 (List!44511 List!44511) Unit!63762)

(assert (=> d!1220435 (= lt!1468570 (choose!25149 newAcc!81 acc!555))))

(assert (=> d!1220435 (set.subset (content!6845 newAcc!81) (content!6845 acc!555))))

(assert (=> d!1220435 (= (subsetContains!87 newAcc!81 acc!555) lt!1468570)))

(declare-fun bs!594481 () Bool)

(assert (= bs!594481 d!1220435))

(declare-fun m!4714933 () Bool)

(assert (=> bs!594481 m!4714933))

(declare-fun m!4714935 () Bool)

(assert (=> bs!594481 m!4714935))

(assert (=> bs!594481 m!4714835))

(assert (=> bs!594481 m!4714833))

(assert (=> b!4114384 d!1220435))

(declare-fun bs!594482 () Bool)

(declare-fun d!1220457 () Bool)

(assert (= bs!594482 (and d!1220457 d!1220435)))

(declare-fun lambda!128547 () Int)

(assert (=> bs!594482 (= (= newAcc!81 acc!555) (= lambda!128547 lambda!128546))))

(assert (=> d!1220457 true))

(assert (=> d!1220457 (forall!8439 acc!555 lambda!128547)))

(declare-fun lt!1468571 () Unit!63762)

(assert (=> d!1220457 (= lt!1468571 (choose!25149 acc!555 newAcc!81))))

(assert (=> d!1220457 (set.subset (content!6845 acc!555) (content!6845 newAcc!81))))

(assert (=> d!1220457 (= (subsetContains!87 acc!555 newAcc!81) lt!1468571)))

(declare-fun bs!594483 () Bool)

(assert (= bs!594483 d!1220457))

(declare-fun m!4714937 () Bool)

(assert (=> bs!594483 m!4714937))

(declare-fun m!4714939 () Bool)

(assert (=> bs!594483 m!4714939))

(assert (=> bs!594483 m!4714833))

(assert (=> bs!594483 m!4714835))

(assert (=> b!4114384 d!1220457))

(declare-fun d!1220459 () Bool)

(assert (=> d!1220459 (= (inv!58977 (tag!8087 (h!49806 l!6467))) (= (mod (str.len (value!226542 (tag!8087 (h!49806 l!6467)))) 2) 0))))

(assert (=> b!4114383 d!1220459))

(declare-fun d!1220461 () Bool)

(declare-fun res!1680552 () Bool)

(declare-fun e!2552757 () Bool)

(assert (=> d!1220461 (=> (not res!1680552) (not e!2552757))))

(declare-fun semiInverseModEq!3115 (Int Int) Bool)

(assert (=> d!1220461 (= res!1680552 (semiInverseModEq!3115 (toChars!9730 (transformation!7227 (h!49806 l!6467))) (toValue!9871 (transformation!7227 (h!49806 l!6467)))))))

(assert (=> d!1220461 (= (inv!58980 (transformation!7227 (h!49806 l!6467))) e!2552757)))

(declare-fun b!4114489 () Bool)

(declare-fun equivClasses!3014 (Int Int) Bool)

(assert (=> b!4114489 (= e!2552757 (equivClasses!3014 (toChars!9730 (transformation!7227 (h!49806 l!6467))) (toValue!9871 (transformation!7227 (h!49806 l!6467)))))))

(assert (= (and d!1220461 res!1680552) b!4114489))

(declare-fun m!4714941 () Bool)

(assert (=> d!1220461 m!4714941))

(declare-fun m!4714943 () Bool)

(assert (=> b!4114489 m!4714943))

(assert (=> b!4114383 d!1220461))

(declare-fun b!4114494 () Bool)

(declare-fun e!2552762 () Bool)

(declare-fun tp!1252877 () Bool)

(assert (=> b!4114494 (= e!2552762 (and (inv!58977 (h!49807 (t!340262 acc!555))) tp!1252877))))

(assert (=> b!4114390 (= tp!1252851 e!2552762)))

(assert (= (and b!4114390 (is-Cons!44387 (t!340262 acc!555))) b!4114494))

(declare-fun m!4714945 () Bool)

(assert (=> b!4114494 m!4714945))

(declare-fun b!4114505 () Bool)

(declare-fun b_free!115879 () Bool)

(declare-fun b_next!116583 () Bool)

(assert (=> b!4114505 (= b_free!115879 (not b_next!116583))))

(declare-fun tp!1252886 () Bool)

(declare-fun b_and!317765 () Bool)

(assert (=> b!4114505 (= tp!1252886 b_and!317765)))

(declare-fun b_free!115881 () Bool)

(declare-fun b_next!116585 () Bool)

(assert (=> b!4114505 (= b_free!115881 (not b_next!116585))))

(declare-fun tp!1252889 () Bool)

(declare-fun b_and!317767 () Bool)

(assert (=> b!4114505 (= tp!1252889 b_and!317767)))

(declare-fun e!2552774 () Bool)

(assert (=> b!4114505 (= e!2552774 (and tp!1252886 tp!1252889))))

(declare-fun e!2552773 () Bool)

(declare-fun b!4114504 () Bool)

(declare-fun tp!1252887 () Bool)

(assert (=> b!4114504 (= e!2552773 (and tp!1252887 (inv!58977 (tag!8087 (h!49806 (t!340261 l!6467)))) (inv!58980 (transformation!7227 (h!49806 (t!340261 l!6467)))) e!2552774))))

(declare-fun b!4114503 () Bool)

(declare-fun e!2552772 () Bool)

(declare-fun tp!1252888 () Bool)

(assert (=> b!4114503 (= e!2552772 (and e!2552773 tp!1252888))))

(assert (=> b!4114388 (= tp!1252854 e!2552772)))

(assert (= b!4114504 b!4114505))

(assert (= b!4114503 b!4114504))

(assert (= (and b!4114388 (is-Cons!44386 (t!340261 l!6467))) b!4114503))

(declare-fun m!4714947 () Bool)

(assert (=> b!4114504 m!4714947))

(declare-fun m!4714949 () Bool)

(assert (=> b!4114504 m!4714949))

(declare-fun b!4114506 () Bool)

(declare-fun e!2552776 () Bool)

(declare-fun tp!1252890 () Bool)

(assert (=> b!4114506 (= e!2552776 (and (inv!58977 (h!49807 (t!340262 newAcc!81))) tp!1252890))))

(assert (=> b!4114389 (= tp!1252855 e!2552776)))

(assert (= (and b!4114389 (is-Cons!44387 (t!340262 newAcc!81))) b!4114506))

(declare-fun m!4714951 () Bool)

(assert (=> b!4114506 m!4714951))

(declare-fun b!4114519 () Bool)

(declare-fun e!2552780 () Bool)

(declare-fun tp!1252902 () Bool)

(assert (=> b!4114519 (= e!2552780 tp!1252902)))

(declare-fun b!4114518 () Bool)

(declare-fun tp!1252904 () Bool)

(declare-fun tp!1252905 () Bool)

(assert (=> b!4114518 (= e!2552780 (and tp!1252904 tp!1252905))))

(declare-fun b!4114517 () Bool)

(declare-fun tp_is_empty!21187 () Bool)

(assert (=> b!4114517 (= e!2552780 tp_is_empty!21187)))

(assert (=> b!4114383 (= tp!1252856 e!2552780)))

(declare-fun b!4114520 () Bool)

(declare-fun tp!1252901 () Bool)

(declare-fun tp!1252903 () Bool)

(assert (=> b!4114520 (= e!2552780 (and tp!1252901 tp!1252903))))

(assert (= (and b!4114383 (is-ElementMatch!12132 (regex!7227 (h!49806 l!6467)))) b!4114517))

(assert (= (and b!4114383 (is-Concat!19590 (regex!7227 (h!49806 l!6467)))) b!4114518))

(assert (= (and b!4114383 (is-Star!12132 (regex!7227 (h!49806 l!6467)))) b!4114519))

(assert (= (and b!4114383 (is-Union!12132 (regex!7227 (h!49806 l!6467)))) b!4114520))

(push 1)

(assert (not b!4114457))

(assert (not b_next!116583))

(assert (not b_next!116585))

(assert (not d!1220435))

(assert b_and!317767)

(assert (not b!4114518))

(assert (not b!4114431))

(assert (not d!1220461))

(assert (not d!1220427))

(assert (not b_next!116577))

(assert (not b!4114430))

(assert (not b!4114441))

(assert (not b!4114445))

(assert b_and!317759)

(assert b_and!317765)

(assert (not d!1220457))

(assert (not b!4114443))

(assert (not b!4114489))

(assert (not b!4114504))

(assert (not b!4114439))

(assert (not b!4114503))

(assert (not b!4114519))

(assert tp_is_empty!21187)

(assert b_and!317757)

(assert (not d!1220431))

(assert (not b!4114506))

(assert (not b_next!116575))

(assert (not b!4114440))

(assert (not b!4114437))

(assert (not b!4114520))

(assert (not b!4114461))

(assert (not b!4114494))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116583))

(assert (not b_next!116585))

(assert b_and!317767)

(assert b_and!317757)

(assert (not b_next!116575))

(assert (not b_next!116577))

(assert b_and!317759)

(assert b_and!317765)

(check-sat)

(pop 1)

