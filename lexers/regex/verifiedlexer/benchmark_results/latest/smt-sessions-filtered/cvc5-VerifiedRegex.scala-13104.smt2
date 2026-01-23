; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716798 () Bool)

(assert start!716798)

(declare-fun b!7338346 () Bool)

(declare-fun e!4394244 () Bool)

(declare-fun tp_is_empty!48437 () Bool)

(assert (=> b!7338346 (= e!4394244 tp_is_empty!48437)))

(declare-fun b!7338347 () Bool)

(declare-fun e!4394242 () Bool)

(declare-fun e!4394247 () Bool)

(assert (=> b!7338347 (= e!4394242 e!4394247)))

(declare-fun res!2964922 () Bool)

(assert (=> b!7338347 (=> (not res!2964922) (not e!4394247))))

(declare-datatypes ((C!38466 0))(
  ( (C!38467 (val!29593 Int)) )
))
(declare-datatypes ((Regex!19096 0))(
  ( (ElementMatch!19096 (c!1362972 C!38466)) (Concat!27941 (regOne!38704 Regex!19096) (regTwo!38704 Regex!19096)) (EmptyExpr!19096) (Star!19096 (reg!19425 Regex!19096)) (EmptyLang!19096) (Union!19096 (regOne!38705 Regex!19096) (regTwo!38705 Regex!19096)) )
))
(declare-fun r1!2370 () Regex!19096)

(declare-fun c!10362 () C!38466)

(assert (=> b!7338347 (= res!2964922 (and (is-ElementMatch!19096 r1!2370) (= c!10362 (c!1362972 r1!2370))))))

(declare-datatypes ((List!71592 0))(
  ( (Nil!71468) (Cons!71468 (h!77916 Regex!19096) (t!385987 List!71592)) )
))
(declare-datatypes ((Context!16072 0))(
  ( (Context!16073 (exprs!8536 List!71592)) )
))
(declare-fun lt!2609579 () Context!16072)

(declare-fun lt!2609578 () (Set Context!16072))

(declare-fun derivationStepZipperDown!2922 (Regex!19096 Context!16072 C!38466) (Set Context!16072))

(assert (=> b!7338347 (= lt!2609578 (derivationStepZipperDown!2922 r1!2370 lt!2609579 c!10362))))

(declare-fun ct1!282 () Context!16072)

(declare-fun ct2!378 () Context!16072)

(declare-fun ++!16914 (List!71592 List!71592) List!71592)

(assert (=> b!7338347 (= lt!2609579 (Context!16073 (++!16914 (exprs!8536 ct1!282) (exprs!8536 ct2!378))))))

(declare-fun lambda!455382 () Int)

(declare-datatypes ((Unit!165145 0))(
  ( (Unit!165146) )
))
(declare-fun lt!2609575 () Unit!165145)

(declare-fun lemmaConcatPreservesForall!1771 (List!71592 List!71592 Int) Unit!165145)

(assert (=> b!7338347 (= lt!2609575 (lemmaConcatPreservesForall!1771 (exprs!8536 ct1!282) (exprs!8536 ct2!378) lambda!455382))))

(declare-fun b!7338348 () Bool)

(declare-fun tp!2083480 () Bool)

(declare-fun tp!2083477 () Bool)

(assert (=> b!7338348 (= e!4394244 (and tp!2083480 tp!2083477))))

(declare-fun b!7338349 () Bool)

(declare-fun e!4394239 () Bool)

(declare-fun tp!2083476 () Bool)

(assert (=> b!7338349 (= e!4394239 tp!2083476)))

(declare-fun b!7338350 () Bool)

(declare-fun e!4394246 () Bool)

(declare-fun e!4394240 () Bool)

(assert (=> b!7338350 (= e!4394246 e!4394240)))

(declare-fun res!2964923 () Bool)

(assert (=> b!7338350 (=> (not res!2964923) (not e!4394240))))

(assert (=> b!7338350 (= res!2964923 (= lt!2609578 (set.insert lt!2609579 (as set.empty (Set Context!16072)))))))

(declare-fun lt!2609574 () Unit!165145)

(assert (=> b!7338350 (= lt!2609574 (lemmaConcatPreservesForall!1771 (exprs!8536 ct1!282) (exprs!8536 ct2!378) lambda!455382))))

(declare-fun res!2964921 () Bool)

(declare-fun e!4394248 () Bool)

(assert (=> start!716798 (=> (not res!2964921) (not e!4394248))))

(declare-fun validRegex!9692 (Regex!19096) Bool)

(assert (=> start!716798 (= res!2964921 (validRegex!9692 r1!2370))))

(assert (=> start!716798 e!4394248))

(assert (=> start!716798 tp_is_empty!48437))

(declare-fun cWitness!61 () Context!16072)

(declare-fun inv!91081 (Context!16072) Bool)

(assert (=> start!716798 (and (inv!91081 cWitness!61) e!4394239)))

(declare-fun e!4394243 () Bool)

(assert (=> start!716798 (and (inv!91081 ct1!282) e!4394243)))

(assert (=> start!716798 e!4394244))

(declare-fun e!4394241 () Bool)

(assert (=> start!716798 (and (inv!91081 ct2!378) e!4394241)))

(declare-fun b!7338351 () Bool)

(declare-fun e!4394245 () Bool)

(assert (=> b!7338351 (= e!4394240 e!4394245)))

(declare-fun res!2964924 () Bool)

(assert (=> b!7338351 (=> (not res!2964924) (not e!4394245))))

(assert (=> b!7338351 (= res!2964924 (set.member (Context!16073 (++!16914 (exprs!8536 cWitness!61) (exprs!8536 ct2!378))) lt!2609578))))

(declare-fun lt!2609577 () Unit!165145)

(assert (=> b!7338351 (= lt!2609577 (lemmaConcatPreservesForall!1771 (exprs!8536 cWitness!61) (exprs!8536 ct2!378) lambda!455382))))

(declare-fun b!7338352 () Bool)

(declare-fun tp!2083474 () Bool)

(assert (=> b!7338352 (= e!4394244 tp!2083474)))

(declare-fun b!7338353 () Bool)

(declare-fun tp!2083478 () Bool)

(assert (=> b!7338353 (= e!4394241 tp!2083478)))

(declare-fun b!7338354 () Bool)

(declare-fun tp!2083475 () Bool)

(assert (=> b!7338354 (= e!4394243 tp!2083475)))

(declare-fun b!7338355 () Bool)

(assert (=> b!7338355 (= e!4394248 e!4394242)))

(declare-fun res!2964920 () Bool)

(assert (=> b!7338355 (=> (not res!2964920) (not e!4394242))))

(declare-fun lt!2609581 () (Set Context!16072))

(assert (=> b!7338355 (= res!2964920 (set.member cWitness!61 lt!2609581))))

(assert (=> b!7338355 (= lt!2609581 (derivationStepZipperDown!2922 r1!2370 ct1!282 c!10362))))

(declare-fun b!7338356 () Bool)

(declare-fun forall!17930 (List!71592 Int) Bool)

(assert (=> b!7338356 (= e!4394245 (not (forall!17930 (exprs!8536 ct1!282) lambda!455382)))))

(declare-fun lt!2609580 () Unit!165145)

(assert (=> b!7338356 (= lt!2609580 (lemmaConcatPreservesForall!1771 (exprs!8536 cWitness!61) (exprs!8536 ct2!378) lambda!455382))))

(declare-fun b!7338357 () Bool)

(declare-fun tp!2083481 () Bool)

(declare-fun tp!2083479 () Bool)

(assert (=> b!7338357 (= e!4394244 (and tp!2083481 tp!2083479))))

(declare-fun b!7338358 () Bool)

(assert (=> b!7338358 (= e!4394247 e!4394246)))

(declare-fun res!2964919 () Bool)

(assert (=> b!7338358 (=> (not res!2964919) (not e!4394246))))

(declare-fun lt!2609576 () (Set Context!16072))

(assert (=> b!7338358 (= res!2964919 (and (= lt!2609581 lt!2609576) (set.member cWitness!61 lt!2609576) (= cWitness!61 ct1!282)))))

(assert (=> b!7338358 (= lt!2609576 (set.insert ct1!282 (as set.empty (Set Context!16072))))))

(assert (= (and start!716798 res!2964921) b!7338355))

(assert (= (and b!7338355 res!2964920) b!7338347))

(assert (= (and b!7338347 res!2964922) b!7338358))

(assert (= (and b!7338358 res!2964919) b!7338350))

(assert (= (and b!7338350 res!2964923) b!7338351))

(assert (= (and b!7338351 res!2964924) b!7338356))

(assert (= start!716798 b!7338349))

(assert (= start!716798 b!7338354))

(assert (= (and start!716798 (is-ElementMatch!19096 r1!2370)) b!7338346))

(assert (= (and start!716798 (is-Concat!27941 r1!2370)) b!7338357))

(assert (= (and start!716798 (is-Star!19096 r1!2370)) b!7338352))

(assert (= (and start!716798 (is-Union!19096 r1!2370)) b!7338348))

(assert (= start!716798 b!7338353))

(declare-fun m!8003090 () Bool)

(assert (=> b!7338355 m!8003090))

(declare-fun m!8003092 () Bool)

(assert (=> b!7338355 m!8003092))

(declare-fun m!8003094 () Bool)

(assert (=> b!7338350 m!8003094))

(declare-fun m!8003096 () Bool)

(assert (=> b!7338350 m!8003096))

(declare-fun m!8003098 () Bool)

(assert (=> b!7338351 m!8003098))

(declare-fun m!8003100 () Bool)

(assert (=> b!7338351 m!8003100))

(declare-fun m!8003102 () Bool)

(assert (=> b!7338351 m!8003102))

(declare-fun m!8003104 () Bool)

(assert (=> start!716798 m!8003104))

(declare-fun m!8003106 () Bool)

(assert (=> start!716798 m!8003106))

(declare-fun m!8003108 () Bool)

(assert (=> start!716798 m!8003108))

(declare-fun m!8003110 () Bool)

(assert (=> start!716798 m!8003110))

(declare-fun m!8003112 () Bool)

(assert (=> b!7338356 m!8003112))

(assert (=> b!7338356 m!8003102))

(declare-fun m!8003114 () Bool)

(assert (=> b!7338347 m!8003114))

(declare-fun m!8003116 () Bool)

(assert (=> b!7338347 m!8003116))

(assert (=> b!7338347 m!8003096))

(declare-fun m!8003118 () Bool)

(assert (=> b!7338358 m!8003118))

(declare-fun m!8003120 () Bool)

(assert (=> b!7338358 m!8003120))

(push 1)

(assert (not b!7338354))

(assert (not b!7338349))

(assert (not b!7338353))

(assert (not b!7338348))

(assert (not b!7338347))

(assert (not b!7338357))

(assert (not start!716798))

(assert (not b!7338356))

(assert (not b!7338355))

(assert (not b!7338350))

(assert (not b!7338352))

(assert tp_is_empty!48437)

(assert (not b!7338351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7338420 () Bool)

(declare-fun e!4394293 () (Set Context!16072))

(assert (=> b!7338420 (= e!4394293 (set.insert ct1!282 (as set.empty (Set Context!16072))))))

(declare-fun call!669442 () List!71592)

(declare-fun c!1362985 () Bool)

(declare-fun c!1362987 () Bool)

(declare-fun bm!669433 () Bool)

(declare-fun call!669440 () (Set Context!16072))

(declare-fun c!1362988 () Bool)

(assert (=> bm!669433 (= call!669440 (derivationStepZipperDown!2922 (ite c!1362988 (regOne!38705 r1!2370) (ite c!1362985 (regTwo!38704 r1!2370) (ite c!1362987 (regOne!38704 r1!2370) (reg!19425 r1!2370)))) (ite (or c!1362988 c!1362985) ct1!282 (Context!16073 call!669442)) c!10362))))

(declare-fun b!7338421 () Bool)

(declare-fun e!4394296 () Bool)

(assert (=> b!7338421 (= c!1362985 e!4394296)))

(declare-fun res!2964945 () Bool)

(assert (=> b!7338421 (=> (not res!2964945) (not e!4394296))))

(assert (=> b!7338421 (= res!2964945 (is-Concat!27941 r1!2370))))

(declare-fun e!4394294 () (Set Context!16072))

(declare-fun e!4394295 () (Set Context!16072))

(assert (=> b!7338421 (= e!4394294 e!4394295)))

(declare-fun bm!669434 () Bool)

(declare-fun call!669439 () (Set Context!16072))

(declare-fun call!669441 () (Set Context!16072))

(assert (=> bm!669434 (= call!669439 call!669441)))

(declare-fun call!669443 () List!71592)

(declare-fun bm!669435 () Bool)

(declare-fun call!669438 () (Set Context!16072))

(assert (=> bm!669435 (= call!669438 (derivationStepZipperDown!2922 (ite c!1362988 (regTwo!38705 r1!2370) (regOne!38704 r1!2370)) (ite c!1362988 ct1!282 (Context!16073 call!669443)) c!10362))))

(declare-fun d!2278395 () Bool)

(declare-fun c!1362984 () Bool)

(assert (=> d!2278395 (= c!1362984 (and (is-ElementMatch!19096 r1!2370) (= (c!1362972 r1!2370) c!10362)))))

(assert (=> d!2278395 (= (derivationStepZipperDown!2922 r1!2370 ct1!282 c!10362) e!4394293)))

(declare-fun bm!669436 () Bool)

(declare-fun $colon$colon!3100 (List!71592 Regex!19096) List!71592)

(assert (=> bm!669436 (= call!669443 ($colon$colon!3100 (exprs!8536 ct1!282) (ite (or c!1362985 c!1362987) (regTwo!38704 r1!2370) r1!2370)))))

(declare-fun bm!669437 () Bool)

(assert (=> bm!669437 (= call!669442 call!669443)))

(declare-fun b!7338422 () Bool)

(declare-fun e!4394292 () (Set Context!16072))

(assert (=> b!7338422 (= e!4394295 e!4394292)))

(assert (=> b!7338422 (= c!1362987 (is-Concat!27941 r1!2370))))

(declare-fun b!7338423 () Bool)

(declare-fun nullable!8193 (Regex!19096) Bool)

(assert (=> b!7338423 (= e!4394296 (nullable!8193 (regOne!38704 r1!2370)))))

(declare-fun b!7338424 () Bool)

(declare-fun e!4394291 () (Set Context!16072))

(assert (=> b!7338424 (= e!4394291 call!669439)))

(declare-fun b!7338425 () Bool)

(declare-fun c!1362986 () Bool)

(assert (=> b!7338425 (= c!1362986 (is-Star!19096 r1!2370))))

(assert (=> b!7338425 (= e!4394292 e!4394291)))

(declare-fun b!7338426 () Bool)

(assert (=> b!7338426 (= e!4394295 (set.union call!669438 call!669441))))

(declare-fun bm!669438 () Bool)

(assert (=> bm!669438 (= call!669441 call!669440)))

(declare-fun b!7338427 () Bool)

(assert (=> b!7338427 (= e!4394291 (as set.empty (Set Context!16072)))))

(declare-fun b!7338428 () Bool)

(assert (=> b!7338428 (= e!4394292 call!669439)))

(declare-fun b!7338429 () Bool)

(assert (=> b!7338429 (= e!4394293 e!4394294)))

(assert (=> b!7338429 (= c!1362988 (is-Union!19096 r1!2370))))

(declare-fun b!7338430 () Bool)

(assert (=> b!7338430 (= e!4394294 (set.union call!669440 call!669438))))

(assert (= (and d!2278395 c!1362984) b!7338420))

(assert (= (and d!2278395 (not c!1362984)) b!7338429))

(assert (= (and b!7338429 c!1362988) b!7338430))

(assert (= (and b!7338429 (not c!1362988)) b!7338421))

(assert (= (and b!7338421 res!2964945) b!7338423))

(assert (= (and b!7338421 c!1362985) b!7338426))

(assert (= (and b!7338421 (not c!1362985)) b!7338422))

(assert (= (and b!7338422 c!1362987) b!7338428))

(assert (= (and b!7338422 (not c!1362987)) b!7338425))

(assert (= (and b!7338425 c!1362986) b!7338424))

(assert (= (and b!7338425 (not c!1362986)) b!7338427))

(assert (= (or b!7338428 b!7338424) bm!669437))

(assert (= (or b!7338428 b!7338424) bm!669434))

(assert (= (or b!7338426 bm!669434) bm!669438))

(assert (= (or b!7338426 bm!669437) bm!669436))

(assert (= (or b!7338430 b!7338426) bm!669435))

(assert (= (or b!7338430 bm!669438) bm!669433))

(declare-fun m!8003154 () Bool)

(assert (=> bm!669436 m!8003154))

(declare-fun m!8003156 () Bool)

(assert (=> bm!669433 m!8003156))

(declare-fun m!8003158 () Bool)

(assert (=> b!7338423 m!8003158))

(assert (=> b!7338420 m!8003120))

(declare-fun m!8003160 () Bool)

(assert (=> bm!669435 m!8003160))

(assert (=> b!7338355 d!2278395))

(declare-fun d!2278399 () Bool)

(assert (=> d!2278399 (forall!17930 (++!16914 (exprs!8536 ct1!282) (exprs!8536 ct2!378)) lambda!455382)))

(declare-fun lt!2609608 () Unit!165145)

(declare-fun choose!57077 (List!71592 List!71592 Int) Unit!165145)

(assert (=> d!2278399 (= lt!2609608 (choose!57077 (exprs!8536 ct1!282) (exprs!8536 ct2!378) lambda!455382))))

(assert (=> d!2278399 (forall!17930 (exprs!8536 ct1!282) lambda!455382)))

(assert (=> d!2278399 (= (lemmaConcatPreservesForall!1771 (exprs!8536 ct1!282) (exprs!8536 ct2!378) lambda!455382) lt!2609608)))

(declare-fun bs!1918208 () Bool)

(assert (= bs!1918208 d!2278399))

(assert (=> bs!1918208 m!8003116))

(assert (=> bs!1918208 m!8003116))

(declare-fun m!8003162 () Bool)

(assert (=> bs!1918208 m!8003162))

(declare-fun m!8003164 () Bool)

(assert (=> bs!1918208 m!8003164))

(assert (=> bs!1918208 m!8003112))

(assert (=> b!7338350 d!2278399))

(declare-fun d!2278401 () Bool)

(declare-fun res!2964952 () Bool)

(declare-fun e!4394313 () Bool)

(assert (=> d!2278401 (=> res!2964952 e!4394313)))

(assert (=> d!2278401 (= res!2964952 (is-Nil!71468 (exprs!8536 ct1!282)))))

(assert (=> d!2278401 (= (forall!17930 (exprs!8536 ct1!282) lambda!455382) e!4394313)))

(declare-fun b!7338457 () Bool)

(declare-fun e!4394314 () Bool)

(assert (=> b!7338457 (= e!4394313 e!4394314)))

(declare-fun res!2964953 () Bool)

(assert (=> b!7338457 (=> (not res!2964953) (not e!4394314))))

(declare-fun dynLambda!29443 (Int Regex!19096) Bool)

(assert (=> b!7338457 (= res!2964953 (dynLambda!29443 lambda!455382 (h!77916 (exprs!8536 ct1!282))))))

(declare-fun b!7338458 () Bool)

(assert (=> b!7338458 (= e!4394314 (forall!17930 (t!385987 (exprs!8536 ct1!282)) lambda!455382))))

(assert (= (and d!2278401 (not res!2964952)) b!7338457))

(assert (= (and b!7338457 res!2964953) b!7338458))

(declare-fun b_lambda!283811 () Bool)

(assert (=> (not b_lambda!283811) (not b!7338457)))

(declare-fun m!8003166 () Bool)

(assert (=> b!7338457 m!8003166))

(declare-fun m!8003168 () Bool)

(assert (=> b!7338458 m!8003168))

(assert (=> b!7338356 d!2278401))

(declare-fun d!2278403 () Bool)

(assert (=> d!2278403 (forall!17930 (++!16914 (exprs!8536 cWitness!61) (exprs!8536 ct2!378)) lambda!455382)))

(declare-fun lt!2609609 () Unit!165145)

(assert (=> d!2278403 (= lt!2609609 (choose!57077 (exprs!8536 cWitness!61) (exprs!8536 ct2!378) lambda!455382))))

(assert (=> d!2278403 (forall!17930 (exprs!8536 cWitness!61) lambda!455382)))

(assert (=> d!2278403 (= (lemmaConcatPreservesForall!1771 (exprs!8536 cWitness!61) (exprs!8536 ct2!378) lambda!455382) lt!2609609)))

(declare-fun bs!1918209 () Bool)

(assert (= bs!1918209 d!2278403))

(assert (=> bs!1918209 m!8003098))

(assert (=> bs!1918209 m!8003098))

(declare-fun m!8003170 () Bool)

(assert (=> bs!1918209 m!8003170))

(declare-fun m!8003172 () Bool)

(assert (=> bs!1918209 m!8003172))

(declare-fun m!8003174 () Bool)

(assert (=> bs!1918209 m!8003174))

(assert (=> b!7338356 d!2278403))

(declare-fun b!7338467 () Bool)

(declare-fun e!4394320 () List!71592)

(assert (=> b!7338467 (= e!4394320 (exprs!8536 ct2!378))))

(declare-fun d!2278405 () Bool)

(declare-fun e!4394319 () Bool)

(assert (=> d!2278405 e!4394319))

(declare-fun res!2964958 () Bool)

(assert (=> d!2278405 (=> (not res!2964958) (not e!4394319))))

(declare-fun lt!2609612 () List!71592)

(declare-fun content!15015 (List!71592) (Set Regex!19096))

(assert (=> d!2278405 (= res!2964958 (= (content!15015 lt!2609612) (set.union (content!15015 (exprs!8536 cWitness!61)) (content!15015 (exprs!8536 ct2!378)))))))

(assert (=> d!2278405 (= lt!2609612 e!4394320)))

(declare-fun c!1363001 () Bool)

(assert (=> d!2278405 (= c!1363001 (is-Nil!71468 (exprs!8536 cWitness!61)))))

(assert (=> d!2278405 (= (++!16914 (exprs!8536 cWitness!61) (exprs!8536 ct2!378)) lt!2609612)))

(declare-fun b!7338468 () Bool)

(assert (=> b!7338468 (= e!4394320 (Cons!71468 (h!77916 (exprs!8536 cWitness!61)) (++!16914 (t!385987 (exprs!8536 cWitness!61)) (exprs!8536 ct2!378))))))

(declare-fun b!7338469 () Bool)

(declare-fun res!2964959 () Bool)

(assert (=> b!7338469 (=> (not res!2964959) (not e!4394319))))

(declare-fun size!41994 (List!71592) Int)

(assert (=> b!7338469 (= res!2964959 (= (size!41994 lt!2609612) (+ (size!41994 (exprs!8536 cWitness!61)) (size!41994 (exprs!8536 ct2!378)))))))

(declare-fun b!7338470 () Bool)

(assert (=> b!7338470 (= e!4394319 (or (not (= (exprs!8536 ct2!378) Nil!71468)) (= lt!2609612 (exprs!8536 cWitness!61))))))

(assert (= (and d!2278405 c!1363001) b!7338467))

(assert (= (and d!2278405 (not c!1363001)) b!7338468))

(assert (= (and d!2278405 res!2964958) b!7338469))

(assert (= (and b!7338469 res!2964959) b!7338470))

(declare-fun m!8003176 () Bool)

(assert (=> d!2278405 m!8003176))

(declare-fun m!8003178 () Bool)

(assert (=> d!2278405 m!8003178))

(declare-fun m!8003180 () Bool)

(assert (=> d!2278405 m!8003180))

(declare-fun m!8003182 () Bool)

(assert (=> b!7338468 m!8003182))

(declare-fun m!8003184 () Bool)

(assert (=> b!7338469 m!8003184))

(declare-fun m!8003186 () Bool)

(assert (=> b!7338469 m!8003186))

(declare-fun m!8003188 () Bool)

(assert (=> b!7338469 m!8003188))

(assert (=> b!7338351 d!2278405))

(assert (=> b!7338351 d!2278403))

(declare-fun bm!669457 () Bool)

(declare-fun call!669462 () Bool)

(declare-fun c!1363007 () Bool)

(assert (=> bm!669457 (= call!669462 (validRegex!9692 (ite c!1363007 (regOne!38705 r1!2370) (regTwo!38704 r1!2370))))))

(declare-fun bm!669458 () Bool)

(declare-fun c!1363006 () Bool)

(declare-fun call!669464 () Bool)

(assert (=> bm!669458 (= call!669464 (validRegex!9692 (ite c!1363006 (reg!19425 r1!2370) (ite c!1363007 (regTwo!38705 r1!2370) (regOne!38704 r1!2370)))))))

(declare-fun b!7338489 () Bool)

(declare-fun e!4394339 () Bool)

(declare-fun e!4394340 () Bool)

(assert (=> b!7338489 (= e!4394339 e!4394340)))

(declare-fun res!2964973 () Bool)

(assert (=> b!7338489 (= res!2964973 (not (nullable!8193 (reg!19425 r1!2370))))))

(assert (=> b!7338489 (=> (not res!2964973) (not e!4394340))))

(declare-fun b!7338490 () Bool)

(declare-fun res!2964974 () Bool)

(declare-fun e!4394336 () Bool)

(assert (=> b!7338490 (=> res!2964974 e!4394336)))

(assert (=> b!7338490 (= res!2964974 (not (is-Concat!27941 r1!2370)))))

(declare-fun e!4394335 () Bool)

(assert (=> b!7338490 (= e!4394335 e!4394336)))

(declare-fun b!7338491 () Bool)

(declare-fun e!4394341 () Bool)

(assert (=> b!7338491 (= e!4394336 e!4394341)))

(declare-fun res!2964971 () Bool)

(assert (=> b!7338491 (=> (not res!2964971) (not e!4394341))))

(declare-fun call!669463 () Bool)

(assert (=> b!7338491 (= res!2964971 call!669463)))

(declare-fun b!7338492 () Bool)

(declare-fun e!4394338 () Bool)

(assert (=> b!7338492 (= e!4394338 e!4394339)))

(assert (=> b!7338492 (= c!1363006 (is-Star!19096 r1!2370))))

(declare-fun b!7338493 () Bool)

(assert (=> b!7338493 (= e!4394339 e!4394335)))

(assert (=> b!7338493 (= c!1363007 (is-Union!19096 r1!2370))))

(declare-fun b!7338494 () Bool)

(declare-fun e!4394337 () Bool)

(assert (=> b!7338494 (= e!4394337 call!669463)))

(declare-fun bm!669459 () Bool)

(assert (=> bm!669459 (= call!669463 call!669464)))

(declare-fun b!7338496 () Bool)

(assert (=> b!7338496 (= e!4394341 call!669462)))

(declare-fun b!7338497 () Bool)

(assert (=> b!7338497 (= e!4394340 call!669464)))

(declare-fun d!2278407 () Bool)

(declare-fun res!2964970 () Bool)

(assert (=> d!2278407 (=> res!2964970 e!4394338)))

(assert (=> d!2278407 (= res!2964970 (is-ElementMatch!19096 r1!2370))))

(assert (=> d!2278407 (= (validRegex!9692 r1!2370) e!4394338)))

(declare-fun b!7338495 () Bool)

(declare-fun res!2964972 () Bool)

(assert (=> b!7338495 (=> (not res!2964972) (not e!4394337))))

(assert (=> b!7338495 (= res!2964972 call!669462)))

(assert (=> b!7338495 (= e!4394335 e!4394337)))

(assert (= (and d!2278407 (not res!2964970)) b!7338492))

(assert (= (and b!7338492 c!1363006) b!7338489))

(assert (= (and b!7338492 (not c!1363006)) b!7338493))

(assert (= (and b!7338489 res!2964973) b!7338497))

(assert (= (and b!7338493 c!1363007) b!7338495))

(assert (= (and b!7338493 (not c!1363007)) b!7338490))

(assert (= (and b!7338495 res!2964972) b!7338494))

(assert (= (and b!7338490 (not res!2964974)) b!7338491))

(assert (= (and b!7338491 res!2964971) b!7338496))

(assert (= (or b!7338495 b!7338496) bm!669457))

(assert (= (or b!7338494 b!7338491) bm!669459))

(assert (= (or b!7338497 bm!669459) bm!669458))

(declare-fun m!8003190 () Bool)

(assert (=> bm!669457 m!8003190))

(declare-fun m!8003192 () Bool)

(assert (=> bm!669458 m!8003192))

(declare-fun m!8003194 () Bool)

(assert (=> b!7338489 m!8003194))

(assert (=> start!716798 d!2278407))

(declare-fun bs!1918210 () Bool)

(declare-fun d!2278409 () Bool)

(assert (= bs!1918210 (and d!2278409 b!7338347)))

(declare-fun lambda!455396 () Int)

(assert (=> bs!1918210 (= lambda!455396 lambda!455382)))

(assert (=> d!2278409 (= (inv!91081 cWitness!61) (forall!17930 (exprs!8536 cWitness!61) lambda!455396))))

(declare-fun bs!1918211 () Bool)

(assert (= bs!1918211 d!2278409))

(declare-fun m!8003196 () Bool)

(assert (=> bs!1918211 m!8003196))

(assert (=> start!716798 d!2278409))

(declare-fun bs!1918212 () Bool)

(declare-fun d!2278411 () Bool)

(assert (= bs!1918212 (and d!2278411 b!7338347)))

(declare-fun lambda!455397 () Int)

(assert (=> bs!1918212 (= lambda!455397 lambda!455382)))

(declare-fun bs!1918213 () Bool)

(assert (= bs!1918213 (and d!2278411 d!2278409)))

(assert (=> bs!1918213 (= lambda!455397 lambda!455396)))

(assert (=> d!2278411 (= (inv!91081 ct1!282) (forall!17930 (exprs!8536 ct1!282) lambda!455397))))

(declare-fun bs!1918214 () Bool)

(assert (= bs!1918214 d!2278411))

(declare-fun m!8003198 () Bool)

(assert (=> bs!1918214 m!8003198))

(assert (=> start!716798 d!2278411))

(declare-fun bs!1918215 () Bool)

(declare-fun d!2278413 () Bool)

(assert (= bs!1918215 (and d!2278413 b!7338347)))

(declare-fun lambda!455398 () Int)

(assert (=> bs!1918215 (= lambda!455398 lambda!455382)))

(declare-fun bs!1918216 () Bool)

(assert (= bs!1918216 (and d!2278413 d!2278409)))

(assert (=> bs!1918216 (= lambda!455398 lambda!455396)))

(declare-fun bs!1918217 () Bool)

(assert (= bs!1918217 (and d!2278413 d!2278411)))

(assert (=> bs!1918217 (= lambda!455398 lambda!455397)))

(assert (=> d!2278413 (= (inv!91081 ct2!378) (forall!17930 (exprs!8536 ct2!378) lambda!455398))))

(declare-fun bs!1918218 () Bool)

(assert (= bs!1918218 d!2278413))

(declare-fun m!8003200 () Bool)

(assert (=> bs!1918218 m!8003200))

(assert (=> start!716798 d!2278413))

(declare-fun b!7338509 () Bool)

(declare-fun e!4394350 () (Set Context!16072))

(assert (=> b!7338509 (= e!4394350 (set.insert lt!2609579 (as set.empty (Set Context!16072))))))

(declare-fun call!669473 () (Set Context!16072))

(declare-fun c!1363017 () Bool)

(declare-fun bm!669466 () Bool)

(declare-fun call!669475 () List!71592)

(declare-fun c!1363016 () Bool)

(declare-fun c!1363014 () Bool)

(assert (=> bm!669466 (= call!669473 (derivationStepZipperDown!2922 (ite c!1363017 (regOne!38705 r1!2370) (ite c!1363014 (regTwo!38704 r1!2370) (ite c!1363016 (regOne!38704 r1!2370) (reg!19425 r1!2370)))) (ite (or c!1363017 c!1363014) lt!2609579 (Context!16073 call!669475)) c!10362))))

(declare-fun b!7338510 () Bool)

(declare-fun e!4394353 () Bool)

(assert (=> b!7338510 (= c!1363014 e!4394353)))

(declare-fun res!2964976 () Bool)

(assert (=> b!7338510 (=> (not res!2964976) (not e!4394353))))

(assert (=> b!7338510 (= res!2964976 (is-Concat!27941 r1!2370))))

(declare-fun e!4394351 () (Set Context!16072))

(declare-fun e!4394352 () (Set Context!16072))

(assert (=> b!7338510 (= e!4394351 e!4394352)))

(declare-fun bm!669467 () Bool)

(declare-fun call!669472 () (Set Context!16072))

(declare-fun call!669474 () (Set Context!16072))

(assert (=> bm!669467 (= call!669472 call!669474)))

(declare-fun call!669471 () (Set Context!16072))

(declare-fun bm!669468 () Bool)

(declare-fun call!669476 () List!71592)

(assert (=> bm!669468 (= call!669471 (derivationStepZipperDown!2922 (ite c!1363017 (regTwo!38705 r1!2370) (regOne!38704 r1!2370)) (ite c!1363017 lt!2609579 (Context!16073 call!669476)) c!10362))))

(declare-fun d!2278415 () Bool)

(declare-fun c!1363013 () Bool)

(assert (=> d!2278415 (= c!1363013 (and (is-ElementMatch!19096 r1!2370) (= (c!1362972 r1!2370) c!10362)))))

(assert (=> d!2278415 (= (derivationStepZipperDown!2922 r1!2370 lt!2609579 c!10362) e!4394350)))

(declare-fun bm!669469 () Bool)

(assert (=> bm!669469 (= call!669476 ($colon$colon!3100 (exprs!8536 lt!2609579) (ite (or c!1363014 c!1363016) (regTwo!38704 r1!2370) r1!2370)))))

(declare-fun bm!669470 () Bool)

(assert (=> bm!669470 (= call!669475 call!669476)))

(declare-fun b!7338511 () Bool)

(declare-fun e!4394349 () (Set Context!16072))

(assert (=> b!7338511 (= e!4394352 e!4394349)))

(assert (=> b!7338511 (= c!1363016 (is-Concat!27941 r1!2370))))

(declare-fun b!7338512 () Bool)

(assert (=> b!7338512 (= e!4394353 (nullable!8193 (regOne!38704 r1!2370)))))

(declare-fun b!7338513 () Bool)

(declare-fun e!4394348 () (Set Context!16072))

(assert (=> b!7338513 (= e!4394348 call!669472)))

(declare-fun b!7338514 () Bool)

(declare-fun c!1363015 () Bool)

(assert (=> b!7338514 (= c!1363015 (is-Star!19096 r1!2370))))

(assert (=> b!7338514 (= e!4394349 e!4394348)))

(declare-fun b!7338515 () Bool)

(assert (=> b!7338515 (= e!4394352 (set.union call!669471 call!669474))))

(declare-fun bm!669471 () Bool)

(assert (=> bm!669471 (= call!669474 call!669473)))

(declare-fun b!7338516 () Bool)

(assert (=> b!7338516 (= e!4394348 (as set.empty (Set Context!16072)))))

(declare-fun b!7338517 () Bool)

(assert (=> b!7338517 (= e!4394349 call!669472)))

(declare-fun b!7338518 () Bool)

(assert (=> b!7338518 (= e!4394350 e!4394351)))

(assert (=> b!7338518 (= c!1363017 (is-Union!19096 r1!2370))))

(declare-fun b!7338519 () Bool)

(assert (=> b!7338519 (= e!4394351 (set.union call!669473 call!669471))))

(assert (= (and d!2278415 c!1363013) b!7338509))

(assert (= (and d!2278415 (not c!1363013)) b!7338518))

(assert (= (and b!7338518 c!1363017) b!7338519))

(assert (= (and b!7338518 (not c!1363017)) b!7338510))

(assert (= (and b!7338510 res!2964976) b!7338512))

(assert (= (and b!7338510 c!1363014) b!7338515))

(assert (= (and b!7338510 (not c!1363014)) b!7338511))

(assert (= (and b!7338511 c!1363016) b!7338517))

(assert (= (and b!7338511 (not c!1363016)) b!7338514))

(assert (= (and b!7338514 c!1363015) b!7338513))

(assert (= (and b!7338514 (not c!1363015)) b!7338516))

(assert (= (or b!7338517 b!7338513) bm!669470))

(assert (= (or b!7338517 b!7338513) bm!669467))

(assert (= (or b!7338515 bm!669467) bm!669471))

(assert (= (or b!7338515 bm!669470) bm!669469))

(assert (= (or b!7338519 b!7338515) bm!669468))

(assert (= (or b!7338519 bm!669471) bm!669466))

(declare-fun m!8003202 () Bool)

(assert (=> bm!669469 m!8003202))

(declare-fun m!8003204 () Bool)

(assert (=> bm!669466 m!8003204))

(assert (=> b!7338512 m!8003158))

(assert (=> b!7338509 m!8003094))

(declare-fun m!8003208 () Bool)

(assert (=> bm!669468 m!8003208))

(assert (=> b!7338347 d!2278415))

(declare-fun b!7338520 () Bool)

(declare-fun e!4394355 () List!71592)

(assert (=> b!7338520 (= e!4394355 (exprs!8536 ct2!378))))

(declare-fun d!2278417 () Bool)

(declare-fun e!4394354 () Bool)

(assert (=> d!2278417 e!4394354))

(declare-fun res!2964977 () Bool)

(assert (=> d!2278417 (=> (not res!2964977) (not e!4394354))))

(declare-fun lt!2609613 () List!71592)

(assert (=> d!2278417 (= res!2964977 (= (content!15015 lt!2609613) (set.union (content!15015 (exprs!8536 ct1!282)) (content!15015 (exprs!8536 ct2!378)))))))

(assert (=> d!2278417 (= lt!2609613 e!4394355)))

(declare-fun c!1363018 () Bool)

(assert (=> d!2278417 (= c!1363018 (is-Nil!71468 (exprs!8536 ct1!282)))))

(assert (=> d!2278417 (= (++!16914 (exprs!8536 ct1!282) (exprs!8536 ct2!378)) lt!2609613)))

(declare-fun b!7338521 () Bool)

(assert (=> b!7338521 (= e!4394355 (Cons!71468 (h!77916 (exprs!8536 ct1!282)) (++!16914 (t!385987 (exprs!8536 ct1!282)) (exprs!8536 ct2!378))))))

(declare-fun b!7338522 () Bool)

(declare-fun res!2964978 () Bool)

(assert (=> b!7338522 (=> (not res!2964978) (not e!4394354))))

(assert (=> b!7338522 (= res!2964978 (= (size!41994 lt!2609613) (+ (size!41994 (exprs!8536 ct1!282)) (size!41994 (exprs!8536 ct2!378)))))))

(declare-fun b!7338523 () Bool)

(assert (=> b!7338523 (= e!4394354 (or (not (= (exprs!8536 ct2!378) Nil!71468)) (= lt!2609613 (exprs!8536 ct1!282))))))

(assert (= (and d!2278417 c!1363018) b!7338520))

(assert (= (and d!2278417 (not c!1363018)) b!7338521))

(assert (= (and d!2278417 res!2964977) b!7338522))

(assert (= (and b!7338522 res!2964978) b!7338523))

(declare-fun m!8003214 () Bool)

(assert (=> d!2278417 m!8003214))

(declare-fun m!8003216 () Bool)

(assert (=> d!2278417 m!8003216))

(assert (=> d!2278417 m!8003180))

(declare-fun m!8003220 () Bool)

(assert (=> b!7338521 m!8003220))

(declare-fun m!8003222 () Bool)

(assert (=> b!7338522 m!8003222))

(declare-fun m!8003224 () Bool)

(assert (=> b!7338522 m!8003224))

(assert (=> b!7338522 m!8003188))

(assert (=> b!7338347 d!2278417))

(assert (=> b!7338347 d!2278399))

(declare-fun b!7338528 () Bool)

(declare-fun e!4394358 () Bool)

(declare-fun tp!2083510 () Bool)

(declare-fun tp!2083511 () Bool)

(assert (=> b!7338528 (= e!4394358 (and tp!2083510 tp!2083511))))

(assert (=> b!7338349 (= tp!2083476 e!4394358)))

(assert (= (and b!7338349 (is-Cons!71468 (exprs!8536 cWitness!61))) b!7338528))

(declare-fun b!7338542 () Bool)

(declare-fun e!4394361 () Bool)

(declare-fun tp!2083523 () Bool)

(declare-fun tp!2083525 () Bool)

(assert (=> b!7338542 (= e!4394361 (and tp!2083523 tp!2083525))))

(declare-fun b!7338539 () Bool)

(assert (=> b!7338539 (= e!4394361 tp_is_empty!48437)))

(declare-fun b!7338541 () Bool)

(declare-fun tp!2083522 () Bool)

(assert (=> b!7338541 (= e!4394361 tp!2083522)))

(declare-fun b!7338540 () Bool)

(declare-fun tp!2083524 () Bool)

(declare-fun tp!2083526 () Bool)

(assert (=> b!7338540 (= e!4394361 (and tp!2083524 tp!2083526))))

(assert (=> b!7338357 (= tp!2083481 e!4394361)))

(assert (= (and b!7338357 (is-ElementMatch!19096 (regOne!38704 r1!2370))) b!7338539))

(assert (= (and b!7338357 (is-Concat!27941 (regOne!38704 r1!2370))) b!7338540))

(assert (= (and b!7338357 (is-Star!19096 (regOne!38704 r1!2370))) b!7338541))

(assert (= (and b!7338357 (is-Union!19096 (regOne!38704 r1!2370))) b!7338542))

(declare-fun b!7338546 () Bool)

(declare-fun e!4394362 () Bool)

(declare-fun tp!2083528 () Bool)

(declare-fun tp!2083530 () Bool)

(assert (=> b!7338546 (= e!4394362 (and tp!2083528 tp!2083530))))

(declare-fun b!7338543 () Bool)

(assert (=> b!7338543 (= e!4394362 tp_is_empty!48437)))

(declare-fun b!7338545 () Bool)

(declare-fun tp!2083527 () Bool)

(assert (=> b!7338545 (= e!4394362 tp!2083527)))

(declare-fun b!7338544 () Bool)

(declare-fun tp!2083529 () Bool)

(declare-fun tp!2083531 () Bool)

(assert (=> b!7338544 (= e!4394362 (and tp!2083529 tp!2083531))))

(assert (=> b!7338357 (= tp!2083479 e!4394362)))

(assert (= (and b!7338357 (is-ElementMatch!19096 (regTwo!38704 r1!2370))) b!7338543))

(assert (= (and b!7338357 (is-Concat!27941 (regTwo!38704 r1!2370))) b!7338544))

(assert (= (and b!7338357 (is-Star!19096 (regTwo!38704 r1!2370))) b!7338545))

(assert (= (and b!7338357 (is-Union!19096 (regTwo!38704 r1!2370))) b!7338546))

(declare-fun b!7338550 () Bool)

(declare-fun e!4394363 () Bool)

(declare-fun tp!2083533 () Bool)

(declare-fun tp!2083535 () Bool)

(assert (=> b!7338550 (= e!4394363 (and tp!2083533 tp!2083535))))

(declare-fun b!7338547 () Bool)

(assert (=> b!7338547 (= e!4394363 tp_is_empty!48437)))

(declare-fun b!7338549 () Bool)

(declare-fun tp!2083532 () Bool)

(assert (=> b!7338549 (= e!4394363 tp!2083532)))

(declare-fun b!7338548 () Bool)

(declare-fun tp!2083534 () Bool)

(declare-fun tp!2083536 () Bool)

(assert (=> b!7338548 (= e!4394363 (and tp!2083534 tp!2083536))))

(assert (=> b!7338352 (= tp!2083474 e!4394363)))

(assert (= (and b!7338352 (is-ElementMatch!19096 (reg!19425 r1!2370))) b!7338547))

(assert (= (and b!7338352 (is-Concat!27941 (reg!19425 r1!2370))) b!7338548))

(assert (= (and b!7338352 (is-Star!19096 (reg!19425 r1!2370))) b!7338549))

(assert (= (and b!7338352 (is-Union!19096 (reg!19425 r1!2370))) b!7338550))

(declare-fun b!7338551 () Bool)

(declare-fun e!4394364 () Bool)

(declare-fun tp!2083537 () Bool)

(declare-fun tp!2083538 () Bool)

(assert (=> b!7338551 (= e!4394364 (and tp!2083537 tp!2083538))))

(assert (=> b!7338353 (= tp!2083478 e!4394364)))

(assert (= (and b!7338353 (is-Cons!71468 (exprs!8536 ct2!378))) b!7338551))

(declare-fun b!7338555 () Bool)

(declare-fun e!4394365 () Bool)

(declare-fun tp!2083540 () Bool)

(declare-fun tp!2083542 () Bool)

(assert (=> b!7338555 (= e!4394365 (and tp!2083540 tp!2083542))))

(declare-fun b!7338552 () Bool)

(assert (=> b!7338552 (= e!4394365 tp_is_empty!48437)))

(declare-fun b!7338554 () Bool)

(declare-fun tp!2083539 () Bool)

(assert (=> b!7338554 (= e!4394365 tp!2083539)))

(declare-fun b!7338553 () Bool)

(declare-fun tp!2083541 () Bool)

(declare-fun tp!2083543 () Bool)

(assert (=> b!7338553 (= e!4394365 (and tp!2083541 tp!2083543))))

(assert (=> b!7338348 (= tp!2083480 e!4394365)))

(assert (= (and b!7338348 (is-ElementMatch!19096 (regOne!38705 r1!2370))) b!7338552))

(assert (= (and b!7338348 (is-Concat!27941 (regOne!38705 r1!2370))) b!7338553))

(assert (= (and b!7338348 (is-Star!19096 (regOne!38705 r1!2370))) b!7338554))

(assert (= (and b!7338348 (is-Union!19096 (regOne!38705 r1!2370))) b!7338555))

(declare-fun b!7338559 () Bool)

(declare-fun e!4394366 () Bool)

(declare-fun tp!2083545 () Bool)

(declare-fun tp!2083547 () Bool)

(assert (=> b!7338559 (= e!4394366 (and tp!2083545 tp!2083547))))

(declare-fun b!7338556 () Bool)

(assert (=> b!7338556 (= e!4394366 tp_is_empty!48437)))

(declare-fun b!7338558 () Bool)

(declare-fun tp!2083544 () Bool)

(assert (=> b!7338558 (= e!4394366 tp!2083544)))

(declare-fun b!7338557 () Bool)

(declare-fun tp!2083546 () Bool)

(declare-fun tp!2083548 () Bool)

(assert (=> b!7338557 (= e!4394366 (and tp!2083546 tp!2083548))))

(assert (=> b!7338348 (= tp!2083477 e!4394366)))

(assert (= (and b!7338348 (is-ElementMatch!19096 (regTwo!38705 r1!2370))) b!7338556))

(assert (= (and b!7338348 (is-Concat!27941 (regTwo!38705 r1!2370))) b!7338557))

(assert (= (and b!7338348 (is-Star!19096 (regTwo!38705 r1!2370))) b!7338558))

(assert (= (and b!7338348 (is-Union!19096 (regTwo!38705 r1!2370))) b!7338559))

(declare-fun b!7338560 () Bool)

(declare-fun e!4394367 () Bool)

(declare-fun tp!2083549 () Bool)

(declare-fun tp!2083550 () Bool)

(assert (=> b!7338560 (= e!4394367 (and tp!2083549 tp!2083550))))

(assert (=> b!7338354 (= tp!2083475 e!4394367)))

(assert (= (and b!7338354 (is-Cons!71468 (exprs!8536 ct1!282))) b!7338560))

(declare-fun b_lambda!283813 () Bool)

(assert (= b_lambda!283811 (or b!7338347 b_lambda!283813)))

(declare-fun bs!1918219 () Bool)

(declare-fun d!2278421 () Bool)

(assert (= bs!1918219 (and d!2278421 b!7338347)))

(assert (=> bs!1918219 (= (dynLambda!29443 lambda!455382 (h!77916 (exprs!8536 ct1!282))) (validRegex!9692 (h!77916 (exprs!8536 ct1!282))))))

(declare-fun m!8003226 () Bool)

(assert (=> bs!1918219 m!8003226))

(assert (=> b!7338457 d!2278421))

(push 1)

(assert (not bm!669458))

(assert (not b!7338548))

(assert (not d!2278405))

(assert (not b!7338423))

(assert (not b!7338458))

(assert (not b!7338541))

(assert (not b!7338557))

(assert (not bs!1918219))

(assert (not d!2278409))

(assert (not b!7338560))

(assert (not bm!669468))

(assert (not d!2278403))

(assert (not b!7338468))

(assert (not b!7338469))

(assert (not bm!669469))

(assert (not b!7338550))

(assert tp_is_empty!48437)

(assert (not d!2278399))

(assert (not b!7338489))

(assert (not b!7338512))

(assert (not bm!669466))

(assert (not b!7338559))

(assert (not bm!669433))

(assert (not d!2278417))

(assert (not bm!669457))

(assert (not b!7338545))

(assert (not b!7338540))

(assert (not b!7338521))

(assert (not b!7338558))

(assert (not d!2278411))

(assert (not bm!669435))

(assert (not b!7338554))

(assert (not b!7338522))

(assert (not b!7338549))

(assert (not b!7338542))

(assert (not b!7338528))

(assert (not bm!669436))

(assert (not b!7338546))

(assert (not d!2278413))

(assert (not b_lambda!283813))

(assert (not b!7338551))

(assert (not b!7338553))

(assert (not b!7338544))

(assert (not b!7338555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

