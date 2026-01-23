; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717102 () Bool)

(assert start!717102)

(declare-fun b!7342240 () Bool)

(declare-fun e!4396501 () Bool)

(declare-fun tp!2084952 () Bool)

(assert (=> b!7342240 (= e!4396501 tp!2084952)))

(declare-fun b!7342241 () Bool)

(declare-fun e!4396495 () Bool)

(declare-datatypes ((C!38514 0))(
  ( (C!38515 (val!29617 Int)) )
))
(declare-datatypes ((Regex!19120 0))(
  ( (ElementMatch!19120 (c!1363792 C!38514)) (Concat!27965 (regOne!38752 Regex!19120) (regTwo!38752 Regex!19120)) (EmptyExpr!19120) (Star!19120 (reg!19449 Regex!19120)) (EmptyLang!19120) (Union!19120 (regOne!38753 Regex!19120) (regTwo!38753 Regex!19120)) )
))
(declare-datatypes ((List!71616 0))(
  ( (Nil!71492) (Cons!71492 (h!77940 Regex!19120) (t!386011 List!71616)) )
))
(declare-datatypes ((Context!16120 0))(
  ( (Context!16121 (exprs!8560 List!71616)) )
))
(declare-fun cWitness!61 () Context!16120)

(declare-fun lambda!455740 () Int)

(declare-fun forall!17950 (List!71616 Int) Bool)

(assert (=> b!7342241 (= e!4396495 (not (forall!17950 (exprs!8560 cWitness!61) lambda!455740)))))

(declare-fun c!10362 () C!38514)

(declare-fun lt!2610345 () Context!16120)

(declare-fun r1!2370 () Regex!19120)

(declare-fun ct2!378 () Context!16120)

(declare-fun ++!16938 (List!71616 List!71616) List!71616)

(declare-fun derivationStepZipperDown!2946 (Regex!19120 Context!16120 C!38514) (Set Context!16120))

(assert (=> b!7342241 (set.member (Context!16121 (++!16938 (exprs!8560 cWitness!61) (exprs!8560 ct2!378))) (derivationStepZipperDown!2946 (regTwo!38753 r1!2370) lt!2610345 c!10362))))

(declare-datatypes ((Unit!165193 0))(
  ( (Unit!165194) )
))
(declare-fun lt!2610339 () Unit!165193)

(declare-fun ct1!282 () Context!16120)

(declare-fun lemmaConcatPreservesForall!1795 (List!71616 List!71616 Int) Unit!165193)

(assert (=> b!7342241 (= lt!2610339 (lemmaConcatPreservesForall!1795 (exprs!8560 ct1!282) (exprs!8560 ct2!378) lambda!455740))))

(declare-fun lt!2610343 () Unit!165193)

(assert (=> b!7342241 (= lt!2610343 (lemmaConcatPreservesForall!1795 (exprs!8560 cWitness!61) (exprs!8560 ct2!378) lambda!455740))))

(declare-fun lt!2610342 () Unit!165193)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!53 (Regex!19120 Context!16120 Context!16120 Context!16120 C!38514) Unit!165193)

(assert (=> b!7342241 (= lt!2610342 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!53 (regTwo!38753 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7342242 () Bool)

(declare-fun e!4396498 () Bool)

(declare-fun e!4396500 () Bool)

(assert (=> b!7342242 (= e!4396498 e!4396500)))

(declare-fun res!2966005 () Bool)

(assert (=> b!7342242 (=> (not res!2966005) (not e!4396500))))

(assert (=> b!7342242 (= res!2966005 (and (or (not (is-ElementMatch!19120 r1!2370)) (not (= c!10362 (c!1363792 r1!2370)))) (is-Union!19120 r1!2370)))))

(declare-fun lt!2610344 () (Set Context!16120))

(assert (=> b!7342242 (= lt!2610344 (derivationStepZipperDown!2946 r1!2370 lt!2610345 c!10362))))

(assert (=> b!7342242 (= lt!2610345 (Context!16121 (++!16938 (exprs!8560 ct1!282) (exprs!8560 ct2!378))))))

(declare-fun lt!2610341 () Unit!165193)

(assert (=> b!7342242 (= lt!2610341 (lemmaConcatPreservesForall!1795 (exprs!8560 ct1!282) (exprs!8560 ct2!378) lambda!455740))))

(declare-fun b!7342243 () Bool)

(assert (=> b!7342243 (= e!4396500 e!4396495)))

(declare-fun res!2966002 () Bool)

(assert (=> b!7342243 (=> (not res!2966002) (not e!4396495))))

(declare-fun lt!2610340 () (Set Context!16120))

(declare-fun lt!2610338 () (Set Context!16120))

(assert (=> b!7342243 (= res!2966002 (= lt!2610338 (set.union lt!2610340 (derivationStepZipperDown!2946 (regTwo!38753 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7342243 (= lt!2610340 (derivationStepZipperDown!2946 (regOne!38753 r1!2370) ct1!282 c!10362))))

(declare-fun res!2966004 () Bool)

(declare-fun e!4396502 () Bool)

(assert (=> start!717102 (=> (not res!2966004) (not e!4396502))))

(declare-fun validRegex!9716 (Regex!19120) Bool)

(assert (=> start!717102 (= res!2966004 (validRegex!9716 r1!2370))))

(assert (=> start!717102 e!4396502))

(declare-fun tp_is_empty!48485 () Bool)

(assert (=> start!717102 tp_is_empty!48485))

(declare-fun e!4396497 () Bool)

(declare-fun inv!91141 (Context!16120) Bool)

(assert (=> start!717102 (and (inv!91141 cWitness!61) e!4396497)))

(assert (=> start!717102 (and (inv!91141 ct1!282) e!4396501)))

(declare-fun e!4396499 () Bool)

(assert (=> start!717102 e!4396499))

(declare-fun e!4396496 () Bool)

(assert (=> start!717102 (and (inv!91141 ct2!378) e!4396496)))

(declare-fun b!7342244 () Bool)

(assert (=> b!7342244 (= e!4396502 e!4396498)))

(declare-fun res!2966003 () Bool)

(assert (=> b!7342244 (=> (not res!2966003) (not e!4396498))))

(assert (=> b!7342244 (= res!2966003 (set.member cWitness!61 lt!2610338))))

(assert (=> b!7342244 (= lt!2610338 (derivationStepZipperDown!2946 r1!2370 ct1!282 c!10362))))

(declare-fun b!7342245 () Bool)

(declare-fun tp!2084954 () Bool)

(assert (=> b!7342245 (= e!4396499 tp!2084954)))

(declare-fun b!7342246 () Bool)

(declare-fun tp!2084951 () Bool)

(assert (=> b!7342246 (= e!4396496 tp!2084951)))

(declare-fun b!7342247 () Bool)

(declare-fun tp!2084953 () Bool)

(assert (=> b!7342247 (= e!4396497 tp!2084953)))

(declare-fun b!7342248 () Bool)

(assert (=> b!7342248 (= e!4396499 tp_is_empty!48485)))

(declare-fun b!7342249 () Bool)

(declare-fun tp!2084950 () Bool)

(declare-fun tp!2084956 () Bool)

(assert (=> b!7342249 (= e!4396499 (and tp!2084950 tp!2084956))))

(declare-fun b!7342250 () Bool)

(declare-fun tp!2084957 () Bool)

(declare-fun tp!2084955 () Bool)

(assert (=> b!7342250 (= e!4396499 (and tp!2084957 tp!2084955))))

(declare-fun b!7342251 () Bool)

(declare-fun res!2966001 () Bool)

(assert (=> b!7342251 (=> (not res!2966001) (not e!4396495))))

(assert (=> b!7342251 (= res!2966001 (not (set.member cWitness!61 lt!2610340)))))

(assert (= (and start!717102 res!2966004) b!7342244))

(assert (= (and b!7342244 res!2966003) b!7342242))

(assert (= (and b!7342242 res!2966005) b!7342243))

(assert (= (and b!7342243 res!2966002) b!7342251))

(assert (= (and b!7342251 res!2966001) b!7342241))

(assert (= start!717102 b!7342247))

(assert (= start!717102 b!7342240))

(assert (= (and start!717102 (is-ElementMatch!19120 r1!2370)) b!7342248))

(assert (= (and start!717102 (is-Concat!27965 r1!2370)) b!7342250))

(assert (= (and start!717102 (is-Star!19120 r1!2370)) b!7342245))

(assert (= (and start!717102 (is-Union!19120 r1!2370)) b!7342249))

(assert (= start!717102 b!7342246))

(declare-fun m!8005634 () Bool)

(assert (=> b!7342243 m!8005634))

(declare-fun m!8005636 () Bool)

(assert (=> b!7342243 m!8005636))

(declare-fun m!8005638 () Bool)

(assert (=> b!7342244 m!8005638))

(declare-fun m!8005640 () Bool)

(assert (=> b!7342244 m!8005640))

(declare-fun m!8005642 () Bool)

(assert (=> start!717102 m!8005642))

(declare-fun m!8005644 () Bool)

(assert (=> start!717102 m!8005644))

(declare-fun m!8005646 () Bool)

(assert (=> start!717102 m!8005646))

(declare-fun m!8005648 () Bool)

(assert (=> start!717102 m!8005648))

(declare-fun m!8005650 () Bool)

(assert (=> b!7342242 m!8005650))

(declare-fun m!8005652 () Bool)

(assert (=> b!7342242 m!8005652))

(declare-fun m!8005654 () Bool)

(assert (=> b!7342242 m!8005654))

(declare-fun m!8005656 () Bool)

(assert (=> b!7342241 m!8005656))

(declare-fun m!8005658 () Bool)

(assert (=> b!7342241 m!8005658))

(declare-fun m!8005660 () Bool)

(assert (=> b!7342241 m!8005660))

(declare-fun m!8005662 () Bool)

(assert (=> b!7342241 m!8005662))

(declare-fun m!8005664 () Bool)

(assert (=> b!7342241 m!8005664))

(declare-fun m!8005666 () Bool)

(assert (=> b!7342241 m!8005666))

(assert (=> b!7342241 m!8005654))

(declare-fun m!8005668 () Bool)

(assert (=> b!7342251 m!8005668))

(push 1)

(assert (not b!7342241))

(assert (not b!7342247))

(assert (not start!717102))

(assert (not b!7342250))

(assert (not b!7342240))

(assert (not b!7342246))

(assert (not b!7342243))

(assert tp_is_empty!48485)

(assert (not b!7342249))

(assert (not b!7342244))

(assert (not b!7342242))

(assert (not b!7342245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7342328 () Bool)

(declare-fun e!4396554 () (Set Context!16120))

(declare-fun e!4396557 () (Set Context!16120))

(assert (=> b!7342328 (= e!4396554 e!4396557)))

(declare-fun c!1363811 () Bool)

(assert (=> b!7342328 (= c!1363811 (is-Union!19120 (regTwo!38753 r1!2370)))))

(declare-fun bm!670327 () Bool)

(declare-fun call!670337 () List!71616)

(declare-fun call!670334 () List!71616)

(assert (=> bm!670327 (= call!670337 call!670334)))

(declare-fun bm!670328 () Bool)

(declare-fun c!1363810 () Bool)

(declare-fun c!1363808 () Bool)

(declare-fun $colon$colon!3120 (List!71616 Regex!19120) List!71616)

(assert (=> bm!670328 (= call!670334 ($colon$colon!3120 (exprs!8560 ct1!282) (ite (or c!1363810 c!1363808) (regTwo!38752 (regTwo!38753 r1!2370)) (regTwo!38753 r1!2370))))))

(declare-fun b!7342329 () Bool)

(declare-fun e!4396555 () (Set Context!16120))

(assert (=> b!7342329 (= e!4396555 (as set.empty (Set Context!16120)))))

(declare-fun d!2278991 () Bool)

(declare-fun c!1363812 () Bool)

(assert (=> d!2278991 (= c!1363812 (and (is-ElementMatch!19120 (regTwo!38753 r1!2370)) (= (c!1363792 (regTwo!38753 r1!2370)) c!10362)))))

(assert (=> d!2278991 (= (derivationStepZipperDown!2946 (regTwo!38753 r1!2370) ct1!282 c!10362) e!4396554)))

(declare-fun b!7342330 () Bool)

(declare-fun e!4396553 () (Set Context!16120))

(declare-fun call!670332 () (Set Context!16120))

(declare-fun call!670336 () (Set Context!16120))

(assert (=> b!7342330 (= e!4396553 (set.union call!670332 call!670336))))

(declare-fun b!7342331 () Bool)

(declare-fun call!670333 () (Set Context!16120))

(assert (=> b!7342331 (= e!4396555 call!670333)))

(declare-fun b!7342332 () Bool)

(declare-fun e!4396556 () (Set Context!16120))

(assert (=> b!7342332 (= e!4396556 call!670333)))

(declare-fun bm!670329 () Bool)

(assert (=> bm!670329 (= call!670332 (derivationStepZipperDown!2946 (ite c!1363811 (regTwo!38753 (regTwo!38753 r1!2370)) (regOne!38752 (regTwo!38753 r1!2370))) (ite c!1363811 ct1!282 (Context!16121 call!670334)) c!10362))))

(declare-fun b!7342333 () Bool)

(declare-fun e!4396558 () Bool)

(assert (=> b!7342333 (= c!1363810 e!4396558)))

(declare-fun res!2966033 () Bool)

(assert (=> b!7342333 (=> (not res!2966033) (not e!4396558))))

(assert (=> b!7342333 (= res!2966033 (is-Concat!27965 (regTwo!38753 r1!2370)))))

(assert (=> b!7342333 (= e!4396557 e!4396553)))

(declare-fun call!670335 () (Set Context!16120))

(declare-fun bm!670330 () Bool)

(assert (=> bm!670330 (= call!670335 (derivationStepZipperDown!2946 (ite c!1363811 (regOne!38753 (regTwo!38753 r1!2370)) (ite c!1363810 (regTwo!38752 (regTwo!38753 r1!2370)) (ite c!1363808 (regOne!38752 (regTwo!38753 r1!2370)) (reg!19449 (regTwo!38753 r1!2370))))) (ite (or c!1363811 c!1363810) ct1!282 (Context!16121 call!670337)) c!10362))))

(declare-fun bm!670331 () Bool)

(assert (=> bm!670331 (= call!670336 call!670335)))

(declare-fun b!7342334 () Bool)

(assert (=> b!7342334 (= e!4396557 (set.union call!670335 call!670332))))

(declare-fun bm!670332 () Bool)

(assert (=> bm!670332 (= call!670333 call!670336)))

(declare-fun b!7342335 () Bool)

(assert (=> b!7342335 (= e!4396553 e!4396556)))

(assert (=> b!7342335 (= c!1363808 (is-Concat!27965 (regTwo!38753 r1!2370)))))

(declare-fun b!7342336 () Bool)

(assert (=> b!7342336 (= e!4396554 (set.insert ct1!282 (as set.empty (Set Context!16120))))))

(declare-fun b!7342337 () Bool)

(declare-fun nullable!8213 (Regex!19120) Bool)

(assert (=> b!7342337 (= e!4396558 (nullable!8213 (regOne!38752 (regTwo!38753 r1!2370))))))

(declare-fun b!7342338 () Bool)

(declare-fun c!1363809 () Bool)

(assert (=> b!7342338 (= c!1363809 (is-Star!19120 (regTwo!38753 r1!2370)))))

(assert (=> b!7342338 (= e!4396556 e!4396555)))

(assert (= (and d!2278991 c!1363812) b!7342336))

(assert (= (and d!2278991 (not c!1363812)) b!7342328))

(assert (= (and b!7342328 c!1363811) b!7342334))

(assert (= (and b!7342328 (not c!1363811)) b!7342333))

(assert (= (and b!7342333 res!2966033) b!7342337))

(assert (= (and b!7342333 c!1363810) b!7342330))

(assert (= (and b!7342333 (not c!1363810)) b!7342335))

(assert (= (and b!7342335 c!1363808) b!7342332))

(assert (= (and b!7342335 (not c!1363808)) b!7342338))

(assert (= (and b!7342338 c!1363809) b!7342331))

(assert (= (and b!7342338 (not c!1363809)) b!7342329))

(assert (= (or b!7342332 b!7342331) bm!670327))

(assert (= (or b!7342332 b!7342331) bm!670332))

(assert (= (or b!7342330 bm!670332) bm!670331))

(assert (= (or b!7342330 bm!670327) bm!670328))

(assert (= (or b!7342334 b!7342330) bm!670329))

(assert (= (or b!7342334 bm!670331) bm!670330))

(declare-fun m!8005706 () Bool)

(assert (=> b!7342336 m!8005706))

(declare-fun m!8005708 () Bool)

(assert (=> bm!670328 m!8005708))

(declare-fun m!8005710 () Bool)

(assert (=> b!7342337 m!8005710))

(declare-fun m!8005712 () Bool)

(assert (=> bm!670330 m!8005712))

(declare-fun m!8005714 () Bool)

(assert (=> bm!670329 m!8005714))

(assert (=> b!7342243 d!2278991))

(declare-fun b!7342339 () Bool)

(declare-fun e!4396560 () (Set Context!16120))

(declare-fun e!4396563 () (Set Context!16120))

(assert (=> b!7342339 (= e!4396560 e!4396563)))

(declare-fun c!1363816 () Bool)

(assert (=> b!7342339 (= c!1363816 (is-Union!19120 (regOne!38753 r1!2370)))))

(declare-fun bm!670333 () Bool)

(declare-fun call!670343 () List!71616)

(declare-fun call!670340 () List!71616)

(assert (=> bm!670333 (= call!670343 call!670340)))

(declare-fun c!1363813 () Bool)

(declare-fun bm!670334 () Bool)

(declare-fun c!1363815 () Bool)

(assert (=> bm!670334 (= call!670340 ($colon$colon!3120 (exprs!8560 ct1!282) (ite (or c!1363815 c!1363813) (regTwo!38752 (regOne!38753 r1!2370)) (regOne!38753 r1!2370))))))

(declare-fun b!7342340 () Bool)

(declare-fun e!4396561 () (Set Context!16120))

(assert (=> b!7342340 (= e!4396561 (as set.empty (Set Context!16120)))))

(declare-fun d!2278995 () Bool)

(declare-fun c!1363817 () Bool)

(assert (=> d!2278995 (= c!1363817 (and (is-ElementMatch!19120 (regOne!38753 r1!2370)) (= (c!1363792 (regOne!38753 r1!2370)) c!10362)))))

(assert (=> d!2278995 (= (derivationStepZipperDown!2946 (regOne!38753 r1!2370) ct1!282 c!10362) e!4396560)))

(declare-fun b!7342341 () Bool)

(declare-fun e!4396559 () (Set Context!16120))

(declare-fun call!670338 () (Set Context!16120))

(declare-fun call!670342 () (Set Context!16120))

(assert (=> b!7342341 (= e!4396559 (set.union call!670338 call!670342))))

(declare-fun b!7342342 () Bool)

(declare-fun call!670339 () (Set Context!16120))

(assert (=> b!7342342 (= e!4396561 call!670339)))

(declare-fun b!7342343 () Bool)

(declare-fun e!4396562 () (Set Context!16120))

(assert (=> b!7342343 (= e!4396562 call!670339)))

(declare-fun bm!670335 () Bool)

(assert (=> bm!670335 (= call!670338 (derivationStepZipperDown!2946 (ite c!1363816 (regTwo!38753 (regOne!38753 r1!2370)) (regOne!38752 (regOne!38753 r1!2370))) (ite c!1363816 ct1!282 (Context!16121 call!670340)) c!10362))))

(declare-fun b!7342344 () Bool)

(declare-fun e!4396564 () Bool)

(assert (=> b!7342344 (= c!1363815 e!4396564)))

(declare-fun res!2966034 () Bool)

(assert (=> b!7342344 (=> (not res!2966034) (not e!4396564))))

(assert (=> b!7342344 (= res!2966034 (is-Concat!27965 (regOne!38753 r1!2370)))))

(assert (=> b!7342344 (= e!4396563 e!4396559)))

(declare-fun bm!670336 () Bool)

(declare-fun call!670341 () (Set Context!16120))

(assert (=> bm!670336 (= call!670341 (derivationStepZipperDown!2946 (ite c!1363816 (regOne!38753 (regOne!38753 r1!2370)) (ite c!1363815 (regTwo!38752 (regOne!38753 r1!2370)) (ite c!1363813 (regOne!38752 (regOne!38753 r1!2370)) (reg!19449 (regOne!38753 r1!2370))))) (ite (or c!1363816 c!1363815) ct1!282 (Context!16121 call!670343)) c!10362))))

(declare-fun bm!670337 () Bool)

(assert (=> bm!670337 (= call!670342 call!670341)))

(declare-fun b!7342345 () Bool)

(assert (=> b!7342345 (= e!4396563 (set.union call!670341 call!670338))))

(declare-fun bm!670338 () Bool)

(assert (=> bm!670338 (= call!670339 call!670342)))

(declare-fun b!7342346 () Bool)

(assert (=> b!7342346 (= e!4396559 e!4396562)))

(assert (=> b!7342346 (= c!1363813 (is-Concat!27965 (regOne!38753 r1!2370)))))

(declare-fun b!7342347 () Bool)

(assert (=> b!7342347 (= e!4396560 (set.insert ct1!282 (as set.empty (Set Context!16120))))))

(declare-fun b!7342348 () Bool)

(assert (=> b!7342348 (= e!4396564 (nullable!8213 (regOne!38752 (regOne!38753 r1!2370))))))

(declare-fun b!7342349 () Bool)

(declare-fun c!1363814 () Bool)

(assert (=> b!7342349 (= c!1363814 (is-Star!19120 (regOne!38753 r1!2370)))))

(assert (=> b!7342349 (= e!4396562 e!4396561)))

(assert (= (and d!2278995 c!1363817) b!7342347))

(assert (= (and d!2278995 (not c!1363817)) b!7342339))

(assert (= (and b!7342339 c!1363816) b!7342345))

(assert (= (and b!7342339 (not c!1363816)) b!7342344))

(assert (= (and b!7342344 res!2966034) b!7342348))

(assert (= (and b!7342344 c!1363815) b!7342341))

(assert (= (and b!7342344 (not c!1363815)) b!7342346))

(assert (= (and b!7342346 c!1363813) b!7342343))

(assert (= (and b!7342346 (not c!1363813)) b!7342349))

(assert (= (and b!7342349 c!1363814) b!7342342))

(assert (= (and b!7342349 (not c!1363814)) b!7342340))

(assert (= (or b!7342343 b!7342342) bm!670333))

(assert (= (or b!7342343 b!7342342) bm!670338))

(assert (= (or b!7342341 bm!670338) bm!670337))

(assert (= (or b!7342341 bm!670333) bm!670334))

(assert (= (or b!7342345 b!7342341) bm!670335))

(assert (= (or b!7342345 bm!670337) bm!670336))

(assert (=> b!7342347 m!8005706))

(declare-fun m!8005716 () Bool)

(assert (=> bm!670334 m!8005716))

(declare-fun m!8005718 () Bool)

(assert (=> b!7342348 m!8005718))

(declare-fun m!8005720 () Bool)

(assert (=> bm!670336 m!8005720))

(declare-fun m!8005722 () Bool)

(assert (=> bm!670335 m!8005722))

(assert (=> b!7342243 d!2278995))

(declare-fun b!7342350 () Bool)

(declare-fun e!4396566 () (Set Context!16120))

(declare-fun e!4396569 () (Set Context!16120))

(assert (=> b!7342350 (= e!4396566 e!4396569)))

(declare-fun c!1363821 () Bool)

(assert (=> b!7342350 (= c!1363821 (is-Union!19120 r1!2370))))

(declare-fun bm!670339 () Bool)

(declare-fun call!670349 () List!71616)

(declare-fun call!670346 () List!71616)

(assert (=> bm!670339 (= call!670349 call!670346)))

(declare-fun c!1363818 () Bool)

(declare-fun c!1363820 () Bool)

(declare-fun bm!670340 () Bool)

(assert (=> bm!670340 (= call!670346 ($colon$colon!3120 (exprs!8560 lt!2610345) (ite (or c!1363820 c!1363818) (regTwo!38752 r1!2370) r1!2370)))))

(declare-fun b!7342351 () Bool)

(declare-fun e!4396567 () (Set Context!16120))

(assert (=> b!7342351 (= e!4396567 (as set.empty (Set Context!16120)))))

(declare-fun d!2278997 () Bool)

(declare-fun c!1363822 () Bool)

(assert (=> d!2278997 (= c!1363822 (and (is-ElementMatch!19120 r1!2370) (= (c!1363792 r1!2370) c!10362)))))

(assert (=> d!2278997 (= (derivationStepZipperDown!2946 r1!2370 lt!2610345 c!10362) e!4396566)))

(declare-fun b!7342352 () Bool)

(declare-fun e!4396565 () (Set Context!16120))

(declare-fun call!670344 () (Set Context!16120))

(declare-fun call!670348 () (Set Context!16120))

(assert (=> b!7342352 (= e!4396565 (set.union call!670344 call!670348))))

(declare-fun b!7342353 () Bool)

(declare-fun call!670345 () (Set Context!16120))

(assert (=> b!7342353 (= e!4396567 call!670345)))

(declare-fun b!7342354 () Bool)

(declare-fun e!4396568 () (Set Context!16120))

(assert (=> b!7342354 (= e!4396568 call!670345)))

(declare-fun bm!670341 () Bool)

(assert (=> bm!670341 (= call!670344 (derivationStepZipperDown!2946 (ite c!1363821 (regTwo!38753 r1!2370) (regOne!38752 r1!2370)) (ite c!1363821 lt!2610345 (Context!16121 call!670346)) c!10362))))

(declare-fun b!7342355 () Bool)

(declare-fun e!4396570 () Bool)

(assert (=> b!7342355 (= c!1363820 e!4396570)))

(declare-fun res!2966035 () Bool)

(assert (=> b!7342355 (=> (not res!2966035) (not e!4396570))))

(assert (=> b!7342355 (= res!2966035 (is-Concat!27965 r1!2370))))

(assert (=> b!7342355 (= e!4396569 e!4396565)))

(declare-fun bm!670342 () Bool)

(declare-fun call!670347 () (Set Context!16120))

(assert (=> bm!670342 (= call!670347 (derivationStepZipperDown!2946 (ite c!1363821 (regOne!38753 r1!2370) (ite c!1363820 (regTwo!38752 r1!2370) (ite c!1363818 (regOne!38752 r1!2370) (reg!19449 r1!2370)))) (ite (or c!1363821 c!1363820) lt!2610345 (Context!16121 call!670349)) c!10362))))

(declare-fun bm!670343 () Bool)

(assert (=> bm!670343 (= call!670348 call!670347)))

(declare-fun b!7342356 () Bool)

(assert (=> b!7342356 (= e!4396569 (set.union call!670347 call!670344))))

(declare-fun bm!670344 () Bool)

(assert (=> bm!670344 (= call!670345 call!670348)))

(declare-fun b!7342357 () Bool)

(assert (=> b!7342357 (= e!4396565 e!4396568)))

(assert (=> b!7342357 (= c!1363818 (is-Concat!27965 r1!2370))))

(declare-fun b!7342358 () Bool)

(assert (=> b!7342358 (= e!4396566 (set.insert lt!2610345 (as set.empty (Set Context!16120))))))

(declare-fun b!7342359 () Bool)

(assert (=> b!7342359 (= e!4396570 (nullable!8213 (regOne!38752 r1!2370)))))

(declare-fun b!7342360 () Bool)

(declare-fun c!1363819 () Bool)

(assert (=> b!7342360 (= c!1363819 (is-Star!19120 r1!2370))))

(assert (=> b!7342360 (= e!4396568 e!4396567)))

(assert (= (and d!2278997 c!1363822) b!7342358))

(assert (= (and d!2278997 (not c!1363822)) b!7342350))

(assert (= (and b!7342350 c!1363821) b!7342356))

(assert (= (and b!7342350 (not c!1363821)) b!7342355))

(assert (= (and b!7342355 res!2966035) b!7342359))

(assert (= (and b!7342355 c!1363820) b!7342352))

(assert (= (and b!7342355 (not c!1363820)) b!7342357))

(assert (= (and b!7342357 c!1363818) b!7342354))

(assert (= (and b!7342357 (not c!1363818)) b!7342360))

(assert (= (and b!7342360 c!1363819) b!7342353))

(assert (= (and b!7342360 (not c!1363819)) b!7342351))

(assert (= (or b!7342354 b!7342353) bm!670339))

(assert (= (or b!7342354 b!7342353) bm!670344))

(assert (= (or b!7342352 bm!670344) bm!670343))

(assert (= (or b!7342352 bm!670339) bm!670340))

(assert (= (or b!7342356 b!7342352) bm!670341))

(assert (= (or b!7342356 bm!670343) bm!670342))

(declare-fun m!8005724 () Bool)

(assert (=> b!7342358 m!8005724))

(declare-fun m!8005726 () Bool)

(assert (=> bm!670340 m!8005726))

(declare-fun m!8005728 () Bool)

(assert (=> b!7342359 m!8005728))

(declare-fun m!8005730 () Bool)

(assert (=> bm!670342 m!8005730))

(declare-fun m!8005732 () Bool)

(assert (=> bm!670341 m!8005732))

(assert (=> b!7342242 d!2278997))

(declare-fun b!7342379 () Bool)

(declare-fun e!4396582 () List!71616)

(assert (=> b!7342379 (= e!4396582 (Cons!71492 (h!77940 (exprs!8560 ct1!282)) (++!16938 (t!386011 (exprs!8560 ct1!282)) (exprs!8560 ct2!378))))))

(declare-fun b!7342380 () Bool)

(declare-fun res!2966046 () Bool)

(declare-fun e!4396583 () Bool)

(assert (=> b!7342380 (=> (not res!2966046) (not e!4396583))))

(declare-fun lt!2610372 () List!71616)

(declare-fun size!42014 (List!71616) Int)

(assert (=> b!7342380 (= res!2966046 (= (size!42014 lt!2610372) (+ (size!42014 (exprs!8560 ct1!282)) (size!42014 (exprs!8560 ct2!378)))))))

(declare-fun b!7342381 () Bool)

(assert (=> b!7342381 (= e!4396583 (or (not (= (exprs!8560 ct2!378) Nil!71492)) (= lt!2610372 (exprs!8560 ct1!282))))))

(declare-fun d!2278999 () Bool)

(assert (=> d!2278999 e!4396583))

(declare-fun res!2966045 () Bool)

(assert (=> d!2278999 (=> (not res!2966045) (not e!4396583))))

(declare-fun content!15035 (List!71616) (Set Regex!19120))

(assert (=> d!2278999 (= res!2966045 (= (content!15035 lt!2610372) (set.union (content!15035 (exprs!8560 ct1!282)) (content!15035 (exprs!8560 ct2!378)))))))

(assert (=> d!2278999 (= lt!2610372 e!4396582)))

(declare-fun c!1363827 () Bool)

(assert (=> d!2278999 (= c!1363827 (is-Nil!71492 (exprs!8560 ct1!282)))))

(assert (=> d!2278999 (= (++!16938 (exprs!8560 ct1!282) (exprs!8560 ct2!378)) lt!2610372)))

(declare-fun b!7342378 () Bool)

(assert (=> b!7342378 (= e!4396582 (exprs!8560 ct2!378))))

(assert (= (and d!2278999 c!1363827) b!7342378))

(assert (= (and d!2278999 (not c!1363827)) b!7342379))

(assert (= (and d!2278999 res!2966045) b!7342380))

(assert (= (and b!7342380 res!2966046) b!7342381))

(declare-fun m!8005746 () Bool)

(assert (=> b!7342379 m!8005746))

(declare-fun m!8005748 () Bool)

(assert (=> b!7342380 m!8005748))

(declare-fun m!8005750 () Bool)

(assert (=> b!7342380 m!8005750))

(declare-fun m!8005752 () Bool)

(assert (=> b!7342380 m!8005752))

(declare-fun m!8005754 () Bool)

(assert (=> d!2278999 m!8005754))

(declare-fun m!8005756 () Bool)

(assert (=> d!2278999 m!8005756))

(declare-fun m!8005758 () Bool)

(assert (=> d!2278999 m!8005758))

(assert (=> b!7342242 d!2278999))

(declare-fun d!2279009 () Bool)

(assert (=> d!2279009 (forall!17950 (++!16938 (exprs!8560 ct1!282) (exprs!8560 ct2!378)) lambda!455740)))

(declare-fun lt!2610375 () Unit!165193)

(declare-fun choose!57109 (List!71616 List!71616 Int) Unit!165193)

(assert (=> d!2279009 (= lt!2610375 (choose!57109 (exprs!8560 ct1!282) (exprs!8560 ct2!378) lambda!455740))))

(assert (=> d!2279009 (forall!17950 (exprs!8560 ct1!282) lambda!455740)))

(assert (=> d!2279009 (= (lemmaConcatPreservesForall!1795 (exprs!8560 ct1!282) (exprs!8560 ct2!378) lambda!455740) lt!2610375)))

(declare-fun bs!1918541 () Bool)

(assert (= bs!1918541 d!2279009))

(assert (=> bs!1918541 m!8005652))

(assert (=> bs!1918541 m!8005652))

(declare-fun m!8005760 () Bool)

(assert (=> bs!1918541 m!8005760))

(declare-fun m!8005762 () Bool)

(assert (=> bs!1918541 m!8005762))

(declare-fun m!8005764 () Bool)

(assert (=> bs!1918541 m!8005764))

(assert (=> b!7342242 d!2279009))

(declare-fun bs!1918542 () Bool)

(declare-fun d!2279011 () Bool)

(assert (= bs!1918542 (and d!2279011 b!7342242)))

(declare-fun lambda!455759 () Int)

(assert (=> bs!1918542 (= lambda!455759 lambda!455740)))

(assert (=> d!2279011 (set.member (Context!16121 (++!16938 (exprs!8560 cWitness!61) (exprs!8560 ct2!378))) (derivationStepZipperDown!2946 (regTwo!38753 r1!2370) (Context!16121 (++!16938 (exprs!8560 ct1!282) (exprs!8560 ct2!378))) c!10362))))

(declare-fun lt!2610384 () Unit!165193)

(assert (=> d!2279011 (= lt!2610384 (lemmaConcatPreservesForall!1795 (exprs!8560 ct1!282) (exprs!8560 ct2!378) lambda!455759))))

(declare-fun lt!2610383 () Unit!165193)

(assert (=> d!2279011 (= lt!2610383 (lemmaConcatPreservesForall!1795 (exprs!8560 cWitness!61) (exprs!8560 ct2!378) lambda!455759))))

(declare-fun lt!2610382 () Unit!165193)

(declare-fun choose!57110 (Regex!19120 Context!16120 Context!16120 Context!16120 C!38514) Unit!165193)

(assert (=> d!2279011 (= lt!2610382 (choose!57110 (regTwo!38753 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279011 (validRegex!9716 (regTwo!38753 r1!2370))))

(assert (=> d!2279011 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!53 (regTwo!38753 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610382)))

(declare-fun bs!1918543 () Bool)

(assert (= bs!1918543 d!2279011))

(assert (=> bs!1918543 m!8005662))

(declare-fun m!8005766 () Bool)

(assert (=> bs!1918543 m!8005766))

(assert (=> bs!1918543 m!8005652))

(declare-fun m!8005768 () Bool)

(assert (=> bs!1918543 m!8005768))

(declare-fun m!8005770 () Bool)

(assert (=> bs!1918543 m!8005770))

(declare-fun m!8005772 () Bool)

(assert (=> bs!1918543 m!8005772))

(declare-fun m!8005774 () Bool)

(assert (=> bs!1918543 m!8005774))

(declare-fun m!8005776 () Bool)

(assert (=> bs!1918543 m!8005776))

(assert (=> b!7342241 d!2279011))

(assert (=> b!7342241 d!2279009))

(declare-fun b!7342405 () Bool)

(declare-fun e!4396596 () List!71616)

(assert (=> b!7342405 (= e!4396596 (Cons!71492 (h!77940 (exprs!8560 cWitness!61)) (++!16938 (t!386011 (exprs!8560 cWitness!61)) (exprs!8560 ct2!378))))))

(declare-fun b!7342406 () Bool)

(declare-fun res!2966050 () Bool)

(declare-fun e!4396597 () Bool)

(assert (=> b!7342406 (=> (not res!2966050) (not e!4396597))))

(declare-fun lt!2610385 () List!71616)

(assert (=> b!7342406 (= res!2966050 (= (size!42014 lt!2610385) (+ (size!42014 (exprs!8560 cWitness!61)) (size!42014 (exprs!8560 ct2!378)))))))

(declare-fun b!7342407 () Bool)

(assert (=> b!7342407 (= e!4396597 (or (not (= (exprs!8560 ct2!378) Nil!71492)) (= lt!2610385 (exprs!8560 cWitness!61))))))

(declare-fun d!2279013 () Bool)

(assert (=> d!2279013 e!4396597))

(declare-fun res!2966049 () Bool)

(assert (=> d!2279013 (=> (not res!2966049) (not e!4396597))))

(assert (=> d!2279013 (= res!2966049 (= (content!15035 lt!2610385) (set.union (content!15035 (exprs!8560 cWitness!61)) (content!15035 (exprs!8560 ct2!378)))))))

(assert (=> d!2279013 (= lt!2610385 e!4396596)))

(declare-fun c!1363839 () Bool)

(assert (=> d!2279013 (= c!1363839 (is-Nil!71492 (exprs!8560 cWitness!61)))))

(assert (=> d!2279013 (= (++!16938 (exprs!8560 cWitness!61) (exprs!8560 ct2!378)) lt!2610385)))

(declare-fun b!7342404 () Bool)

(assert (=> b!7342404 (= e!4396596 (exprs!8560 ct2!378))))

(assert (= (and d!2279013 c!1363839) b!7342404))

(assert (= (and d!2279013 (not c!1363839)) b!7342405))

(assert (= (and d!2279013 res!2966049) b!7342406))

(assert (= (and b!7342406 res!2966050) b!7342407))

(declare-fun m!8005778 () Bool)

(assert (=> b!7342405 m!8005778))

(declare-fun m!8005780 () Bool)

(assert (=> b!7342406 m!8005780))

(declare-fun m!8005782 () Bool)

(assert (=> b!7342406 m!8005782))

(assert (=> b!7342406 m!8005752))

(declare-fun m!8005784 () Bool)

(assert (=> d!2279013 m!8005784))

(declare-fun m!8005786 () Bool)

(assert (=> d!2279013 m!8005786))

(assert (=> d!2279013 m!8005758))

(assert (=> b!7342241 d!2279013))

(declare-fun d!2279015 () Bool)

(assert (=> d!2279015 (forall!17950 (++!16938 (exprs!8560 cWitness!61) (exprs!8560 ct2!378)) lambda!455740)))

(declare-fun lt!2610386 () Unit!165193)

(assert (=> d!2279015 (= lt!2610386 (choose!57109 (exprs!8560 cWitness!61) (exprs!8560 ct2!378) lambda!455740))))

(assert (=> d!2279015 (forall!17950 (exprs!8560 cWitness!61) lambda!455740)))

(assert (=> d!2279015 (= (lemmaConcatPreservesForall!1795 (exprs!8560 cWitness!61) (exprs!8560 ct2!378) lambda!455740) lt!2610386)))

(declare-fun bs!1918544 () Bool)

(assert (= bs!1918544 d!2279015))

(assert (=> bs!1918544 m!8005662))

(assert (=> bs!1918544 m!8005662))

(declare-fun m!8005788 () Bool)

(assert (=> bs!1918544 m!8005788))

(declare-fun m!8005790 () Bool)

(assert (=> bs!1918544 m!8005790))

(assert (=> bs!1918544 m!8005664))

(assert (=> b!7342241 d!2279015))

(declare-fun d!2279017 () Bool)

(declare-fun res!2966055 () Bool)

(declare-fun e!4396602 () Bool)

(assert (=> d!2279017 (=> res!2966055 e!4396602)))

(assert (=> d!2279017 (= res!2966055 (is-Nil!71492 (exprs!8560 cWitness!61)))))

(assert (=> d!2279017 (= (forall!17950 (exprs!8560 cWitness!61) lambda!455740) e!4396602)))

(declare-fun b!7342412 () Bool)

(declare-fun e!4396603 () Bool)

(assert (=> b!7342412 (= e!4396602 e!4396603)))

(declare-fun res!2966056 () Bool)

(assert (=> b!7342412 (=> (not res!2966056) (not e!4396603))))

(declare-fun dynLambda!29457 (Int Regex!19120) Bool)

(assert (=> b!7342412 (= res!2966056 (dynLambda!29457 lambda!455740 (h!77940 (exprs!8560 cWitness!61))))))

(declare-fun b!7342413 () Bool)

(assert (=> b!7342413 (= e!4396603 (forall!17950 (t!386011 (exprs!8560 cWitness!61)) lambda!455740))))

(assert (= (and d!2279017 (not res!2966055)) b!7342412))

(assert (= (and b!7342412 res!2966056) b!7342413))

(declare-fun b_lambda!283907 () Bool)

(assert (=> (not b_lambda!283907) (not b!7342412)))

(declare-fun m!8005792 () Bool)

(assert (=> b!7342412 m!8005792))

(declare-fun m!8005794 () Bool)

(assert (=> b!7342413 m!8005794))

(assert (=> b!7342241 d!2279017))

(declare-fun b!7342414 () Bool)

(declare-fun e!4396605 () (Set Context!16120))

(declare-fun e!4396608 () (Set Context!16120))

(assert (=> b!7342414 (= e!4396605 e!4396608)))

(declare-fun c!1363843 () Bool)

(assert (=> b!7342414 (= c!1363843 (is-Union!19120 (regTwo!38753 r1!2370)))))

(declare-fun bm!670360 () Bool)

(declare-fun call!670370 () List!71616)

(declare-fun call!670367 () List!71616)

(assert (=> bm!670360 (= call!670370 call!670367)))

(declare-fun c!1363842 () Bool)

(declare-fun bm!670361 () Bool)

(declare-fun c!1363840 () Bool)

(assert (=> bm!670361 (= call!670367 ($colon$colon!3120 (exprs!8560 lt!2610345) (ite (or c!1363842 c!1363840) (regTwo!38752 (regTwo!38753 r1!2370)) (regTwo!38753 r1!2370))))))

(declare-fun b!7342415 () Bool)

(declare-fun e!4396606 () (Set Context!16120))

(assert (=> b!7342415 (= e!4396606 (as set.empty (Set Context!16120)))))

(declare-fun d!2279019 () Bool)

(declare-fun c!1363844 () Bool)

(assert (=> d!2279019 (= c!1363844 (and (is-ElementMatch!19120 (regTwo!38753 r1!2370)) (= (c!1363792 (regTwo!38753 r1!2370)) c!10362)))))

(assert (=> d!2279019 (= (derivationStepZipperDown!2946 (regTwo!38753 r1!2370) lt!2610345 c!10362) e!4396605)))

(declare-fun b!7342416 () Bool)

(declare-fun e!4396604 () (Set Context!16120))

(declare-fun call!670365 () (Set Context!16120))

(declare-fun call!670369 () (Set Context!16120))

(assert (=> b!7342416 (= e!4396604 (set.union call!670365 call!670369))))

(declare-fun b!7342417 () Bool)

(declare-fun call!670366 () (Set Context!16120))

(assert (=> b!7342417 (= e!4396606 call!670366)))

(declare-fun b!7342418 () Bool)

(declare-fun e!4396607 () (Set Context!16120))

(assert (=> b!7342418 (= e!4396607 call!670366)))

(declare-fun bm!670362 () Bool)

(assert (=> bm!670362 (= call!670365 (derivationStepZipperDown!2946 (ite c!1363843 (regTwo!38753 (regTwo!38753 r1!2370)) (regOne!38752 (regTwo!38753 r1!2370))) (ite c!1363843 lt!2610345 (Context!16121 call!670367)) c!10362))))

(declare-fun b!7342419 () Bool)

(declare-fun e!4396609 () Bool)

(assert (=> b!7342419 (= c!1363842 e!4396609)))

(declare-fun res!2966057 () Bool)

(assert (=> b!7342419 (=> (not res!2966057) (not e!4396609))))

(assert (=> b!7342419 (= res!2966057 (is-Concat!27965 (regTwo!38753 r1!2370)))))

(assert (=> b!7342419 (= e!4396608 e!4396604)))

(declare-fun call!670368 () (Set Context!16120))

(declare-fun bm!670363 () Bool)

(assert (=> bm!670363 (= call!670368 (derivationStepZipperDown!2946 (ite c!1363843 (regOne!38753 (regTwo!38753 r1!2370)) (ite c!1363842 (regTwo!38752 (regTwo!38753 r1!2370)) (ite c!1363840 (regOne!38752 (regTwo!38753 r1!2370)) (reg!19449 (regTwo!38753 r1!2370))))) (ite (or c!1363843 c!1363842) lt!2610345 (Context!16121 call!670370)) c!10362))))

(declare-fun bm!670364 () Bool)

(assert (=> bm!670364 (= call!670369 call!670368)))

(declare-fun b!7342420 () Bool)

(assert (=> b!7342420 (= e!4396608 (set.union call!670368 call!670365))))

(declare-fun bm!670365 () Bool)

(assert (=> bm!670365 (= call!670366 call!670369)))

(declare-fun b!7342421 () Bool)

(assert (=> b!7342421 (= e!4396604 e!4396607)))

(assert (=> b!7342421 (= c!1363840 (is-Concat!27965 (regTwo!38753 r1!2370)))))

(declare-fun b!7342422 () Bool)

(assert (=> b!7342422 (= e!4396605 (set.insert lt!2610345 (as set.empty (Set Context!16120))))))

(declare-fun b!7342423 () Bool)

(assert (=> b!7342423 (= e!4396609 (nullable!8213 (regOne!38752 (regTwo!38753 r1!2370))))))

(declare-fun b!7342424 () Bool)

(declare-fun c!1363841 () Bool)

(assert (=> b!7342424 (= c!1363841 (is-Star!19120 (regTwo!38753 r1!2370)))))

(assert (=> b!7342424 (= e!4396607 e!4396606)))

(assert (= (and d!2279019 c!1363844) b!7342422))

(assert (= (and d!2279019 (not c!1363844)) b!7342414))

(assert (= (and b!7342414 c!1363843) b!7342420))

(assert (= (and b!7342414 (not c!1363843)) b!7342419))

(assert (= (and b!7342419 res!2966057) b!7342423))

(assert (= (and b!7342419 c!1363842) b!7342416))

(assert (= (and b!7342419 (not c!1363842)) b!7342421))

(assert (= (and b!7342421 c!1363840) b!7342418))

(assert (= (and b!7342421 (not c!1363840)) b!7342424))

(assert (= (and b!7342424 c!1363841) b!7342417))

(assert (= (and b!7342424 (not c!1363841)) b!7342415))

(assert (= (or b!7342418 b!7342417) bm!670360))

(assert (= (or b!7342418 b!7342417) bm!670365))

(assert (= (or b!7342416 bm!670365) bm!670364))

(assert (= (or b!7342416 bm!670360) bm!670361))

(assert (= (or b!7342420 b!7342416) bm!670362))

(assert (= (or b!7342420 bm!670364) bm!670363))

(assert (=> b!7342422 m!8005724))

(declare-fun m!8005796 () Bool)

(assert (=> bm!670361 m!8005796))

(assert (=> b!7342423 m!8005710))

(declare-fun m!8005798 () Bool)

(assert (=> bm!670363 m!8005798))

(declare-fun m!8005800 () Bool)

(assert (=> bm!670362 m!8005800))

(assert (=> b!7342241 d!2279019))

(declare-fun b!7342443 () Bool)

(declare-fun e!4396625 () Bool)

(declare-fun call!670379 () Bool)

(assert (=> b!7342443 (= e!4396625 call!670379)))

(declare-fun b!7342444 () Bool)

(declare-fun e!4396626 () Bool)

(declare-fun e!4396627 () Bool)

(assert (=> b!7342444 (= e!4396626 e!4396627)))

(declare-fun c!1363850 () Bool)

(assert (=> b!7342444 (= c!1363850 (is-Union!19120 r1!2370))))

(declare-fun bm!670372 () Bool)

(declare-fun call!670378 () Bool)

(declare-fun call!670377 () Bool)

(assert (=> bm!670372 (= call!670378 call!670377)))

(declare-fun c!1363849 () Bool)

(declare-fun bm!670373 () Bool)

(assert (=> bm!670373 (= call!670377 (validRegex!9716 (ite c!1363849 (reg!19449 r1!2370) (ite c!1363850 (regOne!38753 r1!2370) (regTwo!38752 r1!2370)))))))

(declare-fun b!7342445 () Bool)

(declare-fun res!2966071 () Bool)

(declare-fun e!4396630 () Bool)

(assert (=> b!7342445 (=> res!2966071 e!4396630)))

(assert (=> b!7342445 (= res!2966071 (not (is-Concat!27965 r1!2370)))))

(assert (=> b!7342445 (= e!4396627 e!4396630)))

(declare-fun d!2279021 () Bool)

(declare-fun res!2966070 () Bool)

(declare-fun e!4396629 () Bool)

(assert (=> d!2279021 (=> res!2966070 e!4396629)))

(assert (=> d!2279021 (= res!2966070 (is-ElementMatch!19120 r1!2370))))

(assert (=> d!2279021 (= (validRegex!9716 r1!2370) e!4396629)))

(declare-fun b!7342446 () Bool)

(assert (=> b!7342446 (= e!4396629 e!4396626)))

(assert (=> b!7342446 (= c!1363849 (is-Star!19120 r1!2370))))

(declare-fun bm!670374 () Bool)

(assert (=> bm!670374 (= call!670379 (validRegex!9716 (ite c!1363850 (regTwo!38753 r1!2370) (regOne!38752 r1!2370))))))

(declare-fun b!7342447 () Bool)

(declare-fun res!2966069 () Bool)

(assert (=> b!7342447 (=> (not res!2966069) (not e!4396625))))

(assert (=> b!7342447 (= res!2966069 call!670378)))

(assert (=> b!7342447 (= e!4396627 e!4396625)))

(declare-fun b!7342448 () Bool)

(declare-fun e!4396628 () Bool)

(assert (=> b!7342448 (= e!4396628 call!670378)))

(declare-fun b!7342449 () Bool)

(assert (=> b!7342449 (= e!4396630 e!4396628)))

(declare-fun res!2966072 () Bool)

(assert (=> b!7342449 (=> (not res!2966072) (not e!4396628))))

(assert (=> b!7342449 (= res!2966072 call!670379)))

(declare-fun b!7342450 () Bool)

(declare-fun e!4396624 () Bool)

(assert (=> b!7342450 (= e!4396624 call!670377)))

(declare-fun b!7342451 () Bool)

(assert (=> b!7342451 (= e!4396626 e!4396624)))

(declare-fun res!2966068 () Bool)

(assert (=> b!7342451 (= res!2966068 (not (nullable!8213 (reg!19449 r1!2370))))))

(assert (=> b!7342451 (=> (not res!2966068) (not e!4396624))))

(assert (= (and d!2279021 (not res!2966070)) b!7342446))

(assert (= (and b!7342446 c!1363849) b!7342451))

(assert (= (and b!7342446 (not c!1363849)) b!7342444))

(assert (= (and b!7342451 res!2966068) b!7342450))

(assert (= (and b!7342444 c!1363850) b!7342447))

(assert (= (and b!7342444 (not c!1363850)) b!7342445))

(assert (= (and b!7342447 res!2966069) b!7342443))

(assert (= (and b!7342445 (not res!2966071)) b!7342449))

(assert (= (and b!7342449 res!2966072) b!7342448))

(assert (= (or b!7342447 b!7342448) bm!670372))

(assert (= (or b!7342443 b!7342449) bm!670374))

(assert (= (or b!7342450 bm!670372) bm!670373))

(declare-fun m!8005802 () Bool)

(assert (=> bm!670373 m!8005802))

(declare-fun m!8005804 () Bool)

(assert (=> bm!670374 m!8005804))

(declare-fun m!8005806 () Bool)

(assert (=> b!7342451 m!8005806))

(assert (=> start!717102 d!2279021))

(declare-fun bs!1918545 () Bool)

(declare-fun d!2279023 () Bool)

(assert (= bs!1918545 (and d!2279023 b!7342242)))

(declare-fun lambda!455762 () Int)

(assert (=> bs!1918545 (= lambda!455762 lambda!455740)))

(declare-fun bs!1918546 () Bool)

(assert (= bs!1918546 (and d!2279023 d!2279011)))

(assert (=> bs!1918546 (= lambda!455762 lambda!455759)))

(assert (=> d!2279023 (= (inv!91141 cWitness!61) (forall!17950 (exprs!8560 cWitness!61) lambda!455762))))

(declare-fun bs!1918547 () Bool)

(assert (= bs!1918547 d!2279023))

(declare-fun m!8005808 () Bool)

(assert (=> bs!1918547 m!8005808))

(assert (=> start!717102 d!2279023))

(declare-fun bs!1918548 () Bool)

(declare-fun d!2279025 () Bool)

(assert (= bs!1918548 (and d!2279025 b!7342242)))

(declare-fun lambda!455763 () Int)

(assert (=> bs!1918548 (= lambda!455763 lambda!455740)))

(declare-fun bs!1918549 () Bool)

(assert (= bs!1918549 (and d!2279025 d!2279011)))

(assert (=> bs!1918549 (= lambda!455763 lambda!455759)))

(declare-fun bs!1918550 () Bool)

(assert (= bs!1918550 (and d!2279025 d!2279023)))

(assert (=> bs!1918550 (= lambda!455763 lambda!455762)))

(assert (=> d!2279025 (= (inv!91141 ct1!282) (forall!17950 (exprs!8560 ct1!282) lambda!455763))))

(declare-fun bs!1918551 () Bool)

(assert (= bs!1918551 d!2279025))

(declare-fun m!8005816 () Bool)

(assert (=> bs!1918551 m!8005816))

(assert (=> start!717102 d!2279025))

(declare-fun bs!1918552 () Bool)

(declare-fun d!2279027 () Bool)

(assert (= bs!1918552 (and d!2279027 b!7342242)))

(declare-fun lambda!455764 () Int)

(assert (=> bs!1918552 (= lambda!455764 lambda!455740)))

(declare-fun bs!1918553 () Bool)

(assert (= bs!1918553 (and d!2279027 d!2279011)))

(assert (=> bs!1918553 (= lambda!455764 lambda!455759)))

(declare-fun bs!1918554 () Bool)

(assert (= bs!1918554 (and d!2279027 d!2279023)))

(assert (=> bs!1918554 (= lambda!455764 lambda!455762)))

(declare-fun bs!1918555 () Bool)

(assert (= bs!1918555 (and d!2279027 d!2279025)))

(assert (=> bs!1918555 (= lambda!455764 lambda!455763)))

(assert (=> d!2279027 (= (inv!91141 ct2!378) (forall!17950 (exprs!8560 ct2!378) lambda!455764))))

(declare-fun bs!1918556 () Bool)

(assert (= bs!1918556 d!2279027))

(declare-fun m!8005822 () Bool)

(assert (=> bs!1918556 m!8005822))

(assert (=> start!717102 d!2279027))

(declare-fun b!7342463 () Bool)

(declare-fun e!4396638 () (Set Context!16120))

(declare-fun e!4396641 () (Set Context!16120))

(assert (=> b!7342463 (= e!4396638 e!4396641)))

(declare-fun c!1363859 () Bool)

(assert (=> b!7342463 (= c!1363859 (is-Union!19120 r1!2370))))

(declare-fun bm!670381 () Bool)

(declare-fun call!670391 () List!71616)

(declare-fun call!670388 () List!71616)

(assert (=> bm!670381 (= call!670391 call!670388)))

(declare-fun bm!670382 () Bool)

(declare-fun c!1363858 () Bool)

(declare-fun c!1363856 () Bool)

(assert (=> bm!670382 (= call!670388 ($colon$colon!3120 (exprs!8560 ct1!282) (ite (or c!1363858 c!1363856) (regTwo!38752 r1!2370) r1!2370)))))

(declare-fun b!7342464 () Bool)

(declare-fun e!4396639 () (Set Context!16120))

(assert (=> b!7342464 (= e!4396639 (as set.empty (Set Context!16120)))))

(declare-fun d!2279031 () Bool)

(declare-fun c!1363860 () Bool)

(assert (=> d!2279031 (= c!1363860 (and (is-ElementMatch!19120 r1!2370) (= (c!1363792 r1!2370) c!10362)))))

(assert (=> d!2279031 (= (derivationStepZipperDown!2946 r1!2370 ct1!282 c!10362) e!4396638)))

(declare-fun b!7342465 () Bool)

(declare-fun e!4396637 () (Set Context!16120))

(declare-fun call!670386 () (Set Context!16120))

(declare-fun call!670390 () (Set Context!16120))

(assert (=> b!7342465 (= e!4396637 (set.union call!670386 call!670390))))

(declare-fun b!7342466 () Bool)

(declare-fun call!670387 () (Set Context!16120))

(assert (=> b!7342466 (= e!4396639 call!670387)))

(declare-fun b!7342467 () Bool)

(declare-fun e!4396640 () (Set Context!16120))

(assert (=> b!7342467 (= e!4396640 call!670387)))

(declare-fun bm!670383 () Bool)

(assert (=> bm!670383 (= call!670386 (derivationStepZipperDown!2946 (ite c!1363859 (regTwo!38753 r1!2370) (regOne!38752 r1!2370)) (ite c!1363859 ct1!282 (Context!16121 call!670388)) c!10362))))

(declare-fun b!7342468 () Bool)

(declare-fun e!4396642 () Bool)

(assert (=> b!7342468 (= c!1363858 e!4396642)))

(declare-fun res!2966074 () Bool)

(assert (=> b!7342468 (=> (not res!2966074) (not e!4396642))))

(assert (=> b!7342468 (= res!2966074 (is-Concat!27965 r1!2370))))

(assert (=> b!7342468 (= e!4396641 e!4396637)))

(declare-fun call!670389 () (Set Context!16120))

(declare-fun bm!670384 () Bool)

(assert (=> bm!670384 (= call!670389 (derivationStepZipperDown!2946 (ite c!1363859 (regOne!38753 r1!2370) (ite c!1363858 (regTwo!38752 r1!2370) (ite c!1363856 (regOne!38752 r1!2370) (reg!19449 r1!2370)))) (ite (or c!1363859 c!1363858) ct1!282 (Context!16121 call!670391)) c!10362))))

(declare-fun bm!670385 () Bool)

(assert (=> bm!670385 (= call!670390 call!670389)))

(declare-fun b!7342469 () Bool)

(assert (=> b!7342469 (= e!4396641 (set.union call!670389 call!670386))))

(declare-fun bm!670386 () Bool)

(assert (=> bm!670386 (= call!670387 call!670390)))

(declare-fun b!7342470 () Bool)

(assert (=> b!7342470 (= e!4396637 e!4396640)))

(assert (=> b!7342470 (= c!1363856 (is-Concat!27965 r1!2370))))

(declare-fun b!7342471 () Bool)

(assert (=> b!7342471 (= e!4396638 (set.insert ct1!282 (as set.empty (Set Context!16120))))))

(declare-fun b!7342472 () Bool)

(assert (=> b!7342472 (= e!4396642 (nullable!8213 (regOne!38752 r1!2370)))))

(declare-fun b!7342473 () Bool)

(declare-fun c!1363857 () Bool)

(assert (=> b!7342473 (= c!1363857 (is-Star!19120 r1!2370))))

(assert (=> b!7342473 (= e!4396640 e!4396639)))

(assert (= (and d!2279031 c!1363860) b!7342471))

(assert (= (and d!2279031 (not c!1363860)) b!7342463))

(assert (= (and b!7342463 c!1363859) b!7342469))

(assert (= (and b!7342463 (not c!1363859)) b!7342468))

(assert (= (and b!7342468 res!2966074) b!7342472))

(assert (= (and b!7342468 c!1363858) b!7342465))

(assert (= (and b!7342468 (not c!1363858)) b!7342470))

(assert (= (and b!7342470 c!1363856) b!7342467))

(assert (= (and b!7342470 (not c!1363856)) b!7342473))

(assert (= (and b!7342473 c!1363857) b!7342466))

(assert (= (and b!7342473 (not c!1363857)) b!7342464))

(assert (= (or b!7342467 b!7342466) bm!670381))

(assert (= (or b!7342467 b!7342466) bm!670386))

(assert (= (or b!7342465 bm!670386) bm!670385))

(assert (= (or b!7342465 bm!670381) bm!670382))

(assert (= (or b!7342469 b!7342465) bm!670383))

(assert (= (or b!7342469 bm!670385) bm!670384))

(assert (=> b!7342471 m!8005706))

(declare-fun m!8005824 () Bool)

(assert (=> bm!670382 m!8005824))

(assert (=> b!7342472 m!8005728))

(declare-fun m!8005826 () Bool)

(assert (=> bm!670384 m!8005826))

(declare-fun m!8005828 () Bool)

(assert (=> bm!670383 m!8005828))

(assert (=> b!7342244 d!2279031))

(declare-fun b!7342478 () Bool)

(declare-fun e!4396645 () Bool)

(declare-fun tp!2084986 () Bool)

(declare-fun tp!2084987 () Bool)

(assert (=> b!7342478 (= e!4396645 (and tp!2084986 tp!2084987))))

(assert (=> b!7342247 (= tp!2084953 e!4396645)))

(assert (= (and b!7342247 (is-Cons!71492 (exprs!8560 cWitness!61))) b!7342478))

(declare-fun b!7342479 () Bool)

(declare-fun e!4396646 () Bool)

(declare-fun tp!2084988 () Bool)

(declare-fun tp!2084989 () Bool)

(assert (=> b!7342479 (= e!4396646 (and tp!2084988 tp!2084989))))

(assert (=> b!7342246 (= tp!2084951 e!4396646)))

(assert (= (and b!7342246 (is-Cons!71492 (exprs!8560 ct2!378))) b!7342479))

(declare-fun b!7342480 () Bool)

(declare-fun e!4396647 () Bool)

(declare-fun tp!2084990 () Bool)

(declare-fun tp!2084991 () Bool)

(assert (=> b!7342480 (= e!4396647 (and tp!2084990 tp!2084991))))

(assert (=> b!7342240 (= tp!2084952 e!4396647)))

(assert (= (and b!7342240 (is-Cons!71492 (exprs!8560 ct1!282))) b!7342480))

(declare-fun b!7342491 () Bool)

(declare-fun e!4396650 () Bool)

(assert (=> b!7342491 (= e!4396650 tp_is_empty!48485)))

(declare-fun b!7342494 () Bool)

(declare-fun tp!2085004 () Bool)

(declare-fun tp!2085006 () Bool)

(assert (=> b!7342494 (= e!4396650 (and tp!2085004 tp!2085006))))

(declare-fun b!7342492 () Bool)

(declare-fun tp!2085005 () Bool)

(declare-fun tp!2085003 () Bool)

(assert (=> b!7342492 (= e!4396650 (and tp!2085005 tp!2085003))))

(assert (=> b!7342250 (= tp!2084957 e!4396650)))

(declare-fun b!7342493 () Bool)

(declare-fun tp!2085002 () Bool)

(assert (=> b!7342493 (= e!4396650 tp!2085002)))

(assert (= (and b!7342250 (is-ElementMatch!19120 (regOne!38752 r1!2370))) b!7342491))

(assert (= (and b!7342250 (is-Concat!27965 (regOne!38752 r1!2370))) b!7342492))

(assert (= (and b!7342250 (is-Star!19120 (regOne!38752 r1!2370))) b!7342493))

(assert (= (and b!7342250 (is-Union!19120 (regOne!38752 r1!2370))) b!7342494))

(declare-fun b!7342495 () Bool)

(declare-fun e!4396651 () Bool)

(assert (=> b!7342495 (= e!4396651 tp_is_empty!48485)))

(declare-fun b!7342498 () Bool)

(declare-fun tp!2085009 () Bool)

(declare-fun tp!2085011 () Bool)

(assert (=> b!7342498 (= e!4396651 (and tp!2085009 tp!2085011))))

(declare-fun b!7342496 () Bool)

(declare-fun tp!2085010 () Bool)

(declare-fun tp!2085008 () Bool)

(assert (=> b!7342496 (= e!4396651 (and tp!2085010 tp!2085008))))

(assert (=> b!7342250 (= tp!2084955 e!4396651)))

(declare-fun b!7342497 () Bool)

(declare-fun tp!2085007 () Bool)

(assert (=> b!7342497 (= e!4396651 tp!2085007)))

(assert (= (and b!7342250 (is-ElementMatch!19120 (regTwo!38752 r1!2370))) b!7342495))

(assert (= (and b!7342250 (is-Concat!27965 (regTwo!38752 r1!2370))) b!7342496))

(assert (= (and b!7342250 (is-Star!19120 (regTwo!38752 r1!2370))) b!7342497))

(assert (= (and b!7342250 (is-Union!19120 (regTwo!38752 r1!2370))) b!7342498))

(declare-fun b!7342499 () Bool)

(declare-fun e!4396652 () Bool)

(assert (=> b!7342499 (= e!4396652 tp_is_empty!48485)))

(declare-fun b!7342502 () Bool)

(declare-fun tp!2085014 () Bool)

(declare-fun tp!2085016 () Bool)

(assert (=> b!7342502 (= e!4396652 (and tp!2085014 tp!2085016))))

(declare-fun b!7342500 () Bool)

(declare-fun tp!2085015 () Bool)

(declare-fun tp!2085013 () Bool)

(assert (=> b!7342500 (= e!4396652 (and tp!2085015 tp!2085013))))

(assert (=> b!7342245 (= tp!2084954 e!4396652)))

(declare-fun b!7342501 () Bool)

(declare-fun tp!2085012 () Bool)

(assert (=> b!7342501 (= e!4396652 tp!2085012)))

(assert (= (and b!7342245 (is-ElementMatch!19120 (reg!19449 r1!2370))) b!7342499))

(assert (= (and b!7342245 (is-Concat!27965 (reg!19449 r1!2370))) b!7342500))

(assert (= (and b!7342245 (is-Star!19120 (reg!19449 r1!2370))) b!7342501))

(assert (= (and b!7342245 (is-Union!19120 (reg!19449 r1!2370))) b!7342502))

(declare-fun b!7342503 () Bool)

(declare-fun e!4396653 () Bool)

(assert (=> b!7342503 (= e!4396653 tp_is_empty!48485)))

(declare-fun b!7342506 () Bool)

(declare-fun tp!2085019 () Bool)

(declare-fun tp!2085021 () Bool)

(assert (=> b!7342506 (= e!4396653 (and tp!2085019 tp!2085021))))

(declare-fun b!7342504 () Bool)

(declare-fun tp!2085020 () Bool)

(declare-fun tp!2085018 () Bool)

(assert (=> b!7342504 (= e!4396653 (and tp!2085020 tp!2085018))))

(assert (=> b!7342249 (= tp!2084950 e!4396653)))

(declare-fun b!7342505 () Bool)

(declare-fun tp!2085017 () Bool)

(assert (=> b!7342505 (= e!4396653 tp!2085017)))

(assert (= (and b!7342249 (is-ElementMatch!19120 (regOne!38753 r1!2370))) b!7342503))

(assert (= (and b!7342249 (is-Concat!27965 (regOne!38753 r1!2370))) b!7342504))

(assert (= (and b!7342249 (is-Star!19120 (regOne!38753 r1!2370))) b!7342505))

(assert (= (and b!7342249 (is-Union!19120 (regOne!38753 r1!2370))) b!7342506))

(declare-fun b!7342507 () Bool)

(declare-fun e!4396654 () Bool)

(assert (=> b!7342507 (= e!4396654 tp_is_empty!48485)))

(declare-fun b!7342510 () Bool)

(declare-fun tp!2085024 () Bool)

(declare-fun tp!2085026 () Bool)

(assert (=> b!7342510 (= e!4396654 (and tp!2085024 tp!2085026))))

(declare-fun b!7342508 () Bool)

(declare-fun tp!2085025 () Bool)

(declare-fun tp!2085023 () Bool)

(assert (=> b!7342508 (= e!4396654 (and tp!2085025 tp!2085023))))

(assert (=> b!7342249 (= tp!2084956 e!4396654)))

(declare-fun b!7342509 () Bool)

(declare-fun tp!2085022 () Bool)

(assert (=> b!7342509 (= e!4396654 tp!2085022)))

(assert (= (and b!7342249 (is-ElementMatch!19120 (regTwo!38753 r1!2370))) b!7342507))

(assert (= (and b!7342249 (is-Concat!27965 (regTwo!38753 r1!2370))) b!7342508))

(assert (= (and b!7342249 (is-Star!19120 (regTwo!38753 r1!2370))) b!7342509))

(assert (= (and b!7342249 (is-Union!19120 (regTwo!38753 r1!2370))) b!7342510))

(declare-fun b_lambda!283909 () Bool)

(assert (= b_lambda!283907 (or b!7342242 b_lambda!283909)))

(declare-fun bs!1918557 () Bool)

(declare-fun d!2279033 () Bool)

(assert (= bs!1918557 (and d!2279033 b!7342242)))

(assert (=> bs!1918557 (= (dynLambda!29457 lambda!455740 (h!77940 (exprs!8560 cWitness!61))) (validRegex!9716 (h!77940 (exprs!8560 cWitness!61))))))

(declare-fun m!8005830 () Bool)

(assert (=> bs!1918557 m!8005830))

(assert (=> b!7342412 d!2279033))

(push 1)

(assert (not bm!670328))

(assert (not d!2279013))

(assert (not b!7342502))

(assert (not bm!670329))

(assert (not b!7342501))

(assert tp_is_empty!48485)

(assert (not d!2279011))

(assert (not b!7342359))

(assert (not b_lambda!283909))

(assert (not b!7342509))

(assert (not b!7342498))

(assert (not b!7342451))

(assert (not b!7342380))

(assert (not b!7342405))

(assert (not d!2279027))

(assert (not bm!670334))

(assert (not b!7342492))

(assert (not bm!670384))

(assert (not d!2279009))

(assert (not b!7342506))

(assert (not bm!670362))

(assert (not bm!670373))

(assert (not d!2279023))

(assert (not b!7342480))

(assert (not bm!670383))

(assert (not b!7342472))

(assert (not b!7342406))

(assert (not bm!670336))

(assert (not b!7342348))

(assert (not bm!670382))

(assert (not bm!670335))

(assert (not b!7342379))

(assert (not bm!670374))

(assert (not b!7342478))

(assert (not d!2279015))

(assert (not bm!670341))

(assert (not bm!670342))

(assert (not d!2279025))

(assert (not bm!670340))

(assert (not b!7342508))

(assert (not bs!1918557))

(assert (not bm!670361))

(assert (not b!7342497))

(assert (not b!7342504))

(assert (not bm!670363))

(assert (not b!7342494))

(assert (not b!7342413))

(assert (not bm!670330))

(assert (not b!7342493))

(assert (not b!7342500))

(assert (not b!7342496))

(assert (not b!7342423))

(assert (not b!7342505))

(assert (not b!7342510))

(assert (not b!7342479))

(assert (not d!2278999))

(assert (not b!7342337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

