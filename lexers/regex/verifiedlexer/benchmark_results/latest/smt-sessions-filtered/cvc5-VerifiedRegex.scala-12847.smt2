; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709724 () Bool)

(assert start!709724)

(declare-fun b!7271904 () Bool)

(assert (=> b!7271904 true))

(declare-fun b!7271895 () Bool)

(declare-fun e!4360694 () Bool)

(declare-fun tp_is_empty!47069 () Bool)

(declare-fun tp!2041234 () Bool)

(assert (=> b!7271895 (= e!4360694 (and tp_is_empty!47069 tp!2041234))))

(declare-fun b!7271896 () Bool)

(declare-fun e!4360696 () Bool)

(declare-fun e!4360697 () Bool)

(assert (=> b!7271896 (= e!4360696 e!4360697)))

(declare-fun res!2947825 () Bool)

(assert (=> b!7271896 (=> res!2947825 e!4360697)))

(declare-datatypes ((C!37878 0))(
  ( (C!37879 (val!28887 Int)) )
))
(declare-datatypes ((Regex!18802 0))(
  ( (ElementMatch!18802 (c!1353804 C!37878)) (Concat!27647 (regOne!38116 Regex!18802) (regTwo!38116 Regex!18802)) (EmptyExpr!18802) (Star!18802 (reg!19131 Regex!18802)) (EmptyLang!18802) (Union!18802 (regOne!38117 Regex!18802) (regTwo!38117 Regex!18802)) )
))
(declare-datatypes ((List!70919 0))(
  ( (Nil!70795) (Cons!70795 (h!77243 Regex!18802) (t!384991 List!70919)) )
))
(declare-datatypes ((Context!15484 0))(
  ( (Context!15485 (exprs!8242 List!70919)) )
))
(declare-fun lt!2595317 () (Set Context!15484))

(declare-datatypes ((List!70920 0))(
  ( (Nil!70796) (Cons!70796 (h!77244 C!37878) (t!384992 List!70920)) )
))
(declare-fun s!7854 () List!70920)

(declare-fun matchZipper!3706 ((Set Context!15484) List!70920) Bool)

(assert (=> b!7271896 (= res!2947825 (not (matchZipper!3706 lt!2595317 (t!384992 s!7854))))))

(declare-fun lambda!448838 () Int)

(declare-datatypes ((Unit!164222 0))(
  ( (Unit!164223) )
))
(declare-fun lt!2595325 () Unit!164222)

(declare-fun lt!2595313 () List!70919)

(declare-fun ct2!346 () Context!15484)

(declare-fun lemmaConcatPreservesForall!1559 (List!70919 List!70919 Int) Unit!164222)

(assert (=> b!7271896 (= lt!2595325 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595324 () (Set Context!15484))

(declare-fun lambda!448839 () Int)

(declare-fun lt!2595315 () Context!15484)

(declare-fun flatMap!2915 ((Set Context!15484) Int) (Set Context!15484))

(declare-fun derivationStepZipperUp!2572 (Context!15484 C!37878) (Set Context!15484))

(assert (=> b!7271896 (= (flatMap!2915 lt!2595324 lambda!448839) (derivationStepZipperUp!2572 lt!2595315 (h!77244 s!7854)))))

(declare-fun lt!2595318 () Unit!164222)

(declare-fun lemmaFlatMapOnSingletonSet!2315 ((Set Context!15484) Context!15484 Int) Unit!164222)

(assert (=> b!7271896 (= lt!2595318 (lemmaFlatMapOnSingletonSet!2315 lt!2595324 lt!2595315 lambda!448839))))

(declare-fun lt!2595336 () Unit!164222)

(assert (=> b!7271896 (= lt!2595336 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595337 () Unit!164222)

(assert (=> b!7271896 (= lt!2595337 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595327 () Unit!164222)

(assert (=> b!7271896 (= lt!2595327 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(assert (=> b!7271896 (matchZipper!3706 lt!2595324 s!7854)))

(assert (=> b!7271896 (= lt!2595324 (set.insert lt!2595315 (as set.empty (Set Context!15484))))))

(declare-fun lt!2595332 () Unit!164222)

(assert (=> b!7271896 (= lt!2595332 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595329 () Context!15484)

(declare-fun lt!2595323 () Unit!164222)

(declare-fun lemmaPrependingNullableCtxStillMatches!39 (Context!15484 Context!15484 List!70920) Unit!164222)

(assert (=> b!7271896 (= lt!2595323 (lemmaPrependingNullableCtxStillMatches!39 lt!2595329 ct2!346 s!7854))))

(declare-fun b!7271897 () Bool)

(declare-fun e!4360691 () Bool)

(assert (=> b!7271897 (= e!4360691 e!4360696)))

(declare-fun res!2947830 () Bool)

(assert (=> b!7271897 (=> res!2947830 e!4360696)))

(declare-fun lt!2595312 () (Set Context!15484))

(declare-fun lt!2595326 () (Set Context!15484))

(assert (=> b!7271897 (= res!2947830 (not (= lt!2595312 lt!2595326)))))

(declare-fun lt!2595322 () (Set Context!15484))

(assert (=> b!7271897 (= lt!2595326 (set.union lt!2595322 lt!2595317))))

(assert (=> b!7271897 (= lt!2595317 (derivationStepZipperUp!2572 lt!2595315 (h!77244 s!7854)))))

(declare-fun ct1!250 () Context!15484)

(declare-fun derivationStepZipperDown!2736 (Regex!18802 Context!15484 C!37878) (Set Context!15484))

(assert (=> b!7271897 (= lt!2595322 (derivationStepZipperDown!2736 (h!77243 (exprs!8242 ct1!250)) lt!2595315 (h!77244 s!7854)))))

(declare-fun ++!16702 (List!70919 List!70919) List!70919)

(assert (=> b!7271897 (= lt!2595315 (Context!15485 (++!16702 lt!2595313 (exprs!8242 ct2!346))))))

(declare-fun lt!2595309 () Unit!164222)

(assert (=> b!7271897 (= lt!2595309 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595331 () Unit!164222)

(assert (=> b!7271897 (= lt!2595331 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun b!7271898 () Bool)

(declare-fun e!4360690 () Bool)

(declare-fun tp!2041233 () Bool)

(assert (=> b!7271898 (= e!4360690 tp!2041233)))

(declare-fun b!7271899 () Bool)

(declare-fun e!4360693 () Bool)

(assert (=> b!7271899 (= e!4360693 e!4360691)))

(declare-fun res!2947828 () Bool)

(assert (=> b!7271899 (=> res!2947828 e!4360691)))

(declare-fun nullable!8002 (Regex!18802) Bool)

(assert (=> b!7271899 (= res!2947828 (not (nullable!8002 (h!77243 (exprs!8242 ct1!250)))))))

(declare-fun lt!2595314 () (Set Context!15484))

(assert (=> b!7271899 (= lt!2595314 (derivationStepZipperUp!2572 ct1!250 (h!77244 s!7854)))))

(assert (=> b!7271899 (= lt!2595329 (Context!15485 lt!2595313))))

(declare-fun tail!14507 (List!70919) List!70919)

(assert (=> b!7271899 (= lt!2595313 (tail!14507 (exprs!8242 ct1!250)))))

(declare-fun b!7271900 () Bool)

(declare-fun e!4360698 () Bool)

(declare-fun tp!2041235 () Bool)

(assert (=> b!7271900 (= e!4360698 tp!2041235)))

(declare-fun b!7271901 () Bool)

(declare-fun res!2947824 () Bool)

(assert (=> b!7271901 (=> res!2947824 e!4360693)))

(declare-fun isEmpty!40720 (List!70919) Bool)

(assert (=> b!7271901 (= res!2947824 (isEmpty!40720 (exprs!8242 ct1!250)))))

(declare-fun b!7271902 () Bool)

(declare-fun e!4360695 () Bool)

(assert (=> b!7271902 (= e!4360697 e!4360695)))

(declare-fun res!2947821 () Bool)

(assert (=> b!7271902 (=> res!2947821 e!4360695)))

(declare-fun forall!17631 (List!70919 Int) Bool)

(assert (=> b!7271902 (= res!2947821 (not (forall!17631 (exprs!8242 ct1!250) lambda!448838)))))

(assert (=> b!7271902 (matchZipper!3706 lt!2595326 (t!384992 s!7854))))

(declare-fun lt!2595334 () Bool)

(assert (=> b!7271902 (= lt!2595334 (matchZipper!3706 lt!2595322 (t!384992 s!7854)))))

(declare-fun lt!2595333 () Unit!164222)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1775 ((Set Context!15484) (Set Context!15484) List!70920) Unit!164222)

(assert (=> b!7271902 (= lt!2595333 (lemmaZipperConcatMatchesSameAsBothZippers!1775 lt!2595322 lt!2595317 (t!384992 s!7854)))))

(declare-fun lt!2595308 () Unit!164222)

(assert (=> b!7271902 (= lt!2595308 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595319 () Unit!164222)

(assert (=> b!7271902 (= lt!2595319 (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun b!7271903 () Bool)

(declare-fun res!2947822 () Bool)

(assert (=> b!7271903 (=> res!2947822 e!4360691)))

(assert (=> b!7271903 (= res!2947822 (not (= lt!2595314 (set.union (derivationStepZipperDown!2736 (h!77243 (exprs!8242 ct1!250)) lt!2595329 (h!77244 s!7854)) (derivationStepZipperUp!2572 lt!2595329 (h!77244 s!7854))))))))

(declare-fun e!4360692 () Bool)

(assert (=> b!7271904 (= e!4360692 (not e!4360693))))

(declare-fun res!2947826 () Bool)

(assert (=> b!7271904 (=> res!2947826 e!4360693)))

(declare-fun lt!2595338 () (Set Context!15484))

(declare-fun derivationStepZipper!3542 ((Set Context!15484) C!37878) (Set Context!15484))

(assert (=> b!7271904 (= res!2947826 (not (= lt!2595312 (derivationStepZipper!3542 lt!2595338 (h!77244 s!7854)))))))

(declare-fun lt!2595310 () Unit!164222)

(assert (=> b!7271904 (= lt!2595310 (lemmaConcatPreservesForall!1559 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595321 () Context!15484)

(assert (=> b!7271904 (= (flatMap!2915 lt!2595338 lambda!448839) (derivationStepZipperUp!2572 lt!2595321 (h!77244 s!7854)))))

(declare-fun lt!2595330 () Unit!164222)

(assert (=> b!7271904 (= lt!2595330 (lemmaFlatMapOnSingletonSet!2315 lt!2595338 lt!2595321 lambda!448839))))

(assert (=> b!7271904 (= lt!2595338 (set.insert lt!2595321 (as set.empty (Set Context!15484))))))

(declare-fun lt!2595311 () Unit!164222)

(assert (=> b!7271904 (= lt!2595311 (lemmaConcatPreservesForall!1559 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595328 () Unit!164222)

(assert (=> b!7271904 (= lt!2595328 (lemmaConcatPreservesForall!1559 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838))))

(declare-fun lt!2595335 () (Set Context!15484))

(assert (=> b!7271904 (= (flatMap!2915 lt!2595335 lambda!448839) (derivationStepZipperUp!2572 ct1!250 (h!77244 s!7854)))))

(declare-fun lt!2595316 () Unit!164222)

(assert (=> b!7271904 (= lt!2595316 (lemmaFlatMapOnSingletonSet!2315 lt!2595335 ct1!250 lambda!448839))))

(assert (=> b!7271904 (= lt!2595335 (set.insert ct1!250 (as set.empty (Set Context!15484))))))

(assert (=> b!7271904 (= lt!2595312 (derivationStepZipperUp!2572 lt!2595321 (h!77244 s!7854)))))

(assert (=> b!7271904 (= lt!2595321 (Context!15485 (++!16702 (exprs!8242 ct1!250) (exprs!8242 ct2!346))))))

(declare-fun lt!2595320 () Unit!164222)

(assert (=> b!7271904 (= lt!2595320 (lemmaConcatPreservesForall!1559 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838))))

(declare-fun b!7271905 () Bool)

(declare-fun res!2947829 () Bool)

(assert (=> b!7271905 (=> (not res!2947829) (not e!4360692))))

(assert (=> b!7271905 (= res!2947829 (is-Cons!70796 s!7854))))

(declare-fun b!7271906 () Bool)

(assert (=> b!7271906 (= e!4360695 (forall!17631 (exprs!8242 ct2!346) lambda!448838))))

(declare-fun b!7271907 () Bool)

(declare-fun res!2947823 () Bool)

(assert (=> b!7271907 (=> (not res!2947823) (not e!4360692))))

(declare-fun nullableContext!292 (Context!15484) Bool)

(assert (=> b!7271907 (= res!2947823 (nullableContext!292 ct1!250))))

(declare-fun res!2947827 () Bool)

(assert (=> start!709724 (=> (not res!2947827) (not e!4360692))))

(assert (=> start!709724 (= res!2947827 (matchZipper!3706 (set.insert ct2!346 (as set.empty (Set Context!15484))) s!7854))))

(assert (=> start!709724 e!4360692))

(declare-fun inv!90016 (Context!15484) Bool)

(assert (=> start!709724 (and (inv!90016 ct2!346) e!4360690)))

(assert (=> start!709724 e!4360694))

(assert (=> start!709724 (and (inv!90016 ct1!250) e!4360698)))

(declare-fun b!7271894 () Bool)

(declare-fun res!2947820 () Bool)

(assert (=> b!7271894 (=> res!2947820 e!4360693)))

(assert (=> b!7271894 (= res!2947820 (not (is-Cons!70795 (exprs!8242 ct1!250))))))

(assert (= (and start!709724 res!2947827) b!7271907))

(assert (= (and b!7271907 res!2947823) b!7271905))

(assert (= (and b!7271905 res!2947829) b!7271904))

(assert (= (and b!7271904 (not res!2947826)) b!7271894))

(assert (= (and b!7271894 (not res!2947820)) b!7271901))

(assert (= (and b!7271901 (not res!2947824)) b!7271899))

(assert (= (and b!7271899 (not res!2947828)) b!7271903))

(assert (= (and b!7271903 (not res!2947822)) b!7271897))

(assert (= (and b!7271897 (not res!2947830)) b!7271896))

(assert (= (and b!7271896 (not res!2947825)) b!7271902))

(assert (= (and b!7271902 (not res!2947821)) b!7271906))

(assert (= start!709724 b!7271898))

(assert (= (and start!709724 (is-Cons!70796 s!7854)) b!7271895))

(assert (= start!709724 b!7271900))

(declare-fun m!7957862 () Bool)

(assert (=> b!7271901 m!7957862))

(declare-fun m!7957864 () Bool)

(assert (=> b!7271903 m!7957864))

(declare-fun m!7957866 () Bool)

(assert (=> b!7271903 m!7957866))

(declare-fun m!7957868 () Bool)

(assert (=> b!7271906 m!7957868))

(declare-fun m!7957870 () Bool)

(assert (=> b!7271904 m!7957870))

(declare-fun m!7957872 () Bool)

(assert (=> b!7271904 m!7957872))

(declare-fun m!7957874 () Bool)

(assert (=> b!7271904 m!7957874))

(assert (=> b!7271904 m!7957870))

(assert (=> b!7271904 m!7957870))

(declare-fun m!7957876 () Bool)

(assert (=> b!7271904 m!7957876))

(declare-fun m!7957878 () Bool)

(assert (=> b!7271904 m!7957878))

(declare-fun m!7957880 () Bool)

(assert (=> b!7271904 m!7957880))

(declare-fun m!7957882 () Bool)

(assert (=> b!7271904 m!7957882))

(assert (=> b!7271904 m!7957870))

(declare-fun m!7957884 () Bool)

(assert (=> b!7271904 m!7957884))

(declare-fun m!7957886 () Bool)

(assert (=> b!7271904 m!7957886))

(declare-fun m!7957888 () Bool)

(assert (=> b!7271904 m!7957888))

(declare-fun m!7957890 () Bool)

(assert (=> b!7271904 m!7957890))

(declare-fun m!7957892 () Bool)

(assert (=> b!7271896 m!7957892))

(declare-fun m!7957894 () Bool)

(assert (=> b!7271896 m!7957894))

(declare-fun m!7957896 () Bool)

(assert (=> b!7271896 m!7957896))

(assert (=> b!7271896 m!7957892))

(assert (=> b!7271896 m!7957892))

(assert (=> b!7271896 m!7957892))

(declare-fun m!7957898 () Bool)

(assert (=> b!7271896 m!7957898))

(declare-fun m!7957900 () Bool)

(assert (=> b!7271896 m!7957900))

(declare-fun m!7957902 () Bool)

(assert (=> b!7271896 m!7957902))

(assert (=> b!7271896 m!7957892))

(declare-fun m!7957904 () Bool)

(assert (=> b!7271896 m!7957904))

(declare-fun m!7957906 () Bool)

(assert (=> b!7271896 m!7957906))

(declare-fun m!7957908 () Bool)

(assert (=> b!7271899 m!7957908))

(assert (=> b!7271899 m!7957876))

(declare-fun m!7957910 () Bool)

(assert (=> b!7271899 m!7957910))

(declare-fun m!7957912 () Bool)

(assert (=> start!709724 m!7957912))

(assert (=> start!709724 m!7957912))

(declare-fun m!7957914 () Bool)

(assert (=> start!709724 m!7957914))

(declare-fun m!7957916 () Bool)

(assert (=> start!709724 m!7957916))

(declare-fun m!7957918 () Bool)

(assert (=> start!709724 m!7957918))

(assert (=> b!7271897 m!7957892))

(declare-fun m!7957920 () Bool)

(assert (=> b!7271897 m!7957920))

(assert (=> b!7271897 m!7957906))

(assert (=> b!7271897 m!7957892))

(declare-fun m!7957922 () Bool)

(assert (=> b!7271897 m!7957922))

(assert (=> b!7271902 m!7957892))

(declare-fun m!7957924 () Bool)

(assert (=> b!7271902 m!7957924))

(declare-fun m!7957926 () Bool)

(assert (=> b!7271902 m!7957926))

(declare-fun m!7957928 () Bool)

(assert (=> b!7271902 m!7957928))

(declare-fun m!7957930 () Bool)

(assert (=> b!7271902 m!7957930))

(assert (=> b!7271902 m!7957892))

(declare-fun m!7957932 () Bool)

(assert (=> b!7271907 m!7957932))

(push 1)

(assert (not b!7271906))

(assert (not b!7271900))

(assert (not b!7271899))

(assert tp_is_empty!47069)

(assert (not b!7271902))

(assert (not b!7271897))

(assert (not b!7271896))

(assert (not b!7271907))

(assert (not b!7271895))

(assert (not b!7271901))

(assert (not b!7271903))

(assert (not start!709724))

(assert (not b!7271898))

(assert (not b!7271904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7271976 () Bool)

(declare-fun e!4360742 () (Set Context!15484))

(declare-fun e!4360740 () (Set Context!15484))

(assert (=> b!7271976 (= e!4360742 e!4360740)))

(declare-fun c!1353826 () Bool)

(assert (=> b!7271976 (= c!1353826 (is-Union!18802 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun b!7271977 () Bool)

(declare-fun e!4360743 () (Set Context!15484))

(declare-fun call!663382 () (Set Context!15484))

(assert (=> b!7271977 (= e!4360743 call!663382)))

(declare-fun call!663384 () List!70919)

(declare-fun bm!663376 () Bool)

(declare-fun c!1353822 () Bool)

(declare-fun c!1353824 () Bool)

(declare-fun $colon$colon!2976 (List!70919 Regex!18802) List!70919)

(assert (=> bm!663376 (= call!663384 ($colon$colon!2976 (exprs!8242 lt!2595329) (ite (or c!1353822 c!1353824) (regTwo!38116 (h!77243 (exprs!8242 ct1!250))) (h!77243 (exprs!8242 ct1!250)))))))

(declare-fun bm!663377 () Bool)

(declare-fun call!663385 () (Set Context!15484))

(assert (=> bm!663377 (= call!663382 call!663385)))

(declare-fun b!7271978 () Bool)

(declare-fun e!4360738 () (Set Context!15484))

(declare-fun call!663380 () (Set Context!15484))

(assert (=> b!7271978 (= e!4360738 (set.union call!663380 call!663385))))

(declare-fun b!7271979 () Bool)

(declare-fun e!4360741 () (Set Context!15484))

(assert (=> b!7271979 (= e!4360738 e!4360741)))

(assert (=> b!7271979 (= c!1353824 (is-Concat!27647 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun bm!663378 () Bool)

(declare-fun call!663383 () (Set Context!15484))

(assert (=> bm!663378 (= call!663385 call!663383)))

(declare-fun bm!663379 () Bool)

(declare-fun call!663381 () List!70919)

(assert (=> bm!663379 (= call!663381 call!663384)))

(declare-fun b!7271980 () Bool)

(assert (=> b!7271980 (= e!4360742 (set.insert lt!2595329 (as set.empty (Set Context!15484))))))

(declare-fun bm!663380 () Bool)

(assert (=> bm!663380 (= call!663383 (derivationStepZipperDown!2736 (ite c!1353826 (regOne!38117 (h!77243 (exprs!8242 ct1!250))) (ite c!1353822 (regTwo!38116 (h!77243 (exprs!8242 ct1!250))) (ite c!1353824 (regOne!38116 (h!77243 (exprs!8242 ct1!250))) (reg!19131 (h!77243 (exprs!8242 ct1!250)))))) (ite (or c!1353826 c!1353822) lt!2595329 (Context!15485 call!663381)) (h!77244 s!7854)))))

(declare-fun b!7271981 () Bool)

(declare-fun c!1353823 () Bool)

(assert (=> b!7271981 (= c!1353823 (is-Star!18802 (h!77243 (exprs!8242 ct1!250))))))

(assert (=> b!7271981 (= e!4360741 e!4360743)))

(declare-fun b!7271982 () Bool)

(assert (=> b!7271982 (= e!4360741 call!663382)))

(declare-fun d!2263108 () Bool)

(declare-fun c!1353825 () Bool)

(assert (=> d!2263108 (= c!1353825 (and (is-ElementMatch!18802 (h!77243 (exprs!8242 ct1!250))) (= (c!1353804 (h!77243 (exprs!8242 ct1!250))) (h!77244 s!7854))))))

(assert (=> d!2263108 (= (derivationStepZipperDown!2736 (h!77243 (exprs!8242 ct1!250)) lt!2595329 (h!77244 s!7854)) e!4360742)))

(declare-fun bm!663375 () Bool)

(assert (=> bm!663375 (= call!663380 (derivationStepZipperDown!2736 (ite c!1353826 (regTwo!38117 (h!77243 (exprs!8242 ct1!250))) (regOne!38116 (h!77243 (exprs!8242 ct1!250)))) (ite c!1353826 lt!2595329 (Context!15485 call!663384)) (h!77244 s!7854)))))

(declare-fun b!7271983 () Bool)

(assert (=> b!7271983 (= e!4360743 (as set.empty (Set Context!15484)))))

(declare-fun b!7271984 () Bool)

(assert (=> b!7271984 (= e!4360740 (set.union call!663383 call!663380))))

(declare-fun b!7271985 () Bool)

(declare-fun e!4360739 () Bool)

(assert (=> b!7271985 (= e!4360739 (nullable!8002 (regOne!38116 (h!77243 (exprs!8242 ct1!250)))))))

(declare-fun b!7271986 () Bool)

(assert (=> b!7271986 (= c!1353822 e!4360739)))

(declare-fun res!2947866 () Bool)

(assert (=> b!7271986 (=> (not res!2947866) (not e!4360739))))

(assert (=> b!7271986 (= res!2947866 (is-Concat!27647 (h!77243 (exprs!8242 ct1!250))))))

(assert (=> b!7271986 (= e!4360740 e!4360738)))

(assert (= (and d!2263108 c!1353825) b!7271980))

(assert (= (and d!2263108 (not c!1353825)) b!7271976))

(assert (= (and b!7271976 c!1353826) b!7271984))

(assert (= (and b!7271976 (not c!1353826)) b!7271986))

(assert (= (and b!7271986 res!2947866) b!7271985))

(assert (= (and b!7271986 c!1353822) b!7271978))

(assert (= (and b!7271986 (not c!1353822)) b!7271979))

(assert (= (and b!7271979 c!1353824) b!7271982))

(assert (= (and b!7271979 (not c!1353824)) b!7271981))

(assert (= (and b!7271981 c!1353823) b!7271977))

(assert (= (and b!7271981 (not c!1353823)) b!7271983))

(assert (= (or b!7271982 b!7271977) bm!663379))

(assert (= (or b!7271982 b!7271977) bm!663377))

(assert (= (or b!7271978 bm!663379) bm!663376))

(assert (= (or b!7271978 bm!663377) bm!663378))

(assert (= (or b!7271984 bm!663378) bm!663380))

(assert (= (or b!7271984 b!7271978) bm!663375))

(declare-fun m!7958006 () Bool)

(assert (=> bm!663380 m!7958006))

(declare-fun m!7958008 () Bool)

(assert (=> bm!663376 m!7958008))

(declare-fun m!7958010 () Bool)

(assert (=> b!7271980 m!7958010))

(declare-fun m!7958012 () Bool)

(assert (=> b!7271985 m!7958012))

(declare-fun m!7958014 () Bool)

(assert (=> bm!663375 m!7958014))

(assert (=> b!7271903 d!2263108))

(declare-fun b!7271997 () Bool)

(declare-fun e!4360751 () (Set Context!15484))

(declare-fun e!4360750 () (Set Context!15484))

(assert (=> b!7271997 (= e!4360751 e!4360750)))

(declare-fun c!1353832 () Bool)

(assert (=> b!7271997 (= c!1353832 (is-Cons!70795 (exprs!8242 lt!2595329)))))

(declare-fun b!7271998 () Bool)

(declare-fun call!663388 () (Set Context!15484))

(assert (=> b!7271998 (= e!4360750 call!663388)))

(declare-fun b!7271999 () Bool)

(assert (=> b!7271999 (= e!4360751 (set.union call!663388 (derivationStepZipperUp!2572 (Context!15485 (t!384991 (exprs!8242 lt!2595329))) (h!77244 s!7854))))))

(declare-fun bm!663383 () Bool)

(assert (=> bm!663383 (= call!663388 (derivationStepZipperDown!2736 (h!77243 (exprs!8242 lt!2595329)) (Context!15485 (t!384991 (exprs!8242 lt!2595329))) (h!77244 s!7854)))))

(declare-fun d!2263110 () Bool)

(declare-fun c!1353831 () Bool)

(declare-fun e!4360752 () Bool)

(assert (=> d!2263110 (= c!1353831 e!4360752)))

(declare-fun res!2947869 () Bool)

(assert (=> d!2263110 (=> (not res!2947869) (not e!4360752))))

(assert (=> d!2263110 (= res!2947869 (is-Cons!70795 (exprs!8242 lt!2595329)))))

(assert (=> d!2263110 (= (derivationStepZipperUp!2572 lt!2595329 (h!77244 s!7854)) e!4360751)))

(declare-fun b!7272000 () Bool)

(assert (=> b!7272000 (= e!4360752 (nullable!8002 (h!77243 (exprs!8242 lt!2595329))))))

(declare-fun b!7272001 () Bool)

(assert (=> b!7272001 (= e!4360750 (as set.empty (Set Context!15484)))))

(assert (= (and d!2263110 res!2947869) b!7272000))

(assert (= (and d!2263110 c!1353831) b!7271999))

(assert (= (and d!2263110 (not c!1353831)) b!7271997))

(assert (= (and b!7271997 c!1353832) b!7271998))

(assert (= (and b!7271997 (not c!1353832)) b!7272001))

(assert (= (or b!7271999 b!7271998) bm!663383))

(declare-fun m!7958016 () Bool)

(assert (=> b!7271999 m!7958016))

(declare-fun m!7958018 () Bool)

(assert (=> bm!663383 m!7958018))

(declare-fun m!7958020 () Bool)

(assert (=> b!7272000 m!7958020))

(assert (=> b!7271903 d!2263110))

(declare-fun b!7272002 () Bool)

(declare-fun e!4360754 () (Set Context!15484))

(declare-fun e!4360753 () (Set Context!15484))

(assert (=> b!7272002 (= e!4360754 e!4360753)))

(declare-fun c!1353834 () Bool)

(assert (=> b!7272002 (= c!1353834 (is-Cons!70795 (exprs!8242 lt!2595315)))))

(declare-fun b!7272003 () Bool)

(declare-fun call!663389 () (Set Context!15484))

(assert (=> b!7272003 (= e!4360753 call!663389)))

(declare-fun b!7272004 () Bool)

(assert (=> b!7272004 (= e!4360754 (set.union call!663389 (derivationStepZipperUp!2572 (Context!15485 (t!384991 (exprs!8242 lt!2595315))) (h!77244 s!7854))))))

(declare-fun bm!663384 () Bool)

(assert (=> bm!663384 (= call!663389 (derivationStepZipperDown!2736 (h!77243 (exprs!8242 lt!2595315)) (Context!15485 (t!384991 (exprs!8242 lt!2595315))) (h!77244 s!7854)))))

(declare-fun d!2263112 () Bool)

(declare-fun c!1353833 () Bool)

(declare-fun e!4360755 () Bool)

(assert (=> d!2263112 (= c!1353833 e!4360755)))

(declare-fun res!2947870 () Bool)

(assert (=> d!2263112 (=> (not res!2947870) (not e!4360755))))

(assert (=> d!2263112 (= res!2947870 (is-Cons!70795 (exprs!8242 lt!2595315)))))

(assert (=> d!2263112 (= (derivationStepZipperUp!2572 lt!2595315 (h!77244 s!7854)) e!4360754)))

(declare-fun b!7272005 () Bool)

(assert (=> b!7272005 (= e!4360755 (nullable!8002 (h!77243 (exprs!8242 lt!2595315))))))

(declare-fun b!7272006 () Bool)

(assert (=> b!7272006 (= e!4360753 (as set.empty (Set Context!15484)))))

(assert (= (and d!2263112 res!2947870) b!7272005))

(assert (= (and d!2263112 c!1353833) b!7272004))

(assert (= (and d!2263112 (not c!1353833)) b!7272002))

(assert (= (and b!7272002 c!1353834) b!7272003))

(assert (= (and b!7272002 (not c!1353834)) b!7272006))

(assert (= (or b!7272004 b!7272003) bm!663384))

(declare-fun m!7958022 () Bool)

(assert (=> b!7272004 m!7958022))

(declare-fun m!7958024 () Bool)

(assert (=> bm!663384 m!7958024))

(declare-fun m!7958026 () Bool)

(assert (=> b!7272005 m!7958026))

(assert (=> b!7271897 d!2263112))

(declare-fun b!7272007 () Bool)

(declare-fun e!4360760 () (Set Context!15484))

(declare-fun e!4360758 () (Set Context!15484))

(assert (=> b!7272007 (= e!4360760 e!4360758)))

(declare-fun c!1353839 () Bool)

(assert (=> b!7272007 (= c!1353839 (is-Union!18802 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun b!7272008 () Bool)

(declare-fun e!4360761 () (Set Context!15484))

(declare-fun call!663392 () (Set Context!15484))

(assert (=> b!7272008 (= e!4360761 call!663392)))

(declare-fun c!1353835 () Bool)

(declare-fun bm!663386 () Bool)

(declare-fun c!1353837 () Bool)

(declare-fun call!663394 () List!70919)

(assert (=> bm!663386 (= call!663394 ($colon$colon!2976 (exprs!8242 lt!2595315) (ite (or c!1353835 c!1353837) (regTwo!38116 (h!77243 (exprs!8242 ct1!250))) (h!77243 (exprs!8242 ct1!250)))))))

(declare-fun bm!663387 () Bool)

(declare-fun call!663395 () (Set Context!15484))

(assert (=> bm!663387 (= call!663392 call!663395)))

(declare-fun b!7272009 () Bool)

(declare-fun e!4360756 () (Set Context!15484))

(declare-fun call!663390 () (Set Context!15484))

(assert (=> b!7272009 (= e!4360756 (set.union call!663390 call!663395))))

(declare-fun b!7272010 () Bool)

(declare-fun e!4360759 () (Set Context!15484))

(assert (=> b!7272010 (= e!4360756 e!4360759)))

(assert (=> b!7272010 (= c!1353837 (is-Concat!27647 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun bm!663388 () Bool)

(declare-fun call!663393 () (Set Context!15484))

(assert (=> bm!663388 (= call!663395 call!663393)))

(declare-fun bm!663389 () Bool)

(declare-fun call!663391 () List!70919)

(assert (=> bm!663389 (= call!663391 call!663394)))

(declare-fun b!7272011 () Bool)

(assert (=> b!7272011 (= e!4360760 (set.insert lt!2595315 (as set.empty (Set Context!15484))))))

(declare-fun bm!663390 () Bool)

(assert (=> bm!663390 (= call!663393 (derivationStepZipperDown!2736 (ite c!1353839 (regOne!38117 (h!77243 (exprs!8242 ct1!250))) (ite c!1353835 (regTwo!38116 (h!77243 (exprs!8242 ct1!250))) (ite c!1353837 (regOne!38116 (h!77243 (exprs!8242 ct1!250))) (reg!19131 (h!77243 (exprs!8242 ct1!250)))))) (ite (or c!1353839 c!1353835) lt!2595315 (Context!15485 call!663391)) (h!77244 s!7854)))))

(declare-fun b!7272012 () Bool)

(declare-fun c!1353836 () Bool)

(assert (=> b!7272012 (= c!1353836 (is-Star!18802 (h!77243 (exprs!8242 ct1!250))))))

(assert (=> b!7272012 (= e!4360759 e!4360761)))

(declare-fun b!7272013 () Bool)

(assert (=> b!7272013 (= e!4360759 call!663392)))

(declare-fun d!2263114 () Bool)

(declare-fun c!1353838 () Bool)

(assert (=> d!2263114 (= c!1353838 (and (is-ElementMatch!18802 (h!77243 (exprs!8242 ct1!250))) (= (c!1353804 (h!77243 (exprs!8242 ct1!250))) (h!77244 s!7854))))))

(assert (=> d!2263114 (= (derivationStepZipperDown!2736 (h!77243 (exprs!8242 ct1!250)) lt!2595315 (h!77244 s!7854)) e!4360760)))

(declare-fun bm!663385 () Bool)

(assert (=> bm!663385 (= call!663390 (derivationStepZipperDown!2736 (ite c!1353839 (regTwo!38117 (h!77243 (exprs!8242 ct1!250))) (regOne!38116 (h!77243 (exprs!8242 ct1!250)))) (ite c!1353839 lt!2595315 (Context!15485 call!663394)) (h!77244 s!7854)))))

(declare-fun b!7272014 () Bool)

(assert (=> b!7272014 (= e!4360761 (as set.empty (Set Context!15484)))))

(declare-fun b!7272015 () Bool)

(assert (=> b!7272015 (= e!4360758 (set.union call!663393 call!663390))))

(declare-fun b!7272016 () Bool)

(declare-fun e!4360757 () Bool)

(assert (=> b!7272016 (= e!4360757 (nullable!8002 (regOne!38116 (h!77243 (exprs!8242 ct1!250)))))))

(declare-fun b!7272017 () Bool)

(assert (=> b!7272017 (= c!1353835 e!4360757)))

(declare-fun res!2947871 () Bool)

(assert (=> b!7272017 (=> (not res!2947871) (not e!4360757))))

(assert (=> b!7272017 (= res!2947871 (is-Concat!27647 (h!77243 (exprs!8242 ct1!250))))))

(assert (=> b!7272017 (= e!4360758 e!4360756)))

(assert (= (and d!2263114 c!1353838) b!7272011))

(assert (= (and d!2263114 (not c!1353838)) b!7272007))

(assert (= (and b!7272007 c!1353839) b!7272015))

(assert (= (and b!7272007 (not c!1353839)) b!7272017))

(assert (= (and b!7272017 res!2947871) b!7272016))

(assert (= (and b!7272017 c!1353835) b!7272009))

(assert (= (and b!7272017 (not c!1353835)) b!7272010))

(assert (= (and b!7272010 c!1353837) b!7272013))

(assert (= (and b!7272010 (not c!1353837)) b!7272012))

(assert (= (and b!7272012 c!1353836) b!7272008))

(assert (= (and b!7272012 (not c!1353836)) b!7272014))

(assert (= (or b!7272013 b!7272008) bm!663389))

(assert (= (or b!7272013 b!7272008) bm!663387))

(assert (= (or b!7272009 bm!663389) bm!663386))

(assert (= (or b!7272009 bm!663387) bm!663388))

(assert (= (or b!7272015 bm!663388) bm!663390))

(assert (= (or b!7272015 b!7272009) bm!663385))

(declare-fun m!7958028 () Bool)

(assert (=> bm!663390 m!7958028))

(declare-fun m!7958030 () Bool)

(assert (=> bm!663386 m!7958030))

(assert (=> b!7272011 m!7957898))

(assert (=> b!7272016 m!7958012))

(declare-fun m!7958032 () Bool)

(assert (=> bm!663385 m!7958032))

(assert (=> b!7271897 d!2263114))

(declare-fun d!2263116 () Bool)

(assert (=> d!2263116 (forall!17631 (++!16702 lt!2595313 (exprs!8242 ct2!346)) lambda!448838)))

(declare-fun lt!2595434 () Unit!164222)

(declare-fun choose!56418 (List!70919 List!70919 Int) Unit!164222)

(assert (=> d!2263116 (= lt!2595434 (choose!56418 lt!2595313 (exprs!8242 ct2!346) lambda!448838))))

(assert (=> d!2263116 (forall!17631 lt!2595313 lambda!448838)))

(assert (=> d!2263116 (= (lemmaConcatPreservesForall!1559 lt!2595313 (exprs!8242 ct2!346) lambda!448838) lt!2595434)))

(declare-fun bs!1911257 () Bool)

(assert (= bs!1911257 d!2263116))

(assert (=> bs!1911257 m!7957922))

(assert (=> bs!1911257 m!7957922))

(declare-fun m!7958034 () Bool)

(assert (=> bs!1911257 m!7958034))

(declare-fun m!7958036 () Bool)

(assert (=> bs!1911257 m!7958036))

(declare-fun m!7958038 () Bool)

(assert (=> bs!1911257 m!7958038))

(assert (=> b!7271897 d!2263116))

(declare-fun b!7272028 () Bool)

(declare-fun res!2947876 () Bool)

(declare-fun e!4360766 () Bool)

(assert (=> b!7272028 (=> (not res!2947876) (not e!4360766))))

(declare-fun lt!2595437 () List!70919)

(declare-fun size!41827 (List!70919) Int)

(assert (=> b!7272028 (= res!2947876 (= (size!41827 lt!2595437) (+ (size!41827 lt!2595313) (size!41827 (exprs!8242 ct2!346)))))))

(declare-fun b!7272026 () Bool)

(declare-fun e!4360767 () List!70919)

(assert (=> b!7272026 (= e!4360767 (exprs!8242 ct2!346))))

(declare-fun b!7272029 () Bool)

(assert (=> b!7272029 (= e!4360766 (or (not (= (exprs!8242 ct2!346) Nil!70795)) (= lt!2595437 lt!2595313)))))

(declare-fun d!2263118 () Bool)

(assert (=> d!2263118 e!4360766))

(declare-fun res!2947877 () Bool)

(assert (=> d!2263118 (=> (not res!2947877) (not e!4360766))))

(declare-fun content!14779 (List!70919) (Set Regex!18802))

(assert (=> d!2263118 (= res!2947877 (= (content!14779 lt!2595437) (set.union (content!14779 lt!2595313) (content!14779 (exprs!8242 ct2!346)))))))

(assert (=> d!2263118 (= lt!2595437 e!4360767)))

(declare-fun c!1353842 () Bool)

(assert (=> d!2263118 (= c!1353842 (is-Nil!70795 lt!2595313))))

(assert (=> d!2263118 (= (++!16702 lt!2595313 (exprs!8242 ct2!346)) lt!2595437)))

(declare-fun b!7272027 () Bool)

(assert (=> b!7272027 (= e!4360767 (Cons!70795 (h!77243 lt!2595313) (++!16702 (t!384991 lt!2595313) (exprs!8242 ct2!346))))))

(assert (= (and d!2263118 c!1353842) b!7272026))

(assert (= (and d!2263118 (not c!1353842)) b!7272027))

(assert (= (and d!2263118 res!2947877) b!7272028))

(assert (= (and b!7272028 res!2947876) b!7272029))

(declare-fun m!7958040 () Bool)

(assert (=> b!7272028 m!7958040))

(declare-fun m!7958042 () Bool)

(assert (=> b!7272028 m!7958042))

(declare-fun m!7958044 () Bool)

(assert (=> b!7272028 m!7958044))

(declare-fun m!7958046 () Bool)

(assert (=> d!2263118 m!7958046))

(declare-fun m!7958048 () Bool)

(assert (=> d!2263118 m!7958048))

(declare-fun m!7958050 () Bool)

(assert (=> d!2263118 m!7958050))

(declare-fun m!7958052 () Bool)

(assert (=> b!7272027 m!7958052))

(assert (=> b!7271897 d!2263118))

(declare-fun bs!1911258 () Bool)

(declare-fun d!2263120 () Bool)

(assert (= bs!1911258 (and d!2263120 b!7271904)))

(declare-fun lambda!448878 () Int)

(assert (=> bs!1911258 (not (= lambda!448878 lambda!448838))))

(assert (=> d!2263120 (= (nullableContext!292 ct1!250) (forall!17631 (exprs!8242 ct1!250) lambda!448878))))

(declare-fun bs!1911259 () Bool)

(assert (= bs!1911259 d!2263120))

(declare-fun m!7958054 () Bool)

(assert (=> bs!1911259 m!7958054))

(assert (=> b!7271907 d!2263120))

(declare-fun d!2263122 () Bool)

(declare-fun c!1353846 () Bool)

(declare-fun isEmpty!40722 (List!70920) Bool)

(assert (=> d!2263122 (= c!1353846 (isEmpty!40722 (t!384992 s!7854)))))

(declare-fun e!4360770 () Bool)

(assert (=> d!2263122 (= (matchZipper!3706 lt!2595322 (t!384992 s!7854)) e!4360770)))

(declare-fun b!7272034 () Bool)

(declare-fun nullableZipper!3008 ((Set Context!15484)) Bool)

(assert (=> b!7272034 (= e!4360770 (nullableZipper!3008 lt!2595322))))

(declare-fun b!7272035 () Bool)

(declare-fun head!15006 (List!70920) C!37878)

(declare-fun tail!14509 (List!70920) List!70920)

(assert (=> b!7272035 (= e!4360770 (matchZipper!3706 (derivationStepZipper!3542 lt!2595322 (head!15006 (t!384992 s!7854))) (tail!14509 (t!384992 s!7854))))))

(assert (= (and d!2263122 c!1353846) b!7272034))

(assert (= (and d!2263122 (not c!1353846)) b!7272035))

(declare-fun m!7958056 () Bool)

(assert (=> d!2263122 m!7958056))

(declare-fun m!7958058 () Bool)

(assert (=> b!7272034 m!7958058))

(declare-fun m!7958060 () Bool)

(assert (=> b!7272035 m!7958060))

(assert (=> b!7272035 m!7958060))

(declare-fun m!7958062 () Bool)

(assert (=> b!7272035 m!7958062))

(declare-fun m!7958064 () Bool)

(assert (=> b!7272035 m!7958064))

(assert (=> b!7272035 m!7958062))

(assert (=> b!7272035 m!7958064))

(declare-fun m!7958066 () Bool)

(assert (=> b!7272035 m!7958066))

(assert (=> b!7271902 d!2263122))

(declare-fun d!2263124 () Bool)

(declare-fun c!1353847 () Bool)

(assert (=> d!2263124 (= c!1353847 (isEmpty!40722 (t!384992 s!7854)))))

(declare-fun e!4360771 () Bool)

(assert (=> d!2263124 (= (matchZipper!3706 lt!2595326 (t!384992 s!7854)) e!4360771)))

(declare-fun b!7272036 () Bool)

(assert (=> b!7272036 (= e!4360771 (nullableZipper!3008 lt!2595326))))

(declare-fun b!7272037 () Bool)

(assert (=> b!7272037 (= e!4360771 (matchZipper!3706 (derivationStepZipper!3542 lt!2595326 (head!15006 (t!384992 s!7854))) (tail!14509 (t!384992 s!7854))))))

(assert (= (and d!2263124 c!1353847) b!7272036))

(assert (= (and d!2263124 (not c!1353847)) b!7272037))

(assert (=> d!2263124 m!7958056))

(declare-fun m!7958068 () Bool)

(assert (=> b!7272036 m!7958068))

(assert (=> b!7272037 m!7958060))

(assert (=> b!7272037 m!7958060))

(declare-fun m!7958070 () Bool)

(assert (=> b!7272037 m!7958070))

(assert (=> b!7272037 m!7958064))

(assert (=> b!7272037 m!7958070))

(assert (=> b!7272037 m!7958064))

(declare-fun m!7958072 () Bool)

(assert (=> b!7272037 m!7958072))

(assert (=> b!7271902 d!2263124))

(assert (=> b!7271902 d!2263116))

(declare-fun d!2263126 () Bool)

(declare-fun res!2947882 () Bool)

(declare-fun e!4360776 () Bool)

(assert (=> d!2263126 (=> res!2947882 e!4360776)))

(assert (=> d!2263126 (= res!2947882 (is-Nil!70795 (exprs!8242 ct1!250)))))

(assert (=> d!2263126 (= (forall!17631 (exprs!8242 ct1!250) lambda!448838) e!4360776)))

(declare-fun b!7272042 () Bool)

(declare-fun e!4360777 () Bool)

(assert (=> b!7272042 (= e!4360776 e!4360777)))

(declare-fun res!2947883 () Bool)

(assert (=> b!7272042 (=> (not res!2947883) (not e!4360777))))

(declare-fun dynLambda!28940 (Int Regex!18802) Bool)

(assert (=> b!7272042 (= res!2947883 (dynLambda!28940 lambda!448838 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun b!7272043 () Bool)

(assert (=> b!7272043 (= e!4360777 (forall!17631 (t!384991 (exprs!8242 ct1!250)) lambda!448838))))

(assert (= (and d!2263126 (not res!2947882)) b!7272042))

(assert (= (and b!7272042 res!2947883) b!7272043))

(declare-fun b_lambda!280397 () Bool)

(assert (=> (not b_lambda!280397) (not b!7272042)))

(declare-fun m!7958074 () Bool)

(assert (=> b!7272042 m!7958074))

(declare-fun m!7958076 () Bool)

(assert (=> b!7272043 m!7958076))

(assert (=> b!7271902 d!2263126))

(declare-fun e!4360780 () Bool)

(declare-fun d!2263128 () Bool)

(assert (=> d!2263128 (= (matchZipper!3706 (set.union lt!2595322 lt!2595317) (t!384992 s!7854)) e!4360780)))

(declare-fun res!2947886 () Bool)

(assert (=> d!2263128 (=> res!2947886 e!4360780)))

(assert (=> d!2263128 (= res!2947886 (matchZipper!3706 lt!2595322 (t!384992 s!7854)))))

(declare-fun lt!2595440 () Unit!164222)

(declare-fun choose!56419 ((Set Context!15484) (Set Context!15484) List!70920) Unit!164222)

(assert (=> d!2263128 (= lt!2595440 (choose!56419 lt!2595322 lt!2595317 (t!384992 s!7854)))))

(assert (=> d!2263128 (= (lemmaZipperConcatMatchesSameAsBothZippers!1775 lt!2595322 lt!2595317 (t!384992 s!7854)) lt!2595440)))

(declare-fun b!7272046 () Bool)

(assert (=> b!7272046 (= e!4360780 (matchZipper!3706 lt!2595317 (t!384992 s!7854)))))

(assert (= (and d!2263128 (not res!2947886)) b!7272046))

(declare-fun m!7958078 () Bool)

(assert (=> d!2263128 m!7958078))

(assert (=> d!2263128 m!7957930))

(declare-fun m!7958080 () Bool)

(assert (=> d!2263128 m!7958080))

(assert (=> b!7272046 m!7957904))

(assert (=> b!7271902 d!2263128))

(declare-fun d!2263130 () Bool)

(assert (=> d!2263130 (= (isEmpty!40720 (exprs!8242 ct1!250)) (is-Nil!70795 (exprs!8242 ct1!250)))))

(assert (=> b!7271901 d!2263130))

(assert (=> b!7271896 d!2263112))

(declare-fun d!2263132 () Bool)

(declare-fun choose!56420 ((Set Context!15484) Int) (Set Context!15484))

(assert (=> d!2263132 (= (flatMap!2915 lt!2595324 lambda!448839) (choose!56420 lt!2595324 lambda!448839))))

(declare-fun bs!1911260 () Bool)

(assert (= bs!1911260 d!2263132))

(declare-fun m!7958082 () Bool)

(assert (=> bs!1911260 m!7958082))

(assert (=> b!7271896 d!2263132))

(assert (=> b!7271896 d!2263116))

(declare-fun d!2263134 () Bool)

(declare-fun c!1353848 () Bool)

(assert (=> d!2263134 (= c!1353848 (isEmpty!40722 (t!384992 s!7854)))))

(declare-fun e!4360781 () Bool)

(assert (=> d!2263134 (= (matchZipper!3706 lt!2595317 (t!384992 s!7854)) e!4360781)))

(declare-fun b!7272047 () Bool)

(assert (=> b!7272047 (= e!4360781 (nullableZipper!3008 lt!2595317))))

(declare-fun b!7272048 () Bool)

(assert (=> b!7272048 (= e!4360781 (matchZipper!3706 (derivationStepZipper!3542 lt!2595317 (head!15006 (t!384992 s!7854))) (tail!14509 (t!384992 s!7854))))))

(assert (= (and d!2263134 c!1353848) b!7272047))

(assert (= (and d!2263134 (not c!1353848)) b!7272048))

(assert (=> d!2263134 m!7958056))

(declare-fun m!7958084 () Bool)

(assert (=> b!7272047 m!7958084))

(assert (=> b!7272048 m!7958060))

(assert (=> b!7272048 m!7958060))

(declare-fun m!7958086 () Bool)

(assert (=> b!7272048 m!7958086))

(assert (=> b!7272048 m!7958064))

(assert (=> b!7272048 m!7958086))

(assert (=> b!7272048 m!7958064))

(declare-fun m!7958088 () Bool)

(assert (=> b!7272048 m!7958088))

(assert (=> b!7271896 d!2263134))

(declare-fun d!2263136 () Bool)

(declare-fun c!1353849 () Bool)

(assert (=> d!2263136 (= c!1353849 (isEmpty!40722 s!7854))))

(declare-fun e!4360782 () Bool)

(assert (=> d!2263136 (= (matchZipper!3706 lt!2595324 s!7854) e!4360782)))

(declare-fun b!7272049 () Bool)

(assert (=> b!7272049 (= e!4360782 (nullableZipper!3008 lt!2595324))))

(declare-fun b!7272050 () Bool)

(assert (=> b!7272050 (= e!4360782 (matchZipper!3706 (derivationStepZipper!3542 lt!2595324 (head!15006 s!7854)) (tail!14509 s!7854)))))

(assert (= (and d!2263136 c!1353849) b!7272049))

(assert (= (and d!2263136 (not c!1353849)) b!7272050))

(declare-fun m!7958090 () Bool)

(assert (=> d!2263136 m!7958090))

(declare-fun m!7958092 () Bool)

(assert (=> b!7272049 m!7958092))

(declare-fun m!7958094 () Bool)

(assert (=> b!7272050 m!7958094))

(assert (=> b!7272050 m!7958094))

(declare-fun m!7958096 () Bool)

(assert (=> b!7272050 m!7958096))

(declare-fun m!7958098 () Bool)

(assert (=> b!7272050 m!7958098))

(assert (=> b!7272050 m!7958096))

(assert (=> b!7272050 m!7958098))

(declare-fun m!7958100 () Bool)

(assert (=> b!7272050 m!7958100))

(assert (=> b!7271896 d!2263136))

(declare-fun bs!1911261 () Bool)

(declare-fun d!2263138 () Bool)

(assert (= bs!1911261 (and d!2263138 b!7271904)))

(declare-fun lambda!448881 () Int)

(assert (=> bs!1911261 (= lambda!448881 lambda!448838)))

(declare-fun bs!1911262 () Bool)

(assert (= bs!1911262 (and d!2263138 d!2263120)))

(assert (=> bs!1911262 (not (= lambda!448881 lambda!448878))))

(assert (=> d!2263138 (matchZipper!3706 (set.insert (Context!15485 (++!16702 (exprs!8242 lt!2595329) (exprs!8242 ct2!346))) (as set.empty (Set Context!15484))) s!7854)))

(declare-fun lt!2595446 () Unit!164222)

(assert (=> d!2263138 (= lt!2595446 (lemmaConcatPreservesForall!1559 (exprs!8242 lt!2595329) (exprs!8242 ct2!346) lambda!448881))))

(declare-fun lt!2595445 () Unit!164222)

(declare-fun choose!56421 (Context!15484 Context!15484 List!70920) Unit!164222)

(assert (=> d!2263138 (= lt!2595445 (choose!56421 lt!2595329 ct2!346 s!7854))))

(assert (=> d!2263138 (matchZipper!3706 (set.insert ct2!346 (as set.empty (Set Context!15484))) s!7854)))

(assert (=> d!2263138 (= (lemmaPrependingNullableCtxStillMatches!39 lt!2595329 ct2!346 s!7854) lt!2595445)))

(declare-fun bs!1911263 () Bool)

(assert (= bs!1911263 d!2263138))

(declare-fun m!7958102 () Bool)

(assert (=> bs!1911263 m!7958102))

(declare-fun m!7958104 () Bool)

(assert (=> bs!1911263 m!7958104))

(assert (=> bs!1911263 m!7957912))

(assert (=> bs!1911263 m!7957914))

(declare-fun m!7958106 () Bool)

(assert (=> bs!1911263 m!7958106))

(declare-fun m!7958108 () Bool)

(assert (=> bs!1911263 m!7958108))

(declare-fun m!7958110 () Bool)

(assert (=> bs!1911263 m!7958110))

(assert (=> bs!1911263 m!7957912))

(assert (=> bs!1911263 m!7958102))

(assert (=> b!7271896 d!2263138))

(declare-fun d!2263140 () Bool)

(declare-fun dynLambda!28941 (Int Context!15484) (Set Context!15484))

(assert (=> d!2263140 (= (flatMap!2915 lt!2595324 lambda!448839) (dynLambda!28941 lambda!448839 lt!2595315))))

(declare-fun lt!2595449 () Unit!164222)

(declare-fun choose!56422 ((Set Context!15484) Context!15484 Int) Unit!164222)

(assert (=> d!2263140 (= lt!2595449 (choose!56422 lt!2595324 lt!2595315 lambda!448839))))

(assert (=> d!2263140 (= lt!2595324 (set.insert lt!2595315 (as set.empty (Set Context!15484))))))

(assert (=> d!2263140 (= (lemmaFlatMapOnSingletonSet!2315 lt!2595324 lt!2595315 lambda!448839) lt!2595449)))

(declare-fun b_lambda!280399 () Bool)

(assert (=> (not b_lambda!280399) (not d!2263140)))

(declare-fun bs!1911264 () Bool)

(assert (= bs!1911264 d!2263140))

(assert (=> bs!1911264 m!7957894))

(declare-fun m!7958112 () Bool)

(assert (=> bs!1911264 m!7958112))

(declare-fun m!7958114 () Bool)

(assert (=> bs!1911264 m!7958114))

(assert (=> bs!1911264 m!7957898))

(assert (=> b!7271896 d!2263140))

(declare-fun d!2263142 () Bool)

(declare-fun res!2947887 () Bool)

(declare-fun e!4360783 () Bool)

(assert (=> d!2263142 (=> res!2947887 e!4360783)))

(assert (=> d!2263142 (= res!2947887 (is-Nil!70795 (exprs!8242 ct2!346)))))

(assert (=> d!2263142 (= (forall!17631 (exprs!8242 ct2!346) lambda!448838) e!4360783)))

(declare-fun b!7272051 () Bool)

(declare-fun e!4360784 () Bool)

(assert (=> b!7272051 (= e!4360783 e!4360784)))

(declare-fun res!2947888 () Bool)

(assert (=> b!7272051 (=> (not res!2947888) (not e!4360784))))

(assert (=> b!7272051 (= res!2947888 (dynLambda!28940 lambda!448838 (h!77243 (exprs!8242 ct2!346))))))

(declare-fun b!7272052 () Bool)

(assert (=> b!7272052 (= e!4360784 (forall!17631 (t!384991 (exprs!8242 ct2!346)) lambda!448838))))

(assert (= (and d!2263142 (not res!2947887)) b!7272051))

(assert (= (and b!7272051 res!2947888) b!7272052))

(declare-fun b_lambda!280401 () Bool)

(assert (=> (not b_lambda!280401) (not b!7272051)))

(declare-fun m!7958116 () Bool)

(assert (=> b!7272051 m!7958116))

(declare-fun m!7958118 () Bool)

(assert (=> b!7272052 m!7958118))

(assert (=> b!7271906 d!2263142))

(declare-fun d!2263144 () Bool)

(declare-fun nullableFct!3160 (Regex!18802) Bool)

(assert (=> d!2263144 (= (nullable!8002 (h!77243 (exprs!8242 ct1!250))) (nullableFct!3160 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun bs!1911265 () Bool)

(assert (= bs!1911265 d!2263144))

(declare-fun m!7958120 () Bool)

(assert (=> bs!1911265 m!7958120))

(assert (=> b!7271899 d!2263144))

(declare-fun b!7272053 () Bool)

(declare-fun e!4360786 () (Set Context!15484))

(declare-fun e!4360785 () (Set Context!15484))

(assert (=> b!7272053 (= e!4360786 e!4360785)))

(declare-fun c!1353851 () Bool)

(assert (=> b!7272053 (= c!1353851 (is-Cons!70795 (exprs!8242 ct1!250)))))

(declare-fun b!7272054 () Bool)

(declare-fun call!663396 () (Set Context!15484))

(assert (=> b!7272054 (= e!4360785 call!663396)))

(declare-fun b!7272055 () Bool)

(assert (=> b!7272055 (= e!4360786 (set.union call!663396 (derivationStepZipperUp!2572 (Context!15485 (t!384991 (exprs!8242 ct1!250))) (h!77244 s!7854))))))

(declare-fun bm!663391 () Bool)

(assert (=> bm!663391 (= call!663396 (derivationStepZipperDown!2736 (h!77243 (exprs!8242 ct1!250)) (Context!15485 (t!384991 (exprs!8242 ct1!250))) (h!77244 s!7854)))))

(declare-fun d!2263146 () Bool)

(declare-fun c!1353850 () Bool)

(declare-fun e!4360787 () Bool)

(assert (=> d!2263146 (= c!1353850 e!4360787)))

(declare-fun res!2947889 () Bool)

(assert (=> d!2263146 (=> (not res!2947889) (not e!4360787))))

(assert (=> d!2263146 (= res!2947889 (is-Cons!70795 (exprs!8242 ct1!250)))))

(assert (=> d!2263146 (= (derivationStepZipperUp!2572 ct1!250 (h!77244 s!7854)) e!4360786)))

(declare-fun b!7272056 () Bool)

(assert (=> b!7272056 (= e!4360787 (nullable!8002 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun b!7272057 () Bool)

(assert (=> b!7272057 (= e!4360785 (as set.empty (Set Context!15484)))))

(assert (= (and d!2263146 res!2947889) b!7272056))

(assert (= (and d!2263146 c!1353850) b!7272055))

(assert (= (and d!2263146 (not c!1353850)) b!7272053))

(assert (= (and b!7272053 c!1353851) b!7272054))

(assert (= (and b!7272053 (not c!1353851)) b!7272057))

(assert (= (or b!7272055 b!7272054) bm!663391))

(declare-fun m!7958122 () Bool)

(assert (=> b!7272055 m!7958122))

(declare-fun m!7958124 () Bool)

(assert (=> bm!663391 m!7958124))

(assert (=> b!7272056 m!7957908))

(assert (=> b!7271899 d!2263146))

(declare-fun d!2263148 () Bool)

(assert (=> d!2263148 (= (tail!14507 (exprs!8242 ct1!250)) (t!384991 (exprs!8242 ct1!250)))))

(assert (=> b!7271899 d!2263148))

(declare-fun d!2263150 () Bool)

(declare-fun c!1353852 () Bool)

(assert (=> d!2263150 (= c!1353852 (isEmpty!40722 s!7854))))

(declare-fun e!4360788 () Bool)

(assert (=> d!2263150 (= (matchZipper!3706 (set.insert ct2!346 (as set.empty (Set Context!15484))) s!7854) e!4360788)))

(declare-fun b!7272058 () Bool)

(assert (=> b!7272058 (= e!4360788 (nullableZipper!3008 (set.insert ct2!346 (as set.empty (Set Context!15484)))))))

(declare-fun b!7272059 () Bool)

(assert (=> b!7272059 (= e!4360788 (matchZipper!3706 (derivationStepZipper!3542 (set.insert ct2!346 (as set.empty (Set Context!15484))) (head!15006 s!7854)) (tail!14509 s!7854)))))

(assert (= (and d!2263150 c!1353852) b!7272058))

(assert (= (and d!2263150 (not c!1353852)) b!7272059))

(assert (=> d!2263150 m!7958090))

(assert (=> b!7272058 m!7957912))

(declare-fun m!7958126 () Bool)

(assert (=> b!7272058 m!7958126))

(assert (=> b!7272059 m!7958094))

(assert (=> b!7272059 m!7957912))

(assert (=> b!7272059 m!7958094))

(declare-fun m!7958128 () Bool)

(assert (=> b!7272059 m!7958128))

(assert (=> b!7272059 m!7958098))

(assert (=> b!7272059 m!7958128))

(assert (=> b!7272059 m!7958098))

(declare-fun m!7958130 () Bool)

(assert (=> b!7272059 m!7958130))

(assert (=> start!709724 d!2263150))

(declare-fun bs!1911266 () Bool)

(declare-fun d!2263152 () Bool)

(assert (= bs!1911266 (and d!2263152 b!7271904)))

(declare-fun lambda!448884 () Int)

(assert (=> bs!1911266 (= lambda!448884 lambda!448838)))

(declare-fun bs!1911267 () Bool)

(assert (= bs!1911267 (and d!2263152 d!2263120)))

(assert (=> bs!1911267 (not (= lambda!448884 lambda!448878))))

(declare-fun bs!1911268 () Bool)

(assert (= bs!1911268 (and d!2263152 d!2263138)))

(assert (=> bs!1911268 (= lambda!448884 lambda!448881)))

(assert (=> d!2263152 (= (inv!90016 ct2!346) (forall!17631 (exprs!8242 ct2!346) lambda!448884))))

(declare-fun bs!1911269 () Bool)

(assert (= bs!1911269 d!2263152))

(declare-fun m!7958132 () Bool)

(assert (=> bs!1911269 m!7958132))

(assert (=> start!709724 d!2263152))

(declare-fun bs!1911270 () Bool)

(declare-fun d!2263154 () Bool)

(assert (= bs!1911270 (and d!2263154 b!7271904)))

(declare-fun lambda!448885 () Int)

(assert (=> bs!1911270 (= lambda!448885 lambda!448838)))

(declare-fun bs!1911271 () Bool)

(assert (= bs!1911271 (and d!2263154 d!2263120)))

(assert (=> bs!1911271 (not (= lambda!448885 lambda!448878))))

(declare-fun bs!1911272 () Bool)

(assert (= bs!1911272 (and d!2263154 d!2263138)))

(assert (=> bs!1911272 (= lambda!448885 lambda!448881)))

(declare-fun bs!1911273 () Bool)

(assert (= bs!1911273 (and d!2263154 d!2263152)))

(assert (=> bs!1911273 (= lambda!448885 lambda!448884)))

(assert (=> d!2263154 (= (inv!90016 ct1!250) (forall!17631 (exprs!8242 ct1!250) lambda!448885))))

(declare-fun bs!1911274 () Bool)

(assert (= bs!1911274 d!2263154))

(declare-fun m!7958134 () Bool)

(assert (=> bs!1911274 m!7958134))

(assert (=> start!709724 d!2263154))

(declare-fun d!2263156 () Bool)

(assert (=> d!2263156 (= (flatMap!2915 lt!2595338 lambda!448839) (choose!56420 lt!2595338 lambda!448839))))

(declare-fun bs!1911275 () Bool)

(assert (= bs!1911275 d!2263156))

(declare-fun m!7958136 () Bool)

(assert (=> bs!1911275 m!7958136))

(assert (=> b!7271904 d!2263156))

(assert (=> b!7271904 d!2263146))

(declare-fun d!2263158 () Bool)

(assert (=> d!2263158 (forall!17631 (++!16702 (exprs!8242 ct1!250) (exprs!8242 ct2!346)) lambda!448838)))

(declare-fun lt!2595450 () Unit!164222)

(assert (=> d!2263158 (= lt!2595450 (choose!56418 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838))))

(assert (=> d!2263158 (forall!17631 (exprs!8242 ct1!250) lambda!448838)))

(assert (=> d!2263158 (= (lemmaConcatPreservesForall!1559 (exprs!8242 ct1!250) (exprs!8242 ct2!346) lambda!448838) lt!2595450)))

(declare-fun bs!1911276 () Bool)

(assert (= bs!1911276 d!2263158))

(assert (=> bs!1911276 m!7957882))

(assert (=> bs!1911276 m!7957882))

(declare-fun m!7958138 () Bool)

(assert (=> bs!1911276 m!7958138))

(declare-fun m!7958140 () Bool)

(assert (=> bs!1911276 m!7958140))

(assert (=> bs!1911276 m!7957926))

(assert (=> b!7271904 d!2263158))

(declare-fun d!2263160 () Bool)

(assert (=> d!2263160 (= (flatMap!2915 lt!2595335 lambda!448839) (dynLambda!28941 lambda!448839 ct1!250))))

(declare-fun lt!2595451 () Unit!164222)

(assert (=> d!2263160 (= lt!2595451 (choose!56422 lt!2595335 ct1!250 lambda!448839))))

(assert (=> d!2263160 (= lt!2595335 (set.insert ct1!250 (as set.empty (Set Context!15484))))))

(assert (=> d!2263160 (= (lemmaFlatMapOnSingletonSet!2315 lt!2595335 ct1!250 lambda!448839) lt!2595451)))

(declare-fun b_lambda!280403 () Bool)

(assert (=> (not b_lambda!280403) (not d!2263160)))

(declare-fun bs!1911277 () Bool)

(assert (= bs!1911277 d!2263160))

(assert (=> bs!1911277 m!7957880))

(declare-fun m!7958142 () Bool)

(assert (=> bs!1911277 m!7958142))

(declare-fun m!7958144 () Bool)

(assert (=> bs!1911277 m!7958144))

(assert (=> bs!1911277 m!7957878))

(assert (=> b!7271904 d!2263160))

(declare-fun d!2263162 () Bool)

(assert (=> d!2263162 (= (flatMap!2915 lt!2595335 lambda!448839) (choose!56420 lt!2595335 lambda!448839))))

(declare-fun bs!1911278 () Bool)

(assert (= bs!1911278 d!2263162))

(declare-fun m!7958146 () Bool)

(assert (=> bs!1911278 m!7958146))

(assert (=> b!7271904 d!2263162))

(declare-fun d!2263164 () Bool)

(assert (=> d!2263164 (= (flatMap!2915 lt!2595338 lambda!448839) (dynLambda!28941 lambda!448839 lt!2595321))))

(declare-fun lt!2595452 () Unit!164222)

(assert (=> d!2263164 (= lt!2595452 (choose!56422 lt!2595338 lt!2595321 lambda!448839))))

(assert (=> d!2263164 (= lt!2595338 (set.insert lt!2595321 (as set.empty (Set Context!15484))))))

(assert (=> d!2263164 (= (lemmaFlatMapOnSingletonSet!2315 lt!2595338 lt!2595321 lambda!448839) lt!2595452)))

(declare-fun b_lambda!280405 () Bool)

(assert (=> (not b_lambda!280405) (not d!2263164)))

(declare-fun bs!1911279 () Bool)

(assert (= bs!1911279 d!2263164))

(assert (=> bs!1911279 m!7957886))

(declare-fun m!7958148 () Bool)

(assert (=> bs!1911279 m!7958148))

(declare-fun m!7958150 () Bool)

(assert (=> bs!1911279 m!7958150))

(assert (=> bs!1911279 m!7957872))

(assert (=> b!7271904 d!2263164))

(declare-fun b!7272060 () Bool)

(declare-fun e!4360790 () (Set Context!15484))

(declare-fun e!4360789 () (Set Context!15484))

(assert (=> b!7272060 (= e!4360790 e!4360789)))

(declare-fun c!1353854 () Bool)

(assert (=> b!7272060 (= c!1353854 (is-Cons!70795 (exprs!8242 lt!2595321)))))

(declare-fun b!7272061 () Bool)

(declare-fun call!663397 () (Set Context!15484))

(assert (=> b!7272061 (= e!4360789 call!663397)))

(declare-fun b!7272062 () Bool)

(assert (=> b!7272062 (= e!4360790 (set.union call!663397 (derivationStepZipperUp!2572 (Context!15485 (t!384991 (exprs!8242 lt!2595321))) (h!77244 s!7854))))))

(declare-fun bm!663392 () Bool)

(assert (=> bm!663392 (= call!663397 (derivationStepZipperDown!2736 (h!77243 (exprs!8242 lt!2595321)) (Context!15485 (t!384991 (exprs!8242 lt!2595321))) (h!77244 s!7854)))))

(declare-fun d!2263166 () Bool)

(declare-fun c!1353853 () Bool)

(declare-fun e!4360791 () Bool)

(assert (=> d!2263166 (= c!1353853 e!4360791)))

(declare-fun res!2947890 () Bool)

(assert (=> d!2263166 (=> (not res!2947890) (not e!4360791))))

(assert (=> d!2263166 (= res!2947890 (is-Cons!70795 (exprs!8242 lt!2595321)))))

(assert (=> d!2263166 (= (derivationStepZipperUp!2572 lt!2595321 (h!77244 s!7854)) e!4360790)))

(declare-fun b!7272063 () Bool)

(assert (=> b!7272063 (= e!4360791 (nullable!8002 (h!77243 (exprs!8242 lt!2595321))))))

(declare-fun b!7272064 () Bool)

(assert (=> b!7272064 (= e!4360789 (as set.empty (Set Context!15484)))))

(assert (= (and d!2263166 res!2947890) b!7272063))

(assert (= (and d!2263166 c!1353853) b!7272062))

(assert (= (and d!2263166 (not c!1353853)) b!7272060))

(assert (= (and b!7272060 c!1353854) b!7272061))

(assert (= (and b!7272060 (not c!1353854)) b!7272064))

(assert (= (or b!7272062 b!7272061) bm!663392))

(declare-fun m!7958152 () Bool)

(assert (=> b!7272062 m!7958152))

(declare-fun m!7958154 () Bool)

(assert (=> bm!663392 m!7958154))

(declare-fun m!7958156 () Bool)

(assert (=> b!7272063 m!7958156))

(assert (=> b!7271904 d!2263166))

(declare-fun b!7272067 () Bool)

(declare-fun res!2947891 () Bool)

(declare-fun e!4360792 () Bool)

(assert (=> b!7272067 (=> (not res!2947891) (not e!4360792))))

(declare-fun lt!2595453 () List!70919)

(assert (=> b!7272067 (= res!2947891 (= (size!41827 lt!2595453) (+ (size!41827 (exprs!8242 ct1!250)) (size!41827 (exprs!8242 ct2!346)))))))

(declare-fun b!7272065 () Bool)

(declare-fun e!4360793 () List!70919)

(assert (=> b!7272065 (= e!4360793 (exprs!8242 ct2!346))))

(declare-fun b!7272068 () Bool)

(assert (=> b!7272068 (= e!4360792 (or (not (= (exprs!8242 ct2!346) Nil!70795)) (= lt!2595453 (exprs!8242 ct1!250))))))

(declare-fun d!2263168 () Bool)

(assert (=> d!2263168 e!4360792))

(declare-fun res!2947892 () Bool)

(assert (=> d!2263168 (=> (not res!2947892) (not e!4360792))))

(assert (=> d!2263168 (= res!2947892 (= (content!14779 lt!2595453) (set.union (content!14779 (exprs!8242 ct1!250)) (content!14779 (exprs!8242 ct2!346)))))))

(assert (=> d!2263168 (= lt!2595453 e!4360793)))

(declare-fun c!1353855 () Bool)

(assert (=> d!2263168 (= c!1353855 (is-Nil!70795 (exprs!8242 ct1!250)))))

(assert (=> d!2263168 (= (++!16702 (exprs!8242 ct1!250) (exprs!8242 ct2!346)) lt!2595453)))

(declare-fun b!7272066 () Bool)

(assert (=> b!7272066 (= e!4360793 (Cons!70795 (h!77243 (exprs!8242 ct1!250)) (++!16702 (t!384991 (exprs!8242 ct1!250)) (exprs!8242 ct2!346))))))

(assert (= (and d!2263168 c!1353855) b!7272065))

(assert (= (and d!2263168 (not c!1353855)) b!7272066))

(assert (= (and d!2263168 res!2947892) b!7272067))

(assert (= (and b!7272067 res!2947891) b!7272068))

(declare-fun m!7958158 () Bool)

(assert (=> b!7272067 m!7958158))

(declare-fun m!7958160 () Bool)

(assert (=> b!7272067 m!7958160))

(assert (=> b!7272067 m!7958044))

(declare-fun m!7958162 () Bool)

(assert (=> d!2263168 m!7958162))

(declare-fun m!7958164 () Bool)

(assert (=> d!2263168 m!7958164))

(assert (=> d!2263168 m!7958050))

(declare-fun m!7958166 () Bool)

(assert (=> b!7272066 m!7958166))

(assert (=> b!7271904 d!2263168))

(declare-fun bs!1911280 () Bool)

(declare-fun d!2263170 () Bool)

(assert (= bs!1911280 (and d!2263170 b!7271904)))

(declare-fun lambda!448888 () Int)

(assert (=> bs!1911280 (= lambda!448888 lambda!448839)))

(assert (=> d!2263170 true))

(assert (=> d!2263170 (= (derivationStepZipper!3542 lt!2595338 (h!77244 s!7854)) (flatMap!2915 lt!2595338 lambda!448888))))

(declare-fun bs!1911281 () Bool)

(assert (= bs!1911281 d!2263170))

(declare-fun m!7958168 () Bool)

(assert (=> bs!1911281 m!7958168))

(assert (=> b!7271904 d!2263170))

(declare-fun b!7272075 () Bool)

(declare-fun e!4360796 () Bool)

(declare-fun tp!2041249 () Bool)

(declare-fun tp!2041250 () Bool)

(assert (=> b!7272075 (= e!4360796 (and tp!2041249 tp!2041250))))

(assert (=> b!7271898 (= tp!2041233 e!4360796)))

(assert (= (and b!7271898 (is-Cons!70795 (exprs!8242 ct2!346))) b!7272075))

(declare-fun b!7272080 () Bool)

(declare-fun e!4360799 () Bool)

(declare-fun tp!2041253 () Bool)

(assert (=> b!7272080 (= e!4360799 (and tp_is_empty!47069 tp!2041253))))

(assert (=> b!7271895 (= tp!2041234 e!4360799)))

(assert (= (and b!7271895 (is-Cons!70796 (t!384992 s!7854))) b!7272080))

(declare-fun b!7272081 () Bool)

(declare-fun e!4360800 () Bool)

(declare-fun tp!2041254 () Bool)

(declare-fun tp!2041255 () Bool)

(assert (=> b!7272081 (= e!4360800 (and tp!2041254 tp!2041255))))

(assert (=> b!7271900 (= tp!2041235 e!4360800)))

(assert (= (and b!7271900 (is-Cons!70795 (exprs!8242 ct1!250))) b!7272081))

(declare-fun b_lambda!280407 () Bool)

(assert (= b_lambda!280399 (or b!7271904 b_lambda!280407)))

(declare-fun bs!1911282 () Bool)

(declare-fun d!2263172 () Bool)

(assert (= bs!1911282 (and d!2263172 b!7271904)))

(assert (=> bs!1911282 (= (dynLambda!28941 lambda!448839 lt!2595315) (derivationStepZipperUp!2572 lt!2595315 (h!77244 s!7854)))))

(assert (=> bs!1911282 m!7957906))

(assert (=> d!2263140 d!2263172))

(declare-fun b_lambda!280409 () Bool)

(assert (= b_lambda!280405 (or b!7271904 b_lambda!280409)))

(declare-fun bs!1911283 () Bool)

(declare-fun d!2263174 () Bool)

(assert (= bs!1911283 (and d!2263174 b!7271904)))

(assert (=> bs!1911283 (= (dynLambda!28941 lambda!448839 lt!2595321) (derivationStepZipperUp!2572 lt!2595321 (h!77244 s!7854)))))

(assert (=> bs!1911283 m!7957884))

(assert (=> d!2263164 d!2263174))

(declare-fun b_lambda!280411 () Bool)

(assert (= b_lambda!280403 (or b!7271904 b_lambda!280411)))

(declare-fun bs!1911284 () Bool)

(declare-fun d!2263176 () Bool)

(assert (= bs!1911284 (and d!2263176 b!7271904)))

(assert (=> bs!1911284 (= (dynLambda!28941 lambda!448839 ct1!250) (derivationStepZipperUp!2572 ct1!250 (h!77244 s!7854)))))

(assert (=> bs!1911284 m!7957876))

(assert (=> d!2263160 d!2263176))

(declare-fun b_lambda!280413 () Bool)

(assert (= b_lambda!280401 (or b!7271904 b_lambda!280413)))

(declare-fun bs!1911285 () Bool)

(declare-fun d!2263178 () Bool)

(assert (= bs!1911285 (and d!2263178 b!7271904)))

(declare-fun validRegex!9588 (Regex!18802) Bool)

(assert (=> bs!1911285 (= (dynLambda!28940 lambda!448838 (h!77243 (exprs!8242 ct2!346))) (validRegex!9588 (h!77243 (exprs!8242 ct2!346))))))

(declare-fun m!7958170 () Bool)

(assert (=> bs!1911285 m!7958170))

(assert (=> b!7272051 d!2263178))

(declare-fun b_lambda!280415 () Bool)

(assert (= b_lambda!280397 (or b!7271904 b_lambda!280415)))

(declare-fun bs!1911286 () Bool)

(declare-fun d!2263180 () Bool)

(assert (= bs!1911286 (and d!2263180 b!7271904)))

(assert (=> bs!1911286 (= (dynLambda!28940 lambda!448838 (h!77243 (exprs!8242 ct1!250))) (validRegex!9588 (h!77243 (exprs!8242 ct1!250))))))

(declare-fun m!7958172 () Bool)

(assert (=> bs!1911286 m!7958172))

(assert (=> b!7272042 d!2263180))

(push 1)

(assert (not b!7272050))

(assert (not d!2263128))

(assert (not b_lambda!280413))

(assert (not b!7272056))

(assert (not b!7272081))

(assert (not b!7272055))

(assert (not d!2263118))

(assert (not d!2263144))

(assert (not d!2263116))

(assert (not bm!663376))

(assert (not d!2263134))

(assert (not d!2263150))

(assert (not b!7272080))

(assert (not d!2263120))

(assert (not d!2263154))

(assert (not bm!663385))

(assert (not b!7272062))

(assert (not bm!663392))

(assert (not d!2263122))

(assert (not d!2263152))

(assert (not bm!663386))

(assert (not b!7272000))

(assert (not b!7272047))

(assert (not bs!1911282))

(assert (not b!7272027))

(assert (not b!7272016))

(assert (not b!7272067))

(assert (not d!2263156))

(assert (not b!7272066))

(assert (not bm!663380))

(assert (not b!7272058))

(assert (not bm!663391))

(assert (not b!7272028))

(assert (not b!7271985))

(assert (not b!7272043))

(assert (not d!2263140))

(assert (not b!7271999))

(assert (not b!7272035))

(assert (not b!7272005))

(assert (not d!2263162))

(assert (not d!2263132))

(assert (not b_lambda!280407))

(assert (not d!2263168))

(assert (not b_lambda!280409))

(assert (not d!2263138))

(assert (not bm!663383))

(assert tp_is_empty!47069)

(assert (not b!7272052))

(assert (not b!7272049))

(assert (not bs!1911284))

(assert (not bs!1911286))

(assert (not b!7272048))

(assert (not d!2263124))

(assert (not b!7272004))

(assert (not bm!663384))

(assert (not bm!663390))

(assert (not b_lambda!280415))

(assert (not d!2263164))

(assert (not d!2263158))

(assert (not b!7272034))

(assert (not d!2263170))

(assert (not bs!1911285))

(assert (not bm!663375))

(assert (not d!2263136))

(assert (not b!7272036))

(assert (not b!7272063))

(assert (not b_lambda!280411))

(assert (not d!2263160))

(assert (not b!7272059))

(assert (not b!7272075))

(assert (not b!7272046))

(assert (not b!7272037))

(assert (not bs!1911283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

