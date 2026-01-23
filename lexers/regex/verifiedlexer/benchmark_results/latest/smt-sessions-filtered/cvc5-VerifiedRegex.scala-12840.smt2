; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709220 () Bool)

(assert start!709220)

(declare-fun b!7269107 () Bool)

(assert (=> b!7269107 true))

(declare-fun b!7269098 () Bool)

(declare-fun res!2946885 () Bool)

(declare-fun e!4359050 () Bool)

(assert (=> b!7269098 (=> res!2946885 e!4359050)))

(declare-datatypes ((C!37850 0))(
  ( (C!37851 (val!28873 Int)) )
))
(declare-datatypes ((Regex!18788 0))(
  ( (ElementMatch!18788 (c!1352920 C!37850)) (Concat!27633 (regOne!38088 Regex!18788) (regTwo!38088 Regex!18788)) (EmptyExpr!18788) (Star!18788 (reg!19117 Regex!18788)) (EmptyLang!18788) (Union!18788 (regOne!38089 Regex!18788) (regTwo!38089 Regex!18788)) )
))
(declare-datatypes ((List!70891 0))(
  ( (Nil!70767) (Cons!70767 (h!77215 Regex!18788) (t!384961 List!70891)) )
))
(declare-datatypes ((Context!15456 0))(
  ( (Context!15457 (exprs!8228 List!70891)) )
))
(declare-fun ct1!250 () Context!15456)

(declare-fun isEmpty!40693 (List!70891) Bool)

(assert (=> b!7269098 (= res!2946885 (isEmpty!40693 (exprs!8228 ct1!250)))))

(declare-fun b!7269099 () Bool)

(declare-fun res!2946887 () Bool)

(declare-fun e!4359052 () Bool)

(assert (=> b!7269099 (=> res!2946887 e!4359052)))

(declare-fun lt!2593867 () Context!15456)

(declare-fun lt!2593877 () (Set Context!15456))

(declare-datatypes ((List!70892 0))(
  ( (Nil!70768) (Cons!70768 (h!77216 C!37850) (t!384962 List!70892)) )
))
(declare-fun s!7854 () List!70892)

(declare-fun derivationStepZipperDown!2722 (Regex!18788 Context!15456 C!37850) (Set Context!15456))

(declare-fun derivationStepZipperUp!2558 (Context!15456 C!37850) (Set Context!15456))

(assert (=> b!7269099 (= res!2946887 (not (= lt!2593877 (set.union (derivationStepZipperDown!2722 (h!77215 (exprs!8228 ct1!250)) lt!2593867 (h!77216 s!7854)) (derivationStepZipperUp!2558 lt!2593867 (h!77216 s!7854))))))))

(declare-fun b!7269100 () Bool)

(declare-fun res!2946888 () Bool)

(declare-fun e!4359049 () Bool)

(assert (=> b!7269100 (=> (not res!2946888) (not e!4359049))))

(declare-fun nullableContext!278 (Context!15456) Bool)

(assert (=> b!7269100 (= res!2946888 (nullableContext!278 ct1!250))))

(declare-fun b!7269101 () Bool)

(declare-fun e!4359051 () Bool)

(declare-fun tp!2040883 () Bool)

(assert (=> b!7269101 (= e!4359051 tp!2040883)))

(declare-fun b!7269102 () Bool)

(declare-fun e!4359048 () Bool)

(declare-fun e!4359047 () Bool)

(assert (=> b!7269102 (= e!4359048 e!4359047)))

(declare-fun res!2946882 () Bool)

(assert (=> b!7269102 (=> res!2946882 e!4359047)))

(declare-fun lt!2593885 () List!70891)

(declare-fun lambda!448164 () Int)

(declare-fun forall!17617 (List!70891 Int) Bool)

(assert (=> b!7269102 (= res!2946882 (not (forall!17617 lt!2593885 lambda!448164)))))

(declare-fun lt!2593879 () (Set Context!15456))

(declare-fun lt!2593864 () Context!15456)

(declare-fun lambda!448165 () Int)

(declare-fun flatMap!2901 ((Set Context!15456) Int) (Set Context!15456))

(assert (=> b!7269102 (= (flatMap!2901 lt!2593879 lambda!448165) (derivationStepZipperUp!2558 lt!2593864 (h!77216 s!7854)))))

(declare-datatypes ((Unit!164194 0))(
  ( (Unit!164195) )
))
(declare-fun lt!2593881 () Unit!164194)

(declare-fun lemmaFlatMapOnSingletonSet!2301 ((Set Context!15456) Context!15456 Int) Unit!164194)

(assert (=> b!7269102 (= lt!2593881 (lemmaFlatMapOnSingletonSet!2301 lt!2593879 lt!2593864 lambda!448165))))

(declare-fun lt!2593871 () Unit!164194)

(declare-fun ct2!346 () Context!15456)

(declare-fun lemmaConcatPreservesForall!1545 (List!70891 List!70891 Int) Unit!164194)

(assert (=> b!7269102 (= lt!2593871 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593876 () Unit!164194)

(assert (=> b!7269102 (= lt!2593876 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593883 () Unit!164194)

(assert (=> b!7269102 (= lt!2593883 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun matchZipper!3692 ((Set Context!15456) List!70892) Bool)

(assert (=> b!7269102 (matchZipper!3692 lt!2593879 s!7854)))

(assert (=> b!7269102 (= lt!2593879 (set.insert lt!2593864 (as set.empty (Set Context!15456))))))

(declare-fun lt!2593880 () Unit!164194)

(assert (=> b!7269102 (= lt!2593880 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593882 () Unit!164194)

(declare-fun lemmaPrependingNullableCtxStillMatches!25 (Context!15456 Context!15456 List!70892) Unit!164194)

(assert (=> b!7269102 (= lt!2593882 (lemmaPrependingNullableCtxStillMatches!25 lt!2593867 ct2!346 s!7854))))

(declare-fun b!7269103 () Bool)

(assert (=> b!7269103 (= e!4359050 e!4359052)))

(declare-fun res!2946884 () Bool)

(assert (=> b!7269103 (=> res!2946884 e!4359052)))

(declare-fun nullable!7988 (Regex!18788) Bool)

(assert (=> b!7269103 (= res!2946884 (not (nullable!7988 (h!77215 (exprs!8228 ct1!250)))))))

(assert (=> b!7269103 (= lt!2593877 (derivationStepZipperUp!2558 ct1!250 (h!77216 s!7854)))))

(assert (=> b!7269103 (= lt!2593867 (Context!15457 lt!2593885))))

(declare-fun tail!14480 (List!70891) List!70891)

(assert (=> b!7269103 (= lt!2593885 (tail!14480 (exprs!8228 ct1!250)))))

(declare-fun b!7269104 () Bool)

(declare-fun res!2946890 () Bool)

(assert (=> b!7269104 (=> (not res!2946890) (not e!4359049))))

(assert (=> b!7269104 (= res!2946890 (is-Cons!70768 s!7854))))

(declare-fun b!7269105 () Bool)

(assert (=> b!7269105 (= e!4359052 e!4359048)))

(declare-fun res!2946889 () Bool)

(assert (=> b!7269105 (=> res!2946889 e!4359048)))

(declare-fun lt!2593873 () (Set Context!15456))

(assert (=> b!7269105 (= res!2946889 (not (= lt!2593873 (set.union (derivationStepZipperDown!2722 (h!77215 (exprs!8228 ct1!250)) lt!2593864 (h!77216 s!7854)) (derivationStepZipperUp!2558 lt!2593864 (h!77216 s!7854))))))))

(declare-fun ++!16688 (List!70891 List!70891) List!70891)

(assert (=> b!7269105 (= lt!2593864 (Context!15457 (++!16688 lt!2593885 (exprs!8228 ct2!346))))))

(declare-fun lt!2593874 () Unit!164194)

(assert (=> b!7269105 (= lt!2593874 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593875 () Unit!164194)

(assert (=> b!7269105 (= lt!2593875 (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(declare-fun b!7269106 () Bool)

(declare-fun e!4359046 () Bool)

(declare-fun tp_is_empty!47041 () Bool)

(declare-fun tp!2040884 () Bool)

(assert (=> b!7269106 (= e!4359046 (and tp_is_empty!47041 tp!2040884))))

(declare-fun res!2946883 () Bool)

(assert (=> start!709220 (=> (not res!2946883) (not e!4359049))))

(assert (=> start!709220 (= res!2946883 (matchZipper!3692 (set.insert ct2!346 (as set.empty (Set Context!15456))) s!7854))))

(assert (=> start!709220 e!4359049))

(declare-fun inv!89981 (Context!15456) Bool)

(assert (=> start!709220 (and (inv!89981 ct2!346) e!4359051)))

(assert (=> start!709220 e!4359046))

(declare-fun e!4359053 () Bool)

(assert (=> start!709220 (and (inv!89981 ct1!250) e!4359053)))

(assert (=> b!7269107 (= e!4359049 (not e!4359050))))

(declare-fun res!2946891 () Bool)

(assert (=> b!7269107 (=> res!2946891 e!4359050)))

(declare-fun lt!2593865 () (Set Context!15456))

(declare-fun derivationStepZipper!3528 ((Set Context!15456) C!37850) (Set Context!15456))

(assert (=> b!7269107 (= res!2946891 (not (= lt!2593873 (derivationStepZipper!3528 lt!2593865 (h!77216 s!7854)))))))

(declare-fun lt!2593884 () Unit!164194)

(assert (=> b!7269107 (= lt!2593884 (lemmaConcatPreservesForall!1545 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593878 () Context!15456)

(assert (=> b!7269107 (= (flatMap!2901 lt!2593865 lambda!448165) (derivationStepZipperUp!2558 lt!2593878 (h!77216 s!7854)))))

(declare-fun lt!2593866 () Unit!164194)

(assert (=> b!7269107 (= lt!2593866 (lemmaFlatMapOnSingletonSet!2301 lt!2593865 lt!2593878 lambda!448165))))

(assert (=> b!7269107 (= lt!2593865 (set.insert lt!2593878 (as set.empty (Set Context!15456))))))

(declare-fun lt!2593872 () Unit!164194)

(assert (=> b!7269107 (= lt!2593872 (lemmaConcatPreservesForall!1545 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593868 () Unit!164194)

(assert (=> b!7269107 (= lt!2593868 (lemmaConcatPreservesForall!1545 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164))))

(declare-fun lt!2593869 () (Set Context!15456))

(assert (=> b!7269107 (= (flatMap!2901 lt!2593869 lambda!448165) (derivationStepZipperUp!2558 ct1!250 (h!77216 s!7854)))))

(declare-fun lt!2593886 () Unit!164194)

(assert (=> b!7269107 (= lt!2593886 (lemmaFlatMapOnSingletonSet!2301 lt!2593869 ct1!250 lambda!448165))))

(assert (=> b!7269107 (= lt!2593869 (set.insert ct1!250 (as set.empty (Set Context!15456))))))

(assert (=> b!7269107 (= lt!2593873 (derivationStepZipperUp!2558 lt!2593878 (h!77216 s!7854)))))

(assert (=> b!7269107 (= lt!2593878 (Context!15457 (++!16688 (exprs!8228 ct1!250) (exprs!8228 ct2!346))))))

(declare-fun lt!2593870 () Unit!164194)

(assert (=> b!7269107 (= lt!2593870 (lemmaConcatPreservesForall!1545 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164))))

(declare-fun b!7269108 () Bool)

(declare-fun tp!2040885 () Bool)

(assert (=> b!7269108 (= e!4359053 tp!2040885)))

(declare-fun b!7269109 () Bool)

(declare-fun res!2946886 () Bool)

(assert (=> b!7269109 (=> res!2946886 e!4359050)))

(assert (=> b!7269109 (= res!2946886 (not (is-Cons!70767 (exprs!8228 ct1!250))))))

(declare-fun b!7269110 () Bool)

(assert (=> b!7269110 (= e!4359047 (forall!17617 (exprs!8228 ct2!346) lambda!448164))))

(assert (= (and start!709220 res!2946883) b!7269100))

(assert (= (and b!7269100 res!2946888) b!7269104))

(assert (= (and b!7269104 res!2946890) b!7269107))

(assert (= (and b!7269107 (not res!2946891)) b!7269109))

(assert (= (and b!7269109 (not res!2946886)) b!7269098))

(assert (= (and b!7269098 (not res!2946885)) b!7269103))

(assert (= (and b!7269103 (not res!2946884)) b!7269099))

(assert (= (and b!7269099 (not res!2946887)) b!7269105))

(assert (= (and b!7269105 (not res!2946889)) b!7269102))

(assert (= (and b!7269102 (not res!2946882)) b!7269110))

(assert (= start!709220 b!7269101))

(assert (= (and start!709220 (is-Cons!70768 s!7854)) b!7269106))

(assert (= start!709220 b!7269108))

(declare-fun m!7954294 () Bool)

(assert (=> b!7269100 m!7954294))

(declare-fun m!7954296 () Bool)

(assert (=> b!7269102 m!7954296))

(assert (=> b!7269102 m!7954296))

(declare-fun m!7954298 () Bool)

(assert (=> b!7269102 m!7954298))

(assert (=> b!7269102 m!7954296))

(declare-fun m!7954300 () Bool)

(assert (=> b!7269102 m!7954300))

(declare-fun m!7954302 () Bool)

(assert (=> b!7269102 m!7954302))

(declare-fun m!7954304 () Bool)

(assert (=> b!7269102 m!7954304))

(declare-fun m!7954306 () Bool)

(assert (=> b!7269102 m!7954306))

(assert (=> b!7269102 m!7954296))

(declare-fun m!7954308 () Bool)

(assert (=> b!7269102 m!7954308))

(declare-fun m!7954310 () Bool)

(assert (=> b!7269102 m!7954310))

(declare-fun m!7954312 () Bool)

(assert (=> start!709220 m!7954312))

(assert (=> start!709220 m!7954312))

(declare-fun m!7954314 () Bool)

(assert (=> start!709220 m!7954314))

(declare-fun m!7954316 () Bool)

(assert (=> start!709220 m!7954316))

(declare-fun m!7954318 () Bool)

(assert (=> start!709220 m!7954318))

(declare-fun m!7954320 () Bool)

(assert (=> b!7269099 m!7954320))

(declare-fun m!7954322 () Bool)

(assert (=> b!7269099 m!7954322))

(declare-fun m!7954324 () Bool)

(assert (=> b!7269098 m!7954324))

(declare-fun m!7954326 () Bool)

(assert (=> b!7269110 m!7954326))

(assert (=> b!7269105 m!7954296))

(assert (=> b!7269105 m!7954308))

(assert (=> b!7269105 m!7954296))

(declare-fun m!7954328 () Bool)

(assert (=> b!7269105 m!7954328))

(declare-fun m!7954330 () Bool)

(assert (=> b!7269105 m!7954330))

(declare-fun m!7954332 () Bool)

(assert (=> b!7269107 m!7954332))

(declare-fun m!7954334 () Bool)

(assert (=> b!7269107 m!7954334))

(declare-fun m!7954336 () Bool)

(assert (=> b!7269107 m!7954336))

(declare-fun m!7954338 () Bool)

(assert (=> b!7269107 m!7954338))

(declare-fun m!7954340 () Bool)

(assert (=> b!7269107 m!7954340))

(declare-fun m!7954342 () Bool)

(assert (=> b!7269107 m!7954342))

(declare-fun m!7954344 () Bool)

(assert (=> b!7269107 m!7954344))

(declare-fun m!7954346 () Bool)

(assert (=> b!7269107 m!7954346))

(declare-fun m!7954348 () Bool)

(assert (=> b!7269107 m!7954348))

(declare-fun m!7954350 () Bool)

(assert (=> b!7269107 m!7954350))

(assert (=> b!7269107 m!7954336))

(declare-fun m!7954352 () Bool)

(assert (=> b!7269107 m!7954352))

(assert (=> b!7269107 m!7954336))

(assert (=> b!7269107 m!7954336))

(declare-fun m!7954354 () Bool)

(assert (=> b!7269103 m!7954354))

(assert (=> b!7269103 m!7954338))

(declare-fun m!7954356 () Bool)

(assert (=> b!7269103 m!7954356))

(push 1)

(assert (not b!7269110))

(assert tp_is_empty!47041)

(assert (not b!7269103))

(assert (not b!7269107))

(assert (not b!7269100))

(assert (not b!7269102))

(assert (not b!7269101))

(assert (not b!7269099))

(assert (not b!7269106))

(assert (not b!7269108))

(assert (not b!7269098))

(assert (not start!709220))

(assert (not b!7269105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261873 () Bool)

(declare-fun dynLambda!28915 (Int Context!15456) (Set Context!15456))

(assert (=> d!2261873 (= (flatMap!2901 lt!2593865 lambda!448165) (dynLambda!28915 lambda!448165 lt!2593878))))

(declare-fun lt!2593958 () Unit!164194)

(declare-fun choose!56370 ((Set Context!15456) Context!15456 Int) Unit!164194)

(assert (=> d!2261873 (= lt!2593958 (choose!56370 lt!2593865 lt!2593878 lambda!448165))))

(assert (=> d!2261873 (= lt!2593865 (set.insert lt!2593878 (as set.empty (Set Context!15456))))))

(assert (=> d!2261873 (= (lemmaFlatMapOnSingletonSet!2301 lt!2593865 lt!2593878 lambda!448165) lt!2593958)))

(declare-fun b_lambda!280077 () Bool)

(assert (=> (not b_lambda!280077) (not d!2261873)))

(declare-fun bs!1910747 () Bool)

(assert (= bs!1910747 d!2261873))

(assert (=> bs!1910747 m!7954340))

(declare-fun m!7954422 () Bool)

(assert (=> bs!1910747 m!7954422))

(declare-fun m!7954424 () Bool)

(assert (=> bs!1910747 m!7954424))

(assert (=> bs!1910747 m!7954342))

(assert (=> b!7269107 d!2261873))

(declare-fun d!2261875 () Bool)

(assert (=> d!2261875 (forall!17617 (++!16688 (exprs!8228 ct1!250) (exprs!8228 ct2!346)) lambda!448164)))

(declare-fun lt!2593961 () Unit!164194)

(declare-fun choose!56371 (List!70891 List!70891 Int) Unit!164194)

(assert (=> d!2261875 (= lt!2593961 (choose!56371 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164))))

(assert (=> d!2261875 (forall!17617 (exprs!8228 ct1!250) lambda!448164)))

(assert (=> d!2261875 (= (lemmaConcatPreservesForall!1545 (exprs!8228 ct1!250) (exprs!8228 ct2!346) lambda!448164) lt!2593961)))

(declare-fun bs!1910748 () Bool)

(assert (= bs!1910748 d!2261875))

(assert (=> bs!1910748 m!7954350))

(assert (=> bs!1910748 m!7954350))

(declare-fun m!7954426 () Bool)

(assert (=> bs!1910748 m!7954426))

(declare-fun m!7954428 () Bool)

(assert (=> bs!1910748 m!7954428))

(declare-fun m!7954430 () Bool)

(assert (=> bs!1910748 m!7954430))

(assert (=> b!7269107 d!2261875))

(declare-fun bs!1910749 () Bool)

(declare-fun d!2261877 () Bool)

(assert (= bs!1910749 (and d!2261877 b!7269107)))

(declare-fun lambda!448198 () Int)

(assert (=> bs!1910749 (= lambda!448198 lambda!448165)))

(assert (=> d!2261877 true))

(assert (=> d!2261877 (= (derivationStepZipper!3528 lt!2593865 (h!77216 s!7854)) (flatMap!2901 lt!2593865 lambda!448198))))

(declare-fun bs!1910750 () Bool)

(assert (= bs!1910750 d!2261877))

(declare-fun m!7954432 () Bool)

(assert (=> bs!1910750 m!7954432))

(assert (=> b!7269107 d!2261877))

(declare-fun d!2261879 () Bool)

(declare-fun c!1352934 () Bool)

(declare-fun e!4359084 () Bool)

(assert (=> d!2261879 (= c!1352934 e!4359084)))

(declare-fun res!2946924 () Bool)

(assert (=> d!2261879 (=> (not res!2946924) (not e!4359084))))

(assert (=> d!2261879 (= res!2946924 (is-Cons!70767 (exprs!8228 ct1!250)))))

(declare-fun e!4359085 () (Set Context!15456))

(assert (=> d!2261879 (= (derivationStepZipperUp!2558 ct1!250 (h!77216 s!7854)) e!4359085)))

(declare-fun b!7269166 () Bool)

(declare-fun e!4359086 () (Set Context!15456))

(assert (=> b!7269166 (= e!4359085 e!4359086)))

(declare-fun c!1352935 () Bool)

(assert (=> b!7269166 (= c!1352935 (is-Cons!70767 (exprs!8228 ct1!250)))))

(declare-fun call!662804 () (Set Context!15456))

(declare-fun b!7269167 () Bool)

(assert (=> b!7269167 (= e!4359085 (set.union call!662804 (derivationStepZipperUp!2558 (Context!15457 (t!384961 (exprs!8228 ct1!250))) (h!77216 s!7854))))))

(declare-fun b!7269168 () Bool)

(assert (=> b!7269168 (= e!4359086 call!662804)))

(declare-fun bm!662799 () Bool)

(assert (=> bm!662799 (= call!662804 (derivationStepZipperDown!2722 (h!77215 (exprs!8228 ct1!250)) (Context!15457 (t!384961 (exprs!8228 ct1!250))) (h!77216 s!7854)))))

(declare-fun b!7269169 () Bool)

(assert (=> b!7269169 (= e!4359086 (as set.empty (Set Context!15456)))))

(declare-fun b!7269170 () Bool)

(assert (=> b!7269170 (= e!4359084 (nullable!7988 (h!77215 (exprs!8228 ct1!250))))))

(assert (= (and d!2261879 res!2946924) b!7269170))

(assert (= (and d!2261879 c!1352934) b!7269167))

(assert (= (and d!2261879 (not c!1352934)) b!7269166))

(assert (= (and b!7269166 c!1352935) b!7269168))

(assert (= (and b!7269166 (not c!1352935)) b!7269169))

(assert (= (or b!7269167 b!7269168) bm!662799))

(declare-fun m!7954434 () Bool)

(assert (=> b!7269167 m!7954434))

(declare-fun m!7954436 () Bool)

(assert (=> bm!662799 m!7954436))

(assert (=> b!7269170 m!7954354))

(assert (=> b!7269107 d!2261879))

(declare-fun d!2261881 () Bool)

(declare-fun e!4359091 () Bool)

(assert (=> d!2261881 e!4359091))

(declare-fun res!2946929 () Bool)

(assert (=> d!2261881 (=> (not res!2946929) (not e!4359091))))

(declare-fun lt!2593964 () List!70891)

(declare-fun content!14766 (List!70891) (Set Regex!18788))

(assert (=> d!2261881 (= res!2946929 (= (content!14766 lt!2593964) (set.union (content!14766 (exprs!8228 ct1!250)) (content!14766 (exprs!8228 ct2!346)))))))

(declare-fun e!4359092 () List!70891)

(assert (=> d!2261881 (= lt!2593964 e!4359092)))

(declare-fun c!1352938 () Bool)

(assert (=> d!2261881 (= c!1352938 (is-Nil!70767 (exprs!8228 ct1!250)))))

(assert (=> d!2261881 (= (++!16688 (exprs!8228 ct1!250) (exprs!8228 ct2!346)) lt!2593964)))

(declare-fun b!7269179 () Bool)

(assert (=> b!7269179 (= e!4359092 (exprs!8228 ct2!346))))

(declare-fun b!7269181 () Bool)

(declare-fun res!2946930 () Bool)

(assert (=> b!7269181 (=> (not res!2946930) (not e!4359091))))

(declare-fun size!41814 (List!70891) Int)

(assert (=> b!7269181 (= res!2946930 (= (size!41814 lt!2593964) (+ (size!41814 (exprs!8228 ct1!250)) (size!41814 (exprs!8228 ct2!346)))))))

(declare-fun b!7269182 () Bool)

(assert (=> b!7269182 (= e!4359091 (or (not (= (exprs!8228 ct2!346) Nil!70767)) (= lt!2593964 (exprs!8228 ct1!250))))))

(declare-fun b!7269180 () Bool)

(assert (=> b!7269180 (= e!4359092 (Cons!70767 (h!77215 (exprs!8228 ct1!250)) (++!16688 (t!384961 (exprs!8228 ct1!250)) (exprs!8228 ct2!346))))))

(assert (= (and d!2261881 c!1352938) b!7269179))

(assert (= (and d!2261881 (not c!1352938)) b!7269180))

(assert (= (and d!2261881 res!2946929) b!7269181))

(assert (= (and b!7269181 res!2946930) b!7269182))

(declare-fun m!7954438 () Bool)

(assert (=> d!2261881 m!7954438))

(declare-fun m!7954440 () Bool)

(assert (=> d!2261881 m!7954440))

(declare-fun m!7954442 () Bool)

(assert (=> d!2261881 m!7954442))

(declare-fun m!7954444 () Bool)

(assert (=> b!7269181 m!7954444))

(declare-fun m!7954446 () Bool)

(assert (=> b!7269181 m!7954446))

(declare-fun m!7954448 () Bool)

(assert (=> b!7269181 m!7954448))

(declare-fun m!7954450 () Bool)

(assert (=> b!7269180 m!7954450))

(assert (=> b!7269107 d!2261881))

(declare-fun d!2261883 () Bool)

(declare-fun choose!56372 ((Set Context!15456) Int) (Set Context!15456))

(assert (=> d!2261883 (= (flatMap!2901 lt!2593865 lambda!448165) (choose!56372 lt!2593865 lambda!448165))))

(declare-fun bs!1910751 () Bool)

(assert (= bs!1910751 d!2261883))

(declare-fun m!7954452 () Bool)

(assert (=> bs!1910751 m!7954452))

(assert (=> b!7269107 d!2261883))

(declare-fun d!2261885 () Bool)

(assert (=> d!2261885 (= (flatMap!2901 lt!2593869 lambda!448165) (dynLambda!28915 lambda!448165 ct1!250))))

(declare-fun lt!2593965 () Unit!164194)

(assert (=> d!2261885 (= lt!2593965 (choose!56370 lt!2593869 ct1!250 lambda!448165))))

(assert (=> d!2261885 (= lt!2593869 (set.insert ct1!250 (as set.empty (Set Context!15456))))))

(assert (=> d!2261885 (= (lemmaFlatMapOnSingletonSet!2301 lt!2593869 ct1!250 lambda!448165) lt!2593965)))

(declare-fun b_lambda!280079 () Bool)

(assert (=> (not b_lambda!280079) (not d!2261885)))

(declare-fun bs!1910752 () Bool)

(assert (= bs!1910752 d!2261885))

(assert (=> bs!1910752 m!7954346))

(declare-fun m!7954454 () Bool)

(assert (=> bs!1910752 m!7954454))

(declare-fun m!7954456 () Bool)

(assert (=> bs!1910752 m!7954456))

(assert (=> bs!1910752 m!7954348))

(assert (=> b!7269107 d!2261885))

(declare-fun d!2261887 () Bool)

(assert (=> d!2261887 (= (flatMap!2901 lt!2593869 lambda!448165) (choose!56372 lt!2593869 lambda!448165))))

(declare-fun bs!1910753 () Bool)

(assert (= bs!1910753 d!2261887))

(declare-fun m!7954458 () Bool)

(assert (=> bs!1910753 m!7954458))

(assert (=> b!7269107 d!2261887))

(declare-fun d!2261889 () Bool)

(declare-fun c!1352939 () Bool)

(declare-fun e!4359093 () Bool)

(assert (=> d!2261889 (= c!1352939 e!4359093)))

(declare-fun res!2946931 () Bool)

(assert (=> d!2261889 (=> (not res!2946931) (not e!4359093))))

(assert (=> d!2261889 (= res!2946931 (is-Cons!70767 (exprs!8228 lt!2593878)))))

(declare-fun e!4359094 () (Set Context!15456))

(assert (=> d!2261889 (= (derivationStepZipperUp!2558 lt!2593878 (h!77216 s!7854)) e!4359094)))

(declare-fun b!7269183 () Bool)

(declare-fun e!4359095 () (Set Context!15456))

(assert (=> b!7269183 (= e!4359094 e!4359095)))

(declare-fun c!1352940 () Bool)

(assert (=> b!7269183 (= c!1352940 (is-Cons!70767 (exprs!8228 lt!2593878)))))

(declare-fun call!662805 () (Set Context!15456))

(declare-fun b!7269184 () Bool)

(assert (=> b!7269184 (= e!4359094 (set.union call!662805 (derivationStepZipperUp!2558 (Context!15457 (t!384961 (exprs!8228 lt!2593878))) (h!77216 s!7854))))))

(declare-fun b!7269185 () Bool)

(assert (=> b!7269185 (= e!4359095 call!662805)))

(declare-fun bm!662800 () Bool)

(assert (=> bm!662800 (= call!662805 (derivationStepZipperDown!2722 (h!77215 (exprs!8228 lt!2593878)) (Context!15457 (t!384961 (exprs!8228 lt!2593878))) (h!77216 s!7854)))))

(declare-fun b!7269186 () Bool)

(assert (=> b!7269186 (= e!4359095 (as set.empty (Set Context!15456)))))

(declare-fun b!7269187 () Bool)

(assert (=> b!7269187 (= e!4359093 (nullable!7988 (h!77215 (exprs!8228 lt!2593878))))))

(assert (= (and d!2261889 res!2946931) b!7269187))

(assert (= (and d!2261889 c!1352939) b!7269184))

(assert (= (and d!2261889 (not c!1352939)) b!7269183))

(assert (= (and b!7269183 c!1352940) b!7269185))

(assert (= (and b!7269183 (not c!1352940)) b!7269186))

(assert (= (or b!7269184 b!7269185) bm!662800))

(declare-fun m!7954460 () Bool)

(assert (=> b!7269184 m!7954460))

(declare-fun m!7954462 () Bool)

(assert (=> bm!662800 m!7954462))

(declare-fun m!7954464 () Bool)

(assert (=> b!7269187 m!7954464))

(assert (=> b!7269107 d!2261889))

(declare-fun d!2261891 () Bool)

(assert (=> d!2261891 (= (flatMap!2901 lt!2593879 lambda!448165) (choose!56372 lt!2593879 lambda!448165))))

(declare-fun bs!1910754 () Bool)

(assert (= bs!1910754 d!2261891))

(declare-fun m!7954466 () Bool)

(assert (=> bs!1910754 m!7954466))

(assert (=> b!7269102 d!2261891))

(declare-fun d!2261893 () Bool)

(declare-fun c!1352943 () Bool)

(declare-fun isEmpty!40695 (List!70892) Bool)

(assert (=> d!2261893 (= c!1352943 (isEmpty!40695 s!7854))))

(declare-fun e!4359098 () Bool)

(assert (=> d!2261893 (= (matchZipper!3692 lt!2593879 s!7854) e!4359098)))

(declare-fun b!7269192 () Bool)

(declare-fun nullableZipper!2995 ((Set Context!15456)) Bool)

(assert (=> b!7269192 (= e!4359098 (nullableZipper!2995 lt!2593879))))

(declare-fun b!7269193 () Bool)

(declare-fun head!14993 (List!70892) C!37850)

(declare-fun tail!14482 (List!70892) List!70892)

(assert (=> b!7269193 (= e!4359098 (matchZipper!3692 (derivationStepZipper!3528 lt!2593879 (head!14993 s!7854)) (tail!14482 s!7854)))))

(assert (= (and d!2261893 c!1352943) b!7269192))

(assert (= (and d!2261893 (not c!1352943)) b!7269193))

(declare-fun m!7954468 () Bool)

(assert (=> d!2261893 m!7954468))

(declare-fun m!7954470 () Bool)

(assert (=> b!7269192 m!7954470))

(declare-fun m!7954472 () Bool)

(assert (=> b!7269193 m!7954472))

(assert (=> b!7269193 m!7954472))

(declare-fun m!7954474 () Bool)

(assert (=> b!7269193 m!7954474))

(declare-fun m!7954476 () Bool)

(assert (=> b!7269193 m!7954476))

(assert (=> b!7269193 m!7954474))

(assert (=> b!7269193 m!7954476))

(declare-fun m!7954478 () Bool)

(assert (=> b!7269193 m!7954478))

(assert (=> b!7269102 d!2261893))

(declare-fun d!2261897 () Bool)

(declare-fun res!2946936 () Bool)

(declare-fun e!4359103 () Bool)

(assert (=> d!2261897 (=> res!2946936 e!4359103)))

(assert (=> d!2261897 (= res!2946936 (is-Nil!70767 lt!2593885))))

(assert (=> d!2261897 (= (forall!17617 lt!2593885 lambda!448164) e!4359103)))

(declare-fun b!7269198 () Bool)

(declare-fun e!4359104 () Bool)

(assert (=> b!7269198 (= e!4359103 e!4359104)))

(declare-fun res!2946937 () Bool)

(assert (=> b!7269198 (=> (not res!2946937) (not e!4359104))))

(declare-fun dynLambda!28916 (Int Regex!18788) Bool)

(assert (=> b!7269198 (= res!2946937 (dynLambda!28916 lambda!448164 (h!77215 lt!2593885)))))

(declare-fun b!7269199 () Bool)

(assert (=> b!7269199 (= e!4359104 (forall!17617 (t!384961 lt!2593885) lambda!448164))))

(assert (= (and d!2261897 (not res!2946936)) b!7269198))

(assert (= (and b!7269198 res!2946937) b!7269199))

(declare-fun b_lambda!280081 () Bool)

(assert (=> (not b_lambda!280081) (not b!7269198)))

(declare-fun m!7954480 () Bool)

(assert (=> b!7269198 m!7954480))

(declare-fun m!7954482 () Bool)

(assert (=> b!7269199 m!7954482))

(assert (=> b!7269102 d!2261897))

(declare-fun d!2261899 () Bool)

(assert (=> d!2261899 (= (flatMap!2901 lt!2593879 lambda!448165) (dynLambda!28915 lambda!448165 lt!2593864))))

(declare-fun lt!2593966 () Unit!164194)

(assert (=> d!2261899 (= lt!2593966 (choose!56370 lt!2593879 lt!2593864 lambda!448165))))

(assert (=> d!2261899 (= lt!2593879 (set.insert lt!2593864 (as set.empty (Set Context!15456))))))

(assert (=> d!2261899 (= (lemmaFlatMapOnSingletonSet!2301 lt!2593879 lt!2593864 lambda!448165) lt!2593966)))

(declare-fun b_lambda!280083 () Bool)

(assert (=> (not b_lambda!280083) (not d!2261899)))

(declare-fun bs!1910755 () Bool)

(assert (= bs!1910755 d!2261899))

(assert (=> bs!1910755 m!7954300))

(declare-fun m!7954484 () Bool)

(assert (=> bs!1910755 m!7954484))

(declare-fun m!7954486 () Bool)

(assert (=> bs!1910755 m!7954486))

(assert (=> bs!1910755 m!7954304))

(assert (=> b!7269102 d!2261899))

(declare-fun d!2261901 () Bool)

(assert (=> d!2261901 (forall!17617 (++!16688 lt!2593885 (exprs!8228 ct2!346)) lambda!448164)))

(declare-fun lt!2593967 () Unit!164194)

(assert (=> d!2261901 (= lt!2593967 (choose!56371 lt!2593885 (exprs!8228 ct2!346) lambda!448164))))

(assert (=> d!2261901 (forall!17617 lt!2593885 lambda!448164)))

(assert (=> d!2261901 (= (lemmaConcatPreservesForall!1545 lt!2593885 (exprs!8228 ct2!346) lambda!448164) lt!2593967)))

(declare-fun bs!1910756 () Bool)

(assert (= bs!1910756 d!2261901))

(assert (=> bs!1910756 m!7954328))

(assert (=> bs!1910756 m!7954328))

(declare-fun m!7954488 () Bool)

(assert (=> bs!1910756 m!7954488))

(declare-fun m!7954490 () Bool)

(assert (=> bs!1910756 m!7954490))

(assert (=> bs!1910756 m!7954302))

(assert (=> b!7269102 d!2261901))

(declare-fun bs!1910758 () Bool)

(declare-fun d!2261903 () Bool)

(assert (= bs!1910758 (and d!2261903 b!7269107)))

(declare-fun lambda!448201 () Int)

(assert (=> bs!1910758 (= lambda!448201 lambda!448164)))

(assert (=> d!2261903 (matchZipper!3692 (set.insert (Context!15457 (++!16688 (exprs!8228 lt!2593867) (exprs!8228 ct2!346))) (as set.empty (Set Context!15456))) s!7854)))

(declare-fun lt!2593976 () Unit!164194)

(assert (=> d!2261903 (= lt!2593976 (lemmaConcatPreservesForall!1545 (exprs!8228 lt!2593867) (exprs!8228 ct2!346) lambda!448201))))

(declare-fun lt!2593975 () Unit!164194)

(declare-fun choose!56373 (Context!15456 Context!15456 List!70892) Unit!164194)

(assert (=> d!2261903 (= lt!2593975 (choose!56373 lt!2593867 ct2!346 s!7854))))

(assert (=> d!2261903 (matchZipper!3692 (set.insert ct2!346 (as set.empty (Set Context!15456))) s!7854)))

(assert (=> d!2261903 (= (lemmaPrependingNullableCtxStillMatches!25 lt!2593867 ct2!346 s!7854) lt!2593975)))

(declare-fun bs!1910759 () Bool)

(assert (= bs!1910759 d!2261903))

(declare-fun m!7954496 () Bool)

(assert (=> bs!1910759 m!7954496))

(assert (=> bs!1910759 m!7954496))

(declare-fun m!7954498 () Bool)

(assert (=> bs!1910759 m!7954498))

(declare-fun m!7954500 () Bool)

(assert (=> bs!1910759 m!7954500))

(assert (=> bs!1910759 m!7954312))

(assert (=> bs!1910759 m!7954314))

(declare-fun m!7954502 () Bool)

(assert (=> bs!1910759 m!7954502))

(assert (=> bs!1910759 m!7954312))

(declare-fun m!7954504 () Bool)

(assert (=> bs!1910759 m!7954504))

(assert (=> b!7269102 d!2261903))

(declare-fun d!2261907 () Bool)

(declare-fun c!1352944 () Bool)

(declare-fun e!4359105 () Bool)

(assert (=> d!2261907 (= c!1352944 e!4359105)))

(declare-fun res!2946938 () Bool)

(assert (=> d!2261907 (=> (not res!2946938) (not e!4359105))))

(assert (=> d!2261907 (= res!2946938 (is-Cons!70767 (exprs!8228 lt!2593864)))))

(declare-fun e!4359106 () (Set Context!15456))

(assert (=> d!2261907 (= (derivationStepZipperUp!2558 lt!2593864 (h!77216 s!7854)) e!4359106)))

(declare-fun b!7269202 () Bool)

(declare-fun e!4359107 () (Set Context!15456))

(assert (=> b!7269202 (= e!4359106 e!4359107)))

(declare-fun c!1352945 () Bool)

(assert (=> b!7269202 (= c!1352945 (is-Cons!70767 (exprs!8228 lt!2593864)))))

(declare-fun call!662806 () (Set Context!15456))

(declare-fun b!7269203 () Bool)

(assert (=> b!7269203 (= e!4359106 (set.union call!662806 (derivationStepZipperUp!2558 (Context!15457 (t!384961 (exprs!8228 lt!2593864))) (h!77216 s!7854))))))

(declare-fun b!7269204 () Bool)

(assert (=> b!7269204 (= e!4359107 call!662806)))

(declare-fun bm!662801 () Bool)

(assert (=> bm!662801 (= call!662806 (derivationStepZipperDown!2722 (h!77215 (exprs!8228 lt!2593864)) (Context!15457 (t!384961 (exprs!8228 lt!2593864))) (h!77216 s!7854)))))

(declare-fun b!7269205 () Bool)

(assert (=> b!7269205 (= e!4359107 (as set.empty (Set Context!15456)))))

(declare-fun b!7269206 () Bool)

(assert (=> b!7269206 (= e!4359105 (nullable!7988 (h!77215 (exprs!8228 lt!2593864))))))

(assert (= (and d!2261907 res!2946938) b!7269206))

(assert (= (and d!2261907 c!1352944) b!7269203))

(assert (= (and d!2261907 (not c!1352944)) b!7269202))

(assert (= (and b!7269202 c!1352945) b!7269204))

(assert (= (and b!7269202 (not c!1352945)) b!7269205))

(assert (= (or b!7269203 b!7269204) bm!662801))

(declare-fun m!7954506 () Bool)

(assert (=> b!7269203 m!7954506))

(declare-fun m!7954508 () Bool)

(assert (=> bm!662801 m!7954508))

(declare-fun m!7954510 () Bool)

(assert (=> b!7269206 m!7954510))

(assert (=> b!7269102 d!2261907))

(declare-fun d!2261909 () Bool)

(declare-fun nullableFct!3148 (Regex!18788) Bool)

(assert (=> d!2261909 (= (nullable!7988 (h!77215 (exprs!8228 ct1!250))) (nullableFct!3148 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun bs!1910760 () Bool)

(assert (= bs!1910760 d!2261909))

(declare-fun m!7954512 () Bool)

(assert (=> bs!1910760 m!7954512))

(assert (=> b!7269103 d!2261909))

(assert (=> b!7269103 d!2261879))

(declare-fun d!2261911 () Bool)

(assert (=> d!2261911 (= (tail!14480 (exprs!8228 ct1!250)) (t!384961 (exprs!8228 ct1!250)))))

(assert (=> b!7269103 d!2261911))

(declare-fun d!2261913 () Bool)

(assert (=> d!2261913 (= (isEmpty!40693 (exprs!8228 ct1!250)) (is-Nil!70767 (exprs!8228 ct1!250)))))

(assert (=> b!7269098 d!2261913))

(declare-fun b!7269242 () Bool)

(declare-fun e!4359130 () (Set Context!15456))

(declare-fun call!662827 () (Set Context!15456))

(declare-fun call!662822 () (Set Context!15456))

(assert (=> b!7269242 (= e!4359130 (set.union call!662827 call!662822))))

(declare-fun b!7269243 () Bool)

(declare-fun e!4359132 () (Set Context!15456))

(declare-fun call!662826 () (Set Context!15456))

(assert (=> b!7269243 (= e!4359132 call!662826)))

(declare-fun b!7269244 () Bool)

(declare-fun e!4359131 () (Set Context!15456))

(assert (=> b!7269244 (= e!4359131 (set.insert lt!2593867 (as set.empty (Set Context!15456))))))

(declare-fun b!7269245 () Bool)

(declare-fun c!1352964 () Bool)

(declare-fun e!4359134 () Bool)

(assert (=> b!7269245 (= c!1352964 e!4359134)))

(declare-fun res!2946944 () Bool)

(assert (=> b!7269245 (=> (not res!2946944) (not e!4359134))))

(assert (=> b!7269245 (= res!2946944 (is-Concat!27633 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun e!4359133 () (Set Context!15456))

(assert (=> b!7269245 (= e!4359130 e!4359133)))

(declare-fun b!7269246 () Bool)

(assert (=> b!7269246 (= e!4359131 e!4359130)))

(declare-fun c!1352965 () Bool)

(assert (=> b!7269246 (= c!1352965 (is-Union!18788 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun d!2261915 () Bool)

(declare-fun c!1352963 () Bool)

(assert (=> d!2261915 (= c!1352963 (and (is-ElementMatch!18788 (h!77215 (exprs!8228 ct1!250))) (= (c!1352920 (h!77215 (exprs!8228 ct1!250))) (h!77216 s!7854))))))

(assert (=> d!2261915 (= (derivationStepZipperDown!2722 (h!77215 (exprs!8228 ct1!250)) lt!2593867 (h!77216 s!7854)) e!4359131)))

(declare-fun b!7269247 () Bool)

(declare-fun c!1352962 () Bool)

(assert (=> b!7269247 (= c!1352962 (is-Star!18788 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun e!4359129 () (Set Context!15456))

(assert (=> b!7269247 (= e!4359132 e!4359129)))

(declare-fun call!662824 () List!70891)

(declare-fun bm!662817 () Bool)

(declare-fun c!1352966 () Bool)

(assert (=> bm!662817 (= call!662822 (derivationStepZipperDown!2722 (ite c!1352965 (regTwo!38089 (h!77215 (exprs!8228 ct1!250))) (ite c!1352964 (regTwo!38088 (h!77215 (exprs!8228 ct1!250))) (ite c!1352966 (regOne!38088 (h!77215 (exprs!8228 ct1!250))) (reg!19117 (h!77215 (exprs!8228 ct1!250)))))) (ite (or c!1352965 c!1352964) lt!2593867 (Context!15457 call!662824)) (h!77216 s!7854)))))

(declare-fun b!7269248 () Bool)

(declare-fun call!662823 () (Set Context!15456))

(assert (=> b!7269248 (= e!4359133 (set.union call!662827 call!662823))))

(declare-fun b!7269249 () Bool)

(assert (=> b!7269249 (= e!4359133 e!4359132)))

(assert (=> b!7269249 (= c!1352966 (is-Concat!27633 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun bm!662818 () Bool)

(declare-fun call!662825 () List!70891)

(assert (=> bm!662818 (= call!662824 call!662825)))

(declare-fun b!7269250 () Bool)

(assert (=> b!7269250 (= e!4359129 call!662826)))

(declare-fun bm!662819 () Bool)

(assert (=> bm!662819 (= call!662826 call!662823)))

(declare-fun bm!662820 () Bool)

(assert (=> bm!662820 (= call!662827 (derivationStepZipperDown!2722 (ite c!1352965 (regOne!38089 (h!77215 (exprs!8228 ct1!250))) (regOne!38088 (h!77215 (exprs!8228 ct1!250)))) (ite c!1352965 lt!2593867 (Context!15457 call!662825)) (h!77216 s!7854)))))

(declare-fun bm!662821 () Bool)

(declare-fun $colon$colon!2962 (List!70891 Regex!18788) List!70891)

(assert (=> bm!662821 (= call!662825 ($colon$colon!2962 (exprs!8228 lt!2593867) (ite (or c!1352964 c!1352966) (regTwo!38088 (h!77215 (exprs!8228 ct1!250))) (h!77215 (exprs!8228 ct1!250)))))))

(declare-fun b!7269251 () Bool)

(assert (=> b!7269251 (= e!4359129 (as set.empty (Set Context!15456)))))

(declare-fun bm!662822 () Bool)

(assert (=> bm!662822 (= call!662823 call!662822)))

(declare-fun b!7269252 () Bool)

(assert (=> b!7269252 (= e!4359134 (nullable!7988 (regOne!38088 (h!77215 (exprs!8228 ct1!250)))))))

(assert (= (and d!2261915 c!1352963) b!7269244))

(assert (= (and d!2261915 (not c!1352963)) b!7269246))

(assert (= (and b!7269246 c!1352965) b!7269242))

(assert (= (and b!7269246 (not c!1352965)) b!7269245))

(assert (= (and b!7269245 res!2946944) b!7269252))

(assert (= (and b!7269245 c!1352964) b!7269248))

(assert (= (and b!7269245 (not c!1352964)) b!7269249))

(assert (= (and b!7269249 c!1352966) b!7269243))

(assert (= (and b!7269249 (not c!1352966)) b!7269247))

(assert (= (and b!7269247 c!1352962) b!7269250))

(assert (= (and b!7269247 (not c!1352962)) b!7269251))

(assert (= (or b!7269243 b!7269250) bm!662818))

(assert (= (or b!7269243 b!7269250) bm!662819))

(assert (= (or b!7269248 bm!662818) bm!662821))

(assert (= (or b!7269248 bm!662819) bm!662822))

(assert (= (or b!7269242 b!7269248) bm!662820))

(assert (= (or b!7269242 bm!662822) bm!662817))

(declare-fun m!7954520 () Bool)

(assert (=> bm!662820 m!7954520))

(declare-fun m!7954522 () Bool)

(assert (=> b!7269252 m!7954522))

(declare-fun m!7954524 () Bool)

(assert (=> bm!662821 m!7954524))

(declare-fun m!7954526 () Bool)

(assert (=> bm!662817 m!7954526))

(declare-fun m!7954528 () Bool)

(assert (=> b!7269244 m!7954528))

(assert (=> b!7269099 d!2261915))

(declare-fun d!2261919 () Bool)

(declare-fun c!1352967 () Bool)

(declare-fun e!4359135 () Bool)

(assert (=> d!2261919 (= c!1352967 e!4359135)))

(declare-fun res!2946945 () Bool)

(assert (=> d!2261919 (=> (not res!2946945) (not e!4359135))))

(assert (=> d!2261919 (= res!2946945 (is-Cons!70767 (exprs!8228 lt!2593867)))))

(declare-fun e!4359136 () (Set Context!15456))

(assert (=> d!2261919 (= (derivationStepZipperUp!2558 lt!2593867 (h!77216 s!7854)) e!4359136)))

(declare-fun b!7269253 () Bool)

(declare-fun e!4359137 () (Set Context!15456))

(assert (=> b!7269253 (= e!4359136 e!4359137)))

(declare-fun c!1352968 () Bool)

(assert (=> b!7269253 (= c!1352968 (is-Cons!70767 (exprs!8228 lt!2593867)))))

(declare-fun call!662828 () (Set Context!15456))

(declare-fun b!7269254 () Bool)

(assert (=> b!7269254 (= e!4359136 (set.union call!662828 (derivationStepZipperUp!2558 (Context!15457 (t!384961 (exprs!8228 lt!2593867))) (h!77216 s!7854))))))

(declare-fun b!7269255 () Bool)

(assert (=> b!7269255 (= e!4359137 call!662828)))

(declare-fun bm!662823 () Bool)

(assert (=> bm!662823 (= call!662828 (derivationStepZipperDown!2722 (h!77215 (exprs!8228 lt!2593867)) (Context!15457 (t!384961 (exprs!8228 lt!2593867))) (h!77216 s!7854)))))

(declare-fun b!7269256 () Bool)

(assert (=> b!7269256 (= e!4359137 (as set.empty (Set Context!15456)))))

(declare-fun b!7269257 () Bool)

(assert (=> b!7269257 (= e!4359135 (nullable!7988 (h!77215 (exprs!8228 lt!2593867))))))

(assert (= (and d!2261919 res!2946945) b!7269257))

(assert (= (and d!2261919 c!1352967) b!7269254))

(assert (= (and d!2261919 (not c!1352967)) b!7269253))

(assert (= (and b!7269253 c!1352968) b!7269255))

(assert (= (and b!7269253 (not c!1352968)) b!7269256))

(assert (= (or b!7269254 b!7269255) bm!662823))

(declare-fun m!7954530 () Bool)

(assert (=> b!7269254 m!7954530))

(declare-fun m!7954532 () Bool)

(assert (=> bm!662823 m!7954532))

(declare-fun m!7954534 () Bool)

(assert (=> b!7269257 m!7954534))

(assert (=> b!7269099 d!2261919))

(declare-fun d!2261921 () Bool)

(declare-fun res!2946946 () Bool)

(declare-fun e!4359138 () Bool)

(assert (=> d!2261921 (=> res!2946946 e!4359138)))

(assert (=> d!2261921 (= res!2946946 (is-Nil!70767 (exprs!8228 ct2!346)))))

(assert (=> d!2261921 (= (forall!17617 (exprs!8228 ct2!346) lambda!448164) e!4359138)))

(declare-fun b!7269258 () Bool)

(declare-fun e!4359139 () Bool)

(assert (=> b!7269258 (= e!4359138 e!4359139)))

(declare-fun res!2946947 () Bool)

(assert (=> b!7269258 (=> (not res!2946947) (not e!4359139))))

(assert (=> b!7269258 (= res!2946947 (dynLambda!28916 lambda!448164 (h!77215 (exprs!8228 ct2!346))))))

(declare-fun b!7269259 () Bool)

(assert (=> b!7269259 (= e!4359139 (forall!17617 (t!384961 (exprs!8228 ct2!346)) lambda!448164))))

(assert (= (and d!2261921 (not res!2946946)) b!7269258))

(assert (= (and b!7269258 res!2946947) b!7269259))

(declare-fun b_lambda!280085 () Bool)

(assert (=> (not b_lambda!280085) (not b!7269258)))

(declare-fun m!7954536 () Bool)

(assert (=> b!7269258 m!7954536))

(declare-fun m!7954538 () Bool)

(assert (=> b!7269259 m!7954538))

(assert (=> b!7269110 d!2261921))

(declare-fun d!2261923 () Bool)

(declare-fun c!1352969 () Bool)

(assert (=> d!2261923 (= c!1352969 (isEmpty!40695 s!7854))))

(declare-fun e!4359140 () Bool)

(assert (=> d!2261923 (= (matchZipper!3692 (set.insert ct2!346 (as set.empty (Set Context!15456))) s!7854) e!4359140)))

(declare-fun b!7269260 () Bool)

(assert (=> b!7269260 (= e!4359140 (nullableZipper!2995 (set.insert ct2!346 (as set.empty (Set Context!15456)))))))

(declare-fun b!7269261 () Bool)

(assert (=> b!7269261 (= e!4359140 (matchZipper!3692 (derivationStepZipper!3528 (set.insert ct2!346 (as set.empty (Set Context!15456))) (head!14993 s!7854)) (tail!14482 s!7854)))))

(assert (= (and d!2261923 c!1352969) b!7269260))

(assert (= (and d!2261923 (not c!1352969)) b!7269261))

(assert (=> d!2261923 m!7954468))

(assert (=> b!7269260 m!7954312))

(declare-fun m!7954540 () Bool)

(assert (=> b!7269260 m!7954540))

(assert (=> b!7269261 m!7954472))

(assert (=> b!7269261 m!7954312))

(assert (=> b!7269261 m!7954472))

(declare-fun m!7954542 () Bool)

(assert (=> b!7269261 m!7954542))

(assert (=> b!7269261 m!7954476))

(assert (=> b!7269261 m!7954542))

(assert (=> b!7269261 m!7954476))

(declare-fun m!7954544 () Bool)

(assert (=> b!7269261 m!7954544))

(assert (=> start!709220 d!2261923))

(declare-fun bs!1910761 () Bool)

(declare-fun d!2261925 () Bool)

(assert (= bs!1910761 (and d!2261925 b!7269107)))

(declare-fun lambda!448204 () Int)

(assert (=> bs!1910761 (= lambda!448204 lambda!448164)))

(declare-fun bs!1910762 () Bool)

(assert (= bs!1910762 (and d!2261925 d!2261903)))

(assert (=> bs!1910762 (= lambda!448204 lambda!448201)))

(assert (=> d!2261925 (= (inv!89981 ct2!346) (forall!17617 (exprs!8228 ct2!346) lambda!448204))))

(declare-fun bs!1910763 () Bool)

(assert (= bs!1910763 d!2261925))

(declare-fun m!7954546 () Bool)

(assert (=> bs!1910763 m!7954546))

(assert (=> start!709220 d!2261925))

(declare-fun bs!1910764 () Bool)

(declare-fun d!2261927 () Bool)

(assert (= bs!1910764 (and d!2261927 b!7269107)))

(declare-fun lambda!448205 () Int)

(assert (=> bs!1910764 (= lambda!448205 lambda!448164)))

(declare-fun bs!1910765 () Bool)

(assert (= bs!1910765 (and d!2261927 d!2261903)))

(assert (=> bs!1910765 (= lambda!448205 lambda!448201)))

(declare-fun bs!1910766 () Bool)

(assert (= bs!1910766 (and d!2261927 d!2261925)))

(assert (=> bs!1910766 (= lambda!448205 lambda!448204)))

(assert (=> d!2261927 (= (inv!89981 ct1!250) (forall!17617 (exprs!8228 ct1!250) lambda!448205))))

(declare-fun bs!1910767 () Bool)

(assert (= bs!1910767 d!2261927))

(declare-fun m!7954548 () Bool)

(assert (=> bs!1910767 m!7954548))

(assert (=> start!709220 d!2261927))

(assert (=> b!7269105 d!2261901))

(declare-fun b!7269284 () Bool)

(declare-fun e!4359154 () (Set Context!15456))

(declare-fun call!662834 () (Set Context!15456))

(declare-fun call!662829 () (Set Context!15456))

(assert (=> b!7269284 (= e!4359154 (set.union call!662834 call!662829))))

(declare-fun b!7269285 () Bool)

(declare-fun e!4359156 () (Set Context!15456))

(declare-fun call!662833 () (Set Context!15456))

(assert (=> b!7269285 (= e!4359156 call!662833)))

(declare-fun b!7269286 () Bool)

(declare-fun e!4359155 () (Set Context!15456))

(assert (=> b!7269286 (= e!4359155 (set.insert lt!2593864 (as set.empty (Set Context!15456))))))

(declare-fun b!7269287 () Bool)

(declare-fun c!1352982 () Bool)

(declare-fun e!4359158 () Bool)

(assert (=> b!7269287 (= c!1352982 e!4359158)))

(declare-fun res!2946950 () Bool)

(assert (=> b!7269287 (=> (not res!2946950) (not e!4359158))))

(assert (=> b!7269287 (= res!2946950 (is-Concat!27633 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun e!4359157 () (Set Context!15456))

(assert (=> b!7269287 (= e!4359154 e!4359157)))

(declare-fun b!7269288 () Bool)

(assert (=> b!7269288 (= e!4359155 e!4359154)))

(declare-fun c!1352983 () Bool)

(assert (=> b!7269288 (= c!1352983 (is-Union!18788 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun d!2261929 () Bool)

(declare-fun c!1352981 () Bool)

(assert (=> d!2261929 (= c!1352981 (and (is-ElementMatch!18788 (h!77215 (exprs!8228 ct1!250))) (= (c!1352920 (h!77215 (exprs!8228 ct1!250))) (h!77216 s!7854))))))

(assert (=> d!2261929 (= (derivationStepZipperDown!2722 (h!77215 (exprs!8228 ct1!250)) lt!2593864 (h!77216 s!7854)) e!4359155)))

(declare-fun b!7269289 () Bool)

(declare-fun c!1352980 () Bool)

(assert (=> b!7269289 (= c!1352980 (is-Star!18788 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun e!4359153 () (Set Context!15456))

(assert (=> b!7269289 (= e!4359156 e!4359153)))

(declare-fun c!1352984 () Bool)

(declare-fun bm!662824 () Bool)

(declare-fun call!662831 () List!70891)

(assert (=> bm!662824 (= call!662829 (derivationStepZipperDown!2722 (ite c!1352983 (regTwo!38089 (h!77215 (exprs!8228 ct1!250))) (ite c!1352982 (regTwo!38088 (h!77215 (exprs!8228 ct1!250))) (ite c!1352984 (regOne!38088 (h!77215 (exprs!8228 ct1!250))) (reg!19117 (h!77215 (exprs!8228 ct1!250)))))) (ite (or c!1352983 c!1352982) lt!2593864 (Context!15457 call!662831)) (h!77216 s!7854)))))

(declare-fun b!7269290 () Bool)

(declare-fun call!662830 () (Set Context!15456))

(assert (=> b!7269290 (= e!4359157 (set.union call!662834 call!662830))))

(declare-fun b!7269291 () Bool)

(assert (=> b!7269291 (= e!4359157 e!4359156)))

(assert (=> b!7269291 (= c!1352984 (is-Concat!27633 (h!77215 (exprs!8228 ct1!250))))))

(declare-fun bm!662825 () Bool)

(declare-fun call!662832 () List!70891)

(assert (=> bm!662825 (= call!662831 call!662832)))

(declare-fun b!7269292 () Bool)

(assert (=> b!7269292 (= e!4359153 call!662833)))

(declare-fun bm!662826 () Bool)

(assert (=> bm!662826 (= call!662833 call!662830)))

(declare-fun bm!662827 () Bool)

(assert (=> bm!662827 (= call!662834 (derivationStepZipperDown!2722 (ite c!1352983 (regOne!38089 (h!77215 (exprs!8228 ct1!250))) (regOne!38088 (h!77215 (exprs!8228 ct1!250)))) (ite c!1352983 lt!2593864 (Context!15457 call!662832)) (h!77216 s!7854)))))

(declare-fun bm!662828 () Bool)

(assert (=> bm!662828 (= call!662832 ($colon$colon!2962 (exprs!8228 lt!2593864) (ite (or c!1352982 c!1352984) (regTwo!38088 (h!77215 (exprs!8228 ct1!250))) (h!77215 (exprs!8228 ct1!250)))))))

(declare-fun b!7269293 () Bool)

(assert (=> b!7269293 (= e!4359153 (as set.empty (Set Context!15456)))))

(declare-fun bm!662829 () Bool)

(assert (=> bm!662829 (= call!662830 call!662829)))

(declare-fun b!7269294 () Bool)

(assert (=> b!7269294 (= e!4359158 (nullable!7988 (regOne!38088 (h!77215 (exprs!8228 ct1!250)))))))

(assert (= (and d!2261929 c!1352981) b!7269286))

(assert (= (and d!2261929 (not c!1352981)) b!7269288))

(assert (= (and b!7269288 c!1352983) b!7269284))

(assert (= (and b!7269288 (not c!1352983)) b!7269287))

(assert (= (and b!7269287 res!2946950) b!7269294))

(assert (= (and b!7269287 c!1352982) b!7269290))

(assert (= (and b!7269287 (not c!1352982)) b!7269291))

(assert (= (and b!7269291 c!1352984) b!7269285))

(assert (= (and b!7269291 (not c!1352984)) b!7269289))

(assert (= (and b!7269289 c!1352980) b!7269292))

(assert (= (and b!7269289 (not c!1352980)) b!7269293))

(assert (= (or b!7269285 b!7269292) bm!662825))

(assert (= (or b!7269285 b!7269292) bm!662826))

(assert (= (or b!7269290 bm!662825) bm!662828))

(assert (= (or b!7269290 bm!662826) bm!662829))

(assert (= (or b!7269284 b!7269290) bm!662827))

(assert (= (or b!7269284 bm!662829) bm!662824))

(declare-fun m!7954550 () Bool)

(assert (=> bm!662827 m!7954550))

(assert (=> b!7269294 m!7954522))

(declare-fun m!7954552 () Bool)

(assert (=> bm!662828 m!7954552))

(declare-fun m!7954554 () Bool)

(assert (=> bm!662824 m!7954554))

(assert (=> b!7269286 m!7954304))

(assert (=> b!7269105 d!2261929))

(declare-fun d!2261931 () Bool)

(declare-fun e!4359159 () Bool)

(assert (=> d!2261931 e!4359159))

(declare-fun res!2946951 () Bool)

(assert (=> d!2261931 (=> (not res!2946951) (not e!4359159))))

(declare-fun lt!2593977 () List!70891)

(assert (=> d!2261931 (= res!2946951 (= (content!14766 lt!2593977) (set.union (content!14766 lt!2593885) (content!14766 (exprs!8228 ct2!346)))))))

(declare-fun e!4359160 () List!70891)

(assert (=> d!2261931 (= lt!2593977 e!4359160)))

(declare-fun c!1352985 () Bool)

(assert (=> d!2261931 (= c!1352985 (is-Nil!70767 lt!2593885))))

(assert (=> d!2261931 (= (++!16688 lt!2593885 (exprs!8228 ct2!346)) lt!2593977)))

(declare-fun b!7269295 () Bool)

(assert (=> b!7269295 (= e!4359160 (exprs!8228 ct2!346))))

(declare-fun b!7269297 () Bool)

(declare-fun res!2946952 () Bool)

(assert (=> b!7269297 (=> (not res!2946952) (not e!4359159))))

(assert (=> b!7269297 (= res!2946952 (= (size!41814 lt!2593977) (+ (size!41814 lt!2593885) (size!41814 (exprs!8228 ct2!346)))))))

(declare-fun b!7269298 () Bool)

(assert (=> b!7269298 (= e!4359159 (or (not (= (exprs!8228 ct2!346) Nil!70767)) (= lt!2593977 lt!2593885)))))

(declare-fun b!7269296 () Bool)

(assert (=> b!7269296 (= e!4359160 (Cons!70767 (h!77215 lt!2593885) (++!16688 (t!384961 lt!2593885) (exprs!8228 ct2!346))))))

(assert (= (and d!2261931 c!1352985) b!7269295))

(assert (= (and d!2261931 (not c!1352985)) b!7269296))

(assert (= (and d!2261931 res!2946951) b!7269297))

(assert (= (and b!7269297 res!2946952) b!7269298))

(declare-fun m!7954556 () Bool)

(assert (=> d!2261931 m!7954556))

(declare-fun m!7954558 () Bool)

(assert (=> d!2261931 m!7954558))

(assert (=> d!2261931 m!7954442))

(declare-fun m!7954560 () Bool)

(assert (=> b!7269297 m!7954560))

(declare-fun m!7954562 () Bool)

(assert (=> b!7269297 m!7954562))

(assert (=> b!7269297 m!7954448))

(declare-fun m!7954564 () Bool)

(assert (=> b!7269296 m!7954564))

(assert (=> b!7269105 d!2261931))

(assert (=> b!7269105 d!2261907))

(declare-fun bs!1910768 () Bool)

(declare-fun d!2261933 () Bool)

(assert (= bs!1910768 (and d!2261933 b!7269107)))

(declare-fun lambda!448208 () Int)

(assert (=> bs!1910768 (not (= lambda!448208 lambda!448164))))

(declare-fun bs!1910769 () Bool)

(assert (= bs!1910769 (and d!2261933 d!2261903)))

(assert (=> bs!1910769 (not (= lambda!448208 lambda!448201))))

(declare-fun bs!1910770 () Bool)

(assert (= bs!1910770 (and d!2261933 d!2261925)))

(assert (=> bs!1910770 (not (= lambda!448208 lambda!448204))))

(declare-fun bs!1910771 () Bool)

(assert (= bs!1910771 (and d!2261933 d!2261927)))

(assert (=> bs!1910771 (not (= lambda!448208 lambda!448205))))

(assert (=> d!2261933 (= (nullableContext!278 ct1!250) (forall!17617 (exprs!8228 ct1!250) lambda!448208))))

(declare-fun bs!1910772 () Bool)

(assert (= bs!1910772 d!2261933))

(declare-fun m!7954566 () Bool)

(assert (=> bs!1910772 m!7954566))

(assert (=> b!7269100 d!2261933))

(declare-fun b!7269303 () Bool)

(declare-fun e!4359163 () Bool)

(declare-fun tp!2040899 () Bool)

(declare-fun tp!2040900 () Bool)

(assert (=> b!7269303 (= e!4359163 (and tp!2040899 tp!2040900))))

(assert (=> b!7269108 (= tp!2040885 e!4359163)))

(assert (= (and b!7269108 (is-Cons!70767 (exprs!8228 ct1!250))) b!7269303))

(declare-fun b!7269308 () Bool)

(declare-fun e!4359166 () Bool)

(declare-fun tp!2040903 () Bool)

(assert (=> b!7269308 (= e!4359166 (and tp_is_empty!47041 tp!2040903))))

(assert (=> b!7269106 (= tp!2040884 e!4359166)))

(assert (= (and b!7269106 (is-Cons!70768 (t!384962 s!7854))) b!7269308))

(declare-fun b!7269309 () Bool)

(declare-fun e!4359167 () Bool)

(declare-fun tp!2040904 () Bool)

(declare-fun tp!2040905 () Bool)

(assert (=> b!7269309 (= e!4359167 (and tp!2040904 tp!2040905))))

(assert (=> b!7269101 (= tp!2040883 e!4359167)))

(assert (= (and b!7269101 (is-Cons!70767 (exprs!8228 ct2!346))) b!7269309))

(declare-fun b_lambda!280087 () Bool)

(assert (= b_lambda!280083 (or b!7269107 b_lambda!280087)))

(declare-fun bs!1910773 () Bool)

(declare-fun d!2261935 () Bool)

(assert (= bs!1910773 (and d!2261935 b!7269107)))

(assert (=> bs!1910773 (= (dynLambda!28915 lambda!448165 lt!2593864) (derivationStepZipperUp!2558 lt!2593864 (h!77216 s!7854)))))

(assert (=> bs!1910773 m!7954308))

(assert (=> d!2261899 d!2261935))

(declare-fun b_lambda!280089 () Bool)

(assert (= b_lambda!280081 (or b!7269107 b_lambda!280089)))

(declare-fun bs!1910774 () Bool)

(declare-fun d!2261937 () Bool)

(assert (= bs!1910774 (and d!2261937 b!7269107)))

(declare-fun validRegex!9580 (Regex!18788) Bool)

(assert (=> bs!1910774 (= (dynLambda!28916 lambda!448164 (h!77215 lt!2593885)) (validRegex!9580 (h!77215 lt!2593885)))))

(declare-fun m!7954568 () Bool)

(assert (=> bs!1910774 m!7954568))

(assert (=> b!7269198 d!2261937))

(declare-fun b_lambda!280091 () Bool)

(assert (= b_lambda!280079 (or b!7269107 b_lambda!280091)))

(declare-fun bs!1910775 () Bool)

(declare-fun d!2261939 () Bool)

(assert (= bs!1910775 (and d!2261939 b!7269107)))

(assert (=> bs!1910775 (= (dynLambda!28915 lambda!448165 ct1!250) (derivationStepZipperUp!2558 ct1!250 (h!77216 s!7854)))))

(assert (=> bs!1910775 m!7954338))

(assert (=> d!2261885 d!2261939))

(declare-fun b_lambda!280093 () Bool)

(assert (= b_lambda!280077 (or b!7269107 b_lambda!280093)))

(declare-fun bs!1910776 () Bool)

(declare-fun d!2261941 () Bool)

(assert (= bs!1910776 (and d!2261941 b!7269107)))

(assert (=> bs!1910776 (= (dynLambda!28915 lambda!448165 lt!2593878) (derivationStepZipperUp!2558 lt!2593878 (h!77216 s!7854)))))

(assert (=> bs!1910776 m!7954334))

(assert (=> d!2261873 d!2261941))

(declare-fun b_lambda!280095 () Bool)

(assert (= b_lambda!280085 (or b!7269107 b_lambda!280095)))

(declare-fun bs!1910777 () Bool)

(declare-fun d!2261943 () Bool)

(assert (= bs!1910777 (and d!2261943 b!7269107)))

(assert (=> bs!1910777 (= (dynLambda!28916 lambda!448164 (h!77215 (exprs!8228 ct2!346))) (validRegex!9580 (h!77215 (exprs!8228 ct2!346))))))

(declare-fun m!7954570 () Bool)

(assert (=> bs!1910777 m!7954570))

(assert (=> b!7269258 d!2261943))

(push 1)

(assert (not d!2261903))

(assert (not b!7269260))

(assert (not b!7269187))

(assert (not b!7269170))

(assert (not d!2261887))

(assert (not d!2261901))

(assert (not bm!662801))

(assert (not b!7269254))

(assert (not bs!1910774))

(assert (not b_lambda!280089))

(assert (not b!7269259))

(assert (not b_lambda!280091))

(assert (not bm!662820))

(assert (not bm!662800))

(assert (not b!7269199))

(assert tp_is_empty!47041)

(assert (not d!2261933))

(assert (not b!7269180))

(assert (not d!2261931))

(assert (not d!2261873))

(assert (not b!7269257))

(assert (not b!7269252))

(assert (not b!7269206))

(assert (not bm!662823))

(assert (not d!2261923))

(assert (not bm!662824))

(assert (not b!7269294))

(assert (not bm!662828))

(assert (not b!7269297))

(assert (not bm!662817))

(assert (not bs!1910773))

(assert (not d!2261875))

(assert (not b_lambda!280087))

(assert (not b!7269296))

(assert (not d!2261883))

(assert (not b!7269184))

(assert (not b!7269303))

(assert (not b!7269192))

(assert (not d!2261877))

(assert (not b!7269308))

(assert (not b!7269203))

(assert (not b!7269261))

(assert (not b!7269167))

(assert (not b_lambda!280095))

(assert (not d!2261885))

(assert (not bm!662821))

(assert (not d!2261909))

(assert (not b_lambda!280093))

(assert (not d!2261881))

(assert (not bs!1910776))

(assert (not bs!1910777))

(assert (not d!2261893))

(assert (not d!2261927))

(assert (not b!7269181))

(assert (not d!2261891))

(assert (not bs!1910775))

(assert (not d!2261899))

(assert (not bm!662799))

(assert (not b!7269193))

(assert (not bm!662827))

(assert (not d!2261925))

(assert (not b!7269309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

