; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689560 () Bool)

(assert start!689560)

(declare-fun b!7084598 () Bool)

(assert (=> b!7084598 true))

(declare-fun res!2894226 () Bool)

(declare-fun e!4259242 () Bool)

(assert (=> start!689560 (=> (not res!2894226) (not e!4259242))))

(declare-datatypes ((C!35732 0))(
  ( (C!35733 (val!27572 Int)) )
))
(declare-datatypes ((Regex!17731 0))(
  ( (ElementMatch!17731 (c!1322302 C!35732)) (Concat!26576 (regOne!35974 Regex!17731) (regTwo!35974 Regex!17731)) (EmptyExpr!17731) (Star!17731 (reg!18060 Regex!17731)) (EmptyLang!17731) (Union!17731 (regOne!35975 Regex!17731) (regTwo!35975 Regex!17731)) )
))
(declare-fun r!11554 () Regex!17731)

(declare-fun validRegex!9006 (Regex!17731) Bool)

(assert (=> start!689560 (= res!2894226 (validRegex!9006 r!11554))))

(assert (=> start!689560 e!4259242))

(declare-fun e!4259241 () Bool)

(assert (=> start!689560 e!4259241))

(declare-datatypes ((List!68694 0))(
  ( (Nil!68570) (Cons!68570 (h!75018 Regex!17731) (t!382479 List!68694)) )
))
(declare-datatypes ((Context!13454 0))(
  ( (Context!13455 (exprs!7227 List!68694)) )
))
(declare-fun c!9994 () Context!13454)

(declare-fun e!4259243 () Bool)

(declare-fun inv!87192 (Context!13454) Bool)

(assert (=> start!689560 (and (inv!87192 c!9994) e!4259243)))

(declare-fun tp_is_empty!44695 () Bool)

(assert (=> start!689560 tp_is_empty!44695))

(declare-fun auxCtx!45 () Context!13454)

(declare-fun e!4259244 () Bool)

(assert (=> start!689560 (and (inv!87192 auxCtx!45) e!4259244)))

(declare-fun b!7084595 () Bool)

(declare-fun tp!1944787 () Bool)

(declare-fun tp!1944785 () Bool)

(assert (=> b!7084595 (= e!4259241 (and tp!1944787 tp!1944785))))

(declare-fun b!7084596 () Bool)

(declare-fun e!4259240 () Bool)

(assert (=> b!7084596 (= e!4259240 (not true))))

(declare-fun lambda!428883 () Int)

(declare-datatypes ((Unit!162169 0))(
  ( (Unit!162170) )
))
(declare-fun lt!2554414 () Unit!162169)

(declare-fun lemmaConcatPreservesForall!1038 (List!68694 List!68694 Int) Unit!162169)

(assert (=> b!7084596 (= lt!2554414 (lemmaConcatPreservesForall!1038 (exprs!7227 c!9994) (exprs!7227 auxCtx!45) lambda!428883))))

(declare-fun lambda!428882 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2554413 () (InoxSet Context!13454))

(declare-fun map!16087 ((InoxSet Context!13454) Int) (InoxSet Context!13454))

(declare-fun ++!15908 (List!68694 List!68694) List!68694)

(assert (=> b!7084596 (= (map!16087 lt!2554413 lambda!428882) (store ((as const (Array Context!13454 Bool)) false) (Context!13455 (++!15908 (exprs!7227 c!9994) (exprs!7227 auxCtx!45))) true))))

(declare-fun lt!2554412 () Unit!162169)

(assert (=> b!7084596 (= lt!2554412 (lemmaConcatPreservesForall!1038 (exprs!7227 c!9994) (exprs!7227 auxCtx!45) lambda!428883))))

(declare-fun lt!2554411 () Unit!162169)

(declare-fun lemmaMapOnSingletonSet!444 ((InoxSet Context!13454) Context!13454 Int) Unit!162169)

(assert (=> b!7084596 (= lt!2554411 (lemmaMapOnSingletonSet!444 lt!2554413 c!9994 lambda!428882))))

(assert (=> b!7084596 (= lt!2554413 (store ((as const (Array Context!13454 Bool)) false) c!9994 true))))

(declare-fun b!7084597 () Bool)

(declare-fun tp!1944788 () Bool)

(assert (=> b!7084597 (= e!4259243 tp!1944788)))

(assert (=> b!7084598 (= e!4259242 e!4259240)))

(declare-fun res!2894225 () Bool)

(assert (=> b!7084598 (=> (not res!2894225) (not e!4259240))))

(declare-fun a!1901 () C!35732)

(get-info :version)

(assert (=> b!7084598 (= res!2894225 (and ((_ is ElementMatch!17731) r!11554) (= (c!1322302 r!11554) a!1901)))))

(declare-fun b!7084599 () Bool)

(declare-fun tp!1944786 () Bool)

(declare-fun tp!1944789 () Bool)

(assert (=> b!7084599 (= e!4259241 (and tp!1944786 tp!1944789))))

(declare-fun b!7084600 () Bool)

(assert (=> b!7084600 (= e!4259241 tp_is_empty!44695)))

(declare-fun b!7084601 () Bool)

(declare-fun tp!1944790 () Bool)

(assert (=> b!7084601 (= e!4259241 tp!1944790)))

(declare-fun b!7084602 () Bool)

(declare-fun tp!1944784 () Bool)

(assert (=> b!7084602 (= e!4259244 tp!1944784)))

(assert (= (and start!689560 res!2894226) b!7084598))

(assert (= (and b!7084598 res!2894225) b!7084596))

(assert (= (and start!689560 ((_ is ElementMatch!17731) r!11554)) b!7084600))

(assert (= (and start!689560 ((_ is Concat!26576) r!11554)) b!7084595))

(assert (= (and start!689560 ((_ is Star!17731) r!11554)) b!7084601))

(assert (= (and start!689560 ((_ is Union!17731) r!11554)) b!7084599))

(assert (= start!689560 b!7084597))

(assert (= start!689560 b!7084602))

(declare-fun m!7816286 () Bool)

(assert (=> start!689560 m!7816286))

(declare-fun m!7816288 () Bool)

(assert (=> start!689560 m!7816288))

(declare-fun m!7816290 () Bool)

(assert (=> start!689560 m!7816290))

(declare-fun m!7816292 () Bool)

(assert (=> b!7084596 m!7816292))

(declare-fun m!7816294 () Bool)

(assert (=> b!7084596 m!7816294))

(declare-fun m!7816296 () Bool)

(assert (=> b!7084596 m!7816296))

(declare-fun m!7816298 () Bool)

(assert (=> b!7084596 m!7816298))

(assert (=> b!7084596 m!7816298))

(declare-fun m!7816300 () Bool)

(assert (=> b!7084596 m!7816300))

(declare-fun m!7816302 () Bool)

(assert (=> b!7084596 m!7816302))

(check-sat tp_is_empty!44695 (not b!7084599) (not b!7084602) (not b!7084595) (not start!689560) (not b!7084596) (not b!7084601) (not b!7084597))
(check-sat)
