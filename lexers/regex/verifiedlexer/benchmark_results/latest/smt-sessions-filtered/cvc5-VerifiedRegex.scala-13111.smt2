; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716970 () Bool)

(assert start!716970)

(declare-fun b!7340540 () Bool)

(declare-fun e!4395507 () Bool)

(declare-datatypes ((C!38494 0))(
  ( (C!38495 (val!29607 Int)) )
))
(declare-datatypes ((Regex!19110 0))(
  ( (ElementMatch!19110 (c!1363414 C!38494)) (Concat!27955 (regOne!38732 Regex!19110) (regTwo!38732 Regex!19110)) (EmptyExpr!19110) (Star!19110 (reg!19439 Regex!19110)) (EmptyLang!19110) (Union!19110 (regOne!38733 Regex!19110) (regTwo!38733 Regex!19110)) )
))
(declare-datatypes ((List!71606 0))(
  ( (Nil!71482) (Cons!71482 (h!77930 Regex!19110) (t!386001 List!71606)) )
))
(declare-datatypes ((Context!16100 0))(
  ( (Context!16101 (exprs!8550 List!71606)) )
))
(declare-fun cWitness!61 () Context!16100)

(declare-fun lambda!455560 () Int)

(declare-fun forall!17942 (List!71606 Int) Bool)

(assert (=> b!7340540 (= e!4395507 (forall!17942 (exprs!8550 cWitness!61) lambda!455560))))

(declare-fun b!7340542 () Bool)

(declare-fun e!4395515 () Bool)

(assert (=> b!7340542 (= e!4395515 (not e!4395507))))

(declare-fun res!2965528 () Bool)

(assert (=> b!7340542 (=> res!2965528 e!4395507)))

(declare-fun lt!2609945 () Context!16100)

(declare-fun lt!2609941 () (Set Context!16100))

(assert (=> b!7340542 (= res!2965528 (not (set.member lt!2609945 lt!2609941)))))

(declare-fun ct2!378 () Context!16100)

(declare-datatypes ((Unit!165173 0))(
  ( (Unit!165174) )
))
(declare-fun lt!2609939 () Unit!165173)

(declare-fun lemmaConcatPreservesForall!1785 (List!71606 List!71606 Int) Unit!165173)

(assert (=> b!7340542 (= lt!2609939 (lemmaConcatPreservesForall!1785 (exprs!8550 cWitness!61) (exprs!8550 ct2!378) lambda!455560))))

(declare-fun r1!2370 () Regex!19110)

(declare-fun c!10362 () C!38494)

(declare-fun lt!2609944 () Context!16100)

(declare-fun derivationStepZipperDown!2936 (Regex!19110 Context!16100 C!38494) (Set Context!16100))

(assert (=> b!7340542 (set.member lt!2609945 (derivationStepZipperDown!2936 (regOne!38733 r1!2370) lt!2609944 c!10362))))

(declare-fun ++!16928 (List!71606 List!71606) List!71606)

(assert (=> b!7340542 (= lt!2609945 (Context!16101 (++!16928 (exprs!8550 cWitness!61) (exprs!8550 ct2!378))))))

(declare-fun lt!2609942 () Unit!165173)

(declare-fun ct1!282 () Context!16100)

(assert (=> b!7340542 (= lt!2609942 (lemmaConcatPreservesForall!1785 (exprs!8550 ct1!282) (exprs!8550 ct2!378) lambda!455560))))

(declare-fun lt!2609938 () Unit!165173)

(assert (=> b!7340542 (= lt!2609938 (lemmaConcatPreservesForall!1785 (exprs!8550 cWitness!61) (exprs!8550 ct2!378) lambda!455560))))

(declare-fun lt!2609943 () Unit!165173)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!45 (Regex!19110 Context!16100 Context!16100 Context!16100 C!38494) Unit!165173)

(assert (=> b!7340542 (= lt!2609943 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!45 (regOne!38733 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7340543 () Bool)

(declare-fun e!4395514 () Bool)

(assert (=> b!7340543 (= e!4395514 e!4395515)))

(declare-fun res!2965529 () Bool)

(assert (=> b!7340543 (=> (not res!2965529) (not e!4395515))))

(declare-fun lt!2609937 () (Set Context!16100))

(declare-fun lt!2609940 () (Set Context!16100))

(assert (=> b!7340543 (= res!2965529 (= lt!2609940 (set.union lt!2609937 (derivationStepZipperDown!2936 (regTwo!38733 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7340543 (= lt!2609937 (derivationStepZipperDown!2936 (regOne!38733 r1!2370) ct1!282 c!10362))))

(declare-fun b!7340544 () Bool)

(declare-fun e!4395512 () Bool)

(declare-fun tp!2084350 () Bool)

(assert (=> b!7340544 (= e!4395512 tp!2084350)))

(declare-fun b!7340545 () Bool)

(declare-fun e!4395508 () Bool)

(assert (=> b!7340545 (= e!4395508 e!4395514)))

(declare-fun res!2965532 () Bool)

(assert (=> b!7340545 (=> (not res!2965532) (not e!4395514))))

(assert (=> b!7340545 (= res!2965532 (and (or (not (is-ElementMatch!19110 r1!2370)) (not (= c!10362 (c!1363414 r1!2370)))) (is-Union!19110 r1!2370)))))

(assert (=> b!7340545 (= lt!2609941 (derivationStepZipperDown!2936 r1!2370 lt!2609944 c!10362))))

(assert (=> b!7340545 (= lt!2609944 (Context!16101 (++!16928 (exprs!8550 ct1!282) (exprs!8550 ct2!378))))))

(declare-fun lt!2609936 () Unit!165173)

(assert (=> b!7340545 (= lt!2609936 (lemmaConcatPreservesForall!1785 (exprs!8550 ct1!282) (exprs!8550 ct2!378) lambda!455560))))

(declare-fun b!7340546 () Bool)

(declare-fun e!4395513 () Bool)

(declare-fun tp!2084352 () Bool)

(declare-fun tp!2084355 () Bool)

(assert (=> b!7340546 (= e!4395513 (and tp!2084352 tp!2084355))))

(declare-fun b!7340547 () Bool)

(declare-fun e!4395511 () Bool)

(declare-fun tp!2084356 () Bool)

(assert (=> b!7340547 (= e!4395511 tp!2084356)))

(declare-fun b!7340548 () Bool)

(declare-fun e!4395509 () Bool)

(assert (=> b!7340548 (= e!4395509 e!4395508)))

(declare-fun res!2965527 () Bool)

(assert (=> b!7340548 (=> (not res!2965527) (not e!4395508))))

(assert (=> b!7340548 (= res!2965527 (set.member cWitness!61 lt!2609940))))

(assert (=> b!7340548 (= lt!2609940 (derivationStepZipperDown!2936 r1!2370 ct1!282 c!10362))))

(declare-fun b!7340549 () Bool)

(declare-fun tp!2084351 () Bool)

(declare-fun tp!2084357 () Bool)

(assert (=> b!7340549 (= e!4395513 (and tp!2084351 tp!2084357))))

(declare-fun b!7340550 () Bool)

(declare-fun tp_is_empty!48465 () Bool)

(assert (=> b!7340550 (= e!4395513 tp_is_empty!48465)))

(declare-fun b!7340551 () Bool)

(declare-fun res!2965530 () Bool)

(assert (=> b!7340551 (=> (not res!2965530) (not e!4395515))))

(assert (=> b!7340551 (= res!2965530 (set.member cWitness!61 lt!2609937))))

(declare-fun b!7340552 () Bool)

(declare-fun tp!2084353 () Bool)

(assert (=> b!7340552 (= e!4395513 tp!2084353)))

(declare-fun res!2965531 () Bool)

(assert (=> start!716970 (=> (not res!2965531) (not e!4395509))))

(declare-fun validRegex!9706 (Regex!19110) Bool)

(assert (=> start!716970 (= res!2965531 (validRegex!9706 r1!2370))))

(assert (=> start!716970 e!4395509))

(assert (=> start!716970 tp_is_empty!48465))

(declare-fun inv!91116 (Context!16100) Bool)

(assert (=> start!716970 (and (inv!91116 cWitness!61) e!4395512)))

(assert (=> start!716970 (and (inv!91116 ct1!282) e!4395511)))

(assert (=> start!716970 e!4395513))

(declare-fun e!4395510 () Bool)

(assert (=> start!716970 (and (inv!91116 ct2!378) e!4395510)))

(declare-fun b!7340541 () Bool)

(declare-fun tp!2084354 () Bool)

(assert (=> b!7340541 (= e!4395510 tp!2084354)))

(assert (= (and start!716970 res!2965531) b!7340548))

(assert (= (and b!7340548 res!2965527) b!7340545))

(assert (= (and b!7340545 res!2965532) b!7340543))

(assert (= (and b!7340543 res!2965529) b!7340551))

(assert (= (and b!7340551 res!2965530) b!7340542))

(assert (= (and b!7340542 (not res!2965528)) b!7340540))

(assert (= start!716970 b!7340544))

(assert (= start!716970 b!7340547))

(assert (= (and start!716970 (is-ElementMatch!19110 r1!2370)) b!7340550))

(assert (= (and start!716970 (is-Concat!27955 r1!2370)) b!7340546))

(assert (= (and start!716970 (is-Star!19110 r1!2370)) b!7340552))

(assert (= (and start!716970 (is-Union!19110 r1!2370)) b!7340549))

(assert (= start!716970 b!7340541))

(declare-fun m!8004422 () Bool)

(assert (=> b!7340542 m!8004422))

(declare-fun m!8004424 () Bool)

(assert (=> b!7340542 m!8004424))

(assert (=> b!7340542 m!8004422))

(declare-fun m!8004426 () Bool)

(assert (=> b!7340542 m!8004426))

(declare-fun m!8004428 () Bool)

(assert (=> b!7340542 m!8004428))

(declare-fun m!8004430 () Bool)

(assert (=> b!7340542 m!8004430))

(declare-fun m!8004432 () Bool)

(assert (=> b!7340542 m!8004432))

(declare-fun m!8004434 () Bool)

(assert (=> b!7340542 m!8004434))

(declare-fun m!8004436 () Bool)

(assert (=> b!7340543 m!8004436))

(declare-fun m!8004438 () Bool)

(assert (=> b!7340543 m!8004438))

(declare-fun m!8004440 () Bool)

(assert (=> start!716970 m!8004440))

(declare-fun m!8004442 () Bool)

(assert (=> start!716970 m!8004442))

(declare-fun m!8004444 () Bool)

(assert (=> start!716970 m!8004444))

(declare-fun m!8004446 () Bool)

(assert (=> start!716970 m!8004446))

(declare-fun m!8004448 () Bool)

(assert (=> b!7340545 m!8004448))

(declare-fun m!8004450 () Bool)

(assert (=> b!7340545 m!8004450))

(assert (=> b!7340545 m!8004434))

(declare-fun m!8004452 () Bool)

(assert (=> b!7340540 m!8004452))

(declare-fun m!8004454 () Bool)

(assert (=> b!7340548 m!8004454))

(declare-fun m!8004456 () Bool)

(assert (=> b!7340548 m!8004456))

(declare-fun m!8004458 () Bool)

(assert (=> b!7340551 m!8004458))

(push 1)

(assert (not b!7340542))

(assert (not b!7340552))

(assert (not b!7340541))

(assert (not b!7340546))

(assert (not b!7340544))

(assert (not b!7340549))

(assert (not b!7340547))

(assert (not start!716970))

(assert (not b!7340545))

(assert (not b!7340540))

(assert (not b!7340543))

(assert (not b!7340548))

(assert tp_is_empty!48465)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!669914 () Bool)

(declare-fun call!669922 () (Set Context!16100))

(declare-fun call!669919 () List!71606)

(declare-fun c!1363428 () Bool)

(assert (=> bm!669914 (= call!669922 (derivationStepZipperDown!2936 (ite c!1363428 (regTwo!38733 (regTwo!38733 r1!2370)) (regOne!38732 (regTwo!38733 r1!2370))) (ite c!1363428 ct1!282 (Context!16101 call!669919)) c!10362))))

(declare-fun b!7340614 () Bool)

(declare-fun e!4395559 () (Set Context!16100))

(declare-fun e!4395558 () (Set Context!16100))

(assert (=> b!7340614 (= e!4395559 e!4395558)))

(assert (=> b!7340614 (= c!1363428 (is-Union!19110 (regTwo!38733 r1!2370)))))

(declare-fun call!669923 () List!71606)

(declare-fun c!1363430 () Bool)

(declare-fun call!669921 () (Set Context!16100))

(declare-fun bm!669915 () Bool)

(declare-fun c!1363429 () Bool)

(assert (=> bm!669915 (= call!669921 (derivationStepZipperDown!2936 (ite c!1363428 (regOne!38733 (regTwo!38733 r1!2370)) (ite c!1363430 (regTwo!38732 (regTwo!38733 r1!2370)) (ite c!1363429 (regOne!38732 (regTwo!38733 r1!2370)) (reg!19439 (regTwo!38733 r1!2370))))) (ite (or c!1363428 c!1363430) ct1!282 (Context!16101 call!669923)) c!10362))))

(declare-fun b!7340615 () Bool)

(declare-fun e!4395557 () (Set Context!16100))

(declare-fun call!669920 () (Set Context!16100))

(assert (=> b!7340615 (= e!4395557 call!669920)))

(declare-fun b!7340616 () Bool)

(declare-fun e!4395560 () Bool)

(assert (=> b!7340616 (= c!1363430 e!4395560)))

(declare-fun res!2965553 () Bool)

(assert (=> b!7340616 (=> (not res!2965553) (not e!4395560))))

(assert (=> b!7340616 (= res!2965553 (is-Concat!27955 (regTwo!38733 r1!2370)))))

(declare-fun e!4395555 () (Set Context!16100))

(assert (=> b!7340616 (= e!4395558 e!4395555)))

(declare-fun b!7340617 () Bool)

(assert (=> b!7340617 (= e!4395555 e!4395557)))

(assert (=> b!7340617 (= c!1363429 (is-Concat!27955 (regTwo!38733 r1!2370)))))

(declare-fun d!2278714 () Bool)

(declare-fun c!1363427 () Bool)

(assert (=> d!2278714 (= c!1363427 (and (is-ElementMatch!19110 (regTwo!38733 r1!2370)) (= (c!1363414 (regTwo!38733 r1!2370)) c!10362)))))

(assert (=> d!2278714 (= (derivationStepZipperDown!2936 (regTwo!38733 r1!2370) ct1!282 c!10362) e!4395559)))

(declare-fun bm!669913 () Bool)

(assert (=> bm!669913 (= call!669923 call!669919)))

(declare-fun b!7340618 () Bool)

(declare-fun call!669918 () (Set Context!16100))

(assert (=> b!7340618 (= e!4395555 (set.union call!669922 call!669918))))

(declare-fun bm!669916 () Bool)

(declare-fun $colon$colon!3112 (List!71606 Regex!19110) List!71606)

(assert (=> bm!669916 (= call!669919 ($colon$colon!3112 (exprs!8550 ct1!282) (ite (or c!1363430 c!1363429) (regTwo!38732 (regTwo!38733 r1!2370)) (regTwo!38733 r1!2370))))))

(declare-fun bm!669917 () Bool)

(assert (=> bm!669917 (= call!669918 call!669921)))

(declare-fun b!7340619 () Bool)

(assert (=> b!7340619 (= e!4395558 (set.union call!669921 call!669922))))

(declare-fun bm!669918 () Bool)

(assert (=> bm!669918 (= call!669920 call!669918)))

(declare-fun b!7340620 () Bool)

(declare-fun e!4395556 () (Set Context!16100))

(assert (=> b!7340620 (= e!4395556 (as set.empty (Set Context!16100)))))

(declare-fun b!7340621 () Bool)

(declare-fun c!1363426 () Bool)

(assert (=> b!7340621 (= c!1363426 (is-Star!19110 (regTwo!38733 r1!2370)))))

(assert (=> b!7340621 (= e!4395557 e!4395556)))

(declare-fun b!7340622 () Bool)

(assert (=> b!7340622 (= e!4395559 (set.insert ct1!282 (as set.empty (Set Context!16100))))))

(declare-fun b!7340623 () Bool)

(declare-fun nullable!8205 (Regex!19110) Bool)

(assert (=> b!7340623 (= e!4395560 (nullable!8205 (regOne!38732 (regTwo!38733 r1!2370))))))

(declare-fun b!7340624 () Bool)

(assert (=> b!7340624 (= e!4395556 call!669920)))

(assert (= (and d!2278714 c!1363427) b!7340622))

(assert (= (and d!2278714 (not c!1363427)) b!7340614))

(assert (= (and b!7340614 c!1363428) b!7340619))

(assert (= (and b!7340614 (not c!1363428)) b!7340616))

(assert (= (and b!7340616 res!2965553) b!7340623))

(assert (= (and b!7340616 c!1363430) b!7340618))

(assert (= (and b!7340616 (not c!1363430)) b!7340617))

(assert (= (and b!7340617 c!1363429) b!7340615))

(assert (= (and b!7340617 (not c!1363429)) b!7340621))

(assert (= (and b!7340621 c!1363426) b!7340624))

(assert (= (and b!7340621 (not c!1363426)) b!7340620))

(assert (= (or b!7340615 b!7340624) bm!669913))

(assert (= (or b!7340615 b!7340624) bm!669918))

(assert (= (or b!7340618 bm!669918) bm!669917))

(assert (= (or b!7340618 bm!669913) bm!669916))

(assert (= (or b!7340619 b!7340618) bm!669914))

(assert (= (or b!7340619 bm!669917) bm!669915))

(declare-fun m!8004498 () Bool)

(assert (=> b!7340623 m!8004498))

(declare-fun m!8004500 () Bool)

(assert (=> bm!669916 m!8004500))

(declare-fun m!8004502 () Bool)

(assert (=> bm!669914 m!8004502))

(declare-fun m!8004504 () Bool)

(assert (=> b!7340622 m!8004504))

(declare-fun m!8004506 () Bool)

(assert (=> bm!669915 m!8004506))

(assert (=> b!7340543 d!2278714))

(declare-fun call!669928 () (Set Context!16100))

(declare-fun c!1363433 () Bool)

(declare-fun bm!669920 () Bool)

(declare-fun call!669925 () List!71606)

(assert (=> bm!669920 (= call!669928 (derivationStepZipperDown!2936 (ite c!1363433 (regTwo!38733 (regOne!38733 r1!2370)) (regOne!38732 (regOne!38733 r1!2370))) (ite c!1363433 ct1!282 (Context!16101 call!669925)) c!10362))))

(declare-fun b!7340625 () Bool)

(declare-fun e!4395565 () (Set Context!16100))

(declare-fun e!4395564 () (Set Context!16100))

(assert (=> b!7340625 (= e!4395565 e!4395564)))

(assert (=> b!7340625 (= c!1363433 (is-Union!19110 (regOne!38733 r1!2370)))))

(declare-fun call!669929 () List!71606)

(declare-fun c!1363435 () Bool)

(declare-fun c!1363434 () Bool)

(declare-fun bm!669921 () Bool)

(declare-fun call!669927 () (Set Context!16100))

(assert (=> bm!669921 (= call!669927 (derivationStepZipperDown!2936 (ite c!1363433 (regOne!38733 (regOne!38733 r1!2370)) (ite c!1363435 (regTwo!38732 (regOne!38733 r1!2370)) (ite c!1363434 (regOne!38732 (regOne!38733 r1!2370)) (reg!19439 (regOne!38733 r1!2370))))) (ite (or c!1363433 c!1363435) ct1!282 (Context!16101 call!669929)) c!10362))))

(declare-fun b!7340626 () Bool)

(declare-fun e!4395563 () (Set Context!16100))

(declare-fun call!669926 () (Set Context!16100))

(assert (=> b!7340626 (= e!4395563 call!669926)))

(declare-fun b!7340627 () Bool)

(declare-fun e!4395566 () Bool)

(assert (=> b!7340627 (= c!1363435 e!4395566)))

(declare-fun res!2965554 () Bool)

(assert (=> b!7340627 (=> (not res!2965554) (not e!4395566))))

(assert (=> b!7340627 (= res!2965554 (is-Concat!27955 (regOne!38733 r1!2370)))))

(declare-fun e!4395561 () (Set Context!16100))

(assert (=> b!7340627 (= e!4395564 e!4395561)))

(declare-fun b!7340628 () Bool)

(assert (=> b!7340628 (= e!4395561 e!4395563)))

(assert (=> b!7340628 (= c!1363434 (is-Concat!27955 (regOne!38733 r1!2370)))))

(declare-fun d!2278718 () Bool)

(declare-fun c!1363432 () Bool)

(assert (=> d!2278718 (= c!1363432 (and (is-ElementMatch!19110 (regOne!38733 r1!2370)) (= (c!1363414 (regOne!38733 r1!2370)) c!10362)))))

(assert (=> d!2278718 (= (derivationStepZipperDown!2936 (regOne!38733 r1!2370) ct1!282 c!10362) e!4395565)))

(declare-fun bm!669919 () Bool)

(assert (=> bm!669919 (= call!669929 call!669925)))

(declare-fun b!7340629 () Bool)

(declare-fun call!669924 () (Set Context!16100))

(assert (=> b!7340629 (= e!4395561 (set.union call!669928 call!669924))))

(declare-fun bm!669922 () Bool)

(assert (=> bm!669922 (= call!669925 ($colon$colon!3112 (exprs!8550 ct1!282) (ite (or c!1363435 c!1363434) (regTwo!38732 (regOne!38733 r1!2370)) (regOne!38733 r1!2370))))))

(declare-fun bm!669923 () Bool)

(assert (=> bm!669923 (= call!669924 call!669927)))

(declare-fun b!7340630 () Bool)

(assert (=> b!7340630 (= e!4395564 (set.union call!669927 call!669928))))

(declare-fun bm!669924 () Bool)

(assert (=> bm!669924 (= call!669926 call!669924)))

(declare-fun b!7340631 () Bool)

(declare-fun e!4395562 () (Set Context!16100))

(assert (=> b!7340631 (= e!4395562 (as set.empty (Set Context!16100)))))

(declare-fun b!7340632 () Bool)

(declare-fun c!1363431 () Bool)

(assert (=> b!7340632 (= c!1363431 (is-Star!19110 (regOne!38733 r1!2370)))))

(assert (=> b!7340632 (= e!4395563 e!4395562)))

(declare-fun b!7340633 () Bool)

(assert (=> b!7340633 (= e!4395565 (set.insert ct1!282 (as set.empty (Set Context!16100))))))

(declare-fun b!7340634 () Bool)

(assert (=> b!7340634 (= e!4395566 (nullable!8205 (regOne!38732 (regOne!38733 r1!2370))))))

(declare-fun b!7340635 () Bool)

(assert (=> b!7340635 (= e!4395562 call!669926)))

(assert (= (and d!2278718 c!1363432) b!7340633))

(assert (= (and d!2278718 (not c!1363432)) b!7340625))

(assert (= (and b!7340625 c!1363433) b!7340630))

(assert (= (and b!7340625 (not c!1363433)) b!7340627))

(assert (= (and b!7340627 res!2965554) b!7340634))

(assert (= (and b!7340627 c!1363435) b!7340629))

(assert (= (and b!7340627 (not c!1363435)) b!7340628))

(assert (= (and b!7340628 c!1363434) b!7340626))

(assert (= (and b!7340628 (not c!1363434)) b!7340632))

(assert (= (and b!7340632 c!1363431) b!7340635))

(assert (= (and b!7340632 (not c!1363431)) b!7340631))

(assert (= (or b!7340626 b!7340635) bm!669919))

(assert (= (or b!7340626 b!7340635) bm!669924))

(assert (= (or b!7340629 bm!669924) bm!669923))

(assert (= (or b!7340629 bm!669919) bm!669922))

(assert (= (or b!7340630 b!7340629) bm!669920))

(assert (= (or b!7340630 bm!669923) bm!669921))

(declare-fun m!8004508 () Bool)

(assert (=> b!7340634 m!8004508))

(declare-fun m!8004510 () Bool)

(assert (=> bm!669922 m!8004510))

(declare-fun m!8004512 () Bool)

(assert (=> bm!669920 m!8004512))

(assert (=> b!7340633 m!8004504))

(declare-fun m!8004514 () Bool)

(assert (=> bm!669921 m!8004514))

(assert (=> b!7340543 d!2278718))

(declare-fun b!7340668 () Bool)

(declare-fun res!2965571 () Bool)

(declare-fun e!4395591 () Bool)

(assert (=> b!7340668 (=> res!2965571 e!4395591)))

(assert (=> b!7340668 (= res!2965571 (not (is-Concat!27955 r1!2370)))))

(declare-fun e!4395593 () Bool)

(assert (=> b!7340668 (= e!4395593 e!4395591)))

(declare-fun d!2278720 () Bool)

(declare-fun res!2965567 () Bool)

(declare-fun e!4395590 () Bool)

(assert (=> d!2278720 (=> res!2965567 e!4395590)))

(assert (=> d!2278720 (= res!2965567 (is-ElementMatch!19110 r1!2370))))

(assert (=> d!2278720 (= (validRegex!9706 r1!2370) e!4395590)))

(declare-fun b!7340669 () Bool)

(declare-fun e!4395594 () Bool)

(declare-fun call!669936 () Bool)

(assert (=> b!7340669 (= e!4395594 call!669936)))

(declare-fun bm!669931 () Bool)

(declare-fun call!669938 () Bool)

(declare-fun call!669937 () Bool)

(assert (=> bm!669931 (= call!669938 call!669937)))

(declare-fun b!7340670 () Bool)

(declare-fun res!2965569 () Bool)

(declare-fun e!4395592 () Bool)

(assert (=> b!7340670 (=> (not res!2965569) (not e!4395592))))

(assert (=> b!7340670 (= res!2965569 call!669936)))

(assert (=> b!7340670 (= e!4395593 e!4395592)))

(declare-fun b!7340671 () Bool)

(declare-fun e!4395595 () Bool)

(assert (=> b!7340671 (= e!4395595 call!669937)))

(declare-fun c!1363446 () Bool)

(declare-fun c!1363447 () Bool)

(declare-fun bm!669932 () Bool)

(assert (=> bm!669932 (= call!669937 (validRegex!9706 (ite c!1363447 (reg!19439 r1!2370) (ite c!1363446 (regTwo!38733 r1!2370) (regOne!38732 r1!2370)))))))

(declare-fun b!7340672 () Bool)

(assert (=> b!7340672 (= e!4395592 call!669938)))

(declare-fun b!7340673 () Bool)

(declare-fun e!4395589 () Bool)

(assert (=> b!7340673 (= e!4395589 e!4395595)))

(declare-fun res!2965568 () Bool)

(assert (=> b!7340673 (= res!2965568 (not (nullable!8205 (reg!19439 r1!2370))))))

(assert (=> b!7340673 (=> (not res!2965568) (not e!4395595))))

(declare-fun b!7340674 () Bool)

(assert (=> b!7340674 (= e!4395590 e!4395589)))

(assert (=> b!7340674 (= c!1363447 (is-Star!19110 r1!2370))))

(declare-fun b!7340675 () Bool)

(assert (=> b!7340675 (= e!4395589 e!4395593)))

(assert (=> b!7340675 (= c!1363446 (is-Union!19110 r1!2370))))

(declare-fun b!7340676 () Bool)

(assert (=> b!7340676 (= e!4395591 e!4395594)))

(declare-fun res!2965570 () Bool)

(assert (=> b!7340676 (=> (not res!2965570) (not e!4395594))))

(assert (=> b!7340676 (= res!2965570 call!669938)))

(declare-fun bm!669933 () Bool)

(assert (=> bm!669933 (= call!669936 (validRegex!9706 (ite c!1363446 (regOne!38733 r1!2370) (regTwo!38732 r1!2370))))))

(assert (= (and d!2278720 (not res!2965567)) b!7340674))

(assert (= (and b!7340674 c!1363447) b!7340673))

(assert (= (and b!7340674 (not c!1363447)) b!7340675))

(assert (= (and b!7340673 res!2965568) b!7340671))

(assert (= (and b!7340675 c!1363446) b!7340670))

(assert (= (and b!7340675 (not c!1363446)) b!7340668))

(assert (= (and b!7340670 res!2965569) b!7340672))

(assert (= (and b!7340668 (not res!2965571)) b!7340676))

(assert (= (and b!7340676 res!2965570) b!7340669))

(assert (= (or b!7340670 b!7340669) bm!669933))

(assert (= (or b!7340672 b!7340676) bm!669931))

(assert (= (or b!7340671 bm!669931) bm!669932))

(declare-fun m!8004516 () Bool)

(assert (=> bm!669932 m!8004516))

(declare-fun m!8004518 () Bool)

(assert (=> b!7340673 m!8004518))

(declare-fun m!8004520 () Bool)

(assert (=> bm!669933 m!8004520))

(assert (=> start!716970 d!2278720))

(declare-fun bs!1918382 () Bool)

(declare-fun d!2278722 () Bool)

(assert (= bs!1918382 (and d!2278722 b!7340545)))

(declare-fun lambda!455574 () Int)

(assert (=> bs!1918382 (= lambda!455574 lambda!455560)))

(assert (=> d!2278722 (= (inv!91116 cWitness!61) (forall!17942 (exprs!8550 cWitness!61) lambda!455574))))

(declare-fun bs!1918383 () Bool)

(assert (= bs!1918383 d!2278722))

(declare-fun m!8004522 () Bool)

(assert (=> bs!1918383 m!8004522))

(assert (=> start!716970 d!2278722))

(declare-fun bs!1918384 () Bool)

(declare-fun d!2278724 () Bool)

(assert (= bs!1918384 (and d!2278724 b!7340545)))

(declare-fun lambda!455575 () Int)

(assert (=> bs!1918384 (= lambda!455575 lambda!455560)))

(declare-fun bs!1918385 () Bool)

(assert (= bs!1918385 (and d!2278724 d!2278722)))

(assert (=> bs!1918385 (= lambda!455575 lambda!455574)))

(assert (=> d!2278724 (= (inv!91116 ct1!282) (forall!17942 (exprs!8550 ct1!282) lambda!455575))))

(declare-fun bs!1918386 () Bool)

(assert (= bs!1918386 d!2278724))

(declare-fun m!8004524 () Bool)

(assert (=> bs!1918386 m!8004524))

(assert (=> start!716970 d!2278724))

(declare-fun bs!1918387 () Bool)

(declare-fun d!2278726 () Bool)

(assert (= bs!1918387 (and d!2278726 b!7340545)))

(declare-fun lambda!455576 () Int)

(assert (=> bs!1918387 (= lambda!455576 lambda!455560)))

(declare-fun bs!1918388 () Bool)

(assert (= bs!1918388 (and d!2278726 d!2278722)))

(assert (=> bs!1918388 (= lambda!455576 lambda!455574)))

(declare-fun bs!1918389 () Bool)

(assert (= bs!1918389 (and d!2278726 d!2278724)))

(assert (=> bs!1918389 (= lambda!455576 lambda!455575)))

(assert (=> d!2278726 (= (inv!91116 ct2!378) (forall!17942 (exprs!8550 ct2!378) lambda!455576))))

(declare-fun bs!1918390 () Bool)

(assert (= bs!1918390 d!2278726))

(declare-fun m!8004526 () Bool)

(assert (=> bs!1918390 m!8004526))

(assert (=> start!716970 d!2278726))

(declare-fun bm!669939 () Bool)

(declare-fun c!1363454 () Bool)

(declare-fun call!669949 () (Set Context!16100))

(declare-fun call!669946 () List!71606)

(assert (=> bm!669939 (= call!669949 (derivationStepZipperDown!2936 (ite c!1363454 (regTwo!38733 r1!2370) (regOne!38732 r1!2370)) (ite c!1363454 ct1!282 (Context!16101 call!669946)) c!10362))))

(declare-fun b!7340685 () Bool)

(declare-fun e!4395604 () (Set Context!16100))

(declare-fun e!4395603 () (Set Context!16100))

(assert (=> b!7340685 (= e!4395604 e!4395603)))

(assert (=> b!7340685 (= c!1363454 (is-Union!19110 r1!2370))))

(declare-fun c!1363456 () Bool)

(declare-fun bm!669940 () Bool)

(declare-fun call!669950 () List!71606)

(declare-fun call!669948 () (Set Context!16100))

(declare-fun c!1363455 () Bool)

(assert (=> bm!669940 (= call!669948 (derivationStepZipperDown!2936 (ite c!1363454 (regOne!38733 r1!2370) (ite c!1363456 (regTwo!38732 r1!2370) (ite c!1363455 (regOne!38732 r1!2370) (reg!19439 r1!2370)))) (ite (or c!1363454 c!1363456) ct1!282 (Context!16101 call!669950)) c!10362))))

(declare-fun b!7340686 () Bool)

(declare-fun e!4395602 () (Set Context!16100))

(declare-fun call!669947 () (Set Context!16100))

(assert (=> b!7340686 (= e!4395602 call!669947)))

(declare-fun b!7340687 () Bool)

(declare-fun e!4395605 () Bool)

(assert (=> b!7340687 (= c!1363456 e!4395605)))

(declare-fun res!2965572 () Bool)

(assert (=> b!7340687 (=> (not res!2965572) (not e!4395605))))

(assert (=> b!7340687 (= res!2965572 (is-Concat!27955 r1!2370))))

(declare-fun e!4395600 () (Set Context!16100))

(assert (=> b!7340687 (= e!4395603 e!4395600)))

(declare-fun b!7340688 () Bool)

(assert (=> b!7340688 (= e!4395600 e!4395602)))

(assert (=> b!7340688 (= c!1363455 (is-Concat!27955 r1!2370))))

(declare-fun d!2278728 () Bool)

(declare-fun c!1363453 () Bool)

(assert (=> d!2278728 (= c!1363453 (and (is-ElementMatch!19110 r1!2370) (= (c!1363414 r1!2370) c!10362)))))

(assert (=> d!2278728 (= (derivationStepZipperDown!2936 r1!2370 ct1!282 c!10362) e!4395604)))

(declare-fun bm!669938 () Bool)

(assert (=> bm!669938 (= call!669950 call!669946)))

(declare-fun b!7340689 () Bool)

(declare-fun call!669945 () (Set Context!16100))

(assert (=> b!7340689 (= e!4395600 (set.union call!669949 call!669945))))

(declare-fun bm!669941 () Bool)

(assert (=> bm!669941 (= call!669946 ($colon$colon!3112 (exprs!8550 ct1!282) (ite (or c!1363456 c!1363455) (regTwo!38732 r1!2370) r1!2370)))))

(declare-fun bm!669942 () Bool)

(assert (=> bm!669942 (= call!669945 call!669948)))

(declare-fun b!7340690 () Bool)

(assert (=> b!7340690 (= e!4395603 (set.union call!669948 call!669949))))

(declare-fun bm!669943 () Bool)

(assert (=> bm!669943 (= call!669947 call!669945)))

(declare-fun b!7340691 () Bool)

(declare-fun e!4395601 () (Set Context!16100))

(assert (=> b!7340691 (= e!4395601 (as set.empty (Set Context!16100)))))

(declare-fun b!7340692 () Bool)

(declare-fun c!1363452 () Bool)

(assert (=> b!7340692 (= c!1363452 (is-Star!19110 r1!2370))))

(assert (=> b!7340692 (= e!4395602 e!4395601)))

(declare-fun b!7340693 () Bool)

(assert (=> b!7340693 (= e!4395604 (set.insert ct1!282 (as set.empty (Set Context!16100))))))

(declare-fun b!7340694 () Bool)

(assert (=> b!7340694 (= e!4395605 (nullable!8205 (regOne!38732 r1!2370)))))

(declare-fun b!7340695 () Bool)

(assert (=> b!7340695 (= e!4395601 call!669947)))

(assert (= (and d!2278728 c!1363453) b!7340693))

(assert (= (and d!2278728 (not c!1363453)) b!7340685))

(assert (= (and b!7340685 c!1363454) b!7340690))

(assert (= (and b!7340685 (not c!1363454)) b!7340687))

(assert (= (and b!7340687 res!2965572) b!7340694))

(assert (= (and b!7340687 c!1363456) b!7340689))

(assert (= (and b!7340687 (not c!1363456)) b!7340688))

(assert (= (and b!7340688 c!1363455) b!7340686))

(assert (= (and b!7340688 (not c!1363455)) b!7340692))

(assert (= (and b!7340692 c!1363452) b!7340695))

(assert (= (and b!7340692 (not c!1363452)) b!7340691))

(assert (= (or b!7340686 b!7340695) bm!669938))

(assert (= (or b!7340686 b!7340695) bm!669943))

(assert (= (or b!7340689 bm!669943) bm!669942))

(assert (= (or b!7340689 bm!669938) bm!669941))

(assert (= (or b!7340690 b!7340689) bm!669939))

(assert (= (or b!7340690 bm!669942) bm!669940))

(declare-fun m!8004528 () Bool)

(assert (=> b!7340694 m!8004528))

(declare-fun m!8004530 () Bool)

(assert (=> bm!669941 m!8004530))

(declare-fun m!8004532 () Bool)

(assert (=> bm!669939 m!8004532))

(assert (=> b!7340693 m!8004504))

(declare-fun m!8004534 () Bool)

(assert (=> bm!669940 m!8004534))

(assert (=> b!7340548 d!2278728))

(declare-fun d!2278730 () Bool)

(assert (=> d!2278730 (forall!17942 (++!16928 (exprs!8550 cWitness!61) (exprs!8550 ct2!378)) lambda!455560)))

(declare-fun lt!2609978 () Unit!165173)

(declare-fun choose!57093 (List!71606 List!71606 Int) Unit!165173)

(assert (=> d!2278730 (= lt!2609978 (choose!57093 (exprs!8550 cWitness!61) (exprs!8550 ct2!378) lambda!455560))))

(assert (=> d!2278730 (forall!17942 (exprs!8550 cWitness!61) lambda!455560)))

(assert (=> d!2278730 (= (lemmaConcatPreservesForall!1785 (exprs!8550 cWitness!61) (exprs!8550 ct2!378) lambda!455560) lt!2609978)))

(declare-fun bs!1918391 () Bool)

(assert (= bs!1918391 d!2278730))

(assert (=> bs!1918391 m!8004426))

(assert (=> bs!1918391 m!8004426))

(declare-fun m!8004536 () Bool)

(assert (=> bs!1918391 m!8004536))

(declare-fun m!8004538 () Bool)

(assert (=> bs!1918391 m!8004538))

(assert (=> bs!1918391 m!8004452))

(assert (=> b!7340542 d!2278730))

(declare-fun bs!1918392 () Bool)

(declare-fun d!2278732 () Bool)

(assert (= bs!1918392 (and d!2278732 b!7340545)))

(declare-fun lambda!455581 () Int)

(assert (=> bs!1918392 (= lambda!455581 lambda!455560)))

(declare-fun bs!1918393 () Bool)

(assert (= bs!1918393 (and d!2278732 d!2278722)))

(assert (=> bs!1918393 (= lambda!455581 lambda!455574)))

(declare-fun bs!1918394 () Bool)

(assert (= bs!1918394 (and d!2278732 d!2278724)))

(assert (=> bs!1918394 (= lambda!455581 lambda!455575)))

(declare-fun bs!1918395 () Bool)

(assert (= bs!1918395 (and d!2278732 d!2278726)))

(assert (=> bs!1918395 (= lambda!455581 lambda!455576)))

(assert (=> d!2278732 (set.member (Context!16101 (++!16928 (exprs!8550 cWitness!61) (exprs!8550 ct2!378))) (derivationStepZipperDown!2936 (regOne!38733 r1!2370) (Context!16101 (++!16928 (exprs!8550 ct1!282) (exprs!8550 ct2!378))) c!10362))))

(declare-fun lt!2609987 () Unit!165173)

(assert (=> d!2278732 (= lt!2609987 (lemmaConcatPreservesForall!1785 (exprs!8550 ct1!282) (exprs!8550 ct2!378) lambda!455581))))

(declare-fun lt!2609986 () Unit!165173)

(assert (=> d!2278732 (= lt!2609986 (lemmaConcatPreservesForall!1785 (exprs!8550 cWitness!61) (exprs!8550 ct2!378) lambda!455581))))

(declare-fun lt!2609985 () Unit!165173)

(declare-fun choose!57094 (Regex!19110 Context!16100 Context!16100 Context!16100 C!38494) Unit!165173)

(assert (=> d!2278732 (= lt!2609985 (choose!57094 (regOne!38733 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278732 (validRegex!9706 (regOne!38733 r1!2370))))

(assert (=> d!2278732 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!45 (regOne!38733 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2609985)))

(declare-fun bs!1918396 () Bool)

(assert (= bs!1918396 d!2278732))

(declare-fun m!8004540 () Bool)

(assert (=> bs!1918396 m!8004540))

(assert (=> bs!1918396 m!8004426))

(assert (=> bs!1918396 m!8004450))

(declare-fun m!8004542 () Bool)

(assert (=> bs!1918396 m!8004542))

(declare-fun m!8004544 () Bool)

(assert (=> bs!1918396 m!8004544))

(declare-fun m!8004546 () Bool)

(assert (=> bs!1918396 m!8004546))

(declare-fun m!8004548 () Bool)

(assert (=> bs!1918396 m!8004548))

(declare-fun m!8004550 () Bool)

(assert (=> bs!1918396 m!8004550))

(assert (=> b!7340542 d!2278732))

(declare-fun b!7340717 () Bool)

(declare-fun res!2965578 () Bool)

(declare-fun e!4395616 () Bool)

(assert (=> b!7340717 (=> (not res!2965578) (not e!4395616))))

(declare-fun lt!2609990 () List!71606)

(declare-fun size!42006 (List!71606) Int)

(assert (=> b!7340717 (= res!2965578 (= (size!42006 lt!2609990) (+ (size!42006 (exprs!8550 cWitness!61)) (size!42006 (exprs!8550 ct2!378)))))))

(declare-fun d!2278734 () Bool)

(assert (=> d!2278734 e!4395616))

(declare-fun res!2965579 () Bool)

(assert (=> d!2278734 (=> (not res!2965579) (not e!4395616))))

(declare-fun content!15027 (List!71606) (Set Regex!19110))

(assert (=> d!2278734 (= res!2965579 (= (content!15027 lt!2609990) (set.union (content!15027 (exprs!8550 cWitness!61)) (content!15027 (exprs!8550 ct2!378)))))))

(declare-fun e!4395617 () List!71606)

(assert (=> d!2278734 (= lt!2609990 e!4395617)))

(declare-fun c!1363465 () Bool)

(assert (=> d!2278734 (= c!1363465 (is-Nil!71482 (exprs!8550 cWitness!61)))))

(assert (=> d!2278734 (= (++!16928 (exprs!8550 cWitness!61) (exprs!8550 ct2!378)) lt!2609990)))

(declare-fun b!7340715 () Bool)

(assert (=> b!7340715 (= e!4395617 (exprs!8550 ct2!378))))

(declare-fun b!7340718 () Bool)

(assert (=> b!7340718 (= e!4395616 (or (not (= (exprs!8550 ct2!378) Nil!71482)) (= lt!2609990 (exprs!8550 cWitness!61))))))

(declare-fun b!7340716 () Bool)

(assert (=> b!7340716 (= e!4395617 (Cons!71482 (h!77930 (exprs!8550 cWitness!61)) (++!16928 (t!386001 (exprs!8550 cWitness!61)) (exprs!8550 ct2!378))))))

(assert (= (and d!2278734 c!1363465) b!7340715))

(assert (= (and d!2278734 (not c!1363465)) b!7340716))

(assert (= (and d!2278734 res!2965579) b!7340717))

(assert (= (and b!7340717 res!2965578) b!7340718))

(declare-fun m!8004562 () Bool)

(assert (=> b!7340717 m!8004562))

(declare-fun m!8004564 () Bool)

(assert (=> b!7340717 m!8004564))

(declare-fun m!8004566 () Bool)

(assert (=> b!7340717 m!8004566))

(declare-fun m!8004568 () Bool)

(assert (=> d!2278734 m!8004568))

(declare-fun m!8004570 () Bool)

(assert (=> d!2278734 m!8004570))

(declare-fun m!8004572 () Bool)

(assert (=> d!2278734 m!8004572))

(declare-fun m!8004574 () Bool)

(assert (=> b!7340716 m!8004574))

(assert (=> b!7340542 d!2278734))

(declare-fun bm!669959 () Bool)

(declare-fun c!1363468 () Bool)

(declare-fun call!669964 () List!71606)

(declare-fun call!669967 () (Set Context!16100))

(assert (=> bm!669959 (= call!669967 (derivationStepZipperDown!2936 (ite c!1363468 (regTwo!38733 (regOne!38733 r1!2370)) (regOne!38732 (regOne!38733 r1!2370))) (ite c!1363468 lt!2609944 (Context!16101 call!669964)) c!10362))))

(declare-fun b!7340719 () Bool)

(declare-fun e!4395622 () (Set Context!16100))

(declare-fun e!4395621 () (Set Context!16100))

(assert (=> b!7340719 (= e!4395622 e!4395621)))

(assert (=> b!7340719 (= c!1363468 (is-Union!19110 (regOne!38733 r1!2370)))))

(declare-fun call!669968 () List!71606)

(declare-fun c!1363469 () Bool)

(declare-fun c!1363470 () Bool)

(declare-fun bm!669960 () Bool)

(declare-fun call!669966 () (Set Context!16100))

(assert (=> bm!669960 (= call!669966 (derivationStepZipperDown!2936 (ite c!1363468 (regOne!38733 (regOne!38733 r1!2370)) (ite c!1363470 (regTwo!38732 (regOne!38733 r1!2370)) (ite c!1363469 (regOne!38732 (regOne!38733 r1!2370)) (reg!19439 (regOne!38733 r1!2370))))) (ite (or c!1363468 c!1363470) lt!2609944 (Context!16101 call!669968)) c!10362))))

(declare-fun b!7340720 () Bool)

(declare-fun e!4395620 () (Set Context!16100))

(declare-fun call!669965 () (Set Context!16100))

(assert (=> b!7340720 (= e!4395620 call!669965)))

(declare-fun b!7340721 () Bool)

(declare-fun e!4395623 () Bool)

(assert (=> b!7340721 (= c!1363470 e!4395623)))

(declare-fun res!2965580 () Bool)

(assert (=> b!7340721 (=> (not res!2965580) (not e!4395623))))

(assert (=> b!7340721 (= res!2965580 (is-Concat!27955 (regOne!38733 r1!2370)))))

(declare-fun e!4395618 () (Set Context!16100))

(assert (=> b!7340721 (= e!4395621 e!4395618)))

(declare-fun b!7340722 () Bool)

(assert (=> b!7340722 (= e!4395618 e!4395620)))

(assert (=> b!7340722 (= c!1363469 (is-Concat!27955 (regOne!38733 r1!2370)))))

(declare-fun d!2278738 () Bool)

(declare-fun c!1363467 () Bool)

(assert (=> d!2278738 (= c!1363467 (and (is-ElementMatch!19110 (regOne!38733 r1!2370)) (= (c!1363414 (regOne!38733 r1!2370)) c!10362)))))

(assert (=> d!2278738 (= (derivationStepZipperDown!2936 (regOne!38733 r1!2370) lt!2609944 c!10362) e!4395622)))

(declare-fun bm!669958 () Bool)

(assert (=> bm!669958 (= call!669968 call!669964)))

(declare-fun b!7340723 () Bool)

(declare-fun call!669963 () (Set Context!16100))

(assert (=> b!7340723 (= e!4395618 (set.union call!669967 call!669963))))

(declare-fun bm!669961 () Bool)

(assert (=> bm!669961 (= call!669964 ($colon$colon!3112 (exprs!8550 lt!2609944) (ite (or c!1363470 c!1363469) (regTwo!38732 (regOne!38733 r1!2370)) (regOne!38733 r1!2370))))))

(declare-fun bm!669962 () Bool)

(assert (=> bm!669962 (= call!669963 call!669966)))

(declare-fun b!7340724 () Bool)

(assert (=> b!7340724 (= e!4395621 (set.union call!669966 call!669967))))

(declare-fun bm!669963 () Bool)

(assert (=> bm!669963 (= call!669965 call!669963)))

(declare-fun b!7340725 () Bool)

(declare-fun e!4395619 () (Set Context!16100))

(assert (=> b!7340725 (= e!4395619 (as set.empty (Set Context!16100)))))

(declare-fun b!7340726 () Bool)

(declare-fun c!1363466 () Bool)

(assert (=> b!7340726 (= c!1363466 (is-Star!19110 (regOne!38733 r1!2370)))))

(assert (=> b!7340726 (= e!4395620 e!4395619)))

(declare-fun b!7340727 () Bool)

(assert (=> b!7340727 (= e!4395622 (set.insert lt!2609944 (as set.empty (Set Context!16100))))))

(declare-fun b!7340728 () Bool)

(assert (=> b!7340728 (= e!4395623 (nullable!8205 (regOne!38732 (regOne!38733 r1!2370))))))

(declare-fun b!7340729 () Bool)

(assert (=> b!7340729 (= e!4395619 call!669965)))

(assert (= (and d!2278738 c!1363467) b!7340727))

(assert (= (and d!2278738 (not c!1363467)) b!7340719))

(assert (= (and b!7340719 c!1363468) b!7340724))

(assert (= (and b!7340719 (not c!1363468)) b!7340721))

(assert (= (and b!7340721 res!2965580) b!7340728))

(assert (= (and b!7340721 c!1363470) b!7340723))

(assert (= (and b!7340721 (not c!1363470)) b!7340722))

(assert (= (and b!7340722 c!1363469) b!7340720))

(assert (= (and b!7340722 (not c!1363469)) b!7340726))

(assert (= (and b!7340726 c!1363466) b!7340729))

(assert (= (and b!7340726 (not c!1363466)) b!7340725))

(assert (= (or b!7340720 b!7340729) bm!669958))

(assert (= (or b!7340720 b!7340729) bm!669963))

(assert (= (or b!7340723 bm!669963) bm!669962))

(assert (= (or b!7340723 bm!669958) bm!669961))

(assert (= (or b!7340724 b!7340723) bm!669959))

(assert (= (or b!7340724 bm!669962) bm!669960))

(assert (=> b!7340728 m!8004508))

(declare-fun m!8004576 () Bool)

(assert (=> bm!669961 m!8004576))

(declare-fun m!8004578 () Bool)

(assert (=> bm!669959 m!8004578))

(declare-fun m!8004580 () Bool)

(assert (=> b!7340727 m!8004580))

(declare-fun m!8004582 () Bool)

(assert (=> bm!669960 m!8004582))

(assert (=> b!7340542 d!2278738))

(declare-fun d!2278740 () Bool)

(assert (=> d!2278740 (forall!17942 (++!16928 (exprs!8550 ct1!282) (exprs!8550 ct2!378)) lambda!455560)))

(declare-fun lt!2609991 () Unit!165173)

(assert (=> d!2278740 (= lt!2609991 (choose!57093 (exprs!8550 ct1!282) (exprs!8550 ct2!378) lambda!455560))))

(assert (=> d!2278740 (forall!17942 (exprs!8550 ct1!282) lambda!455560)))

(assert (=> d!2278740 (= (lemmaConcatPreservesForall!1785 (exprs!8550 ct1!282) (exprs!8550 ct2!378) lambda!455560) lt!2609991)))

(declare-fun bs!1918397 () Bool)

(assert (= bs!1918397 d!2278740))

(assert (=> bs!1918397 m!8004450))

(assert (=> bs!1918397 m!8004450))

(declare-fun m!8004584 () Bool)

(assert (=> bs!1918397 m!8004584))

(declare-fun m!8004586 () Bool)

(assert (=> bs!1918397 m!8004586))

(declare-fun m!8004588 () Bool)

(assert (=> bs!1918397 m!8004588))

(assert (=> b!7340542 d!2278740))

(declare-fun call!669970 () List!71606)

(declare-fun bm!669965 () Bool)

(declare-fun c!1363473 () Bool)

(declare-fun call!669973 () (Set Context!16100))

(assert (=> bm!669965 (= call!669973 (derivationStepZipperDown!2936 (ite c!1363473 (regTwo!38733 r1!2370) (regOne!38732 r1!2370)) (ite c!1363473 lt!2609944 (Context!16101 call!669970)) c!10362))))

(declare-fun b!7340730 () Bool)

(declare-fun e!4395628 () (Set Context!16100))

(declare-fun e!4395627 () (Set Context!16100))

(assert (=> b!7340730 (= e!4395628 e!4395627)))

(assert (=> b!7340730 (= c!1363473 (is-Union!19110 r1!2370))))

(declare-fun call!669972 () (Set Context!16100))

(declare-fun call!669974 () List!71606)

(declare-fun c!1363474 () Bool)

(declare-fun c!1363475 () Bool)

(declare-fun bm!669966 () Bool)

(assert (=> bm!669966 (= call!669972 (derivationStepZipperDown!2936 (ite c!1363473 (regOne!38733 r1!2370) (ite c!1363475 (regTwo!38732 r1!2370) (ite c!1363474 (regOne!38732 r1!2370) (reg!19439 r1!2370)))) (ite (or c!1363473 c!1363475) lt!2609944 (Context!16101 call!669974)) c!10362))))

(declare-fun b!7340731 () Bool)

(declare-fun e!4395626 () (Set Context!16100))

(declare-fun call!669971 () (Set Context!16100))

(assert (=> b!7340731 (= e!4395626 call!669971)))

(declare-fun b!7340732 () Bool)

(declare-fun e!4395629 () Bool)

(assert (=> b!7340732 (= c!1363475 e!4395629)))

(declare-fun res!2965581 () Bool)

(assert (=> b!7340732 (=> (not res!2965581) (not e!4395629))))

(assert (=> b!7340732 (= res!2965581 (is-Concat!27955 r1!2370))))

(declare-fun e!4395624 () (Set Context!16100))

(assert (=> b!7340732 (= e!4395627 e!4395624)))

(declare-fun b!7340733 () Bool)

(assert (=> b!7340733 (= e!4395624 e!4395626)))

(assert (=> b!7340733 (= c!1363474 (is-Concat!27955 r1!2370))))

(declare-fun d!2278742 () Bool)

(declare-fun c!1363472 () Bool)

(assert (=> d!2278742 (= c!1363472 (and (is-ElementMatch!19110 r1!2370) (= (c!1363414 r1!2370) c!10362)))))

(assert (=> d!2278742 (= (derivationStepZipperDown!2936 r1!2370 lt!2609944 c!10362) e!4395628)))

(declare-fun bm!669964 () Bool)

(assert (=> bm!669964 (= call!669974 call!669970)))

(declare-fun b!7340734 () Bool)

(declare-fun call!669969 () (Set Context!16100))

(assert (=> b!7340734 (= e!4395624 (set.union call!669973 call!669969))))

(declare-fun bm!669967 () Bool)

(assert (=> bm!669967 (= call!669970 ($colon$colon!3112 (exprs!8550 lt!2609944) (ite (or c!1363475 c!1363474) (regTwo!38732 r1!2370) r1!2370)))))

(declare-fun bm!669968 () Bool)

(assert (=> bm!669968 (= call!669969 call!669972)))

(declare-fun b!7340735 () Bool)

(assert (=> b!7340735 (= e!4395627 (set.union call!669972 call!669973))))

(declare-fun bm!669969 () Bool)

(assert (=> bm!669969 (= call!669971 call!669969)))

(declare-fun b!7340736 () Bool)

(declare-fun e!4395625 () (Set Context!16100))

(assert (=> b!7340736 (= e!4395625 (as set.empty (Set Context!16100)))))

(declare-fun b!7340737 () Bool)

(declare-fun c!1363471 () Bool)

(assert (=> b!7340737 (= c!1363471 (is-Star!19110 r1!2370))))

(assert (=> b!7340737 (= e!4395626 e!4395625)))

(declare-fun b!7340738 () Bool)

(assert (=> b!7340738 (= e!4395628 (set.insert lt!2609944 (as set.empty (Set Context!16100))))))

(declare-fun b!7340739 () Bool)

(assert (=> b!7340739 (= e!4395629 (nullable!8205 (regOne!38732 r1!2370)))))

(declare-fun b!7340740 () Bool)

(assert (=> b!7340740 (= e!4395625 call!669971)))

(assert (= (and d!2278742 c!1363472) b!7340738))

(assert (= (and d!2278742 (not c!1363472)) b!7340730))

(assert (= (and b!7340730 c!1363473) b!7340735))

(assert (= (and b!7340730 (not c!1363473)) b!7340732))

(assert (= (and b!7340732 res!2965581) b!7340739))

(assert (= (and b!7340732 c!1363475) b!7340734))

(assert (= (and b!7340732 (not c!1363475)) b!7340733))

(assert (= (and b!7340733 c!1363474) b!7340731))

(assert (= (and b!7340733 (not c!1363474)) b!7340737))

(assert (= (and b!7340737 c!1363471) b!7340740))

(assert (= (and b!7340737 (not c!1363471)) b!7340736))

(assert (= (or b!7340731 b!7340740) bm!669964))

(assert (= (or b!7340731 b!7340740) bm!669969))

(assert (= (or b!7340734 bm!669969) bm!669968))

(assert (= (or b!7340734 bm!669964) bm!669967))

(assert (= (or b!7340735 b!7340734) bm!669965))

(assert (= (or b!7340735 bm!669968) bm!669966))

(assert (=> b!7340739 m!8004528))

(declare-fun m!8004590 () Bool)

(assert (=> bm!669967 m!8004590))

(declare-fun m!8004592 () Bool)

(assert (=> bm!669965 m!8004592))

(assert (=> b!7340738 m!8004580))

(declare-fun m!8004594 () Bool)

(assert (=> bm!669966 m!8004594))

(assert (=> b!7340545 d!2278742))

(declare-fun b!7340743 () Bool)

(declare-fun res!2965582 () Bool)

(declare-fun e!4395630 () Bool)

(assert (=> b!7340743 (=> (not res!2965582) (not e!4395630))))

(declare-fun lt!2609992 () List!71606)

(assert (=> b!7340743 (= res!2965582 (= (size!42006 lt!2609992) (+ (size!42006 (exprs!8550 ct1!282)) (size!42006 (exprs!8550 ct2!378)))))))

(declare-fun d!2278744 () Bool)

(assert (=> d!2278744 e!4395630))

(declare-fun res!2965583 () Bool)

(assert (=> d!2278744 (=> (not res!2965583) (not e!4395630))))

(assert (=> d!2278744 (= res!2965583 (= (content!15027 lt!2609992) (set.union (content!15027 (exprs!8550 ct1!282)) (content!15027 (exprs!8550 ct2!378)))))))

(declare-fun e!4395631 () List!71606)

(assert (=> d!2278744 (= lt!2609992 e!4395631)))

(declare-fun c!1363476 () Bool)

(assert (=> d!2278744 (= c!1363476 (is-Nil!71482 (exprs!8550 ct1!282)))))

(assert (=> d!2278744 (= (++!16928 (exprs!8550 ct1!282) (exprs!8550 ct2!378)) lt!2609992)))

(declare-fun b!7340741 () Bool)

(assert (=> b!7340741 (= e!4395631 (exprs!8550 ct2!378))))

(declare-fun b!7340744 () Bool)

(assert (=> b!7340744 (= e!4395630 (or (not (= (exprs!8550 ct2!378) Nil!71482)) (= lt!2609992 (exprs!8550 ct1!282))))))

(declare-fun b!7340742 () Bool)

(assert (=> b!7340742 (= e!4395631 (Cons!71482 (h!77930 (exprs!8550 ct1!282)) (++!16928 (t!386001 (exprs!8550 ct1!282)) (exprs!8550 ct2!378))))))

(assert (= (and d!2278744 c!1363476) b!7340741))

(assert (= (and d!2278744 (not c!1363476)) b!7340742))

(assert (= (and d!2278744 res!2965583) b!7340743))

(assert (= (and b!7340743 res!2965582) b!7340744))

(declare-fun m!8004596 () Bool)

(assert (=> b!7340743 m!8004596))

(declare-fun m!8004598 () Bool)

(assert (=> b!7340743 m!8004598))

(assert (=> b!7340743 m!8004566))

(declare-fun m!8004600 () Bool)

(assert (=> d!2278744 m!8004600))

(declare-fun m!8004602 () Bool)

(assert (=> d!2278744 m!8004602))

(assert (=> d!2278744 m!8004572))

(declare-fun m!8004604 () Bool)

(assert (=> b!7340742 m!8004604))

(assert (=> b!7340545 d!2278744))

(assert (=> b!7340545 d!2278740))

(declare-fun d!2278746 () Bool)

(declare-fun res!2965588 () Bool)

(declare-fun e!4395636 () Bool)

(assert (=> d!2278746 (=> res!2965588 e!4395636)))

(assert (=> d!2278746 (= res!2965588 (is-Nil!71482 (exprs!8550 cWitness!61)))))

(assert (=> d!2278746 (= (forall!17942 (exprs!8550 cWitness!61) lambda!455560) e!4395636)))

(declare-fun b!7340749 () Bool)

(declare-fun e!4395637 () Bool)

(assert (=> b!7340749 (= e!4395636 e!4395637)))

(declare-fun res!2965589 () Bool)

(assert (=> b!7340749 (=> (not res!2965589) (not e!4395637))))

(declare-fun dynLambda!29450 (Int Regex!19110) Bool)

(assert (=> b!7340749 (= res!2965589 (dynLambda!29450 lambda!455560 (h!77930 (exprs!8550 cWitness!61))))))

(declare-fun b!7340750 () Bool)

(assert (=> b!7340750 (= e!4395637 (forall!17942 (t!386001 (exprs!8550 cWitness!61)) lambda!455560))))

(assert (= (and d!2278746 (not res!2965588)) b!7340749))

(assert (= (and b!7340749 res!2965589) b!7340750))

(declare-fun b_lambda!283859 () Bool)

(assert (=> (not b_lambda!283859) (not b!7340749)))

(declare-fun m!8004606 () Bool)

(assert (=> b!7340749 m!8004606))

(declare-fun m!8004608 () Bool)

(assert (=> b!7340750 m!8004608))

(assert (=> b!7340540 d!2278746))

(declare-fun b!7340762 () Bool)

(declare-fun e!4395640 () Bool)

(declare-fun tp!2084395 () Bool)

(declare-fun tp!2084393 () Bool)

(assert (=> b!7340762 (= e!4395640 (and tp!2084395 tp!2084393))))

(assert (=> b!7340549 (= tp!2084351 e!4395640)))

(declare-fun b!7340761 () Bool)

(assert (=> b!7340761 (= e!4395640 tp_is_empty!48465)))

(declare-fun b!7340763 () Bool)

(declare-fun tp!2084394 () Bool)

(assert (=> b!7340763 (= e!4395640 tp!2084394)))

(declare-fun b!7340764 () Bool)

(declare-fun tp!2084392 () Bool)

(declare-fun tp!2084396 () Bool)

(assert (=> b!7340764 (= e!4395640 (and tp!2084392 tp!2084396))))

(assert (= (and b!7340549 (is-ElementMatch!19110 (regOne!38733 r1!2370))) b!7340761))

(assert (= (and b!7340549 (is-Concat!27955 (regOne!38733 r1!2370))) b!7340762))

(assert (= (and b!7340549 (is-Star!19110 (regOne!38733 r1!2370))) b!7340763))

(assert (= (and b!7340549 (is-Union!19110 (regOne!38733 r1!2370))) b!7340764))

(declare-fun b!7340766 () Bool)

(declare-fun e!4395641 () Bool)

(declare-fun tp!2084400 () Bool)

(declare-fun tp!2084398 () Bool)

(assert (=> b!7340766 (= e!4395641 (and tp!2084400 tp!2084398))))

(assert (=> b!7340549 (= tp!2084357 e!4395641)))

(declare-fun b!7340765 () Bool)

(assert (=> b!7340765 (= e!4395641 tp_is_empty!48465)))

(declare-fun b!7340767 () Bool)

(declare-fun tp!2084399 () Bool)

(assert (=> b!7340767 (= e!4395641 tp!2084399)))

(declare-fun b!7340768 () Bool)

(declare-fun tp!2084397 () Bool)

(declare-fun tp!2084401 () Bool)

(assert (=> b!7340768 (= e!4395641 (and tp!2084397 tp!2084401))))

(assert (= (and b!7340549 (is-ElementMatch!19110 (regTwo!38733 r1!2370))) b!7340765))

(assert (= (and b!7340549 (is-Concat!27955 (regTwo!38733 r1!2370))) b!7340766))

(assert (= (and b!7340549 (is-Star!19110 (regTwo!38733 r1!2370))) b!7340767))

(assert (= (and b!7340549 (is-Union!19110 (regTwo!38733 r1!2370))) b!7340768))

(declare-fun b!7340773 () Bool)

(declare-fun e!4395644 () Bool)

(declare-fun tp!2084406 () Bool)

(declare-fun tp!2084407 () Bool)

(assert (=> b!7340773 (= e!4395644 (and tp!2084406 tp!2084407))))

(assert (=> b!7340544 (= tp!2084350 e!4395644)))

(assert (= (and b!7340544 (is-Cons!71482 (exprs!8550 cWitness!61))) b!7340773))

(declare-fun b!7340774 () Bool)

(declare-fun e!4395645 () Bool)

(declare-fun tp!2084408 () Bool)

(declare-fun tp!2084409 () Bool)

(assert (=> b!7340774 (= e!4395645 (and tp!2084408 tp!2084409))))

(assert (=> b!7340547 (= tp!2084356 e!4395645)))

(assert (= (and b!7340547 (is-Cons!71482 (exprs!8550 ct1!282))) b!7340774))

(declare-fun b!7340775 () Bool)

(declare-fun e!4395646 () Bool)

(declare-fun tp!2084410 () Bool)

(declare-fun tp!2084411 () Bool)

(assert (=> b!7340775 (= e!4395646 (and tp!2084410 tp!2084411))))

(assert (=> b!7340541 (= tp!2084354 e!4395646)))

(assert (= (and b!7340541 (is-Cons!71482 (exprs!8550 ct2!378))) b!7340775))

(declare-fun b!7340777 () Bool)

(declare-fun e!4395647 () Bool)

(declare-fun tp!2084415 () Bool)

(declare-fun tp!2084413 () Bool)

(assert (=> b!7340777 (= e!4395647 (and tp!2084415 tp!2084413))))

(assert (=> b!7340552 (= tp!2084353 e!4395647)))

(declare-fun b!7340776 () Bool)

(assert (=> b!7340776 (= e!4395647 tp_is_empty!48465)))

(declare-fun b!7340778 () Bool)

(declare-fun tp!2084414 () Bool)

(assert (=> b!7340778 (= e!4395647 tp!2084414)))

(declare-fun b!7340779 () Bool)

(declare-fun tp!2084412 () Bool)

(declare-fun tp!2084416 () Bool)

(assert (=> b!7340779 (= e!4395647 (and tp!2084412 tp!2084416))))

(assert (= (and b!7340552 (is-ElementMatch!19110 (reg!19439 r1!2370))) b!7340776))

(assert (= (and b!7340552 (is-Concat!27955 (reg!19439 r1!2370))) b!7340777))

(assert (= (and b!7340552 (is-Star!19110 (reg!19439 r1!2370))) b!7340778))

(assert (= (and b!7340552 (is-Union!19110 (reg!19439 r1!2370))) b!7340779))

(declare-fun b!7340781 () Bool)

(declare-fun e!4395648 () Bool)

(declare-fun tp!2084420 () Bool)

(declare-fun tp!2084418 () Bool)

(assert (=> b!7340781 (= e!4395648 (and tp!2084420 tp!2084418))))

(assert (=> b!7340546 (= tp!2084352 e!4395648)))

(declare-fun b!7340780 () Bool)

(assert (=> b!7340780 (= e!4395648 tp_is_empty!48465)))

(declare-fun b!7340782 () Bool)

(declare-fun tp!2084419 () Bool)

(assert (=> b!7340782 (= e!4395648 tp!2084419)))

(declare-fun b!7340783 () Bool)

(declare-fun tp!2084417 () Bool)

(declare-fun tp!2084421 () Bool)

(assert (=> b!7340783 (= e!4395648 (and tp!2084417 tp!2084421))))

(assert (= (and b!7340546 (is-ElementMatch!19110 (regOne!38732 r1!2370))) b!7340780))

(assert (= (and b!7340546 (is-Concat!27955 (regOne!38732 r1!2370))) b!7340781))

(assert (= (and b!7340546 (is-Star!19110 (regOne!38732 r1!2370))) b!7340782))

(assert (= (and b!7340546 (is-Union!19110 (regOne!38732 r1!2370))) b!7340783))

(declare-fun b!7340785 () Bool)

(declare-fun e!4395649 () Bool)

(declare-fun tp!2084425 () Bool)

(declare-fun tp!2084423 () Bool)

(assert (=> b!7340785 (= e!4395649 (and tp!2084425 tp!2084423))))

(assert (=> b!7340546 (= tp!2084355 e!4395649)))

(declare-fun b!7340784 () Bool)

(assert (=> b!7340784 (= e!4395649 tp_is_empty!48465)))

(declare-fun b!7340786 () Bool)

(declare-fun tp!2084424 () Bool)

(assert (=> b!7340786 (= e!4395649 tp!2084424)))

(declare-fun b!7340787 () Bool)

(declare-fun tp!2084422 () Bool)

(declare-fun tp!2084426 () Bool)

(assert (=> b!7340787 (= e!4395649 (and tp!2084422 tp!2084426))))

(assert (= (and b!7340546 (is-ElementMatch!19110 (regTwo!38732 r1!2370))) b!7340784))

(assert (= (and b!7340546 (is-Concat!27955 (regTwo!38732 r1!2370))) b!7340785))

(assert (= (and b!7340546 (is-Star!19110 (regTwo!38732 r1!2370))) b!7340786))

(assert (= (and b!7340546 (is-Union!19110 (regTwo!38732 r1!2370))) b!7340787))

(declare-fun b_lambda!283861 () Bool)

(assert (= b_lambda!283859 (or b!7340545 b_lambda!283861)))

(declare-fun bs!1918398 () Bool)

(declare-fun d!2278748 () Bool)

(assert (= bs!1918398 (and d!2278748 b!7340545)))

(assert (=> bs!1918398 (= (dynLambda!29450 lambda!455560 (h!77930 (exprs!8550 cWitness!61))) (validRegex!9706 (h!77930 (exprs!8550 cWitness!61))))))

(declare-fun m!8004610 () Bool)

(assert (=> bs!1918398 m!8004610))

(assert (=> b!7340749 d!2278748))

(push 1)

(assert (not b!7340786))

(assert (not bm!669932))

(assert (not b!7340773))

(assert (not bm!669965))

(assert (not bm!669922))

(assert (not b!7340717))

(assert (not d!2278724))

(assert (not bm!669939))

(assert (not bm!669961))

(assert (not d!2278726))

(assert (not b!7340779))

(assert (not bm!669960))

(assert (not b!7340778))

(assert (not b!7340781))

(assert (not b!7340774))

(assert (not bm!669967))

(assert (not b!7340768))

(assert (not b!7340623))

(assert (not d!2278740))

(assert (not bm!669920))

(assert (not b!7340742))

(assert (not b!7340728))

(assert (not b!7340785))

(assert (not bm!669921))

(assert (not b!7340673))

(assert tp_is_empty!48465)

(assert (not bs!1918398))

(assert (not b!7340762))

(assert (not bm!669916))

(assert (not b!7340716))

(assert (not b_lambda!283861))

(assert (not d!2278730))

(assert (not b!7340766))

(assert (not b!7340743))

(assert (not b!7340634))

(assert (not d!2278744))

(assert (not bm!669940))

(assert (not b!7340787))

(assert (not b!7340767))

(assert (not bm!669914))

(assert (not d!2278734))

(assert (not bm!669966))

(assert (not b!7340783))

(assert (not bm!669915))

(assert (not b!7340764))

(assert (not b!7340739))

(assert (not d!2278722))

(assert (not b!7340750))

(assert (not b!7340763))

(assert (not bm!669933))

(assert (not bm!669941))

(assert (not b!7340775))

(assert (not d!2278732))

(assert (not b!7340694))

(assert (not b!7340782))

(assert (not b!7340777))

(assert (not bm!669959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

