; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690388 () Bool)

(assert start!690388)

(declare-fun b!7092574 () Bool)

(assert (=> b!7092574 true))

(declare-fun res!2896535 () Bool)

(declare-fun e!4263619 () Bool)

(assert (=> start!690388 (=> (not res!2896535) (not e!4263619))))

(declare-datatypes ((C!35880 0))(
  ( (C!35881 (val!27646 Int)) )
))
(declare-datatypes ((Regex!17805 0))(
  ( (ElementMatch!17805 (c!1323630 C!35880)) (Concat!26650 (regOne!36122 Regex!17805) (regTwo!36122 Regex!17805)) (EmptyExpr!17805) (Star!17805 (reg!18134 Regex!17805)) (EmptyLang!17805) (Union!17805 (regOne!36123 Regex!17805) (regTwo!36123 Regex!17805)) )
))
(declare-fun r!11554 () Regex!17805)

(declare-fun validRegex!9080 (Regex!17805) Bool)

(assert (=> start!690388 (= res!2896535 (validRegex!9080 r!11554))))

(assert (=> start!690388 e!4263619))

(declare-fun e!4263622 () Bool)

(assert (=> start!690388 e!4263622))

(declare-datatypes ((List!68768 0))(
  ( (Nil!68644) (Cons!68644 (h!75092 Regex!17805) (t!382559 List!68768)) )
))
(declare-datatypes ((Context!13602 0))(
  ( (Context!13603 (exprs!7301 List!68768)) )
))
(declare-fun c!9994 () Context!13602)

(declare-fun e!4263620 () Bool)

(declare-fun inv!87377 (Context!13602) Bool)

(assert (=> start!690388 (and (inv!87377 c!9994) e!4263620)))

(declare-fun tp_is_empty!44843 () Bool)

(assert (=> start!690388 tp_is_empty!44843))

(declare-fun auxCtx!45 () Context!13602)

(declare-fun e!4263617 () Bool)

(assert (=> start!690388 (and (inv!87377 auxCtx!45) e!4263617)))

(declare-fun b!7092564 () Bool)

(declare-fun tp!1948557 () Bool)

(assert (=> b!7092564 (= e!4263617 tp!1948557)))

(declare-fun b!7092565 () Bool)

(declare-fun tp!1948556 () Bool)

(assert (=> b!7092565 (= e!4263620 tp!1948556)))

(declare-fun b!7092566 () Bool)

(declare-fun tp!1948554 () Bool)

(assert (=> b!7092566 (= e!4263622 tp!1948554)))

(declare-fun b!7092567 () Bool)

(declare-fun tp!1948559 () Bool)

(declare-fun tp!1948558 () Bool)

(assert (=> b!7092567 (= e!4263622 (and tp!1948559 tp!1948558))))

(declare-fun b!7092568 () Bool)

(declare-fun tp!1948560 () Bool)

(declare-fun tp!1948555 () Bool)

(assert (=> b!7092568 (= e!4263622 (and tp!1948560 tp!1948555))))

(declare-fun b!7092569 () Bool)

(declare-fun e!4263616 () Bool)

(declare-fun e!4263618 () Bool)

(assert (=> b!7092569 (= e!4263616 e!4263618)))

(declare-fun res!2896538 () Bool)

(assert (=> b!7092569 (=> (not res!2896538) (not e!4263618))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2556474 () (InoxSet Context!13602))

(declare-fun lt!2556478 () (InoxSet Context!13602))

(declare-fun a!1901 () C!35880)

(declare-fun lt!2556476 () Context!13602)

(declare-fun derivationStepZipperDown!2368 (Regex!17805 Context!13602 C!35880) (InoxSet Context!13602))

(assert (=> b!7092569 (= res!2896538 (= (derivationStepZipperDown!2368 r!11554 lt!2556476 a!1901) ((_ map or) lt!2556478 lt!2556474)))))

(assert (=> b!7092569 (= lt!2556474 (derivationStepZipperDown!2368 (regTwo!36122 r!11554) lt!2556476 a!1901))))

(declare-fun lt!2556465 () List!68768)

(declare-fun $colon$colon!2712 (List!68768 Regex!17805) List!68768)

(assert (=> b!7092569 (= lt!2556478 (derivationStepZipperDown!2368 (regOne!36122 r!11554) (Context!13603 ($colon$colon!2712 lt!2556465 (regTwo!36122 r!11554))) a!1901))))

(declare-fun b!7092570 () Bool)

(assert (=> b!7092570 (= e!4263622 tp_is_empty!44843)))

(declare-fun b!7092571 () Bool)

(assert (=> b!7092571 (= e!4263618 (not true))))

(declare-datatypes ((Unit!162301 0))(
  ( (Unit!162302) )
))
(declare-fun lt!2556471 () Unit!162301)

(declare-fun lambda!430045 () Int)

(declare-fun lemmaConcatPreservesForall!1104 (List!68768 List!68768 Int) Unit!162301)

(assert (=> b!7092571 (= lt!2556471 (lemmaConcatPreservesForall!1104 (exprs!7301 c!9994) (exprs!7301 auxCtx!45) lambda!430045))))

(declare-fun lt!2556466 () (InoxSet Context!13602))

(declare-fun lambda!430044 () Int)

(declare-fun lt!2556470 () (InoxSet Context!13602))

(declare-fun map!16154 ((InoxSet Context!13602) Int) (InoxSet Context!13602))

(assert (=> b!7092571 (= ((_ map or) (map!16154 lt!2556466 lambda!430044) (map!16154 lt!2556470 lambda!430044)) (map!16154 ((_ map or) lt!2556466 lt!2556470) lambda!430044))))

(declare-fun lt!2556472 () Unit!162301)

(declare-fun lemmaMapAssociative!18 ((InoxSet Context!13602) (InoxSet Context!13602) Int) Unit!162301)

(assert (=> b!7092571 (= lt!2556472 (lemmaMapAssociative!18 lt!2556466 lt!2556470 lambda!430044))))

(declare-fun appendTo!876 ((InoxSet Context!13602) Context!13602) (InoxSet Context!13602))

(assert (=> b!7092571 (= lt!2556474 (appendTo!876 lt!2556470 auxCtx!45))))

(assert (=> b!7092571 (= lt!2556470 (derivationStepZipperDown!2368 (regTwo!36122 r!11554) c!9994 a!1901))))

(declare-fun lt!2556477 () Unit!162301)

(assert (=> b!7092571 (= lt!2556477 (lemmaConcatPreservesForall!1104 (exprs!7301 c!9994) (exprs!7301 auxCtx!45) lambda!430045))))

(declare-fun lt!2556469 () Unit!162301)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!184 (Context!13602 Regex!17805 C!35880 Context!13602) Unit!162301)

(assert (=> b!7092571 (= lt!2556469 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!184 c!9994 (regTwo!36122 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556467 () List!68768)

(assert (=> b!7092571 (= (derivationStepZipperDown!2368 (regOne!36122 r!11554) (Context!13603 lt!2556467) a!1901) (appendTo!876 lt!2556466 auxCtx!45))))

(declare-fun lt!2556473 () Context!13602)

(assert (=> b!7092571 (= lt!2556466 (derivationStepZipperDown!2368 (regOne!36122 r!11554) lt!2556473 a!1901))))

(declare-fun lt!2556461 () List!68768)

(declare-fun ++!15974 (List!68768 List!68768) List!68768)

(assert (=> b!7092571 (= lt!2556467 (++!15974 lt!2556461 (exprs!7301 auxCtx!45)))))

(declare-fun lt!2556464 () Unit!162301)

(assert (=> b!7092571 (= lt!2556464 (lemmaConcatPreservesForall!1104 lt!2556461 (exprs!7301 auxCtx!45) lambda!430045))))

(declare-fun lt!2556463 () Unit!162301)

(assert (=> b!7092571 (= lt!2556463 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!184 lt!2556473 (regOne!36122 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7092571 (= lt!2556473 (Context!13603 lt!2556461))))

(assert (=> b!7092571 (= lt!2556461 ($colon$colon!2712 (exprs!7301 c!9994) (regTwo!36122 r!11554)))))

(declare-fun b!7092572 () Bool)

(declare-fun res!2896534 () Bool)

(declare-fun e!4263621 () Bool)

(assert (=> b!7092572 (=> (not res!2896534) (not e!4263621))))

(declare-fun nullable!7445 (Regex!17805) Bool)

(assert (=> b!7092572 (= res!2896534 (nullable!7445 (regOne!36122 r!11554)))))

(declare-fun b!7092573 () Bool)

(assert (=> b!7092573 (= e!4263621 e!4263616)))

(declare-fun res!2896537 () Bool)

(assert (=> b!7092573 (=> (not res!2896537) (not e!4263616))))

(assert (=> b!7092573 (= res!2896537 (validRegex!9080 (regTwo!36122 r!11554)))))

(declare-fun lt!2556475 () Unit!162301)

(assert (=> b!7092573 (= lt!2556475 (lemmaConcatPreservesForall!1104 (exprs!7301 c!9994) (exprs!7301 auxCtx!45) lambda!430045))))

(assert (=> b!7092573 (= lt!2556476 (Context!13603 lt!2556465))))

(assert (=> b!7092573 (= lt!2556465 (++!15974 (exprs!7301 c!9994) (exprs!7301 auxCtx!45)))))

(declare-fun lt!2556468 () Unit!162301)

(assert (=> b!7092573 (= lt!2556468 (lemmaConcatPreservesForall!1104 (exprs!7301 c!9994) (exprs!7301 auxCtx!45) lambda!430045))))

(declare-fun lt!2556462 () Unit!162301)

(assert (=> b!7092573 (= lt!2556462 (lemmaConcatPreservesForall!1104 (exprs!7301 c!9994) (exprs!7301 auxCtx!45) lambda!430045))))

(assert (=> b!7092574 (= e!4263619 e!4263621)))

(declare-fun res!2896536 () Bool)

(assert (=> b!7092574 (=> (not res!2896536) (not e!4263621))))

(get-info :version)

(assert (=> b!7092574 (= res!2896536 (and (or (not ((_ is ElementMatch!17805) r!11554)) (not (= (c!1323630 r!11554) a!1901))) (not ((_ is Union!17805) r!11554)) ((_ is Concat!26650) r!11554)))))

(assert (= (and start!690388 res!2896535) b!7092574))

(assert (= (and b!7092574 res!2896536) b!7092572))

(assert (= (and b!7092572 res!2896534) b!7092573))

(assert (= (and b!7092573 res!2896537) b!7092569))

(assert (= (and b!7092569 res!2896538) b!7092571))

(assert (= (and start!690388 ((_ is ElementMatch!17805) r!11554)) b!7092570))

(assert (= (and start!690388 ((_ is Concat!26650) r!11554)) b!7092568))

(assert (= (and start!690388 ((_ is Star!17805) r!11554)) b!7092566))

(assert (= (and start!690388 ((_ is Union!17805) r!11554)) b!7092567))

(assert (= start!690388 b!7092565))

(assert (= start!690388 b!7092564))

(declare-fun m!7821290 () Bool)

(assert (=> start!690388 m!7821290))

(declare-fun m!7821292 () Bool)

(assert (=> start!690388 m!7821292))

(declare-fun m!7821294 () Bool)

(assert (=> start!690388 m!7821294))

(declare-fun m!7821296 () Bool)

(assert (=> b!7092569 m!7821296))

(declare-fun m!7821298 () Bool)

(assert (=> b!7092569 m!7821298))

(declare-fun m!7821300 () Bool)

(assert (=> b!7092569 m!7821300))

(declare-fun m!7821302 () Bool)

(assert (=> b!7092569 m!7821302))

(declare-fun m!7821304 () Bool)

(assert (=> b!7092573 m!7821304))

(assert (=> b!7092573 m!7821304))

(declare-fun m!7821306 () Bool)

(assert (=> b!7092573 m!7821306))

(declare-fun m!7821308 () Bool)

(assert (=> b!7092573 m!7821308))

(assert (=> b!7092573 m!7821304))

(declare-fun m!7821310 () Bool)

(assert (=> b!7092571 m!7821310))

(declare-fun m!7821312 () Bool)

(assert (=> b!7092571 m!7821312))

(assert (=> b!7092571 m!7821304))

(declare-fun m!7821314 () Bool)

(assert (=> b!7092571 m!7821314))

(declare-fun m!7821316 () Bool)

(assert (=> b!7092571 m!7821316))

(declare-fun m!7821318 () Bool)

(assert (=> b!7092571 m!7821318))

(declare-fun m!7821320 () Bool)

(assert (=> b!7092571 m!7821320))

(declare-fun m!7821322 () Bool)

(assert (=> b!7092571 m!7821322))

(declare-fun m!7821324 () Bool)

(assert (=> b!7092571 m!7821324))

(declare-fun m!7821326 () Bool)

(assert (=> b!7092571 m!7821326))

(declare-fun m!7821328 () Bool)

(assert (=> b!7092571 m!7821328))

(declare-fun m!7821330 () Bool)

(assert (=> b!7092571 m!7821330))

(declare-fun m!7821332 () Bool)

(assert (=> b!7092571 m!7821332))

(assert (=> b!7092571 m!7821304))

(declare-fun m!7821334 () Bool)

(assert (=> b!7092571 m!7821334))

(declare-fun m!7821336 () Bool)

(assert (=> b!7092571 m!7821336))

(declare-fun m!7821338 () Bool)

(assert (=> b!7092572 m!7821338))

(check-sat (not b!7092571) (not b!7092569) (not b!7092566) (not b!7092564) (not b!7092573) (not b!7092568) tp_is_empty!44843 (not start!690388) (not b!7092572) (not b!7092565) (not b!7092567))
(check-sat)
