; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243882 () Bool)

(assert start!243882)

(declare-fun b!2497459 () Bool)

(declare-fun e!1584537 () Bool)

(declare-fun e!1584535 () Bool)

(assert (=> b!2497459 (= e!1584537 e!1584535)))

(declare-fun res!1056262 () Bool)

(assert (=> b!2497459 (=> (not res!1056262) (not e!1584535))))

(declare-datatypes ((C!14930 0))(
  ( (C!14931 (val!9117 Int)) )
))
(declare-datatypes ((Regex!7386 0))(
  ( (ElementMatch!7386 (c!397214 C!14930)) (Concat!12082 (regOne!15284 Regex!7386) (regTwo!15284 Regex!7386)) (EmptyExpr!7386) (Star!7386 (reg!7715 Regex!7386)) (EmptyLang!7386) (Union!7386 (regOne!15285 Regex!7386) (regTwo!15285 Regex!7386)) )
))
(declare-fun lt!895051 () Regex!7386)

(declare-fun nullable!2303 (Regex!7386) Bool)

(assert (=> b!2497459 (= res!1056262 (nullable!2303 lt!895051))))

(declare-fun lt!895055 () Regex!7386)

(declare-datatypes ((List!29451 0))(
  ( (Nil!29351) (Cons!29351 (h!34771 C!14930) (t!211150 List!29451)) )
))
(declare-fun tl!4068 () List!29451)

(declare-fun derivative!81 (Regex!7386 List!29451) Regex!7386)

(assert (=> b!2497459 (= lt!895051 (derivative!81 lt!895055 tl!4068))))

(declare-fun r!27340 () Regex!7386)

(declare-fun c!14016 () C!14930)

(declare-fun derivativeStep!1955 (Regex!7386 C!14930) Regex!7386)

(assert (=> b!2497459 (= lt!895055 (derivativeStep!1955 r!27340 c!14016))))

(declare-fun b!2497460 () Bool)

(declare-fun e!1584534 () Bool)

(assert (=> b!2497460 (= e!1584535 e!1584534)))

(declare-fun res!1056257 () Bool)

(assert (=> b!2497460 (=> (not res!1056257) (not e!1584534))))

(declare-fun lt!895058 () Regex!7386)

(declare-fun lt!895056 () Regex!7386)

(assert (=> b!2497460 (= res!1056257 (= lt!895055 (Concat!12082 lt!895058 lt!895056)))))

(assert (=> b!2497460 (= lt!895056 (Star!7386 (reg!7715 r!27340)))))

(assert (=> b!2497460 (= lt!895058 (derivativeStep!1955 (reg!7715 r!27340) c!14016))))

(declare-fun b!2497461 () Bool)

(declare-fun e!1584536 () Bool)

(declare-fun tp_is_empty!12627 () Bool)

(assert (=> b!2497461 (= e!1584536 tp_is_empty!12627)))

(declare-fun b!2497462 () Bool)

(declare-fun tp!799779 () Bool)

(declare-fun tp!799776 () Bool)

(assert (=> b!2497462 (= e!1584536 (and tp!799779 tp!799776))))

(declare-fun b!2497463 () Bool)

(declare-fun e!1584532 () Bool)

(declare-fun validRegex!3012 (Regex!7386) Bool)

(assert (=> b!2497463 (= e!1584532 (validRegex!3012 lt!895058))))

(declare-fun b!2497464 () Bool)

(declare-fun res!1056261 () Bool)

(assert (=> b!2497464 (=> (not res!1056261) (not e!1584534))))

(assert (=> b!2497464 (= res!1056261 (not (nullable!2303 (derivative!81 lt!895058 tl!4068))))))

(declare-fun b!2497465 () Bool)

(declare-fun e!1584531 () Bool)

(assert (=> b!2497465 (= e!1584531 e!1584532)))

(declare-fun res!1056256 () Bool)

(assert (=> b!2497465 (=> res!1056256 e!1584532)))

(declare-datatypes ((tuple2!29390 0))(
  ( (tuple2!29391 (_1!17237 List!29451) (_2!17237 List!29451)) )
))
(declare-fun lt!895057 () tuple2!29390)

(declare-fun ++!7168 (List!29451 List!29451) List!29451)

(assert (=> b!2497465 (= res!1056256 (not (= (++!7168 (_1!17237 lt!895057) (_2!17237 lt!895057)) tl!4068)))))

(declare-datatypes ((Option!5815 0))(
  ( (None!5814) (Some!5814 (v!31745 tuple2!29390)) )
))
(declare-fun lt!895054 () Option!5815)

(declare-fun get!9091 (Option!5815) tuple2!29390)

(assert (=> b!2497465 (= lt!895057 (get!9091 lt!895054))))

(declare-fun isDefined!4637 (Option!5815) Bool)

(assert (=> b!2497465 (isDefined!4637 lt!895054)))

(declare-fun findConcatSeparation!837 (Regex!7386 Regex!7386 List!29451 List!29451 List!29451) Option!5815)

(assert (=> b!2497465 (= lt!895054 (findConcatSeparation!837 lt!895058 lt!895056 Nil!29351 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43041 0))(
  ( (Unit!43042) )
))
(declare-fun lt!895059 () Unit!43041)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!119 (Regex!7386 Regex!7386 List!29451) Unit!43041)

(assert (=> b!2497465 (= lt!895059 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!119 lt!895058 lt!895056 tl!4068))))

(declare-fun res!1056258 () Bool)

(assert (=> start!243882 (=> (not res!1056258) (not e!1584537))))

(assert (=> start!243882 (= res!1056258 (validRegex!3012 r!27340))))

(assert (=> start!243882 e!1584537))

(assert (=> start!243882 e!1584536))

(assert (=> start!243882 tp_is_empty!12627))

(declare-fun e!1584533 () Bool)

(assert (=> start!243882 e!1584533))

(declare-fun b!2497466 () Bool)

(declare-fun tp!799777 () Bool)

(declare-fun tp!799780 () Bool)

(assert (=> b!2497466 (= e!1584536 (and tp!799777 tp!799780))))

(declare-fun b!2497467 () Bool)

(declare-fun res!1056260 () Bool)

(assert (=> b!2497467 (=> res!1056260 e!1584532)))

(declare-fun matchR!3395 (Regex!7386 List!29451) Bool)

(assert (=> b!2497467 (= res!1056260 (not (matchR!3395 (reg!7715 r!27340) (Cons!29351 c!14016 (_1!17237 lt!895057)))))))

(declare-fun b!2497468 () Bool)

(declare-fun tp!799778 () Bool)

(assert (=> b!2497468 (= e!1584536 tp!799778)))

(declare-fun b!2497469 () Bool)

(declare-fun res!1056259 () Bool)

(assert (=> b!2497469 (=> res!1056259 e!1584532)))

(assert (=> b!2497469 (= res!1056259 (not (matchR!3395 lt!895056 (_2!17237 lt!895057))))))

(declare-fun b!2497470 () Bool)

(declare-fun tp!799775 () Bool)

(assert (=> b!2497470 (= e!1584533 (and tp_is_empty!12627 tp!799775))))

(declare-fun b!2497471 () Bool)

(assert (=> b!2497471 (= e!1584534 (not e!1584531))))

(declare-fun res!1056255 () Bool)

(assert (=> b!2497471 (=> res!1056255 e!1584531)))

(declare-fun lt!895052 () Bool)

(assert (=> b!2497471 (= res!1056255 (not lt!895052))))

(assert (=> b!2497471 (= lt!895052 (matchR!3395 lt!895051 Nil!29351))))

(assert (=> b!2497471 (= lt!895052 (matchR!3395 lt!895055 tl!4068))))

(declare-fun lt!895053 () Unit!43041)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!41 (Regex!7386 List!29451) Unit!43041)

(assert (=> b!2497471 (= lt!895053 (lemmaMatchRIsSameAsWholeDerivativeAndNil!41 lt!895055 tl!4068))))

(declare-fun b!2497472 () Bool)

(declare-fun res!1056263 () Bool)

(assert (=> b!2497472 (=> (not res!1056263) (not e!1584535))))

(assert (=> b!2497472 (= res!1056263 (and (not (is-EmptyExpr!7386 r!27340)) (not (is-EmptyLang!7386 r!27340)) (not (is-ElementMatch!7386 r!27340)) (not (is-Union!7386 r!27340)) (is-Star!7386 r!27340)))))

(assert (= (and start!243882 res!1056258) b!2497459))

(assert (= (and b!2497459 res!1056262) b!2497472))

(assert (= (and b!2497472 res!1056263) b!2497460))

(assert (= (and b!2497460 res!1056257) b!2497464))

(assert (= (and b!2497464 res!1056261) b!2497471))

(assert (= (and b!2497471 (not res!1056255)) b!2497465))

(assert (= (and b!2497465 (not res!1056256)) b!2497469))

(assert (= (and b!2497469 (not res!1056259)) b!2497467))

(assert (= (and b!2497467 (not res!1056260)) b!2497463))

(assert (= (and start!243882 (is-ElementMatch!7386 r!27340)) b!2497461))

(assert (= (and start!243882 (is-Concat!12082 r!27340)) b!2497462))

(assert (= (and start!243882 (is-Star!7386 r!27340)) b!2497468))

(assert (= (and start!243882 (is-Union!7386 r!27340)) b!2497466))

(assert (= (and start!243882 (is-Cons!29351 tl!4068)) b!2497470))

(declare-fun m!2861453 () Bool)

(assert (=> b!2497467 m!2861453))

(declare-fun m!2861455 () Bool)

(assert (=> b!2497471 m!2861455))

(declare-fun m!2861457 () Bool)

(assert (=> b!2497471 m!2861457))

(declare-fun m!2861459 () Bool)

(assert (=> b!2497471 m!2861459))

(declare-fun m!2861461 () Bool)

(assert (=> b!2497464 m!2861461))

(assert (=> b!2497464 m!2861461))

(declare-fun m!2861463 () Bool)

(assert (=> b!2497464 m!2861463))

(declare-fun m!2861465 () Bool)

(assert (=> b!2497459 m!2861465))

(declare-fun m!2861467 () Bool)

(assert (=> b!2497459 m!2861467))

(declare-fun m!2861469 () Bool)

(assert (=> b!2497459 m!2861469))

(declare-fun m!2861471 () Bool)

(assert (=> start!243882 m!2861471))

(declare-fun m!2861473 () Bool)

(assert (=> b!2497460 m!2861473))

(declare-fun m!2861475 () Bool)

(assert (=> b!2497469 m!2861475))

(declare-fun m!2861477 () Bool)

(assert (=> b!2497463 m!2861477))

(declare-fun m!2861479 () Bool)

(assert (=> b!2497465 m!2861479))

(declare-fun m!2861481 () Bool)

(assert (=> b!2497465 m!2861481))

(declare-fun m!2861483 () Bool)

(assert (=> b!2497465 m!2861483))

(declare-fun m!2861485 () Bool)

(assert (=> b!2497465 m!2861485))

(declare-fun m!2861487 () Bool)

(assert (=> b!2497465 m!2861487))

(push 1)

(assert (not b!2497471))

(assert tp_is_empty!12627)

(assert (not b!2497468))

(assert (not b!2497467))

(assert (not start!243882))

(assert (not b!2497462))

(assert (not b!2497466))

(assert (not b!2497465))

(assert (not b!2497469))

(assert (not b!2497460))

(assert (not b!2497463))

(assert (not b!2497464))

(assert (not b!2497470))

(assert (not b!2497459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2497576 () Bool)

(declare-fun res!1056326 () Bool)

(declare-fun e!1584601 () Bool)

(assert (=> b!2497576 (=> (not res!1056326) (not e!1584601))))

(declare-fun call!154001 () Bool)

(assert (=> b!2497576 (= res!1056326 (not call!154001))))

(declare-fun b!2497577 () Bool)

(declare-fun e!1584602 () Bool)

(assert (=> b!2497577 (= e!1584602 (nullable!2303 (reg!7715 r!27340)))))

(declare-fun b!2497578 () Bool)

(declare-fun res!1056323 () Bool)

(declare-fun e!1584599 () Bool)

(assert (=> b!2497578 (=> res!1056323 e!1584599)))

(assert (=> b!2497578 (= res!1056323 (not (is-ElementMatch!7386 (reg!7715 r!27340))))))

(declare-fun e!1584598 () Bool)

(assert (=> b!2497578 (= e!1584598 e!1584599)))

(declare-fun b!2497579 () Bool)

(declare-fun head!5687 (List!29451) C!14930)

(assert (=> b!2497579 (= e!1584601 (= (head!5687 (Cons!29351 c!14016 (_1!17237 lt!895057))) (c!397214 (reg!7715 r!27340))))))

(declare-fun b!2497580 () Bool)

(declare-fun res!1056325 () Bool)

(assert (=> b!2497580 (=> (not res!1056325) (not e!1584601))))

(declare-fun isEmpty!16819 (List!29451) Bool)

(declare-fun tail!3964 (List!29451) List!29451)

(assert (=> b!2497580 (= res!1056325 (isEmpty!16819 (tail!3964 (Cons!29351 c!14016 (_1!17237 lt!895057)))))))

(declare-fun b!2497581 () Bool)

(declare-fun e!1584600 () Bool)

(declare-fun e!1584597 () Bool)

(assert (=> b!2497581 (= e!1584600 e!1584597)))

(declare-fun res!1056322 () Bool)

(assert (=> b!2497581 (=> res!1056322 e!1584597)))

(assert (=> b!2497581 (= res!1056322 call!154001)))

(declare-fun b!2497583 () Bool)

(assert (=> b!2497583 (= e!1584602 (matchR!3395 (derivativeStep!1955 (reg!7715 r!27340) (head!5687 (Cons!29351 c!14016 (_1!17237 lt!895057)))) (tail!3964 (Cons!29351 c!14016 (_1!17237 lt!895057)))))))

(declare-fun b!2497584 () Bool)

(assert (=> b!2497584 (= e!1584597 (not (= (head!5687 (Cons!29351 c!14016 (_1!17237 lt!895057))) (c!397214 (reg!7715 r!27340)))))))

(declare-fun b!2497585 () Bool)

(declare-fun e!1584596 () Bool)

(declare-fun lt!895091 () Bool)

(assert (=> b!2497585 (= e!1584596 (= lt!895091 call!154001))))

(declare-fun b!2497586 () Bool)

(assert (=> b!2497586 (= e!1584596 e!1584598)))

(declare-fun c!397231 () Bool)

(assert (=> b!2497586 (= c!397231 (is-EmptyLang!7386 (reg!7715 r!27340)))))

(declare-fun b!2497587 () Bool)

(assert (=> b!2497587 (= e!1584598 (not lt!895091))))

(declare-fun d!715045 () Bool)

(assert (=> d!715045 e!1584596))

(declare-fun c!397232 () Bool)

(assert (=> d!715045 (= c!397232 (is-EmptyExpr!7386 (reg!7715 r!27340)))))

(assert (=> d!715045 (= lt!895091 e!1584602)))

(declare-fun c!397230 () Bool)

(assert (=> d!715045 (= c!397230 (isEmpty!16819 (Cons!29351 c!14016 (_1!17237 lt!895057))))))

(assert (=> d!715045 (validRegex!3012 (reg!7715 r!27340))))

(assert (=> d!715045 (= (matchR!3395 (reg!7715 r!27340) (Cons!29351 c!14016 (_1!17237 lt!895057))) lt!895091)))

(declare-fun b!2497582 () Bool)

(declare-fun res!1056328 () Bool)

(assert (=> b!2497582 (=> res!1056328 e!1584597)))

(assert (=> b!2497582 (= res!1056328 (not (isEmpty!16819 (tail!3964 (Cons!29351 c!14016 (_1!17237 lt!895057))))))))

(declare-fun b!2497588 () Bool)

(assert (=> b!2497588 (= e!1584599 e!1584600)))

(declare-fun res!1056324 () Bool)

(assert (=> b!2497588 (=> (not res!1056324) (not e!1584600))))

(assert (=> b!2497588 (= res!1056324 (not lt!895091))))

(declare-fun bm!153996 () Bool)

(assert (=> bm!153996 (= call!154001 (isEmpty!16819 (Cons!29351 c!14016 (_1!17237 lt!895057))))))

(declare-fun b!2497589 () Bool)

(declare-fun res!1056327 () Bool)

(assert (=> b!2497589 (=> res!1056327 e!1584599)))

(assert (=> b!2497589 (= res!1056327 e!1584601)))

(declare-fun res!1056329 () Bool)

(assert (=> b!2497589 (=> (not res!1056329) (not e!1584601))))

(assert (=> b!2497589 (= res!1056329 lt!895091)))

(assert (= (and d!715045 c!397230) b!2497577))

(assert (= (and d!715045 (not c!397230)) b!2497583))

(assert (= (and d!715045 c!397232) b!2497585))

(assert (= (and d!715045 (not c!397232)) b!2497586))

(assert (= (and b!2497586 c!397231) b!2497587))

(assert (= (and b!2497586 (not c!397231)) b!2497578))

(assert (= (and b!2497578 (not res!1056323)) b!2497589))

(assert (= (and b!2497589 res!1056329) b!2497576))

(assert (= (and b!2497576 res!1056326) b!2497580))

(assert (= (and b!2497580 res!1056325) b!2497579))

(assert (= (and b!2497589 (not res!1056327)) b!2497588))

(assert (= (and b!2497588 res!1056324) b!2497581))

(assert (= (and b!2497581 (not res!1056322)) b!2497582))

(assert (= (and b!2497582 (not res!1056328)) b!2497584))

(assert (= (or b!2497585 b!2497576 b!2497581) bm!153996))

(declare-fun m!2861531 () Bool)

(assert (=> d!715045 m!2861531))

(declare-fun m!2861533 () Bool)

(assert (=> d!715045 m!2861533))

(declare-fun m!2861535 () Bool)

(assert (=> b!2497584 m!2861535))

(declare-fun m!2861537 () Bool)

(assert (=> b!2497577 m!2861537))

(declare-fun m!2861539 () Bool)

(assert (=> b!2497580 m!2861539))

(assert (=> b!2497580 m!2861539))

(declare-fun m!2861541 () Bool)

(assert (=> b!2497580 m!2861541))

(assert (=> b!2497583 m!2861535))

(assert (=> b!2497583 m!2861535))

(declare-fun m!2861543 () Bool)

(assert (=> b!2497583 m!2861543))

(assert (=> b!2497583 m!2861539))

(assert (=> b!2497583 m!2861543))

(assert (=> b!2497583 m!2861539))

(declare-fun m!2861545 () Bool)

(assert (=> b!2497583 m!2861545))

(assert (=> b!2497579 m!2861535))

(assert (=> bm!153996 m!2861531))

(assert (=> b!2497582 m!2861539))

(assert (=> b!2497582 m!2861539))

(assert (=> b!2497582 m!2861541))

(assert (=> b!2497467 d!715045))

(declare-fun b!2497612 () Bool)

(declare-fun res!1056350 () Bool)

(declare-fun e!1584620 () Bool)

(assert (=> b!2497612 (=> (not res!1056350) (not e!1584620))))

(declare-fun call!154002 () Bool)

(assert (=> b!2497612 (= res!1056350 (not call!154002))))

(declare-fun b!2497613 () Bool)

(declare-fun e!1584621 () Bool)

(assert (=> b!2497613 (= e!1584621 (nullable!2303 lt!895056))))

(declare-fun b!2497614 () Bool)

(declare-fun res!1056347 () Bool)

(declare-fun e!1584618 () Bool)

(assert (=> b!2497614 (=> res!1056347 e!1584618)))

(assert (=> b!2497614 (= res!1056347 (not (is-ElementMatch!7386 lt!895056)))))

(declare-fun e!1584617 () Bool)

(assert (=> b!2497614 (= e!1584617 e!1584618)))

(declare-fun b!2497615 () Bool)

(assert (=> b!2497615 (= e!1584620 (= (head!5687 (_2!17237 lt!895057)) (c!397214 lt!895056)))))

(declare-fun b!2497616 () Bool)

(declare-fun res!1056349 () Bool)

(assert (=> b!2497616 (=> (not res!1056349) (not e!1584620))))

(assert (=> b!2497616 (= res!1056349 (isEmpty!16819 (tail!3964 (_2!17237 lt!895057))))))

(declare-fun b!2497617 () Bool)

(declare-fun e!1584619 () Bool)

(declare-fun e!1584616 () Bool)

(assert (=> b!2497617 (= e!1584619 e!1584616)))

(declare-fun res!1056346 () Bool)

(assert (=> b!2497617 (=> res!1056346 e!1584616)))

(assert (=> b!2497617 (= res!1056346 call!154002)))

(declare-fun b!2497619 () Bool)

(assert (=> b!2497619 (= e!1584621 (matchR!3395 (derivativeStep!1955 lt!895056 (head!5687 (_2!17237 lt!895057))) (tail!3964 (_2!17237 lt!895057))))))

(declare-fun b!2497620 () Bool)

(assert (=> b!2497620 (= e!1584616 (not (= (head!5687 (_2!17237 lt!895057)) (c!397214 lt!895056))))))

(declare-fun b!2497621 () Bool)

(declare-fun e!1584615 () Bool)

(declare-fun lt!895092 () Bool)

(assert (=> b!2497621 (= e!1584615 (= lt!895092 call!154002))))

(declare-fun b!2497622 () Bool)

(assert (=> b!2497622 (= e!1584615 e!1584617)))

(declare-fun c!397238 () Bool)

(assert (=> b!2497622 (= c!397238 (is-EmptyLang!7386 lt!895056))))

(declare-fun b!2497623 () Bool)

(assert (=> b!2497623 (= e!1584617 (not lt!895092))))

(declare-fun d!715049 () Bool)

(assert (=> d!715049 e!1584615))

(declare-fun c!397239 () Bool)

(assert (=> d!715049 (= c!397239 (is-EmptyExpr!7386 lt!895056))))

(assert (=> d!715049 (= lt!895092 e!1584621)))

(declare-fun c!397237 () Bool)

(assert (=> d!715049 (= c!397237 (isEmpty!16819 (_2!17237 lt!895057)))))

(assert (=> d!715049 (validRegex!3012 lt!895056)))

(assert (=> d!715049 (= (matchR!3395 lt!895056 (_2!17237 lt!895057)) lt!895092)))

(declare-fun b!2497618 () Bool)

(declare-fun res!1056352 () Bool)

(assert (=> b!2497618 (=> res!1056352 e!1584616)))

(assert (=> b!2497618 (= res!1056352 (not (isEmpty!16819 (tail!3964 (_2!17237 lt!895057)))))))

(declare-fun b!2497624 () Bool)

(assert (=> b!2497624 (= e!1584618 e!1584619)))

(declare-fun res!1056348 () Bool)

(assert (=> b!2497624 (=> (not res!1056348) (not e!1584619))))

(assert (=> b!2497624 (= res!1056348 (not lt!895092))))

(declare-fun bm!153997 () Bool)

(assert (=> bm!153997 (= call!154002 (isEmpty!16819 (_2!17237 lt!895057)))))

(declare-fun b!2497625 () Bool)

(declare-fun res!1056351 () Bool)

(assert (=> b!2497625 (=> res!1056351 e!1584618)))

(assert (=> b!2497625 (= res!1056351 e!1584620)))

(declare-fun res!1056353 () Bool)

(assert (=> b!2497625 (=> (not res!1056353) (not e!1584620))))

(assert (=> b!2497625 (= res!1056353 lt!895092)))

(assert (= (and d!715049 c!397237) b!2497613))

(assert (= (and d!715049 (not c!397237)) b!2497619))

(assert (= (and d!715049 c!397239) b!2497621))

(assert (= (and d!715049 (not c!397239)) b!2497622))

(assert (= (and b!2497622 c!397238) b!2497623))

(assert (= (and b!2497622 (not c!397238)) b!2497614))

(assert (= (and b!2497614 (not res!1056347)) b!2497625))

(assert (= (and b!2497625 res!1056353) b!2497612))

(assert (= (and b!2497612 res!1056350) b!2497616))

(assert (= (and b!2497616 res!1056349) b!2497615))

(assert (= (and b!2497625 (not res!1056351)) b!2497624))

(assert (= (and b!2497624 res!1056348) b!2497617))

(assert (= (and b!2497617 (not res!1056346)) b!2497618))

(assert (= (and b!2497618 (not res!1056352)) b!2497620))

(assert (= (or b!2497621 b!2497612 b!2497617) bm!153997))

(declare-fun m!2861547 () Bool)

(assert (=> d!715049 m!2861547))

(declare-fun m!2861549 () Bool)

(assert (=> d!715049 m!2861549))

(declare-fun m!2861551 () Bool)

(assert (=> b!2497620 m!2861551))

(declare-fun m!2861553 () Bool)

(assert (=> b!2497613 m!2861553))

(declare-fun m!2861555 () Bool)

(assert (=> b!2497616 m!2861555))

(assert (=> b!2497616 m!2861555))

(declare-fun m!2861557 () Bool)

(assert (=> b!2497616 m!2861557))

(assert (=> b!2497619 m!2861551))

(assert (=> b!2497619 m!2861551))

(declare-fun m!2861559 () Bool)

(assert (=> b!2497619 m!2861559))

(assert (=> b!2497619 m!2861555))

(assert (=> b!2497619 m!2861559))

(assert (=> b!2497619 m!2861555))

(declare-fun m!2861561 () Bool)

(assert (=> b!2497619 m!2861561))

(assert (=> b!2497615 m!2861551))

(assert (=> bm!153997 m!2861547))

(assert (=> b!2497618 m!2861555))

(assert (=> b!2497618 m!2861555))

(assert (=> b!2497618 m!2861557))

(assert (=> b!2497469 d!715049))

(declare-fun d!715051 () Bool)

(declare-fun nullableFct!580 (Regex!7386) Bool)

(assert (=> d!715051 (= (nullable!2303 (derivative!81 lt!895058 tl!4068)) (nullableFct!580 (derivative!81 lt!895058 tl!4068)))))

(declare-fun bs!468500 () Bool)

(assert (= bs!468500 d!715051))

(assert (=> bs!468500 m!2861461))

(declare-fun m!2861563 () Bool)

(assert (=> bs!468500 m!2861563))

(assert (=> b!2497464 d!715051))

(declare-fun d!715053 () Bool)

(declare-fun lt!895096 () Regex!7386)

(assert (=> d!715053 (validRegex!3012 lt!895096)))

(declare-fun e!1584631 () Regex!7386)

(assert (=> d!715053 (= lt!895096 e!1584631)))

(declare-fun c!397245 () Bool)

(assert (=> d!715053 (= c!397245 (is-Cons!29351 tl!4068))))

(assert (=> d!715053 (validRegex!3012 lt!895058)))

(assert (=> d!715053 (= (derivative!81 lt!895058 tl!4068) lt!895096)))

(declare-fun b!2497644 () Bool)

(assert (=> b!2497644 (= e!1584631 (derivative!81 (derivativeStep!1955 lt!895058 (h!34771 tl!4068)) (t!211150 tl!4068)))))

(declare-fun b!2497645 () Bool)

(assert (=> b!2497645 (= e!1584631 lt!895058)))

(assert (= (and d!715053 c!397245) b!2497644))

(assert (= (and d!715053 (not c!397245)) b!2497645))

(declare-fun m!2861565 () Bool)

(assert (=> d!715053 m!2861565))

(assert (=> d!715053 m!2861477))

(declare-fun m!2861567 () Bool)

(assert (=> b!2497644 m!2861567))

(assert (=> b!2497644 m!2861567))

(declare-fun m!2861569 () Bool)

(assert (=> b!2497644 m!2861569))

(assert (=> b!2497464 d!715053))

(declare-fun b!2497678 () Bool)

(declare-fun e!1584659 () Bool)

(declare-fun e!1584656 () Bool)

(assert (=> b!2497678 (= e!1584659 e!1584656)))

(declare-fun res!1056384 () Bool)

(assert (=> b!2497678 (= res!1056384 (not (nullable!2303 (reg!7715 lt!895058))))))

(assert (=> b!2497678 (=> (not res!1056384) (not e!1584656))))

(declare-fun bm!154008 () Bool)

(declare-fun call!154015 () Bool)

(declare-fun c!397254 () Bool)

(declare-fun c!397253 () Bool)

(assert (=> bm!154008 (= call!154015 (validRegex!3012 (ite c!397253 (reg!7715 lt!895058) (ite c!397254 (regTwo!15285 lt!895058) (regOne!15284 lt!895058)))))))

(declare-fun b!2497679 () Bool)

(declare-fun e!1584655 () Bool)

(declare-fun e!1584658 () Bool)

(assert (=> b!2497679 (= e!1584655 e!1584658)))

(declare-fun res!1056382 () Bool)

(assert (=> b!2497679 (=> (not res!1056382) (not e!1584658))))

(declare-fun call!154014 () Bool)

(assert (=> b!2497679 (= res!1056382 call!154014)))

(declare-fun b!2497680 () Bool)

(assert (=> b!2497680 (= e!1584656 call!154015)))

(declare-fun b!2497681 () Bool)

(declare-fun e!1584657 () Bool)

(assert (=> b!2497681 (= e!1584657 call!154014)))

(declare-fun b!2497682 () Bool)

(declare-fun res!1056380 () Bool)

(assert (=> b!2497682 (=> (not res!1056380) (not e!1584657))))

(declare-fun call!154013 () Bool)

(assert (=> b!2497682 (= res!1056380 call!154013)))

(declare-fun e!1584653 () Bool)

(assert (=> b!2497682 (= e!1584653 e!1584657)))

(declare-fun d!715055 () Bool)

(declare-fun res!1056381 () Bool)

(declare-fun e!1584654 () Bool)

(assert (=> d!715055 (=> res!1056381 e!1584654)))

(assert (=> d!715055 (= res!1056381 (is-ElementMatch!7386 lt!895058))))

(assert (=> d!715055 (= (validRegex!3012 lt!895058) e!1584654)))

(declare-fun bm!154009 () Bool)

(assert (=> bm!154009 (= call!154014 call!154015)))

(declare-fun bm!154010 () Bool)

(assert (=> bm!154010 (= call!154013 (validRegex!3012 (ite c!397254 (regOne!15285 lt!895058) (regTwo!15284 lt!895058))))))

(declare-fun b!2497683 () Bool)

(declare-fun res!1056383 () Bool)

(assert (=> b!2497683 (=> res!1056383 e!1584655)))

(assert (=> b!2497683 (= res!1056383 (not (is-Concat!12082 lt!895058)))))

(assert (=> b!2497683 (= e!1584653 e!1584655)))

(declare-fun b!2497684 () Bool)

(assert (=> b!2497684 (= e!1584654 e!1584659)))

(assert (=> b!2497684 (= c!397253 (is-Star!7386 lt!895058))))

(declare-fun b!2497685 () Bool)

(assert (=> b!2497685 (= e!1584658 call!154013)))

(declare-fun b!2497686 () Bool)

(assert (=> b!2497686 (= e!1584659 e!1584653)))

(assert (=> b!2497686 (= c!397254 (is-Union!7386 lt!895058))))

(assert (= (and d!715055 (not res!1056381)) b!2497684))

(assert (= (and b!2497684 c!397253) b!2497678))

(assert (= (and b!2497684 (not c!397253)) b!2497686))

(assert (= (and b!2497678 res!1056384) b!2497680))

(assert (= (and b!2497686 c!397254) b!2497682))

(assert (= (and b!2497686 (not c!397254)) b!2497683))

(assert (= (and b!2497682 res!1056380) b!2497681))

(assert (= (and b!2497683 (not res!1056383)) b!2497679))

(assert (= (and b!2497679 res!1056382) b!2497685))

(assert (= (or b!2497682 b!2497685) bm!154010))

(assert (= (or b!2497681 b!2497679) bm!154009))

(assert (= (or b!2497680 bm!154009) bm!154008))

(declare-fun m!2861605 () Bool)

(assert (=> b!2497678 m!2861605))

(declare-fun m!2861607 () Bool)

(assert (=> bm!154008 m!2861607))

(declare-fun m!2861609 () Bool)

(assert (=> bm!154010 m!2861609))

(assert (=> b!2497463 d!715055))

(declare-fun b!2497687 () Bool)

(declare-fun e!1584666 () Bool)

(declare-fun e!1584663 () Bool)

(assert (=> b!2497687 (= e!1584666 e!1584663)))

(declare-fun res!1056389 () Bool)

(assert (=> b!2497687 (= res!1056389 (not (nullable!2303 (reg!7715 r!27340))))))

(assert (=> b!2497687 (=> (not res!1056389) (not e!1584663))))

(declare-fun c!397255 () Bool)

(declare-fun c!397256 () Bool)

(declare-fun call!154018 () Bool)

(declare-fun bm!154011 () Bool)

(assert (=> bm!154011 (= call!154018 (validRegex!3012 (ite c!397255 (reg!7715 r!27340) (ite c!397256 (regTwo!15285 r!27340) (regOne!15284 r!27340)))))))

(declare-fun b!2497688 () Bool)

(declare-fun e!1584662 () Bool)

(declare-fun e!1584665 () Bool)

(assert (=> b!2497688 (= e!1584662 e!1584665)))

(declare-fun res!1056387 () Bool)

(assert (=> b!2497688 (=> (not res!1056387) (not e!1584665))))

(declare-fun call!154017 () Bool)

(assert (=> b!2497688 (= res!1056387 call!154017)))

(declare-fun b!2497689 () Bool)

(assert (=> b!2497689 (= e!1584663 call!154018)))

(declare-fun b!2497690 () Bool)

(declare-fun e!1584664 () Bool)

(assert (=> b!2497690 (= e!1584664 call!154017)))

(declare-fun b!2497691 () Bool)

(declare-fun res!1056385 () Bool)

(assert (=> b!2497691 (=> (not res!1056385) (not e!1584664))))

(declare-fun call!154016 () Bool)

(assert (=> b!2497691 (= res!1056385 call!154016)))

(declare-fun e!1584660 () Bool)

(assert (=> b!2497691 (= e!1584660 e!1584664)))

(declare-fun d!715063 () Bool)

(declare-fun res!1056386 () Bool)

(declare-fun e!1584661 () Bool)

(assert (=> d!715063 (=> res!1056386 e!1584661)))

(assert (=> d!715063 (= res!1056386 (is-ElementMatch!7386 r!27340))))

(assert (=> d!715063 (= (validRegex!3012 r!27340) e!1584661)))

(declare-fun bm!154012 () Bool)

(assert (=> bm!154012 (= call!154017 call!154018)))

(declare-fun bm!154013 () Bool)

(assert (=> bm!154013 (= call!154016 (validRegex!3012 (ite c!397256 (regOne!15285 r!27340) (regTwo!15284 r!27340))))))

(declare-fun b!2497692 () Bool)

(declare-fun res!1056388 () Bool)

(assert (=> b!2497692 (=> res!1056388 e!1584662)))

(assert (=> b!2497692 (= res!1056388 (not (is-Concat!12082 r!27340)))))

(assert (=> b!2497692 (= e!1584660 e!1584662)))

(declare-fun b!2497693 () Bool)

(assert (=> b!2497693 (= e!1584661 e!1584666)))

(assert (=> b!2497693 (= c!397255 (is-Star!7386 r!27340))))

(declare-fun b!2497694 () Bool)

(assert (=> b!2497694 (= e!1584665 call!154016)))

(declare-fun b!2497695 () Bool)

(assert (=> b!2497695 (= e!1584666 e!1584660)))

(assert (=> b!2497695 (= c!397256 (is-Union!7386 r!27340))))

(assert (= (and d!715063 (not res!1056386)) b!2497693))

(assert (= (and b!2497693 c!397255) b!2497687))

(assert (= (and b!2497693 (not c!397255)) b!2497695))

(assert (= (and b!2497687 res!1056389) b!2497689))

(assert (= (and b!2497695 c!397256) b!2497691))

(assert (= (and b!2497695 (not c!397256)) b!2497692))

(assert (= (and b!2497691 res!1056385) b!2497690))

(assert (= (and b!2497692 (not res!1056388)) b!2497688))

(assert (= (and b!2497688 res!1056387) b!2497694))

(assert (= (or b!2497691 b!2497694) bm!154013))

(assert (= (or b!2497690 b!2497688) bm!154012))

(assert (= (or b!2497689 bm!154012) bm!154011))

(assert (=> b!2497687 m!2861537))

(declare-fun m!2861611 () Bool)

(assert (=> bm!154011 m!2861611))

(declare-fun m!2861613 () Bool)

(assert (=> bm!154013 m!2861613))

(assert (=> start!243882 d!715063))

(declare-fun d!715065 () Bool)

(declare-fun isEmpty!16821 (Option!5815) Bool)

(assert (=> d!715065 (= (isDefined!4637 lt!895054) (not (isEmpty!16821 lt!895054)))))

(declare-fun bs!468502 () Bool)

(assert (= bs!468502 d!715065))

(declare-fun m!2861615 () Bool)

(assert (=> bs!468502 m!2861615))

(assert (=> b!2497465 d!715065))

(declare-fun d!715067 () Bool)

(assert (=> d!715067 (isDefined!4637 (findConcatSeparation!837 lt!895058 lt!895056 Nil!29351 tl!4068 tl!4068))))

(declare-fun lt!895105 () Unit!43041)

(declare-fun choose!14751 (Regex!7386 Regex!7386 List!29451) Unit!43041)

(assert (=> d!715067 (= lt!895105 (choose!14751 lt!895058 lt!895056 tl!4068))))

(assert (=> d!715067 (validRegex!3012 lt!895058)))

(assert (=> d!715067 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!119 lt!895058 lt!895056 tl!4068) lt!895105)))

(declare-fun bs!468503 () Bool)

(assert (= bs!468503 d!715067))

(assert (=> bs!468503 m!2861481))

(assert (=> bs!468503 m!2861481))

(declare-fun m!2861617 () Bool)

(assert (=> bs!468503 m!2861617))

(declare-fun m!2861619 () Bool)

(assert (=> bs!468503 m!2861619))

(assert (=> bs!468503 m!2861477))

(assert (=> b!2497465 d!715067))

(declare-fun d!715069 () Bool)

(assert (=> d!715069 (= (get!9091 lt!895054) (v!31745 lt!895054))))

(assert (=> b!2497465 d!715069))

(declare-fun b!2497726 () Bool)

(declare-fun res!1056406 () Bool)

(declare-fun e!1584686 () Bool)

(assert (=> b!2497726 (=> (not res!1056406) (not e!1584686))))

(declare-fun lt!895114 () Option!5815)

(assert (=> b!2497726 (= res!1056406 (matchR!3395 lt!895056 (_2!17237 (get!9091 lt!895114))))))

(declare-fun b!2497727 () Bool)

(declare-fun res!1056409 () Bool)

(assert (=> b!2497727 (=> (not res!1056409) (not e!1584686))))

(assert (=> b!2497727 (= res!1056409 (matchR!3395 lt!895058 (_1!17237 (get!9091 lt!895114))))))

(declare-fun b!2497728 () Bool)

(declare-fun e!1584683 () Option!5815)

(assert (=> b!2497728 (= e!1584683 (Some!5814 (tuple2!29391 Nil!29351 tl!4068)))))

(declare-fun d!715071 () Bool)

(declare-fun e!1584685 () Bool)

(assert (=> d!715071 e!1584685))

(declare-fun res!1056408 () Bool)

(assert (=> d!715071 (=> res!1056408 e!1584685)))

(assert (=> d!715071 (= res!1056408 e!1584686)))

(declare-fun res!1056407 () Bool)

(assert (=> d!715071 (=> (not res!1056407) (not e!1584686))))

(assert (=> d!715071 (= res!1056407 (isDefined!4637 lt!895114))))

(assert (=> d!715071 (= lt!895114 e!1584683)))

(declare-fun c!397265 () Bool)

(declare-fun e!1584684 () Bool)

(assert (=> d!715071 (= c!397265 e!1584684)))

(declare-fun res!1056410 () Bool)

(assert (=> d!715071 (=> (not res!1056410) (not e!1584684))))

(assert (=> d!715071 (= res!1056410 (matchR!3395 lt!895058 Nil!29351))))

(assert (=> d!715071 (validRegex!3012 lt!895058)))

(assert (=> d!715071 (= (findConcatSeparation!837 lt!895058 lt!895056 Nil!29351 tl!4068 tl!4068) lt!895114)))

(declare-fun b!2497729 () Bool)

(declare-fun lt!895113 () Unit!43041)

(declare-fun lt!895115 () Unit!43041)

(assert (=> b!2497729 (= lt!895113 lt!895115)))

(assert (=> b!2497729 (= (++!7168 (++!7168 Nil!29351 (Cons!29351 (h!34771 tl!4068) Nil!29351)) (t!211150 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!722 (List!29451 C!14930 List!29451 List!29451) Unit!43041)

(assert (=> b!2497729 (= lt!895115 (lemmaMoveElementToOtherListKeepsConcatEq!722 Nil!29351 (h!34771 tl!4068) (t!211150 tl!4068) tl!4068))))

(declare-fun e!1584687 () Option!5815)

(assert (=> b!2497729 (= e!1584687 (findConcatSeparation!837 lt!895058 lt!895056 (++!7168 Nil!29351 (Cons!29351 (h!34771 tl!4068) Nil!29351)) (t!211150 tl!4068) tl!4068))))

(declare-fun b!2497730 () Bool)

(assert (=> b!2497730 (= e!1584684 (matchR!3395 lt!895056 tl!4068))))

(declare-fun b!2497731 () Bool)

(assert (=> b!2497731 (= e!1584687 None!5814)))

(declare-fun b!2497732 () Bool)

(assert (=> b!2497732 (= e!1584683 e!1584687)))

(declare-fun c!397264 () Bool)

(assert (=> b!2497732 (= c!397264 (is-Nil!29351 tl!4068))))

(declare-fun b!2497733 () Bool)

(assert (=> b!2497733 (= e!1584686 (= (++!7168 (_1!17237 (get!9091 lt!895114)) (_2!17237 (get!9091 lt!895114))) tl!4068))))

(declare-fun b!2497734 () Bool)

(assert (=> b!2497734 (= e!1584685 (not (isDefined!4637 lt!895114)))))

(assert (= (and d!715071 res!1056410) b!2497730))

(assert (= (and d!715071 c!397265) b!2497728))

(assert (= (and d!715071 (not c!397265)) b!2497732))

(assert (= (and b!2497732 c!397264) b!2497731))

(assert (= (and b!2497732 (not c!397264)) b!2497729))

(assert (= (and d!715071 res!1056407) b!2497727))

(assert (= (and b!2497727 res!1056409) b!2497726))

(assert (= (and b!2497726 res!1056406) b!2497733))

(assert (= (and d!715071 (not res!1056408)) b!2497734))

(declare-fun m!2861637 () Bool)

(assert (=> b!2497730 m!2861637))

(declare-fun m!2861639 () Bool)

(assert (=> b!2497727 m!2861639))

(declare-fun m!2861641 () Bool)

(assert (=> b!2497727 m!2861641))

(declare-fun m!2861643 () Bool)

(assert (=> d!715071 m!2861643))

(declare-fun m!2861645 () Bool)

(assert (=> d!715071 m!2861645))

(assert (=> d!715071 m!2861477))

(declare-fun m!2861647 () Bool)

(assert (=> b!2497729 m!2861647))

(assert (=> b!2497729 m!2861647))

(declare-fun m!2861649 () Bool)

(assert (=> b!2497729 m!2861649))

(declare-fun m!2861651 () Bool)

(assert (=> b!2497729 m!2861651))

(assert (=> b!2497729 m!2861647))

(declare-fun m!2861653 () Bool)

(assert (=> b!2497729 m!2861653))

(assert (=> b!2497733 m!2861639))

(declare-fun m!2861655 () Bool)

(assert (=> b!2497733 m!2861655))

(assert (=> b!2497734 m!2861643))

(assert (=> b!2497726 m!2861639))

(declare-fun m!2861657 () Bool)

(assert (=> b!2497726 m!2861657))

(assert (=> b!2497465 d!715071))

(declare-fun b!2497761 () Bool)

(declare-fun e!1584702 () List!29451)

(assert (=> b!2497761 (= e!1584702 (_2!17237 lt!895057))))

(declare-fun b!2497763 () Bool)

(declare-fun res!1056426 () Bool)

(declare-fun e!1584703 () Bool)

(assert (=> b!2497763 (=> (not res!1056426) (not e!1584703))))

(declare-fun lt!895124 () List!29451)

(declare-fun size!22883 (List!29451) Int)

(assert (=> b!2497763 (= res!1056426 (= (size!22883 lt!895124) (+ (size!22883 (_1!17237 lt!895057)) (size!22883 (_2!17237 lt!895057)))))))

(declare-fun d!715077 () Bool)

(assert (=> d!715077 e!1584703))

(declare-fun res!1056425 () Bool)

(assert (=> d!715077 (=> (not res!1056425) (not e!1584703))))

(declare-fun content!3999 (List!29451) (Set C!14930))

(assert (=> d!715077 (= res!1056425 (= (content!3999 lt!895124) (set.union (content!3999 (_1!17237 lt!895057)) (content!3999 (_2!17237 lt!895057)))))))

(assert (=> d!715077 (= lt!895124 e!1584702)))

(declare-fun c!397272 () Bool)

(assert (=> d!715077 (= c!397272 (is-Nil!29351 (_1!17237 lt!895057)))))

(assert (=> d!715077 (= (++!7168 (_1!17237 lt!895057) (_2!17237 lt!895057)) lt!895124)))

(declare-fun b!2497764 () Bool)

(assert (=> b!2497764 (= e!1584703 (or (not (= (_2!17237 lt!895057) Nil!29351)) (= lt!895124 (_1!17237 lt!895057))))))

(declare-fun b!2497762 () Bool)

(assert (=> b!2497762 (= e!1584702 (Cons!29351 (h!34771 (_1!17237 lt!895057)) (++!7168 (t!211150 (_1!17237 lt!895057)) (_2!17237 lt!895057))))))

(assert (= (and d!715077 c!397272) b!2497761))

(assert (= (and d!715077 (not c!397272)) b!2497762))

(assert (= (and d!715077 res!1056425) b!2497763))

(assert (= (and b!2497763 res!1056426) b!2497764))

(declare-fun m!2861659 () Bool)

(assert (=> b!2497763 m!2861659))

(declare-fun m!2861661 () Bool)

(assert (=> b!2497763 m!2861661))

(declare-fun m!2861663 () Bool)

(assert (=> b!2497763 m!2861663))

(declare-fun m!2861665 () Bool)

(assert (=> d!715077 m!2861665))

(declare-fun m!2861667 () Bool)

(assert (=> d!715077 m!2861667))

(declare-fun m!2861669 () Bool)

(assert (=> d!715077 m!2861669))

(declare-fun m!2861671 () Bool)

(assert (=> b!2497762 m!2861671))

(assert (=> b!2497465 d!715077))

(declare-fun b!2497794 () Bool)

(declare-fun e!1584720 () Regex!7386)

(declare-fun call!154030 () Regex!7386)

(assert (=> b!2497794 (= e!1584720 (Concat!12082 call!154030 (reg!7715 r!27340)))))

(declare-fun bm!154022 () Bool)

(declare-fun c!397285 () Bool)

(declare-fun call!154027 () Regex!7386)

(assert (=> bm!154022 (= call!154027 (derivativeStep!1955 (ite c!397285 (regOne!15285 (reg!7715 r!27340)) (regTwo!15284 (reg!7715 r!27340))) c!14016))))

(declare-fun b!2497795 () Bool)

(declare-fun e!1584719 () Regex!7386)

(declare-fun call!154029 () Regex!7386)

(assert (=> b!2497795 (= e!1584719 (Union!7386 call!154027 call!154029))))

(declare-fun b!2497796 () Bool)

(assert (=> b!2497796 (= c!397285 (is-Union!7386 (reg!7715 r!27340)))))

(declare-fun e!1584723 () Regex!7386)

(assert (=> b!2497796 (= e!1584723 e!1584719)))

(declare-fun b!2497797 () Bool)

(assert (=> b!2497797 (= e!1584723 (ite (= c!14016 (c!397214 (reg!7715 r!27340))) EmptyExpr!7386 EmptyLang!7386))))

(declare-fun bm!154023 () Bool)

(assert (=> bm!154023 (= call!154030 call!154029)))

(declare-fun d!715079 () Bool)

(declare-fun lt!895132 () Regex!7386)

(assert (=> d!715079 (validRegex!3012 lt!895132)))

(declare-fun e!1584722 () Regex!7386)

(assert (=> d!715079 (= lt!895132 e!1584722)))

(declare-fun c!397287 () Bool)

(assert (=> d!715079 (= c!397287 (or (is-EmptyExpr!7386 (reg!7715 r!27340)) (is-EmptyLang!7386 (reg!7715 r!27340))))))

(assert (=> d!715079 (validRegex!3012 (reg!7715 r!27340))))

(assert (=> d!715079 (= (derivativeStep!1955 (reg!7715 r!27340) c!14016) lt!895132)))

(declare-fun bm!154024 () Bool)

(declare-fun call!154028 () Regex!7386)

(assert (=> bm!154024 (= call!154028 call!154030)))

(declare-fun b!2497798 () Bool)

(assert (=> b!2497798 (= e!1584722 e!1584723)))

(declare-fun c!397286 () Bool)

(assert (=> b!2497798 (= c!397286 (is-ElementMatch!7386 (reg!7715 r!27340)))))

(declare-fun b!2497799 () Bool)

(declare-fun c!397289 () Bool)

(assert (=> b!2497799 (= c!397289 (nullable!2303 (regOne!15284 (reg!7715 r!27340))))))

(declare-fun e!1584721 () Regex!7386)

(assert (=> b!2497799 (= e!1584720 e!1584721)))

(declare-fun b!2497800 () Bool)

(assert (=> b!2497800 (= e!1584721 (Union!7386 (Concat!12082 call!154028 (regTwo!15284 (reg!7715 r!27340))) EmptyLang!7386))))

(declare-fun c!397288 () Bool)

(declare-fun bm!154025 () Bool)

(assert (=> bm!154025 (= call!154029 (derivativeStep!1955 (ite c!397285 (regTwo!15285 (reg!7715 r!27340)) (ite c!397288 (reg!7715 (reg!7715 r!27340)) (regOne!15284 (reg!7715 r!27340)))) c!14016))))

(declare-fun b!2497801 () Bool)

(assert (=> b!2497801 (= e!1584721 (Union!7386 (Concat!12082 call!154028 (regTwo!15284 (reg!7715 r!27340))) call!154027))))

(declare-fun b!2497802 () Bool)

(assert (=> b!2497802 (= e!1584722 EmptyLang!7386)))

(declare-fun b!2497803 () Bool)

(assert (=> b!2497803 (= e!1584719 e!1584720)))

(assert (=> b!2497803 (= c!397288 (is-Star!7386 (reg!7715 r!27340)))))

(assert (= (and d!715079 c!397287) b!2497802))

(assert (= (and d!715079 (not c!397287)) b!2497798))

(assert (= (and b!2497798 c!397286) b!2497797))

(assert (= (and b!2497798 (not c!397286)) b!2497796))

(assert (= (and b!2497796 c!397285) b!2497795))

(assert (= (and b!2497796 (not c!397285)) b!2497803))

(assert (= (and b!2497803 c!397288) b!2497794))

(assert (= (and b!2497803 (not c!397288)) b!2497799))

(assert (= (and b!2497799 c!397289) b!2497801))

(assert (= (and b!2497799 (not c!397289)) b!2497800))

(assert (= (or b!2497801 b!2497800) bm!154024))

(assert (= (or b!2497794 bm!154024) bm!154023))

(assert (= (or b!2497795 bm!154023) bm!154025))

(assert (= (or b!2497795 b!2497801) bm!154022))

(declare-fun m!2861695 () Bool)

(assert (=> bm!154022 m!2861695))

(declare-fun m!2861697 () Bool)

(assert (=> d!715079 m!2861697))

(assert (=> d!715079 m!2861533))

(declare-fun m!2861699 () Bool)

(assert (=> b!2497799 m!2861699))

(declare-fun m!2861701 () Bool)

(assert (=> bm!154025 m!2861701))

(assert (=> b!2497460 d!715079))

(declare-fun d!715083 () Bool)

(assert (=> d!715083 (= (nullable!2303 lt!895051) (nullableFct!580 lt!895051))))

(declare-fun bs!468505 () Bool)

(assert (= bs!468505 d!715083))

(declare-fun m!2861703 () Bool)

(assert (=> bs!468505 m!2861703))

(assert (=> b!2497459 d!715083))

(declare-fun d!715085 () Bool)

(declare-fun lt!895133 () Regex!7386)

(assert (=> d!715085 (validRegex!3012 lt!895133)))

(declare-fun e!1584724 () Regex!7386)

(assert (=> d!715085 (= lt!895133 e!1584724)))

(declare-fun c!397290 () Bool)

(assert (=> d!715085 (= c!397290 (is-Cons!29351 tl!4068))))

(assert (=> d!715085 (validRegex!3012 lt!895055)))

(assert (=> d!715085 (= (derivative!81 lt!895055 tl!4068) lt!895133)))

(declare-fun b!2497804 () Bool)

(assert (=> b!2497804 (= e!1584724 (derivative!81 (derivativeStep!1955 lt!895055 (h!34771 tl!4068)) (t!211150 tl!4068)))))

(declare-fun b!2497805 () Bool)

(assert (=> b!2497805 (= e!1584724 lt!895055)))

(assert (= (and d!715085 c!397290) b!2497804))

(assert (= (and d!715085 (not c!397290)) b!2497805))

(declare-fun m!2861705 () Bool)

(assert (=> d!715085 m!2861705))

(declare-fun m!2861707 () Bool)

(assert (=> d!715085 m!2861707))

(declare-fun m!2861709 () Bool)

(assert (=> b!2497804 m!2861709))

(assert (=> b!2497804 m!2861709))

(declare-fun m!2861711 () Bool)

(assert (=> b!2497804 m!2861711))

(assert (=> b!2497459 d!715085))

(declare-fun b!2497806 () Bool)

(declare-fun e!1584726 () Regex!7386)

(declare-fun call!154034 () Regex!7386)

(assert (=> b!2497806 (= e!1584726 (Concat!12082 call!154034 r!27340))))

(declare-fun bm!154026 () Bool)

(declare-fun call!154031 () Regex!7386)

(declare-fun c!397291 () Bool)

(assert (=> bm!154026 (= call!154031 (derivativeStep!1955 (ite c!397291 (regOne!15285 r!27340) (regTwo!15284 r!27340)) c!14016))))

(declare-fun b!2497807 () Bool)

(declare-fun e!1584725 () Regex!7386)

(declare-fun call!154033 () Regex!7386)

(assert (=> b!2497807 (= e!1584725 (Union!7386 call!154031 call!154033))))

(declare-fun b!2497808 () Bool)

(assert (=> b!2497808 (= c!397291 (is-Union!7386 r!27340))))

(declare-fun e!1584729 () Regex!7386)

(assert (=> b!2497808 (= e!1584729 e!1584725)))

(declare-fun b!2497809 () Bool)

(assert (=> b!2497809 (= e!1584729 (ite (= c!14016 (c!397214 r!27340)) EmptyExpr!7386 EmptyLang!7386))))

(declare-fun bm!154027 () Bool)

(assert (=> bm!154027 (= call!154034 call!154033)))

(declare-fun d!715087 () Bool)

(declare-fun lt!895135 () Regex!7386)

(assert (=> d!715087 (validRegex!3012 lt!895135)))

(declare-fun e!1584728 () Regex!7386)

(assert (=> d!715087 (= lt!895135 e!1584728)))

(declare-fun c!397293 () Bool)

(assert (=> d!715087 (= c!397293 (or (is-EmptyExpr!7386 r!27340) (is-EmptyLang!7386 r!27340)))))

(assert (=> d!715087 (validRegex!3012 r!27340)))

(assert (=> d!715087 (= (derivativeStep!1955 r!27340 c!14016) lt!895135)))

(declare-fun bm!154028 () Bool)

(declare-fun call!154032 () Regex!7386)

(assert (=> bm!154028 (= call!154032 call!154034)))

(declare-fun b!2497810 () Bool)

(assert (=> b!2497810 (= e!1584728 e!1584729)))

(declare-fun c!397292 () Bool)

(assert (=> b!2497810 (= c!397292 (is-ElementMatch!7386 r!27340))))

(declare-fun b!2497811 () Bool)

(declare-fun c!397295 () Bool)

(assert (=> b!2497811 (= c!397295 (nullable!2303 (regOne!15284 r!27340)))))

(declare-fun e!1584727 () Regex!7386)

(assert (=> b!2497811 (= e!1584726 e!1584727)))

(declare-fun b!2497812 () Bool)

(assert (=> b!2497812 (= e!1584727 (Union!7386 (Concat!12082 call!154032 (regTwo!15284 r!27340)) EmptyLang!7386))))

(declare-fun bm!154029 () Bool)

(declare-fun c!397294 () Bool)

(assert (=> bm!154029 (= call!154033 (derivativeStep!1955 (ite c!397291 (regTwo!15285 r!27340) (ite c!397294 (reg!7715 r!27340) (regOne!15284 r!27340))) c!14016))))

(declare-fun b!2497813 () Bool)

(assert (=> b!2497813 (= e!1584727 (Union!7386 (Concat!12082 call!154032 (regTwo!15284 r!27340)) call!154031))))

(declare-fun b!2497814 () Bool)

(assert (=> b!2497814 (= e!1584728 EmptyLang!7386)))

(declare-fun b!2497815 () Bool)

(assert (=> b!2497815 (= e!1584725 e!1584726)))

(assert (=> b!2497815 (= c!397294 (is-Star!7386 r!27340))))

(assert (= (and d!715087 c!397293) b!2497814))

(assert (= (and d!715087 (not c!397293)) b!2497810))

(assert (= (and b!2497810 c!397292) b!2497809))

(assert (= (and b!2497810 (not c!397292)) b!2497808))

(assert (= (and b!2497808 c!397291) b!2497807))

(assert (= (and b!2497808 (not c!397291)) b!2497815))

(assert (= (and b!2497815 c!397294) b!2497806))

(assert (= (and b!2497815 (not c!397294)) b!2497811))

(assert (= (and b!2497811 c!397295) b!2497813))

(assert (= (and b!2497811 (not c!397295)) b!2497812))

(assert (= (or b!2497813 b!2497812) bm!154028))

(assert (= (or b!2497806 bm!154028) bm!154027))

(assert (= (or b!2497807 bm!154027) bm!154029))

(assert (= (or b!2497807 b!2497813) bm!154026))

(declare-fun m!2861715 () Bool)

(assert (=> bm!154026 m!2861715))

(declare-fun m!2861717 () Bool)

(assert (=> d!715087 m!2861717))

(assert (=> d!715087 m!2861471))

(declare-fun m!2861719 () Bool)

(assert (=> b!2497811 m!2861719))

(declare-fun m!2861723 () Bool)

(assert (=> bm!154029 m!2861723))

(assert (=> b!2497459 d!715087))

(declare-fun b!2497816 () Bool)

(declare-fun res!1056436 () Bool)

(declare-fun e!1584735 () Bool)

(assert (=> b!2497816 (=> (not res!1056436) (not e!1584735))))

(declare-fun call!154035 () Bool)

(assert (=> b!2497816 (= res!1056436 (not call!154035))))

(declare-fun b!2497817 () Bool)

(declare-fun e!1584736 () Bool)

(assert (=> b!2497817 (= e!1584736 (nullable!2303 lt!895051))))

(declare-fun b!2497818 () Bool)

(declare-fun res!1056433 () Bool)

(declare-fun e!1584733 () Bool)

(assert (=> b!2497818 (=> res!1056433 e!1584733)))

(assert (=> b!2497818 (= res!1056433 (not (is-ElementMatch!7386 lt!895051)))))

(declare-fun e!1584732 () Bool)

(assert (=> b!2497818 (= e!1584732 e!1584733)))

(declare-fun b!2497819 () Bool)

(assert (=> b!2497819 (= e!1584735 (= (head!5687 Nil!29351) (c!397214 lt!895051)))))

(declare-fun b!2497820 () Bool)

(declare-fun res!1056435 () Bool)

(assert (=> b!2497820 (=> (not res!1056435) (not e!1584735))))

(assert (=> b!2497820 (= res!1056435 (isEmpty!16819 (tail!3964 Nil!29351)))))

(declare-fun b!2497821 () Bool)

(declare-fun e!1584734 () Bool)

(declare-fun e!1584731 () Bool)

(assert (=> b!2497821 (= e!1584734 e!1584731)))

(declare-fun res!1056432 () Bool)

(assert (=> b!2497821 (=> res!1056432 e!1584731)))

(assert (=> b!2497821 (= res!1056432 call!154035)))

(declare-fun b!2497823 () Bool)

(assert (=> b!2497823 (= e!1584736 (matchR!3395 (derivativeStep!1955 lt!895051 (head!5687 Nil!29351)) (tail!3964 Nil!29351)))))

(declare-fun b!2497824 () Bool)

(assert (=> b!2497824 (= e!1584731 (not (= (head!5687 Nil!29351) (c!397214 lt!895051))))))

(declare-fun b!2497825 () Bool)

(declare-fun e!1584730 () Bool)

(declare-fun lt!895136 () Bool)

(assert (=> b!2497825 (= e!1584730 (= lt!895136 call!154035))))

(declare-fun b!2497826 () Bool)

(assert (=> b!2497826 (= e!1584730 e!1584732)))

(declare-fun c!397297 () Bool)

(assert (=> b!2497826 (= c!397297 (is-EmptyLang!7386 lt!895051))))

(declare-fun b!2497827 () Bool)

(assert (=> b!2497827 (= e!1584732 (not lt!895136))))

(declare-fun d!715089 () Bool)

(assert (=> d!715089 e!1584730))

(declare-fun c!397298 () Bool)

(assert (=> d!715089 (= c!397298 (is-EmptyExpr!7386 lt!895051))))

(assert (=> d!715089 (= lt!895136 e!1584736)))

(declare-fun c!397296 () Bool)

(assert (=> d!715089 (= c!397296 (isEmpty!16819 Nil!29351))))

(assert (=> d!715089 (validRegex!3012 lt!895051)))

(assert (=> d!715089 (= (matchR!3395 lt!895051 Nil!29351) lt!895136)))

(declare-fun b!2497822 () Bool)

(declare-fun res!1056438 () Bool)

(assert (=> b!2497822 (=> res!1056438 e!1584731)))

(assert (=> b!2497822 (= res!1056438 (not (isEmpty!16819 (tail!3964 Nil!29351))))))

(declare-fun b!2497828 () Bool)

(assert (=> b!2497828 (= e!1584733 e!1584734)))

(declare-fun res!1056434 () Bool)

(assert (=> b!2497828 (=> (not res!1056434) (not e!1584734))))

(assert (=> b!2497828 (= res!1056434 (not lt!895136))))

(declare-fun bm!154030 () Bool)

(assert (=> bm!154030 (= call!154035 (isEmpty!16819 Nil!29351))))

(declare-fun b!2497829 () Bool)

(declare-fun res!1056437 () Bool)

(assert (=> b!2497829 (=> res!1056437 e!1584733)))

(assert (=> b!2497829 (= res!1056437 e!1584735)))

(declare-fun res!1056439 () Bool)

(assert (=> b!2497829 (=> (not res!1056439) (not e!1584735))))

(assert (=> b!2497829 (= res!1056439 lt!895136)))

(assert (= (and d!715089 c!397296) b!2497817))

(assert (= (and d!715089 (not c!397296)) b!2497823))

(assert (= (and d!715089 c!397298) b!2497825))

(assert (= (and d!715089 (not c!397298)) b!2497826))

(assert (= (and b!2497826 c!397297) b!2497827))

(assert (= (and b!2497826 (not c!397297)) b!2497818))

(assert (= (and b!2497818 (not res!1056433)) b!2497829))

(assert (= (and b!2497829 res!1056439) b!2497816))

(assert (= (and b!2497816 res!1056436) b!2497820))

(assert (= (and b!2497820 res!1056435) b!2497819))

(assert (= (and b!2497829 (not res!1056437)) b!2497828))

(assert (= (and b!2497828 res!1056434) b!2497821))

(assert (= (and b!2497821 (not res!1056432)) b!2497822))

(assert (= (and b!2497822 (not res!1056438)) b!2497824))

(assert (= (or b!2497825 b!2497816 b!2497821) bm!154030))

(declare-fun m!2861725 () Bool)

(assert (=> d!715089 m!2861725))

(declare-fun m!2861727 () Bool)

(assert (=> d!715089 m!2861727))

(declare-fun m!2861729 () Bool)

(assert (=> b!2497824 m!2861729))

(assert (=> b!2497817 m!2861465))

(declare-fun m!2861731 () Bool)

(assert (=> b!2497820 m!2861731))

(assert (=> b!2497820 m!2861731))

(declare-fun m!2861733 () Bool)

(assert (=> b!2497820 m!2861733))

(assert (=> b!2497823 m!2861729))

(assert (=> b!2497823 m!2861729))

(declare-fun m!2861735 () Bool)

(assert (=> b!2497823 m!2861735))

(assert (=> b!2497823 m!2861731))

(assert (=> b!2497823 m!2861735))

(assert (=> b!2497823 m!2861731))

(declare-fun m!2861737 () Bool)

(assert (=> b!2497823 m!2861737))

(assert (=> b!2497819 m!2861729))

(assert (=> bm!154030 m!2861725))

(assert (=> b!2497822 m!2861731))

(assert (=> b!2497822 m!2861731))

(assert (=> b!2497822 m!2861733))

(assert (=> b!2497471 d!715089))

(declare-fun b!2497830 () Bool)

(declare-fun res!1056444 () Bool)

(declare-fun e!1584742 () Bool)

(assert (=> b!2497830 (=> (not res!1056444) (not e!1584742))))

(declare-fun call!154036 () Bool)

(assert (=> b!2497830 (= res!1056444 (not call!154036))))

(declare-fun b!2497831 () Bool)

(declare-fun e!1584743 () Bool)

(assert (=> b!2497831 (= e!1584743 (nullable!2303 lt!895055))))

(declare-fun b!2497832 () Bool)

(declare-fun res!1056441 () Bool)

(declare-fun e!1584740 () Bool)

(assert (=> b!2497832 (=> res!1056441 e!1584740)))

(assert (=> b!2497832 (= res!1056441 (not (is-ElementMatch!7386 lt!895055)))))

(declare-fun e!1584739 () Bool)

(assert (=> b!2497832 (= e!1584739 e!1584740)))

(declare-fun b!2497833 () Bool)

(assert (=> b!2497833 (= e!1584742 (= (head!5687 tl!4068) (c!397214 lt!895055)))))

(declare-fun b!2497834 () Bool)

(declare-fun res!1056443 () Bool)

(assert (=> b!2497834 (=> (not res!1056443) (not e!1584742))))

(assert (=> b!2497834 (= res!1056443 (isEmpty!16819 (tail!3964 tl!4068)))))

(declare-fun b!2497835 () Bool)

(declare-fun e!1584741 () Bool)

(declare-fun e!1584738 () Bool)

(assert (=> b!2497835 (= e!1584741 e!1584738)))

(declare-fun res!1056440 () Bool)

(assert (=> b!2497835 (=> res!1056440 e!1584738)))

(assert (=> b!2497835 (= res!1056440 call!154036)))

(declare-fun b!2497837 () Bool)

(assert (=> b!2497837 (= e!1584743 (matchR!3395 (derivativeStep!1955 lt!895055 (head!5687 tl!4068)) (tail!3964 tl!4068)))))

(declare-fun b!2497838 () Bool)

(assert (=> b!2497838 (= e!1584738 (not (= (head!5687 tl!4068) (c!397214 lt!895055))))))

(declare-fun b!2497839 () Bool)

(declare-fun e!1584737 () Bool)

(declare-fun lt!895137 () Bool)

(assert (=> b!2497839 (= e!1584737 (= lt!895137 call!154036))))

(declare-fun b!2497840 () Bool)

(assert (=> b!2497840 (= e!1584737 e!1584739)))

(declare-fun c!397300 () Bool)

(assert (=> b!2497840 (= c!397300 (is-EmptyLang!7386 lt!895055))))

(declare-fun b!2497841 () Bool)

(assert (=> b!2497841 (= e!1584739 (not lt!895137))))

(declare-fun d!715095 () Bool)

(assert (=> d!715095 e!1584737))

(declare-fun c!397301 () Bool)

(assert (=> d!715095 (= c!397301 (is-EmptyExpr!7386 lt!895055))))

(assert (=> d!715095 (= lt!895137 e!1584743)))

(declare-fun c!397299 () Bool)

(assert (=> d!715095 (= c!397299 (isEmpty!16819 tl!4068))))

(assert (=> d!715095 (validRegex!3012 lt!895055)))

(assert (=> d!715095 (= (matchR!3395 lt!895055 tl!4068) lt!895137)))

(declare-fun b!2497836 () Bool)

(declare-fun res!1056446 () Bool)

(assert (=> b!2497836 (=> res!1056446 e!1584738)))

(assert (=> b!2497836 (= res!1056446 (not (isEmpty!16819 (tail!3964 tl!4068))))))

(declare-fun b!2497842 () Bool)

(assert (=> b!2497842 (= e!1584740 e!1584741)))

(declare-fun res!1056442 () Bool)

(assert (=> b!2497842 (=> (not res!1056442) (not e!1584741))))

(assert (=> b!2497842 (= res!1056442 (not lt!895137))))

(declare-fun bm!154031 () Bool)

(assert (=> bm!154031 (= call!154036 (isEmpty!16819 tl!4068))))

(declare-fun b!2497843 () Bool)

(declare-fun res!1056445 () Bool)

(assert (=> b!2497843 (=> res!1056445 e!1584740)))

(assert (=> b!2497843 (= res!1056445 e!1584742)))

(declare-fun res!1056447 () Bool)

(assert (=> b!2497843 (=> (not res!1056447) (not e!1584742))))

(assert (=> b!2497843 (= res!1056447 lt!895137)))

(assert (= (and d!715095 c!397299) b!2497831))

(assert (= (and d!715095 (not c!397299)) b!2497837))

(assert (= (and d!715095 c!397301) b!2497839))

(assert (= (and d!715095 (not c!397301)) b!2497840))

(assert (= (and b!2497840 c!397300) b!2497841))

(assert (= (and b!2497840 (not c!397300)) b!2497832))

(assert (= (and b!2497832 (not res!1056441)) b!2497843))

(assert (= (and b!2497843 res!1056447) b!2497830))

(assert (= (and b!2497830 res!1056444) b!2497834))

(assert (= (and b!2497834 res!1056443) b!2497833))

(assert (= (and b!2497843 (not res!1056445)) b!2497842))

(assert (= (and b!2497842 res!1056442) b!2497835))

(assert (= (and b!2497835 (not res!1056440)) b!2497836))

(assert (= (and b!2497836 (not res!1056446)) b!2497838))

(assert (= (or b!2497839 b!2497830 b!2497835) bm!154031))

(declare-fun m!2861739 () Bool)

(assert (=> d!715095 m!2861739))

(assert (=> d!715095 m!2861707))

(declare-fun m!2861741 () Bool)

(assert (=> b!2497838 m!2861741))

(declare-fun m!2861743 () Bool)

(assert (=> b!2497831 m!2861743))

(declare-fun m!2861745 () Bool)

(assert (=> b!2497834 m!2861745))

(assert (=> b!2497834 m!2861745))

(declare-fun m!2861747 () Bool)

(assert (=> b!2497834 m!2861747))

(assert (=> b!2497837 m!2861741))

(assert (=> b!2497837 m!2861741))

(declare-fun m!2861749 () Bool)

(assert (=> b!2497837 m!2861749))

(assert (=> b!2497837 m!2861745))

(assert (=> b!2497837 m!2861749))

(assert (=> b!2497837 m!2861745))

(declare-fun m!2861751 () Bool)

(assert (=> b!2497837 m!2861751))

(assert (=> b!2497833 m!2861741))

(assert (=> bm!154031 m!2861739))

(assert (=> b!2497836 m!2861745))

(assert (=> b!2497836 m!2861745))

(assert (=> b!2497836 m!2861747))

(assert (=> b!2497471 d!715095))

(declare-fun d!715097 () Bool)

(assert (=> d!715097 (= (matchR!3395 lt!895055 tl!4068) (matchR!3395 (derivative!81 lt!895055 tl!4068) Nil!29351))))

(declare-fun lt!895141 () Unit!43041)

(declare-fun choose!14754 (Regex!7386 List!29451) Unit!43041)

(assert (=> d!715097 (= lt!895141 (choose!14754 lt!895055 tl!4068))))

(assert (=> d!715097 (validRegex!3012 lt!895055)))

(assert (=> d!715097 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!41 lt!895055 tl!4068) lt!895141)))

(declare-fun bs!468507 () Bool)

(assert (= bs!468507 d!715097))

(assert (=> bs!468507 m!2861457))

(assert (=> bs!468507 m!2861467))

(declare-fun m!2861769 () Bool)

(assert (=> bs!468507 m!2861769))

(declare-fun m!2861771 () Bool)

(assert (=> bs!468507 m!2861771))

(assert (=> bs!468507 m!2861467))

(assert (=> bs!468507 m!2861707))

(assert (=> b!2497471 d!715097))

(declare-fun b!2497870 () Bool)

(declare-fun e!1584753 () Bool)

(declare-fun tp!799809 () Bool)

(assert (=> b!2497870 (= e!1584753 tp!799809)))

(declare-fun b!2497869 () Bool)

(declare-fun tp!799810 () Bool)

(declare-fun tp!799811 () Bool)

(assert (=> b!2497869 (= e!1584753 (and tp!799810 tp!799811))))

(declare-fun b!2497868 () Bool)

(assert (=> b!2497868 (= e!1584753 tp_is_empty!12627)))

(assert (=> b!2497468 (= tp!799778 e!1584753)))

(declare-fun b!2497871 () Bool)

(declare-fun tp!799813 () Bool)

(declare-fun tp!799812 () Bool)

(assert (=> b!2497871 (= e!1584753 (and tp!799813 tp!799812))))

(assert (= (and b!2497468 (is-ElementMatch!7386 (reg!7715 r!27340))) b!2497868))

(assert (= (and b!2497468 (is-Concat!12082 (reg!7715 r!27340))) b!2497869))

(assert (= (and b!2497468 (is-Star!7386 (reg!7715 r!27340))) b!2497870))

(assert (= (and b!2497468 (is-Union!7386 (reg!7715 r!27340))) b!2497871))

(declare-fun b!2497874 () Bool)

(declare-fun e!1584754 () Bool)

(declare-fun tp!799814 () Bool)

(assert (=> b!2497874 (= e!1584754 tp!799814)))

(declare-fun b!2497873 () Bool)

(declare-fun tp!799815 () Bool)

(declare-fun tp!799816 () Bool)

(assert (=> b!2497873 (= e!1584754 (and tp!799815 tp!799816))))

(declare-fun b!2497872 () Bool)

(assert (=> b!2497872 (= e!1584754 tp_is_empty!12627)))

(assert (=> b!2497462 (= tp!799779 e!1584754)))

(declare-fun b!2497875 () Bool)

(declare-fun tp!799818 () Bool)

(declare-fun tp!799817 () Bool)

(assert (=> b!2497875 (= e!1584754 (and tp!799818 tp!799817))))

(assert (= (and b!2497462 (is-ElementMatch!7386 (regOne!15284 r!27340))) b!2497872))

(assert (= (and b!2497462 (is-Concat!12082 (regOne!15284 r!27340))) b!2497873))

(assert (= (and b!2497462 (is-Star!7386 (regOne!15284 r!27340))) b!2497874))

(assert (= (and b!2497462 (is-Union!7386 (regOne!15284 r!27340))) b!2497875))

(declare-fun b!2497878 () Bool)

(declare-fun e!1584755 () Bool)

(declare-fun tp!799819 () Bool)

(assert (=> b!2497878 (= e!1584755 tp!799819)))

(declare-fun b!2497877 () Bool)

(declare-fun tp!799820 () Bool)

(declare-fun tp!799821 () Bool)

(assert (=> b!2497877 (= e!1584755 (and tp!799820 tp!799821))))

(declare-fun b!2497876 () Bool)

(assert (=> b!2497876 (= e!1584755 tp_is_empty!12627)))

(assert (=> b!2497462 (= tp!799776 e!1584755)))

(declare-fun b!2497879 () Bool)

(declare-fun tp!799823 () Bool)

(declare-fun tp!799822 () Bool)

(assert (=> b!2497879 (= e!1584755 (and tp!799823 tp!799822))))

(assert (= (and b!2497462 (is-ElementMatch!7386 (regTwo!15284 r!27340))) b!2497876))

(assert (= (and b!2497462 (is-Concat!12082 (regTwo!15284 r!27340))) b!2497877))

(assert (= (and b!2497462 (is-Star!7386 (regTwo!15284 r!27340))) b!2497878))

(assert (= (and b!2497462 (is-Union!7386 (regTwo!15284 r!27340))) b!2497879))

(declare-fun b!2497884 () Bool)

(declare-fun e!1584758 () Bool)

(declare-fun tp!799826 () Bool)

(assert (=> b!2497884 (= e!1584758 (and tp_is_empty!12627 tp!799826))))

(assert (=> b!2497470 (= tp!799775 e!1584758)))

(assert (= (and b!2497470 (is-Cons!29351 (t!211150 tl!4068))) b!2497884))

(declare-fun b!2497887 () Bool)

(declare-fun e!1584759 () Bool)

(declare-fun tp!799827 () Bool)

(assert (=> b!2497887 (= e!1584759 tp!799827)))

(declare-fun b!2497886 () Bool)

(declare-fun tp!799828 () Bool)

(declare-fun tp!799829 () Bool)

(assert (=> b!2497886 (= e!1584759 (and tp!799828 tp!799829))))

(declare-fun b!2497885 () Bool)

(assert (=> b!2497885 (= e!1584759 tp_is_empty!12627)))

(assert (=> b!2497466 (= tp!799777 e!1584759)))

(declare-fun b!2497888 () Bool)

(declare-fun tp!799831 () Bool)

(declare-fun tp!799830 () Bool)

(assert (=> b!2497888 (= e!1584759 (and tp!799831 tp!799830))))

(assert (= (and b!2497466 (is-ElementMatch!7386 (regOne!15285 r!27340))) b!2497885))

(assert (= (and b!2497466 (is-Concat!12082 (regOne!15285 r!27340))) b!2497886))

(assert (= (and b!2497466 (is-Star!7386 (regOne!15285 r!27340))) b!2497887))

(assert (= (and b!2497466 (is-Union!7386 (regOne!15285 r!27340))) b!2497888))

(declare-fun b!2497891 () Bool)

(declare-fun e!1584760 () Bool)

(declare-fun tp!799832 () Bool)

(assert (=> b!2497891 (= e!1584760 tp!799832)))

(declare-fun b!2497890 () Bool)

(declare-fun tp!799833 () Bool)

(declare-fun tp!799834 () Bool)

(assert (=> b!2497890 (= e!1584760 (and tp!799833 tp!799834))))

(declare-fun b!2497889 () Bool)

(assert (=> b!2497889 (= e!1584760 tp_is_empty!12627)))

(assert (=> b!2497466 (= tp!799780 e!1584760)))

(declare-fun b!2497892 () Bool)

(declare-fun tp!799836 () Bool)

(declare-fun tp!799835 () Bool)

(assert (=> b!2497892 (= e!1584760 (and tp!799836 tp!799835))))

(assert (= (and b!2497466 (is-ElementMatch!7386 (regTwo!15285 r!27340))) b!2497889))

(assert (= (and b!2497466 (is-Concat!12082 (regTwo!15285 r!27340))) b!2497890))

(assert (= (and b!2497466 (is-Star!7386 (regTwo!15285 r!27340))) b!2497891))

(assert (= (and b!2497466 (is-Union!7386 (regTwo!15285 r!27340))) b!2497892))

(push 1)

(assert (not d!715079))

(assert (not b!2497877))

(assert (not b!2497874))

(assert (not b!2497580))

(assert (not b!2497836))

(assert (not b!2497870))

(assert (not d!715067))

(assert (not b!2497620))

(assert (not b!2497613))

(assert (not b!2497890))

(assert (not b!2497616))

(assert (not b!2497878))

(assert tp_is_empty!12627)

(assert (not bm!154013))

(assert (not b!2497837))

(assert (not bm!154011))

(assert (not b!2497804))

(assert (not b!2497823))

(assert (not b!2497579))

(assert (not d!715089))

(assert (not b!2497618))

(assert (not d!715065))

(assert (not bm!153997))

(assert (not bm!154008))

(assert (not bm!154031))

(assert (not b!2497886))

(assert (not b!2497615))

(assert (not b!2497831))

(assert (not b!2497726))

(assert (not bm!154010))

(assert (not b!2497583))

(assert (not bm!154029))

(assert (not b!2497762))

(assert (not b!2497819))

(assert (not bm!154022))

(assert (not b!2497678))

(assert (not b!2497875))

(assert (not b!2497619))

(assert (not b!2497824))

(assert (not b!2497584))

(assert (not b!2497888))

(assert (not b!2497838))

(assert (not d!715077))

(assert (not bm!153996))

(assert (not b!2497733))

(assert (not b!2497799))

(assert (not b!2497763))

(assert (not b!2497730))

(assert (not d!715085))

(assert (not b!2497873))

(assert (not d!715051))

(assert (not b!2497834))

(assert (not b!2497687))

(assert (not b!2497811))

(assert (not bm!154026))

(assert (not d!715071))

(assert (not b!2497892))

(assert (not b!2497822))

(assert (not b!2497887))

(assert (not b!2497820))

(assert (not b!2497582))

(assert (not d!715053))

(assert (not b!2497577))

(assert (not bm!154030))

(assert (not d!715087))

(assert (not b!2497734))

(assert (not b!2497817))

(assert (not b!2497727))

(assert (not b!2497891))

(assert (not b!2497869))

(assert (not b!2497729))

(assert (not b!2497644))

(assert (not d!715097))

(assert (not d!715049))

(assert (not b!2497884))

(assert (not d!715045))

(assert (not bm!154025))

(assert (not b!2497833))

(assert (not b!2497871))

(assert (not d!715095))

(assert (not d!715083))

(assert (not b!2497879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

