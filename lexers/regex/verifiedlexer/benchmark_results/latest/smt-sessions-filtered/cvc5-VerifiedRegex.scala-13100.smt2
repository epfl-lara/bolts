; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716686 () Bool)

(assert start!716686)

(declare-fun b!7337000 () Bool)

(declare-fun e!4393435 () Bool)

(declare-fun e!4393429 () Bool)

(assert (=> b!7337000 (= e!4393435 e!4393429)))

(declare-fun res!2964510 () Bool)

(assert (=> b!7337000 (=> (not res!2964510) (not e!4393429))))

(declare-datatypes ((C!38450 0))(
  ( (C!38451 (val!29585 Int)) )
))
(declare-datatypes ((Regex!19088 0))(
  ( (ElementMatch!19088 (c!1362728 C!38450)) (Concat!27933 (regOne!38688 Regex!19088) (regTwo!38688 Regex!19088)) (EmptyExpr!19088) (Star!19088 (reg!19417 Regex!19088)) (EmptyLang!19088) (Union!19088 (regOne!38689 Regex!19088) (regTwo!38689 Regex!19088)) )
))
(declare-fun r1!2370 () Regex!19088)

(declare-fun c!10362 () C!38450)

(assert (=> b!7337000 (= res!2964510 (and (is-ElementMatch!19088 r1!2370) (= c!10362 (c!1362728 r1!2370))))))

(declare-datatypes ((List!71584 0))(
  ( (Nil!71460) (Cons!71460 (h!77908 Regex!19088) (t!385979 List!71584)) )
))
(declare-datatypes ((Context!16056 0))(
  ( (Context!16057 (exprs!8528 List!71584)) )
))
(declare-fun lt!2609361 () (Set Context!16056))

(declare-fun lt!2609363 () Context!16056)

(declare-fun derivationStepZipperDown!2914 (Regex!19088 Context!16056 C!38450) (Set Context!16056))

(assert (=> b!7337000 (= lt!2609361 (derivationStepZipperDown!2914 r1!2370 lt!2609363 c!10362))))

(declare-fun ct1!282 () Context!16056)

(declare-fun ct2!378 () Context!16056)

(declare-fun ++!16906 (List!71584 List!71584) List!71584)

(assert (=> b!7337000 (= lt!2609363 (Context!16057 (++!16906 (exprs!8528 ct1!282) (exprs!8528 ct2!378))))))

(declare-datatypes ((Unit!165129 0))(
  ( (Unit!165130) )
))
(declare-fun lt!2609359 () Unit!165129)

(declare-fun lambda!455274 () Int)

(declare-fun lemmaConcatPreservesForall!1763 (List!71584 List!71584 Int) Unit!165129)

(assert (=> b!7337000 (= lt!2609359 (lemmaConcatPreservesForall!1763 (exprs!8528 ct1!282) (exprs!8528 ct2!378) lambda!455274))))

(declare-fun res!2964509 () Bool)

(declare-fun e!4393434 () Bool)

(assert (=> start!716686 (=> (not res!2964509) (not e!4393434))))

(declare-fun validRegex!9684 (Regex!19088) Bool)

(assert (=> start!716686 (= res!2964509 (validRegex!9684 r1!2370))))

(assert (=> start!716686 e!4393434))

(declare-fun tp_is_empty!48421 () Bool)

(assert (=> start!716686 tp_is_empty!48421))

(declare-fun cWitness!61 () Context!16056)

(declare-fun e!4393431 () Bool)

(declare-fun inv!91061 (Context!16056) Bool)

(assert (=> start!716686 (and (inv!91061 cWitness!61) e!4393431)))

(declare-fun e!4393436 () Bool)

(assert (=> start!716686 (and (inv!91061 ct1!282) e!4393436)))

(declare-fun e!4393433 () Bool)

(assert (=> start!716686 e!4393433))

(declare-fun e!4393432 () Bool)

(assert (=> start!716686 (and (inv!91061 ct2!378) e!4393432)))

(declare-fun b!7337001 () Bool)

(assert (=> b!7337001 (= e!4393433 tp_is_empty!48421)))

(declare-fun b!7337002 () Bool)

(declare-fun e!4393430 () Bool)

(declare-fun e!4393437 () Bool)

(assert (=> b!7337002 (= e!4393430 e!4393437)))

(declare-fun res!2964511 () Bool)

(assert (=> b!7337002 (=> (not res!2964511) (not e!4393437))))

(assert (=> b!7337002 (= res!2964511 (= lt!2609361 (set.insert lt!2609363 (as set.empty (Set Context!16056)))))))

(declare-fun lt!2609362 () Unit!165129)

(assert (=> b!7337002 (= lt!2609362 (lemmaConcatPreservesForall!1763 (exprs!8528 ct1!282) (exprs!8528 ct2!378) lambda!455274))))

(declare-fun b!7337003 () Bool)

(declare-fun tp!2082924 () Bool)

(assert (=> b!7337003 (= e!4393433 tp!2082924)))

(declare-fun b!7337004 () Bool)

(declare-fun forall!17922 (List!71584 Int) Bool)

(assert (=> b!7337004 (= e!4393437 (not (forall!17922 (exprs!8528 cWitness!61) lambda!455274)))))

(declare-fun b!7337005 () Bool)

(declare-fun tp!2082923 () Bool)

(assert (=> b!7337005 (= e!4393432 tp!2082923)))

(declare-fun b!7337006 () Bool)

(declare-fun tp!2082929 () Bool)

(assert (=> b!7337006 (= e!4393436 tp!2082929)))

(declare-fun b!7337007 () Bool)

(declare-fun tp!2082925 () Bool)

(declare-fun tp!2082922 () Bool)

(assert (=> b!7337007 (= e!4393433 (and tp!2082925 tp!2082922))))

(declare-fun b!7337008 () Bool)

(assert (=> b!7337008 (= e!4393429 e!4393430)))

(declare-fun res!2964513 () Bool)

(assert (=> b!7337008 (=> (not res!2964513) (not e!4393430))))

(declare-fun lt!2609358 () (Set Context!16056))

(declare-fun lt!2609360 () (Set Context!16056))

(assert (=> b!7337008 (= res!2964513 (and (= lt!2609360 lt!2609358) (set.member cWitness!61 lt!2609358) (= cWitness!61 ct1!282)))))

(assert (=> b!7337008 (= lt!2609358 (set.insert ct1!282 (as set.empty (Set Context!16056))))))

(declare-fun b!7337009 () Bool)

(declare-fun tp!2082926 () Bool)

(assert (=> b!7337009 (= e!4393431 tp!2082926)))

(declare-fun b!7337010 () Bool)

(assert (=> b!7337010 (= e!4393434 e!4393435)))

(declare-fun res!2964512 () Bool)

(assert (=> b!7337010 (=> (not res!2964512) (not e!4393435))))

(assert (=> b!7337010 (= res!2964512 (set.member cWitness!61 lt!2609360))))

(assert (=> b!7337010 (= lt!2609360 (derivationStepZipperDown!2914 r1!2370 ct1!282 c!10362))))

(declare-fun b!7337011 () Bool)

(declare-fun tp!2082928 () Bool)

(declare-fun tp!2082927 () Bool)

(assert (=> b!7337011 (= e!4393433 (and tp!2082928 tp!2082927))))

(assert (= (and start!716686 res!2964509) b!7337010))

(assert (= (and b!7337010 res!2964512) b!7337000))

(assert (= (and b!7337000 res!2964510) b!7337008))

(assert (= (and b!7337008 res!2964513) b!7337002))

(assert (= (and b!7337002 res!2964511) b!7337004))

(assert (= start!716686 b!7337009))

(assert (= start!716686 b!7337006))

(assert (= (and start!716686 (is-ElementMatch!19088 r1!2370)) b!7337001))

(assert (= (and start!716686 (is-Concat!27933 r1!2370)) b!7337011))

(assert (= (and start!716686 (is-Star!19088 r1!2370)) b!7337003))

(assert (= (and start!716686 (is-Union!19088 r1!2370)) b!7337007))

(assert (= start!716686 b!7337005))

(declare-fun m!8002354 () Bool)

(assert (=> b!7337004 m!8002354))

(declare-fun m!8002356 () Bool)

(assert (=> b!7337008 m!8002356))

(declare-fun m!8002358 () Bool)

(assert (=> b!7337008 m!8002358))

(declare-fun m!8002360 () Bool)

(assert (=> b!7337000 m!8002360))

(declare-fun m!8002362 () Bool)

(assert (=> b!7337000 m!8002362))

(declare-fun m!8002364 () Bool)

(assert (=> b!7337000 m!8002364))

(declare-fun m!8002366 () Bool)

(assert (=> start!716686 m!8002366))

(declare-fun m!8002368 () Bool)

(assert (=> start!716686 m!8002368))

(declare-fun m!8002370 () Bool)

(assert (=> start!716686 m!8002370))

(declare-fun m!8002372 () Bool)

(assert (=> start!716686 m!8002372))

(declare-fun m!8002374 () Bool)

(assert (=> b!7337002 m!8002374))

(assert (=> b!7337002 m!8002364))

(declare-fun m!8002376 () Bool)

(assert (=> b!7337010 m!8002376))

(declare-fun m!8002378 () Bool)

(assert (=> b!7337010 m!8002378))

(push 1)

(assert (not start!716686))

(assert (not b!7337004))

(assert (not b!7337009))

(assert (not b!7337007))

(assert (not b!7337000))

(assert tp_is_empty!48421)

(assert (not b!7337002))

(assert (not b!7337005))

(assert (not b!7337011))

(assert (not b!7337006))

(assert (not b!7337003))

(assert (not b!7337010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7337070 () Bool)

(declare-fun c!1362743 () Bool)

(assert (=> b!7337070 (= c!1362743 (is-Star!19088 r1!2370))))

(declare-fun e!4393480 () (Set Context!16056))

(declare-fun e!4393482 () (Set Context!16056))

(assert (=> b!7337070 (= e!4393480 e!4393482)))

(declare-fun b!7337071 () Bool)

(declare-fun e!4393481 () (Set Context!16056))

(declare-fun e!4393479 () (Set Context!16056))

(assert (=> b!7337071 (= e!4393481 e!4393479)))

(declare-fun c!1362744 () Bool)

(assert (=> b!7337071 (= c!1362744 (is-Union!19088 r1!2370))))

(declare-fun c!1362740 () Bool)

(declare-fun call!669175 () (Set Context!16056))

(declare-fun bm!669170 () Bool)

(declare-fun c!1362742 () Bool)

(declare-fun call!669178 () List!71584)

(assert (=> bm!669170 (= call!669175 (derivationStepZipperDown!2914 (ite c!1362744 (regOne!38689 r1!2370) (ite c!1362740 (regTwo!38688 r1!2370) (ite c!1362742 (regOne!38688 r1!2370) (reg!19417 r1!2370)))) (ite (or c!1362744 c!1362740) lt!2609363 (Context!16057 call!669178)) c!10362))))

(declare-fun b!7337072 () Bool)

(declare-fun call!669177 () (Set Context!16056))

(assert (=> b!7337072 (= e!4393479 (set.union call!669175 call!669177))))

(declare-fun bm!669171 () Bool)

(declare-fun call!669174 () List!71584)

(assert (=> bm!669171 (= call!669178 call!669174)))

(declare-fun b!7337073 () Bool)

(assert (=> b!7337073 (= e!4393482 (as set.empty (Set Context!16056)))))

(declare-fun b!7337074 () Bool)

(declare-fun e!4393477 () Bool)

(assert (=> b!7337074 (= c!1362740 e!4393477)))

(declare-fun res!2964531 () Bool)

(assert (=> b!7337074 (=> (not res!2964531) (not e!4393477))))

(assert (=> b!7337074 (= res!2964531 (is-Concat!27933 r1!2370))))

(declare-fun e!4393478 () (Set Context!16056))

(assert (=> b!7337074 (= e!4393479 e!4393478)))

(declare-fun bm!669172 () Bool)

(declare-fun $colon$colon!3092 (List!71584 Regex!19088) List!71584)

(assert (=> bm!669172 (= call!669174 ($colon$colon!3092 (exprs!8528 lt!2609363) (ite (or c!1362740 c!1362742) (regTwo!38688 r1!2370) r1!2370)))))

(declare-fun b!7337075 () Bool)

(assert (=> b!7337075 (= e!4393478 e!4393480)))

(assert (=> b!7337075 (= c!1362742 (is-Concat!27933 r1!2370))))

(declare-fun bm!669173 () Bool)

(declare-fun call!669176 () (Set Context!16056))

(assert (=> bm!669173 (= call!669176 call!669175)))

(declare-fun d!2278199 () Bool)

(declare-fun c!1362741 () Bool)

(assert (=> d!2278199 (= c!1362741 (and (is-ElementMatch!19088 r1!2370) (= (c!1362728 r1!2370) c!10362)))))

(assert (=> d!2278199 (= (derivationStepZipperDown!2914 r1!2370 lt!2609363 c!10362) e!4393481)))

(declare-fun bm!669169 () Bool)

(assert (=> bm!669169 (= call!669177 (derivationStepZipperDown!2914 (ite c!1362744 (regTwo!38689 r1!2370) (regOne!38688 r1!2370)) (ite c!1362744 lt!2609363 (Context!16057 call!669174)) c!10362))))

(declare-fun b!7337076 () Bool)

(declare-fun nullable!8186 (Regex!19088) Bool)

(assert (=> b!7337076 (= e!4393477 (nullable!8186 (regOne!38688 r1!2370)))))

(declare-fun bm!669174 () Bool)

(declare-fun call!669179 () (Set Context!16056))

(assert (=> bm!669174 (= call!669179 call!669176)))

(declare-fun b!7337077 () Bool)

(assert (=> b!7337077 (= e!4393481 (set.insert lt!2609363 (as set.empty (Set Context!16056))))))

(declare-fun b!7337078 () Bool)

(assert (=> b!7337078 (= e!4393480 call!669179)))

(declare-fun b!7337079 () Bool)

(assert (=> b!7337079 (= e!4393482 call!669179)))

(declare-fun b!7337080 () Bool)

(assert (=> b!7337080 (= e!4393478 (set.union call!669177 call!669176))))

(assert (= (and d!2278199 c!1362741) b!7337077))

(assert (= (and d!2278199 (not c!1362741)) b!7337071))

(assert (= (and b!7337071 c!1362744) b!7337072))

(assert (= (and b!7337071 (not c!1362744)) b!7337074))

(assert (= (and b!7337074 res!2964531) b!7337076))

(assert (= (and b!7337074 c!1362740) b!7337080))

(assert (= (and b!7337074 (not c!1362740)) b!7337075))

(assert (= (and b!7337075 c!1362742) b!7337078))

(assert (= (and b!7337075 (not c!1362742)) b!7337070))

(assert (= (and b!7337070 c!1362743) b!7337079))

(assert (= (and b!7337070 (not c!1362743)) b!7337073))

(assert (= (or b!7337078 b!7337079) bm!669171))

(assert (= (or b!7337078 b!7337079) bm!669174))

(assert (= (or b!7337080 bm!669174) bm!669173))

(assert (= (or b!7337080 bm!669171) bm!669172))

(assert (= (or b!7337072 b!7337080) bm!669169))

(assert (= (or b!7337072 bm!669173) bm!669170))

(declare-fun m!8002406 () Bool)

(assert (=> bm!669170 m!8002406))

(declare-fun m!8002408 () Bool)

(assert (=> b!7337076 m!8002408))

(assert (=> b!7337077 m!8002374))

(declare-fun m!8002410 () Bool)

(assert (=> bm!669172 m!8002410))

(declare-fun m!8002412 () Bool)

(assert (=> bm!669169 m!8002412))

(assert (=> b!7337000 d!2278199))

(declare-fun b!7337090 () Bool)

(declare-fun e!4393488 () List!71584)

(assert (=> b!7337090 (= e!4393488 (Cons!71460 (h!77908 (exprs!8528 ct1!282)) (++!16906 (t!385979 (exprs!8528 ct1!282)) (exprs!8528 ct2!378))))))

(declare-fun b!7337089 () Bool)

(assert (=> b!7337089 (= e!4393488 (exprs!8528 ct2!378))))

(declare-fun d!2278203 () Bool)

(declare-fun e!4393487 () Bool)

(assert (=> d!2278203 e!4393487))

(declare-fun res!2964537 () Bool)

(assert (=> d!2278203 (=> (not res!2964537) (not e!4393487))))

(declare-fun lt!2609384 () List!71584)

(declare-fun content!15008 (List!71584) (Set Regex!19088))

(assert (=> d!2278203 (= res!2964537 (= (content!15008 lt!2609384) (set.union (content!15008 (exprs!8528 ct1!282)) (content!15008 (exprs!8528 ct2!378)))))))

(assert (=> d!2278203 (= lt!2609384 e!4393488)))

(declare-fun c!1362747 () Bool)

(assert (=> d!2278203 (= c!1362747 (is-Nil!71460 (exprs!8528 ct1!282)))))

(assert (=> d!2278203 (= (++!16906 (exprs!8528 ct1!282) (exprs!8528 ct2!378)) lt!2609384)))

(declare-fun b!7337092 () Bool)

(assert (=> b!7337092 (= e!4393487 (or (not (= (exprs!8528 ct2!378) Nil!71460)) (= lt!2609384 (exprs!8528 ct1!282))))))

(declare-fun b!7337091 () Bool)

(declare-fun res!2964536 () Bool)

(assert (=> b!7337091 (=> (not res!2964536) (not e!4393487))))

(declare-fun size!41987 (List!71584) Int)

(assert (=> b!7337091 (= res!2964536 (= (size!41987 lt!2609384) (+ (size!41987 (exprs!8528 ct1!282)) (size!41987 (exprs!8528 ct2!378)))))))

(assert (= (and d!2278203 c!1362747) b!7337089))

(assert (= (and d!2278203 (not c!1362747)) b!7337090))

(assert (= (and d!2278203 res!2964537) b!7337091))

(assert (= (and b!7337091 res!2964536) b!7337092))

(declare-fun m!8002414 () Bool)

(assert (=> b!7337090 m!8002414))

(declare-fun m!8002416 () Bool)

(assert (=> d!2278203 m!8002416))

(declare-fun m!8002418 () Bool)

(assert (=> d!2278203 m!8002418))

(declare-fun m!8002420 () Bool)

(assert (=> d!2278203 m!8002420))

(declare-fun m!8002422 () Bool)

(assert (=> b!7337091 m!8002422))

(declare-fun m!8002424 () Bool)

(assert (=> b!7337091 m!8002424))

(declare-fun m!8002426 () Bool)

(assert (=> b!7337091 m!8002426))

(assert (=> b!7337000 d!2278203))

(declare-fun d!2278205 () Bool)

(assert (=> d!2278205 (forall!17922 (++!16906 (exprs!8528 ct1!282) (exprs!8528 ct2!378)) lambda!455274)))

(declare-fun lt!2609387 () Unit!165129)

(declare-fun choose!57070 (List!71584 List!71584 Int) Unit!165129)

(assert (=> d!2278205 (= lt!2609387 (choose!57070 (exprs!8528 ct1!282) (exprs!8528 ct2!378) lambda!455274))))

(assert (=> d!2278205 (forall!17922 (exprs!8528 ct1!282) lambda!455274)))

(assert (=> d!2278205 (= (lemmaConcatPreservesForall!1763 (exprs!8528 ct1!282) (exprs!8528 ct2!378) lambda!455274) lt!2609387)))

(declare-fun bs!1918104 () Bool)

(assert (= bs!1918104 d!2278205))

(assert (=> bs!1918104 m!8002362))

(assert (=> bs!1918104 m!8002362))

(declare-fun m!8002428 () Bool)

(assert (=> bs!1918104 m!8002428))

(declare-fun m!8002430 () Bool)

(assert (=> bs!1918104 m!8002430))

(declare-fun m!8002432 () Bool)

(assert (=> bs!1918104 m!8002432))

(assert (=> b!7337000 d!2278205))

(declare-fun d!2278207 () Bool)

(declare-fun res!2964544 () Bool)

(declare-fun e!4393505 () Bool)

(assert (=> d!2278207 (=> res!2964544 e!4393505)))

(assert (=> d!2278207 (= res!2964544 (is-Nil!71460 (exprs!8528 cWitness!61)))))

(assert (=> d!2278207 (= (forall!17922 (exprs!8528 cWitness!61) lambda!455274) e!4393505)))

(declare-fun b!7337119 () Bool)

(declare-fun e!4393506 () Bool)

(assert (=> b!7337119 (= e!4393505 e!4393506)))

(declare-fun res!2964545 () Bool)

(assert (=> b!7337119 (=> (not res!2964545) (not e!4393506))))

(declare-fun dynLambda!29437 (Int Regex!19088) Bool)

(assert (=> b!7337119 (= res!2964545 (dynLambda!29437 lambda!455274 (h!77908 (exprs!8528 cWitness!61))))))

(declare-fun b!7337120 () Bool)

(assert (=> b!7337120 (= e!4393506 (forall!17922 (t!385979 (exprs!8528 cWitness!61)) lambda!455274))))

(assert (= (and d!2278207 (not res!2964544)) b!7337119))

(assert (= (and b!7337119 res!2964545) b!7337120))

(declare-fun b_lambda!283763 () Bool)

(assert (=> (not b_lambda!283763) (not b!7337119)))

(declare-fun m!8002434 () Bool)

(assert (=> b!7337119 m!8002434))

(declare-fun m!8002436 () Bool)

(assert (=> b!7337120 m!8002436))

(assert (=> b!7337004 d!2278207))

(declare-fun b!7337121 () Bool)

(declare-fun c!1362761 () Bool)

(assert (=> b!7337121 (= c!1362761 (is-Star!19088 r1!2370))))

(declare-fun e!4393510 () (Set Context!16056))

(declare-fun e!4393512 () (Set Context!16056))

(assert (=> b!7337121 (= e!4393510 e!4393512)))

(declare-fun b!7337122 () Bool)

(declare-fun e!4393511 () (Set Context!16056))

(declare-fun e!4393509 () (Set Context!16056))

(assert (=> b!7337122 (= e!4393511 e!4393509)))

(declare-fun c!1362762 () Bool)

(assert (=> b!7337122 (= c!1362762 (is-Union!19088 r1!2370))))

(declare-fun call!669184 () List!71584)

(declare-fun c!1362758 () Bool)

(declare-fun bm!669176 () Bool)

(declare-fun c!1362760 () Bool)

(declare-fun call!669181 () (Set Context!16056))

(assert (=> bm!669176 (= call!669181 (derivationStepZipperDown!2914 (ite c!1362762 (regOne!38689 r1!2370) (ite c!1362758 (regTwo!38688 r1!2370) (ite c!1362760 (regOne!38688 r1!2370) (reg!19417 r1!2370)))) (ite (or c!1362762 c!1362758) ct1!282 (Context!16057 call!669184)) c!10362))))

(declare-fun b!7337123 () Bool)

(declare-fun call!669183 () (Set Context!16056))

(assert (=> b!7337123 (= e!4393509 (set.union call!669181 call!669183))))

(declare-fun bm!669177 () Bool)

(declare-fun call!669180 () List!71584)

(assert (=> bm!669177 (= call!669184 call!669180)))

(declare-fun b!7337124 () Bool)

(assert (=> b!7337124 (= e!4393512 (as set.empty (Set Context!16056)))))

(declare-fun b!7337125 () Bool)

(declare-fun e!4393507 () Bool)

(assert (=> b!7337125 (= c!1362758 e!4393507)))

(declare-fun res!2964546 () Bool)

(assert (=> b!7337125 (=> (not res!2964546) (not e!4393507))))

(assert (=> b!7337125 (= res!2964546 (is-Concat!27933 r1!2370))))

(declare-fun e!4393508 () (Set Context!16056))

(assert (=> b!7337125 (= e!4393509 e!4393508)))

(declare-fun bm!669178 () Bool)

(assert (=> bm!669178 (= call!669180 ($colon$colon!3092 (exprs!8528 ct1!282) (ite (or c!1362758 c!1362760) (regTwo!38688 r1!2370) r1!2370)))))

(declare-fun b!7337126 () Bool)

(assert (=> b!7337126 (= e!4393508 e!4393510)))

(assert (=> b!7337126 (= c!1362760 (is-Concat!27933 r1!2370))))

(declare-fun bm!669179 () Bool)

(declare-fun call!669182 () (Set Context!16056))

(assert (=> bm!669179 (= call!669182 call!669181)))

(declare-fun d!2278209 () Bool)

(declare-fun c!1362759 () Bool)

(assert (=> d!2278209 (= c!1362759 (and (is-ElementMatch!19088 r1!2370) (= (c!1362728 r1!2370) c!10362)))))

(assert (=> d!2278209 (= (derivationStepZipperDown!2914 r1!2370 ct1!282 c!10362) e!4393511)))

(declare-fun bm!669175 () Bool)

(assert (=> bm!669175 (= call!669183 (derivationStepZipperDown!2914 (ite c!1362762 (regTwo!38689 r1!2370) (regOne!38688 r1!2370)) (ite c!1362762 ct1!282 (Context!16057 call!669180)) c!10362))))

(declare-fun b!7337127 () Bool)

(assert (=> b!7337127 (= e!4393507 (nullable!8186 (regOne!38688 r1!2370)))))

(declare-fun bm!669180 () Bool)

(declare-fun call!669185 () (Set Context!16056))

(assert (=> bm!669180 (= call!669185 call!669182)))

(declare-fun b!7337128 () Bool)

(assert (=> b!7337128 (= e!4393511 (set.insert ct1!282 (as set.empty (Set Context!16056))))))

(declare-fun b!7337129 () Bool)

(assert (=> b!7337129 (= e!4393510 call!669185)))

(declare-fun b!7337130 () Bool)

(assert (=> b!7337130 (= e!4393512 call!669185)))

(declare-fun b!7337131 () Bool)

(assert (=> b!7337131 (= e!4393508 (set.union call!669183 call!669182))))

(assert (= (and d!2278209 c!1362759) b!7337128))

(assert (= (and d!2278209 (not c!1362759)) b!7337122))

(assert (= (and b!7337122 c!1362762) b!7337123))

(assert (= (and b!7337122 (not c!1362762)) b!7337125))

(assert (= (and b!7337125 res!2964546) b!7337127))

(assert (= (and b!7337125 c!1362758) b!7337131))

(assert (= (and b!7337125 (not c!1362758)) b!7337126))

(assert (= (and b!7337126 c!1362760) b!7337129))

(assert (= (and b!7337126 (not c!1362760)) b!7337121))

(assert (= (and b!7337121 c!1362761) b!7337130))

(assert (= (and b!7337121 (not c!1362761)) b!7337124))

(assert (= (or b!7337129 b!7337130) bm!669177))

(assert (= (or b!7337129 b!7337130) bm!669180))

(assert (= (or b!7337131 bm!669180) bm!669179))

(assert (= (or b!7337131 bm!669177) bm!669178))

(assert (= (or b!7337123 b!7337131) bm!669175))

(assert (= (or b!7337123 bm!669179) bm!669176))

(declare-fun m!8002438 () Bool)

(assert (=> bm!669176 m!8002438))

(assert (=> b!7337127 m!8002408))

(assert (=> b!7337128 m!8002358))

(declare-fun m!8002440 () Bool)

(assert (=> bm!669178 m!8002440))

(declare-fun m!8002442 () Bool)

(assert (=> bm!669175 m!8002442))

(assert (=> b!7337010 d!2278209))

(declare-fun b!7337151 () Bool)

(declare-fun e!4393527 () Bool)

(declare-fun call!669203 () Bool)

(assert (=> b!7337151 (= e!4393527 call!669203)))

(declare-fun b!7337152 () Bool)

(declare-fun e!4393533 () Bool)

(declare-fun e!4393529 () Bool)

(assert (=> b!7337152 (= e!4393533 e!4393529)))

(declare-fun res!2964558 () Bool)

(assert (=> b!7337152 (= res!2964558 (not (nullable!8186 (reg!19417 r1!2370))))))

(assert (=> b!7337152 (=> (not res!2964558) (not e!4393529))))

(declare-fun c!1362767 () Bool)

(declare-fun call!669202 () Bool)

(declare-fun c!1362768 () Bool)

(declare-fun bm!669195 () Bool)

(assert (=> bm!669195 (= call!669202 (validRegex!9684 (ite c!1362767 (reg!19417 r1!2370) (ite c!1362768 (regTwo!38689 r1!2370) (regOne!38688 r1!2370)))))))

(declare-fun b!7337150 () Bool)

(assert (=> b!7337150 (= e!4393529 call!669202)))

(declare-fun d!2278211 () Bool)

(declare-fun res!2964559 () Bool)

(declare-fun e!4393531 () Bool)

(assert (=> d!2278211 (=> res!2964559 e!4393531)))

(assert (=> d!2278211 (= res!2964559 (is-ElementMatch!19088 r1!2370))))

(assert (=> d!2278211 (= (validRegex!9684 r1!2370) e!4393531)))

(declare-fun b!7337153 () Bool)

(declare-fun e!4393530 () Bool)

(declare-fun e!4393528 () Bool)

(assert (=> b!7337153 (= e!4393530 e!4393528)))

(declare-fun res!2964557 () Bool)

(assert (=> b!7337153 (=> (not res!2964557) (not e!4393528))))

(assert (=> b!7337153 (= res!2964557 call!669203)))

(declare-fun bm!669196 () Bool)

(declare-fun call!669204 () Bool)

(assert (=> bm!669196 (= call!669204 (validRegex!9684 (ite c!1362768 (regOne!38689 r1!2370) (regTwo!38688 r1!2370))))))

(declare-fun bm!669197 () Bool)

(assert (=> bm!669197 (= call!669203 call!669202)))

(declare-fun b!7337154 () Bool)

(assert (=> b!7337154 (= e!4393531 e!4393533)))

(assert (=> b!7337154 (= c!1362767 (is-Star!19088 r1!2370))))

(declare-fun b!7337155 () Bool)

(declare-fun e!4393532 () Bool)

(assert (=> b!7337155 (= e!4393533 e!4393532)))

(assert (=> b!7337155 (= c!1362768 (is-Union!19088 r1!2370))))

(declare-fun b!7337156 () Bool)

(declare-fun res!2964560 () Bool)

(assert (=> b!7337156 (=> (not res!2964560) (not e!4393527))))

(assert (=> b!7337156 (= res!2964560 call!669204)))

(assert (=> b!7337156 (= e!4393532 e!4393527)))

(declare-fun b!7337157 () Bool)

(declare-fun res!2964561 () Bool)

(assert (=> b!7337157 (=> res!2964561 e!4393530)))

(assert (=> b!7337157 (= res!2964561 (not (is-Concat!27933 r1!2370)))))

(assert (=> b!7337157 (= e!4393532 e!4393530)))

(declare-fun b!7337158 () Bool)

(assert (=> b!7337158 (= e!4393528 call!669204)))

(assert (= (and d!2278211 (not res!2964559)) b!7337154))

(assert (= (and b!7337154 c!1362767) b!7337152))

(assert (= (and b!7337154 (not c!1362767)) b!7337155))

(assert (= (and b!7337152 res!2964558) b!7337150))

(assert (= (and b!7337155 c!1362768) b!7337156))

(assert (= (and b!7337155 (not c!1362768)) b!7337157))

(assert (= (and b!7337156 res!2964560) b!7337151))

(assert (= (and b!7337157 (not res!2964561)) b!7337153))

(assert (= (and b!7337153 res!2964557) b!7337158))

(assert (= (or b!7337156 b!7337158) bm!669196))

(assert (= (or b!7337151 b!7337153) bm!669197))

(assert (= (or b!7337150 bm!669197) bm!669195))

(declare-fun m!8002444 () Bool)

(assert (=> b!7337152 m!8002444))

(declare-fun m!8002446 () Bool)

(assert (=> bm!669195 m!8002446))

(declare-fun m!8002448 () Bool)

(assert (=> bm!669196 m!8002448))

(assert (=> start!716686 d!2278211))

(declare-fun bs!1918105 () Bool)

(declare-fun d!2278213 () Bool)

(assert (= bs!1918105 (and d!2278213 b!7337000)))

(declare-fun lambda!455284 () Int)

(assert (=> bs!1918105 (= lambda!455284 lambda!455274)))

(assert (=> d!2278213 (= (inv!91061 cWitness!61) (forall!17922 (exprs!8528 cWitness!61) lambda!455284))))

(declare-fun bs!1918106 () Bool)

(assert (= bs!1918106 d!2278213))

(declare-fun m!8002450 () Bool)

(assert (=> bs!1918106 m!8002450))

(assert (=> start!716686 d!2278213))

(declare-fun bs!1918107 () Bool)

(declare-fun d!2278215 () Bool)

(assert (= bs!1918107 (and d!2278215 b!7337000)))

(declare-fun lambda!455285 () Int)

(assert (=> bs!1918107 (= lambda!455285 lambda!455274)))

(declare-fun bs!1918108 () Bool)

(assert (= bs!1918108 (and d!2278215 d!2278213)))

(assert (=> bs!1918108 (= lambda!455285 lambda!455284)))

(assert (=> d!2278215 (= (inv!91061 ct1!282) (forall!17922 (exprs!8528 ct1!282) lambda!455285))))

(declare-fun bs!1918109 () Bool)

(assert (= bs!1918109 d!2278215))

(declare-fun m!8002452 () Bool)

(assert (=> bs!1918109 m!8002452))

(assert (=> start!716686 d!2278215))

(declare-fun bs!1918110 () Bool)

(declare-fun d!2278217 () Bool)

(assert (= bs!1918110 (and d!2278217 b!7337000)))

(declare-fun lambda!455286 () Int)

(assert (=> bs!1918110 (= lambda!455286 lambda!455274)))

(declare-fun bs!1918111 () Bool)

(assert (= bs!1918111 (and d!2278217 d!2278213)))

(assert (=> bs!1918111 (= lambda!455286 lambda!455284)))

(declare-fun bs!1918112 () Bool)

(assert (= bs!1918112 (and d!2278217 d!2278215)))

(assert (=> bs!1918112 (= lambda!455286 lambda!455285)))

(assert (=> d!2278217 (= (inv!91061 ct2!378) (forall!17922 (exprs!8528 ct2!378) lambda!455286))))

(declare-fun bs!1918113 () Bool)

(assert (= bs!1918113 d!2278217))

(declare-fun m!8002454 () Bool)

(assert (=> bs!1918113 m!8002454))

(assert (=> start!716686 d!2278217))

(assert (=> b!7337002 d!2278205))

(declare-fun b!7337163 () Bool)

(declare-fun e!4393536 () Bool)

(declare-fun tp!2082958 () Bool)

(declare-fun tp!2082959 () Bool)

(assert (=> b!7337163 (= e!4393536 (and tp!2082958 tp!2082959))))

(assert (=> b!7337005 (= tp!2082923 e!4393536)))

(assert (= (and b!7337005 (is-Cons!71460 (exprs!8528 ct2!378))) b!7337163))

(declare-fun b!7337164 () Bool)

(declare-fun e!4393537 () Bool)

(declare-fun tp!2082960 () Bool)

(declare-fun tp!2082961 () Bool)

(assert (=> b!7337164 (= e!4393537 (and tp!2082960 tp!2082961))))

(assert (=> b!7337006 (= tp!2082929 e!4393537)))

(assert (= (and b!7337006 (is-Cons!71460 (exprs!8528 ct1!282))) b!7337164))

(declare-fun b!7337178 () Bool)

(declare-fun e!4393540 () Bool)

(declare-fun tp!2082975 () Bool)

(declare-fun tp!2082974 () Bool)

(assert (=> b!7337178 (= e!4393540 (and tp!2082975 tp!2082974))))

(declare-fun b!7337175 () Bool)

(assert (=> b!7337175 (= e!4393540 tp_is_empty!48421)))

(declare-fun b!7337177 () Bool)

(declare-fun tp!2082972 () Bool)

(assert (=> b!7337177 (= e!4393540 tp!2082972)))

(declare-fun b!7337176 () Bool)

(declare-fun tp!2082976 () Bool)

(declare-fun tp!2082973 () Bool)

(assert (=> b!7337176 (= e!4393540 (and tp!2082976 tp!2082973))))

(assert (=> b!7337011 (= tp!2082928 e!4393540)))

(assert (= (and b!7337011 (is-ElementMatch!19088 (regOne!38688 r1!2370))) b!7337175))

(assert (= (and b!7337011 (is-Concat!27933 (regOne!38688 r1!2370))) b!7337176))

(assert (= (and b!7337011 (is-Star!19088 (regOne!38688 r1!2370))) b!7337177))

(assert (= (and b!7337011 (is-Union!19088 (regOne!38688 r1!2370))) b!7337178))

(declare-fun b!7337182 () Bool)

(declare-fun e!4393541 () Bool)

(declare-fun tp!2082980 () Bool)

(declare-fun tp!2082979 () Bool)

(assert (=> b!7337182 (= e!4393541 (and tp!2082980 tp!2082979))))

(declare-fun b!7337179 () Bool)

(assert (=> b!7337179 (= e!4393541 tp_is_empty!48421)))

(declare-fun b!7337181 () Bool)

(declare-fun tp!2082977 () Bool)

(assert (=> b!7337181 (= e!4393541 tp!2082977)))

(declare-fun b!7337180 () Bool)

(declare-fun tp!2082981 () Bool)

(declare-fun tp!2082978 () Bool)

(assert (=> b!7337180 (= e!4393541 (and tp!2082981 tp!2082978))))

(assert (=> b!7337011 (= tp!2082927 e!4393541)))

(assert (= (and b!7337011 (is-ElementMatch!19088 (regTwo!38688 r1!2370))) b!7337179))

(assert (= (and b!7337011 (is-Concat!27933 (regTwo!38688 r1!2370))) b!7337180))

(assert (= (and b!7337011 (is-Star!19088 (regTwo!38688 r1!2370))) b!7337181))

(assert (= (and b!7337011 (is-Union!19088 (regTwo!38688 r1!2370))) b!7337182))

(declare-fun b!7337183 () Bool)

(declare-fun e!4393542 () Bool)

(declare-fun tp!2082982 () Bool)

(declare-fun tp!2082983 () Bool)

(assert (=> b!7337183 (= e!4393542 (and tp!2082982 tp!2082983))))

(assert (=> b!7337009 (= tp!2082926 e!4393542)))

(assert (= (and b!7337009 (is-Cons!71460 (exprs!8528 cWitness!61))) b!7337183))

(declare-fun b!7337187 () Bool)

(declare-fun e!4393543 () Bool)

(declare-fun tp!2082987 () Bool)

(declare-fun tp!2082986 () Bool)

(assert (=> b!7337187 (= e!4393543 (and tp!2082987 tp!2082986))))

(declare-fun b!7337184 () Bool)

(assert (=> b!7337184 (= e!4393543 tp_is_empty!48421)))

(declare-fun b!7337186 () Bool)

(declare-fun tp!2082984 () Bool)

(assert (=> b!7337186 (= e!4393543 tp!2082984)))

(declare-fun b!7337185 () Bool)

(declare-fun tp!2082988 () Bool)

(declare-fun tp!2082985 () Bool)

(assert (=> b!7337185 (= e!4393543 (and tp!2082988 tp!2082985))))

(assert (=> b!7337003 (= tp!2082924 e!4393543)))

(assert (= (and b!7337003 (is-ElementMatch!19088 (reg!19417 r1!2370))) b!7337184))

(assert (= (and b!7337003 (is-Concat!27933 (reg!19417 r1!2370))) b!7337185))

(assert (= (and b!7337003 (is-Star!19088 (reg!19417 r1!2370))) b!7337186))

(assert (= (and b!7337003 (is-Union!19088 (reg!19417 r1!2370))) b!7337187))

(declare-fun b!7337191 () Bool)

(declare-fun e!4393544 () Bool)

(declare-fun tp!2082992 () Bool)

(declare-fun tp!2082991 () Bool)

(assert (=> b!7337191 (= e!4393544 (and tp!2082992 tp!2082991))))

(declare-fun b!7337188 () Bool)

(assert (=> b!7337188 (= e!4393544 tp_is_empty!48421)))

(declare-fun b!7337190 () Bool)

(declare-fun tp!2082989 () Bool)

(assert (=> b!7337190 (= e!4393544 tp!2082989)))

(declare-fun b!7337189 () Bool)

(declare-fun tp!2082993 () Bool)

(declare-fun tp!2082990 () Bool)

(assert (=> b!7337189 (= e!4393544 (and tp!2082993 tp!2082990))))

(assert (=> b!7337007 (= tp!2082925 e!4393544)))

(assert (= (and b!7337007 (is-ElementMatch!19088 (regOne!38689 r1!2370))) b!7337188))

(assert (= (and b!7337007 (is-Concat!27933 (regOne!38689 r1!2370))) b!7337189))

(assert (= (and b!7337007 (is-Star!19088 (regOne!38689 r1!2370))) b!7337190))

(assert (= (and b!7337007 (is-Union!19088 (regOne!38689 r1!2370))) b!7337191))

(declare-fun b!7337195 () Bool)

(declare-fun e!4393545 () Bool)

(declare-fun tp!2082997 () Bool)

(declare-fun tp!2082996 () Bool)

(assert (=> b!7337195 (= e!4393545 (and tp!2082997 tp!2082996))))

(declare-fun b!7337192 () Bool)

(assert (=> b!7337192 (= e!4393545 tp_is_empty!48421)))

(declare-fun b!7337194 () Bool)

(declare-fun tp!2082994 () Bool)

(assert (=> b!7337194 (= e!4393545 tp!2082994)))

(declare-fun b!7337193 () Bool)

(declare-fun tp!2082998 () Bool)

(declare-fun tp!2082995 () Bool)

(assert (=> b!7337193 (= e!4393545 (and tp!2082998 tp!2082995))))

(assert (=> b!7337007 (= tp!2082922 e!4393545)))

(assert (= (and b!7337007 (is-ElementMatch!19088 (regTwo!38689 r1!2370))) b!7337192))

(assert (= (and b!7337007 (is-Concat!27933 (regTwo!38689 r1!2370))) b!7337193))

(assert (= (and b!7337007 (is-Star!19088 (regTwo!38689 r1!2370))) b!7337194))

(assert (= (and b!7337007 (is-Union!19088 (regTwo!38689 r1!2370))) b!7337195))

(declare-fun b_lambda!283765 () Bool)

(assert (= b_lambda!283763 (or b!7337000 b_lambda!283765)))

(declare-fun bs!1918114 () Bool)

(declare-fun d!2278219 () Bool)

(assert (= bs!1918114 (and d!2278219 b!7337000)))

(assert (=> bs!1918114 (= (dynLambda!29437 lambda!455274 (h!77908 (exprs!8528 cWitness!61))) (validRegex!9684 (h!77908 (exprs!8528 cWitness!61))))))

(declare-fun m!8002456 () Bool)

(assert (=> bs!1918114 m!8002456))

(assert (=> b!7337119 d!2278219))

(push 1)

(assert (not b!7337191))

(assert (not b!7337091))

(assert (not b!7337120))

(assert (not b!7337187))

(assert (not bm!669196))

(assert (not bm!669175))

(assert (not b!7337195))

(assert (not b!7337183))

(assert (not b!7337194))

(assert tp_is_empty!48421)

(assert (not d!2278215))

(assert (not b!7337189))

(assert (not b!7337193))

(assert (not b!7337180))

(assert (not d!2278203))

(assert (not b!7337164))

(assert (not bs!1918114))

(assert (not b!7337127))

(assert (not d!2278213))

(assert (not bm!669195))

(assert (not b!7337152))

(assert (not b!7337176))

(assert (not b!7337177))

(assert (not b!7337182))

(assert (not bm!669170))

(assert (not b!7337178))

(assert (not bm!669176))

(assert (not bm!669178))

(assert (not b!7337076))

(assert (not d!2278217))

(assert (not b_lambda!283765))

(assert (not b!7337163))

(assert (not b!7337090))

(assert (not bm!669172))

(assert (not b!7337186))

(assert (not b!7337190))

(assert (not b!7337185))

(assert (not b!7337181))

(assert (not d!2278205))

(assert (not bm!669169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

