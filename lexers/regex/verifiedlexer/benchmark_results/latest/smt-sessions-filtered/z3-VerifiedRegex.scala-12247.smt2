; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689644 () Bool)

(assert start!689644)

(declare-fun b!7085282 () Bool)

(assert (=> b!7085282 true))

(declare-fun b!7085278 () Bool)

(declare-fun e!4259633 () Bool)

(declare-fun tp!1945082 () Bool)

(assert (=> b!7085278 (= e!4259633 tp!1945082)))

(declare-fun res!2894417 () Bool)

(declare-fun e!4259631 () Bool)

(assert (=> start!689644 (=> (not res!2894417) (not e!4259631))))

(declare-datatypes ((C!35744 0))(
  ( (C!35745 (val!27578 Int)) )
))
(declare-datatypes ((Regex!17737 0))(
  ( (ElementMatch!17737 (c!1322428 C!35744)) (Concat!26582 (regOne!35986 Regex!17737) (regTwo!35986 Regex!17737)) (EmptyExpr!17737) (Star!17737 (reg!18066 Regex!17737)) (EmptyLang!17737) (Union!17737 (regOne!35987 Regex!17737) (regTwo!35987 Regex!17737)) )
))
(declare-fun r!11554 () Regex!17737)

(declare-fun validRegex!9012 (Regex!17737) Bool)

(assert (=> start!689644 (= res!2894417 (validRegex!9012 r!11554))))

(assert (=> start!689644 e!4259631))

(assert (=> start!689644 e!4259633))

(declare-datatypes ((List!68700 0))(
  ( (Nil!68576) (Cons!68576 (h!75024 Regex!17737) (t!382485 List!68700)) )
))
(declare-datatypes ((Context!13466 0))(
  ( (Context!13467 (exprs!7233 List!68700)) )
))
(declare-fun c!9994 () Context!13466)

(declare-fun e!4259630 () Bool)

(declare-fun inv!87207 (Context!13466) Bool)

(assert (=> start!689644 (and (inv!87207 c!9994) e!4259630)))

(declare-fun tp_is_empty!44707 () Bool)

(assert (=> start!689644 tp_is_empty!44707))

(declare-fun auxCtx!45 () Context!13466)

(declare-fun e!4259629 () Bool)

(assert (=> start!689644 (and (inv!87207 auxCtx!45) e!4259629)))

(declare-fun b!7085279 () Bool)

(declare-fun tp!1945087 () Bool)

(declare-fun tp!1945088 () Bool)

(assert (=> b!7085279 (= e!4259633 (and tp!1945087 tp!1945088))))

(declare-fun b!7085280 () Bool)

(declare-fun e!4259634 () Bool)

(assert (=> b!7085280 (= e!4259634 true)))

(declare-datatypes ((Unit!162181 0))(
  ( (Unit!162182) )
))
(declare-fun lt!2554550 () Unit!162181)

(declare-fun lambda!428995 () Int)

(declare-fun lemmaConcatPreservesForall!1044 (List!68700 List!68700 Int) Unit!162181)

(assert (=> b!7085280 (= lt!2554550 (lemmaConcatPreservesForall!1044 (exprs!7233 c!9994) (exprs!7233 auxCtx!45) lambda!428995))))

(declare-fun b!7085281 () Bool)

(declare-fun tp!1945084 () Bool)

(assert (=> b!7085281 (= e!4259629 tp!1945084)))

(declare-fun e!4259632 () Bool)

(assert (=> b!7085282 (= e!4259631 e!4259632)))

(declare-fun res!2894416 () Bool)

(assert (=> b!7085282 (=> (not res!2894416) (not e!4259632))))

(declare-fun a!1901 () C!35744)

(get-info :version)

(assert (=> b!7085282 (= res!2894416 (and ((_ is ElementMatch!17737) r!11554) (= (c!1322428 r!11554) a!1901)))))

(declare-fun b!7085283 () Bool)

(declare-fun tp!1945085 () Bool)

(declare-fun tp!1945086 () Bool)

(assert (=> b!7085283 (= e!4259633 (and tp!1945085 tp!1945086))))

(declare-fun b!7085284 () Bool)

(assert (=> b!7085284 (= e!4259632 (not e!4259634))))

(declare-fun res!2894418 () Bool)

(assert (=> b!7085284 (=> res!2894418 e!4259634)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2334 (Regex!17737 Context!13466 C!35744) (InoxSet Context!13466))

(declare-fun ++!15914 (List!68700 List!68700) List!68700)

(declare-fun appendTo!846 ((InoxSet Context!13466) Context!13466) (InoxSet Context!13466))

(assert (=> b!7085284 (= res!2894418 (not (= (derivationStepZipperDown!2334 r!11554 (Context!13467 (++!15914 (exprs!7233 c!9994) (exprs!7233 auxCtx!45))) a!1901) (appendTo!846 (derivationStepZipperDown!2334 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2554552 () Unit!162181)

(assert (=> b!7085284 (= lt!2554552 (lemmaConcatPreservesForall!1044 (exprs!7233 c!9994) (exprs!7233 auxCtx!45) lambda!428995))))

(declare-fun lt!2554549 () (InoxSet Context!13466))

(declare-fun lambda!428994 () Int)

(declare-fun map!16096 ((InoxSet Context!13466) Int) (InoxSet Context!13466))

(assert (=> b!7085284 (= (map!16096 lt!2554549 lambda!428994) (store ((as const (Array Context!13466 Bool)) false) (Context!13467 (++!15914 (exprs!7233 c!9994) (exprs!7233 auxCtx!45))) true))))

(declare-fun lt!2554548 () Unit!162181)

(assert (=> b!7085284 (= lt!2554548 (lemmaConcatPreservesForall!1044 (exprs!7233 c!9994) (exprs!7233 auxCtx!45) lambda!428995))))

(declare-fun lt!2554551 () Unit!162181)

(declare-fun lemmaMapOnSingletonSet!450 ((InoxSet Context!13466) Context!13466 Int) Unit!162181)

(assert (=> b!7085284 (= lt!2554551 (lemmaMapOnSingletonSet!450 lt!2554549 c!9994 lambda!428994))))

(assert (=> b!7085284 (= lt!2554549 (store ((as const (Array Context!13466 Bool)) false) c!9994 true))))

(declare-fun b!7085285 () Bool)

(declare-fun tp!1945083 () Bool)

(assert (=> b!7085285 (= e!4259630 tp!1945083)))

(declare-fun b!7085286 () Bool)

(assert (=> b!7085286 (= e!4259633 tp_is_empty!44707)))

(assert (= (and start!689644 res!2894417) b!7085282))

(assert (= (and b!7085282 res!2894416) b!7085284))

(assert (= (and b!7085284 (not res!2894418)) b!7085280))

(assert (= (and start!689644 ((_ is ElementMatch!17737) r!11554)) b!7085286))

(assert (= (and start!689644 ((_ is Concat!26582) r!11554)) b!7085283))

(assert (= (and start!689644 ((_ is Star!17737) r!11554)) b!7085278))

(assert (= (and start!689644 ((_ is Union!17737) r!11554)) b!7085279))

(assert (= start!689644 b!7085285))

(assert (= start!689644 b!7085281))

(declare-fun m!7816688 () Bool)

(assert (=> start!689644 m!7816688))

(declare-fun m!7816690 () Bool)

(assert (=> start!689644 m!7816690))

(declare-fun m!7816692 () Bool)

(assert (=> start!689644 m!7816692))

(declare-fun m!7816694 () Bool)

(assert (=> b!7085280 m!7816694))

(assert (=> b!7085284 m!7816694))

(declare-fun m!7816696 () Bool)

(assert (=> b!7085284 m!7816696))

(declare-fun m!7816698 () Bool)

(assert (=> b!7085284 m!7816698))

(declare-fun m!7816700 () Bool)

(assert (=> b!7085284 m!7816700))

(declare-fun m!7816702 () Bool)

(assert (=> b!7085284 m!7816702))

(assert (=> b!7085284 m!7816696))

(declare-fun m!7816704 () Bool)

(assert (=> b!7085284 m!7816704))

(declare-fun m!7816706 () Bool)

(assert (=> b!7085284 m!7816706))

(declare-fun m!7816708 () Bool)

(assert (=> b!7085284 m!7816708))

(declare-fun m!7816710 () Bool)

(assert (=> b!7085284 m!7816710))

(assert (=> b!7085284 m!7816694))

(check-sat (not start!689644) (not b!7085284) (not b!7085280) (not b!7085281) (not b!7085283) (not b!7085285) (not b!7085278) tp_is_empty!44707 (not b!7085279))
(check-sat)
