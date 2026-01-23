; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702150 () Bool)

(assert start!702150)

(declare-fun b!7234107 () Bool)

(assert (=> b!7234107 true))

(declare-fun b!7234100 () Bool)

(assert (=> b!7234100 true))

(declare-fun e!4336854 () Bool)

(declare-datatypes ((C!37290 0))(
  ( (C!37291 (val!28593 Int)) )
))
(declare-datatypes ((Regex!18508 0))(
  ( (ElementMatch!18508 (c!1342446 C!37290)) (Concat!27353 (regOne!37528 Regex!18508) (regTwo!37528 Regex!18508)) (EmptyExpr!18508) (Star!18508 (reg!18837 Regex!18508)) (EmptyLang!18508) (Union!18508 (regOne!37529 Regex!18508) (regTwo!37529 Regex!18508)) )
))
(declare-datatypes ((List!70132 0))(
  ( (Nil!70008) (Cons!70008 (h!76456 Regex!18508) (t!384183 List!70132)) )
))
(declare-datatypes ((Context!14896 0))(
  ( (Context!14897 (exprs!7948 List!70132)) )
))
(declare-fun ct1!232 () Context!14896)

(declare-fun lambda!439850 () Int)

(declare-fun forall!17339 (List!70132 Int) Bool)

(assert (=> b!7234100 (= e!4336854 (forall!17339 (exprs!7948 ct1!232) lambda!439850))))

(declare-fun lt!2574469 () (Set Context!14896))

(declare-datatypes ((List!70133 0))(
  ( (Nil!70009) (Cons!70009 (h!76457 C!37290) (t!384184 List!70133)) )
))
(declare-fun s1!1971 () List!70133)

(declare-fun lambda!439852 () Int)

(declare-fun flatMap!2712 ((Set Context!14896) Int) (Set Context!14896))

(declare-fun derivationStepZipperUp!2382 (Context!14896 C!37290) (Set Context!14896))

(assert (=> b!7234100 (= (flatMap!2712 lt!2574469 lambda!439852) (derivationStepZipperUp!2382 ct1!232 (h!76457 s1!1971)))))

(declare-datatypes ((Unit!163554 0))(
  ( (Unit!163555) )
))
(declare-fun lt!2574467 () Unit!163554)

(declare-fun lemmaFlatMapOnSingletonSet!2139 ((Set Context!14896) Context!14896 Int) Unit!163554)

(assert (=> b!7234100 (= lt!2574467 (lemmaFlatMapOnSingletonSet!2139 lt!2574469 ct1!232 lambda!439852))))

(declare-fun lt!2574473 () List!70132)

(declare-fun lt!2574476 () (Set Context!14896))

(declare-fun derivationStepZipperDown!2552 (Regex!18508 Context!14896 C!37290) (Set Context!14896))

(declare-fun tail!14135 (List!70132) List!70132)

(assert (=> b!7234100 (= lt!2574476 (derivationStepZipperDown!2552 (h!76456 (exprs!7948 ct1!232)) (Context!14897 (tail!14135 lt!2574473)) (h!76457 s1!1971)))))

(declare-fun b!7234101 () Bool)

(declare-fun e!4336849 () Bool)

(declare-fun tp!2034297 () Bool)

(assert (=> b!7234101 (= e!4336849 tp!2034297)))

(declare-fun b!7234102 () Bool)

(declare-fun e!4336850 () Bool)

(declare-fun tp_is_empty!46481 () Bool)

(declare-fun tp!2034300 () Bool)

(assert (=> b!7234102 (= e!4336850 (and tp_is_empty!46481 tp!2034300))))

(declare-fun b!7234103 () Bool)

(declare-fun e!4336856 () Bool)

(declare-fun tp!2034298 () Bool)

(assert (=> b!7234103 (= e!4336856 (and tp_is_empty!46481 tp!2034298))))

(declare-fun b!7234104 () Bool)

(declare-fun e!4336857 () Bool)

(declare-fun e!4336855 () Bool)

(assert (=> b!7234104 (= e!4336857 e!4336855)))

(declare-fun res!2934864 () Bool)

(assert (=> b!7234104 (=> res!2934864 e!4336855)))

(declare-fun isEmpty!40349 (List!70132) Bool)

(assert (=> b!7234104 (= res!2934864 (isEmpty!40349 (exprs!7948 ct1!232)))))

(declare-fun lt!2574475 () (Set Context!14896))

(assert (=> b!7234104 (= lt!2574475 (derivationStepZipperUp!2382 ct1!232 (h!76457 s1!1971)))))

(declare-fun lt!2574478 () Context!14896)

(declare-fun lt!2574468 () Unit!163554)

(declare-fun ct2!328 () Context!14896)

(declare-fun lemmaConcatPreservesForall!1317 (List!70132 List!70132 Int) Unit!163554)

(assert (=> b!7234104 (= lt!2574468 (lemmaConcatPreservesForall!1317 (exprs!7948 lt!2574478) (exprs!7948 ct2!328) lambda!439850))))

(declare-fun s2!1849 () List!70133)

(declare-fun matchZipper!3418 ((Set Context!14896) List!70133) Bool)

(declare-fun ++!16316 (List!70132 List!70132) List!70132)

(declare-fun ++!16317 (List!70133 List!70133) List!70133)

(assert (=> b!7234104 (matchZipper!3418 (set.insert (Context!14897 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328))) (as set.empty (Set Context!14896))) (++!16317 (t!384184 s1!1971) s2!1849))))

(declare-fun lt!2574471 () Unit!163554)

(assert (=> b!7234104 (= lt!2574471 (lemmaConcatPreservesForall!1317 (exprs!7948 lt!2574478) (exprs!7948 ct2!328) lambda!439850))))

(declare-fun lt!2574479 () Unit!163554)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!299 (Context!14896 Context!14896 List!70133 List!70133) Unit!163554)

(assert (=> b!7234104 (= lt!2574479 (lemmaConcatenateContextMatchesConcatOfStrings!299 lt!2574478 ct2!328 (t!384184 s1!1971) s2!1849))))

(declare-fun lt!2574464 () (Set Context!14896))

(declare-fun lambda!439851 () Int)

(declare-fun getWitness!2033 ((Set Context!14896) Int) Context!14896)

(assert (=> b!7234104 (= lt!2574478 (getWitness!2033 lt!2574464 lambda!439851))))

(declare-fun res!2934861 () Bool)

(declare-fun e!4336851 () Bool)

(assert (=> start!702150 (=> (not res!2934861) (not e!4336851))))

(assert (=> start!702150 (= res!2934861 (matchZipper!3418 lt!2574469 s1!1971))))

(assert (=> start!702150 (= lt!2574469 (set.insert ct1!232 (as set.empty (Set Context!14896))))))

(assert (=> start!702150 e!4336851))

(declare-fun e!4336853 () Bool)

(declare-fun inv!89281 (Context!14896) Bool)

(assert (=> start!702150 (and (inv!89281 ct1!232) e!4336853)))

(assert (=> start!702150 e!4336856))

(assert (=> start!702150 e!4336850))

(assert (=> start!702150 (and (inv!89281 ct2!328) e!4336849)))

(declare-fun b!7234105 () Bool)

(declare-fun e!4336852 () Bool)

(assert (=> b!7234105 (= e!4336851 e!4336852)))

(declare-fun res!2934865 () Bool)

(assert (=> b!7234105 (=> (not res!2934865) (not e!4336852))))

(assert (=> b!7234105 (= res!2934865 (and (not (is-Nil!70008 (exprs!7948 ct1!232))) (is-Cons!70009 s1!1971)))))

(assert (=> b!7234105 (= lt!2574473 (++!16316 (exprs!7948 ct1!232) (exprs!7948 ct2!328)))))

(declare-fun lt!2574477 () Unit!163554)

(assert (=> b!7234105 (= lt!2574477 (lemmaConcatPreservesForall!1317 (exprs!7948 ct1!232) (exprs!7948 ct2!328) lambda!439850))))

(declare-fun b!7234106 () Bool)

(assert (=> b!7234106 (= e!4336855 e!4336854)))

(declare-fun res!2934863 () Bool)

(assert (=> b!7234106 (=> res!2934863 e!4336854)))

(assert (=> b!7234106 (= res!2934863 (isEmpty!40349 lt!2574473))))

(declare-fun lt!2574470 () Unit!163554)

(assert (=> b!7234106 (= lt!2574470 (lemmaConcatPreservesForall!1317 (exprs!7948 ct1!232) (exprs!7948 ct2!328) lambda!439850))))

(declare-fun lt!2574472 () (Set Context!14896))

(assert (=> b!7234106 (= lt!2574472 (derivationStepZipperUp!2382 (Context!14897 lt!2574473) (h!76457 s1!1971)))))

(declare-fun lt!2574466 () Unit!163554)

(assert (=> b!7234106 (= lt!2574466 (lemmaConcatPreservesForall!1317 (exprs!7948 ct1!232) (exprs!7948 ct2!328) lambda!439850))))

(declare-fun lt!2574480 () (Set Context!14896))

(assert (=> b!7234106 (= lt!2574480 (derivationStepZipperDown!2552 (h!76456 (exprs!7948 ct1!232)) (Context!14897 (tail!14135 (exprs!7948 ct1!232))) (h!76457 s1!1971)))))

(declare-fun e!4336858 () Bool)

(assert (=> b!7234107 (= e!4336858 (not e!4336857))))

(declare-fun res!2934862 () Bool)

(assert (=> b!7234107 (=> res!2934862 e!4336857)))

(declare-fun exists!4159 ((Set Context!14896) Int) Bool)

(assert (=> b!7234107 (= res!2934862 (not (exists!4159 lt!2574464 lambda!439851)))))

(declare-datatypes ((List!70134 0))(
  ( (Nil!70010) (Cons!70010 (h!76458 Context!14896) (t!384185 List!70134)) )
))
(declare-fun lt!2574465 () List!70134)

(declare-fun exists!4160 (List!70134 Int) Bool)

(assert (=> b!7234107 (exists!4160 lt!2574465 lambda!439851)))

(declare-fun lt!2574474 () Unit!163554)

(declare-fun lemmaZipperMatchesExistsMatchingContext!651 (List!70134 List!70133) Unit!163554)

(assert (=> b!7234107 (= lt!2574474 (lemmaZipperMatchesExistsMatchingContext!651 lt!2574465 (t!384184 s1!1971)))))

(declare-fun toList!11365 ((Set Context!14896)) List!70134)

(assert (=> b!7234107 (= lt!2574465 (toList!11365 lt!2574464))))

(declare-fun b!7234108 () Bool)

(assert (=> b!7234108 (= e!4336852 e!4336858)))

(declare-fun res!2934866 () Bool)

(assert (=> b!7234108 (=> (not res!2934866) (not e!4336858))))

(assert (=> b!7234108 (= res!2934866 (matchZipper!3418 lt!2574464 (t!384184 s1!1971)))))

(declare-fun derivationStepZipper!3300 ((Set Context!14896) C!37290) (Set Context!14896))

(assert (=> b!7234108 (= lt!2574464 (derivationStepZipper!3300 lt!2574469 (h!76457 s1!1971)))))

(declare-fun b!7234109 () Bool)

(declare-fun res!2934867 () Bool)

(assert (=> b!7234109 (=> (not res!2934867) (not e!4336851))))

(assert (=> b!7234109 (= res!2934867 (matchZipper!3418 (set.insert ct2!328 (as set.empty (Set Context!14896))) s2!1849))))

(declare-fun b!7234110 () Bool)

(declare-fun tp!2034299 () Bool)

(assert (=> b!7234110 (= e!4336853 tp!2034299)))

(assert (= (and start!702150 res!2934861) b!7234109))

(assert (= (and b!7234109 res!2934867) b!7234105))

(assert (= (and b!7234105 res!2934865) b!7234108))

(assert (= (and b!7234108 res!2934866) b!7234107))

(assert (= (and b!7234107 (not res!2934862)) b!7234104))

(assert (= (and b!7234104 (not res!2934864)) b!7234106))

(assert (= (and b!7234106 (not res!2934863)) b!7234100))

(assert (= start!702150 b!7234110))

(assert (= (and start!702150 (is-Cons!70009 s1!1971)) b!7234103))

(assert (= (and start!702150 (is-Cons!70009 s2!1849)) b!7234102))

(assert (= start!702150 b!7234101))

(declare-fun m!7903988 () Bool)

(assert (=> b!7234107 m!7903988))

(declare-fun m!7903990 () Bool)

(assert (=> b!7234107 m!7903990))

(declare-fun m!7903992 () Bool)

(assert (=> b!7234107 m!7903992))

(declare-fun m!7903994 () Bool)

(assert (=> b!7234107 m!7903994))

(declare-fun m!7903996 () Bool)

(assert (=> b!7234108 m!7903996))

(declare-fun m!7903998 () Bool)

(assert (=> b!7234108 m!7903998))

(declare-fun m!7904000 () Bool)

(assert (=> b!7234100 m!7904000))

(declare-fun m!7904002 () Bool)

(assert (=> b!7234100 m!7904002))

(declare-fun m!7904004 () Bool)

(assert (=> b!7234100 m!7904004))

(declare-fun m!7904006 () Bool)

(assert (=> b!7234100 m!7904006))

(declare-fun m!7904008 () Bool)

(assert (=> b!7234100 m!7904008))

(declare-fun m!7904010 () Bool)

(assert (=> b!7234100 m!7904010))

(declare-fun m!7904012 () Bool)

(assert (=> b!7234106 m!7904012))

(declare-fun m!7904014 () Bool)

(assert (=> b!7234106 m!7904014))

(declare-fun m!7904016 () Bool)

(assert (=> b!7234106 m!7904016))

(declare-fun m!7904018 () Bool)

(assert (=> b!7234106 m!7904018))

(declare-fun m!7904020 () Bool)

(assert (=> b!7234106 m!7904020))

(assert (=> b!7234106 m!7904018))

(declare-fun m!7904022 () Bool)

(assert (=> b!7234109 m!7904022))

(assert (=> b!7234109 m!7904022))

(declare-fun m!7904024 () Bool)

(assert (=> b!7234109 m!7904024))

(declare-fun m!7904026 () Bool)

(assert (=> start!702150 m!7904026))

(declare-fun m!7904028 () Bool)

(assert (=> start!702150 m!7904028))

(declare-fun m!7904030 () Bool)

(assert (=> start!702150 m!7904030))

(declare-fun m!7904032 () Bool)

(assert (=> start!702150 m!7904032))

(declare-fun m!7904034 () Bool)

(assert (=> b!7234104 m!7904034))

(assert (=> b!7234104 m!7904006))

(declare-fun m!7904036 () Bool)

(assert (=> b!7234104 m!7904036))

(declare-fun m!7904038 () Bool)

(assert (=> b!7234104 m!7904038))

(declare-fun m!7904040 () Bool)

(assert (=> b!7234104 m!7904040))

(declare-fun m!7904042 () Bool)

(assert (=> b!7234104 m!7904042))

(declare-fun m!7904044 () Bool)

(assert (=> b!7234104 m!7904044))

(declare-fun m!7904046 () Bool)

(assert (=> b!7234104 m!7904046))

(assert (=> b!7234104 m!7904044))

(assert (=> b!7234104 m!7904042))

(declare-fun m!7904048 () Bool)

(assert (=> b!7234104 m!7904048))

(assert (=> b!7234104 m!7904040))

(declare-fun m!7904050 () Bool)

(assert (=> b!7234105 m!7904050))

(assert (=> b!7234105 m!7904018))

(push 1)

(assert (not b!7234104))

(assert (not b!7234102))

(assert tp_is_empty!46481)

(assert (not b!7234101))

(assert (not b!7234105))

(assert (not b!7234106))

(assert (not b!7234109))

(assert (not b!7234103))

(assert (not b!7234108))

(assert (not b!7234107))

(assert (not b!7234110))

(assert (not start!702150))

(assert (not b!7234100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2247011 () Bool)

(assert (=> d!2247011 (= (tail!14135 (exprs!7948 ct1!232)) (t!384183 (exprs!7948 ct1!232)))))

(assert (=> b!7234106 d!2247011))

(declare-fun d!2247013 () Bool)

(assert (=> d!2247013 (forall!17339 (++!16316 (exprs!7948 ct1!232) (exprs!7948 ct2!328)) lambda!439850)))

(declare-fun lt!2574534 () Unit!163554)

(declare-fun choose!55570 (List!70132 List!70132 Int) Unit!163554)

(assert (=> d!2247013 (= lt!2574534 (choose!55570 (exprs!7948 ct1!232) (exprs!7948 ct2!328) lambda!439850))))

(assert (=> d!2247013 (forall!17339 (exprs!7948 ct1!232) lambda!439850)))

(assert (=> d!2247013 (= (lemmaConcatPreservesForall!1317 (exprs!7948 ct1!232) (exprs!7948 ct2!328) lambda!439850) lt!2574534)))

(declare-fun bs!1903125 () Bool)

(assert (= bs!1903125 d!2247013))

(assert (=> bs!1903125 m!7904050))

(assert (=> bs!1903125 m!7904050))

(declare-fun m!7904116 () Bool)

(assert (=> bs!1903125 m!7904116))

(declare-fun m!7904118 () Bool)

(assert (=> bs!1903125 m!7904118))

(assert (=> bs!1903125 m!7904004))

(assert (=> b!7234106 d!2247013))

(declare-fun d!2247015 () Bool)

(assert (=> d!2247015 (= (isEmpty!40349 lt!2574473) (is-Nil!70008 lt!2574473))))

(assert (=> b!7234106 d!2247015))

(declare-fun b!7234162 () Bool)

(declare-fun e!4336896 () (Set Context!14896))

(assert (=> b!7234162 (= e!4336896 (as set.empty (Set Context!14896)))))

(declare-fun b!7234163 () Bool)

(declare-fun call!658537 () (Set Context!14896))

(assert (=> b!7234163 (= e!4336896 call!658537)))

(declare-fun bm!658532 () Bool)

(assert (=> bm!658532 (= call!658537 (derivationStepZipperDown!2552 (h!76456 (exprs!7948 (Context!14897 lt!2574473))) (Context!14897 (t!384183 (exprs!7948 (Context!14897 lt!2574473)))) (h!76457 s1!1971)))))

(declare-fun b!7234165 () Bool)

(declare-fun e!4336897 () Bool)

(declare-fun nullable!7823 (Regex!18508) Bool)

(assert (=> b!7234165 (= e!4336897 (nullable!7823 (h!76456 (exprs!7948 (Context!14897 lt!2574473)))))))

(declare-fun e!4336895 () (Set Context!14896))

(declare-fun b!7234166 () Bool)

(assert (=> b!7234166 (= e!4336895 (set.union call!658537 (derivationStepZipperUp!2382 (Context!14897 (t!384183 (exprs!7948 (Context!14897 lt!2574473)))) (h!76457 s1!1971))))))

(declare-fun d!2247017 () Bool)

(declare-fun c!1342460 () Bool)

(assert (=> d!2247017 (= c!1342460 e!4336897)))

(declare-fun res!2934891 () Bool)

(assert (=> d!2247017 (=> (not res!2934891) (not e!4336897))))

(assert (=> d!2247017 (= res!2934891 (is-Cons!70008 (exprs!7948 (Context!14897 lt!2574473))))))

(assert (=> d!2247017 (= (derivationStepZipperUp!2382 (Context!14897 lt!2574473) (h!76457 s1!1971)) e!4336895)))

(declare-fun b!7234164 () Bool)

(assert (=> b!7234164 (= e!4336895 e!4336896)))

(declare-fun c!1342461 () Bool)

(assert (=> b!7234164 (= c!1342461 (is-Cons!70008 (exprs!7948 (Context!14897 lt!2574473))))))

(assert (= (and d!2247017 res!2934891) b!7234165))

(assert (= (and d!2247017 c!1342460) b!7234166))

(assert (= (and d!2247017 (not c!1342460)) b!7234164))

(assert (= (and b!7234164 c!1342461) b!7234163))

(assert (= (and b!7234164 (not c!1342461)) b!7234162))

(assert (= (or b!7234166 b!7234163) bm!658532))

(declare-fun m!7904120 () Bool)

(assert (=> bm!658532 m!7904120))

(declare-fun m!7904122 () Bool)

(assert (=> b!7234165 m!7904122))

(declare-fun m!7904124 () Bool)

(assert (=> b!7234166 m!7904124))

(assert (=> b!7234106 d!2247017))

(declare-fun c!1342472 () Bool)

(declare-fun c!1342473 () Bool)

(declare-fun bm!658545 () Bool)

(declare-fun c!1342476 () Bool)

(declare-fun call!658551 () (Set Context!14896))

(declare-fun call!658553 () List!70132)

(assert (=> bm!658545 (= call!658551 (derivationStepZipperDown!2552 (ite c!1342472 (regOne!37529 (h!76456 (exprs!7948 ct1!232))) (ite c!1342473 (regTwo!37528 (h!76456 (exprs!7948 ct1!232))) (ite c!1342476 (regOne!37528 (h!76456 (exprs!7948 ct1!232))) (reg!18837 (h!76456 (exprs!7948 ct1!232)))))) (ite (or c!1342472 c!1342473) (Context!14897 (tail!14135 (exprs!7948 ct1!232))) (Context!14897 call!658553)) (h!76457 s1!1971)))))

(declare-fun bm!658546 () Bool)

(declare-fun call!658554 () List!70132)

(declare-fun call!658552 () (Set Context!14896))

(assert (=> bm!658546 (= call!658552 (derivationStepZipperDown!2552 (ite c!1342472 (regTwo!37529 (h!76456 (exprs!7948 ct1!232))) (regOne!37528 (h!76456 (exprs!7948 ct1!232)))) (ite c!1342472 (Context!14897 (tail!14135 (exprs!7948 ct1!232))) (Context!14897 call!658554)) (h!76457 s1!1971)))))

(declare-fun b!7234190 () Bool)

(declare-fun c!1342475 () Bool)

(assert (=> b!7234190 (= c!1342475 (is-Star!18508 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun e!4336913 () (Set Context!14896))

(declare-fun e!4336914 () (Set Context!14896))

(assert (=> b!7234190 (= e!4336913 e!4336914)))

(declare-fun b!7234191 () Bool)

(declare-fun e!4336910 () (Set Context!14896))

(assert (=> b!7234191 (= e!4336910 (set.union call!658551 call!658552))))

(declare-fun bm!658547 () Bool)

(assert (=> bm!658547 (= call!658553 call!658554)))

(declare-fun bm!658548 () Bool)

(declare-fun call!658555 () (Set Context!14896))

(declare-fun call!658550 () (Set Context!14896))

(assert (=> bm!658548 (= call!658555 call!658550)))

(declare-fun b!7234192 () Bool)

(declare-fun e!4336912 () (Set Context!14896))

(assert (=> b!7234192 (= e!4336912 e!4336910)))

(assert (=> b!7234192 (= c!1342472 (is-Union!18508 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun bm!658549 () Bool)

(declare-fun $colon$colon!2867 (List!70132 Regex!18508) List!70132)

(assert (=> bm!658549 (= call!658554 ($colon$colon!2867 (exprs!7948 (Context!14897 (tail!14135 (exprs!7948 ct1!232)))) (ite (or c!1342473 c!1342476) (regTwo!37528 (h!76456 (exprs!7948 ct1!232))) (h!76456 (exprs!7948 ct1!232)))))))

(declare-fun b!7234193 () Bool)

(assert (=> b!7234193 (= e!4336913 call!658555)))

(declare-fun b!7234194 () Bool)

(assert (=> b!7234194 (= e!4336914 (as set.empty (Set Context!14896)))))

(declare-fun bm!658550 () Bool)

(assert (=> bm!658550 (= call!658550 call!658551)))

(declare-fun b!7234195 () Bool)

(declare-fun e!4336915 () Bool)

(assert (=> b!7234195 (= c!1342473 e!4336915)))

(declare-fun res!2934894 () Bool)

(assert (=> b!7234195 (=> (not res!2934894) (not e!4336915))))

(assert (=> b!7234195 (= res!2934894 (is-Concat!27353 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun e!4336911 () (Set Context!14896))

(assert (=> b!7234195 (= e!4336910 e!4336911)))

(declare-fun b!7234196 () Bool)

(assert (=> b!7234196 (= e!4336911 (set.union call!658552 call!658550))))

(declare-fun b!7234197 () Bool)

(assert (=> b!7234197 (= e!4336915 (nullable!7823 (regOne!37528 (h!76456 (exprs!7948 ct1!232)))))))

(declare-fun d!2247019 () Bool)

(declare-fun c!1342474 () Bool)

(assert (=> d!2247019 (= c!1342474 (and (is-ElementMatch!18508 (h!76456 (exprs!7948 ct1!232))) (= (c!1342446 (h!76456 (exprs!7948 ct1!232))) (h!76457 s1!1971))))))

(assert (=> d!2247019 (= (derivationStepZipperDown!2552 (h!76456 (exprs!7948 ct1!232)) (Context!14897 (tail!14135 (exprs!7948 ct1!232))) (h!76457 s1!1971)) e!4336912)))

(declare-fun b!7234189 () Bool)

(assert (=> b!7234189 (= e!4336911 e!4336913)))

(assert (=> b!7234189 (= c!1342476 (is-Concat!27353 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun b!7234198 () Bool)

(assert (=> b!7234198 (= e!4336914 call!658555)))

(declare-fun b!7234199 () Bool)

(assert (=> b!7234199 (= e!4336912 (set.insert (Context!14897 (tail!14135 (exprs!7948 ct1!232))) (as set.empty (Set Context!14896))))))

(assert (= (and d!2247019 c!1342474) b!7234199))

(assert (= (and d!2247019 (not c!1342474)) b!7234192))

(assert (= (and b!7234192 c!1342472) b!7234191))

(assert (= (and b!7234192 (not c!1342472)) b!7234195))

(assert (= (and b!7234195 res!2934894) b!7234197))

(assert (= (and b!7234195 c!1342473) b!7234196))

(assert (= (and b!7234195 (not c!1342473)) b!7234189))

(assert (= (and b!7234189 c!1342476) b!7234193))

(assert (= (and b!7234189 (not c!1342476)) b!7234190))

(assert (= (and b!7234190 c!1342475) b!7234198))

(assert (= (and b!7234190 (not c!1342475)) b!7234194))

(assert (= (or b!7234193 b!7234198) bm!658547))

(assert (= (or b!7234193 b!7234198) bm!658548))

(assert (= (or b!7234196 bm!658547) bm!658549))

(assert (= (or b!7234196 bm!658548) bm!658550))

(assert (= (or b!7234191 b!7234196) bm!658546))

(assert (= (or b!7234191 bm!658550) bm!658545))

(declare-fun m!7904126 () Bool)

(assert (=> b!7234199 m!7904126))

(declare-fun m!7904128 () Bool)

(assert (=> bm!658546 m!7904128))

(declare-fun m!7904130 () Bool)

(assert (=> bm!658549 m!7904130))

(declare-fun m!7904132 () Bool)

(assert (=> bm!658545 m!7904132))

(declare-fun m!7904134 () Bool)

(assert (=> b!7234197 m!7904134))

(assert (=> b!7234106 d!2247019))

(declare-fun d!2247023 () Bool)

(assert (=> d!2247023 (= (tail!14135 lt!2574473) (t!384183 lt!2574473))))

(assert (=> b!7234100 d!2247023))

(declare-fun d!2247025 () Bool)

(declare-fun res!2934899 () Bool)

(declare-fun e!4336922 () Bool)

(assert (=> d!2247025 (=> res!2934899 e!4336922)))

(assert (=> d!2247025 (= res!2934899 (is-Nil!70008 (exprs!7948 ct1!232)))))

(assert (=> d!2247025 (= (forall!17339 (exprs!7948 ct1!232) lambda!439850) e!4336922)))

(declare-fun b!7234208 () Bool)

(declare-fun e!4336923 () Bool)

(assert (=> b!7234208 (= e!4336922 e!4336923)))

(declare-fun res!2934900 () Bool)

(assert (=> b!7234208 (=> (not res!2934900) (not e!4336923))))

(declare-fun dynLambda!28543 (Int Regex!18508) Bool)

(assert (=> b!7234208 (= res!2934900 (dynLambda!28543 lambda!439850 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun b!7234209 () Bool)

(assert (=> b!7234209 (= e!4336923 (forall!17339 (t!384183 (exprs!7948 ct1!232)) lambda!439850))))

(assert (= (and d!2247025 (not res!2934899)) b!7234208))

(assert (= (and b!7234208 res!2934900) b!7234209))

(declare-fun b_lambda!277315 () Bool)

(assert (=> (not b_lambda!277315) (not b!7234208)))

(declare-fun m!7904136 () Bool)

(assert (=> b!7234208 m!7904136))

(declare-fun m!7904138 () Bool)

(assert (=> b!7234209 m!7904138))

(assert (=> b!7234100 d!2247025))

(declare-fun b!7234214 () Bool)

(declare-fun e!4336927 () (Set Context!14896))

(assert (=> b!7234214 (= e!4336927 (as set.empty (Set Context!14896)))))

(declare-fun b!7234215 () Bool)

(declare-fun call!658556 () (Set Context!14896))

(assert (=> b!7234215 (= e!4336927 call!658556)))

(declare-fun bm!658551 () Bool)

(assert (=> bm!658551 (= call!658556 (derivationStepZipperDown!2552 (h!76456 (exprs!7948 ct1!232)) (Context!14897 (t!384183 (exprs!7948 ct1!232))) (h!76457 s1!1971)))))

(declare-fun b!7234217 () Bool)

(declare-fun e!4336928 () Bool)

(assert (=> b!7234217 (= e!4336928 (nullable!7823 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun b!7234218 () Bool)

(declare-fun e!4336926 () (Set Context!14896))

(assert (=> b!7234218 (= e!4336926 (set.union call!658556 (derivationStepZipperUp!2382 (Context!14897 (t!384183 (exprs!7948 ct1!232))) (h!76457 s1!1971))))))

(declare-fun d!2247027 () Bool)

(declare-fun c!1342479 () Bool)

(assert (=> d!2247027 (= c!1342479 e!4336928)))

(declare-fun res!2934905 () Bool)

(assert (=> d!2247027 (=> (not res!2934905) (not e!4336928))))

(assert (=> d!2247027 (= res!2934905 (is-Cons!70008 (exprs!7948 ct1!232)))))

(assert (=> d!2247027 (= (derivationStepZipperUp!2382 ct1!232 (h!76457 s1!1971)) e!4336926)))

(declare-fun b!7234216 () Bool)

(assert (=> b!7234216 (= e!4336926 e!4336927)))

(declare-fun c!1342480 () Bool)

(assert (=> b!7234216 (= c!1342480 (is-Cons!70008 (exprs!7948 ct1!232)))))

(assert (= (and d!2247027 res!2934905) b!7234217))

(assert (= (and d!2247027 c!1342479) b!7234218))

(assert (= (and d!2247027 (not c!1342479)) b!7234216))

(assert (= (and b!7234216 c!1342480) b!7234215))

(assert (= (and b!7234216 (not c!1342480)) b!7234214))

(assert (= (or b!7234218 b!7234215) bm!658551))

(declare-fun m!7904140 () Bool)

(assert (=> bm!658551 m!7904140))

(declare-fun m!7904142 () Bool)

(assert (=> b!7234217 m!7904142))

(declare-fun m!7904144 () Bool)

(assert (=> b!7234218 m!7904144))

(assert (=> b!7234100 d!2247027))

(declare-fun d!2247029 () Bool)

(declare-fun dynLambda!28544 (Int Context!14896) (Set Context!14896))

(assert (=> d!2247029 (= (flatMap!2712 lt!2574469 lambda!439852) (dynLambda!28544 lambda!439852 ct1!232))))

(declare-fun lt!2574540 () Unit!163554)

(declare-fun choose!55571 ((Set Context!14896) Context!14896 Int) Unit!163554)

(assert (=> d!2247029 (= lt!2574540 (choose!55571 lt!2574469 ct1!232 lambda!439852))))

(assert (=> d!2247029 (= lt!2574469 (set.insert ct1!232 (as set.empty (Set Context!14896))))))

(assert (=> d!2247029 (= (lemmaFlatMapOnSingletonSet!2139 lt!2574469 ct1!232 lambda!439852) lt!2574540)))

(declare-fun b_lambda!277317 () Bool)

(assert (=> (not b_lambda!277317) (not d!2247029)))

(declare-fun bs!1903126 () Bool)

(assert (= bs!1903126 d!2247029))

(assert (=> bs!1903126 m!7904008))

(declare-fun m!7904160 () Bool)

(assert (=> bs!1903126 m!7904160))

(declare-fun m!7904162 () Bool)

(assert (=> bs!1903126 m!7904162))

(assert (=> bs!1903126 m!7904028))

(assert (=> b!7234100 d!2247029))

(declare-fun bm!658552 () Bool)

(declare-fun c!1342486 () Bool)

(declare-fun call!658560 () List!70132)

(declare-fun c!1342483 () Bool)

(declare-fun call!658558 () (Set Context!14896))

(declare-fun c!1342482 () Bool)

(assert (=> bm!658552 (= call!658558 (derivationStepZipperDown!2552 (ite c!1342482 (regOne!37529 (h!76456 (exprs!7948 ct1!232))) (ite c!1342483 (regTwo!37528 (h!76456 (exprs!7948 ct1!232))) (ite c!1342486 (regOne!37528 (h!76456 (exprs!7948 ct1!232))) (reg!18837 (h!76456 (exprs!7948 ct1!232)))))) (ite (or c!1342482 c!1342483) (Context!14897 (tail!14135 lt!2574473)) (Context!14897 call!658560)) (h!76457 s1!1971)))))

(declare-fun bm!658553 () Bool)

(declare-fun call!658559 () (Set Context!14896))

(declare-fun call!658561 () List!70132)

(assert (=> bm!658553 (= call!658559 (derivationStepZipperDown!2552 (ite c!1342482 (regTwo!37529 (h!76456 (exprs!7948 ct1!232))) (regOne!37528 (h!76456 (exprs!7948 ct1!232)))) (ite c!1342482 (Context!14897 (tail!14135 lt!2574473)) (Context!14897 call!658561)) (h!76457 s1!1971)))))

(declare-fun b!7234224 () Bool)

(declare-fun c!1342485 () Bool)

(assert (=> b!7234224 (= c!1342485 (is-Star!18508 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun e!4336934 () (Set Context!14896))

(declare-fun e!4336935 () (Set Context!14896))

(assert (=> b!7234224 (= e!4336934 e!4336935)))

(declare-fun b!7234225 () Bool)

(declare-fun e!4336931 () (Set Context!14896))

(assert (=> b!7234225 (= e!4336931 (set.union call!658558 call!658559))))

(declare-fun bm!658554 () Bool)

(assert (=> bm!658554 (= call!658560 call!658561)))

(declare-fun bm!658555 () Bool)

(declare-fun call!658562 () (Set Context!14896))

(declare-fun call!658557 () (Set Context!14896))

(assert (=> bm!658555 (= call!658562 call!658557)))

(declare-fun b!7234226 () Bool)

(declare-fun e!4336933 () (Set Context!14896))

(assert (=> b!7234226 (= e!4336933 e!4336931)))

(assert (=> b!7234226 (= c!1342482 (is-Union!18508 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun bm!658556 () Bool)

(assert (=> bm!658556 (= call!658561 ($colon$colon!2867 (exprs!7948 (Context!14897 (tail!14135 lt!2574473))) (ite (or c!1342483 c!1342486) (regTwo!37528 (h!76456 (exprs!7948 ct1!232))) (h!76456 (exprs!7948 ct1!232)))))))

(declare-fun b!7234227 () Bool)

(assert (=> b!7234227 (= e!4336934 call!658562)))

(declare-fun b!7234228 () Bool)

(assert (=> b!7234228 (= e!4336935 (as set.empty (Set Context!14896)))))

(declare-fun bm!658557 () Bool)

(assert (=> bm!658557 (= call!658557 call!658558)))

(declare-fun b!7234229 () Bool)

(declare-fun e!4336936 () Bool)

(assert (=> b!7234229 (= c!1342483 e!4336936)))

(declare-fun res!2934908 () Bool)

(assert (=> b!7234229 (=> (not res!2934908) (not e!4336936))))

(assert (=> b!7234229 (= res!2934908 (is-Concat!27353 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun e!4336932 () (Set Context!14896))

(assert (=> b!7234229 (= e!4336931 e!4336932)))

(declare-fun b!7234230 () Bool)

(assert (=> b!7234230 (= e!4336932 (set.union call!658559 call!658557))))

(declare-fun b!7234231 () Bool)

(assert (=> b!7234231 (= e!4336936 (nullable!7823 (regOne!37528 (h!76456 (exprs!7948 ct1!232)))))))

(declare-fun d!2247033 () Bool)

(declare-fun c!1342484 () Bool)

(assert (=> d!2247033 (= c!1342484 (and (is-ElementMatch!18508 (h!76456 (exprs!7948 ct1!232))) (= (c!1342446 (h!76456 (exprs!7948 ct1!232))) (h!76457 s1!1971))))))

(assert (=> d!2247033 (= (derivationStepZipperDown!2552 (h!76456 (exprs!7948 ct1!232)) (Context!14897 (tail!14135 lt!2574473)) (h!76457 s1!1971)) e!4336933)))

(declare-fun b!7234223 () Bool)

(assert (=> b!7234223 (= e!4336932 e!4336934)))

(assert (=> b!7234223 (= c!1342486 (is-Concat!27353 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun b!7234232 () Bool)

(assert (=> b!7234232 (= e!4336935 call!658562)))

(declare-fun b!7234233 () Bool)

(assert (=> b!7234233 (= e!4336933 (set.insert (Context!14897 (tail!14135 lt!2574473)) (as set.empty (Set Context!14896))))))

(assert (= (and d!2247033 c!1342484) b!7234233))

(assert (= (and d!2247033 (not c!1342484)) b!7234226))

(assert (= (and b!7234226 c!1342482) b!7234225))

(assert (= (and b!7234226 (not c!1342482)) b!7234229))

(assert (= (and b!7234229 res!2934908) b!7234231))

(assert (= (and b!7234229 c!1342483) b!7234230))

(assert (= (and b!7234229 (not c!1342483)) b!7234223))

(assert (= (and b!7234223 c!1342486) b!7234227))

(assert (= (and b!7234223 (not c!1342486)) b!7234224))

(assert (= (and b!7234224 c!1342485) b!7234232))

(assert (= (and b!7234224 (not c!1342485)) b!7234228))

(assert (= (or b!7234227 b!7234232) bm!658554))

(assert (= (or b!7234227 b!7234232) bm!658555))

(assert (= (or b!7234230 bm!658554) bm!658556))

(assert (= (or b!7234230 bm!658555) bm!658557))

(assert (= (or b!7234225 b!7234230) bm!658553))

(assert (= (or b!7234225 bm!658557) bm!658552))

(declare-fun m!7904164 () Bool)

(assert (=> b!7234233 m!7904164))

(declare-fun m!7904166 () Bool)

(assert (=> bm!658553 m!7904166))

(declare-fun m!7904168 () Bool)

(assert (=> bm!658556 m!7904168))

(declare-fun m!7904170 () Bool)

(assert (=> bm!658552 m!7904170))

(assert (=> b!7234231 m!7904134))

(assert (=> b!7234100 d!2247033))

(declare-fun d!2247035 () Bool)

(declare-fun choose!55573 ((Set Context!14896) Int) (Set Context!14896))

(assert (=> d!2247035 (= (flatMap!2712 lt!2574469 lambda!439852) (choose!55573 lt!2574469 lambda!439852))))

(declare-fun bs!1903128 () Bool)

(assert (= bs!1903128 d!2247035))

(declare-fun m!7904176 () Bool)

(assert (=> bs!1903128 m!7904176))

(assert (=> b!7234100 d!2247035))

(declare-fun d!2247039 () Bool)

(declare-fun lt!2574546 () Bool)

(assert (=> d!2247039 (= lt!2574546 (exists!4160 (toList!11365 lt!2574464) lambda!439851))))

(declare-fun choose!55574 ((Set Context!14896) Int) Bool)

(assert (=> d!2247039 (= lt!2574546 (choose!55574 lt!2574464 lambda!439851))))

(assert (=> d!2247039 (= (exists!4159 lt!2574464 lambda!439851) lt!2574546)))

(declare-fun bs!1903129 () Bool)

(assert (= bs!1903129 d!2247039))

(assert (=> bs!1903129 m!7903994))

(assert (=> bs!1903129 m!7903994))

(declare-fun m!7904178 () Bool)

(assert (=> bs!1903129 m!7904178))

(declare-fun m!7904180 () Bool)

(assert (=> bs!1903129 m!7904180))

(assert (=> b!7234107 d!2247039))

(declare-fun bs!1903130 () Bool)

(declare-fun d!2247041 () Bool)

(assert (= bs!1903130 (and d!2247041 b!7234107)))

(declare-fun lambda!439878 () Int)

(assert (=> bs!1903130 (not (= lambda!439878 lambda!439851))))

(assert (=> d!2247041 true))

(declare-fun order!28839 () Int)

(declare-fun dynLambda!28545 (Int Int) Int)

(assert (=> d!2247041 (< (dynLambda!28545 order!28839 lambda!439851) (dynLambda!28545 order!28839 lambda!439878))))

(declare-fun forall!17341 (List!70134 Int) Bool)

(assert (=> d!2247041 (= (exists!4160 lt!2574465 lambda!439851) (not (forall!17341 lt!2574465 lambda!439878)))))

(declare-fun bs!1903131 () Bool)

(assert (= bs!1903131 d!2247041))

(declare-fun m!7904194 () Bool)

(assert (=> bs!1903131 m!7904194))

(assert (=> b!7234107 d!2247041))

(declare-fun bs!1903138 () Bool)

(declare-fun d!2247045 () Bool)

(assert (= bs!1903138 (and d!2247045 b!7234107)))

(declare-fun lambda!439885 () Int)

(assert (=> bs!1903138 (= lambda!439885 lambda!439851)))

(declare-fun bs!1903139 () Bool)

(assert (= bs!1903139 (and d!2247045 d!2247041)))

(assert (=> bs!1903139 (not (= lambda!439885 lambda!439878))))

(assert (=> d!2247045 true))

(assert (=> d!2247045 (exists!4160 lt!2574465 lambda!439885)))

(declare-fun lt!2574551 () Unit!163554)

(declare-fun choose!55575 (List!70134 List!70133) Unit!163554)

(assert (=> d!2247045 (= lt!2574551 (choose!55575 lt!2574465 (t!384184 s1!1971)))))

(declare-fun content!14409 (List!70134) (Set Context!14896))

(assert (=> d!2247045 (matchZipper!3418 (content!14409 lt!2574465) (t!384184 s1!1971))))

(assert (=> d!2247045 (= (lemmaZipperMatchesExistsMatchingContext!651 lt!2574465 (t!384184 s1!1971)) lt!2574551)))

(declare-fun bs!1903140 () Bool)

(assert (= bs!1903140 d!2247045))

(declare-fun m!7904228 () Bool)

(assert (=> bs!1903140 m!7904228))

(declare-fun m!7904230 () Bool)

(assert (=> bs!1903140 m!7904230))

(declare-fun m!7904232 () Bool)

(assert (=> bs!1903140 m!7904232))

(assert (=> bs!1903140 m!7904232))

(declare-fun m!7904234 () Bool)

(assert (=> bs!1903140 m!7904234))

(assert (=> b!7234107 d!2247045))

(declare-fun d!2247059 () Bool)

(declare-fun e!4336948 () Bool)

(assert (=> d!2247059 e!4336948))

(declare-fun res!2934916 () Bool)

(assert (=> d!2247059 (=> (not res!2934916) (not e!4336948))))

(declare-fun lt!2574557 () List!70134)

(declare-fun noDuplicate!2930 (List!70134) Bool)

(assert (=> d!2247059 (= res!2934916 (noDuplicate!2930 lt!2574557))))

(declare-fun choose!55576 ((Set Context!14896)) List!70134)

(assert (=> d!2247059 (= lt!2574557 (choose!55576 lt!2574464))))

(assert (=> d!2247059 (= (toList!11365 lt!2574464) lt!2574557)))

(declare-fun b!7234253 () Bool)

(assert (=> b!7234253 (= e!4336948 (= (content!14409 lt!2574557) lt!2574464))))

(assert (= (and d!2247059 res!2934916) b!7234253))

(declare-fun m!7904236 () Bool)

(assert (=> d!2247059 m!7904236))

(declare-fun m!7904240 () Bool)

(assert (=> d!2247059 m!7904240))

(declare-fun m!7904242 () Bool)

(assert (=> b!7234253 m!7904242))

(assert (=> b!7234107 d!2247059))

(declare-fun d!2247061 () Bool)

(declare-fun c!1342498 () Bool)

(declare-fun isEmpty!40352 (List!70133) Bool)

(assert (=> d!2247061 (= c!1342498 (isEmpty!40352 s2!1849))))

(declare-fun e!4336955 () Bool)

(assert (=> d!2247061 (= (matchZipper!3418 (set.insert ct2!328 (as set.empty (Set Context!14896))) s2!1849) e!4336955)))

(declare-fun b!7234266 () Bool)

(declare-fun nullableZipper!2821 ((Set Context!14896)) Bool)

(assert (=> b!7234266 (= e!4336955 (nullableZipper!2821 (set.insert ct2!328 (as set.empty (Set Context!14896)))))))

(declare-fun b!7234267 () Bool)

(declare-fun head!14810 (List!70133) C!37290)

(declare-fun tail!14138 (List!70133) List!70133)

(assert (=> b!7234267 (= e!4336955 (matchZipper!3418 (derivationStepZipper!3300 (set.insert ct2!328 (as set.empty (Set Context!14896))) (head!14810 s2!1849)) (tail!14138 s2!1849)))))

(assert (= (and d!2247061 c!1342498) b!7234266))

(assert (= (and d!2247061 (not c!1342498)) b!7234267))

(declare-fun m!7904248 () Bool)

(assert (=> d!2247061 m!7904248))

(assert (=> b!7234266 m!7904022))

(declare-fun m!7904250 () Bool)

(assert (=> b!7234266 m!7904250))

(declare-fun m!7904252 () Bool)

(assert (=> b!7234267 m!7904252))

(assert (=> b!7234267 m!7904022))

(assert (=> b!7234267 m!7904252))

(declare-fun m!7904254 () Bool)

(assert (=> b!7234267 m!7904254))

(declare-fun m!7904256 () Bool)

(assert (=> b!7234267 m!7904256))

(assert (=> b!7234267 m!7904254))

(assert (=> b!7234267 m!7904256))

(declare-fun m!7904258 () Bool)

(assert (=> b!7234267 m!7904258))

(assert (=> b!7234109 d!2247061))

(declare-fun d!2247065 () Bool)

(declare-fun c!1342499 () Bool)

(assert (=> d!2247065 (= c!1342499 (isEmpty!40352 (t!384184 s1!1971)))))

(declare-fun e!4336956 () Bool)

(assert (=> d!2247065 (= (matchZipper!3418 lt!2574464 (t!384184 s1!1971)) e!4336956)))

(declare-fun b!7234268 () Bool)

(assert (=> b!7234268 (= e!4336956 (nullableZipper!2821 lt!2574464))))

(declare-fun b!7234269 () Bool)

(assert (=> b!7234269 (= e!4336956 (matchZipper!3418 (derivationStepZipper!3300 lt!2574464 (head!14810 (t!384184 s1!1971))) (tail!14138 (t!384184 s1!1971))))))

(assert (= (and d!2247065 c!1342499) b!7234268))

(assert (= (and d!2247065 (not c!1342499)) b!7234269))

(declare-fun m!7904260 () Bool)

(assert (=> d!2247065 m!7904260))

(declare-fun m!7904262 () Bool)

(assert (=> b!7234268 m!7904262))

(declare-fun m!7904264 () Bool)

(assert (=> b!7234269 m!7904264))

(assert (=> b!7234269 m!7904264))

(declare-fun m!7904266 () Bool)

(assert (=> b!7234269 m!7904266))

(declare-fun m!7904268 () Bool)

(assert (=> b!7234269 m!7904268))

(assert (=> b!7234269 m!7904266))

(assert (=> b!7234269 m!7904268))

(declare-fun m!7904270 () Bool)

(assert (=> b!7234269 m!7904270))

(assert (=> b!7234108 d!2247065))

(declare-fun bs!1903141 () Bool)

(declare-fun d!2247067 () Bool)

(assert (= bs!1903141 (and d!2247067 b!7234100)))

(declare-fun lambda!439888 () Int)

(assert (=> bs!1903141 (= lambda!439888 lambda!439852)))

(assert (=> d!2247067 true))

(assert (=> d!2247067 (= (derivationStepZipper!3300 lt!2574469 (h!76457 s1!1971)) (flatMap!2712 lt!2574469 lambda!439888))))

(declare-fun bs!1903142 () Bool)

(assert (= bs!1903142 d!2247067))

(declare-fun m!7904286 () Bool)

(assert (=> bs!1903142 m!7904286))

(assert (=> b!7234108 d!2247067))

(declare-fun d!2247071 () Bool)

(declare-fun c!1342503 () Bool)

(assert (=> d!2247071 (= c!1342503 (isEmpty!40352 s1!1971))))

(declare-fun e!4336959 () Bool)

(assert (=> d!2247071 (= (matchZipper!3418 lt!2574469 s1!1971) e!4336959)))

(declare-fun b!7234276 () Bool)

(assert (=> b!7234276 (= e!4336959 (nullableZipper!2821 lt!2574469))))

(declare-fun b!7234277 () Bool)

(assert (=> b!7234277 (= e!4336959 (matchZipper!3418 (derivationStepZipper!3300 lt!2574469 (head!14810 s1!1971)) (tail!14138 s1!1971)))))

(assert (= (and d!2247071 c!1342503) b!7234276))

(assert (= (and d!2247071 (not c!1342503)) b!7234277))

(declare-fun m!7904288 () Bool)

(assert (=> d!2247071 m!7904288))

(declare-fun m!7904290 () Bool)

(assert (=> b!7234276 m!7904290))

(declare-fun m!7904292 () Bool)

(assert (=> b!7234277 m!7904292))

(assert (=> b!7234277 m!7904292))

(declare-fun m!7904294 () Bool)

(assert (=> b!7234277 m!7904294))

(declare-fun m!7904296 () Bool)

(assert (=> b!7234277 m!7904296))

(assert (=> b!7234277 m!7904294))

(assert (=> b!7234277 m!7904296))

(declare-fun m!7904298 () Bool)

(assert (=> b!7234277 m!7904298))

(assert (=> start!702150 d!2247071))

(declare-fun bs!1903143 () Bool)

(declare-fun d!2247073 () Bool)

(assert (= bs!1903143 (and d!2247073 b!7234105)))

(declare-fun lambda!439891 () Int)

(assert (=> bs!1903143 (= lambda!439891 lambda!439850)))

(assert (=> d!2247073 (= (inv!89281 ct1!232) (forall!17339 (exprs!7948 ct1!232) lambda!439891))))

(declare-fun bs!1903144 () Bool)

(assert (= bs!1903144 d!2247073))

(declare-fun m!7904300 () Bool)

(assert (=> bs!1903144 m!7904300))

(assert (=> start!702150 d!2247073))

(declare-fun bs!1903145 () Bool)

(declare-fun d!2247075 () Bool)

(assert (= bs!1903145 (and d!2247075 b!7234105)))

(declare-fun lambda!439892 () Int)

(assert (=> bs!1903145 (= lambda!439892 lambda!439850)))

(declare-fun bs!1903146 () Bool)

(assert (= bs!1903146 (and d!2247075 d!2247073)))

(assert (=> bs!1903146 (= lambda!439892 lambda!439891)))

(assert (=> d!2247075 (= (inv!89281 ct2!328) (forall!17339 (exprs!7948 ct2!328) lambda!439892))))

(declare-fun bs!1903147 () Bool)

(assert (= bs!1903147 d!2247075))

(declare-fun m!7904302 () Bool)

(assert (=> bs!1903147 m!7904302))

(assert (=> start!702150 d!2247075))

(declare-fun b!7234287 () Bool)

(declare-fun e!4336965 () List!70132)

(assert (=> b!7234287 (= e!4336965 (Cons!70008 (h!76456 (exprs!7948 ct1!232)) (++!16316 (t!384183 (exprs!7948 ct1!232)) (exprs!7948 ct2!328))))))

(declare-fun b!7234286 () Bool)

(assert (=> b!7234286 (= e!4336965 (exprs!7948 ct2!328))))

(declare-fun d!2247077 () Bool)

(declare-fun e!4336964 () Bool)

(assert (=> d!2247077 e!4336964))

(declare-fun res!2934928 () Bool)

(assert (=> d!2247077 (=> (not res!2934928) (not e!4336964))))

(declare-fun lt!2574569 () List!70132)

(declare-fun content!14410 (List!70132) (Set Regex!18508))

(assert (=> d!2247077 (= res!2934928 (= (content!14410 lt!2574569) (set.union (content!14410 (exprs!7948 ct1!232)) (content!14410 (exprs!7948 ct2!328)))))))

(assert (=> d!2247077 (= lt!2574569 e!4336965)))

(declare-fun c!1342506 () Bool)

(assert (=> d!2247077 (= c!1342506 (is-Nil!70008 (exprs!7948 ct1!232)))))

(assert (=> d!2247077 (= (++!16316 (exprs!7948 ct1!232) (exprs!7948 ct2!328)) lt!2574569)))

(declare-fun b!7234289 () Bool)

(assert (=> b!7234289 (= e!4336964 (or (not (= (exprs!7948 ct2!328) Nil!70008)) (= lt!2574569 (exprs!7948 ct1!232))))))

(declare-fun b!7234288 () Bool)

(declare-fun res!2934927 () Bool)

(assert (=> b!7234288 (=> (not res!2934927) (not e!4336964))))

(declare-fun size!41574 (List!70132) Int)

(assert (=> b!7234288 (= res!2934927 (= (size!41574 lt!2574569) (+ (size!41574 (exprs!7948 ct1!232)) (size!41574 (exprs!7948 ct2!328)))))))

(assert (= (and d!2247077 c!1342506) b!7234286))

(assert (= (and d!2247077 (not c!1342506)) b!7234287))

(assert (= (and d!2247077 res!2934928) b!7234288))

(assert (= (and b!7234288 res!2934927) b!7234289))

(declare-fun m!7904312 () Bool)

(assert (=> b!7234287 m!7904312))

(declare-fun m!7904314 () Bool)

(assert (=> d!2247077 m!7904314))

(declare-fun m!7904316 () Bool)

(assert (=> d!2247077 m!7904316))

(declare-fun m!7904318 () Bool)

(assert (=> d!2247077 m!7904318))

(declare-fun m!7904320 () Bool)

(assert (=> b!7234288 m!7904320))

(declare-fun m!7904322 () Bool)

(assert (=> b!7234288 m!7904322))

(declare-fun m!7904324 () Bool)

(assert (=> b!7234288 m!7904324))

(assert (=> b!7234105 d!2247077))

(assert (=> b!7234105 d!2247013))

(declare-fun d!2247081 () Bool)

(assert (=> d!2247081 (forall!17339 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328)) lambda!439850)))

(declare-fun lt!2574570 () Unit!163554)

(assert (=> d!2247081 (= lt!2574570 (choose!55570 (exprs!7948 lt!2574478) (exprs!7948 ct2!328) lambda!439850))))

(assert (=> d!2247081 (forall!17339 (exprs!7948 lt!2574478) lambda!439850)))

(assert (=> d!2247081 (= (lemmaConcatPreservesForall!1317 (exprs!7948 lt!2574478) (exprs!7948 ct2!328) lambda!439850) lt!2574570)))

(declare-fun bs!1903152 () Bool)

(assert (= bs!1903152 d!2247081))

(assert (=> bs!1903152 m!7904036))

(assert (=> bs!1903152 m!7904036))

(declare-fun m!7904326 () Bool)

(assert (=> bs!1903152 m!7904326))

(declare-fun m!7904328 () Bool)

(assert (=> bs!1903152 m!7904328))

(declare-fun m!7904330 () Bool)

(assert (=> bs!1903152 m!7904330))

(assert (=> b!7234104 d!2247081))

(declare-fun d!2247083 () Bool)

(assert (=> d!2247083 (= (isEmpty!40349 (exprs!7948 ct1!232)) (is-Nil!70008 (exprs!7948 ct1!232)))))

(assert (=> b!7234104 d!2247083))

(declare-fun bs!1903155 () Bool)

(declare-fun d!2247085 () Bool)

(assert (= bs!1903155 (and d!2247085 b!7234105)))

(declare-fun lambda!439901 () Int)

(assert (=> bs!1903155 (= lambda!439901 lambda!439850)))

(declare-fun bs!1903156 () Bool)

(assert (= bs!1903156 (and d!2247085 d!2247073)))

(assert (=> bs!1903156 (= lambda!439901 lambda!439891)))

(declare-fun bs!1903157 () Bool)

(assert (= bs!1903157 (and d!2247085 d!2247075)))

(assert (=> bs!1903157 (= lambda!439901 lambda!439892)))

(assert (=> d!2247085 (matchZipper!3418 (set.insert (Context!14897 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328))) (as set.empty (Set Context!14896))) (++!16317 (t!384184 s1!1971) s2!1849))))

(declare-fun lt!2574576 () Unit!163554)

(assert (=> d!2247085 (= lt!2574576 (lemmaConcatPreservesForall!1317 (exprs!7948 lt!2574478) (exprs!7948 ct2!328) lambda!439901))))

(declare-fun lt!2574575 () Unit!163554)

(declare-fun choose!55577 (Context!14896 Context!14896 List!70133 List!70133) Unit!163554)

(assert (=> d!2247085 (= lt!2574575 (choose!55577 lt!2574478 ct2!328 (t!384184 s1!1971) s2!1849))))

(assert (=> d!2247085 (matchZipper!3418 (set.insert lt!2574478 (as set.empty (Set Context!14896))) (t!384184 s1!1971))))

(assert (=> d!2247085 (= (lemmaConcatenateContextMatchesConcatOfStrings!299 lt!2574478 ct2!328 (t!384184 s1!1971) s2!1849) lt!2574575)))

(declare-fun bs!1903158 () Bool)

(assert (= bs!1903158 d!2247085))

(assert (=> bs!1903158 m!7904042))

(declare-fun m!7904364 () Bool)

(assert (=> bs!1903158 m!7904364))

(assert (=> bs!1903158 m!7904042))

(assert (=> bs!1903158 m!7904044))

(assert (=> bs!1903158 m!7904046))

(declare-fun m!7904366 () Bool)

(assert (=> bs!1903158 m!7904366))

(assert (=> bs!1903158 m!7904036))

(declare-fun m!7904370 () Bool)

(assert (=> bs!1903158 m!7904370))

(assert (=> bs!1903158 m!7904366))

(declare-fun m!7904374 () Bool)

(assert (=> bs!1903158 m!7904374))

(assert (=> bs!1903158 m!7904044))

(assert (=> b!7234104 d!2247085))

(declare-fun b!7234348 () Bool)

(declare-fun res!2934940 () Bool)

(declare-fun e!4336997 () Bool)

(assert (=> b!7234348 (=> (not res!2934940) (not e!4336997))))

(declare-fun lt!2574579 () List!70133)

(declare-fun size!41575 (List!70133) Int)

(assert (=> b!7234348 (= res!2934940 (= (size!41575 lt!2574579) (+ (size!41575 (t!384184 s1!1971)) (size!41575 s2!1849))))))

(declare-fun b!7234347 () Bool)

(declare-fun e!4336996 () List!70133)

(assert (=> b!7234347 (= e!4336996 (Cons!70009 (h!76457 (t!384184 s1!1971)) (++!16317 (t!384184 (t!384184 s1!1971)) s2!1849)))))

(declare-fun b!7234346 () Bool)

(assert (=> b!7234346 (= e!4336996 s2!1849)))

(declare-fun d!2247097 () Bool)

(assert (=> d!2247097 e!4336997))

(declare-fun res!2934939 () Bool)

(assert (=> d!2247097 (=> (not res!2934939) (not e!4336997))))

(declare-fun content!14412 (List!70133) (Set C!37290))

(assert (=> d!2247097 (= res!2934939 (= (content!14412 lt!2574579) (set.union (content!14412 (t!384184 s1!1971)) (content!14412 s2!1849))))))

(assert (=> d!2247097 (= lt!2574579 e!4336996)))

(declare-fun c!1342531 () Bool)

(assert (=> d!2247097 (= c!1342531 (is-Nil!70009 (t!384184 s1!1971)))))

(assert (=> d!2247097 (= (++!16317 (t!384184 s1!1971) s2!1849) lt!2574579)))

(declare-fun b!7234349 () Bool)

(assert (=> b!7234349 (= e!4336997 (or (not (= s2!1849 Nil!70009)) (= lt!2574579 (t!384184 s1!1971))))))

(assert (= (and d!2247097 c!1342531) b!7234346))

(assert (= (and d!2247097 (not c!1342531)) b!7234347))

(assert (= (and d!2247097 res!2934939) b!7234348))

(assert (= (and b!7234348 res!2934940) b!7234349))

(declare-fun m!7904378 () Bool)

(assert (=> b!7234348 m!7904378))

(declare-fun m!7904380 () Bool)

(assert (=> b!7234348 m!7904380))

(declare-fun m!7904382 () Bool)

(assert (=> b!7234348 m!7904382))

(declare-fun m!7904384 () Bool)

(assert (=> b!7234347 m!7904384))

(declare-fun m!7904386 () Bool)

(assert (=> d!2247097 m!7904386))

(declare-fun m!7904388 () Bool)

(assert (=> d!2247097 m!7904388))

(declare-fun m!7904390 () Bool)

(assert (=> d!2247097 m!7904390))

(assert (=> b!7234104 d!2247097))

(assert (=> b!7234104 d!2247027))

(declare-fun b!7234351 () Bool)

(declare-fun e!4336999 () List!70132)

(assert (=> b!7234351 (= e!4336999 (Cons!70008 (h!76456 (exprs!7948 lt!2574478)) (++!16316 (t!384183 (exprs!7948 lt!2574478)) (exprs!7948 ct2!328))))))

(declare-fun b!7234350 () Bool)

(assert (=> b!7234350 (= e!4336999 (exprs!7948 ct2!328))))

(declare-fun d!2247101 () Bool)

(declare-fun e!4336998 () Bool)

(assert (=> d!2247101 e!4336998))

(declare-fun res!2934942 () Bool)

(assert (=> d!2247101 (=> (not res!2934942) (not e!4336998))))

(declare-fun lt!2574580 () List!70132)

(assert (=> d!2247101 (= res!2934942 (= (content!14410 lt!2574580) (set.union (content!14410 (exprs!7948 lt!2574478)) (content!14410 (exprs!7948 ct2!328)))))))

(assert (=> d!2247101 (= lt!2574580 e!4336999)))

(declare-fun c!1342532 () Bool)

(assert (=> d!2247101 (= c!1342532 (is-Nil!70008 (exprs!7948 lt!2574478)))))

(assert (=> d!2247101 (= (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328)) lt!2574580)))

(declare-fun b!7234353 () Bool)

(assert (=> b!7234353 (= e!4336998 (or (not (= (exprs!7948 ct2!328) Nil!70008)) (= lt!2574580 (exprs!7948 lt!2574478))))))

(declare-fun b!7234352 () Bool)

(declare-fun res!2934941 () Bool)

(assert (=> b!7234352 (=> (not res!2934941) (not e!4336998))))

(assert (=> b!7234352 (= res!2934941 (= (size!41574 lt!2574580) (+ (size!41574 (exprs!7948 lt!2574478)) (size!41574 (exprs!7948 ct2!328)))))))

(assert (= (and d!2247101 c!1342532) b!7234350))

(assert (= (and d!2247101 (not c!1342532)) b!7234351))

(assert (= (and d!2247101 res!2934942) b!7234352))

(assert (= (and b!7234352 res!2934941) b!7234353))

(declare-fun m!7904392 () Bool)

(assert (=> b!7234351 m!7904392))

(declare-fun m!7904394 () Bool)

(assert (=> d!2247101 m!7904394))

(declare-fun m!7904396 () Bool)

(assert (=> d!2247101 m!7904396))

(assert (=> d!2247101 m!7904318))

(declare-fun m!7904398 () Bool)

(assert (=> b!7234352 m!7904398))

(declare-fun m!7904400 () Bool)

(assert (=> b!7234352 m!7904400))

(assert (=> b!7234352 m!7904324))

(assert (=> b!7234104 d!2247101))

(declare-fun d!2247103 () Bool)

(declare-fun c!1342533 () Bool)

(assert (=> d!2247103 (= c!1342533 (isEmpty!40352 (++!16317 (t!384184 s1!1971) s2!1849)))))

(declare-fun e!4337000 () Bool)

(assert (=> d!2247103 (= (matchZipper!3418 (set.insert (Context!14897 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328))) (as set.empty (Set Context!14896))) (++!16317 (t!384184 s1!1971) s2!1849)) e!4337000)))

(declare-fun b!7234354 () Bool)

(assert (=> b!7234354 (= e!4337000 (nullableZipper!2821 (set.insert (Context!14897 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328))) (as set.empty (Set Context!14896)))))))

(declare-fun b!7234355 () Bool)

(assert (=> b!7234355 (= e!4337000 (matchZipper!3418 (derivationStepZipper!3300 (set.insert (Context!14897 (++!16316 (exprs!7948 lt!2574478) (exprs!7948 ct2!328))) (as set.empty (Set Context!14896))) (head!14810 (++!16317 (t!384184 s1!1971) s2!1849))) (tail!14138 (++!16317 (t!384184 s1!1971) s2!1849))))))

(assert (= (and d!2247103 c!1342533) b!7234354))

(assert (= (and d!2247103 (not c!1342533)) b!7234355))

(assert (=> d!2247103 m!7904044))

(declare-fun m!7904402 () Bool)

(assert (=> d!2247103 m!7904402))

(assert (=> b!7234354 m!7904042))

(declare-fun m!7904404 () Bool)

(assert (=> b!7234354 m!7904404))

(assert (=> b!7234355 m!7904044))

(declare-fun m!7904406 () Bool)

(assert (=> b!7234355 m!7904406))

(assert (=> b!7234355 m!7904042))

(assert (=> b!7234355 m!7904406))

(declare-fun m!7904408 () Bool)

(assert (=> b!7234355 m!7904408))

(assert (=> b!7234355 m!7904044))

(declare-fun m!7904410 () Bool)

(assert (=> b!7234355 m!7904410))

(assert (=> b!7234355 m!7904408))

(assert (=> b!7234355 m!7904410))

(declare-fun m!7904412 () Bool)

(assert (=> b!7234355 m!7904412))

(assert (=> b!7234104 d!2247103))

(declare-fun d!2247105 () Bool)

(declare-fun e!4337003 () Bool)

(assert (=> d!2247105 e!4337003))

(declare-fun res!2934945 () Bool)

(assert (=> d!2247105 (=> (not res!2934945) (not e!4337003))))

(declare-fun lt!2574583 () Context!14896)

(declare-fun dynLambda!28547 (Int Context!14896) Bool)

(assert (=> d!2247105 (= res!2934945 (dynLambda!28547 lambda!439851 lt!2574583))))

(declare-fun getWitness!2036 (List!70134 Int) Context!14896)

(assert (=> d!2247105 (= lt!2574583 (getWitness!2036 (toList!11365 lt!2574464) lambda!439851))))

(assert (=> d!2247105 (exists!4159 lt!2574464 lambda!439851)))

(assert (=> d!2247105 (= (getWitness!2033 lt!2574464 lambda!439851) lt!2574583)))

(declare-fun b!7234358 () Bool)

(assert (=> b!7234358 (= e!4337003 (set.member lt!2574583 lt!2574464))))

(assert (= (and d!2247105 res!2934945) b!7234358))

(declare-fun b_lambda!277321 () Bool)

(assert (=> (not b_lambda!277321) (not d!2247105)))

(declare-fun m!7904414 () Bool)

(assert (=> d!2247105 m!7904414))

(assert (=> d!2247105 m!7903994))

(assert (=> d!2247105 m!7903994))

(declare-fun m!7904416 () Bool)

(assert (=> d!2247105 m!7904416))

(assert (=> d!2247105 m!7903988))

(declare-fun m!7904418 () Bool)

(assert (=> b!7234358 m!7904418))

(assert (=> b!7234104 d!2247105))

(declare-fun b!7234363 () Bool)

(declare-fun e!4337006 () Bool)

(declare-fun tp!2034317 () Bool)

(declare-fun tp!2034318 () Bool)

(assert (=> b!7234363 (= e!4337006 (and tp!2034317 tp!2034318))))

(assert (=> b!7234101 (= tp!2034297 e!4337006)))

(assert (= (and b!7234101 (is-Cons!70008 (exprs!7948 ct2!328))) b!7234363))

(declare-fun b!7234368 () Bool)

(declare-fun e!4337009 () Bool)

(declare-fun tp!2034321 () Bool)

(assert (=> b!7234368 (= e!4337009 (and tp_is_empty!46481 tp!2034321))))

(assert (=> b!7234102 (= tp!2034300 e!4337009)))

(assert (= (and b!7234102 (is-Cons!70009 (t!384184 s2!1849))) b!7234368))

(declare-fun b!7234369 () Bool)

(declare-fun e!4337010 () Bool)

(declare-fun tp!2034322 () Bool)

(assert (=> b!7234369 (= e!4337010 (and tp_is_empty!46481 tp!2034322))))

(assert (=> b!7234103 (= tp!2034298 e!4337010)))

(assert (= (and b!7234103 (is-Cons!70009 (t!384184 s1!1971))) b!7234369))

(declare-fun b!7234370 () Bool)

(declare-fun e!4337011 () Bool)

(declare-fun tp!2034323 () Bool)

(declare-fun tp!2034324 () Bool)

(assert (=> b!7234370 (= e!4337011 (and tp!2034323 tp!2034324))))

(assert (=> b!7234110 (= tp!2034299 e!4337011)))

(assert (= (and b!7234110 (is-Cons!70008 (exprs!7948 ct1!232))) b!7234370))

(declare-fun b_lambda!277323 () Bool)

(assert (= b_lambda!277317 (or b!7234100 b_lambda!277323)))

(declare-fun bs!1903159 () Bool)

(declare-fun d!2247107 () Bool)

(assert (= bs!1903159 (and d!2247107 b!7234100)))

(assert (=> bs!1903159 (= (dynLambda!28544 lambda!439852 ct1!232) (derivationStepZipperUp!2382 ct1!232 (h!76457 s1!1971)))))

(assert (=> bs!1903159 m!7904006))

(assert (=> d!2247029 d!2247107))

(declare-fun b_lambda!277325 () Bool)

(assert (= b_lambda!277321 (or b!7234107 b_lambda!277325)))

(declare-fun bs!1903160 () Bool)

(declare-fun d!2247109 () Bool)

(assert (= bs!1903160 (and d!2247109 b!7234107)))

(assert (=> bs!1903160 (= (dynLambda!28547 lambda!439851 lt!2574583) (matchZipper!3418 (set.insert lt!2574583 (as set.empty (Set Context!14896))) (t!384184 s1!1971)))))

(declare-fun m!7904420 () Bool)

(assert (=> bs!1903160 m!7904420))

(assert (=> bs!1903160 m!7904420))

(declare-fun m!7904422 () Bool)

(assert (=> bs!1903160 m!7904422))

(assert (=> d!2247105 d!2247109))

(declare-fun b_lambda!277327 () Bool)

(assert (= b_lambda!277315 (or b!7234105 b_lambda!277327)))

(declare-fun bs!1903161 () Bool)

(declare-fun d!2247111 () Bool)

(assert (= bs!1903161 (and d!2247111 b!7234105)))

(declare-fun validRegex!9516 (Regex!18508) Bool)

(assert (=> bs!1903161 (= (dynLambda!28543 lambda!439850 (h!76456 (exprs!7948 ct1!232))) (validRegex!9516 (h!76456 (exprs!7948 ct1!232))))))

(declare-fun m!7904424 () Bool)

(assert (=> bs!1903161 m!7904424))

(assert (=> b!7234208 d!2247111))

(push 1)

(assert (not b!7234370))

(assert (not b!7234209))

(assert (not bm!658545))

(assert (not bm!658552))

(assert (not bm!658551))

(assert (not bs!1903160))

(assert (not b!7234355))

(assert (not b!7234165))

(assert (not bm!658532))

(assert (not b_lambda!277325))

(assert (not d!2247085))

(assert (not d!2247067))

(assert (not b!7234277))

(assert (not d!2247075))

(assert (not b!7234369))

(assert (not b_lambda!277327))

(assert (not b!7234351))

(assert (not d!2247097))

(assert (not b!7234231))

(assert (not bs!1903159))

(assert (not bm!658556))

(assert (not d!2247077))

(assert (not b!7234166))

(assert (not d!2247105))

(assert (not d!2247045))

(assert (not b!7234347))

(assert (not d!2247071))

(assert (not b!7234268))

(assert (not d!2247103))

(assert (not b!7234267))

(assert (not d!2247081))

(assert tp_is_empty!46481)

(assert (not d!2247059))

(assert (not b!7234352))

(assert (not b!7234354))

(assert (not b!7234363))

(assert (not b!7234197))

(assert (not b!7234218))

(assert (not bs!1903161))

(assert (not b!7234288))

(assert (not d!2247073))

(assert (not bm!658546))

(assert (not d!2247039))

(assert (not d!2247029))

(assert (not b!7234348))

(assert (not d!2247041))

(assert (not d!2247013))

(assert (not b!7234287))

(assert (not b!7234266))

(assert (not d!2247065))

(assert (not b!7234276))

(assert (not bm!658553))

(assert (not bm!658549))

(assert (not b!7234269))

(assert (not b_lambda!277323))

(assert (not d!2247061))

(assert (not b!7234368))

(assert (not d!2247035))

(assert (not d!2247101))

(assert (not b!7234217))

(assert (not b!7234253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

