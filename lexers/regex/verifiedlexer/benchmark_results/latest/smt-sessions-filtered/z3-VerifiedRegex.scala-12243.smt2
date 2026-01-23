; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689556 () Bool)

(assert start!689556)

(declare-fun b!7084550 () Bool)

(assert (=> b!7084550 true))

(declare-fun res!2894214 () Bool)

(declare-fun e!4259213 () Bool)

(assert (=> start!689556 (=> (not res!2894214) (not e!4259213))))

(declare-datatypes ((C!35728 0))(
  ( (C!35729 (val!27570 Int)) )
))
(declare-datatypes ((Regex!17729 0))(
  ( (ElementMatch!17729 (c!1322300 C!35728)) (Concat!26574 (regOne!35970 Regex!17729) (regTwo!35970 Regex!17729)) (EmptyExpr!17729) (Star!17729 (reg!18058 Regex!17729)) (EmptyLang!17729) (Union!17729 (regOne!35971 Regex!17729) (regTwo!35971 Regex!17729)) )
))
(declare-fun r!11554 () Regex!17729)

(declare-fun validRegex!9004 (Regex!17729) Bool)

(assert (=> start!689556 (= res!2894214 (validRegex!9004 r!11554))))

(assert (=> start!689556 e!4259213))

(declare-fun e!4259211 () Bool)

(assert (=> start!689556 e!4259211))

(declare-datatypes ((List!68692 0))(
  ( (Nil!68568) (Cons!68568 (h!75016 Regex!17729) (t!382477 List!68692)) )
))
(declare-datatypes ((Context!13450 0))(
  ( (Context!13451 (exprs!7225 List!68692)) )
))
(declare-fun c!9994 () Context!13450)

(declare-fun e!4259210 () Bool)

(declare-fun inv!87187 (Context!13450) Bool)

(assert (=> start!689556 (and (inv!87187 c!9994) e!4259210)))

(declare-fun tp_is_empty!44691 () Bool)

(assert (=> start!689556 tp_is_empty!44691))

(declare-fun auxCtx!45 () Context!13450)

(declare-fun e!4259212 () Bool)

(assert (=> start!689556 (and (inv!87187 auxCtx!45) e!4259212)))

(declare-fun b!7084543 () Bool)

(declare-fun tp!1944746 () Bool)

(assert (=> b!7084543 (= e!4259210 tp!1944746)))

(declare-fun b!7084544 () Bool)

(declare-fun tp!1944743 () Bool)

(declare-fun tp!1944742 () Bool)

(assert (=> b!7084544 (= e!4259211 (and tp!1944743 tp!1944742))))

(declare-fun b!7084545 () Bool)

(declare-fun tp!1944745 () Bool)

(declare-fun tp!1944748 () Bool)

(assert (=> b!7084545 (= e!4259211 (and tp!1944745 tp!1944748))))

(declare-fun b!7084546 () Bool)

(declare-fun tp!1944747 () Bool)

(assert (=> b!7084546 (= e!4259212 tp!1944747)))

(declare-fun b!7084547 () Bool)

(declare-fun e!4259214 () Bool)

(assert (=> b!7084547 (= e!4259214 (not true))))

(declare-fun lt!2554383 () List!68692)

(declare-fun ++!15906 (List!68692 List!68692) List!68692)

(assert (=> b!7084547 (= lt!2554383 (++!15906 (exprs!7225 c!9994) (exprs!7225 auxCtx!45)))))

(declare-fun lambda!428863 () Int)

(declare-datatypes ((Unit!162165 0))(
  ( (Unit!162166) )
))
(declare-fun lt!2554385 () Unit!162165)

(declare-fun lemmaConcatPreservesForall!1036 (List!68692 List!68692 Int) Unit!162165)

(assert (=> b!7084547 (= lt!2554385 (lemmaConcatPreservesForall!1036 (exprs!7225 c!9994) (exprs!7225 auxCtx!45) lambda!428863))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2554386 () (InoxSet Context!13450))

(declare-fun lambda!428862 () Int)

(declare-fun map!16084 ((InoxSet Context!13450) Int) (InoxSet Context!13450))

(assert (=> b!7084547 (= (map!16084 lt!2554386 lambda!428862) (store ((as const (Array Context!13450 Bool)) false) (Context!13451 (++!15906 (exprs!7225 c!9994) (exprs!7225 auxCtx!45))) true))))

(declare-fun lt!2554382 () Unit!162165)

(assert (=> b!7084547 (= lt!2554382 (lemmaConcatPreservesForall!1036 (exprs!7225 c!9994) (exprs!7225 auxCtx!45) lambda!428863))))

(declare-fun lt!2554384 () Unit!162165)

(declare-fun lemmaMapOnSingletonSet!442 ((InoxSet Context!13450) Context!13450 Int) Unit!162165)

(assert (=> b!7084547 (= lt!2554384 (lemmaMapOnSingletonSet!442 lt!2554386 c!9994 lambda!428862))))

(assert (=> b!7084547 (= lt!2554386 (store ((as const (Array Context!13450 Bool)) false) c!9994 true))))

(declare-fun b!7084548 () Bool)

(declare-fun tp!1944744 () Bool)

(assert (=> b!7084548 (= e!4259211 tp!1944744)))

(declare-fun b!7084549 () Bool)

(assert (=> b!7084549 (= e!4259211 tp_is_empty!44691)))

(assert (=> b!7084550 (= e!4259213 e!4259214)))

(declare-fun res!2894213 () Bool)

(assert (=> b!7084550 (=> (not res!2894213) (not e!4259214))))

(declare-fun a!1901 () C!35728)

(get-info :version)

(assert (=> b!7084550 (= res!2894213 (and ((_ is ElementMatch!17729) r!11554) (= (c!1322300 r!11554) a!1901)))))

(assert (= (and start!689556 res!2894214) b!7084550))

(assert (= (and b!7084550 res!2894213) b!7084547))

(assert (= (and start!689556 ((_ is ElementMatch!17729) r!11554)) b!7084549))

(assert (= (and start!689556 ((_ is Concat!26574) r!11554)) b!7084544))

(assert (= (and start!689556 ((_ is Star!17729) r!11554)) b!7084548))

(assert (= (and start!689556 ((_ is Union!17729) r!11554)) b!7084545))

(assert (= start!689556 b!7084543))

(assert (= start!689556 b!7084546))

(declare-fun m!7816250 () Bool)

(assert (=> start!689556 m!7816250))

(declare-fun m!7816252 () Bool)

(assert (=> start!689556 m!7816252))

(declare-fun m!7816254 () Bool)

(assert (=> start!689556 m!7816254))

(declare-fun m!7816256 () Bool)

(assert (=> b!7084547 m!7816256))

(declare-fun m!7816258 () Bool)

(assert (=> b!7084547 m!7816258))

(declare-fun m!7816260 () Bool)

(assert (=> b!7084547 m!7816260))

(assert (=> b!7084547 m!7816256))

(declare-fun m!7816262 () Bool)

(assert (=> b!7084547 m!7816262))

(declare-fun m!7816264 () Bool)

(assert (=> b!7084547 m!7816264))

(declare-fun m!7816266 () Bool)

(assert (=> b!7084547 m!7816266))

(check-sat (not b!7084547) (not b!7084548) (not b!7084544) (not b!7084545) tp_is_empty!44691 (not start!689556) (not b!7084543) (not b!7084546))
(check-sat)
