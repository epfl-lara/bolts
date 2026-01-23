; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715298 () Bool)

(assert start!715298)

(declare-fun b!7327467 () Bool)

(declare-fun res!2961606 () Bool)

(declare-fun e!4387542 () Bool)

(assert (=> b!7327467 (=> (not res!2961606) (not e!4387542))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38288 0))(
  ( (C!38289 (val!29504 Int)) )
))
(declare-datatypes ((Regex!19007 0))(
  ( (ElementMatch!19007 (c!1360206 C!38288)) (Concat!27852 (regOne!38526 Regex!19007) (regTwo!38526 Regex!19007)) (EmptyExpr!19007) (Star!19007 (reg!19336 Regex!19007)) (EmptyLang!19007) (Union!19007 (regOne!38527 Regex!19007) (regTwo!38527 Regex!19007)) )
))
(declare-datatypes ((List!71503 0))(
  ( (Nil!71379) (Cons!71379 (h!77827 Regex!19007) (t!385890 List!71503)) )
))
(declare-datatypes ((Context!15894 0))(
  ( (Context!15895 (exprs!8447 List!71503)) )
))
(declare-fun lt!2606572 () (InoxSet Context!15894))

(declare-fun cWitness!35 () Context!15894)

(declare-fun lt!2606567 () (InoxSet Context!15894))

(assert (=> b!7327467 (= res!2961606 (and (= lt!2606572 lt!2606567) (select lt!2606567 cWitness!35)))))

(declare-fun b!7327468 () Bool)

(declare-fun e!4387540 () Bool)

(assert (=> b!7327468 (= e!4387540 e!4387542)))

(declare-fun res!2961610 () Bool)

(assert (=> b!7327468 (=> (not res!2961610) (not e!4387542))))

(declare-fun ct1!256 () Context!15894)

(declare-fun nullable!8111 (Regex!19007) Bool)

(assert (=> b!7327468 (= res!2961610 (not (nullable!8111 (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun c!10305 () C!38288)

(declare-fun lt!2606565 () Context!15894)

(declare-fun derivationStepZipperDown!2838 (Regex!19007 Context!15894 C!38288) (InoxSet Context!15894))

(assert (=> b!7327468 (= lt!2606567 (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) lt!2606565 c!10305))))

(declare-fun lt!2606564 () List!71503)

(assert (=> b!7327468 (= lt!2606565 (Context!15895 lt!2606564))))

(declare-fun tail!14696 (List!71503) List!71503)

(assert (=> b!7327468 (= lt!2606564 (tail!14696 (exprs!8447 ct1!256)))))

(declare-fun b!7327469 () Bool)

(declare-fun res!2961609 () Bool)

(assert (=> b!7327469 (=> (not res!2961609) (not e!4387542))))

(declare-fun lt!2606568 () List!71503)

(declare-fun isEmpty!40925 (List!71503) Bool)

(assert (=> b!7327469 (= res!2961609 (not (isEmpty!40925 lt!2606568)))))

(declare-fun b!7327470 () Bool)

(declare-fun lambda!454214 () Int)

(declare-fun forall!17856 (List!71503 Int) Bool)

(assert (=> b!7327470 (= e!4387542 (not (forall!17856 (exprs!8447 cWitness!35) lambda!454214)))))

(declare-fun ct2!352 () Context!15894)

(declare-fun ++!16831 (List!71503 List!71503) List!71503)

(assert (=> b!7327470 (select (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352))) c!10305) (Context!15895 (++!16831 (exprs!8447 cWitness!35) (exprs!8447 ct2!352))))))

(declare-datatypes ((Unit!164979 0))(
  ( (Unit!164980) )
))
(declare-fun lt!2606566 () Unit!164979)

(declare-fun lemmaConcatPreservesForall!1688 (List!71503 List!71503 Int) Unit!164979)

(assert (=> b!7327470 (= lt!2606566 (lemmaConcatPreservesForall!1688 lt!2606564 (exprs!8447 ct2!352) lambda!454214))))

(declare-fun lt!2606571 () Unit!164979)

(assert (=> b!7327470 (= lt!2606571 (lemmaConcatPreservesForall!1688 (exprs!8447 cWitness!35) (exprs!8447 ct2!352) lambda!454214))))

(declare-fun lt!2606569 () Unit!164979)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!14 (Regex!19007 Context!15894 Context!15894 Context!15894 C!38288) Unit!164979)

(assert (=> b!7327470 (= lt!2606569 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!14 (h!77827 (exprs!8447 ct1!256)) lt!2606565 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2606570 () (InoxSet Context!15894))

(assert (=> b!7327470 (= lt!2606570 (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (tail!14696 lt!2606568)) c!10305))))

(declare-fun b!7327471 () Bool)

(declare-fun e!4387545 () Bool)

(declare-fun tp!2080765 () Bool)

(assert (=> b!7327471 (= e!4387545 tp!2080765)))

(declare-fun b!7327472 () Bool)

(declare-fun res!2961608 () Bool)

(assert (=> b!7327472 (=> (not res!2961608) (not e!4387540))))

(assert (=> b!7327472 (= res!2961608 (not (isEmpty!40925 (exprs!8447 ct1!256))))))

(declare-fun b!7327473 () Bool)

(declare-fun e!4387541 () Bool)

(assert (=> b!7327473 (= e!4387541 e!4387540)))

(declare-fun res!2961607 () Bool)

(assert (=> b!7327473 (=> (not res!2961607) (not e!4387540))))

(get-info :version)

(assert (=> b!7327473 (= res!2961607 ((_ is Cons!71379) (exprs!8447 ct1!256)))))

(assert (=> b!7327473 (= lt!2606568 (++!16831 (exprs!8447 ct1!256) (exprs!8447 ct2!352)))))

(declare-fun lt!2606563 () Unit!164979)

(assert (=> b!7327473 (= lt!2606563 (lemmaConcatPreservesForall!1688 (exprs!8447 ct1!256) (exprs!8447 ct2!352) lambda!454214))))

(declare-fun res!2961605 () Bool)

(assert (=> start!715298 (=> (not res!2961605) (not e!4387541))))

(assert (=> start!715298 (= res!2961605 (select lt!2606572 cWitness!35))))

(declare-fun derivationStepZipperUp!2687 (Context!15894 C!38288) (InoxSet Context!15894))

(assert (=> start!715298 (= lt!2606572 (derivationStepZipperUp!2687 ct1!256 c!10305))))

(assert (=> start!715298 e!4387541))

(declare-fun tp_is_empty!48259 () Bool)

(assert (=> start!715298 tp_is_empty!48259))

(declare-fun inv!90857 (Context!15894) Bool)

(assert (=> start!715298 (and (inv!90857 cWitness!35) e!4387545)))

(declare-fun e!4387543 () Bool)

(assert (=> start!715298 (and (inv!90857 ct1!256) e!4387543)))

(declare-fun e!4387544 () Bool)

(assert (=> start!715298 (and (inv!90857 ct2!352) e!4387544)))

(declare-fun b!7327474 () Bool)

(declare-fun tp!2080764 () Bool)

(assert (=> b!7327474 (= e!4387543 tp!2080764)))

(declare-fun b!7327475 () Bool)

(declare-fun tp!2080763 () Bool)

(assert (=> b!7327475 (= e!4387544 tp!2080763)))

(assert (= (and start!715298 res!2961605) b!7327473))

(assert (= (and b!7327473 res!2961607) b!7327472))

(assert (= (and b!7327472 res!2961608) b!7327468))

(assert (= (and b!7327468 res!2961610) b!7327467))

(assert (= (and b!7327467 res!2961606) b!7327469))

(assert (= (and b!7327469 res!2961609) b!7327470))

(assert (= start!715298 b!7327471))

(assert (= start!715298 b!7327474))

(assert (= start!715298 b!7327475))

(declare-fun m!7993270 () Bool)

(assert (=> b!7327473 m!7993270))

(declare-fun m!7993272 () Bool)

(assert (=> b!7327473 m!7993272))

(declare-fun m!7993274 () Bool)

(assert (=> b!7327469 m!7993274))

(declare-fun m!7993276 () Bool)

(assert (=> b!7327468 m!7993276))

(declare-fun m!7993278 () Bool)

(assert (=> b!7327468 m!7993278))

(declare-fun m!7993280 () Bool)

(assert (=> b!7327468 m!7993280))

(declare-fun m!7993282 () Bool)

(assert (=> b!7327467 m!7993282))

(declare-fun m!7993284 () Bool)

(assert (=> b!7327470 m!7993284))

(declare-fun m!7993286 () Bool)

(assert (=> b!7327470 m!7993286))

(declare-fun m!7993288 () Bool)

(assert (=> b!7327470 m!7993288))

(declare-fun m!7993290 () Bool)

(assert (=> b!7327470 m!7993290))

(declare-fun m!7993292 () Bool)

(assert (=> b!7327470 m!7993292))

(declare-fun m!7993294 () Bool)

(assert (=> b!7327470 m!7993294))

(declare-fun m!7993296 () Bool)

(assert (=> b!7327470 m!7993296))

(declare-fun m!7993298 () Bool)

(assert (=> b!7327470 m!7993298))

(declare-fun m!7993300 () Bool)

(assert (=> b!7327470 m!7993300))

(declare-fun m!7993302 () Bool)

(assert (=> b!7327470 m!7993302))

(declare-fun m!7993304 () Bool)

(assert (=> b!7327472 m!7993304))

(declare-fun m!7993306 () Bool)

(assert (=> start!715298 m!7993306))

(declare-fun m!7993308 () Bool)

(assert (=> start!715298 m!7993308))

(declare-fun m!7993310 () Bool)

(assert (=> start!715298 m!7993310))

(declare-fun m!7993312 () Bool)

(assert (=> start!715298 m!7993312))

(declare-fun m!7993314 () Bool)

(assert (=> start!715298 m!7993314))

(check-sat tp_is_empty!48259 (not b!7327470) (not b!7327468) (not b!7327474) (not b!7327475) (not b!7327471) (not start!715298) (not b!7327473) (not b!7327469) (not b!7327472))
(check-sat)
(get-model)

(declare-fun d!2275468 () Bool)

(assert (=> d!2275468 (= (isEmpty!40925 (exprs!8447 ct1!256)) ((_ is Nil!71379) (exprs!8447 ct1!256)))))

(assert (=> b!7327472 d!2275468))

(declare-fun b!7327498 () Bool)

(declare-fun res!2961622 () Bool)

(declare-fun e!4387556 () Bool)

(assert (=> b!7327498 (=> (not res!2961622) (not e!4387556))))

(declare-fun lt!2606578 () List!71503)

(declare-fun size!41925 (List!71503) Int)

(assert (=> b!7327498 (= res!2961622 (= (size!41925 lt!2606578) (+ (size!41925 (exprs!8447 ct1!256)) (size!41925 (exprs!8447 ct2!352)))))))

(declare-fun b!7327497 () Bool)

(declare-fun e!4387557 () List!71503)

(assert (=> b!7327497 (= e!4387557 (Cons!71379 (h!77827 (exprs!8447 ct1!256)) (++!16831 (t!385890 (exprs!8447 ct1!256)) (exprs!8447 ct2!352))))))

(declare-fun b!7327496 () Bool)

(assert (=> b!7327496 (= e!4387557 (exprs!8447 ct2!352))))

(declare-fun d!2275470 () Bool)

(assert (=> d!2275470 e!4387556))

(declare-fun res!2961621 () Bool)

(assert (=> d!2275470 (=> (not res!2961621) (not e!4387556))))

(declare-fun content!14948 (List!71503) (InoxSet Regex!19007))

(assert (=> d!2275470 (= res!2961621 (= (content!14948 lt!2606578) ((_ map or) (content!14948 (exprs!8447 ct1!256)) (content!14948 (exprs!8447 ct2!352)))))))

(assert (=> d!2275470 (= lt!2606578 e!4387557)))

(declare-fun c!1360212 () Bool)

(assert (=> d!2275470 (= c!1360212 ((_ is Nil!71379) (exprs!8447 ct1!256)))))

(assert (=> d!2275470 (= (++!16831 (exprs!8447 ct1!256) (exprs!8447 ct2!352)) lt!2606578)))

(declare-fun b!7327499 () Bool)

(assert (=> b!7327499 (= e!4387556 (or (not (= (exprs!8447 ct2!352) Nil!71379)) (= lt!2606578 (exprs!8447 ct1!256))))))

(assert (= (and d!2275470 c!1360212) b!7327496))

(assert (= (and d!2275470 (not c!1360212)) b!7327497))

(assert (= (and d!2275470 res!2961621) b!7327498))

(assert (= (and b!7327498 res!2961622) b!7327499))

(declare-fun m!7993330 () Bool)

(assert (=> b!7327498 m!7993330))

(declare-fun m!7993332 () Bool)

(assert (=> b!7327498 m!7993332))

(declare-fun m!7993334 () Bool)

(assert (=> b!7327498 m!7993334))

(declare-fun m!7993336 () Bool)

(assert (=> b!7327497 m!7993336))

(declare-fun m!7993338 () Bool)

(assert (=> d!2275470 m!7993338))

(declare-fun m!7993340 () Bool)

(assert (=> d!2275470 m!7993340))

(declare-fun m!7993342 () Bool)

(assert (=> d!2275470 m!7993342))

(assert (=> b!7327473 d!2275470))

(declare-fun d!2275474 () Bool)

(assert (=> d!2275474 (forall!17856 (++!16831 (exprs!8447 ct1!256) (exprs!8447 ct2!352)) lambda!454214)))

(declare-fun lt!2606584 () Unit!164979)

(declare-fun choose!56985 (List!71503 List!71503 Int) Unit!164979)

(assert (=> d!2275474 (= lt!2606584 (choose!56985 (exprs!8447 ct1!256) (exprs!8447 ct2!352) lambda!454214))))

(assert (=> d!2275474 (forall!17856 (exprs!8447 ct1!256) lambda!454214)))

(assert (=> d!2275474 (= (lemmaConcatPreservesForall!1688 (exprs!8447 ct1!256) (exprs!8447 ct2!352) lambda!454214) lt!2606584)))

(declare-fun bs!1916844 () Bool)

(assert (= bs!1916844 d!2275474))

(assert (=> bs!1916844 m!7993270))

(assert (=> bs!1916844 m!7993270))

(declare-fun m!7993352 () Bool)

(assert (=> bs!1916844 m!7993352))

(declare-fun m!7993354 () Bool)

(assert (=> bs!1916844 m!7993354))

(declare-fun m!7993356 () Bool)

(assert (=> bs!1916844 m!7993356))

(assert (=> b!7327473 d!2275474))

(declare-fun call!667036 () (InoxSet Context!15894))

(declare-fun b!7327532 () Bool)

(declare-fun e!4387577 () (InoxSet Context!15894))

(assert (=> b!7327532 (= e!4387577 ((_ map or) call!667036 (derivationStepZipperUp!2687 (Context!15895 (t!385890 (exprs!8447 ct1!256))) c!10305)))))

(declare-fun b!7327533 () Bool)

(declare-fun e!4387578 () (InoxSet Context!15894))

(assert (=> b!7327533 (= e!4387578 ((as const (Array Context!15894 Bool)) false))))

(declare-fun bm!667031 () Bool)

(assert (=> bm!667031 (= call!667036 (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (t!385890 (exprs!8447 ct1!256))) c!10305))))

(declare-fun d!2275482 () Bool)

(declare-fun c!1360227 () Bool)

(declare-fun e!4387576 () Bool)

(assert (=> d!2275482 (= c!1360227 e!4387576)))

(declare-fun res!2961627 () Bool)

(assert (=> d!2275482 (=> (not res!2961627) (not e!4387576))))

(assert (=> d!2275482 (= res!2961627 ((_ is Cons!71379) (exprs!8447 ct1!256)))))

(assert (=> d!2275482 (= (derivationStepZipperUp!2687 ct1!256 c!10305) e!4387577)))

(declare-fun b!7327534 () Bool)

(assert (=> b!7327534 (= e!4387577 e!4387578)))

(declare-fun c!1360228 () Bool)

(assert (=> b!7327534 (= c!1360228 ((_ is Cons!71379) (exprs!8447 ct1!256)))))

(declare-fun b!7327535 () Bool)

(assert (=> b!7327535 (= e!4387578 call!667036)))

(declare-fun b!7327536 () Bool)

(assert (=> b!7327536 (= e!4387576 (nullable!8111 (h!77827 (exprs!8447 ct1!256))))))

(assert (= (and d!2275482 res!2961627) b!7327536))

(assert (= (and d!2275482 c!1360227) b!7327532))

(assert (= (and d!2275482 (not c!1360227)) b!7327534))

(assert (= (and b!7327534 c!1360228) b!7327535))

(assert (= (and b!7327534 (not c!1360228)) b!7327533))

(assert (= (or b!7327532 b!7327535) bm!667031))

(declare-fun m!7993358 () Bool)

(assert (=> b!7327532 m!7993358))

(declare-fun m!7993360 () Bool)

(assert (=> bm!667031 m!7993360))

(assert (=> b!7327536 m!7993276))

(assert (=> start!715298 d!2275482))

(declare-fun bs!1916845 () Bool)

(declare-fun d!2275484 () Bool)

(assert (= bs!1916845 (and d!2275484 b!7327473)))

(declare-fun lambda!454217 () Int)

(assert (=> bs!1916845 (= lambda!454217 lambda!454214)))

(assert (=> d!2275484 (= (inv!90857 cWitness!35) (forall!17856 (exprs!8447 cWitness!35) lambda!454217))))

(declare-fun bs!1916846 () Bool)

(assert (= bs!1916846 d!2275484))

(declare-fun m!7993362 () Bool)

(assert (=> bs!1916846 m!7993362))

(assert (=> start!715298 d!2275484))

(declare-fun bs!1916847 () Bool)

(declare-fun d!2275486 () Bool)

(assert (= bs!1916847 (and d!2275486 b!7327473)))

(declare-fun lambda!454218 () Int)

(assert (=> bs!1916847 (= lambda!454218 lambda!454214)))

(declare-fun bs!1916848 () Bool)

(assert (= bs!1916848 (and d!2275486 d!2275484)))

(assert (=> bs!1916848 (= lambda!454218 lambda!454217)))

(assert (=> d!2275486 (= (inv!90857 ct1!256) (forall!17856 (exprs!8447 ct1!256) lambda!454218))))

(declare-fun bs!1916849 () Bool)

(assert (= bs!1916849 d!2275486))

(declare-fun m!7993364 () Bool)

(assert (=> bs!1916849 m!7993364))

(assert (=> start!715298 d!2275486))

(declare-fun bs!1916850 () Bool)

(declare-fun d!2275488 () Bool)

(assert (= bs!1916850 (and d!2275488 b!7327473)))

(declare-fun lambda!454219 () Int)

(assert (=> bs!1916850 (= lambda!454219 lambda!454214)))

(declare-fun bs!1916851 () Bool)

(assert (= bs!1916851 (and d!2275488 d!2275484)))

(assert (=> bs!1916851 (= lambda!454219 lambda!454217)))

(declare-fun bs!1916852 () Bool)

(assert (= bs!1916852 (and d!2275488 d!2275486)))

(assert (=> bs!1916852 (= lambda!454219 lambda!454218)))

(assert (=> d!2275488 (= (inv!90857 ct2!352) (forall!17856 (exprs!8447 ct2!352) lambda!454219))))

(declare-fun bs!1916853 () Bool)

(assert (= bs!1916853 d!2275488))

(declare-fun m!7993366 () Bool)

(assert (=> bs!1916853 m!7993366))

(assert (=> start!715298 d!2275488))

(declare-fun d!2275490 () Bool)

(declare-fun nullableFct!3222 (Regex!19007) Bool)

(assert (=> d!2275490 (= (nullable!8111 (h!77827 (exprs!8447 ct1!256))) (nullableFct!3222 (h!77827 (exprs!8447 ct1!256))))))

(declare-fun bs!1916854 () Bool)

(assert (= bs!1916854 d!2275490))

(declare-fun m!7993368 () Bool)

(assert (=> bs!1916854 m!7993368))

(assert (=> b!7327468 d!2275490))

(declare-fun b!7327585 () Bool)

(declare-fun e!4387611 () (InoxSet Context!15894))

(declare-fun e!4387606 () (InoxSet Context!15894))

(assert (=> b!7327585 (= e!4387611 e!4387606)))

(declare-fun c!1360252 () Bool)

(assert (=> b!7327585 (= c!1360252 ((_ is Union!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327586 () Bool)

(declare-fun c!1360250 () Bool)

(assert (=> b!7327586 (= c!1360250 ((_ is Star!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun e!4387609 () (InoxSet Context!15894))

(declare-fun e!4387608 () (InoxSet Context!15894))

(assert (=> b!7327586 (= e!4387609 e!4387608)))

(declare-fun c!1360253 () Bool)

(declare-fun c!1360254 () Bool)

(declare-fun call!667068 () List!71503)

(declare-fun bm!667059 () Bool)

(declare-fun $colon$colon!3038 (List!71503 Regex!19007) List!71503)

(assert (=> bm!667059 (= call!667068 ($colon$colon!3038 (exprs!8447 lt!2606565) (ite (or c!1360254 c!1360253) (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun b!7327587 () Bool)

(declare-fun call!667064 () (InoxSet Context!15894))

(declare-fun call!667065 () (InoxSet Context!15894))

(assert (=> b!7327587 (= e!4387606 ((_ map or) call!667064 call!667065))))

(declare-fun b!7327588 () Bool)

(assert (=> b!7327588 (= e!4387608 ((as const (Array Context!15894 Bool)) false))))

(declare-fun bm!667060 () Bool)

(declare-fun call!667066 () (InoxSet Context!15894))

(declare-fun call!667069 () (InoxSet Context!15894))

(assert (=> bm!667060 (= call!667066 call!667069)))

(declare-fun b!7327589 () Bool)

(assert (=> b!7327589 (= e!4387608 call!667066)))

(declare-fun b!7327590 () Bool)

(assert (=> b!7327590 (= e!4387609 call!667066)))

(declare-fun bm!667061 () Bool)

(declare-fun call!667067 () List!71503)

(assert (=> bm!667061 (= call!667067 call!667068)))

(declare-fun b!7327591 () Bool)

(assert (=> b!7327591 (= e!4387611 (store ((as const (Array Context!15894 Bool)) false) lt!2606565 true))))

(declare-fun b!7327592 () Bool)

(declare-fun e!4387607 () (InoxSet Context!15894))

(assert (=> b!7327592 (= e!4387607 e!4387609)))

(assert (=> b!7327592 (= c!1360253 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327593 () Bool)

(declare-fun e!4387610 () Bool)

(assert (=> b!7327593 (= e!4387610 (nullable!8111 (regOne!38526 (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun bm!667062 () Bool)

(assert (=> bm!667062 (= call!667065 (derivationStepZipperDown!2838 (ite c!1360252 (regTwo!38527 (h!77827 (exprs!8447 ct1!256))) (regOne!38526 (h!77827 (exprs!8447 ct1!256)))) (ite c!1360252 lt!2606565 (Context!15895 call!667068)) c!10305))))

(declare-fun d!2275492 () Bool)

(declare-fun c!1360251 () Bool)

(assert (=> d!2275492 (= c!1360251 (and ((_ is ElementMatch!19007) (h!77827 (exprs!8447 ct1!256))) (= (c!1360206 (h!77827 (exprs!8447 ct1!256))) c!10305)))))

(assert (=> d!2275492 (= (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) lt!2606565 c!10305) e!4387611)))

(declare-fun bm!667063 () Bool)

(assert (=> bm!667063 (= call!667064 (derivationStepZipperDown!2838 (ite c!1360252 (regOne!38527 (h!77827 (exprs!8447 ct1!256))) (ite c!1360254 (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (ite c!1360253 (regOne!38526 (h!77827 (exprs!8447 ct1!256))) (reg!19336 (h!77827 (exprs!8447 ct1!256)))))) (ite (or c!1360252 c!1360254) lt!2606565 (Context!15895 call!667067)) c!10305))))

(declare-fun b!7327594 () Bool)

(assert (=> b!7327594 (= e!4387607 ((_ map or) call!667065 call!667069))))

(declare-fun b!7327595 () Bool)

(assert (=> b!7327595 (= c!1360254 e!4387610)))

(declare-fun res!2961634 () Bool)

(assert (=> b!7327595 (=> (not res!2961634) (not e!4387610))))

(assert (=> b!7327595 (= res!2961634 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(assert (=> b!7327595 (= e!4387606 e!4387607)))

(declare-fun bm!667064 () Bool)

(assert (=> bm!667064 (= call!667069 call!667064)))

(assert (= (and d!2275492 c!1360251) b!7327591))

(assert (= (and d!2275492 (not c!1360251)) b!7327585))

(assert (= (and b!7327585 c!1360252) b!7327587))

(assert (= (and b!7327585 (not c!1360252)) b!7327595))

(assert (= (and b!7327595 res!2961634) b!7327593))

(assert (= (and b!7327595 c!1360254) b!7327594))

(assert (= (and b!7327595 (not c!1360254)) b!7327592))

(assert (= (and b!7327592 c!1360253) b!7327590))

(assert (= (and b!7327592 (not c!1360253)) b!7327586))

(assert (= (and b!7327586 c!1360250) b!7327589))

(assert (= (and b!7327586 (not c!1360250)) b!7327588))

(assert (= (or b!7327590 b!7327589) bm!667061))

(assert (= (or b!7327590 b!7327589) bm!667060))

(assert (= (or b!7327594 bm!667060) bm!667064))

(assert (= (or b!7327594 bm!667061) bm!667059))

(assert (= (or b!7327587 b!7327594) bm!667062))

(assert (= (or b!7327587 bm!667064) bm!667063))

(declare-fun m!7993390 () Bool)

(assert (=> b!7327593 m!7993390))

(declare-fun m!7993392 () Bool)

(assert (=> bm!667062 m!7993392))

(declare-fun m!7993394 () Bool)

(assert (=> b!7327591 m!7993394))

(declare-fun m!7993396 () Bool)

(assert (=> bm!667063 m!7993396))

(declare-fun m!7993398 () Bool)

(assert (=> bm!667059 m!7993398))

(assert (=> b!7327468 d!2275492))

(declare-fun d!2275508 () Bool)

(assert (=> d!2275508 (= (tail!14696 (exprs!8447 ct1!256)) (t!385890 (exprs!8447 ct1!256)))))

(assert (=> b!7327468 d!2275508))

(declare-fun d!2275510 () Bool)

(assert (=> d!2275510 (= (isEmpty!40925 lt!2606568) ((_ is Nil!71379) lt!2606568))))

(assert (=> b!7327469 d!2275510))

(declare-fun b!7327604 () Bool)

(declare-fun res!2961642 () Bool)

(declare-fun e!4387618 () Bool)

(assert (=> b!7327604 (=> (not res!2961642) (not e!4387618))))

(declare-fun lt!2606585 () List!71503)

(assert (=> b!7327604 (= res!2961642 (= (size!41925 lt!2606585) (+ (size!41925 lt!2606564) (size!41925 (exprs!8447 ct2!352)))))))

(declare-fun b!7327603 () Bool)

(declare-fun e!4387619 () List!71503)

(assert (=> b!7327603 (= e!4387619 (Cons!71379 (h!77827 lt!2606564) (++!16831 (t!385890 lt!2606564) (exprs!8447 ct2!352))))))

(declare-fun b!7327602 () Bool)

(assert (=> b!7327602 (= e!4387619 (exprs!8447 ct2!352))))

(declare-fun d!2275512 () Bool)

(assert (=> d!2275512 e!4387618))

(declare-fun res!2961641 () Bool)

(assert (=> d!2275512 (=> (not res!2961641) (not e!4387618))))

(assert (=> d!2275512 (= res!2961641 (= (content!14948 lt!2606585) ((_ map or) (content!14948 lt!2606564) (content!14948 (exprs!8447 ct2!352)))))))

(assert (=> d!2275512 (= lt!2606585 e!4387619)))

(declare-fun c!1360255 () Bool)

(assert (=> d!2275512 (= c!1360255 ((_ is Nil!71379) lt!2606564))))

(assert (=> d!2275512 (= (++!16831 lt!2606564 (exprs!8447 ct2!352)) lt!2606585)))

(declare-fun b!7327605 () Bool)

(assert (=> b!7327605 (= e!4387618 (or (not (= (exprs!8447 ct2!352) Nil!71379)) (= lt!2606585 lt!2606564)))))

(assert (= (and d!2275512 c!1360255) b!7327602))

(assert (= (and d!2275512 (not c!1360255)) b!7327603))

(assert (= (and d!2275512 res!2961641) b!7327604))

(assert (= (and b!7327604 res!2961642) b!7327605))

(declare-fun m!7993408 () Bool)

(assert (=> b!7327604 m!7993408))

(declare-fun m!7993412 () Bool)

(assert (=> b!7327604 m!7993412))

(assert (=> b!7327604 m!7993334))

(declare-fun m!7993414 () Bool)

(assert (=> b!7327603 m!7993414))

(declare-fun m!7993416 () Bool)

(assert (=> d!2275512 m!7993416))

(declare-fun m!7993418 () Bool)

(assert (=> d!2275512 m!7993418))

(assert (=> d!2275512 m!7993342))

(assert (=> b!7327470 d!2275512))

(declare-fun d!2275520 () Bool)

(assert (=> d!2275520 (forall!17856 (++!16831 (exprs!8447 cWitness!35) (exprs!8447 ct2!352)) lambda!454214)))

(declare-fun lt!2606588 () Unit!164979)

(assert (=> d!2275520 (= lt!2606588 (choose!56985 (exprs!8447 cWitness!35) (exprs!8447 ct2!352) lambda!454214))))

(assert (=> d!2275520 (forall!17856 (exprs!8447 cWitness!35) lambda!454214)))

(assert (=> d!2275520 (= (lemmaConcatPreservesForall!1688 (exprs!8447 cWitness!35) (exprs!8447 ct2!352) lambda!454214) lt!2606588)))

(declare-fun bs!1916866 () Bool)

(assert (= bs!1916866 d!2275520))

(assert (=> bs!1916866 m!7993284))

(assert (=> bs!1916866 m!7993284))

(declare-fun m!7993424 () Bool)

(assert (=> bs!1916866 m!7993424))

(declare-fun m!7993426 () Bool)

(assert (=> bs!1916866 m!7993426))

(assert (=> bs!1916866 m!7993300))

(assert (=> b!7327470 d!2275520))

(declare-fun d!2275524 () Bool)

(assert (=> d!2275524 (= (tail!14696 lt!2606568) (t!385890 lt!2606568))))

(assert (=> b!7327470 d!2275524))

(declare-fun b!7327612 () Bool)

(declare-fun res!2961646 () Bool)

(declare-fun e!4387622 () Bool)

(assert (=> b!7327612 (=> (not res!2961646) (not e!4387622))))

(declare-fun lt!2606590 () List!71503)

(assert (=> b!7327612 (= res!2961646 (= (size!41925 lt!2606590) (+ (size!41925 (exprs!8447 cWitness!35)) (size!41925 (exprs!8447 ct2!352)))))))

(declare-fun b!7327611 () Bool)

(declare-fun e!4387623 () List!71503)

(assert (=> b!7327611 (= e!4387623 (Cons!71379 (h!77827 (exprs!8447 cWitness!35)) (++!16831 (t!385890 (exprs!8447 cWitness!35)) (exprs!8447 ct2!352))))))

(declare-fun b!7327610 () Bool)

(assert (=> b!7327610 (= e!4387623 (exprs!8447 ct2!352))))

(declare-fun d!2275526 () Bool)

(assert (=> d!2275526 e!4387622))

(declare-fun res!2961645 () Bool)

(assert (=> d!2275526 (=> (not res!2961645) (not e!4387622))))

(assert (=> d!2275526 (= res!2961645 (= (content!14948 lt!2606590) ((_ map or) (content!14948 (exprs!8447 cWitness!35)) (content!14948 (exprs!8447 ct2!352)))))))

(assert (=> d!2275526 (= lt!2606590 e!4387623)))

(declare-fun c!1360257 () Bool)

(assert (=> d!2275526 (= c!1360257 ((_ is Nil!71379) (exprs!8447 cWitness!35)))))

(assert (=> d!2275526 (= (++!16831 (exprs!8447 cWitness!35) (exprs!8447 ct2!352)) lt!2606590)))

(declare-fun b!7327613 () Bool)

(assert (=> b!7327613 (= e!4387622 (or (not (= (exprs!8447 ct2!352) Nil!71379)) (= lt!2606590 (exprs!8447 cWitness!35))))))

(assert (= (and d!2275526 c!1360257) b!7327610))

(assert (= (and d!2275526 (not c!1360257)) b!7327611))

(assert (= (and d!2275526 res!2961645) b!7327612))

(assert (= (and b!7327612 res!2961646) b!7327613))

(declare-fun m!7993438 () Bool)

(assert (=> b!7327612 m!7993438))

(declare-fun m!7993440 () Bool)

(assert (=> b!7327612 m!7993440))

(assert (=> b!7327612 m!7993334))

(declare-fun m!7993442 () Bool)

(assert (=> b!7327611 m!7993442))

(declare-fun m!7993444 () Bool)

(assert (=> d!2275526 m!7993444))

(declare-fun m!7993446 () Bool)

(assert (=> d!2275526 m!7993446))

(assert (=> d!2275526 m!7993342))

(assert (=> b!7327470 d!2275526))

(declare-fun d!2275530 () Bool)

(declare-fun res!2961652 () Bool)

(declare-fun e!4387634 () Bool)

(assert (=> d!2275530 (=> res!2961652 e!4387634)))

(assert (=> d!2275530 (= res!2961652 ((_ is Nil!71379) (exprs!8447 cWitness!35)))))

(assert (=> d!2275530 (= (forall!17856 (exprs!8447 cWitness!35) lambda!454214) e!4387634)))

(declare-fun b!7327629 () Bool)

(declare-fun e!4387635 () Bool)

(assert (=> b!7327629 (= e!4387634 e!4387635)))

(declare-fun res!2961653 () Bool)

(assert (=> b!7327629 (=> (not res!2961653) (not e!4387635))))

(declare-fun dynLambda!29413 (Int Regex!19007) Bool)

(assert (=> b!7327629 (= res!2961653 (dynLambda!29413 lambda!454214 (h!77827 (exprs!8447 cWitness!35))))))

(declare-fun b!7327630 () Bool)

(assert (=> b!7327630 (= e!4387635 (forall!17856 (t!385890 (exprs!8447 cWitness!35)) lambda!454214))))

(assert (= (and d!2275530 (not res!2961652)) b!7327629))

(assert (= (and b!7327629 res!2961653) b!7327630))

(declare-fun b_lambda!283421 () Bool)

(assert (=> (not b_lambda!283421) (not b!7327629)))

(declare-fun m!7993456 () Bool)

(assert (=> b!7327629 m!7993456))

(declare-fun m!7993458 () Bool)

(assert (=> b!7327630 m!7993458))

(assert (=> b!7327470 d!2275530))

(declare-fun b!7327631 () Bool)

(declare-fun e!4387641 () (InoxSet Context!15894))

(declare-fun e!4387636 () (InoxSet Context!15894))

(assert (=> b!7327631 (= e!4387641 e!4387636)))

(declare-fun c!1360265 () Bool)

(assert (=> b!7327631 (= c!1360265 ((_ is Union!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327632 () Bool)

(declare-fun c!1360263 () Bool)

(assert (=> b!7327632 (= c!1360263 ((_ is Star!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun e!4387639 () (InoxSet Context!15894))

(declare-fun e!4387638 () (InoxSet Context!15894))

(assert (=> b!7327632 (= e!4387639 e!4387638)))

(declare-fun c!1360266 () Bool)

(declare-fun bm!667071 () Bool)

(declare-fun c!1360267 () Bool)

(declare-fun call!667080 () List!71503)

(assert (=> bm!667071 (= call!667080 ($colon$colon!3038 (exprs!8447 (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352)))) (ite (or c!1360267 c!1360266) (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun b!7327633 () Bool)

(declare-fun call!667076 () (InoxSet Context!15894))

(declare-fun call!667077 () (InoxSet Context!15894))

(assert (=> b!7327633 (= e!4387636 ((_ map or) call!667076 call!667077))))

(declare-fun b!7327634 () Bool)

(assert (=> b!7327634 (= e!4387638 ((as const (Array Context!15894 Bool)) false))))

(declare-fun bm!667072 () Bool)

(declare-fun call!667078 () (InoxSet Context!15894))

(declare-fun call!667081 () (InoxSet Context!15894))

(assert (=> bm!667072 (= call!667078 call!667081)))

(declare-fun b!7327635 () Bool)

(assert (=> b!7327635 (= e!4387638 call!667078)))

(declare-fun b!7327636 () Bool)

(assert (=> b!7327636 (= e!4387639 call!667078)))

(declare-fun bm!667073 () Bool)

(declare-fun call!667079 () List!71503)

(assert (=> bm!667073 (= call!667079 call!667080)))

(declare-fun b!7327637 () Bool)

(assert (=> b!7327637 (= e!4387641 (store ((as const (Array Context!15894 Bool)) false) (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352))) true))))

(declare-fun b!7327638 () Bool)

(declare-fun e!4387637 () (InoxSet Context!15894))

(assert (=> b!7327638 (= e!4387637 e!4387639)))

(assert (=> b!7327638 (= c!1360266 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327639 () Bool)

(declare-fun e!4387640 () Bool)

(assert (=> b!7327639 (= e!4387640 (nullable!8111 (regOne!38526 (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun bm!667074 () Bool)

(assert (=> bm!667074 (= call!667077 (derivationStepZipperDown!2838 (ite c!1360265 (regTwo!38527 (h!77827 (exprs!8447 ct1!256))) (regOne!38526 (h!77827 (exprs!8447 ct1!256)))) (ite c!1360265 (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352))) (Context!15895 call!667080)) c!10305))))

(declare-fun d!2275534 () Bool)

(declare-fun c!1360264 () Bool)

(assert (=> d!2275534 (= c!1360264 (and ((_ is ElementMatch!19007) (h!77827 (exprs!8447 ct1!256))) (= (c!1360206 (h!77827 (exprs!8447 ct1!256))) c!10305)))))

(assert (=> d!2275534 (= (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352))) c!10305) e!4387641)))

(declare-fun bm!667075 () Bool)

(assert (=> bm!667075 (= call!667076 (derivationStepZipperDown!2838 (ite c!1360265 (regOne!38527 (h!77827 (exprs!8447 ct1!256))) (ite c!1360267 (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (ite c!1360266 (regOne!38526 (h!77827 (exprs!8447 ct1!256))) (reg!19336 (h!77827 (exprs!8447 ct1!256)))))) (ite (or c!1360265 c!1360267) (Context!15895 (++!16831 lt!2606564 (exprs!8447 ct2!352))) (Context!15895 call!667079)) c!10305))))

(declare-fun b!7327640 () Bool)

(assert (=> b!7327640 (= e!4387637 ((_ map or) call!667077 call!667081))))

(declare-fun b!7327641 () Bool)

(assert (=> b!7327641 (= c!1360267 e!4387640)))

(declare-fun res!2961654 () Bool)

(assert (=> b!7327641 (=> (not res!2961654) (not e!4387640))))

(assert (=> b!7327641 (= res!2961654 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(assert (=> b!7327641 (= e!4387636 e!4387637)))

(declare-fun bm!667076 () Bool)

(assert (=> bm!667076 (= call!667081 call!667076)))

(assert (= (and d!2275534 c!1360264) b!7327637))

(assert (= (and d!2275534 (not c!1360264)) b!7327631))

(assert (= (and b!7327631 c!1360265) b!7327633))

(assert (= (and b!7327631 (not c!1360265)) b!7327641))

(assert (= (and b!7327641 res!2961654) b!7327639))

(assert (= (and b!7327641 c!1360267) b!7327640))

(assert (= (and b!7327641 (not c!1360267)) b!7327638))

(assert (= (and b!7327638 c!1360266) b!7327636))

(assert (= (and b!7327638 (not c!1360266)) b!7327632))

(assert (= (and b!7327632 c!1360263) b!7327635))

(assert (= (and b!7327632 (not c!1360263)) b!7327634))

(assert (= (or b!7327636 b!7327635) bm!667073))

(assert (= (or b!7327636 b!7327635) bm!667072))

(assert (= (or b!7327640 bm!667072) bm!667076))

(assert (= (or b!7327640 bm!667073) bm!667071))

(assert (= (or b!7327633 b!7327640) bm!667074))

(assert (= (or b!7327633 bm!667076) bm!667075))

(assert (=> b!7327639 m!7993390))

(declare-fun m!7993460 () Bool)

(assert (=> bm!667074 m!7993460))

(declare-fun m!7993462 () Bool)

(assert (=> b!7327637 m!7993462))

(declare-fun m!7993464 () Bool)

(assert (=> bm!667075 m!7993464))

(declare-fun m!7993466 () Bool)

(assert (=> bm!667071 m!7993466))

(assert (=> b!7327470 d!2275534))

(declare-fun bs!1916872 () Bool)

(declare-fun d!2275536 () Bool)

(assert (= bs!1916872 (and d!2275536 b!7327473)))

(declare-fun lambda!454234 () Int)

(assert (=> bs!1916872 (= lambda!454234 lambda!454214)))

(declare-fun bs!1916873 () Bool)

(assert (= bs!1916873 (and d!2275536 d!2275484)))

(assert (=> bs!1916873 (= lambda!454234 lambda!454217)))

(declare-fun bs!1916874 () Bool)

(assert (= bs!1916874 (and d!2275536 d!2275486)))

(assert (=> bs!1916874 (= lambda!454234 lambda!454218)))

(declare-fun bs!1916875 () Bool)

(assert (= bs!1916875 (and d!2275536 d!2275488)))

(assert (=> bs!1916875 (= lambda!454234 lambda!454219)))

(assert (=> d!2275536 (select (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (++!16831 (exprs!8447 lt!2606565) (exprs!8447 ct2!352))) c!10305) (Context!15895 (++!16831 (exprs!8447 cWitness!35) (exprs!8447 ct2!352))))))

(declare-fun lt!2606609 () Unit!164979)

(assert (=> d!2275536 (= lt!2606609 (lemmaConcatPreservesForall!1688 (exprs!8447 lt!2606565) (exprs!8447 ct2!352) lambda!454234))))

(declare-fun lt!2606608 () Unit!164979)

(assert (=> d!2275536 (= lt!2606608 (lemmaConcatPreservesForall!1688 (exprs!8447 cWitness!35) (exprs!8447 ct2!352) lambda!454234))))

(declare-fun lt!2606607 () Unit!164979)

(declare-fun choose!56986 (Regex!19007 Context!15894 Context!15894 Context!15894 C!38288) Unit!164979)

(assert (=> d!2275536 (= lt!2606607 (choose!56986 (h!77827 (exprs!8447 ct1!256)) lt!2606565 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9641 (Regex!19007) Bool)

(assert (=> d!2275536 (validRegex!9641 (h!77827 (exprs!8447 ct1!256)))))

(assert (=> d!2275536 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!14 (h!77827 (exprs!8447 ct1!256)) lt!2606565 ct2!352 cWitness!35 c!10305) lt!2606607)))

(declare-fun bs!1916876 () Bool)

(assert (= bs!1916876 d!2275536))

(declare-fun m!7993500 () Bool)

(assert (=> bs!1916876 m!7993500))

(declare-fun m!7993502 () Bool)

(assert (=> bs!1916876 m!7993502))

(assert (=> bs!1916876 m!7993284))

(declare-fun m!7993504 () Bool)

(assert (=> bs!1916876 m!7993504))

(declare-fun m!7993506 () Bool)

(assert (=> bs!1916876 m!7993506))

(declare-fun m!7993508 () Bool)

(assert (=> bs!1916876 m!7993508))

(declare-fun m!7993510 () Bool)

(assert (=> bs!1916876 m!7993510))

(declare-fun m!7993512 () Bool)

(assert (=> bs!1916876 m!7993512))

(assert (=> b!7327470 d!2275536))

(declare-fun b!7327662 () Bool)

(declare-fun e!4387658 () (InoxSet Context!15894))

(declare-fun e!4387652 () (InoxSet Context!15894))

(assert (=> b!7327662 (= e!4387658 e!4387652)))

(declare-fun c!1360278 () Bool)

(assert (=> b!7327662 (= c!1360278 ((_ is Union!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327663 () Bool)

(declare-fun c!1360276 () Bool)

(assert (=> b!7327663 (= c!1360276 ((_ is Star!19007) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun e!4387656 () (InoxSet Context!15894))

(declare-fun e!4387654 () (InoxSet Context!15894))

(assert (=> b!7327663 (= e!4387656 e!4387654)))

(declare-fun bm!667083 () Bool)

(declare-fun call!667092 () List!71503)

(declare-fun c!1360279 () Bool)

(declare-fun c!1360280 () Bool)

(assert (=> bm!667083 (= call!667092 ($colon$colon!3038 (exprs!8447 (Context!15895 (tail!14696 lt!2606568))) (ite (or c!1360280 c!1360279) (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun b!7327664 () Bool)

(declare-fun call!667088 () (InoxSet Context!15894))

(declare-fun call!667089 () (InoxSet Context!15894))

(assert (=> b!7327664 (= e!4387652 ((_ map or) call!667088 call!667089))))

(declare-fun b!7327665 () Bool)

(assert (=> b!7327665 (= e!4387654 ((as const (Array Context!15894 Bool)) false))))

(declare-fun bm!667084 () Bool)

(declare-fun call!667090 () (InoxSet Context!15894))

(declare-fun call!667093 () (InoxSet Context!15894))

(assert (=> bm!667084 (= call!667090 call!667093)))

(declare-fun b!7327666 () Bool)

(assert (=> b!7327666 (= e!4387654 call!667090)))

(declare-fun b!7327667 () Bool)

(assert (=> b!7327667 (= e!4387656 call!667090)))

(declare-fun bm!667085 () Bool)

(declare-fun call!667091 () List!71503)

(assert (=> bm!667085 (= call!667091 call!667092)))

(declare-fun b!7327668 () Bool)

(assert (=> b!7327668 (= e!4387658 (store ((as const (Array Context!15894 Bool)) false) (Context!15895 (tail!14696 lt!2606568)) true))))

(declare-fun b!7327669 () Bool)

(declare-fun e!4387653 () (InoxSet Context!15894))

(assert (=> b!7327669 (= e!4387653 e!4387656)))

(assert (=> b!7327669 (= c!1360279 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(declare-fun b!7327670 () Bool)

(declare-fun e!4387657 () Bool)

(assert (=> b!7327670 (= e!4387657 (nullable!8111 (regOne!38526 (h!77827 (exprs!8447 ct1!256)))))))

(declare-fun bm!667086 () Bool)

(assert (=> bm!667086 (= call!667089 (derivationStepZipperDown!2838 (ite c!1360278 (regTwo!38527 (h!77827 (exprs!8447 ct1!256))) (regOne!38526 (h!77827 (exprs!8447 ct1!256)))) (ite c!1360278 (Context!15895 (tail!14696 lt!2606568)) (Context!15895 call!667092)) c!10305))))

(declare-fun d!2275542 () Bool)

(declare-fun c!1360277 () Bool)

(assert (=> d!2275542 (= c!1360277 (and ((_ is ElementMatch!19007) (h!77827 (exprs!8447 ct1!256))) (= (c!1360206 (h!77827 (exprs!8447 ct1!256))) c!10305)))))

(assert (=> d!2275542 (= (derivationStepZipperDown!2838 (h!77827 (exprs!8447 ct1!256)) (Context!15895 (tail!14696 lt!2606568)) c!10305) e!4387658)))

(declare-fun bm!667087 () Bool)

(assert (=> bm!667087 (= call!667088 (derivationStepZipperDown!2838 (ite c!1360278 (regOne!38527 (h!77827 (exprs!8447 ct1!256))) (ite c!1360280 (regTwo!38526 (h!77827 (exprs!8447 ct1!256))) (ite c!1360279 (regOne!38526 (h!77827 (exprs!8447 ct1!256))) (reg!19336 (h!77827 (exprs!8447 ct1!256)))))) (ite (or c!1360278 c!1360280) (Context!15895 (tail!14696 lt!2606568)) (Context!15895 call!667091)) c!10305))))

(declare-fun b!7327671 () Bool)

(assert (=> b!7327671 (= e!4387653 ((_ map or) call!667089 call!667093))))

(declare-fun b!7327672 () Bool)

(assert (=> b!7327672 (= c!1360280 e!4387657)))

(declare-fun res!2961658 () Bool)

(assert (=> b!7327672 (=> (not res!2961658) (not e!4387657))))

(assert (=> b!7327672 (= res!2961658 ((_ is Concat!27852) (h!77827 (exprs!8447 ct1!256))))))

(assert (=> b!7327672 (= e!4387652 e!4387653)))

(declare-fun bm!667088 () Bool)

(assert (=> bm!667088 (= call!667093 call!667088)))

(assert (= (and d!2275542 c!1360277) b!7327668))

(assert (= (and d!2275542 (not c!1360277)) b!7327662))

(assert (= (and b!7327662 c!1360278) b!7327664))

(assert (= (and b!7327662 (not c!1360278)) b!7327672))

(assert (= (and b!7327672 res!2961658) b!7327670))

(assert (= (and b!7327672 c!1360280) b!7327671))

(assert (= (and b!7327672 (not c!1360280)) b!7327669))

(assert (= (and b!7327669 c!1360279) b!7327667))

(assert (= (and b!7327669 (not c!1360279)) b!7327663))

(assert (= (and b!7327663 c!1360276) b!7327666))

(assert (= (and b!7327663 (not c!1360276)) b!7327665))

(assert (= (or b!7327667 b!7327666) bm!667085))

(assert (= (or b!7327667 b!7327666) bm!667084))

(assert (= (or b!7327671 bm!667084) bm!667088))

(assert (= (or b!7327671 bm!667085) bm!667083))

(assert (= (or b!7327664 b!7327671) bm!667086))

(assert (= (or b!7327664 bm!667088) bm!667087))

(assert (=> b!7327670 m!7993390))

(declare-fun m!7993516 () Bool)

(assert (=> bm!667086 m!7993516))

(declare-fun m!7993518 () Bool)

(assert (=> b!7327668 m!7993518))

(declare-fun m!7993520 () Bool)

(assert (=> bm!667087 m!7993520))

(declare-fun m!7993522 () Bool)

(assert (=> bm!667083 m!7993522))

(assert (=> b!7327470 d!2275542))

(declare-fun d!2275546 () Bool)

(assert (=> d!2275546 (forall!17856 (++!16831 lt!2606564 (exprs!8447 ct2!352)) lambda!454214)))

(declare-fun lt!2606610 () Unit!164979)

(assert (=> d!2275546 (= lt!2606610 (choose!56985 lt!2606564 (exprs!8447 ct2!352) lambda!454214))))

(assert (=> d!2275546 (forall!17856 lt!2606564 lambda!454214)))

(assert (=> d!2275546 (= (lemmaConcatPreservesForall!1688 lt!2606564 (exprs!8447 ct2!352) lambda!454214) lt!2606610)))

(declare-fun bs!1916878 () Bool)

(assert (= bs!1916878 d!2275546))

(assert (=> bs!1916878 m!7993294))

(assert (=> bs!1916878 m!7993294))

(declare-fun m!7993524 () Bool)

(assert (=> bs!1916878 m!7993524))

(declare-fun m!7993526 () Bool)

(assert (=> bs!1916878 m!7993526))

(declare-fun m!7993528 () Bool)

(assert (=> bs!1916878 m!7993528))

(assert (=> b!7327470 d!2275546))

(declare-fun b!7327679 () Bool)

(declare-fun e!4387663 () Bool)

(declare-fun tp!2080780 () Bool)

(declare-fun tp!2080781 () Bool)

(assert (=> b!7327679 (= e!4387663 (and tp!2080780 tp!2080781))))

(assert (=> b!7327471 (= tp!2080765 e!4387663)))

(assert (= (and b!7327471 ((_ is Cons!71379) (exprs!8447 cWitness!35))) b!7327679))

(declare-fun b!7327680 () Bool)

(declare-fun e!4387664 () Bool)

(declare-fun tp!2080782 () Bool)

(declare-fun tp!2080783 () Bool)

(assert (=> b!7327680 (= e!4387664 (and tp!2080782 tp!2080783))))

(assert (=> b!7327474 (= tp!2080764 e!4387664)))

(assert (= (and b!7327474 ((_ is Cons!71379) (exprs!8447 ct1!256))) b!7327680))

(declare-fun b!7327681 () Bool)

(declare-fun e!4387665 () Bool)

(declare-fun tp!2080784 () Bool)

(declare-fun tp!2080785 () Bool)

(assert (=> b!7327681 (= e!4387665 (and tp!2080784 tp!2080785))))

(assert (=> b!7327475 (= tp!2080763 e!4387665)))

(assert (= (and b!7327475 ((_ is Cons!71379) (exprs!8447 ct2!352))) b!7327681))

(declare-fun b_lambda!283425 () Bool)

(assert (= b_lambda!283421 (or b!7327473 b_lambda!283425)))

(declare-fun bs!1916879 () Bool)

(declare-fun d!2275548 () Bool)

(assert (= bs!1916879 (and d!2275548 b!7327473)))

(assert (=> bs!1916879 (= (dynLambda!29413 lambda!454214 (h!77827 (exprs!8447 cWitness!35))) (validRegex!9641 (h!77827 (exprs!8447 cWitness!35))))))

(declare-fun m!7993530 () Bool)

(assert (=> bs!1916879 m!7993530))

(assert (=> b!7327629 d!2275548))

(check-sat (not b!7327630) tp_is_empty!48259 (not bm!667083) (not b!7327604) (not bm!667031) (not b!7327679) (not b!7327498) (not bm!667071) (not bm!667063) (not bm!667059) (not bm!667086) (not b!7327670) (not b_lambda!283425) (not d!2275474) (not b!7327681) (not b!7327532) (not d!2275512) (not d!2275536) (not bm!667074) (not d!2275490) (not d!2275488) (not d!2275484) (not bm!667087) (not b!7327680) (not d!2275486) (not d!2275546) (not b!7327497) (not d!2275470) (not bm!667062) (not b!7327639) (not b!7327536) (not bm!667075) (not b!7327611) (not b!7327603) (not d!2275526) (not bs!1916879) (not b!7327593) (not d!2275520) (not b!7327612))
(check-sat)
