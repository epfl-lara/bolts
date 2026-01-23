; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663980 () Bool)

(assert start!663980)

(declare-fun b!6883629 () Bool)

(assert (=> b!6883629 true))

(assert (=> b!6883629 true))

(assert (=> b!6883629 true))

(declare-fun lambda!389712 () Int)

(declare-fun lambda!389711 () Int)

(assert (=> b!6883629 (not (= lambda!389712 lambda!389711))))

(assert (=> b!6883629 true))

(assert (=> b!6883629 true))

(assert (=> b!6883629 true))

(declare-fun bs!1838280 () Bool)

(declare-fun b!6883625 () Bool)

(assert (= bs!1838280 (and b!6883625 b!6883629)))

(declare-datatypes ((C!33822 0))(
  ( (C!33823 (val!26613 Int)) )
))
(declare-datatypes ((List!66533 0))(
  ( (Nil!66409) (Cons!66409 (h!72857 C!33822) (t!380276 List!66533)) )
))
(declare-fun s!14361 () List!66533)

(declare-fun lambda!389713 () Int)

(declare-datatypes ((Regex!16776 0))(
  ( (ElementMatch!16776 (c!1280378 C!33822)) (Concat!25621 (regOne!34064 Regex!16776) (regTwo!34064 Regex!16776)) (EmptyExpr!16776) (Star!16776 (reg!17105 Regex!16776)) (EmptyLang!16776) (Union!16776 (regOne!34065 Regex!16776) (regTwo!34065 Regex!16776)) )
))
(declare-fun r2!6280 () Regex!16776)

(declare-fun lt!2460340 () Regex!16776)

(declare-fun r1!6342 () Regex!16776)

(declare-fun r3!135 () Regex!16776)

(declare-datatypes ((tuple2!67298 0))(
  ( (tuple2!67299 (_1!36952 List!66533) (_2!36952 List!66533)) )
))
(declare-fun lt!2460335 () tuple2!67298)

(assert (=> bs!1838280 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 lt!2460340) (= r2!6280 r3!135)) (= lambda!389713 lambda!389711))))

(assert (=> bs!1838280 (not (= lambda!389713 lambda!389712))))

(assert (=> b!6883625 true))

(assert (=> b!6883625 true))

(assert (=> b!6883625 true))

(declare-fun lambda!389714 () Int)

(assert (=> bs!1838280 (not (= lambda!389714 lambda!389711))))

(assert (=> bs!1838280 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 lt!2460340) (= r2!6280 r3!135)) (= lambda!389714 lambda!389712))))

(assert (=> b!6883625 (not (= lambda!389714 lambda!389713))))

(assert (=> b!6883625 true))

(assert (=> b!6883625 true))

(assert (=> b!6883625 true))

(declare-fun b!6883616 () Bool)

(declare-fun e!4147827 () Bool)

(declare-fun tp!1893468 () Bool)

(declare-fun tp!1893472 () Bool)

(assert (=> b!6883616 (= e!4147827 (and tp!1893468 tp!1893472))))

(declare-fun b!6883617 () Bool)

(declare-fun e!4147825 () Bool)

(declare-fun e!4147826 () Bool)

(assert (=> b!6883617 (= e!4147825 (not e!4147826))))

(declare-fun res!2806054 () Bool)

(assert (=> b!6883617 (=> res!2806054 e!4147826)))

(declare-fun lt!2460341 () Bool)

(assert (=> b!6883617 (= res!2806054 (not lt!2460341))))

(declare-fun lt!2460332 () Regex!16776)

(declare-fun matchR!8921 (Regex!16776 List!66533) Bool)

(declare-fun matchRSpec!3839 (Regex!16776 List!66533) Bool)

(assert (=> b!6883617 (= (matchR!8921 lt!2460332 s!14361) (matchRSpec!3839 lt!2460332 s!14361))))

(declare-datatypes ((Unit!160272 0))(
  ( (Unit!160273) )
))
(declare-fun lt!2460336 () Unit!160272)

(declare-fun mainMatchTheorem!3839 (Regex!16776 List!66533) Unit!160272)

(assert (=> b!6883617 (= lt!2460336 (mainMatchTheorem!3839 lt!2460332 s!14361))))

(declare-fun lt!2460328 () Regex!16776)

(assert (=> b!6883617 (= lt!2460341 (matchRSpec!3839 lt!2460328 s!14361))))

(assert (=> b!6883617 (= lt!2460341 (matchR!8921 lt!2460328 s!14361))))

(declare-fun lt!2460334 () Unit!160272)

(assert (=> b!6883617 (= lt!2460334 (mainMatchTheorem!3839 lt!2460328 s!14361))))

(assert (=> b!6883617 (= lt!2460332 (Concat!25621 r1!6342 (Concat!25621 r2!6280 r3!135)))))

(assert (=> b!6883617 (= lt!2460328 (Concat!25621 lt!2460340 r3!135))))

(assert (=> b!6883617 (= lt!2460340 (Concat!25621 r1!6342 r2!6280))))

(declare-fun b!6883618 () Bool)

(declare-fun e!4147829 () Bool)

(declare-fun tp!1893474 () Bool)

(declare-fun tp!1893479 () Bool)

(assert (=> b!6883618 (= e!4147829 (and tp!1893474 tp!1893479))))

(declare-fun b!6883619 () Bool)

(declare-fun tp!1893464 () Bool)

(assert (=> b!6883619 (= e!4147829 tp!1893464)))

(declare-fun b!6883620 () Bool)

(declare-fun tp!1893465 () Bool)

(declare-fun tp!1893467 () Bool)

(assert (=> b!6883620 (= e!4147829 (and tp!1893465 tp!1893467))))

(declare-fun b!6883621 () Bool)

(declare-fun tp_is_empty!42777 () Bool)

(assert (=> b!6883621 (= e!4147829 tp_is_empty!42777)))

(declare-fun b!6883622 () Bool)

(declare-fun res!2806053 () Bool)

(assert (=> b!6883622 (=> (not res!2806053) (not e!4147825))))

(declare-fun validRegex!8484 (Regex!16776) Bool)

(assert (=> b!6883622 (= res!2806053 (validRegex!8484 r2!6280))))

(declare-fun b!6883623 () Bool)

(declare-fun res!2806049 () Bool)

(assert (=> b!6883623 (=> (not res!2806049) (not e!4147825))))

(assert (=> b!6883623 (= res!2806049 (validRegex!8484 r3!135))))

(declare-fun b!6883624 () Bool)

(assert (=> b!6883624 (= e!4147827 tp_is_empty!42777)))

(declare-fun e!4147831 () Bool)

(declare-fun ++!14861 (List!66533 List!66533) List!66533)

(assert (=> b!6883625 (= e!4147831 (= (++!14861 Nil!66409 (_1!36952 lt!2460335)) (_1!36952 lt!2460335)))))

(declare-fun Exists!3788 (Int) Bool)

(assert (=> b!6883625 (= (Exists!3788 lambda!389713) (Exists!3788 lambda!389714))))

(declare-fun lt!2460329 () Unit!160272)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2267 (Regex!16776 Regex!16776 List!66533) Unit!160272)

(assert (=> b!6883625 (= lt!2460329 (lemmaExistCutMatchRandMatchRSpecEquivalent!2267 r1!6342 r2!6280 (_1!36952 lt!2460335)))))

(declare-datatypes ((Option!16561 0))(
  ( (None!16560) (Some!16560 (v!52832 tuple2!67298)) )
))
(declare-fun isDefined!13264 (Option!16561) Bool)

(declare-fun findConcatSeparation!2975 (Regex!16776 Regex!16776 List!66533 List!66533 List!66533) Option!16561)

(assert (=> b!6883625 (= (isDefined!13264 (findConcatSeparation!2975 r1!6342 r2!6280 Nil!66409 (_1!36952 lt!2460335) (_1!36952 lt!2460335))) (Exists!3788 lambda!389713))))

(declare-fun lt!2460330 () Unit!160272)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2739 (Regex!16776 Regex!16776 List!66533) Unit!160272)

(assert (=> b!6883625 (= lt!2460330 (lemmaFindConcatSeparationEquivalentToExists!2739 r1!6342 r2!6280 (_1!36952 lt!2460335)))))

(declare-fun b!6883626 () Bool)

(declare-fun e!4147828 () Bool)

(declare-fun tp!1893478 () Bool)

(assert (=> b!6883626 (= e!4147828 (and tp_is_empty!42777 tp!1893478))))

(declare-fun res!2806050 () Bool)

(assert (=> start!663980 (=> (not res!2806050) (not e!4147825))))

(assert (=> start!663980 (= res!2806050 (validRegex!8484 r1!6342))))

(assert (=> start!663980 e!4147825))

(assert (=> start!663980 e!4147829))

(assert (=> start!663980 e!4147827))

(declare-fun e!4147830 () Bool)

(assert (=> start!663980 e!4147830))

(assert (=> start!663980 e!4147828))

(declare-fun b!6883627 () Bool)

(declare-fun tp!1893475 () Bool)

(assert (=> b!6883627 (= e!4147830 tp!1893475)))

(declare-fun b!6883628 () Bool)

(assert (=> b!6883628 (= e!4147830 tp_is_empty!42777)))

(assert (=> b!6883629 (= e!4147826 e!4147831)))

(declare-fun res!2806052 () Bool)

(assert (=> b!6883629 (=> res!2806052 e!4147831)))

(declare-fun lt!2460331 () Bool)

(assert (=> b!6883629 (= res!2806052 (not lt!2460331))))

(assert (=> b!6883629 (= lt!2460331 (matchRSpec!3839 lt!2460340 (_1!36952 lt!2460335)))))

(assert (=> b!6883629 (= lt!2460331 (matchR!8921 lt!2460340 (_1!36952 lt!2460335)))))

(declare-fun lt!2460339 () Unit!160272)

(assert (=> b!6883629 (= lt!2460339 (mainMatchTheorem!3839 lt!2460340 (_1!36952 lt!2460335)))))

(declare-fun lt!2460338 () Option!16561)

(declare-fun get!23127 (Option!16561) tuple2!67298)

(assert (=> b!6883629 (= lt!2460335 (get!23127 lt!2460338))))

(assert (=> b!6883629 (= (Exists!3788 lambda!389711) (Exists!3788 lambda!389712))))

(declare-fun lt!2460337 () Unit!160272)

(assert (=> b!6883629 (= lt!2460337 (lemmaExistCutMatchRandMatchRSpecEquivalent!2267 lt!2460340 r3!135 s!14361))))

(assert (=> b!6883629 (= (isDefined!13264 lt!2460338) (Exists!3788 lambda!389711))))

(assert (=> b!6883629 (= lt!2460338 (findConcatSeparation!2975 lt!2460340 r3!135 Nil!66409 s!14361 s!14361))))

(declare-fun lt!2460333 () Unit!160272)

(assert (=> b!6883629 (= lt!2460333 (lemmaFindConcatSeparationEquivalentToExists!2739 lt!2460340 r3!135 s!14361))))

(declare-fun b!6883630 () Bool)

(declare-fun tp!1893476 () Bool)

(declare-fun tp!1893473 () Bool)

(assert (=> b!6883630 (= e!4147830 (and tp!1893476 tp!1893473))))

(declare-fun b!6883631 () Bool)

(declare-fun tp!1893466 () Bool)

(declare-fun tp!1893477 () Bool)

(assert (=> b!6883631 (= e!4147830 (and tp!1893466 tp!1893477))))

(declare-fun b!6883632 () Bool)

(declare-fun tp!1893469 () Bool)

(declare-fun tp!1893471 () Bool)

(assert (=> b!6883632 (= e!4147827 (and tp!1893469 tp!1893471))))

(declare-fun b!6883633 () Bool)

(declare-fun res!2806051 () Bool)

(assert (=> b!6883633 (=> res!2806051 e!4147831)))

(assert (=> b!6883633 (= res!2806051 (not (matchR!8921 r3!135 (_2!36952 lt!2460335))))))

(declare-fun b!6883634 () Bool)

(declare-fun tp!1893470 () Bool)

(assert (=> b!6883634 (= e!4147827 tp!1893470)))

(assert (= (and start!663980 res!2806050) b!6883622))

(assert (= (and b!6883622 res!2806053) b!6883623))

(assert (= (and b!6883623 res!2806049) b!6883617))

(assert (= (and b!6883617 (not res!2806054)) b!6883629))

(assert (= (and b!6883629 (not res!2806052)) b!6883633))

(assert (= (and b!6883633 (not res!2806051)) b!6883625))

(assert (= (and start!663980 (is-ElementMatch!16776 r1!6342)) b!6883621))

(assert (= (and start!663980 (is-Concat!25621 r1!6342)) b!6883618))

(assert (= (and start!663980 (is-Star!16776 r1!6342)) b!6883619))

(assert (= (and start!663980 (is-Union!16776 r1!6342)) b!6883620))

(assert (= (and start!663980 (is-ElementMatch!16776 r2!6280)) b!6883624))

(assert (= (and start!663980 (is-Concat!25621 r2!6280)) b!6883632))

(assert (= (and start!663980 (is-Star!16776 r2!6280)) b!6883634))

(assert (= (and start!663980 (is-Union!16776 r2!6280)) b!6883616))

(assert (= (and start!663980 (is-ElementMatch!16776 r3!135)) b!6883628))

(assert (= (and start!663980 (is-Concat!25621 r3!135)) b!6883631))

(assert (= (and start!663980 (is-Star!16776 r3!135)) b!6883627))

(assert (= (and start!663980 (is-Union!16776 r3!135)) b!6883630))

(assert (= (and start!663980 (is-Cons!66409 s!14361)) b!6883626))

(declare-fun m!7607504 () Bool)

(assert (=> b!6883617 m!7607504))

(declare-fun m!7607506 () Bool)

(assert (=> b!6883617 m!7607506))

(declare-fun m!7607508 () Bool)

(assert (=> b!6883617 m!7607508))

(declare-fun m!7607510 () Bool)

(assert (=> b!6883617 m!7607510))

(declare-fun m!7607512 () Bool)

(assert (=> b!6883617 m!7607512))

(declare-fun m!7607514 () Bool)

(assert (=> b!6883617 m!7607514))

(declare-fun m!7607516 () Bool)

(assert (=> b!6883625 m!7607516))

(declare-fun m!7607518 () Bool)

(assert (=> b!6883625 m!7607518))

(declare-fun m!7607520 () Bool)

(assert (=> b!6883625 m!7607520))

(declare-fun m!7607522 () Bool)

(assert (=> b!6883625 m!7607522))

(assert (=> b!6883625 m!7607522))

(declare-fun m!7607524 () Bool)

(assert (=> b!6883625 m!7607524))

(declare-fun m!7607526 () Bool)

(assert (=> b!6883625 m!7607526))

(assert (=> b!6883625 m!7607516))

(declare-fun m!7607528 () Bool)

(assert (=> b!6883625 m!7607528))

(declare-fun m!7607530 () Bool)

(assert (=> start!663980 m!7607530))

(declare-fun m!7607532 () Bool)

(assert (=> b!6883633 m!7607532))

(declare-fun m!7607534 () Bool)

(assert (=> b!6883623 m!7607534))

(declare-fun m!7607536 () Bool)

(assert (=> b!6883629 m!7607536))

(declare-fun m!7607538 () Bool)

(assert (=> b!6883629 m!7607538))

(declare-fun m!7607540 () Bool)

(assert (=> b!6883629 m!7607540))

(declare-fun m!7607542 () Bool)

(assert (=> b!6883629 m!7607542))

(assert (=> b!6883629 m!7607536))

(declare-fun m!7607544 () Bool)

(assert (=> b!6883629 m!7607544))

(declare-fun m!7607546 () Bool)

(assert (=> b!6883629 m!7607546))

(declare-fun m!7607548 () Bool)

(assert (=> b!6883629 m!7607548))

(declare-fun m!7607550 () Bool)

(assert (=> b!6883629 m!7607550))

(declare-fun m!7607552 () Bool)

(assert (=> b!6883629 m!7607552))

(declare-fun m!7607554 () Bool)

(assert (=> b!6883629 m!7607554))

(declare-fun m!7607556 () Bool)

(assert (=> b!6883622 m!7607556))

(push 1)

(assert (not b!6883625))

(assert (not start!663980))

(assert (not b!6883634))

(assert (not b!6883616))

(assert (not b!6883627))

(assert (not b!6883630))

(assert (not b!6883631))

(assert (not b!6883619))

(assert (not b!6883626))

(assert (not b!6883629))

(assert (not b!6883618))

(assert (not b!6883633))

(assert (not b!6883617))

(assert tp_is_empty!42777)

(assert (not b!6883623))

(assert (not b!6883622))

(assert (not b!6883620))

(assert (not b!6883632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6883746 () Bool)

(declare-fun e!4147881 () Bool)

(declare-fun call!626615 () Bool)

(assert (=> b!6883746 (= e!4147881 call!626615)))

(declare-fun bm!626609 () Bool)

(declare-fun call!626616 () Bool)

(assert (=> bm!626609 (= call!626615 call!626616)))

(declare-fun b!6883747 () Bool)

(declare-fun res!2806109 () Bool)

(declare-fun e!4147882 () Bool)

(assert (=> b!6883747 (=> res!2806109 e!4147882)))

(assert (=> b!6883747 (= res!2806109 (not (is-Concat!25621 r1!6342)))))

(declare-fun e!4147880 () Bool)

(assert (=> b!6883747 (= e!4147880 e!4147882)))

(declare-fun b!6883748 () Bool)

(declare-fun e!4147884 () Bool)

(declare-fun e!4147885 () Bool)

(assert (=> b!6883748 (= e!4147884 e!4147885)))

(declare-fun res!2806111 () Bool)

(declare-fun nullable!6679 (Regex!16776) Bool)

(assert (=> b!6883748 (= res!2806111 (not (nullable!6679 (reg!17105 r1!6342))))))

(assert (=> b!6883748 (=> (not res!2806111) (not e!4147885))))

(declare-fun b!6883749 () Bool)

(declare-fun res!2806107 () Bool)

(assert (=> b!6883749 (=> (not res!2806107) (not e!4147881))))

(declare-fun call!626614 () Bool)

(assert (=> b!6883749 (= res!2806107 call!626614)))

(assert (=> b!6883749 (= e!4147880 e!4147881)))

(declare-fun b!6883750 () Bool)

(assert (=> b!6883750 (= e!4147885 call!626616)))

(declare-fun bm!626610 () Bool)

(declare-fun c!1280384 () Bool)

(assert (=> bm!626610 (= call!626614 (validRegex!8484 (ite c!1280384 (regOne!34065 r1!6342) (regTwo!34064 r1!6342))))))

(declare-fun b!6883751 () Bool)

(declare-fun e!4147879 () Bool)

(assert (=> b!6883751 (= e!4147879 call!626614)))

(declare-fun d!2160232 () Bool)

(declare-fun res!2806108 () Bool)

(declare-fun e!4147883 () Bool)

(assert (=> d!2160232 (=> res!2806108 e!4147883)))

(assert (=> d!2160232 (= res!2806108 (is-ElementMatch!16776 r1!6342))))

(assert (=> d!2160232 (= (validRegex!8484 r1!6342) e!4147883)))

(declare-fun b!6883752 () Bool)

(assert (=> b!6883752 (= e!4147884 e!4147880)))

(assert (=> b!6883752 (= c!1280384 (is-Union!16776 r1!6342))))

(declare-fun b!6883753 () Bool)

(assert (=> b!6883753 (= e!4147882 e!4147879)))

(declare-fun res!2806110 () Bool)

(assert (=> b!6883753 (=> (not res!2806110) (not e!4147879))))

(assert (=> b!6883753 (= res!2806110 call!626615)))

(declare-fun b!6883754 () Bool)

(assert (=> b!6883754 (= e!4147883 e!4147884)))

(declare-fun c!1280385 () Bool)

(assert (=> b!6883754 (= c!1280385 (is-Star!16776 r1!6342))))

(declare-fun bm!626611 () Bool)

(assert (=> bm!626611 (= call!626616 (validRegex!8484 (ite c!1280385 (reg!17105 r1!6342) (ite c!1280384 (regTwo!34065 r1!6342) (regOne!34064 r1!6342)))))))

(assert (= (and d!2160232 (not res!2806108)) b!6883754))

(assert (= (and b!6883754 c!1280385) b!6883748))

(assert (= (and b!6883754 (not c!1280385)) b!6883752))

(assert (= (and b!6883748 res!2806111) b!6883750))

(assert (= (and b!6883752 c!1280384) b!6883749))

(assert (= (and b!6883752 (not c!1280384)) b!6883747))

(assert (= (and b!6883749 res!2806107) b!6883746))

(assert (= (and b!6883747 (not res!2806109)) b!6883753))

(assert (= (and b!6883753 res!2806110) b!6883751))

(assert (= (or b!6883749 b!6883751) bm!626610))

(assert (= (or b!6883746 b!6883753) bm!626609))

(assert (= (or b!6883750 bm!626609) bm!626611))

(declare-fun m!7607612 () Bool)

(assert (=> b!6883748 m!7607612))

(declare-fun m!7607614 () Bool)

(assert (=> bm!626610 m!7607614))

(declare-fun m!7607616 () Bool)

(assert (=> bm!626611 m!7607616))

(assert (=> start!663980 d!2160232))

(declare-fun b!6883755 () Bool)

(declare-fun e!4147888 () Bool)

(declare-fun call!626618 () Bool)

(assert (=> b!6883755 (= e!4147888 call!626618)))

(declare-fun bm!626612 () Bool)

(declare-fun call!626619 () Bool)

(assert (=> bm!626612 (= call!626618 call!626619)))

(declare-fun b!6883756 () Bool)

(declare-fun res!2806114 () Bool)

(declare-fun e!4147889 () Bool)

(assert (=> b!6883756 (=> res!2806114 e!4147889)))

(assert (=> b!6883756 (= res!2806114 (not (is-Concat!25621 r3!135)))))

(declare-fun e!4147887 () Bool)

(assert (=> b!6883756 (= e!4147887 e!4147889)))

(declare-fun b!6883757 () Bool)

(declare-fun e!4147891 () Bool)

(declare-fun e!4147892 () Bool)

(assert (=> b!6883757 (= e!4147891 e!4147892)))

(declare-fun res!2806116 () Bool)

(assert (=> b!6883757 (= res!2806116 (not (nullable!6679 (reg!17105 r3!135))))))

(assert (=> b!6883757 (=> (not res!2806116) (not e!4147892))))

(declare-fun b!6883758 () Bool)

(declare-fun res!2806112 () Bool)

(assert (=> b!6883758 (=> (not res!2806112) (not e!4147888))))

(declare-fun call!626617 () Bool)

(assert (=> b!6883758 (= res!2806112 call!626617)))

(assert (=> b!6883758 (= e!4147887 e!4147888)))

(declare-fun b!6883759 () Bool)

(assert (=> b!6883759 (= e!4147892 call!626619)))

(declare-fun bm!626613 () Bool)

(declare-fun c!1280386 () Bool)

(assert (=> bm!626613 (= call!626617 (validRegex!8484 (ite c!1280386 (regOne!34065 r3!135) (regTwo!34064 r3!135))))))

(declare-fun b!6883760 () Bool)

(declare-fun e!4147886 () Bool)

(assert (=> b!6883760 (= e!4147886 call!626617)))

(declare-fun d!2160234 () Bool)

(declare-fun res!2806113 () Bool)

(declare-fun e!4147890 () Bool)

(assert (=> d!2160234 (=> res!2806113 e!4147890)))

(assert (=> d!2160234 (= res!2806113 (is-ElementMatch!16776 r3!135))))

(assert (=> d!2160234 (= (validRegex!8484 r3!135) e!4147890)))

(declare-fun b!6883761 () Bool)

(assert (=> b!6883761 (= e!4147891 e!4147887)))

(assert (=> b!6883761 (= c!1280386 (is-Union!16776 r3!135))))

(declare-fun b!6883762 () Bool)

(assert (=> b!6883762 (= e!4147889 e!4147886)))

(declare-fun res!2806115 () Bool)

(assert (=> b!6883762 (=> (not res!2806115) (not e!4147886))))

(assert (=> b!6883762 (= res!2806115 call!626618)))

(declare-fun b!6883763 () Bool)

(assert (=> b!6883763 (= e!4147890 e!4147891)))

(declare-fun c!1280387 () Bool)

(assert (=> b!6883763 (= c!1280387 (is-Star!16776 r3!135))))

(declare-fun bm!626614 () Bool)

(assert (=> bm!626614 (= call!626619 (validRegex!8484 (ite c!1280387 (reg!17105 r3!135) (ite c!1280386 (regTwo!34065 r3!135) (regOne!34064 r3!135)))))))

(assert (= (and d!2160234 (not res!2806113)) b!6883763))

(assert (= (and b!6883763 c!1280387) b!6883757))

(assert (= (and b!6883763 (not c!1280387)) b!6883761))

(assert (= (and b!6883757 res!2806116) b!6883759))

(assert (= (and b!6883761 c!1280386) b!6883758))

(assert (= (and b!6883761 (not c!1280386)) b!6883756))

(assert (= (and b!6883758 res!2806112) b!6883755))

(assert (= (and b!6883756 (not res!2806114)) b!6883762))

(assert (= (and b!6883762 res!2806115) b!6883760))

(assert (= (or b!6883758 b!6883760) bm!626613))

(assert (= (or b!6883755 b!6883762) bm!626612))

(assert (= (or b!6883759 bm!626612) bm!626614))

(declare-fun m!7607618 () Bool)

(assert (=> b!6883757 m!7607618))

(declare-fun m!7607620 () Bool)

(assert (=> bm!626613 m!7607620))

(declare-fun m!7607622 () Bool)

(assert (=> bm!626614 m!7607622))

(assert (=> b!6883623 d!2160234))

(declare-fun b!6883764 () Bool)

(declare-fun e!4147895 () Bool)

(declare-fun call!626621 () Bool)

(assert (=> b!6883764 (= e!4147895 call!626621)))

(declare-fun bm!626615 () Bool)

(declare-fun call!626622 () Bool)

(assert (=> bm!626615 (= call!626621 call!626622)))

(declare-fun b!6883765 () Bool)

(declare-fun res!2806119 () Bool)

(declare-fun e!4147896 () Bool)

(assert (=> b!6883765 (=> res!2806119 e!4147896)))

(assert (=> b!6883765 (= res!2806119 (not (is-Concat!25621 r2!6280)))))

(declare-fun e!4147894 () Bool)

(assert (=> b!6883765 (= e!4147894 e!4147896)))

(declare-fun b!6883766 () Bool)

(declare-fun e!4147898 () Bool)

(declare-fun e!4147899 () Bool)

(assert (=> b!6883766 (= e!4147898 e!4147899)))

(declare-fun res!2806121 () Bool)

(assert (=> b!6883766 (= res!2806121 (not (nullable!6679 (reg!17105 r2!6280))))))

(assert (=> b!6883766 (=> (not res!2806121) (not e!4147899))))

(declare-fun b!6883767 () Bool)

(declare-fun res!2806117 () Bool)

(assert (=> b!6883767 (=> (not res!2806117) (not e!4147895))))

(declare-fun call!626620 () Bool)

(assert (=> b!6883767 (= res!2806117 call!626620)))

(assert (=> b!6883767 (= e!4147894 e!4147895)))

(declare-fun b!6883768 () Bool)

(assert (=> b!6883768 (= e!4147899 call!626622)))

(declare-fun bm!626616 () Bool)

(declare-fun c!1280388 () Bool)

(assert (=> bm!626616 (= call!626620 (validRegex!8484 (ite c!1280388 (regOne!34065 r2!6280) (regTwo!34064 r2!6280))))))

(declare-fun b!6883769 () Bool)

(declare-fun e!4147893 () Bool)

(assert (=> b!6883769 (= e!4147893 call!626620)))

(declare-fun d!2160236 () Bool)

(declare-fun res!2806118 () Bool)

(declare-fun e!4147897 () Bool)

(assert (=> d!2160236 (=> res!2806118 e!4147897)))

(assert (=> d!2160236 (= res!2806118 (is-ElementMatch!16776 r2!6280))))

(assert (=> d!2160236 (= (validRegex!8484 r2!6280) e!4147897)))

(declare-fun b!6883770 () Bool)

(assert (=> b!6883770 (= e!4147898 e!4147894)))

(assert (=> b!6883770 (= c!1280388 (is-Union!16776 r2!6280))))

(declare-fun b!6883771 () Bool)

(assert (=> b!6883771 (= e!4147896 e!4147893)))

(declare-fun res!2806120 () Bool)

(assert (=> b!6883771 (=> (not res!2806120) (not e!4147893))))

(assert (=> b!6883771 (= res!2806120 call!626621)))

(declare-fun b!6883772 () Bool)

(assert (=> b!6883772 (= e!4147897 e!4147898)))

(declare-fun c!1280389 () Bool)

(assert (=> b!6883772 (= c!1280389 (is-Star!16776 r2!6280))))

(declare-fun bm!626617 () Bool)

(assert (=> bm!626617 (= call!626622 (validRegex!8484 (ite c!1280389 (reg!17105 r2!6280) (ite c!1280388 (regTwo!34065 r2!6280) (regOne!34064 r2!6280)))))))

(assert (= (and d!2160236 (not res!2806118)) b!6883772))

(assert (= (and b!6883772 c!1280389) b!6883766))

(assert (= (and b!6883772 (not c!1280389)) b!6883770))

(assert (= (and b!6883766 res!2806121) b!6883768))

(assert (= (and b!6883770 c!1280388) b!6883767))

(assert (= (and b!6883770 (not c!1280388)) b!6883765))

(assert (= (and b!6883767 res!2806117) b!6883764))

(assert (= (and b!6883765 (not res!2806119)) b!6883771))

(assert (= (and b!6883771 res!2806120) b!6883769))

(assert (= (or b!6883767 b!6883769) bm!626616))

(assert (= (or b!6883764 b!6883771) bm!626615))

(assert (= (or b!6883768 bm!626615) bm!626617))

(declare-fun m!7607624 () Bool)

(assert (=> b!6883766 m!7607624))

(declare-fun m!7607626 () Bool)

(assert (=> bm!626616 m!7607626))

(declare-fun m!7607628 () Bool)

(assert (=> bm!626617 m!7607628))

(assert (=> b!6883622 d!2160236))

(declare-fun b!6883801 () Bool)

(declare-fun e!4147915 () Bool)

(declare-fun head!13811 (List!66533) C!33822)

(assert (=> b!6883801 (= e!4147915 (not (= (head!13811 s!14361) (c!1280378 lt!2460332))))))

(declare-fun bm!626620 () Bool)

(declare-fun call!626625 () Bool)

(declare-fun isEmpty!38676 (List!66533) Bool)

(assert (=> bm!626620 (= call!626625 (isEmpty!38676 s!14361))))

(declare-fun b!6883802 () Bool)

(declare-fun e!4147920 () Bool)

(assert (=> b!6883802 (= e!4147920 (nullable!6679 lt!2460332))))

(declare-fun b!6883803 () Bool)

(declare-fun e!4147916 () Bool)

(assert (=> b!6883803 (= e!4147916 e!4147915)))

(declare-fun res!2806145 () Bool)

(assert (=> b!6883803 (=> res!2806145 e!4147915)))

(assert (=> b!6883803 (= res!2806145 call!626625)))

(declare-fun d!2160238 () Bool)

(declare-fun e!4147918 () Bool)

(assert (=> d!2160238 e!4147918))

(declare-fun c!1280398 () Bool)

(assert (=> d!2160238 (= c!1280398 (is-EmptyExpr!16776 lt!2460332))))

(declare-fun lt!2460386 () Bool)

(assert (=> d!2160238 (= lt!2460386 e!4147920)))

(declare-fun c!1280397 () Bool)

(assert (=> d!2160238 (= c!1280397 (isEmpty!38676 s!14361))))

(assert (=> d!2160238 (validRegex!8484 lt!2460332)))

(assert (=> d!2160238 (= (matchR!8921 lt!2460332 s!14361) lt!2460386)))

(declare-fun b!6883804 () Bool)

(declare-fun res!2806144 () Bool)

(declare-fun e!4147917 () Bool)

(assert (=> b!6883804 (=> res!2806144 e!4147917)))

(declare-fun e!4147914 () Bool)

(assert (=> b!6883804 (= res!2806144 e!4147914)))

(declare-fun res!2806139 () Bool)

(assert (=> b!6883804 (=> (not res!2806139) (not e!4147914))))

(assert (=> b!6883804 (= res!2806139 lt!2460386)))

(declare-fun b!6883805 () Bool)

(declare-fun derivativeStep!5358 (Regex!16776 C!33822) Regex!16776)

(declare-fun tail!12863 (List!66533) List!66533)

(assert (=> b!6883805 (= e!4147920 (matchR!8921 (derivativeStep!5358 lt!2460332 (head!13811 s!14361)) (tail!12863 s!14361)))))

(declare-fun b!6883806 () Bool)

(declare-fun res!2806141 () Bool)

(assert (=> b!6883806 (=> (not res!2806141) (not e!4147914))))

(assert (=> b!6883806 (= res!2806141 (isEmpty!38676 (tail!12863 s!14361)))))

(declare-fun b!6883807 () Bool)

(assert (=> b!6883807 (= e!4147917 e!4147916)))

(declare-fun res!2806142 () Bool)

(assert (=> b!6883807 (=> (not res!2806142) (not e!4147916))))

(assert (=> b!6883807 (= res!2806142 (not lt!2460386))))

(declare-fun b!6883808 () Bool)

(declare-fun res!2806143 () Bool)

(assert (=> b!6883808 (=> res!2806143 e!4147917)))

(assert (=> b!6883808 (= res!2806143 (not (is-ElementMatch!16776 lt!2460332)))))

(declare-fun e!4147919 () Bool)

(assert (=> b!6883808 (= e!4147919 e!4147917)))

(declare-fun b!6883809 () Bool)

(assert (=> b!6883809 (= e!4147918 (= lt!2460386 call!626625))))

(declare-fun b!6883810 () Bool)

(declare-fun res!2806138 () Bool)

(assert (=> b!6883810 (=> res!2806138 e!4147915)))

(assert (=> b!6883810 (= res!2806138 (not (isEmpty!38676 (tail!12863 s!14361))))))

(declare-fun b!6883811 () Bool)

(assert (=> b!6883811 (= e!4147914 (= (head!13811 s!14361) (c!1280378 lt!2460332)))))

(declare-fun b!6883812 () Bool)

(declare-fun res!2806140 () Bool)

(assert (=> b!6883812 (=> (not res!2806140) (not e!4147914))))

(assert (=> b!6883812 (= res!2806140 (not call!626625))))

(declare-fun b!6883813 () Bool)

(assert (=> b!6883813 (= e!4147918 e!4147919)))

(declare-fun c!1280396 () Bool)

(assert (=> b!6883813 (= c!1280396 (is-EmptyLang!16776 lt!2460332))))

(declare-fun b!6883814 () Bool)

(assert (=> b!6883814 (= e!4147919 (not lt!2460386))))

(assert (= (and d!2160238 c!1280397) b!6883802))

(assert (= (and d!2160238 (not c!1280397)) b!6883805))

(assert (= (and d!2160238 c!1280398) b!6883809))

(assert (= (and d!2160238 (not c!1280398)) b!6883813))

(assert (= (and b!6883813 c!1280396) b!6883814))

(assert (= (and b!6883813 (not c!1280396)) b!6883808))

(assert (= (and b!6883808 (not res!2806143)) b!6883804))

(assert (= (and b!6883804 res!2806139) b!6883812))

(assert (= (and b!6883812 res!2806140) b!6883806))

(assert (= (and b!6883806 res!2806141) b!6883811))

(assert (= (and b!6883804 (not res!2806144)) b!6883807))

(assert (= (and b!6883807 res!2806142) b!6883803))

(assert (= (and b!6883803 (not res!2806145)) b!6883810))

(assert (= (and b!6883810 (not res!2806138)) b!6883801))

(assert (= (or b!6883809 b!6883803 b!6883812) bm!626620))

(declare-fun m!7607630 () Bool)

(assert (=> bm!626620 m!7607630))

(declare-fun m!7607632 () Bool)

(assert (=> b!6883805 m!7607632))

(assert (=> b!6883805 m!7607632))

(declare-fun m!7607634 () Bool)

(assert (=> b!6883805 m!7607634))

(declare-fun m!7607636 () Bool)

(assert (=> b!6883805 m!7607636))

(assert (=> b!6883805 m!7607634))

(assert (=> b!6883805 m!7607636))

(declare-fun m!7607638 () Bool)

(assert (=> b!6883805 m!7607638))

(assert (=> d!2160238 m!7607630))

(declare-fun m!7607640 () Bool)

(assert (=> d!2160238 m!7607640))

(assert (=> b!6883811 m!7607632))

(assert (=> b!6883810 m!7607636))

(assert (=> b!6883810 m!7607636))

(declare-fun m!7607642 () Bool)

(assert (=> b!6883810 m!7607642))

(assert (=> b!6883801 m!7607632))

(assert (=> b!6883806 m!7607636))

(assert (=> b!6883806 m!7607636))

(assert (=> b!6883806 m!7607642))

(declare-fun m!7607644 () Bool)

(assert (=> b!6883802 m!7607644))

(assert (=> b!6883617 d!2160238))

(declare-fun d!2160242 () Bool)

(assert (=> d!2160242 (= (matchR!8921 lt!2460332 s!14361) (matchRSpec!3839 lt!2460332 s!14361))))

(declare-fun lt!2460389 () Unit!160272)

(declare-fun choose!51266 (Regex!16776 List!66533) Unit!160272)

(assert (=> d!2160242 (= lt!2460389 (choose!51266 lt!2460332 s!14361))))

(assert (=> d!2160242 (validRegex!8484 lt!2460332)))

(assert (=> d!2160242 (= (mainMatchTheorem!3839 lt!2460332 s!14361) lt!2460389)))

(declare-fun bs!1838282 () Bool)

(assert (= bs!1838282 d!2160242))

(assert (=> bs!1838282 m!7607512))

(assert (=> bs!1838282 m!7607506))

(declare-fun m!7607646 () Bool)

(assert (=> bs!1838282 m!7607646))

(assert (=> bs!1838282 m!7607640))

(assert (=> b!6883617 d!2160242))

(declare-fun b!6883815 () Bool)

(declare-fun e!4147922 () Bool)

(assert (=> b!6883815 (= e!4147922 (not (= (head!13811 s!14361) (c!1280378 lt!2460328))))))

(declare-fun bm!626621 () Bool)

(declare-fun call!626626 () Bool)

(assert (=> bm!626621 (= call!626626 (isEmpty!38676 s!14361))))

(declare-fun b!6883816 () Bool)

(declare-fun e!4147927 () Bool)

(assert (=> b!6883816 (= e!4147927 (nullable!6679 lt!2460328))))

(declare-fun b!6883817 () Bool)

(declare-fun e!4147923 () Bool)

(assert (=> b!6883817 (= e!4147923 e!4147922)))

(declare-fun res!2806153 () Bool)

(assert (=> b!6883817 (=> res!2806153 e!4147922)))

(assert (=> b!6883817 (= res!2806153 call!626626)))

(declare-fun d!2160244 () Bool)

(declare-fun e!4147925 () Bool)

(assert (=> d!2160244 e!4147925))

(declare-fun c!1280401 () Bool)

(assert (=> d!2160244 (= c!1280401 (is-EmptyExpr!16776 lt!2460328))))

(declare-fun lt!2460390 () Bool)

(assert (=> d!2160244 (= lt!2460390 e!4147927)))

(declare-fun c!1280400 () Bool)

(assert (=> d!2160244 (= c!1280400 (isEmpty!38676 s!14361))))

(assert (=> d!2160244 (validRegex!8484 lt!2460328)))

(assert (=> d!2160244 (= (matchR!8921 lt!2460328 s!14361) lt!2460390)))

(declare-fun b!6883818 () Bool)

(declare-fun res!2806152 () Bool)

(declare-fun e!4147924 () Bool)

(assert (=> b!6883818 (=> res!2806152 e!4147924)))

(declare-fun e!4147921 () Bool)

(assert (=> b!6883818 (= res!2806152 e!4147921)))

(declare-fun res!2806147 () Bool)

(assert (=> b!6883818 (=> (not res!2806147) (not e!4147921))))

(assert (=> b!6883818 (= res!2806147 lt!2460390)))

(declare-fun b!6883819 () Bool)

(assert (=> b!6883819 (= e!4147927 (matchR!8921 (derivativeStep!5358 lt!2460328 (head!13811 s!14361)) (tail!12863 s!14361)))))

(declare-fun b!6883820 () Bool)

(declare-fun res!2806149 () Bool)

(assert (=> b!6883820 (=> (not res!2806149) (not e!4147921))))

(assert (=> b!6883820 (= res!2806149 (isEmpty!38676 (tail!12863 s!14361)))))

(declare-fun b!6883821 () Bool)

(assert (=> b!6883821 (= e!4147924 e!4147923)))

(declare-fun res!2806150 () Bool)

(assert (=> b!6883821 (=> (not res!2806150) (not e!4147923))))

(assert (=> b!6883821 (= res!2806150 (not lt!2460390))))

(declare-fun b!6883822 () Bool)

(declare-fun res!2806151 () Bool)

(assert (=> b!6883822 (=> res!2806151 e!4147924)))

(assert (=> b!6883822 (= res!2806151 (not (is-ElementMatch!16776 lt!2460328)))))

(declare-fun e!4147926 () Bool)

(assert (=> b!6883822 (= e!4147926 e!4147924)))

(declare-fun b!6883823 () Bool)

(assert (=> b!6883823 (= e!4147925 (= lt!2460390 call!626626))))

(declare-fun b!6883824 () Bool)

(declare-fun res!2806146 () Bool)

(assert (=> b!6883824 (=> res!2806146 e!4147922)))

(assert (=> b!6883824 (= res!2806146 (not (isEmpty!38676 (tail!12863 s!14361))))))

(declare-fun b!6883825 () Bool)

(assert (=> b!6883825 (= e!4147921 (= (head!13811 s!14361) (c!1280378 lt!2460328)))))

(declare-fun b!6883826 () Bool)

(declare-fun res!2806148 () Bool)

(assert (=> b!6883826 (=> (not res!2806148) (not e!4147921))))

(assert (=> b!6883826 (= res!2806148 (not call!626626))))

(declare-fun b!6883827 () Bool)

(assert (=> b!6883827 (= e!4147925 e!4147926)))

(declare-fun c!1280399 () Bool)

(assert (=> b!6883827 (= c!1280399 (is-EmptyLang!16776 lt!2460328))))

(declare-fun b!6883828 () Bool)

(assert (=> b!6883828 (= e!4147926 (not lt!2460390))))

(assert (= (and d!2160244 c!1280400) b!6883816))

(assert (= (and d!2160244 (not c!1280400)) b!6883819))

(assert (= (and d!2160244 c!1280401) b!6883823))

(assert (= (and d!2160244 (not c!1280401)) b!6883827))

(assert (= (and b!6883827 c!1280399) b!6883828))

(assert (= (and b!6883827 (not c!1280399)) b!6883822))

(assert (= (and b!6883822 (not res!2806151)) b!6883818))

(assert (= (and b!6883818 res!2806147) b!6883826))

(assert (= (and b!6883826 res!2806148) b!6883820))

(assert (= (and b!6883820 res!2806149) b!6883825))

(assert (= (and b!6883818 (not res!2806152)) b!6883821))

(assert (= (and b!6883821 res!2806150) b!6883817))

(assert (= (and b!6883817 (not res!2806153)) b!6883824))

(assert (= (and b!6883824 (not res!2806146)) b!6883815))

(assert (= (or b!6883823 b!6883817 b!6883826) bm!626621))

(assert (=> bm!626621 m!7607630))

(assert (=> b!6883819 m!7607632))

(assert (=> b!6883819 m!7607632))

(declare-fun m!7607648 () Bool)

(assert (=> b!6883819 m!7607648))

(assert (=> b!6883819 m!7607636))

(assert (=> b!6883819 m!7607648))

(assert (=> b!6883819 m!7607636))

(declare-fun m!7607650 () Bool)

(assert (=> b!6883819 m!7607650))

(assert (=> d!2160244 m!7607630))

(declare-fun m!7607652 () Bool)

(assert (=> d!2160244 m!7607652))

(assert (=> b!6883825 m!7607632))

(assert (=> b!6883824 m!7607636))

(assert (=> b!6883824 m!7607636))

(assert (=> b!6883824 m!7607642))

(assert (=> b!6883815 m!7607632))

(assert (=> b!6883820 m!7607636))

(assert (=> b!6883820 m!7607636))

(assert (=> b!6883820 m!7607642))

(declare-fun m!7607654 () Bool)

(assert (=> b!6883816 m!7607654))

(assert (=> b!6883617 d!2160244))

(declare-fun d!2160246 () Bool)

(assert (=> d!2160246 (= (matchR!8921 lt!2460328 s!14361) (matchRSpec!3839 lt!2460328 s!14361))))

(declare-fun lt!2460391 () Unit!160272)

(assert (=> d!2160246 (= lt!2460391 (choose!51266 lt!2460328 s!14361))))

(assert (=> d!2160246 (validRegex!8484 lt!2460328)))

(assert (=> d!2160246 (= (mainMatchTheorem!3839 lt!2460328 s!14361) lt!2460391)))

(declare-fun bs!1838283 () Bool)

(assert (= bs!1838283 d!2160246))

(assert (=> bs!1838283 m!7607504))

(assert (=> bs!1838283 m!7607508))

(declare-fun m!7607656 () Bool)

(assert (=> bs!1838283 m!7607656))

(assert (=> bs!1838283 m!7607652))

(assert (=> b!6883617 d!2160246))

(declare-fun bs!1838285 () Bool)

(declare-fun b!6883867 () Bool)

(assert (= bs!1838285 (and b!6883867 b!6883629)))

(declare-fun lambda!389735 () Int)

(assert (=> bs!1838285 (not (= lambda!389735 lambda!389711))))

(assert (=> bs!1838285 (not (= lambda!389735 lambda!389712))))

(declare-fun bs!1838286 () Bool)

(assert (= bs!1838286 (and b!6883867 b!6883625)))

(assert (=> bs!1838286 (not (= lambda!389735 lambda!389713))))

(assert (=> bs!1838286 (not (= lambda!389735 lambda!389714))))

(assert (=> b!6883867 true))

(assert (=> b!6883867 true))

(declare-fun bs!1838287 () Bool)

(declare-fun b!6883871 () Bool)

(assert (= bs!1838287 (and b!6883871 b!6883867)))

(declare-fun lambda!389736 () Int)

(assert (=> bs!1838287 (not (= lambda!389736 lambda!389735))))

(declare-fun bs!1838288 () Bool)

(assert (= bs!1838288 (and b!6883871 b!6883629)))

(assert (=> bs!1838288 (= (and (= (regOne!34064 lt!2460328) lt!2460340) (= (regTwo!34064 lt!2460328) r3!135)) (= lambda!389736 lambda!389712))))

(assert (=> bs!1838288 (not (= lambda!389736 lambda!389711))))

(declare-fun bs!1838289 () Bool)

(assert (= bs!1838289 (and b!6883871 b!6883625)))

(assert (=> bs!1838289 (not (= lambda!389736 lambda!389713))))

(assert (=> bs!1838289 (= (and (= s!14361 (_1!36952 lt!2460335)) (= (regOne!34064 lt!2460328) r1!6342) (= (regTwo!34064 lt!2460328) r2!6280)) (= lambda!389736 lambda!389714))))

(assert (=> b!6883871 true))

(assert (=> b!6883871 true))

(declare-fun call!626631 () Bool)

(declare-fun c!1280412 () Bool)

(declare-fun bm!626626 () Bool)

(assert (=> bm!626626 (= call!626631 (Exists!3788 (ite c!1280412 lambda!389735 lambda!389736)))))

(declare-fun b!6883861 () Bool)

(declare-fun e!4147947 () Bool)

(assert (=> b!6883861 (= e!4147947 (matchRSpec!3839 (regTwo!34065 lt!2460328) s!14361))))

(declare-fun d!2160248 () Bool)

(declare-fun c!1280410 () Bool)

(assert (=> d!2160248 (= c!1280410 (is-EmptyExpr!16776 lt!2460328))))

(declare-fun e!4147946 () Bool)

(assert (=> d!2160248 (= (matchRSpec!3839 lt!2460328 s!14361) e!4147946)))

(declare-fun b!6883862 () Bool)

(declare-fun c!1280411 () Bool)

(assert (=> b!6883862 (= c!1280411 (is-ElementMatch!16776 lt!2460328))))

(declare-fun e!4147949 () Bool)

(declare-fun e!4147950 () Bool)

(assert (=> b!6883862 (= e!4147949 e!4147950)))

(declare-fun b!6883863 () Bool)

(assert (=> b!6883863 (= e!4147950 (= s!14361 (Cons!66409 (c!1280378 lt!2460328) Nil!66409)))))

(declare-fun b!6883864 () Bool)

(declare-fun e!4147951 () Bool)

(declare-fun e!4147952 () Bool)

(assert (=> b!6883864 (= e!4147951 e!4147952)))

(assert (=> b!6883864 (= c!1280412 (is-Star!16776 lt!2460328))))

(declare-fun b!6883865 () Bool)

(declare-fun c!1280413 () Bool)

(assert (=> b!6883865 (= c!1280413 (is-Union!16776 lt!2460328))))

(assert (=> b!6883865 (= e!4147950 e!4147951)))

(declare-fun b!6883866 () Bool)

(declare-fun res!2806170 () Bool)

(declare-fun e!4147948 () Bool)

(assert (=> b!6883866 (=> res!2806170 e!4147948)))

(declare-fun call!626632 () Bool)

(assert (=> b!6883866 (= res!2806170 call!626632)))

(assert (=> b!6883866 (= e!4147952 e!4147948)))

(assert (=> b!6883867 (= e!4147948 call!626631)))

(declare-fun b!6883868 () Bool)

(assert (=> b!6883868 (= e!4147951 e!4147947)))

(declare-fun res!2806172 () Bool)

(assert (=> b!6883868 (= res!2806172 (matchRSpec!3839 (regOne!34065 lt!2460328) s!14361))))

(assert (=> b!6883868 (=> res!2806172 e!4147947)))

(declare-fun b!6883869 () Bool)

(assert (=> b!6883869 (= e!4147946 e!4147949)))

(declare-fun res!2806171 () Bool)

(assert (=> b!6883869 (= res!2806171 (not (is-EmptyLang!16776 lt!2460328)))))

(assert (=> b!6883869 (=> (not res!2806171) (not e!4147949))))

(declare-fun b!6883870 () Bool)

(assert (=> b!6883870 (= e!4147946 call!626632)))

(assert (=> b!6883871 (= e!4147952 call!626631)))

(declare-fun bm!626627 () Bool)

(assert (=> bm!626627 (= call!626632 (isEmpty!38676 s!14361))))

(assert (= (and d!2160248 c!1280410) b!6883870))

(assert (= (and d!2160248 (not c!1280410)) b!6883869))

(assert (= (and b!6883869 res!2806171) b!6883862))

(assert (= (and b!6883862 c!1280411) b!6883863))

(assert (= (and b!6883862 (not c!1280411)) b!6883865))

(assert (= (and b!6883865 c!1280413) b!6883868))

(assert (= (and b!6883865 (not c!1280413)) b!6883864))

(assert (= (and b!6883868 (not res!2806172)) b!6883861))

(assert (= (and b!6883864 c!1280412) b!6883866))

(assert (= (and b!6883864 (not c!1280412)) b!6883871))

(assert (= (and b!6883866 (not res!2806170)) b!6883867))

(assert (= (or b!6883867 b!6883871) bm!626626))

(assert (= (or b!6883870 b!6883866) bm!626627))

(declare-fun m!7607662 () Bool)

(assert (=> bm!626626 m!7607662))

(declare-fun m!7607664 () Bool)

(assert (=> b!6883861 m!7607664))

(declare-fun m!7607666 () Bool)

(assert (=> b!6883868 m!7607666))

(assert (=> bm!626627 m!7607630))

(assert (=> b!6883617 d!2160248))

(declare-fun bs!1838290 () Bool)

(declare-fun b!6883900 () Bool)

(assert (= bs!1838290 (and b!6883900 b!6883867)))

(declare-fun lambda!389737 () Int)

(assert (=> bs!1838290 (= (and (= (reg!17105 lt!2460332) (reg!17105 lt!2460328)) (= lt!2460332 lt!2460328)) (= lambda!389737 lambda!389735))))

(declare-fun bs!1838291 () Bool)

(assert (= bs!1838291 (and b!6883900 b!6883629)))

(assert (=> bs!1838291 (not (= lambda!389737 lambda!389712))))

(assert (=> bs!1838291 (not (= lambda!389737 lambda!389711))))

(declare-fun bs!1838292 () Bool)

(assert (= bs!1838292 (and b!6883900 b!6883625)))

(assert (=> bs!1838292 (not (= lambda!389737 lambda!389713))))

(assert (=> bs!1838292 (not (= lambda!389737 lambda!389714))))

(declare-fun bs!1838293 () Bool)

(assert (= bs!1838293 (and b!6883900 b!6883871)))

(assert (=> bs!1838293 (not (= lambda!389737 lambda!389736))))

(assert (=> b!6883900 true))

(assert (=> b!6883900 true))

(declare-fun bs!1838294 () Bool)

(declare-fun b!6883904 () Bool)

(assert (= bs!1838294 (and b!6883904 b!6883867)))

(declare-fun lambda!389738 () Int)

(assert (=> bs!1838294 (not (= lambda!389738 lambda!389735))))

(declare-fun bs!1838295 () Bool)

(assert (= bs!1838295 (and b!6883904 b!6883629)))

(assert (=> bs!1838295 (= (and (= (regOne!34064 lt!2460332) lt!2460340) (= (regTwo!34064 lt!2460332) r3!135)) (= lambda!389738 lambda!389712))))

(assert (=> bs!1838295 (not (= lambda!389738 lambda!389711))))

(declare-fun bs!1838296 () Bool)

(assert (= bs!1838296 (and b!6883904 b!6883900)))

(assert (=> bs!1838296 (not (= lambda!389738 lambda!389737))))

(declare-fun bs!1838297 () Bool)

(assert (= bs!1838297 (and b!6883904 b!6883625)))

(assert (=> bs!1838297 (not (= lambda!389738 lambda!389713))))

(assert (=> bs!1838297 (= (and (= s!14361 (_1!36952 lt!2460335)) (= (regOne!34064 lt!2460332) r1!6342) (= (regTwo!34064 lt!2460332) r2!6280)) (= lambda!389738 lambda!389714))))

(declare-fun bs!1838298 () Bool)

(assert (= bs!1838298 (and b!6883904 b!6883871)))

(assert (=> bs!1838298 (= (and (= (regOne!34064 lt!2460332) (regOne!34064 lt!2460328)) (= (regTwo!34064 lt!2460332) (regTwo!34064 lt!2460328))) (= lambda!389738 lambda!389736))))

(assert (=> b!6883904 true))

(assert (=> b!6883904 true))

(declare-fun call!626633 () Bool)

(declare-fun bm!626628 () Bool)

(declare-fun c!1280422 () Bool)

(assert (=> bm!626628 (= call!626633 (Exists!3788 (ite c!1280422 lambda!389737 lambda!389738)))))

(declare-fun b!6883894 () Bool)

(declare-fun e!4147964 () Bool)

(assert (=> b!6883894 (= e!4147964 (matchRSpec!3839 (regTwo!34065 lt!2460332) s!14361))))

(declare-fun d!2160252 () Bool)

(declare-fun c!1280420 () Bool)

(assert (=> d!2160252 (= c!1280420 (is-EmptyExpr!16776 lt!2460332))))

(declare-fun e!4147963 () Bool)

(assert (=> d!2160252 (= (matchRSpec!3839 lt!2460332 s!14361) e!4147963)))

(declare-fun b!6883895 () Bool)

(declare-fun c!1280421 () Bool)

(assert (=> b!6883895 (= c!1280421 (is-ElementMatch!16776 lt!2460332))))

(declare-fun e!4147966 () Bool)

(declare-fun e!4147967 () Bool)

(assert (=> b!6883895 (= e!4147966 e!4147967)))

(declare-fun b!6883896 () Bool)

(assert (=> b!6883896 (= e!4147967 (= s!14361 (Cons!66409 (c!1280378 lt!2460332) Nil!66409)))))

(declare-fun b!6883897 () Bool)

(declare-fun e!4147968 () Bool)

(declare-fun e!4147969 () Bool)

(assert (=> b!6883897 (= e!4147968 e!4147969)))

(assert (=> b!6883897 (= c!1280422 (is-Star!16776 lt!2460332))))

(declare-fun b!6883898 () Bool)

(declare-fun c!1280423 () Bool)

(assert (=> b!6883898 (= c!1280423 (is-Union!16776 lt!2460332))))

(assert (=> b!6883898 (= e!4147967 e!4147968)))

(declare-fun b!6883899 () Bool)

(declare-fun res!2806183 () Bool)

(declare-fun e!4147965 () Bool)

(assert (=> b!6883899 (=> res!2806183 e!4147965)))

(declare-fun call!626634 () Bool)

(assert (=> b!6883899 (= res!2806183 call!626634)))

(assert (=> b!6883899 (= e!4147969 e!4147965)))

(assert (=> b!6883900 (= e!4147965 call!626633)))

(declare-fun b!6883901 () Bool)

(assert (=> b!6883901 (= e!4147968 e!4147964)))

(declare-fun res!2806185 () Bool)

(assert (=> b!6883901 (= res!2806185 (matchRSpec!3839 (regOne!34065 lt!2460332) s!14361))))

(assert (=> b!6883901 (=> res!2806185 e!4147964)))

(declare-fun b!6883902 () Bool)

(assert (=> b!6883902 (= e!4147963 e!4147966)))

(declare-fun res!2806184 () Bool)

(assert (=> b!6883902 (= res!2806184 (not (is-EmptyLang!16776 lt!2460332)))))

(assert (=> b!6883902 (=> (not res!2806184) (not e!4147966))))

(declare-fun b!6883903 () Bool)

(assert (=> b!6883903 (= e!4147963 call!626634)))

(assert (=> b!6883904 (= e!4147969 call!626633)))

(declare-fun bm!626629 () Bool)

(assert (=> bm!626629 (= call!626634 (isEmpty!38676 s!14361))))

(assert (= (and d!2160252 c!1280420) b!6883903))

(assert (= (and d!2160252 (not c!1280420)) b!6883902))

(assert (= (and b!6883902 res!2806184) b!6883895))

(assert (= (and b!6883895 c!1280421) b!6883896))

(assert (= (and b!6883895 (not c!1280421)) b!6883898))

(assert (= (and b!6883898 c!1280423) b!6883901))

(assert (= (and b!6883898 (not c!1280423)) b!6883897))

(assert (= (and b!6883901 (not res!2806185)) b!6883894))

(assert (= (and b!6883897 c!1280422) b!6883899))

(assert (= (and b!6883897 (not c!1280422)) b!6883904))

(assert (= (and b!6883899 (not res!2806183)) b!6883900))

(assert (= (or b!6883900 b!6883904) bm!626628))

(assert (= (or b!6883903 b!6883899) bm!626629))

(declare-fun m!7607668 () Bool)

(assert (=> bm!626628 m!7607668))

(declare-fun m!7607670 () Bool)

(assert (=> b!6883894 m!7607670))

(declare-fun m!7607672 () Bool)

(assert (=> b!6883901 m!7607672))

(assert (=> bm!626629 m!7607630))

(assert (=> b!6883617 d!2160252))

(declare-fun b!6883911 () Bool)

(declare-fun e!4147975 () Bool)

(assert (=> b!6883911 (= e!4147975 (not (= (head!13811 (_2!36952 lt!2460335)) (c!1280378 r3!135))))))

(declare-fun bm!626632 () Bool)

(declare-fun call!626637 () Bool)

(assert (=> bm!626632 (= call!626637 (isEmpty!38676 (_2!36952 lt!2460335)))))

(declare-fun b!6883912 () Bool)

(declare-fun e!4147980 () Bool)

(assert (=> b!6883912 (= e!4147980 (nullable!6679 r3!135))))

(declare-fun b!6883913 () Bool)

(declare-fun e!4147976 () Bool)

(assert (=> b!6883913 (= e!4147976 e!4147975)))

(declare-fun res!2806199 () Bool)

(assert (=> b!6883913 (=> res!2806199 e!4147975)))

(assert (=> b!6883913 (= res!2806199 call!626637)))

(declare-fun d!2160254 () Bool)

(declare-fun e!4147978 () Bool)

(assert (=> d!2160254 e!4147978))

(declare-fun c!1280426 () Bool)

(assert (=> d!2160254 (= c!1280426 (is-EmptyExpr!16776 r3!135))))

(declare-fun lt!2460397 () Bool)

(assert (=> d!2160254 (= lt!2460397 e!4147980)))

(declare-fun c!1280425 () Bool)

(assert (=> d!2160254 (= c!1280425 (isEmpty!38676 (_2!36952 lt!2460335)))))

(assert (=> d!2160254 (validRegex!8484 r3!135)))

(assert (=> d!2160254 (= (matchR!8921 r3!135 (_2!36952 lt!2460335)) lt!2460397)))

(declare-fun b!6883914 () Bool)

(declare-fun res!2806198 () Bool)

(declare-fun e!4147977 () Bool)

(assert (=> b!6883914 (=> res!2806198 e!4147977)))

(declare-fun e!4147974 () Bool)

(assert (=> b!6883914 (= res!2806198 e!4147974)))

(declare-fun res!2806193 () Bool)

(assert (=> b!6883914 (=> (not res!2806193) (not e!4147974))))

(assert (=> b!6883914 (= res!2806193 lt!2460397)))

(declare-fun b!6883915 () Bool)

(assert (=> b!6883915 (= e!4147980 (matchR!8921 (derivativeStep!5358 r3!135 (head!13811 (_2!36952 lt!2460335))) (tail!12863 (_2!36952 lt!2460335))))))

(declare-fun b!6883916 () Bool)

(declare-fun res!2806195 () Bool)

(assert (=> b!6883916 (=> (not res!2806195) (not e!4147974))))

(assert (=> b!6883916 (= res!2806195 (isEmpty!38676 (tail!12863 (_2!36952 lt!2460335))))))

(declare-fun b!6883917 () Bool)

(assert (=> b!6883917 (= e!4147977 e!4147976)))

(declare-fun res!2806196 () Bool)

(assert (=> b!6883917 (=> (not res!2806196) (not e!4147976))))

(assert (=> b!6883917 (= res!2806196 (not lt!2460397))))

(declare-fun b!6883918 () Bool)

(declare-fun res!2806197 () Bool)

(assert (=> b!6883918 (=> res!2806197 e!4147977)))

(assert (=> b!6883918 (= res!2806197 (not (is-ElementMatch!16776 r3!135)))))

(declare-fun e!4147979 () Bool)

(assert (=> b!6883918 (= e!4147979 e!4147977)))

(declare-fun b!6883919 () Bool)

(assert (=> b!6883919 (= e!4147978 (= lt!2460397 call!626637))))

(declare-fun b!6883920 () Bool)

(declare-fun res!2806192 () Bool)

(assert (=> b!6883920 (=> res!2806192 e!4147975)))

(assert (=> b!6883920 (= res!2806192 (not (isEmpty!38676 (tail!12863 (_2!36952 lt!2460335)))))))

(declare-fun b!6883921 () Bool)

(assert (=> b!6883921 (= e!4147974 (= (head!13811 (_2!36952 lt!2460335)) (c!1280378 r3!135)))))

(declare-fun b!6883922 () Bool)

(declare-fun res!2806194 () Bool)

(assert (=> b!6883922 (=> (not res!2806194) (not e!4147974))))

(assert (=> b!6883922 (= res!2806194 (not call!626637))))

(declare-fun b!6883923 () Bool)

(assert (=> b!6883923 (= e!4147978 e!4147979)))

(declare-fun c!1280424 () Bool)

(assert (=> b!6883923 (= c!1280424 (is-EmptyLang!16776 r3!135))))

(declare-fun b!6883924 () Bool)

(assert (=> b!6883924 (= e!4147979 (not lt!2460397))))

(assert (= (and d!2160254 c!1280425) b!6883912))

(assert (= (and d!2160254 (not c!1280425)) b!6883915))

(assert (= (and d!2160254 c!1280426) b!6883919))

(assert (= (and d!2160254 (not c!1280426)) b!6883923))

(assert (= (and b!6883923 c!1280424) b!6883924))

(assert (= (and b!6883923 (not c!1280424)) b!6883918))

(assert (= (and b!6883918 (not res!2806197)) b!6883914))

(assert (= (and b!6883914 res!2806193) b!6883922))

(assert (= (and b!6883922 res!2806194) b!6883916))

(assert (= (and b!6883916 res!2806195) b!6883921))

(assert (= (and b!6883914 (not res!2806198)) b!6883917))

(assert (= (and b!6883917 res!2806196) b!6883913))

(assert (= (and b!6883913 (not res!2806199)) b!6883920))

(assert (= (and b!6883920 (not res!2806192)) b!6883911))

(assert (= (or b!6883919 b!6883913 b!6883922) bm!626632))

(declare-fun m!7607674 () Bool)

(assert (=> bm!626632 m!7607674))

(declare-fun m!7607676 () Bool)

(assert (=> b!6883915 m!7607676))

(assert (=> b!6883915 m!7607676))

(declare-fun m!7607678 () Bool)

(assert (=> b!6883915 m!7607678))

(declare-fun m!7607680 () Bool)

(assert (=> b!6883915 m!7607680))

(assert (=> b!6883915 m!7607678))

(assert (=> b!6883915 m!7607680))

(declare-fun m!7607682 () Bool)

(assert (=> b!6883915 m!7607682))

(assert (=> d!2160254 m!7607674))

(assert (=> d!2160254 m!7607534))

(assert (=> b!6883921 m!7607676))

(assert (=> b!6883920 m!7607680))

(assert (=> b!6883920 m!7607680))

(declare-fun m!7607684 () Bool)

(assert (=> b!6883920 m!7607684))

(assert (=> b!6883911 m!7607676))

(assert (=> b!6883916 m!7607680))

(assert (=> b!6883916 m!7607680))

(assert (=> b!6883916 m!7607684))

(declare-fun m!7607686 () Bool)

(assert (=> b!6883912 m!7607686))

(assert (=> b!6883633 d!2160254))

(declare-fun bs!1838299 () Bool)

(declare-fun d!2160256 () Bool)

(assert (= bs!1838299 (and d!2160256 b!6883867)))

(declare-fun lambda!389741 () Int)

(assert (=> bs!1838299 (not (= lambda!389741 lambda!389735))))

(declare-fun bs!1838300 () Bool)

(assert (= bs!1838300 (and d!2160256 b!6883629)))

(assert (=> bs!1838300 (not (= lambda!389741 lambda!389712))))

(assert (=> bs!1838300 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 lt!2460340) (= r2!6280 r3!135)) (= lambda!389741 lambda!389711))))

(declare-fun bs!1838301 () Bool)

(assert (= bs!1838301 (and d!2160256 b!6883900)))

(assert (=> bs!1838301 (not (= lambda!389741 lambda!389737))))

(declare-fun bs!1838302 () Bool)

(assert (= bs!1838302 (and d!2160256 b!6883625)))

(assert (=> bs!1838302 (= lambda!389741 lambda!389713)))

(assert (=> bs!1838302 (not (= lambda!389741 lambda!389714))))

(declare-fun bs!1838303 () Bool)

(assert (= bs!1838303 (and d!2160256 b!6883904)))

(assert (=> bs!1838303 (not (= lambda!389741 lambda!389738))))

(declare-fun bs!1838304 () Bool)

(assert (= bs!1838304 (and d!2160256 b!6883871)))

(assert (=> bs!1838304 (not (= lambda!389741 lambda!389736))))

(assert (=> d!2160256 true))

(assert (=> d!2160256 true))

(assert (=> d!2160256 true))

(assert (=> d!2160256 (= (isDefined!13264 (findConcatSeparation!2975 r1!6342 r2!6280 Nil!66409 (_1!36952 lt!2460335) (_1!36952 lt!2460335))) (Exists!3788 lambda!389741))))

(declare-fun lt!2460401 () Unit!160272)

(declare-fun choose!51267 (Regex!16776 Regex!16776 List!66533) Unit!160272)

(assert (=> d!2160256 (= lt!2460401 (choose!51267 r1!6342 r2!6280 (_1!36952 lt!2460335)))))

(assert (=> d!2160256 (validRegex!8484 r1!6342)))

(assert (=> d!2160256 (= (lemmaFindConcatSeparationEquivalentToExists!2739 r1!6342 r2!6280 (_1!36952 lt!2460335)) lt!2460401)))

(declare-fun bs!1838305 () Bool)

(assert (= bs!1838305 d!2160256))

(declare-fun m!7607704 () Bool)

(assert (=> bs!1838305 m!7607704))

(assert (=> bs!1838305 m!7607530))

(assert (=> bs!1838305 m!7607516))

(assert (=> bs!1838305 m!7607518))

(declare-fun m!7607706 () Bool)

(assert (=> bs!1838305 m!7607706))

(assert (=> bs!1838305 m!7607516))

(assert (=> b!6883625 d!2160256))

(declare-fun d!2160260 () Bool)

(declare-fun isEmpty!38677 (Option!16561) Bool)

(assert (=> d!2160260 (= (isDefined!13264 (findConcatSeparation!2975 r1!6342 r2!6280 Nil!66409 (_1!36952 lt!2460335) (_1!36952 lt!2460335))) (not (isEmpty!38677 (findConcatSeparation!2975 r1!6342 r2!6280 Nil!66409 (_1!36952 lt!2460335) (_1!36952 lt!2460335)))))))

(declare-fun bs!1838306 () Bool)

(assert (= bs!1838306 d!2160260))

(assert (=> bs!1838306 m!7607516))

(declare-fun m!7607708 () Bool)

(assert (=> bs!1838306 m!7607708))

(assert (=> b!6883625 d!2160260))

(declare-fun bs!1838307 () Bool)

(declare-fun d!2160262 () Bool)

(assert (= bs!1838307 (and d!2160262 b!6883867)))

(declare-fun lambda!389746 () Int)

(assert (=> bs!1838307 (not (= lambda!389746 lambda!389735))))

(declare-fun bs!1838308 () Bool)

(assert (= bs!1838308 (and d!2160262 b!6883629)))

(assert (=> bs!1838308 (not (= lambda!389746 lambda!389712))))

(assert (=> bs!1838308 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 lt!2460340) (= r2!6280 r3!135)) (= lambda!389746 lambda!389711))))

(declare-fun bs!1838309 () Bool)

(assert (= bs!1838309 (and d!2160262 b!6883900)))

(assert (=> bs!1838309 (not (= lambda!389746 lambda!389737))))

(declare-fun bs!1838310 () Bool)

(assert (= bs!1838310 (and d!2160262 b!6883625)))

(assert (=> bs!1838310 (= lambda!389746 lambda!389713)))

(declare-fun bs!1838311 () Bool)

(assert (= bs!1838311 (and d!2160262 d!2160256)))

(assert (=> bs!1838311 (= lambda!389746 lambda!389741)))

(assert (=> bs!1838310 (not (= lambda!389746 lambda!389714))))

(declare-fun bs!1838312 () Bool)

(assert (= bs!1838312 (and d!2160262 b!6883904)))

(assert (=> bs!1838312 (not (= lambda!389746 lambda!389738))))

(declare-fun bs!1838313 () Bool)

(assert (= bs!1838313 (and d!2160262 b!6883871)))

(assert (=> bs!1838313 (not (= lambda!389746 lambda!389736))))

(assert (=> d!2160262 true))

(assert (=> d!2160262 true))

(assert (=> d!2160262 true))

(declare-fun lambda!389747 () Int)

(assert (=> bs!1838307 (not (= lambda!389747 lambda!389735))))

(assert (=> bs!1838308 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 lt!2460340) (= r2!6280 r3!135)) (= lambda!389747 lambda!389712))))

(assert (=> bs!1838308 (not (= lambda!389747 lambda!389711))))

(assert (=> bs!1838309 (not (= lambda!389747 lambda!389737))))

(assert (=> bs!1838310 (not (= lambda!389747 lambda!389713))))

(assert (=> bs!1838311 (not (= lambda!389747 lambda!389741))))

(assert (=> bs!1838310 (= lambda!389747 lambda!389714)))

(assert (=> bs!1838312 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 (regOne!34064 lt!2460332)) (= r2!6280 (regTwo!34064 lt!2460332))) (= lambda!389747 lambda!389738))))

(declare-fun bs!1838314 () Bool)

(assert (= bs!1838314 d!2160262))

(assert (=> bs!1838314 (not (= lambda!389747 lambda!389746))))

(assert (=> bs!1838313 (= (and (= (_1!36952 lt!2460335) s!14361) (= r1!6342 (regOne!34064 lt!2460328)) (= r2!6280 (regTwo!34064 lt!2460328))) (= lambda!389747 lambda!389736))))

(assert (=> d!2160262 true))

(assert (=> d!2160262 true))

(assert (=> d!2160262 true))

(assert (=> d!2160262 (= (Exists!3788 lambda!389746) (Exists!3788 lambda!389747))))

(declare-fun lt!2460404 () Unit!160272)

(declare-fun choose!51268 (Regex!16776 Regex!16776 List!66533) Unit!160272)

(assert (=> d!2160262 (= lt!2460404 (choose!51268 r1!6342 r2!6280 (_1!36952 lt!2460335)))))

(assert (=> d!2160262 (validRegex!8484 r1!6342)))

(assert (=> d!2160262 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2267 r1!6342 r2!6280 (_1!36952 lt!2460335)) lt!2460404)))

(declare-fun m!7607710 () Bool)

(assert (=> bs!1838314 m!7607710))

(declare-fun m!7607712 () Bool)

(assert (=> bs!1838314 m!7607712))

(declare-fun m!7607714 () Bool)

(assert (=> bs!1838314 m!7607714))

(assert (=> bs!1838314 m!7607530))

(assert (=> b!6883625 d!2160262))

(declare-fun b!6884001 () Bool)

(declare-fun res!2806247 () Bool)

(declare-fun e!4148023 () Bool)

(assert (=> b!6884001 (=> (not res!2806247) (not e!4148023))))

(declare-fun lt!2460411 () Option!16561)

(assert (=> b!6884001 (= res!2806247 (matchR!8921 r2!6280 (_2!36952 (get!23127 lt!2460411))))))

(declare-fun b!6884002 () Bool)

(declare-fun lt!2460412 () Unit!160272)

(declare-fun lt!2460413 () Unit!160272)

(assert (=> b!6884002 (= lt!2460412 lt!2460413)))

(assert (=> b!6884002 (= (++!14861 (++!14861 Nil!66409 (Cons!66409 (h!72857 (_1!36952 lt!2460335)) Nil!66409)) (t!380276 (_1!36952 lt!2460335))) (_1!36952 lt!2460335))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2770 (List!66533 C!33822 List!66533 List!66533) Unit!160272)

(assert (=> b!6884002 (= lt!2460413 (lemmaMoveElementToOtherListKeepsConcatEq!2770 Nil!66409 (h!72857 (_1!36952 lt!2460335)) (t!380276 (_1!36952 lt!2460335)) (_1!36952 lt!2460335)))))

(declare-fun e!4148022 () Option!16561)

(assert (=> b!6884002 (= e!4148022 (findConcatSeparation!2975 r1!6342 r2!6280 (++!14861 Nil!66409 (Cons!66409 (h!72857 (_1!36952 lt!2460335)) Nil!66409)) (t!380276 (_1!36952 lt!2460335)) (_1!36952 lt!2460335)))))

(declare-fun b!6884003 () Bool)

(declare-fun res!2806249 () Bool)

(assert (=> b!6884003 (=> (not res!2806249) (not e!4148023))))

(assert (=> b!6884003 (= res!2806249 (matchR!8921 r1!6342 (_1!36952 (get!23127 lt!2460411))))))

(declare-fun b!6884004 () Bool)

(declare-fun e!4148024 () Bool)

(assert (=> b!6884004 (= e!4148024 (matchR!8921 r2!6280 (_1!36952 lt!2460335)))))

(declare-fun d!2160264 () Bool)

(declare-fun e!4148026 () Bool)

(assert (=> d!2160264 e!4148026))

(declare-fun res!2806248 () Bool)

(assert (=> d!2160264 (=> res!2806248 e!4148026)))

(assert (=> d!2160264 (= res!2806248 e!4148023)))

(declare-fun res!2806250 () Bool)

(assert (=> d!2160264 (=> (not res!2806250) (not e!4148023))))

(assert (=> d!2160264 (= res!2806250 (isDefined!13264 lt!2460411))))

(declare-fun e!4148025 () Option!16561)

(assert (=> d!2160264 (= lt!2460411 e!4148025)))

(declare-fun c!1280443 () Bool)

(assert (=> d!2160264 (= c!1280443 e!4148024)))

(declare-fun res!2806246 () Bool)

(assert (=> d!2160264 (=> (not res!2806246) (not e!4148024))))

(assert (=> d!2160264 (= res!2806246 (matchR!8921 r1!6342 Nil!66409))))

(assert (=> d!2160264 (validRegex!8484 r1!6342)))

(assert (=> d!2160264 (= (findConcatSeparation!2975 r1!6342 r2!6280 Nil!66409 (_1!36952 lt!2460335) (_1!36952 lt!2460335)) lt!2460411)))

(declare-fun b!6884005 () Bool)

(assert (=> b!6884005 (= e!4148025 (Some!16560 (tuple2!67299 Nil!66409 (_1!36952 lt!2460335))))))

(declare-fun b!6884006 () Bool)

(assert (=> b!6884006 (= e!4148022 None!16560)))

(declare-fun b!6884007 () Bool)

(assert (=> b!6884007 (= e!4148025 e!4148022)))

(declare-fun c!1280442 () Bool)

(assert (=> b!6884007 (= c!1280442 (is-Nil!66409 (_1!36952 lt!2460335)))))

(declare-fun b!6884008 () Bool)

(assert (=> b!6884008 (= e!4148026 (not (isDefined!13264 lt!2460411)))))

(declare-fun b!6884009 () Bool)

(assert (=> b!6884009 (= e!4148023 (= (++!14861 (_1!36952 (get!23127 lt!2460411)) (_2!36952 (get!23127 lt!2460411))) (_1!36952 lt!2460335)))))

(assert (= (and d!2160264 res!2806246) b!6884004))

(assert (= (and d!2160264 c!1280443) b!6884005))

(assert (= (and d!2160264 (not c!1280443)) b!6884007))

(assert (= (and b!6884007 c!1280442) b!6884006))

(assert (= (and b!6884007 (not c!1280442)) b!6884002))

(assert (= (and d!2160264 res!2806250) b!6884003))

(assert (= (and b!6884003 res!2806249) b!6884001))

(assert (= (and b!6884001 res!2806247) b!6884009))

(assert (= (and d!2160264 (not res!2806248)) b!6884008))

(declare-fun m!7607716 () Bool)

(assert (=> b!6884001 m!7607716))

(declare-fun m!7607718 () Bool)

(assert (=> b!6884001 m!7607718))

(assert (=> b!6884009 m!7607716))

(declare-fun m!7607720 () Bool)

(assert (=> b!6884009 m!7607720))

(declare-fun m!7607722 () Bool)

(assert (=> b!6884008 m!7607722))

(assert (=> d!2160264 m!7607722))

(declare-fun m!7607724 () Bool)

(assert (=> d!2160264 m!7607724))

(assert (=> d!2160264 m!7607530))

(assert (=> b!6884003 m!7607716))

(declare-fun m!7607726 () Bool)

(assert (=> b!6884003 m!7607726))

(declare-fun m!7607728 () Bool)

(assert (=> b!6884004 m!7607728))

(declare-fun m!7607730 () Bool)

(assert (=> b!6884002 m!7607730))

(assert (=> b!6884002 m!7607730))

(declare-fun m!7607732 () Bool)

(assert (=> b!6884002 m!7607732))

(declare-fun m!7607734 () Bool)

(assert (=> b!6884002 m!7607734))

(assert (=> b!6884002 m!7607730))

(declare-fun m!7607736 () Bool)

(assert (=> b!6884002 m!7607736))

(assert (=> b!6883625 d!2160264))

(declare-fun d!2160266 () Bool)

(declare-fun choose!51270 (Int) Bool)

(assert (=> d!2160266 (= (Exists!3788 lambda!389713) (choose!51270 lambda!389713))))

(declare-fun bs!1838315 () Bool)

(assert (= bs!1838315 d!2160266))

(declare-fun m!7607738 () Bool)

(assert (=> bs!1838315 m!7607738))

(assert (=> b!6883625 d!2160266))

(declare-fun d!2160268 () Bool)

(assert (=> d!2160268 (= (Exists!3788 lambda!389714) (choose!51270 lambda!389714))))

(declare-fun bs!1838316 () Bool)

(assert (= bs!1838316 d!2160268))

(declare-fun m!7607740 () Bool)

(assert (=> bs!1838316 m!7607740))

(assert (=> b!6883625 d!2160268))

(declare-fun b!6884030 () Bool)

(declare-fun e!4148038 () List!66533)

(assert (=> b!6884030 (= e!4148038 (Cons!66409 (h!72857 Nil!66409) (++!14861 (t!380276 Nil!66409) (_1!36952 lt!2460335))))))

(declare-fun b!6884032 () Bool)

(declare-fun e!4148039 () Bool)

(declare-fun lt!2460416 () List!66533)

(assert (=> b!6884032 (= e!4148039 (or (not (= (_1!36952 lt!2460335) Nil!66409)) (= lt!2460416 Nil!66409)))))

(declare-fun d!2160270 () Bool)

(assert (=> d!2160270 e!4148039))

(declare-fun res!2806258 () Bool)

(assert (=> d!2160270 (=> (not res!2806258) (not e!4148039))))

(declare-fun content!13043 (List!66533) (Set C!33822))

(assert (=> d!2160270 (= res!2806258 (= (content!13043 lt!2460416) (set.union (content!13043 Nil!66409) (content!13043 (_1!36952 lt!2460335)))))))

(assert (=> d!2160270 (= lt!2460416 e!4148038)))

(declare-fun c!1280450 () Bool)

(assert (=> d!2160270 (= c!1280450 (is-Nil!66409 Nil!66409))))

(assert (=> d!2160270 (= (++!14861 Nil!66409 (_1!36952 lt!2460335)) lt!2460416)))

(declare-fun b!6884029 () Bool)

(assert (=> b!6884029 (= e!4148038 (_1!36952 lt!2460335))))

(declare-fun b!6884031 () Bool)

(declare-fun res!2806259 () Bool)

(assert (=> b!6884031 (=> (not res!2806259) (not e!4148039))))

(declare-fun size!40740 (List!66533) Int)

(assert (=> b!6884031 (= res!2806259 (= (size!40740 lt!2460416) (+ (size!40740 Nil!66409) (size!40740 (_1!36952 lt!2460335)))))))

(assert (= (and d!2160270 c!1280450) b!6884029))

(assert (= (and d!2160270 (not c!1280450)) b!6884030))

(assert (= (and d!2160270 res!2806258) b!6884031))

(assert (= (and b!6884031 res!2806259) b!6884032))

(declare-fun m!7607742 () Bool)

(assert (=> b!6884030 m!7607742))

(declare-fun m!7607744 () Bool)

(assert (=> d!2160270 m!7607744))

(declare-fun m!7607746 () Bool)

(assert (=> d!2160270 m!7607746))

(declare-fun m!7607748 () Bool)

(assert (=> d!2160270 m!7607748))

(declare-fun m!7607750 () Bool)

(assert (=> b!6884031 m!7607750))

(declare-fun m!7607752 () Bool)

(assert (=> b!6884031 m!7607752))

(declare-fun m!7607754 () Bool)

(assert (=> b!6884031 m!7607754))

(assert (=> b!6883625 d!2160270))

(declare-fun d!2160272 () Bool)

(assert (=> d!2160272 (= (Exists!3788 lambda!389711) (choose!51270 lambda!389711))))

(declare-fun bs!1838319 () Bool)

(assert (= bs!1838319 d!2160272))

(declare-fun m!7607756 () Bool)

(assert (=> bs!1838319 m!7607756))

(assert (=> b!6883629 d!2160272))

(declare-fun bs!1838320 () Bool)

(declare-fun d!2160274 () Bool)

(assert (= bs!1838320 (and d!2160274 b!6883867)))

(declare-fun lambda!389753 () Int)

(assert (=> bs!1838320 (not (= lambda!389753 lambda!389735))))

(declare-fun bs!1838321 () Bool)

(assert (= bs!1838321 (and d!2160274 d!2160262)))

(assert (=> bs!1838321 (not (= lambda!389753 lambda!389747))))

(declare-fun bs!1838322 () Bool)

(assert (= bs!1838322 (and d!2160274 b!6883629)))

(assert (=> bs!1838322 (not (= lambda!389753 lambda!389712))))

(assert (=> bs!1838322 (= lambda!389753 lambda!389711)))

(declare-fun bs!1838323 () Bool)

(assert (= bs!1838323 (and d!2160274 b!6883900)))

(assert (=> bs!1838323 (not (= lambda!389753 lambda!389737))))

(declare-fun bs!1838324 () Bool)

(assert (= bs!1838324 (and d!2160274 b!6883625)))

(assert (=> bs!1838324 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389753 lambda!389713))))

(declare-fun bs!1838326 () Bool)

(assert (= bs!1838326 (and d!2160274 d!2160256)))

(assert (=> bs!1838326 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389753 lambda!389741))))

(assert (=> bs!1838324 (not (= lambda!389753 lambda!389714))))

(declare-fun bs!1838328 () Bool)

(assert (= bs!1838328 (and d!2160274 b!6883904)))

(assert (=> bs!1838328 (not (= lambda!389753 lambda!389738))))

(assert (=> bs!1838321 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389753 lambda!389746))))

(declare-fun bs!1838329 () Bool)

(assert (= bs!1838329 (and d!2160274 b!6883871)))

(assert (=> bs!1838329 (not (= lambda!389753 lambda!389736))))

(assert (=> d!2160274 true))

(assert (=> d!2160274 true))

(assert (=> d!2160274 true))

(declare-fun lambda!389755 () Int)

(assert (=> bs!1838320 (not (= lambda!389755 lambda!389735))))

(assert (=> bs!1838321 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389755 lambda!389747))))

(assert (=> bs!1838322 (not (= lambda!389755 lambda!389711))))

(assert (=> bs!1838323 (not (= lambda!389755 lambda!389737))))

(assert (=> bs!1838324 (not (= lambda!389755 lambda!389713))))

(assert (=> bs!1838326 (not (= lambda!389755 lambda!389741))))

(assert (=> bs!1838324 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389755 lambda!389714))))

(declare-fun bs!1838331 () Bool)

(assert (= bs!1838331 d!2160274))

(assert (=> bs!1838331 (not (= lambda!389755 lambda!389753))))

(assert (=> bs!1838322 (= lambda!389755 lambda!389712)))

(assert (=> bs!1838328 (= (and (= lt!2460340 (regOne!34064 lt!2460332)) (= r3!135 (regTwo!34064 lt!2460332))) (= lambda!389755 lambda!389738))))

(assert (=> bs!1838321 (not (= lambda!389755 lambda!389746))))

(assert (=> bs!1838329 (= (and (= lt!2460340 (regOne!34064 lt!2460328)) (= r3!135 (regTwo!34064 lt!2460328))) (= lambda!389755 lambda!389736))))

(assert (=> d!2160274 true))

(assert (=> d!2160274 true))

(assert (=> d!2160274 true))

(assert (=> d!2160274 (= (Exists!3788 lambda!389753) (Exists!3788 lambda!389755))))

(declare-fun lt!2460417 () Unit!160272)

(assert (=> d!2160274 (= lt!2460417 (choose!51268 lt!2460340 r3!135 s!14361))))

(assert (=> d!2160274 (validRegex!8484 lt!2460340)))

(assert (=> d!2160274 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2267 lt!2460340 r3!135 s!14361) lt!2460417)))

(declare-fun m!7607760 () Bool)

(assert (=> bs!1838331 m!7607760))

(declare-fun m!7607762 () Bool)

(assert (=> bs!1838331 m!7607762))

(declare-fun m!7607766 () Bool)

(assert (=> bs!1838331 m!7607766))

(declare-fun m!7607768 () Bool)

(assert (=> bs!1838331 m!7607768))

(assert (=> b!6883629 d!2160274))

(declare-fun d!2160276 () Bool)

(assert (=> d!2160276 (= (isDefined!13264 lt!2460338) (not (isEmpty!38677 lt!2460338)))))

(declare-fun bs!1838332 () Bool)

(assert (= bs!1838332 d!2160276))

(declare-fun m!7607772 () Bool)

(assert (=> bs!1838332 m!7607772))

(assert (=> b!6883629 d!2160276))

(declare-fun d!2160280 () Bool)

(assert (=> d!2160280 (= (Exists!3788 lambda!389712) (choose!51270 lambda!389712))))

(declare-fun bs!1838333 () Bool)

(assert (= bs!1838333 d!2160280))

(declare-fun m!7607774 () Bool)

(assert (=> bs!1838333 m!7607774))

(assert (=> b!6883629 d!2160280))

(declare-fun bs!1838334 () Bool)

(declare-fun b!6884053 () Bool)

(assert (= bs!1838334 (and b!6884053 b!6883867)))

(declare-fun lambda!389756 () Int)

(assert (=> bs!1838334 (= (and (= (_1!36952 lt!2460335) s!14361) (= (reg!17105 lt!2460340) (reg!17105 lt!2460328)) (= lt!2460340 lt!2460328)) (= lambda!389756 lambda!389735))))

(declare-fun bs!1838335 () Bool)

(assert (= bs!1838335 (and b!6884053 d!2160262)))

(assert (=> bs!1838335 (not (= lambda!389756 lambda!389747))))

(declare-fun bs!1838336 () Bool)

(assert (= bs!1838336 (and b!6884053 b!6883629)))

(assert (=> bs!1838336 (not (= lambda!389756 lambda!389711))))

(declare-fun bs!1838337 () Bool)

(assert (= bs!1838337 (and b!6884053 b!6883900)))

(assert (=> bs!1838337 (= (and (= (_1!36952 lt!2460335) s!14361) (= (reg!17105 lt!2460340) (reg!17105 lt!2460332)) (= lt!2460340 lt!2460332)) (= lambda!389756 lambda!389737))))

(declare-fun bs!1838338 () Bool)

(assert (= bs!1838338 (and b!6884053 b!6883625)))

(assert (=> bs!1838338 (not (= lambda!389756 lambda!389713))))

(declare-fun bs!1838339 () Bool)

(assert (= bs!1838339 (and b!6884053 d!2160274)))

(assert (=> bs!1838339 (not (= lambda!389756 lambda!389755))))

(declare-fun bs!1838340 () Bool)

(assert (= bs!1838340 (and b!6884053 d!2160256)))

(assert (=> bs!1838340 (not (= lambda!389756 lambda!389741))))

(assert (=> bs!1838338 (not (= lambda!389756 lambda!389714))))

(assert (=> bs!1838339 (not (= lambda!389756 lambda!389753))))

(assert (=> bs!1838336 (not (= lambda!389756 lambda!389712))))

(declare-fun bs!1838341 () Bool)

(assert (= bs!1838341 (and b!6884053 b!6883904)))

(assert (=> bs!1838341 (not (= lambda!389756 lambda!389738))))

(assert (=> bs!1838335 (not (= lambda!389756 lambda!389746))))

(declare-fun bs!1838342 () Bool)

(assert (= bs!1838342 (and b!6884053 b!6883871)))

(assert (=> bs!1838342 (not (= lambda!389756 lambda!389736))))

(assert (=> b!6884053 true))

(assert (=> b!6884053 true))

(declare-fun bs!1838344 () Bool)

(declare-fun b!6884057 () Bool)

(assert (= bs!1838344 (and b!6884057 b!6883867)))

(declare-fun lambda!389757 () Int)

(assert (=> bs!1838344 (not (= lambda!389757 lambda!389735))))

(declare-fun bs!1838345 () Bool)

(assert (= bs!1838345 (and b!6884057 d!2160262)))

(assert (=> bs!1838345 (= (and (= (regOne!34064 lt!2460340) r1!6342) (= (regTwo!34064 lt!2460340) r2!6280)) (= lambda!389757 lambda!389747))))

(declare-fun bs!1838346 () Bool)

(assert (= bs!1838346 (and b!6884057 b!6883629)))

(assert (=> bs!1838346 (not (= lambda!389757 lambda!389711))))

(declare-fun bs!1838347 () Bool)

(assert (= bs!1838347 (and b!6884057 b!6883900)))

(assert (=> bs!1838347 (not (= lambda!389757 lambda!389737))))

(declare-fun bs!1838348 () Bool)

(assert (= bs!1838348 (and b!6884057 b!6883625)))

(assert (=> bs!1838348 (not (= lambda!389757 lambda!389713))))

(declare-fun bs!1838349 () Bool)

(assert (= bs!1838349 (and b!6884057 d!2160274)))

(assert (=> bs!1838349 (= (and (= (_1!36952 lt!2460335) s!14361) (= (regOne!34064 lt!2460340) lt!2460340) (= (regTwo!34064 lt!2460340) r3!135)) (= lambda!389757 lambda!389755))))

(declare-fun bs!1838350 () Bool)

(assert (= bs!1838350 (and b!6884057 b!6884053)))

(assert (=> bs!1838350 (not (= lambda!389757 lambda!389756))))

(declare-fun bs!1838351 () Bool)

(assert (= bs!1838351 (and b!6884057 d!2160256)))

(assert (=> bs!1838351 (not (= lambda!389757 lambda!389741))))

(assert (=> bs!1838348 (= (and (= (regOne!34064 lt!2460340) r1!6342) (= (regTwo!34064 lt!2460340) r2!6280)) (= lambda!389757 lambda!389714))))

(assert (=> bs!1838349 (not (= lambda!389757 lambda!389753))))

(assert (=> bs!1838346 (= (and (= (_1!36952 lt!2460335) s!14361) (= (regOne!34064 lt!2460340) lt!2460340) (= (regTwo!34064 lt!2460340) r3!135)) (= lambda!389757 lambda!389712))))

(declare-fun bs!1838352 () Bool)

(assert (= bs!1838352 (and b!6884057 b!6883904)))

(assert (=> bs!1838352 (= (and (= (_1!36952 lt!2460335) s!14361) (= (regOne!34064 lt!2460340) (regOne!34064 lt!2460332)) (= (regTwo!34064 lt!2460340) (regTwo!34064 lt!2460332))) (= lambda!389757 lambda!389738))))

(assert (=> bs!1838345 (not (= lambda!389757 lambda!389746))))

(declare-fun bs!1838353 () Bool)

(assert (= bs!1838353 (and b!6884057 b!6883871)))

(assert (=> bs!1838353 (= (and (= (_1!36952 lt!2460335) s!14361) (= (regOne!34064 lt!2460340) (regOne!34064 lt!2460328)) (= (regTwo!34064 lt!2460340) (regTwo!34064 lt!2460328))) (= lambda!389757 lambda!389736))))

(assert (=> b!6884057 true))

(assert (=> b!6884057 true))

(declare-fun call!626646 () Bool)

(declare-fun bm!626641 () Bool)

(declare-fun c!1280456 () Bool)

(assert (=> bm!626641 (= call!626646 (Exists!3788 (ite c!1280456 lambda!389756 lambda!389757)))))

(declare-fun b!6884047 () Bool)

(declare-fun e!4148048 () Bool)

(assert (=> b!6884047 (= e!4148048 (matchRSpec!3839 (regTwo!34065 lt!2460340) (_1!36952 lt!2460335)))))

(declare-fun d!2160282 () Bool)

(declare-fun c!1280454 () Bool)

(assert (=> d!2160282 (= c!1280454 (is-EmptyExpr!16776 lt!2460340))))

(declare-fun e!4148047 () Bool)

(assert (=> d!2160282 (= (matchRSpec!3839 lt!2460340 (_1!36952 lt!2460335)) e!4148047)))

(declare-fun b!6884048 () Bool)

(declare-fun c!1280455 () Bool)

(assert (=> b!6884048 (= c!1280455 (is-ElementMatch!16776 lt!2460340))))

(declare-fun e!4148050 () Bool)

(declare-fun e!4148051 () Bool)

(assert (=> b!6884048 (= e!4148050 e!4148051)))

(declare-fun b!6884049 () Bool)

(assert (=> b!6884049 (= e!4148051 (= (_1!36952 lt!2460335) (Cons!66409 (c!1280378 lt!2460340) Nil!66409)))))

(declare-fun b!6884050 () Bool)

(declare-fun e!4148052 () Bool)

(declare-fun e!4148053 () Bool)

(assert (=> b!6884050 (= e!4148052 e!4148053)))

(assert (=> b!6884050 (= c!1280456 (is-Star!16776 lt!2460340))))

(declare-fun b!6884051 () Bool)

(declare-fun c!1280457 () Bool)

(assert (=> b!6884051 (= c!1280457 (is-Union!16776 lt!2460340))))

(assert (=> b!6884051 (= e!4148051 e!4148052)))

(declare-fun b!6884052 () Bool)

(declare-fun res!2806268 () Bool)

(declare-fun e!4148049 () Bool)

(assert (=> b!6884052 (=> res!2806268 e!4148049)))

(declare-fun call!626647 () Bool)

(assert (=> b!6884052 (= res!2806268 call!626647)))

(assert (=> b!6884052 (= e!4148053 e!4148049)))

(assert (=> b!6884053 (= e!4148049 call!626646)))

(declare-fun b!6884054 () Bool)

(assert (=> b!6884054 (= e!4148052 e!4148048)))

(declare-fun res!2806270 () Bool)

(assert (=> b!6884054 (= res!2806270 (matchRSpec!3839 (regOne!34065 lt!2460340) (_1!36952 lt!2460335)))))

(assert (=> b!6884054 (=> res!2806270 e!4148048)))

(declare-fun b!6884055 () Bool)

(assert (=> b!6884055 (= e!4148047 e!4148050)))

(declare-fun res!2806269 () Bool)

(assert (=> b!6884055 (= res!2806269 (not (is-EmptyLang!16776 lt!2460340)))))

(assert (=> b!6884055 (=> (not res!2806269) (not e!4148050))))

(declare-fun b!6884056 () Bool)

(assert (=> b!6884056 (= e!4148047 call!626647)))

(assert (=> b!6884057 (= e!4148053 call!626646)))

(declare-fun bm!626642 () Bool)

(assert (=> bm!626642 (= call!626647 (isEmpty!38676 (_1!36952 lt!2460335)))))

(assert (= (and d!2160282 c!1280454) b!6884056))

(assert (= (and d!2160282 (not c!1280454)) b!6884055))

(assert (= (and b!6884055 res!2806269) b!6884048))

(assert (= (and b!6884048 c!1280455) b!6884049))

(assert (= (and b!6884048 (not c!1280455)) b!6884051))

(assert (= (and b!6884051 c!1280457) b!6884054))

(assert (= (and b!6884051 (not c!1280457)) b!6884050))

(assert (= (and b!6884054 (not res!2806270)) b!6884047))

(assert (= (and b!6884050 c!1280456) b!6884052))

(assert (= (and b!6884050 (not c!1280456)) b!6884057))

(assert (= (and b!6884052 (not res!2806268)) b!6884053))

(assert (= (or b!6884053 b!6884057) bm!626641))

(assert (= (or b!6884056 b!6884052) bm!626642))

(declare-fun m!7607784 () Bool)

(assert (=> bm!626641 m!7607784))

(declare-fun m!7607786 () Bool)

(assert (=> b!6884047 m!7607786))

(declare-fun m!7607788 () Bool)

(assert (=> b!6884054 m!7607788))

(declare-fun m!7607790 () Bool)

(assert (=> bm!626642 m!7607790))

(assert (=> b!6883629 d!2160282))

(declare-fun d!2160288 () Bool)

(assert (=> d!2160288 (= (get!23127 lt!2460338) (v!52832 lt!2460338))))

(assert (=> b!6883629 d!2160288))

(declare-fun d!2160290 () Bool)

(assert (=> d!2160290 (= (matchR!8921 lt!2460340 (_1!36952 lt!2460335)) (matchRSpec!3839 lt!2460340 (_1!36952 lt!2460335)))))

(declare-fun lt!2460420 () Unit!160272)

(assert (=> d!2160290 (= lt!2460420 (choose!51266 lt!2460340 (_1!36952 lt!2460335)))))

(assert (=> d!2160290 (validRegex!8484 lt!2460340)))

(assert (=> d!2160290 (= (mainMatchTheorem!3839 lt!2460340 (_1!36952 lt!2460335)) lt!2460420)))

(declare-fun bs!1838358 () Bool)

(assert (= bs!1838358 d!2160290))

(assert (=> bs!1838358 m!7607546))

(assert (=> bs!1838358 m!7607538))

(declare-fun m!7607792 () Bool)

(assert (=> bs!1838358 m!7607792))

(assert (=> bs!1838358 m!7607768))

(assert (=> b!6883629 d!2160290))

(declare-fun b!6884069 () Bool)

(declare-fun e!4148062 () Bool)

(assert (=> b!6884069 (= e!4148062 (not (= (head!13811 (_1!36952 lt!2460335)) (c!1280378 lt!2460340))))))

(declare-fun bm!626645 () Bool)

(declare-fun call!626650 () Bool)

(assert (=> bm!626645 (= call!626650 (isEmpty!38676 (_1!36952 lt!2460335)))))

(declare-fun b!6884070 () Bool)

(declare-fun e!4148067 () Bool)

(assert (=> b!6884070 (= e!4148067 (nullable!6679 lt!2460340))))

(declare-fun b!6884071 () Bool)

(declare-fun e!4148063 () Bool)

(assert (=> b!6884071 (= e!4148063 e!4148062)))

(declare-fun res!2806281 () Bool)

(assert (=> b!6884071 (=> res!2806281 e!4148062)))

(assert (=> b!6884071 (= res!2806281 call!626650)))

(declare-fun d!2160292 () Bool)

(declare-fun e!4148065 () Bool)

(assert (=> d!2160292 e!4148065))

(declare-fun c!1280464 () Bool)

(assert (=> d!2160292 (= c!1280464 (is-EmptyExpr!16776 lt!2460340))))

(declare-fun lt!2460421 () Bool)

(assert (=> d!2160292 (= lt!2460421 e!4148067)))

(declare-fun c!1280463 () Bool)

(assert (=> d!2160292 (= c!1280463 (isEmpty!38676 (_1!36952 lt!2460335)))))

(assert (=> d!2160292 (validRegex!8484 lt!2460340)))

(assert (=> d!2160292 (= (matchR!8921 lt!2460340 (_1!36952 lt!2460335)) lt!2460421)))

(declare-fun b!6884072 () Bool)

(declare-fun res!2806280 () Bool)

(declare-fun e!4148064 () Bool)

(assert (=> b!6884072 (=> res!2806280 e!4148064)))

(declare-fun e!4148061 () Bool)

(assert (=> b!6884072 (= res!2806280 e!4148061)))

(declare-fun res!2806275 () Bool)

(assert (=> b!6884072 (=> (not res!2806275) (not e!4148061))))

(assert (=> b!6884072 (= res!2806275 lt!2460421)))

(declare-fun b!6884073 () Bool)

(assert (=> b!6884073 (= e!4148067 (matchR!8921 (derivativeStep!5358 lt!2460340 (head!13811 (_1!36952 lt!2460335))) (tail!12863 (_1!36952 lt!2460335))))))

(declare-fun b!6884074 () Bool)

(declare-fun res!2806277 () Bool)

(assert (=> b!6884074 (=> (not res!2806277) (not e!4148061))))

(assert (=> b!6884074 (= res!2806277 (isEmpty!38676 (tail!12863 (_1!36952 lt!2460335))))))

(declare-fun b!6884075 () Bool)

(assert (=> b!6884075 (= e!4148064 e!4148063)))

(declare-fun res!2806278 () Bool)

(assert (=> b!6884075 (=> (not res!2806278) (not e!4148063))))

(assert (=> b!6884075 (= res!2806278 (not lt!2460421))))

(declare-fun b!6884076 () Bool)

(declare-fun res!2806279 () Bool)

(assert (=> b!6884076 (=> res!2806279 e!4148064)))

(assert (=> b!6884076 (= res!2806279 (not (is-ElementMatch!16776 lt!2460340)))))

(declare-fun e!4148066 () Bool)

(assert (=> b!6884076 (= e!4148066 e!4148064)))

(declare-fun b!6884077 () Bool)

(assert (=> b!6884077 (= e!4148065 (= lt!2460421 call!626650))))

(declare-fun b!6884078 () Bool)

(declare-fun res!2806274 () Bool)

(assert (=> b!6884078 (=> res!2806274 e!4148062)))

(assert (=> b!6884078 (= res!2806274 (not (isEmpty!38676 (tail!12863 (_1!36952 lt!2460335)))))))

(declare-fun b!6884079 () Bool)

(assert (=> b!6884079 (= e!4148061 (= (head!13811 (_1!36952 lt!2460335)) (c!1280378 lt!2460340)))))

(declare-fun b!6884080 () Bool)

(declare-fun res!2806276 () Bool)

(assert (=> b!6884080 (=> (not res!2806276) (not e!4148061))))

(assert (=> b!6884080 (= res!2806276 (not call!626650))))

(declare-fun b!6884081 () Bool)

(assert (=> b!6884081 (= e!4148065 e!4148066)))

(declare-fun c!1280462 () Bool)

(assert (=> b!6884081 (= c!1280462 (is-EmptyLang!16776 lt!2460340))))

(declare-fun b!6884082 () Bool)

(assert (=> b!6884082 (= e!4148066 (not lt!2460421))))

(assert (= (and d!2160292 c!1280463) b!6884070))

(assert (= (and d!2160292 (not c!1280463)) b!6884073))

(assert (= (and d!2160292 c!1280464) b!6884077))

(assert (= (and d!2160292 (not c!1280464)) b!6884081))

(assert (= (and b!6884081 c!1280462) b!6884082))

(assert (= (and b!6884081 (not c!1280462)) b!6884076))

(assert (= (and b!6884076 (not res!2806279)) b!6884072))

(assert (= (and b!6884072 res!2806275) b!6884080))

(assert (= (and b!6884080 res!2806276) b!6884074))

(assert (= (and b!6884074 res!2806277) b!6884079))

(assert (= (and b!6884072 (not res!2806280)) b!6884075))

(assert (= (and b!6884075 res!2806278) b!6884071))

(assert (= (and b!6884071 (not res!2806281)) b!6884078))

(assert (= (and b!6884078 (not res!2806274)) b!6884069))

(assert (= (or b!6884077 b!6884071 b!6884080) bm!626645))

(assert (=> bm!626645 m!7607790))

(declare-fun m!7607794 () Bool)

(assert (=> b!6884073 m!7607794))

(assert (=> b!6884073 m!7607794))

(declare-fun m!7607796 () Bool)

(assert (=> b!6884073 m!7607796))

(declare-fun m!7607798 () Bool)

(assert (=> b!6884073 m!7607798))

(assert (=> b!6884073 m!7607796))

(assert (=> b!6884073 m!7607798))

(declare-fun m!7607800 () Bool)

(assert (=> b!6884073 m!7607800))

(assert (=> d!2160292 m!7607790))

(assert (=> d!2160292 m!7607768))

(assert (=> b!6884079 m!7607794))

(assert (=> b!6884078 m!7607798))

(assert (=> b!6884078 m!7607798))

(declare-fun m!7607802 () Bool)

(assert (=> b!6884078 m!7607802))

(assert (=> b!6884069 m!7607794))

(assert (=> b!6884074 m!7607798))

(assert (=> b!6884074 m!7607798))

(assert (=> b!6884074 m!7607802))

(declare-fun m!7607804 () Bool)

(assert (=> b!6884070 m!7607804))

(assert (=> b!6883629 d!2160292))

(declare-fun bs!1838360 () Bool)

(declare-fun d!2160294 () Bool)

(assert (= bs!1838360 (and d!2160294 b!6883867)))

(declare-fun lambda!389760 () Int)

(assert (=> bs!1838360 (not (= lambda!389760 lambda!389735))))

(declare-fun bs!1838361 () Bool)

(assert (= bs!1838361 (and d!2160294 d!2160262)))

(assert (=> bs!1838361 (not (= lambda!389760 lambda!389747))))

(declare-fun bs!1838363 () Bool)

(assert (= bs!1838363 (and d!2160294 b!6884057)))

(assert (=> bs!1838363 (not (= lambda!389760 lambda!389757))))

(declare-fun bs!1838364 () Bool)

(assert (= bs!1838364 (and d!2160294 b!6883629)))

(assert (=> bs!1838364 (= lambda!389760 lambda!389711)))

(declare-fun bs!1838366 () Bool)

(assert (= bs!1838366 (and d!2160294 b!6883900)))

(assert (=> bs!1838366 (not (= lambda!389760 lambda!389737))))

(declare-fun bs!1838367 () Bool)

(assert (= bs!1838367 (and d!2160294 b!6883625)))

(assert (=> bs!1838367 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389760 lambda!389713))))

(declare-fun bs!1838368 () Bool)

(assert (= bs!1838368 (and d!2160294 d!2160274)))

(assert (=> bs!1838368 (not (= lambda!389760 lambda!389755))))

(declare-fun bs!1838369 () Bool)

(assert (= bs!1838369 (and d!2160294 b!6884053)))

(assert (=> bs!1838369 (not (= lambda!389760 lambda!389756))))

(declare-fun bs!1838370 () Bool)

(assert (= bs!1838370 (and d!2160294 d!2160256)))

(assert (=> bs!1838370 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389760 lambda!389741))))

(assert (=> bs!1838367 (not (= lambda!389760 lambda!389714))))

(assert (=> bs!1838368 (= lambda!389760 lambda!389753)))

(assert (=> bs!1838364 (not (= lambda!389760 lambda!389712))))

(declare-fun bs!1838373 () Bool)

(assert (= bs!1838373 (and d!2160294 b!6883904)))

(assert (=> bs!1838373 (not (= lambda!389760 lambda!389738))))

(assert (=> bs!1838361 (= (and (= s!14361 (_1!36952 lt!2460335)) (= lt!2460340 r1!6342) (= r3!135 r2!6280)) (= lambda!389760 lambda!389746))))

(declare-fun bs!1838374 () Bool)

(assert (= bs!1838374 (and d!2160294 b!6883871)))

(assert (=> bs!1838374 (not (= lambda!389760 lambda!389736))))

(assert (=> d!2160294 true))

(assert (=> d!2160294 true))

(assert (=> d!2160294 true))

(assert (=> d!2160294 (= (isDefined!13264 (findConcatSeparation!2975 lt!2460340 r3!135 Nil!66409 s!14361 s!14361)) (Exists!3788 lambda!389760))))

(declare-fun lt!2460422 () Unit!160272)

(assert (=> d!2160294 (= lt!2460422 (choose!51267 lt!2460340 r3!135 s!14361))))

(assert (=> d!2160294 (validRegex!8484 lt!2460340)))

(assert (=> d!2160294 (= (lemmaFindConcatSeparationEquivalentToExists!2739 lt!2460340 r3!135 s!14361) lt!2460422)))

(declare-fun bs!1838375 () Bool)

(assert (= bs!1838375 d!2160294))

(declare-fun m!7607806 () Bool)

(assert (=> bs!1838375 m!7607806))

(assert (=> bs!1838375 m!7607768))

(assert (=> bs!1838375 m!7607540))

(declare-fun m!7607808 () Bool)

(assert (=> bs!1838375 m!7607808))

(declare-fun m!7607810 () Bool)

(assert (=> bs!1838375 m!7607810))

(assert (=> bs!1838375 m!7607540))

(assert (=> b!6883629 d!2160294))

(declare-fun b!6884083 () Bool)

(declare-fun res!2806283 () Bool)

(declare-fun e!4148069 () Bool)

(assert (=> b!6884083 (=> (not res!2806283) (not e!4148069))))

(declare-fun lt!2460423 () Option!16561)

(assert (=> b!6884083 (= res!2806283 (matchR!8921 r3!135 (_2!36952 (get!23127 lt!2460423))))))

(declare-fun b!6884084 () Bool)

(declare-fun lt!2460424 () Unit!160272)

(declare-fun lt!2460425 () Unit!160272)

(assert (=> b!6884084 (= lt!2460424 lt!2460425)))

(assert (=> b!6884084 (= (++!14861 (++!14861 Nil!66409 (Cons!66409 (h!72857 s!14361) Nil!66409)) (t!380276 s!14361)) s!14361)))

(assert (=> b!6884084 (= lt!2460425 (lemmaMoveElementToOtherListKeepsConcatEq!2770 Nil!66409 (h!72857 s!14361) (t!380276 s!14361) s!14361))))

(declare-fun e!4148068 () Option!16561)

(assert (=> b!6884084 (= e!4148068 (findConcatSeparation!2975 lt!2460340 r3!135 (++!14861 Nil!66409 (Cons!66409 (h!72857 s!14361) Nil!66409)) (t!380276 s!14361) s!14361))))

(declare-fun b!6884085 () Bool)

(declare-fun res!2806285 () Bool)

(assert (=> b!6884085 (=> (not res!2806285) (not e!4148069))))

(assert (=> b!6884085 (= res!2806285 (matchR!8921 lt!2460340 (_1!36952 (get!23127 lt!2460423))))))

(declare-fun b!6884086 () Bool)

(declare-fun e!4148070 () Bool)

(assert (=> b!6884086 (= e!4148070 (matchR!8921 r3!135 s!14361))))

(declare-fun d!2160296 () Bool)

(declare-fun e!4148072 () Bool)

(assert (=> d!2160296 e!4148072))

(declare-fun res!2806284 () Bool)

(assert (=> d!2160296 (=> res!2806284 e!4148072)))

(assert (=> d!2160296 (= res!2806284 e!4148069)))

(declare-fun res!2806286 () Bool)

(assert (=> d!2160296 (=> (not res!2806286) (not e!4148069))))

(assert (=> d!2160296 (= res!2806286 (isDefined!13264 lt!2460423))))

(declare-fun e!4148071 () Option!16561)

(assert (=> d!2160296 (= lt!2460423 e!4148071)))

(declare-fun c!1280466 () Bool)

(assert (=> d!2160296 (= c!1280466 e!4148070)))

(declare-fun res!2806282 () Bool)

(assert (=> d!2160296 (=> (not res!2806282) (not e!4148070))))

(assert (=> d!2160296 (= res!2806282 (matchR!8921 lt!2460340 Nil!66409))))

(assert (=> d!2160296 (validRegex!8484 lt!2460340)))

(assert (=> d!2160296 (= (findConcatSeparation!2975 lt!2460340 r3!135 Nil!66409 s!14361 s!14361) lt!2460423)))

(declare-fun b!6884087 () Bool)

(assert (=> b!6884087 (= e!4148071 (Some!16560 (tuple2!67299 Nil!66409 s!14361)))))

(declare-fun b!6884088 () Bool)

(assert (=> b!6884088 (= e!4148068 None!16560)))

(declare-fun b!6884089 () Bool)

(assert (=> b!6884089 (= e!4148071 e!4148068)))

(declare-fun c!1280465 () Bool)

(assert (=> b!6884089 (= c!1280465 (is-Nil!66409 s!14361))))

(declare-fun b!6884090 () Bool)

(assert (=> b!6884090 (= e!4148072 (not (isDefined!13264 lt!2460423)))))

(declare-fun b!6884091 () Bool)

(assert (=> b!6884091 (= e!4148069 (= (++!14861 (_1!36952 (get!23127 lt!2460423)) (_2!36952 (get!23127 lt!2460423))) s!14361))))

(assert (= (and d!2160296 res!2806282) b!6884086))

(assert (= (and d!2160296 c!1280466) b!6884087))

(assert (= (and d!2160296 (not c!1280466)) b!6884089))

(assert (= (and b!6884089 c!1280465) b!6884088))

(assert (= (and b!6884089 (not c!1280465)) b!6884084))

(assert (= (and d!2160296 res!2806286) b!6884085))

(assert (= (and b!6884085 res!2806285) b!6884083))

(assert (= (and b!6884083 res!2806283) b!6884091))

(assert (= (and d!2160296 (not res!2806284)) b!6884090))

(declare-fun m!7607818 () Bool)

(assert (=> b!6884083 m!7607818))

(declare-fun m!7607820 () Bool)

(assert (=> b!6884083 m!7607820))

(assert (=> b!6884091 m!7607818))

(declare-fun m!7607822 () Bool)

(assert (=> b!6884091 m!7607822))

(declare-fun m!7607824 () Bool)

(assert (=> b!6884090 m!7607824))

(assert (=> d!2160296 m!7607824))

(declare-fun m!7607826 () Bool)

(assert (=> d!2160296 m!7607826))

(assert (=> d!2160296 m!7607768))

(assert (=> b!6884085 m!7607818))

(declare-fun m!7607828 () Bool)

(assert (=> b!6884085 m!7607828))

(declare-fun m!7607830 () Bool)

(assert (=> b!6884086 m!7607830))

(declare-fun m!7607834 () Bool)

(assert (=> b!6884084 m!7607834))

(assert (=> b!6884084 m!7607834))

(declare-fun m!7607838 () Bool)

(assert (=> b!6884084 m!7607838))

(declare-fun m!7607840 () Bool)

(assert (=> b!6884084 m!7607840))

(assert (=> b!6884084 m!7607834))

(declare-fun m!7607842 () Bool)

(assert (=> b!6884084 m!7607842))

(assert (=> b!6883629 d!2160296))

(declare-fun b!6884105 () Bool)

(declare-fun e!4148075 () Bool)

(declare-fun tp!1893539 () Bool)

(declare-fun tp!1893541 () Bool)

(assert (=> b!6884105 (= e!4148075 (and tp!1893539 tp!1893541))))

(declare-fun b!6884104 () Bool)

(declare-fun tp!1893540 () Bool)

(assert (=> b!6884104 (= e!4148075 tp!1893540)))

(assert (=> b!6883616 (= tp!1893468 e!4148075)))

(declare-fun b!6884102 () Bool)

(assert (=> b!6884102 (= e!4148075 tp_is_empty!42777)))

(declare-fun b!6884103 () Bool)

(declare-fun tp!1893538 () Bool)

(declare-fun tp!1893542 () Bool)

(assert (=> b!6884103 (= e!4148075 (and tp!1893538 tp!1893542))))

(assert (= (and b!6883616 (is-ElementMatch!16776 (regOne!34065 r2!6280))) b!6884102))

(assert (= (and b!6883616 (is-Concat!25621 (regOne!34065 r2!6280))) b!6884103))

(assert (= (and b!6883616 (is-Star!16776 (regOne!34065 r2!6280))) b!6884104))

(assert (= (and b!6883616 (is-Union!16776 (regOne!34065 r2!6280))) b!6884105))

(declare-fun b!6884109 () Bool)

(declare-fun e!4148076 () Bool)

(declare-fun tp!1893544 () Bool)

(declare-fun tp!1893546 () Bool)

(assert (=> b!6884109 (= e!4148076 (and tp!1893544 tp!1893546))))

(declare-fun b!6884108 () Bool)

(declare-fun tp!1893545 () Bool)

(assert (=> b!6884108 (= e!4148076 tp!1893545)))

(assert (=> b!6883616 (= tp!1893472 e!4148076)))

(declare-fun b!6884106 () Bool)

(assert (=> b!6884106 (= e!4148076 tp_is_empty!42777)))

(declare-fun b!6884107 () Bool)

(declare-fun tp!1893543 () Bool)

(declare-fun tp!1893547 () Bool)

(assert (=> b!6884107 (= e!4148076 (and tp!1893543 tp!1893547))))

(assert (= (and b!6883616 (is-ElementMatch!16776 (regTwo!34065 r2!6280))) b!6884106))

(assert (= (and b!6883616 (is-Concat!25621 (regTwo!34065 r2!6280))) b!6884107))

(assert (= (and b!6883616 (is-Star!16776 (regTwo!34065 r2!6280))) b!6884108))

(assert (= (and b!6883616 (is-Union!16776 (regTwo!34065 r2!6280))) b!6884109))

(declare-fun b!6884113 () Bool)

(declare-fun e!4148077 () Bool)

(declare-fun tp!1893549 () Bool)

(declare-fun tp!1893551 () Bool)

(assert (=> b!6884113 (= e!4148077 (and tp!1893549 tp!1893551))))

(declare-fun b!6884112 () Bool)

(declare-fun tp!1893550 () Bool)

(assert (=> b!6884112 (= e!4148077 tp!1893550)))

(assert (=> b!6883632 (= tp!1893469 e!4148077)))

(declare-fun b!6884110 () Bool)

(assert (=> b!6884110 (= e!4148077 tp_is_empty!42777)))

(declare-fun b!6884111 () Bool)

(declare-fun tp!1893548 () Bool)

(declare-fun tp!1893552 () Bool)

(assert (=> b!6884111 (= e!4148077 (and tp!1893548 tp!1893552))))

(assert (= (and b!6883632 (is-ElementMatch!16776 (regOne!34064 r2!6280))) b!6884110))

(assert (= (and b!6883632 (is-Concat!25621 (regOne!34064 r2!6280))) b!6884111))

(assert (= (and b!6883632 (is-Star!16776 (regOne!34064 r2!6280))) b!6884112))

(assert (= (and b!6883632 (is-Union!16776 (regOne!34064 r2!6280))) b!6884113))

(declare-fun b!6884117 () Bool)

(declare-fun e!4148078 () Bool)

(declare-fun tp!1893554 () Bool)

(declare-fun tp!1893556 () Bool)

(assert (=> b!6884117 (= e!4148078 (and tp!1893554 tp!1893556))))

(declare-fun b!6884116 () Bool)

(declare-fun tp!1893555 () Bool)

(assert (=> b!6884116 (= e!4148078 tp!1893555)))

(assert (=> b!6883632 (= tp!1893471 e!4148078)))

(declare-fun b!6884114 () Bool)

(assert (=> b!6884114 (= e!4148078 tp_is_empty!42777)))

(declare-fun b!6884115 () Bool)

(declare-fun tp!1893553 () Bool)

(declare-fun tp!1893557 () Bool)

(assert (=> b!6884115 (= e!4148078 (and tp!1893553 tp!1893557))))

(assert (= (and b!6883632 (is-ElementMatch!16776 (regTwo!34064 r2!6280))) b!6884114))

(assert (= (and b!6883632 (is-Concat!25621 (regTwo!34064 r2!6280))) b!6884115))

(assert (= (and b!6883632 (is-Star!16776 (regTwo!34064 r2!6280))) b!6884116))

(assert (= (and b!6883632 (is-Union!16776 (regTwo!34064 r2!6280))) b!6884117))

(declare-fun b!6884121 () Bool)

(declare-fun e!4148079 () Bool)

(declare-fun tp!1893559 () Bool)

(declare-fun tp!1893561 () Bool)

(assert (=> b!6884121 (= e!4148079 (and tp!1893559 tp!1893561))))

(declare-fun b!6884120 () Bool)

(declare-fun tp!1893560 () Bool)

(assert (=> b!6884120 (= e!4148079 tp!1893560)))

(assert (=> b!6883627 (= tp!1893475 e!4148079)))

(declare-fun b!6884118 () Bool)

(assert (=> b!6884118 (= e!4148079 tp_is_empty!42777)))

(declare-fun b!6884119 () Bool)

(declare-fun tp!1893558 () Bool)

(declare-fun tp!1893562 () Bool)

(assert (=> b!6884119 (= e!4148079 (and tp!1893558 tp!1893562))))

(assert (= (and b!6883627 (is-ElementMatch!16776 (reg!17105 r3!135))) b!6884118))

(assert (= (and b!6883627 (is-Concat!25621 (reg!17105 r3!135))) b!6884119))

(assert (= (and b!6883627 (is-Star!16776 (reg!17105 r3!135))) b!6884120))

(assert (= (and b!6883627 (is-Union!16776 (reg!17105 r3!135))) b!6884121))

(declare-fun b!6884126 () Bool)

(declare-fun e!4148082 () Bool)

(declare-fun tp!1893565 () Bool)

(assert (=> b!6884126 (= e!4148082 (and tp_is_empty!42777 tp!1893565))))

(assert (=> b!6883626 (= tp!1893478 e!4148082)))

(assert (= (and b!6883626 (is-Cons!66409 (t!380276 s!14361))) b!6884126))

(declare-fun b!6884130 () Bool)

(declare-fun e!4148083 () Bool)

(declare-fun tp!1893567 () Bool)

(declare-fun tp!1893569 () Bool)

(assert (=> b!6884130 (= e!4148083 (and tp!1893567 tp!1893569))))

(declare-fun b!6884129 () Bool)

(declare-fun tp!1893568 () Bool)

(assert (=> b!6884129 (= e!4148083 tp!1893568)))

(assert (=> b!6883620 (= tp!1893465 e!4148083)))

(declare-fun b!6884127 () Bool)

(assert (=> b!6884127 (= e!4148083 tp_is_empty!42777)))

(declare-fun b!6884128 () Bool)

(declare-fun tp!1893566 () Bool)

(declare-fun tp!1893570 () Bool)

(assert (=> b!6884128 (= e!4148083 (and tp!1893566 tp!1893570))))

(assert (= (and b!6883620 (is-ElementMatch!16776 (regOne!34065 r1!6342))) b!6884127))

(assert (= (and b!6883620 (is-Concat!25621 (regOne!34065 r1!6342))) b!6884128))

(assert (= (and b!6883620 (is-Star!16776 (regOne!34065 r1!6342))) b!6884129))

(assert (= (and b!6883620 (is-Union!16776 (regOne!34065 r1!6342))) b!6884130))

(declare-fun b!6884134 () Bool)

(declare-fun e!4148084 () Bool)

(declare-fun tp!1893572 () Bool)

(declare-fun tp!1893574 () Bool)

(assert (=> b!6884134 (= e!4148084 (and tp!1893572 tp!1893574))))

(declare-fun b!6884133 () Bool)

(declare-fun tp!1893573 () Bool)

(assert (=> b!6884133 (= e!4148084 tp!1893573)))

(assert (=> b!6883620 (= tp!1893467 e!4148084)))

(declare-fun b!6884131 () Bool)

(assert (=> b!6884131 (= e!4148084 tp_is_empty!42777)))

(declare-fun b!6884132 () Bool)

(declare-fun tp!1893571 () Bool)

(declare-fun tp!1893575 () Bool)

(assert (=> b!6884132 (= e!4148084 (and tp!1893571 tp!1893575))))

(assert (= (and b!6883620 (is-ElementMatch!16776 (regTwo!34065 r1!6342))) b!6884131))

(assert (= (and b!6883620 (is-Concat!25621 (regTwo!34065 r1!6342))) b!6884132))

(assert (= (and b!6883620 (is-Star!16776 (regTwo!34065 r1!6342))) b!6884133))

(assert (= (and b!6883620 (is-Union!16776 (regTwo!34065 r1!6342))) b!6884134))

(declare-fun b!6884138 () Bool)

(declare-fun e!4148085 () Bool)

(declare-fun tp!1893577 () Bool)

(declare-fun tp!1893579 () Bool)

(assert (=> b!6884138 (= e!4148085 (and tp!1893577 tp!1893579))))

(declare-fun b!6884137 () Bool)

(declare-fun tp!1893578 () Bool)

(assert (=> b!6884137 (= e!4148085 tp!1893578)))

(assert (=> b!6883631 (= tp!1893466 e!4148085)))

(declare-fun b!6884135 () Bool)

(assert (=> b!6884135 (= e!4148085 tp_is_empty!42777)))

(declare-fun b!6884136 () Bool)

(declare-fun tp!1893576 () Bool)

(declare-fun tp!1893580 () Bool)

(assert (=> b!6884136 (= e!4148085 (and tp!1893576 tp!1893580))))

(assert (= (and b!6883631 (is-ElementMatch!16776 (regOne!34064 r3!135))) b!6884135))

(assert (= (and b!6883631 (is-Concat!25621 (regOne!34064 r3!135))) b!6884136))

(assert (= (and b!6883631 (is-Star!16776 (regOne!34064 r3!135))) b!6884137))

(assert (= (and b!6883631 (is-Union!16776 (regOne!34064 r3!135))) b!6884138))

(declare-fun b!6884142 () Bool)

(declare-fun e!4148086 () Bool)

(declare-fun tp!1893582 () Bool)

(declare-fun tp!1893584 () Bool)

(assert (=> b!6884142 (= e!4148086 (and tp!1893582 tp!1893584))))

(declare-fun b!6884141 () Bool)

(declare-fun tp!1893583 () Bool)

(assert (=> b!6884141 (= e!4148086 tp!1893583)))

(assert (=> b!6883631 (= tp!1893477 e!4148086)))

(declare-fun b!6884139 () Bool)

(assert (=> b!6884139 (= e!4148086 tp_is_empty!42777)))

(declare-fun b!6884140 () Bool)

(declare-fun tp!1893581 () Bool)

(declare-fun tp!1893585 () Bool)

(assert (=> b!6884140 (= e!4148086 (and tp!1893581 tp!1893585))))

(assert (= (and b!6883631 (is-ElementMatch!16776 (regTwo!34064 r3!135))) b!6884139))

(assert (= (and b!6883631 (is-Concat!25621 (regTwo!34064 r3!135))) b!6884140))

(assert (= (and b!6883631 (is-Star!16776 (regTwo!34064 r3!135))) b!6884141))

(assert (= (and b!6883631 (is-Union!16776 (regTwo!34064 r3!135))) b!6884142))

(declare-fun b!6884146 () Bool)

(declare-fun e!4148087 () Bool)

(declare-fun tp!1893587 () Bool)

(declare-fun tp!1893589 () Bool)

(assert (=> b!6884146 (= e!4148087 (and tp!1893587 tp!1893589))))

(declare-fun b!6884145 () Bool)

(declare-fun tp!1893588 () Bool)

(assert (=> b!6884145 (= e!4148087 tp!1893588)))

(assert (=> b!6883630 (= tp!1893476 e!4148087)))

(declare-fun b!6884143 () Bool)

(assert (=> b!6884143 (= e!4148087 tp_is_empty!42777)))

(declare-fun b!6884144 () Bool)

(declare-fun tp!1893586 () Bool)

(declare-fun tp!1893590 () Bool)

(assert (=> b!6884144 (= e!4148087 (and tp!1893586 tp!1893590))))

(assert (= (and b!6883630 (is-ElementMatch!16776 (regOne!34065 r3!135))) b!6884143))

(assert (= (and b!6883630 (is-Concat!25621 (regOne!34065 r3!135))) b!6884144))

(assert (= (and b!6883630 (is-Star!16776 (regOne!34065 r3!135))) b!6884145))

(assert (= (and b!6883630 (is-Union!16776 (regOne!34065 r3!135))) b!6884146))

(declare-fun b!6884150 () Bool)

(declare-fun e!4148088 () Bool)

(declare-fun tp!1893592 () Bool)

(declare-fun tp!1893594 () Bool)

(assert (=> b!6884150 (= e!4148088 (and tp!1893592 tp!1893594))))

(declare-fun b!6884149 () Bool)

(declare-fun tp!1893593 () Bool)

(assert (=> b!6884149 (= e!4148088 tp!1893593)))

(assert (=> b!6883630 (= tp!1893473 e!4148088)))

(declare-fun b!6884147 () Bool)

(assert (=> b!6884147 (= e!4148088 tp_is_empty!42777)))

(declare-fun b!6884148 () Bool)

(declare-fun tp!1893591 () Bool)

(declare-fun tp!1893595 () Bool)

(assert (=> b!6884148 (= e!4148088 (and tp!1893591 tp!1893595))))

(assert (= (and b!6883630 (is-ElementMatch!16776 (regTwo!34065 r3!135))) b!6884147))

(assert (= (and b!6883630 (is-Concat!25621 (regTwo!34065 r3!135))) b!6884148))

(assert (= (and b!6883630 (is-Star!16776 (regTwo!34065 r3!135))) b!6884149))

(assert (= (and b!6883630 (is-Union!16776 (regTwo!34065 r3!135))) b!6884150))

(declare-fun b!6884154 () Bool)

(declare-fun e!4148089 () Bool)

(declare-fun tp!1893597 () Bool)

(declare-fun tp!1893599 () Bool)

(assert (=> b!6884154 (= e!4148089 (and tp!1893597 tp!1893599))))

(declare-fun b!6884153 () Bool)

(declare-fun tp!1893598 () Bool)

(assert (=> b!6884153 (= e!4148089 tp!1893598)))

(assert (=> b!6883619 (= tp!1893464 e!4148089)))

(declare-fun b!6884151 () Bool)

(assert (=> b!6884151 (= e!4148089 tp_is_empty!42777)))

(declare-fun b!6884152 () Bool)

(declare-fun tp!1893596 () Bool)

(declare-fun tp!1893600 () Bool)

(assert (=> b!6884152 (= e!4148089 (and tp!1893596 tp!1893600))))

(assert (= (and b!6883619 (is-ElementMatch!16776 (reg!17105 r1!6342))) b!6884151))

(assert (= (and b!6883619 (is-Concat!25621 (reg!17105 r1!6342))) b!6884152))

(assert (= (and b!6883619 (is-Star!16776 (reg!17105 r1!6342))) b!6884153))

(assert (= (and b!6883619 (is-Union!16776 (reg!17105 r1!6342))) b!6884154))

(declare-fun b!6884158 () Bool)

(declare-fun e!4148090 () Bool)

(declare-fun tp!1893602 () Bool)

(declare-fun tp!1893604 () Bool)

(assert (=> b!6884158 (= e!4148090 (and tp!1893602 tp!1893604))))

(declare-fun b!6884157 () Bool)

(declare-fun tp!1893603 () Bool)

(assert (=> b!6884157 (= e!4148090 tp!1893603)))

(assert (=> b!6883618 (= tp!1893474 e!4148090)))

(declare-fun b!6884155 () Bool)

(assert (=> b!6884155 (= e!4148090 tp_is_empty!42777)))

(declare-fun b!6884156 () Bool)

(declare-fun tp!1893601 () Bool)

(declare-fun tp!1893605 () Bool)

(assert (=> b!6884156 (= e!4148090 (and tp!1893601 tp!1893605))))

(assert (= (and b!6883618 (is-ElementMatch!16776 (regOne!34064 r1!6342))) b!6884155))

(assert (= (and b!6883618 (is-Concat!25621 (regOne!34064 r1!6342))) b!6884156))

(assert (= (and b!6883618 (is-Star!16776 (regOne!34064 r1!6342))) b!6884157))

(assert (= (and b!6883618 (is-Union!16776 (regOne!34064 r1!6342))) b!6884158))

(declare-fun b!6884162 () Bool)

(declare-fun e!4148091 () Bool)

(declare-fun tp!1893607 () Bool)

(declare-fun tp!1893609 () Bool)

(assert (=> b!6884162 (= e!4148091 (and tp!1893607 tp!1893609))))

(declare-fun b!6884161 () Bool)

(declare-fun tp!1893608 () Bool)

(assert (=> b!6884161 (= e!4148091 tp!1893608)))

(assert (=> b!6883618 (= tp!1893479 e!4148091)))

(declare-fun b!6884159 () Bool)

(assert (=> b!6884159 (= e!4148091 tp_is_empty!42777)))

(declare-fun b!6884160 () Bool)

(declare-fun tp!1893606 () Bool)

(declare-fun tp!1893610 () Bool)

(assert (=> b!6884160 (= e!4148091 (and tp!1893606 tp!1893610))))

(assert (= (and b!6883618 (is-ElementMatch!16776 (regTwo!34064 r1!6342))) b!6884159))

(assert (= (and b!6883618 (is-Concat!25621 (regTwo!34064 r1!6342))) b!6884160))

(assert (= (and b!6883618 (is-Star!16776 (regTwo!34064 r1!6342))) b!6884161))

(assert (= (and b!6883618 (is-Union!16776 (regTwo!34064 r1!6342))) b!6884162))

(declare-fun b!6884166 () Bool)

(declare-fun e!4148092 () Bool)

(declare-fun tp!1893612 () Bool)

(declare-fun tp!1893614 () Bool)

(assert (=> b!6884166 (= e!4148092 (and tp!1893612 tp!1893614))))

(declare-fun b!6884165 () Bool)

(declare-fun tp!1893613 () Bool)

(assert (=> b!6884165 (= e!4148092 tp!1893613)))

(assert (=> b!6883634 (= tp!1893470 e!4148092)))

(declare-fun b!6884163 () Bool)

(assert (=> b!6884163 (= e!4148092 tp_is_empty!42777)))

(declare-fun b!6884164 () Bool)

(declare-fun tp!1893611 () Bool)

(declare-fun tp!1893615 () Bool)

(assert (=> b!6884164 (= e!4148092 (and tp!1893611 tp!1893615))))

(assert (= (and b!6883634 (is-ElementMatch!16776 (reg!17105 r2!6280))) b!6884163))

(assert (= (and b!6883634 (is-Concat!25621 (reg!17105 r2!6280))) b!6884164))

(assert (= (and b!6883634 (is-Star!16776 (reg!17105 r2!6280))) b!6884165))

(assert (= (and b!6883634 (is-Union!16776 (reg!17105 r2!6280))) b!6884166))

(push 1)

(assert (not b!6884148))

(assert (not b!6883748))

(assert (not b!6883766))

(assert (not b!6883911))

(assert (not b!6884142))

(assert (not b!6884030))

(assert (not b!6883757))

(assert (not d!2160262))

(assert (not b!6884133))

(assert (not d!2160260))

(assert (not b!6884111))

(assert (not b!6884079))

(assert (not b!6884073))

(assert (not b!6883915))

(assert (not b!6884119))

(assert (not b!6884054))

(assert (not b!6884157))

(assert (not b!6884120))

(assert (not b!6883912))

(assert (not b!6884144))

(assert (not b!6884145))

(assert (not b!6884084))

(assert (not b!6884141))

(assert (not b!6883811))

(assert (not b!6884137))

(assert (not b!6884047))

(assert (not b!6884074))

(assert (not b!6884150))

(assert (not b!6884107))

(assert (not b!6884134))

(assert (not b!6883806))

(assert (not b!6884008))

(assert (not b!6884149))

(assert (not d!2160292))

(assert (not b!6884153))

(assert (not bm!626627))

(assert (not bm!626614))

(assert (not b!6884161))

(assert (not b!6883921))

(assert (not bm!626629))

(assert (not b!6883916))

(assert (not b!6884105))

(assert (not b!6884078))

(assert (not b!6884138))

(assert (not b!6884128))

(assert (not b!6884126))

(assert (not b!6884070))

(assert (not bm!626621))

(assert (not bm!626616))

(assert (not b!6883920))

(assert (not b!6884108))

(assert (not b!6883802))

(assert (not b!6884140))

(assert (not b!6883825))

(assert (not b!6884091))

(assert (not b!6884002))

(assert (not b!6884166))

(assert (not b!6884085))

(assert (not b!6884158))

(assert (not b!6884146))

(assert (not b!6883820))

(assert (not b!6883816))

(assert (not b!6883901))

(assert (not b!6883868))

(assert (not b!6884113))

(assert (not b!6884109))

(assert (not bm!626611))

(assert (not d!2160246))

(assert (not d!2160296))

(assert (not b!6884117))

(assert (not d!2160290))

(assert (not d!2160242))

(assert (not b!6884083))

(assert (not b!6884001))

(assert (not b!6884130))

(assert (not b!6884152))

(assert (not d!2160276))

(assert (not bm!626641))

(assert (not b!6883805))

(assert (not d!2160274))

(assert (not d!2160272))

(assert (not b!6884069))

(assert (not b!6883894))

(assert (not b!6884086))

(assert (not b!6883810))

(assert (not b!6884090))

(assert (not b!6884121))

(assert (not b!6884164))

(assert (not bm!626628))

(assert tp_is_empty!42777)

(assert (not b!6883801))

(assert (not d!2160256))

(assert (not b!6883819))

(assert (not bm!626632))

(assert (not b!6884112))

(assert (not bm!626642))

(assert (not d!2160270))

(assert (not b!6884031))

(assert (not b!6884136))

(assert (not bm!626613))

(assert (not d!2160268))

(assert (not bm!626610))

(assert (not b!6884132))

(assert (not d!2160294))

(assert (not d!2160254))

(assert (not d!2160238))

(assert (not b!6883815))

(assert (not bm!626620))

(assert (not b!6884154))

(assert (not b!6884103))

(assert (not b!6884156))

(assert (not d!2160266))

(assert (not d!2160264))

(assert (not b!6883824))

(assert (not bm!626617))

(assert (not b!6884162))

(assert (not b!6884003))

(assert (not b!6884165))

(assert (not bm!626626))

(assert (not b!6884116))

(assert (not d!2160244))

(assert (not bm!626645))

(assert (not b!6884129))

(assert (not b!6884009))

(assert (not d!2160280))

(assert (not b!6884004))

(assert (not b!6884160))

(assert (not b!6884115))

(assert (not b!6883861))

(assert (not b!6884104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

