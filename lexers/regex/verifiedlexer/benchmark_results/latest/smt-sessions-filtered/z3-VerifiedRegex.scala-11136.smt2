; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577218 () Bool)

(assert start!577218)

(declare-fun b!5531570 () Bool)

(assert (=> b!5531570 true))

(assert (=> b!5531570 true))

(declare-fun lambda!296960 () Int)

(declare-fun lambda!296959 () Int)

(assert (=> b!5531570 (not (= lambda!296960 lambda!296959))))

(assert (=> b!5531570 true))

(assert (=> b!5531570 true))

(declare-fun b!5531572 () Bool)

(assert (=> b!5531572 true))

(declare-fun tp!1521617 () Bool)

(declare-datatypes ((C!31308 0))(
  ( (C!31309 (val!25356 Int)) )
))
(declare-datatypes ((Regex!15519 0))(
  ( (ElementMatch!15519 (c!968061 C!31308)) (Concat!24364 (regOne!31550 Regex!15519) (regTwo!31550 Regex!15519)) (EmptyExpr!15519) (Star!15519 (reg!15848 Regex!15519)) (EmptyLang!15519) (Union!15519 (regOne!31551 Regex!15519) (regTwo!31551 Regex!15519)) )
))
(declare-datatypes ((List!62856 0))(
  ( (Nil!62732) (Cons!62732 (h!69180 Regex!15519) (t!376115 List!62856)) )
))
(declare-datatypes ((Context!9806 0))(
  ( (Context!9807 (exprs!5403 List!62856)) )
))
(declare-fun setElem!36809 () Context!9806)

(declare-fun setNonEmpty!36809 () Bool)

(declare-fun e!3419363 () Bool)

(declare-fun setRes!36809 () Bool)

(declare-fun inv!82044 (Context!9806) Bool)

(assert (=> setNonEmpty!36809 (= setRes!36809 (and tp!1521617 (inv!82044 setElem!36809) e!3419363))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9806))

(declare-fun setRest!36809 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36809 (= z!1189 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36809 true) setRest!36809))))

(declare-fun b!5531555 () Bool)

(declare-fun res!2355198 () Bool)

(declare-fun e!3419356 () Bool)

(assert (=> b!5531555 (=> res!2355198 e!3419356)))

(declare-fun r!7292 () Regex!15519)

(get-info :version)

(assert (=> b!5531555 (= res!2355198 (or ((_ is EmptyExpr!15519) r!7292) ((_ is EmptyLang!15519) r!7292) ((_ is ElementMatch!15519) r!7292) ((_ is Union!15519) r!7292) (not ((_ is Concat!24364) r!7292))))))

(declare-fun b!5531556 () Bool)

(declare-fun e!3419359 () Bool)

(declare-fun e!3419360 () Bool)

(assert (=> b!5531556 (= e!3419359 e!3419360)))

(declare-fun res!2355196 () Bool)

(assert (=> b!5531556 (=> res!2355196 e!3419360)))

(declare-fun lt!2248641 () (InoxSet Context!9806))

(declare-fun lt!2248643 () (InoxSet Context!9806))

(assert (=> b!5531556 (= res!2355196 (not (= lt!2248641 lt!2248643)))))

(declare-datatypes ((List!62857 0))(
  ( (Nil!62733) (Cons!62733 (h!69181 C!31308) (t!376116 List!62857)) )
))
(declare-fun s!2326 () List!62857)

(declare-fun lt!2248644 () Context!9806)

(declare-fun derivationStepZipperDown!861 (Regex!15519 Context!9806 C!31308) (InoxSet Context!9806))

(assert (=> b!5531556 (= lt!2248643 (derivationStepZipperDown!861 r!7292 lt!2248644 (h!69181 s!2326)))))

(assert (=> b!5531556 (= lt!2248644 (Context!9807 Nil!62732))))

(declare-fun derivationStepZipperUp!787 (Context!9806 C!31308) (InoxSet Context!9806))

(assert (=> b!5531556 (= lt!2248641 (derivationStepZipperUp!787 (Context!9807 (Cons!62732 r!7292 Nil!62732)) (h!69181 s!2326)))))

(declare-fun lt!2248649 () (InoxSet Context!9806))

(declare-fun derivationStepZipper!1624 ((InoxSet Context!9806) C!31308) (InoxSet Context!9806))

(assert (=> b!5531556 (= lt!2248649 (derivationStepZipper!1624 z!1189 (h!69181 s!2326)))))

(declare-fun b!5531557 () Bool)

(declare-fun res!2355202 () Bool)

(assert (=> b!5531557 (=> res!2355202 e!3419356)))

(declare-datatypes ((List!62858 0))(
  ( (Nil!62734) (Cons!62734 (h!69182 Context!9806) (t!376117 List!62858)) )
))
(declare-fun zl!343 () List!62858)

(declare-fun isEmpty!34521 (List!62858) Bool)

(assert (=> b!5531557 (= res!2355202 (not (isEmpty!34521 (t!376117 zl!343))))))

(declare-fun b!5531558 () Bool)

(declare-fun e!3419361 () Bool)

(declare-fun tp_is_empty!40291 () Bool)

(assert (=> b!5531558 (= e!3419361 tp_is_empty!40291)))

(declare-fun b!5531559 () Bool)

(declare-fun tp!1521615 () Bool)

(declare-fun tp!1521613 () Bool)

(assert (=> b!5531559 (= e!3419361 (and tp!1521615 tp!1521613))))

(declare-fun b!5531560 () Bool)

(declare-fun res!2355206 () Bool)

(assert (=> b!5531560 (=> res!2355206 e!3419356)))

(assert (=> b!5531560 (= res!2355206 (not ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5531561 () Bool)

(declare-fun res!2355199 () Bool)

(declare-fun e!3419358 () Bool)

(assert (=> b!5531561 (=> (not res!2355199) (not e!3419358))))

(declare-fun toList!9303 ((InoxSet Context!9806)) List!62858)

(assert (=> b!5531561 (= res!2355199 (= (toList!9303 z!1189) zl!343))))

(declare-fun tp!1521612 () Bool)

(declare-fun e!3419357 () Bool)

(declare-fun e!3419365 () Bool)

(declare-fun b!5531562 () Bool)

(assert (=> b!5531562 (= e!3419365 (and (inv!82044 (h!69182 zl!343)) e!3419357 tp!1521612))))

(declare-fun b!5531563 () Bool)

(declare-fun tp!1521610 () Bool)

(assert (=> b!5531563 (= e!3419361 tp!1521610)))

(declare-fun b!5531564 () Bool)

(declare-fun res!2355197 () Bool)

(assert (=> b!5531564 (=> (not res!2355197) (not e!3419358))))

(declare-fun unfocusZipper!1261 (List!62858) Regex!15519)

(assert (=> b!5531564 (= res!2355197 (= r!7292 (unfocusZipper!1261 zl!343)))))

(declare-fun b!5531566 () Bool)

(declare-fun tp!1521618 () Bool)

(declare-fun tp!1521619 () Bool)

(assert (=> b!5531566 (= e!3419361 (and tp!1521618 tp!1521619))))

(declare-fun b!5531567 () Bool)

(assert (=> b!5531567 (= e!3419358 (not e!3419356))))

(declare-fun res!2355205 () Bool)

(assert (=> b!5531567 (=> res!2355205 e!3419356)))

(assert (=> b!5531567 (= res!2355205 (not ((_ is Cons!62734) zl!343)))))

(declare-fun lt!2248650 () Bool)

(declare-fun matchRSpec!2622 (Regex!15519 List!62857) Bool)

(assert (=> b!5531567 (= lt!2248650 (matchRSpec!2622 r!7292 s!2326))))

(declare-fun matchR!7704 (Regex!15519 List!62857) Bool)

(assert (=> b!5531567 (= lt!2248650 (matchR!7704 r!7292 s!2326))))

(declare-datatypes ((Unit!155498 0))(
  ( (Unit!155499) )
))
(declare-fun lt!2248639 () Unit!155498)

(declare-fun mainMatchTheorem!2622 (Regex!15519 List!62857) Unit!155498)

(assert (=> b!5531567 (= lt!2248639 (mainMatchTheorem!2622 r!7292 s!2326))))

(declare-fun b!5531568 () Bool)

(declare-fun res!2355195 () Bool)

(assert (=> b!5531568 (=> res!2355195 e!3419359)))

(declare-fun isEmpty!34522 (List!62856) Bool)

(assert (=> b!5531568 (= res!2355195 (not (isEmpty!34522 (t!376115 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5531569 () Bool)

(declare-fun res!2355201 () Bool)

(assert (=> b!5531569 (=> res!2355201 e!3419356)))

(declare-fun generalisedConcat!1134 (List!62856) Regex!15519)

(assert (=> b!5531569 (= res!2355201 (not (= r!7292 (generalisedConcat!1134 (exprs!5403 (h!69182 zl!343))))))))

(assert (=> b!5531570 (= e!3419356 e!3419359)))

(declare-fun res!2355200 () Bool)

(assert (=> b!5531570 (=> res!2355200 e!3419359)))

(declare-fun lt!2248645 () Bool)

(assert (=> b!5531570 (= res!2355200 (or (not (= lt!2248650 lt!2248645)) ((_ is Nil!62733) s!2326)))))

(declare-fun Exists!2619 (Int) Bool)

(assert (=> b!5531570 (= (Exists!2619 lambda!296959) (Exists!2619 lambda!296960))))

(declare-fun lt!2248647 () Unit!155498)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1248 (Regex!15519 Regex!15519 List!62857) Unit!155498)

(assert (=> b!5531570 (= lt!2248647 (lemmaExistCutMatchRandMatchRSpecEquivalent!1248 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326))))

(assert (=> b!5531570 (= lt!2248645 (Exists!2619 lambda!296959))))

(declare-datatypes ((tuple2!65232 0))(
  ( (tuple2!65233 (_1!35919 List!62857) (_2!35919 List!62857)) )
))
(declare-datatypes ((Option!15528 0))(
  ( (None!15527) (Some!15527 (v!51564 tuple2!65232)) )
))
(declare-fun isDefined!12231 (Option!15528) Bool)

(declare-fun findConcatSeparation!1942 (Regex!15519 Regex!15519 List!62857 List!62857 List!62857) Option!15528)

(assert (=> b!5531570 (= lt!2248645 (isDefined!12231 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326)))))

(declare-fun lt!2248642 () Unit!155498)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1706 (Regex!15519 Regex!15519 List!62857) Unit!155498)

(assert (=> b!5531570 (= lt!2248642 (lemmaFindConcatSeparationEquivalentToExists!1706 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326))))

(declare-fun b!5531571 () Bool)

(declare-fun e!3419364 () Bool)

(declare-fun e!3419366 () Bool)

(assert (=> b!5531571 (= e!3419364 e!3419366)))

(declare-fun res!2355207 () Bool)

(assert (=> b!5531571 (=> res!2355207 e!3419366)))

(declare-fun nullable!5553 (Regex!15519) Bool)

(assert (=> b!5531571 (= res!2355207 (nullable!5553 (regOne!31550 r!7292)))))

(declare-fun lt!2248637 () (InoxSet Context!9806))

(assert (=> b!5531571 (= lt!2248637 (derivationStepZipperDown!861 (regTwo!31550 r!7292) lt!2248644 (h!69181 s!2326)))))

(declare-fun lt!2248635 () Context!9806)

(declare-fun lt!2248640 () (InoxSet Context!9806))

(assert (=> b!5531571 (= lt!2248640 (derivationStepZipperDown!861 (regOne!31550 r!7292) lt!2248635 (h!69181 s!2326)))))

(declare-fun lt!2248636 () (InoxSet Context!9806))

(declare-fun lambda!296961 () Int)

(declare-fun flatMap!1132 ((InoxSet Context!9806) Int) (InoxSet Context!9806))

(assert (=> b!5531571 (= (flatMap!1132 lt!2248636 lambda!296961) (derivationStepZipperUp!787 lt!2248635 (h!69181 s!2326)))))

(declare-fun lt!2248653 () Unit!155498)

(declare-fun lemmaFlatMapOnSingletonSet!664 ((InoxSet Context!9806) Context!9806 Int) Unit!155498)

(assert (=> b!5531571 (= lt!2248653 (lemmaFlatMapOnSingletonSet!664 lt!2248636 lt!2248635 lambda!296961))))

(declare-fun lt!2248646 () (InoxSet Context!9806))

(declare-fun lt!2248654 () Context!9806)

(assert (=> b!5531571 (= (flatMap!1132 lt!2248646 lambda!296961) (derivationStepZipperUp!787 lt!2248654 (h!69181 s!2326)))))

(declare-fun lt!2248652 () Unit!155498)

(assert (=> b!5531571 (= lt!2248652 (lemmaFlatMapOnSingletonSet!664 lt!2248646 lt!2248654 lambda!296961))))

(declare-fun lt!2248638 () (InoxSet Context!9806))

(assert (=> b!5531571 (= lt!2248638 (derivationStepZipperUp!787 lt!2248635 (h!69181 s!2326)))))

(declare-fun lt!2248655 () (InoxSet Context!9806))

(assert (=> b!5531571 (= lt!2248655 (derivationStepZipperUp!787 lt!2248654 (h!69181 s!2326)))))

(assert (=> b!5531571 (= lt!2248636 (store ((as const (Array Context!9806 Bool)) false) lt!2248635 true))))

(declare-fun lt!2248648 () List!62856)

(assert (=> b!5531571 (= lt!2248635 (Context!9807 lt!2248648))))

(assert (=> b!5531571 (= lt!2248646 (store ((as const (Array Context!9806 Bool)) false) lt!2248654 true))))

(assert (=> b!5531571 (= lt!2248654 (Context!9807 (Cons!62732 (regOne!31550 r!7292) lt!2248648)))))

(assert (=> b!5531571 (= lt!2248648 (Cons!62732 (regTwo!31550 r!7292) Nil!62732))))

(declare-fun setIsEmpty!36809 () Bool)

(assert (=> setIsEmpty!36809 setRes!36809))

(assert (=> b!5531572 (= e!3419360 e!3419364)))

(declare-fun res!2355203 () Bool)

(assert (=> b!5531572 (=> res!2355203 e!3419364)))

(assert (=> b!5531572 (= res!2355203 (not (= lt!2248649 lt!2248643)))))

(assert (=> b!5531572 (= (flatMap!1132 z!1189 lambda!296961) (derivationStepZipperUp!787 (h!69182 zl!343) (h!69181 s!2326)))))

(declare-fun lt!2248651 () Unit!155498)

(assert (=> b!5531572 (= lt!2248651 (lemmaFlatMapOnSingletonSet!664 z!1189 (h!69182 zl!343) lambda!296961))))

(declare-fun b!5531573 () Bool)

(declare-fun e!3419362 () Bool)

(declare-fun tp!1521611 () Bool)

(assert (=> b!5531573 (= e!3419362 (and tp_is_empty!40291 tp!1521611))))

(declare-fun b!5531574 () Bool)

(declare-fun tp!1521616 () Bool)

(assert (=> b!5531574 (= e!3419363 tp!1521616)))

(declare-fun b!5531565 () Bool)

(declare-fun tp!1521614 () Bool)

(assert (=> b!5531565 (= e!3419357 tp!1521614)))

(declare-fun res!2355204 () Bool)

(assert (=> start!577218 (=> (not res!2355204) (not e!3419358))))

(declare-fun validRegex!7255 (Regex!15519) Bool)

(assert (=> start!577218 (= res!2355204 (validRegex!7255 r!7292))))

(assert (=> start!577218 e!3419358))

(assert (=> start!577218 e!3419361))

(declare-fun condSetEmpty!36809 () Bool)

(assert (=> start!577218 (= condSetEmpty!36809 (= z!1189 ((as const (Array Context!9806 Bool)) false)))))

(assert (=> start!577218 setRes!36809))

(assert (=> start!577218 e!3419365))

(assert (=> start!577218 e!3419362))

(declare-fun b!5531575 () Bool)

(assert (=> b!5531575 (= e!3419366 (= lt!2248649 lt!2248640))))

(declare-fun b!5531576 () Bool)

(declare-fun res!2355208 () Bool)

(assert (=> b!5531576 (=> res!2355208 e!3419356)))

(declare-fun generalisedUnion!1382 (List!62856) Regex!15519)

(declare-fun unfocusZipperList!947 (List!62858) List!62856)

(assert (=> b!5531576 (= res!2355208 (not (= r!7292 (generalisedUnion!1382 (unfocusZipperList!947 zl!343)))))))

(assert (= (and start!577218 res!2355204) b!5531561))

(assert (= (and b!5531561 res!2355199) b!5531564))

(assert (= (and b!5531564 res!2355197) b!5531567))

(assert (= (and b!5531567 (not res!2355205)) b!5531557))

(assert (= (and b!5531557 (not res!2355202)) b!5531569))

(assert (= (and b!5531569 (not res!2355201)) b!5531560))

(assert (= (and b!5531560 (not res!2355206)) b!5531576))

(assert (= (and b!5531576 (not res!2355208)) b!5531555))

(assert (= (and b!5531555 (not res!2355198)) b!5531570))

(assert (= (and b!5531570 (not res!2355200)) b!5531568))

(assert (= (and b!5531568 (not res!2355195)) b!5531556))

(assert (= (and b!5531556 (not res!2355196)) b!5531572))

(assert (= (and b!5531572 (not res!2355203)) b!5531571))

(assert (= (and b!5531571 (not res!2355207)) b!5531575))

(assert (= (and start!577218 ((_ is ElementMatch!15519) r!7292)) b!5531558))

(assert (= (and start!577218 ((_ is Concat!24364) r!7292)) b!5531559))

(assert (= (and start!577218 ((_ is Star!15519) r!7292)) b!5531563))

(assert (= (and start!577218 ((_ is Union!15519) r!7292)) b!5531566))

(assert (= (and start!577218 condSetEmpty!36809) setIsEmpty!36809))

(assert (= (and start!577218 (not condSetEmpty!36809)) setNonEmpty!36809))

(assert (= setNonEmpty!36809 b!5531574))

(assert (= b!5531562 b!5531565))

(assert (= (and start!577218 ((_ is Cons!62734) zl!343)) b!5531562))

(assert (= (and start!577218 ((_ is Cons!62733) s!2326)) b!5531573))

(declare-fun m!6533540 () Bool)

(assert (=> b!5531567 m!6533540))

(declare-fun m!6533542 () Bool)

(assert (=> b!5531567 m!6533542))

(declare-fun m!6533544 () Bool)

(assert (=> b!5531567 m!6533544))

(declare-fun m!6533546 () Bool)

(assert (=> setNonEmpty!36809 m!6533546))

(declare-fun m!6533548 () Bool)

(assert (=> b!5531569 m!6533548))

(declare-fun m!6533550 () Bool)

(assert (=> b!5531576 m!6533550))

(assert (=> b!5531576 m!6533550))

(declare-fun m!6533552 () Bool)

(assert (=> b!5531576 m!6533552))

(declare-fun m!6533554 () Bool)

(assert (=> start!577218 m!6533554))

(declare-fun m!6533556 () Bool)

(assert (=> b!5531562 m!6533556))

(declare-fun m!6533558 () Bool)

(assert (=> b!5531572 m!6533558))

(declare-fun m!6533560 () Bool)

(assert (=> b!5531572 m!6533560))

(declare-fun m!6533562 () Bool)

(assert (=> b!5531572 m!6533562))

(declare-fun m!6533564 () Bool)

(assert (=> b!5531557 m!6533564))

(declare-fun m!6533566 () Bool)

(assert (=> b!5531564 m!6533566))

(declare-fun m!6533568 () Bool)

(assert (=> b!5531570 m!6533568))

(declare-fun m!6533570 () Bool)

(assert (=> b!5531570 m!6533570))

(declare-fun m!6533572 () Bool)

(assert (=> b!5531570 m!6533572))

(declare-fun m!6533574 () Bool)

(assert (=> b!5531570 m!6533574))

(declare-fun m!6533576 () Bool)

(assert (=> b!5531570 m!6533576))

(assert (=> b!5531570 m!6533574))

(assert (=> b!5531570 m!6533570))

(declare-fun m!6533578 () Bool)

(assert (=> b!5531570 m!6533578))

(declare-fun m!6533580 () Bool)

(assert (=> b!5531556 m!6533580))

(declare-fun m!6533582 () Bool)

(assert (=> b!5531556 m!6533582))

(declare-fun m!6533584 () Bool)

(assert (=> b!5531556 m!6533584))

(declare-fun m!6533586 () Bool)

(assert (=> b!5531568 m!6533586))

(declare-fun m!6533588 () Bool)

(assert (=> b!5531571 m!6533588))

(declare-fun m!6533590 () Bool)

(assert (=> b!5531571 m!6533590))

(declare-fun m!6533592 () Bool)

(assert (=> b!5531571 m!6533592))

(declare-fun m!6533594 () Bool)

(assert (=> b!5531571 m!6533594))

(declare-fun m!6533596 () Bool)

(assert (=> b!5531571 m!6533596))

(declare-fun m!6533598 () Bool)

(assert (=> b!5531571 m!6533598))

(declare-fun m!6533600 () Bool)

(assert (=> b!5531571 m!6533600))

(declare-fun m!6533602 () Bool)

(assert (=> b!5531571 m!6533602))

(declare-fun m!6533604 () Bool)

(assert (=> b!5531571 m!6533604))

(declare-fun m!6533606 () Bool)

(assert (=> b!5531571 m!6533606))

(declare-fun m!6533608 () Bool)

(assert (=> b!5531571 m!6533608))

(declare-fun m!6533610 () Bool)

(assert (=> b!5531561 m!6533610))

(check-sat (not b!5531569) (not b!5531562) (not b!5531564) (not b!5531573) (not b!5531574) (not b!5531570) (not b!5531567) (not b!5531571) (not b!5531557) (not b!5531572) (not b!5531556) (not b!5531565) (not b!5531561) (not b!5531563) (not start!577218) (not b!5531559) (not setNonEmpty!36809) (not b!5531568) (not b!5531566) (not b!5531576) tp_is_empty!40291)
(check-sat)
(get-model)

(declare-fun b!5531652 () Bool)

(declare-fun e!3419408 () (InoxSet Context!9806))

(declare-fun e!3419407 () (InoxSet Context!9806))

(assert (=> b!5531652 (= e!3419408 e!3419407)))

(declare-fun c!968091 () Bool)

(assert (=> b!5531652 (= c!968091 ((_ is Concat!24364) r!7292))))

(declare-fun bm!410782 () Bool)

(declare-fun call!410790 () (InoxSet Context!9806))

(declare-fun call!410791 () (InoxSet Context!9806))

(assert (=> bm!410782 (= call!410790 call!410791)))

(declare-fun bm!410783 () Bool)

(declare-fun call!410788 () List!62856)

(declare-fun call!410787 () List!62856)

(assert (=> bm!410783 (= call!410788 call!410787)))

(declare-fun b!5531653 () Bool)

(declare-fun e!3419410 () (InoxSet Context!9806))

(declare-fun e!3419406 () (InoxSet Context!9806))

(assert (=> b!5531653 (= e!3419410 e!3419406)))

(declare-fun c!968094 () Bool)

(assert (=> b!5531653 (= c!968094 ((_ is Union!15519) r!7292))))

(declare-fun b!5531654 () Bool)

(assert (=> b!5531654 (= e!3419407 call!410790)))

(declare-fun d!1752959 () Bool)

(declare-fun c!968092 () Bool)

(assert (=> d!1752959 (= c!968092 (and ((_ is ElementMatch!15519) r!7292) (= (c!968061 r!7292) (h!69181 s!2326))))))

(assert (=> d!1752959 (= (derivationStepZipperDown!861 r!7292 lt!2248644 (h!69181 s!2326)) e!3419410)))

(declare-fun b!5531655 () Bool)

(declare-fun call!410792 () (InoxSet Context!9806))

(assert (=> b!5531655 (= e!3419408 ((_ map or) call!410792 call!410791))))

(declare-fun b!5531656 () Bool)

(declare-fun e!3419409 () (InoxSet Context!9806))

(assert (=> b!5531656 (= e!3419409 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5531657 () Bool)

(declare-fun c!968090 () Bool)

(declare-fun e!3419411 () Bool)

(assert (=> b!5531657 (= c!968090 e!3419411)))

(declare-fun res!2355220 () Bool)

(assert (=> b!5531657 (=> (not res!2355220) (not e!3419411))))

(assert (=> b!5531657 (= res!2355220 ((_ is Concat!24364) r!7292))))

(assert (=> b!5531657 (= e!3419406 e!3419408)))

(declare-fun b!5531658 () Bool)

(assert (=> b!5531658 (= e!3419409 call!410790)))

(declare-fun bm!410784 () Bool)

(declare-fun $colon$colon!1596 (List!62856 Regex!15519) List!62856)

(assert (=> bm!410784 (= call!410787 ($colon$colon!1596 (exprs!5403 lt!2248644) (ite (or c!968090 c!968091) (regTwo!31550 r!7292) r!7292)))))

(declare-fun b!5531659 () Bool)

(assert (=> b!5531659 (= e!3419410 (store ((as const (Array Context!9806 Bool)) false) lt!2248644 true))))

(declare-fun bm!410785 () Bool)

(declare-fun call!410789 () (InoxSet Context!9806))

(assert (=> bm!410785 (= call!410791 call!410789)))

(declare-fun bm!410786 () Bool)

(assert (=> bm!410786 (= call!410792 (derivationStepZipperDown!861 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)) (ite c!968094 lt!2248644 (Context!9807 call!410787)) (h!69181 s!2326)))))

(declare-fun b!5531660 () Bool)

(assert (=> b!5531660 (= e!3419411 (nullable!5553 (regOne!31550 r!7292)))))

(declare-fun b!5531661 () Bool)

(declare-fun c!968093 () Bool)

(assert (=> b!5531661 (= c!968093 ((_ is Star!15519) r!7292))))

(assert (=> b!5531661 (= e!3419407 e!3419409)))

(declare-fun bm!410787 () Bool)

(assert (=> bm!410787 (= call!410789 (derivationStepZipperDown!861 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))) (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788)) (h!69181 s!2326)))))

(declare-fun b!5531662 () Bool)

(assert (=> b!5531662 (= e!3419406 ((_ map or) call!410792 call!410789))))

(assert (= (and d!1752959 c!968092) b!5531659))

(assert (= (and d!1752959 (not c!968092)) b!5531653))

(assert (= (and b!5531653 c!968094) b!5531662))

(assert (= (and b!5531653 (not c!968094)) b!5531657))

(assert (= (and b!5531657 res!2355220) b!5531660))

(assert (= (and b!5531657 c!968090) b!5531655))

(assert (= (and b!5531657 (not c!968090)) b!5531652))

(assert (= (and b!5531652 c!968091) b!5531654))

(assert (= (and b!5531652 (not c!968091)) b!5531661))

(assert (= (and b!5531661 c!968093) b!5531658))

(assert (= (and b!5531661 (not c!968093)) b!5531656))

(assert (= (or b!5531654 b!5531658) bm!410783))

(assert (= (or b!5531654 b!5531658) bm!410782))

(assert (= (or b!5531655 bm!410783) bm!410784))

(assert (= (or b!5531655 bm!410782) bm!410785))

(assert (= (or b!5531662 bm!410785) bm!410787))

(assert (= (or b!5531662 b!5531655) bm!410786))

(declare-fun m!6533644 () Bool)

(assert (=> bm!410787 m!6533644))

(declare-fun m!6533646 () Bool)

(assert (=> b!5531659 m!6533646))

(declare-fun m!6533648 () Bool)

(assert (=> bm!410786 m!6533648))

(assert (=> b!5531660 m!6533600))

(declare-fun m!6533650 () Bool)

(assert (=> bm!410784 m!6533650))

(assert (=> b!5531556 d!1752959))

(declare-fun d!1752975 () Bool)

(declare-fun c!968121 () Bool)

(declare-fun e!3419445 () Bool)

(assert (=> d!1752975 (= c!968121 e!3419445)))

(declare-fun res!2355228 () Bool)

(assert (=> d!1752975 (=> (not res!2355228) (not e!3419445))))

(assert (=> d!1752975 (= res!2355228 ((_ is Cons!62732) (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))

(declare-fun e!3419446 () (InoxSet Context!9806))

(assert (=> d!1752975 (= (derivationStepZipperUp!787 (Context!9807 (Cons!62732 r!7292 Nil!62732)) (h!69181 s!2326)) e!3419446)))

(declare-fun b!5531720 () Bool)

(declare-fun call!410820 () (InoxSet Context!9806))

(assert (=> b!5531720 (= e!3419446 ((_ map or) call!410820 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69181 s!2326))))))

(declare-fun b!5531721 () Bool)

(declare-fun e!3419447 () (InoxSet Context!9806))

(assert (=> b!5531721 (= e!3419447 call!410820)))

(declare-fun b!5531722 () Bool)

(assert (=> b!5531722 (= e!3419446 e!3419447)))

(declare-fun c!968122 () Bool)

(assert (=> b!5531722 (= c!968122 ((_ is Cons!62732) (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))

(declare-fun b!5531723 () Bool)

(assert (=> b!5531723 (= e!3419445 (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(declare-fun bm!410815 () Bool)

(assert (=> bm!410815 (= call!410820 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69181 s!2326)))))

(declare-fun b!5531724 () Bool)

(assert (=> b!5531724 (= e!3419447 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1752975 res!2355228) b!5531723))

(assert (= (and d!1752975 c!968121) b!5531720))

(assert (= (and d!1752975 (not c!968121)) b!5531722))

(assert (= (and b!5531722 c!968122) b!5531721))

(assert (= (and b!5531722 (not c!968122)) b!5531724))

(assert (= (or b!5531720 b!5531721) bm!410815))

(declare-fun m!6533686 () Bool)

(assert (=> b!5531720 m!6533686))

(declare-fun m!6533688 () Bool)

(assert (=> b!5531723 m!6533688))

(declare-fun m!6533690 () Bool)

(assert (=> bm!410815 m!6533690))

(assert (=> b!5531556 d!1752975))

(declare-fun bs!1279267 () Bool)

(declare-fun d!1752989 () Bool)

(assert (= bs!1279267 (and d!1752989 b!5531572)))

(declare-fun lambda!296972 () Int)

(assert (=> bs!1279267 (= lambda!296972 lambda!296961)))

(assert (=> d!1752989 true))

(assert (=> d!1752989 (= (derivationStepZipper!1624 z!1189 (h!69181 s!2326)) (flatMap!1132 z!1189 lambda!296972))))

(declare-fun bs!1279271 () Bool)

(assert (= bs!1279271 d!1752989))

(declare-fun m!6533712 () Bool)

(assert (=> bs!1279271 m!6533712))

(assert (=> b!5531556 d!1752989))

(declare-fun bs!1279278 () Bool)

(declare-fun b!5531866 () Bool)

(assert (= bs!1279278 (and b!5531866 b!5531570)))

(declare-fun lambda!296985 () Int)

(assert (=> bs!1279278 (not (= lambda!296985 lambda!296959))))

(assert (=> bs!1279278 (not (= lambda!296985 lambda!296960))))

(assert (=> b!5531866 true))

(assert (=> b!5531866 true))

(declare-fun bs!1279279 () Bool)

(declare-fun b!5531865 () Bool)

(assert (= bs!1279279 (and b!5531865 b!5531570)))

(declare-fun lambda!296986 () Int)

(assert (=> bs!1279279 (not (= lambda!296986 lambda!296959))))

(assert (=> bs!1279279 (= lambda!296986 lambda!296960)))

(declare-fun bs!1279280 () Bool)

(assert (= bs!1279280 (and b!5531865 b!5531866)))

(assert (=> bs!1279280 (not (= lambda!296986 lambda!296985))))

(assert (=> b!5531865 true))

(assert (=> b!5531865 true))

(declare-fun e!3419530 () Bool)

(declare-fun call!410842 () Bool)

(assert (=> b!5531865 (= e!3419530 call!410842)))

(declare-fun e!3419529 () Bool)

(assert (=> b!5531866 (= e!3419529 call!410842)))

(declare-fun d!1752999 () Bool)

(declare-fun c!968163 () Bool)

(assert (=> d!1752999 (= c!968163 ((_ is EmptyExpr!15519) r!7292))))

(declare-fun e!3419524 () Bool)

(assert (=> d!1752999 (= (matchRSpec!2622 r!7292 s!2326) e!3419524)))

(declare-fun b!5531867 () Bool)

(declare-fun e!3419526 () Bool)

(declare-fun e!3419525 () Bool)

(assert (=> b!5531867 (= e!3419526 e!3419525)))

(declare-fun res!2355294 () Bool)

(assert (=> b!5531867 (= res!2355294 (matchRSpec!2622 (regOne!31551 r!7292) s!2326))))

(assert (=> b!5531867 (=> res!2355294 e!3419525)))

(declare-fun b!5531868 () Bool)

(declare-fun c!968166 () Bool)

(assert (=> b!5531868 (= c!968166 ((_ is Union!15519) r!7292))))

(declare-fun e!3419528 () Bool)

(assert (=> b!5531868 (= e!3419528 e!3419526)))

(declare-fun bm!410836 () Bool)

(declare-fun c!968165 () Bool)

(assert (=> bm!410836 (= call!410842 (Exists!2619 (ite c!968165 lambda!296985 lambda!296986)))))

(declare-fun b!5531869 () Bool)

(assert (=> b!5531869 (= e!3419528 (= s!2326 (Cons!62733 (c!968061 r!7292) Nil!62733)))))

(declare-fun b!5531870 () Bool)

(declare-fun c!968164 () Bool)

(assert (=> b!5531870 (= c!968164 ((_ is ElementMatch!15519) r!7292))))

(declare-fun e!3419527 () Bool)

(assert (=> b!5531870 (= e!3419527 e!3419528)))

(declare-fun b!5531871 () Bool)

(declare-fun call!410841 () Bool)

(assert (=> b!5531871 (= e!3419524 call!410841)))

(declare-fun b!5531872 () Bool)

(assert (=> b!5531872 (= e!3419525 (matchRSpec!2622 (regTwo!31551 r!7292) s!2326))))

(declare-fun b!5531873 () Bool)

(assert (=> b!5531873 (= e!3419524 e!3419527)))

(declare-fun res!2355295 () Bool)

(assert (=> b!5531873 (= res!2355295 (not ((_ is EmptyLang!15519) r!7292)))))

(assert (=> b!5531873 (=> (not res!2355295) (not e!3419527))))

(declare-fun b!5531874 () Bool)

(assert (=> b!5531874 (= e!3419526 e!3419530)))

(assert (=> b!5531874 (= c!968165 ((_ is Star!15519) r!7292))))

(declare-fun b!5531875 () Bool)

(declare-fun res!2355293 () Bool)

(assert (=> b!5531875 (=> res!2355293 e!3419529)))

(assert (=> b!5531875 (= res!2355293 call!410841)))

(assert (=> b!5531875 (= e!3419530 e!3419529)))

(declare-fun bm!410837 () Bool)

(declare-fun isEmpty!34524 (List!62857) Bool)

(assert (=> bm!410837 (= call!410841 (isEmpty!34524 s!2326))))

(assert (= (and d!1752999 c!968163) b!5531871))

(assert (= (and d!1752999 (not c!968163)) b!5531873))

(assert (= (and b!5531873 res!2355295) b!5531870))

(assert (= (and b!5531870 c!968164) b!5531869))

(assert (= (and b!5531870 (not c!968164)) b!5531868))

(assert (= (and b!5531868 c!968166) b!5531867))

(assert (= (and b!5531868 (not c!968166)) b!5531874))

(assert (= (and b!5531867 (not res!2355294)) b!5531872))

(assert (= (and b!5531874 c!968165) b!5531875))

(assert (= (and b!5531874 (not c!968165)) b!5531865))

(assert (= (and b!5531875 (not res!2355293)) b!5531866))

(assert (= (or b!5531866 b!5531865) bm!410836))

(assert (= (or b!5531871 b!5531875) bm!410837))

(declare-fun m!6533738 () Bool)

(assert (=> b!5531867 m!6533738))

(declare-fun m!6533740 () Bool)

(assert (=> bm!410836 m!6533740))

(declare-fun m!6533742 () Bool)

(assert (=> b!5531872 m!6533742))

(declare-fun m!6533744 () Bool)

(assert (=> bm!410837 m!6533744))

(assert (=> b!5531567 d!1752999))

(declare-fun bm!410840 () Bool)

(declare-fun call!410845 () Bool)

(assert (=> bm!410840 (= call!410845 (isEmpty!34524 s!2326))))

(declare-fun b!5531935 () Bool)

(declare-fun e!3419565 () Bool)

(declare-fun e!3419567 () Bool)

(assert (=> b!5531935 (= e!3419565 e!3419567)))

(declare-fun res!2355338 () Bool)

(assert (=> b!5531935 (=> (not res!2355338) (not e!3419567))))

(declare-fun lt!2248689 () Bool)

(assert (=> b!5531935 (= res!2355338 (not lt!2248689))))

(declare-fun b!5531936 () Bool)

(declare-fun e!3419562 () Bool)

(declare-fun head!11837 (List!62857) C!31308)

(assert (=> b!5531936 (= e!3419562 (= (head!11837 s!2326) (c!968061 r!7292)))))

(declare-fun b!5531937 () Bool)

(declare-fun e!3419564 () Bool)

(assert (=> b!5531937 (= e!3419567 e!3419564)))

(declare-fun res!2355332 () Bool)

(assert (=> b!5531937 (=> res!2355332 e!3419564)))

(assert (=> b!5531937 (= res!2355332 call!410845)))

(declare-fun b!5531939 () Bool)

(declare-fun e!3419563 () Bool)

(assert (=> b!5531939 (= e!3419563 (= lt!2248689 call!410845))))

(declare-fun b!5531940 () Bool)

(declare-fun e!3419568 () Bool)

(assert (=> b!5531940 (= e!3419568 (nullable!5553 r!7292))))

(declare-fun b!5531941 () Bool)

(declare-fun res!2355337 () Bool)

(assert (=> b!5531941 (=> (not res!2355337) (not e!3419562))))

(assert (=> b!5531941 (= res!2355337 (not call!410845))))

(declare-fun b!5531942 () Bool)

(declare-fun e!3419566 () Bool)

(assert (=> b!5531942 (= e!3419566 (not lt!2248689))))

(declare-fun b!5531943 () Bool)

(declare-fun res!2355336 () Bool)

(assert (=> b!5531943 (=> (not res!2355336) (not e!3419562))))

(declare-fun tail!10932 (List!62857) List!62857)

(assert (=> b!5531943 (= res!2355336 (isEmpty!34524 (tail!10932 s!2326)))))

(declare-fun b!5531944 () Bool)

(declare-fun res!2355335 () Bool)

(assert (=> b!5531944 (=> res!2355335 e!3419565)))

(assert (=> b!5531944 (= res!2355335 e!3419562)))

(declare-fun res!2355333 () Bool)

(assert (=> b!5531944 (=> (not res!2355333) (not e!3419562))))

(assert (=> b!5531944 (= res!2355333 lt!2248689)))

(declare-fun d!1753013 () Bool)

(assert (=> d!1753013 e!3419563))

(declare-fun c!968179 () Bool)

(assert (=> d!1753013 (= c!968179 ((_ is EmptyExpr!15519) r!7292))))

(assert (=> d!1753013 (= lt!2248689 e!3419568)))

(declare-fun c!968181 () Bool)

(assert (=> d!1753013 (= c!968181 (isEmpty!34524 s!2326))))

(assert (=> d!1753013 (validRegex!7255 r!7292)))

(assert (=> d!1753013 (= (matchR!7704 r!7292 s!2326) lt!2248689)))

(declare-fun b!5531938 () Bool)

(declare-fun derivativeStep!4382 (Regex!15519 C!31308) Regex!15519)

(assert (=> b!5531938 (= e!3419568 (matchR!7704 (derivativeStep!4382 r!7292 (head!11837 s!2326)) (tail!10932 s!2326)))))

(declare-fun b!5531945 () Bool)

(declare-fun res!2355334 () Bool)

(assert (=> b!5531945 (=> res!2355334 e!3419564)))

(assert (=> b!5531945 (= res!2355334 (not (isEmpty!34524 (tail!10932 s!2326))))))

(declare-fun b!5531946 () Bool)

(declare-fun res!2355331 () Bool)

(assert (=> b!5531946 (=> res!2355331 e!3419565)))

(assert (=> b!5531946 (= res!2355331 (not ((_ is ElementMatch!15519) r!7292)))))

(assert (=> b!5531946 (= e!3419566 e!3419565)))

(declare-fun b!5531947 () Bool)

(assert (=> b!5531947 (= e!3419564 (not (= (head!11837 s!2326) (c!968061 r!7292))))))

(declare-fun b!5531948 () Bool)

(assert (=> b!5531948 (= e!3419563 e!3419566)))

(declare-fun c!968180 () Bool)

(assert (=> b!5531948 (= c!968180 ((_ is EmptyLang!15519) r!7292))))

(assert (= (and d!1753013 c!968181) b!5531940))

(assert (= (and d!1753013 (not c!968181)) b!5531938))

(assert (= (and d!1753013 c!968179) b!5531939))

(assert (= (and d!1753013 (not c!968179)) b!5531948))

(assert (= (and b!5531948 c!968180) b!5531942))

(assert (= (and b!5531948 (not c!968180)) b!5531946))

(assert (= (and b!5531946 (not res!2355331)) b!5531944))

(assert (= (and b!5531944 res!2355333) b!5531941))

(assert (= (and b!5531941 res!2355337) b!5531943))

(assert (= (and b!5531943 res!2355336) b!5531936))

(assert (= (and b!5531944 (not res!2355335)) b!5531935))

(assert (= (and b!5531935 res!2355338) b!5531937))

(assert (= (and b!5531937 (not res!2355332)) b!5531945))

(assert (= (and b!5531945 (not res!2355334)) b!5531947))

(assert (= (or b!5531939 b!5531937 b!5531941) bm!410840))

(declare-fun m!6533778 () Bool)

(assert (=> b!5531947 m!6533778))

(declare-fun m!6533780 () Bool)

(assert (=> b!5531943 m!6533780))

(assert (=> b!5531943 m!6533780))

(declare-fun m!6533782 () Bool)

(assert (=> b!5531943 m!6533782))

(assert (=> b!5531945 m!6533780))

(assert (=> b!5531945 m!6533780))

(assert (=> b!5531945 m!6533782))

(assert (=> bm!410840 m!6533744))

(declare-fun m!6533784 () Bool)

(assert (=> b!5531940 m!6533784))

(assert (=> b!5531938 m!6533778))

(assert (=> b!5531938 m!6533778))

(declare-fun m!6533786 () Bool)

(assert (=> b!5531938 m!6533786))

(assert (=> b!5531938 m!6533780))

(assert (=> b!5531938 m!6533786))

(assert (=> b!5531938 m!6533780))

(declare-fun m!6533788 () Bool)

(assert (=> b!5531938 m!6533788))

(assert (=> d!1753013 m!6533744))

(assert (=> d!1753013 m!6533554))

(assert (=> b!5531936 m!6533778))

(assert (=> b!5531567 d!1753013))

(declare-fun d!1753023 () Bool)

(assert (=> d!1753023 (= (matchR!7704 r!7292 s!2326) (matchRSpec!2622 r!7292 s!2326))))

(declare-fun lt!2248695 () Unit!155498)

(declare-fun choose!42034 (Regex!15519 List!62857) Unit!155498)

(assert (=> d!1753023 (= lt!2248695 (choose!42034 r!7292 s!2326))))

(assert (=> d!1753023 (validRegex!7255 r!7292)))

(assert (=> d!1753023 (= (mainMatchTheorem!2622 r!7292 s!2326) lt!2248695)))

(declare-fun bs!1279293 () Bool)

(assert (= bs!1279293 d!1753023))

(assert (=> bs!1279293 m!6533542))

(assert (=> bs!1279293 m!6533540))

(declare-fun m!6533798 () Bool)

(assert (=> bs!1279293 m!6533798))

(assert (=> bs!1279293 m!6533554))

(assert (=> b!5531567 d!1753023))

(declare-fun b!5532034 () Bool)

(declare-fun e!3419625 () Regex!15519)

(declare-fun e!3419629 () Regex!15519)

(assert (=> b!5532034 (= e!3419625 e!3419629)))

(declare-fun c!968211 () Bool)

(assert (=> b!5532034 (= c!968211 ((_ is Cons!62732) (unfocusZipperList!947 zl!343)))))

(declare-fun b!5532035 () Bool)

(declare-fun e!3419627 () Bool)

(declare-fun lt!2248701 () Regex!15519)

(declare-fun isEmptyLang!1099 (Regex!15519) Bool)

(assert (=> b!5532035 (= e!3419627 (isEmptyLang!1099 lt!2248701))))

(declare-fun b!5532036 () Bool)

(assert (=> b!5532036 (= e!3419625 (h!69180 (unfocusZipperList!947 zl!343)))))

(declare-fun b!5532037 () Bool)

(declare-fun e!3419626 () Bool)

(declare-fun isUnion!529 (Regex!15519) Bool)

(assert (=> b!5532037 (= e!3419626 (isUnion!529 lt!2248701))))

(declare-fun b!5532038 () Bool)

(assert (=> b!5532038 (= e!3419629 EmptyLang!15519)))

(declare-fun d!1753029 () Bool)

(declare-fun e!3419628 () Bool)

(assert (=> d!1753029 e!3419628))

(declare-fun res!2355372 () Bool)

(assert (=> d!1753029 (=> (not res!2355372) (not e!3419628))))

(assert (=> d!1753029 (= res!2355372 (validRegex!7255 lt!2248701))))

(assert (=> d!1753029 (= lt!2248701 e!3419625)))

(declare-fun c!968208 () Bool)

(declare-fun e!3419624 () Bool)

(assert (=> d!1753029 (= c!968208 e!3419624)))

(declare-fun res!2355373 () Bool)

(assert (=> d!1753029 (=> (not res!2355373) (not e!3419624))))

(assert (=> d!1753029 (= res!2355373 ((_ is Cons!62732) (unfocusZipperList!947 zl!343)))))

(declare-fun lambda!297001 () Int)

(declare-fun forall!14697 (List!62856 Int) Bool)

(assert (=> d!1753029 (forall!14697 (unfocusZipperList!947 zl!343) lambda!297001)))

(assert (=> d!1753029 (= (generalisedUnion!1382 (unfocusZipperList!947 zl!343)) lt!2248701)))

(declare-fun b!5532039 () Bool)

(declare-fun head!11838 (List!62856) Regex!15519)

(assert (=> b!5532039 (= e!3419626 (= lt!2248701 (head!11838 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532040 () Bool)

(assert (=> b!5532040 (= e!3419629 (Union!15519 (h!69180 (unfocusZipperList!947 zl!343)) (generalisedUnion!1382 (t!376115 (unfocusZipperList!947 zl!343)))))))

(declare-fun b!5532041 () Bool)

(assert (=> b!5532041 (= e!3419624 (isEmpty!34522 (t!376115 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532042 () Bool)

(assert (=> b!5532042 (= e!3419628 e!3419627)))

(declare-fun c!968210 () Bool)

(assert (=> b!5532042 (= c!968210 (isEmpty!34522 (unfocusZipperList!947 zl!343)))))

(declare-fun b!5532043 () Bool)

(assert (=> b!5532043 (= e!3419627 e!3419626)))

(declare-fun c!968209 () Bool)

(declare-fun tail!10933 (List!62856) List!62856)

(assert (=> b!5532043 (= c!968209 (isEmpty!34522 (tail!10933 (unfocusZipperList!947 zl!343))))))

(assert (= (and d!1753029 res!2355373) b!5532041))

(assert (= (and d!1753029 c!968208) b!5532036))

(assert (= (and d!1753029 (not c!968208)) b!5532034))

(assert (= (and b!5532034 c!968211) b!5532040))

(assert (= (and b!5532034 (not c!968211)) b!5532038))

(assert (= (and d!1753029 res!2355372) b!5532042))

(assert (= (and b!5532042 c!968210) b!5532035))

(assert (= (and b!5532042 (not c!968210)) b!5532043))

(assert (= (and b!5532043 c!968209) b!5532039))

(assert (= (and b!5532043 (not c!968209)) b!5532037))

(declare-fun m!6533826 () Bool)

(assert (=> b!5532041 m!6533826))

(declare-fun m!6533828 () Bool)

(assert (=> b!5532040 m!6533828))

(declare-fun m!6533830 () Bool)

(assert (=> b!5532035 m!6533830))

(assert (=> b!5532043 m!6533550))

(declare-fun m!6533832 () Bool)

(assert (=> b!5532043 m!6533832))

(assert (=> b!5532043 m!6533832))

(declare-fun m!6533834 () Bool)

(assert (=> b!5532043 m!6533834))

(assert (=> b!5532042 m!6533550))

(declare-fun m!6533836 () Bool)

(assert (=> b!5532042 m!6533836))

(declare-fun m!6533838 () Bool)

(assert (=> b!5532037 m!6533838))

(assert (=> b!5532039 m!6533550))

(declare-fun m!6533840 () Bool)

(assert (=> b!5532039 m!6533840))

(declare-fun m!6533842 () Bool)

(assert (=> d!1753029 m!6533842))

(assert (=> d!1753029 m!6533550))

(declare-fun m!6533844 () Bool)

(assert (=> d!1753029 m!6533844))

(assert (=> b!5531576 d!1753029))

(declare-fun bs!1279303 () Bool)

(declare-fun d!1753035 () Bool)

(assert (= bs!1279303 (and d!1753035 d!1753029)))

(declare-fun lambda!297007 () Int)

(assert (=> bs!1279303 (= lambda!297007 lambda!297001)))

(declare-fun lt!2248708 () List!62856)

(assert (=> d!1753035 (forall!14697 lt!2248708 lambda!297007)))

(declare-fun e!3419654 () List!62856)

(assert (=> d!1753035 (= lt!2248708 e!3419654)))

(declare-fun c!968219 () Bool)

(assert (=> d!1753035 (= c!968219 ((_ is Cons!62734) zl!343))))

(assert (=> d!1753035 (= (unfocusZipperList!947 zl!343) lt!2248708)))

(declare-fun b!5532083 () Bool)

(assert (=> b!5532083 (= e!3419654 (Cons!62732 (generalisedConcat!1134 (exprs!5403 (h!69182 zl!343))) (unfocusZipperList!947 (t!376117 zl!343))))))

(declare-fun b!5532084 () Bool)

(assert (=> b!5532084 (= e!3419654 Nil!62732)))

(assert (= (and d!1753035 c!968219) b!5532083))

(assert (= (and d!1753035 (not c!968219)) b!5532084))

(declare-fun m!6533868 () Bool)

(assert (=> d!1753035 m!6533868))

(assert (=> b!5532083 m!6533548))

(declare-fun m!6533870 () Bool)

(assert (=> b!5532083 m!6533870))

(assert (=> b!5531576 d!1753035))

(declare-fun d!1753043 () Bool)

(assert (=> d!1753043 (= (isEmpty!34522 (t!376115 (exprs!5403 (h!69182 zl!343)))) ((_ is Nil!62732) (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> b!5531568 d!1753043))

(declare-fun b!5532133 () Bool)

(declare-fun e!3419682 () Bool)

(declare-fun call!410862 () Bool)

(assert (=> b!5532133 (= e!3419682 call!410862)))

(declare-fun bm!410857 () Bool)

(declare-fun call!410863 () Bool)

(assert (=> bm!410857 (= call!410863 call!410862)))

(declare-fun b!5532134 () Bool)

(declare-fun res!2355389 () Bool)

(declare-fun e!3419677 () Bool)

(assert (=> b!5532134 (=> res!2355389 e!3419677)))

(assert (=> b!5532134 (= res!2355389 (not ((_ is Concat!24364) r!7292)))))

(declare-fun e!3419679 () Bool)

(assert (=> b!5532134 (= e!3419679 e!3419677)))

(declare-fun b!5532135 () Bool)

(declare-fun e!3419680 () Bool)

(assert (=> b!5532135 (= e!3419680 call!410863)))

(declare-fun c!968224 () Bool)

(declare-fun c!968225 () Bool)

(declare-fun bm!410858 () Bool)

(assert (=> bm!410858 (= call!410862 (validRegex!7255 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))

(declare-fun b!5532137 () Bool)

(declare-fun e!3419678 () Bool)

(assert (=> b!5532137 (= e!3419678 e!3419679)))

(assert (=> b!5532137 (= c!968225 ((_ is Union!15519) r!7292))))

(declare-fun b!5532138 () Bool)

(declare-fun e!3419681 () Bool)

(assert (=> b!5532138 (= e!3419677 e!3419681)))

(declare-fun res!2355385 () Bool)

(assert (=> b!5532138 (=> (not res!2355385) (not e!3419681))))

(declare-fun call!410864 () Bool)

(assert (=> b!5532138 (= res!2355385 call!410864)))

(declare-fun b!5532139 () Bool)

(assert (=> b!5532139 (= e!3419678 e!3419682)))

(declare-fun res!2355387 () Bool)

(assert (=> b!5532139 (= res!2355387 (not (nullable!5553 (reg!15848 r!7292))))))

(assert (=> b!5532139 (=> (not res!2355387) (not e!3419682))))

(declare-fun bm!410859 () Bool)

(assert (=> bm!410859 (= call!410864 (validRegex!7255 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(declare-fun b!5532140 () Bool)

(assert (=> b!5532140 (= e!3419681 call!410863)))

(declare-fun b!5532141 () Bool)

(declare-fun res!2355386 () Bool)

(assert (=> b!5532141 (=> (not res!2355386) (not e!3419680))))

(assert (=> b!5532141 (= res!2355386 call!410864)))

(assert (=> b!5532141 (= e!3419679 e!3419680)))

(declare-fun d!1753045 () Bool)

(declare-fun res!2355388 () Bool)

(declare-fun e!3419676 () Bool)

(assert (=> d!1753045 (=> res!2355388 e!3419676)))

(assert (=> d!1753045 (= res!2355388 ((_ is ElementMatch!15519) r!7292))))

(assert (=> d!1753045 (= (validRegex!7255 r!7292) e!3419676)))

(declare-fun b!5532136 () Bool)

(assert (=> b!5532136 (= e!3419676 e!3419678)))

(assert (=> b!5532136 (= c!968224 ((_ is Star!15519) r!7292))))

(assert (= (and d!1753045 (not res!2355388)) b!5532136))

(assert (= (and b!5532136 c!968224) b!5532139))

(assert (= (and b!5532136 (not c!968224)) b!5532137))

(assert (= (and b!5532139 res!2355387) b!5532133))

(assert (= (and b!5532137 c!968225) b!5532141))

(assert (= (and b!5532137 (not c!968225)) b!5532134))

(assert (= (and b!5532141 res!2355386) b!5532135))

(assert (= (and b!5532134 (not res!2355389)) b!5532138))

(assert (= (and b!5532138 res!2355385) b!5532140))

(assert (= (or b!5532135 b!5532140) bm!410857))

(assert (= (or b!5532141 b!5532138) bm!410859))

(assert (= (or b!5532133 bm!410857) bm!410858))

(declare-fun m!6533872 () Bool)

(assert (=> bm!410858 m!6533872))

(declare-fun m!6533874 () Bool)

(assert (=> b!5532139 m!6533874))

(declare-fun m!6533876 () Bool)

(assert (=> bm!410859 m!6533876))

(assert (=> start!577218 d!1753045))

(declare-fun d!1753053 () Bool)

(assert (=> d!1753053 (= (isEmpty!34521 (t!376117 zl!343)) ((_ is Nil!62734) (t!376117 zl!343)))))

(assert (=> b!5531557 d!1753053))

(declare-fun bs!1279307 () Bool)

(declare-fun d!1753055 () Bool)

(assert (= bs!1279307 (and d!1753055 d!1753029)))

(declare-fun lambda!297010 () Int)

(assert (=> bs!1279307 (= lambda!297010 lambda!297001)))

(declare-fun bs!1279308 () Bool)

(assert (= bs!1279308 (and d!1753055 d!1753035)))

(assert (=> bs!1279308 (= lambda!297010 lambda!297007)))

(declare-fun b!5532162 () Bool)

(declare-fun e!3419697 () Bool)

(declare-fun lt!2248711 () Regex!15519)

(declare-fun isConcat!612 (Regex!15519) Bool)

(assert (=> b!5532162 (= e!3419697 (isConcat!612 lt!2248711))))

(declare-fun b!5532163 () Bool)

(declare-fun e!3419700 () Regex!15519)

(assert (=> b!5532163 (= e!3419700 (h!69180 (exprs!5403 (h!69182 zl!343))))))

(declare-fun b!5532165 () Bool)

(declare-fun e!3419696 () Bool)

(declare-fun e!3419698 () Bool)

(assert (=> b!5532165 (= e!3419696 e!3419698)))

(declare-fun c!968237 () Bool)

(assert (=> b!5532165 (= c!968237 (isEmpty!34522 (exprs!5403 (h!69182 zl!343))))))

(declare-fun b!5532166 () Bool)

(declare-fun isEmptyExpr!1089 (Regex!15519) Bool)

(assert (=> b!5532166 (= e!3419698 (isEmptyExpr!1089 lt!2248711))))

(declare-fun b!5532167 () Bool)

(assert (=> b!5532167 (= e!3419697 (= lt!2248711 (head!11838 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532168 () Bool)

(declare-fun e!3419695 () Bool)

(assert (=> b!5532168 (= e!3419695 (isEmpty!34522 (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532169 () Bool)

(declare-fun e!3419699 () Regex!15519)

(assert (=> b!5532169 (= e!3419699 (Concat!24364 (h!69180 (exprs!5403 (h!69182 zl!343))) (generalisedConcat!1134 (t!376115 (exprs!5403 (h!69182 zl!343))))))))

(assert (=> d!1753055 e!3419696))

(declare-fun res!2355395 () Bool)

(assert (=> d!1753055 (=> (not res!2355395) (not e!3419696))))

(assert (=> d!1753055 (= res!2355395 (validRegex!7255 lt!2248711))))

(assert (=> d!1753055 (= lt!2248711 e!3419700)))

(declare-fun c!968234 () Bool)

(assert (=> d!1753055 (= c!968234 e!3419695)))

(declare-fun res!2355394 () Bool)

(assert (=> d!1753055 (=> (not res!2355394) (not e!3419695))))

(assert (=> d!1753055 (= res!2355394 ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343))))))

(assert (=> d!1753055 (forall!14697 (exprs!5403 (h!69182 zl!343)) lambda!297010)))

(assert (=> d!1753055 (= (generalisedConcat!1134 (exprs!5403 (h!69182 zl!343))) lt!2248711)))

(declare-fun b!5532164 () Bool)

(assert (=> b!5532164 (= e!3419698 e!3419697)))

(declare-fun c!968236 () Bool)

(assert (=> b!5532164 (= c!968236 (isEmpty!34522 (tail!10933 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532170 () Bool)

(assert (=> b!5532170 (= e!3419700 e!3419699)))

(declare-fun c!968235 () Bool)

(assert (=> b!5532170 (= c!968235 ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343))))))

(declare-fun b!5532171 () Bool)

(assert (=> b!5532171 (= e!3419699 EmptyExpr!15519)))

(assert (= (and d!1753055 res!2355394) b!5532168))

(assert (= (and d!1753055 c!968234) b!5532163))

(assert (= (and d!1753055 (not c!968234)) b!5532170))

(assert (= (and b!5532170 c!968235) b!5532169))

(assert (= (and b!5532170 (not c!968235)) b!5532171))

(assert (= (and d!1753055 res!2355395) b!5532165))

(assert (= (and b!5532165 c!968237) b!5532166))

(assert (= (and b!5532165 (not c!968237)) b!5532164))

(assert (= (and b!5532164 c!968236) b!5532167))

(assert (= (and b!5532164 (not c!968236)) b!5532162))

(declare-fun m!6533878 () Bool)

(assert (=> b!5532165 m!6533878))

(declare-fun m!6533880 () Bool)

(assert (=> b!5532167 m!6533880))

(assert (=> b!5532168 m!6533586))

(declare-fun m!6533882 () Bool)

(assert (=> b!5532164 m!6533882))

(assert (=> b!5532164 m!6533882))

(declare-fun m!6533884 () Bool)

(assert (=> b!5532164 m!6533884))

(declare-fun m!6533886 () Bool)

(assert (=> b!5532162 m!6533886))

(declare-fun m!6533888 () Bool)

(assert (=> b!5532169 m!6533888))

(declare-fun m!6533890 () Bool)

(assert (=> b!5532166 m!6533890))

(declare-fun m!6533892 () Bool)

(assert (=> d!1753055 m!6533892))

(declare-fun m!6533894 () Bool)

(assert (=> d!1753055 m!6533894))

(assert (=> b!5531569 d!1753055))

(declare-fun b!5532172 () Bool)

(declare-fun e!3419703 () (InoxSet Context!9806))

(declare-fun e!3419702 () (InoxSet Context!9806))

(assert (=> b!5532172 (= e!3419703 e!3419702)))

(declare-fun c!968239 () Bool)

(assert (=> b!5532172 (= c!968239 ((_ is Concat!24364) (regTwo!31550 r!7292)))))

(declare-fun bm!410860 () Bool)

(declare-fun call!410868 () (InoxSet Context!9806))

(declare-fun call!410869 () (InoxSet Context!9806))

(assert (=> bm!410860 (= call!410868 call!410869)))

(declare-fun bm!410861 () Bool)

(declare-fun call!410866 () List!62856)

(declare-fun call!410865 () List!62856)

(assert (=> bm!410861 (= call!410866 call!410865)))

(declare-fun b!5532173 () Bool)

(declare-fun e!3419705 () (InoxSet Context!9806))

(declare-fun e!3419701 () (InoxSet Context!9806))

(assert (=> b!5532173 (= e!3419705 e!3419701)))

(declare-fun c!968242 () Bool)

(assert (=> b!5532173 (= c!968242 ((_ is Union!15519) (regTwo!31550 r!7292)))))

(declare-fun b!5532174 () Bool)

(assert (=> b!5532174 (= e!3419702 call!410868)))

(declare-fun d!1753057 () Bool)

(declare-fun c!968240 () Bool)

(assert (=> d!1753057 (= c!968240 (and ((_ is ElementMatch!15519) (regTwo!31550 r!7292)) (= (c!968061 (regTwo!31550 r!7292)) (h!69181 s!2326))))))

(assert (=> d!1753057 (= (derivationStepZipperDown!861 (regTwo!31550 r!7292) lt!2248644 (h!69181 s!2326)) e!3419705)))

(declare-fun b!5532175 () Bool)

(declare-fun call!410870 () (InoxSet Context!9806))

(assert (=> b!5532175 (= e!3419703 ((_ map or) call!410870 call!410869))))

(declare-fun b!5532176 () Bool)

(declare-fun e!3419704 () (InoxSet Context!9806))

(assert (=> b!5532176 (= e!3419704 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532177 () Bool)

(declare-fun c!968238 () Bool)

(declare-fun e!3419706 () Bool)

(assert (=> b!5532177 (= c!968238 e!3419706)))

(declare-fun res!2355396 () Bool)

(assert (=> b!5532177 (=> (not res!2355396) (not e!3419706))))

(assert (=> b!5532177 (= res!2355396 ((_ is Concat!24364) (regTwo!31550 r!7292)))))

(assert (=> b!5532177 (= e!3419701 e!3419703)))

(declare-fun b!5532178 () Bool)

(assert (=> b!5532178 (= e!3419704 call!410868)))

(declare-fun bm!410862 () Bool)

(assert (=> bm!410862 (= call!410865 ($colon$colon!1596 (exprs!5403 lt!2248644) (ite (or c!968238 c!968239) (regTwo!31550 (regTwo!31550 r!7292)) (regTwo!31550 r!7292))))))

(declare-fun b!5532179 () Bool)

(assert (=> b!5532179 (= e!3419705 (store ((as const (Array Context!9806 Bool)) false) lt!2248644 true))))

(declare-fun bm!410863 () Bool)

(declare-fun call!410867 () (InoxSet Context!9806))

(assert (=> bm!410863 (= call!410869 call!410867)))

(declare-fun bm!410864 () Bool)

(assert (=> bm!410864 (= call!410870 (derivationStepZipperDown!861 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))) (ite c!968242 lt!2248644 (Context!9807 call!410865)) (h!69181 s!2326)))))

(declare-fun b!5532180 () Bool)

(assert (=> b!5532180 (= e!3419706 (nullable!5553 (regOne!31550 (regTwo!31550 r!7292))))))

(declare-fun b!5532181 () Bool)

(declare-fun c!968241 () Bool)

(assert (=> b!5532181 (= c!968241 ((_ is Star!15519) (regTwo!31550 r!7292)))))

(assert (=> b!5532181 (= e!3419702 e!3419704)))

(declare-fun bm!410865 () Bool)

(assert (=> bm!410865 (= call!410867 (derivationStepZipperDown!861 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))) (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866)) (h!69181 s!2326)))))

(declare-fun b!5532182 () Bool)

(assert (=> b!5532182 (= e!3419701 ((_ map or) call!410870 call!410867))))

(assert (= (and d!1753057 c!968240) b!5532179))

(assert (= (and d!1753057 (not c!968240)) b!5532173))

(assert (= (and b!5532173 c!968242) b!5532182))

(assert (= (and b!5532173 (not c!968242)) b!5532177))

(assert (= (and b!5532177 res!2355396) b!5532180))

(assert (= (and b!5532177 c!968238) b!5532175))

(assert (= (and b!5532177 (not c!968238)) b!5532172))

(assert (= (and b!5532172 c!968239) b!5532174))

(assert (= (and b!5532172 (not c!968239)) b!5532181))

(assert (= (and b!5532181 c!968241) b!5532178))

(assert (= (and b!5532181 (not c!968241)) b!5532176))

(assert (= (or b!5532174 b!5532178) bm!410861))

(assert (= (or b!5532174 b!5532178) bm!410860))

(assert (= (or b!5532175 bm!410861) bm!410862))

(assert (= (or b!5532175 bm!410860) bm!410863))

(assert (= (or b!5532182 bm!410863) bm!410865))

(assert (= (or b!5532182 b!5532175) bm!410864))

(declare-fun m!6533896 () Bool)

(assert (=> bm!410865 m!6533896))

(assert (=> b!5532179 m!6533646))

(declare-fun m!6533898 () Bool)

(assert (=> bm!410864 m!6533898))

(declare-fun m!6533900 () Bool)

(assert (=> b!5532180 m!6533900))

(declare-fun m!6533902 () Bool)

(assert (=> bm!410862 m!6533902))

(assert (=> b!5531571 d!1753057))

(declare-fun d!1753059 () Bool)

(declare-fun nullableFct!1675 (Regex!15519) Bool)

(assert (=> d!1753059 (= (nullable!5553 (regOne!31550 r!7292)) (nullableFct!1675 (regOne!31550 r!7292)))))

(declare-fun bs!1279309 () Bool)

(assert (= bs!1279309 d!1753059))

(declare-fun m!6533904 () Bool)

(assert (=> bs!1279309 m!6533904))

(assert (=> b!5531571 d!1753059))

(declare-fun d!1753061 () Bool)

(declare-fun dynLambda!24532 (Int Context!9806) (InoxSet Context!9806))

(assert (=> d!1753061 (= (flatMap!1132 lt!2248646 lambda!296961) (dynLambda!24532 lambda!296961 lt!2248654))))

(declare-fun lt!2248714 () Unit!155498)

(declare-fun choose!42037 ((InoxSet Context!9806) Context!9806 Int) Unit!155498)

(assert (=> d!1753061 (= lt!2248714 (choose!42037 lt!2248646 lt!2248654 lambda!296961))))

(assert (=> d!1753061 (= lt!2248646 (store ((as const (Array Context!9806 Bool)) false) lt!2248654 true))))

(assert (=> d!1753061 (= (lemmaFlatMapOnSingletonSet!664 lt!2248646 lt!2248654 lambda!296961) lt!2248714)))

(declare-fun b_lambda!210023 () Bool)

(assert (=> (not b_lambda!210023) (not d!1753061)))

(declare-fun bs!1279310 () Bool)

(assert (= bs!1279310 d!1753061))

(assert (=> bs!1279310 m!6533596))

(declare-fun m!6533906 () Bool)

(assert (=> bs!1279310 m!6533906))

(declare-fun m!6533908 () Bool)

(assert (=> bs!1279310 m!6533908))

(assert (=> bs!1279310 m!6533598))

(assert (=> b!5531571 d!1753061))

(declare-fun d!1753063 () Bool)

(assert (=> d!1753063 (= (flatMap!1132 lt!2248636 lambda!296961) (dynLambda!24532 lambda!296961 lt!2248635))))

(declare-fun lt!2248715 () Unit!155498)

(assert (=> d!1753063 (= lt!2248715 (choose!42037 lt!2248636 lt!2248635 lambda!296961))))

(assert (=> d!1753063 (= lt!2248636 (store ((as const (Array Context!9806 Bool)) false) lt!2248635 true))))

(assert (=> d!1753063 (= (lemmaFlatMapOnSingletonSet!664 lt!2248636 lt!2248635 lambda!296961) lt!2248715)))

(declare-fun b_lambda!210025 () Bool)

(assert (=> (not b_lambda!210025) (not d!1753063)))

(declare-fun bs!1279311 () Bool)

(assert (= bs!1279311 d!1753063))

(assert (=> bs!1279311 m!6533588))

(declare-fun m!6533910 () Bool)

(assert (=> bs!1279311 m!6533910))

(declare-fun m!6533912 () Bool)

(assert (=> bs!1279311 m!6533912))

(assert (=> bs!1279311 m!6533592))

(assert (=> b!5531571 d!1753063))

(declare-fun d!1753065 () Bool)

(declare-fun c!968243 () Bool)

(declare-fun e!3419707 () Bool)

(assert (=> d!1753065 (= c!968243 e!3419707)))

(declare-fun res!2355397 () Bool)

(assert (=> d!1753065 (=> (not res!2355397) (not e!3419707))))

(assert (=> d!1753065 (= res!2355397 ((_ is Cons!62732) (exprs!5403 lt!2248635)))))

(declare-fun e!3419708 () (InoxSet Context!9806))

(assert (=> d!1753065 (= (derivationStepZipperUp!787 lt!2248635 (h!69181 s!2326)) e!3419708)))

(declare-fun b!5532183 () Bool)

(declare-fun call!410871 () (InoxSet Context!9806))

(assert (=> b!5532183 (= e!3419708 ((_ map or) call!410871 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (h!69181 s!2326))))))

(declare-fun b!5532184 () Bool)

(declare-fun e!3419709 () (InoxSet Context!9806))

(assert (=> b!5532184 (= e!3419709 call!410871)))

(declare-fun b!5532185 () Bool)

(assert (=> b!5532185 (= e!3419708 e!3419709)))

(declare-fun c!968244 () Bool)

(assert (=> b!5532185 (= c!968244 ((_ is Cons!62732) (exprs!5403 lt!2248635)))))

(declare-fun b!5532186 () Bool)

(assert (=> b!5532186 (= e!3419707 (nullable!5553 (h!69180 (exprs!5403 lt!2248635))))))

(declare-fun bm!410866 () Bool)

(assert (=> bm!410866 (= call!410871 (derivationStepZipperDown!861 (h!69180 (exprs!5403 lt!2248635)) (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (h!69181 s!2326)))))

(declare-fun b!5532187 () Bool)

(assert (=> b!5532187 (= e!3419709 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753065 res!2355397) b!5532186))

(assert (= (and d!1753065 c!968243) b!5532183))

(assert (= (and d!1753065 (not c!968243)) b!5532185))

(assert (= (and b!5532185 c!968244) b!5532184))

(assert (= (and b!5532185 (not c!968244)) b!5532187))

(assert (= (or b!5532183 b!5532184) bm!410866))

(declare-fun m!6533914 () Bool)

(assert (=> b!5532183 m!6533914))

(declare-fun m!6533916 () Bool)

(assert (=> b!5532186 m!6533916))

(declare-fun m!6533918 () Bool)

(assert (=> bm!410866 m!6533918))

(assert (=> b!5531571 d!1753065))

(declare-fun d!1753067 () Bool)

(declare-fun choose!42038 ((InoxSet Context!9806) Int) (InoxSet Context!9806))

(assert (=> d!1753067 (= (flatMap!1132 lt!2248636 lambda!296961) (choose!42038 lt!2248636 lambda!296961))))

(declare-fun bs!1279312 () Bool)

(assert (= bs!1279312 d!1753067))

(declare-fun m!6533920 () Bool)

(assert (=> bs!1279312 m!6533920))

(assert (=> b!5531571 d!1753067))

(declare-fun b!5532188 () Bool)

(declare-fun e!3419712 () (InoxSet Context!9806))

(declare-fun e!3419711 () (InoxSet Context!9806))

(assert (=> b!5532188 (= e!3419712 e!3419711)))

(declare-fun c!968246 () Bool)

(assert (=> b!5532188 (= c!968246 ((_ is Concat!24364) (regOne!31550 r!7292)))))

(declare-fun bm!410867 () Bool)

(declare-fun call!410875 () (InoxSet Context!9806))

(declare-fun call!410876 () (InoxSet Context!9806))

(assert (=> bm!410867 (= call!410875 call!410876)))

(declare-fun bm!410868 () Bool)

(declare-fun call!410873 () List!62856)

(declare-fun call!410872 () List!62856)

(assert (=> bm!410868 (= call!410873 call!410872)))

(declare-fun b!5532189 () Bool)

(declare-fun e!3419714 () (InoxSet Context!9806))

(declare-fun e!3419710 () (InoxSet Context!9806))

(assert (=> b!5532189 (= e!3419714 e!3419710)))

(declare-fun c!968249 () Bool)

(assert (=> b!5532189 (= c!968249 ((_ is Union!15519) (regOne!31550 r!7292)))))

(declare-fun b!5532190 () Bool)

(assert (=> b!5532190 (= e!3419711 call!410875)))

(declare-fun d!1753069 () Bool)

(declare-fun c!968247 () Bool)

(assert (=> d!1753069 (= c!968247 (and ((_ is ElementMatch!15519) (regOne!31550 r!7292)) (= (c!968061 (regOne!31550 r!7292)) (h!69181 s!2326))))))

(assert (=> d!1753069 (= (derivationStepZipperDown!861 (regOne!31550 r!7292) lt!2248635 (h!69181 s!2326)) e!3419714)))

(declare-fun b!5532191 () Bool)

(declare-fun call!410877 () (InoxSet Context!9806))

(assert (=> b!5532191 (= e!3419712 ((_ map or) call!410877 call!410876))))

(declare-fun b!5532192 () Bool)

(declare-fun e!3419713 () (InoxSet Context!9806))

(assert (=> b!5532192 (= e!3419713 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532193 () Bool)

(declare-fun c!968245 () Bool)

(declare-fun e!3419715 () Bool)

(assert (=> b!5532193 (= c!968245 e!3419715)))

(declare-fun res!2355398 () Bool)

(assert (=> b!5532193 (=> (not res!2355398) (not e!3419715))))

(assert (=> b!5532193 (= res!2355398 ((_ is Concat!24364) (regOne!31550 r!7292)))))

(assert (=> b!5532193 (= e!3419710 e!3419712)))

(declare-fun b!5532194 () Bool)

(assert (=> b!5532194 (= e!3419713 call!410875)))

(declare-fun bm!410869 () Bool)

(assert (=> bm!410869 (= call!410872 ($colon$colon!1596 (exprs!5403 lt!2248635) (ite (or c!968245 c!968246) (regTwo!31550 (regOne!31550 r!7292)) (regOne!31550 r!7292))))))

(declare-fun b!5532195 () Bool)

(assert (=> b!5532195 (= e!3419714 (store ((as const (Array Context!9806 Bool)) false) lt!2248635 true))))

(declare-fun bm!410870 () Bool)

(declare-fun call!410874 () (InoxSet Context!9806))

(assert (=> bm!410870 (= call!410876 call!410874)))

(declare-fun bm!410871 () Bool)

(assert (=> bm!410871 (= call!410877 (derivationStepZipperDown!861 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))) (ite c!968249 lt!2248635 (Context!9807 call!410872)) (h!69181 s!2326)))))

(declare-fun b!5532196 () Bool)

(assert (=> b!5532196 (= e!3419715 (nullable!5553 (regOne!31550 (regOne!31550 r!7292))))))

(declare-fun b!5532197 () Bool)

(declare-fun c!968248 () Bool)

(assert (=> b!5532197 (= c!968248 ((_ is Star!15519) (regOne!31550 r!7292)))))

(assert (=> b!5532197 (= e!3419711 e!3419713)))

(declare-fun bm!410872 () Bool)

(assert (=> bm!410872 (= call!410874 (derivationStepZipperDown!861 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))) (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873)) (h!69181 s!2326)))))

(declare-fun b!5532198 () Bool)

(assert (=> b!5532198 (= e!3419710 ((_ map or) call!410877 call!410874))))

(assert (= (and d!1753069 c!968247) b!5532195))

(assert (= (and d!1753069 (not c!968247)) b!5532189))

(assert (= (and b!5532189 c!968249) b!5532198))

(assert (= (and b!5532189 (not c!968249)) b!5532193))

(assert (= (and b!5532193 res!2355398) b!5532196))

(assert (= (and b!5532193 c!968245) b!5532191))

(assert (= (and b!5532193 (not c!968245)) b!5532188))

(assert (= (and b!5532188 c!968246) b!5532190))

(assert (= (and b!5532188 (not c!968246)) b!5532197))

(assert (= (and b!5532197 c!968248) b!5532194))

(assert (= (and b!5532197 (not c!968248)) b!5532192))

(assert (= (or b!5532190 b!5532194) bm!410868))

(assert (= (or b!5532190 b!5532194) bm!410867))

(assert (= (or b!5532191 bm!410868) bm!410869))

(assert (= (or b!5532191 bm!410867) bm!410870))

(assert (= (or b!5532198 bm!410870) bm!410872))

(assert (= (or b!5532198 b!5532191) bm!410871))

(declare-fun m!6533922 () Bool)

(assert (=> bm!410872 m!6533922))

(assert (=> b!5532195 m!6533592))

(declare-fun m!6533924 () Bool)

(assert (=> bm!410871 m!6533924))

(declare-fun m!6533926 () Bool)

(assert (=> b!5532196 m!6533926))

(declare-fun m!6533928 () Bool)

(assert (=> bm!410869 m!6533928))

(assert (=> b!5531571 d!1753069))

(declare-fun d!1753071 () Bool)

(assert (=> d!1753071 (= (flatMap!1132 lt!2248646 lambda!296961) (choose!42038 lt!2248646 lambda!296961))))

(declare-fun bs!1279313 () Bool)

(assert (= bs!1279313 d!1753071))

(declare-fun m!6533930 () Bool)

(assert (=> bs!1279313 m!6533930))

(assert (=> b!5531571 d!1753071))

(declare-fun d!1753073 () Bool)

(declare-fun c!968250 () Bool)

(declare-fun e!3419716 () Bool)

(assert (=> d!1753073 (= c!968250 e!3419716)))

(declare-fun res!2355399 () Bool)

(assert (=> d!1753073 (=> (not res!2355399) (not e!3419716))))

(assert (=> d!1753073 (= res!2355399 ((_ is Cons!62732) (exprs!5403 lt!2248654)))))

(declare-fun e!3419717 () (InoxSet Context!9806))

(assert (=> d!1753073 (= (derivationStepZipperUp!787 lt!2248654 (h!69181 s!2326)) e!3419717)))

(declare-fun b!5532199 () Bool)

(declare-fun call!410878 () (InoxSet Context!9806))

(assert (=> b!5532199 (= e!3419717 ((_ map or) call!410878 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (h!69181 s!2326))))))

(declare-fun b!5532200 () Bool)

(declare-fun e!3419718 () (InoxSet Context!9806))

(assert (=> b!5532200 (= e!3419718 call!410878)))

(declare-fun b!5532201 () Bool)

(assert (=> b!5532201 (= e!3419717 e!3419718)))

(declare-fun c!968251 () Bool)

(assert (=> b!5532201 (= c!968251 ((_ is Cons!62732) (exprs!5403 lt!2248654)))))

(declare-fun b!5532202 () Bool)

(assert (=> b!5532202 (= e!3419716 (nullable!5553 (h!69180 (exprs!5403 lt!2248654))))))

(declare-fun bm!410873 () Bool)

(assert (=> bm!410873 (= call!410878 (derivationStepZipperDown!861 (h!69180 (exprs!5403 lt!2248654)) (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (h!69181 s!2326)))))

(declare-fun b!5532203 () Bool)

(assert (=> b!5532203 (= e!3419718 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753073 res!2355399) b!5532202))

(assert (= (and d!1753073 c!968250) b!5532199))

(assert (= (and d!1753073 (not c!968250)) b!5532201))

(assert (= (and b!5532201 c!968251) b!5532200))

(assert (= (and b!5532201 (not c!968251)) b!5532203))

(assert (= (or b!5532199 b!5532200) bm!410873))

(declare-fun m!6533932 () Bool)

(assert (=> b!5532199 m!6533932))

(declare-fun m!6533934 () Bool)

(assert (=> b!5532202 m!6533934))

(declare-fun m!6533936 () Bool)

(assert (=> bm!410873 m!6533936))

(assert (=> b!5531571 d!1753073))

(declare-fun b!5532222 () Bool)

(declare-fun e!3419730 () Option!15528)

(assert (=> b!5532222 (= e!3419730 None!15527)))

(declare-fun b!5532223 () Bool)

(declare-fun e!3419732 () Bool)

(declare-fun lt!2248722 () Option!15528)

(declare-fun ++!13765 (List!62857 List!62857) List!62857)

(declare-fun get!21592 (Option!15528) tuple2!65232)

(assert (=> b!5532223 (= e!3419732 (= (++!13765 (_1!35919 (get!21592 lt!2248722)) (_2!35919 (get!21592 lt!2248722))) s!2326))))

(declare-fun d!1753075 () Bool)

(declare-fun e!3419733 () Bool)

(assert (=> d!1753075 e!3419733))

(declare-fun res!2355412 () Bool)

(assert (=> d!1753075 (=> res!2355412 e!3419733)))

(assert (=> d!1753075 (= res!2355412 e!3419732)))

(declare-fun res!2355414 () Bool)

(assert (=> d!1753075 (=> (not res!2355414) (not e!3419732))))

(assert (=> d!1753075 (= res!2355414 (isDefined!12231 lt!2248722))))

(declare-fun e!3419731 () Option!15528)

(assert (=> d!1753075 (= lt!2248722 e!3419731)))

(declare-fun c!968257 () Bool)

(declare-fun e!3419729 () Bool)

(assert (=> d!1753075 (= c!968257 e!3419729)))

(declare-fun res!2355410 () Bool)

(assert (=> d!1753075 (=> (not res!2355410) (not e!3419729))))

(assert (=> d!1753075 (= res!2355410 (matchR!7704 (regOne!31550 r!7292) Nil!62733))))

(assert (=> d!1753075 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753075 (= (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326) lt!2248722)))

(declare-fun b!5532224 () Bool)

(assert (=> b!5532224 (= e!3419731 e!3419730)))

(declare-fun c!968256 () Bool)

(assert (=> b!5532224 (= c!968256 ((_ is Nil!62733) s!2326))))

(declare-fun b!5532225 () Bool)

(declare-fun lt!2248724 () Unit!155498)

(declare-fun lt!2248723 () Unit!155498)

(assert (=> b!5532225 (= lt!2248724 lt!2248723)))

(assert (=> b!5532225 (= (++!13765 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1934 (List!62857 C!31308 List!62857 List!62857) Unit!155498)

(assert (=> b!5532225 (= lt!2248723 (lemmaMoveElementToOtherListKeepsConcatEq!1934 Nil!62733 (h!69181 s!2326) (t!376116 s!2326) s!2326))))

(assert (=> b!5532225 (= e!3419730 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326) s!2326))))

(declare-fun b!5532226 () Bool)

(assert (=> b!5532226 (= e!3419729 (matchR!7704 (regTwo!31550 r!7292) s!2326))))

(declare-fun b!5532227 () Bool)

(declare-fun res!2355413 () Bool)

(assert (=> b!5532227 (=> (not res!2355413) (not e!3419732))))

(assert (=> b!5532227 (= res!2355413 (matchR!7704 (regTwo!31550 r!7292) (_2!35919 (get!21592 lt!2248722))))))

(declare-fun b!5532228 () Bool)

(assert (=> b!5532228 (= e!3419733 (not (isDefined!12231 lt!2248722)))))

(declare-fun b!5532229 () Bool)

(assert (=> b!5532229 (= e!3419731 (Some!15527 (tuple2!65233 Nil!62733 s!2326)))))

(declare-fun b!5532230 () Bool)

(declare-fun res!2355411 () Bool)

(assert (=> b!5532230 (=> (not res!2355411) (not e!3419732))))

(assert (=> b!5532230 (= res!2355411 (matchR!7704 (regOne!31550 r!7292) (_1!35919 (get!21592 lt!2248722))))))

(assert (= (and d!1753075 res!2355410) b!5532226))

(assert (= (and d!1753075 c!968257) b!5532229))

(assert (= (and d!1753075 (not c!968257)) b!5532224))

(assert (= (and b!5532224 c!968256) b!5532222))

(assert (= (and b!5532224 (not c!968256)) b!5532225))

(assert (= (and d!1753075 res!2355414) b!5532230))

(assert (= (and b!5532230 res!2355411) b!5532227))

(assert (= (and b!5532227 res!2355413) b!5532223))

(assert (= (and d!1753075 (not res!2355412)) b!5532228))

(declare-fun m!6533938 () Bool)

(assert (=> b!5532223 m!6533938))

(declare-fun m!6533940 () Bool)

(assert (=> b!5532223 m!6533940))

(declare-fun m!6533942 () Bool)

(assert (=> b!5532226 m!6533942))

(assert (=> b!5532227 m!6533938))

(declare-fun m!6533944 () Bool)

(assert (=> b!5532227 m!6533944))

(declare-fun m!6533946 () Bool)

(assert (=> b!5532225 m!6533946))

(assert (=> b!5532225 m!6533946))

(declare-fun m!6533948 () Bool)

(assert (=> b!5532225 m!6533948))

(declare-fun m!6533950 () Bool)

(assert (=> b!5532225 m!6533950))

(assert (=> b!5532225 m!6533946))

(declare-fun m!6533952 () Bool)

(assert (=> b!5532225 m!6533952))

(declare-fun m!6533954 () Bool)

(assert (=> b!5532228 m!6533954))

(assert (=> d!1753075 m!6533954))

(declare-fun m!6533956 () Bool)

(assert (=> d!1753075 m!6533956))

(declare-fun m!6533958 () Bool)

(assert (=> d!1753075 m!6533958))

(assert (=> b!5532230 m!6533938))

(declare-fun m!6533960 () Bool)

(assert (=> b!5532230 m!6533960))

(assert (=> b!5531570 d!1753075))

(declare-fun d!1753077 () Bool)

(declare-fun choose!42039 (Int) Bool)

(assert (=> d!1753077 (= (Exists!2619 lambda!296960) (choose!42039 lambda!296960))))

(declare-fun bs!1279314 () Bool)

(assert (= bs!1279314 d!1753077))

(declare-fun m!6533962 () Bool)

(assert (=> bs!1279314 m!6533962))

(assert (=> b!5531570 d!1753077))

(declare-fun d!1753079 () Bool)

(assert (=> d!1753079 (= (Exists!2619 lambda!296959) (choose!42039 lambda!296959))))

(declare-fun bs!1279315 () Bool)

(assert (= bs!1279315 d!1753079))

(declare-fun m!6533964 () Bool)

(assert (=> bs!1279315 m!6533964))

(assert (=> b!5531570 d!1753079))

(declare-fun bs!1279316 () Bool)

(declare-fun d!1753081 () Bool)

(assert (= bs!1279316 (and d!1753081 b!5531570)))

(declare-fun lambda!297013 () Int)

(assert (=> bs!1279316 (= lambda!297013 lambda!296959)))

(assert (=> bs!1279316 (not (= lambda!297013 lambda!296960))))

(declare-fun bs!1279317 () Bool)

(assert (= bs!1279317 (and d!1753081 b!5531866)))

(assert (=> bs!1279317 (not (= lambda!297013 lambda!296985))))

(declare-fun bs!1279318 () Bool)

(assert (= bs!1279318 (and d!1753081 b!5531865)))

(assert (=> bs!1279318 (not (= lambda!297013 lambda!296986))))

(assert (=> d!1753081 true))

(assert (=> d!1753081 true))

(assert (=> d!1753081 true))

(assert (=> d!1753081 (= (isDefined!12231 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326)) (Exists!2619 lambda!297013))))

(declare-fun lt!2248727 () Unit!155498)

(declare-fun choose!42040 (Regex!15519 Regex!15519 List!62857) Unit!155498)

(assert (=> d!1753081 (= lt!2248727 (choose!42040 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326))))

(assert (=> d!1753081 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753081 (= (lemmaFindConcatSeparationEquivalentToExists!1706 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326) lt!2248727)))

(declare-fun bs!1279319 () Bool)

(assert (= bs!1279319 d!1753081))

(assert (=> bs!1279319 m!6533570))

(assert (=> bs!1279319 m!6533572))

(assert (=> bs!1279319 m!6533570))

(assert (=> bs!1279319 m!6533958))

(declare-fun m!6533966 () Bool)

(assert (=> bs!1279319 m!6533966))

(declare-fun m!6533968 () Bool)

(assert (=> bs!1279319 m!6533968))

(assert (=> b!5531570 d!1753081))

(declare-fun bs!1279320 () Bool)

(declare-fun d!1753083 () Bool)

(assert (= bs!1279320 (and d!1753083 d!1753081)))

(declare-fun lambda!297018 () Int)

(assert (=> bs!1279320 (= lambda!297018 lambda!297013)))

(declare-fun bs!1279321 () Bool)

(assert (= bs!1279321 (and d!1753083 b!5531570)))

(assert (=> bs!1279321 (not (= lambda!297018 lambda!296960))))

(assert (=> bs!1279321 (= lambda!297018 lambda!296959)))

(declare-fun bs!1279322 () Bool)

(assert (= bs!1279322 (and d!1753083 b!5531865)))

(assert (=> bs!1279322 (not (= lambda!297018 lambda!296986))))

(declare-fun bs!1279323 () Bool)

(assert (= bs!1279323 (and d!1753083 b!5531866)))

(assert (=> bs!1279323 (not (= lambda!297018 lambda!296985))))

(assert (=> d!1753083 true))

(assert (=> d!1753083 true))

(assert (=> d!1753083 true))

(declare-fun lambda!297019 () Int)

(assert (=> bs!1279320 (not (= lambda!297019 lambda!297013))))

(assert (=> bs!1279321 (= lambda!297019 lambda!296960)))

(declare-fun bs!1279324 () Bool)

(assert (= bs!1279324 d!1753083))

(assert (=> bs!1279324 (not (= lambda!297019 lambda!297018))))

(assert (=> bs!1279321 (not (= lambda!297019 lambda!296959))))

(assert (=> bs!1279322 (= lambda!297019 lambda!296986)))

(assert (=> bs!1279323 (not (= lambda!297019 lambda!296985))))

(assert (=> d!1753083 true))

(assert (=> d!1753083 true))

(assert (=> d!1753083 true))

(assert (=> d!1753083 (= (Exists!2619 lambda!297018) (Exists!2619 lambda!297019))))

(declare-fun lt!2248730 () Unit!155498)

(declare-fun choose!42041 (Regex!15519 Regex!15519 List!62857) Unit!155498)

(assert (=> d!1753083 (= lt!2248730 (choose!42041 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326))))

(assert (=> d!1753083 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753083 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1248 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326) lt!2248730)))

(declare-fun m!6533970 () Bool)

(assert (=> bs!1279324 m!6533970))

(declare-fun m!6533972 () Bool)

(assert (=> bs!1279324 m!6533972))

(declare-fun m!6533974 () Bool)

(assert (=> bs!1279324 m!6533974))

(assert (=> bs!1279324 m!6533958))

(assert (=> b!5531570 d!1753083))

(declare-fun d!1753085 () Bool)

(declare-fun isEmpty!34526 (Option!15528) Bool)

(assert (=> d!1753085 (= (isDefined!12231 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326)) (not (isEmpty!34526 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326))))))

(declare-fun bs!1279325 () Bool)

(assert (= bs!1279325 d!1753085))

(assert (=> bs!1279325 m!6533570))

(declare-fun m!6533976 () Bool)

(assert (=> bs!1279325 m!6533976))

(assert (=> b!5531570 d!1753085))

(declare-fun d!1753087 () Bool)

(declare-fun e!3419742 () Bool)

(assert (=> d!1753087 e!3419742))

(declare-fun res!2355429 () Bool)

(assert (=> d!1753087 (=> (not res!2355429) (not e!3419742))))

(declare-fun lt!2248733 () List!62858)

(declare-fun noDuplicate!1510 (List!62858) Bool)

(assert (=> d!1753087 (= res!2355429 (noDuplicate!1510 lt!2248733))))

(declare-fun choose!42042 ((InoxSet Context!9806)) List!62858)

(assert (=> d!1753087 (= lt!2248733 (choose!42042 z!1189))))

(assert (=> d!1753087 (= (toList!9303 z!1189) lt!2248733)))

(declare-fun b!5532245 () Bool)

(declare-fun content!11288 (List!62858) (InoxSet Context!9806))

(assert (=> b!5532245 (= e!3419742 (= (content!11288 lt!2248733) z!1189))))

(assert (= (and d!1753087 res!2355429) b!5532245))

(declare-fun m!6533978 () Bool)

(assert (=> d!1753087 m!6533978))

(declare-fun m!6533980 () Bool)

(assert (=> d!1753087 m!6533980))

(declare-fun m!6533982 () Bool)

(assert (=> b!5532245 m!6533982))

(assert (=> b!5531561 d!1753087))

(declare-fun bs!1279326 () Bool)

(declare-fun d!1753089 () Bool)

(assert (= bs!1279326 (and d!1753089 d!1753029)))

(declare-fun lambda!297022 () Int)

(assert (=> bs!1279326 (= lambda!297022 lambda!297001)))

(declare-fun bs!1279327 () Bool)

(assert (= bs!1279327 (and d!1753089 d!1753035)))

(assert (=> bs!1279327 (= lambda!297022 lambda!297007)))

(declare-fun bs!1279328 () Bool)

(assert (= bs!1279328 (and d!1753089 d!1753055)))

(assert (=> bs!1279328 (= lambda!297022 lambda!297010)))

(assert (=> d!1753089 (= (inv!82044 (h!69182 zl!343)) (forall!14697 (exprs!5403 (h!69182 zl!343)) lambda!297022))))

(declare-fun bs!1279329 () Bool)

(assert (= bs!1279329 d!1753089))

(declare-fun m!6533984 () Bool)

(assert (=> bs!1279329 m!6533984))

(assert (=> b!5531562 d!1753089))

(declare-fun d!1753091 () Bool)

(assert (=> d!1753091 (= (flatMap!1132 z!1189 lambda!296961) (choose!42038 z!1189 lambda!296961))))

(declare-fun bs!1279330 () Bool)

(assert (= bs!1279330 d!1753091))

(declare-fun m!6533986 () Bool)

(assert (=> bs!1279330 m!6533986))

(assert (=> b!5531572 d!1753091))

(declare-fun d!1753093 () Bool)

(declare-fun c!968258 () Bool)

(declare-fun e!3419743 () Bool)

(assert (=> d!1753093 (= c!968258 e!3419743)))

(declare-fun res!2355430 () Bool)

(assert (=> d!1753093 (=> (not res!2355430) (not e!3419743))))

(assert (=> d!1753093 (= res!2355430 ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343))))))

(declare-fun e!3419744 () (InoxSet Context!9806))

(assert (=> d!1753093 (= (derivationStepZipperUp!787 (h!69182 zl!343) (h!69181 s!2326)) e!3419744)))

(declare-fun call!410879 () (InoxSet Context!9806))

(declare-fun b!5532246 () Bool)

(assert (=> b!5532246 (= e!3419744 ((_ map or) call!410879 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (h!69181 s!2326))))))

(declare-fun b!5532247 () Bool)

(declare-fun e!3419745 () (InoxSet Context!9806))

(assert (=> b!5532247 (= e!3419745 call!410879)))

(declare-fun b!5532248 () Bool)

(assert (=> b!5532248 (= e!3419744 e!3419745)))

(declare-fun c!968259 () Bool)

(assert (=> b!5532248 (= c!968259 ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343))))))

(declare-fun b!5532249 () Bool)

(assert (=> b!5532249 (= e!3419743 (nullable!5553 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun bm!410874 () Bool)

(assert (=> bm!410874 (= call!410879 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (h!69182 zl!343))) (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (h!69181 s!2326)))))

(declare-fun b!5532250 () Bool)

(assert (=> b!5532250 (= e!3419745 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753093 res!2355430) b!5532249))

(assert (= (and d!1753093 c!968258) b!5532246))

(assert (= (and d!1753093 (not c!968258)) b!5532248))

(assert (= (and b!5532248 c!968259) b!5532247))

(assert (= (and b!5532248 (not c!968259)) b!5532250))

(assert (= (or b!5532246 b!5532247) bm!410874))

(declare-fun m!6533988 () Bool)

(assert (=> b!5532246 m!6533988))

(declare-fun m!6533990 () Bool)

(assert (=> b!5532249 m!6533990))

(declare-fun m!6533992 () Bool)

(assert (=> bm!410874 m!6533992))

(assert (=> b!5531572 d!1753093))

(declare-fun d!1753095 () Bool)

(assert (=> d!1753095 (= (flatMap!1132 z!1189 lambda!296961) (dynLambda!24532 lambda!296961 (h!69182 zl!343)))))

(declare-fun lt!2248734 () Unit!155498)

(assert (=> d!1753095 (= lt!2248734 (choose!42037 z!1189 (h!69182 zl!343) lambda!296961))))

(assert (=> d!1753095 (= z!1189 (store ((as const (Array Context!9806 Bool)) false) (h!69182 zl!343) true))))

(assert (=> d!1753095 (= (lemmaFlatMapOnSingletonSet!664 z!1189 (h!69182 zl!343) lambda!296961) lt!2248734)))

(declare-fun b_lambda!210027 () Bool)

(assert (=> (not b_lambda!210027) (not d!1753095)))

(declare-fun bs!1279331 () Bool)

(assert (= bs!1279331 d!1753095))

(assert (=> bs!1279331 m!6533558))

(declare-fun m!6533994 () Bool)

(assert (=> bs!1279331 m!6533994))

(declare-fun m!6533996 () Bool)

(assert (=> bs!1279331 m!6533996))

(declare-fun m!6533998 () Bool)

(assert (=> bs!1279331 m!6533998))

(assert (=> b!5531572 d!1753095))

(declare-fun d!1753097 () Bool)

(declare-fun lt!2248737 () Regex!15519)

(assert (=> d!1753097 (validRegex!7255 lt!2248737)))

(assert (=> d!1753097 (= lt!2248737 (generalisedUnion!1382 (unfocusZipperList!947 zl!343)))))

(assert (=> d!1753097 (= (unfocusZipper!1261 zl!343) lt!2248737)))

(declare-fun bs!1279332 () Bool)

(assert (= bs!1279332 d!1753097))

(declare-fun m!6534000 () Bool)

(assert (=> bs!1279332 m!6534000))

(assert (=> bs!1279332 m!6533550))

(assert (=> bs!1279332 m!6533550))

(assert (=> bs!1279332 m!6533552))

(assert (=> b!5531564 d!1753097))

(declare-fun bs!1279333 () Bool)

(declare-fun d!1753099 () Bool)

(assert (= bs!1279333 (and d!1753099 d!1753029)))

(declare-fun lambda!297023 () Int)

(assert (=> bs!1279333 (= lambda!297023 lambda!297001)))

(declare-fun bs!1279334 () Bool)

(assert (= bs!1279334 (and d!1753099 d!1753035)))

(assert (=> bs!1279334 (= lambda!297023 lambda!297007)))

(declare-fun bs!1279335 () Bool)

(assert (= bs!1279335 (and d!1753099 d!1753055)))

(assert (=> bs!1279335 (= lambda!297023 lambda!297010)))

(declare-fun bs!1279336 () Bool)

(assert (= bs!1279336 (and d!1753099 d!1753089)))

(assert (=> bs!1279336 (= lambda!297023 lambda!297022)))

(assert (=> d!1753099 (= (inv!82044 setElem!36809) (forall!14697 (exprs!5403 setElem!36809) lambda!297023))))

(declare-fun bs!1279337 () Bool)

(assert (= bs!1279337 d!1753099))

(declare-fun m!6534002 () Bool)

(assert (=> bs!1279337 m!6534002))

(assert (=> setNonEmpty!36809 d!1753099))

(declare-fun b!5532264 () Bool)

(declare-fun e!3419748 () Bool)

(declare-fun tp!1521688 () Bool)

(declare-fun tp!1521691 () Bool)

(assert (=> b!5532264 (= e!3419748 (and tp!1521688 tp!1521691))))

(declare-fun b!5532263 () Bool)

(declare-fun tp!1521692 () Bool)

(assert (=> b!5532263 (= e!3419748 tp!1521692)))

(declare-fun b!5532261 () Bool)

(assert (=> b!5532261 (= e!3419748 tp_is_empty!40291)))

(assert (=> b!5531566 (= tp!1521618 e!3419748)))

(declare-fun b!5532262 () Bool)

(declare-fun tp!1521690 () Bool)

(declare-fun tp!1521689 () Bool)

(assert (=> b!5532262 (= e!3419748 (and tp!1521690 tp!1521689))))

(assert (= (and b!5531566 ((_ is ElementMatch!15519) (regOne!31551 r!7292))) b!5532261))

(assert (= (and b!5531566 ((_ is Concat!24364) (regOne!31551 r!7292))) b!5532262))

(assert (= (and b!5531566 ((_ is Star!15519) (regOne!31551 r!7292))) b!5532263))

(assert (= (and b!5531566 ((_ is Union!15519) (regOne!31551 r!7292))) b!5532264))

(declare-fun b!5532268 () Bool)

(declare-fun e!3419749 () Bool)

(declare-fun tp!1521693 () Bool)

(declare-fun tp!1521696 () Bool)

(assert (=> b!5532268 (= e!3419749 (and tp!1521693 tp!1521696))))

(declare-fun b!5532267 () Bool)

(declare-fun tp!1521697 () Bool)

(assert (=> b!5532267 (= e!3419749 tp!1521697)))

(declare-fun b!5532265 () Bool)

(assert (=> b!5532265 (= e!3419749 tp_is_empty!40291)))

(assert (=> b!5531566 (= tp!1521619 e!3419749)))

(declare-fun b!5532266 () Bool)

(declare-fun tp!1521695 () Bool)

(declare-fun tp!1521694 () Bool)

(assert (=> b!5532266 (= e!3419749 (and tp!1521695 tp!1521694))))

(assert (= (and b!5531566 ((_ is ElementMatch!15519) (regTwo!31551 r!7292))) b!5532265))

(assert (= (and b!5531566 ((_ is Concat!24364) (regTwo!31551 r!7292))) b!5532266))

(assert (= (and b!5531566 ((_ is Star!15519) (regTwo!31551 r!7292))) b!5532267))

(assert (= (and b!5531566 ((_ is Union!15519) (regTwo!31551 r!7292))) b!5532268))

(declare-fun b!5532272 () Bool)

(declare-fun e!3419750 () Bool)

(declare-fun tp!1521698 () Bool)

(declare-fun tp!1521701 () Bool)

(assert (=> b!5532272 (= e!3419750 (and tp!1521698 tp!1521701))))

(declare-fun b!5532271 () Bool)

(declare-fun tp!1521702 () Bool)

(assert (=> b!5532271 (= e!3419750 tp!1521702)))

(declare-fun b!5532269 () Bool)

(assert (=> b!5532269 (= e!3419750 tp_is_empty!40291)))

(assert (=> b!5531563 (= tp!1521610 e!3419750)))

(declare-fun b!5532270 () Bool)

(declare-fun tp!1521700 () Bool)

(declare-fun tp!1521699 () Bool)

(assert (=> b!5532270 (= e!3419750 (and tp!1521700 tp!1521699))))

(assert (= (and b!5531563 ((_ is ElementMatch!15519) (reg!15848 r!7292))) b!5532269))

(assert (= (and b!5531563 ((_ is Concat!24364) (reg!15848 r!7292))) b!5532270))

(assert (= (and b!5531563 ((_ is Star!15519) (reg!15848 r!7292))) b!5532271))

(assert (= (and b!5531563 ((_ is Union!15519) (reg!15848 r!7292))) b!5532272))

(declare-fun b!5532280 () Bool)

(declare-fun e!3419756 () Bool)

(declare-fun tp!1521707 () Bool)

(assert (=> b!5532280 (= e!3419756 tp!1521707)))

(declare-fun tp!1521708 () Bool)

(declare-fun e!3419755 () Bool)

(declare-fun b!5532279 () Bool)

(assert (=> b!5532279 (= e!3419755 (and (inv!82044 (h!69182 (t!376117 zl!343))) e!3419756 tp!1521708))))

(assert (=> b!5531562 (= tp!1521612 e!3419755)))

(assert (= b!5532279 b!5532280))

(assert (= (and b!5531562 ((_ is Cons!62734) (t!376117 zl!343))) b!5532279))

(declare-fun m!6534004 () Bool)

(assert (=> b!5532279 m!6534004))

(declare-fun b!5532285 () Bool)

(declare-fun e!3419759 () Bool)

(declare-fun tp!1521713 () Bool)

(declare-fun tp!1521714 () Bool)

(assert (=> b!5532285 (= e!3419759 (and tp!1521713 tp!1521714))))

(assert (=> b!5531574 (= tp!1521616 e!3419759)))

(assert (= (and b!5531574 ((_ is Cons!62732) (exprs!5403 setElem!36809))) b!5532285))

(declare-fun b!5532289 () Bool)

(declare-fun e!3419760 () Bool)

(declare-fun tp!1521715 () Bool)

(declare-fun tp!1521718 () Bool)

(assert (=> b!5532289 (= e!3419760 (and tp!1521715 tp!1521718))))

(declare-fun b!5532288 () Bool)

(declare-fun tp!1521719 () Bool)

(assert (=> b!5532288 (= e!3419760 tp!1521719)))

(declare-fun b!5532286 () Bool)

(assert (=> b!5532286 (= e!3419760 tp_is_empty!40291)))

(assert (=> b!5531559 (= tp!1521615 e!3419760)))

(declare-fun b!5532287 () Bool)

(declare-fun tp!1521717 () Bool)

(declare-fun tp!1521716 () Bool)

(assert (=> b!5532287 (= e!3419760 (and tp!1521717 tp!1521716))))

(assert (= (and b!5531559 ((_ is ElementMatch!15519) (regOne!31550 r!7292))) b!5532286))

(assert (= (and b!5531559 ((_ is Concat!24364) (regOne!31550 r!7292))) b!5532287))

(assert (= (and b!5531559 ((_ is Star!15519) (regOne!31550 r!7292))) b!5532288))

(assert (= (and b!5531559 ((_ is Union!15519) (regOne!31550 r!7292))) b!5532289))

(declare-fun b!5532293 () Bool)

(declare-fun e!3419761 () Bool)

(declare-fun tp!1521720 () Bool)

(declare-fun tp!1521723 () Bool)

(assert (=> b!5532293 (= e!3419761 (and tp!1521720 tp!1521723))))

(declare-fun b!5532292 () Bool)

(declare-fun tp!1521724 () Bool)

(assert (=> b!5532292 (= e!3419761 tp!1521724)))

(declare-fun b!5532290 () Bool)

(assert (=> b!5532290 (= e!3419761 tp_is_empty!40291)))

(assert (=> b!5531559 (= tp!1521613 e!3419761)))

(declare-fun b!5532291 () Bool)

(declare-fun tp!1521722 () Bool)

(declare-fun tp!1521721 () Bool)

(assert (=> b!5532291 (= e!3419761 (and tp!1521722 tp!1521721))))

(assert (= (and b!5531559 ((_ is ElementMatch!15519) (regTwo!31550 r!7292))) b!5532290))

(assert (= (and b!5531559 ((_ is Concat!24364) (regTwo!31550 r!7292))) b!5532291))

(assert (= (and b!5531559 ((_ is Star!15519) (regTwo!31550 r!7292))) b!5532292))

(assert (= (and b!5531559 ((_ is Union!15519) (regTwo!31550 r!7292))) b!5532293))

(declare-fun b!5532298 () Bool)

(declare-fun e!3419764 () Bool)

(declare-fun tp!1521727 () Bool)

(assert (=> b!5532298 (= e!3419764 (and tp_is_empty!40291 tp!1521727))))

(assert (=> b!5531573 (= tp!1521611 e!3419764)))

(assert (= (and b!5531573 ((_ is Cons!62733) (t!376116 s!2326))) b!5532298))

(declare-fun condSetEmpty!36815 () Bool)

(assert (=> setNonEmpty!36809 (= condSetEmpty!36815 (= setRest!36809 ((as const (Array Context!9806 Bool)) false)))))

(declare-fun setRes!36815 () Bool)

(assert (=> setNonEmpty!36809 (= tp!1521617 setRes!36815)))

(declare-fun setIsEmpty!36815 () Bool)

(assert (=> setIsEmpty!36815 setRes!36815))

(declare-fun e!3419767 () Bool)

(declare-fun tp!1521732 () Bool)

(declare-fun setNonEmpty!36815 () Bool)

(declare-fun setElem!36815 () Context!9806)

(assert (=> setNonEmpty!36815 (= setRes!36815 (and tp!1521732 (inv!82044 setElem!36815) e!3419767))))

(declare-fun setRest!36815 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36815 (= setRest!36809 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36815 true) setRest!36815))))

(declare-fun b!5532303 () Bool)

(declare-fun tp!1521733 () Bool)

(assert (=> b!5532303 (= e!3419767 tp!1521733)))

(assert (= (and setNonEmpty!36809 condSetEmpty!36815) setIsEmpty!36815))

(assert (= (and setNonEmpty!36809 (not condSetEmpty!36815)) setNonEmpty!36815))

(assert (= setNonEmpty!36815 b!5532303))

(declare-fun m!6534006 () Bool)

(assert (=> setNonEmpty!36815 m!6534006))

(declare-fun b!5532304 () Bool)

(declare-fun e!3419768 () Bool)

(declare-fun tp!1521734 () Bool)

(declare-fun tp!1521735 () Bool)

(assert (=> b!5532304 (= e!3419768 (and tp!1521734 tp!1521735))))

(assert (=> b!5531565 (= tp!1521614 e!3419768)))

(assert (= (and b!5531565 ((_ is Cons!62732) (exprs!5403 (h!69182 zl!343)))) b!5532304))

(declare-fun b_lambda!210029 () Bool)

(assert (= b_lambda!210027 (or b!5531572 b_lambda!210029)))

(declare-fun bs!1279338 () Bool)

(declare-fun d!1753101 () Bool)

(assert (= bs!1279338 (and d!1753101 b!5531572)))

(assert (=> bs!1279338 (= (dynLambda!24532 lambda!296961 (h!69182 zl!343)) (derivationStepZipperUp!787 (h!69182 zl!343) (h!69181 s!2326)))))

(assert (=> bs!1279338 m!6533560))

(assert (=> d!1753095 d!1753101))

(declare-fun b_lambda!210031 () Bool)

(assert (= b_lambda!210025 (or b!5531572 b_lambda!210031)))

(declare-fun bs!1279339 () Bool)

(declare-fun d!1753103 () Bool)

(assert (= bs!1279339 (and d!1753103 b!5531572)))

(assert (=> bs!1279339 (= (dynLambda!24532 lambda!296961 lt!2248635) (derivationStepZipperUp!787 lt!2248635 (h!69181 s!2326)))))

(assert (=> bs!1279339 m!6533606))

(assert (=> d!1753063 d!1753103))

(declare-fun b_lambda!210033 () Bool)

(assert (= b_lambda!210023 (or b!5531572 b_lambda!210033)))

(declare-fun bs!1279340 () Bool)

(declare-fun d!1753105 () Bool)

(assert (= bs!1279340 (and d!1753105 b!5531572)))

(assert (=> bs!1279340 (= (dynLambda!24532 lambda!296961 lt!2248654) (derivationStepZipperUp!787 lt!2248654 (h!69181 s!2326)))))

(assert (=> bs!1279340 m!6533602))

(assert (=> d!1753061 d!1753105))

(check-sat (not b_lambda!210029) (not d!1753061) (not b!5532287) (not b!5532165) (not b!5532272) (not b!5531938) (not b!5531940) (not bm!410815) (not b!5532279) (not bm!410837) (not d!1753013) (not d!1753081) (not d!1753023) (not b!5532043) (not d!1753087) (not d!1752989) (not bm!410786) (not b!5532246) (not b!5532186) (not b!5532291) (not b!5531660) (not b!5532270) (not b!5532039) (not b_lambda!210031) (not d!1753067) (not d!1753079) (not d!1753059) (not b!5532164) (not b!5532271) (not b!5532266) (not b!5532227) (not b!5532180) (not b!5532292) (not b!5531936) (not bs!1279338) (not bm!410864) (not b!5531947) (not b!5532263) (not b!5532285) (not bm!410840) (not b!5532169) (not d!1753099) (not bm!410858) (not bm!410865) (not b!5532168) (not b!5532245) (not bs!1279340) (not b!5532035) (not b!5531943) (not b!5532199) (not b!5532298) (not bm!410873) (not b!5532083) (not d!1753095) (not b!5532167) (not b!5531872) (not bm!410872) (not b!5532223) (not bm!410787) (not b!5531720) (not b!5532268) (not b!5532304) (not d!1753055) (not b!5532139) (not b!5532262) (not b!5532037) (not b!5532249) (not d!1753083) (not d!1753029) (not b!5532196) (not b!5532040) (not bm!410862) (not b!5532289) (not b!5532225) (not bm!410866) (not bm!410784) (not bm!410836) (not b!5532264) (not b!5531945) (not b!5532183) (not d!1753077) (not b!5532041) (not b!5531867) (not b!5532162) (not b_lambda!210033) (not b!5531723) (not d!1753091) (not b!5532280) (not bm!410859) (not bs!1279339) (not b!5532228) (not d!1753097) (not b!5532226) (not bm!410871) (not b!5532042) (not b!5532293) (not b!5532288) (not b!5532230) (not d!1753063) (not b!5532267) tp_is_empty!40291 (not b!5532202) (not b!5532303) (not d!1753075) (not bm!410869) (not d!1753089) (not bm!410874) (not d!1753085) (not b!5532166) (not d!1753035) (not d!1753071) (not setNonEmpty!36815))
(check-sat)
(get-model)

(declare-fun d!1753107 () Bool)

(assert (=> d!1753107 (= (isEmpty!34522 (tail!10933 (unfocusZipperList!947 zl!343))) ((_ is Nil!62732) (tail!10933 (unfocusZipperList!947 zl!343))))))

(assert (=> b!5532043 d!1753107))

(declare-fun d!1753109 () Bool)

(assert (=> d!1753109 (= (tail!10933 (unfocusZipperList!947 zl!343)) (t!376115 (unfocusZipperList!947 zl!343)))))

(assert (=> b!5532043 d!1753109))

(declare-fun d!1753111 () Bool)

(declare-fun c!968260 () Bool)

(declare-fun e!3419769 () Bool)

(assert (=> d!1753111 (= c!968260 e!3419769)))

(declare-fun res!2355431 () Bool)

(assert (=> d!1753111 (=> (not res!2355431) (not e!3419769))))

(assert (=> d!1753111 (= res!2355431 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635))))))))

(declare-fun e!3419770 () (InoxSet Context!9806))

(assert (=> d!1753111 (= (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (h!69181 s!2326)) e!3419770)))

(declare-fun b!5532305 () Bool)

(declare-fun call!410880 () (InoxSet Context!9806))

(assert (=> b!5532305 (= e!3419770 ((_ map or) call!410880 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635)))))) (h!69181 s!2326))))))

(declare-fun b!5532306 () Bool)

(declare-fun e!3419771 () (InoxSet Context!9806))

(assert (=> b!5532306 (= e!3419771 call!410880)))

(declare-fun b!5532307 () Bool)

(assert (=> b!5532307 (= e!3419770 e!3419771)))

(declare-fun c!968261 () Bool)

(assert (=> b!5532307 (= c!968261 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635))))))))

(declare-fun b!5532308 () Bool)

(assert (=> b!5532308 (= e!3419769 (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635)))))))))

(declare-fun bm!410875 () Bool)

(assert (=> bm!410875 (= call!410880 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635))))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635)))))) (h!69181 s!2326)))))

(declare-fun b!5532309 () Bool)

(assert (=> b!5532309 (= e!3419771 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753111 res!2355431) b!5532308))

(assert (= (and d!1753111 c!968260) b!5532305))

(assert (= (and d!1753111 (not c!968260)) b!5532307))

(assert (= (and b!5532307 c!968261) b!5532306))

(assert (= (and b!5532307 (not c!968261)) b!5532309))

(assert (= (or b!5532305 b!5532306) bm!410875))

(declare-fun m!6534008 () Bool)

(assert (=> b!5532305 m!6534008))

(declare-fun m!6534010 () Bool)

(assert (=> b!5532308 m!6534010))

(declare-fun m!6534012 () Bool)

(assert (=> bm!410875 m!6534012))

(assert (=> b!5532183 d!1753111))

(declare-fun d!1753113 () Bool)

(declare-fun res!2355436 () Bool)

(declare-fun e!3419776 () Bool)

(assert (=> d!1753113 (=> res!2355436 e!3419776)))

(assert (=> d!1753113 (= res!2355436 ((_ is Nil!62732) (exprs!5403 setElem!36809)))))

(assert (=> d!1753113 (= (forall!14697 (exprs!5403 setElem!36809) lambda!297023) e!3419776)))

(declare-fun b!5532314 () Bool)

(declare-fun e!3419777 () Bool)

(assert (=> b!5532314 (= e!3419776 e!3419777)))

(declare-fun res!2355437 () Bool)

(assert (=> b!5532314 (=> (not res!2355437) (not e!3419777))))

(declare-fun dynLambda!24533 (Int Regex!15519) Bool)

(assert (=> b!5532314 (= res!2355437 (dynLambda!24533 lambda!297023 (h!69180 (exprs!5403 setElem!36809))))))

(declare-fun b!5532315 () Bool)

(assert (=> b!5532315 (= e!3419777 (forall!14697 (t!376115 (exprs!5403 setElem!36809)) lambda!297023))))

(assert (= (and d!1753113 (not res!2355436)) b!5532314))

(assert (= (and b!5532314 res!2355437) b!5532315))

(declare-fun b_lambda!210035 () Bool)

(assert (=> (not b_lambda!210035) (not b!5532314)))

(declare-fun m!6534014 () Bool)

(assert (=> b!5532314 m!6534014))

(declare-fun m!6534016 () Bool)

(assert (=> b!5532315 m!6534016))

(assert (=> d!1753099 d!1753113))

(declare-fun b!5532316 () Bool)

(declare-fun e!3419780 () (InoxSet Context!9806))

(declare-fun e!3419779 () (InoxSet Context!9806))

(assert (=> b!5532316 (= e!3419780 e!3419779)))

(declare-fun c!968263 () Bool)

(assert (=> b!5532316 (= c!968263 ((_ is Concat!24364) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(declare-fun bm!410876 () Bool)

(declare-fun call!410884 () (InoxSet Context!9806))

(declare-fun call!410885 () (InoxSet Context!9806))

(assert (=> bm!410876 (= call!410884 call!410885)))

(declare-fun bm!410877 () Bool)

(declare-fun call!410882 () List!62856)

(declare-fun call!410881 () List!62856)

(assert (=> bm!410877 (= call!410882 call!410881)))

(declare-fun b!5532317 () Bool)

(declare-fun e!3419782 () (InoxSet Context!9806))

(declare-fun e!3419778 () (InoxSet Context!9806))

(assert (=> b!5532317 (= e!3419782 e!3419778)))

(declare-fun c!968266 () Bool)

(assert (=> b!5532317 (= c!968266 ((_ is Union!15519) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(declare-fun b!5532318 () Bool)

(assert (=> b!5532318 (= e!3419779 call!410884)))

(declare-fun d!1753115 () Bool)

(declare-fun c!968264 () Bool)

(assert (=> d!1753115 (= c!968264 (and ((_ is ElementMatch!15519) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (= (c!968061 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69181 s!2326))))))

(assert (=> d!1753115 (= (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69181 s!2326)) e!3419782)))

(declare-fun b!5532319 () Bool)

(declare-fun call!410886 () (InoxSet Context!9806))

(assert (=> b!5532319 (= e!3419780 ((_ map or) call!410886 call!410885))))

(declare-fun b!5532320 () Bool)

(declare-fun e!3419781 () (InoxSet Context!9806))

(assert (=> b!5532320 (= e!3419781 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532321 () Bool)

(declare-fun c!968262 () Bool)

(declare-fun e!3419783 () Bool)

(assert (=> b!5532321 (= c!968262 e!3419783)))

(declare-fun res!2355438 () Bool)

(assert (=> b!5532321 (=> (not res!2355438) (not e!3419783))))

(assert (=> b!5532321 (= res!2355438 ((_ is Concat!24364) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(assert (=> b!5532321 (= e!3419778 e!3419780)))

(declare-fun b!5532322 () Bool)

(assert (=> b!5532322 (= e!3419781 call!410884)))

(declare-fun bm!410878 () Bool)

(assert (=> bm!410878 (= call!410881 ($colon$colon!1596 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))) (ite (or c!968262 c!968263) (regTwo!31550 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))))

(declare-fun b!5532323 () Bool)

(assert (=> b!5532323 (= e!3419782 (store ((as const (Array Context!9806 Bool)) false) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) true))))

(declare-fun bm!410879 () Bool)

(declare-fun call!410883 () (InoxSet Context!9806))

(assert (=> bm!410879 (= call!410885 call!410883)))

(declare-fun bm!410880 () Bool)

(assert (=> bm!410880 (= call!410886 (derivationStepZipperDown!861 (ite c!968266 (regOne!31551 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (regOne!31550 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))) (ite c!968266 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (Context!9807 call!410881)) (h!69181 s!2326)))))

(declare-fun b!5532324 () Bool)

(assert (=> b!5532324 (= e!3419783 (nullable!5553 (regOne!31550 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))))

(declare-fun b!5532325 () Bool)

(declare-fun c!968265 () Bool)

(assert (=> b!5532325 (= c!968265 ((_ is Star!15519) (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(assert (=> b!5532325 (= e!3419779 e!3419781)))

(declare-fun bm!410881 () Bool)

(assert (=> bm!410881 (= call!410883 (derivationStepZipperDown!861 (ite c!968266 (regTwo!31551 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (ite c!968262 (regTwo!31550 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (ite c!968263 (regOne!31550 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (reg!15848 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))) (ite (or c!968266 c!968262) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (Context!9807 call!410882)) (h!69181 s!2326)))))

(declare-fun b!5532326 () Bool)

(assert (=> b!5532326 (= e!3419778 ((_ map or) call!410886 call!410883))))

(assert (= (and d!1753115 c!968264) b!5532323))

(assert (= (and d!1753115 (not c!968264)) b!5532317))

(assert (= (and b!5532317 c!968266) b!5532326))

(assert (= (and b!5532317 (not c!968266)) b!5532321))

(assert (= (and b!5532321 res!2355438) b!5532324))

(assert (= (and b!5532321 c!968262) b!5532319))

(assert (= (and b!5532321 (not c!968262)) b!5532316))

(assert (= (and b!5532316 c!968263) b!5532318))

(assert (= (and b!5532316 (not c!968263)) b!5532325))

(assert (= (and b!5532325 c!968265) b!5532322))

(assert (= (and b!5532325 (not c!968265)) b!5532320))

(assert (= (or b!5532318 b!5532322) bm!410877))

(assert (= (or b!5532318 b!5532322) bm!410876))

(assert (= (or b!5532319 bm!410877) bm!410878))

(assert (= (or b!5532319 bm!410876) bm!410879))

(assert (= (or b!5532326 bm!410879) bm!410881))

(assert (= (or b!5532326 b!5532319) bm!410880))

(declare-fun m!6534018 () Bool)

(assert (=> bm!410881 m!6534018))

(declare-fun m!6534020 () Bool)

(assert (=> b!5532323 m!6534020))

(declare-fun m!6534022 () Bool)

(assert (=> bm!410880 m!6534022))

(declare-fun m!6534024 () Bool)

(assert (=> b!5532324 m!6534024))

(declare-fun m!6534026 () Bool)

(assert (=> bm!410878 m!6534026))

(assert (=> bm!410815 d!1753115))

(assert (=> b!5532083 d!1753055))

(declare-fun bs!1279341 () Bool)

(declare-fun d!1753117 () Bool)

(assert (= bs!1279341 (and d!1753117 d!1753055)))

(declare-fun lambda!297024 () Int)

(assert (=> bs!1279341 (= lambda!297024 lambda!297010)))

(declare-fun bs!1279342 () Bool)

(assert (= bs!1279342 (and d!1753117 d!1753029)))

(assert (=> bs!1279342 (= lambda!297024 lambda!297001)))

(declare-fun bs!1279343 () Bool)

(assert (= bs!1279343 (and d!1753117 d!1753089)))

(assert (=> bs!1279343 (= lambda!297024 lambda!297022)))

(declare-fun bs!1279344 () Bool)

(assert (= bs!1279344 (and d!1753117 d!1753035)))

(assert (=> bs!1279344 (= lambda!297024 lambda!297007)))

(declare-fun bs!1279345 () Bool)

(assert (= bs!1279345 (and d!1753117 d!1753099)))

(assert (=> bs!1279345 (= lambda!297024 lambda!297023)))

(declare-fun lt!2248738 () List!62856)

(assert (=> d!1753117 (forall!14697 lt!2248738 lambda!297024)))

(declare-fun e!3419784 () List!62856)

(assert (=> d!1753117 (= lt!2248738 e!3419784)))

(declare-fun c!968267 () Bool)

(assert (=> d!1753117 (= c!968267 ((_ is Cons!62734) (t!376117 zl!343)))))

(assert (=> d!1753117 (= (unfocusZipperList!947 (t!376117 zl!343)) lt!2248738)))

(declare-fun b!5532327 () Bool)

(assert (=> b!5532327 (= e!3419784 (Cons!62732 (generalisedConcat!1134 (exprs!5403 (h!69182 (t!376117 zl!343)))) (unfocusZipperList!947 (t!376117 (t!376117 zl!343)))))))

(declare-fun b!5532328 () Bool)

(assert (=> b!5532328 (= e!3419784 Nil!62732)))

(assert (= (and d!1753117 c!968267) b!5532327))

(assert (= (and d!1753117 (not c!968267)) b!5532328))

(declare-fun m!6534028 () Bool)

(assert (=> d!1753117 m!6534028))

(declare-fun m!6534030 () Bool)

(assert (=> b!5532327 m!6534030))

(declare-fun m!6534032 () Bool)

(assert (=> b!5532327 m!6534032))

(assert (=> b!5532083 d!1753117))

(declare-fun bm!410882 () Bool)

(declare-fun call!410887 () Bool)

(assert (=> bm!410882 (= call!410887 (isEmpty!34524 s!2326))))

(declare-fun b!5532329 () Bool)

(declare-fun e!3419788 () Bool)

(declare-fun e!3419790 () Bool)

(assert (=> b!5532329 (= e!3419788 e!3419790)))

(declare-fun res!2355446 () Bool)

(assert (=> b!5532329 (=> (not res!2355446) (not e!3419790))))

(declare-fun lt!2248739 () Bool)

(assert (=> b!5532329 (= res!2355446 (not lt!2248739))))

(declare-fun b!5532330 () Bool)

(declare-fun e!3419785 () Bool)

(assert (=> b!5532330 (= e!3419785 (= (head!11837 s!2326) (c!968061 (regTwo!31550 r!7292))))))

(declare-fun b!5532331 () Bool)

(declare-fun e!3419787 () Bool)

(assert (=> b!5532331 (= e!3419790 e!3419787)))

(declare-fun res!2355440 () Bool)

(assert (=> b!5532331 (=> res!2355440 e!3419787)))

(assert (=> b!5532331 (= res!2355440 call!410887)))

(declare-fun b!5532333 () Bool)

(declare-fun e!3419786 () Bool)

(assert (=> b!5532333 (= e!3419786 (= lt!2248739 call!410887))))

(declare-fun b!5532334 () Bool)

(declare-fun e!3419791 () Bool)

(assert (=> b!5532334 (= e!3419791 (nullable!5553 (regTwo!31550 r!7292)))))

(declare-fun b!5532335 () Bool)

(declare-fun res!2355445 () Bool)

(assert (=> b!5532335 (=> (not res!2355445) (not e!3419785))))

(assert (=> b!5532335 (= res!2355445 (not call!410887))))

(declare-fun b!5532336 () Bool)

(declare-fun e!3419789 () Bool)

(assert (=> b!5532336 (= e!3419789 (not lt!2248739))))

(declare-fun b!5532337 () Bool)

(declare-fun res!2355444 () Bool)

(assert (=> b!5532337 (=> (not res!2355444) (not e!3419785))))

(assert (=> b!5532337 (= res!2355444 (isEmpty!34524 (tail!10932 s!2326)))))

(declare-fun b!5532338 () Bool)

(declare-fun res!2355443 () Bool)

(assert (=> b!5532338 (=> res!2355443 e!3419788)))

(assert (=> b!5532338 (= res!2355443 e!3419785)))

(declare-fun res!2355441 () Bool)

(assert (=> b!5532338 (=> (not res!2355441) (not e!3419785))))

(assert (=> b!5532338 (= res!2355441 lt!2248739)))

(declare-fun d!1753119 () Bool)

(assert (=> d!1753119 e!3419786))

(declare-fun c!968268 () Bool)

(assert (=> d!1753119 (= c!968268 ((_ is EmptyExpr!15519) (regTwo!31550 r!7292)))))

(assert (=> d!1753119 (= lt!2248739 e!3419791)))

(declare-fun c!968270 () Bool)

(assert (=> d!1753119 (= c!968270 (isEmpty!34524 s!2326))))

(assert (=> d!1753119 (validRegex!7255 (regTwo!31550 r!7292))))

(assert (=> d!1753119 (= (matchR!7704 (regTwo!31550 r!7292) s!2326) lt!2248739)))

(declare-fun b!5532332 () Bool)

(assert (=> b!5532332 (= e!3419791 (matchR!7704 (derivativeStep!4382 (regTwo!31550 r!7292) (head!11837 s!2326)) (tail!10932 s!2326)))))

(declare-fun b!5532339 () Bool)

(declare-fun res!2355442 () Bool)

(assert (=> b!5532339 (=> res!2355442 e!3419787)))

(assert (=> b!5532339 (= res!2355442 (not (isEmpty!34524 (tail!10932 s!2326))))))

(declare-fun b!5532340 () Bool)

(declare-fun res!2355439 () Bool)

(assert (=> b!5532340 (=> res!2355439 e!3419788)))

(assert (=> b!5532340 (= res!2355439 (not ((_ is ElementMatch!15519) (regTwo!31550 r!7292))))))

(assert (=> b!5532340 (= e!3419789 e!3419788)))

(declare-fun b!5532341 () Bool)

(assert (=> b!5532341 (= e!3419787 (not (= (head!11837 s!2326) (c!968061 (regTwo!31550 r!7292)))))))

(declare-fun b!5532342 () Bool)

(assert (=> b!5532342 (= e!3419786 e!3419789)))

(declare-fun c!968269 () Bool)

(assert (=> b!5532342 (= c!968269 ((_ is EmptyLang!15519) (regTwo!31550 r!7292)))))

(assert (= (and d!1753119 c!968270) b!5532334))

(assert (= (and d!1753119 (not c!968270)) b!5532332))

(assert (= (and d!1753119 c!968268) b!5532333))

(assert (= (and d!1753119 (not c!968268)) b!5532342))

(assert (= (and b!5532342 c!968269) b!5532336))

(assert (= (and b!5532342 (not c!968269)) b!5532340))

(assert (= (and b!5532340 (not res!2355439)) b!5532338))

(assert (= (and b!5532338 res!2355441) b!5532335))

(assert (= (and b!5532335 res!2355445) b!5532337))

(assert (= (and b!5532337 res!2355444) b!5532330))

(assert (= (and b!5532338 (not res!2355443)) b!5532329))

(assert (= (and b!5532329 res!2355446) b!5532331))

(assert (= (and b!5532331 (not res!2355440)) b!5532339))

(assert (= (and b!5532339 (not res!2355442)) b!5532341))

(assert (= (or b!5532333 b!5532331 b!5532335) bm!410882))

(assert (=> b!5532341 m!6533778))

(assert (=> b!5532337 m!6533780))

(assert (=> b!5532337 m!6533780))

(assert (=> b!5532337 m!6533782))

(assert (=> b!5532339 m!6533780))

(assert (=> b!5532339 m!6533780))

(assert (=> b!5532339 m!6533782))

(assert (=> bm!410882 m!6533744))

(declare-fun m!6534034 () Bool)

(assert (=> b!5532334 m!6534034))

(assert (=> b!5532332 m!6533778))

(assert (=> b!5532332 m!6533778))

(declare-fun m!6534036 () Bool)

(assert (=> b!5532332 m!6534036))

(assert (=> b!5532332 m!6533780))

(assert (=> b!5532332 m!6534036))

(assert (=> b!5532332 m!6533780))

(declare-fun m!6534038 () Bool)

(assert (=> b!5532332 m!6534038))

(assert (=> d!1753119 m!6533744))

(declare-fun m!6534040 () Bool)

(assert (=> d!1753119 m!6534040))

(assert (=> b!5532330 m!6533778))

(assert (=> b!5532226 d!1753119))

(declare-fun b!5532343 () Bool)

(declare-fun e!3419794 () (InoxSet Context!9806))

(declare-fun e!3419793 () (InoxSet Context!9806))

(assert (=> b!5532343 (= e!3419794 e!3419793)))

(declare-fun c!968272 () Bool)

(assert (=> b!5532343 (= c!968272 ((_ is Concat!24364) (h!69180 (exprs!5403 lt!2248654))))))

(declare-fun bm!410883 () Bool)

(declare-fun call!410891 () (InoxSet Context!9806))

(declare-fun call!410892 () (InoxSet Context!9806))

(assert (=> bm!410883 (= call!410891 call!410892)))

(declare-fun bm!410884 () Bool)

(declare-fun call!410889 () List!62856)

(declare-fun call!410888 () List!62856)

(assert (=> bm!410884 (= call!410889 call!410888)))

(declare-fun b!5532344 () Bool)

(declare-fun e!3419796 () (InoxSet Context!9806))

(declare-fun e!3419792 () (InoxSet Context!9806))

(assert (=> b!5532344 (= e!3419796 e!3419792)))

(declare-fun c!968275 () Bool)

(assert (=> b!5532344 (= c!968275 ((_ is Union!15519) (h!69180 (exprs!5403 lt!2248654))))))

(declare-fun b!5532345 () Bool)

(assert (=> b!5532345 (= e!3419793 call!410891)))

(declare-fun d!1753121 () Bool)

(declare-fun c!968273 () Bool)

(assert (=> d!1753121 (= c!968273 (and ((_ is ElementMatch!15519) (h!69180 (exprs!5403 lt!2248654))) (= (c!968061 (h!69180 (exprs!5403 lt!2248654))) (h!69181 s!2326))))))

(assert (=> d!1753121 (= (derivationStepZipperDown!861 (h!69180 (exprs!5403 lt!2248654)) (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (h!69181 s!2326)) e!3419796)))

(declare-fun b!5532346 () Bool)

(declare-fun call!410893 () (InoxSet Context!9806))

(assert (=> b!5532346 (= e!3419794 ((_ map or) call!410893 call!410892))))

(declare-fun b!5532347 () Bool)

(declare-fun e!3419795 () (InoxSet Context!9806))

(assert (=> b!5532347 (= e!3419795 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532348 () Bool)

(declare-fun c!968271 () Bool)

(declare-fun e!3419797 () Bool)

(assert (=> b!5532348 (= c!968271 e!3419797)))

(declare-fun res!2355447 () Bool)

(assert (=> b!5532348 (=> (not res!2355447) (not e!3419797))))

(assert (=> b!5532348 (= res!2355447 ((_ is Concat!24364) (h!69180 (exprs!5403 lt!2248654))))))

(assert (=> b!5532348 (= e!3419792 e!3419794)))

(declare-fun b!5532349 () Bool)

(assert (=> b!5532349 (= e!3419795 call!410891)))

(declare-fun bm!410885 () Bool)

(assert (=> bm!410885 (= call!410888 ($colon$colon!1596 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654)))) (ite (or c!968271 c!968272) (regTwo!31550 (h!69180 (exprs!5403 lt!2248654))) (h!69180 (exprs!5403 lt!2248654)))))))

(declare-fun b!5532350 () Bool)

(assert (=> b!5532350 (= e!3419796 (store ((as const (Array Context!9806 Bool)) false) (Context!9807 (t!376115 (exprs!5403 lt!2248654))) true))))

(declare-fun bm!410886 () Bool)

(declare-fun call!410890 () (InoxSet Context!9806))

(assert (=> bm!410886 (= call!410892 call!410890)))

(declare-fun bm!410887 () Bool)

(assert (=> bm!410887 (= call!410893 (derivationStepZipperDown!861 (ite c!968275 (regOne!31551 (h!69180 (exprs!5403 lt!2248654))) (regOne!31550 (h!69180 (exprs!5403 lt!2248654)))) (ite c!968275 (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (Context!9807 call!410888)) (h!69181 s!2326)))))

(declare-fun b!5532351 () Bool)

(assert (=> b!5532351 (= e!3419797 (nullable!5553 (regOne!31550 (h!69180 (exprs!5403 lt!2248654)))))))

(declare-fun b!5532352 () Bool)

(declare-fun c!968274 () Bool)

(assert (=> b!5532352 (= c!968274 ((_ is Star!15519) (h!69180 (exprs!5403 lt!2248654))))))

(assert (=> b!5532352 (= e!3419793 e!3419795)))

(declare-fun bm!410888 () Bool)

(assert (=> bm!410888 (= call!410890 (derivationStepZipperDown!861 (ite c!968275 (regTwo!31551 (h!69180 (exprs!5403 lt!2248654))) (ite c!968271 (regTwo!31550 (h!69180 (exprs!5403 lt!2248654))) (ite c!968272 (regOne!31550 (h!69180 (exprs!5403 lt!2248654))) (reg!15848 (h!69180 (exprs!5403 lt!2248654)))))) (ite (or c!968275 c!968271) (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (Context!9807 call!410889)) (h!69181 s!2326)))))

(declare-fun b!5532353 () Bool)

(assert (=> b!5532353 (= e!3419792 ((_ map or) call!410893 call!410890))))

(assert (= (and d!1753121 c!968273) b!5532350))

(assert (= (and d!1753121 (not c!968273)) b!5532344))

(assert (= (and b!5532344 c!968275) b!5532353))

(assert (= (and b!5532344 (not c!968275)) b!5532348))

(assert (= (and b!5532348 res!2355447) b!5532351))

(assert (= (and b!5532348 c!968271) b!5532346))

(assert (= (and b!5532348 (not c!968271)) b!5532343))

(assert (= (and b!5532343 c!968272) b!5532345))

(assert (= (and b!5532343 (not c!968272)) b!5532352))

(assert (= (and b!5532352 c!968274) b!5532349))

(assert (= (and b!5532352 (not c!968274)) b!5532347))

(assert (= (or b!5532345 b!5532349) bm!410884))

(assert (= (or b!5532345 b!5532349) bm!410883))

(assert (= (or b!5532346 bm!410884) bm!410885))

(assert (= (or b!5532346 bm!410883) bm!410886))

(assert (= (or b!5532353 bm!410886) bm!410888))

(assert (= (or b!5532353 b!5532346) bm!410887))

(declare-fun m!6534042 () Bool)

(assert (=> bm!410888 m!6534042))

(declare-fun m!6534044 () Bool)

(assert (=> b!5532350 m!6534044))

(declare-fun m!6534046 () Bool)

(assert (=> bm!410887 m!6534046))

(declare-fun m!6534048 () Bool)

(assert (=> b!5532351 m!6534048))

(declare-fun m!6534050 () Bool)

(assert (=> bm!410885 m!6534050))

(assert (=> bm!410873 d!1753121))

(declare-fun b!5532368 () Bool)

(declare-fun e!3419814 () Bool)

(declare-fun e!3419815 () Bool)

(assert (=> b!5532368 (= e!3419814 e!3419815)))

(declare-fun res!2355458 () Bool)

(declare-fun call!410898 () Bool)

(assert (=> b!5532368 (= res!2355458 call!410898)))

(assert (=> b!5532368 (=> (not res!2355458) (not e!3419815))))

(declare-fun b!5532370 () Bool)

(declare-fun call!410899 () Bool)

(assert (=> b!5532370 (= e!3419815 call!410899)))

(declare-fun b!5532371 () Bool)

(declare-fun e!3419810 () Bool)

(assert (=> b!5532371 (= e!3419814 e!3419810)))

(declare-fun res!2355460 () Bool)

(assert (=> b!5532371 (= res!2355460 call!410898)))

(assert (=> b!5532371 (=> res!2355460 e!3419810)))

(declare-fun b!5532372 () Bool)

(assert (=> b!5532372 (= e!3419810 call!410899)))

(declare-fun b!5532373 () Bool)

(declare-fun e!3419811 () Bool)

(assert (=> b!5532373 (= e!3419811 e!3419814)))

(declare-fun c!968278 () Bool)

(assert (=> b!5532373 (= c!968278 ((_ is Union!15519) (regOne!31550 r!7292)))))

(declare-fun bm!410893 () Bool)

(assert (=> bm!410893 (= call!410899 (nullable!5553 (ite c!968278 (regTwo!31551 (regOne!31550 r!7292)) (regTwo!31550 (regOne!31550 r!7292)))))))

(declare-fun b!5532374 () Bool)

(declare-fun e!3419813 () Bool)

(declare-fun e!3419812 () Bool)

(assert (=> b!5532374 (= e!3419813 e!3419812)))

(declare-fun res!2355459 () Bool)

(assert (=> b!5532374 (=> (not res!2355459) (not e!3419812))))

(assert (=> b!5532374 (= res!2355459 (and (not ((_ is EmptyLang!15519) (regOne!31550 r!7292))) (not ((_ is ElementMatch!15519) (regOne!31550 r!7292)))))))

(declare-fun bm!410894 () Bool)

(assert (=> bm!410894 (= call!410898 (nullable!5553 (ite c!968278 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(declare-fun d!1753123 () Bool)

(declare-fun res!2355461 () Bool)

(assert (=> d!1753123 (=> res!2355461 e!3419813)))

(assert (=> d!1753123 (= res!2355461 ((_ is EmptyExpr!15519) (regOne!31550 r!7292)))))

(assert (=> d!1753123 (= (nullableFct!1675 (regOne!31550 r!7292)) e!3419813)))

(declare-fun b!5532369 () Bool)

(assert (=> b!5532369 (= e!3419812 e!3419811)))

(declare-fun res!2355462 () Bool)

(assert (=> b!5532369 (=> res!2355462 e!3419811)))

(assert (=> b!5532369 (= res!2355462 ((_ is Star!15519) (regOne!31550 r!7292)))))

(assert (= (and d!1753123 (not res!2355461)) b!5532374))

(assert (= (and b!5532374 res!2355459) b!5532369))

(assert (= (and b!5532369 (not res!2355462)) b!5532373))

(assert (= (and b!5532373 c!968278) b!5532371))

(assert (= (and b!5532373 (not c!968278)) b!5532368))

(assert (= (and b!5532371 (not res!2355460)) b!5532372))

(assert (= (and b!5532368 res!2355458) b!5532370))

(assert (= (or b!5532372 b!5532370) bm!410893))

(assert (= (or b!5532371 b!5532368) bm!410894))

(declare-fun m!6534052 () Bool)

(assert (=> bm!410893 m!6534052))

(declare-fun m!6534054 () Bool)

(assert (=> bm!410894 m!6534054))

(assert (=> d!1753059 d!1753123))

(declare-fun d!1753125 () Bool)

(declare-fun res!2355463 () Bool)

(declare-fun e!3419816 () Bool)

(assert (=> d!1753125 (=> res!2355463 e!3419816)))

(assert (=> d!1753125 (= res!2355463 ((_ is Nil!62732) (exprs!5403 (h!69182 zl!343))))))

(assert (=> d!1753125 (= (forall!14697 (exprs!5403 (h!69182 zl!343)) lambda!297022) e!3419816)))

(declare-fun b!5532375 () Bool)

(declare-fun e!3419817 () Bool)

(assert (=> b!5532375 (= e!3419816 e!3419817)))

(declare-fun res!2355464 () Bool)

(assert (=> b!5532375 (=> (not res!2355464) (not e!3419817))))

(assert (=> b!5532375 (= res!2355464 (dynLambda!24533 lambda!297022 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532376 () Bool)

(assert (=> b!5532376 (= e!3419817 (forall!14697 (t!376115 (exprs!5403 (h!69182 zl!343))) lambda!297022))))

(assert (= (and d!1753125 (not res!2355463)) b!5532375))

(assert (= (and b!5532375 res!2355464) b!5532376))

(declare-fun b_lambda!210037 () Bool)

(assert (=> (not b_lambda!210037) (not b!5532375)))

(declare-fun m!6534056 () Bool)

(assert (=> b!5532375 m!6534056))

(declare-fun m!6534058 () Bool)

(assert (=> b!5532376 m!6534058))

(assert (=> d!1753089 d!1753125))

(assert (=> d!1753095 d!1753091))

(declare-fun d!1753127 () Bool)

(assert (=> d!1753127 (= (flatMap!1132 z!1189 lambda!296961) (dynLambda!24532 lambda!296961 (h!69182 zl!343)))))

(assert (=> d!1753127 true))

(declare-fun _$13!2107 () Unit!155498)

(assert (=> d!1753127 (= (choose!42037 z!1189 (h!69182 zl!343) lambda!296961) _$13!2107)))

(declare-fun b_lambda!210039 () Bool)

(assert (=> (not b_lambda!210039) (not d!1753127)))

(declare-fun bs!1279346 () Bool)

(assert (= bs!1279346 d!1753127))

(assert (=> bs!1279346 m!6533558))

(assert (=> bs!1279346 m!6533994))

(assert (=> d!1753095 d!1753127))

(declare-fun bs!1279347 () Bool)

(declare-fun b!5532378 () Bool)

(assert (= bs!1279347 (and b!5532378 d!1753081)))

(declare-fun lambda!297025 () Int)

(assert (=> bs!1279347 (not (= lambda!297025 lambda!297013))))

(declare-fun bs!1279348 () Bool)

(assert (= bs!1279348 (and b!5532378 d!1753083)))

(assert (=> bs!1279348 (not (= lambda!297025 lambda!297019))))

(declare-fun bs!1279349 () Bool)

(assert (= bs!1279349 (and b!5532378 b!5531570)))

(assert (=> bs!1279349 (not (= lambda!297025 lambda!296960))))

(assert (=> bs!1279348 (not (= lambda!297025 lambda!297018))))

(assert (=> bs!1279349 (not (= lambda!297025 lambda!296959))))

(declare-fun bs!1279350 () Bool)

(assert (= bs!1279350 (and b!5532378 b!5531865)))

(assert (=> bs!1279350 (not (= lambda!297025 lambda!296986))))

(declare-fun bs!1279351 () Bool)

(assert (= bs!1279351 (and b!5532378 b!5531866)))

(assert (=> bs!1279351 (= (and (= (reg!15848 (regOne!31551 r!7292)) (reg!15848 r!7292)) (= (regOne!31551 r!7292) r!7292)) (= lambda!297025 lambda!296985))))

(assert (=> b!5532378 true))

(assert (=> b!5532378 true))

(declare-fun bs!1279352 () Bool)

(declare-fun b!5532377 () Bool)

(assert (= bs!1279352 (and b!5532377 d!1753081)))

(declare-fun lambda!297026 () Int)

(assert (=> bs!1279352 (not (= lambda!297026 lambda!297013))))

(declare-fun bs!1279353 () Bool)

(assert (= bs!1279353 (and b!5532377 d!1753083)))

(assert (=> bs!1279353 (= (and (= (regOne!31550 (regOne!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regOne!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297026 lambda!297019))))

(declare-fun bs!1279354 () Bool)

(assert (= bs!1279354 (and b!5532377 b!5531570)))

(assert (=> bs!1279354 (= (and (= (regOne!31550 (regOne!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regOne!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297026 lambda!296960))))

(assert (=> bs!1279353 (not (= lambda!297026 lambda!297018))))

(assert (=> bs!1279354 (not (= lambda!297026 lambda!296959))))

(declare-fun bs!1279355 () Bool)

(assert (= bs!1279355 (and b!5532377 b!5532378)))

(assert (=> bs!1279355 (not (= lambda!297026 lambda!297025))))

(declare-fun bs!1279356 () Bool)

(assert (= bs!1279356 (and b!5532377 b!5531865)))

(assert (=> bs!1279356 (= (and (= (regOne!31550 (regOne!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regOne!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297026 lambda!296986))))

(declare-fun bs!1279357 () Bool)

(assert (= bs!1279357 (and b!5532377 b!5531866)))

(assert (=> bs!1279357 (not (= lambda!297026 lambda!296985))))

(assert (=> b!5532377 true))

(assert (=> b!5532377 true))

(declare-fun e!3419824 () Bool)

(declare-fun call!410901 () Bool)

(assert (=> b!5532377 (= e!3419824 call!410901)))

(declare-fun e!3419823 () Bool)

(assert (=> b!5532378 (= e!3419823 call!410901)))

(declare-fun d!1753129 () Bool)

(declare-fun c!968279 () Bool)

(assert (=> d!1753129 (= c!968279 ((_ is EmptyExpr!15519) (regOne!31551 r!7292)))))

(declare-fun e!3419818 () Bool)

(assert (=> d!1753129 (= (matchRSpec!2622 (regOne!31551 r!7292) s!2326) e!3419818)))

(declare-fun b!5532379 () Bool)

(declare-fun e!3419820 () Bool)

(declare-fun e!3419819 () Bool)

(assert (=> b!5532379 (= e!3419820 e!3419819)))

(declare-fun res!2355466 () Bool)

(assert (=> b!5532379 (= res!2355466 (matchRSpec!2622 (regOne!31551 (regOne!31551 r!7292)) s!2326))))

(assert (=> b!5532379 (=> res!2355466 e!3419819)))

(declare-fun b!5532380 () Bool)

(declare-fun c!968282 () Bool)

(assert (=> b!5532380 (= c!968282 ((_ is Union!15519) (regOne!31551 r!7292)))))

(declare-fun e!3419822 () Bool)

(assert (=> b!5532380 (= e!3419822 e!3419820)))

(declare-fun bm!410895 () Bool)

(declare-fun c!968281 () Bool)

(assert (=> bm!410895 (= call!410901 (Exists!2619 (ite c!968281 lambda!297025 lambda!297026)))))

(declare-fun b!5532381 () Bool)

(assert (=> b!5532381 (= e!3419822 (= s!2326 (Cons!62733 (c!968061 (regOne!31551 r!7292)) Nil!62733)))))

(declare-fun b!5532382 () Bool)

(declare-fun c!968280 () Bool)

(assert (=> b!5532382 (= c!968280 ((_ is ElementMatch!15519) (regOne!31551 r!7292)))))

(declare-fun e!3419821 () Bool)

(assert (=> b!5532382 (= e!3419821 e!3419822)))

(declare-fun b!5532383 () Bool)

(declare-fun call!410900 () Bool)

(assert (=> b!5532383 (= e!3419818 call!410900)))

(declare-fun b!5532384 () Bool)

(assert (=> b!5532384 (= e!3419819 (matchRSpec!2622 (regTwo!31551 (regOne!31551 r!7292)) s!2326))))

(declare-fun b!5532385 () Bool)

(assert (=> b!5532385 (= e!3419818 e!3419821)))

(declare-fun res!2355467 () Bool)

(assert (=> b!5532385 (= res!2355467 (not ((_ is EmptyLang!15519) (regOne!31551 r!7292))))))

(assert (=> b!5532385 (=> (not res!2355467) (not e!3419821))))

(declare-fun b!5532386 () Bool)

(assert (=> b!5532386 (= e!3419820 e!3419824)))

(assert (=> b!5532386 (= c!968281 ((_ is Star!15519) (regOne!31551 r!7292)))))

(declare-fun b!5532387 () Bool)

(declare-fun res!2355465 () Bool)

(assert (=> b!5532387 (=> res!2355465 e!3419823)))

(assert (=> b!5532387 (= res!2355465 call!410900)))

(assert (=> b!5532387 (= e!3419824 e!3419823)))

(declare-fun bm!410896 () Bool)

(assert (=> bm!410896 (= call!410900 (isEmpty!34524 s!2326))))

(assert (= (and d!1753129 c!968279) b!5532383))

(assert (= (and d!1753129 (not c!968279)) b!5532385))

(assert (= (and b!5532385 res!2355467) b!5532382))

(assert (= (and b!5532382 c!968280) b!5532381))

(assert (= (and b!5532382 (not c!968280)) b!5532380))

(assert (= (and b!5532380 c!968282) b!5532379))

(assert (= (and b!5532380 (not c!968282)) b!5532386))

(assert (= (and b!5532379 (not res!2355466)) b!5532384))

(assert (= (and b!5532386 c!968281) b!5532387))

(assert (= (and b!5532386 (not c!968281)) b!5532377))

(assert (= (and b!5532387 (not res!2355465)) b!5532378))

(assert (= (or b!5532378 b!5532377) bm!410895))

(assert (= (or b!5532383 b!5532387) bm!410896))

(declare-fun m!6534060 () Bool)

(assert (=> b!5532379 m!6534060))

(declare-fun m!6534062 () Bool)

(assert (=> bm!410895 m!6534062))

(declare-fun m!6534064 () Bool)

(assert (=> b!5532384 m!6534064))

(assert (=> bm!410896 m!6533744))

(assert (=> b!5531867 d!1753129))

(declare-fun d!1753131 () Bool)

(declare-fun res!2355472 () Bool)

(declare-fun e!3419829 () Bool)

(assert (=> d!1753131 (=> res!2355472 e!3419829)))

(assert (=> d!1753131 (= res!2355472 ((_ is Nil!62734) lt!2248733))))

(assert (=> d!1753131 (= (noDuplicate!1510 lt!2248733) e!3419829)))

(declare-fun b!5532392 () Bool)

(declare-fun e!3419830 () Bool)

(assert (=> b!5532392 (= e!3419829 e!3419830)))

(declare-fun res!2355473 () Bool)

(assert (=> b!5532392 (=> (not res!2355473) (not e!3419830))))

(declare-fun contains!19792 (List!62858 Context!9806) Bool)

(assert (=> b!5532392 (= res!2355473 (not (contains!19792 (t!376117 lt!2248733) (h!69182 lt!2248733))))))

(declare-fun b!5532393 () Bool)

(assert (=> b!5532393 (= e!3419830 (noDuplicate!1510 (t!376117 lt!2248733)))))

(assert (= (and d!1753131 (not res!2355472)) b!5532392))

(assert (= (and b!5532392 res!2355473) b!5532393))

(declare-fun m!6534066 () Bool)

(assert (=> b!5532392 m!6534066))

(declare-fun m!6534068 () Bool)

(assert (=> b!5532393 m!6534068))

(assert (=> d!1753087 d!1753131))

(declare-fun d!1753133 () Bool)

(declare-fun e!3419837 () Bool)

(assert (=> d!1753133 e!3419837))

(declare-fun res!2355479 () Bool)

(assert (=> d!1753133 (=> (not res!2355479) (not e!3419837))))

(declare-fun res!2355478 () List!62858)

(assert (=> d!1753133 (= res!2355479 (noDuplicate!1510 res!2355478))))

(declare-fun e!3419838 () Bool)

(assert (=> d!1753133 e!3419838))

(assert (=> d!1753133 (= (choose!42042 z!1189) res!2355478)))

(declare-fun b!5532401 () Bool)

(declare-fun e!3419839 () Bool)

(declare-fun tp!1521741 () Bool)

(assert (=> b!5532401 (= e!3419839 tp!1521741)))

(declare-fun b!5532400 () Bool)

(declare-fun tp!1521740 () Bool)

(assert (=> b!5532400 (= e!3419838 (and (inv!82044 (h!69182 res!2355478)) e!3419839 tp!1521740))))

(declare-fun b!5532402 () Bool)

(assert (=> b!5532402 (= e!3419837 (= (content!11288 res!2355478) z!1189))))

(assert (= b!5532400 b!5532401))

(assert (= (and d!1753133 ((_ is Cons!62734) res!2355478)) b!5532400))

(assert (= (and d!1753133 res!2355479) b!5532402))

(declare-fun m!6534070 () Bool)

(assert (=> d!1753133 m!6534070))

(declare-fun m!6534072 () Bool)

(assert (=> b!5532400 m!6534072))

(declare-fun m!6534074 () Bool)

(assert (=> b!5532402 m!6534074))

(assert (=> d!1753087 d!1753133))

(declare-fun d!1753135 () Bool)

(assert (=> d!1753135 (= (Exists!2619 (ite c!968165 lambda!296985 lambda!296986)) (choose!42039 (ite c!968165 lambda!296985 lambda!296986)))))

(declare-fun bs!1279358 () Bool)

(assert (= bs!1279358 d!1753135))

(declare-fun m!6534076 () Bool)

(assert (=> bs!1279358 m!6534076))

(assert (=> bm!410836 d!1753135))

(declare-fun d!1753137 () Bool)

(declare-fun c!968283 () Bool)

(declare-fun e!3419840 () Bool)

(assert (=> d!1753137 (= c!968283 e!3419840)))

(declare-fun res!2355480 () Bool)

(assert (=> d!1753137 (=> (not res!2355480) (not e!3419840))))

(assert (=> d!1753137 (= res!2355480 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654))))))))

(declare-fun e!3419841 () (InoxSet Context!9806))

(assert (=> d!1753137 (= (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 lt!2248654))) (h!69181 s!2326)) e!3419841)))

(declare-fun call!410902 () (InoxSet Context!9806))

(declare-fun b!5532403 () Bool)

(assert (=> b!5532403 (= e!3419841 ((_ map or) call!410902 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654)))))) (h!69181 s!2326))))))

(declare-fun b!5532404 () Bool)

(declare-fun e!3419842 () (InoxSet Context!9806))

(assert (=> b!5532404 (= e!3419842 call!410902)))

(declare-fun b!5532405 () Bool)

(assert (=> b!5532405 (= e!3419841 e!3419842)))

(declare-fun c!968284 () Bool)

(assert (=> b!5532405 (= c!968284 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654))))))))

(declare-fun b!5532406 () Bool)

(assert (=> b!5532406 (= e!3419840 (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654)))))))))

(declare-fun bm!410897 () Bool)

(assert (=> bm!410897 (= call!410902 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654))))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248654)))))) (h!69181 s!2326)))))

(declare-fun b!5532407 () Bool)

(assert (=> b!5532407 (= e!3419842 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753137 res!2355480) b!5532406))

(assert (= (and d!1753137 c!968283) b!5532403))

(assert (= (and d!1753137 (not c!968283)) b!5532405))

(assert (= (and b!5532405 c!968284) b!5532404))

(assert (= (and b!5532405 (not c!968284)) b!5532407))

(assert (= (or b!5532403 b!5532404) bm!410897))

(declare-fun m!6534078 () Bool)

(assert (=> b!5532403 m!6534078))

(declare-fun m!6534080 () Bool)

(assert (=> b!5532406 m!6534080))

(declare-fun m!6534082 () Bool)

(assert (=> bm!410897 m!6534082))

(assert (=> b!5532199 d!1753137))

(declare-fun d!1753139 () Bool)

(assert (=> d!1753139 true))

(assert (=> d!1753139 true))

(declare-fun res!2355483 () Bool)

(assert (=> d!1753139 (= (choose!42039 lambda!296959) res!2355483)))

(assert (=> d!1753079 d!1753139))

(declare-fun d!1753141 () Bool)

(assert (=> d!1753141 (= (isEmpty!34524 s!2326) ((_ is Nil!62733) s!2326))))

(assert (=> d!1753013 d!1753141))

(assert (=> d!1753013 d!1753045))

(declare-fun d!1753143 () Bool)

(assert (=> d!1753143 (= (isEmpty!34524 (tail!10932 s!2326)) ((_ is Nil!62733) (tail!10932 s!2326)))))

(assert (=> b!5531943 d!1753143))

(declare-fun d!1753145 () Bool)

(assert (=> d!1753145 (= (tail!10932 s!2326) (t!376116 s!2326))))

(assert (=> b!5531943 d!1753145))

(declare-fun bs!1279359 () Bool)

(declare-fun b!5532409 () Bool)

(assert (= bs!1279359 (and b!5532409 d!1753081)))

(declare-fun lambda!297027 () Int)

(assert (=> bs!1279359 (not (= lambda!297027 lambda!297013))))

(declare-fun bs!1279360 () Bool)

(assert (= bs!1279360 (and b!5532409 b!5532377)))

(assert (=> bs!1279360 (not (= lambda!297027 lambda!297026))))

(declare-fun bs!1279361 () Bool)

(assert (= bs!1279361 (and b!5532409 d!1753083)))

(assert (=> bs!1279361 (not (= lambda!297027 lambda!297019))))

(declare-fun bs!1279362 () Bool)

(assert (= bs!1279362 (and b!5532409 b!5531570)))

(assert (=> bs!1279362 (not (= lambda!297027 lambda!296960))))

(assert (=> bs!1279361 (not (= lambda!297027 lambda!297018))))

(assert (=> bs!1279362 (not (= lambda!297027 lambda!296959))))

(declare-fun bs!1279363 () Bool)

(assert (= bs!1279363 (and b!5532409 b!5532378)))

(assert (=> bs!1279363 (= (and (= (reg!15848 (regTwo!31551 r!7292)) (reg!15848 (regOne!31551 r!7292))) (= (regTwo!31551 r!7292) (regOne!31551 r!7292))) (= lambda!297027 lambda!297025))))

(declare-fun bs!1279364 () Bool)

(assert (= bs!1279364 (and b!5532409 b!5531865)))

(assert (=> bs!1279364 (not (= lambda!297027 lambda!296986))))

(declare-fun bs!1279365 () Bool)

(assert (= bs!1279365 (and b!5532409 b!5531866)))

(assert (=> bs!1279365 (= (and (= (reg!15848 (regTwo!31551 r!7292)) (reg!15848 r!7292)) (= (regTwo!31551 r!7292) r!7292)) (= lambda!297027 lambda!296985))))

(assert (=> b!5532409 true))

(assert (=> b!5532409 true))

(declare-fun bs!1279366 () Bool)

(declare-fun b!5532408 () Bool)

(assert (= bs!1279366 (and b!5532408 d!1753081)))

(declare-fun lambda!297028 () Int)

(assert (=> bs!1279366 (not (= lambda!297028 lambda!297013))))

(declare-fun bs!1279367 () Bool)

(assert (= bs!1279367 (and b!5532408 b!5532377)))

(assert (=> bs!1279367 (= (and (= (regOne!31550 (regTwo!31551 r!7292)) (regOne!31550 (regOne!31551 r!7292))) (= (regTwo!31550 (regTwo!31551 r!7292)) (regTwo!31550 (regOne!31551 r!7292)))) (= lambda!297028 lambda!297026))))

(declare-fun bs!1279368 () Bool)

(assert (= bs!1279368 (and b!5532408 d!1753083)))

(assert (=> bs!1279368 (= (and (= (regOne!31550 (regTwo!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regTwo!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297028 lambda!297019))))

(declare-fun bs!1279369 () Bool)

(assert (= bs!1279369 (and b!5532408 b!5531570)))

(assert (=> bs!1279369 (= (and (= (regOne!31550 (regTwo!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regTwo!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297028 lambda!296960))))

(assert (=> bs!1279368 (not (= lambda!297028 lambda!297018))))

(assert (=> bs!1279369 (not (= lambda!297028 lambda!296959))))

(declare-fun bs!1279370 () Bool)

(assert (= bs!1279370 (and b!5532408 b!5532378)))

(assert (=> bs!1279370 (not (= lambda!297028 lambda!297025))))

(declare-fun bs!1279371 () Bool)

(assert (= bs!1279371 (and b!5532408 b!5532409)))

(assert (=> bs!1279371 (not (= lambda!297028 lambda!297027))))

(declare-fun bs!1279372 () Bool)

(assert (= bs!1279372 (and b!5532408 b!5531865)))

(assert (=> bs!1279372 (= (and (= (regOne!31550 (regTwo!31551 r!7292)) (regOne!31550 r!7292)) (= (regTwo!31550 (regTwo!31551 r!7292)) (regTwo!31550 r!7292))) (= lambda!297028 lambda!296986))))

(declare-fun bs!1279373 () Bool)

(assert (= bs!1279373 (and b!5532408 b!5531866)))

(assert (=> bs!1279373 (not (= lambda!297028 lambda!296985))))

(assert (=> b!5532408 true))

(assert (=> b!5532408 true))

(declare-fun e!3419849 () Bool)

(declare-fun call!410904 () Bool)

(assert (=> b!5532408 (= e!3419849 call!410904)))

(declare-fun e!3419848 () Bool)

(assert (=> b!5532409 (= e!3419848 call!410904)))

(declare-fun d!1753147 () Bool)

(declare-fun c!968285 () Bool)

(assert (=> d!1753147 (= c!968285 ((_ is EmptyExpr!15519) (regTwo!31551 r!7292)))))

(declare-fun e!3419843 () Bool)

(assert (=> d!1753147 (= (matchRSpec!2622 (regTwo!31551 r!7292) s!2326) e!3419843)))

(declare-fun b!5532410 () Bool)

(declare-fun e!3419845 () Bool)

(declare-fun e!3419844 () Bool)

(assert (=> b!5532410 (= e!3419845 e!3419844)))

(declare-fun res!2355485 () Bool)

(assert (=> b!5532410 (= res!2355485 (matchRSpec!2622 (regOne!31551 (regTwo!31551 r!7292)) s!2326))))

(assert (=> b!5532410 (=> res!2355485 e!3419844)))

(declare-fun b!5532411 () Bool)

(declare-fun c!968288 () Bool)

(assert (=> b!5532411 (= c!968288 ((_ is Union!15519) (regTwo!31551 r!7292)))))

(declare-fun e!3419847 () Bool)

(assert (=> b!5532411 (= e!3419847 e!3419845)))

(declare-fun c!968287 () Bool)

(declare-fun bm!410898 () Bool)

(assert (=> bm!410898 (= call!410904 (Exists!2619 (ite c!968287 lambda!297027 lambda!297028)))))

(declare-fun b!5532412 () Bool)

(assert (=> b!5532412 (= e!3419847 (= s!2326 (Cons!62733 (c!968061 (regTwo!31551 r!7292)) Nil!62733)))))

(declare-fun b!5532413 () Bool)

(declare-fun c!968286 () Bool)

(assert (=> b!5532413 (= c!968286 ((_ is ElementMatch!15519) (regTwo!31551 r!7292)))))

(declare-fun e!3419846 () Bool)

(assert (=> b!5532413 (= e!3419846 e!3419847)))

(declare-fun b!5532414 () Bool)

(declare-fun call!410903 () Bool)

(assert (=> b!5532414 (= e!3419843 call!410903)))

(declare-fun b!5532415 () Bool)

(assert (=> b!5532415 (= e!3419844 (matchRSpec!2622 (regTwo!31551 (regTwo!31551 r!7292)) s!2326))))

(declare-fun b!5532416 () Bool)

(assert (=> b!5532416 (= e!3419843 e!3419846)))

(declare-fun res!2355486 () Bool)

(assert (=> b!5532416 (= res!2355486 (not ((_ is EmptyLang!15519) (regTwo!31551 r!7292))))))

(assert (=> b!5532416 (=> (not res!2355486) (not e!3419846))))

(declare-fun b!5532417 () Bool)

(assert (=> b!5532417 (= e!3419845 e!3419849)))

(assert (=> b!5532417 (= c!968287 ((_ is Star!15519) (regTwo!31551 r!7292)))))

(declare-fun b!5532418 () Bool)

(declare-fun res!2355484 () Bool)

(assert (=> b!5532418 (=> res!2355484 e!3419848)))

(assert (=> b!5532418 (= res!2355484 call!410903)))

(assert (=> b!5532418 (= e!3419849 e!3419848)))

(declare-fun bm!410899 () Bool)

(assert (=> bm!410899 (= call!410903 (isEmpty!34524 s!2326))))

(assert (= (and d!1753147 c!968285) b!5532414))

(assert (= (and d!1753147 (not c!968285)) b!5532416))

(assert (= (and b!5532416 res!2355486) b!5532413))

(assert (= (and b!5532413 c!968286) b!5532412))

(assert (= (and b!5532413 (not c!968286)) b!5532411))

(assert (= (and b!5532411 c!968288) b!5532410))

(assert (= (and b!5532411 (not c!968288)) b!5532417))

(assert (= (and b!5532410 (not res!2355485)) b!5532415))

(assert (= (and b!5532417 c!968287) b!5532418))

(assert (= (and b!5532417 (not c!968287)) b!5532408))

(assert (= (and b!5532418 (not res!2355484)) b!5532409))

(assert (= (or b!5532409 b!5532408) bm!410898))

(assert (= (or b!5532414 b!5532418) bm!410899))

(declare-fun m!6534084 () Bool)

(assert (=> b!5532410 m!6534084))

(declare-fun m!6534086 () Bool)

(assert (=> bm!410898 m!6534086))

(declare-fun m!6534088 () Bool)

(assert (=> b!5532415 m!6534088))

(assert (=> bm!410899 m!6533744))

(assert (=> b!5531872 d!1753147))

(declare-fun d!1753149 () Bool)

(assert (=> d!1753149 true))

(declare-fun setRes!36818 () Bool)

(assert (=> d!1753149 setRes!36818))

(declare-fun condSetEmpty!36818 () Bool)

(declare-fun res!2355489 () (InoxSet Context!9806))

(assert (=> d!1753149 (= condSetEmpty!36818 (= res!2355489 ((as const (Array Context!9806 Bool)) false)))))

(assert (=> d!1753149 (= (choose!42038 lt!2248636 lambda!296961) res!2355489)))

(declare-fun setIsEmpty!36818 () Bool)

(assert (=> setIsEmpty!36818 setRes!36818))

(declare-fun tp!1521746 () Bool)

(declare-fun e!3419852 () Bool)

(declare-fun setNonEmpty!36818 () Bool)

(declare-fun setElem!36818 () Context!9806)

(assert (=> setNonEmpty!36818 (= setRes!36818 (and tp!1521746 (inv!82044 setElem!36818) e!3419852))))

(declare-fun setRest!36818 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36818 (= res!2355489 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36818 true) setRest!36818))))

(declare-fun b!5532421 () Bool)

(declare-fun tp!1521747 () Bool)

(assert (=> b!5532421 (= e!3419852 tp!1521747)))

(assert (= (and d!1753149 condSetEmpty!36818) setIsEmpty!36818))

(assert (= (and d!1753149 (not condSetEmpty!36818)) setNonEmpty!36818))

(assert (= setNonEmpty!36818 b!5532421))

(declare-fun m!6534090 () Bool)

(assert (=> setNonEmpty!36818 m!6534090))

(assert (=> d!1753067 d!1753149))

(assert (=> b!5532168 d!1753043))

(declare-fun d!1753151 () Bool)

(declare-fun c!968291 () Bool)

(assert (=> d!1753151 (= c!968291 ((_ is Nil!62734) lt!2248733))))

(declare-fun e!3419855 () (InoxSet Context!9806))

(assert (=> d!1753151 (= (content!11288 lt!2248733) e!3419855)))

(declare-fun b!5532426 () Bool)

(assert (=> b!5532426 (= e!3419855 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532427 () Bool)

(assert (=> b!5532427 (= e!3419855 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) (h!69182 lt!2248733) true) (content!11288 (t!376117 lt!2248733))))))

(assert (= (and d!1753151 c!968291) b!5532426))

(assert (= (and d!1753151 (not c!968291)) b!5532427))

(declare-fun m!6534092 () Bool)

(assert (=> b!5532427 m!6534092))

(declare-fun m!6534094 () Bool)

(assert (=> b!5532427 m!6534094))

(assert (=> b!5532245 d!1753151))

(declare-fun b!5532428 () Bool)

(declare-fun e!3419858 () (InoxSet Context!9806))

(declare-fun e!3419857 () (InoxSet Context!9806))

(assert (=> b!5532428 (= e!3419858 e!3419857)))

(declare-fun c!968293 () Bool)

(assert (=> b!5532428 (= c!968293 ((_ is Concat!24364) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(declare-fun bm!410900 () Bool)

(declare-fun call!410908 () (InoxSet Context!9806))

(declare-fun call!410909 () (InoxSet Context!9806))

(assert (=> bm!410900 (= call!410908 call!410909)))

(declare-fun bm!410901 () Bool)

(declare-fun call!410906 () List!62856)

(declare-fun call!410905 () List!62856)

(assert (=> bm!410901 (= call!410906 call!410905)))

(declare-fun b!5532429 () Bool)

(declare-fun e!3419860 () (InoxSet Context!9806))

(declare-fun e!3419856 () (InoxSet Context!9806))

(assert (=> b!5532429 (= e!3419860 e!3419856)))

(declare-fun c!968296 () Bool)

(assert (=> b!5532429 (= c!968296 ((_ is Union!15519) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(declare-fun b!5532430 () Bool)

(assert (=> b!5532430 (= e!3419857 call!410908)))

(declare-fun d!1753153 () Bool)

(declare-fun c!968294 () Bool)

(assert (=> d!1753153 (= c!968294 (and ((_ is ElementMatch!15519) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (= (c!968061 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (h!69181 s!2326))))))

(assert (=> d!1753153 (= (derivationStepZipperDown!861 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)) (ite c!968094 lt!2248644 (Context!9807 call!410787)) (h!69181 s!2326)) e!3419860)))

(declare-fun b!5532431 () Bool)

(declare-fun call!410910 () (InoxSet Context!9806))

(assert (=> b!5532431 (= e!3419858 ((_ map or) call!410910 call!410909))))

(declare-fun b!5532432 () Bool)

(declare-fun e!3419859 () (InoxSet Context!9806))

(assert (=> b!5532432 (= e!3419859 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532433 () Bool)

(declare-fun c!968292 () Bool)

(declare-fun e!3419861 () Bool)

(assert (=> b!5532433 (= c!968292 e!3419861)))

(declare-fun res!2355490 () Bool)

(assert (=> b!5532433 (=> (not res!2355490) (not e!3419861))))

(assert (=> b!5532433 (= res!2355490 ((_ is Concat!24364) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(assert (=> b!5532433 (= e!3419856 e!3419858)))

(declare-fun b!5532434 () Bool)

(assert (=> b!5532434 (= e!3419859 call!410908)))

(declare-fun bm!410902 () Bool)

(assert (=> bm!410902 (= call!410905 ($colon$colon!1596 (exprs!5403 (ite c!968094 lt!2248644 (Context!9807 call!410787))) (ite (or c!968292 c!968293) (regTwo!31550 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)))))))

(declare-fun b!5532435 () Bool)

(assert (=> b!5532435 (= e!3419860 (store ((as const (Array Context!9806 Bool)) false) (ite c!968094 lt!2248644 (Context!9807 call!410787)) true))))

(declare-fun bm!410903 () Bool)

(declare-fun call!410907 () (InoxSet Context!9806))

(assert (=> bm!410903 (= call!410909 call!410907)))

(declare-fun bm!410904 () Bool)

(assert (=> bm!410904 (= call!410910 (derivationStepZipperDown!861 (ite c!968296 (regOne!31551 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (regOne!31550 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)))) (ite c!968296 (ite c!968094 lt!2248644 (Context!9807 call!410787)) (Context!9807 call!410905)) (h!69181 s!2326)))))

(declare-fun b!5532436 () Bool)

(assert (=> b!5532436 (= e!3419861 (nullable!5553 (regOne!31550 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)))))))

(declare-fun b!5532437 () Bool)

(declare-fun c!968295 () Bool)

(assert (=> b!5532437 (= c!968295 ((_ is Star!15519) (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(assert (=> b!5532437 (= e!3419857 e!3419859)))

(declare-fun bm!410905 () Bool)

(assert (=> bm!410905 (= call!410907 (derivationStepZipperDown!861 (ite c!968296 (regTwo!31551 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (ite c!968292 (regTwo!31550 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (ite c!968293 (regOne!31550 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292))) (reg!15848 (ite c!968094 (regOne!31551 r!7292) (regOne!31550 r!7292)))))) (ite (or c!968296 c!968292) (ite c!968094 lt!2248644 (Context!9807 call!410787)) (Context!9807 call!410906)) (h!69181 s!2326)))))

(declare-fun b!5532438 () Bool)

(assert (=> b!5532438 (= e!3419856 ((_ map or) call!410910 call!410907))))

(assert (= (and d!1753153 c!968294) b!5532435))

(assert (= (and d!1753153 (not c!968294)) b!5532429))

(assert (= (and b!5532429 c!968296) b!5532438))

(assert (= (and b!5532429 (not c!968296)) b!5532433))

(assert (= (and b!5532433 res!2355490) b!5532436))

(assert (= (and b!5532433 c!968292) b!5532431))

(assert (= (and b!5532433 (not c!968292)) b!5532428))

(assert (= (and b!5532428 c!968293) b!5532430))

(assert (= (and b!5532428 (not c!968293)) b!5532437))

(assert (= (and b!5532437 c!968295) b!5532434))

(assert (= (and b!5532437 (not c!968295)) b!5532432))

(assert (= (or b!5532430 b!5532434) bm!410901))

(assert (= (or b!5532430 b!5532434) bm!410900))

(assert (= (or b!5532431 bm!410901) bm!410902))

(assert (= (or b!5532431 bm!410900) bm!410903))

(assert (= (or b!5532438 bm!410903) bm!410905))

(assert (= (or b!5532438 b!5532431) bm!410904))

(declare-fun m!6534096 () Bool)

(assert (=> bm!410905 m!6534096))

(declare-fun m!6534098 () Bool)

(assert (=> b!5532435 m!6534098))

(declare-fun m!6534100 () Bool)

(assert (=> bm!410904 m!6534100))

(declare-fun m!6534102 () Bool)

(assert (=> b!5532436 m!6534102))

(declare-fun m!6534104 () Bool)

(assert (=> bm!410902 m!6534104))

(assert (=> bm!410786 d!1753153))

(assert (=> b!5531945 d!1753143))

(assert (=> b!5531945 d!1753145))

(declare-fun d!1753155 () Bool)

(assert (=> d!1753155 (= (isEmptyExpr!1089 lt!2248711) ((_ is EmptyExpr!15519) lt!2248711))))

(assert (=> b!5532166 d!1753155))

(declare-fun b!5532439 () Bool)

(declare-fun e!3419864 () (InoxSet Context!9806))

(declare-fun e!3419863 () (InoxSet Context!9806))

(assert (=> b!5532439 (= e!3419864 e!3419863)))

(declare-fun c!968298 () Bool)

(assert (=> b!5532439 (= c!968298 ((_ is Concat!24364) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(declare-fun bm!410906 () Bool)

(declare-fun call!410914 () (InoxSet Context!9806))

(declare-fun call!410915 () (InoxSet Context!9806))

(assert (=> bm!410906 (= call!410914 call!410915)))

(declare-fun bm!410907 () Bool)

(declare-fun call!410912 () List!62856)

(declare-fun call!410911 () List!62856)

(assert (=> bm!410907 (= call!410912 call!410911)))

(declare-fun b!5532440 () Bool)

(declare-fun e!3419866 () (InoxSet Context!9806))

(declare-fun e!3419862 () (InoxSet Context!9806))

(assert (=> b!5532440 (= e!3419866 e!3419862)))

(declare-fun c!968301 () Bool)

(assert (=> b!5532440 (= c!968301 ((_ is Union!15519) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(declare-fun b!5532441 () Bool)

(assert (=> b!5532441 (= e!3419863 call!410914)))

(declare-fun c!968299 () Bool)

(declare-fun d!1753157 () Bool)

(assert (=> d!1753157 (= c!968299 (and ((_ is ElementMatch!15519) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (= (c!968061 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (h!69181 s!2326))))))

(assert (=> d!1753157 (= (derivationStepZipperDown!861 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))) (ite c!968249 lt!2248635 (Context!9807 call!410872)) (h!69181 s!2326)) e!3419866)))

(declare-fun b!5532442 () Bool)

(declare-fun call!410916 () (InoxSet Context!9806))

(assert (=> b!5532442 (= e!3419864 ((_ map or) call!410916 call!410915))))

(declare-fun b!5532443 () Bool)

(declare-fun e!3419865 () (InoxSet Context!9806))

(assert (=> b!5532443 (= e!3419865 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532444 () Bool)

(declare-fun c!968297 () Bool)

(declare-fun e!3419867 () Bool)

(assert (=> b!5532444 (= c!968297 e!3419867)))

(declare-fun res!2355491 () Bool)

(assert (=> b!5532444 (=> (not res!2355491) (not e!3419867))))

(assert (=> b!5532444 (= res!2355491 ((_ is Concat!24364) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(assert (=> b!5532444 (= e!3419862 e!3419864)))

(declare-fun b!5532445 () Bool)

(assert (=> b!5532445 (= e!3419865 call!410914)))

(declare-fun bm!410908 () Bool)

(assert (=> bm!410908 (= call!410911 ($colon$colon!1596 (exprs!5403 (ite c!968249 lt!2248635 (Context!9807 call!410872))) (ite (or c!968297 c!968298) (regTwo!31550 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))))))))

(declare-fun b!5532446 () Bool)

(assert (=> b!5532446 (= e!3419866 (store ((as const (Array Context!9806 Bool)) false) (ite c!968249 lt!2248635 (Context!9807 call!410872)) true))))

(declare-fun bm!410909 () Bool)

(declare-fun call!410913 () (InoxSet Context!9806))

(assert (=> bm!410909 (= call!410915 call!410913)))

(declare-fun bm!410910 () Bool)

(assert (=> bm!410910 (= call!410916 (derivationStepZipperDown!861 (ite c!968301 (regOne!31551 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (regOne!31550 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))))) (ite c!968301 (ite c!968249 lt!2248635 (Context!9807 call!410872)) (Context!9807 call!410911)) (h!69181 s!2326)))))

(declare-fun b!5532447 () Bool)

(assert (=> b!5532447 (= e!3419867 (nullable!5553 (regOne!31550 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))))))))

(declare-fun b!5532448 () Bool)

(declare-fun c!968300 () Bool)

(assert (=> b!5532448 (= c!968300 ((_ is Star!15519) (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(assert (=> b!5532448 (= e!3419863 e!3419865)))

(declare-fun bm!410911 () Bool)

(assert (=> bm!410911 (= call!410913 (derivationStepZipperDown!861 (ite c!968301 (regTwo!31551 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (ite c!968297 (regTwo!31550 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (ite c!968298 (regOne!31550 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))) (reg!15848 (ite c!968249 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292))))))) (ite (or c!968301 c!968297) (ite c!968249 lt!2248635 (Context!9807 call!410872)) (Context!9807 call!410912)) (h!69181 s!2326)))))

(declare-fun b!5532449 () Bool)

(assert (=> b!5532449 (= e!3419862 ((_ map or) call!410916 call!410913))))

(assert (= (and d!1753157 c!968299) b!5532446))

(assert (= (and d!1753157 (not c!968299)) b!5532440))

(assert (= (and b!5532440 c!968301) b!5532449))

(assert (= (and b!5532440 (not c!968301)) b!5532444))

(assert (= (and b!5532444 res!2355491) b!5532447))

(assert (= (and b!5532444 c!968297) b!5532442))

(assert (= (and b!5532444 (not c!968297)) b!5532439))

(assert (= (and b!5532439 c!968298) b!5532441))

(assert (= (and b!5532439 (not c!968298)) b!5532448))

(assert (= (and b!5532448 c!968300) b!5532445))

(assert (= (and b!5532448 (not c!968300)) b!5532443))

(assert (= (or b!5532441 b!5532445) bm!410907))

(assert (= (or b!5532441 b!5532445) bm!410906))

(assert (= (or b!5532442 bm!410907) bm!410908))

(assert (= (or b!5532442 bm!410906) bm!410909))

(assert (= (or b!5532449 bm!410909) bm!410911))

(assert (= (or b!5532449 b!5532442) bm!410910))

(declare-fun m!6534108 () Bool)

(assert (=> bm!410911 m!6534108))

(declare-fun m!6534110 () Bool)

(assert (=> b!5532446 m!6534110))

(declare-fun m!6534112 () Bool)

(assert (=> bm!410910 m!6534112))

(declare-fun m!6534114 () Bool)

(assert (=> b!5532447 m!6534114))

(declare-fun m!6534116 () Bool)

(assert (=> bm!410908 m!6534116))

(assert (=> bm!410871 d!1753157))

(declare-fun d!1753163 () Bool)

(assert (=> d!1753163 (= (isEmpty!34526 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326)) (not ((_ is Some!15527) (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326))))))

(assert (=> d!1753085 d!1753163))

(declare-fun d!1753165 () Bool)

(assert (=> d!1753165 (= (head!11837 s!2326) (h!69181 s!2326))))

(assert (=> b!5531947 d!1753165))

(declare-fun d!1753167 () Bool)

(assert (=> d!1753167 (= (nullable!5553 (h!69180 (exprs!5403 (h!69182 zl!343)))) (nullableFct!1675 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun bs!1279375 () Bool)

(assert (= bs!1279375 d!1753167))

(declare-fun m!6534118 () Bool)

(assert (=> bs!1279375 m!6534118))

(assert (=> b!5532249 d!1753167))

(assert (=> bm!410837 d!1753141))

(declare-fun d!1753169 () Bool)

(assert (=> d!1753169 (= (isEmpty!34522 (tail!10933 (exprs!5403 (h!69182 zl!343)))) ((_ is Nil!62732) (tail!10933 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> b!5532164 d!1753169))

(declare-fun d!1753171 () Bool)

(assert (=> d!1753171 (= (tail!10933 (exprs!5403 (h!69182 zl!343))) (t!376115 (exprs!5403 (h!69182 zl!343))))))

(assert (=> b!5532164 d!1753171))

(declare-fun b!5532452 () Bool)

(declare-fun e!3419875 () Bool)

(declare-fun call!410917 () Bool)

(assert (=> b!5532452 (= e!3419875 call!410917)))

(declare-fun bm!410912 () Bool)

(declare-fun call!410918 () Bool)

(assert (=> bm!410912 (= call!410918 call!410917)))

(declare-fun b!5532453 () Bool)

(declare-fun res!2355496 () Bool)

(declare-fun e!3419869 () Bool)

(assert (=> b!5532453 (=> res!2355496 e!3419869)))

(assert (=> b!5532453 (= res!2355496 (not ((_ is Concat!24364) (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292)))))))

(declare-fun e!3419871 () Bool)

(assert (=> b!5532453 (= e!3419871 e!3419869)))

(declare-fun b!5532454 () Bool)

(declare-fun e!3419872 () Bool)

(assert (=> b!5532454 (= e!3419872 call!410918)))

(declare-fun bm!410913 () Bool)

(declare-fun c!968304 () Bool)

(declare-fun c!968302 () Bool)

(assert (=> bm!410913 (= call!410917 (validRegex!7255 (ite c!968302 (reg!15848 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))) (ite c!968304 (regTwo!31551 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))) (regTwo!31550 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292)))))))))

(declare-fun b!5532456 () Bool)

(declare-fun e!3419870 () Bool)

(assert (=> b!5532456 (= e!3419870 e!3419871)))

(assert (=> b!5532456 (= c!968304 ((_ is Union!15519) (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(declare-fun b!5532457 () Bool)

(declare-fun e!3419873 () Bool)

(assert (=> b!5532457 (= e!3419869 e!3419873)))

(declare-fun res!2355492 () Bool)

(assert (=> b!5532457 (=> (not res!2355492) (not e!3419873))))

(declare-fun call!410919 () Bool)

(assert (=> b!5532457 (= res!2355492 call!410919)))

(declare-fun b!5532458 () Bool)

(assert (=> b!5532458 (= e!3419870 e!3419875)))

(declare-fun res!2355494 () Bool)

(assert (=> b!5532458 (= res!2355494 (not (nullable!5553 (reg!15848 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))))

(assert (=> b!5532458 (=> (not res!2355494) (not e!3419875))))

(declare-fun bm!410914 () Bool)

(assert (=> bm!410914 (= call!410919 (validRegex!7255 (ite c!968304 (regOne!31551 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))) (regOne!31550 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))))

(declare-fun b!5532459 () Bool)

(assert (=> b!5532459 (= e!3419873 call!410918)))

(declare-fun b!5532460 () Bool)

(declare-fun res!2355493 () Bool)

(assert (=> b!5532460 (=> (not res!2355493) (not e!3419872))))

(assert (=> b!5532460 (= res!2355493 call!410919)))

(assert (=> b!5532460 (= e!3419871 e!3419872)))

(declare-fun d!1753175 () Bool)

(declare-fun res!2355495 () Bool)

(declare-fun e!3419868 () Bool)

(assert (=> d!1753175 (=> res!2355495 e!3419868)))

(assert (=> d!1753175 (= res!2355495 ((_ is ElementMatch!15519) (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(assert (=> d!1753175 (= (validRegex!7255 (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))) e!3419868)))

(declare-fun b!5532455 () Bool)

(assert (=> b!5532455 (= e!3419868 e!3419870)))

(assert (=> b!5532455 (= c!968302 ((_ is Star!15519) (ite c!968225 (regOne!31551 r!7292) (regOne!31550 r!7292))))))

(assert (= (and d!1753175 (not res!2355495)) b!5532455))

(assert (= (and b!5532455 c!968302) b!5532458))

(assert (= (and b!5532455 (not c!968302)) b!5532456))

(assert (= (and b!5532458 res!2355494) b!5532452))

(assert (= (and b!5532456 c!968304) b!5532460))

(assert (= (and b!5532456 (not c!968304)) b!5532453))

(assert (= (and b!5532460 res!2355493) b!5532454))

(assert (= (and b!5532453 (not res!2355496)) b!5532457))

(assert (= (and b!5532457 res!2355492) b!5532459))

(assert (= (or b!5532454 b!5532459) bm!410912))

(assert (= (or b!5532460 b!5532457) bm!410914))

(assert (= (or b!5532452 bm!410912) bm!410913))

(declare-fun m!6534120 () Bool)

(assert (=> bm!410913 m!6534120))

(declare-fun m!6534122 () Bool)

(assert (=> b!5532458 m!6534122))

(declare-fun m!6534124 () Bool)

(assert (=> bm!410914 m!6534124))

(assert (=> bm!410859 d!1753175))

(declare-fun d!1753177 () Bool)

(assert (=> d!1753177 true))

(assert (=> d!1753177 true))

(declare-fun res!2355497 () Bool)

(assert (=> d!1753177 (= (choose!42039 lambda!296960) res!2355497)))

(assert (=> d!1753077 d!1753177))

(declare-fun d!1753179 () Bool)

(assert (=> d!1753179 (= (isDefined!12231 lt!2248722) (not (isEmpty!34526 lt!2248722)))))

(declare-fun bs!1279378 () Bool)

(assert (= bs!1279378 d!1753179))

(declare-fun m!6534126 () Bool)

(assert (=> bs!1279378 m!6534126))

(assert (=> d!1753075 d!1753179))

(declare-fun bm!410915 () Bool)

(declare-fun call!410920 () Bool)

(assert (=> bm!410915 (= call!410920 (isEmpty!34524 Nil!62733))))

(declare-fun b!5532461 () Bool)

(declare-fun e!3419879 () Bool)

(declare-fun e!3419881 () Bool)

(assert (=> b!5532461 (= e!3419879 e!3419881)))

(declare-fun res!2355505 () Bool)

(assert (=> b!5532461 (=> (not res!2355505) (not e!3419881))))

(declare-fun lt!2248741 () Bool)

(assert (=> b!5532461 (= res!2355505 (not lt!2248741))))

(declare-fun b!5532462 () Bool)

(declare-fun e!3419876 () Bool)

(assert (=> b!5532462 (= e!3419876 (= (head!11837 Nil!62733) (c!968061 (regOne!31550 r!7292))))))

(declare-fun b!5532463 () Bool)

(declare-fun e!3419878 () Bool)

(assert (=> b!5532463 (= e!3419881 e!3419878)))

(declare-fun res!2355499 () Bool)

(assert (=> b!5532463 (=> res!2355499 e!3419878)))

(assert (=> b!5532463 (= res!2355499 call!410920)))

(declare-fun b!5532465 () Bool)

(declare-fun e!3419877 () Bool)

(assert (=> b!5532465 (= e!3419877 (= lt!2248741 call!410920))))

(declare-fun b!5532466 () Bool)

(declare-fun e!3419882 () Bool)

(assert (=> b!5532466 (= e!3419882 (nullable!5553 (regOne!31550 r!7292)))))

(declare-fun b!5532467 () Bool)

(declare-fun res!2355504 () Bool)

(assert (=> b!5532467 (=> (not res!2355504) (not e!3419876))))

(assert (=> b!5532467 (= res!2355504 (not call!410920))))

(declare-fun b!5532468 () Bool)

(declare-fun e!3419880 () Bool)

(assert (=> b!5532468 (= e!3419880 (not lt!2248741))))

(declare-fun b!5532469 () Bool)

(declare-fun res!2355503 () Bool)

(assert (=> b!5532469 (=> (not res!2355503) (not e!3419876))))

(assert (=> b!5532469 (= res!2355503 (isEmpty!34524 (tail!10932 Nil!62733)))))

(declare-fun b!5532470 () Bool)

(declare-fun res!2355502 () Bool)

(assert (=> b!5532470 (=> res!2355502 e!3419879)))

(assert (=> b!5532470 (= res!2355502 e!3419876)))

(declare-fun res!2355500 () Bool)

(assert (=> b!5532470 (=> (not res!2355500) (not e!3419876))))

(assert (=> b!5532470 (= res!2355500 lt!2248741)))

(declare-fun d!1753181 () Bool)

(assert (=> d!1753181 e!3419877))

(declare-fun c!968305 () Bool)

(assert (=> d!1753181 (= c!968305 ((_ is EmptyExpr!15519) (regOne!31550 r!7292)))))

(assert (=> d!1753181 (= lt!2248741 e!3419882)))

(declare-fun c!968307 () Bool)

(assert (=> d!1753181 (= c!968307 (isEmpty!34524 Nil!62733))))

(assert (=> d!1753181 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753181 (= (matchR!7704 (regOne!31550 r!7292) Nil!62733) lt!2248741)))

(declare-fun b!5532464 () Bool)

(assert (=> b!5532464 (= e!3419882 (matchR!7704 (derivativeStep!4382 (regOne!31550 r!7292) (head!11837 Nil!62733)) (tail!10932 Nil!62733)))))

(declare-fun b!5532471 () Bool)

(declare-fun res!2355501 () Bool)

(assert (=> b!5532471 (=> res!2355501 e!3419878)))

(assert (=> b!5532471 (= res!2355501 (not (isEmpty!34524 (tail!10932 Nil!62733))))))

(declare-fun b!5532472 () Bool)

(declare-fun res!2355498 () Bool)

(assert (=> b!5532472 (=> res!2355498 e!3419879)))

(assert (=> b!5532472 (= res!2355498 (not ((_ is ElementMatch!15519) (regOne!31550 r!7292))))))

(assert (=> b!5532472 (= e!3419880 e!3419879)))

(declare-fun b!5532473 () Bool)

(assert (=> b!5532473 (= e!3419878 (not (= (head!11837 Nil!62733) (c!968061 (regOne!31550 r!7292)))))))

(declare-fun b!5532474 () Bool)

(assert (=> b!5532474 (= e!3419877 e!3419880)))

(declare-fun c!968306 () Bool)

(assert (=> b!5532474 (= c!968306 ((_ is EmptyLang!15519) (regOne!31550 r!7292)))))

(assert (= (and d!1753181 c!968307) b!5532466))

(assert (= (and d!1753181 (not c!968307)) b!5532464))

(assert (= (and d!1753181 c!968305) b!5532465))

(assert (= (and d!1753181 (not c!968305)) b!5532474))

(assert (= (and b!5532474 c!968306) b!5532468))

(assert (= (and b!5532474 (not c!968306)) b!5532472))

(assert (= (and b!5532472 (not res!2355498)) b!5532470))

(assert (= (and b!5532470 res!2355500) b!5532467))

(assert (= (and b!5532467 res!2355504) b!5532469))

(assert (= (and b!5532469 res!2355503) b!5532462))

(assert (= (and b!5532470 (not res!2355502)) b!5532461))

(assert (= (and b!5532461 res!2355505) b!5532463))

(assert (= (and b!5532463 (not res!2355499)) b!5532471))

(assert (= (and b!5532471 (not res!2355501)) b!5532473))

(assert (= (or b!5532465 b!5532463 b!5532467) bm!410915))

(declare-fun m!6534128 () Bool)

(assert (=> b!5532473 m!6534128))

(declare-fun m!6534130 () Bool)

(assert (=> b!5532469 m!6534130))

(assert (=> b!5532469 m!6534130))

(declare-fun m!6534132 () Bool)

(assert (=> b!5532469 m!6534132))

(assert (=> b!5532471 m!6534130))

(assert (=> b!5532471 m!6534130))

(assert (=> b!5532471 m!6534132))

(declare-fun m!6534134 () Bool)

(assert (=> bm!410915 m!6534134))

(assert (=> b!5532466 m!6533600))

(assert (=> b!5532464 m!6534128))

(assert (=> b!5532464 m!6534128))

(declare-fun m!6534136 () Bool)

(assert (=> b!5532464 m!6534136))

(assert (=> b!5532464 m!6534130))

(assert (=> b!5532464 m!6534136))

(assert (=> b!5532464 m!6534130))

(declare-fun m!6534140 () Bool)

(assert (=> b!5532464 m!6534140))

(assert (=> d!1753181 m!6534134))

(assert (=> d!1753181 m!6533958))

(assert (=> b!5532462 m!6534128))

(assert (=> d!1753075 d!1753181))

(declare-fun b!5532475 () Bool)

(declare-fun e!3419889 () Bool)

(declare-fun call!410921 () Bool)

(assert (=> b!5532475 (= e!3419889 call!410921)))

(declare-fun bm!410916 () Bool)

(declare-fun call!410922 () Bool)

(assert (=> bm!410916 (= call!410922 call!410921)))

(declare-fun b!5532476 () Bool)

(declare-fun res!2355510 () Bool)

(declare-fun e!3419884 () Bool)

(assert (=> b!5532476 (=> res!2355510 e!3419884)))

(assert (=> b!5532476 (= res!2355510 (not ((_ is Concat!24364) (regOne!31550 r!7292))))))

(declare-fun e!3419886 () Bool)

(assert (=> b!5532476 (= e!3419886 e!3419884)))

(declare-fun b!5532477 () Bool)

(declare-fun e!3419887 () Bool)

(assert (=> b!5532477 (= e!3419887 call!410922)))

(declare-fun bm!410917 () Bool)

(declare-fun c!968309 () Bool)

(declare-fun c!968308 () Bool)

(assert (=> bm!410917 (= call!410921 (validRegex!7255 (ite c!968308 (reg!15848 (regOne!31550 r!7292)) (ite c!968309 (regTwo!31551 (regOne!31550 r!7292)) (regTwo!31550 (regOne!31550 r!7292))))))))

(declare-fun b!5532479 () Bool)

(declare-fun e!3419885 () Bool)

(assert (=> b!5532479 (= e!3419885 e!3419886)))

(assert (=> b!5532479 (= c!968309 ((_ is Union!15519) (regOne!31550 r!7292)))))

(declare-fun b!5532480 () Bool)

(declare-fun e!3419888 () Bool)

(assert (=> b!5532480 (= e!3419884 e!3419888)))

(declare-fun res!2355506 () Bool)

(assert (=> b!5532480 (=> (not res!2355506) (not e!3419888))))

(declare-fun call!410923 () Bool)

(assert (=> b!5532480 (= res!2355506 call!410923)))

(declare-fun b!5532481 () Bool)

(assert (=> b!5532481 (= e!3419885 e!3419889)))

(declare-fun res!2355508 () Bool)

(assert (=> b!5532481 (= res!2355508 (not (nullable!5553 (reg!15848 (regOne!31550 r!7292)))))))

(assert (=> b!5532481 (=> (not res!2355508) (not e!3419889))))

(declare-fun bm!410918 () Bool)

(assert (=> bm!410918 (= call!410923 (validRegex!7255 (ite c!968309 (regOne!31551 (regOne!31550 r!7292)) (regOne!31550 (regOne!31550 r!7292)))))))

(declare-fun b!5532482 () Bool)

(assert (=> b!5532482 (= e!3419888 call!410922)))

(declare-fun b!5532483 () Bool)

(declare-fun res!2355507 () Bool)

(assert (=> b!5532483 (=> (not res!2355507) (not e!3419887))))

(assert (=> b!5532483 (= res!2355507 call!410923)))

(assert (=> b!5532483 (= e!3419886 e!3419887)))

(declare-fun d!1753183 () Bool)

(declare-fun res!2355509 () Bool)

(declare-fun e!3419883 () Bool)

(assert (=> d!1753183 (=> res!2355509 e!3419883)))

(assert (=> d!1753183 (= res!2355509 ((_ is ElementMatch!15519) (regOne!31550 r!7292)))))

(assert (=> d!1753183 (= (validRegex!7255 (regOne!31550 r!7292)) e!3419883)))

(declare-fun b!5532478 () Bool)

(assert (=> b!5532478 (= e!3419883 e!3419885)))

(assert (=> b!5532478 (= c!968308 ((_ is Star!15519) (regOne!31550 r!7292)))))

(assert (= (and d!1753183 (not res!2355509)) b!5532478))

(assert (= (and b!5532478 c!968308) b!5532481))

(assert (= (and b!5532478 (not c!968308)) b!5532479))

(assert (= (and b!5532481 res!2355508) b!5532475))

(assert (= (and b!5532479 c!968309) b!5532483))

(assert (= (and b!5532479 (not c!968309)) b!5532476))

(assert (= (and b!5532483 res!2355507) b!5532477))

(assert (= (and b!5532476 (not res!2355510)) b!5532480))

(assert (= (and b!5532480 res!2355506) b!5532482))

(assert (= (or b!5532477 b!5532482) bm!410916))

(assert (= (or b!5532483 b!5532480) bm!410918))

(assert (= (or b!5532475 bm!410916) bm!410917))

(declare-fun m!6534146 () Bool)

(assert (=> bm!410917 m!6534146))

(declare-fun m!6534148 () Bool)

(assert (=> b!5532481 m!6534148))

(declare-fun m!6534150 () Bool)

(assert (=> bm!410918 m!6534150))

(assert (=> d!1753075 d!1753183))

(assert (=> bs!1279340 d!1753073))

(declare-fun d!1753187 () Bool)

(assert (=> d!1753187 (= (isConcat!612 lt!2248711) ((_ is Concat!24364) lt!2248711))))

(assert (=> b!5532162 d!1753187))

(declare-fun b!5532495 () Bool)

(declare-fun e!3419898 () (InoxSet Context!9806))

(declare-fun e!3419897 () (InoxSet Context!9806))

(assert (=> b!5532495 (= e!3419898 e!3419897)))

(declare-fun c!968316 () Bool)

(assert (=> b!5532495 (= c!968316 ((_ is Concat!24364) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))))))

(declare-fun bm!410925 () Bool)

(declare-fun call!410933 () (InoxSet Context!9806))

(declare-fun call!410934 () (InoxSet Context!9806))

(assert (=> bm!410925 (= call!410933 call!410934)))

(declare-fun bm!410926 () Bool)

(declare-fun call!410931 () List!62856)

(declare-fun call!410930 () List!62856)

(assert (=> bm!410926 (= call!410931 call!410930)))

(declare-fun b!5532496 () Bool)

(declare-fun e!3419900 () (InoxSet Context!9806))

(declare-fun e!3419896 () (InoxSet Context!9806))

(assert (=> b!5532496 (= e!3419900 e!3419896)))

(declare-fun c!968319 () Bool)

(assert (=> b!5532496 (= c!968319 ((_ is Union!15519) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))))))

(declare-fun b!5532497 () Bool)

(assert (=> b!5532497 (= e!3419897 call!410933)))

(declare-fun c!968317 () Bool)

(declare-fun d!1753189 () Bool)

(assert (=> d!1753189 (= c!968317 (and ((_ is ElementMatch!15519) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (= (c!968061 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (h!69181 s!2326))))))

(assert (=> d!1753189 (= (derivationStepZipperDown!861 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))) (ite c!968242 lt!2248644 (Context!9807 call!410865)) (h!69181 s!2326)) e!3419900)))

(declare-fun b!5532498 () Bool)

(declare-fun call!410935 () (InoxSet Context!9806))

(assert (=> b!5532498 (= e!3419898 ((_ map or) call!410935 call!410934))))

(declare-fun b!5532499 () Bool)

(declare-fun e!3419899 () (InoxSet Context!9806))

(assert (=> b!5532499 (= e!3419899 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532500 () Bool)

(declare-fun c!968315 () Bool)

(declare-fun e!3419901 () Bool)

(assert (=> b!5532500 (= c!968315 e!3419901)))

(declare-fun res!2355512 () Bool)

(assert (=> b!5532500 (=> (not res!2355512) (not e!3419901))))

(assert (=> b!5532500 (= res!2355512 ((_ is Concat!24364) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))))))

(assert (=> b!5532500 (= e!3419896 e!3419898)))

(declare-fun b!5532501 () Bool)

(assert (=> b!5532501 (= e!3419899 call!410933)))

(declare-fun bm!410927 () Bool)

(assert (=> bm!410927 (= call!410930 ($colon$colon!1596 (exprs!5403 (ite c!968242 lt!2248644 (Context!9807 call!410865))) (ite (or c!968315 c!968316) (regTwo!31550 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))))))))

(declare-fun b!5532502 () Bool)

(assert (=> b!5532502 (= e!3419900 (store ((as const (Array Context!9806 Bool)) false) (ite c!968242 lt!2248644 (Context!9807 call!410865)) true))))

(declare-fun bm!410928 () Bool)

(declare-fun call!410932 () (InoxSet Context!9806))

(assert (=> bm!410928 (= call!410934 call!410932)))

(declare-fun bm!410929 () Bool)

(assert (=> bm!410929 (= call!410935 (derivationStepZipperDown!861 (ite c!968319 (regOne!31551 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (regOne!31550 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))))) (ite c!968319 (ite c!968242 lt!2248644 (Context!9807 call!410865)) (Context!9807 call!410930)) (h!69181 s!2326)))))

(declare-fun b!5532503 () Bool)

(assert (=> b!5532503 (= e!3419901 (nullable!5553 (regOne!31550 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))))))))

(declare-fun b!5532504 () Bool)

(declare-fun c!968318 () Bool)

(assert (=> b!5532504 (= c!968318 ((_ is Star!15519) (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))))))

(assert (=> b!5532504 (= e!3419897 e!3419899)))

(declare-fun bm!410930 () Bool)

(assert (=> bm!410930 (= call!410932 (derivationStepZipperDown!861 (ite c!968319 (regTwo!31551 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (ite c!968315 (regTwo!31550 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (ite c!968316 (regOne!31550 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292)))) (reg!15848 (ite c!968242 (regOne!31551 (regTwo!31550 r!7292)) (regOne!31550 (regTwo!31550 r!7292))))))) (ite (or c!968319 c!968315) (ite c!968242 lt!2248644 (Context!9807 call!410865)) (Context!9807 call!410931)) (h!69181 s!2326)))))

(declare-fun b!5532505 () Bool)

(assert (=> b!5532505 (= e!3419896 ((_ map or) call!410935 call!410932))))

(assert (= (and d!1753189 c!968317) b!5532502))

(assert (= (and d!1753189 (not c!968317)) b!5532496))

(assert (= (and b!5532496 c!968319) b!5532505))

(assert (= (and b!5532496 (not c!968319)) b!5532500))

(assert (= (and b!5532500 res!2355512) b!5532503))

(assert (= (and b!5532500 c!968315) b!5532498))

(assert (= (and b!5532500 (not c!968315)) b!5532495))

(assert (= (and b!5532495 c!968316) b!5532497))

(assert (= (and b!5532495 (not c!968316)) b!5532504))

(assert (= (and b!5532504 c!968318) b!5532501))

(assert (= (and b!5532504 (not c!968318)) b!5532499))

(assert (= (or b!5532497 b!5532501) bm!410926))

(assert (= (or b!5532497 b!5532501) bm!410925))

(assert (= (or b!5532498 bm!410926) bm!410927))

(assert (= (or b!5532498 bm!410925) bm!410928))

(assert (= (or b!5532505 bm!410928) bm!410930))

(assert (= (or b!5532505 b!5532498) bm!410929))

(declare-fun m!6534152 () Bool)

(assert (=> bm!410930 m!6534152))

(declare-fun m!6534154 () Bool)

(assert (=> b!5532502 m!6534154))

(declare-fun m!6534156 () Bool)

(assert (=> bm!410929 m!6534156))

(declare-fun m!6534158 () Bool)

(assert (=> b!5532503 m!6534158))

(declare-fun m!6534160 () Bool)

(assert (=> bm!410927 m!6534160))

(assert (=> bm!410864 d!1753189))

(assert (=> d!1753063 d!1753067))

(declare-fun d!1753191 () Bool)

(assert (=> d!1753191 (= (flatMap!1132 lt!2248636 lambda!296961) (dynLambda!24532 lambda!296961 lt!2248635))))

(assert (=> d!1753191 true))

(declare-fun _$13!2108 () Unit!155498)

(assert (=> d!1753191 (= (choose!42037 lt!2248636 lt!2248635 lambda!296961) _$13!2108)))

(declare-fun b_lambda!210041 () Bool)

(assert (=> (not b_lambda!210041) (not d!1753191)))

(declare-fun bs!1279382 () Bool)

(assert (= bs!1279382 d!1753191))

(assert (=> bs!1279382 m!6533588))

(assert (=> bs!1279382 m!6533910))

(assert (=> d!1753063 d!1753191))

(declare-fun bs!1279383 () Bool)

(declare-fun d!1753193 () Bool)

(assert (= bs!1279383 (and d!1753193 d!1753117)))

(declare-fun lambda!297030 () Int)

(assert (=> bs!1279383 (= lambda!297030 lambda!297024)))

(declare-fun bs!1279384 () Bool)

(assert (= bs!1279384 (and d!1753193 d!1753055)))

(assert (=> bs!1279384 (= lambda!297030 lambda!297010)))

(declare-fun bs!1279385 () Bool)

(assert (= bs!1279385 (and d!1753193 d!1753029)))

(assert (=> bs!1279385 (= lambda!297030 lambda!297001)))

(declare-fun bs!1279386 () Bool)

(assert (= bs!1279386 (and d!1753193 d!1753089)))

(assert (=> bs!1279386 (= lambda!297030 lambda!297022)))

(declare-fun bs!1279387 () Bool)

(assert (= bs!1279387 (and d!1753193 d!1753035)))

(assert (=> bs!1279387 (= lambda!297030 lambda!297007)))

(declare-fun bs!1279388 () Bool)

(assert (= bs!1279388 (and d!1753193 d!1753099)))

(assert (=> bs!1279388 (= lambda!297030 lambda!297023)))

(declare-fun b!5532506 () Bool)

(declare-fun e!3419903 () Regex!15519)

(declare-fun e!3419907 () Regex!15519)

(assert (=> b!5532506 (= e!3419903 e!3419907)))

(declare-fun c!968323 () Bool)

(assert (=> b!5532506 (= c!968323 ((_ is Cons!62732) (t!376115 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532507 () Bool)

(declare-fun e!3419905 () Bool)

(declare-fun lt!2248742 () Regex!15519)

(assert (=> b!5532507 (= e!3419905 (isEmptyLang!1099 lt!2248742))))

(declare-fun b!5532508 () Bool)

(assert (=> b!5532508 (= e!3419903 (h!69180 (t!376115 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532509 () Bool)

(declare-fun e!3419904 () Bool)

(assert (=> b!5532509 (= e!3419904 (isUnion!529 lt!2248742))))

(declare-fun b!5532510 () Bool)

(assert (=> b!5532510 (= e!3419907 EmptyLang!15519)))

(declare-fun e!3419906 () Bool)

(assert (=> d!1753193 e!3419906))

(declare-fun res!2355513 () Bool)

(assert (=> d!1753193 (=> (not res!2355513) (not e!3419906))))

(assert (=> d!1753193 (= res!2355513 (validRegex!7255 lt!2248742))))

(assert (=> d!1753193 (= lt!2248742 e!3419903)))

(declare-fun c!968320 () Bool)

(declare-fun e!3419902 () Bool)

(assert (=> d!1753193 (= c!968320 e!3419902)))

(declare-fun res!2355514 () Bool)

(assert (=> d!1753193 (=> (not res!2355514) (not e!3419902))))

(assert (=> d!1753193 (= res!2355514 ((_ is Cons!62732) (t!376115 (unfocusZipperList!947 zl!343))))))

(assert (=> d!1753193 (forall!14697 (t!376115 (unfocusZipperList!947 zl!343)) lambda!297030)))

(assert (=> d!1753193 (= (generalisedUnion!1382 (t!376115 (unfocusZipperList!947 zl!343))) lt!2248742)))

(declare-fun b!5532511 () Bool)

(assert (=> b!5532511 (= e!3419904 (= lt!2248742 (head!11838 (t!376115 (unfocusZipperList!947 zl!343)))))))

(declare-fun b!5532512 () Bool)

(assert (=> b!5532512 (= e!3419907 (Union!15519 (h!69180 (t!376115 (unfocusZipperList!947 zl!343))) (generalisedUnion!1382 (t!376115 (t!376115 (unfocusZipperList!947 zl!343))))))))

(declare-fun b!5532513 () Bool)

(assert (=> b!5532513 (= e!3419902 (isEmpty!34522 (t!376115 (t!376115 (unfocusZipperList!947 zl!343)))))))

(declare-fun b!5532514 () Bool)

(assert (=> b!5532514 (= e!3419906 e!3419905)))

(declare-fun c!968322 () Bool)

(assert (=> b!5532514 (= c!968322 (isEmpty!34522 (t!376115 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532515 () Bool)

(assert (=> b!5532515 (= e!3419905 e!3419904)))

(declare-fun c!968321 () Bool)

(assert (=> b!5532515 (= c!968321 (isEmpty!34522 (tail!10933 (t!376115 (unfocusZipperList!947 zl!343)))))))

(assert (= (and d!1753193 res!2355514) b!5532513))

(assert (= (and d!1753193 c!968320) b!5532508))

(assert (= (and d!1753193 (not c!968320)) b!5532506))

(assert (= (and b!5532506 c!968323) b!5532512))

(assert (= (and b!5532506 (not c!968323)) b!5532510))

(assert (= (and d!1753193 res!2355513) b!5532514))

(assert (= (and b!5532514 c!968322) b!5532507))

(assert (= (and b!5532514 (not c!968322)) b!5532515))

(assert (= (and b!5532515 c!968321) b!5532511))

(assert (= (and b!5532515 (not c!968321)) b!5532509))

(declare-fun m!6534168 () Bool)

(assert (=> b!5532513 m!6534168))

(declare-fun m!6534170 () Bool)

(assert (=> b!5532512 m!6534170))

(declare-fun m!6534172 () Bool)

(assert (=> b!5532507 m!6534172))

(declare-fun m!6534174 () Bool)

(assert (=> b!5532515 m!6534174))

(assert (=> b!5532515 m!6534174))

(declare-fun m!6534178 () Bool)

(assert (=> b!5532515 m!6534178))

(assert (=> b!5532514 m!6533826))

(declare-fun m!6534180 () Bool)

(assert (=> b!5532509 m!6534180))

(declare-fun m!6534182 () Bool)

(assert (=> b!5532511 m!6534182))

(declare-fun m!6534184 () Bool)

(assert (=> d!1753193 m!6534184))

(declare-fun m!6534188 () Bool)

(assert (=> d!1753193 m!6534188))

(assert (=> b!5532040 d!1753193))

(declare-fun d!1753195 () Bool)

(assert (=> d!1753195 (= (nullable!5553 (h!69180 (exprs!5403 lt!2248635))) (nullableFct!1675 (h!69180 (exprs!5403 lt!2248635))))))

(declare-fun bs!1279389 () Bool)

(assert (= bs!1279389 d!1753195))

(declare-fun m!6534190 () Bool)

(assert (=> bs!1279389 m!6534190))

(assert (=> b!5532186 d!1753195))

(declare-fun b!5532516 () Bool)

(declare-fun e!3419914 () Bool)

(declare-fun call!410936 () Bool)

(assert (=> b!5532516 (= e!3419914 call!410936)))

(declare-fun bm!410931 () Bool)

(declare-fun call!410937 () Bool)

(assert (=> bm!410931 (= call!410937 call!410936)))

(declare-fun b!5532517 () Bool)

(declare-fun res!2355519 () Bool)

(declare-fun e!3419909 () Bool)

(assert (=> b!5532517 (=> res!2355519 e!3419909)))

(assert (=> b!5532517 (= res!2355519 (not ((_ is Concat!24364) lt!2248701)))))

(declare-fun e!3419911 () Bool)

(assert (=> b!5532517 (= e!3419911 e!3419909)))

(declare-fun b!5532518 () Bool)

(declare-fun e!3419912 () Bool)

(assert (=> b!5532518 (= e!3419912 call!410937)))

(declare-fun c!968324 () Bool)

(declare-fun bm!410932 () Bool)

(declare-fun c!968325 () Bool)

(assert (=> bm!410932 (= call!410936 (validRegex!7255 (ite c!968324 (reg!15848 lt!2248701) (ite c!968325 (regTwo!31551 lt!2248701) (regTwo!31550 lt!2248701)))))))

(declare-fun b!5532520 () Bool)

(declare-fun e!3419910 () Bool)

(assert (=> b!5532520 (= e!3419910 e!3419911)))

(assert (=> b!5532520 (= c!968325 ((_ is Union!15519) lt!2248701))))

(declare-fun b!5532521 () Bool)

(declare-fun e!3419913 () Bool)

(assert (=> b!5532521 (= e!3419909 e!3419913)))

(declare-fun res!2355515 () Bool)

(assert (=> b!5532521 (=> (not res!2355515) (not e!3419913))))

(declare-fun call!410938 () Bool)

(assert (=> b!5532521 (= res!2355515 call!410938)))

(declare-fun b!5532522 () Bool)

(assert (=> b!5532522 (= e!3419910 e!3419914)))

(declare-fun res!2355517 () Bool)

(assert (=> b!5532522 (= res!2355517 (not (nullable!5553 (reg!15848 lt!2248701))))))

(assert (=> b!5532522 (=> (not res!2355517) (not e!3419914))))

(declare-fun bm!410933 () Bool)

(assert (=> bm!410933 (= call!410938 (validRegex!7255 (ite c!968325 (regOne!31551 lt!2248701) (regOne!31550 lt!2248701))))))

(declare-fun b!5532523 () Bool)

(assert (=> b!5532523 (= e!3419913 call!410937)))

(declare-fun b!5532524 () Bool)

(declare-fun res!2355516 () Bool)

(assert (=> b!5532524 (=> (not res!2355516) (not e!3419912))))

(assert (=> b!5532524 (= res!2355516 call!410938)))

(assert (=> b!5532524 (= e!3419911 e!3419912)))

(declare-fun d!1753199 () Bool)

(declare-fun res!2355518 () Bool)

(declare-fun e!3419908 () Bool)

(assert (=> d!1753199 (=> res!2355518 e!3419908)))

(assert (=> d!1753199 (= res!2355518 ((_ is ElementMatch!15519) lt!2248701))))

(assert (=> d!1753199 (= (validRegex!7255 lt!2248701) e!3419908)))

(declare-fun b!5532519 () Bool)

(assert (=> b!5532519 (= e!3419908 e!3419910)))

(assert (=> b!5532519 (= c!968324 ((_ is Star!15519) lt!2248701))))

(assert (= (and d!1753199 (not res!2355518)) b!5532519))

(assert (= (and b!5532519 c!968324) b!5532522))

(assert (= (and b!5532519 (not c!968324)) b!5532520))

(assert (= (and b!5532522 res!2355517) b!5532516))

(assert (= (and b!5532520 c!968325) b!5532524))

(assert (= (and b!5532520 (not c!968325)) b!5532517))

(assert (= (and b!5532524 res!2355516) b!5532518))

(assert (= (and b!5532517 (not res!2355519)) b!5532521))

(assert (= (and b!5532521 res!2355515) b!5532523))

(assert (= (or b!5532518 b!5532523) bm!410931))

(assert (= (or b!5532524 b!5532521) bm!410933))

(assert (= (or b!5532516 bm!410931) bm!410932))

(declare-fun m!6534192 () Bool)

(assert (=> bm!410932 m!6534192))

(declare-fun m!6534194 () Bool)

(assert (=> b!5532522 m!6534194))

(declare-fun m!6534196 () Bool)

(assert (=> bm!410933 m!6534196))

(assert (=> d!1753029 d!1753199))

(declare-fun d!1753201 () Bool)

(declare-fun res!2355520 () Bool)

(declare-fun e!3419915 () Bool)

(assert (=> d!1753201 (=> res!2355520 e!3419915)))

(assert (=> d!1753201 (= res!2355520 ((_ is Nil!62732) (unfocusZipperList!947 zl!343)))))

(assert (=> d!1753201 (= (forall!14697 (unfocusZipperList!947 zl!343) lambda!297001) e!3419915)))

(declare-fun b!5532525 () Bool)

(declare-fun e!3419916 () Bool)

(assert (=> b!5532525 (= e!3419915 e!3419916)))

(declare-fun res!2355521 () Bool)

(assert (=> b!5532525 (=> (not res!2355521) (not e!3419916))))

(assert (=> b!5532525 (= res!2355521 (dynLambda!24533 lambda!297001 (h!69180 (unfocusZipperList!947 zl!343))))))

(declare-fun b!5532526 () Bool)

(assert (=> b!5532526 (= e!3419916 (forall!14697 (t!376115 (unfocusZipperList!947 zl!343)) lambda!297001))))

(assert (= (and d!1753201 (not res!2355520)) b!5532525))

(assert (= (and b!5532525 res!2355521) b!5532526))

(declare-fun b_lambda!210043 () Bool)

(assert (=> (not b_lambda!210043) (not b!5532525)))

(declare-fun m!6534198 () Bool)

(assert (=> b!5532525 m!6534198))

(declare-fun m!6534200 () Bool)

(assert (=> b!5532526 m!6534200))

(assert (=> d!1753029 d!1753201))

(declare-fun b!5532527 () Bool)

(declare-fun e!3419923 () Bool)

(declare-fun call!410939 () Bool)

(assert (=> b!5532527 (= e!3419923 call!410939)))

(declare-fun bm!410934 () Bool)

(declare-fun call!410940 () Bool)

(assert (=> bm!410934 (= call!410940 call!410939)))

(declare-fun b!5532528 () Bool)

(declare-fun res!2355526 () Bool)

(declare-fun e!3419918 () Bool)

(assert (=> b!5532528 (=> res!2355526 e!3419918)))

(assert (=> b!5532528 (= res!2355526 (not ((_ is Concat!24364) lt!2248711)))))

(declare-fun e!3419920 () Bool)

(assert (=> b!5532528 (= e!3419920 e!3419918)))

(declare-fun b!5532529 () Bool)

(declare-fun e!3419921 () Bool)

(assert (=> b!5532529 (= e!3419921 call!410940)))

(declare-fun c!968326 () Bool)

(declare-fun bm!410935 () Bool)

(declare-fun c!968327 () Bool)

(assert (=> bm!410935 (= call!410939 (validRegex!7255 (ite c!968326 (reg!15848 lt!2248711) (ite c!968327 (regTwo!31551 lt!2248711) (regTwo!31550 lt!2248711)))))))

(declare-fun b!5532531 () Bool)

(declare-fun e!3419919 () Bool)

(assert (=> b!5532531 (= e!3419919 e!3419920)))

(assert (=> b!5532531 (= c!968327 ((_ is Union!15519) lt!2248711))))

(declare-fun b!5532532 () Bool)

(declare-fun e!3419922 () Bool)

(assert (=> b!5532532 (= e!3419918 e!3419922)))

(declare-fun res!2355522 () Bool)

(assert (=> b!5532532 (=> (not res!2355522) (not e!3419922))))

(declare-fun call!410941 () Bool)

(assert (=> b!5532532 (= res!2355522 call!410941)))

(declare-fun b!5532533 () Bool)

(assert (=> b!5532533 (= e!3419919 e!3419923)))

(declare-fun res!2355524 () Bool)

(assert (=> b!5532533 (= res!2355524 (not (nullable!5553 (reg!15848 lt!2248711))))))

(assert (=> b!5532533 (=> (not res!2355524) (not e!3419923))))

(declare-fun bm!410936 () Bool)

(assert (=> bm!410936 (= call!410941 (validRegex!7255 (ite c!968327 (regOne!31551 lt!2248711) (regOne!31550 lt!2248711))))))

(declare-fun b!5532534 () Bool)

(assert (=> b!5532534 (= e!3419922 call!410940)))

(declare-fun b!5532535 () Bool)

(declare-fun res!2355523 () Bool)

(assert (=> b!5532535 (=> (not res!2355523) (not e!3419921))))

(assert (=> b!5532535 (= res!2355523 call!410941)))

(assert (=> b!5532535 (= e!3419920 e!3419921)))

(declare-fun d!1753203 () Bool)

(declare-fun res!2355525 () Bool)

(declare-fun e!3419917 () Bool)

(assert (=> d!1753203 (=> res!2355525 e!3419917)))

(assert (=> d!1753203 (= res!2355525 ((_ is ElementMatch!15519) lt!2248711))))

(assert (=> d!1753203 (= (validRegex!7255 lt!2248711) e!3419917)))

(declare-fun b!5532530 () Bool)

(assert (=> b!5532530 (= e!3419917 e!3419919)))

(assert (=> b!5532530 (= c!968326 ((_ is Star!15519) lt!2248711))))

(assert (= (and d!1753203 (not res!2355525)) b!5532530))

(assert (= (and b!5532530 c!968326) b!5532533))

(assert (= (and b!5532530 (not c!968326)) b!5532531))

(assert (= (and b!5532533 res!2355524) b!5532527))

(assert (= (and b!5532531 c!968327) b!5532535))

(assert (= (and b!5532531 (not c!968327)) b!5532528))

(assert (= (and b!5532535 res!2355523) b!5532529))

(assert (= (and b!5532528 (not res!2355526)) b!5532532))

(assert (= (and b!5532532 res!2355522) b!5532534))

(assert (= (or b!5532529 b!5532534) bm!410934))

(assert (= (or b!5532535 b!5532532) bm!410936))

(assert (= (or b!5532527 bm!410934) bm!410935))

(declare-fun m!6534202 () Bool)

(assert (=> bm!410935 m!6534202))

(declare-fun m!6534204 () Bool)

(assert (=> b!5532533 m!6534204))

(declare-fun m!6534206 () Bool)

(assert (=> bm!410936 m!6534206))

(assert (=> d!1753055 d!1753203))

(declare-fun d!1753205 () Bool)

(declare-fun res!2355529 () Bool)

(declare-fun e!3419924 () Bool)

(assert (=> d!1753205 (=> res!2355529 e!3419924)))

(assert (=> d!1753205 (= res!2355529 ((_ is Nil!62732) (exprs!5403 (h!69182 zl!343))))))

(assert (=> d!1753205 (= (forall!14697 (exprs!5403 (h!69182 zl!343)) lambda!297010) e!3419924)))

(declare-fun b!5532536 () Bool)

(declare-fun e!3419925 () Bool)

(assert (=> b!5532536 (= e!3419924 e!3419925)))

(declare-fun res!2355530 () Bool)

(assert (=> b!5532536 (=> (not res!2355530) (not e!3419925))))

(assert (=> b!5532536 (= res!2355530 (dynLambda!24533 lambda!297010 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532537 () Bool)

(assert (=> b!5532537 (= e!3419925 (forall!14697 (t!376115 (exprs!5403 (h!69182 zl!343))) lambda!297010))))

(assert (= (and d!1753205 (not res!2355529)) b!5532536))

(assert (= (and b!5532536 res!2355530) b!5532537))

(declare-fun b_lambda!210045 () Bool)

(assert (=> (not b_lambda!210045) (not b!5532536)))

(declare-fun m!6534208 () Bool)

(assert (=> b!5532536 m!6534208))

(declare-fun m!6534210 () Bool)

(assert (=> b!5532537 m!6534210))

(assert (=> d!1753055 d!1753205))

(declare-fun d!1753207 () Bool)

(assert (=> d!1753207 (= (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (nullableFct!1675 (h!69180 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))

(declare-fun bs!1279390 () Bool)

(assert (= bs!1279390 d!1753207))

(declare-fun m!6534212 () Bool)

(assert (=> bs!1279390 m!6534212))

(assert (=> b!5531723 d!1753207))

(assert (=> bs!1279338 d!1753093))

(declare-fun bs!1279391 () Bool)

(declare-fun d!1753209 () Bool)

(assert (= bs!1279391 (and d!1753209 d!1753193)))

(declare-fun lambda!297031 () Int)

(assert (=> bs!1279391 (= lambda!297031 lambda!297030)))

(declare-fun bs!1279392 () Bool)

(assert (= bs!1279392 (and d!1753209 d!1753117)))

(assert (=> bs!1279392 (= lambda!297031 lambda!297024)))

(declare-fun bs!1279393 () Bool)

(assert (= bs!1279393 (and d!1753209 d!1753055)))

(assert (=> bs!1279393 (= lambda!297031 lambda!297010)))

(declare-fun bs!1279394 () Bool)

(assert (= bs!1279394 (and d!1753209 d!1753029)))

(assert (=> bs!1279394 (= lambda!297031 lambda!297001)))

(declare-fun bs!1279395 () Bool)

(assert (= bs!1279395 (and d!1753209 d!1753089)))

(assert (=> bs!1279395 (= lambda!297031 lambda!297022)))

(declare-fun bs!1279396 () Bool)

(assert (= bs!1279396 (and d!1753209 d!1753035)))

(assert (=> bs!1279396 (= lambda!297031 lambda!297007)))

(declare-fun bs!1279398 () Bool)

(assert (= bs!1279398 (and d!1753209 d!1753099)))

(assert (=> bs!1279398 (= lambda!297031 lambda!297023)))

(assert (=> d!1753209 (= (inv!82044 (h!69182 (t!376117 zl!343))) (forall!14697 (exprs!5403 (h!69182 (t!376117 zl!343))) lambda!297031))))

(declare-fun bs!1279399 () Bool)

(assert (= bs!1279399 d!1753209))

(declare-fun m!6534216 () Bool)

(assert (=> bs!1279399 m!6534216))

(assert (=> b!5532279 d!1753209))

(assert (=> bm!410840 d!1753141))

(declare-fun d!1753215 () Bool)

(assert (=> d!1753215 (= (isEmpty!34522 (unfocusZipperList!947 zl!343)) ((_ is Nil!62732) (unfocusZipperList!947 zl!343)))))

(assert (=> b!5532042 d!1753215))

(declare-fun d!1753217 () Bool)

(assert (=> d!1753217 (= (flatMap!1132 z!1189 lambda!296972) (choose!42038 z!1189 lambda!296972))))

(declare-fun bs!1279400 () Bool)

(assert (= bs!1279400 d!1753217))

(declare-fun m!6534218 () Bool)

(assert (=> bs!1279400 m!6534218))

(assert (=> d!1752989 d!1753217))

(declare-fun bm!410938 () Bool)

(declare-fun call!410943 () Bool)

(assert (=> bm!410938 (= call!410943 (isEmpty!34524 (_2!35919 (get!21592 lt!2248722))))))

(declare-fun b!5532552 () Bool)

(declare-fun e!3419936 () Bool)

(declare-fun e!3419938 () Bool)

(assert (=> b!5532552 (= e!3419936 e!3419938)))

(declare-fun res!2355547 () Bool)

(assert (=> b!5532552 (=> (not res!2355547) (not e!3419938))))

(declare-fun lt!2248744 () Bool)

(assert (=> b!5532552 (= res!2355547 (not lt!2248744))))

(declare-fun b!5532553 () Bool)

(declare-fun e!3419933 () Bool)

(assert (=> b!5532553 (= e!3419933 (= (head!11837 (_2!35919 (get!21592 lt!2248722))) (c!968061 (regTwo!31550 r!7292))))))

(declare-fun b!5532554 () Bool)

(declare-fun e!3419935 () Bool)

(assert (=> b!5532554 (= e!3419938 e!3419935)))

(declare-fun res!2355541 () Bool)

(assert (=> b!5532554 (=> res!2355541 e!3419935)))

(assert (=> b!5532554 (= res!2355541 call!410943)))

(declare-fun b!5532556 () Bool)

(declare-fun e!3419934 () Bool)

(assert (=> b!5532556 (= e!3419934 (= lt!2248744 call!410943))))

(declare-fun b!5532557 () Bool)

(declare-fun e!3419939 () Bool)

(assert (=> b!5532557 (= e!3419939 (nullable!5553 (regTwo!31550 r!7292)))))

(declare-fun b!5532558 () Bool)

(declare-fun res!2355546 () Bool)

(assert (=> b!5532558 (=> (not res!2355546) (not e!3419933))))

(assert (=> b!5532558 (= res!2355546 (not call!410943))))

(declare-fun b!5532559 () Bool)

(declare-fun e!3419937 () Bool)

(assert (=> b!5532559 (= e!3419937 (not lt!2248744))))

(declare-fun b!5532560 () Bool)

(declare-fun res!2355545 () Bool)

(assert (=> b!5532560 (=> (not res!2355545) (not e!3419933))))

(assert (=> b!5532560 (= res!2355545 (isEmpty!34524 (tail!10932 (_2!35919 (get!21592 lt!2248722)))))))

(declare-fun b!5532561 () Bool)

(declare-fun res!2355544 () Bool)

(assert (=> b!5532561 (=> res!2355544 e!3419936)))

(assert (=> b!5532561 (= res!2355544 e!3419933)))

(declare-fun res!2355542 () Bool)

(assert (=> b!5532561 (=> (not res!2355542) (not e!3419933))))

(assert (=> b!5532561 (= res!2355542 lt!2248744)))

(declare-fun d!1753219 () Bool)

(assert (=> d!1753219 e!3419934))

(declare-fun c!968331 () Bool)

(assert (=> d!1753219 (= c!968331 ((_ is EmptyExpr!15519) (regTwo!31550 r!7292)))))

(assert (=> d!1753219 (= lt!2248744 e!3419939)))

(declare-fun c!968333 () Bool)

(assert (=> d!1753219 (= c!968333 (isEmpty!34524 (_2!35919 (get!21592 lt!2248722))))))

(assert (=> d!1753219 (validRegex!7255 (regTwo!31550 r!7292))))

(assert (=> d!1753219 (= (matchR!7704 (regTwo!31550 r!7292) (_2!35919 (get!21592 lt!2248722))) lt!2248744)))

(declare-fun b!5532555 () Bool)

(assert (=> b!5532555 (= e!3419939 (matchR!7704 (derivativeStep!4382 (regTwo!31550 r!7292) (head!11837 (_2!35919 (get!21592 lt!2248722)))) (tail!10932 (_2!35919 (get!21592 lt!2248722)))))))

(declare-fun b!5532562 () Bool)

(declare-fun res!2355543 () Bool)

(assert (=> b!5532562 (=> res!2355543 e!3419935)))

(assert (=> b!5532562 (= res!2355543 (not (isEmpty!34524 (tail!10932 (_2!35919 (get!21592 lt!2248722))))))))

(declare-fun b!5532563 () Bool)

(declare-fun res!2355540 () Bool)

(assert (=> b!5532563 (=> res!2355540 e!3419936)))

(assert (=> b!5532563 (= res!2355540 (not ((_ is ElementMatch!15519) (regTwo!31550 r!7292))))))

(assert (=> b!5532563 (= e!3419937 e!3419936)))

(declare-fun b!5532564 () Bool)

(assert (=> b!5532564 (= e!3419935 (not (= (head!11837 (_2!35919 (get!21592 lt!2248722))) (c!968061 (regTwo!31550 r!7292)))))))

(declare-fun b!5532565 () Bool)

(assert (=> b!5532565 (= e!3419934 e!3419937)))

(declare-fun c!968332 () Bool)

(assert (=> b!5532565 (= c!968332 ((_ is EmptyLang!15519) (regTwo!31550 r!7292)))))

(assert (= (and d!1753219 c!968333) b!5532557))

(assert (= (and d!1753219 (not c!968333)) b!5532555))

(assert (= (and d!1753219 c!968331) b!5532556))

(assert (= (and d!1753219 (not c!968331)) b!5532565))

(assert (= (and b!5532565 c!968332) b!5532559))

(assert (= (and b!5532565 (not c!968332)) b!5532563))

(assert (= (and b!5532563 (not res!2355540)) b!5532561))

(assert (= (and b!5532561 res!2355542) b!5532558))

(assert (= (and b!5532558 res!2355546) b!5532560))

(assert (= (and b!5532560 res!2355545) b!5532553))

(assert (= (and b!5532561 (not res!2355544)) b!5532552))

(assert (= (and b!5532552 res!2355547) b!5532554))

(assert (= (and b!5532554 (not res!2355541)) b!5532562))

(assert (= (and b!5532562 (not res!2355543)) b!5532564))

(assert (= (or b!5532556 b!5532554 b!5532558) bm!410938))

(declare-fun m!6534220 () Bool)

(assert (=> b!5532564 m!6534220))

(declare-fun m!6534222 () Bool)

(assert (=> b!5532560 m!6534222))

(assert (=> b!5532560 m!6534222))

(declare-fun m!6534224 () Bool)

(assert (=> b!5532560 m!6534224))

(assert (=> b!5532562 m!6534222))

(assert (=> b!5532562 m!6534222))

(assert (=> b!5532562 m!6534224))

(declare-fun m!6534226 () Bool)

(assert (=> bm!410938 m!6534226))

(assert (=> b!5532557 m!6534034))

(assert (=> b!5532555 m!6534220))

(assert (=> b!5532555 m!6534220))

(declare-fun m!6534228 () Bool)

(assert (=> b!5532555 m!6534228))

(assert (=> b!5532555 m!6534222))

(assert (=> b!5532555 m!6534228))

(assert (=> b!5532555 m!6534222))

(declare-fun m!6534230 () Bool)

(assert (=> b!5532555 m!6534230))

(assert (=> d!1753219 m!6534226))

(assert (=> d!1753219 m!6534040))

(assert (=> b!5532553 m!6534220))

(assert (=> b!5532227 d!1753219))

(declare-fun d!1753221 () Bool)

(assert (=> d!1753221 (= (get!21592 lt!2248722) (v!51564 lt!2248722))))

(assert (=> b!5532227 d!1753221))

(assert (=> d!1753081 d!1753075))

(assert (=> d!1753081 d!1753183))

(assert (=> d!1753081 d!1753085))

(declare-fun d!1753223 () Bool)

(assert (=> d!1753223 (= (Exists!2619 lambda!297013) (choose!42039 lambda!297013))))

(declare-fun bs!1279401 () Bool)

(assert (= bs!1279401 d!1753223))

(declare-fun m!6534232 () Bool)

(assert (=> bs!1279401 m!6534232))

(assert (=> d!1753081 d!1753223))

(declare-fun bs!1279402 () Bool)

(declare-fun d!1753225 () Bool)

(assert (= bs!1279402 (and d!1753225 d!1753081)))

(declare-fun lambda!297034 () Int)

(assert (=> bs!1279402 (= lambda!297034 lambda!297013)))

(declare-fun bs!1279403 () Bool)

(assert (= bs!1279403 (and d!1753225 b!5532377)))

(assert (=> bs!1279403 (not (= lambda!297034 lambda!297026))))

(declare-fun bs!1279404 () Bool)

(assert (= bs!1279404 (and d!1753225 d!1753083)))

(assert (=> bs!1279404 (not (= lambda!297034 lambda!297019))))

(declare-fun bs!1279405 () Bool)

(assert (= bs!1279405 (and d!1753225 b!5532408)))

(assert (=> bs!1279405 (not (= lambda!297034 lambda!297028))))

(declare-fun bs!1279406 () Bool)

(assert (= bs!1279406 (and d!1753225 b!5531570)))

(assert (=> bs!1279406 (not (= lambda!297034 lambda!296960))))

(assert (=> bs!1279404 (= lambda!297034 lambda!297018)))

(assert (=> bs!1279406 (= lambda!297034 lambda!296959)))

(declare-fun bs!1279407 () Bool)

(assert (= bs!1279407 (and d!1753225 b!5532378)))

(assert (=> bs!1279407 (not (= lambda!297034 lambda!297025))))

(declare-fun bs!1279408 () Bool)

(assert (= bs!1279408 (and d!1753225 b!5532409)))

(assert (=> bs!1279408 (not (= lambda!297034 lambda!297027))))

(declare-fun bs!1279409 () Bool)

(assert (= bs!1279409 (and d!1753225 b!5531865)))

(assert (=> bs!1279409 (not (= lambda!297034 lambda!296986))))

(declare-fun bs!1279410 () Bool)

(assert (= bs!1279410 (and d!1753225 b!5531866)))

(assert (=> bs!1279410 (not (= lambda!297034 lambda!296985))))

(assert (=> d!1753225 true))

(assert (=> d!1753225 true))

(assert (=> d!1753225 true))

(assert (=> d!1753225 (= (isDefined!12231 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) Nil!62733 s!2326 s!2326)) (Exists!2619 lambda!297034))))

(assert (=> d!1753225 true))

(declare-fun _$89!1641 () Unit!155498)

(assert (=> d!1753225 (= (choose!42040 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326) _$89!1641)))

(declare-fun bs!1279411 () Bool)

(assert (= bs!1279411 d!1753225))

(assert (=> bs!1279411 m!6533570))

(assert (=> bs!1279411 m!6533570))

(assert (=> bs!1279411 m!6533572))

(declare-fun m!6534252 () Bool)

(assert (=> bs!1279411 m!6534252))

(assert (=> d!1753081 d!1753225))

(assert (=> b!5531936 d!1753165))

(declare-fun b!5532592 () Bool)

(declare-fun e!3419958 () List!62857)

(assert (=> b!5532592 (= e!3419958 (t!376116 s!2326))))

(declare-fun b!5532593 () Bool)

(assert (=> b!5532593 (= e!3419958 (Cons!62733 (h!69181 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))) (++!13765 (t!376116 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))) (t!376116 s!2326))))))

(declare-fun d!1753235 () Bool)

(declare-fun e!3419959 () Bool)

(assert (=> d!1753235 e!3419959))

(declare-fun res!2355567 () Bool)

(assert (=> d!1753235 (=> (not res!2355567) (not e!3419959))))

(declare-fun lt!2248747 () List!62857)

(declare-fun content!11289 (List!62857) (InoxSet C!31308))

(assert (=> d!1753235 (= res!2355567 (= (content!11289 lt!2248747) ((_ map or) (content!11289 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))) (content!11289 (t!376116 s!2326)))))))

(assert (=> d!1753235 (= lt!2248747 e!3419958)))

(declare-fun c!968338 () Bool)

(assert (=> d!1753235 (= c!968338 ((_ is Nil!62733) (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))))))

(assert (=> d!1753235 (= (++!13765 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326)) lt!2248747)))

(declare-fun b!5532595 () Bool)

(assert (=> b!5532595 (= e!3419959 (or (not (= (t!376116 s!2326) Nil!62733)) (= lt!2248747 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)))))))

(declare-fun b!5532594 () Bool)

(declare-fun res!2355566 () Bool)

(assert (=> b!5532594 (=> (not res!2355566) (not e!3419959))))

(declare-fun size!39945 (List!62857) Int)

(assert (=> b!5532594 (= res!2355566 (= (size!39945 lt!2248747) (+ (size!39945 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))) (size!39945 (t!376116 s!2326)))))))

(assert (= (and d!1753235 c!968338) b!5532592))

(assert (= (and d!1753235 (not c!968338)) b!5532593))

(assert (= (and d!1753235 res!2355567) b!5532594))

(assert (= (and b!5532594 res!2355566) b!5532595))

(declare-fun m!6534256 () Bool)

(assert (=> b!5532593 m!6534256))

(declare-fun m!6534258 () Bool)

(assert (=> d!1753235 m!6534258))

(assert (=> d!1753235 m!6533946))

(declare-fun m!6534260 () Bool)

(assert (=> d!1753235 m!6534260))

(declare-fun m!6534262 () Bool)

(assert (=> d!1753235 m!6534262))

(declare-fun m!6534264 () Bool)

(assert (=> b!5532594 m!6534264))

(assert (=> b!5532594 m!6533946))

(declare-fun m!6534266 () Bool)

(assert (=> b!5532594 m!6534266))

(declare-fun m!6534268 () Bool)

(assert (=> b!5532594 m!6534268))

(assert (=> b!5532225 d!1753235))

(declare-fun b!5532606 () Bool)

(declare-fun e!3419970 () List!62857)

(assert (=> b!5532606 (= e!3419970 (Cons!62733 (h!69181 s!2326) Nil!62733))))

(declare-fun b!5532607 () Bool)

(assert (=> b!5532607 (= e!3419970 (Cons!62733 (h!69181 Nil!62733) (++!13765 (t!376116 Nil!62733) (Cons!62733 (h!69181 s!2326) Nil!62733))))))

(declare-fun d!1753239 () Bool)

(declare-fun e!3419971 () Bool)

(assert (=> d!1753239 e!3419971))

(declare-fun res!2355577 () Bool)

(assert (=> d!1753239 (=> (not res!2355577) (not e!3419971))))

(declare-fun lt!2248748 () List!62857)

(assert (=> d!1753239 (= res!2355577 (= (content!11289 lt!2248748) ((_ map or) (content!11289 Nil!62733) (content!11289 (Cons!62733 (h!69181 s!2326) Nil!62733)))))))

(assert (=> d!1753239 (= lt!2248748 e!3419970)))

(declare-fun c!968341 () Bool)

(assert (=> d!1753239 (= c!968341 ((_ is Nil!62733) Nil!62733))))

(assert (=> d!1753239 (= (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) lt!2248748)))

(declare-fun b!5532609 () Bool)

(assert (=> b!5532609 (= e!3419971 (or (not (= (Cons!62733 (h!69181 s!2326) Nil!62733) Nil!62733)) (= lt!2248748 Nil!62733)))))

(declare-fun b!5532608 () Bool)

(declare-fun res!2355576 () Bool)

(assert (=> b!5532608 (=> (not res!2355576) (not e!3419971))))

(assert (=> b!5532608 (= res!2355576 (= (size!39945 lt!2248748) (+ (size!39945 Nil!62733) (size!39945 (Cons!62733 (h!69181 s!2326) Nil!62733)))))))

(assert (= (and d!1753239 c!968341) b!5532606))

(assert (= (and d!1753239 (not c!968341)) b!5532607))

(assert (= (and d!1753239 res!2355577) b!5532608))

(assert (= (and b!5532608 res!2355576) b!5532609))

(declare-fun m!6534270 () Bool)

(assert (=> b!5532607 m!6534270))

(declare-fun m!6534272 () Bool)

(assert (=> d!1753239 m!6534272))

(declare-fun m!6534274 () Bool)

(assert (=> d!1753239 m!6534274))

(declare-fun m!6534276 () Bool)

(assert (=> d!1753239 m!6534276))

(declare-fun m!6534278 () Bool)

(assert (=> b!5532608 m!6534278))

(declare-fun m!6534280 () Bool)

(assert (=> b!5532608 m!6534280))

(declare-fun m!6534282 () Bool)

(assert (=> b!5532608 m!6534282))

(assert (=> b!5532225 d!1753239))

(declare-fun d!1753241 () Bool)

(assert (=> d!1753241 (= (++!13765 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326)) s!2326)))

(declare-fun lt!2248751 () Unit!155498)

(declare-fun choose!42043 (List!62857 C!31308 List!62857 List!62857) Unit!155498)

(assert (=> d!1753241 (= lt!2248751 (choose!42043 Nil!62733 (h!69181 s!2326) (t!376116 s!2326) s!2326))))

(assert (=> d!1753241 (= (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) (t!376116 s!2326))) s!2326)))

(assert (=> d!1753241 (= (lemmaMoveElementToOtherListKeepsConcatEq!1934 Nil!62733 (h!69181 s!2326) (t!376116 s!2326) s!2326) lt!2248751)))

(declare-fun bs!1279412 () Bool)

(assert (= bs!1279412 d!1753241))

(assert (=> bs!1279412 m!6533946))

(assert (=> bs!1279412 m!6533946))

(assert (=> bs!1279412 m!6533948))

(declare-fun m!6534284 () Bool)

(assert (=> bs!1279412 m!6534284))

(declare-fun m!6534286 () Bool)

(assert (=> bs!1279412 m!6534286))

(assert (=> b!5532225 d!1753241))

(declare-fun b!5532612 () Bool)

(declare-fun e!3419973 () Option!15528)

(assert (=> b!5532612 (= e!3419973 None!15527)))

(declare-fun b!5532613 () Bool)

(declare-fun e!3419975 () Bool)

(declare-fun lt!2248752 () Option!15528)

(assert (=> b!5532613 (= e!3419975 (= (++!13765 (_1!35919 (get!21592 lt!2248752)) (_2!35919 (get!21592 lt!2248752))) s!2326))))

(declare-fun d!1753243 () Bool)

(declare-fun e!3419976 () Bool)

(assert (=> d!1753243 e!3419976))

(declare-fun res!2355580 () Bool)

(assert (=> d!1753243 (=> res!2355580 e!3419976)))

(assert (=> d!1753243 (= res!2355580 e!3419975)))

(declare-fun res!2355582 () Bool)

(assert (=> d!1753243 (=> (not res!2355582) (not e!3419975))))

(assert (=> d!1753243 (= res!2355582 (isDefined!12231 lt!2248752))))

(declare-fun e!3419974 () Option!15528)

(assert (=> d!1753243 (= lt!2248752 e!3419974)))

(declare-fun c!968343 () Bool)

(declare-fun e!3419972 () Bool)

(assert (=> d!1753243 (= c!968343 e!3419972)))

(declare-fun res!2355578 () Bool)

(assert (=> d!1753243 (=> (not res!2355578) (not e!3419972))))

(assert (=> d!1753243 (= res!2355578 (matchR!7704 (regOne!31550 r!7292) (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733))))))

(assert (=> d!1753243 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753243 (= (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326) s!2326) lt!2248752)))

(declare-fun b!5532614 () Bool)

(assert (=> b!5532614 (= e!3419974 e!3419973)))

(declare-fun c!968342 () Bool)

(assert (=> b!5532614 (= c!968342 ((_ is Nil!62733) (t!376116 s!2326)))))

(declare-fun b!5532615 () Bool)

(declare-fun lt!2248754 () Unit!155498)

(declare-fun lt!2248753 () Unit!155498)

(assert (=> b!5532615 (= lt!2248754 lt!2248753)))

(assert (=> b!5532615 (= (++!13765 (++!13765 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (Cons!62733 (h!69181 (t!376116 s!2326)) Nil!62733)) (t!376116 (t!376116 s!2326))) s!2326)))

(assert (=> b!5532615 (= lt!2248753 (lemmaMoveElementToOtherListKeepsConcatEq!1934 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (h!69181 (t!376116 s!2326)) (t!376116 (t!376116 s!2326)) s!2326))))

(assert (=> b!5532615 (= e!3419973 (findConcatSeparation!1942 (regOne!31550 r!7292) (regTwo!31550 r!7292) (++!13765 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (Cons!62733 (h!69181 (t!376116 s!2326)) Nil!62733)) (t!376116 (t!376116 s!2326)) s!2326))))

(declare-fun b!5532616 () Bool)

(assert (=> b!5532616 (= e!3419972 (matchR!7704 (regTwo!31550 r!7292) (t!376116 s!2326)))))

(declare-fun b!5532617 () Bool)

(declare-fun res!2355581 () Bool)

(assert (=> b!5532617 (=> (not res!2355581) (not e!3419975))))

(assert (=> b!5532617 (= res!2355581 (matchR!7704 (regTwo!31550 r!7292) (_2!35919 (get!21592 lt!2248752))))))

(declare-fun b!5532618 () Bool)

(assert (=> b!5532618 (= e!3419976 (not (isDefined!12231 lt!2248752)))))

(declare-fun b!5532619 () Bool)

(assert (=> b!5532619 (= e!3419974 (Some!15527 (tuple2!65233 (++!13765 Nil!62733 (Cons!62733 (h!69181 s!2326) Nil!62733)) (t!376116 s!2326))))))

(declare-fun b!5532620 () Bool)

(declare-fun res!2355579 () Bool)

(assert (=> b!5532620 (=> (not res!2355579) (not e!3419975))))

(assert (=> b!5532620 (= res!2355579 (matchR!7704 (regOne!31550 r!7292) (_1!35919 (get!21592 lt!2248752))))))

(assert (= (and d!1753243 res!2355578) b!5532616))

(assert (= (and d!1753243 c!968343) b!5532619))

(assert (= (and d!1753243 (not c!968343)) b!5532614))

(assert (= (and b!5532614 c!968342) b!5532612))

(assert (= (and b!5532614 (not c!968342)) b!5532615))

(assert (= (and d!1753243 res!2355582) b!5532620))

(assert (= (and b!5532620 res!2355579) b!5532617))

(assert (= (and b!5532617 res!2355581) b!5532613))

(assert (= (and d!1753243 (not res!2355580)) b!5532618))

(declare-fun m!6534288 () Bool)

(assert (=> b!5532613 m!6534288))

(declare-fun m!6534290 () Bool)

(assert (=> b!5532613 m!6534290))

(declare-fun m!6534292 () Bool)

(assert (=> b!5532616 m!6534292))

(assert (=> b!5532617 m!6534288))

(declare-fun m!6534294 () Bool)

(assert (=> b!5532617 m!6534294))

(assert (=> b!5532615 m!6533946))

(declare-fun m!6534296 () Bool)

(assert (=> b!5532615 m!6534296))

(assert (=> b!5532615 m!6534296))

(declare-fun m!6534298 () Bool)

(assert (=> b!5532615 m!6534298))

(assert (=> b!5532615 m!6533946))

(declare-fun m!6534300 () Bool)

(assert (=> b!5532615 m!6534300))

(assert (=> b!5532615 m!6534296))

(declare-fun m!6534302 () Bool)

(assert (=> b!5532615 m!6534302))

(declare-fun m!6534304 () Bool)

(assert (=> b!5532618 m!6534304))

(assert (=> d!1753243 m!6534304))

(assert (=> d!1753243 m!6533946))

(declare-fun m!6534306 () Bool)

(assert (=> d!1753243 m!6534306))

(assert (=> d!1753243 m!6533958))

(assert (=> b!5532620 m!6534288))

(declare-fun m!6534308 () Bool)

(assert (=> b!5532620 m!6534308))

(assert (=> b!5532225 d!1753243))

(declare-fun d!1753245 () Bool)

(assert (=> d!1753245 (= (nullable!5553 (h!69180 (exprs!5403 lt!2248654))) (nullableFct!1675 (h!69180 (exprs!5403 lt!2248654))))))

(declare-fun bs!1279413 () Bool)

(assert (= bs!1279413 d!1753245))

(declare-fun m!6534310 () Bool)

(assert (=> bs!1279413 m!6534310))

(assert (=> b!5532202 d!1753245))

(declare-fun bm!410948 () Bool)

(declare-fun call!410953 () Bool)

(assert (=> bm!410948 (= call!410953 (isEmpty!34524 (tail!10932 s!2326)))))

(declare-fun b!5532628 () Bool)

(declare-fun e!3419986 () Bool)

(declare-fun e!3419988 () Bool)

(assert (=> b!5532628 (= e!3419986 e!3419988)))

(declare-fun res!2355595 () Bool)

(assert (=> b!5532628 (=> (not res!2355595) (not e!3419988))))

(declare-fun lt!2248755 () Bool)

(assert (=> b!5532628 (= res!2355595 (not lt!2248755))))

(declare-fun b!5532629 () Bool)

(declare-fun e!3419983 () Bool)

(assert (=> b!5532629 (= e!3419983 (= (head!11837 (tail!10932 s!2326)) (c!968061 (derivativeStep!4382 r!7292 (head!11837 s!2326)))))))

(declare-fun b!5532630 () Bool)

(declare-fun e!3419985 () Bool)

(assert (=> b!5532630 (= e!3419988 e!3419985)))

(declare-fun res!2355589 () Bool)

(assert (=> b!5532630 (=> res!2355589 e!3419985)))

(assert (=> b!5532630 (= res!2355589 call!410953)))

(declare-fun b!5532632 () Bool)

(declare-fun e!3419984 () Bool)

(assert (=> b!5532632 (= e!3419984 (= lt!2248755 call!410953))))

(declare-fun b!5532633 () Bool)

(declare-fun e!3419989 () Bool)

(assert (=> b!5532633 (= e!3419989 (nullable!5553 (derivativeStep!4382 r!7292 (head!11837 s!2326))))))

(declare-fun b!5532634 () Bool)

(declare-fun res!2355594 () Bool)

(assert (=> b!5532634 (=> (not res!2355594) (not e!3419983))))

(assert (=> b!5532634 (= res!2355594 (not call!410953))))

(declare-fun b!5532635 () Bool)

(declare-fun e!3419987 () Bool)

(assert (=> b!5532635 (= e!3419987 (not lt!2248755))))

(declare-fun b!5532636 () Bool)

(declare-fun res!2355593 () Bool)

(assert (=> b!5532636 (=> (not res!2355593) (not e!3419983))))

(assert (=> b!5532636 (= res!2355593 (isEmpty!34524 (tail!10932 (tail!10932 s!2326))))))

(declare-fun b!5532637 () Bool)

(declare-fun res!2355592 () Bool)

(assert (=> b!5532637 (=> res!2355592 e!3419986)))

(assert (=> b!5532637 (= res!2355592 e!3419983)))

(declare-fun res!2355590 () Bool)

(assert (=> b!5532637 (=> (not res!2355590) (not e!3419983))))

(assert (=> b!5532637 (= res!2355590 lt!2248755)))

(declare-fun d!1753247 () Bool)

(assert (=> d!1753247 e!3419984))

(declare-fun c!968345 () Bool)

(assert (=> d!1753247 (= c!968345 ((_ is EmptyExpr!15519) (derivativeStep!4382 r!7292 (head!11837 s!2326))))))

(assert (=> d!1753247 (= lt!2248755 e!3419989)))

(declare-fun c!968347 () Bool)

(assert (=> d!1753247 (= c!968347 (isEmpty!34524 (tail!10932 s!2326)))))

(assert (=> d!1753247 (validRegex!7255 (derivativeStep!4382 r!7292 (head!11837 s!2326)))))

(assert (=> d!1753247 (= (matchR!7704 (derivativeStep!4382 r!7292 (head!11837 s!2326)) (tail!10932 s!2326)) lt!2248755)))

(declare-fun b!5532631 () Bool)

(assert (=> b!5532631 (= e!3419989 (matchR!7704 (derivativeStep!4382 (derivativeStep!4382 r!7292 (head!11837 s!2326)) (head!11837 (tail!10932 s!2326))) (tail!10932 (tail!10932 s!2326))))))

(declare-fun b!5532638 () Bool)

(declare-fun res!2355591 () Bool)

(assert (=> b!5532638 (=> res!2355591 e!3419985)))

(assert (=> b!5532638 (= res!2355591 (not (isEmpty!34524 (tail!10932 (tail!10932 s!2326)))))))

(declare-fun b!5532639 () Bool)

(declare-fun res!2355588 () Bool)

(assert (=> b!5532639 (=> res!2355588 e!3419986)))

(assert (=> b!5532639 (= res!2355588 (not ((_ is ElementMatch!15519) (derivativeStep!4382 r!7292 (head!11837 s!2326)))))))

(assert (=> b!5532639 (= e!3419987 e!3419986)))

(declare-fun b!5532640 () Bool)

(assert (=> b!5532640 (= e!3419985 (not (= (head!11837 (tail!10932 s!2326)) (c!968061 (derivativeStep!4382 r!7292 (head!11837 s!2326))))))))

(declare-fun b!5532641 () Bool)

(assert (=> b!5532641 (= e!3419984 e!3419987)))

(declare-fun c!968346 () Bool)

(assert (=> b!5532641 (= c!968346 ((_ is EmptyLang!15519) (derivativeStep!4382 r!7292 (head!11837 s!2326))))))

(assert (= (and d!1753247 c!968347) b!5532633))

(assert (= (and d!1753247 (not c!968347)) b!5532631))

(assert (= (and d!1753247 c!968345) b!5532632))

(assert (= (and d!1753247 (not c!968345)) b!5532641))

(assert (= (and b!5532641 c!968346) b!5532635))

(assert (= (and b!5532641 (not c!968346)) b!5532639))

(assert (= (and b!5532639 (not res!2355588)) b!5532637))

(assert (= (and b!5532637 res!2355590) b!5532634))

(assert (= (and b!5532634 res!2355594) b!5532636))

(assert (= (and b!5532636 res!2355593) b!5532629))

(assert (= (and b!5532637 (not res!2355592)) b!5532628))

(assert (= (and b!5532628 res!2355595) b!5532630))

(assert (= (and b!5532630 (not res!2355589)) b!5532638))

(assert (= (and b!5532638 (not res!2355591)) b!5532640))

(assert (= (or b!5532632 b!5532630 b!5532634) bm!410948))

(assert (=> b!5532640 m!6533780))

(declare-fun m!6534316 () Bool)

(assert (=> b!5532640 m!6534316))

(assert (=> b!5532636 m!6533780))

(declare-fun m!6534318 () Bool)

(assert (=> b!5532636 m!6534318))

(assert (=> b!5532636 m!6534318))

(declare-fun m!6534320 () Bool)

(assert (=> b!5532636 m!6534320))

(assert (=> b!5532638 m!6533780))

(assert (=> b!5532638 m!6534318))

(assert (=> b!5532638 m!6534318))

(assert (=> b!5532638 m!6534320))

(assert (=> bm!410948 m!6533780))

(assert (=> bm!410948 m!6533782))

(assert (=> b!5532633 m!6533786))

(declare-fun m!6534322 () Bool)

(assert (=> b!5532633 m!6534322))

(assert (=> b!5532631 m!6533780))

(assert (=> b!5532631 m!6534316))

(assert (=> b!5532631 m!6533786))

(assert (=> b!5532631 m!6534316))

(declare-fun m!6534324 () Bool)

(assert (=> b!5532631 m!6534324))

(assert (=> b!5532631 m!6533780))

(assert (=> b!5532631 m!6534318))

(assert (=> b!5532631 m!6534324))

(assert (=> b!5532631 m!6534318))

(declare-fun m!6534326 () Bool)

(assert (=> b!5532631 m!6534326))

(assert (=> d!1753247 m!6533780))

(assert (=> d!1753247 m!6533782))

(assert (=> d!1753247 m!6533786))

(declare-fun m!6534328 () Bool)

(assert (=> d!1753247 m!6534328))

(assert (=> b!5532629 m!6533780))

(assert (=> b!5532629 m!6534316))

(assert (=> b!5531938 d!1753247))

(declare-fun b!5532684 () Bool)

(declare-fun c!968368 () Bool)

(assert (=> b!5532684 (= c!968368 ((_ is Union!15519) r!7292))))

(declare-fun e!3420013 () Regex!15519)

(declare-fun e!3420016 () Regex!15519)

(assert (=> b!5532684 (= e!3420013 e!3420016)))

(declare-fun bm!410969 () Bool)

(declare-fun call!410974 () Regex!15519)

(assert (=> bm!410969 (= call!410974 (derivativeStep!4382 (ite c!968368 (regTwo!31551 r!7292) (regOne!31550 r!7292)) (head!11837 s!2326)))))

(declare-fun bm!410970 () Bool)

(declare-fun call!410977 () Regex!15519)

(declare-fun call!410976 () Regex!15519)

(assert (=> bm!410970 (= call!410977 call!410976)))

(declare-fun b!5532685 () Bool)

(declare-fun c!968372 () Bool)

(assert (=> b!5532685 (= c!968372 (nullable!5553 (regOne!31550 r!7292)))))

(declare-fun e!3420014 () Regex!15519)

(declare-fun e!3420015 () Regex!15519)

(assert (=> b!5532685 (= e!3420014 e!3420015)))

(declare-fun b!5532686 () Bool)

(declare-fun e!3420012 () Regex!15519)

(assert (=> b!5532686 (= e!3420012 e!3420013)))

(declare-fun c!968369 () Bool)

(assert (=> b!5532686 (= c!968369 ((_ is ElementMatch!15519) r!7292))))

(declare-fun b!5532687 () Bool)

(assert (=> b!5532687 (= e!3420015 (Union!15519 (Concat!24364 call!410977 (regTwo!31550 r!7292)) EmptyLang!15519))))

(declare-fun b!5532688 () Bool)

(declare-fun call!410975 () Regex!15519)

(assert (=> b!5532688 (= e!3420016 (Union!15519 call!410975 call!410974))))

(declare-fun d!1753251 () Bool)

(declare-fun lt!2248758 () Regex!15519)

(assert (=> d!1753251 (validRegex!7255 lt!2248758)))

(assert (=> d!1753251 (= lt!2248758 e!3420012)))

(declare-fun c!968371 () Bool)

(assert (=> d!1753251 (= c!968371 (or ((_ is EmptyExpr!15519) r!7292) ((_ is EmptyLang!15519) r!7292)))))

(assert (=> d!1753251 (validRegex!7255 r!7292)))

(assert (=> d!1753251 (= (derivativeStep!4382 r!7292 (head!11837 s!2326)) lt!2248758)))

(declare-fun b!5532689 () Bool)

(assert (=> b!5532689 (= e!3420015 (Union!15519 (Concat!24364 call!410974 (regTwo!31550 r!7292)) call!410977))))

(declare-fun b!5532690 () Bool)

(assert (=> b!5532690 (= e!3420013 (ite (= (head!11837 s!2326) (c!968061 r!7292)) EmptyExpr!15519 EmptyLang!15519))))

(declare-fun b!5532691 () Bool)

(assert (=> b!5532691 (= e!3420016 e!3420014)))

(declare-fun c!968370 () Bool)

(assert (=> b!5532691 (= c!968370 ((_ is Star!15519) r!7292))))

(declare-fun bm!410971 () Bool)

(assert (=> bm!410971 (= call!410976 call!410975)))

(declare-fun b!5532692 () Bool)

(assert (=> b!5532692 (= e!3420014 (Concat!24364 call!410976 r!7292))))

(declare-fun bm!410972 () Bool)

(assert (=> bm!410972 (= call!410975 (derivativeStep!4382 (ite c!968368 (regOne!31551 r!7292) (ite c!968370 (reg!15848 r!7292) (ite c!968372 (regTwo!31550 r!7292) (regOne!31550 r!7292)))) (head!11837 s!2326)))))

(declare-fun b!5532693 () Bool)

(assert (=> b!5532693 (= e!3420012 EmptyLang!15519)))

(assert (= (and d!1753251 c!968371) b!5532693))

(assert (= (and d!1753251 (not c!968371)) b!5532686))

(assert (= (and b!5532686 c!968369) b!5532690))

(assert (= (and b!5532686 (not c!968369)) b!5532684))

(assert (= (and b!5532684 c!968368) b!5532688))

(assert (= (and b!5532684 (not c!968368)) b!5532691))

(assert (= (and b!5532691 c!968370) b!5532692))

(assert (= (and b!5532691 (not c!968370)) b!5532685))

(assert (= (and b!5532685 c!968372) b!5532689))

(assert (= (and b!5532685 (not c!968372)) b!5532687))

(assert (= (or b!5532689 b!5532687) bm!410970))

(assert (= (or b!5532692 bm!410970) bm!410971))

(assert (= (or b!5532688 b!5532689) bm!410969))

(assert (= (or b!5532688 bm!410971) bm!410972))

(assert (=> bm!410969 m!6533778))

(declare-fun m!6534350 () Bool)

(assert (=> bm!410969 m!6534350))

(assert (=> b!5532685 m!6533600))

(declare-fun m!6534352 () Bool)

(assert (=> d!1753251 m!6534352))

(assert (=> d!1753251 m!6533554))

(assert (=> bm!410972 m!6533778))

(declare-fun m!6534354 () Bool)

(assert (=> bm!410972 m!6534354))

(assert (=> b!5531938 d!1753251))

(assert (=> b!5531938 d!1753165))

(assert (=> b!5531938 d!1753145))

(declare-fun b!5532705 () Bool)

(declare-fun e!3420023 () List!62857)

(assert (=> b!5532705 (= e!3420023 (_2!35919 (get!21592 lt!2248722)))))

(declare-fun b!5532706 () Bool)

(assert (=> b!5532706 (= e!3420023 (Cons!62733 (h!69181 (_1!35919 (get!21592 lt!2248722))) (++!13765 (t!376116 (_1!35919 (get!21592 lt!2248722))) (_2!35919 (get!21592 lt!2248722)))))))

(declare-fun d!1753263 () Bool)

(declare-fun e!3420024 () Bool)

(assert (=> d!1753263 e!3420024))

(declare-fun res!2355600 () Bool)

(assert (=> d!1753263 (=> (not res!2355600) (not e!3420024))))

(declare-fun lt!2248759 () List!62857)

(assert (=> d!1753263 (= res!2355600 (= (content!11289 lt!2248759) ((_ map or) (content!11289 (_1!35919 (get!21592 lt!2248722))) (content!11289 (_2!35919 (get!21592 lt!2248722))))))))

(assert (=> d!1753263 (= lt!2248759 e!3420023)))

(declare-fun c!968378 () Bool)

(assert (=> d!1753263 (= c!968378 ((_ is Nil!62733) (_1!35919 (get!21592 lt!2248722))))))

(assert (=> d!1753263 (= (++!13765 (_1!35919 (get!21592 lt!2248722)) (_2!35919 (get!21592 lt!2248722))) lt!2248759)))

(declare-fun b!5532708 () Bool)

(assert (=> b!5532708 (= e!3420024 (or (not (= (_2!35919 (get!21592 lt!2248722)) Nil!62733)) (= lt!2248759 (_1!35919 (get!21592 lt!2248722)))))))

(declare-fun b!5532707 () Bool)

(declare-fun res!2355599 () Bool)

(assert (=> b!5532707 (=> (not res!2355599) (not e!3420024))))

(assert (=> b!5532707 (= res!2355599 (= (size!39945 lt!2248759) (+ (size!39945 (_1!35919 (get!21592 lt!2248722))) (size!39945 (_2!35919 (get!21592 lt!2248722))))))))

(assert (= (and d!1753263 c!968378) b!5532705))

(assert (= (and d!1753263 (not c!968378)) b!5532706))

(assert (= (and d!1753263 res!2355600) b!5532707))

(assert (= (and b!5532707 res!2355599) b!5532708))

(declare-fun m!6534356 () Bool)

(assert (=> b!5532706 m!6534356))

(declare-fun m!6534358 () Bool)

(assert (=> d!1753263 m!6534358))

(declare-fun m!6534360 () Bool)

(assert (=> d!1753263 m!6534360))

(declare-fun m!6534362 () Bool)

(assert (=> d!1753263 m!6534362))

(declare-fun m!6534364 () Bool)

(assert (=> b!5532707 m!6534364))

(declare-fun m!6534366 () Bool)

(assert (=> b!5532707 m!6534366))

(declare-fun m!6534368 () Bool)

(assert (=> b!5532707 m!6534368))

(assert (=> b!5532223 d!1753263))

(assert (=> b!5532223 d!1753221))

(declare-fun d!1753265 () Bool)

(assert (=> d!1753265 (= (nullable!5553 r!7292) (nullableFct!1675 r!7292))))

(declare-fun bs!1279414 () Bool)

(assert (= bs!1279414 d!1753265))

(declare-fun m!6534370 () Bool)

(assert (=> bs!1279414 m!6534370))

(assert (=> b!5531940 d!1753265))

(declare-fun d!1753267 () Bool)

(assert (=> d!1753267 (= ($colon$colon!1596 (exprs!5403 lt!2248644) (ite (or c!968090 c!968091) (regTwo!31550 r!7292) r!7292)) (Cons!62732 (ite (or c!968090 c!968091) (regTwo!31550 r!7292) r!7292) (exprs!5403 lt!2248644)))))

(assert (=> bm!410784 d!1753267))

(declare-fun d!1753269 () Bool)

(assert (=> d!1753269 true))

(declare-fun setRes!36822 () Bool)

(assert (=> d!1753269 setRes!36822))

(declare-fun condSetEmpty!36822 () Bool)

(declare-fun res!2355601 () (InoxSet Context!9806))

(assert (=> d!1753269 (= condSetEmpty!36822 (= res!2355601 ((as const (Array Context!9806 Bool)) false)))))

(assert (=> d!1753269 (= (choose!42038 z!1189 lambda!296961) res!2355601)))

(declare-fun setIsEmpty!36822 () Bool)

(assert (=> setIsEmpty!36822 setRes!36822))

(declare-fun setNonEmpty!36822 () Bool)

(declare-fun setElem!36822 () Context!9806)

(declare-fun tp!1521754 () Bool)

(declare-fun e!3420025 () Bool)

(assert (=> setNonEmpty!36822 (= setRes!36822 (and tp!1521754 (inv!82044 setElem!36822) e!3420025))))

(declare-fun setRest!36822 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36822 (= res!2355601 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36822 true) setRest!36822))))

(declare-fun b!5532709 () Bool)

(declare-fun tp!1521755 () Bool)

(assert (=> b!5532709 (= e!3420025 tp!1521755)))

(assert (= (and d!1753269 condSetEmpty!36822) setIsEmpty!36822))

(assert (= (and d!1753269 (not condSetEmpty!36822)) setNonEmpty!36822))

(assert (= setNonEmpty!36822 b!5532709))

(declare-fun m!6534380 () Bool)

(assert (=> setNonEmpty!36822 m!6534380))

(assert (=> d!1753091 d!1753269))

(declare-fun d!1753271 () Bool)

(assert (=> d!1753271 (= (Exists!2619 lambda!297018) (choose!42039 lambda!297018))))

(declare-fun bs!1279415 () Bool)

(assert (= bs!1279415 d!1753271))

(declare-fun m!6534384 () Bool)

(assert (=> bs!1279415 m!6534384))

(assert (=> d!1753083 d!1753271))

(declare-fun d!1753275 () Bool)

(assert (=> d!1753275 (= (Exists!2619 lambda!297019) (choose!42039 lambda!297019))))

(declare-fun bs!1279416 () Bool)

(assert (= bs!1279416 d!1753275))

(declare-fun m!6534386 () Bool)

(assert (=> bs!1279416 m!6534386))

(assert (=> d!1753083 d!1753275))

(declare-fun bs!1279419 () Bool)

(declare-fun d!1753277 () Bool)

(assert (= bs!1279419 (and d!1753277 d!1753081)))

(declare-fun lambda!297039 () Int)

(assert (=> bs!1279419 (= lambda!297039 lambda!297013)))

(declare-fun bs!1279420 () Bool)

(assert (= bs!1279420 (and d!1753277 b!5532377)))

(assert (=> bs!1279420 (not (= lambda!297039 lambda!297026))))

(declare-fun bs!1279421 () Bool)

(assert (= bs!1279421 (and d!1753277 d!1753083)))

(assert (=> bs!1279421 (not (= lambda!297039 lambda!297019))))

(declare-fun bs!1279422 () Bool)

(assert (= bs!1279422 (and d!1753277 b!5532408)))

(assert (=> bs!1279422 (not (= lambda!297039 lambda!297028))))

(declare-fun bs!1279423 () Bool)

(assert (= bs!1279423 (and d!1753277 b!5531570)))

(assert (=> bs!1279423 (not (= lambda!297039 lambda!296960))))

(assert (=> bs!1279421 (= lambda!297039 lambda!297018)))

(assert (=> bs!1279423 (= lambda!297039 lambda!296959)))

(declare-fun bs!1279424 () Bool)

(assert (= bs!1279424 (and d!1753277 b!5532378)))

(assert (=> bs!1279424 (not (= lambda!297039 lambda!297025))))

(declare-fun bs!1279425 () Bool)

(assert (= bs!1279425 (and d!1753277 b!5532409)))

(assert (=> bs!1279425 (not (= lambda!297039 lambda!297027))))

(declare-fun bs!1279426 () Bool)

(assert (= bs!1279426 (and d!1753277 d!1753225)))

(assert (=> bs!1279426 (= lambda!297039 lambda!297034)))

(declare-fun bs!1279427 () Bool)

(assert (= bs!1279427 (and d!1753277 b!5531865)))

(assert (=> bs!1279427 (not (= lambda!297039 lambda!296986))))

(declare-fun bs!1279428 () Bool)

(assert (= bs!1279428 (and d!1753277 b!5531866)))

(assert (=> bs!1279428 (not (= lambda!297039 lambda!296985))))

(assert (=> d!1753277 true))

(assert (=> d!1753277 true))

(assert (=> d!1753277 true))

(declare-fun lambda!297040 () Int)

(assert (=> bs!1279419 (not (= lambda!297040 lambda!297013))))

(assert (=> bs!1279420 (= (and (= (regOne!31550 r!7292) (regOne!31550 (regOne!31551 r!7292))) (= (regTwo!31550 r!7292) (regTwo!31550 (regOne!31551 r!7292)))) (= lambda!297040 lambda!297026))))

(assert (=> bs!1279421 (= lambda!297040 lambda!297019)))

(assert (=> bs!1279422 (= (and (= (regOne!31550 r!7292) (regOne!31550 (regTwo!31551 r!7292))) (= (regTwo!31550 r!7292) (regTwo!31550 (regTwo!31551 r!7292)))) (= lambda!297040 lambda!297028))))

(assert (=> bs!1279423 (= lambda!297040 lambda!296960)))

(assert (=> bs!1279421 (not (= lambda!297040 lambda!297018))))

(assert (=> bs!1279423 (not (= lambda!297040 lambda!296959))))

(assert (=> bs!1279424 (not (= lambda!297040 lambda!297025))))

(assert (=> bs!1279425 (not (= lambda!297040 lambda!297027))))

(declare-fun bs!1279429 () Bool)

(assert (= bs!1279429 d!1753277))

(assert (=> bs!1279429 (not (= lambda!297040 lambda!297039))))

(assert (=> bs!1279426 (not (= lambda!297040 lambda!297034))))

(assert (=> bs!1279427 (= lambda!297040 lambda!296986)))

(assert (=> bs!1279428 (not (= lambda!297040 lambda!296985))))

(assert (=> d!1753277 true))

(assert (=> d!1753277 true))

(assert (=> d!1753277 true))

(assert (=> d!1753277 (= (Exists!2619 lambda!297039) (Exists!2619 lambda!297040))))

(assert (=> d!1753277 true))

(declare-fun _$90!1265 () Unit!155498)

(assert (=> d!1753277 (= (choose!42041 (regOne!31550 r!7292) (regTwo!31550 r!7292) s!2326) _$90!1265)))

(declare-fun m!6534408 () Bool)

(assert (=> bs!1279429 m!6534408))

(declare-fun m!6534410 () Bool)

(assert (=> bs!1279429 m!6534410))

(assert (=> d!1753083 d!1753277))

(assert (=> d!1753083 d!1753183))

(declare-fun bs!1279430 () Bool)

(declare-fun d!1753295 () Bool)

(assert (= bs!1279430 (and d!1753295 d!1753209)))

(declare-fun lambda!297041 () Int)

(assert (=> bs!1279430 (= lambda!297041 lambda!297031)))

(declare-fun bs!1279431 () Bool)

(assert (= bs!1279431 (and d!1753295 d!1753193)))

(assert (=> bs!1279431 (= lambda!297041 lambda!297030)))

(declare-fun bs!1279432 () Bool)

(assert (= bs!1279432 (and d!1753295 d!1753117)))

(assert (=> bs!1279432 (= lambda!297041 lambda!297024)))

(declare-fun bs!1279433 () Bool)

(assert (= bs!1279433 (and d!1753295 d!1753055)))

(assert (=> bs!1279433 (= lambda!297041 lambda!297010)))

(declare-fun bs!1279434 () Bool)

(assert (= bs!1279434 (and d!1753295 d!1753029)))

(assert (=> bs!1279434 (= lambda!297041 lambda!297001)))

(declare-fun bs!1279435 () Bool)

(assert (= bs!1279435 (and d!1753295 d!1753089)))

(assert (=> bs!1279435 (= lambda!297041 lambda!297022)))

(declare-fun bs!1279436 () Bool)

(assert (= bs!1279436 (and d!1753295 d!1753035)))

(assert (=> bs!1279436 (= lambda!297041 lambda!297007)))

(declare-fun bs!1279437 () Bool)

(assert (= bs!1279437 (and d!1753295 d!1753099)))

(assert (=> bs!1279437 (= lambda!297041 lambda!297023)))

(declare-fun b!5532734 () Bool)

(declare-fun e!3420044 () Bool)

(declare-fun lt!2248760 () Regex!15519)

(assert (=> b!5532734 (= e!3420044 (isConcat!612 lt!2248760))))

(declare-fun b!5532735 () Bool)

(declare-fun e!3420047 () Regex!15519)

(assert (=> b!5532735 (= e!3420047 (h!69180 (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532737 () Bool)

(declare-fun e!3420043 () Bool)

(declare-fun e!3420045 () Bool)

(assert (=> b!5532737 (= e!3420043 e!3420045)))

(declare-fun c!968386 () Bool)

(assert (=> b!5532737 (= c!968386 (isEmpty!34522 (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532738 () Bool)

(assert (=> b!5532738 (= e!3420045 (isEmptyExpr!1089 lt!2248760))))

(declare-fun b!5532739 () Bool)

(assert (=> b!5532739 (= e!3420044 (= lt!2248760 (head!11838 (t!376115 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5532740 () Bool)

(declare-fun e!3420042 () Bool)

(assert (=> b!5532740 (= e!3420042 (isEmpty!34522 (t!376115 (t!376115 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5532741 () Bool)

(declare-fun e!3420046 () Regex!15519)

(assert (=> b!5532741 (= e!3420046 (Concat!24364 (h!69180 (t!376115 (exprs!5403 (h!69182 zl!343)))) (generalisedConcat!1134 (t!376115 (t!376115 (exprs!5403 (h!69182 zl!343)))))))))

(assert (=> d!1753295 e!3420043))

(declare-fun res!2355619 () Bool)

(assert (=> d!1753295 (=> (not res!2355619) (not e!3420043))))

(assert (=> d!1753295 (= res!2355619 (validRegex!7255 lt!2248760))))

(assert (=> d!1753295 (= lt!2248760 e!3420047)))

(declare-fun c!968383 () Bool)

(assert (=> d!1753295 (= c!968383 e!3420042)))

(declare-fun res!2355618 () Bool)

(assert (=> d!1753295 (=> (not res!2355618) (not e!3420042))))

(assert (=> d!1753295 (= res!2355618 ((_ is Cons!62732) (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> d!1753295 (forall!14697 (t!376115 (exprs!5403 (h!69182 zl!343))) lambda!297041)))

(assert (=> d!1753295 (= (generalisedConcat!1134 (t!376115 (exprs!5403 (h!69182 zl!343)))) lt!2248760)))

(declare-fun b!5532736 () Bool)

(assert (=> b!5532736 (= e!3420045 e!3420044)))

(declare-fun c!968385 () Bool)

(assert (=> b!5532736 (= c!968385 (isEmpty!34522 (tail!10933 (t!376115 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5532742 () Bool)

(assert (=> b!5532742 (= e!3420047 e!3420046)))

(declare-fun c!968384 () Bool)

(assert (=> b!5532742 (= c!968384 ((_ is Cons!62732) (t!376115 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532743 () Bool)

(assert (=> b!5532743 (= e!3420046 EmptyExpr!15519)))

(assert (= (and d!1753295 res!2355618) b!5532740))

(assert (= (and d!1753295 c!968383) b!5532735))

(assert (= (and d!1753295 (not c!968383)) b!5532742))

(assert (= (and b!5532742 c!968384) b!5532741))

(assert (= (and b!5532742 (not c!968384)) b!5532743))

(assert (= (and d!1753295 res!2355619) b!5532737))

(assert (= (and b!5532737 c!968386) b!5532738))

(assert (= (and b!5532737 (not c!968386)) b!5532736))

(assert (= (and b!5532736 c!968385) b!5532739))

(assert (= (and b!5532736 (not c!968385)) b!5532734))

(assert (=> b!5532737 m!6533586))

(declare-fun m!6534412 () Bool)

(assert (=> b!5532739 m!6534412))

(declare-fun m!6534414 () Bool)

(assert (=> b!5532740 m!6534414))

(declare-fun m!6534416 () Bool)

(assert (=> b!5532736 m!6534416))

(assert (=> b!5532736 m!6534416))

(declare-fun m!6534420 () Bool)

(assert (=> b!5532736 m!6534420))

(declare-fun m!6534422 () Bool)

(assert (=> b!5532734 m!6534422))

(declare-fun m!6534424 () Bool)

(assert (=> b!5532741 m!6534424))

(declare-fun m!6534426 () Bool)

(assert (=> b!5532738 m!6534426))

(declare-fun m!6534428 () Bool)

(assert (=> d!1753295 m!6534428))

(declare-fun m!6534430 () Bool)

(assert (=> d!1753295 m!6534430))

(assert (=> b!5532169 d!1753295))

(declare-fun b!5532753 () Bool)

(declare-fun e!3420057 () (InoxSet Context!9806))

(declare-fun e!3420056 () (InoxSet Context!9806))

(assert (=> b!5532753 (= e!3420057 e!3420056)))

(declare-fun c!968390 () Bool)

(assert (=> b!5532753 (= c!968390 ((_ is Concat!24364) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))))))

(declare-fun bm!410984 () Bool)

(declare-fun call!410992 () (InoxSet Context!9806))

(declare-fun call!410993 () (InoxSet Context!9806))

(assert (=> bm!410984 (= call!410992 call!410993)))

(declare-fun bm!410985 () Bool)

(declare-fun call!410990 () List!62856)

(declare-fun call!410989 () List!62856)

(assert (=> bm!410985 (= call!410990 call!410989)))

(declare-fun b!5532754 () Bool)

(declare-fun e!3420059 () (InoxSet Context!9806))

(declare-fun e!3420055 () (InoxSet Context!9806))

(assert (=> b!5532754 (= e!3420059 e!3420055)))

(declare-fun c!968393 () Bool)

(assert (=> b!5532754 (= c!968393 ((_ is Union!15519) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))))))

(declare-fun b!5532755 () Bool)

(assert (=> b!5532755 (= e!3420056 call!410992)))

(declare-fun d!1753299 () Bool)

(declare-fun c!968391 () Bool)

(assert (=> d!1753299 (= c!968391 (and ((_ is ElementMatch!15519) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (= (c!968061 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (h!69181 s!2326))))))

(assert (=> d!1753299 (= (derivationStepZipperDown!861 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))) (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873)) (h!69181 s!2326)) e!3420059)))

(declare-fun b!5532757 () Bool)

(declare-fun call!410994 () (InoxSet Context!9806))

(assert (=> b!5532757 (= e!3420057 ((_ map or) call!410994 call!410993))))

(declare-fun b!5532759 () Bool)

(declare-fun e!3420058 () (InoxSet Context!9806))

(assert (=> b!5532759 (= e!3420058 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532760 () Bool)

(declare-fun c!968389 () Bool)

(declare-fun e!3420060 () Bool)

(assert (=> b!5532760 (= c!968389 e!3420060)))

(declare-fun res!2355625 () Bool)

(assert (=> b!5532760 (=> (not res!2355625) (not e!3420060))))

(assert (=> b!5532760 (= res!2355625 ((_ is Concat!24364) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))))))

(assert (=> b!5532760 (= e!3420055 e!3420057)))

(declare-fun b!5532761 () Bool)

(assert (=> b!5532761 (= e!3420058 call!410992)))

(declare-fun bm!410986 () Bool)

(assert (=> bm!410986 (= call!410989 ($colon$colon!1596 (exprs!5403 (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873))) (ite (or c!968389 c!968390) (regTwo!31550 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))))))))

(declare-fun b!5532762 () Bool)

(assert (=> b!5532762 (= e!3420059 (store ((as const (Array Context!9806 Bool)) false) (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873)) true))))

(declare-fun bm!410987 () Bool)

(declare-fun call!410991 () (InoxSet Context!9806))

(assert (=> bm!410987 (= call!410993 call!410991)))

(declare-fun bm!410988 () Bool)

(assert (=> bm!410988 (= call!410994 (derivationStepZipperDown!861 (ite c!968393 (regOne!31551 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (regOne!31550 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))))) (ite c!968393 (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873)) (Context!9807 call!410989)) (h!69181 s!2326)))))

(declare-fun b!5532763 () Bool)

(assert (=> b!5532763 (= e!3420060 (nullable!5553 (regOne!31550 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))))))))

(declare-fun c!968392 () Bool)

(declare-fun b!5532764 () Bool)

(assert (=> b!5532764 (= c!968392 ((_ is Star!15519) (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))))))

(assert (=> b!5532764 (= e!3420056 e!3420058)))

(declare-fun bm!410989 () Bool)

(assert (=> bm!410989 (= call!410991 (derivationStepZipperDown!861 (ite c!968393 (regTwo!31551 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (ite c!968389 (regTwo!31550 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (ite c!968390 (regOne!31550 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292)))))) (reg!15848 (ite c!968249 (regTwo!31551 (regOne!31550 r!7292)) (ite c!968245 (regTwo!31550 (regOne!31550 r!7292)) (ite c!968246 (regOne!31550 (regOne!31550 r!7292)) (reg!15848 (regOne!31550 r!7292))))))))) (ite (or c!968393 c!968389) (ite (or c!968249 c!968245) lt!2248635 (Context!9807 call!410873)) (Context!9807 call!410990)) (h!69181 s!2326)))))

(declare-fun b!5532765 () Bool)

(assert (=> b!5532765 (= e!3420055 ((_ map or) call!410994 call!410991))))

(assert (= (and d!1753299 c!968391) b!5532762))

(assert (= (and d!1753299 (not c!968391)) b!5532754))

(assert (= (and b!5532754 c!968393) b!5532765))

(assert (= (and b!5532754 (not c!968393)) b!5532760))

(assert (= (and b!5532760 res!2355625) b!5532763))

(assert (= (and b!5532760 c!968389) b!5532757))

(assert (= (and b!5532760 (not c!968389)) b!5532753))

(assert (= (and b!5532753 c!968390) b!5532755))

(assert (= (and b!5532753 (not c!968390)) b!5532764))

(assert (= (and b!5532764 c!968392) b!5532761))

(assert (= (and b!5532764 (not c!968392)) b!5532759))

(assert (= (or b!5532755 b!5532761) bm!410985))

(assert (= (or b!5532755 b!5532761) bm!410984))

(assert (= (or b!5532757 bm!410985) bm!410986))

(assert (= (or b!5532757 bm!410984) bm!410987))

(assert (= (or b!5532765 bm!410987) bm!410989))

(assert (= (or b!5532765 b!5532757) bm!410988))

(declare-fun m!6534440 () Bool)

(assert (=> bm!410989 m!6534440))

(declare-fun m!6534442 () Bool)

(assert (=> b!5532762 m!6534442))

(declare-fun m!6534444 () Bool)

(assert (=> bm!410988 m!6534444))

(declare-fun m!6534446 () Bool)

(assert (=> b!5532763 m!6534446))

(declare-fun m!6534448 () Bool)

(assert (=> bm!410986 m!6534448))

(assert (=> bm!410872 d!1753299))

(declare-fun d!1753307 () Bool)

(assert (=> d!1753307 (= (head!11838 (exprs!5403 (h!69182 zl!343))) (h!69180 (exprs!5403 (h!69182 zl!343))))))

(assert (=> b!5532167 d!1753307))

(assert (=> b!5531660 d!1753059))

(declare-fun d!1753309 () Bool)

(assert (=> d!1753309 (= (nullable!5553 (regOne!31550 (regOne!31550 r!7292))) (nullableFct!1675 (regOne!31550 (regOne!31550 r!7292))))))

(declare-fun bs!1279438 () Bool)

(assert (= bs!1279438 d!1753309))

(declare-fun m!6534450 () Bool)

(assert (=> bs!1279438 m!6534450))

(assert (=> b!5532196 d!1753309))

(assert (=> d!1753023 d!1753013))

(assert (=> d!1753023 d!1752999))

(declare-fun d!1753311 () Bool)

(assert (=> d!1753311 (= (matchR!7704 r!7292 s!2326) (matchRSpec!2622 r!7292 s!2326))))

(assert (=> d!1753311 true))

(declare-fun _$88!3811 () Unit!155498)

(assert (=> d!1753311 (= (choose!42034 r!7292 s!2326) _$88!3811)))

(declare-fun bs!1279440 () Bool)

(assert (= bs!1279440 d!1753311))

(assert (=> bs!1279440 m!6533542))

(assert (=> bs!1279440 m!6533540))

(assert (=> d!1753023 d!1753311))

(assert (=> d!1753023 d!1753045))

(declare-fun b!5532766 () Bool)

(declare-fun e!3420065 () (InoxSet Context!9806))

(declare-fun e!3420064 () (InoxSet Context!9806))

(assert (=> b!5532766 (= e!3420065 e!3420064)))

(declare-fun c!968395 () Bool)

(assert (=> b!5532766 (= c!968395 ((_ is Concat!24364) (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun bm!410990 () Bool)

(declare-fun call!410998 () (InoxSet Context!9806))

(declare-fun call!410999 () (InoxSet Context!9806))

(assert (=> bm!410990 (= call!410998 call!410999)))

(declare-fun bm!410991 () Bool)

(declare-fun call!410996 () List!62856)

(declare-fun call!410995 () List!62856)

(assert (=> bm!410991 (= call!410996 call!410995)))

(declare-fun b!5532767 () Bool)

(declare-fun e!3420067 () (InoxSet Context!9806))

(declare-fun e!3420063 () (InoxSet Context!9806))

(assert (=> b!5532767 (= e!3420067 e!3420063)))

(declare-fun c!968398 () Bool)

(assert (=> b!5532767 (= c!968398 ((_ is Union!15519) (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun b!5532768 () Bool)

(assert (=> b!5532768 (= e!3420064 call!410998)))

(declare-fun d!1753315 () Bool)

(declare-fun c!968396 () Bool)

(assert (=> d!1753315 (= c!968396 (and ((_ is ElementMatch!15519) (h!69180 (exprs!5403 (h!69182 zl!343)))) (= (c!968061 (h!69180 (exprs!5403 (h!69182 zl!343)))) (h!69181 s!2326))))))

(assert (=> d!1753315 (= (derivationStepZipperDown!861 (h!69180 (exprs!5403 (h!69182 zl!343))) (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (h!69181 s!2326)) e!3420067)))

(declare-fun b!5532769 () Bool)

(declare-fun call!411000 () (InoxSet Context!9806))

(assert (=> b!5532769 (= e!3420065 ((_ map or) call!411000 call!410999))))

(declare-fun b!5532770 () Bool)

(declare-fun e!3420066 () (InoxSet Context!9806))

(assert (=> b!5532770 (= e!3420066 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532771 () Bool)

(declare-fun c!968394 () Bool)

(declare-fun e!3420068 () Bool)

(assert (=> b!5532771 (= c!968394 e!3420068)))

(declare-fun res!2355629 () Bool)

(assert (=> b!5532771 (=> (not res!2355629) (not e!3420068))))

(assert (=> b!5532771 (= res!2355629 ((_ is Concat!24364) (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> b!5532771 (= e!3420063 e!3420065)))

(declare-fun b!5532772 () Bool)

(assert (=> b!5532772 (= e!3420066 call!410998)))

(declare-fun bm!410992 () Bool)

(assert (=> bm!410992 (= call!410995 ($colon$colon!1596 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343))))) (ite (or c!968394 c!968395) (regTwo!31550 (h!69180 (exprs!5403 (h!69182 zl!343)))) (h!69180 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5532773 () Bool)

(assert (=> b!5532773 (= e!3420067 (store ((as const (Array Context!9806 Bool)) false) (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) true))))

(declare-fun bm!410993 () Bool)

(declare-fun call!410997 () (InoxSet Context!9806))

(assert (=> bm!410993 (= call!410999 call!410997)))

(declare-fun bm!410994 () Bool)

(assert (=> bm!410994 (= call!411000 (derivationStepZipperDown!861 (ite c!968398 (regOne!31551 (h!69180 (exprs!5403 (h!69182 zl!343)))) (regOne!31550 (h!69180 (exprs!5403 (h!69182 zl!343))))) (ite c!968398 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (Context!9807 call!410995)) (h!69181 s!2326)))))

(declare-fun b!5532774 () Bool)

(assert (=> b!5532774 (= e!3420068 (nullable!5553 (regOne!31550 (h!69180 (exprs!5403 (h!69182 zl!343))))))))

(declare-fun b!5532775 () Bool)

(declare-fun c!968397 () Bool)

(assert (=> b!5532775 (= c!968397 ((_ is Star!15519) (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> b!5532775 (= e!3420064 e!3420066)))

(declare-fun bm!410995 () Bool)

(assert (=> bm!410995 (= call!410997 (derivationStepZipperDown!861 (ite c!968398 (regTwo!31551 (h!69180 (exprs!5403 (h!69182 zl!343)))) (ite c!968394 (regTwo!31550 (h!69180 (exprs!5403 (h!69182 zl!343)))) (ite c!968395 (regOne!31550 (h!69180 (exprs!5403 (h!69182 zl!343)))) (reg!15848 (h!69180 (exprs!5403 (h!69182 zl!343))))))) (ite (or c!968398 c!968394) (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (Context!9807 call!410996)) (h!69181 s!2326)))))

(declare-fun b!5532776 () Bool)

(assert (=> b!5532776 (= e!3420063 ((_ map or) call!411000 call!410997))))

(assert (= (and d!1753315 c!968396) b!5532773))

(assert (= (and d!1753315 (not c!968396)) b!5532767))

(assert (= (and b!5532767 c!968398) b!5532776))

(assert (= (and b!5532767 (not c!968398)) b!5532771))

(assert (= (and b!5532771 res!2355629) b!5532774))

(assert (= (and b!5532771 c!968394) b!5532769))

(assert (= (and b!5532771 (not c!968394)) b!5532766))

(assert (= (and b!5532766 c!968395) b!5532768))

(assert (= (and b!5532766 (not c!968395)) b!5532775))

(assert (= (and b!5532775 c!968397) b!5532772))

(assert (= (and b!5532775 (not c!968397)) b!5532770))

(assert (= (or b!5532768 b!5532772) bm!410991))

(assert (= (or b!5532768 b!5532772) bm!410990))

(assert (= (or b!5532769 bm!410991) bm!410992))

(assert (= (or b!5532769 bm!410990) bm!410993))

(assert (= (or b!5532776 bm!410993) bm!410995))

(assert (= (or b!5532776 b!5532769) bm!410994))

(declare-fun m!6534452 () Bool)

(assert (=> bm!410995 m!6534452))

(declare-fun m!6534454 () Bool)

(assert (=> b!5532773 m!6534454))

(declare-fun m!6534456 () Bool)

(assert (=> bm!410994 m!6534456))

(declare-fun m!6534458 () Bool)

(assert (=> b!5532774 m!6534458))

(declare-fun m!6534460 () Bool)

(assert (=> bm!410992 m!6534460))

(assert (=> bm!410874 d!1753315))

(declare-fun d!1753319 () Bool)

(assert (=> d!1753319 (= (isEmpty!34522 (exprs!5403 (h!69182 zl!343))) ((_ is Nil!62732) (exprs!5403 (h!69182 zl!343))))))

(assert (=> b!5532165 d!1753319))

(declare-fun b!5532791 () Bool)

(declare-fun e!3420082 () Bool)

(declare-fun call!411002 () Bool)

(assert (=> b!5532791 (= e!3420082 call!411002)))

(declare-fun bm!410997 () Bool)

(declare-fun call!411003 () Bool)

(assert (=> bm!410997 (= call!411003 call!411002)))

(declare-fun b!5532792 () Bool)

(declare-fun res!2355642 () Bool)

(declare-fun e!3420077 () Bool)

(assert (=> b!5532792 (=> res!2355642 e!3420077)))

(assert (=> b!5532792 (= res!2355642 (not ((_ is Concat!24364) lt!2248737)))))

(declare-fun e!3420079 () Bool)

(assert (=> b!5532792 (= e!3420079 e!3420077)))

(declare-fun b!5532793 () Bool)

(declare-fun e!3420080 () Bool)

(assert (=> b!5532793 (= e!3420080 call!411003)))

(declare-fun c!968403 () Bool)

(declare-fun bm!410998 () Bool)

(declare-fun c!968402 () Bool)

(assert (=> bm!410998 (= call!411002 (validRegex!7255 (ite c!968402 (reg!15848 lt!2248737) (ite c!968403 (regTwo!31551 lt!2248737) (regTwo!31550 lt!2248737)))))))

(declare-fun b!5532795 () Bool)

(declare-fun e!3420078 () Bool)

(assert (=> b!5532795 (= e!3420078 e!3420079)))

(assert (=> b!5532795 (= c!968403 ((_ is Union!15519) lt!2248737))))

(declare-fun b!5532796 () Bool)

(declare-fun e!3420081 () Bool)

(assert (=> b!5532796 (= e!3420077 e!3420081)))

(declare-fun res!2355638 () Bool)

(assert (=> b!5532796 (=> (not res!2355638) (not e!3420081))))

(declare-fun call!411004 () Bool)

(assert (=> b!5532796 (= res!2355638 call!411004)))

(declare-fun b!5532797 () Bool)

(assert (=> b!5532797 (= e!3420078 e!3420082)))

(declare-fun res!2355640 () Bool)

(assert (=> b!5532797 (= res!2355640 (not (nullable!5553 (reg!15848 lt!2248737))))))

(assert (=> b!5532797 (=> (not res!2355640) (not e!3420082))))

(declare-fun bm!410999 () Bool)

(assert (=> bm!410999 (= call!411004 (validRegex!7255 (ite c!968403 (regOne!31551 lt!2248737) (regOne!31550 lt!2248737))))))

(declare-fun b!5532798 () Bool)

(assert (=> b!5532798 (= e!3420081 call!411003)))

(declare-fun b!5532799 () Bool)

(declare-fun res!2355639 () Bool)

(assert (=> b!5532799 (=> (not res!2355639) (not e!3420080))))

(assert (=> b!5532799 (= res!2355639 call!411004)))

(assert (=> b!5532799 (= e!3420079 e!3420080)))

(declare-fun d!1753321 () Bool)

(declare-fun res!2355641 () Bool)

(declare-fun e!3420076 () Bool)

(assert (=> d!1753321 (=> res!2355641 e!3420076)))

(assert (=> d!1753321 (= res!2355641 ((_ is ElementMatch!15519) lt!2248737))))

(assert (=> d!1753321 (= (validRegex!7255 lt!2248737) e!3420076)))

(declare-fun b!5532794 () Bool)

(assert (=> b!5532794 (= e!3420076 e!3420078)))

(assert (=> b!5532794 (= c!968402 ((_ is Star!15519) lt!2248737))))

(assert (= (and d!1753321 (not res!2355641)) b!5532794))

(assert (= (and b!5532794 c!968402) b!5532797))

(assert (= (and b!5532794 (not c!968402)) b!5532795))

(assert (= (and b!5532797 res!2355640) b!5532791))

(assert (= (and b!5532795 c!968403) b!5532799))

(assert (= (and b!5532795 (not c!968403)) b!5532792))

(assert (= (and b!5532799 res!2355639) b!5532793))

(assert (= (and b!5532792 (not res!2355642)) b!5532796))

(assert (= (and b!5532796 res!2355638) b!5532798))

(assert (= (or b!5532793 b!5532798) bm!410997))

(assert (= (or b!5532799 b!5532796) bm!410999))

(assert (= (or b!5532791 bm!410997) bm!410998))

(declare-fun m!6534462 () Bool)

(assert (=> bm!410998 m!6534462))

(declare-fun m!6534464 () Bool)

(assert (=> b!5532797 m!6534464))

(declare-fun m!6534466 () Bool)

(assert (=> bm!410999 m!6534466))

(assert (=> d!1753097 d!1753321))

(assert (=> d!1753097 d!1753029))

(assert (=> d!1753097 d!1753035))

(declare-fun b!5532800 () Bool)

(declare-fun e!3420085 () (InoxSet Context!9806))

(declare-fun e!3420084 () (InoxSet Context!9806))

(assert (=> b!5532800 (= e!3420085 e!3420084)))

(declare-fun c!968405 () Bool)

(assert (=> b!5532800 (= c!968405 ((_ is Concat!24364) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))))))

(declare-fun bm!411000 () Bool)

(declare-fun call!411008 () (InoxSet Context!9806))

(declare-fun call!411009 () (InoxSet Context!9806))

(assert (=> bm!411000 (= call!411008 call!411009)))

(declare-fun bm!411001 () Bool)

(declare-fun call!411006 () List!62856)

(declare-fun call!411005 () List!62856)

(assert (=> bm!411001 (= call!411006 call!411005)))

(declare-fun b!5532801 () Bool)

(declare-fun e!3420087 () (InoxSet Context!9806))

(declare-fun e!3420083 () (InoxSet Context!9806))

(assert (=> b!5532801 (= e!3420087 e!3420083)))

(declare-fun c!968408 () Bool)

(assert (=> b!5532801 (= c!968408 ((_ is Union!15519) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))))))

(declare-fun b!5532802 () Bool)

(assert (=> b!5532802 (= e!3420084 call!411008)))

(declare-fun c!968406 () Bool)

(declare-fun d!1753323 () Bool)

(assert (=> d!1753323 (= c!968406 (and ((_ is ElementMatch!15519) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (= (c!968061 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (h!69181 s!2326))))))

(assert (=> d!1753323 (= (derivationStepZipperDown!861 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))) (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788)) (h!69181 s!2326)) e!3420087)))

(declare-fun b!5532803 () Bool)

(declare-fun call!411010 () (InoxSet Context!9806))

(assert (=> b!5532803 (= e!3420085 ((_ map or) call!411010 call!411009))))

(declare-fun b!5532804 () Bool)

(declare-fun e!3420086 () (InoxSet Context!9806))

(assert (=> b!5532804 (= e!3420086 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532805 () Bool)

(declare-fun c!968404 () Bool)

(declare-fun e!3420088 () Bool)

(assert (=> b!5532805 (= c!968404 e!3420088)))

(declare-fun res!2355643 () Bool)

(assert (=> b!5532805 (=> (not res!2355643) (not e!3420088))))

(assert (=> b!5532805 (= res!2355643 ((_ is Concat!24364) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))))))

(assert (=> b!5532805 (= e!3420083 e!3420085)))

(declare-fun b!5532806 () Bool)

(assert (=> b!5532806 (= e!3420086 call!411008)))

(declare-fun bm!411002 () Bool)

(assert (=> bm!411002 (= call!411005 ($colon$colon!1596 (exprs!5403 (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788))) (ite (or c!968404 c!968405) (regTwo!31550 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))))))))

(declare-fun b!5532807 () Bool)

(assert (=> b!5532807 (= e!3420087 (store ((as const (Array Context!9806 Bool)) false) (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788)) true))))

(declare-fun bm!411003 () Bool)

(declare-fun call!411007 () (InoxSet Context!9806))

(assert (=> bm!411003 (= call!411009 call!411007)))

(declare-fun bm!411004 () Bool)

(assert (=> bm!411004 (= call!411010 (derivationStepZipperDown!861 (ite c!968408 (regOne!31551 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (regOne!31550 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))))) (ite c!968408 (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788)) (Context!9807 call!411005)) (h!69181 s!2326)))))

(declare-fun b!5532808 () Bool)

(assert (=> b!5532808 (= e!3420088 (nullable!5553 (regOne!31550 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))))))))

(declare-fun c!968407 () Bool)

(declare-fun b!5532809 () Bool)

(assert (=> b!5532809 (= c!968407 ((_ is Star!15519) (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))))))

(assert (=> b!5532809 (= e!3420084 e!3420086)))

(declare-fun bm!411005 () Bool)

(assert (=> bm!411005 (= call!411007 (derivationStepZipperDown!861 (ite c!968408 (regTwo!31551 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (ite c!968404 (regTwo!31550 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (ite c!968405 (regOne!31550 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292))))) (reg!15848 (ite c!968094 (regTwo!31551 r!7292) (ite c!968090 (regTwo!31550 r!7292) (ite c!968091 (regOne!31550 r!7292) (reg!15848 r!7292)))))))) (ite (or c!968408 c!968404) (ite (or c!968094 c!968090) lt!2248644 (Context!9807 call!410788)) (Context!9807 call!411006)) (h!69181 s!2326)))))

(declare-fun b!5532810 () Bool)

(assert (=> b!5532810 (= e!3420083 ((_ map or) call!411010 call!411007))))

(assert (= (and d!1753323 c!968406) b!5532807))

(assert (= (and d!1753323 (not c!968406)) b!5532801))

(assert (= (and b!5532801 c!968408) b!5532810))

(assert (= (and b!5532801 (not c!968408)) b!5532805))

(assert (= (and b!5532805 res!2355643) b!5532808))

(assert (= (and b!5532805 c!968404) b!5532803))

(assert (= (and b!5532805 (not c!968404)) b!5532800))

(assert (= (and b!5532800 c!968405) b!5532802))

(assert (= (and b!5532800 (not c!968405)) b!5532809))

(assert (= (and b!5532809 c!968407) b!5532806))

(assert (= (and b!5532809 (not c!968407)) b!5532804))

(assert (= (or b!5532802 b!5532806) bm!411001))

(assert (= (or b!5532802 b!5532806) bm!411000))

(assert (= (or b!5532803 bm!411001) bm!411002))

(assert (= (or b!5532803 bm!411000) bm!411003))

(assert (= (or b!5532810 bm!411003) bm!411005))

(assert (= (or b!5532810 b!5532803) bm!411004))

(declare-fun m!6534478 () Bool)

(assert (=> bm!411005 m!6534478))

(declare-fun m!6534480 () Bool)

(assert (=> b!5532807 m!6534480))

(declare-fun m!6534482 () Bool)

(assert (=> bm!411004 m!6534482))

(declare-fun m!6534484 () Bool)

(assert (=> b!5532808 m!6534484))

(declare-fun m!6534486 () Bool)

(assert (=> bm!411002 m!6534486))

(assert (=> bm!410787 d!1753323))

(declare-fun b!5532811 () Bool)

(declare-fun e!3420091 () (InoxSet Context!9806))

(declare-fun e!3420090 () (InoxSet Context!9806))

(assert (=> b!5532811 (= e!3420091 e!3420090)))

(declare-fun c!968410 () Bool)

(assert (=> b!5532811 (= c!968410 ((_ is Concat!24364) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))))))

(declare-fun bm!411006 () Bool)

(declare-fun call!411014 () (InoxSet Context!9806))

(declare-fun call!411015 () (InoxSet Context!9806))

(assert (=> bm!411006 (= call!411014 call!411015)))

(declare-fun bm!411007 () Bool)

(declare-fun call!411012 () List!62856)

(declare-fun call!411011 () List!62856)

(assert (=> bm!411007 (= call!411012 call!411011)))

(declare-fun b!5532812 () Bool)

(declare-fun e!3420093 () (InoxSet Context!9806))

(declare-fun e!3420089 () (InoxSet Context!9806))

(assert (=> b!5532812 (= e!3420093 e!3420089)))

(declare-fun c!968413 () Bool)

(assert (=> b!5532812 (= c!968413 ((_ is Union!15519) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))))))

(declare-fun b!5532813 () Bool)

(assert (=> b!5532813 (= e!3420090 call!411014)))

(declare-fun d!1753325 () Bool)

(declare-fun c!968411 () Bool)

(assert (=> d!1753325 (= c!968411 (and ((_ is ElementMatch!15519) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (= (c!968061 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (h!69181 s!2326))))))

(assert (=> d!1753325 (= (derivationStepZipperDown!861 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))) (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866)) (h!69181 s!2326)) e!3420093)))

(declare-fun b!5532814 () Bool)

(declare-fun call!411016 () (InoxSet Context!9806))

(assert (=> b!5532814 (= e!3420091 ((_ map or) call!411016 call!411015))))

(declare-fun b!5532815 () Bool)

(declare-fun e!3420092 () (InoxSet Context!9806))

(assert (=> b!5532815 (= e!3420092 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532816 () Bool)

(declare-fun c!968409 () Bool)

(declare-fun e!3420094 () Bool)

(assert (=> b!5532816 (= c!968409 e!3420094)))

(declare-fun res!2355644 () Bool)

(assert (=> b!5532816 (=> (not res!2355644) (not e!3420094))))

(assert (=> b!5532816 (= res!2355644 ((_ is Concat!24364) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))))))

(assert (=> b!5532816 (= e!3420089 e!3420091)))

(declare-fun b!5532817 () Bool)

(assert (=> b!5532817 (= e!3420092 call!411014)))

(declare-fun bm!411008 () Bool)

(assert (=> bm!411008 (= call!411011 ($colon$colon!1596 (exprs!5403 (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866))) (ite (or c!968409 c!968410) (regTwo!31550 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))))))))

(declare-fun b!5532818 () Bool)

(assert (=> b!5532818 (= e!3420093 (store ((as const (Array Context!9806 Bool)) false) (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866)) true))))

(declare-fun bm!411009 () Bool)

(declare-fun call!411013 () (InoxSet Context!9806))

(assert (=> bm!411009 (= call!411015 call!411013)))

(declare-fun bm!411010 () Bool)

(assert (=> bm!411010 (= call!411016 (derivationStepZipperDown!861 (ite c!968413 (regOne!31551 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (regOne!31550 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))))) (ite c!968413 (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866)) (Context!9807 call!411011)) (h!69181 s!2326)))))

(declare-fun b!5532819 () Bool)

(assert (=> b!5532819 (= e!3420094 (nullable!5553 (regOne!31550 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))))))))

(declare-fun c!968412 () Bool)

(declare-fun b!5532820 () Bool)

(assert (=> b!5532820 (= c!968412 ((_ is Star!15519) (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))))))

(assert (=> b!5532820 (= e!3420090 e!3420092)))

(declare-fun bm!411011 () Bool)

(assert (=> bm!411011 (= call!411013 (derivationStepZipperDown!861 (ite c!968413 (regTwo!31551 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (ite c!968409 (regTwo!31550 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (ite c!968410 (regOne!31550 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292)))))) (reg!15848 (ite c!968242 (regTwo!31551 (regTwo!31550 r!7292)) (ite c!968238 (regTwo!31550 (regTwo!31550 r!7292)) (ite c!968239 (regOne!31550 (regTwo!31550 r!7292)) (reg!15848 (regTwo!31550 r!7292))))))))) (ite (or c!968413 c!968409) (ite (or c!968242 c!968238) lt!2248644 (Context!9807 call!410866)) (Context!9807 call!411012)) (h!69181 s!2326)))))

(declare-fun b!5532821 () Bool)

(assert (=> b!5532821 (= e!3420089 ((_ map or) call!411016 call!411013))))

(assert (= (and d!1753325 c!968411) b!5532818))

(assert (= (and d!1753325 (not c!968411)) b!5532812))

(assert (= (and b!5532812 c!968413) b!5532821))

(assert (= (and b!5532812 (not c!968413)) b!5532816))

(assert (= (and b!5532816 res!2355644) b!5532819))

(assert (= (and b!5532816 c!968409) b!5532814))

(assert (= (and b!5532816 (not c!968409)) b!5532811))

(assert (= (and b!5532811 c!968410) b!5532813))

(assert (= (and b!5532811 (not c!968410)) b!5532820))

(assert (= (and b!5532820 c!968412) b!5532817))

(assert (= (and b!5532820 (not c!968412)) b!5532815))

(assert (= (or b!5532813 b!5532817) bm!411007))

(assert (= (or b!5532813 b!5532817) bm!411006))

(assert (= (or b!5532814 bm!411007) bm!411008))

(assert (= (or b!5532814 bm!411006) bm!411009))

(assert (= (or b!5532821 bm!411009) bm!411011))

(assert (= (or b!5532821 b!5532814) bm!411010))

(declare-fun m!6534490 () Bool)

(assert (=> bm!411011 m!6534490))

(declare-fun m!6534492 () Bool)

(assert (=> b!5532818 m!6534492))

(declare-fun m!6534494 () Bool)

(assert (=> bm!411010 m!6534494))

(declare-fun m!6534496 () Bool)

(assert (=> b!5532819 m!6534496))

(declare-fun m!6534498 () Bool)

(assert (=> bm!411008 m!6534498))

(assert (=> bm!410865 d!1753325))

(declare-fun d!1753331 () Bool)

(assert (=> d!1753331 (= (isEmptyLang!1099 lt!2248701) ((_ is EmptyLang!15519) lt!2248701))))

(assert (=> b!5532035 d!1753331))

(declare-fun d!1753333 () Bool)

(assert (=> d!1753333 (= ($colon$colon!1596 (exprs!5403 lt!2248635) (ite (or c!968245 c!968246) (regTwo!31550 (regOne!31550 r!7292)) (regOne!31550 r!7292))) (Cons!62732 (ite (or c!968245 c!968246) (regTwo!31550 (regOne!31550 r!7292)) (regOne!31550 r!7292)) (exprs!5403 lt!2248635)))))

(assert (=> bm!410869 d!1753333))

(declare-fun d!1753337 () Bool)

(assert (=> d!1753337 (= (nullable!5553 (reg!15848 r!7292)) (nullableFct!1675 (reg!15848 r!7292)))))

(declare-fun bs!1279442 () Bool)

(assert (= bs!1279442 d!1753337))

(declare-fun m!6534502 () Bool)

(assert (=> bs!1279442 m!6534502))

(assert (=> b!5532139 d!1753337))

(declare-fun d!1753339 () Bool)

(assert (=> d!1753339 (= (nullable!5553 (regOne!31550 (regTwo!31550 r!7292))) (nullableFct!1675 (regOne!31550 (regTwo!31550 r!7292))))))

(declare-fun bs!1279444 () Bool)

(assert (= bs!1279444 d!1753339))

(declare-fun m!6534506 () Bool)

(assert (=> bs!1279444 m!6534506))

(assert (=> b!5532180 d!1753339))

(declare-fun bs!1279445 () Bool)

(declare-fun d!1753343 () Bool)

(assert (= bs!1279445 (and d!1753343 d!1753209)))

(declare-fun lambda!297042 () Int)

(assert (=> bs!1279445 (= lambda!297042 lambda!297031)))

(declare-fun bs!1279446 () Bool)

(assert (= bs!1279446 (and d!1753343 d!1753193)))

(assert (=> bs!1279446 (= lambda!297042 lambda!297030)))

(declare-fun bs!1279447 () Bool)

(assert (= bs!1279447 (and d!1753343 d!1753117)))

(assert (=> bs!1279447 (= lambda!297042 lambda!297024)))

(declare-fun bs!1279448 () Bool)

(assert (= bs!1279448 (and d!1753343 d!1753055)))

(assert (=> bs!1279448 (= lambda!297042 lambda!297010)))

(declare-fun bs!1279449 () Bool)

(assert (= bs!1279449 (and d!1753343 d!1753029)))

(assert (=> bs!1279449 (= lambda!297042 lambda!297001)))

(declare-fun bs!1279450 () Bool)

(assert (= bs!1279450 (and d!1753343 d!1753295)))

(assert (=> bs!1279450 (= lambda!297042 lambda!297041)))

(declare-fun bs!1279451 () Bool)

(assert (= bs!1279451 (and d!1753343 d!1753089)))

(assert (=> bs!1279451 (= lambda!297042 lambda!297022)))

(declare-fun bs!1279452 () Bool)

(assert (= bs!1279452 (and d!1753343 d!1753035)))

(assert (=> bs!1279452 (= lambda!297042 lambda!297007)))

(declare-fun bs!1279453 () Bool)

(assert (= bs!1279453 (and d!1753343 d!1753099)))

(assert (=> bs!1279453 (= lambda!297042 lambda!297023)))

(assert (=> d!1753343 (= (inv!82044 setElem!36815) (forall!14697 (exprs!5403 setElem!36815) lambda!297042))))

(declare-fun bs!1279454 () Bool)

(assert (= bs!1279454 d!1753343))

(declare-fun m!6534508 () Bool)

(assert (=> bs!1279454 m!6534508))

(assert (=> setNonEmpty!36815 d!1753343))

(declare-fun d!1753345 () Bool)

(declare-fun res!2355646 () Bool)

(declare-fun e!3420096 () Bool)

(assert (=> d!1753345 (=> res!2355646 e!3420096)))

(assert (=> d!1753345 (= res!2355646 ((_ is Nil!62732) lt!2248708))))

(assert (=> d!1753345 (= (forall!14697 lt!2248708 lambda!297007) e!3420096)))

(declare-fun b!5532823 () Bool)

(declare-fun e!3420097 () Bool)

(assert (=> b!5532823 (= e!3420096 e!3420097)))

(declare-fun res!2355647 () Bool)

(assert (=> b!5532823 (=> (not res!2355647) (not e!3420097))))

(assert (=> b!5532823 (= res!2355647 (dynLambda!24533 lambda!297007 (h!69180 lt!2248708)))))

(declare-fun b!5532824 () Bool)

(assert (=> b!5532824 (= e!3420097 (forall!14697 (t!376115 lt!2248708) lambda!297007))))

(assert (= (and d!1753345 (not res!2355646)) b!5532823))

(assert (= (and b!5532823 res!2355647) b!5532824))

(declare-fun b_lambda!210055 () Bool)

(assert (=> (not b_lambda!210055) (not b!5532823)))

(declare-fun m!6534510 () Bool)

(assert (=> b!5532823 m!6534510))

(declare-fun m!6534512 () Bool)

(assert (=> b!5532824 m!6534512))

(assert (=> d!1753035 d!1753345))

(assert (=> d!1753061 d!1753071))

(declare-fun d!1753347 () Bool)

(assert (=> d!1753347 (= (flatMap!1132 lt!2248646 lambda!296961) (dynLambda!24532 lambda!296961 lt!2248654))))

(assert (=> d!1753347 true))

(declare-fun _$13!2113 () Unit!155498)

(assert (=> d!1753347 (= (choose!42037 lt!2248646 lt!2248654 lambda!296961) _$13!2113)))

(declare-fun b_lambda!210057 () Bool)

(assert (=> (not b_lambda!210057) (not d!1753347)))

(declare-fun bs!1279455 () Bool)

(assert (= bs!1279455 d!1753347))

(assert (=> bs!1279455 m!6533596))

(assert (=> bs!1279455 m!6533906))

(assert (=> d!1753061 d!1753347))

(declare-fun d!1753349 () Bool)

(declare-fun c!968414 () Bool)

(declare-fun e!3420098 () Bool)

(assert (=> d!1753349 (= c!968414 e!3420098)))

(declare-fun res!2355648 () Bool)

(assert (=> d!1753349 (=> (not res!2355648) (not e!3420098))))

(assert (=> d!1753349 (= res!2355648 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))))))))

(declare-fun e!3420099 () (InoxSet Context!9806))

(assert (=> d!1753349 (= (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))) (h!69181 s!2326)) e!3420099)))

(declare-fun call!411017 () (InoxSet Context!9806))

(declare-fun b!5532825 () Bool)

(assert (=> b!5532825 (= e!3420099 ((_ map or) call!411017 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343))))))) (h!69181 s!2326))))))

(declare-fun b!5532826 () Bool)

(declare-fun e!3420100 () (InoxSet Context!9806))

(assert (=> b!5532826 (= e!3420100 call!411017)))

(declare-fun b!5532827 () Bool)

(assert (=> b!5532827 (= e!3420099 e!3420100)))

(declare-fun c!968415 () Bool)

(assert (=> b!5532827 (= c!968415 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))))))))

(declare-fun b!5532828 () Bool)

(assert (=> b!5532828 (= e!3420098 (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343))))))))))

(declare-fun bm!411012 () Bool)

(assert (=> bm!411012 (= call!411017 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343)))))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (h!69182 zl!343))))))) (h!69181 s!2326)))))

(declare-fun b!5532829 () Bool)

(assert (=> b!5532829 (= e!3420100 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753349 res!2355648) b!5532828))

(assert (= (and d!1753349 c!968414) b!5532825))

(assert (= (and d!1753349 (not c!968414)) b!5532827))

(assert (= (and b!5532827 c!968415) b!5532826))

(assert (= (and b!5532827 (not c!968415)) b!5532829))

(assert (= (or b!5532825 b!5532826) bm!411012))

(declare-fun m!6534514 () Bool)

(assert (=> b!5532825 m!6534514))

(declare-fun m!6534516 () Bool)

(assert (=> b!5532828 m!6534516))

(declare-fun m!6534518 () Bool)

(assert (=> bm!411012 m!6534518))

(assert (=> b!5532246 d!1753349))

(declare-fun d!1753351 () Bool)

(assert (=> d!1753351 (= (isUnion!529 lt!2248701) ((_ is Union!15519) lt!2248701))))

(assert (=> b!5532037 d!1753351))

(declare-fun d!1753353 () Bool)

(declare-fun c!968416 () Bool)

(declare-fun e!3420101 () Bool)

(assert (=> d!1753353 (= c!968416 e!3420101)))

(declare-fun res!2355649 () Bool)

(assert (=> d!1753353 (=> (not res!2355649) (not e!3420101))))

(assert (=> d!1753353 (= res!2355649 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))))

(declare-fun e!3420102 () (InoxSet Context!9806))

(assert (=> d!1753353 (= (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))) (h!69181 s!2326)) e!3420102)))

(declare-fun b!5532830 () Bool)

(declare-fun call!411018 () (InoxSet Context!9806))

(assert (=> b!5532830 (= e!3420102 ((_ map or) call!411018 (derivationStepZipperUp!787 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))) (h!69181 s!2326))))))

(declare-fun b!5532831 () Bool)

(declare-fun e!3420103 () (InoxSet Context!9806))

(assert (=> b!5532831 (= e!3420103 call!411018)))

(declare-fun b!5532832 () Bool)

(assert (=> b!5532832 (= e!3420102 e!3420103)))

(declare-fun c!968417 () Bool)

(assert (=> b!5532832 (= c!968417 ((_ is Cons!62732) (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))))))

(declare-fun b!5532833 () Bool)

(assert (=> b!5532833 (= e!3420101 (nullable!5553 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))))))

(declare-fun bm!411013 () Bool)

(assert (=> bm!411013 (= call!411018 (derivationStepZipperDown!861 (h!69180 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732))))))) (Context!9807 (t!376115 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 (Context!9807 (Cons!62732 r!7292 Nil!62732)))))))) (h!69181 s!2326)))))

(declare-fun b!5532834 () Bool)

(assert (=> b!5532834 (= e!3420103 ((as const (Array Context!9806 Bool)) false))))

(assert (= (and d!1753353 res!2355649) b!5532833))

(assert (= (and d!1753353 c!968416) b!5532830))

(assert (= (and d!1753353 (not c!968416)) b!5532832))

(assert (= (and b!5532832 c!968417) b!5532831))

(assert (= (and b!5532832 (not c!968417)) b!5532834))

(assert (= (or b!5532830 b!5532831) bm!411013))

(declare-fun m!6534520 () Bool)

(assert (=> b!5532830 m!6534520))

(declare-fun m!6534522 () Bool)

(assert (=> b!5532833 m!6534522))

(declare-fun m!6534524 () Bool)

(assert (=> bm!411013 m!6534524))

(assert (=> b!5531720 d!1753353))

(assert (=> bs!1279339 d!1753065))

(declare-fun d!1753355 () Bool)

(assert (=> d!1753355 (= (head!11838 (unfocusZipperList!947 zl!343)) (h!69180 (unfocusZipperList!947 zl!343)))))

(assert (=> b!5532039 d!1753355))

(declare-fun b!5532839 () Bool)

(declare-fun e!3420108 () (InoxSet Context!9806))

(declare-fun e!3420107 () (InoxSet Context!9806))

(assert (=> b!5532839 (= e!3420108 e!3420107)))

(declare-fun c!968421 () Bool)

(assert (=> b!5532839 (= c!968421 ((_ is Concat!24364) (h!69180 (exprs!5403 lt!2248635))))))

(declare-fun bm!411014 () Bool)

(declare-fun call!411022 () (InoxSet Context!9806))

(declare-fun call!411023 () (InoxSet Context!9806))

(assert (=> bm!411014 (= call!411022 call!411023)))

(declare-fun bm!411015 () Bool)

(declare-fun call!411020 () List!62856)

(declare-fun call!411019 () List!62856)

(assert (=> bm!411015 (= call!411020 call!411019)))

(declare-fun b!5532840 () Bool)

(declare-fun e!3420110 () (InoxSet Context!9806))

(declare-fun e!3420106 () (InoxSet Context!9806))

(assert (=> b!5532840 (= e!3420110 e!3420106)))

(declare-fun c!968424 () Bool)

(assert (=> b!5532840 (= c!968424 ((_ is Union!15519) (h!69180 (exprs!5403 lt!2248635))))))

(declare-fun b!5532841 () Bool)

(assert (=> b!5532841 (= e!3420107 call!411022)))

(declare-fun d!1753357 () Bool)

(declare-fun c!968422 () Bool)

(assert (=> d!1753357 (= c!968422 (and ((_ is ElementMatch!15519) (h!69180 (exprs!5403 lt!2248635))) (= (c!968061 (h!69180 (exprs!5403 lt!2248635))) (h!69181 s!2326))))))

(assert (=> d!1753357 (= (derivationStepZipperDown!861 (h!69180 (exprs!5403 lt!2248635)) (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (h!69181 s!2326)) e!3420110)))

(declare-fun b!5532842 () Bool)

(declare-fun call!411024 () (InoxSet Context!9806))

(assert (=> b!5532842 (= e!3420108 ((_ map or) call!411024 call!411023))))

(declare-fun b!5532843 () Bool)

(declare-fun e!3420109 () (InoxSet Context!9806))

(assert (=> b!5532843 (= e!3420109 ((as const (Array Context!9806 Bool)) false))))

(declare-fun b!5532844 () Bool)

(declare-fun c!968420 () Bool)

(declare-fun e!3420111 () Bool)

(assert (=> b!5532844 (= c!968420 e!3420111)))

(declare-fun res!2355650 () Bool)

(assert (=> b!5532844 (=> (not res!2355650) (not e!3420111))))

(assert (=> b!5532844 (= res!2355650 ((_ is Concat!24364) (h!69180 (exprs!5403 lt!2248635))))))

(assert (=> b!5532844 (= e!3420106 e!3420108)))

(declare-fun b!5532845 () Bool)

(assert (=> b!5532845 (= e!3420109 call!411022)))

(declare-fun bm!411016 () Bool)

(assert (=> bm!411016 (= call!411019 ($colon$colon!1596 (exprs!5403 (Context!9807 (t!376115 (exprs!5403 lt!2248635)))) (ite (or c!968420 c!968421) (regTwo!31550 (h!69180 (exprs!5403 lt!2248635))) (h!69180 (exprs!5403 lt!2248635)))))))

(declare-fun b!5532846 () Bool)

(assert (=> b!5532846 (= e!3420110 (store ((as const (Array Context!9806 Bool)) false) (Context!9807 (t!376115 (exprs!5403 lt!2248635))) true))))

(declare-fun bm!411017 () Bool)

(declare-fun call!411021 () (InoxSet Context!9806))

(assert (=> bm!411017 (= call!411023 call!411021)))

(declare-fun bm!411018 () Bool)

(assert (=> bm!411018 (= call!411024 (derivationStepZipperDown!861 (ite c!968424 (regOne!31551 (h!69180 (exprs!5403 lt!2248635))) (regOne!31550 (h!69180 (exprs!5403 lt!2248635)))) (ite c!968424 (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (Context!9807 call!411019)) (h!69181 s!2326)))))

(declare-fun b!5532847 () Bool)

(assert (=> b!5532847 (= e!3420111 (nullable!5553 (regOne!31550 (h!69180 (exprs!5403 lt!2248635)))))))

(declare-fun b!5532848 () Bool)

(declare-fun c!968423 () Bool)

(assert (=> b!5532848 (= c!968423 ((_ is Star!15519) (h!69180 (exprs!5403 lt!2248635))))))

(assert (=> b!5532848 (= e!3420107 e!3420109)))

(declare-fun bm!411019 () Bool)

(assert (=> bm!411019 (= call!411021 (derivationStepZipperDown!861 (ite c!968424 (regTwo!31551 (h!69180 (exprs!5403 lt!2248635))) (ite c!968420 (regTwo!31550 (h!69180 (exprs!5403 lt!2248635))) (ite c!968421 (regOne!31550 (h!69180 (exprs!5403 lt!2248635))) (reg!15848 (h!69180 (exprs!5403 lt!2248635)))))) (ite (or c!968424 c!968420) (Context!9807 (t!376115 (exprs!5403 lt!2248635))) (Context!9807 call!411020)) (h!69181 s!2326)))))

(declare-fun b!5532849 () Bool)

(assert (=> b!5532849 (= e!3420106 ((_ map or) call!411024 call!411021))))

(assert (= (and d!1753357 c!968422) b!5532846))

(assert (= (and d!1753357 (not c!968422)) b!5532840))

(assert (= (and b!5532840 c!968424) b!5532849))

(assert (= (and b!5532840 (not c!968424)) b!5532844))

(assert (= (and b!5532844 res!2355650) b!5532847))

(assert (= (and b!5532844 c!968420) b!5532842))

(assert (= (and b!5532844 (not c!968420)) b!5532839))

(assert (= (and b!5532839 c!968421) b!5532841))

(assert (= (and b!5532839 (not c!968421)) b!5532848))

(assert (= (and b!5532848 c!968423) b!5532845))

(assert (= (and b!5532848 (not c!968423)) b!5532843))

(assert (= (or b!5532841 b!5532845) bm!411015))

(assert (= (or b!5532841 b!5532845) bm!411014))

(assert (= (or b!5532842 bm!411015) bm!411016))

(assert (= (or b!5532842 bm!411014) bm!411017))

(assert (= (or b!5532849 bm!411017) bm!411019))

(assert (= (or b!5532849 b!5532842) bm!411018))

(declare-fun m!6534526 () Bool)

(assert (=> bm!411019 m!6534526))

(declare-fun m!6534528 () Bool)

(assert (=> b!5532846 m!6534528))

(declare-fun m!6534530 () Bool)

(assert (=> bm!411018 m!6534530))

(declare-fun m!6534532 () Bool)

(assert (=> b!5532847 m!6534532))

(declare-fun m!6534534 () Bool)

(assert (=> bm!411016 m!6534534))

(assert (=> bm!410866 d!1753357))

(declare-fun bm!411020 () Bool)

(declare-fun call!411025 () Bool)

(assert (=> bm!411020 (= call!411025 (isEmpty!34524 (_1!35919 (get!21592 lt!2248722))))))

(declare-fun b!5532854 () Bool)

(declare-fun e!3420117 () Bool)

(declare-fun e!3420119 () Bool)

(assert (=> b!5532854 (= e!3420117 e!3420119)))

(declare-fun res!2355662 () Bool)

(assert (=> b!5532854 (=> (not res!2355662) (not e!3420119))))

(declare-fun lt!2248764 () Bool)

(assert (=> b!5532854 (= res!2355662 (not lt!2248764))))

(declare-fun b!5532855 () Bool)

(declare-fun e!3420114 () Bool)

(assert (=> b!5532855 (= e!3420114 (= (head!11837 (_1!35919 (get!21592 lt!2248722))) (c!968061 (regOne!31550 r!7292))))))

(declare-fun b!5532856 () Bool)

(declare-fun e!3420116 () Bool)

(assert (=> b!5532856 (= e!3420119 e!3420116)))

(declare-fun res!2355656 () Bool)

(assert (=> b!5532856 (=> res!2355656 e!3420116)))

(assert (=> b!5532856 (= res!2355656 call!411025)))

(declare-fun b!5532858 () Bool)

(declare-fun e!3420115 () Bool)

(assert (=> b!5532858 (= e!3420115 (= lt!2248764 call!411025))))

(declare-fun b!5532859 () Bool)

(declare-fun e!3420120 () Bool)

(assert (=> b!5532859 (= e!3420120 (nullable!5553 (regOne!31550 r!7292)))))

(declare-fun b!5532860 () Bool)

(declare-fun res!2355661 () Bool)

(assert (=> b!5532860 (=> (not res!2355661) (not e!3420114))))

(assert (=> b!5532860 (= res!2355661 (not call!411025))))

(declare-fun b!5532861 () Bool)

(declare-fun e!3420118 () Bool)

(assert (=> b!5532861 (= e!3420118 (not lt!2248764))))

(declare-fun b!5532862 () Bool)

(declare-fun res!2355660 () Bool)

(assert (=> b!5532862 (=> (not res!2355660) (not e!3420114))))

(assert (=> b!5532862 (= res!2355660 (isEmpty!34524 (tail!10932 (_1!35919 (get!21592 lt!2248722)))))))

(declare-fun b!5532863 () Bool)

(declare-fun res!2355659 () Bool)

(assert (=> b!5532863 (=> res!2355659 e!3420117)))

(assert (=> b!5532863 (= res!2355659 e!3420114)))

(declare-fun res!2355657 () Bool)

(assert (=> b!5532863 (=> (not res!2355657) (not e!3420114))))

(assert (=> b!5532863 (= res!2355657 lt!2248764)))

(declare-fun d!1753359 () Bool)

(assert (=> d!1753359 e!3420115))

(declare-fun c!968425 () Bool)

(assert (=> d!1753359 (= c!968425 ((_ is EmptyExpr!15519) (regOne!31550 r!7292)))))

(assert (=> d!1753359 (= lt!2248764 e!3420120)))

(declare-fun c!968427 () Bool)

(assert (=> d!1753359 (= c!968427 (isEmpty!34524 (_1!35919 (get!21592 lt!2248722))))))

(assert (=> d!1753359 (validRegex!7255 (regOne!31550 r!7292))))

(assert (=> d!1753359 (= (matchR!7704 (regOne!31550 r!7292) (_1!35919 (get!21592 lt!2248722))) lt!2248764)))

(declare-fun b!5532857 () Bool)

(assert (=> b!5532857 (= e!3420120 (matchR!7704 (derivativeStep!4382 (regOne!31550 r!7292) (head!11837 (_1!35919 (get!21592 lt!2248722)))) (tail!10932 (_1!35919 (get!21592 lt!2248722)))))))

(declare-fun b!5532864 () Bool)

(declare-fun res!2355658 () Bool)

(assert (=> b!5532864 (=> res!2355658 e!3420116)))

(assert (=> b!5532864 (= res!2355658 (not (isEmpty!34524 (tail!10932 (_1!35919 (get!21592 lt!2248722))))))))

(declare-fun b!5532865 () Bool)

(declare-fun res!2355655 () Bool)

(assert (=> b!5532865 (=> res!2355655 e!3420117)))

(assert (=> b!5532865 (= res!2355655 (not ((_ is ElementMatch!15519) (regOne!31550 r!7292))))))

(assert (=> b!5532865 (= e!3420118 e!3420117)))

(declare-fun b!5532866 () Bool)

(assert (=> b!5532866 (= e!3420116 (not (= (head!11837 (_1!35919 (get!21592 lt!2248722))) (c!968061 (regOne!31550 r!7292)))))))

(declare-fun b!5532867 () Bool)

(assert (=> b!5532867 (= e!3420115 e!3420118)))

(declare-fun c!968426 () Bool)

(assert (=> b!5532867 (= c!968426 ((_ is EmptyLang!15519) (regOne!31550 r!7292)))))

(assert (= (and d!1753359 c!968427) b!5532859))

(assert (= (and d!1753359 (not c!968427)) b!5532857))

(assert (= (and d!1753359 c!968425) b!5532858))

(assert (= (and d!1753359 (not c!968425)) b!5532867))

(assert (= (and b!5532867 c!968426) b!5532861))

(assert (= (and b!5532867 (not c!968426)) b!5532865))

(assert (= (and b!5532865 (not res!2355655)) b!5532863))

(assert (= (and b!5532863 res!2355657) b!5532860))

(assert (= (and b!5532860 res!2355661) b!5532862))

(assert (= (and b!5532862 res!2355660) b!5532855))

(assert (= (and b!5532863 (not res!2355659)) b!5532854))

(assert (= (and b!5532854 res!2355662) b!5532856))

(assert (= (and b!5532856 (not res!2355656)) b!5532864))

(assert (= (and b!5532864 (not res!2355658)) b!5532866))

(assert (= (or b!5532858 b!5532856 b!5532860) bm!411020))

(declare-fun m!6534536 () Bool)

(assert (=> b!5532866 m!6534536))

(declare-fun m!6534538 () Bool)

(assert (=> b!5532862 m!6534538))

(assert (=> b!5532862 m!6534538))

(declare-fun m!6534540 () Bool)

(assert (=> b!5532862 m!6534540))

(assert (=> b!5532864 m!6534538))

(assert (=> b!5532864 m!6534538))

(assert (=> b!5532864 m!6534540))

(declare-fun m!6534542 () Bool)

(assert (=> bm!411020 m!6534542))

(assert (=> b!5532859 m!6533600))

(assert (=> b!5532857 m!6534536))

(assert (=> b!5532857 m!6534536))

(declare-fun m!6534544 () Bool)

(assert (=> b!5532857 m!6534544))

(assert (=> b!5532857 m!6534538))

(assert (=> b!5532857 m!6534544))

(assert (=> b!5532857 m!6534538))

(declare-fun m!6534546 () Bool)

(assert (=> b!5532857 m!6534546))

(assert (=> d!1753359 m!6534542))

(assert (=> d!1753359 m!6533958))

(assert (=> b!5532855 m!6534536))

(assert (=> b!5532230 d!1753359))

(assert (=> b!5532230 d!1753221))

(declare-fun b!5532872 () Bool)

(declare-fun e!3420129 () Bool)

(declare-fun call!411026 () Bool)

(assert (=> b!5532872 (= e!3420129 call!411026)))

(declare-fun bm!411021 () Bool)

(declare-fun call!411027 () Bool)

(assert (=> bm!411021 (= call!411027 call!411026)))

(declare-fun b!5532873 () Bool)

(declare-fun res!2355669 () Bool)

(declare-fun e!3420124 () Bool)

(assert (=> b!5532873 (=> res!2355669 e!3420124)))

(assert (=> b!5532873 (= res!2355669 (not ((_ is Concat!24364) (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292))))))))

(declare-fun e!3420126 () Bool)

(assert (=> b!5532873 (= e!3420126 e!3420124)))

(declare-fun b!5532874 () Bool)

(declare-fun e!3420127 () Bool)

(assert (=> b!5532874 (= e!3420127 call!411027)))

(declare-fun c!968429 () Bool)

(declare-fun c!968430 () Bool)

(declare-fun bm!411022 () Bool)

(assert (=> bm!411022 (= call!411026 (validRegex!7255 (ite c!968429 (reg!15848 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))) (ite c!968430 (regTwo!31551 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))) (regTwo!31550 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292))))))))))

(declare-fun b!5532876 () Bool)

(declare-fun e!3420125 () Bool)

(assert (=> b!5532876 (= e!3420125 e!3420126)))

(assert (=> b!5532876 (= c!968430 ((_ is Union!15519) (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))

(declare-fun b!5532877 () Bool)

(declare-fun e!3420128 () Bool)

(assert (=> b!5532877 (= e!3420124 e!3420128)))

(declare-fun res!2355665 () Bool)

(assert (=> b!5532877 (=> (not res!2355665) (not e!3420128))))

(declare-fun call!411028 () Bool)

(assert (=> b!5532877 (= res!2355665 call!411028)))

(declare-fun b!5532878 () Bool)

(assert (=> b!5532878 (= e!3420125 e!3420129)))

(declare-fun res!2355667 () Bool)

(assert (=> b!5532878 (= res!2355667 (not (nullable!5553 (reg!15848 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))))

(assert (=> b!5532878 (=> (not res!2355667) (not e!3420129))))

(declare-fun bm!411023 () Bool)

(assert (=> bm!411023 (= call!411028 (validRegex!7255 (ite c!968430 (regOne!31551 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))) (regOne!31550 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))))

(declare-fun b!5532879 () Bool)

(assert (=> b!5532879 (= e!3420128 call!411027)))

(declare-fun b!5532880 () Bool)

(declare-fun res!2355666 () Bool)

(assert (=> b!5532880 (=> (not res!2355666) (not e!3420127))))

(assert (=> b!5532880 (= res!2355666 call!411028)))

(assert (=> b!5532880 (= e!3420126 e!3420127)))

(declare-fun d!1753361 () Bool)

(declare-fun res!2355668 () Bool)

(declare-fun e!3420123 () Bool)

(assert (=> d!1753361 (=> res!2355668 e!3420123)))

(assert (=> d!1753361 (= res!2355668 ((_ is ElementMatch!15519) (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))

(assert (=> d!1753361 (= (validRegex!7255 (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))) e!3420123)))

(declare-fun b!5532875 () Bool)

(assert (=> b!5532875 (= e!3420123 e!3420125)))

(assert (=> b!5532875 (= c!968429 ((_ is Star!15519) (ite c!968224 (reg!15848 r!7292) (ite c!968225 (regTwo!31551 r!7292) (regTwo!31550 r!7292)))))))

(assert (= (and d!1753361 (not res!2355668)) b!5532875))

(assert (= (and b!5532875 c!968429) b!5532878))

(assert (= (and b!5532875 (not c!968429)) b!5532876))

(assert (= (and b!5532878 res!2355667) b!5532872))

(assert (= (and b!5532876 c!968430) b!5532880))

(assert (= (and b!5532876 (not c!968430)) b!5532873))

(assert (= (and b!5532880 res!2355666) b!5532874))

(assert (= (and b!5532873 (not res!2355669)) b!5532877))

(assert (= (and b!5532877 res!2355665) b!5532879))

(assert (= (or b!5532874 b!5532879) bm!411021))

(assert (= (or b!5532880 b!5532877) bm!411023))

(assert (= (or b!5532872 bm!411021) bm!411022))

(declare-fun m!6534562 () Bool)

(assert (=> bm!411022 m!6534562))

(declare-fun m!6534564 () Bool)

(assert (=> b!5532878 m!6534564))

(declare-fun m!6534566 () Bool)

(assert (=> bm!411023 m!6534566))

(assert (=> bm!410858 d!1753361))

(declare-fun d!1753367 () Bool)

(assert (=> d!1753367 true))

(declare-fun setRes!36824 () Bool)

(assert (=> d!1753367 setRes!36824))

(declare-fun condSetEmpty!36824 () Bool)

(declare-fun res!2355671 () (InoxSet Context!9806))

(assert (=> d!1753367 (= condSetEmpty!36824 (= res!2355671 ((as const (Array Context!9806 Bool)) false)))))

(assert (=> d!1753367 (= (choose!42038 lt!2248646 lambda!296961) res!2355671)))

(declare-fun setIsEmpty!36824 () Bool)

(assert (=> setIsEmpty!36824 setRes!36824))

(declare-fun tp!1521758 () Bool)

(declare-fun e!3420136 () Bool)

(declare-fun setElem!36824 () Context!9806)

(declare-fun setNonEmpty!36824 () Bool)

(assert (=> setNonEmpty!36824 (= setRes!36824 (and tp!1521758 (inv!82044 setElem!36824) e!3420136))))

(declare-fun setRest!36824 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36824 (= res!2355671 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36824 true) setRest!36824))))

(declare-fun b!5532892 () Bool)

(declare-fun tp!1521759 () Bool)

(assert (=> b!5532892 (= e!3420136 tp!1521759)))

(assert (= (and d!1753367 condSetEmpty!36824) setIsEmpty!36824))

(assert (= (and d!1753367 (not condSetEmpty!36824)) setNonEmpty!36824))

(assert (= setNonEmpty!36824 b!5532892))

(declare-fun m!6534568 () Bool)

(assert (=> setNonEmpty!36824 m!6534568))

(assert (=> d!1753071 d!1753367))

(declare-fun d!1753369 () Bool)

(assert (=> d!1753369 (= ($colon$colon!1596 (exprs!5403 lt!2248644) (ite (or c!968238 c!968239) (regTwo!31550 (regTwo!31550 r!7292)) (regTwo!31550 r!7292))) (Cons!62732 (ite (or c!968238 c!968239) (regTwo!31550 (regTwo!31550 r!7292)) (regTwo!31550 r!7292)) (exprs!5403 lt!2248644)))))

(assert (=> bm!410862 d!1753369))

(declare-fun d!1753371 () Bool)

(assert (=> d!1753371 (= (isEmpty!34522 (t!376115 (unfocusZipperList!947 zl!343))) ((_ is Nil!62732) (t!376115 (unfocusZipperList!947 zl!343))))))

(assert (=> b!5532041 d!1753371))

(assert (=> b!5532228 d!1753179))

(declare-fun b!5532896 () Bool)

(declare-fun e!3420137 () Bool)

(declare-fun tp!1521760 () Bool)

(declare-fun tp!1521763 () Bool)

(assert (=> b!5532896 (= e!3420137 (and tp!1521760 tp!1521763))))

(declare-fun b!5532895 () Bool)

(declare-fun tp!1521764 () Bool)

(assert (=> b!5532895 (= e!3420137 tp!1521764)))

(declare-fun b!5532893 () Bool)

(assert (=> b!5532893 (= e!3420137 tp_is_empty!40291)))

(assert (=> b!5532263 (= tp!1521692 e!3420137)))

(declare-fun b!5532894 () Bool)

(declare-fun tp!1521762 () Bool)

(declare-fun tp!1521761 () Bool)

(assert (=> b!5532894 (= e!3420137 (and tp!1521762 tp!1521761))))

(assert (= (and b!5532263 ((_ is ElementMatch!15519) (reg!15848 (regOne!31551 r!7292)))) b!5532893))

(assert (= (and b!5532263 ((_ is Concat!24364) (reg!15848 (regOne!31551 r!7292)))) b!5532894))

(assert (= (and b!5532263 ((_ is Star!15519) (reg!15848 (regOne!31551 r!7292)))) b!5532895))

(assert (= (and b!5532263 ((_ is Union!15519) (reg!15848 (regOne!31551 r!7292)))) b!5532896))

(declare-fun b!5532900 () Bool)

(declare-fun e!3420138 () Bool)

(declare-fun tp!1521765 () Bool)

(declare-fun tp!1521768 () Bool)

(assert (=> b!5532900 (= e!3420138 (and tp!1521765 tp!1521768))))

(declare-fun b!5532899 () Bool)

(declare-fun tp!1521769 () Bool)

(assert (=> b!5532899 (= e!3420138 tp!1521769)))

(declare-fun b!5532897 () Bool)

(assert (=> b!5532897 (= e!3420138 tp_is_empty!40291)))

(assert (=> b!5532272 (= tp!1521698 e!3420138)))

(declare-fun b!5532898 () Bool)

(declare-fun tp!1521767 () Bool)

(declare-fun tp!1521766 () Bool)

(assert (=> b!5532898 (= e!3420138 (and tp!1521767 tp!1521766))))

(assert (= (and b!5532272 ((_ is ElementMatch!15519) (regOne!31551 (reg!15848 r!7292)))) b!5532897))

(assert (= (and b!5532272 ((_ is Concat!24364) (regOne!31551 (reg!15848 r!7292)))) b!5532898))

(assert (= (and b!5532272 ((_ is Star!15519) (regOne!31551 (reg!15848 r!7292)))) b!5532899))

(assert (= (and b!5532272 ((_ is Union!15519) (regOne!31551 (reg!15848 r!7292)))) b!5532900))

(declare-fun b!5532904 () Bool)

(declare-fun e!3420139 () Bool)

(declare-fun tp!1521770 () Bool)

(declare-fun tp!1521773 () Bool)

(assert (=> b!5532904 (= e!3420139 (and tp!1521770 tp!1521773))))

(declare-fun b!5532903 () Bool)

(declare-fun tp!1521774 () Bool)

(assert (=> b!5532903 (= e!3420139 tp!1521774)))

(declare-fun b!5532901 () Bool)

(assert (=> b!5532901 (= e!3420139 tp_is_empty!40291)))

(assert (=> b!5532272 (= tp!1521701 e!3420139)))

(declare-fun b!5532902 () Bool)

(declare-fun tp!1521772 () Bool)

(declare-fun tp!1521771 () Bool)

(assert (=> b!5532902 (= e!3420139 (and tp!1521772 tp!1521771))))

(assert (= (and b!5532272 ((_ is ElementMatch!15519) (regTwo!31551 (reg!15848 r!7292)))) b!5532901))

(assert (= (and b!5532272 ((_ is Concat!24364) (regTwo!31551 (reg!15848 r!7292)))) b!5532902))

(assert (= (and b!5532272 ((_ is Star!15519) (regTwo!31551 (reg!15848 r!7292)))) b!5532903))

(assert (= (and b!5532272 ((_ is Union!15519) (regTwo!31551 (reg!15848 r!7292)))) b!5532904))

(declare-fun b!5532908 () Bool)

(declare-fun e!3420140 () Bool)

(declare-fun tp!1521775 () Bool)

(declare-fun tp!1521778 () Bool)

(assert (=> b!5532908 (= e!3420140 (and tp!1521775 tp!1521778))))

(declare-fun b!5532907 () Bool)

(declare-fun tp!1521779 () Bool)

(assert (=> b!5532907 (= e!3420140 tp!1521779)))

(declare-fun b!5532905 () Bool)

(assert (=> b!5532905 (= e!3420140 tp_is_empty!40291)))

(assert (=> b!5532293 (= tp!1521720 e!3420140)))

(declare-fun b!5532906 () Bool)

(declare-fun tp!1521777 () Bool)

(declare-fun tp!1521776 () Bool)

(assert (=> b!5532906 (= e!3420140 (and tp!1521777 tp!1521776))))

(assert (= (and b!5532293 ((_ is ElementMatch!15519) (regOne!31551 (regTwo!31550 r!7292)))) b!5532905))

(assert (= (and b!5532293 ((_ is Concat!24364) (regOne!31551 (regTwo!31550 r!7292)))) b!5532906))

(assert (= (and b!5532293 ((_ is Star!15519) (regOne!31551 (regTwo!31550 r!7292)))) b!5532907))

(assert (= (and b!5532293 ((_ is Union!15519) (regOne!31551 (regTwo!31550 r!7292)))) b!5532908))

(declare-fun b!5532912 () Bool)

(declare-fun e!3420141 () Bool)

(declare-fun tp!1521780 () Bool)

(declare-fun tp!1521783 () Bool)

(assert (=> b!5532912 (= e!3420141 (and tp!1521780 tp!1521783))))

(declare-fun b!5532911 () Bool)

(declare-fun tp!1521784 () Bool)

(assert (=> b!5532911 (= e!3420141 tp!1521784)))

(declare-fun b!5532909 () Bool)

(assert (=> b!5532909 (= e!3420141 tp_is_empty!40291)))

(assert (=> b!5532293 (= tp!1521723 e!3420141)))

(declare-fun b!5532910 () Bool)

(declare-fun tp!1521782 () Bool)

(declare-fun tp!1521781 () Bool)

(assert (=> b!5532910 (= e!3420141 (and tp!1521782 tp!1521781))))

(assert (= (and b!5532293 ((_ is ElementMatch!15519) (regTwo!31551 (regTwo!31550 r!7292)))) b!5532909))

(assert (= (and b!5532293 ((_ is Concat!24364) (regTwo!31551 (regTwo!31550 r!7292)))) b!5532910))

(assert (= (and b!5532293 ((_ is Star!15519) (regTwo!31551 (regTwo!31550 r!7292)))) b!5532911))

(assert (= (and b!5532293 ((_ is Union!15519) (regTwo!31551 (regTwo!31550 r!7292)))) b!5532912))

(declare-fun b!5532916 () Bool)

(declare-fun e!3420142 () Bool)

(declare-fun tp!1521785 () Bool)

(declare-fun tp!1521788 () Bool)

(assert (=> b!5532916 (= e!3420142 (and tp!1521785 tp!1521788))))

(declare-fun b!5532915 () Bool)

(declare-fun tp!1521789 () Bool)

(assert (=> b!5532915 (= e!3420142 tp!1521789)))

(declare-fun b!5532913 () Bool)

(assert (=> b!5532913 (= e!3420142 tp_is_empty!40291)))

(assert (=> b!5532262 (= tp!1521690 e!3420142)))

(declare-fun b!5532914 () Bool)

(declare-fun tp!1521787 () Bool)

(declare-fun tp!1521786 () Bool)

(assert (=> b!5532914 (= e!3420142 (and tp!1521787 tp!1521786))))

(assert (= (and b!5532262 ((_ is ElementMatch!15519) (regOne!31550 (regOne!31551 r!7292)))) b!5532913))

(assert (= (and b!5532262 ((_ is Concat!24364) (regOne!31550 (regOne!31551 r!7292)))) b!5532914))

(assert (= (and b!5532262 ((_ is Star!15519) (regOne!31550 (regOne!31551 r!7292)))) b!5532915))

(assert (= (and b!5532262 ((_ is Union!15519) (regOne!31550 (regOne!31551 r!7292)))) b!5532916))

(declare-fun b!5532920 () Bool)

(declare-fun e!3420143 () Bool)

(declare-fun tp!1521790 () Bool)

(declare-fun tp!1521793 () Bool)

(assert (=> b!5532920 (= e!3420143 (and tp!1521790 tp!1521793))))

(declare-fun b!5532919 () Bool)

(declare-fun tp!1521794 () Bool)

(assert (=> b!5532919 (= e!3420143 tp!1521794)))

(declare-fun b!5532917 () Bool)

(assert (=> b!5532917 (= e!3420143 tp_is_empty!40291)))

(assert (=> b!5532262 (= tp!1521689 e!3420143)))

(declare-fun b!5532918 () Bool)

(declare-fun tp!1521792 () Bool)

(declare-fun tp!1521791 () Bool)

(assert (=> b!5532918 (= e!3420143 (and tp!1521792 tp!1521791))))

(assert (= (and b!5532262 ((_ is ElementMatch!15519) (regTwo!31550 (regOne!31551 r!7292)))) b!5532917))

(assert (= (and b!5532262 ((_ is Concat!24364) (regTwo!31550 (regOne!31551 r!7292)))) b!5532918))

(assert (= (and b!5532262 ((_ is Star!15519) (regTwo!31550 (regOne!31551 r!7292)))) b!5532919))

(assert (= (and b!5532262 ((_ is Union!15519) (regTwo!31550 (regOne!31551 r!7292)))) b!5532920))

(declare-fun b!5532924 () Bool)

(declare-fun e!3420144 () Bool)

(declare-fun tp!1521795 () Bool)

(declare-fun tp!1521798 () Bool)

(assert (=> b!5532924 (= e!3420144 (and tp!1521795 tp!1521798))))

(declare-fun b!5532923 () Bool)

(declare-fun tp!1521799 () Bool)

(assert (=> b!5532923 (= e!3420144 tp!1521799)))

(declare-fun b!5532921 () Bool)

(assert (=> b!5532921 (= e!3420144 tp_is_empty!40291)))

(assert (=> b!5532271 (= tp!1521702 e!3420144)))

(declare-fun b!5532922 () Bool)

(declare-fun tp!1521797 () Bool)

(declare-fun tp!1521796 () Bool)

(assert (=> b!5532922 (= e!3420144 (and tp!1521797 tp!1521796))))

(assert (= (and b!5532271 ((_ is ElementMatch!15519) (reg!15848 (reg!15848 r!7292)))) b!5532921))

(assert (= (and b!5532271 ((_ is Concat!24364) (reg!15848 (reg!15848 r!7292)))) b!5532922))

(assert (= (and b!5532271 ((_ is Star!15519) (reg!15848 (reg!15848 r!7292)))) b!5532923))

(assert (= (and b!5532271 ((_ is Union!15519) (reg!15848 (reg!15848 r!7292)))) b!5532924))

(declare-fun b!5532928 () Bool)

(declare-fun e!3420145 () Bool)

(declare-fun tp!1521800 () Bool)

(declare-fun tp!1521803 () Bool)

(assert (=> b!5532928 (= e!3420145 (and tp!1521800 tp!1521803))))

(declare-fun b!5532927 () Bool)

(declare-fun tp!1521804 () Bool)

(assert (=> b!5532927 (= e!3420145 tp!1521804)))

(declare-fun b!5532925 () Bool)

(assert (=> b!5532925 (= e!3420145 tp_is_empty!40291)))

(assert (=> b!5532292 (= tp!1521724 e!3420145)))

(declare-fun b!5532926 () Bool)

(declare-fun tp!1521802 () Bool)

(declare-fun tp!1521801 () Bool)

(assert (=> b!5532926 (= e!3420145 (and tp!1521802 tp!1521801))))

(assert (= (and b!5532292 ((_ is ElementMatch!15519) (reg!15848 (regTwo!31550 r!7292)))) b!5532925))

(assert (= (and b!5532292 ((_ is Concat!24364) (reg!15848 (regTwo!31550 r!7292)))) b!5532926))

(assert (= (and b!5532292 ((_ is Star!15519) (reg!15848 (regTwo!31550 r!7292)))) b!5532927))

(assert (= (and b!5532292 ((_ is Union!15519) (reg!15848 (regTwo!31550 r!7292)))) b!5532928))

(declare-fun b!5532932 () Bool)

(declare-fun e!3420146 () Bool)

(declare-fun tp!1521805 () Bool)

(declare-fun tp!1521808 () Bool)

(assert (=> b!5532932 (= e!3420146 (and tp!1521805 tp!1521808))))

(declare-fun b!5532931 () Bool)

(declare-fun tp!1521809 () Bool)

(assert (=> b!5532931 (= e!3420146 tp!1521809)))

(declare-fun b!5532929 () Bool)

(assert (=> b!5532929 (= e!3420146 tp_is_empty!40291)))

(assert (=> b!5532291 (= tp!1521722 e!3420146)))

(declare-fun b!5532930 () Bool)

(declare-fun tp!1521807 () Bool)

(declare-fun tp!1521806 () Bool)

(assert (=> b!5532930 (= e!3420146 (and tp!1521807 tp!1521806))))

(assert (= (and b!5532291 ((_ is ElementMatch!15519) (regOne!31550 (regTwo!31550 r!7292)))) b!5532929))

(assert (= (and b!5532291 ((_ is Concat!24364) (regOne!31550 (regTwo!31550 r!7292)))) b!5532930))

(assert (= (and b!5532291 ((_ is Star!15519) (regOne!31550 (regTwo!31550 r!7292)))) b!5532931))

(assert (= (and b!5532291 ((_ is Union!15519) (regOne!31550 (regTwo!31550 r!7292)))) b!5532932))

(declare-fun b!5532936 () Bool)

(declare-fun e!3420147 () Bool)

(declare-fun tp!1521810 () Bool)

(declare-fun tp!1521813 () Bool)

(assert (=> b!5532936 (= e!3420147 (and tp!1521810 tp!1521813))))

(declare-fun b!5532935 () Bool)

(declare-fun tp!1521814 () Bool)

(assert (=> b!5532935 (= e!3420147 tp!1521814)))

(declare-fun b!5532933 () Bool)

(assert (=> b!5532933 (= e!3420147 tp_is_empty!40291)))

(assert (=> b!5532291 (= tp!1521721 e!3420147)))

(declare-fun b!5532934 () Bool)

(declare-fun tp!1521812 () Bool)

(declare-fun tp!1521811 () Bool)

(assert (=> b!5532934 (= e!3420147 (and tp!1521812 tp!1521811))))

(assert (= (and b!5532291 ((_ is ElementMatch!15519) (regTwo!31550 (regTwo!31550 r!7292)))) b!5532933))

(assert (= (and b!5532291 ((_ is Concat!24364) (regTwo!31550 (regTwo!31550 r!7292)))) b!5532934))

(assert (= (and b!5532291 ((_ is Star!15519) (regTwo!31550 (regTwo!31550 r!7292)))) b!5532935))

(assert (= (and b!5532291 ((_ is Union!15519) (regTwo!31550 (regTwo!31550 r!7292)))) b!5532936))

(declare-fun b!5532940 () Bool)

(declare-fun e!3420148 () Bool)

(declare-fun tp!1521815 () Bool)

(declare-fun tp!1521818 () Bool)

(assert (=> b!5532940 (= e!3420148 (and tp!1521815 tp!1521818))))

(declare-fun b!5532939 () Bool)

(declare-fun tp!1521819 () Bool)

(assert (=> b!5532939 (= e!3420148 tp!1521819)))

(declare-fun b!5532937 () Bool)

(assert (=> b!5532937 (= e!3420148 tp_is_empty!40291)))

(assert (=> b!5532270 (= tp!1521700 e!3420148)))

(declare-fun b!5532938 () Bool)

(declare-fun tp!1521817 () Bool)

(declare-fun tp!1521816 () Bool)

(assert (=> b!5532938 (= e!3420148 (and tp!1521817 tp!1521816))))

(assert (= (and b!5532270 ((_ is ElementMatch!15519) (regOne!31550 (reg!15848 r!7292)))) b!5532937))

(assert (= (and b!5532270 ((_ is Concat!24364) (regOne!31550 (reg!15848 r!7292)))) b!5532938))

(assert (= (and b!5532270 ((_ is Star!15519) (regOne!31550 (reg!15848 r!7292)))) b!5532939))

(assert (= (and b!5532270 ((_ is Union!15519) (regOne!31550 (reg!15848 r!7292)))) b!5532940))

(declare-fun b!5532944 () Bool)

(declare-fun e!3420149 () Bool)

(declare-fun tp!1521820 () Bool)

(declare-fun tp!1521825 () Bool)

(assert (=> b!5532944 (= e!3420149 (and tp!1521820 tp!1521825))))

(declare-fun b!5532943 () Bool)

(declare-fun tp!1521826 () Bool)

(assert (=> b!5532943 (= e!3420149 tp!1521826)))

(declare-fun b!5532941 () Bool)

(assert (=> b!5532941 (= e!3420149 tp_is_empty!40291)))

(assert (=> b!5532270 (= tp!1521699 e!3420149)))

(declare-fun b!5532942 () Bool)

(declare-fun tp!1521824 () Bool)

(declare-fun tp!1521822 () Bool)

(assert (=> b!5532942 (= e!3420149 (and tp!1521824 tp!1521822))))

(assert (= (and b!5532270 ((_ is ElementMatch!15519) (regTwo!31550 (reg!15848 r!7292)))) b!5532941))

(assert (= (and b!5532270 ((_ is Concat!24364) (regTwo!31550 (reg!15848 r!7292)))) b!5532942))

(assert (= (and b!5532270 ((_ is Star!15519) (regTwo!31550 (reg!15848 r!7292)))) b!5532943))

(assert (= (and b!5532270 ((_ is Union!15519) (regTwo!31550 (reg!15848 r!7292)))) b!5532944))

(declare-fun b!5532946 () Bool)

(declare-fun e!3420151 () Bool)

(declare-fun tp!1521827 () Bool)

(assert (=> b!5532946 (= e!3420151 (and tp_is_empty!40291 tp!1521827))))

(assert (=> b!5532298 (= tp!1521727 e!3420151)))

(assert (= (and b!5532298 ((_ is Cons!62733) (t!376116 (t!376116 s!2326)))) b!5532946))

(declare-fun b!5532950 () Bool)

(declare-fun e!3420152 () Bool)

(declare-fun tp!1521828 () Bool)

(declare-fun tp!1521831 () Bool)

(assert (=> b!5532950 (= e!3420152 (and tp!1521828 tp!1521831))))

(declare-fun b!5532949 () Bool)

(declare-fun tp!1521832 () Bool)

(assert (=> b!5532949 (= e!3420152 tp!1521832)))

(declare-fun b!5532947 () Bool)

(assert (=> b!5532947 (= e!3420152 tp_is_empty!40291)))

(assert (=> b!5532304 (= tp!1521734 e!3420152)))

(declare-fun b!5532948 () Bool)

(declare-fun tp!1521830 () Bool)

(declare-fun tp!1521829 () Bool)

(assert (=> b!5532948 (= e!3420152 (and tp!1521830 tp!1521829))))

(assert (= (and b!5532304 ((_ is ElementMatch!15519) (h!69180 (exprs!5403 (h!69182 zl!343))))) b!5532947))

(assert (= (and b!5532304 ((_ is Concat!24364) (h!69180 (exprs!5403 (h!69182 zl!343))))) b!5532948))

(assert (= (and b!5532304 ((_ is Star!15519) (h!69180 (exprs!5403 (h!69182 zl!343))))) b!5532949))

(assert (= (and b!5532304 ((_ is Union!15519) (h!69180 (exprs!5403 (h!69182 zl!343))))) b!5532950))

(declare-fun b!5532951 () Bool)

(declare-fun e!3420153 () Bool)

(declare-fun tp!1521833 () Bool)

(declare-fun tp!1521834 () Bool)

(assert (=> b!5532951 (= e!3420153 (and tp!1521833 tp!1521834))))

(assert (=> b!5532304 (= tp!1521735 e!3420153)))

(assert (= (and b!5532304 ((_ is Cons!62732) (t!376115 (exprs!5403 (h!69182 zl!343))))) b!5532951))

(declare-fun b!5532955 () Bool)

(declare-fun e!3420154 () Bool)

(declare-fun tp!1521835 () Bool)

(declare-fun tp!1521838 () Bool)

(assert (=> b!5532955 (= e!3420154 (and tp!1521835 tp!1521838))))

(declare-fun b!5532954 () Bool)

(declare-fun tp!1521839 () Bool)

(assert (=> b!5532954 (= e!3420154 tp!1521839)))

(declare-fun b!5532952 () Bool)

(assert (=> b!5532952 (= e!3420154 tp_is_empty!40291)))

(assert (=> b!5532289 (= tp!1521715 e!3420154)))

(declare-fun b!5532953 () Bool)

(declare-fun tp!1521837 () Bool)

(declare-fun tp!1521836 () Bool)

(assert (=> b!5532953 (= e!3420154 (and tp!1521837 tp!1521836))))

(assert (= (and b!5532289 ((_ is ElementMatch!15519) (regOne!31551 (regOne!31550 r!7292)))) b!5532952))

(assert (= (and b!5532289 ((_ is Concat!24364) (regOne!31551 (regOne!31550 r!7292)))) b!5532953))

(assert (= (and b!5532289 ((_ is Star!15519) (regOne!31551 (regOne!31550 r!7292)))) b!5532954))

(assert (= (and b!5532289 ((_ is Union!15519) (regOne!31551 (regOne!31550 r!7292)))) b!5532955))

(declare-fun b!5532959 () Bool)

(declare-fun e!3420155 () Bool)

(declare-fun tp!1521840 () Bool)

(declare-fun tp!1521843 () Bool)

(assert (=> b!5532959 (= e!3420155 (and tp!1521840 tp!1521843))))

(declare-fun b!5532958 () Bool)

(declare-fun tp!1521844 () Bool)

(assert (=> b!5532958 (= e!3420155 tp!1521844)))

(declare-fun b!5532956 () Bool)

(assert (=> b!5532956 (= e!3420155 tp_is_empty!40291)))

(assert (=> b!5532289 (= tp!1521718 e!3420155)))

(declare-fun b!5532957 () Bool)

(declare-fun tp!1521842 () Bool)

(declare-fun tp!1521841 () Bool)

(assert (=> b!5532957 (= e!3420155 (and tp!1521842 tp!1521841))))

(assert (= (and b!5532289 ((_ is ElementMatch!15519) (regTwo!31551 (regOne!31550 r!7292)))) b!5532956))

(assert (= (and b!5532289 ((_ is Concat!24364) (regTwo!31551 (regOne!31550 r!7292)))) b!5532957))

(assert (= (and b!5532289 ((_ is Star!15519) (regTwo!31551 (regOne!31550 r!7292)))) b!5532958))

(assert (= (and b!5532289 ((_ is Union!15519) (regTwo!31551 (regOne!31550 r!7292)))) b!5532959))

(declare-fun b!5532963 () Bool)

(declare-fun e!3420160 () Bool)

(declare-fun tp!1521845 () Bool)

(declare-fun tp!1521848 () Bool)

(assert (=> b!5532963 (= e!3420160 (and tp!1521845 tp!1521848))))

(declare-fun b!5532962 () Bool)

(declare-fun tp!1521849 () Bool)

(assert (=> b!5532962 (= e!3420160 tp!1521849)))

(declare-fun b!5532960 () Bool)

(assert (=> b!5532960 (= e!3420160 tp_is_empty!40291)))

(assert (=> b!5532268 (= tp!1521693 e!3420160)))

(declare-fun b!5532961 () Bool)

(declare-fun tp!1521847 () Bool)

(declare-fun tp!1521846 () Bool)

(assert (=> b!5532961 (= e!3420160 (and tp!1521847 tp!1521846))))

(assert (= (and b!5532268 ((_ is ElementMatch!15519) (regOne!31551 (regTwo!31551 r!7292)))) b!5532960))

(assert (= (and b!5532268 ((_ is Concat!24364) (regOne!31551 (regTwo!31551 r!7292)))) b!5532961))

(assert (= (and b!5532268 ((_ is Star!15519) (regOne!31551 (regTwo!31551 r!7292)))) b!5532962))

(assert (= (and b!5532268 ((_ is Union!15519) (regOne!31551 (regTwo!31551 r!7292)))) b!5532963))

(declare-fun b!5532976 () Bool)

(declare-fun e!3420164 () Bool)

(declare-fun tp!1521850 () Bool)

(declare-fun tp!1521853 () Bool)

(assert (=> b!5532976 (= e!3420164 (and tp!1521850 tp!1521853))))

(declare-fun b!5532975 () Bool)

(declare-fun tp!1521854 () Bool)

(assert (=> b!5532975 (= e!3420164 tp!1521854)))

(declare-fun b!5532973 () Bool)

(assert (=> b!5532973 (= e!3420164 tp_is_empty!40291)))

(assert (=> b!5532268 (= tp!1521696 e!3420164)))

(declare-fun b!5532974 () Bool)

(declare-fun tp!1521852 () Bool)

(declare-fun tp!1521851 () Bool)

(assert (=> b!5532974 (= e!3420164 (and tp!1521852 tp!1521851))))

(assert (= (and b!5532268 ((_ is ElementMatch!15519) (regTwo!31551 (regTwo!31551 r!7292)))) b!5532973))

(assert (= (and b!5532268 ((_ is Concat!24364) (regTwo!31551 (regTwo!31551 r!7292)))) b!5532974))

(assert (= (and b!5532268 ((_ is Star!15519) (regTwo!31551 (regTwo!31551 r!7292)))) b!5532975))

(assert (= (and b!5532268 ((_ is Union!15519) (regTwo!31551 (regTwo!31551 r!7292)))) b!5532976))

(declare-fun b!5532980 () Bool)

(declare-fun e!3420165 () Bool)

(declare-fun tp!1521855 () Bool)

(declare-fun tp!1521858 () Bool)

(assert (=> b!5532980 (= e!3420165 (and tp!1521855 tp!1521858))))

(declare-fun b!5532979 () Bool)

(declare-fun tp!1521859 () Bool)

(assert (=> b!5532979 (= e!3420165 tp!1521859)))

(declare-fun b!5532977 () Bool)

(assert (=> b!5532977 (= e!3420165 tp_is_empty!40291)))

(assert (=> b!5532288 (= tp!1521719 e!3420165)))

(declare-fun b!5532978 () Bool)

(declare-fun tp!1521857 () Bool)

(declare-fun tp!1521856 () Bool)

(assert (=> b!5532978 (= e!3420165 (and tp!1521857 tp!1521856))))

(assert (= (and b!5532288 ((_ is ElementMatch!15519) (reg!15848 (regOne!31550 r!7292)))) b!5532977))

(assert (= (and b!5532288 ((_ is Concat!24364) (reg!15848 (regOne!31550 r!7292)))) b!5532978))

(assert (= (and b!5532288 ((_ is Star!15519) (reg!15848 (regOne!31550 r!7292)))) b!5532979))

(assert (= (and b!5532288 ((_ is Union!15519) (reg!15848 (regOne!31550 r!7292)))) b!5532980))

(declare-fun b!5532984 () Bool)

(declare-fun e!3420166 () Bool)

(declare-fun tp!1521860 () Bool)

(declare-fun tp!1521863 () Bool)

(assert (=> b!5532984 (= e!3420166 (and tp!1521860 tp!1521863))))

(declare-fun b!5532983 () Bool)

(declare-fun tp!1521864 () Bool)

(assert (=> b!5532983 (= e!3420166 tp!1521864)))

(declare-fun b!5532981 () Bool)

(assert (=> b!5532981 (= e!3420166 tp_is_empty!40291)))

(assert (=> b!5532267 (= tp!1521697 e!3420166)))

(declare-fun b!5532982 () Bool)

(declare-fun tp!1521862 () Bool)

(declare-fun tp!1521861 () Bool)

(assert (=> b!5532982 (= e!3420166 (and tp!1521862 tp!1521861))))

(assert (= (and b!5532267 ((_ is ElementMatch!15519) (reg!15848 (regTwo!31551 r!7292)))) b!5532981))

(assert (= (and b!5532267 ((_ is Concat!24364) (reg!15848 (regTwo!31551 r!7292)))) b!5532982))

(assert (= (and b!5532267 ((_ is Star!15519) (reg!15848 (regTwo!31551 r!7292)))) b!5532983))

(assert (= (and b!5532267 ((_ is Union!15519) (reg!15848 (regTwo!31551 r!7292)))) b!5532984))

(declare-fun b!5532988 () Bool)

(declare-fun e!3420167 () Bool)

(declare-fun tp!1521865 () Bool)

(declare-fun tp!1521868 () Bool)

(assert (=> b!5532988 (= e!3420167 (and tp!1521865 tp!1521868))))

(declare-fun b!5532987 () Bool)

(declare-fun tp!1521869 () Bool)

(assert (=> b!5532987 (= e!3420167 tp!1521869)))

(declare-fun b!5532985 () Bool)

(assert (=> b!5532985 (= e!3420167 tp_is_empty!40291)))

(assert (=> b!5532287 (= tp!1521717 e!3420167)))

(declare-fun b!5532986 () Bool)

(declare-fun tp!1521867 () Bool)

(declare-fun tp!1521866 () Bool)

(assert (=> b!5532986 (= e!3420167 (and tp!1521867 tp!1521866))))

(assert (= (and b!5532287 ((_ is ElementMatch!15519) (regOne!31550 (regOne!31550 r!7292)))) b!5532985))

(assert (= (and b!5532287 ((_ is Concat!24364) (regOne!31550 (regOne!31550 r!7292)))) b!5532986))

(assert (= (and b!5532287 ((_ is Star!15519) (regOne!31550 (regOne!31550 r!7292)))) b!5532987))

(assert (= (and b!5532287 ((_ is Union!15519) (regOne!31550 (regOne!31550 r!7292)))) b!5532988))

(declare-fun b!5532992 () Bool)

(declare-fun e!3420168 () Bool)

(declare-fun tp!1521870 () Bool)

(declare-fun tp!1521873 () Bool)

(assert (=> b!5532992 (= e!3420168 (and tp!1521870 tp!1521873))))

(declare-fun b!5532991 () Bool)

(declare-fun tp!1521874 () Bool)

(assert (=> b!5532991 (= e!3420168 tp!1521874)))

(declare-fun b!5532989 () Bool)

(assert (=> b!5532989 (= e!3420168 tp_is_empty!40291)))

(assert (=> b!5532287 (= tp!1521716 e!3420168)))

(declare-fun b!5532990 () Bool)

(declare-fun tp!1521872 () Bool)

(declare-fun tp!1521871 () Bool)

(assert (=> b!5532990 (= e!3420168 (and tp!1521872 tp!1521871))))

(assert (= (and b!5532287 ((_ is ElementMatch!15519) (regTwo!31550 (regOne!31550 r!7292)))) b!5532989))

(assert (= (and b!5532287 ((_ is Concat!24364) (regTwo!31550 (regOne!31550 r!7292)))) b!5532990))

(assert (= (and b!5532287 ((_ is Star!15519) (regTwo!31550 (regOne!31550 r!7292)))) b!5532991))

(assert (= (and b!5532287 ((_ is Union!15519) (regTwo!31550 (regOne!31550 r!7292)))) b!5532992))

(declare-fun b!5532996 () Bool)

(declare-fun e!3420169 () Bool)

(declare-fun tp!1521875 () Bool)

(declare-fun tp!1521878 () Bool)

(assert (=> b!5532996 (= e!3420169 (and tp!1521875 tp!1521878))))

(declare-fun b!5532995 () Bool)

(declare-fun tp!1521879 () Bool)

(assert (=> b!5532995 (= e!3420169 tp!1521879)))

(declare-fun b!5532993 () Bool)

(assert (=> b!5532993 (= e!3420169 tp_is_empty!40291)))

(assert (=> b!5532266 (= tp!1521695 e!3420169)))

(declare-fun b!5532994 () Bool)

(declare-fun tp!1521877 () Bool)

(declare-fun tp!1521876 () Bool)

(assert (=> b!5532994 (= e!3420169 (and tp!1521877 tp!1521876))))

(assert (= (and b!5532266 ((_ is ElementMatch!15519) (regOne!31550 (regTwo!31551 r!7292)))) b!5532993))

(assert (= (and b!5532266 ((_ is Concat!24364) (regOne!31550 (regTwo!31551 r!7292)))) b!5532994))

(assert (= (and b!5532266 ((_ is Star!15519) (regOne!31550 (regTwo!31551 r!7292)))) b!5532995))

(assert (= (and b!5532266 ((_ is Union!15519) (regOne!31550 (regTwo!31551 r!7292)))) b!5532996))

(declare-fun b!5533000 () Bool)

(declare-fun e!3420170 () Bool)

(declare-fun tp!1521880 () Bool)

(declare-fun tp!1521883 () Bool)

(assert (=> b!5533000 (= e!3420170 (and tp!1521880 tp!1521883))))

(declare-fun b!5532999 () Bool)

(declare-fun tp!1521884 () Bool)

(assert (=> b!5532999 (= e!3420170 tp!1521884)))

(declare-fun b!5532997 () Bool)

(assert (=> b!5532997 (= e!3420170 tp_is_empty!40291)))

(assert (=> b!5532266 (= tp!1521694 e!3420170)))

(declare-fun b!5532998 () Bool)

(declare-fun tp!1521882 () Bool)

(declare-fun tp!1521881 () Bool)

(assert (=> b!5532998 (= e!3420170 (and tp!1521882 tp!1521881))))

(assert (= (and b!5532266 ((_ is ElementMatch!15519) (regTwo!31550 (regTwo!31551 r!7292)))) b!5532997))

(assert (= (and b!5532266 ((_ is Concat!24364) (regTwo!31550 (regTwo!31551 r!7292)))) b!5532998))

(assert (= (and b!5532266 ((_ is Star!15519) (regTwo!31550 (regTwo!31551 r!7292)))) b!5532999))

(assert (= (and b!5532266 ((_ is Union!15519) (regTwo!31550 (regTwo!31551 r!7292)))) b!5533000))

(declare-fun b!5533012 () Bool)

(declare-fun e!3420178 () Bool)

(declare-fun tp!1521885 () Bool)

(declare-fun tp!1521886 () Bool)

(assert (=> b!5533012 (= e!3420178 (and tp!1521885 tp!1521886))))

(assert (=> b!5532303 (= tp!1521733 e!3420178)))

(assert (= (and b!5532303 ((_ is Cons!62732) (exprs!5403 setElem!36815))) b!5533012))

(declare-fun condSetEmpty!36826 () Bool)

(assert (=> setNonEmpty!36815 (= condSetEmpty!36826 (= setRest!36815 ((as const (Array Context!9806 Bool)) false)))))

(declare-fun setRes!36826 () Bool)

(assert (=> setNonEmpty!36815 (= tp!1521732 setRes!36826)))

(declare-fun setIsEmpty!36826 () Bool)

(assert (=> setIsEmpty!36826 setRes!36826))

(declare-fun tp!1521887 () Bool)

(declare-fun setElem!36826 () Context!9806)

(declare-fun setNonEmpty!36826 () Bool)

(declare-fun e!3420179 () Bool)

(assert (=> setNonEmpty!36826 (= setRes!36826 (and tp!1521887 (inv!82044 setElem!36826) e!3420179))))

(declare-fun setRest!36826 () (InoxSet Context!9806))

(assert (=> setNonEmpty!36826 (= setRest!36815 ((_ map or) (store ((as const (Array Context!9806 Bool)) false) setElem!36826 true) setRest!36826))))

(declare-fun b!5533013 () Bool)

(declare-fun tp!1521888 () Bool)

(assert (=> b!5533013 (= e!3420179 tp!1521888)))

(assert (= (and setNonEmpty!36815 condSetEmpty!36826) setIsEmpty!36826))

(assert (= (and setNonEmpty!36815 (not condSetEmpty!36826)) setNonEmpty!36826))

(assert (= setNonEmpty!36826 b!5533013))

(declare-fun m!6534594 () Bool)

(assert (=> setNonEmpty!36826 m!6534594))

(declare-fun b!5533014 () Bool)

(declare-fun e!3420180 () Bool)

(declare-fun tp!1521889 () Bool)

(declare-fun tp!1521890 () Bool)

(assert (=> b!5533014 (= e!3420180 (and tp!1521889 tp!1521890))))

(assert (=> b!5532280 (= tp!1521707 e!3420180)))

(assert (= (and b!5532280 ((_ is Cons!62732) (exprs!5403 (h!69182 (t!376117 zl!343))))) b!5533014))

(declare-fun b!5533016 () Bool)

(declare-fun e!3420182 () Bool)

(declare-fun tp!1521891 () Bool)

(assert (=> b!5533016 (= e!3420182 tp!1521891)))

(declare-fun e!3420181 () Bool)

(declare-fun b!5533015 () Bool)

(declare-fun tp!1521892 () Bool)

(assert (=> b!5533015 (= e!3420181 (and (inv!82044 (h!69182 (t!376117 (t!376117 zl!343)))) e!3420182 tp!1521892))))

(assert (=> b!5532279 (= tp!1521708 e!3420181)))

(assert (= b!5533015 b!5533016))

(assert (= (and b!5532279 ((_ is Cons!62734) (t!376117 (t!376117 zl!343)))) b!5533015))

(declare-fun m!6534596 () Bool)

(assert (=> b!5533015 m!6534596))

(declare-fun b!5533020 () Bool)

(declare-fun e!3420183 () Bool)

(declare-fun tp!1521893 () Bool)

(declare-fun tp!1521896 () Bool)

(assert (=> b!5533020 (= e!3420183 (and tp!1521893 tp!1521896))))

(declare-fun b!5533019 () Bool)

(declare-fun tp!1521897 () Bool)

(assert (=> b!5533019 (= e!3420183 tp!1521897)))

(declare-fun b!5533017 () Bool)

(assert (=> b!5533017 (= e!3420183 tp_is_empty!40291)))

(assert (=> b!5532285 (= tp!1521713 e!3420183)))

(declare-fun b!5533018 () Bool)

(declare-fun tp!1521895 () Bool)

(declare-fun tp!1521894 () Bool)

(assert (=> b!5533018 (= e!3420183 (and tp!1521895 tp!1521894))))

(assert (= (and b!5532285 ((_ is ElementMatch!15519) (h!69180 (exprs!5403 setElem!36809)))) b!5533017))

(assert (= (and b!5532285 ((_ is Concat!24364) (h!69180 (exprs!5403 setElem!36809)))) b!5533018))

(assert (= (and b!5532285 ((_ is Star!15519) (h!69180 (exprs!5403 setElem!36809)))) b!5533019))

(assert (= (and b!5532285 ((_ is Union!15519) (h!69180 (exprs!5403 setElem!36809)))) b!5533020))

(declare-fun b!5533021 () Bool)

(declare-fun e!3420184 () Bool)

(declare-fun tp!1521898 () Bool)

(declare-fun tp!1521899 () Bool)

(assert (=> b!5533021 (= e!3420184 (and tp!1521898 tp!1521899))))

(assert (=> b!5532285 (= tp!1521714 e!3420184)))

(assert (= (and b!5532285 ((_ is Cons!62732) (t!376115 (exprs!5403 setElem!36809)))) b!5533021))

(declare-fun b!5533025 () Bool)

(declare-fun e!3420185 () Bool)

(declare-fun tp!1521900 () Bool)

(declare-fun tp!1521903 () Bool)

(assert (=> b!5533025 (= e!3420185 (and tp!1521900 tp!1521903))))

(declare-fun b!5533024 () Bool)

(declare-fun tp!1521904 () Bool)

(assert (=> b!5533024 (= e!3420185 tp!1521904)))

(declare-fun b!5533022 () Bool)

(assert (=> b!5533022 (= e!3420185 tp_is_empty!40291)))

(assert (=> b!5532264 (= tp!1521688 e!3420185)))

(declare-fun b!5533023 () Bool)

(declare-fun tp!1521902 () Bool)

(declare-fun tp!1521901 () Bool)

(assert (=> b!5533023 (= e!3420185 (and tp!1521902 tp!1521901))))

(assert (= (and b!5532264 ((_ is ElementMatch!15519) (regOne!31551 (regOne!31551 r!7292)))) b!5533022))

(assert (= (and b!5532264 ((_ is Concat!24364) (regOne!31551 (regOne!31551 r!7292)))) b!5533023))

(assert (= (and b!5532264 ((_ is Star!15519) (regOne!31551 (regOne!31551 r!7292)))) b!5533024))

(assert (= (and b!5532264 ((_ is Union!15519) (regOne!31551 (regOne!31551 r!7292)))) b!5533025))

(declare-fun b!5533029 () Bool)

(declare-fun e!3420186 () Bool)

(declare-fun tp!1521905 () Bool)

(declare-fun tp!1521908 () Bool)

(assert (=> b!5533029 (= e!3420186 (and tp!1521905 tp!1521908))))

(declare-fun b!5533028 () Bool)

(declare-fun tp!1521909 () Bool)

(assert (=> b!5533028 (= e!3420186 tp!1521909)))

(declare-fun b!5533026 () Bool)

(assert (=> b!5533026 (= e!3420186 tp_is_empty!40291)))

(assert (=> b!5532264 (= tp!1521691 e!3420186)))

(declare-fun b!5533027 () Bool)

(declare-fun tp!1521907 () Bool)

(declare-fun tp!1521906 () Bool)

(assert (=> b!5533027 (= e!3420186 (and tp!1521907 tp!1521906))))

(assert (= (and b!5532264 ((_ is ElementMatch!15519) (regTwo!31551 (regOne!31551 r!7292)))) b!5533026))

(assert (= (and b!5532264 ((_ is Concat!24364) (regTwo!31551 (regOne!31551 r!7292)))) b!5533027))

(assert (= (and b!5532264 ((_ is Star!15519) (regTwo!31551 (regOne!31551 r!7292)))) b!5533028))

(assert (= (and b!5532264 ((_ is Union!15519) (regTwo!31551 (regOne!31551 r!7292)))) b!5533029))

(declare-fun b_lambda!210059 () Bool)

(assert (= b_lambda!210037 (or d!1753089 b_lambda!210059)))

(declare-fun bs!1279468 () Bool)

(declare-fun d!1753387 () Bool)

(assert (= bs!1279468 (and d!1753387 d!1753089)))

(assert (=> bs!1279468 (= (dynLambda!24533 lambda!297022 (h!69180 (exprs!5403 (h!69182 zl!343)))) (validRegex!7255 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(declare-fun m!6534598 () Bool)

(assert (=> bs!1279468 m!6534598))

(assert (=> b!5532375 d!1753387))

(declare-fun b_lambda!210061 () Bool)

(assert (= b_lambda!210045 (or d!1753055 b_lambda!210061)))

(declare-fun bs!1279469 () Bool)

(declare-fun d!1753389 () Bool)

(assert (= bs!1279469 (and d!1753389 d!1753055)))

(assert (=> bs!1279469 (= (dynLambda!24533 lambda!297010 (h!69180 (exprs!5403 (h!69182 zl!343)))) (validRegex!7255 (h!69180 (exprs!5403 (h!69182 zl!343)))))))

(assert (=> bs!1279469 m!6534598))

(assert (=> b!5532536 d!1753389))

(declare-fun b_lambda!210063 () Bool)

(assert (= b_lambda!210035 (or d!1753099 b_lambda!210063)))

(declare-fun bs!1279470 () Bool)

(declare-fun d!1753391 () Bool)

(assert (= bs!1279470 (and d!1753391 d!1753099)))

(assert (=> bs!1279470 (= (dynLambda!24533 lambda!297023 (h!69180 (exprs!5403 setElem!36809))) (validRegex!7255 (h!69180 (exprs!5403 setElem!36809))))))

(declare-fun m!6534600 () Bool)

(assert (=> bs!1279470 m!6534600))

(assert (=> b!5532314 d!1753391))

(declare-fun b_lambda!210065 () Bool)

(assert (= b_lambda!210043 (or d!1753029 b_lambda!210065)))

(declare-fun bs!1279471 () Bool)

(declare-fun d!1753393 () Bool)

(assert (= bs!1279471 (and d!1753393 d!1753029)))

(assert (=> bs!1279471 (= (dynLambda!24533 lambda!297001 (h!69180 (unfocusZipperList!947 zl!343))) (validRegex!7255 (h!69180 (unfocusZipperList!947 zl!343))))))

(declare-fun m!6534602 () Bool)

(assert (=> bs!1279471 m!6534602))

(assert (=> b!5532525 d!1753393))

(declare-fun b_lambda!210067 () Bool)

(assert (= b_lambda!210057 (or b!5531572 b_lambda!210067)))

(assert (=> d!1753347 d!1753105))

(declare-fun b_lambda!210069 () Bool)

(assert (= b_lambda!210041 (or b!5531572 b_lambda!210069)))

(assert (=> d!1753191 d!1753103))

(declare-fun b_lambda!210071 () Bool)

(assert (= b_lambda!210039 (or b!5531572 b_lambda!210071)))

(assert (=> d!1753127 d!1753101))

(declare-fun b_lambda!210073 () Bool)

(assert (= b_lambda!210055 (or d!1753035 b_lambda!210073)))

(declare-fun bs!1279473 () Bool)

(declare-fun d!1753395 () Bool)

(assert (= bs!1279473 (and d!1753395 d!1753035)))

(assert (=> bs!1279473 (= (dynLambda!24533 lambda!297007 (h!69180 lt!2248708)) (validRegex!7255 (h!69180 lt!2248708)))))

(declare-fun m!6534604 () Bool)

(assert (=> bs!1279473 m!6534604))

(assert (=> b!5532823 d!1753395))

(check-sat (not b!5533018) (not d!1753207) (not b!5533013) (not b!5533019) (not b!5532912) (not b!5532980) (not b!5532988) (not b!5532620) (not bs!1279471) (not b!5532864) (not b!5532633) (not bm!410917) (not b!5532943) (not bm!411019) (not b!5532900) (not b!5532959) (not b!5532513) (not bm!410908) (not setNonEmpty!36826) (not b!5532862) (not b!5532825) (not bm!411018) (not b!5532926) (not d!1753191) (not d!1753167) (not b!5532462) (not b!5532562) (not d!1753347) (not b!5532617) (not b!5532948) (not bm!410918) (not d!1753119) (not bm!411022) (not b!5532741) (not b!5532324) (not b!5532533) (not b!5532774) (not b!5532403) (not d!1753271) (not bm!410896) (not b!5532640) (not b_lambda!210031) (not d!1753275) (not bm!410932) (not b!5532953) (not b!5532503) (not d!1753193) (not d!1753179) (not d!1753117) (not d!1753181) (not b!5532824) (not bm!410995) (not d!1753277) (not b!5532515) (not b!5532507) (not b!5532613) (not b!5532903) (not b!5532339) (not d!1753217) (not b!5532992) (not b!5532936) (not b!5532376) (not b!5532833) (not b!5532436) (not d!1753135) (not b!5532629) (not b!5532469) (not b_lambda!210069) (not bm!410898) (not b!5532740) (not bm!411013) (not b!5532466) (not b!5532593) (not b!5532511) (not b!5532987) (not bm!410930) (not b!5532315) (not bm!410988) (not bm!411016) (not bm!410887) (not b!5532895) (not b!5532537) (not b!5532847) (not d!1753195) (not setNonEmpty!36818) (not bm!410902) (not b!5532866) (not b!5532984) (not bm!410935) (not bm!411011) (not b!5533015) (not b!5532706) (not b!5532514) (not b!5532526) (not b!5532922) (not bm!410910) (not b!5532384) (not b_lambda!210029) (not b!5532930) (not b!5532855) (not b!5532830) (not b!5532914) (not b!5532616) (not bm!410994) (not b!5532942) (not b!5532938) (not bm!410885) (not bm!410948) (not b!5533027) (not b!5532608) (not b!5532473) (not bm!410986) (not b!5532934) (not bm!410911) (not b!5532330) (not b!5532957) (not b_lambda!210067) (not b!5532427) (not b!5532522) (not b!5532920) (not b!5532857) (not b!5532951) (not b!5532553) (not d!1753343) (not b!5533024) (not b!5532919) (not b!5532899) (not bm!410999) (not b!5532763) (not bm!410972) (not b!5532471) (not bm!410989) (not b!5532685) (not b!5532707) (not b!5532481) (not b!5532797) (not b!5532401) (not b!5532458) (not bs!1279469) (not b!5532904) (not d!1753247) (not b!5532894) (not b!5533028) (not bm!410899) (not b!5532976) (not d!1753337) (not b!5532636) (not b_lambda!210073) (not b!5532393) (not d!1753239) (not b!5532737) (not b!5532902) (not b!5532974) (not b_lambda!210071) (not d!1753251) (not b!5532931) (not bm!410888) (not bm!411008) (not bm!411023) (not b!5532808) (not b!5532911) (not bm!410998) (not b!5532738) (not d!1753127) (not d!1753225) (not bm!410875) (not b_lambda!210059) (not b!5532983) (not b!5532944) (not b!5532994) (not b!5532954) (not bs!1279473) (not bm!410881) (not bm!411012) (not d!1753223) (not d!1753265) (not bm!410936) (not b!5532560) (not d!1753295) (not b!5532990) (not b!5532509) (not b!5532351) (not bm!410914) (not b!5532410) (not b!5532928) (not b!5532999) (not b!5532940) (not bm!410893) (not b!5533020) (not d!1753311) (not b!5532982) (not b!5532986) (not bs!1279468) (not b!5532946) (not b!5532615) (not b!5532421) (not b!5532557) (not b!5532564) (not b!5532991) (not b!5532896) (not d!1753241) (not b!5532975) (not bm!410938) (not b!5533014) (not b!5532447) (not bm!411005) (not b!5532555) (not b!5532400) (not b!5532415) (not b_lambda!210033) (not bm!410895) (not b!5532618) (not b!5532955) (not b!5532305) (not d!1753243) (not b!5533016) (not bm!410878) (not b!5532334) (not bm!410992) (not b!5532907) (not b!5532739) (not b!5532906) (not b!5532918) (not b!5532949) (not b!5532961) (not b!5532736) (not d!1753133) (not bm!410904) (not d!1753219) (not b!5532915) (not b!5532978) (not bm!410929) (not bm!410915) (not b!5532878) (not setNonEmpty!36822) (not d!1753309) (not d!1753209) (not b!5532341) (not bm!411020) (not bm!410969) (not b!5532607) (not b!5532308) (not b!5532819) (not b!5532337) (not b!5532828) (not bm!410882) (not b!5532927) (not b!5532998) (not b!5533029) (not b!5532512) (not b!5532923) (not b!5532958) (not b!5532327) (not bm!410894) (not b!5533023) (not b!5532939) (not b!5532332) (not b!5532996) (not bm!410905) (not b!5532464) (not b!5532910) (not d!1753245) (not b!5532932) (not b!5532995) (not d!1753339) (not b!5532963) (not b_lambda!210061) (not bm!410897) (not bs!1279470) (not b!5532392) (not bm!410913) (not b!5532638) (not bm!411002) (not b!5532935) (not setNonEmpty!36824) tp_is_empty!40291 (not b_lambda!210065) (not bm!410880) (not b!5532924) (not b!5532962) (not bm!411010) (not b!5532892) (not b!5532406) (not b!5533012) (not b!5532950) (not b!5532379) (not b_lambda!210063) (not b!5532859) (not bm!410927) (not d!1753263) (not b!5532594) (not b!5533000) (not b!5532898) (not b!5532979) (not b!5533025) (not bm!411004) (not b!5532709) (not b!5532734) (not bm!410933) (not b!5532916) (not d!1753359) (not d!1753235) (not b!5532402) (not b!5532631) (not b!5533021) (not b!5532908))
(check-sat)
