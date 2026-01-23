; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689808 () Bool)

(assert start!689808)

(declare-fun b!7087006 () Bool)

(declare-fun e!4260568 () Bool)

(declare-fun tp!1946228 () Bool)

(declare-fun tp!1946223 () Bool)

(assert (=> b!7087006 (= e!4260568 (and tp!1946228 tp!1946223))))

(declare-fun b!7087007 () Bool)

(declare-fun tp!1946225 () Bool)

(declare-fun tp!1946227 () Bool)

(assert (=> b!7087007 (= e!4260568 (and tp!1946225 tp!1946227))))

(declare-fun b!7087008 () Bool)

(declare-fun tp_is_empty!44751 () Bool)

(assert (=> b!7087008 (= e!4260568 tp_is_empty!44751)))

(declare-fun b!7087009 () Bool)

(declare-fun e!4260565 () Bool)

(assert (=> b!7087009 (= e!4260565 (not true))))

(declare-datatypes ((C!35788 0))(
  ( (C!35789 (val!27600 Int)) )
))
(declare-datatypes ((Regex!17759 0))(
  ( (ElementMatch!17759 (c!1322566 C!35788)) (Concat!26604 (regOne!36030 Regex!17759) (regTwo!36030 Regex!17759)) (EmptyExpr!17759) (Star!17759 (reg!18088 Regex!17759)) (EmptyLang!17759) (Union!17759 (regOne!36031 Regex!17759) (regTwo!36031 Regex!17759)) )
))
(declare-datatypes ((List!68722 0))(
  ( (Nil!68598) (Cons!68598 (h!75046 Regex!17759) (t!382507 List!68722)) )
))
(declare-datatypes ((Context!13510 0))(
  ( (Context!13511 (exprs!7255 List!68722)) )
))
(declare-fun c!9994 () Context!13510)

(declare-fun a!1901 () C!35788)

(declare-fun r!11554 () Regex!17759)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2554770 () (InoxSet Context!13510))

(declare-fun auxCtx!45 () Context!13510)

(declare-fun appendTo!848 ((InoxSet Context!13510) Context!13510) (InoxSet Context!13510))

(declare-fun derivationStepZipperDown!2338 (Regex!17759 Context!13510 C!35788) (InoxSet Context!13510))

(assert (=> b!7087009 (= lt!2554770 (appendTo!848 (derivationStepZipperDown!2338 (regOne!36031 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162217 0))(
  ( (Unit!162218) )
))
(declare-fun lt!2554772 () Unit!162217)

(declare-fun lambda!429191 () Int)

(declare-fun lemmaConcatPreservesForall!1062 (List!68722 List!68722 Int) Unit!162217)

(assert (=> b!7087009 (= lt!2554772 (lemmaConcatPreservesForall!1062 (exprs!7255 c!9994) (exprs!7255 auxCtx!45) lambda!429191))))

(declare-fun lt!2554769 () Unit!162217)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!156 (Context!13510 Regex!17759 C!35788 Context!13510) Unit!162217)

(assert (=> b!7087009 (= lt!2554769 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!156 c!9994 (regOne!36031 r!11554) a!1901 auxCtx!45))))

(declare-fun res!2894948 () Bool)

(declare-fun e!4260567 () Bool)

(assert (=> start!689808 (=> (not res!2894948) (not e!4260567))))

(declare-fun validRegex!9034 (Regex!17759) Bool)

(assert (=> start!689808 (= res!2894948 (validRegex!9034 r!11554))))

(assert (=> start!689808 e!4260567))

(assert (=> start!689808 e!4260568))

(assert (=> start!689808 tp_is_empty!44751))

(declare-fun e!4260566 () Bool)

(declare-fun inv!87262 (Context!13510) Bool)

(assert (=> start!689808 (and (inv!87262 c!9994) e!4260566)))

(declare-fun e!4260564 () Bool)

(assert (=> start!689808 (and (inv!87262 auxCtx!45) e!4260564)))

(declare-fun b!7087010 () Bool)

(assert (=> b!7087010 (= e!4260567 e!4260565)))

(declare-fun res!2894947 () Bool)

(assert (=> b!7087010 (=> (not res!2894947) (not e!4260565))))

(declare-fun lt!2554773 () Context!13510)

(assert (=> b!7087010 (= res!2894947 (= (derivationStepZipperDown!2338 r!11554 lt!2554773 a!1901) ((_ map or) lt!2554770 (derivationStepZipperDown!2338 (regTwo!36031 r!11554) lt!2554773 a!1901))))))

(assert (=> b!7087010 (= lt!2554770 (derivationStepZipperDown!2338 (regOne!36031 r!11554) lt!2554773 a!1901))))

(declare-fun ++!15932 (List!68722 List!68722) List!68722)

(assert (=> b!7087010 (= lt!2554773 (Context!13511 (++!15932 (exprs!7255 c!9994) (exprs!7255 auxCtx!45))))))

(declare-fun lt!2554771 () Unit!162217)

(assert (=> b!7087010 (= lt!2554771 (lemmaConcatPreservesForall!1062 (exprs!7255 c!9994) (exprs!7255 auxCtx!45) lambda!429191))))

(declare-fun lt!2554774 () Unit!162217)

(assert (=> b!7087010 (= lt!2554774 (lemmaConcatPreservesForall!1062 (exprs!7255 c!9994) (exprs!7255 auxCtx!45) lambda!429191))))

(declare-fun lt!2554768 () Unit!162217)

(assert (=> b!7087010 (= lt!2554768 (lemmaConcatPreservesForall!1062 (exprs!7255 c!9994) (exprs!7255 auxCtx!45) lambda!429191))))

(declare-fun b!7087011 () Bool)

(declare-fun tp!1946226 () Bool)

(assert (=> b!7087011 (= e!4260566 tp!1946226)))

(declare-fun b!7087012 () Bool)

(declare-fun tp!1946224 () Bool)

(assert (=> b!7087012 (= e!4260568 tp!1946224)))

(declare-fun b!7087013 () Bool)

(declare-fun tp!1946222 () Bool)

(assert (=> b!7087013 (= e!4260564 tp!1946222)))

(declare-fun b!7087014 () Bool)

(declare-fun res!2894946 () Bool)

(assert (=> b!7087014 (=> (not res!2894946) (not e!4260567))))

(get-info :version)

(assert (=> b!7087014 (= res!2894946 (and (or (not ((_ is ElementMatch!17759) r!11554)) (not (= (c!1322566 r!11554) a!1901))) ((_ is Union!17759) r!11554)))))

(assert (= (and start!689808 res!2894948) b!7087014))

(assert (= (and b!7087014 res!2894946) b!7087010))

(assert (= (and b!7087010 res!2894947) b!7087009))

(assert (= (and start!689808 ((_ is ElementMatch!17759) r!11554)) b!7087008))

(assert (= (and start!689808 ((_ is Concat!26604) r!11554)) b!7087006))

(assert (= (and start!689808 ((_ is Star!17759) r!11554)) b!7087012))

(assert (= (and start!689808 ((_ is Union!17759) r!11554)) b!7087007))

(assert (= start!689808 b!7087011))

(assert (= start!689808 b!7087013))

(declare-fun m!7817370 () Bool)

(assert (=> b!7087009 m!7817370))

(assert (=> b!7087009 m!7817370))

(declare-fun m!7817372 () Bool)

(assert (=> b!7087009 m!7817372))

(declare-fun m!7817374 () Bool)

(assert (=> b!7087009 m!7817374))

(declare-fun m!7817376 () Bool)

(assert (=> b!7087009 m!7817376))

(declare-fun m!7817378 () Bool)

(assert (=> start!689808 m!7817378))

(declare-fun m!7817380 () Bool)

(assert (=> start!689808 m!7817380))

(declare-fun m!7817382 () Bool)

(assert (=> start!689808 m!7817382))

(assert (=> b!7087010 m!7817374))

(declare-fun m!7817384 () Bool)

(assert (=> b!7087010 m!7817384))

(declare-fun m!7817386 () Bool)

(assert (=> b!7087010 m!7817386))

(assert (=> b!7087010 m!7817374))

(declare-fun m!7817388 () Bool)

(assert (=> b!7087010 m!7817388))

(declare-fun m!7817390 () Bool)

(assert (=> b!7087010 m!7817390))

(assert (=> b!7087010 m!7817374))

(check-sat (not b!7087012) (not b!7087007) (not b!7087013) (not b!7087006) (not b!7087010) (not start!689808) tp_is_empty!44751 (not b!7087009) (not b!7087011))
(check-sat)
