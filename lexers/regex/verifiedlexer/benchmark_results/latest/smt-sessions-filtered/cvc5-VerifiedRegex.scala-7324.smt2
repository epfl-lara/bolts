; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389790 () Bool)

(assert start!389790)

(declare-fun b!4113821 () Bool)

(declare-fun b_free!115815 () Bool)

(declare-fun b_next!116519 () Bool)

(assert (=> b!4113821 (= b_free!115815 (not b_next!116519))))

(declare-fun tp!1252521 () Bool)

(declare-fun b_and!317701 () Bool)

(assert (=> b!4113821 (= tp!1252521 b_and!317701)))

(declare-fun b_free!115817 () Bool)

(declare-fun b_next!116521 () Bool)

(assert (=> b!4113821 (= b_free!115817 (not b_next!116521))))

(declare-fun tp!1252523 () Bool)

(declare-fun b_and!317703 () Bool)

(assert (=> b!4113821 (= tp!1252523 b_and!317703)))

(declare-fun b!4113818 () Bool)

(declare-fun res!1680289 () Bool)

(declare-fun e!2552188 () Bool)

(assert (=> b!4113818 (=> (not res!1680289) (not e!2552188))))

(declare-datatypes ((LexerInterface!6808 0))(
  ( (LexerInterfaceExt!6805 (__x!27115 Int)) (Lexer!6806) )
))
(declare-fun thiss!26911 () LexerInterface!6808)

(declare-datatypes ((String!50996 0))(
  ( (String!50997 (value!226297 String)) )
))
(declare-datatypes ((List!44476 0))(
  ( (Nil!44352) (Cons!44352 (h!49772 String!50996) (t!340227 List!44476)) )
))
(declare-fun acc!555 () List!44476)

(declare-datatypes ((List!44477 0))(
  ( (Nil!44353) (Cons!44353 (h!49773 (_ BitVec 16)) (t!340228 List!44477)) )
))
(declare-datatypes ((TokenValue!7449 0))(
  ( (FloatLiteralValue!14898 (text!52588 List!44477)) (TokenValueExt!7448 (__x!27116 Int)) (Broken!37245 (value!226298 List!44477)) (Object!7572) (End!7449) (Def!7449) (Underscore!7449) (Match!7449) (Else!7449) (Error!7449) (Case!7449) (If!7449) (Extends!7449) (Abstract!7449) (Class!7449) (Val!7449) (DelimiterValue!14898 (del!7509 List!44477)) (KeywordValue!7455 (value!226299 List!44477)) (CommentValue!14898 (value!226300 List!44477)) (WhitespaceValue!14898 (value!226301 List!44477)) (IndentationValue!7449 (value!226302 List!44477)) (String!50998) (Int32!7449) (Broken!37246 (value!226303 List!44477)) (Boolean!7450) (Unit!63741) (OperatorValue!7452 (op!7509 List!44477)) (IdentifierValue!14898 (value!226304 List!44477)) (IdentifierValue!14899 (value!226305 List!44477)) (WhitespaceValue!14899 (value!226306 List!44477)) (True!14898) (False!14898) (Broken!37247 (value!226307 List!44477)) (Broken!37248 (value!226308 List!44477)) (True!14899) (RightBrace!7449) (RightBracket!7449) (Colon!7449) (Null!7449) (Comma!7449) (LeftBracket!7449) (False!14899) (LeftBrace!7449) (ImaginaryLiteralValue!7449 (text!52589 List!44477)) (StringLiteralValue!22347 (value!226309 List!44477)) (EOFValue!7449 (value!226310 List!44477)) (IdentValue!7449 (value!226311 List!44477)) (DelimiterValue!14899 (value!226312 List!44477)) (DedentValue!7449 (value!226313 List!44477)) (NewLineValue!7449 (value!226314 List!44477)) (IntegerValue!22347 (value!226315 (_ BitVec 32)) (text!52590 List!44477)) (IntegerValue!22348 (value!226316 Int) (text!52591 List!44477)) (Times!7449) (Or!7449) (Equal!7449) (Minus!7449) (Broken!37249 (value!226317 List!44477)) (And!7449) (Div!7449) (LessEqual!7449) (Mod!7449) (Concat!19573) (Not!7449) (Plus!7449) (SpaceValue!7449 (value!226318 List!44477)) (IntegerValue!22349 (value!226319 Int) (text!52592 List!44477)) (StringLiteralValue!22348 (text!52593 List!44477)) (FloatLiteralValue!14899 (text!52594 List!44477)) (BytesLiteralValue!7449 (value!226320 List!44477)) (CommentValue!14899 (value!226321 List!44477)) (StringLiteralValue!22349 (value!226322 List!44477)) (ErrorTokenValue!7449 (msg!7510 List!44477)) )
))
(declare-datatypes ((C!24434 0))(
  ( (C!24435 (val!14327 Int)) )
))
(declare-datatypes ((List!44478 0))(
  ( (Nil!44354) (Cons!44354 (h!49774 C!24434) (t!340229 List!44478)) )
))
(declare-datatypes ((IArray!26865 0))(
  ( (IArray!26866 (innerList!13490 List!44478)) )
))
(declare-datatypes ((Conc!13430 0))(
  ( (Node!13430 (left!33242 Conc!13430) (right!33572 Conc!13430) (csize!27090 Int) (cheight!13641 Int)) (Leaf!20755 (xs!16736 IArray!26865) (csize!27091 Int)) (Empty!13430) )
))
(declare-datatypes ((BalanceConc!26454 0))(
  ( (BalanceConc!26455 (c!706952 Conc!13430)) )
))
(declare-datatypes ((TokenValueInjection!14326 0))(
  ( (TokenValueInjection!14327 (toValue!9863 Int) (toChars!9722 Int)) )
))
(declare-datatypes ((Regex!12124 0))(
  ( (ElementMatch!12124 (c!706953 C!24434)) (Concat!19574 (regOne!24760 Regex!12124) (regTwo!24760 Regex!12124)) (EmptyExpr!12124) (Star!12124 (reg!12453 Regex!12124)) (EmptyLang!12124) (Union!12124 (regOne!24761 Regex!12124) (regTwo!24761 Regex!12124)) )
))
(declare-datatypes ((Rule!14238 0))(
  ( (Rule!14239 (regex!7219 Regex!12124) (tag!8079 String!50996) (isSeparator!7219 Bool) (transformation!7219 TokenValueInjection!14326)) )
))
(declare-datatypes ((List!44479 0))(
  ( (Nil!44355) (Cons!44355 (h!49775 Rule!14238) (t!340230 List!44479)) )
))
(declare-fun l!6467 () List!44479)

(declare-fun noDuplicateTag!2896 (LexerInterface!6808 List!44479 List!44476) Bool)

(assert (=> b!4113818 (= res!1680289 (noDuplicateTag!2896 thiss!26911 l!6467 acc!555))))

(declare-fun b!4113819 () Bool)

(declare-fun e!2552183 () Bool)

(declare-fun e!2552182 () Bool)

(declare-fun tp!1252524 () Bool)

(assert (=> b!4113819 (= e!2552183 (and e!2552182 tp!1252524))))

(declare-fun b!4113820 () Bool)

(declare-fun res!1680290 () Bool)

(assert (=> b!4113820 (=> (not res!1680290) (not e!2552188))))

(declare-fun newAcc!81 () List!44476)

(declare-fun content!6837 (List!44476) (Set String!50996))

(assert (=> b!4113820 (= res!1680290 (= (content!6837 acc!555) (content!6837 newAcc!81)))))

(declare-fun e!2552184 () Bool)

(assert (=> b!4113821 (= e!2552184 (and tp!1252521 tp!1252523))))

(declare-fun b!4113822 () Bool)

(declare-fun e!2552187 () Bool)

(declare-fun tp!1252522 () Bool)

(declare-fun inv!58957 (String!50996) Bool)

(assert (=> b!4113822 (= e!2552187 (and (inv!58957 (h!49772 newAcc!81)) tp!1252522))))

(declare-fun b!4113823 () Bool)

(declare-fun contains!8887 (List!44476 String!50996) Bool)

(assert (=> b!4113823 (= e!2552188 (not (= (contains!8887 acc!555 (tag!8079 (h!49775 l!6467))) (contains!8887 newAcc!81 (tag!8079 (h!49775 l!6467))))))))

(declare-datatypes ((Unit!63742 0))(
  ( (Unit!63743) )
))
(declare-fun lt!1468458 () Unit!63742)

(declare-fun subsetContains!81 (List!44476 List!44476) Unit!63742)

(assert (=> b!4113823 (= lt!1468458 (subsetContains!81 newAcc!81 acc!555))))

(declare-fun lt!1468459 () Unit!63742)

(assert (=> b!4113823 (= lt!1468459 (subsetContains!81 acc!555 newAcc!81))))

(declare-fun res!1680292 () Bool)

(assert (=> start!389790 (=> (not res!1680292) (not e!2552188))))

(assert (=> start!389790 (= res!1680292 (is-Lexer!6806 thiss!26911))))

(assert (=> start!389790 e!2552188))

(assert (=> start!389790 true))

(assert (=> start!389790 e!2552183))

(declare-fun e!2552186 () Bool)

(assert (=> start!389790 e!2552186))

(assert (=> start!389790 e!2552187))

(declare-fun b!4113824 () Bool)

(declare-fun tp!1252526 () Bool)

(assert (=> b!4113824 (= e!2552186 (and (inv!58957 (h!49772 acc!555)) tp!1252526))))

(declare-fun b!4113825 () Bool)

(declare-fun res!1680291 () Bool)

(assert (=> b!4113825 (=> (not res!1680291) (not e!2552188))))

(assert (=> b!4113825 (= res!1680291 (is-Cons!44355 l!6467))))

(declare-fun b!4113826 () Bool)

(declare-fun tp!1252525 () Bool)

(declare-fun inv!58960 (TokenValueInjection!14326) Bool)

(assert (=> b!4113826 (= e!2552182 (and tp!1252525 (inv!58957 (tag!8079 (h!49775 l!6467))) (inv!58960 (transformation!7219 (h!49775 l!6467))) e!2552184))))

(assert (= (and start!389790 res!1680292) b!4113818))

(assert (= (and b!4113818 res!1680289) b!4113820))

(assert (= (and b!4113820 res!1680290) b!4113825))

(assert (= (and b!4113825 res!1680291) b!4113823))

(assert (= b!4113826 b!4113821))

(assert (= b!4113819 b!4113826))

(assert (= (and start!389790 (is-Cons!44355 l!6467)) b!4113819))

(assert (= (and start!389790 (is-Cons!44352 acc!555)) b!4113824))

(assert (= (and start!389790 (is-Cons!44352 newAcc!81)) b!4113822))

(declare-fun m!4714437 () Bool)

(assert (=> b!4113823 m!4714437))

(declare-fun m!4714439 () Bool)

(assert (=> b!4113823 m!4714439))

(declare-fun m!4714441 () Bool)

(assert (=> b!4113823 m!4714441))

(declare-fun m!4714443 () Bool)

(assert (=> b!4113823 m!4714443))

(declare-fun m!4714445 () Bool)

(assert (=> b!4113824 m!4714445))

(declare-fun m!4714447 () Bool)

(assert (=> b!4113822 m!4714447))

(declare-fun m!4714449 () Bool)

(assert (=> b!4113820 m!4714449))

(declare-fun m!4714451 () Bool)

(assert (=> b!4113820 m!4714451))

(declare-fun m!4714453 () Bool)

(assert (=> b!4113826 m!4714453))

(declare-fun m!4714455 () Bool)

(assert (=> b!4113826 m!4714455))

(declare-fun m!4714457 () Bool)

(assert (=> b!4113818 m!4714457))

(push 1)

(assert (not b!4113819))

(assert (not b!4113824))

(assert (not b!4113822))

(assert (not b!4113826))

(assert (not b!4113823))

(assert (not b!4113818))

(assert (not b_next!116521))

(assert b_and!317703)

(assert b_and!317701)

(assert (not b!4113820))

(assert (not b_next!116519))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317703)

(assert b_and!317701)

(assert (not b_next!116521))

(assert (not b_next!116519))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220281 () Bool)

(assert (=> d!1220281 (= (inv!58957 (tag!8079 (h!49775 l!6467))) (= (mod (str.len (value!226297 (tag!8079 (h!49775 l!6467)))) 2) 0))))

(assert (=> b!4113826 d!1220281))

(declare-fun d!1220283 () Bool)

(declare-fun res!1680315 () Bool)

(declare-fun e!2552222 () Bool)

(assert (=> d!1220283 (=> (not res!1680315) (not e!2552222))))

(declare-fun semiInverseModEq!3109 (Int Int) Bool)

(assert (=> d!1220283 (= res!1680315 (semiInverseModEq!3109 (toChars!9722 (transformation!7219 (h!49775 l!6467))) (toValue!9863 (transformation!7219 (h!49775 l!6467)))))))

(assert (=> d!1220283 (= (inv!58960 (transformation!7219 (h!49775 l!6467))) e!2552222)))

(declare-fun b!4113860 () Bool)

(declare-fun equivClasses!3008 (Int Int) Bool)

(assert (=> b!4113860 (= e!2552222 (equivClasses!3008 (toChars!9722 (transformation!7219 (h!49775 l!6467))) (toValue!9863 (transformation!7219 (h!49775 l!6467)))))))

(assert (= (and d!1220283 res!1680315) b!4113860))

(declare-fun m!4714481 () Bool)

(assert (=> d!1220283 m!4714481))

(declare-fun m!4714483 () Bool)

(assert (=> b!4113860 m!4714483))

(assert (=> b!4113826 d!1220283))

(declare-fun d!1220289 () Bool)

(declare-fun c!706958 () Bool)

(assert (=> d!1220289 (= c!706958 (is-Nil!44352 acc!555))))

(declare-fun e!2552229 () (Set String!50996))

(assert (=> d!1220289 (= (content!6837 acc!555) e!2552229)))

(declare-fun b!4113869 () Bool)

(assert (=> b!4113869 (= e!2552229 (as set.empty (Set String!50996)))))

(declare-fun b!4113870 () Bool)

(assert (=> b!4113870 (= e!2552229 (set.union (set.insert (h!49772 acc!555) (as set.empty (Set String!50996))) (content!6837 (t!340227 acc!555))))))

(assert (= (and d!1220289 c!706958) b!4113869))

(assert (= (and d!1220289 (not c!706958)) b!4113870))

(declare-fun m!4714493 () Bool)

(assert (=> b!4113870 m!4714493))

(declare-fun m!4714495 () Bool)

(assert (=> b!4113870 m!4714495))

(assert (=> b!4113820 d!1220289))

(declare-fun d!1220295 () Bool)

(declare-fun c!706959 () Bool)

(assert (=> d!1220295 (= c!706959 (is-Nil!44352 newAcc!81))))

(declare-fun e!2552230 () (Set String!50996))

(assert (=> d!1220295 (= (content!6837 newAcc!81) e!2552230)))

(declare-fun b!4113871 () Bool)

(assert (=> b!4113871 (= e!2552230 (as set.empty (Set String!50996)))))

(declare-fun b!4113872 () Bool)

(assert (=> b!4113872 (= e!2552230 (set.union (set.insert (h!49772 newAcc!81) (as set.empty (Set String!50996))) (content!6837 (t!340227 newAcc!81))))))

(assert (= (and d!1220295 c!706959) b!4113871))

(assert (= (and d!1220295 (not c!706959)) b!4113872))

(declare-fun m!4714497 () Bool)

(assert (=> b!4113872 m!4714497))

(declare-fun m!4714499 () Bool)

(assert (=> b!4113872 m!4714499))

(assert (=> b!4113820 d!1220295))

(declare-fun d!1220297 () Bool)

(assert (=> d!1220297 (= (inv!58957 (h!49772 acc!555)) (= (mod (str.len (value!226297 (h!49772 acc!555))) 2) 0))))

(assert (=> b!4113824 d!1220297))

(declare-fun d!1220299 () Bool)

(declare-fun lt!1468474 () Bool)

(assert (=> d!1220299 (= lt!1468474 (set.member (tag!8079 (h!49775 l!6467)) (content!6837 acc!555)))))

(declare-fun e!2552236 () Bool)

(assert (=> d!1220299 (= lt!1468474 e!2552236)))

(declare-fun res!1680325 () Bool)

(assert (=> d!1220299 (=> (not res!1680325) (not e!2552236))))

(assert (=> d!1220299 (= res!1680325 (is-Cons!44352 acc!555))))

(assert (=> d!1220299 (= (contains!8887 acc!555 (tag!8079 (h!49775 l!6467))) lt!1468474)))

(declare-fun b!4113877 () Bool)

(declare-fun e!2552235 () Bool)

(assert (=> b!4113877 (= e!2552236 e!2552235)))

(declare-fun res!1680324 () Bool)

(assert (=> b!4113877 (=> res!1680324 e!2552235)))

(assert (=> b!4113877 (= res!1680324 (= (h!49772 acc!555) (tag!8079 (h!49775 l!6467))))))

(declare-fun b!4113878 () Bool)

(assert (=> b!4113878 (= e!2552235 (contains!8887 (t!340227 acc!555) (tag!8079 (h!49775 l!6467))))))

(assert (= (and d!1220299 res!1680325) b!4113877))

(assert (= (and b!4113877 (not res!1680324)) b!4113878))

(assert (=> d!1220299 m!4714449))

(declare-fun m!4714501 () Bool)

(assert (=> d!1220299 m!4714501))

(declare-fun m!4714503 () Bool)

(assert (=> b!4113878 m!4714503))

(assert (=> b!4113823 d!1220299))

(declare-fun d!1220301 () Bool)

(declare-fun lt!1468475 () Bool)

(assert (=> d!1220301 (= lt!1468475 (set.member (tag!8079 (h!49775 l!6467)) (content!6837 newAcc!81)))))

(declare-fun e!2552238 () Bool)

(assert (=> d!1220301 (= lt!1468475 e!2552238)))

(declare-fun res!1680327 () Bool)

(assert (=> d!1220301 (=> (not res!1680327) (not e!2552238))))

(assert (=> d!1220301 (= res!1680327 (is-Cons!44352 newAcc!81))))

(assert (=> d!1220301 (= (contains!8887 newAcc!81 (tag!8079 (h!49775 l!6467))) lt!1468475)))

(declare-fun b!4113879 () Bool)

(declare-fun e!2552237 () Bool)

(assert (=> b!4113879 (= e!2552238 e!2552237)))

(declare-fun res!1680326 () Bool)

(assert (=> b!4113879 (=> res!1680326 e!2552237)))

(assert (=> b!4113879 (= res!1680326 (= (h!49772 newAcc!81) (tag!8079 (h!49775 l!6467))))))

(declare-fun b!4113880 () Bool)

(assert (=> b!4113880 (= e!2552237 (contains!8887 (t!340227 newAcc!81) (tag!8079 (h!49775 l!6467))))))

(assert (= (and d!1220301 res!1680327) b!4113879))

(assert (= (and b!4113879 (not res!1680326)) b!4113880))

(assert (=> d!1220301 m!4714451))

(declare-fun m!4714505 () Bool)

(assert (=> d!1220301 m!4714505))

(declare-fun m!4714507 () Bool)

(assert (=> b!4113880 m!4714507))

(assert (=> b!4113823 d!1220301))

(declare-fun d!1220303 () Bool)

(assert (=> d!1220303 true))

(declare-fun lambda!128530 () Int)

(declare-fun forall!8435 (List!44476 Int) Bool)

(assert (=> d!1220303 (forall!8435 newAcc!81 lambda!128530)))

(declare-fun lt!1468478 () Unit!63742)

(declare-fun choose!25145 (List!44476 List!44476) Unit!63742)

(assert (=> d!1220303 (= lt!1468478 (choose!25145 newAcc!81 acc!555))))

(assert (=> d!1220303 (set.subset (content!6837 newAcc!81) (content!6837 acc!555))))

(assert (=> d!1220303 (= (subsetContains!81 newAcc!81 acc!555) lt!1468478)))

(declare-fun bs!594461 () Bool)

(assert (= bs!594461 d!1220303))

(declare-fun m!4714509 () Bool)

(assert (=> bs!594461 m!4714509))

(declare-fun m!4714511 () Bool)

(assert (=> bs!594461 m!4714511))

(assert (=> bs!594461 m!4714451))

(assert (=> bs!594461 m!4714449))

(assert (=> b!4113823 d!1220303))

(declare-fun bs!594462 () Bool)

(declare-fun d!1220305 () Bool)

(assert (= bs!594462 (and d!1220305 d!1220303)))

(declare-fun lambda!128531 () Int)

(assert (=> bs!594462 (= (= newAcc!81 acc!555) (= lambda!128531 lambda!128530))))

(assert (=> d!1220305 true))

(assert (=> d!1220305 (forall!8435 acc!555 lambda!128531)))

(declare-fun lt!1468479 () Unit!63742)

(assert (=> d!1220305 (= lt!1468479 (choose!25145 acc!555 newAcc!81))))

(assert (=> d!1220305 (set.subset (content!6837 acc!555) (content!6837 newAcc!81))))

(assert (=> d!1220305 (= (subsetContains!81 acc!555 newAcc!81) lt!1468479)))

(declare-fun bs!594463 () Bool)

(assert (= bs!594463 d!1220305))

(declare-fun m!4714513 () Bool)

(assert (=> bs!594463 m!4714513))

(declare-fun m!4714515 () Bool)

(assert (=> bs!594463 m!4714515))

(assert (=> bs!594463 m!4714449))

(assert (=> bs!594463 m!4714451))

(assert (=> b!4113823 d!1220305))

(declare-fun d!1220307 () Bool)

(declare-fun res!1680332 () Bool)

(declare-fun e!2552243 () Bool)

(assert (=> d!1220307 (=> res!1680332 e!2552243)))

(assert (=> d!1220307 (= res!1680332 (is-Nil!44355 l!6467))))

(assert (=> d!1220307 (= (noDuplicateTag!2896 thiss!26911 l!6467 acc!555) e!2552243)))

(declare-fun b!4113887 () Bool)

(declare-fun e!2552244 () Bool)

(assert (=> b!4113887 (= e!2552243 e!2552244)))

(declare-fun res!1680333 () Bool)

(assert (=> b!4113887 (=> (not res!1680333) (not e!2552244))))

(assert (=> b!4113887 (= res!1680333 (not (contains!8887 acc!555 (tag!8079 (h!49775 l!6467)))))))

(declare-fun b!4113888 () Bool)

(assert (=> b!4113888 (= e!2552244 (noDuplicateTag!2896 thiss!26911 (t!340230 l!6467) (Cons!44352 (tag!8079 (h!49775 l!6467)) acc!555)))))

(assert (= (and d!1220307 (not res!1680332)) b!4113887))

(assert (= (and b!4113887 res!1680333) b!4113888))

(assert (=> b!4113887 m!4714437))

(declare-fun m!4714517 () Bool)

(assert (=> b!4113888 m!4714517))

(assert (=> b!4113818 d!1220307))

(declare-fun d!1220309 () Bool)

(assert (=> d!1220309 (= (inv!58957 (h!49772 newAcc!81)) (= (mod (str.len (value!226297 (h!49772 newAcc!81))) 2) 0))))

(assert (=> b!4113822 d!1220309))

(declare-fun b!4113902 () Bool)

(declare-fun e!2552247 () Bool)

(declare-fun tp!1252557 () Bool)

(declare-fun tp!1252558 () Bool)

(assert (=> b!4113902 (= e!2552247 (and tp!1252557 tp!1252558))))

(declare-fun b!4113899 () Bool)

(declare-fun tp_is_empty!21175 () Bool)

(assert (=> b!4113899 (= e!2552247 tp_is_empty!21175)))

(assert (=> b!4113826 (= tp!1252525 e!2552247)))

(declare-fun b!4113901 () Bool)

(declare-fun tp!1252559 () Bool)

(assert (=> b!4113901 (= e!2552247 tp!1252559)))

(declare-fun b!4113900 () Bool)

(declare-fun tp!1252556 () Bool)

(declare-fun tp!1252555 () Bool)

(assert (=> b!4113900 (= e!2552247 (and tp!1252556 tp!1252555))))

(assert (= (and b!4113826 (is-ElementMatch!12124 (regex!7219 (h!49775 l!6467)))) b!4113899))

(assert (= (and b!4113826 (is-Concat!19574 (regex!7219 (h!49775 l!6467)))) b!4113900))

(assert (= (and b!4113826 (is-Star!12124 (regex!7219 (h!49775 l!6467)))) b!4113901))

(assert (= (and b!4113826 (is-Union!12124 (regex!7219 (h!49775 l!6467)))) b!4113902))

(declare-fun b!4113913 () Bool)

(declare-fun b_free!115823 () Bool)

(declare-fun b_next!116527 () Bool)

(assert (=> b!4113913 (= b_free!115823 (not b_next!116527))))

(declare-fun tp!1252570 () Bool)

(declare-fun b_and!317709 () Bool)

(assert (=> b!4113913 (= tp!1252570 b_and!317709)))

(declare-fun b_free!115825 () Bool)

(declare-fun b_next!116529 () Bool)

(assert (=> b!4113913 (= b_free!115825 (not b_next!116529))))

(declare-fun tp!1252571 () Bool)

(declare-fun b_and!317711 () Bool)

(assert (=> b!4113913 (= tp!1252571 b_and!317711)))

(declare-fun e!2552257 () Bool)

(assert (=> b!4113913 (= e!2552257 (and tp!1252570 tp!1252571))))

(declare-fun b!4113912 () Bool)

(declare-fun e!2552256 () Bool)

(declare-fun tp!1252569 () Bool)

(assert (=> b!4113912 (= e!2552256 (and tp!1252569 (inv!58957 (tag!8079 (h!49775 (t!340230 l!6467)))) (inv!58960 (transformation!7219 (h!49775 (t!340230 l!6467)))) e!2552257))))

(declare-fun b!4113911 () Bool)

(declare-fun e!2552259 () Bool)

(declare-fun tp!1252568 () Bool)

(assert (=> b!4113911 (= e!2552259 (and e!2552256 tp!1252568))))

(assert (=> b!4113819 (= tp!1252524 e!2552259)))

(assert (= b!4113912 b!4113913))

(assert (= b!4113911 b!4113912))

(assert (= (and b!4113819 (is-Cons!44355 (t!340230 l!6467))) b!4113911))

(declare-fun m!4714519 () Bool)

(assert (=> b!4113912 m!4714519))

(declare-fun m!4714521 () Bool)

(assert (=> b!4113912 m!4714521))

(declare-fun b!4113918 () Bool)

(declare-fun e!2552264 () Bool)

(declare-fun tp!1252574 () Bool)

(assert (=> b!4113918 (= e!2552264 (and (inv!58957 (h!49772 (t!340227 acc!555))) tp!1252574))))

(assert (=> b!4113824 (= tp!1252526 e!2552264)))

(assert (= (and b!4113824 (is-Cons!44352 (t!340227 acc!555))) b!4113918))

(declare-fun m!4714523 () Bool)

(assert (=> b!4113918 m!4714523))

(declare-fun b!4113919 () Bool)

(declare-fun e!2552266 () Bool)

(declare-fun tp!1252575 () Bool)

(assert (=> b!4113919 (= e!2552266 (and (inv!58957 (h!49772 (t!340227 newAcc!81))) tp!1252575))))

(assert (=> b!4113822 (= tp!1252522 e!2552266)))

(assert (= (and b!4113822 (is-Cons!44352 (t!340227 newAcc!81))) b!4113919))

(declare-fun m!4714525 () Bool)

(assert (=> b!4113919 m!4714525))

(push 1)

(assert (not d!1220305))

(assert (not b!4113887))

(assert tp_is_empty!21175)

(assert (not b_next!116527))

(assert (not b!4113901))

(assert (not b!4113919))

(assert (not b!4113888))

(assert (not b_next!116529))

(assert (not b!4113900))

(assert (not b!4113878))

(assert b_and!317711)

(assert (not b_next!116521))

(assert b_and!317701)

(assert (not d!1220303))

(assert b_and!317709)

(assert (not b!4113902))

(assert (not b_next!116519))

(assert (not b!4113860))

(assert (not d!1220301))

(assert (not d!1220299))

(assert (not d!1220283))

(assert (not b!4113911))

(assert (not b!4113872))

(assert (not b!4113912))

(assert (not b!4113870))

(assert (not b!4113880))

(assert b_and!317703)

(assert (not b!4113918))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317709)

(assert (not b_next!116519))

(assert (not b_next!116527))

(assert (not b_next!116529))

(assert b_and!317711)

(assert (not b_next!116521))

(assert b_and!317703)

(assert b_and!317701)

(check-sat)

(pop 1)

