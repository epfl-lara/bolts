; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715428 () Bool)

(assert start!715428)

(declare-fun b!7328241 () Bool)

(declare-fun e!4388013 () Bool)

(declare-datatypes ((C!38298 0))(
  ( (C!38299 (val!29509 Int)) )
))
(declare-datatypes ((Regex!19012 0))(
  ( (ElementMatch!19012 (c!1360433 C!38298)) (Concat!27857 (regOne!38536 Regex!19012) (regTwo!38536 Regex!19012)) (EmptyExpr!19012) (Star!19012 (reg!19341 Regex!19012)) (EmptyLang!19012) (Union!19012 (regOne!38537 Regex!19012) (regTwo!38537 Regex!19012)) )
))
(declare-datatypes ((List!71508 0))(
  ( (Nil!71384) (Cons!71384 (h!77832 Regex!19012) (t!385895 List!71508)) )
))
(declare-datatypes ((Context!15904 0))(
  ( (Context!15905 (exprs!8452 List!71508)) )
))
(declare-fun ct2!352 () Context!15904)

(declare-fun lambda!454325 () Int)

(declare-fun forall!17861 (List!71508 Int) Bool)

(assert (=> b!7328241 (= e!4388013 (forall!17861 (exprs!8452 ct2!352) lambda!454325))))

(declare-fun b!7328242 () Bool)

(declare-fun res!2961865 () Bool)

(declare-fun e!4388010 () Bool)

(assert (=> b!7328242 (=> (not res!2961865) (not e!4388010))))

(declare-fun lt!2606844 () List!71508)

(declare-fun isEmpty!40930 (List!71508) Bool)

(assert (=> b!7328242 (= res!2961865 (not (isEmpty!40930 lt!2606844)))))

(declare-fun b!7328243 () Bool)

(declare-fun e!4388014 () Bool)

(assert (=> b!7328243 (= e!4388014 e!4388010)))

(declare-fun res!2961861 () Bool)

(assert (=> b!7328243 (=> (not res!2961861) (not e!4388010))))

(declare-fun ct1!256 () Context!15904)

(declare-fun nullable!8116 (Regex!19012) Bool)

(assert (=> b!7328243 (= res!2961861 (not (nullable!8116 (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun lt!2606847 () (Set Context!15904))

(declare-fun c!10305 () C!38298)

(declare-fun lt!2606852 () Context!15904)

(declare-fun derivationStepZipperDown!2843 (Regex!19012 Context!15904 C!38298) (Set Context!15904))

(assert (=> b!7328243 (= lt!2606847 (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) lt!2606852 c!10305))))

(declare-fun lt!2606848 () List!71508)

(assert (=> b!7328243 (= lt!2606852 (Context!15905 lt!2606848))))

(declare-fun tail!14701 (List!71508) List!71508)

(assert (=> b!7328243 (= lt!2606848 (tail!14701 (exprs!8452 ct1!256)))))

(declare-fun b!7328244 () Bool)

(declare-fun e!4388012 () Bool)

(declare-fun tp!2080870 () Bool)

(assert (=> b!7328244 (= e!4388012 tp!2080870)))

(declare-fun b!7328245 () Bool)

(declare-fun res!2961864 () Bool)

(assert (=> b!7328245 (=> (not res!2961864) (not e!4388014))))

(assert (=> b!7328245 (= res!2961864 (not (isEmpty!40930 (exprs!8452 ct1!256))))))

(declare-fun b!7328246 () Bool)

(declare-fun e!4388016 () Bool)

(assert (=> b!7328246 (= e!4388010 (not e!4388016))))

(declare-fun res!2961860 () Bool)

(assert (=> b!7328246 (=> res!2961860 e!4388016)))

(declare-fun lt!2606850 () Context!15904)

(declare-fun lt!2606843 () (Set Context!15904))

(assert (=> b!7328246 (= res!2961860 (not (set.member lt!2606850 lt!2606843)))))

(declare-fun cWitness!35 () Context!15904)

(declare-datatypes ((Unit!164989 0))(
  ( (Unit!164990) )
))
(declare-fun lt!2606849 () Unit!164989)

(declare-fun lemmaConcatPreservesForall!1693 (List!71508 List!71508 Int) Unit!164989)

(assert (=> b!7328246 (= lt!2606849 (lemmaConcatPreservesForall!1693 (exprs!8452 cWitness!35) (exprs!8452 ct2!352) lambda!454325))))

(declare-fun ++!16836 (List!71508 List!71508) List!71508)

(assert (=> b!7328246 (set.member lt!2606850 (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352))) c!10305))))

(assert (=> b!7328246 (= lt!2606850 (Context!15905 (++!16836 (exprs!8452 cWitness!35) (exprs!8452 ct2!352))))))

(declare-fun lt!2606853 () Unit!164989)

(assert (=> b!7328246 (= lt!2606853 (lemmaConcatPreservesForall!1693 lt!2606848 (exprs!8452 ct2!352) lambda!454325))))

(declare-fun lt!2606854 () Unit!164989)

(assert (=> b!7328246 (= lt!2606854 (lemmaConcatPreservesForall!1693 (exprs!8452 cWitness!35) (exprs!8452 ct2!352) lambda!454325))))

(declare-fun lt!2606846 () Unit!164989)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!19 (Regex!19012 Context!15904 Context!15904 Context!15904 C!38298) Unit!164989)

(assert (=> b!7328246 (= lt!2606846 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!19 (h!77832 (exprs!8452 ct1!256)) lt!2606852 ct2!352 cWitness!35 c!10305))))

(assert (=> b!7328246 (= lt!2606843 (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (tail!14701 lt!2606844)) c!10305))))

(declare-fun b!7328247 () Bool)

(declare-fun e!4388011 () Bool)

(declare-fun tp!2080868 () Bool)

(assert (=> b!7328247 (= e!4388011 tp!2080868)))

(declare-fun b!7328248 () Bool)

(declare-fun e!4388015 () Bool)

(assert (=> b!7328248 (= e!4388015 e!4388014)))

(declare-fun res!2961866 () Bool)

(assert (=> b!7328248 (=> (not res!2961866) (not e!4388014))))

(assert (=> b!7328248 (= res!2961866 (is-Cons!71384 (exprs!8452 ct1!256)))))

(assert (=> b!7328248 (= lt!2606844 (++!16836 (exprs!8452 ct1!256) (exprs!8452 ct2!352)))))

(declare-fun lt!2606851 () Unit!164989)

(assert (=> b!7328248 (= lt!2606851 (lemmaConcatPreservesForall!1693 (exprs!8452 ct1!256) (exprs!8452 ct2!352) lambda!454325))))

(declare-fun res!2961863 () Bool)

(assert (=> start!715428 (=> (not res!2961863) (not e!4388015))))

(declare-fun lt!2606845 () (Set Context!15904))

(assert (=> start!715428 (= res!2961863 (set.member cWitness!35 lt!2606845))))

(declare-fun derivationStepZipperUp!2692 (Context!15904 C!38298) (Set Context!15904))

(assert (=> start!715428 (= lt!2606845 (derivationStepZipperUp!2692 ct1!256 c!10305))))

(assert (=> start!715428 e!4388015))

(declare-fun tp_is_empty!48269 () Bool)

(assert (=> start!715428 tp_is_empty!48269))

(declare-fun inv!90871 (Context!15904) Bool)

(assert (=> start!715428 (and (inv!90871 cWitness!35) e!4388012)))

(declare-fun e!4388017 () Bool)

(assert (=> start!715428 (and (inv!90871 ct1!256) e!4388017)))

(assert (=> start!715428 (and (inv!90871 ct2!352) e!4388011)))

(declare-fun b!7328240 () Bool)

(declare-fun res!2961862 () Bool)

(assert (=> b!7328240 (=> (not res!2961862) (not e!4388010))))

(assert (=> b!7328240 (= res!2961862 (and (= lt!2606845 lt!2606847) (set.member cWitness!35 lt!2606847)))))

(declare-fun b!7328249 () Bool)

(declare-fun tp!2080869 () Bool)

(assert (=> b!7328249 (= e!4388017 tp!2080869)))

(declare-fun b!7328250 () Bool)

(assert (=> b!7328250 (= e!4388016 e!4388013)))

(declare-fun res!2961859 () Bool)

(assert (=> b!7328250 (=> res!2961859 e!4388013)))

(assert (=> b!7328250 (= res!2961859 (not (forall!17861 (exprs!8452 cWitness!35) lambda!454325)))))

(assert (= (and start!715428 res!2961863) b!7328248))

(assert (= (and b!7328248 res!2961866) b!7328245))

(assert (= (and b!7328245 res!2961864) b!7328243))

(assert (= (and b!7328243 res!2961861) b!7328240))

(assert (= (and b!7328240 res!2961862) b!7328242))

(assert (= (and b!7328242 res!2961865) b!7328246))

(assert (= (and b!7328246 (not res!2961860)) b!7328250))

(assert (= (and b!7328250 (not res!2961859)) b!7328241))

(assert (= start!715428 b!7328244))

(assert (= start!715428 b!7328249))

(assert (= start!715428 b!7328247))

(declare-fun m!7994168 () Bool)

(assert (=> b!7328250 m!7994168))

(declare-fun m!7994170 () Bool)

(assert (=> b!7328241 m!7994170))

(declare-fun m!7994172 () Bool)

(assert (=> b!7328243 m!7994172))

(declare-fun m!7994174 () Bool)

(assert (=> b!7328243 m!7994174))

(declare-fun m!7994176 () Bool)

(assert (=> b!7328243 m!7994176))

(declare-fun m!7994178 () Bool)

(assert (=> b!7328248 m!7994178))

(declare-fun m!7994180 () Bool)

(assert (=> b!7328248 m!7994180))

(declare-fun m!7994182 () Bool)

(assert (=> b!7328245 m!7994182))

(declare-fun m!7994184 () Bool)

(assert (=> b!7328246 m!7994184))

(declare-fun m!7994186 () Bool)

(assert (=> b!7328246 m!7994186))

(declare-fun m!7994188 () Bool)

(assert (=> b!7328246 m!7994188))

(declare-fun m!7994190 () Bool)

(assert (=> b!7328246 m!7994190))

(declare-fun m!7994192 () Bool)

(assert (=> b!7328246 m!7994192))

(declare-fun m!7994194 () Bool)

(assert (=> b!7328246 m!7994194))

(declare-fun m!7994196 () Bool)

(assert (=> b!7328246 m!7994196))

(declare-fun m!7994198 () Bool)

(assert (=> b!7328246 m!7994198))

(declare-fun m!7994200 () Bool)

(assert (=> b!7328246 m!7994200))

(declare-fun m!7994202 () Bool)

(assert (=> b!7328246 m!7994202))

(assert (=> b!7328246 m!7994200))

(declare-fun m!7994204 () Bool)

(assert (=> b!7328242 m!7994204))

(declare-fun m!7994206 () Bool)

(assert (=> b!7328240 m!7994206))

(declare-fun m!7994208 () Bool)

(assert (=> start!715428 m!7994208))

(declare-fun m!7994210 () Bool)

(assert (=> start!715428 m!7994210))

(declare-fun m!7994212 () Bool)

(assert (=> start!715428 m!7994212))

(declare-fun m!7994214 () Bool)

(assert (=> start!715428 m!7994214))

(declare-fun m!7994216 () Bool)

(assert (=> start!715428 m!7994216))

(push 1)

(assert (not b!7328243))

(assert (not b!7328246))

(assert tp_is_empty!48269)

(assert (not b!7328245))

(assert (not b!7328247))

(assert (not b!7328244))

(assert (not b!7328250))

(assert (not b!7328242))

(assert (not b!7328249))

(assert (not b!7328241))

(assert (not start!715428))

(assert (not b!7328248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275729 () Bool)

(declare-fun nullableFct!3226 (Regex!19012) Bool)

(assert (=> d!2275729 (= (nullable!8116 (h!77832 (exprs!8452 ct1!256))) (nullableFct!3226 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun bs!1916964 () Bool)

(assert (= bs!1916964 d!2275729))

(declare-fun m!7994268 () Bool)

(assert (=> bs!1916964 m!7994268))

(assert (=> b!7328243 d!2275729))

(declare-fun bm!667233 () Bool)

(declare-fun call!667242 () (Set Context!15904))

(declare-fun call!667243 () (Set Context!15904))

(assert (=> bm!667233 (= call!667242 call!667243)))

(declare-fun b!7328306 () Bool)

(declare-fun e!4388054 () (Set Context!15904))

(assert (=> b!7328306 (= e!4388054 (as set.empty (Set Context!15904)))))

(declare-fun bm!667234 () Bool)

(declare-fun call!667239 () List!71508)

(declare-fun c!1360447 () Bool)

(declare-fun c!1360445 () Bool)

(declare-fun $colon$colon!3042 (List!71508 Regex!19012) List!71508)

(assert (=> bm!667234 (= call!667239 ($colon$colon!3042 (exprs!8452 lt!2606852) (ite (or c!1360445 c!1360447) (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328307 () Bool)

(declare-fun e!4388059 () (Set Context!15904))

(declare-fun e!4388058 () (Set Context!15904))

(assert (=> b!7328307 (= e!4388059 e!4388058)))

(assert (=> b!7328307 (= c!1360447 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun b!7328308 () Bool)

(declare-fun e!4388055 () Bool)

(assert (=> b!7328308 (= c!1360445 e!4388055)))

(declare-fun res!2961893 () Bool)

(assert (=> b!7328308 (=> (not res!2961893) (not e!4388055))))

(assert (=> b!7328308 (= res!2961893 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun e!4388056 () (Set Context!15904))

(assert (=> b!7328308 (= e!4388056 e!4388059)))

(declare-fun b!7328309 () Bool)

(declare-fun call!667238 () (Set Context!15904))

(assert (=> b!7328309 (= e!4388056 (set.union call!667243 call!667238))))

(declare-fun d!2275731 () Bool)

(declare-fun c!1360448 () Bool)

(assert (=> d!2275731 (= c!1360448 (and (is-ElementMatch!19012 (h!77832 (exprs!8452 ct1!256))) (= (c!1360433 (h!77832 (exprs!8452 ct1!256))) c!10305)))))

(declare-fun e!4388057 () (Set Context!15904))

(assert (=> d!2275731 (= (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) lt!2606852 c!10305) e!4388057)))

(declare-fun bm!667235 () Bool)

(declare-fun c!1360449 () Bool)

(assert (=> bm!667235 (= call!667238 (derivationStepZipperDown!2843 (ite c!1360449 (regTwo!38537 (h!77832 (exprs!8452 ct1!256))) (regOne!38536 (h!77832 (exprs!8452 ct1!256)))) (ite c!1360449 lt!2606852 (Context!15905 call!667239)) c!10305))))

(declare-fun b!7328310 () Bool)

(assert (=> b!7328310 (= e!4388059 (set.union call!667238 call!667242))))

(declare-fun b!7328311 () Bool)

(declare-fun c!1360446 () Bool)

(assert (=> b!7328311 (= c!1360446 (is-Star!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (=> b!7328311 (= e!4388058 e!4388054)))

(declare-fun b!7328312 () Bool)

(declare-fun call!667240 () (Set Context!15904))

(assert (=> b!7328312 (= e!4388054 call!667240)))

(declare-fun bm!667236 () Bool)

(declare-fun call!667241 () List!71508)

(assert (=> bm!667236 (= call!667243 (derivationStepZipperDown!2843 (ite c!1360449 (regOne!38537 (h!77832 (exprs!8452 ct1!256))) (ite c!1360445 (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (ite c!1360447 (regOne!38536 (h!77832 (exprs!8452 ct1!256))) (reg!19341 (h!77832 (exprs!8452 ct1!256)))))) (ite (or c!1360449 c!1360445) lt!2606852 (Context!15905 call!667241)) c!10305))))

(declare-fun bm!667237 () Bool)

(assert (=> bm!667237 (= call!667241 call!667239)))

(declare-fun b!7328313 () Bool)

(assert (=> b!7328313 (= e!4388058 call!667240)))

(declare-fun b!7328314 () Bool)

(assert (=> b!7328314 (= e!4388057 (set.insert lt!2606852 (as set.empty (Set Context!15904))))))

(declare-fun bm!667238 () Bool)

(assert (=> bm!667238 (= call!667240 call!667242)))

(declare-fun b!7328315 () Bool)

(assert (=> b!7328315 (= e!4388055 (nullable!8116 (regOne!38536 (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328316 () Bool)

(assert (=> b!7328316 (= e!4388057 e!4388056)))

(assert (=> b!7328316 (= c!1360449 (is-Union!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (= (and d!2275731 c!1360448) b!7328314))

(assert (= (and d!2275731 (not c!1360448)) b!7328316))

(assert (= (and b!7328316 c!1360449) b!7328309))

(assert (= (and b!7328316 (not c!1360449)) b!7328308))

(assert (= (and b!7328308 res!2961893) b!7328315))

(assert (= (and b!7328308 c!1360445) b!7328310))

(assert (= (and b!7328308 (not c!1360445)) b!7328307))

(assert (= (and b!7328307 c!1360447) b!7328313))

(assert (= (and b!7328307 (not c!1360447)) b!7328311))

(assert (= (and b!7328311 c!1360446) b!7328312))

(assert (= (and b!7328311 (not c!1360446)) b!7328306))

(assert (= (or b!7328313 b!7328312) bm!667237))

(assert (= (or b!7328313 b!7328312) bm!667238))

(assert (= (or b!7328310 bm!667238) bm!667233))

(assert (= (or b!7328310 bm!667237) bm!667234))

(assert (= (or b!7328309 b!7328310) bm!667235))

(assert (= (or b!7328309 bm!667233) bm!667236))

(declare-fun m!7994270 () Bool)

(assert (=> bm!667236 m!7994270))

(declare-fun m!7994272 () Bool)

(assert (=> bm!667235 m!7994272))

(declare-fun m!7994274 () Bool)

(assert (=> b!7328315 m!7994274))

(declare-fun m!7994276 () Bool)

(assert (=> bm!667234 m!7994276))

(declare-fun m!7994278 () Bool)

(assert (=> b!7328314 m!7994278))

(assert (=> b!7328243 d!2275731))

(declare-fun d!2275737 () Bool)

(assert (=> d!2275737 (= (tail!14701 (exprs!8452 ct1!256)) (t!385895 (exprs!8452 ct1!256)))))

(assert (=> b!7328243 d!2275737))

(declare-fun b!7328336 () Bool)

(declare-fun e!4388071 () List!71508)

(assert (=> b!7328336 (= e!4388071 (Cons!71384 (h!77832 (exprs!8452 ct1!256)) (++!16836 (t!385895 (exprs!8452 ct1!256)) (exprs!8452 ct2!352))))))

(declare-fun lt!2606893 () List!71508)

(declare-fun e!4388070 () Bool)

(declare-fun b!7328338 () Bool)

(assert (=> b!7328338 (= e!4388070 (or (not (= (exprs!8452 ct2!352) Nil!71384)) (= lt!2606893 (exprs!8452 ct1!256))))))

(declare-fun d!2275739 () Bool)

(assert (=> d!2275739 e!4388070))

(declare-fun res!2961900 () Bool)

(assert (=> d!2275739 (=> (not res!2961900) (not e!4388070))))

(declare-fun content!14953 (List!71508) (Set Regex!19012))

(assert (=> d!2275739 (= res!2961900 (= (content!14953 lt!2606893) (set.union (content!14953 (exprs!8452 ct1!256)) (content!14953 (exprs!8452 ct2!352)))))))

(assert (=> d!2275739 (= lt!2606893 e!4388071)))

(declare-fun c!1360456 () Bool)

(assert (=> d!2275739 (= c!1360456 (is-Nil!71384 (exprs!8452 ct1!256)))))

(assert (=> d!2275739 (= (++!16836 (exprs!8452 ct1!256) (exprs!8452 ct2!352)) lt!2606893)))

(declare-fun b!7328335 () Bool)

(assert (=> b!7328335 (= e!4388071 (exprs!8452 ct2!352))))

(declare-fun b!7328337 () Bool)

(declare-fun res!2961901 () Bool)

(assert (=> b!7328337 (=> (not res!2961901) (not e!4388070))))

(declare-fun size!41930 (List!71508) Int)

(assert (=> b!7328337 (= res!2961901 (= (size!41930 lt!2606893) (+ (size!41930 (exprs!8452 ct1!256)) (size!41930 (exprs!8452 ct2!352)))))))

(assert (= (and d!2275739 c!1360456) b!7328335))

(assert (= (and d!2275739 (not c!1360456)) b!7328336))

(assert (= (and d!2275739 res!2961900) b!7328337))

(assert (= (and b!7328337 res!2961901) b!7328338))

(declare-fun m!7994280 () Bool)

(assert (=> b!7328336 m!7994280))

(declare-fun m!7994282 () Bool)

(assert (=> d!2275739 m!7994282))

(declare-fun m!7994284 () Bool)

(assert (=> d!2275739 m!7994284))

(declare-fun m!7994286 () Bool)

(assert (=> d!2275739 m!7994286))

(declare-fun m!7994288 () Bool)

(assert (=> b!7328337 m!7994288))

(declare-fun m!7994290 () Bool)

(assert (=> b!7328337 m!7994290))

(declare-fun m!7994292 () Bool)

(assert (=> b!7328337 m!7994292))

(assert (=> b!7328248 d!2275739))

(declare-fun d!2275741 () Bool)

(assert (=> d!2275741 (forall!17861 (++!16836 (exprs!8452 ct1!256) (exprs!8452 ct2!352)) lambda!454325)))

(declare-fun lt!2606896 () Unit!164989)

(declare-fun choose!56995 (List!71508 List!71508 Int) Unit!164989)

(assert (=> d!2275741 (= lt!2606896 (choose!56995 (exprs!8452 ct1!256) (exprs!8452 ct2!352) lambda!454325))))

(assert (=> d!2275741 (forall!17861 (exprs!8452 ct1!256) lambda!454325)))

(assert (=> d!2275741 (= (lemmaConcatPreservesForall!1693 (exprs!8452 ct1!256) (exprs!8452 ct2!352) lambda!454325) lt!2606896)))

(declare-fun bs!1916965 () Bool)

(assert (= bs!1916965 d!2275741))

(assert (=> bs!1916965 m!7994178))

(assert (=> bs!1916965 m!7994178))

(declare-fun m!7994294 () Bool)

(assert (=> bs!1916965 m!7994294))

(declare-fun m!7994296 () Bool)

(assert (=> bs!1916965 m!7994296))

(declare-fun m!7994298 () Bool)

(assert (=> bs!1916965 m!7994298))

(assert (=> b!7328248 d!2275741))

(declare-fun b!7328354 () Bool)

(declare-fun e!4388083 () (Set Context!15904))

(declare-fun e!4388081 () (Set Context!15904))

(assert (=> b!7328354 (= e!4388083 e!4388081)))

(declare-fun c!1360464 () Bool)

(assert (=> b!7328354 (= c!1360464 (is-Cons!71384 (exprs!8452 ct1!256)))))

(declare-fun b!7328355 () Bool)

(declare-fun e!4388082 () Bool)

(assert (=> b!7328355 (= e!4388082 (nullable!8116 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun b!7328356 () Bool)

(assert (=> b!7328356 (= e!4388081 (as set.empty (Set Context!15904)))))

(declare-fun b!7328357 () Bool)

(declare-fun call!667249 () (Set Context!15904))

(assert (=> b!7328357 (= e!4388083 (set.union call!667249 (derivationStepZipperUp!2692 (Context!15905 (t!385895 (exprs!8452 ct1!256))) c!10305)))))

(declare-fun d!2275743 () Bool)

(declare-fun c!1360463 () Bool)

(assert (=> d!2275743 (= c!1360463 e!4388082)))

(declare-fun res!2961905 () Bool)

(assert (=> d!2275743 (=> (not res!2961905) (not e!4388082))))

(assert (=> d!2275743 (= res!2961905 (is-Cons!71384 (exprs!8452 ct1!256)))))

(assert (=> d!2275743 (= (derivationStepZipperUp!2692 ct1!256 c!10305) e!4388083)))

(declare-fun b!7328358 () Bool)

(assert (=> b!7328358 (= e!4388081 call!667249)))

(declare-fun bm!667244 () Bool)

(assert (=> bm!667244 (= call!667249 (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (t!385895 (exprs!8452 ct1!256))) c!10305))))

(assert (= (and d!2275743 res!2961905) b!7328355))

(assert (= (and d!2275743 c!1360463) b!7328357))

(assert (= (and d!2275743 (not c!1360463)) b!7328354))

(assert (= (and b!7328354 c!1360464) b!7328358))

(assert (= (and b!7328354 (not c!1360464)) b!7328356))

(assert (= (or b!7328357 b!7328358) bm!667244))

(assert (=> b!7328355 m!7994172))

(declare-fun m!7994304 () Bool)

(assert (=> b!7328357 m!7994304))

(declare-fun m!7994306 () Bool)

(assert (=> bm!667244 m!7994306))

(assert (=> start!715428 d!2275743))

(declare-fun bs!1916967 () Bool)

(declare-fun d!2275747 () Bool)

(assert (= bs!1916967 (and d!2275747 b!7328248)))

(declare-fun lambda!454342 () Int)

(assert (=> bs!1916967 (= lambda!454342 lambda!454325)))

(assert (=> d!2275747 (= (inv!90871 cWitness!35) (forall!17861 (exprs!8452 cWitness!35) lambda!454342))))

(declare-fun bs!1916969 () Bool)

(assert (= bs!1916969 d!2275747))

(declare-fun m!7994310 () Bool)

(assert (=> bs!1916969 m!7994310))

(assert (=> start!715428 d!2275747))

(declare-fun bs!1916970 () Bool)

(declare-fun d!2275751 () Bool)

(assert (= bs!1916970 (and d!2275751 b!7328248)))

(declare-fun lambda!454343 () Int)

(assert (=> bs!1916970 (= lambda!454343 lambda!454325)))

(declare-fun bs!1916971 () Bool)

(assert (= bs!1916971 (and d!2275751 d!2275747)))

(assert (=> bs!1916971 (= lambda!454343 lambda!454342)))

(assert (=> d!2275751 (= (inv!90871 ct1!256) (forall!17861 (exprs!8452 ct1!256) lambda!454343))))

(declare-fun bs!1916973 () Bool)

(assert (= bs!1916973 d!2275751))

(declare-fun m!7994312 () Bool)

(assert (=> bs!1916973 m!7994312))

(assert (=> start!715428 d!2275751))

(declare-fun bs!1916975 () Bool)

(declare-fun d!2275753 () Bool)

(assert (= bs!1916975 (and d!2275753 b!7328248)))

(declare-fun lambda!454345 () Int)

(assert (=> bs!1916975 (= lambda!454345 lambda!454325)))

(declare-fun bs!1916976 () Bool)

(assert (= bs!1916976 (and d!2275753 d!2275747)))

(assert (=> bs!1916976 (= lambda!454345 lambda!454342)))

(declare-fun bs!1916977 () Bool)

(assert (= bs!1916977 (and d!2275753 d!2275751)))

(assert (=> bs!1916977 (= lambda!454345 lambda!454343)))

(assert (=> d!2275753 (= (inv!90871 ct2!352) (forall!17861 (exprs!8452 ct2!352) lambda!454345))))

(declare-fun bs!1916979 () Bool)

(assert (= bs!1916979 d!2275753))

(declare-fun m!7994316 () Bool)

(assert (=> bs!1916979 m!7994316))

(assert (=> start!715428 d!2275753))

(declare-fun d!2275757 () Bool)

(assert (=> d!2275757 (= (isEmpty!40930 lt!2606844) (is-Nil!71384 lt!2606844))))

(assert (=> b!7328242 d!2275757))

(declare-fun d!2275759 () Bool)

(declare-fun res!2961910 () Bool)

(declare-fun e!4388088 () Bool)

(assert (=> d!2275759 (=> res!2961910 e!4388088)))

(assert (=> d!2275759 (= res!2961910 (is-Nil!71384 (exprs!8452 ct2!352)))))

(assert (=> d!2275759 (= (forall!17861 (exprs!8452 ct2!352) lambda!454325) e!4388088)))

(declare-fun b!7328363 () Bool)

(declare-fun e!4388089 () Bool)

(assert (=> b!7328363 (= e!4388088 e!4388089)))

(declare-fun res!2961911 () Bool)

(assert (=> b!7328363 (=> (not res!2961911) (not e!4388089))))

(declare-fun dynLambda!29418 (Int Regex!19012) Bool)

(assert (=> b!7328363 (= res!2961911 (dynLambda!29418 lambda!454325 (h!77832 (exprs!8452 ct2!352))))))

(declare-fun b!7328364 () Bool)

(assert (=> b!7328364 (= e!4388089 (forall!17861 (t!385895 (exprs!8452 ct2!352)) lambda!454325))))

(assert (= (and d!2275759 (not res!2961910)) b!7328363))

(assert (= (and b!7328363 res!2961911) b!7328364))

(declare-fun b_lambda!283451 () Bool)

(assert (=> (not b_lambda!283451) (not b!7328363)))

(declare-fun m!7994320 () Bool)

(assert (=> b!7328363 m!7994320))

(declare-fun m!7994322 () Bool)

(assert (=> b!7328364 m!7994322))

(assert (=> b!7328241 d!2275759))

(declare-fun bs!1916984 () Bool)

(declare-fun d!2275763 () Bool)

(assert (= bs!1916984 (and d!2275763 b!7328248)))

(declare-fun lambda!454351 () Int)

(assert (=> bs!1916984 (= lambda!454351 lambda!454325)))

(declare-fun bs!1916985 () Bool)

(assert (= bs!1916985 (and d!2275763 d!2275747)))

(assert (=> bs!1916985 (= lambda!454351 lambda!454342)))

(declare-fun bs!1916986 () Bool)

(assert (= bs!1916986 (and d!2275763 d!2275751)))

(assert (=> bs!1916986 (= lambda!454351 lambda!454343)))

(declare-fun bs!1916987 () Bool)

(assert (= bs!1916987 (and d!2275763 d!2275753)))

(assert (=> bs!1916987 (= lambda!454351 lambda!454345)))

(assert (=> d!2275763 (set.member (Context!15905 (++!16836 (exprs!8452 cWitness!35) (exprs!8452 ct2!352))) (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (++!16836 (exprs!8452 lt!2606852) (exprs!8452 ct2!352))) c!10305))))

(declare-fun lt!2606907 () Unit!164989)

(assert (=> d!2275763 (= lt!2606907 (lemmaConcatPreservesForall!1693 (exprs!8452 lt!2606852) (exprs!8452 ct2!352) lambda!454351))))

(declare-fun lt!2606906 () Unit!164989)

(assert (=> d!2275763 (= lt!2606906 (lemmaConcatPreservesForall!1693 (exprs!8452 cWitness!35) (exprs!8452 ct2!352) lambda!454351))))

(declare-fun lt!2606905 () Unit!164989)

(declare-fun choose!56996 (Regex!19012 Context!15904 Context!15904 Context!15904 C!38298) Unit!164989)

(assert (=> d!2275763 (= lt!2606905 (choose!56996 (h!77832 (exprs!8452 ct1!256)) lt!2606852 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9646 (Regex!19012) Bool)

(assert (=> d!2275763 (validRegex!9646 (h!77832 (exprs!8452 ct1!256)))))

(assert (=> d!2275763 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!19 (h!77832 (exprs!8452 ct1!256)) lt!2606852 ct2!352 cWitness!35 c!10305) lt!2606905)))

(declare-fun bs!1916988 () Bool)

(assert (= bs!1916988 d!2275763))

(declare-fun m!7994324 () Bool)

(assert (=> bs!1916988 m!7994324))

(declare-fun m!7994326 () Bool)

(assert (=> bs!1916988 m!7994326))

(assert (=> bs!1916988 m!7994198))

(declare-fun m!7994328 () Bool)

(assert (=> bs!1916988 m!7994328))

(declare-fun m!7994330 () Bool)

(assert (=> bs!1916988 m!7994330))

(declare-fun m!7994332 () Bool)

(assert (=> bs!1916988 m!7994332))

(declare-fun m!7994334 () Bool)

(assert (=> bs!1916988 m!7994334))

(declare-fun m!7994336 () Bool)

(assert (=> bs!1916988 m!7994336))

(assert (=> b!7328246 d!2275763))

(declare-fun b!7328378 () Bool)

(declare-fun e!4388097 () List!71508)

(assert (=> b!7328378 (= e!4388097 (Cons!71384 (h!77832 lt!2606848) (++!16836 (t!385895 lt!2606848) (exprs!8452 ct2!352))))))

(declare-fun lt!2606909 () List!71508)

(declare-fun e!4388096 () Bool)

(declare-fun b!7328380 () Bool)

(assert (=> b!7328380 (= e!4388096 (or (not (= (exprs!8452 ct2!352) Nil!71384)) (= lt!2606909 lt!2606848)))))

(declare-fun d!2275765 () Bool)

(assert (=> d!2275765 e!4388096))

(declare-fun res!2961918 () Bool)

(assert (=> d!2275765 (=> (not res!2961918) (not e!4388096))))

(assert (=> d!2275765 (= res!2961918 (= (content!14953 lt!2606909) (set.union (content!14953 lt!2606848) (content!14953 (exprs!8452 ct2!352)))))))

(assert (=> d!2275765 (= lt!2606909 e!4388097)))

(declare-fun c!1360469 () Bool)

(assert (=> d!2275765 (= c!1360469 (is-Nil!71384 lt!2606848))))

(assert (=> d!2275765 (= (++!16836 lt!2606848 (exprs!8452 ct2!352)) lt!2606909)))

(declare-fun b!7328377 () Bool)

(assert (=> b!7328377 (= e!4388097 (exprs!8452 ct2!352))))

(declare-fun b!7328379 () Bool)

(declare-fun res!2961919 () Bool)

(assert (=> b!7328379 (=> (not res!2961919) (not e!4388096))))

(assert (=> b!7328379 (= res!2961919 (= (size!41930 lt!2606909) (+ (size!41930 lt!2606848) (size!41930 (exprs!8452 ct2!352)))))))

(assert (= (and d!2275765 c!1360469) b!7328377))

(assert (= (and d!2275765 (not c!1360469)) b!7328378))

(assert (= (and d!2275765 res!2961918) b!7328379))

(assert (= (and b!7328379 res!2961919) b!7328380))

(declare-fun m!7994352 () Bool)

(assert (=> b!7328378 m!7994352))

(declare-fun m!7994354 () Bool)

(assert (=> d!2275765 m!7994354))

(declare-fun m!7994356 () Bool)

(assert (=> d!2275765 m!7994356))

(assert (=> d!2275765 m!7994286))

(declare-fun m!7994358 () Bool)

(assert (=> b!7328379 m!7994358))

(declare-fun m!7994360 () Bool)

(assert (=> b!7328379 m!7994360))

(assert (=> b!7328379 m!7994292))

(assert (=> b!7328246 d!2275765))

(declare-fun d!2275769 () Bool)

(assert (=> d!2275769 (forall!17861 (++!16836 (exprs!8452 cWitness!35) (exprs!8452 ct2!352)) lambda!454325)))

(declare-fun lt!2606910 () Unit!164989)

(assert (=> d!2275769 (= lt!2606910 (choose!56995 (exprs!8452 cWitness!35) (exprs!8452 ct2!352) lambda!454325))))

(assert (=> d!2275769 (forall!17861 (exprs!8452 cWitness!35) lambda!454325)))

(assert (=> d!2275769 (= (lemmaConcatPreservesForall!1693 (exprs!8452 cWitness!35) (exprs!8452 ct2!352) lambda!454325) lt!2606910)))

(declare-fun bs!1916989 () Bool)

(assert (= bs!1916989 d!2275769))

(assert (=> bs!1916989 m!7994198))

(assert (=> bs!1916989 m!7994198))

(declare-fun m!7994362 () Bool)

(assert (=> bs!1916989 m!7994362))

(declare-fun m!7994364 () Bool)

(assert (=> bs!1916989 m!7994364))

(assert (=> bs!1916989 m!7994168))

(assert (=> b!7328246 d!2275769))

(declare-fun bm!667245 () Bool)

(declare-fun call!667254 () (Set Context!15904))

(declare-fun call!667255 () (Set Context!15904))

(assert (=> bm!667245 (= call!667254 call!667255)))

(declare-fun b!7328381 () Bool)

(declare-fun e!4388098 () (Set Context!15904))

(assert (=> b!7328381 (= e!4388098 (as set.empty (Set Context!15904)))))

(declare-fun call!667251 () List!71508)

(declare-fun c!1360472 () Bool)

(declare-fun c!1360470 () Bool)

(declare-fun bm!667246 () Bool)

(assert (=> bm!667246 (= call!667251 ($colon$colon!3042 (exprs!8452 (Context!15905 (tail!14701 lt!2606844))) (ite (or c!1360470 c!1360472) (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328382 () Bool)

(declare-fun e!4388103 () (Set Context!15904))

(declare-fun e!4388102 () (Set Context!15904))

(assert (=> b!7328382 (= e!4388103 e!4388102)))

(assert (=> b!7328382 (= c!1360472 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun b!7328383 () Bool)

(declare-fun e!4388099 () Bool)

(assert (=> b!7328383 (= c!1360470 e!4388099)))

(declare-fun res!2961920 () Bool)

(assert (=> b!7328383 (=> (not res!2961920) (not e!4388099))))

(assert (=> b!7328383 (= res!2961920 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun e!4388100 () (Set Context!15904))

(assert (=> b!7328383 (= e!4388100 e!4388103)))

(declare-fun b!7328384 () Bool)

(declare-fun call!667250 () (Set Context!15904))

(assert (=> b!7328384 (= e!4388100 (set.union call!667255 call!667250))))

(declare-fun d!2275771 () Bool)

(declare-fun c!1360473 () Bool)

(assert (=> d!2275771 (= c!1360473 (and (is-ElementMatch!19012 (h!77832 (exprs!8452 ct1!256))) (= (c!1360433 (h!77832 (exprs!8452 ct1!256))) c!10305)))))

(declare-fun e!4388101 () (Set Context!15904))

(assert (=> d!2275771 (= (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (tail!14701 lt!2606844)) c!10305) e!4388101)))

(declare-fun c!1360474 () Bool)

(declare-fun bm!667247 () Bool)

(assert (=> bm!667247 (= call!667250 (derivationStepZipperDown!2843 (ite c!1360474 (regTwo!38537 (h!77832 (exprs!8452 ct1!256))) (regOne!38536 (h!77832 (exprs!8452 ct1!256)))) (ite c!1360474 (Context!15905 (tail!14701 lt!2606844)) (Context!15905 call!667251)) c!10305))))

(declare-fun b!7328385 () Bool)

(assert (=> b!7328385 (= e!4388103 (set.union call!667250 call!667254))))

(declare-fun b!7328386 () Bool)

(declare-fun c!1360471 () Bool)

(assert (=> b!7328386 (= c!1360471 (is-Star!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (=> b!7328386 (= e!4388102 e!4388098)))

(declare-fun b!7328387 () Bool)

(declare-fun call!667252 () (Set Context!15904))

(assert (=> b!7328387 (= e!4388098 call!667252)))

(declare-fun bm!667248 () Bool)

(declare-fun call!667253 () List!71508)

(assert (=> bm!667248 (= call!667255 (derivationStepZipperDown!2843 (ite c!1360474 (regOne!38537 (h!77832 (exprs!8452 ct1!256))) (ite c!1360470 (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (ite c!1360472 (regOne!38536 (h!77832 (exprs!8452 ct1!256))) (reg!19341 (h!77832 (exprs!8452 ct1!256)))))) (ite (or c!1360474 c!1360470) (Context!15905 (tail!14701 lt!2606844)) (Context!15905 call!667253)) c!10305))))

(declare-fun bm!667249 () Bool)

(assert (=> bm!667249 (= call!667253 call!667251)))

(declare-fun b!7328388 () Bool)

(assert (=> b!7328388 (= e!4388102 call!667252)))

(declare-fun b!7328389 () Bool)

(assert (=> b!7328389 (= e!4388101 (set.insert (Context!15905 (tail!14701 lt!2606844)) (as set.empty (Set Context!15904))))))

(declare-fun bm!667250 () Bool)

(assert (=> bm!667250 (= call!667252 call!667254)))

(declare-fun b!7328390 () Bool)

(assert (=> b!7328390 (= e!4388099 (nullable!8116 (regOne!38536 (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328391 () Bool)

(assert (=> b!7328391 (= e!4388101 e!4388100)))

(assert (=> b!7328391 (= c!1360474 (is-Union!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (= (and d!2275771 c!1360473) b!7328389))

(assert (= (and d!2275771 (not c!1360473)) b!7328391))

(assert (= (and b!7328391 c!1360474) b!7328384))

(assert (= (and b!7328391 (not c!1360474)) b!7328383))

(assert (= (and b!7328383 res!2961920) b!7328390))

(assert (= (and b!7328383 c!1360470) b!7328385))

(assert (= (and b!7328383 (not c!1360470)) b!7328382))

(assert (= (and b!7328382 c!1360472) b!7328388))

(assert (= (and b!7328382 (not c!1360472)) b!7328386))

(assert (= (and b!7328386 c!1360471) b!7328387))

(assert (= (and b!7328386 (not c!1360471)) b!7328381))

(assert (= (or b!7328388 b!7328387) bm!667249))

(assert (= (or b!7328388 b!7328387) bm!667250))

(assert (= (or b!7328385 bm!667250) bm!667245))

(assert (= (or b!7328385 bm!667249) bm!667246))

(assert (= (or b!7328384 b!7328385) bm!667247))

(assert (= (or b!7328384 bm!667245) bm!667248))

(declare-fun m!7994366 () Bool)

(assert (=> bm!667248 m!7994366))

(declare-fun m!7994368 () Bool)

(assert (=> bm!667247 m!7994368))

(assert (=> b!7328390 m!7994274))

(declare-fun m!7994370 () Bool)

(assert (=> bm!667246 m!7994370))

(declare-fun m!7994372 () Bool)

(assert (=> b!7328389 m!7994372))

(assert (=> b!7328246 d!2275771))

(declare-fun b!7328393 () Bool)

(declare-fun e!4388105 () List!71508)

(assert (=> b!7328393 (= e!4388105 (Cons!71384 (h!77832 (exprs!8452 cWitness!35)) (++!16836 (t!385895 (exprs!8452 cWitness!35)) (exprs!8452 ct2!352))))))

(declare-fun e!4388104 () Bool)

(declare-fun lt!2606911 () List!71508)

(declare-fun b!7328395 () Bool)

(assert (=> b!7328395 (= e!4388104 (or (not (= (exprs!8452 ct2!352) Nil!71384)) (= lt!2606911 (exprs!8452 cWitness!35))))))

(declare-fun d!2275773 () Bool)

(assert (=> d!2275773 e!4388104))

(declare-fun res!2961921 () Bool)

(assert (=> d!2275773 (=> (not res!2961921) (not e!4388104))))

(assert (=> d!2275773 (= res!2961921 (= (content!14953 lt!2606911) (set.union (content!14953 (exprs!8452 cWitness!35)) (content!14953 (exprs!8452 ct2!352)))))))

(assert (=> d!2275773 (= lt!2606911 e!4388105)))

(declare-fun c!1360475 () Bool)

(assert (=> d!2275773 (= c!1360475 (is-Nil!71384 (exprs!8452 cWitness!35)))))

(assert (=> d!2275773 (= (++!16836 (exprs!8452 cWitness!35) (exprs!8452 ct2!352)) lt!2606911)))

(declare-fun b!7328392 () Bool)

(assert (=> b!7328392 (= e!4388105 (exprs!8452 ct2!352))))

(declare-fun b!7328394 () Bool)

(declare-fun res!2961922 () Bool)

(assert (=> b!7328394 (=> (not res!2961922) (not e!4388104))))

(assert (=> b!7328394 (= res!2961922 (= (size!41930 lt!2606911) (+ (size!41930 (exprs!8452 cWitness!35)) (size!41930 (exprs!8452 ct2!352)))))))

(assert (= (and d!2275773 c!1360475) b!7328392))

(assert (= (and d!2275773 (not c!1360475)) b!7328393))

(assert (= (and d!2275773 res!2961921) b!7328394))

(assert (= (and b!7328394 res!2961922) b!7328395))

(declare-fun m!7994374 () Bool)

(assert (=> b!7328393 m!7994374))

(declare-fun m!7994376 () Bool)

(assert (=> d!2275773 m!7994376))

(declare-fun m!7994378 () Bool)

(assert (=> d!2275773 m!7994378))

(assert (=> d!2275773 m!7994286))

(declare-fun m!7994380 () Bool)

(assert (=> b!7328394 m!7994380))

(declare-fun m!7994382 () Bool)

(assert (=> b!7328394 m!7994382))

(assert (=> b!7328394 m!7994292))

(assert (=> b!7328246 d!2275773))

(declare-fun bm!667251 () Bool)

(declare-fun call!667260 () (Set Context!15904))

(declare-fun call!667261 () (Set Context!15904))

(assert (=> bm!667251 (= call!667260 call!667261)))

(declare-fun b!7328396 () Bool)

(declare-fun e!4388106 () (Set Context!15904))

(assert (=> b!7328396 (= e!4388106 (as set.empty (Set Context!15904)))))

(declare-fun bm!667252 () Bool)

(declare-fun call!667257 () List!71508)

(declare-fun c!1360476 () Bool)

(declare-fun c!1360478 () Bool)

(assert (=> bm!667252 (= call!667257 ($colon$colon!3042 (exprs!8452 (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352)))) (ite (or c!1360476 c!1360478) (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328397 () Bool)

(declare-fun e!4388111 () (Set Context!15904))

(declare-fun e!4388110 () (Set Context!15904))

(assert (=> b!7328397 (= e!4388111 e!4388110)))

(assert (=> b!7328397 (= c!1360478 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun b!7328398 () Bool)

(declare-fun e!4388107 () Bool)

(assert (=> b!7328398 (= c!1360476 e!4388107)))

(declare-fun res!2961923 () Bool)

(assert (=> b!7328398 (=> (not res!2961923) (not e!4388107))))

(assert (=> b!7328398 (= res!2961923 (is-Concat!27857 (h!77832 (exprs!8452 ct1!256))))))

(declare-fun e!4388108 () (Set Context!15904))

(assert (=> b!7328398 (= e!4388108 e!4388111)))

(declare-fun b!7328399 () Bool)

(declare-fun call!667256 () (Set Context!15904))

(assert (=> b!7328399 (= e!4388108 (set.union call!667261 call!667256))))

(declare-fun d!2275775 () Bool)

(declare-fun c!1360479 () Bool)

(assert (=> d!2275775 (= c!1360479 (and (is-ElementMatch!19012 (h!77832 (exprs!8452 ct1!256))) (= (c!1360433 (h!77832 (exprs!8452 ct1!256))) c!10305)))))

(declare-fun e!4388109 () (Set Context!15904))

(assert (=> d!2275775 (= (derivationStepZipperDown!2843 (h!77832 (exprs!8452 ct1!256)) (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352))) c!10305) e!4388109)))

(declare-fun bm!667253 () Bool)

(declare-fun c!1360480 () Bool)

(assert (=> bm!667253 (= call!667256 (derivationStepZipperDown!2843 (ite c!1360480 (regTwo!38537 (h!77832 (exprs!8452 ct1!256))) (regOne!38536 (h!77832 (exprs!8452 ct1!256)))) (ite c!1360480 (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352))) (Context!15905 call!667257)) c!10305))))

(declare-fun b!7328400 () Bool)

(assert (=> b!7328400 (= e!4388111 (set.union call!667256 call!667260))))

(declare-fun b!7328401 () Bool)

(declare-fun c!1360477 () Bool)

(assert (=> b!7328401 (= c!1360477 (is-Star!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (=> b!7328401 (= e!4388110 e!4388106)))

(declare-fun b!7328402 () Bool)

(declare-fun call!667258 () (Set Context!15904))

(assert (=> b!7328402 (= e!4388106 call!667258)))

(declare-fun bm!667254 () Bool)

(declare-fun call!667259 () List!71508)

(assert (=> bm!667254 (= call!667261 (derivationStepZipperDown!2843 (ite c!1360480 (regOne!38537 (h!77832 (exprs!8452 ct1!256))) (ite c!1360476 (regTwo!38536 (h!77832 (exprs!8452 ct1!256))) (ite c!1360478 (regOne!38536 (h!77832 (exprs!8452 ct1!256))) (reg!19341 (h!77832 (exprs!8452 ct1!256)))))) (ite (or c!1360480 c!1360476) (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352))) (Context!15905 call!667259)) c!10305))))

(declare-fun bm!667255 () Bool)

(assert (=> bm!667255 (= call!667259 call!667257)))

(declare-fun b!7328403 () Bool)

(assert (=> b!7328403 (= e!4388110 call!667258)))

(declare-fun b!7328404 () Bool)

(assert (=> b!7328404 (= e!4388109 (set.insert (Context!15905 (++!16836 lt!2606848 (exprs!8452 ct2!352))) (as set.empty (Set Context!15904))))))

(declare-fun bm!667256 () Bool)

(assert (=> bm!667256 (= call!667258 call!667260)))

(declare-fun b!7328405 () Bool)

(assert (=> b!7328405 (= e!4388107 (nullable!8116 (regOne!38536 (h!77832 (exprs!8452 ct1!256)))))))

(declare-fun b!7328406 () Bool)

(assert (=> b!7328406 (= e!4388109 e!4388108)))

(assert (=> b!7328406 (= c!1360480 (is-Union!19012 (h!77832 (exprs!8452 ct1!256))))))

(assert (= (and d!2275775 c!1360479) b!7328404))

(assert (= (and d!2275775 (not c!1360479)) b!7328406))

(assert (= (and b!7328406 c!1360480) b!7328399))

(assert (= (and b!7328406 (not c!1360480)) b!7328398))

(assert (= (and b!7328398 res!2961923) b!7328405))

(assert (= (and b!7328398 c!1360476) b!7328400))

(assert (= (and b!7328398 (not c!1360476)) b!7328397))

(assert (= (and b!7328397 c!1360478) b!7328403))

(assert (= (and b!7328397 (not c!1360478)) b!7328401))

(assert (= (and b!7328401 c!1360477) b!7328402))

(assert (= (and b!7328401 (not c!1360477)) b!7328396))

(assert (= (or b!7328403 b!7328402) bm!667255))

(assert (= (or b!7328403 b!7328402) bm!667256))

(assert (= (or b!7328400 bm!667256) bm!667251))

(assert (= (or b!7328400 bm!667255) bm!667252))

(assert (= (or b!7328399 b!7328400) bm!667253))

(assert (= (or b!7328399 bm!667251) bm!667254))

(declare-fun m!7994384 () Bool)

(assert (=> bm!667254 m!7994384))

(declare-fun m!7994386 () Bool)

(assert (=> bm!667253 m!7994386))

(assert (=> b!7328405 m!7994274))

(declare-fun m!7994388 () Bool)

(assert (=> bm!667252 m!7994388))

(declare-fun m!7994390 () Bool)

(assert (=> b!7328404 m!7994390))

(assert (=> b!7328246 d!2275775))

(declare-fun d!2275777 () Bool)

(assert (=> d!2275777 (forall!17861 (++!16836 lt!2606848 (exprs!8452 ct2!352)) lambda!454325)))

(declare-fun lt!2606912 () Unit!164989)

(assert (=> d!2275777 (= lt!2606912 (choose!56995 lt!2606848 (exprs!8452 ct2!352) lambda!454325))))

(assert (=> d!2275777 (forall!17861 lt!2606848 lambda!454325)))

(assert (=> d!2275777 (= (lemmaConcatPreservesForall!1693 lt!2606848 (exprs!8452 ct2!352) lambda!454325) lt!2606912)))

(declare-fun bs!1916990 () Bool)

(assert (= bs!1916990 d!2275777))

(assert (=> bs!1916990 m!7994188))

(assert (=> bs!1916990 m!7994188))

(declare-fun m!7994392 () Bool)

(assert (=> bs!1916990 m!7994392))

(declare-fun m!7994394 () Bool)

(assert (=> bs!1916990 m!7994394))

(declare-fun m!7994396 () Bool)

(assert (=> bs!1916990 m!7994396))

(assert (=> b!7328246 d!2275777))

(declare-fun d!2275779 () Bool)

(assert (=> d!2275779 (= (tail!14701 lt!2606844) (t!385895 lt!2606844))))

(assert (=> b!7328246 d!2275779))

(declare-fun d!2275781 () Bool)

(assert (=> d!2275781 (= (isEmpty!40930 (exprs!8452 ct1!256)) (is-Nil!71384 (exprs!8452 ct1!256)))))

(assert (=> b!7328245 d!2275781))

(declare-fun d!2275783 () Bool)

(declare-fun res!2961924 () Bool)

(declare-fun e!4388112 () Bool)

(assert (=> d!2275783 (=> res!2961924 e!4388112)))

(assert (=> d!2275783 (= res!2961924 (is-Nil!71384 (exprs!8452 cWitness!35)))))

(assert (=> d!2275783 (= (forall!17861 (exprs!8452 cWitness!35) lambda!454325) e!4388112)))

(declare-fun b!7328407 () Bool)

(declare-fun e!4388113 () Bool)

(assert (=> b!7328407 (= e!4388112 e!4388113)))

(declare-fun res!2961925 () Bool)

(assert (=> b!7328407 (=> (not res!2961925) (not e!4388113))))

(assert (=> b!7328407 (= res!2961925 (dynLambda!29418 lambda!454325 (h!77832 (exprs!8452 cWitness!35))))))

(declare-fun b!7328408 () Bool)

(assert (=> b!7328408 (= e!4388113 (forall!17861 (t!385895 (exprs!8452 cWitness!35)) lambda!454325))))

(assert (= (and d!2275783 (not res!2961924)) b!7328407))

(assert (= (and b!7328407 res!2961925) b!7328408))

(declare-fun b_lambda!283453 () Bool)

(assert (=> (not b_lambda!283453) (not b!7328407)))

(declare-fun m!7994398 () Bool)

(assert (=> b!7328407 m!7994398))

(declare-fun m!7994400 () Bool)

(assert (=> b!7328408 m!7994400))

(assert (=> b!7328250 d!2275783))

(declare-fun b!7328413 () Bool)

(declare-fun e!4388116 () Bool)

(declare-fun tp!2080884 () Bool)

(declare-fun tp!2080885 () Bool)

(assert (=> b!7328413 (= e!4388116 (and tp!2080884 tp!2080885))))

(assert (=> b!7328249 (= tp!2080869 e!4388116)))

(assert (= (and b!7328249 (is-Cons!71384 (exprs!8452 ct1!256))) b!7328413))

(declare-fun b!7328414 () Bool)

(declare-fun e!4388117 () Bool)

(declare-fun tp!2080886 () Bool)

(declare-fun tp!2080887 () Bool)

(assert (=> b!7328414 (= e!4388117 (and tp!2080886 tp!2080887))))

(assert (=> b!7328247 (= tp!2080868 e!4388117)))

(assert (= (and b!7328247 (is-Cons!71384 (exprs!8452 ct2!352))) b!7328414))

(declare-fun b!7328415 () Bool)

(declare-fun e!4388118 () Bool)

(declare-fun tp!2080888 () Bool)

(declare-fun tp!2080889 () Bool)

(assert (=> b!7328415 (= e!4388118 (and tp!2080888 tp!2080889))))

(assert (=> b!7328244 (= tp!2080870 e!4388118)))

(assert (= (and b!7328244 (is-Cons!71384 (exprs!8452 cWitness!35))) b!7328415))

(declare-fun b_lambda!283455 () Bool)

(assert (= b_lambda!283453 (or b!7328248 b_lambda!283455)))

(declare-fun bs!1916991 () Bool)

(declare-fun d!2275785 () Bool)

(assert (= bs!1916991 (and d!2275785 b!7328248)))

(assert (=> bs!1916991 (= (dynLambda!29418 lambda!454325 (h!77832 (exprs!8452 cWitness!35))) (validRegex!9646 (h!77832 (exprs!8452 cWitness!35))))))

(declare-fun m!7994402 () Bool)

(assert (=> bs!1916991 m!7994402))

(assert (=> b!7328407 d!2275785))

(declare-fun b_lambda!283457 () Bool)

(assert (= b_lambda!283451 (or b!7328248 b_lambda!283457)))

(declare-fun bs!1916992 () Bool)

(declare-fun d!2275787 () Bool)

(assert (= bs!1916992 (and d!2275787 b!7328248)))

(assert (=> bs!1916992 (= (dynLambda!29418 lambda!454325 (h!77832 (exprs!8452 ct2!352))) (validRegex!9646 (h!77832 (exprs!8452 ct2!352))))))

(declare-fun m!7994404 () Bool)

(assert (=> bs!1916992 m!7994404))

(assert (=> b!7328363 d!2275787))

(push 1)

(assert (not d!2275753))

(assert (not bm!667248))

(assert (not bm!667246))

(assert (not d!2275763))

(assert (not bm!667252))

(assert (not b!7328390))

(assert (not bm!667236))

(assert (not d!2275769))

(assert (not d!2275777))

(assert (not bs!1916991))

(assert (not b!7328414))

(assert (not b!7328393))

(assert (not d!2275765))

(assert (not b_lambda!283455))

(assert (not d!2275773))

(assert (not bm!667234))

(assert tp_is_empty!48269)

(assert (not b!7328355))

(assert (not bm!667244))

(assert (not b_lambda!283457))

(assert (not bm!667247))

(assert (not b!7328357))

(assert (not d!2275751))

(assert (not b!7328337))

(assert (not bm!667254))

(assert (not bm!667235))

(assert (not bs!1916992))

(assert (not b!7328336))

(assert (not b!7328415))

(assert (not b!7328378))

(assert (not b!7328315))

(assert (not bm!667253))

(assert (not b!7328408))

(assert (not b!7328379))

(assert (not b!7328413))

(assert (not b!7328405))

(assert (not d!2275729))

(assert (not b!7328394))

(assert (not d!2275747))

(assert (not b!7328364))

(assert (not d!2275739))

(assert (not d!2275741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

