; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690390 () Bool)

(assert start!690390)

(declare-fun b!7092607 () Bool)

(assert (=> b!7092607 true))

(declare-fun b!7092601 () Bool)

(declare-fun e!4263639 () Bool)

(declare-fun tp_is_empty!44845 () Bool)

(assert (=> b!7092601 (= e!4263639 tp_is_empty!44845)))

(declare-fun b!7092602 () Bool)

(declare-fun e!4263643 () Bool)

(declare-fun e!4263644 () Bool)

(assert (=> b!7092602 (= e!4263643 e!4263644)))

(declare-fun res!2896555 () Bool)

(assert (=> b!7092602 (=> (not res!2896555) (not e!4263644))))

(declare-datatypes ((C!35882 0))(
  ( (C!35883 (val!27647 Int)) )
))
(declare-datatypes ((Regex!17806 0))(
  ( (ElementMatch!17806 (c!1323631 C!35882)) (Concat!26651 (regOne!36124 Regex!17806) (regTwo!36124 Regex!17806)) (EmptyExpr!17806) (Star!17806 (reg!18135 Regex!17806)) (EmptyLang!17806) (Union!17806 (regOne!36125 Regex!17806) (regTwo!36125 Regex!17806)) )
))
(declare-datatypes ((List!68769 0))(
  ( (Nil!68645) (Cons!68645 (h!75093 Regex!17806) (t!382560 List!68769)) )
))
(declare-datatypes ((Context!13604 0))(
  ( (Context!13605 (exprs!7302 List!68769)) )
))
(declare-fun lt!2556534 () (Set Context!13604))

(declare-fun lt!2556522 () (Set Context!13604))

(declare-fun lt!2556525 () (Set Context!13604))

(assert (=> b!7092602 (= res!2896555 (= lt!2556534 (set.union lt!2556522 lt!2556525)))))

(declare-fun a!1901 () C!35882)

(declare-fun lt!2556531 () Context!13604)

(declare-fun r!11554 () Regex!17806)

(declare-fun derivationStepZipperDown!2369 (Regex!17806 Context!13604 C!35882) (Set Context!13604))

(assert (=> b!7092602 (= lt!2556534 (derivationStepZipperDown!2369 r!11554 lt!2556531 a!1901))))

(assert (=> b!7092602 (= lt!2556525 (derivationStepZipperDown!2369 (regTwo!36124 r!11554) lt!2556531 a!1901))))

(declare-fun lt!2556532 () List!68769)

(declare-fun $colon$colon!2713 (List!68769 Regex!17806) List!68769)

(assert (=> b!7092602 (= lt!2556522 (derivationStepZipperDown!2369 (regOne!36124 r!11554) (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554))) a!1901))))

(declare-fun b!7092603 () Bool)

(declare-fun res!2896554 () Bool)

(declare-fun e!4263640 () Bool)

(assert (=> b!7092603 (=> (not res!2896554) (not e!4263640))))

(declare-fun nullable!7446 (Regex!17806) Bool)

(assert (=> b!7092603 (= res!2896554 (nullable!7446 (regOne!36124 r!11554)))))

(declare-fun b!7092604 () Bool)

(declare-fun e!4263641 () Bool)

(assert (=> b!7092604 (= e!4263644 (not e!4263641))))

(declare-fun res!2896552 () Bool)

(assert (=> b!7092604 (=> res!2896552 e!4263641)))

(declare-fun c!9994 () Context!13604)

(declare-fun auxCtx!45 () Context!13604)

(declare-fun appendTo!877 ((Set Context!13604) Context!13604) (Set Context!13604))

(assert (=> b!7092604 (= res!2896552 (not (= lt!2556534 (appendTo!877 (derivationStepZipperDown!2369 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lambda!430065 () Int)

(declare-datatypes ((Unit!162303 0))(
  ( (Unit!162304) )
))
(declare-fun lt!2556535 () Unit!162303)

(declare-fun lemmaConcatPreservesForall!1105 (List!68769 List!68769 Int) Unit!162303)

(assert (=> b!7092604 (= lt!2556535 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(declare-fun lt!2556527 () (Set Context!13604))

(declare-fun lambda!430064 () Int)

(declare-fun lt!2556520 () (Set Context!13604))

(declare-fun map!16156 ((Set Context!13604) Int) (Set Context!13604))

(assert (=> b!7092604 (= (set.union (map!16156 lt!2556527 lambda!430064) (map!16156 lt!2556520 lambda!430064)) (map!16156 (set.union lt!2556527 lt!2556520) lambda!430064))))

(declare-fun lt!2556521 () Unit!162303)

(declare-fun lemmaMapAssociative!19 ((Set Context!13604) (Set Context!13604) Int) Unit!162303)

(assert (=> b!7092604 (= lt!2556521 (lemmaMapAssociative!19 lt!2556527 lt!2556520 lambda!430064))))

(assert (=> b!7092604 (= lt!2556525 (appendTo!877 lt!2556520 auxCtx!45))))

(assert (=> b!7092604 (= lt!2556520 (derivationStepZipperDown!2369 (regTwo!36124 r!11554) c!9994 a!1901))))

(declare-fun lt!2556529 () Unit!162303)

(assert (=> b!7092604 (= lt!2556529 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(declare-fun lt!2556530 () Unit!162303)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!185 (Context!13604 Regex!17806 C!35882 Context!13604) Unit!162303)

(assert (=> b!7092604 (= lt!2556530 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!185 c!9994 (regTwo!36124 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556526 () List!68769)

(assert (=> b!7092604 (= (derivationStepZipperDown!2369 (regOne!36124 r!11554) (Context!13605 lt!2556526) a!1901) (appendTo!877 lt!2556527 auxCtx!45))))

(declare-fun lt!2556537 () Context!13604)

(assert (=> b!7092604 (= lt!2556527 (derivationStepZipperDown!2369 (regOne!36124 r!11554) lt!2556537 a!1901))))

(declare-fun lt!2556528 () List!68769)

(declare-fun ++!15975 (List!68769 List!68769) List!68769)

(assert (=> b!7092604 (= lt!2556526 (++!15975 lt!2556528 (exprs!7302 auxCtx!45)))))

(declare-fun lt!2556523 () Unit!162303)

(assert (=> b!7092604 (= lt!2556523 (lemmaConcatPreservesForall!1105 lt!2556528 (exprs!7302 auxCtx!45) lambda!430065))))

(declare-fun lt!2556519 () Unit!162303)

(assert (=> b!7092604 (= lt!2556519 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!185 lt!2556537 (regOne!36124 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7092604 (= lt!2556537 (Context!13605 lt!2556528))))

(assert (=> b!7092604 (= lt!2556528 ($colon$colon!2713 (exprs!7302 c!9994) (regTwo!36124 r!11554)))))

(declare-fun b!7092605 () Bool)

(declare-fun e!4263642 () Bool)

(declare-fun tp!1948579 () Bool)

(assert (=> b!7092605 (= e!4263642 tp!1948579)))

(declare-fun res!2896556 () Bool)

(declare-fun e!4263646 () Bool)

(assert (=> start!690390 (=> (not res!2896556) (not e!4263646))))

(declare-fun validRegex!9081 (Regex!17806) Bool)

(assert (=> start!690390 (= res!2896556 (validRegex!9081 r!11554))))

(assert (=> start!690390 e!4263646))

(assert (=> start!690390 e!4263639))

(declare-fun e!4263645 () Bool)

(declare-fun inv!87381 (Context!13604) Bool)

(assert (=> start!690390 (and (inv!87381 c!9994) e!4263645)))

(assert (=> start!690390 tp_is_empty!44845))

(assert (=> start!690390 (and (inv!87381 auxCtx!45) e!4263642)))

(declare-fun b!7092606 () Bool)

(declare-fun tp!1948577 () Bool)

(declare-fun tp!1948578 () Bool)

(assert (=> b!7092606 (= e!4263639 (and tp!1948577 tp!1948578))))

(assert (=> b!7092607 (= e!4263646 e!4263640)))

(declare-fun res!2896551 () Bool)

(assert (=> b!7092607 (=> (not res!2896551) (not e!4263640))))

(assert (=> b!7092607 (= res!2896551 (and (or (not (is-ElementMatch!17806 r!11554)) (not (= (c!1323631 r!11554) a!1901))) (not (is-Union!17806 r!11554)) (is-Concat!26651 r!11554)))))

(declare-fun b!7092608 () Bool)

(declare-fun tp!1948576 () Bool)

(assert (=> b!7092608 (= e!4263639 tp!1948576)))

(declare-fun b!7092609 () Bool)

(declare-fun forall!16736 (List!68769 Int) Bool)

(assert (=> b!7092609 (= e!4263641 (forall!16736 (exprs!7302 c!9994) lambda!430065))))

(declare-fun b!7092610 () Bool)

(assert (=> b!7092610 (= e!4263640 e!4263643)))

(declare-fun res!2896553 () Bool)

(assert (=> b!7092610 (=> (not res!2896553) (not e!4263643))))

(assert (=> b!7092610 (= res!2896553 (validRegex!9081 (regTwo!36124 r!11554)))))

(declare-fun lt!2556536 () Unit!162303)

(assert (=> b!7092610 (= lt!2556536 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(assert (=> b!7092610 (= lt!2556531 (Context!13605 lt!2556532))))

(assert (=> b!7092610 (= lt!2556532 (++!15975 (exprs!7302 c!9994) (exprs!7302 auxCtx!45)))))

(declare-fun lt!2556533 () Unit!162303)

(assert (=> b!7092610 (= lt!2556533 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(declare-fun lt!2556524 () Unit!162303)

(assert (=> b!7092610 (= lt!2556524 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(declare-fun b!7092611 () Bool)

(declare-fun tp!1948581 () Bool)

(assert (=> b!7092611 (= e!4263645 tp!1948581)))

(declare-fun b!7092612 () Bool)

(declare-fun tp!1948575 () Bool)

(declare-fun tp!1948580 () Bool)

(assert (=> b!7092612 (= e!4263639 (and tp!1948575 tp!1948580))))

(assert (= (and start!690390 res!2896556) b!7092607))

(assert (= (and b!7092607 res!2896551) b!7092603))

(assert (= (and b!7092603 res!2896554) b!7092610))

(assert (= (and b!7092610 res!2896553) b!7092602))

(assert (= (and b!7092602 res!2896555) b!7092604))

(assert (= (and b!7092604 (not res!2896552)) b!7092609))

(assert (= (and start!690390 (is-ElementMatch!17806 r!11554)) b!7092601))

(assert (= (and start!690390 (is-Concat!26651 r!11554)) b!7092606))

(assert (= (and start!690390 (is-Star!17806 r!11554)) b!7092608))

(assert (= (and start!690390 (is-Union!17806 r!11554)) b!7092612))

(assert (= start!690390 b!7092611))

(assert (= start!690390 b!7092605))

(declare-fun m!7821340 () Bool)

(assert (=> b!7092604 m!7821340))

(declare-fun m!7821342 () Bool)

(assert (=> b!7092604 m!7821342))

(declare-fun m!7821344 () Bool)

(assert (=> b!7092604 m!7821344))

(declare-fun m!7821346 () Bool)

(assert (=> b!7092604 m!7821346))

(declare-fun m!7821348 () Bool)

(assert (=> b!7092604 m!7821348))

(declare-fun m!7821350 () Bool)

(assert (=> b!7092604 m!7821350))

(declare-fun m!7821352 () Bool)

(assert (=> b!7092604 m!7821352))

(declare-fun m!7821354 () Bool)

(assert (=> b!7092604 m!7821354))

(declare-fun m!7821356 () Bool)

(assert (=> b!7092604 m!7821356))

(declare-fun m!7821358 () Bool)

(assert (=> b!7092604 m!7821358))

(declare-fun m!7821360 () Bool)

(assert (=> b!7092604 m!7821360))

(declare-fun m!7821362 () Bool)

(assert (=> b!7092604 m!7821362))

(assert (=> b!7092604 m!7821350))

(declare-fun m!7821364 () Bool)

(assert (=> b!7092604 m!7821364))

(declare-fun m!7821366 () Bool)

(assert (=> b!7092604 m!7821366))

(declare-fun m!7821368 () Bool)

(assert (=> b!7092604 m!7821368))

(declare-fun m!7821370 () Bool)

(assert (=> b!7092604 m!7821370))

(assert (=> b!7092604 m!7821360))

(declare-fun m!7821372 () Bool)

(assert (=> b!7092604 m!7821372))

(declare-fun m!7821374 () Bool)

(assert (=> start!690390 m!7821374))

(declare-fun m!7821376 () Bool)

(assert (=> start!690390 m!7821376))

(declare-fun m!7821378 () Bool)

(assert (=> start!690390 m!7821378))

(declare-fun m!7821380 () Bool)

(assert (=> b!7092603 m!7821380))

(assert (=> b!7092610 m!7821360))

(assert (=> b!7092610 m!7821360))

(assert (=> b!7092610 m!7821360))

(declare-fun m!7821382 () Bool)

(assert (=> b!7092610 m!7821382))

(declare-fun m!7821384 () Bool)

(assert (=> b!7092610 m!7821384))

(declare-fun m!7821386 () Bool)

(assert (=> b!7092602 m!7821386))

(declare-fun m!7821388 () Bool)

(assert (=> b!7092602 m!7821388))

(declare-fun m!7821390 () Bool)

(assert (=> b!7092602 m!7821390))

(declare-fun m!7821392 () Bool)

(assert (=> b!7092602 m!7821392))

(declare-fun m!7821394 () Bool)

(assert (=> b!7092609 m!7821394))

(push 1)

(assert tp_is_empty!44845)

(assert (not b!7092605))

(assert (not b!7092610))

(assert (not b!7092612))

(assert (not b!7092602))

(assert (not b!7092609))

(assert (not b!7092606))

(assert (not b!7092608))

(assert (not start!690390))

(assert (not b!7092611))

(assert (not b!7092604))

(assert (not b!7092603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7092671 () Bool)

(declare-fun res!2896589 () Bool)

(declare-fun e!4263689 () Bool)

(assert (=> b!7092671 (=> res!2896589 e!4263689)))

(assert (=> b!7092671 (= res!2896589 (not (is-Concat!26651 r!11554)))))

(declare-fun e!4263685 () Bool)

(assert (=> b!7092671 (= e!4263685 e!4263689)))

(declare-fun b!7092672 () Bool)

(declare-fun e!4263686 () Bool)

(declare-fun e!4263687 () Bool)

(assert (=> b!7092672 (= e!4263686 e!4263687)))

(declare-fun res!2896587 () Bool)

(assert (=> b!7092672 (= res!2896587 (not (nullable!7446 (reg!18135 r!11554))))))

(assert (=> b!7092672 (=> (not res!2896587) (not e!4263687))))

(declare-fun b!7092673 () Bool)

(declare-fun e!4263691 () Bool)

(declare-fun call!645140 () Bool)

(assert (=> b!7092673 (= e!4263691 call!645140)))

(declare-fun b!7092674 () Bool)

(declare-fun res!2896588 () Bool)

(declare-fun e!4263690 () Bool)

(assert (=> b!7092674 (=> (not res!2896588) (not e!4263690))))

(assert (=> b!7092674 (= res!2896588 call!645140)))

(assert (=> b!7092674 (= e!4263685 e!4263690)))

(declare-fun b!7092676 () Bool)

(declare-fun call!645139 () Bool)

(assert (=> b!7092676 (= e!4263690 call!645139)))

(declare-fun b!7092677 () Bool)

(declare-fun call!645138 () Bool)

(assert (=> b!7092677 (= e!4263687 call!645138)))

(declare-fun b!7092678 () Bool)

(declare-fun e!4263688 () Bool)

(assert (=> b!7092678 (= e!4263688 e!4263686)))

(declare-fun c!1323637 () Bool)

(assert (=> b!7092678 (= c!1323637 (is-Star!17806 r!11554))))

(declare-fun c!1323638 () Bool)

(declare-fun bm!645133 () Bool)

(assert (=> bm!645133 (= call!645138 (validRegex!9081 (ite c!1323637 (reg!18135 r!11554) (ite c!1323638 (regTwo!36125 r!11554) (regOne!36124 r!11554)))))))

(declare-fun bm!645134 () Bool)

(assert (=> bm!645134 (= call!645139 call!645138)))

(declare-fun bm!645135 () Bool)

(assert (=> bm!645135 (= call!645140 (validRegex!9081 (ite c!1323638 (regOne!36125 r!11554) (regTwo!36124 r!11554))))))

(declare-fun b!7092679 () Bool)

(assert (=> b!7092679 (= e!4263686 e!4263685)))

(assert (=> b!7092679 (= c!1323638 (is-Union!17806 r!11554))))

(declare-fun d!2217193 () Bool)

(declare-fun res!2896586 () Bool)

(assert (=> d!2217193 (=> res!2896586 e!4263688)))

(assert (=> d!2217193 (= res!2896586 (is-ElementMatch!17806 r!11554))))

(assert (=> d!2217193 (= (validRegex!9081 r!11554) e!4263688)))

(declare-fun b!7092675 () Bool)

(assert (=> b!7092675 (= e!4263689 e!4263691)))

(declare-fun res!2896590 () Bool)

(assert (=> b!7092675 (=> (not res!2896590) (not e!4263691))))

(assert (=> b!7092675 (= res!2896590 call!645139)))

(assert (= (and d!2217193 (not res!2896586)) b!7092678))

(assert (= (and b!7092678 c!1323637) b!7092672))

(assert (= (and b!7092678 (not c!1323637)) b!7092679))

(assert (= (and b!7092672 res!2896587) b!7092677))

(assert (= (and b!7092679 c!1323638) b!7092674))

(assert (= (and b!7092679 (not c!1323638)) b!7092671))

(assert (= (and b!7092674 res!2896588) b!7092676))

(assert (= (and b!7092671 (not res!2896589)) b!7092675))

(assert (= (and b!7092675 res!2896590) b!7092673))

(assert (= (or b!7092674 b!7092673) bm!645135))

(assert (= (or b!7092676 b!7092675) bm!645134))

(assert (= (or b!7092677 bm!645134) bm!645133))

(declare-fun m!7821452 () Bool)

(assert (=> b!7092672 m!7821452))

(declare-fun m!7821454 () Bool)

(assert (=> bm!645133 m!7821454))

(declare-fun m!7821456 () Bool)

(assert (=> bm!645135 m!7821456))

(assert (=> start!690390 d!2217193))

(declare-fun bs!1883619 () Bool)

(declare-fun d!2217195 () Bool)

(assert (= bs!1883619 (and d!2217195 b!7092610)))

(declare-fun lambda!430088 () Int)

(assert (=> bs!1883619 (= lambda!430088 lambda!430065)))

(assert (=> d!2217195 (= (inv!87381 c!9994) (forall!16736 (exprs!7302 c!9994) lambda!430088))))

(declare-fun bs!1883620 () Bool)

(assert (= bs!1883620 d!2217195))

(declare-fun m!7821458 () Bool)

(assert (=> bs!1883620 m!7821458))

(assert (=> start!690390 d!2217195))

(declare-fun bs!1883621 () Bool)

(declare-fun d!2217197 () Bool)

(assert (= bs!1883621 (and d!2217197 b!7092610)))

(declare-fun lambda!430089 () Int)

(assert (=> bs!1883621 (= lambda!430089 lambda!430065)))

(declare-fun bs!1883622 () Bool)

(assert (= bs!1883622 (and d!2217197 d!2217195)))

(assert (=> bs!1883622 (= lambda!430089 lambda!430088)))

(assert (=> d!2217197 (= (inv!87381 auxCtx!45) (forall!16736 (exprs!7302 auxCtx!45) lambda!430089))))

(declare-fun bs!1883623 () Bool)

(assert (= bs!1883623 d!2217197))

(declare-fun m!7821460 () Bool)

(assert (=> bs!1883623 m!7821460))

(assert (=> start!690390 d!2217197))

(declare-fun d!2217199 () Bool)

(assert (=> d!2217199 (forall!16736 (++!15975 (exprs!7302 c!9994) (exprs!7302 auxCtx!45)) lambda!430065)))

(declare-fun lt!2556599 () Unit!162303)

(declare-fun choose!54687 (List!68769 List!68769 Int) Unit!162303)

(assert (=> d!2217199 (= lt!2556599 (choose!54687 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065))))

(assert (=> d!2217199 (forall!16736 (exprs!7302 c!9994) lambda!430065)))

(assert (=> d!2217199 (= (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430065) lt!2556599)))

(declare-fun bs!1883624 () Bool)

(assert (= bs!1883624 d!2217199))

(assert (=> bs!1883624 m!7821382))

(assert (=> bs!1883624 m!7821382))

(declare-fun m!7821462 () Bool)

(assert (=> bs!1883624 m!7821462))

(declare-fun m!7821464 () Bool)

(assert (=> bs!1883624 m!7821464))

(assert (=> bs!1883624 m!7821394))

(assert (=> b!7092610 d!2217199))

(declare-fun b!7092680 () Bool)

(declare-fun res!2896594 () Bool)

(declare-fun e!4263696 () Bool)

(assert (=> b!7092680 (=> res!2896594 e!4263696)))

(assert (=> b!7092680 (= res!2896594 (not (is-Concat!26651 (regTwo!36124 r!11554))))))

(declare-fun e!4263692 () Bool)

(assert (=> b!7092680 (= e!4263692 e!4263696)))

(declare-fun b!7092681 () Bool)

(declare-fun e!4263693 () Bool)

(declare-fun e!4263694 () Bool)

(assert (=> b!7092681 (= e!4263693 e!4263694)))

(declare-fun res!2896592 () Bool)

(assert (=> b!7092681 (= res!2896592 (not (nullable!7446 (reg!18135 (regTwo!36124 r!11554)))))))

(assert (=> b!7092681 (=> (not res!2896592) (not e!4263694))))

(declare-fun b!7092682 () Bool)

(declare-fun e!4263698 () Bool)

(declare-fun call!645143 () Bool)

(assert (=> b!7092682 (= e!4263698 call!645143)))

(declare-fun b!7092683 () Bool)

(declare-fun res!2896593 () Bool)

(declare-fun e!4263697 () Bool)

(assert (=> b!7092683 (=> (not res!2896593) (not e!4263697))))

(assert (=> b!7092683 (= res!2896593 call!645143)))

(assert (=> b!7092683 (= e!4263692 e!4263697)))

(declare-fun b!7092685 () Bool)

(declare-fun call!645142 () Bool)

(assert (=> b!7092685 (= e!4263697 call!645142)))

(declare-fun b!7092686 () Bool)

(declare-fun call!645141 () Bool)

(assert (=> b!7092686 (= e!4263694 call!645141)))

(declare-fun b!7092687 () Bool)

(declare-fun e!4263695 () Bool)

(assert (=> b!7092687 (= e!4263695 e!4263693)))

(declare-fun c!1323639 () Bool)

(assert (=> b!7092687 (= c!1323639 (is-Star!17806 (regTwo!36124 r!11554)))))

(declare-fun bm!645136 () Bool)

(declare-fun c!1323640 () Bool)

(assert (=> bm!645136 (= call!645141 (validRegex!9081 (ite c!1323639 (reg!18135 (regTwo!36124 r!11554)) (ite c!1323640 (regTwo!36125 (regTwo!36124 r!11554)) (regOne!36124 (regTwo!36124 r!11554))))))))

(declare-fun bm!645137 () Bool)

(assert (=> bm!645137 (= call!645142 call!645141)))

(declare-fun bm!645138 () Bool)

(assert (=> bm!645138 (= call!645143 (validRegex!9081 (ite c!1323640 (regOne!36125 (regTwo!36124 r!11554)) (regTwo!36124 (regTwo!36124 r!11554)))))))

(declare-fun b!7092688 () Bool)

(assert (=> b!7092688 (= e!4263693 e!4263692)))

(assert (=> b!7092688 (= c!1323640 (is-Union!17806 (regTwo!36124 r!11554)))))

(declare-fun d!2217201 () Bool)

(declare-fun res!2896591 () Bool)

(assert (=> d!2217201 (=> res!2896591 e!4263695)))

(assert (=> d!2217201 (= res!2896591 (is-ElementMatch!17806 (regTwo!36124 r!11554)))))

(assert (=> d!2217201 (= (validRegex!9081 (regTwo!36124 r!11554)) e!4263695)))

(declare-fun b!7092684 () Bool)

(assert (=> b!7092684 (= e!4263696 e!4263698)))

(declare-fun res!2896595 () Bool)

(assert (=> b!7092684 (=> (not res!2896595) (not e!4263698))))

(assert (=> b!7092684 (= res!2896595 call!645142)))

(assert (= (and d!2217201 (not res!2896591)) b!7092687))

(assert (= (and b!7092687 c!1323639) b!7092681))

(assert (= (and b!7092687 (not c!1323639)) b!7092688))

(assert (= (and b!7092681 res!2896592) b!7092686))

(assert (= (and b!7092688 c!1323640) b!7092683))

(assert (= (and b!7092688 (not c!1323640)) b!7092680))

(assert (= (and b!7092683 res!2896593) b!7092685))

(assert (= (and b!7092680 (not res!2896594)) b!7092684))

(assert (= (and b!7092684 res!2896595) b!7092682))

(assert (= (or b!7092683 b!7092682) bm!645138))

(assert (= (or b!7092685 b!7092684) bm!645137))

(assert (= (or b!7092686 bm!645137) bm!645136))

(declare-fun m!7821466 () Bool)

(assert (=> b!7092681 m!7821466))

(declare-fun m!7821468 () Bool)

(assert (=> bm!645136 m!7821468))

(declare-fun m!7821470 () Bool)

(assert (=> bm!645138 m!7821470))

(assert (=> b!7092610 d!2217201))

(declare-fun d!2217203 () Bool)

(declare-fun e!4263704 () Bool)

(assert (=> d!2217203 e!4263704))

(declare-fun res!2896600 () Bool)

(assert (=> d!2217203 (=> (not res!2896600) (not e!4263704))))

(declare-fun lt!2556602 () List!68769)

(declare-fun content!13943 (List!68769) (Set Regex!17806))

(assert (=> d!2217203 (= res!2896600 (= (content!13943 lt!2556602) (set.union (content!13943 (exprs!7302 c!9994)) (content!13943 (exprs!7302 auxCtx!45)))))))

(declare-fun e!4263703 () List!68769)

(assert (=> d!2217203 (= lt!2556602 e!4263703)))

(declare-fun c!1323643 () Bool)

(assert (=> d!2217203 (= c!1323643 (is-Nil!68645 (exprs!7302 c!9994)))))

(assert (=> d!2217203 (= (++!15975 (exprs!7302 c!9994) (exprs!7302 auxCtx!45)) lt!2556602)))

(declare-fun b!7092697 () Bool)

(assert (=> b!7092697 (= e!4263703 (exprs!7302 auxCtx!45))))

(declare-fun b!7092699 () Bool)

(declare-fun res!2896601 () Bool)

(assert (=> b!7092699 (=> (not res!2896601) (not e!4263704))))

(declare-fun size!41318 (List!68769) Int)

(assert (=> b!7092699 (= res!2896601 (= (size!41318 lt!2556602) (+ (size!41318 (exprs!7302 c!9994)) (size!41318 (exprs!7302 auxCtx!45)))))))

(declare-fun b!7092698 () Bool)

(assert (=> b!7092698 (= e!4263703 (Cons!68645 (h!75093 (exprs!7302 c!9994)) (++!15975 (t!382560 (exprs!7302 c!9994)) (exprs!7302 auxCtx!45))))))

(declare-fun b!7092700 () Bool)

(assert (=> b!7092700 (= e!4263704 (or (not (= (exprs!7302 auxCtx!45) Nil!68645)) (= lt!2556602 (exprs!7302 c!9994))))))

(assert (= (and d!2217203 c!1323643) b!7092697))

(assert (= (and d!2217203 (not c!1323643)) b!7092698))

(assert (= (and d!2217203 res!2896600) b!7092699))

(assert (= (and b!7092699 res!2896601) b!7092700))

(declare-fun m!7821472 () Bool)

(assert (=> d!2217203 m!7821472))

(declare-fun m!7821474 () Bool)

(assert (=> d!2217203 m!7821474))

(declare-fun m!7821476 () Bool)

(assert (=> d!2217203 m!7821476))

(declare-fun m!7821478 () Bool)

(assert (=> b!7092699 m!7821478))

(declare-fun m!7821480 () Bool)

(assert (=> b!7092699 m!7821480))

(declare-fun m!7821482 () Bool)

(assert (=> b!7092699 m!7821482))

(declare-fun m!7821484 () Bool)

(assert (=> b!7092698 m!7821484))

(assert (=> b!7092610 d!2217203))

(declare-fun d!2217205 () Bool)

(declare-fun res!2896606 () Bool)

(declare-fun e!4263709 () Bool)

(assert (=> d!2217205 (=> res!2896606 e!4263709)))

(assert (=> d!2217205 (= res!2896606 (is-Nil!68645 (exprs!7302 c!9994)))))

(assert (=> d!2217205 (= (forall!16736 (exprs!7302 c!9994) lambda!430065) e!4263709)))

(declare-fun b!7092705 () Bool)

(declare-fun e!4263710 () Bool)

(assert (=> b!7092705 (= e!4263709 e!4263710)))

(declare-fun res!2896607 () Bool)

(assert (=> b!7092705 (=> (not res!2896607) (not e!4263710))))

(declare-fun dynLambda!28004 (Int Regex!17806) Bool)

(assert (=> b!7092705 (= res!2896607 (dynLambda!28004 lambda!430065 (h!75093 (exprs!7302 c!9994))))))

(declare-fun b!7092706 () Bool)

(assert (=> b!7092706 (= e!4263710 (forall!16736 (t!382560 (exprs!7302 c!9994)) lambda!430065))))

(assert (= (and d!2217205 (not res!2896606)) b!7092705))

(assert (= (and b!7092705 res!2896607) b!7092706))

(declare-fun b_lambda!271049 () Bool)

(assert (=> (not b_lambda!271049) (not b!7092705)))

(declare-fun m!7821486 () Bool)

(assert (=> b!7092705 m!7821486))

(declare-fun m!7821488 () Bool)

(assert (=> b!7092706 m!7821488))

(assert (=> b!7092609 d!2217205))

(declare-fun d!2217207 () Bool)

(declare-fun e!4263712 () Bool)

(assert (=> d!2217207 e!4263712))

(declare-fun res!2896608 () Bool)

(assert (=> d!2217207 (=> (not res!2896608) (not e!4263712))))

(declare-fun lt!2556603 () List!68769)

(assert (=> d!2217207 (= res!2896608 (= (content!13943 lt!2556603) (set.union (content!13943 lt!2556528) (content!13943 (exprs!7302 auxCtx!45)))))))

(declare-fun e!4263711 () List!68769)

(assert (=> d!2217207 (= lt!2556603 e!4263711)))

(declare-fun c!1323644 () Bool)

(assert (=> d!2217207 (= c!1323644 (is-Nil!68645 lt!2556528))))

(assert (=> d!2217207 (= (++!15975 lt!2556528 (exprs!7302 auxCtx!45)) lt!2556603)))

(declare-fun b!7092707 () Bool)

(assert (=> b!7092707 (= e!4263711 (exprs!7302 auxCtx!45))))

(declare-fun b!7092709 () Bool)

(declare-fun res!2896609 () Bool)

(assert (=> b!7092709 (=> (not res!2896609) (not e!4263712))))

(assert (=> b!7092709 (= res!2896609 (= (size!41318 lt!2556603) (+ (size!41318 lt!2556528) (size!41318 (exprs!7302 auxCtx!45)))))))

(declare-fun b!7092708 () Bool)

(assert (=> b!7092708 (= e!4263711 (Cons!68645 (h!75093 lt!2556528) (++!15975 (t!382560 lt!2556528) (exprs!7302 auxCtx!45))))))

(declare-fun b!7092710 () Bool)

(assert (=> b!7092710 (= e!4263712 (or (not (= (exprs!7302 auxCtx!45) Nil!68645)) (= lt!2556603 lt!2556528)))))

(assert (= (and d!2217207 c!1323644) b!7092707))

(assert (= (and d!2217207 (not c!1323644)) b!7092708))

(assert (= (and d!2217207 res!2896608) b!7092709))

(assert (= (and b!7092709 res!2896609) b!7092710))

(declare-fun m!7821490 () Bool)

(assert (=> d!2217207 m!7821490))

(declare-fun m!7821492 () Bool)

(assert (=> d!2217207 m!7821492))

(assert (=> d!2217207 m!7821476))

(declare-fun m!7821494 () Bool)

(assert (=> b!7092709 m!7821494))

(declare-fun m!7821496 () Bool)

(assert (=> b!7092709 m!7821496))

(assert (=> b!7092709 m!7821482))

(declare-fun m!7821498 () Bool)

(assert (=> b!7092708 m!7821498))

(assert (=> b!7092604 d!2217207))

(declare-fun bs!1883625 () Bool)

(declare-fun d!2217209 () Bool)

(assert (= bs!1883625 (and d!2217209 b!7092610)))

(declare-fun lambda!430092 () Int)

(assert (=> bs!1883625 (= lambda!430092 lambda!430065)))

(declare-fun bs!1883626 () Bool)

(assert (= bs!1883626 (and d!2217209 d!2217195)))

(assert (=> bs!1883626 (= lambda!430092 lambda!430088)))

(declare-fun bs!1883627 () Bool)

(assert (= bs!1883627 (and d!2217209 d!2217197)))

(assert (=> bs!1883627 (= lambda!430092 lambda!430089)))

(assert (=> d!2217209 (= (derivationStepZipperDown!2369 (regOne!36124 r!11554) (Context!13605 (++!15975 (exprs!7302 lt!2556537) (exprs!7302 auxCtx!45))) a!1901) (appendTo!877 (derivationStepZipperDown!2369 (regOne!36124 r!11554) lt!2556537 a!1901) auxCtx!45))))

(declare-fun lt!2556609 () Unit!162303)

(assert (=> d!2217209 (= lt!2556609 (lemmaConcatPreservesForall!1105 (exprs!7302 lt!2556537) (exprs!7302 auxCtx!45) lambda!430092))))

(declare-fun lt!2556608 () Unit!162303)

(declare-fun choose!54688 (Context!13604 Regex!17806 C!35882 Context!13604) Unit!162303)

(assert (=> d!2217209 (= lt!2556608 (choose!54688 lt!2556537 (regOne!36124 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217209 (validRegex!9081 (regOne!36124 r!11554))))

(assert (=> d!2217209 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!185 lt!2556537 (regOne!36124 r!11554) a!1901 auxCtx!45) lt!2556608)))

(declare-fun bs!1883628 () Bool)

(assert (= bs!1883628 d!2217209))

(declare-fun m!7821500 () Bool)

(assert (=> bs!1883628 m!7821500))

(assert (=> bs!1883628 m!7821372))

(declare-fun m!7821502 () Bool)

(assert (=> bs!1883628 m!7821502))

(assert (=> bs!1883628 m!7821372))

(declare-fun m!7821504 () Bool)

(assert (=> bs!1883628 m!7821504))

(declare-fun m!7821506 () Bool)

(assert (=> bs!1883628 m!7821506))

(declare-fun m!7821508 () Bool)

(assert (=> bs!1883628 m!7821508))

(declare-fun m!7821510 () Bool)

(assert (=> bs!1883628 m!7821510))

(assert (=> b!7092604 d!2217209))

(declare-fun bm!645151 () Bool)

(declare-fun call!645159 () List!68769)

(declare-fun call!645161 () List!68769)

(assert (=> bm!645151 (= call!645159 call!645161)))

(declare-fun c!1323656 () Bool)

(declare-fun c!1323657 () Bool)

(declare-fun bm!645152 () Bool)

(declare-fun c!1323659 () Bool)

(declare-fun call!645160 () (Set Context!13604))

(assert (=> bm!645152 (= call!645160 (derivationStepZipperDown!2369 (ite c!1323659 (regTwo!36125 (regOne!36124 r!11554)) (ite c!1323656 (regTwo!36124 (regOne!36124 r!11554)) (ite c!1323657 (regOne!36124 (regOne!36124 r!11554)) (reg!18135 (regOne!36124 r!11554))))) (ite (or c!1323659 c!1323656) (Context!13605 lt!2556526) (Context!13605 call!645159)) a!1901))))

(declare-fun b!7092733 () Bool)

(declare-fun e!4263730 () Bool)

(assert (=> b!7092733 (= c!1323656 e!4263730)))

(declare-fun res!2896613 () Bool)

(assert (=> b!7092733 (=> (not res!2896613) (not e!4263730))))

(assert (=> b!7092733 (= res!2896613 (is-Concat!26651 (regOne!36124 r!11554)))))

(declare-fun e!4263729 () (Set Context!13604))

(declare-fun e!4263725 () (Set Context!13604))

(assert (=> b!7092733 (= e!4263729 e!4263725)))

(declare-fun b!7092734 () Bool)

(declare-fun e!4263728 () (Set Context!13604))

(declare-fun call!645156 () (Set Context!13604))

(assert (=> b!7092734 (= e!4263728 call!645156)))

(declare-fun b!7092735 () Bool)

(assert (=> b!7092735 (= e!4263730 (nullable!7446 (regOne!36124 (regOne!36124 r!11554))))))

(declare-fun b!7092736 () Bool)

(declare-fun call!645157 () (Set Context!13604))

(declare-fun call!645158 () (Set Context!13604))

(assert (=> b!7092736 (= e!4263725 (set.union call!645157 call!645158))))

(declare-fun b!7092737 () Bool)

(declare-fun c!1323658 () Bool)

(assert (=> b!7092737 (= c!1323658 (is-Star!17806 (regOne!36124 r!11554)))))

(declare-fun e!4263727 () (Set Context!13604))

(assert (=> b!7092737 (= e!4263727 e!4263728)))

(declare-fun bm!645153 () Bool)

(assert (=> bm!645153 (= call!645161 ($colon$colon!2713 (exprs!7302 (Context!13605 lt!2556526)) (ite (or c!1323656 c!1323657) (regTwo!36124 (regOne!36124 r!11554)) (regOne!36124 r!11554))))))

(declare-fun b!7092738 () Bool)

(declare-fun e!4263726 () (Set Context!13604))

(assert (=> b!7092738 (= e!4263726 (set.insert (Context!13605 lt!2556526) (as set.empty (Set Context!13604))))))

(declare-fun b!7092739 () Bool)

(assert (=> b!7092739 (= e!4263726 e!4263729)))

(assert (=> b!7092739 (= c!1323659 (is-Union!17806 (regOne!36124 r!11554)))))

(declare-fun bm!645154 () Bool)

(assert (=> bm!645154 (= call!645156 call!645158)))

(declare-fun b!7092740 () Bool)

(assert (=> b!7092740 (= e!4263728 (as set.empty (Set Context!13604)))))

(declare-fun d!2217211 () Bool)

(declare-fun c!1323660 () Bool)

(assert (=> d!2217211 (= c!1323660 (and (is-ElementMatch!17806 (regOne!36124 r!11554)) (= (c!1323631 (regOne!36124 r!11554)) a!1901)))))

(assert (=> d!2217211 (= (derivationStepZipperDown!2369 (regOne!36124 r!11554) (Context!13605 lt!2556526) a!1901) e!4263726)))

(declare-fun b!7092741 () Bool)

(assert (=> b!7092741 (= e!4263729 (set.union call!645157 call!645160))))

(declare-fun bm!645155 () Bool)

(assert (=> bm!645155 (= call!645158 call!645160)))

(declare-fun bm!645156 () Bool)

(assert (=> bm!645156 (= call!645157 (derivationStepZipperDown!2369 (ite c!1323659 (regOne!36125 (regOne!36124 r!11554)) (regOne!36124 (regOne!36124 r!11554))) (ite c!1323659 (Context!13605 lt!2556526) (Context!13605 call!645161)) a!1901))))

(declare-fun b!7092742 () Bool)

(assert (=> b!7092742 (= e!4263727 call!645156)))

(declare-fun b!7092743 () Bool)

(assert (=> b!7092743 (= e!4263725 e!4263727)))

(assert (=> b!7092743 (= c!1323657 (is-Concat!26651 (regOne!36124 r!11554)))))

(assert (= (and d!2217211 c!1323660) b!7092738))

(assert (= (and d!2217211 (not c!1323660)) b!7092739))

(assert (= (and b!7092739 c!1323659) b!7092741))

(assert (= (and b!7092739 (not c!1323659)) b!7092733))

(assert (= (and b!7092733 res!2896613) b!7092735))

(assert (= (and b!7092733 c!1323656) b!7092736))

(assert (= (and b!7092733 (not c!1323656)) b!7092743))

(assert (= (and b!7092743 c!1323657) b!7092742))

(assert (= (and b!7092743 (not c!1323657)) b!7092737))

(assert (= (and b!7092737 c!1323658) b!7092734))

(assert (= (and b!7092737 (not c!1323658)) b!7092740))

(assert (= (or b!7092742 b!7092734) bm!645151))

(assert (= (or b!7092742 b!7092734) bm!645154))

(assert (= (or b!7092736 bm!645154) bm!645155))

(assert (= (or b!7092736 bm!645151) bm!645153))

(assert (= (or b!7092741 bm!645155) bm!645152))

(assert (= (or b!7092741 b!7092736) bm!645156))

(declare-fun m!7821512 () Bool)

(assert (=> bm!645156 m!7821512))

(declare-fun m!7821514 () Bool)

(assert (=> bm!645152 m!7821514))

(declare-fun m!7821516 () Bool)

(assert (=> b!7092735 m!7821516))

(declare-fun m!7821518 () Bool)

(assert (=> bm!645153 m!7821518))

(declare-fun m!7821520 () Bool)

(assert (=> b!7092738 m!7821520))

(assert (=> b!7092604 d!2217211))

(declare-fun bs!1883629 () Bool)

(declare-fun d!2217213 () Bool)

(assert (= bs!1883629 (and d!2217213 b!7092607)))

(declare-fun lambda!430097 () Int)

(assert (=> bs!1883629 (= lambda!430097 lambda!430064)))

(assert (=> d!2217213 true))

(assert (=> d!2217213 (= (appendTo!877 (derivationStepZipperDown!2369 r!11554 c!9994 a!1901) auxCtx!45) (map!16156 (derivationStepZipperDown!2369 r!11554 c!9994 a!1901) lambda!430097))))

(declare-fun bs!1883630 () Bool)

(assert (= bs!1883630 d!2217213))

(assert (=> bs!1883630 m!7821350))

(declare-fun m!7821522 () Bool)

(assert (=> bs!1883630 m!7821522))

(assert (=> b!7092604 d!2217213))

(declare-fun d!2217215 () Bool)

(declare-fun choose!54689 ((Set Context!13604) Int) (Set Context!13604))

(assert (=> d!2217215 (= (map!16156 lt!2556527 lambda!430064) (choose!54689 lt!2556527 lambda!430064))))

(declare-fun bs!1883631 () Bool)

(assert (= bs!1883631 d!2217215))

(declare-fun m!7821524 () Bool)

(assert (=> bs!1883631 m!7821524))

(assert (=> b!7092604 d!2217215))

(declare-fun bm!645157 () Bool)

(declare-fun call!645165 () List!68769)

(declare-fun call!645167 () List!68769)

(assert (=> bm!645157 (= call!645165 call!645167)))

(declare-fun c!1323665 () Bool)

(declare-fun c!1323663 () Bool)

(declare-fun c!1323662 () Bool)

(declare-fun call!645166 () (Set Context!13604))

(declare-fun bm!645158 () Bool)

(assert (=> bm!645158 (= call!645166 (derivationStepZipperDown!2369 (ite c!1323665 (regTwo!36125 (regTwo!36124 r!11554)) (ite c!1323662 (regTwo!36124 (regTwo!36124 r!11554)) (ite c!1323663 (regOne!36124 (regTwo!36124 r!11554)) (reg!18135 (regTwo!36124 r!11554))))) (ite (or c!1323665 c!1323662) c!9994 (Context!13605 call!645165)) a!1901))))

(declare-fun b!7092744 () Bool)

(declare-fun e!4263736 () Bool)

(assert (=> b!7092744 (= c!1323662 e!4263736)))

(declare-fun res!2896614 () Bool)

(assert (=> b!7092744 (=> (not res!2896614) (not e!4263736))))

(assert (=> b!7092744 (= res!2896614 (is-Concat!26651 (regTwo!36124 r!11554)))))

(declare-fun e!4263735 () (Set Context!13604))

(declare-fun e!4263731 () (Set Context!13604))

(assert (=> b!7092744 (= e!4263735 e!4263731)))

(declare-fun b!7092745 () Bool)

(declare-fun e!4263734 () (Set Context!13604))

(declare-fun call!645162 () (Set Context!13604))

(assert (=> b!7092745 (= e!4263734 call!645162)))

(declare-fun b!7092746 () Bool)

(assert (=> b!7092746 (= e!4263736 (nullable!7446 (regOne!36124 (regTwo!36124 r!11554))))))

(declare-fun b!7092747 () Bool)

(declare-fun call!645163 () (Set Context!13604))

(declare-fun call!645164 () (Set Context!13604))

(assert (=> b!7092747 (= e!4263731 (set.union call!645163 call!645164))))

(declare-fun b!7092748 () Bool)

(declare-fun c!1323664 () Bool)

(assert (=> b!7092748 (= c!1323664 (is-Star!17806 (regTwo!36124 r!11554)))))

(declare-fun e!4263733 () (Set Context!13604))

(assert (=> b!7092748 (= e!4263733 e!4263734)))

(declare-fun bm!645159 () Bool)

(assert (=> bm!645159 (= call!645167 ($colon$colon!2713 (exprs!7302 c!9994) (ite (or c!1323662 c!1323663) (regTwo!36124 (regTwo!36124 r!11554)) (regTwo!36124 r!11554))))))

(declare-fun b!7092749 () Bool)

(declare-fun e!4263732 () (Set Context!13604))

(assert (=> b!7092749 (= e!4263732 (set.insert c!9994 (as set.empty (Set Context!13604))))))

(declare-fun b!7092750 () Bool)

(assert (=> b!7092750 (= e!4263732 e!4263735)))

(assert (=> b!7092750 (= c!1323665 (is-Union!17806 (regTwo!36124 r!11554)))))

(declare-fun bm!645160 () Bool)

(assert (=> bm!645160 (= call!645162 call!645164)))

(declare-fun b!7092751 () Bool)

(assert (=> b!7092751 (= e!4263734 (as set.empty (Set Context!13604)))))

(declare-fun d!2217217 () Bool)

(declare-fun c!1323666 () Bool)

(assert (=> d!2217217 (= c!1323666 (and (is-ElementMatch!17806 (regTwo!36124 r!11554)) (= (c!1323631 (regTwo!36124 r!11554)) a!1901)))))

(assert (=> d!2217217 (= (derivationStepZipperDown!2369 (regTwo!36124 r!11554) c!9994 a!1901) e!4263732)))

(declare-fun b!7092752 () Bool)

(assert (=> b!7092752 (= e!4263735 (set.union call!645163 call!645166))))

(declare-fun bm!645161 () Bool)

(assert (=> bm!645161 (= call!645164 call!645166)))

(declare-fun bm!645162 () Bool)

(assert (=> bm!645162 (= call!645163 (derivationStepZipperDown!2369 (ite c!1323665 (regOne!36125 (regTwo!36124 r!11554)) (regOne!36124 (regTwo!36124 r!11554))) (ite c!1323665 c!9994 (Context!13605 call!645167)) a!1901))))

(declare-fun b!7092753 () Bool)

(assert (=> b!7092753 (= e!4263733 call!645162)))

(declare-fun b!7092754 () Bool)

(assert (=> b!7092754 (= e!4263731 e!4263733)))

(assert (=> b!7092754 (= c!1323663 (is-Concat!26651 (regTwo!36124 r!11554)))))

(assert (= (and d!2217217 c!1323666) b!7092749))

(assert (= (and d!2217217 (not c!1323666)) b!7092750))

(assert (= (and b!7092750 c!1323665) b!7092752))

(assert (= (and b!7092750 (not c!1323665)) b!7092744))

(assert (= (and b!7092744 res!2896614) b!7092746))

(assert (= (and b!7092744 c!1323662) b!7092747))

(assert (= (and b!7092744 (not c!1323662)) b!7092754))

(assert (= (and b!7092754 c!1323663) b!7092753))

(assert (= (and b!7092754 (not c!1323663)) b!7092748))

(assert (= (and b!7092748 c!1323664) b!7092745))

(assert (= (and b!7092748 (not c!1323664)) b!7092751))

(assert (= (or b!7092753 b!7092745) bm!645157))

(assert (= (or b!7092753 b!7092745) bm!645160))

(assert (= (or b!7092747 bm!645160) bm!645161))

(assert (= (or b!7092747 bm!645157) bm!645159))

(assert (= (or b!7092752 bm!645161) bm!645158))

(assert (= (or b!7092752 b!7092747) bm!645162))

(declare-fun m!7821526 () Bool)

(assert (=> bm!645162 m!7821526))

(declare-fun m!7821528 () Bool)

(assert (=> bm!645158 m!7821528))

(declare-fun m!7821530 () Bool)

(assert (=> b!7092746 m!7821530))

(declare-fun m!7821532 () Bool)

(assert (=> bm!645159 m!7821532))

(declare-fun m!7821534 () Bool)

(assert (=> b!7092749 m!7821534))

(assert (=> b!7092604 d!2217217))

(declare-fun bs!1883632 () Bool)

(declare-fun d!2217219 () Bool)

(assert (= bs!1883632 (and d!2217219 b!7092610)))

(declare-fun lambda!430098 () Int)

(assert (=> bs!1883632 (= lambda!430098 lambda!430065)))

(declare-fun bs!1883633 () Bool)

(assert (= bs!1883633 (and d!2217219 d!2217195)))

(assert (=> bs!1883633 (= lambda!430098 lambda!430088)))

(declare-fun bs!1883634 () Bool)

(assert (= bs!1883634 (and d!2217219 d!2217197)))

(assert (=> bs!1883634 (= lambda!430098 lambda!430089)))

(declare-fun bs!1883635 () Bool)

(assert (= bs!1883635 (and d!2217219 d!2217209)))

(assert (=> bs!1883635 (= lambda!430098 lambda!430092)))

(assert (=> d!2217219 (= (derivationStepZipperDown!2369 (regTwo!36124 r!11554) (Context!13605 (++!15975 (exprs!7302 c!9994) (exprs!7302 auxCtx!45))) a!1901) (appendTo!877 (derivationStepZipperDown!2369 (regTwo!36124 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2556613 () Unit!162303)

(assert (=> d!2217219 (= lt!2556613 (lemmaConcatPreservesForall!1105 (exprs!7302 c!9994) (exprs!7302 auxCtx!45) lambda!430098))))

(declare-fun lt!2556612 () Unit!162303)

(assert (=> d!2217219 (= lt!2556612 (choose!54688 c!9994 (regTwo!36124 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217219 (validRegex!9081 (regTwo!36124 r!11554))))

(assert (=> d!2217219 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!185 c!9994 (regTwo!36124 r!11554) a!1901 auxCtx!45) lt!2556612)))

(declare-fun bs!1883636 () Bool)

(assert (= bs!1883636 d!2217219))

(declare-fun m!7821536 () Bool)

(assert (=> bs!1883636 m!7821536))

(assert (=> bs!1883636 m!7821366))

(declare-fun m!7821538 () Bool)

(assert (=> bs!1883636 m!7821538))

(assert (=> bs!1883636 m!7821366))

(declare-fun m!7821540 () Bool)

(assert (=> bs!1883636 m!7821540))

(assert (=> bs!1883636 m!7821382))

(declare-fun m!7821542 () Bool)

(assert (=> bs!1883636 m!7821542))

(assert (=> bs!1883636 m!7821384))

(assert (=> b!7092604 d!2217219))

(declare-fun d!2217221 () Bool)

(assert (=> d!2217221 (= (map!16156 lt!2556520 lambda!430064) (choose!54689 lt!2556520 lambda!430064))))

(declare-fun bs!1883637 () Bool)

(assert (= bs!1883637 d!2217221))

(declare-fun m!7821544 () Bool)

(assert (=> bs!1883637 m!7821544))

(assert (=> b!7092604 d!2217221))

(declare-fun d!2217223 () Bool)

(assert (=> d!2217223 (= (map!16156 (set.union lt!2556527 lt!2556520) lambda!430064) (choose!54689 (set.union lt!2556527 lt!2556520) lambda!430064))))

(declare-fun bs!1883638 () Bool)

(assert (= bs!1883638 d!2217223))

(declare-fun m!7821546 () Bool)

(assert (=> bs!1883638 m!7821546))

(assert (=> b!7092604 d!2217223))

(declare-fun d!2217225 () Bool)

(assert (=> d!2217225 (forall!16736 (++!15975 lt!2556528 (exprs!7302 auxCtx!45)) lambda!430065)))

(declare-fun lt!2556614 () Unit!162303)

(assert (=> d!2217225 (= lt!2556614 (choose!54687 lt!2556528 (exprs!7302 auxCtx!45) lambda!430065))))

(assert (=> d!2217225 (forall!16736 lt!2556528 lambda!430065)))

(assert (=> d!2217225 (= (lemmaConcatPreservesForall!1105 lt!2556528 (exprs!7302 auxCtx!45) lambda!430065) lt!2556614)))

(declare-fun bs!1883639 () Bool)

(assert (= bs!1883639 d!2217225))

(assert (=> bs!1883639 m!7821344))

(assert (=> bs!1883639 m!7821344))

(declare-fun m!7821548 () Bool)

(assert (=> bs!1883639 m!7821548))

(declare-fun m!7821550 () Bool)

(assert (=> bs!1883639 m!7821550))

(declare-fun m!7821552 () Bool)

(assert (=> bs!1883639 m!7821552))

(assert (=> b!7092604 d!2217225))

(declare-fun bs!1883640 () Bool)

(declare-fun d!2217227 () Bool)

(assert (= bs!1883640 (and d!2217227 b!7092607)))

(declare-fun lambda!430099 () Int)

(assert (=> bs!1883640 (= lambda!430099 lambda!430064)))

(declare-fun bs!1883641 () Bool)

(assert (= bs!1883641 (and d!2217227 d!2217213)))

(assert (=> bs!1883641 (= lambda!430099 lambda!430097)))

(assert (=> d!2217227 true))

(assert (=> d!2217227 (= (appendTo!877 lt!2556520 auxCtx!45) (map!16156 lt!2556520 lambda!430099))))

(declare-fun bs!1883642 () Bool)

(assert (= bs!1883642 d!2217227))

(declare-fun m!7821554 () Bool)

(assert (=> bs!1883642 m!7821554))

(assert (=> b!7092604 d!2217227))

(declare-fun bs!1883643 () Bool)

(declare-fun d!2217229 () Bool)

(assert (= bs!1883643 (and d!2217229 b!7092607)))

(declare-fun lambda!430100 () Int)

(assert (=> bs!1883643 (= lambda!430100 lambda!430064)))

(declare-fun bs!1883644 () Bool)

(assert (= bs!1883644 (and d!2217229 d!2217213)))

(assert (=> bs!1883644 (= lambda!430100 lambda!430097)))

(declare-fun bs!1883645 () Bool)

(assert (= bs!1883645 (and d!2217229 d!2217227)))

(assert (=> bs!1883645 (= lambda!430100 lambda!430099)))

(assert (=> d!2217229 true))

(assert (=> d!2217229 (= (appendTo!877 lt!2556527 auxCtx!45) (map!16156 lt!2556527 lambda!430100))))

(declare-fun bs!1883646 () Bool)

(assert (= bs!1883646 d!2217229))

(declare-fun m!7821556 () Bool)

(assert (=> bs!1883646 m!7821556))

(assert (=> b!7092604 d!2217229))

(declare-fun bm!645163 () Bool)

(declare-fun call!645171 () List!68769)

(declare-fun call!645173 () List!68769)

(assert (=> bm!645163 (= call!645171 call!645173)))

(declare-fun c!1323670 () Bool)

(declare-fun c!1323668 () Bool)

(declare-fun call!645172 () (Set Context!13604))

(declare-fun bm!645164 () Bool)

(declare-fun c!1323667 () Bool)

(assert (=> bm!645164 (= call!645172 (derivationStepZipperDown!2369 (ite c!1323670 (regTwo!36125 (regOne!36124 r!11554)) (ite c!1323667 (regTwo!36124 (regOne!36124 r!11554)) (ite c!1323668 (regOne!36124 (regOne!36124 r!11554)) (reg!18135 (regOne!36124 r!11554))))) (ite (or c!1323670 c!1323667) lt!2556537 (Context!13605 call!645171)) a!1901))))

(declare-fun b!7092755 () Bool)

(declare-fun e!4263742 () Bool)

(assert (=> b!7092755 (= c!1323667 e!4263742)))

(declare-fun res!2896615 () Bool)

(assert (=> b!7092755 (=> (not res!2896615) (not e!4263742))))

(assert (=> b!7092755 (= res!2896615 (is-Concat!26651 (regOne!36124 r!11554)))))

(declare-fun e!4263741 () (Set Context!13604))

(declare-fun e!4263737 () (Set Context!13604))

(assert (=> b!7092755 (= e!4263741 e!4263737)))

(declare-fun b!7092756 () Bool)

(declare-fun e!4263740 () (Set Context!13604))

(declare-fun call!645168 () (Set Context!13604))

(assert (=> b!7092756 (= e!4263740 call!645168)))

(declare-fun b!7092757 () Bool)

(assert (=> b!7092757 (= e!4263742 (nullable!7446 (regOne!36124 (regOne!36124 r!11554))))))

(declare-fun b!7092758 () Bool)

(declare-fun call!645169 () (Set Context!13604))

(declare-fun call!645170 () (Set Context!13604))

(assert (=> b!7092758 (= e!4263737 (set.union call!645169 call!645170))))

(declare-fun b!7092759 () Bool)

(declare-fun c!1323669 () Bool)

(assert (=> b!7092759 (= c!1323669 (is-Star!17806 (regOne!36124 r!11554)))))

(declare-fun e!4263739 () (Set Context!13604))

(assert (=> b!7092759 (= e!4263739 e!4263740)))

(declare-fun bm!645165 () Bool)

(assert (=> bm!645165 (= call!645173 ($colon$colon!2713 (exprs!7302 lt!2556537) (ite (or c!1323667 c!1323668) (regTwo!36124 (regOne!36124 r!11554)) (regOne!36124 r!11554))))))

(declare-fun b!7092760 () Bool)

(declare-fun e!4263738 () (Set Context!13604))

(assert (=> b!7092760 (= e!4263738 (set.insert lt!2556537 (as set.empty (Set Context!13604))))))

(declare-fun b!7092761 () Bool)

(assert (=> b!7092761 (= e!4263738 e!4263741)))

(assert (=> b!7092761 (= c!1323670 (is-Union!17806 (regOne!36124 r!11554)))))

(declare-fun bm!645166 () Bool)

(assert (=> bm!645166 (= call!645168 call!645170)))

(declare-fun b!7092762 () Bool)

(assert (=> b!7092762 (= e!4263740 (as set.empty (Set Context!13604)))))

(declare-fun d!2217231 () Bool)

(declare-fun c!1323671 () Bool)

(assert (=> d!2217231 (= c!1323671 (and (is-ElementMatch!17806 (regOne!36124 r!11554)) (= (c!1323631 (regOne!36124 r!11554)) a!1901)))))

(assert (=> d!2217231 (= (derivationStepZipperDown!2369 (regOne!36124 r!11554) lt!2556537 a!1901) e!4263738)))

(declare-fun b!7092763 () Bool)

(assert (=> b!7092763 (= e!4263741 (set.union call!645169 call!645172))))

(declare-fun bm!645167 () Bool)

(assert (=> bm!645167 (= call!645170 call!645172)))

(declare-fun bm!645168 () Bool)

(assert (=> bm!645168 (= call!645169 (derivationStepZipperDown!2369 (ite c!1323670 (regOne!36125 (regOne!36124 r!11554)) (regOne!36124 (regOne!36124 r!11554))) (ite c!1323670 lt!2556537 (Context!13605 call!645173)) a!1901))))

(declare-fun b!7092764 () Bool)

(assert (=> b!7092764 (= e!4263739 call!645168)))

(declare-fun b!7092765 () Bool)

(assert (=> b!7092765 (= e!4263737 e!4263739)))

(assert (=> b!7092765 (= c!1323668 (is-Concat!26651 (regOne!36124 r!11554)))))

(assert (= (and d!2217231 c!1323671) b!7092760))

(assert (= (and d!2217231 (not c!1323671)) b!7092761))

(assert (= (and b!7092761 c!1323670) b!7092763))

(assert (= (and b!7092761 (not c!1323670)) b!7092755))

(assert (= (and b!7092755 res!2896615) b!7092757))

(assert (= (and b!7092755 c!1323667) b!7092758))

(assert (= (and b!7092755 (not c!1323667)) b!7092765))

(assert (= (and b!7092765 c!1323668) b!7092764))

(assert (= (and b!7092765 (not c!1323668)) b!7092759))

(assert (= (and b!7092759 c!1323669) b!7092756))

(assert (= (and b!7092759 (not c!1323669)) b!7092762))

(assert (= (or b!7092764 b!7092756) bm!645163))

(assert (= (or b!7092764 b!7092756) bm!645166))

(assert (= (or b!7092758 bm!645166) bm!645167))

(assert (= (or b!7092758 bm!645163) bm!645165))

(assert (= (or b!7092763 bm!645167) bm!645164))

(assert (= (or b!7092763 b!7092758) bm!645168))

(declare-fun m!7821558 () Bool)

(assert (=> bm!645168 m!7821558))

(declare-fun m!7821560 () Bool)

(assert (=> bm!645164 m!7821560))

(assert (=> b!7092757 m!7821516))

(declare-fun m!7821562 () Bool)

(assert (=> bm!645165 m!7821562))

(declare-fun m!7821564 () Bool)

(assert (=> b!7092760 m!7821564))

(assert (=> b!7092604 d!2217231))

(declare-fun bm!645169 () Bool)

(declare-fun call!645177 () List!68769)

(declare-fun call!645179 () List!68769)

(assert (=> bm!645169 (= call!645177 call!645179)))

(declare-fun call!645178 () (Set Context!13604))

(declare-fun c!1323675 () Bool)

(declare-fun c!1323673 () Bool)

(declare-fun c!1323672 () Bool)

(declare-fun bm!645170 () Bool)

(assert (=> bm!645170 (= call!645178 (derivationStepZipperDown!2369 (ite c!1323675 (regTwo!36125 r!11554) (ite c!1323672 (regTwo!36124 r!11554) (ite c!1323673 (regOne!36124 r!11554) (reg!18135 r!11554)))) (ite (or c!1323675 c!1323672) c!9994 (Context!13605 call!645177)) a!1901))))

(declare-fun b!7092766 () Bool)

(declare-fun e!4263748 () Bool)

(assert (=> b!7092766 (= c!1323672 e!4263748)))

(declare-fun res!2896616 () Bool)

(assert (=> b!7092766 (=> (not res!2896616) (not e!4263748))))

(assert (=> b!7092766 (= res!2896616 (is-Concat!26651 r!11554))))

(declare-fun e!4263747 () (Set Context!13604))

(declare-fun e!4263743 () (Set Context!13604))

(assert (=> b!7092766 (= e!4263747 e!4263743)))

(declare-fun b!7092767 () Bool)

(declare-fun e!4263746 () (Set Context!13604))

(declare-fun call!645174 () (Set Context!13604))

(assert (=> b!7092767 (= e!4263746 call!645174)))

(declare-fun b!7092768 () Bool)

(assert (=> b!7092768 (= e!4263748 (nullable!7446 (regOne!36124 r!11554)))))

(declare-fun b!7092769 () Bool)

(declare-fun call!645175 () (Set Context!13604))

(declare-fun call!645176 () (Set Context!13604))

(assert (=> b!7092769 (= e!4263743 (set.union call!645175 call!645176))))

(declare-fun b!7092770 () Bool)

(declare-fun c!1323674 () Bool)

(assert (=> b!7092770 (= c!1323674 (is-Star!17806 r!11554))))

(declare-fun e!4263745 () (Set Context!13604))

(assert (=> b!7092770 (= e!4263745 e!4263746)))

(declare-fun bm!645171 () Bool)

(assert (=> bm!645171 (= call!645179 ($colon$colon!2713 (exprs!7302 c!9994) (ite (or c!1323672 c!1323673) (regTwo!36124 r!11554) r!11554)))))

(declare-fun b!7092771 () Bool)

(declare-fun e!4263744 () (Set Context!13604))

(assert (=> b!7092771 (= e!4263744 (set.insert c!9994 (as set.empty (Set Context!13604))))))

(declare-fun b!7092772 () Bool)

(assert (=> b!7092772 (= e!4263744 e!4263747)))

(assert (=> b!7092772 (= c!1323675 (is-Union!17806 r!11554))))

(declare-fun bm!645172 () Bool)

(assert (=> bm!645172 (= call!645174 call!645176)))

(declare-fun b!7092773 () Bool)

(assert (=> b!7092773 (= e!4263746 (as set.empty (Set Context!13604)))))

(declare-fun d!2217233 () Bool)

(declare-fun c!1323676 () Bool)

(assert (=> d!2217233 (= c!1323676 (and (is-ElementMatch!17806 r!11554) (= (c!1323631 r!11554) a!1901)))))

(assert (=> d!2217233 (= (derivationStepZipperDown!2369 r!11554 c!9994 a!1901) e!4263744)))

(declare-fun b!7092774 () Bool)

(assert (=> b!7092774 (= e!4263747 (set.union call!645175 call!645178))))

(declare-fun bm!645173 () Bool)

(assert (=> bm!645173 (= call!645176 call!645178)))

(declare-fun bm!645174 () Bool)

(assert (=> bm!645174 (= call!645175 (derivationStepZipperDown!2369 (ite c!1323675 (regOne!36125 r!11554) (regOne!36124 r!11554)) (ite c!1323675 c!9994 (Context!13605 call!645179)) a!1901))))

(declare-fun b!7092775 () Bool)

(assert (=> b!7092775 (= e!4263745 call!645174)))

(declare-fun b!7092776 () Bool)

(assert (=> b!7092776 (= e!4263743 e!4263745)))

(assert (=> b!7092776 (= c!1323673 (is-Concat!26651 r!11554))))

(assert (= (and d!2217233 c!1323676) b!7092771))

(assert (= (and d!2217233 (not c!1323676)) b!7092772))

(assert (= (and b!7092772 c!1323675) b!7092774))

(assert (= (and b!7092772 (not c!1323675)) b!7092766))

(assert (= (and b!7092766 res!2896616) b!7092768))

(assert (= (and b!7092766 c!1323672) b!7092769))

(assert (= (and b!7092766 (not c!1323672)) b!7092776))

(assert (= (and b!7092776 c!1323673) b!7092775))

(assert (= (and b!7092776 (not c!1323673)) b!7092770))

(assert (= (and b!7092770 c!1323674) b!7092767))

(assert (= (and b!7092770 (not c!1323674)) b!7092773))

(assert (= (or b!7092775 b!7092767) bm!645169))

(assert (= (or b!7092775 b!7092767) bm!645172))

(assert (= (or b!7092769 bm!645172) bm!645173))

(assert (= (or b!7092769 bm!645169) bm!645171))

(assert (= (or b!7092774 bm!645173) bm!645170))

(assert (= (or b!7092774 b!7092769) bm!645174))

(declare-fun m!7821566 () Bool)

(assert (=> bm!645174 m!7821566))

(declare-fun m!7821568 () Bool)

(assert (=> bm!645170 m!7821568))

(assert (=> b!7092768 m!7821380))

(declare-fun m!7821570 () Bool)

(assert (=> bm!645171 m!7821570))

(assert (=> b!7092771 m!7821534))

(assert (=> b!7092604 d!2217233))

(declare-fun d!2217237 () Bool)

(assert (=> d!2217237 (= (set.union (map!16156 lt!2556527 lambda!430064) (map!16156 lt!2556520 lambda!430064)) (map!16156 (set.union lt!2556527 lt!2556520) lambda!430064))))

(declare-fun lt!2556617 () Unit!162303)

(declare-fun choose!54690 ((Set Context!13604) (Set Context!13604) Int) Unit!162303)

(assert (=> d!2217237 (= lt!2556617 (choose!54690 lt!2556527 lt!2556520 lambda!430064))))

(assert (=> d!2217237 (= (lemmaMapAssociative!19 lt!2556527 lt!2556520 lambda!430064) lt!2556617)))

(declare-fun bs!1883647 () Bool)

(assert (= bs!1883647 d!2217237))

(assert (=> bs!1883647 m!7821348))

(assert (=> bs!1883647 m!7821356))

(assert (=> bs!1883647 m!7821342))

(declare-fun m!7821572 () Bool)

(assert (=> bs!1883647 m!7821572))

(assert (=> b!7092604 d!2217237))

(assert (=> b!7092604 d!2217199))

(declare-fun d!2217239 () Bool)

(assert (=> d!2217239 (= ($colon$colon!2713 (exprs!7302 c!9994) (regTwo!36124 r!11554)) (Cons!68645 (regTwo!36124 r!11554) (exprs!7302 c!9994)))))

(assert (=> b!7092604 d!2217239))

(declare-fun bm!645175 () Bool)

(declare-fun call!645183 () List!68769)

(declare-fun call!645185 () List!68769)

(assert (=> bm!645175 (= call!645183 call!645185)))

(declare-fun c!1323677 () Bool)

(declare-fun c!1323680 () Bool)

(declare-fun bm!645176 () Bool)

(declare-fun c!1323678 () Bool)

(declare-fun call!645184 () (Set Context!13604))

(assert (=> bm!645176 (= call!645184 (derivationStepZipperDown!2369 (ite c!1323680 (regTwo!36125 r!11554) (ite c!1323677 (regTwo!36124 r!11554) (ite c!1323678 (regOne!36124 r!11554) (reg!18135 r!11554)))) (ite (or c!1323680 c!1323677) lt!2556531 (Context!13605 call!645183)) a!1901))))

(declare-fun b!7092777 () Bool)

(declare-fun e!4263754 () Bool)

(assert (=> b!7092777 (= c!1323677 e!4263754)))

(declare-fun res!2896617 () Bool)

(assert (=> b!7092777 (=> (not res!2896617) (not e!4263754))))

(assert (=> b!7092777 (= res!2896617 (is-Concat!26651 r!11554))))

(declare-fun e!4263753 () (Set Context!13604))

(declare-fun e!4263749 () (Set Context!13604))

(assert (=> b!7092777 (= e!4263753 e!4263749)))

(declare-fun b!7092778 () Bool)

(declare-fun e!4263752 () (Set Context!13604))

(declare-fun call!645180 () (Set Context!13604))

(assert (=> b!7092778 (= e!4263752 call!645180)))

(declare-fun b!7092779 () Bool)

(assert (=> b!7092779 (= e!4263754 (nullable!7446 (regOne!36124 r!11554)))))

(declare-fun b!7092780 () Bool)

(declare-fun call!645181 () (Set Context!13604))

(declare-fun call!645182 () (Set Context!13604))

(assert (=> b!7092780 (= e!4263749 (set.union call!645181 call!645182))))

(declare-fun b!7092781 () Bool)

(declare-fun c!1323679 () Bool)

(assert (=> b!7092781 (= c!1323679 (is-Star!17806 r!11554))))

(declare-fun e!4263751 () (Set Context!13604))

(assert (=> b!7092781 (= e!4263751 e!4263752)))

(declare-fun bm!645177 () Bool)

(assert (=> bm!645177 (= call!645185 ($colon$colon!2713 (exprs!7302 lt!2556531) (ite (or c!1323677 c!1323678) (regTwo!36124 r!11554) r!11554)))))

(declare-fun b!7092782 () Bool)

(declare-fun e!4263750 () (Set Context!13604))

(assert (=> b!7092782 (= e!4263750 (set.insert lt!2556531 (as set.empty (Set Context!13604))))))

(declare-fun b!7092783 () Bool)

(assert (=> b!7092783 (= e!4263750 e!4263753)))

(assert (=> b!7092783 (= c!1323680 (is-Union!17806 r!11554))))

(declare-fun bm!645178 () Bool)

(assert (=> bm!645178 (= call!645180 call!645182)))

(declare-fun b!7092784 () Bool)

(assert (=> b!7092784 (= e!4263752 (as set.empty (Set Context!13604)))))

(declare-fun d!2217241 () Bool)

(declare-fun c!1323681 () Bool)

(assert (=> d!2217241 (= c!1323681 (and (is-ElementMatch!17806 r!11554) (= (c!1323631 r!11554) a!1901)))))

(assert (=> d!2217241 (= (derivationStepZipperDown!2369 r!11554 lt!2556531 a!1901) e!4263750)))

(declare-fun b!7092785 () Bool)

(assert (=> b!7092785 (= e!4263753 (set.union call!645181 call!645184))))

(declare-fun bm!645179 () Bool)

(assert (=> bm!645179 (= call!645182 call!645184)))

(declare-fun bm!645180 () Bool)

(assert (=> bm!645180 (= call!645181 (derivationStepZipperDown!2369 (ite c!1323680 (regOne!36125 r!11554) (regOne!36124 r!11554)) (ite c!1323680 lt!2556531 (Context!13605 call!645185)) a!1901))))

(declare-fun b!7092786 () Bool)

(assert (=> b!7092786 (= e!4263751 call!645180)))

(declare-fun b!7092787 () Bool)

(assert (=> b!7092787 (= e!4263749 e!4263751)))

(assert (=> b!7092787 (= c!1323678 (is-Concat!26651 r!11554))))

(assert (= (and d!2217241 c!1323681) b!7092782))

(assert (= (and d!2217241 (not c!1323681)) b!7092783))

(assert (= (and b!7092783 c!1323680) b!7092785))

(assert (= (and b!7092783 (not c!1323680)) b!7092777))

(assert (= (and b!7092777 res!2896617) b!7092779))

(assert (= (and b!7092777 c!1323677) b!7092780))

(assert (= (and b!7092777 (not c!1323677)) b!7092787))

(assert (= (and b!7092787 c!1323678) b!7092786))

(assert (= (and b!7092787 (not c!1323678)) b!7092781))

(assert (= (and b!7092781 c!1323679) b!7092778))

(assert (= (and b!7092781 (not c!1323679)) b!7092784))

(assert (= (or b!7092786 b!7092778) bm!645175))

(assert (= (or b!7092786 b!7092778) bm!645178))

(assert (= (or b!7092780 bm!645178) bm!645179))

(assert (= (or b!7092780 bm!645175) bm!645177))

(assert (= (or b!7092785 bm!645179) bm!645176))

(assert (= (or b!7092785 b!7092780) bm!645180))

(declare-fun m!7821574 () Bool)

(assert (=> bm!645180 m!7821574))

(declare-fun m!7821576 () Bool)

(assert (=> bm!645176 m!7821576))

(assert (=> b!7092779 m!7821380))

(declare-fun m!7821578 () Bool)

(assert (=> bm!645177 m!7821578))

(declare-fun m!7821580 () Bool)

(assert (=> b!7092782 m!7821580))

(assert (=> b!7092602 d!2217241))

(declare-fun bm!645181 () Bool)

(declare-fun call!645189 () List!68769)

(declare-fun call!645191 () List!68769)

(assert (=> bm!645181 (= call!645189 call!645191)))

(declare-fun call!645190 () (Set Context!13604))

(declare-fun c!1323682 () Bool)

(declare-fun bm!645182 () Bool)

(declare-fun c!1323683 () Bool)

(declare-fun c!1323685 () Bool)

(assert (=> bm!645182 (= call!645190 (derivationStepZipperDown!2369 (ite c!1323685 (regTwo!36125 (regTwo!36124 r!11554)) (ite c!1323682 (regTwo!36124 (regTwo!36124 r!11554)) (ite c!1323683 (regOne!36124 (regTwo!36124 r!11554)) (reg!18135 (regTwo!36124 r!11554))))) (ite (or c!1323685 c!1323682) lt!2556531 (Context!13605 call!645189)) a!1901))))

(declare-fun b!7092788 () Bool)

(declare-fun e!4263760 () Bool)

(assert (=> b!7092788 (= c!1323682 e!4263760)))

(declare-fun res!2896618 () Bool)

(assert (=> b!7092788 (=> (not res!2896618) (not e!4263760))))

(assert (=> b!7092788 (= res!2896618 (is-Concat!26651 (regTwo!36124 r!11554)))))

(declare-fun e!4263759 () (Set Context!13604))

(declare-fun e!4263755 () (Set Context!13604))

(assert (=> b!7092788 (= e!4263759 e!4263755)))

(declare-fun b!7092789 () Bool)

(declare-fun e!4263758 () (Set Context!13604))

(declare-fun call!645186 () (Set Context!13604))

(assert (=> b!7092789 (= e!4263758 call!645186)))

(declare-fun b!7092790 () Bool)

(assert (=> b!7092790 (= e!4263760 (nullable!7446 (regOne!36124 (regTwo!36124 r!11554))))))

(declare-fun b!7092791 () Bool)

(declare-fun call!645187 () (Set Context!13604))

(declare-fun call!645188 () (Set Context!13604))

(assert (=> b!7092791 (= e!4263755 (set.union call!645187 call!645188))))

(declare-fun b!7092792 () Bool)

(declare-fun c!1323684 () Bool)

(assert (=> b!7092792 (= c!1323684 (is-Star!17806 (regTwo!36124 r!11554)))))

(declare-fun e!4263757 () (Set Context!13604))

(assert (=> b!7092792 (= e!4263757 e!4263758)))

(declare-fun bm!645183 () Bool)

(assert (=> bm!645183 (= call!645191 ($colon$colon!2713 (exprs!7302 lt!2556531) (ite (or c!1323682 c!1323683) (regTwo!36124 (regTwo!36124 r!11554)) (regTwo!36124 r!11554))))))

(declare-fun b!7092793 () Bool)

(declare-fun e!4263756 () (Set Context!13604))

(assert (=> b!7092793 (= e!4263756 (set.insert lt!2556531 (as set.empty (Set Context!13604))))))

(declare-fun b!7092794 () Bool)

(assert (=> b!7092794 (= e!4263756 e!4263759)))

(assert (=> b!7092794 (= c!1323685 (is-Union!17806 (regTwo!36124 r!11554)))))

(declare-fun bm!645184 () Bool)

(assert (=> bm!645184 (= call!645186 call!645188)))

(declare-fun b!7092795 () Bool)

(assert (=> b!7092795 (= e!4263758 (as set.empty (Set Context!13604)))))

(declare-fun d!2217243 () Bool)

(declare-fun c!1323686 () Bool)

(assert (=> d!2217243 (= c!1323686 (and (is-ElementMatch!17806 (regTwo!36124 r!11554)) (= (c!1323631 (regTwo!36124 r!11554)) a!1901)))))

(assert (=> d!2217243 (= (derivationStepZipperDown!2369 (regTwo!36124 r!11554) lt!2556531 a!1901) e!4263756)))

(declare-fun b!7092796 () Bool)

(assert (=> b!7092796 (= e!4263759 (set.union call!645187 call!645190))))

(declare-fun bm!645185 () Bool)

(assert (=> bm!645185 (= call!645188 call!645190)))

(declare-fun bm!645186 () Bool)

(assert (=> bm!645186 (= call!645187 (derivationStepZipperDown!2369 (ite c!1323685 (regOne!36125 (regTwo!36124 r!11554)) (regOne!36124 (regTwo!36124 r!11554))) (ite c!1323685 lt!2556531 (Context!13605 call!645191)) a!1901))))

(declare-fun b!7092797 () Bool)

(assert (=> b!7092797 (= e!4263757 call!645186)))

(declare-fun b!7092798 () Bool)

(assert (=> b!7092798 (= e!4263755 e!4263757)))

(assert (=> b!7092798 (= c!1323683 (is-Concat!26651 (regTwo!36124 r!11554)))))

(assert (= (and d!2217243 c!1323686) b!7092793))

(assert (= (and d!2217243 (not c!1323686)) b!7092794))

(assert (= (and b!7092794 c!1323685) b!7092796))

(assert (= (and b!7092794 (not c!1323685)) b!7092788))

(assert (= (and b!7092788 res!2896618) b!7092790))

(assert (= (and b!7092788 c!1323682) b!7092791))

(assert (= (and b!7092788 (not c!1323682)) b!7092798))

(assert (= (and b!7092798 c!1323683) b!7092797))

(assert (= (and b!7092798 (not c!1323683)) b!7092792))

(assert (= (and b!7092792 c!1323684) b!7092789))

(assert (= (and b!7092792 (not c!1323684)) b!7092795))

(assert (= (or b!7092797 b!7092789) bm!645181))

(assert (= (or b!7092797 b!7092789) bm!645184))

(assert (= (or b!7092791 bm!645184) bm!645185))

(assert (= (or b!7092791 bm!645181) bm!645183))

(assert (= (or b!7092796 bm!645185) bm!645182))

(assert (= (or b!7092796 b!7092791) bm!645186))

(declare-fun m!7821582 () Bool)

(assert (=> bm!645186 m!7821582))

(declare-fun m!7821584 () Bool)

(assert (=> bm!645182 m!7821584))

(assert (=> b!7092790 m!7821530))

(declare-fun m!7821586 () Bool)

(assert (=> bm!645183 m!7821586))

(assert (=> b!7092793 m!7821580))

(assert (=> b!7092602 d!2217243))

(declare-fun bm!645187 () Bool)

(declare-fun call!645195 () List!68769)

(declare-fun call!645197 () List!68769)

(assert (=> bm!645187 (= call!645195 call!645197)))

(declare-fun call!645196 () (Set Context!13604))

(declare-fun bm!645188 () Bool)

(declare-fun c!1323689 () Bool)

(declare-fun c!1323688 () Bool)

(declare-fun c!1323691 () Bool)

(assert (=> bm!645188 (= call!645196 (derivationStepZipperDown!2369 (ite c!1323691 (regTwo!36125 (regOne!36124 r!11554)) (ite c!1323688 (regTwo!36124 (regOne!36124 r!11554)) (ite c!1323689 (regOne!36124 (regOne!36124 r!11554)) (reg!18135 (regOne!36124 r!11554))))) (ite (or c!1323691 c!1323688) (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554))) (Context!13605 call!645195)) a!1901))))

(declare-fun b!7092799 () Bool)

(declare-fun e!4263766 () Bool)

(assert (=> b!7092799 (= c!1323688 e!4263766)))

(declare-fun res!2896619 () Bool)

(assert (=> b!7092799 (=> (not res!2896619) (not e!4263766))))

(assert (=> b!7092799 (= res!2896619 (is-Concat!26651 (regOne!36124 r!11554)))))

(declare-fun e!4263765 () (Set Context!13604))

(declare-fun e!4263761 () (Set Context!13604))

(assert (=> b!7092799 (= e!4263765 e!4263761)))

(declare-fun b!7092800 () Bool)

(declare-fun e!4263764 () (Set Context!13604))

(declare-fun call!645192 () (Set Context!13604))

(assert (=> b!7092800 (= e!4263764 call!645192)))

(declare-fun b!7092801 () Bool)

(assert (=> b!7092801 (= e!4263766 (nullable!7446 (regOne!36124 (regOne!36124 r!11554))))))

(declare-fun b!7092802 () Bool)

(declare-fun call!645193 () (Set Context!13604))

(declare-fun call!645194 () (Set Context!13604))

(assert (=> b!7092802 (= e!4263761 (set.union call!645193 call!645194))))

(declare-fun b!7092803 () Bool)

(declare-fun c!1323690 () Bool)

(assert (=> b!7092803 (= c!1323690 (is-Star!17806 (regOne!36124 r!11554)))))

(declare-fun e!4263763 () (Set Context!13604))

(assert (=> b!7092803 (= e!4263763 e!4263764)))

(declare-fun bm!645189 () Bool)

(assert (=> bm!645189 (= call!645197 ($colon$colon!2713 (exprs!7302 (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554)))) (ite (or c!1323688 c!1323689) (regTwo!36124 (regOne!36124 r!11554)) (regOne!36124 r!11554))))))

(declare-fun b!7092804 () Bool)

(declare-fun e!4263762 () (Set Context!13604))

(assert (=> b!7092804 (= e!4263762 (set.insert (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554))) (as set.empty (Set Context!13604))))))

(declare-fun b!7092805 () Bool)

(assert (=> b!7092805 (= e!4263762 e!4263765)))

(assert (=> b!7092805 (= c!1323691 (is-Union!17806 (regOne!36124 r!11554)))))

(declare-fun bm!645190 () Bool)

(assert (=> bm!645190 (= call!645192 call!645194)))

(declare-fun b!7092806 () Bool)

(assert (=> b!7092806 (= e!4263764 (as set.empty (Set Context!13604)))))

(declare-fun d!2217245 () Bool)

(declare-fun c!1323692 () Bool)

(assert (=> d!2217245 (= c!1323692 (and (is-ElementMatch!17806 (regOne!36124 r!11554)) (= (c!1323631 (regOne!36124 r!11554)) a!1901)))))

(assert (=> d!2217245 (= (derivationStepZipperDown!2369 (regOne!36124 r!11554) (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554))) a!1901) e!4263762)))

(declare-fun b!7092807 () Bool)

(assert (=> b!7092807 (= e!4263765 (set.union call!645193 call!645196))))

(declare-fun bm!645191 () Bool)

(assert (=> bm!645191 (= call!645194 call!645196)))

(declare-fun bm!645192 () Bool)

(assert (=> bm!645192 (= call!645193 (derivationStepZipperDown!2369 (ite c!1323691 (regOne!36125 (regOne!36124 r!11554)) (regOne!36124 (regOne!36124 r!11554))) (ite c!1323691 (Context!13605 ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554))) (Context!13605 call!645197)) a!1901))))

(declare-fun b!7092808 () Bool)

(assert (=> b!7092808 (= e!4263763 call!645192)))

(declare-fun b!7092809 () Bool)

(assert (=> b!7092809 (= e!4263761 e!4263763)))

(assert (=> b!7092809 (= c!1323689 (is-Concat!26651 (regOne!36124 r!11554)))))

(assert (= (and d!2217245 c!1323692) b!7092804))

(assert (= (and d!2217245 (not c!1323692)) b!7092805))

(assert (= (and b!7092805 c!1323691) b!7092807))

(assert (= (and b!7092805 (not c!1323691)) b!7092799))

(assert (= (and b!7092799 res!2896619) b!7092801))

(assert (= (and b!7092799 c!1323688) b!7092802))

(assert (= (and b!7092799 (not c!1323688)) b!7092809))

(assert (= (and b!7092809 c!1323689) b!7092808))

(assert (= (and b!7092809 (not c!1323689)) b!7092803))

(assert (= (and b!7092803 c!1323690) b!7092800))

(assert (= (and b!7092803 (not c!1323690)) b!7092806))

(assert (= (or b!7092808 b!7092800) bm!645187))

(assert (= (or b!7092808 b!7092800) bm!645190))

(assert (= (or b!7092802 bm!645190) bm!645191))

(assert (= (or b!7092802 bm!645187) bm!645189))

(assert (= (or b!7092807 bm!645191) bm!645188))

(assert (= (or b!7092807 b!7092802) bm!645192))

(declare-fun m!7821588 () Bool)

(assert (=> bm!645192 m!7821588))

(declare-fun m!7821590 () Bool)

(assert (=> bm!645188 m!7821590))

(assert (=> b!7092801 m!7821516))

(declare-fun m!7821592 () Bool)

(assert (=> bm!645189 m!7821592))

(declare-fun m!7821594 () Bool)

(assert (=> b!7092804 m!7821594))

(assert (=> b!7092602 d!2217245))

(declare-fun d!2217247 () Bool)

(assert (=> d!2217247 (= ($colon$colon!2713 lt!2556532 (regTwo!36124 r!11554)) (Cons!68645 (regTwo!36124 r!11554) lt!2556532))))

(assert (=> b!7092602 d!2217247))

(declare-fun d!2217249 () Bool)

(declare-fun nullableFct!2856 (Regex!17806) Bool)

(assert (=> d!2217249 (= (nullable!7446 (regOne!36124 r!11554)) (nullableFct!2856 (regOne!36124 r!11554)))))

(declare-fun bs!1883648 () Bool)

(assert (= bs!1883648 d!2217249))

(declare-fun m!7821596 () Bool)

(assert (=> bs!1883648 m!7821596))

(assert (=> b!7092603 d!2217249))

(declare-fun b!7092821 () Bool)

(declare-fun e!4263769 () Bool)

(declare-fun tp!1948613 () Bool)

(declare-fun tp!1948614 () Bool)

(assert (=> b!7092821 (= e!4263769 (and tp!1948613 tp!1948614))))

(declare-fun b!7092820 () Bool)

(assert (=> b!7092820 (= e!4263769 tp_is_empty!44845)))

(declare-fun b!7092822 () Bool)

(declare-fun tp!1948617 () Bool)

(assert (=> b!7092822 (= e!4263769 tp!1948617)))

(declare-fun b!7092823 () Bool)

(declare-fun tp!1948615 () Bool)

(declare-fun tp!1948616 () Bool)

(assert (=> b!7092823 (= e!4263769 (and tp!1948615 tp!1948616))))

(assert (=> b!7092606 (= tp!1948577 e!4263769)))

(assert (= (and b!7092606 (is-ElementMatch!17806 (regOne!36124 r!11554))) b!7092820))

(assert (= (and b!7092606 (is-Concat!26651 (regOne!36124 r!11554))) b!7092821))

(assert (= (and b!7092606 (is-Star!17806 (regOne!36124 r!11554))) b!7092822))

(assert (= (and b!7092606 (is-Union!17806 (regOne!36124 r!11554))) b!7092823))

(declare-fun b!7092825 () Bool)

(declare-fun e!4263770 () Bool)

(declare-fun tp!1948618 () Bool)

(declare-fun tp!1948619 () Bool)

(assert (=> b!7092825 (= e!4263770 (and tp!1948618 tp!1948619))))

(declare-fun b!7092824 () Bool)

(assert (=> b!7092824 (= e!4263770 tp_is_empty!44845)))

(declare-fun b!7092826 () Bool)

(declare-fun tp!1948622 () Bool)

(assert (=> b!7092826 (= e!4263770 tp!1948622)))

(declare-fun b!7092827 () Bool)

(declare-fun tp!1948620 () Bool)

(declare-fun tp!1948621 () Bool)

(assert (=> b!7092827 (= e!4263770 (and tp!1948620 tp!1948621))))

(assert (=> b!7092606 (= tp!1948578 e!4263770)))

(assert (= (and b!7092606 (is-ElementMatch!17806 (regTwo!36124 r!11554))) b!7092824))

(assert (= (and b!7092606 (is-Concat!26651 (regTwo!36124 r!11554))) b!7092825))

(assert (= (and b!7092606 (is-Star!17806 (regTwo!36124 r!11554))) b!7092826))

(assert (= (and b!7092606 (is-Union!17806 (regTwo!36124 r!11554))) b!7092827))

(declare-fun b!7092829 () Bool)

(declare-fun e!4263771 () Bool)

(declare-fun tp!1948623 () Bool)

(declare-fun tp!1948624 () Bool)

(assert (=> b!7092829 (= e!4263771 (and tp!1948623 tp!1948624))))

(declare-fun b!7092828 () Bool)

(assert (=> b!7092828 (= e!4263771 tp_is_empty!44845)))

(declare-fun b!7092830 () Bool)

(declare-fun tp!1948627 () Bool)

(assert (=> b!7092830 (= e!4263771 tp!1948627)))

(declare-fun b!7092831 () Bool)

(declare-fun tp!1948625 () Bool)

(declare-fun tp!1948626 () Bool)

(assert (=> b!7092831 (= e!4263771 (and tp!1948625 tp!1948626))))

(assert (=> b!7092612 (= tp!1948575 e!4263771)))

(assert (= (and b!7092612 (is-ElementMatch!17806 (regOne!36125 r!11554))) b!7092828))

(assert (= (and b!7092612 (is-Concat!26651 (regOne!36125 r!11554))) b!7092829))

(assert (= (and b!7092612 (is-Star!17806 (regOne!36125 r!11554))) b!7092830))

(assert (= (and b!7092612 (is-Union!17806 (regOne!36125 r!11554))) b!7092831))

(declare-fun b!7092833 () Bool)

(declare-fun e!4263772 () Bool)

(declare-fun tp!1948628 () Bool)

(declare-fun tp!1948629 () Bool)

(assert (=> b!7092833 (= e!4263772 (and tp!1948628 tp!1948629))))

(declare-fun b!7092832 () Bool)

(assert (=> b!7092832 (= e!4263772 tp_is_empty!44845)))

(declare-fun b!7092834 () Bool)

(declare-fun tp!1948632 () Bool)

(assert (=> b!7092834 (= e!4263772 tp!1948632)))

(declare-fun b!7092835 () Bool)

(declare-fun tp!1948630 () Bool)

(declare-fun tp!1948631 () Bool)

(assert (=> b!7092835 (= e!4263772 (and tp!1948630 tp!1948631))))

(assert (=> b!7092612 (= tp!1948580 e!4263772)))

(assert (= (and b!7092612 (is-ElementMatch!17806 (regTwo!36125 r!11554))) b!7092832))

(assert (= (and b!7092612 (is-Concat!26651 (regTwo!36125 r!11554))) b!7092833))

(assert (= (and b!7092612 (is-Star!17806 (regTwo!36125 r!11554))) b!7092834))

(assert (= (and b!7092612 (is-Union!17806 (regTwo!36125 r!11554))) b!7092835))

(declare-fun b!7092840 () Bool)

(declare-fun e!4263775 () Bool)

(declare-fun tp!1948637 () Bool)

(declare-fun tp!1948638 () Bool)

(assert (=> b!7092840 (= e!4263775 (and tp!1948637 tp!1948638))))

(assert (=> b!7092605 (= tp!1948579 e!4263775)))

(assert (= (and b!7092605 (is-Cons!68645 (exprs!7302 auxCtx!45))) b!7092840))

(declare-fun b!7092841 () Bool)

(declare-fun e!4263776 () Bool)

(declare-fun tp!1948639 () Bool)

(declare-fun tp!1948640 () Bool)

(assert (=> b!7092841 (= e!4263776 (and tp!1948639 tp!1948640))))

(assert (=> b!7092611 (= tp!1948581 e!4263776)))

(assert (= (and b!7092611 (is-Cons!68645 (exprs!7302 c!9994))) b!7092841))

(declare-fun b!7092843 () Bool)

(declare-fun e!4263777 () Bool)

(declare-fun tp!1948641 () Bool)

(declare-fun tp!1948642 () Bool)

(assert (=> b!7092843 (= e!4263777 (and tp!1948641 tp!1948642))))

(declare-fun b!7092842 () Bool)

(assert (=> b!7092842 (= e!4263777 tp_is_empty!44845)))

(declare-fun b!7092844 () Bool)

(declare-fun tp!1948645 () Bool)

(assert (=> b!7092844 (= e!4263777 tp!1948645)))

(declare-fun b!7092845 () Bool)

(declare-fun tp!1948643 () Bool)

(declare-fun tp!1948644 () Bool)

(assert (=> b!7092845 (= e!4263777 (and tp!1948643 tp!1948644))))

(assert (=> b!7092608 (= tp!1948576 e!4263777)))

(assert (= (and b!7092608 (is-ElementMatch!17806 (reg!18135 r!11554))) b!7092842))

(assert (= (and b!7092608 (is-Concat!26651 (reg!18135 r!11554))) b!7092843))

(assert (= (and b!7092608 (is-Star!17806 (reg!18135 r!11554))) b!7092844))

(assert (= (and b!7092608 (is-Union!17806 (reg!18135 r!11554))) b!7092845))

(declare-fun b_lambda!271051 () Bool)

(assert (= b_lambda!271049 (or b!7092610 b_lambda!271051)))

(declare-fun bs!1883649 () Bool)

(declare-fun d!2217251 () Bool)

(assert (= bs!1883649 (and d!2217251 b!7092610)))

(assert (=> bs!1883649 (= (dynLambda!28004 lambda!430065 (h!75093 (exprs!7302 c!9994))) (validRegex!9081 (h!75093 (exprs!7302 c!9994))))))

(declare-fun m!7821598 () Bool)

(assert (=> bs!1883649 m!7821598))

(assert (=> b!7092705 d!2217251))

(push 1)

(assert tp_is_empty!44845)

(assert (not bm!645186))

(assert (not b!7092709))

(assert (not b!7092825))

(assert (not bm!645158))

(assert (not b!7092841))

(assert (not bm!645165))

(assert (not bm!645183))

(assert (not bm!645152))

(assert (not b!7092699))

(assert (not b!7092829))

(assert (not bm!645156))

(assert (not d!2217215))

(assert (not b!7092746))

(assert (not bm!645192))

(assert (not d!2217223))

(assert (not b!7092843))

(assert (not b!7092840))

(assert (not d!2217197))

(assert (not b!7092823))

(assert (not d!2217221))

(assert (not d!2217229))

(assert (not d!2217203))

(assert (not bm!645135))

(assert (not d!2217209))

(assert (not b!7092698))

(assert (not bm!645138))

(assert (not bm!645153))

(assert (not b!7092822))

(assert (not bm!645180))

(assert (not bm!645188))

(assert (not bm!645189))

(assert (not d!2217195))

(assert (not bm!645162))

(assert (not b!7092827))

(assert (not b!7092826))

(assert (not b!7092845))

(assert (not b!7092681))

(assert (not b!7092757))

(assert (not b!7092706))

(assert (not b!7092821))

(assert (not d!2217249))

(assert (not d!2217219))

(assert (not b!7092672))

(assert (not bm!645159))

(assert (not bm!645170))

(assert (not b!7092831))

(assert (not bm!645177))

(assert (not bm!645174))

(assert (not bm!645168))

(assert (not bm!645182))

(assert (not bm!645176))

(assert (not b_lambda!271051))

(assert (not b!7092708))

(assert (not d!2217237))

(assert (not b!7092833))

(assert (not b!7092790))

(assert (not b!7092779))

(assert (not b!7092801))

(assert (not b!7092835))

(assert (not b!7092768))

(assert (not d!2217227))

(assert (not bm!645171))

(assert (not b!7092844))

(assert (not b!7092830))

(assert (not bm!645164))

(assert (not d!2217225))

(assert (not d!2217213))

(assert (not bm!645133))

(assert (not d!2217199))

(assert (not bs!1883649))

(assert (not d!2217207))

(assert (not b!7092834))

(assert (not bm!645136))

(assert (not b!7092735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

