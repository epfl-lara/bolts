; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732110 () Bool)

(assert start!732110)

(declare-fun res!3037823 () Bool)

(declare-fun e!4513371 () Bool)

(assert (=> start!732110 (=> (not res!3037823) (not e!4513371))))

(declare-datatypes ((C!40502 0))(
  ( (C!40503 (val!30691 Int)) )
))
(declare-datatypes ((Regex!20088 0))(
  ( (ElementMatch!20088 (c!1398757 C!40502)) (Concat!28933 (regOne!40688 Regex!20088) (regTwo!40688 Regex!20088)) (EmptyExpr!20088) (Star!20088 (reg!20417 Regex!20088)) (EmptyLang!20088) (Union!20088 (regOne!40689 Regex!20088) (regTwo!40689 Regex!20088)) )
))
(declare-fun r!22341 () Regex!20088)

(declare-fun validRegex!10516 (Regex!20088) Bool)

(assert (=> start!732110 (= res!3037823 (validRegex!10516 r!22341))))

(assert (=> start!732110 e!4513371))

(declare-fun e!4513373 () Bool)

(assert (=> start!732110 e!4513373))

(declare-fun e!4513372 () Bool)

(assert (=> start!732110 e!4513372))

(declare-fun b!7583270 () Bool)

(declare-fun e!4513375 () Bool)

(declare-fun e!4513370 () Bool)

(assert (=> b!7583270 (= e!4513375 e!4513370)))

(declare-fun res!3037819 () Bool)

(assert (=> b!7583270 (=> (not res!3037819) (not e!4513370))))

(assert (=> b!7583270 (= res!3037819 (validRegex!10516 (regOne!40689 r!22341)))))

(declare-fun b!7583271 () Bool)

(declare-fun tp!2209971 () Bool)

(declare-fun tp!2209974 () Bool)

(assert (=> b!7583271 (= e!4513373 (and tp!2209971 tp!2209974))))

(declare-fun b!7583272 () Bool)

(declare-fun res!3037821 () Bool)

(assert (=> b!7583272 (=> (not res!3037821) (not e!4513371))))

(declare-fun lostCause!1864 (Regex!20088) Bool)

(assert (=> b!7583272 (= res!3037821 (lostCause!1864 r!22341))))

(declare-fun b!7583273 () Bool)

(declare-fun tp!2209973 () Bool)

(declare-fun tp!2209972 () Bool)

(assert (=> b!7583273 (= e!4513373 (and tp!2209973 tp!2209972))))

(declare-fun b!7583274 () Bool)

(declare-fun tp_is_empty!50531 () Bool)

(assert (=> b!7583274 (= e!4513373 tp_is_empty!50531)))

(declare-fun b!7583275 () Bool)

(declare-fun tp!2209975 () Bool)

(assert (=> b!7583275 (= e!4513372 (and tp_is_empty!50531 tp!2209975))))

(declare-fun b!7583276 () Bool)

(declare-fun tp!2209970 () Bool)

(assert (=> b!7583276 (= e!4513373 tp!2209970)))

(declare-fun b!7583277 () Bool)

(declare-fun e!4513374 () Bool)

(assert (=> b!7583277 (= e!4513371 (not e!4513374))))

(declare-fun res!3037820 () Bool)

(assert (=> b!7583277 (=> res!3037820 e!4513374)))

(assert (=> b!7583277 (= res!3037820 (or (is-EmptyLang!20088 r!22341) (is-EmptyExpr!20088 r!22341) (is-ElementMatch!20088 r!22341) (not (is-Union!20088 r!22341))))))

(declare-datatypes ((List!72971 0))(
  ( (Nil!72847) (Cons!72847 (h!79295 C!40502) (t!387706 List!72971)) )
))
(declare-fun s!13436 () List!72971)

(declare-fun matchR!9680 (Regex!20088 List!72971) Bool)

(declare-fun matchRSpec!4401 (Regex!20088 List!72971) Bool)

(assert (=> b!7583277 (= (matchR!9680 r!22341 s!13436) (matchRSpec!4401 r!22341 s!13436))))

(declare-datatypes ((Unit!167132 0))(
  ( (Unit!167133) )
))
(declare-fun lt!2652766 () Unit!167132)

(declare-fun mainMatchTheorem!4395 (Regex!20088 List!72971) Unit!167132)

(assert (=> b!7583277 (= lt!2652766 (mainMatchTheorem!4395 r!22341 s!13436))))

(declare-fun b!7583278 () Bool)

(assert (=> b!7583278 (= e!4513370 (validRegex!10516 (regTwo!40689 r!22341)))))

(declare-fun b!7583279 () Bool)

(declare-fun res!3037824 () Bool)

(assert (=> b!7583279 (=> (not res!3037824) (not e!4513371))))

(declare-fun isEmpty!41522 (List!72971) Bool)

(assert (=> b!7583279 (= res!3037824 (not (isEmpty!41522 s!13436)))))

(declare-fun b!7583280 () Bool)

(assert (=> b!7583280 (= e!4513374 e!4513375)))

(declare-fun res!3037822 () Bool)

(assert (=> b!7583280 (=> res!3037822 e!4513375)))

(assert (=> b!7583280 (= res!3037822 (not (matchR!9680 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)) s!13436)))))

(assert (=> b!7583280 (not (matchR!9680 (regTwo!40689 r!22341) s!13436))))

(declare-fun lt!2652765 () Unit!167132)

(declare-fun lemmaLostCauseCannotMatch!86 (Regex!20088 List!72971) Unit!167132)

(assert (=> b!7583280 (= lt!2652765 (lemmaLostCauseCannotMatch!86 (regTwo!40689 r!22341) s!13436))))

(assert (=> b!7583280 (not (matchR!9680 (regOne!40689 r!22341) s!13436))))

(declare-fun lt!2652767 () Unit!167132)

(assert (=> b!7583280 (= lt!2652767 (lemmaLostCauseCannotMatch!86 (regOne!40689 r!22341) s!13436))))

(assert (= (and start!732110 res!3037823) b!7583272))

(assert (= (and b!7583272 res!3037821) b!7583279))

(assert (= (and b!7583279 res!3037824) b!7583277))

(assert (= (and b!7583277 (not res!3037820)) b!7583280))

(assert (= (and b!7583280 (not res!3037822)) b!7583270))

(assert (= (and b!7583270 res!3037819) b!7583278))

(assert (= (and start!732110 (is-ElementMatch!20088 r!22341)) b!7583274))

(assert (= (and start!732110 (is-Concat!28933 r!22341)) b!7583273))

(assert (= (and start!732110 (is-Star!20088 r!22341)) b!7583276))

(assert (= (and start!732110 (is-Union!20088 r!22341)) b!7583271))

(assert (= (and start!732110 (is-Cons!72847 s!13436)) b!7583275))

(declare-fun m!8136574 () Bool)

(assert (=> b!7583272 m!8136574))

(declare-fun m!8136576 () Bool)

(assert (=> b!7583278 m!8136576))

(declare-fun m!8136578 () Bool)

(assert (=> b!7583270 m!8136578))

(declare-fun m!8136580 () Bool)

(assert (=> start!732110 m!8136580))

(declare-fun m!8136582 () Bool)

(assert (=> b!7583280 m!8136582))

(declare-fun m!8136584 () Bool)

(assert (=> b!7583280 m!8136584))

(declare-fun m!8136586 () Bool)

(assert (=> b!7583280 m!8136586))

(declare-fun m!8136588 () Bool)

(assert (=> b!7583280 m!8136588))

(declare-fun m!8136590 () Bool)

(assert (=> b!7583280 m!8136590))

(declare-fun m!8136592 () Bool)

(assert (=> b!7583279 m!8136592))

(declare-fun m!8136594 () Bool)

(assert (=> b!7583277 m!8136594))

(declare-fun m!8136596 () Bool)

(assert (=> b!7583277 m!8136596))

(declare-fun m!8136598 () Bool)

(assert (=> b!7583277 m!8136598))

(push 1)

(assert (not b!7583272))

(assert (not b!7583279))

(assert tp_is_empty!50531)

(assert (not b!7583271))

(assert (not start!732110))

(assert (not b!7583277))

(assert (not b!7583278))

(assert (not b!7583280))

(assert (not b!7583270))

(assert (not b!7583275))

(assert (not b!7583273))

(assert (not b!7583276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!695376 () Bool)

(declare-fun call!695383 () Bool)

(declare-fun c!1398768 () Bool)

(assert (=> bm!695376 (= call!695383 (validRegex!10516 (ite c!1398768 (regTwo!40689 (regOne!40689 r!22341)) (regOne!40688 (regOne!40689 r!22341)))))))

(declare-fun b!7583346 () Bool)

(declare-fun e!4513418 () Bool)

(assert (=> b!7583346 (= e!4513418 call!695383)))

(declare-fun b!7583347 () Bool)

(declare-fun e!4513422 () Bool)

(declare-fun e!4513423 () Bool)

(assert (=> b!7583347 (= e!4513422 e!4513423)))

(declare-fun res!3037859 () Bool)

(assert (=> b!7583347 (=> (not res!3037859) (not e!4513423))))

(assert (=> b!7583347 (= res!3037859 call!695383)))

(declare-fun d!2318688 () Bool)

(declare-fun res!3037861 () Bool)

(declare-fun e!4513419 () Bool)

(assert (=> d!2318688 (=> res!3037861 e!4513419)))

(assert (=> d!2318688 (= res!3037861 (is-ElementMatch!20088 (regOne!40689 r!22341)))))

(assert (=> d!2318688 (= (validRegex!10516 (regOne!40689 r!22341)) e!4513419)))

(declare-fun b!7583348 () Bool)

(declare-fun e!4513421 () Bool)

(assert (=> b!7583348 (= e!4513419 e!4513421)))

(declare-fun c!1398767 () Bool)

(assert (=> b!7583348 (= c!1398767 (is-Star!20088 (regOne!40689 r!22341)))))

(declare-fun b!7583349 () Bool)

(declare-fun e!4513424 () Bool)

(declare-fun call!695381 () Bool)

(assert (=> b!7583349 (= e!4513424 call!695381)))

(declare-fun b!7583350 () Bool)

(declare-fun call!695382 () Bool)

(assert (=> b!7583350 (= e!4513423 call!695382)))

(declare-fun b!7583351 () Bool)

(declare-fun res!3037860 () Bool)

(assert (=> b!7583351 (=> res!3037860 e!4513422)))

(assert (=> b!7583351 (= res!3037860 (not (is-Concat!28933 (regOne!40689 r!22341))))))

(declare-fun e!4513420 () Bool)

(assert (=> b!7583351 (= e!4513420 e!4513422)))

(declare-fun bm!695377 () Bool)

(assert (=> bm!695377 (= call!695382 call!695381)))

(declare-fun b!7583352 () Bool)

(assert (=> b!7583352 (= e!4513421 e!4513420)))

(assert (=> b!7583352 (= c!1398768 (is-Union!20088 (regOne!40689 r!22341)))))

(declare-fun bm!695378 () Bool)

(assert (=> bm!695378 (= call!695381 (validRegex!10516 (ite c!1398767 (reg!20417 (regOne!40689 r!22341)) (ite c!1398768 (regOne!40689 (regOne!40689 r!22341)) (regTwo!40688 (regOne!40689 r!22341))))))))

(declare-fun b!7583353 () Bool)

(declare-fun res!3037862 () Bool)

(assert (=> b!7583353 (=> (not res!3037862) (not e!4513418))))

(assert (=> b!7583353 (= res!3037862 call!695382)))

(assert (=> b!7583353 (= e!4513420 e!4513418)))

(declare-fun b!7583354 () Bool)

(assert (=> b!7583354 (= e!4513421 e!4513424)))

(declare-fun res!3037863 () Bool)

(declare-fun nullable!8781 (Regex!20088) Bool)

(assert (=> b!7583354 (= res!3037863 (not (nullable!8781 (reg!20417 (regOne!40689 r!22341)))))))

(assert (=> b!7583354 (=> (not res!3037863) (not e!4513424))))

(assert (= (and d!2318688 (not res!3037861)) b!7583348))

(assert (= (and b!7583348 c!1398767) b!7583354))

(assert (= (and b!7583348 (not c!1398767)) b!7583352))

(assert (= (and b!7583354 res!3037863) b!7583349))

(assert (= (and b!7583352 c!1398768) b!7583353))

(assert (= (and b!7583352 (not c!1398768)) b!7583351))

(assert (= (and b!7583353 res!3037862) b!7583346))

(assert (= (and b!7583351 (not res!3037860)) b!7583347))

(assert (= (and b!7583347 res!3037859) b!7583350))

(assert (= (or b!7583346 b!7583347) bm!695376))

(assert (= (or b!7583353 b!7583350) bm!695377))

(assert (= (or b!7583349 bm!695377) bm!695378))

(declare-fun m!8136628 () Bool)

(assert (=> bm!695376 m!8136628))

(declare-fun m!8136630 () Bool)

(assert (=> bm!695378 m!8136630))

(declare-fun m!8136632 () Bool)

(assert (=> b!7583354 m!8136632))

(assert (=> b!7583270 d!2318688))

(declare-fun d!2318694 () Bool)

(assert (=> d!2318694 (= (isEmpty!41522 s!13436) (is-Nil!72847 s!13436))))

(assert (=> b!7583279 d!2318694))

(declare-fun d!2318696 () Bool)

(assert (=> d!2318696 (not (matchR!9680 (regOne!40689 r!22341) s!13436))))

(declare-fun lt!2652779 () Unit!167132)

(declare-fun choose!58625 (Regex!20088 List!72971) Unit!167132)

(assert (=> d!2318696 (= lt!2652779 (choose!58625 (regOne!40689 r!22341) s!13436))))

(assert (=> d!2318696 (validRegex!10516 (regOne!40689 r!22341))))

(assert (=> d!2318696 (= (lemmaLostCauseCannotMatch!86 (regOne!40689 r!22341) s!13436) lt!2652779)))

(declare-fun bs!1941132 () Bool)

(assert (= bs!1941132 d!2318696))

(assert (=> bs!1941132 m!8136590))

(declare-fun m!8136634 () Bool)

(assert (=> bs!1941132 m!8136634))

(assert (=> bs!1941132 m!8136578))

(assert (=> b!7583280 d!2318696))

(declare-fun b!7583433 () Bool)

(declare-fun e!4513471 () Bool)

(declare-fun head!15608 (List!72971) C!40502)

(assert (=> b!7583433 (= e!4513471 (not (= (head!15608 s!13436) (c!1398757 (regTwo!40689 r!22341)))))))

(declare-fun b!7583434 () Bool)

(declare-fun res!3037910 () Bool)

(declare-fun e!4513475 () Bool)

(assert (=> b!7583434 (=> (not res!3037910) (not e!4513475))))

(declare-fun call!695400 () Bool)

(assert (=> b!7583434 (= res!3037910 (not call!695400))))

(declare-fun b!7583435 () Bool)

(assert (=> b!7583435 (= e!4513475 (= (head!15608 s!13436) (c!1398757 (regTwo!40689 r!22341))))))

(declare-fun b!7583436 () Bool)

(declare-fun res!3037914 () Bool)

(assert (=> b!7583436 (=> (not res!3037914) (not e!4513475))))

(declare-fun tail!15148 (List!72971) List!72971)

(assert (=> b!7583436 (= res!3037914 (isEmpty!41522 (tail!15148 s!13436)))))

(declare-fun bm!695395 () Bool)

(assert (=> bm!695395 (= call!695400 (isEmpty!41522 s!13436))))

(declare-fun b!7583437 () Bool)

(declare-fun res!3037912 () Bool)

(declare-fun e!4513472 () Bool)

(assert (=> b!7583437 (=> res!3037912 e!4513472)))

(assert (=> b!7583437 (= res!3037912 (not (is-ElementMatch!20088 (regTwo!40689 r!22341))))))

(declare-fun e!4513473 () Bool)

(assert (=> b!7583437 (= e!4513473 e!4513472)))

(declare-fun b!7583438 () Bool)

(declare-fun e!4513477 () Bool)

(assert (=> b!7583438 (= e!4513472 e!4513477)))

(declare-fun res!3037915 () Bool)

(assert (=> b!7583438 (=> (not res!3037915) (not e!4513477))))

(declare-fun lt!2652784 () Bool)

(assert (=> b!7583438 (= res!3037915 (not lt!2652784))))

(declare-fun b!7583439 () Bool)

(declare-fun e!4513474 () Bool)

(assert (=> b!7583439 (= e!4513474 (nullable!8781 (regTwo!40689 r!22341)))))

(declare-fun d!2318698 () Bool)

(declare-fun e!4513476 () Bool)

(assert (=> d!2318698 e!4513476))

(declare-fun c!1398785 () Bool)

(assert (=> d!2318698 (= c!1398785 (is-EmptyExpr!20088 (regTwo!40689 r!22341)))))

(assert (=> d!2318698 (= lt!2652784 e!4513474)))

(declare-fun c!1398786 () Bool)

(assert (=> d!2318698 (= c!1398786 (isEmpty!41522 s!13436))))

(assert (=> d!2318698 (validRegex!10516 (regTwo!40689 r!22341))))

(assert (=> d!2318698 (= (matchR!9680 (regTwo!40689 r!22341) s!13436) lt!2652784)))

(declare-fun b!7583440 () Bool)

(declare-fun res!3037917 () Bool)

(assert (=> b!7583440 (=> res!3037917 e!4513472)))

(assert (=> b!7583440 (= res!3037917 e!4513475)))

(declare-fun res!3037911 () Bool)

(assert (=> b!7583440 (=> (not res!3037911) (not e!4513475))))

(assert (=> b!7583440 (= res!3037911 lt!2652784)))

(declare-fun b!7583441 () Bool)

(assert (=> b!7583441 (= e!4513473 (not lt!2652784))))

(declare-fun b!7583442 () Bool)

(declare-fun res!3037916 () Bool)

(assert (=> b!7583442 (=> res!3037916 e!4513471)))

(assert (=> b!7583442 (= res!3037916 (not (isEmpty!41522 (tail!15148 s!13436))))))

(declare-fun b!7583443 () Bool)

(assert (=> b!7583443 (= e!4513476 e!4513473)))

(declare-fun c!1398787 () Bool)

(assert (=> b!7583443 (= c!1398787 (is-EmptyLang!20088 (regTwo!40689 r!22341)))))

(declare-fun b!7583444 () Bool)

(assert (=> b!7583444 (= e!4513476 (= lt!2652784 call!695400))))

(declare-fun b!7583445 () Bool)

(declare-fun derivativeStep!5808 (Regex!20088 C!40502) Regex!20088)

(assert (=> b!7583445 (= e!4513474 (matchR!9680 (derivativeStep!5808 (regTwo!40689 r!22341) (head!15608 s!13436)) (tail!15148 s!13436)))))

(declare-fun b!7583446 () Bool)

(assert (=> b!7583446 (= e!4513477 e!4513471)))

(declare-fun res!3037913 () Bool)

(assert (=> b!7583446 (=> res!3037913 e!4513471)))

(assert (=> b!7583446 (= res!3037913 call!695400)))

(assert (= (and d!2318698 c!1398786) b!7583439))

(assert (= (and d!2318698 (not c!1398786)) b!7583445))

(assert (= (and d!2318698 c!1398785) b!7583444))

(assert (= (and d!2318698 (not c!1398785)) b!7583443))

(assert (= (and b!7583443 c!1398787) b!7583441))

(assert (= (and b!7583443 (not c!1398787)) b!7583437))

(assert (= (and b!7583437 (not res!3037912)) b!7583440))

(assert (= (and b!7583440 res!3037911) b!7583434))

(assert (= (and b!7583434 res!3037910) b!7583436))

(assert (= (and b!7583436 res!3037914) b!7583435))

(assert (= (and b!7583440 (not res!3037917)) b!7583438))

(assert (= (and b!7583438 res!3037915) b!7583446))

(assert (= (and b!7583446 (not res!3037913)) b!7583442))

(assert (= (and b!7583442 (not res!3037916)) b!7583433))

(assert (= (or b!7583444 b!7583434 b!7583446) bm!695395))

(declare-fun m!8136648 () Bool)

(assert (=> b!7583445 m!8136648))

(assert (=> b!7583445 m!8136648))

(declare-fun m!8136650 () Bool)

(assert (=> b!7583445 m!8136650))

(declare-fun m!8136652 () Bool)

(assert (=> b!7583445 m!8136652))

(assert (=> b!7583445 m!8136650))

(assert (=> b!7583445 m!8136652))

(declare-fun m!8136654 () Bool)

(assert (=> b!7583445 m!8136654))

(assert (=> b!7583435 m!8136648))

(assert (=> b!7583442 m!8136652))

(assert (=> b!7583442 m!8136652))

(declare-fun m!8136656 () Bool)

(assert (=> b!7583442 m!8136656))

(assert (=> d!2318698 m!8136592))

(assert (=> d!2318698 m!8136576))

(assert (=> b!7583436 m!8136652))

(assert (=> b!7583436 m!8136652))

(assert (=> b!7583436 m!8136656))

(assert (=> b!7583433 m!8136648))

(assert (=> bm!695395 m!8136592))

(declare-fun m!8136658 () Bool)

(assert (=> b!7583439 m!8136658))

(assert (=> b!7583280 d!2318698))

(declare-fun d!2318704 () Bool)

(assert (=> d!2318704 (not (matchR!9680 (regTwo!40689 r!22341) s!13436))))

(declare-fun lt!2652785 () Unit!167132)

(assert (=> d!2318704 (= lt!2652785 (choose!58625 (regTwo!40689 r!22341) s!13436))))

(assert (=> d!2318704 (validRegex!10516 (regTwo!40689 r!22341))))

(assert (=> d!2318704 (= (lemmaLostCauseCannotMatch!86 (regTwo!40689 r!22341) s!13436) lt!2652785)))

(declare-fun bs!1941133 () Bool)

(assert (= bs!1941133 d!2318704))

(assert (=> bs!1941133 m!8136582))

(declare-fun m!8136660 () Bool)

(assert (=> bs!1941133 m!8136660))

(assert (=> bs!1941133 m!8136576))

(assert (=> b!7583280 d!2318704))

(declare-fun b!7583447 () Bool)

(declare-fun e!4513478 () Bool)

(assert (=> b!7583447 (= e!4513478 (not (= (head!15608 s!13436) (c!1398757 (regOne!40689 r!22341)))))))

(declare-fun b!7583448 () Bool)

(declare-fun res!3037918 () Bool)

(declare-fun e!4513482 () Bool)

(assert (=> b!7583448 (=> (not res!3037918) (not e!4513482))))

(declare-fun call!695401 () Bool)

(assert (=> b!7583448 (= res!3037918 (not call!695401))))

(declare-fun b!7583449 () Bool)

(assert (=> b!7583449 (= e!4513482 (= (head!15608 s!13436) (c!1398757 (regOne!40689 r!22341))))))

(declare-fun b!7583450 () Bool)

(declare-fun res!3037922 () Bool)

(assert (=> b!7583450 (=> (not res!3037922) (not e!4513482))))

(assert (=> b!7583450 (= res!3037922 (isEmpty!41522 (tail!15148 s!13436)))))

(declare-fun bm!695396 () Bool)

(assert (=> bm!695396 (= call!695401 (isEmpty!41522 s!13436))))

(declare-fun b!7583451 () Bool)

(declare-fun res!3037920 () Bool)

(declare-fun e!4513479 () Bool)

(assert (=> b!7583451 (=> res!3037920 e!4513479)))

(assert (=> b!7583451 (= res!3037920 (not (is-ElementMatch!20088 (regOne!40689 r!22341))))))

(declare-fun e!4513480 () Bool)

(assert (=> b!7583451 (= e!4513480 e!4513479)))

(declare-fun b!7583452 () Bool)

(declare-fun e!4513484 () Bool)

(assert (=> b!7583452 (= e!4513479 e!4513484)))

(declare-fun res!3037923 () Bool)

(assert (=> b!7583452 (=> (not res!3037923) (not e!4513484))))

(declare-fun lt!2652786 () Bool)

(assert (=> b!7583452 (= res!3037923 (not lt!2652786))))

(declare-fun b!7583453 () Bool)

(declare-fun e!4513481 () Bool)

(assert (=> b!7583453 (= e!4513481 (nullable!8781 (regOne!40689 r!22341)))))

(declare-fun d!2318706 () Bool)

(declare-fun e!4513483 () Bool)

(assert (=> d!2318706 e!4513483))

(declare-fun c!1398788 () Bool)

(assert (=> d!2318706 (= c!1398788 (is-EmptyExpr!20088 (regOne!40689 r!22341)))))

(assert (=> d!2318706 (= lt!2652786 e!4513481)))

(declare-fun c!1398789 () Bool)

(assert (=> d!2318706 (= c!1398789 (isEmpty!41522 s!13436))))

(assert (=> d!2318706 (validRegex!10516 (regOne!40689 r!22341))))

(assert (=> d!2318706 (= (matchR!9680 (regOne!40689 r!22341) s!13436) lt!2652786)))

(declare-fun b!7583454 () Bool)

(declare-fun res!3037925 () Bool)

(assert (=> b!7583454 (=> res!3037925 e!4513479)))

(assert (=> b!7583454 (= res!3037925 e!4513482)))

(declare-fun res!3037919 () Bool)

(assert (=> b!7583454 (=> (not res!3037919) (not e!4513482))))

(assert (=> b!7583454 (= res!3037919 lt!2652786)))

(declare-fun b!7583455 () Bool)

(assert (=> b!7583455 (= e!4513480 (not lt!2652786))))

(declare-fun b!7583456 () Bool)

(declare-fun res!3037924 () Bool)

(assert (=> b!7583456 (=> res!3037924 e!4513478)))

(assert (=> b!7583456 (= res!3037924 (not (isEmpty!41522 (tail!15148 s!13436))))))

(declare-fun b!7583457 () Bool)

(assert (=> b!7583457 (= e!4513483 e!4513480)))

(declare-fun c!1398790 () Bool)

(assert (=> b!7583457 (= c!1398790 (is-EmptyLang!20088 (regOne!40689 r!22341)))))

(declare-fun b!7583458 () Bool)

(assert (=> b!7583458 (= e!4513483 (= lt!2652786 call!695401))))

(declare-fun b!7583459 () Bool)

(assert (=> b!7583459 (= e!4513481 (matchR!9680 (derivativeStep!5808 (regOne!40689 r!22341) (head!15608 s!13436)) (tail!15148 s!13436)))))

(declare-fun b!7583460 () Bool)

(assert (=> b!7583460 (= e!4513484 e!4513478)))

(declare-fun res!3037921 () Bool)

(assert (=> b!7583460 (=> res!3037921 e!4513478)))

(assert (=> b!7583460 (= res!3037921 call!695401)))

(assert (= (and d!2318706 c!1398789) b!7583453))

(assert (= (and d!2318706 (not c!1398789)) b!7583459))

(assert (= (and d!2318706 c!1398788) b!7583458))

(assert (= (and d!2318706 (not c!1398788)) b!7583457))

(assert (= (and b!7583457 c!1398790) b!7583455))

(assert (= (and b!7583457 (not c!1398790)) b!7583451))

(assert (= (and b!7583451 (not res!3037920)) b!7583454))

(assert (= (and b!7583454 res!3037919) b!7583448))

(assert (= (and b!7583448 res!3037918) b!7583450))

(assert (= (and b!7583450 res!3037922) b!7583449))

(assert (= (and b!7583454 (not res!3037925)) b!7583452))

(assert (= (and b!7583452 res!3037923) b!7583460))

(assert (= (and b!7583460 (not res!3037921)) b!7583456))

(assert (= (and b!7583456 (not res!3037924)) b!7583447))

(assert (= (or b!7583458 b!7583448 b!7583460) bm!695396))

(assert (=> b!7583459 m!8136648))

(assert (=> b!7583459 m!8136648))

(declare-fun m!8136662 () Bool)

(assert (=> b!7583459 m!8136662))

(assert (=> b!7583459 m!8136652))

(assert (=> b!7583459 m!8136662))

(assert (=> b!7583459 m!8136652))

(declare-fun m!8136664 () Bool)

(assert (=> b!7583459 m!8136664))

(assert (=> b!7583449 m!8136648))

(assert (=> b!7583456 m!8136652))

(assert (=> b!7583456 m!8136652))

(assert (=> b!7583456 m!8136656))

(assert (=> d!2318706 m!8136592))

(assert (=> d!2318706 m!8136578))

(assert (=> b!7583450 m!8136652))

(assert (=> b!7583450 m!8136652))

(assert (=> b!7583450 m!8136656))

(assert (=> b!7583447 m!8136648))

(assert (=> bm!695396 m!8136592))

(declare-fun m!8136666 () Bool)

(assert (=> b!7583453 m!8136666))

(assert (=> b!7583280 d!2318706))

(declare-fun b!7583475 () Bool)

(declare-fun e!4513492 () Bool)

(assert (=> b!7583475 (= e!4513492 (not (= (head!15608 s!13436) (c!1398757 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341))))))))

(declare-fun b!7583476 () Bool)

(declare-fun res!3037934 () Bool)

(declare-fun e!4513496 () Bool)

(assert (=> b!7583476 (=> (not res!3037934) (not e!4513496))))

(declare-fun call!695403 () Bool)

(assert (=> b!7583476 (= res!3037934 (not call!695403))))

(declare-fun b!7583477 () Bool)

(assert (=> b!7583477 (= e!4513496 (= (head!15608 s!13436) (c!1398757 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)))))))

(declare-fun b!7583478 () Bool)

(declare-fun res!3037938 () Bool)

(assert (=> b!7583478 (=> (not res!3037938) (not e!4513496))))

(assert (=> b!7583478 (= res!3037938 (isEmpty!41522 (tail!15148 s!13436)))))

(declare-fun bm!695398 () Bool)

(assert (=> bm!695398 (= call!695403 (isEmpty!41522 s!13436))))

(declare-fun b!7583479 () Bool)

(declare-fun res!3037936 () Bool)

(declare-fun e!4513493 () Bool)

(assert (=> b!7583479 (=> res!3037936 e!4513493)))

(assert (=> b!7583479 (= res!3037936 (not (is-ElementMatch!20088 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)))))))

(declare-fun e!4513494 () Bool)

(assert (=> b!7583479 (= e!4513494 e!4513493)))

(declare-fun b!7583480 () Bool)

(declare-fun e!4513498 () Bool)

(assert (=> b!7583480 (= e!4513493 e!4513498)))

(declare-fun res!3037939 () Bool)

(assert (=> b!7583480 (=> (not res!3037939) (not e!4513498))))

(declare-fun lt!2652788 () Bool)

(assert (=> b!7583480 (= res!3037939 (not lt!2652788))))

(declare-fun b!7583481 () Bool)

(declare-fun e!4513495 () Bool)

(assert (=> b!7583481 (= e!4513495 (nullable!8781 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341))))))

(declare-fun d!2318708 () Bool)

(declare-fun e!4513497 () Bool)

(assert (=> d!2318708 e!4513497))

(declare-fun c!1398794 () Bool)

(assert (=> d!2318708 (= c!1398794 (is-EmptyExpr!20088 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341))))))

(assert (=> d!2318708 (= lt!2652788 e!4513495)))

(declare-fun c!1398795 () Bool)

(assert (=> d!2318708 (= c!1398795 (isEmpty!41522 s!13436))))

(assert (=> d!2318708 (validRegex!10516 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)))))

(assert (=> d!2318708 (= (matchR!9680 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)) s!13436) lt!2652788)))

(declare-fun b!7583482 () Bool)

(declare-fun res!3037941 () Bool)

(assert (=> b!7583482 (=> res!3037941 e!4513493)))

(assert (=> b!7583482 (= res!3037941 e!4513496)))

(declare-fun res!3037935 () Bool)

(assert (=> b!7583482 (=> (not res!3037935) (not e!4513496))))

(assert (=> b!7583482 (= res!3037935 lt!2652788)))

(declare-fun b!7583483 () Bool)

(assert (=> b!7583483 (= e!4513494 (not lt!2652788))))

(declare-fun b!7583484 () Bool)

(declare-fun res!3037940 () Bool)

(assert (=> b!7583484 (=> res!3037940 e!4513492)))

(assert (=> b!7583484 (= res!3037940 (not (isEmpty!41522 (tail!15148 s!13436))))))

(declare-fun b!7583485 () Bool)

(assert (=> b!7583485 (= e!4513497 e!4513494)))

(declare-fun c!1398796 () Bool)

(assert (=> b!7583485 (= c!1398796 (is-EmptyLang!20088 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341))))))

(declare-fun b!7583486 () Bool)

(assert (=> b!7583486 (= e!4513497 (= lt!2652788 call!695403))))

(declare-fun b!7583487 () Bool)

(assert (=> b!7583487 (= e!4513495 (matchR!9680 (derivativeStep!5808 (Union!20088 (regOne!40689 r!22341) (regTwo!40689 r!22341)) (head!15608 s!13436)) (tail!15148 s!13436)))))

(declare-fun b!7583488 () Bool)

(assert (=> b!7583488 (= e!4513498 e!4513492)))

(declare-fun res!3037937 () Bool)

(assert (=> b!7583488 (=> res!3037937 e!4513492)))

(assert (=> b!7583488 (= res!3037937 call!695403)))

(assert (= (and d!2318708 c!1398795) b!7583481))

(assert (= (and d!2318708 (not c!1398795)) b!7583487))

(assert (= (and d!2318708 c!1398794) b!7583486))

(assert (= (and d!2318708 (not c!1398794)) b!7583485))

(assert (= (and b!7583485 c!1398796) b!7583483))

(assert (= (and b!7583485 (not c!1398796)) b!7583479))

(assert (= (and b!7583479 (not res!3037936)) b!7583482))

(assert (= (and b!7583482 res!3037935) b!7583476))

(assert (= (and b!7583476 res!3037934) b!7583478))

(assert (= (and b!7583478 res!3037938) b!7583477))

(assert (= (and b!7583482 (not res!3037941)) b!7583480))

(assert (= (and b!7583480 res!3037939) b!7583488))

(assert (= (and b!7583488 (not res!3037937)) b!7583484))

(assert (= (and b!7583484 (not res!3037940)) b!7583475))

(assert (= (or b!7583486 b!7583476 b!7583488) bm!695398))

(assert (=> b!7583487 m!8136648))

(assert (=> b!7583487 m!8136648))

(declare-fun m!8136680 () Bool)

(assert (=> b!7583487 m!8136680))

(assert (=> b!7583487 m!8136652))

(assert (=> b!7583487 m!8136680))

(assert (=> b!7583487 m!8136652))

(declare-fun m!8136682 () Bool)

(assert (=> b!7583487 m!8136682))

(assert (=> b!7583477 m!8136648))

(assert (=> b!7583484 m!8136652))

(assert (=> b!7583484 m!8136652))

(assert (=> b!7583484 m!8136656))

(assert (=> d!2318708 m!8136592))

(declare-fun m!8136684 () Bool)

(assert (=> d!2318708 m!8136684))

(assert (=> b!7583478 m!8136652))

(assert (=> b!7583478 m!8136652))

(assert (=> b!7583478 m!8136656))

(assert (=> b!7583475 m!8136648))

(assert (=> bm!695398 m!8136592))

(declare-fun m!8136686 () Bool)

(assert (=> b!7583481 m!8136686))

(assert (=> b!7583280 d!2318708))

(declare-fun bm!695399 () Bool)

(declare-fun call!695406 () Bool)

(declare-fun c!1398798 () Bool)

(assert (=> bm!695399 (= call!695406 (validRegex!10516 (ite c!1398798 (regTwo!40689 (regTwo!40689 r!22341)) (regOne!40688 (regTwo!40689 r!22341)))))))

(declare-fun b!7583489 () Bool)

(declare-fun e!4513499 () Bool)

(assert (=> b!7583489 (= e!4513499 call!695406)))

(declare-fun b!7583490 () Bool)

(declare-fun e!4513503 () Bool)

(declare-fun e!4513504 () Bool)

(assert (=> b!7583490 (= e!4513503 e!4513504)))

(declare-fun res!3037942 () Bool)

(assert (=> b!7583490 (=> (not res!3037942) (not e!4513504))))

(assert (=> b!7583490 (= res!3037942 call!695406)))

(declare-fun d!2318712 () Bool)

(declare-fun res!3037944 () Bool)

(declare-fun e!4513500 () Bool)

(assert (=> d!2318712 (=> res!3037944 e!4513500)))

(assert (=> d!2318712 (= res!3037944 (is-ElementMatch!20088 (regTwo!40689 r!22341)))))

(assert (=> d!2318712 (= (validRegex!10516 (regTwo!40689 r!22341)) e!4513500)))

(declare-fun b!7583491 () Bool)

(declare-fun e!4513502 () Bool)

(assert (=> b!7583491 (= e!4513500 e!4513502)))

(declare-fun c!1398797 () Bool)

(assert (=> b!7583491 (= c!1398797 (is-Star!20088 (regTwo!40689 r!22341)))))

(declare-fun b!7583492 () Bool)

(declare-fun e!4513505 () Bool)

(declare-fun call!695404 () Bool)

(assert (=> b!7583492 (= e!4513505 call!695404)))

(declare-fun b!7583493 () Bool)

(declare-fun call!695405 () Bool)

(assert (=> b!7583493 (= e!4513504 call!695405)))

(declare-fun b!7583494 () Bool)

(declare-fun res!3037943 () Bool)

(assert (=> b!7583494 (=> res!3037943 e!4513503)))

(assert (=> b!7583494 (= res!3037943 (not (is-Concat!28933 (regTwo!40689 r!22341))))))

(declare-fun e!4513501 () Bool)

(assert (=> b!7583494 (= e!4513501 e!4513503)))

(declare-fun bm!695400 () Bool)

(assert (=> bm!695400 (= call!695405 call!695404)))

(declare-fun b!7583495 () Bool)

(assert (=> b!7583495 (= e!4513502 e!4513501)))

(assert (=> b!7583495 (= c!1398798 (is-Union!20088 (regTwo!40689 r!22341)))))

(declare-fun bm!695401 () Bool)

(assert (=> bm!695401 (= call!695404 (validRegex!10516 (ite c!1398797 (reg!20417 (regTwo!40689 r!22341)) (ite c!1398798 (regOne!40689 (regTwo!40689 r!22341)) (regTwo!40688 (regTwo!40689 r!22341))))))))

(declare-fun b!7583496 () Bool)

(declare-fun res!3037945 () Bool)

(assert (=> b!7583496 (=> (not res!3037945) (not e!4513499))))

(assert (=> b!7583496 (= res!3037945 call!695405)))

(assert (=> b!7583496 (= e!4513501 e!4513499)))

(declare-fun b!7583497 () Bool)

(assert (=> b!7583497 (= e!4513502 e!4513505)))

(declare-fun res!3037946 () Bool)

(assert (=> b!7583497 (= res!3037946 (not (nullable!8781 (reg!20417 (regTwo!40689 r!22341)))))))

(assert (=> b!7583497 (=> (not res!3037946) (not e!4513505))))

(assert (= (and d!2318712 (not res!3037944)) b!7583491))

(assert (= (and b!7583491 c!1398797) b!7583497))

(assert (= (and b!7583491 (not c!1398797)) b!7583495))

(assert (= (and b!7583497 res!3037946) b!7583492))

(assert (= (and b!7583495 c!1398798) b!7583496))

(assert (= (and b!7583495 (not c!1398798)) b!7583494))

(assert (= (and b!7583496 res!3037945) b!7583489))

(assert (= (and b!7583494 (not res!3037943)) b!7583490))

(assert (= (and b!7583490 res!3037942) b!7583493))

(assert (= (or b!7583489 b!7583490) bm!695399))

(assert (= (or b!7583496 b!7583493) bm!695400))

(assert (= (or b!7583492 bm!695400) bm!695401))

(declare-fun m!8136688 () Bool)

(assert (=> bm!695399 m!8136688))

(declare-fun m!8136690 () Bool)

(assert (=> bm!695401 m!8136690))

(declare-fun m!8136692 () Bool)

(assert (=> b!7583497 m!8136692))

(assert (=> b!7583278 d!2318712))

(declare-fun bm!695402 () Bool)

(declare-fun call!695409 () Bool)

(declare-fun c!1398800 () Bool)

(assert (=> bm!695402 (= call!695409 (validRegex!10516 (ite c!1398800 (regTwo!40689 r!22341) (regOne!40688 r!22341))))))

(declare-fun b!7583498 () Bool)

(declare-fun e!4513506 () Bool)

(assert (=> b!7583498 (= e!4513506 call!695409)))

(declare-fun b!7583499 () Bool)

(declare-fun e!4513510 () Bool)

(declare-fun e!4513511 () Bool)

(assert (=> b!7583499 (= e!4513510 e!4513511)))

(declare-fun res!3037947 () Bool)

(assert (=> b!7583499 (=> (not res!3037947) (not e!4513511))))

(assert (=> b!7583499 (= res!3037947 call!695409)))

(declare-fun d!2318714 () Bool)

(declare-fun res!3037949 () Bool)

(declare-fun e!4513507 () Bool)

(assert (=> d!2318714 (=> res!3037949 e!4513507)))

(assert (=> d!2318714 (= res!3037949 (is-ElementMatch!20088 r!22341))))

(assert (=> d!2318714 (= (validRegex!10516 r!22341) e!4513507)))

(declare-fun b!7583500 () Bool)

(declare-fun e!4513509 () Bool)

(assert (=> b!7583500 (= e!4513507 e!4513509)))

(declare-fun c!1398799 () Bool)

(assert (=> b!7583500 (= c!1398799 (is-Star!20088 r!22341))))

(declare-fun b!7583501 () Bool)

(declare-fun e!4513512 () Bool)

(declare-fun call!695407 () Bool)

(assert (=> b!7583501 (= e!4513512 call!695407)))

(declare-fun b!7583502 () Bool)

(declare-fun call!695408 () Bool)

(assert (=> b!7583502 (= e!4513511 call!695408)))

(declare-fun b!7583503 () Bool)

(declare-fun res!3037948 () Bool)

(assert (=> b!7583503 (=> res!3037948 e!4513510)))

(assert (=> b!7583503 (= res!3037948 (not (is-Concat!28933 r!22341)))))

(declare-fun e!4513508 () Bool)

(assert (=> b!7583503 (= e!4513508 e!4513510)))

(declare-fun bm!695403 () Bool)

(assert (=> bm!695403 (= call!695408 call!695407)))

(declare-fun b!7583504 () Bool)

(assert (=> b!7583504 (= e!4513509 e!4513508)))

(assert (=> b!7583504 (= c!1398800 (is-Union!20088 r!22341))))

(declare-fun bm!695404 () Bool)

(assert (=> bm!695404 (= call!695407 (validRegex!10516 (ite c!1398799 (reg!20417 r!22341) (ite c!1398800 (regOne!40689 r!22341) (regTwo!40688 r!22341)))))))

(declare-fun b!7583505 () Bool)

(declare-fun res!3037950 () Bool)

(assert (=> b!7583505 (=> (not res!3037950) (not e!4513506))))

(assert (=> b!7583505 (= res!3037950 call!695408)))

(assert (=> b!7583505 (= e!4513508 e!4513506)))

(declare-fun b!7583506 () Bool)

(assert (=> b!7583506 (= e!4513509 e!4513512)))

(declare-fun res!3037951 () Bool)

(assert (=> b!7583506 (= res!3037951 (not (nullable!8781 (reg!20417 r!22341))))))

(assert (=> b!7583506 (=> (not res!3037951) (not e!4513512))))

(assert (= (and d!2318714 (not res!3037949)) b!7583500))

(assert (= (and b!7583500 c!1398799) b!7583506))

(assert (= (and b!7583500 (not c!1398799)) b!7583504))

(assert (= (and b!7583506 res!3037951) b!7583501))

(assert (= (and b!7583504 c!1398800) b!7583505))

(assert (= (and b!7583504 (not c!1398800)) b!7583503))

(assert (= (and b!7583505 res!3037950) b!7583498))

(assert (= (and b!7583503 (not res!3037948)) b!7583499))

(assert (= (and b!7583499 res!3037947) b!7583502))

(assert (= (or b!7583498 b!7583499) bm!695402))

(assert (= (or b!7583505 b!7583502) bm!695403))

(assert (= (or b!7583501 bm!695403) bm!695404))

(declare-fun m!8136694 () Bool)

(assert (=> bm!695402 m!8136694))

(declare-fun m!8136696 () Bool)

(assert (=> bm!695404 m!8136696))

(declare-fun m!8136698 () Bool)

(assert (=> b!7583506 m!8136698))

(assert (=> start!732110 d!2318714))

(declare-fun d!2318716 () Bool)

(declare-fun lostCauseFct!518 (Regex!20088) Bool)

(assert (=> d!2318716 (= (lostCause!1864 r!22341) (lostCauseFct!518 r!22341))))

(declare-fun bs!1941134 () Bool)

(assert (= bs!1941134 d!2318716))

(declare-fun m!8136700 () Bool)

(assert (=> bs!1941134 m!8136700))

(assert (=> b!7583272 d!2318716))

(declare-fun b!7583507 () Bool)

(declare-fun e!4513513 () Bool)

(assert (=> b!7583507 (= e!4513513 (not (= (head!15608 s!13436) (c!1398757 r!22341))))))

(declare-fun b!7583508 () Bool)

(declare-fun res!3037952 () Bool)

(declare-fun e!4513517 () Bool)

(assert (=> b!7583508 (=> (not res!3037952) (not e!4513517))))

(declare-fun call!695410 () Bool)

(assert (=> b!7583508 (= res!3037952 (not call!695410))))

(declare-fun b!7583509 () Bool)

(assert (=> b!7583509 (= e!4513517 (= (head!15608 s!13436) (c!1398757 r!22341)))))

(declare-fun b!7583510 () Bool)

(declare-fun res!3037956 () Bool)

(assert (=> b!7583510 (=> (not res!3037956) (not e!4513517))))

(assert (=> b!7583510 (= res!3037956 (isEmpty!41522 (tail!15148 s!13436)))))

(declare-fun bm!695405 () Bool)

(assert (=> bm!695405 (= call!695410 (isEmpty!41522 s!13436))))

(declare-fun b!7583511 () Bool)

(declare-fun res!3037954 () Bool)

(declare-fun e!4513514 () Bool)

(assert (=> b!7583511 (=> res!3037954 e!4513514)))

(assert (=> b!7583511 (= res!3037954 (not (is-ElementMatch!20088 r!22341)))))

(declare-fun e!4513515 () Bool)

(assert (=> b!7583511 (= e!4513515 e!4513514)))

(declare-fun b!7583512 () Bool)

(declare-fun e!4513519 () Bool)

(assert (=> b!7583512 (= e!4513514 e!4513519)))

(declare-fun res!3037957 () Bool)

(assert (=> b!7583512 (=> (not res!3037957) (not e!4513519))))

(declare-fun lt!2652789 () Bool)

(assert (=> b!7583512 (= res!3037957 (not lt!2652789))))

(declare-fun b!7583513 () Bool)

(declare-fun e!4513516 () Bool)

(assert (=> b!7583513 (= e!4513516 (nullable!8781 r!22341))))

(declare-fun d!2318718 () Bool)

(declare-fun e!4513518 () Bool)

(assert (=> d!2318718 e!4513518))

(declare-fun c!1398801 () Bool)

(assert (=> d!2318718 (= c!1398801 (is-EmptyExpr!20088 r!22341))))

(assert (=> d!2318718 (= lt!2652789 e!4513516)))

(declare-fun c!1398802 () Bool)

(assert (=> d!2318718 (= c!1398802 (isEmpty!41522 s!13436))))

(assert (=> d!2318718 (validRegex!10516 r!22341)))

(assert (=> d!2318718 (= (matchR!9680 r!22341 s!13436) lt!2652789)))

(declare-fun b!7583514 () Bool)

(declare-fun res!3037959 () Bool)

(assert (=> b!7583514 (=> res!3037959 e!4513514)))

(assert (=> b!7583514 (= res!3037959 e!4513517)))

(declare-fun res!3037953 () Bool)

(assert (=> b!7583514 (=> (not res!3037953) (not e!4513517))))

(assert (=> b!7583514 (= res!3037953 lt!2652789)))

(declare-fun b!7583515 () Bool)

(assert (=> b!7583515 (= e!4513515 (not lt!2652789))))

(declare-fun b!7583516 () Bool)

(declare-fun res!3037958 () Bool)

(assert (=> b!7583516 (=> res!3037958 e!4513513)))

(assert (=> b!7583516 (= res!3037958 (not (isEmpty!41522 (tail!15148 s!13436))))))

(declare-fun b!7583517 () Bool)

(assert (=> b!7583517 (= e!4513518 e!4513515)))

(declare-fun c!1398803 () Bool)

(assert (=> b!7583517 (= c!1398803 (is-EmptyLang!20088 r!22341))))

(declare-fun b!7583518 () Bool)

(assert (=> b!7583518 (= e!4513518 (= lt!2652789 call!695410))))

(declare-fun b!7583519 () Bool)

(assert (=> b!7583519 (= e!4513516 (matchR!9680 (derivativeStep!5808 r!22341 (head!15608 s!13436)) (tail!15148 s!13436)))))

(declare-fun b!7583520 () Bool)

(assert (=> b!7583520 (= e!4513519 e!4513513)))

(declare-fun res!3037955 () Bool)

(assert (=> b!7583520 (=> res!3037955 e!4513513)))

(assert (=> b!7583520 (= res!3037955 call!695410)))

(assert (= (and d!2318718 c!1398802) b!7583513))

(assert (= (and d!2318718 (not c!1398802)) b!7583519))

(assert (= (and d!2318718 c!1398801) b!7583518))

(assert (= (and d!2318718 (not c!1398801)) b!7583517))

(assert (= (and b!7583517 c!1398803) b!7583515))

(assert (= (and b!7583517 (not c!1398803)) b!7583511))

(assert (= (and b!7583511 (not res!3037954)) b!7583514))

(assert (= (and b!7583514 res!3037953) b!7583508))

(assert (= (and b!7583508 res!3037952) b!7583510))

(assert (= (and b!7583510 res!3037956) b!7583509))

(assert (= (and b!7583514 (not res!3037959)) b!7583512))

(assert (= (and b!7583512 res!3037957) b!7583520))

(assert (= (and b!7583520 (not res!3037955)) b!7583516))

(assert (= (and b!7583516 (not res!3037958)) b!7583507))

(assert (= (or b!7583518 b!7583508 b!7583520) bm!695405))

(assert (=> b!7583519 m!8136648))

(assert (=> b!7583519 m!8136648))

(declare-fun m!8136702 () Bool)

(assert (=> b!7583519 m!8136702))

(assert (=> b!7583519 m!8136652))

(assert (=> b!7583519 m!8136702))

(assert (=> b!7583519 m!8136652))

(declare-fun m!8136704 () Bool)

(assert (=> b!7583519 m!8136704))

(assert (=> b!7583509 m!8136648))

(assert (=> b!7583516 m!8136652))

(assert (=> b!7583516 m!8136652))

(assert (=> b!7583516 m!8136656))

(assert (=> d!2318718 m!8136592))

(assert (=> d!2318718 m!8136580))

(assert (=> b!7583510 m!8136652))

(assert (=> b!7583510 m!8136652))

(assert (=> b!7583510 m!8136656))

(assert (=> b!7583507 m!8136648))

(assert (=> bm!695405 m!8136592))

(declare-fun m!8136706 () Bool)

(assert (=> b!7583513 m!8136706))

(assert (=> b!7583277 d!2318718))

(declare-fun b!7583579 () Bool)

(assert (=> b!7583579 true))

(assert (=> b!7583579 true))

(declare-fun bs!1941135 () Bool)

(declare-fun b!7583584 () Bool)

(assert (= bs!1941135 (and b!7583584 b!7583579)))

(declare-fun lambda!467003 () Int)

(declare-fun lambda!467002 () Int)

(assert (=> bs!1941135 (not (= lambda!467003 lambda!467002))))

(assert (=> b!7583584 true))

(assert (=> b!7583584 true))

(declare-fun b!7583575 () Bool)

(declare-fun e!4513556 () Bool)

(assert (=> b!7583575 (= e!4513556 (matchRSpec!4401 (regTwo!40689 r!22341) s!13436))))

(declare-fun b!7583576 () Bool)

(declare-fun e!4513553 () Bool)

(assert (=> b!7583576 (= e!4513553 e!4513556)))

(declare-fun res!3037984 () Bool)

(assert (=> b!7583576 (= res!3037984 (matchRSpec!4401 (regOne!40689 r!22341) s!13436))))

(assert (=> b!7583576 (=> res!3037984 e!4513556)))

(declare-fun bm!695410 () Bool)

(declare-fun call!695416 () Bool)

(declare-fun c!1398821 () Bool)

(declare-fun Exists!4322 (Int) Bool)

(assert (=> bm!695410 (= call!695416 (Exists!4322 (ite c!1398821 lambda!467002 lambda!467003)))))

(declare-fun b!7583577 () Bool)

(declare-fun e!4513554 () Bool)

(assert (=> b!7583577 (= e!4513554 (= s!13436 (Cons!72847 (c!1398757 r!22341) Nil!72847)))))

(declare-fun b!7583578 () Bool)

(declare-fun e!4513555 () Bool)

(declare-fun call!695415 () Bool)

(assert (=> b!7583578 (= e!4513555 call!695415)))

(declare-fun e!4513557 () Bool)

(assert (=> b!7583579 (= e!4513557 call!695416)))

(declare-fun b!7583580 () Bool)

(declare-fun e!4513558 () Bool)

(assert (=> b!7583580 (= e!4513555 e!4513558)))

(declare-fun res!3037983 () Bool)

(assert (=> b!7583580 (= res!3037983 (not (is-EmptyLang!20088 r!22341)))))

(assert (=> b!7583580 (=> (not res!3037983) (not e!4513558))))

(declare-fun b!7583581 () Bool)

(declare-fun c!1398823 () Bool)

(assert (=> b!7583581 (= c!1398823 (is-Union!20088 r!22341))))

(assert (=> b!7583581 (= e!4513554 e!4513553)))

(declare-fun d!2318720 () Bool)

(declare-fun c!1398822 () Bool)

(assert (=> d!2318720 (= c!1398822 (is-EmptyExpr!20088 r!22341))))

(assert (=> d!2318720 (= (matchRSpec!4401 r!22341 s!13436) e!4513555)))

(declare-fun b!7583582 () Bool)

(declare-fun e!4513552 () Bool)

(assert (=> b!7583582 (= e!4513553 e!4513552)))

(assert (=> b!7583582 (= c!1398821 (is-Star!20088 r!22341))))

(declare-fun b!7583583 () Bool)

(declare-fun res!3037982 () Bool)

(assert (=> b!7583583 (=> res!3037982 e!4513557)))

(assert (=> b!7583583 (= res!3037982 call!695415)))

(assert (=> b!7583583 (= e!4513552 e!4513557)))

(declare-fun bm!695411 () Bool)

(assert (=> bm!695411 (= call!695415 (isEmpty!41522 s!13436))))

(assert (=> b!7583584 (= e!4513552 call!695416)))

(declare-fun b!7583585 () Bool)

(declare-fun c!1398820 () Bool)

(assert (=> b!7583585 (= c!1398820 (is-ElementMatch!20088 r!22341))))

(assert (=> b!7583585 (= e!4513558 e!4513554)))

(assert (= (and d!2318720 c!1398822) b!7583578))

(assert (= (and d!2318720 (not c!1398822)) b!7583580))

(assert (= (and b!7583580 res!3037983) b!7583585))

(assert (= (and b!7583585 c!1398820) b!7583577))

(assert (= (and b!7583585 (not c!1398820)) b!7583581))

(assert (= (and b!7583581 c!1398823) b!7583576))

(assert (= (and b!7583581 (not c!1398823)) b!7583582))

(assert (= (and b!7583576 (not res!3037984)) b!7583575))

(assert (= (and b!7583582 c!1398821) b!7583583))

(assert (= (and b!7583582 (not c!1398821)) b!7583584))

(assert (= (and b!7583583 (not res!3037982)) b!7583579))

(assert (= (or b!7583579 b!7583584) bm!695410))

(assert (= (or b!7583578 b!7583583) bm!695411))

(declare-fun m!8136708 () Bool)

(assert (=> b!7583575 m!8136708))

(declare-fun m!8136710 () Bool)

(assert (=> b!7583576 m!8136710))

(declare-fun m!8136712 () Bool)

(assert (=> bm!695410 m!8136712))

(assert (=> bm!695411 m!8136592))

(assert (=> b!7583277 d!2318720))

(declare-fun d!2318722 () Bool)

(assert (=> d!2318722 (= (matchR!9680 r!22341 s!13436) (matchRSpec!4401 r!22341 s!13436))))

(declare-fun lt!2652792 () Unit!167132)

(declare-fun choose!58626 (Regex!20088 List!72971) Unit!167132)

(assert (=> d!2318722 (= lt!2652792 (choose!58626 r!22341 s!13436))))

(assert (=> d!2318722 (validRegex!10516 r!22341)))

(assert (=> d!2318722 (= (mainMatchTheorem!4395 r!22341 s!13436) lt!2652792)))

(declare-fun bs!1941136 () Bool)

(assert (= bs!1941136 d!2318722))

(assert (=> bs!1941136 m!8136594))

(assert (=> bs!1941136 m!8136596))

(declare-fun m!8136714 () Bool)

(assert (=> bs!1941136 m!8136714))

(assert (=> bs!1941136 m!8136580))

(assert (=> b!7583277 d!2318722))

(declare-fun b!7583594 () Bool)

(declare-fun e!4513561 () Bool)

(declare-fun tp!2209996 () Bool)

(assert (=> b!7583594 (= e!4513561 (and tp_is_empty!50531 tp!2209996))))

(assert (=> b!7583275 (= tp!2209975 e!4513561)))

(assert (= (and b!7583275 (is-Cons!72847 (t!387706 s!13436))) b!7583594))

(declare-fun b!7583606 () Bool)

(declare-fun e!4513564 () Bool)

(declare-fun tp!2210008 () Bool)

(declare-fun tp!2210009 () Bool)

(assert (=> b!7583606 (= e!4513564 (and tp!2210008 tp!2210009))))

(assert (=> b!7583276 (= tp!2209970 e!4513564)))

(declare-fun b!7583608 () Bool)

(declare-fun tp!2210011 () Bool)

(declare-fun tp!2210007 () Bool)

(assert (=> b!7583608 (= e!4513564 (and tp!2210011 tp!2210007))))

(declare-fun b!7583607 () Bool)

(declare-fun tp!2210010 () Bool)

(assert (=> b!7583607 (= e!4513564 tp!2210010)))

(declare-fun b!7583605 () Bool)

(assert (=> b!7583605 (= e!4513564 tp_is_empty!50531)))

(assert (= (and b!7583276 (is-ElementMatch!20088 (reg!20417 r!22341))) b!7583605))

(assert (= (and b!7583276 (is-Concat!28933 (reg!20417 r!22341))) b!7583606))

(assert (= (and b!7583276 (is-Star!20088 (reg!20417 r!22341))) b!7583607))

(assert (= (and b!7583276 (is-Union!20088 (reg!20417 r!22341))) b!7583608))

(declare-fun b!7583610 () Bool)

(declare-fun e!4513565 () Bool)

(declare-fun tp!2210013 () Bool)

(declare-fun tp!2210014 () Bool)

(assert (=> b!7583610 (= e!4513565 (and tp!2210013 tp!2210014))))

(assert (=> b!7583273 (= tp!2209973 e!4513565)))

(declare-fun b!7583612 () Bool)

(declare-fun tp!2210016 () Bool)

(declare-fun tp!2210012 () Bool)

(assert (=> b!7583612 (= e!4513565 (and tp!2210016 tp!2210012))))

(declare-fun b!7583611 () Bool)

(declare-fun tp!2210015 () Bool)

(assert (=> b!7583611 (= e!4513565 tp!2210015)))

(declare-fun b!7583609 () Bool)

(assert (=> b!7583609 (= e!4513565 tp_is_empty!50531)))

(assert (= (and b!7583273 (is-ElementMatch!20088 (regOne!40688 r!22341))) b!7583609))

(assert (= (and b!7583273 (is-Concat!28933 (regOne!40688 r!22341))) b!7583610))

(assert (= (and b!7583273 (is-Star!20088 (regOne!40688 r!22341))) b!7583611))

(assert (= (and b!7583273 (is-Union!20088 (regOne!40688 r!22341))) b!7583612))

(declare-fun b!7583614 () Bool)

(declare-fun e!4513566 () Bool)

(declare-fun tp!2210018 () Bool)

(declare-fun tp!2210019 () Bool)

(assert (=> b!7583614 (= e!4513566 (and tp!2210018 tp!2210019))))

(assert (=> b!7583273 (= tp!2209972 e!4513566)))

(declare-fun b!7583616 () Bool)

(declare-fun tp!2210021 () Bool)

(declare-fun tp!2210017 () Bool)

(assert (=> b!7583616 (= e!4513566 (and tp!2210021 tp!2210017))))

(declare-fun b!7583615 () Bool)

(declare-fun tp!2210020 () Bool)

(assert (=> b!7583615 (= e!4513566 tp!2210020)))

(declare-fun b!7583613 () Bool)

(assert (=> b!7583613 (= e!4513566 tp_is_empty!50531)))

(assert (= (and b!7583273 (is-ElementMatch!20088 (regTwo!40688 r!22341))) b!7583613))

(assert (= (and b!7583273 (is-Concat!28933 (regTwo!40688 r!22341))) b!7583614))

(assert (= (and b!7583273 (is-Star!20088 (regTwo!40688 r!22341))) b!7583615))

(assert (= (and b!7583273 (is-Union!20088 (regTwo!40688 r!22341))) b!7583616))

(declare-fun b!7583618 () Bool)

(declare-fun e!4513567 () Bool)

(declare-fun tp!2210023 () Bool)

(declare-fun tp!2210024 () Bool)

(assert (=> b!7583618 (= e!4513567 (and tp!2210023 tp!2210024))))

(assert (=> b!7583271 (= tp!2209971 e!4513567)))

(declare-fun b!7583620 () Bool)

(declare-fun tp!2210026 () Bool)

(declare-fun tp!2210022 () Bool)

(assert (=> b!7583620 (= e!4513567 (and tp!2210026 tp!2210022))))

(declare-fun b!7583619 () Bool)

(declare-fun tp!2210025 () Bool)

(assert (=> b!7583619 (= e!4513567 tp!2210025)))

(declare-fun b!7583617 () Bool)

(assert (=> b!7583617 (= e!4513567 tp_is_empty!50531)))

(assert (= (and b!7583271 (is-ElementMatch!20088 (regOne!40689 r!22341))) b!7583617))

(assert (= (and b!7583271 (is-Concat!28933 (regOne!40689 r!22341))) b!7583618))

(assert (= (and b!7583271 (is-Star!20088 (regOne!40689 r!22341))) b!7583619))

(assert (= (and b!7583271 (is-Union!20088 (regOne!40689 r!22341))) b!7583620))

(declare-fun b!7583622 () Bool)

(declare-fun e!4513568 () Bool)

(declare-fun tp!2210028 () Bool)

(declare-fun tp!2210029 () Bool)

(assert (=> b!7583622 (= e!4513568 (and tp!2210028 tp!2210029))))

(assert (=> b!7583271 (= tp!2209974 e!4513568)))

(declare-fun b!7583624 () Bool)

(declare-fun tp!2210031 () Bool)

(declare-fun tp!2210027 () Bool)

(assert (=> b!7583624 (= e!4513568 (and tp!2210031 tp!2210027))))

(declare-fun b!7583623 () Bool)

(declare-fun tp!2210030 () Bool)

(assert (=> b!7583623 (= e!4513568 tp!2210030)))

(declare-fun b!7583621 () Bool)

(assert (=> b!7583621 (= e!4513568 tp_is_empty!50531)))

(assert (= (and b!7583271 (is-ElementMatch!20088 (regTwo!40689 r!22341))) b!7583621))

(assert (= (and b!7583271 (is-Concat!28933 (regTwo!40689 r!22341))) b!7583622))

(assert (= (and b!7583271 (is-Star!20088 (regTwo!40689 r!22341))) b!7583623))

(assert (= (and b!7583271 (is-Union!20088 (regTwo!40689 r!22341))) b!7583624))

(push 1)

(assert (not d!2318704))

(assert (not b!7583619))

(assert (not d!2318696))

(assert (not b!7583622))

(assert (not d!2318708))

(assert (not b!7583447))

(assert (not b!7583507))

(assert (not b!7583611))

(assert (not b!7583506))

(assert (not b!7583623))

(assert (not b!7583513))

(assert (not bm!695402))

(assert (not bm!695411))

(assert (not b!7583510))

(assert (not b!7583435))

(assert (not b!7583576))

(assert (not b!7583614))

(assert (not b!7583436))

(assert (not b!7583519))

(assert (not b!7583487))

(assert (not b!7583610))

(assert (not b!7583509))

(assert (not b!7583615))

(assert (not d!2318716))

(assert (not bm!695404))

(assert (not b!7583575))

(assert (not d!2318706))

(assert (not bm!695398))

(assert (not b!7583620))

(assert (not b!7583354))

(assert (not bm!695395))

(assert (not b!7583497))

(assert (not b!7583618))

(assert (not b!7583484))

(assert tp_is_empty!50531)

(assert (not bm!695376))

(assert (not b!7583439))

(assert (not d!2318698))

(assert (not b!7583624))

(assert (not b!7583442))

(assert (not b!7583449))

(assert (not b!7583594))

(assert (not d!2318722))

(assert (not bm!695399))

(assert (not b!7583612))

(assert (not b!7583607))

(assert (not bm!695401))

(assert (not bm!695410))

(assert (not b!7583478))

(assert (not b!7583475))

(assert (not b!7583433))

(assert (not d!2318718))

(assert (not b!7583516))

(assert (not b!7583450))

(assert (not bm!695405))

(assert (not b!7583456))

(assert (not bm!695396))

(assert (not b!7583459))

(assert (not b!7583616))

(assert (not b!7583481))

(assert (not b!7583445))

(assert (not b!7583608))

(assert (not b!7583606))

(assert (not b!7583453))

(assert (not bm!695378))

(assert (not b!7583477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

