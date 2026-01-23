; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713068 () Bool)

(assert start!713068)

(declare-fun b!7316197 () Bool)

(declare-fun e!4379810 () Bool)

(declare-fun e!4379808 () Bool)

(assert (=> b!7316197 (= e!4379810 e!4379808)))

(declare-fun res!2956361 () Bool)

(assert (=> b!7316197 (=> (not res!2956361) (not e!4379808))))

(declare-datatypes ((C!38138 0))(
  ( (C!38139 (val!29165 Int)) )
))
(declare-datatypes ((Regex!18932 0))(
  ( (ElementMatch!18932 (c!1358144 C!38138)) (Concat!27777 (regOne!38376 Regex!18932) (regTwo!38376 Regex!18932)) (EmptyExpr!18932) (Star!18932 (reg!19261 Regex!18932)) (EmptyLang!18932) (Union!18932 (regOne!38377 Regex!18932) (regTwo!38377 Regex!18932)) )
))
(declare-datatypes ((List!71282 0))(
  ( (Nil!71158) (Cons!71158 (h!77606 Regex!18932) (t!385514 List!71282)) )
))
(declare-datatypes ((Context!15744 0))(
  ( (Context!15745 (exprs!8372 List!71282)) )
))
(declare-fun lt!2602124 () (Set Context!15744))

(declare-fun nullableZipper!3111 ((Set Context!15744)) Bool)

(assert (=> b!7316197 (= res!2956361 (nullableZipper!3111 lt!2602124))))

(declare-fun z1!542 () (Set Context!15744))

(declare-fun z2!461 () (Set Context!15744))

(assert (=> b!7316197 (= lt!2602124 (set.union z1!542 z2!461))))

(declare-fun b!7316198 () Bool)

(declare-fun e!4379812 () Bool)

(declare-fun tp_is_empty!47609 () Bool)

(declare-fun tp!2076896 () Bool)

(assert (=> b!7316198 (= e!4379812 (and tp_is_empty!47609 tp!2076896))))

(declare-fun b!7316199 () Bool)

(declare-fun res!2956363 () Bool)

(assert (=> b!7316199 (=> (not res!2956363) (not e!4379808))))

(declare-fun lambda!452300 () Int)

(declare-fun exists!4578 ((Set Context!15744) Int) Bool)

(assert (=> b!7316199 (= res!2956363 (exists!4578 lt!2602124 lambda!452300))))

(declare-fun setIsEmpty!54526 () Bool)

(declare-fun setRes!54526 () Bool)

(assert (=> setIsEmpty!54526 setRes!54526))

(declare-fun res!2956362 () Bool)

(assert (=> start!713068 (=> (not res!2956362) (not e!4379810))))

(declare-datatypes ((List!71283 0))(
  ( (Nil!71159) (Cons!71159 (h!77607 C!38138) (t!385515 List!71283)) )
))
(declare-fun s!7362 () List!71283)

(assert (=> start!713068 (= res!2956362 (not (is-Cons!71159 s!7362)))))

(assert (=> start!713068 e!4379810))

(assert (=> start!713068 e!4379812))

(declare-fun condSetEmpty!54526 () Bool)

(assert (=> start!713068 (= condSetEmpty!54526 (= z1!542 (as set.empty (Set Context!15744))))))

(assert (=> start!713068 setRes!54526))

(declare-fun condSetEmpty!54527 () Bool)

(assert (=> start!713068 (= condSetEmpty!54527 (= z2!461 (as set.empty (Set Context!15744))))))

(declare-fun setRes!54527 () Bool)

(assert (=> start!713068 setRes!54527))

(declare-fun b!7316200 () Bool)

(declare-fun e!4379809 () Bool)

(assert (=> b!7316200 (= e!4379808 e!4379809)))

(declare-fun res!2956364 () Bool)

(assert (=> b!7316200 (=> (not res!2956364) (not e!4379809))))

(declare-fun lt!2602125 () Context!15744)

(assert (=> b!7316200 (= res!2956364 (and (set.member lt!2602125 lt!2602124) (set.member lt!2602125 z1!542)))))

(declare-fun getWitness!2316 ((Set Context!15744) Int) Context!15744)

(assert (=> b!7316200 (= lt!2602125 (getWitness!2316 lt!2602124 lambda!452300))))

(declare-fun b!7316201 () Bool)

(declare-fun e!4379811 () Bool)

(declare-fun tp!2076900 () Bool)

(assert (=> b!7316201 (= e!4379811 tp!2076900)))

(declare-fun setIsEmpty!54527 () Bool)

(assert (=> setIsEmpty!54527 setRes!54527))

(declare-fun b!7316202 () Bool)

(declare-fun e!4379807 () Bool)

(declare-fun tp!2076897 () Bool)

(assert (=> b!7316202 (= e!4379807 tp!2076897)))

(declare-fun setNonEmpty!54526 () Bool)

(declare-fun tp!2076898 () Bool)

(declare-fun setElem!54527 () Context!15744)

(declare-fun inv!90452 (Context!15744) Bool)

(assert (=> setNonEmpty!54526 (= setRes!54526 (and tp!2076898 (inv!90452 setElem!54527) e!4379811))))

(declare-fun setRest!54527 () (Set Context!15744))

(assert (=> setNonEmpty!54526 (= z1!542 (set.union (set.insert setElem!54527 (as set.empty (Set Context!15744))) setRest!54527))))

(declare-fun b!7316203 () Bool)

(declare-fun nullableContext!400 (Context!15744) Bool)

(assert (=> b!7316203 (= e!4379809 (not (nullableContext!400 lt!2602125)))))

(declare-fun tp!2076899 () Bool)

(declare-fun setElem!54526 () Context!15744)

(declare-fun setNonEmpty!54527 () Bool)

(assert (=> setNonEmpty!54527 (= setRes!54527 (and tp!2076899 (inv!90452 setElem!54526) e!4379807))))

(declare-fun setRest!54526 () (Set Context!15744))

(assert (=> setNonEmpty!54527 (= z2!461 (set.union (set.insert setElem!54526 (as set.empty (Set Context!15744))) setRest!54526))))

(assert (= (and start!713068 res!2956362) b!7316197))

(assert (= (and b!7316197 res!2956361) b!7316199))

(assert (= (and b!7316199 res!2956363) b!7316200))

(assert (= (and b!7316200 res!2956364) b!7316203))

(assert (= (and start!713068 (is-Cons!71159 s!7362)) b!7316198))

(assert (= (and start!713068 condSetEmpty!54526) setIsEmpty!54526))

(assert (= (and start!713068 (not condSetEmpty!54526)) setNonEmpty!54526))

(assert (= setNonEmpty!54526 b!7316201))

(assert (= (and start!713068 condSetEmpty!54527) setIsEmpty!54527))

(assert (= (and start!713068 (not condSetEmpty!54527)) setNonEmpty!54527))

(assert (= setNonEmpty!54527 b!7316202))

(declare-fun m!7980318 () Bool)

(assert (=> b!7316197 m!7980318))

(declare-fun m!7980320 () Bool)

(assert (=> setNonEmpty!54526 m!7980320))

(declare-fun m!7980322 () Bool)

(assert (=> setNonEmpty!54527 m!7980322))

(declare-fun m!7980324 () Bool)

(assert (=> b!7316203 m!7980324))

(declare-fun m!7980326 () Bool)

(assert (=> b!7316199 m!7980326))

(declare-fun m!7980328 () Bool)

(assert (=> b!7316200 m!7980328))

(declare-fun m!7980330 () Bool)

(assert (=> b!7316200 m!7980330))

(declare-fun m!7980332 () Bool)

(assert (=> b!7316200 m!7980332))

(push 1)

(assert (not b!7316198))

(assert (not b!7316203))

(assert (not b!7316199))

(assert (not b!7316200))

(assert (not b!7316197))

(assert tp_is_empty!47609)

(assert (not b!7316202))

(assert (not setNonEmpty!54527))

(assert (not b!7316201))

(assert (not setNonEmpty!54526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1915059 () Bool)

(declare-fun d!2271614 () Bool)

(assert (= bs!1915059 (and d!2271614 b!7316199)))

(declare-fun lambda!452308 () Int)

(assert (=> bs!1915059 (= lambda!452308 lambda!452300)))

(assert (=> d!2271614 (= (nullableZipper!3111 lt!2602124) (exists!4578 lt!2602124 lambda!452308))))

(declare-fun bs!1915060 () Bool)

(assert (= bs!1915060 d!2271614))

(declare-fun m!7980350 () Bool)

(assert (=> bs!1915060 m!7980350))

(assert (=> b!7316197 d!2271614))

(declare-fun d!2271616 () Bool)

(declare-fun lt!2602134 () Bool)

(declare-datatypes ((List!71286 0))(
  ( (Nil!71162) (Cons!71162 (h!77610 Context!15744) (t!385518 List!71286)) )
))
(declare-fun exists!4580 (List!71286 Int) Bool)

(declare-fun toList!11623 ((Set Context!15744)) List!71286)

(assert (=> d!2271616 (= lt!2602134 (exists!4580 (toList!11623 lt!2602124) lambda!452300))))

(declare-fun choose!56740 ((Set Context!15744) Int) Bool)

(assert (=> d!2271616 (= lt!2602134 (choose!56740 lt!2602124 lambda!452300))))

(assert (=> d!2271616 (= (exists!4578 lt!2602124 lambda!452300) lt!2602134)))

(declare-fun bs!1915061 () Bool)

(assert (= bs!1915061 d!2271616))

(declare-fun m!7980352 () Bool)

(assert (=> bs!1915061 m!7980352))

(assert (=> bs!1915061 m!7980352))

(declare-fun m!7980354 () Bool)

(assert (=> bs!1915061 m!7980354))

(declare-fun m!7980356 () Bool)

(assert (=> bs!1915061 m!7980356))

(assert (=> b!7316199 d!2271616))

(declare-fun d!2271618 () Bool)

(declare-fun lambda!452311 () Int)

(declare-fun forall!17771 (List!71282 Int) Bool)

(assert (=> d!2271618 (= (inv!90452 setElem!54527) (forall!17771 (exprs!8372 setElem!54527) lambda!452311))))

(declare-fun bs!1915062 () Bool)

(assert (= bs!1915062 d!2271618))

(declare-fun m!7980358 () Bool)

(assert (=> bs!1915062 m!7980358))

(assert (=> setNonEmpty!54526 d!2271618))

(declare-fun bs!1915063 () Bool)

(declare-fun d!2271620 () Bool)

(assert (= bs!1915063 (and d!2271620 d!2271618)))

(declare-fun lambda!452314 () Int)

(assert (=> bs!1915063 (not (= lambda!452314 lambda!452311))))

(assert (=> d!2271620 (= (nullableContext!400 lt!2602125) (forall!17771 (exprs!8372 lt!2602125) lambda!452314))))

(declare-fun bs!1915064 () Bool)

(assert (= bs!1915064 d!2271620))

(declare-fun m!7980360 () Bool)

(assert (=> bs!1915064 m!7980360))

(assert (=> b!7316203 d!2271620))

(declare-fun d!2271622 () Bool)

(declare-fun e!4379833 () Bool)

(assert (=> d!2271622 e!4379833))

(declare-fun res!2956379 () Bool)

(assert (=> d!2271622 (=> (not res!2956379) (not e!4379833))))

(declare-fun lt!2602137 () Context!15744)

(declare-fun dynLambda!29155 (Int Context!15744) Bool)

(assert (=> d!2271622 (= res!2956379 (dynLambda!29155 lambda!452300 lt!2602137))))

(declare-fun getWitness!2318 (List!71286 Int) Context!15744)

(assert (=> d!2271622 (= lt!2602137 (getWitness!2318 (toList!11623 lt!2602124) lambda!452300))))

(assert (=> d!2271622 (exists!4578 lt!2602124 lambda!452300)))

(assert (=> d!2271622 (= (getWitness!2316 lt!2602124 lambda!452300) lt!2602137)))

(declare-fun b!7316227 () Bool)

(assert (=> b!7316227 (= e!4379833 (set.member lt!2602137 lt!2602124))))

(assert (= (and d!2271622 res!2956379) b!7316227))

(declare-fun b_lambda!282551 () Bool)

(assert (=> (not b_lambda!282551) (not d!2271622)))

(declare-fun m!7980362 () Bool)

(assert (=> d!2271622 m!7980362))

(assert (=> d!2271622 m!7980352))

(assert (=> d!2271622 m!7980352))

(declare-fun m!7980364 () Bool)

(assert (=> d!2271622 m!7980364))

(assert (=> d!2271622 m!7980326))

(declare-fun m!7980366 () Bool)

(assert (=> b!7316227 m!7980366))

(assert (=> b!7316200 d!2271622))

(declare-fun bs!1915065 () Bool)

(declare-fun d!2271624 () Bool)

(assert (= bs!1915065 (and d!2271624 d!2271618)))

(declare-fun lambda!452315 () Int)

(assert (=> bs!1915065 (= lambda!452315 lambda!452311)))

(declare-fun bs!1915066 () Bool)

(assert (= bs!1915066 (and d!2271624 d!2271620)))

(assert (=> bs!1915066 (not (= lambda!452315 lambda!452314))))

(assert (=> d!2271624 (= (inv!90452 setElem!54526) (forall!17771 (exprs!8372 setElem!54526) lambda!452315))))

(declare-fun bs!1915067 () Bool)

(assert (= bs!1915067 d!2271624))

(declare-fun m!7980368 () Bool)

(assert (=> bs!1915067 m!7980368))

(assert (=> setNonEmpty!54527 d!2271624))

(declare-fun b!7316232 () Bool)

(declare-fun e!4379836 () Bool)

(declare-fun tp!2076920 () Bool)

(declare-fun tp!2076921 () Bool)

(assert (=> b!7316232 (= e!4379836 (and tp!2076920 tp!2076921))))

(assert (=> b!7316201 (= tp!2076900 e!4379836)))

(assert (= (and b!7316201 (is-Cons!71158 (exprs!8372 setElem!54527))) b!7316232))

(declare-fun b!7316237 () Bool)

(declare-fun e!4379839 () Bool)

(declare-fun tp!2076924 () Bool)

(assert (=> b!7316237 (= e!4379839 (and tp_is_empty!47609 tp!2076924))))

(assert (=> b!7316198 (= tp!2076896 e!4379839)))

(assert (= (and b!7316198 (is-Cons!71159 (t!385515 s!7362))) b!7316237))

(declare-fun b!7316238 () Bool)

(declare-fun e!4379840 () Bool)

(declare-fun tp!2076925 () Bool)

(declare-fun tp!2076926 () Bool)

(assert (=> b!7316238 (= e!4379840 (and tp!2076925 tp!2076926))))

(assert (=> b!7316202 (= tp!2076897 e!4379840)))

(assert (= (and b!7316202 (is-Cons!71158 (exprs!8372 setElem!54526))) b!7316238))

(declare-fun condSetEmpty!54536 () Bool)

(assert (=> setNonEmpty!54526 (= condSetEmpty!54536 (= setRest!54527 (as set.empty (Set Context!15744))))))

(declare-fun setRes!54536 () Bool)

(assert (=> setNonEmpty!54526 (= tp!2076898 setRes!54536)))

(declare-fun setIsEmpty!54536 () Bool)

(assert (=> setIsEmpty!54536 setRes!54536))

(declare-fun tp!2076932 () Bool)

(declare-fun setNonEmpty!54536 () Bool)

(declare-fun e!4379843 () Bool)

(declare-fun setElem!54536 () Context!15744)

(assert (=> setNonEmpty!54536 (= setRes!54536 (and tp!2076932 (inv!90452 setElem!54536) e!4379843))))

(declare-fun setRest!54536 () (Set Context!15744))

(assert (=> setNonEmpty!54536 (= setRest!54527 (set.union (set.insert setElem!54536 (as set.empty (Set Context!15744))) setRest!54536))))

(declare-fun b!7316243 () Bool)

(declare-fun tp!2076931 () Bool)

(assert (=> b!7316243 (= e!4379843 tp!2076931)))

(assert (= (and setNonEmpty!54526 condSetEmpty!54536) setIsEmpty!54536))

(assert (= (and setNonEmpty!54526 (not condSetEmpty!54536)) setNonEmpty!54536))

(assert (= setNonEmpty!54536 b!7316243))

(declare-fun m!7980370 () Bool)

(assert (=> setNonEmpty!54536 m!7980370))

(declare-fun condSetEmpty!54537 () Bool)

(assert (=> setNonEmpty!54527 (= condSetEmpty!54537 (= setRest!54526 (as set.empty (Set Context!15744))))))

(declare-fun setRes!54537 () Bool)

(assert (=> setNonEmpty!54527 (= tp!2076899 setRes!54537)))

(declare-fun setIsEmpty!54537 () Bool)

(assert (=> setIsEmpty!54537 setRes!54537))

(declare-fun e!4379844 () Bool)

(declare-fun tp!2076934 () Bool)

(declare-fun setElem!54537 () Context!15744)

(declare-fun setNonEmpty!54537 () Bool)

(assert (=> setNonEmpty!54537 (= setRes!54537 (and tp!2076934 (inv!90452 setElem!54537) e!4379844))))

(declare-fun setRest!54537 () (Set Context!15744))

(assert (=> setNonEmpty!54537 (= setRest!54526 (set.union (set.insert setElem!54537 (as set.empty (Set Context!15744))) setRest!54537))))

(declare-fun b!7316244 () Bool)

(declare-fun tp!2076933 () Bool)

(assert (=> b!7316244 (= e!4379844 tp!2076933)))

(assert (= (and setNonEmpty!54527 condSetEmpty!54537) setIsEmpty!54537))

(assert (= (and setNonEmpty!54527 (not condSetEmpty!54537)) setNonEmpty!54537))

(assert (= setNonEmpty!54537 b!7316244))

(declare-fun m!7980372 () Bool)

(assert (=> setNonEmpty!54537 m!7980372))

(declare-fun b_lambda!282553 () Bool)

(assert (= b_lambda!282551 (or b!7316199 b_lambda!282553)))

(declare-fun bs!1915068 () Bool)

(declare-fun d!2271626 () Bool)

(assert (= bs!1915068 (and d!2271626 b!7316199)))

(assert (=> bs!1915068 (= (dynLambda!29155 lambda!452300 lt!2602137) (nullableContext!400 lt!2602137))))

(declare-fun m!7980374 () Bool)

(assert (=> bs!1915068 m!7980374))

(assert (=> d!2271622 d!2271626))

(push 1)

(assert (not b_lambda!282553))

(assert (not b!7316243))

(assert (not d!2271622))

(assert (not b!7316237))

(assert (not b!7316232))

(assert (not setNonEmpty!54536))

(assert (not d!2271616))

(assert (not setNonEmpty!54537))

(assert (not b!7316238))

(assert (not d!2271614))

(assert (not d!2271618))

(assert (not d!2271620))

(assert (not bs!1915068))

(assert (not b!7316244))

(assert (not d!2271624))

(assert tp_is_empty!47609)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

