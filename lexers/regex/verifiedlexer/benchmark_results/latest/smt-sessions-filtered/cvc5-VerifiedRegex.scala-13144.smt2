; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718006 () Bool)

(assert start!718006)

(declare-fun b!7352696 () Bool)

(declare-fun e!4402454 () Bool)

(declare-fun tp!2088457 () Bool)

(declare-fun tp!2088454 () Bool)

(assert (=> b!7352696 (= e!4402454 (and tp!2088457 tp!2088454))))

(declare-fun b!7352697 () Bool)

(declare-fun e!4402456 () Bool)

(declare-fun tp!2088455 () Bool)

(assert (=> b!7352697 (= e!4402456 tp!2088455)))

(declare-fun b!7352698 () Bool)

(declare-fun e!4402451 () Bool)

(declare-datatypes ((C!38626 0))(
  ( (C!38627 (val!29673 Int)) )
))
(declare-datatypes ((Regex!19176 0))(
  ( (ElementMatch!19176 (c!1366048 C!38626)) (Concat!28021 (regOne!38864 Regex!19176) (regTwo!38864 Regex!19176)) (EmptyExpr!19176) (Star!19176 (reg!19505 Regex!19176)) (EmptyLang!19176) (Union!19176 (regOne!38865 Regex!19176) (regTwo!38865 Regex!19176)) )
))
(declare-datatypes ((List!71672 0))(
  ( (Nil!71548) (Cons!71548 (h!77996 Regex!19176) (t!386099 List!71672)) )
))
(declare-datatypes ((Context!16232 0))(
  ( (Context!16233 (exprs!8616 List!71672)) )
))
(declare-fun ct1!282 () Context!16232)

(declare-fun lambda!456716 () Int)

(declare-fun forall!17998 (List!71672 Int) Bool)

(assert (=> b!7352698 (= e!4402451 (forall!17998 (exprs!8616 ct1!282) lambda!456716))))

(declare-fun ct2!378 () Context!16232)

(declare-fun cWitness!61 () Context!16232)

(declare-datatypes ((Unit!165305 0))(
  ( (Unit!165306) )
))
(declare-fun lt!2612550 () Unit!165305)

(declare-fun lemmaConcatPreservesForall!1851 (List!71672 List!71672 Int) Unit!165305)

(assert (=> b!7352698 (= lt!2612550 (lemmaConcatPreservesForall!1851 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456716))))

(declare-fun b!7352699 () Bool)

(declare-fun e!4402447 () Bool)

(declare-fun e!4402452 () Bool)

(assert (=> b!7352699 (= e!4402447 e!4402452)))

(declare-fun res!2969201 () Bool)

(assert (=> b!7352699 (=> (not res!2969201) (not e!4402452))))

(declare-fun lt!2612553 () (Set Context!16232))

(assert (=> b!7352699 (= res!2969201 (set.member cWitness!61 lt!2612553))))

(declare-fun r1!2370 () Regex!19176)

(declare-fun c!10362 () C!38626)

(declare-fun derivationStepZipperDown!3002 (Regex!19176 Context!16232 C!38626) (Set Context!16232))

(assert (=> b!7352699 (= lt!2612553 (derivationStepZipperDown!3002 r1!2370 ct1!282 c!10362))))

(declare-fun b!7352700 () Bool)

(declare-fun tp!2088459 () Bool)

(assert (=> b!7352700 (= e!4402454 tp!2088459)))

(declare-fun b!7352701 () Bool)

(declare-fun e!4402455 () Bool)

(declare-fun e!4402448 () Bool)

(assert (=> b!7352701 (= e!4402455 e!4402448)))

(declare-fun res!2969197 () Bool)

(assert (=> b!7352701 (=> (not res!2969197) (not e!4402448))))

(declare-fun lt!2612554 () Context!16232)

(assert (=> b!7352701 (= res!2969197 (= lt!2612553 (derivationStepZipperDown!3002 (regOne!38864 r1!2370) lt!2612554 c!10362)))))

(declare-fun lt!2612556 () List!71672)

(assert (=> b!7352701 (= lt!2612554 (Context!16233 lt!2612556))))

(declare-fun $colon$colon!3174 (List!71672 Regex!19176) List!71672)

(assert (=> b!7352701 (= lt!2612556 ($colon$colon!3174 (exprs!8616 ct1!282) (regTwo!38864 r1!2370)))))

(declare-fun b!7352702 () Bool)

(declare-fun res!2969196 () Bool)

(assert (=> b!7352702 (=> (not res!2969196) (not e!4402455))))

(assert (=> b!7352702 (= res!2969196 (is-Concat!28021 r1!2370))))

(declare-fun b!7352703 () Bool)

(declare-fun e!4402449 () Bool)

(declare-fun tp!2088461 () Bool)

(assert (=> b!7352703 (= e!4402449 tp!2088461)))

(declare-fun b!7352704 () Bool)

(declare-fun tp_is_empty!48597 () Bool)

(assert (=> b!7352704 (= e!4402454 tp_is_empty!48597)))

(declare-fun b!7352705 () Bool)

(assert (=> b!7352705 (= e!4402448 (not e!4402451))))

(declare-fun res!2969195 () Bool)

(assert (=> b!7352705 (=> res!2969195 e!4402451)))

(declare-fun lt!2612552 () Context!16232)

(declare-fun lt!2612548 () (Set Context!16232))

(assert (=> b!7352705 (= res!2969195 (not (set.member lt!2612552 lt!2612548)))))

(declare-fun lt!2612551 () Unit!165305)

(assert (=> b!7352705 (= lt!2612551 (lemmaConcatPreservesForall!1851 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456716))))

(declare-fun ++!16994 (List!71672 List!71672) List!71672)

(assert (=> b!7352705 (set.member lt!2612552 (derivationStepZipperDown!3002 (regOne!38864 r1!2370) (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378))) c!10362))))

(assert (=> b!7352705 (= lt!2612552 (Context!16233 (++!16994 (exprs!8616 cWitness!61) (exprs!8616 ct2!378))))))

(declare-fun lt!2612549 () Unit!165305)

(assert (=> b!7352705 (= lt!2612549 (lemmaConcatPreservesForall!1851 lt!2612556 (exprs!8616 ct2!378) lambda!456716))))

(declare-fun lt!2612557 () Unit!165305)

(assert (=> b!7352705 (= lt!2612557 (lemmaConcatPreservesForall!1851 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456716))))

(declare-fun lt!2612555 () Unit!165305)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!97 (Regex!19176 Context!16232 Context!16232 Context!16232 C!38626) Unit!165305)

(assert (=> b!7352705 (= lt!2612555 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!97 (regOne!38864 r1!2370) lt!2612554 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7352706 () Bool)

(declare-fun res!2969193 () Bool)

(assert (=> b!7352706 (=> (not res!2969193) (not e!4402455))))

(declare-fun e!4402453 () Bool)

(assert (=> b!7352706 (= res!2969193 e!4402453)))

(declare-fun res!2969199 () Bool)

(assert (=> b!7352706 (=> res!2969199 e!4402453)))

(assert (=> b!7352706 (= res!2969199 (not (is-Concat!28021 r1!2370)))))

(declare-fun res!2969198 () Bool)

(assert (=> start!718006 (=> (not res!2969198) (not e!4402447))))

(declare-fun validRegex!9772 (Regex!19176) Bool)

(assert (=> start!718006 (= res!2969198 (validRegex!9772 r1!2370))))

(assert (=> start!718006 e!4402447))

(assert (=> start!718006 tp_is_empty!48597))

(declare-fun inv!91281 (Context!16232) Bool)

(assert (=> start!718006 (and (inv!91281 cWitness!61) e!4402449)))

(declare-fun e!4402450 () Bool)

(assert (=> start!718006 (and (inv!91281 ct1!282) e!4402450)))

(assert (=> start!718006 e!4402454))

(assert (=> start!718006 (and (inv!91281 ct2!378) e!4402456)))

(declare-fun b!7352707 () Bool)

(declare-fun tp!2088460 () Bool)

(assert (=> b!7352707 (= e!4402450 tp!2088460)))

(declare-fun b!7352708 () Bool)

(declare-fun res!2969200 () Bool)

(assert (=> b!7352708 (=> (not res!2969200) (not e!4402455))))

(assert (=> b!7352708 (= res!2969200 (validRegex!9772 (regTwo!38864 r1!2370)))))

(declare-fun b!7352709 () Bool)

(declare-fun nullable!8267 (Regex!19176) Bool)

(assert (=> b!7352709 (= e!4402453 (not (nullable!8267 (regOne!38864 r1!2370))))))

(declare-fun b!7352710 () Bool)

(declare-fun tp!2088458 () Bool)

(declare-fun tp!2088456 () Bool)

(assert (=> b!7352710 (= e!4402454 (and tp!2088458 tp!2088456))))

(declare-fun b!7352711 () Bool)

(assert (=> b!7352711 (= e!4402452 e!4402455)))

(declare-fun res!2969194 () Bool)

(assert (=> b!7352711 (=> (not res!2969194) (not e!4402455))))

(assert (=> b!7352711 (= res!2969194 (and (or (not (is-ElementMatch!19176 r1!2370)) (not (= c!10362 (c!1366048 r1!2370)))) (not (is-Union!19176 r1!2370))))))

(assert (=> b!7352711 (= lt!2612548 (derivationStepZipperDown!3002 r1!2370 (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378))) c!10362))))

(declare-fun lt!2612558 () Unit!165305)

(assert (=> b!7352711 (= lt!2612558 (lemmaConcatPreservesForall!1851 (exprs!8616 ct1!282) (exprs!8616 ct2!378) lambda!456716))))

(assert (= (and start!718006 res!2969198) b!7352699))

(assert (= (and b!7352699 res!2969201) b!7352711))

(assert (= (and b!7352711 res!2969194) b!7352706))

(assert (= (and b!7352706 (not res!2969199)) b!7352709))

(assert (= (and b!7352706 res!2969193) b!7352702))

(assert (= (and b!7352702 res!2969196) b!7352708))

(assert (= (and b!7352708 res!2969200) b!7352701))

(assert (= (and b!7352701 res!2969197) b!7352705))

(assert (= (and b!7352705 (not res!2969195)) b!7352698))

(assert (= start!718006 b!7352703))

(assert (= start!718006 b!7352707))

(assert (= (and start!718006 (is-ElementMatch!19176 r1!2370)) b!7352704))

(assert (= (and start!718006 (is-Concat!28021 r1!2370)) b!7352710))

(assert (= (and start!718006 (is-Star!19176 r1!2370)) b!7352700))

(assert (= (and start!718006 (is-Union!19176 r1!2370)) b!7352696))

(assert (= start!718006 b!7352697))

(declare-fun m!8013378 () Bool)

(assert (=> b!7352699 m!8013378))

(declare-fun m!8013380 () Bool)

(assert (=> b!7352699 m!8013380))

(declare-fun m!8013382 () Bool)

(assert (=> b!7352709 m!8013382))

(declare-fun m!8013384 () Bool)

(assert (=> b!7352698 m!8013384))

(declare-fun m!8013386 () Bool)

(assert (=> b!7352698 m!8013386))

(declare-fun m!8013388 () Bool)

(assert (=> b!7352711 m!8013388))

(declare-fun m!8013390 () Bool)

(assert (=> b!7352711 m!8013390))

(declare-fun m!8013392 () Bool)

(assert (=> b!7352711 m!8013392))

(declare-fun m!8013394 () Bool)

(assert (=> b!7352701 m!8013394))

(declare-fun m!8013396 () Bool)

(assert (=> b!7352701 m!8013396))

(declare-fun m!8013398 () Bool)

(assert (=> start!718006 m!8013398))

(declare-fun m!8013400 () Bool)

(assert (=> start!718006 m!8013400))

(declare-fun m!8013402 () Bool)

(assert (=> start!718006 m!8013402))

(declare-fun m!8013404 () Bool)

(assert (=> start!718006 m!8013404))

(declare-fun m!8013406 () Bool)

(assert (=> b!7352705 m!8013406))

(assert (=> b!7352705 m!8013386))

(declare-fun m!8013408 () Bool)

(assert (=> b!7352705 m!8013408))

(declare-fun m!8013410 () Bool)

(assert (=> b!7352705 m!8013410))

(declare-fun m!8013412 () Bool)

(assert (=> b!7352705 m!8013412))

(assert (=> b!7352705 m!8013386))

(declare-fun m!8013414 () Bool)

(assert (=> b!7352705 m!8013414))

(declare-fun m!8013416 () Bool)

(assert (=> b!7352705 m!8013416))

(declare-fun m!8013418 () Bool)

(assert (=> b!7352705 m!8013418))

(declare-fun m!8013420 () Bool)

(assert (=> b!7352708 m!8013420))

(push 1)

(assert tp_is_empty!48597)

(assert (not b!7352709))

(assert (not b!7352701))

(assert (not b!7352705))

(assert (not b!7352696))

(assert (not b!7352699))

(assert (not b!7352697))

(assert (not b!7352700))

(assert (not b!7352710))

(assert (not b!7352707))

(assert (not b!7352703))

(assert (not b!7352711))

(assert (not start!718006))

(assert (not b!7352698))

(assert (not b!7352708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2280863 () Bool)

(declare-fun nullableFct!3300 (Regex!19176) Bool)

(assert (=> d!2280863 (= (nullable!8267 (regOne!38864 r1!2370)) (nullableFct!3300 (regOne!38864 r1!2370)))))

(declare-fun bs!1919454 () Bool)

(assert (= bs!1919454 d!2280863))

(declare-fun m!8013470 () Bool)

(assert (=> bs!1919454 m!8013470))

(assert (=> b!7352709 d!2280863))

(declare-fun call!672779 () List!71672)

(declare-fun call!672778 () (Set Context!16232))

(declare-fun bm!672769 () Bool)

(declare-fun c!1366071 () Bool)

(assert (=> bm!672769 (= call!672778 (derivationStepZipperDown!3002 (ite c!1366071 (regOne!38865 r1!2370) (regOne!38864 r1!2370)) (ite c!1366071 ct1!282 (Context!16233 call!672779)) c!10362))))

(declare-fun d!2280865 () Bool)

(declare-fun c!1366074 () Bool)

(assert (=> d!2280865 (= c!1366074 (and (is-ElementMatch!19176 r1!2370) (= (c!1366048 r1!2370) c!10362)))))

(declare-fun e!4402522 () (Set Context!16232))

(assert (=> d!2280865 (= (derivationStepZipperDown!3002 r1!2370 ct1!282 c!10362) e!4402522)))

(declare-fun call!672774 () List!71672)

(declare-fun c!1366073 () Bool)

(declare-fun bm!672770 () Bool)

(declare-fun call!672775 () (Set Context!16232))

(declare-fun c!1366072 () Bool)

(assert (=> bm!672770 (= call!672775 (derivationStepZipperDown!3002 (ite c!1366071 (regTwo!38865 r1!2370) (ite c!1366072 (regTwo!38864 r1!2370) (ite c!1366073 (regOne!38864 r1!2370) (reg!19505 r1!2370)))) (ite (or c!1366071 c!1366072) ct1!282 (Context!16233 call!672774)) c!10362))))

(declare-fun bm!672771 () Bool)

(declare-fun call!672776 () (Set Context!16232))

(declare-fun call!672777 () (Set Context!16232))

(assert (=> bm!672771 (= call!672776 call!672777)))

(declare-fun b!7352810 () Bool)

(declare-fun e!4402517 () (Set Context!16232))

(assert (=> b!7352810 (= e!4402522 e!4402517)))

(assert (=> b!7352810 (= c!1366071 (is-Union!19176 r1!2370))))

(declare-fun b!7352811 () Bool)

(assert (=> b!7352811 (= e!4402517 (set.union call!672778 call!672775))))

(declare-fun b!7352812 () Bool)

(declare-fun c!1366070 () Bool)

(assert (=> b!7352812 (= c!1366070 (is-Star!19176 r1!2370))))

(declare-fun e!4402518 () (Set Context!16232))

(declare-fun e!4402520 () (Set Context!16232))

(assert (=> b!7352812 (= e!4402518 e!4402520)))

(declare-fun b!7352813 () Bool)

(assert (=> b!7352813 (= e!4402520 call!672776)))

(declare-fun b!7352814 () Bool)

(declare-fun e!4402519 () (Set Context!16232))

(assert (=> b!7352814 (= e!4402519 e!4402518)))

(assert (=> b!7352814 (= c!1366073 (is-Concat!28021 r1!2370))))

(declare-fun b!7352815 () Bool)

(declare-fun e!4402521 () Bool)

(assert (=> b!7352815 (= c!1366072 e!4402521)))

(declare-fun res!2969239 () Bool)

(assert (=> b!7352815 (=> (not res!2969239) (not e!4402521))))

(assert (=> b!7352815 (= res!2969239 (is-Concat!28021 r1!2370))))

(assert (=> b!7352815 (= e!4402517 e!4402519)))

(declare-fun b!7352816 () Bool)

(assert (=> b!7352816 (= e!4402519 (set.union call!672778 call!672777))))

(declare-fun b!7352817 () Bool)

(assert (=> b!7352817 (= e!4402521 (nullable!8267 (regOne!38864 r1!2370)))))

(declare-fun bm!672772 () Bool)

(assert (=> bm!672772 (= call!672774 call!672779)))

(declare-fun b!7352818 () Bool)

(assert (=> b!7352818 (= e!4402518 call!672776)))

(declare-fun b!7352819 () Bool)

(assert (=> b!7352819 (= e!4402522 (set.insert ct1!282 (as set.empty (Set Context!16232))))))

(declare-fun bm!672773 () Bool)

(assert (=> bm!672773 (= call!672777 call!672775)))

(declare-fun bm!672774 () Bool)

(assert (=> bm!672774 (= call!672779 ($colon$colon!3174 (exprs!8616 ct1!282) (ite (or c!1366072 c!1366073) (regTwo!38864 r1!2370) r1!2370)))))

(declare-fun b!7352820 () Bool)

(assert (=> b!7352820 (= e!4402520 (as set.empty (Set Context!16232)))))

(assert (= (and d!2280865 c!1366074) b!7352819))

(assert (= (and d!2280865 (not c!1366074)) b!7352810))

(assert (= (and b!7352810 c!1366071) b!7352811))

(assert (= (and b!7352810 (not c!1366071)) b!7352815))

(assert (= (and b!7352815 res!2969239) b!7352817))

(assert (= (and b!7352815 c!1366072) b!7352816))

(assert (= (and b!7352815 (not c!1366072)) b!7352814))

(assert (= (and b!7352814 c!1366073) b!7352818))

(assert (= (and b!7352814 (not c!1366073)) b!7352812))

(assert (= (and b!7352812 c!1366070) b!7352813))

(assert (= (and b!7352812 (not c!1366070)) b!7352820))

(assert (= (or b!7352818 b!7352813) bm!672772))

(assert (= (or b!7352818 b!7352813) bm!672771))

(assert (= (or b!7352816 bm!672771) bm!672773))

(assert (= (or b!7352816 bm!672772) bm!672774))

(assert (= (or b!7352811 bm!672773) bm!672770))

(assert (= (or b!7352811 b!7352816) bm!672769))

(declare-fun m!8013478 () Bool)

(assert (=> b!7352819 m!8013478))

(assert (=> b!7352817 m!8013382))

(declare-fun m!8013480 () Bool)

(assert (=> bm!672774 m!8013480))

(declare-fun m!8013482 () Bool)

(assert (=> bm!672769 m!8013482))

(declare-fun m!8013484 () Bool)

(assert (=> bm!672770 m!8013484))

(assert (=> b!7352699 d!2280865))

(declare-fun b!7352839 () Bool)

(declare-fun e!4402537 () Bool)

(declare-fun e!4402539 () Bool)

(assert (=> b!7352839 (= e!4402537 e!4402539)))

(declare-fun c!1366079 () Bool)

(assert (=> b!7352839 (= c!1366079 (is-Star!19176 (regTwo!38864 r1!2370)))))

(declare-fun b!7352840 () Bool)

(declare-fun res!2969252 () Bool)

(declare-fun e!4402542 () Bool)

(assert (=> b!7352840 (=> res!2969252 e!4402542)))

(assert (=> b!7352840 (= res!2969252 (not (is-Concat!28021 (regTwo!38864 r1!2370))))))

(declare-fun e!4402541 () Bool)

(assert (=> b!7352840 (= e!4402541 e!4402542)))

(declare-fun b!7352841 () Bool)

(declare-fun res!2969251 () Bool)

(declare-fun e!4402540 () Bool)

(assert (=> b!7352841 (=> (not res!2969251) (not e!4402540))))

(declare-fun call!672799 () Bool)

(assert (=> b!7352841 (= res!2969251 call!672799)))

(assert (=> b!7352841 (= e!4402541 e!4402540)))

(declare-fun bm!672793 () Bool)

(declare-fun c!1366080 () Bool)

(assert (=> bm!672793 (= call!672799 (validRegex!9772 (ite c!1366080 (regOne!38865 (regTwo!38864 r1!2370)) (regTwo!38864 (regTwo!38864 r1!2370)))))))

(declare-fun b!7352842 () Bool)

(assert (=> b!7352842 (= e!4402539 e!4402541)))

(assert (=> b!7352842 (= c!1366080 (is-Union!19176 (regTwo!38864 r1!2370)))))

(declare-fun b!7352843 () Bool)

(declare-fun e!4402543 () Bool)

(assert (=> b!7352843 (= e!4402542 e!4402543)))

(declare-fun res!2969250 () Bool)

(assert (=> b!7352843 (=> (not res!2969250) (not e!4402543))))

(declare-fun call!672798 () Bool)

(assert (=> b!7352843 (= res!2969250 call!672798)))

(declare-fun bm!672794 () Bool)

(declare-fun call!672800 () Bool)

(assert (=> bm!672794 (= call!672798 call!672800)))

(declare-fun b!7352844 () Bool)

(assert (=> b!7352844 (= e!4402540 call!672798)))

(declare-fun b!7352845 () Bool)

(declare-fun e!4402538 () Bool)

(assert (=> b!7352845 (= e!4402539 e!4402538)))

(declare-fun res!2969253 () Bool)

(assert (=> b!7352845 (= res!2969253 (not (nullable!8267 (reg!19505 (regTwo!38864 r1!2370)))))))

(assert (=> b!7352845 (=> (not res!2969253) (not e!4402538))))

(declare-fun bm!672795 () Bool)

(assert (=> bm!672795 (= call!672800 (validRegex!9772 (ite c!1366079 (reg!19505 (regTwo!38864 r1!2370)) (ite c!1366080 (regTwo!38865 (regTwo!38864 r1!2370)) (regOne!38864 (regTwo!38864 r1!2370))))))))

(declare-fun d!2280869 () Bool)

(declare-fun res!2969254 () Bool)

(assert (=> d!2280869 (=> res!2969254 e!4402537)))

(assert (=> d!2280869 (= res!2969254 (is-ElementMatch!19176 (regTwo!38864 r1!2370)))))

(assert (=> d!2280869 (= (validRegex!9772 (regTwo!38864 r1!2370)) e!4402537)))

(declare-fun b!7352846 () Bool)

(assert (=> b!7352846 (= e!4402538 call!672800)))

(declare-fun b!7352847 () Bool)

(assert (=> b!7352847 (= e!4402543 call!672799)))

(assert (= (and d!2280869 (not res!2969254)) b!7352839))

(assert (= (and b!7352839 c!1366079) b!7352845))

(assert (= (and b!7352839 (not c!1366079)) b!7352842))

(assert (= (and b!7352845 res!2969253) b!7352846))

(assert (= (and b!7352842 c!1366080) b!7352841))

(assert (= (and b!7352842 (not c!1366080)) b!7352840))

(assert (= (and b!7352841 res!2969251) b!7352844))

(assert (= (and b!7352840 (not res!2969252)) b!7352843))

(assert (= (and b!7352843 res!2969250) b!7352847))

(assert (= (or b!7352841 b!7352847) bm!672793))

(assert (= (or b!7352844 b!7352843) bm!672794))

(assert (= (or b!7352846 bm!672794) bm!672795))

(declare-fun m!8013486 () Bool)

(assert (=> bm!672793 m!8013486))

(declare-fun m!8013488 () Bool)

(assert (=> b!7352845 m!8013488))

(declare-fun m!8013490 () Bool)

(assert (=> bm!672795 m!8013490))

(assert (=> b!7352708 d!2280869))

(declare-fun d!2280871 () Bool)

(declare-fun res!2969259 () Bool)

(declare-fun e!4402548 () Bool)

(assert (=> d!2280871 (=> res!2969259 e!4402548)))

(assert (=> d!2280871 (= res!2969259 (is-Nil!71548 (exprs!8616 ct1!282)))))

(assert (=> d!2280871 (= (forall!17998 (exprs!8616 ct1!282) lambda!456716) e!4402548)))

(declare-fun b!7352852 () Bool)

(declare-fun e!4402549 () Bool)

(assert (=> b!7352852 (= e!4402548 e!4402549)))

(declare-fun res!2969260 () Bool)

(assert (=> b!7352852 (=> (not res!2969260) (not e!4402549))))

(declare-fun dynLambda!29499 (Int Regex!19176) Bool)

(assert (=> b!7352852 (= res!2969260 (dynLambda!29499 lambda!456716 (h!77996 (exprs!8616 ct1!282))))))

(declare-fun b!7352853 () Bool)

(assert (=> b!7352853 (= e!4402549 (forall!17998 (t!386099 (exprs!8616 ct1!282)) lambda!456716))))

(assert (= (and d!2280871 (not res!2969259)) b!7352852))

(assert (= (and b!7352852 res!2969260) b!7352853))

(declare-fun b_lambda!284173 () Bool)

(assert (=> (not b_lambda!284173) (not b!7352852)))

(declare-fun m!8013492 () Bool)

(assert (=> b!7352852 m!8013492))

(declare-fun m!8013494 () Bool)

(assert (=> b!7352853 m!8013494))

(assert (=> b!7352698 d!2280871))

(declare-fun d!2280873 () Bool)

(assert (=> d!2280873 (forall!17998 (++!16994 (exprs!8616 cWitness!61) (exprs!8616 ct2!378)) lambda!456716)))

(declare-fun lt!2612597 () Unit!165305)

(declare-fun choose!57197 (List!71672 List!71672 Int) Unit!165305)

(assert (=> d!2280873 (= lt!2612597 (choose!57197 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456716))))

(assert (=> d!2280873 (forall!17998 (exprs!8616 cWitness!61) lambda!456716)))

(assert (=> d!2280873 (= (lemmaConcatPreservesForall!1851 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456716) lt!2612597)))

(declare-fun bs!1919456 () Bool)

(assert (= bs!1919456 d!2280873))

(assert (=> bs!1919456 m!8013414))

(assert (=> bs!1919456 m!8013414))

(declare-fun m!8013496 () Bool)

(assert (=> bs!1919456 m!8013496))

(declare-fun m!8013498 () Bool)

(assert (=> bs!1919456 m!8013498))

(declare-fun m!8013500 () Bool)

(assert (=> bs!1919456 m!8013500))

(assert (=> b!7352698 d!2280873))

(declare-fun call!672806 () List!71672)

(declare-fun bm!672796 () Bool)

(declare-fun call!672805 () (Set Context!16232))

(declare-fun c!1366082 () Bool)

(assert (=> bm!672796 (= call!672805 (derivationStepZipperDown!3002 (ite c!1366082 (regOne!38865 (regOne!38864 r1!2370)) (regOne!38864 (regOne!38864 r1!2370))) (ite c!1366082 lt!2612554 (Context!16233 call!672806)) c!10362))))

(declare-fun d!2280875 () Bool)

(declare-fun c!1366085 () Bool)

(assert (=> d!2280875 (= c!1366085 (and (is-ElementMatch!19176 (regOne!38864 r1!2370)) (= (c!1366048 (regOne!38864 r1!2370)) c!10362)))))

(declare-fun e!4402555 () (Set Context!16232))

(assert (=> d!2280875 (= (derivationStepZipperDown!3002 (regOne!38864 r1!2370) lt!2612554 c!10362) e!4402555)))

(declare-fun c!1366084 () Bool)

(declare-fun call!672801 () List!71672)

(declare-fun bm!672797 () Bool)

(declare-fun call!672802 () (Set Context!16232))

(declare-fun c!1366083 () Bool)

(assert (=> bm!672797 (= call!672802 (derivationStepZipperDown!3002 (ite c!1366082 (regTwo!38865 (regOne!38864 r1!2370)) (ite c!1366083 (regTwo!38864 (regOne!38864 r1!2370)) (ite c!1366084 (regOne!38864 (regOne!38864 r1!2370)) (reg!19505 (regOne!38864 r1!2370))))) (ite (or c!1366082 c!1366083) lt!2612554 (Context!16233 call!672801)) c!10362))))

(declare-fun bm!672798 () Bool)

(declare-fun call!672803 () (Set Context!16232))

(declare-fun call!672804 () (Set Context!16232))

(assert (=> bm!672798 (= call!672803 call!672804)))

(declare-fun b!7352854 () Bool)

(declare-fun e!4402550 () (Set Context!16232))

(assert (=> b!7352854 (= e!4402555 e!4402550)))

(assert (=> b!7352854 (= c!1366082 (is-Union!19176 (regOne!38864 r1!2370)))))

(declare-fun b!7352855 () Bool)

(assert (=> b!7352855 (= e!4402550 (set.union call!672805 call!672802))))

(declare-fun b!7352856 () Bool)

(declare-fun c!1366081 () Bool)

(assert (=> b!7352856 (= c!1366081 (is-Star!19176 (regOne!38864 r1!2370)))))

(declare-fun e!4402551 () (Set Context!16232))

(declare-fun e!4402553 () (Set Context!16232))

(assert (=> b!7352856 (= e!4402551 e!4402553)))

(declare-fun b!7352857 () Bool)

(assert (=> b!7352857 (= e!4402553 call!672803)))

(declare-fun b!7352858 () Bool)

(declare-fun e!4402552 () (Set Context!16232))

(assert (=> b!7352858 (= e!4402552 e!4402551)))

(assert (=> b!7352858 (= c!1366084 (is-Concat!28021 (regOne!38864 r1!2370)))))

(declare-fun b!7352859 () Bool)

(declare-fun e!4402554 () Bool)

(assert (=> b!7352859 (= c!1366083 e!4402554)))

(declare-fun res!2969261 () Bool)

(assert (=> b!7352859 (=> (not res!2969261) (not e!4402554))))

(assert (=> b!7352859 (= res!2969261 (is-Concat!28021 (regOne!38864 r1!2370)))))

(assert (=> b!7352859 (= e!4402550 e!4402552)))

(declare-fun b!7352860 () Bool)

(assert (=> b!7352860 (= e!4402552 (set.union call!672805 call!672804))))

(declare-fun b!7352861 () Bool)

(assert (=> b!7352861 (= e!4402554 (nullable!8267 (regOne!38864 (regOne!38864 r1!2370))))))

(declare-fun bm!672799 () Bool)

(assert (=> bm!672799 (= call!672801 call!672806)))

(declare-fun b!7352862 () Bool)

(assert (=> b!7352862 (= e!4402551 call!672803)))

(declare-fun b!7352863 () Bool)

(assert (=> b!7352863 (= e!4402555 (set.insert lt!2612554 (as set.empty (Set Context!16232))))))

(declare-fun bm!672800 () Bool)

(assert (=> bm!672800 (= call!672804 call!672802)))

(declare-fun bm!672801 () Bool)

(assert (=> bm!672801 (= call!672806 ($colon$colon!3174 (exprs!8616 lt!2612554) (ite (or c!1366083 c!1366084) (regTwo!38864 (regOne!38864 r1!2370)) (regOne!38864 r1!2370))))))

(declare-fun b!7352864 () Bool)

(assert (=> b!7352864 (= e!4402553 (as set.empty (Set Context!16232)))))

(assert (= (and d!2280875 c!1366085) b!7352863))

(assert (= (and d!2280875 (not c!1366085)) b!7352854))

(assert (= (and b!7352854 c!1366082) b!7352855))

(assert (= (and b!7352854 (not c!1366082)) b!7352859))

(assert (= (and b!7352859 res!2969261) b!7352861))

(assert (= (and b!7352859 c!1366083) b!7352860))

(assert (= (and b!7352859 (not c!1366083)) b!7352858))

(assert (= (and b!7352858 c!1366084) b!7352862))

(assert (= (and b!7352858 (not c!1366084)) b!7352856))

(assert (= (and b!7352856 c!1366081) b!7352857))

(assert (= (and b!7352856 (not c!1366081)) b!7352864))

(assert (= (or b!7352862 b!7352857) bm!672799))

(assert (= (or b!7352862 b!7352857) bm!672798))

(assert (= (or b!7352860 bm!672798) bm!672800))

(assert (= (or b!7352860 bm!672799) bm!672801))

(assert (= (or b!7352855 bm!672800) bm!672797))

(assert (= (or b!7352855 b!7352860) bm!672796))

(declare-fun m!8013502 () Bool)

(assert (=> b!7352863 m!8013502))

(declare-fun m!8013504 () Bool)

(assert (=> b!7352861 m!8013504))

(declare-fun m!8013506 () Bool)

(assert (=> bm!672801 m!8013506))

(declare-fun m!8013508 () Bool)

(assert (=> bm!672796 m!8013508))

(declare-fun m!8013510 () Bool)

(assert (=> bm!672797 m!8013510))

(assert (=> b!7352701 d!2280875))

(declare-fun d!2280877 () Bool)

(assert (=> d!2280877 (= ($colon$colon!3174 (exprs!8616 ct1!282) (regTwo!38864 r1!2370)) (Cons!71548 (regTwo!38864 r1!2370) (exprs!8616 ct1!282)))))

(assert (=> b!7352701 d!2280877))

(declare-fun bs!1919457 () Bool)

(declare-fun d!2280879 () Bool)

(assert (= bs!1919457 (and d!2280879 b!7352711)))

(declare-fun lambda!456734 () Int)

(assert (=> bs!1919457 (= lambda!456734 lambda!456716)))

(assert (=> d!2280879 (set.member (Context!16233 (++!16994 (exprs!8616 cWitness!61) (exprs!8616 ct2!378))) (derivationStepZipperDown!3002 (regOne!38864 r1!2370) (Context!16233 (++!16994 (exprs!8616 lt!2612554) (exprs!8616 ct2!378))) c!10362))))

(declare-fun lt!2612606 () Unit!165305)

(assert (=> d!2280879 (= lt!2612606 (lemmaConcatPreservesForall!1851 (exprs!8616 lt!2612554) (exprs!8616 ct2!378) lambda!456734))))

(declare-fun lt!2612605 () Unit!165305)

(assert (=> d!2280879 (= lt!2612605 (lemmaConcatPreservesForall!1851 (exprs!8616 cWitness!61) (exprs!8616 ct2!378) lambda!456734))))

(declare-fun lt!2612604 () Unit!165305)

(declare-fun choose!57198 (Regex!19176 Context!16232 Context!16232 Context!16232 C!38626) Unit!165305)

(assert (=> d!2280879 (= lt!2612604 (choose!57198 (regOne!38864 r1!2370) lt!2612554 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280879 (validRegex!9772 (regOne!38864 r1!2370))))

(assert (=> d!2280879 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!97 (regOne!38864 r1!2370) lt!2612554 ct2!378 cWitness!61 c!10362) lt!2612604)))

(declare-fun bs!1919458 () Bool)

(assert (= bs!1919458 d!2280879))

(declare-fun m!8013522 () Bool)

(assert (=> bs!1919458 m!8013522))

(declare-fun m!8013524 () Bool)

(assert (=> bs!1919458 m!8013524))

(declare-fun m!8013526 () Bool)

(assert (=> bs!1919458 m!8013526))

(declare-fun m!8013528 () Bool)

(assert (=> bs!1919458 m!8013528))

(declare-fun m!8013530 () Bool)

(assert (=> bs!1919458 m!8013530))

(declare-fun m!8013532 () Bool)

(assert (=> bs!1919458 m!8013532))

(assert (=> bs!1919458 m!8013414))

(declare-fun m!8013534 () Bool)

(assert (=> bs!1919458 m!8013534))

(assert (=> b!7352705 d!2280879))

(declare-fun b!7352896 () Bool)

(declare-fun e!4402572 () List!71672)

(assert (=> b!7352896 (= e!4402572 (Cons!71548 (h!77996 (exprs!8616 cWitness!61)) (++!16994 (t!386099 (exprs!8616 cWitness!61)) (exprs!8616 ct2!378))))))

(declare-fun d!2280885 () Bool)

(declare-fun e!4402573 () Bool)

(assert (=> d!2280885 e!4402573))

(declare-fun res!2969269 () Bool)

(assert (=> d!2280885 (=> (not res!2969269) (not e!4402573))))

(declare-fun lt!2612609 () List!71672)

(declare-fun content!15082 (List!71672) (Set Regex!19176))

(assert (=> d!2280885 (= res!2969269 (= (content!15082 lt!2612609) (set.union (content!15082 (exprs!8616 cWitness!61)) (content!15082 (exprs!8616 ct2!378)))))))

(assert (=> d!2280885 (= lt!2612609 e!4402572)))

(declare-fun c!1366099 () Bool)

(assert (=> d!2280885 (= c!1366099 (is-Nil!71548 (exprs!8616 cWitness!61)))))

(assert (=> d!2280885 (= (++!16994 (exprs!8616 cWitness!61) (exprs!8616 ct2!378)) lt!2612609)))

(declare-fun b!7352895 () Bool)

(assert (=> b!7352895 (= e!4402572 (exprs!8616 ct2!378))))

(declare-fun b!7352898 () Bool)

(assert (=> b!7352898 (= e!4402573 (or (not (= (exprs!8616 ct2!378) Nil!71548)) (= lt!2612609 (exprs!8616 cWitness!61))))))

(declare-fun b!7352897 () Bool)

(declare-fun res!2969268 () Bool)

(assert (=> b!7352897 (=> (not res!2969268) (not e!4402573))))

(declare-fun size!42061 (List!71672) Int)

(assert (=> b!7352897 (= res!2969268 (= (size!42061 lt!2612609) (+ (size!42061 (exprs!8616 cWitness!61)) (size!42061 (exprs!8616 ct2!378)))))))

(assert (= (and d!2280885 c!1366099) b!7352895))

(assert (= (and d!2280885 (not c!1366099)) b!7352896))

(assert (= (and d!2280885 res!2969269) b!7352897))

(assert (= (and b!7352897 res!2969268) b!7352898))

(declare-fun m!8013544 () Bool)

(assert (=> b!7352896 m!8013544))

(declare-fun m!8013546 () Bool)

(assert (=> d!2280885 m!8013546))

(declare-fun m!8013548 () Bool)

(assert (=> d!2280885 m!8013548))

(declare-fun m!8013550 () Bool)

(assert (=> d!2280885 m!8013550))

(declare-fun m!8013552 () Bool)

(assert (=> b!7352897 m!8013552))

(declare-fun m!8013554 () Bool)

(assert (=> b!7352897 m!8013554))

(declare-fun m!8013556 () Bool)

(assert (=> b!7352897 m!8013556))

(assert (=> b!7352705 d!2280885))

(assert (=> b!7352705 d!2280873))

(declare-fun b!7352900 () Bool)

(declare-fun e!4402574 () List!71672)

(assert (=> b!7352900 (= e!4402574 (Cons!71548 (h!77996 lt!2612556) (++!16994 (t!386099 lt!2612556) (exprs!8616 ct2!378))))))

(declare-fun d!2280889 () Bool)

(declare-fun e!4402575 () Bool)

(assert (=> d!2280889 e!4402575))

(declare-fun res!2969271 () Bool)

(assert (=> d!2280889 (=> (not res!2969271) (not e!4402575))))

(declare-fun lt!2612610 () List!71672)

(assert (=> d!2280889 (= res!2969271 (= (content!15082 lt!2612610) (set.union (content!15082 lt!2612556) (content!15082 (exprs!8616 ct2!378)))))))

(assert (=> d!2280889 (= lt!2612610 e!4402574)))

(declare-fun c!1366100 () Bool)

(assert (=> d!2280889 (= c!1366100 (is-Nil!71548 lt!2612556))))

(assert (=> d!2280889 (= (++!16994 lt!2612556 (exprs!8616 ct2!378)) lt!2612610)))

(declare-fun b!7352899 () Bool)

(assert (=> b!7352899 (= e!4402574 (exprs!8616 ct2!378))))

(declare-fun b!7352902 () Bool)

(assert (=> b!7352902 (= e!4402575 (or (not (= (exprs!8616 ct2!378) Nil!71548)) (= lt!2612610 lt!2612556)))))

(declare-fun b!7352901 () Bool)

(declare-fun res!2969270 () Bool)

(assert (=> b!7352901 (=> (not res!2969270) (not e!4402575))))

(assert (=> b!7352901 (= res!2969270 (= (size!42061 lt!2612610) (+ (size!42061 lt!2612556) (size!42061 (exprs!8616 ct2!378)))))))

(assert (= (and d!2280889 c!1366100) b!7352899))

(assert (= (and d!2280889 (not c!1366100)) b!7352900))

(assert (= (and d!2280889 res!2969271) b!7352901))

(assert (= (and b!7352901 res!2969270) b!7352902))

(declare-fun m!8013558 () Bool)

(assert (=> b!7352900 m!8013558))

(declare-fun m!8013560 () Bool)

(assert (=> d!2280889 m!8013560))

(declare-fun m!8013562 () Bool)

(assert (=> d!2280889 m!8013562))

(assert (=> d!2280889 m!8013550))

(declare-fun m!8013564 () Bool)

(assert (=> b!7352901 m!8013564))

(declare-fun m!8013566 () Bool)

(assert (=> b!7352901 m!8013566))

(assert (=> b!7352901 m!8013556))

(assert (=> b!7352705 d!2280889))

(declare-fun call!672824 () List!71672)

(declare-fun bm!672814 () Bool)

(declare-fun c!1366102 () Bool)

(declare-fun call!672823 () (Set Context!16232))

(assert (=> bm!672814 (= call!672823 (derivationStepZipperDown!3002 (ite c!1366102 (regOne!38865 (regOne!38864 r1!2370)) (regOne!38864 (regOne!38864 r1!2370))) (ite c!1366102 (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378))) (Context!16233 call!672824)) c!10362))))

(declare-fun d!2280891 () Bool)

(declare-fun c!1366105 () Bool)

(assert (=> d!2280891 (= c!1366105 (and (is-ElementMatch!19176 (regOne!38864 r1!2370)) (= (c!1366048 (regOne!38864 r1!2370)) c!10362)))))

(declare-fun e!4402583 () (Set Context!16232))

(assert (=> d!2280891 (= (derivationStepZipperDown!3002 (regOne!38864 r1!2370) (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378))) c!10362) e!4402583)))

(declare-fun call!672820 () (Set Context!16232))

(declare-fun c!1366103 () Bool)

(declare-fun call!672819 () List!71672)

(declare-fun c!1366104 () Bool)

(declare-fun bm!672815 () Bool)

(assert (=> bm!672815 (= call!672820 (derivationStepZipperDown!3002 (ite c!1366102 (regTwo!38865 (regOne!38864 r1!2370)) (ite c!1366103 (regTwo!38864 (regOne!38864 r1!2370)) (ite c!1366104 (regOne!38864 (regOne!38864 r1!2370)) (reg!19505 (regOne!38864 r1!2370))))) (ite (or c!1366102 c!1366103) (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378))) (Context!16233 call!672819)) c!10362))))

(declare-fun bm!672816 () Bool)

(declare-fun call!672821 () (Set Context!16232))

(declare-fun call!672822 () (Set Context!16232))

(assert (=> bm!672816 (= call!672821 call!672822)))

(declare-fun b!7352905 () Bool)

(declare-fun e!4402578 () (Set Context!16232))

(assert (=> b!7352905 (= e!4402583 e!4402578)))

(assert (=> b!7352905 (= c!1366102 (is-Union!19176 (regOne!38864 r1!2370)))))

(declare-fun b!7352906 () Bool)

(assert (=> b!7352906 (= e!4402578 (set.union call!672823 call!672820))))

(declare-fun b!7352907 () Bool)

(declare-fun c!1366101 () Bool)

(assert (=> b!7352907 (= c!1366101 (is-Star!19176 (regOne!38864 r1!2370)))))

(declare-fun e!4402579 () (Set Context!16232))

(declare-fun e!4402581 () (Set Context!16232))

(assert (=> b!7352907 (= e!4402579 e!4402581)))

(declare-fun b!7352908 () Bool)

(assert (=> b!7352908 (= e!4402581 call!672821)))

(declare-fun b!7352909 () Bool)

(declare-fun e!4402580 () (Set Context!16232))

(assert (=> b!7352909 (= e!4402580 e!4402579)))

(assert (=> b!7352909 (= c!1366104 (is-Concat!28021 (regOne!38864 r1!2370)))))

(declare-fun b!7352910 () Bool)

(declare-fun e!4402582 () Bool)

(assert (=> b!7352910 (= c!1366103 e!4402582)))

(declare-fun res!2969274 () Bool)

(assert (=> b!7352910 (=> (not res!2969274) (not e!4402582))))

(assert (=> b!7352910 (= res!2969274 (is-Concat!28021 (regOne!38864 r1!2370)))))

(assert (=> b!7352910 (= e!4402578 e!4402580)))

(declare-fun b!7352911 () Bool)

(assert (=> b!7352911 (= e!4402580 (set.union call!672823 call!672822))))

(declare-fun b!7352912 () Bool)

(assert (=> b!7352912 (= e!4402582 (nullable!8267 (regOne!38864 (regOne!38864 r1!2370))))))

(declare-fun bm!672817 () Bool)

(assert (=> bm!672817 (= call!672819 call!672824)))

(declare-fun b!7352913 () Bool)

(assert (=> b!7352913 (= e!4402579 call!672821)))

(declare-fun b!7352914 () Bool)

(assert (=> b!7352914 (= e!4402583 (set.insert (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378))) (as set.empty (Set Context!16232))))))

(declare-fun bm!672818 () Bool)

(assert (=> bm!672818 (= call!672822 call!672820)))

(declare-fun bm!672819 () Bool)

(assert (=> bm!672819 (= call!672824 ($colon$colon!3174 (exprs!8616 (Context!16233 (++!16994 lt!2612556 (exprs!8616 ct2!378)))) (ite (or c!1366103 c!1366104) (regTwo!38864 (regOne!38864 r1!2370)) (regOne!38864 r1!2370))))))

(declare-fun b!7352915 () Bool)

(assert (=> b!7352915 (= e!4402581 (as set.empty (Set Context!16232)))))

(assert (= (and d!2280891 c!1366105) b!7352914))

(assert (= (and d!2280891 (not c!1366105)) b!7352905))

(assert (= (and b!7352905 c!1366102) b!7352906))

(assert (= (and b!7352905 (not c!1366102)) b!7352910))

(assert (= (and b!7352910 res!2969274) b!7352912))

(assert (= (and b!7352910 c!1366103) b!7352911))

(assert (= (and b!7352910 (not c!1366103)) b!7352909))

(assert (= (and b!7352909 c!1366104) b!7352913))

(assert (= (and b!7352909 (not c!1366104)) b!7352907))

(assert (= (and b!7352907 c!1366101) b!7352908))

(assert (= (and b!7352907 (not c!1366101)) b!7352915))

(assert (= (or b!7352913 b!7352908) bm!672817))

(assert (= (or b!7352913 b!7352908) bm!672816))

(assert (= (or b!7352911 bm!672816) bm!672818))

(assert (= (or b!7352911 bm!672817) bm!672819))

(assert (= (or b!7352906 bm!672818) bm!672815))

(assert (= (or b!7352906 b!7352911) bm!672814))

(declare-fun m!8013568 () Bool)

(assert (=> b!7352914 m!8013568))

(assert (=> b!7352912 m!8013504))

(declare-fun m!8013570 () Bool)

(assert (=> bm!672819 m!8013570))

(declare-fun m!8013572 () Bool)

(assert (=> bm!672814 m!8013572))

(declare-fun m!8013574 () Bool)

(assert (=> bm!672815 m!8013574))

(assert (=> b!7352705 d!2280891))

(declare-fun d!2280893 () Bool)

(assert (=> d!2280893 (forall!17998 (++!16994 lt!2612556 (exprs!8616 ct2!378)) lambda!456716)))

(declare-fun lt!2612611 () Unit!165305)

(assert (=> d!2280893 (= lt!2612611 (choose!57197 lt!2612556 (exprs!8616 ct2!378) lambda!456716))))

(assert (=> d!2280893 (forall!17998 lt!2612556 lambda!456716)))

(assert (=> d!2280893 (= (lemmaConcatPreservesForall!1851 lt!2612556 (exprs!8616 ct2!378) lambda!456716) lt!2612611)))

(declare-fun bs!1919459 () Bool)

(assert (= bs!1919459 d!2280893))

(assert (=> bs!1919459 m!8013406))

(assert (=> bs!1919459 m!8013406))

(declare-fun m!8013576 () Bool)

(assert (=> bs!1919459 m!8013576))

(declare-fun m!8013578 () Bool)

(assert (=> bs!1919459 m!8013578))

(declare-fun m!8013580 () Bool)

(assert (=> bs!1919459 m!8013580))

(assert (=> b!7352705 d!2280893))

(declare-fun b!7352932 () Bool)

(declare-fun e!4402596 () Bool)

(declare-fun e!4402598 () Bool)

(assert (=> b!7352932 (= e!4402596 e!4402598)))

(declare-fun c!1366110 () Bool)

(assert (=> b!7352932 (= c!1366110 (is-Star!19176 r1!2370))))

(declare-fun b!7352933 () Bool)

(declare-fun res!2969285 () Bool)

(declare-fun e!4402601 () Bool)

(assert (=> b!7352933 (=> res!2969285 e!4402601)))

(assert (=> b!7352933 (= res!2969285 (not (is-Concat!28021 r1!2370)))))

(declare-fun e!4402600 () Bool)

(assert (=> b!7352933 (= e!4402600 e!4402601)))

(declare-fun b!7352934 () Bool)

(declare-fun res!2969284 () Bool)

(declare-fun e!4402599 () Bool)

(assert (=> b!7352934 (=> (not res!2969284) (not e!4402599))))

(declare-fun call!672828 () Bool)

(assert (=> b!7352934 (= res!2969284 call!672828)))

(assert (=> b!7352934 (= e!4402600 e!4402599)))

(declare-fun bm!672820 () Bool)

(declare-fun c!1366111 () Bool)

(assert (=> bm!672820 (= call!672828 (validRegex!9772 (ite c!1366111 (regOne!38865 r1!2370) (regTwo!38864 r1!2370))))))

(declare-fun b!7352935 () Bool)

(assert (=> b!7352935 (= e!4402598 e!4402600)))

(assert (=> b!7352935 (= c!1366111 (is-Union!19176 r1!2370))))

(declare-fun b!7352936 () Bool)

(declare-fun e!4402602 () Bool)

(assert (=> b!7352936 (= e!4402601 e!4402602)))

(declare-fun res!2969283 () Bool)

(assert (=> b!7352936 (=> (not res!2969283) (not e!4402602))))

(declare-fun call!672827 () Bool)

(assert (=> b!7352936 (= res!2969283 call!672827)))

(declare-fun bm!672821 () Bool)

(declare-fun call!672829 () Bool)

(assert (=> bm!672821 (= call!672827 call!672829)))

(declare-fun b!7352937 () Bool)

(assert (=> b!7352937 (= e!4402599 call!672827)))

(declare-fun b!7352938 () Bool)

(declare-fun e!4402597 () Bool)

(assert (=> b!7352938 (= e!4402598 e!4402597)))

(declare-fun res!2969286 () Bool)

(assert (=> b!7352938 (= res!2969286 (not (nullable!8267 (reg!19505 r1!2370))))))

(assert (=> b!7352938 (=> (not res!2969286) (not e!4402597))))

(declare-fun bm!672822 () Bool)

(assert (=> bm!672822 (= call!672829 (validRegex!9772 (ite c!1366110 (reg!19505 r1!2370) (ite c!1366111 (regTwo!38865 r1!2370) (regOne!38864 r1!2370)))))))

(declare-fun d!2280895 () Bool)

(declare-fun res!2969287 () Bool)

(assert (=> d!2280895 (=> res!2969287 e!4402596)))

(assert (=> d!2280895 (= res!2969287 (is-ElementMatch!19176 r1!2370))))

(assert (=> d!2280895 (= (validRegex!9772 r1!2370) e!4402596)))

(declare-fun b!7352939 () Bool)

(assert (=> b!7352939 (= e!4402597 call!672829)))

(declare-fun b!7352940 () Bool)

(assert (=> b!7352940 (= e!4402602 call!672828)))

(assert (= (and d!2280895 (not res!2969287)) b!7352932))

(assert (= (and b!7352932 c!1366110) b!7352938))

(assert (= (and b!7352932 (not c!1366110)) b!7352935))

(assert (= (and b!7352938 res!2969286) b!7352939))

(assert (= (and b!7352935 c!1366111) b!7352934))

(assert (= (and b!7352935 (not c!1366111)) b!7352933))

(assert (= (and b!7352934 res!2969284) b!7352937))

(assert (= (and b!7352933 (not res!2969285)) b!7352936))

(assert (= (and b!7352936 res!2969283) b!7352940))

(assert (= (or b!7352934 b!7352940) bm!672820))

(assert (= (or b!7352937 b!7352936) bm!672821))

(assert (= (or b!7352939 bm!672821) bm!672822))

(declare-fun m!8013582 () Bool)

(assert (=> bm!672820 m!8013582))

(declare-fun m!8013584 () Bool)

(assert (=> b!7352938 m!8013584))

(declare-fun m!8013586 () Bool)

(assert (=> bm!672822 m!8013586))

(assert (=> start!718006 d!2280895))

(declare-fun bs!1919460 () Bool)

(declare-fun d!2280897 () Bool)

(assert (= bs!1919460 (and d!2280897 b!7352711)))

(declare-fun lambda!456737 () Int)

(assert (=> bs!1919460 (= lambda!456737 lambda!456716)))

(declare-fun bs!1919461 () Bool)

(assert (= bs!1919461 (and d!2280897 d!2280879)))

(assert (=> bs!1919461 (= lambda!456737 lambda!456734)))

(assert (=> d!2280897 (= (inv!91281 cWitness!61) (forall!17998 (exprs!8616 cWitness!61) lambda!456737))))

(declare-fun bs!1919462 () Bool)

(assert (= bs!1919462 d!2280897))

(declare-fun m!8013588 () Bool)

(assert (=> bs!1919462 m!8013588))

(assert (=> start!718006 d!2280897))

(declare-fun bs!1919463 () Bool)

(declare-fun d!2280899 () Bool)

(assert (= bs!1919463 (and d!2280899 b!7352711)))

(declare-fun lambda!456738 () Int)

(assert (=> bs!1919463 (= lambda!456738 lambda!456716)))

(declare-fun bs!1919464 () Bool)

(assert (= bs!1919464 (and d!2280899 d!2280879)))

(assert (=> bs!1919464 (= lambda!456738 lambda!456734)))

(declare-fun bs!1919465 () Bool)

(assert (= bs!1919465 (and d!2280899 d!2280897)))

(assert (=> bs!1919465 (= lambda!456738 lambda!456737)))

(assert (=> d!2280899 (= (inv!91281 ct1!282) (forall!17998 (exprs!8616 ct1!282) lambda!456738))))

(declare-fun bs!1919466 () Bool)

(assert (= bs!1919466 d!2280899))

(declare-fun m!8013590 () Bool)

(assert (=> bs!1919466 m!8013590))

(assert (=> start!718006 d!2280899))

(declare-fun bs!1919467 () Bool)

(declare-fun d!2280901 () Bool)

(assert (= bs!1919467 (and d!2280901 b!7352711)))

(declare-fun lambda!456739 () Int)

(assert (=> bs!1919467 (= lambda!456739 lambda!456716)))

(declare-fun bs!1919468 () Bool)

(assert (= bs!1919468 (and d!2280901 d!2280879)))

(assert (=> bs!1919468 (= lambda!456739 lambda!456734)))

(declare-fun bs!1919469 () Bool)

(assert (= bs!1919469 (and d!2280901 d!2280897)))

(assert (=> bs!1919469 (= lambda!456739 lambda!456737)))

(declare-fun bs!1919470 () Bool)

(assert (= bs!1919470 (and d!2280901 d!2280899)))

(assert (=> bs!1919470 (= lambda!456739 lambda!456738)))

(assert (=> d!2280901 (= (inv!91281 ct2!378) (forall!17998 (exprs!8616 ct2!378) lambda!456739))))

(declare-fun bs!1919471 () Bool)

(assert (= bs!1919471 d!2280901))

(declare-fun m!8013592 () Bool)

(assert (=> bs!1919471 m!8013592))

(assert (=> start!718006 d!2280901))

(declare-fun call!672838 () (Set Context!16232))

(declare-fun call!672839 () List!71672)

(declare-fun c!1366113 () Bool)

(declare-fun bm!672829 () Bool)

(assert (=> bm!672829 (= call!672838 (derivationStepZipperDown!3002 (ite c!1366113 (regOne!38865 r1!2370) (regOne!38864 r1!2370)) (ite c!1366113 (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378))) (Context!16233 call!672839)) c!10362))))

(declare-fun d!2280903 () Bool)

(declare-fun c!1366116 () Bool)

(assert (=> d!2280903 (= c!1366116 (and (is-ElementMatch!19176 r1!2370) (= (c!1366048 r1!2370) c!10362)))))

(declare-fun e!4402608 () (Set Context!16232))

(assert (=> d!2280903 (= (derivationStepZipperDown!3002 r1!2370 (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378))) c!10362) e!4402608)))

(declare-fun c!1366115 () Bool)

(declare-fun bm!672830 () Bool)

(declare-fun call!672834 () List!71672)

(declare-fun c!1366114 () Bool)

(declare-fun call!672835 () (Set Context!16232))

(assert (=> bm!672830 (= call!672835 (derivationStepZipperDown!3002 (ite c!1366113 (regTwo!38865 r1!2370) (ite c!1366114 (regTwo!38864 r1!2370) (ite c!1366115 (regOne!38864 r1!2370) (reg!19505 r1!2370)))) (ite (or c!1366113 c!1366114) (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378))) (Context!16233 call!672834)) c!10362))))

(declare-fun bm!672831 () Bool)

(declare-fun call!672836 () (Set Context!16232))

(declare-fun call!672837 () (Set Context!16232))

(assert (=> bm!672831 (= call!672836 call!672837)))

(declare-fun b!7352941 () Bool)

(declare-fun e!4402603 () (Set Context!16232))

(assert (=> b!7352941 (= e!4402608 e!4402603)))

(assert (=> b!7352941 (= c!1366113 (is-Union!19176 r1!2370))))

(declare-fun b!7352942 () Bool)

(assert (=> b!7352942 (= e!4402603 (set.union call!672838 call!672835))))

(declare-fun b!7352943 () Bool)

(declare-fun c!1366112 () Bool)

(assert (=> b!7352943 (= c!1366112 (is-Star!19176 r1!2370))))

(declare-fun e!4402604 () (Set Context!16232))

(declare-fun e!4402606 () (Set Context!16232))

(assert (=> b!7352943 (= e!4402604 e!4402606)))

(declare-fun b!7352944 () Bool)

(assert (=> b!7352944 (= e!4402606 call!672836)))

(declare-fun b!7352945 () Bool)

(declare-fun e!4402605 () (Set Context!16232))

(assert (=> b!7352945 (= e!4402605 e!4402604)))

(assert (=> b!7352945 (= c!1366115 (is-Concat!28021 r1!2370))))

(declare-fun b!7352946 () Bool)

(declare-fun e!4402607 () Bool)

(assert (=> b!7352946 (= c!1366114 e!4402607)))

(declare-fun res!2969288 () Bool)

(assert (=> b!7352946 (=> (not res!2969288) (not e!4402607))))

(assert (=> b!7352946 (= res!2969288 (is-Concat!28021 r1!2370))))

(assert (=> b!7352946 (= e!4402603 e!4402605)))

(declare-fun b!7352947 () Bool)

(assert (=> b!7352947 (= e!4402605 (set.union call!672838 call!672837))))

(declare-fun b!7352948 () Bool)

(assert (=> b!7352948 (= e!4402607 (nullable!8267 (regOne!38864 r1!2370)))))

(declare-fun bm!672832 () Bool)

(assert (=> bm!672832 (= call!672834 call!672839)))

(declare-fun b!7352949 () Bool)

(assert (=> b!7352949 (= e!4402604 call!672836)))

(declare-fun b!7352950 () Bool)

(assert (=> b!7352950 (= e!4402608 (set.insert (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378))) (as set.empty (Set Context!16232))))))

(declare-fun bm!672833 () Bool)

(assert (=> bm!672833 (= call!672837 call!672835)))

(declare-fun bm!672834 () Bool)

(assert (=> bm!672834 (= call!672839 ($colon$colon!3174 (exprs!8616 (Context!16233 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378)))) (ite (or c!1366114 c!1366115) (regTwo!38864 r1!2370) r1!2370)))))

(declare-fun b!7352951 () Bool)

(assert (=> b!7352951 (= e!4402606 (as set.empty (Set Context!16232)))))

(assert (= (and d!2280903 c!1366116) b!7352950))

(assert (= (and d!2280903 (not c!1366116)) b!7352941))

(assert (= (and b!7352941 c!1366113) b!7352942))

(assert (= (and b!7352941 (not c!1366113)) b!7352946))

(assert (= (and b!7352946 res!2969288) b!7352948))

(assert (= (and b!7352946 c!1366114) b!7352947))

(assert (= (and b!7352946 (not c!1366114)) b!7352945))

(assert (= (and b!7352945 c!1366115) b!7352949))

(assert (= (and b!7352945 (not c!1366115)) b!7352943))

(assert (= (and b!7352943 c!1366112) b!7352944))

(assert (= (and b!7352943 (not c!1366112)) b!7352951))

(assert (= (or b!7352949 b!7352944) bm!672832))

(assert (= (or b!7352949 b!7352944) bm!672831))

(assert (= (or b!7352947 bm!672831) bm!672833))

(assert (= (or b!7352947 bm!672832) bm!672834))

(assert (= (or b!7352942 bm!672833) bm!672830))

(assert (= (or b!7352942 b!7352947) bm!672829))

(declare-fun m!8013594 () Bool)

(assert (=> b!7352950 m!8013594))

(assert (=> b!7352948 m!8013382))

(declare-fun m!8013596 () Bool)

(assert (=> bm!672834 m!8013596))

(declare-fun m!8013598 () Bool)

(assert (=> bm!672829 m!8013598))

(declare-fun m!8013600 () Bool)

(assert (=> bm!672830 m!8013600))

(assert (=> b!7352711 d!2280903))

(declare-fun b!7352953 () Bool)

(declare-fun e!4402609 () List!71672)

(assert (=> b!7352953 (= e!4402609 (Cons!71548 (h!77996 (exprs!8616 ct1!282)) (++!16994 (t!386099 (exprs!8616 ct1!282)) (exprs!8616 ct2!378))))))

(declare-fun d!2280905 () Bool)

(declare-fun e!4402610 () Bool)

(assert (=> d!2280905 e!4402610))

(declare-fun res!2969290 () Bool)

(assert (=> d!2280905 (=> (not res!2969290) (not e!4402610))))

(declare-fun lt!2612612 () List!71672)

(assert (=> d!2280905 (= res!2969290 (= (content!15082 lt!2612612) (set.union (content!15082 (exprs!8616 ct1!282)) (content!15082 (exprs!8616 ct2!378)))))))

(assert (=> d!2280905 (= lt!2612612 e!4402609)))

(declare-fun c!1366117 () Bool)

(assert (=> d!2280905 (= c!1366117 (is-Nil!71548 (exprs!8616 ct1!282)))))

(assert (=> d!2280905 (= (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378)) lt!2612612)))

(declare-fun b!7352952 () Bool)

(assert (=> b!7352952 (= e!4402609 (exprs!8616 ct2!378))))

(declare-fun b!7352955 () Bool)

(assert (=> b!7352955 (= e!4402610 (or (not (= (exprs!8616 ct2!378) Nil!71548)) (= lt!2612612 (exprs!8616 ct1!282))))))

(declare-fun b!7352954 () Bool)

(declare-fun res!2969289 () Bool)

(assert (=> b!7352954 (=> (not res!2969289) (not e!4402610))))

(assert (=> b!7352954 (= res!2969289 (= (size!42061 lt!2612612) (+ (size!42061 (exprs!8616 ct1!282)) (size!42061 (exprs!8616 ct2!378)))))))

(assert (= (and d!2280905 c!1366117) b!7352952))

(assert (= (and d!2280905 (not c!1366117)) b!7352953))

(assert (= (and d!2280905 res!2969290) b!7352954))

(assert (= (and b!7352954 res!2969289) b!7352955))

(declare-fun m!8013602 () Bool)

(assert (=> b!7352953 m!8013602))

(declare-fun m!8013604 () Bool)

(assert (=> d!2280905 m!8013604))

(declare-fun m!8013606 () Bool)

(assert (=> d!2280905 m!8013606))

(assert (=> d!2280905 m!8013550))

(declare-fun m!8013608 () Bool)

(assert (=> b!7352954 m!8013608))

(declare-fun m!8013610 () Bool)

(assert (=> b!7352954 m!8013610))

(assert (=> b!7352954 m!8013556))

(assert (=> b!7352711 d!2280905))

(declare-fun d!2280907 () Bool)

(assert (=> d!2280907 (forall!17998 (++!16994 (exprs!8616 ct1!282) (exprs!8616 ct2!378)) lambda!456716)))

(declare-fun lt!2612613 () Unit!165305)

(assert (=> d!2280907 (= lt!2612613 (choose!57197 (exprs!8616 ct1!282) (exprs!8616 ct2!378) lambda!456716))))

(assert (=> d!2280907 (forall!17998 (exprs!8616 ct1!282) lambda!456716)))

(assert (=> d!2280907 (= (lemmaConcatPreservesForall!1851 (exprs!8616 ct1!282) (exprs!8616 ct2!378) lambda!456716) lt!2612613)))

(declare-fun bs!1919472 () Bool)

(assert (= bs!1919472 d!2280907))

(assert (=> bs!1919472 m!8013388))

(assert (=> bs!1919472 m!8013388))

(declare-fun m!8013612 () Bool)

(assert (=> bs!1919472 m!8013612))

(declare-fun m!8013614 () Bool)

(assert (=> bs!1919472 m!8013614))

(assert (=> bs!1919472 m!8013384))

(assert (=> b!7352711 d!2280907))

(declare-fun b!7352966 () Bool)

(declare-fun e!4402613 () Bool)

(assert (=> b!7352966 (= e!4402613 tp_is_empty!48597)))

(declare-fun b!7352969 () Bool)

(declare-fun tp!2088496 () Bool)

(declare-fun tp!2088497 () Bool)

(assert (=> b!7352969 (= e!4402613 (and tp!2088496 tp!2088497))))

(assert (=> b!7352710 (= tp!2088458 e!4402613)))

(declare-fun b!7352967 () Bool)

(declare-fun tp!2088498 () Bool)

(declare-fun tp!2088500 () Bool)

(assert (=> b!7352967 (= e!4402613 (and tp!2088498 tp!2088500))))

(declare-fun b!7352968 () Bool)

(declare-fun tp!2088499 () Bool)

(assert (=> b!7352968 (= e!4402613 tp!2088499)))

(assert (= (and b!7352710 (is-ElementMatch!19176 (regOne!38864 r1!2370))) b!7352966))

(assert (= (and b!7352710 (is-Concat!28021 (regOne!38864 r1!2370))) b!7352967))

(assert (= (and b!7352710 (is-Star!19176 (regOne!38864 r1!2370))) b!7352968))

(assert (= (and b!7352710 (is-Union!19176 (regOne!38864 r1!2370))) b!7352969))

(declare-fun b!7352970 () Bool)

(declare-fun e!4402614 () Bool)

(assert (=> b!7352970 (= e!4402614 tp_is_empty!48597)))

(declare-fun b!7352973 () Bool)

(declare-fun tp!2088501 () Bool)

(declare-fun tp!2088502 () Bool)

(assert (=> b!7352973 (= e!4402614 (and tp!2088501 tp!2088502))))

(assert (=> b!7352710 (= tp!2088456 e!4402614)))

(declare-fun b!7352971 () Bool)

(declare-fun tp!2088503 () Bool)

(declare-fun tp!2088505 () Bool)

(assert (=> b!7352971 (= e!4402614 (and tp!2088503 tp!2088505))))

(declare-fun b!7352972 () Bool)

(declare-fun tp!2088504 () Bool)

(assert (=> b!7352972 (= e!4402614 tp!2088504)))

(assert (= (and b!7352710 (is-ElementMatch!19176 (regTwo!38864 r1!2370))) b!7352970))

(assert (= (and b!7352710 (is-Concat!28021 (regTwo!38864 r1!2370))) b!7352971))

(assert (= (and b!7352710 (is-Star!19176 (regTwo!38864 r1!2370))) b!7352972))

(assert (= (and b!7352710 (is-Union!19176 (regTwo!38864 r1!2370))) b!7352973))

(declare-fun b!7352978 () Bool)

(declare-fun e!4402617 () Bool)

(declare-fun tp!2088510 () Bool)

(declare-fun tp!2088511 () Bool)

(assert (=> b!7352978 (= e!4402617 (and tp!2088510 tp!2088511))))

(assert (=> b!7352697 (= tp!2088455 e!4402617)))

(assert (= (and b!7352697 (is-Cons!71548 (exprs!8616 ct2!378))) b!7352978))

(declare-fun b!7352979 () Bool)

(declare-fun e!4402618 () Bool)

(declare-fun tp!2088512 () Bool)

(declare-fun tp!2088513 () Bool)

(assert (=> b!7352979 (= e!4402618 (and tp!2088512 tp!2088513))))

(assert (=> b!7352703 (= tp!2088461 e!4402618)))

(assert (= (and b!7352703 (is-Cons!71548 (exprs!8616 cWitness!61))) b!7352979))

(declare-fun b!7352980 () Bool)

(declare-fun e!4402619 () Bool)

(assert (=> b!7352980 (= e!4402619 tp_is_empty!48597)))

(declare-fun b!7352983 () Bool)

(declare-fun tp!2088514 () Bool)

(declare-fun tp!2088515 () Bool)

(assert (=> b!7352983 (= e!4402619 (and tp!2088514 tp!2088515))))

(assert (=> b!7352696 (= tp!2088457 e!4402619)))

(declare-fun b!7352981 () Bool)

(declare-fun tp!2088516 () Bool)

(declare-fun tp!2088518 () Bool)

(assert (=> b!7352981 (= e!4402619 (and tp!2088516 tp!2088518))))

(declare-fun b!7352982 () Bool)

(declare-fun tp!2088517 () Bool)

(assert (=> b!7352982 (= e!4402619 tp!2088517)))

(assert (= (and b!7352696 (is-ElementMatch!19176 (regOne!38865 r1!2370))) b!7352980))

(assert (= (and b!7352696 (is-Concat!28021 (regOne!38865 r1!2370))) b!7352981))

(assert (= (and b!7352696 (is-Star!19176 (regOne!38865 r1!2370))) b!7352982))

(assert (= (and b!7352696 (is-Union!19176 (regOne!38865 r1!2370))) b!7352983))

(declare-fun b!7352984 () Bool)

(declare-fun e!4402620 () Bool)

(assert (=> b!7352984 (= e!4402620 tp_is_empty!48597)))

(declare-fun b!7352987 () Bool)

(declare-fun tp!2088519 () Bool)

(declare-fun tp!2088520 () Bool)

(assert (=> b!7352987 (= e!4402620 (and tp!2088519 tp!2088520))))

(assert (=> b!7352696 (= tp!2088454 e!4402620)))

(declare-fun b!7352985 () Bool)

(declare-fun tp!2088521 () Bool)

(declare-fun tp!2088523 () Bool)

(assert (=> b!7352985 (= e!4402620 (and tp!2088521 tp!2088523))))

(declare-fun b!7352986 () Bool)

(declare-fun tp!2088522 () Bool)

(assert (=> b!7352986 (= e!4402620 tp!2088522)))

(assert (= (and b!7352696 (is-ElementMatch!19176 (regTwo!38865 r1!2370))) b!7352984))

(assert (= (and b!7352696 (is-Concat!28021 (regTwo!38865 r1!2370))) b!7352985))

(assert (= (and b!7352696 (is-Star!19176 (regTwo!38865 r1!2370))) b!7352986))

(assert (= (and b!7352696 (is-Union!19176 (regTwo!38865 r1!2370))) b!7352987))

(declare-fun b!7352988 () Bool)

(declare-fun e!4402621 () Bool)

(declare-fun tp!2088524 () Bool)

(declare-fun tp!2088525 () Bool)

(assert (=> b!7352988 (= e!4402621 (and tp!2088524 tp!2088525))))

(assert (=> b!7352707 (= tp!2088460 e!4402621)))

(assert (= (and b!7352707 (is-Cons!71548 (exprs!8616 ct1!282))) b!7352988))

(declare-fun b!7352989 () Bool)

(declare-fun e!4402622 () Bool)

(assert (=> b!7352989 (= e!4402622 tp_is_empty!48597)))

(declare-fun b!7352992 () Bool)

(declare-fun tp!2088526 () Bool)

(declare-fun tp!2088527 () Bool)

(assert (=> b!7352992 (= e!4402622 (and tp!2088526 tp!2088527))))

(assert (=> b!7352700 (= tp!2088459 e!4402622)))

(declare-fun b!7352990 () Bool)

(declare-fun tp!2088528 () Bool)

(declare-fun tp!2088530 () Bool)

(assert (=> b!7352990 (= e!4402622 (and tp!2088528 tp!2088530))))

(declare-fun b!7352991 () Bool)

(declare-fun tp!2088529 () Bool)

(assert (=> b!7352991 (= e!4402622 tp!2088529)))

(assert (= (and b!7352700 (is-ElementMatch!19176 (reg!19505 r1!2370))) b!7352989))

(assert (= (and b!7352700 (is-Concat!28021 (reg!19505 r1!2370))) b!7352990))

(assert (= (and b!7352700 (is-Star!19176 (reg!19505 r1!2370))) b!7352991))

(assert (= (and b!7352700 (is-Union!19176 (reg!19505 r1!2370))) b!7352992))

(declare-fun b_lambda!284175 () Bool)

(assert (= b_lambda!284173 (or b!7352711 b_lambda!284175)))

(declare-fun bs!1919473 () Bool)

(declare-fun d!2280909 () Bool)

(assert (= bs!1919473 (and d!2280909 b!7352711)))

(assert (=> bs!1919473 (= (dynLambda!29499 lambda!456716 (h!77996 (exprs!8616 ct1!282))) (validRegex!9772 (h!77996 (exprs!8616 ct1!282))))))

(declare-fun m!8013616 () Bool)

(assert (=> bs!1919473 m!8013616))

(assert (=> b!7352852 d!2280909))

(push 1)

(assert (not bm!672814))

(assert (not d!2280879))

(assert (not bm!672769))

(assert (not bm!672819))

(assert (not bs!1919473))

(assert (not d!2280863))

(assert tp_is_empty!48597)

(assert (not bm!672796))

(assert (not b!7352912))

(assert (not b!7352897))

(assert (not b!7352972))

(assert (not d!2280901))

(assert (not bm!672834))

(assert (not b!7352988))

(assert (not b_lambda!284175))

(assert (not b!7352978))

(assert (not bm!672815))

(assert (not bm!672801))

(assert (not bm!672774))

(assert (not bm!672793))

(assert (not b!7352990))

(assert (not b!7352954))

(assert (not d!2280897))

(assert (not d!2280885))

(assert (not b!7352971))

(assert (not b!7352953))

(assert (not b!7352983))

(assert (not d!2280893))

(assert (not b!7352985))

(assert (not b!7352968))

(assert (not b!7352853))

(assert (not b!7352979))

(assert (not b!7352861))

(assert (not b!7352900))

(assert (not bm!672820))

(assert (not bm!672795))

(assert (not bm!672770))

(assert (not bm!672797))

(assert (not b!7352948))

(assert (not b!7352896))

(assert (not bm!672830))

(assert (not b!7352987))

(assert (not b!7352991))

(assert (not d!2280907))

(assert (not d!2280899))

(assert (not b!7352901))

(assert (not b!7352986))

(assert (not b!7352938))

(assert (not b!7352845))

(assert (not d!2280873))

(assert (not b!7352992))

(assert (not b!7352981))

(assert (not b!7352967))

(assert (not d!2280905))

(assert (not d!2280889))

(assert (not b!7352969))

(assert (not bm!672829))

(assert (not b!7352982))

(assert (not bm!672822))

(assert (not b!7352817))

(assert (not b!7352973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

