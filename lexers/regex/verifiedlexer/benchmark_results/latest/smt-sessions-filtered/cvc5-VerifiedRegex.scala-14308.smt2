; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747452 () Bool)

(assert start!747452)

(declare-fun b!7914311 () Bool)

(declare-fun b_free!135267 () Bool)

(declare-fun b_next!136057 () Bool)

(assert (=> b!7914311 (= b_free!135267 (not b_next!136057))))

(declare-fun tp!2357113 () Bool)

(declare-fun b_and!353675 () Bool)

(assert (=> b!7914311 (= tp!2357113 b_and!353675)))

(declare-fun b_free!135269 () Bool)

(declare-fun b_next!136059 () Bool)

(assert (=> b!7914311 (= b_free!135269 (not b_next!136059))))

(declare-fun tp!2357112 () Bool)

(declare-fun b_and!353677 () Bool)

(assert (=> b!7914311 (= tp!2357112 b_and!353677)))

(declare-fun b!7914317 () Bool)

(declare-fun e!4671761 () Bool)

(assert (=> b!7914317 (= e!4671761 true)))

(assert (=> start!747452 e!4671761))

(assert (= start!747452 b!7914317))

(declare-fun lambda!472632 () Int)

(declare-fun order!29987 () Int)

(declare-datatypes ((List!74523 0))(
  ( (Nil!74399) (Cons!74399 (h!80847 (_ BitVec 16)) (t!389998 List!74523)) )
))
(declare-datatypes ((TokenValue!8997 0))(
  ( (FloatLiteralValue!17994 (text!63424 List!74523)) (TokenValueExt!8996 (__x!35279 Int)) (Broken!44985 (value!289355 List!74523)) (Object!9120) (End!8997) (Def!8997) (Underscore!8997) (Match!8997) (Else!8997) (Error!8997) (Case!8997) (If!8997) (Extends!8997) (Abstract!8997) (Class!8997) (Val!8997) (DelimiterValue!17994 (del!9057 List!74523)) (KeywordValue!9003 (value!289356 List!74523)) (CommentValue!17994 (value!289357 List!74523)) (WhitespaceValue!17994 (value!289358 List!74523)) (IndentationValue!8997 (value!289359 List!74523)) (String!83404) (Int32!8997) (Broken!44986 (value!289360 List!74523)) (Boolean!8998) (Unit!169513) (OperatorValue!9000 (op!9057 List!74523)) (IdentifierValue!17994 (value!289361 List!74523)) (IdentifierValue!17995 (value!289362 List!74523)) (WhitespaceValue!17995 (value!289363 List!74523)) (True!17994) (False!17994) (Broken!44987 (value!289364 List!74523)) (Broken!44988 (value!289365 List!74523)) (True!17995) (RightBrace!8997) (RightBracket!8997) (Colon!8997) (Null!8997) (Comma!8997) (LeftBracket!8997) (False!17995) (LeftBrace!8997) (ImaginaryLiteralValue!8997 (text!63425 List!74523)) (StringLiteralValue!26991 (value!289366 List!74523)) (EOFValue!8997 (value!289367 List!74523)) (IdentValue!8997 (value!289368 List!74523)) (DelimiterValue!17995 (value!289369 List!74523)) (DedentValue!8997 (value!289370 List!74523)) (NewLineValue!8997 (value!289371 List!74523)) (IntegerValue!26991 (value!289372 (_ BitVec 32)) (text!63426 List!74523)) (IntegerValue!26992 (value!289373 Int) (text!63427 List!74523)) (Times!8997) (Or!8997) (Equal!8997) (Minus!8997) (Broken!44989 (value!289374 List!74523)) (And!8997) (Div!8997) (LessEqual!8997) (Mod!8997) (Concat!30379) (Not!8997) (Plus!8997) (SpaceValue!8997 (value!289375 List!74523)) (IntegerValue!26993 (value!289376 Int) (text!63428 List!74523)) (StringLiteralValue!26992 (text!63429 List!74523)) (FloatLiteralValue!17995 (text!63430 List!74523)) (BytesLiteralValue!8997 (value!289377 List!74523)) (CommentValue!17995 (value!289378 List!74523)) (StringLiteralValue!26993 (value!289379 List!74523)) (ErrorTokenValue!8997 (msg!9058 List!74523)) )
))
(declare-datatypes ((C!43098 0))(
  ( (C!43099 (val!32013 Int)) )
))
(declare-datatypes ((List!74524 0))(
  ( (Nil!74400) (Cons!74400 (h!80848 C!43098) (t!389999 List!74524)) )
))
(declare-datatypes ((IArray!31771 0))(
  ( (IArray!31772 (innerList!15943 List!74524)) )
))
(declare-datatypes ((Conc!15855 0))(
  ( (Node!15855 (left!56801 Conc!15855) (right!57131 Conc!15855) (csize!31940 Int) (cheight!16066 Int)) (Leaf!30164 (xs!19237 IArray!31771) (csize!31941 Int)) (Empty!15855) )
))
(declare-datatypes ((BalanceConc!30828 0))(
  ( (BalanceConc!30829 (c!1452173 Conc!15855)) )
))
(declare-datatypes ((TokenValueInjection!17302 0))(
  ( (TokenValueInjection!17303 (toValue!11748 Int) (toChars!11607 Int)) )
))
(declare-fun thiss!6959 () TokenValueInjection!17302)

(declare-fun order!29989 () Int)

(declare-fun dynLambda!30210 (Int Int) Int)

(declare-fun dynLambda!30211 (Int Int) Int)

(assert (=> b!7914317 (< (dynLambda!30210 order!29987 (toValue!11748 thiss!6959)) (dynLambda!30211 order!29989 lambda!472632))))

(declare-fun order!29991 () Int)

(declare-fun dynLambda!30212 (Int Int) Int)

(assert (=> b!7914317 (< (dynLambda!30212 order!29991 (toChars!11607 thiss!6959)) (dynLambda!30211 order!29989 lambda!472632))))

(declare-datatypes ((Unit!169514 0))(
  ( (Unit!169515) )
))
(declare-fun lt!2689363 () Unit!169514)

(declare-fun c!5372 () BalanceConc!30828)

(declare-fun ForallOf!1320 (Int BalanceConc!30828) Unit!169514)

(assert (=> start!747452 (= lt!2689363 (ForallOf!1320 lambda!472632 c!5372))))

(declare-fun list!19337 (BalanceConc!30828) List!74524)

(declare-fun dynLambda!30213 (Int TokenValue!8997) BalanceConc!30828)

(declare-fun dynLambda!30214 (Int BalanceConc!30828) TokenValue!8997)

(assert (=> start!747452 (not (= (list!19337 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))) (list!19337 c!5372)))))

(declare-fun e!4671758 () Bool)

(declare-fun inv!95495 (TokenValueInjection!17302) Bool)

(assert (=> start!747452 (and (inv!95495 thiss!6959) e!4671758)))

(declare-fun e!4671757 () Bool)

(declare-fun inv!95496 (BalanceConc!30828) Bool)

(assert (=> start!747452 (and (inv!95496 c!5372) e!4671757)))

(assert (=> b!7914311 (= e!4671758 (and tp!2357113 tp!2357112))))

(declare-fun b!7914312 () Bool)

(declare-fun tp!2357111 () Bool)

(declare-fun inv!95497 (Conc!15855) Bool)

(assert (=> b!7914312 (= e!4671757 (and (inv!95497 (c!1452173 c!5372)) tp!2357111))))

(assert (= start!747452 b!7914311))

(assert (= start!747452 b!7914312))

(declare-fun b_lambda!290231 () Bool)

(assert (=> (not b_lambda!290231) (not start!747452)))

(declare-fun t!389995 () Bool)

(declare-fun tb!263303 () Bool)

(assert (=> (and b!7914311 (= (toChars!11607 thiss!6959) (toChars!11607 thiss!6959)) t!389995) tb!263303))

(declare-fun tp!2357116 () Bool)

(declare-fun b!7914322 () Bool)

(declare-fun e!4671764 () Bool)

(assert (=> b!7914322 (= e!4671764 (and (inv!95497 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))) tp!2357116))))

(declare-fun result!360726 () Bool)

(assert (=> tb!263303 (= result!360726 (and (inv!95496 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))) e!4671764))))

(assert (= tb!263303 b!7914322))

(declare-fun m!8288044 () Bool)

(assert (=> b!7914322 m!8288044))

(declare-fun m!8288046 () Bool)

(assert (=> tb!263303 m!8288046))

(assert (=> start!747452 t!389995))

(declare-fun b_and!353679 () Bool)

(assert (= b_and!353677 (and (=> t!389995 result!360726) b_and!353679)))

(declare-fun b_lambda!290233 () Bool)

(assert (=> (not b_lambda!290233) (not start!747452)))

(declare-fun t!389997 () Bool)

(declare-fun tb!263305 () Bool)

(assert (=> (and b!7914311 (= (toValue!11748 thiss!6959) (toValue!11748 thiss!6959)) t!389997) tb!263305))

(declare-fun result!360730 () Bool)

(declare-fun inv!21 (TokenValue!8997) Bool)

(assert (=> tb!263305 (= result!360730 (inv!21 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(declare-fun m!8288048 () Bool)

(assert (=> tb!263305 m!8288048))

(assert (=> start!747452 t!389997))

(declare-fun b_and!353681 () Bool)

(assert (= b_and!353675 (and (=> t!389997 result!360730) b_and!353681)))

(declare-fun m!8288050 () Bool)

(assert (=> start!747452 m!8288050))

(declare-fun m!8288052 () Bool)

(assert (=> start!747452 m!8288052))

(declare-fun m!8288054 () Bool)

(assert (=> start!747452 m!8288054))

(declare-fun m!8288056 () Bool)

(assert (=> start!747452 m!8288056))

(declare-fun m!8288058 () Bool)

(assert (=> start!747452 m!8288058))

(assert (=> start!747452 m!8288054))

(declare-fun m!8288060 () Bool)

(assert (=> start!747452 m!8288060))

(assert (=> start!747452 m!8288056))

(declare-fun m!8288062 () Bool)

(assert (=> start!747452 m!8288062))

(declare-fun m!8288064 () Bool)

(assert (=> b!7914312 m!8288064))

(push 1)

(assert (not b_next!136059))

(assert (not b_next!136057))

(assert b_and!353681)

(assert (not b!7914322))

(assert (not start!747452))

(assert (not b_lambda!290231))

(assert (not tb!263305))

(assert (not tb!263303))

(assert (not b!7914312))

(assert b_and!353679)

(assert (not b_lambda!290233))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353681)

(assert b_and!353679)

(assert (not b_next!136059))

(assert (not b_next!136057))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!290239 () Bool)

(assert (= b_lambda!290233 (or (and b!7914311 b_free!135267) b_lambda!290239)))

(declare-fun b_lambda!290241 () Bool)

(assert (= b_lambda!290231 (or (and b!7914311 b_free!135269) b_lambda!290241)))

(push 1)

(assert (not b_next!136059))

(assert (not b_next!136057))

(assert (not b_lambda!290241))

(assert b_and!353681)

(assert (not b!7914322))

(assert (not b_lambda!290239))

(assert (not start!747452))

(assert (not tb!263305))

(assert (not tb!263303))

(assert (not b!7914312))

(assert b_and!353679)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353681)

(assert b_and!353679)

(assert (not b_next!136059))

(assert (not b_next!136057))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2361263 () Bool)

(declare-fun dynLambda!30220 (Int BalanceConc!30828) Bool)

(assert (=> d!2361263 (dynLambda!30220 lambda!472632 c!5372)))

(declare-fun lt!2689369 () Unit!169514)

(declare-fun choose!59783 (Int BalanceConc!30828) Unit!169514)

(assert (=> d!2361263 (= lt!2689369 (choose!59783 lambda!472632 c!5372))))

(declare-fun Forall!1853 (Int) Bool)

(assert (=> d!2361263 (Forall!1853 lambda!472632)))

(assert (=> d!2361263 (= (ForallOf!1320 lambda!472632 c!5372) lt!2689369)))

(declare-fun b_lambda!290243 () Bool)

(assert (=> (not b_lambda!290243) (not d!2361263)))

(declare-fun bs!1968411 () Bool)

(assert (= bs!1968411 d!2361263))

(declare-fun m!8288088 () Bool)

(assert (=> bs!1968411 m!8288088))

(declare-fun m!8288090 () Bool)

(assert (=> bs!1968411 m!8288090))

(declare-fun m!8288092 () Bool)

(assert (=> bs!1968411 m!8288092))

(assert (=> start!747452 d!2361263))

(declare-fun d!2361265 () Bool)

(declare-fun list!19339 (Conc!15855) List!74524)

(assert (=> d!2361265 (= (list!19337 c!5372) (list!19339 (c!1452173 c!5372)))))

(declare-fun bs!1968412 () Bool)

(assert (= bs!1968412 d!2361265))

(declare-fun m!8288094 () Bool)

(assert (=> bs!1968412 m!8288094))

(assert (=> start!747452 d!2361265))

(declare-fun d!2361267 () Bool)

(declare-fun res!3141181 () Bool)

(declare-fun e!4671785 () Bool)

(assert (=> d!2361267 (=> (not res!3141181) (not e!4671785))))

(declare-fun semiInverseModEq!3850 (Int Int) Bool)

(assert (=> d!2361267 (= res!3141181 (semiInverseModEq!3850 (toChars!11607 thiss!6959) (toValue!11748 thiss!6959)))))

(assert (=> d!2361267 (= (inv!95495 thiss!6959) e!4671785)))

(declare-fun b!7914345 () Bool)

(declare-fun equivClasses!3665 (Int Int) Bool)

(assert (=> b!7914345 (= e!4671785 (equivClasses!3665 (toChars!11607 thiss!6959) (toValue!11748 thiss!6959)))))

(assert (= (and d!2361267 res!3141181) b!7914345))

(declare-fun m!8288096 () Bool)

(assert (=> d!2361267 m!8288096))

(declare-fun m!8288098 () Bool)

(assert (=> b!7914345 m!8288098))

(assert (=> start!747452 d!2361267))

(declare-fun d!2361269 () Bool)

(assert (=> d!2361269 (= (list!19337 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))) (list!19339 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))))

(declare-fun bs!1968413 () Bool)

(assert (= bs!1968413 d!2361269))

(declare-fun m!8288100 () Bool)

(assert (=> bs!1968413 m!8288100))

(assert (=> start!747452 d!2361269))

(declare-fun d!2361271 () Bool)

(declare-fun isBalanced!4482 (Conc!15855) Bool)

(assert (=> d!2361271 (= (inv!95496 c!5372) (isBalanced!4482 (c!1452173 c!5372)))))

(declare-fun bs!1968414 () Bool)

(assert (= bs!1968414 d!2361271))

(declare-fun m!8288102 () Bool)

(assert (=> bs!1968414 m!8288102))

(assert (=> start!747452 d!2361271))

(declare-fun b!7914356 () Bool)

(declare-fun e!4671792 () Bool)

(declare-fun e!4671793 () Bool)

(assert (=> b!7914356 (= e!4671792 e!4671793)))

(declare-fun c!1452179 () Bool)

(assert (=> b!7914356 (= c!1452179 (is-IntegerValue!26992 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(declare-fun d!2361273 () Bool)

(declare-fun c!1452180 () Bool)

(assert (=> d!2361273 (= c!1452180 (is-IntegerValue!26991 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(assert (=> d!2361273 (= (inv!21 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)) e!4671792)))

(declare-fun b!7914357 () Bool)

(declare-fun inv!16 (TokenValue!8997) Bool)

(assert (=> b!7914357 (= e!4671792 (inv!16 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(declare-fun b!7914358 () Bool)

(declare-fun res!3141184 () Bool)

(declare-fun e!4671794 () Bool)

(assert (=> b!7914358 (=> res!3141184 e!4671794)))

(assert (=> b!7914358 (= res!3141184 (not (is-IntegerValue!26993 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))))

(assert (=> b!7914358 (= e!4671793 e!4671794)))

(declare-fun b!7914359 () Bool)

(declare-fun inv!17 (TokenValue!8997) Bool)

(assert (=> b!7914359 (= e!4671793 (inv!17 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(declare-fun b!7914360 () Bool)

(declare-fun inv!15 (TokenValue!8997) Bool)

(assert (=> b!7914360 (= e!4671794 (inv!15 (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))

(assert (= (and d!2361273 c!1452180) b!7914357))

(assert (= (and d!2361273 (not c!1452180)) b!7914356))

(assert (= (and b!7914356 c!1452179) b!7914359))

(assert (= (and b!7914356 (not c!1452179)) b!7914358))

(assert (= (and b!7914358 (not res!3141184)) b!7914360))

(declare-fun m!8288104 () Bool)

(assert (=> b!7914357 m!8288104))

(declare-fun m!8288106 () Bool)

(assert (=> b!7914359 m!8288106))

(declare-fun m!8288108 () Bool)

(assert (=> b!7914360 m!8288108))

(assert (=> tb!263305 d!2361273))

(declare-fun d!2361275 () Bool)

(assert (=> d!2361275 (= (inv!95496 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))) (isBalanced!4482 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))))

(declare-fun bs!1968415 () Bool)

(assert (= bs!1968415 d!2361275))

(declare-fun m!8288110 () Bool)

(assert (=> bs!1968415 m!8288110))

(assert (=> tb!263303 d!2361275))

(declare-fun d!2361277 () Bool)

(declare-fun c!1452183 () Bool)

(assert (=> d!2361277 (= c!1452183 (is-Node!15855 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))))

(declare-fun e!4671799 () Bool)

(assert (=> d!2361277 (= (inv!95497 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))) e!4671799)))

(declare-fun b!7914367 () Bool)

(declare-fun inv!95501 (Conc!15855) Bool)

(assert (=> b!7914367 (= e!4671799 (inv!95501 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))))

(declare-fun b!7914368 () Bool)

(declare-fun e!4671800 () Bool)

(assert (=> b!7914368 (= e!4671799 e!4671800)))

(declare-fun res!3141187 () Bool)

(assert (=> b!7914368 (= res!3141187 (not (is-Leaf!30164 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))))))

(assert (=> b!7914368 (=> res!3141187 e!4671800)))

(declare-fun b!7914369 () Bool)

(declare-fun inv!95502 (Conc!15855) Bool)

(assert (=> b!7914369 (= e!4671800 (inv!95502 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))))))

(assert (= (and d!2361277 c!1452183) b!7914367))

(assert (= (and d!2361277 (not c!1452183)) b!7914368))

(assert (= (and b!7914368 (not res!3141187)) b!7914369))

(declare-fun m!8288112 () Bool)

(assert (=> b!7914367 m!8288112))

(declare-fun m!8288114 () Bool)

(assert (=> b!7914369 m!8288114))

(assert (=> b!7914322 d!2361277))

(declare-fun d!2361279 () Bool)

(declare-fun c!1452184 () Bool)

(assert (=> d!2361279 (= c!1452184 (is-Node!15855 (c!1452173 c!5372)))))

(declare-fun e!4671801 () Bool)

(assert (=> d!2361279 (= (inv!95497 (c!1452173 c!5372)) e!4671801)))

(declare-fun b!7914370 () Bool)

(assert (=> b!7914370 (= e!4671801 (inv!95501 (c!1452173 c!5372)))))

(declare-fun b!7914371 () Bool)

(declare-fun e!4671802 () Bool)

(assert (=> b!7914371 (= e!4671801 e!4671802)))

(declare-fun res!3141188 () Bool)

(assert (=> b!7914371 (= res!3141188 (not (is-Leaf!30164 (c!1452173 c!5372))))))

(assert (=> b!7914371 (=> res!3141188 e!4671802)))

(declare-fun b!7914372 () Bool)

(assert (=> b!7914372 (= e!4671802 (inv!95502 (c!1452173 c!5372)))))

(assert (= (and d!2361279 c!1452184) b!7914370))

(assert (= (and d!2361279 (not c!1452184)) b!7914371))

(assert (= (and b!7914371 (not res!3141188)) b!7914372))

(declare-fun m!8288116 () Bool)

(assert (=> b!7914370 m!8288116))

(declare-fun m!8288118 () Bool)

(assert (=> b!7914372 m!8288118))

(assert (=> b!7914312 d!2361279))

(declare-fun e!4671807 () Bool)

(declare-fun b!7914381 () Bool)

(declare-fun tp!2357135 () Bool)

(declare-fun tp!2357136 () Bool)

(assert (=> b!7914381 (= e!4671807 (and (inv!95497 (left!56801 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))) tp!2357135 (inv!95497 (right!57131 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))) tp!2357136))))

(declare-fun b!7914383 () Bool)

(declare-fun e!4671808 () Bool)

(declare-fun tp!2357137 () Bool)

(assert (=> b!7914383 (= e!4671808 tp!2357137)))

(declare-fun b!7914382 () Bool)

(declare-fun inv!95503 (IArray!31771) Bool)

(assert (=> b!7914382 (= e!4671807 (and (inv!95503 (xs!19237 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))) e!4671808))))

(assert (=> b!7914322 (= tp!2357116 (and (inv!95497 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372)))) e!4671807))))

(assert (= (and b!7914322 (is-Node!15855 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))) b!7914381))

(assert (= b!7914382 b!7914383))

(assert (= (and b!7914322 (is-Leaf!30164 (c!1452173 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))))) b!7914382))

(declare-fun m!8288120 () Bool)

(assert (=> b!7914381 m!8288120))

(declare-fun m!8288122 () Bool)

(assert (=> b!7914381 m!8288122))

(declare-fun m!8288124 () Bool)

(assert (=> b!7914382 m!8288124))

(assert (=> b!7914322 m!8288044))

(declare-fun tp!2357138 () Bool)

(declare-fun e!4671809 () Bool)

(declare-fun tp!2357139 () Bool)

(declare-fun b!7914384 () Bool)

(assert (=> b!7914384 (= e!4671809 (and (inv!95497 (left!56801 (c!1452173 c!5372))) tp!2357138 (inv!95497 (right!57131 (c!1452173 c!5372))) tp!2357139))))

(declare-fun b!7914386 () Bool)

(declare-fun e!4671810 () Bool)

(declare-fun tp!2357140 () Bool)

(assert (=> b!7914386 (= e!4671810 tp!2357140)))

(declare-fun b!7914385 () Bool)

(assert (=> b!7914385 (= e!4671809 (and (inv!95503 (xs!19237 (c!1452173 c!5372))) e!4671810))))

(assert (=> b!7914312 (= tp!2357111 (and (inv!95497 (c!1452173 c!5372)) e!4671809))))

(assert (= (and b!7914312 (is-Node!15855 (c!1452173 c!5372))) b!7914384))

(assert (= b!7914385 b!7914386))

(assert (= (and b!7914312 (is-Leaf!30164 (c!1452173 c!5372))) b!7914385))

(declare-fun m!8288126 () Bool)

(assert (=> b!7914384 m!8288126))

(declare-fun m!8288128 () Bool)

(assert (=> b!7914384 m!8288128))

(declare-fun m!8288130 () Bool)

(assert (=> b!7914385 m!8288130))

(assert (=> b!7914312 m!8288064))

(declare-fun b_lambda!290245 () Bool)

(assert (= b_lambda!290243 (or start!747452 b_lambda!290245)))

(declare-fun bs!1968416 () Bool)

(declare-fun d!2361281 () Bool)

(assert (= bs!1968416 (and d!2361281 start!747452)))

(assert (=> bs!1968416 (= (dynLambda!30220 lambda!472632 c!5372) (= (list!19337 (dynLambda!30213 (toChars!11607 thiss!6959) (dynLambda!30214 (toValue!11748 thiss!6959) c!5372))) (list!19337 c!5372)))))

(declare-fun b_lambda!290247 () Bool)

(assert (=> (not b_lambda!290247) (not bs!1968416)))

(assert (=> bs!1968416 t!389995))

(declare-fun b_and!353691 () Bool)

(assert (= b_and!353679 (and (=> t!389995 result!360726) b_and!353691)))

(declare-fun b_lambda!290249 () Bool)

(assert (=> (not b_lambda!290249) (not bs!1968416)))

(assert (=> bs!1968416 t!389997))

(declare-fun b_and!353693 () Bool)

(assert (= b_and!353681 (and (=> t!389997 result!360730) b_and!353693)))

(assert (=> bs!1968416 m!8288054))

(assert (=> bs!1968416 m!8288056))

(assert (=> bs!1968416 m!8288054))

(assert (=> bs!1968416 m!8288056))

(assert (=> bs!1968416 m!8288062))

(assert (=> bs!1968416 m!8288052))

(assert (=> d!2361263 d!2361281))

(push 1)

(assert (not b_next!136059))

(assert (not b!7914370))

(assert (not b!7914382))

(assert (not b_next!136057))

(assert (not b!7914386))

(assert (not b_lambda!290241))

(assert (not b!7914345))

(assert (not b!7914381))

(assert (not d!2361275))

(assert b_and!353693)

(assert (not b!7914312))

(assert (not b_lambda!290249))

(assert (not d!2361265))

(assert (not d!2361267))

(assert (not b_lambda!290245))

(assert (not b!7914372))

(assert b_and!353691)

(assert (not b_lambda!290247))

(assert (not b!7914359))

(assert (not d!2361271))

(assert (not b!7914384))

(assert (not b!7914360))

(assert (not d!2361269))

(assert (not b!7914385))

(assert (not d!2361263))

(assert (not bs!1968416))

(assert (not b!7914369))

(assert (not b!7914322))

(assert (not b!7914367))

(assert (not b_lambda!290239))

(assert (not b!7914383))

(assert (not b!7914357))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353693)

(assert b_and!353691)

(assert (not b_next!136059))

(assert (not b_next!136057))

(check-sat)

(pop 1)

