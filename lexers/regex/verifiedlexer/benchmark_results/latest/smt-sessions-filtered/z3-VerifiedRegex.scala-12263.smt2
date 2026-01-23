; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689964 () Bool)

(assert start!689964)

(declare-fun b!7088580 () Bool)

(assert (=> b!7088580 true))

(declare-fun e!4261438 () Bool)

(declare-fun e!4261436 () Bool)

(assert (=> b!7088580 (= e!4261438 e!4261436)))

(declare-fun res!2895319 () Bool)

(assert (=> b!7088580 (=> (not res!2895319) (not e!4261436))))

(declare-datatypes ((C!35808 0))(
  ( (C!35809 (val!27610 Int)) )
))
(declare-datatypes ((Regex!17769 0))(
  ( (ElementMatch!17769 (c!1322952 C!35808)) (Concat!26614 (regOne!36050 Regex!17769) (regTwo!36050 Regex!17769)) (EmptyExpr!17769) (Star!17769 (reg!18098 Regex!17769)) (EmptyLang!17769) (Union!17769 (regOne!36051 Regex!17769) (regTwo!36051 Regex!17769)) )
))
(declare-fun r!11554 () Regex!17769)

(declare-fun a!1901 () C!35808)

(get-info :version)

(assert (=> b!7088580 (= res!2895319 (and (or (not ((_ is ElementMatch!17769) r!11554)) (not (= (c!1322952 r!11554) a!1901))) ((_ is Union!17769) r!11554)))))

(declare-fun b!7088581 () Bool)

(declare-fun e!4261437 () Bool)

(declare-fun tp!1946777 () Bool)

(assert (=> b!7088581 (= e!4261437 tp!1946777)))

(declare-fun b!7088582 () Bool)

(declare-fun e!4261435 () Bool)

(declare-fun tp!1946781 () Bool)

(assert (=> b!7088582 (= e!4261435 tp!1946781)))

(declare-fun b!7088583 () Bool)

(declare-fun e!4261433 () Bool)

(assert (=> b!7088583 (= e!4261436 e!4261433)))

(declare-fun res!2895320 () Bool)

(assert (=> b!7088583 (=> (not res!2895320) (not e!4261433))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!68732 0))(
  ( (Nil!68608) (Cons!68608 (h!75056 Regex!17769) (t!382517 List!68732)) )
))
(declare-datatypes ((Context!13530 0))(
  ( (Context!13531 (exprs!7265 List!68732)) )
))
(declare-fun lt!2555274 () (InoxSet Context!13530))

(declare-fun lt!2555281 () Context!13530)

(declare-fun lt!2555283 () (InoxSet Context!13530))

(declare-fun derivationStepZipperDown!2348 (Regex!17769 Context!13530 C!35808) (InoxSet Context!13530))

(assert (=> b!7088583 (= res!2895320 (= (derivationStepZipperDown!2348 r!11554 lt!2555281 a!1901) ((_ map or) lt!2555274 lt!2555283)))))

(assert (=> b!7088583 (= lt!2555283 (derivationStepZipperDown!2348 (regTwo!36051 r!11554) lt!2555281 a!1901))))

(assert (=> b!7088583 (= lt!2555274 (derivationStepZipperDown!2348 (regOne!36051 r!11554) lt!2555281 a!1901))))

(declare-fun c!9994 () Context!13530)

(declare-fun auxCtx!45 () Context!13530)

(declare-fun ++!15942 (List!68732 List!68732) List!68732)

(assert (=> b!7088583 (= lt!2555281 (Context!13531 (++!15942 (exprs!7265 c!9994) (exprs!7265 auxCtx!45))))))

(declare-fun lambda!429455 () Int)

(declare-datatypes ((Unit!162237 0))(
  ( (Unit!162238) )
))
(declare-fun lt!2555277 () Unit!162237)

(declare-fun lemmaConcatPreservesForall!1072 (List!68732 List!68732 Int) Unit!162237)

(assert (=> b!7088583 (= lt!2555277 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun lt!2555286 () Unit!162237)

(assert (=> b!7088583 (= lt!2555286 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun lt!2555278 () Unit!162237)

(assert (=> b!7088583 (= lt!2555278 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun b!7088584 () Bool)

(declare-fun tp!1946778 () Bool)

(declare-fun tp!1946779 () Bool)

(assert (=> b!7088584 (= e!4261435 (and tp!1946778 tp!1946779))))

(declare-fun b!7088585 () Bool)

(declare-fun tp_is_empty!44771 () Bool)

(assert (=> b!7088585 (= e!4261435 tp_is_empty!44771)))

(declare-fun b!7088586 () Bool)

(declare-fun tp!1946780 () Bool)

(declare-fun tp!1946776 () Bool)

(assert (=> b!7088586 (= e!4261435 (and tp!1946780 tp!1946776))))

(declare-fun b!7088587 () Bool)

(assert (=> b!7088587 (= e!4261433 (not true))))

(declare-fun lt!2555285 () Unit!162237)

(assert (=> b!7088587 (= lt!2555285 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun lt!2555275 () (InoxSet Context!13530))

(declare-fun lambda!429454 () Int)

(declare-fun lt!2555276 () (InoxSet Context!13530))

(declare-fun map!16122 ((InoxSet Context!13530) Int) (InoxSet Context!13530))

(assert (=> b!7088587 (= ((_ map or) (map!16122 lt!2555275 lambda!429454) (map!16122 lt!2555276 lambda!429454)) (map!16122 ((_ map or) lt!2555275 lt!2555276) lambda!429454))))

(declare-fun lt!2555280 () Unit!162237)

(declare-fun lemmaMapAssociative!6 ((InoxSet Context!13530) (InoxSet Context!13530) Int) Unit!162237)

(assert (=> b!7088587 (= lt!2555280 (lemmaMapAssociative!6 lt!2555275 lt!2555276 lambda!429454))))

(declare-fun appendTo!858 ((InoxSet Context!13530) Context!13530) (InoxSet Context!13530))

(assert (=> b!7088587 (= lt!2555283 (appendTo!858 lt!2555276 auxCtx!45))))

(assert (=> b!7088587 (= lt!2555276 (derivationStepZipperDown!2348 (regTwo!36051 r!11554) c!9994 a!1901))))

(declare-fun lt!2555273 () Unit!162237)

(assert (=> b!7088587 (= lt!2555273 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun lt!2555282 () Unit!162237)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!166 (Context!13530 Regex!17769 C!35808 Context!13530) Unit!162237)

(assert (=> b!7088587 (= lt!2555282 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!166 c!9994 (regTwo!36051 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7088587 (= lt!2555274 (appendTo!858 lt!2555275 auxCtx!45))))

(assert (=> b!7088587 (= lt!2555275 (derivationStepZipperDown!2348 (regOne!36051 r!11554) c!9994 a!1901))))

(declare-fun lt!2555279 () Unit!162237)

(assert (=> b!7088587 (= lt!2555279 (lemmaConcatPreservesForall!1072 (exprs!7265 c!9994) (exprs!7265 auxCtx!45) lambda!429455))))

(declare-fun lt!2555284 () Unit!162237)

(assert (=> b!7088587 (= lt!2555284 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!166 c!9994 (regOne!36051 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7088588 () Bool)

(declare-fun e!4261434 () Bool)

(declare-fun tp!1946782 () Bool)

(assert (=> b!7088588 (= e!4261434 tp!1946782)))

(declare-fun res!2895318 () Bool)

(assert (=> start!689964 (=> (not res!2895318) (not e!4261438))))

(declare-fun validRegex!9044 (Regex!17769) Bool)

(assert (=> start!689964 (= res!2895318 (validRegex!9044 r!11554))))

(assert (=> start!689964 e!4261438))

(assert (=> start!689964 e!4261435))

(declare-fun inv!87287 (Context!13530) Bool)

(assert (=> start!689964 (and (inv!87287 c!9994) e!4261434)))

(assert (=> start!689964 tp_is_empty!44771))

(assert (=> start!689964 (and (inv!87287 auxCtx!45) e!4261437)))

(assert (= (and start!689964 res!2895318) b!7088580))

(assert (= (and b!7088580 res!2895319) b!7088583))

(assert (= (and b!7088583 res!2895320) b!7088587))

(assert (= (and start!689964 ((_ is ElementMatch!17769) r!11554)) b!7088585))

(assert (= (and start!689964 ((_ is Concat!26614) r!11554)) b!7088584))

(assert (= (and start!689964 ((_ is Star!17769) r!11554)) b!7088582))

(assert (= (and start!689964 ((_ is Union!17769) r!11554)) b!7088586))

(assert (= start!689964 b!7088588))

(assert (= start!689964 b!7088581))

(declare-fun m!7818516 () Bool)

(assert (=> b!7088583 m!7818516))

(assert (=> b!7088583 m!7818516))

(declare-fun m!7818518 () Bool)

(assert (=> b!7088583 m!7818518))

(declare-fun m!7818520 () Bool)

(assert (=> b!7088583 m!7818520))

(declare-fun m!7818522 () Bool)

(assert (=> b!7088583 m!7818522))

(assert (=> b!7088583 m!7818516))

(declare-fun m!7818524 () Bool)

(assert (=> b!7088583 m!7818524))

(declare-fun m!7818526 () Bool)

(assert (=> b!7088587 m!7818526))

(declare-fun m!7818528 () Bool)

(assert (=> b!7088587 m!7818528))

(declare-fun m!7818530 () Bool)

(assert (=> b!7088587 m!7818530))

(declare-fun m!7818532 () Bool)

(assert (=> b!7088587 m!7818532))

(declare-fun m!7818534 () Bool)

(assert (=> b!7088587 m!7818534))

(assert (=> b!7088587 m!7818516))

(declare-fun m!7818536 () Bool)

(assert (=> b!7088587 m!7818536))

(assert (=> b!7088587 m!7818516))

(declare-fun m!7818538 () Bool)

(assert (=> b!7088587 m!7818538))

(declare-fun m!7818540 () Bool)

(assert (=> b!7088587 m!7818540))

(declare-fun m!7818542 () Bool)

(assert (=> b!7088587 m!7818542))

(declare-fun m!7818544 () Bool)

(assert (=> b!7088587 m!7818544))

(assert (=> b!7088587 m!7818516))

(declare-fun m!7818546 () Bool)

(assert (=> start!689964 m!7818546))

(declare-fun m!7818548 () Bool)

(assert (=> start!689964 m!7818548))

(declare-fun m!7818550 () Bool)

(assert (=> start!689964 m!7818550))

(check-sat (not b!7088588) (not start!689964) tp_is_empty!44771 (not b!7088586) (not b!7088581) (not b!7088584) (not b!7088582) (not b!7088587) (not b!7088583))
(check-sat)
