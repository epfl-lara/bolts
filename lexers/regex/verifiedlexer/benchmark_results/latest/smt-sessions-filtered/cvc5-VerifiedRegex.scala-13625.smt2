; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731414 () Bool)

(assert start!731414)

(declare-fun b!7574565 () Bool)

(assert (=> b!7574565 true))

(assert (=> b!7574565 true))

(declare-fun lambda!466579 () Int)

(declare-fun lambda!466578 () Int)

(assert (=> b!7574565 (not (= lambda!466579 lambda!466578))))

(assert (=> b!7574565 true))

(assert (=> b!7574565 true))

(declare-fun b!7574558 () Bool)

(declare-fun res!3034367 () Bool)

(declare-fun e!4509014 () Bool)

(assert (=> b!7574558 (=> (not res!3034367) (not e!4509014))))

(declare-datatypes ((C!40414 0))(
  ( (C!40415 (val!30647 Int)) )
))
(declare-datatypes ((List!72927 0))(
  ( (Nil!72803) (Cons!72803 (h!79251 C!40414) (t!387662 List!72927)) )
))
(declare-fun s!13436 () List!72927)

(declare-fun isEmpty!41464 (List!72927) Bool)

(assert (=> b!7574558 (= res!3034367 (not (isEmpty!41464 s!13436)))))

(declare-fun b!7574559 () Bool)

(declare-fun e!4509016 () Bool)

(assert (=> b!7574559 (= e!4509014 (not e!4509016))))

(declare-fun res!3034366 () Bool)

(assert (=> b!7574559 (=> res!3034366 e!4509016)))

(declare-datatypes ((Regex!20044 0))(
  ( (ElementMatch!20044 (c!1397349 C!40414)) (Concat!28889 (regOne!40600 Regex!20044) (regTwo!40600 Regex!20044)) (EmptyExpr!20044) (Star!20044 (reg!20373 Regex!20044)) (EmptyLang!20044) (Union!20044 (regOne!40601 Regex!20044) (regTwo!40601 Regex!20044)) )
))
(declare-fun r!22341 () Regex!20044)

(declare-fun lt!2651830 () Bool)

(assert (=> b!7574559 (= res!3034366 (or (is-EmptyLang!20044 r!22341) (is-EmptyExpr!20044 r!22341) (is-ElementMatch!20044 r!22341) (is-Union!20044 r!22341) (is-Star!20044 r!22341) (not lt!2651830)))))

(declare-fun matchRSpec!4363 (Regex!20044 List!72927) Bool)

(assert (=> b!7574559 (= lt!2651830 (matchRSpec!4363 r!22341 s!13436))))

(declare-fun matchR!9640 (Regex!20044 List!72927) Bool)

(assert (=> b!7574559 (= lt!2651830 (matchR!9640 r!22341 s!13436))))

(declare-datatypes ((Unit!167044 0))(
  ( (Unit!167045) )
))
(declare-fun lt!2651832 () Unit!167044)

(declare-fun mainMatchTheorem!4357 (Regex!20044 List!72927) Unit!167044)

(assert (=> b!7574559 (= lt!2651832 (mainMatchTheorem!4357 r!22341 s!13436))))

(declare-fun b!7574560 () Bool)

(declare-fun res!3034365 () Bool)

(declare-fun e!4509017 () Bool)

(assert (=> b!7574560 (=> res!3034365 e!4509017)))

(declare-fun validRegex!10472 (Regex!20044) Bool)

(assert (=> b!7574560 (= res!3034365 (not (validRegex!10472 (regTwo!40600 r!22341))))))

(declare-fun b!7574561 () Bool)

(declare-fun e!4509018 () Bool)

(declare-fun tp_is_empty!50443 () Bool)

(declare-fun tp!2207206 () Bool)

(assert (=> b!7574561 (= e!4509018 (and tp_is_empty!50443 tp!2207206))))

(declare-fun b!7574562 () Bool)

(declare-fun e!4509015 () Bool)

(assert (=> b!7574562 (= e!4509015 tp_is_empty!50443)))

(declare-fun b!7574564 () Bool)

(declare-fun ++!17498 (List!72927 List!72927) List!72927)

(assert (=> b!7574564 (= e!4509017 (= (++!17498 Nil!72803 s!13436) s!13436))))

(assert (=> b!7574565 (= e!4509016 e!4509017)))

(declare-fun res!3034369 () Bool)

(assert (=> b!7574565 (=> res!3034369 e!4509017)))

(assert (=> b!7574565 (= res!3034369 (not (validRegex!10472 (regOne!40600 r!22341))))))

(declare-fun Exists!4287 (Int) Bool)

(assert (=> b!7574565 (= (Exists!4287 lambda!466578) (Exists!4287 lambda!466579))))

(declare-fun lt!2651829 () Unit!167044)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2605 (Regex!20044 Regex!20044 List!72927) Unit!167044)

(assert (=> b!7574565 (= lt!2651829 (lemmaExistCutMatchRandMatchRSpecEquivalent!2605 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436))))

(declare-datatypes ((tuple2!68882 0))(
  ( (tuple2!68883 (_1!37744 List!72927) (_2!37744 List!72927)) )
))
(declare-datatypes ((Option!17277 0))(
  ( (None!17276) (Some!17276 (v!54411 tuple2!68882)) )
))
(declare-fun isDefined!13923 (Option!17277) Bool)

(declare-fun findConcatSeparation!3337 (Regex!20044 Regex!20044 List!72927 List!72927 List!72927) Option!17277)

(assert (=> b!7574565 (= (isDefined!13923 (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) Nil!72803 s!13436 s!13436)) (Exists!4287 lambda!466578))))

(declare-fun lt!2651831 () Unit!167044)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3095 (Regex!20044 Regex!20044 List!72927) Unit!167044)

(assert (=> b!7574565 (= lt!2651831 (lemmaFindConcatSeparationEquivalentToExists!3095 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436))))

(declare-fun b!7574566 () Bool)

(declare-fun res!3034370 () Bool)

(assert (=> b!7574566 (=> (not res!3034370) (not e!4509014))))

(declare-fun lostCause!1820 (Regex!20044) Bool)

(assert (=> b!7574566 (= res!3034370 (lostCause!1820 r!22341))))

(declare-fun b!7574567 () Bool)

(declare-fun tp!2207209 () Bool)

(assert (=> b!7574567 (= e!4509015 tp!2207209)))

(declare-fun b!7574568 () Bool)

(declare-fun tp!2207208 () Bool)

(declare-fun tp!2207207 () Bool)

(assert (=> b!7574568 (= e!4509015 (and tp!2207208 tp!2207207))))

(declare-fun b!7574563 () Bool)

(declare-fun tp!2207210 () Bool)

(declare-fun tp!2207211 () Bool)

(assert (=> b!7574563 (= e!4509015 (and tp!2207210 tp!2207211))))

(declare-fun res!3034368 () Bool)

(assert (=> start!731414 (=> (not res!3034368) (not e!4509014))))

(assert (=> start!731414 (= res!3034368 (validRegex!10472 r!22341))))

(assert (=> start!731414 e!4509014))

(assert (=> start!731414 e!4509015))

(assert (=> start!731414 e!4509018))

(assert (= (and start!731414 res!3034368) b!7574566))

(assert (= (and b!7574566 res!3034370) b!7574558))

(assert (= (and b!7574558 res!3034367) b!7574559))

(assert (= (and b!7574559 (not res!3034366)) b!7574565))

(assert (= (and b!7574565 (not res!3034369)) b!7574560))

(assert (= (and b!7574560 (not res!3034365)) b!7574564))

(assert (= (and start!731414 (is-ElementMatch!20044 r!22341)) b!7574562))

(assert (= (and start!731414 (is-Concat!28889 r!22341)) b!7574568))

(assert (= (and start!731414 (is-Star!20044 r!22341)) b!7574567))

(assert (= (and start!731414 (is-Union!20044 r!22341)) b!7574563))

(assert (= (and start!731414 (is-Cons!72803 s!13436)) b!7574561))

(declare-fun m!8133414 () Bool)

(assert (=> b!7574565 m!8133414))

(declare-fun m!8133416 () Bool)

(assert (=> b!7574565 m!8133416))

(assert (=> b!7574565 m!8133414))

(declare-fun m!8133418 () Bool)

(assert (=> b!7574565 m!8133418))

(declare-fun m!8133420 () Bool)

(assert (=> b!7574565 m!8133420))

(assert (=> b!7574565 m!8133418))

(declare-fun m!8133422 () Bool)

(assert (=> b!7574565 m!8133422))

(declare-fun m!8133424 () Bool)

(assert (=> b!7574565 m!8133424))

(declare-fun m!8133426 () Bool)

(assert (=> b!7574565 m!8133426))

(declare-fun m!8133428 () Bool)

(assert (=> b!7574558 m!8133428))

(declare-fun m!8133430 () Bool)

(assert (=> b!7574559 m!8133430))

(declare-fun m!8133432 () Bool)

(assert (=> b!7574559 m!8133432))

(declare-fun m!8133434 () Bool)

(assert (=> b!7574559 m!8133434))

(declare-fun m!8133436 () Bool)

(assert (=> b!7574564 m!8133436))

(declare-fun m!8133438 () Bool)

(assert (=> b!7574560 m!8133438))

(declare-fun m!8133440 () Bool)

(assert (=> start!731414 m!8133440))

(declare-fun m!8133442 () Bool)

(assert (=> b!7574566 m!8133442))

(push 1)

(assert (not b!7574567))

(assert (not b!7574558))

(assert (not start!731414))

(assert (not b!7574559))

(assert (not b!7574564))

(assert (not b!7574568))

(assert (not b!7574566))

(assert (not b!7574561))

(assert (not b!7574565))

(assert tp_is_empty!50443)

(assert (not b!7574560))

(assert (not b!7574563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2317818 () Bool)

(declare-fun lostCauseFct!487 (Regex!20044) Bool)

(assert (=> d!2317818 (= (lostCause!1820 r!22341) (lostCauseFct!487 r!22341))))

(declare-fun bs!1940725 () Bool)

(assert (= bs!1940725 d!2317818))

(declare-fun m!8133474 () Bool)

(assert (=> bs!1940725 m!8133474))

(assert (=> b!7574566 d!2317818))

(declare-fun bs!1940726 () Bool)

(declare-fun b!7574659 () Bool)

(assert (= bs!1940726 (and b!7574659 b!7574565)))

(declare-fun lambda!466592 () Int)

(assert (=> bs!1940726 (not (= lambda!466592 lambda!466578))))

(assert (=> bs!1940726 (not (= lambda!466592 lambda!466579))))

(assert (=> b!7574659 true))

(assert (=> b!7574659 true))

(declare-fun bs!1940727 () Bool)

(declare-fun b!7574658 () Bool)

(assert (= bs!1940727 (and b!7574658 b!7574565)))

(declare-fun lambda!466593 () Int)

(assert (=> bs!1940727 (not (= lambda!466593 lambda!466578))))

(assert (=> bs!1940727 (= lambda!466593 lambda!466579)))

(declare-fun bs!1940728 () Bool)

(assert (= bs!1940728 (and b!7574658 b!7574659)))

(assert (=> bs!1940728 (not (= lambda!466593 lambda!466592))))

(assert (=> b!7574658 true))

(assert (=> b!7574658 true))

(declare-fun d!2317820 () Bool)

(declare-fun c!1397359 () Bool)

(assert (=> d!2317820 (= c!1397359 (is-EmptyExpr!20044 r!22341))))

(declare-fun e!4509061 () Bool)

(assert (=> d!2317820 (= (matchRSpec!4363 r!22341 s!13436) e!4509061)))

(declare-fun b!7574654 () Bool)

(declare-fun e!4509059 () Bool)

(assert (=> b!7574654 (= e!4509059 (matchRSpec!4363 (regTwo!40601 r!22341) s!13436))))

(declare-fun b!7574655 () Bool)

(declare-fun e!4509058 () Bool)

(declare-fun e!4509064 () Bool)

(assert (=> b!7574655 (= e!4509058 e!4509064)))

(declare-fun c!1397361 () Bool)

(assert (=> b!7574655 (= c!1397361 (is-Star!20044 r!22341))))

(declare-fun b!7574656 () Bool)

(declare-fun e!4509060 () Bool)

(assert (=> b!7574656 (= e!4509061 e!4509060)))

(declare-fun res!3034418 () Bool)

(assert (=> b!7574656 (= res!3034418 (not (is-EmptyLang!20044 r!22341)))))

(assert (=> b!7574656 (=> (not res!3034418) (not e!4509060))))

(declare-fun b!7574657 () Bool)

(declare-fun e!4509063 () Bool)

(assert (=> b!7574657 (= e!4509063 (= s!13436 (Cons!72803 (c!1397349 r!22341) Nil!72803)))))

(declare-fun call!694390 () Bool)

(assert (=> b!7574658 (= e!4509064 call!694390)))

(declare-fun bm!694384 () Bool)

(assert (=> bm!694384 (= call!694390 (Exists!4287 (ite c!1397361 lambda!466592 lambda!466593)))))

(declare-fun e!4509062 () Bool)

(assert (=> b!7574659 (= e!4509062 call!694390)))

(declare-fun b!7574660 () Bool)

(declare-fun c!1397360 () Bool)

(assert (=> b!7574660 (= c!1397360 (is-Union!20044 r!22341))))

(assert (=> b!7574660 (= e!4509063 e!4509058)))

(declare-fun b!7574661 () Bool)

(declare-fun res!3034417 () Bool)

(assert (=> b!7574661 (=> res!3034417 e!4509062)))

(declare-fun call!694389 () Bool)

(assert (=> b!7574661 (= res!3034417 call!694389)))

(assert (=> b!7574661 (= e!4509064 e!4509062)))

(declare-fun b!7574662 () Bool)

(declare-fun c!1397362 () Bool)

(assert (=> b!7574662 (= c!1397362 (is-ElementMatch!20044 r!22341))))

(assert (=> b!7574662 (= e!4509060 e!4509063)))

(declare-fun bm!694385 () Bool)

(assert (=> bm!694385 (= call!694389 (isEmpty!41464 s!13436))))

(declare-fun b!7574663 () Bool)

(assert (=> b!7574663 (= e!4509061 call!694389)))

(declare-fun b!7574664 () Bool)

(assert (=> b!7574664 (= e!4509058 e!4509059)))

(declare-fun res!3034419 () Bool)

(assert (=> b!7574664 (= res!3034419 (matchRSpec!4363 (regOne!40601 r!22341) s!13436))))

(assert (=> b!7574664 (=> res!3034419 e!4509059)))

(assert (= (and d!2317820 c!1397359) b!7574663))

(assert (= (and d!2317820 (not c!1397359)) b!7574656))

(assert (= (and b!7574656 res!3034418) b!7574662))

(assert (= (and b!7574662 c!1397362) b!7574657))

(assert (= (and b!7574662 (not c!1397362)) b!7574660))

(assert (= (and b!7574660 c!1397360) b!7574664))

(assert (= (and b!7574660 (not c!1397360)) b!7574655))

(assert (= (and b!7574664 (not res!3034419)) b!7574654))

(assert (= (and b!7574655 c!1397361) b!7574661))

(assert (= (and b!7574655 (not c!1397361)) b!7574658))

(assert (= (and b!7574661 (not res!3034417)) b!7574659))

(assert (= (or b!7574659 b!7574658) bm!694384))

(assert (= (or b!7574663 b!7574661) bm!694385))

(declare-fun m!8133476 () Bool)

(assert (=> b!7574654 m!8133476))

(declare-fun m!8133478 () Bool)

(assert (=> bm!694384 m!8133478))

(assert (=> bm!694385 m!8133428))

(declare-fun m!8133480 () Bool)

(assert (=> b!7574664 m!8133480))

(assert (=> b!7574559 d!2317820))

(declare-fun d!2317824 () Bool)

(declare-fun e!4509100 () Bool)

(assert (=> d!2317824 e!4509100))

(declare-fun c!1397376 () Bool)

(assert (=> d!2317824 (= c!1397376 (is-EmptyExpr!20044 r!22341))))

(declare-fun lt!2651847 () Bool)

(declare-fun e!4509101 () Bool)

(assert (=> d!2317824 (= lt!2651847 e!4509101)))

(declare-fun c!1397375 () Bool)

(assert (=> d!2317824 (= c!1397375 (isEmpty!41464 s!13436))))

(assert (=> d!2317824 (validRegex!10472 r!22341)))

(assert (=> d!2317824 (= (matchR!9640 r!22341 s!13436) lt!2651847)))

(declare-fun b!7574720 () Bool)

(declare-fun e!4509104 () Bool)

(declare-fun head!15580 (List!72927) C!40414)

(assert (=> b!7574720 (= e!4509104 (= (head!15580 s!13436) (c!1397349 r!22341)))))

(declare-fun b!7574721 () Bool)

(declare-fun res!3034451 () Bool)

(assert (=> b!7574721 (=> (not res!3034451) (not e!4509104))))

(declare-fun tail!15120 (List!72927) List!72927)

(assert (=> b!7574721 (= res!3034451 (isEmpty!41464 (tail!15120 s!13436)))))

(declare-fun b!7574722 () Bool)

(declare-fun res!3034455 () Bool)

(assert (=> b!7574722 (=> (not res!3034455) (not e!4509104))))

(declare-fun call!694402 () Bool)

(assert (=> b!7574722 (= res!3034455 (not call!694402))))

(declare-fun b!7574723 () Bool)

(declare-fun e!4509102 () Bool)

(assert (=> b!7574723 (= e!4509102 (not (= (head!15580 s!13436) (c!1397349 r!22341))))))

(declare-fun b!7574724 () Bool)

(declare-fun res!3034457 () Bool)

(declare-fun e!4509103 () Bool)

(assert (=> b!7574724 (=> res!3034457 e!4509103)))

(assert (=> b!7574724 (= res!3034457 (not (is-ElementMatch!20044 r!22341)))))

(declare-fun e!4509105 () Bool)

(assert (=> b!7574724 (= e!4509105 e!4509103)))

(declare-fun b!7574725 () Bool)

(declare-fun res!3034453 () Bool)

(assert (=> b!7574725 (=> res!3034453 e!4509102)))

(assert (=> b!7574725 (= res!3034453 (not (isEmpty!41464 (tail!15120 s!13436))))))

(declare-fun b!7574726 () Bool)

(assert (=> b!7574726 (= e!4509100 (= lt!2651847 call!694402))))

(declare-fun b!7574727 () Bool)

(declare-fun e!4509106 () Bool)

(assert (=> b!7574727 (= e!4509103 e!4509106)))

(declare-fun res!3034454 () Bool)

(assert (=> b!7574727 (=> (not res!3034454) (not e!4509106))))

(assert (=> b!7574727 (= res!3034454 (not lt!2651847))))

(declare-fun b!7574728 () Bool)

(declare-fun res!3034458 () Bool)

(assert (=> b!7574728 (=> res!3034458 e!4509103)))

(assert (=> b!7574728 (= res!3034458 e!4509104)))

(declare-fun res!3034452 () Bool)

(assert (=> b!7574728 (=> (not res!3034452) (not e!4509104))))

(assert (=> b!7574728 (= res!3034452 lt!2651847)))

(declare-fun b!7574729 () Bool)

(assert (=> b!7574729 (= e!4509105 (not lt!2651847))))

(declare-fun b!7574730 () Bool)

(assert (=> b!7574730 (= e!4509106 e!4509102)))

(declare-fun res!3034456 () Bool)

(assert (=> b!7574730 (=> res!3034456 e!4509102)))

(assert (=> b!7574730 (= res!3034456 call!694402)))

(declare-fun b!7574731 () Bool)

(assert (=> b!7574731 (= e!4509100 e!4509105)))

(declare-fun c!1397377 () Bool)

(assert (=> b!7574731 (= c!1397377 (is-EmptyLang!20044 r!22341))))

(declare-fun b!7574732 () Bool)

(declare-fun nullable!8748 (Regex!20044) Bool)

(assert (=> b!7574732 (= e!4509101 (nullable!8748 r!22341))))

(declare-fun b!7574733 () Bool)

(declare-fun derivativeStep!5780 (Regex!20044 C!40414) Regex!20044)

(assert (=> b!7574733 (= e!4509101 (matchR!9640 (derivativeStep!5780 r!22341 (head!15580 s!13436)) (tail!15120 s!13436)))))

(declare-fun bm!694397 () Bool)

(assert (=> bm!694397 (= call!694402 (isEmpty!41464 s!13436))))

(assert (= (and d!2317824 c!1397375) b!7574732))

(assert (= (and d!2317824 (not c!1397375)) b!7574733))

(assert (= (and d!2317824 c!1397376) b!7574726))

(assert (= (and d!2317824 (not c!1397376)) b!7574731))

(assert (= (and b!7574731 c!1397377) b!7574729))

(assert (= (and b!7574731 (not c!1397377)) b!7574724))

(assert (= (and b!7574724 (not res!3034457)) b!7574728))

(assert (= (and b!7574728 res!3034452) b!7574722))

(assert (= (and b!7574722 res!3034455) b!7574721))

(assert (= (and b!7574721 res!3034451) b!7574720))

(assert (= (and b!7574728 (not res!3034458)) b!7574727))

(assert (= (and b!7574727 res!3034454) b!7574730))

(assert (= (and b!7574730 (not res!3034456)) b!7574725))

(assert (= (and b!7574725 (not res!3034453)) b!7574723))

(assert (= (or b!7574726 b!7574722 b!7574730) bm!694397))

(assert (=> bm!694397 m!8133428))

(declare-fun m!8133482 () Bool)

(assert (=> b!7574721 m!8133482))

(assert (=> b!7574721 m!8133482))

(declare-fun m!8133484 () Bool)

(assert (=> b!7574721 m!8133484))

(declare-fun m!8133486 () Bool)

(assert (=> b!7574732 m!8133486))

(assert (=> d!2317824 m!8133428))

(assert (=> d!2317824 m!8133440))

(declare-fun m!8133488 () Bool)

(assert (=> b!7574723 m!8133488))

(assert (=> b!7574725 m!8133482))

(assert (=> b!7574725 m!8133482))

(assert (=> b!7574725 m!8133484))

(assert (=> b!7574720 m!8133488))

(assert (=> b!7574733 m!8133488))

(assert (=> b!7574733 m!8133488))

(declare-fun m!8133490 () Bool)

(assert (=> b!7574733 m!8133490))

(assert (=> b!7574733 m!8133482))

(assert (=> b!7574733 m!8133490))

(assert (=> b!7574733 m!8133482))

(declare-fun m!8133492 () Bool)

(assert (=> b!7574733 m!8133492))

(assert (=> b!7574559 d!2317824))

(declare-fun d!2317826 () Bool)

(assert (=> d!2317826 (= (matchR!9640 r!22341 s!13436) (matchRSpec!4363 r!22341 s!13436))))

(declare-fun lt!2651850 () Unit!167044)

(declare-fun choose!58560 (Regex!20044 List!72927) Unit!167044)

(assert (=> d!2317826 (= lt!2651850 (choose!58560 r!22341 s!13436))))

(assert (=> d!2317826 (validRegex!10472 r!22341)))

(assert (=> d!2317826 (= (mainMatchTheorem!4357 r!22341 s!13436) lt!2651850)))

(declare-fun bs!1940729 () Bool)

(assert (= bs!1940729 d!2317826))

(assert (=> bs!1940729 m!8133432))

(assert (=> bs!1940729 m!8133430))

(declare-fun m!8133506 () Bool)

(assert (=> bs!1940729 m!8133506))

(assert (=> bs!1940729 m!8133440))

(assert (=> b!7574559 d!2317826))

(declare-fun b!7574761 () Bool)

(declare-fun e!4509130 () Bool)

(declare-fun e!4509129 () Bool)

(assert (=> b!7574761 (= e!4509130 e!4509129)))

(declare-fun c!1397385 () Bool)

(assert (=> b!7574761 (= c!1397385 (is-Union!20044 r!22341))))

(declare-fun b!7574762 () Bool)

(declare-fun e!4509133 () Bool)

(declare-fun call!694413 () Bool)

(assert (=> b!7574762 (= e!4509133 call!694413)))

(declare-fun b!7574763 () Bool)

(declare-fun e!4509131 () Bool)

(assert (=> b!7574763 (= e!4509131 e!4509130)))

(declare-fun c!1397384 () Bool)

(assert (=> b!7574763 (= c!1397384 (is-Star!20044 r!22341))))

(declare-fun d!2317832 () Bool)

(declare-fun res!3034476 () Bool)

(assert (=> d!2317832 (=> res!3034476 e!4509131)))

(assert (=> d!2317832 (= res!3034476 (is-ElementMatch!20044 r!22341))))

(assert (=> d!2317832 (= (validRegex!10472 r!22341) e!4509131)))

(declare-fun b!7574764 () Bool)

(declare-fun e!4509132 () Bool)

(declare-fun e!4509128 () Bool)

(assert (=> b!7574764 (= e!4509132 e!4509128)))

(declare-fun res!3034477 () Bool)

(assert (=> b!7574764 (=> (not res!3034477) (not e!4509128))))

(declare-fun call!694414 () Bool)

(assert (=> b!7574764 (= res!3034477 call!694414)))

(declare-fun bm!694407 () Bool)

(assert (=> bm!694407 (= call!694413 (validRegex!10472 (ite c!1397384 (reg!20373 r!22341) (ite c!1397385 (regTwo!40601 r!22341) (regOne!40600 r!22341)))))))

(declare-fun b!7574765 () Bool)

(declare-fun e!4509134 () Bool)

(assert (=> b!7574765 (= e!4509134 call!694414)))

(declare-fun bm!694408 () Bool)

(assert (=> bm!694408 (= call!694414 call!694413)))

(declare-fun b!7574766 () Bool)

(declare-fun call!694412 () Bool)

(assert (=> b!7574766 (= e!4509128 call!694412)))

(declare-fun b!7574767 () Bool)

(assert (=> b!7574767 (= e!4509130 e!4509133)))

(declare-fun res!3034478 () Bool)

(assert (=> b!7574767 (= res!3034478 (not (nullable!8748 (reg!20373 r!22341))))))

(assert (=> b!7574767 (=> (not res!3034478) (not e!4509133))))

(declare-fun b!7574768 () Bool)

(declare-fun res!3034475 () Bool)

(assert (=> b!7574768 (=> (not res!3034475) (not e!4509134))))

(assert (=> b!7574768 (= res!3034475 call!694412)))

(assert (=> b!7574768 (= e!4509129 e!4509134)))

(declare-fun bm!694409 () Bool)

(assert (=> bm!694409 (= call!694412 (validRegex!10472 (ite c!1397385 (regOne!40601 r!22341) (regTwo!40600 r!22341))))))

(declare-fun b!7574769 () Bool)

(declare-fun res!3034474 () Bool)

(assert (=> b!7574769 (=> res!3034474 e!4509132)))

(assert (=> b!7574769 (= res!3034474 (not (is-Concat!28889 r!22341)))))

(assert (=> b!7574769 (= e!4509129 e!4509132)))

(assert (= (and d!2317832 (not res!3034476)) b!7574763))

(assert (= (and b!7574763 c!1397384) b!7574767))

(assert (= (and b!7574763 (not c!1397384)) b!7574761))

(assert (= (and b!7574767 res!3034478) b!7574762))

(assert (= (and b!7574761 c!1397385) b!7574768))

(assert (= (and b!7574761 (not c!1397385)) b!7574769))

(assert (= (and b!7574768 res!3034475) b!7574765))

(assert (= (and b!7574769 (not res!3034474)) b!7574764))

(assert (= (and b!7574764 res!3034477) b!7574766))

(assert (= (or b!7574765 b!7574764) bm!694408))

(assert (= (or b!7574768 b!7574766) bm!694409))

(assert (= (or b!7574762 bm!694408) bm!694407))

(declare-fun m!8133508 () Bool)

(assert (=> bm!694407 m!8133508))

(declare-fun m!8133510 () Bool)

(assert (=> b!7574767 m!8133510))

(declare-fun m!8133512 () Bool)

(assert (=> bm!694409 m!8133512))

(assert (=> start!731414 d!2317832))

(declare-fun b!7574770 () Bool)

(declare-fun e!4509137 () Bool)

(declare-fun e!4509136 () Bool)

(assert (=> b!7574770 (= e!4509137 e!4509136)))

(declare-fun c!1397387 () Bool)

(assert (=> b!7574770 (= c!1397387 (is-Union!20044 (regTwo!40600 r!22341)))))

(declare-fun b!7574771 () Bool)

(declare-fun e!4509140 () Bool)

(declare-fun call!694416 () Bool)

(assert (=> b!7574771 (= e!4509140 call!694416)))

(declare-fun b!7574772 () Bool)

(declare-fun e!4509138 () Bool)

(assert (=> b!7574772 (= e!4509138 e!4509137)))

(declare-fun c!1397386 () Bool)

(assert (=> b!7574772 (= c!1397386 (is-Star!20044 (regTwo!40600 r!22341)))))

(declare-fun d!2317834 () Bool)

(declare-fun res!3034481 () Bool)

(assert (=> d!2317834 (=> res!3034481 e!4509138)))

(assert (=> d!2317834 (= res!3034481 (is-ElementMatch!20044 (regTwo!40600 r!22341)))))

(assert (=> d!2317834 (= (validRegex!10472 (regTwo!40600 r!22341)) e!4509138)))

(declare-fun b!7574773 () Bool)

(declare-fun e!4509139 () Bool)

(declare-fun e!4509135 () Bool)

(assert (=> b!7574773 (= e!4509139 e!4509135)))

(declare-fun res!3034482 () Bool)

(assert (=> b!7574773 (=> (not res!3034482) (not e!4509135))))

(declare-fun call!694417 () Bool)

(assert (=> b!7574773 (= res!3034482 call!694417)))

(declare-fun bm!694410 () Bool)

(assert (=> bm!694410 (= call!694416 (validRegex!10472 (ite c!1397386 (reg!20373 (regTwo!40600 r!22341)) (ite c!1397387 (regTwo!40601 (regTwo!40600 r!22341)) (regOne!40600 (regTwo!40600 r!22341))))))))

(declare-fun b!7574774 () Bool)

(declare-fun e!4509141 () Bool)

(assert (=> b!7574774 (= e!4509141 call!694417)))

(declare-fun bm!694411 () Bool)

(assert (=> bm!694411 (= call!694417 call!694416)))

(declare-fun b!7574775 () Bool)

(declare-fun call!694415 () Bool)

(assert (=> b!7574775 (= e!4509135 call!694415)))

(declare-fun b!7574776 () Bool)

(assert (=> b!7574776 (= e!4509137 e!4509140)))

(declare-fun res!3034483 () Bool)

(assert (=> b!7574776 (= res!3034483 (not (nullable!8748 (reg!20373 (regTwo!40600 r!22341)))))))

(assert (=> b!7574776 (=> (not res!3034483) (not e!4509140))))

(declare-fun b!7574777 () Bool)

(declare-fun res!3034480 () Bool)

(assert (=> b!7574777 (=> (not res!3034480) (not e!4509141))))

(assert (=> b!7574777 (= res!3034480 call!694415)))

(assert (=> b!7574777 (= e!4509136 e!4509141)))

(declare-fun bm!694412 () Bool)

(assert (=> bm!694412 (= call!694415 (validRegex!10472 (ite c!1397387 (regOne!40601 (regTwo!40600 r!22341)) (regTwo!40600 (regTwo!40600 r!22341)))))))

(declare-fun b!7574778 () Bool)

(declare-fun res!3034479 () Bool)

(assert (=> b!7574778 (=> res!3034479 e!4509139)))

(assert (=> b!7574778 (= res!3034479 (not (is-Concat!28889 (regTwo!40600 r!22341))))))

(assert (=> b!7574778 (= e!4509136 e!4509139)))

(assert (= (and d!2317834 (not res!3034481)) b!7574772))

(assert (= (and b!7574772 c!1397386) b!7574776))

(assert (= (and b!7574772 (not c!1397386)) b!7574770))

(assert (= (and b!7574776 res!3034483) b!7574771))

(assert (= (and b!7574770 c!1397387) b!7574777))

(assert (= (and b!7574770 (not c!1397387)) b!7574778))

(assert (= (and b!7574777 res!3034480) b!7574774))

(assert (= (and b!7574778 (not res!3034479)) b!7574773))

(assert (= (and b!7574773 res!3034482) b!7574775))

(assert (= (or b!7574774 b!7574773) bm!694411))

(assert (= (or b!7574777 b!7574775) bm!694412))

(assert (= (or b!7574771 bm!694411) bm!694410))

(declare-fun m!8133514 () Bool)

(assert (=> bm!694410 m!8133514))

(declare-fun m!8133516 () Bool)

(assert (=> b!7574776 m!8133516))

(declare-fun m!8133518 () Bool)

(assert (=> bm!694412 m!8133518))

(assert (=> b!7574560 d!2317834))

(declare-fun d!2317836 () Bool)

(declare-fun choose!58561 (Int) Bool)

(assert (=> d!2317836 (= (Exists!4287 lambda!466578) (choose!58561 lambda!466578))))

(declare-fun bs!1940730 () Bool)

(assert (= bs!1940730 d!2317836))

(declare-fun m!8133520 () Bool)

(assert (=> bs!1940730 m!8133520))

(assert (=> b!7574565 d!2317836))

(declare-fun bs!1940731 () Bool)

(declare-fun d!2317838 () Bool)

(assert (= bs!1940731 (and d!2317838 b!7574565)))

(declare-fun lambda!466600 () Int)

(assert (=> bs!1940731 (= lambda!466600 lambda!466578)))

(assert (=> bs!1940731 (not (= lambda!466600 lambda!466579))))

(declare-fun bs!1940732 () Bool)

(assert (= bs!1940732 (and d!2317838 b!7574659)))

(assert (=> bs!1940732 (not (= lambda!466600 lambda!466592))))

(declare-fun bs!1940733 () Bool)

(assert (= bs!1940733 (and d!2317838 b!7574658)))

(assert (=> bs!1940733 (not (= lambda!466600 lambda!466593))))

(assert (=> d!2317838 true))

(assert (=> d!2317838 true))

(assert (=> d!2317838 true))

(declare-fun lambda!466601 () Int)

(assert (=> bs!1940732 (not (= lambda!466601 lambda!466592))))

(declare-fun bs!1940734 () Bool)

(assert (= bs!1940734 d!2317838))

(assert (=> bs!1940734 (not (= lambda!466601 lambda!466600))))

(assert (=> bs!1940731 (= lambda!466601 lambda!466579)))

(assert (=> bs!1940731 (not (= lambda!466601 lambda!466578))))

(assert (=> bs!1940733 (= lambda!466601 lambda!466593)))

(assert (=> d!2317838 true))

(assert (=> d!2317838 true))

(assert (=> d!2317838 true))

(assert (=> d!2317838 (= (Exists!4287 lambda!466600) (Exists!4287 lambda!466601))))

(declare-fun lt!2651855 () Unit!167044)

(declare-fun choose!58562 (Regex!20044 Regex!20044 List!72927) Unit!167044)

(assert (=> d!2317838 (= lt!2651855 (choose!58562 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436))))

(assert (=> d!2317838 (validRegex!10472 (regOne!40600 r!22341))))

(assert (=> d!2317838 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2605 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436) lt!2651855)))

(declare-fun m!8133522 () Bool)

(assert (=> bs!1940734 m!8133522))

(declare-fun m!8133524 () Bool)

(assert (=> bs!1940734 m!8133524))

(declare-fun m!8133526 () Bool)

(assert (=> bs!1940734 m!8133526))

(assert (=> bs!1940734 m!8133420))

(assert (=> b!7574565 d!2317838))

(declare-fun bs!1940736 () Bool)

(declare-fun d!2317840 () Bool)

(assert (= bs!1940736 (and d!2317840 b!7574659)))

(declare-fun lambda!466608 () Int)

(assert (=> bs!1940736 (not (= lambda!466608 lambda!466592))))

(declare-fun bs!1940737 () Bool)

(assert (= bs!1940737 (and d!2317840 d!2317838)))

(assert (=> bs!1940737 (= lambda!466608 lambda!466600)))

(declare-fun bs!1940738 () Bool)

(assert (= bs!1940738 (and d!2317840 b!7574565)))

(assert (=> bs!1940738 (not (= lambda!466608 lambda!466579))))

(assert (=> bs!1940737 (not (= lambda!466608 lambda!466601))))

(assert (=> bs!1940738 (= lambda!466608 lambda!466578)))

(declare-fun bs!1940740 () Bool)

(assert (= bs!1940740 (and d!2317840 b!7574658)))

(assert (=> bs!1940740 (not (= lambda!466608 lambda!466593))))

(assert (=> d!2317840 true))

(assert (=> d!2317840 true))

(assert (=> d!2317840 true))

(assert (=> d!2317840 (= (isDefined!13923 (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) Nil!72803 s!13436 s!13436)) (Exists!4287 lambda!466608))))

(declare-fun lt!2651859 () Unit!167044)

(declare-fun choose!58563 (Regex!20044 Regex!20044 List!72927) Unit!167044)

(assert (=> d!2317840 (= lt!2651859 (choose!58563 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436))))

(assert (=> d!2317840 (validRegex!10472 (regOne!40600 r!22341))))

(assert (=> d!2317840 (= (lemmaFindConcatSeparationEquivalentToExists!3095 (regOne!40600 r!22341) (regTwo!40600 r!22341) s!13436) lt!2651859)))

(declare-fun bs!1940741 () Bool)

(assert (= bs!1940741 d!2317840))

(assert (=> bs!1940741 m!8133418))

(assert (=> bs!1940741 m!8133418))

(assert (=> bs!1940741 m!8133422))

(declare-fun m!8133530 () Bool)

(assert (=> bs!1940741 m!8133530))

(declare-fun m!8133532 () Bool)

(assert (=> bs!1940741 m!8133532))

(assert (=> bs!1940741 m!8133420))

(assert (=> b!7574565 d!2317840))

(declare-fun b!7574817 () Bool)

(declare-fun lt!2651870 () Unit!167044)

(declare-fun lt!2651869 () Unit!167044)

(assert (=> b!7574817 (= lt!2651870 lt!2651869)))

(assert (=> b!7574817 (= (++!17498 (++!17498 Nil!72803 (Cons!72803 (h!79251 s!13436) Nil!72803)) (t!387662 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3186 (List!72927 C!40414 List!72927 List!72927) Unit!167044)

(assert (=> b!7574817 (= lt!2651869 (lemmaMoveElementToOtherListKeepsConcatEq!3186 Nil!72803 (h!79251 s!13436) (t!387662 s!13436) s!13436))))

(declare-fun e!4509165 () Option!17277)

(assert (=> b!7574817 (= e!4509165 (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) (++!17498 Nil!72803 (Cons!72803 (h!79251 s!13436) Nil!72803)) (t!387662 s!13436) s!13436))))

(declare-fun b!7574818 () Bool)

(declare-fun e!4509166 () Bool)

(declare-fun lt!2651868 () Option!17277)

(declare-fun get!25572 (Option!17277) tuple2!68882)

(assert (=> b!7574818 (= e!4509166 (= (++!17498 (_1!37744 (get!25572 lt!2651868)) (_2!37744 (get!25572 lt!2651868))) s!13436))))

(declare-fun b!7574819 () Bool)

(assert (=> b!7574819 (= e!4509165 None!17276)))

(declare-fun b!7574820 () Bool)

(declare-fun e!4509163 () Option!17277)

(assert (=> b!7574820 (= e!4509163 (Some!17276 (tuple2!68883 Nil!72803 s!13436)))))

(declare-fun b!7574821 () Bool)

(declare-fun e!4509162 () Bool)

(assert (=> b!7574821 (= e!4509162 (matchR!9640 (regTwo!40600 r!22341) s!13436))))

(declare-fun d!2317842 () Bool)

(declare-fun e!4509164 () Bool)

(assert (=> d!2317842 e!4509164))

(declare-fun res!3034516 () Bool)

(assert (=> d!2317842 (=> res!3034516 e!4509164)))

(assert (=> d!2317842 (= res!3034516 e!4509166)))

(declare-fun res!3034515 () Bool)

(assert (=> d!2317842 (=> (not res!3034515) (not e!4509166))))

(assert (=> d!2317842 (= res!3034515 (isDefined!13923 lt!2651868))))

(assert (=> d!2317842 (= lt!2651868 e!4509163)))

(declare-fun c!1397392 () Bool)

(assert (=> d!2317842 (= c!1397392 e!4509162)))

(declare-fun res!3034514 () Bool)

(assert (=> d!2317842 (=> (not res!3034514) (not e!4509162))))

(assert (=> d!2317842 (= res!3034514 (matchR!9640 (regOne!40600 r!22341) Nil!72803))))

(assert (=> d!2317842 (validRegex!10472 (regOne!40600 r!22341))))

(assert (=> d!2317842 (= (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) Nil!72803 s!13436 s!13436) lt!2651868)))

(declare-fun b!7574822 () Bool)

(declare-fun res!3034518 () Bool)

(assert (=> b!7574822 (=> (not res!3034518) (not e!4509166))))

(assert (=> b!7574822 (= res!3034518 (matchR!9640 (regOne!40600 r!22341) (_1!37744 (get!25572 lt!2651868))))))

(declare-fun b!7574823 () Bool)

(assert (=> b!7574823 (= e!4509163 e!4509165)))

(declare-fun c!1397393 () Bool)

(assert (=> b!7574823 (= c!1397393 (is-Nil!72803 s!13436))))

(declare-fun b!7574824 () Bool)

(declare-fun res!3034517 () Bool)

(assert (=> b!7574824 (=> (not res!3034517) (not e!4509166))))

(assert (=> b!7574824 (= res!3034517 (matchR!9640 (regTwo!40600 r!22341) (_2!37744 (get!25572 lt!2651868))))))

(declare-fun b!7574825 () Bool)

(assert (=> b!7574825 (= e!4509164 (not (isDefined!13923 lt!2651868)))))

(assert (= (and d!2317842 res!3034514) b!7574821))

(assert (= (and d!2317842 c!1397392) b!7574820))

(assert (= (and d!2317842 (not c!1397392)) b!7574823))

(assert (= (and b!7574823 c!1397393) b!7574819))

(assert (= (and b!7574823 (not c!1397393)) b!7574817))

(assert (= (and d!2317842 res!3034515) b!7574822))

(assert (= (and b!7574822 res!3034518) b!7574824))

(assert (= (and b!7574824 res!3034517) b!7574818))

(assert (= (and d!2317842 (not res!3034516)) b!7574825))

(declare-fun m!8133538 () Bool)

(assert (=> b!7574824 m!8133538))

(declare-fun m!8133540 () Bool)

(assert (=> b!7574824 m!8133540))

(assert (=> b!7574818 m!8133538))

(declare-fun m!8133542 () Bool)

(assert (=> b!7574818 m!8133542))

(declare-fun m!8133544 () Bool)

(assert (=> b!7574821 m!8133544))

(declare-fun m!8133546 () Bool)

(assert (=> b!7574825 m!8133546))

(declare-fun m!8133548 () Bool)

(assert (=> b!7574817 m!8133548))

(assert (=> b!7574817 m!8133548))

(declare-fun m!8133550 () Bool)

(assert (=> b!7574817 m!8133550))

(declare-fun m!8133552 () Bool)

(assert (=> b!7574817 m!8133552))

(assert (=> b!7574817 m!8133548))

(declare-fun m!8133554 () Bool)

(assert (=> b!7574817 m!8133554))

(assert (=> b!7574822 m!8133538))

(declare-fun m!8133556 () Bool)

(assert (=> b!7574822 m!8133556))

(assert (=> d!2317842 m!8133546))

(declare-fun m!8133558 () Bool)

(assert (=> d!2317842 m!8133558))

(assert (=> d!2317842 m!8133420))

(assert (=> b!7574565 d!2317842))

(declare-fun d!2317846 () Bool)

(declare-fun isEmpty!41466 (Option!17277) Bool)

(assert (=> d!2317846 (= (isDefined!13923 (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) Nil!72803 s!13436 s!13436)) (not (isEmpty!41466 (findConcatSeparation!3337 (regOne!40600 r!22341) (regTwo!40600 r!22341) Nil!72803 s!13436 s!13436))))))

(declare-fun bs!1940742 () Bool)

(assert (= bs!1940742 d!2317846))

(assert (=> bs!1940742 m!8133418))

(declare-fun m!8133560 () Bool)

(assert (=> bs!1940742 m!8133560))

(assert (=> b!7574565 d!2317846))

(declare-fun b!7574830 () Bool)

(declare-fun e!4509171 () Bool)

(declare-fun e!4509170 () Bool)

(assert (=> b!7574830 (= e!4509171 e!4509170)))

(declare-fun c!1397395 () Bool)

(assert (=> b!7574830 (= c!1397395 (is-Union!20044 (regOne!40600 r!22341)))))

(declare-fun b!7574831 () Bool)

(declare-fun e!4509174 () Bool)

(declare-fun call!694419 () Bool)

(assert (=> b!7574831 (= e!4509174 call!694419)))

(declare-fun b!7574832 () Bool)

(declare-fun e!4509172 () Bool)

(assert (=> b!7574832 (= e!4509172 e!4509171)))

(declare-fun c!1397394 () Bool)

(assert (=> b!7574832 (= c!1397394 (is-Star!20044 (regOne!40600 r!22341)))))

(declare-fun d!2317848 () Bool)

(declare-fun res!3034525 () Bool)

(assert (=> d!2317848 (=> res!3034525 e!4509172)))

(assert (=> d!2317848 (= res!3034525 (is-ElementMatch!20044 (regOne!40600 r!22341)))))

(assert (=> d!2317848 (= (validRegex!10472 (regOne!40600 r!22341)) e!4509172)))

(declare-fun b!7574833 () Bool)

(declare-fun e!4509173 () Bool)

(declare-fun e!4509169 () Bool)

(assert (=> b!7574833 (= e!4509173 e!4509169)))

(declare-fun res!3034526 () Bool)

(assert (=> b!7574833 (=> (not res!3034526) (not e!4509169))))

(declare-fun call!694420 () Bool)

(assert (=> b!7574833 (= res!3034526 call!694420)))

(declare-fun bm!694413 () Bool)

(assert (=> bm!694413 (= call!694419 (validRegex!10472 (ite c!1397394 (reg!20373 (regOne!40600 r!22341)) (ite c!1397395 (regTwo!40601 (regOne!40600 r!22341)) (regOne!40600 (regOne!40600 r!22341))))))))

(declare-fun b!7574834 () Bool)

(declare-fun e!4509175 () Bool)

(assert (=> b!7574834 (= e!4509175 call!694420)))

(declare-fun bm!694414 () Bool)

(assert (=> bm!694414 (= call!694420 call!694419)))

(declare-fun b!7574835 () Bool)

(declare-fun call!694418 () Bool)

(assert (=> b!7574835 (= e!4509169 call!694418)))

(declare-fun b!7574836 () Bool)

(assert (=> b!7574836 (= e!4509171 e!4509174)))

(declare-fun res!3034527 () Bool)

(assert (=> b!7574836 (= res!3034527 (not (nullable!8748 (reg!20373 (regOne!40600 r!22341)))))))

(assert (=> b!7574836 (=> (not res!3034527) (not e!4509174))))

(declare-fun b!7574837 () Bool)

(declare-fun res!3034524 () Bool)

(assert (=> b!7574837 (=> (not res!3034524) (not e!4509175))))

(assert (=> b!7574837 (= res!3034524 call!694418)))

(assert (=> b!7574837 (= e!4509170 e!4509175)))

(declare-fun bm!694415 () Bool)

(assert (=> bm!694415 (= call!694418 (validRegex!10472 (ite c!1397395 (regOne!40601 (regOne!40600 r!22341)) (regTwo!40600 (regOne!40600 r!22341)))))))

(declare-fun b!7574838 () Bool)

(declare-fun res!3034523 () Bool)

(assert (=> b!7574838 (=> res!3034523 e!4509173)))

(assert (=> b!7574838 (= res!3034523 (not (is-Concat!28889 (regOne!40600 r!22341))))))

(assert (=> b!7574838 (= e!4509170 e!4509173)))

(assert (= (and d!2317848 (not res!3034525)) b!7574832))

(assert (= (and b!7574832 c!1397394) b!7574836))

(assert (= (and b!7574832 (not c!1397394)) b!7574830))

(assert (= (and b!7574836 res!3034527) b!7574831))

(assert (= (and b!7574830 c!1397395) b!7574837))

(assert (= (and b!7574830 (not c!1397395)) b!7574838))

(assert (= (and b!7574837 res!3034524) b!7574834))

(assert (= (and b!7574838 (not res!3034523)) b!7574833))

(assert (= (and b!7574833 res!3034526) b!7574835))

(assert (= (or b!7574834 b!7574833) bm!694414))

(assert (= (or b!7574837 b!7574835) bm!694415))

(assert (= (or b!7574831 bm!694414) bm!694413))

(declare-fun m!8133562 () Bool)

(assert (=> bm!694413 m!8133562))

(declare-fun m!8133564 () Bool)

(assert (=> b!7574836 m!8133564))

(declare-fun m!8133566 () Bool)

(assert (=> bm!694415 m!8133566))

(assert (=> b!7574565 d!2317848))

(declare-fun d!2317850 () Bool)

(assert (=> d!2317850 (= (Exists!4287 lambda!466579) (choose!58561 lambda!466579))))

(declare-fun bs!1940743 () Bool)

(assert (= bs!1940743 d!2317850))

(declare-fun m!8133568 () Bool)

(assert (=> bs!1940743 m!8133568))

(assert (=> b!7574565 d!2317850))

(declare-fun d!2317852 () Bool)

(assert (=> d!2317852 (= (isEmpty!41464 s!13436) (is-Nil!72803 s!13436))))

(assert (=> b!7574558 d!2317852))

(declare-fun b!7574848 () Bool)

(declare-fun e!4509181 () List!72927)

(assert (=> b!7574848 (= e!4509181 (Cons!72803 (h!79251 Nil!72803) (++!17498 (t!387662 Nil!72803) s!13436)))))

(declare-fun b!7574849 () Bool)

(declare-fun res!3034533 () Bool)

(declare-fun e!4509180 () Bool)

(assert (=> b!7574849 (=> (not res!3034533) (not e!4509180))))

(declare-fun lt!2651874 () List!72927)

(declare-fun size!42496 (List!72927) Int)

(assert (=> b!7574849 (= res!3034533 (= (size!42496 lt!2651874) (+ (size!42496 Nil!72803) (size!42496 s!13436))))))

(declare-fun b!7574847 () Bool)

(assert (=> b!7574847 (= e!4509181 s!13436)))

(declare-fun b!7574850 () Bool)

(assert (=> b!7574850 (= e!4509180 (or (not (= s!13436 Nil!72803)) (= lt!2651874 Nil!72803)))))

(declare-fun d!2317854 () Bool)

(assert (=> d!2317854 e!4509180))

(declare-fun res!3034532 () Bool)

(assert (=> d!2317854 (=> (not res!3034532) (not e!4509180))))

(declare-fun content!15409 (List!72927) (Set C!40414))

(assert (=> d!2317854 (= res!3034532 (= (content!15409 lt!2651874) (set.union (content!15409 Nil!72803) (content!15409 s!13436))))))

(assert (=> d!2317854 (= lt!2651874 e!4509181)))

(declare-fun c!1397398 () Bool)

(assert (=> d!2317854 (= c!1397398 (is-Nil!72803 Nil!72803))))

(assert (=> d!2317854 (= (++!17498 Nil!72803 s!13436) lt!2651874)))

(assert (= (and d!2317854 c!1397398) b!7574847))

(assert (= (and d!2317854 (not c!1397398)) b!7574848))

(assert (= (and d!2317854 res!3034532) b!7574849))

(assert (= (and b!7574849 res!3034533) b!7574850))

(declare-fun m!8133570 () Bool)

(assert (=> b!7574848 m!8133570))

(declare-fun m!8133572 () Bool)

(assert (=> b!7574849 m!8133572))

(declare-fun m!8133574 () Bool)

(assert (=> b!7574849 m!8133574))

(declare-fun m!8133576 () Bool)

(assert (=> b!7574849 m!8133576))

(declare-fun m!8133578 () Bool)

(assert (=> d!2317854 m!8133578))

(declare-fun m!8133580 () Bool)

(assert (=> d!2317854 m!8133580))

(declare-fun m!8133584 () Bool)

(assert (=> d!2317854 m!8133584))

(assert (=> b!7574564 d!2317854))

(declare-fun b!7574861 () Bool)

(declare-fun e!4509184 () Bool)

(assert (=> b!7574861 (= e!4509184 tp_is_empty!50443)))

(assert (=> b!7574567 (= tp!2207209 e!4509184)))

(declare-fun b!7574862 () Bool)

(declare-fun tp!2207244 () Bool)

(declare-fun tp!2207240 () Bool)

(assert (=> b!7574862 (= e!4509184 (and tp!2207244 tp!2207240))))

(declare-fun b!7574864 () Bool)

(declare-fun tp!2207241 () Bool)

(declare-fun tp!2207243 () Bool)

(assert (=> b!7574864 (= e!4509184 (and tp!2207241 tp!2207243))))

(declare-fun b!7574863 () Bool)

(declare-fun tp!2207242 () Bool)

(assert (=> b!7574863 (= e!4509184 tp!2207242)))

(assert (= (and b!7574567 (is-ElementMatch!20044 (reg!20373 r!22341))) b!7574861))

(assert (= (and b!7574567 (is-Concat!28889 (reg!20373 r!22341))) b!7574862))

(assert (= (and b!7574567 (is-Star!20044 (reg!20373 r!22341))) b!7574863))

(assert (= (and b!7574567 (is-Union!20044 (reg!20373 r!22341))) b!7574864))

(declare-fun b!7574865 () Bool)

(declare-fun e!4509185 () Bool)

(assert (=> b!7574865 (= e!4509185 tp_is_empty!50443)))

(assert (=> b!7574568 (= tp!2207208 e!4509185)))

(declare-fun b!7574866 () Bool)

(declare-fun tp!2207249 () Bool)

(declare-fun tp!2207245 () Bool)

(assert (=> b!7574866 (= e!4509185 (and tp!2207249 tp!2207245))))

(declare-fun b!7574868 () Bool)

(declare-fun tp!2207246 () Bool)

(declare-fun tp!2207248 () Bool)

(assert (=> b!7574868 (= e!4509185 (and tp!2207246 tp!2207248))))

(declare-fun b!7574867 () Bool)

(declare-fun tp!2207247 () Bool)

(assert (=> b!7574867 (= e!4509185 tp!2207247)))

(assert (= (and b!7574568 (is-ElementMatch!20044 (regOne!40600 r!22341))) b!7574865))

(assert (= (and b!7574568 (is-Concat!28889 (regOne!40600 r!22341))) b!7574866))

(assert (= (and b!7574568 (is-Star!20044 (regOne!40600 r!22341))) b!7574867))

(assert (= (and b!7574568 (is-Union!20044 (regOne!40600 r!22341))) b!7574868))

(declare-fun b!7574869 () Bool)

(declare-fun e!4509186 () Bool)

(assert (=> b!7574869 (= e!4509186 tp_is_empty!50443)))

(assert (=> b!7574568 (= tp!2207207 e!4509186)))

(declare-fun b!7574870 () Bool)

(declare-fun tp!2207254 () Bool)

(declare-fun tp!2207250 () Bool)

(assert (=> b!7574870 (= e!4509186 (and tp!2207254 tp!2207250))))

(declare-fun b!7574872 () Bool)

(declare-fun tp!2207251 () Bool)

(declare-fun tp!2207253 () Bool)

(assert (=> b!7574872 (= e!4509186 (and tp!2207251 tp!2207253))))

(declare-fun b!7574871 () Bool)

(declare-fun tp!2207252 () Bool)

(assert (=> b!7574871 (= e!4509186 tp!2207252)))

(assert (= (and b!7574568 (is-ElementMatch!20044 (regTwo!40600 r!22341))) b!7574869))

(assert (= (and b!7574568 (is-Concat!28889 (regTwo!40600 r!22341))) b!7574870))

(assert (= (and b!7574568 (is-Star!20044 (regTwo!40600 r!22341))) b!7574871))

(assert (= (and b!7574568 (is-Union!20044 (regTwo!40600 r!22341))) b!7574872))

(declare-fun b!7574877 () Bool)

(declare-fun e!4509189 () Bool)

(declare-fun tp!2207257 () Bool)

(assert (=> b!7574877 (= e!4509189 (and tp_is_empty!50443 tp!2207257))))

(assert (=> b!7574561 (= tp!2207206 e!4509189)))

(assert (= (and b!7574561 (is-Cons!72803 (t!387662 s!13436))) b!7574877))

(declare-fun b!7574878 () Bool)

(declare-fun e!4509190 () Bool)

(assert (=> b!7574878 (= e!4509190 tp_is_empty!50443)))

(assert (=> b!7574563 (= tp!2207210 e!4509190)))

(declare-fun b!7574879 () Bool)

(declare-fun tp!2207262 () Bool)

(declare-fun tp!2207258 () Bool)

(assert (=> b!7574879 (= e!4509190 (and tp!2207262 tp!2207258))))

(declare-fun b!7574881 () Bool)

(declare-fun tp!2207259 () Bool)

(declare-fun tp!2207261 () Bool)

(assert (=> b!7574881 (= e!4509190 (and tp!2207259 tp!2207261))))

(declare-fun b!7574880 () Bool)

(declare-fun tp!2207260 () Bool)

(assert (=> b!7574880 (= e!4509190 tp!2207260)))

(assert (= (and b!7574563 (is-ElementMatch!20044 (regOne!40601 r!22341))) b!7574878))

(assert (= (and b!7574563 (is-Concat!28889 (regOne!40601 r!22341))) b!7574879))

(assert (= (and b!7574563 (is-Star!20044 (regOne!40601 r!22341))) b!7574880))

(assert (= (and b!7574563 (is-Union!20044 (regOne!40601 r!22341))) b!7574881))

(declare-fun b!7574882 () Bool)

(declare-fun e!4509191 () Bool)

(assert (=> b!7574882 (= e!4509191 tp_is_empty!50443)))

(assert (=> b!7574563 (= tp!2207211 e!4509191)))

(declare-fun b!7574883 () Bool)

(declare-fun tp!2207267 () Bool)

(declare-fun tp!2207263 () Bool)

(assert (=> b!7574883 (= e!4509191 (and tp!2207267 tp!2207263))))

(declare-fun b!7574885 () Bool)

(declare-fun tp!2207264 () Bool)

(declare-fun tp!2207266 () Bool)

(assert (=> b!7574885 (= e!4509191 (and tp!2207264 tp!2207266))))

(declare-fun b!7574884 () Bool)

(declare-fun tp!2207265 () Bool)

(assert (=> b!7574884 (= e!4509191 tp!2207265)))

(assert (= (and b!7574563 (is-ElementMatch!20044 (regTwo!40601 r!22341))) b!7574882))

(assert (= (and b!7574563 (is-Concat!28889 (regTwo!40601 r!22341))) b!7574883))

(assert (= (and b!7574563 (is-Star!20044 (regTwo!40601 r!22341))) b!7574884))

(assert (= (and b!7574563 (is-Union!20044 (regTwo!40601 r!22341))) b!7574885))

(push 1)

(assert (not b!7574721))

(assert (not b!7574884))

(assert (not b!7574871))

(assert (not b!7574885))

(assert (not b!7574868))

(assert (not b!7574732))

(assert (not b!7574870))

(assert (not bm!694407))

(assert (not b!7574883))

(assert (not b!7574725))

(assert (not b!7574849))

(assert (not d!2317842))

(assert (not d!2317854))

(assert (not d!2317840))

(assert (not b!7574825))

(assert (not b!7574733))

(assert (not d!2317826))

(assert (not b!7574866))

(assert (not d!2317850))

(assert (not bm!694413))

(assert (not d!2317824))

(assert (not bm!694385))

(assert (not d!2317846))

(assert (not b!7574821))

(assert (not bm!694415))

(assert (not b!7574848))

(assert (not b!7574880))

(assert (not b!7574723))

(assert (not d!2317836))

(assert (not b!7574776))

(assert (not b!7574881))

(assert (not b!7574767))

(assert (not b!7574867))

(assert (not b!7574822))

(assert (not b!7574664))

(assert (not b!7574824))

(assert (not b!7574862))

(assert (not bm!694384))

(assert (not d!2317818))

(assert (not bm!694410))

(assert (not d!2317838))

(assert (not b!7574720))

(assert (not b!7574818))

(assert (not b!7574817))

(assert tp_is_empty!50443)

(assert (not bm!694397))

(assert (not b!7574654))

(assert (not b!7574863))

(assert (not b!7574879))

(assert (not b!7574864))

(assert (not bm!694409))

(assert (not bm!694412))

(assert (not b!7574877))

(assert (not b!7574836))

(assert (not b!7574872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

