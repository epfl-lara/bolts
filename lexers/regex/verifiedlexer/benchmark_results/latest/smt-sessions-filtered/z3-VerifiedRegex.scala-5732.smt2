; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284620 () Bool)

(assert start!284620)

(declare-fun b!2925312 () Bool)

(declare-fun e!1845202 () Bool)

(declare-fun tp!938123 () Bool)

(assert (=> b!2925312 (= e!1845202 tp!938123)))

(declare-fun b!2925313 () Bool)

(declare-fun e!1845201 () Bool)

(declare-fun tp_is_empty!15593 () Bool)

(declare-fun tp!938125 () Bool)

(assert (=> b!2925313 (= e!1845201 (and tp_is_empty!15593 tp!938125))))

(declare-fun b!2925314 () Bool)

(declare-fun e!1845204 () Bool)

(declare-datatypes ((C!18216 0))(
  ( (C!18217 (val!11144 Int)) )
))
(declare-datatypes ((Regex!9015 0))(
  ( (ElementMatch!9015 (c!477635 C!18216)) (Concat!14336 (regOne!18542 Regex!9015) (regTwo!18542 Regex!9015)) (EmptyExpr!9015) (Star!9015 (reg!9344 Regex!9015)) (EmptyLang!9015) (Union!9015 (regOne!18543 Regex!9015) (regTwo!18543 Regex!9015)) )
))
(declare-fun r!17423 () Regex!9015)

(declare-datatypes ((List!34880 0))(
  ( (Nil!34756) (Cons!34756 (h!40176 C!18216) (t!233945 List!34880)) )
))
(declare-fun s!11993 () List!34880)

(declare-fun matchR!3897 (Regex!9015 List!34880) Bool)

(assert (=> b!2925314 (= e!1845204 (matchR!3897 (regTwo!18543 r!17423) s!11993))))

(declare-fun b!2925315 () Bool)

(declare-fun tp!938124 () Bool)

(declare-fun tp!938121 () Bool)

(assert (=> b!2925315 (= e!1845202 (and tp!938124 tp!938121))))

(declare-fun b!2925316 () Bool)

(declare-fun e!1845199 () Bool)

(declare-fun validRegex!3748 (Regex!9015) Bool)

(assert (=> b!2925316 (= e!1845199 (validRegex!3748 (regOne!18543 r!17423)))))

(declare-fun lt!1026599 () Regex!9015)

(declare-fun lt!1026594 () Regex!9015)

(assert (=> b!2925316 (matchR!3897 (Union!9015 lt!1026599 lt!1026594) s!11993)))

(declare-datatypes ((Unit!48369 0))(
  ( (Unit!48370) )
))
(declare-fun lt!1026597 () Unit!48369)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!56 (Regex!9015 Regex!9015 List!34880) Unit!48369)

(assert (=> b!2925316 (= lt!1026597 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!56 lt!1026599 lt!1026594 s!11993))))

(declare-fun simplify!44 (Regex!9015) Regex!9015)

(assert (=> b!2925316 (= lt!1026594 (simplify!44 (regOne!18543 r!17423)))))

(declare-fun b!2925317 () Bool)

(assert (=> b!2925317 (= e!1845202 tp_is_empty!15593)))

(declare-fun b!2925318 () Bool)

(declare-fun e!1845203 () Bool)

(assert (=> b!2925318 (= e!1845203 e!1845199)))

(declare-fun res!1207456 () Bool)

(assert (=> b!2925318 (=> res!1207456 e!1845199)))

(declare-fun lt!1026595 () Bool)

(assert (=> b!2925318 (= res!1207456 (not lt!1026595))))

(declare-fun lt!1026592 () Bool)

(assert (=> b!2925318 (= lt!1026592 lt!1026595)))

(assert (=> b!2925318 (= lt!1026595 (matchR!3897 lt!1026599 s!11993))))

(assert (=> b!2925318 (= lt!1026592 (matchR!3897 (regTwo!18543 r!17423) s!11993))))

(assert (=> b!2925318 (= lt!1026599 (simplify!44 (regTwo!18543 r!17423)))))

(declare-fun lt!1026596 () Unit!48369)

(declare-fun lemmaSimplifySound!42 (Regex!9015 List!34880) Unit!48369)

(assert (=> b!2925318 (= lt!1026596 (lemmaSimplifySound!42 (regTwo!18543 r!17423) s!11993))))

(declare-fun b!2925320 () Bool)

(declare-fun e!1845200 () Bool)

(declare-fun e!1845205 () Bool)

(assert (=> b!2925320 (= e!1845200 (not e!1845205))))

(declare-fun res!1207460 () Bool)

(assert (=> b!2925320 (=> res!1207460 e!1845205)))

(declare-fun lt!1026598 () Bool)

(get-info :version)

(assert (=> b!2925320 (= res!1207460 (or (not lt!1026598) ((_ is Concat!14336) r!17423) (not ((_ is Union!9015) r!17423))))))

(declare-fun matchRSpec!1152 (Regex!9015 List!34880) Bool)

(assert (=> b!2925320 (= lt!1026598 (matchRSpec!1152 r!17423 s!11993))))

(assert (=> b!2925320 (= lt!1026598 (matchR!3897 r!17423 s!11993))))

(declare-fun lt!1026601 () Unit!48369)

(declare-fun mainMatchTheorem!1152 (Regex!9015 List!34880) Unit!48369)

(assert (=> b!2925320 (= lt!1026601 (mainMatchTheorem!1152 r!17423 s!11993))))

(declare-fun b!2925321 () Bool)

(declare-fun tp!938120 () Bool)

(declare-fun tp!938122 () Bool)

(assert (=> b!2925321 (= e!1845202 (and tp!938120 tp!938122))))

(declare-fun b!2925319 () Bool)

(assert (=> b!2925319 (= e!1845205 e!1845203)))

(declare-fun res!1207457 () Bool)

(assert (=> b!2925319 (=> res!1207457 e!1845203)))

(declare-fun lt!1026600 () Bool)

(assert (=> b!2925319 (= res!1207457 lt!1026600)))

(assert (=> b!2925319 e!1845204))

(declare-fun res!1207458 () Bool)

(assert (=> b!2925319 (=> res!1207458 e!1845204)))

(assert (=> b!2925319 (= res!1207458 lt!1026600)))

(assert (=> b!2925319 (= lt!1026600 (matchR!3897 (regOne!18543 r!17423) s!11993))))

(declare-fun lt!1026593 () Unit!48369)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!264 (Regex!9015 Regex!9015 List!34880) Unit!48369)

(assert (=> b!2925319 (= lt!1026593 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!264 (regOne!18543 r!17423) (regTwo!18543 r!17423) s!11993))))

(declare-fun res!1207459 () Bool)

(assert (=> start!284620 (=> (not res!1207459) (not e!1845200))))

(assert (=> start!284620 (= res!1207459 (validRegex!3748 r!17423))))

(assert (=> start!284620 e!1845200))

(assert (=> start!284620 e!1845202))

(assert (=> start!284620 e!1845201))

(assert (= (and start!284620 res!1207459) b!2925320))

(assert (= (and b!2925320 (not res!1207460)) b!2925319))

(assert (= (and b!2925319 (not res!1207458)) b!2925314))

(assert (= (and b!2925319 (not res!1207457)) b!2925318))

(assert (= (and b!2925318 (not res!1207456)) b!2925316))

(assert (= (and start!284620 ((_ is ElementMatch!9015) r!17423)) b!2925317))

(assert (= (and start!284620 ((_ is Concat!14336) r!17423)) b!2925315))

(assert (= (and start!284620 ((_ is Star!9015) r!17423)) b!2925312))

(assert (= (and start!284620 ((_ is Union!9015) r!17423)) b!2925321))

(assert (= (and start!284620 ((_ is Cons!34756) s!11993)) b!2925313))

(declare-fun m!3318605 () Bool)

(assert (=> b!2925316 m!3318605))

(declare-fun m!3318607 () Bool)

(assert (=> b!2925316 m!3318607))

(declare-fun m!3318609 () Bool)

(assert (=> b!2925316 m!3318609))

(declare-fun m!3318611 () Bool)

(assert (=> b!2925316 m!3318611))

(declare-fun m!3318613 () Bool)

(assert (=> b!2925319 m!3318613))

(declare-fun m!3318615 () Bool)

(assert (=> b!2925319 m!3318615))

(declare-fun m!3318617 () Bool)

(assert (=> b!2925320 m!3318617))

(declare-fun m!3318619 () Bool)

(assert (=> b!2925320 m!3318619))

(declare-fun m!3318621 () Bool)

(assert (=> b!2925320 m!3318621))

(declare-fun m!3318623 () Bool)

(assert (=> start!284620 m!3318623))

(declare-fun m!3318625 () Bool)

(assert (=> b!2925314 m!3318625))

(declare-fun m!3318627 () Bool)

(assert (=> b!2925318 m!3318627))

(assert (=> b!2925318 m!3318625))

(declare-fun m!3318629 () Bool)

(assert (=> b!2925318 m!3318629))

(declare-fun m!3318631 () Bool)

(assert (=> b!2925318 m!3318631))

(check-sat (not b!2925319) (not b!2925312) tp_is_empty!15593 (not b!2925315) (not b!2925321) (not b!2925320) (not b!2925316) (not b!2925313) (not b!2925314) (not start!284620) (not b!2925318))
(check-sat)
(get-model)

(declare-fun bm!191776 () Bool)

(declare-fun call!191782 () Bool)

(declare-fun c!477646 () Bool)

(assert (=> bm!191776 (= call!191782 (validRegex!3748 (ite c!477646 (regOne!18543 (regOne!18543 r!17423)) (regTwo!18542 (regOne!18543 r!17423)))))))

(declare-fun b!2925368 () Bool)

(declare-fun e!1845239 () Bool)

(declare-fun call!191783 () Bool)

(assert (=> b!2925368 (= e!1845239 call!191783)))

(declare-fun b!2925369 () Bool)

(declare-fun res!1207489 () Bool)

(declare-fun e!1845235 () Bool)

(assert (=> b!2925369 (=> res!1207489 e!1845235)))

(assert (=> b!2925369 (= res!1207489 (not ((_ is Concat!14336) (regOne!18543 r!17423))))))

(declare-fun e!1845237 () Bool)

(assert (=> b!2925369 (= e!1845237 e!1845235)))

(declare-fun b!2925370 () Bool)

(declare-fun e!1845240 () Bool)

(assert (=> b!2925370 (= e!1845235 e!1845240)))

(declare-fun res!1207488 () Bool)

(assert (=> b!2925370 (=> (not res!1207488) (not e!1845240))))

(assert (=> b!2925370 (= res!1207488 call!191783)))

(declare-fun b!2925371 () Bool)

(declare-fun e!1845234 () Bool)

(assert (=> b!2925371 (= e!1845234 e!1845237)))

(assert (=> b!2925371 (= c!477646 ((_ is Union!9015) (regOne!18543 r!17423)))))

(declare-fun b!2925372 () Bool)

(declare-fun e!1845236 () Bool)

(assert (=> b!2925372 (= e!1845234 e!1845236)))

(declare-fun res!1207487 () Bool)

(declare-fun nullable!2833 (Regex!9015) Bool)

(assert (=> b!2925372 (= res!1207487 (not (nullable!2833 (reg!9344 (regOne!18543 r!17423)))))))

(assert (=> b!2925372 (=> (not res!1207487) (not e!1845236))))

(declare-fun b!2925373 () Bool)

(declare-fun res!1207490 () Bool)

(assert (=> b!2925373 (=> (not res!1207490) (not e!1845239))))

(assert (=> b!2925373 (= res!1207490 call!191782)))

(assert (=> b!2925373 (= e!1845237 e!1845239)))

(declare-fun b!2925374 () Bool)

(declare-fun e!1845238 () Bool)

(assert (=> b!2925374 (= e!1845238 e!1845234)))

(declare-fun c!477647 () Bool)

(assert (=> b!2925374 (= c!477647 ((_ is Star!9015) (regOne!18543 r!17423)))))

(declare-fun bm!191777 () Bool)

(declare-fun call!191781 () Bool)

(assert (=> bm!191777 (= call!191783 call!191781)))

(declare-fun d!838871 () Bool)

(declare-fun res!1207491 () Bool)

(assert (=> d!838871 (=> res!1207491 e!1845238)))

(assert (=> d!838871 (= res!1207491 ((_ is ElementMatch!9015) (regOne!18543 r!17423)))))

(assert (=> d!838871 (= (validRegex!3748 (regOne!18543 r!17423)) e!1845238)))

(declare-fun bm!191778 () Bool)

(assert (=> bm!191778 (= call!191781 (validRegex!3748 (ite c!477647 (reg!9344 (regOne!18543 r!17423)) (ite c!477646 (regTwo!18543 (regOne!18543 r!17423)) (regOne!18542 (regOne!18543 r!17423))))))))

(declare-fun b!2925375 () Bool)

(assert (=> b!2925375 (= e!1845240 call!191782)))

(declare-fun b!2925376 () Bool)

(assert (=> b!2925376 (= e!1845236 call!191781)))

(assert (= (and d!838871 (not res!1207491)) b!2925374))

(assert (= (and b!2925374 c!477647) b!2925372))

(assert (= (and b!2925374 (not c!477647)) b!2925371))

(assert (= (and b!2925372 res!1207487) b!2925376))

(assert (= (and b!2925371 c!477646) b!2925373))

(assert (= (and b!2925371 (not c!477646)) b!2925369))

(assert (= (and b!2925373 res!1207490) b!2925368))

(assert (= (and b!2925369 (not res!1207489)) b!2925370))

(assert (= (and b!2925370 res!1207488) b!2925375))

(assert (= (or b!2925373 b!2925375) bm!191776))

(assert (= (or b!2925368 b!2925370) bm!191777))

(assert (= (or b!2925376 bm!191777) bm!191778))

(declare-fun m!3318633 () Bool)

(assert (=> bm!191776 m!3318633))

(declare-fun m!3318635 () Bool)

(assert (=> b!2925372 m!3318635))

(declare-fun m!3318637 () Bool)

(assert (=> bm!191778 m!3318637))

(assert (=> b!2925316 d!838871))

(declare-fun bm!191782 () Bool)

(declare-fun call!191787 () Bool)

(declare-fun isEmpty!19003 (List!34880) Bool)

(assert (=> bm!191782 (= call!191787 (isEmpty!19003 s!11993))))

(declare-fun d!838873 () Bool)

(declare-fun e!1845268 () Bool)

(assert (=> d!838873 e!1845268))

(declare-fun c!477658 () Bool)

(assert (=> d!838873 (= c!477658 ((_ is EmptyExpr!9015) (Union!9015 lt!1026599 lt!1026594)))))

(declare-fun lt!1026610 () Bool)

(declare-fun e!1845272 () Bool)

(assert (=> d!838873 (= lt!1026610 e!1845272)))

(declare-fun c!477659 () Bool)

(assert (=> d!838873 (= c!477659 (isEmpty!19003 s!11993))))

(assert (=> d!838873 (validRegex!3748 (Union!9015 lt!1026599 lt!1026594))))

(assert (=> d!838873 (= (matchR!3897 (Union!9015 lt!1026599 lt!1026594) s!11993) lt!1026610)))

(declare-fun b!2925425 () Bool)

(declare-fun e!1845271 () Bool)

(declare-fun e!1845269 () Bool)

(assert (=> b!2925425 (= e!1845271 e!1845269)))

(declare-fun res!1207526 () Bool)

(assert (=> b!2925425 (=> res!1207526 e!1845269)))

(assert (=> b!2925425 (= res!1207526 call!191787)))

(declare-fun b!2925426 () Bool)

(declare-fun derivativeStep!2447 (Regex!9015 C!18216) Regex!9015)

(declare-fun head!6506 (List!34880) C!18216)

(declare-fun tail!4732 (List!34880) List!34880)

(assert (=> b!2925426 (= e!1845272 (matchR!3897 (derivativeStep!2447 (Union!9015 lt!1026599 lt!1026594) (head!6506 s!11993)) (tail!4732 s!11993)))))

(declare-fun b!2925427 () Bool)

(declare-fun res!1207525 () Bool)

(declare-fun e!1845270 () Bool)

(assert (=> b!2925427 (=> res!1207525 e!1845270)))

(assert (=> b!2925427 (= res!1207525 (not ((_ is ElementMatch!9015) (Union!9015 lt!1026599 lt!1026594))))))

(declare-fun e!1845273 () Bool)

(assert (=> b!2925427 (= e!1845273 e!1845270)))

(declare-fun b!2925428 () Bool)

(declare-fun res!1207529 () Bool)

(declare-fun e!1845274 () Bool)

(assert (=> b!2925428 (=> (not res!1207529) (not e!1845274))))

(assert (=> b!2925428 (= res!1207529 (not call!191787))))

(declare-fun b!2925429 () Bool)

(assert (=> b!2925429 (= e!1845274 (= (head!6506 s!11993) (c!477635 (Union!9015 lt!1026599 lt!1026594))))))

(declare-fun b!2925430 () Bool)

(assert (=> b!2925430 (= e!1845270 e!1845271)))

(declare-fun res!1207523 () Bool)

(assert (=> b!2925430 (=> (not res!1207523) (not e!1845271))))

(assert (=> b!2925430 (= res!1207523 (not lt!1026610))))

(declare-fun b!2925431 () Bool)

(assert (=> b!2925431 (= e!1845272 (nullable!2833 (Union!9015 lt!1026599 lt!1026594)))))

(declare-fun b!2925432 () Bool)

(assert (=> b!2925432 (= e!1845269 (not (= (head!6506 s!11993) (c!477635 (Union!9015 lt!1026599 lt!1026594)))))))

(declare-fun b!2925433 () Bool)

(declare-fun res!1207524 () Bool)

(assert (=> b!2925433 (=> res!1207524 e!1845270)))

(assert (=> b!2925433 (= res!1207524 e!1845274)))

(declare-fun res!1207528 () Bool)

(assert (=> b!2925433 (=> (not res!1207528) (not e!1845274))))

(assert (=> b!2925433 (= res!1207528 lt!1026610)))

(declare-fun b!2925434 () Bool)

(declare-fun res!1207522 () Bool)

(assert (=> b!2925434 (=> (not res!1207522) (not e!1845274))))

(assert (=> b!2925434 (= res!1207522 (isEmpty!19003 (tail!4732 s!11993)))))

(declare-fun b!2925435 () Bool)

(declare-fun res!1207527 () Bool)

(assert (=> b!2925435 (=> res!1207527 e!1845269)))

(assert (=> b!2925435 (= res!1207527 (not (isEmpty!19003 (tail!4732 s!11993))))))

(declare-fun b!2925436 () Bool)

(assert (=> b!2925436 (= e!1845273 (not lt!1026610))))

(declare-fun b!2925437 () Bool)

(assert (=> b!2925437 (= e!1845268 e!1845273)))

(declare-fun c!477657 () Bool)

(assert (=> b!2925437 (= c!477657 ((_ is EmptyLang!9015) (Union!9015 lt!1026599 lt!1026594)))))

(declare-fun b!2925438 () Bool)

(assert (=> b!2925438 (= e!1845268 (= lt!1026610 call!191787))))

(assert (= (and d!838873 c!477659) b!2925431))

(assert (= (and d!838873 (not c!477659)) b!2925426))

(assert (= (and d!838873 c!477658) b!2925438))

(assert (= (and d!838873 (not c!477658)) b!2925437))

(assert (= (and b!2925437 c!477657) b!2925436))

(assert (= (and b!2925437 (not c!477657)) b!2925427))

(assert (= (and b!2925427 (not res!1207525)) b!2925433))

(assert (= (and b!2925433 res!1207528) b!2925428))

(assert (= (and b!2925428 res!1207529) b!2925434))

(assert (= (and b!2925434 res!1207522) b!2925429))

(assert (= (and b!2925433 (not res!1207524)) b!2925430))

(assert (= (and b!2925430 res!1207523) b!2925425))

(assert (= (and b!2925425 (not res!1207526)) b!2925435))

(assert (= (and b!2925435 (not res!1207527)) b!2925432))

(assert (= (or b!2925438 b!2925425 b!2925428) bm!191782))

(declare-fun m!3318657 () Bool)

(assert (=> b!2925431 m!3318657))

(declare-fun m!3318659 () Bool)

(assert (=> d!838873 m!3318659))

(declare-fun m!3318661 () Bool)

(assert (=> d!838873 m!3318661))

(declare-fun m!3318663 () Bool)

(assert (=> b!2925426 m!3318663))

(assert (=> b!2925426 m!3318663))

(declare-fun m!3318665 () Bool)

(assert (=> b!2925426 m!3318665))

(declare-fun m!3318667 () Bool)

(assert (=> b!2925426 m!3318667))

(assert (=> b!2925426 m!3318665))

(assert (=> b!2925426 m!3318667))

(declare-fun m!3318669 () Bool)

(assert (=> b!2925426 m!3318669))

(assert (=> b!2925429 m!3318663))

(assert (=> b!2925434 m!3318667))

(assert (=> b!2925434 m!3318667))

(declare-fun m!3318671 () Bool)

(assert (=> b!2925434 m!3318671))

(assert (=> bm!191782 m!3318659))

(assert (=> b!2925435 m!3318667))

(assert (=> b!2925435 m!3318667))

(assert (=> b!2925435 m!3318671))

(assert (=> b!2925432 m!3318663))

(assert (=> b!2925316 d!838873))

(declare-fun d!838879 () Bool)

(assert (=> d!838879 (matchR!3897 (Union!9015 lt!1026599 lt!1026594) s!11993)))

(declare-fun lt!1026613 () Unit!48369)

(declare-fun choose!17264 (Regex!9015 Regex!9015 List!34880) Unit!48369)

(assert (=> d!838879 (= lt!1026613 (choose!17264 lt!1026599 lt!1026594 s!11993))))

(declare-fun e!1845291 () Bool)

(assert (=> d!838879 e!1845291))

(declare-fun res!1207538 () Bool)

(assert (=> d!838879 (=> (not res!1207538) (not e!1845291))))

(assert (=> d!838879 (= res!1207538 (validRegex!3748 lt!1026599))))

(assert (=> d!838879 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!56 lt!1026599 lt!1026594 s!11993) lt!1026613)))

(declare-fun b!2925463 () Bool)

(assert (=> b!2925463 (= e!1845291 (validRegex!3748 lt!1026594))))

(assert (= (and d!838879 res!1207538) b!2925463))

(assert (=> d!838879 m!3318607))

(declare-fun m!3318673 () Bool)

(assert (=> d!838879 m!3318673))

(declare-fun m!3318675 () Bool)

(assert (=> d!838879 m!3318675))

(declare-fun m!3318677 () Bool)

(assert (=> b!2925463 m!3318677))

(assert (=> b!2925316 d!838879))

(declare-fun b!2925514 () Bool)

(declare-fun e!1845330 () Regex!9015)

(declare-fun lt!1026627 () Regex!9015)

(declare-fun lt!1026626 () Regex!9015)

(assert (=> b!2925514 (= e!1845330 (Concat!14336 lt!1026627 lt!1026626))))

(declare-fun b!2925515 () Bool)

(assert (=> b!2925515 (= e!1845330 lt!1026627)))

(declare-fun b!2925516 () Bool)

(declare-fun e!1845326 () Regex!9015)

(declare-fun lt!1026628 () Regex!9015)

(assert (=> b!2925516 (= e!1845326 lt!1026628)))

(declare-fun b!2925517 () Bool)

(declare-fun e!1845320 () Regex!9015)

(declare-fun lt!1026631 () Regex!9015)

(assert (=> b!2925517 (= e!1845320 (Star!9015 lt!1026631))))

(declare-fun b!2925518 () Bool)

(declare-fun e!1845333 () Regex!9015)

(declare-fun e!1845332 () Regex!9015)

(assert (=> b!2925518 (= e!1845333 e!1845332)))

(declare-fun c!477699 () Bool)

(assert (=> b!2925518 (= c!477699 ((_ is ElementMatch!9015) (regOne!18543 r!17423)))))

(declare-fun c!477692 () Bool)

(declare-fun call!191805 () Regex!9015)

(declare-fun c!477696 () Bool)

(declare-fun bm!191797 () Bool)

(assert (=> bm!191797 (= call!191805 (simplify!44 (ite c!477692 (reg!9344 (regOne!18543 r!17423)) (ite c!477696 (regOne!18543 (regOne!18543 r!17423)) (regTwo!18542 (regOne!18543 r!17423))))))))

(declare-fun call!191804 () Bool)

(declare-fun bm!191798 () Bool)

(declare-fun isEmptyExpr!270 (Regex!9015) Bool)

(assert (=> bm!191798 (= call!191804 (isEmptyExpr!270 (ite c!477692 lt!1026631 lt!1026626)))))

(declare-fun b!2925519 () Bool)

(assert (=> b!2925519 (= e!1845320 EmptyExpr!9015)))

(declare-fun b!2925520 () Bool)

(declare-fun e!1845324 () Regex!9015)

(declare-fun e!1845331 () Regex!9015)

(assert (=> b!2925520 (= e!1845324 e!1845331)))

(assert (=> b!2925520 (= c!477692 ((_ is Star!9015) (regOne!18543 r!17423)))))

(declare-fun b!2925521 () Bool)

(assert (=> b!2925521 (= e!1845324 EmptyExpr!9015)))

(declare-fun b!2925522 () Bool)

(declare-fun e!1845322 () Regex!9015)

(declare-fun e!1845329 () Regex!9015)

(assert (=> b!2925522 (= e!1845322 e!1845329)))

(declare-fun call!191807 () Regex!9015)

(assert (=> b!2925522 (= lt!1026628 call!191807)))

(declare-fun lt!1026629 () Regex!9015)

(declare-fun call!191808 () Regex!9015)

(assert (=> b!2925522 (= lt!1026629 call!191808)))

(declare-fun c!477694 () Bool)

(declare-fun call!191806 () Bool)

(assert (=> b!2925522 (= c!477694 call!191806)))

(declare-fun b!2925523 () Bool)

(assert (=> b!2925523 (= c!477696 ((_ is Union!9015) (regOne!18543 r!17423)))))

(assert (=> b!2925523 (= e!1845331 e!1845322)))

(declare-fun d!838881 () Bool)

(declare-fun e!1845325 () Bool)

(assert (=> d!838881 e!1845325))

(declare-fun res!1207546 () Bool)

(assert (=> d!838881 (=> (not res!1207546) (not e!1845325))))

(declare-fun lt!1026630 () Regex!9015)

(assert (=> d!838881 (= res!1207546 (validRegex!3748 lt!1026630))))

(assert (=> d!838881 (= lt!1026630 e!1845333)))

(declare-fun c!477691 () Bool)

(assert (=> d!838881 (= c!477691 ((_ is EmptyLang!9015) (regOne!18543 r!17423)))))

(assert (=> d!838881 (validRegex!3748 (regOne!18543 r!17423))))

(assert (=> d!838881 (= (simplify!44 (regOne!18543 r!17423)) lt!1026630)))

(declare-fun b!2925524 () Bool)

(assert (=> b!2925524 (= e!1845333 EmptyLang!9015)))

(declare-fun b!2925525 () Bool)

(declare-fun e!1845327 () Regex!9015)

(assert (=> b!2925525 (= e!1845327 lt!1026626)))

(declare-fun b!2925526 () Bool)

(declare-fun c!477697 () Bool)

(declare-fun call!191803 () Bool)

(assert (=> b!2925526 (= c!477697 call!191803)))

(assert (=> b!2925526 (= e!1845329 e!1845326)))

(declare-fun b!2925527 () Bool)

(assert (=> b!2925527 (= e!1845329 lt!1026629)))

(declare-fun b!2925528 () Bool)

(declare-fun c!477690 () Bool)

(assert (=> b!2925528 (= c!477690 ((_ is EmptyExpr!9015) (regOne!18543 r!17423)))))

(assert (=> b!2925528 (= e!1845332 e!1845324)))

(declare-fun b!2925529 () Bool)

(assert (=> b!2925529 (= e!1845327 e!1845330)))

(declare-fun c!477693 () Bool)

(assert (=> b!2925529 (= c!477693 call!191804)))

(declare-fun b!2925530 () Bool)

(assert (=> b!2925530 (= e!1845326 (Union!9015 lt!1026628 lt!1026629))))

(declare-fun b!2925531 () Bool)

(declare-fun e!1845323 () Bool)

(assert (=> b!2925531 (= e!1845323 call!191804)))

(declare-fun bm!191799 () Bool)

(assert (=> bm!191799 (= call!191808 (simplify!44 (ite c!477696 (regTwo!18543 (regOne!18543 r!17423)) (regOne!18542 (regOne!18543 r!17423)))))))

(declare-fun b!2925532 () Bool)

(declare-fun c!477695 () Bool)

(assert (=> b!2925532 (= c!477695 e!1845323)))

(declare-fun res!1207545 () Bool)

(assert (=> b!2925532 (=> res!1207545 e!1845323)))

(declare-fun call!191802 () Bool)

(assert (=> b!2925532 (= res!1207545 call!191802)))

(assert (=> b!2925532 (= lt!1026631 call!191805)))

(assert (=> b!2925532 (= e!1845331 e!1845320)))

(declare-fun b!2925533 () Bool)

(declare-fun e!1845321 () Regex!9015)

(assert (=> b!2925533 (= e!1845322 e!1845321)))

(assert (=> b!2925533 (= lt!1026627 call!191808)))

(assert (=> b!2925533 (= lt!1026626 call!191807)))

(declare-fun res!1207547 () Bool)

(assert (=> b!2925533 (= res!1207547 call!191806)))

(declare-fun e!1845328 () Bool)

(assert (=> b!2925533 (=> res!1207547 e!1845328)))

(declare-fun c!477700 () Bool)

(assert (=> b!2925533 (= c!477700 e!1845328)))

(declare-fun b!2925534 () Bool)

(assert (=> b!2925534 (= e!1845328 call!191803)))

(declare-fun b!2925535 () Bool)

(assert (=> b!2925535 (= e!1845325 (= (nullable!2833 lt!1026630) (nullable!2833 (regOne!18543 r!17423))))))

(declare-fun b!2925536 () Bool)

(declare-fun c!477698 () Bool)

(assert (=> b!2925536 (= c!477698 (isEmptyExpr!270 lt!1026627))))

(assert (=> b!2925536 (= e!1845321 e!1845327)))

(declare-fun bm!191800 () Bool)

(declare-fun isEmptyLang!186 (Regex!9015) Bool)

(assert (=> bm!191800 (= call!191802 (isEmptyLang!186 (ite c!477692 lt!1026631 (ite c!477696 lt!1026629 lt!1026626))))))

(declare-fun bm!191801 () Bool)

(assert (=> bm!191801 (= call!191803 call!191802)))

(declare-fun bm!191802 () Bool)

(assert (=> bm!191802 (= call!191806 (isEmptyLang!186 (ite c!477696 lt!1026628 lt!1026627)))))

(declare-fun bm!191803 () Bool)

(assert (=> bm!191803 (= call!191807 call!191805)))

(declare-fun b!2925537 () Bool)

(assert (=> b!2925537 (= e!1845332 (regOne!18543 r!17423))))

(declare-fun b!2925538 () Bool)

(assert (=> b!2925538 (= e!1845321 EmptyLang!9015)))

(assert (= (and d!838881 c!477691) b!2925524))

(assert (= (and d!838881 (not c!477691)) b!2925518))

(assert (= (and b!2925518 c!477699) b!2925537))

(assert (= (and b!2925518 (not c!477699)) b!2925528))

(assert (= (and b!2925528 c!477690) b!2925521))

(assert (= (and b!2925528 (not c!477690)) b!2925520))

(assert (= (and b!2925520 c!477692) b!2925532))

(assert (= (and b!2925520 (not c!477692)) b!2925523))

(assert (= (and b!2925532 (not res!1207545)) b!2925531))

(assert (= (and b!2925532 c!477695) b!2925519))

(assert (= (and b!2925532 (not c!477695)) b!2925517))

(assert (= (and b!2925523 c!477696) b!2925522))

(assert (= (and b!2925523 (not c!477696)) b!2925533))

(assert (= (and b!2925522 c!477694) b!2925527))

(assert (= (and b!2925522 (not c!477694)) b!2925526))

(assert (= (and b!2925526 c!477697) b!2925516))

(assert (= (and b!2925526 (not c!477697)) b!2925530))

(assert (= (and b!2925533 (not res!1207547)) b!2925534))

(assert (= (and b!2925533 c!477700) b!2925538))

(assert (= (and b!2925533 (not c!477700)) b!2925536))

(assert (= (and b!2925536 c!477698) b!2925525))

(assert (= (and b!2925536 (not c!477698)) b!2925529))

(assert (= (and b!2925529 c!477693) b!2925515))

(assert (= (and b!2925529 (not c!477693)) b!2925514))

(assert (= (or b!2925522 b!2925533) bm!191803))

(assert (= (or b!2925522 b!2925533) bm!191799))

(assert (= (or b!2925522 b!2925533) bm!191802))

(assert (= (or b!2925526 b!2925534) bm!191801))

(assert (= (or b!2925531 b!2925529) bm!191798))

(assert (= (or b!2925532 bm!191803) bm!191797))

(assert (= (or b!2925532 bm!191801) bm!191800))

(assert (= (and d!838881 res!1207546) b!2925535))

(declare-fun m!3318679 () Bool)

(assert (=> bm!191800 m!3318679))

(declare-fun m!3318681 () Bool)

(assert (=> b!2925536 m!3318681))

(declare-fun m!3318683 () Bool)

(assert (=> bm!191797 m!3318683))

(declare-fun m!3318685 () Bool)

(assert (=> b!2925535 m!3318685))

(declare-fun m!3318687 () Bool)

(assert (=> b!2925535 m!3318687))

(declare-fun m!3318689 () Bool)

(assert (=> bm!191802 m!3318689))

(declare-fun m!3318691 () Bool)

(assert (=> bm!191798 m!3318691))

(declare-fun m!3318693 () Bool)

(assert (=> bm!191799 m!3318693))

(declare-fun m!3318695 () Bool)

(assert (=> d!838881 m!3318695))

(assert (=> d!838881 m!3318605))

(assert (=> b!2925316 d!838881))

(declare-fun b!2925833 () Bool)

(assert (=> b!2925833 true))

(assert (=> b!2925833 true))

(declare-fun bs!525016 () Bool)

(declare-fun b!2925827 () Bool)

(assert (= bs!525016 (and b!2925827 b!2925833)))

(declare-fun lambda!108738 () Int)

(declare-fun lambda!108737 () Int)

(assert (=> bs!525016 (not (= lambda!108738 lambda!108737))))

(assert (=> b!2925827 true))

(assert (=> b!2925827 true))

(declare-fun b!2925826 () Bool)

(declare-fun c!477779 () Bool)

(assert (=> b!2925826 (= c!477779 ((_ is ElementMatch!9015) r!17423))))

(declare-fun e!1845491 () Bool)

(declare-fun e!1845490 () Bool)

(assert (=> b!2925826 (= e!1845491 e!1845490)))

(declare-fun c!477780 () Bool)

(declare-fun call!191863 () Bool)

(declare-fun bm!191858 () Bool)

(declare-fun Exists!1383 (Int) Bool)

(assert (=> bm!191858 (= call!191863 (Exists!1383 (ite c!477780 lambda!108737 lambda!108738)))))

(declare-fun e!1845489 () Bool)

(assert (=> b!2925827 (= e!1845489 call!191863)))

(declare-fun b!2925828 () Bool)

(declare-fun e!1845494 () Bool)

(declare-fun call!191864 () Bool)

(assert (=> b!2925828 (= e!1845494 call!191864)))

(declare-fun b!2925830 () Bool)

(declare-fun e!1845492 () Bool)

(declare-fun e!1845488 () Bool)

(assert (=> b!2925830 (= e!1845492 e!1845488)))

(declare-fun res!1207646 () Bool)

(assert (=> b!2925830 (= res!1207646 (matchRSpec!1152 (regOne!18543 r!17423) s!11993))))

(assert (=> b!2925830 (=> res!1207646 e!1845488)))

(declare-fun b!2925831 () Bool)

(assert (=> b!2925831 (= e!1845492 e!1845489)))

(assert (=> b!2925831 (= c!477780 ((_ is Star!9015) r!17423))))

(declare-fun b!2925832 () Bool)

(assert (=> b!2925832 (= e!1845488 (matchRSpec!1152 (regTwo!18543 r!17423) s!11993))))

(declare-fun e!1845493 () Bool)

(assert (=> b!2925833 (= e!1845493 call!191863)))

(declare-fun b!2925834 () Bool)

(declare-fun res!1207644 () Bool)

(assert (=> b!2925834 (=> res!1207644 e!1845493)))

(assert (=> b!2925834 (= res!1207644 call!191864)))

(assert (=> b!2925834 (= e!1845489 e!1845493)))

(declare-fun b!2925835 () Bool)

(assert (=> b!2925835 (= e!1845494 e!1845491)))

(declare-fun res!1207645 () Bool)

(assert (=> b!2925835 (= res!1207645 (not ((_ is EmptyLang!9015) r!17423)))))

(assert (=> b!2925835 (=> (not res!1207645) (not e!1845491))))

(declare-fun b!2925829 () Bool)

(assert (=> b!2925829 (= e!1845490 (= s!11993 (Cons!34756 (c!477635 r!17423) Nil!34756)))))

(declare-fun d!838883 () Bool)

(declare-fun c!477778 () Bool)

(assert (=> d!838883 (= c!477778 ((_ is EmptyExpr!9015) r!17423))))

(assert (=> d!838883 (= (matchRSpec!1152 r!17423 s!11993) e!1845494)))

(declare-fun bm!191859 () Bool)

(assert (=> bm!191859 (= call!191864 (isEmpty!19003 s!11993))))

(declare-fun b!2925836 () Bool)

(declare-fun c!477777 () Bool)

(assert (=> b!2925836 (= c!477777 ((_ is Union!9015) r!17423))))

(assert (=> b!2925836 (= e!1845490 e!1845492)))

(assert (= (and d!838883 c!477778) b!2925828))

(assert (= (and d!838883 (not c!477778)) b!2925835))

(assert (= (and b!2925835 res!1207645) b!2925826))

(assert (= (and b!2925826 c!477779) b!2925829))

(assert (= (and b!2925826 (not c!477779)) b!2925836))

(assert (= (and b!2925836 c!477777) b!2925830))

(assert (= (and b!2925836 (not c!477777)) b!2925831))

(assert (= (and b!2925830 (not res!1207646)) b!2925832))

(assert (= (and b!2925831 c!477780) b!2925834))

(assert (= (and b!2925831 (not c!477780)) b!2925827))

(assert (= (and b!2925834 (not res!1207644)) b!2925833))

(assert (= (or b!2925833 b!2925827) bm!191858))

(assert (= (or b!2925828 b!2925834) bm!191859))

(declare-fun m!3318785 () Bool)

(assert (=> bm!191858 m!3318785))

(declare-fun m!3318787 () Bool)

(assert (=> b!2925830 m!3318787))

(declare-fun m!3318789 () Bool)

(assert (=> b!2925832 m!3318789))

(assert (=> bm!191859 m!3318659))

(assert (=> b!2925320 d!838883))

(declare-fun bm!191860 () Bool)

(declare-fun call!191865 () Bool)

(assert (=> bm!191860 (= call!191865 (isEmpty!19003 s!11993))))

(declare-fun d!838907 () Bool)

(declare-fun e!1845495 () Bool)

(assert (=> d!838907 e!1845495))

(declare-fun c!477782 () Bool)

(assert (=> d!838907 (= c!477782 ((_ is EmptyExpr!9015) r!17423))))

(declare-fun lt!1026669 () Bool)

(declare-fun e!1845499 () Bool)

(assert (=> d!838907 (= lt!1026669 e!1845499)))

(declare-fun c!477783 () Bool)

(assert (=> d!838907 (= c!477783 (isEmpty!19003 s!11993))))

(assert (=> d!838907 (validRegex!3748 r!17423)))

(assert (=> d!838907 (= (matchR!3897 r!17423 s!11993) lt!1026669)))

(declare-fun b!2925841 () Bool)

(declare-fun e!1845498 () Bool)

(declare-fun e!1845496 () Bool)

(assert (=> b!2925841 (= e!1845498 e!1845496)))

(declare-fun res!1207651 () Bool)

(assert (=> b!2925841 (=> res!1207651 e!1845496)))

(assert (=> b!2925841 (= res!1207651 call!191865)))

(declare-fun b!2925842 () Bool)

(assert (=> b!2925842 (= e!1845499 (matchR!3897 (derivativeStep!2447 r!17423 (head!6506 s!11993)) (tail!4732 s!11993)))))

(declare-fun b!2925843 () Bool)

(declare-fun res!1207650 () Bool)

(declare-fun e!1845497 () Bool)

(assert (=> b!2925843 (=> res!1207650 e!1845497)))

(assert (=> b!2925843 (= res!1207650 (not ((_ is ElementMatch!9015) r!17423)))))

(declare-fun e!1845500 () Bool)

(assert (=> b!2925843 (= e!1845500 e!1845497)))

(declare-fun b!2925844 () Bool)

(declare-fun res!1207654 () Bool)

(declare-fun e!1845501 () Bool)

(assert (=> b!2925844 (=> (not res!1207654) (not e!1845501))))

(assert (=> b!2925844 (= res!1207654 (not call!191865))))

(declare-fun b!2925845 () Bool)

(assert (=> b!2925845 (= e!1845501 (= (head!6506 s!11993) (c!477635 r!17423)))))

(declare-fun b!2925846 () Bool)

(assert (=> b!2925846 (= e!1845497 e!1845498)))

(declare-fun res!1207648 () Bool)

(assert (=> b!2925846 (=> (not res!1207648) (not e!1845498))))

(assert (=> b!2925846 (= res!1207648 (not lt!1026669))))

(declare-fun b!2925847 () Bool)

(assert (=> b!2925847 (= e!1845499 (nullable!2833 r!17423))))

(declare-fun b!2925848 () Bool)

(assert (=> b!2925848 (= e!1845496 (not (= (head!6506 s!11993) (c!477635 r!17423))))))

(declare-fun b!2925849 () Bool)

(declare-fun res!1207649 () Bool)

(assert (=> b!2925849 (=> res!1207649 e!1845497)))

(assert (=> b!2925849 (= res!1207649 e!1845501)))

(declare-fun res!1207653 () Bool)

(assert (=> b!2925849 (=> (not res!1207653) (not e!1845501))))

(assert (=> b!2925849 (= res!1207653 lt!1026669)))

(declare-fun b!2925850 () Bool)

(declare-fun res!1207647 () Bool)

(assert (=> b!2925850 (=> (not res!1207647) (not e!1845501))))

(assert (=> b!2925850 (= res!1207647 (isEmpty!19003 (tail!4732 s!11993)))))

(declare-fun b!2925851 () Bool)

(declare-fun res!1207652 () Bool)

(assert (=> b!2925851 (=> res!1207652 e!1845496)))

(assert (=> b!2925851 (= res!1207652 (not (isEmpty!19003 (tail!4732 s!11993))))))

(declare-fun b!2925852 () Bool)

(assert (=> b!2925852 (= e!1845500 (not lt!1026669))))

(declare-fun b!2925853 () Bool)

(assert (=> b!2925853 (= e!1845495 e!1845500)))

(declare-fun c!477781 () Bool)

(assert (=> b!2925853 (= c!477781 ((_ is EmptyLang!9015) r!17423))))

(declare-fun b!2925854 () Bool)

(assert (=> b!2925854 (= e!1845495 (= lt!1026669 call!191865))))

(assert (= (and d!838907 c!477783) b!2925847))

(assert (= (and d!838907 (not c!477783)) b!2925842))

(assert (= (and d!838907 c!477782) b!2925854))

(assert (= (and d!838907 (not c!477782)) b!2925853))

(assert (= (and b!2925853 c!477781) b!2925852))

(assert (= (and b!2925853 (not c!477781)) b!2925843))

(assert (= (and b!2925843 (not res!1207650)) b!2925849))

(assert (= (and b!2925849 res!1207653) b!2925844))

(assert (= (and b!2925844 res!1207654) b!2925850))

(assert (= (and b!2925850 res!1207647) b!2925845))

(assert (= (and b!2925849 (not res!1207649)) b!2925846))

(assert (= (and b!2925846 res!1207648) b!2925841))

(assert (= (and b!2925841 (not res!1207651)) b!2925851))

(assert (= (and b!2925851 (not res!1207652)) b!2925848))

(assert (= (or b!2925854 b!2925841 b!2925844) bm!191860))

(declare-fun m!3318791 () Bool)

(assert (=> b!2925847 m!3318791))

(assert (=> d!838907 m!3318659))

(assert (=> d!838907 m!3318623))

(assert (=> b!2925842 m!3318663))

(assert (=> b!2925842 m!3318663))

(declare-fun m!3318793 () Bool)

(assert (=> b!2925842 m!3318793))

(assert (=> b!2925842 m!3318667))

(assert (=> b!2925842 m!3318793))

(assert (=> b!2925842 m!3318667))

(declare-fun m!3318795 () Bool)

(assert (=> b!2925842 m!3318795))

(assert (=> b!2925845 m!3318663))

(assert (=> b!2925850 m!3318667))

(assert (=> b!2925850 m!3318667))

(assert (=> b!2925850 m!3318671))

(assert (=> bm!191860 m!3318659))

(assert (=> b!2925851 m!3318667))

(assert (=> b!2925851 m!3318667))

(assert (=> b!2925851 m!3318671))

(assert (=> b!2925848 m!3318663))

(assert (=> b!2925320 d!838907))

(declare-fun d!838909 () Bool)

(assert (=> d!838909 (= (matchR!3897 r!17423 s!11993) (matchRSpec!1152 r!17423 s!11993))))

(declare-fun lt!1026672 () Unit!48369)

(declare-fun choose!17266 (Regex!9015 List!34880) Unit!48369)

(assert (=> d!838909 (= lt!1026672 (choose!17266 r!17423 s!11993))))

(assert (=> d!838909 (validRegex!3748 r!17423)))

(assert (=> d!838909 (= (mainMatchTheorem!1152 r!17423 s!11993) lt!1026672)))

(declare-fun bs!525017 () Bool)

(assert (= bs!525017 d!838909))

(assert (=> bs!525017 m!3318619))

(assert (=> bs!525017 m!3318617))

(declare-fun m!3318797 () Bool)

(assert (=> bs!525017 m!3318797))

(assert (=> bs!525017 m!3318623))

(assert (=> b!2925320 d!838909))

(declare-fun bm!191861 () Bool)

(declare-fun call!191866 () Bool)

(assert (=> bm!191861 (= call!191866 (isEmpty!19003 s!11993))))

(declare-fun d!838911 () Bool)

(declare-fun e!1845502 () Bool)

(assert (=> d!838911 e!1845502))

(declare-fun c!477785 () Bool)

(assert (=> d!838911 (= c!477785 ((_ is EmptyExpr!9015) (regTwo!18543 r!17423)))))

(declare-fun lt!1026673 () Bool)

(declare-fun e!1845506 () Bool)

(assert (=> d!838911 (= lt!1026673 e!1845506)))

(declare-fun c!477786 () Bool)

(assert (=> d!838911 (= c!477786 (isEmpty!19003 s!11993))))

(assert (=> d!838911 (validRegex!3748 (regTwo!18543 r!17423))))

(assert (=> d!838911 (= (matchR!3897 (regTwo!18543 r!17423) s!11993) lt!1026673)))

(declare-fun b!2925855 () Bool)

(declare-fun e!1845505 () Bool)

(declare-fun e!1845503 () Bool)

(assert (=> b!2925855 (= e!1845505 e!1845503)))

(declare-fun res!1207659 () Bool)

(assert (=> b!2925855 (=> res!1207659 e!1845503)))

(assert (=> b!2925855 (= res!1207659 call!191866)))

(declare-fun b!2925856 () Bool)

(assert (=> b!2925856 (= e!1845506 (matchR!3897 (derivativeStep!2447 (regTwo!18543 r!17423) (head!6506 s!11993)) (tail!4732 s!11993)))))

(declare-fun b!2925857 () Bool)

(declare-fun res!1207658 () Bool)

(declare-fun e!1845504 () Bool)

(assert (=> b!2925857 (=> res!1207658 e!1845504)))

(assert (=> b!2925857 (= res!1207658 (not ((_ is ElementMatch!9015) (regTwo!18543 r!17423))))))

(declare-fun e!1845507 () Bool)

(assert (=> b!2925857 (= e!1845507 e!1845504)))

(declare-fun b!2925858 () Bool)

(declare-fun res!1207662 () Bool)

(declare-fun e!1845508 () Bool)

(assert (=> b!2925858 (=> (not res!1207662) (not e!1845508))))

(assert (=> b!2925858 (= res!1207662 (not call!191866))))

(declare-fun b!2925859 () Bool)

(assert (=> b!2925859 (= e!1845508 (= (head!6506 s!11993) (c!477635 (regTwo!18543 r!17423))))))

(declare-fun b!2925860 () Bool)

(assert (=> b!2925860 (= e!1845504 e!1845505)))

(declare-fun res!1207656 () Bool)

(assert (=> b!2925860 (=> (not res!1207656) (not e!1845505))))

(assert (=> b!2925860 (= res!1207656 (not lt!1026673))))

(declare-fun b!2925861 () Bool)

(assert (=> b!2925861 (= e!1845506 (nullable!2833 (regTwo!18543 r!17423)))))

(declare-fun b!2925862 () Bool)

(assert (=> b!2925862 (= e!1845503 (not (= (head!6506 s!11993) (c!477635 (regTwo!18543 r!17423)))))))

(declare-fun b!2925863 () Bool)

(declare-fun res!1207657 () Bool)

(assert (=> b!2925863 (=> res!1207657 e!1845504)))

(assert (=> b!2925863 (= res!1207657 e!1845508)))

(declare-fun res!1207661 () Bool)

(assert (=> b!2925863 (=> (not res!1207661) (not e!1845508))))

(assert (=> b!2925863 (= res!1207661 lt!1026673)))

(declare-fun b!2925864 () Bool)

(declare-fun res!1207655 () Bool)

(assert (=> b!2925864 (=> (not res!1207655) (not e!1845508))))

(assert (=> b!2925864 (= res!1207655 (isEmpty!19003 (tail!4732 s!11993)))))

(declare-fun b!2925865 () Bool)

(declare-fun res!1207660 () Bool)

(assert (=> b!2925865 (=> res!1207660 e!1845503)))

(assert (=> b!2925865 (= res!1207660 (not (isEmpty!19003 (tail!4732 s!11993))))))

(declare-fun b!2925866 () Bool)

(assert (=> b!2925866 (= e!1845507 (not lt!1026673))))

(declare-fun b!2925867 () Bool)

(assert (=> b!2925867 (= e!1845502 e!1845507)))

(declare-fun c!477784 () Bool)

(assert (=> b!2925867 (= c!477784 ((_ is EmptyLang!9015) (regTwo!18543 r!17423)))))

(declare-fun b!2925868 () Bool)

(assert (=> b!2925868 (= e!1845502 (= lt!1026673 call!191866))))

(assert (= (and d!838911 c!477786) b!2925861))

(assert (= (and d!838911 (not c!477786)) b!2925856))

(assert (= (and d!838911 c!477785) b!2925868))

(assert (= (and d!838911 (not c!477785)) b!2925867))

(assert (= (and b!2925867 c!477784) b!2925866))

(assert (= (and b!2925867 (not c!477784)) b!2925857))

(assert (= (and b!2925857 (not res!1207658)) b!2925863))

(assert (= (and b!2925863 res!1207661) b!2925858))

(assert (= (and b!2925858 res!1207662) b!2925864))

(assert (= (and b!2925864 res!1207655) b!2925859))

(assert (= (and b!2925863 (not res!1207657)) b!2925860))

(assert (= (and b!2925860 res!1207656) b!2925855))

(assert (= (and b!2925855 (not res!1207659)) b!2925865))

(assert (= (and b!2925865 (not res!1207660)) b!2925862))

(assert (= (or b!2925868 b!2925855 b!2925858) bm!191861))

(declare-fun m!3318799 () Bool)

(assert (=> b!2925861 m!3318799))

(assert (=> d!838911 m!3318659))

(declare-fun m!3318801 () Bool)

(assert (=> d!838911 m!3318801))

(assert (=> b!2925856 m!3318663))

(assert (=> b!2925856 m!3318663))

(declare-fun m!3318803 () Bool)

(assert (=> b!2925856 m!3318803))

(assert (=> b!2925856 m!3318667))

(assert (=> b!2925856 m!3318803))

(assert (=> b!2925856 m!3318667))

(declare-fun m!3318805 () Bool)

(assert (=> b!2925856 m!3318805))

(assert (=> b!2925859 m!3318663))

(assert (=> b!2925864 m!3318667))

(assert (=> b!2925864 m!3318667))

(assert (=> b!2925864 m!3318671))

(assert (=> bm!191861 m!3318659))

(assert (=> b!2925865 m!3318667))

(assert (=> b!2925865 m!3318667))

(assert (=> b!2925865 m!3318671))

(assert (=> b!2925862 m!3318663))

(assert (=> b!2925314 d!838911))

(declare-fun bm!191862 () Bool)

(declare-fun call!191867 () Bool)

(assert (=> bm!191862 (= call!191867 (isEmpty!19003 s!11993))))

(declare-fun d!838913 () Bool)

(declare-fun e!1845509 () Bool)

(assert (=> d!838913 e!1845509))

(declare-fun c!477788 () Bool)

(assert (=> d!838913 (= c!477788 ((_ is EmptyExpr!9015) (regOne!18543 r!17423)))))

(declare-fun lt!1026674 () Bool)

(declare-fun e!1845513 () Bool)

(assert (=> d!838913 (= lt!1026674 e!1845513)))

(declare-fun c!477789 () Bool)

(assert (=> d!838913 (= c!477789 (isEmpty!19003 s!11993))))

(assert (=> d!838913 (validRegex!3748 (regOne!18543 r!17423))))

(assert (=> d!838913 (= (matchR!3897 (regOne!18543 r!17423) s!11993) lt!1026674)))

(declare-fun b!2925869 () Bool)

(declare-fun e!1845512 () Bool)

(declare-fun e!1845510 () Bool)

(assert (=> b!2925869 (= e!1845512 e!1845510)))

(declare-fun res!1207667 () Bool)

(assert (=> b!2925869 (=> res!1207667 e!1845510)))

(assert (=> b!2925869 (= res!1207667 call!191867)))

(declare-fun b!2925870 () Bool)

(assert (=> b!2925870 (= e!1845513 (matchR!3897 (derivativeStep!2447 (regOne!18543 r!17423) (head!6506 s!11993)) (tail!4732 s!11993)))))

(declare-fun b!2925871 () Bool)

(declare-fun res!1207666 () Bool)

(declare-fun e!1845511 () Bool)

(assert (=> b!2925871 (=> res!1207666 e!1845511)))

(assert (=> b!2925871 (= res!1207666 (not ((_ is ElementMatch!9015) (regOne!18543 r!17423))))))

(declare-fun e!1845514 () Bool)

(assert (=> b!2925871 (= e!1845514 e!1845511)))

(declare-fun b!2925872 () Bool)

(declare-fun res!1207670 () Bool)

(declare-fun e!1845515 () Bool)

(assert (=> b!2925872 (=> (not res!1207670) (not e!1845515))))

(assert (=> b!2925872 (= res!1207670 (not call!191867))))

(declare-fun b!2925873 () Bool)

(assert (=> b!2925873 (= e!1845515 (= (head!6506 s!11993) (c!477635 (regOne!18543 r!17423))))))

(declare-fun b!2925874 () Bool)

(assert (=> b!2925874 (= e!1845511 e!1845512)))

(declare-fun res!1207664 () Bool)

(assert (=> b!2925874 (=> (not res!1207664) (not e!1845512))))

(assert (=> b!2925874 (= res!1207664 (not lt!1026674))))

(declare-fun b!2925875 () Bool)

(assert (=> b!2925875 (= e!1845513 (nullable!2833 (regOne!18543 r!17423)))))

(declare-fun b!2925876 () Bool)

(assert (=> b!2925876 (= e!1845510 (not (= (head!6506 s!11993) (c!477635 (regOne!18543 r!17423)))))))

(declare-fun b!2925877 () Bool)

(declare-fun res!1207665 () Bool)

(assert (=> b!2925877 (=> res!1207665 e!1845511)))

(assert (=> b!2925877 (= res!1207665 e!1845515)))

(declare-fun res!1207669 () Bool)

(assert (=> b!2925877 (=> (not res!1207669) (not e!1845515))))

(assert (=> b!2925877 (= res!1207669 lt!1026674)))

(declare-fun b!2925878 () Bool)

(declare-fun res!1207663 () Bool)

(assert (=> b!2925878 (=> (not res!1207663) (not e!1845515))))

(assert (=> b!2925878 (= res!1207663 (isEmpty!19003 (tail!4732 s!11993)))))

(declare-fun b!2925879 () Bool)

(declare-fun res!1207668 () Bool)

(assert (=> b!2925879 (=> res!1207668 e!1845510)))

(assert (=> b!2925879 (= res!1207668 (not (isEmpty!19003 (tail!4732 s!11993))))))

(declare-fun b!2925880 () Bool)

(assert (=> b!2925880 (= e!1845514 (not lt!1026674))))

(declare-fun b!2925881 () Bool)

(assert (=> b!2925881 (= e!1845509 e!1845514)))

(declare-fun c!477787 () Bool)

(assert (=> b!2925881 (= c!477787 ((_ is EmptyLang!9015) (regOne!18543 r!17423)))))

(declare-fun b!2925882 () Bool)

(assert (=> b!2925882 (= e!1845509 (= lt!1026674 call!191867))))

(assert (= (and d!838913 c!477789) b!2925875))

(assert (= (and d!838913 (not c!477789)) b!2925870))

(assert (= (and d!838913 c!477788) b!2925882))

(assert (= (and d!838913 (not c!477788)) b!2925881))

(assert (= (and b!2925881 c!477787) b!2925880))

(assert (= (and b!2925881 (not c!477787)) b!2925871))

(assert (= (and b!2925871 (not res!1207666)) b!2925877))

(assert (= (and b!2925877 res!1207669) b!2925872))

(assert (= (and b!2925872 res!1207670) b!2925878))

(assert (= (and b!2925878 res!1207663) b!2925873))

(assert (= (and b!2925877 (not res!1207665)) b!2925874))

(assert (= (and b!2925874 res!1207664) b!2925869))

(assert (= (and b!2925869 (not res!1207667)) b!2925879))

(assert (= (and b!2925879 (not res!1207668)) b!2925876))

(assert (= (or b!2925882 b!2925869 b!2925872) bm!191862))

(assert (=> b!2925875 m!3318687))

(assert (=> d!838913 m!3318659))

(assert (=> d!838913 m!3318605))

(assert (=> b!2925870 m!3318663))

(assert (=> b!2925870 m!3318663))

(declare-fun m!3318807 () Bool)

(assert (=> b!2925870 m!3318807))

(assert (=> b!2925870 m!3318667))

(assert (=> b!2925870 m!3318807))

(assert (=> b!2925870 m!3318667))

(declare-fun m!3318809 () Bool)

(assert (=> b!2925870 m!3318809))

(assert (=> b!2925873 m!3318663))

(assert (=> b!2925878 m!3318667))

(assert (=> b!2925878 m!3318667))

(assert (=> b!2925878 m!3318671))

(assert (=> bm!191862 m!3318659))

(assert (=> b!2925879 m!3318667))

(assert (=> b!2925879 m!3318667))

(assert (=> b!2925879 m!3318671))

(assert (=> b!2925876 m!3318663))

(assert (=> b!2925319 d!838913))

(declare-fun d!838915 () Bool)

(declare-fun e!1845521 () Bool)

(assert (=> d!838915 e!1845521))

(declare-fun res!1207676 () Bool)

(assert (=> d!838915 (=> res!1207676 e!1845521)))

(assert (=> d!838915 (= res!1207676 (matchR!3897 (regOne!18543 r!17423) s!11993))))

(declare-fun lt!1026677 () Unit!48369)

(declare-fun choose!17268 (Regex!9015 Regex!9015 List!34880) Unit!48369)

(assert (=> d!838915 (= lt!1026677 (choose!17268 (regOne!18543 r!17423) (regTwo!18543 r!17423) s!11993))))

(declare-fun e!1845520 () Bool)

(assert (=> d!838915 e!1845520))

(declare-fun res!1207675 () Bool)

(assert (=> d!838915 (=> (not res!1207675) (not e!1845520))))

(assert (=> d!838915 (= res!1207675 (validRegex!3748 (regOne!18543 r!17423)))))

(assert (=> d!838915 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!264 (regOne!18543 r!17423) (regTwo!18543 r!17423) s!11993) lt!1026677)))

(declare-fun b!2925887 () Bool)

(assert (=> b!2925887 (= e!1845520 (validRegex!3748 (regTwo!18543 r!17423)))))

(declare-fun b!2925888 () Bool)

(assert (=> b!2925888 (= e!1845521 (matchR!3897 (regTwo!18543 r!17423) s!11993))))

(assert (= (and d!838915 res!1207675) b!2925887))

(assert (= (and d!838915 (not res!1207676)) b!2925888))

(assert (=> d!838915 m!3318613))

(declare-fun m!3318811 () Bool)

(assert (=> d!838915 m!3318811))

(assert (=> d!838915 m!3318605))

(assert (=> b!2925887 m!3318801))

(assert (=> b!2925888 m!3318625))

(assert (=> b!2925319 d!838915))

(declare-fun bm!191863 () Bool)

(declare-fun call!191868 () Bool)

(assert (=> bm!191863 (= call!191868 (isEmpty!19003 s!11993))))

(declare-fun d!838917 () Bool)

(declare-fun e!1845522 () Bool)

(assert (=> d!838917 e!1845522))

(declare-fun c!477791 () Bool)

(assert (=> d!838917 (= c!477791 ((_ is EmptyExpr!9015) lt!1026599))))

(declare-fun lt!1026678 () Bool)

(declare-fun e!1845526 () Bool)

(assert (=> d!838917 (= lt!1026678 e!1845526)))

(declare-fun c!477792 () Bool)

(assert (=> d!838917 (= c!477792 (isEmpty!19003 s!11993))))

(assert (=> d!838917 (validRegex!3748 lt!1026599)))

(assert (=> d!838917 (= (matchR!3897 lt!1026599 s!11993) lt!1026678)))

(declare-fun b!2925889 () Bool)

(declare-fun e!1845525 () Bool)

(declare-fun e!1845523 () Bool)

(assert (=> b!2925889 (= e!1845525 e!1845523)))

(declare-fun res!1207681 () Bool)

(assert (=> b!2925889 (=> res!1207681 e!1845523)))

(assert (=> b!2925889 (= res!1207681 call!191868)))

(declare-fun b!2925890 () Bool)

(assert (=> b!2925890 (= e!1845526 (matchR!3897 (derivativeStep!2447 lt!1026599 (head!6506 s!11993)) (tail!4732 s!11993)))))

(declare-fun b!2925891 () Bool)

(declare-fun res!1207680 () Bool)

(declare-fun e!1845524 () Bool)

(assert (=> b!2925891 (=> res!1207680 e!1845524)))

(assert (=> b!2925891 (= res!1207680 (not ((_ is ElementMatch!9015) lt!1026599)))))

(declare-fun e!1845527 () Bool)

(assert (=> b!2925891 (= e!1845527 e!1845524)))

(declare-fun b!2925892 () Bool)

(declare-fun res!1207684 () Bool)

(declare-fun e!1845528 () Bool)

(assert (=> b!2925892 (=> (not res!1207684) (not e!1845528))))

(assert (=> b!2925892 (= res!1207684 (not call!191868))))

(declare-fun b!2925893 () Bool)

(assert (=> b!2925893 (= e!1845528 (= (head!6506 s!11993) (c!477635 lt!1026599)))))

(declare-fun b!2925894 () Bool)

(assert (=> b!2925894 (= e!1845524 e!1845525)))

(declare-fun res!1207678 () Bool)

(assert (=> b!2925894 (=> (not res!1207678) (not e!1845525))))

(assert (=> b!2925894 (= res!1207678 (not lt!1026678))))

(declare-fun b!2925895 () Bool)

(assert (=> b!2925895 (= e!1845526 (nullable!2833 lt!1026599))))

(declare-fun b!2925896 () Bool)

(assert (=> b!2925896 (= e!1845523 (not (= (head!6506 s!11993) (c!477635 lt!1026599))))))

(declare-fun b!2925897 () Bool)

(declare-fun res!1207679 () Bool)

(assert (=> b!2925897 (=> res!1207679 e!1845524)))

(assert (=> b!2925897 (= res!1207679 e!1845528)))

(declare-fun res!1207683 () Bool)

(assert (=> b!2925897 (=> (not res!1207683) (not e!1845528))))

(assert (=> b!2925897 (= res!1207683 lt!1026678)))

(declare-fun b!2925898 () Bool)

(declare-fun res!1207677 () Bool)

(assert (=> b!2925898 (=> (not res!1207677) (not e!1845528))))

(assert (=> b!2925898 (= res!1207677 (isEmpty!19003 (tail!4732 s!11993)))))

(declare-fun b!2925899 () Bool)

(declare-fun res!1207682 () Bool)

(assert (=> b!2925899 (=> res!1207682 e!1845523)))

(assert (=> b!2925899 (= res!1207682 (not (isEmpty!19003 (tail!4732 s!11993))))))

(declare-fun b!2925900 () Bool)

(assert (=> b!2925900 (= e!1845527 (not lt!1026678))))

(declare-fun b!2925901 () Bool)

(assert (=> b!2925901 (= e!1845522 e!1845527)))

(declare-fun c!477790 () Bool)

(assert (=> b!2925901 (= c!477790 ((_ is EmptyLang!9015) lt!1026599))))

(declare-fun b!2925902 () Bool)

(assert (=> b!2925902 (= e!1845522 (= lt!1026678 call!191868))))

(assert (= (and d!838917 c!477792) b!2925895))

(assert (= (and d!838917 (not c!477792)) b!2925890))

(assert (= (and d!838917 c!477791) b!2925902))

(assert (= (and d!838917 (not c!477791)) b!2925901))

(assert (= (and b!2925901 c!477790) b!2925900))

(assert (= (and b!2925901 (not c!477790)) b!2925891))

(assert (= (and b!2925891 (not res!1207680)) b!2925897))

(assert (= (and b!2925897 res!1207683) b!2925892))

(assert (= (and b!2925892 res!1207684) b!2925898))

(assert (= (and b!2925898 res!1207677) b!2925893))

(assert (= (and b!2925897 (not res!1207679)) b!2925894))

(assert (= (and b!2925894 res!1207678) b!2925889))

(assert (= (and b!2925889 (not res!1207681)) b!2925899))

(assert (= (and b!2925899 (not res!1207682)) b!2925896))

(assert (= (or b!2925902 b!2925889 b!2925892) bm!191863))

(declare-fun m!3318813 () Bool)

(assert (=> b!2925895 m!3318813))

(assert (=> d!838917 m!3318659))

(assert (=> d!838917 m!3318675))

(assert (=> b!2925890 m!3318663))

(assert (=> b!2925890 m!3318663))

(declare-fun m!3318815 () Bool)

(assert (=> b!2925890 m!3318815))

(assert (=> b!2925890 m!3318667))

(assert (=> b!2925890 m!3318815))

(assert (=> b!2925890 m!3318667))

(declare-fun m!3318817 () Bool)

(assert (=> b!2925890 m!3318817))

(assert (=> b!2925893 m!3318663))

(assert (=> b!2925898 m!3318667))

(assert (=> b!2925898 m!3318667))

(assert (=> b!2925898 m!3318671))

(assert (=> bm!191863 m!3318659))

(assert (=> b!2925899 m!3318667))

(assert (=> b!2925899 m!3318667))

(assert (=> b!2925899 m!3318671))

(assert (=> b!2925896 m!3318663))

(assert (=> b!2925318 d!838917))

(assert (=> b!2925318 d!838911))

(declare-fun b!2925903 () Bool)

(declare-fun e!1845539 () Regex!9015)

(declare-fun lt!1026680 () Regex!9015)

(declare-fun lt!1026679 () Regex!9015)

(assert (=> b!2925903 (= e!1845539 (Concat!14336 lt!1026680 lt!1026679))))

(declare-fun b!2925904 () Bool)

(assert (=> b!2925904 (= e!1845539 lt!1026680)))

(declare-fun b!2925905 () Bool)

(declare-fun e!1845535 () Regex!9015)

(declare-fun lt!1026681 () Regex!9015)

(assert (=> b!2925905 (= e!1845535 lt!1026681)))

(declare-fun b!2925906 () Bool)

(declare-fun e!1845529 () Regex!9015)

(declare-fun lt!1026684 () Regex!9015)

(assert (=> b!2925906 (= e!1845529 (Star!9015 lt!1026684))))

(declare-fun b!2925907 () Bool)

(declare-fun e!1845542 () Regex!9015)

(declare-fun e!1845541 () Regex!9015)

(assert (=> b!2925907 (= e!1845542 e!1845541)))

(declare-fun c!477802 () Bool)

(assert (=> b!2925907 (= c!477802 ((_ is ElementMatch!9015) (regTwo!18543 r!17423)))))

(declare-fun bm!191864 () Bool)

(declare-fun c!477799 () Bool)

(declare-fun c!477795 () Bool)

(declare-fun call!191872 () Regex!9015)

(assert (=> bm!191864 (= call!191872 (simplify!44 (ite c!477795 (reg!9344 (regTwo!18543 r!17423)) (ite c!477799 (regOne!18543 (regTwo!18543 r!17423)) (regTwo!18542 (regTwo!18543 r!17423))))))))

(declare-fun call!191871 () Bool)

(declare-fun bm!191865 () Bool)

(assert (=> bm!191865 (= call!191871 (isEmptyExpr!270 (ite c!477795 lt!1026684 lt!1026679)))))

(declare-fun b!2925908 () Bool)

(assert (=> b!2925908 (= e!1845529 EmptyExpr!9015)))

(declare-fun b!2925909 () Bool)

(declare-fun e!1845533 () Regex!9015)

(declare-fun e!1845540 () Regex!9015)

(assert (=> b!2925909 (= e!1845533 e!1845540)))

(assert (=> b!2925909 (= c!477795 ((_ is Star!9015) (regTwo!18543 r!17423)))))

(declare-fun b!2925910 () Bool)

(assert (=> b!2925910 (= e!1845533 EmptyExpr!9015)))

(declare-fun b!2925911 () Bool)

(declare-fun e!1845531 () Regex!9015)

(declare-fun e!1845538 () Regex!9015)

(assert (=> b!2925911 (= e!1845531 e!1845538)))

(declare-fun call!191874 () Regex!9015)

(assert (=> b!2925911 (= lt!1026681 call!191874)))

(declare-fun lt!1026682 () Regex!9015)

(declare-fun call!191875 () Regex!9015)

(assert (=> b!2925911 (= lt!1026682 call!191875)))

(declare-fun c!477797 () Bool)

(declare-fun call!191873 () Bool)

(assert (=> b!2925911 (= c!477797 call!191873)))

(declare-fun b!2925912 () Bool)

(assert (=> b!2925912 (= c!477799 ((_ is Union!9015) (regTwo!18543 r!17423)))))

(assert (=> b!2925912 (= e!1845540 e!1845531)))

(declare-fun d!838919 () Bool)

(declare-fun e!1845534 () Bool)

(assert (=> d!838919 e!1845534))

(declare-fun res!1207686 () Bool)

(assert (=> d!838919 (=> (not res!1207686) (not e!1845534))))

(declare-fun lt!1026683 () Regex!9015)

(assert (=> d!838919 (= res!1207686 (validRegex!3748 lt!1026683))))

(assert (=> d!838919 (= lt!1026683 e!1845542)))

(declare-fun c!477794 () Bool)

(assert (=> d!838919 (= c!477794 ((_ is EmptyLang!9015) (regTwo!18543 r!17423)))))

(assert (=> d!838919 (validRegex!3748 (regTwo!18543 r!17423))))

(assert (=> d!838919 (= (simplify!44 (regTwo!18543 r!17423)) lt!1026683)))

(declare-fun b!2925913 () Bool)

(assert (=> b!2925913 (= e!1845542 EmptyLang!9015)))

(declare-fun b!2925914 () Bool)

(declare-fun e!1845536 () Regex!9015)

(assert (=> b!2925914 (= e!1845536 lt!1026679)))

(declare-fun b!2925915 () Bool)

(declare-fun c!477800 () Bool)

(declare-fun call!191870 () Bool)

(assert (=> b!2925915 (= c!477800 call!191870)))

(assert (=> b!2925915 (= e!1845538 e!1845535)))

(declare-fun b!2925916 () Bool)

(assert (=> b!2925916 (= e!1845538 lt!1026682)))

(declare-fun b!2925917 () Bool)

(declare-fun c!477793 () Bool)

(assert (=> b!2925917 (= c!477793 ((_ is EmptyExpr!9015) (regTwo!18543 r!17423)))))

(assert (=> b!2925917 (= e!1845541 e!1845533)))

(declare-fun b!2925918 () Bool)

(assert (=> b!2925918 (= e!1845536 e!1845539)))

(declare-fun c!477796 () Bool)

(assert (=> b!2925918 (= c!477796 call!191871)))

(declare-fun b!2925919 () Bool)

(assert (=> b!2925919 (= e!1845535 (Union!9015 lt!1026681 lt!1026682))))

(declare-fun b!2925920 () Bool)

(declare-fun e!1845532 () Bool)

(assert (=> b!2925920 (= e!1845532 call!191871)))

(declare-fun bm!191866 () Bool)

(assert (=> bm!191866 (= call!191875 (simplify!44 (ite c!477799 (regTwo!18543 (regTwo!18543 r!17423)) (regOne!18542 (regTwo!18543 r!17423)))))))

(declare-fun b!2925921 () Bool)

(declare-fun c!477798 () Bool)

(assert (=> b!2925921 (= c!477798 e!1845532)))

(declare-fun res!1207685 () Bool)

(assert (=> b!2925921 (=> res!1207685 e!1845532)))

(declare-fun call!191869 () Bool)

(assert (=> b!2925921 (= res!1207685 call!191869)))

(assert (=> b!2925921 (= lt!1026684 call!191872)))

(assert (=> b!2925921 (= e!1845540 e!1845529)))

(declare-fun b!2925922 () Bool)

(declare-fun e!1845530 () Regex!9015)

(assert (=> b!2925922 (= e!1845531 e!1845530)))

(assert (=> b!2925922 (= lt!1026680 call!191875)))

(assert (=> b!2925922 (= lt!1026679 call!191874)))

(declare-fun res!1207687 () Bool)

(assert (=> b!2925922 (= res!1207687 call!191873)))

(declare-fun e!1845537 () Bool)

(assert (=> b!2925922 (=> res!1207687 e!1845537)))

(declare-fun c!477803 () Bool)

(assert (=> b!2925922 (= c!477803 e!1845537)))

(declare-fun b!2925923 () Bool)

(assert (=> b!2925923 (= e!1845537 call!191870)))

(declare-fun b!2925924 () Bool)

(assert (=> b!2925924 (= e!1845534 (= (nullable!2833 lt!1026683) (nullable!2833 (regTwo!18543 r!17423))))))

(declare-fun b!2925925 () Bool)

(declare-fun c!477801 () Bool)

(assert (=> b!2925925 (= c!477801 (isEmptyExpr!270 lt!1026680))))

(assert (=> b!2925925 (= e!1845530 e!1845536)))

(declare-fun bm!191867 () Bool)

(assert (=> bm!191867 (= call!191869 (isEmptyLang!186 (ite c!477795 lt!1026684 (ite c!477799 lt!1026682 lt!1026679))))))

(declare-fun bm!191868 () Bool)

(assert (=> bm!191868 (= call!191870 call!191869)))

(declare-fun bm!191869 () Bool)

(assert (=> bm!191869 (= call!191873 (isEmptyLang!186 (ite c!477799 lt!1026681 lt!1026680)))))

(declare-fun bm!191870 () Bool)

(assert (=> bm!191870 (= call!191874 call!191872)))

(declare-fun b!2925926 () Bool)

(assert (=> b!2925926 (= e!1845541 (regTwo!18543 r!17423))))

(declare-fun b!2925927 () Bool)

(assert (=> b!2925927 (= e!1845530 EmptyLang!9015)))

(assert (= (and d!838919 c!477794) b!2925913))

(assert (= (and d!838919 (not c!477794)) b!2925907))

(assert (= (and b!2925907 c!477802) b!2925926))

(assert (= (and b!2925907 (not c!477802)) b!2925917))

(assert (= (and b!2925917 c!477793) b!2925910))

(assert (= (and b!2925917 (not c!477793)) b!2925909))

(assert (= (and b!2925909 c!477795) b!2925921))

(assert (= (and b!2925909 (not c!477795)) b!2925912))

(assert (= (and b!2925921 (not res!1207685)) b!2925920))

(assert (= (and b!2925921 c!477798) b!2925908))

(assert (= (and b!2925921 (not c!477798)) b!2925906))

(assert (= (and b!2925912 c!477799) b!2925911))

(assert (= (and b!2925912 (not c!477799)) b!2925922))

(assert (= (and b!2925911 c!477797) b!2925916))

(assert (= (and b!2925911 (not c!477797)) b!2925915))

(assert (= (and b!2925915 c!477800) b!2925905))

(assert (= (and b!2925915 (not c!477800)) b!2925919))

(assert (= (and b!2925922 (not res!1207687)) b!2925923))

(assert (= (and b!2925922 c!477803) b!2925927))

(assert (= (and b!2925922 (not c!477803)) b!2925925))

(assert (= (and b!2925925 c!477801) b!2925914))

(assert (= (and b!2925925 (not c!477801)) b!2925918))

(assert (= (and b!2925918 c!477796) b!2925904))

(assert (= (and b!2925918 (not c!477796)) b!2925903))

(assert (= (or b!2925911 b!2925922) bm!191870))

(assert (= (or b!2925911 b!2925922) bm!191866))

(assert (= (or b!2925911 b!2925922) bm!191869))

(assert (= (or b!2925915 b!2925923) bm!191868))

(assert (= (or b!2925920 b!2925918) bm!191865))

(assert (= (or b!2925921 bm!191870) bm!191864))

(assert (= (or b!2925921 bm!191868) bm!191867))

(assert (= (and d!838919 res!1207686) b!2925924))

(declare-fun m!3318819 () Bool)

(assert (=> bm!191867 m!3318819))

(declare-fun m!3318821 () Bool)

(assert (=> b!2925925 m!3318821))

(declare-fun m!3318823 () Bool)

(assert (=> bm!191864 m!3318823))

(declare-fun m!3318825 () Bool)

(assert (=> b!2925924 m!3318825))

(assert (=> b!2925924 m!3318799))

(declare-fun m!3318827 () Bool)

(assert (=> bm!191869 m!3318827))

(declare-fun m!3318829 () Bool)

(assert (=> bm!191865 m!3318829))

(declare-fun m!3318831 () Bool)

(assert (=> bm!191866 m!3318831))

(declare-fun m!3318833 () Bool)

(assert (=> d!838919 m!3318833))

(assert (=> d!838919 m!3318801))

(assert (=> b!2925318 d!838919))

(declare-fun d!838921 () Bool)

(assert (=> d!838921 (= (matchR!3897 (regTwo!18543 r!17423) s!11993) (matchR!3897 (simplify!44 (regTwo!18543 r!17423)) s!11993))))

(declare-fun lt!1026687 () Unit!48369)

(declare-fun choose!17269 (Regex!9015 List!34880) Unit!48369)

(assert (=> d!838921 (= lt!1026687 (choose!17269 (regTwo!18543 r!17423) s!11993))))

(assert (=> d!838921 (validRegex!3748 (regTwo!18543 r!17423))))

(assert (=> d!838921 (= (lemmaSimplifySound!42 (regTwo!18543 r!17423) s!11993) lt!1026687)))

(declare-fun bs!525018 () Bool)

(assert (= bs!525018 d!838921))

(assert (=> bs!525018 m!3318629))

(declare-fun m!3318835 () Bool)

(assert (=> bs!525018 m!3318835))

(assert (=> bs!525018 m!3318625))

(declare-fun m!3318837 () Bool)

(assert (=> bs!525018 m!3318837))

(assert (=> bs!525018 m!3318629))

(assert (=> bs!525018 m!3318801))

(assert (=> b!2925318 d!838921))

(declare-fun bm!191871 () Bool)

(declare-fun call!191877 () Bool)

(declare-fun c!477804 () Bool)

(assert (=> bm!191871 (= call!191877 (validRegex!3748 (ite c!477804 (regOne!18543 r!17423) (regTwo!18542 r!17423))))))

(declare-fun b!2925928 () Bool)

(declare-fun e!1845548 () Bool)

(declare-fun call!191878 () Bool)

(assert (=> b!2925928 (= e!1845548 call!191878)))

(declare-fun b!2925929 () Bool)

(declare-fun res!1207690 () Bool)

(declare-fun e!1845544 () Bool)

(assert (=> b!2925929 (=> res!1207690 e!1845544)))

(assert (=> b!2925929 (= res!1207690 (not ((_ is Concat!14336) r!17423)))))

(declare-fun e!1845546 () Bool)

(assert (=> b!2925929 (= e!1845546 e!1845544)))

(declare-fun b!2925930 () Bool)

(declare-fun e!1845549 () Bool)

(assert (=> b!2925930 (= e!1845544 e!1845549)))

(declare-fun res!1207689 () Bool)

(assert (=> b!2925930 (=> (not res!1207689) (not e!1845549))))

(assert (=> b!2925930 (= res!1207689 call!191878)))

(declare-fun b!2925931 () Bool)

(declare-fun e!1845543 () Bool)

(assert (=> b!2925931 (= e!1845543 e!1845546)))

(assert (=> b!2925931 (= c!477804 ((_ is Union!9015) r!17423))))

(declare-fun b!2925932 () Bool)

(declare-fun e!1845545 () Bool)

(assert (=> b!2925932 (= e!1845543 e!1845545)))

(declare-fun res!1207688 () Bool)

(assert (=> b!2925932 (= res!1207688 (not (nullable!2833 (reg!9344 r!17423))))))

(assert (=> b!2925932 (=> (not res!1207688) (not e!1845545))))

(declare-fun b!2925933 () Bool)

(declare-fun res!1207691 () Bool)

(assert (=> b!2925933 (=> (not res!1207691) (not e!1845548))))

(assert (=> b!2925933 (= res!1207691 call!191877)))

(assert (=> b!2925933 (= e!1845546 e!1845548)))

(declare-fun b!2925934 () Bool)

(declare-fun e!1845547 () Bool)

(assert (=> b!2925934 (= e!1845547 e!1845543)))

(declare-fun c!477805 () Bool)

(assert (=> b!2925934 (= c!477805 ((_ is Star!9015) r!17423))))

(declare-fun bm!191872 () Bool)

(declare-fun call!191876 () Bool)

(assert (=> bm!191872 (= call!191878 call!191876)))

(declare-fun d!838923 () Bool)

(declare-fun res!1207692 () Bool)

(assert (=> d!838923 (=> res!1207692 e!1845547)))

(assert (=> d!838923 (= res!1207692 ((_ is ElementMatch!9015) r!17423))))

(assert (=> d!838923 (= (validRegex!3748 r!17423) e!1845547)))

(declare-fun bm!191873 () Bool)

(assert (=> bm!191873 (= call!191876 (validRegex!3748 (ite c!477805 (reg!9344 r!17423) (ite c!477804 (regTwo!18543 r!17423) (regOne!18542 r!17423)))))))

(declare-fun b!2925935 () Bool)

(assert (=> b!2925935 (= e!1845549 call!191877)))

(declare-fun b!2925936 () Bool)

(assert (=> b!2925936 (= e!1845545 call!191876)))

(assert (= (and d!838923 (not res!1207692)) b!2925934))

(assert (= (and b!2925934 c!477805) b!2925932))

(assert (= (and b!2925934 (not c!477805)) b!2925931))

(assert (= (and b!2925932 res!1207688) b!2925936))

(assert (= (and b!2925931 c!477804) b!2925933))

(assert (= (and b!2925931 (not c!477804)) b!2925929))

(assert (= (and b!2925933 res!1207691) b!2925928))

(assert (= (and b!2925929 (not res!1207690)) b!2925930))

(assert (= (and b!2925930 res!1207689) b!2925935))

(assert (= (or b!2925933 b!2925935) bm!191871))

(assert (= (or b!2925928 b!2925930) bm!191872))

(assert (= (or b!2925936 bm!191872) bm!191873))

(declare-fun m!3318839 () Bool)

(assert (=> bm!191871 m!3318839))

(declare-fun m!3318841 () Bool)

(assert (=> b!2925932 m!3318841))

(declare-fun m!3318843 () Bool)

(assert (=> bm!191873 m!3318843))

(assert (=> start!284620 d!838923))

(declare-fun b!2925947 () Bool)

(declare-fun e!1845552 () Bool)

(assert (=> b!2925947 (= e!1845552 tp_is_empty!15593)))

(assert (=> b!2925321 (= tp!938120 e!1845552)))

(declare-fun b!2925950 () Bool)

(declare-fun tp!938175 () Bool)

(declare-fun tp!938176 () Bool)

(assert (=> b!2925950 (= e!1845552 (and tp!938175 tp!938176))))

(declare-fun b!2925949 () Bool)

(declare-fun tp!938177 () Bool)

(assert (=> b!2925949 (= e!1845552 tp!938177)))

(declare-fun b!2925948 () Bool)

(declare-fun tp!938178 () Bool)

(declare-fun tp!938174 () Bool)

(assert (=> b!2925948 (= e!1845552 (and tp!938178 tp!938174))))

(assert (= (and b!2925321 ((_ is ElementMatch!9015) (regOne!18543 r!17423))) b!2925947))

(assert (= (and b!2925321 ((_ is Concat!14336) (regOne!18543 r!17423))) b!2925948))

(assert (= (and b!2925321 ((_ is Star!9015) (regOne!18543 r!17423))) b!2925949))

(assert (= (and b!2925321 ((_ is Union!9015) (regOne!18543 r!17423))) b!2925950))

(declare-fun b!2925951 () Bool)

(declare-fun e!1845553 () Bool)

(assert (=> b!2925951 (= e!1845553 tp_is_empty!15593)))

(assert (=> b!2925321 (= tp!938122 e!1845553)))

(declare-fun b!2925954 () Bool)

(declare-fun tp!938180 () Bool)

(declare-fun tp!938181 () Bool)

(assert (=> b!2925954 (= e!1845553 (and tp!938180 tp!938181))))

(declare-fun b!2925953 () Bool)

(declare-fun tp!938182 () Bool)

(assert (=> b!2925953 (= e!1845553 tp!938182)))

(declare-fun b!2925952 () Bool)

(declare-fun tp!938183 () Bool)

(declare-fun tp!938179 () Bool)

(assert (=> b!2925952 (= e!1845553 (and tp!938183 tp!938179))))

(assert (= (and b!2925321 ((_ is ElementMatch!9015) (regTwo!18543 r!17423))) b!2925951))

(assert (= (and b!2925321 ((_ is Concat!14336) (regTwo!18543 r!17423))) b!2925952))

(assert (= (and b!2925321 ((_ is Star!9015) (regTwo!18543 r!17423))) b!2925953))

(assert (= (and b!2925321 ((_ is Union!9015) (regTwo!18543 r!17423))) b!2925954))

(declare-fun b!2925955 () Bool)

(declare-fun e!1845554 () Bool)

(assert (=> b!2925955 (= e!1845554 tp_is_empty!15593)))

(assert (=> b!2925315 (= tp!938124 e!1845554)))

(declare-fun b!2925958 () Bool)

(declare-fun tp!938185 () Bool)

(declare-fun tp!938186 () Bool)

(assert (=> b!2925958 (= e!1845554 (and tp!938185 tp!938186))))

(declare-fun b!2925957 () Bool)

(declare-fun tp!938187 () Bool)

(assert (=> b!2925957 (= e!1845554 tp!938187)))

(declare-fun b!2925956 () Bool)

(declare-fun tp!938188 () Bool)

(declare-fun tp!938184 () Bool)

(assert (=> b!2925956 (= e!1845554 (and tp!938188 tp!938184))))

(assert (= (and b!2925315 ((_ is ElementMatch!9015) (regOne!18542 r!17423))) b!2925955))

(assert (= (and b!2925315 ((_ is Concat!14336) (regOne!18542 r!17423))) b!2925956))

(assert (= (and b!2925315 ((_ is Star!9015) (regOne!18542 r!17423))) b!2925957))

(assert (= (and b!2925315 ((_ is Union!9015) (regOne!18542 r!17423))) b!2925958))

(declare-fun b!2925959 () Bool)

(declare-fun e!1845555 () Bool)

(assert (=> b!2925959 (= e!1845555 tp_is_empty!15593)))

(assert (=> b!2925315 (= tp!938121 e!1845555)))

(declare-fun b!2925962 () Bool)

(declare-fun tp!938190 () Bool)

(declare-fun tp!938191 () Bool)

(assert (=> b!2925962 (= e!1845555 (and tp!938190 tp!938191))))

(declare-fun b!2925961 () Bool)

(declare-fun tp!938192 () Bool)

(assert (=> b!2925961 (= e!1845555 tp!938192)))

(declare-fun b!2925960 () Bool)

(declare-fun tp!938193 () Bool)

(declare-fun tp!938189 () Bool)

(assert (=> b!2925960 (= e!1845555 (and tp!938193 tp!938189))))

(assert (= (and b!2925315 ((_ is ElementMatch!9015) (regTwo!18542 r!17423))) b!2925959))

(assert (= (and b!2925315 ((_ is Concat!14336) (regTwo!18542 r!17423))) b!2925960))

(assert (= (and b!2925315 ((_ is Star!9015) (regTwo!18542 r!17423))) b!2925961))

(assert (= (and b!2925315 ((_ is Union!9015) (regTwo!18542 r!17423))) b!2925962))

(declare-fun b!2925967 () Bool)

(declare-fun e!1845558 () Bool)

(declare-fun tp!938196 () Bool)

(assert (=> b!2925967 (= e!1845558 (and tp_is_empty!15593 tp!938196))))

(assert (=> b!2925313 (= tp!938125 e!1845558)))

(assert (= (and b!2925313 ((_ is Cons!34756) (t!233945 s!11993))) b!2925967))

(declare-fun b!2925968 () Bool)

(declare-fun e!1845559 () Bool)

(assert (=> b!2925968 (= e!1845559 tp_is_empty!15593)))

(assert (=> b!2925312 (= tp!938123 e!1845559)))

(declare-fun b!2925971 () Bool)

(declare-fun tp!938198 () Bool)

(declare-fun tp!938199 () Bool)

(assert (=> b!2925971 (= e!1845559 (and tp!938198 tp!938199))))

(declare-fun b!2925970 () Bool)

(declare-fun tp!938200 () Bool)

(assert (=> b!2925970 (= e!1845559 tp!938200)))

(declare-fun b!2925969 () Bool)

(declare-fun tp!938201 () Bool)

(declare-fun tp!938197 () Bool)

(assert (=> b!2925969 (= e!1845559 (and tp!938201 tp!938197))))

(assert (= (and b!2925312 ((_ is ElementMatch!9015) (reg!9344 r!17423))) b!2925968))

(assert (= (and b!2925312 ((_ is Concat!14336) (reg!9344 r!17423))) b!2925969))

(assert (= (and b!2925312 ((_ is Star!9015) (reg!9344 r!17423))) b!2925970))

(assert (= (and b!2925312 ((_ is Union!9015) (reg!9344 r!17423))) b!2925971))

(check-sat (not d!838873) (not b!2925861) (not b!2925924) (not b!2925372) (not b!2925426) (not bm!191862) (not b!2925432) (not b!2925898) (not bm!191798) (not b!2925953) (not b!2925956) (not bm!191869) (not b!2925845) (not bm!191866) (not b!2925832) (not b!2925969) (not b!2925960) (not bm!191860) (not b!2925950) (not b!2925948) (not b!2925970) (not bm!191799) (not b!2925893) (not b!2925535) (not b!2925949) (not bm!191858) (not b!2925899) (not bm!191864) (not b!2925879) (not b!2925962) (not d!838921) (not bm!191800) (not d!838917) (not b!2925967) (not d!838907) (not b!2925859) (not b!2925435) (not bm!191802) (not bm!191797) (not bm!191776) (not b!2925865) (not bm!191863) (not b!2925851) (not b!2925830) (not b!2925971) (not bm!191859) (not b!2925856) (not b!2925932) (not b!2925463) (not d!838913) (not b!2925957) (not bm!191871) (not b!2925434) (not b!2925864) (not b!2925958) (not bm!191865) tp_is_empty!15593 (not d!838919) (not b!2925870) (not d!838915) (not b!2925862) (not b!2925842) (not b!2925952) (not b!2925896) (not b!2925961) (not b!2925847) (not bm!191873) (not b!2925876) (not b!2925878) (not b!2925925) (not b!2925895) (not d!838879) (not b!2925887) (not b!2925431) (not b!2925536) (not b!2925888) (not b!2925875) (not b!2925850) (not d!838911) (not bm!191782) (not d!838881) (not b!2925954) (not b!2925429) (not d!838909) (not bm!191778) (not b!2925873) (not bm!191867) (not b!2925890) (not bm!191861) (not b!2925848))
(check-sat)
