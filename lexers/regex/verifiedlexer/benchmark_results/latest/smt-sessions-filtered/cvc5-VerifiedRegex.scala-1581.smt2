; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81760 () Bool)

(assert start!81760)

(declare-fun b!909250 () Bool)

(assert (=> b!909250 true))

(assert (=> b!909250 true))

(declare-fun lambda!28884 () Int)

(declare-fun lambda!28883 () Int)

(assert (=> b!909250 (not (= lambda!28884 lambda!28883))))

(assert (=> b!909250 true))

(assert (=> b!909250 true))

(declare-fun b!909248 () Bool)

(declare-fun e!593378 () Bool)

(declare-fun tp!284501 () Bool)

(assert (=> b!909248 (= e!593378 tp!284501)))

(declare-fun res!413459 () Bool)

(declare-fun e!593379 () Bool)

(assert (=> start!81760 (=> (not res!413459) (not e!593379))))

(declare-datatypes ((C!5410 0))(
  ( (C!5411 (val!2953 Int)) )
))
(declare-datatypes ((Regex!2420 0))(
  ( (ElementMatch!2420 (c!147281 C!5410)) (Concat!4253 (regOne!5352 Regex!2420) (regTwo!5352 Regex!2420)) (EmptyExpr!2420) (Star!2420 (reg!2749 Regex!2420)) (EmptyLang!2420) (Union!2420 (regOne!5353 Regex!2420) (regTwo!5353 Regex!2420)) )
))
(declare-fun r!15766 () Regex!2420)

(declare-fun validRegex!889 (Regex!2420) Bool)

(assert (=> start!81760 (= res!413459 (validRegex!889 r!15766))))

(assert (=> start!81760 e!593379))

(assert (=> start!81760 e!593378))

(declare-fun e!593376 () Bool)

(assert (=> start!81760 e!593376))

(declare-fun b!909249 () Bool)

(declare-fun tp!284503 () Bool)

(declare-fun tp!284505 () Bool)

(assert (=> b!909249 (= e!593378 (and tp!284503 tp!284505))))

(declare-fun e!593377 () Bool)

(declare-fun e!593380 () Bool)

(assert (=> b!909250 (= e!593377 e!593380)))

(declare-fun res!413458 () Bool)

(assert (=> b!909250 (=> res!413458 e!593380)))

(declare-datatypes ((List!9650 0))(
  ( (Nil!9634) (Cons!9634 (h!15035 C!5410) (t!100696 List!9650)) )
))
(declare-fun s!10566 () List!9650)

(declare-fun isEmpty!5847 (List!9650) Bool)

(assert (=> b!909250 (= res!413458 (isEmpty!5847 s!10566))))

(declare-fun Exists!193 (Int) Bool)

(assert (=> b!909250 (= (Exists!193 lambda!28883) (Exists!193 lambda!28884))))

(declare-datatypes ((Unit!14459 0))(
  ( (Unit!14460) )
))
(declare-fun lt!336317 () Unit!14459)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!107 (Regex!2420 Regex!2420 List!9650) Unit!14459)

(assert (=> b!909250 (= lt!336317 (lemmaExistCutMatchRandMatchRSpecEquivalent!107 (regOne!5352 r!15766) EmptyExpr!2420 s!10566))))

(declare-datatypes ((tuple2!10830 0))(
  ( (tuple2!10831 (_1!6241 List!9650) (_2!6241 List!9650)) )
))
(declare-datatypes ((Option!2057 0))(
  ( (None!2056) (Some!2056 (v!19473 tuple2!10830)) )
))
(declare-fun isDefined!1699 (Option!2057) Bool)

(declare-fun findConcatSeparation!163 (Regex!2420 Regex!2420 List!9650 List!9650 List!9650) Option!2057)

(assert (=> b!909250 (= (isDefined!1699 (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 Nil!9634 s!10566 s!10566)) (Exists!193 lambda!28883))))

(declare-fun lt!336314 () Unit!14459)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!163 (Regex!2420 Regex!2420 List!9650) Unit!14459)

(assert (=> b!909250 (= lt!336314 (lemmaFindConcatSeparationEquivalentToExists!163 (regOne!5352 r!15766) EmptyExpr!2420 s!10566))))

(declare-fun b!909251 () Bool)

(declare-fun ++!2531 (List!9650 List!9650) List!9650)

(assert (=> b!909251 (= e!593380 (= (++!2531 Nil!9634 s!10566) s!10566))))

(declare-fun b!909252 () Bool)

(declare-fun tp_is_empty!4483 () Bool)

(declare-fun tp!284506 () Bool)

(assert (=> b!909252 (= e!593376 (and tp_is_empty!4483 tp!284506))))

(declare-fun b!909253 () Bool)

(declare-fun res!413460 () Bool)

(assert (=> b!909253 (=> res!413460 e!593380)))

(assert (=> b!909253 (= res!413460 false)))

(declare-fun b!909254 () Bool)

(declare-fun res!413457 () Bool)

(assert (=> b!909254 (=> res!413457 e!593380)))

(assert (=> b!909254 (= res!413457 (not (validRegex!889 (regOne!5352 r!15766))))))

(declare-fun b!909255 () Bool)

(assert (=> b!909255 (= e!593378 tp_is_empty!4483)))

(declare-fun b!909256 () Bool)

(assert (=> b!909256 (= e!593379 (not e!593377))))

(declare-fun res!413461 () Bool)

(assert (=> b!909256 (=> res!413461 e!593377)))

(declare-fun lt!336316 () Bool)

(assert (=> b!909256 (= res!413461 (or lt!336316 (and (is-Concat!4253 r!15766) (is-EmptyExpr!2420 (regOne!5352 r!15766))) (not (is-Concat!4253 r!15766)) (not (is-EmptyExpr!2420 (regTwo!5352 r!15766)))))))

(declare-fun matchRSpec!221 (Regex!2420 List!9650) Bool)

(assert (=> b!909256 (= lt!336316 (matchRSpec!221 r!15766 s!10566))))

(declare-fun matchR!958 (Regex!2420 List!9650) Bool)

(assert (=> b!909256 (= lt!336316 (matchR!958 r!15766 s!10566))))

(declare-fun lt!336315 () Unit!14459)

(declare-fun mainMatchTheorem!221 (Regex!2420 List!9650) Unit!14459)

(assert (=> b!909256 (= lt!336315 (mainMatchTheorem!221 r!15766 s!10566))))

(declare-fun b!909257 () Bool)

(declare-fun tp!284504 () Bool)

(declare-fun tp!284502 () Bool)

(assert (=> b!909257 (= e!593378 (and tp!284504 tp!284502))))

(assert (= (and start!81760 res!413459) b!909256))

(assert (= (and b!909256 (not res!413461)) b!909250))

(assert (= (and b!909250 (not res!413458)) b!909254))

(assert (= (and b!909254 (not res!413457)) b!909253))

(assert (= (and b!909253 (not res!413460)) b!909251))

(assert (= (and start!81760 (is-ElementMatch!2420 r!15766)) b!909255))

(assert (= (and start!81760 (is-Concat!4253 r!15766)) b!909249))

(assert (= (and start!81760 (is-Star!2420 r!15766)) b!909248))

(assert (= (and start!81760 (is-Union!2420 r!15766)) b!909257))

(assert (= (and start!81760 (is-Cons!9634 s!10566)) b!909252))

(declare-fun m!1142477 () Bool)

(assert (=> b!909256 m!1142477))

(declare-fun m!1142479 () Bool)

(assert (=> b!909256 m!1142479))

(declare-fun m!1142481 () Bool)

(assert (=> b!909256 m!1142481))

(declare-fun m!1142483 () Bool)

(assert (=> b!909250 m!1142483))

(declare-fun m!1142485 () Bool)

(assert (=> b!909250 m!1142485))

(declare-fun m!1142487 () Bool)

(assert (=> b!909250 m!1142487))

(assert (=> b!909250 m!1142487))

(assert (=> b!909250 m!1142485))

(declare-fun m!1142489 () Bool)

(assert (=> b!909250 m!1142489))

(declare-fun m!1142491 () Bool)

(assert (=> b!909250 m!1142491))

(declare-fun m!1142493 () Bool)

(assert (=> b!909250 m!1142493))

(declare-fun m!1142495 () Bool)

(assert (=> b!909250 m!1142495))

(declare-fun m!1142497 () Bool)

(assert (=> start!81760 m!1142497))

(declare-fun m!1142499 () Bool)

(assert (=> b!909254 m!1142499))

(declare-fun m!1142501 () Bool)

(assert (=> b!909251 m!1142501))

(push 1)

(assert (not start!81760))

(assert (not b!909248))

(assert (not b!909252))

(assert (not b!909251))

(assert (not b!909250))

(assert (not b!909254))

(assert (not b!909256))

(assert (not b!909257))

(assert (not b!909249))

(assert tp_is_empty!4483)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!235664 () Bool)

(declare-fun b!909344 () Bool)

(assert (= bs!235664 (and b!909344 b!909250)))

(declare-fun lambda!28897 () Int)

(assert (=> bs!235664 (not (= lambda!28897 lambda!28883))))

(assert (=> bs!235664 (not (= lambda!28897 lambda!28884))))

(assert (=> b!909344 true))

(assert (=> b!909344 true))

(declare-fun bs!235665 () Bool)

(declare-fun b!909348 () Bool)

(assert (= bs!235665 (and b!909348 b!909250)))

(declare-fun lambda!28898 () Int)

(assert (=> bs!235665 (not (= lambda!28898 lambda!28883))))

(assert (=> bs!235665 (= (= (regTwo!5352 r!15766) EmptyExpr!2420) (= lambda!28898 lambda!28884))))

(declare-fun bs!235666 () Bool)

(assert (= bs!235666 (and b!909348 b!909344)))

(assert (=> bs!235666 (not (= lambda!28898 lambda!28897))))

(assert (=> b!909348 true))

(assert (=> b!909348 true))

(declare-fun b!909340 () Bool)

(declare-fun e!593420 () Bool)

(declare-fun call!54575 () Bool)

(assert (=> b!909340 (= e!593420 call!54575)))

(declare-fun b!909341 () Bool)

(declare-fun e!593422 () Bool)

(assert (=> b!909341 (= e!593420 e!593422)))

(declare-fun res!413505 () Bool)

(assert (=> b!909341 (= res!413505 (not (is-EmptyLang!2420 r!15766)))))

(assert (=> b!909341 (=> (not res!413505) (not e!593422))))

(declare-fun bm!54569 () Bool)

(assert (=> bm!54569 (= call!54575 (isEmpty!5847 s!10566))))

(declare-fun b!909342 () Bool)

(declare-fun res!413506 () Bool)

(declare-fun e!593425 () Bool)

(assert (=> b!909342 (=> res!413506 e!593425)))

(assert (=> b!909342 (= res!413506 call!54575)))

(declare-fun e!593423 () Bool)

(assert (=> b!909342 (= e!593423 e!593425)))

(declare-fun b!909343 () Bool)

(declare-fun c!147293 () Bool)

(assert (=> b!909343 (= c!147293 (is-Union!2420 r!15766))))

(declare-fun e!593424 () Bool)

(declare-fun e!593426 () Bool)

(assert (=> b!909343 (= e!593424 e!593426)))

(declare-fun d!279126 () Bool)

(declare-fun c!147291 () Bool)

(assert (=> d!279126 (= c!147291 (is-EmptyExpr!2420 r!15766))))

(assert (=> d!279126 (= (matchRSpec!221 r!15766 s!10566) e!593420)))

(declare-fun call!54574 () Bool)

(assert (=> b!909344 (= e!593425 call!54574)))

(declare-fun b!909345 () Bool)

(assert (=> b!909345 (= e!593424 (= s!10566 (Cons!9634 (c!147281 r!15766) Nil!9634)))))

(declare-fun b!909346 () Bool)

(declare-fun e!593421 () Bool)

(assert (=> b!909346 (= e!593426 e!593421)))

(declare-fun res!413507 () Bool)

(assert (=> b!909346 (= res!413507 (matchRSpec!221 (regOne!5353 r!15766) s!10566))))

(assert (=> b!909346 (=> res!413507 e!593421)))

(declare-fun b!909347 () Bool)

(assert (=> b!909347 (= e!593421 (matchRSpec!221 (regTwo!5353 r!15766) s!10566))))

(declare-fun c!147292 () Bool)

(declare-fun bm!54570 () Bool)

(assert (=> bm!54570 (= call!54574 (Exists!193 (ite c!147292 lambda!28897 lambda!28898)))))

(assert (=> b!909348 (= e!593423 call!54574)))

(declare-fun b!909349 () Bool)

(assert (=> b!909349 (= e!593426 e!593423)))

(assert (=> b!909349 (= c!147292 (is-Star!2420 r!15766))))

(declare-fun b!909350 () Bool)

(declare-fun c!147294 () Bool)

(assert (=> b!909350 (= c!147294 (is-ElementMatch!2420 r!15766))))

(assert (=> b!909350 (= e!593422 e!593424)))

(assert (= (and d!279126 c!147291) b!909340))

(assert (= (and d!279126 (not c!147291)) b!909341))

(assert (= (and b!909341 res!413505) b!909350))

(assert (= (and b!909350 c!147294) b!909345))

(assert (= (and b!909350 (not c!147294)) b!909343))

(assert (= (and b!909343 c!147293) b!909346))

(assert (= (and b!909343 (not c!147293)) b!909349))

(assert (= (and b!909346 (not res!413507)) b!909347))

(assert (= (and b!909349 c!147292) b!909342))

(assert (= (and b!909349 (not c!147292)) b!909348))

(assert (= (and b!909342 (not res!413506)) b!909344))

(assert (= (or b!909344 b!909348) bm!54570))

(assert (= (or b!909340 b!909342) bm!54569))

(assert (=> bm!54569 m!1142493))

(declare-fun m!1142529 () Bool)

(assert (=> b!909346 m!1142529))

(declare-fun m!1142531 () Bool)

(assert (=> b!909347 m!1142531))

(declare-fun m!1142533 () Bool)

(assert (=> bm!54570 m!1142533))

(assert (=> b!909256 d!279126))

(declare-fun b!909397 () Bool)

(declare-fun e!593455 () Bool)

(declare-fun head!1617 (List!9650) C!5410)

(assert (=> b!909397 (= e!593455 (= (head!1617 s!10566) (c!147281 r!15766)))))

(declare-fun b!909398 () Bool)

(declare-fun e!593460 () Bool)

(declare-fun e!593457 () Bool)

(assert (=> b!909398 (= e!593460 e!593457)))

(declare-fun res!413535 () Bool)

(assert (=> b!909398 (=> res!413535 e!593457)))

(declare-fun call!54584 () Bool)

(assert (=> b!909398 (= res!413535 call!54584)))

(declare-fun b!909399 () Bool)

(declare-fun res!413539 () Bool)

(assert (=> b!909399 (=> (not res!413539) (not e!593455))))

(declare-fun tail!1179 (List!9650) List!9650)

(assert (=> b!909399 (= res!413539 (isEmpty!5847 (tail!1179 s!10566)))))

(declare-fun b!909400 () Bool)

(declare-fun e!593456 () Bool)

(declare-fun lt!336332 () Bool)

(assert (=> b!909400 (= e!593456 (= lt!336332 call!54584))))

(declare-fun bm!54579 () Bool)

(assert (=> bm!54579 (= call!54584 (isEmpty!5847 s!10566))))

(declare-fun b!909401 () Bool)

(declare-fun res!413540 () Bool)

(assert (=> b!909401 (=> res!413540 e!593457)))

(assert (=> b!909401 (= res!413540 (not (isEmpty!5847 (tail!1179 s!10566))))))

(declare-fun b!909402 () Bool)

(declare-fun e!593461 () Bool)

(declare-fun derivativeStep!464 (Regex!2420 C!5410) Regex!2420)

(assert (=> b!909402 (= e!593461 (matchR!958 (derivativeStep!464 r!15766 (head!1617 s!10566)) (tail!1179 s!10566)))))

(declare-fun b!909403 () Bool)

(declare-fun e!593458 () Bool)

(assert (=> b!909403 (= e!593456 e!593458)))

(declare-fun c!147305 () Bool)

(assert (=> b!909403 (= c!147305 (is-EmptyLang!2420 r!15766))))

(declare-fun b!909404 () Bool)

(declare-fun nullable!653 (Regex!2420) Bool)

(assert (=> b!909404 (= e!593461 (nullable!653 r!15766))))

(declare-fun d!279130 () Bool)

(assert (=> d!279130 e!593456))

(declare-fun c!147307 () Bool)

(assert (=> d!279130 (= c!147307 (is-EmptyExpr!2420 r!15766))))

(assert (=> d!279130 (= lt!336332 e!593461)))

(declare-fun c!147306 () Bool)

(assert (=> d!279130 (= c!147306 (isEmpty!5847 s!10566))))

(assert (=> d!279130 (validRegex!889 r!15766)))

(assert (=> d!279130 (= (matchR!958 r!15766 s!10566) lt!336332)))

(declare-fun b!909405 () Bool)

(declare-fun e!593459 () Bool)

(assert (=> b!909405 (= e!593459 e!593460)))

(declare-fun res!413536 () Bool)

(assert (=> b!909405 (=> (not res!413536) (not e!593460))))

(assert (=> b!909405 (= res!413536 (not lt!336332))))

(declare-fun b!909406 () Bool)

(declare-fun res!413534 () Bool)

(assert (=> b!909406 (=> res!413534 e!593459)))

(assert (=> b!909406 (= res!413534 (not (is-ElementMatch!2420 r!15766)))))

(assert (=> b!909406 (= e!593458 e!593459)))

(declare-fun b!909407 () Bool)

(declare-fun res!413538 () Bool)

(assert (=> b!909407 (=> (not res!413538) (not e!593455))))

(assert (=> b!909407 (= res!413538 (not call!54584))))

(declare-fun b!909408 () Bool)

(assert (=> b!909408 (= e!593458 (not lt!336332))))

(declare-fun b!909409 () Bool)

(assert (=> b!909409 (= e!593457 (not (= (head!1617 s!10566) (c!147281 r!15766))))))

(declare-fun b!909410 () Bool)

(declare-fun res!413541 () Bool)

(assert (=> b!909410 (=> res!413541 e!593459)))

(assert (=> b!909410 (= res!413541 e!593455)))

(declare-fun res!413537 () Bool)

(assert (=> b!909410 (=> (not res!413537) (not e!593455))))

(assert (=> b!909410 (= res!413537 lt!336332)))

(assert (= (and d!279130 c!147306) b!909404))

(assert (= (and d!279130 (not c!147306)) b!909402))

(assert (= (and d!279130 c!147307) b!909400))

(assert (= (and d!279130 (not c!147307)) b!909403))

(assert (= (and b!909403 c!147305) b!909408))

(assert (= (and b!909403 (not c!147305)) b!909406))

(assert (= (and b!909406 (not res!413534)) b!909410))

(assert (= (and b!909410 res!413537) b!909407))

(assert (= (and b!909407 res!413538) b!909399))

(assert (= (and b!909399 res!413539) b!909397))

(assert (= (and b!909410 (not res!413541)) b!909405))

(assert (= (and b!909405 res!413536) b!909398))

(assert (= (and b!909398 (not res!413535)) b!909401))

(assert (= (and b!909401 (not res!413540)) b!909409))

(assert (= (or b!909400 b!909398 b!909407) bm!54579))

(declare-fun m!1142535 () Bool)

(assert (=> b!909404 m!1142535))

(declare-fun m!1142537 () Bool)

(assert (=> b!909397 m!1142537))

(assert (=> b!909409 m!1142537))

(assert (=> b!909402 m!1142537))

(assert (=> b!909402 m!1142537))

(declare-fun m!1142539 () Bool)

(assert (=> b!909402 m!1142539))

(declare-fun m!1142541 () Bool)

(assert (=> b!909402 m!1142541))

(assert (=> b!909402 m!1142539))

(assert (=> b!909402 m!1142541))

(declare-fun m!1142543 () Bool)

(assert (=> b!909402 m!1142543))

(assert (=> bm!54579 m!1142493))

(assert (=> d!279130 m!1142493))

(assert (=> d!279130 m!1142497))

(assert (=> b!909399 m!1142541))

(assert (=> b!909399 m!1142541))

(declare-fun m!1142545 () Bool)

(assert (=> b!909399 m!1142545))

(assert (=> b!909401 m!1142541))

(assert (=> b!909401 m!1142541))

(assert (=> b!909401 m!1142545))

(assert (=> b!909256 d!279130))

(declare-fun d!279132 () Bool)

(assert (=> d!279132 (= (matchR!958 r!15766 s!10566) (matchRSpec!221 r!15766 s!10566))))

(declare-fun lt!336335 () Unit!14459)

(declare-fun choose!5516 (Regex!2420 List!9650) Unit!14459)

(assert (=> d!279132 (= lt!336335 (choose!5516 r!15766 s!10566))))

(assert (=> d!279132 (validRegex!889 r!15766)))

(assert (=> d!279132 (= (mainMatchTheorem!221 r!15766 s!10566) lt!336335)))

(declare-fun bs!235667 () Bool)

(assert (= bs!235667 d!279132))

(assert (=> bs!235667 m!1142479))

(assert (=> bs!235667 m!1142477))

(declare-fun m!1142553 () Bool)

(assert (=> bs!235667 m!1142553))

(assert (=> bs!235667 m!1142497))

(assert (=> b!909256 d!279132))

(declare-fun b!909432 () Bool)

(declare-fun e!593476 () List!9650)

(assert (=> b!909432 (= e!593476 s!10566)))

(declare-fun b!909434 () Bool)

(declare-fun res!413552 () Bool)

(declare-fun e!593475 () Bool)

(assert (=> b!909434 (=> (not res!413552) (not e!593475))))

(declare-fun lt!336340 () List!9650)

(declare-fun size!7883 (List!9650) Int)

(assert (=> b!909434 (= res!413552 (= (size!7883 lt!336340) (+ (size!7883 Nil!9634) (size!7883 s!10566))))))

(declare-fun b!909433 () Bool)

(assert (=> b!909433 (= e!593476 (Cons!9634 (h!15035 Nil!9634) (++!2531 (t!100696 Nil!9634) s!10566)))))

(declare-fun d!279136 () Bool)

(assert (=> d!279136 e!593475))

(declare-fun res!413551 () Bool)

(assert (=> d!279136 (=> (not res!413551) (not e!593475))))

(declare-fun content!1382 (List!9650) (Set C!5410))

(assert (=> d!279136 (= res!413551 (= (content!1382 lt!336340) (set.union (content!1382 Nil!9634) (content!1382 s!10566))))))

(assert (=> d!279136 (= lt!336340 e!593476)))

(declare-fun c!147314 () Bool)

(assert (=> d!279136 (= c!147314 (is-Nil!9634 Nil!9634))))

(assert (=> d!279136 (= (++!2531 Nil!9634 s!10566) lt!336340)))

(declare-fun b!909435 () Bool)

(assert (=> b!909435 (= e!593475 (or (not (= s!10566 Nil!9634)) (= lt!336340 Nil!9634)))))

(assert (= (and d!279136 c!147314) b!909432))

(assert (= (and d!279136 (not c!147314)) b!909433))

(assert (= (and d!279136 res!413551) b!909434))

(assert (= (and b!909434 res!413552) b!909435))

(declare-fun m!1142555 () Bool)

(assert (=> b!909434 m!1142555))

(declare-fun m!1142557 () Bool)

(assert (=> b!909434 m!1142557))

(declare-fun m!1142559 () Bool)

(assert (=> b!909434 m!1142559))

(declare-fun m!1142561 () Bool)

(assert (=> b!909433 m!1142561))

(declare-fun m!1142563 () Bool)

(assert (=> d!279136 m!1142563))

(declare-fun m!1142565 () Bool)

(assert (=> d!279136 m!1142565))

(declare-fun m!1142567 () Bool)

(assert (=> d!279136 m!1142567))

(assert (=> b!909251 d!279136))

(declare-fun b!909462 () Bool)

(declare-fun e!593498 () Bool)

(declare-fun call!54596 () Bool)

(assert (=> b!909462 (= e!593498 call!54596)))

(declare-fun b!909463 () Bool)

(declare-fun e!593501 () Bool)

(assert (=> b!909463 (= e!593501 call!54596)))

(declare-fun bm!54589 () Bool)

(declare-fun call!54595 () Bool)

(declare-fun call!54594 () Bool)

(assert (=> bm!54589 (= call!54595 call!54594)))

(declare-fun bm!54590 () Bool)

(declare-fun c!147320 () Bool)

(assert (=> bm!54590 (= call!54596 (validRegex!889 (ite c!147320 (regTwo!5353 r!15766) (regTwo!5352 r!15766))))))

(declare-fun d!279138 () Bool)

(declare-fun res!413571 () Bool)

(declare-fun e!593499 () Bool)

(assert (=> d!279138 (=> res!413571 e!593499)))

(assert (=> d!279138 (= res!413571 (is-ElementMatch!2420 r!15766))))

(assert (=> d!279138 (= (validRegex!889 r!15766) e!593499)))

(declare-fun b!909464 () Bool)

(declare-fun e!593497 () Bool)

(declare-fun e!593496 () Bool)

(assert (=> b!909464 (= e!593497 e!593496)))

(declare-fun res!413573 () Bool)

(assert (=> b!909464 (= res!413573 (not (nullable!653 (reg!2749 r!15766))))))

(assert (=> b!909464 (=> (not res!413573) (not e!593496))))

(declare-fun b!909465 () Bool)

(declare-fun res!413569 () Bool)

(declare-fun e!593500 () Bool)

(assert (=> b!909465 (=> res!413569 e!593500)))

(assert (=> b!909465 (= res!413569 (not (is-Concat!4253 r!15766)))))

(declare-fun e!593495 () Bool)

(assert (=> b!909465 (= e!593495 e!593500)))

(declare-fun b!909466 () Bool)

(assert (=> b!909466 (= e!593497 e!593495)))

(assert (=> b!909466 (= c!147320 (is-Union!2420 r!15766))))

(declare-fun b!909467 () Bool)

(assert (=> b!909467 (= e!593500 e!593501)))

(declare-fun res!413572 () Bool)

(assert (=> b!909467 (=> (not res!413572) (not e!593501))))

(assert (=> b!909467 (= res!413572 call!54595)))

(declare-fun b!909468 () Bool)

(assert (=> b!909468 (= e!593499 e!593497)))

(declare-fun c!147321 () Bool)

(assert (=> b!909468 (= c!147321 (is-Star!2420 r!15766))))

(declare-fun b!909469 () Bool)

(declare-fun res!413570 () Bool)

(assert (=> b!909469 (=> (not res!413570) (not e!593498))))

(assert (=> b!909469 (= res!413570 call!54595)))

(assert (=> b!909469 (= e!593495 e!593498)))

(declare-fun bm!54591 () Bool)

(assert (=> bm!54591 (= call!54594 (validRegex!889 (ite c!147321 (reg!2749 r!15766) (ite c!147320 (regOne!5353 r!15766) (regOne!5352 r!15766)))))))

(declare-fun b!909470 () Bool)

(assert (=> b!909470 (= e!593496 call!54594)))

(assert (= (and d!279138 (not res!413571)) b!909468))

(assert (= (and b!909468 c!147321) b!909464))

(assert (= (and b!909468 (not c!147321)) b!909466))

(assert (= (and b!909464 res!413573) b!909470))

(assert (= (and b!909466 c!147320) b!909469))

(assert (= (and b!909466 (not c!147320)) b!909465))

(assert (= (and b!909469 res!413570) b!909462))

(assert (= (and b!909465 (not res!413569)) b!909467))

(assert (= (and b!909467 res!413572) b!909463))

(assert (= (or b!909462 b!909463) bm!54590))

(assert (= (or b!909469 b!909467) bm!54589))

(assert (= (or b!909470 bm!54589) bm!54591))

(declare-fun m!1142583 () Bool)

(assert (=> bm!54590 m!1142583))

(declare-fun m!1142585 () Bool)

(assert (=> b!909464 m!1142585))

(declare-fun m!1142587 () Bool)

(assert (=> bm!54591 m!1142587))

(assert (=> start!81760 d!279138))

(declare-fun b!909471 () Bool)

(declare-fun e!593505 () Bool)

(declare-fun call!54599 () Bool)

(assert (=> b!909471 (= e!593505 call!54599)))

(declare-fun b!909472 () Bool)

(declare-fun e!593508 () Bool)

(assert (=> b!909472 (= e!593508 call!54599)))

(declare-fun bm!54592 () Bool)

(declare-fun call!54598 () Bool)

(declare-fun call!54597 () Bool)

(assert (=> bm!54592 (= call!54598 call!54597)))

(declare-fun bm!54593 () Bool)

(declare-fun c!147322 () Bool)

(assert (=> bm!54593 (= call!54599 (validRegex!889 (ite c!147322 (regTwo!5353 (regOne!5352 r!15766)) (regTwo!5352 (regOne!5352 r!15766)))))))

(declare-fun d!279142 () Bool)

(declare-fun res!413576 () Bool)

(declare-fun e!593506 () Bool)

(assert (=> d!279142 (=> res!413576 e!593506)))

(assert (=> d!279142 (= res!413576 (is-ElementMatch!2420 (regOne!5352 r!15766)))))

(assert (=> d!279142 (= (validRegex!889 (regOne!5352 r!15766)) e!593506)))

(declare-fun b!909473 () Bool)

(declare-fun e!593504 () Bool)

(declare-fun e!593503 () Bool)

(assert (=> b!909473 (= e!593504 e!593503)))

(declare-fun res!413578 () Bool)

(assert (=> b!909473 (= res!413578 (not (nullable!653 (reg!2749 (regOne!5352 r!15766)))))))

(assert (=> b!909473 (=> (not res!413578) (not e!593503))))

(declare-fun b!909474 () Bool)

(declare-fun res!413574 () Bool)

(declare-fun e!593507 () Bool)

(assert (=> b!909474 (=> res!413574 e!593507)))

(assert (=> b!909474 (= res!413574 (not (is-Concat!4253 (regOne!5352 r!15766))))))

(declare-fun e!593502 () Bool)

(assert (=> b!909474 (= e!593502 e!593507)))

(declare-fun b!909475 () Bool)

(assert (=> b!909475 (= e!593504 e!593502)))

(assert (=> b!909475 (= c!147322 (is-Union!2420 (regOne!5352 r!15766)))))

(declare-fun b!909476 () Bool)

(assert (=> b!909476 (= e!593507 e!593508)))

(declare-fun res!413577 () Bool)

(assert (=> b!909476 (=> (not res!413577) (not e!593508))))

(assert (=> b!909476 (= res!413577 call!54598)))

(declare-fun b!909477 () Bool)

(assert (=> b!909477 (= e!593506 e!593504)))

(declare-fun c!147323 () Bool)

(assert (=> b!909477 (= c!147323 (is-Star!2420 (regOne!5352 r!15766)))))

(declare-fun b!909478 () Bool)

(declare-fun res!413575 () Bool)

(assert (=> b!909478 (=> (not res!413575) (not e!593505))))

(assert (=> b!909478 (= res!413575 call!54598)))

(assert (=> b!909478 (= e!593502 e!593505)))

(declare-fun bm!54594 () Bool)

(assert (=> bm!54594 (= call!54597 (validRegex!889 (ite c!147323 (reg!2749 (regOne!5352 r!15766)) (ite c!147322 (regOne!5353 (regOne!5352 r!15766)) (regOne!5352 (regOne!5352 r!15766))))))))

(declare-fun b!909479 () Bool)

(assert (=> b!909479 (= e!593503 call!54597)))

(assert (= (and d!279142 (not res!413576)) b!909477))

(assert (= (and b!909477 c!147323) b!909473))

(assert (= (and b!909477 (not c!147323)) b!909475))

(assert (= (and b!909473 res!413578) b!909479))

(assert (= (and b!909475 c!147322) b!909478))

(assert (= (and b!909475 (not c!147322)) b!909474))

(assert (= (and b!909478 res!413575) b!909471))

(assert (= (and b!909474 (not res!413574)) b!909476))

(assert (= (and b!909476 res!413577) b!909472))

(assert (= (or b!909471 b!909472) bm!54593))

(assert (= (or b!909478 b!909476) bm!54592))

(assert (= (or b!909479 bm!54592) bm!54594))

(declare-fun m!1142591 () Bool)

(assert (=> bm!54593 m!1142591))

(declare-fun m!1142593 () Bool)

(assert (=> b!909473 m!1142593))

(declare-fun m!1142595 () Bool)

(assert (=> bm!54594 m!1142595))

(assert (=> b!909254 d!279142))

(declare-fun d!279146 () Bool)

(declare-fun isEmpty!5849 (Option!2057) Bool)

(assert (=> d!279146 (= (isDefined!1699 (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 Nil!9634 s!10566 s!10566)) (not (isEmpty!5849 (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 Nil!9634 s!10566 s!10566))))))

(declare-fun bs!235669 () Bool)

(assert (= bs!235669 d!279146))

(assert (=> bs!235669 m!1142485))

(declare-fun m!1142597 () Bool)

(assert (=> bs!235669 m!1142597))

(assert (=> b!909250 d!279146))

(declare-fun b!909498 () Bool)

(declare-fun e!593520 () Option!2057)

(assert (=> b!909498 (= e!593520 None!2056)))

(declare-fun b!909499 () Bool)

(declare-fun res!413590 () Bool)

(declare-fun e!593522 () Bool)

(assert (=> b!909499 (=> (not res!413590) (not e!593522))))

(declare-fun lt!336348 () Option!2057)

(declare-fun get!3099 (Option!2057) tuple2!10830)

(assert (=> b!909499 (= res!413590 (matchR!958 EmptyExpr!2420 (_2!6241 (get!3099 lt!336348))))))

(declare-fun b!909500 () Bool)

(declare-fun res!413593 () Bool)

(assert (=> b!909500 (=> (not res!413593) (not e!593522))))

(assert (=> b!909500 (= res!413593 (matchR!958 (regOne!5352 r!15766) (_1!6241 (get!3099 lt!336348))))))

(declare-fun b!909501 () Bool)

(declare-fun lt!336350 () Unit!14459)

(declare-fun lt!336349 () Unit!14459)

(assert (=> b!909501 (= lt!336350 lt!336349)))

(assert (=> b!909501 (= (++!2531 (++!2531 Nil!9634 (Cons!9634 (h!15035 s!10566) Nil!9634)) (t!100696 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!148 (List!9650 C!5410 List!9650 List!9650) Unit!14459)

(assert (=> b!909501 (= lt!336349 (lemmaMoveElementToOtherListKeepsConcatEq!148 Nil!9634 (h!15035 s!10566) (t!100696 s!10566) s!10566))))

(assert (=> b!909501 (= e!593520 (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 (++!2531 Nil!9634 (Cons!9634 (h!15035 s!10566) Nil!9634)) (t!100696 s!10566) s!10566))))

(declare-fun b!909502 () Bool)

(assert (=> b!909502 (= e!593522 (= (++!2531 (_1!6241 (get!3099 lt!336348)) (_2!6241 (get!3099 lt!336348))) s!10566))))

(declare-fun b!909503 () Bool)

(declare-fun e!593521 () Bool)

(assert (=> b!909503 (= e!593521 (matchR!958 EmptyExpr!2420 s!10566))))

(declare-fun d!279148 () Bool)

(declare-fun e!593519 () Bool)

(assert (=> d!279148 e!593519))

(declare-fun res!413589 () Bool)

(assert (=> d!279148 (=> res!413589 e!593519)))

(assert (=> d!279148 (= res!413589 e!593522)))

(declare-fun res!413591 () Bool)

(assert (=> d!279148 (=> (not res!413591) (not e!593522))))

(assert (=> d!279148 (= res!413591 (isDefined!1699 lt!336348))))

(declare-fun e!593523 () Option!2057)

(assert (=> d!279148 (= lt!336348 e!593523)))

(declare-fun c!147329 () Bool)

(assert (=> d!279148 (= c!147329 e!593521)))

(declare-fun res!413592 () Bool)

(assert (=> d!279148 (=> (not res!413592) (not e!593521))))

(assert (=> d!279148 (= res!413592 (matchR!958 (regOne!5352 r!15766) Nil!9634))))

(assert (=> d!279148 (validRegex!889 (regOne!5352 r!15766))))

(assert (=> d!279148 (= (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 Nil!9634 s!10566 s!10566) lt!336348)))

(declare-fun b!909504 () Bool)

(assert (=> b!909504 (= e!593519 (not (isDefined!1699 lt!336348)))))

(declare-fun b!909505 () Bool)

(assert (=> b!909505 (= e!593523 (Some!2056 (tuple2!10831 Nil!9634 s!10566)))))

(declare-fun b!909506 () Bool)

(assert (=> b!909506 (= e!593523 e!593520)))

(declare-fun c!147328 () Bool)

(assert (=> b!909506 (= c!147328 (is-Nil!9634 s!10566))))

(assert (= (and d!279148 res!413592) b!909503))

(assert (= (and d!279148 c!147329) b!909505))

(assert (= (and d!279148 (not c!147329)) b!909506))

(assert (= (and b!909506 c!147328) b!909498))

(assert (= (and b!909506 (not c!147328)) b!909501))

(assert (= (and d!279148 res!413591) b!909500))

(assert (= (and b!909500 res!413593) b!909499))

(assert (= (and b!909499 res!413590) b!909502))

(assert (= (and d!279148 (not res!413589)) b!909504))

(declare-fun m!1142599 () Bool)

(assert (=> b!909504 m!1142599))

(declare-fun m!1142601 () Bool)

(assert (=> b!909499 m!1142601))

(declare-fun m!1142603 () Bool)

(assert (=> b!909499 m!1142603))

(assert (=> d!279148 m!1142599))

(declare-fun m!1142605 () Bool)

(assert (=> d!279148 m!1142605))

(assert (=> d!279148 m!1142499))

(assert (=> b!909502 m!1142601))

(declare-fun m!1142607 () Bool)

(assert (=> b!909502 m!1142607))

(assert (=> b!909500 m!1142601))

(declare-fun m!1142609 () Bool)

(assert (=> b!909500 m!1142609))

(declare-fun m!1142611 () Bool)

(assert (=> b!909503 m!1142611))

(declare-fun m!1142613 () Bool)

(assert (=> b!909501 m!1142613))

(assert (=> b!909501 m!1142613))

(declare-fun m!1142615 () Bool)

(assert (=> b!909501 m!1142615))

(declare-fun m!1142617 () Bool)

(assert (=> b!909501 m!1142617))

(assert (=> b!909501 m!1142613))

(declare-fun m!1142619 () Bool)

(assert (=> b!909501 m!1142619))

(assert (=> b!909250 d!279148))

(declare-fun d!279150 () Bool)

(assert (=> d!279150 (= (isEmpty!5847 s!10566) (is-Nil!9634 s!10566))))

(assert (=> b!909250 d!279150))

(declare-fun bs!235670 () Bool)

(declare-fun d!279152 () Bool)

(assert (= bs!235670 (and d!279152 b!909250)))

(declare-fun lambda!28901 () Int)

(assert (=> bs!235670 (= lambda!28901 lambda!28883)))

(assert (=> bs!235670 (not (= lambda!28901 lambda!28884))))

(declare-fun bs!235671 () Bool)

(assert (= bs!235671 (and d!279152 b!909344)))

(assert (=> bs!235671 (not (= lambda!28901 lambda!28897))))

(declare-fun bs!235672 () Bool)

(assert (= bs!235672 (and d!279152 b!909348)))

(assert (=> bs!235672 (not (= lambda!28901 lambda!28898))))

(assert (=> d!279152 true))

(assert (=> d!279152 true))

(assert (=> d!279152 true))

(assert (=> d!279152 (= (isDefined!1699 (findConcatSeparation!163 (regOne!5352 r!15766) EmptyExpr!2420 Nil!9634 s!10566 s!10566)) (Exists!193 lambda!28901))))

(declare-fun lt!336359 () Unit!14459)

(declare-fun choose!5517 (Regex!2420 Regex!2420 List!9650) Unit!14459)

(assert (=> d!279152 (= lt!336359 (choose!5517 (regOne!5352 r!15766) EmptyExpr!2420 s!10566))))

(assert (=> d!279152 (validRegex!889 (regOne!5352 r!15766))))

(assert (=> d!279152 (= (lemmaFindConcatSeparationEquivalentToExists!163 (regOne!5352 r!15766) EmptyExpr!2420 s!10566) lt!336359)))

(declare-fun bs!235673 () Bool)

(assert (= bs!235673 d!279152))

(declare-fun m!1142621 () Bool)

(assert (=> bs!235673 m!1142621))

(assert (=> bs!235673 m!1142485))

(assert (=> bs!235673 m!1142499))

(assert (=> bs!235673 m!1142485))

(assert (=> bs!235673 m!1142489))

(declare-fun m!1142623 () Bool)

(assert (=> bs!235673 m!1142623))

(assert (=> b!909250 d!279152))

(declare-fun bs!235674 () Bool)

(declare-fun d!279154 () Bool)

(assert (= bs!235674 (and d!279154 b!909250)))

(declare-fun lambda!28906 () Int)

(assert (=> bs!235674 (not (= lambda!28906 lambda!28884))))

(assert (=> bs!235674 (= lambda!28906 lambda!28883)))

(declare-fun bs!235675 () Bool)

(assert (= bs!235675 (and d!279154 d!279152)))

(assert (=> bs!235675 (= lambda!28906 lambda!28901)))

(declare-fun bs!235676 () Bool)

(assert (= bs!235676 (and d!279154 b!909348)))

(assert (=> bs!235676 (not (= lambda!28906 lambda!28898))))

(declare-fun bs!235677 () Bool)

(assert (= bs!235677 (and d!279154 b!909344)))

(assert (=> bs!235677 (not (= lambda!28906 lambda!28897))))

(assert (=> d!279154 true))

(assert (=> d!279154 true))

(assert (=> d!279154 true))

(declare-fun lambda!28907 () Int)

(assert (=> bs!235674 (= lambda!28907 lambda!28884)))

(assert (=> bs!235674 (not (= lambda!28907 lambda!28883))))

(assert (=> bs!235675 (not (= lambda!28907 lambda!28901))))

(declare-fun bs!235678 () Bool)

(assert (= bs!235678 d!279154))

(assert (=> bs!235678 (not (= lambda!28907 lambda!28906))))

(assert (=> bs!235676 (= (= EmptyExpr!2420 (regTwo!5352 r!15766)) (= lambda!28907 lambda!28898))))

(assert (=> bs!235677 (not (= lambda!28907 lambda!28897))))

(assert (=> d!279154 true))

(assert (=> d!279154 true))

(assert (=> d!279154 true))

(assert (=> d!279154 (= (Exists!193 lambda!28906) (Exists!193 lambda!28907))))

(declare-fun lt!336365 () Unit!14459)

(declare-fun choose!5518 (Regex!2420 Regex!2420 List!9650) Unit!14459)

(assert (=> d!279154 (= lt!336365 (choose!5518 (regOne!5352 r!15766) EmptyExpr!2420 s!10566))))

(assert (=> d!279154 (validRegex!889 (regOne!5352 r!15766))))

(assert (=> d!279154 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!107 (regOne!5352 r!15766) EmptyExpr!2420 s!10566) lt!336365)))

(declare-fun m!1142647 () Bool)

(assert (=> bs!235678 m!1142647))

(declare-fun m!1142649 () Bool)

(assert (=> bs!235678 m!1142649))

(declare-fun m!1142651 () Bool)

(assert (=> bs!235678 m!1142651))

(assert (=> bs!235678 m!1142499))

(assert (=> b!909250 d!279154))

(declare-fun d!279160 () Bool)

(declare-fun choose!5519 (Int) Bool)

(assert (=> d!279160 (= (Exists!193 lambda!28883) (choose!5519 lambda!28883))))

(declare-fun bs!235679 () Bool)

(assert (= bs!235679 d!279160))

(declare-fun m!1142653 () Bool)

(assert (=> bs!235679 m!1142653))

(assert (=> b!909250 d!279160))

(declare-fun d!279162 () Bool)

(assert (=> d!279162 (= (Exists!193 lambda!28884) (choose!5519 lambda!28884))))

(declare-fun bs!235680 () Bool)

(assert (= bs!235680 d!279162))

(declare-fun m!1142655 () Bool)

(assert (=> bs!235680 m!1142655))

(assert (=> b!909250 d!279162))

(declare-fun b!909556 () Bool)

(declare-fun e!593547 () Bool)

(assert (=> b!909556 (= e!593547 tp_is_empty!4483)))

(assert (=> b!909257 (= tp!284504 e!593547)))

(declare-fun b!909559 () Bool)

(declare-fun tp!284536 () Bool)

(declare-fun tp!284537 () Bool)

(assert (=> b!909559 (= e!593547 (and tp!284536 tp!284537))))

(declare-fun b!909557 () Bool)

(declare-fun tp!284538 () Bool)

(declare-fun tp!284535 () Bool)

(assert (=> b!909557 (= e!593547 (and tp!284538 tp!284535))))

(declare-fun b!909558 () Bool)

(declare-fun tp!284539 () Bool)

(assert (=> b!909558 (= e!593547 tp!284539)))

(assert (= (and b!909257 (is-ElementMatch!2420 (regOne!5353 r!15766))) b!909556))

(assert (= (and b!909257 (is-Concat!4253 (regOne!5353 r!15766))) b!909557))

(assert (= (and b!909257 (is-Star!2420 (regOne!5353 r!15766))) b!909558))

(assert (= (and b!909257 (is-Union!2420 (regOne!5353 r!15766))) b!909559))

(declare-fun b!909560 () Bool)

(declare-fun e!593548 () Bool)

(assert (=> b!909560 (= e!593548 tp_is_empty!4483)))

(assert (=> b!909257 (= tp!284502 e!593548)))

(declare-fun b!909563 () Bool)

(declare-fun tp!284541 () Bool)

(declare-fun tp!284542 () Bool)

(assert (=> b!909563 (= e!593548 (and tp!284541 tp!284542))))

(declare-fun b!909561 () Bool)

(declare-fun tp!284543 () Bool)

(declare-fun tp!284540 () Bool)

(assert (=> b!909561 (= e!593548 (and tp!284543 tp!284540))))

(declare-fun b!909562 () Bool)

(declare-fun tp!284544 () Bool)

(assert (=> b!909562 (= e!593548 tp!284544)))

(assert (= (and b!909257 (is-ElementMatch!2420 (regTwo!5353 r!15766))) b!909560))

(assert (= (and b!909257 (is-Concat!4253 (regTwo!5353 r!15766))) b!909561))

(assert (= (and b!909257 (is-Star!2420 (regTwo!5353 r!15766))) b!909562))

(assert (= (and b!909257 (is-Union!2420 (regTwo!5353 r!15766))) b!909563))

(declare-fun b!909568 () Bool)

(declare-fun e!593551 () Bool)

(declare-fun tp!284547 () Bool)

(assert (=> b!909568 (= e!593551 (and tp_is_empty!4483 tp!284547))))

(assert (=> b!909252 (= tp!284506 e!593551)))

(assert (= (and b!909252 (is-Cons!9634 (t!100696 s!10566))) b!909568))

(declare-fun b!909569 () Bool)

(declare-fun e!593552 () Bool)

(assert (=> b!909569 (= e!593552 tp_is_empty!4483)))

(assert (=> b!909248 (= tp!284501 e!593552)))

(declare-fun b!909572 () Bool)

(declare-fun tp!284549 () Bool)

(declare-fun tp!284550 () Bool)

(assert (=> b!909572 (= e!593552 (and tp!284549 tp!284550))))

(declare-fun b!909570 () Bool)

(declare-fun tp!284551 () Bool)

(declare-fun tp!284548 () Bool)

(assert (=> b!909570 (= e!593552 (and tp!284551 tp!284548))))

(declare-fun b!909571 () Bool)

(declare-fun tp!284552 () Bool)

(assert (=> b!909571 (= e!593552 tp!284552)))

(assert (= (and b!909248 (is-ElementMatch!2420 (reg!2749 r!15766))) b!909569))

(assert (= (and b!909248 (is-Concat!4253 (reg!2749 r!15766))) b!909570))

(assert (= (and b!909248 (is-Star!2420 (reg!2749 r!15766))) b!909571))

(assert (= (and b!909248 (is-Union!2420 (reg!2749 r!15766))) b!909572))

(declare-fun b!909573 () Bool)

(declare-fun e!593553 () Bool)

(assert (=> b!909573 (= e!593553 tp_is_empty!4483)))

(assert (=> b!909249 (= tp!284503 e!593553)))

(declare-fun b!909576 () Bool)

(declare-fun tp!284554 () Bool)

(declare-fun tp!284555 () Bool)

(assert (=> b!909576 (= e!593553 (and tp!284554 tp!284555))))

(declare-fun b!909574 () Bool)

(declare-fun tp!284556 () Bool)

(declare-fun tp!284553 () Bool)

(assert (=> b!909574 (= e!593553 (and tp!284556 tp!284553))))

(declare-fun b!909575 () Bool)

(declare-fun tp!284557 () Bool)

(assert (=> b!909575 (= e!593553 tp!284557)))

(assert (= (and b!909249 (is-ElementMatch!2420 (regOne!5352 r!15766))) b!909573))

(assert (= (and b!909249 (is-Concat!4253 (regOne!5352 r!15766))) b!909574))

(assert (= (and b!909249 (is-Star!2420 (regOne!5352 r!15766))) b!909575))

(assert (= (and b!909249 (is-Union!2420 (regOne!5352 r!15766))) b!909576))

(declare-fun b!909577 () Bool)

(declare-fun e!593554 () Bool)

(assert (=> b!909577 (= e!593554 tp_is_empty!4483)))

(assert (=> b!909249 (= tp!284505 e!593554)))

(declare-fun b!909580 () Bool)

(declare-fun tp!284559 () Bool)

(declare-fun tp!284560 () Bool)

(assert (=> b!909580 (= e!593554 (and tp!284559 tp!284560))))

(declare-fun b!909578 () Bool)

(declare-fun tp!284561 () Bool)

(declare-fun tp!284558 () Bool)

(assert (=> b!909578 (= e!593554 (and tp!284561 tp!284558))))

(declare-fun b!909579 () Bool)

(declare-fun tp!284562 () Bool)

(assert (=> b!909579 (= e!593554 tp!284562)))

(assert (= (and b!909249 (is-ElementMatch!2420 (regTwo!5352 r!15766))) b!909577))

(assert (= (and b!909249 (is-Concat!4253 (regTwo!5352 r!15766))) b!909578))

(assert (= (and b!909249 (is-Star!2420 (regTwo!5352 r!15766))) b!909579))

(assert (= (and b!909249 (is-Union!2420 (regTwo!5352 r!15766))) b!909580))

(push 1)

(assert (not b!909570))

(assert (not b!909568))

(assert (not bm!54579))

(assert (not b!909402))

(assert (not d!279136))

(assert (not d!279152))

(assert (not b!909464))

(assert (not b!909502))

(assert (not b!909504))

(assert (not d!279160))

(assert (not b!909557))

(assert (not b!909401))

(assert tp_is_empty!4483)

(assert (not b!909558))

(assert (not b!909500))

(assert (not b!909580))

(assert (not d!279148))

(assert (not b!909499))

(assert (not b!909562))

(assert (not bm!54590))

(assert (not b!909561))

(assert (not b!909399))

(assert (not bm!54570))

(assert (not b!909579))

(assert (not b!909397))

(assert (not d!279132))

(assert (not b!909409))

(assert (not b!909433))

(assert (not bm!54594))

(assert (not b!909578))

(assert (not d!279130))

(assert (not d!279146))

(assert (not b!909575))

(assert (not b!909404))

(assert (not d!279162))

(assert (not b!909571))

(assert (not b!909473))

(assert (not b!909347))

(assert (not b!909574))

(assert (not b!909576))

(assert (not b!909503))

(assert (not b!909563))

(assert (not b!909346))

(assert (not b!909501))

(assert (not d!279154))

(assert (not b!909572))

(assert (not bm!54591))

(assert (not bm!54569))

(assert (not b!909434))

(assert (not b!909559))

(assert (not bm!54593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

