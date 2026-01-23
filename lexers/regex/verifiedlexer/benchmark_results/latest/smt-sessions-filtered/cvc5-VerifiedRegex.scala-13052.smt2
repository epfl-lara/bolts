; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715018 () Bool)

(assert start!715018)

(declare-fun res!2960929 () Bool)

(declare-fun e!4386336 () Bool)

(assert (=> start!715018 (=> (not res!2960929) (not e!4386336))))

(declare-datatypes ((C!38258 0))(
  ( (C!38259 (val!29489 Int)) )
))
(declare-datatypes ((Regex!18992 0))(
  ( (ElementMatch!18992 (c!1359701 C!38258)) (Concat!27837 (regOne!38496 Regex!18992) (regTwo!38496 Regex!18992)) (EmptyExpr!18992) (Star!18992 (reg!19321 Regex!18992)) (EmptyLang!18992) (Union!18992 (regOne!38497 Regex!18992) (regTwo!38497 Regex!18992)) )
))
(declare-datatypes ((List!71488 0))(
  ( (Nil!71364) (Cons!71364 (h!77812 Regex!18992) (t!385873 List!71488)) )
))
(declare-datatypes ((Context!15864 0))(
  ( (Context!15865 (exprs!8432 List!71488)) )
))
(declare-fun cWitness!35 () Context!15864)

(declare-fun lt!2605956 () (Set Context!15864))

(assert (=> start!715018 (= res!2960929 (set.member cWitness!35 lt!2605956))))

(declare-fun ct1!256 () Context!15864)

(declare-fun c!10305 () C!38258)

(declare-fun derivationStepZipperUp!2672 (Context!15864 C!38258) (Set Context!15864))

(assert (=> start!715018 (= lt!2605956 (derivationStepZipperUp!2672 ct1!256 c!10305))))

(assert (=> start!715018 e!4386336))

(declare-fun tp_is_empty!48229 () Bool)

(assert (=> start!715018 tp_is_empty!48229))

(declare-fun e!4386339 () Bool)

(declare-fun inv!90821 (Context!15864) Bool)

(assert (=> start!715018 (and (inv!90821 cWitness!35) e!4386339)))

(declare-fun e!4386340 () Bool)

(assert (=> start!715018 (and (inv!90821 ct1!256) e!4386340)))

(declare-fun ct2!352 () Context!15864)

(declare-fun e!4386341 () Bool)

(assert (=> start!715018 (and (inv!90821 ct2!352) e!4386341)))

(declare-fun b!7325554 () Bool)

(declare-fun e!4386338 () Bool)

(declare-fun e!4386334 () Bool)

(assert (=> b!7325554 (= e!4386338 e!4386334)))

(declare-fun res!2960931 () Bool)

(assert (=> b!7325554 (=> (not res!2960931) (not e!4386334))))

(declare-fun nullable!8096 (Regex!18992) Bool)

(assert (=> b!7325554 (= res!2960931 (nullable!8096 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun lt!2605958 () Context!15864)

(declare-fun lt!2605954 () (Set Context!15864))

(declare-fun derivationStepZipperDown!2823 (Regex!18992 Context!15864 C!38258) (Set Context!15864))

(assert (=> b!7325554 (= lt!2605954 (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) lt!2605958 c!10305))))

(declare-fun lt!2605960 () List!71488)

(assert (=> b!7325554 (= lt!2605958 (Context!15865 lt!2605960))))

(declare-fun tail!14681 (List!71488) List!71488)

(assert (=> b!7325554 (= lt!2605960 (tail!14681 (exprs!8432 ct1!256)))))

(declare-fun b!7325555 () Bool)

(declare-fun res!2960930 () Bool)

(assert (=> b!7325555 (=> (not res!2960930) (not e!4386338))))

(declare-fun isEmpty!40910 (List!71488) Bool)

(assert (=> b!7325555 (= res!2960930 (not (isEmpty!40910 (exprs!8432 ct1!256))))))

(declare-fun b!7325556 () Bool)

(declare-fun tp!2080446 () Bool)

(assert (=> b!7325556 (= e!4386340 tp!2080446)))

(declare-fun b!7325557 () Bool)

(declare-fun tp!2080448 () Bool)

(assert (=> b!7325557 (= e!4386341 tp!2080448)))

(declare-fun b!7325558 () Bool)

(declare-fun e!4386337 () Bool)

(declare-fun e!4386335 () Bool)

(assert (=> b!7325558 (= e!4386337 (not e!4386335))))

(declare-fun res!2960928 () Bool)

(assert (=> b!7325558 (=> res!2960928 e!4386335)))

(declare-fun lt!2605955 () Context!15864)

(declare-fun lt!2605953 () (Set Context!15864))

(assert (=> b!7325558 (= res!2960928 (not (set.member lt!2605955 lt!2605953)))))

(declare-datatypes ((Unit!164949 0))(
  ( (Unit!164950) )
))
(declare-fun lt!2605961 () Unit!164949)

(declare-fun lambda!453993 () Int)

(declare-fun lemmaConcatPreservesForall!1673 (List!71488 List!71488 Int) Unit!164949)

(assert (=> b!7325558 (= lt!2605961 (lemmaConcatPreservesForall!1673 (exprs!8432 cWitness!35) (exprs!8432 ct2!352) lambda!453993))))

(declare-fun ++!16816 (List!71488 List!71488) List!71488)

(assert (=> b!7325558 (set.member lt!2605955 (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352))) c!10305))))

(assert (=> b!7325558 (= lt!2605955 (Context!15865 (++!16816 (exprs!8432 cWitness!35) (exprs!8432 ct2!352))))))

(declare-fun lt!2605959 () Unit!164949)

(assert (=> b!7325558 (= lt!2605959 (lemmaConcatPreservesForall!1673 lt!2605960 (exprs!8432 ct2!352) lambda!453993))))

(declare-fun lt!2605950 () Unit!164949)

(assert (=> b!7325558 (= lt!2605950 (lemmaConcatPreservesForall!1673 (exprs!8432 cWitness!35) (exprs!8432 ct2!352) lambda!453993))))

(declare-fun lt!2605949 () Unit!164949)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!5 (Regex!18992 Context!15864 Context!15864 Context!15864 C!38258) Unit!164949)

(assert (=> b!7325558 (= lt!2605949 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!5 (h!77812 (exprs!8432 ct1!256)) lt!2605958 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2605952 () List!71488)

(assert (=> b!7325558 (= lt!2605953 (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (tail!14681 lt!2605952)) c!10305))))

(declare-fun b!7325559 () Bool)

(declare-fun res!2960927 () Bool)

(assert (=> b!7325559 (=> (not res!2960927) (not e!4386337))))

(assert (=> b!7325559 (= res!2960927 (not (isEmpty!40910 lt!2605952)))))

(declare-fun b!7325560 () Bool)

(declare-fun forall!17844 (List!71488 Int) Bool)

(assert (=> b!7325560 (= e!4386335 (forall!17844 (exprs!8432 cWitness!35) lambda!453993))))

(declare-fun b!7325561 () Bool)

(declare-fun tp!2080447 () Bool)

(assert (=> b!7325561 (= e!4386339 tp!2080447)))

(declare-fun b!7325562 () Bool)

(assert (=> b!7325562 (= e!4386334 e!4386337)))

(declare-fun res!2960926 () Bool)

(assert (=> b!7325562 (=> (not res!2960926) (not e!4386337))))

(declare-fun lt!2605951 () (Set Context!15864))

(assert (=> b!7325562 (= res!2960926 (and (= lt!2605956 (set.union lt!2605954 lt!2605951)) (or (set.member cWitness!35 lt!2605954) (set.member cWitness!35 lt!2605951)) (not (set.member cWitness!35 lt!2605951))))))

(assert (=> b!7325562 (= lt!2605951 (derivationStepZipperUp!2672 lt!2605958 c!10305))))

(declare-fun b!7325563 () Bool)

(assert (=> b!7325563 (= e!4386336 e!4386338)))

(declare-fun res!2960925 () Bool)

(assert (=> b!7325563 (=> (not res!2960925) (not e!4386338))))

(assert (=> b!7325563 (= res!2960925 (is-Cons!71364 (exprs!8432 ct1!256)))))

(assert (=> b!7325563 (= lt!2605952 (++!16816 (exprs!8432 ct1!256) (exprs!8432 ct2!352)))))

(declare-fun lt!2605957 () Unit!164949)

(assert (=> b!7325563 (= lt!2605957 (lemmaConcatPreservesForall!1673 (exprs!8432 ct1!256) (exprs!8432 ct2!352) lambda!453993))))

(assert (= (and start!715018 res!2960929) b!7325563))

(assert (= (and b!7325563 res!2960925) b!7325555))

(assert (= (and b!7325555 res!2960930) b!7325554))

(assert (= (and b!7325554 res!2960931) b!7325562))

(assert (= (and b!7325562 res!2960926) b!7325559))

(assert (= (and b!7325559 res!2960927) b!7325558))

(assert (= (and b!7325558 (not res!2960928)) b!7325560))

(assert (= start!715018 b!7325561))

(assert (= start!715018 b!7325556))

(assert (= start!715018 b!7325557))

(declare-fun m!7991326 () Bool)

(assert (=> b!7325554 m!7991326))

(declare-fun m!7991328 () Bool)

(assert (=> b!7325554 m!7991328))

(declare-fun m!7991330 () Bool)

(assert (=> b!7325554 m!7991330))

(declare-fun m!7991332 () Bool)

(assert (=> b!7325562 m!7991332))

(declare-fun m!7991334 () Bool)

(assert (=> b!7325562 m!7991334))

(declare-fun m!7991336 () Bool)

(assert (=> b!7325562 m!7991336))

(declare-fun m!7991338 () Bool)

(assert (=> start!715018 m!7991338))

(declare-fun m!7991340 () Bool)

(assert (=> start!715018 m!7991340))

(declare-fun m!7991342 () Bool)

(assert (=> start!715018 m!7991342))

(declare-fun m!7991344 () Bool)

(assert (=> start!715018 m!7991344))

(declare-fun m!7991346 () Bool)

(assert (=> start!715018 m!7991346))

(declare-fun m!7991348 () Bool)

(assert (=> b!7325558 m!7991348))

(assert (=> b!7325558 m!7991348))

(declare-fun m!7991350 () Bool)

(assert (=> b!7325558 m!7991350))

(declare-fun m!7991352 () Bool)

(assert (=> b!7325558 m!7991352))

(declare-fun m!7991354 () Bool)

(assert (=> b!7325558 m!7991354))

(declare-fun m!7991356 () Bool)

(assert (=> b!7325558 m!7991356))

(declare-fun m!7991358 () Bool)

(assert (=> b!7325558 m!7991358))

(declare-fun m!7991360 () Bool)

(assert (=> b!7325558 m!7991360))

(declare-fun m!7991362 () Bool)

(assert (=> b!7325558 m!7991362))

(declare-fun m!7991364 () Bool)

(assert (=> b!7325558 m!7991364))

(declare-fun m!7991366 () Bool)

(assert (=> b!7325558 m!7991366))

(declare-fun m!7991368 () Bool)

(assert (=> b!7325559 m!7991368))

(declare-fun m!7991370 () Bool)

(assert (=> b!7325563 m!7991370))

(declare-fun m!7991372 () Bool)

(assert (=> b!7325563 m!7991372))

(declare-fun m!7991374 () Bool)

(assert (=> b!7325555 m!7991374))

(declare-fun m!7991376 () Bool)

(assert (=> b!7325560 m!7991376))

(push 1)

(assert (not b!7325557))

(assert (not b!7325563))

(assert (not b!7325558))

(assert (not b!7325555))

(assert (not b!7325554))

(assert (not b!7325561))

(assert (not start!715018))

(assert (not b!7325556))

(assert (not b!7325559))

(assert (not b!7325560))

(assert tp_is_empty!48229)

(assert (not b!7325562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274889 () Bool)

(declare-fun res!2960957 () Bool)

(declare-fun e!4386370 () Bool)

(assert (=> d!2274889 (=> res!2960957 e!4386370)))

(assert (=> d!2274889 (= res!2960957 (is-Nil!71364 (exprs!8432 cWitness!35)))))

(assert (=> d!2274889 (= (forall!17844 (exprs!8432 cWitness!35) lambda!453993) e!4386370)))

(declare-fun b!7325598 () Bool)

(declare-fun e!4386371 () Bool)

(assert (=> b!7325598 (= e!4386370 e!4386371)))

(declare-fun res!2960958 () Bool)

(assert (=> b!7325598 (=> (not res!2960958) (not e!4386371))))

(declare-fun dynLambda!29402 (Int Regex!18992) Bool)

(assert (=> b!7325598 (= res!2960958 (dynLambda!29402 lambda!453993 (h!77812 (exprs!8432 cWitness!35))))))

(declare-fun b!7325599 () Bool)

(assert (=> b!7325599 (= e!4386371 (forall!17844 (t!385873 (exprs!8432 cWitness!35)) lambda!453993))))

(assert (= (and d!2274889 (not res!2960957)) b!7325598))

(assert (= (and b!7325598 res!2960958) b!7325599))

(declare-fun b_lambda!283331 () Bool)

(assert (=> (not b_lambda!283331) (not b!7325598)))

(declare-fun m!7991430 () Bool)

(assert (=> b!7325598 m!7991430))

(declare-fun m!7991432 () Bool)

(assert (=> b!7325599 m!7991432))

(assert (=> b!7325560 d!2274889))

(declare-fun d!2274891 () Bool)

(assert (=> d!2274891 (= (isEmpty!40910 (exprs!8432 ct1!256)) (is-Nil!71364 (exprs!8432 ct1!256)))))

(assert (=> b!7325555 d!2274891))

(declare-fun d!2274893 () Bool)

(assert (=> d!2274893 (= (isEmpty!40910 lt!2605952) (is-Nil!71364 lt!2605952))))

(assert (=> b!7325559 d!2274893))

(declare-fun d!2274895 () Bool)

(declare-fun nullableFct!3210 (Regex!18992) Bool)

(assert (=> d!2274895 (= (nullable!8096 (h!77812 (exprs!8432 ct1!256))) (nullableFct!3210 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun bs!1916612 () Bool)

(assert (= bs!1916612 d!2274895))

(declare-fun m!7991434 () Bool)

(assert (=> bs!1916612 m!7991434))

(assert (=> b!7325554 d!2274895))

(declare-fun bm!666599 () Bool)

(declare-fun call!666606 () (Set Context!15864))

(declare-fun call!666607 () (Set Context!15864))

(assert (=> bm!666599 (= call!666606 call!666607)))

(declare-fun bm!666600 () Bool)

(declare-fun call!666609 () (Set Context!15864))

(assert (=> bm!666600 (= call!666609 call!666606)))

(declare-fun b!7325622 () Bool)

(declare-fun e!4386384 () (Set Context!15864))

(assert (=> b!7325622 (= e!4386384 (as set.empty (Set Context!15864)))))

(declare-fun b!7325623 () Bool)

(declare-fun c!1359715 () Bool)

(declare-fun e!4386387 () Bool)

(assert (=> b!7325623 (= c!1359715 e!4386387)))

(declare-fun res!2960961 () Bool)

(assert (=> b!7325623 (=> (not res!2960961) (not e!4386387))))

(assert (=> b!7325623 (= res!2960961 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun e!4386385 () (Set Context!15864))

(declare-fun e!4386388 () (Set Context!15864))

(assert (=> b!7325623 (= e!4386385 e!4386388)))

(declare-fun call!666604 () (Set Context!15864))

(declare-fun bm!666601 () Bool)

(declare-fun c!1359714 () Bool)

(declare-fun call!666608 () List!71488)

(assert (=> bm!666601 (= call!666604 (derivationStepZipperDown!2823 (ite c!1359714 (regOne!38497 (h!77812 (exprs!8432 ct1!256))) (regOne!38496 (h!77812 (exprs!8432 ct1!256)))) (ite c!1359714 lt!2605958 (Context!15865 call!666608)) c!10305))))

(declare-fun b!7325625 () Bool)

(declare-fun e!4386389 () (Set Context!15864))

(assert (=> b!7325625 (= e!4386388 e!4386389)))

(declare-fun c!1359713 () Bool)

(assert (=> b!7325625 (= c!1359713 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun b!7325626 () Bool)

(assert (=> b!7325626 (= e!4386389 call!666609)))

(declare-fun b!7325624 () Bool)

(declare-fun e!4386386 () (Set Context!15864))

(assert (=> b!7325624 (= e!4386386 (set.insert lt!2605958 (as set.empty (Set Context!15864))))))

(declare-fun d!2274897 () Bool)

(declare-fun c!1359716 () Bool)

(assert (=> d!2274897 (= c!1359716 (and (is-ElementMatch!18992 (h!77812 (exprs!8432 ct1!256))) (= (c!1359701 (h!77812 (exprs!8432 ct1!256))) c!10305)))))

(assert (=> d!2274897 (= (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) lt!2605958 c!10305) e!4386386)))

(declare-fun b!7325627 () Bool)

(assert (=> b!7325627 (= e!4386388 (set.union call!666604 call!666606))))

(declare-fun b!7325628 () Bool)

(assert (=> b!7325628 (= e!4386387 (nullable!8096 (regOne!38496 (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun b!7325629 () Bool)

(assert (=> b!7325629 (= e!4386386 e!4386385)))

(assert (=> b!7325629 (= c!1359714 (is-Union!18992 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun bm!666602 () Bool)

(declare-fun call!666605 () List!71488)

(assert (=> bm!666602 (= call!666605 call!666608)))

(declare-fun b!7325630 () Bool)

(assert (=> b!7325630 (= e!4386385 (set.union call!666604 call!666607))))

(declare-fun b!7325631 () Bool)

(assert (=> b!7325631 (= e!4386384 call!666609)))

(declare-fun b!7325632 () Bool)

(declare-fun c!1359717 () Bool)

(assert (=> b!7325632 (= c!1359717 (is-Star!18992 (h!77812 (exprs!8432 ct1!256))))))

(assert (=> b!7325632 (= e!4386389 e!4386384)))

(declare-fun bm!666603 () Bool)

(declare-fun $colon$colon!3026 (List!71488 Regex!18992) List!71488)

(assert (=> bm!666603 (= call!666608 ($colon$colon!3026 (exprs!8432 lt!2605958) (ite (or c!1359715 c!1359713) (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun bm!666604 () Bool)

(assert (=> bm!666604 (= call!666607 (derivationStepZipperDown!2823 (ite c!1359714 (regTwo!38497 (h!77812 (exprs!8432 ct1!256))) (ite c!1359715 (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (ite c!1359713 (regOne!38496 (h!77812 (exprs!8432 ct1!256))) (reg!19321 (h!77812 (exprs!8432 ct1!256)))))) (ite (or c!1359714 c!1359715) lt!2605958 (Context!15865 call!666605)) c!10305))))

(assert (= (and d!2274897 c!1359716) b!7325624))

(assert (= (and d!2274897 (not c!1359716)) b!7325629))

(assert (= (and b!7325629 c!1359714) b!7325630))

(assert (= (and b!7325629 (not c!1359714)) b!7325623))

(assert (= (and b!7325623 res!2960961) b!7325628))

(assert (= (and b!7325623 c!1359715) b!7325627))

(assert (= (and b!7325623 (not c!1359715)) b!7325625))

(assert (= (and b!7325625 c!1359713) b!7325626))

(assert (= (and b!7325625 (not c!1359713)) b!7325632))

(assert (= (and b!7325632 c!1359717) b!7325631))

(assert (= (and b!7325632 (not c!1359717)) b!7325622))

(assert (= (or b!7325626 b!7325631) bm!666602))

(assert (= (or b!7325626 b!7325631) bm!666600))

(assert (= (or b!7325627 bm!666600) bm!666599))

(assert (= (or b!7325627 bm!666602) bm!666603))

(assert (= (or b!7325630 bm!666599) bm!666604))

(assert (= (or b!7325630 b!7325627) bm!666601))

(declare-fun m!7991436 () Bool)

(assert (=> bm!666601 m!7991436))

(declare-fun m!7991438 () Bool)

(assert (=> bm!666603 m!7991438))

(declare-fun m!7991440 () Bool)

(assert (=> b!7325624 m!7991440))

(declare-fun m!7991442 () Bool)

(assert (=> b!7325628 m!7991442))

(declare-fun m!7991444 () Bool)

(assert (=> bm!666604 m!7991444))

(assert (=> b!7325554 d!2274897))

(declare-fun d!2274903 () Bool)

(assert (=> d!2274903 (= (tail!14681 (exprs!8432 ct1!256)) (t!385873 (exprs!8432 ct1!256)))))

(assert (=> b!7325554 d!2274903))

(declare-fun d!2274905 () Bool)

(declare-fun e!4386400 () Bool)

(assert (=> d!2274905 e!4386400))

(declare-fun res!2960973 () Bool)

(assert (=> d!2274905 (=> (not res!2960973) (not e!4386400))))

(declare-fun lt!2606006 () List!71488)

(declare-fun content!14936 (List!71488) (Set Regex!18992))

(assert (=> d!2274905 (= res!2960973 (= (content!14936 lt!2606006) (set.union (content!14936 (exprs!8432 ct1!256)) (content!14936 (exprs!8432 ct2!352)))))))

(declare-fun e!4386401 () List!71488)

(assert (=> d!2274905 (= lt!2606006 e!4386401)))

(declare-fun c!1359723 () Bool)

(assert (=> d!2274905 (= c!1359723 (is-Nil!71364 (exprs!8432 ct1!256)))))

(assert (=> d!2274905 (= (++!16816 (exprs!8432 ct1!256) (exprs!8432 ct2!352)) lt!2606006)))

(declare-fun b!7325653 () Bool)

(assert (=> b!7325653 (= e!4386401 (exprs!8432 ct2!352))))

(declare-fun b!7325656 () Bool)

(assert (=> b!7325656 (= e!4386400 (or (not (= (exprs!8432 ct2!352) Nil!71364)) (= lt!2606006 (exprs!8432 ct1!256))))))

(declare-fun b!7325655 () Bool)

(declare-fun res!2960972 () Bool)

(assert (=> b!7325655 (=> (not res!2960972) (not e!4386400))))

(declare-fun size!41913 (List!71488) Int)

(assert (=> b!7325655 (= res!2960972 (= (size!41913 lt!2606006) (+ (size!41913 (exprs!8432 ct1!256)) (size!41913 (exprs!8432 ct2!352)))))))

(declare-fun b!7325654 () Bool)

(assert (=> b!7325654 (= e!4386401 (Cons!71364 (h!77812 (exprs!8432 ct1!256)) (++!16816 (t!385873 (exprs!8432 ct1!256)) (exprs!8432 ct2!352))))))

(assert (= (and d!2274905 c!1359723) b!7325653))

(assert (= (and d!2274905 (not c!1359723)) b!7325654))

(assert (= (and d!2274905 res!2960973) b!7325655))

(assert (= (and b!7325655 res!2960972) b!7325656))

(declare-fun m!7991460 () Bool)

(assert (=> d!2274905 m!7991460))

(declare-fun m!7991462 () Bool)

(assert (=> d!2274905 m!7991462))

(declare-fun m!7991464 () Bool)

(assert (=> d!2274905 m!7991464))

(declare-fun m!7991466 () Bool)

(assert (=> b!7325655 m!7991466))

(declare-fun m!7991468 () Bool)

(assert (=> b!7325655 m!7991468))

(declare-fun m!7991470 () Bool)

(assert (=> b!7325655 m!7991470))

(declare-fun m!7991472 () Bool)

(assert (=> b!7325654 m!7991472))

(assert (=> b!7325563 d!2274905))

(declare-fun d!2274909 () Bool)

(assert (=> d!2274909 (forall!17844 (++!16816 (exprs!8432 ct1!256) (exprs!8432 ct2!352)) lambda!453993)))

(declare-fun lt!2606011 () Unit!164949)

(declare-fun choose!56966 (List!71488 List!71488 Int) Unit!164949)

(assert (=> d!2274909 (= lt!2606011 (choose!56966 (exprs!8432 ct1!256) (exprs!8432 ct2!352) lambda!453993))))

(assert (=> d!2274909 (forall!17844 (exprs!8432 ct1!256) lambda!453993)))

(assert (=> d!2274909 (= (lemmaConcatPreservesForall!1673 (exprs!8432 ct1!256) (exprs!8432 ct2!352) lambda!453993) lt!2606011)))

(declare-fun bs!1916613 () Bool)

(assert (= bs!1916613 d!2274909))

(assert (=> bs!1916613 m!7991370))

(assert (=> bs!1916613 m!7991370))

(declare-fun m!7991474 () Bool)

(assert (=> bs!1916613 m!7991474))

(declare-fun m!7991476 () Bool)

(assert (=> bs!1916613 m!7991476))

(declare-fun m!7991478 () Bool)

(assert (=> bs!1916613 m!7991478))

(assert (=> b!7325563 d!2274909))

(declare-fun b!7325667 () Bool)

(declare-fun e!4386408 () Bool)

(assert (=> b!7325667 (= e!4386408 (nullable!8096 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun b!7325668 () Bool)

(declare-fun e!4386409 () (Set Context!15864))

(assert (=> b!7325668 (= e!4386409 (as set.empty (Set Context!15864)))))

(declare-fun b!7325669 () Bool)

(declare-fun call!666612 () (Set Context!15864))

(declare-fun e!4386410 () (Set Context!15864))

(assert (=> b!7325669 (= e!4386410 (set.union call!666612 (derivationStepZipperUp!2672 (Context!15865 (t!385873 (exprs!8432 ct1!256))) c!10305)))))

(declare-fun bm!666607 () Bool)

(assert (=> bm!666607 (= call!666612 (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (t!385873 (exprs!8432 ct1!256))) c!10305))))

(declare-fun d!2274911 () Bool)

(declare-fun c!1359729 () Bool)

(assert (=> d!2274911 (= c!1359729 e!4386408)))

(declare-fun res!2960976 () Bool)

(assert (=> d!2274911 (=> (not res!2960976) (not e!4386408))))

(assert (=> d!2274911 (= res!2960976 (is-Cons!71364 (exprs!8432 ct1!256)))))

(assert (=> d!2274911 (= (derivationStepZipperUp!2672 ct1!256 c!10305) e!4386410)))

(declare-fun b!7325670 () Bool)

(assert (=> b!7325670 (= e!4386409 call!666612)))

(declare-fun b!7325671 () Bool)

(assert (=> b!7325671 (= e!4386410 e!4386409)))

(declare-fun c!1359728 () Bool)

(assert (=> b!7325671 (= c!1359728 (is-Cons!71364 (exprs!8432 ct1!256)))))

(assert (= (and d!2274911 res!2960976) b!7325667))

(assert (= (and d!2274911 c!1359729) b!7325669))

(assert (= (and d!2274911 (not c!1359729)) b!7325671))

(assert (= (and b!7325671 c!1359728) b!7325670))

(assert (= (and b!7325671 (not c!1359728)) b!7325668))

(assert (= (or b!7325669 b!7325670) bm!666607))

(assert (=> b!7325667 m!7991326))

(declare-fun m!7991486 () Bool)

(assert (=> b!7325669 m!7991486))

(declare-fun m!7991488 () Bool)

(assert (=> bm!666607 m!7991488))

(assert (=> start!715018 d!2274911))

(declare-fun bs!1916615 () Bool)

(declare-fun d!2274915 () Bool)

(assert (= bs!1916615 (and d!2274915 b!7325563)))

(declare-fun lambda!454007 () Int)

(assert (=> bs!1916615 (= lambda!454007 lambda!453993)))

(assert (=> d!2274915 (= (inv!90821 cWitness!35) (forall!17844 (exprs!8432 cWitness!35) lambda!454007))))

(declare-fun bs!1916616 () Bool)

(assert (= bs!1916616 d!2274915))

(declare-fun m!7991490 () Bool)

(assert (=> bs!1916616 m!7991490))

(assert (=> start!715018 d!2274915))

(declare-fun bs!1916617 () Bool)

(declare-fun d!2274917 () Bool)

(assert (= bs!1916617 (and d!2274917 b!7325563)))

(declare-fun lambda!454008 () Int)

(assert (=> bs!1916617 (= lambda!454008 lambda!453993)))

(declare-fun bs!1916618 () Bool)

(assert (= bs!1916618 (and d!2274917 d!2274915)))

(assert (=> bs!1916618 (= lambda!454008 lambda!454007)))

(assert (=> d!2274917 (= (inv!90821 ct1!256) (forall!17844 (exprs!8432 ct1!256) lambda!454008))))

(declare-fun bs!1916619 () Bool)

(assert (= bs!1916619 d!2274917))

(declare-fun m!7991492 () Bool)

(assert (=> bs!1916619 m!7991492))

(assert (=> start!715018 d!2274917))

(declare-fun bs!1916620 () Bool)

(declare-fun d!2274919 () Bool)

(assert (= bs!1916620 (and d!2274919 b!7325563)))

(declare-fun lambda!454009 () Int)

(assert (=> bs!1916620 (= lambda!454009 lambda!453993)))

(declare-fun bs!1916621 () Bool)

(assert (= bs!1916621 (and d!2274919 d!2274915)))

(assert (=> bs!1916621 (= lambda!454009 lambda!454007)))

(declare-fun bs!1916622 () Bool)

(assert (= bs!1916622 (and d!2274919 d!2274917)))

(assert (=> bs!1916622 (= lambda!454009 lambda!454008)))

(assert (=> d!2274919 (= (inv!90821 ct2!352) (forall!17844 (exprs!8432 ct2!352) lambda!454009))))

(declare-fun bs!1916623 () Bool)

(assert (= bs!1916623 d!2274919))

(declare-fun m!7991494 () Bool)

(assert (=> bs!1916623 m!7991494))

(assert (=> start!715018 d!2274919))

(declare-fun d!2274921 () Bool)

(declare-fun e!4386411 () Bool)

(assert (=> d!2274921 e!4386411))

(declare-fun res!2960978 () Bool)

(assert (=> d!2274921 (=> (not res!2960978) (not e!4386411))))

(declare-fun lt!2606013 () List!71488)

(assert (=> d!2274921 (= res!2960978 (= (content!14936 lt!2606013) (set.union (content!14936 lt!2605960) (content!14936 (exprs!8432 ct2!352)))))))

(declare-fun e!4386412 () List!71488)

(assert (=> d!2274921 (= lt!2606013 e!4386412)))

(declare-fun c!1359730 () Bool)

(assert (=> d!2274921 (= c!1359730 (is-Nil!71364 lt!2605960))))

(assert (=> d!2274921 (= (++!16816 lt!2605960 (exprs!8432 ct2!352)) lt!2606013)))

(declare-fun b!7325672 () Bool)

(assert (=> b!7325672 (= e!4386412 (exprs!8432 ct2!352))))

(declare-fun b!7325675 () Bool)

(assert (=> b!7325675 (= e!4386411 (or (not (= (exprs!8432 ct2!352) Nil!71364)) (= lt!2606013 lt!2605960)))))

(declare-fun b!7325674 () Bool)

(declare-fun res!2960977 () Bool)

(assert (=> b!7325674 (=> (not res!2960977) (not e!4386411))))

(assert (=> b!7325674 (= res!2960977 (= (size!41913 lt!2606013) (+ (size!41913 lt!2605960) (size!41913 (exprs!8432 ct2!352)))))))

(declare-fun b!7325673 () Bool)

(assert (=> b!7325673 (= e!4386412 (Cons!71364 (h!77812 lt!2605960) (++!16816 (t!385873 lt!2605960) (exprs!8432 ct2!352))))))

(assert (= (and d!2274921 c!1359730) b!7325672))

(assert (= (and d!2274921 (not c!1359730)) b!7325673))

(assert (= (and d!2274921 res!2960978) b!7325674))

(assert (= (and b!7325674 res!2960977) b!7325675))

(declare-fun m!7991496 () Bool)

(assert (=> d!2274921 m!7991496))

(declare-fun m!7991498 () Bool)

(assert (=> d!2274921 m!7991498))

(assert (=> d!2274921 m!7991464))

(declare-fun m!7991500 () Bool)

(assert (=> b!7325674 m!7991500))

(declare-fun m!7991502 () Bool)

(assert (=> b!7325674 m!7991502))

(assert (=> b!7325674 m!7991470))

(declare-fun m!7991504 () Bool)

(assert (=> b!7325673 m!7991504))

(assert (=> b!7325558 d!2274921))

(declare-fun bs!1916624 () Bool)

(declare-fun d!2274923 () Bool)

(assert (= bs!1916624 (and d!2274923 b!7325563)))

(declare-fun lambda!454014 () Int)

(assert (=> bs!1916624 (= lambda!454014 lambda!453993)))

(declare-fun bs!1916625 () Bool)

(assert (= bs!1916625 (and d!2274923 d!2274915)))

(assert (=> bs!1916625 (= lambda!454014 lambda!454007)))

(declare-fun bs!1916626 () Bool)

(assert (= bs!1916626 (and d!2274923 d!2274917)))

(assert (=> bs!1916626 (= lambda!454014 lambda!454008)))

(declare-fun bs!1916627 () Bool)

(assert (= bs!1916627 (and d!2274923 d!2274919)))

(assert (=> bs!1916627 (= lambda!454014 lambda!454009)))

(assert (=> d!2274923 (set.member (Context!15865 (++!16816 (exprs!8432 cWitness!35) (exprs!8432 ct2!352))) (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (++!16816 (exprs!8432 lt!2605958) (exprs!8432 ct2!352))) c!10305))))

(declare-fun lt!2606022 () Unit!164949)

(assert (=> d!2274923 (= lt!2606022 (lemmaConcatPreservesForall!1673 (exprs!8432 lt!2605958) (exprs!8432 ct2!352) lambda!454014))))

(declare-fun lt!2606021 () Unit!164949)

(assert (=> d!2274923 (= lt!2606021 (lemmaConcatPreservesForall!1673 (exprs!8432 cWitness!35) (exprs!8432 ct2!352) lambda!454014))))

(declare-fun lt!2606020 () Unit!164949)

(declare-fun choose!56967 (Regex!18992 Context!15864 Context!15864 Context!15864 C!38258) Unit!164949)

(assert (=> d!2274923 (= lt!2606020 (choose!56967 (h!77812 (exprs!8432 ct1!256)) lt!2605958 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9632 (Regex!18992) Bool)

(assert (=> d!2274923 (validRegex!9632 (h!77812 (exprs!8432 ct1!256)))))

(assert (=> d!2274923 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!5 (h!77812 (exprs!8432 ct1!256)) lt!2605958 ct2!352 cWitness!35 c!10305) lt!2606020)))

(declare-fun bs!1916628 () Bool)

(assert (= bs!1916628 d!2274923))

(declare-fun m!7991506 () Bool)

(assert (=> bs!1916628 m!7991506))

(declare-fun m!7991508 () Bool)

(assert (=> bs!1916628 m!7991508))

(declare-fun m!7991510 () Bool)

(assert (=> bs!1916628 m!7991510))

(declare-fun m!7991512 () Bool)

(assert (=> bs!1916628 m!7991512))

(assert (=> bs!1916628 m!7991350))

(declare-fun m!7991514 () Bool)

(assert (=> bs!1916628 m!7991514))

(declare-fun m!7991516 () Bool)

(assert (=> bs!1916628 m!7991516))

(declare-fun m!7991518 () Bool)

(assert (=> bs!1916628 m!7991518))

(assert (=> b!7325558 d!2274923))

(declare-fun bm!666620 () Bool)

(declare-fun call!666627 () (Set Context!15864))

(declare-fun call!666628 () (Set Context!15864))

(assert (=> bm!666620 (= call!666627 call!666628)))

(declare-fun bm!666621 () Bool)

(declare-fun call!666630 () (Set Context!15864))

(assert (=> bm!666621 (= call!666630 call!666627)))

(declare-fun b!7325698 () Bool)

(declare-fun e!4386425 () (Set Context!15864))

(assert (=> b!7325698 (= e!4386425 (as set.empty (Set Context!15864)))))

(declare-fun b!7325699 () Bool)

(declare-fun c!1359744 () Bool)

(declare-fun e!4386428 () Bool)

(assert (=> b!7325699 (= c!1359744 e!4386428)))

(declare-fun res!2960981 () Bool)

(assert (=> b!7325699 (=> (not res!2960981) (not e!4386428))))

(assert (=> b!7325699 (= res!2960981 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun e!4386426 () (Set Context!15864))

(declare-fun e!4386429 () (Set Context!15864))

(assert (=> b!7325699 (= e!4386426 e!4386429)))

(declare-fun call!666625 () (Set Context!15864))

(declare-fun bm!666622 () Bool)

(declare-fun c!1359743 () Bool)

(declare-fun call!666629 () List!71488)

(assert (=> bm!666622 (= call!666625 (derivationStepZipperDown!2823 (ite c!1359743 (regOne!38497 (h!77812 (exprs!8432 ct1!256))) (regOne!38496 (h!77812 (exprs!8432 ct1!256)))) (ite c!1359743 (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352))) (Context!15865 call!666629)) c!10305))))

(declare-fun b!7325701 () Bool)

(declare-fun e!4386430 () (Set Context!15864))

(assert (=> b!7325701 (= e!4386429 e!4386430)))

(declare-fun c!1359742 () Bool)

(assert (=> b!7325701 (= c!1359742 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun b!7325702 () Bool)

(assert (=> b!7325702 (= e!4386430 call!666630)))

(declare-fun b!7325700 () Bool)

(declare-fun e!4386427 () (Set Context!15864))

(assert (=> b!7325700 (= e!4386427 (set.insert (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352))) (as set.empty (Set Context!15864))))))

(declare-fun d!2274925 () Bool)

(declare-fun c!1359745 () Bool)

(assert (=> d!2274925 (= c!1359745 (and (is-ElementMatch!18992 (h!77812 (exprs!8432 ct1!256))) (= (c!1359701 (h!77812 (exprs!8432 ct1!256))) c!10305)))))

(assert (=> d!2274925 (= (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352))) c!10305) e!4386427)))

(declare-fun b!7325703 () Bool)

(assert (=> b!7325703 (= e!4386429 (set.union call!666625 call!666627))))

(declare-fun b!7325704 () Bool)

(assert (=> b!7325704 (= e!4386428 (nullable!8096 (regOne!38496 (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun b!7325705 () Bool)

(assert (=> b!7325705 (= e!4386427 e!4386426)))

(assert (=> b!7325705 (= c!1359743 (is-Union!18992 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun bm!666623 () Bool)

(declare-fun call!666626 () List!71488)

(assert (=> bm!666623 (= call!666626 call!666629)))

(declare-fun b!7325706 () Bool)

(assert (=> b!7325706 (= e!4386426 (set.union call!666625 call!666628))))

(declare-fun b!7325707 () Bool)

(assert (=> b!7325707 (= e!4386425 call!666630)))

(declare-fun b!7325708 () Bool)

(declare-fun c!1359746 () Bool)

(assert (=> b!7325708 (= c!1359746 (is-Star!18992 (h!77812 (exprs!8432 ct1!256))))))

(assert (=> b!7325708 (= e!4386430 e!4386425)))

(declare-fun bm!666624 () Bool)

(assert (=> bm!666624 (= call!666629 ($colon$colon!3026 (exprs!8432 (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352)))) (ite (or c!1359744 c!1359742) (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun bm!666625 () Bool)

(assert (=> bm!666625 (= call!666628 (derivationStepZipperDown!2823 (ite c!1359743 (regTwo!38497 (h!77812 (exprs!8432 ct1!256))) (ite c!1359744 (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (ite c!1359742 (regOne!38496 (h!77812 (exprs!8432 ct1!256))) (reg!19321 (h!77812 (exprs!8432 ct1!256)))))) (ite (or c!1359743 c!1359744) (Context!15865 (++!16816 lt!2605960 (exprs!8432 ct2!352))) (Context!15865 call!666626)) c!10305))))

(assert (= (and d!2274925 c!1359745) b!7325700))

(assert (= (and d!2274925 (not c!1359745)) b!7325705))

(assert (= (and b!7325705 c!1359743) b!7325706))

(assert (= (and b!7325705 (not c!1359743)) b!7325699))

(assert (= (and b!7325699 res!2960981) b!7325704))

(assert (= (and b!7325699 c!1359744) b!7325703))

(assert (= (and b!7325699 (not c!1359744)) b!7325701))

(assert (= (and b!7325701 c!1359742) b!7325702))

(assert (= (and b!7325701 (not c!1359742)) b!7325708))

(assert (= (and b!7325708 c!1359746) b!7325707))

(assert (= (and b!7325708 (not c!1359746)) b!7325698))

(assert (= (or b!7325702 b!7325707) bm!666623))

(assert (= (or b!7325702 b!7325707) bm!666621))

(assert (= (or b!7325703 bm!666621) bm!666620))

(assert (= (or b!7325703 bm!666623) bm!666624))

(assert (= (or b!7325706 bm!666620) bm!666625))

(assert (= (or b!7325706 b!7325703) bm!666622))

(declare-fun m!7991520 () Bool)

(assert (=> bm!666622 m!7991520))

(declare-fun m!7991522 () Bool)

(assert (=> bm!666624 m!7991522))

(declare-fun m!7991524 () Bool)

(assert (=> b!7325700 m!7991524))

(assert (=> b!7325704 m!7991442))

(declare-fun m!7991526 () Bool)

(assert (=> bm!666625 m!7991526))

(assert (=> b!7325558 d!2274925))

(declare-fun d!2274927 () Bool)

(declare-fun e!4386431 () Bool)

(assert (=> d!2274927 e!4386431))

(declare-fun res!2960983 () Bool)

(assert (=> d!2274927 (=> (not res!2960983) (not e!4386431))))

(declare-fun lt!2606023 () List!71488)

(assert (=> d!2274927 (= res!2960983 (= (content!14936 lt!2606023) (set.union (content!14936 (exprs!8432 cWitness!35)) (content!14936 (exprs!8432 ct2!352)))))))

(declare-fun e!4386432 () List!71488)

(assert (=> d!2274927 (= lt!2606023 e!4386432)))

(declare-fun c!1359747 () Bool)

(assert (=> d!2274927 (= c!1359747 (is-Nil!71364 (exprs!8432 cWitness!35)))))

(assert (=> d!2274927 (= (++!16816 (exprs!8432 cWitness!35) (exprs!8432 ct2!352)) lt!2606023)))

(declare-fun b!7325709 () Bool)

(assert (=> b!7325709 (= e!4386432 (exprs!8432 ct2!352))))

(declare-fun b!7325712 () Bool)

(assert (=> b!7325712 (= e!4386431 (or (not (= (exprs!8432 ct2!352) Nil!71364)) (= lt!2606023 (exprs!8432 cWitness!35))))))

(declare-fun b!7325711 () Bool)

(declare-fun res!2960982 () Bool)

(assert (=> b!7325711 (=> (not res!2960982) (not e!4386431))))

(assert (=> b!7325711 (= res!2960982 (= (size!41913 lt!2606023) (+ (size!41913 (exprs!8432 cWitness!35)) (size!41913 (exprs!8432 ct2!352)))))))

(declare-fun b!7325710 () Bool)

(assert (=> b!7325710 (= e!4386432 (Cons!71364 (h!77812 (exprs!8432 cWitness!35)) (++!16816 (t!385873 (exprs!8432 cWitness!35)) (exprs!8432 ct2!352))))))

(assert (= (and d!2274927 c!1359747) b!7325709))

(assert (= (and d!2274927 (not c!1359747)) b!7325710))

(assert (= (and d!2274927 res!2960983) b!7325711))

(assert (= (and b!7325711 res!2960982) b!7325712))

(declare-fun m!7991528 () Bool)

(assert (=> d!2274927 m!7991528))

(declare-fun m!7991530 () Bool)

(assert (=> d!2274927 m!7991530))

(assert (=> d!2274927 m!7991464))

(declare-fun m!7991532 () Bool)

(assert (=> b!7325711 m!7991532))

(declare-fun m!7991534 () Bool)

(assert (=> b!7325711 m!7991534))

(assert (=> b!7325711 m!7991470))

(declare-fun m!7991536 () Bool)

(assert (=> b!7325710 m!7991536))

(assert (=> b!7325558 d!2274927))

(declare-fun d!2274929 () Bool)

(assert (=> d!2274929 (forall!17844 (++!16816 (exprs!8432 cWitness!35) (exprs!8432 ct2!352)) lambda!453993)))

(declare-fun lt!2606024 () Unit!164949)

(assert (=> d!2274929 (= lt!2606024 (choose!56966 (exprs!8432 cWitness!35) (exprs!8432 ct2!352) lambda!453993))))

(assert (=> d!2274929 (forall!17844 (exprs!8432 cWitness!35) lambda!453993)))

(assert (=> d!2274929 (= (lemmaConcatPreservesForall!1673 (exprs!8432 cWitness!35) (exprs!8432 ct2!352) lambda!453993) lt!2606024)))

(declare-fun bs!1916629 () Bool)

(assert (= bs!1916629 d!2274929))

(assert (=> bs!1916629 m!7991350))

(assert (=> bs!1916629 m!7991350))

(declare-fun m!7991538 () Bool)

(assert (=> bs!1916629 m!7991538))

(declare-fun m!7991540 () Bool)

(assert (=> bs!1916629 m!7991540))

(assert (=> bs!1916629 m!7991376))

(assert (=> b!7325558 d!2274929))

(declare-fun bm!666626 () Bool)

(declare-fun call!666633 () (Set Context!15864))

(declare-fun call!666634 () (Set Context!15864))

(assert (=> bm!666626 (= call!666633 call!666634)))

(declare-fun bm!666627 () Bool)

(declare-fun call!666636 () (Set Context!15864))

(assert (=> bm!666627 (= call!666636 call!666633)))

(declare-fun b!7325713 () Bool)

(declare-fun e!4386433 () (Set Context!15864))

(assert (=> b!7325713 (= e!4386433 (as set.empty (Set Context!15864)))))

(declare-fun b!7325714 () Bool)

(declare-fun c!1359750 () Bool)

(declare-fun e!4386436 () Bool)

(assert (=> b!7325714 (= c!1359750 e!4386436)))

(declare-fun res!2960984 () Bool)

(assert (=> b!7325714 (=> (not res!2960984) (not e!4386436))))

(assert (=> b!7325714 (= res!2960984 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun e!4386434 () (Set Context!15864))

(declare-fun e!4386437 () (Set Context!15864))

(assert (=> b!7325714 (= e!4386434 e!4386437)))

(declare-fun call!666635 () List!71488)

(declare-fun call!666631 () (Set Context!15864))

(declare-fun bm!666628 () Bool)

(declare-fun c!1359749 () Bool)

(assert (=> bm!666628 (= call!666631 (derivationStepZipperDown!2823 (ite c!1359749 (regOne!38497 (h!77812 (exprs!8432 ct1!256))) (regOne!38496 (h!77812 (exprs!8432 ct1!256)))) (ite c!1359749 (Context!15865 (tail!14681 lt!2605952)) (Context!15865 call!666635)) c!10305))))

(declare-fun b!7325716 () Bool)

(declare-fun e!4386438 () (Set Context!15864))

(assert (=> b!7325716 (= e!4386437 e!4386438)))

(declare-fun c!1359748 () Bool)

(assert (=> b!7325716 (= c!1359748 (is-Concat!27837 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun b!7325717 () Bool)

(assert (=> b!7325717 (= e!4386438 call!666636)))

(declare-fun b!7325715 () Bool)

(declare-fun e!4386435 () (Set Context!15864))

(assert (=> b!7325715 (= e!4386435 (set.insert (Context!15865 (tail!14681 lt!2605952)) (as set.empty (Set Context!15864))))))

(declare-fun d!2274931 () Bool)

(declare-fun c!1359751 () Bool)

(assert (=> d!2274931 (= c!1359751 (and (is-ElementMatch!18992 (h!77812 (exprs!8432 ct1!256))) (= (c!1359701 (h!77812 (exprs!8432 ct1!256))) c!10305)))))

(assert (=> d!2274931 (= (derivationStepZipperDown!2823 (h!77812 (exprs!8432 ct1!256)) (Context!15865 (tail!14681 lt!2605952)) c!10305) e!4386435)))

(declare-fun b!7325718 () Bool)

(assert (=> b!7325718 (= e!4386437 (set.union call!666631 call!666633))))

(declare-fun b!7325719 () Bool)

(assert (=> b!7325719 (= e!4386436 (nullable!8096 (regOne!38496 (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun b!7325720 () Bool)

(assert (=> b!7325720 (= e!4386435 e!4386434)))

(assert (=> b!7325720 (= c!1359749 (is-Union!18992 (h!77812 (exprs!8432 ct1!256))))))

(declare-fun bm!666629 () Bool)

(declare-fun call!666632 () List!71488)

(assert (=> bm!666629 (= call!666632 call!666635)))

(declare-fun b!7325721 () Bool)

(assert (=> b!7325721 (= e!4386434 (set.union call!666631 call!666634))))

(declare-fun b!7325722 () Bool)

(assert (=> b!7325722 (= e!4386433 call!666636)))

(declare-fun b!7325723 () Bool)

(declare-fun c!1359752 () Bool)

(assert (=> b!7325723 (= c!1359752 (is-Star!18992 (h!77812 (exprs!8432 ct1!256))))))

(assert (=> b!7325723 (= e!4386438 e!4386433)))

(declare-fun bm!666630 () Bool)

(assert (=> bm!666630 (= call!666635 ($colon$colon!3026 (exprs!8432 (Context!15865 (tail!14681 lt!2605952))) (ite (or c!1359750 c!1359748) (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (h!77812 (exprs!8432 ct1!256)))))))

(declare-fun bm!666631 () Bool)

(assert (=> bm!666631 (= call!666634 (derivationStepZipperDown!2823 (ite c!1359749 (regTwo!38497 (h!77812 (exprs!8432 ct1!256))) (ite c!1359750 (regTwo!38496 (h!77812 (exprs!8432 ct1!256))) (ite c!1359748 (regOne!38496 (h!77812 (exprs!8432 ct1!256))) (reg!19321 (h!77812 (exprs!8432 ct1!256)))))) (ite (or c!1359749 c!1359750) (Context!15865 (tail!14681 lt!2605952)) (Context!15865 call!666632)) c!10305))))

(assert (= (and d!2274931 c!1359751) b!7325715))

(assert (= (and d!2274931 (not c!1359751)) b!7325720))

(assert (= (and b!7325720 c!1359749) b!7325721))

(assert (= (and b!7325720 (not c!1359749)) b!7325714))

(assert (= (and b!7325714 res!2960984) b!7325719))

(assert (= (and b!7325714 c!1359750) b!7325718))

(assert (= (and b!7325714 (not c!1359750)) b!7325716))

(assert (= (and b!7325716 c!1359748) b!7325717))

(assert (= (and b!7325716 (not c!1359748)) b!7325723))

(assert (= (and b!7325723 c!1359752) b!7325722))

(assert (= (and b!7325723 (not c!1359752)) b!7325713))

(assert (= (or b!7325717 b!7325722) bm!666629))

(assert (= (or b!7325717 b!7325722) bm!666627))

(assert (= (or b!7325718 bm!666627) bm!666626))

(assert (= (or b!7325718 bm!666629) bm!666630))

(assert (= (or b!7325721 bm!666626) bm!666631))

(assert (= (or b!7325721 b!7325718) bm!666628))

(declare-fun m!7991542 () Bool)

(assert (=> bm!666628 m!7991542))

(declare-fun m!7991544 () Bool)

(assert (=> bm!666630 m!7991544))

(declare-fun m!7991546 () Bool)

(assert (=> b!7325715 m!7991546))

(assert (=> b!7325719 m!7991442))

(declare-fun m!7991548 () Bool)

(assert (=> bm!666631 m!7991548))

(assert (=> b!7325558 d!2274931))

(declare-fun d!2274933 () Bool)

(assert (=> d!2274933 (forall!17844 (++!16816 lt!2605960 (exprs!8432 ct2!352)) lambda!453993)))

(declare-fun lt!2606025 () Unit!164949)

(assert (=> d!2274933 (= lt!2606025 (choose!56966 lt!2605960 (exprs!8432 ct2!352) lambda!453993))))

(assert (=> d!2274933 (forall!17844 lt!2605960 lambda!453993)))

(assert (=> d!2274933 (= (lemmaConcatPreservesForall!1673 lt!2605960 (exprs!8432 ct2!352) lambda!453993) lt!2606025)))

(declare-fun bs!1916630 () Bool)

(assert (= bs!1916630 d!2274933))

(assert (=> bs!1916630 m!7991358))

(assert (=> bs!1916630 m!7991358))

(declare-fun m!7991550 () Bool)

(assert (=> bs!1916630 m!7991550))

(declare-fun m!7991552 () Bool)

(assert (=> bs!1916630 m!7991552))

(declare-fun m!7991554 () Bool)

(assert (=> bs!1916630 m!7991554))

(assert (=> b!7325558 d!2274933))

(declare-fun d!2274935 () Bool)

(assert (=> d!2274935 (= (tail!14681 lt!2605952) (t!385873 lt!2605952))))

(assert (=> b!7325558 d!2274935))

(declare-fun b!7325724 () Bool)

(declare-fun e!4386439 () Bool)

(assert (=> b!7325724 (= e!4386439 (nullable!8096 (h!77812 (exprs!8432 lt!2605958))))))

(declare-fun b!7325725 () Bool)

(declare-fun e!4386440 () (Set Context!15864))

(assert (=> b!7325725 (= e!4386440 (as set.empty (Set Context!15864)))))

(declare-fun b!7325726 () Bool)

(declare-fun e!4386441 () (Set Context!15864))

(declare-fun call!666637 () (Set Context!15864))

(assert (=> b!7325726 (= e!4386441 (set.union call!666637 (derivationStepZipperUp!2672 (Context!15865 (t!385873 (exprs!8432 lt!2605958))) c!10305)))))

(declare-fun bm!666632 () Bool)

(assert (=> bm!666632 (= call!666637 (derivationStepZipperDown!2823 (h!77812 (exprs!8432 lt!2605958)) (Context!15865 (t!385873 (exprs!8432 lt!2605958))) c!10305))))

(declare-fun d!2274937 () Bool)

(declare-fun c!1359754 () Bool)

(assert (=> d!2274937 (= c!1359754 e!4386439)))

(declare-fun res!2960985 () Bool)

(assert (=> d!2274937 (=> (not res!2960985) (not e!4386439))))

(assert (=> d!2274937 (= res!2960985 (is-Cons!71364 (exprs!8432 lt!2605958)))))

(assert (=> d!2274937 (= (derivationStepZipperUp!2672 lt!2605958 c!10305) e!4386441)))

(declare-fun b!7325727 () Bool)

(assert (=> b!7325727 (= e!4386440 call!666637)))

(declare-fun b!7325728 () Bool)

(assert (=> b!7325728 (= e!4386441 e!4386440)))

(declare-fun c!1359753 () Bool)

(assert (=> b!7325728 (= c!1359753 (is-Cons!71364 (exprs!8432 lt!2605958)))))

(assert (= (and d!2274937 res!2960985) b!7325724))

(assert (= (and d!2274937 c!1359754) b!7325726))

(assert (= (and d!2274937 (not c!1359754)) b!7325728))

(assert (= (and b!7325728 c!1359753) b!7325727))

(assert (= (and b!7325728 (not c!1359753)) b!7325725))

(assert (= (or b!7325726 b!7325727) bm!666632))

(declare-fun m!7991556 () Bool)

(assert (=> b!7325724 m!7991556))

(declare-fun m!7991558 () Bool)

(assert (=> b!7325726 m!7991558))

(declare-fun m!7991560 () Bool)

(assert (=> bm!666632 m!7991560))

(assert (=> b!7325562 d!2274937))

(declare-fun b!7325733 () Bool)

(declare-fun e!4386444 () Bool)

(declare-fun tp!2080462 () Bool)

(declare-fun tp!2080463 () Bool)

(assert (=> b!7325733 (= e!4386444 (and tp!2080462 tp!2080463))))

(assert (=> b!7325561 (= tp!2080447 e!4386444)))

(assert (= (and b!7325561 (is-Cons!71364 (exprs!8432 cWitness!35))) b!7325733))

(declare-fun b!7325734 () Bool)

(declare-fun e!4386445 () Bool)

(declare-fun tp!2080464 () Bool)

(declare-fun tp!2080465 () Bool)

(assert (=> b!7325734 (= e!4386445 (and tp!2080464 tp!2080465))))

(assert (=> b!7325556 (= tp!2080446 e!4386445)))

(assert (= (and b!7325556 (is-Cons!71364 (exprs!8432 ct1!256))) b!7325734))

(declare-fun b!7325735 () Bool)

(declare-fun e!4386446 () Bool)

(declare-fun tp!2080466 () Bool)

(declare-fun tp!2080467 () Bool)

(assert (=> b!7325735 (= e!4386446 (and tp!2080466 tp!2080467))))

(assert (=> b!7325557 (= tp!2080448 e!4386446)))

(assert (= (and b!7325557 (is-Cons!71364 (exprs!8432 ct2!352))) b!7325735))

(declare-fun b_lambda!283333 () Bool)

(assert (= b_lambda!283331 (or b!7325563 b_lambda!283333)))

(declare-fun bs!1916631 () Bool)

(declare-fun d!2274939 () Bool)

(assert (= bs!1916631 (and d!2274939 b!7325563)))

(assert (=> bs!1916631 (= (dynLambda!29402 lambda!453993 (h!77812 (exprs!8432 cWitness!35))) (validRegex!9632 (h!77812 (exprs!8432 cWitness!35))))))

(declare-fun m!7991562 () Bool)

(assert (=> bs!1916631 m!7991562))

(assert (=> b!7325598 d!2274939))

(push 1)

(assert (not bm!666630))

(assert (not bm!666631))

(assert (not d!2274919))

(assert (not b!7325724))

(assert (not d!2274921))

(assert (not d!2274909))

(assert (not b!7325599))

(assert (not b!7325628))

(assert (not d!2274915))

(assert (not b!7325654))

(assert (not bm!666622))

(assert (not b!7325669))

(assert (not b!7325733))

(assert (not d!2274927))

(assert (not bm!666628))

(assert (not bm!666632))

(assert (not b!7325710))

(assert (not b!7325674))

(assert (not b!7325719))

(assert (not d!2274917))

(assert (not bm!666601))

(assert (not b!7325704))

(assert (not bm!666604))

(assert (not bm!666625))

(assert (not bs!1916631))

(assert (not b!7325673))

(assert (not b_lambda!283333))

(assert (not d!2274905))

(assert (not b!7325711))

(assert (not bm!666607))

(assert (not b!7325735))

(assert (not d!2274929))

(assert (not bm!666624))

(assert (not bm!666603))

(assert (not b!7325655))

(assert (not d!2274923))

(assert (not d!2274933))

(assert (not b!7325667))

(assert (not b!7325734))

(assert (not b!7325726))

(assert (not d!2274895))

(assert tp_is_empty!48229)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

