; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700090 () Bool)

(assert start!700090)

(declare-fun e!4320396 () Bool)

(declare-fun setRes!53368 () Bool)

(declare-fun tp!2000045 () Bool)

(declare-fun setNonEmpty!53368 () Bool)

(declare-datatypes ((C!37040 0))(
  ( (C!37041 (val!28468 Int)) )
))
(declare-datatypes ((Regex!18383 0))(
  ( (ElementMatch!18383 (c!1339067 C!37040)) (Concat!27228 (regOne!37278 Regex!18383) (regTwo!37278 Regex!18383)) (EmptyExpr!18383) (Star!18383 (reg!18712 Regex!18383)) (EmptyLang!18383) (Union!18383 (regOne!37279 Regex!18383) (regTwo!37279 Regex!18383)) )
))
(declare-datatypes ((List!69870 0))(
  ( (Nil!69746) (Cons!69746 (h!76194 Regex!18383) (t!383895 List!69870)) )
))
(declare-datatypes ((Context!14670 0))(
  ( (Context!14671 (exprs!7835 List!69870)) )
))
(declare-fun setElem!53368 () Context!14670)

(declare-fun inv!88979 (Context!14670) Bool)

(assert (=> setNonEmpty!53368 (= setRes!53368 (and tp!2000045 (inv!88979 setElem!53368) e!4320396))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3517 () (InoxSet Context!14670))

(declare-fun setRest!53368 () (InoxSet Context!14670))

(assert (=> setNonEmpty!53368 (= z!3517 ((_ map or) (store ((as const (Array Context!14670 Bool)) false) setElem!53368 true) setRest!53368))))

(declare-fun b!7194605 () Bool)

(declare-fun e!4320395 () Bool)

(declare-fun tp_is_empty!46323 () Bool)

(declare-fun tp!2000048 () Bool)

(assert (=> b!7194605 (= e!4320395 (and tp_is_empty!46323 tp!2000048))))

(declare-fun b!7194606 () Bool)

(declare-fun tp!2000046 () Bool)

(assert (=> b!7194606 (= e!4320396 tp!2000046)))

(declare-fun b!7194607 () Bool)

(declare-fun res!2928972 () Bool)

(declare-fun e!4320397 () Bool)

(assert (=> b!7194607 (=> (not res!2928972) (not e!4320397))))

(declare-datatypes ((List!69871 0))(
  ( (Nil!69747) (Cons!69747 (h!76195 C!37040) (t!383896 List!69871)) )
))
(declare-fun s!7961 () List!69871)

(declare-fun isEmpty!40261 (List!69871) Bool)

(assert (=> b!7194607 (= res!2928972 (not (isEmpty!40261 s!7961)))))

(declare-fun res!2928970 () Bool)

(assert (=> start!700090 (=> (not res!2928970) (not e!4320397))))

(declare-fun c!10544 () Context!14670)

(assert (=> start!700090 (= res!2928970 (= z!3517 (store ((as const (Array Context!14670 Bool)) false) c!10544 true)))))

(assert (=> start!700090 e!4320397))

(declare-fun condSetEmpty!53368 () Bool)

(assert (=> start!700090 (= condSetEmpty!53368 (= z!3517 ((as const (Array Context!14670 Bool)) false)))))

(assert (=> start!700090 setRes!53368))

(declare-fun e!4320394 () Bool)

(assert (=> start!700090 (and (inv!88979 c!10544) e!4320394)))

(assert (=> start!700090 e!4320395))

(declare-fun setIsEmpty!53368 () Bool)

(assert (=> setIsEmpty!53368 setRes!53368))

(declare-fun b!7194608 () Bool)

(declare-fun res!2928969 () Bool)

(assert (=> b!7194608 (=> (not res!2928969) (not e!4320397))))

(declare-fun isEmpty!40262 (List!69870) Bool)

(assert (=> b!7194608 (= res!2928969 (not (isEmpty!40262 (exprs!7835 c!10544))))))

(declare-fun b!7194609 () Bool)

(declare-fun res!2928971 () Bool)

(assert (=> b!7194609 (=> (not res!2928971) (not e!4320397))))

(declare-fun head!14726 (List!69870) Regex!18383)

(assert (=> b!7194609 (= res!2928971 (= (head!14726 (exprs!7835 c!10544)) EmptyLang!18383))))

(declare-fun b!7194610 () Bool)

(declare-fun tp!2000047 () Bool)

(assert (=> b!7194610 (= e!4320394 tp!2000047)))

(declare-fun b!7194611 () Bool)

(declare-fun derivationStepZipperUp!2349 (Context!14670 C!37040) (InoxSet Context!14670))

(declare-fun head!14727 (List!69871) C!37040)

(assert (=> b!7194611 (= e!4320397 (not (= (derivationStepZipperUp!2349 c!10544 (head!14727 s!7961)) ((as const (Array Context!14670 Bool)) false))))))

(assert (= (and start!700090 res!2928970) b!7194608))

(assert (= (and b!7194608 res!2928969) b!7194609))

(assert (= (and b!7194609 res!2928971) b!7194607))

(assert (= (and b!7194607 res!2928972) b!7194611))

(assert (= (and start!700090 condSetEmpty!53368) setIsEmpty!53368))

(assert (= (and start!700090 (not condSetEmpty!53368)) setNonEmpty!53368))

(assert (= setNonEmpty!53368 b!7194606))

(assert (= start!700090 b!7194610))

(get-info :version)

(assert (= (and start!700090 ((_ is Cons!69747) s!7961)) b!7194605))

(declare-fun m!7888990 () Bool)

(assert (=> b!7194608 m!7888990))

(declare-fun m!7888992 () Bool)

(assert (=> b!7194607 m!7888992))

(declare-fun m!7888994 () Bool)

(assert (=> b!7194611 m!7888994))

(assert (=> b!7194611 m!7888994))

(declare-fun m!7888996 () Bool)

(assert (=> b!7194611 m!7888996))

(declare-fun m!7888998 () Bool)

(assert (=> start!700090 m!7888998))

(declare-fun m!7889000 () Bool)

(assert (=> start!700090 m!7889000))

(declare-fun m!7889002 () Bool)

(assert (=> b!7194609 m!7889002))

(declare-fun m!7889004 () Bool)

(assert (=> setNonEmpty!53368 m!7889004))

(check-sat (not b!7194610) (not b!7194605) tp_is_empty!46323 (not b!7194611) (not b!7194607) (not b!7194608) (not b!7194606) (not b!7194609) (not start!700090) (not setNonEmpty!53368))
(check-sat)
(get-model)

(declare-fun d!2241234 () Bool)

(assert (=> d!2241234 (= (isEmpty!40262 (exprs!7835 c!10544)) ((_ is Nil!69746) (exprs!7835 c!10544)))))

(assert (=> b!7194608 d!2241234))

(declare-fun d!2241236 () Bool)

(declare-fun lambda!438069 () Int)

(declare-fun forall!17206 (List!69870 Int) Bool)

(assert (=> d!2241236 (= (inv!88979 setElem!53368) (forall!17206 (exprs!7835 setElem!53368) lambda!438069))))

(declare-fun bs!1900464 () Bool)

(assert (= bs!1900464 d!2241236))

(declare-fun m!7889018 () Bool)

(assert (=> bs!1900464 m!7889018))

(assert (=> setNonEmpty!53368 d!2241236))

(declare-fun bs!1900465 () Bool)

(declare-fun d!2241252 () Bool)

(assert (= bs!1900465 (and d!2241252 d!2241236)))

(declare-fun lambda!438070 () Int)

(assert (=> bs!1900465 (= lambda!438070 lambda!438069)))

(assert (=> d!2241252 (= (inv!88979 c!10544) (forall!17206 (exprs!7835 c!10544) lambda!438070))))

(declare-fun bs!1900466 () Bool)

(assert (= bs!1900466 d!2241252))

(declare-fun m!7889020 () Bool)

(assert (=> bs!1900466 m!7889020))

(assert (=> start!700090 d!2241252))

(declare-fun d!2241254 () Bool)

(assert (=> d!2241254 (= (head!14726 (exprs!7835 c!10544)) (h!76194 (exprs!7835 c!10544)))))

(assert (=> b!7194609 d!2241254))

(declare-fun d!2241256 () Bool)

(declare-fun c!1339078 () Bool)

(declare-fun e!4320424 () Bool)

(assert (=> d!2241256 (= c!1339078 e!4320424)))

(declare-fun res!2928978 () Bool)

(assert (=> d!2241256 (=> (not res!2928978) (not e!4320424))))

(assert (=> d!2241256 (= res!2928978 ((_ is Cons!69746) (exprs!7835 c!10544)))))

(declare-fun e!4320423 () (InoxSet Context!14670))

(assert (=> d!2241256 (= (derivationStepZipperUp!2349 c!10544 (head!14727 s!7961)) e!4320423)))

(declare-fun call!656027 () (InoxSet Context!14670))

(declare-fun b!7194653 () Bool)

(assert (=> b!7194653 (= e!4320423 ((_ map or) call!656027 (derivationStepZipperUp!2349 (Context!14671 (t!383895 (exprs!7835 c!10544))) (head!14727 s!7961))))))

(declare-fun bm!656022 () Bool)

(declare-fun derivationStepZipperDown!2526 (Regex!18383 Context!14670 C!37040) (InoxSet Context!14670))

(assert (=> bm!656022 (= call!656027 (derivationStepZipperDown!2526 (h!76194 (exprs!7835 c!10544)) (Context!14671 (t!383895 (exprs!7835 c!10544))) (head!14727 s!7961)))))

(declare-fun b!7194654 () Bool)

(declare-fun nullable!7795 (Regex!18383) Bool)

(assert (=> b!7194654 (= e!4320424 (nullable!7795 (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194655 () Bool)

(declare-fun e!4320425 () (InoxSet Context!14670))

(assert (=> b!7194655 (= e!4320425 call!656027)))

(declare-fun b!7194656 () Bool)

(assert (=> b!7194656 (= e!4320423 e!4320425)))

(declare-fun c!1339079 () Bool)

(assert (=> b!7194656 (= c!1339079 ((_ is Cons!69746) (exprs!7835 c!10544)))))

(declare-fun b!7194657 () Bool)

(assert (=> b!7194657 (= e!4320425 ((as const (Array Context!14670 Bool)) false))))

(assert (= (and d!2241256 res!2928978) b!7194654))

(assert (= (and d!2241256 c!1339078) b!7194653))

(assert (= (and d!2241256 (not c!1339078)) b!7194656))

(assert (= (and b!7194656 c!1339079) b!7194655))

(assert (= (and b!7194656 (not c!1339079)) b!7194657))

(assert (= (or b!7194653 b!7194655) bm!656022))

(assert (=> b!7194653 m!7888994))

(declare-fun m!7889022 () Bool)

(assert (=> b!7194653 m!7889022))

(assert (=> bm!656022 m!7888994))

(declare-fun m!7889024 () Bool)

(assert (=> bm!656022 m!7889024))

(declare-fun m!7889026 () Bool)

(assert (=> b!7194654 m!7889026))

(assert (=> b!7194611 d!2241256))

(declare-fun d!2241258 () Bool)

(assert (=> d!2241258 (= (head!14727 s!7961) (h!76195 s!7961))))

(assert (=> b!7194611 d!2241258))

(declare-fun d!2241260 () Bool)

(assert (=> d!2241260 (= (isEmpty!40261 s!7961) ((_ is Nil!69747) s!7961))))

(assert (=> b!7194607 d!2241260))

(declare-fun condSetEmpty!53374 () Bool)

(assert (=> setNonEmpty!53368 (= condSetEmpty!53374 (= setRest!53368 ((as const (Array Context!14670 Bool)) false)))))

(declare-fun setRes!53374 () Bool)

(assert (=> setNonEmpty!53368 (= tp!2000045 setRes!53374)))

(declare-fun setIsEmpty!53374 () Bool)

(assert (=> setIsEmpty!53374 setRes!53374))

(declare-fun tp!2000070 () Bool)

(declare-fun e!4320428 () Bool)

(declare-fun setNonEmpty!53374 () Bool)

(declare-fun setElem!53374 () Context!14670)

(assert (=> setNonEmpty!53374 (= setRes!53374 (and tp!2000070 (inv!88979 setElem!53374) e!4320428))))

(declare-fun setRest!53374 () (InoxSet Context!14670))

(assert (=> setNonEmpty!53374 (= setRest!53368 ((_ map or) (store ((as const (Array Context!14670 Bool)) false) setElem!53374 true) setRest!53374))))

(declare-fun b!7194662 () Bool)

(declare-fun tp!2000071 () Bool)

(assert (=> b!7194662 (= e!4320428 tp!2000071)))

(assert (= (and setNonEmpty!53368 condSetEmpty!53374) setIsEmpty!53374))

(assert (= (and setNonEmpty!53368 (not condSetEmpty!53374)) setNonEmpty!53374))

(assert (= setNonEmpty!53374 b!7194662))

(declare-fun m!7889028 () Bool)

(assert (=> setNonEmpty!53374 m!7889028))

(declare-fun b!7194667 () Bool)

(declare-fun e!4320431 () Bool)

(declare-fun tp!2000074 () Bool)

(assert (=> b!7194667 (= e!4320431 (and tp_is_empty!46323 tp!2000074))))

(assert (=> b!7194605 (= tp!2000048 e!4320431)))

(assert (= (and b!7194605 ((_ is Cons!69747) (t!383896 s!7961))) b!7194667))

(declare-fun b!7194672 () Bool)

(declare-fun e!4320434 () Bool)

(declare-fun tp!2000079 () Bool)

(declare-fun tp!2000080 () Bool)

(assert (=> b!7194672 (= e!4320434 (and tp!2000079 tp!2000080))))

(assert (=> b!7194610 (= tp!2000047 e!4320434)))

(assert (= (and b!7194610 ((_ is Cons!69746) (exprs!7835 c!10544))) b!7194672))

(declare-fun b!7194673 () Bool)

(declare-fun e!4320435 () Bool)

(declare-fun tp!2000081 () Bool)

(declare-fun tp!2000082 () Bool)

(assert (=> b!7194673 (= e!4320435 (and tp!2000081 tp!2000082))))

(assert (=> b!7194606 (= tp!2000046 e!4320435)))

(assert (= (and b!7194606 ((_ is Cons!69746) (exprs!7835 setElem!53368))) b!7194673))

(check-sat (not b!7194667) (not b!7194662) (not d!2241236) (not d!2241252) (not bm!656022) tp_is_empty!46323 (not b!7194673) (not b!7194672) (not b!7194653) (not b!7194654) (not setNonEmpty!53374))
(check-sat)
(get-model)

(declare-fun d!2241274 () Bool)

(declare-fun res!2928994 () Bool)

(declare-fun e!4320463 () Bool)

(assert (=> d!2241274 (=> res!2928994 e!4320463)))

(assert (=> d!2241274 (= res!2928994 ((_ is Nil!69746) (exprs!7835 c!10544)))))

(assert (=> d!2241274 (= (forall!17206 (exprs!7835 c!10544) lambda!438070) e!4320463)))

(declare-fun b!7194713 () Bool)

(declare-fun e!4320464 () Bool)

(assert (=> b!7194713 (= e!4320463 e!4320464)))

(declare-fun res!2928995 () Bool)

(assert (=> b!7194713 (=> (not res!2928995) (not e!4320464))))

(declare-fun dynLambda!28398 (Int Regex!18383) Bool)

(assert (=> b!7194713 (= res!2928995 (dynLambda!28398 lambda!438070 (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194714 () Bool)

(assert (=> b!7194714 (= e!4320464 (forall!17206 (t!383895 (exprs!7835 c!10544)) lambda!438070))))

(assert (= (and d!2241274 (not res!2928994)) b!7194713))

(assert (= (and b!7194713 res!2928995) b!7194714))

(declare-fun b_lambda!275799 () Bool)

(assert (=> (not b_lambda!275799) (not b!7194713)))

(declare-fun m!7889048 () Bool)

(assert (=> b!7194713 m!7889048))

(declare-fun m!7889050 () Bool)

(assert (=> b!7194714 m!7889050))

(assert (=> d!2241252 d!2241274))

(declare-fun d!2241276 () Bool)

(declare-fun nullableFct!3048 (Regex!18383) Bool)

(assert (=> d!2241276 (= (nullable!7795 (h!76194 (exprs!7835 c!10544))) (nullableFct!3048 (h!76194 (exprs!7835 c!10544))))))

(declare-fun bs!1900471 () Bool)

(assert (= bs!1900471 d!2241276))

(declare-fun m!7889052 () Bool)

(assert (=> bs!1900471 m!7889052))

(assert (=> b!7194654 d!2241276))

(declare-fun bs!1900472 () Bool)

(declare-fun d!2241278 () Bool)

(assert (= bs!1900472 (and d!2241278 d!2241236)))

(declare-fun lambda!438072 () Int)

(assert (=> bs!1900472 (= lambda!438072 lambda!438069)))

(declare-fun bs!1900473 () Bool)

(assert (= bs!1900473 (and d!2241278 d!2241252)))

(assert (=> bs!1900473 (= lambda!438072 lambda!438070)))

(assert (=> d!2241278 (= (inv!88979 setElem!53374) (forall!17206 (exprs!7835 setElem!53374) lambda!438072))))

(declare-fun bs!1900474 () Bool)

(assert (= bs!1900474 d!2241278))

(declare-fun m!7889054 () Bool)

(assert (=> bs!1900474 m!7889054))

(assert (=> setNonEmpty!53374 d!2241278))

(declare-fun bm!656054 () Bool)

(declare-fun c!1339111 () Bool)

(declare-fun c!1339108 () Bool)

(declare-fun call!656062 () List!69870)

(declare-fun $colon$colon!2848 (List!69870 Regex!18383) List!69870)

(assert (=> bm!656054 (= call!656062 ($colon$colon!2848 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))) (ite (or c!1339108 c!1339111) (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (h!76194 (exprs!7835 c!10544)))))))

(declare-fun b!7194771 () Bool)

(declare-fun e!4320494 () Bool)

(assert (=> b!7194771 (= e!4320494 (nullable!7795 (regOne!37278 (h!76194 (exprs!7835 c!10544)))))))

(declare-fun b!7194772 () Bool)

(declare-fun e!4320497 () (InoxSet Context!14670))

(assert (=> b!7194772 (= e!4320497 ((as const (Array Context!14670 Bool)) false))))

(declare-fun d!2241280 () Bool)

(declare-fun c!1339107 () Bool)

(assert (=> d!2241280 (= c!1339107 (and ((_ is ElementMatch!18383) (h!76194 (exprs!7835 c!10544))) (= (c!1339067 (h!76194 (exprs!7835 c!10544))) (head!14727 s!7961))))))

(declare-fun e!4320495 () (InoxSet Context!14670))

(assert (=> d!2241280 (= (derivationStepZipperDown!2526 (h!76194 (exprs!7835 c!10544)) (Context!14671 (t!383895 (exprs!7835 c!10544))) (head!14727 s!7961)) e!4320495)))

(declare-fun b!7194773 () Bool)

(declare-fun c!1339110 () Bool)

(assert (=> b!7194773 (= c!1339110 ((_ is Star!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun e!4320493 () (InoxSet Context!14670))

(assert (=> b!7194773 (= e!4320493 e!4320497)))

(declare-fun b!7194774 () Bool)

(declare-fun call!656063 () (InoxSet Context!14670))

(assert (=> b!7194774 (= e!4320493 call!656063)))

(declare-fun b!7194775 () Bool)

(declare-fun e!4320496 () (InoxSet Context!14670))

(assert (=> b!7194775 (= e!4320496 e!4320493)))

(assert (=> b!7194775 (= c!1339111 ((_ is Concat!27228) (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194776 () Bool)

(declare-fun call!656059 () (InoxSet Context!14670))

(declare-fun call!656060 () (InoxSet Context!14670))

(assert (=> b!7194776 (= e!4320496 ((_ map or) call!656059 call!656060))))

(declare-fun bm!656055 () Bool)

(declare-fun c!1339109 () Bool)

(assert (=> bm!656055 (= call!656059 (derivationStepZipperDown!2526 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))) (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062)) (head!14727 s!7961)))))

(declare-fun bm!656056 () Bool)

(declare-fun call!656064 () List!69870)

(declare-fun call!656061 () (InoxSet Context!14670))

(assert (=> bm!656056 (= call!656061 (derivationStepZipperDown!2526 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))) (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064)) (head!14727 s!7961)))))

(declare-fun bm!656057 () Bool)

(assert (=> bm!656057 (= call!656064 call!656062)))

(declare-fun bm!656058 () Bool)

(assert (=> bm!656058 (= call!656063 call!656060)))

(declare-fun bm!656059 () Bool)

(assert (=> bm!656059 (= call!656060 call!656061)))

(declare-fun b!7194777 () Bool)

(declare-fun e!4320492 () (InoxSet Context!14670))

(assert (=> b!7194777 (= e!4320492 ((_ map or) call!656061 call!656059))))

(declare-fun b!7194778 () Bool)

(assert (=> b!7194778 (= c!1339108 e!4320494)))

(declare-fun res!2928999 () Bool)

(assert (=> b!7194778 (=> (not res!2928999) (not e!4320494))))

(assert (=> b!7194778 (= res!2928999 ((_ is Concat!27228) (h!76194 (exprs!7835 c!10544))))))

(assert (=> b!7194778 (= e!4320492 e!4320496)))

(declare-fun b!7194779 () Bool)

(assert (=> b!7194779 (= e!4320497 call!656063)))

(declare-fun b!7194780 () Bool)

(assert (=> b!7194780 (= e!4320495 e!4320492)))

(assert (=> b!7194780 (= c!1339109 ((_ is Union!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194781 () Bool)

(assert (=> b!7194781 (= e!4320495 (store ((as const (Array Context!14670 Bool)) false) (Context!14671 (t!383895 (exprs!7835 c!10544))) true))))

(assert (= (and d!2241280 c!1339107) b!7194781))

(assert (= (and d!2241280 (not c!1339107)) b!7194780))

(assert (= (and b!7194780 c!1339109) b!7194777))

(assert (= (and b!7194780 (not c!1339109)) b!7194778))

(assert (= (and b!7194778 res!2928999) b!7194771))

(assert (= (and b!7194778 c!1339108) b!7194776))

(assert (= (and b!7194778 (not c!1339108)) b!7194775))

(assert (= (and b!7194775 c!1339111) b!7194774))

(assert (= (and b!7194775 (not c!1339111)) b!7194773))

(assert (= (and b!7194773 c!1339110) b!7194779))

(assert (= (and b!7194773 (not c!1339110)) b!7194772))

(assert (= (or b!7194774 b!7194779) bm!656057))

(assert (= (or b!7194774 b!7194779) bm!656058))

(assert (= (or b!7194776 bm!656058) bm!656059))

(assert (= (or b!7194776 bm!656057) bm!656054))

(assert (= (or b!7194777 bm!656059) bm!656056))

(assert (= (or b!7194777 b!7194776) bm!656055))

(declare-fun m!7889072 () Bool)

(assert (=> b!7194771 m!7889072))

(assert (=> bm!656055 m!7888994))

(declare-fun m!7889074 () Bool)

(assert (=> bm!656055 m!7889074))

(assert (=> bm!656056 m!7888994))

(declare-fun m!7889076 () Bool)

(assert (=> bm!656056 m!7889076))

(declare-fun m!7889078 () Bool)

(assert (=> bm!656054 m!7889078))

(declare-fun m!7889080 () Bool)

(assert (=> b!7194781 m!7889080))

(assert (=> bm!656022 d!2241280))

(declare-fun d!2241286 () Bool)

(declare-fun res!2929000 () Bool)

(declare-fun e!4320498 () Bool)

(assert (=> d!2241286 (=> res!2929000 e!4320498)))

(assert (=> d!2241286 (= res!2929000 ((_ is Nil!69746) (exprs!7835 setElem!53368)))))

(assert (=> d!2241286 (= (forall!17206 (exprs!7835 setElem!53368) lambda!438069) e!4320498)))

(declare-fun b!7194782 () Bool)

(declare-fun e!4320499 () Bool)

(assert (=> b!7194782 (= e!4320498 e!4320499)))

(declare-fun res!2929001 () Bool)

(assert (=> b!7194782 (=> (not res!2929001) (not e!4320499))))

(assert (=> b!7194782 (= res!2929001 (dynLambda!28398 lambda!438069 (h!76194 (exprs!7835 setElem!53368))))))

(declare-fun b!7194783 () Bool)

(assert (=> b!7194783 (= e!4320499 (forall!17206 (t!383895 (exprs!7835 setElem!53368)) lambda!438069))))

(assert (= (and d!2241286 (not res!2929000)) b!7194782))

(assert (= (and b!7194782 res!2929001) b!7194783))

(declare-fun b_lambda!275805 () Bool)

(assert (=> (not b_lambda!275805) (not b!7194782)))

(declare-fun m!7889082 () Bool)

(assert (=> b!7194782 m!7889082))

(declare-fun m!7889084 () Bool)

(assert (=> b!7194783 m!7889084))

(assert (=> d!2241236 d!2241286))

(declare-fun d!2241288 () Bool)

(declare-fun c!1339112 () Bool)

(declare-fun e!4320501 () Bool)

(assert (=> d!2241288 (= c!1339112 e!4320501)))

(declare-fun res!2929002 () Bool)

(assert (=> d!2241288 (=> (not res!2929002) (not e!4320501))))

(assert (=> d!2241288 (= res!2929002 ((_ is Cons!69746) (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))

(declare-fun e!4320500 () (InoxSet Context!14670))

(assert (=> d!2241288 (= (derivationStepZipperUp!2349 (Context!14671 (t!383895 (exprs!7835 c!10544))) (head!14727 s!7961)) e!4320500)))

(declare-fun call!656065 () (InoxSet Context!14670))

(declare-fun b!7194784 () Bool)

(assert (=> b!7194784 (= e!4320500 ((_ map or) call!656065 (derivationStepZipperUp!2349 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (head!14727 s!7961))))))

(declare-fun bm!656060 () Bool)

(assert (=> bm!656060 (= call!656065 (derivationStepZipperDown!2526 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))) (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (head!14727 s!7961)))))

(declare-fun b!7194785 () Bool)

(assert (=> b!7194785 (= e!4320501 (nullable!7795 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(declare-fun b!7194786 () Bool)

(declare-fun e!4320502 () (InoxSet Context!14670))

(assert (=> b!7194786 (= e!4320502 call!656065)))

(declare-fun b!7194787 () Bool)

(assert (=> b!7194787 (= e!4320500 e!4320502)))

(declare-fun c!1339113 () Bool)

(assert (=> b!7194787 (= c!1339113 ((_ is Cons!69746) (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))

(declare-fun b!7194788 () Bool)

(assert (=> b!7194788 (= e!4320502 ((as const (Array Context!14670 Bool)) false))))

(assert (= (and d!2241288 res!2929002) b!7194785))

(assert (= (and d!2241288 c!1339112) b!7194784))

(assert (= (and d!2241288 (not c!1339112)) b!7194787))

(assert (= (and b!7194787 c!1339113) b!7194786))

(assert (= (and b!7194787 (not c!1339113)) b!7194788))

(assert (= (or b!7194784 b!7194786) bm!656060))

(assert (=> b!7194784 m!7888994))

(declare-fun m!7889086 () Bool)

(assert (=> b!7194784 m!7889086))

(assert (=> bm!656060 m!7888994))

(declare-fun m!7889088 () Bool)

(assert (=> bm!656060 m!7889088))

(declare-fun m!7889090 () Bool)

(assert (=> b!7194785 m!7889090))

(assert (=> b!7194653 d!2241288))

(declare-fun b!7194789 () Bool)

(declare-fun e!4320503 () Bool)

(declare-fun tp!2000112 () Bool)

(declare-fun tp!2000113 () Bool)

(assert (=> b!7194789 (= e!4320503 (and tp!2000112 tp!2000113))))

(assert (=> b!7194662 (= tp!2000071 e!4320503)))

(assert (= (and b!7194662 ((_ is Cons!69746) (exprs!7835 setElem!53374))) b!7194789))

(declare-fun condSetEmpty!53376 () Bool)

(assert (=> setNonEmpty!53374 (= condSetEmpty!53376 (= setRest!53374 ((as const (Array Context!14670 Bool)) false)))))

(declare-fun setRes!53376 () Bool)

(assert (=> setNonEmpty!53374 (= tp!2000070 setRes!53376)))

(declare-fun setIsEmpty!53376 () Bool)

(assert (=> setIsEmpty!53376 setRes!53376))

(declare-fun setNonEmpty!53376 () Bool)

(declare-fun e!4320504 () Bool)

(declare-fun setElem!53376 () Context!14670)

(declare-fun tp!2000114 () Bool)

(assert (=> setNonEmpty!53376 (= setRes!53376 (and tp!2000114 (inv!88979 setElem!53376) e!4320504))))

(declare-fun setRest!53376 () (InoxSet Context!14670))

(assert (=> setNonEmpty!53376 (= setRest!53374 ((_ map or) (store ((as const (Array Context!14670 Bool)) false) setElem!53376 true) setRest!53376))))

(declare-fun b!7194790 () Bool)

(declare-fun tp!2000115 () Bool)

(assert (=> b!7194790 (= e!4320504 tp!2000115)))

(assert (= (and setNonEmpty!53374 condSetEmpty!53376) setIsEmpty!53376))

(assert (= (and setNonEmpty!53374 (not condSetEmpty!53376)) setNonEmpty!53376))

(assert (= setNonEmpty!53376 b!7194790))

(declare-fun m!7889092 () Bool)

(assert (=> setNonEmpty!53376 m!7889092))

(declare-fun b!7194803 () Bool)

(declare-fun e!4320507 () Bool)

(declare-fun tp!2000126 () Bool)

(assert (=> b!7194803 (= e!4320507 tp!2000126)))

(declare-fun b!7194804 () Bool)

(declare-fun tp!2000130 () Bool)

(declare-fun tp!2000128 () Bool)

(assert (=> b!7194804 (= e!4320507 (and tp!2000130 tp!2000128))))

(declare-fun b!7194802 () Bool)

(declare-fun tp!2000127 () Bool)

(declare-fun tp!2000129 () Bool)

(assert (=> b!7194802 (= e!4320507 (and tp!2000127 tp!2000129))))

(declare-fun b!7194801 () Bool)

(assert (=> b!7194801 (= e!4320507 tp_is_empty!46323)))

(assert (=> b!7194672 (= tp!2000079 e!4320507)))

(assert (= (and b!7194672 ((_ is ElementMatch!18383) (h!76194 (exprs!7835 c!10544)))) b!7194801))

(assert (= (and b!7194672 ((_ is Concat!27228) (h!76194 (exprs!7835 c!10544)))) b!7194802))

(assert (= (and b!7194672 ((_ is Star!18383) (h!76194 (exprs!7835 c!10544)))) b!7194803))

(assert (= (and b!7194672 ((_ is Union!18383) (h!76194 (exprs!7835 c!10544)))) b!7194804))

(declare-fun b!7194805 () Bool)

(declare-fun e!4320508 () Bool)

(declare-fun tp!2000131 () Bool)

(declare-fun tp!2000132 () Bool)

(assert (=> b!7194805 (= e!4320508 (and tp!2000131 tp!2000132))))

(assert (=> b!7194672 (= tp!2000080 e!4320508)))

(assert (= (and b!7194672 ((_ is Cons!69746) (t!383895 (exprs!7835 c!10544)))) b!7194805))

(declare-fun b!7194806 () Bool)

(declare-fun e!4320509 () Bool)

(declare-fun tp!2000133 () Bool)

(assert (=> b!7194806 (= e!4320509 (and tp_is_empty!46323 tp!2000133))))

(assert (=> b!7194667 (= tp!2000074 e!4320509)))

(assert (= (and b!7194667 ((_ is Cons!69747) (t!383896 (t!383896 s!7961)))) b!7194806))

(declare-fun b!7194809 () Bool)

(declare-fun e!4320510 () Bool)

(declare-fun tp!2000134 () Bool)

(assert (=> b!7194809 (= e!4320510 tp!2000134)))

(declare-fun b!7194810 () Bool)

(declare-fun tp!2000138 () Bool)

(declare-fun tp!2000136 () Bool)

(assert (=> b!7194810 (= e!4320510 (and tp!2000138 tp!2000136))))

(declare-fun b!7194808 () Bool)

(declare-fun tp!2000135 () Bool)

(declare-fun tp!2000137 () Bool)

(assert (=> b!7194808 (= e!4320510 (and tp!2000135 tp!2000137))))

(declare-fun b!7194807 () Bool)

(assert (=> b!7194807 (= e!4320510 tp_is_empty!46323)))

(assert (=> b!7194673 (= tp!2000081 e!4320510)))

(assert (= (and b!7194673 ((_ is ElementMatch!18383) (h!76194 (exprs!7835 setElem!53368)))) b!7194807))

(assert (= (and b!7194673 ((_ is Concat!27228) (h!76194 (exprs!7835 setElem!53368)))) b!7194808))

(assert (= (and b!7194673 ((_ is Star!18383) (h!76194 (exprs!7835 setElem!53368)))) b!7194809))

(assert (= (and b!7194673 ((_ is Union!18383) (h!76194 (exprs!7835 setElem!53368)))) b!7194810))

(declare-fun b!7194811 () Bool)

(declare-fun e!4320511 () Bool)

(declare-fun tp!2000139 () Bool)

(declare-fun tp!2000140 () Bool)

(assert (=> b!7194811 (= e!4320511 (and tp!2000139 tp!2000140))))

(assert (=> b!7194673 (= tp!2000082 e!4320511)))

(assert (= (and b!7194673 ((_ is Cons!69746) (t!383895 (exprs!7835 setElem!53368)))) b!7194811))

(declare-fun b_lambda!275807 () Bool)

(assert (= b_lambda!275805 (or d!2241236 b_lambda!275807)))

(declare-fun bs!1900477 () Bool)

(declare-fun d!2241290 () Bool)

(assert (= bs!1900477 (and d!2241290 d!2241236)))

(declare-fun validRegex!9483 (Regex!18383) Bool)

(assert (=> bs!1900477 (= (dynLambda!28398 lambda!438069 (h!76194 (exprs!7835 setElem!53368))) (validRegex!9483 (h!76194 (exprs!7835 setElem!53368))))))

(declare-fun m!7889094 () Bool)

(assert (=> bs!1900477 m!7889094))

(assert (=> b!7194782 d!2241290))

(declare-fun b_lambda!275809 () Bool)

(assert (= b_lambda!275799 (or d!2241252 b_lambda!275809)))

(declare-fun bs!1900478 () Bool)

(declare-fun d!2241292 () Bool)

(assert (= bs!1900478 (and d!2241292 d!2241252)))

(assert (=> bs!1900478 (= (dynLambda!28398 lambda!438070 (h!76194 (exprs!7835 c!10544))) (validRegex!9483 (h!76194 (exprs!7835 c!10544))))))

(declare-fun m!7889096 () Bool)

(assert (=> bs!1900478 m!7889096))

(assert (=> b!7194713 d!2241292))

(check-sat (not b!7194714) (not b_lambda!275809) (not b!7194785) (not b!7194784) tp_is_empty!46323 (not b!7194783) (not b!7194771) (not b!7194789) (not b!7194810) (not b!7194804) (not b!7194790) (not d!2241278) (not setNonEmpty!53376) (not bm!656060) (not b!7194806) (not bm!656055) (not b!7194811) (not b!7194808) (not b_lambda!275807) (not bs!1900477) (not b!7194803) (not d!2241276) (not bm!656056) (not bs!1900478) (not bm!656054) (not b!7194809) (not b!7194802) (not b!7194805))
(check-sat)
(get-model)

(declare-fun b!7194830 () Bool)

(declare-fun e!4320527 () Bool)

(declare-fun e!4320529 () Bool)

(assert (=> b!7194830 (= e!4320527 e!4320529)))

(declare-fun c!1339118 () Bool)

(assert (=> b!7194830 (= c!1339118 ((_ is Star!18383) (h!76194 (exprs!7835 setElem!53368))))))

(declare-fun b!7194831 () Bool)

(declare-fun e!4320528 () Bool)

(declare-fun e!4320530 () Bool)

(assert (=> b!7194831 (= e!4320528 e!4320530)))

(declare-fun res!2929015 () Bool)

(assert (=> b!7194831 (=> (not res!2929015) (not e!4320530))))

(declare-fun call!656072 () Bool)

(assert (=> b!7194831 (= res!2929015 call!656072)))

(declare-fun b!7194832 () Bool)

(declare-fun res!2929013 () Bool)

(assert (=> b!7194832 (=> res!2929013 e!4320528)))

(assert (=> b!7194832 (= res!2929013 (not ((_ is Concat!27228) (h!76194 (exprs!7835 setElem!53368)))))))

(declare-fun e!4320531 () Bool)

(assert (=> b!7194832 (= e!4320531 e!4320528)))

(declare-fun bm!656067 () Bool)

(declare-fun c!1339119 () Bool)

(assert (=> bm!656067 (= call!656072 (validRegex!9483 (ite c!1339119 (regTwo!37279 (h!76194 (exprs!7835 setElem!53368))) (regOne!37278 (h!76194 (exprs!7835 setElem!53368))))))))

(declare-fun b!7194833 () Bool)

(declare-fun e!4320532 () Bool)

(assert (=> b!7194833 (= e!4320532 call!656072)))

(declare-fun b!7194835 () Bool)

(declare-fun e!4320526 () Bool)

(declare-fun call!656074 () Bool)

(assert (=> b!7194835 (= e!4320526 call!656074)))

(declare-fun b!7194836 () Bool)

(declare-fun call!656073 () Bool)

(assert (=> b!7194836 (= e!4320530 call!656073)))

(declare-fun b!7194837 () Bool)

(assert (=> b!7194837 (= e!4320529 e!4320531)))

(assert (=> b!7194837 (= c!1339119 ((_ is Union!18383) (h!76194 (exprs!7835 setElem!53368))))))

(declare-fun b!7194838 () Bool)

(declare-fun res!2929016 () Bool)

(assert (=> b!7194838 (=> (not res!2929016) (not e!4320532))))

(assert (=> b!7194838 (= res!2929016 call!656073)))

(assert (=> b!7194838 (= e!4320531 e!4320532)))

(declare-fun bm!656068 () Bool)

(assert (=> bm!656068 (= call!656073 call!656074)))

(declare-fun bm!656069 () Bool)

(assert (=> bm!656069 (= call!656074 (validRegex!9483 (ite c!1339118 (reg!18712 (h!76194 (exprs!7835 setElem!53368))) (ite c!1339119 (regOne!37279 (h!76194 (exprs!7835 setElem!53368))) (regTwo!37278 (h!76194 (exprs!7835 setElem!53368)))))))))

(declare-fun b!7194834 () Bool)

(assert (=> b!7194834 (= e!4320529 e!4320526)))

(declare-fun res!2929014 () Bool)

(assert (=> b!7194834 (= res!2929014 (not (nullable!7795 (reg!18712 (h!76194 (exprs!7835 setElem!53368))))))))

(assert (=> b!7194834 (=> (not res!2929014) (not e!4320526))))

(declare-fun d!2241294 () Bool)

(declare-fun res!2929017 () Bool)

(assert (=> d!2241294 (=> res!2929017 e!4320527)))

(assert (=> d!2241294 (= res!2929017 ((_ is ElementMatch!18383) (h!76194 (exprs!7835 setElem!53368))))))

(assert (=> d!2241294 (= (validRegex!9483 (h!76194 (exprs!7835 setElem!53368))) e!4320527)))

(assert (= (and d!2241294 (not res!2929017)) b!7194830))

(assert (= (and b!7194830 c!1339118) b!7194834))

(assert (= (and b!7194830 (not c!1339118)) b!7194837))

(assert (= (and b!7194834 res!2929014) b!7194835))

(assert (= (and b!7194837 c!1339119) b!7194838))

(assert (= (and b!7194837 (not c!1339119)) b!7194832))

(assert (= (and b!7194838 res!2929016) b!7194833))

(assert (= (and b!7194832 (not res!2929013)) b!7194831))

(assert (= (and b!7194831 res!2929015) b!7194836))

(assert (= (or b!7194838 b!7194836) bm!656068))

(assert (= (or b!7194833 b!7194831) bm!656067))

(assert (= (or b!7194835 bm!656068) bm!656069))

(declare-fun m!7889098 () Bool)

(assert (=> bm!656067 m!7889098))

(declare-fun m!7889100 () Bool)

(assert (=> bm!656069 m!7889100))

(declare-fun m!7889102 () Bool)

(assert (=> b!7194834 m!7889102))

(assert (=> bs!1900477 d!2241294))

(declare-fun d!2241296 () Bool)

(declare-fun res!2929018 () Bool)

(declare-fun e!4320533 () Bool)

(assert (=> d!2241296 (=> res!2929018 e!4320533)))

(assert (=> d!2241296 (= res!2929018 ((_ is Nil!69746) (t!383895 (exprs!7835 setElem!53368))))))

(assert (=> d!2241296 (= (forall!17206 (t!383895 (exprs!7835 setElem!53368)) lambda!438069) e!4320533)))

(declare-fun b!7194839 () Bool)

(declare-fun e!4320534 () Bool)

(assert (=> b!7194839 (= e!4320533 e!4320534)))

(declare-fun res!2929019 () Bool)

(assert (=> b!7194839 (=> (not res!2929019) (not e!4320534))))

(assert (=> b!7194839 (= res!2929019 (dynLambda!28398 lambda!438069 (h!76194 (t!383895 (exprs!7835 setElem!53368)))))))

(declare-fun b!7194840 () Bool)

(assert (=> b!7194840 (= e!4320534 (forall!17206 (t!383895 (t!383895 (exprs!7835 setElem!53368))) lambda!438069))))

(assert (= (and d!2241296 (not res!2929018)) b!7194839))

(assert (= (and b!7194839 res!2929019) b!7194840))

(declare-fun b_lambda!275811 () Bool)

(assert (=> (not b_lambda!275811) (not b!7194839)))

(declare-fun m!7889104 () Bool)

(assert (=> b!7194839 m!7889104))

(declare-fun m!7889106 () Bool)

(assert (=> b!7194840 m!7889106))

(assert (=> b!7194783 d!2241296))

(declare-fun d!2241298 () Bool)

(declare-fun res!2929020 () Bool)

(declare-fun e!4320535 () Bool)

(assert (=> d!2241298 (=> res!2929020 e!4320535)))

(assert (=> d!2241298 (= res!2929020 ((_ is Nil!69746) (t!383895 (exprs!7835 c!10544))))))

(assert (=> d!2241298 (= (forall!17206 (t!383895 (exprs!7835 c!10544)) lambda!438070) e!4320535)))

(declare-fun b!7194841 () Bool)

(declare-fun e!4320536 () Bool)

(assert (=> b!7194841 (= e!4320535 e!4320536)))

(declare-fun res!2929021 () Bool)

(assert (=> b!7194841 (=> (not res!2929021) (not e!4320536))))

(assert (=> b!7194841 (= res!2929021 (dynLambda!28398 lambda!438070 (h!76194 (t!383895 (exprs!7835 c!10544)))))))

(declare-fun b!7194842 () Bool)

(assert (=> b!7194842 (= e!4320536 (forall!17206 (t!383895 (t!383895 (exprs!7835 c!10544))) lambda!438070))))

(assert (= (and d!2241298 (not res!2929020)) b!7194841))

(assert (= (and b!7194841 res!2929021) b!7194842))

(declare-fun b_lambda!275813 () Bool)

(assert (=> (not b_lambda!275813) (not b!7194841)))

(declare-fun m!7889108 () Bool)

(assert (=> b!7194841 m!7889108))

(declare-fun m!7889110 () Bool)

(assert (=> b!7194842 m!7889110))

(assert (=> b!7194714 d!2241298))

(declare-fun d!2241300 () Bool)

(declare-fun res!2929022 () Bool)

(declare-fun e!4320537 () Bool)

(assert (=> d!2241300 (=> res!2929022 e!4320537)))

(assert (=> d!2241300 (= res!2929022 ((_ is Nil!69746) (exprs!7835 setElem!53374)))))

(assert (=> d!2241300 (= (forall!17206 (exprs!7835 setElem!53374) lambda!438072) e!4320537)))

(declare-fun b!7194843 () Bool)

(declare-fun e!4320538 () Bool)

(assert (=> b!7194843 (= e!4320537 e!4320538)))

(declare-fun res!2929023 () Bool)

(assert (=> b!7194843 (=> (not res!2929023) (not e!4320538))))

(assert (=> b!7194843 (= res!2929023 (dynLambda!28398 lambda!438072 (h!76194 (exprs!7835 setElem!53374))))))

(declare-fun b!7194844 () Bool)

(assert (=> b!7194844 (= e!4320538 (forall!17206 (t!383895 (exprs!7835 setElem!53374)) lambda!438072))))

(assert (= (and d!2241300 (not res!2929022)) b!7194843))

(assert (= (and b!7194843 res!2929023) b!7194844))

(declare-fun b_lambda!275815 () Bool)

(assert (=> (not b_lambda!275815) (not b!7194843)))

(declare-fun m!7889112 () Bool)

(assert (=> b!7194843 m!7889112))

(declare-fun m!7889114 () Bool)

(assert (=> b!7194844 m!7889114))

(assert (=> d!2241278 d!2241300))

(declare-fun bs!1900479 () Bool)

(declare-fun d!2241302 () Bool)

(assert (= bs!1900479 (and d!2241302 d!2241236)))

(declare-fun lambda!438073 () Int)

(assert (=> bs!1900479 (= lambda!438073 lambda!438069)))

(declare-fun bs!1900480 () Bool)

(assert (= bs!1900480 (and d!2241302 d!2241252)))

(assert (=> bs!1900480 (= lambda!438073 lambda!438070)))

(declare-fun bs!1900481 () Bool)

(assert (= bs!1900481 (and d!2241302 d!2241278)))

(assert (=> bs!1900481 (= lambda!438073 lambda!438072)))

(assert (=> d!2241302 (= (inv!88979 setElem!53376) (forall!17206 (exprs!7835 setElem!53376) lambda!438073))))

(declare-fun bs!1900482 () Bool)

(assert (= bs!1900482 d!2241302))

(declare-fun m!7889116 () Bool)

(assert (=> bs!1900482 m!7889116))

(assert (=> setNonEmpty!53376 d!2241302))

(declare-fun d!2241304 () Bool)

(assert (=> d!2241304 (= (nullable!7795 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (nullableFct!3048 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(declare-fun bs!1900483 () Bool)

(assert (= bs!1900483 d!2241304))

(declare-fun m!7889118 () Bool)

(assert (=> bs!1900483 m!7889118))

(assert (=> b!7194785 d!2241304))

(declare-fun d!2241306 () Bool)

(assert (=> d!2241306 (= (nullable!7795 (regOne!37278 (h!76194 (exprs!7835 c!10544)))) (nullableFct!3048 (regOne!37278 (h!76194 (exprs!7835 c!10544)))))))

(declare-fun bs!1900484 () Bool)

(assert (= bs!1900484 d!2241306))

(declare-fun m!7889120 () Bool)

(assert (=> bs!1900484 m!7889120))

(assert (=> b!7194771 d!2241306))

(declare-fun d!2241308 () Bool)

(assert (=> d!2241308 (= ($colon$colon!2848 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))) (ite (or c!1339108 c!1339111) (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (h!76194 (exprs!7835 c!10544)))) (Cons!69746 (ite (or c!1339108 c!1339111) (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (h!76194 (exprs!7835 c!10544))) (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))

(assert (=> bm!656054 d!2241308))

(declare-fun d!2241310 () Bool)

(declare-fun c!1339120 () Bool)

(declare-fun e!4320540 () Bool)

(assert (=> d!2241310 (= c!1339120 e!4320540)))

(declare-fun res!2929024 () Bool)

(assert (=> d!2241310 (=> (not res!2929024) (not e!4320540))))

(assert (=> d!2241310 (= res!2929024 ((_ is Cons!69746) (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))))

(declare-fun e!4320539 () (InoxSet Context!14670))

(assert (=> d!2241310 (= (derivationStepZipperUp!2349 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (head!14727 s!7961)) e!4320539)))

(declare-fun call!656075 () (InoxSet Context!14670))

(declare-fun b!7194845 () Bool)

(assert (=> b!7194845 (= e!4320539 ((_ map or) call!656075 (derivationStepZipperUp!2349 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))) (head!14727 s!7961))))))

(declare-fun bm!656070 () Bool)

(assert (=> bm!656070 (= call!656075 (derivationStepZipperDown!2526 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))) (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))) (head!14727 s!7961)))))

(declare-fun b!7194846 () Bool)

(assert (=> b!7194846 (= e!4320540 (nullable!7795 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))))))

(declare-fun b!7194847 () Bool)

(declare-fun e!4320541 () (InoxSet Context!14670))

(assert (=> b!7194847 (= e!4320541 call!656075)))

(declare-fun b!7194848 () Bool)

(assert (=> b!7194848 (= e!4320539 e!4320541)))

(declare-fun c!1339121 () Bool)

(assert (=> b!7194848 (= c!1339121 ((_ is Cons!69746) (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))))

(declare-fun b!7194849 () Bool)

(assert (=> b!7194849 (= e!4320541 ((as const (Array Context!14670 Bool)) false))))

(assert (= (and d!2241310 res!2929024) b!7194846))

(assert (= (and d!2241310 c!1339120) b!7194845))

(assert (= (and d!2241310 (not c!1339120)) b!7194848))

(assert (= (and b!7194848 c!1339121) b!7194847))

(assert (= (and b!7194848 (not c!1339121)) b!7194849))

(assert (= (or b!7194845 b!7194847) bm!656070))

(assert (=> b!7194845 m!7888994))

(declare-fun m!7889122 () Bool)

(assert (=> b!7194845 m!7889122))

(assert (=> bm!656070 m!7888994))

(declare-fun m!7889124 () Bool)

(assert (=> bm!656070 m!7889124))

(declare-fun m!7889126 () Bool)

(assert (=> b!7194846 m!7889126))

(assert (=> b!7194784 d!2241310))

(declare-fun b!7194850 () Bool)

(declare-fun e!4320543 () Bool)

(declare-fun e!4320545 () Bool)

(assert (=> b!7194850 (= e!4320543 e!4320545)))

(declare-fun c!1339122 () Bool)

(assert (=> b!7194850 (= c!1339122 ((_ is Star!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194851 () Bool)

(declare-fun e!4320544 () Bool)

(declare-fun e!4320546 () Bool)

(assert (=> b!7194851 (= e!4320544 e!4320546)))

(declare-fun res!2929027 () Bool)

(assert (=> b!7194851 (=> (not res!2929027) (not e!4320546))))

(declare-fun call!656076 () Bool)

(assert (=> b!7194851 (= res!2929027 call!656076)))

(declare-fun b!7194852 () Bool)

(declare-fun res!2929025 () Bool)

(assert (=> b!7194852 (=> res!2929025 e!4320544)))

(assert (=> b!7194852 (= res!2929025 (not ((_ is Concat!27228) (h!76194 (exprs!7835 c!10544)))))))

(declare-fun e!4320547 () Bool)

(assert (=> b!7194852 (= e!4320547 e!4320544)))

(declare-fun bm!656071 () Bool)

(declare-fun c!1339123 () Bool)

(assert (=> bm!656071 (= call!656076 (validRegex!9483 (ite c!1339123 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun b!7194853 () Bool)

(declare-fun e!4320548 () Bool)

(assert (=> b!7194853 (= e!4320548 call!656076)))

(declare-fun b!7194855 () Bool)

(declare-fun e!4320542 () Bool)

(declare-fun call!656078 () Bool)

(assert (=> b!7194855 (= e!4320542 call!656078)))

(declare-fun b!7194856 () Bool)

(declare-fun call!656077 () Bool)

(assert (=> b!7194856 (= e!4320546 call!656077)))

(declare-fun b!7194857 () Bool)

(assert (=> b!7194857 (= e!4320545 e!4320547)))

(assert (=> b!7194857 (= c!1339123 ((_ is Union!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194858 () Bool)

(declare-fun res!2929028 () Bool)

(assert (=> b!7194858 (=> (not res!2929028) (not e!4320548))))

(assert (=> b!7194858 (= res!2929028 call!656077)))

(assert (=> b!7194858 (= e!4320547 e!4320548)))

(declare-fun bm!656072 () Bool)

(assert (=> bm!656072 (= call!656077 call!656078)))

(declare-fun bm!656073 () Bool)

(assert (=> bm!656073 (= call!656078 (validRegex!9483 (ite c!1339122 (reg!18712 (h!76194 (exprs!7835 c!10544))) (ite c!1339123 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (regTwo!37278 (h!76194 (exprs!7835 c!10544)))))))))

(declare-fun b!7194854 () Bool)

(assert (=> b!7194854 (= e!4320545 e!4320542)))

(declare-fun res!2929026 () Bool)

(assert (=> b!7194854 (= res!2929026 (not (nullable!7795 (reg!18712 (h!76194 (exprs!7835 c!10544))))))))

(assert (=> b!7194854 (=> (not res!2929026) (not e!4320542))))

(declare-fun d!2241312 () Bool)

(declare-fun res!2929029 () Bool)

(assert (=> d!2241312 (=> res!2929029 e!4320543)))

(assert (=> d!2241312 (= res!2929029 ((_ is ElementMatch!18383) (h!76194 (exprs!7835 c!10544))))))

(assert (=> d!2241312 (= (validRegex!9483 (h!76194 (exprs!7835 c!10544))) e!4320543)))

(assert (= (and d!2241312 (not res!2929029)) b!7194850))

(assert (= (and b!7194850 c!1339122) b!7194854))

(assert (= (and b!7194850 (not c!1339122)) b!7194857))

(assert (= (and b!7194854 res!2929026) b!7194855))

(assert (= (and b!7194857 c!1339123) b!7194858))

(assert (= (and b!7194857 (not c!1339123)) b!7194852))

(assert (= (and b!7194858 res!2929028) b!7194853))

(assert (= (and b!7194852 (not res!2929025)) b!7194851))

(assert (= (and b!7194851 res!2929027) b!7194856))

(assert (= (or b!7194858 b!7194856) bm!656072))

(assert (= (or b!7194853 b!7194851) bm!656071))

(assert (= (or b!7194855 bm!656072) bm!656073))

(declare-fun m!7889128 () Bool)

(assert (=> bm!656071 m!7889128))

(declare-fun m!7889130 () Bool)

(assert (=> bm!656073 m!7889130))

(declare-fun m!7889132 () Bool)

(assert (=> b!7194854 m!7889132))

(assert (=> bs!1900478 d!2241312))

(declare-fun c!1339125 () Bool)

(declare-fun bm!656074 () Bool)

(declare-fun call!656082 () List!69870)

(declare-fun c!1339128 () Bool)

(assert (=> bm!656074 (= call!656082 ($colon$colon!2848 (exprs!7835 (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062))) (ite (or c!1339125 c!1339128) (regTwo!37278 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))))))))

(declare-fun b!7194859 () Bool)

(declare-fun e!4320551 () Bool)

(assert (=> b!7194859 (= e!4320551 (nullable!7795 (regOne!37278 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))))))))

(declare-fun b!7194860 () Bool)

(declare-fun e!4320554 () (InoxSet Context!14670))

(assert (=> b!7194860 (= e!4320554 ((as const (Array Context!14670 Bool)) false))))

(declare-fun d!2241314 () Bool)

(declare-fun c!1339124 () Bool)

(assert (=> d!2241314 (= c!1339124 (and ((_ is ElementMatch!18383) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (= (c!1339067 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (head!14727 s!7961))))))

(declare-fun e!4320552 () (InoxSet Context!14670))

(assert (=> d!2241314 (= (derivationStepZipperDown!2526 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))) (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062)) (head!14727 s!7961)) e!4320552)))

(declare-fun b!7194861 () Bool)

(declare-fun c!1339127 () Bool)

(assert (=> b!7194861 (= c!1339127 ((_ is Star!18383) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun e!4320550 () (InoxSet Context!14670))

(assert (=> b!7194861 (= e!4320550 e!4320554)))

(declare-fun b!7194862 () Bool)

(declare-fun call!656083 () (InoxSet Context!14670))

(assert (=> b!7194862 (= e!4320550 call!656083)))

(declare-fun b!7194863 () Bool)

(declare-fun e!4320553 () (InoxSet Context!14670))

(assert (=> b!7194863 (= e!4320553 e!4320550)))

(assert (=> b!7194863 (= c!1339128 ((_ is Concat!27228) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun b!7194864 () Bool)

(declare-fun call!656079 () (InoxSet Context!14670))

(declare-fun call!656080 () (InoxSet Context!14670))

(assert (=> b!7194864 (= e!4320553 ((_ map or) call!656079 call!656080))))

(declare-fun c!1339126 () Bool)

(declare-fun bm!656075 () Bool)

(assert (=> bm!656075 (= call!656079 (derivationStepZipperDown!2526 (ite c!1339126 (regTwo!37279 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (regOne!37278 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))))) (ite c!1339126 (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062)) (Context!14671 call!656082)) (head!14727 s!7961)))))

(declare-fun call!656081 () (InoxSet Context!14670))

(declare-fun bm!656076 () Bool)

(declare-fun call!656084 () List!69870)

(assert (=> bm!656076 (= call!656081 (derivationStepZipperDown!2526 (ite c!1339126 (regOne!37279 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (ite c!1339125 (regTwo!37278 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (ite c!1339128 (regOne!37278 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) (reg!18712 (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544)))))))) (ite (or c!1339126 c!1339125) (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062)) (Context!14671 call!656084)) (head!14727 s!7961)))))

(declare-fun bm!656077 () Bool)

(assert (=> bm!656077 (= call!656084 call!656082)))

(declare-fun bm!656078 () Bool)

(assert (=> bm!656078 (= call!656083 call!656080)))

(declare-fun bm!656079 () Bool)

(assert (=> bm!656079 (= call!656080 call!656081)))

(declare-fun b!7194865 () Bool)

(declare-fun e!4320549 () (InoxSet Context!14670))

(assert (=> b!7194865 (= e!4320549 ((_ map or) call!656081 call!656079))))

(declare-fun b!7194866 () Bool)

(assert (=> b!7194866 (= c!1339125 e!4320551)))

(declare-fun res!2929030 () Bool)

(assert (=> b!7194866 (=> (not res!2929030) (not e!4320551))))

(assert (=> b!7194866 (= res!2929030 ((_ is Concat!27228) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(assert (=> b!7194866 (= e!4320549 e!4320553)))

(declare-fun b!7194867 () Bool)

(assert (=> b!7194867 (= e!4320554 call!656083)))

(declare-fun b!7194868 () Bool)

(assert (=> b!7194868 (= e!4320552 e!4320549)))

(assert (=> b!7194868 (= c!1339126 ((_ is Union!18383) (ite c!1339109 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun b!7194869 () Bool)

(assert (=> b!7194869 (= e!4320552 (store ((as const (Array Context!14670 Bool)) false) (ite c!1339109 (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656062)) true))))

(assert (= (and d!2241314 c!1339124) b!7194869))

(assert (= (and d!2241314 (not c!1339124)) b!7194868))

(assert (= (and b!7194868 c!1339126) b!7194865))

(assert (= (and b!7194868 (not c!1339126)) b!7194866))

(assert (= (and b!7194866 res!2929030) b!7194859))

(assert (= (and b!7194866 c!1339125) b!7194864))

(assert (= (and b!7194866 (not c!1339125)) b!7194863))

(assert (= (and b!7194863 c!1339128) b!7194862))

(assert (= (and b!7194863 (not c!1339128)) b!7194861))

(assert (= (and b!7194861 c!1339127) b!7194867))

(assert (= (and b!7194861 (not c!1339127)) b!7194860))

(assert (= (or b!7194862 b!7194867) bm!656077))

(assert (= (or b!7194862 b!7194867) bm!656078))

(assert (= (or b!7194864 bm!656078) bm!656079))

(assert (= (or b!7194864 bm!656077) bm!656074))

(assert (= (or b!7194865 bm!656079) bm!656076))

(assert (= (or b!7194865 b!7194864) bm!656075))

(declare-fun m!7889134 () Bool)

(assert (=> b!7194859 m!7889134))

(assert (=> bm!656075 m!7888994))

(declare-fun m!7889136 () Bool)

(assert (=> bm!656075 m!7889136))

(assert (=> bm!656076 m!7888994))

(declare-fun m!7889138 () Bool)

(assert (=> bm!656076 m!7889138))

(declare-fun m!7889140 () Bool)

(assert (=> bm!656074 m!7889140))

(declare-fun m!7889142 () Bool)

(assert (=> b!7194869 m!7889142))

(assert (=> bm!656055 d!2241314))

(declare-fun bm!656084 () Bool)

(declare-fun call!656090 () Bool)

(declare-fun c!1339131 () Bool)

(assert (=> bm!656084 (= call!656090 (nullable!7795 (ite c!1339131 (regTwo!37279 (h!76194 (exprs!7835 c!10544))) (regOne!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun bm!656085 () Bool)

(declare-fun call!656089 () Bool)

(assert (=> bm!656085 (= call!656089 (nullable!7795 (ite c!1339131 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (regTwo!37278 (h!76194 (exprs!7835 c!10544))))))))

(declare-fun b!7194884 () Bool)

(declare-fun e!4320567 () Bool)

(declare-fun e!4320571 () Bool)

(assert (=> b!7194884 (= e!4320567 e!4320571)))

(declare-fun res!2929043 () Bool)

(assert (=> b!7194884 (=> res!2929043 e!4320571)))

(assert (=> b!7194884 (= res!2929043 ((_ is Star!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun d!2241316 () Bool)

(declare-fun res!2929041 () Bool)

(declare-fun e!4320572 () Bool)

(assert (=> d!2241316 (=> res!2929041 e!4320572)))

(assert (=> d!2241316 (= res!2929041 ((_ is EmptyExpr!18383) (h!76194 (exprs!7835 c!10544))))))

(assert (=> d!2241316 (= (nullableFct!3048 (h!76194 (exprs!7835 c!10544))) e!4320572)))

(declare-fun b!7194885 () Bool)

(declare-fun e!4320569 () Bool)

(declare-fun e!4320570 () Bool)

(assert (=> b!7194885 (= e!4320569 e!4320570)))

(declare-fun res!2929044 () Bool)

(assert (=> b!7194885 (= res!2929044 call!656089)))

(assert (=> b!7194885 (=> res!2929044 e!4320570)))

(declare-fun b!7194886 () Bool)

(declare-fun e!4320568 () Bool)

(assert (=> b!7194886 (= e!4320568 call!656089)))

(declare-fun b!7194887 () Bool)

(assert (=> b!7194887 (= e!4320570 call!656090)))

(declare-fun b!7194888 () Bool)

(assert (=> b!7194888 (= e!4320571 e!4320569)))

(assert (=> b!7194888 (= c!1339131 ((_ is Union!18383) (h!76194 (exprs!7835 c!10544))))))

(declare-fun b!7194889 () Bool)

(assert (=> b!7194889 (= e!4320569 e!4320568)))

(declare-fun res!2929045 () Bool)

(assert (=> b!7194889 (= res!2929045 call!656090)))

(assert (=> b!7194889 (=> (not res!2929045) (not e!4320568))))

(declare-fun b!7194890 () Bool)

(assert (=> b!7194890 (= e!4320572 e!4320567)))

(declare-fun res!2929042 () Bool)

(assert (=> b!7194890 (=> (not res!2929042) (not e!4320567))))

(assert (=> b!7194890 (= res!2929042 (and (not ((_ is EmptyLang!18383) (h!76194 (exprs!7835 c!10544)))) (not ((_ is ElementMatch!18383) (h!76194 (exprs!7835 c!10544))))))))

(assert (= (and d!2241316 (not res!2929041)) b!7194890))

(assert (= (and b!7194890 res!2929042) b!7194884))

(assert (= (and b!7194884 (not res!2929043)) b!7194888))

(assert (= (and b!7194888 c!1339131) b!7194885))

(assert (= (and b!7194888 (not c!1339131)) b!7194889))

(assert (= (and b!7194885 (not res!2929044)) b!7194887))

(assert (= (and b!7194889 res!2929045) b!7194886))

(assert (= (or b!7194887 b!7194889) bm!656084))

(assert (= (or b!7194885 b!7194886) bm!656085))

(declare-fun m!7889144 () Bool)

(assert (=> bm!656084 m!7889144))

(declare-fun m!7889146 () Bool)

(assert (=> bm!656085 m!7889146))

(assert (=> d!2241276 d!2241316))

(declare-fun call!656094 () List!69870)

(declare-fun c!1339136 () Bool)

(declare-fun bm!656086 () Bool)

(declare-fun c!1339133 () Bool)

(assert (=> bm!656086 (= call!656094 ($colon$colon!2848 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))) (ite (or c!1339133 c!1339136) (regTwo!37278 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))))

(declare-fun b!7194891 () Bool)

(declare-fun e!4320575 () Bool)

(assert (=> b!7194891 (= e!4320575 (nullable!7795 (regOne!37278 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))))

(declare-fun b!7194892 () Bool)

(declare-fun e!4320578 () (InoxSet Context!14670))

(assert (=> b!7194892 (= e!4320578 ((as const (Array Context!14670 Bool)) false))))

(declare-fun d!2241318 () Bool)

(declare-fun c!1339132 () Bool)

(assert (=> d!2241318 (= c!1339132 (and ((_ is ElementMatch!18383) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (= (c!1339067 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (head!14727 s!7961))))))

(declare-fun e!4320576 () (InoxSet Context!14670))

(assert (=> d!2241318 (= (derivationStepZipperDown!2526 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))) (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (head!14727 s!7961)) e!4320576)))

(declare-fun b!7194893 () Bool)

(declare-fun c!1339135 () Bool)

(assert (=> b!7194893 (= c!1339135 ((_ is Star!18383) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(declare-fun e!4320574 () (InoxSet Context!14670))

(assert (=> b!7194893 (= e!4320574 e!4320578)))

(declare-fun b!7194894 () Bool)

(declare-fun call!656095 () (InoxSet Context!14670))

(assert (=> b!7194894 (= e!4320574 call!656095)))

(declare-fun b!7194895 () Bool)

(declare-fun e!4320577 () (InoxSet Context!14670))

(assert (=> b!7194895 (= e!4320577 e!4320574)))

(assert (=> b!7194895 (= c!1339136 ((_ is Concat!27228) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(declare-fun b!7194896 () Bool)

(declare-fun call!656091 () (InoxSet Context!14670))

(declare-fun call!656092 () (InoxSet Context!14670))

(assert (=> b!7194896 (= e!4320577 ((_ map or) call!656091 call!656092))))

(declare-fun c!1339134 () Bool)

(declare-fun bm!656087 () Bool)

(assert (=> bm!656087 (= call!656091 (derivationStepZipperDown!2526 (ite c!1339134 (regTwo!37279 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (regOne!37278 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))) (ite c!1339134 (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (Context!14671 call!656094)) (head!14727 s!7961)))))

(declare-fun call!656093 () (InoxSet Context!14670))

(declare-fun bm!656088 () Bool)

(declare-fun call!656096 () List!69870)

(assert (=> bm!656088 (= call!656093 (derivationStepZipperDown!2526 (ite c!1339134 (regOne!37279 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (ite c!1339133 (regTwo!37278 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (ite c!1339136 (regOne!37278 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (reg!18712 (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544))))))))) (ite (or c!1339134 c!1339133) (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) (Context!14671 call!656096)) (head!14727 s!7961)))))

(declare-fun bm!656089 () Bool)

(assert (=> bm!656089 (= call!656096 call!656094)))

(declare-fun bm!656090 () Bool)

(assert (=> bm!656090 (= call!656095 call!656092)))

(declare-fun bm!656091 () Bool)

(assert (=> bm!656091 (= call!656092 call!656093)))

(declare-fun b!7194897 () Bool)

(declare-fun e!4320573 () (InoxSet Context!14670))

(assert (=> b!7194897 (= e!4320573 ((_ map or) call!656093 call!656091))))

(declare-fun b!7194898 () Bool)

(assert (=> b!7194898 (= c!1339133 e!4320575)))

(declare-fun res!2929046 () Bool)

(assert (=> b!7194898 (=> (not res!2929046) (not e!4320575))))

(assert (=> b!7194898 (= res!2929046 ((_ is Concat!27228) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(assert (=> b!7194898 (= e!4320573 e!4320577)))

(declare-fun b!7194899 () Bool)

(assert (=> b!7194899 (= e!4320578 call!656095)))

(declare-fun b!7194900 () Bool)

(assert (=> b!7194900 (= e!4320576 e!4320573)))

(assert (=> b!7194900 (= c!1339134 ((_ is Union!18383) (h!76194 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))))))

(declare-fun b!7194901 () Bool)

(assert (=> b!7194901 (= e!4320576 (store ((as const (Array Context!14670 Bool)) false) (Context!14671 (t!383895 (exprs!7835 (Context!14671 (t!383895 (exprs!7835 c!10544)))))) true))))

(assert (= (and d!2241318 c!1339132) b!7194901))

(assert (= (and d!2241318 (not c!1339132)) b!7194900))

(assert (= (and b!7194900 c!1339134) b!7194897))

(assert (= (and b!7194900 (not c!1339134)) b!7194898))

(assert (= (and b!7194898 res!2929046) b!7194891))

(assert (= (and b!7194898 c!1339133) b!7194896))

(assert (= (and b!7194898 (not c!1339133)) b!7194895))

(assert (= (and b!7194895 c!1339136) b!7194894))

(assert (= (and b!7194895 (not c!1339136)) b!7194893))

(assert (= (and b!7194893 c!1339135) b!7194899))

(assert (= (and b!7194893 (not c!1339135)) b!7194892))

(assert (= (or b!7194894 b!7194899) bm!656089))

(assert (= (or b!7194894 b!7194899) bm!656090))

(assert (= (or b!7194896 bm!656090) bm!656091))

(assert (= (or b!7194896 bm!656089) bm!656086))

(assert (= (or b!7194897 bm!656091) bm!656088))

(assert (= (or b!7194897 b!7194896) bm!656087))

(declare-fun m!7889148 () Bool)

(assert (=> b!7194891 m!7889148))

(assert (=> bm!656087 m!7888994))

(declare-fun m!7889150 () Bool)

(assert (=> bm!656087 m!7889150))

(assert (=> bm!656088 m!7888994))

(declare-fun m!7889152 () Bool)

(assert (=> bm!656088 m!7889152))

(declare-fun m!7889154 () Bool)

(assert (=> bm!656086 m!7889154))

(declare-fun m!7889156 () Bool)

(assert (=> b!7194901 m!7889156))

(assert (=> bm!656060 d!2241318))

(declare-fun c!1339138 () Bool)

(declare-fun bm!656092 () Bool)

(declare-fun c!1339141 () Bool)

(declare-fun call!656100 () List!69870)

(assert (=> bm!656092 (= call!656100 ($colon$colon!2848 (exprs!7835 (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064))) (ite (or c!1339138 c!1339141) (regTwo!37278 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))))))))

(declare-fun b!7194902 () Bool)

(declare-fun e!4320581 () Bool)

(assert (=> b!7194902 (= e!4320581 (nullable!7795 (regOne!37278 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))))))))

(declare-fun b!7194903 () Bool)

(declare-fun e!4320584 () (InoxSet Context!14670))

(assert (=> b!7194903 (= e!4320584 ((as const (Array Context!14670 Bool)) false))))

(declare-fun c!1339137 () Bool)

(declare-fun d!2241320 () Bool)

(assert (=> d!2241320 (= c!1339137 (and ((_ is ElementMatch!18383) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (= (c!1339067 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (head!14727 s!7961))))))

(declare-fun e!4320582 () (InoxSet Context!14670))

(assert (=> d!2241320 (= (derivationStepZipperDown!2526 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))) (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064)) (head!14727 s!7961)) e!4320582)))

(declare-fun b!7194904 () Bool)

(declare-fun c!1339140 () Bool)

(assert (=> b!7194904 (= c!1339140 ((_ is Star!18383) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))))))

(declare-fun e!4320580 () (InoxSet Context!14670))

(assert (=> b!7194904 (= e!4320580 e!4320584)))

(declare-fun b!7194905 () Bool)

(declare-fun call!656101 () (InoxSet Context!14670))

(assert (=> b!7194905 (= e!4320580 call!656101)))

(declare-fun b!7194906 () Bool)

(declare-fun e!4320583 () (InoxSet Context!14670))

(assert (=> b!7194906 (= e!4320583 e!4320580)))

(assert (=> b!7194906 (= c!1339141 ((_ is Concat!27228) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))))))

(declare-fun b!7194907 () Bool)

(declare-fun call!656097 () (InoxSet Context!14670))

(declare-fun call!656098 () (InoxSet Context!14670))

(assert (=> b!7194907 (= e!4320583 ((_ map or) call!656097 call!656098))))

(declare-fun bm!656093 () Bool)

(declare-fun c!1339139 () Bool)

(assert (=> bm!656093 (= call!656097 (derivationStepZipperDown!2526 (ite c!1339139 (regTwo!37279 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (regOne!37278 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))))) (ite c!1339139 (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064)) (Context!14671 call!656100)) (head!14727 s!7961)))))

(declare-fun call!656102 () List!69870)

(declare-fun bm!656094 () Bool)

(declare-fun call!656099 () (InoxSet Context!14670))

(assert (=> bm!656094 (= call!656099 (derivationStepZipperDown!2526 (ite c!1339139 (regOne!37279 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (ite c!1339138 (regTwo!37278 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (ite c!1339141 (regOne!37278 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))) (reg!18712 (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544)))))))))) (ite (or c!1339139 c!1339138) (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064)) (Context!14671 call!656102)) (head!14727 s!7961)))))

(declare-fun bm!656095 () Bool)

(assert (=> bm!656095 (= call!656102 call!656100)))

(declare-fun bm!656096 () Bool)

(assert (=> bm!656096 (= call!656101 call!656098)))

(declare-fun bm!656097 () Bool)

(assert (=> bm!656097 (= call!656098 call!656099)))

(declare-fun b!7194908 () Bool)

(declare-fun e!4320579 () (InoxSet Context!14670))

(assert (=> b!7194908 (= e!4320579 ((_ map or) call!656099 call!656097))))

(declare-fun b!7194909 () Bool)

(assert (=> b!7194909 (= c!1339138 e!4320581)))

(declare-fun res!2929047 () Bool)

(assert (=> b!7194909 (=> (not res!2929047) (not e!4320581))))

(assert (=> b!7194909 (= res!2929047 ((_ is Concat!27228) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))))))

(assert (=> b!7194909 (= e!4320579 e!4320583)))

(declare-fun b!7194910 () Bool)

(assert (=> b!7194910 (= e!4320584 call!656101)))

(declare-fun b!7194911 () Bool)

(assert (=> b!7194911 (= e!4320582 e!4320579)))

(assert (=> b!7194911 (= c!1339139 ((_ is Union!18383) (ite c!1339109 (regOne!37279 (h!76194 (exprs!7835 c!10544))) (ite c!1339108 (regTwo!37278 (h!76194 (exprs!7835 c!10544))) (ite c!1339111 (regOne!37278 (h!76194 (exprs!7835 c!10544))) (reg!18712 (h!76194 (exprs!7835 c!10544))))))))))

(declare-fun b!7194912 () Bool)

(assert (=> b!7194912 (= e!4320582 (store ((as const (Array Context!14670 Bool)) false) (ite (or c!1339109 c!1339108) (Context!14671 (t!383895 (exprs!7835 c!10544))) (Context!14671 call!656064)) true))))

(assert (= (and d!2241320 c!1339137) b!7194912))

(assert (= (and d!2241320 (not c!1339137)) b!7194911))

(assert (= (and b!7194911 c!1339139) b!7194908))

(assert (= (and b!7194911 (not c!1339139)) b!7194909))

(assert (= (and b!7194909 res!2929047) b!7194902))

(assert (= (and b!7194909 c!1339138) b!7194907))

(assert (= (and b!7194909 (not c!1339138)) b!7194906))

(assert (= (and b!7194906 c!1339141) b!7194905))

(assert (= (and b!7194906 (not c!1339141)) b!7194904))

(assert (= (and b!7194904 c!1339140) b!7194910))

(assert (= (and b!7194904 (not c!1339140)) b!7194903))

(assert (= (or b!7194905 b!7194910) bm!656095))

(assert (= (or b!7194905 b!7194910) bm!656096))

(assert (= (or b!7194907 bm!656096) bm!656097))

(assert (= (or b!7194907 bm!656095) bm!656092))

(assert (= (or b!7194908 bm!656097) bm!656094))

(assert (= (or b!7194908 b!7194907) bm!656093))

(declare-fun m!7889158 () Bool)

(assert (=> b!7194902 m!7889158))

(assert (=> bm!656093 m!7888994))

(declare-fun m!7889160 () Bool)

(assert (=> bm!656093 m!7889160))

(assert (=> bm!656094 m!7888994))

(declare-fun m!7889162 () Bool)

(assert (=> bm!656094 m!7889162))

(declare-fun m!7889164 () Bool)

(assert (=> bm!656092 m!7889164))

(declare-fun m!7889166 () Bool)

(assert (=> b!7194912 m!7889166))

(assert (=> bm!656056 d!2241320))

(declare-fun b!7194915 () Bool)

(declare-fun e!4320585 () Bool)

(declare-fun tp!2000141 () Bool)

(assert (=> b!7194915 (= e!4320585 tp!2000141)))

(declare-fun b!7194916 () Bool)

(declare-fun tp!2000145 () Bool)

(declare-fun tp!2000143 () Bool)

(assert (=> b!7194916 (= e!4320585 (and tp!2000145 tp!2000143))))

(declare-fun b!7194914 () Bool)

(declare-fun tp!2000142 () Bool)

(declare-fun tp!2000144 () Bool)

(assert (=> b!7194914 (= e!4320585 (and tp!2000142 tp!2000144))))

(declare-fun b!7194913 () Bool)

(assert (=> b!7194913 (= e!4320585 tp_is_empty!46323)))

(assert (=> b!7194802 (= tp!2000127 e!4320585)))

(assert (= (and b!7194802 ((_ is ElementMatch!18383) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) b!7194913))

(assert (= (and b!7194802 ((_ is Concat!27228) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) b!7194914))

(assert (= (and b!7194802 ((_ is Star!18383) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) b!7194915))

(assert (= (and b!7194802 ((_ is Union!18383) (regOne!37278 (h!76194 (exprs!7835 c!10544))))) b!7194916))

(declare-fun b!7194919 () Bool)

(declare-fun e!4320586 () Bool)

(declare-fun tp!2000146 () Bool)

(assert (=> b!7194919 (= e!4320586 tp!2000146)))

(declare-fun b!7194920 () Bool)

(declare-fun tp!2000150 () Bool)

(declare-fun tp!2000148 () Bool)

(assert (=> b!7194920 (= e!4320586 (and tp!2000150 tp!2000148))))

(declare-fun b!7194918 () Bool)

(declare-fun tp!2000147 () Bool)

(declare-fun tp!2000149 () Bool)

(assert (=> b!7194918 (= e!4320586 (and tp!2000147 tp!2000149))))

(declare-fun b!7194917 () Bool)

(assert (=> b!7194917 (= e!4320586 tp_is_empty!46323)))

(assert (=> b!7194802 (= tp!2000129 e!4320586)))

(assert (= (and b!7194802 ((_ is ElementMatch!18383) (regTwo!37278 (h!76194 (exprs!7835 c!10544))))) b!7194917))

(assert (= (and b!7194802 ((_ is Concat!27228) (regTwo!37278 (h!76194 (exprs!7835 c!10544))))) b!7194918))

(assert (= (and b!7194802 ((_ is Star!18383) (regTwo!37278 (h!76194 (exprs!7835 c!10544))))) b!7194919))

(assert (= (and b!7194802 ((_ is Union!18383) (regTwo!37278 (h!76194 (exprs!7835 c!10544))))) b!7194920))

(declare-fun b!7194923 () Bool)

(declare-fun e!4320587 () Bool)

(declare-fun tp!2000151 () Bool)

(assert (=> b!7194923 (= e!4320587 tp!2000151)))

(declare-fun b!7194924 () Bool)

(declare-fun tp!2000155 () Bool)

(declare-fun tp!2000153 () Bool)

(assert (=> b!7194924 (= e!4320587 (and tp!2000155 tp!2000153))))

(declare-fun b!7194922 () Bool)

(declare-fun tp!2000152 () Bool)

(declare-fun tp!2000154 () Bool)

(assert (=> b!7194922 (= e!4320587 (and tp!2000152 tp!2000154))))

(declare-fun b!7194921 () Bool)

(assert (=> b!7194921 (= e!4320587 tp_is_empty!46323)))

(assert (=> b!7194804 (= tp!2000130 e!4320587)))

(assert (= (and b!7194804 ((_ is ElementMatch!18383) (regOne!37279 (h!76194 (exprs!7835 c!10544))))) b!7194921))

(assert (= (and b!7194804 ((_ is Concat!27228) (regOne!37279 (h!76194 (exprs!7835 c!10544))))) b!7194922))

(assert (= (and b!7194804 ((_ is Star!18383) (regOne!37279 (h!76194 (exprs!7835 c!10544))))) b!7194923))

(assert (= (and b!7194804 ((_ is Union!18383) (regOne!37279 (h!76194 (exprs!7835 c!10544))))) b!7194924))

(declare-fun b!7194927 () Bool)

(declare-fun e!4320588 () Bool)

(declare-fun tp!2000156 () Bool)

(assert (=> b!7194927 (= e!4320588 tp!2000156)))

(declare-fun b!7194928 () Bool)

(declare-fun tp!2000160 () Bool)

(declare-fun tp!2000158 () Bool)

(assert (=> b!7194928 (= e!4320588 (and tp!2000160 tp!2000158))))

(declare-fun b!7194926 () Bool)

(declare-fun tp!2000157 () Bool)

(declare-fun tp!2000159 () Bool)

(assert (=> b!7194926 (= e!4320588 (and tp!2000157 tp!2000159))))

(declare-fun b!7194925 () Bool)

(assert (=> b!7194925 (= e!4320588 tp_is_empty!46323)))

(assert (=> b!7194804 (= tp!2000128 e!4320588)))

(assert (= (and b!7194804 ((_ is ElementMatch!18383) (regTwo!37279 (h!76194 (exprs!7835 c!10544))))) b!7194925))

(assert (= (and b!7194804 ((_ is Concat!27228) (regTwo!37279 (h!76194 (exprs!7835 c!10544))))) b!7194926))

(assert (= (and b!7194804 ((_ is Star!18383) (regTwo!37279 (h!76194 (exprs!7835 c!10544))))) b!7194927))

(assert (= (and b!7194804 ((_ is Union!18383) (regTwo!37279 (h!76194 (exprs!7835 c!10544))))) b!7194928))

(declare-fun b!7194931 () Bool)

(declare-fun e!4320589 () Bool)

(declare-fun tp!2000161 () Bool)

(assert (=> b!7194931 (= e!4320589 tp!2000161)))

(declare-fun b!7194932 () Bool)

(declare-fun tp!2000165 () Bool)

(declare-fun tp!2000163 () Bool)

(assert (=> b!7194932 (= e!4320589 (and tp!2000165 tp!2000163))))

(declare-fun b!7194930 () Bool)

(declare-fun tp!2000162 () Bool)

(declare-fun tp!2000164 () Bool)

(assert (=> b!7194930 (= e!4320589 (and tp!2000162 tp!2000164))))

(declare-fun b!7194929 () Bool)

(assert (=> b!7194929 (= e!4320589 tp_is_empty!46323)))

(assert (=> b!7194811 (= tp!2000139 e!4320589)))

(assert (= (and b!7194811 ((_ is ElementMatch!18383) (h!76194 (t!383895 (exprs!7835 setElem!53368))))) b!7194929))

(assert (= (and b!7194811 ((_ is Concat!27228) (h!76194 (t!383895 (exprs!7835 setElem!53368))))) b!7194930))

(assert (= (and b!7194811 ((_ is Star!18383) (h!76194 (t!383895 (exprs!7835 setElem!53368))))) b!7194931))

(assert (= (and b!7194811 ((_ is Union!18383) (h!76194 (t!383895 (exprs!7835 setElem!53368))))) b!7194932))

(declare-fun b!7194933 () Bool)

(declare-fun e!4320590 () Bool)

(declare-fun tp!2000166 () Bool)

(declare-fun tp!2000167 () Bool)

(assert (=> b!7194933 (= e!4320590 (and tp!2000166 tp!2000167))))

(assert (=> b!7194811 (= tp!2000140 e!4320590)))

(assert (= (and b!7194811 ((_ is Cons!69746) (t!383895 (t!383895 (exprs!7835 setElem!53368))))) b!7194933))

(declare-fun b!7194936 () Bool)

(declare-fun e!4320591 () Bool)

(declare-fun tp!2000168 () Bool)

(assert (=> b!7194936 (= e!4320591 tp!2000168)))

(declare-fun b!7194937 () Bool)

(declare-fun tp!2000172 () Bool)

(declare-fun tp!2000170 () Bool)

(assert (=> b!7194937 (= e!4320591 (and tp!2000172 tp!2000170))))

(declare-fun b!7194935 () Bool)

(declare-fun tp!2000169 () Bool)

(declare-fun tp!2000171 () Bool)

(assert (=> b!7194935 (= e!4320591 (and tp!2000169 tp!2000171))))

(declare-fun b!7194934 () Bool)

(assert (=> b!7194934 (= e!4320591 tp_is_empty!46323)))

(assert (=> b!7194803 (= tp!2000126 e!4320591)))

(assert (= (and b!7194803 ((_ is ElementMatch!18383) (reg!18712 (h!76194 (exprs!7835 c!10544))))) b!7194934))

(assert (= (and b!7194803 ((_ is Concat!27228) (reg!18712 (h!76194 (exprs!7835 c!10544))))) b!7194935))

(assert (= (and b!7194803 ((_ is Star!18383) (reg!18712 (h!76194 (exprs!7835 c!10544))))) b!7194936))

(assert (= (and b!7194803 ((_ is Union!18383) (reg!18712 (h!76194 (exprs!7835 c!10544))))) b!7194937))

(declare-fun b!7194940 () Bool)

(declare-fun e!4320592 () Bool)

(declare-fun tp!2000173 () Bool)

(assert (=> b!7194940 (= e!4320592 tp!2000173)))

(declare-fun b!7194941 () Bool)

(declare-fun tp!2000177 () Bool)

(declare-fun tp!2000175 () Bool)

(assert (=> b!7194941 (= e!4320592 (and tp!2000177 tp!2000175))))

(declare-fun b!7194939 () Bool)

(declare-fun tp!2000174 () Bool)

(declare-fun tp!2000176 () Bool)

(assert (=> b!7194939 (= e!4320592 (and tp!2000174 tp!2000176))))

(declare-fun b!7194938 () Bool)

(assert (=> b!7194938 (= e!4320592 tp_is_empty!46323)))

(assert (=> b!7194810 (= tp!2000138 e!4320592)))

(assert (= (and b!7194810 ((_ is ElementMatch!18383) (regOne!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194938))

(assert (= (and b!7194810 ((_ is Concat!27228) (regOne!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194939))

(assert (= (and b!7194810 ((_ is Star!18383) (regOne!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194940))

(assert (= (and b!7194810 ((_ is Union!18383) (regOne!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194941))

(declare-fun b!7194944 () Bool)

(declare-fun e!4320593 () Bool)

(declare-fun tp!2000178 () Bool)

(assert (=> b!7194944 (= e!4320593 tp!2000178)))

(declare-fun b!7194945 () Bool)

(declare-fun tp!2000182 () Bool)

(declare-fun tp!2000180 () Bool)

(assert (=> b!7194945 (= e!4320593 (and tp!2000182 tp!2000180))))

(declare-fun b!7194943 () Bool)

(declare-fun tp!2000179 () Bool)

(declare-fun tp!2000181 () Bool)

(assert (=> b!7194943 (= e!4320593 (and tp!2000179 tp!2000181))))

(declare-fun b!7194942 () Bool)

(assert (=> b!7194942 (= e!4320593 tp_is_empty!46323)))

(assert (=> b!7194810 (= tp!2000136 e!4320593)))

(assert (= (and b!7194810 ((_ is ElementMatch!18383) (regTwo!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194942))

(assert (= (and b!7194810 ((_ is Concat!27228) (regTwo!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194943))

(assert (= (and b!7194810 ((_ is Star!18383) (regTwo!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194944))

(assert (= (and b!7194810 ((_ is Union!18383) (regTwo!37279 (h!76194 (exprs!7835 setElem!53368))))) b!7194945))

(declare-fun b!7194946 () Bool)

(declare-fun e!4320594 () Bool)

(declare-fun tp!2000183 () Bool)

(assert (=> b!7194946 (= e!4320594 (and tp_is_empty!46323 tp!2000183))))

(assert (=> b!7194806 (= tp!2000133 e!4320594)))

(assert (= (and b!7194806 ((_ is Cons!69747) (t!383896 (t!383896 (t!383896 s!7961))))) b!7194946))

(declare-fun b!7194949 () Bool)

(declare-fun e!4320595 () Bool)

(declare-fun tp!2000184 () Bool)

(assert (=> b!7194949 (= e!4320595 tp!2000184)))

(declare-fun b!7194950 () Bool)

(declare-fun tp!2000188 () Bool)

(declare-fun tp!2000186 () Bool)

(assert (=> b!7194950 (= e!4320595 (and tp!2000188 tp!2000186))))

(declare-fun b!7194948 () Bool)

(declare-fun tp!2000185 () Bool)

(declare-fun tp!2000187 () Bool)

(assert (=> b!7194948 (= e!4320595 (and tp!2000185 tp!2000187))))

(declare-fun b!7194947 () Bool)

(assert (=> b!7194947 (= e!4320595 tp_is_empty!46323)))

(assert (=> b!7194805 (= tp!2000131 e!4320595)))

(assert (= (and b!7194805 ((_ is ElementMatch!18383) (h!76194 (t!383895 (exprs!7835 c!10544))))) b!7194947))

(assert (= (and b!7194805 ((_ is Concat!27228) (h!76194 (t!383895 (exprs!7835 c!10544))))) b!7194948))

(assert (= (and b!7194805 ((_ is Star!18383) (h!76194 (t!383895 (exprs!7835 c!10544))))) b!7194949))

(assert (= (and b!7194805 ((_ is Union!18383) (h!76194 (t!383895 (exprs!7835 c!10544))))) b!7194950))

(declare-fun b!7194951 () Bool)

(declare-fun e!4320596 () Bool)

(declare-fun tp!2000189 () Bool)

(declare-fun tp!2000190 () Bool)

(assert (=> b!7194951 (= e!4320596 (and tp!2000189 tp!2000190))))

(assert (=> b!7194805 (= tp!2000132 e!4320596)))

(assert (= (and b!7194805 ((_ is Cons!69746) (t!383895 (t!383895 (exprs!7835 c!10544))))) b!7194951))

(declare-fun condSetEmpty!53377 () Bool)

(assert (=> setNonEmpty!53376 (= condSetEmpty!53377 (= setRest!53376 ((as const (Array Context!14670 Bool)) false)))))

(declare-fun setRes!53377 () Bool)

(assert (=> setNonEmpty!53376 (= tp!2000114 setRes!53377)))

(declare-fun setIsEmpty!53377 () Bool)

(assert (=> setIsEmpty!53377 setRes!53377))

(declare-fun tp!2000191 () Bool)

(declare-fun setElem!53377 () Context!14670)

(declare-fun setNonEmpty!53377 () Bool)

(declare-fun e!4320597 () Bool)

(assert (=> setNonEmpty!53377 (= setRes!53377 (and tp!2000191 (inv!88979 setElem!53377) e!4320597))))

(declare-fun setRest!53377 () (InoxSet Context!14670))

(assert (=> setNonEmpty!53377 (= setRest!53376 ((_ map or) (store ((as const (Array Context!14670 Bool)) false) setElem!53377 true) setRest!53377))))

(declare-fun b!7194952 () Bool)

(declare-fun tp!2000192 () Bool)

(assert (=> b!7194952 (= e!4320597 tp!2000192)))

(assert (= (and setNonEmpty!53376 condSetEmpty!53377) setIsEmpty!53377))

(assert (= (and setNonEmpty!53376 (not condSetEmpty!53377)) setNonEmpty!53377))

(assert (= setNonEmpty!53377 b!7194952))

(declare-fun m!7889168 () Bool)

(assert (=> setNonEmpty!53377 m!7889168))

(declare-fun b!7194955 () Bool)

(declare-fun e!4320598 () Bool)

(declare-fun tp!2000193 () Bool)

(assert (=> b!7194955 (= e!4320598 tp!2000193)))

(declare-fun b!7194956 () Bool)

(declare-fun tp!2000197 () Bool)

(declare-fun tp!2000195 () Bool)

(assert (=> b!7194956 (= e!4320598 (and tp!2000197 tp!2000195))))

(declare-fun b!7194954 () Bool)

(declare-fun tp!2000194 () Bool)

(declare-fun tp!2000196 () Bool)

(assert (=> b!7194954 (= e!4320598 (and tp!2000194 tp!2000196))))

(declare-fun b!7194953 () Bool)

(assert (=> b!7194953 (= e!4320598 tp_is_empty!46323)))

(assert (=> b!7194789 (= tp!2000112 e!4320598)))

(assert (= (and b!7194789 ((_ is ElementMatch!18383) (h!76194 (exprs!7835 setElem!53374)))) b!7194953))

(assert (= (and b!7194789 ((_ is Concat!27228) (h!76194 (exprs!7835 setElem!53374)))) b!7194954))

(assert (= (and b!7194789 ((_ is Star!18383) (h!76194 (exprs!7835 setElem!53374)))) b!7194955))

(assert (= (and b!7194789 ((_ is Union!18383) (h!76194 (exprs!7835 setElem!53374)))) b!7194956))

(declare-fun b!7194957 () Bool)

(declare-fun e!4320599 () Bool)

(declare-fun tp!2000198 () Bool)

(declare-fun tp!2000199 () Bool)

(assert (=> b!7194957 (= e!4320599 (and tp!2000198 tp!2000199))))

(assert (=> b!7194789 (= tp!2000113 e!4320599)))

(assert (= (and b!7194789 ((_ is Cons!69746) (t!383895 (exprs!7835 setElem!53374)))) b!7194957))

(declare-fun b!7194960 () Bool)

(declare-fun e!4320600 () Bool)

(declare-fun tp!2000200 () Bool)

(assert (=> b!7194960 (= e!4320600 tp!2000200)))

(declare-fun b!7194961 () Bool)

(declare-fun tp!2000204 () Bool)

(declare-fun tp!2000202 () Bool)

(assert (=> b!7194961 (= e!4320600 (and tp!2000204 tp!2000202))))

(declare-fun b!7194959 () Bool)

(declare-fun tp!2000201 () Bool)

(declare-fun tp!2000203 () Bool)

(assert (=> b!7194959 (= e!4320600 (and tp!2000201 tp!2000203))))

(declare-fun b!7194958 () Bool)

(assert (=> b!7194958 (= e!4320600 tp_is_empty!46323)))

(assert (=> b!7194809 (= tp!2000134 e!4320600)))

(assert (= (and b!7194809 ((_ is ElementMatch!18383) (reg!18712 (h!76194 (exprs!7835 setElem!53368))))) b!7194958))

(assert (= (and b!7194809 ((_ is Concat!27228) (reg!18712 (h!76194 (exprs!7835 setElem!53368))))) b!7194959))

(assert (= (and b!7194809 ((_ is Star!18383) (reg!18712 (h!76194 (exprs!7835 setElem!53368))))) b!7194960))

(assert (= (and b!7194809 ((_ is Union!18383) (reg!18712 (h!76194 (exprs!7835 setElem!53368))))) b!7194961))

(declare-fun b!7194962 () Bool)

(declare-fun e!4320601 () Bool)

(declare-fun tp!2000205 () Bool)

(declare-fun tp!2000206 () Bool)

(assert (=> b!7194962 (= e!4320601 (and tp!2000205 tp!2000206))))

(assert (=> b!7194790 (= tp!2000115 e!4320601)))

(assert (= (and b!7194790 ((_ is Cons!69746) (exprs!7835 setElem!53376))) b!7194962))

(declare-fun b!7194965 () Bool)

(declare-fun e!4320602 () Bool)

(declare-fun tp!2000207 () Bool)

(assert (=> b!7194965 (= e!4320602 tp!2000207)))

(declare-fun b!7194966 () Bool)

(declare-fun tp!2000211 () Bool)

(declare-fun tp!2000209 () Bool)

(assert (=> b!7194966 (= e!4320602 (and tp!2000211 tp!2000209))))

(declare-fun b!7194964 () Bool)

(declare-fun tp!2000208 () Bool)

(declare-fun tp!2000210 () Bool)

(assert (=> b!7194964 (= e!4320602 (and tp!2000208 tp!2000210))))

(declare-fun b!7194963 () Bool)

(assert (=> b!7194963 (= e!4320602 tp_is_empty!46323)))

(assert (=> b!7194808 (= tp!2000135 e!4320602)))

(assert (= (and b!7194808 ((_ is ElementMatch!18383) (regOne!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194963))

(assert (= (and b!7194808 ((_ is Concat!27228) (regOne!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194964))

(assert (= (and b!7194808 ((_ is Star!18383) (regOne!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194965))

(assert (= (and b!7194808 ((_ is Union!18383) (regOne!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194966))

(declare-fun b!7194969 () Bool)

(declare-fun e!4320603 () Bool)

(declare-fun tp!2000212 () Bool)

(assert (=> b!7194969 (= e!4320603 tp!2000212)))

(declare-fun b!7194970 () Bool)

(declare-fun tp!2000216 () Bool)

(declare-fun tp!2000214 () Bool)

(assert (=> b!7194970 (= e!4320603 (and tp!2000216 tp!2000214))))

(declare-fun b!7194968 () Bool)

(declare-fun tp!2000213 () Bool)

(declare-fun tp!2000215 () Bool)

(assert (=> b!7194968 (= e!4320603 (and tp!2000213 tp!2000215))))

(declare-fun b!7194967 () Bool)

(assert (=> b!7194967 (= e!4320603 tp_is_empty!46323)))

(assert (=> b!7194808 (= tp!2000137 e!4320603)))

(assert (= (and b!7194808 ((_ is ElementMatch!18383) (regTwo!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194967))

(assert (= (and b!7194808 ((_ is Concat!27228) (regTwo!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194968))

(assert (= (and b!7194808 ((_ is Star!18383) (regTwo!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194969))

(assert (= (and b!7194808 ((_ is Union!18383) (regTwo!37278 (h!76194 (exprs!7835 setElem!53368))))) b!7194970))

(declare-fun b_lambda!275817 () Bool)

(assert (= b_lambda!275813 (or d!2241252 b_lambda!275817)))

(declare-fun bs!1900485 () Bool)

(declare-fun d!2241322 () Bool)

(assert (= bs!1900485 (and d!2241322 d!2241252)))

(assert (=> bs!1900485 (= (dynLambda!28398 lambda!438070 (h!76194 (t!383895 (exprs!7835 c!10544)))) (validRegex!9483 (h!76194 (t!383895 (exprs!7835 c!10544)))))))

(declare-fun m!7889170 () Bool)

(assert (=> bs!1900485 m!7889170))

(assert (=> b!7194841 d!2241322))

(declare-fun b_lambda!275819 () Bool)

(assert (= b_lambda!275811 (or d!2241236 b_lambda!275819)))

(declare-fun bs!1900486 () Bool)

(declare-fun d!2241324 () Bool)

(assert (= bs!1900486 (and d!2241324 d!2241236)))

(assert (=> bs!1900486 (= (dynLambda!28398 lambda!438069 (h!76194 (t!383895 (exprs!7835 setElem!53368)))) (validRegex!9483 (h!76194 (t!383895 (exprs!7835 setElem!53368)))))))

(declare-fun m!7889172 () Bool)

(assert (=> bs!1900486 m!7889172))

(assert (=> b!7194839 d!2241324))

(declare-fun b_lambda!275821 () Bool)

(assert (= b_lambda!275815 (or d!2241278 b_lambda!275821)))

(declare-fun bs!1900487 () Bool)

(declare-fun d!2241326 () Bool)

(assert (= bs!1900487 (and d!2241326 d!2241278)))

(assert (=> bs!1900487 (= (dynLambda!28398 lambda!438072 (h!76194 (exprs!7835 setElem!53374))) (validRegex!9483 (h!76194 (exprs!7835 setElem!53374))))))

(declare-fun m!7889174 () Bool)

(assert (=> bs!1900487 m!7889174))

(assert (=> b!7194843 d!2241326))

(check-sat (not bm!656092) (not b!7194959) (not b!7194840) (not b!7194928) (not b!7194936) (not bm!656093) (not b!7194931) (not b!7194914) (not b!7194940) (not b!7194926) (not b!7194970) (not setNonEmpty!53377) (not bs!1900485) (not b!7194956) (not b!7194968) (not b!7194962) (not b!7194922) (not b_lambda!275809) (not b!7194961) (not b!7194854) (not bm!656087) (not b!7194943) (not b!7194955) (not b!7194951) (not b_lambda!275819) (not b!7194891) (not b!7194846) (not b!7194924) (not b_lambda!275817) (not bm!656076) (not bm!656094) (not bm!656074) (not b!7194902) (not b!7194950) (not b!7194935) (not b!7194834) (not d!2241302) (not b!7194918) (not b!7194948) (not bm!656067) (not bm!656084) (not b!7194927) (not b!7194945) (not b!7194844) (not b!7194960) (not b!7194842) (not bm!656070) (not b!7194952) (not b!7194965) (not b!7194930) (not b!7194949) (not b_lambda!275807) (not b!7194915) (not bm!656085) (not d!2241306) (not bm!656086) (not b!7194923) (not b!7194939) (not b!7194916) (not bm!656075) (not b!7194954) (not bm!656071) (not b!7194932) (not bs!1900487) (not bs!1900486) (not bm!656069) (not b_lambda!275821) tp_is_empty!46323 (not b!7194969) (not b!7194964) (not b!7194944) (not b!7194957) (not b!7194941) (not b!7194859) (not b!7194937) (not b!7194966) (not d!2241304) (not b!7194920) (not b!7194919) (not b!7194933) (not b!7194946) (not bm!656073) (not bm!656088) (not b!7194845))
(check-sat)
