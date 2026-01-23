; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716632 () Bool)

(assert start!716632)

(declare-fun b!7336385 () Bool)

(declare-fun e!4393076 () Bool)

(declare-fun e!4393072 () Bool)

(assert (=> b!7336385 (= e!4393076 e!4393072)))

(declare-fun res!2964338 () Bool)

(assert (=> b!7336385 (=> (not res!2964338) (not e!4393072))))

(declare-datatypes ((C!38444 0))(
  ( (C!38445 (val!29582 Int)) )
))
(declare-datatypes ((Regex!19085 0))(
  ( (ElementMatch!19085 (c!1362609 C!38444)) (Concat!27930 (regOne!38682 Regex!19085) (regTwo!38682 Regex!19085)) (EmptyExpr!19085) (Star!19085 (reg!19414 Regex!19085)) (EmptyLang!19085) (Union!19085 (regOne!38683 Regex!19085) (regTwo!38683 Regex!19085)) )
))
(declare-datatypes ((List!71581 0))(
  ( (Nil!71457) (Cons!71457 (h!77905 Regex!19085) (t!385976 List!71581)) )
))
(declare-datatypes ((Context!16050 0))(
  ( (Context!16051 (exprs!8525 List!71581)) )
))
(declare-fun cWitness!61 () Context!16050)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2609295 () (InoxSet Context!16050))

(assert (=> b!7336385 (= res!2964338 (select lt!2609295 cWitness!61))))

(declare-fun r1!2370 () Regex!19085)

(declare-fun c!10362 () C!38444)

(declare-fun ct1!282 () Context!16050)

(declare-fun derivationStepZipperDown!2911 (Regex!19085 Context!16050 C!38444) (InoxSet Context!16050))

(assert (=> b!7336385 (= lt!2609295 (derivationStepZipperDown!2911 r1!2370 ct1!282 c!10362))))

(declare-fun res!2964337 () Bool)

(assert (=> start!716632 (=> (not res!2964337) (not e!4393076))))

(declare-fun validRegex!9681 (Regex!19085) Bool)

(assert (=> start!716632 (= res!2964337 (validRegex!9681 r1!2370))))

(assert (=> start!716632 e!4393076))

(declare-fun tp_is_empty!48415 () Bool)

(assert (=> start!716632 tp_is_empty!48415))

(declare-fun e!4393071 () Bool)

(declare-fun inv!91052 (Context!16050) Bool)

(assert (=> start!716632 (and (inv!91052 cWitness!61) e!4393071)))

(declare-fun e!4393069 () Bool)

(assert (=> start!716632 (and (inv!91052 ct1!282) e!4393069)))

(declare-fun e!4393075 () Bool)

(assert (=> start!716632 e!4393075))

(declare-fun ct2!378 () Context!16050)

(declare-fun e!4393074 () Bool)

(assert (=> start!716632 (and (inv!91052 ct2!378) e!4393074)))

(declare-fun b!7336386 () Bool)

(declare-fun tp!2082677 () Bool)

(declare-fun tp!2082675 () Bool)

(assert (=> b!7336386 (= e!4393075 (and tp!2082677 tp!2082675))))

(declare-fun b!7336387 () Bool)

(declare-fun tp!2082673 () Bool)

(assert (=> b!7336387 (= e!4393075 tp!2082673)))

(declare-fun b!7336388 () Bool)

(declare-fun e!4393073 () Bool)

(declare-fun e!4393070 () Bool)

(assert (=> b!7336388 (= e!4393073 e!4393070)))

(declare-fun res!2964340 () Bool)

(assert (=> b!7336388 (=> (not res!2964340) (not e!4393070))))

(declare-fun lt!2609297 () (InoxSet Context!16050))

(assert (=> b!7336388 (= res!2964340 (and (= lt!2609295 lt!2609297) (select lt!2609297 cWitness!61) (= cWitness!61 ct1!282)))))

(assert (=> b!7336388 (= lt!2609297 (store ((as const (Array Context!16050 Bool)) false) ct1!282 true))))

(declare-fun b!7336389 () Bool)

(declare-fun tp!2082672 () Bool)

(assert (=> b!7336389 (= e!4393069 tp!2082672)))

(declare-fun b!7336390 () Bool)

(assert (=> b!7336390 (= e!4393075 tp_is_empty!48415)))

(declare-fun b!7336391 () Bool)

(declare-fun tp!2082671 () Bool)

(assert (=> b!7336391 (= e!4393071 tp!2082671)))

(declare-fun b!7336392 () Bool)

(declare-fun tp!2082670 () Bool)

(declare-fun tp!2082674 () Bool)

(assert (=> b!7336392 (= e!4393075 (and tp!2082670 tp!2082674))))

(declare-fun b!7336393 () Bool)

(declare-fun tp!2082676 () Bool)

(assert (=> b!7336393 (= e!4393074 tp!2082676)))

(declare-fun b!7336394 () Bool)

(declare-fun lambda!455237 () Int)

(declare-fun forall!17919 (List!71581 Int) Bool)

(assert (=> b!7336394 (= e!4393070 (not (forall!17919 (exprs!8525 ct1!282) lambda!455237)))))

(declare-fun b!7336395 () Bool)

(assert (=> b!7336395 (= e!4393072 e!4393073)))

(declare-fun res!2964339 () Bool)

(assert (=> b!7336395 (=> (not res!2964339) (not e!4393073))))

(get-info :version)

(assert (=> b!7336395 (= res!2964339 (and ((_ is ElementMatch!19085) r1!2370) (= c!10362 (c!1362609 r1!2370))))))

(declare-fun lt!2609294 () (InoxSet Context!16050))

(declare-fun ++!16903 (List!71581 List!71581) List!71581)

(assert (=> b!7336395 (= lt!2609294 (derivationStepZipperDown!2911 r1!2370 (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165123 0))(
  ( (Unit!165124) )
))
(declare-fun lt!2609296 () Unit!165123)

(declare-fun lemmaConcatPreservesForall!1760 (List!71581 List!71581 Int) Unit!165123)

(assert (=> b!7336395 (= lt!2609296 (lemmaConcatPreservesForall!1760 (exprs!8525 ct1!282) (exprs!8525 ct2!378) lambda!455237))))

(assert (= (and start!716632 res!2964337) b!7336385))

(assert (= (and b!7336385 res!2964338) b!7336395))

(assert (= (and b!7336395 res!2964339) b!7336388))

(assert (= (and b!7336388 res!2964340) b!7336394))

(assert (= start!716632 b!7336391))

(assert (= start!716632 b!7336389))

(assert (= (and start!716632 ((_ is ElementMatch!19085) r1!2370)) b!7336390))

(assert (= (and start!716632 ((_ is Concat!27930) r1!2370)) b!7336386))

(assert (= (and start!716632 ((_ is Star!19085) r1!2370)) b!7336387))

(assert (= (and start!716632 ((_ is Union!19085) r1!2370)) b!7336392))

(assert (= start!716632 b!7336393))

(declare-fun m!8002058 () Bool)

(assert (=> start!716632 m!8002058))

(declare-fun m!8002060 () Bool)

(assert (=> start!716632 m!8002060))

(declare-fun m!8002062 () Bool)

(assert (=> start!716632 m!8002062))

(declare-fun m!8002064 () Bool)

(assert (=> start!716632 m!8002064))

(declare-fun m!8002066 () Bool)

(assert (=> b!7336388 m!8002066))

(declare-fun m!8002068 () Bool)

(assert (=> b!7336388 m!8002068))

(declare-fun m!8002070 () Bool)

(assert (=> b!7336395 m!8002070))

(declare-fun m!8002072 () Bool)

(assert (=> b!7336395 m!8002072))

(declare-fun m!8002074 () Bool)

(assert (=> b!7336395 m!8002074))

(declare-fun m!8002076 () Bool)

(assert (=> b!7336385 m!8002076))

(declare-fun m!8002078 () Bool)

(assert (=> b!7336385 m!8002078))

(declare-fun m!8002080 () Bool)

(assert (=> b!7336394 m!8002080))

(check-sat (not b!7336395) (not b!7336391) (not b!7336394) (not start!716632) (not b!7336386) (not b!7336393) tp_is_empty!48415 (not b!7336392) (not b!7336385) (not b!7336389) (not b!7336387))
(check-sat)
(get-model)

(declare-fun b!7336436 () Bool)

(declare-fun res!2964353 () Bool)

(declare-fun e!4393104 () Bool)

(assert (=> b!7336436 (=> res!2964353 e!4393104)))

(assert (=> b!7336436 (= res!2964353 (not ((_ is Concat!27930) r1!2370)))))

(declare-fun e!4393107 () Bool)

(assert (=> b!7336436 (= e!4393107 e!4393104)))

(declare-fun b!7336437 () Bool)

(declare-fun e!4393105 () Bool)

(declare-fun call!669048 () Bool)

(assert (=> b!7336437 (= e!4393105 call!669048)))

(declare-fun b!7336438 () Bool)

(declare-fun e!4393108 () Bool)

(assert (=> b!7336438 (= e!4393104 e!4393108)))

(declare-fun res!2964357 () Bool)

(assert (=> b!7336438 (=> (not res!2964357) (not e!4393108))))

(declare-fun call!669050 () Bool)

(assert (=> b!7336438 (= res!2964357 call!669050)))

(declare-fun b!7336440 () Bool)

(declare-fun e!4393106 () Bool)

(assert (=> b!7336440 (= e!4393106 call!669050)))

(declare-fun bm!669043 () Bool)

(declare-fun c!1362625 () Bool)

(declare-fun c!1362624 () Bool)

(assert (=> bm!669043 (= call!669048 (validRegex!9681 (ite c!1362624 (reg!19414 r1!2370) (ite c!1362625 (regOne!38683 r1!2370) (regTwo!38682 r1!2370)))))))

(declare-fun b!7336441 () Bool)

(declare-fun res!2964355 () Bool)

(assert (=> b!7336441 (=> (not res!2964355) (not e!4393106))))

(declare-fun call!669049 () Bool)

(assert (=> b!7336441 (= res!2964355 call!669049)))

(assert (=> b!7336441 (= e!4393107 e!4393106)))

(declare-fun bm!669044 () Bool)

(assert (=> bm!669044 (= call!669050 (validRegex!9681 (ite c!1362625 (regTwo!38683 r1!2370) (regOne!38682 r1!2370))))))

(declare-fun bm!669045 () Bool)

(assert (=> bm!669045 (= call!669049 call!669048)))

(declare-fun b!7336442 () Bool)

(declare-fun e!4393103 () Bool)

(declare-fun e!4393109 () Bool)

(assert (=> b!7336442 (= e!4393103 e!4393109)))

(assert (=> b!7336442 (= c!1362624 ((_ is Star!19085) r1!2370))))

(declare-fun b!7336443 () Bool)

(assert (=> b!7336443 (= e!4393108 call!669049)))

(declare-fun b!7336444 () Bool)

(assert (=> b!7336444 (= e!4393109 e!4393105)))

(declare-fun res!2964354 () Bool)

(declare-fun nullable!8183 (Regex!19085) Bool)

(assert (=> b!7336444 (= res!2964354 (not (nullable!8183 (reg!19414 r1!2370))))))

(assert (=> b!7336444 (=> (not res!2964354) (not e!4393105))))

(declare-fun b!7336439 () Bool)

(assert (=> b!7336439 (= e!4393109 e!4393107)))

(assert (=> b!7336439 (= c!1362625 ((_ is Union!19085) r1!2370))))

(declare-fun d!2278111 () Bool)

(declare-fun res!2964356 () Bool)

(assert (=> d!2278111 (=> res!2964356 e!4393103)))

(assert (=> d!2278111 (= res!2964356 ((_ is ElementMatch!19085) r1!2370))))

(assert (=> d!2278111 (= (validRegex!9681 r1!2370) e!4393103)))

(assert (= (and d!2278111 (not res!2964356)) b!7336442))

(assert (= (and b!7336442 c!1362624) b!7336444))

(assert (= (and b!7336442 (not c!1362624)) b!7336439))

(assert (= (and b!7336444 res!2964354) b!7336437))

(assert (= (and b!7336439 c!1362625) b!7336441))

(assert (= (and b!7336439 (not c!1362625)) b!7336436))

(assert (= (and b!7336441 res!2964355) b!7336440))

(assert (= (and b!7336436 (not res!2964353)) b!7336438))

(assert (= (and b!7336438 res!2964357) b!7336443))

(assert (= (or b!7336441 b!7336443) bm!669045))

(assert (= (or b!7336440 b!7336438) bm!669044))

(assert (= (or b!7336437 bm!669045) bm!669043))

(declare-fun m!8002082 () Bool)

(assert (=> bm!669043 m!8002082))

(declare-fun m!8002084 () Bool)

(assert (=> bm!669044 m!8002084))

(declare-fun m!8002086 () Bool)

(assert (=> b!7336444 m!8002086))

(assert (=> start!716632 d!2278111))

(declare-fun bs!1918054 () Bool)

(declare-fun d!2278113 () Bool)

(assert (= bs!1918054 (and d!2278113 b!7336395)))

(declare-fun lambda!455240 () Int)

(assert (=> bs!1918054 (= lambda!455240 lambda!455237)))

(assert (=> d!2278113 (= (inv!91052 cWitness!61) (forall!17919 (exprs!8525 cWitness!61) lambda!455240))))

(declare-fun bs!1918055 () Bool)

(assert (= bs!1918055 d!2278113))

(declare-fun m!8002088 () Bool)

(assert (=> bs!1918055 m!8002088))

(assert (=> start!716632 d!2278113))

(declare-fun bs!1918056 () Bool)

(declare-fun d!2278115 () Bool)

(assert (= bs!1918056 (and d!2278115 b!7336395)))

(declare-fun lambda!455241 () Int)

(assert (=> bs!1918056 (= lambda!455241 lambda!455237)))

(declare-fun bs!1918057 () Bool)

(assert (= bs!1918057 (and d!2278115 d!2278113)))

(assert (=> bs!1918057 (= lambda!455241 lambda!455240)))

(assert (=> d!2278115 (= (inv!91052 ct1!282) (forall!17919 (exprs!8525 ct1!282) lambda!455241))))

(declare-fun bs!1918058 () Bool)

(assert (= bs!1918058 d!2278115))

(declare-fun m!8002090 () Bool)

(assert (=> bs!1918058 m!8002090))

(assert (=> start!716632 d!2278115))

(declare-fun bs!1918059 () Bool)

(declare-fun d!2278117 () Bool)

(assert (= bs!1918059 (and d!2278117 b!7336395)))

(declare-fun lambda!455242 () Int)

(assert (=> bs!1918059 (= lambda!455242 lambda!455237)))

(declare-fun bs!1918060 () Bool)

(assert (= bs!1918060 (and d!2278117 d!2278113)))

(assert (=> bs!1918060 (= lambda!455242 lambda!455240)))

(declare-fun bs!1918061 () Bool)

(assert (= bs!1918061 (and d!2278117 d!2278115)))

(assert (=> bs!1918061 (= lambda!455242 lambda!455241)))

(assert (=> d!2278117 (= (inv!91052 ct2!378) (forall!17919 (exprs!8525 ct2!378) lambda!455242))))

(declare-fun bs!1918062 () Bool)

(assert (= bs!1918062 d!2278117))

(declare-fun m!8002100 () Bool)

(assert (=> bs!1918062 m!8002100))

(assert (=> start!716632 d!2278117))

(declare-fun d!2278121 () Bool)

(declare-fun res!2964364 () Bool)

(declare-fun e!4393126 () Bool)

(assert (=> d!2278121 (=> res!2964364 e!4393126)))

(assert (=> d!2278121 (= res!2964364 ((_ is Nil!71457) (exprs!8525 ct1!282)))))

(assert (=> d!2278121 (= (forall!17919 (exprs!8525 ct1!282) lambda!455237) e!4393126)))

(declare-fun b!7336471 () Bool)

(declare-fun e!4393127 () Bool)

(assert (=> b!7336471 (= e!4393126 e!4393127)))

(declare-fun res!2964365 () Bool)

(assert (=> b!7336471 (=> (not res!2964365) (not e!4393127))))

(declare-fun dynLambda!29434 (Int Regex!19085) Bool)

(assert (=> b!7336471 (= res!2964365 (dynLambda!29434 lambda!455237 (h!77905 (exprs!8525 ct1!282))))))

(declare-fun b!7336472 () Bool)

(assert (=> b!7336472 (= e!4393127 (forall!17919 (t!385976 (exprs!8525 ct1!282)) lambda!455237))))

(assert (= (and d!2278121 (not res!2964364)) b!7336471))

(assert (= (and b!7336471 res!2964365) b!7336472))

(declare-fun b_lambda!283739 () Bool)

(assert (=> (not b_lambda!283739) (not b!7336471)))

(declare-fun m!8002110 () Bool)

(assert (=> b!7336471 m!8002110))

(declare-fun m!8002112 () Bool)

(assert (=> b!7336472 m!8002112))

(assert (=> b!7336394 d!2278121))

(declare-fun b!7336531 () Bool)

(declare-fun e!4393168 () (InoxSet Context!16050))

(declare-fun e!4393167 () (InoxSet Context!16050))

(assert (=> b!7336531 (= e!4393168 e!4393167)))

(declare-fun c!1362654 () Bool)

(assert (=> b!7336531 (= c!1362654 ((_ is Union!19085) r1!2370))))

(declare-fun b!7336532 () Bool)

(declare-fun c!1362655 () Bool)

(declare-fun e!4393169 () Bool)

(assert (=> b!7336532 (= c!1362655 e!4393169)))

(declare-fun res!2964390 () Bool)

(assert (=> b!7336532 (=> (not res!2964390) (not e!4393169))))

(assert (=> b!7336532 (= res!2964390 ((_ is Concat!27930) r1!2370))))

(declare-fun e!4393166 () (InoxSet Context!16050))

(assert (=> b!7336532 (= e!4393167 e!4393166)))

(declare-fun b!7336533 () Bool)

(declare-fun e!4393170 () (InoxSet Context!16050))

(declare-fun call!669079 () (InoxSet Context!16050))

(assert (=> b!7336533 (= e!4393170 call!669079)))

(declare-fun b!7336534 () Bool)

(declare-fun call!669084 () (InoxSet Context!16050))

(declare-fun call!669080 () (InoxSet Context!16050))

(assert (=> b!7336534 (= e!4393167 ((_ map or) call!669084 call!669080))))

(declare-fun b!7336535 () Bool)

(declare-fun c!1362653 () Bool)

(assert (=> b!7336535 (= c!1362653 ((_ is Star!19085) r1!2370))))

(declare-fun e!4393171 () (InoxSet Context!16050))

(assert (=> b!7336535 (= e!4393171 e!4393170)))

(declare-fun b!7336536 () Bool)

(assert (=> b!7336536 (= e!4393170 ((as const (Array Context!16050 Bool)) false))))

(declare-fun bm!669074 () Bool)

(declare-fun call!669081 () List!71581)

(declare-fun c!1362657 () Bool)

(declare-fun $colon$colon!3089 (List!71581 Regex!19085) List!71581)

(assert (=> bm!669074 (= call!669081 ($colon$colon!3089 (exprs!8525 (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378)))) (ite (or c!1362655 c!1362657) (regTwo!38682 r1!2370) r1!2370)))))

(declare-fun bm!669075 () Bool)

(declare-fun call!669082 () (InoxSet Context!16050))

(assert (=> bm!669075 (= call!669082 call!669084)))

(declare-fun b!7336537 () Bool)

(assert (=> b!7336537 (= e!4393168 (store ((as const (Array Context!16050 Bool)) false) (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378))) true))))

(declare-fun d!2278125 () Bool)

(declare-fun c!1362656 () Bool)

(assert (=> d!2278125 (= c!1362656 (and ((_ is ElementMatch!19085) r1!2370) (= (c!1362609 r1!2370) c!10362)))))

(assert (=> d!2278125 (= (derivationStepZipperDown!2911 r1!2370 (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378))) c!10362) e!4393168)))

(declare-fun bm!669076 () Bool)

(assert (=> bm!669076 (= call!669080 (derivationStepZipperDown!2911 (ite c!1362654 (regTwo!38683 r1!2370) (regOne!38682 r1!2370)) (ite c!1362654 (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378))) (Context!16051 call!669081)) c!10362))))

(declare-fun bm!669077 () Bool)

(assert (=> bm!669077 (= call!669079 call!669082)))

(declare-fun b!7336538 () Bool)

(assert (=> b!7336538 (= e!4393166 ((_ map or) call!669080 call!669082))))

(declare-fun bm!669078 () Bool)

(declare-fun call!669083 () List!71581)

(assert (=> bm!669078 (= call!669083 call!669081)))

(declare-fun b!7336539 () Bool)

(assert (=> b!7336539 (= e!4393166 e!4393171)))

(assert (=> b!7336539 (= c!1362657 ((_ is Concat!27930) r1!2370))))

(declare-fun b!7336540 () Bool)

(assert (=> b!7336540 (= e!4393171 call!669079)))

(declare-fun bm!669079 () Bool)

(assert (=> bm!669079 (= call!669084 (derivationStepZipperDown!2911 (ite c!1362654 (regOne!38683 r1!2370) (ite c!1362655 (regTwo!38682 r1!2370) (ite c!1362657 (regOne!38682 r1!2370) (reg!19414 r1!2370)))) (ite (or c!1362654 c!1362655) (Context!16051 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378))) (Context!16051 call!669083)) c!10362))))

(declare-fun b!7336541 () Bool)

(assert (=> b!7336541 (= e!4393169 (nullable!8183 (regOne!38682 r1!2370)))))

(assert (= (and d!2278125 c!1362656) b!7336537))

(assert (= (and d!2278125 (not c!1362656)) b!7336531))

(assert (= (and b!7336531 c!1362654) b!7336534))

(assert (= (and b!7336531 (not c!1362654)) b!7336532))

(assert (= (and b!7336532 res!2964390) b!7336541))

(assert (= (and b!7336532 c!1362655) b!7336538))

(assert (= (and b!7336532 (not c!1362655)) b!7336539))

(assert (= (and b!7336539 c!1362657) b!7336540))

(assert (= (and b!7336539 (not c!1362657)) b!7336535))

(assert (= (and b!7336535 c!1362653) b!7336533))

(assert (= (and b!7336535 (not c!1362653)) b!7336536))

(assert (= (or b!7336540 b!7336533) bm!669078))

(assert (= (or b!7336540 b!7336533) bm!669077))

(assert (= (or b!7336538 bm!669077) bm!669075))

(assert (= (or b!7336538 bm!669078) bm!669074))

(assert (= (or b!7336534 b!7336538) bm!669076))

(assert (= (or b!7336534 bm!669075) bm!669079))

(declare-fun m!8002136 () Bool)

(assert (=> b!7336541 m!8002136))

(declare-fun m!8002138 () Bool)

(assert (=> bm!669076 m!8002138))

(declare-fun m!8002140 () Bool)

(assert (=> bm!669074 m!8002140))

(declare-fun m!8002142 () Bool)

(assert (=> b!7336537 m!8002142))

(declare-fun m!8002144 () Bool)

(assert (=> bm!669079 m!8002144))

(assert (=> b!7336395 d!2278125))

(declare-fun b!7336562 () Bool)

(declare-fun e!4393184 () Bool)

(declare-fun lt!2609306 () List!71581)

(assert (=> b!7336562 (= e!4393184 (or (not (= (exprs!8525 ct2!378) Nil!71457)) (= lt!2609306 (exprs!8525 ct1!282))))))

(declare-fun b!7336561 () Bool)

(declare-fun res!2964400 () Bool)

(assert (=> b!7336561 (=> (not res!2964400) (not e!4393184))))

(declare-fun size!41985 (List!71581) Int)

(assert (=> b!7336561 (= res!2964400 (= (size!41985 lt!2609306) (+ (size!41985 (exprs!8525 ct1!282)) (size!41985 (exprs!8525 ct2!378)))))))

(declare-fun b!7336560 () Bool)

(declare-fun e!4393183 () List!71581)

(assert (=> b!7336560 (= e!4393183 (Cons!71457 (h!77905 (exprs!8525 ct1!282)) (++!16903 (t!385976 (exprs!8525 ct1!282)) (exprs!8525 ct2!378))))))

(declare-fun b!7336559 () Bool)

(assert (=> b!7336559 (= e!4393183 (exprs!8525 ct2!378))))

(declare-fun d!2278133 () Bool)

(assert (=> d!2278133 e!4393184))

(declare-fun res!2964401 () Bool)

(assert (=> d!2278133 (=> (not res!2964401) (not e!4393184))))

(declare-fun content!15006 (List!71581) (InoxSet Regex!19085))

(assert (=> d!2278133 (= res!2964401 (= (content!15006 lt!2609306) ((_ map or) (content!15006 (exprs!8525 ct1!282)) (content!15006 (exprs!8525 ct2!378)))))))

(assert (=> d!2278133 (= lt!2609306 e!4393183)))

(declare-fun c!1362662 () Bool)

(assert (=> d!2278133 (= c!1362662 ((_ is Nil!71457) (exprs!8525 ct1!282)))))

(assert (=> d!2278133 (= (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378)) lt!2609306)))

(assert (= (and d!2278133 c!1362662) b!7336559))

(assert (= (and d!2278133 (not c!1362662)) b!7336560))

(assert (= (and d!2278133 res!2964401) b!7336561))

(assert (= (and b!7336561 res!2964400) b!7336562))

(declare-fun m!8002158 () Bool)

(assert (=> b!7336561 m!8002158))

(declare-fun m!8002160 () Bool)

(assert (=> b!7336561 m!8002160))

(declare-fun m!8002162 () Bool)

(assert (=> b!7336561 m!8002162))

(declare-fun m!8002164 () Bool)

(assert (=> b!7336560 m!8002164))

(declare-fun m!8002166 () Bool)

(assert (=> d!2278133 m!8002166))

(declare-fun m!8002168 () Bool)

(assert (=> d!2278133 m!8002168))

(declare-fun m!8002170 () Bool)

(assert (=> d!2278133 m!8002170))

(assert (=> b!7336395 d!2278133))

(declare-fun d!2278141 () Bool)

(assert (=> d!2278141 (forall!17919 (++!16903 (exprs!8525 ct1!282) (exprs!8525 ct2!378)) lambda!455237)))

(declare-fun lt!2609309 () Unit!165123)

(declare-fun choose!57068 (List!71581 List!71581 Int) Unit!165123)

(assert (=> d!2278141 (= lt!2609309 (choose!57068 (exprs!8525 ct1!282) (exprs!8525 ct2!378) lambda!455237))))

(assert (=> d!2278141 (forall!17919 (exprs!8525 ct1!282) lambda!455237)))

(assert (=> d!2278141 (= (lemmaConcatPreservesForall!1760 (exprs!8525 ct1!282) (exprs!8525 ct2!378) lambda!455237) lt!2609309)))

(declare-fun bs!1918073 () Bool)

(assert (= bs!1918073 d!2278141))

(assert (=> bs!1918073 m!8002070))

(assert (=> bs!1918073 m!8002070))

(declare-fun m!8002172 () Bool)

(assert (=> bs!1918073 m!8002172))

(declare-fun m!8002174 () Bool)

(assert (=> bs!1918073 m!8002174))

(assert (=> bs!1918073 m!8002080))

(assert (=> b!7336395 d!2278141))

(declare-fun b!7336600 () Bool)

(declare-fun e!4393199 () (InoxSet Context!16050))

(declare-fun e!4393198 () (InoxSet Context!16050))

(assert (=> b!7336600 (= e!4393199 e!4393198)))

(declare-fun c!1362664 () Bool)

(assert (=> b!7336600 (= c!1362664 ((_ is Union!19085) r1!2370))))

(declare-fun b!7336601 () Bool)

(declare-fun c!1362665 () Bool)

(declare-fun e!4393200 () Bool)

(assert (=> b!7336601 (= c!1362665 e!4393200)))

(declare-fun res!2964402 () Bool)

(assert (=> b!7336601 (=> (not res!2964402) (not e!4393200))))

(assert (=> b!7336601 (= res!2964402 ((_ is Concat!27930) r1!2370))))

(declare-fun e!4393197 () (InoxSet Context!16050))

(assert (=> b!7336601 (= e!4393198 e!4393197)))

(declare-fun b!7336602 () Bool)

(declare-fun e!4393201 () (InoxSet Context!16050))

(declare-fun call!669090 () (InoxSet Context!16050))

(assert (=> b!7336602 (= e!4393201 call!669090)))

(declare-fun b!7336603 () Bool)

(declare-fun call!669095 () (InoxSet Context!16050))

(declare-fun call!669091 () (InoxSet Context!16050))

(assert (=> b!7336603 (= e!4393198 ((_ map or) call!669095 call!669091))))

(declare-fun b!7336604 () Bool)

(declare-fun c!1362663 () Bool)

(assert (=> b!7336604 (= c!1362663 ((_ is Star!19085) r1!2370))))

(declare-fun e!4393202 () (InoxSet Context!16050))

(assert (=> b!7336604 (= e!4393202 e!4393201)))

(declare-fun b!7336605 () Bool)

(assert (=> b!7336605 (= e!4393201 ((as const (Array Context!16050 Bool)) false))))

(declare-fun c!1362667 () Bool)

(declare-fun call!669092 () List!71581)

(declare-fun bm!669085 () Bool)

(assert (=> bm!669085 (= call!669092 ($colon$colon!3089 (exprs!8525 ct1!282) (ite (or c!1362665 c!1362667) (regTwo!38682 r1!2370) r1!2370)))))

(declare-fun bm!669086 () Bool)

(declare-fun call!669093 () (InoxSet Context!16050))

(assert (=> bm!669086 (= call!669093 call!669095)))

(declare-fun b!7336606 () Bool)

(assert (=> b!7336606 (= e!4393199 (store ((as const (Array Context!16050 Bool)) false) ct1!282 true))))

(declare-fun d!2278145 () Bool)

(declare-fun c!1362666 () Bool)

(assert (=> d!2278145 (= c!1362666 (and ((_ is ElementMatch!19085) r1!2370) (= (c!1362609 r1!2370) c!10362)))))

(assert (=> d!2278145 (= (derivationStepZipperDown!2911 r1!2370 ct1!282 c!10362) e!4393199)))

(declare-fun bm!669087 () Bool)

(assert (=> bm!669087 (= call!669091 (derivationStepZipperDown!2911 (ite c!1362664 (regTwo!38683 r1!2370) (regOne!38682 r1!2370)) (ite c!1362664 ct1!282 (Context!16051 call!669092)) c!10362))))

(declare-fun bm!669088 () Bool)

(assert (=> bm!669088 (= call!669090 call!669093)))

(declare-fun b!7336607 () Bool)

(assert (=> b!7336607 (= e!4393197 ((_ map or) call!669091 call!669093))))

(declare-fun bm!669089 () Bool)

(declare-fun call!669094 () List!71581)

(assert (=> bm!669089 (= call!669094 call!669092)))

(declare-fun b!7336608 () Bool)

(assert (=> b!7336608 (= e!4393197 e!4393202)))

(assert (=> b!7336608 (= c!1362667 ((_ is Concat!27930) r1!2370))))

(declare-fun b!7336609 () Bool)

(assert (=> b!7336609 (= e!4393202 call!669090)))

(declare-fun bm!669090 () Bool)

(assert (=> bm!669090 (= call!669095 (derivationStepZipperDown!2911 (ite c!1362664 (regOne!38683 r1!2370) (ite c!1362665 (regTwo!38682 r1!2370) (ite c!1362667 (regOne!38682 r1!2370) (reg!19414 r1!2370)))) (ite (or c!1362664 c!1362665) ct1!282 (Context!16051 call!669094)) c!10362))))

(declare-fun b!7336610 () Bool)

(assert (=> b!7336610 (= e!4393200 (nullable!8183 (regOne!38682 r1!2370)))))

(assert (= (and d!2278145 c!1362666) b!7336606))

(assert (= (and d!2278145 (not c!1362666)) b!7336600))

(assert (= (and b!7336600 c!1362664) b!7336603))

(assert (= (and b!7336600 (not c!1362664)) b!7336601))

(assert (= (and b!7336601 res!2964402) b!7336610))

(assert (= (and b!7336601 c!1362665) b!7336607))

(assert (= (and b!7336601 (not c!1362665)) b!7336608))

(assert (= (and b!7336608 c!1362667) b!7336609))

(assert (= (and b!7336608 (not c!1362667)) b!7336604))

(assert (= (and b!7336604 c!1362663) b!7336602))

(assert (= (and b!7336604 (not c!1362663)) b!7336605))

(assert (= (or b!7336609 b!7336602) bm!669089))

(assert (= (or b!7336609 b!7336602) bm!669088))

(assert (= (or b!7336607 bm!669088) bm!669086))

(assert (= (or b!7336607 bm!669089) bm!669085))

(assert (= (or b!7336603 b!7336607) bm!669087))

(assert (= (or b!7336603 bm!669086) bm!669090))

(assert (=> b!7336610 m!8002136))

(declare-fun m!8002178 () Bool)

(assert (=> bm!669087 m!8002178))

(declare-fun m!8002180 () Bool)

(assert (=> bm!669085 m!8002180))

(assert (=> b!7336606 m!8002068))

(declare-fun m!8002182 () Bool)

(assert (=> bm!669090 m!8002182))

(assert (=> b!7336385 d!2278145))

(declare-fun b!7336615 () Bool)

(declare-fun e!4393205 () Bool)

(declare-fun tp!2082727 () Bool)

(declare-fun tp!2082728 () Bool)

(assert (=> b!7336615 (= e!4393205 (and tp!2082727 tp!2082728))))

(assert (=> b!7336393 (= tp!2082676 e!4393205)))

(assert (= (and b!7336393 ((_ is Cons!71457) (exprs!8525 ct2!378))) b!7336615))

(declare-fun b!7336616 () Bool)

(declare-fun e!4393206 () Bool)

(declare-fun tp!2082729 () Bool)

(declare-fun tp!2082730 () Bool)

(assert (=> b!7336616 (= e!4393206 (and tp!2082729 tp!2082730))))

(assert (=> b!7336389 (= tp!2082672 e!4393206)))

(assert (= (and b!7336389 ((_ is Cons!71457) (exprs!8525 ct1!282))) b!7336616))

(declare-fun b!7336617 () Bool)

(declare-fun e!4393207 () Bool)

(declare-fun tp!2082731 () Bool)

(declare-fun tp!2082732 () Bool)

(assert (=> b!7336617 (= e!4393207 (and tp!2082731 tp!2082732))))

(assert (=> b!7336391 (= tp!2082671 e!4393207)))

(assert (= (and b!7336391 ((_ is Cons!71457) (exprs!8525 cWitness!61))) b!7336617))

(declare-fun b!7336630 () Bool)

(declare-fun e!4393210 () Bool)

(declare-fun tp!2082745 () Bool)

(assert (=> b!7336630 (= e!4393210 tp!2082745)))

(declare-fun b!7336629 () Bool)

(declare-fun tp!2082743 () Bool)

(declare-fun tp!2082744 () Bool)

(assert (=> b!7336629 (= e!4393210 (and tp!2082743 tp!2082744))))

(declare-fun b!7336631 () Bool)

(declare-fun tp!2082746 () Bool)

(declare-fun tp!2082747 () Bool)

(assert (=> b!7336631 (= e!4393210 (and tp!2082746 tp!2082747))))

(declare-fun b!7336628 () Bool)

(assert (=> b!7336628 (= e!4393210 tp_is_empty!48415)))

(assert (=> b!7336386 (= tp!2082677 e!4393210)))

(assert (= (and b!7336386 ((_ is ElementMatch!19085) (regOne!38682 r1!2370))) b!7336628))

(assert (= (and b!7336386 ((_ is Concat!27930) (regOne!38682 r1!2370))) b!7336629))

(assert (= (and b!7336386 ((_ is Star!19085) (regOne!38682 r1!2370))) b!7336630))

(assert (= (and b!7336386 ((_ is Union!19085) (regOne!38682 r1!2370))) b!7336631))

(declare-fun b!7336634 () Bool)

(declare-fun e!4393211 () Bool)

(declare-fun tp!2082750 () Bool)

(assert (=> b!7336634 (= e!4393211 tp!2082750)))

(declare-fun b!7336633 () Bool)

(declare-fun tp!2082748 () Bool)

(declare-fun tp!2082749 () Bool)

(assert (=> b!7336633 (= e!4393211 (and tp!2082748 tp!2082749))))

(declare-fun b!7336635 () Bool)

(declare-fun tp!2082751 () Bool)

(declare-fun tp!2082752 () Bool)

(assert (=> b!7336635 (= e!4393211 (and tp!2082751 tp!2082752))))

(declare-fun b!7336632 () Bool)

(assert (=> b!7336632 (= e!4393211 tp_is_empty!48415)))

(assert (=> b!7336386 (= tp!2082675 e!4393211)))

(assert (= (and b!7336386 ((_ is ElementMatch!19085) (regTwo!38682 r1!2370))) b!7336632))

(assert (= (and b!7336386 ((_ is Concat!27930) (regTwo!38682 r1!2370))) b!7336633))

(assert (= (and b!7336386 ((_ is Star!19085) (regTwo!38682 r1!2370))) b!7336634))

(assert (= (and b!7336386 ((_ is Union!19085) (regTwo!38682 r1!2370))) b!7336635))

(declare-fun b!7336638 () Bool)

(declare-fun e!4393212 () Bool)

(declare-fun tp!2082755 () Bool)

(assert (=> b!7336638 (= e!4393212 tp!2082755)))

(declare-fun b!7336637 () Bool)

(declare-fun tp!2082753 () Bool)

(declare-fun tp!2082754 () Bool)

(assert (=> b!7336637 (= e!4393212 (and tp!2082753 tp!2082754))))

(declare-fun b!7336639 () Bool)

(declare-fun tp!2082756 () Bool)

(declare-fun tp!2082757 () Bool)

(assert (=> b!7336639 (= e!4393212 (and tp!2082756 tp!2082757))))

(declare-fun b!7336636 () Bool)

(assert (=> b!7336636 (= e!4393212 tp_is_empty!48415)))

(assert (=> b!7336392 (= tp!2082670 e!4393212)))

(assert (= (and b!7336392 ((_ is ElementMatch!19085) (regOne!38683 r1!2370))) b!7336636))

(assert (= (and b!7336392 ((_ is Concat!27930) (regOne!38683 r1!2370))) b!7336637))

(assert (= (and b!7336392 ((_ is Star!19085) (regOne!38683 r1!2370))) b!7336638))

(assert (= (and b!7336392 ((_ is Union!19085) (regOne!38683 r1!2370))) b!7336639))

(declare-fun b!7336642 () Bool)

(declare-fun e!4393213 () Bool)

(declare-fun tp!2082760 () Bool)

(assert (=> b!7336642 (= e!4393213 tp!2082760)))

(declare-fun b!7336641 () Bool)

(declare-fun tp!2082758 () Bool)

(declare-fun tp!2082759 () Bool)

(assert (=> b!7336641 (= e!4393213 (and tp!2082758 tp!2082759))))

(declare-fun b!7336643 () Bool)

(declare-fun tp!2082761 () Bool)

(declare-fun tp!2082762 () Bool)

(assert (=> b!7336643 (= e!4393213 (and tp!2082761 tp!2082762))))

(declare-fun b!7336640 () Bool)

(assert (=> b!7336640 (= e!4393213 tp_is_empty!48415)))

(assert (=> b!7336392 (= tp!2082674 e!4393213)))

(assert (= (and b!7336392 ((_ is ElementMatch!19085) (regTwo!38683 r1!2370))) b!7336640))

(assert (= (and b!7336392 ((_ is Concat!27930) (regTwo!38683 r1!2370))) b!7336641))

(assert (= (and b!7336392 ((_ is Star!19085) (regTwo!38683 r1!2370))) b!7336642))

(assert (= (and b!7336392 ((_ is Union!19085) (regTwo!38683 r1!2370))) b!7336643))

(declare-fun b!7336646 () Bool)

(declare-fun e!4393214 () Bool)

(declare-fun tp!2082765 () Bool)

(assert (=> b!7336646 (= e!4393214 tp!2082765)))

(declare-fun b!7336645 () Bool)

(declare-fun tp!2082763 () Bool)

(declare-fun tp!2082764 () Bool)

(assert (=> b!7336645 (= e!4393214 (and tp!2082763 tp!2082764))))

(declare-fun b!7336647 () Bool)

(declare-fun tp!2082766 () Bool)

(declare-fun tp!2082767 () Bool)

(assert (=> b!7336647 (= e!4393214 (and tp!2082766 tp!2082767))))

(declare-fun b!7336644 () Bool)

(assert (=> b!7336644 (= e!4393214 tp_is_empty!48415)))

(assert (=> b!7336387 (= tp!2082673 e!4393214)))

(assert (= (and b!7336387 ((_ is ElementMatch!19085) (reg!19414 r1!2370))) b!7336644))

(assert (= (and b!7336387 ((_ is Concat!27930) (reg!19414 r1!2370))) b!7336645))

(assert (= (and b!7336387 ((_ is Star!19085) (reg!19414 r1!2370))) b!7336646))

(assert (= (and b!7336387 ((_ is Union!19085) (reg!19414 r1!2370))) b!7336647))

(declare-fun b_lambda!283745 () Bool)

(assert (= b_lambda!283739 (or b!7336395 b_lambda!283745)))

(declare-fun bs!1918075 () Bool)

(declare-fun d!2278147 () Bool)

(assert (= bs!1918075 (and d!2278147 b!7336395)))

(assert (=> bs!1918075 (= (dynLambda!29434 lambda!455237 (h!77905 (exprs!8525 ct1!282))) (validRegex!9681 (h!77905 (exprs!8525 ct1!282))))))

(declare-fun m!8002184 () Bool)

(assert (=> bs!1918075 m!8002184))

(assert (=> b!7336471 d!2278147))

(check-sat (not b!7336638) (not bm!669079) (not b_lambda!283745) (not d!2278141) (not d!2278115) (not d!2278117) (not b!7336643) (not d!2278113) (not b!7336616) tp_is_empty!48415 (not b!7336635) (not b!7336615) (not b!7336444) (not bm!669090) (not b!7336541) (not b!7336560) (not b!7336637) (not b!7336472) (not bm!669043) (not b!7336647) (not bm!669074) (not bm!669044) (not b!7336639) (not b!7336610) (not b!7336561) (not bm!669085) (not b!7336642) (not bm!669087) (not b!7336633) (not b!7336646) (not bm!669076) (not b!7336617) (not b!7336645) (not b!7336630) (not d!2278133) (not b!7336629) (not b!7336631) (not bs!1918075) (not b!7336641) (not b!7336634))
(check-sat)
