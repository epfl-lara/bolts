; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716246 () Bool)

(assert start!716246)

(declare-fun res!2963488 () Bool)

(declare-fun e!4391328 () Bool)

(assert (=> start!716246 (=> (not res!2963488) (not e!4391328))))

(declare-datatypes ((C!38398 0))(
  ( (C!38399 (val!29559 Int)) )
))
(declare-datatypes ((Regex!19062 0))(
  ( (ElementMatch!19062 (c!1361866 C!38398)) (Concat!27907 (regOne!38636 Regex!19062) (regTwo!38636 Regex!19062)) (EmptyExpr!19062) (Star!19062 (reg!19391 Regex!19062)) (EmptyLang!19062) (Union!19062 (regOne!38637 Regex!19062) (regTwo!38637 Regex!19062)) )
))
(declare-datatypes ((List!71558 0))(
  ( (Nil!71434) (Cons!71434 (h!77882 Regex!19062) (t!385949 List!71558)) )
))
(declare-datatypes ((Context!16004 0))(
  ( (Context!16005 (exprs!8502 List!71558)) )
))
(declare-fun cWitness!35 () Context!16004)

(declare-fun lt!2608647 () (Set Context!16004))

(assert (=> start!716246 (= res!2963488 (set.member cWitness!35 lt!2608647))))

(declare-fun ct1!256 () Context!16004)

(declare-fun c!10305 () C!38398)

(declare-fun derivationStepZipperUp!2742 (Context!16004 C!38398) (Set Context!16004))

(assert (=> start!716246 (= lt!2608647 (derivationStepZipperUp!2742 ct1!256 c!10305))))

(assert (=> start!716246 e!4391328))

(declare-fun tp_is_empty!48369 () Bool)

(assert (=> start!716246 tp_is_empty!48369))

(declare-fun e!4391327 () Bool)

(declare-fun inv!90996 (Context!16004) Bool)

(assert (=> start!716246 (and (inv!90996 cWitness!35) e!4391327)))

(declare-fun e!4391330 () Bool)

(assert (=> start!716246 (and (inv!90996 ct1!256) e!4391330)))

(declare-fun ct2!352 () Context!16004)

(declare-fun e!4391326 () Bool)

(assert (=> start!716246 (and (inv!90996 ct2!352) e!4391326)))

(declare-fun b!7333458 () Bool)

(declare-fun e!4391325 () Bool)

(declare-fun e!4391329 () Bool)

(assert (=> b!7333458 (= e!4391325 e!4391329)))

(declare-fun res!2963487 () Bool)

(assert (=> b!7333458 (=> (not res!2963487) (not e!4391329))))

(declare-fun nullable!8163 (Regex!19062) Bool)

(assert (=> b!7333458 (= res!2963487 (not (nullable!8163 (h!77882 (exprs!8502 ct1!256)))))))

(declare-fun lt!2608645 () (Set Context!16004))

(declare-fun derivationStepZipperDown!2889 (Regex!19062 Context!16004 C!38398) (Set Context!16004))

(declare-fun tail!14743 (List!71558) List!71558)

(assert (=> b!7333458 (= lt!2608645 (derivationStepZipperDown!2889 (h!77882 (exprs!8502 ct1!256)) (Context!16005 (tail!14743 (exprs!8502 ct1!256))) c!10305))))

(declare-fun b!7333459 () Bool)

(declare-fun tp!2081896 () Bool)

(assert (=> b!7333459 (= e!4391330 tp!2081896)))

(declare-fun b!7333460 () Bool)

(declare-fun tp!2081895 () Bool)

(assert (=> b!7333460 (= e!4391326 tp!2081895)))

(declare-fun b!7333461 () Bool)

(declare-fun res!2963485 () Bool)

(assert (=> b!7333461 (=> (not res!2963485) (not e!4391325))))

(declare-fun isEmpty!40974 (List!71558) Bool)

(assert (=> b!7333461 (= res!2963485 (not (isEmpty!40974 (exprs!8502 ct1!256))))))

(declare-fun b!7333462 () Bool)

(declare-fun tp!2081894 () Bool)

(assert (=> b!7333462 (= e!4391327 tp!2081894)))

(declare-fun b!7333463 () Bool)

(assert (=> b!7333463 (= e!4391328 e!4391325)))

(declare-fun res!2963486 () Bool)

(assert (=> b!7333463 (=> (not res!2963486) (not e!4391325))))

(assert (=> b!7333463 (= res!2963486 (is-Cons!71434 (exprs!8502 ct1!256)))))

(declare-fun lt!2608646 () List!71558)

(declare-fun ++!16884 (List!71558 List!71558) List!71558)

(assert (=> b!7333463 (= lt!2608646 (++!16884 (exprs!8502 ct1!256) (exprs!8502 ct2!352)))))

(declare-datatypes ((Unit!165085 0))(
  ( (Unit!165086) )
))
(declare-fun lt!2608644 () Unit!165085)

(declare-fun lambda!454956 () Int)

(declare-fun lemmaConcatPreservesForall!1741 (List!71558 List!71558 Int) Unit!165085)

(assert (=> b!7333463 (= lt!2608644 (lemmaConcatPreservesForall!1741 (exprs!8502 ct1!256) (exprs!8502 ct2!352) lambda!454956))))

(declare-fun b!7333464 () Bool)

(assert (=> b!7333464 (= e!4391329 (isEmpty!40974 lt!2608646))))

(declare-fun b!7333465 () Bool)

(declare-fun res!2963489 () Bool)

(assert (=> b!7333465 (=> (not res!2963489) (not e!4391329))))

(assert (=> b!7333465 (= res!2963489 (and (= lt!2608647 lt!2608645) (set.member cWitness!35 lt!2608645)))))

(assert (= (and start!716246 res!2963488) b!7333463))

(assert (= (and b!7333463 res!2963486) b!7333461))

(assert (= (and b!7333461 res!2963485) b!7333458))

(assert (= (and b!7333458 res!2963487) b!7333465))

(assert (= (and b!7333465 res!2963489) b!7333464))

(assert (= start!716246 b!7333462))

(assert (= start!716246 b!7333459))

(assert (= start!716246 b!7333460))

(declare-fun m!7999598 () Bool)

(assert (=> b!7333464 m!7999598))

(declare-fun m!7999600 () Bool)

(assert (=> b!7333461 m!7999600))

(declare-fun m!7999602 () Bool)

(assert (=> b!7333465 m!7999602))

(declare-fun m!7999604 () Bool)

(assert (=> b!7333463 m!7999604))

(declare-fun m!7999606 () Bool)

(assert (=> b!7333463 m!7999606))

(declare-fun m!7999608 () Bool)

(assert (=> start!716246 m!7999608))

(declare-fun m!7999610 () Bool)

(assert (=> start!716246 m!7999610))

(declare-fun m!7999612 () Bool)

(assert (=> start!716246 m!7999612))

(declare-fun m!7999614 () Bool)

(assert (=> start!716246 m!7999614))

(declare-fun m!7999616 () Bool)

(assert (=> start!716246 m!7999616))

(declare-fun m!7999618 () Bool)

(assert (=> b!7333458 m!7999618))

(declare-fun m!7999620 () Bool)

(assert (=> b!7333458 m!7999620))

(declare-fun m!7999622 () Bool)

(assert (=> b!7333458 m!7999622))

(push 1)

(assert tp_is_empty!48369)

(assert (not b!7333460))

(assert (not start!716246))

(assert (not b!7333464))

(assert (not b!7333458))

(assert (not b!7333462))

(assert (not b!7333459))

(assert (not b!7333463))

(assert (not b!7333461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277316 () Bool)

(assert (=> d!2277316 (= (isEmpty!40974 lt!2608646) (is-Nil!71434 lt!2608646))))

(assert (=> b!7333464 d!2277316))

(declare-fun d!2277318 () Bool)

(declare-fun nullableFct!3254 (Regex!19062) Bool)

(assert (=> d!2277318 (= (nullable!8163 (h!77882 (exprs!8502 ct1!256))) (nullableFct!3254 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun bs!1917702 () Bool)

(assert (= bs!1917702 d!2277318))

(declare-fun m!7999650 () Bool)

(assert (=> bs!1917702 m!7999650))

(assert (=> b!7333458 d!2277318))

(declare-fun b!7333512 () Bool)

(declare-fun c!1361880 () Bool)

(declare-fun e!4391366 () Bool)

(assert (=> b!7333512 (= c!1361880 e!4391366)))

(declare-fun res!2963507 () Bool)

(assert (=> b!7333512 (=> (not res!2963507) (not e!4391366))))

(assert (=> b!7333512 (= res!2963507 (is-Concat!27907 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun e!4391363 () (Set Context!16004))

(declare-fun e!4391362 () (Set Context!16004))

(assert (=> b!7333512 (= e!4391363 e!4391362)))

(declare-fun b!7333513 () Bool)

(declare-fun e!4391361 () (Set Context!16004))

(assert (=> b!7333513 (= e!4391361 (set.insert (Context!16005 (tail!14743 (exprs!8502 ct1!256))) (as set.empty (Set Context!16004))))))

(declare-fun bm!668365 () Bool)

(declare-fun call!668373 () List!71558)

(declare-fun c!1361882 () Bool)

(declare-fun $colon$colon!3072 (List!71558 Regex!19062) List!71558)

(assert (=> bm!668365 (= call!668373 ($colon$colon!3072 (exprs!8502 (Context!16005 (tail!14743 (exprs!8502 ct1!256)))) (ite (or c!1361880 c!1361882) (regTwo!38636 (h!77882 (exprs!8502 ct1!256))) (h!77882 (exprs!8502 ct1!256)))))))

(declare-fun bm!668366 () Bool)

(declare-fun call!668372 () (Set Context!16004))

(declare-fun call!668375 () (Set Context!16004))

(assert (=> bm!668366 (= call!668372 call!668375)))

(declare-fun b!7333514 () Bool)

(declare-fun c!1361879 () Bool)

(assert (=> b!7333514 (= c!1361879 (is-Star!19062 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun e!4391364 () (Set Context!16004))

(declare-fun e!4391365 () (Set Context!16004))

(assert (=> b!7333514 (= e!4391364 e!4391365)))

(declare-fun bm!668367 () Bool)

(declare-fun call!668371 () List!71558)

(declare-fun c!1361878 () Bool)

(assert (=> bm!668367 (= call!668375 (derivationStepZipperDown!2889 (ite c!1361878 (regOne!38637 (h!77882 (exprs!8502 ct1!256))) (ite c!1361880 (regTwo!38636 (h!77882 (exprs!8502 ct1!256))) (ite c!1361882 (regOne!38636 (h!77882 (exprs!8502 ct1!256))) (reg!19391 (h!77882 (exprs!8502 ct1!256)))))) (ite (or c!1361878 c!1361880) (Context!16005 (tail!14743 (exprs!8502 ct1!256))) (Context!16005 call!668371)) c!10305))))

(declare-fun bm!668368 () Bool)

(declare-fun call!668374 () (Set Context!16004))

(assert (=> bm!668368 (= call!668374 call!668372)))

(declare-fun bm!668369 () Bool)

(assert (=> bm!668369 (= call!668371 call!668373)))

(declare-fun d!2277320 () Bool)

(declare-fun c!1361881 () Bool)

(assert (=> d!2277320 (= c!1361881 (and (is-ElementMatch!19062 (h!77882 (exprs!8502 ct1!256))) (= (c!1361866 (h!77882 (exprs!8502 ct1!256))) c!10305)))))

(assert (=> d!2277320 (= (derivationStepZipperDown!2889 (h!77882 (exprs!8502 ct1!256)) (Context!16005 (tail!14743 (exprs!8502 ct1!256))) c!10305) e!4391361)))

(declare-fun b!7333515 () Bool)

(declare-fun call!668370 () (Set Context!16004))

(assert (=> b!7333515 (= e!4391363 (set.union call!668375 call!668370))))

(declare-fun b!7333516 () Bool)

(assert (=> b!7333516 (= e!4391366 (nullable!8163 (regOne!38636 (h!77882 (exprs!8502 ct1!256)))))))

(declare-fun b!7333517 () Bool)

(assert (=> b!7333517 (= e!4391361 e!4391363)))

(assert (=> b!7333517 (= c!1361878 (is-Union!19062 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun b!7333518 () Bool)

(assert (=> b!7333518 (= e!4391365 (as set.empty (Set Context!16004)))))

(declare-fun b!7333519 () Bool)

(assert (=> b!7333519 (= e!4391364 call!668374)))

(declare-fun bm!668370 () Bool)

(assert (=> bm!668370 (= call!668370 (derivationStepZipperDown!2889 (ite c!1361878 (regTwo!38637 (h!77882 (exprs!8502 ct1!256))) (regOne!38636 (h!77882 (exprs!8502 ct1!256)))) (ite c!1361878 (Context!16005 (tail!14743 (exprs!8502 ct1!256))) (Context!16005 call!668373)) c!10305))))

(declare-fun b!7333520 () Bool)

(assert (=> b!7333520 (= e!4391365 call!668374)))

(declare-fun b!7333521 () Bool)

(assert (=> b!7333521 (= e!4391362 e!4391364)))

(assert (=> b!7333521 (= c!1361882 (is-Concat!27907 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun b!7333522 () Bool)

(assert (=> b!7333522 (= e!4391362 (set.union call!668370 call!668372))))

(assert (= (and d!2277320 c!1361881) b!7333513))

(assert (= (and d!2277320 (not c!1361881)) b!7333517))

(assert (= (and b!7333517 c!1361878) b!7333515))

(assert (= (and b!7333517 (not c!1361878)) b!7333512))

(assert (= (and b!7333512 res!2963507) b!7333516))

(assert (= (and b!7333512 c!1361880) b!7333522))

(assert (= (and b!7333512 (not c!1361880)) b!7333521))

(assert (= (and b!7333521 c!1361882) b!7333519))

(assert (= (and b!7333521 (not c!1361882)) b!7333514))

(assert (= (and b!7333514 c!1361879) b!7333520))

(assert (= (and b!7333514 (not c!1361879)) b!7333518))

(assert (= (or b!7333519 b!7333520) bm!668369))

(assert (= (or b!7333519 b!7333520) bm!668368))

(assert (= (or b!7333522 bm!668368) bm!668366))

(assert (= (or b!7333522 bm!668369) bm!668365))

(assert (= (or b!7333515 b!7333522) bm!668370))

(assert (= (or b!7333515 bm!668366) bm!668367))

(declare-fun m!7999654 () Bool)

(assert (=> b!7333516 m!7999654))

(declare-fun m!7999656 () Bool)

(assert (=> bm!668370 m!7999656))

(declare-fun m!7999658 () Bool)

(assert (=> bm!668367 m!7999658))

(declare-fun m!7999660 () Bool)

(assert (=> bm!668365 m!7999660))

(declare-fun m!7999662 () Bool)

(assert (=> b!7333513 m!7999662))

(assert (=> b!7333458 d!2277320))

(declare-fun d!2277326 () Bool)

(assert (=> d!2277326 (= (tail!14743 (exprs!8502 ct1!256)) (t!385949 (exprs!8502 ct1!256)))))

(assert (=> b!7333458 d!2277326))

(declare-fun b!7333553 () Bool)

(declare-fun e!4391384 () List!71558)

(assert (=> b!7333553 (= e!4391384 (exprs!8502 ct2!352))))

(declare-fun b!7333554 () Bool)

(assert (=> b!7333554 (= e!4391384 (Cons!71434 (h!77882 (exprs!8502 ct1!256)) (++!16884 (t!385949 (exprs!8502 ct1!256)) (exprs!8502 ct2!352))))))

(declare-fun b!7333555 () Bool)

(declare-fun res!2963515 () Bool)

(declare-fun e!4391383 () Bool)

(assert (=> b!7333555 (=> (not res!2963515) (not e!4391383))))

(declare-fun lt!2608662 () List!71558)

(declare-fun size!41969 (List!71558) Int)

(assert (=> b!7333555 (= res!2963515 (= (size!41969 lt!2608662) (+ (size!41969 (exprs!8502 ct1!256)) (size!41969 (exprs!8502 ct2!352)))))))

(declare-fun b!7333556 () Bool)

(assert (=> b!7333556 (= e!4391383 (or (not (= (exprs!8502 ct2!352) Nil!71434)) (= lt!2608662 (exprs!8502 ct1!256))))))

(declare-fun d!2277328 () Bool)

(assert (=> d!2277328 e!4391383))

(declare-fun res!2963514 () Bool)

(assert (=> d!2277328 (=> (not res!2963514) (not e!4391383))))

(declare-fun content!14990 (List!71558) (Set Regex!19062))

(assert (=> d!2277328 (= res!2963514 (= (content!14990 lt!2608662) (set.union (content!14990 (exprs!8502 ct1!256)) (content!14990 (exprs!8502 ct2!352)))))))

(assert (=> d!2277328 (= lt!2608662 e!4391384)))

(declare-fun c!1361895 () Bool)

(assert (=> d!2277328 (= c!1361895 (is-Nil!71434 (exprs!8502 ct1!256)))))

(assert (=> d!2277328 (= (++!16884 (exprs!8502 ct1!256) (exprs!8502 ct2!352)) lt!2608662)))

(assert (= (and d!2277328 c!1361895) b!7333553))

(assert (= (and d!2277328 (not c!1361895)) b!7333554))

(assert (= (and d!2277328 res!2963514) b!7333555))

(assert (= (and b!7333555 res!2963515) b!7333556))

(declare-fun m!7999664 () Bool)

(assert (=> b!7333554 m!7999664))

(declare-fun m!7999666 () Bool)

(assert (=> b!7333555 m!7999666))

(declare-fun m!7999668 () Bool)

(assert (=> b!7333555 m!7999668))

(declare-fun m!7999670 () Bool)

(assert (=> b!7333555 m!7999670))

(declare-fun m!7999672 () Bool)

(assert (=> d!2277328 m!7999672))

(declare-fun m!7999674 () Bool)

(assert (=> d!2277328 m!7999674))

(declare-fun m!7999676 () Bool)

(assert (=> d!2277328 m!7999676))

(assert (=> b!7333463 d!2277328))

(declare-fun d!2277330 () Bool)

(declare-fun forall!17899 (List!71558 Int) Bool)

(assert (=> d!2277330 (forall!17899 (++!16884 (exprs!8502 ct1!256) (exprs!8502 ct2!352)) lambda!454956)))

(declare-fun lt!2608665 () Unit!165085)

(declare-fun choose!57045 (List!71558 List!71558 Int) Unit!165085)

(assert (=> d!2277330 (= lt!2608665 (choose!57045 (exprs!8502 ct1!256) (exprs!8502 ct2!352) lambda!454956))))

(assert (=> d!2277330 (forall!17899 (exprs!8502 ct1!256) lambda!454956)))

(assert (=> d!2277330 (= (lemmaConcatPreservesForall!1741 (exprs!8502 ct1!256) (exprs!8502 ct2!352) lambda!454956) lt!2608665)))

(declare-fun bs!1917704 () Bool)

(assert (= bs!1917704 d!2277330))

(assert (=> bs!1917704 m!7999604))

(assert (=> bs!1917704 m!7999604))

(declare-fun m!7999678 () Bool)

(assert (=> bs!1917704 m!7999678))

(declare-fun m!7999680 () Bool)

(assert (=> bs!1917704 m!7999680))

(declare-fun m!7999682 () Bool)

(assert (=> bs!1917704 m!7999682))

(assert (=> b!7333463 d!2277330))

(declare-fun b!7333567 () Bool)

(declare-fun e!4391391 () (Set Context!16004))

(assert (=> b!7333567 (= e!4391391 (as set.empty (Set Context!16004)))))

(declare-fun b!7333568 () Bool)

(declare-fun e!4391392 () Bool)

(assert (=> b!7333568 (= e!4391392 (nullable!8163 (h!77882 (exprs!8502 ct1!256))))))

(declare-fun b!7333569 () Bool)

(declare-fun e!4391393 () (Set Context!16004))

(assert (=> b!7333569 (= e!4391393 e!4391391)))

(declare-fun c!1361900 () Bool)

(assert (=> b!7333569 (= c!1361900 (is-Cons!71434 (exprs!8502 ct1!256)))))

(declare-fun b!7333570 () Bool)

(declare-fun call!668390 () (Set Context!16004))

(assert (=> b!7333570 (= e!4391393 (set.union call!668390 (derivationStepZipperUp!2742 (Context!16005 (t!385949 (exprs!8502 ct1!256))) c!10305)))))

(declare-fun b!7333571 () Bool)

(assert (=> b!7333571 (= e!4391391 call!668390)))

(declare-fun d!2277332 () Bool)

(declare-fun c!1361901 () Bool)

(assert (=> d!2277332 (= c!1361901 e!4391392)))

(declare-fun res!2963518 () Bool)

(assert (=> d!2277332 (=> (not res!2963518) (not e!4391392))))

(assert (=> d!2277332 (= res!2963518 (is-Cons!71434 (exprs!8502 ct1!256)))))

(assert (=> d!2277332 (= (derivationStepZipperUp!2742 ct1!256 c!10305) e!4391393)))

(declare-fun bm!668385 () Bool)

(assert (=> bm!668385 (= call!668390 (derivationStepZipperDown!2889 (h!77882 (exprs!8502 ct1!256)) (Context!16005 (t!385949 (exprs!8502 ct1!256))) c!10305))))

(assert (= (and d!2277332 res!2963518) b!7333568))

(assert (= (and d!2277332 c!1361901) b!7333570))

(assert (= (and d!2277332 (not c!1361901)) b!7333569))

(assert (= (and b!7333569 c!1361900) b!7333571))

(assert (= (and b!7333569 (not c!1361900)) b!7333567))

(assert (= (or b!7333570 b!7333571) bm!668385))

(assert (=> b!7333568 m!7999618))

(declare-fun m!7999684 () Bool)

(assert (=> b!7333570 m!7999684))

(declare-fun m!7999686 () Bool)

(assert (=> bm!668385 m!7999686))

(assert (=> start!716246 d!2277332))

(declare-fun bs!1917705 () Bool)

(declare-fun d!2277334 () Bool)

(assert (= bs!1917705 (and d!2277334 b!7333463)))

(declare-fun lambda!454962 () Int)

(assert (=> bs!1917705 (= lambda!454962 lambda!454956)))

(assert (=> d!2277334 (= (inv!90996 cWitness!35) (forall!17899 (exprs!8502 cWitness!35) lambda!454962))))

(declare-fun bs!1917706 () Bool)

(assert (= bs!1917706 d!2277334))

(declare-fun m!7999688 () Bool)

(assert (=> bs!1917706 m!7999688))

(assert (=> start!716246 d!2277334))

(declare-fun bs!1917707 () Bool)

(declare-fun d!2277336 () Bool)

(assert (= bs!1917707 (and d!2277336 b!7333463)))

(declare-fun lambda!454963 () Int)

(assert (=> bs!1917707 (= lambda!454963 lambda!454956)))

(declare-fun bs!1917708 () Bool)

(assert (= bs!1917708 (and d!2277336 d!2277334)))

(assert (=> bs!1917708 (= lambda!454963 lambda!454962)))

(assert (=> d!2277336 (= (inv!90996 ct1!256) (forall!17899 (exprs!8502 ct1!256) lambda!454963))))

(declare-fun bs!1917709 () Bool)

(assert (= bs!1917709 d!2277336))

(declare-fun m!7999690 () Bool)

(assert (=> bs!1917709 m!7999690))

(assert (=> start!716246 d!2277336))

(declare-fun bs!1917710 () Bool)

(declare-fun d!2277338 () Bool)

(assert (= bs!1917710 (and d!2277338 b!7333463)))

(declare-fun lambda!454964 () Int)

(assert (=> bs!1917710 (= lambda!454964 lambda!454956)))

(declare-fun bs!1917711 () Bool)

(assert (= bs!1917711 (and d!2277338 d!2277334)))

(assert (=> bs!1917711 (= lambda!454964 lambda!454962)))

(declare-fun bs!1917712 () Bool)

(assert (= bs!1917712 (and d!2277338 d!2277336)))

(assert (=> bs!1917712 (= lambda!454964 lambda!454963)))

(assert (=> d!2277338 (= (inv!90996 ct2!352) (forall!17899 (exprs!8502 ct2!352) lambda!454964))))

(declare-fun bs!1917713 () Bool)

(assert (= bs!1917713 d!2277338))

(declare-fun m!7999692 () Bool)

(assert (=> bs!1917713 m!7999692))

(assert (=> start!716246 d!2277338))

(declare-fun d!2277340 () Bool)

(assert (=> d!2277340 (= (isEmpty!40974 (exprs!8502 ct1!256)) (is-Nil!71434 (exprs!8502 ct1!256)))))

(assert (=> b!7333461 d!2277340))

(declare-fun b!7333576 () Bool)

(declare-fun e!4391396 () Bool)

(declare-fun tp!2081910 () Bool)

(declare-fun tp!2081911 () Bool)

(assert (=> b!7333576 (= e!4391396 (and tp!2081910 tp!2081911))))

(assert (=> b!7333460 (= tp!2081895 e!4391396)))

(assert (= (and b!7333460 (is-Cons!71434 (exprs!8502 ct2!352))) b!7333576))

(declare-fun b!7333577 () Bool)

(declare-fun e!4391397 () Bool)

(declare-fun tp!2081912 () Bool)

(declare-fun tp!2081913 () Bool)

(assert (=> b!7333577 (= e!4391397 (and tp!2081912 tp!2081913))))

(assert (=> b!7333459 (= tp!2081896 e!4391397)))

(assert (= (and b!7333459 (is-Cons!71434 (exprs!8502 ct1!256))) b!7333577))

(declare-fun b!7333578 () Bool)

(declare-fun e!4391398 () Bool)

(declare-fun tp!2081914 () Bool)

(declare-fun tp!2081915 () Bool)

(assert (=> b!7333578 (= e!4391398 (and tp!2081914 tp!2081915))))

(assert (=> b!7333462 (= tp!2081894 e!4391398)))

(assert (= (and b!7333462 (is-Cons!71434 (exprs!8502 cWitness!35))) b!7333578))

(push 1)

(assert tp_is_empty!48369)

(assert (not b!7333555))

(assert (not bm!668385))

(assert (not b!7333554))

(assert (not bm!668365))

(assert (not bm!668370))

(assert (not b!7333577))

(assert (not b!7333578))

(assert (not d!2277330))

(assert (not d!2277334))

(assert (not d!2277336))

(assert (not b!7333576))

(assert (not d!2277318))

(assert (not d!2277338))

(assert (not bm!668367))

(assert (not b!7333516))

(assert (not d!2277328))

(assert (not b!7333568))

(assert (not b!7333570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

