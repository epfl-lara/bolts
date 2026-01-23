; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45680 () Bool)

(assert start!45680)

(declare-fun b!477590 () Bool)

(declare-fun res!211357 () Bool)

(declare-fun e!291353 () Bool)

(assert (=> b!477590 (=> (not res!211357) (not e!291353))))

(declare-datatypes ((C!3240 0))(
  ( (C!3241 (val!1606 Int)) )
))
(declare-datatypes ((Regex!1159 0))(
  ( (ElementMatch!1159 (c!95530 C!3240)) (Concat!2059 (regOne!2830 Regex!1159) (regTwo!2830 Regex!1159)) (EmptyExpr!1159) (Star!1159 (reg!1488 Regex!1159)) (EmptyLang!1159) (Union!1159 (regOne!2831 Regex!1159) (regTwo!2831 Regex!1159)) )
))
(declare-fun r!20230 () Regex!1159)

(declare-fun lostCause!153 (Regex!1159) Bool)

(assert (=> b!477590 (= res!211357 (lostCause!153 r!20230))))

(declare-fun b!477592 () Bool)

(declare-fun e!291351 () Bool)

(declare-fun tp!133670 () Bool)

(assert (=> b!477592 (= e!291351 tp!133670)))

(declare-fun b!477593 () Bool)

(declare-fun tp!133669 () Bool)

(declare-fun tp!133668 () Bool)

(assert (=> b!477593 (= e!291351 (and tp!133669 tp!133668))))

(declare-fun b!477594 () Bool)

(declare-fun res!211359 () Bool)

(declare-fun e!291352 () Bool)

(assert (=> b!477594 (=> res!211359 e!291352)))

(assert (=> b!477594 (= res!211359 (not (lostCause!153 (regTwo!2831 r!20230))))))

(declare-fun b!477595 () Bool)

(assert (=> b!477595 (= e!291353 (not e!291352))))

(declare-fun res!211356 () Bool)

(assert (=> b!477595 (=> res!211356 e!291352)))

(declare-fun validRegex!387 (Regex!1159) Bool)

(assert (=> b!477595 (= res!211356 (not (validRegex!387 (regTwo!2831 r!20230))))))

(declare-fun c!12526 () C!3240)

(declare-fun derivativeStep!245 (Regex!1159 C!3240) Regex!1159)

(assert (=> b!477595 (lostCause!153 (derivativeStep!245 (regOne!2831 r!20230) c!12526))))

(declare-datatypes ((Unit!8360 0))(
  ( (Unit!8361) )
))
(declare-fun lt!210800 () Unit!8360)

(declare-fun lemmaDerivativeStepFixPointLostCause!16 (Regex!1159 C!3240) Unit!8360)

(assert (=> b!477595 (= lt!210800 (lemmaDerivativeStepFixPointLostCause!16 (regOne!2831 r!20230) c!12526))))

(declare-fun b!477596 () Bool)

(declare-fun res!211358 () Bool)

(assert (=> b!477596 (=> (not res!211358) (not e!291353))))

(get-info :version)

(assert (=> b!477596 (= res!211358 (and (not ((_ is EmptyLang!1159) r!20230)) (not ((_ is EmptyExpr!1159) r!20230)) (not ((_ is ElementMatch!1159) r!20230)) ((_ is Union!1159) r!20230)))))

(declare-fun b!477591 () Bool)

(declare-fun tp_is_empty!2315 () Bool)

(assert (=> b!477591 (= e!291351 tp_is_empty!2315)))

(declare-fun res!211355 () Bool)

(assert (=> start!45680 (=> (not res!211355) (not e!291353))))

(assert (=> start!45680 (= res!211355 (validRegex!387 r!20230))))

(assert (=> start!45680 e!291353))

(assert (=> start!45680 e!291351))

(assert (=> start!45680 tp_is_empty!2315))

(declare-fun b!477597 () Bool)

(declare-fun tp!133667 () Bool)

(declare-fun tp!133671 () Bool)

(assert (=> b!477597 (= e!291351 (and tp!133667 tp!133671))))

(declare-fun b!477598 () Bool)

(declare-fun regexDepth!6 (Regex!1159) Int)

(assert (=> b!477598 (= e!291352 (< (regexDepth!6 (regTwo!2831 r!20230)) (regexDepth!6 r!20230)))))

(assert (= (and start!45680 res!211355) b!477590))

(assert (= (and b!477590 res!211357) b!477596))

(assert (= (and b!477596 res!211358) b!477595))

(assert (= (and b!477595 (not res!211356)) b!477594))

(assert (= (and b!477594 (not res!211359)) b!477598))

(assert (= (and start!45680 ((_ is ElementMatch!1159) r!20230)) b!477591))

(assert (= (and start!45680 ((_ is Concat!2059) r!20230)) b!477597))

(assert (= (and start!45680 ((_ is Star!1159) r!20230)) b!477592))

(assert (= (and start!45680 ((_ is Union!1159) r!20230)) b!477593))

(declare-fun m!747889 () Bool)

(assert (=> start!45680 m!747889))

(declare-fun m!747891 () Bool)

(assert (=> b!477595 m!747891))

(declare-fun m!747893 () Bool)

(assert (=> b!477595 m!747893))

(assert (=> b!477595 m!747893))

(declare-fun m!747895 () Bool)

(assert (=> b!477595 m!747895))

(declare-fun m!747897 () Bool)

(assert (=> b!477595 m!747897))

(declare-fun m!747899 () Bool)

(assert (=> b!477590 m!747899))

(declare-fun m!747901 () Bool)

(assert (=> b!477598 m!747901))

(declare-fun m!747903 () Bool)

(assert (=> b!477598 m!747903))

(declare-fun m!747905 () Bool)

(assert (=> b!477594 m!747905))

(check-sat (not b!477595) (not b!477592) (not b!477590) tp_is_empty!2315 (not b!477594) (not b!477597) (not start!45680) (not b!477598) (not b!477593))
(check-sat)
(get-model)

(declare-fun d!180116 () Bool)

(declare-fun lostCauseFct!63 (Regex!1159) Bool)

(assert (=> d!180116 (= (lostCause!153 r!20230) (lostCauseFct!63 r!20230))))

(declare-fun bs!58746 () Bool)

(assert (= bs!58746 d!180116))

(declare-fun m!747907 () Bool)

(assert (=> bs!58746 m!747907))

(assert (=> b!477590 d!180116))

(declare-fun b!477635 () Bool)

(declare-fun e!291384 () Bool)

(declare-fun call!33502 () Bool)

(assert (=> b!477635 (= e!291384 call!33502)))

(declare-fun d!180120 () Bool)

(declare-fun res!211380 () Bool)

(declare-fun e!291386 () Bool)

(assert (=> d!180120 (=> res!211380 e!291386)))

(assert (=> d!180120 (= res!211380 ((_ is ElementMatch!1159) (regTwo!2831 r!20230)))))

(assert (=> d!180120 (= (validRegex!387 (regTwo!2831 r!20230)) e!291386)))

(declare-fun c!95540 () Bool)

(declare-fun c!95539 () Bool)

(declare-fun bm!33497 () Bool)

(assert (=> bm!33497 (= call!33502 (validRegex!387 (ite c!95539 (reg!1488 (regTwo!2831 r!20230)) (ite c!95540 (regOne!2831 (regTwo!2831 r!20230)) (regTwo!2830 (regTwo!2831 r!20230))))))))

(declare-fun b!477636 () Bool)

(declare-fun e!291387 () Bool)

(declare-fun call!33503 () Bool)

(assert (=> b!477636 (= e!291387 call!33503)))

(declare-fun bm!33498 () Bool)

(assert (=> bm!33498 (= call!33503 (validRegex!387 (ite c!95540 (regTwo!2831 (regTwo!2831 r!20230)) (regOne!2830 (regTwo!2831 r!20230)))))))

(declare-fun b!477637 () Bool)

(declare-fun res!211384 () Bool)

(assert (=> b!477637 (=> (not res!211384) (not e!291387))))

(declare-fun call!33504 () Bool)

(assert (=> b!477637 (= res!211384 call!33504)))

(declare-fun e!291388 () Bool)

(assert (=> b!477637 (= e!291388 e!291387)))

(declare-fun b!477638 () Bool)

(declare-fun e!291382 () Bool)

(assert (=> b!477638 (= e!291382 e!291384)))

(declare-fun res!211382 () Bool)

(declare-fun nullable!294 (Regex!1159) Bool)

(assert (=> b!477638 (= res!211382 (not (nullable!294 (reg!1488 (regTwo!2831 r!20230)))))))

(assert (=> b!477638 (=> (not res!211382) (not e!291384))))

(declare-fun b!477639 () Bool)

(assert (=> b!477639 (= e!291386 e!291382)))

(assert (=> b!477639 (= c!95539 ((_ is Star!1159) (regTwo!2831 r!20230)))))

(declare-fun b!477640 () Bool)

(declare-fun e!291383 () Bool)

(assert (=> b!477640 (= e!291383 call!33504)))

(declare-fun bm!33499 () Bool)

(assert (=> bm!33499 (= call!33504 call!33502)))

(declare-fun b!477641 () Bool)

(declare-fun res!211383 () Bool)

(declare-fun e!291385 () Bool)

(assert (=> b!477641 (=> res!211383 e!291385)))

(assert (=> b!477641 (= res!211383 (not ((_ is Concat!2059) (regTwo!2831 r!20230))))))

(assert (=> b!477641 (= e!291388 e!291385)))

(declare-fun b!477642 () Bool)

(assert (=> b!477642 (= e!291385 e!291383)))

(declare-fun res!211381 () Bool)

(assert (=> b!477642 (=> (not res!211381) (not e!291383))))

(assert (=> b!477642 (= res!211381 call!33503)))

(declare-fun b!477643 () Bool)

(assert (=> b!477643 (= e!291382 e!291388)))

(assert (=> b!477643 (= c!95540 ((_ is Union!1159) (regTwo!2831 r!20230)))))

(assert (= (and d!180120 (not res!211380)) b!477639))

(assert (= (and b!477639 c!95539) b!477638))

(assert (= (and b!477639 (not c!95539)) b!477643))

(assert (= (and b!477638 res!211382) b!477635))

(assert (= (and b!477643 c!95540) b!477637))

(assert (= (and b!477643 (not c!95540)) b!477641))

(assert (= (and b!477637 res!211384) b!477636))

(assert (= (and b!477641 (not res!211383)) b!477642))

(assert (= (and b!477642 res!211381) b!477640))

(assert (= (or b!477636 b!477642) bm!33498))

(assert (= (or b!477637 b!477640) bm!33499))

(assert (= (or b!477635 bm!33499) bm!33497))

(declare-fun m!747911 () Bool)

(assert (=> bm!33497 m!747911))

(declare-fun m!747915 () Bool)

(assert (=> bm!33498 m!747915))

(declare-fun m!747917 () Bool)

(assert (=> b!477638 m!747917))

(assert (=> b!477595 d!180120))

(declare-fun d!180124 () Bool)

(assert (=> d!180124 (= (lostCause!153 (derivativeStep!245 (regOne!2831 r!20230) c!12526)) (lostCauseFct!63 (derivativeStep!245 (regOne!2831 r!20230) c!12526)))))

(declare-fun bs!58748 () Bool)

(assert (= bs!58748 d!180124))

(assert (=> bs!58748 m!747893))

(declare-fun m!747923 () Bool)

(assert (=> bs!58748 m!747923))

(assert (=> b!477595 d!180124))

(declare-fun b!477694 () Bool)

(declare-fun e!291425 () Regex!1159)

(declare-fun call!33525 () Regex!1159)

(declare-fun call!33527 () Regex!1159)

(assert (=> b!477694 (= e!291425 (Union!1159 call!33525 call!33527))))

(declare-fun b!477696 () Bool)

(declare-fun e!291419 () Regex!1159)

(assert (=> b!477696 (= e!291419 EmptyLang!1159)))

(declare-fun b!477698 () Bool)

(declare-fun e!291421 () Regex!1159)

(assert (=> b!477698 (= e!291425 e!291421)))

(declare-fun c!95570 () Bool)

(assert (=> b!477698 (= c!95570 ((_ is Star!1159) (regOne!2831 r!20230)))))

(declare-fun bm!33520 () Bool)

(declare-fun c!95564 () Bool)

(assert (=> bm!33520 (= call!33527 (derivativeStep!245 (ite c!95564 (regTwo!2831 (regOne!2831 r!20230)) (ite c!95570 (reg!1488 (regOne!2831 r!20230)) (regOne!2830 (regOne!2831 r!20230)))) c!12526))))

(declare-fun b!477700 () Bool)

(declare-fun e!291420 () Regex!1159)

(assert (=> b!477700 (= e!291420 (ite (= c!12526 (c!95530 (regOne!2831 r!20230))) EmptyExpr!1159 EmptyLang!1159))))

(declare-fun bm!33523 () Bool)

(declare-fun call!33531 () Regex!1159)

(declare-fun call!33524 () Regex!1159)

(assert (=> bm!33523 (= call!33531 call!33524)))

(declare-fun b!477703 () Bool)

(assert (=> b!477703 (= c!95564 ((_ is Union!1159) (regOne!2831 r!20230)))))

(assert (=> b!477703 (= e!291420 e!291425)))

(declare-fun b!477705 () Bool)

(declare-fun c!95569 () Bool)

(assert (=> b!477705 (= c!95569 (nullable!294 (regOne!2830 (regOne!2831 r!20230))))))

(declare-fun e!291424 () Regex!1159)

(assert (=> b!477705 (= e!291421 e!291424)))

(declare-fun d!180128 () Bool)

(declare-fun lt!210805 () Regex!1159)

(assert (=> d!180128 (validRegex!387 lt!210805)))

(assert (=> d!180128 (= lt!210805 e!291419)))

(declare-fun c!95565 () Bool)

(assert (=> d!180128 (= c!95565 (or ((_ is EmptyExpr!1159) (regOne!2831 r!20230)) ((_ is EmptyLang!1159) (regOne!2831 r!20230))))))

(assert (=> d!180128 (validRegex!387 (regOne!2831 r!20230))))

(assert (=> d!180128 (= (derivativeStep!245 (regOne!2831 r!20230) c!12526) lt!210805)))

(declare-fun b!477699 () Bool)

(assert (=> b!477699 (= e!291424 (Union!1159 (Concat!2059 call!33531 (regTwo!2830 (regOne!2831 r!20230))) call!33525))))

(declare-fun bm!33524 () Bool)

(assert (=> bm!33524 (= call!33525 (derivativeStep!245 (ite c!95564 (regOne!2831 (regOne!2831 r!20230)) (regTwo!2830 (regOne!2831 r!20230))) c!12526))))

(declare-fun b!477707 () Bool)

(assert (=> b!477707 (= e!291424 (Union!1159 (Concat!2059 call!33531 (regTwo!2830 (regOne!2831 r!20230))) EmptyLang!1159))))

(declare-fun b!477709 () Bool)

(assert (=> b!477709 (= e!291419 e!291420)))

(declare-fun c!95568 () Bool)

(assert (=> b!477709 (= c!95568 ((_ is ElementMatch!1159) (regOne!2831 r!20230)))))

(declare-fun b!477711 () Bool)

(assert (=> b!477711 (= e!291421 (Concat!2059 call!33524 (regOne!2831 r!20230)))))

(declare-fun bm!33526 () Bool)

(assert (=> bm!33526 (= call!33524 call!33527)))

(assert (= (and d!180128 c!95565) b!477696))

(assert (= (and d!180128 (not c!95565)) b!477709))

(assert (= (and b!477709 c!95568) b!477700))

(assert (= (and b!477709 (not c!95568)) b!477703))

(assert (= (and b!477703 c!95564) b!477694))

(assert (= (and b!477703 (not c!95564)) b!477698))

(assert (= (and b!477698 c!95570) b!477711))

(assert (= (and b!477698 (not c!95570)) b!477705))

(assert (= (and b!477705 c!95569) b!477699))

(assert (= (and b!477705 (not c!95569)) b!477707))

(assert (= (or b!477699 b!477707) bm!33523))

(assert (= (or b!477711 bm!33523) bm!33526))

(assert (= (or b!477694 bm!33526) bm!33520))

(assert (= (or b!477694 b!477699) bm!33524))

(declare-fun m!747931 () Bool)

(assert (=> bm!33520 m!747931))

(declare-fun m!747933 () Bool)

(assert (=> b!477705 m!747933))

(declare-fun m!747937 () Bool)

(assert (=> d!180128 m!747937))

(declare-fun m!747939 () Bool)

(assert (=> d!180128 m!747939))

(declare-fun m!747943 () Bool)

(assert (=> bm!33524 m!747943))

(assert (=> b!477595 d!180128))

(declare-fun d!180132 () Bool)

(assert (=> d!180132 (lostCause!153 (derivativeStep!245 (regOne!2831 r!20230) c!12526))))

(declare-fun lt!210812 () Unit!8360)

(declare-fun choose!3628 (Regex!1159 C!3240) Unit!8360)

(assert (=> d!180132 (= lt!210812 (choose!3628 (regOne!2831 r!20230) c!12526))))

(assert (=> d!180132 (validRegex!387 (regOne!2831 r!20230))))

(assert (=> d!180132 (= (lemmaDerivativeStepFixPointLostCause!16 (regOne!2831 r!20230) c!12526) lt!210812)))

(declare-fun bs!58751 () Bool)

(assert (= bs!58751 d!180132))

(assert (=> bs!58751 m!747893))

(assert (=> bs!58751 m!747893))

(assert (=> bs!58751 m!747895))

(declare-fun m!747949 () Bool)

(assert (=> bs!58751 m!747949))

(assert (=> bs!58751 m!747939))

(assert (=> b!477595 d!180132))

(declare-fun b!477713 () Bool)

(declare-fun e!291428 () Bool)

(declare-fun call!33532 () Bool)

(assert (=> b!477713 (= e!291428 call!33532)))

(declare-fun d!180138 () Bool)

(declare-fun res!211390 () Bool)

(declare-fun e!291430 () Bool)

(assert (=> d!180138 (=> res!211390 e!291430)))

(assert (=> d!180138 (= res!211390 ((_ is ElementMatch!1159) r!20230))))

(assert (=> d!180138 (= (validRegex!387 r!20230) e!291430)))

(declare-fun bm!33527 () Bool)

(declare-fun c!95576 () Bool)

(declare-fun c!95575 () Bool)

(assert (=> bm!33527 (= call!33532 (validRegex!387 (ite c!95575 (reg!1488 r!20230) (ite c!95576 (regOne!2831 r!20230) (regTwo!2830 r!20230)))))))

(declare-fun b!477714 () Bool)

(declare-fun e!291431 () Bool)

(declare-fun call!33533 () Bool)

(assert (=> b!477714 (= e!291431 call!33533)))

(declare-fun bm!33528 () Bool)

(assert (=> bm!33528 (= call!33533 (validRegex!387 (ite c!95576 (regTwo!2831 r!20230) (regOne!2830 r!20230))))))

(declare-fun b!477715 () Bool)

(declare-fun res!211394 () Bool)

(assert (=> b!477715 (=> (not res!211394) (not e!291431))))

(declare-fun call!33534 () Bool)

(assert (=> b!477715 (= res!211394 call!33534)))

(declare-fun e!291432 () Bool)

(assert (=> b!477715 (= e!291432 e!291431)))

(declare-fun b!477716 () Bool)

(declare-fun e!291426 () Bool)

(assert (=> b!477716 (= e!291426 e!291428)))

(declare-fun res!211392 () Bool)

(assert (=> b!477716 (= res!211392 (not (nullable!294 (reg!1488 r!20230))))))

(assert (=> b!477716 (=> (not res!211392) (not e!291428))))

(declare-fun b!477717 () Bool)

(assert (=> b!477717 (= e!291430 e!291426)))

(assert (=> b!477717 (= c!95575 ((_ is Star!1159) r!20230))))

(declare-fun b!477718 () Bool)

(declare-fun e!291427 () Bool)

(assert (=> b!477718 (= e!291427 call!33534)))

(declare-fun bm!33529 () Bool)

(assert (=> bm!33529 (= call!33534 call!33532)))

(declare-fun b!477719 () Bool)

(declare-fun res!211393 () Bool)

(declare-fun e!291429 () Bool)

(assert (=> b!477719 (=> res!211393 e!291429)))

(assert (=> b!477719 (= res!211393 (not ((_ is Concat!2059) r!20230)))))

(assert (=> b!477719 (= e!291432 e!291429)))

(declare-fun b!477720 () Bool)

(assert (=> b!477720 (= e!291429 e!291427)))

(declare-fun res!211391 () Bool)

(assert (=> b!477720 (=> (not res!211391) (not e!291427))))

(assert (=> b!477720 (= res!211391 call!33533)))

(declare-fun b!477721 () Bool)

(assert (=> b!477721 (= e!291426 e!291432)))

(assert (=> b!477721 (= c!95576 ((_ is Union!1159) r!20230))))

(assert (= (and d!180138 (not res!211390)) b!477717))

(assert (= (and b!477717 c!95575) b!477716))

(assert (= (and b!477717 (not c!95575)) b!477721))

(assert (= (and b!477716 res!211392) b!477713))

(assert (= (and b!477721 c!95576) b!477715))

(assert (= (and b!477721 (not c!95576)) b!477719))

(assert (= (and b!477715 res!211394) b!477714))

(assert (= (and b!477719 (not res!211393)) b!477720))

(assert (= (and b!477720 res!211391) b!477718))

(assert (= (or b!477714 b!477720) bm!33528))

(assert (= (or b!477715 b!477718) bm!33529))

(assert (= (or b!477713 bm!33529) bm!33527))

(declare-fun m!747953 () Bool)

(assert (=> bm!33527 m!747953))

(declare-fun m!747955 () Bool)

(assert (=> bm!33528 m!747955))

(declare-fun m!747957 () Bool)

(assert (=> b!477716 m!747957))

(assert (=> start!45680 d!180138))

(declare-fun b!477807 () Bool)

(declare-fun e!291492 () Int)

(declare-fun e!291491 () Int)

(assert (=> b!477807 (= e!291492 e!291491)))

(declare-fun c!95618 () Bool)

(assert (=> b!477807 (= c!95618 ((_ is Star!1159) (regTwo!2831 r!20230)))))

(declare-fun b!477808 () Bool)

(declare-fun e!291487 () Bool)

(declare-fun e!291490 () Bool)

(assert (=> b!477808 (= e!291487 e!291490)))

(declare-fun c!95616 () Bool)

(assert (=> b!477808 (= c!95616 ((_ is Concat!2059) (regTwo!2831 r!20230)))))

(declare-fun b!477809 () Bool)

(declare-fun e!291485 () Bool)

(declare-fun lt!210818 () Int)

(declare-fun call!33575 () Int)

(assert (=> b!477809 (= e!291485 (> lt!210818 call!33575))))

(declare-fun b!477810 () Bool)

(declare-fun e!291483 () Bool)

(declare-fun call!33572 () Int)

(assert (=> b!477810 (= e!291483 (> lt!210818 call!33572))))

(declare-fun b!477811 () Bool)

(declare-fun e!291486 () Int)

(declare-fun call!33570 () Int)

(assert (=> b!477811 (= e!291486 (+ 1 call!33570))))

(declare-fun bm!33566 () Bool)

(declare-fun call!33574 () Int)

(declare-fun call!33576 () Int)

(declare-fun c!95617 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!33566 (= call!33570 (maxBigInt!0 (ite c!95617 call!33574 call!33576) (ite c!95617 call!33576 call!33574)))))

(declare-fun bm!33567 () Bool)

(declare-fun call!33571 () Int)

(assert (=> bm!33567 (= call!33571 (regexDepth!6 (ite c!95618 (reg!1488 (regTwo!2831 r!20230)) (ite c!95617 (regTwo!2831 (regTwo!2831 r!20230)) (regOne!2830 (regTwo!2831 r!20230))))))))

(declare-fun b!477812 () Bool)

(declare-fun e!291484 () Int)

(assert (=> b!477812 (= e!291484 (+ 1 call!33570))))

(declare-fun bm!33568 () Bool)

(assert (=> bm!33568 (= call!33574 (regexDepth!6 (ite c!95617 (regOne!2831 (regTwo!2831 r!20230)) (regTwo!2830 (regTwo!2831 r!20230)))))))

(declare-fun b!477813 () Bool)

(assert (=> b!477813 (= e!291486 1)))

(declare-fun b!477814 () Bool)

(assert (=> b!477814 (= e!291491 (+ 1 call!33571))))

(declare-fun bm!33569 () Bool)

(declare-fun c!95614 () Bool)

(assert (=> bm!33569 (= call!33572 (regexDepth!6 (ite c!95614 (regTwo!2831 (regTwo!2831 r!20230)) (regTwo!2830 (regTwo!2831 r!20230)))))))

(declare-fun b!477815 () Bool)

(declare-fun res!211410 () Bool)

(assert (=> b!477815 (=> (not res!211410) (not e!291483))))

(assert (=> b!477815 (= res!211410 (> lt!210818 call!33575))))

(assert (=> b!477815 (= e!291490 e!291483)))

(declare-fun call!33573 () Int)

(declare-fun bm!33565 () Bool)

(assert (=> bm!33565 (= call!33573 (regexDepth!6 (ite c!95614 (regOne!2831 (regTwo!2831 r!20230)) (ite c!95616 (regOne!2830 (regTwo!2831 r!20230)) (reg!1488 (regTwo!2831 r!20230))))))))

(declare-fun d!180142 () Bool)

(declare-fun e!291489 () Bool)

(assert (=> d!180142 e!291489))

(declare-fun res!211412 () Bool)

(assert (=> d!180142 (=> (not res!211412) (not e!291489))))

(assert (=> d!180142 (= res!211412 (> lt!210818 0))))

(assert (=> d!180142 (= lt!210818 e!291492)))

(declare-fun c!95612 () Bool)

(assert (=> d!180142 (= c!95612 ((_ is ElementMatch!1159) (regTwo!2831 r!20230)))))

(assert (=> d!180142 (= (regexDepth!6 (regTwo!2831 r!20230)) lt!210818)))

(declare-fun b!477816 () Bool)

(declare-fun c!95613 () Bool)

(assert (=> b!477816 (= c!95613 ((_ is Star!1159) (regTwo!2831 r!20230)))))

(assert (=> b!477816 (= e!291490 e!291485)))

(declare-fun bm!33570 () Bool)

(assert (=> bm!33570 (= call!33575 call!33573)))

(declare-fun b!477817 () Bool)

(declare-fun e!291488 () Bool)

(assert (=> b!477817 (= e!291487 e!291488)))

(declare-fun res!211411 () Bool)

(assert (=> b!477817 (= res!211411 (> lt!210818 call!33573))))

(assert (=> b!477817 (=> (not res!211411) (not e!291488))))

(declare-fun b!477818 () Bool)

(assert (=> b!477818 (= e!291492 1)))

(declare-fun b!477819 () Bool)

(assert (=> b!477819 (= e!291484 e!291486)))

(declare-fun c!95615 () Bool)

(assert (=> b!477819 (= c!95615 ((_ is Concat!2059) (regTwo!2831 r!20230)))))

(declare-fun bm!33571 () Bool)

(assert (=> bm!33571 (= call!33576 call!33571)))

(declare-fun b!477820 () Bool)

(assert (=> b!477820 (= e!291485 (= lt!210818 1))))

(declare-fun b!477821 () Bool)

(assert (=> b!477821 (= e!291488 (> lt!210818 call!33572))))

(declare-fun b!477822 () Bool)

(assert (=> b!477822 (= e!291489 e!291487)))

(assert (=> b!477822 (= c!95614 ((_ is Union!1159) (regTwo!2831 r!20230)))))

(declare-fun b!477823 () Bool)

(assert (=> b!477823 (= c!95617 ((_ is Union!1159) (regTwo!2831 r!20230)))))

(assert (=> b!477823 (= e!291491 e!291484)))

(assert (= (and d!180142 c!95612) b!477818))

(assert (= (and d!180142 (not c!95612)) b!477807))

(assert (= (and b!477807 c!95618) b!477814))

(assert (= (and b!477807 (not c!95618)) b!477823))

(assert (= (and b!477823 c!95617) b!477812))

(assert (= (and b!477823 (not c!95617)) b!477819))

(assert (= (and b!477819 c!95615) b!477811))

(assert (= (and b!477819 (not c!95615)) b!477813))

(assert (= (or b!477812 b!477811) bm!33571))

(assert (= (or b!477812 b!477811) bm!33568))

(assert (= (or b!477812 b!477811) bm!33566))

(assert (= (or b!477814 bm!33571) bm!33567))

(assert (= (and d!180142 res!211412) b!477822))

(assert (= (and b!477822 c!95614) b!477817))

(assert (= (and b!477822 (not c!95614)) b!477808))

(assert (= (and b!477817 res!211411) b!477821))

(assert (= (and b!477808 c!95616) b!477815))

(assert (= (and b!477808 (not c!95616)) b!477816))

(assert (= (and b!477815 res!211410) b!477810))

(assert (= (and b!477816 c!95613) b!477809))

(assert (= (and b!477816 (not c!95613)) b!477820))

(assert (= (or b!477815 b!477809) bm!33570))

(assert (= (or b!477821 b!477810) bm!33569))

(assert (= (or b!477817 bm!33570) bm!33565))

(declare-fun m!747969 () Bool)

(assert (=> bm!33565 m!747969))

(declare-fun m!747971 () Bool)

(assert (=> bm!33569 m!747971))

(declare-fun m!747973 () Bool)

(assert (=> bm!33567 m!747973))

(declare-fun m!747975 () Bool)

(assert (=> bm!33566 m!747975))

(declare-fun m!747979 () Bool)

(assert (=> bm!33568 m!747979))

(assert (=> b!477598 d!180142))

(declare-fun b!477841 () Bool)

(declare-fun e!291512 () Int)

(declare-fun e!291511 () Int)

(assert (=> b!477841 (= e!291512 e!291511)))

(declare-fun c!95632 () Bool)

(assert (=> b!477841 (= c!95632 ((_ is Star!1159) r!20230))))

(declare-fun b!477842 () Bool)

(declare-fun e!291507 () Bool)

(declare-fun e!291510 () Bool)

(assert (=> b!477842 (= e!291507 e!291510)))

(declare-fun c!95630 () Bool)

(assert (=> b!477842 (= c!95630 ((_ is Concat!2059) r!20230))))

(declare-fun b!477843 () Bool)

(declare-fun e!291505 () Bool)

(declare-fun lt!210820 () Int)

(declare-fun call!33589 () Int)

(assert (=> b!477843 (= e!291505 (> lt!210820 call!33589))))

(declare-fun b!477844 () Bool)

(declare-fun e!291503 () Bool)

(declare-fun call!33586 () Int)

(assert (=> b!477844 (= e!291503 (> lt!210820 call!33586))))

(declare-fun b!477845 () Bool)

(declare-fun e!291506 () Int)

(declare-fun call!33584 () Int)

(assert (=> b!477845 (= e!291506 (+ 1 call!33584))))

(declare-fun call!33590 () Int)

(declare-fun c!95631 () Bool)

(declare-fun bm!33580 () Bool)

(declare-fun call!33588 () Int)

(assert (=> bm!33580 (= call!33584 (maxBigInt!0 (ite c!95631 call!33588 call!33590) (ite c!95631 call!33590 call!33588)))))

(declare-fun bm!33581 () Bool)

(declare-fun call!33585 () Int)

(assert (=> bm!33581 (= call!33585 (regexDepth!6 (ite c!95632 (reg!1488 r!20230) (ite c!95631 (regTwo!2831 r!20230) (regOne!2830 r!20230)))))))

(declare-fun b!477846 () Bool)

(declare-fun e!291504 () Int)

(assert (=> b!477846 (= e!291504 (+ 1 call!33584))))

(declare-fun bm!33582 () Bool)

(assert (=> bm!33582 (= call!33588 (regexDepth!6 (ite c!95631 (regOne!2831 r!20230) (regTwo!2830 r!20230))))))

(declare-fun b!477847 () Bool)

(assert (=> b!477847 (= e!291506 1)))

(declare-fun b!477848 () Bool)

(assert (=> b!477848 (= e!291511 (+ 1 call!33585))))

(declare-fun bm!33583 () Bool)

(declare-fun c!95628 () Bool)

(assert (=> bm!33583 (= call!33586 (regexDepth!6 (ite c!95628 (regTwo!2831 r!20230) (regTwo!2830 r!20230))))))

(declare-fun b!477849 () Bool)

(declare-fun res!211416 () Bool)

(assert (=> b!477849 (=> (not res!211416) (not e!291503))))

(assert (=> b!477849 (= res!211416 (> lt!210820 call!33589))))

(assert (=> b!477849 (= e!291510 e!291503)))

(declare-fun call!33587 () Int)

(declare-fun bm!33579 () Bool)

(assert (=> bm!33579 (= call!33587 (regexDepth!6 (ite c!95628 (regOne!2831 r!20230) (ite c!95630 (regOne!2830 r!20230) (reg!1488 r!20230)))))))

(declare-fun d!180146 () Bool)

(declare-fun e!291509 () Bool)

(assert (=> d!180146 e!291509))

(declare-fun res!211418 () Bool)

(assert (=> d!180146 (=> (not res!211418) (not e!291509))))

(assert (=> d!180146 (= res!211418 (> lt!210820 0))))

(assert (=> d!180146 (= lt!210820 e!291512)))

(declare-fun c!95626 () Bool)

(assert (=> d!180146 (= c!95626 ((_ is ElementMatch!1159) r!20230))))

(assert (=> d!180146 (= (regexDepth!6 r!20230) lt!210820)))

(declare-fun b!477850 () Bool)

(declare-fun c!95627 () Bool)

(assert (=> b!477850 (= c!95627 ((_ is Star!1159) r!20230))))

(assert (=> b!477850 (= e!291510 e!291505)))

(declare-fun bm!33584 () Bool)

(assert (=> bm!33584 (= call!33589 call!33587)))

(declare-fun b!477851 () Bool)

(declare-fun e!291508 () Bool)

(assert (=> b!477851 (= e!291507 e!291508)))

(declare-fun res!211417 () Bool)

(assert (=> b!477851 (= res!211417 (> lt!210820 call!33587))))

(assert (=> b!477851 (=> (not res!211417) (not e!291508))))

(declare-fun b!477852 () Bool)

(assert (=> b!477852 (= e!291512 1)))

(declare-fun b!477853 () Bool)

(assert (=> b!477853 (= e!291504 e!291506)))

(declare-fun c!95629 () Bool)

(assert (=> b!477853 (= c!95629 ((_ is Concat!2059) r!20230))))

(declare-fun bm!33585 () Bool)

(assert (=> bm!33585 (= call!33590 call!33585)))

(declare-fun b!477854 () Bool)

(assert (=> b!477854 (= e!291505 (= lt!210820 1))))

(declare-fun b!477855 () Bool)

(assert (=> b!477855 (= e!291508 (> lt!210820 call!33586))))

(declare-fun b!477856 () Bool)

(assert (=> b!477856 (= e!291509 e!291507)))

(assert (=> b!477856 (= c!95628 ((_ is Union!1159) r!20230))))

(declare-fun b!477857 () Bool)

(assert (=> b!477857 (= c!95631 ((_ is Union!1159) r!20230))))

(assert (=> b!477857 (= e!291511 e!291504)))

(assert (= (and d!180146 c!95626) b!477852))

(assert (= (and d!180146 (not c!95626)) b!477841))

(assert (= (and b!477841 c!95632) b!477848))

(assert (= (and b!477841 (not c!95632)) b!477857))

(assert (= (and b!477857 c!95631) b!477846))

(assert (= (and b!477857 (not c!95631)) b!477853))

(assert (= (and b!477853 c!95629) b!477845))

(assert (= (and b!477853 (not c!95629)) b!477847))

(assert (= (or b!477846 b!477845) bm!33585))

(assert (= (or b!477846 b!477845) bm!33582))

(assert (= (or b!477846 b!477845) bm!33580))

(assert (= (or b!477848 bm!33585) bm!33581))

(assert (= (and d!180146 res!211418) b!477856))

(assert (= (and b!477856 c!95628) b!477851))

(assert (= (and b!477856 (not c!95628)) b!477842))

(assert (= (and b!477851 res!211417) b!477855))

(assert (= (and b!477842 c!95630) b!477849))

(assert (= (and b!477842 (not c!95630)) b!477850))

(assert (= (and b!477849 res!211416) b!477844))

(assert (= (and b!477850 c!95627) b!477843))

(assert (= (and b!477850 (not c!95627)) b!477854))

(assert (= (or b!477849 b!477843) bm!33584))

(assert (= (or b!477855 b!477844) bm!33583))

(assert (= (or b!477851 bm!33584) bm!33579))

(declare-fun m!747995 () Bool)

(assert (=> bm!33579 m!747995))

(declare-fun m!747997 () Bool)

(assert (=> bm!33583 m!747997))

(declare-fun m!747999 () Bool)

(assert (=> bm!33581 m!747999))

(declare-fun m!748001 () Bool)

(assert (=> bm!33580 m!748001))

(declare-fun m!748003 () Bool)

(assert (=> bm!33582 m!748003))

(assert (=> b!477598 d!180146))

(declare-fun d!180150 () Bool)

(assert (=> d!180150 (= (lostCause!153 (regTwo!2831 r!20230)) (lostCauseFct!63 (regTwo!2831 r!20230)))))

(declare-fun bs!58753 () Bool)

(assert (= bs!58753 d!180150))

(declare-fun m!748005 () Bool)

(assert (=> bs!58753 m!748005))

(assert (=> b!477594 d!180150))

(declare-fun b!477910 () Bool)

(declare-fun e!291529 () Bool)

(declare-fun tp!133718 () Bool)

(declare-fun tp!133719 () Bool)

(assert (=> b!477910 (= e!291529 (and tp!133718 tp!133719))))

(assert (=> b!477592 (= tp!133670 e!291529)))

(declare-fun b!477909 () Bool)

(declare-fun tp!133721 () Bool)

(assert (=> b!477909 (= e!291529 tp!133721)))

(declare-fun b!477908 () Bool)

(declare-fun tp!133720 () Bool)

(declare-fun tp!133717 () Bool)

(assert (=> b!477908 (= e!291529 (and tp!133720 tp!133717))))

(declare-fun b!477907 () Bool)

(assert (=> b!477907 (= e!291529 tp_is_empty!2315)))

(assert (= (and b!477592 ((_ is ElementMatch!1159) (reg!1488 r!20230))) b!477907))

(assert (= (and b!477592 ((_ is Concat!2059) (reg!1488 r!20230))) b!477908))

(assert (= (and b!477592 ((_ is Star!1159) (reg!1488 r!20230))) b!477909))

(assert (= (and b!477592 ((_ is Union!1159) (reg!1488 r!20230))) b!477910))

(declare-fun b!477914 () Bool)

(declare-fun e!291530 () Bool)

(declare-fun tp!133723 () Bool)

(declare-fun tp!133724 () Bool)

(assert (=> b!477914 (= e!291530 (and tp!133723 tp!133724))))

(assert (=> b!477597 (= tp!133667 e!291530)))

(declare-fun b!477913 () Bool)

(declare-fun tp!133726 () Bool)

(assert (=> b!477913 (= e!291530 tp!133726)))

(declare-fun b!477912 () Bool)

(declare-fun tp!133725 () Bool)

(declare-fun tp!133722 () Bool)

(assert (=> b!477912 (= e!291530 (and tp!133725 tp!133722))))

(declare-fun b!477911 () Bool)

(assert (=> b!477911 (= e!291530 tp_is_empty!2315)))

(assert (= (and b!477597 ((_ is ElementMatch!1159) (regOne!2830 r!20230))) b!477911))

(assert (= (and b!477597 ((_ is Concat!2059) (regOne!2830 r!20230))) b!477912))

(assert (= (and b!477597 ((_ is Star!1159) (regOne!2830 r!20230))) b!477913))

(assert (= (and b!477597 ((_ is Union!1159) (regOne!2830 r!20230))) b!477914))

(declare-fun b!477918 () Bool)

(declare-fun e!291531 () Bool)

(declare-fun tp!133728 () Bool)

(declare-fun tp!133729 () Bool)

(assert (=> b!477918 (= e!291531 (and tp!133728 tp!133729))))

(assert (=> b!477597 (= tp!133671 e!291531)))

(declare-fun b!477917 () Bool)

(declare-fun tp!133731 () Bool)

(assert (=> b!477917 (= e!291531 tp!133731)))

(declare-fun b!477916 () Bool)

(declare-fun tp!133730 () Bool)

(declare-fun tp!133727 () Bool)

(assert (=> b!477916 (= e!291531 (and tp!133730 tp!133727))))

(declare-fun b!477915 () Bool)

(assert (=> b!477915 (= e!291531 tp_is_empty!2315)))

(assert (= (and b!477597 ((_ is ElementMatch!1159) (regTwo!2830 r!20230))) b!477915))

(assert (= (and b!477597 ((_ is Concat!2059) (regTwo!2830 r!20230))) b!477916))

(assert (= (and b!477597 ((_ is Star!1159) (regTwo!2830 r!20230))) b!477917))

(assert (= (and b!477597 ((_ is Union!1159) (regTwo!2830 r!20230))) b!477918))

(declare-fun b!477922 () Bool)

(declare-fun e!291532 () Bool)

(declare-fun tp!133733 () Bool)

(declare-fun tp!133734 () Bool)

(assert (=> b!477922 (= e!291532 (and tp!133733 tp!133734))))

(assert (=> b!477593 (= tp!133669 e!291532)))

(declare-fun b!477921 () Bool)

(declare-fun tp!133736 () Bool)

(assert (=> b!477921 (= e!291532 tp!133736)))

(declare-fun b!477920 () Bool)

(declare-fun tp!133735 () Bool)

(declare-fun tp!133732 () Bool)

(assert (=> b!477920 (= e!291532 (and tp!133735 tp!133732))))

(declare-fun b!477919 () Bool)

(assert (=> b!477919 (= e!291532 tp_is_empty!2315)))

(assert (= (and b!477593 ((_ is ElementMatch!1159) (regOne!2831 r!20230))) b!477919))

(assert (= (and b!477593 ((_ is Concat!2059) (regOne!2831 r!20230))) b!477920))

(assert (= (and b!477593 ((_ is Star!1159) (regOne!2831 r!20230))) b!477921))

(assert (= (and b!477593 ((_ is Union!1159) (regOne!2831 r!20230))) b!477922))

(declare-fun b!477926 () Bool)

(declare-fun e!291533 () Bool)

(declare-fun tp!133738 () Bool)

(declare-fun tp!133739 () Bool)

(assert (=> b!477926 (= e!291533 (and tp!133738 tp!133739))))

(assert (=> b!477593 (= tp!133668 e!291533)))

(declare-fun b!477925 () Bool)

(declare-fun tp!133741 () Bool)

(assert (=> b!477925 (= e!291533 tp!133741)))

(declare-fun b!477924 () Bool)

(declare-fun tp!133740 () Bool)

(declare-fun tp!133737 () Bool)

(assert (=> b!477924 (= e!291533 (and tp!133740 tp!133737))))

(declare-fun b!477923 () Bool)

(assert (=> b!477923 (= e!291533 tp_is_empty!2315)))

(assert (= (and b!477593 ((_ is ElementMatch!1159) (regTwo!2831 r!20230))) b!477923))

(assert (= (and b!477593 ((_ is Concat!2059) (regTwo!2831 r!20230))) b!477924))

(assert (= (and b!477593 ((_ is Star!1159) (regTwo!2831 r!20230))) b!477925))

(assert (= (and b!477593 ((_ is Union!1159) (regTwo!2831 r!20230))) b!477926))

(check-sat (not b!477925) (not b!477638) (not b!477716) (not d!180124) (not bm!33498) (not bm!33565) (not bm!33569) (not b!477924) (not bm!33566) (not bm!33568) (not b!477917) (not bm!33579) (not b!477921) (not b!477922) (not bm!33524) (not d!180150) (not bm!33497) (not b!477914) tp_is_empty!2315 (not b!477916) (not b!477908) (not bm!33527) (not bm!33581) (not bm!33520) (not b!477918) (not bm!33582) (not d!180132) (not bm!33583) (not bm!33580) (not b!477920) (not bm!33567) (not b!477912) (not bm!33528) (not b!477913) (not b!477705) (not d!180128) (not b!477909) (not b!477910) (not b!477926) (not d!180116))
(check-sat)
