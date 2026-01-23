; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690056 () Bool)

(assert start!690056)

(declare-fun b!7089461 () Bool)

(assert (=> b!7089461 true))

(declare-fun b!7089457 () Bool)

(declare-fun e!4261940 () Bool)

(declare-fun tp!1947078 () Bool)

(declare-fun tp!1947074 () Bool)

(assert (=> b!7089457 (= e!4261940 (and tp!1947078 tp!1947074))))

(declare-fun b!7089458 () Bool)

(declare-fun e!4261937 () Bool)

(declare-fun tp!1947080 () Bool)

(assert (=> b!7089458 (= e!4261937 tp!1947080)))

(declare-fun b!7089459 () Bool)

(declare-fun e!4261942 () Bool)

(assert (=> b!7089459 (= e!4261942 true)))

(declare-datatypes ((C!35820 0))(
  ( (C!35821 (val!27616 Int)) )
))
(declare-datatypes ((Regex!17775 0))(
  ( (ElementMatch!17775 (c!1323162 C!35820)) (Concat!26620 (regOne!36062 Regex!17775) (regTwo!36062 Regex!17775)) (EmptyExpr!17775) (Star!17775 (reg!18104 Regex!17775)) (EmptyLang!17775) (Union!17775 (regOne!36063 Regex!17775) (regTwo!36063 Regex!17775)) )
))
(declare-datatypes ((List!68738 0))(
  ( (Nil!68614) (Cons!68614 (h!75062 Regex!17775) (t!382523 List!68738)) )
))
(declare-datatypes ((Context!13542 0))(
  ( (Context!13543 (exprs!7271 List!68738)) )
))
(declare-fun c!9994 () Context!13542)

(declare-fun auxCtx!45 () Context!13542)

(declare-datatypes ((Unit!162249 0))(
  ( (Unit!162250) )
))
(declare-fun lt!2555646 () Unit!162249)

(declare-fun lambda!429635 () Int)

(declare-fun lemmaConcatPreservesForall!1078 (List!68738 List!68738 Int) Unit!162249)

(assert (=> b!7089459 (= lt!2555646 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun b!7089460 () Bool)

(declare-fun tp!1947076 () Bool)

(assert (=> b!7089460 (= e!4261940 tp!1947076)))

(declare-fun e!4261936 () Bool)

(declare-fun e!4261939 () Bool)

(assert (=> b!7089461 (= e!4261936 e!4261939)))

(declare-fun res!2895545 () Bool)

(assert (=> b!7089461 (=> (not res!2895545) (not e!4261939))))

(declare-fun r!11554 () Regex!17775)

(declare-fun a!1901 () C!35820)

(get-info :version)

(assert (=> b!7089461 (= res!2895545 (and (or (not ((_ is ElementMatch!17775) r!11554)) (not (= (c!1323162 r!11554) a!1901))) ((_ is Union!17775) r!11554)))))

(declare-fun b!7089462 () Bool)

(declare-fun e!4261941 () Bool)

(declare-fun tp!1947079 () Bool)

(assert (=> b!7089462 (= e!4261941 tp!1947079)))

(declare-fun b!7089463 () Bool)

(declare-fun tp_is_empty!44783 () Bool)

(assert (=> b!7089463 (= e!4261940 tp_is_empty!44783)))

(declare-fun b!7089464 () Bool)

(declare-fun e!4261938 () Bool)

(assert (=> b!7089464 (= e!4261939 e!4261938)))

(declare-fun res!2895543 () Bool)

(assert (=> b!7089464 (=> (not res!2895543) (not e!4261938))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2555647 () (InoxSet Context!13542))

(declare-fun lt!2555637 () (InoxSet Context!13542))

(declare-fun lt!2555635 () (InoxSet Context!13542))

(assert (=> b!7089464 (= res!2895543 (= lt!2555647 ((_ map or) lt!2555635 lt!2555637)))))

(declare-fun lt!2555643 () Context!13542)

(declare-fun derivationStepZipperDown!2354 (Regex!17775 Context!13542 C!35820) (InoxSet Context!13542))

(assert (=> b!7089464 (= lt!2555647 (derivationStepZipperDown!2354 r!11554 lt!2555643 a!1901))))

(assert (=> b!7089464 (= lt!2555637 (derivationStepZipperDown!2354 (regTwo!36063 r!11554) lt!2555643 a!1901))))

(assert (=> b!7089464 (= lt!2555635 (derivationStepZipperDown!2354 (regOne!36063 r!11554) lt!2555643 a!1901))))

(declare-fun ++!15948 (List!68738 List!68738) List!68738)

(assert (=> b!7089464 (= lt!2555643 (Context!13543 (++!15948 (exprs!7271 c!9994) (exprs!7271 auxCtx!45))))))

(declare-fun lt!2555642 () Unit!162249)

(assert (=> b!7089464 (= lt!2555642 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun lt!2555644 () Unit!162249)

(assert (=> b!7089464 (= lt!2555644 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun lt!2555650 () Unit!162249)

(assert (=> b!7089464 (= lt!2555650 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun b!7089465 () Bool)

(declare-fun tp!1947075 () Bool)

(declare-fun tp!1947077 () Bool)

(assert (=> b!7089465 (= e!4261940 (and tp!1947075 tp!1947077))))

(declare-fun b!7089466 () Bool)

(assert (=> b!7089466 (= e!4261938 (not e!4261942))))

(declare-fun res!2895546 () Bool)

(assert (=> b!7089466 (=> res!2895546 e!4261942)))

(declare-fun appendTo!864 ((InoxSet Context!13542) Context!13542) (InoxSet Context!13542))

(assert (=> b!7089466 (= res!2895546 (not (= lt!2555647 (appendTo!864 (derivationStepZipperDown!2354 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2555649 () Unit!162249)

(assert (=> b!7089466 (= lt!2555649 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun lt!2555638 () (InoxSet Context!13542))

(declare-fun lambda!429634 () Int)

(declare-fun lt!2555641 () (InoxSet Context!13542))

(declare-fun map!16131 ((InoxSet Context!13542) Int) (InoxSet Context!13542))

(assert (=> b!7089466 (= ((_ map or) (map!16131 lt!2555638 lambda!429634) (map!16131 lt!2555641 lambda!429634)) (map!16131 ((_ map or) lt!2555638 lt!2555641) lambda!429634))))

(declare-fun lt!2555648 () Unit!162249)

(declare-fun lemmaMapAssociative!12 ((InoxSet Context!13542) (InoxSet Context!13542) Int) Unit!162249)

(assert (=> b!7089466 (= lt!2555648 (lemmaMapAssociative!12 lt!2555638 lt!2555641 lambda!429634))))

(assert (=> b!7089466 (= lt!2555637 (appendTo!864 lt!2555641 auxCtx!45))))

(assert (=> b!7089466 (= lt!2555641 (derivationStepZipperDown!2354 (regTwo!36063 r!11554) c!9994 a!1901))))

(declare-fun lt!2555645 () Unit!162249)

(assert (=> b!7089466 (= lt!2555645 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun lt!2555639 () Unit!162249)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!172 (Context!13542 Regex!17775 C!35820 Context!13542) Unit!162249)

(assert (=> b!7089466 (= lt!2555639 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!172 c!9994 (regTwo!36063 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7089466 (= lt!2555635 (appendTo!864 lt!2555638 auxCtx!45))))

(assert (=> b!7089466 (= lt!2555638 (derivationStepZipperDown!2354 (regOne!36063 r!11554) c!9994 a!1901))))

(declare-fun lt!2555640 () Unit!162249)

(assert (=> b!7089466 (= lt!2555640 (lemmaConcatPreservesForall!1078 (exprs!7271 c!9994) (exprs!7271 auxCtx!45) lambda!429635))))

(declare-fun lt!2555636 () Unit!162249)

(assert (=> b!7089466 (= lt!2555636 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!172 c!9994 (regOne!36063 r!11554) a!1901 auxCtx!45))))

(declare-fun res!2895544 () Bool)

(assert (=> start!690056 (=> (not res!2895544) (not e!4261936))))

(declare-fun validRegex!9050 (Regex!17775) Bool)

(assert (=> start!690056 (= res!2895544 (validRegex!9050 r!11554))))

(assert (=> start!690056 e!4261936))

(assert (=> start!690056 e!4261940))

(declare-fun inv!87302 (Context!13542) Bool)

(assert (=> start!690056 (and (inv!87302 c!9994) e!4261937)))

(assert (=> start!690056 tp_is_empty!44783))

(assert (=> start!690056 (and (inv!87302 auxCtx!45) e!4261941)))

(assert (= (and start!690056 res!2895544) b!7089461))

(assert (= (and b!7089461 res!2895545) b!7089464))

(assert (= (and b!7089464 res!2895543) b!7089466))

(assert (= (and b!7089466 (not res!2895546)) b!7089459))

(assert (= (and start!690056 ((_ is ElementMatch!17775) r!11554)) b!7089463))

(assert (= (and start!690056 ((_ is Concat!26620) r!11554)) b!7089465))

(assert (= (and start!690056 ((_ is Star!17775) r!11554)) b!7089460))

(assert (= (and start!690056 ((_ is Union!17775) r!11554)) b!7089457))

(assert (= start!690056 b!7089458))

(assert (= start!690056 b!7089462))

(declare-fun m!7819232 () Bool)

(assert (=> b!7089459 m!7819232))

(assert (=> b!7089464 m!7819232))

(declare-fun m!7819234 () Bool)

(assert (=> b!7089464 m!7819234))

(assert (=> b!7089464 m!7819232))

(assert (=> b!7089464 m!7819232))

(declare-fun m!7819236 () Bool)

(assert (=> b!7089464 m!7819236))

(declare-fun m!7819238 () Bool)

(assert (=> b!7089464 m!7819238))

(declare-fun m!7819240 () Bool)

(assert (=> b!7089464 m!7819240))

(declare-fun m!7819242 () Bool)

(assert (=> b!7089466 m!7819242))

(declare-fun m!7819244 () Bool)

(assert (=> b!7089466 m!7819244))

(assert (=> b!7089466 m!7819232))

(declare-fun m!7819246 () Bool)

(assert (=> b!7089466 m!7819246))

(assert (=> b!7089466 m!7819232))

(declare-fun m!7819248 () Bool)

(assert (=> b!7089466 m!7819248))

(declare-fun m!7819250 () Bool)

(assert (=> b!7089466 m!7819250))

(declare-fun m!7819252 () Bool)

(assert (=> b!7089466 m!7819252))

(declare-fun m!7819254 () Bool)

(assert (=> b!7089466 m!7819254))

(assert (=> b!7089466 m!7819232))

(declare-fun m!7819256 () Bool)

(assert (=> b!7089466 m!7819256))

(declare-fun m!7819258 () Bool)

(assert (=> b!7089466 m!7819258))

(assert (=> b!7089466 m!7819252))

(declare-fun m!7819260 () Bool)

(assert (=> b!7089466 m!7819260))

(declare-fun m!7819262 () Bool)

(assert (=> b!7089466 m!7819262))

(declare-fun m!7819264 () Bool)

(assert (=> b!7089466 m!7819264))

(declare-fun m!7819266 () Bool)

(assert (=> start!690056 m!7819266))

(declare-fun m!7819268 () Bool)

(assert (=> start!690056 m!7819268))

(declare-fun m!7819270 () Bool)

(assert (=> start!690056 m!7819270))

(check-sat (not b!7089459) (not b!7089464) (not b!7089466) (not b!7089460) (not b!7089462) (not b!7089457) (not b!7089458) (not b!7089465) (not start!690056) tp_is_empty!44783)
(check-sat)
