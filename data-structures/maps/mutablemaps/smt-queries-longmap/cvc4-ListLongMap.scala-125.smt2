; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2150 () Bool)

(assert start!2150)

(declare-fun b!14496 () Bool)

(assert (=> b!14496 true))

(declare-fun b!14492 () Bool)

(declare-fun e!8682 () Bool)

(declare-fun call!425 () Bool)

(assert (=> b!14492 (= e!8682 (not call!425))))

(declare-fun b!14493 () Bool)

(declare-fun res!11193 () Bool)

(declare-fun e!8680 () Bool)

(assert (=> b!14493 (=> (not res!11193) (not e!8680))))

(declare-datatypes ((B!552 0))(
  ( (B!553 (val!374 Int)) )
))
(declare-datatypes ((tuple2!530 0))(
  ( (tuple2!531 (_1!265 (_ BitVec 64)) (_2!265 B!552)) )
))
(declare-datatypes ((List!424 0))(
  ( (Nil!421) (Cons!420 (h!986 tuple2!530) (t!2823 List!424)) )
))
(declare-fun l!522 () List!424)

(declare-fun value!159 () B!552)

(assert (=> b!14493 (= res!11193 (and (not (= (_2!265 (h!986 l!522)) value!159)) (is-Cons!420 l!522)))))

(declare-fun b!14494 () Bool)

(declare-fun e!8681 () Bool)

(declare-fun lt!3615 () List!424)

(declare-fun head!793 (List!424) tuple2!530)

(assert (=> b!14494 (= e!8681 (bvslt (_1!265 (head!793 lt!3615)) (_1!265 (head!793 l!522))))))

(declare-fun b!14495 () Bool)

(declare-fun e!8683 () Bool)

(assert (=> b!14495 (= e!8680 e!8683)))

(declare-fun res!11194 () Bool)

(assert (=> b!14495 (=> res!11194 e!8683)))

(declare-fun isStrictlySorted!115 (List!424) Bool)

(assert (=> b!14495 (= res!11194 (not (isStrictlySorted!115 lt!3615)))))

(declare-fun filterByValue!18 (List!424 B!552) List!424)

(assert (=> b!14495 (= lt!3615 (filterByValue!18 (t!2823 l!522) value!159))))

(declare-fun res!11191 () Bool)

(assert (=> start!2150 (=> (not res!11191) (not e!8680))))

(assert (=> start!2150 (= res!11191 (isStrictlySorted!115 l!522))))

(assert (=> start!2150 e!8680))

(declare-fun e!8679 () Bool)

(assert (=> start!2150 e!8679))

(declare-fun tp_is_empty!731 () Bool)

(assert (=> start!2150 tp_is_empty!731))

(declare-fun res!11190 () Bool)

(assert (=> b!14496 (=> res!11190 e!8683)))

(declare-fun lambda!161 () Int)

(declare-fun forall!97 (List!424 Int) Bool)

(assert (=> b!14496 (= res!11190 (not (forall!97 lt!3615 lambda!161)))))

(declare-fun b!14497 () Bool)

(declare-fun tp!2348 () Bool)

(assert (=> b!14497 (= e!8679 (and tp_is_empty!731 tp!2348))))

(declare-fun bm!422 () Bool)

(declare-fun isEmpty!104 (List!424) Bool)

(assert (=> bm!422 (= call!425 (isEmpty!104 lt!3615))))

(declare-fun b!14498 () Bool)

(assert (=> b!14498 (= e!8683 e!8682)))

(declare-fun c!1355 () Bool)

(assert (=> b!14498 (= c!1355 (isEmpty!104 l!522))))

(declare-fun b!14499 () Bool)

(assert (=> b!14499 (= e!8682 e!8681)))

(declare-fun res!11192 () Bool)

(assert (=> b!14499 (= res!11192 (not call!425))))

(assert (=> b!14499 (=> (not res!11192) (not e!8681))))

(assert (= (and start!2150 res!11191) b!14493))

(assert (= (and b!14493 res!11193) b!14495))

(assert (= (and b!14495 (not res!11194)) b!14496))

(assert (= (and b!14496 (not res!11190)) b!14498))

(assert (= (and b!14498 c!1355) b!14492))

(assert (= (and b!14498 (not c!1355)) b!14499))

(assert (= (and b!14499 res!11192) b!14494))

(assert (= (or b!14492 b!14499) bm!422))

(assert (= (and start!2150 (is-Cons!420 l!522)) b!14497))

(declare-fun m!9663 () Bool)

(assert (=> bm!422 m!9663))

(declare-fun m!9665 () Bool)

(assert (=> b!14495 m!9665))

(declare-fun m!9667 () Bool)

(assert (=> b!14495 m!9667))

(declare-fun m!9669 () Bool)

(assert (=> b!14496 m!9669))

(declare-fun m!9671 () Bool)

(assert (=> b!14494 m!9671))

(declare-fun m!9673 () Bool)

(assert (=> b!14494 m!9673))

(declare-fun m!9675 () Bool)

(assert (=> start!2150 m!9675))

(declare-fun m!9677 () Bool)

(assert (=> b!14498 m!9677))

(push 1)

(assert tp_is_empty!731)

(assert (not b!14494))

(assert (not b!14495))

(assert (not b!14498))

(assert (not b!14497))

(assert (not bm!422))

(assert (not b!14496))

(assert (not start!2150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259 () Bool)

(declare-fun res!11205 () Bool)

(declare-fun e!8694 () Bool)

(assert (=> d!2259 (=> res!11205 e!8694)))

(assert (=> d!2259 (= res!11205 (is-Nil!421 lt!3615))))

(assert (=> d!2259 (= (forall!97 lt!3615 lambda!161) e!8694)))

(declare-fun b!14512 () Bool)

(declare-fun e!8695 () Bool)

(assert (=> b!14512 (= e!8694 e!8695)))

(declare-fun res!11206 () Bool)

(assert (=> b!14512 (=> (not res!11206) (not e!8695))))

(declare-fun dynLambda!91 (Int tuple2!530) Bool)

(assert (=> b!14512 (= res!11206 (dynLambda!91 lambda!161 (h!986 lt!3615)))))

(declare-fun b!14513 () Bool)

(assert (=> b!14513 (= e!8695 (forall!97 (t!2823 lt!3615) lambda!161))))

(assert (= (and d!2259 (not res!11205)) b!14512))

(assert (= (and b!14512 res!11206) b!14513))

(declare-fun b_lambda!923 () Bool)

(assert (=> (not b_lambda!923) (not b!14512)))

(declare-fun m!9681 () Bool)

(assert (=> b!14512 m!9681))

(declare-fun m!9683 () Bool)

(assert (=> b!14513 m!9683))

(assert (=> b!14496 d!2259))

(declare-fun d!2265 () Bool)

(declare-fun res!11217 () Bool)

(declare-fun e!8706 () Bool)

(assert (=> d!2265 (=> res!11217 e!8706)))

(assert (=> d!2265 (= res!11217 (or (is-Nil!421 l!522) (is-Nil!421 (t!2823 l!522))))))

(assert (=> d!2265 (= (isStrictlySorted!115 l!522) e!8706)))

(declare-fun b!14524 () Bool)

(declare-fun e!8707 () Bool)

(assert (=> b!14524 (= e!8706 e!8707)))

(declare-fun res!11218 () Bool)

(assert (=> b!14524 (=> (not res!11218) (not e!8707))))

(assert (=> b!14524 (= res!11218 (bvslt (_1!265 (h!986 l!522)) (_1!265 (h!986 (t!2823 l!522)))))))

(declare-fun b!14525 () Bool)

(assert (=> b!14525 (= e!8707 (isStrictlySorted!115 (t!2823 l!522)))))

(assert (= (and d!2265 (not res!11217)) b!14524))

(assert (= (and b!14524 res!11218) b!14525))

(declare-fun m!9689 () Bool)

(assert (=> b!14525 m!9689))

(assert (=> start!2150 d!2265))

(declare-fun d!2277 () Bool)

(declare-fun res!11219 () Bool)

(declare-fun e!8708 () Bool)

(assert (=> d!2277 (=> res!11219 e!8708)))

(assert (=> d!2277 (= res!11219 (or (is-Nil!421 lt!3615) (is-Nil!421 (t!2823 lt!3615))))))

(assert (=> d!2277 (= (isStrictlySorted!115 lt!3615) e!8708)))

(declare-fun b!14526 () Bool)

(declare-fun e!8709 () Bool)

(assert (=> b!14526 (= e!8708 e!8709)))

(declare-fun res!11220 () Bool)

(assert (=> b!14526 (=> (not res!11220) (not e!8709))))

(assert (=> b!14526 (= res!11220 (bvslt (_1!265 (h!986 lt!3615)) (_1!265 (h!986 (t!2823 lt!3615)))))))

(declare-fun b!14527 () Bool)

(assert (=> b!14527 (= e!8709 (isStrictlySorted!115 (t!2823 lt!3615)))))

(assert (= (and d!2277 (not res!11219)) b!14526))

(assert (= (and b!14526 res!11220) b!14527))

(declare-fun m!9691 () Bool)

(assert (=> b!14527 m!9691))

(assert (=> b!14495 d!2277))

(declare-fun bs!578 () Bool)

(declare-fun b!14595 () Bool)

(assert (= bs!578 (and b!14595 b!14496)))

(declare-fun lambda!168 () Int)

(assert (=> bs!578 (= lambda!168 lambda!161)))

(assert (=> b!14595 true))

(declare-fun b!14588 () Bool)

(declare-fun e!8747 () Bool)

(declare-fun call!436 () Bool)

(assert (=> b!14588 (= e!8747 call!436)))

(declare-fun b!14589 () Bool)

(declare-fun e!8748 () List!424)

(declare-fun call!437 () List!424)

(declare-fun $colon$colon!21 (List!424 tuple2!530) List!424)

(assert (=> b!14589 (= e!8748 ($colon$colon!21 call!437 (h!986 (t!2823 l!522))))))

(declare-fun bm!433 () Bool)

(declare-fun lt!3622 () List!424)

(assert (=> bm!433 (= call!436 (isEmpty!104 lt!3622))))

(declare-fun b!14590 () Bool)

(declare-fun e!8749 () List!424)

(assert (=> b!14590 (= e!8749 Nil!421)))

(declare-fun b!14591 () Bool)

(declare-fun e!8750 () Bool)

(assert (=> b!14591 (= e!8747 e!8750)))

(declare-fun res!11247 () Bool)

(assert (=> b!14591 (= res!11247 call!436)))

(assert (=> b!14591 (=> res!11247 e!8750)))

(declare-fun d!2279 () Bool)

(declare-fun e!8746 () Bool)

(assert (=> d!2279 e!8746))

(declare-fun res!11249 () Bool)

(assert (=> d!2279 (=> (not res!11249) (not e!8746))))

(assert (=> d!2279 (= res!11249 (isStrictlySorted!115 lt!3622))))

(assert (=> d!2279 (= lt!3622 e!8748)))

(declare-fun c!1373 () Bool)

(assert (=> d!2279 (= c!1373 (and (is-Cons!420 (t!2823 l!522)) (= (_2!265 (h!986 (t!2823 l!522))) value!159)))))

(assert (=> d!2279 (isStrictlySorted!115 (t!2823 l!522))))

(assert (=> d!2279 (= (filterByValue!18 (t!2823 l!522) value!159) lt!3622)))

(declare-fun b!14592 () Bool)

(assert (=> b!14592 (= e!8750 (bvsge (_1!265 (head!793 lt!3622)) (_1!265 (head!793 (t!2823 l!522)))))))

(declare-fun b!14593 () Bool)

(assert (=> b!14593 (= e!8749 call!437)))

(declare-fun b!14594 () Bool)

(assert (=> b!14594 (= e!8746 e!8747)))

(declare-fun c!1372 () Bool)

(assert (=> b!14594 (= c!1372 (isEmpty!104 (t!2823 l!522)))))

(declare-fun bm!434 () Bool)

(assert (=> bm!434 (= call!437 (filterByValue!18 (t!2823 (t!2823 l!522)) value!159))))

(declare-fun res!11248 () Bool)

(assert (=> b!14595 (=> (not res!11248) (not e!8746))))

(assert (=> b!14595 (= res!11248 (forall!97 lt!3622 lambda!168))))

(declare-fun b!14596 () Bool)

(assert (=> b!14596 (= e!8748 e!8749)))

(declare-fun c!1374 () Bool)

(assert (=> b!14596 (= c!1374 (and (is-Cons!420 (t!2823 l!522)) (not (= (_2!265 (h!986 (t!2823 l!522))) value!159))))))

(assert (= (and d!2279 c!1373) b!14589))

(assert (= (and d!2279 (not c!1373)) b!14596))

(assert (= (and b!14596 c!1374) b!14593))

(assert (= (and b!14596 (not c!1374)) b!14590))

(assert (= (or b!14589 b!14593) bm!434))

(assert (= (and d!2279 res!11249) b!14595))

(assert (= (and b!14595 res!11248) b!14594))

(assert (= (and b!14594 c!1372) b!14588))

(assert (= (and b!14594 (not c!1372)) b!14591))

(assert (= (and b!14591 (not res!11247)) b!14592))

(assert (= (or b!14588 b!14591) bm!433))

(declare-fun m!9699 () Bool)

(assert (=> bm!434 m!9699))

(declare-fun m!9701 () Bool)

(assert (=> b!14589 m!9701))

(declare-fun m!9703 () Bool)

(assert (=> b!14595 m!9703))

(declare-fun m!9705 () Bool)

(assert (=> d!2279 m!9705))

(assert (=> d!2279 m!9689))

(declare-fun m!9707 () Bool)

(assert (=> b!14592 m!9707))

(declare-fun m!9709 () Bool)

(assert (=> b!14592 m!9709))

(declare-fun m!9711 () Bool)

(assert (=> b!14594 m!9711))

(declare-fun m!9713 () Bool)

(assert (=> bm!433 m!9713))

(assert (=> b!14495 d!2279))

(declare-fun d!2291 () Bool)

(assert (=> d!2291 (= (isEmpty!104 l!522) (is-Nil!421 l!522))))

(assert (=> b!14498 d!2291))

(declare-fun d!2293 () Bool)

(assert (=> d!2293 (= (head!793 lt!3615) (h!986 lt!3615))))

(assert (=> b!14494 d!2293))

(declare-fun d!2295 () Bool)

(assert (=> d!2295 (= (head!793 l!522) (h!986 l!522))))

(assert (=> b!14494 d!2295))

(declare-fun d!2299 () Bool)

(assert (=> d!2299 (= (isEmpty!104 lt!3615) (is-Nil!421 lt!3615))))

(assert (=> bm!422 d!2299))

(declare-fun b!14628 () Bool)

(declare-fun e!8770 () Bool)

(declare-fun tp!2354 () Bool)

(assert (=> b!14628 (= e!8770 (and tp_is_empty!731 tp!2354))))

(assert (=> b!14497 (= tp!2348 e!8770)))

(assert (= (and b!14497 (is-Cons!420 (t!2823 l!522))) b!14628))

(declare-fun b_lambda!929 () Bool)

(assert (= b_lambda!923 (or b!14496 b_lambda!929)))

(declare-fun bs!582 () Bool)

(declare-fun d!2303 () Bool)

(assert (= bs!582 (and d!2303 b!14496)))

(assert (=> bs!582 (= (dynLambda!91 lambda!161 (h!986 lt!3615)) (= (_2!265 (h!986 lt!3615)) value!159))))

(assert (=> b!14512 d!2303))

(push 1)

(assert tp_is_empty!731)

(assert (not b!14589))

(assert (not b!14525))

(assert (not d!2279))

(assert (not b!14513))

(assert (not bm!433))

(assert (not b!14595))

(assert (not bm!434))

(assert (not b!14592))

(assert (not b!14527))

(assert (not b!14594))

(assert (not b!14628))

(assert (not b_lambda!929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2363 () Bool)

(assert (=> d!2363 (= (isEmpty!104 (t!2823 l!522)) (is-Nil!421 (t!2823 l!522)))))

(assert (=> b!14594 d!2363))

(declare-fun d!2365 () Bool)

(assert (=> d!2365 (= ($colon$colon!21 call!437 (h!986 (t!2823 l!522))) (Cons!420 (h!986 (t!2823 l!522)) call!437))))

(assert (=> b!14589 d!2365))

(declare-fun d!2367 () Bool)

(declare-fun res!11290 () Bool)

(declare-fun e!8812 () Bool)

(assert (=> d!2367 (=> res!11290 e!8812)))

(assert (=> d!2367 (= res!11290 (is-Nil!421 (t!2823 lt!3615)))))

(assert (=> d!2367 (= (forall!97 (t!2823 lt!3615) lambda!161) e!8812)))

(declare-fun b!14680 () Bool)

(declare-fun e!8813 () Bool)

(assert (=> b!14680 (= e!8812 e!8813)))

(declare-fun res!11291 () Bool)

(assert (=> b!14680 (=> (not res!11291) (not e!8813))))

(assert (=> b!14680 (= res!11291 (dynLambda!91 lambda!161 (h!986 (t!2823 lt!3615))))))

(declare-fun b!14681 () Bool)

(assert (=> b!14681 (= e!8813 (forall!97 (t!2823 (t!2823 lt!3615)) lambda!161))))

(assert (= (and d!2367 (not res!11290)) b!14680))

(assert (= (and b!14680 res!11291) b!14681))

(declare-fun b_lambda!951 () Bool)

(assert (=> (not b_lambda!951) (not b!14680)))

(declare-fun m!9811 () Bool)

(assert (=> b!14680 m!9811))

(declare-fun m!9813 () Bool)

(assert (=> b!14681 m!9813))

(assert (=> b!14513 d!2367))

(declare-fun bs!592 () Bool)

(declare-fun b!14689 () Bool)

(assert (= bs!592 (and b!14689 b!14496)))

(declare-fun lambda!173 () Int)

(assert (=> bs!592 (= lambda!173 lambda!161)))

(declare-fun bs!593 () Bool)

(assert (= bs!593 (and b!14689 b!14595)))

(assert (=> bs!593 (= lambda!173 lambda!168)))

(assert (=> b!14689 true))

(declare-fun b!14682 () Bool)

(declare-fun e!8815 () Bool)

(declare-fun call!448 () Bool)

(assert (=> b!14682 (= e!8815 call!448)))

(declare-fun b!14683 () Bool)

(declare-fun e!8816 () List!424)

(declare-fun call!449 () List!424)

(assert (=> b!14683 (= e!8816 ($colon$colon!21 call!449 (h!986 (t!2823 (t!2823 l!522)))))))

(declare-fun bm!445 () Bool)

(declare-fun lt!3627 () List!424)

(assert (=> bm!445 (= call!448 (isEmpty!104 lt!3627))))

(declare-fun b!14684 () Bool)

(declare-fun e!8817 () List!424)

(assert (=> b!14684 (= e!8817 Nil!421)))

(declare-fun b!14685 () Bool)

(declare-fun e!8818 () Bool)

(assert (=> b!14685 (= e!8815 e!8818)))

(declare-fun res!11292 () Bool)

(assert (=> b!14685 (= res!11292 call!448)))

(assert (=> b!14685 (=> res!11292 e!8818)))

(declare-fun d!2369 () Bool)

(declare-fun e!8814 () Bool)

(assert (=> d!2369 e!8814))

(declare-fun res!11294 () Bool)

(assert (=> d!2369 (=> (not res!11294) (not e!8814))))

(assert (=> d!2369 (= res!11294 (isStrictlySorted!115 lt!3627))))

(assert (=> d!2369 (= lt!3627 e!8816)))

(declare-fun c!1390 () Bool)

(assert (=> d!2369 (= c!1390 (and (is-Cons!420 (t!2823 (t!2823 l!522))) (= (_2!265 (h!986 (t!2823 (t!2823 l!522)))) value!159)))))

(assert (=> d!2369 (isStrictlySorted!115 (t!2823 (t!2823 l!522)))))

(assert (=> d!2369 (= (filterByValue!18 (t!2823 (t!2823 l!522)) value!159) lt!3627)))

(declare-fun b!14686 () Bool)

(assert (=> b!14686 (= e!8818 (bvsge (_1!265 (head!793 lt!3627)) (_1!265 (head!793 (t!2823 (t!2823 l!522))))))))

(declare-fun b!14687 () Bool)

(assert (=> b!14687 (= e!8817 call!449)))

(declare-fun b!14688 () Bool)

(assert (=> b!14688 (= e!8814 e!8815)))

(declare-fun c!1389 () Bool)

(assert (=> b!14688 (= c!1389 (isEmpty!104 (t!2823 (t!2823 l!522))))))

(declare-fun bm!446 () Bool)

(assert (=> bm!446 (= call!449 (filterByValue!18 (t!2823 (t!2823 (t!2823 l!522))) value!159))))

(declare-fun res!11293 () Bool)

(assert (=> b!14689 (=> (not res!11293) (not e!8814))))

(assert (=> b!14689 (= res!11293 (forall!97 lt!3627 lambda!173))))

(declare-fun b!14690 () Bool)

(assert (=> b!14690 (= e!8816 e!8817)))

(declare-fun c!1391 () Bool)

(assert (=> b!14690 (= c!1391 (and (is-Cons!420 (t!2823 (t!2823 l!522))) (not (= (_2!265 (h!986 (t!2823 (t!2823 l!522)))) value!159))))))

(assert (= (and d!2369 c!1390) b!14683))

(assert (= (and d!2369 (not c!1390)) b!14690))

(assert (= (and b!14690 c!1391) b!14687))

(assert (= (and b!14690 (not c!1391)) b!14684))

(assert (= (or b!14683 b!14687) bm!446))

(assert (= (and d!2369 res!11294) b!14689))

(assert (= (and b!14689 res!11293) b!14688))

(assert (= (and b!14688 c!1389) b!14682))

(assert (= (and b!14688 (not c!1389)) b!14685))

(assert (= (and b!14685 (not res!11292)) b!14686))

(assert (= (or b!14682 b!14685) bm!445))

(declare-fun m!9815 () Bool)

(assert (=> bm!446 m!9815))

(declare-fun m!9817 () Bool)

(assert (=> b!14683 m!9817))

(declare-fun m!9819 () Bool)

(assert (=> b!14689 m!9819))

(declare-fun m!9821 () Bool)

(assert (=> d!2369 m!9821))

(declare-fun m!9823 () Bool)

(assert (=> d!2369 m!9823))

(declare-fun m!9825 () Bool)

(assert (=> b!14686 m!9825))

(declare-fun m!9827 () Bool)

(assert (=> b!14686 m!9827))

(declare-fun m!9829 () Bool)

(assert (=> b!14688 m!9829))

(declare-fun m!9831 () Bool)

(assert (=> bm!445 m!9831))

(assert (=> bm!434 d!2369))

(declare-fun d!2371 () Bool)

(declare-fun res!11295 () Bool)

(declare-fun e!8819 () Bool)

(assert (=> d!2371 (=> res!11295 e!8819)))

(assert (=> d!2371 (= res!11295 (or (is-Nil!421 (t!2823 lt!3615)) (is-Nil!421 (t!2823 (t!2823 lt!3615)))))))

(assert (=> d!2371 (= (isStrictlySorted!115 (t!2823 lt!3615)) e!8819)))

(declare-fun b!14691 () Bool)

(declare-fun e!8820 () Bool)

(assert (=> b!14691 (= e!8819 e!8820)))

(declare-fun res!11296 () Bool)

(assert (=> b!14691 (=> (not res!11296) (not e!8820))))

(assert (=> b!14691 (= res!11296 (bvslt (_1!265 (h!986 (t!2823 lt!3615))) (_1!265 (h!986 (t!2823 (t!2823 lt!3615))))))))

(declare-fun b!14692 () Bool)

(assert (=> b!14692 (= e!8820 (isStrictlySorted!115 (t!2823 (t!2823 lt!3615))))))

(assert (= (and d!2371 (not res!11295)) b!14691))

(assert (= (and b!14691 res!11296) b!14692))

(declare-fun m!9833 () Bool)

(assert (=> b!14692 m!9833))

(assert (=> b!14527 d!2371))

(declare-fun d!2373 () Bool)

(declare-fun res!11297 () Bool)

(declare-fun e!8821 () Bool)

(assert (=> d!2373 (=> res!11297 e!8821)))

(assert (=> d!2373 (= res!11297 (or (is-Nil!421 (t!2823 l!522)) (is-Nil!421 (t!2823 (t!2823 l!522)))))))

(assert (=> d!2373 (= (isStrictlySorted!115 (t!2823 l!522)) e!8821)))

(declare-fun b!14693 () Bool)

(declare-fun e!8822 () Bool)

(assert (=> b!14693 (= e!8821 e!8822)))

(declare-fun res!11298 () Bool)

(assert (=> b!14693 (=> (not res!11298) (not e!8822))))

(assert (=> b!14693 (= res!11298 (bvslt (_1!265 (h!986 (t!2823 l!522))) (_1!265 (h!986 (t!2823 (t!2823 l!522))))))))

(declare-fun b!14694 () Bool)

(assert (=> b!14694 (= e!8822 (isStrictlySorted!115 (t!2823 (t!2823 l!522))))))

(assert (= (and d!2373 (not res!11297)) b!14693))

(assert (= (and b!14693 res!11298) b!14694))

(assert (=> b!14694 m!9823))

(assert (=> b!14525 d!2373))

(declare-fun d!2375 () Bool)

(assert (=> d!2375 (= (isEmpty!104 lt!3622) (is-Nil!421 lt!3622))))

(assert (=> bm!433 d!2375))

(declare-fun d!2377 () Bool)

(declare-fun res!11299 () Bool)

(declare-fun e!8823 () Bool)

(assert (=> d!2377 (=> res!11299 e!8823)))

(assert (=> d!2377 (= res!11299 (or (is-Nil!421 lt!3622) (is-Nil!421 (t!2823 lt!3622))))))

(assert (=> d!2377 (= (isStrictlySorted!115 lt!3622) e!8823)))

(declare-fun b!14695 () Bool)

(declare-fun e!8824 () Bool)

(assert (=> b!14695 (= e!8823 e!8824)))

(declare-fun res!11300 () Bool)

(assert (=> b!14695 (=> (not res!11300) (not e!8824))))

(assert (=> b!14695 (= res!11300 (bvslt (_1!265 (h!986 lt!3622)) (_1!265 (h!986 (t!2823 lt!3622)))))))

(declare-fun b!14696 () Bool)

(assert (=> b!14696 (= e!8824 (isStrictlySorted!115 (t!2823 lt!3622)))))

(assert (= (and d!2377 (not res!11299)) b!14695))

(assert (= (and b!14695 res!11300) b!14696))

(declare-fun m!9835 () Bool)

(assert (=> b!14696 m!9835))

(assert (=> d!2279 d!2377))

(assert (=> d!2279 d!2373))

(declare-fun d!2379 () Bool)

(declare-fun res!11301 () Bool)

(declare-fun e!8825 () Bool)

(assert (=> d!2379 (=> res!11301 e!8825)))

(assert (=> d!2379 (= res!11301 (is-Nil!421 lt!3622))))

(assert (=> d!2379 (= (forall!97 lt!3622 lambda!168) e!8825)))

(declare-fun b!14697 () Bool)

(declare-fun e!8826 () Bool)

(assert (=> b!14697 (= e!8825 e!8826)))

(declare-fun res!11302 () Bool)

(assert (=> b!14697 (=> (not res!11302) (not e!8826))))

(assert (=> b!14697 (= res!11302 (dynLambda!91 lambda!168 (h!986 lt!3622)))))

(declare-fun b!14698 () Bool)

(assert (=> b!14698 (= e!8826 (forall!97 (t!2823 lt!3622) lambda!168))))

(assert (= (and d!2379 (not res!11301)) b!14697))

(assert (= (and b!14697 res!11302) b!14698))

(declare-fun b_lambda!953 () Bool)

(assert (=> (not b_lambda!953) (not b!14697)))

(declare-fun m!9837 () Bool)

(assert (=> b!14697 m!9837))

(declare-fun m!9839 () Bool)

(assert (=> b!14698 m!9839))

(assert (=> b!14595 d!2379))

(declare-fun d!2381 () Bool)

(assert (=> d!2381 (= (head!793 lt!3622) (h!986 lt!3622))))

(assert (=> b!14592 d!2381))

(declare-fun d!2383 () Bool)

(assert (=> d!2383 (= (head!793 (t!2823 l!522)) (h!986 (t!2823 l!522)))))

(assert (=> b!14592 d!2383))

(declare-fun b!14699 () Bool)

(declare-fun e!8827 () Bool)

(declare-fun tp!2360 () Bool)

(assert (=> b!14699 (= e!8827 (and tp_is_empty!731 tp!2360))))

(assert (=> b!14628 (= tp!2354 e!8827)))

(assert (= (and b!14628 (is-Cons!420 (t!2823 (t!2823 l!522)))) b!14699))

(declare-fun b_lambda!955 () Bool)

(assert (= b_lambda!953 (or b!14595 b_lambda!955)))

(declare-fun bs!594 () Bool)

(declare-fun d!2385 () Bool)

(assert (= bs!594 (and d!2385 b!14595)))

(assert (=> bs!594 (= (dynLambda!91 lambda!168 (h!986 lt!3622)) (= (_2!265 (h!986 lt!3622)) value!159))))

(assert (=> b!14697 d!2385))

(declare-fun b_lambda!957 () Bool)

(assert (= b_lambda!951 (or b!14496 b_lambda!957)))

(declare-fun bs!595 () Bool)

(declare-fun d!2387 () Bool)

(assert (= bs!595 (and d!2387 b!14496)))

(assert (=> bs!595 (= (dynLambda!91 lambda!161 (h!986 (t!2823 lt!3615))) (= (_2!265 (h!986 (t!2823 lt!3615))) value!159))))

(assert (=> b!14680 d!2387))

(push 1)

(assert tp_is_empty!731)

(assert (not b!14688))

(assert (not b!14683))

(assert (not b!14696))

(assert (not d!2369))

(assert (not b!14698))

(assert (not b!14681))

(assert (not b!14689))

(assert (not b_lambda!957))

(assert (not b!14686))

(assert (not bm!445))

(assert (not b_lambda!955))

(assert (not bm!446))

(assert (not b!14692))

(assert (not b!14694))

(assert (not b!14699))

(assert (not b_lambda!929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

