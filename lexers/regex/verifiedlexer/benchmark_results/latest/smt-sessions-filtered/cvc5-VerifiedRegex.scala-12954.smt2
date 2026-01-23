; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713206 () Bool)

(assert start!713206)

(declare-fun b!7316756 () Bool)

(declare-fun res!2956567 () Bool)

(declare-fun e!4380215 () Bool)

(assert (=> b!7316756 (=> (not res!2956567) (not e!4380215))))

(declare-datatypes ((C!38158 0))(
  ( (C!38159 (val!29175 Int)) )
))
(declare-datatypes ((Regex!18942 0))(
  ( (ElementMatch!18942 (c!1358274 C!38158)) (Concat!27787 (regOne!38396 Regex!18942) (regTwo!38396 Regex!18942)) (EmptyExpr!18942) (Star!18942 (reg!19271 Regex!18942)) (EmptyLang!18942) (Union!18942 (regOne!38397 Regex!18942) (regTwo!38397 Regex!18942)) )
))
(declare-datatypes ((List!71308 0))(
  ( (Nil!71184) (Cons!71184 (h!77632 Regex!18942) (t!385540 List!71308)) )
))
(declare-datatypes ((Context!15764 0))(
  ( (Context!15765 (exprs!8382 List!71308)) )
))
(declare-fun z1!542 () (Set Context!15764))

(declare-fun nullableZipper!3121 ((Set Context!15764)) Bool)

(assert (=> b!7316756 (= res!2956567 (nullableZipper!3121 z1!542))))

(declare-fun tp!2077266 () Bool)

(declare-fun setNonEmpty!54622 () Bool)

(declare-fun e!4380218 () Bool)

(declare-fun setRes!54622 () Bool)

(declare-fun setElem!54622 () Context!15764)

(declare-fun inv!90477 (Context!15764) Bool)

(assert (=> setNonEmpty!54622 (= setRes!54622 (and tp!2077266 (inv!90477 setElem!54622) e!4380218))))

(declare-fun setRest!54623 () (Set Context!15764))

(assert (=> setNonEmpty!54622 (= z1!542 (set.union (set.insert setElem!54622 (as set.empty (Set Context!15764))) setRest!54623))))

(declare-fun b!7316757 () Bool)

(declare-fun lambda!452463 () Int)

(declare-fun lt!2602295 () (Set Context!15764))

(declare-fun getWitness!2332 ((Set Context!15764) Int) Context!15764)

(assert (=> b!7316757 (= e!4380215 (not (set.member (getWitness!2332 z1!542 lambda!452463) lt!2602295)))))

(declare-fun res!2956565 () Bool)

(declare-fun e!4380217 () Bool)

(assert (=> start!713206 (=> (not res!2956565) (not e!4380217))))

(declare-datatypes ((List!71309 0))(
  ( (Nil!71185) (Cons!71185 (h!77633 C!38158) (t!385541 List!71309)) )
))
(declare-fun s!7362 () List!71309)

(assert (=> start!713206 (= res!2956565 (not (is-Cons!71185 s!7362)))))

(assert (=> start!713206 e!4380217))

(declare-fun e!4380219 () Bool)

(assert (=> start!713206 e!4380219))

(declare-fun condSetEmpty!54622 () Bool)

(assert (=> start!713206 (= condSetEmpty!54622 (= z1!542 (as set.empty (Set Context!15764))))))

(assert (=> start!713206 setRes!54622))

(declare-fun condSetEmpty!54623 () Bool)

(declare-fun z2!461 () (Set Context!15764))

(assert (=> start!713206 (= condSetEmpty!54623 (= z2!461 (as set.empty (Set Context!15764))))))

(declare-fun setRes!54623 () Bool)

(assert (=> start!713206 setRes!54623))

(declare-fun b!7316758 () Bool)

(declare-fun res!2956564 () Bool)

(assert (=> b!7316758 (=> (not res!2956564) (not e!4380215))))

(declare-fun exists!4594 ((Set Context!15764) Int) Bool)

(assert (=> b!7316758 (= res!2956564 (not (exists!4594 lt!2602295 lambda!452463)))))

(declare-fun b!7316759 () Bool)

(assert (=> b!7316759 (= e!4380217 e!4380215)))

(declare-fun res!2956566 () Bool)

(assert (=> b!7316759 (=> (not res!2956566) (not e!4380215))))

(assert (=> b!7316759 (= res!2956566 (not (nullableZipper!3121 lt!2602295)))))

(assert (=> b!7316759 (= lt!2602295 (set.union z1!542 z2!461))))

(declare-fun b!7316760 () Bool)

(declare-fun tp!2077268 () Bool)

(assert (=> b!7316760 (= e!4380218 tp!2077268)))

(declare-fun setIsEmpty!54622 () Bool)

(assert (=> setIsEmpty!54622 setRes!54622))

(declare-fun b!7316761 () Bool)

(declare-fun e!4380216 () Bool)

(declare-fun tp!2077267 () Bool)

(assert (=> b!7316761 (= e!4380216 tp!2077267)))

(declare-fun b!7316762 () Bool)

(declare-fun tp_is_empty!47629 () Bool)

(declare-fun tp!2077264 () Bool)

(assert (=> b!7316762 (= e!4380219 (and tp_is_empty!47629 tp!2077264))))

(declare-fun setIsEmpty!54623 () Bool)

(assert (=> setIsEmpty!54623 setRes!54623))

(declare-fun tp!2077265 () Bool)

(declare-fun setElem!54623 () Context!15764)

(declare-fun setNonEmpty!54623 () Bool)

(assert (=> setNonEmpty!54623 (= setRes!54623 (and tp!2077265 (inv!90477 setElem!54623) e!4380216))))

(declare-fun setRest!54622 () (Set Context!15764))

(assert (=> setNonEmpty!54623 (= z2!461 (set.union (set.insert setElem!54623 (as set.empty (Set Context!15764))) setRest!54622))))

(assert (= (and start!713206 res!2956565) b!7316759))

(assert (= (and b!7316759 res!2956566) b!7316758))

(assert (= (and b!7316758 res!2956564) b!7316756))

(assert (= (and b!7316756 res!2956567) b!7316757))

(assert (= (and start!713206 (is-Cons!71185 s!7362)) b!7316762))

(assert (= (and start!713206 condSetEmpty!54622) setIsEmpty!54622))

(assert (= (and start!713206 (not condSetEmpty!54622)) setNonEmpty!54622))

(assert (= setNonEmpty!54622 b!7316760))

(assert (= (and start!713206 condSetEmpty!54623) setIsEmpty!54623))

(assert (= (and start!713206 (not condSetEmpty!54623)) setNonEmpty!54623))

(assert (= setNonEmpty!54623 b!7316761))

(declare-fun m!7980948 () Bool)

(assert (=> b!7316756 m!7980948))

(declare-fun m!7980950 () Bool)

(assert (=> setNonEmpty!54622 m!7980950))

(declare-fun m!7980952 () Bool)

(assert (=> b!7316759 m!7980952))

(declare-fun m!7980954 () Bool)

(assert (=> b!7316758 m!7980954))

(declare-fun m!7980956 () Bool)

(assert (=> b!7316757 m!7980956))

(assert (=> b!7316757 m!7980956))

(declare-fun m!7980958 () Bool)

(assert (=> b!7316757 m!7980958))

(declare-fun m!7980960 () Bool)

(assert (=> setNonEmpty!54623 m!7980960))

(push 1)

(assert (not b!7316756))

(assert (not b!7316757))

(assert (not setNonEmpty!54622))

(assert tp_is_empty!47629)

(assert (not b!7316759))

(assert (not setNonEmpty!54623))

(assert (not b!7316758))

(assert (not b!7316762))

(assert (not b!7316760))

(assert (not b!7316761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271859 () Bool)

(declare-fun lambda!452471 () Int)

(declare-fun forall!17779 (List!71308 Int) Bool)

(assert (=> d!2271859 (= (inv!90477 setElem!54623) (forall!17779 (exprs!8382 setElem!54623) lambda!452471))))

(declare-fun bs!1915230 () Bool)

(assert (= bs!1915230 d!2271859))

(declare-fun m!7980976 () Bool)

(assert (=> bs!1915230 m!7980976))

(assert (=> setNonEmpty!54623 d!2271859))

(declare-fun bs!1915231 () Bool)

(declare-fun d!2271861 () Bool)

(assert (= bs!1915231 (and d!2271861 b!7316758)))

(declare-fun lambda!452474 () Int)

(assert (=> bs!1915231 (= lambda!452474 lambda!452463)))

(assert (=> d!2271861 (= (nullableZipper!3121 z1!542) (exists!4594 z1!542 lambda!452474))))

(declare-fun bs!1915232 () Bool)

(assert (= bs!1915232 d!2271861))

(declare-fun m!7980978 () Bool)

(assert (=> bs!1915232 m!7980978))

(assert (=> b!7316756 d!2271861))

(declare-fun bs!1915233 () Bool)

(declare-fun d!2271863 () Bool)

(assert (= bs!1915233 (and d!2271863 b!7316758)))

(declare-fun lambda!452475 () Int)

(assert (=> bs!1915233 (= lambda!452475 lambda!452463)))

(declare-fun bs!1915234 () Bool)

(assert (= bs!1915234 (and d!2271863 d!2271861)))

(assert (=> bs!1915234 (= lambda!452475 lambda!452474)))

(assert (=> d!2271863 (= (nullableZipper!3121 lt!2602295) (exists!4594 lt!2602295 lambda!452475))))

(declare-fun bs!1915235 () Bool)

(assert (= bs!1915235 d!2271863))

(declare-fun m!7980980 () Bool)

(assert (=> bs!1915235 m!7980980))

(assert (=> b!7316759 d!2271863))

(declare-fun d!2271865 () Bool)

(declare-fun e!4380237 () Bool)

(assert (=> d!2271865 e!4380237))

(declare-fun res!2956582 () Bool)

(assert (=> d!2271865 (=> (not res!2956582) (not e!4380237))))

(declare-fun lt!2602301 () Context!15764)

(declare-fun dynLambda!29165 (Int Context!15764) Bool)

(assert (=> d!2271865 (= res!2956582 (dynLambda!29165 lambda!452463 lt!2602301))))

(declare-datatypes ((List!71312 0))(
  ( (Nil!71188) (Cons!71188 (h!77636 Context!15764) (t!385544 List!71312)) )
))
(declare-fun getWitness!2334 (List!71312 Int) Context!15764)

(declare-fun toList!11629 ((Set Context!15764)) List!71312)

(assert (=> d!2271865 (= lt!2602301 (getWitness!2334 (toList!11629 z1!542) lambda!452463))))

(assert (=> d!2271865 (exists!4594 z1!542 lambda!452463)))

(assert (=> d!2271865 (= (getWitness!2332 z1!542 lambda!452463) lt!2602301)))

(declare-fun b!7316786 () Bool)

(assert (=> b!7316786 (= e!4380237 (set.member lt!2602301 z1!542))))

(assert (= (and d!2271865 res!2956582) b!7316786))

(declare-fun b_lambda!282607 () Bool)

(assert (=> (not b_lambda!282607) (not d!2271865)))

(declare-fun m!7980982 () Bool)

(assert (=> d!2271865 m!7980982))

(declare-fun m!7980984 () Bool)

(assert (=> d!2271865 m!7980984))

(assert (=> d!2271865 m!7980984))

(declare-fun m!7980986 () Bool)

(assert (=> d!2271865 m!7980986))

(declare-fun m!7980988 () Bool)

(assert (=> d!2271865 m!7980988))

(declare-fun m!7980990 () Bool)

(assert (=> b!7316786 m!7980990))

(assert (=> b!7316757 d!2271865))

(declare-fun d!2271867 () Bool)

(declare-fun lt!2602304 () Bool)

(declare-fun exists!4596 (List!71312 Int) Bool)

(assert (=> d!2271867 (= lt!2602304 (exists!4596 (toList!11629 lt!2602295) lambda!452463))))

(declare-fun choose!56751 ((Set Context!15764) Int) Bool)

(assert (=> d!2271867 (= lt!2602304 (choose!56751 lt!2602295 lambda!452463))))

(assert (=> d!2271867 (= (exists!4594 lt!2602295 lambda!452463) lt!2602304)))

(declare-fun bs!1915236 () Bool)

(assert (= bs!1915236 d!2271867))

(declare-fun m!7980992 () Bool)

(assert (=> bs!1915236 m!7980992))

(assert (=> bs!1915236 m!7980992))

(declare-fun m!7980994 () Bool)

(assert (=> bs!1915236 m!7980994))

(declare-fun m!7980996 () Bool)

(assert (=> bs!1915236 m!7980996))

(assert (=> b!7316758 d!2271867))

(declare-fun bs!1915237 () Bool)

(declare-fun d!2271869 () Bool)

(assert (= bs!1915237 (and d!2271869 d!2271859)))

(declare-fun lambda!452476 () Int)

(assert (=> bs!1915237 (= lambda!452476 lambda!452471)))

(assert (=> d!2271869 (= (inv!90477 setElem!54622) (forall!17779 (exprs!8382 setElem!54622) lambda!452476))))

(declare-fun bs!1915238 () Bool)

(assert (= bs!1915238 d!2271869))

(declare-fun m!7981008 () Bool)

(assert (=> bs!1915238 m!7981008))

(assert (=> setNonEmpty!54622 d!2271869))

(declare-fun condSetEmpty!54632 () Bool)

(assert (=> setNonEmpty!54623 (= condSetEmpty!54632 (= setRest!54622 (as set.empty (Set Context!15764))))))

(declare-fun setRes!54632 () Bool)

(assert (=> setNonEmpty!54623 (= tp!2077265 setRes!54632)))

(declare-fun setIsEmpty!54632 () Bool)

(assert (=> setIsEmpty!54632 setRes!54632))

(declare-fun setNonEmpty!54632 () Bool)

(declare-fun tp!2077289 () Bool)

(declare-fun setElem!54632 () Context!15764)

(declare-fun e!4380243 () Bool)

(assert (=> setNonEmpty!54632 (= setRes!54632 (and tp!2077289 (inv!90477 setElem!54632) e!4380243))))

(declare-fun setRest!54632 () (Set Context!15764))

(assert (=> setNonEmpty!54632 (= setRest!54622 (set.union (set.insert setElem!54632 (as set.empty (Set Context!15764))) setRest!54632))))

(declare-fun b!7316794 () Bool)

(declare-fun tp!2077288 () Bool)

(assert (=> b!7316794 (= e!4380243 tp!2077288)))

(assert (= (and setNonEmpty!54623 condSetEmpty!54632) setIsEmpty!54632))

(assert (= (and setNonEmpty!54623 (not condSetEmpty!54632)) setNonEmpty!54632))

(assert (= setNonEmpty!54632 b!7316794))

(declare-fun m!7981010 () Bool)

(assert (=> setNonEmpty!54632 m!7981010))

(declare-fun b!7316799 () Bool)

(declare-fun e!4380246 () Bool)

(declare-fun tp!2077294 () Bool)

(declare-fun tp!2077295 () Bool)

(assert (=> b!7316799 (= e!4380246 (and tp!2077294 tp!2077295))))

(assert (=> b!7316760 (= tp!2077268 e!4380246)))

(assert (= (and b!7316760 (is-Cons!71184 (exprs!8382 setElem!54622))) b!7316799))

(declare-fun b!7316804 () Bool)

(declare-fun e!4380249 () Bool)

(declare-fun tp!2077298 () Bool)

(assert (=> b!7316804 (= e!4380249 (and tp_is_empty!47629 tp!2077298))))

(assert (=> b!7316762 (= tp!2077264 e!4380249)))

(assert (= (and b!7316762 (is-Cons!71185 (t!385541 s!7362))) b!7316804))

(declare-fun condSetEmpty!54633 () Bool)

(assert (=> setNonEmpty!54622 (= condSetEmpty!54633 (= setRest!54623 (as set.empty (Set Context!15764))))))

(declare-fun setRes!54633 () Bool)

(assert (=> setNonEmpty!54622 (= tp!2077266 setRes!54633)))

(declare-fun setIsEmpty!54633 () Bool)

(assert (=> setIsEmpty!54633 setRes!54633))

(declare-fun e!4380250 () Bool)

(declare-fun setElem!54633 () Context!15764)

(declare-fun tp!2077300 () Bool)

(declare-fun setNonEmpty!54633 () Bool)

(assert (=> setNonEmpty!54633 (= setRes!54633 (and tp!2077300 (inv!90477 setElem!54633) e!4380250))))

(declare-fun setRest!54633 () (Set Context!15764))

(assert (=> setNonEmpty!54633 (= setRest!54623 (set.union (set.insert setElem!54633 (as set.empty (Set Context!15764))) setRest!54633))))

(declare-fun b!7316805 () Bool)

(declare-fun tp!2077299 () Bool)

(assert (=> b!7316805 (= e!4380250 tp!2077299)))

(assert (= (and setNonEmpty!54622 condSetEmpty!54633) setIsEmpty!54633))

(assert (= (and setNonEmpty!54622 (not condSetEmpty!54633)) setNonEmpty!54633))

(assert (= setNonEmpty!54633 b!7316805))

(declare-fun m!7981014 () Bool)

(assert (=> setNonEmpty!54633 m!7981014))

(declare-fun b!7316806 () Bool)

(declare-fun e!4380251 () Bool)

(declare-fun tp!2077301 () Bool)

(declare-fun tp!2077302 () Bool)

(assert (=> b!7316806 (= e!4380251 (and tp!2077301 tp!2077302))))

(assert (=> b!7316761 (= tp!2077267 e!4380251)))

(assert (= (and b!7316761 (is-Cons!71184 (exprs!8382 setElem!54623))) b!7316806))

(declare-fun b_lambda!282611 () Bool)

(assert (= b_lambda!282607 (or b!7316758 b_lambda!282611)))

(declare-fun bs!1915241 () Bool)

(declare-fun d!2271877 () Bool)

(assert (= bs!1915241 (and d!2271877 b!7316758)))

(declare-fun nullableContext!407 (Context!15764) Bool)

(assert (=> bs!1915241 (= (dynLambda!29165 lambda!452463 lt!2602301) (nullableContext!407 lt!2602301))))

(declare-fun m!7981016 () Bool)

(assert (=> bs!1915241 m!7981016))

(assert (=> d!2271865 d!2271877))

(push 1)

(assert (not d!2271867))

(assert (not setNonEmpty!54632))

(assert (not b!7316805))

(assert (not d!2271863))

(assert (not bs!1915241))

(assert (not d!2271861))

(assert (not b!7316799))

(assert (not d!2271869))

(assert (not setNonEmpty!54633))

(assert (not d!2271859))

(assert (not d!2271865))

(assert (not b!7316806))

(assert (not b_lambda!282611))

(assert (not b!7316794))

(assert (not b!7316804))

(assert tp_is_empty!47629)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

