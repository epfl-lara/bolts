; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690708 () Bool)

(assert start!690708)

(declare-fun b!7095696 () Bool)

(declare-fun res!2897603 () Bool)

(declare-fun e!4265316 () Bool)

(assert (=> b!7095696 (=> (not res!2897603) (not e!4265316))))

(declare-datatypes ((C!35932 0))(
  ( (C!35933 (val!27672 Int)) )
))
(declare-datatypes ((Regex!17831 0))(
  ( (ElementMatch!17831 (c!1324142 C!35932)) (Concat!26676 (regOne!36174 Regex!17831) (regTwo!36174 Regex!17831)) (EmptyExpr!17831) (Star!17831 (reg!18160 Regex!17831)) (EmptyLang!17831) (Union!17831 (regOne!36175 Regex!17831) (regTwo!36175 Regex!17831)) )
))
(declare-fun r!11554 () Regex!17831)

(declare-fun a!1901 () C!35932)

(get-info :version)

(assert (=> b!7095696 (= res!2897603 (and (or (not ((_ is ElementMatch!17831) r!11554)) (not (= (c!1324142 r!11554) a!1901))) (not ((_ is Union!17831) r!11554))))))

(declare-fun b!7095697 () Bool)

(declare-fun e!4265320 () Bool)

(assert (=> b!7095697 (= e!4265316 e!4265320)))

(declare-fun res!2897601 () Bool)

(assert (=> b!7095697 (=> (not res!2897601) (not e!4265320))))

(declare-fun validRegex!9106 (Regex!17831) Bool)

(assert (=> b!7095697 (= res!2897601 (validRegex!9106 (regTwo!36174 r!11554)))))

(declare-datatypes ((List!68794 0))(
  ( (Nil!68670) (Cons!68670 (h!75118 Regex!17831) (t!382593 List!68794)) )
))
(declare-fun lt!2557202 () List!68794)

(declare-datatypes ((Context!13654 0))(
  ( (Context!13655 (exprs!7327 List!68794)) )
))
(declare-fun c!9994 () Context!13654)

(declare-fun auxCtx!45 () Context!13654)

(declare-fun ++!15995 (List!68794 List!68794) List!68794)

(assert (=> b!7095697 (= lt!2557202 (++!15995 (exprs!7327 c!9994) (exprs!7327 auxCtx!45)))))

(declare-datatypes ((Unit!162345 0))(
  ( (Unit!162346) )
))
(declare-fun lt!2557203 () Unit!162345)

(declare-fun lambda!430427 () Int)

(declare-fun lemmaConcatPreservesForall!1126 (List!68794 List!68794 Int) Unit!162345)

(assert (=> b!7095697 (= lt!2557203 (lemmaConcatPreservesForall!1126 (exprs!7327 c!9994) (exprs!7327 auxCtx!45) lambda!430427))))

(declare-fun lt!2557208 () Unit!162345)

(assert (=> b!7095697 (= lt!2557208 (lemmaConcatPreservesForall!1126 (exprs!7327 c!9994) (exprs!7327 auxCtx!45) lambda!430427))))

(declare-fun b!7095698 () Bool)

(declare-fun e!4265318 () Bool)

(declare-fun tp!1949865 () Bool)

(declare-fun tp!1949864 () Bool)

(assert (=> b!7095698 (= e!4265318 (and tp!1949865 tp!1949864))))

(declare-fun b!7095699 () Bool)

(assert (=> b!7095699 (= e!4265320 (not true))))

(declare-fun lt!2557205 () Unit!162345)

(assert (=> b!7095699 (= lt!2557205 (lemmaConcatPreservesForall!1126 (exprs!7327 c!9994) (exprs!7327 auxCtx!45) lambda!430427))))

(declare-fun lt!2557207 () List!68794)

(declare-fun lt!2557204 () Context!13654)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2382 (Regex!17831 Context!13654 C!35932) (InoxSet Context!13654))

(declare-fun appendTo!888 ((InoxSet Context!13654) Context!13654) (InoxSet Context!13654))

(assert (=> b!7095699 (= (derivationStepZipperDown!2382 (regOne!36174 r!11554) (Context!13655 (++!15995 lt!2557207 (exprs!7327 auxCtx!45))) a!1901) (appendTo!888 (derivationStepZipperDown!2382 (regOne!36174 r!11554) lt!2557204 a!1901) auxCtx!45))))

(declare-fun lt!2557201 () Unit!162345)

(assert (=> b!7095699 (= lt!2557201 (lemmaConcatPreservesForall!1126 lt!2557207 (exprs!7327 auxCtx!45) lambda!430427))))

(declare-fun lt!2557206 () Unit!162345)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!196 (Context!13654 Regex!17831 C!35932 Context!13654) Unit!162345)

(assert (=> b!7095699 (= lt!2557206 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!196 lt!2557204 (regOne!36174 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7095699 (= lt!2557204 (Context!13655 lt!2557207))))

(declare-fun $colon$colon!2726 (List!68794 Regex!17831) List!68794)

(assert (=> b!7095699 (= lt!2557207 ($colon$colon!2726 (exprs!7327 c!9994) (regTwo!36174 r!11554)))))

(declare-fun b!7095700 () Bool)

(declare-fun e!4265317 () Bool)

(declare-fun tp!1949867 () Bool)

(assert (=> b!7095700 (= e!4265317 tp!1949867)))

(declare-fun b!7095701 () Bool)

(declare-fun res!2897600 () Bool)

(assert (=> b!7095701 (=> (not res!2897600) (not e!4265316))))

(declare-fun e!4265315 () Bool)

(assert (=> b!7095701 (= res!2897600 e!4265315)))

(declare-fun res!2897605 () Bool)

(assert (=> b!7095701 (=> res!2897605 e!4265315)))

(assert (=> b!7095701 (= res!2897605 (not ((_ is Concat!26676) r!11554)))))

(declare-fun b!7095702 () Bool)

(declare-fun tp!1949866 () Bool)

(declare-fun tp!1949868 () Bool)

(assert (=> b!7095702 (= e!4265318 (and tp!1949866 tp!1949868))))

(declare-fun b!7095703 () Bool)

(declare-fun tp!1949870 () Bool)

(assert (=> b!7095703 (= e!4265318 tp!1949870)))

(declare-fun res!2897604 () Bool)

(assert (=> start!690708 (=> (not res!2897604) (not e!4265316))))

(assert (=> start!690708 (= res!2897604 (validRegex!9106 r!11554))))

(assert (=> start!690708 e!4265316))

(assert (=> start!690708 e!4265318))

(declare-fun tp_is_empty!44895 () Bool)

(assert (=> start!690708 tp_is_empty!44895))

(declare-fun inv!87442 (Context!13654) Bool)

(assert (=> start!690708 (and (inv!87442 c!9994) e!4265317)))

(declare-fun e!4265319 () Bool)

(assert (=> start!690708 (and (inv!87442 auxCtx!45) e!4265319)))

(declare-fun b!7095704 () Bool)

(assert (=> b!7095704 (= e!4265318 tp_is_empty!44895)))

(declare-fun b!7095705 () Bool)

(declare-fun tp!1949869 () Bool)

(assert (=> b!7095705 (= e!4265319 tp!1949869)))

(declare-fun b!7095706 () Bool)

(declare-fun nullable!7471 (Regex!17831) Bool)

(assert (=> b!7095706 (= e!4265315 (not (nullable!7471 (regOne!36174 r!11554))))))

(declare-fun b!7095707 () Bool)

(declare-fun res!2897606 () Bool)

(assert (=> b!7095707 (=> (not res!2897606) (not e!4265320))))

(assert (=> b!7095707 (= res!2897606 (= (derivationStepZipperDown!2382 r!11554 (Context!13655 lt!2557202) a!1901) (derivationStepZipperDown!2382 (regOne!36174 r!11554) (Context!13655 ($colon$colon!2726 lt!2557202 (regTwo!36174 r!11554))) a!1901)))))

(declare-fun b!7095708 () Bool)

(declare-fun res!2897602 () Bool)

(assert (=> b!7095708 (=> (not res!2897602) (not e!4265316))))

(assert (=> b!7095708 (= res!2897602 ((_ is Concat!26676) r!11554))))

(assert (= (and start!690708 res!2897604) b!7095696))

(assert (= (and b!7095696 res!2897603) b!7095701))

(assert (= (and b!7095701 (not res!2897605)) b!7095706))

(assert (= (and b!7095701 res!2897600) b!7095708))

(assert (= (and b!7095708 res!2897602) b!7095697))

(assert (= (and b!7095697 res!2897601) b!7095707))

(assert (= (and b!7095707 res!2897606) b!7095699))

(assert (= (and start!690708 ((_ is ElementMatch!17831) r!11554)) b!7095704))

(assert (= (and start!690708 ((_ is Concat!26676) r!11554)) b!7095702))

(assert (= (and start!690708 ((_ is Star!17831) r!11554)) b!7095703))

(assert (= (and start!690708 ((_ is Union!17831) r!11554)) b!7095698))

(assert (= start!690708 b!7095700))

(assert (= start!690708 b!7095705))

(declare-fun m!7823354 () Bool)

(assert (=> b!7095699 m!7823354))

(declare-fun m!7823356 () Bool)

(assert (=> b!7095699 m!7823356))

(assert (=> b!7095699 m!7823356))

(declare-fun m!7823358 () Bool)

(assert (=> b!7095699 m!7823358))

(declare-fun m!7823360 () Bool)

(assert (=> b!7095699 m!7823360))

(declare-fun m!7823362 () Bool)

(assert (=> b!7095699 m!7823362))

(declare-fun m!7823364 () Bool)

(assert (=> b!7095699 m!7823364))

(declare-fun m!7823366 () Bool)

(assert (=> b!7095699 m!7823366))

(declare-fun m!7823368 () Bool)

(assert (=> b!7095699 m!7823368))

(declare-fun m!7823370 () Bool)

(assert (=> b!7095697 m!7823370))

(declare-fun m!7823372 () Bool)

(assert (=> b!7095697 m!7823372))

(assert (=> b!7095697 m!7823362))

(assert (=> b!7095697 m!7823362))

(declare-fun m!7823374 () Bool)

(assert (=> b!7095706 m!7823374))

(declare-fun m!7823376 () Bool)

(assert (=> start!690708 m!7823376))

(declare-fun m!7823378 () Bool)

(assert (=> start!690708 m!7823378))

(declare-fun m!7823380 () Bool)

(assert (=> start!690708 m!7823380))

(declare-fun m!7823382 () Bool)

(assert (=> b!7095707 m!7823382))

(declare-fun m!7823384 () Bool)

(assert (=> b!7095707 m!7823384))

(declare-fun m!7823386 () Bool)

(assert (=> b!7095707 m!7823386))

(check-sat (not b!7095702) (not b!7095699) (not b!7095706) tp_is_empty!44895 (not b!7095705) (not b!7095698) (not start!690708) (not b!7095700) (not b!7095703) (not b!7095707) (not b!7095697))
(check-sat)
