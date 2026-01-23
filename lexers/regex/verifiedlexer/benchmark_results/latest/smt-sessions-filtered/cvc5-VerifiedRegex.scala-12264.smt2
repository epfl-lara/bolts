; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689966 () Bool)

(assert start!689966)

(declare-fun b!7088619 () Bool)

(assert (=> b!7088619 true))

(declare-fun b!7088611 () Bool)

(declare-fun e!4261459 () Bool)

(declare-fun tp!1946798 () Bool)

(declare-fun tp!1946800 () Bool)

(assert (=> b!7088611 (= e!4261459 (and tp!1946798 tp!1946800))))

(declare-fun b!7088612 () Bool)

(declare-fun tp!1946797 () Bool)

(declare-fun tp!1946799 () Bool)

(assert (=> b!7088612 (= e!4261459 (and tp!1946797 tp!1946799))))

(declare-fun b!7088613 () Bool)

(declare-fun tp!1946803 () Bool)

(assert (=> b!7088613 (= e!4261459 tp!1946803)))

(declare-fun res!2895330 () Bool)

(declare-fun e!4261455 () Bool)

(assert (=> start!689966 (=> (not res!2895330) (not e!4261455))))

(declare-datatypes ((C!35810 0))(
  ( (C!35811 (val!27611 Int)) )
))
(declare-datatypes ((Regex!17770 0))(
  ( (ElementMatch!17770 (c!1322953 C!35810)) (Concat!26615 (regOne!36052 Regex!17770) (regTwo!36052 Regex!17770)) (EmptyExpr!17770) (Star!17770 (reg!18099 Regex!17770)) (EmptyLang!17770) (Union!17770 (regOne!36053 Regex!17770) (regTwo!36053 Regex!17770)) )
))
(declare-fun r!11554 () Regex!17770)

(declare-fun validRegex!9045 (Regex!17770) Bool)

(assert (=> start!689966 (= res!2895330 (validRegex!9045 r!11554))))

(assert (=> start!689966 e!4261455))

(assert (=> start!689966 e!4261459))

(declare-datatypes ((List!68733 0))(
  ( (Nil!68609) (Cons!68609 (h!75057 Regex!17770) (t!382518 List!68733)) )
))
(declare-datatypes ((Context!13532 0))(
  ( (Context!13533 (exprs!7266 List!68733)) )
))
(declare-fun c!9994 () Context!13532)

(declare-fun e!4261458 () Bool)

(declare-fun inv!87291 (Context!13532) Bool)

(assert (=> start!689966 (and (inv!87291 c!9994) e!4261458)))

(declare-fun tp_is_empty!44773 () Bool)

(assert (=> start!689966 tp_is_empty!44773))

(declare-fun auxCtx!45 () Context!13532)

(declare-fun e!4261456 () Bool)

(assert (=> start!689966 (and (inv!87291 auxCtx!45) e!4261456)))

(declare-fun b!7088614 () Bool)

(declare-fun e!4261454 () Bool)

(declare-fun lambda!429475 () Int)

(declare-fun forall!16712 (List!68733 Int) Bool)

(assert (=> b!7088614 (= e!4261454 (forall!16712 (exprs!7266 c!9994) lambda!429475))))

(declare-fun b!7088615 () Bool)

(declare-fun tp!1946801 () Bool)

(assert (=> b!7088615 (= e!4261456 tp!1946801)))

(declare-fun b!7088616 () Bool)

(declare-fun e!4261457 () Bool)

(assert (=> b!7088616 (= e!4261457 (not e!4261454))))

(declare-fun res!2895329 () Bool)

(assert (=> b!7088616 (=> res!2895329 e!4261454)))

(declare-fun a!1901 () C!35810)

(declare-fun lt!2555329 () (Set Context!13532))

(declare-fun appendTo!859 ((Set Context!13532) Context!13532) (Set Context!13532))

(declare-fun derivationStepZipperDown!2349 (Regex!17770 Context!13532 C!35810) (Set Context!13532))

(assert (=> b!7088616 (= res!2895329 (not (= lt!2555329 (appendTo!859 (derivationStepZipperDown!2349 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162239 0))(
  ( (Unit!162240) )
))
(declare-fun lt!2555320 () Unit!162239)

(declare-fun lemmaConcatPreservesForall!1073 (List!68733 List!68733 Int) Unit!162239)

(assert (=> b!7088616 (= lt!2555320 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(declare-fun lt!2555324 () (Set Context!13532))

(declare-fun lambda!429474 () Int)

(declare-fun lt!2555328 () (Set Context!13532))

(declare-fun map!16124 ((Set Context!13532) Int) (Set Context!13532))

(assert (=> b!7088616 (= (set.union (map!16124 lt!2555324 lambda!429474) (map!16124 lt!2555328 lambda!429474)) (map!16124 (set.union lt!2555324 lt!2555328) lambda!429474))))

(declare-fun lt!2555326 () Unit!162239)

(declare-fun lemmaMapAssociative!7 ((Set Context!13532) (Set Context!13532) Int) Unit!162239)

(assert (=> b!7088616 (= lt!2555326 (lemmaMapAssociative!7 lt!2555324 lt!2555328 lambda!429474))))

(declare-fun lt!2555322 () (Set Context!13532))

(assert (=> b!7088616 (= lt!2555322 (appendTo!859 lt!2555328 auxCtx!45))))

(assert (=> b!7088616 (= lt!2555328 (derivationStepZipperDown!2349 (regTwo!36053 r!11554) c!9994 a!1901))))

(declare-fun lt!2555323 () Unit!162239)

(assert (=> b!7088616 (= lt!2555323 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(declare-fun lt!2555321 () Unit!162239)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!167 (Context!13532 Regex!17770 C!35810 Context!13532) Unit!162239)

(assert (=> b!7088616 (= lt!2555321 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!167 c!9994 (regTwo!36053 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2555325 () (Set Context!13532))

(assert (=> b!7088616 (= lt!2555325 (appendTo!859 lt!2555324 auxCtx!45))))

(assert (=> b!7088616 (= lt!2555324 (derivationStepZipperDown!2349 (regOne!36053 r!11554) c!9994 a!1901))))

(declare-fun lt!2555332 () Unit!162239)

(assert (=> b!7088616 (= lt!2555332 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(declare-fun lt!2555333 () Unit!162239)

(assert (=> b!7088616 (= lt!2555333 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!167 c!9994 (regOne!36053 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7088617 () Bool)

(declare-fun tp!1946802 () Bool)

(assert (=> b!7088617 (= e!4261458 tp!1946802)))

(declare-fun b!7088618 () Bool)

(declare-fun e!4261453 () Bool)

(assert (=> b!7088618 (= e!4261453 e!4261457)))

(declare-fun res!2895332 () Bool)

(assert (=> b!7088618 (=> (not res!2895332) (not e!4261457))))

(assert (=> b!7088618 (= res!2895332 (= lt!2555329 (set.union lt!2555325 lt!2555322)))))

(declare-fun lt!2555327 () Context!13532)

(assert (=> b!7088618 (= lt!2555329 (derivationStepZipperDown!2349 r!11554 lt!2555327 a!1901))))

(assert (=> b!7088618 (= lt!2555322 (derivationStepZipperDown!2349 (regTwo!36053 r!11554) lt!2555327 a!1901))))

(assert (=> b!7088618 (= lt!2555325 (derivationStepZipperDown!2349 (regOne!36053 r!11554) lt!2555327 a!1901))))

(declare-fun ++!15943 (List!68733 List!68733) List!68733)

(assert (=> b!7088618 (= lt!2555327 (Context!13533 (++!15943 (exprs!7266 c!9994) (exprs!7266 auxCtx!45))))))

(declare-fun lt!2555330 () Unit!162239)

(assert (=> b!7088618 (= lt!2555330 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(declare-fun lt!2555319 () Unit!162239)

(assert (=> b!7088618 (= lt!2555319 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(declare-fun lt!2555331 () Unit!162239)

(assert (=> b!7088618 (= lt!2555331 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(assert (=> b!7088619 (= e!4261455 e!4261453)))

(declare-fun res!2895331 () Bool)

(assert (=> b!7088619 (=> (not res!2895331) (not e!4261453))))

(assert (=> b!7088619 (= res!2895331 (and (or (not (is-ElementMatch!17770 r!11554)) (not (= (c!1322953 r!11554) a!1901))) (is-Union!17770 r!11554)))))

(declare-fun b!7088620 () Bool)

(assert (=> b!7088620 (= e!4261459 tp_is_empty!44773)))

(assert (= (and start!689966 res!2895330) b!7088619))

(assert (= (and b!7088619 res!2895331) b!7088618))

(assert (= (and b!7088618 res!2895332) b!7088616))

(assert (= (and b!7088616 (not res!2895329)) b!7088614))

(assert (= (and start!689966 (is-ElementMatch!17770 r!11554)) b!7088620))

(assert (= (and start!689966 (is-Concat!26615 r!11554)) b!7088611))

(assert (= (and start!689966 (is-Star!17770 r!11554)) b!7088613))

(assert (= (and start!689966 (is-Union!17770 r!11554)) b!7088612))

(assert (= start!689966 b!7088617))

(assert (= start!689966 b!7088615))

(declare-fun m!7818552 () Bool)

(assert (=> start!689966 m!7818552))

(declare-fun m!7818554 () Bool)

(assert (=> start!689966 m!7818554))

(declare-fun m!7818556 () Bool)

(assert (=> start!689966 m!7818556))

(declare-fun m!7818558 () Bool)

(assert (=> b!7088614 m!7818558))

(declare-fun m!7818560 () Bool)

(assert (=> b!7088616 m!7818560))

(declare-fun m!7818562 () Bool)

(assert (=> b!7088616 m!7818562))

(declare-fun m!7818564 () Bool)

(assert (=> b!7088616 m!7818564))

(declare-fun m!7818566 () Bool)

(assert (=> b!7088616 m!7818566))

(declare-fun m!7818568 () Bool)

(assert (=> b!7088616 m!7818568))

(declare-fun m!7818570 () Bool)

(assert (=> b!7088616 m!7818570))

(declare-fun m!7818572 () Bool)

(assert (=> b!7088616 m!7818572))

(declare-fun m!7818574 () Bool)

(assert (=> b!7088616 m!7818574))

(declare-fun m!7818576 () Bool)

(assert (=> b!7088616 m!7818576))

(declare-fun m!7818578 () Bool)

(assert (=> b!7088616 m!7818578))

(declare-fun m!7818580 () Bool)

(assert (=> b!7088616 m!7818580))

(declare-fun m!7818582 () Bool)

(assert (=> b!7088616 m!7818582))

(assert (=> b!7088616 m!7818564))

(declare-fun m!7818584 () Bool)

(assert (=> b!7088616 m!7818584))

(assert (=> b!7088616 m!7818564))

(assert (=> b!7088616 m!7818580))

(assert (=> b!7088618 m!7818564))

(declare-fun m!7818586 () Bool)

(assert (=> b!7088618 m!7818586))

(assert (=> b!7088618 m!7818564))

(assert (=> b!7088618 m!7818564))

(declare-fun m!7818588 () Bool)

(assert (=> b!7088618 m!7818588))

(declare-fun m!7818590 () Bool)

(assert (=> b!7088618 m!7818590))

(declare-fun m!7818592 () Bool)

(assert (=> b!7088618 m!7818592))

(push 1)

(assert (not b!7088611))

(assert (not b!7088613))

(assert (not b!7088615))

(assert (not b!7088614))

(assert tp_is_empty!44773)

(assert (not b!7088617))

(assert (not start!689966))

(assert (not b!7088612))

(assert (not b!7088618))

(assert (not b!7088616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7088673 () Bool)

(declare-fun e!4261499 () Bool)

(declare-fun call!644408 () Bool)

(assert (=> b!7088673 (= e!4261499 call!644408)))

(declare-fun b!7088674 () Bool)

(declare-fun res!2895361 () Bool)

(declare-fun e!4261496 () Bool)

(assert (=> b!7088674 (=> (not res!2895361) (not e!4261496))))

(assert (=> b!7088674 (= res!2895361 call!644408)))

(declare-fun e!4261495 () Bool)

(assert (=> b!7088674 (= e!4261495 e!4261496)))

(declare-fun c!1322959 () Bool)

(declare-fun bm!644402 () Bool)

(declare-fun c!1322960 () Bool)

(declare-fun call!644406 () Bool)

(assert (=> bm!644402 (= call!644406 (validRegex!9045 (ite c!1322960 (reg!18099 r!11554) (ite c!1322959 (regTwo!36053 r!11554) (regOne!36052 r!11554)))))))

(declare-fun b!7088675 () Bool)

(declare-fun e!4261498 () Bool)

(assert (=> b!7088675 (= e!4261498 call!644406)))

(declare-fun b!7088676 () Bool)

(declare-fun e!4261497 () Bool)

(assert (=> b!7088676 (= e!4261497 e!4261499)))

(declare-fun res!2895360 () Bool)

(assert (=> b!7088676 (=> (not res!2895360) (not e!4261499))))

(declare-fun call!644407 () Bool)

(assert (=> b!7088676 (= res!2895360 call!644407)))

(declare-fun bm!644401 () Bool)

(assert (=> bm!644401 (= call!644408 (validRegex!9045 (ite c!1322959 (regOne!36053 r!11554) (regTwo!36052 r!11554))))))

(declare-fun d!2216459 () Bool)

(declare-fun res!2895357 () Bool)

(declare-fun e!4261501 () Bool)

(assert (=> d!2216459 (=> res!2895357 e!4261501)))

(assert (=> d!2216459 (= res!2895357 (is-ElementMatch!17770 r!11554))))

(assert (=> d!2216459 (= (validRegex!9045 r!11554) e!4261501)))

(declare-fun b!7088677 () Bool)

(assert (=> b!7088677 (= e!4261496 call!644407)))

(declare-fun bm!644403 () Bool)

(assert (=> bm!644403 (= call!644407 call!644406)))

(declare-fun b!7088678 () Bool)

(declare-fun e!4261500 () Bool)

(assert (=> b!7088678 (= e!4261501 e!4261500)))

(assert (=> b!7088678 (= c!1322960 (is-Star!17770 r!11554))))

(declare-fun b!7088679 () Bool)

(assert (=> b!7088679 (= e!4261500 e!4261498)))

(declare-fun res!2895359 () Bool)

(declare-fun nullable!7412 (Regex!17770) Bool)

(assert (=> b!7088679 (= res!2895359 (not (nullable!7412 (reg!18099 r!11554))))))

(assert (=> b!7088679 (=> (not res!2895359) (not e!4261498))))

(declare-fun b!7088680 () Bool)

(assert (=> b!7088680 (= e!4261500 e!4261495)))

(assert (=> b!7088680 (= c!1322959 (is-Union!17770 r!11554))))

(declare-fun b!7088681 () Bool)

(declare-fun res!2895358 () Bool)

(assert (=> b!7088681 (=> res!2895358 e!4261497)))

(assert (=> b!7088681 (= res!2895358 (not (is-Concat!26615 r!11554)))))

(assert (=> b!7088681 (= e!4261495 e!4261497)))

(assert (= (and d!2216459 (not res!2895357)) b!7088678))

(assert (= (and b!7088678 c!1322960) b!7088679))

(assert (= (and b!7088678 (not c!1322960)) b!7088680))

(assert (= (and b!7088679 res!2895359) b!7088675))

(assert (= (and b!7088680 c!1322959) b!7088674))

(assert (= (and b!7088680 (not c!1322959)) b!7088681))

(assert (= (and b!7088674 res!2895361) b!7088677))

(assert (= (and b!7088681 (not res!2895358)) b!7088676))

(assert (= (and b!7088676 res!2895360) b!7088673))

(assert (= (or b!7088674 b!7088673) bm!644401))

(assert (= (or b!7088677 b!7088676) bm!644403))

(assert (= (or b!7088675 bm!644403) bm!644402))

(declare-fun m!7818636 () Bool)

(assert (=> bm!644402 m!7818636))

(declare-fun m!7818638 () Bool)

(assert (=> bm!644401 m!7818638))

(declare-fun m!7818640 () Bool)

(assert (=> b!7088679 m!7818640))

(assert (=> start!689966 d!2216459))

(declare-fun bs!1883209 () Bool)

(declare-fun d!2216461 () Bool)

(assert (= bs!1883209 (and d!2216461 b!7088618)))

(declare-fun lambda!429498 () Int)

(assert (=> bs!1883209 (= lambda!429498 lambda!429475)))

(assert (=> d!2216461 (= (inv!87291 c!9994) (forall!16712 (exprs!7266 c!9994) lambda!429498))))

(declare-fun bs!1883210 () Bool)

(assert (= bs!1883210 d!2216461))

(declare-fun m!7818642 () Bool)

(assert (=> bs!1883210 m!7818642))

(assert (=> start!689966 d!2216461))

(declare-fun bs!1883211 () Bool)

(declare-fun d!2216463 () Bool)

(assert (= bs!1883211 (and d!2216463 b!7088618)))

(declare-fun lambda!429499 () Int)

(assert (=> bs!1883211 (= lambda!429499 lambda!429475)))

(declare-fun bs!1883212 () Bool)

(assert (= bs!1883212 (and d!2216463 d!2216461)))

(assert (=> bs!1883212 (= lambda!429499 lambda!429498)))

(assert (=> d!2216463 (= (inv!87291 auxCtx!45) (forall!16712 (exprs!7266 auxCtx!45) lambda!429499))))

(declare-fun bs!1883213 () Bool)

(assert (= bs!1883213 d!2216463))

(declare-fun m!7818644 () Bool)

(assert (=> bs!1883213 m!7818644))

(assert (=> start!689966 d!2216463))

(declare-fun bs!1883214 () Bool)

(declare-fun d!2216465 () Bool)

(assert (= bs!1883214 (and d!2216465 b!7088618)))

(declare-fun lambda!429502 () Int)

(assert (=> bs!1883214 (= lambda!429502 lambda!429475)))

(declare-fun bs!1883215 () Bool)

(assert (= bs!1883215 (and d!2216465 d!2216461)))

(assert (=> bs!1883215 (= lambda!429502 lambda!429498)))

(declare-fun bs!1883216 () Bool)

(assert (= bs!1883216 (and d!2216465 d!2216463)))

(assert (=> bs!1883216 (= lambda!429502 lambda!429499)))

(assert (=> d!2216465 (= (derivationStepZipperDown!2349 (regOne!36053 r!11554) (Context!13533 (++!15943 (exprs!7266 c!9994) (exprs!7266 auxCtx!45))) a!1901) (appendTo!859 (derivationStepZipperDown!2349 (regOne!36053 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555386 () Unit!162239)

(assert (=> d!2216465 (= lt!2555386 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429502))))

(declare-fun lt!2555385 () Unit!162239)

(declare-fun choose!54642 (Context!13532 Regex!17770 C!35810 Context!13532) Unit!162239)

(assert (=> d!2216465 (= lt!2555385 (choose!54642 c!9994 (regOne!36053 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216465 (validRegex!9045 (regOne!36053 r!11554))))

(assert (=> d!2216465 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!167 c!9994 (regOne!36053 r!11554) a!1901 auxCtx!45) lt!2555385)))

(declare-fun bs!1883217 () Bool)

(assert (= bs!1883217 d!2216465))

(declare-fun m!7818646 () Bool)

(assert (=> bs!1883217 m!7818646))

(declare-fun m!7818648 () Bool)

(assert (=> bs!1883217 m!7818648))

(assert (=> bs!1883217 m!7818568))

(declare-fun m!7818650 () Bool)

(assert (=> bs!1883217 m!7818650))

(declare-fun m!7818652 () Bool)

(assert (=> bs!1883217 m!7818652))

(assert (=> bs!1883217 m!7818592))

(declare-fun m!7818654 () Bool)

(assert (=> bs!1883217 m!7818654))

(assert (=> bs!1883217 m!7818568))

(assert (=> b!7088616 d!2216465))

(declare-fun d!2216469 () Bool)

(assert (=> d!2216469 (= (set.union (map!16124 lt!2555324 lambda!429474) (map!16124 lt!2555328 lambda!429474)) (map!16124 (set.union lt!2555324 lt!2555328) lambda!429474))))

(declare-fun lt!2555389 () Unit!162239)

(declare-fun choose!54643 ((Set Context!13532) (Set Context!13532) Int) Unit!162239)

(assert (=> d!2216469 (= lt!2555389 (choose!54643 lt!2555324 lt!2555328 lambda!429474))))

(assert (=> d!2216469 (= (lemmaMapAssociative!7 lt!2555324 lt!2555328 lambda!429474) lt!2555389)))

(declare-fun bs!1883218 () Bool)

(assert (= bs!1883218 d!2216469))

(assert (=> bs!1883218 m!7818574))

(assert (=> bs!1883218 m!7818566))

(assert (=> bs!1883218 m!7818584))

(declare-fun m!7818660 () Bool)

(assert (=> bs!1883218 m!7818660))

(assert (=> b!7088616 d!2216469))

(declare-fun bs!1883219 () Bool)

(declare-fun d!2216473 () Bool)

(assert (= bs!1883219 (and d!2216473 b!7088619)))

(declare-fun lambda!429507 () Int)

(assert (=> bs!1883219 (= lambda!429507 lambda!429474)))

(assert (=> d!2216473 true))

(assert (=> d!2216473 (= (appendTo!859 lt!2555328 auxCtx!45) (map!16124 lt!2555328 lambda!429507))))

(declare-fun bs!1883220 () Bool)

(assert (= bs!1883220 d!2216473))

(declare-fun m!7818662 () Bool)

(assert (=> bs!1883220 m!7818662))

(assert (=> b!7088616 d!2216473))

(declare-fun d!2216475 () Bool)

(declare-fun choose!54644 ((Set Context!13532) Int) (Set Context!13532))

(assert (=> d!2216475 (= (map!16124 lt!2555324 lambda!429474) (choose!54644 lt!2555324 lambda!429474))))

(declare-fun bs!1883221 () Bool)

(assert (= bs!1883221 d!2216475))

(declare-fun m!7818664 () Bool)

(assert (=> bs!1883221 m!7818664))

(assert (=> b!7088616 d!2216475))

(declare-fun bs!1883222 () Bool)

(declare-fun d!2216477 () Bool)

(assert (= bs!1883222 (and d!2216477 b!7088619)))

(declare-fun lambda!429508 () Int)

(assert (=> bs!1883222 (= lambda!429508 lambda!429474)))

(declare-fun bs!1883223 () Bool)

(assert (= bs!1883223 (and d!2216477 d!2216473)))

(assert (=> bs!1883223 (= lambda!429508 lambda!429507)))

(assert (=> d!2216477 true))

(assert (=> d!2216477 (= (appendTo!859 lt!2555324 auxCtx!45) (map!16124 lt!2555324 lambda!429508))))

(declare-fun bs!1883224 () Bool)

(assert (= bs!1883224 d!2216477))

(declare-fun m!7818666 () Bool)

(assert (=> bs!1883224 m!7818666))

(assert (=> b!7088616 d!2216477))

(declare-fun bm!644416 () Bool)

(declare-fun call!644422 () List!68733)

(declare-fun call!644426 () List!68733)

(assert (=> bm!644416 (= call!644422 call!644426)))

(declare-fun bm!644417 () Bool)

(declare-fun call!644425 () (Set Context!13532))

(declare-fun call!644424 () (Set Context!13532))

(assert (=> bm!644417 (= call!644425 call!644424)))

(declare-fun b!7088711 () Bool)

(declare-fun e!4261525 () (Set Context!13532))

(declare-fun e!4261520 () (Set Context!13532))

(assert (=> b!7088711 (= e!4261525 e!4261520)))

(declare-fun c!1322978 () Bool)

(assert (=> b!7088711 (= c!1322978 (is-Union!17770 r!11554))))

(declare-fun b!7088712 () Bool)

(declare-fun e!4261523 () (Set Context!13532))

(assert (=> b!7088712 (= e!4261523 (as set.empty (Set Context!13532)))))

(declare-fun b!7088713 () Bool)

(declare-fun c!1322977 () Bool)

(assert (=> b!7088713 (= c!1322977 (is-Star!17770 r!11554))))

(declare-fun e!4261524 () (Set Context!13532))

(assert (=> b!7088713 (= e!4261524 e!4261523)))

(declare-fun b!7088714 () Bool)

(declare-fun call!644423 () (Set Context!13532))

(assert (=> b!7088714 (= e!4261524 call!644423)))

(declare-fun b!7088715 () Bool)

(declare-fun call!644421 () (Set Context!13532))

(assert (=> b!7088715 (= e!4261520 (set.union call!644421 call!644424))))

(declare-fun bm!644418 () Bool)

(assert (=> bm!644418 (= call!644423 call!644425)))

(declare-fun b!7088716 () Bool)

(declare-fun e!4261521 () (Set Context!13532))

(assert (=> b!7088716 (= e!4261521 e!4261524)))

(declare-fun c!1322975 () Bool)

(assert (=> b!7088716 (= c!1322975 (is-Concat!26615 r!11554))))

(declare-fun bm!644419 () Bool)

(declare-fun c!1322976 () Bool)

(declare-fun $colon$colon!2695 (List!68733 Regex!17770) List!68733)

(assert (=> bm!644419 (= call!644426 ($colon$colon!2695 (exprs!7266 c!9994) (ite (or c!1322976 c!1322975) (regTwo!36052 r!11554) r!11554)))))

(declare-fun b!7088717 () Bool)

(assert (=> b!7088717 (= e!4261523 call!644423)))

(declare-fun bm!644420 () Bool)

(assert (=> bm!644420 (= call!644421 (derivationStepZipperDown!2349 (ite c!1322978 (regOne!36053 r!11554) (regOne!36052 r!11554)) (ite c!1322978 c!9994 (Context!13533 call!644426)) a!1901))))

(declare-fun b!7088718 () Bool)

(assert (=> b!7088718 (= e!4261525 (set.insert c!9994 (as set.empty (Set Context!13532))))))

(declare-fun b!7088719 () Bool)

(declare-fun e!4261522 () Bool)

(assert (=> b!7088719 (= c!1322976 e!4261522)))

(declare-fun res!2895370 () Bool)

(assert (=> b!7088719 (=> (not res!2895370) (not e!4261522))))

(assert (=> b!7088719 (= res!2895370 (is-Concat!26615 r!11554))))

(assert (=> b!7088719 (= e!4261520 e!4261521)))

(declare-fun b!7088710 () Bool)

(assert (=> b!7088710 (= e!4261521 (set.union call!644421 call!644425))))

(declare-fun d!2216479 () Bool)

(declare-fun c!1322974 () Bool)

(assert (=> d!2216479 (= c!1322974 (and (is-ElementMatch!17770 r!11554) (= (c!1322953 r!11554) a!1901)))))

(assert (=> d!2216479 (= (derivationStepZipperDown!2349 r!11554 c!9994 a!1901) e!4261525)))

(declare-fun bm!644421 () Bool)

(assert (=> bm!644421 (= call!644424 (derivationStepZipperDown!2349 (ite c!1322978 (regTwo!36053 r!11554) (ite c!1322976 (regTwo!36052 r!11554) (ite c!1322975 (regOne!36052 r!11554) (reg!18099 r!11554)))) (ite (or c!1322978 c!1322976) c!9994 (Context!13533 call!644422)) a!1901))))

(declare-fun b!7088720 () Bool)

(assert (=> b!7088720 (= e!4261522 (nullable!7412 (regOne!36052 r!11554)))))

(assert (= (and d!2216479 c!1322974) b!7088718))

(assert (= (and d!2216479 (not c!1322974)) b!7088711))

(assert (= (and b!7088711 c!1322978) b!7088715))

(assert (= (and b!7088711 (not c!1322978)) b!7088719))

(assert (= (and b!7088719 res!2895370) b!7088720))

(assert (= (and b!7088719 c!1322976) b!7088710))

(assert (= (and b!7088719 (not c!1322976)) b!7088716))

(assert (= (and b!7088716 c!1322975) b!7088714))

(assert (= (and b!7088716 (not c!1322975)) b!7088713))

(assert (= (and b!7088713 c!1322977) b!7088717))

(assert (= (and b!7088713 (not c!1322977)) b!7088712))

(assert (= (or b!7088714 b!7088717) bm!644416))

(assert (= (or b!7088714 b!7088717) bm!644418))

(assert (= (or b!7088710 bm!644418) bm!644417))

(assert (= (or b!7088710 bm!644416) bm!644419))

(assert (= (or b!7088715 bm!644417) bm!644421))

(assert (= (or b!7088715 b!7088710) bm!644420))

(declare-fun m!7818678 () Bool)

(assert (=> bm!644421 m!7818678))

(declare-fun m!7818680 () Bool)

(assert (=> bm!644420 m!7818680))

(declare-fun m!7818682 () Bool)

(assert (=> b!7088720 m!7818682))

(declare-fun m!7818684 () Bool)

(assert (=> b!7088718 m!7818684))

(declare-fun m!7818686 () Bool)

(assert (=> bm!644419 m!7818686))

(assert (=> b!7088616 d!2216479))

(declare-fun d!2216483 () Bool)

(assert (=> d!2216483 (= (map!16124 lt!2555328 lambda!429474) (choose!54644 lt!2555328 lambda!429474))))

(declare-fun bs!1883227 () Bool)

(assert (= bs!1883227 d!2216483))

(declare-fun m!7818688 () Bool)

(assert (=> bs!1883227 m!7818688))

(assert (=> b!7088616 d!2216483))

(declare-fun bs!1883228 () Bool)

(declare-fun d!2216485 () Bool)

(assert (= bs!1883228 (and d!2216485 b!7088618)))

(declare-fun lambda!429512 () Int)

(assert (=> bs!1883228 (= lambda!429512 lambda!429475)))

(declare-fun bs!1883229 () Bool)

(assert (= bs!1883229 (and d!2216485 d!2216461)))

(assert (=> bs!1883229 (= lambda!429512 lambda!429498)))

(declare-fun bs!1883230 () Bool)

(assert (= bs!1883230 (and d!2216485 d!2216463)))

(assert (=> bs!1883230 (= lambda!429512 lambda!429499)))

(declare-fun bs!1883231 () Bool)

(assert (= bs!1883231 (and d!2216485 d!2216465)))

(assert (=> bs!1883231 (= lambda!429512 lambda!429502)))

(assert (=> d!2216485 (= (derivationStepZipperDown!2349 (regTwo!36053 r!11554) (Context!13533 (++!15943 (exprs!7266 c!9994) (exprs!7266 auxCtx!45))) a!1901) (appendTo!859 (derivationStepZipperDown!2349 (regTwo!36053 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555399 () Unit!162239)

(assert (=> d!2216485 (= lt!2555399 (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429512))))

(declare-fun lt!2555398 () Unit!162239)

(assert (=> d!2216485 (= lt!2555398 (choose!54642 c!9994 (regTwo!36053 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216485 (validRegex!9045 (regTwo!36053 r!11554))))

(assert (=> d!2216485 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!167 c!9994 (regTwo!36053 r!11554) a!1901 auxCtx!45) lt!2555398)))

(declare-fun bs!1883232 () Bool)

(assert (= bs!1883232 d!2216485))

(declare-fun m!7818690 () Bool)

(assert (=> bs!1883232 m!7818690))

(declare-fun m!7818692 () Bool)

(assert (=> bs!1883232 m!7818692))

(assert (=> bs!1883232 m!7818560))

(declare-fun m!7818694 () Bool)

(assert (=> bs!1883232 m!7818694))

(declare-fun m!7818696 () Bool)

(assert (=> bs!1883232 m!7818696))

(assert (=> bs!1883232 m!7818592))

(declare-fun m!7818698 () Bool)

(assert (=> bs!1883232 m!7818698))

(assert (=> bs!1883232 m!7818560))

(assert (=> b!7088616 d!2216485))

(declare-fun d!2216487 () Bool)

(assert (=> d!2216487 (= (map!16124 (set.union lt!2555324 lt!2555328) lambda!429474) (choose!54644 (set.union lt!2555324 lt!2555328) lambda!429474))))

(declare-fun bs!1883233 () Bool)

(assert (= bs!1883233 d!2216487))

(declare-fun m!7818700 () Bool)

(assert (=> bs!1883233 m!7818700))

(assert (=> b!7088616 d!2216487))

(declare-fun bm!644422 () Bool)

(declare-fun call!644428 () List!68733)

(declare-fun call!644432 () List!68733)

(assert (=> bm!644422 (= call!644428 call!644432)))

(declare-fun bm!644423 () Bool)

(declare-fun call!644431 () (Set Context!13532))

(declare-fun call!644430 () (Set Context!13532))

(assert (=> bm!644423 (= call!644431 call!644430)))

(declare-fun b!7088722 () Bool)

(declare-fun e!4261531 () (Set Context!13532))

(declare-fun e!4261526 () (Set Context!13532))

(assert (=> b!7088722 (= e!4261531 e!4261526)))

(declare-fun c!1322983 () Bool)

(assert (=> b!7088722 (= c!1322983 (is-Union!17770 (regOne!36053 r!11554)))))

(declare-fun b!7088723 () Bool)

(declare-fun e!4261529 () (Set Context!13532))

(assert (=> b!7088723 (= e!4261529 (as set.empty (Set Context!13532)))))

(declare-fun b!7088724 () Bool)

(declare-fun c!1322982 () Bool)

(assert (=> b!7088724 (= c!1322982 (is-Star!17770 (regOne!36053 r!11554)))))

(declare-fun e!4261530 () (Set Context!13532))

(assert (=> b!7088724 (= e!4261530 e!4261529)))

(declare-fun b!7088725 () Bool)

(declare-fun call!644429 () (Set Context!13532))

(assert (=> b!7088725 (= e!4261530 call!644429)))

(declare-fun b!7088726 () Bool)

(declare-fun call!644427 () (Set Context!13532))

(assert (=> b!7088726 (= e!4261526 (set.union call!644427 call!644430))))

(declare-fun bm!644424 () Bool)

(assert (=> bm!644424 (= call!644429 call!644431)))

(declare-fun b!7088727 () Bool)

(declare-fun e!4261527 () (Set Context!13532))

(assert (=> b!7088727 (= e!4261527 e!4261530)))

(declare-fun c!1322980 () Bool)

(assert (=> b!7088727 (= c!1322980 (is-Concat!26615 (regOne!36053 r!11554)))))

(declare-fun c!1322981 () Bool)

(declare-fun bm!644425 () Bool)

(assert (=> bm!644425 (= call!644432 ($colon$colon!2695 (exprs!7266 c!9994) (ite (or c!1322981 c!1322980) (regTwo!36052 (regOne!36053 r!11554)) (regOne!36053 r!11554))))))

(declare-fun b!7088728 () Bool)

(assert (=> b!7088728 (= e!4261529 call!644429)))

(declare-fun bm!644426 () Bool)

(assert (=> bm!644426 (= call!644427 (derivationStepZipperDown!2349 (ite c!1322983 (regOne!36053 (regOne!36053 r!11554)) (regOne!36052 (regOne!36053 r!11554))) (ite c!1322983 c!9994 (Context!13533 call!644432)) a!1901))))

(declare-fun b!7088729 () Bool)

(assert (=> b!7088729 (= e!4261531 (set.insert c!9994 (as set.empty (Set Context!13532))))))

(declare-fun b!7088730 () Bool)

(declare-fun e!4261528 () Bool)

(assert (=> b!7088730 (= c!1322981 e!4261528)))

(declare-fun res!2895371 () Bool)

(assert (=> b!7088730 (=> (not res!2895371) (not e!4261528))))

(assert (=> b!7088730 (= res!2895371 (is-Concat!26615 (regOne!36053 r!11554)))))

(assert (=> b!7088730 (= e!4261526 e!4261527)))

(declare-fun b!7088721 () Bool)

(assert (=> b!7088721 (= e!4261527 (set.union call!644427 call!644431))))

(declare-fun d!2216489 () Bool)

(declare-fun c!1322979 () Bool)

(assert (=> d!2216489 (= c!1322979 (and (is-ElementMatch!17770 (regOne!36053 r!11554)) (= (c!1322953 (regOne!36053 r!11554)) a!1901)))))

(assert (=> d!2216489 (= (derivationStepZipperDown!2349 (regOne!36053 r!11554) c!9994 a!1901) e!4261531)))

(declare-fun bm!644427 () Bool)

(assert (=> bm!644427 (= call!644430 (derivationStepZipperDown!2349 (ite c!1322983 (regTwo!36053 (regOne!36053 r!11554)) (ite c!1322981 (regTwo!36052 (regOne!36053 r!11554)) (ite c!1322980 (regOne!36052 (regOne!36053 r!11554)) (reg!18099 (regOne!36053 r!11554))))) (ite (or c!1322983 c!1322981) c!9994 (Context!13533 call!644428)) a!1901))))

(declare-fun b!7088731 () Bool)

(assert (=> b!7088731 (= e!4261528 (nullable!7412 (regOne!36052 (regOne!36053 r!11554))))))

(assert (= (and d!2216489 c!1322979) b!7088729))

(assert (= (and d!2216489 (not c!1322979)) b!7088722))

(assert (= (and b!7088722 c!1322983) b!7088726))

(assert (= (and b!7088722 (not c!1322983)) b!7088730))

(assert (= (and b!7088730 res!2895371) b!7088731))

(assert (= (and b!7088730 c!1322981) b!7088721))

(assert (= (and b!7088730 (not c!1322981)) b!7088727))

(assert (= (and b!7088727 c!1322980) b!7088725))

(assert (= (and b!7088727 (not c!1322980)) b!7088724))

(assert (= (and b!7088724 c!1322982) b!7088728))

(assert (= (and b!7088724 (not c!1322982)) b!7088723))

(assert (= (or b!7088725 b!7088728) bm!644422))

(assert (= (or b!7088725 b!7088728) bm!644424))

(assert (= (or b!7088721 bm!644424) bm!644423))

(assert (= (or b!7088721 bm!644422) bm!644425))

(assert (= (or b!7088726 bm!644423) bm!644427))

(assert (= (or b!7088726 b!7088721) bm!644426))

(declare-fun m!7818702 () Bool)

(assert (=> bm!644427 m!7818702))

(declare-fun m!7818704 () Bool)

(assert (=> bm!644426 m!7818704))

(declare-fun m!7818706 () Bool)

(assert (=> b!7088731 m!7818706))

(assert (=> b!7088729 m!7818684))

(declare-fun m!7818708 () Bool)

(assert (=> bm!644425 m!7818708))

(assert (=> b!7088616 d!2216489))

(declare-fun d!2216491 () Bool)

(assert (=> d!2216491 (forall!16712 (++!15943 (exprs!7266 c!9994) (exprs!7266 auxCtx!45)) lambda!429475)))

(declare-fun lt!2555405 () Unit!162239)

(declare-fun choose!54645 (List!68733 List!68733 Int) Unit!162239)

(assert (=> d!2216491 (= lt!2555405 (choose!54645 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475))))

(assert (=> d!2216491 (forall!16712 (exprs!7266 c!9994) lambda!429475)))

(assert (=> d!2216491 (= (lemmaConcatPreservesForall!1073 (exprs!7266 c!9994) (exprs!7266 auxCtx!45) lambda!429475) lt!2555405)))

(declare-fun bs!1883235 () Bool)

(assert (= bs!1883235 d!2216491))

(assert (=> bs!1883235 m!7818592))

(assert (=> bs!1883235 m!7818592))

(declare-fun m!7818714 () Bool)

(assert (=> bs!1883235 m!7818714))

(declare-fun m!7818716 () Bool)

(assert (=> bs!1883235 m!7818716))

(assert (=> bs!1883235 m!7818558))

(assert (=> b!7088616 d!2216491))

(declare-fun bs!1883236 () Bool)

(declare-fun d!2216495 () Bool)

(assert (= bs!1883236 (and d!2216495 b!7088619)))

(declare-fun lambda!429513 () Int)

(assert (=> bs!1883236 (= lambda!429513 lambda!429474)))

(declare-fun bs!1883237 () Bool)

(assert (= bs!1883237 (and d!2216495 d!2216473)))

(assert (=> bs!1883237 (= lambda!429513 lambda!429507)))

(declare-fun bs!1883238 () Bool)

(assert (= bs!1883238 (and d!2216495 d!2216477)))

(assert (=> bs!1883238 (= lambda!429513 lambda!429508)))

(assert (=> d!2216495 true))

(assert (=> d!2216495 (= (appendTo!859 (derivationStepZipperDown!2349 r!11554 c!9994 a!1901) auxCtx!45) (map!16124 (derivationStepZipperDown!2349 r!11554 c!9994 a!1901) lambda!429513))))

(declare-fun bs!1883240 () Bool)

(assert (= bs!1883240 d!2216495))

(assert (=> bs!1883240 m!7818580))

(declare-fun m!7818720 () Bool)

(assert (=> bs!1883240 m!7818720))

(assert (=> b!7088616 d!2216495))

(declare-fun bm!644428 () Bool)

(declare-fun call!644434 () List!68733)

(declare-fun call!644438 () List!68733)

(assert (=> bm!644428 (= call!644434 call!644438)))

(declare-fun bm!644429 () Bool)

(declare-fun call!644437 () (Set Context!13532))

(declare-fun call!644436 () (Set Context!13532))

(assert (=> bm!644429 (= call!644437 call!644436)))

(declare-fun b!7088733 () Bool)

(declare-fun e!4261537 () (Set Context!13532))

(declare-fun e!4261532 () (Set Context!13532))

(assert (=> b!7088733 (= e!4261537 e!4261532)))

(declare-fun c!1322988 () Bool)

(assert (=> b!7088733 (= c!1322988 (is-Union!17770 (regTwo!36053 r!11554)))))

(declare-fun b!7088734 () Bool)

(declare-fun e!4261535 () (Set Context!13532))

(assert (=> b!7088734 (= e!4261535 (as set.empty (Set Context!13532)))))

(declare-fun b!7088735 () Bool)

(declare-fun c!1322987 () Bool)

(assert (=> b!7088735 (= c!1322987 (is-Star!17770 (regTwo!36053 r!11554)))))

(declare-fun e!4261536 () (Set Context!13532))

(assert (=> b!7088735 (= e!4261536 e!4261535)))

(declare-fun b!7088736 () Bool)

(declare-fun call!644435 () (Set Context!13532))

(assert (=> b!7088736 (= e!4261536 call!644435)))

(declare-fun b!7088737 () Bool)

(declare-fun call!644433 () (Set Context!13532))

(assert (=> b!7088737 (= e!4261532 (set.union call!644433 call!644436))))

(declare-fun bm!644430 () Bool)

(assert (=> bm!644430 (= call!644435 call!644437)))

(declare-fun b!7088738 () Bool)

(declare-fun e!4261533 () (Set Context!13532))

(assert (=> b!7088738 (= e!4261533 e!4261536)))

(declare-fun c!1322985 () Bool)

(assert (=> b!7088738 (= c!1322985 (is-Concat!26615 (regTwo!36053 r!11554)))))

(declare-fun c!1322986 () Bool)

(declare-fun bm!644431 () Bool)

(assert (=> bm!644431 (= call!644438 ($colon$colon!2695 (exprs!7266 c!9994) (ite (or c!1322986 c!1322985) (regTwo!36052 (regTwo!36053 r!11554)) (regTwo!36053 r!11554))))))

(declare-fun b!7088739 () Bool)

(assert (=> b!7088739 (= e!4261535 call!644435)))

(declare-fun bm!644432 () Bool)

(assert (=> bm!644432 (= call!644433 (derivationStepZipperDown!2349 (ite c!1322988 (regOne!36053 (regTwo!36053 r!11554)) (regOne!36052 (regTwo!36053 r!11554))) (ite c!1322988 c!9994 (Context!13533 call!644438)) a!1901))))

(declare-fun b!7088740 () Bool)

(assert (=> b!7088740 (= e!4261537 (set.insert c!9994 (as set.empty (Set Context!13532))))))

(declare-fun b!7088741 () Bool)

(declare-fun e!4261534 () Bool)

(assert (=> b!7088741 (= c!1322986 e!4261534)))

(declare-fun res!2895372 () Bool)

(assert (=> b!7088741 (=> (not res!2895372) (not e!4261534))))

(assert (=> b!7088741 (= res!2895372 (is-Concat!26615 (regTwo!36053 r!11554)))))

(assert (=> b!7088741 (= e!4261532 e!4261533)))

(declare-fun b!7088732 () Bool)

(assert (=> b!7088732 (= e!4261533 (set.union call!644433 call!644437))))

(declare-fun d!2216499 () Bool)

(declare-fun c!1322984 () Bool)

(assert (=> d!2216499 (= c!1322984 (and (is-ElementMatch!17770 (regTwo!36053 r!11554)) (= (c!1322953 (regTwo!36053 r!11554)) a!1901)))))

(assert (=> d!2216499 (= (derivationStepZipperDown!2349 (regTwo!36053 r!11554) c!9994 a!1901) e!4261537)))

(declare-fun bm!644433 () Bool)

(assert (=> bm!644433 (= call!644436 (derivationStepZipperDown!2349 (ite c!1322988 (regTwo!36053 (regTwo!36053 r!11554)) (ite c!1322986 (regTwo!36052 (regTwo!36053 r!11554)) (ite c!1322985 (regOne!36052 (regTwo!36053 r!11554)) (reg!18099 (regTwo!36053 r!11554))))) (ite (or c!1322988 c!1322986) c!9994 (Context!13533 call!644434)) a!1901))))

(declare-fun b!7088742 () Bool)

(assert (=> b!7088742 (= e!4261534 (nullable!7412 (regOne!36052 (regTwo!36053 r!11554))))))

(assert (= (and d!2216499 c!1322984) b!7088740))

(assert (= (and d!2216499 (not c!1322984)) b!7088733))

(assert (= (and b!7088733 c!1322988) b!7088737))

(assert (= (and b!7088733 (not c!1322988)) b!7088741))

(assert (= (and b!7088741 res!2895372) b!7088742))

(assert (= (and b!7088741 c!1322986) b!7088732))

(assert (= (and b!7088741 (not c!1322986)) b!7088738))

(assert (= (and b!7088738 c!1322985) b!7088736))

(assert (= (and b!7088738 (not c!1322985)) b!7088735))

(assert (= (and b!7088735 c!1322987) b!7088739))

(assert (= (and b!7088735 (not c!1322987)) b!7088734))

(assert (= (or b!7088736 b!7088739) bm!644428))

(assert (= (or b!7088736 b!7088739) bm!644430))

(assert (= (or b!7088732 bm!644430) bm!644429))

(assert (= (or b!7088732 bm!644428) bm!644431))

(assert (= (or b!7088737 bm!644429) bm!644433))

(assert (= (or b!7088737 b!7088732) bm!644432))

(declare-fun m!7818726 () Bool)

(assert (=> bm!644433 m!7818726))

(declare-fun m!7818728 () Bool)

(assert (=> bm!644432 m!7818728))

(declare-fun m!7818730 () Bool)

(assert (=> b!7088742 m!7818730))

(assert (=> b!7088740 m!7818684))

(declare-fun m!7818732 () Bool)

(assert (=> bm!644431 m!7818732))

(assert (=> b!7088616 d!2216499))

(declare-fun bm!644434 () Bool)

(declare-fun call!644440 () List!68733)

(declare-fun call!644444 () List!68733)

(assert (=> bm!644434 (= call!644440 call!644444)))

(declare-fun bm!644435 () Bool)

(declare-fun call!644443 () (Set Context!13532))

(declare-fun call!644442 () (Set Context!13532))

(assert (=> bm!644435 (= call!644443 call!644442)))

(declare-fun b!7088744 () Bool)

(declare-fun e!4261543 () (Set Context!13532))

(declare-fun e!4261538 () (Set Context!13532))

(assert (=> b!7088744 (= e!4261543 e!4261538)))

(declare-fun c!1322993 () Bool)

(assert (=> b!7088744 (= c!1322993 (is-Union!17770 r!11554))))

(declare-fun b!7088745 () Bool)

(declare-fun e!4261541 () (Set Context!13532))

(assert (=> b!7088745 (= e!4261541 (as set.empty (Set Context!13532)))))

(declare-fun b!7088746 () Bool)

(declare-fun c!1322992 () Bool)

(assert (=> b!7088746 (= c!1322992 (is-Star!17770 r!11554))))

(declare-fun e!4261542 () (Set Context!13532))

(assert (=> b!7088746 (= e!4261542 e!4261541)))

(declare-fun b!7088747 () Bool)

(declare-fun call!644441 () (Set Context!13532))

(assert (=> b!7088747 (= e!4261542 call!644441)))

(declare-fun b!7088748 () Bool)

(declare-fun call!644439 () (Set Context!13532))

(assert (=> b!7088748 (= e!4261538 (set.union call!644439 call!644442))))

(declare-fun bm!644436 () Bool)

(assert (=> bm!644436 (= call!644441 call!644443)))

(declare-fun b!7088749 () Bool)

(declare-fun e!4261539 () (Set Context!13532))

(assert (=> b!7088749 (= e!4261539 e!4261542)))

(declare-fun c!1322990 () Bool)

(assert (=> b!7088749 (= c!1322990 (is-Concat!26615 r!11554))))

(declare-fun c!1322991 () Bool)

(declare-fun bm!644437 () Bool)

(assert (=> bm!644437 (= call!644444 ($colon$colon!2695 (exprs!7266 lt!2555327) (ite (or c!1322991 c!1322990) (regTwo!36052 r!11554) r!11554)))))

(declare-fun b!7088750 () Bool)

(assert (=> b!7088750 (= e!4261541 call!644441)))

(declare-fun bm!644438 () Bool)

(assert (=> bm!644438 (= call!644439 (derivationStepZipperDown!2349 (ite c!1322993 (regOne!36053 r!11554) (regOne!36052 r!11554)) (ite c!1322993 lt!2555327 (Context!13533 call!644444)) a!1901))))

(declare-fun b!7088751 () Bool)

(assert (=> b!7088751 (= e!4261543 (set.insert lt!2555327 (as set.empty (Set Context!13532))))))

(declare-fun b!7088752 () Bool)

(declare-fun e!4261540 () Bool)

(assert (=> b!7088752 (= c!1322991 e!4261540)))

(declare-fun res!2895373 () Bool)

(assert (=> b!7088752 (=> (not res!2895373) (not e!4261540))))

(assert (=> b!7088752 (= res!2895373 (is-Concat!26615 r!11554))))

(assert (=> b!7088752 (= e!4261538 e!4261539)))

(declare-fun b!7088743 () Bool)

(assert (=> b!7088743 (= e!4261539 (set.union call!644439 call!644443))))

(declare-fun d!2216505 () Bool)

(declare-fun c!1322989 () Bool)

(assert (=> d!2216505 (= c!1322989 (and (is-ElementMatch!17770 r!11554) (= (c!1322953 r!11554) a!1901)))))

(assert (=> d!2216505 (= (derivationStepZipperDown!2349 r!11554 lt!2555327 a!1901) e!4261543)))

(declare-fun bm!644439 () Bool)

(assert (=> bm!644439 (= call!644442 (derivationStepZipperDown!2349 (ite c!1322993 (regTwo!36053 r!11554) (ite c!1322991 (regTwo!36052 r!11554) (ite c!1322990 (regOne!36052 r!11554) (reg!18099 r!11554)))) (ite (or c!1322993 c!1322991) lt!2555327 (Context!13533 call!644440)) a!1901))))

(declare-fun b!7088753 () Bool)

(assert (=> b!7088753 (= e!4261540 (nullable!7412 (regOne!36052 r!11554)))))

(assert (= (and d!2216505 c!1322989) b!7088751))

(assert (= (and d!2216505 (not c!1322989)) b!7088744))

(assert (= (and b!7088744 c!1322993) b!7088748))

(assert (= (and b!7088744 (not c!1322993)) b!7088752))

(assert (= (and b!7088752 res!2895373) b!7088753))

(assert (= (and b!7088752 c!1322991) b!7088743))

(assert (= (and b!7088752 (not c!1322991)) b!7088749))

(assert (= (and b!7088749 c!1322990) b!7088747))

(assert (= (and b!7088749 (not c!1322990)) b!7088746))

(assert (= (and b!7088746 c!1322992) b!7088750))

(assert (= (and b!7088746 (not c!1322992)) b!7088745))

(assert (= (or b!7088747 b!7088750) bm!644434))

(assert (= (or b!7088747 b!7088750) bm!644436))

(assert (= (or b!7088743 bm!644436) bm!644435))

(assert (= (or b!7088743 bm!644434) bm!644437))

(assert (= (or b!7088748 bm!644435) bm!644439))

(assert (= (or b!7088748 b!7088743) bm!644438))

(declare-fun m!7818734 () Bool)

(assert (=> bm!644439 m!7818734))

(declare-fun m!7818736 () Bool)

(assert (=> bm!644438 m!7818736))

(assert (=> b!7088753 m!7818682))

(declare-fun m!7818738 () Bool)

(assert (=> b!7088751 m!7818738))

(declare-fun m!7818740 () Bool)

(assert (=> bm!644437 m!7818740))

(assert (=> b!7088618 d!2216505))

(declare-fun bm!644440 () Bool)

(declare-fun call!644446 () List!68733)

(declare-fun call!644450 () List!68733)

(assert (=> bm!644440 (= call!644446 call!644450)))

(declare-fun bm!644441 () Bool)

(declare-fun call!644449 () (Set Context!13532))

(declare-fun call!644448 () (Set Context!13532))

(assert (=> bm!644441 (= call!644449 call!644448)))

(declare-fun b!7088755 () Bool)

(declare-fun e!4261549 () (Set Context!13532))

(declare-fun e!4261544 () (Set Context!13532))

(assert (=> b!7088755 (= e!4261549 e!4261544)))

(declare-fun c!1322998 () Bool)

(assert (=> b!7088755 (= c!1322998 (is-Union!17770 (regOne!36053 r!11554)))))

(declare-fun b!7088756 () Bool)

(declare-fun e!4261547 () (Set Context!13532))

(assert (=> b!7088756 (= e!4261547 (as set.empty (Set Context!13532)))))

(declare-fun b!7088757 () Bool)

(declare-fun c!1322997 () Bool)

(assert (=> b!7088757 (= c!1322997 (is-Star!17770 (regOne!36053 r!11554)))))

(declare-fun e!4261548 () (Set Context!13532))

(assert (=> b!7088757 (= e!4261548 e!4261547)))

(declare-fun b!7088758 () Bool)

(declare-fun call!644447 () (Set Context!13532))

(assert (=> b!7088758 (= e!4261548 call!644447)))

(declare-fun b!7088759 () Bool)

(declare-fun call!644445 () (Set Context!13532))

(assert (=> b!7088759 (= e!4261544 (set.union call!644445 call!644448))))

(declare-fun bm!644442 () Bool)

(assert (=> bm!644442 (= call!644447 call!644449)))

(declare-fun b!7088760 () Bool)

(declare-fun e!4261545 () (Set Context!13532))

(assert (=> b!7088760 (= e!4261545 e!4261548)))

(declare-fun c!1322995 () Bool)

(assert (=> b!7088760 (= c!1322995 (is-Concat!26615 (regOne!36053 r!11554)))))

(declare-fun c!1322996 () Bool)

(declare-fun bm!644443 () Bool)

(assert (=> bm!644443 (= call!644450 ($colon$colon!2695 (exprs!7266 lt!2555327) (ite (or c!1322996 c!1322995) (regTwo!36052 (regOne!36053 r!11554)) (regOne!36053 r!11554))))))

(declare-fun b!7088761 () Bool)

(assert (=> b!7088761 (= e!4261547 call!644447)))

(declare-fun bm!644444 () Bool)

(assert (=> bm!644444 (= call!644445 (derivationStepZipperDown!2349 (ite c!1322998 (regOne!36053 (regOne!36053 r!11554)) (regOne!36052 (regOne!36053 r!11554))) (ite c!1322998 lt!2555327 (Context!13533 call!644450)) a!1901))))

(declare-fun b!7088762 () Bool)

(assert (=> b!7088762 (= e!4261549 (set.insert lt!2555327 (as set.empty (Set Context!13532))))))

(declare-fun b!7088763 () Bool)

(declare-fun e!4261546 () Bool)

(assert (=> b!7088763 (= c!1322996 e!4261546)))

(declare-fun res!2895374 () Bool)

(assert (=> b!7088763 (=> (not res!2895374) (not e!4261546))))

(assert (=> b!7088763 (= res!2895374 (is-Concat!26615 (regOne!36053 r!11554)))))

(assert (=> b!7088763 (= e!4261544 e!4261545)))

(declare-fun b!7088754 () Bool)

(assert (=> b!7088754 (= e!4261545 (set.union call!644445 call!644449))))

(declare-fun d!2216507 () Bool)

(declare-fun c!1322994 () Bool)

(assert (=> d!2216507 (= c!1322994 (and (is-ElementMatch!17770 (regOne!36053 r!11554)) (= (c!1322953 (regOne!36053 r!11554)) a!1901)))))

(assert (=> d!2216507 (= (derivationStepZipperDown!2349 (regOne!36053 r!11554) lt!2555327 a!1901) e!4261549)))

(declare-fun bm!644445 () Bool)

(assert (=> bm!644445 (= call!644448 (derivationStepZipperDown!2349 (ite c!1322998 (regTwo!36053 (regOne!36053 r!11554)) (ite c!1322996 (regTwo!36052 (regOne!36053 r!11554)) (ite c!1322995 (regOne!36052 (regOne!36053 r!11554)) (reg!18099 (regOne!36053 r!11554))))) (ite (or c!1322998 c!1322996) lt!2555327 (Context!13533 call!644446)) a!1901))))

(declare-fun b!7088764 () Bool)

(assert (=> b!7088764 (= e!4261546 (nullable!7412 (regOne!36052 (regOne!36053 r!11554))))))

(assert (= (and d!2216507 c!1322994) b!7088762))

(assert (= (and d!2216507 (not c!1322994)) b!7088755))

(assert (= (and b!7088755 c!1322998) b!7088759))

(assert (= (and b!7088755 (not c!1322998)) b!7088763))

(assert (= (and b!7088763 res!2895374) b!7088764))

(assert (= (and b!7088763 c!1322996) b!7088754))

(assert (= (and b!7088763 (not c!1322996)) b!7088760))

(assert (= (and b!7088760 c!1322995) b!7088758))

(assert (= (and b!7088760 (not c!1322995)) b!7088757))

(assert (= (and b!7088757 c!1322997) b!7088761))

(assert (= (and b!7088757 (not c!1322997)) b!7088756))

(assert (= (or b!7088758 b!7088761) bm!644440))

(assert (= (or b!7088758 b!7088761) bm!644442))

(assert (= (or b!7088754 bm!644442) bm!644441))

(assert (= (or b!7088754 bm!644440) bm!644443))

(assert (= (or b!7088759 bm!644441) bm!644445))

(assert (= (or b!7088759 b!7088754) bm!644444))

(declare-fun m!7818742 () Bool)

(assert (=> bm!644445 m!7818742))

(declare-fun m!7818744 () Bool)

(assert (=> bm!644444 m!7818744))

(assert (=> b!7088764 m!7818706))

(assert (=> b!7088762 m!7818738))

(declare-fun m!7818746 () Bool)

(assert (=> bm!644443 m!7818746))

(assert (=> b!7088618 d!2216507))

(assert (=> b!7088618 d!2216491))

(declare-fun lt!2555408 () List!68733)

(declare-fun b!7088776 () Bool)

(declare-fun e!4261555 () Bool)

(assert (=> b!7088776 (= e!4261555 (or (not (= (exprs!7266 auxCtx!45) Nil!68609)) (= lt!2555408 (exprs!7266 c!9994))))))

(declare-fun b!7088773 () Bool)

(declare-fun e!4261554 () List!68733)

(assert (=> b!7088773 (= e!4261554 (exprs!7266 auxCtx!45))))

(declare-fun b!7088774 () Bool)

(assert (=> b!7088774 (= e!4261554 (Cons!68609 (h!75057 (exprs!7266 c!9994)) (++!15943 (t!382518 (exprs!7266 c!9994)) (exprs!7266 auxCtx!45))))))

(declare-fun d!2216509 () Bool)

(assert (=> d!2216509 e!4261555))

(declare-fun res!2895380 () Bool)

(assert (=> d!2216509 (=> (not res!2895380) (not e!4261555))))

(declare-fun content!13929 (List!68733) (Set Regex!17770))

(assert (=> d!2216509 (= res!2895380 (= (content!13929 lt!2555408) (set.union (content!13929 (exprs!7266 c!9994)) (content!13929 (exprs!7266 auxCtx!45)))))))

(assert (=> d!2216509 (= lt!2555408 e!4261554)))

(declare-fun c!1323001 () Bool)

(assert (=> d!2216509 (= c!1323001 (is-Nil!68609 (exprs!7266 c!9994)))))

(assert (=> d!2216509 (= (++!15943 (exprs!7266 c!9994) (exprs!7266 auxCtx!45)) lt!2555408)))

(declare-fun b!7088775 () Bool)

(declare-fun res!2895379 () Bool)

(assert (=> b!7088775 (=> (not res!2895379) (not e!4261555))))

(declare-fun size!41304 (List!68733) Int)

(assert (=> b!7088775 (= res!2895379 (= (size!41304 lt!2555408) (+ (size!41304 (exprs!7266 c!9994)) (size!41304 (exprs!7266 auxCtx!45)))))))

(assert (= (and d!2216509 c!1323001) b!7088773))

(assert (= (and d!2216509 (not c!1323001)) b!7088774))

(assert (= (and d!2216509 res!2895380) b!7088775))

(assert (= (and b!7088775 res!2895379) b!7088776))

(declare-fun m!7818748 () Bool)

(assert (=> b!7088774 m!7818748))

(declare-fun m!7818750 () Bool)

(assert (=> d!2216509 m!7818750))

(declare-fun m!7818752 () Bool)

(assert (=> d!2216509 m!7818752))

(declare-fun m!7818754 () Bool)

(assert (=> d!2216509 m!7818754))

(declare-fun m!7818756 () Bool)

(assert (=> b!7088775 m!7818756))

(declare-fun m!7818758 () Bool)

(assert (=> b!7088775 m!7818758))

(declare-fun m!7818760 () Bool)

(assert (=> b!7088775 m!7818760))

(assert (=> b!7088618 d!2216509))

(declare-fun bm!644446 () Bool)

(declare-fun call!644452 () List!68733)

(declare-fun call!644456 () List!68733)

(assert (=> bm!644446 (= call!644452 call!644456)))

(declare-fun bm!644447 () Bool)

(declare-fun call!644455 () (Set Context!13532))

(declare-fun call!644454 () (Set Context!13532))

(assert (=> bm!644447 (= call!644455 call!644454)))

(declare-fun b!7088778 () Bool)

(declare-fun e!4261561 () (Set Context!13532))

(declare-fun e!4261556 () (Set Context!13532))

(assert (=> b!7088778 (= e!4261561 e!4261556)))

(declare-fun c!1323006 () Bool)

(assert (=> b!7088778 (= c!1323006 (is-Union!17770 (regTwo!36053 r!11554)))))

(declare-fun b!7088779 () Bool)

(declare-fun e!4261559 () (Set Context!13532))

(assert (=> b!7088779 (= e!4261559 (as set.empty (Set Context!13532)))))

(declare-fun b!7088780 () Bool)

(declare-fun c!1323005 () Bool)

(assert (=> b!7088780 (= c!1323005 (is-Star!17770 (regTwo!36053 r!11554)))))

(declare-fun e!4261560 () (Set Context!13532))

(assert (=> b!7088780 (= e!4261560 e!4261559)))

(declare-fun b!7088781 () Bool)

(declare-fun call!644453 () (Set Context!13532))

(assert (=> b!7088781 (= e!4261560 call!644453)))

(declare-fun b!7088782 () Bool)

(declare-fun call!644451 () (Set Context!13532))

(assert (=> b!7088782 (= e!4261556 (set.union call!644451 call!644454))))

(declare-fun bm!644448 () Bool)

(assert (=> bm!644448 (= call!644453 call!644455)))

(declare-fun b!7088783 () Bool)

(declare-fun e!4261557 () (Set Context!13532))

(assert (=> b!7088783 (= e!4261557 e!4261560)))

(declare-fun c!1323003 () Bool)

(assert (=> b!7088783 (= c!1323003 (is-Concat!26615 (regTwo!36053 r!11554)))))

(declare-fun bm!644449 () Bool)

(declare-fun c!1323004 () Bool)

(assert (=> bm!644449 (= call!644456 ($colon$colon!2695 (exprs!7266 lt!2555327) (ite (or c!1323004 c!1323003) (regTwo!36052 (regTwo!36053 r!11554)) (regTwo!36053 r!11554))))))

(declare-fun b!7088784 () Bool)

(assert (=> b!7088784 (= e!4261559 call!644453)))

(declare-fun bm!644450 () Bool)

(assert (=> bm!644450 (= call!644451 (derivationStepZipperDown!2349 (ite c!1323006 (regOne!36053 (regTwo!36053 r!11554)) (regOne!36052 (regTwo!36053 r!11554))) (ite c!1323006 lt!2555327 (Context!13533 call!644456)) a!1901))))

(declare-fun b!7088785 () Bool)

(assert (=> b!7088785 (= e!4261561 (set.insert lt!2555327 (as set.empty (Set Context!13532))))))

(declare-fun b!7088786 () Bool)

(declare-fun e!4261558 () Bool)

(assert (=> b!7088786 (= c!1323004 e!4261558)))

(declare-fun res!2895381 () Bool)

(assert (=> b!7088786 (=> (not res!2895381) (not e!4261558))))

(assert (=> b!7088786 (= res!2895381 (is-Concat!26615 (regTwo!36053 r!11554)))))

(assert (=> b!7088786 (= e!4261556 e!4261557)))

(declare-fun b!7088777 () Bool)

(assert (=> b!7088777 (= e!4261557 (set.union call!644451 call!644455))))

(declare-fun d!2216511 () Bool)

(declare-fun c!1323002 () Bool)

(assert (=> d!2216511 (= c!1323002 (and (is-ElementMatch!17770 (regTwo!36053 r!11554)) (= (c!1322953 (regTwo!36053 r!11554)) a!1901)))))

(assert (=> d!2216511 (= (derivationStepZipperDown!2349 (regTwo!36053 r!11554) lt!2555327 a!1901) e!4261561)))

(declare-fun bm!644451 () Bool)

(assert (=> bm!644451 (= call!644454 (derivationStepZipperDown!2349 (ite c!1323006 (regTwo!36053 (regTwo!36053 r!11554)) (ite c!1323004 (regTwo!36052 (regTwo!36053 r!11554)) (ite c!1323003 (regOne!36052 (regTwo!36053 r!11554)) (reg!18099 (regTwo!36053 r!11554))))) (ite (or c!1323006 c!1323004) lt!2555327 (Context!13533 call!644452)) a!1901))))

(declare-fun b!7088787 () Bool)

(assert (=> b!7088787 (= e!4261558 (nullable!7412 (regOne!36052 (regTwo!36053 r!11554))))))

(assert (= (and d!2216511 c!1323002) b!7088785))

(assert (= (and d!2216511 (not c!1323002)) b!7088778))

(assert (= (and b!7088778 c!1323006) b!7088782))

(assert (= (and b!7088778 (not c!1323006)) b!7088786))

(assert (= (and b!7088786 res!2895381) b!7088787))

(assert (= (and b!7088786 c!1323004) b!7088777))

(assert (= (and b!7088786 (not c!1323004)) b!7088783))

(assert (= (and b!7088783 c!1323003) b!7088781))

(assert (= (and b!7088783 (not c!1323003)) b!7088780))

(assert (= (and b!7088780 c!1323005) b!7088784))

(assert (= (and b!7088780 (not c!1323005)) b!7088779))

(assert (= (or b!7088781 b!7088784) bm!644446))

(assert (= (or b!7088781 b!7088784) bm!644448))

(assert (= (or b!7088777 bm!644448) bm!644447))

(assert (= (or b!7088777 bm!644446) bm!644449))

(assert (= (or b!7088782 bm!644447) bm!644451))

(assert (= (or b!7088782 b!7088777) bm!644450))

(declare-fun m!7818762 () Bool)

(assert (=> bm!644451 m!7818762))

(declare-fun m!7818764 () Bool)

(assert (=> bm!644450 m!7818764))

(assert (=> b!7088787 m!7818730))

(assert (=> b!7088785 m!7818738))

(declare-fun m!7818766 () Bool)

(assert (=> bm!644449 m!7818766))

(assert (=> b!7088618 d!2216511))

(declare-fun d!2216513 () Bool)

(declare-fun res!2895388 () Bool)

(declare-fun e!4261578 () Bool)

(assert (=> d!2216513 (=> res!2895388 e!4261578)))

(assert (=> d!2216513 (= res!2895388 (is-Nil!68609 (exprs!7266 c!9994)))))

(assert (=> d!2216513 (= (forall!16712 (exprs!7266 c!9994) lambda!429475) e!4261578)))

(declare-fun b!7088814 () Bool)

(declare-fun e!4261579 () Bool)

(assert (=> b!7088814 (= e!4261578 e!4261579)))

(declare-fun res!2895389 () Bool)

(assert (=> b!7088814 (=> (not res!2895389) (not e!4261579))))

(declare-fun dynLambda!27984 (Int Regex!17770) Bool)

(assert (=> b!7088814 (= res!2895389 (dynLambda!27984 lambda!429475 (h!75057 (exprs!7266 c!9994))))))

(declare-fun b!7088815 () Bool)

(assert (=> b!7088815 (= e!4261579 (forall!16712 (t!382518 (exprs!7266 c!9994)) lambda!429475))))

(assert (= (and d!2216513 (not res!2895388)) b!7088814))

(assert (= (and b!7088814 res!2895389) b!7088815))

(declare-fun b_lambda!270931 () Bool)

(assert (=> (not b_lambda!270931) (not b!7088814)))

(declare-fun m!7818768 () Bool)

(assert (=> b!7088814 m!7818768))

(declare-fun m!7818770 () Bool)

(assert (=> b!7088815 m!7818770))

(assert (=> b!7088614 d!2216513))

(declare-fun b!7088820 () Bool)

(declare-fun e!4261582 () Bool)

(declare-fun tp!1946829 () Bool)

(declare-fun tp!1946830 () Bool)

(assert (=> b!7088820 (= e!4261582 (and tp!1946829 tp!1946830))))

(assert (=> b!7088615 (= tp!1946801 e!4261582)))

(assert (= (and b!7088615 (is-Cons!68609 (exprs!7266 auxCtx!45))) b!7088820))

(declare-fun b!7088831 () Bool)

(declare-fun e!4261585 () Bool)

(assert (=> b!7088831 (= e!4261585 tp_is_empty!44773)))

(declare-fun b!7088834 () Bool)

(declare-fun tp!1946841 () Bool)

(declare-fun tp!1946843 () Bool)

(assert (=> b!7088834 (= e!4261585 (and tp!1946841 tp!1946843))))

(declare-fun b!7088833 () Bool)

(declare-fun tp!1946845 () Bool)

(assert (=> b!7088833 (= e!4261585 tp!1946845)))

(assert (=> b!7088611 (= tp!1946798 e!4261585)))

(declare-fun b!7088832 () Bool)

(declare-fun tp!1946842 () Bool)

(declare-fun tp!1946844 () Bool)

(assert (=> b!7088832 (= e!4261585 (and tp!1946842 tp!1946844))))

(assert (= (and b!7088611 (is-ElementMatch!17770 (regOne!36052 r!11554))) b!7088831))

(assert (= (and b!7088611 (is-Concat!26615 (regOne!36052 r!11554))) b!7088832))

(assert (= (and b!7088611 (is-Star!17770 (regOne!36052 r!11554))) b!7088833))

(assert (= (and b!7088611 (is-Union!17770 (regOne!36052 r!11554))) b!7088834))

(declare-fun b!7088835 () Bool)

(declare-fun e!4261586 () Bool)

(assert (=> b!7088835 (= e!4261586 tp_is_empty!44773)))

(declare-fun b!7088838 () Bool)

(declare-fun tp!1946846 () Bool)

(declare-fun tp!1946848 () Bool)

(assert (=> b!7088838 (= e!4261586 (and tp!1946846 tp!1946848))))

(declare-fun b!7088837 () Bool)

(declare-fun tp!1946850 () Bool)

(assert (=> b!7088837 (= e!4261586 tp!1946850)))

(assert (=> b!7088611 (= tp!1946800 e!4261586)))

(declare-fun b!7088836 () Bool)

(declare-fun tp!1946847 () Bool)

(declare-fun tp!1946849 () Bool)

(assert (=> b!7088836 (= e!4261586 (and tp!1946847 tp!1946849))))

(assert (= (and b!7088611 (is-ElementMatch!17770 (regTwo!36052 r!11554))) b!7088835))

(assert (= (and b!7088611 (is-Concat!26615 (regTwo!36052 r!11554))) b!7088836))

(assert (= (and b!7088611 (is-Star!17770 (regTwo!36052 r!11554))) b!7088837))

(assert (= (and b!7088611 (is-Union!17770 (regTwo!36052 r!11554))) b!7088838))

(declare-fun b!7088839 () Bool)

(declare-fun e!4261587 () Bool)

(declare-fun tp!1946851 () Bool)

(declare-fun tp!1946852 () Bool)

(assert (=> b!7088839 (= e!4261587 (and tp!1946851 tp!1946852))))

(assert (=> b!7088617 (= tp!1946802 e!4261587)))

(assert (= (and b!7088617 (is-Cons!68609 (exprs!7266 c!9994))) b!7088839))

(declare-fun b!7088840 () Bool)

(declare-fun e!4261588 () Bool)

(assert (=> b!7088840 (= e!4261588 tp_is_empty!44773)))

(declare-fun b!7088843 () Bool)

(declare-fun tp!1946853 () Bool)

(declare-fun tp!1946855 () Bool)

(assert (=> b!7088843 (= e!4261588 (and tp!1946853 tp!1946855))))

(declare-fun b!7088842 () Bool)

(declare-fun tp!1946857 () Bool)

(assert (=> b!7088842 (= e!4261588 tp!1946857)))

(assert (=> b!7088612 (= tp!1946797 e!4261588)))

(declare-fun b!7088841 () Bool)

(declare-fun tp!1946854 () Bool)

(declare-fun tp!1946856 () Bool)

(assert (=> b!7088841 (= e!4261588 (and tp!1946854 tp!1946856))))

(assert (= (and b!7088612 (is-ElementMatch!17770 (regOne!36053 r!11554))) b!7088840))

(assert (= (and b!7088612 (is-Concat!26615 (regOne!36053 r!11554))) b!7088841))

(assert (= (and b!7088612 (is-Star!17770 (regOne!36053 r!11554))) b!7088842))

(assert (= (and b!7088612 (is-Union!17770 (regOne!36053 r!11554))) b!7088843))

(declare-fun b!7088844 () Bool)

(declare-fun e!4261589 () Bool)

(assert (=> b!7088844 (= e!4261589 tp_is_empty!44773)))

(declare-fun b!7088847 () Bool)

(declare-fun tp!1946858 () Bool)

(declare-fun tp!1946860 () Bool)

(assert (=> b!7088847 (= e!4261589 (and tp!1946858 tp!1946860))))

(declare-fun b!7088846 () Bool)

(declare-fun tp!1946862 () Bool)

(assert (=> b!7088846 (= e!4261589 tp!1946862)))

(assert (=> b!7088612 (= tp!1946799 e!4261589)))

(declare-fun b!7088845 () Bool)

(declare-fun tp!1946859 () Bool)

(declare-fun tp!1946861 () Bool)

(assert (=> b!7088845 (= e!4261589 (and tp!1946859 tp!1946861))))

(assert (= (and b!7088612 (is-ElementMatch!17770 (regTwo!36053 r!11554))) b!7088844))

(assert (= (and b!7088612 (is-Concat!26615 (regTwo!36053 r!11554))) b!7088845))

(assert (= (and b!7088612 (is-Star!17770 (regTwo!36053 r!11554))) b!7088846))

(assert (= (and b!7088612 (is-Union!17770 (regTwo!36053 r!11554))) b!7088847))

(declare-fun b!7088848 () Bool)

(declare-fun e!4261590 () Bool)

(assert (=> b!7088848 (= e!4261590 tp_is_empty!44773)))

(declare-fun b!7088851 () Bool)

(declare-fun tp!1946863 () Bool)

(declare-fun tp!1946865 () Bool)

(assert (=> b!7088851 (= e!4261590 (and tp!1946863 tp!1946865))))

(declare-fun b!7088850 () Bool)

(declare-fun tp!1946867 () Bool)

(assert (=> b!7088850 (= e!4261590 tp!1946867)))

(assert (=> b!7088613 (= tp!1946803 e!4261590)))

(declare-fun b!7088849 () Bool)

(declare-fun tp!1946864 () Bool)

(declare-fun tp!1946866 () Bool)

(assert (=> b!7088849 (= e!4261590 (and tp!1946864 tp!1946866))))

(assert (= (and b!7088613 (is-ElementMatch!17770 (reg!18099 r!11554))) b!7088848))

(assert (= (and b!7088613 (is-Concat!26615 (reg!18099 r!11554))) b!7088849))

(assert (= (and b!7088613 (is-Star!17770 (reg!18099 r!11554))) b!7088850))

(assert (= (and b!7088613 (is-Union!17770 (reg!18099 r!11554))) b!7088851))

(declare-fun b_lambda!270933 () Bool)

(assert (= b_lambda!270931 (or b!7088618 b_lambda!270933)))

(declare-fun bs!1883243 () Bool)

(declare-fun d!2216515 () Bool)

(assert (= bs!1883243 (and d!2216515 b!7088618)))

(assert (=> bs!1883243 (= (dynLambda!27984 lambda!429475 (h!75057 (exprs!7266 c!9994))) (validRegex!9045 (h!75057 (exprs!7266 c!9994))))))

(declare-fun m!7818772 () Bool)

(assert (=> bs!1883243 m!7818772))

(assert (=> b!7088814 d!2216515))

(push 1)

(assert (not bm!644451))

(assert (not b!7088679))

(assert (not d!2216465))

(assert (not bm!644425))

(assert (not d!2216473))

(assert (not bs!1883243))

(assert (not bm!644402))

(assert (not b!7088787))

(assert (not bm!644443))

(assert (not d!2216475))

(assert (not b!7088764))

(assert (not b!7088847))

(assert (not bm!644401))

(assert (not bm!644427))

(assert (not b!7088820))

(assert (not bm!644432))

(assert (not b!7088841))

(assert (not bm!644444))

(assert (not b!7088836))

(assert (not bm!644437))

(assert (not b!7088834))

(assert (not d!2216487))

(assert (not b!7088731))

(assert (not b!7088842))

(assert (not bm!644420))

(assert (not d!2216469))

(assert (not b!7088843))

(assert (not b_lambda!270933))

(assert (not bm!644438))

(assert (not bm!644450))

(assert (not bm!644431))

(assert (not b!7088742))

(assert (not b!7088837))

(assert (not b!7088851))

(assert (not d!2216461))

(assert (not b!7088753))

(assert (not bm!644439))

(assert (not b!7088774))

(assert (not b!7088845))

(assert (not bm!644449))

(assert (not b!7088815))

(assert (not d!2216509))

(assert (not bm!644421))

(assert (not d!2216463))

(assert (not b!7088838))

(assert tp_is_empty!44773)

(assert (not b!7088720))

(assert (not bm!644419))

(assert (not b!7088846))

(assert (not b!7088832))

(assert (not b!7088849))

(assert (not d!2216483))

(assert (not b!7088839))

(assert (not bm!644433))

(assert (not d!2216495))

(assert (not d!2216491))

(assert (not bm!644445))

(assert (not b!7088850))

(assert (not d!2216485))

(assert (not d!2216477))

(assert (not b!7088775))

(assert (not bm!644426))

(assert (not b!7088833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

