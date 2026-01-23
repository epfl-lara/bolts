; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711252 () Bool)

(assert start!711252)

(declare-fun b!7296176 () Bool)

(assert (=> b!7296176 true))

(declare-fun e!4370014 () Bool)

(declare-fun e!4370011 () Bool)

(assert (=> b!7296176 (= e!4370014 (not e!4370011))))

(declare-fun res!2951115 () Bool)

(assert (=> b!7296176 (=> res!2951115 e!4370011)))

(declare-datatypes ((C!38010 0))(
  ( (C!38011 (val!28953 Int)) )
))
(declare-datatypes ((List!71053 0))(
  ( (Nil!70929) (Cons!70929 (h!77377 C!38010) (t!385129 List!71053)) )
))
(declare-fun s!7854 () List!71053)

(declare-datatypes ((Regex!18868 0))(
  ( (ElementMatch!18868 (c!1356081 C!38010)) (Concat!27713 (regOne!38248 Regex!18868) (regTwo!38248 Regex!18868)) (EmptyExpr!18868) (Star!18868 (reg!19197 Regex!18868)) (EmptyLang!18868) (Union!18868 (regOne!38249 Regex!18868) (regTwo!38249 Regex!18868)) )
))
(declare-datatypes ((List!71054 0))(
  ( (Nil!70930) (Cons!70930 (h!77378 Regex!18868) (t!385130 List!71054)) )
))
(declare-datatypes ((Context!15616 0))(
  ( (Context!15617 (exprs!8308 List!71054)) )
))
(declare-fun lt!2598201 () (Set Context!15616))

(declare-fun lt!2598197 () (Set Context!15616))

(declare-fun derivationStepZipper!3601 ((Set Context!15616) C!38010) (Set Context!15616))

(assert (=> b!7296176 (= res!2951115 (not (= lt!2598197 (derivationStepZipper!3601 lt!2598201 (h!77377 s!7854)))))))

(declare-fun ct1!250 () Context!15616)

(declare-fun lambda!450470 () Int)

(declare-datatypes ((Unit!164334 0))(
  ( (Unit!164335) )
))
(declare-fun lt!2598195 () Unit!164334)

(declare-fun ct2!346 () Context!15616)

(declare-fun lemmaConcatPreservesForall!1615 (List!71054 List!71054 Int) Unit!164334)

(assert (=> b!7296176 (= lt!2598195 (lemmaConcatPreservesForall!1615 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598191 () Context!15616)

(declare-fun lambda!450471 () Int)

(declare-fun flatMap!2963 ((Set Context!15616) Int) (Set Context!15616))

(declare-fun derivationStepZipperUp!2618 (Context!15616 C!38010) (Set Context!15616))

(assert (=> b!7296176 (= (flatMap!2963 lt!2598201 lambda!450471) (derivationStepZipperUp!2618 lt!2598191 (h!77377 s!7854)))))

(declare-fun lt!2598203 () Unit!164334)

(declare-fun lemmaFlatMapOnSingletonSet!2361 ((Set Context!15616) Context!15616 Int) Unit!164334)

(assert (=> b!7296176 (= lt!2598203 (lemmaFlatMapOnSingletonSet!2361 lt!2598201 lt!2598191 lambda!450471))))

(assert (=> b!7296176 (= lt!2598201 (set.insert lt!2598191 (as set.empty (Set Context!15616))))))

(declare-fun lt!2598204 () Unit!164334)

(assert (=> b!7296176 (= lt!2598204 (lemmaConcatPreservesForall!1615 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598196 () Unit!164334)

(assert (=> b!7296176 (= lt!2598196 (lemmaConcatPreservesForall!1615 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598188 () (Set Context!15616))

(assert (=> b!7296176 (= (flatMap!2963 lt!2598188 lambda!450471) (derivationStepZipperUp!2618 ct1!250 (h!77377 s!7854)))))

(declare-fun lt!2598200 () Unit!164334)

(assert (=> b!7296176 (= lt!2598200 (lemmaFlatMapOnSingletonSet!2361 lt!2598188 ct1!250 lambda!450471))))

(assert (=> b!7296176 (= lt!2598188 (set.insert ct1!250 (as set.empty (Set Context!15616))))))

(assert (=> b!7296176 (= lt!2598197 (derivationStepZipperUp!2618 lt!2598191 (h!77377 s!7854)))))

(declare-fun ++!16758 (List!71054 List!71054) List!71054)

(assert (=> b!7296176 (= lt!2598191 (Context!15617 (++!16758 (exprs!8308 ct1!250) (exprs!8308 ct2!346))))))

(declare-fun lt!2598190 () Unit!164334)

(assert (=> b!7296176 (= lt!2598190 (lemmaConcatPreservesForall!1615 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470))))

(declare-fun b!7296177 () Bool)

(declare-fun res!2951116 () Bool)

(assert (=> b!7296177 (=> res!2951116 e!4370011)))

(declare-fun isEmpty!40802 (List!71054) Bool)

(assert (=> b!7296177 (= res!2951116 (isEmpty!40802 (exprs!8308 ct1!250)))))

(declare-fun b!7296178 () Bool)

(declare-fun res!2951113 () Bool)

(assert (=> b!7296178 (=> (not res!2951113) (not e!4370014))))

(declare-fun nullableContext!358 (Context!15616) Bool)

(assert (=> b!7296178 (= res!2951113 (nullableContext!358 ct1!250))))

(declare-fun b!7296179 () Bool)

(declare-fun e!4370009 () Bool)

(declare-fun tp_is_empty!47201 () Bool)

(declare-fun tp!2062403 () Bool)

(assert (=> b!7296179 (= e!4370009 (and tp_is_empty!47201 tp!2062403))))

(declare-fun b!7296180 () Bool)

(declare-fun res!2951111 () Bool)

(assert (=> b!7296180 (=> (not res!2951111) (not e!4370014))))

(assert (=> b!7296180 (= res!2951111 (is-Cons!70929 s!7854))))

(declare-fun b!7296181 () Bool)

(declare-fun res!2951110 () Bool)

(declare-fun e!4370015 () Bool)

(assert (=> b!7296181 (=> res!2951110 e!4370015)))

(declare-fun lt!2598206 () (Set Context!15616))

(declare-fun lt!2598205 () Context!15616)

(declare-fun derivationStepZipperDown!2774 (Regex!18868 Context!15616 C!38010) (Set Context!15616))

(assert (=> b!7296181 (= res!2951110 (not (= lt!2598206 (set.union (derivationStepZipperDown!2774 (h!77378 (exprs!8308 ct1!250)) lt!2598205 (h!77377 s!7854)) (derivationStepZipperUp!2618 lt!2598205 (h!77377 s!7854))))))))

(declare-fun b!7296182 () Bool)

(declare-fun e!4370012 () Bool)

(declare-fun tp!2062402 () Bool)

(assert (=> b!7296182 (= e!4370012 tp!2062402)))

(declare-fun res!2951112 () Bool)

(assert (=> start!711252 (=> (not res!2951112) (not e!4370014))))

(declare-fun matchZipper!3772 ((Set Context!15616) List!71053) Bool)

(assert (=> start!711252 (= res!2951112 (matchZipper!3772 (set.insert ct2!346 (as set.empty (Set Context!15616))) s!7854))))

(assert (=> start!711252 e!4370014))

(declare-fun e!4370010 () Bool)

(declare-fun inv!90181 (Context!15616) Bool)

(assert (=> start!711252 (and (inv!90181 ct2!346) e!4370010)))

(assert (=> start!711252 e!4370009))

(assert (=> start!711252 (and (inv!90181 ct1!250) e!4370012)))

(declare-fun b!7296183 () Bool)

(assert (=> b!7296183 (= e!4370011 e!4370015)))

(declare-fun res!2951108 () Bool)

(assert (=> b!7296183 (=> res!2951108 e!4370015)))

(declare-fun nullable!8045 (Regex!18868) Bool)

(assert (=> b!7296183 (= res!2951108 (not (nullable!8045 (h!77378 (exprs!8308 ct1!250)))))))

(assert (=> b!7296183 (= lt!2598206 (derivationStepZipperUp!2618 ct1!250 (h!77377 s!7854)))))

(declare-fun lt!2598193 () List!71054)

(assert (=> b!7296183 (= lt!2598205 (Context!15617 lt!2598193))))

(declare-fun tail!14585 (List!71054) List!71054)

(assert (=> b!7296183 (= lt!2598193 (tail!14585 (exprs!8308 ct1!250)))))

(declare-fun b!7296184 () Bool)

(declare-fun e!4370013 () Bool)

(declare-fun lt!2598198 () Context!15616)

(assert (=> b!7296184 (= e!4370013 (inv!90181 lt!2598198))))

(declare-fun lt!2598199 () Unit!164334)

(assert (=> b!7296184 (= lt!2598199 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598189 () Unit!164334)

(assert (=> b!7296184 (= lt!2598189 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598187 () Unit!164334)

(assert (=> b!7296184 (= lt!2598187 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(assert (=> b!7296184 (matchZipper!3772 (set.insert lt!2598198 (as set.empty (Set Context!15616))) s!7854)))

(declare-fun lt!2598202 () Unit!164334)

(assert (=> b!7296184 (= lt!2598202 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598192 () Unit!164334)

(declare-fun lemmaPrependingNullableCtxStillMatches!51 (Context!15616 Context!15616 List!71053) Unit!164334)

(assert (=> b!7296184 (= lt!2598192 (lemmaPrependingNullableCtxStillMatches!51 lt!2598205 ct2!346 s!7854))))

(declare-fun b!7296185 () Bool)

(declare-fun tp!2062401 () Bool)

(assert (=> b!7296185 (= e!4370010 tp!2062401)))

(declare-fun b!7296186 () Bool)

(assert (=> b!7296186 (= e!4370015 e!4370013)))

(declare-fun res!2951109 () Bool)

(assert (=> b!7296186 (=> res!2951109 e!4370013)))

(assert (=> b!7296186 (= res!2951109 (not (= lt!2598197 (set.union (derivationStepZipperDown!2774 (h!77378 (exprs!8308 ct1!250)) lt!2598198 (h!77377 s!7854)) (derivationStepZipperUp!2618 lt!2598198 (h!77377 s!7854))))))))

(assert (=> b!7296186 (= lt!2598198 (Context!15617 (++!16758 lt!2598193 (exprs!8308 ct2!346))))))

(declare-fun lt!2598186 () Unit!164334)

(assert (=> b!7296186 (= lt!2598186 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(declare-fun lt!2598194 () Unit!164334)

(assert (=> b!7296186 (= lt!2598194 (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(declare-fun b!7296187 () Bool)

(declare-fun res!2951114 () Bool)

(assert (=> b!7296187 (=> res!2951114 e!4370011)))

(assert (=> b!7296187 (= res!2951114 (not (is-Cons!70930 (exprs!8308 ct1!250))))))

(assert (= (and start!711252 res!2951112) b!7296178))

(assert (= (and b!7296178 res!2951113) b!7296180))

(assert (= (and b!7296180 res!2951111) b!7296176))

(assert (= (and b!7296176 (not res!2951115)) b!7296187))

(assert (= (and b!7296187 (not res!2951114)) b!7296177))

(assert (= (and b!7296177 (not res!2951116)) b!7296183))

(assert (= (and b!7296183 (not res!2951108)) b!7296181))

(assert (= (and b!7296181 (not res!2951110)) b!7296186))

(assert (= (and b!7296186 (not res!2951109)) b!7296184))

(assert (= start!711252 b!7296185))

(assert (= (and start!711252 (is-Cons!70929 s!7854)) b!7296179))

(assert (= start!711252 b!7296182))

(declare-fun m!7967934 () Bool)

(assert (=> b!7296183 m!7967934))

(declare-fun m!7967936 () Bool)

(assert (=> b!7296183 m!7967936))

(declare-fun m!7967938 () Bool)

(assert (=> b!7296183 m!7967938))

(declare-fun m!7967940 () Bool)

(assert (=> b!7296177 m!7967940))

(declare-fun m!7967942 () Bool)

(assert (=> b!7296186 m!7967942))

(declare-fun m!7967944 () Bool)

(assert (=> b!7296186 m!7967944))

(declare-fun m!7967946 () Bool)

(assert (=> b!7296186 m!7967946))

(declare-fun m!7967948 () Bool)

(assert (=> b!7296186 m!7967948))

(assert (=> b!7296186 m!7967946))

(declare-fun m!7967950 () Bool)

(assert (=> b!7296176 m!7967950))

(assert (=> b!7296176 m!7967950))

(assert (=> b!7296176 m!7967950))

(declare-fun m!7967952 () Bool)

(assert (=> b!7296176 m!7967952))

(assert (=> b!7296176 m!7967950))

(declare-fun m!7967954 () Bool)

(assert (=> b!7296176 m!7967954))

(declare-fun m!7967956 () Bool)

(assert (=> b!7296176 m!7967956))

(declare-fun m!7967958 () Bool)

(assert (=> b!7296176 m!7967958))

(declare-fun m!7967960 () Bool)

(assert (=> b!7296176 m!7967960))

(declare-fun m!7967962 () Bool)

(assert (=> b!7296176 m!7967962))

(assert (=> b!7296176 m!7967936))

(declare-fun m!7967964 () Bool)

(assert (=> b!7296176 m!7967964))

(declare-fun m!7967966 () Bool)

(assert (=> b!7296176 m!7967966))

(declare-fun m!7967968 () Bool)

(assert (=> b!7296176 m!7967968))

(declare-fun m!7967970 () Bool)

(assert (=> start!711252 m!7967970))

(assert (=> start!711252 m!7967970))

(declare-fun m!7967972 () Bool)

(assert (=> start!711252 m!7967972))

(declare-fun m!7967974 () Bool)

(assert (=> start!711252 m!7967974))

(declare-fun m!7967976 () Bool)

(assert (=> start!711252 m!7967976))

(declare-fun m!7967978 () Bool)

(assert (=> b!7296181 m!7967978))

(declare-fun m!7967980 () Bool)

(assert (=> b!7296181 m!7967980))

(declare-fun m!7967982 () Bool)

(assert (=> b!7296184 m!7967982))

(assert (=> b!7296184 m!7967946))

(assert (=> b!7296184 m!7967946))

(declare-fun m!7967984 () Bool)

(assert (=> b!7296184 m!7967984))

(declare-fun m!7967986 () Bool)

(assert (=> b!7296184 m!7967986))

(assert (=> b!7296184 m!7967946))

(declare-fun m!7967988 () Bool)

(assert (=> b!7296184 m!7967988))

(assert (=> b!7296184 m!7967984))

(assert (=> b!7296184 m!7967946))

(declare-fun m!7967990 () Bool)

(assert (=> b!7296178 m!7967990))

(push 1)

(assert tp_is_empty!47201)

(assert (not b!7296177))

(assert (not start!711252))

(assert (not b!7296176))

(assert (not b!7296185))

(assert (not b!7296179))

(assert (not b!7296183))

(assert (not b!7296184))

(assert (not b!7296178))

(assert (not b!7296181))

(assert (not b!7296182))

(assert (not b!7296186))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912985 () Bool)

(declare-fun d!2266963 () Bool)

(assert (= bs!1912985 (and d!2266963 b!7296176)))

(declare-fun lambda!450500 () Int)

(assert (=> bs!1912985 (not (= lambda!450500 lambda!450470))))

(declare-fun forall!17689 (List!71054 Int) Bool)

(assert (=> d!2266963 (= (nullableContext!358 ct1!250) (forall!17689 (exprs!8308 ct1!250) lambda!450500))))

(declare-fun bs!1912986 () Bool)

(assert (= bs!1912986 d!2266963))

(declare-fun m!7968050 () Bool)

(assert (=> bs!1912986 m!7968050))

(assert (=> b!7296178 d!2266963))

(declare-fun d!2266965 () Bool)

(declare-fun nullableFct!3180 (Regex!18868) Bool)

(assert (=> d!2266965 (= (nullable!8045 (h!77378 (exprs!8308 ct1!250))) (nullableFct!3180 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun bs!1912987 () Bool)

(assert (= bs!1912987 d!2266965))

(declare-fun m!7968052 () Bool)

(assert (=> bs!1912987 m!7968052))

(assert (=> b!7296183 d!2266965))

(declare-fun b!7296238 () Bool)

(declare-fun e!4370044 () (Set Context!15616))

(declare-fun call!664774 () (Set Context!15616))

(assert (=> b!7296238 (= e!4370044 call!664774)))

(declare-fun b!7296239 () Bool)

(declare-fun e!4370045 () Bool)

(assert (=> b!7296239 (= e!4370045 (nullable!8045 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun b!7296240 () Bool)

(declare-fun e!4370043 () (Set Context!15616))

(assert (=> b!7296240 (= e!4370043 (set.union call!664774 (derivationStepZipperUp!2618 (Context!15617 (t!385130 (exprs!8308 ct1!250))) (h!77377 s!7854))))))

(declare-fun b!7296241 () Bool)

(assert (=> b!7296241 (= e!4370044 (as set.empty (Set Context!15616)))))

(declare-fun d!2266967 () Bool)

(declare-fun c!1356093 () Bool)

(assert (=> d!2266967 (= c!1356093 e!4370045)))

(declare-fun res!2951146 () Bool)

(assert (=> d!2266967 (=> (not res!2951146) (not e!4370045))))

(assert (=> d!2266967 (= res!2951146 (is-Cons!70930 (exprs!8308 ct1!250)))))

(assert (=> d!2266967 (= (derivationStepZipperUp!2618 ct1!250 (h!77377 s!7854)) e!4370043)))

(declare-fun b!7296242 () Bool)

(assert (=> b!7296242 (= e!4370043 e!4370044)))

(declare-fun c!1356092 () Bool)

(assert (=> b!7296242 (= c!1356092 (is-Cons!70930 (exprs!8308 ct1!250)))))

(declare-fun bm!664769 () Bool)

(assert (=> bm!664769 (= call!664774 (derivationStepZipperDown!2774 (h!77378 (exprs!8308 ct1!250)) (Context!15617 (t!385130 (exprs!8308 ct1!250))) (h!77377 s!7854)))))

(assert (= (and d!2266967 res!2951146) b!7296239))

(assert (= (and d!2266967 c!1356093) b!7296240))

(assert (= (and d!2266967 (not c!1356093)) b!7296242))

(assert (= (and b!7296242 c!1356092) b!7296238))

(assert (= (and b!7296242 (not c!1356092)) b!7296241))

(assert (= (or b!7296240 b!7296238) bm!664769))

(assert (=> b!7296239 m!7967934))

(declare-fun m!7968054 () Bool)

(assert (=> b!7296240 m!7968054))

(declare-fun m!7968056 () Bool)

(assert (=> bm!664769 m!7968056))

(assert (=> b!7296183 d!2266967))

(declare-fun d!2266969 () Bool)

(assert (=> d!2266969 (= (tail!14585 (exprs!8308 ct1!250)) (t!385130 (exprs!8308 ct1!250)))))

(assert (=> b!7296183 d!2266969))

(declare-fun d!2266971 () Bool)

(assert (=> d!2266971 (= (isEmpty!40802 (exprs!8308 ct1!250)) (is-Nil!70930 (exprs!8308 ct1!250)))))

(assert (=> b!7296177 d!2266971))

(declare-fun d!2266973 () Bool)

(declare-fun c!1356096 () Bool)

(declare-fun isEmpty!40804 (List!71053) Bool)

(assert (=> d!2266973 (= c!1356096 (isEmpty!40804 s!7854))))

(declare-fun e!4370048 () Bool)

(assert (=> d!2266973 (= (matchZipper!3772 (set.insert ct2!346 (as set.empty (Set Context!15616))) s!7854) e!4370048)))

(declare-fun b!7296247 () Bool)

(declare-fun nullableZipper!3060 ((Set Context!15616)) Bool)

(assert (=> b!7296247 (= e!4370048 (nullableZipper!3060 (set.insert ct2!346 (as set.empty (Set Context!15616)))))))

(declare-fun b!7296248 () Bool)

(declare-fun head!15058 (List!71053) C!38010)

(declare-fun tail!14587 (List!71053) List!71053)

(assert (=> b!7296248 (= e!4370048 (matchZipper!3772 (derivationStepZipper!3601 (set.insert ct2!346 (as set.empty (Set Context!15616))) (head!15058 s!7854)) (tail!14587 s!7854)))))

(assert (= (and d!2266973 c!1356096) b!7296247))

(assert (= (and d!2266973 (not c!1356096)) b!7296248))

(declare-fun m!7968058 () Bool)

(assert (=> d!2266973 m!7968058))

(assert (=> b!7296247 m!7967970))

(declare-fun m!7968060 () Bool)

(assert (=> b!7296247 m!7968060))

(declare-fun m!7968062 () Bool)

(assert (=> b!7296248 m!7968062))

(assert (=> b!7296248 m!7967970))

(assert (=> b!7296248 m!7968062))

(declare-fun m!7968064 () Bool)

(assert (=> b!7296248 m!7968064))

(declare-fun m!7968066 () Bool)

(assert (=> b!7296248 m!7968066))

(assert (=> b!7296248 m!7968064))

(assert (=> b!7296248 m!7968066))

(declare-fun m!7968068 () Bool)

(assert (=> b!7296248 m!7968068))

(assert (=> start!711252 d!2266973))

(declare-fun bs!1912988 () Bool)

(declare-fun d!2266975 () Bool)

(assert (= bs!1912988 (and d!2266975 b!7296176)))

(declare-fun lambda!450503 () Int)

(assert (=> bs!1912988 (= lambda!450503 lambda!450470)))

(declare-fun bs!1912989 () Bool)

(assert (= bs!1912989 (and d!2266975 d!2266963)))

(assert (=> bs!1912989 (not (= lambda!450503 lambda!450500))))

(assert (=> d!2266975 (= (inv!90181 ct2!346) (forall!17689 (exprs!8308 ct2!346) lambda!450503))))

(declare-fun bs!1912990 () Bool)

(assert (= bs!1912990 d!2266975))

(declare-fun m!7968070 () Bool)

(assert (=> bs!1912990 m!7968070))

(assert (=> start!711252 d!2266975))

(declare-fun bs!1912991 () Bool)

(declare-fun d!2266977 () Bool)

(assert (= bs!1912991 (and d!2266977 b!7296176)))

(declare-fun lambda!450504 () Int)

(assert (=> bs!1912991 (= lambda!450504 lambda!450470)))

(declare-fun bs!1912992 () Bool)

(assert (= bs!1912992 (and d!2266977 d!2266963)))

(assert (=> bs!1912992 (not (= lambda!450504 lambda!450500))))

(declare-fun bs!1912993 () Bool)

(assert (= bs!1912993 (and d!2266977 d!2266975)))

(assert (=> bs!1912993 (= lambda!450504 lambda!450503)))

(assert (=> d!2266977 (= (inv!90181 ct1!250) (forall!17689 (exprs!8308 ct1!250) lambda!450504))))

(declare-fun bs!1912994 () Bool)

(assert (= bs!1912994 d!2266977))

(declare-fun m!7968072 () Bool)

(assert (=> bs!1912994 m!7968072))

(assert (=> start!711252 d!2266977))

(declare-fun d!2266979 () Bool)

(assert (=> d!2266979 (forall!17689 (++!16758 lt!2598193 (exprs!8308 ct2!346)) lambda!450470)))

(declare-fun lt!2598272 () Unit!164334)

(declare-fun choose!56536 (List!71054 List!71054 Int) Unit!164334)

(assert (=> d!2266979 (= lt!2598272 (choose!56536 lt!2598193 (exprs!8308 ct2!346) lambda!450470))))

(assert (=> d!2266979 (forall!17689 lt!2598193 lambda!450470)))

(assert (=> d!2266979 (= (lemmaConcatPreservesForall!1615 lt!2598193 (exprs!8308 ct2!346) lambda!450470) lt!2598272)))

(declare-fun bs!1912995 () Bool)

(assert (= bs!1912995 d!2266979))

(assert (=> bs!1912995 m!7967942))

(assert (=> bs!1912995 m!7967942))

(declare-fun m!7968074 () Bool)

(assert (=> bs!1912995 m!7968074))

(declare-fun m!7968076 () Bool)

(assert (=> bs!1912995 m!7968076))

(declare-fun m!7968078 () Bool)

(assert (=> bs!1912995 m!7968078))

(assert (=> b!7296184 d!2266979))

(declare-fun d!2266981 () Bool)

(declare-fun c!1356097 () Bool)

(assert (=> d!2266981 (= c!1356097 (isEmpty!40804 s!7854))))

(declare-fun e!4370049 () Bool)

(assert (=> d!2266981 (= (matchZipper!3772 (set.insert lt!2598198 (as set.empty (Set Context!15616))) s!7854) e!4370049)))

(declare-fun b!7296249 () Bool)

(assert (=> b!7296249 (= e!4370049 (nullableZipper!3060 (set.insert lt!2598198 (as set.empty (Set Context!15616)))))))

(declare-fun b!7296250 () Bool)

(assert (=> b!7296250 (= e!4370049 (matchZipper!3772 (derivationStepZipper!3601 (set.insert lt!2598198 (as set.empty (Set Context!15616))) (head!15058 s!7854)) (tail!14587 s!7854)))))

(assert (= (and d!2266981 c!1356097) b!7296249))

(assert (= (and d!2266981 (not c!1356097)) b!7296250))

(assert (=> d!2266981 m!7968058))

(assert (=> b!7296249 m!7967984))

(declare-fun m!7968080 () Bool)

(assert (=> b!7296249 m!7968080))

(assert (=> b!7296250 m!7968062))

(assert (=> b!7296250 m!7967984))

(assert (=> b!7296250 m!7968062))

(declare-fun m!7968082 () Bool)

(assert (=> b!7296250 m!7968082))

(assert (=> b!7296250 m!7968066))

(assert (=> b!7296250 m!7968082))

(assert (=> b!7296250 m!7968066))

(declare-fun m!7968084 () Bool)

(assert (=> b!7296250 m!7968084))

(assert (=> b!7296184 d!2266981))

(declare-fun bs!1912996 () Bool)

(declare-fun d!2266983 () Bool)

(assert (= bs!1912996 (and d!2266983 b!7296176)))

(declare-fun lambda!450507 () Int)

(assert (=> bs!1912996 (= lambda!450507 lambda!450470)))

(declare-fun bs!1912997 () Bool)

(assert (= bs!1912997 (and d!2266983 d!2266963)))

(assert (=> bs!1912997 (not (= lambda!450507 lambda!450500))))

(declare-fun bs!1912998 () Bool)

(assert (= bs!1912998 (and d!2266983 d!2266975)))

(assert (=> bs!1912998 (= lambda!450507 lambda!450503)))

(declare-fun bs!1912999 () Bool)

(assert (= bs!1912999 (and d!2266983 d!2266977)))

(assert (=> bs!1912999 (= lambda!450507 lambda!450504)))

(assert (=> d!2266983 (matchZipper!3772 (set.insert (Context!15617 (++!16758 (exprs!8308 lt!2598205) (exprs!8308 ct2!346))) (as set.empty (Set Context!15616))) s!7854)))

(declare-fun lt!2598278 () Unit!164334)

(assert (=> d!2266983 (= lt!2598278 (lemmaConcatPreservesForall!1615 (exprs!8308 lt!2598205) (exprs!8308 ct2!346) lambda!450507))))

(declare-fun lt!2598277 () Unit!164334)

(declare-fun choose!56537 (Context!15616 Context!15616 List!71053) Unit!164334)

(assert (=> d!2266983 (= lt!2598277 (choose!56537 lt!2598205 ct2!346 s!7854))))

(assert (=> d!2266983 (matchZipper!3772 (set.insert ct2!346 (as set.empty (Set Context!15616))) s!7854)))

(assert (=> d!2266983 (= (lemmaPrependingNullableCtxStillMatches!51 lt!2598205 ct2!346 s!7854) lt!2598277)))

(declare-fun bs!1913000 () Bool)

(assert (= bs!1913000 d!2266983))

(declare-fun m!7968086 () Bool)

(assert (=> bs!1913000 m!7968086))

(declare-fun m!7968088 () Bool)

(assert (=> bs!1913000 m!7968088))

(assert (=> bs!1913000 m!7967970))

(assert (=> bs!1913000 m!7967972))

(assert (=> bs!1913000 m!7967970))

(declare-fun m!7968090 () Bool)

(assert (=> bs!1913000 m!7968090))

(assert (=> bs!1913000 m!7968086))

(declare-fun m!7968092 () Bool)

(assert (=> bs!1913000 m!7968092))

(declare-fun m!7968094 () Bool)

(assert (=> bs!1913000 m!7968094))

(assert (=> b!7296184 d!2266983))

(declare-fun bs!1913001 () Bool)

(declare-fun d!2266985 () Bool)

(assert (= bs!1913001 (and d!2266985 d!2266975)))

(declare-fun lambda!450508 () Int)

(assert (=> bs!1913001 (= lambda!450508 lambda!450503)))

(declare-fun bs!1913002 () Bool)

(assert (= bs!1913002 (and d!2266985 d!2266963)))

(assert (=> bs!1913002 (not (= lambda!450508 lambda!450500))))

(declare-fun bs!1913003 () Bool)

(assert (= bs!1913003 (and d!2266985 d!2266983)))

(assert (=> bs!1913003 (= lambda!450508 lambda!450507)))

(declare-fun bs!1913004 () Bool)

(assert (= bs!1913004 (and d!2266985 b!7296176)))

(assert (=> bs!1913004 (= lambda!450508 lambda!450470)))

(declare-fun bs!1913005 () Bool)

(assert (= bs!1913005 (and d!2266985 d!2266977)))

(assert (=> bs!1913005 (= lambda!450508 lambda!450504)))

(assert (=> d!2266985 (= (inv!90181 lt!2598198) (forall!17689 (exprs!8308 lt!2598198) lambda!450508))))

(declare-fun bs!1913006 () Bool)

(assert (= bs!1913006 d!2266985))

(declare-fun m!7968096 () Bool)

(assert (=> bs!1913006 m!7968096))

(assert (=> b!7296184 d!2266985))

(declare-fun bm!664782 () Bool)

(declare-fun c!1356109 () Bool)

(declare-fun c!1356110 () Bool)

(declare-fun c!1356113 () Bool)

(declare-fun call!664792 () (Set Context!15616))

(declare-fun call!664788 () List!71054)

(assert (=> bm!664782 (= call!664792 (derivationStepZipperDown!2774 (ite c!1356109 (regOne!38249 (h!77378 (exprs!8308 ct1!250))) (ite c!1356113 (regTwo!38248 (h!77378 (exprs!8308 ct1!250))) (ite c!1356110 (regOne!38248 (h!77378 (exprs!8308 ct1!250))) (reg!19197 (h!77378 (exprs!8308 ct1!250)))))) (ite (or c!1356109 c!1356113) lt!2598198 (Context!15617 call!664788)) (h!77377 s!7854)))))

(declare-fun b!7296273 () Bool)

(declare-fun e!4370065 () (Set Context!15616))

(assert (=> b!7296273 (= e!4370065 (as set.empty (Set Context!15616)))))

(declare-fun b!7296274 () Bool)

(declare-fun e!4370067 () (Set Context!15616))

(declare-fun call!664790 () (Set Context!15616))

(assert (=> b!7296274 (= e!4370067 call!664790)))

(declare-fun bm!664783 () Bool)

(declare-fun call!664791 () (Set Context!15616))

(declare-fun call!664789 () List!71054)

(assert (=> bm!664783 (= call!664791 (derivationStepZipperDown!2774 (ite c!1356109 (regTwo!38249 (h!77378 (exprs!8308 ct1!250))) (regOne!38248 (h!77378 (exprs!8308 ct1!250)))) (ite c!1356109 lt!2598198 (Context!15617 call!664789)) (h!77377 s!7854)))))

(declare-fun b!7296275 () Bool)

(declare-fun c!1356111 () Bool)

(assert (=> b!7296275 (= c!1356111 (is-Star!18868 (h!77378 (exprs!8308 ct1!250))))))

(assert (=> b!7296275 (= e!4370067 e!4370065)))

(declare-fun bm!664784 () Bool)

(declare-fun call!664787 () (Set Context!15616))

(assert (=> bm!664784 (= call!664790 call!664787)))

(declare-fun b!7296276 () Bool)

(declare-fun e!4370063 () (Set Context!15616))

(assert (=> b!7296276 (= e!4370063 e!4370067)))

(assert (=> b!7296276 (= c!1356110 (is-Concat!27713 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun b!7296277 () Bool)

(declare-fun e!4370064 () (Set Context!15616))

(assert (=> b!7296277 (= e!4370064 (set.insert lt!2598198 (as set.empty (Set Context!15616))))))

(declare-fun b!7296278 () Bool)

(assert (=> b!7296278 (= e!4370063 (set.union call!664791 call!664787))))

(declare-fun b!7296279 () Bool)

(declare-fun e!4370062 () Bool)

(assert (=> b!7296279 (= c!1356113 e!4370062)))

(declare-fun res!2951149 () Bool)

(assert (=> b!7296279 (=> (not res!2951149) (not e!4370062))))

(assert (=> b!7296279 (= res!2951149 (is-Concat!27713 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun e!4370066 () (Set Context!15616))

(assert (=> b!7296279 (= e!4370066 e!4370063)))

(declare-fun bm!664785 () Bool)

(assert (=> bm!664785 (= call!664788 call!664789)))

(declare-fun b!7296280 () Bool)

(assert (=> b!7296280 (= e!4370064 e!4370066)))

(assert (=> b!7296280 (= c!1356109 (is-Union!18868 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun b!7296281 () Bool)

(assert (=> b!7296281 (= e!4370065 call!664790)))

(declare-fun bm!664786 () Bool)

(assert (=> bm!664786 (= call!664787 call!664792)))

(declare-fun bm!664787 () Bool)

(declare-fun $colon$colon!2997 (List!71054 Regex!18868) List!71054)

(assert (=> bm!664787 (= call!664789 ($colon$colon!2997 (exprs!8308 lt!2598198) (ite (or c!1356113 c!1356110) (regTwo!38248 (h!77378 (exprs!8308 ct1!250))) (h!77378 (exprs!8308 ct1!250)))))))

(declare-fun b!7296282 () Bool)

(assert (=> b!7296282 (= e!4370066 (set.union call!664792 call!664791))))

(declare-fun b!7296283 () Bool)

(assert (=> b!7296283 (= e!4370062 (nullable!8045 (regOne!38248 (h!77378 (exprs!8308 ct1!250)))))))

(declare-fun d!2266987 () Bool)

(declare-fun c!1356112 () Bool)

(assert (=> d!2266987 (= c!1356112 (and (is-ElementMatch!18868 (h!77378 (exprs!8308 ct1!250))) (= (c!1356081 (h!77378 (exprs!8308 ct1!250))) (h!77377 s!7854))))))

(assert (=> d!2266987 (= (derivationStepZipperDown!2774 (h!77378 (exprs!8308 ct1!250)) lt!2598198 (h!77377 s!7854)) e!4370064)))

(assert (= (and d!2266987 c!1356112) b!7296277))

(assert (= (and d!2266987 (not c!1356112)) b!7296280))

(assert (= (and b!7296280 c!1356109) b!7296282))

(assert (= (and b!7296280 (not c!1356109)) b!7296279))

(assert (= (and b!7296279 res!2951149) b!7296283))

(assert (= (and b!7296279 c!1356113) b!7296278))

(assert (= (and b!7296279 (not c!1356113)) b!7296276))

(assert (= (and b!7296276 c!1356110) b!7296274))

(assert (= (and b!7296276 (not c!1356110)) b!7296275))

(assert (= (and b!7296275 c!1356111) b!7296281))

(assert (= (and b!7296275 (not c!1356111)) b!7296273))

(assert (= (or b!7296274 b!7296281) bm!664785))

(assert (= (or b!7296274 b!7296281) bm!664784))

(assert (= (or b!7296278 bm!664785) bm!664787))

(assert (= (or b!7296278 bm!664784) bm!664786))

(assert (= (or b!7296282 bm!664786) bm!664782))

(assert (= (or b!7296282 b!7296278) bm!664783))

(assert (=> b!7296277 m!7967984))

(declare-fun m!7968102 () Bool)

(assert (=> bm!664782 m!7968102))

(declare-fun m!7968104 () Bool)

(assert (=> bm!664783 m!7968104))

(declare-fun m!7968106 () Bool)

(assert (=> bm!664787 m!7968106))

(declare-fun m!7968108 () Bool)

(assert (=> b!7296283 m!7968108))

(assert (=> b!7296186 d!2266987))

(assert (=> b!7296186 d!2266979))

(declare-fun b!7296284 () Bool)

(declare-fun e!4370069 () (Set Context!15616))

(declare-fun call!664793 () (Set Context!15616))

(assert (=> b!7296284 (= e!4370069 call!664793)))

(declare-fun b!7296285 () Bool)

(declare-fun e!4370070 () Bool)

(assert (=> b!7296285 (= e!4370070 (nullable!8045 (h!77378 (exprs!8308 lt!2598198))))))

(declare-fun e!4370068 () (Set Context!15616))

(declare-fun b!7296286 () Bool)

(assert (=> b!7296286 (= e!4370068 (set.union call!664793 (derivationStepZipperUp!2618 (Context!15617 (t!385130 (exprs!8308 lt!2598198))) (h!77377 s!7854))))))

(declare-fun b!7296287 () Bool)

(assert (=> b!7296287 (= e!4370069 (as set.empty (Set Context!15616)))))

(declare-fun d!2266995 () Bool)

(declare-fun c!1356115 () Bool)

(assert (=> d!2266995 (= c!1356115 e!4370070)))

(declare-fun res!2951150 () Bool)

(assert (=> d!2266995 (=> (not res!2951150) (not e!4370070))))

(assert (=> d!2266995 (= res!2951150 (is-Cons!70930 (exprs!8308 lt!2598198)))))

(assert (=> d!2266995 (= (derivationStepZipperUp!2618 lt!2598198 (h!77377 s!7854)) e!4370068)))

(declare-fun b!7296288 () Bool)

(assert (=> b!7296288 (= e!4370068 e!4370069)))

(declare-fun c!1356114 () Bool)

(assert (=> b!7296288 (= c!1356114 (is-Cons!70930 (exprs!8308 lt!2598198)))))

(declare-fun bm!664788 () Bool)

(assert (=> bm!664788 (= call!664793 (derivationStepZipperDown!2774 (h!77378 (exprs!8308 lt!2598198)) (Context!15617 (t!385130 (exprs!8308 lt!2598198))) (h!77377 s!7854)))))

(assert (= (and d!2266995 res!2951150) b!7296285))

(assert (= (and d!2266995 c!1356115) b!7296286))

(assert (= (and d!2266995 (not c!1356115)) b!7296288))

(assert (= (and b!7296288 c!1356114) b!7296284))

(assert (= (and b!7296288 (not c!1356114)) b!7296287))

(assert (= (or b!7296286 b!7296284) bm!664788))

(declare-fun m!7968110 () Bool)

(assert (=> b!7296285 m!7968110))

(declare-fun m!7968112 () Bool)

(assert (=> b!7296286 m!7968112))

(declare-fun m!7968114 () Bool)

(assert (=> bm!664788 m!7968114))

(assert (=> b!7296186 d!2266995))

(declare-fun b!7296309 () Bool)

(declare-fun res!2951157 () Bool)

(declare-fun e!4370082 () Bool)

(assert (=> b!7296309 (=> (not res!2951157) (not e!4370082))))

(declare-fun lt!2598281 () List!71054)

(declare-fun size!41862 (List!71054) Int)

(assert (=> b!7296309 (= res!2951157 (= (size!41862 lt!2598281) (+ (size!41862 lt!2598193) (size!41862 (exprs!8308 ct2!346)))))))

(declare-fun d!2266997 () Bool)

(assert (=> d!2266997 e!4370082))

(declare-fun res!2951158 () Bool)

(assert (=> d!2266997 (=> (not res!2951158) (not e!4370082))))

(declare-fun content!14816 (List!71054) (Set Regex!18868))

(assert (=> d!2266997 (= res!2951158 (= (content!14816 lt!2598281) (set.union (content!14816 lt!2598193) (content!14816 (exprs!8308 ct2!346)))))))

(declare-fun e!4370081 () List!71054)

(assert (=> d!2266997 (= lt!2598281 e!4370081)))

(declare-fun c!1356122 () Bool)

(assert (=> d!2266997 (= c!1356122 (is-Nil!70930 lt!2598193))))

(assert (=> d!2266997 (= (++!16758 lt!2598193 (exprs!8308 ct2!346)) lt!2598281)))

(declare-fun b!7296308 () Bool)

(assert (=> b!7296308 (= e!4370081 (Cons!70930 (h!77378 lt!2598193) (++!16758 (t!385130 lt!2598193) (exprs!8308 ct2!346))))))

(declare-fun b!7296310 () Bool)

(assert (=> b!7296310 (= e!4370082 (or (not (= (exprs!8308 ct2!346) Nil!70930)) (= lt!2598281 lt!2598193)))))

(declare-fun b!7296307 () Bool)

(assert (=> b!7296307 (= e!4370081 (exprs!8308 ct2!346))))

(assert (= (and d!2266997 c!1356122) b!7296307))

(assert (= (and d!2266997 (not c!1356122)) b!7296308))

(assert (= (and d!2266997 res!2951158) b!7296309))

(assert (= (and b!7296309 res!2951157) b!7296310))

(declare-fun m!7968116 () Bool)

(assert (=> b!7296309 m!7968116))

(declare-fun m!7968118 () Bool)

(assert (=> b!7296309 m!7968118))

(declare-fun m!7968120 () Bool)

(assert (=> b!7296309 m!7968120))

(declare-fun m!7968122 () Bool)

(assert (=> d!2266997 m!7968122))

(declare-fun m!7968124 () Bool)

(assert (=> d!2266997 m!7968124))

(declare-fun m!7968126 () Bool)

(assert (=> d!2266997 m!7968126))

(declare-fun m!7968128 () Bool)

(assert (=> b!7296308 m!7968128))

(assert (=> b!7296186 d!2266997))

(assert (=> b!7296176 d!2266967))

(declare-fun b!7296313 () Bool)

(declare-fun res!2951159 () Bool)

(declare-fun e!4370084 () Bool)

(assert (=> b!7296313 (=> (not res!2951159) (not e!4370084))))

(declare-fun lt!2598282 () List!71054)

(assert (=> b!7296313 (= res!2951159 (= (size!41862 lt!2598282) (+ (size!41862 (exprs!8308 ct1!250)) (size!41862 (exprs!8308 ct2!346)))))))

(declare-fun d!2266999 () Bool)

(assert (=> d!2266999 e!4370084))

(declare-fun res!2951160 () Bool)

(assert (=> d!2266999 (=> (not res!2951160) (not e!4370084))))

(assert (=> d!2266999 (= res!2951160 (= (content!14816 lt!2598282) (set.union (content!14816 (exprs!8308 ct1!250)) (content!14816 (exprs!8308 ct2!346)))))))

(declare-fun e!4370083 () List!71054)

(assert (=> d!2266999 (= lt!2598282 e!4370083)))

(declare-fun c!1356123 () Bool)

(assert (=> d!2266999 (= c!1356123 (is-Nil!70930 (exprs!8308 ct1!250)))))

(assert (=> d!2266999 (= (++!16758 (exprs!8308 ct1!250) (exprs!8308 ct2!346)) lt!2598282)))

(declare-fun b!7296312 () Bool)

(assert (=> b!7296312 (= e!4370083 (Cons!70930 (h!77378 (exprs!8308 ct1!250)) (++!16758 (t!385130 (exprs!8308 ct1!250)) (exprs!8308 ct2!346))))))

(declare-fun b!7296314 () Bool)

(assert (=> b!7296314 (= e!4370084 (or (not (= (exprs!8308 ct2!346) Nil!70930)) (= lt!2598282 (exprs!8308 ct1!250))))))

(declare-fun b!7296311 () Bool)

(assert (=> b!7296311 (= e!4370083 (exprs!8308 ct2!346))))

(assert (= (and d!2266999 c!1356123) b!7296311))

(assert (= (and d!2266999 (not c!1356123)) b!7296312))

(assert (= (and d!2266999 res!2951160) b!7296313))

(assert (= (and b!7296313 res!2951159) b!7296314))

(declare-fun m!7968130 () Bool)

(assert (=> b!7296313 m!7968130))

(declare-fun m!7968132 () Bool)

(assert (=> b!7296313 m!7968132))

(assert (=> b!7296313 m!7968120))

(declare-fun m!7968134 () Bool)

(assert (=> d!2266999 m!7968134))

(declare-fun m!7968136 () Bool)

(assert (=> d!2266999 m!7968136))

(assert (=> d!2266999 m!7968126))

(declare-fun m!7968138 () Bool)

(assert (=> b!7296312 m!7968138))

(assert (=> b!7296176 d!2266999))

(declare-fun b!7296315 () Bool)

(declare-fun e!4370086 () (Set Context!15616))

(declare-fun call!664796 () (Set Context!15616))

(assert (=> b!7296315 (= e!4370086 call!664796)))

(declare-fun b!7296316 () Bool)

(declare-fun e!4370087 () Bool)

(assert (=> b!7296316 (= e!4370087 (nullable!8045 (h!77378 (exprs!8308 lt!2598191))))))

(declare-fun b!7296317 () Bool)

(declare-fun e!4370085 () (Set Context!15616))

(assert (=> b!7296317 (= e!4370085 (set.union call!664796 (derivationStepZipperUp!2618 (Context!15617 (t!385130 (exprs!8308 lt!2598191))) (h!77377 s!7854))))))

(declare-fun b!7296318 () Bool)

(assert (=> b!7296318 (= e!4370086 (as set.empty (Set Context!15616)))))

(declare-fun d!2267001 () Bool)

(declare-fun c!1356125 () Bool)

(assert (=> d!2267001 (= c!1356125 e!4370087)))

(declare-fun res!2951161 () Bool)

(assert (=> d!2267001 (=> (not res!2951161) (not e!4370087))))

(assert (=> d!2267001 (= res!2951161 (is-Cons!70930 (exprs!8308 lt!2598191)))))

(assert (=> d!2267001 (= (derivationStepZipperUp!2618 lt!2598191 (h!77377 s!7854)) e!4370085)))

(declare-fun b!7296319 () Bool)

(assert (=> b!7296319 (= e!4370085 e!4370086)))

(declare-fun c!1356124 () Bool)

(assert (=> b!7296319 (= c!1356124 (is-Cons!70930 (exprs!8308 lt!2598191)))))

(declare-fun bm!664791 () Bool)

(assert (=> bm!664791 (= call!664796 (derivationStepZipperDown!2774 (h!77378 (exprs!8308 lt!2598191)) (Context!15617 (t!385130 (exprs!8308 lt!2598191))) (h!77377 s!7854)))))

(assert (= (and d!2267001 res!2951161) b!7296316))

(assert (= (and d!2267001 c!1356125) b!7296317))

(assert (= (and d!2267001 (not c!1356125)) b!7296319))

(assert (= (and b!7296319 c!1356124) b!7296315))

(assert (= (and b!7296319 (not c!1356124)) b!7296318))

(assert (= (or b!7296317 b!7296315) bm!664791))

(declare-fun m!7968140 () Bool)

(assert (=> b!7296316 m!7968140))

(declare-fun m!7968142 () Bool)

(assert (=> b!7296317 m!7968142))

(declare-fun m!7968144 () Bool)

(assert (=> bm!664791 m!7968144))

(assert (=> b!7296176 d!2267001))

(declare-fun d!2267003 () Bool)

(declare-fun dynLambda!29006 (Int Context!15616) (Set Context!15616))

(assert (=> d!2267003 (= (flatMap!2963 lt!2598201 lambda!450471) (dynLambda!29006 lambda!450471 lt!2598191))))

(declare-fun lt!2598285 () Unit!164334)

(declare-fun choose!56538 ((Set Context!15616) Context!15616 Int) Unit!164334)

(assert (=> d!2267003 (= lt!2598285 (choose!56538 lt!2598201 lt!2598191 lambda!450471))))

(assert (=> d!2267003 (= lt!2598201 (set.insert lt!2598191 (as set.empty (Set Context!15616))))))

(assert (=> d!2267003 (= (lemmaFlatMapOnSingletonSet!2361 lt!2598201 lt!2598191 lambda!450471) lt!2598285)))

(declare-fun b_lambda!281389 () Bool)

(assert (=> (not b_lambda!281389) (not d!2267003)))

(declare-fun bs!1913010 () Bool)

(assert (= bs!1913010 d!2267003))

(assert (=> bs!1913010 m!7967968))

(declare-fun m!7968146 () Bool)

(assert (=> bs!1913010 m!7968146))

(declare-fun m!7968148 () Bool)

(assert (=> bs!1913010 m!7968148))

(assert (=> bs!1913010 m!7967956))

(assert (=> b!7296176 d!2267003))

(declare-fun d!2267005 () Bool)

(assert (=> d!2267005 (forall!17689 (++!16758 (exprs!8308 ct1!250) (exprs!8308 ct2!346)) lambda!450470)))

(declare-fun lt!2598286 () Unit!164334)

(assert (=> d!2267005 (= lt!2598286 (choose!56536 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470))))

(assert (=> d!2267005 (forall!17689 (exprs!8308 ct1!250) lambda!450470)))

(assert (=> d!2267005 (= (lemmaConcatPreservesForall!1615 (exprs!8308 ct1!250) (exprs!8308 ct2!346) lambda!450470) lt!2598286)))

(declare-fun bs!1913011 () Bool)

(assert (= bs!1913011 d!2267005))

(assert (=> bs!1913011 m!7967964))

(assert (=> bs!1913011 m!7967964))

(declare-fun m!7968150 () Bool)

(assert (=> bs!1913011 m!7968150))

(declare-fun m!7968152 () Bool)

(assert (=> bs!1913011 m!7968152))

(declare-fun m!7968154 () Bool)

(assert (=> bs!1913011 m!7968154))

(assert (=> b!7296176 d!2267005))

(declare-fun d!2267007 () Bool)

(declare-fun choose!56539 ((Set Context!15616) Int) (Set Context!15616))

(assert (=> d!2267007 (= (flatMap!2963 lt!2598188 lambda!450471) (choose!56539 lt!2598188 lambda!450471))))

(declare-fun bs!1913012 () Bool)

(assert (= bs!1913012 d!2267007))

(declare-fun m!7968156 () Bool)

(assert (=> bs!1913012 m!7968156))

(assert (=> b!7296176 d!2267007))

(declare-fun bs!1913013 () Bool)

(declare-fun d!2267009 () Bool)

(assert (= bs!1913013 (and d!2267009 b!7296176)))

(declare-fun lambda!450514 () Int)

(assert (=> bs!1913013 (= lambda!450514 lambda!450471)))

(assert (=> d!2267009 true))

(assert (=> d!2267009 (= (derivationStepZipper!3601 lt!2598201 (h!77377 s!7854)) (flatMap!2963 lt!2598201 lambda!450514))))

(declare-fun bs!1913014 () Bool)

(assert (= bs!1913014 d!2267009))

(declare-fun m!7968162 () Bool)

(assert (=> bs!1913014 m!7968162))

(assert (=> b!7296176 d!2267009))

(declare-fun d!2267015 () Bool)

(assert (=> d!2267015 (= (flatMap!2963 lt!2598201 lambda!450471) (choose!56539 lt!2598201 lambda!450471))))

(declare-fun bs!1913015 () Bool)

(assert (= bs!1913015 d!2267015))

(declare-fun m!7968164 () Bool)

(assert (=> bs!1913015 m!7968164))

(assert (=> b!7296176 d!2267015))

(declare-fun d!2267017 () Bool)

(assert (=> d!2267017 (= (flatMap!2963 lt!2598188 lambda!450471) (dynLambda!29006 lambda!450471 ct1!250))))

(declare-fun lt!2598287 () Unit!164334)

(assert (=> d!2267017 (= lt!2598287 (choose!56538 lt!2598188 ct1!250 lambda!450471))))

(assert (=> d!2267017 (= lt!2598188 (set.insert ct1!250 (as set.empty (Set Context!15616))))))

(assert (=> d!2267017 (= (lemmaFlatMapOnSingletonSet!2361 lt!2598188 ct1!250 lambda!450471) lt!2598287)))

(declare-fun b_lambda!281391 () Bool)

(assert (=> (not b_lambda!281391) (not d!2267017)))

(declare-fun bs!1913016 () Bool)

(assert (= bs!1913016 d!2267017))

(assert (=> bs!1913016 m!7967952))

(declare-fun m!7968166 () Bool)

(assert (=> bs!1913016 m!7968166))

(declare-fun m!7968168 () Bool)

(assert (=> bs!1913016 m!7968168))

(assert (=> bs!1913016 m!7967958))

(assert (=> b!7296176 d!2267017))

(declare-fun c!1356136 () Bool)

(declare-fun call!664800 () List!71054)

(declare-fun c!1356132 () Bool)

(declare-fun bm!664794 () Bool)

(declare-fun c!1356133 () Bool)

(declare-fun call!664804 () (Set Context!15616))

(assert (=> bm!664794 (= call!664804 (derivationStepZipperDown!2774 (ite c!1356132 (regOne!38249 (h!77378 (exprs!8308 ct1!250))) (ite c!1356136 (regTwo!38248 (h!77378 (exprs!8308 ct1!250))) (ite c!1356133 (regOne!38248 (h!77378 (exprs!8308 ct1!250))) (reg!19197 (h!77378 (exprs!8308 ct1!250)))))) (ite (or c!1356132 c!1356136) lt!2598205 (Context!15617 call!664800)) (h!77377 s!7854)))))

(declare-fun b!7296332 () Bool)

(declare-fun e!4370097 () (Set Context!15616))

(assert (=> b!7296332 (= e!4370097 (as set.empty (Set Context!15616)))))

(declare-fun b!7296333 () Bool)

(declare-fun e!4370099 () (Set Context!15616))

(declare-fun call!664802 () (Set Context!15616))

(assert (=> b!7296333 (= e!4370099 call!664802)))

(declare-fun call!664801 () List!71054)

(declare-fun call!664803 () (Set Context!15616))

(declare-fun bm!664795 () Bool)

(assert (=> bm!664795 (= call!664803 (derivationStepZipperDown!2774 (ite c!1356132 (regTwo!38249 (h!77378 (exprs!8308 ct1!250))) (regOne!38248 (h!77378 (exprs!8308 ct1!250)))) (ite c!1356132 lt!2598205 (Context!15617 call!664801)) (h!77377 s!7854)))))

(declare-fun b!7296334 () Bool)

(declare-fun c!1356134 () Bool)

(assert (=> b!7296334 (= c!1356134 (is-Star!18868 (h!77378 (exprs!8308 ct1!250))))))

(assert (=> b!7296334 (= e!4370099 e!4370097)))

(declare-fun bm!664796 () Bool)

(declare-fun call!664799 () (Set Context!15616))

(assert (=> bm!664796 (= call!664802 call!664799)))

(declare-fun b!7296335 () Bool)

(declare-fun e!4370095 () (Set Context!15616))

(assert (=> b!7296335 (= e!4370095 e!4370099)))

(assert (=> b!7296335 (= c!1356133 (is-Concat!27713 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun b!7296336 () Bool)

(declare-fun e!4370096 () (Set Context!15616))

(assert (=> b!7296336 (= e!4370096 (set.insert lt!2598205 (as set.empty (Set Context!15616))))))

(declare-fun b!7296337 () Bool)

(assert (=> b!7296337 (= e!4370095 (set.union call!664803 call!664799))))

(declare-fun b!7296338 () Bool)

(declare-fun e!4370094 () Bool)

(assert (=> b!7296338 (= c!1356136 e!4370094)))

(declare-fun res!2951164 () Bool)

(assert (=> b!7296338 (=> (not res!2951164) (not e!4370094))))

(assert (=> b!7296338 (= res!2951164 (is-Concat!27713 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun e!4370098 () (Set Context!15616))

(assert (=> b!7296338 (= e!4370098 e!4370095)))

(declare-fun bm!664797 () Bool)

(assert (=> bm!664797 (= call!664800 call!664801)))

(declare-fun b!7296339 () Bool)

(assert (=> b!7296339 (= e!4370096 e!4370098)))

(assert (=> b!7296339 (= c!1356132 (is-Union!18868 (h!77378 (exprs!8308 ct1!250))))))

(declare-fun b!7296340 () Bool)

(assert (=> b!7296340 (= e!4370097 call!664802)))

(declare-fun bm!664798 () Bool)

(assert (=> bm!664798 (= call!664799 call!664804)))

(declare-fun bm!664799 () Bool)

(assert (=> bm!664799 (= call!664801 ($colon$colon!2997 (exprs!8308 lt!2598205) (ite (or c!1356136 c!1356133) (regTwo!38248 (h!77378 (exprs!8308 ct1!250))) (h!77378 (exprs!8308 ct1!250)))))))

(declare-fun b!7296341 () Bool)

(assert (=> b!7296341 (= e!4370098 (set.union call!664804 call!664803))))

(declare-fun b!7296342 () Bool)

(assert (=> b!7296342 (= e!4370094 (nullable!8045 (regOne!38248 (h!77378 (exprs!8308 ct1!250)))))))

(declare-fun d!2267019 () Bool)

(declare-fun c!1356135 () Bool)

(assert (=> d!2267019 (= c!1356135 (and (is-ElementMatch!18868 (h!77378 (exprs!8308 ct1!250))) (= (c!1356081 (h!77378 (exprs!8308 ct1!250))) (h!77377 s!7854))))))

(assert (=> d!2267019 (= (derivationStepZipperDown!2774 (h!77378 (exprs!8308 ct1!250)) lt!2598205 (h!77377 s!7854)) e!4370096)))

(assert (= (and d!2267019 c!1356135) b!7296336))

(assert (= (and d!2267019 (not c!1356135)) b!7296339))

(assert (= (and b!7296339 c!1356132) b!7296341))

(assert (= (and b!7296339 (not c!1356132)) b!7296338))

(assert (= (and b!7296338 res!2951164) b!7296342))

(assert (= (and b!7296338 c!1356136) b!7296337))

(assert (= (and b!7296338 (not c!1356136)) b!7296335))

(assert (= (and b!7296335 c!1356133) b!7296333))

(assert (= (and b!7296335 (not c!1356133)) b!7296334))

(assert (= (and b!7296334 c!1356134) b!7296340))

(assert (= (and b!7296334 (not c!1356134)) b!7296332))

(assert (= (or b!7296333 b!7296340) bm!664797))

(assert (= (or b!7296333 b!7296340) bm!664796))

(assert (= (or b!7296337 bm!664797) bm!664799))

(assert (= (or b!7296337 bm!664796) bm!664798))

(assert (= (or b!7296341 bm!664798) bm!664794))

(assert (= (or b!7296341 b!7296337) bm!664795))

(declare-fun m!7968176 () Bool)

(assert (=> b!7296336 m!7968176))

(declare-fun m!7968178 () Bool)

(assert (=> bm!664794 m!7968178))

(declare-fun m!7968180 () Bool)

(assert (=> bm!664795 m!7968180))

(declare-fun m!7968182 () Bool)

(assert (=> bm!664799 m!7968182))

(assert (=> b!7296342 m!7968108))

(assert (=> b!7296181 d!2267019))

(declare-fun b!7296343 () Bool)

(declare-fun e!4370101 () (Set Context!15616))

(declare-fun call!664805 () (Set Context!15616))

(assert (=> b!7296343 (= e!4370101 call!664805)))

(declare-fun b!7296344 () Bool)

(declare-fun e!4370102 () Bool)

(assert (=> b!7296344 (= e!4370102 (nullable!8045 (h!77378 (exprs!8308 lt!2598205))))))

(declare-fun b!7296345 () Bool)

(declare-fun e!4370100 () (Set Context!15616))

(assert (=> b!7296345 (= e!4370100 (set.union call!664805 (derivationStepZipperUp!2618 (Context!15617 (t!385130 (exprs!8308 lt!2598205))) (h!77377 s!7854))))))

(declare-fun b!7296346 () Bool)

(assert (=> b!7296346 (= e!4370101 (as set.empty (Set Context!15616)))))

(declare-fun d!2267023 () Bool)

(declare-fun c!1356138 () Bool)

(assert (=> d!2267023 (= c!1356138 e!4370102)))

(declare-fun res!2951165 () Bool)

(assert (=> d!2267023 (=> (not res!2951165) (not e!4370102))))

(assert (=> d!2267023 (= res!2951165 (is-Cons!70930 (exprs!8308 lt!2598205)))))

(assert (=> d!2267023 (= (derivationStepZipperUp!2618 lt!2598205 (h!77377 s!7854)) e!4370100)))

(declare-fun b!7296347 () Bool)

(assert (=> b!7296347 (= e!4370100 e!4370101)))

(declare-fun c!1356137 () Bool)

(assert (=> b!7296347 (= c!1356137 (is-Cons!70930 (exprs!8308 lt!2598205)))))

(declare-fun bm!664800 () Bool)

(assert (=> bm!664800 (= call!664805 (derivationStepZipperDown!2774 (h!77378 (exprs!8308 lt!2598205)) (Context!15617 (t!385130 (exprs!8308 lt!2598205))) (h!77377 s!7854)))))

(assert (= (and d!2267023 res!2951165) b!7296344))

(assert (= (and d!2267023 c!1356138) b!7296345))

(assert (= (and d!2267023 (not c!1356138)) b!7296347))

(assert (= (and b!7296347 c!1356137) b!7296343))

(assert (= (and b!7296347 (not c!1356137)) b!7296346))

(assert (= (or b!7296345 b!7296343) bm!664800))

(declare-fun m!7968184 () Bool)

(assert (=> b!7296344 m!7968184))

(declare-fun m!7968186 () Bool)

(assert (=> b!7296345 m!7968186))

(declare-fun m!7968188 () Bool)

(assert (=> bm!664800 m!7968188))

(assert (=> b!7296181 d!2267023))

(declare-fun b!7296352 () Bool)

(declare-fun e!4370105 () Bool)

(declare-fun tp!2062415 () Bool)

(assert (=> b!7296352 (= e!4370105 (and tp_is_empty!47201 tp!2062415))))

(assert (=> b!7296179 (= tp!2062403 e!4370105)))

(assert (= (and b!7296179 (is-Cons!70929 (t!385129 s!7854))) b!7296352))

(declare-fun b!7296357 () Bool)

(declare-fun e!4370108 () Bool)

(declare-fun tp!2062420 () Bool)

(declare-fun tp!2062421 () Bool)

(assert (=> b!7296357 (= e!4370108 (and tp!2062420 tp!2062421))))

(assert (=> b!7296185 (= tp!2062401 e!4370108)))

(assert (= (and b!7296185 (is-Cons!70930 (exprs!8308 ct2!346))) b!7296357))

(declare-fun b!7296358 () Bool)

(declare-fun e!4370109 () Bool)

(declare-fun tp!2062422 () Bool)

(declare-fun tp!2062423 () Bool)

(assert (=> b!7296358 (= e!4370109 (and tp!2062422 tp!2062423))))

(assert (=> b!7296182 (= tp!2062402 e!4370109)))

(assert (= (and b!7296182 (is-Cons!70930 (exprs!8308 ct1!250))) b!7296358))

(declare-fun b_lambda!281393 () Bool)

(assert (= b_lambda!281389 (or b!7296176 b_lambda!281393)))

(declare-fun bs!1913017 () Bool)

(declare-fun d!2267025 () Bool)

(assert (= bs!1913017 (and d!2267025 b!7296176)))

(assert (=> bs!1913017 (= (dynLambda!29006 lambda!450471 lt!2598191) (derivationStepZipperUp!2618 lt!2598191 (h!77377 s!7854)))))

(assert (=> bs!1913017 m!7967966))

(assert (=> d!2267003 d!2267025))

(declare-fun b_lambda!281395 () Bool)

(assert (= b_lambda!281391 (or b!7296176 b_lambda!281395)))

(declare-fun bs!1913018 () Bool)

(declare-fun d!2267027 () Bool)

(assert (= bs!1913018 (and d!2267027 b!7296176)))

(assert (=> bs!1913018 (= (dynLambda!29006 lambda!450471 ct1!250) (derivationStepZipperUp!2618 ct1!250 (h!77377 s!7854)))))

(assert (=> bs!1913018 m!7967936))

(assert (=> d!2267017 d!2267027))

(push 1)

(assert tp_is_empty!47201)

(assert (not bm!664769))

(assert (not bm!664795))

(assert (not d!2266997))

(assert (not b!7296313))

(assert (not b!7296317))

(assert (not b!7296312))

(assert (not b!7296248))

(assert (not d!2266965))

(assert (not bm!664787))

(assert (not bm!664794))

(assert (not b!7296247))

(assert (not d!2267007))

(assert (not b!7296357))

(assert (not b!7296286))

(assert (not d!2266975))

(assert (not b!7296309))

(assert (not d!2266985))

(assert (not bm!664799))

(assert (not d!2266977))

(assert (not bm!664791))

(assert (not b!7296344))

(assert (not d!2267003))

(assert (not b!7296316))

(assert (not b!7296283))

(assert (not d!2266983))

(assert (not bm!664782))

(assert (not b_lambda!281393))

(assert (not bm!664800))

(assert (not d!2266973))

(assert (not b!7296345))

(assert (not b!7296342))

(assert (not b!7296240))

(assert (not d!2267009))

(assert (not d!2267015))

(assert (not b!7296352))

(assert (not bs!1913018))

(assert (not d!2266979))

(assert (not d!2267017))

(assert (not d!2266981))

(assert (not bm!664788))

(assert (not b!7296249))

(assert (not d!2266963))

(assert (not b!7296308))

(assert (not b_lambda!281395))

(assert (not b!7296250))

(assert (not b!7296239))

(assert (not b!7296285))

(assert (not d!2266999))

(assert (not d!2267005))

(assert (not bs!1913017))

(assert (not b!7296358))

(assert (not bm!664783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

