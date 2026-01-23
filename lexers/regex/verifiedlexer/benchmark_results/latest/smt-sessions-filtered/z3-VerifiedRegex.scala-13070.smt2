; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715646 () Bool)

(assert start!715646)

(declare-fun res!2962290 () Bool)

(declare-fun e!4388843 () Bool)

(assert (=> start!715646 (=> (not res!2962290) (not e!4388843))))

(declare-datatypes ((C!38332 0))(
  ( (C!38333 (val!29526 Int)) )
))
(declare-fun c!10305 () C!38332)

(declare-datatypes ((Regex!19029 0))(
  ( (ElementMatch!19029 (c!1360772 C!38332)) (Concat!27874 (regOne!38570 Regex!19029) (regTwo!38570 Regex!19029)) (EmptyExpr!19029) (Star!19029 (reg!19358 Regex!19029)) (EmptyLang!19029) (Union!19029 (regOne!38571 Regex!19029) (regTwo!38571 Regex!19029)) )
))
(declare-datatypes ((List!71525 0))(
  ( (Nil!71401) (Cons!71401 (h!77849 Regex!19029) (t!385912 List!71525)) )
))
(declare-datatypes ((Context!15938 0))(
  ( (Context!15939 (exprs!8469 List!71525)) )
))
(declare-fun ct1!256 () Context!15938)

(declare-fun cWitness!35 () Context!15938)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperUp!2709 (Context!15938 C!38332) (InoxSet Context!15938))

(assert (=> start!715646 (= res!2962290 (select (derivationStepZipperUp!2709 ct1!256 c!10305) cWitness!35))))

(assert (=> start!715646 e!4388843))

(declare-fun e!4388842 () Bool)

(declare-fun inv!90912 (Context!15938) Bool)

(assert (=> start!715646 (and (inv!90912 cWitness!35) e!4388842)))

(declare-fun e!4388841 () Bool)

(assert (=> start!715646 (and (inv!90912 ct1!256) e!4388841)))

(declare-fun tp_is_empty!48303 () Bool)

(assert (=> start!715646 tp_is_empty!48303))

(declare-fun b!7329521 () Bool)

(declare-fun lt!2607322 () Int)

(declare-fun lt!2607321 () Int)

(assert (=> b!7329521 (= e!4388843 (or (< lt!2607322 0) (< lt!2607321 0)))))

(declare-fun contextDepthTotal!567 (Context!15938) Int)

(assert (=> b!7329521 (= lt!2607321 (contextDepthTotal!567 ct1!256))))

(declare-fun size!41941 (List!71525) Int)

(assert (=> b!7329521 (= lt!2607322 (size!41941 (exprs!8469 ct1!256)))))

(declare-fun b!7329522 () Bool)

(declare-fun tp!2081117 () Bool)

(assert (=> b!7329522 (= e!4388842 tp!2081117)))

(declare-fun b!7329523 () Bool)

(declare-fun tp!2081116 () Bool)

(assert (=> b!7329523 (= e!4388841 tp!2081116)))

(assert (= (and start!715646 res!2962290) b!7329521))

(assert (= start!715646 b!7329522))

(assert (= start!715646 b!7329523))

(declare-fun m!7995544 () Bool)

(assert (=> start!715646 m!7995544))

(declare-fun m!7995546 () Bool)

(assert (=> start!715646 m!7995546))

(declare-fun m!7995548 () Bool)

(assert (=> start!715646 m!7995548))

(declare-fun m!7995550 () Bool)

(assert (=> start!715646 m!7995550))

(declare-fun m!7995552 () Bool)

(assert (=> b!7329521 m!7995552))

(declare-fun m!7995554 () Bool)

(assert (=> b!7329521 m!7995554))

(check-sat tp_is_empty!48303 (not b!7329522) (not b!7329523) (not start!715646) (not b!7329521))
(check-sat)
(get-model)

(declare-fun d!2276091 () Bool)

(declare-fun lt!2607325 () Int)

(assert (=> d!2276091 (>= lt!2607325 0)))

(declare-fun e!4388846 () Int)

(assert (=> d!2276091 (= lt!2607325 e!4388846)))

(declare-fun c!1360776 () Bool)

(get-info :version)

(assert (=> d!2276091 (= c!1360776 ((_ is Cons!71401) (exprs!8469 ct1!256)))))

(assert (=> d!2276091 (= (contextDepthTotal!567 ct1!256) lt!2607325)))

(declare-fun b!7329528 () Bool)

(declare-fun regexDepthTotal!337 (Regex!19029) Int)

(assert (=> b!7329528 (= e!4388846 (+ (regexDepthTotal!337 (h!77849 (exprs!8469 ct1!256))) (contextDepthTotal!567 (Context!15939 (t!385912 (exprs!8469 ct1!256))))))))

(declare-fun b!7329529 () Bool)

(assert (=> b!7329529 (= e!4388846 1)))

(assert (= (and d!2276091 c!1360776) b!7329528))

(assert (= (and d!2276091 (not c!1360776)) b!7329529))

(declare-fun m!7995556 () Bool)

(assert (=> b!7329528 m!7995556))

(declare-fun m!7995558 () Bool)

(assert (=> b!7329528 m!7995558))

(assert (=> b!7329521 d!2276091))

(declare-fun d!2276093 () Bool)

(declare-fun lt!2607328 () Int)

(assert (=> d!2276093 (>= lt!2607328 0)))

(declare-fun e!4388855 () Int)

(assert (=> d!2276093 (= lt!2607328 e!4388855)))

(declare-fun c!1360783 () Bool)

(assert (=> d!2276093 (= c!1360783 ((_ is Nil!71401) (exprs!8469 ct1!256)))))

(assert (=> d!2276093 (= (size!41941 (exprs!8469 ct1!256)) lt!2607328)))

(declare-fun b!7329544 () Bool)

(assert (=> b!7329544 (= e!4388855 0)))

(declare-fun b!7329545 () Bool)

(assert (=> b!7329545 (= e!4388855 (+ 1 (size!41941 (t!385912 (exprs!8469 ct1!256)))))))

(assert (= (and d!2276093 c!1360783) b!7329544))

(assert (= (and d!2276093 (not c!1360783)) b!7329545))

(declare-fun m!7995560 () Bool)

(assert (=> b!7329545 m!7995560))

(assert (=> b!7329521 d!2276093))

(declare-fun bm!667510 () Bool)

(declare-fun call!667515 () (InoxSet Context!15938))

(declare-fun derivationStepZipperDown!2857 (Regex!19029 Context!15938 C!38332) (InoxSet Context!15938))

(assert (=> bm!667510 (= call!667515 (derivationStepZipperDown!2857 (h!77849 (exprs!8469 ct1!256)) (Context!15939 (t!385912 (exprs!8469 ct1!256))) c!10305))))

(declare-fun b!7329561 () Bool)

(declare-fun e!4388865 () (InoxSet Context!15938))

(assert (=> b!7329561 (= e!4388865 call!667515)))

(declare-fun d!2276095 () Bool)

(declare-fun c!1360790 () Bool)

(declare-fun e!4388867 () Bool)

(assert (=> d!2276095 (= c!1360790 e!4388867)))

(declare-fun res!2962296 () Bool)

(assert (=> d!2276095 (=> (not res!2962296) (not e!4388867))))

(assert (=> d!2276095 (= res!2962296 ((_ is Cons!71401) (exprs!8469 ct1!256)))))

(declare-fun e!4388866 () (InoxSet Context!15938))

(assert (=> d!2276095 (= (derivationStepZipperUp!2709 ct1!256 c!10305) e!4388866)))

(declare-fun b!7329562 () Bool)

(assert (=> b!7329562 (= e!4388866 ((_ map or) call!667515 (derivationStepZipperUp!2709 (Context!15939 (t!385912 (exprs!8469 ct1!256))) c!10305)))))

(declare-fun b!7329563 () Bool)

(assert (=> b!7329563 (= e!4388866 e!4388865)))

(declare-fun c!1360791 () Bool)

(assert (=> b!7329563 (= c!1360791 ((_ is Cons!71401) (exprs!8469 ct1!256)))))

(declare-fun b!7329564 () Bool)

(declare-fun nullable!8130 (Regex!19029) Bool)

(assert (=> b!7329564 (= e!4388867 (nullable!8130 (h!77849 (exprs!8469 ct1!256))))))

(declare-fun b!7329565 () Bool)

(assert (=> b!7329565 (= e!4388865 ((as const (Array Context!15938 Bool)) false))))

(assert (= (and d!2276095 res!2962296) b!7329564))

(assert (= (and d!2276095 c!1360790) b!7329562))

(assert (= (and d!2276095 (not c!1360790)) b!7329563))

(assert (= (and b!7329563 c!1360791) b!7329561))

(assert (= (and b!7329563 (not c!1360791)) b!7329565))

(assert (= (or b!7329562 b!7329561) bm!667510))

(declare-fun m!7995568 () Bool)

(assert (=> bm!667510 m!7995568))

(declare-fun m!7995570 () Bool)

(assert (=> b!7329562 m!7995570))

(declare-fun m!7995572 () Bool)

(assert (=> b!7329564 m!7995572))

(assert (=> start!715646 d!2276095))

(declare-fun d!2276099 () Bool)

(declare-fun lambda!454501 () Int)

(declare-fun forall!17871 (List!71525 Int) Bool)

(assert (=> d!2276099 (= (inv!90912 cWitness!35) (forall!17871 (exprs!8469 cWitness!35) lambda!454501))))

(declare-fun bs!1917142 () Bool)

(assert (= bs!1917142 d!2276099))

(declare-fun m!7995574 () Bool)

(assert (=> bs!1917142 m!7995574))

(assert (=> start!715646 d!2276099))

(declare-fun bs!1917143 () Bool)

(declare-fun d!2276101 () Bool)

(assert (= bs!1917143 (and d!2276101 d!2276099)))

(declare-fun lambda!454502 () Int)

(assert (=> bs!1917143 (= lambda!454502 lambda!454501)))

(assert (=> d!2276101 (= (inv!90912 ct1!256) (forall!17871 (exprs!8469 ct1!256) lambda!454502))))

(declare-fun bs!1917144 () Bool)

(assert (= bs!1917144 d!2276101))

(declare-fun m!7995576 () Bool)

(assert (=> bs!1917144 m!7995576))

(assert (=> start!715646 d!2276101))

(declare-fun b!7329570 () Bool)

(declare-fun e!4388870 () Bool)

(declare-fun tp!2081122 () Bool)

(declare-fun tp!2081123 () Bool)

(assert (=> b!7329570 (= e!4388870 (and tp!2081122 tp!2081123))))

(assert (=> b!7329523 (= tp!2081116 e!4388870)))

(assert (= (and b!7329523 ((_ is Cons!71401) (exprs!8469 ct1!256))) b!7329570))

(declare-fun b!7329571 () Bool)

(declare-fun e!4388871 () Bool)

(declare-fun tp!2081124 () Bool)

(declare-fun tp!2081125 () Bool)

(assert (=> b!7329571 (= e!4388871 (and tp!2081124 tp!2081125))))

(assert (=> b!7329522 (= tp!2081117 e!4388871)))

(assert (= (and b!7329522 ((_ is Cons!71401) (exprs!8469 cWitness!35))) b!7329571))

(check-sat tp_is_empty!48303 (not b!7329545) (not b!7329570) (not d!2276099) (not b!7329562) (not bm!667510) (not b!7329564) (not b!7329571) (not d!2276101) (not b!7329528))
(check-sat)
