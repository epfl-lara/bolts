; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712946 () Bool)

(assert start!712946)

(declare-fun b!7315631 () Bool)

(declare-fun e!4379393 () Bool)

(declare-fun e!4379395 () Bool)

(assert (=> b!7315631 (= e!4379393 e!4379395)))

(declare-fun res!2956198 () Bool)

(assert (=> b!7315631 (=> (not res!2956198) (not e!4379395))))

(declare-datatypes ((C!38110 0))(
  ( (C!38111 (val!29151 Int)) )
))
(declare-datatypes ((Regex!18918 0))(
  ( (ElementMatch!18918 (c!1358016 C!38110)) (Concat!27763 (regOne!38348 Regex!18918) (regTwo!38348 Regex!18918)) (EmptyExpr!18918) (Star!18918 (reg!19247 Regex!18918)) (EmptyLang!18918) (Union!18918 (regOne!38349 Regex!18918) (regTwo!38349 Regex!18918)) )
))
(declare-datatypes ((List!71251 0))(
  ( (Nil!71127) (Cons!71127 (h!77575 Regex!18918) (t!385483 List!71251)) )
))
(declare-datatypes ((Context!15716 0))(
  ( (Context!15717 (exprs!8358 List!71251)) )
))
(declare-fun lt!2601963 () (Set Context!15716))

(declare-fun nullableZipper!3099 ((Set Context!15716)) Bool)

(assert (=> b!7315631 (= res!2956198 (nullableZipper!3099 lt!2601963))))

(declare-fun z1!542 () (Set Context!15716))

(declare-fun z2!461 () (Set Context!15716))

(assert (=> b!7315631 (= lt!2601963 (set.union z1!542 z2!461))))

(declare-fun b!7315632 () Bool)

(declare-fun e!4379397 () Bool)

(declare-fun tp_is_empty!47581 () Bool)

(declare-fun tp!2076470 () Bool)

(assert (=> b!7315632 (= e!4379397 (and tp_is_empty!47581 tp!2076470))))

(declare-fun b!7315633 () Bool)

(declare-fun e!4379398 () Bool)

(declare-fun tp!2076472 () Bool)

(assert (=> b!7315633 (= e!4379398 tp!2076472)))

(declare-fun setRes!54406 () Bool)

(declare-fun setElem!54407 () Context!15716)

(declare-fun setNonEmpty!54406 () Bool)

(declare-fun tp!2076469 () Bool)

(declare-fun inv!90417 (Context!15716) Bool)

(assert (=> setNonEmpty!54406 (= setRes!54406 (and tp!2076469 (inv!90417 setElem!54407) e!4379398))))

(declare-fun setRest!54406 () (Set Context!15716))

(assert (=> setNonEmpty!54406 (= z1!542 (set.union (set.insert setElem!54407 (as set.empty (Set Context!15716))) setRest!54406))))

(declare-fun b!7315634 () Bool)

(declare-fun e!4379396 () Bool)

(declare-fun tp!2076471 () Bool)

(assert (=> b!7315634 (= e!4379396 tp!2076471)))

(declare-fun setIsEmpty!54406 () Bool)

(assert (=> setIsEmpty!54406 setRes!54406))

(declare-fun b!7315635 () Bool)

(declare-fun e!4379394 () Bool)

(assert (=> b!7315635 (= e!4379394 (not (nullableZipper!3099 z2!461)))))

(declare-fun lambda!452144 () Int)

(declare-fun exists!4563 ((Set Context!15716) Int) Bool)

(assert (=> b!7315635 (exists!4563 z2!461 lambda!452144)))

(declare-fun lt!2601962 () Context!15716)

(declare-datatypes ((Unit!164593 0))(
  ( (Unit!164594) )
))
(declare-fun lt!2601961 () Unit!164593)

(declare-fun lemmaContainsThenExists!246 ((Set Context!15716) Context!15716 Int) Unit!164593)

(assert (=> b!7315635 (= lt!2601961 (lemmaContainsThenExists!246 z2!461 lt!2601962 lambda!452144))))

(declare-fun setRes!54407 () Bool)

(declare-fun tp!2076468 () Bool)

(declare-fun setNonEmpty!54407 () Bool)

(declare-fun setElem!54406 () Context!15716)

(assert (=> setNonEmpty!54407 (= setRes!54407 (and tp!2076468 (inv!90417 setElem!54406) e!4379396))))

(declare-fun setRest!54407 () (Set Context!15716))

(assert (=> setNonEmpty!54407 (= z2!461 (set.union (set.insert setElem!54406 (as set.empty (Set Context!15716))) setRest!54407))))

(declare-fun b!7315636 () Bool)

(declare-fun res!2956195 () Bool)

(assert (=> b!7315636 (=> (not res!2956195) (not e!4379395))))

(assert (=> b!7315636 (= res!2956195 (exists!4563 lt!2601963 lambda!452144))))

(declare-fun res!2956196 () Bool)

(assert (=> start!712946 (=> (not res!2956196) (not e!4379393))))

(declare-datatypes ((List!71252 0))(
  ( (Nil!71128) (Cons!71128 (h!77576 C!38110) (t!385484 List!71252)) )
))
(declare-fun s!7362 () List!71252)

(assert (=> start!712946 (= res!2956196 (not (is-Cons!71128 s!7362)))))

(assert (=> start!712946 e!4379393))

(assert (=> start!712946 e!4379397))

(declare-fun condSetEmpty!54407 () Bool)

(assert (=> start!712946 (= condSetEmpty!54407 (= z1!542 (as set.empty (Set Context!15716))))))

(assert (=> start!712946 setRes!54406))

(declare-fun condSetEmpty!54406 () Bool)

(assert (=> start!712946 (= condSetEmpty!54406 (= z2!461 (as set.empty (Set Context!15716))))))

(assert (=> start!712946 setRes!54407))

(declare-fun b!7315637 () Bool)

(assert (=> b!7315637 (= e!4379395 e!4379394)))

(declare-fun res!2956197 () Bool)

(assert (=> b!7315637 (=> (not res!2956197) (not e!4379394))))

(assert (=> b!7315637 (= res!2956197 (and (set.member lt!2601962 lt!2601963) (not (set.member lt!2601962 z1!542))))))

(declare-fun getWitness!2307 ((Set Context!15716) Int) Context!15716)

(assert (=> b!7315637 (= lt!2601962 (getWitness!2307 lt!2601963 lambda!452144))))

(declare-fun setIsEmpty!54407 () Bool)

(assert (=> setIsEmpty!54407 setRes!54407))

(assert (= (and start!712946 res!2956196) b!7315631))

(assert (= (and b!7315631 res!2956198) b!7315636))

(assert (= (and b!7315636 res!2956195) b!7315637))

(assert (= (and b!7315637 res!2956197) b!7315635))

(assert (= (and start!712946 (is-Cons!71128 s!7362)) b!7315632))

(assert (= (and start!712946 condSetEmpty!54407) setIsEmpty!54406))

(assert (= (and start!712946 (not condSetEmpty!54407)) setNonEmpty!54406))

(assert (= setNonEmpty!54406 b!7315633))

(assert (= (and start!712946 condSetEmpty!54406) setIsEmpty!54407))

(assert (= (and start!712946 (not condSetEmpty!54406)) setNonEmpty!54407))

(assert (= setNonEmpty!54407 b!7315634))

(declare-fun m!7979624 () Bool)

(assert (=> b!7315636 m!7979624))

(declare-fun m!7979626 () Bool)

(assert (=> b!7315631 m!7979626))

(declare-fun m!7979628 () Bool)

(assert (=> b!7315637 m!7979628))

(declare-fun m!7979630 () Bool)

(assert (=> b!7315637 m!7979630))

(declare-fun m!7979632 () Bool)

(assert (=> b!7315637 m!7979632))

(declare-fun m!7979634 () Bool)

(assert (=> b!7315635 m!7979634))

(declare-fun m!7979636 () Bool)

(assert (=> b!7315635 m!7979636))

(declare-fun m!7979638 () Bool)

(assert (=> b!7315635 m!7979638))

(declare-fun m!7979640 () Bool)

(assert (=> setNonEmpty!54406 m!7979640))

(declare-fun m!7979642 () Bool)

(assert (=> setNonEmpty!54407 m!7979642))

(push 1)

(assert (not b!7315637))

(assert (not b!7315636))

(assert (not b!7315631))

(assert (not setNonEmpty!54406))

(assert (not b!7315632))

(assert (not b!7315633))

(assert (not b!7315635))

(assert (not setNonEmpty!54407))

(assert tp_is_empty!47581)

(assert (not b!7315634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271341 () Bool)

(declare-fun lambda!452154 () Int)

(declare-fun forall!17766 (List!71251 Int) Bool)

(assert (=> d!2271341 (= (inv!90417 setElem!54406) (forall!17766 (exprs!8358 setElem!54406) lambda!452154))))

(declare-fun bs!1914833 () Bool)

(assert (= bs!1914833 d!2271341))

(declare-fun m!7979664 () Bool)

(assert (=> bs!1914833 m!7979664))

(assert (=> setNonEmpty!54407 d!2271341))

(declare-fun bs!1914834 () Bool)

(declare-fun d!2271343 () Bool)

(assert (= bs!1914834 (and d!2271343 b!7315636)))

(declare-fun lambda!452157 () Int)

(assert (=> bs!1914834 (= lambda!452157 lambda!452144)))

(assert (=> d!2271343 (= (nullableZipper!3099 z2!461) (exists!4563 z2!461 lambda!452157))))

(declare-fun bs!1914835 () Bool)

(assert (= bs!1914835 d!2271343))

(declare-fun m!7979666 () Bool)

(assert (=> bs!1914835 m!7979666))

(assert (=> b!7315635 d!2271343))

(declare-fun d!2271345 () Bool)

(declare-fun lt!2601975 () Bool)

(declare-datatypes ((List!71255 0))(
  ( (Nil!71131) (Cons!71131 (h!77579 Context!15716) (t!385487 List!71255)) )
))
(declare-fun exists!4565 (List!71255 Int) Bool)

(declare-fun toList!11620 ((Set Context!15716)) List!71255)

(assert (=> d!2271345 (= lt!2601975 (exists!4565 (toList!11620 z2!461) lambda!452144))))

(declare-fun choose!56729 ((Set Context!15716) Int) Bool)

(assert (=> d!2271345 (= lt!2601975 (choose!56729 z2!461 lambda!452144))))

(assert (=> d!2271345 (= (exists!4563 z2!461 lambda!452144) lt!2601975)))

(declare-fun bs!1914836 () Bool)

(assert (= bs!1914836 d!2271345))

(declare-fun m!7979668 () Bool)

(assert (=> bs!1914836 m!7979668))

(assert (=> bs!1914836 m!7979668))

(declare-fun m!7979670 () Bool)

(assert (=> bs!1914836 m!7979670))

(declare-fun m!7979672 () Bool)

(assert (=> bs!1914836 m!7979672))

(assert (=> b!7315635 d!2271345))

(declare-fun d!2271347 () Bool)

(assert (=> d!2271347 (exists!4563 z2!461 lambda!452144)))

(declare-fun lt!2601978 () Unit!164593)

(declare-fun choose!56730 ((Set Context!15716) Context!15716 Int) Unit!164593)

(assert (=> d!2271347 (= lt!2601978 (choose!56730 z2!461 lt!2601962 lambda!452144))))

(assert (=> d!2271347 (set.member lt!2601962 z2!461)))

(assert (=> d!2271347 (= (lemmaContainsThenExists!246 z2!461 lt!2601962 lambda!452144) lt!2601978)))

(declare-fun bs!1914837 () Bool)

(assert (= bs!1914837 d!2271347))

(assert (=> bs!1914837 m!7979636))

(declare-fun m!7979674 () Bool)

(assert (=> bs!1914837 m!7979674))

(declare-fun m!7979676 () Bool)

(assert (=> bs!1914837 m!7979676))

(assert (=> b!7315635 d!2271347))

(declare-fun bs!1914838 () Bool)

(declare-fun d!2271349 () Bool)

(assert (= bs!1914838 (and d!2271349 b!7315636)))

(declare-fun lambda!452158 () Int)

(assert (=> bs!1914838 (= lambda!452158 lambda!452144)))

(declare-fun bs!1914839 () Bool)

(assert (= bs!1914839 (and d!2271349 d!2271343)))

(assert (=> bs!1914839 (= lambda!452158 lambda!452157)))

(assert (=> d!2271349 (= (nullableZipper!3099 lt!2601963) (exists!4563 lt!2601963 lambda!452158))))

(declare-fun bs!1914840 () Bool)

(assert (= bs!1914840 d!2271349))

(declare-fun m!7979678 () Bool)

(assert (=> bs!1914840 m!7979678))

(assert (=> b!7315631 d!2271349))

(declare-fun d!2271351 () Bool)

(declare-fun e!4379420 () Bool)

(assert (=> d!2271351 e!4379420))

(declare-fun res!2956213 () Bool)

(assert (=> d!2271351 (=> (not res!2956213) (not e!4379420))))

(declare-fun lt!2601981 () Context!15716)

(declare-fun dynLambda!29152 (Int Context!15716) Bool)

(assert (=> d!2271351 (= res!2956213 (dynLambda!29152 lambda!452144 lt!2601981))))

(declare-fun getWitness!2309 (List!71255 Int) Context!15716)

(assert (=> d!2271351 (= lt!2601981 (getWitness!2309 (toList!11620 lt!2601963) lambda!452144))))

(assert (=> d!2271351 (exists!4563 lt!2601963 lambda!452144)))

(assert (=> d!2271351 (= (getWitness!2307 lt!2601963 lambda!452144) lt!2601981)))

(declare-fun b!7315661 () Bool)

(assert (=> b!7315661 (= e!4379420 (set.member lt!2601981 lt!2601963))))

(assert (= (and d!2271351 res!2956213) b!7315661))

(declare-fun b_lambda!282527 () Bool)

(assert (=> (not b_lambda!282527) (not d!2271351)))

(declare-fun m!7979680 () Bool)

(assert (=> d!2271351 m!7979680))

(declare-fun m!7979682 () Bool)

(assert (=> d!2271351 m!7979682))

(assert (=> d!2271351 m!7979682))

(declare-fun m!7979684 () Bool)

(assert (=> d!2271351 m!7979684))

(assert (=> d!2271351 m!7979624))

(declare-fun m!7979686 () Bool)

(assert (=> b!7315661 m!7979686))

(assert (=> b!7315637 d!2271351))

(declare-fun d!2271353 () Bool)

(declare-fun lt!2601982 () Bool)

(assert (=> d!2271353 (= lt!2601982 (exists!4565 (toList!11620 lt!2601963) lambda!452144))))

(assert (=> d!2271353 (= lt!2601982 (choose!56729 lt!2601963 lambda!452144))))

(assert (=> d!2271353 (= (exists!4563 lt!2601963 lambda!452144) lt!2601982)))

(declare-fun bs!1914841 () Bool)

(assert (= bs!1914841 d!2271353))

(assert (=> bs!1914841 m!7979682))

(assert (=> bs!1914841 m!7979682))

(declare-fun m!7979688 () Bool)

(assert (=> bs!1914841 m!7979688))

(declare-fun m!7979690 () Bool)

(assert (=> bs!1914841 m!7979690))

(assert (=> b!7315636 d!2271353))

(declare-fun bs!1914842 () Bool)

(declare-fun d!2271355 () Bool)

(assert (= bs!1914842 (and d!2271355 d!2271341)))

(declare-fun lambda!452159 () Int)

(assert (=> bs!1914842 (= lambda!452159 lambda!452154)))

(assert (=> d!2271355 (= (inv!90417 setElem!54407) (forall!17766 (exprs!8358 setElem!54407) lambda!452159))))

(declare-fun bs!1914843 () Bool)

(assert (= bs!1914843 d!2271355))

(declare-fun m!7979692 () Bool)

(assert (=> bs!1914843 m!7979692))

(assert (=> setNonEmpty!54406 d!2271355))

(declare-fun condSetEmpty!54416 () Bool)

(assert (=> setNonEmpty!54407 (= condSetEmpty!54416 (= setRest!54407 (as set.empty (Set Context!15716))))))

(declare-fun setRes!54416 () Bool)

(assert (=> setNonEmpty!54407 (= tp!2076468 setRes!54416)))

(declare-fun setIsEmpty!54416 () Bool)

(assert (=> setIsEmpty!54416 setRes!54416))

(declare-fun e!4379423 () Bool)

(declare-fun setElem!54416 () Context!15716)

(declare-fun tp!2076493 () Bool)

(declare-fun setNonEmpty!54416 () Bool)

(assert (=> setNonEmpty!54416 (= setRes!54416 (and tp!2076493 (inv!90417 setElem!54416) e!4379423))))

(declare-fun setRest!54416 () (Set Context!15716))

(assert (=> setNonEmpty!54416 (= setRest!54407 (set.union (set.insert setElem!54416 (as set.empty (Set Context!15716))) setRest!54416))))

(declare-fun b!7315666 () Bool)

(declare-fun tp!2076492 () Bool)

(assert (=> b!7315666 (= e!4379423 tp!2076492)))

(assert (= (and setNonEmpty!54407 condSetEmpty!54416) setIsEmpty!54416))

(assert (= (and setNonEmpty!54407 (not condSetEmpty!54416)) setNonEmpty!54416))

(assert (= setNonEmpty!54416 b!7315666))

(declare-fun m!7979694 () Bool)

(assert (=> setNonEmpty!54416 m!7979694))

(declare-fun b!7315671 () Bool)

(declare-fun e!4379426 () Bool)

(declare-fun tp!2076496 () Bool)

(assert (=> b!7315671 (= e!4379426 (and tp_is_empty!47581 tp!2076496))))

(assert (=> b!7315632 (= tp!2076470 e!4379426)))

(assert (= (and b!7315632 (is-Cons!71128 (t!385484 s!7362))) b!7315671))

(declare-fun b!7315676 () Bool)

(declare-fun e!4379429 () Bool)

(declare-fun tp!2076501 () Bool)

(declare-fun tp!2076502 () Bool)

(assert (=> b!7315676 (= e!4379429 (and tp!2076501 tp!2076502))))

(assert (=> b!7315634 (= tp!2076471 e!4379429)))

(assert (= (and b!7315634 (is-Cons!71127 (exprs!8358 setElem!54406))) b!7315676))

(declare-fun condSetEmpty!54417 () Bool)

(assert (=> setNonEmpty!54406 (= condSetEmpty!54417 (= setRest!54406 (as set.empty (Set Context!15716))))))

(declare-fun setRes!54417 () Bool)

(assert (=> setNonEmpty!54406 (= tp!2076469 setRes!54417)))

(declare-fun setIsEmpty!54417 () Bool)

(assert (=> setIsEmpty!54417 setRes!54417))

(declare-fun e!4379430 () Bool)

(declare-fun tp!2076504 () Bool)

(declare-fun setElem!54417 () Context!15716)

(declare-fun setNonEmpty!54417 () Bool)

(assert (=> setNonEmpty!54417 (= setRes!54417 (and tp!2076504 (inv!90417 setElem!54417) e!4379430))))

(declare-fun setRest!54417 () (Set Context!15716))

(assert (=> setNonEmpty!54417 (= setRest!54406 (set.union (set.insert setElem!54417 (as set.empty (Set Context!15716))) setRest!54417))))

(declare-fun b!7315677 () Bool)

(declare-fun tp!2076503 () Bool)

(assert (=> b!7315677 (= e!4379430 tp!2076503)))

(assert (= (and setNonEmpty!54406 condSetEmpty!54417) setIsEmpty!54417))

(assert (= (and setNonEmpty!54406 (not condSetEmpty!54417)) setNonEmpty!54417))

(assert (= setNonEmpty!54417 b!7315677))

(declare-fun m!7979696 () Bool)

(assert (=> setNonEmpty!54417 m!7979696))

(declare-fun b!7315678 () Bool)

(declare-fun e!4379431 () Bool)

(declare-fun tp!2076505 () Bool)

(declare-fun tp!2076506 () Bool)

(assert (=> b!7315678 (= e!4379431 (and tp!2076505 tp!2076506))))

(assert (=> b!7315633 (= tp!2076472 e!4379431)))

(assert (= (and b!7315633 (is-Cons!71127 (exprs!8358 setElem!54407))) b!7315678))

(declare-fun b_lambda!282529 () Bool)

(assert (= b_lambda!282527 (or b!7315636 b_lambda!282529)))

(declare-fun bs!1914844 () Bool)

(declare-fun d!2271357 () Bool)

(assert (= bs!1914844 (and d!2271357 b!7315636)))

(declare-fun nullableContext!399 (Context!15716) Bool)

(assert (=> bs!1914844 (= (dynLambda!29152 lambda!452144 lt!2601981) (nullableContext!399 lt!2601981))))

(declare-fun m!7979698 () Bool)

(assert (=> bs!1914844 m!7979698))

(assert (=> d!2271351 d!2271357))

(push 1)

(assert (not b!7315666))

(assert (not setNonEmpty!54417))

(assert (not d!2271351))

(assert tp_is_empty!47581)

(assert (not b!7315677))

(assert (not d!2271341))

(assert (not d!2271355))

(assert (not b!7315678))

(assert (not bs!1914844))

(assert (not b!7315671))

(assert (not b!7315676))

(assert (not d!2271349))

(assert (not d!2271345))

(assert (not d!2271347))

(assert (not d!2271343))

(assert (not d!2271353))

(assert (not b_lambda!282529))

(assert (not setNonEmpty!54416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

