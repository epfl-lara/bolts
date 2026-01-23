; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700844 () Bool)

(assert start!700844)

(declare-fun res!2932462 () Bool)

(declare-fun e!4332391 () Bool)

(assert (=> start!700844 (=> (not res!2932462) (not e!4332391))))

(declare-datatypes ((C!37124 0))(
  ( (C!37125 (val!28510 Int)) )
))
(declare-datatypes ((Regex!18425 0))(
  ( (ElementMatch!18425 (c!1340781 C!37124)) (Concat!27270 (regOne!37362 Regex!18425) (regTwo!37362 Regex!18425)) (EmptyExpr!18425) (Star!18425 (reg!18754 Regex!18425)) (EmptyLang!18425) (Union!18425 (regOne!37363 Regex!18425) (regTwo!37363 Regex!18425)) )
))
(declare-datatypes ((List!69963 0))(
  ( (Nil!69839) (Cons!69839 (h!76287 Regex!18425) (t!383994 List!69963)) )
))
(declare-datatypes ((Context!14754 0))(
  ( (Context!14755 (exprs!7877 List!69963)) )
))
(declare-fun c!7037 () Context!14754)

(get-info :version)

(assert (=> start!700844 (= res!2932462 ((_ is Cons!69839) (exprs!7877 c!7037)))))

(assert (=> start!700844 e!4332391))

(declare-fun e!4332390 () Bool)

(declare-fun inv!89084 (Context!14754) Bool)

(assert (=> start!700844 (and (inv!89084 c!7037) e!4332390)))

(declare-fun b!7227244 () Bool)

(declare-fun size!41523 (List!69963) Int)

(assert (=> b!7227244 (= e!4332391 (>= (size!41523 (t!383994 (exprs!7877 c!7037))) (size!41523 (exprs!7877 c!7037))))))

(declare-fun lt!2572222 () Int)

(declare-fun regexDepth!414 (Regex!18425) Int)

(assert (=> b!7227244 (= lt!2572222 (regexDepth!414 (h!76287 (exprs!7877 c!7037))))))

(declare-fun b!7227245 () Bool)

(declare-fun tp!2032536 () Bool)

(assert (=> b!7227245 (= e!4332390 tp!2032536)))

(assert (= (and start!700844 res!2932462) b!7227244))

(assert (= start!700844 b!7227245))

(declare-fun m!7896350 () Bool)

(assert (=> start!700844 m!7896350))

(declare-fun m!7896352 () Bool)

(assert (=> b!7227244 m!7896352))

(declare-fun m!7896354 () Bool)

(assert (=> b!7227244 m!7896354))

(declare-fun m!7896356 () Bool)

(assert (=> b!7227244 m!7896356))

(check-sat (not start!700844) (not b!7227244) (not b!7227245))
(check-sat)
(get-model)

(declare-fun d!2244695 () Bool)

(declare-fun lambda!438634 () Int)

(declare-fun forall!17250 (List!69963 Int) Bool)

(assert (=> d!2244695 (= (inv!89084 c!7037) (forall!17250 (exprs!7877 c!7037) lambda!438634))))

(declare-fun bs!1902044 () Bool)

(assert (= bs!1902044 d!2244695))

(declare-fun m!7896358 () Bool)

(assert (=> bs!1902044 m!7896358))

(assert (=> start!700844 d!2244695))

(declare-fun d!2244697 () Bool)

(declare-fun lt!2572225 () Int)

(assert (=> d!2244697 (>= lt!2572225 0)))

(declare-fun e!4332394 () Int)

(assert (=> d!2244697 (= lt!2572225 e!4332394)))

(declare-fun c!1340784 () Bool)

(assert (=> d!2244697 (= c!1340784 ((_ is Nil!69839) (t!383994 (exprs!7877 c!7037))))))

(assert (=> d!2244697 (= (size!41523 (t!383994 (exprs!7877 c!7037))) lt!2572225)))

(declare-fun b!7227250 () Bool)

(assert (=> b!7227250 (= e!4332394 0)))

(declare-fun b!7227251 () Bool)

(assert (=> b!7227251 (= e!4332394 (+ 1 (size!41523 (t!383994 (t!383994 (exprs!7877 c!7037))))))))

(assert (= (and d!2244697 c!1340784) b!7227250))

(assert (= (and d!2244697 (not c!1340784)) b!7227251))

(declare-fun m!7896360 () Bool)

(assert (=> b!7227251 m!7896360))

(assert (=> b!7227244 d!2244697))

(declare-fun d!2244699 () Bool)

(declare-fun lt!2572226 () Int)

(assert (=> d!2244699 (>= lt!2572226 0)))

(declare-fun e!4332395 () Int)

(assert (=> d!2244699 (= lt!2572226 e!4332395)))

(declare-fun c!1340785 () Bool)

(assert (=> d!2244699 (= c!1340785 ((_ is Nil!69839) (exprs!7877 c!7037)))))

(assert (=> d!2244699 (= (size!41523 (exprs!7877 c!7037)) lt!2572226)))

(declare-fun b!7227252 () Bool)

(assert (=> b!7227252 (= e!4332395 0)))

(declare-fun b!7227253 () Bool)

(assert (=> b!7227253 (= e!4332395 (+ 1 (size!41523 (t!383994 (exprs!7877 c!7037)))))))

(assert (= (and d!2244699 c!1340785) b!7227252))

(assert (= (and d!2244699 (not c!1340785)) b!7227253))

(assert (=> b!7227253 m!7896352))

(assert (=> b!7227244 d!2244699))

(declare-fun b!7227288 () Bool)

(declare-fun e!4332418 () Int)

(declare-fun e!4332419 () Int)

(assert (=> b!7227288 (= e!4332418 e!4332419)))

(declare-fun c!1340804 () Bool)

(assert (=> b!7227288 (= c!1340804 ((_ is Concat!27270) (h!76287 (exprs!7877 c!7037))))))

(declare-fun c!1340800 () Bool)

(declare-fun c!1340803 () Bool)

(declare-fun call!657837 () Int)

(declare-fun bm!657827 () Bool)

(assert (=> bm!657827 (= call!657837 (regexDepth!414 (ite c!1340803 (regOne!37363 (h!76287 (exprs!7877 c!7037))) (ite c!1340800 (regOne!37362 (h!76287 (exprs!7877 c!7037))) (reg!18754 (h!76287 (exprs!7877 c!7037)))))))))

(declare-fun b!7227289 () Bool)

(assert (=> b!7227289 (= e!4332419 1)))

(declare-fun b!7227290 () Bool)

(declare-fun call!657836 () Int)

(assert (=> b!7227290 (= e!4332418 (+ 1 call!657836))))

(declare-fun bm!657828 () Bool)

(declare-fun call!657833 () Int)

(declare-fun call!657835 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!657828 (= call!657836 (maxBigInt!0 call!657833 call!657835))))

(declare-fun b!7227291 () Bool)

(declare-fun e!4332424 () Int)

(declare-fun call!657834 () Int)

(assert (=> b!7227291 (= e!4332424 (+ 1 call!657834))))

(declare-fun b!7227292 () Bool)

(declare-fun e!4332425 () Bool)

(declare-fun lt!2572229 () Int)

(declare-fun call!657832 () Int)

(assert (=> b!7227292 (= e!4332425 (> lt!2572229 call!657832))))

(declare-fun bm!657829 () Bool)

(assert (=> bm!657829 (= call!657832 (regexDepth!414 (ite c!1340803 (regTwo!37363 (h!76287 (exprs!7877 c!7037))) (regTwo!37362 (h!76287 (exprs!7877 c!7037))))))))

(declare-fun b!7227293 () Bool)

(declare-fun e!4332416 () Bool)

(assert (=> b!7227293 (= e!4332416 (= lt!2572229 1))))

(declare-fun c!1340802 () Bool)

(declare-fun bm!657830 () Bool)

(declare-fun c!1340801 () Bool)

(assert (=> bm!657830 (= call!657834 (regexDepth!414 (ite c!1340802 (reg!18754 (h!76287 (exprs!7877 c!7037))) (ite c!1340801 (regOne!37363 (h!76287 (exprs!7877 c!7037))) (regOne!37362 (h!76287 (exprs!7877 c!7037)))))))))

(declare-fun b!7227294 () Bool)

(declare-fun call!657838 () Int)

(assert (=> b!7227294 (= e!4332416 (> lt!2572229 call!657838))))

(declare-fun b!7227295 () Bool)

(declare-fun e!4332423 () Bool)

(assert (=> b!7227295 (= e!4332423 e!4332425)))

(declare-fun res!2932470 () Bool)

(assert (=> b!7227295 (= res!2932470 (> lt!2572229 call!657837))))

(assert (=> b!7227295 (=> (not res!2932470) (not e!4332425))))

(declare-fun b!7227296 () Bool)

(declare-fun e!4332422 () Bool)

(assert (=> b!7227296 (= e!4332423 e!4332422)))

(assert (=> b!7227296 (= c!1340800 ((_ is Concat!27270) (h!76287 (exprs!7877 c!7037))))))

(declare-fun bm!657831 () Bool)

(assert (=> bm!657831 (= call!657838 call!657837)))

(declare-fun b!7227297 () Bool)

(assert (=> b!7227297 (= c!1340801 ((_ is Union!18425) (h!76287 (exprs!7877 c!7037))))))

(assert (=> b!7227297 (= e!4332424 e!4332418)))

(declare-fun bm!657832 () Bool)

(assert (=> bm!657832 (= call!657835 (regexDepth!414 (ite c!1340801 (regTwo!37363 (h!76287 (exprs!7877 c!7037))) (regTwo!37362 (h!76287 (exprs!7877 c!7037))))))))

(declare-fun b!7227298 () Bool)

(declare-fun e!4332420 () Bool)

(assert (=> b!7227298 (= e!4332420 e!4332423)))

(assert (=> b!7227298 (= c!1340803 ((_ is Union!18425) (h!76287 (exprs!7877 c!7037))))))

(declare-fun b!7227299 () Bool)

(assert (=> b!7227299 (= e!4332419 (+ 1 call!657836))))

(declare-fun b!7227300 () Bool)

(declare-fun c!1340806 () Bool)

(assert (=> b!7227300 (= c!1340806 ((_ is Star!18425) (h!76287 (exprs!7877 c!7037))))))

(assert (=> b!7227300 (= e!4332422 e!4332416)))

(declare-fun b!7227301 () Bool)

(declare-fun e!4332421 () Bool)

(assert (=> b!7227301 (= e!4332421 (> lt!2572229 call!657832))))

(declare-fun b!7227302 () Bool)

(declare-fun e!4332417 () Int)

(assert (=> b!7227302 (= e!4332417 e!4332424)))

(assert (=> b!7227302 (= c!1340802 ((_ is Star!18425) (h!76287 (exprs!7877 c!7037))))))

(declare-fun b!7227303 () Bool)

(declare-fun res!2932469 () Bool)

(assert (=> b!7227303 (=> (not res!2932469) (not e!4332421))))

(assert (=> b!7227303 (= res!2932469 (> lt!2572229 call!657838))))

(assert (=> b!7227303 (= e!4332422 e!4332421)))

(declare-fun d!2244701 () Bool)

(assert (=> d!2244701 e!4332420))

(declare-fun res!2932471 () Bool)

(assert (=> d!2244701 (=> (not res!2932471) (not e!4332420))))

(assert (=> d!2244701 (= res!2932471 (> lt!2572229 0))))

(assert (=> d!2244701 (= lt!2572229 e!4332417)))

(declare-fun c!1340805 () Bool)

(assert (=> d!2244701 (= c!1340805 ((_ is ElementMatch!18425) (h!76287 (exprs!7877 c!7037))))))

(assert (=> d!2244701 (= (regexDepth!414 (h!76287 (exprs!7877 c!7037))) lt!2572229)))

(declare-fun b!7227304 () Bool)

(assert (=> b!7227304 (= e!4332417 1)))

(declare-fun bm!657833 () Bool)

(assert (=> bm!657833 (= call!657833 call!657834)))

(assert (= (and d!2244701 c!1340805) b!7227304))

(assert (= (and d!2244701 (not c!1340805)) b!7227302))

(assert (= (and b!7227302 c!1340802) b!7227291))

(assert (= (and b!7227302 (not c!1340802)) b!7227297))

(assert (= (and b!7227297 c!1340801) b!7227290))

(assert (= (and b!7227297 (not c!1340801)) b!7227288))

(assert (= (and b!7227288 c!1340804) b!7227299))

(assert (= (and b!7227288 (not c!1340804)) b!7227289))

(assert (= (or b!7227290 b!7227299) bm!657833))

(assert (= (or b!7227290 b!7227299) bm!657832))

(assert (= (or b!7227290 b!7227299) bm!657828))

(assert (= (or b!7227291 bm!657833) bm!657830))

(assert (= (and d!2244701 res!2932471) b!7227298))

(assert (= (and b!7227298 c!1340803) b!7227295))

(assert (= (and b!7227298 (not c!1340803)) b!7227296))

(assert (= (and b!7227295 res!2932470) b!7227292))

(assert (= (and b!7227296 c!1340800) b!7227303))

(assert (= (and b!7227296 (not c!1340800)) b!7227300))

(assert (= (and b!7227303 res!2932469) b!7227301))

(assert (= (and b!7227300 c!1340806) b!7227294))

(assert (= (and b!7227300 (not c!1340806)) b!7227293))

(assert (= (or b!7227303 b!7227294) bm!657831))

(assert (= (or b!7227295 bm!657831) bm!657827))

(assert (= (or b!7227292 b!7227301) bm!657829))

(declare-fun m!7896364 () Bool)

(assert (=> bm!657829 m!7896364))

(declare-fun m!7896366 () Bool)

(assert (=> bm!657832 m!7896366))

(declare-fun m!7896368 () Bool)

(assert (=> bm!657827 m!7896368))

(declare-fun m!7896370 () Bool)

(assert (=> bm!657828 m!7896370))

(declare-fun m!7896372 () Bool)

(assert (=> bm!657830 m!7896372))

(assert (=> b!7227244 d!2244701))

(declare-fun b!7227313 () Bool)

(declare-fun e!4332430 () Bool)

(declare-fun tp!2032541 () Bool)

(declare-fun tp!2032542 () Bool)

(assert (=> b!7227313 (= e!4332430 (and tp!2032541 tp!2032542))))

(assert (=> b!7227245 (= tp!2032536 e!4332430)))

(assert (= (and b!7227245 ((_ is Cons!69839) (exprs!7877 c!7037))) b!7227313))

(check-sat (not bm!657827) (not b!7227251) (not bm!657829) (not d!2244695) (not bm!657828) (not b!7227253) (not b!7227313) (not bm!657832) (not bm!657830))
(check-sat)
