; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709928 () Bool)

(assert start!709928)

(declare-fun b!7272925 () Bool)

(assert (=> b!7272925 true))

(declare-fun b!7272924 () Bool)

(declare-fun e!4361300 () Bool)

(declare-fun tp_is_empty!47081 () Bool)

(declare-fun tp!2041354 () Bool)

(assert (=> b!7272924 (= e!4361300 (and tp_is_empty!47081 tp!2041354))))

(declare-fun e!4361301 () Bool)

(declare-fun e!4361303 () Bool)

(assert (=> b!7272925 (= e!4361301 (not e!4361303))))

(declare-fun res!2948183 () Bool)

(assert (=> b!7272925 (=> res!2948183 e!4361303)))

(declare-datatypes ((C!37890 0))(
  ( (C!37891 (val!28893 Int)) )
))
(declare-datatypes ((Regex!18808 0))(
  ( (ElementMatch!18808 (c!1354124 C!37890)) (Concat!27653 (regOne!38128 Regex!18808) (regTwo!38128 Regex!18808)) (EmptyExpr!18808) (Star!18808 (reg!19137 Regex!18808)) (EmptyLang!18808) (Union!18808 (regOne!38129 Regex!18808) (regTwo!38129 Regex!18808)) )
))
(declare-datatypes ((List!70931 0))(
  ( (Nil!70807) (Cons!70807 (h!77255 Regex!18808) (t!385003 List!70931)) )
))
(declare-datatypes ((Context!15496 0))(
  ( (Context!15497 (exprs!8248 List!70931)) )
))
(declare-fun lt!2595975 () (Set Context!15496))

(declare-datatypes ((List!70932 0))(
  ( (Nil!70808) (Cons!70808 (h!77256 C!37890) (t!385004 List!70932)) )
))
(declare-fun s!7854 () List!70932)

(declare-fun lt!2595977 () (Set Context!15496))

(declare-fun derivationStepZipper!3548 ((Set Context!15496) C!37890) (Set Context!15496))

(assert (=> b!7272925 (= res!2948183 (not (= lt!2595975 (derivationStepZipper!3548 lt!2595977 (h!77256 s!7854)))))))

(declare-fun ct1!250 () Context!15496)

(declare-datatypes ((Unit!164234 0))(
  ( (Unit!164235) )
))
(declare-fun lt!2595968 () Unit!164234)

(declare-fun ct2!346 () Context!15496)

(declare-fun lambda!449120 () Int)

(declare-fun lemmaConcatPreservesForall!1565 (List!70931 List!70931 Int) Unit!164234)

(assert (=> b!7272925 (= lt!2595968 (lemmaConcatPreservesForall!1565 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120))))

(declare-fun lt!2595971 () Context!15496)

(declare-fun lambda!449121 () Int)

(declare-fun flatMap!2921 ((Set Context!15496) Int) (Set Context!15496))

(declare-fun derivationStepZipperUp!2578 (Context!15496 C!37890) (Set Context!15496))

(assert (=> b!7272925 (= (flatMap!2921 lt!2595977 lambda!449121) (derivationStepZipperUp!2578 lt!2595971 (h!77256 s!7854)))))

(declare-fun lt!2595972 () Unit!164234)

(declare-fun lemmaFlatMapOnSingletonSet!2321 ((Set Context!15496) Context!15496 Int) Unit!164234)

(assert (=> b!7272925 (= lt!2595972 (lemmaFlatMapOnSingletonSet!2321 lt!2595977 lt!2595971 lambda!449121))))

(assert (=> b!7272925 (= lt!2595977 (set.insert lt!2595971 (as set.empty (Set Context!15496))))))

(declare-fun lt!2595969 () Unit!164234)

(assert (=> b!7272925 (= lt!2595969 (lemmaConcatPreservesForall!1565 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120))))

(declare-fun lt!2595976 () Unit!164234)

(assert (=> b!7272925 (= lt!2595976 (lemmaConcatPreservesForall!1565 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120))))

(declare-fun lt!2595973 () (Set Context!15496))

(assert (=> b!7272925 (= (flatMap!2921 lt!2595973 lambda!449121) (derivationStepZipperUp!2578 ct1!250 (h!77256 s!7854)))))

(declare-fun lt!2595974 () Unit!164234)

(assert (=> b!7272925 (= lt!2595974 (lemmaFlatMapOnSingletonSet!2321 lt!2595973 ct1!250 lambda!449121))))

(assert (=> b!7272925 (= lt!2595973 (set.insert ct1!250 (as set.empty (Set Context!15496))))))

(assert (=> b!7272925 (= lt!2595975 (derivationStepZipperUp!2578 lt!2595971 (h!77256 s!7854)))))

(declare-fun ++!16708 (List!70931 List!70931) List!70931)

(assert (=> b!7272925 (= lt!2595971 (Context!15497 (++!16708 (exprs!8248 ct1!250) (exprs!8248 ct2!346))))))

(declare-fun lt!2595970 () Unit!164234)

(assert (=> b!7272925 (= lt!2595970 (lemmaConcatPreservesForall!1565 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120))))

(declare-fun b!7272926 () Bool)

(declare-fun res!2948186 () Bool)

(assert (=> b!7272926 (=> (not res!2948186) (not e!4361301))))

(assert (=> b!7272926 (= res!2948186 (is-Cons!70808 s!7854))))

(declare-fun res!2948184 () Bool)

(assert (=> start!709928 (=> (not res!2948184) (not e!4361301))))

(declare-fun matchZipper!3712 ((Set Context!15496) List!70932) Bool)

(assert (=> start!709928 (= res!2948184 (matchZipper!3712 (set.insert ct2!346 (as set.empty (Set Context!15496))) s!7854))))

(assert (=> start!709928 e!4361301))

(declare-fun e!4361302 () Bool)

(declare-fun inv!90031 (Context!15496) Bool)

(assert (=> start!709928 (and (inv!90031 ct2!346) e!4361302)))

(assert (=> start!709928 e!4361300))

(declare-fun e!4361304 () Bool)

(assert (=> start!709928 (and (inv!90031 ct1!250) e!4361304)))

(declare-fun b!7272927 () Bool)

(declare-fun tp!2041353 () Bool)

(assert (=> b!7272927 (= e!4361302 tp!2041353)))

(declare-fun b!7272928 () Bool)

(declare-fun res!2948185 () Bool)

(assert (=> b!7272928 (=> res!2948185 e!4361303)))

(assert (=> b!7272928 (= res!2948185 (is-Cons!70807 (exprs!8248 ct1!250)))))

(declare-fun b!7272929 () Bool)

(declare-fun forall!17637 (List!70931 Int) Bool)

(assert (=> b!7272929 (= e!4361303 (forall!17637 (exprs!8248 ct1!250) lambda!449120))))

(declare-fun b!7272930 () Bool)

(declare-fun res!2948182 () Bool)

(assert (=> b!7272930 (=> (not res!2948182) (not e!4361301))))

(declare-fun nullableContext!298 (Context!15496) Bool)

(assert (=> b!7272930 (= res!2948182 (nullableContext!298 ct1!250))))

(declare-fun b!7272931 () Bool)

(declare-fun tp!2041355 () Bool)

(assert (=> b!7272931 (= e!4361304 tp!2041355)))

(assert (= (and start!709928 res!2948184) b!7272930))

(assert (= (and b!7272930 res!2948182) b!7272926))

(assert (= (and b!7272926 res!2948186) b!7272925))

(assert (= (and b!7272925 (not res!2948183)) b!7272928))

(assert (= (and b!7272928 (not res!2948185)) b!7272929))

(assert (= start!709928 b!7272927))

(assert (= (and start!709928 (is-Cons!70808 s!7854)) b!7272924))

(assert (= start!709928 b!7272931))

(declare-fun m!7959314 () Bool)

(assert (=> b!7272925 m!7959314))

(declare-fun m!7959316 () Bool)

(assert (=> b!7272925 m!7959316))

(declare-fun m!7959318 () Bool)

(assert (=> b!7272925 m!7959318))

(declare-fun m!7959320 () Bool)

(assert (=> b!7272925 m!7959320))

(assert (=> b!7272925 m!7959316))

(declare-fun m!7959322 () Bool)

(assert (=> b!7272925 m!7959322))

(declare-fun m!7959324 () Bool)

(assert (=> b!7272925 m!7959324))

(declare-fun m!7959326 () Bool)

(assert (=> b!7272925 m!7959326))

(assert (=> b!7272925 m!7959316))

(declare-fun m!7959328 () Bool)

(assert (=> b!7272925 m!7959328))

(declare-fun m!7959330 () Bool)

(assert (=> b!7272925 m!7959330))

(declare-fun m!7959332 () Bool)

(assert (=> b!7272925 m!7959332))

(assert (=> b!7272925 m!7959316))

(declare-fun m!7959334 () Bool)

(assert (=> b!7272925 m!7959334))

(declare-fun m!7959336 () Bool)

(assert (=> start!709928 m!7959336))

(assert (=> start!709928 m!7959336))

(declare-fun m!7959338 () Bool)

(assert (=> start!709928 m!7959338))

(declare-fun m!7959340 () Bool)

(assert (=> start!709928 m!7959340))

(declare-fun m!7959342 () Bool)

(assert (=> start!709928 m!7959342))

(declare-fun m!7959344 () Bool)

(assert (=> b!7272929 m!7959344))

(declare-fun m!7959346 () Bool)

(assert (=> b!7272930 m!7959346))

(push 1)

(assert (not start!709928))

(assert (not b!7272924))

(assert (not b!7272925))

(assert (not b!7272929))

(assert (not b!7272927))

(assert (not b!7272931))

(assert (not b!7272930))

(assert tp_is_empty!47081)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911436 () Bool)

(declare-fun d!2263547 () Bool)

(assert (= bs!1911436 (and d!2263547 b!7272925)))

(declare-fun lambda!449140 () Int)

(assert (=> bs!1911436 (not (= lambda!449140 lambda!449120))))

(assert (=> d!2263547 (= (nullableContext!298 ct1!250) (forall!17637 (exprs!8248 ct1!250) lambda!449140))))

(declare-fun bs!1911437 () Bool)

(assert (= bs!1911437 d!2263547))

(declare-fun m!7959382 () Bool)

(assert (=> bs!1911437 m!7959382))

(assert (=> b!7272930 d!2263547))

(declare-fun d!2263549 () Bool)

(declare-fun res!2948206 () Bool)

(declare-fun e!4361324 () Bool)

(assert (=> d!2263549 (=> res!2948206 e!4361324)))

(assert (=> d!2263549 (= res!2948206 (is-Nil!70807 (exprs!8248 ct1!250)))))

(assert (=> d!2263549 (= (forall!17637 (exprs!8248 ct1!250) lambda!449120) e!4361324)))

(declare-fun b!7272964 () Bool)

(declare-fun e!4361325 () Bool)

(assert (=> b!7272964 (= e!4361324 e!4361325)))

(declare-fun res!2948207 () Bool)

(assert (=> b!7272964 (=> (not res!2948207) (not e!4361325))))

(declare-fun dynLambda!28949 (Int Regex!18808) Bool)

(assert (=> b!7272964 (= res!2948207 (dynLambda!28949 lambda!449120 (h!77255 (exprs!8248 ct1!250))))))

(declare-fun b!7272965 () Bool)

(assert (=> b!7272965 (= e!4361325 (forall!17637 (t!385003 (exprs!8248 ct1!250)) lambda!449120))))

(assert (= (and d!2263549 (not res!2948206)) b!7272964))

(assert (= (and b!7272964 res!2948207) b!7272965))

(declare-fun b_lambda!280509 () Bool)

(assert (=> (not b_lambda!280509) (not b!7272964)))

(declare-fun m!7959384 () Bool)

(assert (=> b!7272964 m!7959384))

(declare-fun m!7959386 () Bool)

(assert (=> b!7272965 m!7959386))

(assert (=> b!7272929 d!2263549))

(declare-fun d!2263551 () Bool)

(declare-fun c!1354133 () Bool)

(declare-fun isEmpty!40730 (List!70932) Bool)

(assert (=> d!2263551 (= c!1354133 (isEmpty!40730 s!7854))))

(declare-fun e!4361328 () Bool)

(assert (=> d!2263551 (= (matchZipper!3712 (set.insert ct2!346 (as set.empty (Set Context!15496))) s!7854) e!4361328)))

(declare-fun b!7272970 () Bool)

(declare-fun nullableZipper!3012 ((Set Context!15496)) Bool)

(assert (=> b!7272970 (= e!4361328 (nullableZipper!3012 (set.insert ct2!346 (as set.empty (Set Context!15496)))))))

(declare-fun b!7272971 () Bool)

(declare-fun head!15010 (List!70932) C!37890)

(declare-fun tail!14517 (List!70932) List!70932)

(assert (=> b!7272971 (= e!4361328 (matchZipper!3712 (derivationStepZipper!3548 (set.insert ct2!346 (as set.empty (Set Context!15496))) (head!15010 s!7854)) (tail!14517 s!7854)))))

(assert (= (and d!2263551 c!1354133) b!7272970))

(assert (= (and d!2263551 (not c!1354133)) b!7272971))

(declare-fun m!7959388 () Bool)

(assert (=> d!2263551 m!7959388))

(assert (=> b!7272970 m!7959336))

(declare-fun m!7959390 () Bool)

(assert (=> b!7272970 m!7959390))

(declare-fun m!7959392 () Bool)

(assert (=> b!7272971 m!7959392))

(assert (=> b!7272971 m!7959336))

(assert (=> b!7272971 m!7959392))

(declare-fun m!7959394 () Bool)

(assert (=> b!7272971 m!7959394))

(declare-fun m!7959396 () Bool)

(assert (=> b!7272971 m!7959396))

(assert (=> b!7272971 m!7959394))

(assert (=> b!7272971 m!7959396))

(declare-fun m!7959398 () Bool)

(assert (=> b!7272971 m!7959398))

(assert (=> start!709928 d!2263551))

(declare-fun bs!1911438 () Bool)

(declare-fun d!2263555 () Bool)

(assert (= bs!1911438 (and d!2263555 b!7272925)))

(declare-fun lambda!449143 () Int)

(assert (=> bs!1911438 (= lambda!449143 lambda!449120)))

(declare-fun bs!1911439 () Bool)

(assert (= bs!1911439 (and d!2263555 d!2263547)))

(assert (=> bs!1911439 (not (= lambda!449143 lambda!449140))))

(assert (=> d!2263555 (= (inv!90031 ct2!346) (forall!17637 (exprs!8248 ct2!346) lambda!449143))))

(declare-fun bs!1911440 () Bool)

(assert (= bs!1911440 d!2263555))

(declare-fun m!7959400 () Bool)

(assert (=> bs!1911440 m!7959400))

(assert (=> start!709928 d!2263555))

(declare-fun bs!1911441 () Bool)

(declare-fun d!2263557 () Bool)

(assert (= bs!1911441 (and d!2263557 b!7272925)))

(declare-fun lambda!449144 () Int)

(assert (=> bs!1911441 (= lambda!449144 lambda!449120)))

(declare-fun bs!1911442 () Bool)

(assert (= bs!1911442 (and d!2263557 d!2263547)))

(assert (=> bs!1911442 (not (= lambda!449144 lambda!449140))))

(declare-fun bs!1911443 () Bool)

(assert (= bs!1911443 (and d!2263557 d!2263555)))

(assert (=> bs!1911443 (= lambda!449144 lambda!449143)))

(assert (=> d!2263557 (= (inv!90031 ct1!250) (forall!17637 (exprs!8248 ct1!250) lambda!449144))))

(declare-fun bs!1911444 () Bool)

(assert (= bs!1911444 d!2263557))

(declare-fun m!7959402 () Bool)

(assert (=> bs!1911444 m!7959402))

(assert (=> start!709928 d!2263557))

(declare-fun b!7272988 () Bool)

(declare-fun e!4361338 () Bool)

(declare-fun nullable!8008 (Regex!18808) Bool)

(assert (=> b!7272988 (= e!4361338 (nullable!8008 (h!77255 (exprs!8248 ct1!250))))))

(declare-fun b!7272989 () Bool)

(declare-fun e!4361340 () (Set Context!15496))

(declare-fun e!4361339 () (Set Context!15496))

(assert (=> b!7272989 (= e!4361340 e!4361339)))

(declare-fun c!1354141 () Bool)

(assert (=> b!7272989 (= c!1354141 (is-Cons!70807 (exprs!8248 ct1!250)))))

(declare-fun b!7272990 () Bool)

(assert (=> b!7272990 (= e!4361339 (as set.empty (Set Context!15496)))))

(declare-fun call!663550 () (Set Context!15496))

(declare-fun b!7272991 () Bool)

(assert (=> b!7272991 (= e!4361340 (set.union call!663550 (derivationStepZipperUp!2578 (Context!15497 (t!385003 (exprs!8248 ct1!250))) (h!77256 s!7854))))))

(declare-fun bm!663545 () Bool)

(declare-fun derivationStepZipperDown!2742 (Regex!18808 Context!15496 C!37890) (Set Context!15496))

(assert (=> bm!663545 (= call!663550 (derivationStepZipperDown!2742 (h!77255 (exprs!8248 ct1!250)) (Context!15497 (t!385003 (exprs!8248 ct1!250))) (h!77256 s!7854)))))

(declare-fun d!2263559 () Bool)

(declare-fun c!1354142 () Bool)

(assert (=> d!2263559 (= c!1354142 e!4361338)))

(declare-fun res!2948210 () Bool)

(assert (=> d!2263559 (=> (not res!2948210) (not e!4361338))))

(assert (=> d!2263559 (= res!2948210 (is-Cons!70807 (exprs!8248 ct1!250)))))

(assert (=> d!2263559 (= (derivationStepZipperUp!2578 ct1!250 (h!77256 s!7854)) e!4361340)))

(declare-fun b!7272992 () Bool)

(assert (=> b!7272992 (= e!4361339 call!663550)))

(assert (= (and d!2263559 res!2948210) b!7272988))

(assert (= (and d!2263559 c!1354142) b!7272991))

(assert (= (and d!2263559 (not c!1354142)) b!7272989))

(assert (= (and b!7272989 c!1354141) b!7272992))

(assert (= (and b!7272989 (not c!1354141)) b!7272990))

(assert (= (or b!7272991 b!7272992) bm!663545))

(declare-fun m!7959416 () Bool)

(assert (=> b!7272988 m!7959416))

(declare-fun m!7959418 () Bool)

(assert (=> b!7272991 m!7959418))

(declare-fun m!7959420 () Bool)

(assert (=> bm!663545 m!7959420))

(assert (=> b!7272925 d!2263559))

(declare-fun d!2263563 () Bool)

(declare-fun dynLambda!28950 (Int Context!15496) (Set Context!15496))

(assert (=> d!2263563 (= (flatMap!2921 lt!2595977 lambda!449121) (dynLambda!28950 lambda!449121 lt!2595971))))

(declare-fun lt!2596010 () Unit!164234)

(declare-fun choose!56437 ((Set Context!15496) Context!15496 Int) Unit!164234)

(assert (=> d!2263563 (= lt!2596010 (choose!56437 lt!2595977 lt!2595971 lambda!449121))))

(assert (=> d!2263563 (= lt!2595977 (set.insert lt!2595971 (as set.empty (Set Context!15496))))))

(assert (=> d!2263563 (= (lemmaFlatMapOnSingletonSet!2321 lt!2595977 lt!2595971 lambda!449121) lt!2596010)))

(declare-fun b_lambda!280511 () Bool)

(assert (=> (not b_lambda!280511) (not d!2263563)))

(declare-fun bs!1911445 () Bool)

(assert (= bs!1911445 d!2263563))

(assert (=> bs!1911445 m!7959320))

(declare-fun m!7959422 () Bool)

(assert (=> bs!1911445 m!7959422))

(declare-fun m!7959424 () Bool)

(assert (=> bs!1911445 m!7959424))

(assert (=> bs!1911445 m!7959322))

(assert (=> b!7272925 d!2263563))

(declare-fun b!7272993 () Bool)

(declare-fun e!4361341 () Bool)

(assert (=> b!7272993 (= e!4361341 (nullable!8008 (h!77255 (exprs!8248 lt!2595971))))))

(declare-fun b!7272994 () Bool)

(declare-fun e!4361343 () (Set Context!15496))

(declare-fun e!4361342 () (Set Context!15496))

(assert (=> b!7272994 (= e!4361343 e!4361342)))

(declare-fun c!1354143 () Bool)

(assert (=> b!7272994 (= c!1354143 (is-Cons!70807 (exprs!8248 lt!2595971)))))

(declare-fun b!7272995 () Bool)

(assert (=> b!7272995 (= e!4361342 (as set.empty (Set Context!15496)))))

(declare-fun b!7272996 () Bool)

(declare-fun call!663551 () (Set Context!15496))

(assert (=> b!7272996 (= e!4361343 (set.union call!663551 (derivationStepZipperUp!2578 (Context!15497 (t!385003 (exprs!8248 lt!2595971))) (h!77256 s!7854))))))

(declare-fun bm!663546 () Bool)

(assert (=> bm!663546 (= call!663551 (derivationStepZipperDown!2742 (h!77255 (exprs!8248 lt!2595971)) (Context!15497 (t!385003 (exprs!8248 lt!2595971))) (h!77256 s!7854)))))

(declare-fun d!2263565 () Bool)

(declare-fun c!1354144 () Bool)

(assert (=> d!2263565 (= c!1354144 e!4361341)))

(declare-fun res!2948211 () Bool)

(assert (=> d!2263565 (=> (not res!2948211) (not e!4361341))))

(assert (=> d!2263565 (= res!2948211 (is-Cons!70807 (exprs!8248 lt!2595971)))))

(assert (=> d!2263565 (= (derivationStepZipperUp!2578 lt!2595971 (h!77256 s!7854)) e!4361343)))

(declare-fun b!7272997 () Bool)

(assert (=> b!7272997 (= e!4361342 call!663551)))

(assert (= (and d!2263565 res!2948211) b!7272993))

(assert (= (and d!2263565 c!1354144) b!7272996))

(assert (= (and d!2263565 (not c!1354144)) b!7272994))

(assert (= (and b!7272994 c!1354143) b!7272997))

(assert (= (and b!7272994 (not c!1354143)) b!7272995))

(assert (= (or b!7272996 b!7272997) bm!663546))

(declare-fun m!7959426 () Bool)

(assert (=> b!7272993 m!7959426))

(declare-fun m!7959428 () Bool)

(assert (=> b!7272996 m!7959428))

(declare-fun m!7959430 () Bool)

(assert (=> bm!663546 m!7959430))

(assert (=> b!7272925 d!2263565))

(declare-fun d!2263567 () Bool)

(assert (=> d!2263567 (forall!17637 (++!16708 (exprs!8248 ct1!250) (exprs!8248 ct2!346)) lambda!449120)))

(declare-fun lt!2596013 () Unit!164234)

(declare-fun choose!56438 (List!70931 List!70931 Int) Unit!164234)

(assert (=> d!2263567 (= lt!2596013 (choose!56438 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120))))

(assert (=> d!2263567 (forall!17637 (exprs!8248 ct1!250) lambda!449120)))

(assert (=> d!2263567 (= (lemmaConcatPreservesForall!1565 (exprs!8248 ct1!250) (exprs!8248 ct2!346) lambda!449120) lt!2596013)))

(declare-fun bs!1911451 () Bool)

(assert (= bs!1911451 d!2263567))

(assert (=> bs!1911451 m!7959326))

(assert (=> bs!1911451 m!7959326))

(declare-fun m!7959436 () Bool)

(assert (=> bs!1911451 m!7959436))

(declare-fun m!7959438 () Bool)

(assert (=> bs!1911451 m!7959438))

(assert (=> bs!1911451 m!7959344))

(assert (=> b!7272925 d!2263567))

(declare-fun d!2263573 () Bool)

(declare-fun e!4361349 () Bool)

(assert (=> d!2263573 e!4361349))

(declare-fun res!2948216 () Bool)

(assert (=> d!2263573 (=> (not res!2948216) (not e!4361349))))

(declare-fun lt!2596016 () List!70931)

(declare-fun content!14783 (List!70931) (Set Regex!18808))

(assert (=> d!2263573 (= res!2948216 (= (content!14783 lt!2596016) (set.union (content!14783 (exprs!8248 ct1!250)) (content!14783 (exprs!8248 ct2!346)))))))

(declare-fun e!4361348 () List!70931)

(assert (=> d!2263573 (= lt!2596016 e!4361348)))

(declare-fun c!1354148 () Bool)

(assert (=> d!2263573 (= c!1354148 (is-Nil!70807 (exprs!8248 ct1!250)))))

(assert (=> d!2263573 (= (++!16708 (exprs!8248 ct1!250) (exprs!8248 ct2!346)) lt!2596016)))

(declare-fun b!7273006 () Bool)

(assert (=> b!7273006 (= e!4361348 (exprs!8248 ct2!346))))

(declare-fun b!7273007 () Bool)

(assert (=> b!7273007 (= e!4361348 (Cons!70807 (h!77255 (exprs!8248 ct1!250)) (++!16708 (t!385003 (exprs!8248 ct1!250)) (exprs!8248 ct2!346))))))

(declare-fun b!7273009 () Bool)

(assert (=> b!7273009 (= e!4361349 (or (not (= (exprs!8248 ct2!346) Nil!70807)) (= lt!2596016 (exprs!8248 ct1!250))))))

(declare-fun b!7273008 () Bool)

(declare-fun res!2948217 () Bool)

(assert (=> b!7273008 (=> (not res!2948217) (not e!4361349))))

(declare-fun size!41831 (List!70931) Int)

(assert (=> b!7273008 (= res!2948217 (= (size!41831 lt!2596016) (+ (size!41831 (exprs!8248 ct1!250)) (size!41831 (exprs!8248 ct2!346)))))))

(assert (= (and d!2263573 c!1354148) b!7273006))

(assert (= (and d!2263573 (not c!1354148)) b!7273007))

(assert (= (and d!2263573 res!2948216) b!7273008))

(assert (= (and b!7273008 res!2948217) b!7273009))

(declare-fun m!7959442 () Bool)

(assert (=> d!2263573 m!7959442))

(declare-fun m!7959444 () Bool)

(assert (=> d!2263573 m!7959444))

(declare-fun m!7959446 () Bool)

(assert (=> d!2263573 m!7959446))

(declare-fun m!7959448 () Bool)

(assert (=> b!7273007 m!7959448))

(declare-fun m!7959450 () Bool)

(assert (=> b!7273008 m!7959450))

(declare-fun m!7959452 () Bool)

(assert (=> b!7273008 m!7959452))

(declare-fun m!7959454 () Bool)

(assert (=> b!7273008 m!7959454))

(assert (=> b!7272925 d!2263573))

(declare-fun bs!1911456 () Bool)

(declare-fun d!2263577 () Bool)

(assert (= bs!1911456 (and d!2263577 b!7272925)))

(declare-fun lambda!449154 () Int)

(assert (=> bs!1911456 (= lambda!449154 lambda!449121)))

(assert (=> d!2263577 true))

(assert (=> d!2263577 (= (derivationStepZipper!3548 lt!2595977 (h!77256 s!7854)) (flatMap!2921 lt!2595977 lambda!449154))))

(declare-fun bs!1911457 () Bool)

(assert (= bs!1911457 d!2263577))

(declare-fun m!7959456 () Bool)

(assert (=> bs!1911457 m!7959456))

(assert (=> b!7272925 d!2263577))

(declare-fun d!2263579 () Bool)

(assert (=> d!2263579 (= (flatMap!2921 lt!2595973 lambda!449121) (dynLambda!28950 lambda!449121 ct1!250))))

(declare-fun lt!2596017 () Unit!164234)

(assert (=> d!2263579 (= lt!2596017 (choose!56437 lt!2595973 ct1!250 lambda!449121))))

(assert (=> d!2263579 (= lt!2595973 (set.insert ct1!250 (as set.empty (Set Context!15496))))))

(assert (=> d!2263579 (= (lemmaFlatMapOnSingletonSet!2321 lt!2595973 ct1!250 lambda!449121) lt!2596017)))

(declare-fun b_lambda!280513 () Bool)

(assert (=> (not b_lambda!280513) (not d!2263579)))

(declare-fun bs!1911458 () Bool)

(assert (= bs!1911458 d!2263579))

(assert (=> bs!1911458 m!7959318))

(declare-fun m!7959458 () Bool)

(assert (=> bs!1911458 m!7959458))

(declare-fun m!7959460 () Bool)

(assert (=> bs!1911458 m!7959460))

(assert (=> bs!1911458 m!7959334))

(assert (=> b!7272925 d!2263579))

(declare-fun d!2263581 () Bool)

(declare-fun choose!56439 ((Set Context!15496) Int) (Set Context!15496))

(assert (=> d!2263581 (= (flatMap!2921 lt!2595977 lambda!449121) (choose!56439 lt!2595977 lambda!449121))))

(declare-fun bs!1911459 () Bool)

(assert (= bs!1911459 d!2263581))

(declare-fun m!7959464 () Bool)

(assert (=> bs!1911459 m!7959464))

(assert (=> b!7272925 d!2263581))

(declare-fun d!2263583 () Bool)

(assert (=> d!2263583 (= (flatMap!2921 lt!2595973 lambda!449121) (choose!56439 lt!2595973 lambda!449121))))

(declare-fun bs!1911460 () Bool)

(assert (= bs!1911460 d!2263583))

(declare-fun m!7959468 () Bool)

(assert (=> bs!1911460 m!7959468))

(assert (=> b!7272925 d!2263583))

(declare-fun b!7273022 () Bool)

(declare-fun e!4361358 () Bool)

(declare-fun tp!2041367 () Bool)

(assert (=> b!7273022 (= e!4361358 (and tp_is_empty!47081 tp!2041367))))

(assert (=> b!7272924 (= tp!2041354 e!4361358)))

(assert (= (and b!7272924 (is-Cons!70808 (t!385004 s!7854))) b!7273022))

(declare-fun b!7273027 () Bool)

(declare-fun e!4361361 () Bool)

(declare-fun tp!2041372 () Bool)

(declare-fun tp!2041373 () Bool)

(assert (=> b!7273027 (= e!4361361 (and tp!2041372 tp!2041373))))

(assert (=> b!7272927 (= tp!2041353 e!4361361)))

(assert (= (and b!7272927 (is-Cons!70807 (exprs!8248 ct2!346))) b!7273027))

(declare-fun b!7273028 () Bool)

(declare-fun e!4361362 () Bool)

(declare-fun tp!2041374 () Bool)

(declare-fun tp!2041375 () Bool)

(assert (=> b!7273028 (= e!4361362 (and tp!2041374 tp!2041375))))

(assert (=> b!7272931 (= tp!2041355 e!4361362)))

(assert (= (and b!7272931 (is-Cons!70807 (exprs!8248 ct1!250))) b!7273028))

(declare-fun b_lambda!280517 () Bool)

(assert (= b_lambda!280511 (or b!7272925 b_lambda!280517)))

(declare-fun bs!1911461 () Bool)

(declare-fun d!2263587 () Bool)

(assert (= bs!1911461 (and d!2263587 b!7272925)))

(assert (=> bs!1911461 (= (dynLambda!28950 lambda!449121 lt!2595971) (derivationStepZipperUp!2578 lt!2595971 (h!77256 s!7854)))))

(assert (=> bs!1911461 m!7959332))

(assert (=> d!2263563 d!2263587))

(declare-fun b_lambda!280519 () Bool)

(assert (= b_lambda!280513 (or b!7272925 b_lambda!280519)))

(declare-fun bs!1911462 () Bool)

(declare-fun d!2263589 () Bool)

(assert (= bs!1911462 (and d!2263589 b!7272925)))

(assert (=> bs!1911462 (= (dynLambda!28950 lambda!449121 ct1!250) (derivationStepZipperUp!2578 ct1!250 (h!77256 s!7854)))))

(assert (=> bs!1911462 m!7959328))

(assert (=> d!2263579 d!2263589))

(declare-fun b_lambda!280521 () Bool)

(assert (= b_lambda!280509 (or b!7272925 b_lambda!280521)))

(declare-fun bs!1911463 () Bool)

(declare-fun d!2263591 () Bool)

(assert (= bs!1911463 (and d!2263591 b!7272925)))

(declare-fun validRegex!9591 (Regex!18808) Bool)

(assert (=> bs!1911463 (= (dynLambda!28949 lambda!449120 (h!77255 (exprs!8248 ct1!250))) (validRegex!9591 (h!77255 (exprs!8248 ct1!250))))))

(declare-fun m!7959470 () Bool)

(assert (=> bs!1911463 m!7959470))

(assert (=> b!7272964 d!2263591))

(push 1)

(assert (not d!2263555))

(assert (not d!2263567))

(assert (not bm!663546))

(assert (not d!2263577))

(assert (not b!7273022))

(assert tp_is_empty!47081)

(assert (not b_lambda!280521))

(assert (not bs!1911462))

(assert (not d!2263581))

(assert (not b!7272965))

(assert (not d!2263557))

(assert (not b!7273007))

(assert (not b_lambda!280519))

(assert (not d!2263583))

(assert (not b!7272971))

(assert (not b!7273027))

(assert (not d!2263563))

(assert (not b!7272988))

(assert (not b_lambda!280517))

(assert (not d!2263573))

(assert (not b!7273008))

(assert (not b!7272993))

(assert (not b!7272991))

(assert (not d!2263579))

(assert (not b!7273028))

(assert (not d!2263547))

(assert (not d!2263551))

(assert (not bs!1911461))

(assert (not b!7272970))

(assert (not bs!1911463))

(assert (not bm!663545))

(assert (not b!7272996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

