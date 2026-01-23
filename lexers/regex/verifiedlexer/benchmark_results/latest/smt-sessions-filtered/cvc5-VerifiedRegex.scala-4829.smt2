; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248298 () Bool)

(assert start!248298)

(declare-fun b!2568527 () Bool)

(declare-fun e!1621346 () Bool)

(declare-fun e!1621347 () Bool)

(assert (=> b!2568527 (= e!1621346 (not e!1621347))))

(declare-fun res!1080590 () Bool)

(assert (=> b!2568527 (=> res!1080590 e!1621347)))

(declare-fun lt!905483 () Bool)

(assert (=> b!2568527 (= res!1080590 (not lt!905483))))

(declare-datatypes ((C!15422 0))(
  ( (C!15423 (val!9363 Int)) )
))
(declare-datatypes ((List!29697 0))(
  ( (Nil!29597) (Cons!29597 (h!35017 C!15422) (t!211396 List!29697)) )
))
(declare-fun tl!4068 () List!29697)

(declare-datatypes ((Regex!7632 0))(
  ( (ElementMatch!7632 (c!413214 C!15422)) (Concat!12328 (regOne!15776 Regex!7632) (regTwo!15776 Regex!7632)) (EmptyExpr!7632) (Star!7632 (reg!7961 Regex!7632)) (EmptyLang!7632) (Union!7632 (regOne!15777 Regex!7632) (regTwo!15777 Regex!7632)) )
))
(declare-fun derivative!327 (Regex!7632 List!29697) Regex!7632)

(assert (=> b!2568527 (= (derivative!327 EmptyLang!7632 tl!4068) EmptyLang!7632)))

(declare-datatypes ((Unit!43445 0))(
  ( (Unit!43446) )
))
(declare-fun lt!905487 () Unit!43445)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!61 (Regex!7632 List!29697) Unit!43445)

(assert (=> b!2568527 (= lt!905487 (lemmaEmptyLangDerivativeIsAFixPoint!61 EmptyLang!7632 tl!4068))))

(declare-fun e!1621348 () Bool)

(assert (=> b!2568527 e!1621348))

(declare-fun res!1080589 () Bool)

(assert (=> b!2568527 (=> res!1080589 e!1621348)))

(assert (=> b!2568527 (= res!1080589 lt!905483)))

(declare-fun lt!905486 () Regex!7632)

(declare-fun matchR!3575 (Regex!7632 List!29697) Bool)

(assert (=> b!2568527 (= lt!905483 (matchR!3575 lt!905486 tl!4068))))

(declare-fun lt!905488 () Unit!43445)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!221 (Regex!7632 Regex!7632 List!29697) Unit!43445)

(assert (=> b!2568527 (= lt!905488 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!221 lt!905486 EmptyLang!7632 tl!4068))))

(declare-fun lt!905485 () Regex!7632)

(assert (=> b!2568527 (= (matchR!3575 lt!905485 tl!4068) (matchR!3575 (derivative!327 lt!905485 tl!4068) Nil!29597))))

(declare-fun lt!905484 () Unit!43445)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!221 (Regex!7632 List!29697) Unit!43445)

(assert (=> b!2568527 (= lt!905484 (lemmaMatchRIsSameAsWholeDerivativeAndNil!221 lt!905485 tl!4068))))

(assert (=> b!2568527 (= lt!905485 (Union!7632 lt!905486 EmptyLang!7632))))

(declare-fun lt!905489 () Regex!7632)

(declare-fun r!27340 () Regex!7632)

(assert (=> b!2568527 (= lt!905486 (Concat!12328 lt!905489 (regTwo!15776 r!27340)))))

(declare-fun c!14016 () C!15422)

(declare-fun derivativeStep!2201 (Regex!7632 C!15422) Regex!7632)

(assert (=> b!2568527 (= lt!905489 (derivativeStep!2201 (regOne!15776 r!27340) c!14016))))

(declare-fun b!2568528 () Bool)

(declare-fun e!1621345 () Bool)

(declare-fun tp_is_empty!13119 () Bool)

(assert (=> b!2568528 (= e!1621345 tp_is_empty!13119)))

(declare-fun b!2568529 () Bool)

(declare-fun res!1080591 () Bool)

(assert (=> b!2568529 (=> (not res!1080591) (not e!1621346))))

(declare-fun nullable!2549 (Regex!7632) Bool)

(assert (=> b!2568529 (= res!1080591 (nullable!2549 (derivative!327 (derivativeStep!2201 r!27340 c!14016) tl!4068)))))

(declare-fun b!2568530 () Bool)

(declare-fun tp!817527 () Bool)

(declare-fun tp!817523 () Bool)

(assert (=> b!2568530 (= e!1621345 (and tp!817527 tp!817523))))

(declare-fun b!2568531 () Bool)

(declare-fun res!1080595 () Bool)

(assert (=> b!2568531 (=> (not res!1080595) (not e!1621346))))

(assert (=> b!2568531 (= res!1080595 (not (nullable!2549 (regOne!15776 r!27340))))))

(declare-fun b!2568532 () Bool)

(declare-fun validRegex!3258 (Regex!7632) Bool)

(assert (=> b!2568532 (= e!1621347 (validRegex!3258 (regTwo!15776 r!27340)))))

(declare-fun b!2568533 () Bool)

(declare-fun res!1080593 () Bool)

(assert (=> b!2568533 (=> (not res!1080593) (not e!1621346))))

(assert (=> b!2568533 (= res!1080593 (and (not (is-EmptyExpr!7632 r!27340)) (not (is-EmptyLang!7632 r!27340)) (not (is-ElementMatch!7632 r!27340)) (not (is-Union!7632 r!27340)) (not (is-Star!7632 r!27340))))))

(declare-fun b!2568534 () Bool)

(declare-fun res!1080594 () Bool)

(assert (=> b!2568534 (=> res!1080594 e!1621347)))

(assert (=> b!2568534 (= res!1080594 (not (validRegex!3258 lt!905489)))))

(declare-fun b!2568535 () Bool)

(declare-fun tp!817524 () Bool)

(declare-fun tp!817526 () Bool)

(assert (=> b!2568535 (= e!1621345 (and tp!817524 tp!817526))))

(declare-fun b!2568536 () Bool)

(declare-fun e!1621349 () Bool)

(declare-fun tp!817528 () Bool)

(assert (=> b!2568536 (= e!1621349 (and tp_is_empty!13119 tp!817528))))

(declare-fun res!1080592 () Bool)

(assert (=> start!248298 (=> (not res!1080592) (not e!1621346))))

(assert (=> start!248298 (= res!1080592 (validRegex!3258 r!27340))))

(assert (=> start!248298 e!1621346))

(assert (=> start!248298 e!1621345))

(assert (=> start!248298 tp_is_empty!13119))

(assert (=> start!248298 e!1621349))

(declare-fun b!2568537 () Bool)

(assert (=> b!2568537 (= e!1621348 (matchR!3575 EmptyLang!7632 tl!4068))))

(declare-fun b!2568538 () Bool)

(declare-fun tp!817525 () Bool)

(assert (=> b!2568538 (= e!1621345 tp!817525)))

(assert (= (and start!248298 res!1080592) b!2568529))

(assert (= (and b!2568529 res!1080591) b!2568533))

(assert (= (and b!2568533 res!1080593) b!2568531))

(assert (= (and b!2568531 res!1080595) b!2568527))

(assert (= (and b!2568527 (not res!1080589)) b!2568537))

(assert (= (and b!2568527 (not res!1080590)) b!2568534))

(assert (= (and b!2568534 (not res!1080594)) b!2568532))

(assert (= (and start!248298 (is-ElementMatch!7632 r!27340)) b!2568528))

(assert (= (and start!248298 (is-Concat!12328 r!27340)) b!2568530))

(assert (= (and start!248298 (is-Star!7632 r!27340)) b!2568538))

(assert (= (and start!248298 (is-Union!7632 r!27340)) b!2568535))

(assert (= (and start!248298 (is-Cons!29597 tl!4068)) b!2568536))

(declare-fun m!2905565 () Bool)

(assert (=> b!2568537 m!2905565))

(declare-fun m!2905567 () Bool)

(assert (=> b!2568529 m!2905567))

(assert (=> b!2568529 m!2905567))

(declare-fun m!2905569 () Bool)

(assert (=> b!2568529 m!2905569))

(assert (=> b!2568529 m!2905569))

(declare-fun m!2905571 () Bool)

(assert (=> b!2568529 m!2905571))

(declare-fun m!2905573 () Bool)

(assert (=> b!2568532 m!2905573))

(declare-fun m!2905575 () Bool)

(assert (=> start!248298 m!2905575))

(declare-fun m!2905577 () Bool)

(assert (=> b!2568534 m!2905577))

(declare-fun m!2905579 () Bool)

(assert (=> b!2568527 m!2905579))

(declare-fun m!2905581 () Bool)

(assert (=> b!2568527 m!2905581))

(declare-fun m!2905583 () Bool)

(assert (=> b!2568527 m!2905583))

(declare-fun m!2905585 () Bool)

(assert (=> b!2568527 m!2905585))

(declare-fun m!2905587 () Bool)

(assert (=> b!2568527 m!2905587))

(assert (=> b!2568527 m!2905581))

(declare-fun m!2905589 () Bool)

(assert (=> b!2568527 m!2905589))

(declare-fun m!2905591 () Bool)

(assert (=> b!2568527 m!2905591))

(declare-fun m!2905593 () Bool)

(assert (=> b!2568527 m!2905593))

(declare-fun m!2905595 () Bool)

(assert (=> b!2568527 m!2905595))

(declare-fun m!2905597 () Bool)

(assert (=> b!2568531 m!2905597))

(push 1)

(assert (not b!2568538))

(assert (not b!2568530))

(assert (not b!2568532))

(assert (not b!2568536))

(assert (not b!2568535))

(assert tp_is_empty!13119)

(assert (not b!2568537))

(assert (not b!2568527))

(assert (not b!2568534))

(assert (not start!248298))

(assert (not b!2568531))

(assert (not b!2568529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!726950 () Bool)

(declare-fun nullableFct!774 (Regex!7632) Bool)

(assert (=> d!726950 (= (nullable!2549 (derivative!327 (derivativeStep!2201 r!27340 c!14016) tl!4068)) (nullableFct!774 (derivative!327 (derivativeStep!2201 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469978 () Bool)

(assert (= bs!469978 d!726950))

(assert (=> bs!469978 m!2905569))

(declare-fun m!2905633 () Bool)

(assert (=> bs!469978 m!2905633))

(assert (=> b!2568529 d!726950))

(declare-fun d!726952 () Bool)

(declare-fun lt!905513 () Regex!7632)

(assert (=> d!726952 (validRegex!3258 lt!905513)))

(declare-fun e!1621367 () Regex!7632)

(assert (=> d!726952 (= lt!905513 e!1621367)))

(declare-fun c!413218 () Bool)

(assert (=> d!726952 (= c!413218 (is-Cons!29597 tl!4068))))

(assert (=> d!726952 (validRegex!3258 (derivativeStep!2201 r!27340 c!14016))))

(assert (=> d!726952 (= (derivative!327 (derivativeStep!2201 r!27340 c!14016) tl!4068) lt!905513)))

(declare-fun b!2568579 () Bool)

(assert (=> b!2568579 (= e!1621367 (derivative!327 (derivativeStep!2201 (derivativeStep!2201 r!27340 c!14016) (h!35017 tl!4068)) (t!211396 tl!4068)))))

(declare-fun b!2568580 () Bool)

(assert (=> b!2568580 (= e!1621367 (derivativeStep!2201 r!27340 c!14016))))

(assert (= (and d!726952 c!413218) b!2568579))

(assert (= (and d!726952 (not c!413218)) b!2568580))

(declare-fun m!2905635 () Bool)

(assert (=> d!726952 m!2905635))

(assert (=> d!726952 m!2905567))

(declare-fun m!2905637 () Bool)

(assert (=> d!726952 m!2905637))

(assert (=> b!2568579 m!2905567))

(declare-fun m!2905639 () Bool)

(assert (=> b!2568579 m!2905639))

(assert (=> b!2568579 m!2905639))

(declare-fun m!2905641 () Bool)

(assert (=> b!2568579 m!2905641))

(assert (=> b!2568529 d!726952))

(declare-fun b!2568619 () Bool)

(declare-fun e!1621396 () Regex!7632)

(declare-fun call!165569 () Regex!7632)

(assert (=> b!2568619 (= e!1621396 (Concat!12328 call!165569 r!27340))))

(declare-fun b!2568620 () Bool)

(declare-fun e!1621392 () Regex!7632)

(assert (=> b!2568620 (= e!1621392 EmptyLang!7632)))

(declare-fun bm!165563 () Bool)

(declare-fun call!165571 () Regex!7632)

(assert (=> bm!165563 (= call!165571 call!165569)))

(declare-fun call!165570 () Regex!7632)

(declare-fun b!2568621 () Bool)

(declare-fun e!1621393 () Regex!7632)

(assert (=> b!2568621 (= e!1621393 (Union!7632 (Concat!12328 call!165571 (regTwo!15776 r!27340)) call!165570))))

(declare-fun b!2568622 () Bool)

(declare-fun e!1621394 () Regex!7632)

(assert (=> b!2568622 (= e!1621394 (ite (= c!14016 (c!413214 r!27340)) EmptyExpr!7632 EmptyLang!7632))))

(declare-fun c!413236 () Bool)

(declare-fun call!165568 () Regex!7632)

(declare-fun bm!165564 () Bool)

(declare-fun c!413234 () Bool)

(assert (=> bm!165564 (= call!165568 (derivativeStep!2201 (ite c!413234 (regOne!15777 r!27340) (ite c!413236 (reg!7961 r!27340) (regOne!15776 r!27340))) c!14016))))

(declare-fun bm!165565 () Bool)

(assert (=> bm!165565 (= call!165569 call!165568)))

(declare-fun b!2568623 () Bool)

(assert (=> b!2568623 (= c!413234 (is-Union!7632 r!27340))))

(declare-fun e!1621395 () Regex!7632)

(assert (=> b!2568623 (= e!1621394 e!1621395)))

(declare-fun b!2568624 () Bool)

(assert (=> b!2568624 (= e!1621392 e!1621394)))

(declare-fun c!413237 () Bool)

(assert (=> b!2568624 (= c!413237 (is-ElementMatch!7632 r!27340))))

(declare-fun b!2568625 () Bool)

(assert (=> b!2568625 (= e!1621393 (Union!7632 (Concat!12328 call!165571 (regTwo!15776 r!27340)) EmptyLang!7632))))

(declare-fun b!2568626 () Bool)

(assert (=> b!2568626 (= e!1621395 (Union!7632 call!165568 call!165570))))

(declare-fun b!2568627 () Bool)

(assert (=> b!2568627 (= e!1621395 e!1621396)))

(assert (=> b!2568627 (= c!413236 (is-Star!7632 r!27340))))

(declare-fun b!2568628 () Bool)

(declare-fun c!413233 () Bool)

(assert (=> b!2568628 (= c!413233 (nullable!2549 (regOne!15776 r!27340)))))

(assert (=> b!2568628 (= e!1621396 e!1621393)))

(declare-fun d!726956 () Bool)

(declare-fun lt!905516 () Regex!7632)

(assert (=> d!726956 (validRegex!3258 lt!905516)))

(assert (=> d!726956 (= lt!905516 e!1621392)))

(declare-fun c!413235 () Bool)

(assert (=> d!726956 (= c!413235 (or (is-EmptyExpr!7632 r!27340) (is-EmptyLang!7632 r!27340)))))

(assert (=> d!726956 (validRegex!3258 r!27340)))

(assert (=> d!726956 (= (derivativeStep!2201 r!27340 c!14016) lt!905516)))

(declare-fun bm!165566 () Bool)

(assert (=> bm!165566 (= call!165570 (derivativeStep!2201 (ite c!413234 (regTwo!15777 r!27340) (regTwo!15776 r!27340)) c!14016))))

(assert (= (and d!726956 c!413235) b!2568620))

(assert (= (and d!726956 (not c!413235)) b!2568624))

(assert (= (and b!2568624 c!413237) b!2568622))

(assert (= (and b!2568624 (not c!413237)) b!2568623))

(assert (= (and b!2568623 c!413234) b!2568626))

(assert (= (and b!2568623 (not c!413234)) b!2568627))

(assert (= (and b!2568627 c!413236) b!2568619))

(assert (= (and b!2568627 (not c!413236)) b!2568628))

(assert (= (and b!2568628 c!413233) b!2568621))

(assert (= (and b!2568628 (not c!413233)) b!2568625))

(assert (= (or b!2568621 b!2568625) bm!165563))

(assert (= (or b!2568619 bm!165563) bm!165565))

(assert (= (or b!2568626 b!2568621) bm!165566))

(assert (= (or b!2568626 bm!165565) bm!165564))

(declare-fun m!2905643 () Bool)

(assert (=> bm!165564 m!2905643))

(assert (=> b!2568628 m!2905597))

(declare-fun m!2905645 () Bool)

(assert (=> d!726956 m!2905645))

(assert (=> d!726956 m!2905575))

(declare-fun m!2905647 () Bool)

(assert (=> bm!165566 m!2905647))

(assert (=> b!2568529 d!726956))

(declare-fun d!726958 () Bool)

(declare-fun res!1080642 () Bool)

(declare-fun e!1621424 () Bool)

(assert (=> d!726958 (=> res!1080642 e!1621424)))

(assert (=> d!726958 (= res!1080642 (is-ElementMatch!7632 lt!905489))))

(assert (=> d!726958 (= (validRegex!3258 lt!905489) e!1621424)))

(declare-fun b!2568656 () Bool)

(declare-fun e!1621422 () Bool)

(declare-fun e!1621421 () Bool)

(assert (=> b!2568656 (= e!1621422 e!1621421)))

(declare-fun res!1080643 () Bool)

(assert (=> b!2568656 (= res!1080643 (not (nullable!2549 (reg!7961 lt!905489))))))

(assert (=> b!2568656 (=> (not res!1080643) (not e!1621421))))

(declare-fun b!2568657 () Bool)

(assert (=> b!2568657 (= e!1621424 e!1621422)))

(declare-fun c!413244 () Bool)

(assert (=> b!2568657 (= c!413244 (is-Star!7632 lt!905489))))

(declare-fun b!2568658 () Bool)

(declare-fun e!1621418 () Bool)

(declare-fun call!165583 () Bool)

(assert (=> b!2568658 (= e!1621418 call!165583)))

(declare-fun b!2568659 () Bool)

(declare-fun res!1080644 () Bool)

(assert (=> b!2568659 (=> (not res!1080644) (not e!1621418))))

(declare-fun call!165582 () Bool)

(assert (=> b!2568659 (= res!1080644 call!165582)))

(declare-fun e!1621423 () Bool)

(assert (=> b!2568659 (= e!1621423 e!1621418)))

(declare-fun call!165581 () Bool)

(declare-fun c!413245 () Bool)

(declare-fun bm!165576 () Bool)

(assert (=> bm!165576 (= call!165581 (validRegex!3258 (ite c!413244 (reg!7961 lt!905489) (ite c!413245 (regOne!15777 lt!905489) (regTwo!15776 lt!905489)))))))

(declare-fun b!2568660 () Bool)

(declare-fun e!1621420 () Bool)

(assert (=> b!2568660 (= e!1621420 call!165582)))

(declare-fun b!2568661 () Bool)

(declare-fun e!1621419 () Bool)

(assert (=> b!2568661 (= e!1621419 e!1621420)))

(declare-fun res!1080645 () Bool)

(assert (=> b!2568661 (=> (not res!1080645) (not e!1621420))))

(assert (=> b!2568661 (= res!1080645 call!165583)))

(declare-fun b!2568662 () Bool)

(assert (=> b!2568662 (= e!1621422 e!1621423)))

(assert (=> b!2568662 (= c!413245 (is-Union!7632 lt!905489))))

(declare-fun b!2568663 () Bool)

(declare-fun res!1080646 () Bool)

(assert (=> b!2568663 (=> res!1080646 e!1621419)))

(assert (=> b!2568663 (= res!1080646 (not (is-Concat!12328 lt!905489)))))

(assert (=> b!2568663 (= e!1621423 e!1621419)))

(declare-fun bm!165577 () Bool)

(assert (=> bm!165577 (= call!165583 (validRegex!3258 (ite c!413245 (regTwo!15777 lt!905489) (regOne!15776 lt!905489))))))

(declare-fun b!2568664 () Bool)

(assert (=> b!2568664 (= e!1621421 call!165581)))

(declare-fun bm!165578 () Bool)

(assert (=> bm!165578 (= call!165582 call!165581)))

(assert (= (and d!726958 (not res!1080642)) b!2568657))

(assert (= (and b!2568657 c!413244) b!2568656))

(assert (= (and b!2568657 (not c!413244)) b!2568662))

(assert (= (and b!2568656 res!1080643) b!2568664))

(assert (= (and b!2568662 c!413245) b!2568659))

(assert (= (and b!2568662 (not c!413245)) b!2568663))

(assert (= (and b!2568659 res!1080644) b!2568658))

(assert (= (and b!2568663 (not res!1080646)) b!2568661))

(assert (= (and b!2568661 res!1080645) b!2568660))

(assert (= (or b!2568659 b!2568660) bm!165578))

(assert (= (or b!2568658 b!2568661) bm!165577))

(assert (= (or b!2568664 bm!165578) bm!165576))

(declare-fun m!2905655 () Bool)

(assert (=> b!2568656 m!2905655))

(declare-fun m!2905657 () Bool)

(assert (=> bm!165576 m!2905657))

(declare-fun m!2905659 () Bool)

(assert (=> bm!165577 m!2905659))

(assert (=> b!2568534 d!726958))

(declare-fun b!2568665 () Bool)

(declare-fun e!1621429 () Regex!7632)

(declare-fun call!165585 () Regex!7632)

(assert (=> b!2568665 (= e!1621429 (Concat!12328 call!165585 (regOne!15776 r!27340)))))

(declare-fun b!2568666 () Bool)

(declare-fun e!1621425 () Regex!7632)

(assert (=> b!2568666 (= e!1621425 EmptyLang!7632)))

(declare-fun bm!165579 () Bool)

(declare-fun call!165587 () Regex!7632)

(assert (=> bm!165579 (= call!165587 call!165585)))

(declare-fun b!2568667 () Bool)

(declare-fun call!165586 () Regex!7632)

(declare-fun e!1621426 () Regex!7632)

(assert (=> b!2568667 (= e!1621426 (Union!7632 (Concat!12328 call!165587 (regTwo!15776 (regOne!15776 r!27340))) call!165586))))

(declare-fun b!2568668 () Bool)

(declare-fun e!1621427 () Regex!7632)

(assert (=> b!2568668 (= e!1621427 (ite (= c!14016 (c!413214 (regOne!15776 r!27340))) EmptyExpr!7632 EmptyLang!7632))))

(declare-fun bm!165580 () Bool)

(declare-fun c!413249 () Bool)

(declare-fun c!413247 () Bool)

(declare-fun call!165584 () Regex!7632)

(assert (=> bm!165580 (= call!165584 (derivativeStep!2201 (ite c!413247 (regOne!15777 (regOne!15776 r!27340)) (ite c!413249 (reg!7961 (regOne!15776 r!27340)) (regOne!15776 (regOne!15776 r!27340)))) c!14016))))

(declare-fun bm!165581 () Bool)

(assert (=> bm!165581 (= call!165585 call!165584)))

(declare-fun b!2568669 () Bool)

(assert (=> b!2568669 (= c!413247 (is-Union!7632 (regOne!15776 r!27340)))))

(declare-fun e!1621428 () Regex!7632)

(assert (=> b!2568669 (= e!1621427 e!1621428)))

(declare-fun b!2568670 () Bool)

(assert (=> b!2568670 (= e!1621425 e!1621427)))

(declare-fun c!413250 () Bool)

(assert (=> b!2568670 (= c!413250 (is-ElementMatch!7632 (regOne!15776 r!27340)))))

(declare-fun b!2568671 () Bool)

(assert (=> b!2568671 (= e!1621426 (Union!7632 (Concat!12328 call!165587 (regTwo!15776 (regOne!15776 r!27340))) EmptyLang!7632))))

(declare-fun b!2568672 () Bool)

(assert (=> b!2568672 (= e!1621428 (Union!7632 call!165584 call!165586))))

(declare-fun b!2568673 () Bool)

(assert (=> b!2568673 (= e!1621428 e!1621429)))

(assert (=> b!2568673 (= c!413249 (is-Star!7632 (regOne!15776 r!27340)))))

(declare-fun b!2568674 () Bool)

(declare-fun c!413246 () Bool)

(assert (=> b!2568674 (= c!413246 (nullable!2549 (regOne!15776 (regOne!15776 r!27340))))))

(assert (=> b!2568674 (= e!1621429 e!1621426)))

(declare-fun d!726962 () Bool)

(declare-fun lt!905517 () Regex!7632)

(assert (=> d!726962 (validRegex!3258 lt!905517)))

(assert (=> d!726962 (= lt!905517 e!1621425)))

(declare-fun c!413248 () Bool)

(assert (=> d!726962 (= c!413248 (or (is-EmptyExpr!7632 (regOne!15776 r!27340)) (is-EmptyLang!7632 (regOne!15776 r!27340))))))

(assert (=> d!726962 (validRegex!3258 (regOne!15776 r!27340))))

(assert (=> d!726962 (= (derivativeStep!2201 (regOne!15776 r!27340) c!14016) lt!905517)))

(declare-fun bm!165582 () Bool)

(assert (=> bm!165582 (= call!165586 (derivativeStep!2201 (ite c!413247 (regTwo!15777 (regOne!15776 r!27340)) (regTwo!15776 (regOne!15776 r!27340))) c!14016))))

(assert (= (and d!726962 c!413248) b!2568666))

(assert (= (and d!726962 (not c!413248)) b!2568670))

(assert (= (and b!2568670 c!413250) b!2568668))

(assert (= (and b!2568670 (not c!413250)) b!2568669))

(assert (= (and b!2568669 c!413247) b!2568672))

(assert (= (and b!2568669 (not c!413247)) b!2568673))

(assert (= (and b!2568673 c!413249) b!2568665))

(assert (= (and b!2568673 (not c!413249)) b!2568674))

(assert (= (and b!2568674 c!413246) b!2568667))

(assert (= (and b!2568674 (not c!413246)) b!2568671))

(assert (= (or b!2568667 b!2568671) bm!165579))

(assert (= (or b!2568665 bm!165579) bm!165581))

(assert (= (or b!2568672 b!2568667) bm!165582))

(assert (= (or b!2568672 bm!165581) bm!165580))

(declare-fun m!2905661 () Bool)

(assert (=> bm!165580 m!2905661))

(declare-fun m!2905663 () Bool)

(assert (=> b!2568674 m!2905663))

(declare-fun m!2905665 () Bool)

(assert (=> d!726962 m!2905665))

(declare-fun m!2905667 () Bool)

(assert (=> d!726962 m!2905667))

(declare-fun m!2905669 () Bool)

(assert (=> bm!165582 m!2905669))

(assert (=> b!2568527 d!726962))

(declare-fun d!726964 () Bool)

(declare-fun lt!905518 () Regex!7632)

(assert (=> d!726964 (validRegex!3258 lt!905518)))

(declare-fun e!1621430 () Regex!7632)

(assert (=> d!726964 (= lt!905518 e!1621430)))

(declare-fun c!413251 () Bool)

(assert (=> d!726964 (= c!413251 (is-Cons!29597 tl!4068))))

(assert (=> d!726964 (validRegex!3258 EmptyLang!7632)))

(assert (=> d!726964 (= (derivative!327 EmptyLang!7632 tl!4068) lt!905518)))

(declare-fun b!2568675 () Bool)

(assert (=> b!2568675 (= e!1621430 (derivative!327 (derivativeStep!2201 EmptyLang!7632 (h!35017 tl!4068)) (t!211396 tl!4068)))))

(declare-fun b!2568676 () Bool)

(assert (=> b!2568676 (= e!1621430 EmptyLang!7632)))

(assert (= (and d!726964 c!413251) b!2568675))

(assert (= (and d!726964 (not c!413251)) b!2568676))

(declare-fun m!2905671 () Bool)

(assert (=> d!726964 m!2905671))

(declare-fun m!2905673 () Bool)

(assert (=> d!726964 m!2905673))

(declare-fun m!2905675 () Bool)

(assert (=> b!2568675 m!2905675))

(assert (=> b!2568675 m!2905675))

(declare-fun m!2905677 () Bool)

(assert (=> b!2568675 m!2905677))

(assert (=> b!2568527 d!726964))

(declare-fun d!726966 () Bool)

(assert (=> d!726966 (= (matchR!3575 lt!905485 tl!4068) (matchR!3575 (derivative!327 lt!905485 tl!4068) Nil!29597))))

(declare-fun lt!905521 () Unit!43445)

(declare-fun choose!15138 (Regex!7632 List!29697) Unit!43445)

(assert (=> d!726966 (= lt!905521 (choose!15138 lt!905485 tl!4068))))

(assert (=> d!726966 (validRegex!3258 lt!905485)))

(assert (=> d!726966 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!221 lt!905485 tl!4068) lt!905521)))

(declare-fun bs!469979 () Bool)

(assert (= bs!469979 d!726966))

(assert (=> bs!469979 m!2905593))

(assert (=> bs!469979 m!2905581))

(assert (=> bs!469979 m!2905581))

(assert (=> bs!469979 m!2905583))

(declare-fun m!2905679 () Bool)

(assert (=> bs!469979 m!2905679))

(declare-fun m!2905681 () Bool)

(assert (=> bs!469979 m!2905681))

(assert (=> b!2568527 d!726966))

(declare-fun d!726968 () Bool)

(declare-fun e!1621435 () Bool)

(assert (=> d!726968 e!1621435))

(declare-fun res!1080651 () Bool)

(assert (=> d!726968 (=> res!1080651 e!1621435)))

(assert (=> d!726968 (= res!1080651 (matchR!3575 lt!905486 tl!4068))))

(declare-fun lt!905524 () Unit!43445)

(declare-fun choose!15139 (Regex!7632 Regex!7632 List!29697) Unit!43445)

(assert (=> d!726968 (= lt!905524 (choose!15139 lt!905486 EmptyLang!7632 tl!4068))))

(declare-fun e!1621436 () Bool)

(assert (=> d!726968 e!1621436))

(declare-fun res!1080652 () Bool)

(assert (=> d!726968 (=> (not res!1080652) (not e!1621436))))

(assert (=> d!726968 (= res!1080652 (validRegex!3258 lt!905486))))

(assert (=> d!726968 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!221 lt!905486 EmptyLang!7632 tl!4068) lt!905524)))

(declare-fun b!2568681 () Bool)

(assert (=> b!2568681 (= e!1621436 (validRegex!3258 EmptyLang!7632))))

(declare-fun b!2568682 () Bool)

(assert (=> b!2568682 (= e!1621435 (matchR!3575 EmptyLang!7632 tl!4068))))

(assert (= (and d!726968 res!1080652) b!2568681))

(assert (= (and d!726968 (not res!1080651)) b!2568682))

(assert (=> d!726968 m!2905595))

(declare-fun m!2905683 () Bool)

(assert (=> d!726968 m!2905683))

(declare-fun m!2905685 () Bool)

(assert (=> d!726968 m!2905685))

(assert (=> b!2568681 m!2905673))

(assert (=> b!2568682 m!2905565))

(assert (=> b!2568527 d!726968))

(declare-fun bm!165587 () Bool)

(declare-fun call!165592 () Bool)

(declare-fun isEmpty!17053 (List!29697) Bool)

(assert (=> bm!165587 (= call!165592 (isEmpty!17053 Nil!29597))))

(declare-fun b!2568739 () Bool)

(declare-fun e!1621471 () Bool)

(assert (=> b!2568739 (= e!1621471 (nullable!2549 (derivative!327 lt!905485 tl!4068)))))

(declare-fun b!2568740 () Bool)

(declare-fun res!1080692 () Bool)

(declare-fun e!1621468 () Bool)

(assert (=> b!2568740 (=> res!1080692 e!1621468)))

(declare-fun tail!4112 (List!29697) List!29697)

(assert (=> b!2568740 (= res!1080692 (not (isEmpty!17053 (tail!4112 Nil!29597))))))

(declare-fun b!2568741 () Bool)

(declare-fun res!1080690 () Bool)

(declare-fun e!1621469 () Bool)

(assert (=> b!2568741 (=> (not res!1080690) (not e!1621469))))

(assert (=> b!2568741 (= res!1080690 (not call!165592))))

(declare-fun b!2568742 () Bool)

(declare-fun head!5837 (List!29697) C!15422)

(assert (=> b!2568742 (= e!1621471 (matchR!3575 (derivativeStep!2201 (derivative!327 lt!905485 tl!4068) (head!5837 Nil!29597)) (tail!4112 Nil!29597)))))

(declare-fun b!2568743 () Bool)

(assert (=> b!2568743 (= e!1621469 (= (head!5837 Nil!29597) (c!413214 (derivative!327 lt!905485 tl!4068))))))

(declare-fun b!2568745 () Bool)

(declare-fun e!1621465 () Bool)

(assert (=> b!2568745 (= e!1621465 e!1621468)))

(declare-fun res!1080687 () Bool)

(assert (=> b!2568745 (=> res!1080687 e!1621468)))

(assert (=> b!2568745 (= res!1080687 call!165592)))

(declare-fun b!2568746 () Bool)

(declare-fun e!1621467 () Bool)

(assert (=> b!2568746 (= e!1621467 e!1621465)))

(declare-fun res!1080685 () Bool)

(assert (=> b!2568746 (=> (not res!1080685) (not e!1621465))))

(declare-fun lt!905529 () Bool)

(assert (=> b!2568746 (= res!1080685 (not lt!905529))))

(declare-fun b!2568747 () Bool)

(declare-fun e!1621466 () Bool)

(declare-fun e!1621470 () Bool)

(assert (=> b!2568747 (= e!1621466 e!1621470)))

(declare-fun c!413264 () Bool)

(assert (=> b!2568747 (= c!413264 (is-EmptyLang!7632 (derivative!327 lt!905485 tl!4068)))))

(declare-fun b!2568748 () Bool)

(assert (=> b!2568748 (= e!1621470 (not lt!905529))))

(declare-fun b!2568749 () Bool)

(declare-fun res!1080688 () Bool)

(assert (=> b!2568749 (=> res!1080688 e!1621467)))

(assert (=> b!2568749 (= res!1080688 e!1621469)))

(declare-fun res!1080689 () Bool)

(assert (=> b!2568749 (=> (not res!1080689) (not e!1621469))))

(assert (=> b!2568749 (= res!1080689 lt!905529)))

(declare-fun d!726970 () Bool)

(assert (=> d!726970 e!1621466))

(declare-fun c!413266 () Bool)

(assert (=> d!726970 (= c!413266 (is-EmptyExpr!7632 (derivative!327 lt!905485 tl!4068)))))

(assert (=> d!726970 (= lt!905529 e!1621471)))

(declare-fun c!413265 () Bool)

(assert (=> d!726970 (= c!413265 (isEmpty!17053 Nil!29597))))

(assert (=> d!726970 (validRegex!3258 (derivative!327 lt!905485 tl!4068))))

(assert (=> d!726970 (= (matchR!3575 (derivative!327 lt!905485 tl!4068) Nil!29597) lt!905529)))

(declare-fun b!2568744 () Bool)

(declare-fun res!1080686 () Bool)

(assert (=> b!2568744 (=> (not res!1080686) (not e!1621469))))

(assert (=> b!2568744 (= res!1080686 (isEmpty!17053 (tail!4112 Nil!29597)))))

(declare-fun b!2568750 () Bool)

(assert (=> b!2568750 (= e!1621468 (not (= (head!5837 Nil!29597) (c!413214 (derivative!327 lt!905485 tl!4068)))))))

(declare-fun b!2568751 () Bool)

(declare-fun res!1080691 () Bool)

(assert (=> b!2568751 (=> res!1080691 e!1621467)))

(assert (=> b!2568751 (= res!1080691 (not (is-ElementMatch!7632 (derivative!327 lt!905485 tl!4068))))))

(assert (=> b!2568751 (= e!1621470 e!1621467)))

(declare-fun b!2568752 () Bool)

(assert (=> b!2568752 (= e!1621466 (= lt!905529 call!165592))))

(assert (= (and d!726970 c!413265) b!2568739))

(assert (= (and d!726970 (not c!413265)) b!2568742))

(assert (= (and d!726970 c!413266) b!2568752))

(assert (= (and d!726970 (not c!413266)) b!2568747))

(assert (= (and b!2568747 c!413264) b!2568748))

(assert (= (and b!2568747 (not c!413264)) b!2568751))

(assert (= (and b!2568751 (not res!1080691)) b!2568749))

(assert (= (and b!2568749 res!1080689) b!2568741))

(assert (= (and b!2568741 res!1080690) b!2568744))

(assert (= (and b!2568744 res!1080686) b!2568743))

(assert (= (and b!2568749 (not res!1080688)) b!2568746))

(assert (= (and b!2568746 res!1080685) b!2568745))

(assert (= (and b!2568745 (not res!1080687)) b!2568740))

(assert (= (and b!2568740 (not res!1080692)) b!2568750))

(assert (= (or b!2568752 b!2568741 b!2568745) bm!165587))

(declare-fun m!2905687 () Bool)

(assert (=> bm!165587 m!2905687))

(declare-fun m!2905689 () Bool)

(assert (=> b!2568744 m!2905689))

(assert (=> b!2568744 m!2905689))

(declare-fun m!2905691 () Bool)

(assert (=> b!2568744 m!2905691))

(declare-fun m!2905693 () Bool)

(assert (=> b!2568742 m!2905693))

(assert (=> b!2568742 m!2905581))

(assert (=> b!2568742 m!2905693))

(declare-fun m!2905695 () Bool)

(assert (=> b!2568742 m!2905695))

(assert (=> b!2568742 m!2905689))

(assert (=> b!2568742 m!2905695))

(assert (=> b!2568742 m!2905689))

(declare-fun m!2905697 () Bool)

(assert (=> b!2568742 m!2905697))

(assert (=> b!2568740 m!2905689))

(assert (=> b!2568740 m!2905689))

(assert (=> b!2568740 m!2905691))

(assert (=> b!2568739 m!2905581))

(declare-fun m!2905699 () Bool)

(assert (=> b!2568739 m!2905699))

(assert (=> b!2568750 m!2905693))

(assert (=> d!726970 m!2905687))

(assert (=> d!726970 m!2905581))

(declare-fun m!2905701 () Bool)

(assert (=> d!726970 m!2905701))

(assert (=> b!2568743 m!2905693))

(assert (=> b!2568527 d!726970))

(declare-fun d!726972 () Bool)

(declare-fun lt!905530 () Regex!7632)

(assert (=> d!726972 (validRegex!3258 lt!905530)))

(declare-fun e!1621472 () Regex!7632)

(assert (=> d!726972 (= lt!905530 e!1621472)))

(declare-fun c!413267 () Bool)

(assert (=> d!726972 (= c!413267 (is-Cons!29597 tl!4068))))

(assert (=> d!726972 (validRegex!3258 lt!905485)))

(assert (=> d!726972 (= (derivative!327 lt!905485 tl!4068) lt!905530)))

(declare-fun b!2568753 () Bool)

(assert (=> b!2568753 (= e!1621472 (derivative!327 (derivativeStep!2201 lt!905485 (h!35017 tl!4068)) (t!211396 tl!4068)))))

(declare-fun b!2568754 () Bool)

(assert (=> b!2568754 (= e!1621472 lt!905485)))

(assert (= (and d!726972 c!413267) b!2568753))

(assert (= (and d!726972 (not c!413267)) b!2568754))

(declare-fun m!2905703 () Bool)

(assert (=> d!726972 m!2905703))

(assert (=> d!726972 m!2905679))

(declare-fun m!2905705 () Bool)

(assert (=> b!2568753 m!2905705))

(assert (=> b!2568753 m!2905705))

(declare-fun m!2905707 () Bool)

(assert (=> b!2568753 m!2905707))

(assert (=> b!2568527 d!726972))

(declare-fun bm!165588 () Bool)

(declare-fun call!165593 () Bool)

(assert (=> bm!165588 (= call!165593 (isEmpty!17053 tl!4068))))

(declare-fun b!2568755 () Bool)

(declare-fun e!1621479 () Bool)

(assert (=> b!2568755 (= e!1621479 (nullable!2549 lt!905486))))

(declare-fun b!2568756 () Bool)

(declare-fun res!1080700 () Bool)

(declare-fun e!1621476 () Bool)

(assert (=> b!2568756 (=> res!1080700 e!1621476)))

(assert (=> b!2568756 (= res!1080700 (not (isEmpty!17053 (tail!4112 tl!4068))))))

(declare-fun b!2568757 () Bool)

(declare-fun res!1080698 () Bool)

(declare-fun e!1621477 () Bool)

(assert (=> b!2568757 (=> (not res!1080698) (not e!1621477))))

(assert (=> b!2568757 (= res!1080698 (not call!165593))))

(declare-fun b!2568758 () Bool)

(assert (=> b!2568758 (= e!1621479 (matchR!3575 (derivativeStep!2201 lt!905486 (head!5837 tl!4068)) (tail!4112 tl!4068)))))

(declare-fun b!2568759 () Bool)

(assert (=> b!2568759 (= e!1621477 (= (head!5837 tl!4068) (c!413214 lt!905486)))))

(declare-fun b!2568761 () Bool)

(declare-fun e!1621473 () Bool)

(assert (=> b!2568761 (= e!1621473 e!1621476)))

(declare-fun res!1080695 () Bool)

(assert (=> b!2568761 (=> res!1080695 e!1621476)))

(assert (=> b!2568761 (= res!1080695 call!165593)))

(declare-fun b!2568762 () Bool)

(declare-fun e!1621475 () Bool)

(assert (=> b!2568762 (= e!1621475 e!1621473)))

(declare-fun res!1080693 () Bool)

(assert (=> b!2568762 (=> (not res!1080693) (not e!1621473))))

(declare-fun lt!905531 () Bool)

(assert (=> b!2568762 (= res!1080693 (not lt!905531))))

(declare-fun b!2568763 () Bool)

(declare-fun e!1621474 () Bool)

(declare-fun e!1621478 () Bool)

(assert (=> b!2568763 (= e!1621474 e!1621478)))

(declare-fun c!413268 () Bool)

(assert (=> b!2568763 (= c!413268 (is-EmptyLang!7632 lt!905486))))

(declare-fun b!2568764 () Bool)

(assert (=> b!2568764 (= e!1621478 (not lt!905531))))

(declare-fun b!2568765 () Bool)

(declare-fun res!1080696 () Bool)

(assert (=> b!2568765 (=> res!1080696 e!1621475)))

(assert (=> b!2568765 (= res!1080696 e!1621477)))

(declare-fun res!1080697 () Bool)

(assert (=> b!2568765 (=> (not res!1080697) (not e!1621477))))

(assert (=> b!2568765 (= res!1080697 lt!905531)))

(declare-fun d!726974 () Bool)

(assert (=> d!726974 e!1621474))

(declare-fun c!413270 () Bool)

(assert (=> d!726974 (= c!413270 (is-EmptyExpr!7632 lt!905486))))

(assert (=> d!726974 (= lt!905531 e!1621479)))

(declare-fun c!413269 () Bool)

(assert (=> d!726974 (= c!413269 (isEmpty!17053 tl!4068))))

(assert (=> d!726974 (validRegex!3258 lt!905486)))

(assert (=> d!726974 (= (matchR!3575 lt!905486 tl!4068) lt!905531)))

(declare-fun b!2568760 () Bool)

(declare-fun res!1080694 () Bool)

(assert (=> b!2568760 (=> (not res!1080694) (not e!1621477))))

(assert (=> b!2568760 (= res!1080694 (isEmpty!17053 (tail!4112 tl!4068)))))

(declare-fun b!2568766 () Bool)

(assert (=> b!2568766 (= e!1621476 (not (= (head!5837 tl!4068) (c!413214 lt!905486))))))

(declare-fun b!2568767 () Bool)

(declare-fun res!1080699 () Bool)

(assert (=> b!2568767 (=> res!1080699 e!1621475)))

(assert (=> b!2568767 (= res!1080699 (not (is-ElementMatch!7632 lt!905486)))))

(assert (=> b!2568767 (= e!1621478 e!1621475)))

(declare-fun b!2568768 () Bool)

(assert (=> b!2568768 (= e!1621474 (= lt!905531 call!165593))))

(assert (= (and d!726974 c!413269) b!2568755))

(assert (= (and d!726974 (not c!413269)) b!2568758))

(assert (= (and d!726974 c!413270) b!2568768))

(assert (= (and d!726974 (not c!413270)) b!2568763))

(assert (= (and b!2568763 c!413268) b!2568764))

(assert (= (and b!2568763 (not c!413268)) b!2568767))

(assert (= (and b!2568767 (not res!1080699)) b!2568765))

(assert (= (and b!2568765 res!1080697) b!2568757))

(assert (= (and b!2568757 res!1080698) b!2568760))

(assert (= (and b!2568760 res!1080694) b!2568759))

(assert (= (and b!2568765 (not res!1080696)) b!2568762))

(assert (= (and b!2568762 res!1080693) b!2568761))

(assert (= (and b!2568761 (not res!1080695)) b!2568756))

(assert (= (and b!2568756 (not res!1080700)) b!2568766))

(assert (= (or b!2568768 b!2568757 b!2568761) bm!165588))

(declare-fun m!2905709 () Bool)

(assert (=> bm!165588 m!2905709))

(declare-fun m!2905711 () Bool)

(assert (=> b!2568760 m!2905711))

(assert (=> b!2568760 m!2905711))

(declare-fun m!2905713 () Bool)

(assert (=> b!2568760 m!2905713))

(declare-fun m!2905715 () Bool)

(assert (=> b!2568758 m!2905715))

(assert (=> b!2568758 m!2905715))

(declare-fun m!2905717 () Bool)

(assert (=> b!2568758 m!2905717))

(assert (=> b!2568758 m!2905711))

(assert (=> b!2568758 m!2905717))

(assert (=> b!2568758 m!2905711))

(declare-fun m!2905719 () Bool)

(assert (=> b!2568758 m!2905719))

(assert (=> b!2568756 m!2905711))

(assert (=> b!2568756 m!2905711))

(assert (=> b!2568756 m!2905713))

(declare-fun m!2905721 () Bool)

(assert (=> b!2568755 m!2905721))

(assert (=> b!2568766 m!2905715))

(assert (=> d!726974 m!2905709))

(assert (=> d!726974 m!2905685))

(assert (=> b!2568759 m!2905715))

(assert (=> b!2568527 d!726974))

(declare-fun d!726976 () Bool)

(assert (=> d!726976 (= (derivative!327 EmptyLang!7632 tl!4068) EmptyLang!7632)))

(declare-fun lt!905535 () Unit!43445)

(declare-fun choose!15140 (Regex!7632 List!29697) Unit!43445)

(assert (=> d!726976 (= lt!905535 (choose!15140 EmptyLang!7632 tl!4068))))

(assert (=> d!726976 (= EmptyLang!7632 EmptyLang!7632)))

(assert (=> d!726976 (= (lemmaEmptyLangDerivativeIsAFixPoint!61 EmptyLang!7632 tl!4068) lt!905535)))

(declare-fun bs!469980 () Bool)

(assert (= bs!469980 d!726976))

(assert (=> bs!469980 m!2905587))

(declare-fun m!2905723 () Bool)

(assert (=> bs!469980 m!2905723))

(assert (=> b!2568527 d!726976))

(declare-fun bm!165590 () Bool)

(declare-fun call!165595 () Bool)

(assert (=> bm!165590 (= call!165595 (isEmpty!17053 tl!4068))))

(declare-fun b!2568783 () Bool)

(declare-fun e!1621493 () Bool)

(assert (=> b!2568783 (= e!1621493 (nullable!2549 lt!905485))))

(declare-fun b!2568784 () Bool)

(declare-fun res!1080716 () Bool)

(declare-fun e!1621490 () Bool)

(assert (=> b!2568784 (=> res!1080716 e!1621490)))

(assert (=> b!2568784 (= res!1080716 (not (isEmpty!17053 (tail!4112 tl!4068))))))

(declare-fun b!2568785 () Bool)

(declare-fun res!1080714 () Bool)

(declare-fun e!1621491 () Bool)

(assert (=> b!2568785 (=> (not res!1080714) (not e!1621491))))

(assert (=> b!2568785 (= res!1080714 (not call!165595))))

(declare-fun b!2568786 () Bool)

(assert (=> b!2568786 (= e!1621493 (matchR!3575 (derivativeStep!2201 lt!905485 (head!5837 tl!4068)) (tail!4112 tl!4068)))))

(declare-fun b!2568787 () Bool)

(assert (=> b!2568787 (= e!1621491 (= (head!5837 tl!4068) (c!413214 lt!905485)))))

(declare-fun b!2568789 () Bool)

(declare-fun e!1621487 () Bool)

(assert (=> b!2568789 (= e!1621487 e!1621490)))

(declare-fun res!1080711 () Bool)

(assert (=> b!2568789 (=> res!1080711 e!1621490)))

(assert (=> b!2568789 (= res!1080711 call!165595)))

(declare-fun b!2568790 () Bool)

(declare-fun e!1621489 () Bool)

(assert (=> b!2568790 (= e!1621489 e!1621487)))

(declare-fun res!1080709 () Bool)

(assert (=> b!2568790 (=> (not res!1080709) (not e!1621487))))

(declare-fun lt!905536 () Bool)

(assert (=> b!2568790 (= res!1080709 (not lt!905536))))

(declare-fun b!2568791 () Bool)

(declare-fun e!1621488 () Bool)

(declare-fun e!1621492 () Bool)

(assert (=> b!2568791 (= e!1621488 e!1621492)))

(declare-fun c!413274 () Bool)

(assert (=> b!2568791 (= c!413274 (is-EmptyLang!7632 lt!905485))))

(declare-fun b!2568792 () Bool)

(assert (=> b!2568792 (= e!1621492 (not lt!905536))))

(declare-fun b!2568793 () Bool)

(declare-fun res!1080712 () Bool)

(assert (=> b!2568793 (=> res!1080712 e!1621489)))

(assert (=> b!2568793 (= res!1080712 e!1621491)))

(declare-fun res!1080713 () Bool)

(assert (=> b!2568793 (=> (not res!1080713) (not e!1621491))))

(assert (=> b!2568793 (= res!1080713 lt!905536)))

(declare-fun d!726978 () Bool)

(assert (=> d!726978 e!1621488))

(declare-fun c!413276 () Bool)

(assert (=> d!726978 (= c!413276 (is-EmptyExpr!7632 lt!905485))))

(assert (=> d!726978 (= lt!905536 e!1621493)))

(declare-fun c!413275 () Bool)

(assert (=> d!726978 (= c!413275 (isEmpty!17053 tl!4068))))

(assert (=> d!726978 (validRegex!3258 lt!905485)))

(assert (=> d!726978 (= (matchR!3575 lt!905485 tl!4068) lt!905536)))

(declare-fun b!2568788 () Bool)

(declare-fun res!1080710 () Bool)

(assert (=> b!2568788 (=> (not res!1080710) (not e!1621491))))

(assert (=> b!2568788 (= res!1080710 (isEmpty!17053 (tail!4112 tl!4068)))))

(declare-fun b!2568794 () Bool)

(assert (=> b!2568794 (= e!1621490 (not (= (head!5837 tl!4068) (c!413214 lt!905485))))))

(declare-fun b!2568795 () Bool)

(declare-fun res!1080715 () Bool)

(assert (=> b!2568795 (=> res!1080715 e!1621489)))

(assert (=> b!2568795 (= res!1080715 (not (is-ElementMatch!7632 lt!905485)))))

(assert (=> b!2568795 (= e!1621492 e!1621489)))

(declare-fun b!2568796 () Bool)

(assert (=> b!2568796 (= e!1621488 (= lt!905536 call!165595))))

(assert (= (and d!726978 c!413275) b!2568783))

(assert (= (and d!726978 (not c!413275)) b!2568786))

(assert (= (and d!726978 c!413276) b!2568796))

(assert (= (and d!726978 (not c!413276)) b!2568791))

(assert (= (and b!2568791 c!413274) b!2568792))

(assert (= (and b!2568791 (not c!413274)) b!2568795))

(assert (= (and b!2568795 (not res!1080715)) b!2568793))

(assert (= (and b!2568793 res!1080713) b!2568785))

(assert (= (and b!2568785 res!1080714) b!2568788))

(assert (= (and b!2568788 res!1080710) b!2568787))

(assert (= (and b!2568793 (not res!1080712)) b!2568790))

(assert (= (and b!2568790 res!1080709) b!2568789))

(assert (= (and b!2568789 (not res!1080711)) b!2568784))

(assert (= (and b!2568784 (not res!1080716)) b!2568794))

(assert (= (or b!2568796 b!2568785 b!2568789) bm!165590))

(assert (=> bm!165590 m!2905709))

(assert (=> b!2568788 m!2905711))

(assert (=> b!2568788 m!2905711))

(assert (=> b!2568788 m!2905713))

(assert (=> b!2568786 m!2905715))

(assert (=> b!2568786 m!2905715))

(declare-fun m!2905725 () Bool)

(assert (=> b!2568786 m!2905725))

(assert (=> b!2568786 m!2905711))

(assert (=> b!2568786 m!2905725))

(assert (=> b!2568786 m!2905711))

(declare-fun m!2905727 () Bool)

(assert (=> b!2568786 m!2905727))

(assert (=> b!2568784 m!2905711))

(assert (=> b!2568784 m!2905711))

(assert (=> b!2568784 m!2905713))

(declare-fun m!2905731 () Bool)

(assert (=> b!2568783 m!2905731))

(assert (=> b!2568794 m!2905715))

(assert (=> d!726978 m!2905709))

(assert (=> d!726978 m!2905679))

(assert (=> b!2568787 m!2905715))

(assert (=> b!2568527 d!726978))

(declare-fun d!726980 () Bool)

(declare-fun res!1080717 () Bool)

(declare-fun e!1621500 () Bool)

(assert (=> d!726980 (=> res!1080717 e!1621500)))

(assert (=> d!726980 (= res!1080717 (is-ElementMatch!7632 (regTwo!15776 r!27340)))))

(assert (=> d!726980 (= (validRegex!3258 (regTwo!15776 r!27340)) e!1621500)))

(declare-fun b!2568797 () Bool)

(declare-fun e!1621498 () Bool)

(declare-fun e!1621497 () Bool)

(assert (=> b!2568797 (= e!1621498 e!1621497)))

(declare-fun res!1080718 () Bool)

(assert (=> b!2568797 (= res!1080718 (not (nullable!2549 (reg!7961 (regTwo!15776 r!27340)))))))

(assert (=> b!2568797 (=> (not res!1080718) (not e!1621497))))

(declare-fun b!2568798 () Bool)

(assert (=> b!2568798 (= e!1621500 e!1621498)))

(declare-fun c!413277 () Bool)

(assert (=> b!2568798 (= c!413277 (is-Star!7632 (regTwo!15776 r!27340)))))

(declare-fun b!2568799 () Bool)

(declare-fun e!1621494 () Bool)

(declare-fun call!165598 () Bool)

(assert (=> b!2568799 (= e!1621494 call!165598)))

(declare-fun b!2568800 () Bool)

(declare-fun res!1080719 () Bool)

(assert (=> b!2568800 (=> (not res!1080719) (not e!1621494))))

(declare-fun call!165597 () Bool)

(assert (=> b!2568800 (= res!1080719 call!165597)))

(declare-fun e!1621499 () Bool)

(assert (=> b!2568800 (= e!1621499 e!1621494)))

(declare-fun c!413278 () Bool)

(declare-fun call!165596 () Bool)

(declare-fun bm!165591 () Bool)

(assert (=> bm!165591 (= call!165596 (validRegex!3258 (ite c!413277 (reg!7961 (regTwo!15776 r!27340)) (ite c!413278 (regOne!15777 (regTwo!15776 r!27340)) (regTwo!15776 (regTwo!15776 r!27340))))))))

(declare-fun b!2568801 () Bool)

(declare-fun e!1621496 () Bool)

(assert (=> b!2568801 (= e!1621496 call!165597)))

(declare-fun b!2568802 () Bool)

(declare-fun e!1621495 () Bool)

(assert (=> b!2568802 (= e!1621495 e!1621496)))

(declare-fun res!1080720 () Bool)

(assert (=> b!2568802 (=> (not res!1080720) (not e!1621496))))

(assert (=> b!2568802 (= res!1080720 call!165598)))

(declare-fun b!2568803 () Bool)

(assert (=> b!2568803 (= e!1621498 e!1621499)))

(assert (=> b!2568803 (= c!413278 (is-Union!7632 (regTwo!15776 r!27340)))))

(declare-fun b!2568804 () Bool)

(declare-fun res!1080721 () Bool)

(assert (=> b!2568804 (=> res!1080721 e!1621495)))

(assert (=> b!2568804 (= res!1080721 (not (is-Concat!12328 (regTwo!15776 r!27340))))))

(assert (=> b!2568804 (= e!1621499 e!1621495)))

(declare-fun bm!165592 () Bool)

(assert (=> bm!165592 (= call!165598 (validRegex!3258 (ite c!413278 (regTwo!15777 (regTwo!15776 r!27340)) (regOne!15776 (regTwo!15776 r!27340)))))))

(declare-fun b!2568805 () Bool)

(assert (=> b!2568805 (= e!1621497 call!165596)))

(declare-fun bm!165593 () Bool)

(assert (=> bm!165593 (= call!165597 call!165596)))

(assert (= (and d!726980 (not res!1080717)) b!2568798))

(assert (= (and b!2568798 c!413277) b!2568797))

(assert (= (and b!2568798 (not c!413277)) b!2568803))

(assert (= (and b!2568797 res!1080718) b!2568805))

(assert (= (and b!2568803 c!413278) b!2568800))

(assert (= (and b!2568803 (not c!413278)) b!2568804))

(assert (= (and b!2568800 res!1080719) b!2568799))

(assert (= (and b!2568804 (not res!1080721)) b!2568802))

(assert (= (and b!2568802 res!1080720) b!2568801))

(assert (= (or b!2568800 b!2568801) bm!165593))

(assert (= (or b!2568799 b!2568802) bm!165592))

(assert (= (or b!2568805 bm!165593) bm!165591))

(declare-fun m!2905747 () Bool)

(assert (=> b!2568797 m!2905747))

(declare-fun m!2905749 () Bool)

(assert (=> bm!165591 m!2905749))

(declare-fun m!2905751 () Bool)

(assert (=> bm!165592 m!2905751))

(assert (=> b!2568532 d!726980))

(declare-fun d!726984 () Bool)

(declare-fun res!1080722 () Bool)

(declare-fun e!1621507 () Bool)

(assert (=> d!726984 (=> res!1080722 e!1621507)))

(assert (=> d!726984 (= res!1080722 (is-ElementMatch!7632 r!27340))))

(assert (=> d!726984 (= (validRegex!3258 r!27340) e!1621507)))

(declare-fun b!2568806 () Bool)

(declare-fun e!1621505 () Bool)

(declare-fun e!1621504 () Bool)

(assert (=> b!2568806 (= e!1621505 e!1621504)))

(declare-fun res!1080723 () Bool)

(assert (=> b!2568806 (= res!1080723 (not (nullable!2549 (reg!7961 r!27340))))))

(assert (=> b!2568806 (=> (not res!1080723) (not e!1621504))))

(declare-fun b!2568807 () Bool)

(assert (=> b!2568807 (= e!1621507 e!1621505)))

(declare-fun c!413279 () Bool)

(assert (=> b!2568807 (= c!413279 (is-Star!7632 r!27340))))

(declare-fun b!2568808 () Bool)

(declare-fun e!1621501 () Bool)

(declare-fun call!165601 () Bool)

(assert (=> b!2568808 (= e!1621501 call!165601)))

(declare-fun b!2568809 () Bool)

(declare-fun res!1080724 () Bool)

(assert (=> b!2568809 (=> (not res!1080724) (not e!1621501))))

(declare-fun call!165600 () Bool)

(assert (=> b!2568809 (= res!1080724 call!165600)))

(declare-fun e!1621506 () Bool)

(assert (=> b!2568809 (= e!1621506 e!1621501)))

(declare-fun c!413280 () Bool)

(declare-fun bm!165594 () Bool)

(declare-fun call!165599 () Bool)

(assert (=> bm!165594 (= call!165599 (validRegex!3258 (ite c!413279 (reg!7961 r!27340) (ite c!413280 (regOne!15777 r!27340) (regTwo!15776 r!27340)))))))

(declare-fun b!2568810 () Bool)

(declare-fun e!1621503 () Bool)

(assert (=> b!2568810 (= e!1621503 call!165600)))

(declare-fun b!2568811 () Bool)

(declare-fun e!1621502 () Bool)

(assert (=> b!2568811 (= e!1621502 e!1621503)))

(declare-fun res!1080725 () Bool)

(assert (=> b!2568811 (=> (not res!1080725) (not e!1621503))))

(assert (=> b!2568811 (= res!1080725 call!165601)))

(declare-fun b!2568812 () Bool)

(assert (=> b!2568812 (= e!1621505 e!1621506)))

(assert (=> b!2568812 (= c!413280 (is-Union!7632 r!27340))))

(declare-fun b!2568813 () Bool)

(declare-fun res!1080726 () Bool)

(assert (=> b!2568813 (=> res!1080726 e!1621502)))

(assert (=> b!2568813 (= res!1080726 (not (is-Concat!12328 r!27340)))))

(assert (=> b!2568813 (= e!1621506 e!1621502)))

(declare-fun bm!165595 () Bool)

(assert (=> bm!165595 (= call!165601 (validRegex!3258 (ite c!413280 (regTwo!15777 r!27340) (regOne!15776 r!27340))))))

(declare-fun b!2568814 () Bool)

(assert (=> b!2568814 (= e!1621504 call!165599)))

(declare-fun bm!165596 () Bool)

(assert (=> bm!165596 (= call!165600 call!165599)))

(assert (= (and d!726984 (not res!1080722)) b!2568807))

(assert (= (and b!2568807 c!413279) b!2568806))

(assert (= (and b!2568807 (not c!413279)) b!2568812))

(assert (= (and b!2568806 res!1080723) b!2568814))

(assert (= (and b!2568812 c!413280) b!2568809))

(assert (= (and b!2568812 (not c!413280)) b!2568813))

(assert (= (and b!2568809 res!1080724) b!2568808))

(assert (= (and b!2568813 (not res!1080726)) b!2568811))

(assert (= (and b!2568811 res!1080725) b!2568810))

(assert (= (or b!2568809 b!2568810) bm!165596))

(assert (= (or b!2568808 b!2568811) bm!165595))

(assert (= (or b!2568814 bm!165596) bm!165594))

(declare-fun m!2905753 () Bool)

(assert (=> b!2568806 m!2905753))

(declare-fun m!2905755 () Bool)

(assert (=> bm!165594 m!2905755))

(declare-fun m!2905757 () Bool)

(assert (=> bm!165595 m!2905757))

(assert (=> start!248298 d!726984))

(declare-fun bm!165597 () Bool)

(declare-fun call!165602 () Bool)

(assert (=> bm!165597 (= call!165602 (isEmpty!17053 tl!4068))))

(declare-fun b!2568815 () Bool)

(declare-fun e!1621514 () Bool)

(assert (=> b!2568815 (= e!1621514 (nullable!2549 EmptyLang!7632))))

(declare-fun b!2568816 () Bool)

(declare-fun res!1080734 () Bool)

(declare-fun e!1621511 () Bool)

(assert (=> b!2568816 (=> res!1080734 e!1621511)))

(assert (=> b!2568816 (= res!1080734 (not (isEmpty!17053 (tail!4112 tl!4068))))))

(declare-fun b!2568817 () Bool)

(declare-fun res!1080732 () Bool)

(declare-fun e!1621512 () Bool)

(assert (=> b!2568817 (=> (not res!1080732) (not e!1621512))))

(assert (=> b!2568817 (= res!1080732 (not call!165602))))

(declare-fun b!2568818 () Bool)

(assert (=> b!2568818 (= e!1621514 (matchR!3575 (derivativeStep!2201 EmptyLang!7632 (head!5837 tl!4068)) (tail!4112 tl!4068)))))

(declare-fun b!2568819 () Bool)

(assert (=> b!2568819 (= e!1621512 (= (head!5837 tl!4068) (c!413214 EmptyLang!7632)))))

(declare-fun b!2568821 () Bool)

(declare-fun e!1621508 () Bool)

(assert (=> b!2568821 (= e!1621508 e!1621511)))

(declare-fun res!1080729 () Bool)

(assert (=> b!2568821 (=> res!1080729 e!1621511)))

(assert (=> b!2568821 (= res!1080729 call!165602)))

(declare-fun b!2568822 () Bool)

(declare-fun e!1621510 () Bool)

(assert (=> b!2568822 (= e!1621510 e!1621508)))

(declare-fun res!1080727 () Bool)

(assert (=> b!2568822 (=> (not res!1080727) (not e!1621508))))

(declare-fun lt!905537 () Bool)

(assert (=> b!2568822 (= res!1080727 (not lt!905537))))

(declare-fun b!2568823 () Bool)

(declare-fun e!1621509 () Bool)

(declare-fun e!1621513 () Bool)

(assert (=> b!2568823 (= e!1621509 e!1621513)))

(declare-fun c!413281 () Bool)

(assert (=> b!2568823 (= c!413281 (is-EmptyLang!7632 EmptyLang!7632))))

(declare-fun b!2568824 () Bool)

(assert (=> b!2568824 (= e!1621513 (not lt!905537))))

(declare-fun b!2568825 () Bool)

(declare-fun res!1080730 () Bool)

(assert (=> b!2568825 (=> res!1080730 e!1621510)))

(assert (=> b!2568825 (= res!1080730 e!1621512)))

(declare-fun res!1080731 () Bool)

(assert (=> b!2568825 (=> (not res!1080731) (not e!1621512))))

(assert (=> b!2568825 (= res!1080731 lt!905537)))

(declare-fun d!726986 () Bool)

(assert (=> d!726986 e!1621509))

(declare-fun c!413283 () Bool)

(assert (=> d!726986 (= c!413283 (is-EmptyExpr!7632 EmptyLang!7632))))

(assert (=> d!726986 (= lt!905537 e!1621514)))

(declare-fun c!413282 () Bool)

(assert (=> d!726986 (= c!413282 (isEmpty!17053 tl!4068))))

(assert (=> d!726986 (validRegex!3258 EmptyLang!7632)))

(assert (=> d!726986 (= (matchR!3575 EmptyLang!7632 tl!4068) lt!905537)))

(declare-fun b!2568820 () Bool)

(declare-fun res!1080728 () Bool)

(assert (=> b!2568820 (=> (not res!1080728) (not e!1621512))))

(assert (=> b!2568820 (= res!1080728 (isEmpty!17053 (tail!4112 tl!4068)))))

(declare-fun b!2568826 () Bool)

(assert (=> b!2568826 (= e!1621511 (not (= (head!5837 tl!4068) (c!413214 EmptyLang!7632))))))

(declare-fun b!2568827 () Bool)

(declare-fun res!1080733 () Bool)

(assert (=> b!2568827 (=> res!1080733 e!1621510)))

(assert (=> b!2568827 (= res!1080733 (not (is-ElementMatch!7632 EmptyLang!7632)))))

(assert (=> b!2568827 (= e!1621513 e!1621510)))

(declare-fun b!2568828 () Bool)

(assert (=> b!2568828 (= e!1621509 (= lt!905537 call!165602))))

(assert (= (and d!726986 c!413282) b!2568815))

(assert (= (and d!726986 (not c!413282)) b!2568818))

(assert (= (and d!726986 c!413283) b!2568828))

(assert (= (and d!726986 (not c!413283)) b!2568823))

(assert (= (and b!2568823 c!413281) b!2568824))

(assert (= (and b!2568823 (not c!413281)) b!2568827))

(assert (= (and b!2568827 (not res!1080733)) b!2568825))

(assert (= (and b!2568825 res!1080731) b!2568817))

(assert (= (and b!2568817 res!1080732) b!2568820))

(assert (= (and b!2568820 res!1080728) b!2568819))

(assert (= (and b!2568825 (not res!1080730)) b!2568822))

(assert (= (and b!2568822 res!1080727) b!2568821))

(assert (= (and b!2568821 (not res!1080729)) b!2568816))

(assert (= (and b!2568816 (not res!1080734)) b!2568826))

(assert (= (or b!2568828 b!2568817 b!2568821) bm!165597))

(assert (=> bm!165597 m!2905709))

(assert (=> b!2568820 m!2905711))

(assert (=> b!2568820 m!2905711))

(assert (=> b!2568820 m!2905713))

(assert (=> b!2568818 m!2905715))

(assert (=> b!2568818 m!2905715))

(declare-fun m!2905759 () Bool)

(assert (=> b!2568818 m!2905759))

(assert (=> b!2568818 m!2905711))

(assert (=> b!2568818 m!2905759))

(assert (=> b!2568818 m!2905711))

(declare-fun m!2905761 () Bool)

(assert (=> b!2568818 m!2905761))

(assert (=> b!2568816 m!2905711))

(assert (=> b!2568816 m!2905711))

(assert (=> b!2568816 m!2905713))

(declare-fun m!2905765 () Bool)

(assert (=> b!2568815 m!2905765))

(assert (=> b!2568826 m!2905715))

(assert (=> d!726986 m!2905709))

(assert (=> d!726986 m!2905673))

(assert (=> b!2568819 m!2905715))

(assert (=> b!2568537 d!726986))

(declare-fun d!726990 () Bool)

(assert (=> d!726990 (= (nullable!2549 (regOne!15776 r!27340)) (nullableFct!774 (regOne!15776 r!27340)))))

(declare-fun bs!469982 () Bool)

(assert (= bs!469982 d!726990))

(declare-fun m!2905767 () Bool)

(assert (=> bs!469982 m!2905767))

(assert (=> b!2568531 d!726990))

(declare-fun b!2568841 () Bool)

(declare-fun e!1621517 () Bool)

(declare-fun tp!817558 () Bool)

(assert (=> b!2568841 (= e!1621517 tp!817558)))

(declare-fun b!2568840 () Bool)

(declare-fun tp!817560 () Bool)

(declare-fun tp!817557 () Bool)

(assert (=> b!2568840 (= e!1621517 (and tp!817560 tp!817557))))

(declare-fun b!2568842 () Bool)

(declare-fun tp!817561 () Bool)

(declare-fun tp!817559 () Bool)

(assert (=> b!2568842 (= e!1621517 (and tp!817561 tp!817559))))

(assert (=> b!2568535 (= tp!817524 e!1621517)))

(declare-fun b!2568839 () Bool)

(assert (=> b!2568839 (= e!1621517 tp_is_empty!13119)))

(assert (= (and b!2568535 (is-ElementMatch!7632 (regOne!15777 r!27340))) b!2568839))

(assert (= (and b!2568535 (is-Concat!12328 (regOne!15777 r!27340))) b!2568840))

(assert (= (and b!2568535 (is-Star!7632 (regOne!15777 r!27340))) b!2568841))

(assert (= (and b!2568535 (is-Union!7632 (regOne!15777 r!27340))) b!2568842))

(declare-fun b!2568845 () Bool)

(declare-fun e!1621518 () Bool)

(declare-fun tp!817563 () Bool)

(assert (=> b!2568845 (= e!1621518 tp!817563)))

(declare-fun b!2568844 () Bool)

(declare-fun tp!817565 () Bool)

(declare-fun tp!817562 () Bool)

(assert (=> b!2568844 (= e!1621518 (and tp!817565 tp!817562))))

(declare-fun b!2568846 () Bool)

(declare-fun tp!817566 () Bool)

(declare-fun tp!817564 () Bool)

(assert (=> b!2568846 (= e!1621518 (and tp!817566 tp!817564))))

(assert (=> b!2568535 (= tp!817526 e!1621518)))

(declare-fun b!2568843 () Bool)

(assert (=> b!2568843 (= e!1621518 tp_is_empty!13119)))

(assert (= (and b!2568535 (is-ElementMatch!7632 (regTwo!15777 r!27340))) b!2568843))

(assert (= (and b!2568535 (is-Concat!12328 (regTwo!15777 r!27340))) b!2568844))

(assert (= (and b!2568535 (is-Star!7632 (regTwo!15777 r!27340))) b!2568845))

(assert (= (and b!2568535 (is-Union!7632 (regTwo!15777 r!27340))) b!2568846))

(declare-fun b!2568849 () Bool)

(declare-fun e!1621519 () Bool)

(declare-fun tp!817568 () Bool)

(assert (=> b!2568849 (= e!1621519 tp!817568)))

(declare-fun b!2568848 () Bool)

(declare-fun tp!817570 () Bool)

(declare-fun tp!817567 () Bool)

(assert (=> b!2568848 (= e!1621519 (and tp!817570 tp!817567))))

(declare-fun b!2568850 () Bool)

(declare-fun tp!817571 () Bool)

(declare-fun tp!817569 () Bool)

(assert (=> b!2568850 (= e!1621519 (and tp!817571 tp!817569))))

(assert (=> b!2568538 (= tp!817525 e!1621519)))

(declare-fun b!2568847 () Bool)

(assert (=> b!2568847 (= e!1621519 tp_is_empty!13119)))

(assert (= (and b!2568538 (is-ElementMatch!7632 (reg!7961 r!27340))) b!2568847))

(assert (= (and b!2568538 (is-Concat!12328 (reg!7961 r!27340))) b!2568848))

(assert (= (and b!2568538 (is-Star!7632 (reg!7961 r!27340))) b!2568849))

(assert (= (and b!2568538 (is-Union!7632 (reg!7961 r!27340))) b!2568850))

(declare-fun b!2568855 () Bool)

(declare-fun e!1621522 () Bool)

(declare-fun tp!817574 () Bool)

(assert (=> b!2568855 (= e!1621522 (and tp_is_empty!13119 tp!817574))))

(assert (=> b!2568536 (= tp!817528 e!1621522)))

(assert (= (and b!2568536 (is-Cons!29597 (t!211396 tl!4068))) b!2568855))

(declare-fun b!2568858 () Bool)

(declare-fun e!1621523 () Bool)

(declare-fun tp!817576 () Bool)

(assert (=> b!2568858 (= e!1621523 tp!817576)))

(declare-fun b!2568857 () Bool)

(declare-fun tp!817578 () Bool)

(declare-fun tp!817575 () Bool)

(assert (=> b!2568857 (= e!1621523 (and tp!817578 tp!817575))))

(declare-fun b!2568859 () Bool)

(declare-fun tp!817579 () Bool)

(declare-fun tp!817577 () Bool)

(assert (=> b!2568859 (= e!1621523 (and tp!817579 tp!817577))))

(assert (=> b!2568530 (= tp!817527 e!1621523)))

(declare-fun b!2568856 () Bool)

(assert (=> b!2568856 (= e!1621523 tp_is_empty!13119)))

(assert (= (and b!2568530 (is-ElementMatch!7632 (regOne!15776 r!27340))) b!2568856))

(assert (= (and b!2568530 (is-Concat!12328 (regOne!15776 r!27340))) b!2568857))

(assert (= (and b!2568530 (is-Star!7632 (regOne!15776 r!27340))) b!2568858))

(assert (= (and b!2568530 (is-Union!7632 (regOne!15776 r!27340))) b!2568859))

(declare-fun b!2568862 () Bool)

(declare-fun e!1621524 () Bool)

(declare-fun tp!817581 () Bool)

(assert (=> b!2568862 (= e!1621524 tp!817581)))

(declare-fun b!2568861 () Bool)

(declare-fun tp!817583 () Bool)

(declare-fun tp!817580 () Bool)

(assert (=> b!2568861 (= e!1621524 (and tp!817583 tp!817580))))

(declare-fun b!2568863 () Bool)

(declare-fun tp!817584 () Bool)

(declare-fun tp!817582 () Bool)

(assert (=> b!2568863 (= e!1621524 (and tp!817584 tp!817582))))

(assert (=> b!2568530 (= tp!817523 e!1621524)))

(declare-fun b!2568860 () Bool)

(assert (=> b!2568860 (= e!1621524 tp_is_empty!13119)))

(assert (= (and b!2568530 (is-ElementMatch!7632 (regTwo!15776 r!27340))) b!2568860))

(assert (= (and b!2568530 (is-Concat!12328 (regTwo!15776 r!27340))) b!2568861))

(assert (= (and b!2568530 (is-Star!7632 (regTwo!15776 r!27340))) b!2568862))

(assert (= (and b!2568530 (is-Union!7632 (regTwo!15776 r!27340))) b!2568863))

(push 1)

(assert (not b!2568855))

(assert (not b!2568845))

(assert (not b!2568862))

(assert (not bm!165597))

(assert (not b!2568815))

(assert (not b!2568850))

(assert (not b!2568794))

(assert (not bm!165587))

(assert (not b!2568786))

(assert (not b!2568744))

(assert (not b!2568742))

(assert (not bm!165591))

(assert (not d!726974))

(assert (not b!2568579))

(assert (not b!2568820))

(assert (not b!2568753))

(assert (not d!726952))

(assert (not b!2568766))

(assert (not b!2568859))

(assert (not bm!165576))

(assert (not bm!165592))

(assert (not b!2568743))

(assert (not b!2568784))

(assert (not b!2568788))

(assert (not b!2568841))

(assert (not d!726972))

(assert (not b!2568846))

(assert (not b!2568848))

(assert (not bm!165577))

(assert (not b!2568861))

(assert (not d!726956))

(assert (not b!2568675))

(assert (not b!2568806))

(assert (not b!2568681))

(assert (not b!2568682))

(assert (not b!2568783))

(assert (not b!2568818))

(assert (not d!726978))

(assert (not b!2568758))

(assert (not bm!165566))

(assert (not d!726950))

(assert tp_is_empty!13119)

(assert (not b!2568840))

(assert (not bm!165594))

(assert (not d!726968))

(assert (not b!2568787))

(assert (not b!2568750))

(assert (not b!2568760))

(assert (not bm!165590))

(assert (not b!2568816))

(assert (not d!726976))

(assert (not b!2568656))

(assert (not b!2568628))

(assert (not b!2568863))

(assert (not d!726970))

(assert (not b!2568819))

(assert (not d!726964))

(assert (not b!2568826))

(assert (not bm!165588))

(assert (not b!2568849))

(assert (not b!2568797))

(assert (not bm!165564))

(assert (not bm!165582))

(assert (not b!2568739))

(assert (not b!2568755))

(assert (not b!2568857))

(assert (not bm!165580))

(assert (not d!726966))

(assert (not b!2568759))

(assert (not b!2568674))

(assert (not b!2568858))

(assert (not b!2568844))

(assert (not d!726986))

(assert (not b!2568740))

(assert (not b!2568756))

(assert (not d!726990))

(assert (not b!2568842))

(assert (not d!726962))

(assert (not bm!165595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

