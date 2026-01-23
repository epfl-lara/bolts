; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86620 () Bool)

(assert start!86620)

(declare-fun b!975432 () Bool)

(declare-fun e!628260 () Bool)

(declare-fun tp_is_empty!5075 () Bool)

(declare-fun tp!298410 () Bool)

(assert (=> b!975432 (= e!628260 (and tp_is_empty!5075 tp!298410))))

(declare-fun res!443053 () Bool)

(declare-fun e!628261 () Bool)

(assert (=> start!86620 (=> (not res!443053) (not e!628261))))

(declare-datatypes ((C!6002 0))(
  ( (C!6003 (val!3249 Int)) )
))
(declare-datatypes ((Regex!2716 0))(
  ( (ElementMatch!2716 (c!159291 C!6002)) (Concat!4549 (regOne!5944 Regex!2716) (regTwo!5944 Regex!2716)) (EmptyExpr!2716) (Star!2716 (reg!3045 Regex!2716)) (EmptyLang!2716) (Union!2716 (regOne!5945 Regex!2716) (regTwo!5945 Regex!2716)) )
))
(declare-fun r!15766 () Regex!2716)

(declare-fun validRegex!1185 (Regex!2716) Bool)

(assert (=> start!86620 (= res!443053 (validRegex!1185 r!15766))))

(assert (=> start!86620 e!628261))

(declare-fun e!628259 () Bool)

(assert (=> start!86620 e!628259))

(assert (=> start!86620 e!628260))

(declare-fun b!975433 () Bool)

(declare-fun e!628258 () Bool)

(assert (=> b!975433 (= e!628261 (not e!628258))))

(declare-fun res!443055 () Bool)

(assert (=> b!975433 (=> res!443055 e!628258)))

(declare-fun lt!349411 () Bool)

(assert (=> b!975433 (= res!443055 (or (not lt!349411) (and (is-Concat!4549 r!15766) (is-EmptyExpr!2716 (regOne!5944 r!15766))) (not (is-Concat!4549 r!15766)) (not (is-EmptyExpr!2716 (regTwo!5944 r!15766)))))))

(declare-datatypes ((List!9946 0))(
  ( (Nil!9930) (Cons!9930 (h!15331 C!6002) (t!100992 List!9946)) )
))
(declare-fun s!10566 () List!9946)

(declare-fun matchRSpec!515 (Regex!2716 List!9946) Bool)

(assert (=> b!975433 (= lt!349411 (matchRSpec!515 r!15766 s!10566))))

(declare-fun matchR!1252 (Regex!2716 List!9946) Bool)

(assert (=> b!975433 (= lt!349411 (matchR!1252 r!15766 s!10566))))

(declare-datatypes ((Unit!15091 0))(
  ( (Unit!15092) )
))
(declare-fun lt!349410 () Unit!15091)

(declare-fun mainMatchTheorem!515 (Regex!2716 List!9946) Unit!15091)

(assert (=> b!975433 (= lt!349410 (mainMatchTheorem!515 r!15766 s!10566))))

(declare-fun b!975434 () Bool)

(declare-fun tp!298414 () Bool)

(declare-fun tp!298413 () Bool)

(assert (=> b!975434 (= e!628259 (and tp!298414 tp!298413))))

(declare-fun b!975435 () Bool)

(declare-fun tp!298411 () Bool)

(assert (=> b!975435 (= e!628259 tp!298411)))

(declare-fun b!975436 () Bool)

(declare-fun res!443054 () Bool)

(assert (=> b!975436 (=> res!443054 e!628258)))

(declare-fun isEmpty!6245 (List!9946) Bool)

(assert (=> b!975436 (= res!443054 (not (isEmpty!6245 s!10566)))))

(declare-fun b!975437 () Bool)

(assert (=> b!975437 (= e!628259 tp_is_empty!5075)))

(declare-fun b!975438 () Bool)

(declare-fun removeUselessConcat!347 (Regex!2716) Regex!2716)

(assert (=> b!975438 (= e!628258 (matchR!1252 (removeUselessConcat!347 r!15766) s!10566))))

(declare-fun b!975439 () Bool)

(declare-fun tp!298409 () Bool)

(declare-fun tp!298412 () Bool)

(assert (=> b!975439 (= e!628259 (and tp!298409 tp!298412))))

(assert (= (and start!86620 res!443053) b!975433))

(assert (= (and b!975433 (not res!443055)) b!975436))

(assert (= (and b!975436 (not res!443054)) b!975438))

(assert (= (and start!86620 (is-ElementMatch!2716 r!15766)) b!975437))

(assert (= (and start!86620 (is-Concat!4549 r!15766)) b!975434))

(assert (= (and start!86620 (is-Star!2716 r!15766)) b!975435))

(assert (= (and start!86620 (is-Union!2716 r!15766)) b!975439))

(assert (= (and start!86620 (is-Cons!9930 s!10566)) b!975432))

(declare-fun m!1177461 () Bool)

(assert (=> start!86620 m!1177461))

(declare-fun m!1177463 () Bool)

(assert (=> b!975433 m!1177463))

(declare-fun m!1177465 () Bool)

(assert (=> b!975433 m!1177465))

(declare-fun m!1177467 () Bool)

(assert (=> b!975433 m!1177467))

(declare-fun m!1177469 () Bool)

(assert (=> b!975436 m!1177469))

(declare-fun m!1177471 () Bool)

(assert (=> b!975438 m!1177471))

(assert (=> b!975438 m!1177471))

(declare-fun m!1177473 () Bool)

(assert (=> b!975438 m!1177473))

(push 1)

(assert (not b!975435))

(assert (not b!975433))

(assert (not b!975439))

(assert (not b!975432))

(assert (not start!86620))

(assert (not b!975436))

(assert (not b!975434))

(assert tp_is_empty!5075)

(assert (not b!975438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!975523 () Bool)

(declare-fun e!628317 () Bool)

(declare-fun head!1795 (List!9946) C!6002)

(assert (=> b!975523 (= e!628317 (not (= (head!1795 s!10566) (c!159291 (removeUselessConcat!347 r!15766)))))))

(declare-fun b!975524 () Bool)

(declare-fun e!628314 () Bool)

(declare-fun e!628312 () Bool)

(assert (=> b!975524 (= e!628314 e!628312)))

(declare-fun c!159308 () Bool)

(assert (=> b!975524 (= c!159308 (is-EmptyLang!2716 (removeUselessConcat!347 r!15766)))))

(declare-fun b!975525 () Bool)

(declare-fun e!628316 () Bool)

(declare-fun nullable!836 (Regex!2716) Bool)

(assert (=> b!975525 (= e!628316 (nullable!836 (removeUselessConcat!347 r!15766)))))

(declare-fun d!287418 () Bool)

(assert (=> d!287418 e!628314))

(declare-fun c!159307 () Bool)

(assert (=> d!287418 (= c!159307 (is-EmptyExpr!2716 (removeUselessConcat!347 r!15766)))))

(declare-fun lt!349420 () Bool)

(assert (=> d!287418 (= lt!349420 e!628316)))

(declare-fun c!159309 () Bool)

(assert (=> d!287418 (= c!159309 (isEmpty!6245 s!10566))))

(assert (=> d!287418 (validRegex!1185 (removeUselessConcat!347 r!15766))))

(assert (=> d!287418 (= (matchR!1252 (removeUselessConcat!347 r!15766) s!10566) lt!349420)))

(declare-fun b!975526 () Bool)

(declare-fun e!628311 () Bool)

(assert (=> b!975526 (= e!628311 e!628317)))

(declare-fun res!443099 () Bool)

(assert (=> b!975526 (=> res!443099 e!628317)))

(declare-fun call!62291 () Bool)

(assert (=> b!975526 (= res!443099 call!62291)))

(declare-fun b!975527 () Bool)

(declare-fun res!443100 () Bool)

(declare-fun e!628313 () Bool)

(assert (=> b!975527 (=> (not res!443100) (not e!628313))))

(declare-fun tail!1357 (List!9946) List!9946)

(assert (=> b!975527 (= res!443100 (isEmpty!6245 (tail!1357 s!10566)))))

(declare-fun bm!62286 () Bool)

(assert (=> bm!62286 (= call!62291 (isEmpty!6245 s!10566))))

(declare-fun b!975528 () Bool)

(declare-fun res!443097 () Bool)

(assert (=> b!975528 (=> (not res!443097) (not e!628313))))

(assert (=> b!975528 (= res!443097 (not call!62291))))

(declare-fun b!975529 () Bool)

(declare-fun e!628315 () Bool)

(assert (=> b!975529 (= e!628315 e!628311)))

(declare-fun res!443098 () Bool)

(assert (=> b!975529 (=> (not res!443098) (not e!628311))))

(assert (=> b!975529 (= res!443098 (not lt!349420))))

(declare-fun b!975530 () Bool)

(assert (=> b!975530 (= e!628313 (= (head!1795 s!10566) (c!159291 (removeUselessConcat!347 r!15766))))))

(declare-fun b!975531 () Bool)

(declare-fun res!443103 () Bool)

(assert (=> b!975531 (=> res!443103 e!628317)))

(assert (=> b!975531 (= res!443103 (not (isEmpty!6245 (tail!1357 s!10566))))))

(declare-fun b!975532 () Bool)

(declare-fun derivativeStep!642 (Regex!2716 C!6002) Regex!2716)

(assert (=> b!975532 (= e!628316 (matchR!1252 (derivativeStep!642 (removeUselessConcat!347 r!15766) (head!1795 s!10566)) (tail!1357 s!10566)))))

(declare-fun b!975533 () Bool)

(declare-fun res!443101 () Bool)

(assert (=> b!975533 (=> res!443101 e!628315)))

(assert (=> b!975533 (= res!443101 (not (is-ElementMatch!2716 (removeUselessConcat!347 r!15766))))))

(assert (=> b!975533 (= e!628312 e!628315)))

(declare-fun b!975534 () Bool)

(declare-fun res!443102 () Bool)

(assert (=> b!975534 (=> res!443102 e!628315)))

(assert (=> b!975534 (= res!443102 e!628313)))

(declare-fun res!443096 () Bool)

(assert (=> b!975534 (=> (not res!443096) (not e!628313))))

(assert (=> b!975534 (= res!443096 lt!349420)))

(declare-fun b!975535 () Bool)

(assert (=> b!975535 (= e!628312 (not lt!349420))))

(declare-fun b!975536 () Bool)

(assert (=> b!975536 (= e!628314 (= lt!349420 call!62291))))

(assert (= (and d!287418 c!159309) b!975525))

(assert (= (and d!287418 (not c!159309)) b!975532))

(assert (= (and d!287418 c!159307) b!975536))

(assert (= (and d!287418 (not c!159307)) b!975524))

(assert (= (and b!975524 c!159308) b!975535))

(assert (= (and b!975524 (not c!159308)) b!975533))

(assert (= (and b!975533 (not res!443101)) b!975534))

(assert (= (and b!975534 res!443096) b!975528))

(assert (= (and b!975528 res!443097) b!975527))

(assert (= (and b!975527 res!443100) b!975530))

(assert (= (and b!975534 (not res!443102)) b!975529))

(assert (= (and b!975529 res!443098) b!975526))

(assert (= (and b!975526 (not res!443099)) b!975531))

(assert (= (and b!975531 (not res!443103)) b!975523))

(assert (= (or b!975536 b!975526 b!975528) bm!62286))

(declare-fun m!1177495 () Bool)

(assert (=> b!975530 m!1177495))

(declare-fun m!1177497 () Bool)

(assert (=> b!975531 m!1177497))

(assert (=> b!975531 m!1177497))

(declare-fun m!1177499 () Bool)

(assert (=> b!975531 m!1177499))

(assert (=> d!287418 m!1177469))

(assert (=> d!287418 m!1177471))

(declare-fun m!1177501 () Bool)

(assert (=> d!287418 m!1177501))

(assert (=> b!975532 m!1177495))

(assert (=> b!975532 m!1177471))

(assert (=> b!975532 m!1177495))

(declare-fun m!1177503 () Bool)

(assert (=> b!975532 m!1177503))

(assert (=> b!975532 m!1177497))

(assert (=> b!975532 m!1177503))

(assert (=> b!975532 m!1177497))

(declare-fun m!1177505 () Bool)

(assert (=> b!975532 m!1177505))

(assert (=> bm!62286 m!1177469))

(assert (=> b!975523 m!1177495))

(assert (=> b!975525 m!1177471))

(declare-fun m!1177507 () Bool)

(assert (=> b!975525 m!1177507))

(assert (=> b!975527 m!1177497))

(assert (=> b!975527 m!1177497))

(assert (=> b!975527 m!1177499))

(assert (=> b!975438 d!287418))

(declare-fun b!975577 () Bool)

(declare-fun e!628346 () Regex!2716)

(declare-fun call!62303 () Regex!2716)

(declare-fun call!62306 () Regex!2716)

(assert (=> b!975577 (= e!628346 (Union!2716 call!62303 call!62306))))

(declare-fun bm!62297 () Bool)

(declare-fun call!62305 () Regex!2716)

(assert (=> bm!62297 (= call!62303 call!62305)))

(declare-fun bm!62298 () Bool)

(declare-fun call!62304 () Regex!2716)

(assert (=> bm!62298 (= call!62305 call!62304)))

(declare-fun bm!62299 () Bool)

(declare-fun call!62302 () Regex!2716)

(assert (=> bm!62299 (= call!62306 call!62302)))

(declare-fun b!975578 () Bool)

(declare-fun e!628347 () Regex!2716)

(assert (=> b!975578 (= e!628347 call!62304)))

(declare-fun b!975579 () Bool)

(declare-fun e!628343 () Regex!2716)

(assert (=> b!975579 (= e!628343 (Star!2716 call!62306))))

(declare-fun b!975580 () Bool)

(declare-fun e!628344 () Regex!2716)

(assert (=> b!975580 (= e!628344 (Concat!4549 call!62303 call!62302))))

(declare-fun b!975581 () Bool)

(assert (=> b!975581 (= e!628344 e!628346)))

(declare-fun c!159327 () Bool)

(assert (=> b!975581 (= c!159327 (is-Union!2716 r!15766))))

(declare-fun b!975582 () Bool)

(declare-fun e!628342 () Regex!2716)

(assert (=> b!975582 (= e!628342 call!62305)))

(declare-fun d!287422 () Bool)

(declare-fun e!628345 () Bool)

(assert (=> d!287422 e!628345))

(declare-fun res!443112 () Bool)

(assert (=> d!287422 (=> (not res!443112) (not e!628345))))

(declare-fun lt!349423 () Regex!2716)

(assert (=> d!287422 (= res!443112 (validRegex!1185 lt!349423))))

(assert (=> d!287422 (= lt!349423 e!628347)))

(declare-fun c!159326 () Bool)

(assert (=> d!287422 (= c!159326 (and (is-Concat!4549 r!15766) (is-EmptyExpr!2716 (regOne!5944 r!15766))))))

(assert (=> d!287422 (validRegex!1185 r!15766)))

(assert (=> d!287422 (= (removeUselessConcat!347 r!15766) lt!349423)))

(declare-fun b!975583 () Bool)

(declare-fun c!159328 () Bool)

(assert (=> b!975583 (= c!159328 (is-Concat!4549 r!15766))))

(assert (=> b!975583 (= e!628342 e!628344)))

(declare-fun b!975584 () Bool)

(assert (=> b!975584 (= e!628345 (= (nullable!836 lt!349423) (nullable!836 r!15766)))))

(declare-fun b!975585 () Bool)

(declare-fun c!159329 () Bool)

(assert (=> b!975585 (= c!159329 (is-Star!2716 r!15766))))

(assert (=> b!975585 (= e!628346 e!628343)))

(declare-fun bm!62300 () Bool)

(declare-fun c!159330 () Bool)

(assert (=> bm!62300 (= call!62304 (removeUselessConcat!347 (ite c!159326 (regTwo!5944 r!15766) (ite (or c!159330 c!159328) (regOne!5944 r!15766) (regOne!5945 r!15766)))))))

(declare-fun b!975586 () Bool)

(assert (=> b!975586 (= e!628343 r!15766)))

(declare-fun b!975587 () Bool)

(assert (=> b!975587 (= e!628347 e!628342)))

(assert (=> b!975587 (= c!159330 (and (is-Concat!4549 r!15766) (is-EmptyExpr!2716 (regTwo!5944 r!15766))))))

(declare-fun bm!62301 () Bool)

(assert (=> bm!62301 (= call!62302 (removeUselessConcat!347 (ite c!159328 (regTwo!5944 r!15766) (ite c!159327 (regTwo!5945 r!15766) (reg!3045 r!15766)))))))

(assert (= (and d!287422 c!159326) b!975578))

(assert (= (and d!287422 (not c!159326)) b!975587))

(assert (= (and b!975587 c!159330) b!975582))

(assert (= (and b!975587 (not c!159330)) b!975583))

(assert (= (and b!975583 c!159328) b!975580))

(assert (= (and b!975583 (not c!159328)) b!975581))

(assert (= (and b!975581 c!159327) b!975577))

(assert (= (and b!975581 (not c!159327)) b!975585))

(assert (= (and b!975585 c!159329) b!975579))

(assert (= (and b!975585 (not c!159329)) b!975586))

(assert (= (or b!975577 b!975579) bm!62299))

(assert (= (or b!975580 bm!62299) bm!62301))

(assert (= (or b!975580 b!975577) bm!62297))

(assert (= (or b!975582 bm!62297) bm!62298))

(assert (= (or b!975578 bm!62298) bm!62300))

(assert (= (and d!287422 res!443112) b!975584))

(declare-fun m!1177509 () Bool)

(assert (=> d!287422 m!1177509))

(assert (=> d!287422 m!1177461))

(declare-fun m!1177511 () Bool)

(assert (=> b!975584 m!1177511))

(declare-fun m!1177513 () Bool)

(assert (=> b!975584 m!1177513))

(declare-fun m!1177515 () Bool)

(assert (=> bm!62300 m!1177515))

(declare-fun m!1177517 () Bool)

(assert (=> bm!62301 m!1177517))

(assert (=> b!975438 d!287422))

(declare-fun b!975630 () Bool)

(assert (=> b!975630 true))

(assert (=> b!975630 true))

(declare-fun bs!243156 () Bool)

(declare-fun b!975627 () Bool)

(assert (= bs!243156 (and b!975627 b!975630)))

(declare-fun lambda!34640 () Int)

(declare-fun lambda!34639 () Int)

(assert (=> bs!243156 (not (= lambda!34640 lambda!34639))))

(assert (=> b!975627 true))

(assert (=> b!975627 true))

(declare-fun b!975620 () Bool)

(declare-fun c!159340 () Bool)

(assert (=> b!975620 (= c!159340 (is-ElementMatch!2716 r!15766))))

(declare-fun e!628368 () Bool)

(declare-fun e!628370 () Bool)

(assert (=> b!975620 (= e!628368 e!628370)))

(declare-fun b!975621 () Bool)

(declare-fun e!628367 () Bool)

(assert (=> b!975621 (= e!628367 (matchRSpec!515 (regTwo!5945 r!15766) s!10566))))

(declare-fun bm!62306 () Bool)

(declare-fun call!62311 () Bool)

(assert (=> bm!62306 (= call!62311 (isEmpty!6245 s!10566))))

(declare-fun b!975622 () Bool)

(declare-fun e!628371 () Bool)

(assert (=> b!975622 (= e!628371 call!62311)))

(declare-fun b!975623 () Bool)

(declare-fun c!159342 () Bool)

(assert (=> b!975623 (= c!159342 (is-Union!2716 r!15766))))

(declare-fun e!628366 () Bool)

(assert (=> b!975623 (= e!628370 e!628366)))

(declare-fun d!287424 () Bool)

(declare-fun c!159341 () Bool)

(assert (=> d!287424 (= c!159341 (is-EmptyExpr!2716 r!15766))))

(assert (=> d!287424 (= (matchRSpec!515 r!15766 s!10566) e!628371)))

(declare-fun c!159339 () Bool)

(declare-fun bm!62307 () Bool)

(declare-fun call!62312 () Bool)

(declare-fun Exists!455 (Int) Bool)

(assert (=> bm!62307 (= call!62312 (Exists!455 (ite c!159339 lambda!34639 lambda!34640)))))

(declare-fun b!975624 () Bool)

(assert (=> b!975624 (= e!628371 e!628368)))

(declare-fun res!443130 () Bool)

(assert (=> b!975624 (= res!443130 (not (is-EmptyLang!2716 r!15766)))))

(assert (=> b!975624 (=> (not res!443130) (not e!628368))))

(declare-fun b!975625 () Bool)

(assert (=> b!975625 (= e!628366 e!628367)))

(declare-fun res!443129 () Bool)

(assert (=> b!975625 (= res!443129 (matchRSpec!515 (regOne!5945 r!15766) s!10566))))

(assert (=> b!975625 (=> res!443129 e!628367)))

(declare-fun b!975626 () Bool)

(declare-fun res!443131 () Bool)

(declare-fun e!628369 () Bool)

(assert (=> b!975626 (=> res!443131 e!628369)))

(assert (=> b!975626 (= res!443131 call!62311)))

(declare-fun e!628372 () Bool)

(assert (=> b!975626 (= e!628372 e!628369)))

(assert (=> b!975627 (= e!628372 call!62312)))

(declare-fun b!975628 () Bool)

(assert (=> b!975628 (= e!628366 e!628372)))

(assert (=> b!975628 (= c!159339 (is-Star!2716 r!15766))))

(declare-fun b!975629 () Bool)

(assert (=> b!975629 (= e!628370 (= s!10566 (Cons!9930 (c!159291 r!15766) Nil!9930)))))

(assert (=> b!975630 (= e!628369 call!62312)))

(assert (= (and d!287424 c!159341) b!975622))

(assert (= (and d!287424 (not c!159341)) b!975624))

(assert (= (and b!975624 res!443130) b!975620))

(assert (= (and b!975620 c!159340) b!975629))

(assert (= (and b!975620 (not c!159340)) b!975623))

(assert (= (and b!975623 c!159342) b!975625))

(assert (= (and b!975623 (not c!159342)) b!975628))

(assert (= (and b!975625 (not res!443129)) b!975621))

(assert (= (and b!975628 c!159339) b!975626))

(assert (= (and b!975628 (not c!159339)) b!975627))

(assert (= (and b!975626 (not res!443131)) b!975630))

(assert (= (or b!975630 b!975627) bm!62307))

(assert (= (or b!975622 b!975626) bm!62306))

(declare-fun m!1177519 () Bool)

(assert (=> b!975621 m!1177519))

(assert (=> bm!62306 m!1177469))

(declare-fun m!1177521 () Bool)

(assert (=> bm!62307 m!1177521))

(declare-fun m!1177523 () Bool)

(assert (=> b!975625 m!1177523))

(assert (=> b!975433 d!287424))

(declare-fun b!975635 () Bool)

(declare-fun e!628379 () Bool)

(assert (=> b!975635 (= e!628379 (not (= (head!1795 s!10566) (c!159291 r!15766))))))

(declare-fun b!975636 () Bool)

(declare-fun e!628376 () Bool)

(declare-fun e!628374 () Bool)

(assert (=> b!975636 (= e!628376 e!628374)))

(declare-fun c!159344 () Bool)

(assert (=> b!975636 (= c!159344 (is-EmptyLang!2716 r!15766))))

(declare-fun b!975637 () Bool)

(declare-fun e!628378 () Bool)

(assert (=> b!975637 (= e!628378 (nullable!836 r!15766))))

(declare-fun d!287426 () Bool)

(assert (=> d!287426 e!628376))

(declare-fun c!159343 () Bool)

(assert (=> d!287426 (= c!159343 (is-EmptyExpr!2716 r!15766))))

(declare-fun lt!349424 () Bool)

(assert (=> d!287426 (= lt!349424 e!628378)))

(declare-fun c!159345 () Bool)

(assert (=> d!287426 (= c!159345 (isEmpty!6245 s!10566))))

(assert (=> d!287426 (validRegex!1185 r!15766)))

(assert (=> d!287426 (= (matchR!1252 r!15766 s!10566) lt!349424)))

(declare-fun b!975638 () Bool)

(declare-fun e!628373 () Bool)

(assert (=> b!975638 (= e!628373 e!628379)))

(declare-fun res!443135 () Bool)

(assert (=> b!975638 (=> res!443135 e!628379)))

(declare-fun call!62313 () Bool)

(assert (=> b!975638 (= res!443135 call!62313)))

(declare-fun b!975639 () Bool)

(declare-fun res!443136 () Bool)

(declare-fun e!628375 () Bool)

(assert (=> b!975639 (=> (not res!443136) (not e!628375))))

(assert (=> b!975639 (= res!443136 (isEmpty!6245 (tail!1357 s!10566)))))

(declare-fun bm!62308 () Bool)

(assert (=> bm!62308 (= call!62313 (isEmpty!6245 s!10566))))

(declare-fun b!975640 () Bool)

(declare-fun res!443133 () Bool)

(assert (=> b!975640 (=> (not res!443133) (not e!628375))))

(assert (=> b!975640 (= res!443133 (not call!62313))))

(declare-fun b!975641 () Bool)

(declare-fun e!628377 () Bool)

(assert (=> b!975641 (= e!628377 e!628373)))

(declare-fun res!443134 () Bool)

(assert (=> b!975641 (=> (not res!443134) (not e!628373))))

(assert (=> b!975641 (= res!443134 (not lt!349424))))

(declare-fun b!975642 () Bool)

(assert (=> b!975642 (= e!628375 (= (head!1795 s!10566) (c!159291 r!15766)))))

(declare-fun b!975643 () Bool)

(declare-fun res!443139 () Bool)

(assert (=> b!975643 (=> res!443139 e!628379)))

(assert (=> b!975643 (= res!443139 (not (isEmpty!6245 (tail!1357 s!10566))))))

(declare-fun b!975644 () Bool)

(assert (=> b!975644 (= e!628378 (matchR!1252 (derivativeStep!642 r!15766 (head!1795 s!10566)) (tail!1357 s!10566)))))

(declare-fun b!975645 () Bool)

(declare-fun res!443137 () Bool)

(assert (=> b!975645 (=> res!443137 e!628377)))

(assert (=> b!975645 (= res!443137 (not (is-ElementMatch!2716 r!15766)))))

(assert (=> b!975645 (= e!628374 e!628377)))

(declare-fun b!975646 () Bool)

(declare-fun res!443138 () Bool)

(assert (=> b!975646 (=> res!443138 e!628377)))

(assert (=> b!975646 (= res!443138 e!628375)))

(declare-fun res!443132 () Bool)

(assert (=> b!975646 (=> (not res!443132) (not e!628375))))

(assert (=> b!975646 (= res!443132 lt!349424)))

(declare-fun b!975647 () Bool)

(assert (=> b!975647 (= e!628374 (not lt!349424))))

(declare-fun b!975648 () Bool)

(assert (=> b!975648 (= e!628376 (= lt!349424 call!62313))))

(assert (= (and d!287426 c!159345) b!975637))

(assert (= (and d!287426 (not c!159345)) b!975644))

(assert (= (and d!287426 c!159343) b!975648))

(assert (= (and d!287426 (not c!159343)) b!975636))

(assert (= (and b!975636 c!159344) b!975647))

(assert (= (and b!975636 (not c!159344)) b!975645))

(assert (= (and b!975645 (not res!443137)) b!975646))

(assert (= (and b!975646 res!443132) b!975640))

(assert (= (and b!975640 res!443133) b!975639))

(assert (= (and b!975639 res!443136) b!975642))

(assert (= (and b!975646 (not res!443138)) b!975641))

(assert (= (and b!975641 res!443134) b!975638))

(assert (= (and b!975638 (not res!443135)) b!975643))

(assert (= (and b!975643 (not res!443139)) b!975635))

(assert (= (or b!975648 b!975638 b!975640) bm!62308))

(assert (=> b!975642 m!1177495))

(assert (=> b!975643 m!1177497))

(assert (=> b!975643 m!1177497))

(assert (=> b!975643 m!1177499))

(assert (=> d!287426 m!1177469))

(assert (=> d!287426 m!1177461))

(assert (=> b!975644 m!1177495))

(assert (=> b!975644 m!1177495))

(declare-fun m!1177525 () Bool)

(assert (=> b!975644 m!1177525))

(assert (=> b!975644 m!1177497))

(assert (=> b!975644 m!1177525))

(assert (=> b!975644 m!1177497))

(declare-fun m!1177527 () Bool)

(assert (=> b!975644 m!1177527))

(assert (=> bm!62308 m!1177469))

(assert (=> b!975635 m!1177495))

(assert (=> b!975637 m!1177513))

(assert (=> b!975639 m!1177497))

(assert (=> b!975639 m!1177497))

(assert (=> b!975639 m!1177499))

(assert (=> b!975433 d!287426))

(declare-fun d!287428 () Bool)

(assert (=> d!287428 (= (matchR!1252 r!15766 s!10566) (matchRSpec!515 r!15766 s!10566))))

(declare-fun lt!349427 () Unit!15091)

(declare-fun choose!6177 (Regex!2716 List!9946) Unit!15091)

(assert (=> d!287428 (= lt!349427 (choose!6177 r!15766 s!10566))))

(assert (=> d!287428 (validRegex!1185 r!15766)))

(assert (=> d!287428 (= (mainMatchTheorem!515 r!15766 s!10566) lt!349427)))

(declare-fun bs!243157 () Bool)

(assert (= bs!243157 d!287428))

(assert (=> bs!243157 m!1177465))

(assert (=> bs!243157 m!1177463))

(declare-fun m!1177529 () Bool)

(assert (=> bs!243157 m!1177529))

(assert (=> bs!243157 m!1177461))

(assert (=> b!975433 d!287428))

(declare-fun b!975667 () Bool)

(declare-fun e!628398 () Bool)

(declare-fun e!628400 () Bool)

(assert (=> b!975667 (= e!628398 e!628400)))

(declare-fun c!159351 () Bool)

(assert (=> b!975667 (= c!159351 (is-Union!2716 r!15766))))

(declare-fun b!975668 () Bool)

(declare-fun res!443152 () Bool)

(declare-fun e!628394 () Bool)

(assert (=> b!975668 (=> (not res!443152) (not e!628394))))

(declare-fun call!62320 () Bool)

(assert (=> b!975668 (= res!443152 call!62320)))

(assert (=> b!975668 (= e!628400 e!628394)))

(declare-fun bm!62315 () Bool)

(assert (=> bm!62315 (= call!62320 (validRegex!1185 (ite c!159351 (regOne!5945 r!15766) (regOne!5944 r!15766))))))

(declare-fun bm!62316 () Bool)

(declare-fun call!62322 () Bool)

(declare-fun call!62321 () Bool)

(assert (=> bm!62316 (= call!62322 call!62321)))

(declare-fun bm!62317 () Bool)

(declare-fun c!159350 () Bool)

(assert (=> bm!62317 (= call!62321 (validRegex!1185 (ite c!159350 (reg!3045 r!15766) (ite c!159351 (regTwo!5945 r!15766) (regTwo!5944 r!15766)))))))

(declare-fun b!975669 () Bool)

(declare-fun e!628397 () Bool)

(assert (=> b!975669 (= e!628397 call!62321)))

(declare-fun b!975670 () Bool)

(assert (=> b!975670 (= e!628394 call!62322)))

(declare-fun b!975671 () Bool)

(declare-fun res!443154 () Bool)

(declare-fun e!628399 () Bool)

(assert (=> b!975671 (=> res!443154 e!628399)))

(assert (=> b!975671 (= res!443154 (not (is-Concat!4549 r!15766)))))

(assert (=> b!975671 (= e!628400 e!628399)))

(declare-fun d!287430 () Bool)

(declare-fun res!443151 () Bool)

(declare-fun e!628396 () Bool)

(assert (=> d!287430 (=> res!443151 e!628396)))

(assert (=> d!287430 (= res!443151 (is-ElementMatch!2716 r!15766))))

(assert (=> d!287430 (= (validRegex!1185 r!15766) e!628396)))

(declare-fun b!975672 () Bool)

(assert (=> b!975672 (= e!628398 e!628397)))

(declare-fun res!443150 () Bool)

(assert (=> b!975672 (= res!443150 (not (nullable!836 (reg!3045 r!15766))))))

(assert (=> b!975672 (=> (not res!443150) (not e!628397))))

(declare-fun b!975673 () Bool)

(assert (=> b!975673 (= e!628396 e!628398)))

(assert (=> b!975673 (= c!159350 (is-Star!2716 r!15766))))

(declare-fun b!975674 () Bool)

(declare-fun e!628395 () Bool)

(assert (=> b!975674 (= e!628395 call!62322)))

(declare-fun b!975675 () Bool)

(assert (=> b!975675 (= e!628399 e!628395)))

(declare-fun res!443153 () Bool)

(assert (=> b!975675 (=> (not res!443153) (not e!628395))))

(assert (=> b!975675 (= res!443153 call!62320)))

(assert (= (and d!287430 (not res!443151)) b!975673))

(assert (= (and b!975673 c!159350) b!975672))

(assert (= (and b!975673 (not c!159350)) b!975667))

(assert (= (and b!975672 res!443150) b!975669))

(assert (= (and b!975667 c!159351) b!975668))

(assert (= (and b!975667 (not c!159351)) b!975671))

(assert (= (and b!975668 res!443152) b!975670))

(assert (= (and b!975671 (not res!443154)) b!975675))

(assert (= (and b!975675 res!443153) b!975674))

(assert (= (or b!975670 b!975674) bm!62316))

(assert (= (or b!975668 b!975675) bm!62315))

(assert (= (or b!975669 bm!62316) bm!62317))

(declare-fun m!1177531 () Bool)

(assert (=> bm!62315 m!1177531))

(declare-fun m!1177533 () Bool)

(assert (=> bm!62317 m!1177533))

(declare-fun m!1177535 () Bool)

(assert (=> b!975672 m!1177535))

(assert (=> start!86620 d!287430))

(declare-fun d!287432 () Bool)

(assert (=> d!287432 (= (isEmpty!6245 s!10566) (is-Nil!9930 s!10566))))

(assert (=> b!975436 d!287432))

(declare-fun b!975680 () Bool)

(declare-fun e!628403 () Bool)

(declare-fun tp!298435 () Bool)

(assert (=> b!975680 (= e!628403 (and tp_is_empty!5075 tp!298435))))

(assert (=> b!975432 (= tp!298410 e!628403)))

(assert (= (and b!975432 (is-Cons!9930 (t!100992 s!10566))) b!975680))

(declare-fun b!975691 () Bool)

(declare-fun e!628406 () Bool)

(assert (=> b!975691 (= e!628406 tp_is_empty!5075)))

(declare-fun b!975694 () Bool)

(declare-fun tp!298450 () Bool)

(declare-fun tp!298447 () Bool)

(assert (=> b!975694 (= e!628406 (and tp!298450 tp!298447))))

(declare-fun b!975693 () Bool)

(declare-fun tp!298448 () Bool)

(assert (=> b!975693 (= e!628406 tp!298448)))

(declare-fun b!975692 () Bool)

(declare-fun tp!298446 () Bool)

(declare-fun tp!298449 () Bool)

(assert (=> b!975692 (= e!628406 (and tp!298446 tp!298449))))

(assert (=> b!975435 (= tp!298411 e!628406)))

(assert (= (and b!975435 (is-ElementMatch!2716 (reg!3045 r!15766))) b!975691))

(assert (= (and b!975435 (is-Concat!4549 (reg!3045 r!15766))) b!975692))

(assert (= (and b!975435 (is-Star!2716 (reg!3045 r!15766))) b!975693))

(assert (= (and b!975435 (is-Union!2716 (reg!3045 r!15766))) b!975694))

(declare-fun b!975695 () Bool)

(declare-fun e!628407 () Bool)

(assert (=> b!975695 (= e!628407 tp_is_empty!5075)))

(declare-fun b!975698 () Bool)

(declare-fun tp!298455 () Bool)

(declare-fun tp!298452 () Bool)

(assert (=> b!975698 (= e!628407 (and tp!298455 tp!298452))))

(declare-fun b!975697 () Bool)

(declare-fun tp!298453 () Bool)

(assert (=> b!975697 (= e!628407 tp!298453)))

(declare-fun b!975696 () Bool)

(declare-fun tp!298451 () Bool)

(declare-fun tp!298454 () Bool)

(assert (=> b!975696 (= e!628407 (and tp!298451 tp!298454))))

(assert (=> b!975434 (= tp!298414 e!628407)))

(assert (= (and b!975434 (is-ElementMatch!2716 (regOne!5944 r!15766))) b!975695))

(assert (= (and b!975434 (is-Concat!4549 (regOne!5944 r!15766))) b!975696))

(assert (= (and b!975434 (is-Star!2716 (regOne!5944 r!15766))) b!975697))

(assert (= (and b!975434 (is-Union!2716 (regOne!5944 r!15766))) b!975698))

(declare-fun b!975699 () Bool)

(declare-fun e!628408 () Bool)

(assert (=> b!975699 (= e!628408 tp_is_empty!5075)))

(declare-fun b!975702 () Bool)

(declare-fun tp!298460 () Bool)

(declare-fun tp!298457 () Bool)

(assert (=> b!975702 (= e!628408 (and tp!298460 tp!298457))))

(declare-fun b!975701 () Bool)

(declare-fun tp!298458 () Bool)

(assert (=> b!975701 (= e!628408 tp!298458)))

(declare-fun b!975700 () Bool)

(declare-fun tp!298456 () Bool)

(declare-fun tp!298459 () Bool)

(assert (=> b!975700 (= e!628408 (and tp!298456 tp!298459))))

(assert (=> b!975434 (= tp!298413 e!628408)))

(assert (= (and b!975434 (is-ElementMatch!2716 (regTwo!5944 r!15766))) b!975699))

(assert (= (and b!975434 (is-Concat!4549 (regTwo!5944 r!15766))) b!975700))

(assert (= (and b!975434 (is-Star!2716 (regTwo!5944 r!15766))) b!975701))

(assert (= (and b!975434 (is-Union!2716 (regTwo!5944 r!15766))) b!975702))

(declare-fun b!975703 () Bool)

(declare-fun e!628409 () Bool)

(assert (=> b!975703 (= e!628409 tp_is_empty!5075)))

(declare-fun b!975706 () Bool)

(declare-fun tp!298465 () Bool)

(declare-fun tp!298462 () Bool)

(assert (=> b!975706 (= e!628409 (and tp!298465 tp!298462))))

(declare-fun b!975705 () Bool)

(declare-fun tp!298463 () Bool)

(assert (=> b!975705 (= e!628409 tp!298463)))

(declare-fun b!975704 () Bool)

(declare-fun tp!298461 () Bool)

(declare-fun tp!298464 () Bool)

(assert (=> b!975704 (= e!628409 (and tp!298461 tp!298464))))

(assert (=> b!975439 (= tp!298409 e!628409)))

(assert (= (and b!975439 (is-ElementMatch!2716 (regOne!5945 r!15766))) b!975703))

(assert (= (and b!975439 (is-Concat!4549 (regOne!5945 r!15766))) b!975704))

(assert (= (and b!975439 (is-Star!2716 (regOne!5945 r!15766))) b!975705))

(assert (= (and b!975439 (is-Union!2716 (regOne!5945 r!15766))) b!975706))

(declare-fun b!975707 () Bool)

(declare-fun e!628410 () Bool)

(assert (=> b!975707 (= e!628410 tp_is_empty!5075)))

(declare-fun b!975710 () Bool)

(declare-fun tp!298470 () Bool)

(declare-fun tp!298467 () Bool)

(assert (=> b!975710 (= e!628410 (and tp!298470 tp!298467))))

(declare-fun b!975709 () Bool)

(declare-fun tp!298468 () Bool)

(assert (=> b!975709 (= e!628410 tp!298468)))

(declare-fun b!975708 () Bool)

(declare-fun tp!298466 () Bool)

(declare-fun tp!298469 () Bool)

(assert (=> b!975708 (= e!628410 (and tp!298466 tp!298469))))

(assert (=> b!975439 (= tp!298412 e!628410)))

(assert (= (and b!975439 (is-ElementMatch!2716 (regTwo!5945 r!15766))) b!975707))

(assert (= (and b!975439 (is-Concat!4549 (regTwo!5945 r!15766))) b!975708))

(assert (= (and b!975439 (is-Star!2716 (regTwo!5945 r!15766))) b!975709))

(assert (= (and b!975439 (is-Union!2716 (regTwo!5945 r!15766))) b!975710))

(push 1)

(assert (not b!975705))

(assert (not b!975530))

(assert (not b!975696))

(assert (not b!975706))

(assert (not b!975672))

(assert (not b!975702))

(assert (not b!975698))

(assert (not bm!62301))

(assert (not b!975700))

(assert (not bm!62306))

(assert (not bm!62308))

(assert (not bm!62286))

(assert (not bm!62315))

(assert (not b!975637))

(assert (not b!975710))

(assert (not d!287428))

(assert (not b!975693))

(assert (not d!287426))

(assert (not b!975644))

(assert (not b!975694))

(assert tp_is_empty!5075)

(assert (not b!975525))

(assert (not b!975708))

(assert (not b!975709))

(assert (not d!287418))

(assert (not b!975639))

(assert (not b!975621))

(assert (not bm!62300))

(assert (not b!975680))

(assert (not b!975625))

(assert (not b!975584))

(assert (not b!975697))

(assert (not b!975701))

(assert (not b!975704))

(assert (not b!975532))

(assert (not b!975692))

(assert (not b!975642))

(assert (not b!975527))

(assert (not d!287422))

(assert (not b!975643))

(assert (not b!975523))

(assert (not b!975531))

(assert (not bm!62307))

(assert (not b!975635))

(assert (not bm!62317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

