; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714696 () Bool)

(assert start!714696)

(declare-fun b!7323430 () Bool)

(declare-fun e!4384965 () Bool)

(declare-fun e!4384963 () Bool)

(assert (=> b!7323430 (= e!4384965 e!4384963)))

(declare-fun res!2960184 () Bool)

(assert (=> b!7323430 (=> (not res!2960184) (not e!4384963))))

(declare-datatypes ((C!38226 0))(
  ( (C!38227 (val!29473 Int)) )
))
(declare-datatypes ((Regex!18976 0))(
  ( (ElementMatch!18976 (c!1359131 C!38226)) (Concat!27821 (regOne!38464 Regex!18976) (regTwo!38464 Regex!18976)) (EmptyExpr!18976) (Star!18976 (reg!19305 Regex!18976)) (EmptyLang!18976) (Union!18976 (regOne!38465 Regex!18976) (regTwo!38465 Regex!18976)) )
))
(declare-datatypes ((List!71472 0))(
  ( (Nil!71348) (Cons!71348 (h!77796 Regex!18976) (t!385855 List!71472)) )
))
(declare-datatypes ((Context!15832 0))(
  ( (Context!15833 (exprs!8416 List!71472)) )
))
(declare-fun ct1!256 () Context!15832)

(declare-fun nullable!8080 (Regex!18976) Bool)

(assert (=> b!7323430 (= res!2960184 (nullable!8080 (h!77796 (exprs!8416 ct1!256))))))

(declare-fun lt!2605256 () (Set Context!15832))

(declare-fun c!10305 () C!38226)

(declare-fun lt!2605257 () Context!15832)

(declare-fun derivationStepZipperDown!2807 (Regex!18976 Context!15832 C!38226) (Set Context!15832))

(assert (=> b!7323430 (= lt!2605256 (derivationStepZipperDown!2807 (h!77796 (exprs!8416 ct1!256)) lt!2605257 c!10305))))

(declare-fun lt!2605249 () List!71472)

(assert (=> b!7323430 (= lt!2605257 (Context!15833 lt!2605249))))

(declare-fun tail!14665 (List!71472) List!71472)

(assert (=> b!7323430 (= lt!2605249 (tail!14665 (exprs!8416 ct1!256)))))

(declare-fun b!7323431 () Bool)

(declare-fun e!4384961 () Bool)

(declare-fun tp!2080100 () Bool)

(assert (=> b!7323431 (= e!4384961 tp!2080100)))

(declare-fun b!7323432 () Bool)

(declare-fun e!4384968 () Bool)

(declare-fun tp!2080101 () Bool)

(assert (=> b!7323432 (= e!4384968 tp!2080101)))

(declare-fun b!7323433 () Bool)

(declare-fun e!4384967 () Bool)

(assert (=> b!7323433 (= e!4384963 e!4384967)))

(declare-fun res!2960185 () Bool)

(assert (=> b!7323433 (=> (not res!2960185) (not e!4384967))))

(declare-fun lt!2605247 () (Set Context!15832))

(declare-fun cWitness!35 () Context!15832)

(declare-fun lt!2605253 () (Set Context!15832))

(assert (=> b!7323433 (= res!2960185 (and (= lt!2605247 (set.union lt!2605256 lt!2605253)) (or (set.member cWitness!35 lt!2605256) (set.member cWitness!35 lt!2605253)) (set.member cWitness!35 lt!2605253)))))

(declare-fun derivationStepZipperUp!2656 (Context!15832 C!38226) (Set Context!15832))

(assert (=> b!7323433 (= lt!2605253 (derivationStepZipperUp!2656 lt!2605257 c!10305))))

(declare-fun b!7323434 () Bool)

(declare-fun e!4384964 () Bool)

(declare-fun e!4384966 () Bool)

(assert (=> b!7323434 (= e!4384964 e!4384966)))

(declare-fun res!2960182 () Bool)

(assert (=> b!7323434 (=> res!2960182 e!4384966)))

(declare-fun lambda!453745 () Int)

(declare-fun forall!17830 (List!71472 Int) Bool)

(assert (=> b!7323434 (= res!2960182 (not (forall!17830 (exprs!8416 cWitness!35) lambda!453745)))))

(declare-fun res!2960181 () Bool)

(declare-fun e!4384960 () Bool)

(assert (=> start!714696 (=> (not res!2960181) (not e!4384960))))

(assert (=> start!714696 (= res!2960181 (set.member cWitness!35 lt!2605247))))

(assert (=> start!714696 (= lt!2605247 (derivationStepZipperUp!2656 ct1!256 c!10305))))

(assert (=> start!714696 e!4384960))

(declare-fun tp_is_empty!48197 () Bool)

(assert (=> start!714696 tp_is_empty!48197))

(declare-fun inv!90781 (Context!15832) Bool)

(assert (=> start!714696 (and (inv!90781 cWitness!35) e!4384961)))

(assert (=> start!714696 (and (inv!90781 ct1!256) e!4384968)))

(declare-fun ct2!352 () Context!15832)

(declare-fun e!4384962 () Bool)

(assert (=> start!714696 (and (inv!90781 ct2!352) e!4384962)))

(declare-fun b!7323435 () Bool)

(assert (=> b!7323435 (= e!4384960 e!4384965)))

(declare-fun res!2960183 () Bool)

(assert (=> b!7323435 (=> (not res!2960183) (not e!4384965))))

(assert (=> b!7323435 (= res!2960183 (is-Cons!71348 (exprs!8416 ct1!256)))))

(declare-fun lt!2605248 () List!71472)

(declare-fun ++!16800 (List!71472 List!71472) List!71472)

(assert (=> b!7323435 (= lt!2605248 (++!16800 (exprs!8416 ct1!256) (exprs!8416 ct2!352)))))

(declare-datatypes ((Unit!164917 0))(
  ( (Unit!164918) )
))
(declare-fun lt!2605254 () Unit!164917)

(declare-fun lemmaConcatPreservesForall!1657 (List!71472 List!71472 Int) Unit!164917)

(assert (=> b!7323435 (= lt!2605254 (lemmaConcatPreservesForall!1657 (exprs!8416 ct1!256) (exprs!8416 ct2!352) lambda!453745))))

(declare-fun b!7323436 () Bool)

(declare-fun res!2960186 () Bool)

(assert (=> b!7323436 (=> (not res!2960186) (not e!4384965))))

(declare-fun isEmpty!40894 (List!71472) Bool)

(assert (=> b!7323436 (= res!2960186 (not (isEmpty!40894 (exprs!8416 ct1!256))))))

(declare-fun b!7323437 () Bool)

(assert (=> b!7323437 (= e!4384967 (not e!4384964))))

(declare-fun res!2960187 () Bool)

(assert (=> b!7323437 (=> res!2960187 e!4384964)))

(declare-fun lt!2605258 () Context!15832)

(assert (=> b!7323437 (= res!2960187 (not (set.member lt!2605258 (derivationStepZipperUp!2656 (Context!15833 lt!2605248) c!10305))))))

(declare-fun lt!2605250 () Unit!164917)

(assert (=> b!7323437 (= lt!2605250 (lemmaConcatPreservesForall!1657 (exprs!8416 cWitness!35) (exprs!8416 ct2!352) lambda!453745))))

(assert (=> b!7323437 (set.member lt!2605258 (derivationStepZipperUp!2656 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352))) c!10305))))

(assert (=> b!7323437 (= lt!2605258 (Context!15833 (++!16800 (exprs!8416 cWitness!35) (exprs!8416 ct2!352))))))

(declare-fun lt!2605252 () Unit!164917)

(assert (=> b!7323437 (= lt!2605252 (lemmaConcatPreservesForall!1657 lt!2605249 (exprs!8416 ct2!352) lambda!453745))))

(declare-fun lt!2605251 () Unit!164917)

(assert (=> b!7323437 (= lt!2605251 (lemmaConcatPreservesForall!1657 (exprs!8416 cWitness!35) (exprs!8416 ct2!352) lambda!453745))))

(declare-fun lt!2605255 () Unit!164917)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!47 (Context!15832 Context!15832 Context!15832 C!38226) Unit!164917)

(assert (=> b!7323437 (= lt!2605255 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!47 lt!2605257 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7323438 () Bool)

(assert (=> b!7323438 (= e!4384966 (forall!17830 (exprs!8416 ct2!352) lambda!453745))))

(declare-fun b!7323439 () Bool)

(declare-fun tp!2080102 () Bool)

(assert (=> b!7323439 (= e!4384962 tp!2080102)))

(assert (= (and start!714696 res!2960181) b!7323435))

(assert (= (and b!7323435 res!2960183) b!7323436))

(assert (= (and b!7323436 res!2960186) b!7323430))

(assert (= (and b!7323430 res!2960184) b!7323433))

(assert (= (and b!7323433 res!2960185) b!7323437))

(assert (= (and b!7323437 (not res!2960187)) b!7323434))

(assert (= (and b!7323434 (not res!2960182)) b!7323438))

(assert (= start!714696 b!7323431))

(assert (= start!714696 b!7323432))

(assert (= start!714696 b!7323439))

(declare-fun m!7989048 () Bool)

(assert (=> start!714696 m!7989048))

(declare-fun m!7989050 () Bool)

(assert (=> start!714696 m!7989050))

(declare-fun m!7989052 () Bool)

(assert (=> start!714696 m!7989052))

(declare-fun m!7989054 () Bool)

(assert (=> start!714696 m!7989054))

(declare-fun m!7989056 () Bool)

(assert (=> start!714696 m!7989056))

(declare-fun m!7989058 () Bool)

(assert (=> b!7323437 m!7989058))

(declare-fun m!7989060 () Bool)

(assert (=> b!7323437 m!7989060))

(declare-fun m!7989062 () Bool)

(assert (=> b!7323437 m!7989062))

(declare-fun m!7989064 () Bool)

(assert (=> b!7323437 m!7989064))

(declare-fun m!7989066 () Bool)

(assert (=> b!7323437 m!7989066))

(assert (=> b!7323437 m!7989060))

(declare-fun m!7989068 () Bool)

(assert (=> b!7323437 m!7989068))

(declare-fun m!7989070 () Bool)

(assert (=> b!7323437 m!7989070))

(declare-fun m!7989072 () Bool)

(assert (=> b!7323437 m!7989072))

(declare-fun m!7989074 () Bool)

(assert (=> b!7323437 m!7989074))

(declare-fun m!7989076 () Bool)

(assert (=> b!7323433 m!7989076))

(declare-fun m!7989078 () Bool)

(assert (=> b!7323433 m!7989078))

(declare-fun m!7989080 () Bool)

(assert (=> b!7323433 m!7989080))

(declare-fun m!7989082 () Bool)

(assert (=> b!7323430 m!7989082))

(declare-fun m!7989084 () Bool)

(assert (=> b!7323430 m!7989084))

(declare-fun m!7989086 () Bool)

(assert (=> b!7323430 m!7989086))

(declare-fun m!7989088 () Bool)

(assert (=> b!7323435 m!7989088))

(declare-fun m!7989090 () Bool)

(assert (=> b!7323435 m!7989090))

(declare-fun m!7989092 () Bool)

(assert (=> b!7323434 m!7989092))

(declare-fun m!7989094 () Bool)

(assert (=> b!7323438 m!7989094))

(declare-fun m!7989096 () Bool)

(assert (=> b!7323436 m!7989096))

(push 1)

(assert (not b!7323437))

(assert (not b!7323435))

(assert (not b!7323431))

(assert (not b!7323434))

(assert (not b!7323433))

(assert (not start!714696))

(assert tp_is_empty!48197)

(assert (not b!7323439))

(assert (not b!7323430))

(assert (not b!7323436))

(assert (not b!7323432))

(assert (not b!7323438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274223 () Bool)

(declare-fun nullableFct!3197 (Regex!18976) Bool)

(assert (=> d!2274223 (= (nullable!8080 (h!77796 (exprs!8416 ct1!256))) (nullableFct!3197 (h!77796 (exprs!8416 ct1!256))))))

(declare-fun bs!1916340 () Bool)

(assert (= bs!1916340 d!2274223))

(declare-fun m!7989148 () Bool)

(assert (=> bs!1916340 m!7989148))

(assert (=> b!7323430 d!2274223))

(declare-fun b!7323492 () Bool)

(declare-fun e!4385009 () (Set Context!15832))

(declare-fun call!666147 () (Set Context!15832))

(declare-fun call!666146 () (Set Context!15832))

(assert (=> b!7323492 (= e!4385009 (set.union call!666147 call!666146))))

(declare-fun b!7323493 () Bool)

(declare-fun e!4385012 () (Set Context!15832))

(declare-fun call!666144 () (Set Context!15832))

(assert (=> b!7323493 (= e!4385012 call!666144)))

(declare-fun d!2274225 () Bool)

(declare-fun c!1359145 () Bool)

(assert (=> d!2274225 (= c!1359145 (and (is-ElementMatch!18976 (h!77796 (exprs!8416 ct1!256))) (= (c!1359131 (h!77796 (exprs!8416 ct1!256))) c!10305)))))

(declare-fun e!4385013 () (Set Context!15832))

(assert (=> d!2274225 (= (derivationStepZipperDown!2807 (h!77796 (exprs!8416 ct1!256)) lt!2605257 c!10305) e!4385013)))

(declare-fun bm!666137 () Bool)

(declare-fun call!666143 () List!71472)

(declare-fun call!666145 () (Set Context!15832))

(declare-fun c!1359147 () Bool)

(declare-fun c!1359143 () Bool)

(declare-fun c!1359146 () Bool)

(assert (=> bm!666137 (= call!666145 (derivationStepZipperDown!2807 (ite c!1359143 (regTwo!38465 (h!77796 (exprs!8416 ct1!256))) (ite c!1359146 (regTwo!38464 (h!77796 (exprs!8416 ct1!256))) (ite c!1359147 (regOne!38464 (h!77796 (exprs!8416 ct1!256))) (reg!19305 (h!77796 (exprs!8416 ct1!256)))))) (ite (or c!1359143 c!1359146) lt!2605257 (Context!15833 call!666143)) c!10305))))

(declare-fun call!666142 () List!71472)

(declare-fun bm!666138 () Bool)

(declare-fun $colon$colon!3013 (List!71472 Regex!18976) List!71472)

(assert (=> bm!666138 (= call!666142 ($colon$colon!3013 (exprs!8416 lt!2605257) (ite (or c!1359146 c!1359147) (regTwo!38464 (h!77796 (exprs!8416 ct1!256))) (h!77796 (exprs!8416 ct1!256)))))))

(declare-fun b!7323494 () Bool)

(declare-fun e!4385008 () (Set Context!15832))

(assert (=> b!7323494 (= e!4385008 (set.union call!666147 call!666145))))

(declare-fun b!7323495 () Bool)

(declare-fun e!4385011 () (Set Context!15832))

(assert (=> b!7323495 (= e!4385011 call!666144)))

(declare-fun bm!666139 () Bool)

(assert (=> bm!666139 (= call!666146 call!666145)))

(declare-fun b!7323496 () Bool)

(declare-fun e!4385010 () Bool)

(assert (=> b!7323496 (= c!1359146 e!4385010)))

(declare-fun res!2960211 () Bool)

(assert (=> b!7323496 (=> (not res!2960211) (not e!4385010))))

(assert (=> b!7323496 (= res!2960211 (is-Concat!27821 (h!77796 (exprs!8416 ct1!256))))))

(assert (=> b!7323496 (= e!4385008 e!4385009)))

(declare-fun bm!666140 () Bool)

(assert (=> bm!666140 (= call!666144 call!666146)))

(declare-fun b!7323497 () Bool)

(assert (=> b!7323497 (= e!4385009 e!4385012)))

(assert (=> b!7323497 (= c!1359147 (is-Concat!27821 (h!77796 (exprs!8416 ct1!256))))))

(declare-fun b!7323498 () Bool)

(assert (=> b!7323498 (= e!4385011 (as set.empty (Set Context!15832)))))

(declare-fun b!7323499 () Bool)

(assert (=> b!7323499 (= e!4385013 e!4385008)))

(assert (=> b!7323499 (= c!1359143 (is-Union!18976 (h!77796 (exprs!8416 ct1!256))))))

(declare-fun bm!666141 () Bool)

(assert (=> bm!666141 (= call!666143 call!666142)))

(declare-fun b!7323500 () Bool)

(assert (=> b!7323500 (= e!4385013 (set.insert lt!2605257 (as set.empty (Set Context!15832))))))

(declare-fun b!7323501 () Bool)

(assert (=> b!7323501 (= e!4385010 (nullable!8080 (regOne!38464 (h!77796 (exprs!8416 ct1!256)))))))

(declare-fun bm!666142 () Bool)

(assert (=> bm!666142 (= call!666147 (derivationStepZipperDown!2807 (ite c!1359143 (regOne!38465 (h!77796 (exprs!8416 ct1!256))) (regOne!38464 (h!77796 (exprs!8416 ct1!256)))) (ite c!1359143 lt!2605257 (Context!15833 call!666142)) c!10305))))

(declare-fun b!7323502 () Bool)

(declare-fun c!1359144 () Bool)

(assert (=> b!7323502 (= c!1359144 (is-Star!18976 (h!77796 (exprs!8416 ct1!256))))))

(assert (=> b!7323502 (= e!4385012 e!4385011)))

(assert (= (and d!2274225 c!1359145) b!7323500))

(assert (= (and d!2274225 (not c!1359145)) b!7323499))

(assert (= (and b!7323499 c!1359143) b!7323494))

(assert (= (and b!7323499 (not c!1359143)) b!7323496))

(assert (= (and b!7323496 res!2960211) b!7323501))

(assert (= (and b!7323496 c!1359146) b!7323492))

(assert (= (and b!7323496 (not c!1359146)) b!7323497))

(assert (= (and b!7323497 c!1359147) b!7323493))

(assert (= (and b!7323497 (not c!1359147)) b!7323502))

(assert (= (and b!7323502 c!1359144) b!7323495))

(assert (= (and b!7323502 (not c!1359144)) b!7323498))

(assert (= (or b!7323493 b!7323495) bm!666141))

(assert (= (or b!7323493 b!7323495) bm!666140))

(assert (= (or b!7323492 bm!666140) bm!666139))

(assert (= (or b!7323492 bm!666141) bm!666138))

(assert (= (or b!7323494 bm!666139) bm!666137))

(assert (= (or b!7323494 b!7323492) bm!666142))

(declare-fun m!7989150 () Bool)

(assert (=> bm!666138 m!7989150))

(declare-fun m!7989152 () Bool)

(assert (=> b!7323500 m!7989152))

(declare-fun m!7989154 () Bool)

(assert (=> b!7323501 m!7989154))

(declare-fun m!7989156 () Bool)

(assert (=> bm!666137 m!7989156))

(declare-fun m!7989158 () Bool)

(assert (=> bm!666142 m!7989158))

(assert (=> b!7323430 d!2274225))

(declare-fun d!2274229 () Bool)

(assert (=> d!2274229 (= (tail!14665 (exprs!8416 ct1!256)) (t!385855 (exprs!8416 ct1!256)))))

(assert (=> b!7323430 d!2274229))

(declare-fun lt!2605297 () List!71472)

(declare-fun b!7323520 () Bool)

(declare-fun e!4385025 () Bool)

(assert (=> b!7323520 (= e!4385025 (or (not (= (exprs!8416 ct2!352) Nil!71348)) (= lt!2605297 (exprs!8416 ct1!256))))))

(declare-fun b!7323517 () Bool)

(declare-fun e!4385024 () List!71472)

(assert (=> b!7323517 (= e!4385024 (exprs!8416 ct2!352))))

(declare-fun b!7323519 () Bool)

(declare-fun res!2960223 () Bool)

(assert (=> b!7323519 (=> (not res!2960223) (not e!4385025))))

(declare-fun size!41901 (List!71472) Int)

(assert (=> b!7323519 (= res!2960223 (= (size!41901 lt!2605297) (+ (size!41901 (exprs!8416 ct1!256)) (size!41901 (exprs!8416 ct2!352)))))))

(declare-fun b!7323518 () Bool)

(assert (=> b!7323518 (= e!4385024 (Cons!71348 (h!77796 (exprs!8416 ct1!256)) (++!16800 (t!385855 (exprs!8416 ct1!256)) (exprs!8416 ct2!352))))))

(declare-fun d!2274231 () Bool)

(assert (=> d!2274231 e!4385025))

(declare-fun res!2960222 () Bool)

(assert (=> d!2274231 (=> (not res!2960222) (not e!4385025))))

(declare-fun content!14924 (List!71472) (Set Regex!18976))

(assert (=> d!2274231 (= res!2960222 (= (content!14924 lt!2605297) (set.union (content!14924 (exprs!8416 ct1!256)) (content!14924 (exprs!8416 ct2!352)))))))

(assert (=> d!2274231 (= lt!2605297 e!4385024)))

(declare-fun c!1359150 () Bool)

(assert (=> d!2274231 (= c!1359150 (is-Nil!71348 (exprs!8416 ct1!256)))))

(assert (=> d!2274231 (= (++!16800 (exprs!8416 ct1!256) (exprs!8416 ct2!352)) lt!2605297)))

(assert (= (and d!2274231 c!1359150) b!7323517))

(assert (= (and d!2274231 (not c!1359150)) b!7323518))

(assert (= (and d!2274231 res!2960222) b!7323519))

(assert (= (and b!7323519 res!2960223) b!7323520))

(declare-fun m!7989164 () Bool)

(assert (=> b!7323519 m!7989164))

(declare-fun m!7989166 () Bool)

(assert (=> b!7323519 m!7989166))

(declare-fun m!7989168 () Bool)

(assert (=> b!7323519 m!7989168))

(declare-fun m!7989170 () Bool)

(assert (=> b!7323518 m!7989170))

(declare-fun m!7989172 () Bool)

(assert (=> d!2274231 m!7989172))

(declare-fun m!7989174 () Bool)

(assert (=> d!2274231 m!7989174))

(declare-fun m!7989176 () Bool)

(assert (=> d!2274231 m!7989176))

(assert (=> b!7323435 d!2274231))

(declare-fun d!2274235 () Bool)

(assert (=> d!2274235 (forall!17830 (++!16800 (exprs!8416 ct1!256) (exprs!8416 ct2!352)) lambda!453745)))

(declare-fun lt!2605300 () Unit!164917)

(declare-fun choose!56946 (List!71472 List!71472 Int) Unit!164917)

(assert (=> d!2274235 (= lt!2605300 (choose!56946 (exprs!8416 ct1!256) (exprs!8416 ct2!352) lambda!453745))))

(assert (=> d!2274235 (forall!17830 (exprs!8416 ct1!256) lambda!453745)))

(assert (=> d!2274235 (= (lemmaConcatPreservesForall!1657 (exprs!8416 ct1!256) (exprs!8416 ct2!352) lambda!453745) lt!2605300)))

(declare-fun bs!1916341 () Bool)

(assert (= bs!1916341 d!2274235))

(assert (=> bs!1916341 m!7989088))

(assert (=> bs!1916341 m!7989088))

(declare-fun m!7989178 () Bool)

(assert (=> bs!1916341 m!7989178))

(declare-fun m!7989180 () Bool)

(assert (=> bs!1916341 m!7989180))

(declare-fun m!7989182 () Bool)

(assert (=> bs!1916341 m!7989182))

(assert (=> b!7323435 d!2274235))

(declare-fun b!7323541 () Bool)

(declare-fun e!4385039 () Bool)

(assert (=> b!7323541 (= e!4385039 (nullable!8080 (h!77796 (exprs!8416 ct1!256))))))

(declare-fun bm!666147 () Bool)

(declare-fun call!666152 () (Set Context!15832))

(assert (=> bm!666147 (= call!666152 (derivationStepZipperDown!2807 (h!77796 (exprs!8416 ct1!256)) (Context!15833 (t!385855 (exprs!8416 ct1!256))) c!10305))))

(declare-fun e!4385040 () (Set Context!15832))

(declare-fun b!7323542 () Bool)

(assert (=> b!7323542 (= e!4385040 (set.union call!666152 (derivationStepZipperUp!2656 (Context!15833 (t!385855 (exprs!8416 ct1!256))) c!10305)))))

(declare-fun b!7323543 () Bool)

(declare-fun e!4385038 () (Set Context!15832))

(assert (=> b!7323543 (= e!4385038 call!666152)))

(declare-fun b!7323544 () Bool)

(assert (=> b!7323544 (= e!4385040 e!4385038)))

(declare-fun c!1359160 () Bool)

(assert (=> b!7323544 (= c!1359160 (is-Cons!71348 (exprs!8416 ct1!256)))))

(declare-fun d!2274237 () Bool)

(declare-fun c!1359159 () Bool)

(assert (=> d!2274237 (= c!1359159 e!4385039)))

(declare-fun res!2960228 () Bool)

(assert (=> d!2274237 (=> (not res!2960228) (not e!4385039))))

(assert (=> d!2274237 (= res!2960228 (is-Cons!71348 (exprs!8416 ct1!256)))))

(assert (=> d!2274237 (= (derivationStepZipperUp!2656 ct1!256 c!10305) e!4385040)))

(declare-fun b!7323545 () Bool)

(assert (=> b!7323545 (= e!4385038 (as set.empty (Set Context!15832)))))

(assert (= (and d!2274237 res!2960228) b!7323541))

(assert (= (and d!2274237 c!1359159) b!7323542))

(assert (= (and d!2274237 (not c!1359159)) b!7323544))

(assert (= (and b!7323544 c!1359160) b!7323543))

(assert (= (and b!7323544 (not c!1359160)) b!7323545))

(assert (= (or b!7323542 b!7323543) bm!666147))

(assert (=> b!7323541 m!7989082))

(declare-fun m!7989184 () Bool)

(assert (=> bm!666147 m!7989184))

(declare-fun m!7989186 () Bool)

(assert (=> b!7323542 m!7989186))

(assert (=> start!714696 d!2274237))

(declare-fun bs!1916342 () Bool)

(declare-fun d!2274239 () Bool)

(assert (= bs!1916342 (and d!2274239 b!7323435)))

(declare-fun lambda!453759 () Int)

(assert (=> bs!1916342 (= lambda!453759 lambda!453745)))

(assert (=> d!2274239 (= (inv!90781 cWitness!35) (forall!17830 (exprs!8416 cWitness!35) lambda!453759))))

(declare-fun bs!1916343 () Bool)

(assert (= bs!1916343 d!2274239))

(declare-fun m!7989188 () Bool)

(assert (=> bs!1916343 m!7989188))

(assert (=> start!714696 d!2274239))

(declare-fun bs!1916344 () Bool)

(declare-fun d!2274241 () Bool)

(assert (= bs!1916344 (and d!2274241 b!7323435)))

(declare-fun lambda!453760 () Int)

(assert (=> bs!1916344 (= lambda!453760 lambda!453745)))

(declare-fun bs!1916345 () Bool)

(assert (= bs!1916345 (and d!2274241 d!2274239)))

(assert (=> bs!1916345 (= lambda!453760 lambda!453759)))

(assert (=> d!2274241 (= (inv!90781 ct1!256) (forall!17830 (exprs!8416 ct1!256) lambda!453760))))

(declare-fun bs!1916346 () Bool)

(assert (= bs!1916346 d!2274241))

(declare-fun m!7989190 () Bool)

(assert (=> bs!1916346 m!7989190))

(assert (=> start!714696 d!2274241))

(declare-fun bs!1916347 () Bool)

(declare-fun d!2274243 () Bool)

(assert (= bs!1916347 (and d!2274243 b!7323435)))

(declare-fun lambda!453761 () Int)

(assert (=> bs!1916347 (= lambda!453761 lambda!453745)))

(declare-fun bs!1916348 () Bool)

(assert (= bs!1916348 (and d!2274243 d!2274239)))

(assert (=> bs!1916348 (= lambda!453761 lambda!453759)))

(declare-fun bs!1916349 () Bool)

(assert (= bs!1916349 (and d!2274243 d!2274241)))

(assert (=> bs!1916349 (= lambda!453761 lambda!453760)))

(assert (=> d!2274243 (= (inv!90781 ct2!352) (forall!17830 (exprs!8416 ct2!352) lambda!453761))))

(declare-fun bs!1916350 () Bool)

(assert (= bs!1916350 d!2274243))

(declare-fun m!7989192 () Bool)

(assert (=> bs!1916350 m!7989192))

(assert (=> start!714696 d!2274243))

(declare-fun d!2274245 () Bool)

(declare-fun res!2960234 () Bool)

(declare-fun e!4385048 () Bool)

(assert (=> d!2274245 (=> res!2960234 e!4385048)))

(assert (=> d!2274245 (= res!2960234 (is-Nil!71348 (exprs!8416 cWitness!35)))))

(assert (=> d!2274245 (= (forall!17830 (exprs!8416 cWitness!35) lambda!453745) e!4385048)))

(declare-fun b!7323555 () Bool)

(declare-fun e!4385049 () Bool)

(assert (=> b!7323555 (= e!4385048 e!4385049)))

(declare-fun res!2960235 () Bool)

(assert (=> b!7323555 (=> (not res!2960235) (not e!4385049))))

(declare-fun dynLambda!29392 (Int Regex!18976) Bool)

(assert (=> b!7323555 (= res!2960235 (dynLambda!29392 lambda!453745 (h!77796 (exprs!8416 cWitness!35))))))

(declare-fun b!7323556 () Bool)

(assert (=> b!7323556 (= e!4385049 (forall!17830 (t!385855 (exprs!8416 cWitness!35)) lambda!453745))))

(assert (= (and d!2274245 (not res!2960234)) b!7323555))

(assert (= (and b!7323555 res!2960235) b!7323556))

(declare-fun b_lambda!283229 () Bool)

(assert (=> (not b_lambda!283229) (not b!7323555)))

(declare-fun m!7989200 () Bool)

(assert (=> b!7323555 m!7989200))

(declare-fun m!7989202 () Bool)

(assert (=> b!7323556 m!7989202))

(assert (=> b!7323434 d!2274245))

(declare-fun b!7323557 () Bool)

(declare-fun e!4385051 () Bool)

(assert (=> b!7323557 (= e!4385051 (nullable!8080 (h!77796 (exprs!8416 lt!2605257))))))

(declare-fun bm!666149 () Bool)

(declare-fun call!666154 () (Set Context!15832))

(assert (=> bm!666149 (= call!666154 (derivationStepZipperDown!2807 (h!77796 (exprs!8416 lt!2605257)) (Context!15833 (t!385855 (exprs!8416 lt!2605257))) c!10305))))

(declare-fun e!4385052 () (Set Context!15832))

(declare-fun b!7323558 () Bool)

(assert (=> b!7323558 (= e!4385052 (set.union call!666154 (derivationStepZipperUp!2656 (Context!15833 (t!385855 (exprs!8416 lt!2605257))) c!10305)))))

(declare-fun b!7323559 () Bool)

(declare-fun e!4385050 () (Set Context!15832))

(assert (=> b!7323559 (= e!4385050 call!666154)))

(declare-fun b!7323560 () Bool)

(assert (=> b!7323560 (= e!4385052 e!4385050)))

(declare-fun c!1359164 () Bool)

(assert (=> b!7323560 (= c!1359164 (is-Cons!71348 (exprs!8416 lt!2605257)))))

(declare-fun d!2274249 () Bool)

(declare-fun c!1359163 () Bool)

(assert (=> d!2274249 (= c!1359163 e!4385051)))

(declare-fun res!2960236 () Bool)

(assert (=> d!2274249 (=> (not res!2960236) (not e!4385051))))

(assert (=> d!2274249 (= res!2960236 (is-Cons!71348 (exprs!8416 lt!2605257)))))

(assert (=> d!2274249 (= (derivationStepZipperUp!2656 lt!2605257 c!10305) e!4385052)))

(declare-fun b!7323561 () Bool)

(assert (=> b!7323561 (= e!4385050 (as set.empty (Set Context!15832)))))

(assert (= (and d!2274249 res!2960236) b!7323557))

(assert (= (and d!2274249 c!1359163) b!7323558))

(assert (= (and d!2274249 (not c!1359163)) b!7323560))

(assert (= (and b!7323560 c!1359164) b!7323559))

(assert (= (and b!7323560 (not c!1359164)) b!7323561))

(assert (= (or b!7323558 b!7323559) bm!666149))

(declare-fun m!7989204 () Bool)

(assert (=> b!7323557 m!7989204))

(declare-fun m!7989206 () Bool)

(assert (=> bm!666149 m!7989206))

(declare-fun m!7989208 () Bool)

(assert (=> b!7323558 m!7989208))

(assert (=> b!7323433 d!2274249))

(declare-fun d!2274251 () Bool)

(declare-fun res!2960237 () Bool)

(declare-fun e!4385053 () Bool)

(assert (=> d!2274251 (=> res!2960237 e!4385053)))

(assert (=> d!2274251 (= res!2960237 (is-Nil!71348 (exprs!8416 ct2!352)))))

(assert (=> d!2274251 (= (forall!17830 (exprs!8416 ct2!352) lambda!453745) e!4385053)))

(declare-fun b!7323562 () Bool)

(declare-fun e!4385054 () Bool)

(assert (=> b!7323562 (= e!4385053 e!4385054)))

(declare-fun res!2960238 () Bool)

(assert (=> b!7323562 (=> (not res!2960238) (not e!4385054))))

(assert (=> b!7323562 (= res!2960238 (dynLambda!29392 lambda!453745 (h!77796 (exprs!8416 ct2!352))))))

(declare-fun b!7323563 () Bool)

(assert (=> b!7323563 (= e!4385054 (forall!17830 (t!385855 (exprs!8416 ct2!352)) lambda!453745))))

(assert (= (and d!2274251 (not res!2960237)) b!7323562))

(assert (= (and b!7323562 res!2960238) b!7323563))

(declare-fun b_lambda!283231 () Bool)

(assert (=> (not b_lambda!283231) (not b!7323562)))

(declare-fun m!7989210 () Bool)

(assert (=> b!7323562 m!7989210))

(declare-fun m!7989212 () Bool)

(assert (=> b!7323563 m!7989212))

(assert (=> b!7323438 d!2274251))

(declare-fun e!4385056 () Bool)

(declare-fun b!7323567 () Bool)

(declare-fun lt!2605301 () List!71472)

(assert (=> b!7323567 (= e!4385056 (or (not (= (exprs!8416 ct2!352) Nil!71348)) (= lt!2605301 lt!2605249)))))

(declare-fun b!7323564 () Bool)

(declare-fun e!4385055 () List!71472)

(assert (=> b!7323564 (= e!4385055 (exprs!8416 ct2!352))))

(declare-fun b!7323566 () Bool)

(declare-fun res!2960240 () Bool)

(assert (=> b!7323566 (=> (not res!2960240) (not e!4385056))))

(assert (=> b!7323566 (= res!2960240 (= (size!41901 lt!2605301) (+ (size!41901 lt!2605249) (size!41901 (exprs!8416 ct2!352)))))))

(declare-fun b!7323565 () Bool)

(assert (=> b!7323565 (= e!4385055 (Cons!71348 (h!77796 lt!2605249) (++!16800 (t!385855 lt!2605249) (exprs!8416 ct2!352))))))

(declare-fun d!2274253 () Bool)

(assert (=> d!2274253 e!4385056))

(declare-fun res!2960239 () Bool)

(assert (=> d!2274253 (=> (not res!2960239) (not e!4385056))))

(assert (=> d!2274253 (= res!2960239 (= (content!14924 lt!2605301) (set.union (content!14924 lt!2605249) (content!14924 (exprs!8416 ct2!352)))))))

(assert (=> d!2274253 (= lt!2605301 e!4385055)))

(declare-fun c!1359165 () Bool)

(assert (=> d!2274253 (= c!1359165 (is-Nil!71348 lt!2605249))))

(assert (=> d!2274253 (= (++!16800 lt!2605249 (exprs!8416 ct2!352)) lt!2605301)))

(assert (= (and d!2274253 c!1359165) b!7323564))

(assert (= (and d!2274253 (not c!1359165)) b!7323565))

(assert (= (and d!2274253 res!2960239) b!7323566))

(assert (= (and b!7323566 res!2960240) b!7323567))

(declare-fun m!7989214 () Bool)

(assert (=> b!7323566 m!7989214))

(declare-fun m!7989216 () Bool)

(assert (=> b!7323566 m!7989216))

(assert (=> b!7323566 m!7989168))

(declare-fun m!7989218 () Bool)

(assert (=> b!7323565 m!7989218))

(declare-fun m!7989220 () Bool)

(assert (=> d!2274253 m!7989220))

(declare-fun m!7989222 () Bool)

(assert (=> d!2274253 m!7989222))

(assert (=> d!2274253 m!7989176))

(assert (=> b!7323437 d!2274253))

(declare-fun bs!1916351 () Bool)

(declare-fun d!2274255 () Bool)

(assert (= bs!1916351 (and d!2274255 b!7323435)))

(declare-fun lambda!453766 () Int)

(assert (=> bs!1916351 (= lambda!453766 lambda!453745)))

(declare-fun bs!1916352 () Bool)

(assert (= bs!1916352 (and d!2274255 d!2274239)))

(assert (=> bs!1916352 (= lambda!453766 lambda!453759)))

(declare-fun bs!1916353 () Bool)

(assert (= bs!1916353 (and d!2274255 d!2274241)))

(assert (=> bs!1916353 (= lambda!453766 lambda!453760)))

(declare-fun bs!1916354 () Bool)

(assert (= bs!1916354 (and d!2274255 d!2274243)))

(assert (=> bs!1916354 (= lambda!453766 lambda!453761)))

(assert (=> d!2274255 (set.member (Context!15833 (++!16800 (exprs!8416 cWitness!35) (exprs!8416 ct2!352))) (derivationStepZipperUp!2656 (Context!15833 (++!16800 (exprs!8416 lt!2605257) (exprs!8416 ct2!352))) c!10305))))

(declare-fun lt!2605313 () Unit!164917)

(assert (=> d!2274255 (= lt!2605313 (lemmaConcatPreservesForall!1657 (exprs!8416 lt!2605257) (exprs!8416 ct2!352) lambda!453766))))

(declare-fun lt!2605312 () Unit!164917)

(assert (=> d!2274255 (= lt!2605312 (lemmaConcatPreservesForall!1657 (exprs!8416 cWitness!35) (exprs!8416 ct2!352) lambda!453766))))

(declare-fun lt!2605311 () Unit!164917)

(declare-fun choose!56947 (Context!15832 Context!15832 Context!15832 C!38226) Unit!164917)

(assert (=> d!2274255 (= lt!2605311 (choose!56947 lt!2605257 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274255 (set.member cWitness!35 (derivationStepZipperUp!2656 lt!2605257 c!10305))))

(assert (=> d!2274255 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!47 lt!2605257 ct2!352 cWitness!35 c!10305) lt!2605311)))

(declare-fun bs!1916355 () Bool)

(assert (= bs!1916355 d!2274255))

(declare-fun m!7989238 () Bool)

(assert (=> bs!1916355 m!7989238))

(assert (=> bs!1916355 m!7989058))

(declare-fun m!7989240 () Bool)

(assert (=> bs!1916355 m!7989240))

(declare-fun m!7989242 () Bool)

(assert (=> bs!1916355 m!7989242))

(declare-fun m!7989244 () Bool)

(assert (=> bs!1916355 m!7989244))

(declare-fun m!7989246 () Bool)

(assert (=> bs!1916355 m!7989246))

(declare-fun m!7989248 () Bool)

(assert (=> bs!1916355 m!7989248))

(assert (=> bs!1916355 m!7989080))

(declare-fun m!7989250 () Bool)

(assert (=> bs!1916355 m!7989250))

(assert (=> b!7323437 d!2274255))

(declare-fun b!7323580 () Bool)

(declare-fun e!4385064 () Bool)

(assert (=> b!7323580 (= e!4385064 (nullable!8080 (h!77796 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352)))))))))

(declare-fun bm!666150 () Bool)

(declare-fun call!666155 () (Set Context!15832))

(assert (=> bm!666150 (= call!666155 (derivationStepZipperDown!2807 (h!77796 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352))))) (Context!15833 (t!385855 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352)))))) c!10305))))

(declare-fun e!4385065 () (Set Context!15832))

(declare-fun b!7323581 () Bool)

(assert (=> b!7323581 (= e!4385065 (set.union call!666155 (derivationStepZipperUp!2656 (Context!15833 (t!385855 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352)))))) c!10305)))))

(declare-fun b!7323582 () Bool)

(declare-fun e!4385063 () (Set Context!15832))

(assert (=> b!7323582 (= e!4385063 call!666155)))

(declare-fun b!7323583 () Bool)

(assert (=> b!7323583 (= e!4385065 e!4385063)))

(declare-fun c!1359171 () Bool)

(assert (=> b!7323583 (= c!1359171 (is-Cons!71348 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352))))))))

(declare-fun d!2274259 () Bool)

(declare-fun c!1359170 () Bool)

(assert (=> d!2274259 (= c!1359170 e!4385064)))

(declare-fun res!2960247 () Bool)

(assert (=> d!2274259 (=> (not res!2960247) (not e!4385064))))

(assert (=> d!2274259 (= res!2960247 (is-Cons!71348 (exprs!8416 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352))))))))

(assert (=> d!2274259 (= (derivationStepZipperUp!2656 (Context!15833 (++!16800 lt!2605249 (exprs!8416 ct2!352))) c!10305) e!4385065)))

(declare-fun b!7323584 () Bool)

(assert (=> b!7323584 (= e!4385063 (as set.empty (Set Context!15832)))))

(assert (= (and d!2274259 res!2960247) b!7323580))

(assert (= (and d!2274259 c!1359170) b!7323581))

(assert (= (and d!2274259 (not c!1359170)) b!7323583))

(assert (= (and b!7323583 c!1359171) b!7323582))

(assert (= (and b!7323583 (not c!1359171)) b!7323584))

(assert (= (or b!7323581 b!7323582) bm!666150))

(declare-fun m!7989252 () Bool)

(assert (=> b!7323580 m!7989252))

(declare-fun m!7989254 () Bool)

(assert (=> bm!666150 m!7989254))

(declare-fun m!7989256 () Bool)

(assert (=> b!7323581 m!7989256))

(assert (=> b!7323437 d!2274259))

(declare-fun d!2274261 () Bool)

(assert (=> d!2274261 (forall!17830 (++!16800 (exprs!8416 cWitness!35) (exprs!8416 ct2!352)) lambda!453745)))

(declare-fun lt!2605314 () Unit!164917)

(assert (=> d!2274261 (= lt!2605314 (choose!56946 (exprs!8416 cWitness!35) (exprs!8416 ct2!352) lambda!453745))))

(assert (=> d!2274261 (forall!17830 (exprs!8416 cWitness!35) lambda!453745)))

(assert (=> d!2274261 (= (lemmaConcatPreservesForall!1657 (exprs!8416 cWitness!35) (exprs!8416 ct2!352) lambda!453745) lt!2605314)))

(declare-fun bs!1916356 () Bool)

(assert (= bs!1916356 d!2274261))

(assert (=> bs!1916356 m!7989058))

(assert (=> bs!1916356 m!7989058))

(declare-fun m!7989258 () Bool)

(assert (=> bs!1916356 m!7989258))

(declare-fun m!7989260 () Bool)

(assert (=> bs!1916356 m!7989260))

(assert (=> bs!1916356 m!7989092))

(assert (=> b!7323437 d!2274261))

(declare-fun b!7323588 () Bool)

(declare-fun lt!2605315 () List!71472)

(declare-fun e!4385067 () Bool)

(assert (=> b!7323588 (= e!4385067 (or (not (= (exprs!8416 ct2!352) Nil!71348)) (= lt!2605315 (exprs!8416 cWitness!35))))))

(declare-fun b!7323585 () Bool)

(declare-fun e!4385066 () List!71472)

(assert (=> b!7323585 (= e!4385066 (exprs!8416 ct2!352))))

(declare-fun b!7323587 () Bool)

(declare-fun res!2960249 () Bool)

(assert (=> b!7323587 (=> (not res!2960249) (not e!4385067))))

(assert (=> b!7323587 (= res!2960249 (= (size!41901 lt!2605315) (+ (size!41901 (exprs!8416 cWitness!35)) (size!41901 (exprs!8416 ct2!352)))))))

(declare-fun b!7323586 () Bool)

(assert (=> b!7323586 (= e!4385066 (Cons!71348 (h!77796 (exprs!8416 cWitness!35)) (++!16800 (t!385855 (exprs!8416 cWitness!35)) (exprs!8416 ct2!352))))))

(declare-fun d!2274263 () Bool)

(assert (=> d!2274263 e!4385067))

(declare-fun res!2960248 () Bool)

(assert (=> d!2274263 (=> (not res!2960248) (not e!4385067))))

(assert (=> d!2274263 (= res!2960248 (= (content!14924 lt!2605315) (set.union (content!14924 (exprs!8416 cWitness!35)) (content!14924 (exprs!8416 ct2!352)))))))

(assert (=> d!2274263 (= lt!2605315 e!4385066)))

(declare-fun c!1359172 () Bool)

(assert (=> d!2274263 (= c!1359172 (is-Nil!71348 (exprs!8416 cWitness!35)))))

(assert (=> d!2274263 (= (++!16800 (exprs!8416 cWitness!35) (exprs!8416 ct2!352)) lt!2605315)))

(assert (= (and d!2274263 c!1359172) b!7323585))

(assert (= (and d!2274263 (not c!1359172)) b!7323586))

(assert (= (and d!2274263 res!2960248) b!7323587))

(assert (= (and b!7323587 res!2960249) b!7323588))

(declare-fun m!7989262 () Bool)

(assert (=> b!7323587 m!7989262))

(declare-fun m!7989264 () Bool)

(assert (=> b!7323587 m!7989264))

(assert (=> b!7323587 m!7989168))

(declare-fun m!7989266 () Bool)

(assert (=> b!7323586 m!7989266))

(declare-fun m!7989268 () Bool)

(assert (=> d!2274263 m!7989268))

(declare-fun m!7989270 () Bool)

(assert (=> d!2274263 m!7989270))

(assert (=> d!2274263 m!7989176))

(assert (=> b!7323437 d!2274263))

(declare-fun d!2274265 () Bool)

(assert (=> d!2274265 (forall!17830 (++!16800 lt!2605249 (exprs!8416 ct2!352)) lambda!453745)))

(declare-fun lt!2605316 () Unit!164917)

(assert (=> d!2274265 (= lt!2605316 (choose!56946 lt!2605249 (exprs!8416 ct2!352) lambda!453745))))

(assert (=> d!2274265 (forall!17830 lt!2605249 lambda!453745)))

(assert (=> d!2274265 (= (lemmaConcatPreservesForall!1657 lt!2605249 (exprs!8416 ct2!352) lambda!453745) lt!2605316)))

(declare-fun bs!1916357 () Bool)

(assert (= bs!1916357 d!2274265))

(assert (=> bs!1916357 m!7989068))

(assert (=> bs!1916357 m!7989068))

(declare-fun m!7989272 () Bool)

(assert (=> bs!1916357 m!7989272))

(declare-fun m!7989274 () Bool)

(assert (=> bs!1916357 m!7989274))

(declare-fun m!7989276 () Bool)

(assert (=> bs!1916357 m!7989276))

(assert (=> b!7323437 d!2274265))

(declare-fun b!7323589 () Bool)

(declare-fun e!4385069 () Bool)

(assert (=> b!7323589 (= e!4385069 (nullable!8080 (h!77796 (exprs!8416 (Context!15833 lt!2605248)))))))

(declare-fun bm!666151 () Bool)

(declare-fun call!666156 () (Set Context!15832))

(assert (=> bm!666151 (= call!666156 (derivationStepZipperDown!2807 (h!77796 (exprs!8416 (Context!15833 lt!2605248))) (Context!15833 (t!385855 (exprs!8416 (Context!15833 lt!2605248)))) c!10305))))

(declare-fun b!7323590 () Bool)

(declare-fun e!4385070 () (Set Context!15832))

(assert (=> b!7323590 (= e!4385070 (set.union call!666156 (derivationStepZipperUp!2656 (Context!15833 (t!385855 (exprs!8416 (Context!15833 lt!2605248)))) c!10305)))))

(declare-fun b!7323591 () Bool)

(declare-fun e!4385068 () (Set Context!15832))

(assert (=> b!7323591 (= e!4385068 call!666156)))

(declare-fun b!7323592 () Bool)

(assert (=> b!7323592 (= e!4385070 e!4385068)))

(declare-fun c!1359174 () Bool)

(assert (=> b!7323592 (= c!1359174 (is-Cons!71348 (exprs!8416 (Context!15833 lt!2605248))))))

(declare-fun d!2274267 () Bool)

(declare-fun c!1359173 () Bool)

(assert (=> d!2274267 (= c!1359173 e!4385069)))

(declare-fun res!2960250 () Bool)

(assert (=> d!2274267 (=> (not res!2960250) (not e!4385069))))

(assert (=> d!2274267 (= res!2960250 (is-Cons!71348 (exprs!8416 (Context!15833 lt!2605248))))))

(assert (=> d!2274267 (= (derivationStepZipperUp!2656 (Context!15833 lt!2605248) c!10305) e!4385070)))

(declare-fun b!7323593 () Bool)

(assert (=> b!7323593 (= e!4385068 (as set.empty (Set Context!15832)))))

(assert (= (and d!2274267 res!2960250) b!7323589))

(assert (= (and d!2274267 c!1359173) b!7323590))

(assert (= (and d!2274267 (not c!1359173)) b!7323592))

(assert (= (and b!7323592 c!1359174) b!7323591))

(assert (= (and b!7323592 (not c!1359174)) b!7323593))

(assert (= (or b!7323590 b!7323591) bm!666151))

(declare-fun m!7989278 () Bool)

(assert (=> b!7323589 m!7989278))

(declare-fun m!7989280 () Bool)

(assert (=> bm!666151 m!7989280))

(declare-fun m!7989282 () Bool)

(assert (=> b!7323590 m!7989282))

(assert (=> b!7323437 d!2274267))

(declare-fun d!2274269 () Bool)

(assert (=> d!2274269 (= (isEmpty!40894 (exprs!8416 ct1!256)) (is-Nil!71348 (exprs!8416 ct1!256)))))

(assert (=> b!7323436 d!2274269))

(declare-fun b!7323598 () Bool)

(declare-fun e!4385073 () Bool)

(declare-fun tp!2080116 () Bool)

(declare-fun tp!2080117 () Bool)

(assert (=> b!7323598 (= e!4385073 (and tp!2080116 tp!2080117))))

(assert (=> b!7323439 (= tp!2080102 e!4385073)))

(assert (= (and b!7323439 (is-Cons!71348 (exprs!8416 ct2!352))) b!7323598))

(declare-fun b!7323599 () Bool)

(declare-fun e!4385074 () Bool)

(declare-fun tp!2080118 () Bool)

(declare-fun tp!2080119 () Bool)

(assert (=> b!7323599 (= e!4385074 (and tp!2080118 tp!2080119))))

(assert (=> b!7323432 (= tp!2080101 e!4385074)))

(assert (= (and b!7323432 (is-Cons!71348 (exprs!8416 ct1!256))) b!7323599))

(declare-fun b!7323600 () Bool)

(declare-fun e!4385075 () Bool)

(declare-fun tp!2080120 () Bool)

(declare-fun tp!2080121 () Bool)

(assert (=> b!7323600 (= e!4385075 (and tp!2080120 tp!2080121))))

(assert (=> b!7323431 (= tp!2080100 e!4385075)))

(assert (= (and b!7323431 (is-Cons!71348 (exprs!8416 cWitness!35))) b!7323600))

(declare-fun b_lambda!283233 () Bool)

(assert (= b_lambda!283231 (or b!7323435 b_lambda!283233)))

(declare-fun bs!1916358 () Bool)

(declare-fun d!2274271 () Bool)

(assert (= bs!1916358 (and d!2274271 b!7323435)))

(declare-fun validRegex!9622 (Regex!18976) Bool)

(assert (=> bs!1916358 (= (dynLambda!29392 lambda!453745 (h!77796 (exprs!8416 ct2!352))) (validRegex!9622 (h!77796 (exprs!8416 ct2!352))))))

(declare-fun m!7989284 () Bool)

(assert (=> bs!1916358 m!7989284))

(assert (=> b!7323562 d!2274271))

(declare-fun b_lambda!283235 () Bool)

(assert (= b_lambda!283229 (or b!7323435 b_lambda!283235)))

(declare-fun bs!1916359 () Bool)

(declare-fun d!2274273 () Bool)

(assert (= bs!1916359 (and d!2274273 b!7323435)))

(assert (=> bs!1916359 (= (dynLambda!29392 lambda!453745 (h!77796 (exprs!8416 cWitness!35))) (validRegex!9622 (h!77796 (exprs!8416 cWitness!35))))))

(declare-fun m!7989286 () Bool)

(assert (=> bs!1916359 m!7989286))

(assert (=> b!7323555 d!2274273))

(push 1)

(assert (not d!2274243))

(assert (not b_lambda!283235))

(assert (not d!2274235))

(assert (not b_lambda!283233))

(assert (not bm!666151))

(assert (not b!7323580))

(assert tp_is_empty!48197)

(assert (not b!7323519))

(assert (not b!7323566))

(assert (not b!7323542))

(assert (not d!2274255))

(assert (not bs!1916359))

(assert (not d!2274241))

(assert (not b!7323565))

(assert (not bm!666150))

(assert (not b!7323558))

(assert (not b!7323556))

(assert (not bm!666137))

(assert (not d!2274263))

(assert (not d!2274231))

(assert (not b!7323563))

(assert (not b!7323557))

(assert (not b!7323600))

(assert (not bm!666147))

(assert (not d!2274239))

(assert (not b!7323587))

(assert (not b!7323598))

(assert (not b!7323589))

(assert (not d!2274223))

(assert (not bm!666138))

(assert (not b!7323599))

(assert (not b!7323586))

(assert (not bs!1916358))

(assert (not bm!666142))

(assert (not d!2274261))

(assert (not d!2274253))

(assert (not b!7323501))

(assert (not b!7323590))

(assert (not b!7323541))

(assert (not b!7323518))

(assert (not b!7323581))

(assert (not bm!666149))

(assert (not d!2274265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

