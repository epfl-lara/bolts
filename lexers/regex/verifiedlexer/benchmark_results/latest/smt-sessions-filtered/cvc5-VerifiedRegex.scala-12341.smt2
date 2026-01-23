; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691942 () Bool)

(assert start!691942)

(declare-fun b!7108499 () Bool)

(declare-fun e!4272130 () Bool)

(declare-fun e!4272131 () Bool)

(assert (=> b!7108499 (= e!4272130 e!4272131)))

(declare-fun res!2901304 () Bool)

(assert (=> b!7108499 (=> (not res!2901304) (not e!4272131))))

(declare-datatypes ((C!36118 0))(
  ( (C!36119 (val!27765 Int)) )
))
(declare-datatypes ((Regex!17924 0))(
  ( (ElementMatch!17924 (c!1326463 C!36118)) (Concat!26769 (regOne!36360 Regex!17924) (regTwo!36360 Regex!17924)) (EmptyExpr!17924) (Star!17924 (reg!18253 Regex!17924)) (EmptyLang!17924) (Union!17924 (regOne!36361 Regex!17924) (regTwo!36361 Regex!17924)) )
))
(declare-fun r!11554 () Regex!17924)

(declare-fun validRegex!9197 (Regex!17924) Bool)

(assert (=> b!7108499 (= res!2901304 (validRegex!9197 (regTwo!36360 r!11554)))))

(declare-datatypes ((List!68885 0))(
  ( (Nil!68761) (Cons!68761 (h!75209 Regex!17924) (t!382706 List!68885)) )
))
(declare-datatypes ((Context!13836 0))(
  ( (Context!13837 (exprs!7418 List!68885)) )
))
(declare-fun c!9994 () Context!13836)

(declare-fun auxCtx!45 () Context!13836)

(declare-fun lambda!431746 () Int)

(declare-datatypes ((Unit!162519 0))(
  ( (Unit!162520) )
))
(declare-fun lt!2559357 () Unit!162519)

(declare-fun lemmaConcatPreservesForall!1209 (List!68885 List!68885 Int) Unit!162519)

(assert (=> b!7108499 (= lt!2559357 (lemmaConcatPreservesForall!1209 (exprs!7418 c!9994) (exprs!7418 auxCtx!45) lambda!431746))))

(declare-fun lt!2559358 () Context!13836)

(declare-fun lt!2559361 () List!68885)

(assert (=> b!7108499 (= lt!2559358 (Context!13837 lt!2559361))))

(declare-fun ++!16076 (List!68885 List!68885) List!68885)

(assert (=> b!7108499 (= lt!2559361 (++!16076 (exprs!7418 c!9994) (exprs!7418 auxCtx!45)))))

(declare-fun lt!2559359 () Unit!162519)

(assert (=> b!7108499 (= lt!2559359 (lemmaConcatPreservesForall!1209 (exprs!7418 c!9994) (exprs!7418 auxCtx!45) lambda!431746))))

(declare-fun lt!2559360 () Unit!162519)

(assert (=> b!7108499 (= lt!2559360 (lemmaConcatPreservesForall!1209 (exprs!7418 c!9994) (exprs!7418 auxCtx!45) lambda!431746))))

(declare-fun b!7108500 () Bool)

(declare-fun e!4272127 () Bool)

(declare-fun tp!1955450 () Bool)

(assert (=> b!7108500 (= e!4272127 tp!1955450)))

(declare-fun b!7108501 () Bool)

(declare-fun res!2901302 () Bool)

(assert (=> b!7108501 (=> (not res!2901302) (not e!4272131))))

(declare-fun a!1901 () C!36118)

(declare-fun derivationStepZipperDown!2439 (Regex!17924 Context!13836 C!36118) (Set Context!13836))

(declare-fun $colon$colon!2782 (List!68885 Regex!17924) List!68885)

(assert (=> b!7108501 (= res!2901302 (= (derivationStepZipperDown!2439 r!11554 lt!2559358 a!1901) (set.union (derivationStepZipperDown!2439 (regOne!36360 r!11554) (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554))) a!1901) (derivationStepZipperDown!2439 (regTwo!36360 r!11554) lt!2559358 a!1901))))))

(declare-fun b!7108502 () Bool)

(declare-fun res!2901303 () Bool)

(assert (=> b!7108502 (=> (not res!2901303) (not e!4272130))))

(declare-fun nullable!7561 (Regex!17924) Bool)

(assert (=> b!7108502 (= res!2901303 (nullable!7561 (regOne!36360 r!11554)))))

(declare-fun b!7108503 () Bool)

(declare-fun e!4272129 () Bool)

(declare-fun tp!1955448 () Bool)

(assert (=> b!7108503 (= e!4272129 tp!1955448)))

(declare-fun res!2901305 () Bool)

(assert (=> start!691942 (=> (not res!2901305) (not e!4272130))))

(assert (=> start!691942 (= res!2901305 (validRegex!9197 r!11554))))

(assert (=> start!691942 e!4272130))

(assert (=> start!691942 e!4272127))

(declare-fun tp_is_empty!45081 () Bool)

(assert (=> start!691942 tp_is_empty!45081))

(declare-fun inv!87674 (Context!13836) Bool)

(assert (=> start!691942 (and (inv!87674 c!9994) e!4272129)))

(declare-fun e!4272128 () Bool)

(assert (=> start!691942 (and (inv!87674 auxCtx!45) e!4272128)))

(declare-fun b!7108504 () Bool)

(declare-fun tp!1955447 () Bool)

(declare-fun tp!1955452 () Bool)

(assert (=> b!7108504 (= e!4272127 (and tp!1955447 tp!1955452))))

(declare-fun b!7108505 () Bool)

(declare-fun tp!1955451 () Bool)

(declare-fun tp!1955449 () Bool)

(assert (=> b!7108505 (= e!4272127 (and tp!1955451 tp!1955449))))

(declare-fun b!7108506 () Bool)

(declare-fun tp!1955453 () Bool)

(assert (=> b!7108506 (= e!4272128 tp!1955453)))

(declare-fun b!7108507 () Bool)

(assert (=> b!7108507 (= e!4272131 (not (validRegex!9197 (regOne!36360 r!11554))))))

(declare-fun b!7108508 () Bool)

(assert (=> b!7108508 (= e!4272127 tp_is_empty!45081)))

(declare-fun b!7108509 () Bool)

(declare-fun res!2901301 () Bool)

(assert (=> b!7108509 (=> (not res!2901301) (not e!4272130))))

(assert (=> b!7108509 (= res!2901301 (and (or (not (is-ElementMatch!17924 r!11554)) (not (= (c!1326463 r!11554) a!1901))) (not (is-Union!17924 r!11554)) (is-Concat!26769 r!11554)))))

(assert (= (and start!691942 res!2901305) b!7108509))

(assert (= (and b!7108509 res!2901301) b!7108502))

(assert (= (and b!7108502 res!2901303) b!7108499))

(assert (= (and b!7108499 res!2901304) b!7108501))

(assert (= (and b!7108501 res!2901302) b!7108507))

(assert (= (and start!691942 (is-ElementMatch!17924 r!11554)) b!7108508))

(assert (= (and start!691942 (is-Concat!26769 r!11554)) b!7108505))

(assert (= (and start!691942 (is-Star!17924 r!11554)) b!7108500))

(assert (= (and start!691942 (is-Union!17924 r!11554)) b!7108504))

(assert (= start!691942 b!7108503))

(assert (= start!691942 b!7108506))

(declare-fun m!7830508 () Bool)

(assert (=> b!7108502 m!7830508))

(declare-fun m!7830510 () Bool)

(assert (=> start!691942 m!7830510))

(declare-fun m!7830512 () Bool)

(assert (=> start!691942 m!7830512))

(declare-fun m!7830514 () Bool)

(assert (=> start!691942 m!7830514))

(declare-fun m!7830516 () Bool)

(assert (=> b!7108499 m!7830516))

(assert (=> b!7108499 m!7830516))

(assert (=> b!7108499 m!7830516))

(declare-fun m!7830518 () Bool)

(assert (=> b!7108499 m!7830518))

(declare-fun m!7830520 () Bool)

(assert (=> b!7108499 m!7830520))

(declare-fun m!7830522 () Bool)

(assert (=> b!7108507 m!7830522))

(declare-fun m!7830524 () Bool)

(assert (=> b!7108501 m!7830524))

(declare-fun m!7830526 () Bool)

(assert (=> b!7108501 m!7830526))

(declare-fun m!7830528 () Bool)

(assert (=> b!7108501 m!7830528))

(declare-fun m!7830530 () Bool)

(assert (=> b!7108501 m!7830530))

(push 1)

(assert (not start!691942))

(assert (not b!7108507))

(assert (not b!7108506))

(assert tp_is_empty!45081)

(assert (not b!7108504))

(assert (not b!7108503))

(assert (not b!7108502))

(assert (not b!7108500))

(assert (not b!7108499))

(assert (not b!7108505))

(assert (not b!7108501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219796 () Bool)

(declare-fun forall!16825 (List!68885 Int) Bool)

(assert (=> d!2219796 (forall!16825 (++!16076 (exprs!7418 c!9994) (exprs!7418 auxCtx!45)) lambda!431746)))

(declare-fun lt!2559379 () Unit!162519)

(declare-fun choose!54833 (List!68885 List!68885 Int) Unit!162519)

(assert (=> d!2219796 (= lt!2559379 (choose!54833 (exprs!7418 c!9994) (exprs!7418 auxCtx!45) lambda!431746))))

(assert (=> d!2219796 (forall!16825 (exprs!7418 c!9994) lambda!431746)))

(assert (=> d!2219796 (= (lemmaConcatPreservesForall!1209 (exprs!7418 c!9994) (exprs!7418 auxCtx!45) lambda!431746) lt!2559379)))

(declare-fun bs!1884927 () Bool)

(assert (= bs!1884927 d!2219796))

(assert (=> bs!1884927 m!7830518))

(assert (=> bs!1884927 m!7830518))

(declare-fun m!7830556 () Bool)

(assert (=> bs!1884927 m!7830556))

(declare-fun m!7830558 () Bool)

(assert (=> bs!1884927 m!7830558))

(declare-fun m!7830560 () Bool)

(assert (=> bs!1884927 m!7830560))

(assert (=> b!7108499 d!2219796))

(declare-fun b!7108567 () Bool)

(declare-fun e!4272165 () Bool)

(declare-fun e!4272172 () Bool)

(assert (=> b!7108567 (= e!4272165 e!4272172)))

(declare-fun c!1326472 () Bool)

(assert (=> b!7108567 (= c!1326472 (is-Star!17924 (regTwo!36360 r!11554)))))

(declare-fun b!7108568 () Bool)

(declare-fun e!4272173 () Bool)

(declare-fun call!648166 () Bool)

(assert (=> b!7108568 (= e!4272173 call!648166)))

(declare-fun bm!648161 () Bool)

(declare-fun call!648167 () Bool)

(declare-fun c!1326471 () Bool)

(assert (=> bm!648161 (= call!648167 (validRegex!9197 (ite c!1326471 (regTwo!36361 (regTwo!36360 r!11554)) (regOne!36360 (regTwo!36360 r!11554)))))))

(declare-fun call!648168 () Bool)

(declare-fun bm!648162 () Bool)

(assert (=> bm!648162 (= call!648168 (validRegex!9197 (ite c!1326472 (reg!18253 (regTwo!36360 r!11554)) (ite c!1326471 (regOne!36361 (regTwo!36360 r!11554)) (regTwo!36360 (regTwo!36360 r!11554))))))))

(declare-fun b!7108569 () Bool)

(declare-fun e!4272166 () Bool)

(assert (=> b!7108569 (= e!4272166 e!4272173)))

(declare-fun res!2901337 () Bool)

(assert (=> b!7108569 (=> (not res!2901337) (not e!4272173))))

(assert (=> b!7108569 (= res!2901337 call!648167)))

(declare-fun b!7108570 () Bool)

(declare-fun e!4272169 () Bool)

(assert (=> b!7108570 (= e!4272169 call!648167)))

(declare-fun b!7108571 () Bool)

(declare-fun e!4272170 () Bool)

(assert (=> b!7108571 (= e!4272170 call!648168)))

(declare-fun b!7108572 () Bool)

(assert (=> b!7108572 (= e!4272172 e!4272170)))

(declare-fun res!2901338 () Bool)

(assert (=> b!7108572 (= res!2901338 (not (nullable!7561 (reg!18253 (regTwo!36360 r!11554)))))))

(assert (=> b!7108572 (=> (not res!2901338) (not e!4272170))))

(declare-fun b!7108573 () Bool)

(declare-fun res!2901339 () Bool)

(assert (=> b!7108573 (=> res!2901339 e!4272166)))

(assert (=> b!7108573 (= res!2901339 (not (is-Concat!26769 (regTwo!36360 r!11554))))))

(declare-fun e!4272171 () Bool)

(assert (=> b!7108573 (= e!4272171 e!4272166)))

(declare-fun d!2219798 () Bool)

(declare-fun res!2901334 () Bool)

(assert (=> d!2219798 (=> res!2901334 e!4272165)))

(assert (=> d!2219798 (= res!2901334 (is-ElementMatch!17924 (regTwo!36360 r!11554)))))

(assert (=> d!2219798 (= (validRegex!9197 (regTwo!36360 r!11554)) e!4272165)))

(declare-fun b!7108574 () Bool)

(declare-fun res!2901333 () Bool)

(assert (=> b!7108574 (=> (not res!2901333) (not e!4272169))))

(assert (=> b!7108574 (= res!2901333 call!648166)))

(assert (=> b!7108574 (= e!4272171 e!4272169)))

(declare-fun bm!648163 () Bool)

(assert (=> bm!648163 (= call!648166 call!648168)))

(declare-fun b!7108575 () Bool)

(assert (=> b!7108575 (= e!4272172 e!4272171)))

(assert (=> b!7108575 (= c!1326471 (is-Union!17924 (regTwo!36360 r!11554)))))

(assert (= (and d!2219798 (not res!2901334)) b!7108567))

(assert (= (and b!7108567 c!1326472) b!7108572))

(assert (= (and b!7108567 (not c!1326472)) b!7108575))

(assert (= (and b!7108572 res!2901338) b!7108571))

(assert (= (and b!7108575 c!1326471) b!7108574))

(assert (= (and b!7108575 (not c!1326471)) b!7108573))

(assert (= (and b!7108574 res!2901333) b!7108570))

(assert (= (and b!7108573 (not res!2901339)) b!7108569))

(assert (= (and b!7108569 res!2901337) b!7108568))

(assert (= (or b!7108574 b!7108568) bm!648163))

(assert (= (or b!7108570 b!7108569) bm!648161))

(assert (= (or b!7108571 bm!648163) bm!648162))

(declare-fun m!7830562 () Bool)

(assert (=> bm!648161 m!7830562))

(declare-fun m!7830564 () Bool)

(assert (=> bm!648162 m!7830564))

(declare-fun m!7830566 () Bool)

(assert (=> b!7108572 m!7830566))

(assert (=> b!7108499 d!2219798))

(declare-fun b!7108596 () Bool)

(declare-fun e!4272187 () List!68885)

(assert (=> b!7108596 (= e!4272187 (exprs!7418 auxCtx!45))))

(declare-fun b!7108599 () Bool)

(declare-fun e!4272186 () Bool)

(declare-fun lt!2559382 () List!68885)

(assert (=> b!7108599 (= e!4272186 (or (not (= (exprs!7418 auxCtx!45) Nil!68761)) (= lt!2559382 (exprs!7418 c!9994))))))

(declare-fun d!2219802 () Bool)

(assert (=> d!2219802 e!4272186))

(declare-fun res!2901351 () Bool)

(assert (=> d!2219802 (=> (not res!2901351) (not e!4272186))))

(declare-fun content!14010 (List!68885) (Set Regex!17924))

(assert (=> d!2219802 (= res!2901351 (= (content!14010 lt!2559382) (set.union (content!14010 (exprs!7418 c!9994)) (content!14010 (exprs!7418 auxCtx!45)))))))

(assert (=> d!2219802 (= lt!2559382 e!4272187)))

(declare-fun c!1326477 () Bool)

(assert (=> d!2219802 (= c!1326477 (is-Nil!68761 (exprs!7418 c!9994)))))

(assert (=> d!2219802 (= (++!16076 (exprs!7418 c!9994) (exprs!7418 auxCtx!45)) lt!2559382)))

(declare-fun b!7108597 () Bool)

(assert (=> b!7108597 (= e!4272187 (Cons!68761 (h!75209 (exprs!7418 c!9994)) (++!16076 (t!382706 (exprs!7418 c!9994)) (exprs!7418 auxCtx!45))))))

(declare-fun b!7108598 () Bool)

(declare-fun res!2901350 () Bool)

(assert (=> b!7108598 (=> (not res!2901350) (not e!4272186))))

(declare-fun size!41385 (List!68885) Int)

(assert (=> b!7108598 (= res!2901350 (= (size!41385 lt!2559382) (+ (size!41385 (exprs!7418 c!9994)) (size!41385 (exprs!7418 auxCtx!45)))))))

(assert (= (and d!2219802 c!1326477) b!7108596))

(assert (= (and d!2219802 (not c!1326477)) b!7108597))

(assert (= (and d!2219802 res!2901351) b!7108598))

(assert (= (and b!7108598 res!2901350) b!7108599))

(declare-fun m!7830568 () Bool)

(assert (=> d!2219802 m!7830568))

(declare-fun m!7830570 () Bool)

(assert (=> d!2219802 m!7830570))

(declare-fun m!7830572 () Bool)

(assert (=> d!2219802 m!7830572))

(declare-fun m!7830574 () Bool)

(assert (=> b!7108597 m!7830574))

(declare-fun m!7830576 () Bool)

(assert (=> b!7108598 m!7830576))

(declare-fun m!7830578 () Bool)

(assert (=> b!7108598 m!7830578))

(declare-fun m!7830580 () Bool)

(assert (=> b!7108598 m!7830580))

(assert (=> b!7108499 d!2219802))

(declare-fun b!7108600 () Bool)

(declare-fun e!4272188 () Bool)

(declare-fun e!4272193 () Bool)

(assert (=> b!7108600 (= e!4272188 e!4272193)))

(declare-fun c!1326479 () Bool)

(assert (=> b!7108600 (= c!1326479 (is-Star!17924 r!11554))))

(declare-fun b!7108601 () Bool)

(declare-fun e!4272194 () Bool)

(declare-fun call!648175 () Bool)

(assert (=> b!7108601 (= e!4272194 call!648175)))

(declare-fun bm!648170 () Bool)

(declare-fun call!648176 () Bool)

(declare-fun c!1326478 () Bool)

(assert (=> bm!648170 (= call!648176 (validRegex!9197 (ite c!1326478 (regTwo!36361 r!11554) (regOne!36360 r!11554))))))

(declare-fun call!648177 () Bool)

(declare-fun bm!648171 () Bool)

(assert (=> bm!648171 (= call!648177 (validRegex!9197 (ite c!1326479 (reg!18253 r!11554) (ite c!1326478 (regOne!36361 r!11554) (regTwo!36360 r!11554)))))))

(declare-fun b!7108602 () Bool)

(declare-fun e!4272189 () Bool)

(assert (=> b!7108602 (= e!4272189 e!4272194)))

(declare-fun res!2901354 () Bool)

(assert (=> b!7108602 (=> (not res!2901354) (not e!4272194))))

(assert (=> b!7108602 (= res!2901354 call!648176)))

(declare-fun b!7108603 () Bool)

(declare-fun e!4272190 () Bool)

(assert (=> b!7108603 (= e!4272190 call!648176)))

(declare-fun b!7108604 () Bool)

(declare-fun e!4272191 () Bool)

(assert (=> b!7108604 (= e!4272191 call!648177)))

(declare-fun b!7108605 () Bool)

(assert (=> b!7108605 (= e!4272193 e!4272191)))

(declare-fun res!2901355 () Bool)

(assert (=> b!7108605 (= res!2901355 (not (nullable!7561 (reg!18253 r!11554))))))

(assert (=> b!7108605 (=> (not res!2901355) (not e!4272191))))

(declare-fun b!7108606 () Bool)

(declare-fun res!2901356 () Bool)

(assert (=> b!7108606 (=> res!2901356 e!4272189)))

(assert (=> b!7108606 (= res!2901356 (not (is-Concat!26769 r!11554)))))

(declare-fun e!4272192 () Bool)

(assert (=> b!7108606 (= e!4272192 e!4272189)))

(declare-fun d!2219804 () Bool)

(declare-fun res!2901353 () Bool)

(assert (=> d!2219804 (=> res!2901353 e!4272188)))

(assert (=> d!2219804 (= res!2901353 (is-ElementMatch!17924 r!11554))))

(assert (=> d!2219804 (= (validRegex!9197 r!11554) e!4272188)))

(declare-fun b!7108607 () Bool)

(declare-fun res!2901352 () Bool)

(assert (=> b!7108607 (=> (not res!2901352) (not e!4272190))))

(assert (=> b!7108607 (= res!2901352 call!648175)))

(assert (=> b!7108607 (= e!4272192 e!4272190)))

(declare-fun bm!648172 () Bool)

(assert (=> bm!648172 (= call!648175 call!648177)))

(declare-fun b!7108608 () Bool)

(assert (=> b!7108608 (= e!4272193 e!4272192)))

(assert (=> b!7108608 (= c!1326478 (is-Union!17924 r!11554))))

(assert (= (and d!2219804 (not res!2901353)) b!7108600))

(assert (= (and b!7108600 c!1326479) b!7108605))

(assert (= (and b!7108600 (not c!1326479)) b!7108608))

(assert (= (and b!7108605 res!2901355) b!7108604))

(assert (= (and b!7108608 c!1326478) b!7108607))

(assert (= (and b!7108608 (not c!1326478)) b!7108606))

(assert (= (and b!7108607 res!2901352) b!7108603))

(assert (= (and b!7108606 (not res!2901356)) b!7108602))

(assert (= (and b!7108602 res!2901354) b!7108601))

(assert (= (or b!7108607 b!7108601) bm!648172))

(assert (= (or b!7108603 b!7108602) bm!648170))

(assert (= (or b!7108604 bm!648172) bm!648171))

(declare-fun m!7830582 () Bool)

(assert (=> bm!648170 m!7830582))

(declare-fun m!7830584 () Bool)

(assert (=> bm!648171 m!7830584))

(declare-fun m!7830586 () Bool)

(assert (=> b!7108605 m!7830586))

(assert (=> start!691942 d!2219804))

(declare-fun bs!1884928 () Bool)

(declare-fun d!2219806 () Bool)

(assert (= bs!1884928 (and d!2219806 b!7108499)))

(declare-fun lambda!431756 () Int)

(assert (=> bs!1884928 (= lambda!431756 lambda!431746)))

(assert (=> d!2219806 (= (inv!87674 c!9994) (forall!16825 (exprs!7418 c!9994) lambda!431756))))

(declare-fun bs!1884929 () Bool)

(assert (= bs!1884929 d!2219806))

(declare-fun m!7830588 () Bool)

(assert (=> bs!1884929 m!7830588))

(assert (=> start!691942 d!2219806))

(declare-fun bs!1884930 () Bool)

(declare-fun d!2219808 () Bool)

(assert (= bs!1884930 (and d!2219808 b!7108499)))

(declare-fun lambda!431757 () Int)

(assert (=> bs!1884930 (= lambda!431757 lambda!431746)))

(declare-fun bs!1884931 () Bool)

(assert (= bs!1884931 (and d!2219808 d!2219806)))

(assert (=> bs!1884931 (= lambda!431757 lambda!431756)))

(assert (=> d!2219808 (= (inv!87674 auxCtx!45) (forall!16825 (exprs!7418 auxCtx!45) lambda!431757))))

(declare-fun bs!1884932 () Bool)

(assert (= bs!1884932 d!2219808))

(declare-fun m!7830590 () Bool)

(assert (=> bs!1884932 m!7830590))

(assert (=> start!691942 d!2219808))

(declare-fun b!7108609 () Bool)

(declare-fun e!4272195 () Bool)

(declare-fun e!4272200 () Bool)

(assert (=> b!7108609 (= e!4272195 e!4272200)))

(declare-fun c!1326481 () Bool)

(assert (=> b!7108609 (= c!1326481 (is-Star!17924 (regOne!36360 r!11554)))))

(declare-fun b!7108610 () Bool)

(declare-fun e!4272201 () Bool)

(declare-fun call!648178 () Bool)

(assert (=> b!7108610 (= e!4272201 call!648178)))

(declare-fun bm!648173 () Bool)

(declare-fun call!648179 () Bool)

(declare-fun c!1326480 () Bool)

(assert (=> bm!648173 (= call!648179 (validRegex!9197 (ite c!1326480 (regTwo!36361 (regOne!36360 r!11554)) (regOne!36360 (regOne!36360 r!11554)))))))

(declare-fun bm!648174 () Bool)

(declare-fun call!648180 () Bool)

(assert (=> bm!648174 (= call!648180 (validRegex!9197 (ite c!1326481 (reg!18253 (regOne!36360 r!11554)) (ite c!1326480 (regOne!36361 (regOne!36360 r!11554)) (regTwo!36360 (regOne!36360 r!11554))))))))

(declare-fun b!7108611 () Bool)

(declare-fun e!4272196 () Bool)

(assert (=> b!7108611 (= e!4272196 e!4272201)))

(declare-fun res!2901359 () Bool)

(assert (=> b!7108611 (=> (not res!2901359) (not e!4272201))))

(assert (=> b!7108611 (= res!2901359 call!648179)))

(declare-fun b!7108612 () Bool)

(declare-fun e!4272197 () Bool)

(assert (=> b!7108612 (= e!4272197 call!648179)))

(declare-fun b!7108613 () Bool)

(declare-fun e!4272198 () Bool)

(assert (=> b!7108613 (= e!4272198 call!648180)))

(declare-fun b!7108614 () Bool)

(assert (=> b!7108614 (= e!4272200 e!4272198)))

(declare-fun res!2901360 () Bool)

(assert (=> b!7108614 (= res!2901360 (not (nullable!7561 (reg!18253 (regOne!36360 r!11554)))))))

(assert (=> b!7108614 (=> (not res!2901360) (not e!4272198))))

(declare-fun b!7108615 () Bool)

(declare-fun res!2901361 () Bool)

(assert (=> b!7108615 (=> res!2901361 e!4272196)))

(assert (=> b!7108615 (= res!2901361 (not (is-Concat!26769 (regOne!36360 r!11554))))))

(declare-fun e!4272199 () Bool)

(assert (=> b!7108615 (= e!4272199 e!4272196)))

(declare-fun d!2219810 () Bool)

(declare-fun res!2901358 () Bool)

(assert (=> d!2219810 (=> res!2901358 e!4272195)))

(assert (=> d!2219810 (= res!2901358 (is-ElementMatch!17924 (regOne!36360 r!11554)))))

(assert (=> d!2219810 (= (validRegex!9197 (regOne!36360 r!11554)) e!4272195)))

(declare-fun b!7108616 () Bool)

(declare-fun res!2901357 () Bool)

(assert (=> b!7108616 (=> (not res!2901357) (not e!4272197))))

(assert (=> b!7108616 (= res!2901357 call!648178)))

(assert (=> b!7108616 (= e!4272199 e!4272197)))

(declare-fun bm!648175 () Bool)

(assert (=> bm!648175 (= call!648178 call!648180)))

(declare-fun b!7108617 () Bool)

(assert (=> b!7108617 (= e!4272200 e!4272199)))

(assert (=> b!7108617 (= c!1326480 (is-Union!17924 (regOne!36360 r!11554)))))

(assert (= (and d!2219810 (not res!2901358)) b!7108609))

(assert (= (and b!7108609 c!1326481) b!7108614))

(assert (= (and b!7108609 (not c!1326481)) b!7108617))

(assert (= (and b!7108614 res!2901360) b!7108613))

(assert (= (and b!7108617 c!1326480) b!7108616))

(assert (= (and b!7108617 (not c!1326480)) b!7108615))

(assert (= (and b!7108616 res!2901357) b!7108612))

(assert (= (and b!7108615 (not res!2901361)) b!7108611))

(assert (= (and b!7108611 res!2901359) b!7108610))

(assert (= (or b!7108616 b!7108610) bm!648175))

(assert (= (or b!7108612 b!7108611) bm!648173))

(assert (= (or b!7108613 bm!648175) bm!648174))

(declare-fun m!7830592 () Bool)

(assert (=> bm!648173 m!7830592))

(declare-fun m!7830594 () Bool)

(assert (=> bm!648174 m!7830594))

(declare-fun m!7830596 () Bool)

(assert (=> b!7108614 m!7830596))

(assert (=> b!7108507 d!2219810))

(declare-fun b!7108658 () Bool)

(declare-fun e!4272232 () (Set Context!13836))

(assert (=> b!7108658 (= e!4272232 (set.insert lt!2559358 (as set.empty (Set Context!13836))))))

(declare-fun bm!648194 () Bool)

(declare-fun call!648203 () List!68885)

(declare-fun call!648199 () List!68885)

(assert (=> bm!648194 (= call!648203 call!648199)))

(declare-fun bm!648195 () Bool)

(declare-fun c!1326499 () Bool)

(declare-fun c!1326498 () Bool)

(declare-fun c!1326496 () Bool)

(declare-fun call!648200 () (Set Context!13836))

(assert (=> bm!648195 (= call!648200 (derivationStepZipperDown!2439 (ite c!1326498 (regOne!36361 r!11554) (ite c!1326496 (regTwo!36360 r!11554) (ite c!1326499 (regOne!36360 r!11554) (reg!18253 r!11554)))) (ite (or c!1326498 c!1326496) lt!2559358 (Context!13837 call!648203)) a!1901))))

(declare-fun b!7108659 () Bool)

(declare-fun e!4272230 () (Set Context!13836))

(assert (=> b!7108659 (= e!4272230 (as set.empty (Set Context!13836)))))

(declare-fun b!7108660 () Bool)

(declare-fun e!4272229 () (Set Context!13836))

(assert (=> b!7108660 (= e!4272232 e!4272229)))

(assert (=> b!7108660 (= c!1326498 (is-Union!17924 r!11554))))

(declare-fun b!7108661 () Bool)

(declare-fun call!648201 () (Set Context!13836))

(assert (=> b!7108661 (= e!4272229 (set.union call!648200 call!648201))))

(declare-fun b!7108662 () Bool)

(declare-fun e!4272231 () (Set Context!13836))

(declare-fun call!648204 () (Set Context!13836))

(assert (=> b!7108662 (= e!4272231 call!648204)))

(declare-fun bm!648196 () Bool)

(assert (=> bm!648196 (= call!648199 ($colon$colon!2782 (exprs!7418 lt!2559358) (ite (or c!1326496 c!1326499) (regTwo!36360 r!11554) r!11554)))))

(declare-fun d!2219812 () Bool)

(declare-fun c!1326500 () Bool)

(assert (=> d!2219812 (= c!1326500 (and (is-ElementMatch!17924 r!11554) (= (c!1326463 r!11554) a!1901)))))

(assert (=> d!2219812 (= (derivationStepZipperDown!2439 r!11554 lt!2559358 a!1901) e!4272232)))

(declare-fun b!7108663 () Bool)

(declare-fun e!4272233 () (Set Context!13836))

(assert (=> b!7108663 (= e!4272233 e!4272231)))

(assert (=> b!7108663 (= c!1326499 (is-Concat!26769 r!11554))))

(declare-fun b!7108664 () Bool)

(declare-fun c!1326497 () Bool)

(assert (=> b!7108664 (= c!1326497 (is-Star!17924 r!11554))))

(assert (=> b!7108664 (= e!4272231 e!4272230)))

(declare-fun b!7108665 () Bool)

(declare-fun e!4272228 () Bool)

(assert (=> b!7108665 (= c!1326496 e!4272228)))

(declare-fun res!2901374 () Bool)

(assert (=> b!7108665 (=> (not res!2901374) (not e!4272228))))

(assert (=> b!7108665 (= res!2901374 (is-Concat!26769 r!11554))))

(assert (=> b!7108665 (= e!4272229 e!4272233)))

(declare-fun b!7108666 () Bool)

(assert (=> b!7108666 (= e!4272230 call!648204)))

(declare-fun b!7108667 () Bool)

(declare-fun call!648202 () (Set Context!13836))

(assert (=> b!7108667 (= e!4272233 (set.union call!648201 call!648202))))

(declare-fun bm!648197 () Bool)

(assert (=> bm!648197 (= call!648201 (derivationStepZipperDown!2439 (ite c!1326498 (regTwo!36361 r!11554) (regOne!36360 r!11554)) (ite c!1326498 lt!2559358 (Context!13837 call!648199)) a!1901))))

(declare-fun bm!648198 () Bool)

(assert (=> bm!648198 (= call!648204 call!648202)))

(declare-fun bm!648199 () Bool)

(assert (=> bm!648199 (= call!648202 call!648200)))

(declare-fun b!7108668 () Bool)

(assert (=> b!7108668 (= e!4272228 (nullable!7561 (regOne!36360 r!11554)))))

(assert (= (and d!2219812 c!1326500) b!7108658))

(assert (= (and d!2219812 (not c!1326500)) b!7108660))

(assert (= (and b!7108660 c!1326498) b!7108661))

(assert (= (and b!7108660 (not c!1326498)) b!7108665))

(assert (= (and b!7108665 res!2901374) b!7108668))

(assert (= (and b!7108665 c!1326496) b!7108667))

(assert (= (and b!7108665 (not c!1326496)) b!7108663))

(assert (= (and b!7108663 c!1326499) b!7108662))

(assert (= (and b!7108663 (not c!1326499)) b!7108664))

(assert (= (and b!7108664 c!1326497) b!7108666))

(assert (= (and b!7108664 (not c!1326497)) b!7108659))

(assert (= (or b!7108662 b!7108666) bm!648194))

(assert (= (or b!7108662 b!7108666) bm!648198))

(assert (= (or b!7108667 bm!648198) bm!648199))

(assert (= (or b!7108667 bm!648194) bm!648196))

(assert (= (or b!7108661 b!7108667) bm!648197))

(assert (= (or b!7108661 bm!648199) bm!648195))

(declare-fun m!7830616 () Bool)

(assert (=> b!7108658 m!7830616))

(assert (=> b!7108668 m!7830508))

(declare-fun m!7830618 () Bool)

(assert (=> bm!648197 m!7830618))

(declare-fun m!7830620 () Bool)

(assert (=> bm!648196 m!7830620))

(declare-fun m!7830622 () Bool)

(assert (=> bm!648195 m!7830622))

(assert (=> b!7108501 d!2219812))

(declare-fun b!7108669 () Bool)

(declare-fun e!4272238 () (Set Context!13836))

(assert (=> b!7108669 (= e!4272238 (set.insert (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554))) (as set.empty (Set Context!13836))))))

(declare-fun bm!648200 () Bool)

(declare-fun call!648209 () List!68885)

(declare-fun call!648205 () List!68885)

(assert (=> bm!648200 (= call!648209 call!648205)))

(declare-fun c!1326503 () Bool)

(declare-fun call!648206 () (Set Context!13836))

(declare-fun c!1326501 () Bool)

(declare-fun c!1326504 () Bool)

(declare-fun bm!648201 () Bool)

(assert (=> bm!648201 (= call!648206 (derivationStepZipperDown!2439 (ite c!1326503 (regOne!36361 (regOne!36360 r!11554)) (ite c!1326501 (regTwo!36360 (regOne!36360 r!11554)) (ite c!1326504 (regOne!36360 (regOne!36360 r!11554)) (reg!18253 (regOne!36360 r!11554))))) (ite (or c!1326503 c!1326501) (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554))) (Context!13837 call!648209)) a!1901))))

(declare-fun b!7108670 () Bool)

(declare-fun e!4272236 () (Set Context!13836))

(assert (=> b!7108670 (= e!4272236 (as set.empty (Set Context!13836)))))

(declare-fun b!7108671 () Bool)

(declare-fun e!4272235 () (Set Context!13836))

(assert (=> b!7108671 (= e!4272238 e!4272235)))

(assert (=> b!7108671 (= c!1326503 (is-Union!17924 (regOne!36360 r!11554)))))

(declare-fun b!7108672 () Bool)

(declare-fun call!648207 () (Set Context!13836))

(assert (=> b!7108672 (= e!4272235 (set.union call!648206 call!648207))))

(declare-fun b!7108673 () Bool)

(declare-fun e!4272237 () (Set Context!13836))

(declare-fun call!648210 () (Set Context!13836))

(assert (=> b!7108673 (= e!4272237 call!648210)))

(declare-fun bm!648202 () Bool)

(assert (=> bm!648202 (= call!648205 ($colon$colon!2782 (exprs!7418 (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554)))) (ite (or c!1326501 c!1326504) (regTwo!36360 (regOne!36360 r!11554)) (regOne!36360 r!11554))))))

(declare-fun d!2219820 () Bool)

(declare-fun c!1326505 () Bool)

(assert (=> d!2219820 (= c!1326505 (and (is-ElementMatch!17924 (regOne!36360 r!11554)) (= (c!1326463 (regOne!36360 r!11554)) a!1901)))))

(assert (=> d!2219820 (= (derivationStepZipperDown!2439 (regOne!36360 r!11554) (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554))) a!1901) e!4272238)))

(declare-fun b!7108674 () Bool)

(declare-fun e!4272239 () (Set Context!13836))

(assert (=> b!7108674 (= e!4272239 e!4272237)))

(assert (=> b!7108674 (= c!1326504 (is-Concat!26769 (regOne!36360 r!11554)))))

(declare-fun b!7108675 () Bool)

(declare-fun c!1326502 () Bool)

(assert (=> b!7108675 (= c!1326502 (is-Star!17924 (regOne!36360 r!11554)))))

(assert (=> b!7108675 (= e!4272237 e!4272236)))

(declare-fun b!7108676 () Bool)

(declare-fun e!4272234 () Bool)

(assert (=> b!7108676 (= c!1326501 e!4272234)))

(declare-fun res!2901375 () Bool)

(assert (=> b!7108676 (=> (not res!2901375) (not e!4272234))))

(assert (=> b!7108676 (= res!2901375 (is-Concat!26769 (regOne!36360 r!11554)))))

(assert (=> b!7108676 (= e!4272235 e!4272239)))

(declare-fun b!7108677 () Bool)

(assert (=> b!7108677 (= e!4272236 call!648210)))

(declare-fun b!7108678 () Bool)

(declare-fun call!648208 () (Set Context!13836))

(assert (=> b!7108678 (= e!4272239 (set.union call!648207 call!648208))))

(declare-fun bm!648203 () Bool)

(assert (=> bm!648203 (= call!648207 (derivationStepZipperDown!2439 (ite c!1326503 (regTwo!36361 (regOne!36360 r!11554)) (regOne!36360 (regOne!36360 r!11554))) (ite c!1326503 (Context!13837 ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554))) (Context!13837 call!648205)) a!1901))))

(declare-fun bm!648204 () Bool)

(assert (=> bm!648204 (= call!648210 call!648208)))

(declare-fun bm!648205 () Bool)

(assert (=> bm!648205 (= call!648208 call!648206)))

(declare-fun b!7108679 () Bool)

(assert (=> b!7108679 (= e!4272234 (nullable!7561 (regOne!36360 (regOne!36360 r!11554))))))

(assert (= (and d!2219820 c!1326505) b!7108669))

(assert (= (and d!2219820 (not c!1326505)) b!7108671))

(assert (= (and b!7108671 c!1326503) b!7108672))

(assert (= (and b!7108671 (not c!1326503)) b!7108676))

(assert (= (and b!7108676 res!2901375) b!7108679))

(assert (= (and b!7108676 c!1326501) b!7108678))

(assert (= (and b!7108676 (not c!1326501)) b!7108674))

(assert (= (and b!7108674 c!1326504) b!7108673))

(assert (= (and b!7108674 (not c!1326504)) b!7108675))

(assert (= (and b!7108675 c!1326502) b!7108677))

(assert (= (and b!7108675 (not c!1326502)) b!7108670))

(assert (= (or b!7108673 b!7108677) bm!648200))

(assert (= (or b!7108673 b!7108677) bm!648204))

(assert (= (or b!7108678 bm!648204) bm!648205))

(assert (= (or b!7108678 bm!648200) bm!648202))

(assert (= (or b!7108672 b!7108678) bm!648203))

(assert (= (or b!7108672 bm!648205) bm!648201))

(declare-fun m!7830624 () Bool)

(assert (=> b!7108669 m!7830624))

(declare-fun m!7830626 () Bool)

(assert (=> b!7108679 m!7830626))

(declare-fun m!7830628 () Bool)

(assert (=> bm!648203 m!7830628))

(declare-fun m!7830630 () Bool)

(assert (=> bm!648202 m!7830630))

(declare-fun m!7830632 () Bool)

(assert (=> bm!648201 m!7830632))

(assert (=> b!7108501 d!2219820))

(declare-fun d!2219822 () Bool)

(assert (=> d!2219822 (= ($colon$colon!2782 lt!2559361 (regTwo!36360 r!11554)) (Cons!68761 (regTwo!36360 r!11554) lt!2559361))))

(assert (=> b!7108501 d!2219822))

(declare-fun b!7108680 () Bool)

(declare-fun e!4272244 () (Set Context!13836))

(assert (=> b!7108680 (= e!4272244 (set.insert lt!2559358 (as set.empty (Set Context!13836))))))

(declare-fun bm!648206 () Bool)

(declare-fun call!648215 () List!68885)

(declare-fun call!648211 () List!68885)

(assert (=> bm!648206 (= call!648215 call!648211)))

(declare-fun c!1326508 () Bool)

(declare-fun c!1326509 () Bool)

(declare-fun call!648212 () (Set Context!13836))

(declare-fun c!1326506 () Bool)

(declare-fun bm!648207 () Bool)

(assert (=> bm!648207 (= call!648212 (derivationStepZipperDown!2439 (ite c!1326508 (regOne!36361 (regTwo!36360 r!11554)) (ite c!1326506 (regTwo!36360 (regTwo!36360 r!11554)) (ite c!1326509 (regOne!36360 (regTwo!36360 r!11554)) (reg!18253 (regTwo!36360 r!11554))))) (ite (or c!1326508 c!1326506) lt!2559358 (Context!13837 call!648215)) a!1901))))

(declare-fun b!7108681 () Bool)

(declare-fun e!4272242 () (Set Context!13836))

(assert (=> b!7108681 (= e!4272242 (as set.empty (Set Context!13836)))))

(declare-fun b!7108682 () Bool)

(declare-fun e!4272241 () (Set Context!13836))

(assert (=> b!7108682 (= e!4272244 e!4272241)))

(assert (=> b!7108682 (= c!1326508 (is-Union!17924 (regTwo!36360 r!11554)))))

(declare-fun b!7108683 () Bool)

(declare-fun call!648213 () (Set Context!13836))

(assert (=> b!7108683 (= e!4272241 (set.union call!648212 call!648213))))

(declare-fun b!7108684 () Bool)

(declare-fun e!4272243 () (Set Context!13836))

(declare-fun call!648216 () (Set Context!13836))

(assert (=> b!7108684 (= e!4272243 call!648216)))

(declare-fun bm!648208 () Bool)

(assert (=> bm!648208 (= call!648211 ($colon$colon!2782 (exprs!7418 lt!2559358) (ite (or c!1326506 c!1326509) (regTwo!36360 (regTwo!36360 r!11554)) (regTwo!36360 r!11554))))))

(declare-fun d!2219824 () Bool)

(declare-fun c!1326510 () Bool)

(assert (=> d!2219824 (= c!1326510 (and (is-ElementMatch!17924 (regTwo!36360 r!11554)) (= (c!1326463 (regTwo!36360 r!11554)) a!1901)))))

(assert (=> d!2219824 (= (derivationStepZipperDown!2439 (regTwo!36360 r!11554) lt!2559358 a!1901) e!4272244)))

(declare-fun b!7108685 () Bool)

(declare-fun e!4272245 () (Set Context!13836))

(assert (=> b!7108685 (= e!4272245 e!4272243)))

(assert (=> b!7108685 (= c!1326509 (is-Concat!26769 (regTwo!36360 r!11554)))))

(declare-fun b!7108686 () Bool)

(declare-fun c!1326507 () Bool)

(assert (=> b!7108686 (= c!1326507 (is-Star!17924 (regTwo!36360 r!11554)))))

(assert (=> b!7108686 (= e!4272243 e!4272242)))

(declare-fun b!7108687 () Bool)

(declare-fun e!4272240 () Bool)

(assert (=> b!7108687 (= c!1326506 e!4272240)))

(declare-fun res!2901376 () Bool)

(assert (=> b!7108687 (=> (not res!2901376) (not e!4272240))))

(assert (=> b!7108687 (= res!2901376 (is-Concat!26769 (regTwo!36360 r!11554)))))

(assert (=> b!7108687 (= e!4272241 e!4272245)))

(declare-fun b!7108688 () Bool)

(assert (=> b!7108688 (= e!4272242 call!648216)))

(declare-fun b!7108689 () Bool)

(declare-fun call!648214 () (Set Context!13836))

(assert (=> b!7108689 (= e!4272245 (set.union call!648213 call!648214))))

(declare-fun bm!648209 () Bool)

(assert (=> bm!648209 (= call!648213 (derivationStepZipperDown!2439 (ite c!1326508 (regTwo!36361 (regTwo!36360 r!11554)) (regOne!36360 (regTwo!36360 r!11554))) (ite c!1326508 lt!2559358 (Context!13837 call!648211)) a!1901))))

(declare-fun bm!648210 () Bool)

(assert (=> bm!648210 (= call!648216 call!648214)))

(declare-fun bm!648211 () Bool)

(assert (=> bm!648211 (= call!648214 call!648212)))

(declare-fun b!7108690 () Bool)

(assert (=> b!7108690 (= e!4272240 (nullable!7561 (regOne!36360 (regTwo!36360 r!11554))))))

(assert (= (and d!2219824 c!1326510) b!7108680))

(assert (= (and d!2219824 (not c!1326510)) b!7108682))

(assert (= (and b!7108682 c!1326508) b!7108683))

(assert (= (and b!7108682 (not c!1326508)) b!7108687))

(assert (= (and b!7108687 res!2901376) b!7108690))

(assert (= (and b!7108687 c!1326506) b!7108689))

(assert (= (and b!7108687 (not c!1326506)) b!7108685))

(assert (= (and b!7108685 c!1326509) b!7108684))

(assert (= (and b!7108685 (not c!1326509)) b!7108686))

(assert (= (and b!7108686 c!1326507) b!7108688))

(assert (= (and b!7108686 (not c!1326507)) b!7108681))

(assert (= (or b!7108684 b!7108688) bm!648206))

(assert (= (or b!7108684 b!7108688) bm!648210))

(assert (= (or b!7108689 bm!648210) bm!648211))

(assert (= (or b!7108689 bm!648206) bm!648208))

(assert (= (or b!7108683 b!7108689) bm!648209))

(assert (= (or b!7108683 bm!648211) bm!648207))

(assert (=> b!7108680 m!7830616))

(declare-fun m!7830634 () Bool)

(assert (=> b!7108690 m!7830634))

(declare-fun m!7830636 () Bool)

(assert (=> bm!648209 m!7830636))

(declare-fun m!7830638 () Bool)

(assert (=> bm!648208 m!7830638))

(declare-fun m!7830640 () Bool)

(assert (=> bm!648207 m!7830640))

(assert (=> b!7108501 d!2219824))

(declare-fun d!2219826 () Bool)

(declare-fun nullableFct!2916 (Regex!17924) Bool)

(assert (=> d!2219826 (= (nullable!7561 (regOne!36360 r!11554)) (nullableFct!2916 (regOne!36360 r!11554)))))

(declare-fun bs!1884934 () Bool)

(assert (= bs!1884934 d!2219826))

(declare-fun m!7830642 () Bool)

(assert (=> bs!1884934 m!7830642))

(assert (=> b!7108502 d!2219826))

(declare-fun b!7108712 () Bool)

(declare-fun e!4272252 () Bool)

(declare-fun tp!1955488 () Bool)

(declare-fun tp!1955489 () Bool)

(assert (=> b!7108712 (= e!4272252 (and tp!1955488 tp!1955489))))

(declare-fun b!7108711 () Bool)

(declare-fun tp!1955485 () Bool)

(assert (=> b!7108711 (= e!4272252 tp!1955485)))

(assert (=> b!7108504 (= tp!1955447 e!4272252)))

(declare-fun b!7108709 () Bool)

(assert (=> b!7108709 (= e!4272252 tp_is_empty!45081)))

(declare-fun b!7108710 () Bool)

(declare-fun tp!1955486 () Bool)

(declare-fun tp!1955487 () Bool)

(assert (=> b!7108710 (= e!4272252 (and tp!1955486 tp!1955487))))

(assert (= (and b!7108504 (is-ElementMatch!17924 (regOne!36361 r!11554))) b!7108709))

(assert (= (and b!7108504 (is-Concat!26769 (regOne!36361 r!11554))) b!7108710))

(assert (= (and b!7108504 (is-Star!17924 (regOne!36361 r!11554))) b!7108711))

(assert (= (and b!7108504 (is-Union!17924 (regOne!36361 r!11554))) b!7108712))

(declare-fun b!7108716 () Bool)

(declare-fun e!4272253 () Bool)

(declare-fun tp!1955493 () Bool)

(declare-fun tp!1955494 () Bool)

(assert (=> b!7108716 (= e!4272253 (and tp!1955493 tp!1955494))))

(declare-fun b!7108715 () Bool)

(declare-fun tp!1955490 () Bool)

(assert (=> b!7108715 (= e!4272253 tp!1955490)))

(assert (=> b!7108504 (= tp!1955452 e!4272253)))

(declare-fun b!7108713 () Bool)

(assert (=> b!7108713 (= e!4272253 tp_is_empty!45081)))

(declare-fun b!7108714 () Bool)

(declare-fun tp!1955491 () Bool)

(declare-fun tp!1955492 () Bool)

(assert (=> b!7108714 (= e!4272253 (and tp!1955491 tp!1955492))))

(assert (= (and b!7108504 (is-ElementMatch!17924 (regTwo!36361 r!11554))) b!7108713))

(assert (= (and b!7108504 (is-Concat!26769 (regTwo!36361 r!11554))) b!7108714))

(assert (= (and b!7108504 (is-Star!17924 (regTwo!36361 r!11554))) b!7108715))

(assert (= (and b!7108504 (is-Union!17924 (regTwo!36361 r!11554))) b!7108716))

(declare-fun b!7108720 () Bool)

(declare-fun e!4272254 () Bool)

(declare-fun tp!1955498 () Bool)

(declare-fun tp!1955499 () Bool)

(assert (=> b!7108720 (= e!4272254 (and tp!1955498 tp!1955499))))

(declare-fun b!7108719 () Bool)

(declare-fun tp!1955495 () Bool)

(assert (=> b!7108719 (= e!4272254 tp!1955495)))

(assert (=> b!7108500 (= tp!1955450 e!4272254)))

(declare-fun b!7108717 () Bool)

(assert (=> b!7108717 (= e!4272254 tp_is_empty!45081)))

(declare-fun b!7108718 () Bool)

(declare-fun tp!1955496 () Bool)

(declare-fun tp!1955497 () Bool)

(assert (=> b!7108718 (= e!4272254 (and tp!1955496 tp!1955497))))

(assert (= (and b!7108500 (is-ElementMatch!17924 (reg!18253 r!11554))) b!7108717))

(assert (= (and b!7108500 (is-Concat!26769 (reg!18253 r!11554))) b!7108718))

(assert (= (and b!7108500 (is-Star!17924 (reg!18253 r!11554))) b!7108719))

(assert (= (and b!7108500 (is-Union!17924 (reg!18253 r!11554))) b!7108720))

(declare-fun b!7108724 () Bool)

(declare-fun e!4272255 () Bool)

(declare-fun tp!1955503 () Bool)

(declare-fun tp!1955504 () Bool)

(assert (=> b!7108724 (= e!4272255 (and tp!1955503 tp!1955504))))

(declare-fun b!7108723 () Bool)

(declare-fun tp!1955500 () Bool)

(assert (=> b!7108723 (= e!4272255 tp!1955500)))

(assert (=> b!7108505 (= tp!1955451 e!4272255)))

(declare-fun b!7108721 () Bool)

(assert (=> b!7108721 (= e!4272255 tp_is_empty!45081)))

(declare-fun b!7108722 () Bool)

(declare-fun tp!1955501 () Bool)

(declare-fun tp!1955502 () Bool)

(assert (=> b!7108722 (= e!4272255 (and tp!1955501 tp!1955502))))

(assert (= (and b!7108505 (is-ElementMatch!17924 (regOne!36360 r!11554))) b!7108721))

(assert (= (and b!7108505 (is-Concat!26769 (regOne!36360 r!11554))) b!7108722))

(assert (= (and b!7108505 (is-Star!17924 (regOne!36360 r!11554))) b!7108723))

(assert (= (and b!7108505 (is-Union!17924 (regOne!36360 r!11554))) b!7108724))

(declare-fun b!7108728 () Bool)

(declare-fun e!4272256 () Bool)

(declare-fun tp!1955508 () Bool)

(declare-fun tp!1955509 () Bool)

(assert (=> b!7108728 (= e!4272256 (and tp!1955508 tp!1955509))))

(declare-fun b!7108727 () Bool)

(declare-fun tp!1955505 () Bool)

(assert (=> b!7108727 (= e!4272256 tp!1955505)))

(assert (=> b!7108505 (= tp!1955449 e!4272256)))

(declare-fun b!7108725 () Bool)

(assert (=> b!7108725 (= e!4272256 tp_is_empty!45081)))

(declare-fun b!7108726 () Bool)

(declare-fun tp!1955506 () Bool)

(declare-fun tp!1955507 () Bool)

(assert (=> b!7108726 (= e!4272256 (and tp!1955506 tp!1955507))))

(assert (= (and b!7108505 (is-ElementMatch!17924 (regTwo!36360 r!11554))) b!7108725))

(assert (= (and b!7108505 (is-Concat!26769 (regTwo!36360 r!11554))) b!7108726))

(assert (= (and b!7108505 (is-Star!17924 (regTwo!36360 r!11554))) b!7108727))

(assert (= (and b!7108505 (is-Union!17924 (regTwo!36360 r!11554))) b!7108728))

(declare-fun b!7108733 () Bool)

(declare-fun e!4272259 () Bool)

(declare-fun tp!1955514 () Bool)

(declare-fun tp!1955515 () Bool)

(assert (=> b!7108733 (= e!4272259 (and tp!1955514 tp!1955515))))

(assert (=> b!7108506 (= tp!1955453 e!4272259)))

(assert (= (and b!7108506 (is-Cons!68761 (exprs!7418 auxCtx!45))) b!7108733))

(declare-fun b!7108734 () Bool)

(declare-fun e!4272260 () Bool)

(declare-fun tp!1955516 () Bool)

(declare-fun tp!1955517 () Bool)

(assert (=> b!7108734 (= e!4272260 (and tp!1955516 tp!1955517))))

(assert (=> b!7108503 (= tp!1955448 e!4272260)))

(assert (= (and b!7108503 (is-Cons!68761 (exprs!7418 c!9994))) b!7108734))

(push 1)

(assert (not b!7108598))

(assert (not b!7108733))

(assert (not b!7108718))

(assert (not b!7108724))

(assert (not b!7108727))

(assert (not b!7108710))

(assert (not b!7108690))

(assert (not b!7108668))

(assert (not b!7108728))

(assert (not bm!648173))

(assert (not bm!648170))

(assert (not bm!648207))

(assert (not bm!648195))

(assert (not b!7108726))

(assert (not b!7108572))

(assert (not b!7108719))

(assert (not b!7108720))

(assert (not d!2219806))

(assert (not d!2219826))

(assert (not b!7108716))

(assert (not b!7108722))

(assert (not bm!648162))

(assert (not bm!648209))

(assert (not b!7108597))

(assert tp_is_empty!45081)

(assert (not b!7108679))

(assert (not bm!648171))

(assert (not d!2219808))

(assert (not bm!648202))

(assert (not b!7108712))

(assert (not bm!648196))

(assert (not b!7108723))

(assert (not bm!648197))

(assert (not b!7108714))

(assert (not b!7108734))

(assert (not bm!648208))

(assert (not bm!648161))

(assert (not b!7108715))

(assert (not b!7108605))

(assert (not d!2219802))

(assert (not b!7108711))

(assert (not d!2219796))

(assert (not bm!648203))

(assert (not b!7108614))

(assert (not bm!648174))

(assert (not bm!648201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

