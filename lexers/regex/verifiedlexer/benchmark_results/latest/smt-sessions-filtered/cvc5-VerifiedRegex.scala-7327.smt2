; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389846 () Bool)

(assert start!389846)

(declare-fun b!4114206 () Bool)

(declare-fun b_free!115855 () Bool)

(declare-fun b_next!116559 () Bool)

(assert (=> b!4114206 (= b_free!115855 (not b_next!116559))))

(declare-fun tp!1252754 () Bool)

(declare-fun b_and!317741 () Bool)

(assert (=> b!4114206 (= tp!1252754 b_and!317741)))

(declare-fun b_free!115857 () Bool)

(declare-fun b_next!116561 () Bool)

(assert (=> b!4114206 (= b_free!115857 (not b_next!116561))))

(declare-fun tp!1252755 () Bool)

(declare-fun b_and!317743 () Bool)

(assert (=> b!4114206 (= tp!1252755 b_and!317743)))

(declare-fun b!4114200 () Bool)

(declare-fun e!2552511 () Bool)

(declare-fun e!2552519 () Bool)

(declare-fun tp!1252758 () Bool)

(assert (=> b!4114200 (= e!2552511 (and e!2552519 tp!1252758))))

(declare-fun b!4114201 () Bool)

(declare-fun e!2552512 () Bool)

(declare-datatypes ((String!51026 0))(
  ( (String!51027 (value!226462 String)) )
))
(declare-datatypes ((List!44500 0))(
  ( (Nil!44376) (Cons!44376 (h!49796 String!51026) (t!340251 List!44500)) )
))
(declare-fun newAcc!81 () List!44500)

(declare-fun tp!1252753 () Bool)

(declare-fun inv!58972 (String!51026) Bool)

(assert (=> b!4114201 (= e!2552512 (and (inv!58972 (h!49796 newAcc!81)) tp!1252753))))

(declare-fun b!4114202 () Bool)

(declare-fun res!1680417 () Bool)

(declare-fun e!2552518 () Bool)

(assert (=> b!4114202 (=> (not res!1680417) (not e!2552518))))

(declare-datatypes ((LexerInterface!6814 0))(
  ( (LexerInterfaceExt!6811 (__x!27127 Int)) (Lexer!6812) )
))
(declare-fun thiss!26911 () LexerInterface!6814)

(declare-fun acc!555 () List!44500)

(declare-datatypes ((List!44501 0))(
  ( (Nil!44377) (Cons!44377 (h!49797 (_ BitVec 16)) (t!340252 List!44501)) )
))
(declare-datatypes ((TokenValue!7455 0))(
  ( (FloatLiteralValue!14910 (text!52630 List!44501)) (TokenValueExt!7454 (__x!27128 Int)) (Broken!37275 (value!226463 List!44501)) (Object!7578) (End!7455) (Def!7455) (Underscore!7455) (Match!7455) (Else!7455) (Error!7455) (Case!7455) (If!7455) (Extends!7455) (Abstract!7455) (Class!7455) (Val!7455) (DelimiterValue!14910 (del!7515 List!44501)) (KeywordValue!7461 (value!226464 List!44501)) (CommentValue!14910 (value!226465 List!44501)) (WhitespaceValue!14910 (value!226466 List!44501)) (IndentationValue!7455 (value!226467 List!44501)) (String!51028) (Int32!7455) (Broken!37276 (value!226468 List!44501)) (Boolean!7456) (Unit!63755) (OperatorValue!7458 (op!7515 List!44501)) (IdentifierValue!14910 (value!226469 List!44501)) (IdentifierValue!14911 (value!226470 List!44501)) (WhitespaceValue!14911 (value!226471 List!44501)) (True!14910) (False!14910) (Broken!37277 (value!226472 List!44501)) (Broken!37278 (value!226473 List!44501)) (True!14911) (RightBrace!7455) (RightBracket!7455) (Colon!7455) (Null!7455) (Comma!7455) (LeftBracket!7455) (False!14911) (LeftBrace!7455) (ImaginaryLiteralValue!7455 (text!52631 List!44501)) (StringLiteralValue!22365 (value!226474 List!44501)) (EOFValue!7455 (value!226475 List!44501)) (IdentValue!7455 (value!226476 List!44501)) (DelimiterValue!14911 (value!226477 List!44501)) (DedentValue!7455 (value!226478 List!44501)) (NewLineValue!7455 (value!226479 List!44501)) (IntegerValue!22365 (value!226480 (_ BitVec 32)) (text!52632 List!44501)) (IntegerValue!22366 (value!226481 Int) (text!52633 List!44501)) (Times!7455) (Or!7455) (Equal!7455) (Minus!7455) (Broken!37279 (value!226482 List!44501)) (And!7455) (Div!7455) (LessEqual!7455) (Mod!7455) (Concat!19585) (Not!7455) (Plus!7455) (SpaceValue!7455 (value!226483 List!44501)) (IntegerValue!22367 (value!226484 Int) (text!52634 List!44501)) (StringLiteralValue!22366 (text!52635 List!44501)) (FloatLiteralValue!14911 (text!52636 List!44501)) (BytesLiteralValue!7455 (value!226485 List!44501)) (CommentValue!14911 (value!226486 List!44501)) (StringLiteralValue!22367 (value!226487 List!44501)) (ErrorTokenValue!7455 (msg!7516 List!44501)) )
))
(declare-datatypes ((C!24446 0))(
  ( (C!24447 (val!14333 Int)) )
))
(declare-datatypes ((List!44502 0))(
  ( (Nil!44378) (Cons!44378 (h!49798 C!24446) (t!340253 List!44502)) )
))
(declare-datatypes ((IArray!26877 0))(
  ( (IArray!26878 (innerList!13496 List!44502)) )
))
(declare-datatypes ((Conc!13436 0))(
  ( (Node!13436 (left!33255 Conc!13436) (right!33585 Conc!13436) (csize!27102 Int) (cheight!13647 Int)) (Leaf!20764 (xs!16742 IArray!26877) (csize!27103 Int)) (Empty!13436) )
))
(declare-datatypes ((BalanceConc!26466 0))(
  ( (BalanceConc!26467 (c!706986 Conc!13436)) )
))
(declare-datatypes ((TokenValueInjection!14338 0))(
  ( (TokenValueInjection!14339 (toValue!9869 Int) (toChars!9728 Int)) )
))
(declare-datatypes ((Regex!12130 0))(
  ( (ElementMatch!12130 (c!706987 C!24446)) (Concat!19586 (regOne!24772 Regex!12130) (regTwo!24772 Regex!12130)) (EmptyExpr!12130) (Star!12130 (reg!12459 Regex!12130)) (EmptyLang!12130) (Union!12130 (regOne!24773 Regex!12130) (regTwo!24773 Regex!12130)) )
))
(declare-datatypes ((Rule!14250 0))(
  ( (Rule!14251 (regex!7225 Regex!12130) (tag!8085 String!51026) (isSeparator!7225 Bool) (transformation!7225 TokenValueInjection!14338)) )
))
(declare-datatypes ((List!44503 0))(
  ( (Nil!44379) (Cons!44379 (h!49799 Rule!14250) (t!340254 List!44503)) )
))
(declare-fun l!6467 () List!44503)

(declare-fun noDuplicateTag!2902 (LexerInterface!6814 List!44503 List!44500) Bool)

(assert (=> b!4114202 (= res!1680417 (noDuplicateTag!2902 thiss!26911 l!6467 acc!555))))

(declare-fun b!4114204 () Bool)

(declare-fun e!2552516 () Bool)

(assert (=> b!4114204 (= e!2552518 e!2552516)))

(declare-fun res!1680413 () Bool)

(assert (=> b!4114204 (=> (not res!1680413) (not e!2552516))))

(declare-fun contains!8893 (List!44500 String!51026) Bool)

(assert (=> b!4114204 (= res!1680413 (= (contains!8893 acc!555 (tag!8085 (h!49799 l!6467))) (contains!8893 newAcc!81 (tag!8085 (h!49799 l!6467)))))))

(declare-datatypes ((Unit!63756 0))(
  ( (Unit!63757) )
))
(declare-fun lt!1468516 () Unit!63756)

(declare-fun subsetContains!85 (List!44500 List!44500) Unit!63756)

(assert (=> b!4114204 (= lt!1468516 (subsetContains!85 newAcc!81 acc!555))))

(declare-fun lt!1468517 () Unit!63756)

(assert (=> b!4114204 (= lt!1468517 (subsetContains!85 acc!555 newAcc!81))))

(declare-fun b!4114205 () Bool)

(declare-fun res!1680414 () Bool)

(assert (=> b!4114205 (=> (not res!1680414) (not e!2552518))))

(declare-fun content!6843 (List!44500) (Set String!51026))

(assert (=> b!4114205 (= res!1680414 (= (content!6843 acc!555) (content!6843 newAcc!81)))))

(declare-fun e!2552513 () Bool)

(assert (=> b!4114206 (= e!2552513 (and tp!1252754 tp!1252755))))

(declare-fun tp!1252756 () Bool)

(declare-fun b!4114207 () Bool)

(declare-fun inv!58975 (TokenValueInjection!14338) Bool)

(assert (=> b!4114207 (= e!2552519 (and tp!1252756 (inv!58972 (tag!8085 (h!49799 l!6467))) (inv!58975 (transformation!7225 (h!49799 l!6467))) e!2552513))))

(declare-fun b!4114203 () Bool)

(declare-fun res!1680416 () Bool)

(assert (=> b!4114203 (=> (not res!1680416) (not e!2552518))))

(assert (=> b!4114203 (= res!1680416 (is-Cons!44379 l!6467))))

(declare-fun res!1680415 () Bool)

(assert (=> start!389846 (=> (not res!1680415) (not e!2552518))))

(assert (=> start!389846 (= res!1680415 (is-Lexer!6812 thiss!26911))))

(assert (=> start!389846 e!2552518))

(assert (=> start!389846 true))

(assert (=> start!389846 e!2552511))

(declare-fun e!2552517 () Bool)

(assert (=> start!389846 e!2552517))

(assert (=> start!389846 e!2552512))

(declare-fun b!4114208 () Bool)

(assert (=> b!4114208 (= e!2552516 (not (noDuplicateTag!2902 thiss!26911 (t!340254 l!6467) (Cons!44376 (tag!8085 (h!49799 l!6467)) acc!555))))))

(declare-fun b!4114209 () Bool)

(declare-fun tp!1252757 () Bool)

(assert (=> b!4114209 (= e!2552517 (and (inv!58972 (h!49796 acc!555)) tp!1252757))))

(assert (= (and start!389846 res!1680415) b!4114202))

(assert (= (and b!4114202 res!1680417) b!4114205))

(assert (= (and b!4114205 res!1680414) b!4114203))

(assert (= (and b!4114203 res!1680416) b!4114204))

(assert (= (and b!4114204 res!1680413) b!4114208))

(assert (= b!4114207 b!4114206))

(assert (= b!4114200 b!4114207))

(assert (= (and start!389846 (is-Cons!44379 l!6467)) b!4114200))

(assert (= (and start!389846 (is-Cons!44376 acc!555)) b!4114209))

(assert (= (and start!389846 (is-Cons!44376 newAcc!81)) b!4114201))

(declare-fun m!4714685 () Bool)

(assert (=> b!4114201 m!4714685))

(declare-fun m!4714687 () Bool)

(assert (=> b!4114204 m!4714687))

(declare-fun m!4714689 () Bool)

(assert (=> b!4114204 m!4714689))

(declare-fun m!4714691 () Bool)

(assert (=> b!4114204 m!4714691))

(declare-fun m!4714693 () Bool)

(assert (=> b!4114204 m!4714693))

(declare-fun m!4714695 () Bool)

(assert (=> b!4114207 m!4714695))

(declare-fun m!4714697 () Bool)

(assert (=> b!4114207 m!4714697))

(declare-fun m!4714699 () Bool)

(assert (=> b!4114209 m!4714699))

(declare-fun m!4714701 () Bool)

(assert (=> b!4114205 m!4714701))

(declare-fun m!4714703 () Bool)

(assert (=> b!4114205 m!4714703))

(declare-fun m!4714705 () Bool)

(assert (=> b!4114208 m!4714705))

(declare-fun m!4714707 () Bool)

(assert (=> b!4114202 m!4714707))

(push 1)

(assert (not b!4114208))

(assert (not b_next!116559))

(assert (not b!4114209))

(assert b_and!317743)

(assert (not b_next!116561))

(assert (not b!4114207))

(assert b_and!317741)

(assert (not b!4114202))

(assert (not b!4114205))

(assert (not b!4114204))

(assert (not b!4114201))

(assert (not b!4114200))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317743)

(assert b_and!317741)

(assert (not b_next!116561))

(assert (not b_next!116559))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220360 () Bool)

(assert (=> d!1220360 (= (inv!58972 (h!49796 newAcc!81)) (= (mod (str.len (value!226462 (h!49796 newAcc!81))) 2) 0))))

(assert (=> b!4114201 d!1220360))

(declare-fun d!1220362 () Bool)

(declare-fun res!1680441 () Bool)

(declare-fun e!2552554 () Bool)

(assert (=> d!1220362 (=> res!1680441 e!2552554)))

(assert (=> d!1220362 (= res!1680441 (is-Nil!44379 (t!340254 l!6467)))))

(assert (=> d!1220362 (= (noDuplicateTag!2902 thiss!26911 (t!340254 l!6467) (Cons!44376 (tag!8085 (h!49799 l!6467)) acc!555)) e!2552554)))

(declare-fun b!4114244 () Bool)

(declare-fun e!2552555 () Bool)

(assert (=> b!4114244 (= e!2552554 e!2552555)))

(declare-fun res!1680442 () Bool)

(assert (=> b!4114244 (=> (not res!1680442) (not e!2552555))))

(assert (=> b!4114244 (= res!1680442 (not (contains!8893 (Cons!44376 (tag!8085 (h!49799 l!6467)) acc!555) (tag!8085 (h!49799 (t!340254 l!6467))))))))

(declare-fun b!4114245 () Bool)

(assert (=> b!4114245 (= e!2552555 (noDuplicateTag!2902 thiss!26911 (t!340254 (t!340254 l!6467)) (Cons!44376 (tag!8085 (h!49799 (t!340254 l!6467))) (Cons!44376 (tag!8085 (h!49799 l!6467)) acc!555))))))

(assert (= (and d!1220362 (not res!1680441)) b!4114244))

(assert (= (and b!4114244 res!1680442) b!4114245))

(declare-fun m!4714733 () Bool)

(assert (=> b!4114244 m!4714733))

(declare-fun m!4714735 () Bool)

(assert (=> b!4114245 m!4714735))

(assert (=> b!4114208 d!1220362))

(declare-fun d!1220364 () Bool)

(declare-fun res!1680443 () Bool)

(declare-fun e!2552556 () Bool)

(assert (=> d!1220364 (=> res!1680443 e!2552556)))

(assert (=> d!1220364 (= res!1680443 (is-Nil!44379 l!6467))))

(assert (=> d!1220364 (= (noDuplicateTag!2902 thiss!26911 l!6467 acc!555) e!2552556)))

(declare-fun b!4114246 () Bool)

(declare-fun e!2552557 () Bool)

(assert (=> b!4114246 (= e!2552556 e!2552557)))

(declare-fun res!1680444 () Bool)

(assert (=> b!4114246 (=> (not res!1680444) (not e!2552557))))

(assert (=> b!4114246 (= res!1680444 (not (contains!8893 acc!555 (tag!8085 (h!49799 l!6467)))))))

(declare-fun b!4114247 () Bool)

(assert (=> b!4114247 (= e!2552557 (noDuplicateTag!2902 thiss!26911 (t!340254 l!6467) (Cons!44376 (tag!8085 (h!49799 l!6467)) acc!555)))))

(assert (= (and d!1220364 (not res!1680443)) b!4114246))

(assert (= (and b!4114246 res!1680444) b!4114247))

(assert (=> b!4114246 m!4714687))

(assert (=> b!4114247 m!4714705))

(assert (=> b!4114202 d!1220364))

(declare-fun d!1220366 () Bool)

(assert (=> d!1220366 (= (inv!58972 (tag!8085 (h!49799 l!6467))) (= (mod (str.len (value!226462 (tag!8085 (h!49799 l!6467)))) 2) 0))))

(assert (=> b!4114207 d!1220366))

(declare-fun d!1220368 () Bool)

(declare-fun res!1680447 () Bool)

(declare-fun e!2552560 () Bool)

(assert (=> d!1220368 (=> (not res!1680447) (not e!2552560))))

(declare-fun semiInverseModEq!3113 (Int Int) Bool)

(assert (=> d!1220368 (= res!1680447 (semiInverseModEq!3113 (toChars!9728 (transformation!7225 (h!49799 l!6467))) (toValue!9869 (transformation!7225 (h!49799 l!6467)))))))

(assert (=> d!1220368 (= (inv!58975 (transformation!7225 (h!49799 l!6467))) e!2552560)))

(declare-fun b!4114250 () Bool)

(declare-fun equivClasses!3012 (Int Int) Bool)

(assert (=> b!4114250 (= e!2552560 (equivClasses!3012 (toChars!9728 (transformation!7225 (h!49799 l!6467))) (toValue!9869 (transformation!7225 (h!49799 l!6467)))))))

(assert (= (and d!1220368 res!1680447) b!4114250))

(declare-fun m!4714737 () Bool)

(assert (=> d!1220368 m!4714737))

(declare-fun m!4714739 () Bool)

(assert (=> b!4114250 m!4714739))

(assert (=> b!4114207 d!1220368))

(declare-fun d!1220374 () Bool)

(declare-fun lt!1468526 () Bool)

(assert (=> d!1220374 (= lt!1468526 (set.member (tag!8085 (h!49799 l!6467)) (content!6843 acc!555)))))

(declare-fun e!2552565 () Bool)

(assert (=> d!1220374 (= lt!1468526 e!2552565)))

(declare-fun res!1680452 () Bool)

(assert (=> d!1220374 (=> (not res!1680452) (not e!2552565))))

(assert (=> d!1220374 (= res!1680452 (is-Cons!44376 acc!555))))

(assert (=> d!1220374 (= (contains!8893 acc!555 (tag!8085 (h!49799 l!6467))) lt!1468526)))

(declare-fun b!4114255 () Bool)

(declare-fun e!2552566 () Bool)

(assert (=> b!4114255 (= e!2552565 e!2552566)))

(declare-fun res!1680453 () Bool)

(assert (=> b!4114255 (=> res!1680453 e!2552566)))

(assert (=> b!4114255 (= res!1680453 (= (h!49796 acc!555) (tag!8085 (h!49799 l!6467))))))

(declare-fun b!4114256 () Bool)

(assert (=> b!4114256 (= e!2552566 (contains!8893 (t!340251 acc!555) (tag!8085 (h!49799 l!6467))))))

(assert (= (and d!1220374 res!1680452) b!4114255))

(assert (= (and b!4114255 (not res!1680453)) b!4114256))

(assert (=> d!1220374 m!4714701))

(declare-fun m!4714741 () Bool)

(assert (=> d!1220374 m!4714741))

(declare-fun m!4714743 () Bool)

(assert (=> b!4114256 m!4714743))

(assert (=> b!4114204 d!1220374))

(declare-fun d!1220376 () Bool)

(declare-fun lt!1468527 () Bool)

(assert (=> d!1220376 (= lt!1468527 (set.member (tag!8085 (h!49799 l!6467)) (content!6843 newAcc!81)))))

(declare-fun e!2552569 () Bool)

(assert (=> d!1220376 (= lt!1468527 e!2552569)))

(declare-fun res!1680456 () Bool)

(assert (=> d!1220376 (=> (not res!1680456) (not e!2552569))))

(assert (=> d!1220376 (= res!1680456 (is-Cons!44376 newAcc!81))))

(assert (=> d!1220376 (= (contains!8893 newAcc!81 (tag!8085 (h!49799 l!6467))) lt!1468527)))

(declare-fun b!4114259 () Bool)

(declare-fun e!2552570 () Bool)

(assert (=> b!4114259 (= e!2552569 e!2552570)))

(declare-fun res!1680457 () Bool)

(assert (=> b!4114259 (=> res!1680457 e!2552570)))

(assert (=> b!4114259 (= res!1680457 (= (h!49796 newAcc!81) (tag!8085 (h!49799 l!6467))))))

(declare-fun b!4114260 () Bool)

(assert (=> b!4114260 (= e!2552570 (contains!8893 (t!340251 newAcc!81) (tag!8085 (h!49799 l!6467))))))

(assert (= (and d!1220376 res!1680456) b!4114259))

(assert (= (and b!4114259 (not res!1680457)) b!4114260))

(assert (=> d!1220376 m!4714703))

(declare-fun m!4714745 () Bool)

(assert (=> d!1220376 m!4714745))

(declare-fun m!4714747 () Bool)

(assert (=> b!4114260 m!4714747))

(assert (=> b!4114204 d!1220376))

(declare-fun d!1220378 () Bool)

(assert (=> d!1220378 true))

(declare-fun lambda!128538 () Int)

(declare-fun forall!8437 (List!44500 Int) Bool)

(assert (=> d!1220378 (forall!8437 newAcc!81 lambda!128538)))

(declare-fun lt!1468536 () Unit!63756)

(declare-fun choose!25147 (List!44500 List!44500) Unit!63756)

(assert (=> d!1220378 (= lt!1468536 (choose!25147 newAcc!81 acc!555))))

(assert (=> d!1220378 (set.subset (content!6843 newAcc!81) (content!6843 acc!555))))

(assert (=> d!1220378 (= (subsetContains!85 newAcc!81 acc!555) lt!1468536)))

(declare-fun bs!594473 () Bool)

(assert (= bs!594473 d!1220378))

(declare-fun m!4714761 () Bool)

(assert (=> bs!594473 m!4714761))

(declare-fun m!4714763 () Bool)

(assert (=> bs!594473 m!4714763))

(assert (=> bs!594473 m!4714703))

(assert (=> bs!594473 m!4714701))

(assert (=> b!4114204 d!1220378))

(declare-fun bs!594474 () Bool)

(declare-fun d!1220388 () Bool)

(assert (= bs!594474 (and d!1220388 d!1220378)))

(declare-fun lambda!128539 () Int)

(assert (=> bs!594474 (= (= newAcc!81 acc!555) (= lambda!128539 lambda!128538))))

(assert (=> d!1220388 true))

(assert (=> d!1220388 (forall!8437 acc!555 lambda!128539)))

(declare-fun lt!1468537 () Unit!63756)

(assert (=> d!1220388 (= lt!1468537 (choose!25147 acc!555 newAcc!81))))

(assert (=> d!1220388 (set.subset (content!6843 acc!555) (content!6843 newAcc!81))))

(assert (=> d!1220388 (= (subsetContains!85 acc!555 newAcc!81) lt!1468537)))

(declare-fun bs!594475 () Bool)

(assert (= bs!594475 d!1220388))

(declare-fun m!4714765 () Bool)

(assert (=> bs!594475 m!4714765))

(declare-fun m!4714767 () Bool)

(assert (=> bs!594475 m!4714767))

(assert (=> bs!594475 m!4714701))

(assert (=> bs!594475 m!4714703))

(assert (=> b!4114204 d!1220388))

(declare-fun d!1220390 () Bool)

(assert (=> d!1220390 (= (inv!58972 (h!49796 acc!555)) (= (mod (str.len (value!226462 (h!49796 acc!555))) 2) 0))))

(assert (=> b!4114209 d!1220390))

(declare-fun d!1220392 () Bool)

(declare-fun c!706992 () Bool)

(assert (=> d!1220392 (= c!706992 (is-Nil!44376 acc!555))))

(declare-fun e!2552588 () (Set String!51026))

(assert (=> d!1220392 (= (content!6843 acc!555) e!2552588)))

(declare-fun b!4114282 () Bool)

(assert (=> b!4114282 (= e!2552588 (as set.empty (Set String!51026)))))

(declare-fun b!4114283 () Bool)

(assert (=> b!4114283 (= e!2552588 (set.union (set.insert (h!49796 acc!555) (as set.empty (Set String!51026))) (content!6843 (t!340251 acc!555))))))

(assert (= (and d!1220392 c!706992) b!4114282))

(assert (= (and d!1220392 (not c!706992)) b!4114283))

(declare-fun m!4714769 () Bool)

(assert (=> b!4114283 m!4714769))

(declare-fun m!4714771 () Bool)

(assert (=> b!4114283 m!4714771))

(assert (=> b!4114205 d!1220392))

(declare-fun d!1220394 () Bool)

(declare-fun c!706993 () Bool)

(assert (=> d!1220394 (= c!706993 (is-Nil!44376 newAcc!81))))

(declare-fun e!2552589 () (Set String!51026))

(assert (=> d!1220394 (= (content!6843 newAcc!81) e!2552589)))

(declare-fun b!4114284 () Bool)

(assert (=> b!4114284 (= e!2552589 (as set.empty (Set String!51026)))))

(declare-fun b!4114285 () Bool)

(assert (=> b!4114285 (= e!2552589 (set.union (set.insert (h!49796 newAcc!81) (as set.empty (Set String!51026))) (content!6843 (t!340251 newAcc!81))))))

(assert (= (and d!1220394 c!706993) b!4114284))

(assert (= (and d!1220394 (not c!706993)) b!4114285))

(declare-fun m!4714773 () Bool)

(assert (=> b!4114285 m!4714773))

(declare-fun m!4714775 () Bool)

(assert (=> b!4114285 m!4714775))

(assert (=> b!4114205 d!1220394))

(declare-fun b!4114290 () Bool)

(declare-fun e!2552594 () Bool)

(declare-fun tp!1252779 () Bool)

(assert (=> b!4114290 (= e!2552594 (and (inv!58972 (h!49796 (t!340251 newAcc!81))) tp!1252779))))

(assert (=> b!4114201 (= tp!1252753 e!2552594)))

(assert (= (and b!4114201 (is-Cons!44376 (t!340251 newAcc!81))) b!4114290))

(declare-fun m!4714777 () Bool)

(assert (=> b!4114290 m!4714777))

(declare-fun b!4114301 () Bool)

(declare-fun e!2552598 () Bool)

(declare-fun tp_is_empty!21183 () Bool)

(assert (=> b!4114301 (= e!2552598 tp_is_empty!21183)))

(assert (=> b!4114207 (= tp!1252756 e!2552598)))

(declare-fun b!4114304 () Bool)

(declare-fun tp!1252794 () Bool)

(declare-fun tp!1252791 () Bool)

(assert (=> b!4114304 (= e!2552598 (and tp!1252794 tp!1252791))))

(declare-fun b!4114302 () Bool)

(declare-fun tp!1252792 () Bool)

(declare-fun tp!1252790 () Bool)

(assert (=> b!4114302 (= e!2552598 (and tp!1252792 tp!1252790))))

(declare-fun b!4114303 () Bool)

(declare-fun tp!1252793 () Bool)

(assert (=> b!4114303 (= e!2552598 tp!1252793)))

(assert (= (and b!4114207 (is-ElementMatch!12130 (regex!7225 (h!49799 l!6467)))) b!4114301))

(assert (= (and b!4114207 (is-Concat!19586 (regex!7225 (h!49799 l!6467)))) b!4114302))

(assert (= (and b!4114207 (is-Star!12130 (regex!7225 (h!49799 l!6467)))) b!4114303))

(assert (= (and b!4114207 (is-Union!12130 (regex!7225 (h!49799 l!6467)))) b!4114304))

(declare-fun b!4114305 () Bool)

(declare-fun e!2552599 () Bool)

(declare-fun tp!1252795 () Bool)

(assert (=> b!4114305 (= e!2552599 (and (inv!58972 (h!49796 (t!340251 acc!555))) tp!1252795))))

(assert (=> b!4114209 (= tp!1252757 e!2552599)))

(assert (= (and b!4114209 (is-Cons!44376 (t!340251 acc!555))) b!4114305))

(declare-fun m!4714779 () Bool)

(assert (=> b!4114305 m!4714779))

(declare-fun b!4114316 () Bool)

(declare-fun b_free!115863 () Bool)

(declare-fun b_next!116567 () Bool)

(assert (=> b!4114316 (= b_free!115863 (not b_next!116567))))

(declare-fun tp!1252804 () Bool)

(declare-fun b_and!317749 () Bool)

(assert (=> b!4114316 (= tp!1252804 b_and!317749)))

(declare-fun b_free!115865 () Bool)

(declare-fun b_next!116569 () Bool)

(assert (=> b!4114316 (= b_free!115865 (not b_next!116569))))

(declare-fun tp!1252807 () Bool)

(declare-fun b_and!317751 () Bool)

(assert (=> b!4114316 (= tp!1252807 b_and!317751)))

(declare-fun e!2552612 () Bool)

(assert (=> b!4114316 (= e!2552612 (and tp!1252804 tp!1252807))))

(declare-fun e!2552609 () Bool)

(declare-fun b!4114315 () Bool)

(declare-fun tp!1252806 () Bool)

(assert (=> b!4114315 (= e!2552609 (and tp!1252806 (inv!58972 (tag!8085 (h!49799 (t!340254 l!6467)))) (inv!58975 (transformation!7225 (h!49799 (t!340254 l!6467)))) e!2552612))))

(declare-fun b!4114314 () Bool)

(declare-fun e!2552610 () Bool)

(declare-fun tp!1252805 () Bool)

(assert (=> b!4114314 (= e!2552610 (and e!2552609 tp!1252805))))

(assert (=> b!4114200 (= tp!1252758 e!2552610)))

(assert (= b!4114315 b!4114316))

(assert (= b!4114314 b!4114315))

(assert (= (and b!4114200 (is-Cons!44379 (t!340254 l!6467))) b!4114314))

(declare-fun m!4714781 () Bool)

(assert (=> b!4114315 m!4714781))

(declare-fun m!4714783 () Bool)

(assert (=> b!4114315 m!4714783))

(push 1)

(assert (not b_next!116567))

(assert (not d!1220378))

(assert (not b_next!116569))

(assert (not b!4114302))

(assert b_and!317743)

(assert (not d!1220376))

(assert (not b_next!116561))

(assert b_and!317749)

(assert (not b!4114314))

(assert (not b!4114250))

(assert (not d!1220374))

(assert (not b!4114303))

(assert (not b!4114290))

(assert (not b!4114285))

(assert (not b!4114247))

(assert (not b!4114256))

(assert (not b!4114283))

(assert tp_is_empty!21183)

(assert b_and!317751)

(assert (not b!4114304))

(assert (not b_next!116559))

(assert (not d!1220388))

(assert (not b!4114246))

(assert (not b!4114244))

(assert b_and!317741)

(assert (not d!1220368))

(assert (not b!4114315))

(assert (not b!4114260))

(assert (not b!4114245))

(assert (not b!4114305))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116567))

(assert b_and!317751)

(assert (not b_next!116569))

(assert (not b_next!116559))

(assert b_and!317743)

(assert (not b_next!116561))

(assert b_and!317749)

(assert b_and!317741)

(check-sat)

(pop 1)

