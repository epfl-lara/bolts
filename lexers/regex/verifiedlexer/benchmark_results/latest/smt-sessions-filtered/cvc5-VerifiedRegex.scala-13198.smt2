; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719482 () Bool)

(assert start!719482)

(declare-fun res!2974565 () Bool)

(declare-fun e!4413490 () Bool)

(assert (=> start!719482 (=> (not res!2974565) (not e!4413490))))

(declare-datatypes ((C!38842 0))(
  ( (C!38843 (val!29781 Int)) )
))
(declare-datatypes ((Regex!19284 0))(
  ( (ElementMatch!19284 (c!1370232 C!38842)) (Concat!28129 (regOne!39080 Regex!19284) (regTwo!39080 Regex!19284)) (EmptyExpr!19284) (Star!19284 (reg!19613 Regex!19284)) (EmptyLang!19284) (Union!19284 (regOne!39081 Regex!19284) (regTwo!39081 Regex!19284)) )
))
(declare-fun r1!2370 () Regex!19284)

(declare-fun validRegex!9880 (Regex!19284) Bool)

(assert (=> start!719482 (= res!2974565 (validRegex!9880 r1!2370))))

(assert (=> start!719482 e!4413490))

(declare-fun tp_is_empty!48813 () Bool)

(assert (=> start!719482 tp_is_empty!48813))

(declare-datatypes ((List!71780 0))(
  ( (Nil!71656) (Cons!71656 (h!78104 Regex!19284) (t!386247 List!71780)) )
))
(declare-datatypes ((Context!16448 0))(
  ( (Context!16449 (exprs!8724 List!71780)) )
))
(declare-fun cWitness!61 () Context!16448)

(declare-fun e!4413491 () Bool)

(declare-fun inv!91551 (Context!16448) Bool)

(assert (=> start!719482 (and (inv!91551 cWitness!61) e!4413491)))

(declare-fun ct1!282 () Context!16448)

(declare-fun e!4413487 () Bool)

(assert (=> start!719482 (and (inv!91551 ct1!282) e!4413487)))

(declare-fun e!4413485 () Bool)

(assert (=> start!719482 e!4413485))

(declare-fun ct2!378 () Context!16448)

(declare-fun e!4413492 () Bool)

(assert (=> start!719482 (and (inv!91551 ct2!378) e!4413492)))

(declare-fun b!7372350 () Bool)

(declare-fun res!2974570 () Bool)

(declare-fun e!4413486 () Bool)

(assert (=> b!7372350 (=> (not res!2974570) (not e!4413486))))

(declare-fun nullable!8360 (Regex!19284) Bool)

(assert (=> b!7372350 (= res!2974570 (nullable!8360 (regOne!39080 r1!2370)))))

(declare-fun b!7372351 () Bool)

(declare-fun tp!2095876 () Bool)

(declare-fun tp!2095874 () Bool)

(assert (=> b!7372351 (= e!4413485 (and tp!2095876 tp!2095874))))

(declare-fun b!7372352 () Bool)

(declare-fun res!2974569 () Bool)

(assert (=> b!7372352 (=> (not res!2974569) (not e!4413486))))

(assert (=> b!7372352 (= res!2974569 (validRegex!9880 (regTwo!39080 r1!2370)))))

(declare-fun b!7372353 () Bool)

(assert (=> b!7372353 (= e!4413485 tp_is_empty!48813)))

(declare-fun b!7372354 () Bool)

(declare-fun e!4413489 () Bool)

(assert (=> b!7372354 (= e!4413490 e!4413489)))

(declare-fun res!2974571 () Bool)

(assert (=> b!7372354 (=> (not res!2974571) (not e!4413489))))

(declare-fun lt!2615809 () (Set Context!16448))

(assert (=> b!7372354 (= res!2974571 (set.member cWitness!61 lt!2615809))))

(declare-fun c!10362 () C!38842)

(declare-fun derivationStepZipperDown!3110 (Regex!19284 Context!16448 C!38842) (Set Context!16448))

(assert (=> b!7372354 (= lt!2615809 (derivationStepZipperDown!3110 r1!2370 ct1!282 c!10362))))

(declare-fun b!7372355 () Bool)

(declare-fun e!4413488 () Bool)

(assert (=> b!7372355 (= e!4413486 e!4413488)))

(declare-fun res!2974568 () Bool)

(assert (=> b!7372355 (=> (not res!2974568) (not e!4413488))))

(declare-fun lt!2615810 () (Set Context!16448))

(assert (=> b!7372355 (= res!2974568 (= lt!2615809 (set.union lt!2615810 (derivationStepZipperDown!3110 (regTwo!39080 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3266 (List!71780 Regex!19284) List!71780)

(assert (=> b!7372355 (= lt!2615810 (derivationStepZipperDown!3110 (regOne!39080 r1!2370) (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370))) c!10362))))

(declare-fun b!7372356 () Bool)

(declare-fun res!2974567 () Bool)

(assert (=> b!7372356 (=> (not res!2974567) (not e!4413488))))

(assert (=> b!7372356 (= res!2974567 (not (set.member cWitness!61 lt!2615810)))))

(declare-fun b!7372357 () Bool)

(assert (=> b!7372357 (= e!4413489 e!4413486)))

(declare-fun res!2974566 () Bool)

(assert (=> b!7372357 (=> (not res!2974566) (not e!4413486))))

(assert (=> b!7372357 (= res!2974566 (and (or (not (is-ElementMatch!19284 r1!2370)) (not (= c!10362 (c!1370232 r1!2370)))) (not (is-Union!19284 r1!2370)) (is-Concat!28129 r1!2370)))))

(declare-fun lt!2615808 () (Set Context!16448))

(declare-fun lt!2615811 () Context!16448)

(assert (=> b!7372357 (= lt!2615808 (derivationStepZipperDown!3110 r1!2370 lt!2615811 c!10362))))

(declare-fun ++!17100 (List!71780 List!71780) List!71780)

(assert (=> b!7372357 (= lt!2615811 (Context!16449 (++!17100 (exprs!8724 ct1!282) (exprs!8724 ct2!378))))))

(declare-datatypes ((Unit!165517 0))(
  ( (Unit!165518) )
))
(declare-fun lt!2615813 () Unit!165517)

(declare-fun lambda!458104 () Int)

(declare-fun lemmaConcatPreservesForall!1957 (List!71780 List!71780 Int) Unit!165517)

(assert (=> b!7372357 (= lt!2615813 (lemmaConcatPreservesForall!1957 (exprs!8724 ct1!282) (exprs!8724 ct2!378) lambda!458104))))

(declare-fun b!7372358 () Bool)

(declare-fun tp!2095872 () Bool)

(declare-fun tp!2095873 () Bool)

(assert (=> b!7372358 (= e!4413485 (and tp!2095872 tp!2095873))))

(declare-fun b!7372359 () Bool)

(declare-fun tp!2095879 () Bool)

(assert (=> b!7372359 (= e!4413485 tp!2095879)))

(declare-fun b!7372360 () Bool)

(declare-fun tp!2095878 () Bool)

(assert (=> b!7372360 (= e!4413487 tp!2095878)))

(declare-fun b!7372361 () Bool)

(declare-fun tp!2095877 () Bool)

(assert (=> b!7372361 (= e!4413492 tp!2095877)))

(declare-fun b!7372362 () Bool)

(declare-fun tp!2095875 () Bool)

(assert (=> b!7372362 (= e!4413491 tp!2095875)))

(declare-fun b!7372363 () Bool)

(declare-fun lt!2615812 () Context!16448)

(assert (=> b!7372363 (= e!4413488 (not (set.member lt!2615812 lt!2615808)))))

(declare-fun lt!2615815 () Unit!165517)

(assert (=> b!7372363 (= lt!2615815 (lemmaConcatPreservesForall!1957 (exprs!8724 cWitness!61) (exprs!8724 ct2!378) lambda!458104))))

(assert (=> b!7372363 (set.member lt!2615812 (derivationStepZipperDown!3110 (regTwo!39080 r1!2370) lt!2615811 c!10362))))

(assert (=> b!7372363 (= lt!2615812 (Context!16449 (++!17100 (exprs!8724 cWitness!61) (exprs!8724 ct2!378))))))

(declare-fun lt!2615817 () Unit!165517)

(assert (=> b!7372363 (= lt!2615817 (lemmaConcatPreservesForall!1957 (exprs!8724 ct1!282) (exprs!8724 ct2!378) lambda!458104))))

(declare-fun lt!2615814 () Unit!165517)

(assert (=> b!7372363 (= lt!2615814 (lemmaConcatPreservesForall!1957 (exprs!8724 cWitness!61) (exprs!8724 ct2!378) lambda!458104))))

(declare-fun lt!2615816 () Unit!165517)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!139 (Regex!19284 Context!16448 Context!16448 Context!16448 C!38842) Unit!165517)

(assert (=> b!7372363 (= lt!2615816 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!139 (regTwo!39080 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (= (and start!719482 res!2974565) b!7372354))

(assert (= (and b!7372354 res!2974571) b!7372357))

(assert (= (and b!7372357 res!2974566) b!7372350))

(assert (= (and b!7372350 res!2974570) b!7372352))

(assert (= (and b!7372352 res!2974569) b!7372355))

(assert (= (and b!7372355 res!2974568) b!7372356))

(assert (= (and b!7372356 res!2974567) b!7372363))

(assert (= start!719482 b!7372362))

(assert (= start!719482 b!7372360))

(assert (= (and start!719482 (is-ElementMatch!19284 r1!2370)) b!7372353))

(assert (= (and start!719482 (is-Concat!28129 r1!2370)) b!7372358))

(assert (= (and start!719482 (is-Star!19284 r1!2370)) b!7372359))

(assert (= (and start!719482 (is-Union!19284 r1!2370)) b!7372351))

(assert (= start!719482 b!7372361))

(declare-fun m!8025730 () Bool)

(assert (=> b!7372350 m!8025730))

(declare-fun m!8025732 () Bool)

(assert (=> b!7372357 m!8025732))

(declare-fun m!8025734 () Bool)

(assert (=> b!7372357 m!8025734))

(declare-fun m!8025736 () Bool)

(assert (=> b!7372357 m!8025736))

(declare-fun m!8025738 () Bool)

(assert (=> b!7372354 m!8025738))

(declare-fun m!8025740 () Bool)

(assert (=> b!7372354 m!8025740))

(declare-fun m!8025742 () Bool)

(assert (=> b!7372363 m!8025742))

(declare-fun m!8025744 () Bool)

(assert (=> b!7372363 m!8025744))

(declare-fun m!8025746 () Bool)

(assert (=> b!7372363 m!8025746))

(declare-fun m!8025748 () Bool)

(assert (=> b!7372363 m!8025748))

(declare-fun m!8025750 () Bool)

(assert (=> b!7372363 m!8025750))

(assert (=> b!7372363 m!8025746))

(declare-fun m!8025752 () Bool)

(assert (=> b!7372363 m!8025752))

(assert (=> b!7372363 m!8025736))

(declare-fun m!8025754 () Bool)

(assert (=> start!719482 m!8025754))

(declare-fun m!8025756 () Bool)

(assert (=> start!719482 m!8025756))

(declare-fun m!8025758 () Bool)

(assert (=> start!719482 m!8025758))

(declare-fun m!8025760 () Bool)

(assert (=> start!719482 m!8025760))

(declare-fun m!8025762 () Bool)

(assert (=> b!7372355 m!8025762))

(declare-fun m!8025764 () Bool)

(assert (=> b!7372355 m!8025764))

(declare-fun m!8025766 () Bool)

(assert (=> b!7372355 m!8025766))

(declare-fun m!8025768 () Bool)

(assert (=> b!7372352 m!8025768))

(declare-fun m!8025770 () Bool)

(assert (=> b!7372356 m!8025770))

(push 1)

(assert (not b!7372351))

(assert (not b!7372358))

(assert (not b!7372361))

(assert (not b!7372357))

(assert (not b!7372359))

(assert tp_is_empty!48813)

(assert (not b!7372355))

(assert (not b!7372363))

(assert (not b!7372352))

(assert (not b!7372354))

(assert (not b!7372350))

(assert (not b!7372362))

(assert (not b!7372360))

(assert (not start!719482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1370247 () Bool)

(declare-fun call!677301 () List!71780)

(declare-fun c!1370244 () Bool)

(declare-fun bm!677295 () Bool)

(assert (=> bm!677295 (= call!677301 ($colon$colon!3266 (exprs!8724 lt!2615811) (ite (or c!1370247 c!1370244) (regTwo!39080 (regTwo!39080 r1!2370)) (regTwo!39080 r1!2370))))))

(declare-fun b!7372428 () Bool)

(declare-fun c!1370245 () Bool)

(assert (=> b!7372428 (= c!1370245 (is-Star!19284 (regTwo!39080 r1!2370)))))

(declare-fun e!4413534 () (Set Context!16448))

(declare-fun e!4413532 () (Set Context!16448))

(assert (=> b!7372428 (= e!4413534 e!4413532)))

(declare-fun bm!677296 () Bool)

(declare-fun c!1370246 () Bool)

(declare-fun call!677300 () (Set Context!16448))

(assert (=> bm!677296 (= call!677300 (derivationStepZipperDown!3110 (ite c!1370246 (regOne!39081 (regTwo!39080 r1!2370)) (regOne!39080 (regTwo!39080 r1!2370))) (ite c!1370246 lt!2615811 (Context!16449 call!677301)) c!10362))))

(declare-fun b!7372429 () Bool)

(declare-fun call!677304 () (Set Context!16448))

(assert (=> b!7372429 (= e!4413534 call!677304)))

(declare-fun b!7372430 () Bool)

(declare-fun e!4413531 () (Set Context!16448))

(assert (=> b!7372430 (= e!4413531 (set.insert lt!2615811 (as set.empty (Set Context!16448))))))

(declare-fun b!7372431 () Bool)

(declare-fun e!4413529 () (Set Context!16448))

(declare-fun call!677303 () (Set Context!16448))

(assert (=> b!7372431 (= e!4413529 (set.union call!677300 call!677303))))

(declare-fun b!7372432 () Bool)

(assert (=> b!7372432 (= e!4413532 call!677304)))

(declare-fun d!2284001 () Bool)

(declare-fun c!1370248 () Bool)

(assert (=> d!2284001 (= c!1370248 (and (is-ElementMatch!19284 (regTwo!39080 r1!2370)) (= (c!1370232 (regTwo!39080 r1!2370)) c!10362)))))

(assert (=> d!2284001 (= (derivationStepZipperDown!3110 (regTwo!39080 r1!2370) lt!2615811 c!10362) e!4413531)))

(declare-fun bm!677297 () Bool)

(declare-fun call!677302 () (Set Context!16448))

(assert (=> bm!677297 (= call!677303 call!677302)))

(declare-fun b!7372433 () Bool)

(declare-fun e!4413530 () Bool)

(assert (=> b!7372433 (= e!4413530 (nullable!8360 (regOne!39080 (regTwo!39080 r1!2370))))))

(declare-fun b!7372434 () Bool)

(declare-fun e!4413533 () (Set Context!16448))

(assert (=> b!7372434 (= e!4413531 e!4413533)))

(assert (=> b!7372434 (= c!1370246 (is-Union!19284 (regTwo!39080 r1!2370)))))

(declare-fun b!7372435 () Bool)

(assert (=> b!7372435 (= e!4413529 e!4413534)))

(assert (=> b!7372435 (= c!1370244 (is-Concat!28129 (regTwo!39080 r1!2370)))))

(declare-fun b!7372436 () Bool)

(assert (=> b!7372436 (= e!4413532 (as set.empty (Set Context!16448)))))

(declare-fun b!7372437 () Bool)

(assert (=> b!7372437 (= e!4413533 (set.union call!677300 call!677302))))

(declare-fun bm!677298 () Bool)

(declare-fun call!677305 () List!71780)

(assert (=> bm!677298 (= call!677302 (derivationStepZipperDown!3110 (ite c!1370246 (regTwo!39081 (regTwo!39080 r1!2370)) (ite c!1370247 (regTwo!39080 (regTwo!39080 r1!2370)) (ite c!1370244 (regOne!39080 (regTwo!39080 r1!2370)) (reg!19613 (regTwo!39080 r1!2370))))) (ite (or c!1370246 c!1370247) lt!2615811 (Context!16449 call!677305)) c!10362))))

(declare-fun b!7372438 () Bool)

(assert (=> b!7372438 (= c!1370247 e!4413530)))

(declare-fun res!2974595 () Bool)

(assert (=> b!7372438 (=> (not res!2974595) (not e!4413530))))

(assert (=> b!7372438 (= res!2974595 (is-Concat!28129 (regTwo!39080 r1!2370)))))

(assert (=> b!7372438 (= e!4413533 e!4413529)))

(declare-fun bm!677299 () Bool)

(assert (=> bm!677299 (= call!677305 call!677301)))

(declare-fun bm!677300 () Bool)

(assert (=> bm!677300 (= call!677304 call!677303)))

(assert (= (and d!2284001 c!1370248) b!7372430))

(assert (= (and d!2284001 (not c!1370248)) b!7372434))

(assert (= (and b!7372434 c!1370246) b!7372437))

(assert (= (and b!7372434 (not c!1370246)) b!7372438))

(assert (= (and b!7372438 res!2974595) b!7372433))

(assert (= (and b!7372438 c!1370247) b!7372431))

(assert (= (and b!7372438 (not c!1370247)) b!7372435))

(assert (= (and b!7372435 c!1370244) b!7372429))

(assert (= (and b!7372435 (not c!1370244)) b!7372428))

(assert (= (and b!7372428 c!1370245) b!7372432))

(assert (= (and b!7372428 (not c!1370245)) b!7372436))

(assert (= (or b!7372429 b!7372432) bm!677299))

(assert (= (or b!7372429 b!7372432) bm!677300))

(assert (= (or b!7372431 bm!677300) bm!677297))

(assert (= (or b!7372431 bm!677299) bm!677295))

(assert (= (or b!7372437 bm!677297) bm!677298))

(assert (= (or b!7372437 b!7372431) bm!677296))

(declare-fun m!8025814 () Bool)

(assert (=> bm!677295 m!8025814))

(declare-fun m!8025816 () Bool)

(assert (=> b!7372433 m!8025816))

(declare-fun m!8025818 () Bool)

(assert (=> b!7372430 m!8025818))

(declare-fun m!8025820 () Bool)

(assert (=> bm!677298 m!8025820))

(declare-fun m!8025822 () Bool)

(assert (=> bm!677296 m!8025822))

(assert (=> b!7372363 d!2284001))

(declare-fun lt!2615850 () List!71780)

(declare-fun b!7372450 () Bool)

(declare-fun e!4413539 () Bool)

(assert (=> b!7372450 (= e!4413539 (or (not (= (exprs!8724 ct2!378) Nil!71656)) (= lt!2615850 (exprs!8724 cWitness!61))))))

(declare-fun d!2284003 () Bool)

(assert (=> d!2284003 e!4413539))

(declare-fun res!2974601 () Bool)

(assert (=> d!2284003 (=> (not res!2974601) (not e!4413539))))

(declare-fun content!15160 (List!71780) (Set Regex!19284))

(assert (=> d!2284003 (= res!2974601 (= (content!15160 lt!2615850) (set.union (content!15160 (exprs!8724 cWitness!61)) (content!15160 (exprs!8724 ct2!378)))))))

(declare-fun e!4413540 () List!71780)

(assert (=> d!2284003 (= lt!2615850 e!4413540)))

(declare-fun c!1370251 () Bool)

(assert (=> d!2284003 (= c!1370251 (is-Nil!71656 (exprs!8724 cWitness!61)))))

(assert (=> d!2284003 (= (++!17100 (exprs!8724 cWitness!61) (exprs!8724 ct2!378)) lt!2615850)))

(declare-fun b!7372447 () Bool)

(assert (=> b!7372447 (= e!4413540 (exprs!8724 ct2!378))))

(declare-fun b!7372449 () Bool)

(declare-fun res!2974600 () Bool)

(assert (=> b!7372449 (=> (not res!2974600) (not e!4413539))))

(declare-fun size!42138 (List!71780) Int)

(assert (=> b!7372449 (= res!2974600 (= (size!42138 lt!2615850) (+ (size!42138 (exprs!8724 cWitness!61)) (size!42138 (exprs!8724 ct2!378)))))))

(declare-fun b!7372448 () Bool)

(assert (=> b!7372448 (= e!4413540 (Cons!71656 (h!78104 (exprs!8724 cWitness!61)) (++!17100 (t!386247 (exprs!8724 cWitness!61)) (exprs!8724 ct2!378))))))

(assert (= (and d!2284003 c!1370251) b!7372447))

(assert (= (and d!2284003 (not c!1370251)) b!7372448))

(assert (= (and d!2284003 res!2974601) b!7372449))

(assert (= (and b!7372449 res!2974600) b!7372450))

(declare-fun m!8025824 () Bool)

(assert (=> d!2284003 m!8025824))

(declare-fun m!8025826 () Bool)

(assert (=> d!2284003 m!8025826))

(declare-fun m!8025828 () Bool)

(assert (=> d!2284003 m!8025828))

(declare-fun m!8025830 () Bool)

(assert (=> b!7372449 m!8025830))

(declare-fun m!8025832 () Bool)

(assert (=> b!7372449 m!8025832))

(declare-fun m!8025834 () Bool)

(assert (=> b!7372449 m!8025834))

(declare-fun m!8025836 () Bool)

(assert (=> b!7372448 m!8025836))

(assert (=> b!7372363 d!2284003))

(declare-fun d!2284007 () Bool)

(declare-fun forall!18086 (List!71780 Int) Bool)

(assert (=> d!2284007 (forall!18086 (++!17100 (exprs!8724 ct1!282) (exprs!8724 ct2!378)) lambda!458104)))

(declare-fun lt!2615853 () Unit!165517)

(declare-fun choose!57311 (List!71780 List!71780 Int) Unit!165517)

(assert (=> d!2284007 (= lt!2615853 (choose!57311 (exprs!8724 ct1!282) (exprs!8724 ct2!378) lambda!458104))))

(assert (=> d!2284007 (forall!18086 (exprs!8724 ct1!282) lambda!458104)))

(assert (=> d!2284007 (= (lemmaConcatPreservesForall!1957 (exprs!8724 ct1!282) (exprs!8724 ct2!378) lambda!458104) lt!2615853)))

(declare-fun bs!1920994 () Bool)

(assert (= bs!1920994 d!2284007))

(assert (=> bs!1920994 m!8025734))

(assert (=> bs!1920994 m!8025734))

(declare-fun m!8025838 () Bool)

(assert (=> bs!1920994 m!8025838))

(declare-fun m!8025840 () Bool)

(assert (=> bs!1920994 m!8025840))

(declare-fun m!8025842 () Bool)

(assert (=> bs!1920994 m!8025842))

(assert (=> b!7372363 d!2284007))

(declare-fun d!2284009 () Bool)

(assert (=> d!2284009 (forall!18086 (++!17100 (exprs!8724 cWitness!61) (exprs!8724 ct2!378)) lambda!458104)))

(declare-fun lt!2615854 () Unit!165517)

(assert (=> d!2284009 (= lt!2615854 (choose!57311 (exprs!8724 cWitness!61) (exprs!8724 ct2!378) lambda!458104))))

(assert (=> d!2284009 (forall!18086 (exprs!8724 cWitness!61) lambda!458104)))

(assert (=> d!2284009 (= (lemmaConcatPreservesForall!1957 (exprs!8724 cWitness!61) (exprs!8724 ct2!378) lambda!458104) lt!2615854)))

(declare-fun bs!1920995 () Bool)

(assert (= bs!1920995 d!2284009))

(assert (=> bs!1920995 m!8025750))

(assert (=> bs!1920995 m!8025750))

(declare-fun m!8025844 () Bool)

(assert (=> bs!1920995 m!8025844))

(declare-fun m!8025846 () Bool)

(assert (=> bs!1920995 m!8025846))

(declare-fun m!8025848 () Bool)

(assert (=> bs!1920995 m!8025848))

(assert (=> b!7372363 d!2284009))

(declare-fun bs!1920996 () Bool)

(declare-fun d!2284011 () Bool)

(assert (= bs!1920996 (and d!2284011 b!7372357)))

(declare-fun lambda!458118 () Int)

(assert (=> bs!1920996 (= lambda!458118 lambda!458104)))

(assert (=> d!2284011 (set.member (Context!16449 (++!17100 (exprs!8724 cWitness!61) (exprs!8724 ct2!378))) (derivationStepZipperDown!3110 (regTwo!39080 r1!2370) (Context!16449 (++!17100 (exprs!8724 ct1!282) (exprs!8724 ct2!378))) c!10362))))

(declare-fun lt!2615863 () Unit!165517)

(assert (=> d!2284011 (= lt!2615863 (lemmaConcatPreservesForall!1957 (exprs!8724 ct1!282) (exprs!8724 ct2!378) lambda!458118))))

(declare-fun lt!2615862 () Unit!165517)

(assert (=> d!2284011 (= lt!2615862 (lemmaConcatPreservesForall!1957 (exprs!8724 cWitness!61) (exprs!8724 ct2!378) lambda!458118))))

(declare-fun lt!2615861 () Unit!165517)

(declare-fun choose!57312 (Regex!19284 Context!16448 Context!16448 Context!16448 C!38842) Unit!165517)

(assert (=> d!2284011 (= lt!2615861 (choose!57312 (regTwo!39080 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2284011 (validRegex!9880 (regTwo!39080 r1!2370))))

(assert (=> d!2284011 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!139 (regTwo!39080 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2615861)))

(declare-fun bs!1920997 () Bool)

(assert (= bs!1920997 d!2284011))

(declare-fun m!8025850 () Bool)

(assert (=> bs!1920997 m!8025850))

(declare-fun m!8025852 () Bool)

(assert (=> bs!1920997 m!8025852))

(assert (=> bs!1920997 m!8025768))

(declare-fun m!8025854 () Bool)

(assert (=> bs!1920997 m!8025854))

(declare-fun m!8025856 () Bool)

(assert (=> bs!1920997 m!8025856))

(assert (=> bs!1920997 m!8025750))

(assert (=> bs!1920997 m!8025734))

(declare-fun m!8025858 () Bool)

(assert (=> bs!1920997 m!8025858))

(assert (=> b!7372363 d!2284011))

(declare-fun b!7372505 () Bool)

(declare-fun e!4413587 () Bool)

(declare-fun call!677325 () Bool)

(assert (=> b!7372505 (= e!4413587 call!677325)))

(declare-fun b!7372506 () Bool)

(declare-fun e!4413588 () Bool)

(declare-fun e!4413589 () Bool)

(assert (=> b!7372506 (= e!4413588 e!4413589)))

(declare-fun c!1370265 () Bool)

(assert (=> b!7372506 (= c!1370265 (is-Star!19284 (regTwo!39080 r1!2370)))))

(declare-fun bm!677319 () Bool)

(declare-fun c!1370266 () Bool)

(assert (=> bm!677319 (= call!677325 (validRegex!9880 (ite c!1370266 (regTwo!39081 (regTwo!39080 r1!2370)) (regOne!39080 (regTwo!39080 r1!2370)))))))

(declare-fun b!7372507 () Bool)

(declare-fun e!4413584 () Bool)

(declare-fun call!677324 () Bool)

(assert (=> b!7372507 (= e!4413584 call!677324)))

(declare-fun d!2284013 () Bool)

(declare-fun res!2974635 () Bool)

(assert (=> d!2284013 (=> res!2974635 e!4413588)))

(assert (=> d!2284013 (= res!2974635 (is-ElementMatch!19284 (regTwo!39080 r1!2370)))))

(assert (=> d!2284013 (= (validRegex!9880 (regTwo!39080 r1!2370)) e!4413588)))

(declare-fun bm!677320 () Bool)

(declare-fun call!677326 () Bool)

(assert (=> bm!677320 (= call!677326 call!677324)))

(declare-fun b!7372508 () Bool)

(declare-fun e!4413586 () Bool)

(assert (=> b!7372508 (= e!4413589 e!4413586)))

(assert (=> b!7372508 (= c!1370266 (is-Union!19284 (regTwo!39080 r1!2370)))))

(declare-fun b!7372509 () Bool)

(declare-fun e!4413583 () Bool)

(declare-fun e!4413585 () Bool)

(assert (=> b!7372509 (= e!4413583 e!4413585)))

(declare-fun res!2974633 () Bool)

(assert (=> b!7372509 (=> (not res!2974633) (not e!4413585))))

(assert (=> b!7372509 (= res!2974633 call!677325)))

(declare-fun b!7372510 () Bool)

(declare-fun res!2974636 () Bool)

(assert (=> b!7372510 (=> (not res!2974636) (not e!4413587))))

(assert (=> b!7372510 (= res!2974636 call!677326)))

(assert (=> b!7372510 (= e!4413586 e!4413587)))

(declare-fun b!7372511 () Bool)

(assert (=> b!7372511 (= e!4413585 call!677326)))

(declare-fun bm!677321 () Bool)

(assert (=> bm!677321 (= call!677324 (validRegex!9880 (ite c!1370265 (reg!19613 (regTwo!39080 r1!2370)) (ite c!1370266 (regOne!39081 (regTwo!39080 r1!2370)) (regTwo!39080 (regTwo!39080 r1!2370))))))))

(declare-fun b!7372512 () Bool)

(declare-fun res!2974634 () Bool)

(assert (=> b!7372512 (=> res!2974634 e!4413583)))

(assert (=> b!7372512 (= res!2974634 (not (is-Concat!28129 (regTwo!39080 r1!2370))))))

(assert (=> b!7372512 (= e!4413586 e!4413583)))

(declare-fun b!7372513 () Bool)

(assert (=> b!7372513 (= e!4413589 e!4413584)))

(declare-fun res!2974632 () Bool)

(assert (=> b!7372513 (= res!2974632 (not (nullable!8360 (reg!19613 (regTwo!39080 r1!2370)))))))

(assert (=> b!7372513 (=> (not res!2974632) (not e!4413584))))

(assert (= (and d!2284013 (not res!2974635)) b!7372506))

(assert (= (and b!7372506 c!1370265) b!7372513))

(assert (= (and b!7372506 (not c!1370265)) b!7372508))

(assert (= (and b!7372513 res!2974632) b!7372507))

(assert (= (and b!7372508 c!1370266) b!7372510))

(assert (= (and b!7372508 (not c!1370266)) b!7372512))

(assert (= (and b!7372510 res!2974636) b!7372505))

(assert (= (and b!7372512 (not res!2974634)) b!7372509))

(assert (= (and b!7372509 res!2974633) b!7372511))

(assert (= (or b!7372510 b!7372511) bm!677320))

(assert (= (or b!7372505 b!7372509) bm!677319))

(assert (= (or b!7372507 bm!677320) bm!677321))

(declare-fun m!8025872 () Bool)

(assert (=> bm!677319 m!8025872))

(declare-fun m!8025874 () Bool)

(assert (=> bm!677321 m!8025874))

(declare-fun m!8025876 () Bool)

(assert (=> b!7372513 m!8025876))

(assert (=> b!7372352 d!2284013))

(declare-fun bm!677322 () Bool)

(declare-fun c!1370267 () Bool)

(declare-fun c!1370270 () Bool)

(declare-fun call!677328 () List!71780)

(assert (=> bm!677322 (= call!677328 ($colon$colon!3266 (exprs!8724 lt!2615811) (ite (or c!1370270 c!1370267) (regTwo!39080 r1!2370) r1!2370)))))

(declare-fun b!7372514 () Bool)

(declare-fun c!1370268 () Bool)

(assert (=> b!7372514 (= c!1370268 (is-Star!19284 r1!2370))))

(declare-fun e!4413595 () (Set Context!16448))

(declare-fun e!4413593 () (Set Context!16448))

(assert (=> b!7372514 (= e!4413595 e!4413593)))

(declare-fun call!677327 () (Set Context!16448))

(declare-fun bm!677323 () Bool)

(declare-fun c!1370269 () Bool)

(assert (=> bm!677323 (= call!677327 (derivationStepZipperDown!3110 (ite c!1370269 (regOne!39081 r1!2370) (regOne!39080 r1!2370)) (ite c!1370269 lt!2615811 (Context!16449 call!677328)) c!10362))))

(declare-fun b!7372515 () Bool)

(declare-fun call!677331 () (Set Context!16448))

(assert (=> b!7372515 (= e!4413595 call!677331)))

(declare-fun b!7372516 () Bool)

(declare-fun e!4413592 () (Set Context!16448))

(assert (=> b!7372516 (= e!4413592 (set.insert lt!2615811 (as set.empty (Set Context!16448))))))

(declare-fun b!7372517 () Bool)

(declare-fun e!4413590 () (Set Context!16448))

(declare-fun call!677330 () (Set Context!16448))

(assert (=> b!7372517 (= e!4413590 (set.union call!677327 call!677330))))

(declare-fun b!7372518 () Bool)

(assert (=> b!7372518 (= e!4413593 call!677331)))

(declare-fun d!2284019 () Bool)

(declare-fun c!1370271 () Bool)

(assert (=> d!2284019 (= c!1370271 (and (is-ElementMatch!19284 r1!2370) (= (c!1370232 r1!2370) c!10362)))))

(assert (=> d!2284019 (= (derivationStepZipperDown!3110 r1!2370 lt!2615811 c!10362) e!4413592)))

(declare-fun bm!677324 () Bool)

(declare-fun call!677329 () (Set Context!16448))

(assert (=> bm!677324 (= call!677330 call!677329)))

(declare-fun b!7372519 () Bool)

(declare-fun e!4413591 () Bool)

(assert (=> b!7372519 (= e!4413591 (nullable!8360 (regOne!39080 r1!2370)))))

(declare-fun b!7372520 () Bool)

(declare-fun e!4413594 () (Set Context!16448))

(assert (=> b!7372520 (= e!4413592 e!4413594)))

(assert (=> b!7372520 (= c!1370269 (is-Union!19284 r1!2370))))

(declare-fun b!7372521 () Bool)

(assert (=> b!7372521 (= e!4413590 e!4413595)))

(assert (=> b!7372521 (= c!1370267 (is-Concat!28129 r1!2370))))

(declare-fun b!7372522 () Bool)

(assert (=> b!7372522 (= e!4413593 (as set.empty (Set Context!16448)))))

(declare-fun b!7372523 () Bool)

(assert (=> b!7372523 (= e!4413594 (set.union call!677327 call!677329))))

(declare-fun call!677332 () List!71780)

(declare-fun bm!677325 () Bool)

(assert (=> bm!677325 (= call!677329 (derivationStepZipperDown!3110 (ite c!1370269 (regTwo!39081 r1!2370) (ite c!1370270 (regTwo!39080 r1!2370) (ite c!1370267 (regOne!39080 r1!2370) (reg!19613 r1!2370)))) (ite (or c!1370269 c!1370270) lt!2615811 (Context!16449 call!677332)) c!10362))))

(declare-fun b!7372524 () Bool)

(assert (=> b!7372524 (= c!1370270 e!4413591)))

(declare-fun res!2974637 () Bool)

(assert (=> b!7372524 (=> (not res!2974637) (not e!4413591))))

(assert (=> b!7372524 (= res!2974637 (is-Concat!28129 r1!2370))))

(assert (=> b!7372524 (= e!4413594 e!4413590)))

(declare-fun bm!677326 () Bool)

(assert (=> bm!677326 (= call!677332 call!677328)))

(declare-fun bm!677327 () Bool)

(assert (=> bm!677327 (= call!677331 call!677330)))

(assert (= (and d!2284019 c!1370271) b!7372516))

(assert (= (and d!2284019 (not c!1370271)) b!7372520))

(assert (= (and b!7372520 c!1370269) b!7372523))

(assert (= (and b!7372520 (not c!1370269)) b!7372524))

(assert (= (and b!7372524 res!2974637) b!7372519))

(assert (= (and b!7372524 c!1370270) b!7372517))

(assert (= (and b!7372524 (not c!1370270)) b!7372521))

(assert (= (and b!7372521 c!1370267) b!7372515))

(assert (= (and b!7372521 (not c!1370267)) b!7372514))

(assert (= (and b!7372514 c!1370268) b!7372518))

(assert (= (and b!7372514 (not c!1370268)) b!7372522))

(assert (= (or b!7372515 b!7372518) bm!677326))

(assert (= (or b!7372515 b!7372518) bm!677327))

(assert (= (or b!7372517 bm!677327) bm!677324))

(assert (= (or b!7372517 bm!677326) bm!677322))

(assert (= (or b!7372523 bm!677324) bm!677325))

(assert (= (or b!7372523 b!7372517) bm!677323))

(declare-fun m!8025878 () Bool)

(assert (=> bm!677322 m!8025878))

(assert (=> b!7372519 m!8025730))

(assert (=> b!7372516 m!8025818))

(declare-fun m!8025880 () Bool)

(assert (=> bm!677325 m!8025880))

(declare-fun m!8025882 () Bool)

(assert (=> bm!677323 m!8025882))

(assert (=> b!7372357 d!2284019))

(declare-fun b!7372528 () Bool)

(declare-fun lt!2615864 () List!71780)

(declare-fun e!4413596 () Bool)

(assert (=> b!7372528 (= e!4413596 (or (not (= (exprs!8724 ct2!378) Nil!71656)) (= lt!2615864 (exprs!8724 ct1!282))))))

(declare-fun d!2284021 () Bool)

(assert (=> d!2284021 e!4413596))

(declare-fun res!2974639 () Bool)

(assert (=> d!2284021 (=> (not res!2974639) (not e!4413596))))

(assert (=> d!2284021 (= res!2974639 (= (content!15160 lt!2615864) (set.union (content!15160 (exprs!8724 ct1!282)) (content!15160 (exprs!8724 ct2!378)))))))

(declare-fun e!4413597 () List!71780)

(assert (=> d!2284021 (= lt!2615864 e!4413597)))

(declare-fun c!1370272 () Bool)

(assert (=> d!2284021 (= c!1370272 (is-Nil!71656 (exprs!8724 ct1!282)))))

(assert (=> d!2284021 (= (++!17100 (exprs!8724 ct1!282) (exprs!8724 ct2!378)) lt!2615864)))

(declare-fun b!7372525 () Bool)

(assert (=> b!7372525 (= e!4413597 (exprs!8724 ct2!378))))

(declare-fun b!7372527 () Bool)

(declare-fun res!2974638 () Bool)

(assert (=> b!7372527 (=> (not res!2974638) (not e!4413596))))

(assert (=> b!7372527 (= res!2974638 (= (size!42138 lt!2615864) (+ (size!42138 (exprs!8724 ct1!282)) (size!42138 (exprs!8724 ct2!378)))))))

(declare-fun b!7372526 () Bool)

(assert (=> b!7372526 (= e!4413597 (Cons!71656 (h!78104 (exprs!8724 ct1!282)) (++!17100 (t!386247 (exprs!8724 ct1!282)) (exprs!8724 ct2!378))))))

(assert (= (and d!2284021 c!1370272) b!7372525))

(assert (= (and d!2284021 (not c!1370272)) b!7372526))

(assert (= (and d!2284021 res!2974639) b!7372527))

(assert (= (and b!7372527 res!2974638) b!7372528))

(declare-fun m!8025884 () Bool)

(assert (=> d!2284021 m!8025884))

(declare-fun m!8025886 () Bool)

(assert (=> d!2284021 m!8025886))

(assert (=> d!2284021 m!8025828))

(declare-fun m!8025888 () Bool)

(assert (=> b!7372527 m!8025888))

(declare-fun m!8025890 () Bool)

(assert (=> b!7372527 m!8025890))

(assert (=> b!7372527 m!8025834))

(declare-fun m!8025892 () Bool)

(assert (=> b!7372526 m!8025892))

(assert (=> b!7372357 d!2284021))

(assert (=> b!7372357 d!2284007))

(declare-fun d!2284023 () Bool)

(declare-fun nullableFct!3345 (Regex!19284) Bool)

(assert (=> d!2284023 (= (nullable!8360 (regOne!39080 r1!2370)) (nullableFct!3345 (regOne!39080 r1!2370)))))

(declare-fun bs!1920998 () Bool)

(assert (= bs!1920998 d!2284023))

(declare-fun m!8025894 () Bool)

(assert (=> bs!1920998 m!8025894))

(assert (=> b!7372350 d!2284023))

(declare-fun c!1370276 () Bool)

(declare-fun call!677334 () List!71780)

(declare-fun c!1370273 () Bool)

(declare-fun bm!677328 () Bool)

(assert (=> bm!677328 (= call!677334 ($colon$colon!3266 (exprs!8724 ct1!282) (ite (or c!1370276 c!1370273) (regTwo!39080 (regTwo!39080 r1!2370)) (regTwo!39080 r1!2370))))))

(declare-fun b!7372529 () Bool)

(declare-fun c!1370274 () Bool)

(assert (=> b!7372529 (= c!1370274 (is-Star!19284 (regTwo!39080 r1!2370)))))

(declare-fun e!4413603 () (Set Context!16448))

(declare-fun e!4413601 () (Set Context!16448))

(assert (=> b!7372529 (= e!4413603 e!4413601)))

(declare-fun bm!677329 () Bool)

(declare-fun call!677333 () (Set Context!16448))

(declare-fun c!1370275 () Bool)

(assert (=> bm!677329 (= call!677333 (derivationStepZipperDown!3110 (ite c!1370275 (regOne!39081 (regTwo!39080 r1!2370)) (regOne!39080 (regTwo!39080 r1!2370))) (ite c!1370275 ct1!282 (Context!16449 call!677334)) c!10362))))

(declare-fun b!7372530 () Bool)

(declare-fun call!677337 () (Set Context!16448))

(assert (=> b!7372530 (= e!4413603 call!677337)))

(declare-fun b!7372531 () Bool)

(declare-fun e!4413600 () (Set Context!16448))

(assert (=> b!7372531 (= e!4413600 (set.insert ct1!282 (as set.empty (Set Context!16448))))))

(declare-fun b!7372532 () Bool)

(declare-fun e!4413598 () (Set Context!16448))

(declare-fun call!677336 () (Set Context!16448))

(assert (=> b!7372532 (= e!4413598 (set.union call!677333 call!677336))))

(declare-fun b!7372533 () Bool)

(assert (=> b!7372533 (= e!4413601 call!677337)))

(declare-fun d!2284025 () Bool)

(declare-fun c!1370277 () Bool)

(assert (=> d!2284025 (= c!1370277 (and (is-ElementMatch!19284 (regTwo!39080 r1!2370)) (= (c!1370232 (regTwo!39080 r1!2370)) c!10362)))))

(assert (=> d!2284025 (= (derivationStepZipperDown!3110 (regTwo!39080 r1!2370) ct1!282 c!10362) e!4413600)))

(declare-fun bm!677330 () Bool)

(declare-fun call!677335 () (Set Context!16448))

(assert (=> bm!677330 (= call!677336 call!677335)))

(declare-fun b!7372534 () Bool)

(declare-fun e!4413599 () Bool)

(assert (=> b!7372534 (= e!4413599 (nullable!8360 (regOne!39080 (regTwo!39080 r1!2370))))))

(declare-fun b!7372535 () Bool)

(declare-fun e!4413602 () (Set Context!16448))

(assert (=> b!7372535 (= e!4413600 e!4413602)))

(assert (=> b!7372535 (= c!1370275 (is-Union!19284 (regTwo!39080 r1!2370)))))

(declare-fun b!7372536 () Bool)

(assert (=> b!7372536 (= e!4413598 e!4413603)))

(assert (=> b!7372536 (= c!1370273 (is-Concat!28129 (regTwo!39080 r1!2370)))))

(declare-fun b!7372537 () Bool)

(assert (=> b!7372537 (= e!4413601 (as set.empty (Set Context!16448)))))

(declare-fun b!7372538 () Bool)

(assert (=> b!7372538 (= e!4413602 (set.union call!677333 call!677335))))

(declare-fun call!677338 () List!71780)

(declare-fun bm!677331 () Bool)

(assert (=> bm!677331 (= call!677335 (derivationStepZipperDown!3110 (ite c!1370275 (regTwo!39081 (regTwo!39080 r1!2370)) (ite c!1370276 (regTwo!39080 (regTwo!39080 r1!2370)) (ite c!1370273 (regOne!39080 (regTwo!39080 r1!2370)) (reg!19613 (regTwo!39080 r1!2370))))) (ite (or c!1370275 c!1370276) ct1!282 (Context!16449 call!677338)) c!10362))))

(declare-fun b!7372539 () Bool)

(assert (=> b!7372539 (= c!1370276 e!4413599)))

(declare-fun res!2974640 () Bool)

(assert (=> b!7372539 (=> (not res!2974640) (not e!4413599))))

(assert (=> b!7372539 (= res!2974640 (is-Concat!28129 (regTwo!39080 r1!2370)))))

(assert (=> b!7372539 (= e!4413602 e!4413598)))

(declare-fun bm!677332 () Bool)

(assert (=> bm!677332 (= call!677338 call!677334)))

(declare-fun bm!677333 () Bool)

(assert (=> bm!677333 (= call!677337 call!677336)))

(assert (= (and d!2284025 c!1370277) b!7372531))

(assert (= (and d!2284025 (not c!1370277)) b!7372535))

(assert (= (and b!7372535 c!1370275) b!7372538))

(assert (= (and b!7372535 (not c!1370275)) b!7372539))

(assert (= (and b!7372539 res!2974640) b!7372534))

(assert (= (and b!7372539 c!1370276) b!7372532))

(assert (= (and b!7372539 (not c!1370276)) b!7372536))

(assert (= (and b!7372536 c!1370273) b!7372530))

(assert (= (and b!7372536 (not c!1370273)) b!7372529))

(assert (= (and b!7372529 c!1370274) b!7372533))

(assert (= (and b!7372529 (not c!1370274)) b!7372537))

(assert (= (or b!7372530 b!7372533) bm!677332))

(assert (= (or b!7372530 b!7372533) bm!677333))

(assert (= (or b!7372532 bm!677333) bm!677330))

(assert (= (or b!7372532 bm!677332) bm!677328))

(assert (= (or b!7372538 bm!677330) bm!677331))

(assert (= (or b!7372538 b!7372532) bm!677329))

(declare-fun m!8025896 () Bool)

(assert (=> bm!677328 m!8025896))

(assert (=> b!7372534 m!8025816))

(declare-fun m!8025898 () Bool)

(assert (=> b!7372531 m!8025898))

(declare-fun m!8025900 () Bool)

(assert (=> bm!677331 m!8025900))

(declare-fun m!8025902 () Bool)

(assert (=> bm!677329 m!8025902))

(assert (=> b!7372355 d!2284025))

(declare-fun call!677340 () List!71780)

(declare-fun bm!677334 () Bool)

(declare-fun c!1370278 () Bool)

(declare-fun c!1370281 () Bool)

(assert (=> bm!677334 (= call!677340 ($colon$colon!3266 (exprs!8724 (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370)))) (ite (or c!1370281 c!1370278) (regTwo!39080 (regOne!39080 r1!2370)) (regOne!39080 r1!2370))))))

(declare-fun b!7372540 () Bool)

(declare-fun c!1370279 () Bool)

(assert (=> b!7372540 (= c!1370279 (is-Star!19284 (regOne!39080 r1!2370)))))

(declare-fun e!4413609 () (Set Context!16448))

(declare-fun e!4413607 () (Set Context!16448))

(assert (=> b!7372540 (= e!4413609 e!4413607)))

(declare-fun bm!677335 () Bool)

(declare-fun call!677339 () (Set Context!16448))

(declare-fun c!1370280 () Bool)

(assert (=> bm!677335 (= call!677339 (derivationStepZipperDown!3110 (ite c!1370280 (regOne!39081 (regOne!39080 r1!2370)) (regOne!39080 (regOne!39080 r1!2370))) (ite c!1370280 (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370))) (Context!16449 call!677340)) c!10362))))

(declare-fun b!7372541 () Bool)

(declare-fun call!677343 () (Set Context!16448))

(assert (=> b!7372541 (= e!4413609 call!677343)))

(declare-fun b!7372542 () Bool)

(declare-fun e!4413606 () (Set Context!16448))

(assert (=> b!7372542 (= e!4413606 (set.insert (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370))) (as set.empty (Set Context!16448))))))

(declare-fun b!7372543 () Bool)

(declare-fun e!4413604 () (Set Context!16448))

(declare-fun call!677342 () (Set Context!16448))

(assert (=> b!7372543 (= e!4413604 (set.union call!677339 call!677342))))

(declare-fun b!7372544 () Bool)

(assert (=> b!7372544 (= e!4413607 call!677343)))

(declare-fun d!2284027 () Bool)

(declare-fun c!1370282 () Bool)

(assert (=> d!2284027 (= c!1370282 (and (is-ElementMatch!19284 (regOne!39080 r1!2370)) (= (c!1370232 (regOne!39080 r1!2370)) c!10362)))))

(assert (=> d!2284027 (= (derivationStepZipperDown!3110 (regOne!39080 r1!2370) (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370))) c!10362) e!4413606)))

(declare-fun bm!677336 () Bool)

(declare-fun call!677341 () (Set Context!16448))

(assert (=> bm!677336 (= call!677342 call!677341)))

(declare-fun b!7372545 () Bool)

(declare-fun e!4413605 () Bool)

(assert (=> b!7372545 (= e!4413605 (nullable!8360 (regOne!39080 (regOne!39080 r1!2370))))))

(declare-fun b!7372546 () Bool)

(declare-fun e!4413608 () (Set Context!16448))

(assert (=> b!7372546 (= e!4413606 e!4413608)))

(assert (=> b!7372546 (= c!1370280 (is-Union!19284 (regOne!39080 r1!2370)))))

(declare-fun b!7372547 () Bool)

(assert (=> b!7372547 (= e!4413604 e!4413609)))

(assert (=> b!7372547 (= c!1370278 (is-Concat!28129 (regOne!39080 r1!2370)))))

(declare-fun b!7372548 () Bool)

(assert (=> b!7372548 (= e!4413607 (as set.empty (Set Context!16448)))))

(declare-fun b!7372549 () Bool)

(assert (=> b!7372549 (= e!4413608 (set.union call!677339 call!677341))))

(declare-fun bm!677337 () Bool)

(declare-fun call!677344 () List!71780)

(assert (=> bm!677337 (= call!677341 (derivationStepZipperDown!3110 (ite c!1370280 (regTwo!39081 (regOne!39080 r1!2370)) (ite c!1370281 (regTwo!39080 (regOne!39080 r1!2370)) (ite c!1370278 (regOne!39080 (regOne!39080 r1!2370)) (reg!19613 (regOne!39080 r1!2370))))) (ite (or c!1370280 c!1370281) (Context!16449 ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370))) (Context!16449 call!677344)) c!10362))))

(declare-fun b!7372550 () Bool)

(assert (=> b!7372550 (= c!1370281 e!4413605)))

(declare-fun res!2974641 () Bool)

(assert (=> b!7372550 (=> (not res!2974641) (not e!4413605))))

(assert (=> b!7372550 (= res!2974641 (is-Concat!28129 (regOne!39080 r1!2370)))))

(assert (=> b!7372550 (= e!4413608 e!4413604)))

(declare-fun bm!677338 () Bool)

(assert (=> bm!677338 (= call!677344 call!677340)))

(declare-fun bm!677339 () Bool)

(assert (=> bm!677339 (= call!677343 call!677342)))

(assert (= (and d!2284027 c!1370282) b!7372542))

(assert (= (and d!2284027 (not c!1370282)) b!7372546))

(assert (= (and b!7372546 c!1370280) b!7372549))

(assert (= (and b!7372546 (not c!1370280)) b!7372550))

(assert (= (and b!7372550 res!2974641) b!7372545))

(assert (= (and b!7372550 c!1370281) b!7372543))

(assert (= (and b!7372550 (not c!1370281)) b!7372547))

(assert (= (and b!7372547 c!1370278) b!7372541))

(assert (= (and b!7372547 (not c!1370278)) b!7372540))

(assert (= (and b!7372540 c!1370279) b!7372544))

(assert (= (and b!7372540 (not c!1370279)) b!7372548))

(assert (= (or b!7372541 b!7372544) bm!677338))

(assert (= (or b!7372541 b!7372544) bm!677339))

(assert (= (or b!7372543 bm!677339) bm!677336))

(assert (= (or b!7372543 bm!677338) bm!677334))

(assert (= (or b!7372549 bm!677336) bm!677337))

(assert (= (or b!7372549 b!7372543) bm!677335))

(declare-fun m!8025906 () Bool)

(assert (=> bm!677334 m!8025906))

(declare-fun m!8025908 () Bool)

(assert (=> b!7372545 m!8025908))

(declare-fun m!8025910 () Bool)

(assert (=> b!7372542 m!8025910))

(declare-fun m!8025912 () Bool)

(assert (=> bm!677337 m!8025912))

(declare-fun m!8025914 () Bool)

(assert (=> bm!677335 m!8025914))

(assert (=> b!7372355 d!2284027))

(declare-fun d!2284031 () Bool)

(assert (=> d!2284031 (= ($colon$colon!3266 (exprs!8724 ct1!282) (regTwo!39080 r1!2370)) (Cons!71656 (regTwo!39080 r1!2370) (exprs!8724 ct1!282)))))

(assert (=> b!7372355 d!2284031))

(declare-fun b!7372551 () Bool)

(declare-fun e!4413614 () Bool)

(declare-fun call!677346 () Bool)

(assert (=> b!7372551 (= e!4413614 call!677346)))

(declare-fun b!7372552 () Bool)

(declare-fun e!4413615 () Bool)

(declare-fun e!4413616 () Bool)

(assert (=> b!7372552 (= e!4413615 e!4413616)))

(declare-fun c!1370283 () Bool)

(assert (=> b!7372552 (= c!1370283 (is-Star!19284 r1!2370))))

(declare-fun bm!677340 () Bool)

(declare-fun c!1370284 () Bool)

(assert (=> bm!677340 (= call!677346 (validRegex!9880 (ite c!1370284 (regTwo!39081 r1!2370) (regOne!39080 r1!2370))))))

(declare-fun b!7372553 () Bool)

(declare-fun e!4413611 () Bool)

(declare-fun call!677345 () Bool)

(assert (=> b!7372553 (= e!4413611 call!677345)))

(declare-fun d!2284035 () Bool)

(declare-fun res!2974645 () Bool)

(assert (=> d!2284035 (=> res!2974645 e!4413615)))

(assert (=> d!2284035 (= res!2974645 (is-ElementMatch!19284 r1!2370))))

(assert (=> d!2284035 (= (validRegex!9880 r1!2370) e!4413615)))

(declare-fun bm!677341 () Bool)

(declare-fun call!677347 () Bool)

(assert (=> bm!677341 (= call!677347 call!677345)))

(declare-fun b!7372554 () Bool)

(declare-fun e!4413613 () Bool)

(assert (=> b!7372554 (= e!4413616 e!4413613)))

(assert (=> b!7372554 (= c!1370284 (is-Union!19284 r1!2370))))

(declare-fun b!7372555 () Bool)

(declare-fun e!4413610 () Bool)

(declare-fun e!4413612 () Bool)

(assert (=> b!7372555 (= e!4413610 e!4413612)))

(declare-fun res!2974643 () Bool)

(assert (=> b!7372555 (=> (not res!2974643) (not e!4413612))))

(assert (=> b!7372555 (= res!2974643 call!677346)))

(declare-fun b!7372556 () Bool)

(declare-fun res!2974646 () Bool)

(assert (=> b!7372556 (=> (not res!2974646) (not e!4413614))))

(assert (=> b!7372556 (= res!2974646 call!677347)))

(assert (=> b!7372556 (= e!4413613 e!4413614)))

(declare-fun b!7372557 () Bool)

(assert (=> b!7372557 (= e!4413612 call!677347)))

(declare-fun bm!677342 () Bool)

(assert (=> bm!677342 (= call!677345 (validRegex!9880 (ite c!1370283 (reg!19613 r1!2370) (ite c!1370284 (regOne!39081 r1!2370) (regTwo!39080 r1!2370)))))))

(declare-fun b!7372558 () Bool)

(declare-fun res!2974644 () Bool)

(assert (=> b!7372558 (=> res!2974644 e!4413610)))

(assert (=> b!7372558 (= res!2974644 (not (is-Concat!28129 r1!2370)))))

(assert (=> b!7372558 (= e!4413613 e!4413610)))

(declare-fun b!7372559 () Bool)

(assert (=> b!7372559 (= e!4413616 e!4413611)))

(declare-fun res!2974642 () Bool)

(assert (=> b!7372559 (= res!2974642 (not (nullable!8360 (reg!19613 r1!2370))))))

(assert (=> b!7372559 (=> (not res!2974642) (not e!4413611))))

(assert (= (and d!2284035 (not res!2974645)) b!7372552))

(assert (= (and b!7372552 c!1370283) b!7372559))

(assert (= (and b!7372552 (not c!1370283)) b!7372554))

(assert (= (and b!7372559 res!2974642) b!7372553))

(assert (= (and b!7372554 c!1370284) b!7372556))

(assert (= (and b!7372554 (not c!1370284)) b!7372558))

(assert (= (and b!7372556 res!2974646) b!7372551))

(assert (= (and b!7372558 (not res!2974644)) b!7372555))

(assert (= (and b!7372555 res!2974643) b!7372557))

(assert (= (or b!7372556 b!7372557) bm!677341))

(assert (= (or b!7372551 b!7372555) bm!677340))

(assert (= (or b!7372553 bm!677341) bm!677342))

(declare-fun m!8025918 () Bool)

(assert (=> bm!677340 m!8025918))

(declare-fun m!8025922 () Bool)

(assert (=> bm!677342 m!8025922))

(declare-fun m!8025924 () Bool)

(assert (=> b!7372559 m!8025924))

(assert (=> start!719482 d!2284035))

(declare-fun bs!1921008 () Bool)

(declare-fun d!2284039 () Bool)

(assert (= bs!1921008 (and d!2284039 b!7372357)))

(declare-fun lambda!458126 () Int)

(assert (=> bs!1921008 (= lambda!458126 lambda!458104)))

(declare-fun bs!1921009 () Bool)

(assert (= bs!1921009 (and d!2284039 d!2284011)))

(assert (=> bs!1921009 (= lambda!458126 lambda!458118)))

(assert (=> d!2284039 (= (inv!91551 cWitness!61) (forall!18086 (exprs!8724 cWitness!61) lambda!458126))))

(declare-fun bs!1921010 () Bool)

(assert (= bs!1921010 d!2284039))

(declare-fun m!8025926 () Bool)

(assert (=> bs!1921010 m!8025926))

(assert (=> start!719482 d!2284039))

(declare-fun bs!1921011 () Bool)

(declare-fun d!2284041 () Bool)

(assert (= bs!1921011 (and d!2284041 b!7372357)))

(declare-fun lambda!458127 () Int)

(assert (=> bs!1921011 (= lambda!458127 lambda!458104)))

(declare-fun bs!1921012 () Bool)

(assert (= bs!1921012 (and d!2284041 d!2284011)))

(assert (=> bs!1921012 (= lambda!458127 lambda!458118)))

(declare-fun bs!1921013 () Bool)

(assert (= bs!1921013 (and d!2284041 d!2284039)))

(assert (=> bs!1921013 (= lambda!458127 lambda!458126)))

(assert (=> d!2284041 (= (inv!91551 ct1!282) (forall!18086 (exprs!8724 ct1!282) lambda!458127))))

(declare-fun bs!1921014 () Bool)

(assert (= bs!1921014 d!2284041))

(declare-fun m!8025928 () Bool)

(assert (=> bs!1921014 m!8025928))

(assert (=> start!719482 d!2284041))

(declare-fun bs!1921015 () Bool)

(declare-fun d!2284043 () Bool)

(assert (= bs!1921015 (and d!2284043 b!7372357)))

(declare-fun lambda!458128 () Int)

(assert (=> bs!1921015 (= lambda!458128 lambda!458104)))

(declare-fun bs!1921016 () Bool)

(assert (= bs!1921016 (and d!2284043 d!2284011)))

(assert (=> bs!1921016 (= lambda!458128 lambda!458118)))

(declare-fun bs!1921017 () Bool)

(assert (= bs!1921017 (and d!2284043 d!2284039)))

(assert (=> bs!1921017 (= lambda!458128 lambda!458126)))

(declare-fun bs!1921018 () Bool)

(assert (= bs!1921018 (and d!2284043 d!2284041)))

(assert (=> bs!1921018 (= lambda!458128 lambda!458127)))

(assert (=> d!2284043 (= (inv!91551 ct2!378) (forall!18086 (exprs!8724 ct2!378) lambda!458128))))

(declare-fun bs!1921019 () Bool)

(assert (= bs!1921019 d!2284043))

(declare-fun m!8025930 () Bool)

(assert (=> bs!1921019 m!8025930))

(assert (=> start!719482 d!2284043))

(declare-fun bm!677343 () Bool)

(declare-fun c!1370288 () Bool)

(declare-fun c!1370285 () Bool)

(declare-fun call!677349 () List!71780)

(assert (=> bm!677343 (= call!677349 ($colon$colon!3266 (exprs!8724 ct1!282) (ite (or c!1370288 c!1370285) (regTwo!39080 r1!2370) r1!2370)))))

(declare-fun b!7372560 () Bool)

(declare-fun c!1370286 () Bool)

(assert (=> b!7372560 (= c!1370286 (is-Star!19284 r1!2370))))

(declare-fun e!4413622 () (Set Context!16448))

(declare-fun e!4413620 () (Set Context!16448))

(assert (=> b!7372560 (= e!4413622 e!4413620)))

(declare-fun c!1370287 () Bool)

(declare-fun call!677348 () (Set Context!16448))

(declare-fun bm!677344 () Bool)

(assert (=> bm!677344 (= call!677348 (derivationStepZipperDown!3110 (ite c!1370287 (regOne!39081 r1!2370) (regOne!39080 r1!2370)) (ite c!1370287 ct1!282 (Context!16449 call!677349)) c!10362))))

(declare-fun b!7372561 () Bool)

(declare-fun call!677352 () (Set Context!16448))

(assert (=> b!7372561 (= e!4413622 call!677352)))

(declare-fun b!7372562 () Bool)

(declare-fun e!4413619 () (Set Context!16448))

(assert (=> b!7372562 (= e!4413619 (set.insert ct1!282 (as set.empty (Set Context!16448))))))

(declare-fun b!7372563 () Bool)

(declare-fun e!4413617 () (Set Context!16448))

(declare-fun call!677351 () (Set Context!16448))

(assert (=> b!7372563 (= e!4413617 (set.union call!677348 call!677351))))

(declare-fun b!7372564 () Bool)

(assert (=> b!7372564 (= e!4413620 call!677352)))

(declare-fun d!2284045 () Bool)

(declare-fun c!1370289 () Bool)

(assert (=> d!2284045 (= c!1370289 (and (is-ElementMatch!19284 r1!2370) (= (c!1370232 r1!2370) c!10362)))))

(assert (=> d!2284045 (= (derivationStepZipperDown!3110 r1!2370 ct1!282 c!10362) e!4413619)))

(declare-fun bm!677345 () Bool)

(declare-fun call!677350 () (Set Context!16448))

(assert (=> bm!677345 (= call!677351 call!677350)))

(declare-fun b!7372565 () Bool)

(declare-fun e!4413618 () Bool)

(assert (=> b!7372565 (= e!4413618 (nullable!8360 (regOne!39080 r1!2370)))))

(declare-fun b!7372566 () Bool)

(declare-fun e!4413621 () (Set Context!16448))

(assert (=> b!7372566 (= e!4413619 e!4413621)))

(assert (=> b!7372566 (= c!1370287 (is-Union!19284 r1!2370))))

(declare-fun b!7372567 () Bool)

(assert (=> b!7372567 (= e!4413617 e!4413622)))

(assert (=> b!7372567 (= c!1370285 (is-Concat!28129 r1!2370))))

(declare-fun b!7372568 () Bool)

(assert (=> b!7372568 (= e!4413620 (as set.empty (Set Context!16448)))))

(declare-fun b!7372569 () Bool)

(assert (=> b!7372569 (= e!4413621 (set.union call!677348 call!677350))))

(declare-fun bm!677346 () Bool)

(declare-fun call!677353 () List!71780)

(assert (=> bm!677346 (= call!677350 (derivationStepZipperDown!3110 (ite c!1370287 (regTwo!39081 r1!2370) (ite c!1370288 (regTwo!39080 r1!2370) (ite c!1370285 (regOne!39080 r1!2370) (reg!19613 r1!2370)))) (ite (or c!1370287 c!1370288) ct1!282 (Context!16449 call!677353)) c!10362))))

(declare-fun b!7372570 () Bool)

(assert (=> b!7372570 (= c!1370288 e!4413618)))

(declare-fun res!2974647 () Bool)

(assert (=> b!7372570 (=> (not res!2974647) (not e!4413618))))

(assert (=> b!7372570 (= res!2974647 (is-Concat!28129 r1!2370))))

(assert (=> b!7372570 (= e!4413621 e!4413617)))

(declare-fun bm!677347 () Bool)

(assert (=> bm!677347 (= call!677353 call!677349)))

(declare-fun bm!677348 () Bool)

(assert (=> bm!677348 (= call!677352 call!677351)))

(assert (= (and d!2284045 c!1370289) b!7372562))

(assert (= (and d!2284045 (not c!1370289)) b!7372566))

(assert (= (and b!7372566 c!1370287) b!7372569))

(assert (= (and b!7372566 (not c!1370287)) b!7372570))

(assert (= (and b!7372570 res!2974647) b!7372565))

(assert (= (and b!7372570 c!1370288) b!7372563))

(assert (= (and b!7372570 (not c!1370288)) b!7372567))

(assert (= (and b!7372567 c!1370285) b!7372561))

(assert (= (and b!7372567 (not c!1370285)) b!7372560))

(assert (= (and b!7372560 c!1370286) b!7372564))

(assert (= (and b!7372560 (not c!1370286)) b!7372568))

(assert (= (or b!7372561 b!7372564) bm!677347))

(assert (= (or b!7372561 b!7372564) bm!677348))

(assert (= (or b!7372563 bm!677348) bm!677345))

(assert (= (or b!7372563 bm!677347) bm!677343))

(assert (= (or b!7372569 bm!677345) bm!677346))

(assert (= (or b!7372569 b!7372563) bm!677344))

(declare-fun m!8025932 () Bool)

(assert (=> bm!677343 m!8025932))

(assert (=> b!7372565 m!8025730))

(assert (=> b!7372562 m!8025898))

(declare-fun m!8025934 () Bool)

(assert (=> bm!677346 m!8025934))

(declare-fun m!8025936 () Bool)

(assert (=> bm!677344 m!8025936))

(assert (=> b!7372354 d!2284045))

(declare-fun b!7372583 () Bool)

(declare-fun e!4413625 () Bool)

(declare-fun tp!2095914 () Bool)

(assert (=> b!7372583 (= e!4413625 tp!2095914)))

(declare-fun b!7372582 () Bool)

(declare-fun tp!2095918 () Bool)

(declare-fun tp!2095915 () Bool)

(assert (=> b!7372582 (= e!4413625 (and tp!2095918 tp!2095915))))

(declare-fun b!7372581 () Bool)

(assert (=> b!7372581 (= e!4413625 tp_is_empty!48813)))

(declare-fun b!7372584 () Bool)

(declare-fun tp!2095917 () Bool)

(declare-fun tp!2095916 () Bool)

(assert (=> b!7372584 (= e!4413625 (and tp!2095917 tp!2095916))))

(assert (=> b!7372358 (= tp!2095872 e!4413625)))

(assert (= (and b!7372358 (is-ElementMatch!19284 (regOne!39080 r1!2370))) b!7372581))

(assert (= (and b!7372358 (is-Concat!28129 (regOne!39080 r1!2370))) b!7372582))

(assert (= (and b!7372358 (is-Star!19284 (regOne!39080 r1!2370))) b!7372583))

(assert (= (and b!7372358 (is-Union!19284 (regOne!39080 r1!2370))) b!7372584))

(declare-fun b!7372587 () Bool)

(declare-fun e!4413626 () Bool)

(declare-fun tp!2095919 () Bool)

(assert (=> b!7372587 (= e!4413626 tp!2095919)))

(declare-fun b!7372586 () Bool)

(declare-fun tp!2095923 () Bool)

(declare-fun tp!2095920 () Bool)

(assert (=> b!7372586 (= e!4413626 (and tp!2095923 tp!2095920))))

(declare-fun b!7372585 () Bool)

(assert (=> b!7372585 (= e!4413626 tp_is_empty!48813)))

(declare-fun b!7372588 () Bool)

(declare-fun tp!2095922 () Bool)

(declare-fun tp!2095921 () Bool)

(assert (=> b!7372588 (= e!4413626 (and tp!2095922 tp!2095921))))

(assert (=> b!7372358 (= tp!2095873 e!4413626)))

(assert (= (and b!7372358 (is-ElementMatch!19284 (regTwo!39080 r1!2370))) b!7372585))

(assert (= (and b!7372358 (is-Concat!28129 (regTwo!39080 r1!2370))) b!7372586))

(assert (= (and b!7372358 (is-Star!19284 (regTwo!39080 r1!2370))) b!7372587))

(assert (= (and b!7372358 (is-Union!19284 (regTwo!39080 r1!2370))) b!7372588))

(declare-fun b!7372593 () Bool)

(declare-fun e!4413629 () Bool)

(declare-fun tp!2095928 () Bool)

(declare-fun tp!2095929 () Bool)

(assert (=> b!7372593 (= e!4413629 (and tp!2095928 tp!2095929))))

(assert (=> b!7372362 (= tp!2095875 e!4413629)))

(assert (= (and b!7372362 (is-Cons!71656 (exprs!8724 cWitness!61))) b!7372593))

(declare-fun b!7372596 () Bool)

(declare-fun e!4413630 () Bool)

(declare-fun tp!2095930 () Bool)

(assert (=> b!7372596 (= e!4413630 tp!2095930)))

(declare-fun b!7372595 () Bool)

(declare-fun tp!2095934 () Bool)

(declare-fun tp!2095931 () Bool)

(assert (=> b!7372595 (= e!4413630 (and tp!2095934 tp!2095931))))

(declare-fun b!7372594 () Bool)

(assert (=> b!7372594 (= e!4413630 tp_is_empty!48813)))

(declare-fun b!7372597 () Bool)

(declare-fun tp!2095933 () Bool)

(declare-fun tp!2095932 () Bool)

(assert (=> b!7372597 (= e!4413630 (and tp!2095933 tp!2095932))))

(assert (=> b!7372351 (= tp!2095876 e!4413630)))

(assert (= (and b!7372351 (is-ElementMatch!19284 (regOne!39081 r1!2370))) b!7372594))

(assert (= (and b!7372351 (is-Concat!28129 (regOne!39081 r1!2370))) b!7372595))

(assert (= (and b!7372351 (is-Star!19284 (regOne!39081 r1!2370))) b!7372596))

(assert (= (and b!7372351 (is-Union!19284 (regOne!39081 r1!2370))) b!7372597))

(declare-fun b!7372600 () Bool)

(declare-fun e!4413631 () Bool)

(declare-fun tp!2095935 () Bool)

(assert (=> b!7372600 (= e!4413631 tp!2095935)))

(declare-fun b!7372599 () Bool)

(declare-fun tp!2095939 () Bool)

(declare-fun tp!2095936 () Bool)

(assert (=> b!7372599 (= e!4413631 (and tp!2095939 tp!2095936))))

(declare-fun b!7372598 () Bool)

(assert (=> b!7372598 (= e!4413631 tp_is_empty!48813)))

(declare-fun b!7372601 () Bool)

(declare-fun tp!2095938 () Bool)

(declare-fun tp!2095937 () Bool)

(assert (=> b!7372601 (= e!4413631 (and tp!2095938 tp!2095937))))

(assert (=> b!7372351 (= tp!2095874 e!4413631)))

(assert (= (and b!7372351 (is-ElementMatch!19284 (regTwo!39081 r1!2370))) b!7372598))

(assert (= (and b!7372351 (is-Concat!28129 (regTwo!39081 r1!2370))) b!7372599))

(assert (= (and b!7372351 (is-Star!19284 (regTwo!39081 r1!2370))) b!7372600))

(assert (= (and b!7372351 (is-Union!19284 (regTwo!39081 r1!2370))) b!7372601))

(declare-fun b!7372602 () Bool)

(declare-fun e!4413632 () Bool)

(declare-fun tp!2095940 () Bool)

(declare-fun tp!2095941 () Bool)

(assert (=> b!7372602 (= e!4413632 (and tp!2095940 tp!2095941))))

(assert (=> b!7372361 (= tp!2095877 e!4413632)))

(assert (= (and b!7372361 (is-Cons!71656 (exprs!8724 ct2!378))) b!7372602))

(declare-fun b!7372603 () Bool)

(declare-fun e!4413633 () Bool)

(declare-fun tp!2095942 () Bool)

(declare-fun tp!2095943 () Bool)

(assert (=> b!7372603 (= e!4413633 (and tp!2095942 tp!2095943))))

(assert (=> b!7372360 (= tp!2095878 e!4413633)))

(assert (= (and b!7372360 (is-Cons!71656 (exprs!8724 ct1!282))) b!7372603))

(declare-fun b!7372606 () Bool)

(declare-fun e!4413634 () Bool)

(declare-fun tp!2095944 () Bool)

(assert (=> b!7372606 (= e!4413634 tp!2095944)))

(declare-fun b!7372605 () Bool)

(declare-fun tp!2095948 () Bool)

(declare-fun tp!2095945 () Bool)

(assert (=> b!7372605 (= e!4413634 (and tp!2095948 tp!2095945))))

(declare-fun b!7372604 () Bool)

(assert (=> b!7372604 (= e!4413634 tp_is_empty!48813)))

(declare-fun b!7372607 () Bool)

(declare-fun tp!2095947 () Bool)

(declare-fun tp!2095946 () Bool)

(assert (=> b!7372607 (= e!4413634 (and tp!2095947 tp!2095946))))

(assert (=> b!7372359 (= tp!2095879 e!4413634)))

(assert (= (and b!7372359 (is-ElementMatch!19284 (reg!19613 r1!2370))) b!7372604))

(assert (= (and b!7372359 (is-Concat!28129 (reg!19613 r1!2370))) b!7372605))

(assert (= (and b!7372359 (is-Star!19284 (reg!19613 r1!2370))) b!7372606))

(assert (= (and b!7372359 (is-Union!19284 (reg!19613 r1!2370))) b!7372607))

(push 1)

(assert (not d!2284003))

(assert (not b!7372584))

(assert (not bm!677323))

(assert (not b!7372602))

(assert (not d!2284021))

(assert (not d!2284009))

(assert (not bm!677298))

(assert (not b!7372534))

(assert (not bm!677342))

(assert (not b!7372595))

(assert (not bm!677343))

(assert (not b!7372583))

(assert (not bm!677335))

(assert (not bm!677325))

(assert (not b!7372606))

(assert (not bm!677321))

(assert (not b!7372587))

(assert (not bm!677346))

(assert (not bm!677319))

(assert (not bm!677337))

(assert (not b!7372433))

(assert (not b!7372448))

(assert (not b!7372588))

(assert (not b!7372599))

(assert (not b!7372519))

(assert (not b!7372605))

(assert (not b!7372601))

(assert (not bm!677296))

(assert (not bm!677340))

(assert (not d!2284011))

(assert (not b!7372582))

(assert (not b!7372545))

(assert (not b!7372559))

(assert (not bm!677329))

(assert (not d!2284039))

(assert tp_is_empty!48813)

(assert (not bm!677295))

(assert (not d!2284041))

(assert (not b!7372607))

(assert (not bm!677328))

(assert (not bm!677344))

(assert (not b!7372596))

(assert (not b!7372527))

(assert (not b!7372597))

(assert (not d!2284023))

(assert (not b!7372513))

(assert (not b!7372526))

(assert (not b!7372449))

(assert (not bm!677334))

(assert (not b!7372603))

(assert (not b!7372593))

(assert (not b!7372565))

(assert (not bm!677322))

(assert (not d!2284043))

(assert (not d!2284007))

(assert (not b!7372586))

(assert (not bm!677331))

(assert (not b!7372600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

