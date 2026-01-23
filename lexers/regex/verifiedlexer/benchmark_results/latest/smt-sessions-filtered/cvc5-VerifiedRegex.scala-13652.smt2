; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732258 () Bool)

(assert start!732258)

(declare-fun b!7585360 () Bool)

(assert (=> b!7585360 true))

(assert (=> b!7585360 true))

(declare-fun b!7585352 () Bool)

(declare-fun e!4514416 () Bool)

(declare-fun tp_is_empty!50551 () Bool)

(declare-fun tp!2210711 () Bool)

(assert (=> b!7585352 (= e!4514416 (and tp_is_empty!50551 tp!2210711))))

(declare-fun b!7585353 () Bool)

(declare-fun res!3038600 () Bool)

(declare-fun e!4514417 () Bool)

(assert (=> b!7585353 (=> (not res!3038600) (not e!4514417))))

(declare-datatypes ((C!40522 0))(
  ( (C!40523 (val!30701 Int)) )
))
(declare-datatypes ((Regex!20098 0))(
  ( (ElementMatch!20098 (c!1399087 C!40522)) (Concat!28943 (regOne!40708 Regex!20098) (regTwo!40708 Regex!20098)) (EmptyExpr!20098) (Star!20098 (reg!20427 Regex!20098)) (EmptyLang!20098) (Union!20098 (regOne!40709 Regex!20098) (regTwo!40709 Regex!20098)) )
))
(declare-fun r!22341 () Regex!20098)

(declare-fun lostCause!1874 (Regex!20098) Bool)

(assert (=> b!7585353 (= res!3038600 (lostCause!1874 r!22341))))

(declare-fun b!7585354 () Bool)

(declare-fun e!4514418 () Bool)

(assert (=> b!7585354 (= e!4514417 (not e!4514418))))

(declare-fun res!3038597 () Bool)

(assert (=> b!7585354 (=> res!3038597 e!4514418)))

(declare-fun lt!2652919 () Bool)

(assert (=> b!7585354 (= res!3038597 (or (is-EmptyLang!20098 r!22341) (is-EmptyExpr!20098 r!22341) (is-ElementMatch!20098 r!22341) (is-Union!20098 r!22341) (is-Star!20098 r!22341) (not lt!2652919)))))

(declare-datatypes ((List!72981 0))(
  ( (Nil!72857) (Cons!72857 (h!79305 C!40522) (t!387716 List!72981)) )
))
(declare-fun s!13436 () List!72981)

(declare-fun matchRSpec!4411 (Regex!20098 List!72981) Bool)

(assert (=> b!7585354 (= lt!2652919 (matchRSpec!4411 r!22341 s!13436))))

(declare-fun matchR!9690 (Regex!20098 List!72981) Bool)

(assert (=> b!7585354 (= lt!2652919 (matchR!9690 r!22341 s!13436))))

(declare-datatypes ((Unit!167152 0))(
  ( (Unit!167153) )
))
(declare-fun lt!2652920 () Unit!167152)

(declare-fun mainMatchTheorem!4405 (Regex!20098 List!72981) Unit!167152)

(assert (=> b!7585354 (= lt!2652920 (mainMatchTheorem!4405 r!22341 s!13436))))

(declare-fun b!7585355 () Bool)

(declare-fun e!4514419 () Bool)

(declare-fun tp!2210706 () Bool)

(declare-fun tp!2210708 () Bool)

(assert (=> b!7585355 (= e!4514419 (and tp!2210706 tp!2210708))))

(declare-fun b!7585356 () Bool)

(assert (=> b!7585356 (= e!4514419 tp_is_empty!50551)))

(declare-fun res!3038598 () Bool)

(assert (=> start!732258 (=> (not res!3038598) (not e!4514417))))

(declare-fun validRegex!10526 (Regex!20098) Bool)

(assert (=> start!732258 (= res!3038598 (validRegex!10526 r!22341))))

(assert (=> start!732258 e!4514417))

(assert (=> start!732258 e!4514419))

(assert (=> start!732258 e!4514416))

(declare-fun b!7585357 () Bool)

(declare-fun tp!2210707 () Bool)

(declare-fun tp!2210710 () Bool)

(assert (=> b!7585357 (= e!4514419 (and tp!2210707 tp!2210710))))

(declare-fun b!7585358 () Bool)

(declare-fun tp!2210709 () Bool)

(assert (=> b!7585358 (= e!4514419 tp!2210709)))

(declare-fun b!7585359 () Bool)

(declare-fun res!3038599 () Bool)

(assert (=> b!7585359 (=> (not res!3038599) (not e!4514417))))

(declare-fun isEmpty!41534 (List!72981) Bool)

(assert (=> b!7585359 (= res!3038599 (not (isEmpty!41534 s!13436)))))

(assert (=> b!7585360 (= e!4514418 (validRegex!10526 (regOne!40708 r!22341)))))

(declare-fun lambda!467056 () Int)

(declare-datatypes ((tuple2!68918 0))(
  ( (tuple2!68919 (_1!37762 List!72981) (_2!37762 List!72981)) )
))
(declare-datatypes ((Option!17303 0))(
  ( (None!17302) (Some!17302 (v!54437 tuple2!68918)) )
))
(declare-fun isDefined!13941 (Option!17303) Bool)

(declare-fun findConcatSeparation!3355 (Regex!20098 Regex!20098 List!72981 List!72981 List!72981) Option!17303)

(declare-fun Exists!4330 (Int) Bool)

(assert (=> b!7585360 (= (isDefined!13941 (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) Nil!72857 s!13436 s!13436)) (Exists!4330 lambda!467056))))

(declare-fun lt!2652921 () Unit!167152)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3113 (Regex!20098 Regex!20098 List!72981) Unit!167152)

(assert (=> b!7585360 (= lt!2652921 (lemmaFindConcatSeparationEquivalentToExists!3113 (regOne!40708 r!22341) (regTwo!40708 r!22341) s!13436))))

(assert (= (and start!732258 res!3038598) b!7585353))

(assert (= (and b!7585353 res!3038600) b!7585359))

(assert (= (and b!7585359 res!3038599) b!7585354))

(assert (= (and b!7585354 (not res!3038597)) b!7585360))

(assert (= (and start!732258 (is-ElementMatch!20098 r!22341)) b!7585356))

(assert (= (and start!732258 (is-Concat!28943 r!22341)) b!7585355))

(assert (= (and start!732258 (is-Star!20098 r!22341)) b!7585358))

(assert (= (and start!732258 (is-Union!20098 r!22341)) b!7585357))

(assert (= (and start!732258 (is-Cons!72857 s!13436)) b!7585352))

(declare-fun m!8137206 () Bool)

(assert (=> b!7585360 m!8137206))

(declare-fun m!8137208 () Bool)

(assert (=> b!7585360 m!8137208))

(declare-fun m!8137210 () Bool)

(assert (=> b!7585360 m!8137210))

(declare-fun m!8137212 () Bool)

(assert (=> b!7585360 m!8137212))

(assert (=> b!7585360 m!8137210))

(declare-fun m!8137214 () Bool)

(assert (=> b!7585360 m!8137214))

(declare-fun m!8137216 () Bool)

(assert (=> b!7585353 m!8137216))

(declare-fun m!8137218 () Bool)

(assert (=> b!7585354 m!8137218))

(declare-fun m!8137220 () Bool)

(assert (=> b!7585354 m!8137220))

(declare-fun m!8137222 () Bool)

(assert (=> b!7585354 m!8137222))

(declare-fun m!8137224 () Bool)

(assert (=> start!732258 m!8137224))

(declare-fun m!8137226 () Bool)

(assert (=> b!7585359 m!8137226))

(push 1)

(assert (not b!7585360))

(assert (not b!7585352))

(assert (not b!7585355))

(assert (not start!732258))

(assert (not b!7585359))

(assert (not b!7585358))

(assert (not b!7585354))

(assert tp_is_empty!50551)

(assert (not b!7585353))

(assert (not b!7585357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!695614 () Bool)

(declare-fun call!695620 () Bool)

(declare-fun call!695621 () Bool)

(assert (=> bm!695614 (= call!695620 call!695621)))

(declare-fun b!7585418 () Bool)

(declare-fun e!4514452 () Bool)

(declare-fun e!4514449 () Bool)

(assert (=> b!7585418 (= e!4514452 e!4514449)))

(declare-fun c!1399093 () Bool)

(assert (=> b!7585418 (= c!1399093 (is-Union!20098 r!22341))))

(declare-fun b!7585419 () Bool)

(declare-fun e!4514451 () Bool)

(assert (=> b!7585419 (= e!4514451 call!695620)))

(declare-fun b!7585420 () Bool)

(declare-fun e!4514450 () Bool)

(assert (=> b!7585420 (= e!4514450 e!4514452)))

(declare-fun c!1399094 () Bool)

(assert (=> b!7585420 (= c!1399094 (is-Star!20098 r!22341))))

(declare-fun b!7585422 () Bool)

(declare-fun res!3038631 () Bool)

(declare-fun e!4514454 () Bool)

(assert (=> b!7585422 (=> res!3038631 e!4514454)))

(assert (=> b!7585422 (= res!3038631 (not (is-Concat!28943 r!22341)))))

(assert (=> b!7585422 (= e!4514449 e!4514454)))

(declare-fun bm!695615 () Bool)

(assert (=> bm!695615 (= call!695621 (validRegex!10526 (ite c!1399094 (reg!20427 r!22341) (ite c!1399093 (regOne!40709 r!22341) (regTwo!40708 r!22341)))))))

(declare-fun bm!695616 () Bool)

(declare-fun call!695619 () Bool)

(assert (=> bm!695616 (= call!695619 (validRegex!10526 (ite c!1399093 (regTwo!40709 r!22341) (regOne!40708 r!22341))))))

(declare-fun b!7585423 () Bool)

(declare-fun e!4514453 () Bool)

(assert (=> b!7585423 (= e!4514453 call!695621)))

(declare-fun b!7585424 () Bool)

(declare-fun res!3038627 () Bool)

(declare-fun e!4514448 () Bool)

(assert (=> b!7585424 (=> (not res!3038627) (not e!4514448))))

(assert (=> b!7585424 (= res!3038627 call!695620)))

(assert (=> b!7585424 (= e!4514449 e!4514448)))

(declare-fun b!7585425 () Bool)

(assert (=> b!7585425 (= e!4514448 call!695619)))

(declare-fun b!7585426 () Bool)

(assert (=> b!7585426 (= e!4514452 e!4514453)))

(declare-fun res!3038628 () Bool)

(declare-fun nullable!8789 (Regex!20098) Bool)

(assert (=> b!7585426 (= res!3038628 (not (nullable!8789 (reg!20427 r!22341))))))

(assert (=> b!7585426 (=> (not res!3038628) (not e!4514453))))

(declare-fun d!2318885 () Bool)

(declare-fun res!3038630 () Bool)

(assert (=> d!2318885 (=> res!3038630 e!4514450)))

(assert (=> d!2318885 (= res!3038630 (is-ElementMatch!20098 r!22341))))

(assert (=> d!2318885 (= (validRegex!10526 r!22341) e!4514450)))

(declare-fun b!7585421 () Bool)

(assert (=> b!7585421 (= e!4514454 e!4514451)))

(declare-fun res!3038629 () Bool)

(assert (=> b!7585421 (=> (not res!3038629) (not e!4514451))))

(assert (=> b!7585421 (= res!3038629 call!695619)))

(assert (= (and d!2318885 (not res!3038630)) b!7585420))

(assert (= (and b!7585420 c!1399094) b!7585426))

(assert (= (and b!7585420 (not c!1399094)) b!7585418))

(assert (= (and b!7585426 res!3038628) b!7585423))

(assert (= (and b!7585418 c!1399093) b!7585424))

(assert (= (and b!7585418 (not c!1399093)) b!7585422))

(assert (= (and b!7585424 res!3038627) b!7585425))

(assert (= (and b!7585422 (not res!3038631)) b!7585421))

(assert (= (and b!7585421 res!3038629) b!7585419))

(assert (= (or b!7585425 b!7585421) bm!695616))

(assert (= (or b!7585424 b!7585419) bm!695614))

(assert (= (or b!7585423 bm!695614) bm!695615))

(declare-fun m!8137252 () Bool)

(assert (=> bm!695615 m!8137252))

(declare-fun m!8137254 () Bool)

(assert (=> bm!695616 m!8137254))

(declare-fun m!8137256 () Bool)

(assert (=> b!7585426 m!8137256))

(assert (=> start!732258 d!2318885))

(declare-fun bm!695617 () Bool)

(declare-fun call!695623 () Bool)

(declare-fun call!695624 () Bool)

(assert (=> bm!695617 (= call!695623 call!695624)))

(declare-fun b!7585427 () Bool)

(declare-fun e!4514459 () Bool)

(declare-fun e!4514456 () Bool)

(assert (=> b!7585427 (= e!4514459 e!4514456)))

(declare-fun c!1399095 () Bool)

(assert (=> b!7585427 (= c!1399095 (is-Union!20098 (regOne!40708 r!22341)))))

(declare-fun b!7585428 () Bool)

(declare-fun e!4514458 () Bool)

(assert (=> b!7585428 (= e!4514458 call!695623)))

(declare-fun b!7585429 () Bool)

(declare-fun e!4514457 () Bool)

(assert (=> b!7585429 (= e!4514457 e!4514459)))

(declare-fun c!1399096 () Bool)

(assert (=> b!7585429 (= c!1399096 (is-Star!20098 (regOne!40708 r!22341)))))

(declare-fun b!7585431 () Bool)

(declare-fun res!3038636 () Bool)

(declare-fun e!4514461 () Bool)

(assert (=> b!7585431 (=> res!3038636 e!4514461)))

(assert (=> b!7585431 (= res!3038636 (not (is-Concat!28943 (regOne!40708 r!22341))))))

(assert (=> b!7585431 (= e!4514456 e!4514461)))

(declare-fun bm!695618 () Bool)

(assert (=> bm!695618 (= call!695624 (validRegex!10526 (ite c!1399096 (reg!20427 (regOne!40708 r!22341)) (ite c!1399095 (regOne!40709 (regOne!40708 r!22341)) (regTwo!40708 (regOne!40708 r!22341))))))))

(declare-fun bm!695619 () Bool)

(declare-fun call!695622 () Bool)

(assert (=> bm!695619 (= call!695622 (validRegex!10526 (ite c!1399095 (regTwo!40709 (regOne!40708 r!22341)) (regOne!40708 (regOne!40708 r!22341)))))))

(declare-fun b!7585432 () Bool)

(declare-fun e!4514460 () Bool)

(assert (=> b!7585432 (= e!4514460 call!695624)))

(declare-fun b!7585433 () Bool)

(declare-fun res!3038632 () Bool)

(declare-fun e!4514455 () Bool)

(assert (=> b!7585433 (=> (not res!3038632) (not e!4514455))))

(assert (=> b!7585433 (= res!3038632 call!695623)))

(assert (=> b!7585433 (= e!4514456 e!4514455)))

(declare-fun b!7585434 () Bool)

(assert (=> b!7585434 (= e!4514455 call!695622)))

(declare-fun b!7585435 () Bool)

(assert (=> b!7585435 (= e!4514459 e!4514460)))

(declare-fun res!3038633 () Bool)

(assert (=> b!7585435 (= res!3038633 (not (nullable!8789 (reg!20427 (regOne!40708 r!22341)))))))

(assert (=> b!7585435 (=> (not res!3038633) (not e!4514460))))

(declare-fun d!2318891 () Bool)

(declare-fun res!3038635 () Bool)

(assert (=> d!2318891 (=> res!3038635 e!4514457)))

(assert (=> d!2318891 (= res!3038635 (is-ElementMatch!20098 (regOne!40708 r!22341)))))

(assert (=> d!2318891 (= (validRegex!10526 (regOne!40708 r!22341)) e!4514457)))

(declare-fun b!7585430 () Bool)

(assert (=> b!7585430 (= e!4514461 e!4514458)))

(declare-fun res!3038634 () Bool)

(assert (=> b!7585430 (=> (not res!3038634) (not e!4514458))))

(assert (=> b!7585430 (= res!3038634 call!695622)))

(assert (= (and d!2318891 (not res!3038635)) b!7585429))

(assert (= (and b!7585429 c!1399096) b!7585435))

(assert (= (and b!7585429 (not c!1399096)) b!7585427))

(assert (= (and b!7585435 res!3038633) b!7585432))

(assert (= (and b!7585427 c!1399095) b!7585433))

(assert (= (and b!7585427 (not c!1399095)) b!7585431))

(assert (= (and b!7585433 res!3038632) b!7585434))

(assert (= (and b!7585431 (not res!3038636)) b!7585430))

(assert (= (and b!7585430 res!3038634) b!7585428))

(assert (= (or b!7585434 b!7585430) bm!695619))

(assert (= (or b!7585433 b!7585428) bm!695617))

(assert (= (or b!7585432 bm!695617) bm!695618))

(declare-fun m!8137258 () Bool)

(assert (=> bm!695618 m!8137258))

(declare-fun m!8137260 () Bool)

(assert (=> bm!695619 m!8137260))

(declare-fun m!8137262 () Bool)

(assert (=> b!7585435 m!8137262))

(assert (=> b!7585360 d!2318891))

(declare-fun bs!1941206 () Bool)

(declare-fun d!2318895 () Bool)

(assert (= bs!1941206 (and d!2318895 b!7585360)))

(declare-fun lambda!467062 () Int)

(assert (=> bs!1941206 (= lambda!467062 lambda!467056)))

(assert (=> d!2318895 true))

(assert (=> d!2318895 true))

(assert (=> d!2318895 true))

(assert (=> d!2318895 (= (isDefined!13941 (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) Nil!72857 s!13436 s!13436)) (Exists!4330 lambda!467062))))

(declare-fun lt!2652933 () Unit!167152)

(declare-fun choose!58637 (Regex!20098 Regex!20098 List!72981) Unit!167152)

(assert (=> d!2318895 (= lt!2652933 (choose!58637 (regOne!40708 r!22341) (regTwo!40708 r!22341) s!13436))))

(assert (=> d!2318895 (validRegex!10526 (regOne!40708 r!22341))))

(assert (=> d!2318895 (= (lemmaFindConcatSeparationEquivalentToExists!3113 (regOne!40708 r!22341) (regTwo!40708 r!22341) s!13436) lt!2652933)))

(declare-fun bs!1941207 () Bool)

(assert (= bs!1941207 d!2318895))

(assert (=> bs!1941207 m!8137210))

(assert (=> bs!1941207 m!8137214))

(declare-fun m!8137264 () Bool)

(assert (=> bs!1941207 m!8137264))

(assert (=> bs!1941207 m!8137212))

(declare-fun m!8137266 () Bool)

(assert (=> bs!1941207 m!8137266))

(assert (=> bs!1941207 m!8137210))

(assert (=> b!7585360 d!2318895))

(declare-fun b!7585490 () Bool)

(declare-fun e!4514495 () Bool)

(assert (=> b!7585490 (= e!4514495 (matchR!9690 (regTwo!40708 r!22341) s!13436))))

(declare-fun b!7585491 () Bool)

(declare-fun res!3038669 () Bool)

(declare-fun e!4514496 () Bool)

(assert (=> b!7585491 (=> (not res!3038669) (not e!4514496))))

(declare-fun lt!2652940 () Option!17303)

(declare-fun get!25617 (Option!17303) tuple2!68918)

(assert (=> b!7585491 (= res!3038669 (matchR!9690 (regTwo!40708 r!22341) (_2!37762 (get!25617 lt!2652940))))))

(declare-fun b!7585492 () Bool)

(declare-fun res!3038667 () Bool)

(assert (=> b!7585492 (=> (not res!3038667) (not e!4514496))))

(assert (=> b!7585492 (= res!3038667 (matchR!9690 (regOne!40708 r!22341) (_1!37762 (get!25617 lt!2652940))))))

(declare-fun b!7585493 () Bool)

(declare-fun ++!17507 (List!72981 List!72981) List!72981)

(assert (=> b!7585493 (= e!4514496 (= (++!17507 (_1!37762 (get!25617 lt!2652940)) (_2!37762 (get!25617 lt!2652940))) s!13436))))

(declare-fun b!7585494 () Bool)

(declare-fun lt!2652941 () Unit!167152)

(declare-fun lt!2652942 () Unit!167152)

(assert (=> b!7585494 (= lt!2652941 lt!2652942)))

(assert (=> b!7585494 (= (++!17507 (++!17507 Nil!72857 (Cons!72857 (h!79305 s!13436) Nil!72857)) (t!387716 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3195 (List!72981 C!40522 List!72981 List!72981) Unit!167152)

(assert (=> b!7585494 (= lt!2652942 (lemmaMoveElementToOtherListKeepsConcatEq!3195 Nil!72857 (h!79305 s!13436) (t!387716 s!13436) s!13436))))

(declare-fun e!4514492 () Option!17303)

(assert (=> b!7585494 (= e!4514492 (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) (++!17507 Nil!72857 (Cons!72857 (h!79305 s!13436) Nil!72857)) (t!387716 s!13436) s!13436))))

(declare-fun b!7585495 () Bool)

(assert (=> b!7585495 (= e!4514492 None!17302)))

(declare-fun b!7585496 () Bool)

(declare-fun e!4514493 () Bool)

(assert (=> b!7585496 (= e!4514493 (not (isDefined!13941 lt!2652940)))))

(declare-fun d!2318897 () Bool)

(assert (=> d!2318897 e!4514493))

(declare-fun res!3038670 () Bool)

(assert (=> d!2318897 (=> res!3038670 e!4514493)))

(assert (=> d!2318897 (= res!3038670 e!4514496)))

(declare-fun res!3038668 () Bool)

(assert (=> d!2318897 (=> (not res!3038668) (not e!4514496))))

(assert (=> d!2318897 (= res!3038668 (isDefined!13941 lt!2652940))))

(declare-fun e!4514494 () Option!17303)

(assert (=> d!2318897 (= lt!2652940 e!4514494)))

(declare-fun c!1399110 () Bool)

(assert (=> d!2318897 (= c!1399110 e!4514495)))

(declare-fun res!3038671 () Bool)

(assert (=> d!2318897 (=> (not res!3038671) (not e!4514495))))

(assert (=> d!2318897 (= res!3038671 (matchR!9690 (regOne!40708 r!22341) Nil!72857))))

(assert (=> d!2318897 (validRegex!10526 (regOne!40708 r!22341))))

(assert (=> d!2318897 (= (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) Nil!72857 s!13436 s!13436) lt!2652940)))

(declare-fun b!7585497 () Bool)

(assert (=> b!7585497 (= e!4514494 (Some!17302 (tuple2!68919 Nil!72857 s!13436)))))

(declare-fun b!7585498 () Bool)

(assert (=> b!7585498 (= e!4514494 e!4514492)))

(declare-fun c!1399109 () Bool)

(assert (=> b!7585498 (= c!1399109 (is-Nil!72857 s!13436))))

(assert (= (and d!2318897 res!3038671) b!7585490))

(assert (= (and d!2318897 c!1399110) b!7585497))

(assert (= (and d!2318897 (not c!1399110)) b!7585498))

(assert (= (and b!7585498 c!1399109) b!7585495))

(assert (= (and b!7585498 (not c!1399109)) b!7585494))

(assert (= (and d!2318897 res!3038668) b!7585492))

(assert (= (and b!7585492 res!3038667) b!7585491))

(assert (= (and b!7585491 res!3038669) b!7585493))

(assert (= (and d!2318897 (not res!3038670)) b!7585496))

(declare-fun m!8137268 () Bool)

(assert (=> b!7585491 m!8137268))

(declare-fun m!8137270 () Bool)

(assert (=> b!7585491 m!8137270))

(assert (=> b!7585492 m!8137268))

(declare-fun m!8137272 () Bool)

(assert (=> b!7585492 m!8137272))

(assert (=> b!7585493 m!8137268))

(declare-fun m!8137274 () Bool)

(assert (=> b!7585493 m!8137274))

(declare-fun m!8137276 () Bool)

(assert (=> b!7585494 m!8137276))

(assert (=> b!7585494 m!8137276))

(declare-fun m!8137278 () Bool)

(assert (=> b!7585494 m!8137278))

(declare-fun m!8137280 () Bool)

(assert (=> b!7585494 m!8137280))

(assert (=> b!7585494 m!8137276))

(declare-fun m!8137282 () Bool)

(assert (=> b!7585494 m!8137282))

(declare-fun m!8137284 () Bool)

(assert (=> d!2318897 m!8137284))

(declare-fun m!8137286 () Bool)

(assert (=> d!2318897 m!8137286))

(assert (=> d!2318897 m!8137212))

(assert (=> b!7585496 m!8137284))

(declare-fun m!8137288 () Bool)

(assert (=> b!7585490 m!8137288))

(assert (=> b!7585360 d!2318897))

(declare-fun d!2318899 () Bool)

(declare-fun choose!58638 (Int) Bool)

(assert (=> d!2318899 (= (Exists!4330 lambda!467056) (choose!58638 lambda!467056))))

(declare-fun bs!1941208 () Bool)

(assert (= bs!1941208 d!2318899))

(declare-fun m!8137290 () Bool)

(assert (=> bs!1941208 m!8137290))

(assert (=> b!7585360 d!2318899))

(declare-fun d!2318901 () Bool)

(declare-fun isEmpty!41536 (Option!17303) Bool)

(assert (=> d!2318901 (= (isDefined!13941 (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) Nil!72857 s!13436 s!13436)) (not (isEmpty!41536 (findConcatSeparation!3355 (regOne!40708 r!22341) (regTwo!40708 r!22341) Nil!72857 s!13436 s!13436))))))

(declare-fun bs!1941209 () Bool)

(assert (= bs!1941209 d!2318901))

(assert (=> bs!1941209 m!8137210))

(declare-fun m!8137292 () Bool)

(assert (=> bs!1941209 m!8137292))

(assert (=> b!7585360 d!2318901))

(declare-fun d!2318903 () Bool)

(assert (=> d!2318903 (= (isEmpty!41534 s!13436) (is-Nil!72857 s!13436))))

(assert (=> b!7585359 d!2318903))

(declare-fun bs!1941213 () Bool)

(declare-fun b!7585549 () Bool)

(assert (= bs!1941213 (and b!7585549 b!7585360)))

(declare-fun lambda!467073 () Int)

(assert (=> bs!1941213 (not (= lambda!467073 lambda!467056))))

(declare-fun bs!1941214 () Bool)

(assert (= bs!1941214 (and b!7585549 d!2318895)))

(assert (=> bs!1941214 (not (= lambda!467073 lambda!467062))))

(assert (=> b!7585549 true))

(assert (=> b!7585549 true))

(declare-fun bs!1941215 () Bool)

(declare-fun b!7585543 () Bool)

(assert (= bs!1941215 (and b!7585543 b!7585360)))

(declare-fun lambda!467074 () Int)

(assert (=> bs!1941215 (not (= lambda!467074 lambda!467056))))

(declare-fun bs!1941216 () Bool)

(assert (= bs!1941216 (and b!7585543 d!2318895)))

(assert (=> bs!1941216 (not (= lambda!467074 lambda!467062))))

(declare-fun bs!1941217 () Bool)

(assert (= bs!1941217 (and b!7585543 b!7585549)))

(assert (=> bs!1941217 (not (= lambda!467074 lambda!467073))))

(assert (=> b!7585543 true))

(assert (=> b!7585543 true))

(declare-fun b!7585542 () Bool)

(declare-fun res!3038692 () Bool)

(declare-fun e!4514524 () Bool)

(assert (=> b!7585542 (=> res!3038692 e!4514524)))

(declare-fun call!695636 () Bool)

(assert (=> b!7585542 (= res!3038692 call!695636)))

(declare-fun e!4514527 () Bool)

(assert (=> b!7585542 (= e!4514527 e!4514524)))

(declare-fun call!695635 () Bool)

(assert (=> b!7585543 (= e!4514527 call!695635)))

(declare-fun d!2318905 () Bool)

(declare-fun c!1399125 () Bool)

(assert (=> d!2318905 (= c!1399125 (is-EmptyExpr!20098 r!22341))))

(declare-fun e!4514525 () Bool)

(assert (=> d!2318905 (= (matchRSpec!4411 r!22341 s!13436) e!4514525)))

(declare-fun b!7585544 () Bool)

(declare-fun e!4514528 () Bool)

(assert (=> b!7585544 (= e!4514528 (= s!13436 (Cons!72857 (c!1399087 r!22341) Nil!72857)))))

(declare-fun b!7585545 () Bool)

(declare-fun c!1399123 () Bool)

(assert (=> b!7585545 (= c!1399123 (is-ElementMatch!20098 r!22341))))

(declare-fun e!4514526 () Bool)

(assert (=> b!7585545 (= e!4514526 e!4514528)))

(declare-fun bm!695630 () Bool)

(assert (=> bm!695630 (= call!695636 (isEmpty!41534 s!13436))))

(declare-fun b!7585546 () Bool)

(declare-fun e!4514523 () Bool)

(assert (=> b!7585546 (= e!4514523 e!4514527)))

(declare-fun c!1399126 () Bool)

(assert (=> b!7585546 (= c!1399126 (is-Star!20098 r!22341))))

(declare-fun b!7585547 () Bool)

(declare-fun e!4514522 () Bool)

(assert (=> b!7585547 (= e!4514522 (matchRSpec!4411 (regTwo!40709 r!22341) s!13436))))

(declare-fun b!7585548 () Bool)

(declare-fun c!1399124 () Bool)

(assert (=> b!7585548 (= c!1399124 (is-Union!20098 r!22341))))

(assert (=> b!7585548 (= e!4514528 e!4514523)))

(assert (=> b!7585549 (= e!4514524 call!695635)))

(declare-fun bm!695631 () Bool)

(assert (=> bm!695631 (= call!695635 (Exists!4330 (ite c!1399126 lambda!467073 lambda!467074)))))

(declare-fun b!7585550 () Bool)

(assert (=> b!7585550 (= e!4514523 e!4514522)))

(declare-fun res!3038691 () Bool)

(assert (=> b!7585550 (= res!3038691 (matchRSpec!4411 (regOne!40709 r!22341) s!13436))))

(assert (=> b!7585550 (=> res!3038691 e!4514522)))

(declare-fun b!7585551 () Bool)

(assert (=> b!7585551 (= e!4514525 call!695636)))

(declare-fun b!7585552 () Bool)

(assert (=> b!7585552 (= e!4514525 e!4514526)))

(declare-fun res!3038693 () Bool)

(assert (=> b!7585552 (= res!3038693 (not (is-EmptyLang!20098 r!22341)))))

(assert (=> b!7585552 (=> (not res!3038693) (not e!4514526))))

(assert (= (and d!2318905 c!1399125) b!7585551))

(assert (= (and d!2318905 (not c!1399125)) b!7585552))

(assert (= (and b!7585552 res!3038693) b!7585545))

(assert (= (and b!7585545 c!1399123) b!7585544))

(assert (= (and b!7585545 (not c!1399123)) b!7585548))

(assert (= (and b!7585548 c!1399124) b!7585550))

(assert (= (and b!7585548 (not c!1399124)) b!7585546))

(assert (= (and b!7585550 (not res!3038691)) b!7585547))

(assert (= (and b!7585546 c!1399126) b!7585542))

(assert (= (and b!7585546 (not c!1399126)) b!7585543))

(assert (= (and b!7585542 (not res!3038692)) b!7585549))

(assert (= (or b!7585549 b!7585543) bm!695631))

(assert (= (or b!7585551 b!7585542) bm!695630))

(assert (=> bm!695630 m!8137226))

(declare-fun m!8137300 () Bool)

(assert (=> b!7585547 m!8137300))

(declare-fun m!8137302 () Bool)

(assert (=> bm!695631 m!8137302))

(declare-fun m!8137304 () Bool)

(assert (=> b!7585550 m!8137304))

(assert (=> b!7585354 d!2318905))

(declare-fun b!7585609 () Bool)

(declare-fun e!4514563 () Bool)

(declare-fun e!4514560 () Bool)

(assert (=> b!7585609 (= e!4514563 e!4514560)))

(declare-fun res!3038731 () Bool)

(assert (=> b!7585609 (=> (not res!3038731) (not e!4514560))))

(declare-fun lt!2652947 () Bool)

(assert (=> b!7585609 (= res!3038731 (not lt!2652947))))

(declare-fun b!7585610 () Bool)

(declare-fun e!4514558 () Bool)

(assert (=> b!7585610 (= e!4514560 e!4514558)))

(declare-fun res!3038729 () Bool)

(assert (=> b!7585610 (=> res!3038729 e!4514558)))

(declare-fun call!695641 () Bool)

(assert (=> b!7585610 (= res!3038729 call!695641)))

(declare-fun b!7585611 () Bool)

(declare-fun e!4514561 () Bool)

(declare-fun derivativeStep!5816 (Regex!20098 C!40522) Regex!20098)

(declare-fun head!15616 (List!72981) C!40522)

(declare-fun tail!15156 (List!72981) List!72981)

(assert (=> b!7585611 (= e!4514561 (matchR!9690 (derivativeStep!5816 r!22341 (head!15616 s!13436)) (tail!15156 s!13436)))))

(declare-fun d!2318909 () Bool)

(declare-fun e!4514559 () Bool)

(assert (=> d!2318909 e!4514559))

(declare-fun c!1399139 () Bool)

(assert (=> d!2318909 (= c!1399139 (is-EmptyExpr!20098 r!22341))))

(assert (=> d!2318909 (= lt!2652947 e!4514561)))

(declare-fun c!1399141 () Bool)

(assert (=> d!2318909 (= c!1399141 (isEmpty!41534 s!13436))))

(assert (=> d!2318909 (validRegex!10526 r!22341)))

(assert (=> d!2318909 (= (matchR!9690 r!22341 s!13436) lt!2652947)))

(declare-fun b!7585612 () Bool)

(declare-fun e!4514557 () Bool)

(assert (=> b!7585612 (= e!4514557 (not lt!2652947))))

(declare-fun b!7585613 () Bool)

(declare-fun res!3038730 () Bool)

(assert (=> b!7585613 (=> res!3038730 e!4514558)))

(assert (=> b!7585613 (= res!3038730 (not (isEmpty!41534 (tail!15156 s!13436))))))

(declare-fun b!7585614 () Bool)

(declare-fun res!3038727 () Bool)

(declare-fun e!4514562 () Bool)

(assert (=> b!7585614 (=> (not res!3038727) (not e!4514562))))

(assert (=> b!7585614 (= res!3038727 (not call!695641))))

(declare-fun b!7585615 () Bool)

(assert (=> b!7585615 (= e!4514559 (= lt!2652947 call!695641))))

(declare-fun b!7585616 () Bool)

(assert (=> b!7585616 (= e!4514561 (nullable!8789 r!22341))))

(declare-fun b!7585617 () Bool)

(declare-fun res!3038728 () Bool)

(assert (=> b!7585617 (=> res!3038728 e!4514563)))

(assert (=> b!7585617 (= res!3038728 (not (is-ElementMatch!20098 r!22341)))))

(assert (=> b!7585617 (= e!4514557 e!4514563)))

(declare-fun bm!695636 () Bool)

(assert (=> bm!695636 (= call!695641 (isEmpty!41534 s!13436))))

(declare-fun b!7585618 () Bool)

(assert (=> b!7585618 (= e!4514559 e!4514557)))

(declare-fun c!1399140 () Bool)

(assert (=> b!7585618 (= c!1399140 (is-EmptyLang!20098 r!22341))))

(declare-fun b!7585619 () Bool)

(assert (=> b!7585619 (= e!4514558 (not (= (head!15616 s!13436) (c!1399087 r!22341))))))

(declare-fun b!7585620 () Bool)

(declare-fun res!3038732 () Bool)

(assert (=> b!7585620 (=> (not res!3038732) (not e!4514562))))

(assert (=> b!7585620 (= res!3038732 (isEmpty!41534 (tail!15156 s!13436)))))

(declare-fun b!7585621 () Bool)

(declare-fun res!3038726 () Bool)

(assert (=> b!7585621 (=> res!3038726 e!4514563)))

(assert (=> b!7585621 (= res!3038726 e!4514562)))

(declare-fun res!3038733 () Bool)

(assert (=> b!7585621 (=> (not res!3038733) (not e!4514562))))

(assert (=> b!7585621 (= res!3038733 lt!2652947)))

(declare-fun b!7585622 () Bool)

(assert (=> b!7585622 (= e!4514562 (= (head!15616 s!13436) (c!1399087 r!22341)))))

(assert (= (and d!2318909 c!1399141) b!7585616))

(assert (= (and d!2318909 (not c!1399141)) b!7585611))

(assert (= (and d!2318909 c!1399139) b!7585615))

(assert (= (and d!2318909 (not c!1399139)) b!7585618))

(assert (= (and b!7585618 c!1399140) b!7585612))

(assert (= (and b!7585618 (not c!1399140)) b!7585617))

(assert (= (and b!7585617 (not res!3038728)) b!7585621))

(assert (= (and b!7585621 res!3038733) b!7585614))

(assert (= (and b!7585614 res!3038727) b!7585620))

(assert (= (and b!7585620 res!3038732) b!7585622))

(assert (= (and b!7585621 (not res!3038726)) b!7585609))

(assert (= (and b!7585609 res!3038731) b!7585610))

(assert (= (and b!7585610 (not res!3038729)) b!7585613))

(assert (= (and b!7585613 (not res!3038730)) b!7585619))

(assert (= (or b!7585615 b!7585610 b!7585614) bm!695636))

(declare-fun m!8137306 () Bool)

(assert (=> b!7585613 m!8137306))

(assert (=> b!7585613 m!8137306))

(declare-fun m!8137308 () Bool)

(assert (=> b!7585613 m!8137308))

(declare-fun m!8137310 () Bool)

(assert (=> b!7585622 m!8137310))

(assert (=> bm!695636 m!8137226))

(assert (=> b!7585611 m!8137310))

(assert (=> b!7585611 m!8137310))

(declare-fun m!8137312 () Bool)

(assert (=> b!7585611 m!8137312))

(assert (=> b!7585611 m!8137306))

(assert (=> b!7585611 m!8137312))

(assert (=> b!7585611 m!8137306))

(declare-fun m!8137314 () Bool)

(assert (=> b!7585611 m!8137314))

(assert (=> b!7585619 m!8137310))

(assert (=> b!7585620 m!8137306))

(assert (=> b!7585620 m!8137306))

(assert (=> b!7585620 m!8137308))

(declare-fun m!8137316 () Bool)

(assert (=> b!7585616 m!8137316))

(assert (=> d!2318909 m!8137226))

(assert (=> d!2318909 m!8137224))

(assert (=> b!7585354 d!2318909))

(declare-fun d!2318911 () Bool)

(assert (=> d!2318911 (= (matchR!9690 r!22341 s!13436) (matchRSpec!4411 r!22341 s!13436))))

(declare-fun lt!2652951 () Unit!167152)

(declare-fun choose!58639 (Regex!20098 List!72981) Unit!167152)

(assert (=> d!2318911 (= lt!2652951 (choose!58639 r!22341 s!13436))))

(assert (=> d!2318911 (validRegex!10526 r!22341)))

(assert (=> d!2318911 (= (mainMatchTheorem!4405 r!22341 s!13436) lt!2652951)))

(declare-fun bs!1941218 () Bool)

(assert (= bs!1941218 d!2318911))

(assert (=> bs!1941218 m!8137220))

(assert (=> bs!1941218 m!8137218))

(declare-fun m!8137318 () Bool)

(assert (=> bs!1941218 m!8137318))

(assert (=> bs!1941218 m!8137224))

(assert (=> b!7585354 d!2318911))

(declare-fun d!2318913 () Bool)

(declare-fun lostCauseFct!525 (Regex!20098) Bool)

(assert (=> d!2318913 (= (lostCause!1874 r!22341) (lostCauseFct!525 r!22341))))

(declare-fun bs!1941219 () Bool)

(assert (= bs!1941219 d!2318913))

(declare-fun m!8137328 () Bool)

(assert (=> bs!1941219 m!8137328))

(assert (=> b!7585353 d!2318913))

(declare-fun b!7585649 () Bool)

(declare-fun e!4514573 () Bool)

(declare-fun tp!2210741 () Bool)

(assert (=> b!7585649 (= e!4514573 tp!2210741)))

(declare-fun b!7585647 () Bool)

(assert (=> b!7585647 (= e!4514573 tp_is_empty!50551)))

(declare-fun b!7585648 () Bool)

(declare-fun tp!2210742 () Bool)

(declare-fun tp!2210740 () Bool)

(assert (=> b!7585648 (= e!4514573 (and tp!2210742 tp!2210740))))

(declare-fun b!7585650 () Bool)

(declare-fun tp!2210744 () Bool)

(declare-fun tp!2210743 () Bool)

(assert (=> b!7585650 (= e!4514573 (and tp!2210744 tp!2210743))))

(assert (=> b!7585355 (= tp!2210706 e!4514573)))

(assert (= (and b!7585355 (is-ElementMatch!20098 (regOne!40708 r!22341))) b!7585647))

(assert (= (and b!7585355 (is-Concat!28943 (regOne!40708 r!22341))) b!7585648))

(assert (= (and b!7585355 (is-Star!20098 (regOne!40708 r!22341))) b!7585649))

(assert (= (and b!7585355 (is-Union!20098 (regOne!40708 r!22341))) b!7585650))

(declare-fun b!7585653 () Bool)

(declare-fun e!4514574 () Bool)

(declare-fun tp!2210746 () Bool)

(assert (=> b!7585653 (= e!4514574 tp!2210746)))

(declare-fun b!7585651 () Bool)

(assert (=> b!7585651 (= e!4514574 tp_is_empty!50551)))

(declare-fun b!7585652 () Bool)

(declare-fun tp!2210747 () Bool)

(declare-fun tp!2210745 () Bool)

(assert (=> b!7585652 (= e!4514574 (and tp!2210747 tp!2210745))))

(declare-fun b!7585654 () Bool)

(declare-fun tp!2210749 () Bool)

(declare-fun tp!2210748 () Bool)

(assert (=> b!7585654 (= e!4514574 (and tp!2210749 tp!2210748))))

(assert (=> b!7585355 (= tp!2210708 e!4514574)))

(assert (= (and b!7585355 (is-ElementMatch!20098 (regTwo!40708 r!22341))) b!7585651))

(assert (= (and b!7585355 (is-Concat!28943 (regTwo!40708 r!22341))) b!7585652))

(assert (= (and b!7585355 (is-Star!20098 (regTwo!40708 r!22341))) b!7585653))

(assert (= (and b!7585355 (is-Union!20098 (regTwo!40708 r!22341))) b!7585654))

(declare-fun b!7585657 () Bool)

(declare-fun e!4514575 () Bool)

(declare-fun tp!2210751 () Bool)

(assert (=> b!7585657 (= e!4514575 tp!2210751)))

(declare-fun b!7585655 () Bool)

(assert (=> b!7585655 (= e!4514575 tp_is_empty!50551)))

(declare-fun b!7585656 () Bool)

(declare-fun tp!2210752 () Bool)

(declare-fun tp!2210750 () Bool)

(assert (=> b!7585656 (= e!4514575 (and tp!2210752 tp!2210750))))

(declare-fun b!7585658 () Bool)

(declare-fun tp!2210754 () Bool)

(declare-fun tp!2210753 () Bool)

(assert (=> b!7585658 (= e!4514575 (and tp!2210754 tp!2210753))))

(assert (=> b!7585358 (= tp!2210709 e!4514575)))

(assert (= (and b!7585358 (is-ElementMatch!20098 (reg!20427 r!22341))) b!7585655))

(assert (= (and b!7585358 (is-Concat!28943 (reg!20427 r!22341))) b!7585656))

(assert (= (and b!7585358 (is-Star!20098 (reg!20427 r!22341))) b!7585657))

(assert (= (and b!7585358 (is-Union!20098 (reg!20427 r!22341))) b!7585658))

(declare-fun b!7585661 () Bool)

(declare-fun e!4514576 () Bool)

(declare-fun tp!2210756 () Bool)

(assert (=> b!7585661 (= e!4514576 tp!2210756)))

(declare-fun b!7585659 () Bool)

(assert (=> b!7585659 (= e!4514576 tp_is_empty!50551)))

(declare-fun b!7585660 () Bool)

(declare-fun tp!2210757 () Bool)

(declare-fun tp!2210755 () Bool)

(assert (=> b!7585660 (= e!4514576 (and tp!2210757 tp!2210755))))

(declare-fun b!7585662 () Bool)

(declare-fun tp!2210759 () Bool)

(declare-fun tp!2210758 () Bool)

(assert (=> b!7585662 (= e!4514576 (and tp!2210759 tp!2210758))))

(assert (=> b!7585357 (= tp!2210707 e!4514576)))

(assert (= (and b!7585357 (is-ElementMatch!20098 (regOne!40709 r!22341))) b!7585659))

(assert (= (and b!7585357 (is-Concat!28943 (regOne!40709 r!22341))) b!7585660))

(assert (= (and b!7585357 (is-Star!20098 (regOne!40709 r!22341))) b!7585661))

(assert (= (and b!7585357 (is-Union!20098 (regOne!40709 r!22341))) b!7585662))

(declare-fun b!7585665 () Bool)

(declare-fun e!4514577 () Bool)

(declare-fun tp!2210761 () Bool)

(assert (=> b!7585665 (= e!4514577 tp!2210761)))

(declare-fun b!7585663 () Bool)

(assert (=> b!7585663 (= e!4514577 tp_is_empty!50551)))

(declare-fun b!7585664 () Bool)

(declare-fun tp!2210762 () Bool)

(declare-fun tp!2210760 () Bool)

(assert (=> b!7585664 (= e!4514577 (and tp!2210762 tp!2210760))))

(declare-fun b!7585666 () Bool)

(declare-fun tp!2210764 () Bool)

(declare-fun tp!2210763 () Bool)

(assert (=> b!7585666 (= e!4514577 (and tp!2210764 tp!2210763))))

(assert (=> b!7585357 (= tp!2210710 e!4514577)))

(assert (= (and b!7585357 (is-ElementMatch!20098 (regTwo!40709 r!22341))) b!7585663))

(assert (= (and b!7585357 (is-Concat!28943 (regTwo!40709 r!22341))) b!7585664))

(assert (= (and b!7585357 (is-Star!20098 (regTwo!40709 r!22341))) b!7585665))

(assert (= (and b!7585357 (is-Union!20098 (regTwo!40709 r!22341))) b!7585666))

(declare-fun b!7585671 () Bool)

(declare-fun e!4514580 () Bool)

(declare-fun tp!2210767 () Bool)

(assert (=> b!7585671 (= e!4514580 (and tp_is_empty!50551 tp!2210767))))

(assert (=> b!7585352 (= tp!2210711 e!4514580)))

(assert (= (and b!7585352 (is-Cons!72857 (t!387716 s!13436))) b!7585671))

(push 1)

(assert (not d!2318909))

(assert (not d!2318913))

(assert (not d!2318901))

(assert (not d!2318899))

(assert (not b!7585613))

(assert (not bm!695619))

(assert (not b!7585492))

(assert (not b!7585649))

(assert (not b!7585616))

(assert (not b!7585652))

(assert (not b!7585664))

(assert (not d!2318895))

(assert (not b!7585648))

(assert (not b!7585619))

(assert tp_is_empty!50551)

(assert (not b!7585653))

(assert (not b!7585496))

(assert (not bm!695636))

(assert (not b!7585494))

(assert (not bm!695630))

(assert (not bm!695631))

(assert (not b!7585665))

(assert (not b!7585662))

(assert (not d!2318897))

(assert (not b!7585658))

(assert (not b!7585654))

(assert (not b!7585622))

(assert (not b!7585493))

(assert (not bm!695616))

(assert (not b!7585656))

(assert (not b!7585650))

(assert (not b!7585490))

(assert (not bm!695618))

(assert (not bm!695615))

(assert (not b!7585661))

(assert (not b!7585435))

(assert (not b!7585620))

(assert (not b!7585660))

(assert (not b!7585547))

(assert (not d!2318911))

(assert (not b!7585550))

(assert (not b!7585657))

(assert (not b!7585671))

(assert (not b!7585666))

(assert (not b!7585426))

(assert (not b!7585491))

(assert (not b!7585611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

