; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244030 () Bool)

(assert start!244030)

(declare-fun b!2499409 () Bool)

(declare-fun e!1585494 () Bool)

(declare-fun tp!800335 () Bool)

(assert (=> b!2499409 (= e!1585494 tp!800335)))

(declare-fun b!2499410 () Bool)

(declare-fun res!1057003 () Bool)

(declare-fun e!1585493 () Bool)

(assert (=> b!2499410 (=> (not res!1057003) (not e!1585493))))

(declare-datatypes ((C!14958 0))(
  ( (C!14959 (val!9131 Int)) )
))
(declare-datatypes ((Regex!7400 0))(
  ( (ElementMatch!7400 (c!397584 C!14958)) (Concat!12096 (regOne!15312 Regex!7400) (regTwo!15312 Regex!7400)) (EmptyExpr!7400) (Star!7400 (reg!7729 Regex!7400)) (EmptyLang!7400) (Union!7400 (regOne!15313 Regex!7400) (regTwo!15313 Regex!7400)) )
))
(declare-fun r!27340 () Regex!7400)

(assert (=> b!2499410 (= res!1057003 (and (not (is-EmptyExpr!7400 r!27340)) (not (is-EmptyLang!7400 r!27340)) (not (is-ElementMatch!7400 r!27340)) (not (is-Union!7400 r!27340)) (not (is-Star!7400 r!27340))))))

(declare-fun b!2499411 () Bool)

(declare-fun tp!800333 () Bool)

(declare-fun tp!800334 () Bool)

(assert (=> b!2499411 (= e!1585494 (and tp!800333 tp!800334))))

(declare-fun res!1057004 () Bool)

(assert (=> start!244030 (=> (not res!1057004) (not e!1585493))))

(declare-fun validRegex!3026 (Regex!7400) Bool)

(assert (=> start!244030 (= res!1057004 (validRegex!3026 r!27340))))

(assert (=> start!244030 e!1585493))

(assert (=> start!244030 e!1585494))

(declare-fun tp_is_empty!12655 () Bool)

(assert (=> start!244030 tp_is_empty!12655))

(declare-fun e!1585495 () Bool)

(assert (=> start!244030 e!1585495))

(declare-fun b!2499412 () Bool)

(assert (=> b!2499412 (= e!1585494 tp_is_empty!12655)))

(declare-fun b!2499413 () Bool)

(assert (=> b!2499413 (= e!1585493 (not (validRegex!3026 (regOne!15312 r!27340))))))

(declare-fun lt!895427 () Regex!7400)

(declare-datatypes ((List!29465 0))(
  ( (Nil!29365) (Cons!29365 (h!34785 C!14958) (t!211164 List!29465)) )
))
(declare-fun tl!4068 () List!29465)

(declare-fun matchR!3403 (Regex!7400 List!29465) Bool)

(declare-fun derivative!95 (Regex!7400 List!29465) Regex!7400)

(assert (=> b!2499413 (= (matchR!3403 lt!895427 tl!4068) (matchR!3403 (derivative!95 lt!895427 tl!4068) Nil!29365))))

(declare-datatypes ((Unit!43057 0))(
  ( (Unit!43058) )
))
(declare-fun lt!895428 () Unit!43057)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!49 (Regex!7400 List!29465) Unit!43057)

(assert (=> b!2499413 (= lt!895428 (lemmaMatchRIsSameAsWholeDerivativeAndNil!49 lt!895427 tl!4068))))

(declare-fun c!14016 () C!14958)

(declare-fun derivativeStep!1969 (Regex!7400 C!14958) Regex!7400)

(assert (=> b!2499413 (= lt!895427 (Union!7400 (Concat!12096 (derivativeStep!1969 (regOne!15312 r!27340) c!14016) (regTwo!15312 r!27340)) (derivativeStep!1969 (regTwo!15312 r!27340) c!14016)))))

(declare-fun b!2499414 () Bool)

(declare-fun res!1057005 () Bool)

(assert (=> b!2499414 (=> (not res!1057005) (not e!1585493))))

(declare-fun nullable!2317 (Regex!7400) Bool)

(assert (=> b!2499414 (= res!1057005 (nullable!2317 (regOne!15312 r!27340)))))

(declare-fun b!2499415 () Bool)

(declare-fun tp!800331 () Bool)

(assert (=> b!2499415 (= e!1585495 (and tp_is_empty!12655 tp!800331))))

(declare-fun b!2499416 () Bool)

(declare-fun res!1057006 () Bool)

(assert (=> b!2499416 (=> (not res!1057006) (not e!1585493))))

(assert (=> b!2499416 (= res!1057006 (nullable!2317 (derivative!95 (derivativeStep!1969 r!27340 c!14016) tl!4068)))))

(declare-fun b!2499417 () Bool)

(declare-fun tp!800336 () Bool)

(declare-fun tp!800332 () Bool)

(assert (=> b!2499417 (= e!1585494 (and tp!800336 tp!800332))))

(assert (= (and start!244030 res!1057004) b!2499416))

(assert (= (and b!2499416 res!1057006) b!2499410))

(assert (= (and b!2499410 res!1057003) b!2499414))

(assert (= (and b!2499414 res!1057005) b!2499413))

(assert (= (and start!244030 (is-ElementMatch!7400 r!27340)) b!2499412))

(assert (= (and start!244030 (is-Concat!12096 r!27340)) b!2499417))

(assert (= (and start!244030 (is-Star!7400 r!27340)) b!2499409))

(assert (= (and start!244030 (is-Union!7400 r!27340)) b!2499411))

(assert (= (and start!244030 (is-Cons!29365 tl!4068)) b!2499415))

(declare-fun m!2862609 () Bool)

(assert (=> start!244030 m!2862609))

(declare-fun m!2862611 () Bool)

(assert (=> b!2499413 m!2862611))

(declare-fun m!2862613 () Bool)

(assert (=> b!2499413 m!2862613))

(declare-fun m!2862615 () Bool)

(assert (=> b!2499413 m!2862615))

(declare-fun m!2862617 () Bool)

(assert (=> b!2499413 m!2862617))

(declare-fun m!2862619 () Bool)

(assert (=> b!2499413 m!2862619))

(declare-fun m!2862621 () Bool)

(assert (=> b!2499413 m!2862621))

(assert (=> b!2499413 m!2862611))

(declare-fun m!2862623 () Bool)

(assert (=> b!2499413 m!2862623))

(declare-fun m!2862625 () Bool)

(assert (=> b!2499414 m!2862625))

(declare-fun m!2862627 () Bool)

(assert (=> b!2499416 m!2862627))

(assert (=> b!2499416 m!2862627))

(declare-fun m!2862629 () Bool)

(assert (=> b!2499416 m!2862629))

(assert (=> b!2499416 m!2862629))

(declare-fun m!2862631 () Bool)

(assert (=> b!2499416 m!2862631))

(push 1)

(assert (not b!2499416))

(assert tp_is_empty!12655)

(assert (not b!2499411))

(assert (not b!2499413))

(assert (not b!2499415))

(assert (not start!244030))

(assert (not b!2499414))

(assert (not b!2499417))

(assert (not b!2499409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!715250 () Bool)

(declare-fun nullableFct!587 (Regex!7400) Bool)

(assert (=> d!715250 (= (nullable!2317 (regOne!15312 r!27340)) (nullableFct!587 (regOne!15312 r!27340)))))

(declare-fun bs!468542 () Bool)

(assert (= bs!468542 d!715250))

(declare-fun m!2862657 () Bool)

(assert (=> bs!468542 m!2862657))

(assert (=> b!2499414 d!715250))

(declare-fun d!715254 () Bool)

(declare-fun e!1585537 () Bool)

(assert (=> d!715254 e!1585537))

(declare-fun c!397596 () Bool)

(assert (=> d!715254 (= c!397596 (is-EmptyExpr!7400 (derivative!95 lt!895427 tl!4068)))))

(declare-fun lt!895437 () Bool)

(declare-fun e!1585533 () Bool)

(assert (=> d!715254 (= lt!895437 e!1585533)))

(declare-fun c!397597 () Bool)

(declare-fun isEmpty!16827 (List!29465) Bool)

(assert (=> d!715254 (= c!397597 (isEmpty!16827 Nil!29365))))

(assert (=> d!715254 (validRegex!3026 (derivative!95 lt!895427 tl!4068))))

(assert (=> d!715254 (= (matchR!3403 (derivative!95 lt!895427 tl!4068) Nil!29365) lt!895437)))

(declare-fun b!2499491 () Bool)

(declare-fun e!1585534 () Bool)

(declare-fun head!5691 (List!29465) C!14958)

(assert (=> b!2499491 (= e!1585534 (= (head!5691 Nil!29365) (c!397584 (derivative!95 lt!895427 tl!4068))))))

(declare-fun bm!154235 () Bool)

(declare-fun call!154240 () Bool)

(assert (=> bm!154235 (= call!154240 (isEmpty!16827 Nil!29365))))

(declare-fun b!2499492 () Bool)

(declare-fun e!1585535 () Bool)

(assert (=> b!2499492 (= e!1585537 e!1585535)))

(declare-fun c!397598 () Bool)

(assert (=> b!2499492 (= c!397598 (is-EmptyLang!7400 (derivative!95 lt!895427 tl!4068)))))

(declare-fun b!2499493 () Bool)

(declare-fun res!1057051 () Bool)

(declare-fun e!1585538 () Bool)

(assert (=> b!2499493 (=> res!1057051 e!1585538)))

(declare-fun tail!3968 (List!29465) List!29465)

(assert (=> b!2499493 (= res!1057051 (not (isEmpty!16827 (tail!3968 Nil!29365))))))

(declare-fun b!2499494 () Bool)

(assert (=> b!2499494 (= e!1585537 (= lt!895437 call!154240))))

(declare-fun b!2499495 () Bool)

(assert (=> b!2499495 (= e!1585538 (not (= (head!5691 Nil!29365) (c!397584 (derivative!95 lt!895427 tl!4068)))))))

(declare-fun b!2499496 () Bool)

(declare-fun res!1057049 () Bool)

(declare-fun e!1585539 () Bool)

(assert (=> b!2499496 (=> res!1057049 e!1585539)))

(assert (=> b!2499496 (= res!1057049 (not (is-ElementMatch!7400 (derivative!95 lt!895427 tl!4068))))))

(assert (=> b!2499496 (= e!1585535 e!1585539)))

(declare-fun b!2499497 () Bool)

(declare-fun e!1585536 () Bool)

(assert (=> b!2499497 (= e!1585539 e!1585536)))

(declare-fun res!1057048 () Bool)

(assert (=> b!2499497 (=> (not res!1057048) (not e!1585536))))

(assert (=> b!2499497 (= res!1057048 (not lt!895437))))

(declare-fun b!2499498 () Bool)

(declare-fun res!1057052 () Bool)

(assert (=> b!2499498 (=> (not res!1057052) (not e!1585534))))

(assert (=> b!2499498 (= res!1057052 (not call!154240))))

(declare-fun b!2499499 () Bool)

(assert (=> b!2499499 (= e!1585536 e!1585538)))

(declare-fun res!1057050 () Bool)

(assert (=> b!2499499 (=> res!1057050 e!1585538)))

(assert (=> b!2499499 (= res!1057050 call!154240)))

(declare-fun b!2499500 () Bool)

(declare-fun res!1057046 () Bool)

(assert (=> b!2499500 (=> res!1057046 e!1585539)))

(assert (=> b!2499500 (= res!1057046 e!1585534)))

(declare-fun res!1057045 () Bool)

(assert (=> b!2499500 (=> (not res!1057045) (not e!1585534))))

(assert (=> b!2499500 (= res!1057045 lt!895437)))

(declare-fun b!2499501 () Bool)

(declare-fun res!1057047 () Bool)

(assert (=> b!2499501 (=> (not res!1057047) (not e!1585534))))

(assert (=> b!2499501 (= res!1057047 (isEmpty!16827 (tail!3968 Nil!29365)))))

(declare-fun b!2499502 () Bool)

(assert (=> b!2499502 (= e!1585535 (not lt!895437))))

(declare-fun b!2499503 () Bool)

(assert (=> b!2499503 (= e!1585533 (nullable!2317 (derivative!95 lt!895427 tl!4068)))))

(declare-fun b!2499504 () Bool)

(assert (=> b!2499504 (= e!1585533 (matchR!3403 (derivativeStep!1969 (derivative!95 lt!895427 tl!4068) (head!5691 Nil!29365)) (tail!3968 Nil!29365)))))

(assert (= (and d!715254 c!397597) b!2499503))

(assert (= (and d!715254 (not c!397597)) b!2499504))

(assert (= (and d!715254 c!397596) b!2499494))

(assert (= (and d!715254 (not c!397596)) b!2499492))

(assert (= (and b!2499492 c!397598) b!2499502))

(assert (= (and b!2499492 (not c!397598)) b!2499496))

(assert (= (and b!2499496 (not res!1057049)) b!2499500))

(assert (= (and b!2499500 res!1057045) b!2499498))

(assert (= (and b!2499498 res!1057052) b!2499501))

(assert (= (and b!2499501 res!1057047) b!2499491))

(assert (= (and b!2499500 (not res!1057046)) b!2499497))

(assert (= (and b!2499497 res!1057048) b!2499499))

(assert (= (and b!2499499 (not res!1057050)) b!2499493))

(assert (= (and b!2499493 (not res!1057051)) b!2499495))

(assert (= (or b!2499494 b!2499498 b!2499499) bm!154235))

(declare-fun m!2862659 () Bool)

(assert (=> b!2499504 m!2862659))

(assert (=> b!2499504 m!2862611))

(assert (=> b!2499504 m!2862659))

(declare-fun m!2862661 () Bool)

(assert (=> b!2499504 m!2862661))

(declare-fun m!2862663 () Bool)

(assert (=> b!2499504 m!2862663))

(assert (=> b!2499504 m!2862661))

(assert (=> b!2499504 m!2862663))

(declare-fun m!2862665 () Bool)

(assert (=> b!2499504 m!2862665))

(assert (=> b!2499493 m!2862663))

(assert (=> b!2499493 m!2862663))

(declare-fun m!2862667 () Bool)

(assert (=> b!2499493 m!2862667))

(assert (=> b!2499501 m!2862663))

(assert (=> b!2499501 m!2862663))

(assert (=> b!2499501 m!2862667))

(assert (=> b!2499495 m!2862659))

(declare-fun m!2862669 () Bool)

(assert (=> d!715254 m!2862669))

(assert (=> d!715254 m!2862611))

(declare-fun m!2862671 () Bool)

(assert (=> d!715254 m!2862671))

(assert (=> b!2499503 m!2862611))

(declare-fun m!2862673 () Bool)

(assert (=> b!2499503 m!2862673))

(assert (=> b!2499491 m!2862659))

(assert (=> bm!154235 m!2862669))

(assert (=> b!2499413 d!715254))

(declare-fun d!715256 () Bool)

(assert (=> d!715256 (= (matchR!3403 lt!895427 tl!4068) (matchR!3403 (derivative!95 lt!895427 tl!4068) Nil!29365))))

(declare-fun lt!895440 () Unit!43057)

(declare-fun choose!14759 (Regex!7400 List!29465) Unit!43057)

(assert (=> d!715256 (= lt!895440 (choose!14759 lt!895427 tl!4068))))

(assert (=> d!715256 (validRegex!3026 lt!895427)))

(assert (=> d!715256 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!49 lt!895427 tl!4068) lt!895440)))

(declare-fun bs!468543 () Bool)

(assert (= bs!468543 d!715256))

(assert (=> bs!468543 m!2862617))

(declare-fun m!2862675 () Bool)

(assert (=> bs!468543 m!2862675))

(assert (=> bs!468543 m!2862611))

(assert (=> bs!468543 m!2862613))

(assert (=> bs!468543 m!2862611))

(declare-fun m!2862677 () Bool)

(assert (=> bs!468543 m!2862677))

(assert (=> b!2499413 d!715256))

(declare-fun d!715258 () Bool)

(declare-fun lt!895443 () Regex!7400)

(assert (=> d!715258 (validRegex!3026 lt!895443)))

(declare-fun e!1585549 () Regex!7400)

(assert (=> d!715258 (= lt!895443 e!1585549)))

(declare-fun c!397603 () Bool)

(assert (=> d!715258 (= c!397603 (is-Cons!29365 tl!4068))))

(assert (=> d!715258 (validRegex!3026 lt!895427)))

(assert (=> d!715258 (= (derivative!95 lt!895427 tl!4068) lt!895443)))

(declare-fun b!2499518 () Bool)

(assert (=> b!2499518 (= e!1585549 (derivative!95 (derivativeStep!1969 lt!895427 (h!34785 tl!4068)) (t!211164 tl!4068)))))

(declare-fun b!2499519 () Bool)

(assert (=> b!2499519 (= e!1585549 lt!895427)))

(assert (= (and d!715258 c!397603) b!2499518))

(assert (= (and d!715258 (not c!397603)) b!2499519))

(declare-fun m!2862687 () Bool)

(assert (=> d!715258 m!2862687))

(assert (=> d!715258 m!2862677))

(declare-fun m!2862689 () Bool)

(assert (=> b!2499518 m!2862689))

(assert (=> b!2499518 m!2862689))

(declare-fun m!2862691 () Bool)

(assert (=> b!2499518 m!2862691))

(assert (=> b!2499413 d!715258))

(declare-fun d!715264 () Bool)

(declare-fun e!1585554 () Bool)

(assert (=> d!715264 e!1585554))

(declare-fun c!397604 () Bool)

(assert (=> d!715264 (= c!397604 (is-EmptyExpr!7400 lt!895427))))

(declare-fun lt!895444 () Bool)

(declare-fun e!1585550 () Bool)

(assert (=> d!715264 (= lt!895444 e!1585550)))

(declare-fun c!397605 () Bool)

(assert (=> d!715264 (= c!397605 (isEmpty!16827 tl!4068))))

(assert (=> d!715264 (validRegex!3026 lt!895427)))

(assert (=> d!715264 (= (matchR!3403 lt!895427 tl!4068) lt!895444)))

(declare-fun b!2499520 () Bool)

(declare-fun e!1585551 () Bool)

(assert (=> b!2499520 (= e!1585551 (= (head!5691 tl!4068) (c!397584 lt!895427)))))

(declare-fun bm!154239 () Bool)

(declare-fun call!154244 () Bool)

(assert (=> bm!154239 (= call!154244 (isEmpty!16827 tl!4068))))

(declare-fun b!2499521 () Bool)

(declare-fun e!1585552 () Bool)

(assert (=> b!2499521 (= e!1585554 e!1585552)))

(declare-fun c!397606 () Bool)

(assert (=> b!2499521 (= c!397606 (is-EmptyLang!7400 lt!895427))))

(declare-fun b!2499522 () Bool)

(declare-fun res!1057064 () Bool)

(declare-fun e!1585555 () Bool)

(assert (=> b!2499522 (=> res!1057064 e!1585555)))

(assert (=> b!2499522 (= res!1057064 (not (isEmpty!16827 (tail!3968 tl!4068))))))

(declare-fun b!2499523 () Bool)

(assert (=> b!2499523 (= e!1585554 (= lt!895444 call!154244))))

(declare-fun b!2499524 () Bool)

(assert (=> b!2499524 (= e!1585555 (not (= (head!5691 tl!4068) (c!397584 lt!895427))))))

(declare-fun b!2499525 () Bool)

(declare-fun res!1057062 () Bool)

(declare-fun e!1585556 () Bool)

(assert (=> b!2499525 (=> res!1057062 e!1585556)))

(assert (=> b!2499525 (= res!1057062 (not (is-ElementMatch!7400 lt!895427)))))

(assert (=> b!2499525 (= e!1585552 e!1585556)))

(declare-fun b!2499526 () Bool)

(declare-fun e!1585553 () Bool)

(assert (=> b!2499526 (= e!1585556 e!1585553)))

(declare-fun res!1057061 () Bool)

(assert (=> b!2499526 (=> (not res!1057061) (not e!1585553))))

(assert (=> b!2499526 (= res!1057061 (not lt!895444))))

(declare-fun b!2499527 () Bool)

(declare-fun res!1057065 () Bool)

(assert (=> b!2499527 (=> (not res!1057065) (not e!1585551))))

(assert (=> b!2499527 (= res!1057065 (not call!154244))))

(declare-fun b!2499528 () Bool)

(assert (=> b!2499528 (= e!1585553 e!1585555)))

(declare-fun res!1057063 () Bool)

(assert (=> b!2499528 (=> res!1057063 e!1585555)))

(assert (=> b!2499528 (= res!1057063 call!154244)))

(declare-fun b!2499529 () Bool)

(declare-fun res!1057059 () Bool)

(assert (=> b!2499529 (=> res!1057059 e!1585556)))

(assert (=> b!2499529 (= res!1057059 e!1585551)))

(declare-fun res!1057058 () Bool)

(assert (=> b!2499529 (=> (not res!1057058) (not e!1585551))))

(assert (=> b!2499529 (= res!1057058 lt!895444)))

(declare-fun b!2499530 () Bool)

(declare-fun res!1057060 () Bool)

(assert (=> b!2499530 (=> (not res!1057060) (not e!1585551))))

(assert (=> b!2499530 (= res!1057060 (isEmpty!16827 (tail!3968 tl!4068)))))

(declare-fun b!2499531 () Bool)

(assert (=> b!2499531 (= e!1585552 (not lt!895444))))

(declare-fun b!2499532 () Bool)

(assert (=> b!2499532 (= e!1585550 (nullable!2317 lt!895427))))

(declare-fun b!2499533 () Bool)

(assert (=> b!2499533 (= e!1585550 (matchR!3403 (derivativeStep!1969 lt!895427 (head!5691 tl!4068)) (tail!3968 tl!4068)))))

(assert (= (and d!715264 c!397605) b!2499532))

(assert (= (and d!715264 (not c!397605)) b!2499533))

(assert (= (and d!715264 c!397604) b!2499523))

(assert (= (and d!715264 (not c!397604)) b!2499521))

(assert (= (and b!2499521 c!397606) b!2499531))

(assert (= (and b!2499521 (not c!397606)) b!2499525))

(assert (= (and b!2499525 (not res!1057062)) b!2499529))

(assert (= (and b!2499529 res!1057058) b!2499527))

(assert (= (and b!2499527 res!1057065) b!2499530))

(assert (= (and b!2499530 res!1057060) b!2499520))

(assert (= (and b!2499529 (not res!1057059)) b!2499526))

(assert (= (and b!2499526 res!1057061) b!2499528))

(assert (= (and b!2499528 (not res!1057063)) b!2499522))

(assert (= (and b!2499522 (not res!1057064)) b!2499524))

(assert (= (or b!2499523 b!2499527 b!2499528) bm!154239))

(declare-fun m!2862693 () Bool)

(assert (=> b!2499533 m!2862693))

(assert (=> b!2499533 m!2862693))

(declare-fun m!2862695 () Bool)

(assert (=> b!2499533 m!2862695))

(declare-fun m!2862697 () Bool)

(assert (=> b!2499533 m!2862697))

(assert (=> b!2499533 m!2862695))

(assert (=> b!2499533 m!2862697))

(declare-fun m!2862699 () Bool)

(assert (=> b!2499533 m!2862699))

(assert (=> b!2499522 m!2862697))

(assert (=> b!2499522 m!2862697))

(declare-fun m!2862701 () Bool)

(assert (=> b!2499522 m!2862701))

(assert (=> b!2499530 m!2862697))

(assert (=> b!2499530 m!2862697))

(assert (=> b!2499530 m!2862701))

(assert (=> b!2499524 m!2862693))

(declare-fun m!2862703 () Bool)

(assert (=> d!715264 m!2862703))

(assert (=> d!715264 m!2862677))

(declare-fun m!2862705 () Bool)

(assert (=> b!2499532 m!2862705))

(assert (=> b!2499520 m!2862693))

(assert (=> bm!154239 m!2862703))

(assert (=> b!2499413 d!715264))

(declare-fun bm!154246 () Bool)

(declare-fun call!154251 () Bool)

(declare-fun call!154253 () Bool)

(assert (=> bm!154246 (= call!154251 call!154253)))

(declare-fun b!2499558 () Bool)

(declare-fun res!1057076 () Bool)

(declare-fun e!1585579 () Bool)

(assert (=> b!2499558 (=> res!1057076 e!1585579)))

(assert (=> b!2499558 (= res!1057076 (not (is-Concat!12096 (regOne!15312 r!27340))))))

(declare-fun e!1585575 () Bool)

(assert (=> b!2499558 (= e!1585575 e!1585579)))

(declare-fun b!2499559 () Bool)

(declare-fun e!1585577 () Bool)

(assert (=> b!2499559 (= e!1585577 call!154253)))

(declare-fun bm!154247 () Bool)

(declare-fun call!154252 () Bool)

(declare-fun c!397615 () Bool)

(assert (=> bm!154247 (= call!154252 (validRegex!3026 (ite c!397615 (regTwo!15313 (regOne!15312 r!27340)) (regOne!15312 (regOne!15312 r!27340)))))))

(declare-fun b!2499560 () Bool)

(declare-fun e!1585580 () Bool)

(assert (=> b!2499560 (= e!1585579 e!1585580)))

(declare-fun res!1057077 () Bool)

(assert (=> b!2499560 (=> (not res!1057077) (not e!1585580))))

(assert (=> b!2499560 (= res!1057077 call!154252)))

(declare-fun b!2499561 () Bool)

(assert (=> b!2499561 (= e!1585580 call!154251)))

(declare-fun b!2499562 () Bool)

(declare-fun e!1585578 () Bool)

(assert (=> b!2499562 (= e!1585578 e!1585577)))

(declare-fun res!1057079 () Bool)

(assert (=> b!2499562 (= res!1057079 (not (nullable!2317 (reg!7729 (regOne!15312 r!27340)))))))

(assert (=> b!2499562 (=> (not res!1057079) (not e!1585577))))

(declare-fun d!715266 () Bool)

(declare-fun res!1057078 () Bool)

(declare-fun e!1585574 () Bool)

(assert (=> d!715266 (=> res!1057078 e!1585574)))

(assert (=> d!715266 (= res!1057078 (is-ElementMatch!7400 (regOne!15312 r!27340)))))

(assert (=> d!715266 (= (validRegex!3026 (regOne!15312 r!27340)) e!1585574)))

(declare-fun b!2499563 () Bool)

(declare-fun e!1585576 () Bool)

(assert (=> b!2499563 (= e!1585576 call!154252)))

(declare-fun b!2499564 () Bool)

(assert (=> b!2499564 (= e!1585574 e!1585578)))

(declare-fun c!397614 () Bool)

(assert (=> b!2499564 (= c!397614 (is-Star!7400 (regOne!15312 r!27340)))))

(declare-fun bm!154248 () Bool)

(assert (=> bm!154248 (= call!154253 (validRegex!3026 (ite c!397614 (reg!7729 (regOne!15312 r!27340)) (ite c!397615 (regOne!15313 (regOne!15312 r!27340)) (regTwo!15312 (regOne!15312 r!27340))))))))

(declare-fun b!2499565 () Bool)

(declare-fun res!1057080 () Bool)

(assert (=> b!2499565 (=> (not res!1057080) (not e!1585576))))

(assert (=> b!2499565 (= res!1057080 call!154251)))

(assert (=> b!2499565 (= e!1585575 e!1585576)))

(declare-fun b!2499566 () Bool)

(assert (=> b!2499566 (= e!1585578 e!1585575)))

(assert (=> b!2499566 (= c!397615 (is-Union!7400 (regOne!15312 r!27340)))))

(assert (= (and d!715266 (not res!1057078)) b!2499564))

(assert (= (and b!2499564 c!397614) b!2499562))

(assert (= (and b!2499564 (not c!397614)) b!2499566))

(assert (= (and b!2499562 res!1057079) b!2499559))

(assert (= (and b!2499566 c!397615) b!2499565))

(assert (= (and b!2499566 (not c!397615)) b!2499558))

(assert (= (and b!2499565 res!1057080) b!2499563))

(assert (= (and b!2499558 (not res!1057076)) b!2499560))

(assert (= (and b!2499560 res!1057077) b!2499561))

(assert (= (or b!2499565 b!2499561) bm!154246))

(assert (= (or b!2499563 b!2499560) bm!154247))

(assert (= (or b!2499559 bm!154246) bm!154248))

(declare-fun m!2862715 () Bool)

(assert (=> bm!154247 m!2862715))

(declare-fun m!2862717 () Bool)

(assert (=> b!2499562 m!2862717))

(declare-fun m!2862719 () Bool)

(assert (=> bm!154248 m!2862719))

(assert (=> b!2499413 d!715266))

(declare-fun bm!154257 () Bool)

(declare-fun call!154264 () Regex!7400)

(declare-fun call!154262 () Regex!7400)

(assert (=> bm!154257 (= call!154264 call!154262)))

(declare-fun b!2499587 () Bool)

(declare-fun e!1585591 () Regex!7400)

(declare-fun e!1585592 () Regex!7400)

(assert (=> b!2499587 (= e!1585591 e!1585592)))

(declare-fun c!397629 () Bool)

(assert (=> b!2499587 (= c!397629 (is-ElementMatch!7400 (regTwo!15312 r!27340)))))

(declare-fun b!2499588 () Bool)

(declare-fun e!1585595 () Regex!7400)

(assert (=> b!2499588 (= e!1585595 (Union!7400 (Concat!12096 call!154264 (regTwo!15312 (regTwo!15312 r!27340))) EmptyLang!7400))))

(declare-fun bm!154258 () Bool)

(declare-fun call!154263 () Regex!7400)

(assert (=> bm!154258 (= call!154262 call!154263)))

(declare-fun b!2499590 () Bool)

(declare-fun e!1585594 () Regex!7400)

(assert (=> b!2499590 (= e!1585594 (Concat!12096 call!154262 (regTwo!15312 r!27340)))))

(declare-fun b!2499591 () Bool)

(declare-fun e!1585593 () Regex!7400)

(declare-fun call!154265 () Regex!7400)

(assert (=> b!2499591 (= e!1585593 (Union!7400 call!154265 call!154263))))

(declare-fun b!2499592 () Bool)

(assert (=> b!2499592 (= e!1585593 e!1585594)))

(declare-fun c!397626 () Bool)

(assert (=> b!2499592 (= c!397626 (is-Star!7400 (regTwo!15312 r!27340)))))

(declare-fun b!2499589 () Bool)

(declare-fun c!397628 () Bool)

(assert (=> b!2499589 (= c!397628 (nullable!2317 (regOne!15312 (regTwo!15312 r!27340))))))

(assert (=> b!2499589 (= e!1585594 e!1585595)))

(declare-fun d!715270 () Bool)

(declare-fun lt!895452 () Regex!7400)

(assert (=> d!715270 (validRegex!3026 lt!895452)))

(assert (=> d!715270 (= lt!895452 e!1585591)))

(declare-fun c!397630 () Bool)

(assert (=> d!715270 (= c!397630 (or (is-EmptyExpr!7400 (regTwo!15312 r!27340)) (is-EmptyLang!7400 (regTwo!15312 r!27340))))))

(assert (=> d!715270 (validRegex!3026 (regTwo!15312 r!27340))))

(assert (=> d!715270 (= (derivativeStep!1969 (regTwo!15312 r!27340) c!14016) lt!895452)))

(declare-fun b!2499593 () Bool)

(declare-fun c!397627 () Bool)

(assert (=> b!2499593 (= c!397627 (is-Union!7400 (regTwo!15312 r!27340)))))

(assert (=> b!2499593 (= e!1585592 e!1585593)))

(declare-fun bm!154259 () Bool)

(assert (=> bm!154259 (= call!154265 (derivativeStep!1969 (ite c!397627 (regOne!15313 (regTwo!15312 r!27340)) (regTwo!15312 (regTwo!15312 r!27340))) c!14016))))

(declare-fun b!2499594 () Bool)

(assert (=> b!2499594 (= e!1585592 (ite (= c!14016 (c!397584 (regTwo!15312 r!27340))) EmptyExpr!7400 EmptyLang!7400))))

(declare-fun bm!154260 () Bool)

(assert (=> bm!154260 (= call!154263 (derivativeStep!1969 (ite c!397627 (regTwo!15313 (regTwo!15312 r!27340)) (ite c!397626 (reg!7729 (regTwo!15312 r!27340)) (regOne!15312 (regTwo!15312 r!27340)))) c!14016))))

(declare-fun b!2499595 () Bool)

(assert (=> b!2499595 (= e!1585591 EmptyLang!7400)))

(declare-fun b!2499596 () Bool)

(assert (=> b!2499596 (= e!1585595 (Union!7400 (Concat!12096 call!154264 (regTwo!15312 (regTwo!15312 r!27340))) call!154265))))

(assert (= (and d!715270 c!397630) b!2499595))

(assert (= (and d!715270 (not c!397630)) b!2499587))

(assert (= (and b!2499587 c!397629) b!2499594))

(assert (= (and b!2499587 (not c!397629)) b!2499593))

(assert (= (and b!2499593 c!397627) b!2499591))

(assert (= (and b!2499593 (not c!397627)) b!2499592))

(assert (= (and b!2499592 c!397626) b!2499590))

(assert (= (and b!2499592 (not c!397626)) b!2499589))

(assert (= (and b!2499589 c!397628) b!2499596))

(assert (= (and b!2499589 (not c!397628)) b!2499588))

(assert (= (or b!2499596 b!2499588) bm!154257))

(assert (= (or b!2499590 bm!154257) bm!154258))

(assert (= (or b!2499591 bm!154258) bm!154260))

(assert (= (or b!2499591 b!2499596) bm!154259))

(declare-fun m!2862721 () Bool)

(assert (=> b!2499589 m!2862721))

(declare-fun m!2862723 () Bool)

(assert (=> d!715270 m!2862723))

(declare-fun m!2862725 () Bool)

(assert (=> d!715270 m!2862725))

(declare-fun m!2862727 () Bool)

(assert (=> bm!154259 m!2862727))

(declare-fun m!2862729 () Bool)

(assert (=> bm!154260 m!2862729))

(assert (=> b!2499413 d!715270))

(declare-fun bm!154261 () Bool)

(declare-fun call!154268 () Regex!7400)

(declare-fun call!154266 () Regex!7400)

(assert (=> bm!154261 (= call!154268 call!154266)))

(declare-fun b!2499617 () Bool)

(declare-fun e!1585604 () Regex!7400)

(declare-fun e!1585605 () Regex!7400)

(assert (=> b!2499617 (= e!1585604 e!1585605)))

(declare-fun c!397643 () Bool)

(assert (=> b!2499617 (= c!397643 (is-ElementMatch!7400 (regOne!15312 r!27340)))))

(declare-fun b!2499618 () Bool)

(declare-fun e!1585608 () Regex!7400)

(assert (=> b!2499618 (= e!1585608 (Union!7400 (Concat!12096 call!154268 (regTwo!15312 (regOne!15312 r!27340))) EmptyLang!7400))))

(declare-fun bm!154262 () Bool)

(declare-fun call!154267 () Regex!7400)

(assert (=> bm!154262 (= call!154266 call!154267)))

(declare-fun b!2499620 () Bool)

(declare-fun e!1585607 () Regex!7400)

(assert (=> b!2499620 (= e!1585607 (Concat!12096 call!154266 (regOne!15312 r!27340)))))

(declare-fun b!2499621 () Bool)

(declare-fun e!1585606 () Regex!7400)

(declare-fun call!154269 () Regex!7400)

(assert (=> b!2499621 (= e!1585606 (Union!7400 call!154269 call!154267))))

(declare-fun b!2499622 () Bool)

(assert (=> b!2499622 (= e!1585606 e!1585607)))

(declare-fun c!397639 () Bool)

(assert (=> b!2499622 (= c!397639 (is-Star!7400 (regOne!15312 r!27340)))))

(declare-fun b!2499619 () Bool)

(declare-fun c!397641 () Bool)

(assert (=> b!2499619 (= c!397641 (nullable!2317 (regOne!15312 (regOne!15312 r!27340))))))

(assert (=> b!2499619 (= e!1585607 e!1585608)))

(declare-fun d!715272 () Bool)

(declare-fun lt!895453 () Regex!7400)

(assert (=> d!715272 (validRegex!3026 lt!895453)))

(assert (=> d!715272 (= lt!895453 e!1585604)))

(declare-fun c!397644 () Bool)

(assert (=> d!715272 (= c!397644 (or (is-EmptyExpr!7400 (regOne!15312 r!27340)) (is-EmptyLang!7400 (regOne!15312 r!27340))))))

(assert (=> d!715272 (validRegex!3026 (regOne!15312 r!27340))))

(assert (=> d!715272 (= (derivativeStep!1969 (regOne!15312 r!27340) c!14016) lt!895453)))

(declare-fun b!2499623 () Bool)

(declare-fun c!397640 () Bool)

(assert (=> b!2499623 (= c!397640 (is-Union!7400 (regOne!15312 r!27340)))))

(assert (=> b!2499623 (= e!1585605 e!1585606)))

(declare-fun bm!154263 () Bool)

(assert (=> bm!154263 (= call!154269 (derivativeStep!1969 (ite c!397640 (regOne!15313 (regOne!15312 r!27340)) (regTwo!15312 (regOne!15312 r!27340))) c!14016))))

(declare-fun b!2499624 () Bool)

(assert (=> b!2499624 (= e!1585605 (ite (= c!14016 (c!397584 (regOne!15312 r!27340))) EmptyExpr!7400 EmptyLang!7400))))

(declare-fun bm!154264 () Bool)

(assert (=> bm!154264 (= call!154267 (derivativeStep!1969 (ite c!397640 (regTwo!15313 (regOne!15312 r!27340)) (ite c!397639 (reg!7729 (regOne!15312 r!27340)) (regOne!15312 (regOne!15312 r!27340)))) c!14016))))

(declare-fun b!2499625 () Bool)

(assert (=> b!2499625 (= e!1585604 EmptyLang!7400)))

(declare-fun b!2499626 () Bool)

(assert (=> b!2499626 (= e!1585608 (Union!7400 (Concat!12096 call!154268 (regTwo!15312 (regOne!15312 r!27340))) call!154269))))

(assert (= (and d!715272 c!397644) b!2499625))

(assert (= (and d!715272 (not c!397644)) b!2499617))

(assert (= (and b!2499617 c!397643) b!2499624))

(assert (= (and b!2499617 (not c!397643)) b!2499623))

(assert (= (and b!2499623 c!397640) b!2499621))

(assert (= (and b!2499623 (not c!397640)) b!2499622))

(assert (= (and b!2499622 c!397639) b!2499620))

(assert (= (and b!2499622 (not c!397639)) b!2499619))

(assert (= (and b!2499619 c!397641) b!2499626))

(assert (= (and b!2499619 (not c!397641)) b!2499618))

(assert (= (or b!2499626 b!2499618) bm!154261))

(assert (= (or b!2499620 bm!154261) bm!154262))

(assert (= (or b!2499621 bm!154262) bm!154264))

(assert (= (or b!2499621 b!2499626) bm!154263))

(declare-fun m!2862731 () Bool)

(assert (=> b!2499619 m!2862731))

(declare-fun m!2862733 () Bool)

(assert (=> d!715272 m!2862733))

(assert (=> d!715272 m!2862619))

(declare-fun m!2862735 () Bool)

(assert (=> bm!154263 m!2862735))

(declare-fun m!2862737 () Bool)

(assert (=> bm!154264 m!2862737))

(assert (=> b!2499413 d!715272))

(declare-fun d!715274 () Bool)

(assert (=> d!715274 (= (nullable!2317 (derivative!95 (derivativeStep!1969 r!27340 c!14016) tl!4068)) (nullableFct!587 (derivative!95 (derivativeStep!1969 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468545 () Bool)

(assert (= bs!468545 d!715274))

(assert (=> bs!468545 m!2862629))

(declare-fun m!2862739 () Bool)

(assert (=> bs!468545 m!2862739))

(assert (=> b!2499416 d!715274))

(declare-fun d!715276 () Bool)

(declare-fun lt!895454 () Regex!7400)

(assert (=> d!715276 (validRegex!3026 lt!895454)))

(declare-fun e!1585611 () Regex!7400)

(assert (=> d!715276 (= lt!895454 e!1585611)))

(declare-fun c!397646 () Bool)

(assert (=> d!715276 (= c!397646 (is-Cons!29365 tl!4068))))

(assert (=> d!715276 (validRegex!3026 (derivativeStep!1969 r!27340 c!14016))))

(assert (=> d!715276 (= (derivative!95 (derivativeStep!1969 r!27340 c!14016) tl!4068) lt!895454)))

(declare-fun b!2499627 () Bool)

(assert (=> b!2499627 (= e!1585611 (derivative!95 (derivativeStep!1969 (derivativeStep!1969 r!27340 c!14016) (h!34785 tl!4068)) (t!211164 tl!4068)))))

(declare-fun b!2499628 () Bool)

(assert (=> b!2499628 (= e!1585611 (derivativeStep!1969 r!27340 c!14016))))

(assert (= (and d!715276 c!397646) b!2499627))

(assert (= (and d!715276 (not c!397646)) b!2499628))

(declare-fun m!2862741 () Bool)

(assert (=> d!715276 m!2862741))

(assert (=> d!715276 m!2862627))

(declare-fun m!2862743 () Bool)

(assert (=> d!715276 m!2862743))

(assert (=> b!2499627 m!2862627))

(declare-fun m!2862745 () Bool)

(assert (=> b!2499627 m!2862745))

(assert (=> b!2499627 m!2862745))

(declare-fun m!2862747 () Bool)

(assert (=> b!2499627 m!2862747))

(assert (=> b!2499416 d!715276))

(declare-fun bm!154267 () Bool)

(declare-fun call!154274 () Regex!7400)

(declare-fun call!154272 () Regex!7400)

(assert (=> bm!154267 (= call!154274 call!154272)))

(declare-fun b!2499629 () Bool)

(declare-fun e!1585612 () Regex!7400)

(declare-fun e!1585613 () Regex!7400)

(assert (=> b!2499629 (= e!1585612 e!1585613)))

(declare-fun c!397650 () Bool)

(assert (=> b!2499629 (= c!397650 (is-ElementMatch!7400 r!27340))))

(declare-fun b!2499630 () Bool)

(declare-fun e!1585616 () Regex!7400)

(assert (=> b!2499630 (= e!1585616 (Union!7400 (Concat!12096 call!154274 (regTwo!15312 r!27340)) EmptyLang!7400))))

(declare-fun bm!154268 () Bool)

(declare-fun call!154273 () Regex!7400)

(assert (=> bm!154268 (= call!154272 call!154273)))

(declare-fun b!2499632 () Bool)

(declare-fun e!1585615 () Regex!7400)

(assert (=> b!2499632 (= e!1585615 (Concat!12096 call!154272 r!27340))))

(declare-fun b!2499633 () Bool)

(declare-fun e!1585614 () Regex!7400)

(declare-fun call!154275 () Regex!7400)

(assert (=> b!2499633 (= e!1585614 (Union!7400 call!154275 call!154273))))

(declare-fun b!2499634 () Bool)

(assert (=> b!2499634 (= e!1585614 e!1585615)))

(declare-fun c!397647 () Bool)

(assert (=> b!2499634 (= c!397647 (is-Star!7400 r!27340))))

(declare-fun b!2499631 () Bool)

(declare-fun c!397649 () Bool)

(assert (=> b!2499631 (= c!397649 (nullable!2317 (regOne!15312 r!27340)))))

(assert (=> b!2499631 (= e!1585615 e!1585616)))

(declare-fun d!715278 () Bool)

(declare-fun lt!895455 () Regex!7400)

(assert (=> d!715278 (validRegex!3026 lt!895455)))

(assert (=> d!715278 (= lt!895455 e!1585612)))

(declare-fun c!397651 () Bool)

(assert (=> d!715278 (= c!397651 (or (is-EmptyExpr!7400 r!27340) (is-EmptyLang!7400 r!27340)))))

(assert (=> d!715278 (validRegex!3026 r!27340)))

(assert (=> d!715278 (= (derivativeStep!1969 r!27340 c!14016) lt!895455)))

(declare-fun b!2499635 () Bool)

(declare-fun c!397648 () Bool)

(assert (=> b!2499635 (= c!397648 (is-Union!7400 r!27340))))

(assert (=> b!2499635 (= e!1585613 e!1585614)))

(declare-fun bm!154269 () Bool)

(assert (=> bm!154269 (= call!154275 (derivativeStep!1969 (ite c!397648 (regOne!15313 r!27340) (regTwo!15312 r!27340)) c!14016))))

(declare-fun b!2499636 () Bool)

(assert (=> b!2499636 (= e!1585613 (ite (= c!14016 (c!397584 r!27340)) EmptyExpr!7400 EmptyLang!7400))))

(declare-fun bm!154270 () Bool)

(assert (=> bm!154270 (= call!154273 (derivativeStep!1969 (ite c!397648 (regTwo!15313 r!27340) (ite c!397647 (reg!7729 r!27340) (regOne!15312 r!27340))) c!14016))))

(declare-fun b!2499637 () Bool)

(assert (=> b!2499637 (= e!1585612 EmptyLang!7400)))

(declare-fun b!2499638 () Bool)

(assert (=> b!2499638 (= e!1585616 (Union!7400 (Concat!12096 call!154274 (regTwo!15312 r!27340)) call!154275))))

(assert (= (and d!715278 c!397651) b!2499637))

(assert (= (and d!715278 (not c!397651)) b!2499629))

(assert (= (and b!2499629 c!397650) b!2499636))

(assert (= (and b!2499629 (not c!397650)) b!2499635))

(assert (= (and b!2499635 c!397648) b!2499633))

(assert (= (and b!2499635 (not c!397648)) b!2499634))

(assert (= (and b!2499634 c!397647) b!2499632))

(assert (= (and b!2499634 (not c!397647)) b!2499631))

(assert (= (and b!2499631 c!397649) b!2499638))

(assert (= (and b!2499631 (not c!397649)) b!2499630))

(assert (= (or b!2499638 b!2499630) bm!154267))

(assert (= (or b!2499632 bm!154267) bm!154268))

(assert (= (or b!2499633 bm!154268) bm!154270))

(assert (= (or b!2499633 b!2499638) bm!154269))

(assert (=> b!2499631 m!2862625))

(declare-fun m!2862749 () Bool)

(assert (=> d!715278 m!2862749))

(assert (=> d!715278 m!2862609))

(declare-fun m!2862751 () Bool)

(assert (=> bm!154269 m!2862751))

(declare-fun m!2862753 () Bool)

(assert (=> bm!154270 m!2862753))

(assert (=> b!2499416 d!715278))

(declare-fun bm!154273 () Bool)

(declare-fun call!154278 () Bool)

(declare-fun call!154280 () Bool)

(assert (=> bm!154273 (= call!154278 call!154280)))

(declare-fun b!2499639 () Bool)

(declare-fun res!1057081 () Bool)

(declare-fun e!1585622 () Bool)

(assert (=> b!2499639 (=> res!1057081 e!1585622)))

(assert (=> b!2499639 (= res!1057081 (not (is-Concat!12096 r!27340)))))

(declare-fun e!1585618 () Bool)

(assert (=> b!2499639 (= e!1585618 e!1585622)))

(declare-fun b!2499640 () Bool)

(declare-fun e!1585620 () Bool)

(assert (=> b!2499640 (= e!1585620 call!154280)))

(declare-fun bm!154274 () Bool)

(declare-fun call!154279 () Bool)

(declare-fun c!397653 () Bool)

(assert (=> bm!154274 (= call!154279 (validRegex!3026 (ite c!397653 (regTwo!15313 r!27340) (regOne!15312 r!27340))))))

(declare-fun b!2499641 () Bool)

(declare-fun e!1585623 () Bool)

(assert (=> b!2499641 (= e!1585622 e!1585623)))

(declare-fun res!1057082 () Bool)

(assert (=> b!2499641 (=> (not res!1057082) (not e!1585623))))

(assert (=> b!2499641 (= res!1057082 call!154279)))

(declare-fun b!2499642 () Bool)

(assert (=> b!2499642 (= e!1585623 call!154278)))

(declare-fun b!2499643 () Bool)

(declare-fun e!1585621 () Bool)

(assert (=> b!2499643 (= e!1585621 e!1585620)))

(declare-fun res!1057084 () Bool)

(assert (=> b!2499643 (= res!1057084 (not (nullable!2317 (reg!7729 r!27340))))))

(assert (=> b!2499643 (=> (not res!1057084) (not e!1585620))))

(declare-fun d!715280 () Bool)

(declare-fun res!1057083 () Bool)

(declare-fun e!1585617 () Bool)

(assert (=> d!715280 (=> res!1057083 e!1585617)))

(assert (=> d!715280 (= res!1057083 (is-ElementMatch!7400 r!27340))))

(assert (=> d!715280 (= (validRegex!3026 r!27340) e!1585617)))

(declare-fun b!2499644 () Bool)

(declare-fun e!1585619 () Bool)

(assert (=> b!2499644 (= e!1585619 call!154279)))

(declare-fun b!2499645 () Bool)

(assert (=> b!2499645 (= e!1585617 e!1585621)))

(declare-fun c!397652 () Bool)

(assert (=> b!2499645 (= c!397652 (is-Star!7400 r!27340))))

(declare-fun bm!154275 () Bool)

(assert (=> bm!154275 (= call!154280 (validRegex!3026 (ite c!397652 (reg!7729 r!27340) (ite c!397653 (regOne!15313 r!27340) (regTwo!15312 r!27340)))))))

(declare-fun b!2499646 () Bool)

(declare-fun res!1057085 () Bool)

(assert (=> b!2499646 (=> (not res!1057085) (not e!1585619))))

(assert (=> b!2499646 (= res!1057085 call!154278)))

(assert (=> b!2499646 (= e!1585618 e!1585619)))

(declare-fun b!2499647 () Bool)

(assert (=> b!2499647 (= e!1585621 e!1585618)))

(assert (=> b!2499647 (= c!397653 (is-Union!7400 r!27340))))

(assert (= (and d!715280 (not res!1057083)) b!2499645))

(assert (= (and b!2499645 c!397652) b!2499643))

(assert (= (and b!2499645 (not c!397652)) b!2499647))

(assert (= (and b!2499643 res!1057084) b!2499640))

(assert (= (and b!2499647 c!397653) b!2499646))

(assert (= (and b!2499647 (not c!397653)) b!2499639))

(assert (= (and b!2499646 res!1057085) b!2499644))

(assert (= (and b!2499639 (not res!1057081)) b!2499641))

(assert (= (and b!2499641 res!1057082) b!2499642))

(assert (= (or b!2499646 b!2499642) bm!154273))

(assert (= (or b!2499644 b!2499641) bm!154274))

(assert (= (or b!2499640 bm!154273) bm!154275))

(declare-fun m!2862755 () Bool)

(assert (=> bm!154274 m!2862755))

(declare-fun m!2862757 () Bool)

(assert (=> b!2499643 m!2862757))

(declare-fun m!2862759 () Bool)

(assert (=> bm!154275 m!2862759))

(assert (=> start!244030 d!715280))

(declare-fun b!2499652 () Bool)

(declare-fun e!1585626 () Bool)

(declare-fun tp!800357 () Bool)

(assert (=> b!2499652 (= e!1585626 (and tp_is_empty!12655 tp!800357))))

(assert (=> b!2499415 (= tp!800331 e!1585626)))

(assert (= (and b!2499415 (is-Cons!29365 (t!211164 tl!4068))) b!2499652))

(declare-fun b!2499665 () Bool)

(declare-fun e!1585629 () Bool)

(declare-fun tp!800369 () Bool)

(assert (=> b!2499665 (= e!1585629 tp!800369)))

(assert (=> b!2499409 (= tp!800335 e!1585629)))

(declare-fun b!2499663 () Bool)

(assert (=> b!2499663 (= e!1585629 tp_is_empty!12655)))

(declare-fun b!2499664 () Bool)

(declare-fun tp!800370 () Bool)

(declare-fun tp!800372 () Bool)

(assert (=> b!2499664 (= e!1585629 (and tp!800370 tp!800372))))

(declare-fun b!2499666 () Bool)

(declare-fun tp!800368 () Bool)

(declare-fun tp!800371 () Bool)

(assert (=> b!2499666 (= e!1585629 (and tp!800368 tp!800371))))

(assert (= (and b!2499409 (is-ElementMatch!7400 (reg!7729 r!27340))) b!2499663))

(assert (= (and b!2499409 (is-Concat!12096 (reg!7729 r!27340))) b!2499664))

(assert (= (and b!2499409 (is-Star!7400 (reg!7729 r!27340))) b!2499665))

(assert (= (and b!2499409 (is-Union!7400 (reg!7729 r!27340))) b!2499666))

(declare-fun b!2499669 () Bool)

(declare-fun e!1585630 () Bool)

(declare-fun tp!800374 () Bool)

(assert (=> b!2499669 (= e!1585630 tp!800374)))

(assert (=> b!2499411 (= tp!800333 e!1585630)))

(declare-fun b!2499667 () Bool)

(assert (=> b!2499667 (= e!1585630 tp_is_empty!12655)))

(declare-fun b!2499668 () Bool)

(declare-fun tp!800375 () Bool)

(declare-fun tp!800377 () Bool)

(assert (=> b!2499668 (= e!1585630 (and tp!800375 tp!800377))))

(declare-fun b!2499670 () Bool)

(declare-fun tp!800373 () Bool)

(declare-fun tp!800376 () Bool)

(assert (=> b!2499670 (= e!1585630 (and tp!800373 tp!800376))))

(assert (= (and b!2499411 (is-ElementMatch!7400 (regOne!15313 r!27340))) b!2499667))

(assert (= (and b!2499411 (is-Concat!12096 (regOne!15313 r!27340))) b!2499668))

(assert (= (and b!2499411 (is-Star!7400 (regOne!15313 r!27340))) b!2499669))

(assert (= (and b!2499411 (is-Union!7400 (regOne!15313 r!27340))) b!2499670))

(declare-fun b!2499673 () Bool)

(declare-fun e!1585631 () Bool)

(declare-fun tp!800379 () Bool)

(assert (=> b!2499673 (= e!1585631 tp!800379)))

(assert (=> b!2499411 (= tp!800334 e!1585631)))

(declare-fun b!2499671 () Bool)

(assert (=> b!2499671 (= e!1585631 tp_is_empty!12655)))

(declare-fun b!2499672 () Bool)

(declare-fun tp!800380 () Bool)

(declare-fun tp!800382 () Bool)

(assert (=> b!2499672 (= e!1585631 (and tp!800380 tp!800382))))

(declare-fun b!2499674 () Bool)

(declare-fun tp!800378 () Bool)

(declare-fun tp!800381 () Bool)

(assert (=> b!2499674 (= e!1585631 (and tp!800378 tp!800381))))

(assert (= (and b!2499411 (is-ElementMatch!7400 (regTwo!15313 r!27340))) b!2499671))

(assert (= (and b!2499411 (is-Concat!12096 (regTwo!15313 r!27340))) b!2499672))

(assert (= (and b!2499411 (is-Star!7400 (regTwo!15313 r!27340))) b!2499673))

(assert (= (and b!2499411 (is-Union!7400 (regTwo!15313 r!27340))) b!2499674))

(declare-fun b!2499677 () Bool)

(declare-fun e!1585632 () Bool)

(declare-fun tp!800384 () Bool)

(assert (=> b!2499677 (= e!1585632 tp!800384)))

(assert (=> b!2499417 (= tp!800336 e!1585632)))

(declare-fun b!2499675 () Bool)

(assert (=> b!2499675 (= e!1585632 tp_is_empty!12655)))

(declare-fun b!2499676 () Bool)

(declare-fun tp!800385 () Bool)

(declare-fun tp!800387 () Bool)

(assert (=> b!2499676 (= e!1585632 (and tp!800385 tp!800387))))

(declare-fun b!2499678 () Bool)

(declare-fun tp!800383 () Bool)

(declare-fun tp!800386 () Bool)

(assert (=> b!2499678 (= e!1585632 (and tp!800383 tp!800386))))

(assert (= (and b!2499417 (is-ElementMatch!7400 (regOne!15312 r!27340))) b!2499675))

(assert (= (and b!2499417 (is-Concat!12096 (regOne!15312 r!27340))) b!2499676))

(assert (= (and b!2499417 (is-Star!7400 (regOne!15312 r!27340))) b!2499677))

(assert (= (and b!2499417 (is-Union!7400 (regOne!15312 r!27340))) b!2499678))

(declare-fun b!2499681 () Bool)

(declare-fun e!1585633 () Bool)

(declare-fun tp!800389 () Bool)

(assert (=> b!2499681 (= e!1585633 tp!800389)))

(assert (=> b!2499417 (= tp!800332 e!1585633)))

(declare-fun b!2499679 () Bool)

(assert (=> b!2499679 (= e!1585633 tp_is_empty!12655)))

(declare-fun b!2499680 () Bool)

(declare-fun tp!800390 () Bool)

(declare-fun tp!800392 () Bool)

(assert (=> b!2499680 (= e!1585633 (and tp!800390 tp!800392))))

(declare-fun b!2499682 () Bool)

(declare-fun tp!800388 () Bool)

(declare-fun tp!800391 () Bool)

(assert (=> b!2499682 (= e!1585633 (and tp!800388 tp!800391))))

(assert (= (and b!2499417 (is-ElementMatch!7400 (regTwo!15312 r!27340))) b!2499679))

(assert (= (and b!2499417 (is-Concat!12096 (regTwo!15312 r!27340))) b!2499680))

(assert (= (and b!2499417 (is-Star!7400 (regTwo!15312 r!27340))) b!2499681))

(assert (= (and b!2499417 (is-Union!7400 (regTwo!15312 r!27340))) b!2499682))

(push 1)

(assert (not bm!154269))

(assert (not b!2499676))

(assert (not b!2499493))

(assert (not d!715278))

(assert (not b!2499504))

(assert (not bm!154264))

(assert (not bm!154274))

(assert (not b!2499520))

(assert (not b!2499532))

(assert (not b!2499666))

(assert (not bm!154248))

(assert (not b!2499533))

(assert (not b!2499522))

(assert (not bm!154247))

(assert (not d!715258))

(assert (not bm!154270))

(assert (not b!2499673))

(assert (not bm!154239))

(assert (not b!2499664))

(assert (not b!2499530))

(assert (not b!2499674))

(assert (not b!2499524))

(assert (not bm!154275))

(assert (not b!2499682))

(assert (not b!2499518))

(assert (not d!715254))

(assert (not b!2499627))

(assert (not b!2499501))

(assert (not b!2499672))

(assert tp_is_empty!12655)

(assert (not b!2499491))

(assert (not b!2499643))

(assert (not bm!154259))

(assert (not b!2499670))

(assert (not b!2499681))

(assert (not bm!154235))

(assert (not b!2499668))

(assert (not b!2499495))

(assert (not bm!154260))

(assert (not d!715274))

(assert (not b!2499678))

(assert (not b!2499665))

(assert (not b!2499619))

(assert (not b!2499680))

(assert (not b!2499589))

(assert (not bm!154263))

(assert (not d!715256))

(assert (not d!715272))

(assert (not b!2499652))

(assert (not d!715276))

(assert (not b!2499631))

(assert (not d!715270))

(assert (not d!715264))

(assert (not b!2499677))

(assert (not b!2499562))

(assert (not d!715250))

(assert (not b!2499669))

(assert (not b!2499503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

