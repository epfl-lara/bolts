; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2146 () Bool)

(assert start!2146)

(declare-fun b!14441 () Bool)

(assert (=> b!14441 true))

(declare-fun b!14440 () Bool)

(declare-fun e!8653 () Bool)

(declare-datatypes ((B!548 0))(
  ( (B!549 (val!372 Int)) )
))
(declare-datatypes ((tuple2!526 0))(
  ( (tuple2!527 (_1!263 (_ BitVec 64)) (_2!263 B!548)) )
))
(declare-datatypes ((List!422 0))(
  ( (Nil!419) (Cons!418 (h!984 tuple2!526) (t!2821 List!422)) )
))
(declare-fun lt!3609 () List!422)

(declare-fun l!522 () List!422)

(declare-fun head!791 (List!422) tuple2!526)

(assert (=> b!14440 (= e!8653 (bvslt (_1!263 (head!791 lt!3609)) (_1!263 (head!791 l!522))))))

(declare-fun res!11163 () Bool)

(declare-fun e!8649 () Bool)

(assert (=> b!14441 (=> res!11163 e!8649)))

(declare-fun lambda!155 () Int)

(declare-fun forall!95 (List!422 Int) Bool)

(assert (=> b!14441 (= res!11163 (not (forall!95 lt!3609 lambda!155)))))

(declare-fun b!14442 () Bool)

(declare-fun e!8650 () Bool)

(declare-fun call!419 () Bool)

(assert (=> b!14442 (= e!8650 (not call!419))))

(declare-fun b!14443 () Bool)

(declare-fun e!8651 () Bool)

(declare-fun tp_is_empty!727 () Bool)

(declare-fun tp!2342 () Bool)

(assert (=> b!14443 (= e!8651 (and tp_is_empty!727 tp!2342))))

(declare-fun res!11164 () Bool)

(declare-fun e!8652 () Bool)

(assert (=> start!2146 (=> (not res!11164) (not e!8652))))

(declare-fun isStrictlySorted!113 (List!422) Bool)

(assert (=> start!2146 (= res!11164 (isStrictlySorted!113 l!522))))

(assert (=> start!2146 e!8652))

(assert (=> start!2146 e!8651))

(assert (=> start!2146 tp_is_empty!727))

(declare-fun b!14444 () Bool)

(declare-fun res!11162 () Bool)

(assert (=> b!14444 (=> (not res!11162) (not e!8652))))

(declare-fun value!159 () B!548)

(assert (=> b!14444 (= res!11162 (and (not (= (_2!263 (h!984 l!522)) value!159)) (is-Cons!418 l!522)))))

(declare-fun b!14445 () Bool)

(assert (=> b!14445 (= e!8649 e!8650)))

(declare-fun c!1349 () Bool)

(declare-fun isEmpty!102 (List!422) Bool)

(assert (=> b!14445 (= c!1349 (isEmpty!102 l!522))))

(declare-fun b!14446 () Bool)

(assert (=> b!14446 (= e!8650 e!8653)))

(declare-fun res!11160 () Bool)

(assert (=> b!14446 (= res!11160 (not call!419))))

(assert (=> b!14446 (=> (not res!11160) (not e!8653))))

(declare-fun bm!416 () Bool)

(assert (=> bm!416 (= call!419 (isEmpty!102 lt!3609))))

(declare-fun b!14447 () Bool)

(assert (=> b!14447 (= e!8652 e!8649)))

(declare-fun res!11161 () Bool)

(assert (=> b!14447 (=> res!11161 e!8649)))

(assert (=> b!14447 (= res!11161 (not (isStrictlySorted!113 lt!3609)))))

(declare-fun filterByValue!16 (List!422 B!548) List!422)

(assert (=> b!14447 (= lt!3609 (filterByValue!16 (t!2821 l!522) value!159))))

(assert (= (and start!2146 res!11164) b!14444))

(assert (= (and b!14444 res!11162) b!14447))

(assert (= (and b!14447 (not res!11161)) b!14441))

(assert (= (and b!14441 (not res!11163)) b!14445))

(assert (= (and b!14445 c!1349) b!14442))

(assert (= (and b!14445 (not c!1349)) b!14446))

(assert (= (and b!14446 res!11160) b!14440))

(assert (= (or b!14442 b!14446) bm!416))

(assert (= (and start!2146 (is-Cons!418 l!522)) b!14443))

(declare-fun m!9631 () Bool)

(assert (=> b!14445 m!9631))

(declare-fun m!9633 () Bool)

(assert (=> start!2146 m!9633))

(declare-fun m!9635 () Bool)

(assert (=> bm!416 m!9635))

(declare-fun m!9637 () Bool)

(assert (=> b!14441 m!9637))

(declare-fun m!9639 () Bool)

(assert (=> b!14440 m!9639))

(declare-fun m!9641 () Bool)

(assert (=> b!14440 m!9641))

(declare-fun m!9643 () Bool)

(assert (=> b!14447 m!9643))

(declare-fun m!9645 () Bool)

(assert (=> b!14447 m!9645))

(push 1)

(assert (not b!14445))

(assert (not b!14440))

(assert (not b!14443))

(assert (not b!14447))

(assert (not start!2146))

(assert (not b!14441))

(assert tp_is_empty!727)

(assert (not bm!416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2267 () Bool)

(assert (=> d!2267 (= (isEmpty!102 l!522) (is-Nil!419 l!522))))

(assert (=> b!14445 d!2267))

(declare-fun d!2269 () Bool)

(assert (=> d!2269 (= (head!791 lt!3609) (h!984 lt!3609))))

(assert (=> b!14440 d!2269))

(declare-fun d!2271 () Bool)

(assert (=> d!2271 (= (head!791 l!522) (h!984 l!522))))

(assert (=> b!14440 d!2271))

(declare-fun d!2273 () Bool)

(declare-fun res!11227 () Bool)

(declare-fun e!8716 () Bool)

(assert (=> d!2273 (=> res!11227 e!8716)))

(assert (=> d!2273 (= res!11227 (or (is-Nil!419 l!522) (is-Nil!419 (t!2821 l!522))))))

(assert (=> d!2273 (= (isStrictlySorted!113 l!522) e!8716)))

(declare-fun b!14534 () Bool)

(declare-fun e!8717 () Bool)

(assert (=> b!14534 (= e!8716 e!8717)))

(declare-fun res!11228 () Bool)

(assert (=> b!14534 (=> (not res!11228) (not e!8717))))

(assert (=> b!14534 (= res!11228 (bvslt (_1!263 (h!984 l!522)) (_1!263 (h!984 (t!2821 l!522)))))))

(declare-fun b!14535 () Bool)

(assert (=> b!14535 (= e!8717 (isStrictlySorted!113 (t!2821 l!522)))))

(assert (= (and d!2273 (not res!11227)) b!14534))

(assert (= (and b!14534 res!11228) b!14535))

(declare-fun m!9695 () Bool)

(assert (=> b!14535 m!9695))

(assert (=> start!2146 d!2273))

(declare-fun d!2287 () Bool)

(declare-fun res!11229 () Bool)

(declare-fun e!8718 () Bool)

(assert (=> d!2287 (=> res!11229 e!8718)))

(assert (=> d!2287 (= res!11229 (or (is-Nil!419 lt!3609) (is-Nil!419 (t!2821 lt!3609))))))

(assert (=> d!2287 (= (isStrictlySorted!113 lt!3609) e!8718)))

(declare-fun b!14536 () Bool)

(declare-fun e!8719 () Bool)

(assert (=> b!14536 (= e!8718 e!8719)))

(declare-fun res!11230 () Bool)

(assert (=> b!14536 (=> (not res!11230) (not e!8719))))

(assert (=> b!14536 (= res!11230 (bvslt (_1!263 (h!984 lt!3609)) (_1!263 (h!984 (t!2821 lt!3609)))))))

(declare-fun b!14537 () Bool)

(assert (=> b!14537 (= e!8719 (isStrictlySorted!113 (t!2821 lt!3609)))))

(assert (= (and d!2287 (not res!11229)) b!14536))

(assert (= (and b!14536 res!11230) b!14537))

(declare-fun m!9697 () Bool)

(assert (=> b!14537 m!9697))

(assert (=> b!14447 d!2287))

(declare-fun bs!580 () Bool)

(declare-fun b!14610 () Bool)

(assert (= bs!580 (and b!14610 b!14441)))

(declare-fun lambda!170 () Int)

(assert (=> bs!580 (= lambda!170 lambda!155)))

(assert (=> b!14610 true))

(declare-fun d!2289 () Bool)

(declare-fun e!8761 () Bool)

(assert (=> d!2289 e!8761))

(declare-fun res!11256 () Bool)

(assert (=> d!2289 (=> (not res!11256) (not e!8761))))

(declare-fun lt!3624 () List!422)

(assert (=> d!2289 (= res!11256 (isStrictlySorted!113 lt!3624))))

(declare-fun e!8763 () List!422)

(assert (=> d!2289 (= lt!3624 e!8763)))

(declare-fun c!1382 () Bool)

(assert (=> d!2289 (= c!1382 (and (is-Cons!418 (t!2821 l!522)) (= (_2!263 (h!984 (t!2821 l!522))) value!159)))))

(assert (=> d!2289 (isStrictlySorted!113 (t!2821 l!522))))

(assert (=> d!2289 (= (filterByValue!16 (t!2821 l!522) value!159) lt!3624)))

(declare-fun bm!439 () Bool)

(declare-fun call!442 () List!422)

(assert (=> bm!439 (= call!442 (filterByValue!16 (t!2821 (t!2821 l!522)) value!159))))

(declare-fun res!11255 () Bool)

(assert (=> b!14610 (=> (not res!11255) (not e!8761))))

(assert (=> b!14610 (= res!11255 (forall!95 lt!3624 lambda!170))))

(declare-fun b!14611 () Bool)

(declare-fun e!8764 () List!422)

(assert (=> b!14611 (= e!8764 Nil!419)))

(declare-fun bm!440 () Bool)

(declare-fun call!443 () Bool)

(assert (=> bm!440 (= call!443 (isEmpty!102 lt!3624))))

(declare-fun b!14612 () Bool)

(assert (=> b!14612 (= e!8763 e!8764)))

(declare-fun c!1381 () Bool)

(assert (=> b!14612 (= c!1381 (and (is-Cons!418 (t!2821 l!522)) (not (= (_2!263 (h!984 (t!2821 l!522))) value!159))))))

(declare-fun b!14613 () Bool)

(assert (=> b!14613 (= e!8764 call!442)))

(declare-fun b!14614 () Bool)

(declare-fun $colon$colon!23 (List!422 tuple2!526) List!422)

(assert (=> b!14614 (= e!8763 ($colon$colon!23 call!442 (h!984 (t!2821 l!522))))))

(declare-fun b!14615 () Bool)

(declare-fun e!8760 () Bool)

(assert (=> b!14615 (= e!8760 (bvsge (_1!263 (head!791 lt!3624)) (_1!263 (head!791 (t!2821 l!522)))))))

(declare-fun b!14616 () Bool)

(declare-fun e!8762 () Bool)

(assert (=> b!14616 (= e!8762 e!8760)))

(declare-fun res!11257 () Bool)

(assert (=> b!14616 (= res!11257 call!443)))

(assert (=> b!14616 (=> res!11257 e!8760)))

(declare-fun b!14617 () Bool)

(assert (=> b!14617 (= e!8762 call!443)))

(declare-fun b!14618 () Bool)

(assert (=> b!14618 (= e!8761 e!8762)))

(declare-fun c!1380 () Bool)

(assert (=> b!14618 (= c!1380 (isEmpty!102 (t!2821 l!522)))))

(assert (= (and d!2289 c!1382) b!14614))

(assert (= (and d!2289 (not c!1382)) b!14612))

(assert (= (and b!14612 c!1381) b!14613))

(assert (= (and b!14612 (not c!1381)) b!14611))

(assert (= (or b!14614 b!14613) bm!439))

(assert (= (and d!2289 res!11256) b!14610))

(assert (= (and b!14610 res!11255) b!14618))

(assert (= (and b!14618 c!1380) b!14617))

(assert (= (and b!14618 (not c!1380)) b!14616))

(assert (= (and b!14616 (not res!11257)) b!14615))

(assert (= (or b!14617 b!14616) bm!440))

(declare-fun m!9731 () Bool)

(assert (=> b!14614 m!9731))

(declare-fun m!9733 () Bool)

(assert (=> d!2289 m!9733))

(assert (=> d!2289 m!9695))

(declare-fun m!9735 () Bool)

(assert (=> bm!440 m!9735))

(declare-fun m!9737 () Bool)

(assert (=> b!14610 m!9737))

(declare-fun m!9739 () Bool)

(assert (=> b!14615 m!9739))

(declare-fun m!9741 () Bool)

(assert (=> b!14615 m!9741))

(declare-fun m!9743 () Bool)

(assert (=> bm!439 m!9743))

(declare-fun m!9745 () Bool)

(assert (=> b!14618 m!9745))

(assert (=> b!14447 d!2289))

(declare-fun d!2305 () Bool)

(declare-fun res!11262 () Bool)

(declare-fun e!8775 () Bool)

(assert (=> d!2305 (=> res!11262 e!8775)))

(assert (=> d!2305 (= res!11262 (is-Nil!419 lt!3609))))

(assert (=> d!2305 (= (forall!95 lt!3609 lambda!155) e!8775)))

(declare-fun b!14633 () Bool)

(declare-fun e!8776 () Bool)

(assert (=> b!14633 (= e!8775 e!8776)))

(declare-fun res!11263 () Bool)

(assert (=> b!14633 (=> (not res!11263) (not e!8776))))

(declare-fun dynLambda!93 (Int tuple2!526) Bool)

(assert (=> b!14633 (= res!11263 (dynLambda!93 lambda!155 (h!984 lt!3609)))))

(declare-fun b!14634 () Bool)

(assert (=> b!14634 (= e!8776 (forall!95 (t!2821 lt!3609) lambda!155))))

(assert (= (and d!2305 (not res!11262)) b!14633))

(assert (= (and b!14633 res!11263) b!14634))

(declare-fun b_lambda!931 () Bool)

(assert (=> (not b_lambda!931) (not b!14633)))

(declare-fun m!9747 () Bool)

(assert (=> b!14633 m!9747))

(declare-fun m!9749 () Bool)

(assert (=> b!14634 m!9749))

(assert (=> b!14441 d!2305))

(declare-fun d!2307 () Bool)

(assert (=> d!2307 (= (isEmpty!102 lt!3609) (is-Nil!419 lt!3609))))

(assert (=> bm!416 d!2307))

(declare-fun b!14639 () Bool)

(declare-fun e!8779 () Bool)

(declare-fun tp!2357 () Bool)

(assert (=> b!14639 (= e!8779 (and tp_is_empty!727 tp!2357))))

(assert (=> b!14443 (= tp!2342 e!8779)))

(assert (= (and b!14443 (is-Cons!418 (t!2821 l!522))) b!14639))

(declare-fun b_lambda!933 () Bool)

(assert (= b_lambda!931 (or b!14441 b_lambda!933)))

(declare-fun bs!583 () Bool)

(declare-fun d!2309 () Bool)

(assert (= bs!583 (and d!2309 b!14441)))

(assert (=> bs!583 (= (dynLambda!93 lambda!155 (h!984 lt!3609)) (= (_2!263 (h!984 lt!3609)) value!159))))

(assert (=> b!14633 d!2309))

(push 1)

(assert (not b_lambda!933))

(assert (not b!14537))

(assert (not b!14614))

(assert (not bm!439))

(assert tp_is_empty!727)

(assert (not b!14610))

(assert (not b!14535))

(assert (not b!14634))

(assert (not b!14615))

(assert (not b!14639))

(assert (not d!2289))

(assert (not bm!440))

(assert (not b!14618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2337 () Bool)

(declare-fun res!11277 () Bool)

(declare-fun e!8796 () Bool)

(assert (=> d!2337 (=> res!11277 e!8796)))

(assert (=> d!2337 (= res!11277 (is-Nil!419 lt!3624))))

(assert (=> d!2337 (= (forall!95 lt!3624 lambda!170) e!8796)))

(declare-fun b!14660 () Bool)

(declare-fun e!8797 () Bool)

(assert (=> b!14660 (= e!8796 e!8797)))

(declare-fun res!11278 () Bool)

(assert (=> b!14660 (=> (not res!11278) (not e!8797))))

(assert (=> b!14660 (= res!11278 (dynLambda!93 lambda!170 (h!984 lt!3624)))))

(declare-fun b!14661 () Bool)

(assert (=> b!14661 (= e!8797 (forall!95 (t!2821 lt!3624) lambda!170))))

(assert (= (and d!2337 (not res!11277)) b!14660))

(assert (= (and b!14660 res!11278) b!14661))

(declare-fun b_lambda!943 () Bool)

(assert (=> (not b_lambda!943) (not b!14660)))

(declare-fun m!9781 () Bool)

(assert (=> b!14660 m!9781))

(declare-fun m!9783 () Bool)

(assert (=> b!14661 m!9783))

(assert (=> b!14610 d!2337))

(declare-fun d!2339 () Bool)

(assert (=> d!2339 (= ($colon$colon!23 call!442 (h!984 (t!2821 l!522))) (Cons!418 (h!984 (t!2821 l!522)) call!442))))

(assert (=> b!14614 d!2339))

(declare-fun d!2341 () Bool)

(declare-fun res!11279 () Bool)

(declare-fun e!8798 () Bool)

(assert (=> d!2341 (=> res!11279 e!8798)))

(assert (=> d!2341 (= res!11279 (or (is-Nil!419 (t!2821 lt!3609)) (is-Nil!419 (t!2821 (t!2821 lt!3609)))))))

(assert (=> d!2341 (= (isStrictlySorted!113 (t!2821 lt!3609)) e!8798)))

(declare-fun b!14662 () Bool)

(declare-fun e!8799 () Bool)

(assert (=> b!14662 (= e!8798 e!8799)))

(declare-fun res!11280 () Bool)

(assert (=> b!14662 (=> (not res!11280) (not e!8799))))

(assert (=> b!14662 (= res!11280 (bvslt (_1!263 (h!984 (t!2821 lt!3609))) (_1!263 (h!984 (t!2821 (t!2821 lt!3609))))))))

(declare-fun b!14663 () Bool)

(assert (=> b!14663 (= e!8799 (isStrictlySorted!113 (t!2821 (t!2821 lt!3609))))))

(assert (= (and d!2341 (not res!11279)) b!14662))

(assert (= (and b!14662 res!11280) b!14663))

(declare-fun m!9785 () Bool)

(assert (=> b!14663 m!9785))

(assert (=> b!14537 d!2341))

(declare-fun bs!588 () Bool)

(declare-fun b!14664 () Bool)

(assert (= bs!588 (and b!14664 b!14441)))

(declare-fun lambda!172 () Int)

(assert (=> bs!588 (= lambda!172 lambda!155)))

(declare-fun bs!589 () Bool)

(assert (= bs!589 (and b!14664 b!14610)))

(assert (=> bs!589 (= lambda!172 lambda!170)))

(assert (=> b!14664 true))

(declare-fun d!2343 () Bool)

(declare-fun e!8801 () Bool)

(assert (=> d!2343 e!8801))

(declare-fun res!11282 () Bool)

(assert (=> d!2343 (=> (not res!11282) (not e!8801))))

(declare-fun lt!3626 () List!422)

(assert (=> d!2343 (= res!11282 (isStrictlySorted!113 lt!3626))))

(declare-fun e!8803 () List!422)

(assert (=> d!2343 (= lt!3626 e!8803)))

(declare-fun c!1388 () Bool)

(assert (=> d!2343 (= c!1388 (and (is-Cons!418 (t!2821 (t!2821 l!522))) (= (_2!263 (h!984 (t!2821 (t!2821 l!522)))) value!159)))))

(assert (=> d!2343 (isStrictlySorted!113 (t!2821 (t!2821 l!522)))))

(assert (=> d!2343 (= (filterByValue!16 (t!2821 (t!2821 l!522)) value!159) lt!3626)))

(declare-fun bm!443 () Bool)

(declare-fun call!446 () List!422)

(assert (=> bm!443 (= call!446 (filterByValue!16 (t!2821 (t!2821 (t!2821 l!522))) value!159))))

(declare-fun res!11281 () Bool)

(assert (=> b!14664 (=> (not res!11281) (not e!8801))))

(assert (=> b!14664 (= res!11281 (forall!95 lt!3626 lambda!172))))

(declare-fun b!14665 () Bool)

(declare-fun e!8804 () List!422)

(assert (=> b!14665 (= e!8804 Nil!419)))

(declare-fun bm!444 () Bool)

(declare-fun call!447 () Bool)

(assert (=> bm!444 (= call!447 (isEmpty!102 lt!3626))))

(declare-fun b!14666 () Bool)

(assert (=> b!14666 (= e!8803 e!8804)))

(declare-fun c!1387 () Bool)

(assert (=> b!14666 (= c!1387 (and (is-Cons!418 (t!2821 (t!2821 l!522))) (not (= (_2!263 (h!984 (t!2821 (t!2821 l!522)))) value!159))))))

(declare-fun b!14667 () Bool)

(assert (=> b!14667 (= e!8804 call!446)))

(declare-fun b!14668 () Bool)

(assert (=> b!14668 (= e!8803 ($colon$colon!23 call!446 (h!984 (t!2821 (t!2821 l!522)))))))

(declare-fun b!14669 () Bool)

(declare-fun e!8800 () Bool)

(assert (=> b!14669 (= e!8800 (bvsge (_1!263 (head!791 lt!3626)) (_1!263 (head!791 (t!2821 (t!2821 l!522))))))))

(declare-fun b!14670 () Bool)

(declare-fun e!8802 () Bool)

(assert (=> b!14670 (= e!8802 e!8800)))

(declare-fun res!11283 () Bool)

(assert (=> b!14670 (= res!11283 call!447)))

(assert (=> b!14670 (=> res!11283 e!8800)))

(declare-fun b!14671 () Bool)

(assert (=> b!14671 (= e!8802 call!447)))

(declare-fun b!14672 () Bool)

(assert (=> b!14672 (= e!8801 e!8802)))

(declare-fun c!1386 () Bool)

(assert (=> b!14672 (= c!1386 (isEmpty!102 (t!2821 (t!2821 l!522))))))

(assert (= (and d!2343 c!1388) b!14668))

(assert (= (and d!2343 (not c!1388)) b!14666))

(assert (= (and b!14666 c!1387) b!14667))

(assert (= (and b!14666 (not c!1387)) b!14665))

(assert (= (or b!14668 b!14667) bm!443))

(assert (= (and d!2343 res!11282) b!14664))

(assert (= (and b!14664 res!11281) b!14672))

(assert (= (and b!14672 c!1386) b!14671))

(assert (= (and b!14672 (not c!1386)) b!14670))

(assert (= (and b!14670 (not res!11283)) b!14669))

(assert (= (or b!14671 b!14670) bm!444))

(declare-fun m!9787 () Bool)

(assert (=> b!14668 m!9787))

(declare-fun m!9789 () Bool)

(assert (=> d!2343 m!9789))

(declare-fun m!9791 () Bool)

(assert (=> d!2343 m!9791))

(declare-fun m!9793 () Bool)

(assert (=> bm!444 m!9793))

(declare-fun m!9795 () Bool)

(assert (=> b!14664 m!9795))

(declare-fun m!9797 () Bool)

(assert (=> b!14669 m!9797))

(declare-fun m!9799 () Bool)

(assert (=> b!14669 m!9799))

(declare-fun m!9801 () Bool)

(assert (=> bm!443 m!9801))

(declare-fun m!9803 () Bool)

(assert (=> b!14672 m!9803))

(assert (=> bm!439 d!2343))

(declare-fun d!2345 () Bool)

(declare-fun res!11284 () Bool)

(declare-fun e!8805 () Bool)

(assert (=> d!2345 (=> res!11284 e!8805)))

(assert (=> d!2345 (= res!11284 (is-Nil!419 (t!2821 lt!3609)))))

(assert (=> d!2345 (= (forall!95 (t!2821 lt!3609) lambda!155) e!8805)))

(declare-fun b!14673 () Bool)

(declare-fun e!8806 () Bool)

(assert (=> b!14673 (= e!8805 e!8806)))

(declare-fun res!11285 () Bool)

(assert (=> b!14673 (=> (not res!11285) (not e!8806))))

(assert (=> b!14673 (= res!11285 (dynLambda!93 lambda!155 (h!984 (t!2821 lt!3609))))))

(declare-fun b!14674 () Bool)

(assert (=> b!14674 (= e!8806 (forall!95 (t!2821 (t!2821 lt!3609)) lambda!155))))

(assert (= (and d!2345 (not res!11284)) b!14673))

(assert (= (and b!14673 res!11285) b!14674))

(declare-fun b_lambda!945 () Bool)

(assert (=> (not b_lambda!945) (not b!14673)))

(declare-fun m!9805 () Bool)

(assert (=> b!14673 m!9805))

(declare-fun m!9807 () Bool)

(assert (=> b!14674 m!9807))

(assert (=> b!14634 d!2345))

(declare-fun d!2347 () Bool)

(assert (=> d!2347 (= (head!791 lt!3624) (h!984 lt!3624))))

(assert (=> b!14615 d!2347))

(declare-fun d!2349 () Bool)

(assert (=> d!2349 (= (head!791 (t!2821 l!522)) (h!984 (t!2821 l!522)))))

(assert (=> b!14615 d!2349))

(declare-fun d!2351 () Bool)

(declare-fun res!11286 () Bool)

(declare-fun e!8807 () Bool)

(assert (=> d!2351 (=> res!11286 e!8807)))

(assert (=> d!2351 (= res!11286 (or (is-Nil!419 (t!2821 l!522)) (is-Nil!419 (t!2821 (t!2821 l!522)))))))

(assert (=> d!2351 (= (isStrictlySorted!113 (t!2821 l!522)) e!8807)))

(declare-fun b!14675 () Bool)

(declare-fun e!8808 () Bool)

(assert (=> b!14675 (= e!8807 e!8808)))

(declare-fun res!11287 () Bool)

(assert (=> b!14675 (=> (not res!11287) (not e!8808))))

(assert (=> b!14675 (= res!11287 (bvslt (_1!263 (h!984 (t!2821 l!522))) (_1!263 (h!984 (t!2821 (t!2821 l!522))))))))

(declare-fun b!14676 () Bool)

(assert (=> b!14676 (= e!8808 (isStrictlySorted!113 (t!2821 (t!2821 l!522))))))

(assert (= (and d!2351 (not res!11286)) b!14675))

(assert (= (and b!14675 res!11287) b!14676))

(assert (=> b!14676 m!9791))

(assert (=> b!14535 d!2351))

(declare-fun d!2353 () Bool)

(assert (=> d!2353 (= (isEmpty!102 lt!3624) (is-Nil!419 lt!3624))))

(assert (=> bm!440 d!2353))

(declare-fun d!2355 () Bool)

(assert (=> d!2355 (= (isEmpty!102 (t!2821 l!522)) (is-Nil!419 (t!2821 l!522)))))

(assert (=> b!14618 d!2355))

(declare-fun d!2357 () Bool)

(declare-fun res!11288 () Bool)

(declare-fun e!8809 () Bool)

(assert (=> d!2357 (=> res!11288 e!8809)))

(assert (=> d!2357 (= res!11288 (or (is-Nil!419 lt!3624) (is-Nil!419 (t!2821 lt!3624))))))

(assert (=> d!2357 (= (isStrictlySorted!113 lt!3624) e!8809)))

(declare-fun b!14677 () Bool)

(declare-fun e!8810 () Bool)

(assert (=> b!14677 (= e!8809 e!8810)))

(declare-fun res!11289 () Bool)

(assert (=> b!14677 (=> (not res!11289) (not e!8810))))

(assert (=> b!14677 (= res!11289 (bvslt (_1!263 (h!984 lt!3624)) (_1!263 (h!984 (t!2821 lt!3624)))))))

(declare-fun b!14678 () Bool)

(assert (=> b!14678 (= e!8810 (isStrictlySorted!113 (t!2821 lt!3624)))))

(assert (= (and d!2357 (not res!11288)) b!14677))

(assert (= (and b!14677 res!11289) b!14678))

(declare-fun m!9809 () Bool)

(assert (=> b!14678 m!9809))

(assert (=> d!2289 d!2357))

(assert (=> d!2289 d!2351))

(declare-fun b!14679 () Bool)

(declare-fun e!8811 () Bool)

(declare-fun tp!2359 () Bool)

(assert (=> b!14679 (= e!8811 (and tp_is_empty!727 tp!2359))))

(assert (=> b!14639 (= tp!2357 e!8811)))

(assert (= (and b!14639 (is-Cons!418 (t!2821 (t!2821 l!522)))) b!14679))

(declare-fun b_lambda!947 () Bool)

(assert (= b_lambda!943 (or b!14610 b_lambda!947)))

(declare-fun bs!590 () Bool)

(declare-fun d!2359 () Bool)

(assert (= bs!590 (and d!2359 b!14610)))

(assert (=> bs!590 (= (dynLambda!93 lambda!170 (h!984 lt!3624)) (= (_2!263 (h!984 lt!3624)) value!159))))

(assert (=> b!14660 d!2359))

(declare-fun b_lambda!949 () Bool)

(assert (= b_lambda!945 (or b!14441 b_lambda!949)))

(declare-fun bs!591 () Bool)

(declare-fun d!2361 () Bool)

(assert (= bs!591 (and d!2361 b!14441)))

(assert (=> bs!591 (= (dynLambda!93 lambda!155 (h!984 (t!2821 lt!3609))) (= (_2!263 (h!984 (t!2821 lt!3609))) value!159))))

(assert (=> b!14673 d!2361))

(push 1)

(assert (not b!14676))

(assert (not bm!444))

(assert (not b_lambda!933))

(assert (not b!14668))

(assert (not b!14664))

(assert (not b_lambda!949))

(assert (not b!14663))

(assert (not b!14669))

(assert (not b!14672))

(assert (not bm!443))

(assert tp_is_empty!727)

(assert (not b!14661))

(assert (not b_lambda!947))

(assert (not d!2343))

(assert (not b!14678))

(assert (not b!14679))

(assert (not b!14674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

