; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690280 () Bool)

(assert start!690280)

(declare-fun b!7091618 () Bool)

(declare-fun res!2896265 () Bool)

(declare-fun e!4263081 () Bool)

(assert (=> b!7091618 (=> (not res!2896265) (not e!4263081))))

(declare-datatypes ((C!35868 0))(
  ( (C!35869 (val!27640 Int)) )
))
(declare-datatypes ((Regex!17799 0))(
  ( (ElementMatch!17799 (c!1323408 C!35868)) (Concat!26644 (regOne!36110 Regex!17799) (regTwo!36110 Regex!17799)) (EmptyExpr!17799) (Star!17799 (reg!18128 Regex!17799)) (EmptyLang!17799) (Union!17799 (regOne!36111 Regex!17799) (regTwo!36111 Regex!17799)) )
))
(declare-fun r!11554 () Regex!17799)

(declare-fun nullable!7439 (Regex!17799) Bool)

(assert (=> b!7091618 (= res!2896265 (nullable!7439 (regOne!36110 r!11554)))))

(declare-fun b!7091619 () Bool)

(declare-fun e!4263080 () Bool)

(declare-fun tp!1948260 () Bool)

(declare-fun tp!1948259 () Bool)

(assert (=> b!7091619 (= e!4263080 (and tp!1948260 tp!1948259))))

(declare-fun b!7091620 () Bool)

(declare-fun e!4263077 () Bool)

(assert (=> b!7091620 (= e!4263077 (not true))))

(declare-datatypes ((List!68762 0))(
  ( (Nil!68638) (Cons!68638 (h!75086 Regex!17799) (t!382549 List!68762)) )
))
(declare-datatypes ((Context!13590 0))(
  ( (Context!13591 (exprs!7295 List!68762)) )
))
(declare-fun c!9994 () Context!13590)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2556060 () (InoxSet Context!13590))

(declare-fun a!1901 () C!35868)

(declare-fun auxCtx!45 () Context!13590)

(declare-fun appendTo!870 ((InoxSet Context!13590) Context!13590) (InoxSet Context!13590))

(declare-fun derivationStepZipperDown!2362 (Regex!17799 Context!13590 C!35868) (InoxSet Context!13590))

(assert (=> b!7091620 (= lt!2556060 (appendTo!870 (derivationStepZipperDown!2362 (regTwo!36110 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lambda!429881 () Int)

(declare-datatypes ((Unit!162289 0))(
  ( (Unit!162290) )
))
(declare-fun lt!2556070 () Unit!162289)

(declare-fun lemmaConcatPreservesForall!1098 (List!68762 List!68762 Int) Unit!162289)

(assert (=> b!7091620 (= lt!2556070 (lemmaConcatPreservesForall!1098 (exprs!7295 c!9994) (exprs!7295 auxCtx!45) lambda!429881))))

(declare-fun lt!2556058 () Unit!162289)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!178 (Context!13590 Regex!17799 C!35868 Context!13590) Unit!162289)

(assert (=> b!7091620 (= lt!2556058 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!178 c!9994 (regTwo!36110 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556062 () List!68762)

(declare-fun lt!2556059 () Context!13590)

(declare-fun ++!15968 (List!68762 List!68762) List!68762)

(assert (=> b!7091620 (= (derivationStepZipperDown!2362 (regOne!36110 r!11554) (Context!13591 (++!15968 lt!2556062 (exprs!7295 auxCtx!45))) a!1901) (appendTo!870 (derivationStepZipperDown!2362 (regOne!36110 r!11554) lt!2556059 a!1901) auxCtx!45))))

(declare-fun lt!2556069 () Unit!162289)

(assert (=> b!7091620 (= lt!2556069 (lemmaConcatPreservesForall!1098 lt!2556062 (exprs!7295 auxCtx!45) lambda!429881))))

(declare-fun lt!2556061 () Unit!162289)

(assert (=> b!7091620 (= lt!2556061 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!178 lt!2556059 (regOne!36110 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7091620 (= lt!2556059 (Context!13591 lt!2556062))))

(declare-fun $colon$colon!2706 (List!68762 Regex!17799) List!68762)

(assert (=> b!7091620 (= lt!2556062 ($colon$colon!2706 (exprs!7295 c!9994) (regTwo!36110 r!11554)))))

(declare-fun b!7091621 () Bool)

(declare-fun e!4263079 () Bool)

(declare-fun tp!1948257 () Bool)

(assert (=> b!7091621 (= e!4263079 tp!1948257)))

(declare-fun b!7091622 () Bool)

(declare-fun e!4263082 () Bool)

(declare-fun tp!1948261 () Bool)

(assert (=> b!7091622 (= e!4263082 tp!1948261)))

(declare-fun b!7091623 () Bool)

(declare-fun res!2896264 () Bool)

(assert (=> b!7091623 (=> (not res!2896264) (not e!4263081))))

(get-info :version)

(assert (=> b!7091623 (= res!2896264 (and (or (not ((_ is ElementMatch!17799) r!11554)) (not (= (c!1323408 r!11554) a!1901))) (not ((_ is Union!17799) r!11554)) ((_ is Concat!26644) r!11554)))))

(declare-fun b!7091624 () Bool)

(declare-fun tp_is_empty!44831 () Bool)

(assert (=> b!7091624 (= e!4263080 tp_is_empty!44831)))

(declare-fun res!2896263 () Bool)

(assert (=> start!690280 (=> (not res!2896263) (not e!4263081))))

(declare-fun validRegex!9074 (Regex!17799) Bool)

(assert (=> start!690280 (= res!2896263 (validRegex!9074 r!11554))))

(assert (=> start!690280 e!4263081))

(assert (=> start!690280 e!4263080))

(assert (=> start!690280 tp_is_empty!44831))

(declare-fun inv!87362 (Context!13590) Bool)

(assert (=> start!690280 (and (inv!87362 c!9994) e!4263079)))

(assert (=> start!690280 (and (inv!87362 auxCtx!45) e!4263082)))

(declare-fun b!7091625 () Bool)

(declare-fun e!4263078 () Bool)

(assert (=> b!7091625 (= e!4263078 e!4263077)))

(declare-fun res!2896262 () Bool)

(assert (=> b!7091625 (=> (not res!2896262) (not e!4263077))))

(declare-fun lt!2556068 () (InoxSet Context!13590))

(declare-fun lt!2556067 () Context!13590)

(assert (=> b!7091625 (= res!2896262 (= (derivationStepZipperDown!2362 r!11554 lt!2556067 a!1901) ((_ map or) lt!2556068 lt!2556060)))))

(assert (=> b!7091625 (= lt!2556060 (derivationStepZipperDown!2362 (regTwo!36110 r!11554) lt!2556067 a!1901))))

(declare-fun lt!2556065 () List!68762)

(assert (=> b!7091625 (= lt!2556068 (derivationStepZipperDown!2362 (regOne!36110 r!11554) (Context!13591 ($colon$colon!2706 lt!2556065 (regTwo!36110 r!11554))) a!1901))))

(declare-fun b!7091626 () Bool)

(declare-fun tp!1948258 () Bool)

(declare-fun tp!1948262 () Bool)

(assert (=> b!7091626 (= e!4263080 (and tp!1948258 tp!1948262))))

(declare-fun b!7091627 () Bool)

(assert (=> b!7091627 (= e!4263081 e!4263078)))

(declare-fun res!2896266 () Bool)

(assert (=> b!7091627 (=> (not res!2896266) (not e!4263078))))

(assert (=> b!7091627 (= res!2896266 (validRegex!9074 (regTwo!36110 r!11554)))))

(declare-fun lt!2556064 () Unit!162289)

(assert (=> b!7091627 (= lt!2556064 (lemmaConcatPreservesForall!1098 (exprs!7295 c!9994) (exprs!7295 auxCtx!45) lambda!429881))))

(assert (=> b!7091627 (= lt!2556067 (Context!13591 lt!2556065))))

(assert (=> b!7091627 (= lt!2556065 (++!15968 (exprs!7295 c!9994) (exprs!7295 auxCtx!45)))))

(declare-fun lt!2556063 () Unit!162289)

(assert (=> b!7091627 (= lt!2556063 (lemmaConcatPreservesForall!1098 (exprs!7295 c!9994) (exprs!7295 auxCtx!45) lambda!429881))))

(declare-fun lt!2556066 () Unit!162289)

(assert (=> b!7091627 (= lt!2556066 (lemmaConcatPreservesForall!1098 (exprs!7295 c!9994) (exprs!7295 auxCtx!45) lambda!429881))))

(declare-fun b!7091628 () Bool)

(declare-fun tp!1948256 () Bool)

(assert (=> b!7091628 (= e!4263080 tp!1948256)))

(assert (= (and start!690280 res!2896263) b!7091623))

(assert (= (and b!7091623 res!2896264) b!7091618))

(assert (= (and b!7091618 res!2896265) b!7091627))

(assert (= (and b!7091627 res!2896266) b!7091625))

(assert (= (and b!7091625 res!2896262) b!7091620))

(assert (= (and start!690280 ((_ is ElementMatch!17799) r!11554)) b!7091624))

(assert (= (and start!690280 ((_ is Concat!26644) r!11554)) b!7091626))

(assert (= (and start!690280 ((_ is Star!17799) r!11554)) b!7091628))

(assert (= (and start!690280 ((_ is Union!17799) r!11554)) b!7091619))

(assert (= start!690280 b!7091621))

(assert (= start!690280 b!7091622))

(declare-fun m!7820414 () Bool)

(assert (=> b!7091625 m!7820414))

(declare-fun m!7820416 () Bool)

(assert (=> b!7091625 m!7820416))

(declare-fun m!7820418 () Bool)

(assert (=> b!7091625 m!7820418))

(declare-fun m!7820420 () Bool)

(assert (=> b!7091625 m!7820420))

(declare-fun m!7820422 () Bool)

(assert (=> b!7091627 m!7820422))

(assert (=> b!7091627 m!7820422))

(declare-fun m!7820424 () Bool)

(assert (=> b!7091627 m!7820424))

(declare-fun m!7820426 () Bool)

(assert (=> b!7091627 m!7820426))

(assert (=> b!7091627 m!7820422))

(declare-fun m!7820428 () Bool)

(assert (=> b!7091618 m!7820428))

(declare-fun m!7820430 () Bool)

(assert (=> b!7091620 m!7820430))

(assert (=> b!7091620 m!7820422))

(declare-fun m!7820432 () Bool)

(assert (=> b!7091620 m!7820432))

(declare-fun m!7820434 () Bool)

(assert (=> b!7091620 m!7820434))

(declare-fun m!7820436 () Bool)

(assert (=> b!7091620 m!7820436))

(declare-fun m!7820438 () Bool)

(assert (=> b!7091620 m!7820438))

(declare-fun m!7820440 () Bool)

(assert (=> b!7091620 m!7820440))

(declare-fun m!7820442 () Bool)

(assert (=> b!7091620 m!7820442))

(assert (=> b!7091620 m!7820432))

(declare-fun m!7820444 () Bool)

(assert (=> b!7091620 m!7820444))

(assert (=> b!7091620 m!7820436))

(declare-fun m!7820446 () Bool)

(assert (=> b!7091620 m!7820446))

(declare-fun m!7820448 () Bool)

(assert (=> b!7091620 m!7820448))

(declare-fun m!7820450 () Bool)

(assert (=> start!690280 m!7820450))

(declare-fun m!7820452 () Bool)

(assert (=> start!690280 m!7820452))

(declare-fun m!7820454 () Bool)

(assert (=> start!690280 m!7820454))

(check-sat (not b!7091619) (not b!7091620) (not b!7091625) (not b!7091626) (not b!7091622) (not b!7091621) (not b!7091628) (not b!7091627) (not b!7091618) tp_is_empty!44831 (not start!690280))
(check-sat)
