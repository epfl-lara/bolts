; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734718 () Bool)

(assert start!734718)

(declare-fun b!7629708 () Bool)

(assert (=> b!7629708 true))

(assert (=> b!7629708 true))

(declare-fun bs!1943923 () Bool)

(declare-fun b!7629705 () Bool)

(assert (= bs!1943923 (and b!7629705 b!7629708)))

(declare-fun lambda!469013 () Int)

(declare-fun lambda!469012 () Int)

(assert (=> bs!1943923 (not (= lambda!469013 lambda!469012))))

(assert (=> b!7629705 true))

(assert (=> b!7629705 true))

(declare-fun b!7629700 () Bool)

(declare-fun e!4536048 () Bool)

(declare-fun tp!2227505 () Bool)

(declare-fun tp!2227506 () Bool)

(assert (=> b!7629700 (= e!4536048 (and tp!2227505 tp!2227506))))

(declare-fun b!7629701 () Bool)

(declare-fun e!4536050 () Bool)

(declare-fun tp_is_empty!51103 () Bool)

(declare-fun tp!2227509 () Bool)

(assert (=> b!7629701 (= e!4536050 (and tp_is_empty!51103 tp!2227509))))

(declare-fun b!7629702 () Bool)

(declare-fun e!4536049 () Bool)

(declare-datatypes ((C!41074 0))(
  ( (C!41075 (val!30977 Int)) )
))
(declare-datatypes ((Regex!20374 0))(
  ( (ElementMatch!20374 (c!1405703 C!41074)) (Concat!29219 (regOne!41260 Regex!20374) (regTwo!41260 Regex!20374)) (EmptyExpr!20374) (Star!20374 (reg!20703 Regex!20374)) (EmptyLang!20374) (Union!20374 (regOne!41261 Regex!20374) (regTwo!41261 Regex!20374)) )
))
(declare-fun r!14126 () Regex!20374)

(declare-fun validRegex!10792 (Regex!20374) Bool)

(assert (=> b!7629702 (= e!4536049 (validRegex!10792 (regTwo!41260 r!14126)))))

(declare-fun b!7629703 () Bool)

(declare-fun e!4536045 () Bool)

(declare-fun e!4536051 () Bool)

(assert (=> b!7629703 (= e!4536045 e!4536051)))

(declare-fun res!3055422 () Bool)

(assert (=> b!7629703 (=> res!3055422 e!4536051)))

(declare-fun Exists!4528 (Int) Bool)

(assert (=> b!7629703 (= res!3055422 (not (Exists!4528 lambda!469012)))))

(declare-fun lt!2658557 () Bool)

(assert (=> b!7629703 lt!2658557))

(declare-datatypes ((Unit!167676 0))(
  ( (Unit!167677) )
))
(declare-fun lt!2658558 () Unit!167676)

(declare-datatypes ((List!73225 0))(
  ( (Nil!73101) (Cons!73101 (h!79549 C!41074) (t!387960 List!73225)) )
))
(declare-fun s!9605 () List!73225)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!281 (Regex!20374 Regex!20374 List!73225) Unit!167676)

(assert (=> b!7629703 (= lt!2658558 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!281 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605))))

(declare-fun b!7629704 () Bool)

(assert (=> b!7629704 (= e!4536048 tp_is_empty!51103)))

(assert (=> b!7629705 (= e!4536051 e!4536049)))

(declare-fun res!3055421 () Bool)

(assert (=> b!7629705 (=> res!3055421 e!4536049)))

(declare-datatypes ((tuple2!69306 0))(
  ( (tuple2!69307 (_1!37956 List!73225) (_2!37956 List!73225)) )
))
(declare-fun cut!14 () tuple2!69306)

(declare-fun ++!17658 (List!73225 List!73225) List!73225)

(assert (=> b!7629705 (= res!3055421 (not (= (++!17658 (_1!37956 cut!14) (_2!37956 cut!14)) s!9605)))))

(declare-fun lt!2658562 () Unit!167676)

(declare-fun lt!2658560 () tuple2!69306)

(declare-fun ExistsThe!49 (tuple2!69306 Int) Unit!167676)

(assert (=> b!7629705 (= lt!2658562 (ExistsThe!49 lt!2658560 lambda!469013))))

(declare-fun matchR!9877 (Regex!20374 List!73225) Bool)

(declare-fun matchRSpec!4537 (Regex!20374 List!73225) Bool)

(assert (=> b!7629705 (= (matchR!9877 (regTwo!41260 r!14126) (_2!37956 lt!2658560)) (matchRSpec!4537 (regTwo!41260 r!14126) (_2!37956 lt!2658560)))))

(declare-fun lt!2658563 () Unit!167676)

(declare-fun mainMatchTheorem!4527 (Regex!20374 List!73225) Unit!167676)

(assert (=> b!7629705 (= lt!2658563 (mainMatchTheorem!4527 (regTwo!41260 r!14126) (_2!37956 lt!2658560)))))

(assert (=> b!7629705 (= (matchR!9877 (regOne!41260 r!14126) (_1!37956 lt!2658560)) (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 lt!2658560)))))

(declare-fun lt!2658559 () Unit!167676)

(assert (=> b!7629705 (= lt!2658559 (mainMatchTheorem!4527 (regOne!41260 r!14126) (_1!37956 lt!2658560)))))

(declare-fun pickWitness!469 (Int) tuple2!69306)

(assert (=> b!7629705 (= lt!2658560 (pickWitness!469 lambda!469012))))

(declare-fun b!7629706 () Bool)

(declare-fun tp!2227504 () Bool)

(declare-fun tp!2227503 () Bool)

(assert (=> b!7629706 (= e!4536048 (and tp!2227504 tp!2227503))))

(declare-fun b!7629707 () Bool)

(declare-fun res!3055420 () Bool)

(assert (=> b!7629707 (=> res!3055420 e!4536049)))

(assert (=> b!7629707 (= res!3055420 (not (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 cut!14))))))

(declare-fun e!4536047 () Bool)

(assert (=> b!7629708 (= e!4536047 (not e!4536045))))

(declare-fun res!3055417 () Bool)

(assert (=> b!7629708 (=> res!3055417 e!4536045)))

(assert (=> b!7629708 (= res!3055417 (not (matchR!9877 r!14126 s!9605)))))

(assert (=> b!7629708 (= lt!2658557 (Exists!4528 lambda!469012))))

(declare-datatypes ((Option!17447 0))(
  ( (None!17446) (Some!17446 (v!54581 tuple2!69306)) )
))
(declare-fun isDefined!14063 (Option!17447) Bool)

(declare-fun findConcatSeparation!3477 (Regex!20374 Regex!20374 List!73225 List!73225 List!73225) Option!17447)

(assert (=> b!7629708 (= lt!2658557 (isDefined!14063 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605)))))

(declare-fun lt!2658561 () Unit!167676)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3235 (Regex!20374 Regex!20374 List!73225) Unit!167676)

(assert (=> b!7629708 (= lt!2658561 (lemmaFindConcatSeparationEquivalentToExists!3235 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605))))

(declare-fun b!7629709 () Bool)

(declare-fun tp!2227508 () Bool)

(assert (=> b!7629709 (= e!4536048 tp!2227508)))

(declare-fun b!7629710 () Bool)

(declare-fun e!4536046 () Bool)

(declare-fun tp!2227502 () Bool)

(assert (=> b!7629710 (= e!4536046 (and tp_is_empty!51103 tp!2227502))))

(declare-fun res!3055418 () Bool)

(assert (=> start!734718 (=> (not res!3055418) (not e!4536047))))

(assert (=> start!734718 (= res!3055418 (validRegex!10792 r!14126))))

(assert (=> start!734718 e!4536047))

(assert (=> start!734718 e!4536048))

(assert (=> start!734718 e!4536046))

(declare-fun e!4536044 () Bool)

(assert (=> start!734718 (and e!4536050 e!4536044)))

(declare-fun b!7629711 () Bool)

(declare-fun tp!2227507 () Bool)

(assert (=> b!7629711 (= e!4536044 (and tp_is_empty!51103 tp!2227507))))

(declare-fun b!7629712 () Bool)

(declare-fun res!3055419 () Bool)

(assert (=> b!7629712 (=> (not res!3055419) (not e!4536047))))

(assert (=> b!7629712 (= res!3055419 (and (not (is-EmptyExpr!20374 r!14126)) (not (is-EmptyLang!20374 r!14126)) (not (is-ElementMatch!20374 r!14126)) (not (is-Union!20374 r!14126)) (not (is-Star!20374 r!14126))))))

(assert (= (and start!734718 res!3055418) b!7629712))

(assert (= (and b!7629712 res!3055419) b!7629708))

(assert (= (and b!7629708 (not res!3055417)) b!7629703))

(assert (= (and b!7629703 (not res!3055422)) b!7629705))

(assert (= (and b!7629705 (not res!3055421)) b!7629707))

(assert (= (and b!7629707 (not res!3055420)) b!7629702))

(assert (= (and start!734718 (is-ElementMatch!20374 r!14126)) b!7629704))

(assert (= (and start!734718 (is-Concat!29219 r!14126)) b!7629700))

(assert (= (and start!734718 (is-Star!20374 r!14126)) b!7629709))

(assert (= (and start!734718 (is-Union!20374 r!14126)) b!7629706))

(assert (= (and start!734718 (is-Cons!73101 s!9605)) b!7629710))

(assert (= (and start!734718 (is-Cons!73101 (_1!37956 cut!14))) b!7629701))

(assert (= (and start!734718 (is-Cons!73101 (_2!37956 cut!14))) b!7629711))

(declare-fun m!8157326 () Bool)

(assert (=> b!7629707 m!8157326))

(declare-fun m!8157328 () Bool)

(assert (=> b!7629703 m!8157328))

(declare-fun m!8157330 () Bool)

(assert (=> b!7629703 m!8157330))

(declare-fun m!8157332 () Bool)

(assert (=> b!7629702 m!8157332))

(declare-fun m!8157334 () Bool)

(assert (=> b!7629705 m!8157334))

(declare-fun m!8157336 () Bool)

(assert (=> b!7629705 m!8157336))

(declare-fun m!8157338 () Bool)

(assert (=> b!7629705 m!8157338))

(declare-fun m!8157340 () Bool)

(assert (=> b!7629705 m!8157340))

(declare-fun m!8157342 () Bool)

(assert (=> b!7629705 m!8157342))

(declare-fun m!8157344 () Bool)

(assert (=> b!7629705 m!8157344))

(declare-fun m!8157346 () Bool)

(assert (=> b!7629705 m!8157346))

(declare-fun m!8157348 () Bool)

(assert (=> b!7629705 m!8157348))

(declare-fun m!8157350 () Bool)

(assert (=> b!7629705 m!8157350))

(declare-fun m!8157352 () Bool)

(assert (=> b!7629708 m!8157352))

(declare-fun m!8157354 () Bool)

(assert (=> b!7629708 m!8157354))

(declare-fun m!8157356 () Bool)

(assert (=> b!7629708 m!8157356))

(assert (=> b!7629708 m!8157328))

(assert (=> b!7629708 m!8157354))

(declare-fun m!8157358 () Bool)

(assert (=> b!7629708 m!8157358))

(declare-fun m!8157360 () Bool)

(assert (=> start!734718 m!8157360))

(push 1)

(assert (not b!7629705))

(assert (not b!7629703))

(assert (not b!7629702))

(assert (not b!7629711))

(assert (not b!7629706))

(assert (not b!7629700))

(assert (not start!734718))

(assert (not b!7629708))

(assert tp_is_empty!51103)

(assert (not b!7629709))

(assert (not b!7629710))

(assert (not b!7629707))

(assert (not b!7629701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7629794 () Bool)

(declare-fun e!4536104 () Bool)

(declare-fun call!700451 () Bool)

(assert (=> b!7629794 (= e!4536104 call!700451)))

(declare-fun bm!700446 () Bool)

(declare-fun call!700453 () Bool)

(assert (=> bm!700446 (= call!700451 call!700453)))

(declare-fun b!7629795 () Bool)

(declare-fun e!4536102 () Bool)

(declare-fun e!4536101 () Bool)

(assert (=> b!7629795 (= e!4536102 e!4536101)))

(declare-fun c!1405710 () Bool)

(assert (=> b!7629795 (= c!1405710 (is-Union!20374 (regTwo!41260 r!14126)))))

(declare-fun d!2324039 () Bool)

(declare-fun res!3055467 () Bool)

(declare-fun e!4536100 () Bool)

(assert (=> d!2324039 (=> res!3055467 e!4536100)))

(assert (=> d!2324039 (= res!3055467 (is-ElementMatch!20374 (regTwo!41260 r!14126)))))

(assert (=> d!2324039 (= (validRegex!10792 (regTwo!41260 r!14126)) e!4536100)))

(declare-fun bm!700447 () Bool)

(declare-fun c!1405709 () Bool)

(assert (=> bm!700447 (= call!700453 (validRegex!10792 (ite c!1405709 (reg!20703 (regTwo!41260 r!14126)) (ite c!1405710 (regTwo!41261 (regTwo!41260 r!14126)) (regTwo!41260 (regTwo!41260 r!14126))))))))

(declare-fun b!7629796 () Bool)

(assert (=> b!7629796 (= e!4536100 e!4536102)))

(assert (=> b!7629796 (= c!1405709 (is-Star!20374 (regTwo!41260 r!14126)))))

(declare-fun bm!700448 () Bool)

(declare-fun call!700452 () Bool)

(assert (=> bm!700448 (= call!700452 (validRegex!10792 (ite c!1405710 (regOne!41261 (regTwo!41260 r!14126)) (regOne!41260 (regTwo!41260 r!14126)))))))

(declare-fun b!7629797 () Bool)

(declare-fun e!4536098 () Bool)

(assert (=> b!7629797 (= e!4536098 call!700453)))

(declare-fun b!7629798 () Bool)

(declare-fun res!3055468 () Bool)

(declare-fun e!4536099 () Bool)

(assert (=> b!7629798 (=> res!3055468 e!4536099)))

(assert (=> b!7629798 (= res!3055468 (not (is-Concat!29219 (regTwo!41260 r!14126))))))

(assert (=> b!7629798 (= e!4536101 e!4536099)))

(declare-fun b!7629799 () Bool)

(assert (=> b!7629799 (= e!4536102 e!4536098)))

(declare-fun res!3055470 () Bool)

(declare-fun nullable!8907 (Regex!20374) Bool)

(assert (=> b!7629799 (= res!3055470 (not (nullable!8907 (reg!20703 (regTwo!41260 r!14126)))))))

(assert (=> b!7629799 (=> (not res!3055470) (not e!4536098))))

(declare-fun b!7629800 () Bool)

(declare-fun res!3055471 () Bool)

(assert (=> b!7629800 (=> (not res!3055471) (not e!4536104))))

(assert (=> b!7629800 (= res!3055471 call!700452)))

(assert (=> b!7629800 (= e!4536101 e!4536104)))

(declare-fun b!7629801 () Bool)

(declare-fun e!4536103 () Bool)

(assert (=> b!7629801 (= e!4536103 call!700451)))

(declare-fun b!7629802 () Bool)

(assert (=> b!7629802 (= e!4536099 e!4536103)))

(declare-fun res!3055469 () Bool)

(assert (=> b!7629802 (=> (not res!3055469) (not e!4536103))))

(assert (=> b!7629802 (= res!3055469 call!700452)))

(assert (= (and d!2324039 (not res!3055467)) b!7629796))

(assert (= (and b!7629796 c!1405709) b!7629799))

(assert (= (and b!7629796 (not c!1405709)) b!7629795))

(assert (= (and b!7629799 res!3055470) b!7629797))

(assert (= (and b!7629795 c!1405710) b!7629800))

(assert (= (and b!7629795 (not c!1405710)) b!7629798))

(assert (= (and b!7629800 res!3055471) b!7629794))

(assert (= (and b!7629798 (not res!3055468)) b!7629802))

(assert (= (and b!7629802 res!3055469) b!7629801))

(assert (= (or b!7629800 b!7629802) bm!700448))

(assert (= (or b!7629794 b!7629801) bm!700446))

(assert (= (or b!7629797 bm!700446) bm!700447))

(declare-fun m!8157398 () Bool)

(assert (=> bm!700447 m!8157398))

(declare-fun m!8157400 () Bool)

(assert (=> bm!700448 m!8157400))

(declare-fun m!8157402 () Bool)

(assert (=> b!7629799 m!8157402))

(assert (=> b!7629702 d!2324039))

(declare-fun bs!1943926 () Bool)

(declare-fun b!7629843 () Bool)

(assert (= bs!1943926 (and b!7629843 b!7629708)))

(declare-fun lambda!469028 () Int)

(assert (=> bs!1943926 (not (= lambda!469028 lambda!469012))))

(declare-fun bs!1943927 () Bool)

(assert (= bs!1943927 (and b!7629843 b!7629705)))

(assert (=> bs!1943927 (not (= lambda!469028 lambda!469013))))

(assert (=> b!7629843 true))

(assert (=> b!7629843 true))

(declare-fun bs!1943928 () Bool)

(declare-fun b!7629840 () Bool)

(assert (= bs!1943928 (and b!7629840 b!7629708)))

(declare-fun lambda!469029 () Int)

(assert (=> bs!1943928 (not (= lambda!469029 lambda!469012))))

(declare-fun bs!1943929 () Bool)

(assert (= bs!1943929 (and b!7629840 b!7629705)))

(assert (=> bs!1943929 (= (and (= (_1!37956 cut!14) s!9605) (= (regOne!41260 (regOne!41260 r!14126)) (regOne!41260 r!14126)) (= (regTwo!41260 (regOne!41260 r!14126)) (regTwo!41260 r!14126))) (= lambda!469029 lambda!469013))))

(declare-fun bs!1943930 () Bool)

(assert (= bs!1943930 (and b!7629840 b!7629843)))

(assert (=> bs!1943930 (not (= lambda!469029 lambda!469028))))

(assert (=> b!7629840 true))

(assert (=> b!7629840 true))

(declare-fun b!7629835 () Bool)

(declare-fun e!4536128 () Bool)

(declare-fun call!700458 () Bool)

(assert (=> b!7629835 (= e!4536128 call!700458)))

(declare-fun b!7629836 () Bool)

(declare-fun e!4536127 () Bool)

(assert (=> b!7629836 (= e!4536127 (= (_1!37956 cut!14) (Cons!73101 (c!1405703 (regOne!41260 r!14126)) Nil!73101)))))

(declare-fun b!7629837 () Bool)

(declare-fun e!4536125 () Bool)

(declare-fun e!4536126 () Bool)

(assert (=> b!7629837 (= e!4536125 e!4536126)))

(declare-fun res!3055490 () Bool)

(assert (=> b!7629837 (= res!3055490 (matchRSpec!4537 (regOne!41261 (regOne!41260 r!14126)) (_1!37956 cut!14)))))

(assert (=> b!7629837 (=> res!3055490 e!4536126)))

(declare-fun b!7629838 () Bool)

(declare-fun res!3055488 () Bool)

(declare-fun e!4536124 () Bool)

(assert (=> b!7629838 (=> res!3055488 e!4536124)))

(assert (=> b!7629838 (= res!3055488 call!700458)))

(declare-fun e!4536123 () Bool)

(assert (=> b!7629838 (= e!4536123 e!4536124)))

(declare-fun b!7629839 () Bool)

(declare-fun c!1405720 () Bool)

(assert (=> b!7629839 (= c!1405720 (is-Union!20374 (regOne!41260 r!14126)))))

(assert (=> b!7629839 (= e!4536127 e!4536125)))

(declare-fun call!700459 () Bool)

(assert (=> b!7629840 (= e!4536123 call!700459)))

(declare-fun b!7629841 () Bool)

(assert (=> b!7629841 (= e!4536126 (matchRSpec!4537 (regTwo!41261 (regOne!41260 r!14126)) (_1!37956 cut!14)))))

(declare-fun bm!700454 () Bool)

(declare-fun c!1405719 () Bool)

(assert (=> bm!700454 (= call!700459 (Exists!4528 (ite c!1405719 lambda!469028 lambda!469029)))))

(declare-fun b!7629842 () Bool)

(declare-fun e!4536129 () Bool)

(assert (=> b!7629842 (= e!4536128 e!4536129)))

(declare-fun res!3055489 () Bool)

(assert (=> b!7629842 (= res!3055489 (not (is-EmptyLang!20374 (regOne!41260 r!14126))))))

(assert (=> b!7629842 (=> (not res!3055489) (not e!4536129))))

(assert (=> b!7629843 (= e!4536124 call!700459)))

(declare-fun d!2324041 () Bool)

(declare-fun c!1405722 () Bool)

(assert (=> d!2324041 (= c!1405722 (is-EmptyExpr!20374 (regOne!41260 r!14126)))))

(assert (=> d!2324041 (= (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 cut!14)) e!4536128)))

(declare-fun bm!700453 () Bool)

(declare-fun isEmpty!41730 (List!73225) Bool)

(assert (=> bm!700453 (= call!700458 (isEmpty!41730 (_1!37956 cut!14)))))

(declare-fun b!7629844 () Bool)

(declare-fun c!1405721 () Bool)

(assert (=> b!7629844 (= c!1405721 (is-ElementMatch!20374 (regOne!41260 r!14126)))))

(assert (=> b!7629844 (= e!4536129 e!4536127)))

(declare-fun b!7629845 () Bool)

(assert (=> b!7629845 (= e!4536125 e!4536123)))

(assert (=> b!7629845 (= c!1405719 (is-Star!20374 (regOne!41260 r!14126)))))

(assert (= (and d!2324041 c!1405722) b!7629835))

(assert (= (and d!2324041 (not c!1405722)) b!7629842))

(assert (= (and b!7629842 res!3055489) b!7629844))

(assert (= (and b!7629844 c!1405721) b!7629836))

(assert (= (and b!7629844 (not c!1405721)) b!7629839))

(assert (= (and b!7629839 c!1405720) b!7629837))

(assert (= (and b!7629839 (not c!1405720)) b!7629845))

(assert (= (and b!7629837 (not res!3055490)) b!7629841))

(assert (= (and b!7629845 c!1405719) b!7629838))

(assert (= (and b!7629845 (not c!1405719)) b!7629840))

(assert (= (and b!7629838 (not res!3055488)) b!7629843))

(assert (= (or b!7629843 b!7629840) bm!700454))

(assert (= (or b!7629835 b!7629838) bm!700453))

(declare-fun m!8157406 () Bool)

(assert (=> b!7629837 m!8157406))

(declare-fun m!8157408 () Bool)

(assert (=> b!7629841 m!8157408))

(declare-fun m!8157410 () Bool)

(assert (=> bm!700454 m!8157410))

(declare-fun m!8157412 () Bool)

(assert (=> bm!700453 m!8157412))

(assert (=> b!7629707 d!2324041))

(declare-fun b!7629874 () Bool)

(declare-fun e!4536149 () Bool)

(declare-fun derivativeStep!5880 (Regex!20374 C!41074) Regex!20374)

(declare-fun head!15680 (List!73225) C!41074)

(declare-fun tail!15220 (List!73225) List!73225)

(assert (=> b!7629874 (= e!4536149 (matchR!9877 (derivativeStep!5880 r!14126 (head!15680 s!9605)) (tail!15220 s!9605)))))

(declare-fun d!2324047 () Bool)

(declare-fun e!4536148 () Bool)

(assert (=> d!2324047 e!4536148))

(declare-fun c!1405729 () Bool)

(assert (=> d!2324047 (= c!1405729 (is-EmptyExpr!20374 r!14126))))

(declare-fun lt!2658590 () Bool)

(assert (=> d!2324047 (= lt!2658590 e!4536149)))

(declare-fun c!1405731 () Bool)

(assert (=> d!2324047 (= c!1405731 (isEmpty!41730 s!9605))))

(assert (=> d!2324047 (validRegex!10792 r!14126)))

(assert (=> d!2324047 (= (matchR!9877 r!14126 s!9605) lt!2658590)))

(declare-fun b!7629875 () Bool)

(declare-fun res!3055512 () Bool)

(declare-fun e!4536147 () Bool)

(assert (=> b!7629875 (=> (not res!3055512) (not e!4536147))))

(assert (=> b!7629875 (= res!3055512 (isEmpty!41730 (tail!15220 s!9605)))))

(declare-fun b!7629876 () Bool)

(declare-fun res!3055514 () Bool)

(assert (=> b!7629876 (=> (not res!3055514) (not e!4536147))))

(declare-fun call!700462 () Bool)

(assert (=> b!7629876 (= res!3055514 (not call!700462))))

(declare-fun b!7629877 () Bool)

(declare-fun e!4536144 () Bool)

(declare-fun e!4536150 () Bool)

(assert (=> b!7629877 (= e!4536144 e!4536150)))

(declare-fun res!3055513 () Bool)

(assert (=> b!7629877 (=> (not res!3055513) (not e!4536150))))

(assert (=> b!7629877 (= res!3055513 (not lt!2658590))))

(declare-fun b!7629878 () Bool)

(declare-fun res!3055509 () Bool)

(declare-fun e!4536146 () Bool)

(assert (=> b!7629878 (=> res!3055509 e!4536146)))

(assert (=> b!7629878 (= res!3055509 (not (isEmpty!41730 (tail!15220 s!9605))))))

(declare-fun b!7629879 () Bool)

(declare-fun e!4536145 () Bool)

(assert (=> b!7629879 (= e!4536145 (not lt!2658590))))

(declare-fun b!7629880 () Bool)

(assert (=> b!7629880 (= e!4536150 e!4536146)))

(declare-fun res!3055507 () Bool)

(assert (=> b!7629880 (=> res!3055507 e!4536146)))

(assert (=> b!7629880 (= res!3055507 call!700462)))

(declare-fun b!7629881 () Bool)

(assert (=> b!7629881 (= e!4536148 (= lt!2658590 call!700462))))

(declare-fun b!7629882 () Bool)

(assert (=> b!7629882 (= e!4536149 (nullable!8907 r!14126))))

(declare-fun b!7629883 () Bool)

(assert (=> b!7629883 (= e!4536147 (= (head!15680 s!9605) (c!1405703 r!14126)))))

(declare-fun b!7629884 () Bool)

(assert (=> b!7629884 (= e!4536146 (not (= (head!15680 s!9605) (c!1405703 r!14126))))))

(declare-fun b!7629885 () Bool)

(assert (=> b!7629885 (= e!4536148 e!4536145)))

(declare-fun c!1405730 () Bool)

(assert (=> b!7629885 (= c!1405730 (is-EmptyLang!20374 r!14126))))

(declare-fun bm!700457 () Bool)

(assert (=> bm!700457 (= call!700462 (isEmpty!41730 s!9605))))

(declare-fun b!7629886 () Bool)

(declare-fun res!3055508 () Bool)

(assert (=> b!7629886 (=> res!3055508 e!4536144)))

(assert (=> b!7629886 (= res!3055508 (not (is-ElementMatch!20374 r!14126)))))

(assert (=> b!7629886 (= e!4536145 e!4536144)))

(declare-fun b!7629887 () Bool)

(declare-fun res!3055511 () Bool)

(assert (=> b!7629887 (=> res!3055511 e!4536144)))

(assert (=> b!7629887 (= res!3055511 e!4536147)))

(declare-fun res!3055510 () Bool)

(assert (=> b!7629887 (=> (not res!3055510) (not e!4536147))))

(assert (=> b!7629887 (= res!3055510 lt!2658590)))

(assert (= (and d!2324047 c!1405731) b!7629882))

(assert (= (and d!2324047 (not c!1405731)) b!7629874))

(assert (= (and d!2324047 c!1405729) b!7629881))

(assert (= (and d!2324047 (not c!1405729)) b!7629885))

(assert (= (and b!7629885 c!1405730) b!7629879))

(assert (= (and b!7629885 (not c!1405730)) b!7629886))

(assert (= (and b!7629886 (not res!3055508)) b!7629887))

(assert (= (and b!7629887 res!3055510) b!7629876))

(assert (= (and b!7629876 res!3055514) b!7629875))

(assert (= (and b!7629875 res!3055512) b!7629883))

(assert (= (and b!7629887 (not res!3055511)) b!7629877))

(assert (= (and b!7629877 res!3055513) b!7629880))

(assert (= (and b!7629880 (not res!3055507)) b!7629878))

(assert (= (and b!7629878 (not res!3055509)) b!7629884))

(assert (= (or b!7629881 b!7629876 b!7629880) bm!700457))

(declare-fun m!8157418 () Bool)

(assert (=> bm!700457 m!8157418))

(declare-fun m!8157420 () Bool)

(assert (=> b!7629875 m!8157420))

(assert (=> b!7629875 m!8157420))

(declare-fun m!8157422 () Bool)

(assert (=> b!7629875 m!8157422))

(declare-fun m!8157424 () Bool)

(assert (=> b!7629883 m!8157424))

(declare-fun m!8157426 () Bool)

(assert (=> b!7629882 m!8157426))

(assert (=> b!7629874 m!8157424))

(assert (=> b!7629874 m!8157424))

(declare-fun m!8157428 () Bool)

(assert (=> b!7629874 m!8157428))

(assert (=> b!7629874 m!8157420))

(assert (=> b!7629874 m!8157428))

(assert (=> b!7629874 m!8157420))

(declare-fun m!8157430 () Bool)

(assert (=> b!7629874 m!8157430))

(assert (=> d!2324047 m!8157418))

(assert (=> d!2324047 m!8157360))

(assert (=> b!7629884 m!8157424))

(assert (=> b!7629878 m!8157420))

(assert (=> b!7629878 m!8157420))

(assert (=> b!7629878 m!8157422))

(assert (=> b!7629708 d!2324047))

(declare-fun bs!1943932 () Bool)

(declare-fun d!2324051 () Bool)

(assert (= bs!1943932 (and d!2324051 b!7629708)))

(declare-fun lambda!469032 () Int)

(assert (=> bs!1943932 (= lambda!469032 lambda!469012)))

(declare-fun bs!1943933 () Bool)

(assert (= bs!1943933 (and d!2324051 b!7629705)))

(assert (=> bs!1943933 (not (= lambda!469032 lambda!469013))))

(declare-fun bs!1943934 () Bool)

(assert (= bs!1943934 (and d!2324051 b!7629843)))

(assert (=> bs!1943934 (not (= lambda!469032 lambda!469028))))

(declare-fun bs!1943935 () Bool)

(assert (= bs!1943935 (and d!2324051 b!7629840)))

(assert (=> bs!1943935 (not (= lambda!469032 lambda!469029))))

(assert (=> d!2324051 true))

(assert (=> d!2324051 true))

(assert (=> d!2324051 true))

(assert (=> d!2324051 (= (isDefined!14063 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605)) (Exists!4528 lambda!469032))))

(declare-fun lt!2658593 () Unit!167676)

(declare-fun choose!58892 (Regex!20374 Regex!20374 List!73225) Unit!167676)

(assert (=> d!2324051 (= lt!2658593 (choose!58892 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605))))

(assert (=> d!2324051 (validRegex!10792 (regOne!41260 r!14126))))

(assert (=> d!2324051 (= (lemmaFindConcatSeparationEquivalentToExists!3235 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605) lt!2658593)))

(declare-fun bs!1943936 () Bool)

(assert (= bs!1943936 d!2324051))

(declare-fun m!8157432 () Bool)

(assert (=> bs!1943936 m!8157432))

(assert (=> bs!1943936 m!8157354))

(assert (=> bs!1943936 m!8157358))

(declare-fun m!8157434 () Bool)

(assert (=> bs!1943936 m!8157434))

(declare-fun m!8157436 () Bool)

(assert (=> bs!1943936 m!8157436))

(assert (=> bs!1943936 m!8157354))

(assert (=> b!7629708 d!2324051))

(declare-fun d!2324053 () Bool)

(declare-fun isEmpty!41731 (Option!17447) Bool)

(assert (=> d!2324053 (= (isDefined!14063 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605)) (not (isEmpty!41731 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605))))))

(declare-fun bs!1943937 () Bool)

(assert (= bs!1943937 d!2324053))

(assert (=> bs!1943937 m!8157354))

(declare-fun m!8157438 () Bool)

(assert (=> bs!1943937 m!8157438))

(assert (=> b!7629708 d!2324053))

(declare-fun b!7629937 () Bool)

(declare-fun res!3055548 () Bool)

(declare-fun e!4536184 () Bool)

(assert (=> b!7629937 (=> (not res!3055548) (not e!4536184))))

(declare-fun lt!2658600 () Option!17447)

(declare-fun get!25832 (Option!17447) tuple2!69306)

(assert (=> b!7629937 (= res!3055548 (matchR!9877 (regTwo!41260 r!14126) (_2!37956 (get!25832 lt!2658600))))))

(declare-fun b!7629938 () Bool)

(declare-fun e!4536187 () Bool)

(assert (=> b!7629938 (= e!4536187 (matchR!9877 (regTwo!41260 r!14126) s!9605))))

(declare-fun b!7629939 () Bool)

(assert (=> b!7629939 (= e!4536184 (= (++!17658 (_1!37956 (get!25832 lt!2658600)) (_2!37956 (get!25832 lt!2658600))) s!9605))))

(declare-fun b!7629940 () Bool)

(declare-fun res!3055547 () Bool)

(assert (=> b!7629940 (=> (not res!3055547) (not e!4536184))))

(assert (=> b!7629940 (= res!3055547 (matchR!9877 (regOne!41260 r!14126) (_1!37956 (get!25832 lt!2658600))))))

(declare-fun b!7629941 () Bool)

(declare-fun lt!2658602 () Unit!167676)

(declare-fun lt!2658601 () Unit!167676)

(assert (=> b!7629941 (= lt!2658602 lt!2658601)))

(assert (=> b!7629941 (= (++!17658 (++!17658 Nil!73101 (Cons!73101 (h!79549 s!9605) Nil!73101)) (t!387960 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3237 (List!73225 C!41074 List!73225 List!73225) Unit!167676)

(assert (=> b!7629941 (= lt!2658601 (lemmaMoveElementToOtherListKeepsConcatEq!3237 Nil!73101 (h!79549 s!9605) (t!387960 s!9605) s!9605))))

(declare-fun e!4536188 () Option!17447)

(assert (=> b!7629941 (= e!4536188 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) (++!17658 Nil!73101 (Cons!73101 (h!79549 s!9605) Nil!73101)) (t!387960 s!9605) s!9605))))

(declare-fun d!2324055 () Bool)

(declare-fun e!4536186 () Bool)

(assert (=> d!2324055 e!4536186))

(declare-fun res!3055545 () Bool)

(assert (=> d!2324055 (=> res!3055545 e!4536186)))

(assert (=> d!2324055 (= res!3055545 e!4536184)))

(declare-fun res!3055546 () Bool)

(assert (=> d!2324055 (=> (not res!3055546) (not e!4536184))))

(assert (=> d!2324055 (= res!3055546 (isDefined!14063 lt!2658600))))

(declare-fun e!4536185 () Option!17447)

(assert (=> d!2324055 (= lt!2658600 e!4536185)))

(declare-fun c!1405742 () Bool)

(assert (=> d!2324055 (= c!1405742 e!4536187)))

(declare-fun res!3055544 () Bool)

(assert (=> d!2324055 (=> (not res!3055544) (not e!4536187))))

(assert (=> d!2324055 (= res!3055544 (matchR!9877 (regOne!41260 r!14126) Nil!73101))))

(assert (=> d!2324055 (validRegex!10792 (regOne!41260 r!14126))))

(assert (=> d!2324055 (= (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605) lt!2658600)))

(declare-fun b!7629942 () Bool)

(assert (=> b!7629942 (= e!4536188 None!17446)))

(declare-fun b!7629943 () Bool)

(assert (=> b!7629943 (= e!4536185 e!4536188)))

(declare-fun c!1405743 () Bool)

(assert (=> b!7629943 (= c!1405743 (is-Nil!73101 s!9605))))

(declare-fun b!7629944 () Bool)

(assert (=> b!7629944 (= e!4536185 (Some!17446 (tuple2!69307 Nil!73101 s!9605)))))

(declare-fun b!7629945 () Bool)

(assert (=> b!7629945 (= e!4536186 (not (isDefined!14063 lt!2658600)))))

(assert (= (and d!2324055 res!3055544) b!7629938))

(assert (= (and d!2324055 c!1405742) b!7629944))

(assert (= (and d!2324055 (not c!1405742)) b!7629943))

(assert (= (and b!7629943 c!1405743) b!7629942))

(assert (= (and b!7629943 (not c!1405743)) b!7629941))

(assert (= (and d!2324055 res!3055546) b!7629940))

(assert (= (and b!7629940 res!3055547) b!7629937))

(assert (= (and b!7629937 res!3055548) b!7629939))

(assert (= (and d!2324055 (not res!3055545)) b!7629945))

(declare-fun m!8157446 () Bool)

(assert (=> b!7629939 m!8157446))

(declare-fun m!8157448 () Bool)

(assert (=> b!7629939 m!8157448))

(assert (=> b!7629937 m!8157446))

(declare-fun m!8157450 () Bool)

(assert (=> b!7629937 m!8157450))

(declare-fun m!8157452 () Bool)

(assert (=> b!7629938 m!8157452))

(assert (=> b!7629940 m!8157446))

(declare-fun m!8157454 () Bool)

(assert (=> b!7629940 m!8157454))

(declare-fun m!8157456 () Bool)

(assert (=> d!2324055 m!8157456))

(declare-fun m!8157458 () Bool)

(assert (=> d!2324055 m!8157458))

(assert (=> d!2324055 m!8157436))

(assert (=> b!7629945 m!8157456))

(declare-fun m!8157460 () Bool)

(assert (=> b!7629941 m!8157460))

(assert (=> b!7629941 m!8157460))

(declare-fun m!8157462 () Bool)

(assert (=> b!7629941 m!8157462))

(declare-fun m!8157464 () Bool)

(assert (=> b!7629941 m!8157464))

(assert (=> b!7629941 m!8157460))

(declare-fun m!8157466 () Bool)

(assert (=> b!7629941 m!8157466))

(assert (=> b!7629708 d!2324055))

(declare-fun d!2324059 () Bool)

(declare-fun choose!58893 (Int) Bool)

(assert (=> d!2324059 (= (Exists!4528 lambda!469012) (choose!58893 lambda!469012))))

(declare-fun bs!1943938 () Bool)

(assert (= bs!1943938 d!2324059))

(declare-fun m!8157468 () Bool)

(assert (=> bs!1943938 m!8157468))

(assert (=> b!7629708 d!2324059))

(assert (=> b!7629703 d!2324059))

(declare-fun d!2324061 () Bool)

(assert (=> d!2324061 (isDefined!14063 (findConcatSeparation!3477 (regOne!41260 r!14126) (regTwo!41260 r!14126) Nil!73101 s!9605 s!9605))))

(declare-fun lt!2658605 () Unit!167676)

(declare-fun choose!58894 (Regex!20374 Regex!20374 List!73225) Unit!167676)

(assert (=> d!2324061 (= lt!2658605 (choose!58894 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605))))

(assert (=> d!2324061 (validRegex!10792 (regOne!41260 r!14126))))

(assert (=> d!2324061 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!281 (regOne!41260 r!14126) (regTwo!41260 r!14126) s!9605) lt!2658605)))

(declare-fun bs!1943939 () Bool)

(assert (= bs!1943939 d!2324061))

(assert (=> bs!1943939 m!8157354))

(assert (=> bs!1943939 m!8157354))

(assert (=> bs!1943939 m!8157358))

(declare-fun m!8157470 () Bool)

(assert (=> bs!1943939 m!8157470))

(assert (=> bs!1943939 m!8157436))

(assert (=> b!7629703 d!2324061))

(declare-fun b!7629968 () Bool)

(declare-fun e!4536209 () Bool)

(declare-fun call!700472 () Bool)

(assert (=> b!7629968 (= e!4536209 call!700472)))

(declare-fun bm!700467 () Bool)

(declare-fun call!700474 () Bool)

(assert (=> bm!700467 (= call!700472 call!700474)))

(declare-fun b!7629969 () Bool)

(declare-fun e!4536207 () Bool)

(declare-fun e!4536206 () Bool)

(assert (=> b!7629969 (= e!4536207 e!4536206)))

(declare-fun c!1405753 () Bool)

(assert (=> b!7629969 (= c!1405753 (is-Union!20374 r!14126))))

(declare-fun d!2324063 () Bool)

(declare-fun res!3055555 () Bool)

(declare-fun e!4536205 () Bool)

(assert (=> d!2324063 (=> res!3055555 e!4536205)))

(assert (=> d!2324063 (= res!3055555 (is-ElementMatch!20374 r!14126))))

(assert (=> d!2324063 (= (validRegex!10792 r!14126) e!4536205)))

(declare-fun bm!700468 () Bool)

(declare-fun c!1405752 () Bool)

(assert (=> bm!700468 (= call!700474 (validRegex!10792 (ite c!1405752 (reg!20703 r!14126) (ite c!1405753 (regTwo!41261 r!14126) (regTwo!41260 r!14126)))))))

(declare-fun b!7629970 () Bool)

(assert (=> b!7629970 (= e!4536205 e!4536207)))

(assert (=> b!7629970 (= c!1405752 (is-Star!20374 r!14126))))

(declare-fun bm!700469 () Bool)

(declare-fun call!700473 () Bool)

(assert (=> bm!700469 (= call!700473 (validRegex!10792 (ite c!1405753 (regOne!41261 r!14126) (regOne!41260 r!14126))))))

(declare-fun b!7629971 () Bool)

(declare-fun e!4536203 () Bool)

(assert (=> b!7629971 (= e!4536203 call!700474)))

(declare-fun b!7629972 () Bool)

(declare-fun res!3055556 () Bool)

(declare-fun e!4536204 () Bool)

(assert (=> b!7629972 (=> res!3055556 e!4536204)))

(assert (=> b!7629972 (= res!3055556 (not (is-Concat!29219 r!14126)))))

(assert (=> b!7629972 (= e!4536206 e!4536204)))

(declare-fun b!7629973 () Bool)

(assert (=> b!7629973 (= e!4536207 e!4536203)))

(declare-fun res!3055558 () Bool)

(assert (=> b!7629973 (= res!3055558 (not (nullable!8907 (reg!20703 r!14126))))))

(assert (=> b!7629973 (=> (not res!3055558) (not e!4536203))))

(declare-fun b!7629974 () Bool)

(declare-fun res!3055559 () Bool)

(assert (=> b!7629974 (=> (not res!3055559) (not e!4536209))))

(assert (=> b!7629974 (= res!3055559 call!700473)))

(assert (=> b!7629974 (= e!4536206 e!4536209)))

(declare-fun b!7629975 () Bool)

(declare-fun e!4536208 () Bool)

(assert (=> b!7629975 (= e!4536208 call!700472)))

(declare-fun b!7629976 () Bool)

(assert (=> b!7629976 (= e!4536204 e!4536208)))

(declare-fun res!3055557 () Bool)

(assert (=> b!7629976 (=> (not res!3055557) (not e!4536208))))

(assert (=> b!7629976 (= res!3055557 call!700473)))

(assert (= (and d!2324063 (not res!3055555)) b!7629970))

(assert (= (and b!7629970 c!1405752) b!7629973))

(assert (= (and b!7629970 (not c!1405752)) b!7629969))

(assert (= (and b!7629973 res!3055558) b!7629971))

(assert (= (and b!7629969 c!1405753) b!7629974))

(assert (= (and b!7629969 (not c!1405753)) b!7629972))

(assert (= (and b!7629974 res!3055559) b!7629968))

(assert (= (and b!7629972 (not res!3055556)) b!7629976))

(assert (= (and b!7629976 res!3055557) b!7629975))

(assert (= (or b!7629974 b!7629976) bm!700469))

(assert (= (or b!7629968 b!7629975) bm!700467))

(assert (= (or b!7629971 bm!700467) bm!700468))

(declare-fun m!8157472 () Bool)

(assert (=> bm!700468 m!8157472))

(declare-fun m!8157474 () Bool)

(assert (=> bm!700469 m!8157474))

(declare-fun m!8157476 () Bool)

(assert (=> b!7629973 m!8157476))

(assert (=> start!734718 d!2324063))

(declare-fun b!7629977 () Bool)

(declare-fun e!4536215 () Bool)

(assert (=> b!7629977 (= e!4536215 (matchR!9877 (derivativeStep!5880 (regOne!41260 r!14126) (head!15680 (_1!37956 lt!2658560))) (tail!15220 (_1!37956 lt!2658560))))))

(declare-fun d!2324065 () Bool)

(declare-fun e!4536214 () Bool)

(assert (=> d!2324065 e!4536214))

(declare-fun c!1405754 () Bool)

(assert (=> d!2324065 (= c!1405754 (is-EmptyExpr!20374 (regOne!41260 r!14126)))))

(declare-fun lt!2658606 () Bool)

(assert (=> d!2324065 (= lt!2658606 e!4536215)))

(declare-fun c!1405756 () Bool)

(assert (=> d!2324065 (= c!1405756 (isEmpty!41730 (_1!37956 lt!2658560)))))

(assert (=> d!2324065 (validRegex!10792 (regOne!41260 r!14126))))

(assert (=> d!2324065 (= (matchR!9877 (regOne!41260 r!14126) (_1!37956 lt!2658560)) lt!2658606)))

(declare-fun b!7629978 () Bool)

(declare-fun res!3055565 () Bool)

(declare-fun e!4536213 () Bool)

(assert (=> b!7629978 (=> (not res!3055565) (not e!4536213))))

(assert (=> b!7629978 (= res!3055565 (isEmpty!41730 (tail!15220 (_1!37956 lt!2658560))))))

(declare-fun b!7629979 () Bool)

(declare-fun res!3055567 () Bool)

(assert (=> b!7629979 (=> (not res!3055567) (not e!4536213))))

(declare-fun call!700475 () Bool)

(assert (=> b!7629979 (= res!3055567 (not call!700475))))

(declare-fun b!7629980 () Bool)

(declare-fun e!4536210 () Bool)

(declare-fun e!4536216 () Bool)

(assert (=> b!7629980 (= e!4536210 e!4536216)))

(declare-fun res!3055566 () Bool)

(assert (=> b!7629980 (=> (not res!3055566) (not e!4536216))))

(assert (=> b!7629980 (= res!3055566 (not lt!2658606))))

(declare-fun b!7629981 () Bool)

(declare-fun res!3055562 () Bool)

(declare-fun e!4536212 () Bool)

(assert (=> b!7629981 (=> res!3055562 e!4536212)))

(assert (=> b!7629981 (= res!3055562 (not (isEmpty!41730 (tail!15220 (_1!37956 lt!2658560)))))))

(declare-fun b!7629982 () Bool)

(declare-fun e!4536211 () Bool)

(assert (=> b!7629982 (= e!4536211 (not lt!2658606))))

(declare-fun b!7629983 () Bool)

(assert (=> b!7629983 (= e!4536216 e!4536212)))

(declare-fun res!3055560 () Bool)

(assert (=> b!7629983 (=> res!3055560 e!4536212)))

(assert (=> b!7629983 (= res!3055560 call!700475)))

(declare-fun b!7629984 () Bool)

(assert (=> b!7629984 (= e!4536214 (= lt!2658606 call!700475))))

(declare-fun b!7629985 () Bool)

(assert (=> b!7629985 (= e!4536215 (nullable!8907 (regOne!41260 r!14126)))))

(declare-fun b!7629986 () Bool)

(assert (=> b!7629986 (= e!4536213 (= (head!15680 (_1!37956 lt!2658560)) (c!1405703 (regOne!41260 r!14126))))))

(declare-fun b!7629987 () Bool)

(assert (=> b!7629987 (= e!4536212 (not (= (head!15680 (_1!37956 lt!2658560)) (c!1405703 (regOne!41260 r!14126)))))))

(declare-fun b!7629988 () Bool)

(assert (=> b!7629988 (= e!4536214 e!4536211)))

(declare-fun c!1405755 () Bool)

(assert (=> b!7629988 (= c!1405755 (is-EmptyLang!20374 (regOne!41260 r!14126)))))

(declare-fun bm!700470 () Bool)

(assert (=> bm!700470 (= call!700475 (isEmpty!41730 (_1!37956 lt!2658560)))))

(declare-fun b!7629989 () Bool)

(declare-fun res!3055561 () Bool)

(assert (=> b!7629989 (=> res!3055561 e!4536210)))

(assert (=> b!7629989 (= res!3055561 (not (is-ElementMatch!20374 (regOne!41260 r!14126))))))

(assert (=> b!7629989 (= e!4536211 e!4536210)))

(declare-fun b!7629990 () Bool)

(declare-fun res!3055564 () Bool)

(assert (=> b!7629990 (=> res!3055564 e!4536210)))

(assert (=> b!7629990 (= res!3055564 e!4536213)))

(declare-fun res!3055563 () Bool)

(assert (=> b!7629990 (=> (not res!3055563) (not e!4536213))))

(assert (=> b!7629990 (= res!3055563 lt!2658606)))

(assert (= (and d!2324065 c!1405756) b!7629985))

(assert (= (and d!2324065 (not c!1405756)) b!7629977))

(assert (= (and d!2324065 c!1405754) b!7629984))

(assert (= (and d!2324065 (not c!1405754)) b!7629988))

(assert (= (and b!7629988 c!1405755) b!7629982))

(assert (= (and b!7629988 (not c!1405755)) b!7629989))

(assert (= (and b!7629989 (not res!3055561)) b!7629990))

(assert (= (and b!7629990 res!3055563) b!7629979))

(assert (= (and b!7629979 res!3055567) b!7629978))

(assert (= (and b!7629978 res!3055565) b!7629986))

(assert (= (and b!7629990 (not res!3055564)) b!7629980))

(assert (= (and b!7629980 res!3055566) b!7629983))

(assert (= (and b!7629983 (not res!3055560)) b!7629981))

(assert (= (and b!7629981 (not res!3055562)) b!7629987))

(assert (= (or b!7629984 b!7629979 b!7629983) bm!700470))

(declare-fun m!8157478 () Bool)

(assert (=> bm!700470 m!8157478))

(declare-fun m!8157480 () Bool)

(assert (=> b!7629978 m!8157480))

(assert (=> b!7629978 m!8157480))

(declare-fun m!8157482 () Bool)

(assert (=> b!7629978 m!8157482))

(declare-fun m!8157484 () Bool)

(assert (=> b!7629986 m!8157484))

(declare-fun m!8157486 () Bool)

(assert (=> b!7629985 m!8157486))

(assert (=> b!7629977 m!8157484))

(assert (=> b!7629977 m!8157484))

(declare-fun m!8157488 () Bool)

(assert (=> b!7629977 m!8157488))

(assert (=> b!7629977 m!8157480))

(assert (=> b!7629977 m!8157488))

(assert (=> b!7629977 m!8157480))

(declare-fun m!8157490 () Bool)

(assert (=> b!7629977 m!8157490))

(assert (=> d!2324065 m!8157478))

(assert (=> d!2324065 m!8157436))

(assert (=> b!7629987 m!8157484))

(assert (=> b!7629981 m!8157480))

(assert (=> b!7629981 m!8157480))

(assert (=> b!7629981 m!8157482))

(assert (=> b!7629705 d!2324065))

(declare-fun d!2324067 () Bool)

(assert (=> d!2324067 (= (matchR!9877 (regOne!41260 r!14126) (_1!37956 lt!2658560)) (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 lt!2658560)))))

(declare-fun lt!2658609 () Unit!167676)

(declare-fun choose!58895 (Regex!20374 List!73225) Unit!167676)

(assert (=> d!2324067 (= lt!2658609 (choose!58895 (regOne!41260 r!14126) (_1!37956 lt!2658560)))))

(assert (=> d!2324067 (validRegex!10792 (regOne!41260 r!14126))))

(assert (=> d!2324067 (= (mainMatchTheorem!4527 (regOne!41260 r!14126) (_1!37956 lt!2658560)) lt!2658609)))

(declare-fun bs!1943940 () Bool)

(assert (= bs!1943940 d!2324067))

(assert (=> bs!1943940 m!8157334))

(assert (=> bs!1943940 m!8157346))

(declare-fun m!8157492 () Bool)

(assert (=> bs!1943940 m!8157492))

(assert (=> bs!1943940 m!8157436))

(assert (=> b!7629705 d!2324067))

(declare-fun b!7630011 () Bool)

(declare-fun res!3055582 () Bool)

(declare-fun e!4536225 () Bool)

(assert (=> b!7630011 (=> (not res!3055582) (not e!4536225))))

(declare-fun lt!2658612 () List!73225)

(declare-fun size!42560 (List!73225) Int)

(assert (=> b!7630011 (= res!3055582 (= (size!42560 lt!2658612) (+ (size!42560 (_1!37956 cut!14)) (size!42560 (_2!37956 cut!14)))))))

(declare-fun b!7630009 () Bool)

(declare-fun e!4536226 () List!73225)

(assert (=> b!7630009 (= e!4536226 (_2!37956 cut!14))))

(declare-fun b!7630010 () Bool)

(assert (=> b!7630010 (= e!4536226 (Cons!73101 (h!79549 (_1!37956 cut!14)) (++!17658 (t!387960 (_1!37956 cut!14)) (_2!37956 cut!14))))))

(declare-fun b!7630012 () Bool)

(assert (=> b!7630012 (= e!4536225 (or (not (= (_2!37956 cut!14) Nil!73101)) (= lt!2658612 (_1!37956 cut!14))))))

(declare-fun d!2324069 () Bool)

(assert (=> d!2324069 e!4536225))

(declare-fun res!3055583 () Bool)

(assert (=> d!2324069 (=> (not res!3055583) (not e!4536225))))

(declare-fun content!15467 (List!73225) (Set C!41074))

(assert (=> d!2324069 (= res!3055583 (= (content!15467 lt!2658612) (set.union (content!15467 (_1!37956 cut!14)) (content!15467 (_2!37956 cut!14)))))))

(assert (=> d!2324069 (= lt!2658612 e!4536226)))

(declare-fun c!1405759 () Bool)

(assert (=> d!2324069 (= c!1405759 (is-Nil!73101 (_1!37956 cut!14)))))

(assert (=> d!2324069 (= (++!17658 (_1!37956 cut!14) (_2!37956 cut!14)) lt!2658612)))

(assert (= (and d!2324069 c!1405759) b!7630009))

(assert (= (and d!2324069 (not c!1405759)) b!7630010))

(assert (= (and d!2324069 res!3055583) b!7630011))

(assert (= (and b!7630011 res!3055582) b!7630012))

(declare-fun m!8157494 () Bool)

(assert (=> b!7630011 m!8157494))

(declare-fun m!8157496 () Bool)

(assert (=> b!7630011 m!8157496))

(declare-fun m!8157498 () Bool)

(assert (=> b!7630011 m!8157498))

(declare-fun m!8157500 () Bool)

(assert (=> b!7630010 m!8157500))

(declare-fun m!8157502 () Bool)

(assert (=> d!2324069 m!8157502))

(declare-fun m!8157504 () Bool)

(assert (=> d!2324069 m!8157504))

(declare-fun m!8157506 () Bool)

(assert (=> d!2324069 m!8157506))

(assert (=> b!7629705 d!2324069))

(declare-fun bs!1943941 () Bool)

(declare-fun b!7630021 () Bool)

(assert (= bs!1943941 (and b!7630021 b!7629708)))

(declare-fun lambda!469037 () Int)

(assert (=> bs!1943941 (not (= lambda!469037 lambda!469012))))

(declare-fun bs!1943942 () Bool)

(assert (= bs!1943942 (and b!7630021 b!7629840)))

(assert (=> bs!1943942 (not (= lambda!469037 lambda!469029))))

(declare-fun bs!1943943 () Bool)

(assert (= bs!1943943 (and b!7630021 b!7629843)))

(assert (=> bs!1943943 (= (and (= (_2!37956 lt!2658560) (_1!37956 cut!14)) (= (reg!20703 (regTwo!41260 r!14126)) (reg!20703 (regOne!41260 r!14126))) (= (regTwo!41260 r!14126) (regOne!41260 r!14126))) (= lambda!469037 lambda!469028))))

(declare-fun bs!1943944 () Bool)

(assert (= bs!1943944 (and b!7630021 b!7629705)))

(assert (=> bs!1943944 (not (= lambda!469037 lambda!469013))))

(declare-fun bs!1943945 () Bool)

(assert (= bs!1943945 (and b!7630021 d!2324051)))

(assert (=> bs!1943945 (not (= lambda!469037 lambda!469032))))

(assert (=> b!7630021 true))

(assert (=> b!7630021 true))

(declare-fun bs!1943946 () Bool)

(declare-fun b!7630018 () Bool)

(assert (= bs!1943946 (and b!7630018 b!7629708)))

(declare-fun lambda!469038 () Int)

(assert (=> bs!1943946 (not (= lambda!469038 lambda!469012))))

(declare-fun bs!1943947 () Bool)

(assert (= bs!1943947 (and b!7630018 b!7629840)))

(assert (=> bs!1943947 (= (and (= (_2!37956 lt!2658560) (_1!37956 cut!14)) (= (regOne!41260 (regTwo!41260 r!14126)) (regOne!41260 (regOne!41260 r!14126))) (= (regTwo!41260 (regTwo!41260 r!14126)) (regTwo!41260 (regOne!41260 r!14126)))) (= lambda!469038 lambda!469029))))

(declare-fun bs!1943948 () Bool)

(assert (= bs!1943948 (and b!7630018 b!7629843)))

(assert (=> bs!1943948 (not (= lambda!469038 lambda!469028))))

(declare-fun bs!1943949 () Bool)

(assert (= bs!1943949 (and b!7630018 b!7630021)))

(assert (=> bs!1943949 (not (= lambda!469038 lambda!469037))))

(declare-fun bs!1943950 () Bool)

(assert (= bs!1943950 (and b!7630018 b!7629705)))

(assert (=> bs!1943950 (= (and (= (_2!37956 lt!2658560) s!9605) (= (regOne!41260 (regTwo!41260 r!14126)) (regOne!41260 r!14126)) (= (regTwo!41260 (regTwo!41260 r!14126)) (regTwo!41260 r!14126))) (= lambda!469038 lambda!469013))))

(declare-fun bs!1943951 () Bool)

(assert (= bs!1943951 (and b!7630018 d!2324051)))

(assert (=> bs!1943951 (not (= lambda!469038 lambda!469032))))

(assert (=> b!7630018 true))

(assert (=> b!7630018 true))

(declare-fun b!7630013 () Bool)

(declare-fun e!4536232 () Bool)

(declare-fun call!700476 () Bool)

(assert (=> b!7630013 (= e!4536232 call!700476)))

(declare-fun b!7630014 () Bool)

(declare-fun e!4536231 () Bool)

(assert (=> b!7630014 (= e!4536231 (= (_2!37956 lt!2658560) (Cons!73101 (c!1405703 (regTwo!41260 r!14126)) Nil!73101)))))

(declare-fun b!7630015 () Bool)

(declare-fun e!4536229 () Bool)

(declare-fun e!4536230 () Bool)

(assert (=> b!7630015 (= e!4536229 e!4536230)))

(declare-fun res!3055586 () Bool)

(assert (=> b!7630015 (= res!3055586 (matchRSpec!4537 (regOne!41261 (regTwo!41260 r!14126)) (_2!37956 lt!2658560)))))

(assert (=> b!7630015 (=> res!3055586 e!4536230)))

(declare-fun b!7630016 () Bool)

(declare-fun res!3055584 () Bool)

(declare-fun e!4536228 () Bool)

(assert (=> b!7630016 (=> res!3055584 e!4536228)))

(assert (=> b!7630016 (= res!3055584 call!700476)))

(declare-fun e!4536227 () Bool)

(assert (=> b!7630016 (= e!4536227 e!4536228)))

(declare-fun b!7630017 () Bool)

(declare-fun c!1405761 () Bool)

(assert (=> b!7630017 (= c!1405761 (is-Union!20374 (regTwo!41260 r!14126)))))

(assert (=> b!7630017 (= e!4536231 e!4536229)))

(declare-fun call!700477 () Bool)

(assert (=> b!7630018 (= e!4536227 call!700477)))

(declare-fun b!7630019 () Bool)

(assert (=> b!7630019 (= e!4536230 (matchRSpec!4537 (regTwo!41261 (regTwo!41260 r!14126)) (_2!37956 lt!2658560)))))

(declare-fun bm!700472 () Bool)

(declare-fun c!1405760 () Bool)

(assert (=> bm!700472 (= call!700477 (Exists!4528 (ite c!1405760 lambda!469037 lambda!469038)))))

(declare-fun b!7630020 () Bool)

(declare-fun e!4536233 () Bool)

(assert (=> b!7630020 (= e!4536232 e!4536233)))

(declare-fun res!3055585 () Bool)

(assert (=> b!7630020 (= res!3055585 (not (is-EmptyLang!20374 (regTwo!41260 r!14126))))))

(assert (=> b!7630020 (=> (not res!3055585) (not e!4536233))))

(assert (=> b!7630021 (= e!4536228 call!700477)))

(declare-fun d!2324071 () Bool)

(declare-fun c!1405763 () Bool)

(assert (=> d!2324071 (= c!1405763 (is-EmptyExpr!20374 (regTwo!41260 r!14126)))))

(assert (=> d!2324071 (= (matchRSpec!4537 (regTwo!41260 r!14126) (_2!37956 lt!2658560)) e!4536232)))

(declare-fun bm!700471 () Bool)

(assert (=> bm!700471 (= call!700476 (isEmpty!41730 (_2!37956 lt!2658560)))))

(declare-fun b!7630022 () Bool)

(declare-fun c!1405762 () Bool)

(assert (=> b!7630022 (= c!1405762 (is-ElementMatch!20374 (regTwo!41260 r!14126)))))

(assert (=> b!7630022 (= e!4536233 e!4536231)))

(declare-fun b!7630023 () Bool)

(assert (=> b!7630023 (= e!4536229 e!4536227)))

(assert (=> b!7630023 (= c!1405760 (is-Star!20374 (regTwo!41260 r!14126)))))

(assert (= (and d!2324071 c!1405763) b!7630013))

(assert (= (and d!2324071 (not c!1405763)) b!7630020))

(assert (= (and b!7630020 res!3055585) b!7630022))

(assert (= (and b!7630022 c!1405762) b!7630014))

(assert (= (and b!7630022 (not c!1405762)) b!7630017))

(assert (= (and b!7630017 c!1405761) b!7630015))

(assert (= (and b!7630017 (not c!1405761)) b!7630023))

(assert (= (and b!7630015 (not res!3055586)) b!7630019))

(assert (= (and b!7630023 c!1405760) b!7630016))

(assert (= (and b!7630023 (not c!1405760)) b!7630018))

(assert (= (and b!7630016 (not res!3055584)) b!7630021))

(assert (= (or b!7630021 b!7630018) bm!700472))

(assert (= (or b!7630013 b!7630016) bm!700471))

(declare-fun m!8157508 () Bool)

(assert (=> b!7630015 m!8157508))

(declare-fun m!8157510 () Bool)

(assert (=> b!7630019 m!8157510))

(declare-fun m!8157512 () Bool)

(assert (=> bm!700472 m!8157512))

(declare-fun m!8157514 () Bool)

(assert (=> bm!700471 m!8157514))

(assert (=> b!7629705 d!2324071))

(declare-fun d!2324073 () Bool)

(declare-fun lt!2658615 () tuple2!69306)

(declare-fun dynLambda!29925 (Int tuple2!69306) Bool)

(assert (=> d!2324073 (dynLambda!29925 lambda!469012 lt!2658615)))

(declare-fun choose!58896 (Int) tuple2!69306)

(assert (=> d!2324073 (= lt!2658615 (choose!58896 lambda!469012))))

(assert (=> d!2324073 (Exists!4528 lambda!469012)))

(assert (=> d!2324073 (= (pickWitness!469 lambda!469012) lt!2658615)))

(declare-fun b_lambda!289059 () Bool)

(assert (=> (not b_lambda!289059) (not d!2324073)))

(declare-fun bs!1943952 () Bool)

(assert (= bs!1943952 d!2324073))

(declare-fun m!8157516 () Bool)

(assert (=> bs!1943952 m!8157516))

(declare-fun m!8157518 () Bool)

(assert (=> bs!1943952 m!8157518))

(assert (=> bs!1943952 m!8157328))

(assert (=> b!7629705 d!2324073))

(declare-fun b!7630024 () Bool)

(declare-fun e!4536239 () Bool)

(assert (=> b!7630024 (= e!4536239 (matchR!9877 (derivativeStep!5880 (regTwo!41260 r!14126) (head!15680 (_2!37956 lt!2658560))) (tail!15220 (_2!37956 lt!2658560))))))

(declare-fun d!2324075 () Bool)

(declare-fun e!4536238 () Bool)

(assert (=> d!2324075 e!4536238))

(declare-fun c!1405764 () Bool)

(assert (=> d!2324075 (= c!1405764 (is-EmptyExpr!20374 (regTwo!41260 r!14126)))))

(declare-fun lt!2658616 () Bool)

(assert (=> d!2324075 (= lt!2658616 e!4536239)))

(declare-fun c!1405766 () Bool)

(assert (=> d!2324075 (= c!1405766 (isEmpty!41730 (_2!37956 lt!2658560)))))

(assert (=> d!2324075 (validRegex!10792 (regTwo!41260 r!14126))))

(assert (=> d!2324075 (= (matchR!9877 (regTwo!41260 r!14126) (_2!37956 lt!2658560)) lt!2658616)))

(declare-fun b!7630025 () Bool)

(declare-fun res!3055592 () Bool)

(declare-fun e!4536237 () Bool)

(assert (=> b!7630025 (=> (not res!3055592) (not e!4536237))))

(assert (=> b!7630025 (= res!3055592 (isEmpty!41730 (tail!15220 (_2!37956 lt!2658560))))))

(declare-fun b!7630026 () Bool)

(declare-fun res!3055594 () Bool)

(assert (=> b!7630026 (=> (not res!3055594) (not e!4536237))))

(declare-fun call!700482 () Bool)

(assert (=> b!7630026 (= res!3055594 (not call!700482))))

(declare-fun b!7630027 () Bool)

(declare-fun e!4536234 () Bool)

(declare-fun e!4536240 () Bool)

(assert (=> b!7630027 (= e!4536234 e!4536240)))

(declare-fun res!3055593 () Bool)

(assert (=> b!7630027 (=> (not res!3055593) (not e!4536240))))

(assert (=> b!7630027 (= res!3055593 (not lt!2658616))))

(declare-fun b!7630028 () Bool)

(declare-fun res!3055589 () Bool)

(declare-fun e!4536236 () Bool)

(assert (=> b!7630028 (=> res!3055589 e!4536236)))

(assert (=> b!7630028 (= res!3055589 (not (isEmpty!41730 (tail!15220 (_2!37956 lt!2658560)))))))

(declare-fun b!7630029 () Bool)

(declare-fun e!4536235 () Bool)

(assert (=> b!7630029 (= e!4536235 (not lt!2658616))))

(declare-fun b!7630030 () Bool)

(assert (=> b!7630030 (= e!4536240 e!4536236)))

(declare-fun res!3055587 () Bool)

(assert (=> b!7630030 (=> res!3055587 e!4536236)))

(assert (=> b!7630030 (= res!3055587 call!700482)))

(declare-fun b!7630031 () Bool)

(assert (=> b!7630031 (= e!4536238 (= lt!2658616 call!700482))))

(declare-fun b!7630032 () Bool)

(assert (=> b!7630032 (= e!4536239 (nullable!8907 (regTwo!41260 r!14126)))))

(declare-fun b!7630033 () Bool)

(assert (=> b!7630033 (= e!4536237 (= (head!15680 (_2!37956 lt!2658560)) (c!1405703 (regTwo!41260 r!14126))))))

(declare-fun b!7630034 () Bool)

(assert (=> b!7630034 (= e!4536236 (not (= (head!15680 (_2!37956 lt!2658560)) (c!1405703 (regTwo!41260 r!14126)))))))

(declare-fun b!7630035 () Bool)

(assert (=> b!7630035 (= e!4536238 e!4536235)))

(declare-fun c!1405765 () Bool)

(assert (=> b!7630035 (= c!1405765 (is-EmptyLang!20374 (regTwo!41260 r!14126)))))

(declare-fun bm!700477 () Bool)

(assert (=> bm!700477 (= call!700482 (isEmpty!41730 (_2!37956 lt!2658560)))))

(declare-fun b!7630036 () Bool)

(declare-fun res!3055588 () Bool)

(assert (=> b!7630036 (=> res!3055588 e!4536234)))

(assert (=> b!7630036 (= res!3055588 (not (is-ElementMatch!20374 (regTwo!41260 r!14126))))))

(assert (=> b!7630036 (= e!4536235 e!4536234)))

(declare-fun b!7630037 () Bool)

(declare-fun res!3055591 () Bool)

(assert (=> b!7630037 (=> res!3055591 e!4536234)))

(assert (=> b!7630037 (= res!3055591 e!4536237)))

(declare-fun res!3055590 () Bool)

(assert (=> b!7630037 (=> (not res!3055590) (not e!4536237))))

(assert (=> b!7630037 (= res!3055590 lt!2658616)))

(assert (= (and d!2324075 c!1405766) b!7630032))

(assert (= (and d!2324075 (not c!1405766)) b!7630024))

(assert (= (and d!2324075 c!1405764) b!7630031))

(assert (= (and d!2324075 (not c!1405764)) b!7630035))

(assert (= (and b!7630035 c!1405765) b!7630029))

(assert (= (and b!7630035 (not c!1405765)) b!7630036))

(assert (= (and b!7630036 (not res!3055588)) b!7630037))

(assert (= (and b!7630037 res!3055590) b!7630026))

(assert (= (and b!7630026 res!3055594) b!7630025))

(assert (= (and b!7630025 res!3055592) b!7630033))

(assert (= (and b!7630037 (not res!3055591)) b!7630027))

(assert (= (and b!7630027 res!3055593) b!7630030))

(assert (= (and b!7630030 (not res!3055587)) b!7630028))

(assert (= (and b!7630028 (not res!3055589)) b!7630034))

(assert (= (or b!7630031 b!7630026 b!7630030) bm!700477))

(assert (=> bm!700477 m!8157514))

(declare-fun m!8157520 () Bool)

(assert (=> b!7630025 m!8157520))

(assert (=> b!7630025 m!8157520))

(declare-fun m!8157522 () Bool)

(assert (=> b!7630025 m!8157522))

(declare-fun m!8157524 () Bool)

(assert (=> b!7630033 m!8157524))

(declare-fun m!8157526 () Bool)

(assert (=> b!7630032 m!8157526))

(assert (=> b!7630024 m!8157524))

(assert (=> b!7630024 m!8157524))

(declare-fun m!8157528 () Bool)

(assert (=> b!7630024 m!8157528))

(assert (=> b!7630024 m!8157520))

(assert (=> b!7630024 m!8157528))

(assert (=> b!7630024 m!8157520))

(declare-fun m!8157530 () Bool)

(assert (=> b!7630024 m!8157530))

(assert (=> d!2324075 m!8157514))

(assert (=> d!2324075 m!8157332))

(assert (=> b!7630034 m!8157524))

(assert (=> b!7630028 m!8157520))

(assert (=> b!7630028 m!8157520))

(assert (=> b!7630028 m!8157522))

(assert (=> b!7629705 d!2324075))

(declare-fun d!2324077 () Bool)

(assert (=> d!2324077 (Exists!4528 lambda!469013)))

(declare-fun lt!2658619 () Unit!167676)

(declare-fun choose!58897 (tuple2!69306 Int) Unit!167676)

(assert (=> d!2324077 (= lt!2658619 (choose!58897 lt!2658560 lambda!469013))))

(assert (=> d!2324077 (dynLambda!29925 lambda!469013 lt!2658560)))

(assert (=> d!2324077 (= (ExistsThe!49 lt!2658560 lambda!469013) lt!2658619)))

(declare-fun b_lambda!289061 () Bool)

(assert (=> (not b_lambda!289061) (not d!2324077)))

(declare-fun bs!1943953 () Bool)

(assert (= bs!1943953 d!2324077))

(declare-fun m!8157532 () Bool)

(assert (=> bs!1943953 m!8157532))

(declare-fun m!8157534 () Bool)

(assert (=> bs!1943953 m!8157534))

(declare-fun m!8157536 () Bool)

(assert (=> bs!1943953 m!8157536))

(assert (=> b!7629705 d!2324077))

(declare-fun d!2324079 () Bool)

(assert (=> d!2324079 (= (matchR!9877 (regTwo!41260 r!14126) (_2!37956 lt!2658560)) (matchRSpec!4537 (regTwo!41260 r!14126) (_2!37956 lt!2658560)))))

(declare-fun lt!2658620 () Unit!167676)

(assert (=> d!2324079 (= lt!2658620 (choose!58895 (regTwo!41260 r!14126) (_2!37956 lt!2658560)))))

(assert (=> d!2324079 (validRegex!10792 (regTwo!41260 r!14126))))

(assert (=> d!2324079 (= (mainMatchTheorem!4527 (regTwo!41260 r!14126) (_2!37956 lt!2658560)) lt!2658620)))

(declare-fun bs!1943954 () Bool)

(assert (= bs!1943954 d!2324079))

(assert (=> bs!1943954 m!8157336))

(assert (=> bs!1943954 m!8157344))

(declare-fun m!8157538 () Bool)

(assert (=> bs!1943954 m!8157538))

(assert (=> bs!1943954 m!8157332))

(assert (=> b!7629705 d!2324079))

(declare-fun bs!1943955 () Bool)

(declare-fun b!7630046 () Bool)

(assert (= bs!1943955 (and b!7630046 b!7629708)))

(declare-fun lambda!469039 () Int)

(assert (=> bs!1943955 (not (= lambda!469039 lambda!469012))))

(declare-fun bs!1943956 () Bool)

(assert (= bs!1943956 (and b!7630046 b!7629840)))

(assert (=> bs!1943956 (not (= lambda!469039 lambda!469029))))

(declare-fun bs!1943957 () Bool)

(assert (= bs!1943957 (and b!7630046 b!7630018)))

(assert (=> bs!1943957 (not (= lambda!469039 lambda!469038))))

(declare-fun bs!1943958 () Bool)

(assert (= bs!1943958 (and b!7630046 b!7629843)))

(assert (=> bs!1943958 (= (= (_1!37956 lt!2658560) (_1!37956 cut!14)) (= lambda!469039 lambda!469028))))

(declare-fun bs!1943959 () Bool)

(assert (= bs!1943959 (and b!7630046 b!7630021)))

(assert (=> bs!1943959 (= (and (= (_1!37956 lt!2658560) (_2!37956 lt!2658560)) (= (reg!20703 (regOne!41260 r!14126)) (reg!20703 (regTwo!41260 r!14126))) (= (regOne!41260 r!14126) (regTwo!41260 r!14126))) (= lambda!469039 lambda!469037))))

(declare-fun bs!1943960 () Bool)

(assert (= bs!1943960 (and b!7630046 b!7629705)))

(assert (=> bs!1943960 (not (= lambda!469039 lambda!469013))))

(declare-fun bs!1943961 () Bool)

(assert (= bs!1943961 (and b!7630046 d!2324051)))

(assert (=> bs!1943961 (not (= lambda!469039 lambda!469032))))

(assert (=> b!7630046 true))

(assert (=> b!7630046 true))

(declare-fun bs!1943962 () Bool)

(declare-fun b!7630043 () Bool)

(assert (= bs!1943962 (and b!7630043 b!7629708)))

(declare-fun lambda!469040 () Int)

(assert (=> bs!1943962 (not (= lambda!469040 lambda!469012))))

(declare-fun bs!1943963 () Bool)

(assert (= bs!1943963 (and b!7630043 b!7629840)))

(assert (=> bs!1943963 (= (= (_1!37956 lt!2658560) (_1!37956 cut!14)) (= lambda!469040 lambda!469029))))

(declare-fun bs!1943964 () Bool)

(assert (= bs!1943964 (and b!7630043 b!7630018)))

(assert (=> bs!1943964 (= (and (= (_1!37956 lt!2658560) (_2!37956 lt!2658560)) (= (regOne!41260 (regOne!41260 r!14126)) (regOne!41260 (regTwo!41260 r!14126))) (= (regTwo!41260 (regOne!41260 r!14126)) (regTwo!41260 (regTwo!41260 r!14126)))) (= lambda!469040 lambda!469038))))

(declare-fun bs!1943965 () Bool)

(assert (= bs!1943965 (and b!7630043 b!7629843)))

(assert (=> bs!1943965 (not (= lambda!469040 lambda!469028))))

(declare-fun bs!1943966 () Bool)

(assert (= bs!1943966 (and b!7630043 b!7630046)))

(assert (=> bs!1943966 (not (= lambda!469040 lambda!469039))))

(declare-fun bs!1943967 () Bool)

(assert (= bs!1943967 (and b!7630043 b!7630021)))

(assert (=> bs!1943967 (not (= lambda!469040 lambda!469037))))

(declare-fun bs!1943968 () Bool)

(assert (= bs!1943968 (and b!7630043 b!7629705)))

(assert (=> bs!1943968 (= (and (= (_1!37956 lt!2658560) s!9605) (= (regOne!41260 (regOne!41260 r!14126)) (regOne!41260 r!14126)) (= (regTwo!41260 (regOne!41260 r!14126)) (regTwo!41260 r!14126))) (= lambda!469040 lambda!469013))))

(declare-fun bs!1943969 () Bool)

(assert (= bs!1943969 (and b!7630043 d!2324051)))

(assert (=> bs!1943969 (not (= lambda!469040 lambda!469032))))

(assert (=> b!7630043 true))

(assert (=> b!7630043 true))

(declare-fun b!7630038 () Bool)

(declare-fun e!4536246 () Bool)

(declare-fun call!700483 () Bool)

(assert (=> b!7630038 (= e!4536246 call!700483)))

(declare-fun b!7630039 () Bool)

(declare-fun e!4536245 () Bool)

(assert (=> b!7630039 (= e!4536245 (= (_1!37956 lt!2658560) (Cons!73101 (c!1405703 (regOne!41260 r!14126)) Nil!73101)))))

(declare-fun b!7630040 () Bool)

(declare-fun e!4536243 () Bool)

(declare-fun e!4536244 () Bool)

(assert (=> b!7630040 (= e!4536243 e!4536244)))

(declare-fun res!3055597 () Bool)

(assert (=> b!7630040 (= res!3055597 (matchRSpec!4537 (regOne!41261 (regOne!41260 r!14126)) (_1!37956 lt!2658560)))))

(assert (=> b!7630040 (=> res!3055597 e!4536244)))

(declare-fun b!7630041 () Bool)

(declare-fun res!3055595 () Bool)

(declare-fun e!4536242 () Bool)

(assert (=> b!7630041 (=> res!3055595 e!4536242)))

(assert (=> b!7630041 (= res!3055595 call!700483)))

(declare-fun e!4536241 () Bool)

(assert (=> b!7630041 (= e!4536241 e!4536242)))

(declare-fun b!7630042 () Bool)

(declare-fun c!1405768 () Bool)

(assert (=> b!7630042 (= c!1405768 (is-Union!20374 (regOne!41260 r!14126)))))

(assert (=> b!7630042 (= e!4536245 e!4536243)))

(declare-fun call!700484 () Bool)

(assert (=> b!7630043 (= e!4536241 call!700484)))

(declare-fun b!7630044 () Bool)

(assert (=> b!7630044 (= e!4536244 (matchRSpec!4537 (regTwo!41261 (regOne!41260 r!14126)) (_1!37956 lt!2658560)))))

(declare-fun bm!700479 () Bool)

(declare-fun c!1405767 () Bool)

(assert (=> bm!700479 (= call!700484 (Exists!4528 (ite c!1405767 lambda!469039 lambda!469040)))))

(declare-fun b!7630045 () Bool)

(declare-fun e!4536247 () Bool)

(assert (=> b!7630045 (= e!4536246 e!4536247)))

(declare-fun res!3055596 () Bool)

(assert (=> b!7630045 (= res!3055596 (not (is-EmptyLang!20374 (regOne!41260 r!14126))))))

(assert (=> b!7630045 (=> (not res!3055596) (not e!4536247))))

(assert (=> b!7630046 (= e!4536242 call!700484)))

(declare-fun d!2324081 () Bool)

(declare-fun c!1405770 () Bool)

(assert (=> d!2324081 (= c!1405770 (is-EmptyExpr!20374 (regOne!41260 r!14126)))))

(assert (=> d!2324081 (= (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 lt!2658560)) e!4536246)))

(declare-fun bm!700478 () Bool)

(assert (=> bm!700478 (= call!700483 (isEmpty!41730 (_1!37956 lt!2658560)))))

(declare-fun b!7630047 () Bool)

(declare-fun c!1405769 () Bool)

(assert (=> b!7630047 (= c!1405769 (is-ElementMatch!20374 (regOne!41260 r!14126)))))

(assert (=> b!7630047 (= e!4536247 e!4536245)))

(declare-fun b!7630048 () Bool)

(assert (=> b!7630048 (= e!4536243 e!4536241)))

(assert (=> b!7630048 (= c!1405767 (is-Star!20374 (regOne!41260 r!14126)))))

(assert (= (and d!2324081 c!1405770) b!7630038))

(assert (= (and d!2324081 (not c!1405770)) b!7630045))

(assert (= (and b!7630045 res!3055596) b!7630047))

(assert (= (and b!7630047 c!1405769) b!7630039))

(assert (= (and b!7630047 (not c!1405769)) b!7630042))

(assert (= (and b!7630042 c!1405768) b!7630040))

(assert (= (and b!7630042 (not c!1405768)) b!7630048))

(assert (= (and b!7630040 (not res!3055597)) b!7630044))

(assert (= (and b!7630048 c!1405767) b!7630041))

(assert (= (and b!7630048 (not c!1405767)) b!7630043))

(assert (= (and b!7630041 (not res!3055595)) b!7630046))

(assert (= (or b!7630046 b!7630043) bm!700479))

(assert (= (or b!7630038 b!7630041) bm!700478))

(declare-fun m!8157540 () Bool)

(assert (=> b!7630040 m!8157540))

(declare-fun m!8157542 () Bool)

(assert (=> b!7630044 m!8157542))

(declare-fun m!8157544 () Bool)

(assert (=> bm!700479 m!8157544))

(assert (=> bm!700478 m!8157478))

(assert (=> b!7629705 d!2324081))

(declare-fun b!7630070 () Bool)

(declare-fun e!4536257 () Bool)

(assert (=> b!7630070 (= e!4536257 tp_is_empty!51103)))

(assert (=> b!7629709 (= tp!2227508 e!4536257)))

(declare-fun b!7630073 () Bool)

(declare-fun tp!2227547 () Bool)

(declare-fun tp!2227548 () Bool)

(assert (=> b!7630073 (= e!4536257 (and tp!2227547 tp!2227548))))

(declare-fun b!7630071 () Bool)

(declare-fun tp!2227544 () Bool)

(declare-fun tp!2227546 () Bool)

(assert (=> b!7630071 (= e!4536257 (and tp!2227544 tp!2227546))))

(declare-fun b!7630072 () Bool)

(declare-fun tp!2227545 () Bool)

(assert (=> b!7630072 (= e!4536257 tp!2227545)))

(assert (= (and b!7629709 (is-ElementMatch!20374 (reg!20703 r!14126))) b!7630070))

(assert (= (and b!7629709 (is-Concat!29219 (reg!20703 r!14126))) b!7630071))

(assert (= (and b!7629709 (is-Star!20374 (reg!20703 r!14126))) b!7630072))

(assert (= (and b!7629709 (is-Union!20374 (reg!20703 r!14126))) b!7630073))

(declare-fun b!7630078 () Bool)

(declare-fun e!4536260 () Bool)

(declare-fun tp!2227551 () Bool)

(assert (=> b!7630078 (= e!4536260 (and tp_is_empty!51103 tp!2227551))))

(assert (=> b!7629710 (= tp!2227502 e!4536260)))

(assert (= (and b!7629710 (is-Cons!73101 (t!387960 s!9605))) b!7630078))

(declare-fun b!7630079 () Bool)

(declare-fun e!4536261 () Bool)

(assert (=> b!7630079 (= e!4536261 tp_is_empty!51103)))

(assert (=> b!7629700 (= tp!2227505 e!4536261)))

(declare-fun b!7630082 () Bool)

(declare-fun tp!2227555 () Bool)

(declare-fun tp!2227556 () Bool)

(assert (=> b!7630082 (= e!4536261 (and tp!2227555 tp!2227556))))

(declare-fun b!7630080 () Bool)

(declare-fun tp!2227552 () Bool)

(declare-fun tp!2227554 () Bool)

(assert (=> b!7630080 (= e!4536261 (and tp!2227552 tp!2227554))))

(declare-fun b!7630081 () Bool)

(declare-fun tp!2227553 () Bool)

(assert (=> b!7630081 (= e!4536261 tp!2227553)))

(assert (= (and b!7629700 (is-ElementMatch!20374 (regOne!41260 r!14126))) b!7630079))

(assert (= (and b!7629700 (is-Concat!29219 (regOne!41260 r!14126))) b!7630080))

(assert (= (and b!7629700 (is-Star!20374 (regOne!41260 r!14126))) b!7630081))

(assert (= (and b!7629700 (is-Union!20374 (regOne!41260 r!14126))) b!7630082))

(declare-fun b!7630083 () Bool)

(declare-fun e!4536262 () Bool)

(assert (=> b!7630083 (= e!4536262 tp_is_empty!51103)))

(assert (=> b!7629700 (= tp!2227506 e!4536262)))

(declare-fun b!7630086 () Bool)

(declare-fun tp!2227560 () Bool)

(declare-fun tp!2227561 () Bool)

(assert (=> b!7630086 (= e!4536262 (and tp!2227560 tp!2227561))))

(declare-fun b!7630084 () Bool)

(declare-fun tp!2227557 () Bool)

(declare-fun tp!2227559 () Bool)

(assert (=> b!7630084 (= e!4536262 (and tp!2227557 tp!2227559))))

(declare-fun b!7630085 () Bool)

(declare-fun tp!2227558 () Bool)

(assert (=> b!7630085 (= e!4536262 tp!2227558)))

(assert (= (and b!7629700 (is-ElementMatch!20374 (regTwo!41260 r!14126))) b!7630083))

(assert (= (and b!7629700 (is-Concat!29219 (regTwo!41260 r!14126))) b!7630084))

(assert (= (and b!7629700 (is-Star!20374 (regTwo!41260 r!14126))) b!7630085))

(assert (= (and b!7629700 (is-Union!20374 (regTwo!41260 r!14126))) b!7630086))

(declare-fun b!7630087 () Bool)

(declare-fun e!4536263 () Bool)

(assert (=> b!7630087 (= e!4536263 tp_is_empty!51103)))

(assert (=> b!7629706 (= tp!2227504 e!4536263)))

(declare-fun b!7630090 () Bool)

(declare-fun tp!2227565 () Bool)

(declare-fun tp!2227566 () Bool)

(assert (=> b!7630090 (= e!4536263 (and tp!2227565 tp!2227566))))

(declare-fun b!7630088 () Bool)

(declare-fun tp!2227562 () Bool)

(declare-fun tp!2227564 () Bool)

(assert (=> b!7630088 (= e!4536263 (and tp!2227562 tp!2227564))))

(declare-fun b!7630089 () Bool)

(declare-fun tp!2227563 () Bool)

(assert (=> b!7630089 (= e!4536263 tp!2227563)))

(assert (= (and b!7629706 (is-ElementMatch!20374 (regOne!41261 r!14126))) b!7630087))

(assert (= (and b!7629706 (is-Concat!29219 (regOne!41261 r!14126))) b!7630088))

(assert (= (and b!7629706 (is-Star!20374 (regOne!41261 r!14126))) b!7630089))

(assert (= (and b!7629706 (is-Union!20374 (regOne!41261 r!14126))) b!7630090))

(declare-fun b!7630091 () Bool)

(declare-fun e!4536264 () Bool)

(assert (=> b!7630091 (= e!4536264 tp_is_empty!51103)))

(assert (=> b!7629706 (= tp!2227503 e!4536264)))

(declare-fun b!7630094 () Bool)

(declare-fun tp!2227570 () Bool)

(declare-fun tp!2227571 () Bool)

(assert (=> b!7630094 (= e!4536264 (and tp!2227570 tp!2227571))))

(declare-fun b!7630092 () Bool)

(declare-fun tp!2227567 () Bool)

(declare-fun tp!2227569 () Bool)

(assert (=> b!7630092 (= e!4536264 (and tp!2227567 tp!2227569))))

(declare-fun b!7630093 () Bool)

(declare-fun tp!2227568 () Bool)

(assert (=> b!7630093 (= e!4536264 tp!2227568)))

(assert (= (and b!7629706 (is-ElementMatch!20374 (regTwo!41261 r!14126))) b!7630091))

(assert (= (and b!7629706 (is-Concat!29219 (regTwo!41261 r!14126))) b!7630092))

(assert (= (and b!7629706 (is-Star!20374 (regTwo!41261 r!14126))) b!7630093))

(assert (= (and b!7629706 (is-Union!20374 (regTwo!41261 r!14126))) b!7630094))

(declare-fun b!7630095 () Bool)

(declare-fun e!4536265 () Bool)

(declare-fun tp!2227572 () Bool)

(assert (=> b!7630095 (= e!4536265 (and tp_is_empty!51103 tp!2227572))))

(assert (=> b!7629711 (= tp!2227507 e!4536265)))

(assert (= (and b!7629711 (is-Cons!73101 (t!387960 (_2!37956 cut!14)))) b!7630095))

(declare-fun b!7630096 () Bool)

(declare-fun e!4536266 () Bool)

(declare-fun tp!2227573 () Bool)

(assert (=> b!7630096 (= e!4536266 (and tp_is_empty!51103 tp!2227573))))

(assert (=> b!7629701 (= tp!2227509 e!4536266)))

(assert (= (and b!7629701 (is-Cons!73101 (t!387960 (_1!37956 cut!14)))) b!7630096))

(declare-fun b_lambda!289063 () Bool)

(assert (= b_lambda!289059 (or b!7629708 b_lambda!289063)))

(declare-fun bs!1943972 () Bool)

(declare-fun d!2324083 () Bool)

(assert (= bs!1943972 (and d!2324083 b!7629708)))

(declare-fun res!3055601 () Bool)

(declare-fun e!4536267 () Bool)

(assert (=> bs!1943972 (=> (not res!3055601) (not e!4536267))))

(assert (=> bs!1943972 (= res!3055601 (= (++!17658 (_1!37956 lt!2658615) (_2!37956 lt!2658615)) s!9605))))

(assert (=> bs!1943972 (= (dynLambda!29925 lambda!469012 lt!2658615) e!4536267)))

(declare-fun b!7630097 () Bool)

(declare-fun res!3055602 () Bool)

(assert (=> b!7630097 (=> (not res!3055602) (not e!4536267))))

(assert (=> b!7630097 (= res!3055602 (matchR!9877 (regOne!41260 r!14126) (_1!37956 lt!2658615)))))

(declare-fun b!7630098 () Bool)

(assert (=> b!7630098 (= e!4536267 (matchR!9877 (regTwo!41260 r!14126) (_2!37956 lt!2658615)))))

(assert (= (and bs!1943972 res!3055601) b!7630097))

(assert (= (and b!7630097 res!3055602) b!7630098))

(declare-fun m!8157546 () Bool)

(assert (=> bs!1943972 m!8157546))

(declare-fun m!8157548 () Bool)

(assert (=> b!7630097 m!8157548))

(declare-fun m!8157550 () Bool)

(assert (=> b!7630098 m!8157550))

(assert (=> d!2324073 d!2324083))

(declare-fun b_lambda!289065 () Bool)

(assert (= b_lambda!289061 (or b!7629705 b_lambda!289065)))

(declare-fun bs!1943974 () Bool)

(declare-fun d!2324085 () Bool)

(assert (= bs!1943974 (and d!2324085 b!7629705)))

(declare-fun res!3055603 () Bool)

(declare-fun e!4536268 () Bool)

(assert (=> bs!1943974 (=> (not res!3055603) (not e!4536268))))

(assert (=> bs!1943974 (= res!3055603 (= (++!17658 (_1!37956 lt!2658560) (_2!37956 lt!2658560)) s!9605))))

(assert (=> bs!1943974 (= (dynLambda!29925 lambda!469013 lt!2658560) e!4536268)))

(declare-fun b!7630099 () Bool)

(declare-fun res!3055604 () Bool)

(assert (=> b!7630099 (=> (not res!3055604) (not e!4536268))))

(assert (=> b!7630099 (= res!3055604 (matchRSpec!4537 (regOne!41260 r!14126) (_1!37956 lt!2658560)))))

(declare-fun b!7630100 () Bool)

(assert (=> b!7630100 (= e!4536268 (matchRSpec!4537 (regTwo!41260 r!14126) (_2!37956 lt!2658560)))))

(assert (= (and bs!1943974 res!3055603) b!7630099))

(assert (= (and b!7630099 res!3055604) b!7630100))

(declare-fun m!8157552 () Bool)

(assert (=> bs!1943974 m!8157552))

(assert (=> b!7630099 m!8157346))

(assert (=> b!7630100 m!8157344))

(assert (=> d!2324077 d!2324085))

(push 1)

(assert (not bm!700469))

(assert (not b_lambda!289065))

(assert (not bm!700470))

(assert (not b!7630084))

(assert (not b!7630019))

(assert (not b!7630082))

(assert (not bm!700479))

(assert (not b!7630097))

(assert (not b!7630098))

(assert (not bm!700457))

(assert (not b!7630072))

(assert (not b!7629841))

(assert (not b!7629978))

(assert tp_is_empty!51103)

(assert (not b!7630071))

(assert (not b!7630080))

(assert (not b!7630011))

(assert (not d!2324069))

(assert (not b!7630078))

(assert (not b!7630015))

(assert (not b!7630033))

(assert (not bm!700471))

(assert (not bm!700478))

(assert (not b!7629985))

(assert (not d!2324073))

(assert (not b!7629977))

(assert (not b!7630024))

(assert (not bm!700477))

(assert (not b!7630085))

(assert (not bm!700468))

(assert (not b!7629875))

(assert (not bm!700472))

(assert (not d!2324067))

(assert (not d!2324065))

(assert (not b!7630025))

(assert (not b!7629883))

(assert (not b!7630010))

(assert (not bm!700453))

(assert (not b!7629938))

(assert (not d!2324055))

(assert (not b!7629799))

(assert (not d!2324061))

(assert (not bs!1943972))

(assert (not bm!700448))

(assert (not b!7629882))

(assert (not b!7629986))

(assert (not b!7630028))

(assert (not bs!1943974))

(assert (not b!7629940))

(assert (not b!7630100))

(assert (not b!7629973))

(assert (not b!7630092))

(assert (not bm!700454))

(assert (not b!7629941))

(assert (not b!7630089))

(assert (not b!7630040))

(assert (not d!2324079))

(assert (not b!7629987))

(assert (not b!7630095))

(assert (not b!7629981))

(assert (not b!7630099))

(assert (not b!7629878))

(assert (not bm!700447))

(assert (not b!7630093))

(assert (not d!2324077))

(assert (not b!7630086))

(assert (not b_lambda!289063))

(assert (not d!2324051))

(assert (not b!7630090))

(assert (not b!7630081))

(assert (not b!7629939))

(assert (not b!7629884))

(assert (not b!7630094))

(assert (not b!7629837))

(assert (not d!2324047))

(assert (not b!7630044))

(assert (not b!7630032))

(assert (not b!7630073))

(assert (not b!7630088))

(assert (not b!7630034))

(assert (not b!7630096))

(assert (not b!7629945))

(assert (not d!2324059))

(assert (not d!2324053))

(assert (not d!2324075))

(assert (not b!7629937))

(assert (not b!7629874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

