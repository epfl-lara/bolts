; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712902 () Bool)

(assert start!712902)

(declare-fun b!7315471 () Bool)

(declare-fun e!4379268 () Bool)

(declare-fun e!4379271 () Bool)

(assert (=> b!7315471 (= e!4379268 e!4379271)))

(declare-fun res!2956139 () Bool)

(assert (=> b!7315471 (=> (not res!2956139) (not e!4379271))))

(declare-datatypes ((C!38102 0))(
  ( (C!38103 (val!29147 Int)) )
))
(declare-datatypes ((Regex!18914 0))(
  ( (ElementMatch!18914 (c!1357982 C!38102)) (Concat!27759 (regOne!38340 Regex!18914) (regTwo!38340 Regex!18914)) (EmptyExpr!18914) (Star!18914 (reg!19243 Regex!18914)) (EmptyLang!18914) (Union!18914 (regOne!38341 Regex!18914) (regTwo!38341 Regex!18914)) )
))
(declare-datatypes ((List!71240 0))(
  ( (Nil!71116) (Cons!71116 (h!77564 Regex!18914) (t!385472 List!71240)) )
))
(declare-datatypes ((Context!15708 0))(
  ( (Context!15709 (exprs!8354 List!71240)) )
))
(declare-fun lt!2601901 () (Set Context!15708))

(declare-fun nullableZipper!3095 ((Set Context!15708)) Bool)

(assert (=> b!7315471 (= res!2956139 (nullableZipper!3095 lt!2601901))))

(declare-fun z1!542 () (Set Context!15708))

(declare-fun z2!461 () (Set Context!15708))

(assert (=> b!7315471 (= lt!2601901 (set.union z1!542 z2!461))))

(declare-fun b!7315472 () Bool)

(declare-fun lambda!452089 () Int)

(declare-fun getWitness!2300 ((Set Context!15708) Int) Context!15708)

(assert (=> b!7315472 (= e!4379271 (not (set.member (getWitness!2300 lt!2601901 lambda!452089) lt!2601901)))))

(declare-fun b!7315473 () Bool)

(declare-fun e!4379269 () Bool)

(declare-fun tp_is_empty!47573 () Bool)

(declare-fun tp!2076334 () Bool)

(assert (=> b!7315473 (= e!4379269 (and tp_is_empty!47573 tp!2076334))))

(declare-fun b!7315474 () Bool)

(declare-fun e!4379267 () Bool)

(declare-fun tp!2076332 () Bool)

(assert (=> b!7315474 (= e!4379267 tp!2076332)))

(declare-fun res!2956141 () Bool)

(assert (=> start!712902 (=> (not res!2956141) (not e!4379268))))

(declare-datatypes ((List!71241 0))(
  ( (Nil!71117) (Cons!71117 (h!77565 C!38102) (t!385473 List!71241)) )
))
(declare-fun s!7362 () List!71241)

(assert (=> start!712902 (= res!2956141 (not (is-Cons!71117 s!7362)))))

(assert (=> start!712902 e!4379268))

(assert (=> start!712902 e!4379269))

(declare-fun condSetEmpty!54367 () Bool)

(assert (=> start!712902 (= condSetEmpty!54367 (= z1!542 (as set.empty (Set Context!15708))))))

(declare-fun setRes!54366 () Bool)

(assert (=> start!712902 setRes!54366))

(declare-fun condSetEmpty!54366 () Bool)

(assert (=> start!712902 (= condSetEmpty!54366 (= z2!461 (as set.empty (Set Context!15708))))))

(declare-fun setRes!54367 () Bool)

(assert (=> start!712902 setRes!54367))

(declare-fun setIsEmpty!54366 () Bool)

(assert (=> setIsEmpty!54366 setRes!54366))

(declare-fun setElem!54366 () Context!15708)

(declare-fun tp!2076333 () Bool)

(declare-fun setNonEmpty!54366 () Bool)

(declare-fun inv!90407 (Context!15708) Bool)

(assert (=> setNonEmpty!54366 (= setRes!54367 (and tp!2076333 (inv!90407 setElem!54366) e!4379267))))

(declare-fun setRest!54366 () (Set Context!15708))

(assert (=> setNonEmpty!54366 (= z2!461 (set.union (set.insert setElem!54366 (as set.empty (Set Context!15708))) setRest!54366))))

(declare-fun setElem!54367 () Context!15708)

(declare-fun setNonEmpty!54367 () Bool)

(declare-fun tp!2076335 () Bool)

(declare-fun e!4379270 () Bool)

(assert (=> setNonEmpty!54367 (= setRes!54366 (and tp!2076335 (inv!90407 setElem!54367) e!4379270))))

(declare-fun setRest!54367 () (Set Context!15708))

(assert (=> setNonEmpty!54367 (= z1!542 (set.union (set.insert setElem!54367 (as set.empty (Set Context!15708))) setRest!54367))))

(declare-fun b!7315475 () Bool)

(declare-fun tp!2076336 () Bool)

(assert (=> b!7315475 (= e!4379270 tp!2076336)))

(declare-fun setIsEmpty!54367 () Bool)

(assert (=> setIsEmpty!54367 setRes!54367))

(declare-fun b!7315476 () Bool)

(declare-fun res!2956140 () Bool)

(assert (=> b!7315476 (=> (not res!2956140) (not e!4379271))))

(declare-fun exists!4556 ((Set Context!15708) Int) Bool)

(assert (=> b!7315476 (= res!2956140 (exists!4556 lt!2601901 lambda!452089))))

(assert (= (and start!712902 res!2956141) b!7315471))

(assert (= (and b!7315471 res!2956139) b!7315476))

(assert (= (and b!7315476 res!2956140) b!7315472))

(assert (= (and start!712902 (is-Cons!71117 s!7362)) b!7315473))

(assert (= (and start!712902 condSetEmpty!54367) setIsEmpty!54366))

(assert (= (and start!712902 (not condSetEmpty!54367)) setNonEmpty!54367))

(assert (= setNonEmpty!54367 b!7315475))

(assert (= (and start!712902 condSetEmpty!54366) setIsEmpty!54367))

(assert (= (and start!712902 (not condSetEmpty!54366)) setNonEmpty!54366))

(assert (= setNonEmpty!54366 b!7315474))

(declare-fun m!7979458 () Bool)

(assert (=> b!7315476 m!7979458))

(declare-fun m!7979460 () Bool)

(assert (=> b!7315471 m!7979460))

(declare-fun m!7979462 () Bool)

(assert (=> setNonEmpty!54367 m!7979462))

(declare-fun m!7979464 () Bool)

(assert (=> setNonEmpty!54366 m!7979464))

(declare-fun m!7979466 () Bool)

(assert (=> b!7315472 m!7979466))

(assert (=> b!7315472 m!7979466))

(declare-fun m!7979468 () Bool)

(assert (=> b!7315472 m!7979468))

(push 1)

(assert (not b!7315472))

(assert (not b!7315476))

(assert (not setNonEmpty!54366))

(assert (not b!7315473))

(assert (not b!7315471))

(assert (not setNonEmpty!54367))

(assert (not b!7315475))

(assert tp_is_empty!47573)

(assert (not b!7315474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271283 () Bool)

(declare-fun e!4379289 () Bool)

(assert (=> d!2271283 e!4379289))

(declare-fun res!2956153 () Bool)

(assert (=> d!2271283 (=> (not res!2956153) (not e!4379289))))

(declare-fun lt!2601907 () Context!15708)

(declare-fun dynLambda!29149 (Int Context!15708) Bool)

(assert (=> d!2271283 (= res!2956153 (dynLambda!29149 lambda!452089 lt!2601907))))

(declare-datatypes ((List!71244 0))(
  ( (Nil!71120) (Cons!71120 (h!77568 Context!15708) (t!385476 List!71244)) )
))
(declare-fun getWitness!2302 (List!71244 Int) Context!15708)

(declare-fun toList!11617 ((Set Context!15708)) List!71244)

(assert (=> d!2271283 (= lt!2601907 (getWitness!2302 (toList!11617 lt!2601901) lambda!452089))))

(assert (=> d!2271283 (exists!4556 lt!2601901 lambda!452089)))

(assert (=> d!2271283 (= (getWitness!2300 lt!2601901 lambda!452089) lt!2601907)))

(declare-fun b!7315497 () Bool)

(assert (=> b!7315497 (= e!4379289 (set.member lt!2601907 lt!2601901))))

(assert (= (and d!2271283 res!2956153) b!7315497))

(declare-fun b_lambda!282515 () Bool)

(assert (=> (not b_lambda!282515) (not d!2271283)))

(declare-fun m!7979482 () Bool)

(assert (=> d!2271283 m!7979482))

(declare-fun m!7979484 () Bool)

(assert (=> d!2271283 m!7979484))

(assert (=> d!2271283 m!7979484))

(declare-fun m!7979486 () Bool)

(assert (=> d!2271283 m!7979486))

(assert (=> d!2271283 m!7979458))

(declare-fun m!7979488 () Bool)

(assert (=> b!7315497 m!7979488))

(assert (=> b!7315472 d!2271283))

(declare-fun d!2271285 () Bool)

(declare-fun lambda!452097 () Int)

(declare-fun forall!17763 (List!71240 Int) Bool)

(assert (=> d!2271285 (= (inv!90407 setElem!54367) (forall!17763 (exprs!8354 setElem!54367) lambda!452097))))

(declare-fun bs!1914794 () Bool)

(assert (= bs!1914794 d!2271285))

(declare-fun m!7979490 () Bool)

(assert (=> bs!1914794 m!7979490))

(assert (=> setNonEmpty!54367 d!2271285))

(declare-fun bs!1914795 () Bool)

(declare-fun d!2271289 () Bool)

(assert (= bs!1914795 (and d!2271289 b!7315476)))

(declare-fun lambda!452100 () Int)

(assert (=> bs!1914795 (= lambda!452100 lambda!452089)))

(assert (=> d!2271289 (= (nullableZipper!3095 lt!2601901) (exists!4556 lt!2601901 lambda!452100))))

(declare-fun bs!1914796 () Bool)

(assert (= bs!1914796 d!2271289))

(declare-fun m!7979492 () Bool)

(assert (=> bs!1914796 m!7979492))

(assert (=> b!7315471 d!2271289))

(declare-fun bs!1914797 () Bool)

(declare-fun d!2271291 () Bool)

(assert (= bs!1914797 (and d!2271291 d!2271285)))

(declare-fun lambda!452101 () Int)

(assert (=> bs!1914797 (= lambda!452101 lambda!452097)))

(assert (=> d!2271291 (= (inv!90407 setElem!54366) (forall!17763 (exprs!8354 setElem!54366) lambda!452101))))

(declare-fun bs!1914798 () Bool)

(assert (= bs!1914798 d!2271291))

(declare-fun m!7979494 () Bool)

(assert (=> bs!1914798 m!7979494))

(assert (=> setNonEmpty!54366 d!2271291))

(declare-fun d!2271293 () Bool)

(declare-fun lt!2601910 () Bool)

(declare-fun exists!4558 (List!71244 Int) Bool)

(assert (=> d!2271293 (= lt!2601910 (exists!4558 (toList!11617 lt!2601901) lambda!452089))))

(declare-fun choose!56725 ((Set Context!15708) Int) Bool)

(assert (=> d!2271293 (= lt!2601910 (choose!56725 lt!2601901 lambda!452089))))

(assert (=> d!2271293 (= (exists!4556 lt!2601901 lambda!452089) lt!2601910)))

(declare-fun bs!1914799 () Bool)

(assert (= bs!1914799 d!2271293))

(assert (=> bs!1914799 m!7979484))

(assert (=> bs!1914799 m!7979484))

(declare-fun m!7979496 () Bool)

(assert (=> bs!1914799 m!7979496))

(declare-fun m!7979498 () Bool)

(assert (=> bs!1914799 m!7979498))

(assert (=> b!7315476 d!2271293))

(declare-fun b!7315502 () Bool)

(declare-fun e!4379292 () Bool)

(declare-fun tp!2076354 () Bool)

(assert (=> b!7315502 (= e!4379292 (and tp_is_empty!47573 tp!2076354))))

(assert (=> b!7315473 (= tp!2076334 e!4379292)))

(assert (= (and b!7315473 (is-Cons!71117 (t!385473 s!7362))) b!7315502))

(declare-fun b!7315507 () Bool)

(declare-fun e!4379295 () Bool)

(declare-fun tp!2076359 () Bool)

(declare-fun tp!2076360 () Bool)

(assert (=> b!7315507 (= e!4379295 (and tp!2076359 tp!2076360))))

(assert (=> b!7315475 (= tp!2076336 e!4379295)))

(assert (= (and b!7315475 (is-Cons!71116 (exprs!8354 setElem!54367))) b!7315507))

(declare-fun condSetEmpty!54376 () Bool)

(assert (=> setNonEmpty!54367 (= condSetEmpty!54376 (= setRest!54367 (as set.empty (Set Context!15708))))))

(declare-fun setRes!54376 () Bool)

(assert (=> setNonEmpty!54367 (= tp!2076335 setRes!54376)))

(declare-fun setIsEmpty!54376 () Bool)

(assert (=> setIsEmpty!54376 setRes!54376))

(declare-fun e!4379298 () Bool)

(declare-fun setElem!54376 () Context!15708)

(declare-fun setNonEmpty!54376 () Bool)

(declare-fun tp!2076366 () Bool)

(assert (=> setNonEmpty!54376 (= setRes!54376 (and tp!2076366 (inv!90407 setElem!54376) e!4379298))))

(declare-fun setRest!54376 () (Set Context!15708))

(assert (=> setNonEmpty!54376 (= setRest!54367 (set.union (set.insert setElem!54376 (as set.empty (Set Context!15708))) setRest!54376))))

(declare-fun b!7315512 () Bool)

(declare-fun tp!2076365 () Bool)

(assert (=> b!7315512 (= e!4379298 tp!2076365)))

(assert (= (and setNonEmpty!54367 condSetEmpty!54376) setIsEmpty!54376))

(assert (= (and setNonEmpty!54367 (not condSetEmpty!54376)) setNonEmpty!54376))

(assert (= setNonEmpty!54376 b!7315512))

(declare-fun m!7979500 () Bool)

(assert (=> setNonEmpty!54376 m!7979500))

(declare-fun condSetEmpty!54377 () Bool)

(assert (=> setNonEmpty!54366 (= condSetEmpty!54377 (= setRest!54366 (as set.empty (Set Context!15708))))))

(declare-fun setRes!54377 () Bool)

(assert (=> setNonEmpty!54366 (= tp!2076333 setRes!54377)))

(declare-fun setIsEmpty!54377 () Bool)

(assert (=> setIsEmpty!54377 setRes!54377))

(declare-fun tp!2076368 () Bool)

(declare-fun e!4379299 () Bool)

(declare-fun setNonEmpty!54377 () Bool)

(declare-fun setElem!54377 () Context!15708)

(assert (=> setNonEmpty!54377 (= setRes!54377 (and tp!2076368 (inv!90407 setElem!54377) e!4379299))))

(declare-fun setRest!54377 () (Set Context!15708))

(assert (=> setNonEmpty!54377 (= setRest!54366 (set.union (set.insert setElem!54377 (as set.empty (Set Context!15708))) setRest!54377))))

(declare-fun b!7315513 () Bool)

(declare-fun tp!2076367 () Bool)

(assert (=> b!7315513 (= e!4379299 tp!2076367)))

(assert (= (and setNonEmpty!54366 condSetEmpty!54377) setIsEmpty!54377))

(assert (= (and setNonEmpty!54366 (not condSetEmpty!54377)) setNonEmpty!54377))

(assert (= setNonEmpty!54377 b!7315513))

(declare-fun m!7979502 () Bool)

(assert (=> setNonEmpty!54377 m!7979502))

(declare-fun b!7315514 () Bool)

(declare-fun e!4379300 () Bool)

(declare-fun tp!2076369 () Bool)

(declare-fun tp!2076370 () Bool)

(assert (=> b!7315514 (= e!4379300 (and tp!2076369 tp!2076370))))

(assert (=> b!7315474 (= tp!2076332 e!4379300)))

(assert (= (and b!7315474 (is-Cons!71116 (exprs!8354 setElem!54366))) b!7315514))

(declare-fun b_lambda!282517 () Bool)

(assert (= b_lambda!282515 (or b!7315476 b_lambda!282517)))

(declare-fun bs!1914800 () Bool)

(declare-fun d!2271295 () Bool)

(assert (= bs!1914800 (and d!2271295 b!7315476)))

(declare-fun nullableContext!397 (Context!15708) Bool)

(assert (=> bs!1914800 (= (dynLambda!29149 lambda!452089 lt!2601907) (nullableContext!397 lt!2601907))))

(declare-fun m!7979504 () Bool)

(assert (=> bs!1914800 m!7979504))

(assert (=> d!2271283 d!2271295))

(push 1)

(assert (not b!7315513))

(assert (not b!7315514))

(assert (not setNonEmpty!54376))

(assert (not d!2271283))

(assert tp_is_empty!47573)

(assert (not d!2271291))

(assert (not b!7315512))

(assert (not b!7315507))

(assert (not b!7315502))

(assert (not setNonEmpty!54377))

(assert (not bs!1914800))

(assert (not d!2271289))

(assert (not d!2271285))

(assert (not d!2271293))

(assert (not b_lambda!282517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

