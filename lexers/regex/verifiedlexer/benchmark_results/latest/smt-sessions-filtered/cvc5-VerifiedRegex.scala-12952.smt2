; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713118 () Bool)

(assert start!713118)

(declare-fun b!7316403 () Bool)

(declare-datatypes ((Unit!164617 0))(
  ( (Unit!164618) )
))
(declare-fun e!4379975 () Unit!164617)

(declare-fun Unit!164619 () Unit!164617)

(assert (=> b!7316403 (= e!4379975 Unit!164619)))

(declare-fun lt!2602191 () Unit!164617)

(declare-fun call!665794 () Unit!164617)

(assert (=> b!7316403 (= lt!2602191 call!665794)))

(declare-fun call!665793 () Bool)

(assert (=> b!7316403 call!665793))

(declare-fun setIsEmpty!54578 () Bool)

(declare-fun setRes!54579 () Bool)

(assert (=> setIsEmpty!54578 setRes!54579))

(declare-fun tp!2077066 () Bool)

(declare-fun setNonEmpty!54578 () Bool)

(declare-fun e!4379973 () Bool)

(declare-datatypes ((C!38150 0))(
  ( (C!38151 (val!29171 Int)) )
))
(declare-datatypes ((Regex!18938 0))(
  ( (ElementMatch!18938 (c!1358193 C!38150)) (Concat!27783 (regOne!38388 Regex!18938) (regTwo!38388 Regex!18938)) (EmptyExpr!18938) (Star!18938 (reg!19267 Regex!18938)) (EmptyLang!18938) (Union!18938 (regOne!38389 Regex!18938) (regTwo!38389 Regex!18938)) )
))
(declare-datatypes ((List!71297 0))(
  ( (Nil!71173) (Cons!71173 (h!77621 Regex!18938) (t!385529 List!71297)) )
))
(declare-datatypes ((Context!15756 0))(
  ( (Context!15757 (exprs!8378 List!71297)) )
))
(declare-fun setElem!54579 () Context!15756)

(declare-fun setRes!54578 () Bool)

(declare-fun inv!90467 (Context!15756) Bool)

(assert (=> setNonEmpty!54578 (= setRes!54578 (and tp!2077066 (inv!90467 setElem!54579) e!4379973))))

(declare-fun z2!461 () (Set Context!15756))

(declare-fun setRest!54578 () (Set Context!15756))

(assert (=> setNonEmpty!54578 (= z2!461 (set.union (set.insert setElem!54579 (as set.empty (Set Context!15756))) setRest!54578))))

(declare-fun bm!665788 () Bool)

(declare-fun c!1358192 () Bool)

(declare-fun z1!542 () (Set Context!15756))

(declare-fun lambda!452373 () Int)

(declare-fun exists!4587 ((Set Context!15756) Int) Bool)

(assert (=> bm!665788 (= call!665793 (exists!4587 (ite c!1358192 z1!542 z2!461) (ite c!1358192 lambda!452373 lambda!452373)))))

(declare-fun b!7316404 () Bool)

(declare-fun res!2956442 () Bool)

(declare-fun e!4379972 () Bool)

(assert (=> b!7316404 (=> (not res!2956442) (not e!4379972))))

(declare-fun lt!2602187 () (Set Context!15756))

(assert (=> b!7316404 (= res!2956442 (exists!4587 lt!2602187 lambda!452373))))

(declare-fun b!7316405 () Bool)

(declare-fun e!4379970 () Bool)

(assert (=> b!7316405 (= e!4379970 e!4379972)))

(declare-fun res!2956444 () Bool)

(assert (=> b!7316405 (=> (not res!2956444) (not e!4379972))))

(declare-fun nullableZipper!3117 ((Set Context!15756)) Bool)

(assert (=> b!7316405 (= res!2956444 (nullableZipper!3117 lt!2602187))))

(assert (=> b!7316405 (= lt!2602187 (set.union z1!542 z2!461))))

(declare-fun setIsEmpty!54579 () Bool)

(assert (=> setIsEmpty!54579 setRes!54578))

(declare-fun b!7316406 () Bool)

(declare-fun tp!2077065 () Bool)

(assert (=> b!7316406 (= e!4379973 tp!2077065)))

(declare-fun b!7316407 () Bool)

(declare-fun Unit!164620 () Unit!164617)

(assert (=> b!7316407 (= e!4379975 Unit!164620)))

(declare-fun lt!2602188 () Unit!164617)

(assert (=> b!7316407 (= lt!2602188 call!665794)))

(assert (=> b!7316407 call!665793))

(declare-fun bm!665789 () Bool)

(declare-fun lt!2602190 () Context!15756)

(declare-fun lemmaContainsThenExists!252 ((Set Context!15756) Context!15756 Int) Unit!164617)

(assert (=> bm!665789 (= call!665794 (lemmaContainsThenExists!252 (ite c!1358192 z1!542 z2!461) lt!2602190 (ite c!1358192 lambda!452373 lambda!452373)))))

(declare-fun b!7316408 () Bool)

(declare-fun e!4379969 () Bool)

(assert (=> b!7316408 (= e!4379972 e!4379969)))

(declare-fun res!2956443 () Bool)

(assert (=> b!7316408 (=> (not res!2956443) (not e!4379969))))

(assert (=> b!7316408 (= res!2956443 (set.member lt!2602190 lt!2602187))))

(declare-fun getWitness!2325 ((Set Context!15756) Int) Context!15756)

(assert (=> b!7316408 (= lt!2602190 (getWitness!2325 lt!2602187 lambda!452373))))

(declare-fun res!2956445 () Bool)

(assert (=> start!713118 (=> (not res!2956445) (not e!4379970))))

(declare-datatypes ((List!71298 0))(
  ( (Nil!71174) (Cons!71174 (h!77622 C!38150) (t!385530 List!71298)) )
))
(declare-fun s!7362 () List!71298)

(assert (=> start!713118 (= res!2956445 (not (is-Cons!71174 s!7362)))))

(assert (=> start!713118 e!4379970))

(declare-fun e!4379976 () Bool)

(assert (=> start!713118 e!4379976))

(declare-fun condSetEmpty!54578 () Bool)

(assert (=> start!713118 (= condSetEmpty!54578 (= z1!542 (as set.empty (Set Context!15756))))))

(assert (=> start!713118 setRes!54579))

(declare-fun condSetEmpty!54579 () Bool)

(assert (=> start!713118 (= condSetEmpty!54579 (= z2!461 (as set.empty (Set Context!15756))))))

(assert (=> start!713118 setRes!54578))

(declare-fun setElem!54578 () Context!15756)

(declare-fun tp!2077062 () Bool)

(declare-fun setNonEmpty!54579 () Bool)

(declare-fun e!4379974 () Bool)

(assert (=> setNonEmpty!54579 (= setRes!54579 (and tp!2077062 (inv!90467 setElem!54578) e!4379974))))

(declare-fun setRest!54579 () (Set Context!15756))

(assert (=> setNonEmpty!54579 (= z1!542 (set.union (set.insert setElem!54578 (as set.empty (Set Context!15756))) setRest!54579))))

(declare-fun b!7316409 () Bool)

(declare-fun tp_is_empty!47621 () Bool)

(declare-fun tp!2077063 () Bool)

(assert (=> b!7316409 (= e!4379976 (and tp_is_empty!47621 tp!2077063))))

(declare-fun b!7316410 () Bool)

(declare-fun e!4379971 () Bool)

(assert (=> b!7316410 (= e!4379969 e!4379971)))

(declare-fun res!2956441 () Bool)

(assert (=> b!7316410 (=> (not res!2956441) (not e!4379971))))

(assert (=> b!7316410 (= res!2956441 (not (nullableZipper!3117 z1!542)))))

(declare-fun lt!2602189 () Unit!164617)

(assert (=> b!7316410 (= lt!2602189 e!4379975)))

(assert (=> b!7316410 (= c!1358192 (set.member lt!2602190 z1!542))))

(declare-fun b!7316411 () Bool)

(declare-fun tp!2077064 () Bool)

(assert (=> b!7316411 (= e!4379974 tp!2077064)))

(declare-fun b!7316412 () Bool)

(assert (=> b!7316412 (= e!4379971 (not (nullableZipper!3117 z2!461)))))

(assert (= (and start!713118 res!2956445) b!7316405))

(assert (= (and b!7316405 res!2956444) b!7316404))

(assert (= (and b!7316404 res!2956442) b!7316408))

(assert (= (and b!7316408 res!2956443) b!7316410))

(assert (= (and b!7316410 c!1358192) b!7316407))

(assert (= (and b!7316410 (not c!1358192)) b!7316403))

(assert (= (or b!7316407 b!7316403) bm!665789))

(assert (= (or b!7316407 b!7316403) bm!665788))

(assert (= (and b!7316410 res!2956441) b!7316412))

(assert (= (and start!713118 (is-Cons!71174 s!7362)) b!7316409))

(assert (= (and start!713118 condSetEmpty!54578) setIsEmpty!54578))

(assert (= (and start!713118 (not condSetEmpty!54578)) setNonEmpty!54579))

(assert (= setNonEmpty!54579 b!7316411))

(assert (= (and start!713118 condSetEmpty!54579) setIsEmpty!54579))

(assert (= (and start!713118 (not condSetEmpty!54579)) setNonEmpty!54578))

(assert (= setNonEmpty!54578 b!7316406))

(declare-fun m!7980502 () Bool)

(assert (=> setNonEmpty!54578 m!7980502))

(declare-fun m!7980504 () Bool)

(assert (=> b!7316405 m!7980504))

(declare-fun m!7980506 () Bool)

(assert (=> bm!665788 m!7980506))

(declare-fun m!7980508 () Bool)

(assert (=> b!7316412 m!7980508))

(declare-fun m!7980510 () Bool)

(assert (=> b!7316404 m!7980510))

(declare-fun m!7980512 () Bool)

(assert (=> bm!665789 m!7980512))

(declare-fun m!7980514 () Bool)

(assert (=> setNonEmpty!54579 m!7980514))

(declare-fun m!7980516 () Bool)

(assert (=> b!7316408 m!7980516))

(declare-fun m!7980518 () Bool)

(assert (=> b!7316408 m!7980518))

(declare-fun m!7980520 () Bool)

(assert (=> b!7316410 m!7980520))

(declare-fun m!7980522 () Bool)

(assert (=> b!7316410 m!7980522))

(push 1)

(assert (not bm!665789))

(assert (not b!7316408))

(assert (not b!7316409))

(assert (not b!7316404))

(assert (not b!7316412))

(assert (not setNonEmpty!54579))

(assert (not setNonEmpty!54578))

(assert (not b!7316406))

(assert (not b!7316405))

(assert (not b!7316410))

(assert (not bm!665788))

(assert (not b!7316411))

(assert tp_is_empty!47621)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!2602209 () Bool)

(declare-fun d!2271667 () Bool)

(declare-datatypes ((List!71301 0))(
  ( (Nil!71177) (Cons!71177 (h!77625 Context!15756) (t!385533 List!71301)) )
))
(declare-fun exists!4589 (List!71301 Int) Bool)

(declare-fun toList!11626 ((Set Context!15756)) List!71301)

(assert (=> d!2271667 (= lt!2602209 (exists!4589 (toList!11626 (ite c!1358192 z1!542 z2!461)) (ite c!1358192 lambda!452373 lambda!452373)))))

(declare-fun choose!56743 ((Set Context!15756) Int) Bool)

(assert (=> d!2271667 (= lt!2602209 (choose!56743 (ite c!1358192 z1!542 z2!461) (ite c!1358192 lambda!452373 lambda!452373)))))

(assert (=> d!2271667 (= (exists!4587 (ite c!1358192 z1!542 z2!461) (ite c!1358192 lambda!452373 lambda!452373)) lt!2602209)))

(declare-fun bs!1915100 () Bool)

(assert (= bs!1915100 d!2271667))

(declare-fun m!7980546 () Bool)

(assert (=> bs!1915100 m!7980546))

(assert (=> bs!1915100 m!7980546))

(declare-fun m!7980548 () Bool)

(assert (=> bs!1915100 m!7980548))

(declare-fun m!7980550 () Bool)

(assert (=> bs!1915100 m!7980550))

(assert (=> bm!665788 d!2271667))

(declare-fun bs!1915101 () Bool)

(declare-fun d!2271669 () Bool)

(assert (= bs!1915101 (and d!2271669 b!7316404)))

(declare-fun lambda!452385 () Int)

(assert (=> bs!1915101 (= lambda!452385 lambda!452373)))

(assert (=> d!2271669 (= (nullableZipper!3117 z1!542) (exists!4587 z1!542 lambda!452385))))

(declare-fun bs!1915102 () Bool)

(assert (= bs!1915102 d!2271669))

(declare-fun m!7980552 () Bool)

(assert (=> bs!1915102 m!7980552))

(assert (=> b!7316410 d!2271669))

(declare-fun d!2271671 () Bool)

(declare-fun lambda!452388 () Int)

(declare-fun forall!17774 (List!71297 Int) Bool)

(assert (=> d!2271671 (= (inv!90467 setElem!54579) (forall!17774 (exprs!8378 setElem!54579) lambda!452388))))

(declare-fun bs!1915103 () Bool)

(assert (= bs!1915103 d!2271671))

(declare-fun m!7980554 () Bool)

(assert (=> bs!1915103 m!7980554))

(assert (=> setNonEmpty!54578 d!2271671))

(declare-fun bs!1915104 () Bool)

(declare-fun d!2271673 () Bool)

(assert (= bs!1915104 (and d!2271673 b!7316404)))

(declare-fun lambda!452389 () Int)

(assert (=> bs!1915104 (= lambda!452389 lambda!452373)))

(declare-fun bs!1915105 () Bool)

(assert (= bs!1915105 (and d!2271673 d!2271669)))

(assert (=> bs!1915105 (= lambda!452389 lambda!452385)))

(assert (=> d!2271673 (= (nullableZipper!3117 lt!2602187) (exists!4587 lt!2602187 lambda!452389))))

(declare-fun bs!1915106 () Bool)

(assert (= bs!1915106 d!2271673))

(declare-fun m!7980556 () Bool)

(assert (=> bs!1915106 m!7980556))

(assert (=> b!7316405 d!2271673))

(declare-fun d!2271675 () Bool)

(declare-fun e!4380003 () Bool)

(assert (=> d!2271675 e!4380003))

(declare-fun res!2956463 () Bool)

(assert (=> d!2271675 (=> (not res!2956463) (not e!4380003))))

(declare-fun lt!2602212 () Context!15756)

(declare-fun dynLambda!29158 (Int Context!15756) Bool)

(assert (=> d!2271675 (= res!2956463 (dynLambda!29158 lambda!452373 lt!2602212))))

(declare-fun getWitness!2327 (List!71301 Int) Context!15756)

(assert (=> d!2271675 (= lt!2602212 (getWitness!2327 (toList!11626 lt!2602187) lambda!452373))))

(assert (=> d!2271675 (exists!4587 lt!2602187 lambda!452373)))

(assert (=> d!2271675 (= (getWitness!2325 lt!2602187 lambda!452373) lt!2602212)))

(declare-fun b!7316445 () Bool)

(assert (=> b!7316445 (= e!4380003 (set.member lt!2602212 lt!2602187))))

(assert (= (and d!2271675 res!2956463) b!7316445))

(declare-fun b_lambda!282563 () Bool)

(assert (=> (not b_lambda!282563) (not d!2271675)))

(declare-fun m!7980558 () Bool)

(assert (=> d!2271675 m!7980558))

(declare-fun m!7980560 () Bool)

(assert (=> d!2271675 m!7980560))

(assert (=> d!2271675 m!7980560))

(declare-fun m!7980562 () Bool)

(assert (=> d!2271675 m!7980562))

(assert (=> d!2271675 m!7980510))

(declare-fun m!7980564 () Bool)

(assert (=> b!7316445 m!7980564))

(assert (=> b!7316408 d!2271675))

(declare-fun bs!1915107 () Bool)

(declare-fun d!2271677 () Bool)

(assert (= bs!1915107 (and d!2271677 d!2271671)))

(declare-fun lambda!452390 () Int)

(assert (=> bs!1915107 (= lambda!452390 lambda!452388)))

(assert (=> d!2271677 (= (inv!90467 setElem!54578) (forall!17774 (exprs!8378 setElem!54578) lambda!452390))))

(declare-fun bs!1915108 () Bool)

(assert (= bs!1915108 d!2271677))

(declare-fun m!7980566 () Bool)

(assert (=> bs!1915108 m!7980566))

(assert (=> setNonEmpty!54579 d!2271677))

(declare-fun d!2271679 () Bool)

(assert (=> d!2271679 (exists!4587 (ite c!1358192 z1!542 z2!461) (ite c!1358192 lambda!452373 lambda!452373))))

(declare-fun lt!2602215 () Unit!164617)

(declare-fun choose!56744 ((Set Context!15756) Context!15756 Int) Unit!164617)

(assert (=> d!2271679 (= lt!2602215 (choose!56744 (ite c!1358192 z1!542 z2!461) lt!2602190 (ite c!1358192 lambda!452373 lambda!452373)))))

(assert (=> d!2271679 (set.member lt!2602190 (ite c!1358192 z1!542 z2!461))))

(assert (=> d!2271679 (= (lemmaContainsThenExists!252 (ite c!1358192 z1!542 z2!461) lt!2602190 (ite c!1358192 lambda!452373 lambda!452373)) lt!2602215)))

(declare-fun bs!1915109 () Bool)

(assert (= bs!1915109 d!2271679))

(assert (=> bs!1915109 m!7980506))

(declare-fun m!7980568 () Bool)

(assert (=> bs!1915109 m!7980568))

(declare-fun m!7980570 () Bool)

(assert (=> bs!1915109 m!7980570))

(assert (=> bm!665789 d!2271679))

(declare-fun bs!1915110 () Bool)

(declare-fun d!2271681 () Bool)

(assert (= bs!1915110 (and d!2271681 b!7316404)))

(declare-fun lambda!452391 () Int)

(assert (=> bs!1915110 (= lambda!452391 lambda!452373)))

(declare-fun bs!1915111 () Bool)

(assert (= bs!1915111 (and d!2271681 d!2271669)))

(assert (=> bs!1915111 (= lambda!452391 lambda!452385)))

(declare-fun bs!1915112 () Bool)

(assert (= bs!1915112 (and d!2271681 d!2271673)))

(assert (=> bs!1915112 (= lambda!452391 lambda!452389)))

(assert (=> d!2271681 (= (nullableZipper!3117 z2!461) (exists!4587 z2!461 lambda!452391))))

(declare-fun bs!1915113 () Bool)

(assert (= bs!1915113 d!2271681))

(declare-fun m!7980572 () Bool)

(assert (=> bs!1915113 m!7980572))

(assert (=> b!7316412 d!2271681))

(declare-fun d!2271683 () Bool)

(declare-fun lt!2602216 () Bool)

(assert (=> d!2271683 (= lt!2602216 (exists!4589 (toList!11626 lt!2602187) lambda!452373))))

(assert (=> d!2271683 (= lt!2602216 (choose!56743 lt!2602187 lambda!452373))))

(assert (=> d!2271683 (= (exists!4587 lt!2602187 lambda!452373) lt!2602216)))

(declare-fun bs!1915114 () Bool)

(assert (= bs!1915114 d!2271683))

(assert (=> bs!1915114 m!7980560))

(assert (=> bs!1915114 m!7980560))

(declare-fun m!7980574 () Bool)

(assert (=> bs!1915114 m!7980574))

(declare-fun m!7980576 () Bool)

(assert (=> bs!1915114 m!7980576))

(assert (=> b!7316404 d!2271683))

(declare-fun b!7316450 () Bool)

(declare-fun e!4380007 () Bool)

(declare-fun tp!2077086 () Bool)

(declare-fun tp!2077087 () Bool)

(assert (=> b!7316450 (= e!4380007 (and tp!2077086 tp!2077087))))

(assert (=> b!7316411 (= tp!2077064 e!4380007)))

(assert (= (and b!7316411 (is-Cons!71173 (exprs!8378 setElem!54578))) b!7316450))

(declare-fun b!7316451 () Bool)

(declare-fun e!4380008 () Bool)

(declare-fun tp!2077088 () Bool)

(declare-fun tp!2077089 () Bool)

(assert (=> b!7316451 (= e!4380008 (and tp!2077088 tp!2077089))))

(assert (=> b!7316406 (= tp!2077065 e!4380008)))

(assert (= (and b!7316406 (is-Cons!71173 (exprs!8378 setElem!54579))) b!7316451))

(declare-fun condSetEmpty!54588 () Bool)

(assert (=> setNonEmpty!54578 (= condSetEmpty!54588 (= setRest!54578 (as set.empty (Set Context!15756))))))

(declare-fun setRes!54588 () Bool)

(assert (=> setNonEmpty!54578 (= tp!2077066 setRes!54588)))

(declare-fun setIsEmpty!54588 () Bool)

(assert (=> setIsEmpty!54588 setRes!54588))

(declare-fun setElem!54588 () Context!15756)

(declare-fun setNonEmpty!54588 () Bool)

(declare-fun e!4380011 () Bool)

(declare-fun tp!2077094 () Bool)

(assert (=> setNonEmpty!54588 (= setRes!54588 (and tp!2077094 (inv!90467 setElem!54588) e!4380011))))

(declare-fun setRest!54588 () (Set Context!15756))

(assert (=> setNonEmpty!54588 (= setRest!54578 (set.union (set.insert setElem!54588 (as set.empty (Set Context!15756))) setRest!54588))))

(declare-fun b!7316456 () Bool)

(declare-fun tp!2077095 () Bool)

(assert (=> b!7316456 (= e!4380011 tp!2077095)))

(assert (= (and setNonEmpty!54578 condSetEmpty!54588) setIsEmpty!54588))

(assert (= (and setNonEmpty!54578 (not condSetEmpty!54588)) setNonEmpty!54588))

(assert (= setNonEmpty!54588 b!7316456))

(declare-fun m!7980578 () Bool)

(assert (=> setNonEmpty!54588 m!7980578))

(declare-fun b!7316461 () Bool)

(declare-fun e!4380014 () Bool)

(declare-fun tp!2077098 () Bool)

(assert (=> b!7316461 (= e!4380014 (and tp_is_empty!47621 tp!2077098))))

(assert (=> b!7316409 (= tp!2077063 e!4380014)))

(assert (= (and b!7316409 (is-Cons!71174 (t!385530 s!7362))) b!7316461))

(declare-fun condSetEmpty!54589 () Bool)

(assert (=> setNonEmpty!54579 (= condSetEmpty!54589 (= setRest!54579 (as set.empty (Set Context!15756))))))

(declare-fun setRes!54589 () Bool)

(assert (=> setNonEmpty!54579 (= tp!2077062 setRes!54589)))

(declare-fun setIsEmpty!54589 () Bool)

(assert (=> setIsEmpty!54589 setRes!54589))

(declare-fun tp!2077099 () Bool)

(declare-fun setNonEmpty!54589 () Bool)

(declare-fun setElem!54589 () Context!15756)

(declare-fun e!4380015 () Bool)

(assert (=> setNonEmpty!54589 (= setRes!54589 (and tp!2077099 (inv!90467 setElem!54589) e!4380015))))

(declare-fun setRest!54589 () (Set Context!15756))

(assert (=> setNonEmpty!54589 (= setRest!54579 (set.union (set.insert setElem!54589 (as set.empty (Set Context!15756))) setRest!54589))))

(declare-fun b!7316462 () Bool)

(declare-fun tp!2077100 () Bool)

(assert (=> b!7316462 (= e!4380015 tp!2077100)))

(assert (= (and setNonEmpty!54579 condSetEmpty!54589) setIsEmpty!54589))

(assert (= (and setNonEmpty!54579 (not condSetEmpty!54589)) setNonEmpty!54589))

(assert (= setNonEmpty!54589 b!7316462))

(declare-fun m!7980580 () Bool)

(assert (=> setNonEmpty!54589 m!7980580))

(declare-fun b_lambda!282565 () Bool)

(assert (= b_lambda!282563 (or b!7316404 b_lambda!282565)))

(declare-fun bs!1915115 () Bool)

(declare-fun d!2271685 () Bool)

(assert (= bs!1915115 (and d!2271685 b!7316404)))

(declare-fun nullableContext!404 (Context!15756) Bool)

(assert (=> bs!1915115 (= (dynLambda!29158 lambda!452373 lt!2602212) (nullableContext!404 lt!2602212))))

(declare-fun m!7980582 () Bool)

(assert (=> bs!1915115 m!7980582))

(assert (=> d!2271675 d!2271685))

(push 1)

(assert (not d!2271667))

(assert (not d!2271669))

(assert (not b_lambda!282565))

(assert (not d!2271675))

(assert (not d!2271671))

(assert (not b!7316451))

(assert (not b!7316450))

(assert (not setNonEmpty!54589))

(assert (not b!7316462))

(assert (not d!2271679))

(assert (not d!2271683))

(assert (not d!2271677))

(assert (not d!2271681))

(assert (not d!2271673))

(assert (not bs!1915115))

(assert (not b!7316456))

(assert (not b!7316461))

(assert (not setNonEmpty!54588))

(assert tp_is_empty!47621)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

