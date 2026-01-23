; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656036 () Bool)

(assert start!656036)

(declare-fun b!6777698 () Bool)

(assert (=> b!6777698 true))

(assert (=> b!6777698 true))

(declare-fun lambda!381387 () Int)

(declare-fun lambda!381386 () Int)

(assert (=> b!6777698 (not (= lambda!381387 lambda!381386))))

(assert (=> b!6777698 true))

(assert (=> b!6777698 true))

(declare-fun lambda!381388 () Int)

(assert (=> b!6777698 (not (= lambda!381388 lambda!381386))))

(assert (=> b!6777698 (not (= lambda!381388 lambda!381387))))

(assert (=> b!6777698 true))

(assert (=> b!6777698 true))

(declare-fun b!6777699 () Bool)

(assert (=> b!6777699 true))

(declare-fun e!4091613 () Bool)

(declare-fun e!4091619 () Bool)

(assert (=> b!6777698 (= e!4091613 e!4091619)))

(declare-fun res!2770609 () Bool)

(assert (=> b!6777698 (=> res!2770609 e!4091619)))

(declare-fun lt!2444378 () Bool)

(declare-fun e!4091620 () Bool)

(assert (=> b!6777698 (= res!2770609 (not (= lt!2444378 e!4091620)))))

(declare-fun res!2770623 () Bool)

(assert (=> b!6777698 (=> res!2770623 e!4091620)))

(declare-datatypes ((C!33472 0))(
  ( (C!33473 (val!26438 Int)) )
))
(declare-datatypes ((List!66102 0))(
  ( (Nil!65978) (Cons!65978 (h!72426 C!33472) (t!379815 List!66102)) )
))
(declare-fun s!2326 () List!66102)

(declare-fun isEmpty!38337 (List!66102) Bool)

(assert (=> b!6777698 (= res!2770623 (isEmpty!38337 s!2326))))

(declare-fun Exists!3669 (Int) Bool)

(assert (=> b!6777698 (= (Exists!3669 lambda!381386) (Exists!3669 lambda!381388))))

(declare-datatypes ((Unit!159893 0))(
  ( (Unit!159894) )
))
(declare-fun lt!2444370 () Unit!159893)

(declare-datatypes ((Regex!16601 0))(
  ( (ElementMatch!16601 (c!1258869 C!33472)) (Concat!25446 (regOne!33714 Regex!16601) (regTwo!33714 Regex!16601)) (EmptyExpr!16601) (Star!16601 (reg!16930 Regex!16601)) (EmptyLang!16601) (Union!16601 (regOne!33715 Regex!16601) (regTwo!33715 Regex!16601)) )
))
(declare-fun r!7292 () Regex!16601)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2196 (Regex!16601 Regex!16601 List!66102) Unit!159893)

(assert (=> b!6777698 (= lt!2444370 (lemmaExistCutMatchRandMatchRSpecEquivalent!2196 (reg!16930 r!7292) r!7292 s!2326))))

(assert (=> b!6777698 (= (Exists!3669 lambda!381386) (Exists!3669 lambda!381387))))

(declare-fun lt!2444377 () Unit!159893)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!760 (Regex!16601 List!66102) Unit!159893)

(assert (=> b!6777698 (= lt!2444377 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!760 (reg!16930 r!7292) s!2326))))

(declare-fun lt!2444366 () Bool)

(assert (=> b!6777698 (= lt!2444366 (Exists!3669 lambda!381386))))

(declare-datatypes ((tuple2!67152 0))(
  ( (tuple2!67153 (_1!36879 List!66102) (_2!36879 List!66102)) )
))
(declare-datatypes ((Option!16488 0))(
  ( (None!16487) (Some!16487 (v!52693 tuple2!67152)) )
))
(declare-fun lt!2444383 () Option!16488)

(declare-fun isDefined!13191 (Option!16488) Bool)

(assert (=> b!6777698 (= lt!2444366 (isDefined!13191 lt!2444383))))

(declare-fun findConcatSeparation!2902 (Regex!16601 Regex!16601 List!66102 List!66102 List!66102) Option!16488)

(assert (=> b!6777698 (= lt!2444383 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326))))

(declare-fun lt!2444392 () Unit!159893)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2666 (Regex!16601 Regex!16601 List!66102) Unit!159893)

(assert (=> b!6777698 (= lt!2444392 (lemmaFindConcatSeparationEquivalentToExists!2666 (reg!16930 r!7292) r!7292 s!2326))))

(declare-fun e!4091608 () Bool)

(declare-fun e!4091611 () Bool)

(assert (=> b!6777699 (= e!4091608 e!4091611)))

(declare-fun res!2770613 () Bool)

(assert (=> b!6777699 (=> res!2770613 e!4091611)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66103 0))(
  ( (Nil!65979) (Cons!65979 (h!72427 Regex!16601) (t!379816 List!66103)) )
))
(declare-datatypes ((Context!11970 0))(
  ( (Context!11971 (exprs!6485 List!66103)) )
))
(declare-fun lt!2444379 () (InoxSet Context!11970))

(declare-fun lt!2444372 () (InoxSet Context!11970))

(assert (=> b!6777699 (= res!2770613 (not (= lt!2444379 lt!2444372)))))

(declare-fun lambda!381389 () Int)

(declare-fun z!1189 () (InoxSet Context!11970))

(declare-datatypes ((List!66104 0))(
  ( (Nil!65980) (Cons!65980 (h!72428 Context!11970) (t!379817 List!66104)) )
))
(declare-fun zl!343 () List!66104)

(declare-fun flatMap!2082 ((InoxSet Context!11970) Int) (InoxSet Context!11970))

(declare-fun derivationStepZipperUp!1755 (Context!11970 C!33472) (InoxSet Context!11970))

(assert (=> b!6777699 (= (flatMap!2082 z!1189 lambda!381389) (derivationStepZipperUp!1755 (h!72428 zl!343) (h!72426 s!2326)))))

(declare-fun lt!2444387 () Unit!159893)

(declare-fun lemmaFlatMapOnSingletonSet!1608 ((InoxSet Context!11970) Context!11970 Int) Unit!159893)

(assert (=> b!6777699 (= lt!2444387 (lemmaFlatMapOnSingletonSet!1608 z!1189 (h!72428 zl!343) lambda!381389))))

(declare-fun b!6777700 () Bool)

(declare-fun e!4091605 () Bool)

(assert (=> b!6777700 (= e!4091611 e!4091605)))

(declare-fun res!2770614 () Bool)

(assert (=> b!6777700 (=> res!2770614 e!4091605)))

(declare-fun lt!2444384 () Context!11970)

(declare-fun derivationStepZipperDown!1829 (Regex!16601 Context!11970 C!33472) (InoxSet Context!11970))

(assert (=> b!6777700 (= res!2770614 (not (= lt!2444379 (derivationStepZipperDown!1829 (reg!16930 r!7292) lt!2444384 (h!72426 s!2326)))))))

(declare-fun lt!2444381 () List!66103)

(assert (=> b!6777700 (= lt!2444384 (Context!11971 lt!2444381))))

(declare-fun lt!2444380 () Context!11970)

(declare-fun lt!2444374 () (InoxSet Context!11970))

(assert (=> b!6777700 (= (flatMap!2082 lt!2444374 lambda!381389) (derivationStepZipperUp!1755 lt!2444380 (h!72426 s!2326)))))

(declare-fun lt!2444373 () Unit!159893)

(assert (=> b!6777700 (= lt!2444373 (lemmaFlatMapOnSingletonSet!1608 lt!2444374 lt!2444380 lambda!381389))))

(declare-fun lt!2444394 () (InoxSet Context!11970))

(assert (=> b!6777700 (= lt!2444394 (derivationStepZipperUp!1755 lt!2444380 (h!72426 s!2326)))))

(assert (=> b!6777700 (= lt!2444374 (store ((as const (Array Context!11970 Bool)) false) lt!2444380 true))))

(assert (=> b!6777700 (= lt!2444380 (Context!11971 (Cons!65979 (reg!16930 r!7292) lt!2444381)))))

(assert (=> b!6777700 (= lt!2444381 (Cons!65979 r!7292 Nil!65979))))

(declare-fun b!6777701 () Bool)

(declare-fun res!2770604 () Bool)

(assert (=> b!6777701 (=> res!2770604 e!4091605)))

(declare-fun lt!2444398 () Regex!16601)

(assert (=> b!6777701 (= res!2770604 (or (not (= lt!2444398 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6777702 () Bool)

(declare-fun e!4091624 () Bool)

(declare-fun e!4091612 () Bool)

(assert (=> b!6777702 (= e!4091624 e!4091612)))

(declare-fun res!2770608 () Bool)

(assert (=> b!6777702 (=> res!2770608 e!4091612)))

(declare-fun lt!2444396 () Bool)

(assert (=> b!6777702 (= res!2770608 (not lt!2444396))))

(declare-fun b!6777703 () Bool)

(assert (=> b!6777703 (= e!4091619 e!4091608)))

(declare-fun res!2770627 () Bool)

(assert (=> b!6777703 (=> res!2770627 e!4091608)))

(declare-fun lt!2444391 () (InoxSet Context!11970))

(assert (=> b!6777703 (= res!2770627 (not (= lt!2444391 lt!2444372)))))

(assert (=> b!6777703 (= lt!2444372 (derivationStepZipperDown!1829 r!7292 (Context!11971 Nil!65979) (h!72426 s!2326)))))

(assert (=> b!6777703 (= lt!2444391 (derivationStepZipperUp!1755 (Context!11971 (Cons!65979 r!7292 Nil!65979)) (h!72426 s!2326)))))

(declare-fun derivationStepZipper!2545 ((InoxSet Context!11970) C!33472) (InoxSet Context!11970))

(assert (=> b!6777703 (= lt!2444379 (derivationStepZipper!2545 z!1189 (h!72426 s!2326)))))

(declare-fun b!6777704 () Bool)

(declare-fun res!2770618 () Bool)

(assert (=> b!6777704 (=> res!2770618 e!4091613)))

(get-info :version)

(assert (=> b!6777704 (= res!2770618 (not ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6777705 () Bool)

(declare-fun e!4091614 () Bool)

(declare-fun lt!2444367 () Context!11970)

(declare-fun inv!84749 (Context!11970) Bool)

(assert (=> b!6777705 (= e!4091614 (inv!84749 lt!2444367))))

(declare-fun lt!2444376 () (InoxSet Context!11970))

(declare-fun lt!2444385 () tuple2!67152)

(declare-fun matchZipper!2587 ((InoxSet Context!11970) List!66102) Bool)

(assert (=> b!6777705 (matchZipper!2587 lt!2444376 (_2!36879 lt!2444385))))

(declare-fun lt!2444393 () Unit!159893)

(declare-fun lt!2444395 () List!66104)

(declare-fun theoremZipperRegexEquiv!931 ((InoxSet Context!11970) List!66104 Regex!16601 List!66102) Unit!159893)

(assert (=> b!6777705 (= lt!2444393 (theoremZipperRegexEquiv!931 lt!2444376 lt!2444395 r!7292 (_2!36879 lt!2444385)))))

(declare-fun lt!2444388 () (InoxSet Context!11970))

(assert (=> b!6777705 (matchZipper!2587 lt!2444388 (_1!36879 lt!2444385))))

(declare-fun lt!2444368 () Unit!159893)

(declare-fun lt!2444375 () List!66104)

(assert (=> b!6777705 (= lt!2444368 (theoremZipperRegexEquiv!931 lt!2444388 lt!2444375 (reg!16930 r!7292) (_1!36879 lt!2444385)))))

(declare-fun b!6777706 () Bool)

(declare-fun e!4091625 () Bool)

(declare-fun e!4091616 () Bool)

(assert (=> b!6777706 (= e!4091625 e!4091616)))

(declare-fun res!2770605 () Bool)

(assert (=> b!6777706 (=> res!2770605 e!4091616)))

(assert (=> b!6777706 (= res!2770605 (not lt!2444396))))

(assert (=> b!6777706 e!4091624))

(declare-fun res!2770615 () Bool)

(assert (=> b!6777706 (=> (not res!2770615) (not e!4091624))))

(declare-fun lt!2444369 () Regex!16601)

(declare-fun matchRSpec!3702 (Regex!16601 List!66102) Bool)

(assert (=> b!6777706 (= res!2770615 (= lt!2444396 (matchRSpec!3702 lt!2444369 s!2326)))))

(declare-fun matchR!8784 (Regex!16601 List!66102) Bool)

(assert (=> b!6777706 (= lt!2444396 (matchR!8784 lt!2444369 s!2326))))

(declare-fun lt!2444389 () Unit!159893)

(declare-fun mainMatchTheorem!3702 (Regex!16601 List!66102) Unit!159893)

(assert (=> b!6777706 (= lt!2444389 (mainMatchTheorem!3702 lt!2444369 s!2326))))

(declare-fun b!6777707 () Bool)

(declare-fun res!2770628 () Bool)

(assert (=> b!6777707 (=> res!2770628 e!4091613)))

(declare-fun generalisedUnion!2445 (List!66103) Regex!16601)

(declare-fun unfocusZipperList!2022 (List!66104) List!66103)

(assert (=> b!6777707 (= res!2770628 (not (= r!7292 (generalisedUnion!2445 (unfocusZipperList!2022 zl!343)))))))

(declare-fun b!6777708 () Bool)

(declare-fun e!4091607 () Bool)

(declare-fun e!4091606 () Bool)

(assert (=> b!6777708 (= e!4091607 e!4091606)))

(declare-fun res!2770616 () Bool)

(assert (=> b!6777708 (=> res!2770616 e!4091606)))

(assert (=> b!6777708 (= res!2770616 (not (= lt!2444379 (derivationStepZipper!2545 lt!2444376 (h!72426 s!2326)))))))

(assert (=> b!6777708 (= (flatMap!2082 lt!2444376 lambda!381389) (derivationStepZipperUp!1755 lt!2444384 (h!72426 s!2326)))))

(declare-fun lt!2444371 () Unit!159893)

(assert (=> b!6777708 (= lt!2444371 (lemmaFlatMapOnSingletonSet!1608 lt!2444376 lt!2444384 lambda!381389))))

(assert (=> b!6777708 (= (flatMap!2082 lt!2444388 lambda!381389) (derivationStepZipperUp!1755 lt!2444367 (h!72426 s!2326)))))

(declare-fun lt!2444386 () Unit!159893)

(assert (=> b!6777708 (= lt!2444386 (lemmaFlatMapOnSingletonSet!1608 lt!2444388 lt!2444367 lambda!381389))))

(declare-fun lt!2444382 () (InoxSet Context!11970))

(assert (=> b!6777708 (= lt!2444382 (derivationStepZipperUp!1755 lt!2444384 (h!72426 s!2326)))))

(declare-fun lt!2444390 () (InoxSet Context!11970))

(assert (=> b!6777708 (= lt!2444390 (derivationStepZipperUp!1755 lt!2444367 (h!72426 s!2326)))))

(assert (=> b!6777708 (= lt!2444376 (store ((as const (Array Context!11970 Bool)) false) lt!2444384 true))))

(assert (=> b!6777708 (= lt!2444388 (store ((as const (Array Context!11970 Bool)) false) lt!2444367 true))))

(assert (=> b!6777708 (= lt!2444367 (Context!11971 (Cons!65979 (reg!16930 r!7292) Nil!65979)))))

(declare-fun b!6777709 () Bool)

(declare-fun e!4091615 () Bool)

(declare-fun tp!1857303 () Bool)

(assert (=> b!6777709 (= e!4091615 tp!1857303)))

(declare-fun b!6777710 () Bool)

(declare-fun res!2770625 () Bool)

(assert (=> b!6777710 (=> res!2770625 e!4091613)))

(declare-fun isEmpty!38338 (List!66104) Bool)

(assert (=> b!6777710 (= res!2770625 (not (isEmpty!38338 (t!379817 zl!343))))))

(declare-fun b!6777711 () Bool)

(declare-fun e!4091609 () Bool)

(assert (=> b!6777711 (= e!4091609 e!4091625)))

(declare-fun res!2770620 () Bool)

(assert (=> b!6777711 (=> res!2770620 e!4091625)))

(declare-fun unfocusZipper!2343 (List!66104) Regex!16601)

(assert (=> b!6777711 (= res!2770620 (not (= (unfocusZipper!2343 lt!2444395) r!7292)))))

(assert (=> b!6777711 (= lt!2444395 (Cons!65980 lt!2444384 Nil!65980))))

(declare-fun b!6777712 () Bool)

(declare-fun e!4091621 () Bool)

(declare-fun tp_is_empty!42455 () Bool)

(declare-fun tp!1857304 () Bool)

(assert (=> b!6777712 (= e!4091621 (and tp_is_empty!42455 tp!1857304))))

(declare-fun b!6777713 () Bool)

(declare-fun e!4091618 () Bool)

(assert (=> b!6777713 (= e!4091618 (not e!4091613))))

(declare-fun res!2770603 () Bool)

(assert (=> b!6777713 (=> res!2770603 e!4091613)))

(assert (=> b!6777713 (= res!2770603 (not ((_ is Cons!65980) zl!343)))))

(assert (=> b!6777713 (= lt!2444378 (matchRSpec!3702 r!7292 s!2326))))

(assert (=> b!6777713 (= lt!2444378 (matchR!8784 r!7292 s!2326))))

(declare-fun lt!2444397 () Unit!159893)

(assert (=> b!6777713 (= lt!2444397 (mainMatchTheorem!3702 r!7292 s!2326))))

(declare-fun setIsEmpty!46351 () Bool)

(declare-fun setRes!46351 () Bool)

(assert (=> setIsEmpty!46351 setRes!46351))

(declare-fun b!6777714 () Bool)

(declare-fun e!4091617 () Bool)

(declare-fun tp!1857301 () Bool)

(assert (=> b!6777714 (= e!4091617 tp!1857301)))

(declare-fun b!6777715 () Bool)

(assert (=> b!6777715 (= e!4091606 e!4091609)))

(declare-fun res!2770612 () Bool)

(assert (=> b!6777715 (=> res!2770612 e!4091609)))

(assert (=> b!6777715 (= res!2770612 (not (= (unfocusZipper!2343 lt!2444375) (reg!16930 r!7292))))))

(assert (=> b!6777715 (= lt!2444375 (Cons!65980 lt!2444367 Nil!65980))))

(declare-fun b!6777716 () Bool)

(declare-fun e!4091623 () Bool)

(declare-fun tp!1857302 () Bool)

(assert (=> b!6777716 (= e!4091623 tp!1857302)))

(declare-fun b!6777717 () Bool)

(declare-fun res!2770622 () Bool)

(declare-fun e!4091626 () Bool)

(assert (=> b!6777717 (=> (not res!2770622) (not e!4091626))))

(declare-fun toList!10385 ((InoxSet Context!11970)) List!66104)

(assert (=> b!6777717 (= res!2770622 (= (toList!10385 z!1189) zl!343))))

(declare-fun b!6777718 () Bool)

(assert (=> b!6777718 (= e!4091616 e!4091614)))

(declare-fun res!2770602 () Bool)

(assert (=> b!6777718 (=> res!2770602 e!4091614)))

(declare-fun ++!14755 (List!66102 List!66102) List!66102)

(assert (=> b!6777718 (= res!2770602 (not (= s!2326 (++!14755 (_1!36879 lt!2444385) (_2!36879 lt!2444385)))))))

(declare-fun get!22971 (Option!16488) tuple2!67152)

(assert (=> b!6777718 (= lt!2444385 (get!22971 lt!2444383))))

(declare-fun b!6777719 () Bool)

(assert (=> b!6777719 (= e!4091605 e!4091607)))

(declare-fun res!2770621 () Bool)

(assert (=> b!6777719 (=> res!2770621 e!4091607)))

(assert (=> b!6777719 (= res!2770621 (not (= (unfocusZipper!2343 (Cons!65980 lt!2444380 Nil!65980)) lt!2444369)))))

(assert (=> b!6777719 (= lt!2444369 (Concat!25446 (reg!16930 r!7292) r!7292))))

(declare-fun setElem!46351 () Context!11970)

(declare-fun tp!1857308 () Bool)

(declare-fun setNonEmpty!46351 () Bool)

(assert (=> setNonEmpty!46351 (= setRes!46351 (and tp!1857308 (inv!84749 setElem!46351) e!4091617))))

(declare-fun setRest!46351 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46351 (= z!1189 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46351 true) setRest!46351))))

(declare-fun e!4091610 () Bool)

(declare-fun tp!1857307 () Bool)

(declare-fun b!6777720 () Bool)

(assert (=> b!6777720 (= e!4091610 (and (inv!84749 (h!72428 zl!343)) e!4091623 tp!1857307))))

(declare-fun b!6777721 () Bool)

(declare-fun res!2770607 () Bool)

(assert (=> b!6777721 (=> res!2770607 e!4091614)))

(assert (=> b!6777721 (= res!2770607 (not (matchR!8784 (reg!16930 r!7292) (_1!36879 lt!2444385))))))

(declare-fun res!2770617 () Bool)

(assert (=> start!656036 (=> (not res!2770617) (not e!4091626))))

(declare-fun validRegex!8337 (Regex!16601) Bool)

(assert (=> start!656036 (= res!2770617 (validRegex!8337 r!7292))))

(assert (=> start!656036 e!4091626))

(assert (=> start!656036 e!4091615))

(declare-fun condSetEmpty!46351 () Bool)

(assert (=> start!656036 (= condSetEmpty!46351 (= z!1189 ((as const (Array Context!11970 Bool)) false)))))

(assert (=> start!656036 setRes!46351))

(assert (=> start!656036 e!4091610))

(assert (=> start!656036 e!4091621))

(declare-fun b!6777722 () Bool)

(declare-fun tp!1857300 () Bool)

(declare-fun tp!1857306 () Bool)

(assert (=> b!6777722 (= e!4091615 (and tp!1857300 tp!1857306))))

(declare-fun b!6777723 () Bool)

(assert (=> b!6777723 (= e!4091620 lt!2444366)))

(declare-fun b!6777724 () Bool)

(declare-fun tp!1857305 () Bool)

(declare-fun tp!1857309 () Bool)

(assert (=> b!6777724 (= e!4091615 (and tp!1857305 tp!1857309))))

(declare-fun b!6777725 () Bool)

(declare-fun e!4091622 () Bool)

(assert (=> b!6777725 (= e!4091612 e!4091622)))

(declare-fun res!2770606 () Bool)

(assert (=> b!6777725 (=> (not res!2770606) (not e!4091622))))

(assert (=> b!6777725 (= res!2770606 (= (Exists!3669 lambda!381386) (Exists!3669 lambda!381387)))))

(declare-fun b!6777726 () Bool)

(assert (=> b!6777726 (= e!4091622 (= lt!2444366 (Exists!3669 lambda!381386)))))

(declare-fun b!6777727 () Bool)

(declare-fun res!2770619 () Bool)

(assert (=> b!6777727 (=> res!2770619 e!4091613)))

(assert (=> b!6777727 (= res!2770619 (or ((_ is EmptyExpr!16601) r!7292) ((_ is EmptyLang!16601) r!7292) ((_ is ElementMatch!16601) r!7292) ((_ is Union!16601) r!7292) ((_ is Concat!25446) r!7292)))))

(declare-fun b!6777728 () Bool)

(declare-fun res!2770610 () Bool)

(assert (=> b!6777728 (=> res!2770610 e!4091614)))

(assert (=> b!6777728 (= res!2770610 (not (matchR!8784 r!7292 (_2!36879 lt!2444385))))))

(declare-fun b!6777729 () Bool)

(assert (=> b!6777729 (= e!4091615 tp_is_empty!42455)))

(declare-fun b!6777730 () Bool)

(assert (=> b!6777730 (= e!4091626 e!4091618)))

(declare-fun res!2770601 () Bool)

(assert (=> b!6777730 (=> (not res!2770601) (not e!4091618))))

(assert (=> b!6777730 (= res!2770601 (= r!7292 lt!2444398))))

(assert (=> b!6777730 (= lt!2444398 (unfocusZipper!2343 zl!343))))

(declare-fun b!6777731 () Bool)

(declare-fun res!2770611 () Bool)

(assert (=> b!6777731 (=> res!2770611 e!4091619)))

(assert (=> b!6777731 (= res!2770611 ((_ is Nil!65978) s!2326))))

(declare-fun b!6777732 () Bool)

(declare-fun res!2770626 () Bool)

(assert (=> b!6777732 (=> res!2770626 e!4091613)))

(declare-fun generalisedConcat!2198 (List!66103) Regex!16601)

(assert (=> b!6777732 (= res!2770626 (not (= r!7292 (generalisedConcat!2198 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun b!6777733 () Bool)

(declare-fun res!2770624 () Bool)

(assert (=> b!6777733 (=> res!2770624 e!4091605)))

(assert (=> b!6777733 (= res!2770624 (not (= (matchZipper!2587 lt!2444374 s!2326) (matchZipper!2587 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (t!379815 s!2326)))))))

(assert (= (and start!656036 res!2770617) b!6777717))

(assert (= (and b!6777717 res!2770622) b!6777730))

(assert (= (and b!6777730 res!2770601) b!6777713))

(assert (= (and b!6777713 (not res!2770603)) b!6777710))

(assert (= (and b!6777710 (not res!2770625)) b!6777732))

(assert (= (and b!6777732 (not res!2770626)) b!6777704))

(assert (= (and b!6777704 (not res!2770618)) b!6777707))

(assert (= (and b!6777707 (not res!2770628)) b!6777727))

(assert (= (and b!6777727 (not res!2770619)) b!6777698))

(assert (= (and b!6777698 (not res!2770623)) b!6777723))

(assert (= (and b!6777698 (not res!2770609)) b!6777731))

(assert (= (and b!6777731 (not res!2770611)) b!6777703))

(assert (= (and b!6777703 (not res!2770627)) b!6777699))

(assert (= (and b!6777699 (not res!2770613)) b!6777700))

(assert (= (and b!6777700 (not res!2770614)) b!6777733))

(assert (= (and b!6777733 (not res!2770624)) b!6777701))

(assert (= (and b!6777701 (not res!2770604)) b!6777719))

(assert (= (and b!6777719 (not res!2770621)) b!6777708))

(assert (= (and b!6777708 (not res!2770616)) b!6777715))

(assert (= (and b!6777715 (not res!2770612)) b!6777711))

(assert (= (and b!6777711 (not res!2770620)) b!6777706))

(assert (= (and b!6777706 res!2770615) b!6777702))

(assert (= (and b!6777702 (not res!2770608)) b!6777725))

(assert (= (and b!6777725 res!2770606) b!6777726))

(assert (= (and b!6777706 (not res!2770605)) b!6777718))

(assert (= (and b!6777718 (not res!2770602)) b!6777721))

(assert (= (and b!6777721 (not res!2770607)) b!6777728))

(assert (= (and b!6777728 (not res!2770610)) b!6777705))

(assert (= (and start!656036 ((_ is ElementMatch!16601) r!7292)) b!6777729))

(assert (= (and start!656036 ((_ is Concat!25446) r!7292)) b!6777722))

(assert (= (and start!656036 ((_ is Star!16601) r!7292)) b!6777709))

(assert (= (and start!656036 ((_ is Union!16601) r!7292)) b!6777724))

(assert (= (and start!656036 condSetEmpty!46351) setIsEmpty!46351))

(assert (= (and start!656036 (not condSetEmpty!46351)) setNonEmpty!46351))

(assert (= setNonEmpty!46351 b!6777714))

(assert (= b!6777720 b!6777716))

(assert (= (and start!656036 ((_ is Cons!65980) zl!343)) b!6777720))

(assert (= (and start!656036 ((_ is Cons!65978) s!2326)) b!6777712))

(declare-fun m!7526782 () Bool)

(assert (=> b!6777733 m!7526782))

(declare-fun m!7526784 () Bool)

(assert (=> b!6777733 m!7526784))

(assert (=> b!6777733 m!7526784))

(declare-fun m!7526786 () Bool)

(assert (=> b!6777733 m!7526786))

(declare-fun m!7526788 () Bool)

(assert (=> setNonEmpty!46351 m!7526788))

(declare-fun m!7526790 () Bool)

(assert (=> b!6777719 m!7526790))

(declare-fun m!7526792 () Bool)

(assert (=> b!6777708 m!7526792))

(declare-fun m!7526794 () Bool)

(assert (=> b!6777708 m!7526794))

(declare-fun m!7526796 () Bool)

(assert (=> b!6777708 m!7526796))

(declare-fun m!7526798 () Bool)

(assert (=> b!6777708 m!7526798))

(declare-fun m!7526800 () Bool)

(assert (=> b!6777708 m!7526800))

(declare-fun m!7526802 () Bool)

(assert (=> b!6777708 m!7526802))

(declare-fun m!7526804 () Bool)

(assert (=> b!6777708 m!7526804))

(declare-fun m!7526806 () Bool)

(assert (=> b!6777708 m!7526806))

(declare-fun m!7526808 () Bool)

(assert (=> b!6777708 m!7526808))

(declare-fun m!7526810 () Bool)

(assert (=> b!6777717 m!7526810))

(declare-fun m!7526812 () Bool)

(assert (=> start!656036 m!7526812))

(declare-fun m!7526814 () Bool)

(assert (=> b!6777720 m!7526814))

(declare-fun m!7526816 () Bool)

(assert (=> b!6777705 m!7526816))

(declare-fun m!7526818 () Bool)

(assert (=> b!6777705 m!7526818))

(declare-fun m!7526820 () Bool)

(assert (=> b!6777705 m!7526820))

(declare-fun m!7526822 () Bool)

(assert (=> b!6777705 m!7526822))

(declare-fun m!7526824 () Bool)

(assert (=> b!6777705 m!7526824))

(declare-fun m!7526826 () Bool)

(assert (=> b!6777711 m!7526826))

(declare-fun m!7526828 () Bool)

(assert (=> b!6777703 m!7526828))

(declare-fun m!7526830 () Bool)

(assert (=> b!6777703 m!7526830))

(declare-fun m!7526832 () Bool)

(assert (=> b!6777703 m!7526832))

(declare-fun m!7526834 () Bool)

(assert (=> b!6777721 m!7526834))

(declare-fun m!7526836 () Bool)

(assert (=> b!6777726 m!7526836))

(declare-fun m!7526838 () Bool)

(assert (=> b!6777718 m!7526838))

(declare-fun m!7526840 () Bool)

(assert (=> b!6777718 m!7526840))

(declare-fun m!7526842 () Bool)

(assert (=> b!6777706 m!7526842))

(declare-fun m!7526844 () Bool)

(assert (=> b!6777706 m!7526844))

(declare-fun m!7526846 () Bool)

(assert (=> b!6777706 m!7526846))

(declare-fun m!7526848 () Bool)

(assert (=> b!6777710 m!7526848))

(declare-fun m!7526850 () Bool)

(assert (=> b!6777707 m!7526850))

(assert (=> b!6777707 m!7526850))

(declare-fun m!7526852 () Bool)

(assert (=> b!6777707 m!7526852))

(declare-fun m!7526854 () Bool)

(assert (=> b!6777730 m!7526854))

(declare-fun m!7526856 () Bool)

(assert (=> b!6777732 m!7526856))

(declare-fun m!7526858 () Bool)

(assert (=> b!6777713 m!7526858))

(declare-fun m!7526860 () Bool)

(assert (=> b!6777713 m!7526860))

(declare-fun m!7526862 () Bool)

(assert (=> b!6777713 m!7526862))

(declare-fun m!7526864 () Bool)

(assert (=> b!6777715 m!7526864))

(declare-fun m!7526866 () Bool)

(assert (=> b!6777728 m!7526866))

(declare-fun m!7526868 () Bool)

(assert (=> b!6777699 m!7526868))

(declare-fun m!7526870 () Bool)

(assert (=> b!6777699 m!7526870))

(declare-fun m!7526872 () Bool)

(assert (=> b!6777699 m!7526872))

(assert (=> b!6777698 m!7526836))

(declare-fun m!7526874 () Bool)

(assert (=> b!6777698 m!7526874))

(declare-fun m!7526876 () Bool)

(assert (=> b!6777698 m!7526876))

(declare-fun m!7526878 () Bool)

(assert (=> b!6777698 m!7526878))

(declare-fun m!7526880 () Bool)

(assert (=> b!6777698 m!7526880))

(declare-fun m!7526882 () Bool)

(assert (=> b!6777698 m!7526882))

(declare-fun m!7526884 () Bool)

(assert (=> b!6777698 m!7526884))

(declare-fun m!7526886 () Bool)

(assert (=> b!6777698 m!7526886))

(assert (=> b!6777698 m!7526836))

(assert (=> b!6777698 m!7526836))

(declare-fun m!7526888 () Bool)

(assert (=> b!6777698 m!7526888))

(declare-fun m!7526890 () Bool)

(assert (=> b!6777700 m!7526890))

(declare-fun m!7526892 () Bool)

(assert (=> b!6777700 m!7526892))

(declare-fun m!7526894 () Bool)

(assert (=> b!6777700 m!7526894))

(declare-fun m!7526896 () Bool)

(assert (=> b!6777700 m!7526896))

(declare-fun m!7526898 () Bool)

(assert (=> b!6777700 m!7526898))

(assert (=> b!6777725 m!7526836))

(assert (=> b!6777725 m!7526876))

(check-sat (not b!6777719) (not b!6777700) (not b!6777718) (not setNonEmpty!46351) (not b!6777706) (not b!6777711) (not b!6777728) (not b!6777716) (not b!6777710) (not b!6777714) (not b!6777726) (not b!6777724) (not b!6777717) (not b!6777721) tp_is_empty!42455 (not b!6777713) (not b!6777705) (not start!656036) (not b!6777699) (not b!6777733) (not b!6777712) (not b!6777732) (not b!6777698) (not b!6777720) (not b!6777708) (not b!6777709) (not b!6777722) (not b!6777707) (not b!6777715) (not b!6777730) (not b!6777725) (not b!6777703))
(check-sat)
(get-model)

(declare-fun b!6777868 () Bool)

(declare-fun e!4091698 () Bool)

(declare-fun lt!2444416 () Regex!16601)

(declare-fun head!13613 (List!66103) Regex!16601)

(assert (=> b!6777868 (= e!4091698 (= lt!2444416 (head!13613 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6777869 () Bool)

(declare-fun e!4091700 () Regex!16601)

(declare-fun e!4091699 () Regex!16601)

(assert (=> b!6777869 (= e!4091700 e!4091699)))

(declare-fun c!1258919 () Bool)

(assert (=> b!6777869 (= c!1258919 ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343))))))

(declare-fun b!6777870 () Bool)

(assert (=> b!6777870 (= e!4091699 (Concat!25446 (h!72427 (exprs!6485 (h!72428 zl!343))) (generalisedConcat!2198 (t!379816 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun b!6777871 () Bool)

(declare-fun e!4091697 () Bool)

(declare-fun e!4091701 () Bool)

(assert (=> b!6777871 (= e!4091697 e!4091701)))

(declare-fun c!1258917 () Bool)

(declare-fun isEmpty!38340 (List!66103) Bool)

(assert (=> b!6777871 (= c!1258917 (isEmpty!38340 (exprs!6485 (h!72428 zl!343))))))

(declare-fun d!2129282 () Bool)

(assert (=> d!2129282 e!4091697))

(declare-fun res!2770668 () Bool)

(assert (=> d!2129282 (=> (not res!2770668) (not e!4091697))))

(assert (=> d!2129282 (= res!2770668 (validRegex!8337 lt!2444416))))

(assert (=> d!2129282 (= lt!2444416 e!4091700)))

(declare-fun c!1258918 () Bool)

(declare-fun e!4091702 () Bool)

(assert (=> d!2129282 (= c!1258918 e!4091702)))

(declare-fun res!2770667 () Bool)

(assert (=> d!2129282 (=> (not res!2770667) (not e!4091702))))

(assert (=> d!2129282 (= res!2770667 ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343))))))

(declare-fun lambda!381401 () Int)

(declare-fun forall!15793 (List!66103 Int) Bool)

(assert (=> d!2129282 (forall!15793 (exprs!6485 (h!72428 zl!343)) lambda!381401)))

(assert (=> d!2129282 (= (generalisedConcat!2198 (exprs!6485 (h!72428 zl!343))) lt!2444416)))

(declare-fun b!6777872 () Bool)

(declare-fun isEmptyExpr!1958 (Regex!16601) Bool)

(assert (=> b!6777872 (= e!4091701 (isEmptyExpr!1958 lt!2444416))))

(declare-fun b!6777873 () Bool)

(assert (=> b!6777873 (= e!4091701 e!4091698)))

(declare-fun c!1258916 () Bool)

(declare-fun tail!12698 (List!66103) List!66103)

(assert (=> b!6777873 (= c!1258916 (isEmpty!38340 (tail!12698 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6777874 () Bool)

(declare-fun isConcat!1481 (Regex!16601) Bool)

(assert (=> b!6777874 (= e!4091698 (isConcat!1481 lt!2444416))))

(declare-fun b!6777875 () Bool)

(assert (=> b!6777875 (= e!4091700 (h!72427 (exprs!6485 (h!72428 zl!343))))))

(declare-fun b!6777876 () Bool)

(assert (=> b!6777876 (= e!4091702 (isEmpty!38340 (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6777877 () Bool)

(assert (=> b!6777877 (= e!4091699 EmptyExpr!16601)))

(assert (= (and d!2129282 res!2770667) b!6777876))

(assert (= (and d!2129282 c!1258918) b!6777875))

(assert (= (and d!2129282 (not c!1258918)) b!6777869))

(assert (= (and b!6777869 c!1258919) b!6777870))

(assert (= (and b!6777869 (not c!1258919)) b!6777877))

(assert (= (and d!2129282 res!2770668) b!6777871))

(assert (= (and b!6777871 c!1258917) b!6777872))

(assert (= (and b!6777871 (not c!1258917)) b!6777873))

(assert (= (and b!6777873 c!1258916) b!6777868))

(assert (= (and b!6777873 (not c!1258916)) b!6777874))

(declare-fun m!7527010 () Bool)

(assert (=> b!6777873 m!7527010))

(assert (=> b!6777873 m!7527010))

(declare-fun m!7527012 () Bool)

(assert (=> b!6777873 m!7527012))

(declare-fun m!7527016 () Bool)

(assert (=> b!6777872 m!7527016))

(declare-fun m!7527018 () Bool)

(assert (=> b!6777870 m!7527018))

(declare-fun m!7527020 () Bool)

(assert (=> b!6777876 m!7527020))

(declare-fun m!7527022 () Bool)

(assert (=> b!6777868 m!7527022))

(declare-fun m!7527024 () Bool)

(assert (=> b!6777871 m!7527024))

(declare-fun m!7527026 () Bool)

(assert (=> b!6777874 m!7527026))

(declare-fun m!7527028 () Bool)

(assert (=> d!2129282 m!7527028))

(declare-fun m!7527030 () Bool)

(assert (=> d!2129282 m!7527030))

(assert (=> b!6777732 d!2129282))

(declare-fun bs!1804944 () Bool)

(declare-fun b!6777981 () Bool)

(assert (= bs!1804944 (and b!6777981 b!6777698)))

(declare-fun lambda!381416 () Int)

(assert (=> bs!1804944 (not (= lambda!381416 lambda!381386))))

(assert (=> bs!1804944 (= lambda!381416 lambda!381387)))

(assert (=> bs!1804944 (not (= lambda!381416 lambda!381388))))

(assert (=> b!6777981 true))

(assert (=> b!6777981 true))

(declare-fun bs!1804945 () Bool)

(declare-fun b!6777987 () Bool)

(assert (= bs!1804945 (and b!6777987 b!6777698)))

(declare-fun lambda!381419 () Int)

(assert (=> bs!1804945 (not (= lambda!381419 lambda!381386))))

(assert (=> bs!1804945 (not (= lambda!381419 lambda!381387))))

(assert (=> bs!1804945 (= (and (= (regOne!33714 r!7292) (reg!16930 r!7292)) (= (regTwo!33714 r!7292) r!7292)) (= lambda!381419 lambda!381388))))

(declare-fun bs!1804947 () Bool)

(assert (= bs!1804947 (and b!6777987 b!6777981)))

(assert (=> bs!1804947 (not (= lambda!381419 lambda!381416))))

(assert (=> b!6777987 true))

(assert (=> b!6777987 true))

(declare-fun b!6777977 () Bool)

(declare-fun e!4091760 () Bool)

(declare-fun call!614776 () Bool)

(assert (=> b!6777977 (= e!4091760 call!614776)))

(declare-fun b!6777978 () Bool)

(declare-fun e!4091762 () Bool)

(declare-fun e!4091761 () Bool)

(assert (=> b!6777978 (= e!4091762 e!4091761)))

(declare-fun c!1258954 () Bool)

(assert (=> b!6777978 (= c!1258954 ((_ is Star!16601) r!7292))))

(declare-fun b!6777979 () Bool)

(declare-fun e!4091758 () Bool)

(assert (=> b!6777979 (= e!4091760 e!4091758)))

(declare-fun res!2770700 () Bool)

(assert (=> b!6777979 (= res!2770700 (not ((_ is EmptyLang!16601) r!7292)))))

(assert (=> b!6777979 (=> (not res!2770700) (not e!4091758))))

(declare-fun b!6777980 () Bool)

(declare-fun c!1258955 () Bool)

(assert (=> b!6777980 (= c!1258955 ((_ is Union!16601) r!7292))))

(declare-fun e!4091764 () Bool)

(assert (=> b!6777980 (= e!4091764 e!4091762)))

(declare-fun d!2129308 () Bool)

(declare-fun c!1258956 () Bool)

(assert (=> d!2129308 (= c!1258956 ((_ is EmptyExpr!16601) r!7292))))

(assert (=> d!2129308 (= (matchRSpec!3702 r!7292 s!2326) e!4091760)))

(declare-fun e!4091763 () Bool)

(declare-fun call!614777 () Bool)

(assert (=> b!6777981 (= e!4091763 call!614777)))

(declare-fun b!6777982 () Bool)

(declare-fun res!2770701 () Bool)

(assert (=> b!6777982 (=> res!2770701 e!4091763)))

(assert (=> b!6777982 (= res!2770701 call!614776)))

(assert (=> b!6777982 (= e!4091761 e!4091763)))

(declare-fun b!6777983 () Bool)

(declare-fun e!4091759 () Bool)

(assert (=> b!6777983 (= e!4091762 e!4091759)))

(declare-fun res!2770702 () Bool)

(assert (=> b!6777983 (= res!2770702 (matchRSpec!3702 (regOne!33715 r!7292) s!2326))))

(assert (=> b!6777983 (=> res!2770702 e!4091759)))

(declare-fun bm!614771 () Bool)

(assert (=> bm!614771 (= call!614777 (Exists!3669 (ite c!1258954 lambda!381416 lambda!381419)))))

(declare-fun b!6777984 () Bool)

(assert (=> b!6777984 (= e!4091759 (matchRSpec!3702 (regTwo!33715 r!7292) s!2326))))

(declare-fun bm!614772 () Bool)

(assert (=> bm!614772 (= call!614776 (isEmpty!38337 s!2326))))

(declare-fun b!6777985 () Bool)

(assert (=> b!6777985 (= e!4091764 (= s!2326 (Cons!65978 (c!1258869 r!7292) Nil!65978)))))

(declare-fun b!6777986 () Bool)

(declare-fun c!1258957 () Bool)

(assert (=> b!6777986 (= c!1258957 ((_ is ElementMatch!16601) r!7292))))

(assert (=> b!6777986 (= e!4091758 e!4091764)))

(assert (=> b!6777987 (= e!4091761 call!614777)))

(assert (= (and d!2129308 c!1258956) b!6777977))

(assert (= (and d!2129308 (not c!1258956)) b!6777979))

(assert (= (and b!6777979 res!2770700) b!6777986))

(assert (= (and b!6777986 c!1258957) b!6777985))

(assert (= (and b!6777986 (not c!1258957)) b!6777980))

(assert (= (and b!6777980 c!1258955) b!6777983))

(assert (= (and b!6777980 (not c!1258955)) b!6777978))

(assert (= (and b!6777983 (not res!2770702)) b!6777984))

(assert (= (and b!6777978 c!1258954) b!6777982))

(assert (= (and b!6777978 (not c!1258954)) b!6777987))

(assert (= (and b!6777982 (not res!2770701)) b!6777981))

(assert (= (or b!6777981 b!6777987) bm!614771))

(assert (= (or b!6777977 b!6777982) bm!614772))

(declare-fun m!7527084 () Bool)

(assert (=> b!6777983 m!7527084))

(declare-fun m!7527086 () Bool)

(assert (=> bm!614771 m!7527086))

(declare-fun m!7527088 () Bool)

(assert (=> b!6777984 m!7527088))

(assert (=> bm!614772 m!7526878))

(assert (=> b!6777713 d!2129308))

(declare-fun b!6778057 () Bool)

(declare-fun e!4091800 () Bool)

(declare-fun e!4091803 () Bool)

(assert (=> b!6778057 (= e!4091800 e!4091803)))

(declare-fun c!1258972 () Bool)

(assert (=> b!6778057 (= c!1258972 ((_ is EmptyLang!16601) r!7292))))

(declare-fun b!6778058 () Bool)

(declare-fun res!2770748 () Bool)

(declare-fun e!4091801 () Bool)

(assert (=> b!6778058 (=> res!2770748 e!4091801)))

(declare-fun e!4091804 () Bool)

(assert (=> b!6778058 (= res!2770748 e!4091804)))

(declare-fun res!2770754 () Bool)

(assert (=> b!6778058 (=> (not res!2770754) (not e!4091804))))

(declare-fun lt!2444441 () Bool)

(assert (=> b!6778058 (= res!2770754 lt!2444441)))

(declare-fun b!6778059 () Bool)

(declare-fun e!4091806 () Bool)

(assert (=> b!6778059 (= e!4091801 e!4091806)))

(declare-fun res!2770750 () Bool)

(assert (=> b!6778059 (=> (not res!2770750) (not e!4091806))))

(assert (=> b!6778059 (= res!2770750 (not lt!2444441))))

(declare-fun b!6778060 () Bool)

(declare-fun res!2770751 () Bool)

(assert (=> b!6778060 (=> (not res!2770751) (not e!4091804))))

(declare-fun call!614780 () Bool)

(assert (=> b!6778060 (= res!2770751 (not call!614780))))

(declare-fun b!6778061 () Bool)

(assert (=> b!6778061 (= e!4091803 (not lt!2444441))))

(declare-fun b!6778062 () Bool)

(assert (=> b!6778062 (= e!4091800 (= lt!2444441 call!614780))))

(declare-fun b!6778063 () Bool)

(declare-fun res!2770752 () Bool)

(assert (=> b!6778063 (=> res!2770752 e!4091801)))

(assert (=> b!6778063 (= res!2770752 (not ((_ is ElementMatch!16601) r!7292)))))

(assert (=> b!6778063 (= e!4091803 e!4091801)))

(declare-fun b!6778064 () Bool)

(declare-fun e!4091802 () Bool)

(declare-fun head!13614 (List!66102) C!33472)

(assert (=> b!6778064 (= e!4091802 (not (= (head!13614 s!2326) (c!1258869 r!7292))))))

(declare-fun b!6778065 () Bool)

(declare-fun res!2770749 () Bool)

(assert (=> b!6778065 (=> res!2770749 e!4091802)))

(declare-fun tail!12699 (List!66102) List!66102)

(assert (=> b!6778065 (= res!2770749 (not (isEmpty!38337 (tail!12699 s!2326))))))

(declare-fun b!6778066 () Bool)

(assert (=> b!6778066 (= e!4091806 e!4091802)))

(declare-fun res!2770755 () Bool)

(assert (=> b!6778066 (=> res!2770755 e!4091802)))

(assert (=> b!6778066 (= res!2770755 call!614780)))

(declare-fun b!6778067 () Bool)

(declare-fun e!4091805 () Bool)

(declare-fun derivativeStep!5265 (Regex!16601 C!33472) Regex!16601)

(assert (=> b!6778067 (= e!4091805 (matchR!8784 (derivativeStep!5265 r!7292 (head!13614 s!2326)) (tail!12699 s!2326)))))

(declare-fun b!6778068 () Bool)

(declare-fun nullable!6580 (Regex!16601) Bool)

(assert (=> b!6778068 (= e!4091805 (nullable!6580 r!7292))))

(declare-fun bm!614775 () Bool)

(assert (=> bm!614775 (= call!614780 (isEmpty!38337 s!2326))))

(declare-fun d!2129330 () Bool)

(assert (=> d!2129330 e!4091800))

(declare-fun c!1258970 () Bool)

(assert (=> d!2129330 (= c!1258970 ((_ is EmptyExpr!16601) r!7292))))

(assert (=> d!2129330 (= lt!2444441 e!4091805)))

(declare-fun c!1258971 () Bool)

(assert (=> d!2129330 (= c!1258971 (isEmpty!38337 s!2326))))

(assert (=> d!2129330 (validRegex!8337 r!7292)))

(assert (=> d!2129330 (= (matchR!8784 r!7292 s!2326) lt!2444441)))

(declare-fun b!6778069 () Bool)

(assert (=> b!6778069 (= e!4091804 (= (head!13614 s!2326) (c!1258869 r!7292)))))

(declare-fun b!6778070 () Bool)

(declare-fun res!2770753 () Bool)

(assert (=> b!6778070 (=> (not res!2770753) (not e!4091804))))

(assert (=> b!6778070 (= res!2770753 (isEmpty!38337 (tail!12699 s!2326)))))

(assert (= (and d!2129330 c!1258971) b!6778068))

(assert (= (and d!2129330 (not c!1258971)) b!6778067))

(assert (= (and d!2129330 c!1258970) b!6778062))

(assert (= (and d!2129330 (not c!1258970)) b!6778057))

(assert (= (and b!6778057 c!1258972) b!6778061))

(assert (= (and b!6778057 (not c!1258972)) b!6778063))

(assert (= (and b!6778063 (not res!2770752)) b!6778058))

(assert (= (and b!6778058 res!2770754) b!6778060))

(assert (= (and b!6778060 res!2770751) b!6778070))

(assert (= (and b!6778070 res!2770753) b!6778069))

(assert (= (and b!6778058 (not res!2770748)) b!6778059))

(assert (= (and b!6778059 res!2770750) b!6778066))

(assert (= (and b!6778066 (not res!2770755)) b!6778065))

(assert (= (and b!6778065 (not res!2770749)) b!6778064))

(assert (= (or b!6778062 b!6778066 b!6778060) bm!614775))

(declare-fun m!7527126 () Bool)

(assert (=> b!6778065 m!7527126))

(assert (=> b!6778065 m!7527126))

(declare-fun m!7527128 () Bool)

(assert (=> b!6778065 m!7527128))

(declare-fun m!7527130 () Bool)

(assert (=> b!6778064 m!7527130))

(declare-fun m!7527132 () Bool)

(assert (=> b!6778068 m!7527132))

(assert (=> b!6778069 m!7527130))

(assert (=> b!6778067 m!7527130))

(assert (=> b!6778067 m!7527130))

(declare-fun m!7527134 () Bool)

(assert (=> b!6778067 m!7527134))

(assert (=> b!6778067 m!7527126))

(assert (=> b!6778067 m!7527134))

(assert (=> b!6778067 m!7527126))

(declare-fun m!7527136 () Bool)

(assert (=> b!6778067 m!7527136))

(assert (=> d!2129330 m!7526878))

(assert (=> d!2129330 m!7526812))

(assert (=> bm!614775 m!7526878))

(assert (=> b!6778070 m!7527126))

(assert (=> b!6778070 m!7527126))

(assert (=> b!6778070 m!7527128))

(assert (=> b!6777713 d!2129330))

(declare-fun d!2129344 () Bool)

(assert (=> d!2129344 (= (matchR!8784 r!7292 s!2326) (matchRSpec!3702 r!7292 s!2326))))

(declare-fun lt!2444445 () Unit!159893)

(declare-fun choose!50476 (Regex!16601 List!66102) Unit!159893)

(assert (=> d!2129344 (= lt!2444445 (choose!50476 r!7292 s!2326))))

(assert (=> d!2129344 (validRegex!8337 r!7292)))

(assert (=> d!2129344 (= (mainMatchTheorem!3702 r!7292 s!2326) lt!2444445)))

(declare-fun bs!1804957 () Bool)

(assert (= bs!1804957 d!2129344))

(assert (=> bs!1804957 m!7526860))

(assert (=> bs!1804957 m!7526858))

(declare-fun m!7527150 () Bool)

(assert (=> bs!1804957 m!7527150))

(assert (=> bs!1804957 m!7526812))

(assert (=> b!6777713 d!2129344))

(declare-fun d!2129350 () Bool)

(declare-fun c!1258989 () Bool)

(assert (=> d!2129350 (= c!1258989 (isEmpty!38337 s!2326))))

(declare-fun e!4091848 () Bool)

(assert (=> d!2129350 (= (matchZipper!2587 lt!2444374 s!2326) e!4091848)))

(declare-fun b!6778134 () Bool)

(declare-fun nullableZipper!2308 ((InoxSet Context!11970)) Bool)

(assert (=> b!6778134 (= e!4091848 (nullableZipper!2308 lt!2444374))))

(declare-fun b!6778135 () Bool)

(assert (=> b!6778135 (= e!4091848 (matchZipper!2587 (derivationStepZipper!2545 lt!2444374 (head!13614 s!2326)) (tail!12699 s!2326)))))

(assert (= (and d!2129350 c!1258989) b!6778134))

(assert (= (and d!2129350 (not c!1258989)) b!6778135))

(assert (=> d!2129350 m!7526878))

(declare-fun m!7527152 () Bool)

(assert (=> b!6778134 m!7527152))

(assert (=> b!6778135 m!7527130))

(assert (=> b!6778135 m!7527130))

(declare-fun m!7527154 () Bool)

(assert (=> b!6778135 m!7527154))

(assert (=> b!6778135 m!7527126))

(assert (=> b!6778135 m!7527154))

(assert (=> b!6778135 m!7527126))

(declare-fun m!7527156 () Bool)

(assert (=> b!6778135 m!7527156))

(assert (=> b!6777733 d!2129350))

(declare-fun d!2129352 () Bool)

(declare-fun c!1258990 () Bool)

(assert (=> d!2129352 (= c!1258990 (isEmpty!38337 (t!379815 s!2326)))))

(declare-fun e!4091849 () Bool)

(assert (=> d!2129352 (= (matchZipper!2587 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (t!379815 s!2326)) e!4091849)))

(declare-fun b!6778136 () Bool)

(assert (=> b!6778136 (= e!4091849 (nullableZipper!2308 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326))))))

(declare-fun b!6778137 () Bool)

(assert (=> b!6778137 (= e!4091849 (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (head!13614 (t!379815 s!2326))) (tail!12699 (t!379815 s!2326))))))

(assert (= (and d!2129352 c!1258990) b!6778136))

(assert (= (and d!2129352 (not c!1258990)) b!6778137))

(declare-fun m!7527158 () Bool)

(assert (=> d!2129352 m!7527158))

(assert (=> b!6778136 m!7526784))

(declare-fun m!7527160 () Bool)

(assert (=> b!6778136 m!7527160))

(declare-fun m!7527162 () Bool)

(assert (=> b!6778137 m!7527162))

(assert (=> b!6778137 m!7526784))

(assert (=> b!6778137 m!7527162))

(declare-fun m!7527164 () Bool)

(assert (=> b!6778137 m!7527164))

(declare-fun m!7527166 () Bool)

(assert (=> b!6778137 m!7527166))

(assert (=> b!6778137 m!7527164))

(assert (=> b!6778137 m!7527166))

(declare-fun m!7527168 () Bool)

(assert (=> b!6778137 m!7527168))

(assert (=> b!6777733 d!2129352))

(declare-fun bs!1804967 () Bool)

(declare-fun d!2129354 () Bool)

(assert (= bs!1804967 (and d!2129354 b!6777699)))

(declare-fun lambda!381433 () Int)

(assert (=> bs!1804967 (= lambda!381433 lambda!381389)))

(assert (=> d!2129354 true))

(assert (=> d!2129354 (= (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (flatMap!2082 lt!2444374 lambda!381433))))

(declare-fun bs!1804968 () Bool)

(assert (= bs!1804968 d!2129354))

(declare-fun m!7527170 () Bool)

(assert (=> bs!1804968 m!7527170))

(assert (=> b!6777733 d!2129354))

(declare-fun d!2129356 () Bool)

(assert (=> d!2129356 (= (isEmpty!38338 (t!379817 zl!343)) ((_ is Nil!65980) (t!379817 zl!343)))))

(assert (=> b!6777710 d!2129356))

(declare-fun d!2129360 () Bool)

(declare-fun lt!2444452 () Regex!16601)

(assert (=> d!2129360 (validRegex!8337 lt!2444452)))

(assert (=> d!2129360 (= lt!2444452 (generalisedUnion!2445 (unfocusZipperList!2022 zl!343)))))

(assert (=> d!2129360 (= (unfocusZipper!2343 zl!343) lt!2444452)))

(declare-fun bs!1804970 () Bool)

(assert (= bs!1804970 d!2129360))

(declare-fun m!7527186 () Bool)

(assert (=> bs!1804970 m!7527186))

(assert (=> bs!1804970 m!7526850))

(assert (=> bs!1804970 m!7526850))

(assert (=> bs!1804970 m!7526852))

(assert (=> b!6777730 d!2129360))

(declare-fun d!2129366 () Bool)

(declare-fun lt!2444453 () Regex!16601)

(assert (=> d!2129366 (validRegex!8337 lt!2444453)))

(assert (=> d!2129366 (= lt!2444453 (generalisedUnion!2445 (unfocusZipperList!2022 lt!2444395)))))

(assert (=> d!2129366 (= (unfocusZipper!2343 lt!2444395) lt!2444453)))

(declare-fun bs!1804971 () Bool)

(assert (= bs!1804971 d!2129366))

(declare-fun m!7527188 () Bool)

(assert (=> bs!1804971 m!7527188))

(declare-fun m!7527190 () Bool)

(assert (=> bs!1804971 m!7527190))

(assert (=> bs!1804971 m!7527190))

(declare-fun m!7527192 () Bool)

(assert (=> bs!1804971 m!7527192))

(assert (=> b!6777711 d!2129366))

(declare-fun d!2129368 () Bool)

(declare-fun e!4091869 () Bool)

(assert (=> d!2129368 e!4091869))

(declare-fun res!2770803 () Bool)

(assert (=> d!2129368 (=> (not res!2770803) (not e!4091869))))

(declare-fun lt!2444459 () List!66104)

(declare-fun noDuplicate!2385 (List!66104) Bool)

(assert (=> d!2129368 (= res!2770803 (noDuplicate!2385 lt!2444459))))

(declare-fun choose!50477 ((InoxSet Context!11970)) List!66104)

(assert (=> d!2129368 (= lt!2444459 (choose!50477 z!1189))))

(assert (=> d!2129368 (= (toList!10385 z!1189) lt!2444459)))

(declare-fun b!6778170 () Bool)

(declare-fun content!12846 (List!66104) (InoxSet Context!11970))

(assert (=> b!6778170 (= e!4091869 (= (content!12846 lt!2444459) z!1189))))

(assert (= (and d!2129368 res!2770803) b!6778170))

(declare-fun m!7527200 () Bool)

(assert (=> d!2129368 m!7527200))

(declare-fun m!7527202 () Bool)

(assert (=> d!2129368 m!7527202))

(declare-fun m!7527204 () Bool)

(assert (=> b!6778170 m!7527204))

(assert (=> b!6777717 d!2129368))

(declare-fun d!2129372 () Bool)

(declare-fun choose!50478 (Int) Bool)

(assert (=> d!2129372 (= (Exists!3669 lambda!381387) (choose!50478 lambda!381387))))

(declare-fun bs!1804972 () Bool)

(assert (= bs!1804972 d!2129372))

(declare-fun m!7527206 () Bool)

(assert (=> bs!1804972 m!7527206))

(assert (=> b!6777698 d!2129372))

(declare-fun bs!1804998 () Bool)

(declare-fun d!2129374 () Bool)

(assert (= bs!1804998 (and d!2129374 b!6777698)))

(declare-fun lambda!381447 () Int)

(assert (=> bs!1804998 (not (= lambda!381447 lambda!381388))))

(declare-fun bs!1804999 () Bool)

(assert (= bs!1804999 (and d!2129374 b!6777987)))

(assert (=> bs!1804999 (not (= lambda!381447 lambda!381419))))

(assert (=> bs!1804998 (= lambda!381447 lambda!381386)))

(assert (=> bs!1804998 (not (= lambda!381447 lambda!381387))))

(declare-fun bs!1805000 () Bool)

(assert (= bs!1805000 (and d!2129374 b!6777981)))

(assert (=> bs!1805000 (not (= lambda!381447 lambda!381416))))

(assert (=> d!2129374 true))

(assert (=> d!2129374 true))

(assert (=> d!2129374 true))

(declare-fun bs!1805002 () Bool)

(assert (= bs!1805002 d!2129374))

(declare-fun lambda!381448 () Int)

(assert (=> bs!1805002 (not (= lambda!381448 lambda!381447))))

(assert (=> bs!1804998 (= lambda!381448 lambda!381388)))

(assert (=> bs!1804999 (= (and (= (reg!16930 r!7292) (regOne!33714 r!7292)) (= r!7292 (regTwo!33714 r!7292))) (= lambda!381448 lambda!381419))))

(assert (=> bs!1804998 (not (= lambda!381448 lambda!381386))))

(assert (=> bs!1804998 (not (= lambda!381448 lambda!381387))))

(assert (=> bs!1805000 (not (= lambda!381448 lambda!381416))))

(assert (=> d!2129374 true))

(assert (=> d!2129374 true))

(assert (=> d!2129374 true))

(assert (=> d!2129374 (= (Exists!3669 lambda!381447) (Exists!3669 lambda!381448))))

(declare-fun lt!2444470 () Unit!159893)

(declare-fun choose!50479 (Regex!16601 Regex!16601 List!66102) Unit!159893)

(assert (=> d!2129374 (= lt!2444470 (choose!50479 (reg!16930 r!7292) r!7292 s!2326))))

(assert (=> d!2129374 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129374 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2196 (reg!16930 r!7292) r!7292 s!2326) lt!2444470)))

(declare-fun m!7527276 () Bool)

(assert (=> bs!1805002 m!7527276))

(declare-fun m!7527278 () Bool)

(assert (=> bs!1805002 m!7527278))

(declare-fun m!7527280 () Bool)

(assert (=> bs!1805002 m!7527280))

(declare-fun m!7527282 () Bool)

(assert (=> bs!1805002 m!7527282))

(assert (=> b!6777698 d!2129374))

(declare-fun bs!1805015 () Bool)

(declare-fun d!2129396 () Bool)

(assert (= bs!1805015 (and d!2129396 d!2129374)))

(declare-fun lambda!381454 () Int)

(assert (=> bs!1805015 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381454 lambda!381447))))

(assert (=> bs!1805015 (not (= lambda!381454 lambda!381448))))

(declare-fun bs!1805016 () Bool)

(assert (= bs!1805016 (and d!2129396 b!6777698)))

(assert (=> bs!1805016 (not (= lambda!381454 lambda!381388))))

(declare-fun bs!1805017 () Bool)

(assert (= bs!1805017 (and d!2129396 b!6777987)))

(assert (=> bs!1805017 (not (= lambda!381454 lambda!381419))))

(assert (=> bs!1805016 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381454 lambda!381386))))

(assert (=> bs!1805016 (not (= lambda!381454 lambda!381387))))

(declare-fun bs!1805018 () Bool)

(assert (= bs!1805018 (and d!2129396 b!6777981)))

(assert (=> bs!1805018 (not (= lambda!381454 lambda!381416))))

(assert (=> d!2129396 true))

(assert (=> d!2129396 true))

(declare-fun lambda!381455 () Int)

(assert (=> bs!1805015 (not (= lambda!381455 lambda!381447))))

(assert (=> bs!1805015 (not (= lambda!381455 lambda!381448))))

(assert (=> bs!1805016 (not (= lambda!381455 lambda!381388))))

(declare-fun bs!1805019 () Bool)

(assert (= bs!1805019 d!2129396))

(assert (=> bs!1805019 (not (= lambda!381455 lambda!381454))))

(assert (=> bs!1805017 (not (= lambda!381455 lambda!381419))))

(assert (=> bs!1805016 (not (= lambda!381455 lambda!381386))))

(assert (=> bs!1805016 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381455 lambda!381387))))

(assert (=> bs!1805018 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381455 lambda!381416))))

(assert (=> d!2129396 true))

(assert (=> d!2129396 true))

(assert (=> d!2129396 (= (Exists!3669 lambda!381454) (Exists!3669 lambda!381455))))

(declare-fun lt!2444479 () Unit!159893)

(declare-fun choose!50480 (Regex!16601 List!66102) Unit!159893)

(assert (=> d!2129396 (= lt!2444479 (choose!50480 (reg!16930 r!7292) s!2326))))

(assert (=> d!2129396 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129396 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!760 (reg!16930 r!7292) s!2326) lt!2444479)))

(declare-fun m!7527306 () Bool)

(assert (=> bs!1805019 m!7527306))

(declare-fun m!7527308 () Bool)

(assert (=> bs!1805019 m!7527308))

(declare-fun m!7527310 () Bool)

(assert (=> bs!1805019 m!7527310))

(assert (=> bs!1805019 m!7527282))

(assert (=> b!6777698 d!2129396))

(declare-fun d!2129414 () Bool)

(declare-fun isEmpty!38342 (Option!16488) Bool)

(assert (=> d!2129414 (= (isDefined!13191 lt!2444383) (not (isEmpty!38342 lt!2444383)))))

(declare-fun bs!1805020 () Bool)

(assert (= bs!1805020 d!2129414))

(declare-fun m!7527312 () Bool)

(assert (=> bs!1805020 m!7527312))

(assert (=> b!6777698 d!2129414))

(declare-fun d!2129416 () Bool)

(assert (=> d!2129416 (= (isEmpty!38337 s!2326) ((_ is Nil!65978) s!2326))))

(assert (=> b!6777698 d!2129416))

(declare-fun b!6778346 () Bool)

(declare-fun res!2770867 () Bool)

(declare-fun e!4091959 () Bool)

(assert (=> b!6778346 (=> (not res!2770867) (not e!4091959))))

(declare-fun lt!2444488 () Option!16488)

(assert (=> b!6778346 (= res!2770867 (matchR!8784 r!7292 (_2!36879 (get!22971 lt!2444488))))))

(declare-fun b!6778347 () Bool)

(assert (=> b!6778347 (= e!4091959 (= (++!14755 (_1!36879 (get!22971 lt!2444488)) (_2!36879 (get!22971 lt!2444488))) s!2326))))

(declare-fun d!2129418 () Bool)

(declare-fun e!4091958 () Bool)

(assert (=> d!2129418 e!4091958))

(declare-fun res!2770864 () Bool)

(assert (=> d!2129418 (=> res!2770864 e!4091958)))

(assert (=> d!2129418 (= res!2770864 e!4091959)))

(declare-fun res!2770863 () Bool)

(assert (=> d!2129418 (=> (not res!2770863) (not e!4091959))))

(assert (=> d!2129418 (= res!2770863 (isDefined!13191 lt!2444488))))

(declare-fun e!4091960 () Option!16488)

(assert (=> d!2129418 (= lt!2444488 e!4091960)))

(declare-fun c!1259032 () Bool)

(declare-fun e!4091961 () Bool)

(assert (=> d!2129418 (= c!1259032 e!4091961)))

(declare-fun res!2770866 () Bool)

(assert (=> d!2129418 (=> (not res!2770866) (not e!4091961))))

(assert (=> d!2129418 (= res!2770866 (matchR!8784 (reg!16930 r!7292) Nil!65978))))

(assert (=> d!2129418 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129418 (= (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326) lt!2444488)))

(declare-fun b!6778348 () Bool)

(declare-fun e!4091962 () Option!16488)

(assert (=> b!6778348 (= e!4091960 e!4091962)))

(declare-fun c!1259031 () Bool)

(assert (=> b!6778348 (= c!1259031 ((_ is Nil!65978) s!2326))))

(declare-fun b!6778349 () Bool)

(declare-fun lt!2444487 () Unit!159893)

(declare-fun lt!2444486 () Unit!159893)

(assert (=> b!6778349 (= lt!2444487 lt!2444486)))

(assert (=> b!6778349 (= (++!14755 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2722 (List!66102 C!33472 List!66102 List!66102) Unit!159893)

(assert (=> b!6778349 (= lt!2444486 (lemmaMoveElementToOtherListKeepsConcatEq!2722 Nil!65978 (h!72426 s!2326) (t!379815 s!2326) s!2326))))

(assert (=> b!6778349 (= e!4091962 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326) s!2326))))

(declare-fun b!6778350 () Bool)

(assert (=> b!6778350 (= e!4091958 (not (isDefined!13191 lt!2444488)))))

(declare-fun b!6778351 () Bool)

(assert (=> b!6778351 (= e!4091962 None!16487)))

(declare-fun b!6778352 () Bool)

(assert (=> b!6778352 (= e!4091961 (matchR!8784 r!7292 s!2326))))

(declare-fun b!6778353 () Bool)

(assert (=> b!6778353 (= e!4091960 (Some!16487 (tuple2!67153 Nil!65978 s!2326)))))

(declare-fun b!6778354 () Bool)

(declare-fun res!2770865 () Bool)

(assert (=> b!6778354 (=> (not res!2770865) (not e!4091959))))

(assert (=> b!6778354 (= res!2770865 (matchR!8784 (reg!16930 r!7292) (_1!36879 (get!22971 lt!2444488))))))

(assert (= (and d!2129418 res!2770866) b!6778352))

(assert (= (and d!2129418 c!1259032) b!6778353))

(assert (= (and d!2129418 (not c!1259032)) b!6778348))

(assert (= (and b!6778348 c!1259031) b!6778351))

(assert (= (and b!6778348 (not c!1259031)) b!6778349))

(assert (= (and d!2129418 res!2770863) b!6778354))

(assert (= (and b!6778354 res!2770865) b!6778346))

(assert (= (and b!6778346 res!2770867) b!6778347))

(assert (= (and d!2129418 (not res!2770864)) b!6778350))

(declare-fun m!7527314 () Bool)

(assert (=> d!2129418 m!7527314))

(declare-fun m!7527316 () Bool)

(assert (=> d!2129418 m!7527316))

(assert (=> d!2129418 m!7527282))

(declare-fun m!7527318 () Bool)

(assert (=> b!6778346 m!7527318))

(declare-fun m!7527320 () Bool)

(assert (=> b!6778346 m!7527320))

(declare-fun m!7527322 () Bool)

(assert (=> b!6778349 m!7527322))

(assert (=> b!6778349 m!7527322))

(declare-fun m!7527324 () Bool)

(assert (=> b!6778349 m!7527324))

(declare-fun m!7527326 () Bool)

(assert (=> b!6778349 m!7527326))

(assert (=> b!6778349 m!7527322))

(declare-fun m!7527328 () Bool)

(assert (=> b!6778349 m!7527328))

(assert (=> b!6778352 m!7526860))

(assert (=> b!6778354 m!7527318))

(declare-fun m!7527330 () Bool)

(assert (=> b!6778354 m!7527330))

(assert (=> b!6778350 m!7527314))

(assert (=> b!6778347 m!7527318))

(declare-fun m!7527332 () Bool)

(assert (=> b!6778347 m!7527332))

(assert (=> b!6777698 d!2129418))

(declare-fun bs!1805021 () Bool)

(declare-fun d!2129420 () Bool)

(assert (= bs!1805021 (and d!2129420 d!2129374)))

(declare-fun lambda!381458 () Int)

(assert (=> bs!1805021 (= lambda!381458 lambda!381447)))

(assert (=> bs!1805021 (not (= lambda!381458 lambda!381448))))

(declare-fun bs!1805022 () Bool)

(assert (= bs!1805022 (and d!2129420 b!6777698)))

(assert (=> bs!1805022 (not (= lambda!381458 lambda!381388))))

(declare-fun bs!1805023 () Bool)

(assert (= bs!1805023 (and d!2129420 d!2129396)))

(assert (=> bs!1805023 (= (= r!7292 (Star!16601 (reg!16930 r!7292))) (= lambda!381458 lambda!381454))))

(declare-fun bs!1805024 () Bool)

(assert (= bs!1805024 (and d!2129420 b!6777987)))

(assert (=> bs!1805024 (not (= lambda!381458 lambda!381419))))

(assert (=> bs!1805023 (not (= lambda!381458 lambda!381455))))

(assert (=> bs!1805022 (= lambda!381458 lambda!381386)))

(assert (=> bs!1805022 (not (= lambda!381458 lambda!381387))))

(declare-fun bs!1805025 () Bool)

(assert (= bs!1805025 (and d!2129420 b!6777981)))

(assert (=> bs!1805025 (not (= lambda!381458 lambda!381416))))

(assert (=> d!2129420 true))

(assert (=> d!2129420 true))

(assert (=> d!2129420 true))

(assert (=> d!2129420 (= (isDefined!13191 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326)) (Exists!3669 lambda!381458))))

(declare-fun lt!2444491 () Unit!159893)

(declare-fun choose!50483 (Regex!16601 Regex!16601 List!66102) Unit!159893)

(assert (=> d!2129420 (= lt!2444491 (choose!50483 (reg!16930 r!7292) r!7292 s!2326))))

(assert (=> d!2129420 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129420 (= (lemmaFindConcatSeparationEquivalentToExists!2666 (reg!16930 r!7292) r!7292 s!2326) lt!2444491)))

(declare-fun bs!1805026 () Bool)

(assert (= bs!1805026 d!2129420))

(declare-fun m!7527334 () Bool)

(assert (=> bs!1805026 m!7527334))

(assert (=> bs!1805026 m!7527282))

(assert (=> bs!1805026 m!7526886))

(declare-fun m!7527336 () Bool)

(assert (=> bs!1805026 m!7527336))

(assert (=> bs!1805026 m!7526886))

(declare-fun m!7527338 () Bool)

(assert (=> bs!1805026 m!7527338))

(assert (=> b!6777698 d!2129420))

(declare-fun d!2129422 () Bool)

(assert (=> d!2129422 (= (Exists!3669 lambda!381386) (choose!50478 lambda!381386))))

(declare-fun bs!1805027 () Bool)

(assert (= bs!1805027 d!2129422))

(declare-fun m!7527340 () Bool)

(assert (=> bs!1805027 m!7527340))

(assert (=> b!6777698 d!2129422))

(declare-fun d!2129424 () Bool)

(assert (=> d!2129424 (= (Exists!3669 lambda!381388) (choose!50478 lambda!381388))))

(declare-fun bs!1805028 () Bool)

(assert (= bs!1805028 d!2129424))

(declare-fun m!7527342 () Bool)

(assert (=> bs!1805028 m!7527342))

(assert (=> b!6777698 d!2129424))

(declare-fun b!6778370 () Bool)

(declare-fun e!4091970 () Bool)

(declare-fun lt!2444494 () List!66102)

(assert (=> b!6778370 (= e!4091970 (or (not (= (_2!36879 lt!2444385) Nil!65978)) (= lt!2444494 (_1!36879 lt!2444385))))))

(declare-fun d!2129426 () Bool)

(assert (=> d!2129426 e!4091970))

(declare-fun res!2770877 () Bool)

(assert (=> d!2129426 (=> (not res!2770877) (not e!4091970))))

(declare-fun content!12848 (List!66102) (InoxSet C!33472))

(assert (=> d!2129426 (= res!2770877 (= (content!12848 lt!2444494) ((_ map or) (content!12848 (_1!36879 lt!2444385)) (content!12848 (_2!36879 lt!2444385)))))))

(declare-fun e!4091969 () List!66102)

(assert (=> d!2129426 (= lt!2444494 e!4091969)))

(declare-fun c!1259035 () Bool)

(assert (=> d!2129426 (= c!1259035 ((_ is Nil!65978) (_1!36879 lt!2444385)))))

(assert (=> d!2129426 (= (++!14755 (_1!36879 lt!2444385) (_2!36879 lt!2444385)) lt!2444494)))

(declare-fun b!6778367 () Bool)

(assert (=> b!6778367 (= e!4091969 (_2!36879 lt!2444385))))

(declare-fun b!6778369 () Bool)

(declare-fun res!2770876 () Bool)

(assert (=> b!6778369 (=> (not res!2770876) (not e!4091970))))

(declare-fun size!40634 (List!66102) Int)

(assert (=> b!6778369 (= res!2770876 (= (size!40634 lt!2444494) (+ (size!40634 (_1!36879 lt!2444385)) (size!40634 (_2!36879 lt!2444385)))))))

(declare-fun b!6778368 () Bool)

(assert (=> b!6778368 (= e!4091969 (Cons!65978 (h!72426 (_1!36879 lt!2444385)) (++!14755 (t!379815 (_1!36879 lt!2444385)) (_2!36879 lt!2444385))))))

(assert (= (and d!2129426 c!1259035) b!6778367))

(assert (= (and d!2129426 (not c!1259035)) b!6778368))

(assert (= (and d!2129426 res!2770877) b!6778369))

(assert (= (and b!6778369 res!2770876) b!6778370))

(declare-fun m!7527344 () Bool)

(assert (=> d!2129426 m!7527344))

(declare-fun m!7527346 () Bool)

(assert (=> d!2129426 m!7527346))

(declare-fun m!7527348 () Bool)

(assert (=> d!2129426 m!7527348))

(declare-fun m!7527350 () Bool)

(assert (=> b!6778369 m!7527350))

(declare-fun m!7527352 () Bool)

(assert (=> b!6778369 m!7527352))

(declare-fun m!7527354 () Bool)

(assert (=> b!6778369 m!7527354))

(declare-fun m!7527356 () Bool)

(assert (=> b!6778368 m!7527356))

(assert (=> b!6777718 d!2129426))

(declare-fun d!2129428 () Bool)

(assert (=> d!2129428 (= (get!22971 lt!2444383) (v!52693 lt!2444383))))

(assert (=> b!6777718 d!2129428))

(declare-fun d!2129430 () Bool)

(declare-fun lt!2444495 () Regex!16601)

(assert (=> d!2129430 (validRegex!8337 lt!2444495)))

(assert (=> d!2129430 (= lt!2444495 (generalisedUnion!2445 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))

(assert (=> d!2129430 (= (unfocusZipper!2343 (Cons!65980 lt!2444380 Nil!65980)) lt!2444495)))

(declare-fun bs!1805029 () Bool)

(assert (= bs!1805029 d!2129430))

(declare-fun m!7527358 () Bool)

(assert (=> bs!1805029 m!7527358))

(declare-fun m!7527360 () Bool)

(assert (=> bs!1805029 m!7527360))

(assert (=> bs!1805029 m!7527360))

(declare-fun m!7527362 () Bool)

(assert (=> bs!1805029 m!7527362))

(assert (=> b!6777719 d!2129430))

(declare-fun d!2129432 () Bool)

(declare-fun lt!2444496 () Regex!16601)

(assert (=> d!2129432 (validRegex!8337 lt!2444496)))

(assert (=> d!2129432 (= lt!2444496 (generalisedUnion!2445 (unfocusZipperList!2022 lt!2444375)))))

(assert (=> d!2129432 (= (unfocusZipper!2343 lt!2444375) lt!2444496)))

(declare-fun bs!1805030 () Bool)

(assert (= bs!1805030 d!2129432))

(declare-fun m!7527364 () Bool)

(assert (=> bs!1805030 m!7527364))

(declare-fun m!7527366 () Bool)

(assert (=> bs!1805030 m!7527366))

(assert (=> bs!1805030 m!7527366))

(declare-fun m!7527368 () Bool)

(assert (=> bs!1805030 m!7527368))

(assert (=> b!6777715 d!2129432))

(declare-fun b!6778371 () Bool)

(declare-fun e!4091971 () Bool)

(declare-fun e!4091974 () Bool)

(assert (=> b!6778371 (= e!4091971 e!4091974)))

(declare-fun c!1259038 () Bool)

(assert (=> b!6778371 (= c!1259038 ((_ is EmptyLang!16601) (reg!16930 r!7292)))))

(declare-fun b!6778372 () Bool)

(declare-fun res!2770878 () Bool)

(declare-fun e!4091972 () Bool)

(assert (=> b!6778372 (=> res!2770878 e!4091972)))

(declare-fun e!4091975 () Bool)

(assert (=> b!6778372 (= res!2770878 e!4091975)))

(declare-fun res!2770884 () Bool)

(assert (=> b!6778372 (=> (not res!2770884) (not e!4091975))))

(declare-fun lt!2444497 () Bool)

(assert (=> b!6778372 (= res!2770884 lt!2444497)))

(declare-fun b!6778373 () Bool)

(declare-fun e!4091977 () Bool)

(assert (=> b!6778373 (= e!4091972 e!4091977)))

(declare-fun res!2770880 () Bool)

(assert (=> b!6778373 (=> (not res!2770880) (not e!4091977))))

(assert (=> b!6778373 (= res!2770880 (not lt!2444497))))

(declare-fun b!6778374 () Bool)

(declare-fun res!2770881 () Bool)

(assert (=> b!6778374 (=> (not res!2770881) (not e!4091975))))

(declare-fun call!614801 () Bool)

(assert (=> b!6778374 (= res!2770881 (not call!614801))))

(declare-fun b!6778375 () Bool)

(assert (=> b!6778375 (= e!4091974 (not lt!2444497))))

(declare-fun b!6778376 () Bool)

(assert (=> b!6778376 (= e!4091971 (= lt!2444497 call!614801))))

(declare-fun b!6778377 () Bool)

(declare-fun res!2770882 () Bool)

(assert (=> b!6778377 (=> res!2770882 e!4091972)))

(assert (=> b!6778377 (= res!2770882 (not ((_ is ElementMatch!16601) (reg!16930 r!7292))))))

(assert (=> b!6778377 (= e!4091974 e!4091972)))

(declare-fun b!6778378 () Bool)

(declare-fun e!4091973 () Bool)

(assert (=> b!6778378 (= e!4091973 (not (= (head!13614 (_1!36879 lt!2444385)) (c!1258869 (reg!16930 r!7292)))))))

(declare-fun b!6778379 () Bool)

(declare-fun res!2770879 () Bool)

(assert (=> b!6778379 (=> res!2770879 e!4091973)))

(assert (=> b!6778379 (= res!2770879 (not (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385)))))))

(declare-fun b!6778380 () Bool)

(assert (=> b!6778380 (= e!4091977 e!4091973)))

(declare-fun res!2770885 () Bool)

(assert (=> b!6778380 (=> res!2770885 e!4091973)))

(assert (=> b!6778380 (= res!2770885 call!614801)))

(declare-fun b!6778381 () Bool)

(declare-fun e!4091976 () Bool)

(assert (=> b!6778381 (= e!4091976 (matchR!8784 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))) (tail!12699 (_1!36879 lt!2444385))))))

(declare-fun b!6778382 () Bool)

(assert (=> b!6778382 (= e!4091976 (nullable!6580 (reg!16930 r!7292)))))

(declare-fun bm!614796 () Bool)

(assert (=> bm!614796 (= call!614801 (isEmpty!38337 (_1!36879 lt!2444385)))))

(declare-fun d!2129434 () Bool)

(assert (=> d!2129434 e!4091971))

(declare-fun c!1259036 () Bool)

(assert (=> d!2129434 (= c!1259036 ((_ is EmptyExpr!16601) (reg!16930 r!7292)))))

(assert (=> d!2129434 (= lt!2444497 e!4091976)))

(declare-fun c!1259037 () Bool)

(assert (=> d!2129434 (= c!1259037 (isEmpty!38337 (_1!36879 lt!2444385)))))

(assert (=> d!2129434 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129434 (= (matchR!8784 (reg!16930 r!7292) (_1!36879 lt!2444385)) lt!2444497)))

(declare-fun b!6778383 () Bool)

(assert (=> b!6778383 (= e!4091975 (= (head!13614 (_1!36879 lt!2444385)) (c!1258869 (reg!16930 r!7292))))))

(declare-fun b!6778384 () Bool)

(declare-fun res!2770883 () Bool)

(assert (=> b!6778384 (=> (not res!2770883) (not e!4091975))))

(assert (=> b!6778384 (= res!2770883 (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385))))))

(assert (= (and d!2129434 c!1259037) b!6778382))

(assert (= (and d!2129434 (not c!1259037)) b!6778381))

(assert (= (and d!2129434 c!1259036) b!6778376))

(assert (= (and d!2129434 (not c!1259036)) b!6778371))

(assert (= (and b!6778371 c!1259038) b!6778375))

(assert (= (and b!6778371 (not c!1259038)) b!6778377))

(assert (= (and b!6778377 (not res!2770882)) b!6778372))

(assert (= (and b!6778372 res!2770884) b!6778374))

(assert (= (and b!6778374 res!2770881) b!6778384))

(assert (= (and b!6778384 res!2770883) b!6778383))

(assert (= (and b!6778372 (not res!2770878)) b!6778373))

(assert (= (and b!6778373 res!2770880) b!6778380))

(assert (= (and b!6778380 (not res!2770885)) b!6778379))

(assert (= (and b!6778379 (not res!2770879)) b!6778378))

(assert (= (or b!6778376 b!6778380 b!6778374) bm!614796))

(declare-fun m!7527370 () Bool)

(assert (=> b!6778379 m!7527370))

(assert (=> b!6778379 m!7527370))

(declare-fun m!7527372 () Bool)

(assert (=> b!6778379 m!7527372))

(declare-fun m!7527374 () Bool)

(assert (=> b!6778378 m!7527374))

(declare-fun m!7527376 () Bool)

(assert (=> b!6778382 m!7527376))

(assert (=> b!6778383 m!7527374))

(assert (=> b!6778381 m!7527374))

(assert (=> b!6778381 m!7527374))

(declare-fun m!7527378 () Bool)

(assert (=> b!6778381 m!7527378))

(assert (=> b!6778381 m!7527370))

(assert (=> b!6778381 m!7527378))

(assert (=> b!6778381 m!7527370))

(declare-fun m!7527380 () Bool)

(assert (=> b!6778381 m!7527380))

(declare-fun m!7527382 () Bool)

(assert (=> d!2129434 m!7527382))

(assert (=> d!2129434 m!7527282))

(assert (=> bm!614796 m!7527382))

(assert (=> b!6778384 m!7527370))

(assert (=> b!6778384 m!7527370))

(assert (=> b!6778384 m!7527372))

(assert (=> b!6777721 d!2129434))

(declare-fun bm!614809 () Bool)

(declare-fun call!614815 () List!66103)

(declare-fun call!614818 () List!66103)

(assert (=> bm!614809 (= call!614815 call!614818)))

(declare-fun bm!614810 () Bool)

(declare-fun call!614816 () (InoxSet Context!11970))

(declare-fun call!614819 () (InoxSet Context!11970))

(assert (=> bm!614810 (= call!614816 call!614819)))

(declare-fun b!6778407 () Bool)

(declare-fun e!4091992 () (InoxSet Context!11970))

(declare-fun e!4091990 () (InoxSet Context!11970))

(assert (=> b!6778407 (= e!4091992 e!4091990)))

(declare-fun c!1259053 () Bool)

(assert (=> b!6778407 (= c!1259053 ((_ is Concat!25446) r!7292))))

(declare-fun bm!614811 () Bool)

(declare-fun call!614814 () (InoxSet Context!11970))

(assert (=> bm!614811 (= call!614814 call!614816)))

(declare-fun b!6778408 () Bool)

(assert (=> b!6778408 (= e!4091990 call!614814)))

(declare-fun c!1259050 () Bool)

(declare-fun bm!614812 () Bool)

(declare-fun $colon$colon!2410 (List!66103 Regex!16601) List!66103)

(assert (=> bm!614812 (= call!614818 ($colon$colon!2410 (exprs!6485 (Context!11971 Nil!65979)) (ite (or c!1259050 c!1259053) (regTwo!33714 r!7292) r!7292)))))

(declare-fun d!2129436 () Bool)

(declare-fun c!1259051 () Bool)

(assert (=> d!2129436 (= c!1259051 (and ((_ is ElementMatch!16601) r!7292) (= (c!1258869 r!7292) (h!72426 s!2326))))))

(declare-fun e!4091994 () (InoxSet Context!11970))

(assert (=> d!2129436 (= (derivationStepZipperDown!1829 r!7292 (Context!11971 Nil!65979) (h!72426 s!2326)) e!4091994)))

(declare-fun b!6778409 () Bool)

(declare-fun c!1259052 () Bool)

(assert (=> b!6778409 (= c!1259052 ((_ is Star!16601) r!7292))))

(declare-fun e!4091991 () (InoxSet Context!11970))

(assert (=> b!6778409 (= e!4091990 e!4091991)))

(declare-fun bm!614813 () Bool)

(declare-fun call!614817 () (InoxSet Context!11970))

(declare-fun c!1259049 () Bool)

(assert (=> bm!614813 (= call!614817 (derivationStepZipperDown!1829 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)) (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818)) (h!72426 s!2326)))))

(declare-fun b!6778410 () Bool)

(assert (=> b!6778410 (= e!4091994 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 Nil!65979) true))))

(declare-fun b!6778411 () Bool)

(declare-fun e!4091995 () (InoxSet Context!11970))

(assert (=> b!6778411 (= e!4091995 ((_ map or) call!614819 call!614817))))

(declare-fun b!6778412 () Bool)

(assert (=> b!6778412 (= e!4091991 call!614814)))

(declare-fun b!6778413 () Bool)

(assert (=> b!6778413 (= e!4091994 e!4091995)))

(assert (=> b!6778413 (= c!1259049 ((_ is Union!16601) r!7292))))

(declare-fun b!6778414 () Bool)

(assert (=> b!6778414 (= e!4091992 ((_ map or) call!614817 call!614816))))

(declare-fun b!6778415 () Bool)

(assert (=> b!6778415 (= e!4091991 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6778416 () Bool)

(declare-fun e!4091993 () Bool)

(assert (=> b!6778416 (= c!1259050 e!4091993)))

(declare-fun res!2770888 () Bool)

(assert (=> b!6778416 (=> (not res!2770888) (not e!4091993))))

(assert (=> b!6778416 (= res!2770888 ((_ is Concat!25446) r!7292))))

(assert (=> b!6778416 (= e!4091995 e!4091992)))

(declare-fun b!6778417 () Bool)

(assert (=> b!6778417 (= e!4091993 (nullable!6580 (regOne!33714 r!7292)))))

(declare-fun bm!614814 () Bool)

(assert (=> bm!614814 (= call!614819 (derivationStepZipperDown!1829 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))) (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815)) (h!72426 s!2326)))))

(assert (= (and d!2129436 c!1259051) b!6778410))

(assert (= (and d!2129436 (not c!1259051)) b!6778413))

(assert (= (and b!6778413 c!1259049) b!6778411))

(assert (= (and b!6778413 (not c!1259049)) b!6778416))

(assert (= (and b!6778416 res!2770888) b!6778417))

(assert (= (and b!6778416 c!1259050) b!6778414))

(assert (= (and b!6778416 (not c!1259050)) b!6778407))

(assert (= (and b!6778407 c!1259053) b!6778408))

(assert (= (and b!6778407 (not c!1259053)) b!6778409))

(assert (= (and b!6778409 c!1259052) b!6778412))

(assert (= (and b!6778409 (not c!1259052)) b!6778415))

(assert (= (or b!6778408 b!6778412) bm!614809))

(assert (= (or b!6778408 b!6778412) bm!614811))

(assert (= (or b!6778414 bm!614809) bm!614812))

(assert (= (or b!6778414 bm!614811) bm!614810))

(assert (= (or b!6778411 b!6778414) bm!614813))

(assert (= (or b!6778411 bm!614810) bm!614814))

(declare-fun m!7527384 () Bool)

(assert (=> bm!614814 m!7527384))

(declare-fun m!7527386 () Bool)

(assert (=> bm!614812 m!7527386))

(declare-fun m!7527388 () Bool)

(assert (=> bm!614813 m!7527388))

(declare-fun m!7527390 () Bool)

(assert (=> b!6778417 m!7527390))

(declare-fun m!7527392 () Bool)

(assert (=> b!6778410 m!7527392))

(assert (=> b!6777703 d!2129436))

(declare-fun b!6778428 () Bool)

(declare-fun e!4092003 () (InoxSet Context!11970))

(assert (=> b!6778428 (= e!4092003 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129438 () Bool)

(declare-fun c!1259058 () Bool)

(declare-fun e!4092002 () Bool)

(assert (=> d!2129438 (= c!1259058 e!4092002)))

(declare-fun res!2770891 () Bool)

(assert (=> d!2129438 (=> (not res!2770891) (not e!4092002))))

(assert (=> d!2129438 (= res!2770891 ((_ is Cons!65979) (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))

(declare-fun e!4092004 () (InoxSet Context!11970))

(assert (=> d!2129438 (= (derivationStepZipperUp!1755 (Context!11971 (Cons!65979 r!7292 Nil!65979)) (h!72426 s!2326)) e!4092004)))

(declare-fun b!6778429 () Bool)

(assert (=> b!6778429 (= e!4092004 e!4092003)))

(declare-fun c!1259059 () Bool)

(assert (=> b!6778429 (= c!1259059 ((_ is Cons!65979) (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))

(declare-fun b!6778430 () Bool)

(declare-fun call!614822 () (InoxSet Context!11970))

(assert (=> b!6778430 (= e!4092003 call!614822)))

(declare-fun b!6778431 () Bool)

(assert (=> b!6778431 (= e!4092002 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(declare-fun bm!614817 () Bool)

(assert (=> bm!614817 (= call!614822 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72426 s!2326)))))

(declare-fun b!6778432 () Bool)

(assert (=> b!6778432 (= e!4092004 ((_ map or) call!614822 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72426 s!2326))))))

(assert (= (and d!2129438 res!2770891) b!6778431))

(assert (= (and d!2129438 c!1259058) b!6778432))

(assert (= (and d!2129438 (not c!1259058)) b!6778429))

(assert (= (and b!6778429 c!1259059) b!6778430))

(assert (= (and b!6778429 (not c!1259059)) b!6778428))

(assert (= (or b!6778432 b!6778430) bm!614817))

(declare-fun m!7527394 () Bool)

(assert (=> b!6778431 m!7527394))

(declare-fun m!7527396 () Bool)

(assert (=> bm!614817 m!7527396))

(declare-fun m!7527398 () Bool)

(assert (=> b!6778432 m!7527398))

(assert (=> b!6777703 d!2129438))

(declare-fun bs!1805031 () Bool)

(declare-fun d!2129440 () Bool)

(assert (= bs!1805031 (and d!2129440 b!6777699)))

(declare-fun lambda!381459 () Int)

(assert (=> bs!1805031 (= lambda!381459 lambda!381389)))

(declare-fun bs!1805032 () Bool)

(assert (= bs!1805032 (and d!2129440 d!2129354)))

(assert (=> bs!1805032 (= lambda!381459 lambda!381433)))

(assert (=> d!2129440 true))

(assert (=> d!2129440 (= (derivationStepZipper!2545 z!1189 (h!72426 s!2326)) (flatMap!2082 z!1189 lambda!381459))))

(declare-fun bs!1805033 () Bool)

(assert (= bs!1805033 d!2129440))

(declare-fun m!7527400 () Bool)

(assert (=> bs!1805033 m!7527400))

(assert (=> b!6777703 d!2129440))

(declare-fun d!2129442 () Bool)

(declare-fun choose!50484 ((InoxSet Context!11970) Int) (InoxSet Context!11970))

(assert (=> d!2129442 (= (flatMap!2082 z!1189 lambda!381389) (choose!50484 z!1189 lambda!381389))))

(declare-fun bs!1805034 () Bool)

(assert (= bs!1805034 d!2129442))

(declare-fun m!7527402 () Bool)

(assert (=> bs!1805034 m!7527402))

(assert (=> b!6777699 d!2129442))

(declare-fun b!6778433 () Bool)

(declare-fun e!4092006 () (InoxSet Context!11970))

(assert (=> b!6778433 (= e!4092006 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129444 () Bool)

(declare-fun c!1259060 () Bool)

(declare-fun e!4092005 () Bool)

(assert (=> d!2129444 (= c!1259060 e!4092005)))

(declare-fun res!2770892 () Bool)

(assert (=> d!2129444 (=> (not res!2770892) (not e!4092005))))

(assert (=> d!2129444 (= res!2770892 ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343))))))

(declare-fun e!4092007 () (InoxSet Context!11970))

(assert (=> d!2129444 (= (derivationStepZipperUp!1755 (h!72428 zl!343) (h!72426 s!2326)) e!4092007)))

(declare-fun b!6778434 () Bool)

(assert (=> b!6778434 (= e!4092007 e!4092006)))

(declare-fun c!1259061 () Bool)

(assert (=> b!6778434 (= c!1259061 ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343))))))

(declare-fun b!6778435 () Bool)

(declare-fun call!614823 () (InoxSet Context!11970))

(assert (=> b!6778435 (= e!4092006 call!614823)))

(declare-fun b!6778436 () Bool)

(assert (=> b!6778436 (= e!4092005 (nullable!6580 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun bm!614818 () Bool)

(assert (=> bm!614818 (= call!614823 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (h!72428 zl!343))) (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (h!72426 s!2326)))))

(declare-fun b!6778437 () Bool)

(assert (=> b!6778437 (= e!4092007 ((_ map or) call!614823 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (h!72426 s!2326))))))

(assert (= (and d!2129444 res!2770892) b!6778436))

(assert (= (and d!2129444 c!1259060) b!6778437))

(assert (= (and d!2129444 (not c!1259060)) b!6778434))

(assert (= (and b!6778434 c!1259061) b!6778435))

(assert (= (and b!6778434 (not c!1259061)) b!6778433))

(assert (= (or b!6778437 b!6778435) bm!614818))

(declare-fun m!7527404 () Bool)

(assert (=> b!6778436 m!7527404))

(declare-fun m!7527406 () Bool)

(assert (=> bm!614818 m!7527406))

(declare-fun m!7527408 () Bool)

(assert (=> b!6778437 m!7527408))

(assert (=> b!6777699 d!2129444))

(declare-fun d!2129446 () Bool)

(declare-fun dynLambda!26326 (Int Context!11970) (InoxSet Context!11970))

(assert (=> d!2129446 (= (flatMap!2082 z!1189 lambda!381389) (dynLambda!26326 lambda!381389 (h!72428 zl!343)))))

(declare-fun lt!2444500 () Unit!159893)

(declare-fun choose!50485 ((InoxSet Context!11970) Context!11970 Int) Unit!159893)

(assert (=> d!2129446 (= lt!2444500 (choose!50485 z!1189 (h!72428 zl!343) lambda!381389))))

(assert (=> d!2129446 (= z!1189 (store ((as const (Array Context!11970 Bool)) false) (h!72428 zl!343) true))))

(assert (=> d!2129446 (= (lemmaFlatMapOnSingletonSet!1608 z!1189 (h!72428 zl!343) lambda!381389) lt!2444500)))

(declare-fun b_lambda!255211 () Bool)

(assert (=> (not b_lambda!255211) (not d!2129446)))

(declare-fun bs!1805035 () Bool)

(assert (= bs!1805035 d!2129446))

(assert (=> bs!1805035 m!7526868))

(declare-fun m!7527410 () Bool)

(assert (=> bs!1805035 m!7527410))

(declare-fun m!7527412 () Bool)

(assert (=> bs!1805035 m!7527412))

(declare-fun m!7527414 () Bool)

(assert (=> bs!1805035 m!7527414))

(assert (=> b!6777699 d!2129446))

(declare-fun bm!614819 () Bool)

(declare-fun call!614825 () List!66103)

(declare-fun call!614828 () List!66103)

(assert (=> bm!614819 (= call!614825 call!614828)))

(declare-fun bm!614820 () Bool)

(declare-fun call!614826 () (InoxSet Context!11970))

(declare-fun call!614829 () (InoxSet Context!11970))

(assert (=> bm!614820 (= call!614826 call!614829)))

(declare-fun b!6778438 () Bool)

(declare-fun e!4092010 () (InoxSet Context!11970))

(declare-fun e!4092008 () (InoxSet Context!11970))

(assert (=> b!6778438 (= e!4092010 e!4092008)))

(declare-fun c!1259066 () Bool)

(assert (=> b!6778438 (= c!1259066 ((_ is Concat!25446) (reg!16930 r!7292)))))

(declare-fun bm!614821 () Bool)

(declare-fun call!614824 () (InoxSet Context!11970))

(assert (=> bm!614821 (= call!614824 call!614826)))

(declare-fun b!6778439 () Bool)

(assert (=> b!6778439 (= e!4092008 call!614824)))

(declare-fun c!1259063 () Bool)

(declare-fun bm!614822 () Bool)

(assert (=> bm!614822 (= call!614828 ($colon$colon!2410 (exprs!6485 lt!2444384) (ite (or c!1259063 c!1259066) (regTwo!33714 (reg!16930 r!7292)) (reg!16930 r!7292))))))

(declare-fun d!2129448 () Bool)

(declare-fun c!1259064 () Bool)

(assert (=> d!2129448 (= c!1259064 (and ((_ is ElementMatch!16601) (reg!16930 r!7292)) (= (c!1258869 (reg!16930 r!7292)) (h!72426 s!2326))))))

(declare-fun e!4092012 () (InoxSet Context!11970))

(assert (=> d!2129448 (= (derivationStepZipperDown!1829 (reg!16930 r!7292) lt!2444384 (h!72426 s!2326)) e!4092012)))

(declare-fun b!6778440 () Bool)

(declare-fun c!1259065 () Bool)

(assert (=> b!6778440 (= c!1259065 ((_ is Star!16601) (reg!16930 r!7292)))))

(declare-fun e!4092009 () (InoxSet Context!11970))

(assert (=> b!6778440 (= e!4092008 e!4092009)))

(declare-fun call!614827 () (InoxSet Context!11970))

(declare-fun c!1259062 () Bool)

(declare-fun bm!614823 () Bool)

(assert (=> bm!614823 (= call!614827 (derivationStepZipperDown!1829 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))) (ite c!1259062 lt!2444384 (Context!11971 call!614828)) (h!72426 s!2326)))))

(declare-fun b!6778441 () Bool)

(assert (=> b!6778441 (= e!4092012 (store ((as const (Array Context!11970 Bool)) false) lt!2444384 true))))

(declare-fun b!6778442 () Bool)

(declare-fun e!4092013 () (InoxSet Context!11970))

(assert (=> b!6778442 (= e!4092013 ((_ map or) call!614829 call!614827))))

(declare-fun b!6778443 () Bool)

(assert (=> b!6778443 (= e!4092009 call!614824)))

(declare-fun b!6778444 () Bool)

(assert (=> b!6778444 (= e!4092012 e!4092013)))

(assert (=> b!6778444 (= c!1259062 ((_ is Union!16601) (reg!16930 r!7292)))))

(declare-fun b!6778445 () Bool)

(assert (=> b!6778445 (= e!4092010 ((_ map or) call!614827 call!614826))))

(declare-fun b!6778446 () Bool)

(assert (=> b!6778446 (= e!4092009 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6778447 () Bool)

(declare-fun e!4092011 () Bool)

(assert (=> b!6778447 (= c!1259063 e!4092011)))

(declare-fun res!2770893 () Bool)

(assert (=> b!6778447 (=> (not res!2770893) (not e!4092011))))

(assert (=> b!6778447 (= res!2770893 ((_ is Concat!25446) (reg!16930 r!7292)))))

(assert (=> b!6778447 (= e!4092013 e!4092010)))

(declare-fun b!6778448 () Bool)

(assert (=> b!6778448 (= e!4092011 (nullable!6580 (regOne!33714 (reg!16930 r!7292))))))

(declare-fun bm!614824 () Bool)

(assert (=> bm!614824 (= call!614829 (derivationStepZipperDown!1829 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))) (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825)) (h!72426 s!2326)))))

(assert (= (and d!2129448 c!1259064) b!6778441))

(assert (= (and d!2129448 (not c!1259064)) b!6778444))

(assert (= (and b!6778444 c!1259062) b!6778442))

(assert (= (and b!6778444 (not c!1259062)) b!6778447))

(assert (= (and b!6778447 res!2770893) b!6778448))

(assert (= (and b!6778447 c!1259063) b!6778445))

(assert (= (and b!6778447 (not c!1259063)) b!6778438))

(assert (= (and b!6778438 c!1259066) b!6778439))

(assert (= (and b!6778438 (not c!1259066)) b!6778440))

(assert (= (and b!6778440 c!1259065) b!6778443))

(assert (= (and b!6778440 (not c!1259065)) b!6778446))

(assert (= (or b!6778439 b!6778443) bm!614819))

(assert (= (or b!6778439 b!6778443) bm!614821))

(assert (= (or b!6778445 bm!614819) bm!614822))

(assert (= (or b!6778445 bm!614821) bm!614820))

(assert (= (or b!6778442 b!6778445) bm!614823))

(assert (= (or b!6778442 bm!614820) bm!614824))

(declare-fun m!7527416 () Bool)

(assert (=> bm!614824 m!7527416))

(declare-fun m!7527418 () Bool)

(assert (=> bm!614822 m!7527418))

(declare-fun m!7527420 () Bool)

(assert (=> bm!614823 m!7527420))

(declare-fun m!7527422 () Bool)

(assert (=> b!6778448 m!7527422))

(assert (=> b!6778441 m!7526802))

(assert (=> b!6777700 d!2129448))

(declare-fun d!2129450 () Bool)

(assert (=> d!2129450 (= (flatMap!2082 lt!2444374 lambda!381389) (choose!50484 lt!2444374 lambda!381389))))

(declare-fun bs!1805036 () Bool)

(assert (= bs!1805036 d!2129450))

(declare-fun m!7527424 () Bool)

(assert (=> bs!1805036 m!7527424))

(assert (=> b!6777700 d!2129450))

(declare-fun b!6778449 () Bool)

(declare-fun e!4092015 () (InoxSet Context!11970))

(assert (=> b!6778449 (= e!4092015 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129452 () Bool)

(declare-fun c!1259067 () Bool)

(declare-fun e!4092014 () Bool)

(assert (=> d!2129452 (= c!1259067 e!4092014)))

(declare-fun res!2770894 () Bool)

(assert (=> d!2129452 (=> (not res!2770894) (not e!4092014))))

(assert (=> d!2129452 (= res!2770894 ((_ is Cons!65979) (exprs!6485 lt!2444380)))))

(declare-fun e!4092016 () (InoxSet Context!11970))

(assert (=> d!2129452 (= (derivationStepZipperUp!1755 lt!2444380 (h!72426 s!2326)) e!4092016)))

(declare-fun b!6778450 () Bool)

(assert (=> b!6778450 (= e!4092016 e!4092015)))

(declare-fun c!1259068 () Bool)

(assert (=> b!6778450 (= c!1259068 ((_ is Cons!65979) (exprs!6485 lt!2444380)))))

(declare-fun b!6778451 () Bool)

(declare-fun call!614830 () (InoxSet Context!11970))

(assert (=> b!6778451 (= e!4092015 call!614830)))

(declare-fun b!6778452 () Bool)

(assert (=> b!6778452 (= e!4092014 (nullable!6580 (h!72427 (exprs!6485 lt!2444380))))))

(declare-fun bm!614825 () Bool)

(assert (=> bm!614825 (= call!614830 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444380)) (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (h!72426 s!2326)))))

(declare-fun b!6778453 () Bool)

(assert (=> b!6778453 (= e!4092016 ((_ map or) call!614830 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (h!72426 s!2326))))))

(assert (= (and d!2129452 res!2770894) b!6778452))

(assert (= (and d!2129452 c!1259067) b!6778453))

(assert (= (and d!2129452 (not c!1259067)) b!6778450))

(assert (= (and b!6778450 c!1259068) b!6778451))

(assert (= (and b!6778450 (not c!1259068)) b!6778449))

(assert (= (or b!6778453 b!6778451) bm!614825))

(declare-fun m!7527426 () Bool)

(assert (=> b!6778452 m!7527426))

(declare-fun m!7527428 () Bool)

(assert (=> bm!614825 m!7527428))

(declare-fun m!7527430 () Bool)

(assert (=> b!6778453 m!7527430))

(assert (=> b!6777700 d!2129452))

(declare-fun d!2129454 () Bool)

(assert (=> d!2129454 (= (flatMap!2082 lt!2444374 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444380))))

(declare-fun lt!2444501 () Unit!159893)

(assert (=> d!2129454 (= lt!2444501 (choose!50485 lt!2444374 lt!2444380 lambda!381389))))

(assert (=> d!2129454 (= lt!2444374 (store ((as const (Array Context!11970 Bool)) false) lt!2444380 true))))

(assert (=> d!2129454 (= (lemmaFlatMapOnSingletonSet!1608 lt!2444374 lt!2444380 lambda!381389) lt!2444501)))

(declare-fun b_lambda!255213 () Bool)

(assert (=> (not b_lambda!255213) (not d!2129454)))

(declare-fun bs!1805037 () Bool)

(assert (= bs!1805037 d!2129454))

(assert (=> bs!1805037 m!7526890))

(declare-fun m!7527432 () Bool)

(assert (=> bs!1805037 m!7527432))

(declare-fun m!7527434 () Bool)

(assert (=> bs!1805037 m!7527434))

(assert (=> bs!1805037 m!7526892))

(assert (=> b!6777700 d!2129454))

(declare-fun bs!1805038 () Bool)

(declare-fun d!2129456 () Bool)

(assert (= bs!1805038 (and d!2129456 d!2129282)))

(declare-fun lambda!381462 () Int)

(assert (=> bs!1805038 (= lambda!381462 lambda!381401)))

(assert (=> d!2129456 (= (inv!84749 setElem!46351) (forall!15793 (exprs!6485 setElem!46351) lambda!381462))))

(declare-fun bs!1805039 () Bool)

(assert (= bs!1805039 d!2129456))

(declare-fun m!7527436 () Bool)

(assert (=> bs!1805039 m!7527436))

(assert (=> setNonEmpty!46351 d!2129456))

(declare-fun bs!1805040 () Bool)

(declare-fun d!2129458 () Bool)

(assert (= bs!1805040 (and d!2129458 d!2129282)))

(declare-fun lambda!381463 () Int)

(assert (=> bs!1805040 (= lambda!381463 lambda!381401)))

(declare-fun bs!1805041 () Bool)

(assert (= bs!1805041 (and d!2129458 d!2129456)))

(assert (=> bs!1805041 (= lambda!381463 lambda!381462)))

(assert (=> d!2129458 (= (inv!84749 (h!72428 zl!343)) (forall!15793 (exprs!6485 (h!72428 zl!343)) lambda!381463))))

(declare-fun bs!1805042 () Bool)

(assert (= bs!1805042 d!2129458))

(declare-fun m!7527438 () Bool)

(assert (=> bs!1805042 m!7527438))

(assert (=> b!6777720 d!2129458))

(declare-fun bs!1805043 () Bool)

(declare-fun d!2129460 () Bool)

(assert (= bs!1805043 (and d!2129460 d!2129282)))

(declare-fun lambda!381466 () Int)

(assert (=> bs!1805043 (= lambda!381466 lambda!381401)))

(declare-fun bs!1805044 () Bool)

(assert (= bs!1805044 (and d!2129460 d!2129456)))

(assert (=> bs!1805044 (= lambda!381466 lambda!381462)))

(declare-fun bs!1805045 () Bool)

(assert (= bs!1805045 (and d!2129460 d!2129458)))

(assert (=> bs!1805045 (= lambda!381466 lambda!381463)))

(declare-fun b!6778474 () Bool)

(declare-fun e!4092029 () Regex!16601)

(declare-fun e!4092031 () Regex!16601)

(assert (=> b!6778474 (= e!4092029 e!4092031)))

(declare-fun c!1259078 () Bool)

(assert (=> b!6778474 (= c!1259078 ((_ is Cons!65979) (unfocusZipperList!2022 zl!343)))))

(declare-fun b!6778475 () Bool)

(declare-fun e!4092034 () Bool)

(declare-fun lt!2444504 () Regex!16601)

(declare-fun isEmptyLang!1967 (Regex!16601) Bool)

(assert (=> b!6778475 (= e!4092034 (isEmptyLang!1967 lt!2444504))))

(declare-fun b!6778476 () Bool)

(assert (=> b!6778476 (= e!4092031 (Union!16601 (h!72427 (unfocusZipperList!2022 zl!343)) (generalisedUnion!2445 (t!379816 (unfocusZipperList!2022 zl!343)))))))

(declare-fun b!6778477 () Bool)

(assert (=> b!6778477 (= e!4092031 EmptyLang!16601)))

(declare-fun b!6778478 () Bool)

(declare-fun e!4092030 () Bool)

(declare-fun isUnion!1397 (Regex!16601) Bool)

(assert (=> b!6778478 (= e!4092030 (isUnion!1397 lt!2444504))))

(declare-fun b!6778479 () Bool)

(declare-fun e!4092033 () Bool)

(assert (=> b!6778479 (= e!4092033 (isEmpty!38340 (t!379816 (unfocusZipperList!2022 zl!343))))))

(declare-fun b!6778480 () Bool)

(declare-fun e!4092032 () Bool)

(assert (=> b!6778480 (= e!4092032 e!4092034)))

(declare-fun c!1259080 () Bool)

(assert (=> b!6778480 (= c!1259080 (isEmpty!38340 (unfocusZipperList!2022 zl!343)))))

(declare-fun b!6778481 () Bool)

(assert (=> b!6778481 (= e!4092029 (h!72427 (unfocusZipperList!2022 zl!343)))))

(assert (=> d!2129460 e!4092032))

(declare-fun res!2770900 () Bool)

(assert (=> d!2129460 (=> (not res!2770900) (not e!4092032))))

(assert (=> d!2129460 (= res!2770900 (validRegex!8337 lt!2444504))))

(assert (=> d!2129460 (= lt!2444504 e!4092029)))

(declare-fun c!1259079 () Bool)

(assert (=> d!2129460 (= c!1259079 e!4092033)))

(declare-fun res!2770899 () Bool)

(assert (=> d!2129460 (=> (not res!2770899) (not e!4092033))))

(assert (=> d!2129460 (= res!2770899 ((_ is Cons!65979) (unfocusZipperList!2022 zl!343)))))

(assert (=> d!2129460 (forall!15793 (unfocusZipperList!2022 zl!343) lambda!381466)))

(assert (=> d!2129460 (= (generalisedUnion!2445 (unfocusZipperList!2022 zl!343)) lt!2444504)))

(declare-fun b!6778482 () Bool)

(assert (=> b!6778482 (= e!4092030 (= lt!2444504 (head!13613 (unfocusZipperList!2022 zl!343))))))

(declare-fun b!6778483 () Bool)

(assert (=> b!6778483 (= e!4092034 e!4092030)))

(declare-fun c!1259077 () Bool)

(assert (=> b!6778483 (= c!1259077 (isEmpty!38340 (tail!12698 (unfocusZipperList!2022 zl!343))))))

(assert (= (and d!2129460 res!2770899) b!6778479))

(assert (= (and d!2129460 c!1259079) b!6778481))

(assert (= (and d!2129460 (not c!1259079)) b!6778474))

(assert (= (and b!6778474 c!1259078) b!6778476))

(assert (= (and b!6778474 (not c!1259078)) b!6778477))

(assert (= (and d!2129460 res!2770900) b!6778480))

(assert (= (and b!6778480 c!1259080) b!6778475))

(assert (= (and b!6778480 (not c!1259080)) b!6778483))

(assert (= (and b!6778483 c!1259077) b!6778482))

(assert (= (and b!6778483 (not c!1259077)) b!6778478))

(declare-fun m!7527440 () Bool)

(assert (=> b!6778478 m!7527440))

(assert (=> b!6778483 m!7526850))

(declare-fun m!7527442 () Bool)

(assert (=> b!6778483 m!7527442))

(assert (=> b!6778483 m!7527442))

(declare-fun m!7527444 () Bool)

(assert (=> b!6778483 m!7527444))

(assert (=> b!6778482 m!7526850))

(declare-fun m!7527446 () Bool)

(assert (=> b!6778482 m!7527446))

(assert (=> b!6778480 m!7526850))

(declare-fun m!7527448 () Bool)

(assert (=> b!6778480 m!7527448))

(declare-fun m!7527450 () Bool)

(assert (=> b!6778476 m!7527450))

(declare-fun m!7527452 () Bool)

(assert (=> b!6778475 m!7527452))

(declare-fun m!7527454 () Bool)

(assert (=> d!2129460 m!7527454))

(assert (=> d!2129460 m!7526850))

(declare-fun m!7527456 () Bool)

(assert (=> d!2129460 m!7527456))

(declare-fun m!7527458 () Bool)

(assert (=> b!6778479 m!7527458))

(assert (=> b!6777707 d!2129460))

(declare-fun bs!1805046 () Bool)

(declare-fun d!2129462 () Bool)

(assert (= bs!1805046 (and d!2129462 d!2129282)))

(declare-fun lambda!381469 () Int)

(assert (=> bs!1805046 (= lambda!381469 lambda!381401)))

(declare-fun bs!1805047 () Bool)

(assert (= bs!1805047 (and d!2129462 d!2129456)))

(assert (=> bs!1805047 (= lambda!381469 lambda!381462)))

(declare-fun bs!1805048 () Bool)

(assert (= bs!1805048 (and d!2129462 d!2129458)))

(assert (=> bs!1805048 (= lambda!381469 lambda!381463)))

(declare-fun bs!1805049 () Bool)

(assert (= bs!1805049 (and d!2129462 d!2129460)))

(assert (=> bs!1805049 (= lambda!381469 lambda!381466)))

(declare-fun lt!2444507 () List!66103)

(assert (=> d!2129462 (forall!15793 lt!2444507 lambda!381469)))

(declare-fun e!4092037 () List!66103)

(assert (=> d!2129462 (= lt!2444507 e!4092037)))

(declare-fun c!1259083 () Bool)

(assert (=> d!2129462 (= c!1259083 ((_ is Cons!65980) zl!343))))

(assert (=> d!2129462 (= (unfocusZipperList!2022 zl!343) lt!2444507)))

(declare-fun b!6778488 () Bool)

(assert (=> b!6778488 (= e!4092037 (Cons!65979 (generalisedConcat!2198 (exprs!6485 (h!72428 zl!343))) (unfocusZipperList!2022 (t!379817 zl!343))))))

(declare-fun b!6778489 () Bool)

(assert (=> b!6778489 (= e!4092037 Nil!65979)))

(assert (= (and d!2129462 c!1259083) b!6778488))

(assert (= (and d!2129462 (not c!1259083)) b!6778489))

(declare-fun m!7527460 () Bool)

(assert (=> d!2129462 m!7527460))

(assert (=> b!6778488 m!7526856))

(declare-fun m!7527462 () Bool)

(assert (=> b!6778488 m!7527462))

(assert (=> b!6777707 d!2129462))

(declare-fun d!2129464 () Bool)

(assert (=> d!2129464 (= (flatMap!2082 lt!2444388 lambda!381389) (choose!50484 lt!2444388 lambda!381389))))

(declare-fun bs!1805050 () Bool)

(assert (= bs!1805050 d!2129464))

(declare-fun m!7527464 () Bool)

(assert (=> bs!1805050 m!7527464))

(assert (=> b!6777708 d!2129464))

(declare-fun d!2129466 () Bool)

(assert (=> d!2129466 (= (flatMap!2082 lt!2444388 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444367))))

(declare-fun lt!2444508 () Unit!159893)

(assert (=> d!2129466 (= lt!2444508 (choose!50485 lt!2444388 lt!2444367 lambda!381389))))

(assert (=> d!2129466 (= lt!2444388 (store ((as const (Array Context!11970 Bool)) false) lt!2444367 true))))

(assert (=> d!2129466 (= (lemmaFlatMapOnSingletonSet!1608 lt!2444388 lt!2444367 lambda!381389) lt!2444508)))

(declare-fun b_lambda!255215 () Bool)

(assert (=> (not b_lambda!255215) (not d!2129466)))

(declare-fun bs!1805051 () Bool)

(assert (= bs!1805051 d!2129466))

(assert (=> bs!1805051 m!7526808))

(declare-fun m!7527466 () Bool)

(assert (=> bs!1805051 m!7527466))

(declare-fun m!7527468 () Bool)

(assert (=> bs!1805051 m!7527468))

(assert (=> bs!1805051 m!7526794))

(assert (=> b!6777708 d!2129466))

(declare-fun bs!1805052 () Bool)

(declare-fun d!2129468 () Bool)

(assert (= bs!1805052 (and d!2129468 b!6777699)))

(declare-fun lambda!381470 () Int)

(assert (=> bs!1805052 (= lambda!381470 lambda!381389)))

(declare-fun bs!1805053 () Bool)

(assert (= bs!1805053 (and d!2129468 d!2129354)))

(assert (=> bs!1805053 (= lambda!381470 lambda!381433)))

(declare-fun bs!1805054 () Bool)

(assert (= bs!1805054 (and d!2129468 d!2129440)))

(assert (=> bs!1805054 (= lambda!381470 lambda!381459)))

(assert (=> d!2129468 true))

(assert (=> d!2129468 (= (derivationStepZipper!2545 lt!2444376 (h!72426 s!2326)) (flatMap!2082 lt!2444376 lambda!381470))))

(declare-fun bs!1805055 () Bool)

(assert (= bs!1805055 d!2129468))

(declare-fun m!7527470 () Bool)

(assert (=> bs!1805055 m!7527470))

(assert (=> b!6777708 d!2129468))

(declare-fun b!6778490 () Bool)

(declare-fun e!4092039 () (InoxSet Context!11970))

(assert (=> b!6778490 (= e!4092039 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129470 () Bool)

(declare-fun c!1259084 () Bool)

(declare-fun e!4092038 () Bool)

(assert (=> d!2129470 (= c!1259084 e!4092038)))

(declare-fun res!2770901 () Bool)

(assert (=> d!2129470 (=> (not res!2770901) (not e!4092038))))

(assert (=> d!2129470 (= res!2770901 ((_ is Cons!65979) (exprs!6485 lt!2444384)))))

(declare-fun e!4092040 () (InoxSet Context!11970))

(assert (=> d!2129470 (= (derivationStepZipperUp!1755 lt!2444384 (h!72426 s!2326)) e!4092040)))

(declare-fun b!6778491 () Bool)

(assert (=> b!6778491 (= e!4092040 e!4092039)))

(declare-fun c!1259085 () Bool)

(assert (=> b!6778491 (= c!1259085 ((_ is Cons!65979) (exprs!6485 lt!2444384)))))

(declare-fun b!6778492 () Bool)

(declare-fun call!614831 () (InoxSet Context!11970))

(assert (=> b!6778492 (= e!4092039 call!614831)))

(declare-fun b!6778493 () Bool)

(assert (=> b!6778493 (= e!4092038 (nullable!6580 (h!72427 (exprs!6485 lt!2444384))))))

(declare-fun bm!614826 () Bool)

(assert (=> bm!614826 (= call!614831 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444384)) (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (h!72426 s!2326)))))

(declare-fun b!6778494 () Bool)

(assert (=> b!6778494 (= e!4092040 ((_ map or) call!614831 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (h!72426 s!2326))))))

(assert (= (and d!2129470 res!2770901) b!6778493))

(assert (= (and d!2129470 c!1259084) b!6778494))

(assert (= (and d!2129470 (not c!1259084)) b!6778491))

(assert (= (and b!6778491 c!1259085) b!6778492))

(assert (= (and b!6778491 (not c!1259085)) b!6778490))

(assert (= (or b!6778494 b!6778492) bm!614826))

(declare-fun m!7527472 () Bool)

(assert (=> b!6778493 m!7527472))

(declare-fun m!7527474 () Bool)

(assert (=> bm!614826 m!7527474))

(declare-fun m!7527476 () Bool)

(assert (=> b!6778494 m!7527476))

(assert (=> b!6777708 d!2129470))

(declare-fun d!2129472 () Bool)

(assert (=> d!2129472 (= (flatMap!2082 lt!2444376 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444384))))

(declare-fun lt!2444509 () Unit!159893)

(assert (=> d!2129472 (= lt!2444509 (choose!50485 lt!2444376 lt!2444384 lambda!381389))))

(assert (=> d!2129472 (= lt!2444376 (store ((as const (Array Context!11970 Bool)) false) lt!2444384 true))))

(assert (=> d!2129472 (= (lemmaFlatMapOnSingletonSet!1608 lt!2444376 lt!2444384 lambda!381389) lt!2444509)))

(declare-fun b_lambda!255217 () Bool)

(assert (=> (not b_lambda!255217) (not d!2129472)))

(declare-fun bs!1805056 () Bool)

(assert (= bs!1805056 d!2129472))

(assert (=> bs!1805056 m!7526800))

(declare-fun m!7527478 () Bool)

(assert (=> bs!1805056 m!7527478))

(declare-fun m!7527480 () Bool)

(assert (=> bs!1805056 m!7527480))

(assert (=> bs!1805056 m!7526802))

(assert (=> b!6777708 d!2129472))

(declare-fun d!2129474 () Bool)

(assert (=> d!2129474 (= (flatMap!2082 lt!2444376 lambda!381389) (choose!50484 lt!2444376 lambda!381389))))

(declare-fun bs!1805057 () Bool)

(assert (= bs!1805057 d!2129474))

(declare-fun m!7527482 () Bool)

(assert (=> bs!1805057 m!7527482))

(assert (=> b!6777708 d!2129474))

(declare-fun b!6778495 () Bool)

(declare-fun e!4092042 () (InoxSet Context!11970))

(assert (=> b!6778495 (= e!4092042 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129476 () Bool)

(declare-fun c!1259086 () Bool)

(declare-fun e!4092041 () Bool)

(assert (=> d!2129476 (= c!1259086 e!4092041)))

(declare-fun res!2770902 () Bool)

(assert (=> d!2129476 (=> (not res!2770902) (not e!4092041))))

(assert (=> d!2129476 (= res!2770902 ((_ is Cons!65979) (exprs!6485 lt!2444367)))))

(declare-fun e!4092043 () (InoxSet Context!11970))

(assert (=> d!2129476 (= (derivationStepZipperUp!1755 lt!2444367 (h!72426 s!2326)) e!4092043)))

(declare-fun b!6778496 () Bool)

(assert (=> b!6778496 (= e!4092043 e!4092042)))

(declare-fun c!1259087 () Bool)

(assert (=> b!6778496 (= c!1259087 ((_ is Cons!65979) (exprs!6485 lt!2444367)))))

(declare-fun b!6778497 () Bool)

(declare-fun call!614832 () (InoxSet Context!11970))

(assert (=> b!6778497 (= e!4092042 call!614832)))

(declare-fun b!6778498 () Bool)

(assert (=> b!6778498 (= e!4092041 (nullable!6580 (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun bm!614827 () Bool)

(assert (=> bm!614827 (= call!614832 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444367)) (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (h!72426 s!2326)))))

(declare-fun b!6778499 () Bool)

(assert (=> b!6778499 (= e!4092043 ((_ map or) call!614832 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (h!72426 s!2326))))))

(assert (= (and d!2129476 res!2770902) b!6778498))

(assert (= (and d!2129476 c!1259086) b!6778499))

(assert (= (and d!2129476 (not c!1259086)) b!6778496))

(assert (= (and b!6778496 c!1259087) b!6778497))

(assert (= (and b!6778496 (not c!1259087)) b!6778495))

(assert (= (or b!6778499 b!6778497) bm!614827))

(declare-fun m!7527484 () Bool)

(assert (=> b!6778498 m!7527484))

(declare-fun m!7527486 () Bool)

(assert (=> bm!614827 m!7527486))

(declare-fun m!7527488 () Bool)

(assert (=> b!6778499 m!7527488))

(assert (=> b!6777708 d!2129476))

(declare-fun b!6778500 () Bool)

(declare-fun e!4092044 () Bool)

(declare-fun e!4092047 () Bool)

(assert (=> b!6778500 (= e!4092044 e!4092047)))

(declare-fun c!1259090 () Bool)

(assert (=> b!6778500 (= c!1259090 ((_ is EmptyLang!16601) r!7292))))

(declare-fun b!6778501 () Bool)

(declare-fun res!2770903 () Bool)

(declare-fun e!4092045 () Bool)

(assert (=> b!6778501 (=> res!2770903 e!4092045)))

(declare-fun e!4092048 () Bool)

(assert (=> b!6778501 (= res!2770903 e!4092048)))

(declare-fun res!2770909 () Bool)

(assert (=> b!6778501 (=> (not res!2770909) (not e!4092048))))

(declare-fun lt!2444510 () Bool)

(assert (=> b!6778501 (= res!2770909 lt!2444510)))

(declare-fun b!6778502 () Bool)

(declare-fun e!4092050 () Bool)

(assert (=> b!6778502 (= e!4092045 e!4092050)))

(declare-fun res!2770905 () Bool)

(assert (=> b!6778502 (=> (not res!2770905) (not e!4092050))))

(assert (=> b!6778502 (= res!2770905 (not lt!2444510))))

(declare-fun b!6778503 () Bool)

(declare-fun res!2770906 () Bool)

(assert (=> b!6778503 (=> (not res!2770906) (not e!4092048))))

(declare-fun call!614833 () Bool)

(assert (=> b!6778503 (= res!2770906 (not call!614833))))

(declare-fun b!6778504 () Bool)

(assert (=> b!6778504 (= e!4092047 (not lt!2444510))))

(declare-fun b!6778505 () Bool)

(assert (=> b!6778505 (= e!4092044 (= lt!2444510 call!614833))))

(declare-fun b!6778506 () Bool)

(declare-fun res!2770907 () Bool)

(assert (=> b!6778506 (=> res!2770907 e!4092045)))

(assert (=> b!6778506 (= res!2770907 (not ((_ is ElementMatch!16601) r!7292)))))

(assert (=> b!6778506 (= e!4092047 e!4092045)))

(declare-fun b!6778507 () Bool)

(declare-fun e!4092046 () Bool)

(assert (=> b!6778507 (= e!4092046 (not (= (head!13614 (_2!36879 lt!2444385)) (c!1258869 r!7292))))))

(declare-fun b!6778508 () Bool)

(declare-fun res!2770904 () Bool)

(assert (=> b!6778508 (=> res!2770904 e!4092046)))

(assert (=> b!6778508 (= res!2770904 (not (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385)))))))

(declare-fun b!6778509 () Bool)

(assert (=> b!6778509 (= e!4092050 e!4092046)))

(declare-fun res!2770910 () Bool)

(assert (=> b!6778509 (=> res!2770910 e!4092046)))

(assert (=> b!6778509 (= res!2770910 call!614833)))

(declare-fun b!6778510 () Bool)

(declare-fun e!4092049 () Bool)

(assert (=> b!6778510 (= e!4092049 (matchR!8784 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))) (tail!12699 (_2!36879 lt!2444385))))))

(declare-fun b!6778511 () Bool)

(assert (=> b!6778511 (= e!4092049 (nullable!6580 r!7292))))

(declare-fun bm!614828 () Bool)

(assert (=> bm!614828 (= call!614833 (isEmpty!38337 (_2!36879 lt!2444385)))))

(declare-fun d!2129478 () Bool)

(assert (=> d!2129478 e!4092044))

(declare-fun c!1259088 () Bool)

(assert (=> d!2129478 (= c!1259088 ((_ is EmptyExpr!16601) r!7292))))

(assert (=> d!2129478 (= lt!2444510 e!4092049)))

(declare-fun c!1259089 () Bool)

(assert (=> d!2129478 (= c!1259089 (isEmpty!38337 (_2!36879 lt!2444385)))))

(assert (=> d!2129478 (validRegex!8337 r!7292)))

(assert (=> d!2129478 (= (matchR!8784 r!7292 (_2!36879 lt!2444385)) lt!2444510)))

(declare-fun b!6778512 () Bool)

(assert (=> b!6778512 (= e!4092048 (= (head!13614 (_2!36879 lt!2444385)) (c!1258869 r!7292)))))

(declare-fun b!6778513 () Bool)

(declare-fun res!2770908 () Bool)

(assert (=> b!6778513 (=> (not res!2770908) (not e!4092048))))

(assert (=> b!6778513 (= res!2770908 (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385))))))

(assert (= (and d!2129478 c!1259089) b!6778511))

(assert (= (and d!2129478 (not c!1259089)) b!6778510))

(assert (= (and d!2129478 c!1259088) b!6778505))

(assert (= (and d!2129478 (not c!1259088)) b!6778500))

(assert (= (and b!6778500 c!1259090) b!6778504))

(assert (= (and b!6778500 (not c!1259090)) b!6778506))

(assert (= (and b!6778506 (not res!2770907)) b!6778501))

(assert (= (and b!6778501 res!2770909) b!6778503))

(assert (= (and b!6778503 res!2770906) b!6778513))

(assert (= (and b!6778513 res!2770908) b!6778512))

(assert (= (and b!6778501 (not res!2770903)) b!6778502))

(assert (= (and b!6778502 res!2770905) b!6778509))

(assert (= (and b!6778509 (not res!2770910)) b!6778508))

(assert (= (and b!6778508 (not res!2770904)) b!6778507))

(assert (= (or b!6778505 b!6778509 b!6778503) bm!614828))

(declare-fun m!7527490 () Bool)

(assert (=> b!6778508 m!7527490))

(assert (=> b!6778508 m!7527490))

(declare-fun m!7527492 () Bool)

(assert (=> b!6778508 m!7527492))

(declare-fun m!7527494 () Bool)

(assert (=> b!6778507 m!7527494))

(assert (=> b!6778511 m!7527132))

(assert (=> b!6778512 m!7527494))

(assert (=> b!6778510 m!7527494))

(assert (=> b!6778510 m!7527494))

(declare-fun m!7527496 () Bool)

(assert (=> b!6778510 m!7527496))

(assert (=> b!6778510 m!7527490))

(assert (=> b!6778510 m!7527496))

(assert (=> b!6778510 m!7527490))

(declare-fun m!7527498 () Bool)

(assert (=> b!6778510 m!7527498))

(declare-fun m!7527500 () Bool)

(assert (=> d!2129478 m!7527500))

(assert (=> d!2129478 m!7526812))

(assert (=> bm!614828 m!7527500))

(assert (=> b!6778513 m!7527490))

(assert (=> b!6778513 m!7527490))

(assert (=> b!6778513 m!7527492))

(assert (=> b!6777728 d!2129478))

(declare-fun bs!1805058 () Bool)

(declare-fun d!2129480 () Bool)

(assert (= bs!1805058 (and d!2129480 d!2129456)))

(declare-fun lambda!381471 () Int)

(assert (=> bs!1805058 (= lambda!381471 lambda!381462)))

(declare-fun bs!1805059 () Bool)

(assert (= bs!1805059 (and d!2129480 d!2129460)))

(assert (=> bs!1805059 (= lambda!381471 lambda!381466)))

(declare-fun bs!1805060 () Bool)

(assert (= bs!1805060 (and d!2129480 d!2129462)))

(assert (=> bs!1805060 (= lambda!381471 lambda!381469)))

(declare-fun bs!1805061 () Bool)

(assert (= bs!1805061 (and d!2129480 d!2129282)))

(assert (=> bs!1805061 (= lambda!381471 lambda!381401)))

(declare-fun bs!1805062 () Bool)

(assert (= bs!1805062 (and d!2129480 d!2129458)))

(assert (=> bs!1805062 (= lambda!381471 lambda!381463)))

(assert (=> d!2129480 (= (inv!84749 lt!2444367) (forall!15793 (exprs!6485 lt!2444367) lambda!381471))))

(declare-fun bs!1805063 () Bool)

(assert (= bs!1805063 d!2129480))

(declare-fun m!7527502 () Bool)

(assert (=> bs!1805063 m!7527502))

(assert (=> b!6777705 d!2129480))

(declare-fun d!2129482 () Bool)

(assert (=> d!2129482 (= (matchR!8784 (reg!16930 r!7292) (_1!36879 lt!2444385)) (matchZipper!2587 lt!2444388 (_1!36879 lt!2444385)))))

(declare-fun lt!2444513 () Unit!159893)

(declare-fun choose!50487 ((InoxSet Context!11970) List!66104 Regex!16601 List!66102) Unit!159893)

(assert (=> d!2129482 (= lt!2444513 (choose!50487 lt!2444388 lt!2444375 (reg!16930 r!7292) (_1!36879 lt!2444385)))))

(assert (=> d!2129482 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129482 (= (theoremZipperRegexEquiv!931 lt!2444388 lt!2444375 (reg!16930 r!7292) (_1!36879 lt!2444385)) lt!2444513)))

(declare-fun bs!1805064 () Bool)

(assert (= bs!1805064 d!2129482))

(assert (=> bs!1805064 m!7526834))

(assert (=> bs!1805064 m!7526816))

(declare-fun m!7527504 () Bool)

(assert (=> bs!1805064 m!7527504))

(assert (=> bs!1805064 m!7527282))

(assert (=> b!6777705 d!2129482))

(declare-fun d!2129484 () Bool)

(declare-fun c!1259091 () Bool)

(assert (=> d!2129484 (= c!1259091 (isEmpty!38337 (_2!36879 lt!2444385)))))

(declare-fun e!4092051 () Bool)

(assert (=> d!2129484 (= (matchZipper!2587 lt!2444376 (_2!36879 lt!2444385)) e!4092051)))

(declare-fun b!6778514 () Bool)

(assert (=> b!6778514 (= e!4092051 (nullableZipper!2308 lt!2444376))))

(declare-fun b!6778515 () Bool)

(assert (=> b!6778515 (= e!4092051 (matchZipper!2587 (derivationStepZipper!2545 lt!2444376 (head!13614 (_2!36879 lt!2444385))) (tail!12699 (_2!36879 lt!2444385))))))

(assert (= (and d!2129484 c!1259091) b!6778514))

(assert (= (and d!2129484 (not c!1259091)) b!6778515))

(assert (=> d!2129484 m!7527500))

(declare-fun m!7527506 () Bool)

(assert (=> b!6778514 m!7527506))

(assert (=> b!6778515 m!7527494))

(assert (=> b!6778515 m!7527494))

(declare-fun m!7527508 () Bool)

(assert (=> b!6778515 m!7527508))

(assert (=> b!6778515 m!7527490))

(assert (=> b!6778515 m!7527508))

(assert (=> b!6778515 m!7527490))

(declare-fun m!7527510 () Bool)

(assert (=> b!6778515 m!7527510))

(assert (=> b!6777705 d!2129484))

(declare-fun d!2129486 () Bool)

(assert (=> d!2129486 (= (matchR!8784 r!7292 (_2!36879 lt!2444385)) (matchZipper!2587 lt!2444376 (_2!36879 lt!2444385)))))

(declare-fun lt!2444514 () Unit!159893)

(assert (=> d!2129486 (= lt!2444514 (choose!50487 lt!2444376 lt!2444395 r!7292 (_2!36879 lt!2444385)))))

(assert (=> d!2129486 (validRegex!8337 r!7292)))

(assert (=> d!2129486 (= (theoremZipperRegexEquiv!931 lt!2444376 lt!2444395 r!7292 (_2!36879 lt!2444385)) lt!2444514)))

(declare-fun bs!1805065 () Bool)

(assert (= bs!1805065 d!2129486))

(assert (=> bs!1805065 m!7526866))

(assert (=> bs!1805065 m!7526822))

(declare-fun m!7527512 () Bool)

(assert (=> bs!1805065 m!7527512))

(assert (=> bs!1805065 m!7526812))

(assert (=> b!6777705 d!2129486))

(declare-fun d!2129488 () Bool)

(declare-fun c!1259092 () Bool)

(assert (=> d!2129488 (= c!1259092 (isEmpty!38337 (_1!36879 lt!2444385)))))

(declare-fun e!4092052 () Bool)

(assert (=> d!2129488 (= (matchZipper!2587 lt!2444388 (_1!36879 lt!2444385)) e!4092052)))

(declare-fun b!6778516 () Bool)

(assert (=> b!6778516 (= e!4092052 (nullableZipper!2308 lt!2444388))))

(declare-fun b!6778517 () Bool)

(assert (=> b!6778517 (= e!4092052 (matchZipper!2587 (derivationStepZipper!2545 lt!2444388 (head!13614 (_1!36879 lt!2444385))) (tail!12699 (_1!36879 lt!2444385))))))

(assert (= (and d!2129488 c!1259092) b!6778516))

(assert (= (and d!2129488 (not c!1259092)) b!6778517))

(assert (=> d!2129488 m!7527382))

(declare-fun m!7527514 () Bool)

(assert (=> b!6778516 m!7527514))

(assert (=> b!6778517 m!7527374))

(assert (=> b!6778517 m!7527374))

(declare-fun m!7527516 () Bool)

(assert (=> b!6778517 m!7527516))

(assert (=> b!6778517 m!7527370))

(assert (=> b!6778517 m!7527516))

(assert (=> b!6778517 m!7527370))

(declare-fun m!7527518 () Bool)

(assert (=> b!6778517 m!7527518))

(assert (=> b!6777705 d!2129488))

(declare-fun bs!1805066 () Bool)

(declare-fun b!6778522 () Bool)

(assert (= bs!1805066 (and b!6778522 d!2129374)))

(declare-fun lambda!381472 () Int)

(assert (=> bs!1805066 (not (= lambda!381472 lambda!381447))))

(assert (=> bs!1805066 (not (= lambda!381472 lambda!381448))))

(declare-fun bs!1805067 () Bool)

(assert (= bs!1805067 (and b!6778522 d!2129420)))

(assert (=> bs!1805067 (not (= lambda!381472 lambda!381458))))

(declare-fun bs!1805068 () Bool)

(assert (= bs!1805068 (and b!6778522 b!6777698)))

(assert (=> bs!1805068 (not (= lambda!381472 lambda!381388))))

(declare-fun bs!1805069 () Bool)

(assert (= bs!1805069 (and b!6778522 d!2129396)))

(assert (=> bs!1805069 (not (= lambda!381472 lambda!381454))))

(declare-fun bs!1805070 () Bool)

(assert (= bs!1805070 (and b!6778522 b!6777987)))

(assert (=> bs!1805070 (not (= lambda!381472 lambda!381419))))

(assert (=> bs!1805069 (= (and (= (reg!16930 lt!2444369) (reg!16930 r!7292)) (= lt!2444369 (Star!16601 (reg!16930 r!7292)))) (= lambda!381472 lambda!381455))))

(assert (=> bs!1805068 (not (= lambda!381472 lambda!381386))))

(assert (=> bs!1805068 (= (and (= (reg!16930 lt!2444369) (reg!16930 r!7292)) (= lt!2444369 r!7292)) (= lambda!381472 lambda!381387))))

(declare-fun bs!1805071 () Bool)

(assert (= bs!1805071 (and b!6778522 b!6777981)))

(assert (=> bs!1805071 (= (and (= (reg!16930 lt!2444369) (reg!16930 r!7292)) (= lt!2444369 r!7292)) (= lambda!381472 lambda!381416))))

(assert (=> b!6778522 true))

(assert (=> b!6778522 true))

(declare-fun bs!1805072 () Bool)

(declare-fun b!6778528 () Bool)

(assert (= bs!1805072 (and b!6778528 d!2129374)))

(declare-fun lambda!381473 () Int)

(assert (=> bs!1805072 (not (= lambda!381473 lambda!381447))))

(assert (=> bs!1805072 (= (and (= (regOne!33714 lt!2444369) (reg!16930 r!7292)) (= (regTwo!33714 lt!2444369) r!7292)) (= lambda!381473 lambda!381448))))

(declare-fun bs!1805073 () Bool)

(assert (= bs!1805073 (and b!6778528 d!2129420)))

(assert (=> bs!1805073 (not (= lambda!381473 lambda!381458))))

(declare-fun bs!1805074 () Bool)

(assert (= bs!1805074 (and b!6778528 b!6777698)))

(assert (=> bs!1805074 (= (and (= (regOne!33714 lt!2444369) (reg!16930 r!7292)) (= (regTwo!33714 lt!2444369) r!7292)) (= lambda!381473 lambda!381388))))

(declare-fun bs!1805075 () Bool)

(assert (= bs!1805075 (and b!6778528 b!6778522)))

(assert (=> bs!1805075 (not (= lambda!381473 lambda!381472))))

(declare-fun bs!1805076 () Bool)

(assert (= bs!1805076 (and b!6778528 d!2129396)))

(assert (=> bs!1805076 (not (= lambda!381473 lambda!381454))))

(declare-fun bs!1805077 () Bool)

(assert (= bs!1805077 (and b!6778528 b!6777987)))

(assert (=> bs!1805077 (= (and (= (regOne!33714 lt!2444369) (regOne!33714 r!7292)) (= (regTwo!33714 lt!2444369) (regTwo!33714 r!7292))) (= lambda!381473 lambda!381419))))

(assert (=> bs!1805076 (not (= lambda!381473 lambda!381455))))

(assert (=> bs!1805074 (not (= lambda!381473 lambda!381386))))

(assert (=> bs!1805074 (not (= lambda!381473 lambda!381387))))

(declare-fun bs!1805078 () Bool)

(assert (= bs!1805078 (and b!6778528 b!6777981)))

(assert (=> bs!1805078 (not (= lambda!381473 lambda!381416))))

(assert (=> b!6778528 true))

(assert (=> b!6778528 true))

(declare-fun b!6778518 () Bool)

(declare-fun e!4092055 () Bool)

(declare-fun call!614834 () Bool)

(assert (=> b!6778518 (= e!4092055 call!614834)))

(declare-fun b!6778519 () Bool)

(declare-fun e!4092057 () Bool)

(declare-fun e!4092056 () Bool)

(assert (=> b!6778519 (= e!4092057 e!4092056)))

(declare-fun c!1259093 () Bool)

(assert (=> b!6778519 (= c!1259093 ((_ is Star!16601) lt!2444369))))

(declare-fun b!6778520 () Bool)

(declare-fun e!4092053 () Bool)

(assert (=> b!6778520 (= e!4092055 e!4092053)))

(declare-fun res!2770911 () Bool)

(assert (=> b!6778520 (= res!2770911 (not ((_ is EmptyLang!16601) lt!2444369)))))

(assert (=> b!6778520 (=> (not res!2770911) (not e!4092053))))

(declare-fun b!6778521 () Bool)

(declare-fun c!1259094 () Bool)

(assert (=> b!6778521 (= c!1259094 ((_ is Union!16601) lt!2444369))))

(declare-fun e!4092059 () Bool)

(assert (=> b!6778521 (= e!4092059 e!4092057)))

(declare-fun d!2129490 () Bool)

(declare-fun c!1259095 () Bool)

(assert (=> d!2129490 (= c!1259095 ((_ is EmptyExpr!16601) lt!2444369))))

(assert (=> d!2129490 (= (matchRSpec!3702 lt!2444369 s!2326) e!4092055)))

(declare-fun e!4092058 () Bool)

(declare-fun call!614835 () Bool)

(assert (=> b!6778522 (= e!4092058 call!614835)))

(declare-fun b!6778523 () Bool)

(declare-fun res!2770912 () Bool)

(assert (=> b!6778523 (=> res!2770912 e!4092058)))

(assert (=> b!6778523 (= res!2770912 call!614834)))

(assert (=> b!6778523 (= e!4092056 e!4092058)))

(declare-fun b!6778524 () Bool)

(declare-fun e!4092054 () Bool)

(assert (=> b!6778524 (= e!4092057 e!4092054)))

(declare-fun res!2770913 () Bool)

(assert (=> b!6778524 (= res!2770913 (matchRSpec!3702 (regOne!33715 lt!2444369) s!2326))))

(assert (=> b!6778524 (=> res!2770913 e!4092054)))

(declare-fun bm!614829 () Bool)

(assert (=> bm!614829 (= call!614835 (Exists!3669 (ite c!1259093 lambda!381472 lambda!381473)))))

(declare-fun b!6778525 () Bool)

(assert (=> b!6778525 (= e!4092054 (matchRSpec!3702 (regTwo!33715 lt!2444369) s!2326))))

(declare-fun bm!614830 () Bool)

(assert (=> bm!614830 (= call!614834 (isEmpty!38337 s!2326))))

(declare-fun b!6778526 () Bool)

(assert (=> b!6778526 (= e!4092059 (= s!2326 (Cons!65978 (c!1258869 lt!2444369) Nil!65978)))))

(declare-fun b!6778527 () Bool)

(declare-fun c!1259096 () Bool)

(assert (=> b!6778527 (= c!1259096 ((_ is ElementMatch!16601) lt!2444369))))

(assert (=> b!6778527 (= e!4092053 e!4092059)))

(assert (=> b!6778528 (= e!4092056 call!614835)))

(assert (= (and d!2129490 c!1259095) b!6778518))

(assert (= (and d!2129490 (not c!1259095)) b!6778520))

(assert (= (and b!6778520 res!2770911) b!6778527))

(assert (= (and b!6778527 c!1259096) b!6778526))

(assert (= (and b!6778527 (not c!1259096)) b!6778521))

(assert (= (and b!6778521 c!1259094) b!6778524))

(assert (= (and b!6778521 (not c!1259094)) b!6778519))

(assert (= (and b!6778524 (not res!2770913)) b!6778525))

(assert (= (and b!6778519 c!1259093) b!6778523))

(assert (= (and b!6778519 (not c!1259093)) b!6778528))

(assert (= (and b!6778523 (not res!2770912)) b!6778522))

(assert (= (or b!6778522 b!6778528) bm!614829))

(assert (= (or b!6778518 b!6778523) bm!614830))

(declare-fun m!7527520 () Bool)

(assert (=> b!6778524 m!7527520))

(declare-fun m!7527522 () Bool)

(assert (=> bm!614829 m!7527522))

(declare-fun m!7527524 () Bool)

(assert (=> b!6778525 m!7527524))

(assert (=> bm!614830 m!7526878))

(assert (=> b!6777706 d!2129490))

(declare-fun b!6778529 () Bool)

(declare-fun e!4092060 () Bool)

(declare-fun e!4092063 () Bool)

(assert (=> b!6778529 (= e!4092060 e!4092063)))

(declare-fun c!1259099 () Bool)

(assert (=> b!6778529 (= c!1259099 ((_ is EmptyLang!16601) lt!2444369))))

(declare-fun b!6778530 () Bool)

(declare-fun res!2770914 () Bool)

(declare-fun e!4092061 () Bool)

(assert (=> b!6778530 (=> res!2770914 e!4092061)))

(declare-fun e!4092064 () Bool)

(assert (=> b!6778530 (= res!2770914 e!4092064)))

(declare-fun res!2770920 () Bool)

(assert (=> b!6778530 (=> (not res!2770920) (not e!4092064))))

(declare-fun lt!2444515 () Bool)

(assert (=> b!6778530 (= res!2770920 lt!2444515)))

(declare-fun b!6778531 () Bool)

(declare-fun e!4092066 () Bool)

(assert (=> b!6778531 (= e!4092061 e!4092066)))

(declare-fun res!2770916 () Bool)

(assert (=> b!6778531 (=> (not res!2770916) (not e!4092066))))

(assert (=> b!6778531 (= res!2770916 (not lt!2444515))))

(declare-fun b!6778532 () Bool)

(declare-fun res!2770917 () Bool)

(assert (=> b!6778532 (=> (not res!2770917) (not e!4092064))))

(declare-fun call!614836 () Bool)

(assert (=> b!6778532 (= res!2770917 (not call!614836))))

(declare-fun b!6778533 () Bool)

(assert (=> b!6778533 (= e!4092063 (not lt!2444515))))

(declare-fun b!6778534 () Bool)

(assert (=> b!6778534 (= e!4092060 (= lt!2444515 call!614836))))

(declare-fun b!6778535 () Bool)

(declare-fun res!2770918 () Bool)

(assert (=> b!6778535 (=> res!2770918 e!4092061)))

(assert (=> b!6778535 (= res!2770918 (not ((_ is ElementMatch!16601) lt!2444369)))))

(assert (=> b!6778535 (= e!4092063 e!4092061)))

(declare-fun b!6778536 () Bool)

(declare-fun e!4092062 () Bool)

(assert (=> b!6778536 (= e!4092062 (not (= (head!13614 s!2326) (c!1258869 lt!2444369))))))

(declare-fun b!6778537 () Bool)

(declare-fun res!2770915 () Bool)

(assert (=> b!6778537 (=> res!2770915 e!4092062)))

(assert (=> b!6778537 (= res!2770915 (not (isEmpty!38337 (tail!12699 s!2326))))))

(declare-fun b!6778538 () Bool)

(assert (=> b!6778538 (= e!4092066 e!4092062)))

(declare-fun res!2770921 () Bool)

(assert (=> b!6778538 (=> res!2770921 e!4092062)))

(assert (=> b!6778538 (= res!2770921 call!614836)))

(declare-fun b!6778539 () Bool)

(declare-fun e!4092065 () Bool)

(assert (=> b!6778539 (= e!4092065 (matchR!8784 (derivativeStep!5265 lt!2444369 (head!13614 s!2326)) (tail!12699 s!2326)))))

(declare-fun b!6778540 () Bool)

(assert (=> b!6778540 (= e!4092065 (nullable!6580 lt!2444369))))

(declare-fun bm!614831 () Bool)

(assert (=> bm!614831 (= call!614836 (isEmpty!38337 s!2326))))

(declare-fun d!2129492 () Bool)

(assert (=> d!2129492 e!4092060))

(declare-fun c!1259097 () Bool)

(assert (=> d!2129492 (= c!1259097 ((_ is EmptyExpr!16601) lt!2444369))))

(assert (=> d!2129492 (= lt!2444515 e!4092065)))

(declare-fun c!1259098 () Bool)

(assert (=> d!2129492 (= c!1259098 (isEmpty!38337 s!2326))))

(assert (=> d!2129492 (validRegex!8337 lt!2444369)))

(assert (=> d!2129492 (= (matchR!8784 lt!2444369 s!2326) lt!2444515)))

(declare-fun b!6778541 () Bool)

(assert (=> b!6778541 (= e!4092064 (= (head!13614 s!2326) (c!1258869 lt!2444369)))))

(declare-fun b!6778542 () Bool)

(declare-fun res!2770919 () Bool)

(assert (=> b!6778542 (=> (not res!2770919) (not e!4092064))))

(assert (=> b!6778542 (= res!2770919 (isEmpty!38337 (tail!12699 s!2326)))))

(assert (= (and d!2129492 c!1259098) b!6778540))

(assert (= (and d!2129492 (not c!1259098)) b!6778539))

(assert (= (and d!2129492 c!1259097) b!6778534))

(assert (= (and d!2129492 (not c!1259097)) b!6778529))

(assert (= (and b!6778529 c!1259099) b!6778533))

(assert (= (and b!6778529 (not c!1259099)) b!6778535))

(assert (= (and b!6778535 (not res!2770918)) b!6778530))

(assert (= (and b!6778530 res!2770920) b!6778532))

(assert (= (and b!6778532 res!2770917) b!6778542))

(assert (= (and b!6778542 res!2770919) b!6778541))

(assert (= (and b!6778530 (not res!2770914)) b!6778531))

(assert (= (and b!6778531 res!2770916) b!6778538))

(assert (= (and b!6778538 (not res!2770921)) b!6778537))

(assert (= (and b!6778537 (not res!2770915)) b!6778536))

(assert (= (or b!6778534 b!6778538 b!6778532) bm!614831))

(assert (=> b!6778537 m!7527126))

(assert (=> b!6778537 m!7527126))

(assert (=> b!6778537 m!7527128))

(assert (=> b!6778536 m!7527130))

(declare-fun m!7527526 () Bool)

(assert (=> b!6778540 m!7527526))

(assert (=> b!6778541 m!7527130))

(assert (=> b!6778539 m!7527130))

(assert (=> b!6778539 m!7527130))

(declare-fun m!7527528 () Bool)

(assert (=> b!6778539 m!7527528))

(assert (=> b!6778539 m!7527126))

(assert (=> b!6778539 m!7527528))

(assert (=> b!6778539 m!7527126))

(declare-fun m!7527530 () Bool)

(assert (=> b!6778539 m!7527530))

(assert (=> d!2129492 m!7526878))

(declare-fun m!7527532 () Bool)

(assert (=> d!2129492 m!7527532))

(assert (=> bm!614831 m!7526878))

(assert (=> b!6778542 m!7527126))

(assert (=> b!6778542 m!7527126))

(assert (=> b!6778542 m!7527128))

(assert (=> b!6777706 d!2129492))

(declare-fun d!2129494 () Bool)

(assert (=> d!2129494 (= (matchR!8784 lt!2444369 s!2326) (matchRSpec!3702 lt!2444369 s!2326))))

(declare-fun lt!2444516 () Unit!159893)

(assert (=> d!2129494 (= lt!2444516 (choose!50476 lt!2444369 s!2326))))

(assert (=> d!2129494 (validRegex!8337 lt!2444369)))

(assert (=> d!2129494 (= (mainMatchTheorem!3702 lt!2444369 s!2326) lt!2444516)))

(declare-fun bs!1805079 () Bool)

(assert (= bs!1805079 d!2129494))

(assert (=> bs!1805079 m!7526844))

(assert (=> bs!1805079 m!7526842))

(declare-fun m!7527534 () Bool)

(assert (=> bs!1805079 m!7527534))

(assert (=> bs!1805079 m!7527532))

(assert (=> b!6777706 d!2129494))

(assert (=> b!6777725 d!2129422))

(assert (=> b!6777725 d!2129372))

(declare-fun b!6778561 () Bool)

(declare-fun e!4092081 () Bool)

(declare-fun call!614844 () Bool)

(assert (=> b!6778561 (= e!4092081 call!614844)))

(declare-fun d!2129496 () Bool)

(declare-fun res!2770934 () Bool)

(declare-fun e!4092082 () Bool)

(assert (=> d!2129496 (=> res!2770934 e!4092082)))

(assert (=> d!2129496 (= res!2770934 ((_ is ElementMatch!16601) r!7292))))

(assert (=> d!2129496 (= (validRegex!8337 r!7292) e!4092082)))

(declare-fun b!6778562 () Bool)

(declare-fun e!4092087 () Bool)

(assert (=> b!6778562 (= e!4092087 e!4092081)))

(declare-fun res!2770936 () Bool)

(assert (=> b!6778562 (= res!2770936 (not (nullable!6580 (reg!16930 r!7292))))))

(assert (=> b!6778562 (=> (not res!2770936) (not e!4092081))))

(declare-fun c!1259105 () Bool)

(declare-fun c!1259104 () Bool)

(declare-fun bm!614838 () Bool)

(assert (=> bm!614838 (= call!614844 (validRegex!8337 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))

(declare-fun bm!614839 () Bool)

(declare-fun call!614843 () Bool)

(assert (=> bm!614839 (= call!614843 call!614844)))

(declare-fun b!6778563 () Bool)

(declare-fun res!2770933 () Bool)

(declare-fun e!4092083 () Bool)

(assert (=> b!6778563 (=> (not res!2770933) (not e!4092083))))

(assert (=> b!6778563 (= res!2770933 call!614843)))

(declare-fun e!4092084 () Bool)

(assert (=> b!6778563 (= e!4092084 e!4092083)))

(declare-fun b!6778564 () Bool)

(declare-fun res!2770935 () Bool)

(declare-fun e!4092086 () Bool)

(assert (=> b!6778564 (=> res!2770935 e!4092086)))

(assert (=> b!6778564 (= res!2770935 (not ((_ is Concat!25446) r!7292)))))

(assert (=> b!6778564 (= e!4092084 e!4092086)))

(declare-fun b!6778565 () Bool)

(assert (=> b!6778565 (= e!4092082 e!4092087)))

(assert (=> b!6778565 (= c!1259104 ((_ is Star!16601) r!7292))))

(declare-fun bm!614840 () Bool)

(declare-fun call!614845 () Bool)

(assert (=> bm!614840 (= call!614845 (validRegex!8337 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))

(declare-fun b!6778566 () Bool)

(assert (=> b!6778566 (= e!4092083 call!614845)))

(declare-fun b!6778567 () Bool)

(declare-fun e!4092085 () Bool)

(assert (=> b!6778567 (= e!4092085 call!614845)))

(declare-fun b!6778568 () Bool)

(assert (=> b!6778568 (= e!4092087 e!4092084)))

(assert (=> b!6778568 (= c!1259105 ((_ is Union!16601) r!7292))))

(declare-fun b!6778569 () Bool)

(assert (=> b!6778569 (= e!4092086 e!4092085)))

(declare-fun res!2770932 () Bool)

(assert (=> b!6778569 (=> (not res!2770932) (not e!4092085))))

(assert (=> b!6778569 (= res!2770932 call!614843)))

(assert (= (and d!2129496 (not res!2770934)) b!6778565))

(assert (= (and b!6778565 c!1259104) b!6778562))

(assert (= (and b!6778565 (not c!1259104)) b!6778568))

(assert (= (and b!6778562 res!2770936) b!6778561))

(assert (= (and b!6778568 c!1259105) b!6778563))

(assert (= (and b!6778568 (not c!1259105)) b!6778564))

(assert (= (and b!6778563 res!2770933) b!6778566))

(assert (= (and b!6778564 (not res!2770935)) b!6778569))

(assert (= (and b!6778569 res!2770932) b!6778567))

(assert (= (or b!6778566 b!6778567) bm!614840))

(assert (= (or b!6778563 b!6778569) bm!614839))

(assert (= (or b!6778561 bm!614839) bm!614838))

(assert (=> b!6778562 m!7527376))

(declare-fun m!7527536 () Bool)

(assert (=> bm!614838 m!7527536))

(declare-fun m!7527538 () Bool)

(assert (=> bm!614840 m!7527538))

(assert (=> start!656036 d!2129496))

(assert (=> b!6777726 d!2129422))

(declare-fun b!6778580 () Bool)

(declare-fun e!4092090 () Bool)

(assert (=> b!6778580 (= e!4092090 tp_is_empty!42455)))

(declare-fun b!6778582 () Bool)

(declare-fun tp!1857380 () Bool)

(assert (=> b!6778582 (= e!4092090 tp!1857380)))

(declare-fun b!6778583 () Bool)

(declare-fun tp!1857381 () Bool)

(declare-fun tp!1857382 () Bool)

(assert (=> b!6778583 (= e!4092090 (and tp!1857381 tp!1857382))))

(assert (=> b!6777722 (= tp!1857300 e!4092090)))

(declare-fun b!6778581 () Bool)

(declare-fun tp!1857378 () Bool)

(declare-fun tp!1857379 () Bool)

(assert (=> b!6778581 (= e!4092090 (and tp!1857378 tp!1857379))))

(assert (= (and b!6777722 ((_ is ElementMatch!16601) (regOne!33714 r!7292))) b!6778580))

(assert (= (and b!6777722 ((_ is Concat!25446) (regOne!33714 r!7292))) b!6778581))

(assert (= (and b!6777722 ((_ is Star!16601) (regOne!33714 r!7292))) b!6778582))

(assert (= (and b!6777722 ((_ is Union!16601) (regOne!33714 r!7292))) b!6778583))

(declare-fun b!6778584 () Bool)

(declare-fun e!4092091 () Bool)

(assert (=> b!6778584 (= e!4092091 tp_is_empty!42455)))

(declare-fun b!6778586 () Bool)

(declare-fun tp!1857385 () Bool)

(assert (=> b!6778586 (= e!4092091 tp!1857385)))

(declare-fun b!6778587 () Bool)

(declare-fun tp!1857386 () Bool)

(declare-fun tp!1857387 () Bool)

(assert (=> b!6778587 (= e!4092091 (and tp!1857386 tp!1857387))))

(assert (=> b!6777722 (= tp!1857306 e!4092091)))

(declare-fun b!6778585 () Bool)

(declare-fun tp!1857383 () Bool)

(declare-fun tp!1857384 () Bool)

(assert (=> b!6778585 (= e!4092091 (and tp!1857383 tp!1857384))))

(assert (= (and b!6777722 ((_ is ElementMatch!16601) (regTwo!33714 r!7292))) b!6778584))

(assert (= (and b!6777722 ((_ is Concat!25446) (regTwo!33714 r!7292))) b!6778585))

(assert (= (and b!6777722 ((_ is Star!16601) (regTwo!33714 r!7292))) b!6778586))

(assert (= (and b!6777722 ((_ is Union!16601) (regTwo!33714 r!7292))) b!6778587))

(declare-fun b!6778588 () Bool)

(declare-fun e!4092092 () Bool)

(assert (=> b!6778588 (= e!4092092 tp_is_empty!42455)))

(declare-fun b!6778590 () Bool)

(declare-fun tp!1857390 () Bool)

(assert (=> b!6778590 (= e!4092092 tp!1857390)))

(declare-fun b!6778591 () Bool)

(declare-fun tp!1857391 () Bool)

(declare-fun tp!1857392 () Bool)

(assert (=> b!6778591 (= e!4092092 (and tp!1857391 tp!1857392))))

(assert (=> b!6777709 (= tp!1857303 e!4092092)))

(declare-fun b!6778589 () Bool)

(declare-fun tp!1857388 () Bool)

(declare-fun tp!1857389 () Bool)

(assert (=> b!6778589 (= e!4092092 (and tp!1857388 tp!1857389))))

(assert (= (and b!6777709 ((_ is ElementMatch!16601) (reg!16930 r!7292))) b!6778588))

(assert (= (and b!6777709 ((_ is Concat!25446) (reg!16930 r!7292))) b!6778589))

(assert (= (and b!6777709 ((_ is Star!16601) (reg!16930 r!7292))) b!6778590))

(assert (= (and b!6777709 ((_ is Union!16601) (reg!16930 r!7292))) b!6778591))

(declare-fun b!6778592 () Bool)

(declare-fun e!4092093 () Bool)

(assert (=> b!6778592 (= e!4092093 tp_is_empty!42455)))

(declare-fun b!6778594 () Bool)

(declare-fun tp!1857395 () Bool)

(assert (=> b!6778594 (= e!4092093 tp!1857395)))

(declare-fun b!6778595 () Bool)

(declare-fun tp!1857396 () Bool)

(declare-fun tp!1857397 () Bool)

(assert (=> b!6778595 (= e!4092093 (and tp!1857396 tp!1857397))))

(assert (=> b!6777724 (= tp!1857305 e!4092093)))

(declare-fun b!6778593 () Bool)

(declare-fun tp!1857393 () Bool)

(declare-fun tp!1857394 () Bool)

(assert (=> b!6778593 (= e!4092093 (and tp!1857393 tp!1857394))))

(assert (= (and b!6777724 ((_ is ElementMatch!16601) (regOne!33715 r!7292))) b!6778592))

(assert (= (and b!6777724 ((_ is Concat!25446) (regOne!33715 r!7292))) b!6778593))

(assert (= (and b!6777724 ((_ is Star!16601) (regOne!33715 r!7292))) b!6778594))

(assert (= (and b!6777724 ((_ is Union!16601) (regOne!33715 r!7292))) b!6778595))

(declare-fun b!6778596 () Bool)

(declare-fun e!4092094 () Bool)

(assert (=> b!6778596 (= e!4092094 tp_is_empty!42455)))

(declare-fun b!6778598 () Bool)

(declare-fun tp!1857400 () Bool)

(assert (=> b!6778598 (= e!4092094 tp!1857400)))

(declare-fun b!6778599 () Bool)

(declare-fun tp!1857401 () Bool)

(declare-fun tp!1857402 () Bool)

(assert (=> b!6778599 (= e!4092094 (and tp!1857401 tp!1857402))))

(assert (=> b!6777724 (= tp!1857309 e!4092094)))

(declare-fun b!6778597 () Bool)

(declare-fun tp!1857398 () Bool)

(declare-fun tp!1857399 () Bool)

(assert (=> b!6778597 (= e!4092094 (and tp!1857398 tp!1857399))))

(assert (= (and b!6777724 ((_ is ElementMatch!16601) (regTwo!33715 r!7292))) b!6778596))

(assert (= (and b!6777724 ((_ is Concat!25446) (regTwo!33715 r!7292))) b!6778597))

(assert (= (and b!6777724 ((_ is Star!16601) (regTwo!33715 r!7292))) b!6778598))

(assert (= (and b!6777724 ((_ is Union!16601) (regTwo!33715 r!7292))) b!6778599))

(declare-fun b!6778604 () Bool)

(declare-fun e!4092097 () Bool)

(declare-fun tp!1857407 () Bool)

(declare-fun tp!1857408 () Bool)

(assert (=> b!6778604 (= e!4092097 (and tp!1857407 tp!1857408))))

(assert (=> b!6777714 (= tp!1857301 e!4092097)))

(assert (= (and b!6777714 ((_ is Cons!65979) (exprs!6485 setElem!46351))) b!6778604))

(declare-fun condSetEmpty!46357 () Bool)

(assert (=> setNonEmpty!46351 (= condSetEmpty!46357 (= setRest!46351 ((as const (Array Context!11970 Bool)) false)))))

(declare-fun setRes!46357 () Bool)

(assert (=> setNonEmpty!46351 (= tp!1857308 setRes!46357)))

(declare-fun setIsEmpty!46357 () Bool)

(assert (=> setIsEmpty!46357 setRes!46357))

(declare-fun setNonEmpty!46357 () Bool)

(declare-fun tp!1857414 () Bool)

(declare-fun setElem!46357 () Context!11970)

(declare-fun e!4092100 () Bool)

(assert (=> setNonEmpty!46357 (= setRes!46357 (and tp!1857414 (inv!84749 setElem!46357) e!4092100))))

(declare-fun setRest!46357 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46357 (= setRest!46351 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46357 true) setRest!46357))))

(declare-fun b!6778609 () Bool)

(declare-fun tp!1857413 () Bool)

(assert (=> b!6778609 (= e!4092100 tp!1857413)))

(assert (= (and setNonEmpty!46351 condSetEmpty!46357) setIsEmpty!46357))

(assert (= (and setNonEmpty!46351 (not condSetEmpty!46357)) setNonEmpty!46357))

(assert (= setNonEmpty!46357 b!6778609))

(declare-fun m!7527540 () Bool)

(assert (=> setNonEmpty!46357 m!7527540))

(declare-fun b!6778617 () Bool)

(declare-fun e!4092106 () Bool)

(declare-fun tp!1857419 () Bool)

(assert (=> b!6778617 (= e!4092106 tp!1857419)))

(declare-fun e!4092105 () Bool)

(declare-fun b!6778616 () Bool)

(declare-fun tp!1857420 () Bool)

(assert (=> b!6778616 (= e!4092105 (and (inv!84749 (h!72428 (t!379817 zl!343))) e!4092106 tp!1857420))))

(assert (=> b!6777720 (= tp!1857307 e!4092105)))

(assert (= b!6778616 b!6778617))

(assert (= (and b!6777720 ((_ is Cons!65980) (t!379817 zl!343))) b!6778616))

(declare-fun m!7527542 () Bool)

(assert (=> b!6778616 m!7527542))

(declare-fun b!6778622 () Bool)

(declare-fun e!4092109 () Bool)

(declare-fun tp!1857423 () Bool)

(assert (=> b!6778622 (= e!4092109 (and tp_is_empty!42455 tp!1857423))))

(assert (=> b!6777712 (= tp!1857304 e!4092109)))

(assert (= (and b!6777712 ((_ is Cons!65978) (t!379815 s!2326))) b!6778622))

(declare-fun b!6778623 () Bool)

(declare-fun e!4092110 () Bool)

(declare-fun tp!1857424 () Bool)

(declare-fun tp!1857425 () Bool)

(assert (=> b!6778623 (= e!4092110 (and tp!1857424 tp!1857425))))

(assert (=> b!6777716 (= tp!1857302 e!4092110)))

(assert (= (and b!6777716 ((_ is Cons!65979) (exprs!6485 (h!72428 zl!343)))) b!6778623))

(declare-fun b_lambda!255219 () Bool)

(assert (= b_lambda!255217 (or b!6777699 b_lambda!255219)))

(declare-fun bs!1805080 () Bool)

(declare-fun d!2129498 () Bool)

(assert (= bs!1805080 (and d!2129498 b!6777699)))

(assert (=> bs!1805080 (= (dynLambda!26326 lambda!381389 lt!2444384) (derivationStepZipperUp!1755 lt!2444384 (h!72426 s!2326)))))

(assert (=> bs!1805080 m!7526806))

(assert (=> d!2129472 d!2129498))

(declare-fun b_lambda!255221 () Bool)

(assert (= b_lambda!255215 (or b!6777699 b_lambda!255221)))

(declare-fun bs!1805081 () Bool)

(declare-fun d!2129500 () Bool)

(assert (= bs!1805081 (and d!2129500 b!6777699)))

(assert (=> bs!1805081 (= (dynLambda!26326 lambda!381389 lt!2444367) (derivationStepZipperUp!1755 lt!2444367 (h!72426 s!2326)))))

(assert (=> bs!1805081 m!7526798))

(assert (=> d!2129466 d!2129500))

(declare-fun b_lambda!255223 () Bool)

(assert (= b_lambda!255211 (or b!6777699 b_lambda!255223)))

(declare-fun bs!1805082 () Bool)

(declare-fun d!2129502 () Bool)

(assert (= bs!1805082 (and d!2129502 b!6777699)))

(assert (=> bs!1805082 (= (dynLambda!26326 lambda!381389 (h!72428 zl!343)) (derivationStepZipperUp!1755 (h!72428 zl!343) (h!72426 s!2326)))))

(assert (=> bs!1805082 m!7526870))

(assert (=> d!2129446 d!2129502))

(declare-fun b_lambda!255225 () Bool)

(assert (= b_lambda!255213 (or b!6777699 b_lambda!255225)))

(declare-fun bs!1805083 () Bool)

(declare-fun d!2129504 () Bool)

(assert (= bs!1805083 (and d!2129504 b!6777699)))

(assert (=> bs!1805083 (= (dynLambda!26326 lambda!381389 lt!2444380) (derivationStepZipperUp!1755 lt!2444380 (h!72426 s!2326)))))

(assert (=> bs!1805083 m!7526898))

(assert (=> d!2129454 d!2129504))

(check-sat (not b!6778494) (not d!2129446) (not b!6778581) (not d!2129484) (not d!2129368) (not b!6778587) (not d!2129466) (not bs!1805080) (not d!2129450) (not setNonEmpty!46357) tp_is_empty!42455 (not b!6778381) (not b!6778599) (not d!2129458) (not d!2129478) (not d!2129418) (not d!2129442) (not b!6778065) (not bm!614818) (not b!6778383) (not bm!614817) (not d!2129374) (not b!6778514) (not b!6778170) (not b!6778585) (not b!6778540) (not bs!1805081) (not d!2129354) (not b!6778511) (not b!6778482) (not b!6778453) (not b_lambda!255219) (not b!6778562) (not b!6778516) (not d!2129426) (not b!6778542) (not d!2129492) (not b!6778515) (not bs!1805083) (not b!6778437) (not b!6778378) (not b!6778597) (not bm!614823) (not b!6778598) (not b!6778525) (not b!6777876) (not b!6778622) (not d!2129366) (not bm!614838) (not d!2129464) (not b!6778136) (not b!6778368) (not b!6778475) (not b!6778493) (not b!6778354) (not d!2129486) (not b_lambda!255221) (not bm!614775) (not b!6778350) (not b!6778499) (not d!2129432) (not b!6778417) (not b!6778623) (not b!6778479) (not d!2129282) (not d!2129460) (not b!6778346) (not b!6777870) (not d!2129360) (not b!6778369) (not b!6778524) (not bm!614827) (not d!2129462) (not b!6778508) (not b!6778069) (not bm!614814) (not b!6778137) (not bm!614829) (not b!6778609) (not b!6778591) (not b!6778135) (not b!6777871) (not bs!1805082) (not d!2129430) (not b!6778582) (not b!6778510) (not b!6778382) (not b!6778483) (not b!6778595) (not b!6778379) (not bm!614824) (not b_lambda!255223) (not b!6777983) (not b!6778067) (not d!2129420) (not bm!614822) (not b!6778616) (not b!6778431) (not b!6778349) (not b!6778448) (not d!2129482) (not d!2129424) (not bm!614826) (not b!6778604) (not b!6778590) (not b!6778586) (not b!6778498) (not bm!614772) (not b!6778384) (not d!2129456) (not b!6778480) (not b!6778352) (not b!6777868) (not bm!614812) (not bm!614831) (not d!2129414) (not d!2129488) (not d!2129454) (not bm!614813) (not d!2129474) (not d!2129350) (not bm!614828) (not b!6778064) (not b!6778452) (not bm!614840) (not b!6778589) (not b!6778593) (not b!6778594) (not b!6778347) (not b!6778436) (not d!2129344) (not b!6778478) (not b!6778539) (not b!6778070) (not d!2129472) (not b!6778507) (not b!6777872) (not b!6778617) (not bm!614796) (not b!6778134) (not b_lambda!255225) (not d!2129434) (not b!6778068) (not d!2129468) (not d!2129422) (not d!2129396) (not b!6778541) (not b!6778476) (not b!6778512) (not b!6777874) (not b!6777873) (not d!2129352) (not bm!614830) (not d!2129372) (not d!2129440) (not bm!614825) (not b!6778517) (not bm!614771) (not b!6778513) (not b!6778432) (not d!2129330) (not d!2129480) (not d!2129494) (not b!6778537) (not b!6778488) (not b!6778583) (not b!6778536) (not b!6777984))
(check-sat)
(get-model)

(declare-fun d!2129652 () Bool)

(assert (=> d!2129652 (= (flatMap!2082 z!1189 lambda!381459) (choose!50484 z!1189 lambda!381459))))

(declare-fun bs!1805174 () Bool)

(assert (= bs!1805174 d!2129652))

(declare-fun m!7527798 () Bool)

(assert (=> bs!1805174 m!7527798))

(assert (=> d!2129440 d!2129652))

(assert (=> d!2129492 d!2129416))

(declare-fun b!6778856 () Bool)

(declare-fun e!4092256 () Bool)

(declare-fun call!614896 () Bool)

(assert (=> b!6778856 (= e!4092256 call!614896)))

(declare-fun d!2129654 () Bool)

(declare-fun res!2771033 () Bool)

(declare-fun e!4092257 () Bool)

(assert (=> d!2129654 (=> res!2771033 e!4092257)))

(assert (=> d!2129654 (= res!2771033 ((_ is ElementMatch!16601) lt!2444369))))

(assert (=> d!2129654 (= (validRegex!8337 lt!2444369) e!4092257)))

(declare-fun b!6778857 () Bool)

(declare-fun e!4092262 () Bool)

(assert (=> b!6778857 (= e!4092262 e!4092256)))

(declare-fun res!2771035 () Bool)

(assert (=> b!6778857 (= res!2771035 (not (nullable!6580 (reg!16930 lt!2444369))))))

(assert (=> b!6778857 (=> (not res!2771035) (not e!4092256))))

(declare-fun c!1259178 () Bool)

(declare-fun bm!614890 () Bool)

(declare-fun c!1259177 () Bool)

(assert (=> bm!614890 (= call!614896 (validRegex!8337 (ite c!1259177 (reg!16930 lt!2444369) (ite c!1259178 (regOne!33715 lt!2444369) (regOne!33714 lt!2444369)))))))

(declare-fun bm!614891 () Bool)

(declare-fun call!614895 () Bool)

(assert (=> bm!614891 (= call!614895 call!614896)))

(declare-fun b!6778858 () Bool)

(declare-fun res!2771032 () Bool)

(declare-fun e!4092258 () Bool)

(assert (=> b!6778858 (=> (not res!2771032) (not e!4092258))))

(assert (=> b!6778858 (= res!2771032 call!614895)))

(declare-fun e!4092259 () Bool)

(assert (=> b!6778858 (= e!4092259 e!4092258)))

(declare-fun b!6778859 () Bool)

(declare-fun res!2771034 () Bool)

(declare-fun e!4092261 () Bool)

(assert (=> b!6778859 (=> res!2771034 e!4092261)))

(assert (=> b!6778859 (= res!2771034 (not ((_ is Concat!25446) lt!2444369)))))

(assert (=> b!6778859 (= e!4092259 e!4092261)))

(declare-fun b!6778860 () Bool)

(assert (=> b!6778860 (= e!4092257 e!4092262)))

(assert (=> b!6778860 (= c!1259177 ((_ is Star!16601) lt!2444369))))

(declare-fun bm!614892 () Bool)

(declare-fun call!614897 () Bool)

(assert (=> bm!614892 (= call!614897 (validRegex!8337 (ite c!1259178 (regTwo!33715 lt!2444369) (regTwo!33714 lt!2444369))))))

(declare-fun b!6778861 () Bool)

(assert (=> b!6778861 (= e!4092258 call!614897)))

(declare-fun b!6778862 () Bool)

(declare-fun e!4092260 () Bool)

(assert (=> b!6778862 (= e!4092260 call!614897)))

(declare-fun b!6778863 () Bool)

(assert (=> b!6778863 (= e!4092262 e!4092259)))

(assert (=> b!6778863 (= c!1259178 ((_ is Union!16601) lt!2444369))))

(declare-fun b!6778864 () Bool)

(assert (=> b!6778864 (= e!4092261 e!4092260)))

(declare-fun res!2771031 () Bool)

(assert (=> b!6778864 (=> (not res!2771031) (not e!4092260))))

(assert (=> b!6778864 (= res!2771031 call!614895)))

(assert (= (and d!2129654 (not res!2771033)) b!6778860))

(assert (= (and b!6778860 c!1259177) b!6778857))

(assert (= (and b!6778860 (not c!1259177)) b!6778863))

(assert (= (and b!6778857 res!2771035) b!6778856))

(assert (= (and b!6778863 c!1259178) b!6778858))

(assert (= (and b!6778863 (not c!1259178)) b!6778859))

(assert (= (and b!6778858 res!2771032) b!6778861))

(assert (= (and b!6778859 (not res!2771034)) b!6778864))

(assert (= (and b!6778864 res!2771031) b!6778862))

(assert (= (or b!6778861 b!6778862) bm!614892))

(assert (= (or b!6778858 b!6778864) bm!614891))

(assert (= (or b!6778856 bm!614891) bm!614890))

(declare-fun m!7527810 () Bool)

(assert (=> b!6778857 m!7527810))

(declare-fun m!7527812 () Bool)

(assert (=> bm!614890 m!7527812))

(declare-fun m!7527814 () Bool)

(assert (=> bm!614892 m!7527814))

(assert (=> d!2129492 d!2129654))

(declare-fun d!2129660 () Bool)

(declare-fun nullableFct!2486 (Regex!16601) Bool)

(assert (=> d!2129660 (= (nullable!6580 r!7292) (nullableFct!2486 r!7292))))

(declare-fun bs!1805175 () Bool)

(assert (= bs!1805175 d!2129660))

(declare-fun m!7527816 () Bool)

(assert (=> bs!1805175 m!7527816))

(assert (=> b!6778068 d!2129660))

(declare-fun d!2129666 () Bool)

(assert (=> d!2129666 (= (head!13614 (_1!36879 lt!2444385)) (h!72426 (_1!36879 lt!2444385)))))

(assert (=> b!6778383 d!2129666))

(declare-fun b!6778876 () Bool)

(declare-fun e!4092269 () Bool)

(declare-fun e!4092272 () Bool)

(assert (=> b!6778876 (= e!4092269 e!4092272)))

(declare-fun c!1259186 () Bool)

(assert (=> b!6778876 (= c!1259186 ((_ is EmptyLang!16601) r!7292))))

(declare-fun b!6778877 () Bool)

(declare-fun res!2771038 () Bool)

(declare-fun e!4092270 () Bool)

(assert (=> b!6778877 (=> res!2771038 e!4092270)))

(declare-fun e!4092273 () Bool)

(assert (=> b!6778877 (= res!2771038 e!4092273)))

(declare-fun res!2771044 () Bool)

(assert (=> b!6778877 (=> (not res!2771044) (not e!4092273))))

(declare-fun lt!2444528 () Bool)

(assert (=> b!6778877 (= res!2771044 lt!2444528)))

(declare-fun b!6778878 () Bool)

(declare-fun e!4092275 () Bool)

(assert (=> b!6778878 (= e!4092270 e!4092275)))

(declare-fun res!2771040 () Bool)

(assert (=> b!6778878 (=> (not res!2771040) (not e!4092275))))

(assert (=> b!6778878 (= res!2771040 (not lt!2444528))))

(declare-fun b!6778879 () Bool)

(declare-fun res!2771041 () Bool)

(assert (=> b!6778879 (=> (not res!2771041) (not e!4092273))))

(declare-fun call!614904 () Bool)

(assert (=> b!6778879 (= res!2771041 (not call!614904))))

(declare-fun b!6778880 () Bool)

(assert (=> b!6778880 (= e!4092272 (not lt!2444528))))

(declare-fun b!6778881 () Bool)

(assert (=> b!6778881 (= e!4092269 (= lt!2444528 call!614904))))

(declare-fun b!6778882 () Bool)

(declare-fun res!2771042 () Bool)

(assert (=> b!6778882 (=> res!2771042 e!4092270)))

(assert (=> b!6778882 (= res!2771042 (not ((_ is ElementMatch!16601) r!7292)))))

(assert (=> b!6778882 (= e!4092272 e!4092270)))

(declare-fun b!6778883 () Bool)

(declare-fun e!4092271 () Bool)

(assert (=> b!6778883 (= e!4092271 (not (= (head!13614 (_2!36879 (get!22971 lt!2444488))) (c!1258869 r!7292))))))

(declare-fun b!6778884 () Bool)

(declare-fun res!2771039 () Bool)

(assert (=> b!6778884 (=> res!2771039 e!4092271)))

(assert (=> b!6778884 (= res!2771039 (not (isEmpty!38337 (tail!12699 (_2!36879 (get!22971 lt!2444488))))))))

(declare-fun b!6778885 () Bool)

(assert (=> b!6778885 (= e!4092275 e!4092271)))

(declare-fun res!2771045 () Bool)

(assert (=> b!6778885 (=> res!2771045 e!4092271)))

(assert (=> b!6778885 (= res!2771045 call!614904)))

(declare-fun b!6778886 () Bool)

(declare-fun e!4092274 () Bool)

(assert (=> b!6778886 (= e!4092274 (matchR!8784 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 (get!22971 lt!2444488)))) (tail!12699 (_2!36879 (get!22971 lt!2444488)))))))

(declare-fun b!6778887 () Bool)

(assert (=> b!6778887 (= e!4092274 (nullable!6580 r!7292))))

(declare-fun bm!614899 () Bool)

(assert (=> bm!614899 (= call!614904 (isEmpty!38337 (_2!36879 (get!22971 lt!2444488))))))

(declare-fun d!2129668 () Bool)

(assert (=> d!2129668 e!4092269))

(declare-fun c!1259184 () Bool)

(assert (=> d!2129668 (= c!1259184 ((_ is EmptyExpr!16601) r!7292))))

(assert (=> d!2129668 (= lt!2444528 e!4092274)))

(declare-fun c!1259185 () Bool)

(assert (=> d!2129668 (= c!1259185 (isEmpty!38337 (_2!36879 (get!22971 lt!2444488))))))

(assert (=> d!2129668 (validRegex!8337 r!7292)))

(assert (=> d!2129668 (= (matchR!8784 r!7292 (_2!36879 (get!22971 lt!2444488))) lt!2444528)))

(declare-fun b!6778888 () Bool)

(assert (=> b!6778888 (= e!4092273 (= (head!13614 (_2!36879 (get!22971 lt!2444488))) (c!1258869 r!7292)))))

(declare-fun b!6778889 () Bool)

(declare-fun res!2771043 () Bool)

(assert (=> b!6778889 (=> (not res!2771043) (not e!4092273))))

(assert (=> b!6778889 (= res!2771043 (isEmpty!38337 (tail!12699 (_2!36879 (get!22971 lt!2444488)))))))

(assert (= (and d!2129668 c!1259185) b!6778887))

(assert (= (and d!2129668 (not c!1259185)) b!6778886))

(assert (= (and d!2129668 c!1259184) b!6778881))

(assert (= (and d!2129668 (not c!1259184)) b!6778876))

(assert (= (and b!6778876 c!1259186) b!6778880))

(assert (= (and b!6778876 (not c!1259186)) b!6778882))

(assert (= (and b!6778882 (not res!2771042)) b!6778877))

(assert (= (and b!6778877 res!2771044) b!6778879))

(assert (= (and b!6778879 res!2771041) b!6778889))

(assert (= (and b!6778889 res!2771043) b!6778888))

(assert (= (and b!6778877 (not res!2771038)) b!6778878))

(assert (= (and b!6778878 res!2771040) b!6778885))

(assert (= (and b!6778885 (not res!2771045)) b!6778884))

(assert (= (and b!6778884 (not res!2771039)) b!6778883))

(assert (= (or b!6778881 b!6778885 b!6778879) bm!614899))

(declare-fun m!7527836 () Bool)

(assert (=> b!6778884 m!7527836))

(assert (=> b!6778884 m!7527836))

(declare-fun m!7527838 () Bool)

(assert (=> b!6778884 m!7527838))

(declare-fun m!7527840 () Bool)

(assert (=> b!6778883 m!7527840))

(assert (=> b!6778887 m!7527132))

(assert (=> b!6778888 m!7527840))

(assert (=> b!6778886 m!7527840))

(assert (=> b!6778886 m!7527840))

(declare-fun m!7527842 () Bool)

(assert (=> b!6778886 m!7527842))

(assert (=> b!6778886 m!7527836))

(assert (=> b!6778886 m!7527842))

(assert (=> b!6778886 m!7527836))

(declare-fun m!7527844 () Bool)

(assert (=> b!6778886 m!7527844))

(declare-fun m!7527846 () Bool)

(assert (=> d!2129668 m!7527846))

(assert (=> d!2129668 m!7526812))

(assert (=> bm!614899 m!7527846))

(assert (=> b!6778889 m!7527836))

(assert (=> b!6778889 m!7527836))

(assert (=> b!6778889 m!7527838))

(assert (=> b!6778346 d!2129668))

(declare-fun d!2129678 () Bool)

(assert (=> d!2129678 (= (get!22971 lt!2444488) (v!52693 lt!2444488))))

(assert (=> b!6778346 d!2129678))

(declare-fun d!2129680 () Bool)

(assert (=> d!2129680 (= (head!13614 s!2326) (h!72426 s!2326))))

(assert (=> b!6778064 d!2129680))

(declare-fun d!2129682 () Bool)

(assert (=> d!2129682 (= (isDefined!13191 lt!2444488) (not (isEmpty!38342 lt!2444488)))))

(declare-fun bs!1805177 () Bool)

(assert (= bs!1805177 d!2129682))

(declare-fun m!7527848 () Bool)

(assert (=> bs!1805177 m!7527848))

(assert (=> b!6778350 d!2129682))

(declare-fun d!2129684 () Bool)

(assert (=> d!2129684 (= (isEmpty!38340 (exprs!6485 (h!72428 zl!343))) ((_ is Nil!65979) (exprs!6485 (h!72428 zl!343))))))

(assert (=> b!6777871 d!2129684))

(assert (=> d!2129350 d!2129416))

(declare-fun bm!614906 () Bool)

(declare-fun call!614912 () List!66103)

(declare-fun call!614915 () List!66103)

(assert (=> bm!614906 (= call!614912 call!614915)))

(declare-fun bm!614907 () Bool)

(declare-fun call!614913 () (InoxSet Context!11970))

(declare-fun call!614916 () (InoxSet Context!11970))

(assert (=> bm!614907 (= call!614913 call!614916)))

(declare-fun b!6778919 () Bool)

(declare-fun e!4092293 () (InoxSet Context!11970))

(declare-fun e!4092291 () (InoxSet Context!11970))

(assert (=> b!6778919 (= e!4092293 e!4092291)))

(declare-fun c!1259201 () Bool)

(assert (=> b!6778919 (= c!1259201 ((_ is Concat!25446) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))))))

(declare-fun bm!614908 () Bool)

(declare-fun call!614911 () (InoxSet Context!11970))

(assert (=> bm!614908 (= call!614911 call!614913)))

(declare-fun b!6778920 () Bool)

(assert (=> b!6778920 (= e!4092291 call!614911)))

(declare-fun bm!614909 () Bool)

(declare-fun c!1259198 () Bool)

(assert (=> bm!614909 (= call!614915 ($colon$colon!2410 (exprs!6485 (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815))) (ite (or c!1259198 c!1259201) (regTwo!33714 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))))))))

(declare-fun d!2129686 () Bool)

(declare-fun c!1259199 () Bool)

(assert (=> d!2129686 (= c!1259199 (and ((_ is ElementMatch!16601) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (= (c!1258869 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (h!72426 s!2326))))))

(declare-fun e!4092295 () (InoxSet Context!11970))

(assert (=> d!2129686 (= (derivationStepZipperDown!1829 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))) (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815)) (h!72426 s!2326)) e!4092295)))

(declare-fun b!6778921 () Bool)

(declare-fun c!1259200 () Bool)

(assert (=> b!6778921 (= c!1259200 ((_ is Star!16601) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))))))

(declare-fun e!4092292 () (InoxSet Context!11970))

(assert (=> b!6778921 (= e!4092291 e!4092292)))

(declare-fun call!614914 () (InoxSet Context!11970))

(declare-fun c!1259197 () Bool)

(declare-fun bm!614910 () Bool)

(assert (=> bm!614910 (= call!614914 (derivationStepZipperDown!1829 (ite c!1259197 (regTwo!33715 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (regOne!33714 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))))) (ite c!1259197 (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815)) (Context!11971 call!614915)) (h!72426 s!2326)))))

(declare-fun b!6778922 () Bool)

(assert (=> b!6778922 (= e!4092295 (store ((as const (Array Context!11970 Bool)) false) (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815)) true))))

(declare-fun b!6778923 () Bool)

(declare-fun e!4092296 () (InoxSet Context!11970))

(assert (=> b!6778923 (= e!4092296 ((_ map or) call!614916 call!614914))))

(declare-fun b!6778924 () Bool)

(assert (=> b!6778924 (= e!4092292 call!614911)))

(declare-fun b!6778925 () Bool)

(assert (=> b!6778925 (= e!4092295 e!4092296)))

(assert (=> b!6778925 (= c!1259197 ((_ is Union!16601) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))))))

(declare-fun b!6778926 () Bool)

(assert (=> b!6778926 (= e!4092293 ((_ map or) call!614914 call!614913))))

(declare-fun b!6778927 () Bool)

(assert (=> b!6778927 (= e!4092292 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6778928 () Bool)

(declare-fun e!4092294 () Bool)

(assert (=> b!6778928 (= c!1259198 e!4092294)))

(declare-fun res!2771055 () Bool)

(assert (=> b!6778928 (=> (not res!2771055) (not e!4092294))))

(assert (=> b!6778928 (= res!2771055 ((_ is Concat!25446) (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))))))

(assert (=> b!6778928 (= e!4092296 e!4092293)))

(declare-fun b!6778929 () Bool)

(assert (=> b!6778929 (= e!4092294 (nullable!6580 (regOne!33714 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))))))))

(declare-fun bm!614911 () Bool)

(assert (=> bm!614911 (= call!614916 (derivationStepZipperDown!1829 (ite c!1259197 (regOne!33715 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (ite c!1259198 (regTwo!33714 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (ite c!1259201 (regOne!33714 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292))))) (reg!16930 (ite c!1259049 (regOne!33715 r!7292) (ite c!1259050 (regTwo!33714 r!7292) (ite c!1259053 (regOne!33714 r!7292) (reg!16930 r!7292)))))))) (ite (or c!1259197 c!1259198) (ite (or c!1259049 c!1259050) (Context!11971 Nil!65979) (Context!11971 call!614815)) (Context!11971 call!614912)) (h!72426 s!2326)))))

(assert (= (and d!2129686 c!1259199) b!6778922))

(assert (= (and d!2129686 (not c!1259199)) b!6778925))

(assert (= (and b!6778925 c!1259197) b!6778923))

(assert (= (and b!6778925 (not c!1259197)) b!6778928))

(assert (= (and b!6778928 res!2771055) b!6778929))

(assert (= (and b!6778928 c!1259198) b!6778926))

(assert (= (and b!6778928 (not c!1259198)) b!6778919))

(assert (= (and b!6778919 c!1259201) b!6778920))

(assert (= (and b!6778919 (not c!1259201)) b!6778921))

(assert (= (and b!6778921 c!1259200) b!6778924))

(assert (= (and b!6778921 (not c!1259200)) b!6778927))

(assert (= (or b!6778920 b!6778924) bm!614906))

(assert (= (or b!6778920 b!6778924) bm!614908))

(assert (= (or b!6778926 bm!614906) bm!614909))

(assert (= (or b!6778926 bm!614908) bm!614907))

(assert (= (or b!6778923 b!6778926) bm!614910))

(assert (= (or b!6778923 bm!614907) bm!614911))

(declare-fun m!7527868 () Bool)

(assert (=> bm!614911 m!7527868))

(declare-fun m!7527870 () Bool)

(assert (=> bm!614909 m!7527870))

(declare-fun m!7527872 () Bool)

(assert (=> bm!614910 m!7527872))

(declare-fun m!7527874 () Bool)

(assert (=> b!6778929 m!7527874))

(declare-fun m!7527876 () Bool)

(assert (=> b!6778922 m!7527876))

(assert (=> bm!614814 d!2129686))

(declare-fun d!2129692 () Bool)

(assert (=> d!2129692 (= (head!13614 (_2!36879 lt!2444385)) (h!72426 (_2!36879 lt!2444385)))))

(assert (=> b!6778512 d!2129692))

(assert (=> bm!614772 d!2129416))

(declare-fun d!2129694 () Bool)

(assert (=> d!2129694 true))

(declare-fun setRes!46364 () Bool)

(assert (=> d!2129694 setRes!46364))

(declare-fun condSetEmpty!46364 () Bool)

(declare-fun res!2771063 () (InoxSet Context!11970))

(assert (=> d!2129694 (= condSetEmpty!46364 (= res!2771063 ((as const (Array Context!11970 Bool)) false)))))

(assert (=> d!2129694 (= (choose!50484 z!1189 lambda!381389) res!2771063)))

(declare-fun setIsEmpty!46364 () Bool)

(assert (=> setIsEmpty!46364 setRes!46364))

(declare-fun setElem!46364 () Context!11970)

(declare-fun setNonEmpty!46364 () Bool)

(declare-fun tp!1857445 () Bool)

(declare-fun e!4092308 () Bool)

(assert (=> setNonEmpty!46364 (= setRes!46364 (and tp!1857445 (inv!84749 setElem!46364) e!4092308))))

(declare-fun setRest!46364 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46364 (= res!2771063 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46364 true) setRest!46364))))

(declare-fun b!6778947 () Bool)

(declare-fun tp!1857444 () Bool)

(assert (=> b!6778947 (= e!4092308 tp!1857444)))

(assert (= (and d!2129694 condSetEmpty!46364) setIsEmpty!46364))

(assert (= (and d!2129694 (not condSetEmpty!46364)) setNonEmpty!46364))

(assert (= setNonEmpty!46364 b!6778947))

(declare-fun m!7527892 () Bool)

(assert (=> setNonEmpty!46364 m!7527892))

(assert (=> d!2129442 d!2129694))

(declare-fun d!2129700 () Bool)

(assert (=> d!2129700 (= (isEmpty!38337 (tail!12699 s!2326)) ((_ is Nil!65978) (tail!12699 s!2326)))))

(assert (=> b!6778537 d!2129700))

(declare-fun d!2129702 () Bool)

(assert (=> d!2129702 (= (tail!12699 s!2326) (t!379815 s!2326))))

(assert (=> b!6778537 d!2129702))

(declare-fun d!2129704 () Bool)

(assert (=> d!2129704 (= (isEmpty!38337 (_1!36879 lt!2444385)) ((_ is Nil!65978) (_1!36879 lt!2444385)))))

(assert (=> d!2129434 d!2129704))

(declare-fun b!6778948 () Bool)

(declare-fun e!4092309 () Bool)

(declare-fun call!614920 () Bool)

(assert (=> b!6778948 (= e!4092309 call!614920)))

(declare-fun d!2129706 () Bool)

(declare-fun res!2771066 () Bool)

(declare-fun e!4092310 () Bool)

(assert (=> d!2129706 (=> res!2771066 e!4092310)))

(assert (=> d!2129706 (= res!2771066 ((_ is ElementMatch!16601) (reg!16930 r!7292)))))

(assert (=> d!2129706 (= (validRegex!8337 (reg!16930 r!7292)) e!4092310)))

(declare-fun b!6778949 () Bool)

(declare-fun e!4092315 () Bool)

(assert (=> b!6778949 (= e!4092315 e!4092309)))

(declare-fun res!2771068 () Bool)

(assert (=> b!6778949 (= res!2771068 (not (nullable!6580 (reg!16930 (reg!16930 r!7292)))))))

(assert (=> b!6778949 (=> (not res!2771068) (not e!4092309))))

(declare-fun bm!614914 () Bool)

(declare-fun c!1259208 () Bool)

(declare-fun c!1259207 () Bool)

(assert (=> bm!614914 (= call!614920 (validRegex!8337 (ite c!1259207 (reg!16930 (reg!16930 r!7292)) (ite c!1259208 (regOne!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))))))

(declare-fun bm!614915 () Bool)

(declare-fun call!614919 () Bool)

(assert (=> bm!614915 (= call!614919 call!614920)))

(declare-fun b!6778950 () Bool)

(declare-fun res!2771065 () Bool)

(declare-fun e!4092311 () Bool)

(assert (=> b!6778950 (=> (not res!2771065) (not e!4092311))))

(assert (=> b!6778950 (= res!2771065 call!614919)))

(declare-fun e!4092312 () Bool)

(assert (=> b!6778950 (= e!4092312 e!4092311)))

(declare-fun b!6778951 () Bool)

(declare-fun res!2771067 () Bool)

(declare-fun e!4092314 () Bool)

(assert (=> b!6778951 (=> res!2771067 e!4092314)))

(assert (=> b!6778951 (= res!2771067 (not ((_ is Concat!25446) (reg!16930 r!7292))))))

(assert (=> b!6778951 (= e!4092312 e!4092314)))

(declare-fun b!6778952 () Bool)

(assert (=> b!6778952 (= e!4092310 e!4092315)))

(assert (=> b!6778952 (= c!1259207 ((_ is Star!16601) (reg!16930 r!7292)))))

(declare-fun bm!614916 () Bool)

(declare-fun call!614921 () Bool)

(assert (=> bm!614916 (= call!614921 (validRegex!8337 (ite c!1259208 (regTwo!33715 (reg!16930 r!7292)) (regTwo!33714 (reg!16930 r!7292)))))))

(declare-fun b!6778953 () Bool)

(assert (=> b!6778953 (= e!4092311 call!614921)))

(declare-fun b!6778954 () Bool)

(declare-fun e!4092313 () Bool)

(assert (=> b!6778954 (= e!4092313 call!614921)))

(declare-fun b!6778955 () Bool)

(assert (=> b!6778955 (= e!4092315 e!4092312)))

(assert (=> b!6778955 (= c!1259208 ((_ is Union!16601) (reg!16930 r!7292)))))

(declare-fun b!6778956 () Bool)

(assert (=> b!6778956 (= e!4092314 e!4092313)))

(declare-fun res!2771064 () Bool)

(assert (=> b!6778956 (=> (not res!2771064) (not e!4092313))))

(assert (=> b!6778956 (= res!2771064 call!614919)))

(assert (= (and d!2129706 (not res!2771066)) b!6778952))

(assert (= (and b!6778952 c!1259207) b!6778949))

(assert (= (and b!6778952 (not c!1259207)) b!6778955))

(assert (= (and b!6778949 res!2771068) b!6778948))

(assert (= (and b!6778955 c!1259208) b!6778950))

(assert (= (and b!6778955 (not c!1259208)) b!6778951))

(assert (= (and b!6778950 res!2771065) b!6778953))

(assert (= (and b!6778951 (not res!2771067)) b!6778956))

(assert (= (and b!6778956 res!2771064) b!6778954))

(assert (= (or b!6778953 b!6778954) bm!614916))

(assert (= (or b!6778950 b!6778956) bm!614915))

(assert (= (or b!6778948 bm!614915) bm!614914))

(declare-fun m!7527894 () Bool)

(assert (=> b!6778949 m!7527894))

(declare-fun m!7527896 () Bool)

(assert (=> bm!614914 m!7527896))

(declare-fun m!7527898 () Bool)

(assert (=> bm!614916 m!7527898))

(assert (=> d!2129434 d!2129706))

(declare-fun bm!614917 () Bool)

(declare-fun call!614923 () List!66103)

(declare-fun call!614926 () List!66103)

(assert (=> bm!614917 (= call!614923 call!614926)))

(declare-fun bm!614918 () Bool)

(declare-fun call!614924 () (InoxSet Context!11970))

(declare-fun call!614927 () (InoxSet Context!11970))

(assert (=> bm!614918 (= call!614924 call!614927)))

(declare-fun b!6778957 () Bool)

(declare-fun e!4092318 () (InoxSet Context!11970))

(declare-fun e!4092316 () (InoxSet Context!11970))

(assert (=> b!6778957 (= e!4092318 e!4092316)))

(declare-fun c!1259213 () Bool)

(assert (=> b!6778957 (= c!1259213 ((_ is Concat!25446) (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun bm!614919 () Bool)

(declare-fun call!614922 () (InoxSet Context!11970))

(assert (=> bm!614919 (= call!614922 call!614924)))

(declare-fun b!6778958 () Bool)

(assert (=> b!6778958 (= e!4092316 call!614922)))

(declare-fun bm!614920 () Bool)

(declare-fun c!1259210 () Bool)

(assert (=> bm!614920 (= call!614926 ($colon$colon!2410 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343))))) (ite (or c!1259210 c!1259213) (regTwo!33714 (h!72427 (exprs!6485 (h!72428 zl!343)))) (h!72427 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun d!2129708 () Bool)

(declare-fun c!1259211 () Bool)

(assert (=> d!2129708 (= c!1259211 (and ((_ is ElementMatch!16601) (h!72427 (exprs!6485 (h!72428 zl!343)))) (= (c!1258869 (h!72427 (exprs!6485 (h!72428 zl!343)))) (h!72426 s!2326))))))

(declare-fun e!4092320 () (InoxSet Context!11970))

(assert (=> d!2129708 (= (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (h!72428 zl!343))) (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (h!72426 s!2326)) e!4092320)))

(declare-fun b!6778959 () Bool)

(declare-fun c!1259212 () Bool)

(assert (=> b!6778959 (= c!1259212 ((_ is Star!16601) (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun e!4092317 () (InoxSet Context!11970))

(assert (=> b!6778959 (= e!4092316 e!4092317)))

(declare-fun c!1259209 () Bool)

(declare-fun call!614925 () (InoxSet Context!11970))

(declare-fun bm!614921 () Bool)

(assert (=> bm!614921 (= call!614925 (derivationStepZipperDown!1829 (ite c!1259209 (regTwo!33715 (h!72427 (exprs!6485 (h!72428 zl!343)))) (regOne!33714 (h!72427 (exprs!6485 (h!72428 zl!343))))) (ite c!1259209 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (Context!11971 call!614926)) (h!72426 s!2326)))))

(declare-fun b!6778960 () Bool)

(assert (=> b!6778960 (= e!4092320 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) true))))

(declare-fun b!6778961 () Bool)

(declare-fun e!4092321 () (InoxSet Context!11970))

(assert (=> b!6778961 (= e!4092321 ((_ map or) call!614927 call!614925))))

(declare-fun b!6778962 () Bool)

(assert (=> b!6778962 (= e!4092317 call!614922)))

(declare-fun b!6778963 () Bool)

(assert (=> b!6778963 (= e!4092320 e!4092321)))

(assert (=> b!6778963 (= c!1259209 ((_ is Union!16601) (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6778964 () Bool)

(assert (=> b!6778964 (= e!4092318 ((_ map or) call!614925 call!614924))))

(declare-fun b!6778965 () Bool)

(assert (=> b!6778965 (= e!4092317 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6778966 () Bool)

(declare-fun e!4092319 () Bool)

(assert (=> b!6778966 (= c!1259210 e!4092319)))

(declare-fun res!2771069 () Bool)

(assert (=> b!6778966 (=> (not res!2771069) (not e!4092319))))

(assert (=> b!6778966 (= res!2771069 ((_ is Concat!25446) (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> b!6778966 (= e!4092321 e!4092318)))

(declare-fun b!6778967 () Bool)

(assert (=> b!6778967 (= e!4092319 (nullable!6580 (regOne!33714 (h!72427 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun bm!614922 () Bool)

(assert (=> bm!614922 (= call!614927 (derivationStepZipperDown!1829 (ite c!1259209 (regOne!33715 (h!72427 (exprs!6485 (h!72428 zl!343)))) (ite c!1259210 (regTwo!33714 (h!72427 (exprs!6485 (h!72428 zl!343)))) (ite c!1259213 (regOne!33714 (h!72427 (exprs!6485 (h!72428 zl!343)))) (reg!16930 (h!72427 (exprs!6485 (h!72428 zl!343))))))) (ite (or c!1259209 c!1259210) (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (Context!11971 call!614923)) (h!72426 s!2326)))))

(assert (= (and d!2129708 c!1259211) b!6778960))

(assert (= (and d!2129708 (not c!1259211)) b!6778963))

(assert (= (and b!6778963 c!1259209) b!6778961))

(assert (= (and b!6778963 (not c!1259209)) b!6778966))

(assert (= (and b!6778966 res!2771069) b!6778967))

(assert (= (and b!6778966 c!1259210) b!6778964))

(assert (= (and b!6778966 (not c!1259210)) b!6778957))

(assert (= (and b!6778957 c!1259213) b!6778958))

(assert (= (and b!6778957 (not c!1259213)) b!6778959))

(assert (= (and b!6778959 c!1259212) b!6778962))

(assert (= (and b!6778959 (not c!1259212)) b!6778965))

(assert (= (or b!6778958 b!6778962) bm!614917))

(assert (= (or b!6778958 b!6778962) bm!614919))

(assert (= (or b!6778964 bm!614917) bm!614920))

(assert (= (or b!6778964 bm!614919) bm!614918))

(assert (= (or b!6778961 b!6778964) bm!614921))

(assert (= (or b!6778961 bm!614918) bm!614922))

(declare-fun m!7527900 () Bool)

(assert (=> bm!614922 m!7527900))

(declare-fun m!7527902 () Bool)

(assert (=> bm!614920 m!7527902))

(declare-fun m!7527904 () Bool)

(assert (=> bm!614921 m!7527904))

(declare-fun m!7527906 () Bool)

(assert (=> b!6778967 m!7527906))

(declare-fun m!7527908 () Bool)

(assert (=> b!6778960 m!7527908))

(assert (=> bm!614818 d!2129708))

(declare-fun bm!614923 () Bool)

(declare-fun call!614929 () List!66103)

(declare-fun call!614932 () List!66103)

(assert (=> bm!614923 (= call!614929 call!614932)))

(declare-fun bm!614924 () Bool)

(declare-fun call!614930 () (InoxSet Context!11970))

(declare-fun call!614933 () (InoxSet Context!11970))

(assert (=> bm!614924 (= call!614930 call!614933)))

(declare-fun b!6778968 () Bool)

(declare-fun e!4092324 () (InoxSet Context!11970))

(declare-fun e!4092322 () (InoxSet Context!11970))

(assert (=> b!6778968 (= e!4092324 e!4092322)))

(declare-fun c!1259218 () Bool)

(assert (=> b!6778968 (= c!1259218 ((_ is Concat!25446) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))))))

(declare-fun bm!614925 () Bool)

(declare-fun call!614928 () (InoxSet Context!11970))

(assert (=> bm!614925 (= call!614928 call!614930)))

(declare-fun b!6778969 () Bool)

(assert (=> b!6778969 (= e!4092322 call!614928)))

(declare-fun bm!614926 () Bool)

(declare-fun c!1259215 () Bool)

(assert (=> bm!614926 (= call!614932 ($colon$colon!2410 (exprs!6485 (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825))) (ite (or c!1259215 c!1259218) (regTwo!33714 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))))))))

(declare-fun d!2129710 () Bool)

(declare-fun c!1259216 () Bool)

(assert (=> d!2129710 (= c!1259216 (and ((_ is ElementMatch!16601) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (= (c!1258869 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (h!72426 s!2326))))))

(declare-fun e!4092326 () (InoxSet Context!11970))

(assert (=> d!2129710 (= (derivationStepZipperDown!1829 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))) (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825)) (h!72426 s!2326)) e!4092326)))

(declare-fun c!1259217 () Bool)

(declare-fun b!6778970 () Bool)

(assert (=> b!6778970 (= c!1259217 ((_ is Star!16601) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))))))

(declare-fun e!4092323 () (InoxSet Context!11970))

(assert (=> b!6778970 (= e!4092322 e!4092323)))

(declare-fun bm!614927 () Bool)

(declare-fun c!1259214 () Bool)

(declare-fun call!614931 () (InoxSet Context!11970))

(assert (=> bm!614927 (= call!614931 (derivationStepZipperDown!1829 (ite c!1259214 (regTwo!33715 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (regOne!33714 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))))) (ite c!1259214 (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825)) (Context!11971 call!614932)) (h!72426 s!2326)))))

(declare-fun b!6778971 () Bool)

(assert (=> b!6778971 (= e!4092326 (store ((as const (Array Context!11970 Bool)) false) (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825)) true))))

(declare-fun b!6778972 () Bool)

(declare-fun e!4092327 () (InoxSet Context!11970))

(assert (=> b!6778972 (= e!4092327 ((_ map or) call!614933 call!614931))))

(declare-fun b!6778973 () Bool)

(assert (=> b!6778973 (= e!4092323 call!614928)))

(declare-fun b!6778974 () Bool)

(assert (=> b!6778974 (= e!4092326 e!4092327)))

(assert (=> b!6778974 (= c!1259214 ((_ is Union!16601) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))))))

(declare-fun b!6778975 () Bool)

(assert (=> b!6778975 (= e!4092324 ((_ map or) call!614931 call!614930))))

(declare-fun b!6778976 () Bool)

(assert (=> b!6778976 (= e!4092323 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6778977 () Bool)

(declare-fun e!4092325 () Bool)

(assert (=> b!6778977 (= c!1259215 e!4092325)))

(declare-fun res!2771070 () Bool)

(assert (=> b!6778977 (=> (not res!2771070) (not e!4092325))))

(assert (=> b!6778977 (= res!2771070 ((_ is Concat!25446) (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))))))

(assert (=> b!6778977 (= e!4092327 e!4092324)))

(declare-fun b!6778978 () Bool)

(assert (=> b!6778978 (= e!4092325 (nullable!6580 (regOne!33714 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))))))))

(declare-fun bm!614928 () Bool)

(assert (=> bm!614928 (= call!614933 (derivationStepZipperDown!1829 (ite c!1259214 (regOne!33715 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (ite c!1259215 (regTwo!33714 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (ite c!1259218 (regOne!33714 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292)))))) (reg!16930 (ite c!1259062 (regOne!33715 (reg!16930 r!7292)) (ite c!1259063 (regTwo!33714 (reg!16930 r!7292)) (ite c!1259066 (regOne!33714 (reg!16930 r!7292)) (reg!16930 (reg!16930 r!7292))))))))) (ite (or c!1259214 c!1259215) (ite (or c!1259062 c!1259063) lt!2444384 (Context!11971 call!614825)) (Context!11971 call!614929)) (h!72426 s!2326)))))

(assert (= (and d!2129710 c!1259216) b!6778971))

(assert (= (and d!2129710 (not c!1259216)) b!6778974))

(assert (= (and b!6778974 c!1259214) b!6778972))

(assert (= (and b!6778974 (not c!1259214)) b!6778977))

(assert (= (and b!6778977 res!2771070) b!6778978))

(assert (= (and b!6778977 c!1259215) b!6778975))

(assert (= (and b!6778977 (not c!1259215)) b!6778968))

(assert (= (and b!6778968 c!1259218) b!6778969))

(assert (= (and b!6778968 (not c!1259218)) b!6778970))

(assert (= (and b!6778970 c!1259217) b!6778973))

(assert (= (and b!6778970 (not c!1259217)) b!6778976))

(assert (= (or b!6778969 b!6778973) bm!614923))

(assert (= (or b!6778969 b!6778973) bm!614925))

(assert (= (or b!6778975 bm!614923) bm!614926))

(assert (= (or b!6778975 bm!614925) bm!614924))

(assert (= (or b!6778972 b!6778975) bm!614927))

(assert (= (or b!6778972 bm!614924) bm!614928))

(declare-fun m!7527910 () Bool)

(assert (=> bm!614928 m!7527910))

(declare-fun m!7527912 () Bool)

(assert (=> bm!614926 m!7527912))

(declare-fun m!7527914 () Bool)

(assert (=> bm!614927 m!7527914))

(declare-fun m!7527916 () Bool)

(assert (=> b!6778978 m!7527916))

(declare-fun m!7527918 () Bool)

(assert (=> b!6778971 m!7527918))

(assert (=> bm!614824 d!2129710))

(declare-fun b!6778979 () Bool)

(declare-fun e!4092328 () Bool)

(declare-fun e!4092331 () Bool)

(assert (=> b!6778979 (= e!4092328 e!4092331)))

(declare-fun c!1259221 () Bool)

(assert (=> b!6778979 (= c!1259221 ((_ is EmptyLang!16601) (reg!16930 r!7292)))))

(declare-fun b!6778980 () Bool)

(declare-fun res!2771071 () Bool)

(declare-fun e!4092329 () Bool)

(assert (=> b!6778980 (=> res!2771071 e!4092329)))

(declare-fun e!4092332 () Bool)

(assert (=> b!6778980 (= res!2771071 e!4092332)))

(declare-fun res!2771077 () Bool)

(assert (=> b!6778980 (=> (not res!2771077) (not e!4092332))))

(declare-fun lt!2444532 () Bool)

(assert (=> b!6778980 (= res!2771077 lt!2444532)))

(declare-fun b!6778981 () Bool)

(declare-fun e!4092334 () Bool)

(assert (=> b!6778981 (= e!4092329 e!4092334)))

(declare-fun res!2771073 () Bool)

(assert (=> b!6778981 (=> (not res!2771073) (not e!4092334))))

(assert (=> b!6778981 (= res!2771073 (not lt!2444532))))

(declare-fun b!6778982 () Bool)

(declare-fun res!2771074 () Bool)

(assert (=> b!6778982 (=> (not res!2771074) (not e!4092332))))

(declare-fun call!614934 () Bool)

(assert (=> b!6778982 (= res!2771074 (not call!614934))))

(declare-fun b!6778983 () Bool)

(assert (=> b!6778983 (= e!4092331 (not lt!2444532))))

(declare-fun b!6778984 () Bool)

(assert (=> b!6778984 (= e!4092328 (= lt!2444532 call!614934))))

(declare-fun b!6778985 () Bool)

(declare-fun res!2771075 () Bool)

(assert (=> b!6778985 (=> res!2771075 e!4092329)))

(assert (=> b!6778985 (= res!2771075 (not ((_ is ElementMatch!16601) (reg!16930 r!7292))))))

(assert (=> b!6778985 (= e!4092331 e!4092329)))

(declare-fun b!6778986 () Bool)

(declare-fun e!4092330 () Bool)

(assert (=> b!6778986 (= e!4092330 (not (= (head!13614 (_1!36879 (get!22971 lt!2444488))) (c!1258869 (reg!16930 r!7292)))))))

(declare-fun b!6778987 () Bool)

(declare-fun res!2771072 () Bool)

(assert (=> b!6778987 (=> res!2771072 e!4092330)))

(assert (=> b!6778987 (= res!2771072 (not (isEmpty!38337 (tail!12699 (_1!36879 (get!22971 lt!2444488))))))))

(declare-fun b!6778988 () Bool)

(assert (=> b!6778988 (= e!4092334 e!4092330)))

(declare-fun res!2771078 () Bool)

(assert (=> b!6778988 (=> res!2771078 e!4092330)))

(assert (=> b!6778988 (= res!2771078 call!614934)))

(declare-fun b!6778989 () Bool)

(declare-fun e!4092333 () Bool)

(assert (=> b!6778989 (= e!4092333 (matchR!8784 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 (get!22971 lt!2444488)))) (tail!12699 (_1!36879 (get!22971 lt!2444488)))))))

(declare-fun b!6778990 () Bool)

(assert (=> b!6778990 (= e!4092333 (nullable!6580 (reg!16930 r!7292)))))

(declare-fun bm!614929 () Bool)

(assert (=> bm!614929 (= call!614934 (isEmpty!38337 (_1!36879 (get!22971 lt!2444488))))))

(declare-fun d!2129712 () Bool)

(assert (=> d!2129712 e!4092328))

(declare-fun c!1259219 () Bool)

(assert (=> d!2129712 (= c!1259219 ((_ is EmptyExpr!16601) (reg!16930 r!7292)))))

(assert (=> d!2129712 (= lt!2444532 e!4092333)))

(declare-fun c!1259220 () Bool)

(assert (=> d!2129712 (= c!1259220 (isEmpty!38337 (_1!36879 (get!22971 lt!2444488))))))

(assert (=> d!2129712 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2129712 (= (matchR!8784 (reg!16930 r!7292) (_1!36879 (get!22971 lt!2444488))) lt!2444532)))

(declare-fun b!6778991 () Bool)

(assert (=> b!6778991 (= e!4092332 (= (head!13614 (_1!36879 (get!22971 lt!2444488))) (c!1258869 (reg!16930 r!7292))))))

(declare-fun b!6778992 () Bool)

(declare-fun res!2771076 () Bool)

(assert (=> b!6778992 (=> (not res!2771076) (not e!4092332))))

(assert (=> b!6778992 (= res!2771076 (isEmpty!38337 (tail!12699 (_1!36879 (get!22971 lt!2444488)))))))

(assert (= (and d!2129712 c!1259220) b!6778990))

(assert (= (and d!2129712 (not c!1259220)) b!6778989))

(assert (= (and d!2129712 c!1259219) b!6778984))

(assert (= (and d!2129712 (not c!1259219)) b!6778979))

(assert (= (and b!6778979 c!1259221) b!6778983))

(assert (= (and b!6778979 (not c!1259221)) b!6778985))

(assert (= (and b!6778985 (not res!2771075)) b!6778980))

(assert (= (and b!6778980 res!2771077) b!6778982))

(assert (= (and b!6778982 res!2771074) b!6778992))

(assert (= (and b!6778992 res!2771076) b!6778991))

(assert (= (and b!6778980 (not res!2771071)) b!6778981))

(assert (= (and b!6778981 res!2771073) b!6778988))

(assert (= (and b!6778988 (not res!2771078)) b!6778987))

(assert (= (and b!6778987 (not res!2771072)) b!6778986))

(assert (= (or b!6778984 b!6778988 b!6778982) bm!614929))

(declare-fun m!7527926 () Bool)

(assert (=> b!6778987 m!7527926))

(assert (=> b!6778987 m!7527926))

(declare-fun m!7527928 () Bool)

(assert (=> b!6778987 m!7527928))

(declare-fun m!7527930 () Bool)

(assert (=> b!6778986 m!7527930))

(assert (=> b!6778990 m!7527376))

(assert (=> b!6778991 m!7527930))

(assert (=> b!6778989 m!7527930))

(assert (=> b!6778989 m!7527930))

(declare-fun m!7527938 () Bool)

(assert (=> b!6778989 m!7527938))

(assert (=> b!6778989 m!7527926))

(assert (=> b!6778989 m!7527938))

(assert (=> b!6778989 m!7527926))

(declare-fun m!7527942 () Bool)

(assert (=> b!6778989 m!7527942))

(declare-fun m!7527944 () Bool)

(assert (=> d!2129712 m!7527944))

(assert (=> d!2129712 m!7527282))

(assert (=> bm!614929 m!7527944))

(assert (=> b!6778992 m!7527926))

(assert (=> b!6778992 m!7527926))

(assert (=> b!6778992 m!7527928))

(assert (=> b!6778354 d!2129712))

(assert (=> b!6778354 d!2129678))

(declare-fun b!6779012 () Bool)

(declare-fun e!4092346 () (InoxSet Context!11970))

(assert (=> b!6779012 (= e!4092346 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129720 () Bool)

(declare-fun c!1259227 () Bool)

(declare-fun e!4092345 () Bool)

(assert (=> d!2129720 (= c!1259227 e!4092345)))

(declare-fun res!2771088 () Bool)

(assert (=> d!2129720 (=> (not res!2771088) (not e!4092345))))

(assert (=> d!2129720 (= res!2771088 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367))))))))

(declare-fun e!4092347 () (InoxSet Context!11970))

(assert (=> d!2129720 (= (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (h!72426 s!2326)) e!4092347)))

(declare-fun b!6779013 () Bool)

(assert (=> b!6779013 (= e!4092347 e!4092346)))

(declare-fun c!1259228 () Bool)

(assert (=> b!6779013 (= c!1259228 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367))))))))

(declare-fun b!6779014 () Bool)

(declare-fun call!614937 () (InoxSet Context!11970))

(assert (=> b!6779014 (= e!4092346 call!614937)))

(declare-fun b!6779015 () Bool)

(assert (=> b!6779015 (= e!4092345 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367)))))))))

(declare-fun bm!614932 () Bool)

(assert (=> bm!614932 (= call!614937 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367))))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367)))))) (h!72426 s!2326)))))

(declare-fun b!6779016 () Bool)

(assert (=> b!6779016 (= e!4092347 ((_ map or) call!614937 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367)))))) (h!72426 s!2326))))))

(assert (= (and d!2129720 res!2771088) b!6779015))

(assert (= (and d!2129720 c!1259227) b!6779016))

(assert (= (and d!2129720 (not c!1259227)) b!6779013))

(assert (= (and b!6779013 c!1259228) b!6779014))

(assert (= (and b!6779013 (not c!1259228)) b!6779012))

(assert (= (or b!6779016 b!6779014) bm!614932))

(declare-fun m!7527946 () Bool)

(assert (=> b!6779015 m!7527946))

(declare-fun m!7527948 () Bool)

(assert (=> bm!614932 m!7527948))

(declare-fun m!7527950 () Bool)

(assert (=> b!6779016 m!7527950))

(assert (=> b!6778499 d!2129720))

(declare-fun d!2129722 () Bool)

(declare-fun c!1259236 () Bool)

(assert (=> d!2129722 (= c!1259236 ((_ is Nil!65980) lt!2444459))))

(declare-fun e!4092356 () (InoxSet Context!11970))

(assert (=> d!2129722 (= (content!12846 lt!2444459) e!4092356)))

(declare-fun b!6779032 () Bool)

(assert (=> b!6779032 (= e!4092356 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779033 () Bool)

(assert (=> b!6779033 (= e!4092356 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) (h!72428 lt!2444459) true) (content!12846 (t!379817 lt!2444459))))))

(assert (= (and d!2129722 c!1259236) b!6779032))

(assert (= (and d!2129722 (not c!1259236)) b!6779033))

(declare-fun m!7527968 () Bool)

(assert (=> b!6779033 m!7527968))

(declare-fun m!7527970 () Bool)

(assert (=> b!6779033 m!7527970))

(assert (=> b!6778170 d!2129722))

(declare-fun d!2129730 () Bool)

(assert (=> d!2129730 (= (nullable!6580 (h!72427 (exprs!6485 lt!2444384))) (nullableFct!2486 (h!72427 (exprs!6485 lt!2444384))))))

(declare-fun bs!1805199 () Bool)

(assert (= bs!1805199 d!2129730))

(declare-fun m!7527972 () Bool)

(assert (=> bs!1805199 m!7527972))

(assert (=> b!6778493 d!2129730))

(declare-fun d!2129734 () Bool)

(declare-fun res!2771095 () Bool)

(declare-fun e!4092368 () Bool)

(assert (=> d!2129734 (=> res!2771095 e!4092368)))

(assert (=> d!2129734 (= res!2771095 ((_ is Nil!65979) (exprs!6485 setElem!46351)))))

(assert (=> d!2129734 (= (forall!15793 (exprs!6485 setElem!46351) lambda!381462) e!4092368)))

(declare-fun b!6779051 () Bool)

(declare-fun e!4092369 () Bool)

(assert (=> b!6779051 (= e!4092368 e!4092369)))

(declare-fun res!2771096 () Bool)

(assert (=> b!6779051 (=> (not res!2771096) (not e!4092369))))

(declare-fun dynLambda!26328 (Int Regex!16601) Bool)

(assert (=> b!6779051 (= res!2771096 (dynLambda!26328 lambda!381462 (h!72427 (exprs!6485 setElem!46351))))))

(declare-fun b!6779052 () Bool)

(assert (=> b!6779052 (= e!4092369 (forall!15793 (t!379816 (exprs!6485 setElem!46351)) lambda!381462))))

(assert (= (and d!2129734 (not res!2771095)) b!6779051))

(assert (= (and b!6779051 res!2771096) b!6779052))

(declare-fun b_lambda!255233 () Bool)

(assert (=> (not b_lambda!255233) (not b!6779051)))

(declare-fun m!7527996 () Bool)

(assert (=> b!6779051 m!7527996))

(declare-fun m!7527998 () Bool)

(assert (=> b!6779052 m!7527998))

(assert (=> d!2129456 d!2129734))

(declare-fun bm!614943 () Bool)

(declare-fun call!614949 () List!66103)

(declare-fun call!614952 () List!66103)

(assert (=> bm!614943 (= call!614949 call!614952)))

(declare-fun bm!614944 () Bool)

(declare-fun call!614950 () (InoxSet Context!11970))

(declare-fun call!614953 () (InoxSet Context!11970))

(assert (=> bm!614944 (= call!614950 call!614953)))

(declare-fun b!6779053 () Bool)

(declare-fun e!4092372 () (InoxSet Context!11970))

(declare-fun e!4092370 () (InoxSet Context!11970))

(assert (=> b!6779053 (= e!4092372 e!4092370)))

(declare-fun c!1259247 () Bool)

(assert (=> b!6779053 (= c!1259247 ((_ is Concat!25446) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))))))

(declare-fun bm!614945 () Bool)

(declare-fun call!614948 () (InoxSet Context!11970))

(assert (=> bm!614945 (= call!614948 call!614950)))

(declare-fun b!6779054 () Bool)

(assert (=> b!6779054 (= e!4092370 call!614948)))

(declare-fun c!1259244 () Bool)

(declare-fun bm!614946 () Bool)

(assert (=> bm!614946 (= call!614952 ($colon$colon!2410 (exprs!6485 (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818))) (ite (or c!1259244 c!1259247) (regTwo!33714 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)))))))

(declare-fun c!1259245 () Bool)

(declare-fun d!2129742 () Bool)

(assert (=> d!2129742 (= c!1259245 (and ((_ is ElementMatch!16601) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (= (c!1258869 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (h!72426 s!2326))))))

(declare-fun e!4092374 () (InoxSet Context!11970))

(assert (=> d!2129742 (= (derivationStepZipperDown!1829 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)) (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818)) (h!72426 s!2326)) e!4092374)))

(declare-fun b!6779055 () Bool)

(declare-fun c!1259246 () Bool)

(assert (=> b!6779055 (= c!1259246 ((_ is Star!16601) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))))))

(declare-fun e!4092371 () (InoxSet Context!11970))

(assert (=> b!6779055 (= e!4092370 e!4092371)))

(declare-fun call!614951 () (InoxSet Context!11970))

(declare-fun bm!614947 () Bool)

(declare-fun c!1259243 () Bool)

(assert (=> bm!614947 (= call!614951 (derivationStepZipperDown!1829 (ite c!1259243 (regTwo!33715 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (regOne!33714 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)))) (ite c!1259243 (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818)) (Context!11971 call!614952)) (h!72426 s!2326)))))

(declare-fun b!6779056 () Bool)

(assert (=> b!6779056 (= e!4092374 (store ((as const (Array Context!11970 Bool)) false) (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818)) true))))

(declare-fun b!6779057 () Bool)

(declare-fun e!4092375 () (InoxSet Context!11970))

(assert (=> b!6779057 (= e!4092375 ((_ map or) call!614953 call!614951))))

(declare-fun b!6779058 () Bool)

(assert (=> b!6779058 (= e!4092371 call!614948)))

(declare-fun b!6779059 () Bool)

(assert (=> b!6779059 (= e!4092374 e!4092375)))

(assert (=> b!6779059 (= c!1259243 ((_ is Union!16601) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))))))

(declare-fun b!6779060 () Bool)

(assert (=> b!6779060 (= e!4092372 ((_ map or) call!614951 call!614950))))

(declare-fun b!6779061 () Bool)

(assert (=> b!6779061 (= e!4092371 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779062 () Bool)

(declare-fun e!4092373 () Bool)

(assert (=> b!6779062 (= c!1259244 e!4092373)))

(declare-fun res!2771097 () Bool)

(assert (=> b!6779062 (=> (not res!2771097) (not e!4092373))))

(assert (=> b!6779062 (= res!2771097 ((_ is Concat!25446) (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))))))

(assert (=> b!6779062 (= e!4092375 e!4092372)))

(declare-fun b!6779063 () Bool)

(assert (=> b!6779063 (= e!4092373 (nullable!6580 (regOne!33714 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)))))))

(declare-fun bm!614948 () Bool)

(assert (=> bm!614948 (= call!614953 (derivationStepZipperDown!1829 (ite c!1259243 (regOne!33715 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (ite c!1259244 (regTwo!33714 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (ite c!1259247 (regOne!33714 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292))) (reg!16930 (ite c!1259049 (regTwo!33715 r!7292) (regOne!33714 r!7292)))))) (ite (or c!1259243 c!1259244) (ite c!1259049 (Context!11971 Nil!65979) (Context!11971 call!614818)) (Context!11971 call!614949)) (h!72426 s!2326)))))

(assert (= (and d!2129742 c!1259245) b!6779056))

(assert (= (and d!2129742 (not c!1259245)) b!6779059))

(assert (= (and b!6779059 c!1259243) b!6779057))

(assert (= (and b!6779059 (not c!1259243)) b!6779062))

(assert (= (and b!6779062 res!2771097) b!6779063))

(assert (= (and b!6779062 c!1259244) b!6779060))

(assert (= (and b!6779062 (not c!1259244)) b!6779053))

(assert (= (and b!6779053 c!1259247) b!6779054))

(assert (= (and b!6779053 (not c!1259247)) b!6779055))

(assert (= (and b!6779055 c!1259246) b!6779058))

(assert (= (and b!6779055 (not c!1259246)) b!6779061))

(assert (= (or b!6779054 b!6779058) bm!614943))

(assert (= (or b!6779054 b!6779058) bm!614945))

(assert (= (or b!6779060 bm!614943) bm!614946))

(assert (= (or b!6779060 bm!614945) bm!614944))

(assert (= (or b!6779057 b!6779060) bm!614947))

(assert (= (or b!6779057 bm!614944) bm!614948))

(declare-fun m!7528004 () Bool)

(assert (=> bm!614948 m!7528004))

(declare-fun m!7528006 () Bool)

(assert (=> bm!614946 m!7528006))

(declare-fun m!7528008 () Bool)

(assert (=> bm!614947 m!7528008))

(declare-fun m!7528010 () Bool)

(assert (=> b!6779063 m!7528010))

(declare-fun m!7528012 () Bool)

(assert (=> b!6779056 m!7528012))

(assert (=> bm!614813 d!2129742))

(declare-fun bm!614949 () Bool)

(declare-fun call!614955 () List!66103)

(declare-fun call!614958 () List!66103)

(assert (=> bm!614949 (= call!614955 call!614958)))

(declare-fun bm!614950 () Bool)

(declare-fun call!614956 () (InoxSet Context!11970))

(declare-fun call!614959 () (InoxSet Context!11970))

(assert (=> bm!614950 (= call!614956 call!614959)))

(declare-fun b!6779064 () Bool)

(declare-fun e!4092378 () (InoxSet Context!11970))

(declare-fun e!4092376 () (InoxSet Context!11970))

(assert (=> b!6779064 (= e!4092378 e!4092376)))

(declare-fun c!1259252 () Bool)

(assert (=> b!6779064 (= c!1259252 ((_ is Concat!25446) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(declare-fun bm!614951 () Bool)

(declare-fun call!614954 () (InoxSet Context!11970))

(assert (=> bm!614951 (= call!614954 call!614956)))

(declare-fun b!6779065 () Bool)

(assert (=> b!6779065 (= e!4092376 call!614954)))

(declare-fun c!1259249 () Bool)

(declare-fun bm!614952 () Bool)

(assert (=> bm!614952 (= call!614958 ($colon$colon!2410 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))) (ite (or c!1259249 c!1259252) (regTwo!33714 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))))

(declare-fun d!2129748 () Bool)

(declare-fun c!1259250 () Bool)

(assert (=> d!2129748 (= c!1259250 (and ((_ is ElementMatch!16601) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (= (c!1258869 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72426 s!2326))))))

(declare-fun e!4092380 () (InoxSet Context!11970))

(assert (=> d!2129748 (= (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72426 s!2326)) e!4092380)))

(declare-fun b!6779066 () Bool)

(declare-fun c!1259251 () Bool)

(assert (=> b!6779066 (= c!1259251 ((_ is Star!16601) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(declare-fun e!4092377 () (InoxSet Context!11970))

(assert (=> b!6779066 (= e!4092376 e!4092377)))

(declare-fun c!1259248 () Bool)

(declare-fun bm!614953 () Bool)

(declare-fun call!614957 () (InoxSet Context!11970))

(assert (=> bm!614953 (= call!614957 (derivationStepZipperDown!1829 (ite c!1259248 (regTwo!33715 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (regOne!33714 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))) (ite c!1259248 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (Context!11971 call!614958)) (h!72426 s!2326)))))

(declare-fun b!6779067 () Bool)

(assert (=> b!6779067 (= e!4092380 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) true))))

(declare-fun b!6779068 () Bool)

(declare-fun e!4092381 () (InoxSet Context!11970))

(assert (=> b!6779068 (= e!4092381 ((_ map or) call!614959 call!614957))))

(declare-fun b!6779069 () Bool)

(assert (=> b!6779069 (= e!4092377 call!614954)))

(declare-fun b!6779070 () Bool)

(assert (=> b!6779070 (= e!4092380 e!4092381)))

(assert (=> b!6779070 (= c!1259248 ((_ is Union!16601) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(declare-fun b!6779071 () Bool)

(assert (=> b!6779071 (= e!4092378 ((_ map or) call!614957 call!614956))))

(declare-fun b!6779072 () Bool)

(assert (=> b!6779072 (= e!4092377 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779073 () Bool)

(declare-fun e!4092379 () Bool)

(assert (=> b!6779073 (= c!1259249 e!4092379)))

(declare-fun res!2771098 () Bool)

(assert (=> b!6779073 (=> (not res!2771098) (not e!4092379))))

(assert (=> b!6779073 (= res!2771098 ((_ is Concat!25446) (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(assert (=> b!6779073 (= e!4092381 e!4092378)))

(declare-fun b!6779074 () Bool)

(assert (=> b!6779074 (= e!4092379 (nullable!6580 (regOne!33714 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))))

(declare-fun bm!614954 () Bool)

(assert (=> bm!614954 (= call!614959 (derivationStepZipperDown!1829 (ite c!1259248 (regOne!33715 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (ite c!1259249 (regTwo!33714 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (ite c!1259252 (regOne!33714 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (reg!16930 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))) (ite (or c!1259248 c!1259249) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (Context!11971 call!614955)) (h!72426 s!2326)))))

(assert (= (and d!2129748 c!1259250) b!6779067))

(assert (= (and d!2129748 (not c!1259250)) b!6779070))

(assert (= (and b!6779070 c!1259248) b!6779068))

(assert (= (and b!6779070 (not c!1259248)) b!6779073))

(assert (= (and b!6779073 res!2771098) b!6779074))

(assert (= (and b!6779073 c!1259249) b!6779071))

(assert (= (and b!6779073 (not c!1259249)) b!6779064))

(assert (= (and b!6779064 c!1259252) b!6779065))

(assert (= (and b!6779064 (not c!1259252)) b!6779066))

(assert (= (and b!6779066 c!1259251) b!6779069))

(assert (= (and b!6779066 (not c!1259251)) b!6779072))

(assert (= (or b!6779065 b!6779069) bm!614949))

(assert (= (or b!6779065 b!6779069) bm!614951))

(assert (= (or b!6779071 bm!614949) bm!614952))

(assert (= (or b!6779071 bm!614951) bm!614950))

(assert (= (or b!6779068 b!6779071) bm!614953))

(assert (= (or b!6779068 bm!614950) bm!614954))

(declare-fun m!7528014 () Bool)

(assert (=> bm!614954 m!7528014))

(declare-fun m!7528016 () Bool)

(assert (=> bm!614952 m!7528016))

(declare-fun m!7528022 () Bool)

(assert (=> bm!614953 m!7528022))

(declare-fun m!7528024 () Bool)

(assert (=> b!6779074 m!7528024))

(declare-fun m!7528026 () Bool)

(assert (=> b!6779067 m!7528026))

(assert (=> bm!614817 d!2129748))

(assert (=> bm!614831 d!2129416))

(assert (=> bm!614830 d!2129416))

(declare-fun d!2129752 () Bool)

(declare-fun res!2771107 () Bool)

(declare-fun e!4092397 () Bool)

(assert (=> d!2129752 (=> res!2771107 e!4092397)))

(assert (=> d!2129752 (= res!2771107 ((_ is Nil!65980) lt!2444459))))

(assert (=> d!2129752 (= (noDuplicate!2385 lt!2444459) e!4092397)))

(declare-fun b!6779097 () Bool)

(declare-fun e!4092398 () Bool)

(assert (=> b!6779097 (= e!4092397 e!4092398)))

(declare-fun res!2771108 () Bool)

(assert (=> b!6779097 (=> (not res!2771108) (not e!4092398))))

(declare-fun contains!20281 (List!66104 Context!11970) Bool)

(assert (=> b!6779097 (= res!2771108 (not (contains!20281 (t!379817 lt!2444459) (h!72428 lt!2444459))))))

(declare-fun b!6779098 () Bool)

(assert (=> b!6779098 (= e!4092398 (noDuplicate!2385 (t!379817 lt!2444459)))))

(assert (= (and d!2129752 (not res!2771107)) b!6779097))

(assert (= (and b!6779097 res!2771108) b!6779098))

(declare-fun m!7528034 () Bool)

(assert (=> b!6779097 m!7528034))

(declare-fun m!7528036 () Bool)

(assert (=> b!6779098 m!7528036))

(assert (=> d!2129368 d!2129752))

(declare-fun d!2129764 () Bool)

(declare-fun e!4092405 () Bool)

(assert (=> d!2129764 e!4092405))

(declare-fun res!2771114 () Bool)

(assert (=> d!2129764 (=> (not res!2771114) (not e!4092405))))

(declare-fun res!2771113 () List!66104)

(assert (=> d!2129764 (= res!2771114 (noDuplicate!2385 res!2771113))))

(declare-fun e!4092406 () Bool)

(assert (=> d!2129764 e!4092406))

(assert (=> d!2129764 (= (choose!50477 z!1189) res!2771113)))

(declare-fun b!6779106 () Bool)

(declare-fun e!4092407 () Bool)

(declare-fun tp!1857455 () Bool)

(assert (=> b!6779106 (= e!4092407 tp!1857455)))

(declare-fun b!6779105 () Bool)

(declare-fun tp!1857454 () Bool)

(assert (=> b!6779105 (= e!4092406 (and (inv!84749 (h!72428 res!2771113)) e!4092407 tp!1857454))))

(declare-fun b!6779107 () Bool)

(assert (=> b!6779107 (= e!4092405 (= (content!12846 res!2771113) z!1189))))

(assert (= b!6779105 b!6779106))

(assert (= (and d!2129764 ((_ is Cons!65980) res!2771113)) b!6779105))

(assert (= (and d!2129764 res!2771114) b!6779107))

(declare-fun m!7528038 () Bool)

(assert (=> d!2129764 m!7528038))

(declare-fun m!7528040 () Bool)

(assert (=> b!6779105 m!7528040))

(declare-fun m!7528042 () Bool)

(assert (=> b!6779107 m!7528042))

(assert (=> d!2129368 d!2129764))

(declare-fun d!2129766 () Bool)

(assert (=> d!2129766 (= (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385))) ((_ is Nil!65978) (tail!12699 (_1!36879 lt!2444385))))))

(assert (=> b!6778379 d!2129766))

(declare-fun d!2129768 () Bool)

(assert (=> d!2129768 (= (tail!12699 (_1!36879 lt!2444385)) (t!379815 (_1!36879 lt!2444385)))))

(assert (=> b!6778379 d!2129768))

(declare-fun d!2129770 () Bool)

(assert (=> d!2129770 (= (flatMap!2082 lt!2444374 lambda!381433) (choose!50484 lt!2444374 lambda!381433))))

(declare-fun bs!1805237 () Bool)

(assert (= bs!1805237 d!2129770))

(declare-fun m!7528044 () Bool)

(assert (=> bs!1805237 m!7528044))

(assert (=> d!2129354 d!2129770))

(declare-fun d!2129772 () Bool)

(assert (=> d!2129772 (= (isEmpty!38337 (_2!36879 lt!2444385)) ((_ is Nil!65978) (_2!36879 lt!2444385)))))

(assert (=> d!2129478 d!2129772))

(assert (=> d!2129478 d!2129496))

(declare-fun d!2129774 () Bool)

(assert (=> d!2129774 true))

(assert (=> d!2129774 true))

(declare-fun res!2771117 () Bool)

(assert (=> d!2129774 (= (choose!50478 lambda!381387) res!2771117)))

(assert (=> d!2129372 d!2129774))

(declare-fun bm!614957 () Bool)

(declare-fun call!614963 () List!66103)

(declare-fun call!614966 () List!66103)

(assert (=> bm!614957 (= call!614963 call!614966)))

(declare-fun bm!614958 () Bool)

(declare-fun call!614964 () (InoxSet Context!11970))

(declare-fun call!614967 () (InoxSet Context!11970))

(assert (=> bm!614958 (= call!614964 call!614967)))

(declare-fun b!6779108 () Bool)

(declare-fun e!4092410 () (InoxSet Context!11970))

(declare-fun e!4092408 () (InoxSet Context!11970))

(assert (=> b!6779108 (= e!4092410 e!4092408)))

(declare-fun c!1259264 () Bool)

(assert (=> b!6779108 (= c!1259264 ((_ is Concat!25446) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))))))

(declare-fun bm!614959 () Bool)

(declare-fun call!614962 () (InoxSet Context!11970))

(assert (=> bm!614959 (= call!614962 call!614964)))

(declare-fun b!6779109 () Bool)

(assert (=> b!6779109 (= e!4092408 call!614962)))

(declare-fun c!1259261 () Bool)

(declare-fun bm!614960 () Bool)

(assert (=> bm!614960 (= call!614966 ($colon$colon!2410 (exprs!6485 (ite c!1259062 lt!2444384 (Context!11971 call!614828))) (ite (or c!1259261 c!1259264) (regTwo!33714 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))))))

(declare-fun c!1259262 () Bool)

(declare-fun d!2129776 () Bool)

(assert (=> d!2129776 (= c!1259262 (and ((_ is ElementMatch!16601) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (= (c!1258869 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (h!72426 s!2326))))))

(declare-fun e!4092412 () (InoxSet Context!11970))

(assert (=> d!2129776 (= (derivationStepZipperDown!1829 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))) (ite c!1259062 lt!2444384 (Context!11971 call!614828)) (h!72426 s!2326)) e!4092412)))

(declare-fun b!6779110 () Bool)

(declare-fun c!1259263 () Bool)

(assert (=> b!6779110 (= c!1259263 ((_ is Star!16601) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))))))

(declare-fun e!4092409 () (InoxSet Context!11970))

(assert (=> b!6779110 (= e!4092408 e!4092409)))

(declare-fun c!1259260 () Bool)

(declare-fun bm!614961 () Bool)

(declare-fun call!614965 () (InoxSet Context!11970))

(assert (=> bm!614961 (= call!614965 (derivationStepZipperDown!1829 (ite c!1259260 (regTwo!33715 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (regOne!33714 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))) (ite c!1259260 (ite c!1259062 lt!2444384 (Context!11971 call!614828)) (Context!11971 call!614966)) (h!72426 s!2326)))))

(declare-fun b!6779111 () Bool)

(assert (=> b!6779111 (= e!4092412 (store ((as const (Array Context!11970 Bool)) false) (ite c!1259062 lt!2444384 (Context!11971 call!614828)) true))))

(declare-fun b!6779112 () Bool)

(declare-fun e!4092413 () (InoxSet Context!11970))

(assert (=> b!6779112 (= e!4092413 ((_ map or) call!614967 call!614965))))

(declare-fun b!6779113 () Bool)

(assert (=> b!6779113 (= e!4092409 call!614962)))

(declare-fun b!6779114 () Bool)

(assert (=> b!6779114 (= e!4092412 e!4092413)))

(assert (=> b!6779114 (= c!1259260 ((_ is Union!16601) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))))))

(declare-fun b!6779115 () Bool)

(assert (=> b!6779115 (= e!4092410 ((_ map or) call!614965 call!614964))))

(declare-fun b!6779116 () Bool)

(assert (=> b!6779116 (= e!4092409 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779117 () Bool)

(declare-fun e!4092411 () Bool)

(assert (=> b!6779117 (= c!1259261 e!4092411)))

(declare-fun res!2771118 () Bool)

(assert (=> b!6779117 (=> (not res!2771118) (not e!4092411))))

(assert (=> b!6779117 (= res!2771118 ((_ is Concat!25446) (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))))))

(assert (=> b!6779117 (= e!4092413 e!4092410)))

(declare-fun b!6779118 () Bool)

(assert (=> b!6779118 (= e!4092411 (nullable!6580 (regOne!33714 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))))))

(declare-fun bm!614962 () Bool)

(assert (=> bm!614962 (= call!614967 (derivationStepZipperDown!1829 (ite c!1259260 (regOne!33715 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (ite c!1259261 (regTwo!33714 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (ite c!1259264 (regOne!33714 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292)))) (reg!16930 (ite c!1259062 (regTwo!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))))) (ite (or c!1259260 c!1259261) (ite c!1259062 lt!2444384 (Context!11971 call!614828)) (Context!11971 call!614963)) (h!72426 s!2326)))))

(assert (= (and d!2129776 c!1259262) b!6779111))

(assert (= (and d!2129776 (not c!1259262)) b!6779114))

(assert (= (and b!6779114 c!1259260) b!6779112))

(assert (= (and b!6779114 (not c!1259260)) b!6779117))

(assert (= (and b!6779117 res!2771118) b!6779118))

(assert (= (and b!6779117 c!1259261) b!6779115))

(assert (= (and b!6779117 (not c!1259261)) b!6779108))

(assert (= (and b!6779108 c!1259264) b!6779109))

(assert (= (and b!6779108 (not c!1259264)) b!6779110))

(assert (= (and b!6779110 c!1259263) b!6779113))

(assert (= (and b!6779110 (not c!1259263)) b!6779116))

(assert (= (or b!6779109 b!6779113) bm!614957))

(assert (= (or b!6779109 b!6779113) bm!614959))

(assert (= (or b!6779115 bm!614957) bm!614960))

(assert (= (or b!6779115 bm!614959) bm!614958))

(assert (= (or b!6779112 b!6779115) bm!614961))

(assert (= (or b!6779112 bm!614958) bm!614962))

(declare-fun m!7528046 () Bool)

(assert (=> bm!614962 m!7528046))

(declare-fun m!7528048 () Bool)

(assert (=> bm!614960 m!7528048))

(declare-fun m!7528050 () Bool)

(assert (=> bm!614961 m!7528050))

(declare-fun m!7528052 () Bool)

(assert (=> b!6779118 m!7528052))

(declare-fun m!7528054 () Bool)

(assert (=> b!6779111 m!7528054))

(assert (=> bm!614823 d!2129776))

(assert (=> bs!1805082 d!2129444))

(declare-fun bs!1805250 () Bool)

(declare-fun d!2129778 () Bool)

(assert (= bs!1805250 (and d!2129778 d!2129456)))

(declare-fun lambda!381499 () Int)

(assert (=> bs!1805250 (= lambda!381499 lambda!381462)))

(declare-fun bs!1805251 () Bool)

(assert (= bs!1805251 (and d!2129778 d!2129460)))

(assert (=> bs!1805251 (= lambda!381499 lambda!381466)))

(declare-fun bs!1805252 () Bool)

(assert (= bs!1805252 (and d!2129778 d!2129462)))

(assert (=> bs!1805252 (= lambda!381499 lambda!381469)))

(declare-fun bs!1805253 () Bool)

(assert (= bs!1805253 (and d!2129778 d!2129282)))

(assert (=> bs!1805253 (= lambda!381499 lambda!381401)))

(declare-fun bs!1805254 () Bool)

(assert (= bs!1805254 (and d!2129778 d!2129458)))

(assert (=> bs!1805254 (= lambda!381499 lambda!381463)))

(declare-fun bs!1805255 () Bool)

(assert (= bs!1805255 (and d!2129778 d!2129480)))

(assert (=> bs!1805255 (= lambda!381499 lambda!381471)))

(declare-fun b!6779119 () Bool)

(declare-fun e!4092414 () Regex!16601)

(declare-fun e!4092416 () Regex!16601)

(assert (=> b!6779119 (= e!4092414 e!4092416)))

(declare-fun c!1259266 () Bool)

(assert (=> b!6779119 (= c!1259266 ((_ is Cons!65979) (t!379816 (unfocusZipperList!2022 zl!343))))))

(declare-fun b!6779120 () Bool)

(declare-fun e!4092419 () Bool)

(declare-fun lt!2444535 () Regex!16601)

(assert (=> b!6779120 (= e!4092419 (isEmptyLang!1967 lt!2444535))))

(declare-fun b!6779121 () Bool)

(assert (=> b!6779121 (= e!4092416 (Union!16601 (h!72427 (t!379816 (unfocusZipperList!2022 zl!343))) (generalisedUnion!2445 (t!379816 (t!379816 (unfocusZipperList!2022 zl!343))))))))

(declare-fun b!6779122 () Bool)

(assert (=> b!6779122 (= e!4092416 EmptyLang!16601)))

(declare-fun b!6779123 () Bool)

(declare-fun e!4092415 () Bool)

(assert (=> b!6779123 (= e!4092415 (isUnion!1397 lt!2444535))))

(declare-fun b!6779124 () Bool)

(declare-fun e!4092418 () Bool)

(assert (=> b!6779124 (= e!4092418 (isEmpty!38340 (t!379816 (t!379816 (unfocusZipperList!2022 zl!343)))))))

(declare-fun b!6779125 () Bool)

(declare-fun e!4092417 () Bool)

(assert (=> b!6779125 (= e!4092417 e!4092419)))

(declare-fun c!1259268 () Bool)

(assert (=> b!6779125 (= c!1259268 (isEmpty!38340 (t!379816 (unfocusZipperList!2022 zl!343))))))

(declare-fun b!6779126 () Bool)

(assert (=> b!6779126 (= e!4092414 (h!72427 (t!379816 (unfocusZipperList!2022 zl!343))))))

(assert (=> d!2129778 e!4092417))

(declare-fun res!2771120 () Bool)

(assert (=> d!2129778 (=> (not res!2771120) (not e!4092417))))

(assert (=> d!2129778 (= res!2771120 (validRegex!8337 lt!2444535))))

(assert (=> d!2129778 (= lt!2444535 e!4092414)))

(declare-fun c!1259267 () Bool)

(assert (=> d!2129778 (= c!1259267 e!4092418)))

(declare-fun res!2771119 () Bool)

(assert (=> d!2129778 (=> (not res!2771119) (not e!4092418))))

(assert (=> d!2129778 (= res!2771119 ((_ is Cons!65979) (t!379816 (unfocusZipperList!2022 zl!343))))))

(assert (=> d!2129778 (forall!15793 (t!379816 (unfocusZipperList!2022 zl!343)) lambda!381499)))

(assert (=> d!2129778 (= (generalisedUnion!2445 (t!379816 (unfocusZipperList!2022 zl!343))) lt!2444535)))

(declare-fun b!6779127 () Bool)

(assert (=> b!6779127 (= e!4092415 (= lt!2444535 (head!13613 (t!379816 (unfocusZipperList!2022 zl!343)))))))

(declare-fun b!6779128 () Bool)

(assert (=> b!6779128 (= e!4092419 e!4092415)))

(declare-fun c!1259265 () Bool)

(assert (=> b!6779128 (= c!1259265 (isEmpty!38340 (tail!12698 (t!379816 (unfocusZipperList!2022 zl!343)))))))

(assert (= (and d!2129778 res!2771119) b!6779124))

(assert (= (and d!2129778 c!1259267) b!6779126))

(assert (= (and d!2129778 (not c!1259267)) b!6779119))

(assert (= (and b!6779119 c!1259266) b!6779121))

(assert (= (and b!6779119 (not c!1259266)) b!6779122))

(assert (= (and d!2129778 res!2771120) b!6779125))

(assert (= (and b!6779125 c!1259268) b!6779120))

(assert (= (and b!6779125 (not c!1259268)) b!6779128))

(assert (= (and b!6779128 c!1259265) b!6779127))

(assert (= (and b!6779128 (not c!1259265)) b!6779123))

(declare-fun m!7528066 () Bool)

(assert (=> b!6779123 m!7528066))

(declare-fun m!7528068 () Bool)

(assert (=> b!6779128 m!7528068))

(assert (=> b!6779128 m!7528068))

(declare-fun m!7528070 () Bool)

(assert (=> b!6779128 m!7528070))

(declare-fun m!7528072 () Bool)

(assert (=> b!6779127 m!7528072))

(assert (=> b!6779125 m!7527458))

(declare-fun m!7528074 () Bool)

(assert (=> b!6779121 m!7528074))

(declare-fun m!7528076 () Bool)

(assert (=> b!6779120 m!7528076))

(declare-fun m!7528078 () Bool)

(assert (=> d!2129778 m!7528078))

(declare-fun m!7528080 () Bool)

(assert (=> d!2129778 m!7528080))

(declare-fun m!7528082 () Bool)

(assert (=> b!6779124 m!7528082))

(assert (=> b!6778476 d!2129778))

(assert (=> b!6778384 d!2129766))

(assert (=> b!6778384 d!2129768))

(declare-fun d!2129784 () Bool)

(assert (=> d!2129784 (= (isEmptyExpr!1958 lt!2444416) ((_ is EmptyExpr!16601) lt!2444416))))

(assert (=> b!6777872 d!2129784))

(assert (=> d!2129472 d!2129474))

(declare-fun d!2129786 () Bool)

(assert (=> d!2129786 (= (flatMap!2082 lt!2444376 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444384))))

(assert (=> d!2129786 true))

(declare-fun _$13!4176 () Unit!159893)

(assert (=> d!2129786 (= (choose!50485 lt!2444376 lt!2444384 lambda!381389) _$13!4176)))

(declare-fun b_lambda!255239 () Bool)

(assert (=> (not b_lambda!255239) (not d!2129786)))

(declare-fun bs!1805269 () Bool)

(assert (= bs!1805269 d!2129786))

(assert (=> bs!1805269 m!7526800))

(assert (=> bs!1805269 m!7527478))

(assert (=> d!2129472 d!2129786))

(declare-fun b!6779153 () Bool)

(declare-fun e!4092436 () Bool)

(declare-fun lt!2444537 () List!66102)

(assert (=> b!6779153 (= e!4092436 (or (not (= (_2!36879 (get!22971 lt!2444488)) Nil!65978)) (= lt!2444537 (_1!36879 (get!22971 lt!2444488)))))))

(declare-fun d!2129790 () Bool)

(assert (=> d!2129790 e!4092436))

(declare-fun res!2771131 () Bool)

(assert (=> d!2129790 (=> (not res!2771131) (not e!4092436))))

(assert (=> d!2129790 (= res!2771131 (= (content!12848 lt!2444537) ((_ map or) (content!12848 (_1!36879 (get!22971 lt!2444488))) (content!12848 (_2!36879 (get!22971 lt!2444488))))))))

(declare-fun e!4092435 () List!66102)

(assert (=> d!2129790 (= lt!2444537 e!4092435)))

(declare-fun c!1259275 () Bool)

(assert (=> d!2129790 (= c!1259275 ((_ is Nil!65978) (_1!36879 (get!22971 lt!2444488))))))

(assert (=> d!2129790 (= (++!14755 (_1!36879 (get!22971 lt!2444488)) (_2!36879 (get!22971 lt!2444488))) lt!2444537)))

(declare-fun b!6779150 () Bool)

(assert (=> b!6779150 (= e!4092435 (_2!36879 (get!22971 lt!2444488)))))

(declare-fun b!6779152 () Bool)

(declare-fun res!2771130 () Bool)

(assert (=> b!6779152 (=> (not res!2771130) (not e!4092436))))

(assert (=> b!6779152 (= res!2771130 (= (size!40634 lt!2444537) (+ (size!40634 (_1!36879 (get!22971 lt!2444488))) (size!40634 (_2!36879 (get!22971 lt!2444488))))))))

(declare-fun b!6779151 () Bool)

(assert (=> b!6779151 (= e!4092435 (Cons!65978 (h!72426 (_1!36879 (get!22971 lt!2444488))) (++!14755 (t!379815 (_1!36879 (get!22971 lt!2444488))) (_2!36879 (get!22971 lt!2444488)))))))

(assert (= (and d!2129790 c!1259275) b!6779150))

(assert (= (and d!2129790 (not c!1259275)) b!6779151))

(assert (= (and d!2129790 res!2771131) b!6779152))

(assert (= (and b!6779152 res!2771130) b!6779153))

(declare-fun m!7528108 () Bool)

(assert (=> d!2129790 m!7528108))

(declare-fun m!7528110 () Bool)

(assert (=> d!2129790 m!7528110))

(declare-fun m!7528112 () Bool)

(assert (=> d!2129790 m!7528112))

(declare-fun m!7528114 () Bool)

(assert (=> b!6779152 m!7528114))

(declare-fun m!7528116 () Bool)

(assert (=> b!6779152 m!7528116))

(declare-fun m!7528120 () Bool)

(assert (=> b!6779152 m!7528120))

(declare-fun m!7528124 () Bool)

(assert (=> b!6779151 m!7528124))

(assert (=> b!6778347 d!2129790))

(assert (=> b!6778347 d!2129678))

(declare-fun d!2129796 () Bool)

(declare-fun lambda!381503 () Int)

(declare-fun exists!2723 ((InoxSet Context!11970) Int) Bool)

(assert (=> d!2129796 (= (nullableZipper!2308 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326))) (exists!2723 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) lambda!381503))))

(declare-fun bs!1805270 () Bool)

(assert (= bs!1805270 d!2129796))

(assert (=> bs!1805270 m!7526784))

(declare-fun m!7528126 () Bool)

(assert (=> bs!1805270 m!7528126))

(assert (=> b!6778136 d!2129796))

(declare-fun b!6779156 () Bool)

(declare-fun e!4092439 () Bool)

(declare-fun e!4092442 () Bool)

(assert (=> b!6779156 (= e!4092439 e!4092442)))

(declare-fun c!1259280 () Bool)

(assert (=> b!6779156 (= c!1259280 ((_ is EmptyLang!16601) (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385)))))))

(declare-fun b!6779157 () Bool)

(declare-fun res!2771134 () Bool)

(declare-fun e!4092440 () Bool)

(assert (=> b!6779157 (=> res!2771134 e!4092440)))

(declare-fun e!4092443 () Bool)

(assert (=> b!6779157 (= res!2771134 e!4092443)))

(declare-fun res!2771140 () Bool)

(assert (=> b!6779157 (=> (not res!2771140) (not e!4092443))))

(declare-fun lt!2444538 () Bool)

(assert (=> b!6779157 (= res!2771140 lt!2444538)))

(declare-fun b!6779158 () Bool)

(declare-fun e!4092445 () Bool)

(assert (=> b!6779158 (= e!4092440 e!4092445)))

(declare-fun res!2771136 () Bool)

(assert (=> b!6779158 (=> (not res!2771136) (not e!4092445))))

(assert (=> b!6779158 (= res!2771136 (not lt!2444538))))

(declare-fun b!6779159 () Bool)

(declare-fun res!2771137 () Bool)

(assert (=> b!6779159 (=> (not res!2771137) (not e!4092443))))

(declare-fun call!614971 () Bool)

(assert (=> b!6779159 (= res!2771137 (not call!614971))))

(declare-fun b!6779160 () Bool)

(assert (=> b!6779160 (= e!4092442 (not lt!2444538))))

(declare-fun b!6779161 () Bool)

(assert (=> b!6779161 (= e!4092439 (= lt!2444538 call!614971))))

(declare-fun b!6779162 () Bool)

(declare-fun res!2771138 () Bool)

(assert (=> b!6779162 (=> res!2771138 e!4092440)))

(assert (=> b!6779162 (= res!2771138 (not ((_ is ElementMatch!16601) (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))))))))

(assert (=> b!6779162 (= e!4092442 e!4092440)))

(declare-fun b!6779163 () Bool)

(declare-fun e!4092441 () Bool)

(assert (=> b!6779163 (= e!4092441 (not (= (head!13614 (tail!12699 (_2!36879 lt!2444385))) (c!1258869 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385)))))))))

(declare-fun b!6779164 () Bool)

(declare-fun res!2771135 () Bool)

(assert (=> b!6779164 (=> res!2771135 e!4092441)))

(assert (=> b!6779164 (= res!2771135 (not (isEmpty!38337 (tail!12699 (tail!12699 (_2!36879 lt!2444385))))))))

(declare-fun b!6779165 () Bool)

(assert (=> b!6779165 (= e!4092445 e!4092441)))

(declare-fun res!2771141 () Bool)

(assert (=> b!6779165 (=> res!2771141 e!4092441)))

(assert (=> b!6779165 (= res!2771141 call!614971)))

(declare-fun b!6779166 () Bool)

(declare-fun e!4092444 () Bool)

(assert (=> b!6779166 (= e!4092444 (matchR!8784 (derivativeStep!5265 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))) (head!13614 (tail!12699 (_2!36879 lt!2444385)))) (tail!12699 (tail!12699 (_2!36879 lt!2444385)))))))

(declare-fun b!6779167 () Bool)

(assert (=> b!6779167 (= e!4092444 (nullable!6580 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385)))))))

(declare-fun bm!614966 () Bool)

(assert (=> bm!614966 (= call!614971 (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385))))))

(declare-fun d!2129798 () Bool)

(assert (=> d!2129798 e!4092439))

(declare-fun c!1259278 () Bool)

(assert (=> d!2129798 (= c!1259278 ((_ is EmptyExpr!16601) (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385)))))))

(assert (=> d!2129798 (= lt!2444538 e!4092444)))

(declare-fun c!1259279 () Bool)

(assert (=> d!2129798 (= c!1259279 (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385))))))

(assert (=> d!2129798 (validRegex!8337 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))))))

(assert (=> d!2129798 (= (matchR!8784 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))) (tail!12699 (_2!36879 lt!2444385))) lt!2444538)))

(declare-fun b!6779168 () Bool)

(assert (=> b!6779168 (= e!4092443 (= (head!13614 (tail!12699 (_2!36879 lt!2444385))) (c!1258869 (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))))))))

(declare-fun b!6779169 () Bool)

(declare-fun res!2771139 () Bool)

(assert (=> b!6779169 (=> (not res!2771139) (not e!4092443))))

(assert (=> b!6779169 (= res!2771139 (isEmpty!38337 (tail!12699 (tail!12699 (_2!36879 lt!2444385)))))))

(assert (= (and d!2129798 c!1259279) b!6779167))

(assert (= (and d!2129798 (not c!1259279)) b!6779166))

(assert (= (and d!2129798 c!1259278) b!6779161))

(assert (= (and d!2129798 (not c!1259278)) b!6779156))

(assert (= (and b!6779156 c!1259280) b!6779160))

(assert (= (and b!6779156 (not c!1259280)) b!6779162))

(assert (= (and b!6779162 (not res!2771138)) b!6779157))

(assert (= (and b!6779157 res!2771140) b!6779159))

(assert (= (and b!6779159 res!2771137) b!6779169))

(assert (= (and b!6779169 res!2771139) b!6779168))

(assert (= (and b!6779157 (not res!2771134)) b!6779158))

(assert (= (and b!6779158 res!2771136) b!6779165))

(assert (= (and b!6779165 (not res!2771141)) b!6779164))

(assert (= (and b!6779164 (not res!2771135)) b!6779163))

(assert (= (or b!6779161 b!6779165 b!6779159) bm!614966))

(assert (=> b!6779164 m!7527490))

(declare-fun m!7528128 () Bool)

(assert (=> b!6779164 m!7528128))

(assert (=> b!6779164 m!7528128))

(declare-fun m!7528130 () Bool)

(assert (=> b!6779164 m!7528130))

(assert (=> b!6779163 m!7527490))

(declare-fun m!7528132 () Bool)

(assert (=> b!6779163 m!7528132))

(assert (=> b!6779167 m!7527496))

(declare-fun m!7528134 () Bool)

(assert (=> b!6779167 m!7528134))

(assert (=> b!6779168 m!7527490))

(assert (=> b!6779168 m!7528132))

(assert (=> b!6779166 m!7527490))

(assert (=> b!6779166 m!7528132))

(assert (=> b!6779166 m!7527496))

(assert (=> b!6779166 m!7528132))

(declare-fun m!7528136 () Bool)

(assert (=> b!6779166 m!7528136))

(assert (=> b!6779166 m!7527490))

(assert (=> b!6779166 m!7528128))

(assert (=> b!6779166 m!7528136))

(assert (=> b!6779166 m!7528128))

(declare-fun m!7528138 () Bool)

(assert (=> b!6779166 m!7528138))

(assert (=> d!2129798 m!7527490))

(assert (=> d!2129798 m!7527492))

(assert (=> d!2129798 m!7527496))

(declare-fun m!7528140 () Bool)

(assert (=> d!2129798 m!7528140))

(assert (=> bm!614966 m!7527490))

(assert (=> bm!614966 m!7527492))

(assert (=> b!6779169 m!7527490))

(assert (=> b!6779169 m!7528128))

(assert (=> b!6779169 m!7528128))

(assert (=> b!6779169 m!7528130))

(assert (=> b!6778510 d!2129798))

(declare-fun b!6779254 () Bool)

(declare-fun e!4092497 () Regex!16601)

(assert (=> b!6779254 (= e!4092497 (ite (= (head!13614 (_2!36879 lt!2444385)) (c!1258869 r!7292)) EmptyExpr!16601 EmptyLang!16601))))

(declare-fun call!614989 () Regex!16601)

(declare-fun bm!614984 () Bool)

(declare-fun c!1259310 () Bool)

(assert (=> bm!614984 (= call!614989 (derivativeStep!5265 (ite c!1259310 (regOne!33715 r!7292) (regOne!33714 r!7292)) (head!13614 (_2!36879 lt!2444385))))))

(declare-fun call!614990 () Regex!16601)

(declare-fun b!6779255 () Bool)

(declare-fun e!4092499 () Regex!16601)

(assert (=> b!6779255 (= e!4092499 (Union!16601 (Concat!25446 call!614989 (regTwo!33714 r!7292)) call!614990))))

(declare-fun d!2129800 () Bool)

(declare-fun lt!2444545 () Regex!16601)

(assert (=> d!2129800 (validRegex!8337 lt!2444545)))

(declare-fun e!4092501 () Regex!16601)

(assert (=> d!2129800 (= lt!2444545 e!4092501)))

(declare-fun c!1259311 () Bool)

(assert (=> d!2129800 (= c!1259311 (or ((_ is EmptyExpr!16601) r!7292) ((_ is EmptyLang!16601) r!7292)))))

(assert (=> d!2129800 (validRegex!8337 r!7292)))

(assert (=> d!2129800 (= (derivativeStep!5265 r!7292 (head!13614 (_2!36879 lt!2444385))) lt!2444545)))

(declare-fun b!6779256 () Bool)

(assert (=> b!6779256 (= e!4092501 e!4092497)))

(declare-fun c!1259309 () Bool)

(assert (=> b!6779256 (= c!1259309 ((_ is ElementMatch!16601) r!7292))))

(declare-fun bm!614985 () Bool)

(declare-fun call!614992 () Regex!16601)

(assert (=> bm!614985 (= call!614990 call!614992)))

(declare-fun b!6779257 () Bool)

(assert (=> b!6779257 (= e!4092499 (Union!16601 (Concat!25446 call!614990 (regTwo!33714 r!7292)) EmptyLang!16601))))

(declare-fun b!6779258 () Bool)

(declare-fun e!4092498 () Regex!16601)

(declare-fun call!614991 () Regex!16601)

(assert (=> b!6779258 (= e!4092498 (Union!16601 call!614989 call!614991))))

(declare-fun b!6779259 () Bool)

(declare-fun e!4092500 () Regex!16601)

(assert (=> b!6779259 (= e!4092500 (Concat!25446 call!614992 r!7292))))

(declare-fun c!1259312 () Bool)

(declare-fun bm!614986 () Bool)

(declare-fun c!1259313 () Bool)

(assert (=> bm!614986 (= call!614991 (derivativeStep!5265 (ite c!1259310 (regTwo!33715 r!7292) (ite c!1259313 (reg!16930 r!7292) (ite c!1259312 (regTwo!33714 r!7292) (regOne!33714 r!7292)))) (head!13614 (_2!36879 lt!2444385))))))

(declare-fun b!6779260 () Bool)

(assert (=> b!6779260 (= e!4092498 e!4092500)))

(assert (=> b!6779260 (= c!1259313 ((_ is Star!16601) r!7292))))

(declare-fun b!6779261 () Bool)

(assert (=> b!6779261 (= c!1259310 ((_ is Union!16601) r!7292))))

(assert (=> b!6779261 (= e!4092497 e!4092498)))

(declare-fun b!6779262 () Bool)

(assert (=> b!6779262 (= c!1259312 (nullable!6580 (regOne!33714 r!7292)))))

(assert (=> b!6779262 (= e!4092500 e!4092499)))

(declare-fun bm!614987 () Bool)

(assert (=> bm!614987 (= call!614992 call!614991)))

(declare-fun b!6779263 () Bool)

(assert (=> b!6779263 (= e!4092501 EmptyLang!16601)))

(assert (= (and d!2129800 c!1259311) b!6779263))

(assert (= (and d!2129800 (not c!1259311)) b!6779256))

(assert (= (and b!6779256 c!1259309) b!6779254))

(assert (= (and b!6779256 (not c!1259309)) b!6779261))

(assert (= (and b!6779261 c!1259310) b!6779258))

(assert (= (and b!6779261 (not c!1259310)) b!6779260))

(assert (= (and b!6779260 c!1259313) b!6779259))

(assert (= (and b!6779260 (not c!1259313)) b!6779262))

(assert (= (and b!6779262 c!1259312) b!6779255))

(assert (= (and b!6779262 (not c!1259312)) b!6779257))

(assert (= (or b!6779255 b!6779257) bm!614985))

(assert (= (or b!6779259 bm!614985) bm!614987))

(assert (= (or b!6779258 bm!614987) bm!614986))

(assert (= (or b!6779258 b!6779255) bm!614984))

(assert (=> bm!614984 m!7527494))

(declare-fun m!7528232 () Bool)

(assert (=> bm!614984 m!7528232))

(declare-fun m!7528234 () Bool)

(assert (=> d!2129800 m!7528234))

(assert (=> d!2129800 m!7526812))

(assert (=> bm!614986 m!7527494))

(declare-fun m!7528236 () Bool)

(assert (=> bm!614986 m!7528236))

(assert (=> b!6779262 m!7527390))

(assert (=> b!6778510 d!2129800))

(assert (=> b!6778510 d!2129692))

(declare-fun d!2129834 () Bool)

(assert (=> d!2129834 (= (tail!12699 (_2!36879 lt!2444385)) (t!379815 (_2!36879 lt!2444385)))))

(assert (=> b!6778510 d!2129834))

(declare-fun d!2129836 () Bool)

(assert (=> d!2129836 (= (nullable!6580 (reg!16930 r!7292)) (nullableFct!2486 (reg!16930 r!7292)))))

(declare-fun bs!1805315 () Bool)

(assert (= bs!1805315 d!2129836))

(declare-fun m!7528238 () Bool)

(assert (=> bs!1805315 m!7528238))

(assert (=> b!6778562 d!2129836))

(assert (=> d!2129330 d!2129416))

(assert (=> d!2129330 d!2129496))

(assert (=> b!6778065 d!2129700))

(assert (=> b!6778065 d!2129702))

(declare-fun d!2129838 () Bool)

(assert (=> d!2129838 (= (head!13613 (unfocusZipperList!2022 zl!343)) (h!72427 (unfocusZipperList!2022 zl!343)))))

(assert (=> b!6778482 d!2129838))

(declare-fun bs!1805324 () Bool)

(declare-fun b!6779279 () Bool)

(assert (= bs!1805324 (and b!6779279 d!2129374)))

(declare-fun lambda!381509 () Int)

(assert (=> bs!1805324 (not (= lambda!381509 lambda!381447))))

(assert (=> bs!1805324 (not (= lambda!381509 lambda!381448))))

(declare-fun bs!1805327 () Bool)

(assert (= bs!1805327 (and b!6779279 b!6778528)))

(assert (=> bs!1805327 (not (= lambda!381509 lambda!381473))))

(declare-fun bs!1805328 () Bool)

(assert (= bs!1805328 (and b!6779279 d!2129420)))

(assert (=> bs!1805328 (not (= lambda!381509 lambda!381458))))

(declare-fun bs!1805330 () Bool)

(assert (= bs!1805330 (and b!6779279 b!6777698)))

(assert (=> bs!1805330 (not (= lambda!381509 lambda!381388))))

(declare-fun bs!1805332 () Bool)

(assert (= bs!1805332 (and b!6779279 b!6778522)))

(assert (=> bs!1805332 (= (and (= (reg!16930 (regOne!33715 r!7292)) (reg!16930 lt!2444369)) (= (regOne!33715 r!7292) lt!2444369)) (= lambda!381509 lambda!381472))))

(declare-fun bs!1805333 () Bool)

(assert (= bs!1805333 (and b!6779279 d!2129396)))

(assert (=> bs!1805333 (not (= lambda!381509 lambda!381454))))

(declare-fun bs!1805335 () Bool)

(assert (= bs!1805335 (and b!6779279 b!6777987)))

(assert (=> bs!1805335 (not (= lambda!381509 lambda!381419))))

(assert (=> bs!1805333 (= (and (= (reg!16930 (regOne!33715 r!7292)) (reg!16930 r!7292)) (= (regOne!33715 r!7292) (Star!16601 (reg!16930 r!7292)))) (= lambda!381509 lambda!381455))))

(assert (=> bs!1805330 (not (= lambda!381509 lambda!381386))))

(assert (=> bs!1805330 (= (and (= (reg!16930 (regOne!33715 r!7292)) (reg!16930 r!7292)) (= (regOne!33715 r!7292) r!7292)) (= lambda!381509 lambda!381387))))

(declare-fun bs!1805336 () Bool)

(assert (= bs!1805336 (and b!6779279 b!6777981)))

(assert (=> bs!1805336 (= (and (= (reg!16930 (regOne!33715 r!7292)) (reg!16930 r!7292)) (= (regOne!33715 r!7292) r!7292)) (= lambda!381509 lambda!381416))))

(assert (=> b!6779279 true))

(assert (=> b!6779279 true))

(declare-fun bs!1805343 () Bool)

(declare-fun b!6779285 () Bool)

(assert (= bs!1805343 (and b!6779285 d!2129374)))

(declare-fun lambda!381511 () Int)

(assert (=> bs!1805343 (not (= lambda!381511 lambda!381447))))

(assert (=> bs!1805343 (= (and (= (regOne!33714 (regOne!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33714 (regOne!33715 r!7292)) r!7292)) (= lambda!381511 lambda!381448))))

(declare-fun bs!1805346 () Bool)

(assert (= bs!1805346 (and b!6779285 b!6778528)))

(assert (=> bs!1805346 (= (and (= (regOne!33714 (regOne!33715 r!7292)) (regOne!33714 lt!2444369)) (= (regTwo!33714 (regOne!33715 r!7292)) (regTwo!33714 lt!2444369))) (= lambda!381511 lambda!381473))))

(declare-fun bs!1805348 () Bool)

(assert (= bs!1805348 (and b!6779285 d!2129420)))

(assert (=> bs!1805348 (not (= lambda!381511 lambda!381458))))

(declare-fun bs!1805349 () Bool)

(assert (= bs!1805349 (and b!6779285 b!6777698)))

(assert (=> bs!1805349 (= (and (= (regOne!33714 (regOne!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33714 (regOne!33715 r!7292)) r!7292)) (= lambda!381511 lambda!381388))))

(declare-fun bs!1805350 () Bool)

(assert (= bs!1805350 (and b!6779285 b!6778522)))

(assert (=> bs!1805350 (not (= lambda!381511 lambda!381472))))

(declare-fun bs!1805352 () Bool)

(assert (= bs!1805352 (and b!6779285 b!6777987)))

(assert (=> bs!1805352 (= (and (= (regOne!33714 (regOne!33715 r!7292)) (regOne!33714 r!7292)) (= (regTwo!33714 (regOne!33715 r!7292)) (regTwo!33714 r!7292))) (= lambda!381511 lambda!381419))))

(declare-fun bs!1805354 () Bool)

(assert (= bs!1805354 (and b!6779285 d!2129396)))

(assert (=> bs!1805354 (not (= lambda!381511 lambda!381455))))

(declare-fun bs!1805355 () Bool)

(assert (= bs!1805355 (and b!6779285 b!6779279)))

(assert (=> bs!1805355 (not (= lambda!381511 lambda!381509))))

(assert (=> bs!1805354 (not (= lambda!381511 lambda!381454))))

(assert (=> bs!1805349 (not (= lambda!381511 lambda!381386))))

(assert (=> bs!1805349 (not (= lambda!381511 lambda!381387))))

(declare-fun bs!1805358 () Bool)

(assert (= bs!1805358 (and b!6779285 b!6777981)))

(assert (=> bs!1805358 (not (= lambda!381511 lambda!381416))))

(assert (=> b!6779285 true))

(assert (=> b!6779285 true))

(declare-fun b!6779275 () Bool)

(declare-fun e!4092511 () Bool)

(declare-fun call!614995 () Bool)

(assert (=> b!6779275 (= e!4092511 call!614995)))

(declare-fun b!6779276 () Bool)

(declare-fun e!4092513 () Bool)

(declare-fun e!4092512 () Bool)

(assert (=> b!6779276 (= e!4092513 e!4092512)))

(declare-fun c!1259318 () Bool)

(assert (=> b!6779276 (= c!1259318 ((_ is Star!16601) (regOne!33715 r!7292)))))

(declare-fun b!6779277 () Bool)

(declare-fun e!4092509 () Bool)

(assert (=> b!6779277 (= e!4092511 e!4092509)))

(declare-fun res!2771173 () Bool)

(assert (=> b!6779277 (= res!2771173 (not ((_ is EmptyLang!16601) (regOne!33715 r!7292))))))

(assert (=> b!6779277 (=> (not res!2771173) (not e!4092509))))

(declare-fun b!6779278 () Bool)

(declare-fun c!1259319 () Bool)

(assert (=> b!6779278 (= c!1259319 ((_ is Union!16601) (regOne!33715 r!7292)))))

(declare-fun e!4092515 () Bool)

(assert (=> b!6779278 (= e!4092515 e!4092513)))

(declare-fun d!2129840 () Bool)

(declare-fun c!1259320 () Bool)

(assert (=> d!2129840 (= c!1259320 ((_ is EmptyExpr!16601) (regOne!33715 r!7292)))))

(assert (=> d!2129840 (= (matchRSpec!3702 (regOne!33715 r!7292) s!2326) e!4092511)))

(declare-fun e!4092514 () Bool)

(declare-fun call!614996 () Bool)

(assert (=> b!6779279 (= e!4092514 call!614996)))

(declare-fun b!6779280 () Bool)

(declare-fun res!2771174 () Bool)

(assert (=> b!6779280 (=> res!2771174 e!4092514)))

(assert (=> b!6779280 (= res!2771174 call!614995)))

(assert (=> b!6779280 (= e!4092512 e!4092514)))

(declare-fun b!6779281 () Bool)

(declare-fun e!4092510 () Bool)

(assert (=> b!6779281 (= e!4092513 e!4092510)))

(declare-fun res!2771175 () Bool)

(assert (=> b!6779281 (= res!2771175 (matchRSpec!3702 (regOne!33715 (regOne!33715 r!7292)) s!2326))))

(assert (=> b!6779281 (=> res!2771175 e!4092510)))

(declare-fun bm!614990 () Bool)

(assert (=> bm!614990 (= call!614996 (Exists!3669 (ite c!1259318 lambda!381509 lambda!381511)))))

(declare-fun b!6779282 () Bool)

(assert (=> b!6779282 (= e!4092510 (matchRSpec!3702 (regTwo!33715 (regOne!33715 r!7292)) s!2326))))

(declare-fun bm!614991 () Bool)

(assert (=> bm!614991 (= call!614995 (isEmpty!38337 s!2326))))

(declare-fun b!6779283 () Bool)

(assert (=> b!6779283 (= e!4092515 (= s!2326 (Cons!65978 (c!1258869 (regOne!33715 r!7292)) Nil!65978)))))

(declare-fun b!6779284 () Bool)

(declare-fun c!1259321 () Bool)

(assert (=> b!6779284 (= c!1259321 ((_ is ElementMatch!16601) (regOne!33715 r!7292)))))

(assert (=> b!6779284 (= e!4092509 e!4092515)))

(assert (=> b!6779285 (= e!4092512 call!614996)))

(assert (= (and d!2129840 c!1259320) b!6779275))

(assert (= (and d!2129840 (not c!1259320)) b!6779277))

(assert (= (and b!6779277 res!2771173) b!6779284))

(assert (= (and b!6779284 c!1259321) b!6779283))

(assert (= (and b!6779284 (not c!1259321)) b!6779278))

(assert (= (and b!6779278 c!1259319) b!6779281))

(assert (= (and b!6779278 (not c!1259319)) b!6779276))

(assert (= (and b!6779281 (not res!2771175)) b!6779282))

(assert (= (and b!6779276 c!1259318) b!6779280))

(assert (= (and b!6779276 (not c!1259318)) b!6779285))

(assert (= (and b!6779280 (not res!2771174)) b!6779279))

(assert (= (or b!6779279 b!6779285) bm!614990))

(assert (= (or b!6779275 b!6779280) bm!614991))

(declare-fun m!7528244 () Bool)

(assert (=> b!6779281 m!7528244))

(declare-fun m!7528248 () Bool)

(assert (=> bm!614990 m!7528248))

(declare-fun m!7528250 () Bool)

(assert (=> b!6779282 m!7528250))

(assert (=> bm!614991 m!7526878))

(assert (=> b!6777983 d!2129840))

(assert (=> bm!614775 d!2129416))

(declare-fun d!2129844 () Bool)

(assert (=> d!2129844 (= (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385))) ((_ is Nil!65978) (tail!12699 (_2!36879 lt!2444385))))))

(assert (=> b!6778513 d!2129844))

(assert (=> b!6778513 d!2129834))

(declare-fun d!2129846 () Bool)

(assert (=> d!2129846 (= (isEmpty!38340 (t!379816 (exprs!6485 (h!72428 zl!343)))) ((_ is Nil!65979) (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> b!6777876 d!2129846))

(declare-fun bs!1805361 () Bool)

(declare-fun d!2129848 () Bool)

(assert (= bs!1805361 (and d!2129848 d!2129796)))

(declare-fun lambda!381513 () Int)

(assert (=> bs!1805361 (= lambda!381513 lambda!381503)))

(assert (=> d!2129848 (= (nullableZipper!2308 lt!2444376) (exists!2723 lt!2444376 lambda!381513))))

(declare-fun bs!1805365 () Bool)

(assert (= bs!1805365 d!2129848))

(declare-fun m!7528252 () Bool)

(assert (=> bs!1805365 m!7528252))

(assert (=> b!6778514 d!2129848))

(declare-fun d!2129850 () Bool)

(assert (=> d!2129850 true))

(assert (=> d!2129850 true))

(declare-fun res!2771178 () Bool)

(assert (=> d!2129850 (= (choose!50478 lambda!381386) res!2771178)))

(assert (=> d!2129422 d!2129850))

(assert (=> d!2129482 d!2129434))

(assert (=> d!2129482 d!2129488))

(declare-fun d!2129852 () Bool)

(assert (=> d!2129852 (= (matchR!8784 (reg!16930 r!7292) (_1!36879 lt!2444385)) (matchZipper!2587 lt!2444388 (_1!36879 lt!2444385)))))

(assert (=> d!2129852 true))

(declare-fun _$44!1766 () Unit!159893)

(assert (=> d!2129852 (= (choose!50487 lt!2444388 lt!2444375 (reg!16930 r!7292) (_1!36879 lt!2444385)) _$44!1766)))

(declare-fun bs!1805380 () Bool)

(assert (= bs!1805380 d!2129852))

(assert (=> bs!1805380 m!7526834))

(assert (=> bs!1805380 m!7526816))

(assert (=> d!2129482 d!2129852))

(assert (=> d!2129482 d!2129706))

(declare-fun b!6779296 () Bool)

(declare-fun e!4092523 () (InoxSet Context!11970))

(assert (=> b!6779296 (= e!4092523 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129860 () Bool)

(declare-fun c!1259326 () Bool)

(declare-fun e!4092522 () Bool)

(assert (=> d!2129860 (= c!1259326 e!4092522)))

(declare-fun res!2771179 () Bool)

(assert (=> d!2129860 (=> (not res!2771179) (not e!4092522))))

(assert (=> d!2129860 (= res!2771179 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))))))))

(declare-fun e!4092524 () (InoxSet Context!11970))

(assert (=> d!2129860 (= (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))) (h!72426 s!2326)) e!4092524)))

(declare-fun b!6779297 () Bool)

(assert (=> b!6779297 (= e!4092524 e!4092523)))

(declare-fun c!1259327 () Bool)

(assert (=> b!6779297 (= c!1259327 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))))))))

(declare-fun b!6779298 () Bool)

(declare-fun call!614997 () (InoxSet Context!11970))

(assert (=> b!6779298 (= e!4092523 call!614997)))

(declare-fun b!6779299 () Bool)

(assert (=> b!6779299 (= e!4092522 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343))))))))))

(declare-fun bm!614992 () Bool)

(assert (=> bm!614992 (= call!614997 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343)))))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343))))))) (h!72426 s!2326)))))

(declare-fun b!6779300 () Bool)

(assert (=> b!6779300 (= e!4092524 ((_ map or) call!614997 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (h!72428 zl!343))))))) (h!72426 s!2326))))))

(assert (= (and d!2129860 res!2771179) b!6779299))

(assert (= (and d!2129860 c!1259326) b!6779300))

(assert (= (and d!2129860 (not c!1259326)) b!6779297))

(assert (= (and b!6779297 c!1259327) b!6779298))

(assert (= (and b!6779297 (not c!1259327)) b!6779296))

(assert (= (or b!6779300 b!6779298) bm!614992))

(declare-fun m!7528276 () Bool)

(assert (=> b!6779299 m!7528276))

(declare-fun m!7528278 () Bool)

(assert (=> bm!614992 m!7528278))

(declare-fun m!7528280 () Bool)

(assert (=> b!6779300 m!7528280))

(assert (=> b!6778437 d!2129860))

(declare-fun b!6779301 () Bool)

(declare-fun e!4092525 () Bool)

(declare-fun call!614999 () Bool)

(assert (=> b!6779301 (= e!4092525 call!614999)))

(declare-fun d!2129862 () Bool)

(declare-fun res!2771182 () Bool)

(declare-fun e!4092526 () Bool)

(assert (=> d!2129862 (=> res!2771182 e!4092526)))

(assert (=> d!2129862 (= res!2771182 ((_ is ElementMatch!16601) lt!2444495))))

(assert (=> d!2129862 (= (validRegex!8337 lt!2444495) e!4092526)))

(declare-fun b!6779302 () Bool)

(declare-fun e!4092531 () Bool)

(assert (=> b!6779302 (= e!4092531 e!4092525)))

(declare-fun res!2771184 () Bool)

(assert (=> b!6779302 (= res!2771184 (not (nullable!6580 (reg!16930 lt!2444495))))))

(assert (=> b!6779302 (=> (not res!2771184) (not e!4092525))))

(declare-fun c!1259328 () Bool)

(declare-fun bm!614993 () Bool)

(declare-fun c!1259329 () Bool)

(assert (=> bm!614993 (= call!614999 (validRegex!8337 (ite c!1259328 (reg!16930 lt!2444495) (ite c!1259329 (regOne!33715 lt!2444495) (regOne!33714 lt!2444495)))))))

(declare-fun bm!614994 () Bool)

(declare-fun call!614998 () Bool)

(assert (=> bm!614994 (= call!614998 call!614999)))

(declare-fun b!6779303 () Bool)

(declare-fun res!2771181 () Bool)

(declare-fun e!4092527 () Bool)

(assert (=> b!6779303 (=> (not res!2771181) (not e!4092527))))

(assert (=> b!6779303 (= res!2771181 call!614998)))

(declare-fun e!4092528 () Bool)

(assert (=> b!6779303 (= e!4092528 e!4092527)))

(declare-fun b!6779304 () Bool)

(declare-fun res!2771183 () Bool)

(declare-fun e!4092530 () Bool)

(assert (=> b!6779304 (=> res!2771183 e!4092530)))

(assert (=> b!6779304 (= res!2771183 (not ((_ is Concat!25446) lt!2444495)))))

(assert (=> b!6779304 (= e!4092528 e!4092530)))

(declare-fun b!6779305 () Bool)

(assert (=> b!6779305 (= e!4092526 e!4092531)))

(assert (=> b!6779305 (= c!1259328 ((_ is Star!16601) lt!2444495))))

(declare-fun bm!614995 () Bool)

(declare-fun call!615000 () Bool)

(assert (=> bm!614995 (= call!615000 (validRegex!8337 (ite c!1259329 (regTwo!33715 lt!2444495) (regTwo!33714 lt!2444495))))))

(declare-fun b!6779306 () Bool)

(assert (=> b!6779306 (= e!4092527 call!615000)))

(declare-fun b!6779307 () Bool)

(declare-fun e!4092529 () Bool)

(assert (=> b!6779307 (= e!4092529 call!615000)))

(declare-fun b!6779308 () Bool)

(assert (=> b!6779308 (= e!4092531 e!4092528)))

(assert (=> b!6779308 (= c!1259329 ((_ is Union!16601) lt!2444495))))

(declare-fun b!6779309 () Bool)

(assert (=> b!6779309 (= e!4092530 e!4092529)))

(declare-fun res!2771180 () Bool)

(assert (=> b!6779309 (=> (not res!2771180) (not e!4092529))))

(assert (=> b!6779309 (= res!2771180 call!614998)))

(assert (= (and d!2129862 (not res!2771182)) b!6779305))

(assert (= (and b!6779305 c!1259328) b!6779302))

(assert (= (and b!6779305 (not c!1259328)) b!6779308))

(assert (= (and b!6779302 res!2771184) b!6779301))

(assert (= (and b!6779308 c!1259329) b!6779303))

(assert (= (and b!6779308 (not c!1259329)) b!6779304))

(assert (= (and b!6779303 res!2771181) b!6779306))

(assert (= (and b!6779304 (not res!2771183)) b!6779309))

(assert (= (and b!6779309 res!2771180) b!6779307))

(assert (= (or b!6779306 b!6779307) bm!614995))

(assert (= (or b!6779303 b!6779309) bm!614994))

(assert (= (or b!6779301 bm!614994) bm!614993))

(declare-fun m!7528282 () Bool)

(assert (=> b!6779302 m!7528282))

(declare-fun m!7528284 () Bool)

(assert (=> bm!614993 m!7528284))

(declare-fun m!7528286 () Bool)

(assert (=> bm!614995 m!7528286))

(assert (=> d!2129430 d!2129862))

(declare-fun bs!1805381 () Bool)

(declare-fun d!2129864 () Bool)

(assert (= bs!1805381 (and d!2129864 d!2129456)))

(declare-fun lambda!381514 () Int)

(assert (=> bs!1805381 (= lambda!381514 lambda!381462)))

(declare-fun bs!1805382 () Bool)

(assert (= bs!1805382 (and d!2129864 d!2129460)))

(assert (=> bs!1805382 (= lambda!381514 lambda!381466)))

(declare-fun bs!1805383 () Bool)

(assert (= bs!1805383 (and d!2129864 d!2129462)))

(assert (=> bs!1805383 (= lambda!381514 lambda!381469)))

(declare-fun bs!1805384 () Bool)

(assert (= bs!1805384 (and d!2129864 d!2129778)))

(assert (=> bs!1805384 (= lambda!381514 lambda!381499)))

(declare-fun bs!1805385 () Bool)

(assert (= bs!1805385 (and d!2129864 d!2129282)))

(assert (=> bs!1805385 (= lambda!381514 lambda!381401)))

(declare-fun bs!1805386 () Bool)

(assert (= bs!1805386 (and d!2129864 d!2129458)))

(assert (=> bs!1805386 (= lambda!381514 lambda!381463)))

(declare-fun bs!1805387 () Bool)

(assert (= bs!1805387 (and d!2129864 d!2129480)))

(assert (=> bs!1805387 (= lambda!381514 lambda!381471)))

(declare-fun b!6779310 () Bool)

(declare-fun e!4092532 () Regex!16601)

(declare-fun e!4092534 () Regex!16601)

(assert (=> b!6779310 (= e!4092532 e!4092534)))

(declare-fun c!1259331 () Bool)

(assert (=> b!6779310 (= c!1259331 ((_ is Cons!65979) (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))

(declare-fun b!6779311 () Bool)

(declare-fun e!4092537 () Bool)

(declare-fun lt!2444547 () Regex!16601)

(assert (=> b!6779311 (= e!4092537 (isEmptyLang!1967 lt!2444547))))

(declare-fun b!6779312 () Bool)

(assert (=> b!6779312 (= e!4092534 (Union!16601 (h!72427 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))) (generalisedUnion!2445 (t!379816 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))))

(declare-fun b!6779313 () Bool)

(assert (=> b!6779313 (= e!4092534 EmptyLang!16601)))

(declare-fun b!6779314 () Bool)

(declare-fun e!4092533 () Bool)

(assert (=> b!6779314 (= e!4092533 (isUnion!1397 lt!2444547))))

(declare-fun b!6779315 () Bool)

(declare-fun e!4092536 () Bool)

(assert (=> b!6779315 (= e!4092536 (isEmpty!38340 (t!379816 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980)))))))

(declare-fun b!6779316 () Bool)

(declare-fun e!4092535 () Bool)

(assert (=> b!6779316 (= e!4092535 e!4092537)))

(declare-fun c!1259333 () Bool)

(assert (=> b!6779316 (= c!1259333 (isEmpty!38340 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))

(declare-fun b!6779317 () Bool)

(assert (=> b!6779317 (= e!4092532 (h!72427 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))

(assert (=> d!2129864 e!4092535))

(declare-fun res!2771186 () Bool)

(assert (=> d!2129864 (=> (not res!2771186) (not e!4092535))))

(assert (=> d!2129864 (= res!2771186 (validRegex!8337 lt!2444547))))

(assert (=> d!2129864 (= lt!2444547 e!4092532)))

(declare-fun c!1259332 () Bool)

(assert (=> d!2129864 (= c!1259332 e!4092536)))

(declare-fun res!2771185 () Bool)

(assert (=> d!2129864 (=> (not res!2771185) (not e!4092536))))

(assert (=> d!2129864 (= res!2771185 ((_ is Cons!65979) (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))))))

(assert (=> d!2129864 (forall!15793 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980)) lambda!381514)))

(assert (=> d!2129864 (= (generalisedUnion!2445 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980))) lt!2444547)))

(declare-fun b!6779318 () Bool)

(assert (=> b!6779318 (= e!4092533 (= lt!2444547 (head!13613 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980)))))))

(declare-fun b!6779319 () Bool)

(assert (=> b!6779319 (= e!4092537 e!4092533)))

(declare-fun c!1259330 () Bool)

(assert (=> b!6779319 (= c!1259330 (isEmpty!38340 (tail!12698 (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980)))))))

(assert (= (and d!2129864 res!2771185) b!6779315))

(assert (= (and d!2129864 c!1259332) b!6779317))

(assert (= (and d!2129864 (not c!1259332)) b!6779310))

(assert (= (and b!6779310 c!1259331) b!6779312))

(assert (= (and b!6779310 (not c!1259331)) b!6779313))

(assert (= (and d!2129864 res!2771186) b!6779316))

(assert (= (and b!6779316 c!1259333) b!6779311))

(assert (= (and b!6779316 (not c!1259333)) b!6779319))

(assert (= (and b!6779319 c!1259330) b!6779318))

(assert (= (and b!6779319 (not c!1259330)) b!6779314))

(declare-fun m!7528288 () Bool)

(assert (=> b!6779314 m!7528288))

(assert (=> b!6779319 m!7527360))

(declare-fun m!7528290 () Bool)

(assert (=> b!6779319 m!7528290))

(assert (=> b!6779319 m!7528290))

(declare-fun m!7528292 () Bool)

(assert (=> b!6779319 m!7528292))

(assert (=> b!6779318 m!7527360))

(declare-fun m!7528294 () Bool)

(assert (=> b!6779318 m!7528294))

(assert (=> b!6779316 m!7527360))

(declare-fun m!7528296 () Bool)

(assert (=> b!6779316 m!7528296))

(declare-fun m!7528298 () Bool)

(assert (=> b!6779312 m!7528298))

(declare-fun m!7528300 () Bool)

(assert (=> b!6779311 m!7528300))

(declare-fun m!7528302 () Bool)

(assert (=> d!2129864 m!7528302))

(assert (=> d!2129864 m!7527360))

(declare-fun m!7528304 () Bool)

(assert (=> d!2129864 m!7528304))

(declare-fun m!7528306 () Bool)

(assert (=> b!6779315 m!7528306))

(assert (=> d!2129430 d!2129864))

(declare-fun bs!1805388 () Bool)

(declare-fun d!2129866 () Bool)

(assert (= bs!1805388 (and d!2129866 d!2129456)))

(declare-fun lambda!381517 () Int)

(assert (=> bs!1805388 (= lambda!381517 lambda!381462)))

(declare-fun bs!1805389 () Bool)

(assert (= bs!1805389 (and d!2129866 d!2129460)))

(assert (=> bs!1805389 (= lambda!381517 lambda!381466)))

(declare-fun bs!1805390 () Bool)

(assert (= bs!1805390 (and d!2129866 d!2129462)))

(assert (=> bs!1805390 (= lambda!381517 lambda!381469)))

(declare-fun bs!1805391 () Bool)

(assert (= bs!1805391 (and d!2129866 d!2129778)))

(assert (=> bs!1805391 (= lambda!381517 lambda!381499)))

(declare-fun bs!1805392 () Bool)

(assert (= bs!1805392 (and d!2129866 d!2129282)))

(assert (=> bs!1805392 (= lambda!381517 lambda!381401)))

(declare-fun bs!1805393 () Bool)

(assert (= bs!1805393 (and d!2129866 d!2129458)))

(assert (=> bs!1805393 (= lambda!381517 lambda!381463)))

(declare-fun bs!1805394 () Bool)

(assert (= bs!1805394 (and d!2129866 d!2129864)))

(assert (=> bs!1805394 (= lambda!381517 lambda!381514)))

(declare-fun bs!1805395 () Bool)

(assert (= bs!1805395 (and d!2129866 d!2129480)))

(assert (=> bs!1805395 (= lambda!381517 lambda!381471)))

(declare-fun lt!2444548 () List!66103)

(assert (=> d!2129866 (forall!15793 lt!2444548 lambda!381517)))

(declare-fun e!4092540 () List!66103)

(assert (=> d!2129866 (= lt!2444548 e!4092540)))

(declare-fun c!1259334 () Bool)

(assert (=> d!2129866 (= c!1259334 ((_ is Cons!65980) (Cons!65980 lt!2444380 Nil!65980)))))

(assert (=> d!2129866 (= (unfocusZipperList!2022 (Cons!65980 lt!2444380 Nil!65980)) lt!2444548)))

(declare-fun b!6779324 () Bool)

(assert (=> b!6779324 (= e!4092540 (Cons!65979 (generalisedConcat!2198 (exprs!6485 (h!72428 (Cons!65980 lt!2444380 Nil!65980)))) (unfocusZipperList!2022 (t!379817 (Cons!65980 lt!2444380 Nil!65980)))))))

(declare-fun b!6779325 () Bool)

(assert (=> b!6779325 (= e!4092540 Nil!65979)))

(assert (= (and d!2129866 c!1259334) b!6779324))

(assert (= (and d!2129866 (not c!1259334)) b!6779325))

(declare-fun m!7528308 () Bool)

(assert (=> d!2129866 m!7528308))

(declare-fun m!7528310 () Bool)

(assert (=> b!6779324 m!7528310))

(declare-fun m!7528312 () Bool)

(assert (=> b!6779324 m!7528312))

(assert (=> d!2129430 d!2129866))

(declare-fun bs!1805402 () Bool)

(declare-fun b!6779330 () Bool)

(assert (= bs!1805402 (and b!6779330 d!2129374)))

(declare-fun lambda!381519 () Int)

(assert (=> bs!1805402 (not (= lambda!381519 lambda!381448))))

(declare-fun bs!1805405 () Bool)

(assert (= bs!1805405 (and b!6779330 b!6778528)))

(assert (=> bs!1805405 (not (= lambda!381519 lambda!381473))))

(declare-fun bs!1805407 () Bool)

(assert (= bs!1805407 (and b!6779330 d!2129420)))

(assert (=> bs!1805407 (not (= lambda!381519 lambda!381458))))

(declare-fun bs!1805409 () Bool)

(assert (= bs!1805409 (and b!6779330 b!6777698)))

(assert (=> bs!1805409 (not (= lambda!381519 lambda!381388))))

(declare-fun bs!1805410 () Bool)

(assert (= bs!1805410 (and b!6779330 b!6778522)))

(assert (=> bs!1805410 (= (and (= (reg!16930 (regOne!33715 lt!2444369)) (reg!16930 lt!2444369)) (= (regOne!33715 lt!2444369) lt!2444369)) (= lambda!381519 lambda!381472))))

(declare-fun bs!1805411 () Bool)

(assert (= bs!1805411 (and b!6779330 b!6777987)))

(assert (=> bs!1805411 (not (= lambda!381519 lambda!381419))))

(declare-fun bs!1805413 () Bool)

(assert (= bs!1805413 (and b!6779330 d!2129396)))

(assert (=> bs!1805413 (= (and (= (reg!16930 (regOne!33715 lt!2444369)) (reg!16930 r!7292)) (= (regOne!33715 lt!2444369) (Star!16601 (reg!16930 r!7292)))) (= lambda!381519 lambda!381455))))

(assert (=> bs!1805402 (not (= lambda!381519 lambda!381447))))

(declare-fun bs!1805415 () Bool)

(assert (= bs!1805415 (and b!6779330 b!6779285)))

(assert (=> bs!1805415 (not (= lambda!381519 lambda!381511))))

(declare-fun bs!1805416 () Bool)

(assert (= bs!1805416 (and b!6779330 b!6779279)))

(assert (=> bs!1805416 (= (and (= (reg!16930 (regOne!33715 lt!2444369)) (reg!16930 (regOne!33715 r!7292))) (= (regOne!33715 lt!2444369) (regOne!33715 r!7292))) (= lambda!381519 lambda!381509))))

(assert (=> bs!1805413 (not (= lambda!381519 lambda!381454))))

(assert (=> bs!1805409 (not (= lambda!381519 lambda!381386))))

(assert (=> bs!1805409 (= (and (= (reg!16930 (regOne!33715 lt!2444369)) (reg!16930 r!7292)) (= (regOne!33715 lt!2444369) r!7292)) (= lambda!381519 lambda!381387))))

(declare-fun bs!1805420 () Bool)

(assert (= bs!1805420 (and b!6779330 b!6777981)))

(assert (=> bs!1805420 (= (and (= (reg!16930 (regOne!33715 lt!2444369)) (reg!16930 r!7292)) (= (regOne!33715 lt!2444369) r!7292)) (= lambda!381519 lambda!381416))))

(assert (=> b!6779330 true))

(assert (=> b!6779330 true))

(declare-fun bs!1805422 () Bool)

(declare-fun b!6779336 () Bool)

(assert (= bs!1805422 (and b!6779336 d!2129374)))

(declare-fun lambda!381520 () Int)

(assert (=> bs!1805422 (= (and (= (regOne!33714 (regOne!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33714 (regOne!33715 lt!2444369)) r!7292)) (= lambda!381520 lambda!381448))))

(declare-fun bs!1805423 () Bool)

(assert (= bs!1805423 (and b!6779336 b!6779330)))

(assert (=> bs!1805423 (not (= lambda!381520 lambda!381519))))

(declare-fun bs!1805424 () Bool)

(assert (= bs!1805424 (and b!6779336 b!6778528)))

(assert (=> bs!1805424 (= (and (= (regOne!33714 (regOne!33715 lt!2444369)) (regOne!33714 lt!2444369)) (= (regTwo!33714 (regOne!33715 lt!2444369)) (regTwo!33714 lt!2444369))) (= lambda!381520 lambda!381473))))

(declare-fun bs!1805425 () Bool)

(assert (= bs!1805425 (and b!6779336 d!2129420)))

(assert (=> bs!1805425 (not (= lambda!381520 lambda!381458))))

(declare-fun bs!1805426 () Bool)

(assert (= bs!1805426 (and b!6779336 b!6777698)))

(assert (=> bs!1805426 (= (and (= (regOne!33714 (regOne!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33714 (regOne!33715 lt!2444369)) r!7292)) (= lambda!381520 lambda!381388))))

(declare-fun bs!1805427 () Bool)

(assert (= bs!1805427 (and b!6779336 b!6778522)))

(assert (=> bs!1805427 (not (= lambda!381520 lambda!381472))))

(declare-fun bs!1805428 () Bool)

(assert (= bs!1805428 (and b!6779336 b!6777987)))

(assert (=> bs!1805428 (= (and (= (regOne!33714 (regOne!33715 lt!2444369)) (regOne!33714 r!7292)) (= (regTwo!33714 (regOne!33715 lt!2444369)) (regTwo!33714 r!7292))) (= lambda!381520 lambda!381419))))

(declare-fun bs!1805429 () Bool)

(assert (= bs!1805429 (and b!6779336 d!2129396)))

(assert (=> bs!1805429 (not (= lambda!381520 lambda!381455))))

(assert (=> bs!1805422 (not (= lambda!381520 lambda!381447))))

(declare-fun bs!1805430 () Bool)

(assert (= bs!1805430 (and b!6779336 b!6779285)))

(assert (=> bs!1805430 (= (and (= (regOne!33714 (regOne!33715 lt!2444369)) (regOne!33714 (regOne!33715 r!7292))) (= (regTwo!33714 (regOne!33715 lt!2444369)) (regTwo!33714 (regOne!33715 r!7292)))) (= lambda!381520 lambda!381511))))

(declare-fun bs!1805431 () Bool)

(assert (= bs!1805431 (and b!6779336 b!6779279)))

(assert (=> bs!1805431 (not (= lambda!381520 lambda!381509))))

(assert (=> bs!1805429 (not (= lambda!381520 lambda!381454))))

(assert (=> bs!1805426 (not (= lambda!381520 lambda!381386))))

(assert (=> bs!1805426 (not (= lambda!381520 lambda!381387))))

(declare-fun bs!1805432 () Bool)

(assert (= bs!1805432 (and b!6779336 b!6777981)))

(assert (=> bs!1805432 (not (= lambda!381520 lambda!381416))))

(assert (=> b!6779336 true))

(assert (=> b!6779336 true))

(declare-fun b!6779326 () Bool)

(declare-fun e!4092543 () Bool)

(declare-fun call!615001 () Bool)

(assert (=> b!6779326 (= e!4092543 call!615001)))

(declare-fun b!6779327 () Bool)

(declare-fun e!4092545 () Bool)

(declare-fun e!4092544 () Bool)

(assert (=> b!6779327 (= e!4092545 e!4092544)))

(declare-fun c!1259335 () Bool)

(assert (=> b!6779327 (= c!1259335 ((_ is Star!16601) (regOne!33715 lt!2444369)))))

(declare-fun b!6779328 () Bool)

(declare-fun e!4092541 () Bool)

(assert (=> b!6779328 (= e!4092543 e!4092541)))

(declare-fun res!2771191 () Bool)

(assert (=> b!6779328 (= res!2771191 (not ((_ is EmptyLang!16601) (regOne!33715 lt!2444369))))))

(assert (=> b!6779328 (=> (not res!2771191) (not e!4092541))))

(declare-fun b!6779329 () Bool)

(declare-fun c!1259336 () Bool)

(assert (=> b!6779329 (= c!1259336 ((_ is Union!16601) (regOne!33715 lt!2444369)))))

(declare-fun e!4092547 () Bool)

(assert (=> b!6779329 (= e!4092547 e!4092545)))

(declare-fun d!2129868 () Bool)

(declare-fun c!1259337 () Bool)

(assert (=> d!2129868 (= c!1259337 ((_ is EmptyExpr!16601) (regOne!33715 lt!2444369)))))

(assert (=> d!2129868 (= (matchRSpec!3702 (regOne!33715 lt!2444369) s!2326) e!4092543)))

(declare-fun e!4092546 () Bool)

(declare-fun call!615002 () Bool)

(assert (=> b!6779330 (= e!4092546 call!615002)))

(declare-fun b!6779331 () Bool)

(declare-fun res!2771192 () Bool)

(assert (=> b!6779331 (=> res!2771192 e!4092546)))

(assert (=> b!6779331 (= res!2771192 call!615001)))

(assert (=> b!6779331 (= e!4092544 e!4092546)))

(declare-fun b!6779332 () Bool)

(declare-fun e!4092542 () Bool)

(assert (=> b!6779332 (= e!4092545 e!4092542)))

(declare-fun res!2771193 () Bool)

(assert (=> b!6779332 (= res!2771193 (matchRSpec!3702 (regOne!33715 (regOne!33715 lt!2444369)) s!2326))))

(assert (=> b!6779332 (=> res!2771193 e!4092542)))

(declare-fun bm!614996 () Bool)

(assert (=> bm!614996 (= call!615002 (Exists!3669 (ite c!1259335 lambda!381519 lambda!381520)))))

(declare-fun b!6779333 () Bool)

(assert (=> b!6779333 (= e!4092542 (matchRSpec!3702 (regTwo!33715 (regOne!33715 lt!2444369)) s!2326))))

(declare-fun bm!614997 () Bool)

(assert (=> bm!614997 (= call!615001 (isEmpty!38337 s!2326))))

(declare-fun b!6779334 () Bool)

(assert (=> b!6779334 (= e!4092547 (= s!2326 (Cons!65978 (c!1258869 (regOne!33715 lt!2444369)) Nil!65978)))))

(declare-fun b!6779335 () Bool)

(declare-fun c!1259338 () Bool)

(assert (=> b!6779335 (= c!1259338 ((_ is ElementMatch!16601) (regOne!33715 lt!2444369)))))

(assert (=> b!6779335 (= e!4092541 e!4092547)))

(assert (=> b!6779336 (= e!4092544 call!615002)))

(assert (= (and d!2129868 c!1259337) b!6779326))

(assert (= (and d!2129868 (not c!1259337)) b!6779328))

(assert (= (and b!6779328 res!2771191) b!6779335))

(assert (= (and b!6779335 c!1259338) b!6779334))

(assert (= (and b!6779335 (not c!1259338)) b!6779329))

(assert (= (and b!6779329 c!1259336) b!6779332))

(assert (= (and b!6779329 (not c!1259336)) b!6779327))

(assert (= (and b!6779332 (not res!2771193)) b!6779333))

(assert (= (and b!6779327 c!1259335) b!6779331))

(assert (= (and b!6779327 (not c!1259335)) b!6779336))

(assert (= (and b!6779331 (not res!2771192)) b!6779330))

(assert (= (or b!6779330 b!6779336) bm!614996))

(assert (= (or b!6779326 b!6779331) bm!614997))

(declare-fun m!7528326 () Bool)

(assert (=> b!6779332 m!7528326))

(declare-fun m!7528328 () Bool)

(assert (=> bm!614996 m!7528328))

(declare-fun m!7528330 () Bool)

(assert (=> b!6779333 m!7528330))

(assert (=> bm!614997 m!7526878))

(assert (=> b!6778524 d!2129868))

(declare-fun b!6779357 () Bool)

(declare-fun e!4092562 () (InoxSet Context!11970))

(assert (=> b!6779357 (= e!4092562 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2129880 () Bool)

(declare-fun c!1259346 () Bool)

(declare-fun e!4092561 () Bool)

(assert (=> d!2129880 (= c!1259346 e!4092561)))

(declare-fun res!2771201 () Bool)

(assert (=> d!2129880 (=> (not res!2771201) (not e!4092561))))

(assert (=> d!2129880 (= res!2771201 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))))

(declare-fun e!4092563 () (InoxSet Context!11970))

(assert (=> d!2129880 (= (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (h!72426 s!2326)) e!4092563)))

(declare-fun b!6779358 () Bool)

(assert (=> b!6779358 (= e!4092563 e!4092562)))

(declare-fun c!1259347 () Bool)

(assert (=> b!6779358 (= c!1259347 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))))

(declare-fun b!6779359 () Bool)

(declare-fun call!615012 () (InoxSet Context!11970))

(assert (=> b!6779359 (= e!4092562 call!615012)))

(declare-fun b!6779360 () Bool)

(assert (=> b!6779360 (= e!4092561 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))))))

(declare-fun bm!615007 () Bool)

(assert (=> bm!615007 (= call!615012 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))) (h!72426 s!2326)))))

(declare-fun b!6779361 () Bool)

(assert (=> b!6779361 (= e!4092563 ((_ map or) call!615012 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979)))))))) (h!72426 s!2326))))))

(assert (= (and d!2129880 res!2771201) b!6779360))

(assert (= (and d!2129880 c!1259346) b!6779361))

(assert (= (and d!2129880 (not c!1259346)) b!6779358))

(assert (= (and b!6779358 c!1259347) b!6779359))

(assert (= (and b!6779358 (not c!1259347)) b!6779357))

(assert (= (or b!6779361 b!6779359) bm!615007))

(declare-fun m!7528338 () Bool)

(assert (=> b!6779360 m!7528338))

(declare-fun m!7528340 () Bool)

(assert (=> bm!615007 m!7528340))

(declare-fun m!7528342 () Bool)

(assert (=> b!6779361 m!7528342))

(assert (=> b!6778432 d!2129880))

(declare-fun bm!615008 () Bool)

(declare-fun call!615014 () List!66103)

(declare-fun call!615017 () List!66103)

(assert (=> bm!615008 (= call!615014 call!615017)))

(declare-fun bm!615009 () Bool)

(declare-fun call!615015 () (InoxSet Context!11970))

(declare-fun call!615018 () (InoxSet Context!11970))

(assert (=> bm!615009 (= call!615015 call!615018)))

(declare-fun b!6779362 () Bool)

(declare-fun e!4092566 () (InoxSet Context!11970))

(declare-fun e!4092564 () (InoxSet Context!11970))

(assert (=> b!6779362 (= e!4092566 e!4092564)))

(declare-fun c!1259352 () Bool)

(assert (=> b!6779362 (= c!1259352 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444384))))))

(declare-fun bm!615010 () Bool)

(declare-fun call!615013 () (InoxSet Context!11970))

(assert (=> bm!615010 (= call!615013 call!615015)))

(declare-fun b!6779363 () Bool)

(assert (=> b!6779363 (= e!4092564 call!615013)))

(declare-fun bm!615011 () Bool)

(declare-fun c!1259349 () Bool)

(assert (=> bm!615011 (= call!615017 ($colon$colon!2410 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384)))) (ite (or c!1259349 c!1259352) (regTwo!33714 (h!72427 (exprs!6485 lt!2444384))) (h!72427 (exprs!6485 lt!2444384)))))))

(declare-fun d!2129884 () Bool)

(declare-fun c!1259350 () Bool)

(assert (=> d!2129884 (= c!1259350 (and ((_ is ElementMatch!16601) (h!72427 (exprs!6485 lt!2444384))) (= (c!1258869 (h!72427 (exprs!6485 lt!2444384))) (h!72426 s!2326))))))

(declare-fun e!4092568 () (InoxSet Context!11970))

(assert (=> d!2129884 (= (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444384)) (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (h!72426 s!2326)) e!4092568)))

(declare-fun b!6779364 () Bool)

(declare-fun c!1259351 () Bool)

(assert (=> b!6779364 (= c!1259351 ((_ is Star!16601) (h!72427 (exprs!6485 lt!2444384))))))

(declare-fun e!4092565 () (InoxSet Context!11970))

(assert (=> b!6779364 (= e!4092564 e!4092565)))

(declare-fun bm!615012 () Bool)

(declare-fun call!615016 () (InoxSet Context!11970))

(declare-fun c!1259348 () Bool)

(assert (=> bm!615012 (= call!615016 (derivationStepZipperDown!1829 (ite c!1259348 (regTwo!33715 (h!72427 (exprs!6485 lt!2444384))) (regOne!33714 (h!72427 (exprs!6485 lt!2444384)))) (ite c!1259348 (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (Context!11971 call!615017)) (h!72426 s!2326)))))

(declare-fun b!6779365 () Bool)

(assert (=> b!6779365 (= e!4092568 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 (t!379816 (exprs!6485 lt!2444384))) true))))

(declare-fun b!6779366 () Bool)

(declare-fun e!4092569 () (InoxSet Context!11970))

(assert (=> b!6779366 (= e!4092569 ((_ map or) call!615018 call!615016))))

(declare-fun b!6779367 () Bool)

(assert (=> b!6779367 (= e!4092565 call!615013)))

(declare-fun b!6779368 () Bool)

(assert (=> b!6779368 (= e!4092568 e!4092569)))

(assert (=> b!6779368 (= c!1259348 ((_ is Union!16601) (h!72427 (exprs!6485 lt!2444384))))))

(declare-fun b!6779369 () Bool)

(assert (=> b!6779369 (= e!4092566 ((_ map or) call!615016 call!615015))))

(declare-fun b!6779370 () Bool)

(assert (=> b!6779370 (= e!4092565 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779371 () Bool)

(declare-fun e!4092567 () Bool)

(assert (=> b!6779371 (= c!1259349 e!4092567)))

(declare-fun res!2771202 () Bool)

(assert (=> b!6779371 (=> (not res!2771202) (not e!4092567))))

(assert (=> b!6779371 (= res!2771202 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444384))))))

(assert (=> b!6779371 (= e!4092569 e!4092566)))

(declare-fun b!6779372 () Bool)

(assert (=> b!6779372 (= e!4092567 (nullable!6580 (regOne!33714 (h!72427 (exprs!6485 lt!2444384)))))))

(declare-fun bm!615013 () Bool)

(assert (=> bm!615013 (= call!615018 (derivationStepZipperDown!1829 (ite c!1259348 (regOne!33715 (h!72427 (exprs!6485 lt!2444384))) (ite c!1259349 (regTwo!33714 (h!72427 (exprs!6485 lt!2444384))) (ite c!1259352 (regOne!33714 (h!72427 (exprs!6485 lt!2444384))) (reg!16930 (h!72427 (exprs!6485 lt!2444384)))))) (ite (or c!1259348 c!1259349) (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (Context!11971 call!615014)) (h!72426 s!2326)))))

(assert (= (and d!2129884 c!1259350) b!6779365))

(assert (= (and d!2129884 (not c!1259350)) b!6779368))

(assert (= (and b!6779368 c!1259348) b!6779366))

(assert (= (and b!6779368 (not c!1259348)) b!6779371))

(assert (= (and b!6779371 res!2771202) b!6779372))

(assert (= (and b!6779371 c!1259349) b!6779369))

(assert (= (and b!6779371 (not c!1259349)) b!6779362))

(assert (= (and b!6779362 c!1259352) b!6779363))

(assert (= (and b!6779362 (not c!1259352)) b!6779364))

(assert (= (and b!6779364 c!1259351) b!6779367))

(assert (= (and b!6779364 (not c!1259351)) b!6779370))

(assert (= (or b!6779363 b!6779367) bm!615008))

(assert (= (or b!6779363 b!6779367) bm!615010))

(assert (= (or b!6779369 bm!615008) bm!615011))

(assert (= (or b!6779369 bm!615010) bm!615009))

(assert (= (or b!6779366 b!6779369) bm!615012))

(assert (= (or b!6779366 bm!615009) bm!615013))

(declare-fun m!7528344 () Bool)

(assert (=> bm!615013 m!7528344))

(declare-fun m!7528346 () Bool)

(assert (=> bm!615011 m!7528346))

(declare-fun m!7528348 () Bool)

(assert (=> bm!615012 m!7528348))

(declare-fun m!7528350 () Bool)

(assert (=> b!6779372 m!7528350))

(declare-fun m!7528352 () Bool)

(assert (=> b!6779365 m!7528352))

(assert (=> bm!614826 d!2129884))

(declare-fun d!2129888 () Bool)

(assert (=> d!2129888 (= (flatMap!2082 lt!2444376 lambda!381470) (choose!50484 lt!2444376 lambda!381470))))

(declare-fun bs!1805437 () Bool)

(assert (= bs!1805437 d!2129888))

(declare-fun m!7528354 () Bool)

(assert (=> bs!1805437 m!7528354))

(assert (=> d!2129468 d!2129888))

(assert (=> b!6778541 d!2129680))

(declare-fun d!2129890 () Bool)

(assert (=> d!2129890 (= (nullable!6580 (h!72427 (exprs!6485 lt!2444380))) (nullableFct!2486 (h!72427 (exprs!6485 lt!2444380))))))

(declare-fun bs!1805439 () Bool)

(assert (= bs!1805439 d!2129890))

(declare-fun m!7528356 () Bool)

(assert (=> bs!1805439 m!7528356))

(assert (=> b!6778452 d!2129890))

(assert (=> bs!1805081 d!2129476))

(assert (=> d!2129344 d!2129330))

(assert (=> d!2129344 d!2129308))

(declare-fun d!2129892 () Bool)

(assert (=> d!2129892 (= (matchR!8784 r!7292 s!2326) (matchRSpec!3702 r!7292 s!2326))))

(assert (=> d!2129892 true))

(declare-fun _$88!5565 () Unit!159893)

(assert (=> d!2129892 (= (choose!50476 r!7292 s!2326) _$88!5565)))

(declare-fun bs!1805452 () Bool)

(assert (= bs!1805452 d!2129892))

(assert (=> bs!1805452 m!7526860))

(assert (=> bs!1805452 m!7526858))

(assert (=> d!2129344 d!2129892))

(assert (=> d!2129344 d!2129496))

(declare-fun b!6779384 () Bool)

(declare-fun e!4092577 () Bool)

(declare-fun call!615022 () Bool)

(assert (=> b!6779384 (= e!4092577 call!615022)))

(declare-fun d!2129894 () Bool)

(declare-fun res!2771208 () Bool)

(declare-fun e!4092578 () Bool)

(assert (=> d!2129894 (=> res!2771208 e!4092578)))

(assert (=> d!2129894 (= res!2771208 ((_ is ElementMatch!16601) lt!2444452))))

(assert (=> d!2129894 (= (validRegex!8337 lt!2444452) e!4092578)))

(declare-fun b!6779385 () Bool)

(declare-fun e!4092583 () Bool)

(assert (=> b!6779385 (= e!4092583 e!4092577)))

(declare-fun res!2771210 () Bool)

(assert (=> b!6779385 (= res!2771210 (not (nullable!6580 (reg!16930 lt!2444452))))))

(assert (=> b!6779385 (=> (not res!2771210) (not e!4092577))))

(declare-fun bm!615016 () Bool)

(declare-fun c!1259358 () Bool)

(declare-fun c!1259357 () Bool)

(assert (=> bm!615016 (= call!615022 (validRegex!8337 (ite c!1259357 (reg!16930 lt!2444452) (ite c!1259358 (regOne!33715 lt!2444452) (regOne!33714 lt!2444452)))))))

(declare-fun bm!615017 () Bool)

(declare-fun call!615021 () Bool)

(assert (=> bm!615017 (= call!615021 call!615022)))

(declare-fun b!6779386 () Bool)

(declare-fun res!2771207 () Bool)

(declare-fun e!4092579 () Bool)

(assert (=> b!6779386 (=> (not res!2771207) (not e!4092579))))

(assert (=> b!6779386 (= res!2771207 call!615021)))

(declare-fun e!4092580 () Bool)

(assert (=> b!6779386 (= e!4092580 e!4092579)))

(declare-fun b!6779387 () Bool)

(declare-fun res!2771209 () Bool)

(declare-fun e!4092582 () Bool)

(assert (=> b!6779387 (=> res!2771209 e!4092582)))

(assert (=> b!6779387 (= res!2771209 (not ((_ is Concat!25446) lt!2444452)))))

(assert (=> b!6779387 (= e!4092580 e!4092582)))

(declare-fun b!6779388 () Bool)

(assert (=> b!6779388 (= e!4092578 e!4092583)))

(assert (=> b!6779388 (= c!1259357 ((_ is Star!16601) lt!2444452))))

(declare-fun bm!615018 () Bool)

(declare-fun call!615023 () Bool)

(assert (=> bm!615018 (= call!615023 (validRegex!8337 (ite c!1259358 (regTwo!33715 lt!2444452) (regTwo!33714 lt!2444452))))))

(declare-fun b!6779389 () Bool)

(assert (=> b!6779389 (= e!4092579 call!615023)))

(declare-fun b!6779390 () Bool)

(declare-fun e!4092581 () Bool)

(assert (=> b!6779390 (= e!4092581 call!615023)))

(declare-fun b!6779391 () Bool)

(assert (=> b!6779391 (= e!4092583 e!4092580)))

(assert (=> b!6779391 (= c!1259358 ((_ is Union!16601) lt!2444452))))

(declare-fun b!6779392 () Bool)

(assert (=> b!6779392 (= e!4092582 e!4092581)))

(declare-fun res!2771206 () Bool)

(assert (=> b!6779392 (=> (not res!2771206) (not e!4092581))))

(assert (=> b!6779392 (= res!2771206 call!615021)))

(assert (= (and d!2129894 (not res!2771208)) b!6779388))

(assert (= (and b!6779388 c!1259357) b!6779385))

(assert (= (and b!6779388 (not c!1259357)) b!6779391))

(assert (= (and b!6779385 res!2771210) b!6779384))

(assert (= (and b!6779391 c!1259358) b!6779386))

(assert (= (and b!6779391 (not c!1259358)) b!6779387))

(assert (= (and b!6779386 res!2771207) b!6779389))

(assert (= (and b!6779387 (not res!2771209)) b!6779392))

(assert (= (and b!6779392 res!2771206) b!6779390))

(assert (= (or b!6779389 b!6779390) bm!615018))

(assert (= (or b!6779386 b!6779392) bm!615017))

(assert (= (or b!6779384 bm!615017) bm!615016))

(declare-fun m!7528358 () Bool)

(assert (=> b!6779385 m!7528358))

(declare-fun m!7528360 () Bool)

(assert (=> bm!615016 m!7528360))

(declare-fun m!7528362 () Bool)

(assert (=> bm!615018 m!7528362))

(assert (=> d!2129360 d!2129894))

(assert (=> d!2129360 d!2129460))

(assert (=> d!2129360 d!2129462))

(assert (=> d!2129446 d!2129442))

(declare-fun d!2129896 () Bool)

(assert (=> d!2129896 (= (flatMap!2082 z!1189 lambda!381389) (dynLambda!26326 lambda!381389 (h!72428 zl!343)))))

(assert (=> d!2129896 true))

(declare-fun _$13!4178 () Unit!159893)

(assert (=> d!2129896 (= (choose!50485 z!1189 (h!72428 zl!343) lambda!381389) _$13!4178)))

(declare-fun b_lambda!255249 () Bool)

(assert (=> (not b_lambda!255249) (not d!2129896)))

(declare-fun bs!1805459 () Bool)

(assert (= bs!1805459 d!2129896))

(assert (=> bs!1805459 m!7526868))

(assert (=> bs!1805459 m!7527410))

(assert (=> d!2129446 d!2129896))

(assert (=> d!2129454 d!2129450))

(declare-fun d!2129898 () Bool)

(assert (=> d!2129898 (= (flatMap!2082 lt!2444374 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444380))))

(assert (=> d!2129898 true))

(declare-fun _$13!4179 () Unit!159893)

(assert (=> d!2129898 (= (choose!50485 lt!2444374 lt!2444380 lambda!381389) _$13!4179)))

(declare-fun b_lambda!255251 () Bool)

(assert (=> (not b_lambda!255251) (not d!2129898)))

(declare-fun bs!1805463 () Bool)

(assert (= bs!1805463 d!2129898))

(assert (=> bs!1805463 m!7526890))

(assert (=> bs!1805463 m!7527432))

(assert (=> d!2129454 d!2129898))

(declare-fun d!2129900 () Bool)

(declare-fun c!1259359 () Bool)

(assert (=> d!2129900 (= c!1259359 (isEmpty!38337 (tail!12699 (t!379815 s!2326))))))

(declare-fun e!4092584 () Bool)

(assert (=> d!2129900 (= (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (head!13614 (t!379815 s!2326))) (tail!12699 (t!379815 s!2326))) e!4092584)))

(declare-fun b!6779393 () Bool)

(assert (=> b!6779393 (= e!4092584 (nullableZipper!2308 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (head!13614 (t!379815 s!2326)))))))

(declare-fun b!6779394 () Bool)

(assert (=> b!6779394 (= e!4092584 (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (head!13614 (t!379815 s!2326))) (head!13614 (tail!12699 (t!379815 s!2326)))) (tail!12699 (tail!12699 (t!379815 s!2326)))))))

(assert (= (and d!2129900 c!1259359) b!6779393))

(assert (= (and d!2129900 (not c!1259359)) b!6779394))

(assert (=> d!2129900 m!7527166))

(declare-fun m!7528364 () Bool)

(assert (=> d!2129900 m!7528364))

(assert (=> b!6779393 m!7527164))

(declare-fun m!7528366 () Bool)

(assert (=> b!6779393 m!7528366))

(assert (=> b!6779394 m!7527166))

(declare-fun m!7528368 () Bool)

(assert (=> b!6779394 m!7528368))

(assert (=> b!6779394 m!7527164))

(assert (=> b!6779394 m!7528368))

(declare-fun m!7528370 () Bool)

(assert (=> b!6779394 m!7528370))

(assert (=> b!6779394 m!7527166))

(declare-fun m!7528372 () Bool)

(assert (=> b!6779394 m!7528372))

(assert (=> b!6779394 m!7528370))

(assert (=> b!6779394 m!7528372))

(declare-fun m!7528374 () Bool)

(assert (=> b!6779394 m!7528374))

(assert (=> b!6778137 d!2129900))

(declare-fun bs!1805469 () Bool)

(declare-fun d!2129902 () Bool)

(assert (= bs!1805469 (and d!2129902 b!6777699)))

(declare-fun lambda!381523 () Int)

(assert (=> bs!1805469 (= (= (head!13614 (t!379815 s!2326)) (h!72426 s!2326)) (= lambda!381523 lambda!381389))))

(declare-fun bs!1805471 () Bool)

(assert (= bs!1805471 (and d!2129902 d!2129354)))

(assert (=> bs!1805471 (= (= (head!13614 (t!379815 s!2326)) (h!72426 s!2326)) (= lambda!381523 lambda!381433))))

(declare-fun bs!1805473 () Bool)

(assert (= bs!1805473 (and d!2129902 d!2129440)))

(assert (=> bs!1805473 (= (= (head!13614 (t!379815 s!2326)) (h!72426 s!2326)) (= lambda!381523 lambda!381459))))

(declare-fun bs!1805474 () Bool)

(assert (= bs!1805474 (and d!2129902 d!2129468)))

(assert (=> bs!1805474 (= (= (head!13614 (t!379815 s!2326)) (h!72426 s!2326)) (= lambda!381523 lambda!381470))))

(assert (=> d!2129902 true))

(assert (=> d!2129902 (= (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) (head!13614 (t!379815 s!2326))) (flatMap!2082 (derivationStepZipper!2545 lt!2444374 (h!72426 s!2326)) lambda!381523))))

(declare-fun bs!1805476 () Bool)

(assert (= bs!1805476 d!2129902))

(assert (=> bs!1805476 m!7526784))

(declare-fun m!7528376 () Bool)

(assert (=> bs!1805476 m!7528376))

(assert (=> b!6778137 d!2129902))

(declare-fun d!2129904 () Bool)

(assert (=> d!2129904 (= (head!13614 (t!379815 s!2326)) (h!72426 (t!379815 s!2326)))))

(assert (=> b!6778137 d!2129904))

(declare-fun d!2129906 () Bool)

(assert (=> d!2129906 (= (tail!12699 (t!379815 s!2326)) (t!379815 (t!379815 s!2326)))))

(assert (=> b!6778137 d!2129906))

(declare-fun d!2129908 () Bool)

(assert (=> d!2129908 (= (isEmpty!38340 (tail!12698 (exprs!6485 (h!72428 zl!343)))) ((_ is Nil!65979) (tail!12698 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> b!6777873 d!2129908))

(declare-fun d!2129910 () Bool)

(assert (=> d!2129910 (= (tail!12698 (exprs!6485 (h!72428 zl!343))) (t!379816 (exprs!6485 (h!72428 zl!343))))))

(assert (=> b!6777873 d!2129910))

(declare-fun d!2129912 () Bool)

(assert (=> d!2129912 (= (Exists!3669 (ite c!1258954 lambda!381416 lambda!381419)) (choose!50478 (ite c!1258954 lambda!381416 lambda!381419)))))

(declare-fun bs!1805477 () Bool)

(assert (= bs!1805477 d!2129912))

(declare-fun m!7528384 () Bool)

(assert (=> bs!1805477 m!7528384))

(assert (=> bm!614771 d!2129912))

(declare-fun d!2129918 () Bool)

(declare-fun res!2771211 () Bool)

(declare-fun e!4092585 () Bool)

(assert (=> d!2129918 (=> res!2771211 e!4092585)))

(assert (=> d!2129918 (= res!2771211 ((_ is Nil!65979) (exprs!6485 lt!2444367)))))

(assert (=> d!2129918 (= (forall!15793 (exprs!6485 lt!2444367) lambda!381471) e!4092585)))

(declare-fun b!6779395 () Bool)

(declare-fun e!4092586 () Bool)

(assert (=> b!6779395 (= e!4092585 e!4092586)))

(declare-fun res!2771212 () Bool)

(assert (=> b!6779395 (=> (not res!2771212) (not e!4092586))))

(assert (=> b!6779395 (= res!2771212 (dynLambda!26328 lambda!381471 (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun b!6779396 () Bool)

(assert (=> b!6779396 (= e!4092586 (forall!15793 (t!379816 (exprs!6485 lt!2444367)) lambda!381471))))

(assert (= (and d!2129918 (not res!2771211)) b!6779395))

(assert (= (and b!6779395 res!2771212) b!6779396))

(declare-fun b_lambda!255253 () Bool)

(assert (=> (not b_lambda!255253) (not b!6779395)))

(declare-fun m!7528386 () Bool)

(assert (=> b!6779395 m!7528386))

(declare-fun m!7528388 () Bool)

(assert (=> b!6779396 m!7528388))

(assert (=> d!2129480 d!2129918))

(assert (=> b!6778507 d!2129692))

(declare-fun d!2129920 () Bool)

(assert (=> d!2129920 (= (Exists!3669 lambda!381454) (choose!50478 lambda!381454))))

(declare-fun bs!1805478 () Bool)

(assert (= bs!1805478 d!2129920))

(declare-fun m!7528390 () Bool)

(assert (=> bs!1805478 m!7528390))

(assert (=> d!2129396 d!2129920))

(declare-fun d!2129924 () Bool)

(assert (=> d!2129924 (= (Exists!3669 lambda!381455) (choose!50478 lambda!381455))))

(declare-fun bs!1805479 () Bool)

(assert (= bs!1805479 d!2129924))

(declare-fun m!7528392 () Bool)

(assert (=> bs!1805479 m!7528392))

(assert (=> d!2129396 d!2129924))

(declare-fun bs!1805481 () Bool)

(declare-fun d!2129926 () Bool)

(assert (= bs!1805481 (and d!2129926 b!6779336)))

(declare-fun lambda!381528 () Int)

(assert (=> bs!1805481 (not (= lambda!381528 lambda!381520))))

(declare-fun bs!1805482 () Bool)

(assert (= bs!1805482 (and d!2129926 d!2129374)))

(assert (=> bs!1805482 (not (= lambda!381528 lambda!381448))))

(declare-fun bs!1805483 () Bool)

(assert (= bs!1805483 (and d!2129926 b!6779330)))

(assert (=> bs!1805483 (not (= lambda!381528 lambda!381519))))

(declare-fun bs!1805484 () Bool)

(assert (= bs!1805484 (and d!2129926 b!6778528)))

(assert (=> bs!1805484 (not (= lambda!381528 lambda!381473))))

(declare-fun bs!1805485 () Bool)

(assert (= bs!1805485 (and d!2129926 d!2129420)))

(assert (=> bs!1805485 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381528 lambda!381458))))

(declare-fun bs!1805486 () Bool)

(assert (= bs!1805486 (and d!2129926 b!6777698)))

(assert (=> bs!1805486 (not (= lambda!381528 lambda!381388))))

(declare-fun bs!1805487 () Bool)

(assert (= bs!1805487 (and d!2129926 b!6778522)))

(assert (=> bs!1805487 (not (= lambda!381528 lambda!381472))))

(declare-fun bs!1805488 () Bool)

(assert (= bs!1805488 (and d!2129926 b!6777987)))

(assert (=> bs!1805488 (not (= lambda!381528 lambda!381419))))

(declare-fun bs!1805489 () Bool)

(assert (= bs!1805489 (and d!2129926 d!2129396)))

(assert (=> bs!1805489 (not (= lambda!381528 lambda!381455))))

(assert (=> bs!1805482 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381528 lambda!381447))))

(declare-fun bs!1805490 () Bool)

(assert (= bs!1805490 (and d!2129926 b!6779285)))

(assert (=> bs!1805490 (not (= lambda!381528 lambda!381511))))

(declare-fun bs!1805491 () Bool)

(assert (= bs!1805491 (and d!2129926 b!6779279)))

(assert (=> bs!1805491 (not (= lambda!381528 lambda!381509))))

(assert (=> bs!1805489 (= lambda!381528 lambda!381454)))

(assert (=> bs!1805486 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381528 lambda!381386))))

(assert (=> bs!1805486 (not (= lambda!381528 lambda!381387))))

(declare-fun bs!1805492 () Bool)

(assert (= bs!1805492 (and d!2129926 b!6777981)))

(assert (=> bs!1805492 (not (= lambda!381528 lambda!381416))))

(assert (=> d!2129926 true))

(assert (=> d!2129926 true))

(declare-fun lambda!381529 () Int)

(assert (=> bs!1805481 (not (= lambda!381529 lambda!381520))))

(assert (=> bs!1805482 (not (= lambda!381529 lambda!381448))))

(assert (=> bs!1805483 (= (and (= (reg!16930 r!7292) (reg!16930 (regOne!33715 lt!2444369))) (= (Star!16601 (reg!16930 r!7292)) (regOne!33715 lt!2444369))) (= lambda!381529 lambda!381519))))

(assert (=> bs!1805484 (not (= lambda!381529 lambda!381473))))

(assert (=> bs!1805485 (not (= lambda!381529 lambda!381458))))

(declare-fun bs!1805494 () Bool)

(assert (= bs!1805494 d!2129926))

(assert (=> bs!1805494 (not (= lambda!381529 lambda!381528))))

(assert (=> bs!1805486 (not (= lambda!381529 lambda!381388))))

(assert (=> bs!1805487 (= (and (= (reg!16930 r!7292) (reg!16930 lt!2444369)) (= (Star!16601 (reg!16930 r!7292)) lt!2444369)) (= lambda!381529 lambda!381472))))

(assert (=> bs!1805488 (not (= lambda!381529 lambda!381419))))

(assert (=> bs!1805489 (= lambda!381529 lambda!381455)))

(assert (=> bs!1805482 (not (= lambda!381529 lambda!381447))))

(assert (=> bs!1805490 (not (= lambda!381529 lambda!381511))))

(assert (=> bs!1805491 (= (and (= (reg!16930 r!7292) (reg!16930 (regOne!33715 r!7292))) (= (Star!16601 (reg!16930 r!7292)) (regOne!33715 r!7292))) (= lambda!381529 lambda!381509))))

(assert (=> bs!1805489 (not (= lambda!381529 lambda!381454))))

(assert (=> bs!1805486 (not (= lambda!381529 lambda!381386))))

(assert (=> bs!1805486 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381529 lambda!381387))))

(assert (=> bs!1805492 (= (= (Star!16601 (reg!16930 r!7292)) r!7292) (= lambda!381529 lambda!381416))))

(assert (=> d!2129926 true))

(assert (=> d!2129926 true))

(assert (=> d!2129926 (= (Exists!3669 lambda!381528) (Exists!3669 lambda!381529))))

(assert (=> d!2129926 true))

(declare-fun _$91!770 () Unit!159893)

(assert (=> d!2129926 (= (choose!50480 (reg!16930 r!7292) s!2326) _$91!770)))

(declare-fun m!7528476 () Bool)

(assert (=> bs!1805494 m!7528476))

(declare-fun m!7528480 () Bool)

(assert (=> bs!1805494 m!7528480))

(assert (=> d!2129396 d!2129926))

(assert (=> d!2129396 d!2129706))

(declare-fun d!2129950 () Bool)

(assert (=> d!2129950 (= (isEmpty!38340 (t!379816 (unfocusZipperList!2022 zl!343))) ((_ is Nil!65979) (t!379816 (unfocusZipperList!2022 zl!343))))))

(assert (=> b!6778479 d!2129950))

(declare-fun bs!1805495 () Bool)

(declare-fun d!2129952 () Bool)

(assert (= bs!1805495 (and d!2129952 d!2129796)))

(declare-fun lambda!381530 () Int)

(assert (=> bs!1805495 (= lambda!381530 lambda!381503)))

(declare-fun bs!1805496 () Bool)

(assert (= bs!1805496 (and d!2129952 d!2129848)))

(assert (=> bs!1805496 (= lambda!381530 lambda!381513)))

(assert (=> d!2129952 (= (nullableZipper!2308 lt!2444388) (exists!2723 lt!2444388 lambda!381530))))

(declare-fun bs!1805497 () Bool)

(assert (= bs!1805497 d!2129952))

(declare-fun m!7528492 () Bool)

(assert (=> bs!1805497 m!7528492))

(assert (=> b!6778516 d!2129952))

(assert (=> d!2129484 d!2129772))

(declare-fun d!2129956 () Bool)

(assert (=> d!2129956 (= (isEmpty!38340 (tail!12698 (unfocusZipperList!2022 zl!343))) ((_ is Nil!65979) (tail!12698 (unfocusZipperList!2022 zl!343))))))

(assert (=> b!6778483 d!2129956))

(declare-fun d!2129958 () Bool)

(assert (=> d!2129958 (= (tail!12698 (unfocusZipperList!2022 zl!343)) (t!379816 (unfocusZipperList!2022 zl!343)))))

(assert (=> b!6778483 d!2129958))

(declare-fun bs!1805498 () Bool)

(declare-fun d!2129960 () Bool)

(assert (= bs!1805498 (and d!2129960 d!2129456)))

(declare-fun lambda!381531 () Int)

(assert (=> bs!1805498 (= lambda!381531 lambda!381462)))

(declare-fun bs!1805499 () Bool)

(assert (= bs!1805499 (and d!2129960 d!2129460)))

(assert (=> bs!1805499 (= lambda!381531 lambda!381466)))

(declare-fun bs!1805500 () Bool)

(assert (= bs!1805500 (and d!2129960 d!2129462)))

(assert (=> bs!1805500 (= lambda!381531 lambda!381469)))

(declare-fun bs!1805501 () Bool)

(assert (= bs!1805501 (and d!2129960 d!2129778)))

(assert (=> bs!1805501 (= lambda!381531 lambda!381499)))

(declare-fun bs!1805502 () Bool)

(assert (= bs!1805502 (and d!2129960 d!2129282)))

(assert (=> bs!1805502 (= lambda!381531 lambda!381401)))

(declare-fun bs!1805503 () Bool)

(assert (= bs!1805503 (and d!2129960 d!2129866)))

(assert (=> bs!1805503 (= lambda!381531 lambda!381517)))

(declare-fun bs!1805504 () Bool)

(assert (= bs!1805504 (and d!2129960 d!2129458)))

(assert (=> bs!1805504 (= lambda!381531 lambda!381463)))

(declare-fun bs!1805505 () Bool)

(assert (= bs!1805505 (and d!2129960 d!2129864)))

(assert (=> bs!1805505 (= lambda!381531 lambda!381514)))

(declare-fun bs!1805506 () Bool)

(assert (= bs!1805506 (and d!2129960 d!2129480)))

(assert (=> bs!1805506 (= lambda!381531 lambda!381471)))

(assert (=> d!2129960 (= (inv!84749 (h!72428 (t!379817 zl!343))) (forall!15793 (exprs!6485 (h!72428 (t!379817 zl!343))) lambda!381531))))

(declare-fun bs!1805507 () Bool)

(assert (= bs!1805507 d!2129960))

(declare-fun m!7528498 () Bool)

(assert (=> bs!1805507 m!7528498))

(assert (=> b!6778616 d!2129960))

(declare-fun b!6779490 () Bool)

(declare-fun e!4092637 () Bool)

(declare-fun call!615047 () Bool)

(assert (=> b!6779490 (= e!4092637 call!615047)))

(declare-fun d!2129962 () Bool)

(declare-fun res!2771250 () Bool)

(declare-fun e!4092638 () Bool)

(assert (=> d!2129962 (=> res!2771250 e!4092638)))

(assert (=> d!2129962 (= res!2771250 ((_ is ElementMatch!16601) lt!2444453))))

(assert (=> d!2129962 (= (validRegex!8337 lt!2444453) e!4092638)))

(declare-fun b!6779491 () Bool)

(declare-fun e!4092643 () Bool)

(assert (=> b!6779491 (= e!4092643 e!4092637)))

(declare-fun res!2771252 () Bool)

(assert (=> b!6779491 (= res!2771252 (not (nullable!6580 (reg!16930 lt!2444453))))))

(assert (=> b!6779491 (=> (not res!2771252) (not e!4092637))))

(declare-fun bm!615041 () Bool)

(declare-fun c!1259389 () Bool)

(declare-fun c!1259390 () Bool)

(assert (=> bm!615041 (= call!615047 (validRegex!8337 (ite c!1259389 (reg!16930 lt!2444453) (ite c!1259390 (regOne!33715 lt!2444453) (regOne!33714 lt!2444453)))))))

(declare-fun bm!615042 () Bool)

(declare-fun call!615046 () Bool)

(assert (=> bm!615042 (= call!615046 call!615047)))

(declare-fun b!6779492 () Bool)

(declare-fun res!2771249 () Bool)

(declare-fun e!4092639 () Bool)

(assert (=> b!6779492 (=> (not res!2771249) (not e!4092639))))

(assert (=> b!6779492 (= res!2771249 call!615046)))

(declare-fun e!4092640 () Bool)

(assert (=> b!6779492 (= e!4092640 e!4092639)))

(declare-fun b!6779493 () Bool)

(declare-fun res!2771251 () Bool)

(declare-fun e!4092642 () Bool)

(assert (=> b!6779493 (=> res!2771251 e!4092642)))

(assert (=> b!6779493 (= res!2771251 (not ((_ is Concat!25446) lt!2444453)))))

(assert (=> b!6779493 (= e!4092640 e!4092642)))

(declare-fun b!6779494 () Bool)

(assert (=> b!6779494 (= e!4092638 e!4092643)))

(assert (=> b!6779494 (= c!1259389 ((_ is Star!16601) lt!2444453))))

(declare-fun bm!615043 () Bool)

(declare-fun call!615048 () Bool)

(assert (=> bm!615043 (= call!615048 (validRegex!8337 (ite c!1259390 (regTwo!33715 lt!2444453) (regTwo!33714 lt!2444453))))))

(declare-fun b!6779495 () Bool)

(assert (=> b!6779495 (= e!4092639 call!615048)))

(declare-fun b!6779496 () Bool)

(declare-fun e!4092641 () Bool)

(assert (=> b!6779496 (= e!4092641 call!615048)))

(declare-fun b!6779497 () Bool)

(assert (=> b!6779497 (= e!4092643 e!4092640)))

(assert (=> b!6779497 (= c!1259390 ((_ is Union!16601) lt!2444453))))

(declare-fun b!6779498 () Bool)

(assert (=> b!6779498 (= e!4092642 e!4092641)))

(declare-fun res!2771248 () Bool)

(assert (=> b!6779498 (=> (not res!2771248) (not e!4092641))))

(assert (=> b!6779498 (= res!2771248 call!615046)))

(assert (= (and d!2129962 (not res!2771250)) b!6779494))

(assert (= (and b!6779494 c!1259389) b!6779491))

(assert (= (and b!6779494 (not c!1259389)) b!6779497))

(assert (= (and b!6779491 res!2771252) b!6779490))

(assert (= (and b!6779497 c!1259390) b!6779492))

(assert (= (and b!6779497 (not c!1259390)) b!6779493))

(assert (= (and b!6779492 res!2771249) b!6779495))

(assert (= (and b!6779493 (not res!2771251)) b!6779498))

(assert (= (and b!6779498 res!2771248) b!6779496))

(assert (= (or b!6779495 b!6779496) bm!615043))

(assert (= (or b!6779492 b!6779498) bm!615042))

(assert (= (or b!6779490 bm!615042) bm!615041))

(declare-fun m!7528506 () Bool)

(assert (=> b!6779491 m!7528506))

(declare-fun m!7528508 () Bool)

(assert (=> bm!615041 m!7528508))

(declare-fun m!7528510 () Bool)

(assert (=> bm!615043 m!7528510))

(assert (=> d!2129366 d!2129962))

(declare-fun bs!1805508 () Bool)

(declare-fun d!2129966 () Bool)

(assert (= bs!1805508 (and d!2129966 d!2129456)))

(declare-fun lambda!381532 () Int)

(assert (=> bs!1805508 (= lambda!381532 lambda!381462)))

(declare-fun bs!1805509 () Bool)

(assert (= bs!1805509 (and d!2129966 d!2129460)))

(assert (=> bs!1805509 (= lambda!381532 lambda!381466)))

(declare-fun bs!1805510 () Bool)

(assert (= bs!1805510 (and d!2129966 d!2129462)))

(assert (=> bs!1805510 (= lambda!381532 lambda!381469)))

(declare-fun bs!1805511 () Bool)

(assert (= bs!1805511 (and d!2129966 d!2129778)))

(assert (=> bs!1805511 (= lambda!381532 lambda!381499)))

(declare-fun bs!1805513 () Bool)

(assert (= bs!1805513 (and d!2129966 d!2129282)))

(assert (=> bs!1805513 (= lambda!381532 lambda!381401)))

(declare-fun bs!1805514 () Bool)

(assert (= bs!1805514 (and d!2129966 d!2129960)))

(assert (=> bs!1805514 (= lambda!381532 lambda!381531)))

(declare-fun bs!1805515 () Bool)

(assert (= bs!1805515 (and d!2129966 d!2129866)))

(assert (=> bs!1805515 (= lambda!381532 lambda!381517)))

(declare-fun bs!1805516 () Bool)

(assert (= bs!1805516 (and d!2129966 d!2129458)))

(assert (=> bs!1805516 (= lambda!381532 lambda!381463)))

(declare-fun bs!1805517 () Bool)

(assert (= bs!1805517 (and d!2129966 d!2129864)))

(assert (=> bs!1805517 (= lambda!381532 lambda!381514)))

(declare-fun bs!1805519 () Bool)

(assert (= bs!1805519 (and d!2129966 d!2129480)))

(assert (=> bs!1805519 (= lambda!381532 lambda!381471)))

(declare-fun b!6779509 () Bool)

(declare-fun e!4092649 () Regex!16601)

(declare-fun e!4092651 () Regex!16601)

(assert (=> b!6779509 (= e!4092649 e!4092651)))

(declare-fun c!1259397 () Bool)

(assert (=> b!6779509 (= c!1259397 ((_ is Cons!65979) (unfocusZipperList!2022 lt!2444395)))))

(declare-fun b!6779510 () Bool)

(declare-fun e!4092654 () Bool)

(declare-fun lt!2444564 () Regex!16601)

(assert (=> b!6779510 (= e!4092654 (isEmptyLang!1967 lt!2444564))))

(declare-fun b!6779511 () Bool)

(assert (=> b!6779511 (= e!4092651 (Union!16601 (h!72427 (unfocusZipperList!2022 lt!2444395)) (generalisedUnion!2445 (t!379816 (unfocusZipperList!2022 lt!2444395)))))))

(declare-fun b!6779512 () Bool)

(assert (=> b!6779512 (= e!4092651 EmptyLang!16601)))

(declare-fun b!6779513 () Bool)

(declare-fun e!4092650 () Bool)

(assert (=> b!6779513 (= e!4092650 (isUnion!1397 lt!2444564))))

(declare-fun b!6779514 () Bool)

(declare-fun e!4092653 () Bool)

(assert (=> b!6779514 (= e!4092653 (isEmpty!38340 (t!379816 (unfocusZipperList!2022 lt!2444395))))))

(declare-fun b!6779515 () Bool)

(declare-fun e!4092652 () Bool)

(assert (=> b!6779515 (= e!4092652 e!4092654)))

(declare-fun c!1259399 () Bool)

(assert (=> b!6779515 (= c!1259399 (isEmpty!38340 (unfocusZipperList!2022 lt!2444395)))))

(declare-fun b!6779516 () Bool)

(assert (=> b!6779516 (= e!4092649 (h!72427 (unfocusZipperList!2022 lt!2444395)))))

(assert (=> d!2129966 e!4092652))

(declare-fun res!2771254 () Bool)

(assert (=> d!2129966 (=> (not res!2771254) (not e!4092652))))

(assert (=> d!2129966 (= res!2771254 (validRegex!8337 lt!2444564))))

(assert (=> d!2129966 (= lt!2444564 e!4092649)))

(declare-fun c!1259398 () Bool)

(assert (=> d!2129966 (= c!1259398 e!4092653)))

(declare-fun res!2771253 () Bool)

(assert (=> d!2129966 (=> (not res!2771253) (not e!4092653))))

(assert (=> d!2129966 (= res!2771253 ((_ is Cons!65979) (unfocusZipperList!2022 lt!2444395)))))

(assert (=> d!2129966 (forall!15793 (unfocusZipperList!2022 lt!2444395) lambda!381532)))

(assert (=> d!2129966 (= (generalisedUnion!2445 (unfocusZipperList!2022 lt!2444395)) lt!2444564)))

(declare-fun b!6779517 () Bool)

(assert (=> b!6779517 (= e!4092650 (= lt!2444564 (head!13613 (unfocusZipperList!2022 lt!2444395))))))

(declare-fun b!6779518 () Bool)

(assert (=> b!6779518 (= e!4092654 e!4092650)))

(declare-fun c!1259396 () Bool)

(assert (=> b!6779518 (= c!1259396 (isEmpty!38340 (tail!12698 (unfocusZipperList!2022 lt!2444395))))))

(assert (= (and d!2129966 res!2771253) b!6779514))

(assert (= (and d!2129966 c!1259398) b!6779516))

(assert (= (and d!2129966 (not c!1259398)) b!6779509))

(assert (= (and b!6779509 c!1259397) b!6779511))

(assert (= (and b!6779509 (not c!1259397)) b!6779512))

(assert (= (and d!2129966 res!2771254) b!6779515))

(assert (= (and b!6779515 c!1259399) b!6779510))

(assert (= (and b!6779515 (not c!1259399)) b!6779518))

(assert (= (and b!6779518 c!1259396) b!6779517))

(assert (= (and b!6779518 (not c!1259396)) b!6779513))

(declare-fun m!7528522 () Bool)

(assert (=> b!6779513 m!7528522))

(assert (=> b!6779518 m!7527190))

(declare-fun m!7528524 () Bool)

(assert (=> b!6779518 m!7528524))

(assert (=> b!6779518 m!7528524))

(declare-fun m!7528526 () Bool)

(assert (=> b!6779518 m!7528526))

(assert (=> b!6779517 m!7527190))

(declare-fun m!7528528 () Bool)

(assert (=> b!6779517 m!7528528))

(assert (=> b!6779515 m!7527190))

(declare-fun m!7528530 () Bool)

(assert (=> b!6779515 m!7528530))

(declare-fun m!7528532 () Bool)

(assert (=> b!6779511 m!7528532))

(declare-fun m!7528534 () Bool)

(assert (=> b!6779510 m!7528534))

(declare-fun m!7528536 () Bool)

(assert (=> d!2129966 m!7528536))

(assert (=> d!2129966 m!7527190))

(declare-fun m!7528538 () Bool)

(assert (=> d!2129966 m!7528538))

(declare-fun m!7528540 () Bool)

(assert (=> b!6779514 m!7528540))

(assert (=> d!2129366 d!2129966))

(declare-fun bs!1805520 () Bool)

(declare-fun d!2129974 () Bool)

(assert (= bs!1805520 (and d!2129974 d!2129456)))

(declare-fun lambda!381533 () Int)

(assert (=> bs!1805520 (= lambda!381533 lambda!381462)))

(declare-fun bs!1805521 () Bool)

(assert (= bs!1805521 (and d!2129974 d!2129460)))

(assert (=> bs!1805521 (= lambda!381533 lambda!381466)))

(declare-fun bs!1805522 () Bool)

(assert (= bs!1805522 (and d!2129974 d!2129462)))

(assert (=> bs!1805522 (= lambda!381533 lambda!381469)))

(declare-fun bs!1805523 () Bool)

(assert (= bs!1805523 (and d!2129974 d!2129778)))

(assert (=> bs!1805523 (= lambda!381533 lambda!381499)))

(declare-fun bs!1805524 () Bool)

(assert (= bs!1805524 (and d!2129974 d!2129282)))

(assert (=> bs!1805524 (= lambda!381533 lambda!381401)))

(declare-fun bs!1805525 () Bool)

(assert (= bs!1805525 (and d!2129974 d!2129960)))

(assert (=> bs!1805525 (= lambda!381533 lambda!381531)))

(declare-fun bs!1805526 () Bool)

(assert (= bs!1805526 (and d!2129974 d!2129866)))

(assert (=> bs!1805526 (= lambda!381533 lambda!381517)))

(declare-fun bs!1805527 () Bool)

(assert (= bs!1805527 (and d!2129974 d!2129966)))

(assert (=> bs!1805527 (= lambda!381533 lambda!381532)))

(declare-fun bs!1805528 () Bool)

(assert (= bs!1805528 (and d!2129974 d!2129458)))

(assert (=> bs!1805528 (= lambda!381533 lambda!381463)))

(declare-fun bs!1805529 () Bool)

(assert (= bs!1805529 (and d!2129974 d!2129864)))

(assert (=> bs!1805529 (= lambda!381533 lambda!381514)))

(declare-fun bs!1805530 () Bool)

(assert (= bs!1805530 (and d!2129974 d!2129480)))

(assert (=> bs!1805530 (= lambda!381533 lambda!381471)))

(declare-fun lt!2444565 () List!66103)

(assert (=> d!2129974 (forall!15793 lt!2444565 lambda!381533)))

(declare-fun e!4092655 () List!66103)

(assert (=> d!2129974 (= lt!2444565 e!4092655)))

(declare-fun c!1259400 () Bool)

(assert (=> d!2129974 (= c!1259400 ((_ is Cons!65980) lt!2444395))))

(assert (=> d!2129974 (= (unfocusZipperList!2022 lt!2444395) lt!2444565)))

(declare-fun b!6779519 () Bool)

(assert (=> b!6779519 (= e!4092655 (Cons!65979 (generalisedConcat!2198 (exprs!6485 (h!72428 lt!2444395))) (unfocusZipperList!2022 (t!379817 lt!2444395))))))

(declare-fun b!6779520 () Bool)

(assert (=> b!6779520 (= e!4092655 Nil!65979)))

(assert (= (and d!2129974 c!1259400) b!6779519))

(assert (= (and d!2129974 (not c!1259400)) b!6779520))

(declare-fun m!7528542 () Bool)

(assert (=> d!2129974 m!7528542))

(declare-fun m!7528544 () Bool)

(assert (=> b!6779519 m!7528544))

(declare-fun m!7528546 () Bool)

(assert (=> b!6779519 m!7528546))

(assert (=> d!2129366 d!2129974))

(assert (=> b!6778352 d!2129330))

(declare-fun d!2129976 () Bool)

(assert (=> d!2129976 (= (nullable!6580 (h!72427 (exprs!6485 lt!2444367))) (nullableFct!2486 (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun bs!1805531 () Bool)

(assert (= bs!1805531 d!2129976))

(declare-fun m!7528548 () Bool)

(assert (=> bs!1805531 m!7528548))

(assert (=> b!6778498 d!2129976))

(assert (=> b!6778511 d!2129660))

(declare-fun b!6779521 () Bool)

(declare-fun e!4092656 () Bool)

(declare-fun call!615054 () Bool)

(assert (=> b!6779521 (= e!4092656 call!615054)))

(declare-fun d!2129978 () Bool)

(declare-fun res!2771257 () Bool)

(declare-fun e!4092657 () Bool)

(assert (=> d!2129978 (=> res!2771257 e!4092657)))

(assert (=> d!2129978 (= res!2771257 ((_ is ElementMatch!16601) (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))

(assert (=> d!2129978 (= (validRegex!8337 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))) e!4092657)))

(declare-fun b!6779522 () Bool)

(declare-fun e!4092662 () Bool)

(assert (=> b!6779522 (= e!4092662 e!4092656)))

(declare-fun res!2771259 () Bool)

(assert (=> b!6779522 (= res!2771259 (not (nullable!6580 (reg!16930 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))))

(assert (=> b!6779522 (=> (not res!2771259) (not e!4092656))))

(declare-fun c!1259401 () Bool)

(declare-fun bm!615048 () Bool)

(declare-fun c!1259402 () Bool)

(assert (=> bm!615048 (= call!615054 (validRegex!8337 (ite c!1259401 (reg!16930 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))) (ite c!1259402 (regOne!33715 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))) (regOne!33714 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292))))))))))

(declare-fun bm!615049 () Bool)

(declare-fun call!615053 () Bool)

(assert (=> bm!615049 (= call!615053 call!615054)))

(declare-fun b!6779523 () Bool)

(declare-fun res!2771256 () Bool)

(declare-fun e!4092658 () Bool)

(assert (=> b!6779523 (=> (not res!2771256) (not e!4092658))))

(assert (=> b!6779523 (= res!2771256 call!615053)))

(declare-fun e!4092659 () Bool)

(assert (=> b!6779523 (= e!4092659 e!4092658)))

(declare-fun b!6779524 () Bool)

(declare-fun res!2771258 () Bool)

(declare-fun e!4092661 () Bool)

(assert (=> b!6779524 (=> res!2771258 e!4092661)))

(assert (=> b!6779524 (= res!2771258 (not ((_ is Concat!25446) (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292))))))))

(assert (=> b!6779524 (= e!4092659 e!4092661)))

(declare-fun b!6779525 () Bool)

(assert (=> b!6779525 (= e!4092657 e!4092662)))

(assert (=> b!6779525 (= c!1259401 ((_ is Star!16601) (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))

(declare-fun call!615055 () Bool)

(declare-fun bm!615050 () Bool)

(assert (=> bm!615050 (= call!615055 (validRegex!8337 (ite c!1259402 (regTwo!33715 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))) (regTwo!33714 (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))))

(declare-fun b!6779526 () Bool)

(assert (=> b!6779526 (= e!4092658 call!615055)))

(declare-fun b!6779527 () Bool)

(declare-fun e!4092660 () Bool)

(assert (=> b!6779527 (= e!4092660 call!615055)))

(declare-fun b!6779528 () Bool)

(assert (=> b!6779528 (= e!4092662 e!4092659)))

(assert (=> b!6779528 (= c!1259402 ((_ is Union!16601) (ite c!1259104 (reg!16930 r!7292) (ite c!1259105 (regOne!33715 r!7292) (regOne!33714 r!7292)))))))

(declare-fun b!6779529 () Bool)

(assert (=> b!6779529 (= e!4092661 e!4092660)))

(declare-fun res!2771255 () Bool)

(assert (=> b!6779529 (=> (not res!2771255) (not e!4092660))))

(assert (=> b!6779529 (= res!2771255 call!615053)))

(assert (= (and d!2129978 (not res!2771257)) b!6779525))

(assert (= (and b!6779525 c!1259401) b!6779522))

(assert (= (and b!6779525 (not c!1259401)) b!6779528))

(assert (= (and b!6779522 res!2771259) b!6779521))

(assert (= (and b!6779528 c!1259402) b!6779523))

(assert (= (and b!6779528 (not c!1259402)) b!6779524))

(assert (= (and b!6779523 res!2771256) b!6779526))

(assert (= (and b!6779524 (not res!2771258)) b!6779529))

(assert (= (and b!6779529 res!2771255) b!6779527))

(assert (= (or b!6779526 b!6779527) bm!615050))

(assert (= (or b!6779523 b!6779529) bm!615049))

(assert (= (or b!6779521 bm!615049) bm!615048))

(declare-fun m!7528550 () Bool)

(assert (=> b!6779522 m!7528550))

(declare-fun m!7528552 () Bool)

(assert (=> bm!615048 m!7528552))

(declare-fun m!7528554 () Bool)

(assert (=> bm!615050 m!7528554))

(assert (=> bm!614838 d!2129978))

(declare-fun d!2129980 () Bool)

(declare-fun res!2771260 () Bool)

(declare-fun e!4092663 () Bool)

(assert (=> d!2129980 (=> res!2771260 e!4092663)))

(assert (=> d!2129980 (= res!2771260 ((_ is Nil!65979) (exprs!6485 (h!72428 zl!343))))))

(assert (=> d!2129980 (= (forall!15793 (exprs!6485 (h!72428 zl!343)) lambda!381463) e!4092663)))

(declare-fun b!6779530 () Bool)

(declare-fun e!4092664 () Bool)

(assert (=> b!6779530 (= e!4092663 e!4092664)))

(declare-fun res!2771261 () Bool)

(assert (=> b!6779530 (=> (not res!2771261) (not e!4092664))))

(assert (=> b!6779530 (= res!2771261 (dynLambda!26328 lambda!381463 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6779531 () Bool)

(assert (=> b!6779531 (= e!4092664 (forall!15793 (t!379816 (exprs!6485 (h!72428 zl!343))) lambda!381463))))

(assert (= (and d!2129980 (not res!2771260)) b!6779530))

(assert (= (and b!6779530 res!2771261) b!6779531))

(declare-fun b_lambda!255257 () Bool)

(assert (=> (not b_lambda!255257) (not b!6779530)))

(declare-fun m!7528556 () Bool)

(assert (=> b!6779530 m!7528556))

(declare-fun m!7528558 () Bool)

(assert (=> b!6779531 m!7528558))

(assert (=> d!2129458 d!2129980))

(declare-fun bs!1805532 () Bool)

(declare-fun d!2129982 () Bool)

(assert (= bs!1805532 (and d!2129982 d!2129796)))

(declare-fun lambda!381534 () Int)

(assert (=> bs!1805532 (= lambda!381534 lambda!381503)))

(declare-fun bs!1805533 () Bool)

(assert (= bs!1805533 (and d!2129982 d!2129848)))

(assert (=> bs!1805533 (= lambda!381534 lambda!381513)))

(declare-fun bs!1805534 () Bool)

(assert (= bs!1805534 (and d!2129982 d!2129952)))

(assert (=> bs!1805534 (= lambda!381534 lambda!381530)))

(assert (=> d!2129982 (= (nullableZipper!2308 lt!2444374) (exists!2723 lt!2444374 lambda!381534))))

(declare-fun bs!1805535 () Bool)

(assert (= bs!1805535 d!2129982))

(declare-fun m!7528560 () Bool)

(assert (=> bs!1805535 m!7528560))

(assert (=> b!6778134 d!2129982))

(declare-fun d!2129984 () Bool)

(assert (=> d!2129984 (= (isDefined!13191 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326)) (not (isEmpty!38342 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326))))))

(declare-fun bs!1805536 () Bool)

(assert (= bs!1805536 d!2129984))

(assert (=> bs!1805536 m!7526886))

(declare-fun m!7528562 () Bool)

(assert (=> bs!1805536 m!7528562))

(assert (=> d!2129420 d!2129984))

(assert (=> d!2129420 d!2129418))

(assert (=> d!2129420 d!2129706))

(declare-fun d!2129986 () Bool)

(assert (=> d!2129986 (= (Exists!3669 lambda!381458) (choose!50478 lambda!381458))))

(declare-fun bs!1805537 () Bool)

(assert (= bs!1805537 d!2129986))

(declare-fun m!7528564 () Bool)

(assert (=> bs!1805537 m!7528564))

(assert (=> d!2129420 d!2129986))

(declare-fun bs!1805556 () Bool)

(declare-fun d!2129988 () Bool)

(assert (= bs!1805556 (and d!2129988 b!6779336)))

(declare-fun lambda!381542 () Int)

(assert (=> bs!1805556 (not (= lambda!381542 lambda!381520))))

(declare-fun bs!1805557 () Bool)

(assert (= bs!1805557 (and d!2129988 d!2129374)))

(assert (=> bs!1805557 (not (= lambda!381542 lambda!381448))))

(declare-fun bs!1805558 () Bool)

(assert (= bs!1805558 (and d!2129988 b!6779330)))

(assert (=> bs!1805558 (not (= lambda!381542 lambda!381519))))

(declare-fun bs!1805559 () Bool)

(assert (= bs!1805559 (and d!2129988 b!6778528)))

(assert (=> bs!1805559 (not (= lambda!381542 lambda!381473))))

(declare-fun bs!1805560 () Bool)

(assert (= bs!1805560 (and d!2129988 d!2129420)))

(assert (=> bs!1805560 (= lambda!381542 lambda!381458)))

(declare-fun bs!1805562 () Bool)

(assert (= bs!1805562 (and d!2129988 d!2129926)))

(assert (=> bs!1805562 (= (= r!7292 (Star!16601 (reg!16930 r!7292))) (= lambda!381542 lambda!381528))))

(declare-fun bs!1805563 () Bool)

(assert (= bs!1805563 (and d!2129988 b!6777698)))

(assert (=> bs!1805563 (not (= lambda!381542 lambda!381388))))

(declare-fun bs!1805564 () Bool)

(assert (= bs!1805564 (and d!2129988 b!6778522)))

(assert (=> bs!1805564 (not (= lambda!381542 lambda!381472))))

(assert (=> bs!1805562 (not (= lambda!381542 lambda!381529))))

(declare-fun bs!1805565 () Bool)

(assert (= bs!1805565 (and d!2129988 b!6777987)))

(assert (=> bs!1805565 (not (= lambda!381542 lambda!381419))))

(declare-fun bs!1805566 () Bool)

(assert (= bs!1805566 (and d!2129988 d!2129396)))

(assert (=> bs!1805566 (not (= lambda!381542 lambda!381455))))

(assert (=> bs!1805557 (= lambda!381542 lambda!381447)))

(declare-fun bs!1805567 () Bool)

(assert (= bs!1805567 (and d!2129988 b!6779285)))

(assert (=> bs!1805567 (not (= lambda!381542 lambda!381511))))

(declare-fun bs!1805568 () Bool)

(assert (= bs!1805568 (and d!2129988 b!6779279)))

(assert (=> bs!1805568 (not (= lambda!381542 lambda!381509))))

(assert (=> bs!1805566 (= (= r!7292 (Star!16601 (reg!16930 r!7292))) (= lambda!381542 lambda!381454))))

(assert (=> bs!1805563 (= lambda!381542 lambda!381386)))

(assert (=> bs!1805563 (not (= lambda!381542 lambda!381387))))

(declare-fun bs!1805569 () Bool)

(assert (= bs!1805569 (and d!2129988 b!6777981)))

(assert (=> bs!1805569 (not (= lambda!381542 lambda!381416))))

(assert (=> d!2129988 true))

(assert (=> d!2129988 true))

(assert (=> d!2129988 true))

(assert (=> d!2129988 (= (isDefined!13191 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 Nil!65978 s!2326 s!2326)) (Exists!3669 lambda!381542))))

(assert (=> d!2129988 true))

(declare-fun _$89!3028 () Unit!159893)

(assert (=> d!2129988 (= (choose!50483 (reg!16930 r!7292) r!7292 s!2326) _$89!3028)))

(declare-fun bs!1805570 () Bool)

(assert (= bs!1805570 d!2129988))

(assert (=> bs!1805570 m!7526886))

(assert (=> bs!1805570 m!7526886))

(assert (=> bs!1805570 m!7527338))

(declare-fun m!7528566 () Bool)

(assert (=> bs!1805570 m!7528566))

(assert (=> d!2129420 d!2129988))

(assert (=> b!6778069 d!2129680))

(declare-fun d!2129990 () Bool)

(declare-fun c!1259403 () Bool)

(assert (=> d!2129990 (= c!1259403 (isEmpty!38337 (tail!12699 (_2!36879 lt!2444385))))))

(declare-fun e!4092671 () Bool)

(assert (=> d!2129990 (= (matchZipper!2587 (derivationStepZipper!2545 lt!2444376 (head!13614 (_2!36879 lt!2444385))) (tail!12699 (_2!36879 lt!2444385))) e!4092671)))

(declare-fun b!6779544 () Bool)

(assert (=> b!6779544 (= e!4092671 (nullableZipper!2308 (derivationStepZipper!2545 lt!2444376 (head!13614 (_2!36879 lt!2444385)))))))

(declare-fun b!6779545 () Bool)

(assert (=> b!6779545 (= e!4092671 (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444376 (head!13614 (_2!36879 lt!2444385))) (head!13614 (tail!12699 (_2!36879 lt!2444385)))) (tail!12699 (tail!12699 (_2!36879 lt!2444385)))))))

(assert (= (and d!2129990 c!1259403) b!6779544))

(assert (= (and d!2129990 (not c!1259403)) b!6779545))

(assert (=> d!2129990 m!7527490))

(assert (=> d!2129990 m!7527492))

(assert (=> b!6779544 m!7527508))

(declare-fun m!7528568 () Bool)

(assert (=> b!6779544 m!7528568))

(assert (=> b!6779545 m!7527490))

(assert (=> b!6779545 m!7528132))

(assert (=> b!6779545 m!7527508))

(assert (=> b!6779545 m!7528132))

(declare-fun m!7528570 () Bool)

(assert (=> b!6779545 m!7528570))

(assert (=> b!6779545 m!7527490))

(assert (=> b!6779545 m!7528128))

(assert (=> b!6779545 m!7528570))

(assert (=> b!6779545 m!7528128))

(declare-fun m!7528572 () Bool)

(assert (=> b!6779545 m!7528572))

(assert (=> b!6778515 d!2129990))

(declare-fun bs!1805571 () Bool)

(declare-fun d!2129992 () Bool)

(assert (= bs!1805571 (and d!2129992 d!2129468)))

(declare-fun lambda!381544 () Int)

(assert (=> bs!1805571 (= (= (head!13614 (_2!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381544 lambda!381470))))

(declare-fun bs!1805572 () Bool)

(assert (= bs!1805572 (and d!2129992 b!6777699)))

(assert (=> bs!1805572 (= (= (head!13614 (_2!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381544 lambda!381389))))

(declare-fun bs!1805573 () Bool)

(assert (= bs!1805573 (and d!2129992 d!2129902)))

(assert (=> bs!1805573 (= (= (head!13614 (_2!36879 lt!2444385)) (head!13614 (t!379815 s!2326))) (= lambda!381544 lambda!381523))))

(declare-fun bs!1805574 () Bool)

(assert (= bs!1805574 (and d!2129992 d!2129354)))

(assert (=> bs!1805574 (= (= (head!13614 (_2!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381544 lambda!381433))))

(declare-fun bs!1805575 () Bool)

(assert (= bs!1805575 (and d!2129992 d!2129440)))

(assert (=> bs!1805575 (= (= (head!13614 (_2!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381544 lambda!381459))))

(assert (=> d!2129992 true))

(assert (=> d!2129992 (= (derivationStepZipper!2545 lt!2444376 (head!13614 (_2!36879 lt!2444385))) (flatMap!2082 lt!2444376 lambda!381544))))

(declare-fun bs!1805576 () Bool)

(assert (= bs!1805576 d!2129992))

(declare-fun m!7528578 () Bool)

(assert (=> bs!1805576 m!7528578))

(assert (=> b!6778515 d!2129992))

(assert (=> b!6778515 d!2129692))

(assert (=> b!6778515 d!2129834))

(declare-fun b!6779552 () Bool)

(declare-fun e!4092673 () Bool)

(declare-fun lt!2444566 () List!66102)

(assert (=> b!6779552 (= e!4092673 (or (not (= (_2!36879 lt!2444385) Nil!65978)) (= lt!2444566 (t!379815 (_1!36879 lt!2444385)))))))

(declare-fun d!2129996 () Bool)

(assert (=> d!2129996 e!4092673))

(declare-fun res!2771275 () Bool)

(assert (=> d!2129996 (=> (not res!2771275) (not e!4092673))))

(assert (=> d!2129996 (= res!2771275 (= (content!12848 lt!2444566) ((_ map or) (content!12848 (t!379815 (_1!36879 lt!2444385))) (content!12848 (_2!36879 lt!2444385)))))))

(declare-fun e!4092672 () List!66102)

(assert (=> d!2129996 (= lt!2444566 e!4092672)))

(declare-fun c!1259404 () Bool)

(assert (=> d!2129996 (= c!1259404 ((_ is Nil!65978) (t!379815 (_1!36879 lt!2444385))))))

(assert (=> d!2129996 (= (++!14755 (t!379815 (_1!36879 lt!2444385)) (_2!36879 lt!2444385)) lt!2444566)))

(declare-fun b!6779546 () Bool)

(assert (=> b!6779546 (= e!4092672 (_2!36879 lt!2444385))))

(declare-fun b!6779550 () Bool)

(declare-fun res!2771274 () Bool)

(assert (=> b!6779550 (=> (not res!2771274) (not e!4092673))))

(assert (=> b!6779550 (= res!2771274 (= (size!40634 lt!2444566) (+ (size!40634 (t!379815 (_1!36879 lt!2444385))) (size!40634 (_2!36879 lt!2444385)))))))

(declare-fun b!6779548 () Bool)

(assert (=> b!6779548 (= e!4092672 (Cons!65978 (h!72426 (t!379815 (_1!36879 lt!2444385))) (++!14755 (t!379815 (t!379815 (_1!36879 lt!2444385))) (_2!36879 lt!2444385))))))

(assert (= (and d!2129996 c!1259404) b!6779546))

(assert (= (and d!2129996 (not c!1259404)) b!6779548))

(assert (= (and d!2129996 res!2771275) b!6779550))

(assert (= (and b!6779550 res!2771274) b!6779552))

(declare-fun m!7528580 () Bool)

(assert (=> d!2129996 m!7528580))

(declare-fun m!7528582 () Bool)

(assert (=> d!2129996 m!7528582))

(assert (=> d!2129996 m!7527348))

(declare-fun m!7528584 () Bool)

(assert (=> b!6779550 m!7528584))

(declare-fun m!7528586 () Bool)

(assert (=> b!6779550 m!7528586))

(assert (=> b!6779550 m!7527354))

(declare-fun m!7528588 () Bool)

(assert (=> b!6779548 m!7528588))

(assert (=> b!6778368 d!2129996))

(declare-fun d!2129998 () Bool)

(assert (=> d!2129998 true))

(assert (=> d!2129998 true))

(declare-fun res!2771276 () Bool)

(assert (=> d!2129998 (= (choose!50478 lambda!381388) res!2771276)))

(assert (=> d!2129424 d!2129998))

(declare-fun b!6779566 () Bool)

(declare-fun e!4092678 () Bool)

(declare-fun e!4092681 () Bool)

(assert (=> b!6779566 (= e!4092678 e!4092681)))

(declare-fun c!1259407 () Bool)

(assert (=> b!6779566 (= c!1259407 ((_ is EmptyLang!16601) (derivativeStep!5265 lt!2444369 (head!13614 s!2326))))))

(declare-fun b!6779567 () Bool)

(declare-fun res!2771277 () Bool)

(declare-fun e!4092679 () Bool)

(assert (=> b!6779567 (=> res!2771277 e!4092679)))

(declare-fun e!4092682 () Bool)

(assert (=> b!6779567 (= res!2771277 e!4092682)))

(declare-fun res!2771283 () Bool)

(assert (=> b!6779567 (=> (not res!2771283) (not e!4092682))))

(declare-fun lt!2444567 () Bool)

(assert (=> b!6779567 (= res!2771283 lt!2444567)))

(declare-fun b!6779568 () Bool)

(declare-fun e!4092684 () Bool)

(assert (=> b!6779568 (= e!4092679 e!4092684)))

(declare-fun res!2771279 () Bool)

(assert (=> b!6779568 (=> (not res!2771279) (not e!4092684))))

(assert (=> b!6779568 (= res!2771279 (not lt!2444567))))

(declare-fun b!6779569 () Bool)

(declare-fun res!2771280 () Bool)

(assert (=> b!6779569 (=> (not res!2771280) (not e!4092682))))

(declare-fun call!615056 () Bool)

(assert (=> b!6779569 (= res!2771280 (not call!615056))))

(declare-fun b!6779570 () Bool)

(assert (=> b!6779570 (= e!4092681 (not lt!2444567))))

(declare-fun b!6779571 () Bool)

(assert (=> b!6779571 (= e!4092678 (= lt!2444567 call!615056))))

(declare-fun b!6779572 () Bool)

(declare-fun res!2771281 () Bool)

(assert (=> b!6779572 (=> res!2771281 e!4092679)))

(assert (=> b!6779572 (= res!2771281 (not ((_ is ElementMatch!16601) (derivativeStep!5265 lt!2444369 (head!13614 s!2326)))))))

(assert (=> b!6779572 (= e!4092681 e!4092679)))

(declare-fun b!6779573 () Bool)

(declare-fun e!4092680 () Bool)

(assert (=> b!6779573 (= e!4092680 (not (= (head!13614 (tail!12699 s!2326)) (c!1258869 (derivativeStep!5265 lt!2444369 (head!13614 s!2326))))))))

(declare-fun b!6779574 () Bool)

(declare-fun res!2771278 () Bool)

(assert (=> b!6779574 (=> res!2771278 e!4092680)))

(assert (=> b!6779574 (= res!2771278 (not (isEmpty!38337 (tail!12699 (tail!12699 s!2326)))))))

(declare-fun b!6779575 () Bool)

(assert (=> b!6779575 (= e!4092684 e!4092680)))

(declare-fun res!2771284 () Bool)

(assert (=> b!6779575 (=> res!2771284 e!4092680)))

(assert (=> b!6779575 (= res!2771284 call!615056)))

(declare-fun b!6779576 () Bool)

(declare-fun e!4092683 () Bool)

(assert (=> b!6779576 (= e!4092683 (matchR!8784 (derivativeStep!5265 (derivativeStep!5265 lt!2444369 (head!13614 s!2326)) (head!13614 (tail!12699 s!2326))) (tail!12699 (tail!12699 s!2326))))))

(declare-fun b!6779577 () Bool)

(assert (=> b!6779577 (= e!4092683 (nullable!6580 (derivativeStep!5265 lt!2444369 (head!13614 s!2326))))))

(declare-fun bm!615051 () Bool)

(assert (=> bm!615051 (= call!615056 (isEmpty!38337 (tail!12699 s!2326)))))

(declare-fun d!2130000 () Bool)

(assert (=> d!2130000 e!4092678))

(declare-fun c!1259405 () Bool)

(assert (=> d!2130000 (= c!1259405 ((_ is EmptyExpr!16601) (derivativeStep!5265 lt!2444369 (head!13614 s!2326))))))

(assert (=> d!2130000 (= lt!2444567 e!4092683)))

(declare-fun c!1259406 () Bool)

(assert (=> d!2130000 (= c!1259406 (isEmpty!38337 (tail!12699 s!2326)))))

(assert (=> d!2130000 (validRegex!8337 (derivativeStep!5265 lt!2444369 (head!13614 s!2326)))))

(assert (=> d!2130000 (= (matchR!8784 (derivativeStep!5265 lt!2444369 (head!13614 s!2326)) (tail!12699 s!2326)) lt!2444567)))

(declare-fun b!6779578 () Bool)

(assert (=> b!6779578 (= e!4092682 (= (head!13614 (tail!12699 s!2326)) (c!1258869 (derivativeStep!5265 lt!2444369 (head!13614 s!2326)))))))

(declare-fun b!6779579 () Bool)

(declare-fun res!2771282 () Bool)

(assert (=> b!6779579 (=> (not res!2771282) (not e!4092682))))

(assert (=> b!6779579 (= res!2771282 (isEmpty!38337 (tail!12699 (tail!12699 s!2326))))))

(assert (= (and d!2130000 c!1259406) b!6779577))

(assert (= (and d!2130000 (not c!1259406)) b!6779576))

(assert (= (and d!2130000 c!1259405) b!6779571))

(assert (= (and d!2130000 (not c!1259405)) b!6779566))

(assert (= (and b!6779566 c!1259407) b!6779570))

(assert (= (and b!6779566 (not c!1259407)) b!6779572))

(assert (= (and b!6779572 (not res!2771281)) b!6779567))

(assert (= (and b!6779567 res!2771283) b!6779569))

(assert (= (and b!6779569 res!2771280) b!6779579))

(assert (= (and b!6779579 res!2771282) b!6779578))

(assert (= (and b!6779567 (not res!2771277)) b!6779568))

(assert (= (and b!6779568 res!2771279) b!6779575))

(assert (= (and b!6779575 (not res!2771284)) b!6779574))

(assert (= (and b!6779574 (not res!2771278)) b!6779573))

(assert (= (or b!6779571 b!6779575 b!6779569) bm!615051))

(assert (=> b!6779574 m!7527126))

(declare-fun m!7528590 () Bool)

(assert (=> b!6779574 m!7528590))

(assert (=> b!6779574 m!7528590))

(declare-fun m!7528592 () Bool)

(assert (=> b!6779574 m!7528592))

(assert (=> b!6779573 m!7527126))

(declare-fun m!7528594 () Bool)

(assert (=> b!6779573 m!7528594))

(assert (=> b!6779577 m!7527528))

(declare-fun m!7528596 () Bool)

(assert (=> b!6779577 m!7528596))

(assert (=> b!6779578 m!7527126))

(assert (=> b!6779578 m!7528594))

(assert (=> b!6779576 m!7527126))

(assert (=> b!6779576 m!7528594))

(assert (=> b!6779576 m!7527528))

(assert (=> b!6779576 m!7528594))

(declare-fun m!7528598 () Bool)

(assert (=> b!6779576 m!7528598))

(assert (=> b!6779576 m!7527126))

(assert (=> b!6779576 m!7528590))

(assert (=> b!6779576 m!7528598))

(assert (=> b!6779576 m!7528590))

(declare-fun m!7528600 () Bool)

(assert (=> b!6779576 m!7528600))

(assert (=> d!2130000 m!7527126))

(assert (=> d!2130000 m!7527128))

(assert (=> d!2130000 m!7527528))

(declare-fun m!7528602 () Bool)

(assert (=> d!2130000 m!7528602))

(assert (=> bm!615051 m!7527126))

(assert (=> bm!615051 m!7527128))

(assert (=> b!6779579 m!7527126))

(assert (=> b!6779579 m!7528590))

(assert (=> b!6779579 m!7528590))

(assert (=> b!6779579 m!7528592))

(assert (=> b!6778539 d!2130000))

(declare-fun b!6779609 () Bool)

(declare-fun e!4092693 () Regex!16601)

(assert (=> b!6779609 (= e!4092693 (ite (= (head!13614 s!2326) (c!1258869 lt!2444369)) EmptyExpr!16601 EmptyLang!16601))))

(declare-fun call!615057 () Regex!16601)

(declare-fun bm!615052 () Bool)

(declare-fun c!1259409 () Bool)

(assert (=> bm!615052 (= call!615057 (derivativeStep!5265 (ite c!1259409 (regOne!33715 lt!2444369) (regOne!33714 lt!2444369)) (head!13614 s!2326)))))

(declare-fun call!615058 () Regex!16601)

(declare-fun e!4092695 () Regex!16601)

(declare-fun b!6779610 () Bool)

(assert (=> b!6779610 (= e!4092695 (Union!16601 (Concat!25446 call!615057 (regTwo!33714 lt!2444369)) call!615058))))

(declare-fun d!2130002 () Bool)

(declare-fun lt!2444568 () Regex!16601)

(assert (=> d!2130002 (validRegex!8337 lt!2444568)))

(declare-fun e!4092697 () Regex!16601)

(assert (=> d!2130002 (= lt!2444568 e!4092697)))

(declare-fun c!1259410 () Bool)

(assert (=> d!2130002 (= c!1259410 (or ((_ is EmptyExpr!16601) lt!2444369) ((_ is EmptyLang!16601) lt!2444369)))))

(assert (=> d!2130002 (validRegex!8337 lt!2444369)))

(assert (=> d!2130002 (= (derivativeStep!5265 lt!2444369 (head!13614 s!2326)) lt!2444568)))

(declare-fun b!6779611 () Bool)

(assert (=> b!6779611 (= e!4092697 e!4092693)))

(declare-fun c!1259408 () Bool)

(assert (=> b!6779611 (= c!1259408 ((_ is ElementMatch!16601) lt!2444369))))

(declare-fun bm!615053 () Bool)

(declare-fun call!615060 () Regex!16601)

(assert (=> bm!615053 (= call!615058 call!615060)))

(declare-fun b!6779612 () Bool)

(assert (=> b!6779612 (= e!4092695 (Union!16601 (Concat!25446 call!615058 (regTwo!33714 lt!2444369)) EmptyLang!16601))))

(declare-fun b!6779613 () Bool)

(declare-fun e!4092694 () Regex!16601)

(declare-fun call!615059 () Regex!16601)

(assert (=> b!6779613 (= e!4092694 (Union!16601 call!615057 call!615059))))

(declare-fun b!6779614 () Bool)

(declare-fun e!4092696 () Regex!16601)

(assert (=> b!6779614 (= e!4092696 (Concat!25446 call!615060 lt!2444369))))

(declare-fun c!1259412 () Bool)

(declare-fun c!1259411 () Bool)

(declare-fun bm!615054 () Bool)

(assert (=> bm!615054 (= call!615059 (derivativeStep!5265 (ite c!1259409 (regTwo!33715 lt!2444369) (ite c!1259412 (reg!16930 lt!2444369) (ite c!1259411 (regTwo!33714 lt!2444369) (regOne!33714 lt!2444369)))) (head!13614 s!2326)))))

(declare-fun b!6779615 () Bool)

(assert (=> b!6779615 (= e!4092694 e!4092696)))

(assert (=> b!6779615 (= c!1259412 ((_ is Star!16601) lt!2444369))))

(declare-fun b!6779616 () Bool)

(assert (=> b!6779616 (= c!1259409 ((_ is Union!16601) lt!2444369))))

(assert (=> b!6779616 (= e!4092693 e!4092694)))

(declare-fun b!6779617 () Bool)

(assert (=> b!6779617 (= c!1259411 (nullable!6580 (regOne!33714 lt!2444369)))))

(assert (=> b!6779617 (= e!4092696 e!4092695)))

(declare-fun bm!615055 () Bool)

(assert (=> bm!615055 (= call!615060 call!615059)))

(declare-fun b!6779618 () Bool)

(assert (=> b!6779618 (= e!4092697 EmptyLang!16601)))

(assert (= (and d!2130002 c!1259410) b!6779618))

(assert (= (and d!2130002 (not c!1259410)) b!6779611))

(assert (= (and b!6779611 c!1259408) b!6779609))

(assert (= (and b!6779611 (not c!1259408)) b!6779616))

(assert (= (and b!6779616 c!1259409) b!6779613))

(assert (= (and b!6779616 (not c!1259409)) b!6779615))

(assert (= (and b!6779615 c!1259412) b!6779614))

(assert (= (and b!6779615 (not c!1259412)) b!6779617))

(assert (= (and b!6779617 c!1259411) b!6779610))

(assert (= (and b!6779617 (not c!1259411)) b!6779612))

(assert (= (or b!6779610 b!6779612) bm!615053))

(assert (= (or b!6779614 bm!615053) bm!615055))

(assert (= (or b!6779613 bm!615055) bm!615054))

(assert (= (or b!6779613 b!6779610) bm!615052))

(assert (=> bm!615052 m!7527130))

(declare-fun m!7528604 () Bool)

(assert (=> bm!615052 m!7528604))

(declare-fun m!7528606 () Bool)

(assert (=> d!2130002 m!7528606))

(assert (=> d!2130002 m!7527532))

(assert (=> bm!615054 m!7527130))

(declare-fun m!7528608 () Bool)

(assert (=> bm!615054 m!7528608))

(declare-fun m!7528610 () Bool)

(assert (=> b!6779617 m!7528610))

(assert (=> b!6778539 d!2130002))

(assert (=> b!6778539 d!2129680))

(assert (=> b!6778539 d!2129702))

(declare-fun d!2130004 () Bool)

(assert (=> d!2130004 (= (isEmpty!38342 lt!2444383) (not ((_ is Some!16487) lt!2444383)))))

(assert (=> d!2129414 d!2130004))

(assert (=> b!6778542 d!2129700))

(assert (=> b!6778542 d!2129702))

(assert (=> bs!1805080 d!2129470))

(declare-fun b!6779654 () Bool)

(declare-fun e!4092710 () (InoxSet Context!11970))

(assert (=> b!6779654 (= e!4092710 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2130006 () Bool)

(declare-fun c!1259413 () Bool)

(declare-fun e!4092709 () Bool)

(assert (=> d!2130006 (= c!1259413 e!4092709)))

(declare-fun res!2771285 () Bool)

(assert (=> d!2130006 (=> (not res!2771285) (not e!4092709))))

(assert (=> d!2130006 (= res!2771285 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384))))))))

(declare-fun e!4092711 () (InoxSet Context!11970))

(assert (=> d!2130006 (= (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444384))) (h!72426 s!2326)) e!4092711)))

(declare-fun b!6779655 () Bool)

(assert (=> b!6779655 (= e!4092711 e!4092710)))

(declare-fun c!1259414 () Bool)

(assert (=> b!6779655 (= c!1259414 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384))))))))

(declare-fun b!6779656 () Bool)

(declare-fun call!615061 () (InoxSet Context!11970))

(assert (=> b!6779656 (= e!4092710 call!615061)))

(declare-fun b!6779657 () Bool)

(assert (=> b!6779657 (= e!4092709 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384)))))))))

(declare-fun bm!615056 () Bool)

(assert (=> bm!615056 (= call!615061 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384))))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384)))))) (h!72426 s!2326)))))

(declare-fun b!6779658 () Bool)

(assert (=> b!6779658 (= e!4092711 ((_ map or) call!615061 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444384)))))) (h!72426 s!2326))))))

(assert (= (and d!2130006 res!2771285) b!6779657))

(assert (= (and d!2130006 c!1259413) b!6779658))

(assert (= (and d!2130006 (not c!1259413)) b!6779655))

(assert (= (and b!6779655 c!1259414) b!6779656))

(assert (= (and b!6779655 (not c!1259414)) b!6779654))

(assert (= (or b!6779658 b!6779656) bm!615056))

(declare-fun m!7528614 () Bool)

(assert (=> b!6779657 m!7528614))

(declare-fun m!7528616 () Bool)

(assert (=> bm!615056 m!7528616))

(declare-fun m!7528618 () Bool)

(assert (=> b!6779658 m!7528618))

(assert (=> b!6778494 d!2130006))

(declare-fun bm!615057 () Bool)

(declare-fun call!615063 () List!66103)

(declare-fun call!615066 () List!66103)

(assert (=> bm!615057 (= call!615063 call!615066)))

(declare-fun bm!615058 () Bool)

(declare-fun call!615064 () (InoxSet Context!11970))

(declare-fun call!615067 () (InoxSet Context!11970))

(assert (=> bm!615058 (= call!615064 call!615067)))

(declare-fun b!6779670 () Bool)

(declare-fun e!4092719 () (InoxSet Context!11970))

(declare-fun e!4092717 () (InoxSet Context!11970))

(assert (=> b!6779670 (= e!4092719 e!4092717)))

(declare-fun c!1259419 () Bool)

(assert (=> b!6779670 (= c!1259419 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444380))))))

(declare-fun bm!615059 () Bool)

(declare-fun call!615062 () (InoxSet Context!11970))

(assert (=> bm!615059 (= call!615062 call!615064)))

(declare-fun b!6779671 () Bool)

(assert (=> b!6779671 (= e!4092717 call!615062)))

(declare-fun bm!615060 () Bool)

(declare-fun c!1259416 () Bool)

(assert (=> bm!615060 (= call!615066 ($colon$colon!2410 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380)))) (ite (or c!1259416 c!1259419) (regTwo!33714 (h!72427 (exprs!6485 lt!2444380))) (h!72427 (exprs!6485 lt!2444380)))))))

(declare-fun d!2130008 () Bool)

(declare-fun c!1259417 () Bool)

(assert (=> d!2130008 (= c!1259417 (and ((_ is ElementMatch!16601) (h!72427 (exprs!6485 lt!2444380))) (= (c!1258869 (h!72427 (exprs!6485 lt!2444380))) (h!72426 s!2326))))))

(declare-fun e!4092721 () (InoxSet Context!11970))

(assert (=> d!2130008 (= (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444380)) (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (h!72426 s!2326)) e!4092721)))

(declare-fun b!6779672 () Bool)

(declare-fun c!1259418 () Bool)

(assert (=> b!6779672 (= c!1259418 ((_ is Star!16601) (h!72427 (exprs!6485 lt!2444380))))))

(declare-fun e!4092718 () (InoxSet Context!11970))

(assert (=> b!6779672 (= e!4092717 e!4092718)))

(declare-fun bm!615061 () Bool)

(declare-fun call!615065 () (InoxSet Context!11970))

(declare-fun c!1259415 () Bool)

(assert (=> bm!615061 (= call!615065 (derivationStepZipperDown!1829 (ite c!1259415 (regTwo!33715 (h!72427 (exprs!6485 lt!2444380))) (regOne!33714 (h!72427 (exprs!6485 lt!2444380)))) (ite c!1259415 (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (Context!11971 call!615066)) (h!72426 s!2326)))))

(declare-fun b!6779673 () Bool)

(assert (=> b!6779673 (= e!4092721 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 (t!379816 (exprs!6485 lt!2444380))) true))))

(declare-fun b!6779674 () Bool)

(declare-fun e!4092722 () (InoxSet Context!11970))

(assert (=> b!6779674 (= e!4092722 ((_ map or) call!615067 call!615065))))

(declare-fun b!6779675 () Bool)

(assert (=> b!6779675 (= e!4092718 call!615062)))

(declare-fun b!6779676 () Bool)

(assert (=> b!6779676 (= e!4092721 e!4092722)))

(assert (=> b!6779676 (= c!1259415 ((_ is Union!16601) (h!72427 (exprs!6485 lt!2444380))))))

(declare-fun b!6779677 () Bool)

(assert (=> b!6779677 (= e!4092719 ((_ map or) call!615065 call!615064))))

(declare-fun b!6779678 () Bool)

(assert (=> b!6779678 (= e!4092718 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779679 () Bool)

(declare-fun e!4092720 () Bool)

(assert (=> b!6779679 (= c!1259416 e!4092720)))

(declare-fun res!2771286 () Bool)

(assert (=> b!6779679 (=> (not res!2771286) (not e!4092720))))

(assert (=> b!6779679 (= res!2771286 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444380))))))

(assert (=> b!6779679 (= e!4092722 e!4092719)))

(declare-fun b!6779680 () Bool)

(assert (=> b!6779680 (= e!4092720 (nullable!6580 (regOne!33714 (h!72427 (exprs!6485 lt!2444380)))))))

(declare-fun bm!615062 () Bool)

(assert (=> bm!615062 (= call!615067 (derivationStepZipperDown!1829 (ite c!1259415 (regOne!33715 (h!72427 (exprs!6485 lt!2444380))) (ite c!1259416 (regTwo!33714 (h!72427 (exprs!6485 lt!2444380))) (ite c!1259419 (regOne!33714 (h!72427 (exprs!6485 lt!2444380))) (reg!16930 (h!72427 (exprs!6485 lt!2444380)))))) (ite (or c!1259415 c!1259416) (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (Context!11971 call!615063)) (h!72426 s!2326)))))

(assert (= (and d!2130008 c!1259417) b!6779673))

(assert (= (and d!2130008 (not c!1259417)) b!6779676))

(assert (= (and b!6779676 c!1259415) b!6779674))

(assert (= (and b!6779676 (not c!1259415)) b!6779679))

(assert (= (and b!6779679 res!2771286) b!6779680))

(assert (= (and b!6779679 c!1259416) b!6779677))

(assert (= (and b!6779679 (not c!1259416)) b!6779670))

(assert (= (and b!6779670 c!1259419) b!6779671))

(assert (= (and b!6779670 (not c!1259419)) b!6779672))

(assert (= (and b!6779672 c!1259418) b!6779675))

(assert (= (and b!6779672 (not c!1259418)) b!6779678))

(assert (= (or b!6779671 b!6779675) bm!615057))

(assert (= (or b!6779671 b!6779675) bm!615059))

(assert (= (or b!6779677 bm!615057) bm!615060))

(assert (= (or b!6779677 bm!615059) bm!615058))

(assert (= (or b!6779674 b!6779677) bm!615061))

(assert (= (or b!6779674 bm!615058) bm!615062))

(declare-fun m!7528622 () Bool)

(assert (=> bm!615062 m!7528622))

(declare-fun m!7528624 () Bool)

(assert (=> bm!615060 m!7528624))

(declare-fun m!7528626 () Bool)

(assert (=> bm!615061 m!7528626))

(declare-fun m!7528628 () Bool)

(assert (=> b!6779680 m!7528628))

(declare-fun m!7528630 () Bool)

(assert (=> b!6779673 m!7528630))

(assert (=> bm!614825 d!2130008))

(declare-fun d!2130010 () Bool)

(assert (=> d!2130010 (= ($colon$colon!2410 (exprs!6485 (Context!11971 Nil!65979)) (ite (or c!1259050 c!1259053) (regTwo!33714 r!7292) r!7292)) (Cons!65979 (ite (or c!1259050 c!1259053) (regTwo!33714 r!7292) r!7292) (exprs!6485 (Context!11971 Nil!65979))))))

(assert (=> bm!614812 d!2130010))

(declare-fun b!6779706 () Bool)

(declare-fun e!4092730 () Bool)

(declare-fun call!615069 () Bool)

(assert (=> b!6779706 (= e!4092730 call!615069)))

(declare-fun d!2130020 () Bool)

(declare-fun res!2771289 () Bool)

(declare-fun e!4092731 () Bool)

(assert (=> d!2130020 (=> res!2771289 e!4092731)))

(assert (=> d!2130020 (= res!2771289 ((_ is ElementMatch!16601) lt!2444504))))

(assert (=> d!2130020 (= (validRegex!8337 lt!2444504) e!4092731)))

(declare-fun b!6779707 () Bool)

(declare-fun e!4092736 () Bool)

(assert (=> b!6779707 (= e!4092736 e!4092730)))

(declare-fun res!2771291 () Bool)

(assert (=> b!6779707 (= res!2771291 (not (nullable!6580 (reg!16930 lt!2444504))))))

(assert (=> b!6779707 (=> (not res!2771291) (not e!4092730))))

(declare-fun bm!615063 () Bool)

(declare-fun c!1259420 () Bool)

(declare-fun c!1259421 () Bool)

(assert (=> bm!615063 (= call!615069 (validRegex!8337 (ite c!1259420 (reg!16930 lt!2444504) (ite c!1259421 (regOne!33715 lt!2444504) (regOne!33714 lt!2444504)))))))

(declare-fun bm!615064 () Bool)

(declare-fun call!615068 () Bool)

(assert (=> bm!615064 (= call!615068 call!615069)))

(declare-fun b!6779708 () Bool)

(declare-fun res!2771288 () Bool)

(declare-fun e!4092732 () Bool)

(assert (=> b!6779708 (=> (not res!2771288) (not e!4092732))))

(assert (=> b!6779708 (= res!2771288 call!615068)))

(declare-fun e!4092733 () Bool)

(assert (=> b!6779708 (= e!4092733 e!4092732)))

(declare-fun b!6779709 () Bool)

(declare-fun res!2771290 () Bool)

(declare-fun e!4092735 () Bool)

(assert (=> b!6779709 (=> res!2771290 e!4092735)))

(assert (=> b!6779709 (= res!2771290 (not ((_ is Concat!25446) lt!2444504)))))

(assert (=> b!6779709 (= e!4092733 e!4092735)))

(declare-fun b!6779710 () Bool)

(assert (=> b!6779710 (= e!4092731 e!4092736)))

(assert (=> b!6779710 (= c!1259420 ((_ is Star!16601) lt!2444504))))

(declare-fun bm!615065 () Bool)

(declare-fun call!615070 () Bool)

(assert (=> bm!615065 (= call!615070 (validRegex!8337 (ite c!1259421 (regTwo!33715 lt!2444504) (regTwo!33714 lt!2444504))))))

(declare-fun b!6779711 () Bool)

(assert (=> b!6779711 (= e!4092732 call!615070)))

(declare-fun b!6779712 () Bool)

(declare-fun e!4092734 () Bool)

(assert (=> b!6779712 (= e!4092734 call!615070)))

(declare-fun b!6779713 () Bool)

(assert (=> b!6779713 (= e!4092736 e!4092733)))

(assert (=> b!6779713 (= c!1259421 ((_ is Union!16601) lt!2444504))))

(declare-fun b!6779714 () Bool)

(assert (=> b!6779714 (= e!4092735 e!4092734)))

(declare-fun res!2771287 () Bool)

(assert (=> b!6779714 (=> (not res!2771287) (not e!4092734))))

(assert (=> b!6779714 (= res!2771287 call!615068)))

(assert (= (and d!2130020 (not res!2771289)) b!6779710))

(assert (= (and b!6779710 c!1259420) b!6779707))

(assert (= (and b!6779710 (not c!1259420)) b!6779713))

(assert (= (and b!6779707 res!2771291) b!6779706))

(assert (= (and b!6779713 c!1259421) b!6779708))

(assert (= (and b!6779713 (not c!1259421)) b!6779709))

(assert (= (and b!6779708 res!2771288) b!6779711))

(assert (= (and b!6779709 (not res!2771290)) b!6779714))

(assert (= (and b!6779714 res!2771287) b!6779712))

(assert (= (or b!6779711 b!6779712) bm!615065))

(assert (= (or b!6779708 b!6779714) bm!615064))

(assert (= (or b!6779706 bm!615064) bm!615063))

(declare-fun m!7528642 () Bool)

(assert (=> b!6779707 m!7528642))

(declare-fun m!7528644 () Bool)

(assert (=> bm!615063 m!7528644))

(declare-fun m!7528646 () Bool)

(assert (=> bm!615065 m!7528646))

(assert (=> d!2129460 d!2130020))

(declare-fun d!2130026 () Bool)

(declare-fun res!2771292 () Bool)

(declare-fun e!4092737 () Bool)

(assert (=> d!2130026 (=> res!2771292 e!4092737)))

(assert (=> d!2130026 (= res!2771292 ((_ is Nil!65979) (unfocusZipperList!2022 zl!343)))))

(assert (=> d!2130026 (= (forall!15793 (unfocusZipperList!2022 zl!343) lambda!381466) e!4092737)))

(declare-fun b!6779715 () Bool)

(declare-fun e!4092738 () Bool)

(assert (=> b!6779715 (= e!4092737 e!4092738)))

(declare-fun res!2771293 () Bool)

(assert (=> b!6779715 (=> (not res!2771293) (not e!4092738))))

(assert (=> b!6779715 (= res!2771293 (dynLambda!26328 lambda!381466 (h!72427 (unfocusZipperList!2022 zl!343))))))

(declare-fun b!6779716 () Bool)

(assert (=> b!6779716 (= e!4092738 (forall!15793 (t!379816 (unfocusZipperList!2022 zl!343)) lambda!381466))))

(assert (= (and d!2130026 (not res!2771292)) b!6779715))

(assert (= (and b!6779715 res!2771293) b!6779716))

(declare-fun b_lambda!255279 () Bool)

(assert (=> (not b_lambda!255279) (not b!6779715)))

(declare-fun m!7528648 () Bool)

(assert (=> b!6779715 m!7528648))

(declare-fun m!7528650 () Bool)

(assert (=> b!6779716 m!7528650))

(assert (=> d!2129460 d!2130026))

(declare-fun d!2130028 () Bool)

(assert (=> d!2130028 (= (head!13613 (exprs!6485 (h!72428 zl!343))) (h!72427 (exprs!6485 (h!72428 zl!343))))))

(assert (=> b!6777868 d!2130028))

(assert (=> d!2129486 d!2129478))

(assert (=> d!2129486 d!2129484))

(declare-fun d!2130030 () Bool)

(assert (=> d!2130030 (= (matchR!8784 r!7292 (_2!36879 lt!2444385)) (matchZipper!2587 lt!2444376 (_2!36879 lt!2444385)))))

(assert (=> d!2130030 true))

(declare-fun _$44!1768 () Unit!159893)

(assert (=> d!2130030 (= (choose!50487 lt!2444376 lt!2444395 r!7292 (_2!36879 lt!2444385)) _$44!1768)))

(declare-fun bs!1805583 () Bool)

(assert (= bs!1805583 d!2130030))

(assert (=> bs!1805583 m!7526866))

(assert (=> bs!1805583 m!7526822))

(assert (=> d!2129486 d!2130030))

(assert (=> d!2129486 d!2129496))

(declare-fun d!2130032 () Bool)

(assert (=> d!2130032 (= (Exists!3669 (ite c!1259093 lambda!381472 lambda!381473)) (choose!50478 (ite c!1259093 lambda!381472 lambda!381473)))))

(declare-fun bs!1805584 () Bool)

(assert (= bs!1805584 d!2130032))

(declare-fun m!7528652 () Bool)

(assert (=> bs!1805584 m!7528652))

(assert (=> bm!614829 d!2130032))

(declare-fun d!2130034 () Bool)

(assert (=> d!2130034 (= (isUnion!1397 lt!2444504) ((_ is Union!16601) lt!2444504))))

(assert (=> b!6778478 d!2130034))

(declare-fun b!6779717 () Bool)

(declare-fun e!4092739 () Bool)

(declare-fun e!4092742 () Bool)

(assert (=> b!6779717 (= e!4092739 e!4092742)))

(declare-fun c!1259424 () Bool)

(assert (=> b!6779717 (= c!1259424 ((_ is EmptyLang!16601) (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385)))))))

(declare-fun b!6779718 () Bool)

(declare-fun res!2771294 () Bool)

(declare-fun e!4092740 () Bool)

(assert (=> b!6779718 (=> res!2771294 e!4092740)))

(declare-fun e!4092743 () Bool)

(assert (=> b!6779718 (= res!2771294 e!4092743)))

(declare-fun res!2771300 () Bool)

(assert (=> b!6779718 (=> (not res!2771300) (not e!4092743))))

(declare-fun lt!2444569 () Bool)

(assert (=> b!6779718 (= res!2771300 lt!2444569)))

(declare-fun b!6779719 () Bool)

(declare-fun e!4092745 () Bool)

(assert (=> b!6779719 (= e!4092740 e!4092745)))

(declare-fun res!2771296 () Bool)

(assert (=> b!6779719 (=> (not res!2771296) (not e!4092745))))

(assert (=> b!6779719 (= res!2771296 (not lt!2444569))))

(declare-fun b!6779720 () Bool)

(declare-fun res!2771297 () Bool)

(assert (=> b!6779720 (=> (not res!2771297) (not e!4092743))))

(declare-fun call!615071 () Bool)

(assert (=> b!6779720 (= res!2771297 (not call!615071))))

(declare-fun b!6779721 () Bool)

(assert (=> b!6779721 (= e!4092742 (not lt!2444569))))

(declare-fun b!6779722 () Bool)

(assert (=> b!6779722 (= e!4092739 (= lt!2444569 call!615071))))

(declare-fun b!6779723 () Bool)

(declare-fun res!2771298 () Bool)

(assert (=> b!6779723 (=> res!2771298 e!4092740)))

(assert (=> b!6779723 (= res!2771298 (not ((_ is ElementMatch!16601) (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))))))))

(assert (=> b!6779723 (= e!4092742 e!4092740)))

(declare-fun b!6779724 () Bool)

(declare-fun e!4092741 () Bool)

(assert (=> b!6779724 (= e!4092741 (not (= (head!13614 (tail!12699 (_1!36879 lt!2444385))) (c!1258869 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385)))))))))

(declare-fun b!6779725 () Bool)

(declare-fun res!2771295 () Bool)

(assert (=> b!6779725 (=> res!2771295 e!4092741)))

(assert (=> b!6779725 (= res!2771295 (not (isEmpty!38337 (tail!12699 (tail!12699 (_1!36879 lt!2444385))))))))

(declare-fun b!6779726 () Bool)

(assert (=> b!6779726 (= e!4092745 e!4092741)))

(declare-fun res!2771301 () Bool)

(assert (=> b!6779726 (=> res!2771301 e!4092741)))

(assert (=> b!6779726 (= res!2771301 call!615071)))

(declare-fun b!6779727 () Bool)

(declare-fun e!4092744 () Bool)

(assert (=> b!6779727 (= e!4092744 (matchR!8784 (derivativeStep!5265 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))) (head!13614 (tail!12699 (_1!36879 lt!2444385)))) (tail!12699 (tail!12699 (_1!36879 lt!2444385)))))))

(declare-fun b!6779728 () Bool)

(assert (=> b!6779728 (= e!4092744 (nullable!6580 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385)))))))

(declare-fun bm!615066 () Bool)

(assert (=> bm!615066 (= call!615071 (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385))))))

(declare-fun d!2130036 () Bool)

(assert (=> d!2130036 e!4092739))

(declare-fun c!1259422 () Bool)

(assert (=> d!2130036 (= c!1259422 ((_ is EmptyExpr!16601) (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385)))))))

(assert (=> d!2130036 (= lt!2444569 e!4092744)))

(declare-fun c!1259423 () Bool)

(assert (=> d!2130036 (= c!1259423 (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385))))))

(assert (=> d!2130036 (validRegex!8337 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))))))

(assert (=> d!2130036 (= (matchR!8784 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))) (tail!12699 (_1!36879 lt!2444385))) lt!2444569)))

(declare-fun b!6779729 () Bool)

(assert (=> b!6779729 (= e!4092743 (= (head!13614 (tail!12699 (_1!36879 lt!2444385))) (c!1258869 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))))))))

(declare-fun b!6779730 () Bool)

(declare-fun res!2771299 () Bool)

(assert (=> b!6779730 (=> (not res!2771299) (not e!4092743))))

(assert (=> b!6779730 (= res!2771299 (isEmpty!38337 (tail!12699 (tail!12699 (_1!36879 lt!2444385)))))))

(assert (= (and d!2130036 c!1259423) b!6779728))

(assert (= (and d!2130036 (not c!1259423)) b!6779727))

(assert (= (and d!2130036 c!1259422) b!6779722))

(assert (= (and d!2130036 (not c!1259422)) b!6779717))

(assert (= (and b!6779717 c!1259424) b!6779721))

(assert (= (and b!6779717 (not c!1259424)) b!6779723))

(assert (= (and b!6779723 (not res!2771298)) b!6779718))

(assert (= (and b!6779718 res!2771300) b!6779720))

(assert (= (and b!6779720 res!2771297) b!6779730))

(assert (= (and b!6779730 res!2771299) b!6779729))

(assert (= (and b!6779718 (not res!2771294)) b!6779719))

(assert (= (and b!6779719 res!2771296) b!6779726))

(assert (= (and b!6779726 (not res!2771301)) b!6779725))

(assert (= (and b!6779725 (not res!2771295)) b!6779724))

(assert (= (or b!6779722 b!6779726 b!6779720) bm!615066))

(assert (=> b!6779725 m!7527370))

(declare-fun m!7528654 () Bool)

(assert (=> b!6779725 m!7528654))

(assert (=> b!6779725 m!7528654))

(declare-fun m!7528656 () Bool)

(assert (=> b!6779725 m!7528656))

(assert (=> b!6779724 m!7527370))

(declare-fun m!7528658 () Bool)

(assert (=> b!6779724 m!7528658))

(assert (=> b!6779728 m!7527378))

(declare-fun m!7528660 () Bool)

(assert (=> b!6779728 m!7528660))

(assert (=> b!6779729 m!7527370))

(assert (=> b!6779729 m!7528658))

(assert (=> b!6779727 m!7527370))

(assert (=> b!6779727 m!7528658))

(assert (=> b!6779727 m!7527378))

(assert (=> b!6779727 m!7528658))

(declare-fun m!7528662 () Bool)

(assert (=> b!6779727 m!7528662))

(assert (=> b!6779727 m!7527370))

(assert (=> b!6779727 m!7528654))

(assert (=> b!6779727 m!7528662))

(assert (=> b!6779727 m!7528654))

(declare-fun m!7528664 () Bool)

(assert (=> b!6779727 m!7528664))

(assert (=> d!2130036 m!7527370))

(assert (=> d!2130036 m!7527372))

(assert (=> d!2130036 m!7527378))

(declare-fun m!7528666 () Bool)

(assert (=> d!2130036 m!7528666))

(assert (=> bm!615066 m!7527370))

(assert (=> bm!615066 m!7527372))

(assert (=> b!6779730 m!7527370))

(assert (=> b!6779730 m!7528654))

(assert (=> b!6779730 m!7528654))

(assert (=> b!6779730 m!7528656))

(assert (=> b!6778381 d!2130036))

(declare-fun b!6779731 () Bool)

(declare-fun e!4092746 () Regex!16601)

(assert (=> b!6779731 (= e!4092746 (ite (= (head!13614 (_1!36879 lt!2444385)) (c!1258869 (reg!16930 r!7292))) EmptyExpr!16601 EmptyLang!16601))))

(declare-fun call!615072 () Regex!16601)

(declare-fun bm!615067 () Bool)

(declare-fun c!1259426 () Bool)

(assert (=> bm!615067 (= call!615072 (derivativeStep!5265 (ite c!1259426 (regOne!33715 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))) (head!13614 (_1!36879 lt!2444385))))))

(declare-fun e!4092748 () Regex!16601)

(declare-fun call!615073 () Regex!16601)

(declare-fun b!6779732 () Bool)

(assert (=> b!6779732 (= e!4092748 (Union!16601 (Concat!25446 call!615072 (regTwo!33714 (reg!16930 r!7292))) call!615073))))

(declare-fun d!2130038 () Bool)

(declare-fun lt!2444570 () Regex!16601)

(assert (=> d!2130038 (validRegex!8337 lt!2444570)))

(declare-fun e!4092750 () Regex!16601)

(assert (=> d!2130038 (= lt!2444570 e!4092750)))

(declare-fun c!1259427 () Bool)

(assert (=> d!2130038 (= c!1259427 (or ((_ is EmptyExpr!16601) (reg!16930 r!7292)) ((_ is EmptyLang!16601) (reg!16930 r!7292))))))

(assert (=> d!2130038 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2130038 (= (derivativeStep!5265 (reg!16930 r!7292) (head!13614 (_1!36879 lt!2444385))) lt!2444570)))

(declare-fun b!6779733 () Bool)

(assert (=> b!6779733 (= e!4092750 e!4092746)))

(declare-fun c!1259425 () Bool)

(assert (=> b!6779733 (= c!1259425 ((_ is ElementMatch!16601) (reg!16930 r!7292)))))

(declare-fun bm!615068 () Bool)

(declare-fun call!615075 () Regex!16601)

(assert (=> bm!615068 (= call!615073 call!615075)))

(declare-fun b!6779734 () Bool)

(assert (=> b!6779734 (= e!4092748 (Union!16601 (Concat!25446 call!615073 (regTwo!33714 (reg!16930 r!7292))) EmptyLang!16601))))

(declare-fun b!6779735 () Bool)

(declare-fun e!4092747 () Regex!16601)

(declare-fun call!615074 () Regex!16601)

(assert (=> b!6779735 (= e!4092747 (Union!16601 call!615072 call!615074))))

(declare-fun b!6779736 () Bool)

(declare-fun e!4092749 () Regex!16601)

(assert (=> b!6779736 (= e!4092749 (Concat!25446 call!615075 (reg!16930 r!7292)))))

(declare-fun c!1259429 () Bool)

(declare-fun c!1259428 () Bool)

(declare-fun bm!615069 () Bool)

(assert (=> bm!615069 (= call!615074 (derivativeStep!5265 (ite c!1259426 (regTwo!33715 (reg!16930 r!7292)) (ite c!1259429 (reg!16930 (reg!16930 r!7292)) (ite c!1259428 (regTwo!33714 (reg!16930 r!7292)) (regOne!33714 (reg!16930 r!7292))))) (head!13614 (_1!36879 lt!2444385))))))

(declare-fun b!6779737 () Bool)

(assert (=> b!6779737 (= e!4092747 e!4092749)))

(assert (=> b!6779737 (= c!1259429 ((_ is Star!16601) (reg!16930 r!7292)))))

(declare-fun b!6779738 () Bool)

(assert (=> b!6779738 (= c!1259426 ((_ is Union!16601) (reg!16930 r!7292)))))

(assert (=> b!6779738 (= e!4092746 e!4092747)))

(declare-fun b!6779739 () Bool)

(assert (=> b!6779739 (= c!1259428 (nullable!6580 (regOne!33714 (reg!16930 r!7292))))))

(assert (=> b!6779739 (= e!4092749 e!4092748)))

(declare-fun bm!615070 () Bool)

(assert (=> bm!615070 (= call!615075 call!615074)))

(declare-fun b!6779740 () Bool)

(assert (=> b!6779740 (= e!4092750 EmptyLang!16601)))

(assert (= (and d!2130038 c!1259427) b!6779740))

(assert (= (and d!2130038 (not c!1259427)) b!6779733))

(assert (= (and b!6779733 c!1259425) b!6779731))

(assert (= (and b!6779733 (not c!1259425)) b!6779738))

(assert (= (and b!6779738 c!1259426) b!6779735))

(assert (= (and b!6779738 (not c!1259426)) b!6779737))

(assert (= (and b!6779737 c!1259429) b!6779736))

(assert (= (and b!6779737 (not c!1259429)) b!6779739))

(assert (= (and b!6779739 c!1259428) b!6779732))

(assert (= (and b!6779739 (not c!1259428)) b!6779734))

(assert (= (or b!6779732 b!6779734) bm!615068))

(assert (= (or b!6779736 bm!615068) bm!615070))

(assert (= (or b!6779735 bm!615070) bm!615069))

(assert (= (or b!6779735 b!6779732) bm!615067))

(assert (=> bm!615067 m!7527374))

(declare-fun m!7528668 () Bool)

(assert (=> bm!615067 m!7528668))

(declare-fun m!7528670 () Bool)

(assert (=> d!2130038 m!7528670))

(assert (=> d!2130038 m!7527282))

(assert (=> bm!615069 m!7527374))

(declare-fun m!7528672 () Bool)

(assert (=> bm!615069 m!7528672))

(assert (=> b!6779739 m!7527422))

(assert (=> b!6778381 d!2130038))

(assert (=> b!6778381 d!2129666))

(assert (=> b!6778381 d!2129768))

(declare-fun d!2130040 () Bool)

(assert (=> d!2130040 true))

(declare-fun setRes!46368 () Bool)

(assert (=> d!2130040 setRes!46368))

(declare-fun condSetEmpty!46368 () Bool)

(declare-fun res!2771302 () (InoxSet Context!11970))

(assert (=> d!2130040 (= condSetEmpty!46368 (= res!2771302 ((as const (Array Context!11970 Bool)) false)))))

(assert (=> d!2130040 (= (choose!50484 lt!2444374 lambda!381389) res!2771302)))

(declare-fun setIsEmpty!46368 () Bool)

(assert (=> setIsEmpty!46368 setRes!46368))

(declare-fun e!4092751 () Bool)

(declare-fun tp!1857605 () Bool)

(declare-fun setNonEmpty!46368 () Bool)

(declare-fun setElem!46368 () Context!11970)

(assert (=> setNonEmpty!46368 (= setRes!46368 (and tp!1857605 (inv!84749 setElem!46368) e!4092751))))

(declare-fun setRest!46368 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46368 (= res!2771302 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46368 true) setRest!46368))))

(declare-fun b!6779741 () Bool)

(declare-fun tp!1857604 () Bool)

(assert (=> b!6779741 (= e!4092751 tp!1857604)))

(assert (= (and d!2130040 condSetEmpty!46368) setIsEmpty!46368))

(assert (= (and d!2130040 (not condSetEmpty!46368)) setNonEmpty!46368))

(assert (= setNonEmpty!46368 b!6779741))

(declare-fun m!7528674 () Bool)

(assert (=> setNonEmpty!46368 m!7528674))

(assert (=> d!2129450 d!2130040))

(declare-fun bs!1805585 () Bool)

(declare-fun d!2130042 () Bool)

(assert (= bs!1805585 (and d!2130042 d!2129456)))

(declare-fun lambda!381545 () Int)

(assert (=> bs!1805585 (= lambda!381545 lambda!381462)))

(declare-fun bs!1805586 () Bool)

(assert (= bs!1805586 (and d!2130042 d!2129460)))

(assert (=> bs!1805586 (= lambda!381545 lambda!381466)))

(declare-fun bs!1805587 () Bool)

(assert (= bs!1805587 (and d!2130042 d!2129462)))

(assert (=> bs!1805587 (= lambda!381545 lambda!381469)))

(declare-fun bs!1805588 () Bool)

(assert (= bs!1805588 (and d!2130042 d!2129778)))

(assert (=> bs!1805588 (= lambda!381545 lambda!381499)))

(declare-fun bs!1805589 () Bool)

(assert (= bs!1805589 (and d!2130042 d!2129282)))

(assert (=> bs!1805589 (= lambda!381545 lambda!381401)))

(declare-fun bs!1805590 () Bool)

(assert (= bs!1805590 (and d!2130042 d!2129960)))

(assert (=> bs!1805590 (= lambda!381545 lambda!381531)))

(declare-fun bs!1805591 () Bool)

(assert (= bs!1805591 (and d!2130042 d!2129866)))

(assert (=> bs!1805591 (= lambda!381545 lambda!381517)))

(declare-fun bs!1805592 () Bool)

(assert (= bs!1805592 (and d!2130042 d!2129458)))

(assert (=> bs!1805592 (= lambda!381545 lambda!381463)))

(declare-fun bs!1805593 () Bool)

(assert (= bs!1805593 (and d!2130042 d!2129864)))

(assert (=> bs!1805593 (= lambda!381545 lambda!381514)))

(declare-fun bs!1805594 () Bool)

(assert (= bs!1805594 (and d!2130042 d!2129480)))

(assert (=> bs!1805594 (= lambda!381545 lambda!381471)))

(declare-fun bs!1805595 () Bool)

(assert (= bs!1805595 (and d!2130042 d!2129966)))

(assert (=> bs!1805595 (= lambda!381545 lambda!381532)))

(declare-fun bs!1805596 () Bool)

(assert (= bs!1805596 (and d!2130042 d!2129974)))

(assert (=> bs!1805596 (= lambda!381545 lambda!381533)))

(assert (=> d!2130042 (= (inv!84749 setElem!46357) (forall!15793 (exprs!6485 setElem!46357) lambda!381545))))

(declare-fun bs!1805597 () Bool)

(assert (= bs!1805597 d!2130042))

(declare-fun m!7528676 () Bool)

(assert (=> bs!1805597 m!7528676))

(assert (=> setNonEmpty!46357 d!2130042))

(declare-fun d!2130044 () Bool)

(assert (=> d!2130044 (= ($colon$colon!2410 (exprs!6485 lt!2444384) (ite (or c!1259063 c!1259066) (regTwo!33714 (reg!16930 r!7292)) (reg!16930 r!7292))) (Cons!65979 (ite (or c!1259063 c!1259066) (regTwo!33714 (reg!16930 r!7292)) (reg!16930 r!7292)) (exprs!6485 lt!2444384)))))

(assert (=> bm!614822 d!2130044))

(declare-fun d!2130046 () Bool)

(assert (=> d!2130046 (= (nullable!6580 (regOne!33714 r!7292)) (nullableFct!2486 (regOne!33714 r!7292)))))

(declare-fun bs!1805598 () Bool)

(assert (= bs!1805598 d!2130046))

(declare-fun m!7528678 () Bool)

(assert (=> bs!1805598 m!7528678))

(assert (=> b!6778417 d!2130046))

(declare-fun b!6779742 () Bool)

(declare-fun e!4092752 () Bool)

(declare-fun e!4092755 () Bool)

(assert (=> b!6779742 (= e!4092752 e!4092755)))

(declare-fun c!1259432 () Bool)

(assert (=> b!6779742 (= c!1259432 ((_ is EmptyLang!16601) (derivativeStep!5265 r!7292 (head!13614 s!2326))))))

(declare-fun b!6779743 () Bool)

(declare-fun res!2771303 () Bool)

(declare-fun e!4092753 () Bool)

(assert (=> b!6779743 (=> res!2771303 e!4092753)))

(declare-fun e!4092756 () Bool)

(assert (=> b!6779743 (= res!2771303 e!4092756)))

(declare-fun res!2771309 () Bool)

(assert (=> b!6779743 (=> (not res!2771309) (not e!4092756))))

(declare-fun lt!2444571 () Bool)

(assert (=> b!6779743 (= res!2771309 lt!2444571)))

(declare-fun b!6779744 () Bool)

(declare-fun e!4092758 () Bool)

(assert (=> b!6779744 (= e!4092753 e!4092758)))

(declare-fun res!2771305 () Bool)

(assert (=> b!6779744 (=> (not res!2771305) (not e!4092758))))

(assert (=> b!6779744 (= res!2771305 (not lt!2444571))))

(declare-fun b!6779745 () Bool)

(declare-fun res!2771306 () Bool)

(assert (=> b!6779745 (=> (not res!2771306) (not e!4092756))))

(declare-fun call!615076 () Bool)

(assert (=> b!6779745 (= res!2771306 (not call!615076))))

(declare-fun b!6779746 () Bool)

(assert (=> b!6779746 (= e!4092755 (not lt!2444571))))

(declare-fun b!6779747 () Bool)

(assert (=> b!6779747 (= e!4092752 (= lt!2444571 call!615076))))

(declare-fun b!6779748 () Bool)

(declare-fun res!2771307 () Bool)

(assert (=> b!6779748 (=> res!2771307 e!4092753)))

(assert (=> b!6779748 (= res!2771307 (not ((_ is ElementMatch!16601) (derivativeStep!5265 r!7292 (head!13614 s!2326)))))))

(assert (=> b!6779748 (= e!4092755 e!4092753)))

(declare-fun b!6779749 () Bool)

(declare-fun e!4092754 () Bool)

(assert (=> b!6779749 (= e!4092754 (not (= (head!13614 (tail!12699 s!2326)) (c!1258869 (derivativeStep!5265 r!7292 (head!13614 s!2326))))))))

(declare-fun b!6779750 () Bool)

(declare-fun res!2771304 () Bool)

(assert (=> b!6779750 (=> res!2771304 e!4092754)))

(assert (=> b!6779750 (= res!2771304 (not (isEmpty!38337 (tail!12699 (tail!12699 s!2326)))))))

(declare-fun b!6779751 () Bool)

(assert (=> b!6779751 (= e!4092758 e!4092754)))

(declare-fun res!2771310 () Bool)

(assert (=> b!6779751 (=> res!2771310 e!4092754)))

(assert (=> b!6779751 (= res!2771310 call!615076)))

(declare-fun b!6779752 () Bool)

(declare-fun e!4092757 () Bool)

(assert (=> b!6779752 (= e!4092757 (matchR!8784 (derivativeStep!5265 (derivativeStep!5265 r!7292 (head!13614 s!2326)) (head!13614 (tail!12699 s!2326))) (tail!12699 (tail!12699 s!2326))))))

(declare-fun b!6779753 () Bool)

(assert (=> b!6779753 (= e!4092757 (nullable!6580 (derivativeStep!5265 r!7292 (head!13614 s!2326))))))

(declare-fun bm!615071 () Bool)

(assert (=> bm!615071 (= call!615076 (isEmpty!38337 (tail!12699 s!2326)))))

(declare-fun d!2130048 () Bool)

(assert (=> d!2130048 e!4092752))

(declare-fun c!1259430 () Bool)

(assert (=> d!2130048 (= c!1259430 ((_ is EmptyExpr!16601) (derivativeStep!5265 r!7292 (head!13614 s!2326))))))

(assert (=> d!2130048 (= lt!2444571 e!4092757)))

(declare-fun c!1259431 () Bool)

(assert (=> d!2130048 (= c!1259431 (isEmpty!38337 (tail!12699 s!2326)))))

(assert (=> d!2130048 (validRegex!8337 (derivativeStep!5265 r!7292 (head!13614 s!2326)))))

(assert (=> d!2130048 (= (matchR!8784 (derivativeStep!5265 r!7292 (head!13614 s!2326)) (tail!12699 s!2326)) lt!2444571)))

(declare-fun b!6779754 () Bool)

(assert (=> b!6779754 (= e!4092756 (= (head!13614 (tail!12699 s!2326)) (c!1258869 (derivativeStep!5265 r!7292 (head!13614 s!2326)))))))

(declare-fun b!6779755 () Bool)

(declare-fun res!2771308 () Bool)

(assert (=> b!6779755 (=> (not res!2771308) (not e!4092756))))

(assert (=> b!6779755 (= res!2771308 (isEmpty!38337 (tail!12699 (tail!12699 s!2326))))))

(assert (= (and d!2130048 c!1259431) b!6779753))

(assert (= (and d!2130048 (not c!1259431)) b!6779752))

(assert (= (and d!2130048 c!1259430) b!6779747))

(assert (= (and d!2130048 (not c!1259430)) b!6779742))

(assert (= (and b!6779742 c!1259432) b!6779746))

(assert (= (and b!6779742 (not c!1259432)) b!6779748))

(assert (= (and b!6779748 (not res!2771307)) b!6779743))

(assert (= (and b!6779743 res!2771309) b!6779745))

(assert (= (and b!6779745 res!2771306) b!6779755))

(assert (= (and b!6779755 res!2771308) b!6779754))

(assert (= (and b!6779743 (not res!2771303)) b!6779744))

(assert (= (and b!6779744 res!2771305) b!6779751))

(assert (= (and b!6779751 (not res!2771310)) b!6779750))

(assert (= (and b!6779750 (not res!2771304)) b!6779749))

(assert (= (or b!6779747 b!6779751 b!6779745) bm!615071))

(assert (=> b!6779750 m!7527126))

(assert (=> b!6779750 m!7528590))

(assert (=> b!6779750 m!7528590))

(assert (=> b!6779750 m!7528592))

(assert (=> b!6779749 m!7527126))

(assert (=> b!6779749 m!7528594))

(assert (=> b!6779753 m!7527134))

(declare-fun m!7528680 () Bool)

(assert (=> b!6779753 m!7528680))

(assert (=> b!6779754 m!7527126))

(assert (=> b!6779754 m!7528594))

(assert (=> b!6779752 m!7527126))

(assert (=> b!6779752 m!7528594))

(assert (=> b!6779752 m!7527134))

(assert (=> b!6779752 m!7528594))

(declare-fun m!7528682 () Bool)

(assert (=> b!6779752 m!7528682))

(assert (=> b!6779752 m!7527126))

(assert (=> b!6779752 m!7528590))

(assert (=> b!6779752 m!7528682))

(assert (=> b!6779752 m!7528590))

(declare-fun m!7528684 () Bool)

(assert (=> b!6779752 m!7528684))

(assert (=> d!2130048 m!7527126))

(assert (=> d!2130048 m!7527128))

(assert (=> d!2130048 m!7527134))

(declare-fun m!7528686 () Bool)

(assert (=> d!2130048 m!7528686))

(assert (=> bm!615071 m!7527126))

(assert (=> bm!615071 m!7527128))

(assert (=> b!6779755 m!7527126))

(assert (=> b!6779755 m!7528590))

(assert (=> b!6779755 m!7528590))

(assert (=> b!6779755 m!7528592))

(assert (=> b!6778067 d!2130048))

(declare-fun b!6779756 () Bool)

(declare-fun e!4092759 () Regex!16601)

(assert (=> b!6779756 (= e!4092759 (ite (= (head!13614 s!2326) (c!1258869 r!7292)) EmptyExpr!16601 EmptyLang!16601))))

(declare-fun bm!615072 () Bool)

(declare-fun c!1259434 () Bool)

(declare-fun call!615077 () Regex!16601)

(assert (=> bm!615072 (= call!615077 (derivativeStep!5265 (ite c!1259434 (regOne!33715 r!7292) (regOne!33714 r!7292)) (head!13614 s!2326)))))

(declare-fun e!4092761 () Regex!16601)

(declare-fun call!615078 () Regex!16601)

(declare-fun b!6779757 () Bool)

(assert (=> b!6779757 (= e!4092761 (Union!16601 (Concat!25446 call!615077 (regTwo!33714 r!7292)) call!615078))))

(declare-fun d!2130050 () Bool)

(declare-fun lt!2444572 () Regex!16601)

(assert (=> d!2130050 (validRegex!8337 lt!2444572)))

(declare-fun e!4092763 () Regex!16601)

(assert (=> d!2130050 (= lt!2444572 e!4092763)))

(declare-fun c!1259435 () Bool)

(assert (=> d!2130050 (= c!1259435 (or ((_ is EmptyExpr!16601) r!7292) ((_ is EmptyLang!16601) r!7292)))))

(assert (=> d!2130050 (validRegex!8337 r!7292)))

(assert (=> d!2130050 (= (derivativeStep!5265 r!7292 (head!13614 s!2326)) lt!2444572)))

(declare-fun b!6779758 () Bool)

(assert (=> b!6779758 (= e!4092763 e!4092759)))

(declare-fun c!1259433 () Bool)

(assert (=> b!6779758 (= c!1259433 ((_ is ElementMatch!16601) r!7292))))

(declare-fun bm!615073 () Bool)

(declare-fun call!615080 () Regex!16601)

(assert (=> bm!615073 (= call!615078 call!615080)))

(declare-fun b!6779759 () Bool)

(assert (=> b!6779759 (= e!4092761 (Union!16601 (Concat!25446 call!615078 (regTwo!33714 r!7292)) EmptyLang!16601))))

(declare-fun b!6779760 () Bool)

(declare-fun e!4092760 () Regex!16601)

(declare-fun call!615079 () Regex!16601)

(assert (=> b!6779760 (= e!4092760 (Union!16601 call!615077 call!615079))))

(declare-fun b!6779761 () Bool)

(declare-fun e!4092762 () Regex!16601)

(assert (=> b!6779761 (= e!4092762 (Concat!25446 call!615080 r!7292))))

(declare-fun c!1259437 () Bool)

(declare-fun c!1259436 () Bool)

(declare-fun bm!615074 () Bool)

(assert (=> bm!615074 (= call!615079 (derivativeStep!5265 (ite c!1259434 (regTwo!33715 r!7292) (ite c!1259437 (reg!16930 r!7292) (ite c!1259436 (regTwo!33714 r!7292) (regOne!33714 r!7292)))) (head!13614 s!2326)))))

(declare-fun b!6779762 () Bool)

(assert (=> b!6779762 (= e!4092760 e!4092762)))

(assert (=> b!6779762 (= c!1259437 ((_ is Star!16601) r!7292))))

(declare-fun b!6779763 () Bool)

(assert (=> b!6779763 (= c!1259434 ((_ is Union!16601) r!7292))))

(assert (=> b!6779763 (= e!4092759 e!4092760)))

(declare-fun b!6779764 () Bool)

(assert (=> b!6779764 (= c!1259436 (nullable!6580 (regOne!33714 r!7292)))))

(assert (=> b!6779764 (= e!4092762 e!4092761)))

(declare-fun bm!615075 () Bool)

(assert (=> bm!615075 (= call!615080 call!615079)))

(declare-fun b!6779765 () Bool)

(assert (=> b!6779765 (= e!4092763 EmptyLang!16601)))

(assert (= (and d!2130050 c!1259435) b!6779765))

(assert (= (and d!2130050 (not c!1259435)) b!6779758))

(assert (= (and b!6779758 c!1259433) b!6779756))

(assert (= (and b!6779758 (not c!1259433)) b!6779763))

(assert (= (and b!6779763 c!1259434) b!6779760))

(assert (= (and b!6779763 (not c!1259434)) b!6779762))

(assert (= (and b!6779762 c!1259437) b!6779761))

(assert (= (and b!6779762 (not c!1259437)) b!6779764))

(assert (= (and b!6779764 c!1259436) b!6779757))

(assert (= (and b!6779764 (not c!1259436)) b!6779759))

(assert (= (or b!6779757 b!6779759) bm!615073))

(assert (= (or b!6779761 bm!615073) bm!615075))

(assert (= (or b!6779760 bm!615075) bm!615074))

(assert (= (or b!6779760 b!6779757) bm!615072))

(assert (=> bm!615072 m!7527130))

(declare-fun m!7528688 () Bool)

(assert (=> bm!615072 m!7528688))

(declare-fun m!7528690 () Bool)

(assert (=> d!2130050 m!7528690))

(assert (=> d!2130050 m!7526812))

(assert (=> bm!615074 m!7527130))

(declare-fun m!7528692 () Bool)

(assert (=> bm!615074 m!7528692))

(assert (=> b!6779764 m!7527390))

(assert (=> b!6778067 d!2130050))

(assert (=> b!6778067 d!2129680))

(assert (=> b!6778067 d!2129702))

(declare-fun d!2130052 () Bool)

(assert (=> d!2130052 (= (isEmpty!38340 (unfocusZipperList!2022 zl!343)) ((_ is Nil!65979) (unfocusZipperList!2022 zl!343)))))

(assert (=> b!6778480 d!2130052))

(assert (=> d!2129488 d!2129704))

(declare-fun bs!1805599 () Bool)

(declare-fun b!6779770 () Bool)

(assert (= bs!1805599 (and b!6779770 d!2129988)))

(declare-fun lambda!381546 () Int)

(assert (=> bs!1805599 (not (= lambda!381546 lambda!381542))))

(declare-fun bs!1805600 () Bool)

(assert (= bs!1805600 (and b!6779770 b!6779336)))

(assert (=> bs!1805600 (not (= lambda!381546 lambda!381520))))

(declare-fun bs!1805601 () Bool)

(assert (= bs!1805601 (and b!6779770 d!2129374)))

(assert (=> bs!1805601 (not (= lambda!381546 lambda!381448))))

(declare-fun bs!1805602 () Bool)

(assert (= bs!1805602 (and b!6779770 b!6779330)))

(assert (=> bs!1805602 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 (regOne!33715 lt!2444369))) (= (regTwo!33715 r!7292) (regOne!33715 lt!2444369))) (= lambda!381546 lambda!381519))))

(declare-fun bs!1805603 () Bool)

(assert (= bs!1805603 (and b!6779770 b!6778528)))

(assert (=> bs!1805603 (not (= lambda!381546 lambda!381473))))

(declare-fun bs!1805604 () Bool)

(assert (= bs!1805604 (and b!6779770 d!2129420)))

(assert (=> bs!1805604 (not (= lambda!381546 lambda!381458))))

(declare-fun bs!1805605 () Bool)

(assert (= bs!1805605 (and b!6779770 d!2129926)))

(assert (=> bs!1805605 (not (= lambda!381546 lambda!381528))))

(declare-fun bs!1805606 () Bool)

(assert (= bs!1805606 (and b!6779770 b!6777698)))

(assert (=> bs!1805606 (not (= lambda!381546 lambda!381388))))

(declare-fun bs!1805607 () Bool)

(assert (= bs!1805607 (and b!6779770 b!6778522)))

(assert (=> bs!1805607 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 lt!2444369)) (= (regTwo!33715 r!7292) lt!2444369)) (= lambda!381546 lambda!381472))))

(assert (=> bs!1805605 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33715 r!7292) (Star!16601 (reg!16930 r!7292)))) (= lambda!381546 lambda!381529))))

(declare-fun bs!1805608 () Bool)

(assert (= bs!1805608 (and b!6779770 b!6777987)))

(assert (=> bs!1805608 (not (= lambda!381546 lambda!381419))))

(declare-fun bs!1805609 () Bool)

(assert (= bs!1805609 (and b!6779770 d!2129396)))

(assert (=> bs!1805609 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33715 r!7292) (Star!16601 (reg!16930 r!7292)))) (= lambda!381546 lambda!381455))))

(assert (=> bs!1805601 (not (= lambda!381546 lambda!381447))))

(declare-fun bs!1805610 () Bool)

(assert (= bs!1805610 (and b!6779770 b!6779285)))

(assert (=> bs!1805610 (not (= lambda!381546 lambda!381511))))

(declare-fun bs!1805611 () Bool)

(assert (= bs!1805611 (and b!6779770 b!6779279)))

(assert (=> bs!1805611 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 (regOne!33715 r!7292))) (= (regTwo!33715 r!7292) (regOne!33715 r!7292))) (= lambda!381546 lambda!381509))))

(assert (=> bs!1805609 (not (= lambda!381546 lambda!381454))))

(assert (=> bs!1805606 (not (= lambda!381546 lambda!381386))))

(assert (=> bs!1805606 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33715 r!7292) r!7292)) (= lambda!381546 lambda!381387))))

(declare-fun bs!1805612 () Bool)

(assert (= bs!1805612 (and b!6779770 b!6777981)))

(assert (=> bs!1805612 (= (and (= (reg!16930 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33715 r!7292) r!7292)) (= lambda!381546 lambda!381416))))

(assert (=> b!6779770 true))

(assert (=> b!6779770 true))

(declare-fun bs!1805613 () Bool)

(declare-fun b!6779776 () Bool)

(assert (= bs!1805613 (and b!6779776 d!2129988)))

(declare-fun lambda!381547 () Int)

(assert (=> bs!1805613 (not (= lambda!381547 lambda!381542))))

(declare-fun bs!1805614 () Bool)

(assert (= bs!1805614 (and b!6779776 b!6779336)))

(assert (=> bs!1805614 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (regOne!33714 (regOne!33715 lt!2444369))) (= (regTwo!33714 (regTwo!33715 r!7292)) (regTwo!33714 (regOne!33715 lt!2444369)))) (= lambda!381547 lambda!381520))))

(declare-fun bs!1805615 () Bool)

(assert (= bs!1805615 (and b!6779776 d!2129374)))

(assert (=> bs!1805615 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33714 (regTwo!33715 r!7292)) r!7292)) (= lambda!381547 lambda!381448))))

(declare-fun bs!1805616 () Bool)

(assert (= bs!1805616 (and b!6779776 b!6779330)))

(assert (=> bs!1805616 (not (= lambda!381547 lambda!381519))))

(declare-fun bs!1805617 () Bool)

(assert (= bs!1805617 (and b!6779776 b!6779770)))

(assert (=> bs!1805617 (not (= lambda!381547 lambda!381546))))

(declare-fun bs!1805618 () Bool)

(assert (= bs!1805618 (and b!6779776 b!6778528)))

(assert (=> bs!1805618 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (regOne!33714 lt!2444369)) (= (regTwo!33714 (regTwo!33715 r!7292)) (regTwo!33714 lt!2444369))) (= lambda!381547 lambda!381473))))

(declare-fun bs!1805619 () Bool)

(assert (= bs!1805619 (and b!6779776 d!2129420)))

(assert (=> bs!1805619 (not (= lambda!381547 lambda!381458))))

(declare-fun bs!1805620 () Bool)

(assert (= bs!1805620 (and b!6779776 d!2129926)))

(assert (=> bs!1805620 (not (= lambda!381547 lambda!381528))))

(declare-fun bs!1805621 () Bool)

(assert (= bs!1805621 (and b!6779776 b!6777698)))

(assert (=> bs!1805621 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (reg!16930 r!7292)) (= (regTwo!33714 (regTwo!33715 r!7292)) r!7292)) (= lambda!381547 lambda!381388))))

(declare-fun bs!1805622 () Bool)

(assert (= bs!1805622 (and b!6779776 b!6778522)))

(assert (=> bs!1805622 (not (= lambda!381547 lambda!381472))))

(assert (=> bs!1805620 (not (= lambda!381547 lambda!381529))))

(declare-fun bs!1805623 () Bool)

(assert (= bs!1805623 (and b!6779776 b!6777987)))

(assert (=> bs!1805623 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (regOne!33714 r!7292)) (= (regTwo!33714 (regTwo!33715 r!7292)) (regTwo!33714 r!7292))) (= lambda!381547 lambda!381419))))

(declare-fun bs!1805624 () Bool)

(assert (= bs!1805624 (and b!6779776 d!2129396)))

(assert (=> bs!1805624 (not (= lambda!381547 lambda!381455))))

(assert (=> bs!1805615 (not (= lambda!381547 lambda!381447))))

(declare-fun bs!1805625 () Bool)

(assert (= bs!1805625 (and b!6779776 b!6779285)))

(assert (=> bs!1805625 (= (and (= (regOne!33714 (regTwo!33715 r!7292)) (regOne!33714 (regOne!33715 r!7292))) (= (regTwo!33714 (regTwo!33715 r!7292)) (regTwo!33714 (regOne!33715 r!7292)))) (= lambda!381547 lambda!381511))))

(declare-fun bs!1805626 () Bool)

(assert (= bs!1805626 (and b!6779776 b!6779279)))

(assert (=> bs!1805626 (not (= lambda!381547 lambda!381509))))

(assert (=> bs!1805624 (not (= lambda!381547 lambda!381454))))

(assert (=> bs!1805621 (not (= lambda!381547 lambda!381386))))

(assert (=> bs!1805621 (not (= lambda!381547 lambda!381387))))

(declare-fun bs!1805627 () Bool)

(assert (= bs!1805627 (and b!6779776 b!6777981)))

(assert (=> bs!1805627 (not (= lambda!381547 lambda!381416))))

(assert (=> b!6779776 true))

(assert (=> b!6779776 true))

(declare-fun b!6779766 () Bool)

(declare-fun e!4092766 () Bool)

(declare-fun call!615081 () Bool)

(assert (=> b!6779766 (= e!4092766 call!615081)))

(declare-fun b!6779767 () Bool)

(declare-fun e!4092768 () Bool)

(declare-fun e!4092767 () Bool)

(assert (=> b!6779767 (= e!4092768 e!4092767)))

(declare-fun c!1259438 () Bool)

(assert (=> b!6779767 (= c!1259438 ((_ is Star!16601) (regTwo!33715 r!7292)))))

(declare-fun b!6779768 () Bool)

(declare-fun e!4092764 () Bool)

(assert (=> b!6779768 (= e!4092766 e!4092764)))

(declare-fun res!2771311 () Bool)

(assert (=> b!6779768 (= res!2771311 (not ((_ is EmptyLang!16601) (regTwo!33715 r!7292))))))

(assert (=> b!6779768 (=> (not res!2771311) (not e!4092764))))

(declare-fun b!6779769 () Bool)

(declare-fun c!1259439 () Bool)

(assert (=> b!6779769 (= c!1259439 ((_ is Union!16601) (regTwo!33715 r!7292)))))

(declare-fun e!4092770 () Bool)

(assert (=> b!6779769 (= e!4092770 e!4092768)))

(declare-fun d!2130054 () Bool)

(declare-fun c!1259440 () Bool)

(assert (=> d!2130054 (= c!1259440 ((_ is EmptyExpr!16601) (regTwo!33715 r!7292)))))

(assert (=> d!2130054 (= (matchRSpec!3702 (regTwo!33715 r!7292) s!2326) e!4092766)))

(declare-fun e!4092769 () Bool)

(declare-fun call!615082 () Bool)

(assert (=> b!6779770 (= e!4092769 call!615082)))

(declare-fun b!6779771 () Bool)

(declare-fun res!2771312 () Bool)

(assert (=> b!6779771 (=> res!2771312 e!4092769)))

(assert (=> b!6779771 (= res!2771312 call!615081)))

(assert (=> b!6779771 (= e!4092767 e!4092769)))

(declare-fun b!6779772 () Bool)

(declare-fun e!4092765 () Bool)

(assert (=> b!6779772 (= e!4092768 e!4092765)))

(declare-fun res!2771313 () Bool)

(assert (=> b!6779772 (= res!2771313 (matchRSpec!3702 (regOne!33715 (regTwo!33715 r!7292)) s!2326))))

(assert (=> b!6779772 (=> res!2771313 e!4092765)))

(declare-fun bm!615076 () Bool)

(assert (=> bm!615076 (= call!615082 (Exists!3669 (ite c!1259438 lambda!381546 lambda!381547)))))

(declare-fun b!6779773 () Bool)

(assert (=> b!6779773 (= e!4092765 (matchRSpec!3702 (regTwo!33715 (regTwo!33715 r!7292)) s!2326))))

(declare-fun bm!615077 () Bool)

(assert (=> bm!615077 (= call!615081 (isEmpty!38337 s!2326))))

(declare-fun b!6779774 () Bool)

(assert (=> b!6779774 (= e!4092770 (= s!2326 (Cons!65978 (c!1258869 (regTwo!33715 r!7292)) Nil!65978)))))

(declare-fun b!6779775 () Bool)

(declare-fun c!1259441 () Bool)

(assert (=> b!6779775 (= c!1259441 ((_ is ElementMatch!16601) (regTwo!33715 r!7292)))))

(assert (=> b!6779775 (= e!4092764 e!4092770)))

(assert (=> b!6779776 (= e!4092767 call!615082)))

(assert (= (and d!2130054 c!1259440) b!6779766))

(assert (= (and d!2130054 (not c!1259440)) b!6779768))

(assert (= (and b!6779768 res!2771311) b!6779775))

(assert (= (and b!6779775 c!1259441) b!6779774))

(assert (= (and b!6779775 (not c!1259441)) b!6779769))

(assert (= (and b!6779769 c!1259439) b!6779772))

(assert (= (and b!6779769 (not c!1259439)) b!6779767))

(assert (= (and b!6779772 (not res!2771313)) b!6779773))

(assert (= (and b!6779767 c!1259438) b!6779771))

(assert (= (and b!6779767 (not c!1259438)) b!6779776))

(assert (= (and b!6779771 (not res!2771312)) b!6779770))

(assert (= (or b!6779770 b!6779776) bm!615076))

(assert (= (or b!6779766 b!6779771) bm!615077))

(declare-fun m!7528694 () Bool)

(assert (=> b!6779772 m!7528694))

(declare-fun m!7528696 () Bool)

(assert (=> bm!615076 m!7528696))

(declare-fun m!7528698 () Bool)

(assert (=> b!6779773 m!7528698))

(assert (=> bm!615077 m!7526878))

(assert (=> b!6777984 d!2130054))

(assert (=> bm!614796 d!2129704))

(declare-fun d!2130056 () Bool)

(assert (=> d!2130056 (= (isConcat!1481 lt!2444416) ((_ is Concat!25446) lt!2444416))))

(assert (=> b!6777874 d!2130056))

(assert (=> d!2129494 d!2129492))

(assert (=> d!2129494 d!2129490))

(declare-fun d!2130058 () Bool)

(assert (=> d!2130058 (= (matchR!8784 lt!2444369 s!2326) (matchRSpec!3702 lt!2444369 s!2326))))

(assert (=> d!2130058 true))

(declare-fun _$88!5566 () Unit!159893)

(assert (=> d!2130058 (= (choose!50476 lt!2444369 s!2326) _$88!5566)))

(declare-fun bs!1805628 () Bool)

(assert (= bs!1805628 d!2130058))

(assert (=> bs!1805628 m!7526844))

(assert (=> bs!1805628 m!7526842))

(assert (=> d!2129494 d!2130058))

(assert (=> d!2129494 d!2129654))

(declare-fun bs!1805629 () Bool)

(declare-fun d!2130060 () Bool)

(assert (= bs!1805629 (and d!2130060 d!2129456)))

(declare-fun lambda!381548 () Int)

(assert (=> bs!1805629 (= lambda!381548 lambda!381462)))

(declare-fun bs!1805630 () Bool)

(assert (= bs!1805630 (and d!2130060 d!2129460)))

(assert (=> bs!1805630 (= lambda!381548 lambda!381466)))

(declare-fun bs!1805631 () Bool)

(assert (= bs!1805631 (and d!2130060 d!2129462)))

(assert (=> bs!1805631 (= lambda!381548 lambda!381469)))

(declare-fun bs!1805632 () Bool)

(assert (= bs!1805632 (and d!2130060 d!2129778)))

(assert (=> bs!1805632 (= lambda!381548 lambda!381499)))

(declare-fun bs!1805633 () Bool)

(assert (= bs!1805633 (and d!2130060 d!2129282)))

(assert (=> bs!1805633 (= lambda!381548 lambda!381401)))

(declare-fun bs!1805634 () Bool)

(assert (= bs!1805634 (and d!2130060 d!2129960)))

(assert (=> bs!1805634 (= lambda!381548 lambda!381531)))

(declare-fun bs!1805635 () Bool)

(assert (= bs!1805635 (and d!2130060 d!2129866)))

(assert (=> bs!1805635 (= lambda!381548 lambda!381517)))

(declare-fun bs!1805636 () Bool)

(assert (= bs!1805636 (and d!2130060 d!2129864)))

(assert (=> bs!1805636 (= lambda!381548 lambda!381514)))

(declare-fun bs!1805637 () Bool)

(assert (= bs!1805637 (and d!2130060 d!2129480)))

(assert (=> bs!1805637 (= lambda!381548 lambda!381471)))

(declare-fun bs!1805638 () Bool)

(assert (= bs!1805638 (and d!2130060 d!2129966)))

(assert (=> bs!1805638 (= lambda!381548 lambda!381532)))

(declare-fun bs!1805639 () Bool)

(assert (= bs!1805639 (and d!2130060 d!2129974)))

(assert (=> bs!1805639 (= lambda!381548 lambda!381533)))

(declare-fun bs!1805640 () Bool)

(assert (= bs!1805640 (and d!2130060 d!2129458)))

(assert (=> bs!1805640 (= lambda!381548 lambda!381463)))

(declare-fun bs!1805641 () Bool)

(assert (= bs!1805641 (and d!2130060 d!2130042)))

(assert (=> bs!1805641 (= lambda!381548 lambda!381545)))

(declare-fun b!6779777 () Bool)

(declare-fun e!4092772 () Bool)

(declare-fun lt!2444573 () Regex!16601)

(assert (=> b!6779777 (= e!4092772 (= lt!2444573 (head!13613 (t!379816 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun b!6779778 () Bool)

(declare-fun e!4092774 () Regex!16601)

(declare-fun e!4092773 () Regex!16601)

(assert (=> b!6779778 (= e!4092774 e!4092773)))

(declare-fun c!1259445 () Bool)

(assert (=> b!6779778 (= c!1259445 ((_ is Cons!65979) (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6779779 () Bool)

(assert (=> b!6779779 (= e!4092773 (Concat!25446 (h!72427 (t!379816 (exprs!6485 (h!72428 zl!343)))) (generalisedConcat!2198 (t!379816 (t!379816 (exprs!6485 (h!72428 zl!343)))))))))

(declare-fun b!6779780 () Bool)

(declare-fun e!4092771 () Bool)

(declare-fun e!4092775 () Bool)

(assert (=> b!6779780 (= e!4092771 e!4092775)))

(declare-fun c!1259443 () Bool)

(assert (=> b!6779780 (= c!1259443 (isEmpty!38340 (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> d!2130060 e!4092771))

(declare-fun res!2771315 () Bool)

(assert (=> d!2130060 (=> (not res!2771315) (not e!4092771))))

(assert (=> d!2130060 (= res!2771315 (validRegex!8337 lt!2444573))))

(assert (=> d!2130060 (= lt!2444573 e!4092774)))

(declare-fun c!1259444 () Bool)

(declare-fun e!4092776 () Bool)

(assert (=> d!2130060 (= c!1259444 e!4092776)))

(declare-fun res!2771314 () Bool)

(assert (=> d!2130060 (=> (not res!2771314) (not e!4092776))))

(assert (=> d!2130060 (= res!2771314 ((_ is Cons!65979) (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> d!2130060 (forall!15793 (t!379816 (exprs!6485 (h!72428 zl!343))) lambda!381548)))

(assert (=> d!2130060 (= (generalisedConcat!2198 (t!379816 (exprs!6485 (h!72428 zl!343)))) lt!2444573)))

(declare-fun b!6779781 () Bool)

(assert (=> b!6779781 (= e!4092775 (isEmptyExpr!1958 lt!2444573))))

(declare-fun b!6779782 () Bool)

(assert (=> b!6779782 (= e!4092775 e!4092772)))

(declare-fun c!1259442 () Bool)

(assert (=> b!6779782 (= c!1259442 (isEmpty!38340 (tail!12698 (t!379816 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun b!6779783 () Bool)

(assert (=> b!6779783 (= e!4092772 (isConcat!1481 lt!2444573))))

(declare-fun b!6779784 () Bool)

(assert (=> b!6779784 (= e!4092774 (h!72427 (t!379816 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6779785 () Bool)

(assert (=> b!6779785 (= e!4092776 (isEmpty!38340 (t!379816 (t!379816 (exprs!6485 (h!72428 zl!343))))))))

(declare-fun b!6779786 () Bool)

(assert (=> b!6779786 (= e!4092773 EmptyExpr!16601)))

(assert (= (and d!2130060 res!2771314) b!6779785))

(assert (= (and d!2130060 c!1259444) b!6779784))

(assert (= (and d!2130060 (not c!1259444)) b!6779778))

(assert (= (and b!6779778 c!1259445) b!6779779))

(assert (= (and b!6779778 (not c!1259445)) b!6779786))

(assert (= (and d!2130060 res!2771315) b!6779780))

(assert (= (and b!6779780 c!1259443) b!6779781))

(assert (= (and b!6779780 (not c!1259443)) b!6779782))

(assert (= (and b!6779782 c!1259442) b!6779777))

(assert (= (and b!6779782 (not c!1259442)) b!6779783))

(declare-fun m!7528700 () Bool)

(assert (=> b!6779782 m!7528700))

(assert (=> b!6779782 m!7528700))

(declare-fun m!7528702 () Bool)

(assert (=> b!6779782 m!7528702))

(declare-fun m!7528704 () Bool)

(assert (=> b!6779781 m!7528704))

(declare-fun m!7528706 () Bool)

(assert (=> b!6779779 m!7528706))

(declare-fun m!7528708 () Bool)

(assert (=> b!6779785 m!7528708))

(declare-fun m!7528710 () Bool)

(assert (=> b!6779777 m!7528710))

(assert (=> b!6779780 m!7527020))

(declare-fun m!7528712 () Bool)

(assert (=> b!6779783 m!7528712))

(declare-fun m!7528714 () Bool)

(assert (=> d!2130060 m!7528714))

(declare-fun m!7528716 () Bool)

(assert (=> d!2130060 m!7528716))

(assert (=> b!6777870 d!2130060))

(assert (=> d!2129466 d!2129464))

(declare-fun d!2130062 () Bool)

(assert (=> d!2130062 (= (flatMap!2082 lt!2444388 lambda!381389) (dynLambda!26326 lambda!381389 lt!2444367))))

(assert (=> d!2130062 true))

(declare-fun _$13!4181 () Unit!159893)

(assert (=> d!2130062 (= (choose!50485 lt!2444388 lt!2444367 lambda!381389) _$13!4181)))

(declare-fun b_lambda!255281 () Bool)

(assert (=> (not b_lambda!255281) (not d!2130062)))

(declare-fun bs!1805642 () Bool)

(assert (= bs!1805642 d!2130062))

(assert (=> bs!1805642 m!7526808))

(assert (=> bs!1805642 m!7527466))

(assert (=> d!2129466 d!2130062))

(declare-fun b!6779787 () Bool)

(declare-fun e!4092777 () Bool)

(declare-fun call!615084 () Bool)

(assert (=> b!6779787 (= e!4092777 call!615084)))

(declare-fun d!2130064 () Bool)

(declare-fun res!2771318 () Bool)

(declare-fun e!4092778 () Bool)

(assert (=> d!2130064 (=> res!2771318 e!4092778)))

(assert (=> d!2130064 (= res!2771318 ((_ is ElementMatch!16601) lt!2444416))))

(assert (=> d!2130064 (= (validRegex!8337 lt!2444416) e!4092778)))

(declare-fun b!6779788 () Bool)

(declare-fun e!4092783 () Bool)

(assert (=> b!6779788 (= e!4092783 e!4092777)))

(declare-fun res!2771320 () Bool)

(assert (=> b!6779788 (= res!2771320 (not (nullable!6580 (reg!16930 lt!2444416))))))

(assert (=> b!6779788 (=> (not res!2771320) (not e!4092777))))

(declare-fun c!1259446 () Bool)

(declare-fun bm!615078 () Bool)

(declare-fun c!1259447 () Bool)

(assert (=> bm!615078 (= call!615084 (validRegex!8337 (ite c!1259446 (reg!16930 lt!2444416) (ite c!1259447 (regOne!33715 lt!2444416) (regOne!33714 lt!2444416)))))))

(declare-fun bm!615079 () Bool)

(declare-fun call!615083 () Bool)

(assert (=> bm!615079 (= call!615083 call!615084)))

(declare-fun b!6779789 () Bool)

(declare-fun res!2771317 () Bool)

(declare-fun e!4092779 () Bool)

(assert (=> b!6779789 (=> (not res!2771317) (not e!4092779))))

(assert (=> b!6779789 (= res!2771317 call!615083)))

(declare-fun e!4092780 () Bool)

(assert (=> b!6779789 (= e!4092780 e!4092779)))

(declare-fun b!6779790 () Bool)

(declare-fun res!2771319 () Bool)

(declare-fun e!4092782 () Bool)

(assert (=> b!6779790 (=> res!2771319 e!4092782)))

(assert (=> b!6779790 (= res!2771319 (not ((_ is Concat!25446) lt!2444416)))))

(assert (=> b!6779790 (= e!4092780 e!4092782)))

(declare-fun b!6779791 () Bool)

(assert (=> b!6779791 (= e!4092778 e!4092783)))

(assert (=> b!6779791 (= c!1259446 ((_ is Star!16601) lt!2444416))))

(declare-fun bm!615080 () Bool)

(declare-fun call!615085 () Bool)

(assert (=> bm!615080 (= call!615085 (validRegex!8337 (ite c!1259447 (regTwo!33715 lt!2444416) (regTwo!33714 lt!2444416))))))

(declare-fun b!6779792 () Bool)

(assert (=> b!6779792 (= e!4092779 call!615085)))

(declare-fun b!6779793 () Bool)

(declare-fun e!4092781 () Bool)

(assert (=> b!6779793 (= e!4092781 call!615085)))

(declare-fun b!6779794 () Bool)

(assert (=> b!6779794 (= e!4092783 e!4092780)))

(assert (=> b!6779794 (= c!1259447 ((_ is Union!16601) lt!2444416))))

(declare-fun b!6779795 () Bool)

(assert (=> b!6779795 (= e!4092782 e!4092781)))

(declare-fun res!2771316 () Bool)

(assert (=> b!6779795 (=> (not res!2771316) (not e!4092781))))

(assert (=> b!6779795 (= res!2771316 call!615083)))

(assert (= (and d!2130064 (not res!2771318)) b!6779791))

(assert (= (and b!6779791 c!1259446) b!6779788))

(assert (= (and b!6779791 (not c!1259446)) b!6779794))

(assert (= (and b!6779788 res!2771320) b!6779787))

(assert (= (and b!6779794 c!1259447) b!6779789))

(assert (= (and b!6779794 (not c!1259447)) b!6779790))

(assert (= (and b!6779789 res!2771317) b!6779792))

(assert (= (and b!6779790 (not res!2771319)) b!6779795))

(assert (= (and b!6779795 res!2771316) b!6779793))

(assert (= (or b!6779792 b!6779793) bm!615080))

(assert (= (or b!6779789 b!6779795) bm!615079))

(assert (= (or b!6779787 bm!615079) bm!615078))

(declare-fun m!7528718 () Bool)

(assert (=> b!6779788 m!7528718))

(declare-fun m!7528720 () Bool)

(assert (=> bm!615078 m!7528720))

(declare-fun m!7528722 () Bool)

(assert (=> bm!615080 m!7528722))

(assert (=> d!2129282 d!2130064))

(declare-fun d!2130066 () Bool)

(declare-fun res!2771321 () Bool)

(declare-fun e!4092784 () Bool)

(assert (=> d!2130066 (=> res!2771321 e!4092784)))

(assert (=> d!2130066 (= res!2771321 ((_ is Nil!65979) (exprs!6485 (h!72428 zl!343))))))

(assert (=> d!2130066 (= (forall!15793 (exprs!6485 (h!72428 zl!343)) lambda!381401) e!4092784)))

(declare-fun b!6779796 () Bool)

(declare-fun e!4092785 () Bool)

(assert (=> b!6779796 (= e!4092784 e!4092785)))

(declare-fun res!2771322 () Bool)

(assert (=> b!6779796 (=> (not res!2771322) (not e!4092785))))

(assert (=> b!6779796 (= res!2771322 (dynLambda!26328 lambda!381401 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun b!6779797 () Bool)

(assert (=> b!6779797 (= e!4092785 (forall!15793 (t!379816 (exprs!6485 (h!72428 zl!343))) lambda!381401))))

(assert (= (and d!2130066 (not res!2771321)) b!6779796))

(assert (= (and b!6779796 res!2771322) b!6779797))

(declare-fun b_lambda!255283 () Bool)

(assert (=> (not b_lambda!255283) (not b!6779796)))

(declare-fun m!7528724 () Bool)

(assert (=> b!6779796 m!7528724))

(declare-fun m!7528726 () Bool)

(assert (=> b!6779797 m!7528726))

(assert (=> d!2129282 d!2130066))

(declare-fun b!6779801 () Bool)

(declare-fun e!4092787 () Bool)

(declare-fun lt!2444574 () List!66102)

(assert (=> b!6779801 (= e!4092787 (or (not (= (t!379815 s!2326) Nil!65978)) (= lt!2444574 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)))))))

(declare-fun d!2130068 () Bool)

(assert (=> d!2130068 e!4092787))

(declare-fun res!2771324 () Bool)

(assert (=> d!2130068 (=> (not res!2771324) (not e!4092787))))

(assert (=> d!2130068 (= res!2771324 (= (content!12848 lt!2444574) ((_ map or) (content!12848 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))) (content!12848 (t!379815 s!2326)))))))

(declare-fun e!4092786 () List!66102)

(assert (=> d!2130068 (= lt!2444574 e!4092786)))

(declare-fun c!1259448 () Bool)

(assert (=> d!2130068 (= c!1259448 ((_ is Nil!65978) (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))))))

(assert (=> d!2130068 (= (++!14755 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326)) lt!2444574)))

(declare-fun b!6779798 () Bool)

(assert (=> b!6779798 (= e!4092786 (t!379815 s!2326))))

(declare-fun b!6779800 () Bool)

(declare-fun res!2771323 () Bool)

(assert (=> b!6779800 (=> (not res!2771323) (not e!4092787))))

(assert (=> b!6779800 (= res!2771323 (= (size!40634 lt!2444574) (+ (size!40634 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))) (size!40634 (t!379815 s!2326)))))))

(declare-fun b!6779799 () Bool)

(assert (=> b!6779799 (= e!4092786 (Cons!65978 (h!72426 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))) (++!14755 (t!379815 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))) (t!379815 s!2326))))))

(assert (= (and d!2130068 c!1259448) b!6779798))

(assert (= (and d!2130068 (not c!1259448)) b!6779799))

(assert (= (and d!2130068 res!2771324) b!6779800))

(assert (= (and b!6779800 res!2771323) b!6779801))

(declare-fun m!7528728 () Bool)

(assert (=> d!2130068 m!7528728))

(assert (=> d!2130068 m!7527322))

(declare-fun m!7528730 () Bool)

(assert (=> d!2130068 m!7528730))

(declare-fun m!7528732 () Bool)

(assert (=> d!2130068 m!7528732))

(declare-fun m!7528734 () Bool)

(assert (=> b!6779800 m!7528734))

(assert (=> b!6779800 m!7527322))

(declare-fun m!7528736 () Bool)

(assert (=> b!6779800 m!7528736))

(declare-fun m!7528738 () Bool)

(assert (=> b!6779800 m!7528738))

(declare-fun m!7528740 () Bool)

(assert (=> b!6779799 m!7528740))

(assert (=> b!6778349 d!2130068))

(declare-fun b!6779805 () Bool)

(declare-fun e!4092789 () Bool)

(declare-fun lt!2444575 () List!66102)

(assert (=> b!6779805 (= e!4092789 (or (not (= (Cons!65978 (h!72426 s!2326) Nil!65978) Nil!65978)) (= lt!2444575 Nil!65978)))))

(declare-fun d!2130070 () Bool)

(assert (=> d!2130070 e!4092789))

(declare-fun res!2771326 () Bool)

(assert (=> d!2130070 (=> (not res!2771326) (not e!4092789))))

(assert (=> d!2130070 (= res!2771326 (= (content!12848 lt!2444575) ((_ map or) (content!12848 Nil!65978) (content!12848 (Cons!65978 (h!72426 s!2326) Nil!65978)))))))

(declare-fun e!4092788 () List!66102)

(assert (=> d!2130070 (= lt!2444575 e!4092788)))

(declare-fun c!1259449 () Bool)

(assert (=> d!2130070 (= c!1259449 ((_ is Nil!65978) Nil!65978))))

(assert (=> d!2130070 (= (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) lt!2444575)))

(declare-fun b!6779802 () Bool)

(assert (=> b!6779802 (= e!4092788 (Cons!65978 (h!72426 s!2326) Nil!65978))))

(declare-fun b!6779804 () Bool)

(declare-fun res!2771325 () Bool)

(assert (=> b!6779804 (=> (not res!2771325) (not e!4092789))))

(assert (=> b!6779804 (= res!2771325 (= (size!40634 lt!2444575) (+ (size!40634 Nil!65978) (size!40634 (Cons!65978 (h!72426 s!2326) Nil!65978)))))))

(declare-fun b!6779803 () Bool)

(assert (=> b!6779803 (= e!4092788 (Cons!65978 (h!72426 Nil!65978) (++!14755 (t!379815 Nil!65978) (Cons!65978 (h!72426 s!2326) Nil!65978))))))

(assert (= (and d!2130070 c!1259449) b!6779802))

(assert (= (and d!2130070 (not c!1259449)) b!6779803))

(assert (= (and d!2130070 res!2771326) b!6779804))

(assert (= (and b!6779804 res!2771325) b!6779805))

(declare-fun m!7528742 () Bool)

(assert (=> d!2130070 m!7528742))

(declare-fun m!7528744 () Bool)

(assert (=> d!2130070 m!7528744))

(declare-fun m!7528746 () Bool)

(assert (=> d!2130070 m!7528746))

(declare-fun m!7528748 () Bool)

(assert (=> b!6779804 m!7528748))

(declare-fun m!7528750 () Bool)

(assert (=> b!6779804 m!7528750))

(declare-fun m!7528752 () Bool)

(assert (=> b!6779804 m!7528752))

(declare-fun m!7528754 () Bool)

(assert (=> b!6779803 m!7528754))

(assert (=> b!6778349 d!2130070))

(declare-fun d!2130072 () Bool)

(assert (=> d!2130072 (= (++!14755 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326)) s!2326)))

(declare-fun lt!2444578 () Unit!159893)

(declare-fun choose!50489 (List!66102 C!33472 List!66102 List!66102) Unit!159893)

(assert (=> d!2130072 (= lt!2444578 (choose!50489 Nil!65978 (h!72426 s!2326) (t!379815 s!2326) s!2326))))

(assert (=> d!2130072 (= (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) (t!379815 s!2326))) s!2326)))

(assert (=> d!2130072 (= (lemmaMoveElementToOtherListKeepsConcatEq!2722 Nil!65978 (h!72426 s!2326) (t!379815 s!2326) s!2326) lt!2444578)))

(declare-fun bs!1805643 () Bool)

(assert (= bs!1805643 d!2130072))

(assert (=> bs!1805643 m!7527322))

(assert (=> bs!1805643 m!7527322))

(assert (=> bs!1805643 m!7527324))

(declare-fun m!7528756 () Bool)

(assert (=> bs!1805643 m!7528756))

(declare-fun m!7528758 () Bool)

(assert (=> bs!1805643 m!7528758))

(assert (=> b!6778349 d!2130072))

(declare-fun b!6779806 () Bool)

(declare-fun res!2771331 () Bool)

(declare-fun e!4092791 () Bool)

(assert (=> b!6779806 (=> (not res!2771331) (not e!4092791))))

(declare-fun lt!2444581 () Option!16488)

(assert (=> b!6779806 (= res!2771331 (matchR!8784 r!7292 (_2!36879 (get!22971 lt!2444581))))))

(declare-fun b!6779807 () Bool)

(assert (=> b!6779807 (= e!4092791 (= (++!14755 (_1!36879 (get!22971 lt!2444581)) (_2!36879 (get!22971 lt!2444581))) s!2326))))

(declare-fun d!2130074 () Bool)

(declare-fun e!4092790 () Bool)

(assert (=> d!2130074 e!4092790))

(declare-fun res!2771328 () Bool)

(assert (=> d!2130074 (=> res!2771328 e!4092790)))

(assert (=> d!2130074 (= res!2771328 e!4092791)))

(declare-fun res!2771327 () Bool)

(assert (=> d!2130074 (=> (not res!2771327) (not e!4092791))))

(assert (=> d!2130074 (= res!2771327 (isDefined!13191 lt!2444581))))

(declare-fun e!4092792 () Option!16488)

(assert (=> d!2130074 (= lt!2444581 e!4092792)))

(declare-fun c!1259451 () Bool)

(declare-fun e!4092793 () Bool)

(assert (=> d!2130074 (= c!1259451 e!4092793)))

(declare-fun res!2771330 () Bool)

(assert (=> d!2130074 (=> (not res!2771330) (not e!4092793))))

(assert (=> d!2130074 (= res!2771330 (matchR!8784 (reg!16930 r!7292) (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978))))))

(assert (=> d!2130074 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2130074 (= (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326) s!2326) lt!2444581)))

(declare-fun b!6779808 () Bool)

(declare-fun e!4092794 () Option!16488)

(assert (=> b!6779808 (= e!4092792 e!4092794)))

(declare-fun c!1259450 () Bool)

(assert (=> b!6779808 (= c!1259450 ((_ is Nil!65978) (t!379815 s!2326)))))

(declare-fun b!6779809 () Bool)

(declare-fun lt!2444580 () Unit!159893)

(declare-fun lt!2444579 () Unit!159893)

(assert (=> b!6779809 (= lt!2444580 lt!2444579)))

(assert (=> b!6779809 (= (++!14755 (++!14755 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (Cons!65978 (h!72426 (t!379815 s!2326)) Nil!65978)) (t!379815 (t!379815 s!2326))) s!2326)))

(assert (=> b!6779809 (= lt!2444579 (lemmaMoveElementToOtherListKeepsConcatEq!2722 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (h!72426 (t!379815 s!2326)) (t!379815 (t!379815 s!2326)) s!2326))))

(assert (=> b!6779809 (= e!4092794 (findConcatSeparation!2902 (reg!16930 r!7292) r!7292 (++!14755 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (Cons!65978 (h!72426 (t!379815 s!2326)) Nil!65978)) (t!379815 (t!379815 s!2326)) s!2326))))

(declare-fun b!6779810 () Bool)

(assert (=> b!6779810 (= e!4092790 (not (isDefined!13191 lt!2444581)))))

(declare-fun b!6779811 () Bool)

(assert (=> b!6779811 (= e!4092794 None!16487)))

(declare-fun b!6779812 () Bool)

(assert (=> b!6779812 (= e!4092793 (matchR!8784 r!7292 (t!379815 s!2326)))))

(declare-fun b!6779813 () Bool)

(assert (=> b!6779813 (= e!4092792 (Some!16487 (tuple2!67153 (++!14755 Nil!65978 (Cons!65978 (h!72426 s!2326) Nil!65978)) (t!379815 s!2326))))))

(declare-fun b!6779814 () Bool)

(declare-fun res!2771329 () Bool)

(assert (=> b!6779814 (=> (not res!2771329) (not e!4092791))))

(assert (=> b!6779814 (= res!2771329 (matchR!8784 (reg!16930 r!7292) (_1!36879 (get!22971 lt!2444581))))))

(assert (= (and d!2130074 res!2771330) b!6779812))

(assert (= (and d!2130074 c!1259451) b!6779813))

(assert (= (and d!2130074 (not c!1259451)) b!6779808))

(assert (= (and b!6779808 c!1259450) b!6779811))

(assert (= (and b!6779808 (not c!1259450)) b!6779809))

(assert (= (and d!2130074 res!2771327) b!6779814))

(assert (= (and b!6779814 res!2771329) b!6779806))

(assert (= (and b!6779806 res!2771331) b!6779807))

(assert (= (and d!2130074 (not res!2771328)) b!6779810))

(declare-fun m!7528760 () Bool)

(assert (=> d!2130074 m!7528760))

(assert (=> d!2130074 m!7527322))

(declare-fun m!7528762 () Bool)

(assert (=> d!2130074 m!7528762))

(assert (=> d!2130074 m!7527282))

(declare-fun m!7528764 () Bool)

(assert (=> b!6779806 m!7528764))

(declare-fun m!7528766 () Bool)

(assert (=> b!6779806 m!7528766))

(assert (=> b!6779809 m!7527322))

(declare-fun m!7528768 () Bool)

(assert (=> b!6779809 m!7528768))

(assert (=> b!6779809 m!7528768))

(declare-fun m!7528770 () Bool)

(assert (=> b!6779809 m!7528770))

(assert (=> b!6779809 m!7527322))

(declare-fun m!7528772 () Bool)

(assert (=> b!6779809 m!7528772))

(assert (=> b!6779809 m!7528768))

(declare-fun m!7528774 () Bool)

(assert (=> b!6779809 m!7528774))

(declare-fun m!7528776 () Bool)

(assert (=> b!6779812 m!7528776))

(assert (=> b!6779814 m!7528764))

(declare-fun m!7528778 () Bool)

(assert (=> b!6779814 m!7528778))

(assert (=> b!6779810 m!7528760))

(assert (=> b!6779807 m!7528764))

(declare-fun m!7528780 () Bool)

(assert (=> b!6779807 m!7528780))

(assert (=> b!6778349 d!2130074))

(assert (=> b!6778508 d!2129844))

(assert (=> b!6778508 d!2129834))

(assert (=> bs!1805083 d!2129452))

(declare-fun d!2130076 () Bool)

(assert (=> d!2130076 (= (Exists!3669 lambda!381447) (choose!50478 lambda!381447))))

(declare-fun bs!1805644 () Bool)

(assert (= bs!1805644 d!2130076))

(declare-fun m!7528782 () Bool)

(assert (=> bs!1805644 m!7528782))

(assert (=> d!2129374 d!2130076))

(declare-fun d!2130078 () Bool)

(assert (=> d!2130078 (= (Exists!3669 lambda!381448) (choose!50478 lambda!381448))))

(declare-fun bs!1805645 () Bool)

(assert (= bs!1805645 d!2130078))

(declare-fun m!7528784 () Bool)

(assert (=> bs!1805645 m!7528784))

(assert (=> d!2129374 d!2130078))

(declare-fun bs!1805646 () Bool)

(declare-fun d!2130080 () Bool)

(assert (= bs!1805646 (and d!2130080 d!2129988)))

(declare-fun lambda!381553 () Int)

(assert (=> bs!1805646 (= lambda!381553 lambda!381542)))

(declare-fun bs!1805647 () Bool)

(assert (= bs!1805647 (and d!2130080 d!2129374)))

(assert (=> bs!1805647 (not (= lambda!381553 lambda!381448))))

(declare-fun bs!1805648 () Bool)

(assert (= bs!1805648 (and d!2130080 b!6779330)))

(assert (=> bs!1805648 (not (= lambda!381553 lambda!381519))))

(declare-fun bs!1805649 () Bool)

(assert (= bs!1805649 (and d!2130080 b!6779770)))

(assert (=> bs!1805649 (not (= lambda!381553 lambda!381546))))

(declare-fun bs!1805650 () Bool)

(assert (= bs!1805650 (and d!2130080 b!6778528)))

(assert (=> bs!1805650 (not (= lambda!381553 lambda!381473))))

(declare-fun bs!1805651 () Bool)

(assert (= bs!1805651 (and d!2130080 d!2129420)))

(assert (=> bs!1805651 (= lambda!381553 lambda!381458)))

(declare-fun bs!1805652 () Bool)

(assert (= bs!1805652 (and d!2130080 d!2129926)))

(assert (=> bs!1805652 (= (= r!7292 (Star!16601 (reg!16930 r!7292))) (= lambda!381553 lambda!381528))))

(declare-fun bs!1805653 () Bool)

(assert (= bs!1805653 (and d!2130080 b!6777698)))

(assert (=> bs!1805653 (not (= lambda!381553 lambda!381388))))

(declare-fun bs!1805654 () Bool)

(assert (= bs!1805654 (and d!2130080 b!6778522)))

(assert (=> bs!1805654 (not (= lambda!381553 lambda!381472))))

(assert (=> bs!1805652 (not (= lambda!381553 lambda!381529))))

(declare-fun bs!1805655 () Bool)

(assert (= bs!1805655 (and d!2130080 b!6777987)))

(assert (=> bs!1805655 (not (= lambda!381553 lambda!381419))))

(declare-fun bs!1805656 () Bool)

(assert (= bs!1805656 (and d!2130080 d!2129396)))

(assert (=> bs!1805656 (not (= lambda!381553 lambda!381455))))

(declare-fun bs!1805657 () Bool)

(assert (= bs!1805657 (and d!2130080 b!6779336)))

(assert (=> bs!1805657 (not (= lambda!381553 lambda!381520))))

(declare-fun bs!1805658 () Bool)

(assert (= bs!1805658 (and d!2130080 b!6779776)))

(assert (=> bs!1805658 (not (= lambda!381553 lambda!381547))))

(assert (=> bs!1805647 (= lambda!381553 lambda!381447)))

(declare-fun bs!1805659 () Bool)

(assert (= bs!1805659 (and d!2130080 b!6779285)))

(assert (=> bs!1805659 (not (= lambda!381553 lambda!381511))))

(declare-fun bs!1805660 () Bool)

(assert (= bs!1805660 (and d!2130080 b!6779279)))

(assert (=> bs!1805660 (not (= lambda!381553 lambda!381509))))

(assert (=> bs!1805656 (= (= r!7292 (Star!16601 (reg!16930 r!7292))) (= lambda!381553 lambda!381454))))

(assert (=> bs!1805653 (= lambda!381553 lambda!381386)))

(assert (=> bs!1805653 (not (= lambda!381553 lambda!381387))))

(declare-fun bs!1805661 () Bool)

(assert (= bs!1805661 (and d!2130080 b!6777981)))

(assert (=> bs!1805661 (not (= lambda!381553 lambda!381416))))

(assert (=> d!2130080 true))

(assert (=> d!2130080 true))

(assert (=> d!2130080 true))

(declare-fun lambda!381554 () Int)

(assert (=> bs!1805646 (not (= lambda!381554 lambda!381542))))

(assert (=> bs!1805647 (= lambda!381554 lambda!381448)))

(assert (=> bs!1805648 (not (= lambda!381554 lambda!381519))))

(declare-fun bs!1805662 () Bool)

(assert (= bs!1805662 d!2130080))

(assert (=> bs!1805662 (not (= lambda!381554 lambda!381553))))

(assert (=> bs!1805649 (not (= lambda!381554 lambda!381546))))

(assert (=> bs!1805650 (= (and (= (reg!16930 r!7292) (regOne!33714 lt!2444369)) (= r!7292 (regTwo!33714 lt!2444369))) (= lambda!381554 lambda!381473))))

(assert (=> bs!1805651 (not (= lambda!381554 lambda!381458))))

(assert (=> bs!1805652 (not (= lambda!381554 lambda!381528))))

(assert (=> bs!1805653 (= lambda!381554 lambda!381388)))

(assert (=> bs!1805654 (not (= lambda!381554 lambda!381472))))

(assert (=> bs!1805652 (not (= lambda!381554 lambda!381529))))

(assert (=> bs!1805655 (= (and (= (reg!16930 r!7292) (regOne!33714 r!7292)) (= r!7292 (regTwo!33714 r!7292))) (= lambda!381554 lambda!381419))))

(assert (=> bs!1805656 (not (= lambda!381554 lambda!381455))))

(assert (=> bs!1805657 (= (and (= (reg!16930 r!7292) (regOne!33714 (regOne!33715 lt!2444369))) (= r!7292 (regTwo!33714 (regOne!33715 lt!2444369)))) (= lambda!381554 lambda!381520))))

(assert (=> bs!1805658 (= (and (= (reg!16930 r!7292) (regOne!33714 (regTwo!33715 r!7292))) (= r!7292 (regTwo!33714 (regTwo!33715 r!7292)))) (= lambda!381554 lambda!381547))))

(assert (=> bs!1805647 (not (= lambda!381554 lambda!381447))))

(assert (=> bs!1805659 (= (and (= (reg!16930 r!7292) (regOne!33714 (regOne!33715 r!7292))) (= r!7292 (regTwo!33714 (regOne!33715 r!7292)))) (= lambda!381554 lambda!381511))))

(assert (=> bs!1805660 (not (= lambda!381554 lambda!381509))))

(assert (=> bs!1805656 (not (= lambda!381554 lambda!381454))))

(assert (=> bs!1805653 (not (= lambda!381554 lambda!381386))))

(assert (=> bs!1805653 (not (= lambda!381554 lambda!381387))))

(assert (=> bs!1805661 (not (= lambda!381554 lambda!381416))))

(assert (=> d!2130080 true))

(assert (=> d!2130080 true))

(assert (=> d!2130080 true))

(assert (=> d!2130080 (= (Exists!3669 lambda!381553) (Exists!3669 lambda!381554))))

(assert (=> d!2130080 true))

(declare-fun _$90!2650 () Unit!159893)

(assert (=> d!2130080 (= (choose!50479 (reg!16930 r!7292) r!7292 s!2326) _$90!2650)))

(declare-fun m!7528786 () Bool)

(assert (=> bs!1805662 m!7528786))

(declare-fun m!7528788 () Bool)

(assert (=> bs!1805662 m!7528788))

(assert (=> d!2129374 d!2130080))

(assert (=> d!2129374 d!2129706))

(declare-fun bm!615081 () Bool)

(declare-fun call!615087 () List!66103)

(declare-fun call!615090 () List!66103)

(assert (=> bm!615081 (= call!615087 call!615090)))

(declare-fun bm!615082 () Bool)

(declare-fun call!615088 () (InoxSet Context!11970))

(declare-fun call!615091 () (InoxSet Context!11970))

(assert (=> bm!615082 (= call!615088 call!615091)))

(declare-fun b!6779823 () Bool)

(declare-fun e!4092801 () (InoxSet Context!11970))

(declare-fun e!4092799 () (InoxSet Context!11970))

(assert (=> b!6779823 (= e!4092801 e!4092799)))

(declare-fun c!1259456 () Bool)

(assert (=> b!6779823 (= c!1259456 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun bm!615083 () Bool)

(declare-fun call!615086 () (InoxSet Context!11970))

(assert (=> bm!615083 (= call!615086 call!615088)))

(declare-fun b!6779824 () Bool)

(assert (=> b!6779824 (= e!4092799 call!615086)))

(declare-fun bm!615084 () Bool)

(declare-fun c!1259453 () Bool)

(assert (=> bm!615084 (= call!615090 ($colon$colon!2410 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444367)))) (ite (or c!1259453 c!1259456) (regTwo!33714 (h!72427 (exprs!6485 lt!2444367))) (h!72427 (exprs!6485 lt!2444367)))))))

(declare-fun d!2130082 () Bool)

(declare-fun c!1259454 () Bool)

(assert (=> d!2130082 (= c!1259454 (and ((_ is ElementMatch!16601) (h!72427 (exprs!6485 lt!2444367))) (= (c!1258869 (h!72427 (exprs!6485 lt!2444367))) (h!72426 s!2326))))))

(declare-fun e!4092803 () (InoxSet Context!11970))

(assert (=> d!2130082 (= (derivationStepZipperDown!1829 (h!72427 (exprs!6485 lt!2444367)) (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (h!72426 s!2326)) e!4092803)))

(declare-fun b!6779825 () Bool)

(declare-fun c!1259455 () Bool)

(assert (=> b!6779825 (= c!1259455 ((_ is Star!16601) (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun e!4092800 () (InoxSet Context!11970))

(assert (=> b!6779825 (= e!4092799 e!4092800)))

(declare-fun call!615089 () (InoxSet Context!11970))

(declare-fun c!1259452 () Bool)

(declare-fun bm!615085 () Bool)

(assert (=> bm!615085 (= call!615089 (derivationStepZipperDown!1829 (ite c!1259452 (regTwo!33715 (h!72427 (exprs!6485 lt!2444367))) (regOne!33714 (h!72427 (exprs!6485 lt!2444367)))) (ite c!1259452 (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (Context!11971 call!615090)) (h!72426 s!2326)))))

(declare-fun b!6779826 () Bool)

(assert (=> b!6779826 (= e!4092803 (store ((as const (Array Context!11970 Bool)) false) (Context!11971 (t!379816 (exprs!6485 lt!2444367))) true))))

(declare-fun b!6779827 () Bool)

(declare-fun e!4092804 () (InoxSet Context!11970))

(assert (=> b!6779827 (= e!4092804 ((_ map or) call!615091 call!615089))))

(declare-fun b!6779828 () Bool)

(assert (=> b!6779828 (= e!4092800 call!615086)))

(declare-fun b!6779829 () Bool)

(assert (=> b!6779829 (= e!4092803 e!4092804)))

(assert (=> b!6779829 (= c!1259452 ((_ is Union!16601) (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun b!6779830 () Bool)

(assert (=> b!6779830 (= e!4092801 ((_ map or) call!615089 call!615088))))

(declare-fun b!6779831 () Bool)

(assert (=> b!6779831 (= e!4092800 ((as const (Array Context!11970 Bool)) false))))

(declare-fun b!6779832 () Bool)

(declare-fun e!4092802 () Bool)

(assert (=> b!6779832 (= c!1259453 e!4092802)))

(declare-fun res!2771340 () Bool)

(assert (=> b!6779832 (=> (not res!2771340) (not e!4092802))))

(assert (=> b!6779832 (= res!2771340 ((_ is Concat!25446) (h!72427 (exprs!6485 lt!2444367))))))

(assert (=> b!6779832 (= e!4092804 e!4092801)))

(declare-fun b!6779833 () Bool)

(assert (=> b!6779833 (= e!4092802 (nullable!6580 (regOne!33714 (h!72427 (exprs!6485 lt!2444367)))))))

(declare-fun bm!615086 () Bool)

(assert (=> bm!615086 (= call!615091 (derivationStepZipperDown!1829 (ite c!1259452 (regOne!33715 (h!72427 (exprs!6485 lt!2444367))) (ite c!1259453 (regTwo!33714 (h!72427 (exprs!6485 lt!2444367))) (ite c!1259456 (regOne!33714 (h!72427 (exprs!6485 lt!2444367))) (reg!16930 (h!72427 (exprs!6485 lt!2444367)))))) (ite (or c!1259452 c!1259453) (Context!11971 (t!379816 (exprs!6485 lt!2444367))) (Context!11971 call!615087)) (h!72426 s!2326)))))

(assert (= (and d!2130082 c!1259454) b!6779826))

(assert (= (and d!2130082 (not c!1259454)) b!6779829))

(assert (= (and b!6779829 c!1259452) b!6779827))

(assert (= (and b!6779829 (not c!1259452)) b!6779832))

(assert (= (and b!6779832 res!2771340) b!6779833))

(assert (= (and b!6779832 c!1259453) b!6779830))

(assert (= (and b!6779832 (not c!1259453)) b!6779823))

(assert (= (and b!6779823 c!1259456) b!6779824))

(assert (= (and b!6779823 (not c!1259456)) b!6779825))

(assert (= (and b!6779825 c!1259455) b!6779828))

(assert (= (and b!6779825 (not c!1259455)) b!6779831))

(assert (= (or b!6779824 b!6779828) bm!615081))

(assert (= (or b!6779824 b!6779828) bm!615083))

(assert (= (or b!6779830 bm!615081) bm!615084))

(assert (= (or b!6779830 bm!615083) bm!615082))

(assert (= (or b!6779827 b!6779830) bm!615085))

(assert (= (or b!6779827 bm!615082) bm!615086))

(declare-fun m!7528790 () Bool)

(assert (=> bm!615086 m!7528790))

(declare-fun m!7528792 () Bool)

(assert (=> bm!615084 m!7528792))

(declare-fun m!7528794 () Bool)

(assert (=> bm!615085 m!7528794))

(declare-fun m!7528796 () Bool)

(assert (=> b!6779833 m!7528796))

(declare-fun m!7528798 () Bool)

(assert (=> b!6779826 m!7528798))

(assert (=> bm!614827 d!2130082))

(declare-fun d!2130084 () Bool)

(assert (=> d!2130084 (= (nullable!6580 (regOne!33714 (reg!16930 r!7292))) (nullableFct!2486 (regOne!33714 (reg!16930 r!7292))))))

(declare-fun bs!1805663 () Bool)

(assert (= bs!1805663 d!2130084))

(declare-fun m!7528800 () Bool)

(assert (=> bs!1805663 m!7528800))

(assert (=> b!6778448 d!2130084))

(assert (=> bm!614828 d!2129772))

(declare-fun d!2130086 () Bool)

(declare-fun c!1259457 () Bool)

(assert (=> d!2130086 (= c!1259457 (isEmpty!38337 (tail!12699 (_1!36879 lt!2444385))))))

(declare-fun e!4092805 () Bool)

(assert (=> d!2130086 (= (matchZipper!2587 (derivationStepZipper!2545 lt!2444388 (head!13614 (_1!36879 lt!2444385))) (tail!12699 (_1!36879 lt!2444385))) e!4092805)))

(declare-fun b!6779834 () Bool)

(assert (=> b!6779834 (= e!4092805 (nullableZipper!2308 (derivationStepZipper!2545 lt!2444388 (head!13614 (_1!36879 lt!2444385)))))))

(declare-fun b!6779835 () Bool)

(assert (=> b!6779835 (= e!4092805 (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444388 (head!13614 (_1!36879 lt!2444385))) (head!13614 (tail!12699 (_1!36879 lt!2444385)))) (tail!12699 (tail!12699 (_1!36879 lt!2444385)))))))

(assert (= (and d!2130086 c!1259457) b!6779834))

(assert (= (and d!2130086 (not c!1259457)) b!6779835))

(assert (=> d!2130086 m!7527370))

(assert (=> d!2130086 m!7527372))

(assert (=> b!6779834 m!7527516))

(declare-fun m!7528802 () Bool)

(assert (=> b!6779834 m!7528802))

(assert (=> b!6779835 m!7527370))

(assert (=> b!6779835 m!7528658))

(assert (=> b!6779835 m!7527516))

(assert (=> b!6779835 m!7528658))

(declare-fun m!7528804 () Bool)

(assert (=> b!6779835 m!7528804))

(assert (=> b!6779835 m!7527370))

(assert (=> b!6779835 m!7528654))

(assert (=> b!6779835 m!7528804))

(assert (=> b!6779835 m!7528654))

(declare-fun m!7528806 () Bool)

(assert (=> b!6779835 m!7528806))

(assert (=> b!6778517 d!2130086))

(declare-fun bs!1805664 () Bool)

(declare-fun d!2130088 () Bool)

(assert (= bs!1805664 (and d!2130088 d!2129468)))

(declare-fun lambda!381555 () Int)

(assert (=> bs!1805664 (= (= (head!13614 (_1!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381555 lambda!381470))))

(declare-fun bs!1805665 () Bool)

(assert (= bs!1805665 (and d!2130088 b!6777699)))

(assert (=> bs!1805665 (= (= (head!13614 (_1!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381555 lambda!381389))))

(declare-fun bs!1805666 () Bool)

(assert (= bs!1805666 (and d!2130088 d!2129902)))

(assert (=> bs!1805666 (= (= (head!13614 (_1!36879 lt!2444385)) (head!13614 (t!379815 s!2326))) (= lambda!381555 lambda!381523))))

(declare-fun bs!1805667 () Bool)

(assert (= bs!1805667 (and d!2130088 d!2129354)))

(assert (=> bs!1805667 (= (= (head!13614 (_1!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381555 lambda!381433))))

(declare-fun bs!1805668 () Bool)

(assert (= bs!1805668 (and d!2130088 d!2129992)))

(assert (=> bs!1805668 (= (= (head!13614 (_1!36879 lt!2444385)) (head!13614 (_2!36879 lt!2444385))) (= lambda!381555 lambda!381544))))

(declare-fun bs!1805669 () Bool)

(assert (= bs!1805669 (and d!2130088 d!2129440)))

(assert (=> bs!1805669 (= (= (head!13614 (_1!36879 lt!2444385)) (h!72426 s!2326)) (= lambda!381555 lambda!381459))))

(assert (=> d!2130088 true))

(assert (=> d!2130088 (= (derivationStepZipper!2545 lt!2444388 (head!13614 (_1!36879 lt!2444385))) (flatMap!2082 lt!2444388 lambda!381555))))

(declare-fun bs!1805670 () Bool)

(assert (= bs!1805670 d!2130088))

(declare-fun m!7528808 () Bool)

(assert (=> bs!1805670 m!7528808))

(assert (=> b!6778517 d!2130088))

(assert (=> b!6778517 d!2129666))

(assert (=> b!6778517 d!2129768))

(declare-fun d!2130090 () Bool)

(declare-fun lt!2444584 () Int)

(assert (=> d!2130090 (>= lt!2444584 0)))

(declare-fun e!4092808 () Int)

(assert (=> d!2130090 (= lt!2444584 e!4092808)))

(declare-fun c!1259460 () Bool)

(assert (=> d!2130090 (= c!1259460 ((_ is Nil!65978) lt!2444494))))

(assert (=> d!2130090 (= (size!40634 lt!2444494) lt!2444584)))

(declare-fun b!6779840 () Bool)

(assert (=> b!6779840 (= e!4092808 0)))

(declare-fun b!6779841 () Bool)

(assert (=> b!6779841 (= e!4092808 (+ 1 (size!40634 (t!379815 lt!2444494))))))

(assert (= (and d!2130090 c!1259460) b!6779840))

(assert (= (and d!2130090 (not c!1259460)) b!6779841))

(declare-fun m!7528810 () Bool)

(assert (=> b!6779841 m!7528810))

(assert (=> b!6778369 d!2130090))

(declare-fun d!2130092 () Bool)

(declare-fun lt!2444585 () Int)

(assert (=> d!2130092 (>= lt!2444585 0)))

(declare-fun e!4092809 () Int)

(assert (=> d!2130092 (= lt!2444585 e!4092809)))

(declare-fun c!1259461 () Bool)

(assert (=> d!2130092 (= c!1259461 ((_ is Nil!65978) (_1!36879 lt!2444385)))))

(assert (=> d!2130092 (= (size!40634 (_1!36879 lt!2444385)) lt!2444585)))

(declare-fun b!6779842 () Bool)

(assert (=> b!6779842 (= e!4092809 0)))

(declare-fun b!6779843 () Bool)

(assert (=> b!6779843 (= e!4092809 (+ 1 (size!40634 (t!379815 (_1!36879 lt!2444385)))))))

(assert (= (and d!2130092 c!1259461) b!6779842))

(assert (= (and d!2130092 (not c!1259461)) b!6779843))

(assert (=> b!6779843 m!7528586))

(assert (=> b!6778369 d!2130092))

(declare-fun d!2130094 () Bool)

(declare-fun lt!2444586 () Int)

(assert (=> d!2130094 (>= lt!2444586 0)))

(declare-fun e!4092810 () Int)

(assert (=> d!2130094 (= lt!2444586 e!4092810)))

(declare-fun c!1259462 () Bool)

(assert (=> d!2130094 (= c!1259462 ((_ is Nil!65978) (_2!36879 lt!2444385)))))

(assert (=> d!2130094 (= (size!40634 (_2!36879 lt!2444385)) lt!2444586)))

(declare-fun b!6779844 () Bool)

(assert (=> b!6779844 (= e!4092810 0)))

(declare-fun b!6779845 () Bool)

(assert (=> b!6779845 (= e!4092810 (+ 1 (size!40634 (t!379815 (_2!36879 lt!2444385)))))))

(assert (= (and d!2130094 c!1259462) b!6779844))

(assert (= (and d!2130094 (not c!1259462)) b!6779845))

(declare-fun m!7528812 () Bool)

(assert (=> b!6779845 m!7528812))

(assert (=> b!6778369 d!2130094))

(assert (=> b!6778488 d!2129282))

(declare-fun bs!1805671 () Bool)

(declare-fun d!2130096 () Bool)

(assert (= bs!1805671 (and d!2130096 d!2129456)))

(declare-fun lambda!381556 () Int)

(assert (=> bs!1805671 (= lambda!381556 lambda!381462)))

(declare-fun bs!1805672 () Bool)

(assert (= bs!1805672 (and d!2130096 d!2129460)))

(assert (=> bs!1805672 (= lambda!381556 lambda!381466)))

(declare-fun bs!1805673 () Bool)

(assert (= bs!1805673 (and d!2130096 d!2129462)))

(assert (=> bs!1805673 (= lambda!381556 lambda!381469)))

(declare-fun bs!1805674 () Bool)

(assert (= bs!1805674 (and d!2130096 d!2129778)))

(assert (=> bs!1805674 (= lambda!381556 lambda!381499)))

(declare-fun bs!1805675 () Bool)

(assert (= bs!1805675 (and d!2130096 d!2129282)))

(assert (=> bs!1805675 (= lambda!381556 lambda!381401)))

(declare-fun bs!1805676 () Bool)

(assert (= bs!1805676 (and d!2130096 d!2129960)))

(assert (=> bs!1805676 (= lambda!381556 lambda!381531)))

(declare-fun bs!1805677 () Bool)

(assert (= bs!1805677 (and d!2130096 d!2129866)))

(assert (=> bs!1805677 (= lambda!381556 lambda!381517)))

(declare-fun bs!1805678 () Bool)

(assert (= bs!1805678 (and d!2130096 d!2130060)))

(assert (=> bs!1805678 (= lambda!381556 lambda!381548)))

(declare-fun bs!1805679 () Bool)

(assert (= bs!1805679 (and d!2130096 d!2129864)))

(assert (=> bs!1805679 (= lambda!381556 lambda!381514)))

(declare-fun bs!1805680 () Bool)

(assert (= bs!1805680 (and d!2130096 d!2129480)))

(assert (=> bs!1805680 (= lambda!381556 lambda!381471)))

(declare-fun bs!1805681 () Bool)

(assert (= bs!1805681 (and d!2130096 d!2129966)))

(assert (=> bs!1805681 (= lambda!381556 lambda!381532)))

(declare-fun bs!1805682 () Bool)

(assert (= bs!1805682 (and d!2130096 d!2129974)))

(assert (=> bs!1805682 (= lambda!381556 lambda!381533)))

(declare-fun bs!1805683 () Bool)

(assert (= bs!1805683 (and d!2130096 d!2129458)))

(assert (=> bs!1805683 (= lambda!381556 lambda!381463)))

(declare-fun bs!1805684 () Bool)

(assert (= bs!1805684 (and d!2130096 d!2130042)))

(assert (=> bs!1805684 (= lambda!381556 lambda!381545)))

(declare-fun lt!2444587 () List!66103)

(assert (=> d!2130096 (forall!15793 lt!2444587 lambda!381556)))

(declare-fun e!4092811 () List!66103)

(assert (=> d!2130096 (= lt!2444587 e!4092811)))

(declare-fun c!1259463 () Bool)

(assert (=> d!2130096 (= c!1259463 ((_ is Cons!65980) (t!379817 zl!343)))))

(assert (=> d!2130096 (= (unfocusZipperList!2022 (t!379817 zl!343)) lt!2444587)))

(declare-fun b!6779846 () Bool)

(assert (=> b!6779846 (= e!4092811 (Cons!65979 (generalisedConcat!2198 (exprs!6485 (h!72428 (t!379817 zl!343)))) (unfocusZipperList!2022 (t!379817 (t!379817 zl!343)))))))

(declare-fun b!6779847 () Bool)

(assert (=> b!6779847 (= e!4092811 Nil!65979)))

(assert (= (and d!2130096 c!1259463) b!6779846))

(assert (= (and d!2130096 (not c!1259463)) b!6779847))

(declare-fun m!7528814 () Bool)

(assert (=> d!2130096 m!7528814))

(declare-fun m!7528816 () Bool)

(assert (=> b!6779846 m!7528816))

(declare-fun m!7528818 () Bool)

(assert (=> b!6779846 m!7528818))

(assert (=> b!6778488 d!2130096))

(declare-fun d!2130098 () Bool)

(assert (=> d!2130098 (= (nullable!6580 (h!72427 (exprs!6485 (h!72428 zl!343)))) (nullableFct!2486 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun bs!1805685 () Bool)

(assert (= bs!1805685 d!2130098))

(declare-fun m!7528820 () Bool)

(assert (=> bs!1805685 m!7528820))

(assert (=> b!6778436 d!2130098))

(declare-fun d!2130100 () Bool)

(declare-fun res!2771341 () Bool)

(declare-fun e!4092812 () Bool)

(assert (=> d!2130100 (=> res!2771341 e!4092812)))

(assert (=> d!2130100 (= res!2771341 ((_ is Nil!65979) lt!2444507))))

(assert (=> d!2130100 (= (forall!15793 lt!2444507 lambda!381469) e!4092812)))

(declare-fun b!6779848 () Bool)

(declare-fun e!4092813 () Bool)

(assert (=> b!6779848 (= e!4092812 e!4092813)))

(declare-fun res!2771342 () Bool)

(assert (=> b!6779848 (=> (not res!2771342) (not e!4092813))))

(assert (=> b!6779848 (= res!2771342 (dynLambda!26328 lambda!381469 (h!72427 lt!2444507)))))

(declare-fun b!6779849 () Bool)

(assert (=> b!6779849 (= e!4092813 (forall!15793 (t!379816 lt!2444507) lambda!381469))))

(assert (= (and d!2130100 (not res!2771341)) b!6779848))

(assert (= (and b!6779848 res!2771342) b!6779849))

(declare-fun b_lambda!255285 () Bool)

(assert (=> (not b_lambda!255285) (not b!6779848)))

(declare-fun m!7528822 () Bool)

(assert (=> b!6779848 m!7528822))

(declare-fun m!7528824 () Bool)

(assert (=> b!6779849 m!7528824))

(assert (=> d!2129462 d!2130100))

(assert (=> b!6778070 d!2129700))

(assert (=> b!6778070 d!2129702))

(assert (=> d!2129418 d!2129682))

(declare-fun b!6779850 () Bool)

(declare-fun e!4092814 () Bool)

(declare-fun e!4092817 () Bool)

(assert (=> b!6779850 (= e!4092814 e!4092817)))

(declare-fun c!1259466 () Bool)

(assert (=> b!6779850 (= c!1259466 ((_ is EmptyLang!16601) (reg!16930 r!7292)))))

(declare-fun b!6779851 () Bool)

(declare-fun res!2771343 () Bool)

(declare-fun e!4092815 () Bool)

(assert (=> b!6779851 (=> res!2771343 e!4092815)))

(declare-fun e!4092818 () Bool)

(assert (=> b!6779851 (= res!2771343 e!4092818)))

(declare-fun res!2771349 () Bool)

(assert (=> b!6779851 (=> (not res!2771349) (not e!4092818))))

(declare-fun lt!2444588 () Bool)

(assert (=> b!6779851 (= res!2771349 lt!2444588)))

(declare-fun b!6779852 () Bool)

(declare-fun e!4092820 () Bool)

(assert (=> b!6779852 (= e!4092815 e!4092820)))

(declare-fun res!2771345 () Bool)

(assert (=> b!6779852 (=> (not res!2771345) (not e!4092820))))

(assert (=> b!6779852 (= res!2771345 (not lt!2444588))))

(declare-fun b!6779853 () Bool)

(declare-fun res!2771346 () Bool)

(assert (=> b!6779853 (=> (not res!2771346) (not e!4092818))))

(declare-fun call!615092 () Bool)

(assert (=> b!6779853 (= res!2771346 (not call!615092))))

(declare-fun b!6779854 () Bool)

(assert (=> b!6779854 (= e!4092817 (not lt!2444588))))

(declare-fun b!6779855 () Bool)

(assert (=> b!6779855 (= e!4092814 (= lt!2444588 call!615092))))

(declare-fun b!6779856 () Bool)

(declare-fun res!2771347 () Bool)

(assert (=> b!6779856 (=> res!2771347 e!4092815)))

(assert (=> b!6779856 (= res!2771347 (not ((_ is ElementMatch!16601) (reg!16930 r!7292))))))

(assert (=> b!6779856 (= e!4092817 e!4092815)))

(declare-fun b!6779857 () Bool)

(declare-fun e!4092816 () Bool)

(assert (=> b!6779857 (= e!4092816 (not (= (head!13614 Nil!65978) (c!1258869 (reg!16930 r!7292)))))))

(declare-fun b!6779858 () Bool)

(declare-fun res!2771344 () Bool)

(assert (=> b!6779858 (=> res!2771344 e!4092816)))

(assert (=> b!6779858 (= res!2771344 (not (isEmpty!38337 (tail!12699 Nil!65978))))))

(declare-fun b!6779859 () Bool)

(assert (=> b!6779859 (= e!4092820 e!4092816)))

(declare-fun res!2771350 () Bool)

(assert (=> b!6779859 (=> res!2771350 e!4092816)))

(assert (=> b!6779859 (= res!2771350 call!615092)))

(declare-fun b!6779860 () Bool)

(declare-fun e!4092819 () Bool)

(assert (=> b!6779860 (= e!4092819 (matchR!8784 (derivativeStep!5265 (reg!16930 r!7292) (head!13614 Nil!65978)) (tail!12699 Nil!65978)))))

(declare-fun b!6779861 () Bool)

(assert (=> b!6779861 (= e!4092819 (nullable!6580 (reg!16930 r!7292)))))

(declare-fun bm!615087 () Bool)

(assert (=> bm!615087 (= call!615092 (isEmpty!38337 Nil!65978))))

(declare-fun d!2130102 () Bool)

(assert (=> d!2130102 e!4092814))

(declare-fun c!1259464 () Bool)

(assert (=> d!2130102 (= c!1259464 ((_ is EmptyExpr!16601) (reg!16930 r!7292)))))

(assert (=> d!2130102 (= lt!2444588 e!4092819)))

(declare-fun c!1259465 () Bool)

(assert (=> d!2130102 (= c!1259465 (isEmpty!38337 Nil!65978))))

(assert (=> d!2130102 (validRegex!8337 (reg!16930 r!7292))))

(assert (=> d!2130102 (= (matchR!8784 (reg!16930 r!7292) Nil!65978) lt!2444588)))

(declare-fun b!6779862 () Bool)

(assert (=> b!6779862 (= e!4092818 (= (head!13614 Nil!65978) (c!1258869 (reg!16930 r!7292))))))

(declare-fun b!6779863 () Bool)

(declare-fun res!2771348 () Bool)

(assert (=> b!6779863 (=> (not res!2771348) (not e!4092818))))

(assert (=> b!6779863 (= res!2771348 (isEmpty!38337 (tail!12699 Nil!65978)))))

(assert (= (and d!2130102 c!1259465) b!6779861))

(assert (= (and d!2130102 (not c!1259465)) b!6779860))

(assert (= (and d!2130102 c!1259464) b!6779855))

(assert (= (and d!2130102 (not c!1259464)) b!6779850))

(assert (= (and b!6779850 c!1259466) b!6779854))

(assert (= (and b!6779850 (not c!1259466)) b!6779856))

(assert (= (and b!6779856 (not res!2771347)) b!6779851))

(assert (= (and b!6779851 res!2771349) b!6779853))

(assert (= (and b!6779853 res!2771346) b!6779863))

(assert (= (and b!6779863 res!2771348) b!6779862))

(assert (= (and b!6779851 (not res!2771343)) b!6779852))

(assert (= (and b!6779852 res!2771345) b!6779859))

(assert (= (and b!6779859 (not res!2771350)) b!6779858))

(assert (= (and b!6779858 (not res!2771344)) b!6779857))

(assert (= (or b!6779855 b!6779859 b!6779853) bm!615087))

(declare-fun m!7528826 () Bool)

(assert (=> b!6779858 m!7528826))

(assert (=> b!6779858 m!7528826))

(declare-fun m!7528828 () Bool)

(assert (=> b!6779858 m!7528828))

(declare-fun m!7528830 () Bool)

(assert (=> b!6779857 m!7528830))

(assert (=> b!6779861 m!7527376))

(assert (=> b!6779862 m!7528830))

(assert (=> b!6779860 m!7528830))

(assert (=> b!6779860 m!7528830))

(declare-fun m!7528832 () Bool)

(assert (=> b!6779860 m!7528832))

(assert (=> b!6779860 m!7528826))

(assert (=> b!6779860 m!7528832))

(assert (=> b!6779860 m!7528826))

(declare-fun m!7528834 () Bool)

(assert (=> b!6779860 m!7528834))

(declare-fun m!7528836 () Bool)

(assert (=> d!2130102 m!7528836))

(assert (=> d!2130102 m!7527282))

(assert (=> bm!615087 m!7528836))

(assert (=> b!6779863 m!7528826))

(assert (=> b!6779863 m!7528826))

(assert (=> b!6779863 m!7528828))

(assert (=> d!2129418 d!2130102))

(assert (=> d!2129418 d!2129706))

(assert (=> b!6778536 d!2129680))

(declare-fun d!2130104 () Bool)

(assert (=> d!2130104 (= (nullable!6580 lt!2444369) (nullableFct!2486 lt!2444369))))

(declare-fun bs!1805686 () Bool)

(assert (= bs!1805686 d!2130104))

(declare-fun m!7528838 () Bool)

(assert (=> bs!1805686 m!7528838))

(assert (=> b!6778540 d!2130104))

(declare-fun d!2130106 () Bool)

(declare-fun c!1259467 () Bool)

(assert (=> d!2130106 (= c!1259467 (isEmpty!38337 (tail!12699 s!2326)))))

(declare-fun e!4092821 () Bool)

(assert (=> d!2130106 (= (matchZipper!2587 (derivationStepZipper!2545 lt!2444374 (head!13614 s!2326)) (tail!12699 s!2326)) e!4092821)))

(declare-fun b!6779864 () Bool)

(assert (=> b!6779864 (= e!4092821 (nullableZipper!2308 (derivationStepZipper!2545 lt!2444374 (head!13614 s!2326))))))

(declare-fun b!6779865 () Bool)

(assert (=> b!6779865 (= e!4092821 (matchZipper!2587 (derivationStepZipper!2545 (derivationStepZipper!2545 lt!2444374 (head!13614 s!2326)) (head!13614 (tail!12699 s!2326))) (tail!12699 (tail!12699 s!2326))))))

(assert (= (and d!2130106 c!1259467) b!6779864))

(assert (= (and d!2130106 (not c!1259467)) b!6779865))

(assert (=> d!2130106 m!7527126))

(assert (=> d!2130106 m!7527128))

(assert (=> b!6779864 m!7527154))

(declare-fun m!7528840 () Bool)

(assert (=> b!6779864 m!7528840))

(assert (=> b!6779865 m!7527126))

(assert (=> b!6779865 m!7528594))

(assert (=> b!6779865 m!7527154))

(assert (=> b!6779865 m!7528594))

(declare-fun m!7528842 () Bool)

(assert (=> b!6779865 m!7528842))

(assert (=> b!6779865 m!7527126))

(assert (=> b!6779865 m!7528590))

(assert (=> b!6779865 m!7528842))

(assert (=> b!6779865 m!7528590))

(declare-fun m!7528844 () Bool)

(assert (=> b!6779865 m!7528844))

(assert (=> b!6778135 d!2130106))

(declare-fun bs!1805687 () Bool)

(declare-fun d!2130108 () Bool)

(assert (= bs!1805687 (and d!2130108 d!2129468)))

(declare-fun lambda!381557 () Int)

(assert (=> bs!1805687 (= (= (head!13614 s!2326) (h!72426 s!2326)) (= lambda!381557 lambda!381470))))

(declare-fun bs!1805688 () Bool)

(assert (= bs!1805688 (and d!2130108 b!6777699)))

(assert (=> bs!1805688 (= (= (head!13614 s!2326) (h!72426 s!2326)) (= lambda!381557 lambda!381389))))

(declare-fun bs!1805689 () Bool)

(assert (= bs!1805689 (and d!2130108 d!2130088)))

(assert (=> bs!1805689 (= (= (head!13614 s!2326) (head!13614 (_1!36879 lt!2444385))) (= lambda!381557 lambda!381555))))

(declare-fun bs!1805690 () Bool)

(assert (= bs!1805690 (and d!2130108 d!2129902)))

(assert (=> bs!1805690 (= (= (head!13614 s!2326) (head!13614 (t!379815 s!2326))) (= lambda!381557 lambda!381523))))

(declare-fun bs!1805691 () Bool)

(assert (= bs!1805691 (and d!2130108 d!2129354)))

(assert (=> bs!1805691 (= (= (head!13614 s!2326) (h!72426 s!2326)) (= lambda!381557 lambda!381433))))

(declare-fun bs!1805692 () Bool)

(assert (= bs!1805692 (and d!2130108 d!2129992)))

(assert (=> bs!1805692 (= (= (head!13614 s!2326) (head!13614 (_2!36879 lt!2444385))) (= lambda!381557 lambda!381544))))

(declare-fun bs!1805693 () Bool)

(assert (= bs!1805693 (and d!2130108 d!2129440)))

(assert (=> bs!1805693 (= (= (head!13614 s!2326) (h!72426 s!2326)) (= lambda!381557 lambda!381459))))

(assert (=> d!2130108 true))

(assert (=> d!2130108 (= (derivationStepZipper!2545 lt!2444374 (head!13614 s!2326)) (flatMap!2082 lt!2444374 lambda!381557))))

(declare-fun bs!1805694 () Bool)

(assert (= bs!1805694 d!2130108))

(declare-fun m!7528846 () Bool)

(assert (=> bs!1805694 m!7528846))

(assert (=> b!6778135 d!2130108))

(assert (=> b!6778135 d!2129680))

(assert (=> b!6778135 d!2129702))

(declare-fun d!2130110 () Bool)

(assert (=> d!2130110 true))

(declare-fun setRes!46369 () Bool)

(assert (=> d!2130110 setRes!46369))

(declare-fun condSetEmpty!46369 () Bool)

(declare-fun res!2771351 () (InoxSet Context!11970))

(assert (=> d!2130110 (= condSetEmpty!46369 (= res!2771351 ((as const (Array Context!11970 Bool)) false)))))

(assert (=> d!2130110 (= (choose!50484 lt!2444376 lambda!381389) res!2771351)))

(declare-fun setIsEmpty!46369 () Bool)

(assert (=> setIsEmpty!46369 setRes!46369))

(declare-fun setElem!46369 () Context!11970)

(declare-fun e!4092822 () Bool)

(declare-fun tp!1857607 () Bool)

(declare-fun setNonEmpty!46369 () Bool)

(assert (=> setNonEmpty!46369 (= setRes!46369 (and tp!1857607 (inv!84749 setElem!46369) e!4092822))))

(declare-fun setRest!46369 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46369 (= res!2771351 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46369 true) setRest!46369))))

(declare-fun b!6779866 () Bool)

(declare-fun tp!1857606 () Bool)

(assert (=> b!6779866 (= e!4092822 tp!1857606)))

(assert (= (and d!2130110 condSetEmpty!46369) setIsEmpty!46369))

(assert (= (and d!2130110 (not condSetEmpty!46369)) setNonEmpty!46369))

(assert (= setNonEmpty!46369 b!6779866))

(declare-fun m!7528848 () Bool)

(assert (=> setNonEmpty!46369 m!7528848))

(assert (=> d!2129474 d!2130110))

(declare-fun b!6779867 () Bool)

(declare-fun e!4092823 () Bool)

(declare-fun call!615094 () Bool)

(assert (=> b!6779867 (= e!4092823 call!615094)))

(declare-fun d!2130112 () Bool)

(declare-fun res!2771354 () Bool)

(declare-fun e!4092824 () Bool)

(assert (=> d!2130112 (=> res!2771354 e!4092824)))

(assert (=> d!2130112 (= res!2771354 ((_ is ElementMatch!16601) (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))

(assert (=> d!2130112 (= (validRegex!8337 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))) e!4092824)))

(declare-fun b!6779868 () Bool)

(declare-fun e!4092829 () Bool)

(assert (=> b!6779868 (= e!4092829 e!4092823)))

(declare-fun res!2771356 () Bool)

(assert (=> b!6779868 (= res!2771356 (not (nullable!6580 (reg!16930 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))))

(assert (=> b!6779868 (=> (not res!2771356) (not e!4092823))))

(declare-fun c!1259468 () Bool)

(declare-fun bm!615088 () Bool)

(declare-fun c!1259469 () Bool)

(assert (=> bm!615088 (= call!615094 (validRegex!8337 (ite c!1259468 (reg!16930 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))) (ite c!1259469 (regOne!33715 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))) (regOne!33714 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292)))))))))

(declare-fun bm!615089 () Bool)

(declare-fun call!615093 () Bool)

(assert (=> bm!615089 (= call!615093 call!615094)))

(declare-fun b!6779869 () Bool)

(declare-fun res!2771353 () Bool)

(declare-fun e!4092825 () Bool)

(assert (=> b!6779869 (=> (not res!2771353) (not e!4092825))))

(assert (=> b!6779869 (= res!2771353 call!615093)))

(declare-fun e!4092826 () Bool)

(assert (=> b!6779869 (= e!4092826 e!4092825)))

(declare-fun b!6779870 () Bool)

(declare-fun res!2771355 () Bool)

(declare-fun e!4092828 () Bool)

(assert (=> b!6779870 (=> res!2771355 e!4092828)))

(assert (=> b!6779870 (= res!2771355 (not ((_ is Concat!25446) (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292)))))))

(assert (=> b!6779870 (= e!4092826 e!4092828)))

(declare-fun b!6779871 () Bool)

(assert (=> b!6779871 (= e!4092824 e!4092829)))

(assert (=> b!6779871 (= c!1259468 ((_ is Star!16601) (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))

(declare-fun bm!615090 () Bool)

(declare-fun call!615095 () Bool)

(assert (=> bm!615090 (= call!615095 (validRegex!8337 (ite c!1259469 (regTwo!33715 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))) (regTwo!33714 (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))))

(declare-fun b!6779872 () Bool)

(assert (=> b!6779872 (= e!4092825 call!615095)))

(declare-fun b!6779873 () Bool)

(declare-fun e!4092827 () Bool)

(assert (=> b!6779873 (= e!4092827 call!615095)))

(declare-fun b!6779874 () Bool)

(assert (=> b!6779874 (= e!4092829 e!4092826)))

(assert (=> b!6779874 (= c!1259469 ((_ is Union!16601) (ite c!1259105 (regTwo!33715 r!7292) (regTwo!33714 r!7292))))))

(declare-fun b!6779875 () Bool)

(assert (=> b!6779875 (= e!4092828 e!4092827)))

(declare-fun res!2771352 () Bool)

(assert (=> b!6779875 (=> (not res!2771352) (not e!4092827))))

(assert (=> b!6779875 (= res!2771352 call!615093)))

(assert (= (and d!2130112 (not res!2771354)) b!6779871))

(assert (= (and b!6779871 c!1259468) b!6779868))

(assert (= (and b!6779871 (not c!1259468)) b!6779874))

(assert (= (and b!6779868 res!2771356) b!6779867))

(assert (= (and b!6779874 c!1259469) b!6779869))

(assert (= (and b!6779874 (not c!1259469)) b!6779870))

(assert (= (and b!6779869 res!2771353) b!6779872))

(assert (= (and b!6779870 (not res!2771355)) b!6779875))

(assert (= (and b!6779875 res!2771352) b!6779873))

(assert (= (or b!6779872 b!6779873) bm!615090))

(assert (= (or b!6779869 b!6779875) bm!615089))

(assert (= (or b!6779867 bm!615089) bm!615088))

(declare-fun m!7528850 () Bool)

(assert (=> b!6779868 m!7528850))

(declare-fun m!7528852 () Bool)

(assert (=> bm!615088 m!7528852))

(declare-fun m!7528854 () Bool)

(assert (=> bm!615090 m!7528854))

(assert (=> bm!614840 d!2130112))

(declare-fun b!6779876 () Bool)

(declare-fun e!4092831 () (InoxSet Context!11970))

(assert (=> b!6779876 (= e!4092831 ((as const (Array Context!11970 Bool)) false))))

(declare-fun d!2130114 () Bool)

(declare-fun c!1259470 () Bool)

(declare-fun e!4092830 () Bool)

(assert (=> d!2130114 (= c!1259470 e!4092830)))

(declare-fun res!2771357 () Bool)

(assert (=> d!2130114 (=> (not res!2771357) (not e!4092830))))

(assert (=> d!2130114 (= res!2771357 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380))))))))

(declare-fun e!4092832 () (InoxSet Context!11970))

(assert (=> d!2130114 (= (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 lt!2444380))) (h!72426 s!2326)) e!4092832)))

(declare-fun b!6779877 () Bool)

(assert (=> b!6779877 (= e!4092832 e!4092831)))

(declare-fun c!1259471 () Bool)

(assert (=> b!6779877 (= c!1259471 ((_ is Cons!65979) (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380))))))))

(declare-fun b!6779878 () Bool)

(declare-fun call!615096 () (InoxSet Context!11970))

(assert (=> b!6779878 (= e!4092831 call!615096)))

(declare-fun b!6779879 () Bool)

(assert (=> b!6779879 (= e!4092830 (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380)))))))))

(declare-fun bm!615091 () Bool)

(assert (=> bm!615091 (= call!615096 (derivationStepZipperDown!1829 (h!72427 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380))))) (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380)))))) (h!72426 s!2326)))))

(declare-fun b!6779880 () Bool)

(assert (=> b!6779880 (= e!4092832 ((_ map or) call!615096 (derivationStepZipperUp!1755 (Context!11971 (t!379816 (exprs!6485 (Context!11971 (t!379816 (exprs!6485 lt!2444380)))))) (h!72426 s!2326))))))

(assert (= (and d!2130114 res!2771357) b!6779879))

(assert (= (and d!2130114 c!1259470) b!6779880))

(assert (= (and d!2130114 (not c!1259470)) b!6779877))

(assert (= (and b!6779877 c!1259471) b!6779878))

(assert (= (and b!6779877 (not c!1259471)) b!6779876))

(assert (= (or b!6779880 b!6779878) bm!615091))

(declare-fun m!7528856 () Bool)

(assert (=> b!6779879 m!7528856))

(declare-fun m!7528858 () Bool)

(assert (=> bm!615091 m!7528858))

(declare-fun m!7528860 () Bool)

(assert (=> b!6779880 m!7528860))

(assert (=> b!6778453 d!2130114))

(declare-fun d!2130116 () Bool)

(assert (=> d!2130116 (= (nullable!6580 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))) (nullableFct!2486 (h!72427 (exprs!6485 (Context!11971 (Cons!65979 r!7292 Nil!65979))))))))

(declare-fun bs!1805695 () Bool)

(assert (= bs!1805695 d!2130116))

(declare-fun m!7528862 () Bool)

(assert (=> bs!1805695 m!7528862))

(assert (=> b!6778431 d!2130116))

(declare-fun d!2130118 () Bool)

(declare-fun c!1259474 () Bool)

(assert (=> d!2130118 (= c!1259474 ((_ is Nil!65978) lt!2444494))))

(declare-fun e!4092835 () (InoxSet C!33472))

(assert (=> d!2130118 (= (content!12848 lt!2444494) e!4092835)))

(declare-fun b!6779885 () Bool)

(assert (=> b!6779885 (= e!4092835 ((as const (Array C!33472 Bool)) false))))

(declare-fun b!6779886 () Bool)

(assert (=> b!6779886 (= e!4092835 ((_ map or) (store ((as const (Array C!33472 Bool)) false) (h!72426 lt!2444494) true) (content!12848 (t!379815 lt!2444494))))))

(assert (= (and d!2130118 c!1259474) b!6779885))

(assert (= (and d!2130118 (not c!1259474)) b!6779886))

(declare-fun m!7528864 () Bool)

(assert (=> b!6779886 m!7528864))

(declare-fun m!7528866 () Bool)

(assert (=> b!6779886 m!7528866))

(assert (=> d!2129426 d!2130118))

(declare-fun d!2130120 () Bool)

(declare-fun c!1259475 () Bool)

(assert (=> d!2130120 (= c!1259475 ((_ is Nil!65978) (_1!36879 lt!2444385)))))

(declare-fun e!4092836 () (InoxSet C!33472))

(assert (=> d!2130120 (= (content!12848 (_1!36879 lt!2444385)) e!4092836)))

(declare-fun b!6779887 () Bool)

(assert (=> b!6779887 (= e!4092836 ((as const (Array C!33472 Bool)) false))))

(declare-fun b!6779888 () Bool)

(assert (=> b!6779888 (= e!4092836 ((_ map or) (store ((as const (Array C!33472 Bool)) false) (h!72426 (_1!36879 lt!2444385)) true) (content!12848 (t!379815 (_1!36879 lt!2444385)))))))

(assert (= (and d!2130120 c!1259475) b!6779887))

(assert (= (and d!2130120 (not c!1259475)) b!6779888))

(declare-fun m!7528868 () Bool)

(assert (=> b!6779888 m!7528868))

(assert (=> b!6779888 m!7528582))

(assert (=> d!2129426 d!2130120))

(declare-fun d!2130122 () Bool)

(declare-fun c!1259476 () Bool)

(assert (=> d!2130122 (= c!1259476 ((_ is Nil!65978) (_2!36879 lt!2444385)))))

(declare-fun e!4092837 () (InoxSet C!33472))

(assert (=> d!2130122 (= (content!12848 (_2!36879 lt!2444385)) e!4092837)))

(declare-fun b!6779889 () Bool)

(assert (=> b!6779889 (= e!4092837 ((as const (Array C!33472 Bool)) false))))

(declare-fun b!6779890 () Bool)

(assert (=> b!6779890 (= e!4092837 ((_ map or) (store ((as const (Array C!33472 Bool)) false) (h!72426 (_2!36879 lt!2444385)) true) (content!12848 (t!379815 (_2!36879 lt!2444385)))))))

(assert (= (and d!2130122 c!1259476) b!6779889))

(assert (= (and d!2130122 (not c!1259476)) b!6779890))

(declare-fun m!7528870 () Bool)

(assert (=> b!6779890 m!7528870))

(declare-fun m!7528872 () Bool)

(assert (=> b!6779890 m!7528872))

(assert (=> d!2129426 d!2130122))

(declare-fun bs!1805696 () Bool)

(declare-fun b!6779895 () Bool)

(assert (= bs!1805696 (and b!6779895 d!2129988)))

(declare-fun lambda!381558 () Int)

(assert (=> bs!1805696 (not (= lambda!381558 lambda!381542))))

(declare-fun bs!1805697 () Bool)

(assert (= bs!1805697 (and b!6779895 d!2129374)))

(assert (=> bs!1805697 (not (= lambda!381558 lambda!381448))))

(declare-fun bs!1805698 () Bool)

(assert (= bs!1805698 (and b!6779895 d!2130080)))

(assert (=> bs!1805698 (not (= lambda!381558 lambda!381553))))

(declare-fun bs!1805699 () Bool)

(assert (= bs!1805699 (and b!6779895 b!6779770)))

(assert (=> bs!1805699 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 (regTwo!33715 r!7292))) (= (regTwo!33715 lt!2444369) (regTwo!33715 r!7292))) (= lambda!381558 lambda!381546))))

(declare-fun bs!1805700 () Bool)

(assert (= bs!1805700 (and b!6779895 b!6778528)))

(assert (=> bs!1805700 (not (= lambda!381558 lambda!381473))))

(declare-fun bs!1805701 () Bool)

(assert (= bs!1805701 (and b!6779895 d!2129420)))

(assert (=> bs!1805701 (not (= lambda!381558 lambda!381458))))

(declare-fun bs!1805702 () Bool)

(assert (= bs!1805702 (and b!6779895 d!2129926)))

(assert (=> bs!1805702 (not (= lambda!381558 lambda!381528))))

(declare-fun bs!1805703 () Bool)

(assert (= bs!1805703 (and b!6779895 b!6777698)))

(assert (=> bs!1805703 (not (= lambda!381558 lambda!381388))))

(declare-fun bs!1805704 () Bool)

(assert (= bs!1805704 (and b!6779895 b!6778522)))

(assert (=> bs!1805704 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 lt!2444369)) (= (regTwo!33715 lt!2444369) lt!2444369)) (= lambda!381558 lambda!381472))))

(assert (=> bs!1805702 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33715 lt!2444369) (Star!16601 (reg!16930 r!7292)))) (= lambda!381558 lambda!381529))))

(declare-fun bs!1805705 () Bool)

(assert (= bs!1805705 (and b!6779895 b!6777987)))

(assert (=> bs!1805705 (not (= lambda!381558 lambda!381419))))

(declare-fun bs!1805706 () Bool)

(assert (= bs!1805706 (and b!6779895 d!2129396)))

(assert (=> bs!1805706 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33715 lt!2444369) (Star!16601 (reg!16930 r!7292)))) (= lambda!381558 lambda!381455))))

(declare-fun bs!1805707 () Bool)

(assert (= bs!1805707 (and b!6779895 b!6779336)))

(assert (=> bs!1805707 (not (= lambda!381558 lambda!381520))))

(declare-fun bs!1805708 () Bool)

(assert (= bs!1805708 (and b!6779895 b!6779776)))

(assert (=> bs!1805708 (not (= lambda!381558 lambda!381547))))

(assert (=> bs!1805697 (not (= lambda!381558 lambda!381447))))

(declare-fun bs!1805709 () Bool)

(assert (= bs!1805709 (and b!6779895 b!6779285)))

(assert (=> bs!1805709 (not (= lambda!381558 lambda!381511))))

(assert (=> bs!1805698 (not (= lambda!381558 lambda!381554))))

(declare-fun bs!1805710 () Bool)

(assert (= bs!1805710 (and b!6779895 b!6779330)))

(assert (=> bs!1805710 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 (regOne!33715 lt!2444369))) (= (regTwo!33715 lt!2444369) (regOne!33715 lt!2444369))) (= lambda!381558 lambda!381519))))

(declare-fun bs!1805711 () Bool)

(assert (= bs!1805711 (and b!6779895 b!6779279)))

(assert (=> bs!1805711 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 (regOne!33715 r!7292))) (= (regTwo!33715 lt!2444369) (regOne!33715 r!7292))) (= lambda!381558 lambda!381509))))

(assert (=> bs!1805706 (not (= lambda!381558 lambda!381454))))

(assert (=> bs!1805703 (not (= lambda!381558 lambda!381386))))

(assert (=> bs!1805703 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33715 lt!2444369) r!7292)) (= lambda!381558 lambda!381387))))

(declare-fun bs!1805712 () Bool)

(assert (= bs!1805712 (and b!6779895 b!6777981)))

(assert (=> bs!1805712 (= (and (= (reg!16930 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33715 lt!2444369) r!7292)) (= lambda!381558 lambda!381416))))

(assert (=> b!6779895 true))

(assert (=> b!6779895 true))

(declare-fun bs!1805713 () Bool)

(declare-fun b!6779901 () Bool)

(assert (= bs!1805713 (and b!6779901 d!2129988)))

(declare-fun lambda!381559 () Int)

(assert (=> bs!1805713 (not (= lambda!381559 lambda!381542))))

(declare-fun bs!1805714 () Bool)

(assert (= bs!1805714 (and b!6779901 d!2129374)))

(assert (=> bs!1805714 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33714 (regTwo!33715 lt!2444369)) r!7292)) (= lambda!381559 lambda!381448))))

(declare-fun bs!1805715 () Bool)

(assert (= bs!1805715 (and b!6779901 d!2130080)))

(assert (=> bs!1805715 (not (= lambda!381559 lambda!381553))))

(declare-fun bs!1805716 () Bool)

(assert (= bs!1805716 (and b!6779901 b!6779770)))

(assert (=> bs!1805716 (not (= lambda!381559 lambda!381546))))

(declare-fun bs!1805717 () Bool)

(assert (= bs!1805717 (and b!6779901 b!6778528)))

(assert (=> bs!1805717 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (regOne!33714 lt!2444369)) (= (regTwo!33714 (regTwo!33715 lt!2444369)) (regTwo!33714 lt!2444369))) (= lambda!381559 lambda!381473))))

(declare-fun bs!1805718 () Bool)

(assert (= bs!1805718 (and b!6779901 d!2129420)))

(assert (=> bs!1805718 (not (= lambda!381559 lambda!381458))))

(declare-fun bs!1805719 () Bool)

(assert (= bs!1805719 (and b!6779901 d!2129926)))

(assert (=> bs!1805719 (not (= lambda!381559 lambda!381528))))

(declare-fun bs!1805720 () Bool)

(assert (= bs!1805720 (and b!6779901 b!6777698)))

(assert (=> bs!1805720 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33714 (regTwo!33715 lt!2444369)) r!7292)) (= lambda!381559 lambda!381388))))

(declare-fun bs!1805721 () Bool)

(assert (= bs!1805721 (and b!6779901 b!6778522)))

(assert (=> bs!1805721 (not (= lambda!381559 lambda!381472))))

(declare-fun bs!1805722 () Bool)

(assert (= bs!1805722 (and b!6779901 b!6779895)))

(assert (=> bs!1805722 (not (= lambda!381559 lambda!381558))))

(assert (=> bs!1805719 (not (= lambda!381559 lambda!381529))))

(declare-fun bs!1805723 () Bool)

(assert (= bs!1805723 (and b!6779901 b!6777987)))

(assert (=> bs!1805723 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (regOne!33714 r!7292)) (= (regTwo!33714 (regTwo!33715 lt!2444369)) (regTwo!33714 r!7292))) (= lambda!381559 lambda!381419))))

(declare-fun bs!1805724 () Bool)

(assert (= bs!1805724 (and b!6779901 d!2129396)))

(assert (=> bs!1805724 (not (= lambda!381559 lambda!381455))))

(declare-fun bs!1805725 () Bool)

(assert (= bs!1805725 (and b!6779901 b!6779336)))

(assert (=> bs!1805725 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (regOne!33714 (regOne!33715 lt!2444369))) (= (regTwo!33714 (regTwo!33715 lt!2444369)) (regTwo!33714 (regOne!33715 lt!2444369)))) (= lambda!381559 lambda!381520))))

(declare-fun bs!1805726 () Bool)

(assert (= bs!1805726 (and b!6779901 b!6779776)))

(assert (=> bs!1805726 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (regOne!33714 (regTwo!33715 r!7292))) (= (regTwo!33714 (regTwo!33715 lt!2444369)) (regTwo!33714 (regTwo!33715 r!7292)))) (= lambda!381559 lambda!381547))))

(assert (=> bs!1805714 (not (= lambda!381559 lambda!381447))))

(declare-fun bs!1805727 () Bool)

(assert (= bs!1805727 (and b!6779901 b!6779285)))

(assert (=> bs!1805727 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (regOne!33714 (regOne!33715 r!7292))) (= (regTwo!33714 (regTwo!33715 lt!2444369)) (regTwo!33714 (regOne!33715 r!7292)))) (= lambda!381559 lambda!381511))))

(assert (=> bs!1805715 (= (and (= (regOne!33714 (regTwo!33715 lt!2444369)) (reg!16930 r!7292)) (= (regTwo!33714 (regTwo!33715 lt!2444369)) r!7292)) (= lambda!381559 lambda!381554))))

(declare-fun bs!1805728 () Bool)

(assert (= bs!1805728 (and b!6779901 b!6779330)))

(assert (=> bs!1805728 (not (= lambda!381559 lambda!381519))))

(declare-fun bs!1805729 () Bool)

(assert (= bs!1805729 (and b!6779901 b!6779279)))

(assert (=> bs!1805729 (not (= lambda!381559 lambda!381509))))

(assert (=> bs!1805724 (not (= lambda!381559 lambda!381454))))

(assert (=> bs!1805720 (not (= lambda!381559 lambda!381386))))

(assert (=> bs!1805720 (not (= lambda!381559 lambda!381387))))

(declare-fun bs!1805730 () Bool)

(assert (= bs!1805730 (and b!6779901 b!6777981)))

(assert (=> bs!1805730 (not (= lambda!381559 lambda!381416))))

(assert (=> b!6779901 true))

(assert (=> b!6779901 true))

(declare-fun b!6779891 () Bool)

(declare-fun e!4092840 () Bool)

(declare-fun call!615097 () Bool)

(assert (=> b!6779891 (= e!4092840 call!615097)))

(declare-fun b!6779892 () Bool)

(declare-fun e!4092842 () Bool)

(declare-fun e!4092841 () Bool)

(assert (=> b!6779892 (= e!4092842 e!4092841)))

(declare-fun c!1259477 () Bool)

(assert (=> b!6779892 (= c!1259477 ((_ is Star!16601) (regTwo!33715 lt!2444369)))))

(declare-fun b!6779893 () Bool)

(declare-fun e!4092838 () Bool)

(assert (=> b!6779893 (= e!4092840 e!4092838)))

(declare-fun res!2771358 () Bool)

(assert (=> b!6779893 (= res!2771358 (not ((_ is EmptyLang!16601) (regTwo!33715 lt!2444369))))))

(assert (=> b!6779893 (=> (not res!2771358) (not e!4092838))))

(declare-fun b!6779894 () Bool)

(declare-fun c!1259478 () Bool)

(assert (=> b!6779894 (= c!1259478 ((_ is Union!16601) (regTwo!33715 lt!2444369)))))

(declare-fun e!4092844 () Bool)

(assert (=> b!6779894 (= e!4092844 e!4092842)))

(declare-fun d!2130124 () Bool)

(declare-fun c!1259479 () Bool)

(assert (=> d!2130124 (= c!1259479 ((_ is EmptyExpr!16601) (regTwo!33715 lt!2444369)))))

(assert (=> d!2130124 (= (matchRSpec!3702 (regTwo!33715 lt!2444369) s!2326) e!4092840)))

(declare-fun e!4092843 () Bool)

(declare-fun call!615098 () Bool)

(assert (=> b!6779895 (= e!4092843 call!615098)))

(declare-fun b!6779896 () Bool)

(declare-fun res!2771359 () Bool)

(assert (=> b!6779896 (=> res!2771359 e!4092843)))

(assert (=> b!6779896 (= res!2771359 call!615097)))

(assert (=> b!6779896 (= e!4092841 e!4092843)))

(declare-fun b!6779897 () Bool)

(declare-fun e!4092839 () Bool)

(assert (=> b!6779897 (= e!4092842 e!4092839)))

(declare-fun res!2771360 () Bool)

(assert (=> b!6779897 (= res!2771360 (matchRSpec!3702 (regOne!33715 (regTwo!33715 lt!2444369)) s!2326))))

(assert (=> b!6779897 (=> res!2771360 e!4092839)))

(declare-fun bm!615092 () Bool)

(assert (=> bm!615092 (= call!615098 (Exists!3669 (ite c!1259477 lambda!381558 lambda!381559)))))

(declare-fun b!6779898 () Bool)

(assert (=> b!6779898 (= e!4092839 (matchRSpec!3702 (regTwo!33715 (regTwo!33715 lt!2444369)) s!2326))))

(declare-fun bm!615093 () Bool)

(assert (=> bm!615093 (= call!615097 (isEmpty!38337 s!2326))))

(declare-fun b!6779899 () Bool)

(assert (=> b!6779899 (= e!4092844 (= s!2326 (Cons!65978 (c!1258869 (regTwo!33715 lt!2444369)) Nil!65978)))))

(declare-fun b!6779900 () Bool)

(declare-fun c!1259480 () Bool)

(assert (=> b!6779900 (= c!1259480 ((_ is ElementMatch!16601) (regTwo!33715 lt!2444369)))))

(assert (=> b!6779900 (= e!4092838 e!4092844)))

(assert (=> b!6779901 (= e!4092841 call!615098)))

(assert (= (and d!2130124 c!1259479) b!6779891))

(assert (= (and d!2130124 (not c!1259479)) b!6779893))

(assert (= (and b!6779893 res!2771358) b!6779900))

(assert (= (and b!6779900 c!1259480) b!6779899))

(assert (= (and b!6779900 (not c!1259480)) b!6779894))

(assert (= (and b!6779894 c!1259478) b!6779897))

(assert (= (and b!6779894 (not c!1259478)) b!6779892))

(assert (= (and b!6779897 (not res!2771360)) b!6779898))

(assert (= (and b!6779892 c!1259477) b!6779896))

(assert (= (and b!6779892 (not c!1259477)) b!6779901))

(assert (= (and b!6779896 (not res!2771359)) b!6779895))

(assert (= (or b!6779895 b!6779901) bm!615092))

(assert (= (or b!6779891 b!6779896) bm!615093))

(declare-fun m!7528874 () Bool)

(assert (=> b!6779897 m!7528874))

(declare-fun m!7528876 () Bool)

(assert (=> bm!615092 m!7528876))

(declare-fun m!7528878 () Bool)

(assert (=> b!6779898 m!7528878))

(assert (=> bm!615093 m!7526878))

(assert (=> b!6778525 d!2130124))

(declare-fun d!2130126 () Bool)

(assert (=> d!2130126 (= (isEmptyLang!1967 lt!2444504) ((_ is EmptyLang!16601) lt!2444504))))

(assert (=> b!6778475 d!2130126))

(assert (=> b!6778378 d!2129666))

(declare-fun d!2130128 () Bool)

(assert (=> d!2130128 true))

(declare-fun setRes!46370 () Bool)

(assert (=> d!2130128 setRes!46370))

(declare-fun condSetEmpty!46370 () Bool)

(declare-fun res!2771361 () (InoxSet Context!11970))

(assert (=> d!2130128 (= condSetEmpty!46370 (= res!2771361 ((as const (Array Context!11970 Bool)) false)))))

(assert (=> d!2130128 (= (choose!50484 lt!2444388 lambda!381389) res!2771361)))

(declare-fun setIsEmpty!46370 () Bool)

(assert (=> setIsEmpty!46370 setRes!46370))

(declare-fun tp!1857609 () Bool)

(declare-fun setElem!46370 () Context!11970)

(declare-fun e!4092845 () Bool)

(declare-fun setNonEmpty!46370 () Bool)

(assert (=> setNonEmpty!46370 (= setRes!46370 (and tp!1857609 (inv!84749 setElem!46370) e!4092845))))

(declare-fun setRest!46370 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46370 (= res!2771361 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46370 true) setRest!46370))))

(declare-fun b!6779902 () Bool)

(declare-fun tp!1857608 () Bool)

(assert (=> b!6779902 (= e!4092845 tp!1857608)))

(assert (= (and d!2130128 condSetEmpty!46370) setIsEmpty!46370))

(assert (= (and d!2130128 (not condSetEmpty!46370)) setNonEmpty!46370))

(assert (= setNonEmpty!46370 b!6779902))

(declare-fun m!7528880 () Bool)

(assert (=> setNonEmpty!46370 m!7528880))

(assert (=> d!2129464 d!2130128))

(declare-fun b!6779903 () Bool)

(declare-fun e!4092846 () Bool)

(declare-fun call!615100 () Bool)

(assert (=> b!6779903 (= e!4092846 call!615100)))

(declare-fun d!2130130 () Bool)

(declare-fun res!2771364 () Bool)

(declare-fun e!4092847 () Bool)

(assert (=> d!2130130 (=> res!2771364 e!4092847)))

(assert (=> d!2130130 (= res!2771364 ((_ is ElementMatch!16601) lt!2444496))))

(assert (=> d!2130130 (= (validRegex!8337 lt!2444496) e!4092847)))

(declare-fun b!6779904 () Bool)

(declare-fun e!4092852 () Bool)

(assert (=> b!6779904 (= e!4092852 e!4092846)))

(declare-fun res!2771366 () Bool)

(assert (=> b!6779904 (= res!2771366 (not (nullable!6580 (reg!16930 lt!2444496))))))

(assert (=> b!6779904 (=> (not res!2771366) (not e!4092846))))

(declare-fun c!1259481 () Bool)

(declare-fun bm!615094 () Bool)

(declare-fun c!1259482 () Bool)

(assert (=> bm!615094 (= call!615100 (validRegex!8337 (ite c!1259481 (reg!16930 lt!2444496) (ite c!1259482 (regOne!33715 lt!2444496) (regOne!33714 lt!2444496)))))))

(declare-fun bm!615095 () Bool)

(declare-fun call!615099 () Bool)

(assert (=> bm!615095 (= call!615099 call!615100)))

(declare-fun b!6779905 () Bool)

(declare-fun res!2771363 () Bool)

(declare-fun e!4092848 () Bool)

(assert (=> b!6779905 (=> (not res!2771363) (not e!4092848))))

(assert (=> b!6779905 (= res!2771363 call!615099)))

(declare-fun e!4092849 () Bool)

(assert (=> b!6779905 (= e!4092849 e!4092848)))

(declare-fun b!6779906 () Bool)

(declare-fun res!2771365 () Bool)

(declare-fun e!4092851 () Bool)

(assert (=> b!6779906 (=> res!2771365 e!4092851)))

(assert (=> b!6779906 (= res!2771365 (not ((_ is Concat!25446) lt!2444496)))))

(assert (=> b!6779906 (= e!4092849 e!4092851)))

(declare-fun b!6779907 () Bool)

(assert (=> b!6779907 (= e!4092847 e!4092852)))

(assert (=> b!6779907 (= c!1259481 ((_ is Star!16601) lt!2444496))))

(declare-fun bm!615096 () Bool)

(declare-fun call!615101 () Bool)

(assert (=> bm!615096 (= call!615101 (validRegex!8337 (ite c!1259482 (regTwo!33715 lt!2444496) (regTwo!33714 lt!2444496))))))

(declare-fun b!6779908 () Bool)

(assert (=> b!6779908 (= e!4092848 call!615101)))

(declare-fun b!6779909 () Bool)

(declare-fun e!4092850 () Bool)

(assert (=> b!6779909 (= e!4092850 call!615101)))

(declare-fun b!6779910 () Bool)

(assert (=> b!6779910 (= e!4092852 e!4092849)))

(assert (=> b!6779910 (= c!1259482 ((_ is Union!16601) lt!2444496))))

(declare-fun b!6779911 () Bool)

(assert (=> b!6779911 (= e!4092851 e!4092850)))

(declare-fun res!2771362 () Bool)

(assert (=> b!6779911 (=> (not res!2771362) (not e!4092850))))

(assert (=> b!6779911 (= res!2771362 call!615099)))

(assert (= (and d!2130130 (not res!2771364)) b!6779907))

(assert (= (and b!6779907 c!1259481) b!6779904))

(assert (= (and b!6779907 (not c!1259481)) b!6779910))

(assert (= (and b!6779904 res!2771366) b!6779903))

(assert (= (and b!6779910 c!1259482) b!6779905))

(assert (= (and b!6779910 (not c!1259482)) b!6779906))

(assert (= (and b!6779905 res!2771363) b!6779908))

(assert (= (and b!6779906 (not res!2771365)) b!6779911))

(assert (= (and b!6779911 res!2771362) b!6779909))

(assert (= (or b!6779908 b!6779909) bm!615096))

(assert (= (or b!6779905 b!6779911) bm!615095))

(assert (= (or b!6779903 bm!615095) bm!615094))

(declare-fun m!7528882 () Bool)

(assert (=> b!6779904 m!7528882))

(declare-fun m!7528884 () Bool)

(assert (=> bm!615094 m!7528884))

(declare-fun m!7528886 () Bool)

(assert (=> bm!615096 m!7528886))

(assert (=> d!2129432 d!2130130))

(declare-fun bs!1805731 () Bool)

(declare-fun d!2130132 () Bool)

(assert (= bs!1805731 (and d!2130132 d!2129456)))

(declare-fun lambda!381560 () Int)

(assert (=> bs!1805731 (= lambda!381560 lambda!381462)))

(declare-fun bs!1805732 () Bool)

(assert (= bs!1805732 (and d!2130132 d!2129460)))

(assert (=> bs!1805732 (= lambda!381560 lambda!381466)))

(declare-fun bs!1805733 () Bool)

(assert (= bs!1805733 (and d!2130132 d!2129462)))

(assert (=> bs!1805733 (= lambda!381560 lambda!381469)))

(declare-fun bs!1805734 () Bool)

(assert (= bs!1805734 (and d!2130132 d!2129778)))

(assert (=> bs!1805734 (= lambda!381560 lambda!381499)))

(declare-fun bs!1805735 () Bool)

(assert (= bs!1805735 (and d!2130132 d!2129282)))

(assert (=> bs!1805735 (= lambda!381560 lambda!381401)))

(declare-fun bs!1805736 () Bool)

(assert (= bs!1805736 (and d!2130132 d!2129960)))

(assert (=> bs!1805736 (= lambda!381560 lambda!381531)))

(declare-fun bs!1805737 () Bool)

(assert (= bs!1805737 (and d!2130132 d!2129866)))

(assert (=> bs!1805737 (= lambda!381560 lambda!381517)))

(declare-fun bs!1805738 () Bool)

(assert (= bs!1805738 (and d!2130132 d!2130060)))

(assert (=> bs!1805738 (= lambda!381560 lambda!381548)))

(declare-fun bs!1805739 () Bool)

(assert (= bs!1805739 (and d!2130132 d!2129864)))

(assert (=> bs!1805739 (= lambda!381560 lambda!381514)))

(declare-fun bs!1805740 () Bool)

(assert (= bs!1805740 (and d!2130132 d!2129966)))

(assert (=> bs!1805740 (= lambda!381560 lambda!381532)))

(declare-fun bs!1805741 () Bool)

(assert (= bs!1805741 (and d!2130132 d!2129974)))

(assert (=> bs!1805741 (= lambda!381560 lambda!381533)))

(declare-fun bs!1805742 () Bool)

(assert (= bs!1805742 (and d!2130132 d!2129458)))

(assert (=> bs!1805742 (= lambda!381560 lambda!381463)))

(declare-fun bs!1805743 () Bool)

(assert (= bs!1805743 (and d!2130132 d!2130042)))

(assert (=> bs!1805743 (= lambda!381560 lambda!381545)))

(declare-fun bs!1805744 () Bool)

(assert (= bs!1805744 (and d!2130132 d!2130096)))

(assert (=> bs!1805744 (= lambda!381560 lambda!381556)))

(declare-fun bs!1805745 () Bool)

(assert (= bs!1805745 (and d!2130132 d!2129480)))

(assert (=> bs!1805745 (= lambda!381560 lambda!381471)))

(declare-fun b!6779912 () Bool)

(declare-fun e!4092853 () Regex!16601)

(declare-fun e!4092855 () Regex!16601)

(assert (=> b!6779912 (= e!4092853 e!4092855)))

(declare-fun c!1259484 () Bool)

(assert (=> b!6779912 (= c!1259484 ((_ is Cons!65979) (unfocusZipperList!2022 lt!2444375)))))

(declare-fun b!6779913 () Bool)

(declare-fun e!4092858 () Bool)

(declare-fun lt!2444589 () Regex!16601)

(assert (=> b!6779913 (= e!4092858 (isEmptyLang!1967 lt!2444589))))

(declare-fun b!6779914 () Bool)

(assert (=> b!6779914 (= e!4092855 (Union!16601 (h!72427 (unfocusZipperList!2022 lt!2444375)) (generalisedUnion!2445 (t!379816 (unfocusZipperList!2022 lt!2444375)))))))

(declare-fun b!6779915 () Bool)

(assert (=> b!6779915 (= e!4092855 EmptyLang!16601)))

(declare-fun b!6779916 () Bool)

(declare-fun e!4092854 () Bool)

(assert (=> b!6779916 (= e!4092854 (isUnion!1397 lt!2444589))))

(declare-fun b!6779917 () Bool)

(declare-fun e!4092857 () Bool)

(assert (=> b!6779917 (= e!4092857 (isEmpty!38340 (t!379816 (unfocusZipperList!2022 lt!2444375))))))

(declare-fun b!6779918 () Bool)

(declare-fun e!4092856 () Bool)

(assert (=> b!6779918 (= e!4092856 e!4092858)))

(declare-fun c!1259486 () Bool)

(assert (=> b!6779918 (= c!1259486 (isEmpty!38340 (unfocusZipperList!2022 lt!2444375)))))

(declare-fun b!6779919 () Bool)

(assert (=> b!6779919 (= e!4092853 (h!72427 (unfocusZipperList!2022 lt!2444375)))))

(assert (=> d!2130132 e!4092856))

(declare-fun res!2771368 () Bool)

(assert (=> d!2130132 (=> (not res!2771368) (not e!4092856))))

(assert (=> d!2130132 (= res!2771368 (validRegex!8337 lt!2444589))))

(assert (=> d!2130132 (= lt!2444589 e!4092853)))

(declare-fun c!1259485 () Bool)

(assert (=> d!2130132 (= c!1259485 e!4092857)))

(declare-fun res!2771367 () Bool)

(assert (=> d!2130132 (=> (not res!2771367) (not e!4092857))))

(assert (=> d!2130132 (= res!2771367 ((_ is Cons!65979) (unfocusZipperList!2022 lt!2444375)))))

(assert (=> d!2130132 (forall!15793 (unfocusZipperList!2022 lt!2444375) lambda!381560)))

(assert (=> d!2130132 (= (generalisedUnion!2445 (unfocusZipperList!2022 lt!2444375)) lt!2444589)))

(declare-fun b!6779920 () Bool)

(assert (=> b!6779920 (= e!4092854 (= lt!2444589 (head!13613 (unfocusZipperList!2022 lt!2444375))))))

(declare-fun b!6779921 () Bool)

(assert (=> b!6779921 (= e!4092858 e!4092854)))

(declare-fun c!1259483 () Bool)

(assert (=> b!6779921 (= c!1259483 (isEmpty!38340 (tail!12698 (unfocusZipperList!2022 lt!2444375))))))

(assert (= (and d!2130132 res!2771367) b!6779917))

(assert (= (and d!2130132 c!1259485) b!6779919))

(assert (= (and d!2130132 (not c!1259485)) b!6779912))

(assert (= (and b!6779912 c!1259484) b!6779914))

(assert (= (and b!6779912 (not c!1259484)) b!6779915))

(assert (= (and d!2130132 res!2771368) b!6779918))

(assert (= (and b!6779918 c!1259486) b!6779913))

(assert (= (and b!6779918 (not c!1259486)) b!6779921))

(assert (= (and b!6779921 c!1259483) b!6779920))

(assert (= (and b!6779921 (not c!1259483)) b!6779916))

(declare-fun m!7528888 () Bool)

(assert (=> b!6779916 m!7528888))

(assert (=> b!6779921 m!7527366))

(declare-fun m!7528890 () Bool)

(assert (=> b!6779921 m!7528890))

(assert (=> b!6779921 m!7528890))

(declare-fun m!7528892 () Bool)

(assert (=> b!6779921 m!7528892))

(assert (=> b!6779920 m!7527366))

(declare-fun m!7528894 () Bool)

(assert (=> b!6779920 m!7528894))

(assert (=> b!6779918 m!7527366))

(declare-fun m!7528896 () Bool)

(assert (=> b!6779918 m!7528896))

(declare-fun m!7528898 () Bool)

(assert (=> b!6779914 m!7528898))

(declare-fun m!7528900 () Bool)

(assert (=> b!6779913 m!7528900))

(declare-fun m!7528902 () Bool)

(assert (=> d!2130132 m!7528902))

(assert (=> d!2130132 m!7527366))

(declare-fun m!7528904 () Bool)

(assert (=> d!2130132 m!7528904))

(declare-fun m!7528906 () Bool)

(assert (=> b!6779917 m!7528906))

(assert (=> d!2129432 d!2130132))

(declare-fun bs!1805746 () Bool)

(declare-fun d!2130134 () Bool)

(assert (= bs!1805746 (and d!2130134 d!2129456)))

(declare-fun lambda!381561 () Int)

(assert (=> bs!1805746 (= lambda!381561 lambda!381462)))

(declare-fun bs!1805747 () Bool)

(assert (= bs!1805747 (and d!2130134 d!2130132)))

(assert (=> bs!1805747 (= lambda!381561 lambda!381560)))

(declare-fun bs!1805748 () Bool)

(assert (= bs!1805748 (and d!2130134 d!2129460)))

(assert (=> bs!1805748 (= lambda!381561 lambda!381466)))

(declare-fun bs!1805749 () Bool)

(assert (= bs!1805749 (and d!2130134 d!2129462)))

(assert (=> bs!1805749 (= lambda!381561 lambda!381469)))

(declare-fun bs!1805750 () Bool)

(assert (= bs!1805750 (and d!2130134 d!2129778)))

(assert (=> bs!1805750 (= lambda!381561 lambda!381499)))

(declare-fun bs!1805751 () Bool)

(assert (= bs!1805751 (and d!2130134 d!2129282)))

(assert (=> bs!1805751 (= lambda!381561 lambda!381401)))

(declare-fun bs!1805752 () Bool)

(assert (= bs!1805752 (and d!2130134 d!2129960)))

(assert (=> bs!1805752 (= lambda!381561 lambda!381531)))

(declare-fun bs!1805753 () Bool)

(assert (= bs!1805753 (and d!2130134 d!2129866)))

(assert (=> bs!1805753 (= lambda!381561 lambda!381517)))

(declare-fun bs!1805754 () Bool)

(assert (= bs!1805754 (and d!2130134 d!2130060)))

(assert (=> bs!1805754 (= lambda!381561 lambda!381548)))

(declare-fun bs!1805755 () Bool)

(assert (= bs!1805755 (and d!2130134 d!2129864)))

(assert (=> bs!1805755 (= lambda!381561 lambda!381514)))

(declare-fun bs!1805756 () Bool)

(assert (= bs!1805756 (and d!2130134 d!2129966)))

(assert (=> bs!1805756 (= lambda!381561 lambda!381532)))

(declare-fun bs!1805757 () Bool)

(assert (= bs!1805757 (and d!2130134 d!2129974)))

(assert (=> bs!1805757 (= lambda!381561 lambda!381533)))

(declare-fun bs!1805758 () Bool)

(assert (= bs!1805758 (and d!2130134 d!2129458)))

(assert (=> bs!1805758 (= lambda!381561 lambda!381463)))

(declare-fun bs!1805759 () Bool)

(assert (= bs!1805759 (and d!2130134 d!2130042)))

(assert (=> bs!1805759 (= lambda!381561 lambda!381545)))

(declare-fun bs!1805760 () Bool)

(assert (= bs!1805760 (and d!2130134 d!2130096)))

(assert (=> bs!1805760 (= lambda!381561 lambda!381556)))

(declare-fun bs!1805761 () Bool)

(assert (= bs!1805761 (and d!2130134 d!2129480)))

(assert (=> bs!1805761 (= lambda!381561 lambda!381471)))

(declare-fun lt!2444590 () List!66103)

(assert (=> d!2130134 (forall!15793 lt!2444590 lambda!381561)))

(declare-fun e!4092859 () List!66103)

(assert (=> d!2130134 (= lt!2444590 e!4092859)))

(declare-fun c!1259487 () Bool)

(assert (=> d!2130134 (= c!1259487 ((_ is Cons!65980) lt!2444375))))

(assert (=> d!2130134 (= (unfocusZipperList!2022 lt!2444375) lt!2444590)))

(declare-fun b!6779922 () Bool)

(assert (=> b!6779922 (= e!4092859 (Cons!65979 (generalisedConcat!2198 (exprs!6485 (h!72428 lt!2444375))) (unfocusZipperList!2022 (t!379817 lt!2444375))))))

(declare-fun b!6779923 () Bool)

(assert (=> b!6779923 (= e!4092859 Nil!65979)))

(assert (= (and d!2130134 c!1259487) b!6779922))

(assert (= (and d!2130134 (not c!1259487)) b!6779923))

(declare-fun m!7528908 () Bool)

(assert (=> d!2130134 m!7528908))

(declare-fun m!7528910 () Bool)

(assert (=> b!6779922 m!7528910))

(declare-fun m!7528912 () Bool)

(assert (=> b!6779922 m!7528912))

(assert (=> d!2129432 d!2130134))

(assert (=> b!6778382 d!2129836))

(declare-fun d!2130136 () Bool)

(assert (=> d!2130136 (= (isEmpty!38337 (t!379815 s!2326)) ((_ is Nil!65978) (t!379815 s!2326)))))

(assert (=> d!2129352 d!2130136))

(declare-fun b!6779924 () Bool)

(declare-fun e!4092860 () Bool)

(assert (=> b!6779924 (= e!4092860 tp_is_empty!42455)))

(declare-fun b!6779926 () Bool)

(declare-fun tp!1857612 () Bool)

(assert (=> b!6779926 (= e!4092860 tp!1857612)))

(declare-fun b!6779927 () Bool)

(declare-fun tp!1857613 () Bool)

(declare-fun tp!1857614 () Bool)

(assert (=> b!6779927 (= e!4092860 (and tp!1857613 tp!1857614))))

(assert (=> b!6778587 (= tp!1857386 e!4092860)))

(declare-fun b!6779925 () Bool)

(declare-fun tp!1857610 () Bool)

(declare-fun tp!1857611 () Bool)

(assert (=> b!6779925 (= e!4092860 (and tp!1857610 tp!1857611))))

(assert (= (and b!6778587 ((_ is ElementMatch!16601) (regOne!33715 (regTwo!33714 r!7292)))) b!6779924))

(assert (= (and b!6778587 ((_ is Concat!25446) (regOne!33715 (regTwo!33714 r!7292)))) b!6779925))

(assert (= (and b!6778587 ((_ is Star!16601) (regOne!33715 (regTwo!33714 r!7292)))) b!6779926))

(assert (= (and b!6778587 ((_ is Union!16601) (regOne!33715 (regTwo!33714 r!7292)))) b!6779927))

(declare-fun b!6779928 () Bool)

(declare-fun e!4092861 () Bool)

(assert (=> b!6779928 (= e!4092861 tp_is_empty!42455)))

(declare-fun b!6779930 () Bool)

(declare-fun tp!1857617 () Bool)

(assert (=> b!6779930 (= e!4092861 tp!1857617)))

(declare-fun b!6779931 () Bool)

(declare-fun tp!1857618 () Bool)

(declare-fun tp!1857619 () Bool)

(assert (=> b!6779931 (= e!4092861 (and tp!1857618 tp!1857619))))

(assert (=> b!6778587 (= tp!1857387 e!4092861)))

(declare-fun b!6779929 () Bool)

(declare-fun tp!1857615 () Bool)

(declare-fun tp!1857616 () Bool)

(assert (=> b!6779929 (= e!4092861 (and tp!1857615 tp!1857616))))

(assert (= (and b!6778587 ((_ is ElementMatch!16601) (regTwo!33715 (regTwo!33714 r!7292)))) b!6779928))

(assert (= (and b!6778587 ((_ is Concat!25446) (regTwo!33715 (regTwo!33714 r!7292)))) b!6779929))

(assert (= (and b!6778587 ((_ is Star!16601) (regTwo!33715 (regTwo!33714 r!7292)))) b!6779930))

(assert (= (and b!6778587 ((_ is Union!16601) (regTwo!33715 (regTwo!33714 r!7292)))) b!6779931))

(declare-fun b!6779932 () Bool)

(declare-fun e!4092862 () Bool)

(declare-fun tp!1857620 () Bool)

(declare-fun tp!1857621 () Bool)

(assert (=> b!6779932 (= e!4092862 (and tp!1857620 tp!1857621))))

(assert (=> b!6778617 (= tp!1857419 e!4092862)))

(assert (= (and b!6778617 ((_ is Cons!65979) (exprs!6485 (h!72428 (t!379817 zl!343))))) b!6779932))

(declare-fun b!6779934 () Bool)

(declare-fun e!4092864 () Bool)

(declare-fun tp!1857622 () Bool)

(assert (=> b!6779934 (= e!4092864 tp!1857622)))

(declare-fun b!6779933 () Bool)

(declare-fun tp!1857623 () Bool)

(declare-fun e!4092863 () Bool)

(assert (=> b!6779933 (= e!4092863 (and (inv!84749 (h!72428 (t!379817 (t!379817 zl!343)))) e!4092864 tp!1857623))))

(assert (=> b!6778616 (= tp!1857420 e!4092863)))

(assert (= b!6779933 b!6779934))

(assert (= (and b!6778616 ((_ is Cons!65980) (t!379817 (t!379817 zl!343)))) b!6779933))

(declare-fun m!7528914 () Bool)

(assert (=> b!6779933 m!7528914))

(declare-fun b!6779935 () Bool)

(declare-fun e!4092865 () Bool)

(assert (=> b!6779935 (= e!4092865 tp_is_empty!42455)))

(declare-fun b!6779937 () Bool)

(declare-fun tp!1857626 () Bool)

(assert (=> b!6779937 (= e!4092865 tp!1857626)))

(declare-fun b!6779938 () Bool)

(declare-fun tp!1857627 () Bool)

(declare-fun tp!1857628 () Bool)

(assert (=> b!6779938 (= e!4092865 (and tp!1857627 tp!1857628))))

(assert (=> b!6778623 (= tp!1857424 e!4092865)))

(declare-fun b!6779936 () Bool)

(declare-fun tp!1857624 () Bool)

(declare-fun tp!1857625 () Bool)

(assert (=> b!6779936 (= e!4092865 (and tp!1857624 tp!1857625))))

(assert (= (and b!6778623 ((_ is ElementMatch!16601) (h!72427 (exprs!6485 (h!72428 zl!343))))) b!6779935))

(assert (= (and b!6778623 ((_ is Concat!25446) (h!72427 (exprs!6485 (h!72428 zl!343))))) b!6779936))

(assert (= (and b!6778623 ((_ is Star!16601) (h!72427 (exprs!6485 (h!72428 zl!343))))) b!6779937))

(assert (= (and b!6778623 ((_ is Union!16601) (h!72427 (exprs!6485 (h!72428 zl!343))))) b!6779938))

(declare-fun b!6779939 () Bool)

(declare-fun e!4092866 () Bool)

(declare-fun tp!1857629 () Bool)

(declare-fun tp!1857630 () Bool)

(assert (=> b!6779939 (= e!4092866 (and tp!1857629 tp!1857630))))

(assert (=> b!6778623 (= tp!1857425 e!4092866)))

(assert (= (and b!6778623 ((_ is Cons!65979) (t!379816 (exprs!6485 (h!72428 zl!343))))) b!6779939))

(declare-fun b!6779940 () Bool)

(declare-fun e!4092867 () Bool)

(assert (=> b!6779940 (= e!4092867 tp_is_empty!42455)))

(declare-fun b!6779942 () Bool)

(declare-fun tp!1857633 () Bool)

(assert (=> b!6779942 (= e!4092867 tp!1857633)))

(declare-fun b!6779943 () Bool)

(declare-fun tp!1857634 () Bool)

(declare-fun tp!1857635 () Bool)

(assert (=> b!6779943 (= e!4092867 (and tp!1857634 tp!1857635))))

(assert (=> b!6778597 (= tp!1857398 e!4092867)))

(declare-fun b!6779941 () Bool)

(declare-fun tp!1857631 () Bool)

(declare-fun tp!1857632 () Bool)

(assert (=> b!6779941 (= e!4092867 (and tp!1857631 tp!1857632))))

(assert (= (and b!6778597 ((_ is ElementMatch!16601) (regOne!33714 (regTwo!33715 r!7292)))) b!6779940))

(assert (= (and b!6778597 ((_ is Concat!25446) (regOne!33714 (regTwo!33715 r!7292)))) b!6779941))

(assert (= (and b!6778597 ((_ is Star!16601) (regOne!33714 (regTwo!33715 r!7292)))) b!6779942))

(assert (= (and b!6778597 ((_ is Union!16601) (regOne!33714 (regTwo!33715 r!7292)))) b!6779943))

(declare-fun b!6779944 () Bool)

(declare-fun e!4092868 () Bool)

(assert (=> b!6779944 (= e!4092868 tp_is_empty!42455)))

(declare-fun b!6779946 () Bool)

(declare-fun tp!1857638 () Bool)

(assert (=> b!6779946 (= e!4092868 tp!1857638)))

(declare-fun b!6779947 () Bool)

(declare-fun tp!1857639 () Bool)

(declare-fun tp!1857640 () Bool)

(assert (=> b!6779947 (= e!4092868 (and tp!1857639 tp!1857640))))

(assert (=> b!6778597 (= tp!1857399 e!4092868)))

(declare-fun b!6779945 () Bool)

(declare-fun tp!1857636 () Bool)

(declare-fun tp!1857637 () Bool)

(assert (=> b!6779945 (= e!4092868 (and tp!1857636 tp!1857637))))

(assert (= (and b!6778597 ((_ is ElementMatch!16601) (regTwo!33714 (regTwo!33715 r!7292)))) b!6779944))

(assert (= (and b!6778597 ((_ is Concat!25446) (regTwo!33714 (regTwo!33715 r!7292)))) b!6779945))

(assert (= (and b!6778597 ((_ is Star!16601) (regTwo!33714 (regTwo!33715 r!7292)))) b!6779946))

(assert (= (and b!6778597 ((_ is Union!16601) (regTwo!33714 (regTwo!33715 r!7292)))) b!6779947))

(declare-fun b!6779948 () Bool)

(declare-fun e!4092869 () Bool)

(assert (=> b!6779948 (= e!4092869 tp_is_empty!42455)))

(declare-fun b!6779950 () Bool)

(declare-fun tp!1857643 () Bool)

(assert (=> b!6779950 (= e!4092869 tp!1857643)))

(declare-fun b!6779951 () Bool)

(declare-fun tp!1857644 () Bool)

(declare-fun tp!1857645 () Bool)

(assert (=> b!6779951 (= e!4092869 (and tp!1857644 tp!1857645))))

(assert (=> b!6778604 (= tp!1857407 e!4092869)))

(declare-fun b!6779949 () Bool)

(declare-fun tp!1857641 () Bool)

(declare-fun tp!1857642 () Bool)

(assert (=> b!6779949 (= e!4092869 (and tp!1857641 tp!1857642))))

(assert (= (and b!6778604 ((_ is ElementMatch!16601) (h!72427 (exprs!6485 setElem!46351)))) b!6779948))

(assert (= (and b!6778604 ((_ is Concat!25446) (h!72427 (exprs!6485 setElem!46351)))) b!6779949))

(assert (= (and b!6778604 ((_ is Star!16601) (h!72427 (exprs!6485 setElem!46351)))) b!6779950))

(assert (= (and b!6778604 ((_ is Union!16601) (h!72427 (exprs!6485 setElem!46351)))) b!6779951))

(declare-fun b!6779952 () Bool)

(declare-fun e!4092870 () Bool)

(declare-fun tp!1857646 () Bool)

(declare-fun tp!1857647 () Bool)

(assert (=> b!6779952 (= e!4092870 (and tp!1857646 tp!1857647))))

(assert (=> b!6778604 (= tp!1857408 e!4092870)))

(assert (= (and b!6778604 ((_ is Cons!65979) (t!379816 (exprs!6485 setElem!46351)))) b!6779952))

(declare-fun b!6779953 () Bool)

(declare-fun e!4092871 () Bool)

(assert (=> b!6779953 (= e!4092871 tp_is_empty!42455)))

(declare-fun b!6779955 () Bool)

(declare-fun tp!1857650 () Bool)

(assert (=> b!6779955 (= e!4092871 tp!1857650)))

(declare-fun b!6779956 () Bool)

(declare-fun tp!1857651 () Bool)

(declare-fun tp!1857652 () Bool)

(assert (=> b!6779956 (= e!4092871 (and tp!1857651 tp!1857652))))

(assert (=> b!6778581 (= tp!1857378 e!4092871)))

(declare-fun b!6779954 () Bool)

(declare-fun tp!1857648 () Bool)

(declare-fun tp!1857649 () Bool)

(assert (=> b!6779954 (= e!4092871 (and tp!1857648 tp!1857649))))

(assert (= (and b!6778581 ((_ is ElementMatch!16601) (regOne!33714 (regOne!33714 r!7292)))) b!6779953))

(assert (= (and b!6778581 ((_ is Concat!25446) (regOne!33714 (regOne!33714 r!7292)))) b!6779954))

(assert (= (and b!6778581 ((_ is Star!16601) (regOne!33714 (regOne!33714 r!7292)))) b!6779955))

(assert (= (and b!6778581 ((_ is Union!16601) (regOne!33714 (regOne!33714 r!7292)))) b!6779956))

(declare-fun b!6779957 () Bool)

(declare-fun e!4092872 () Bool)

(assert (=> b!6779957 (= e!4092872 tp_is_empty!42455)))

(declare-fun b!6779959 () Bool)

(declare-fun tp!1857655 () Bool)

(assert (=> b!6779959 (= e!4092872 tp!1857655)))

(declare-fun b!6779960 () Bool)

(declare-fun tp!1857656 () Bool)

(declare-fun tp!1857657 () Bool)

(assert (=> b!6779960 (= e!4092872 (and tp!1857656 tp!1857657))))

(assert (=> b!6778581 (= tp!1857379 e!4092872)))

(declare-fun b!6779958 () Bool)

(declare-fun tp!1857653 () Bool)

(declare-fun tp!1857654 () Bool)

(assert (=> b!6779958 (= e!4092872 (and tp!1857653 tp!1857654))))

(assert (= (and b!6778581 ((_ is ElementMatch!16601) (regTwo!33714 (regOne!33714 r!7292)))) b!6779957))

(assert (= (and b!6778581 ((_ is Concat!25446) (regTwo!33714 (regOne!33714 r!7292)))) b!6779958))

(assert (= (and b!6778581 ((_ is Star!16601) (regTwo!33714 (regOne!33714 r!7292)))) b!6779959))

(assert (= (and b!6778581 ((_ is Union!16601) (regTwo!33714 (regOne!33714 r!7292)))) b!6779960))

(declare-fun b!6779961 () Bool)

(declare-fun e!4092873 () Bool)

(assert (=> b!6779961 (= e!4092873 tp_is_empty!42455)))

(declare-fun b!6779963 () Bool)

(declare-fun tp!1857660 () Bool)

(assert (=> b!6779963 (= e!4092873 tp!1857660)))

(declare-fun b!6779964 () Bool)

(declare-fun tp!1857661 () Bool)

(declare-fun tp!1857662 () Bool)

(assert (=> b!6779964 (= e!4092873 (and tp!1857661 tp!1857662))))

(assert (=> b!6778590 (= tp!1857390 e!4092873)))

(declare-fun b!6779962 () Bool)

(declare-fun tp!1857658 () Bool)

(declare-fun tp!1857659 () Bool)

(assert (=> b!6779962 (= e!4092873 (and tp!1857658 tp!1857659))))

(assert (= (and b!6778590 ((_ is ElementMatch!16601) (reg!16930 (reg!16930 r!7292)))) b!6779961))

(assert (= (and b!6778590 ((_ is Concat!25446) (reg!16930 (reg!16930 r!7292)))) b!6779962))

(assert (= (and b!6778590 ((_ is Star!16601) (reg!16930 (reg!16930 r!7292)))) b!6779963))

(assert (= (and b!6778590 ((_ is Union!16601) (reg!16930 (reg!16930 r!7292)))) b!6779964))

(declare-fun b!6779965 () Bool)

(declare-fun e!4092874 () Bool)

(assert (=> b!6779965 (= e!4092874 tp_is_empty!42455)))

(declare-fun b!6779967 () Bool)

(declare-fun tp!1857665 () Bool)

(assert (=> b!6779967 (= e!4092874 tp!1857665)))

(declare-fun b!6779968 () Bool)

(declare-fun tp!1857666 () Bool)

(declare-fun tp!1857667 () Bool)

(assert (=> b!6779968 (= e!4092874 (and tp!1857666 tp!1857667))))

(assert (=> b!6778599 (= tp!1857401 e!4092874)))

(declare-fun b!6779966 () Bool)

(declare-fun tp!1857663 () Bool)

(declare-fun tp!1857664 () Bool)

(assert (=> b!6779966 (= e!4092874 (and tp!1857663 tp!1857664))))

(assert (= (and b!6778599 ((_ is ElementMatch!16601) (regOne!33715 (regTwo!33715 r!7292)))) b!6779965))

(assert (= (and b!6778599 ((_ is Concat!25446) (regOne!33715 (regTwo!33715 r!7292)))) b!6779966))

(assert (= (and b!6778599 ((_ is Star!16601) (regOne!33715 (regTwo!33715 r!7292)))) b!6779967))

(assert (= (and b!6778599 ((_ is Union!16601) (regOne!33715 (regTwo!33715 r!7292)))) b!6779968))

(declare-fun b!6779969 () Bool)

(declare-fun e!4092875 () Bool)

(assert (=> b!6779969 (= e!4092875 tp_is_empty!42455)))

(declare-fun b!6779971 () Bool)

(declare-fun tp!1857670 () Bool)

(assert (=> b!6779971 (= e!4092875 tp!1857670)))

(declare-fun b!6779972 () Bool)

(declare-fun tp!1857671 () Bool)

(declare-fun tp!1857672 () Bool)

(assert (=> b!6779972 (= e!4092875 (and tp!1857671 tp!1857672))))

(assert (=> b!6778599 (= tp!1857402 e!4092875)))

(declare-fun b!6779970 () Bool)

(declare-fun tp!1857668 () Bool)

(declare-fun tp!1857669 () Bool)

(assert (=> b!6779970 (= e!4092875 (and tp!1857668 tp!1857669))))

(assert (= (and b!6778599 ((_ is ElementMatch!16601) (regTwo!33715 (regTwo!33715 r!7292)))) b!6779969))

(assert (= (and b!6778599 ((_ is Concat!25446) (regTwo!33715 (regTwo!33715 r!7292)))) b!6779970))

(assert (= (and b!6778599 ((_ is Star!16601) (regTwo!33715 (regTwo!33715 r!7292)))) b!6779971))

(assert (= (and b!6778599 ((_ is Union!16601) (regTwo!33715 (regTwo!33715 r!7292)))) b!6779972))

(declare-fun b!6779973 () Bool)

(declare-fun e!4092876 () Bool)

(assert (=> b!6779973 (= e!4092876 tp_is_empty!42455)))

(declare-fun b!6779975 () Bool)

(declare-fun tp!1857675 () Bool)

(assert (=> b!6779975 (= e!4092876 tp!1857675)))

(declare-fun b!6779976 () Bool)

(declare-fun tp!1857676 () Bool)

(declare-fun tp!1857677 () Bool)

(assert (=> b!6779976 (= e!4092876 (and tp!1857676 tp!1857677))))

(assert (=> b!6778598 (= tp!1857400 e!4092876)))

(declare-fun b!6779974 () Bool)

(declare-fun tp!1857673 () Bool)

(declare-fun tp!1857674 () Bool)

(assert (=> b!6779974 (= e!4092876 (and tp!1857673 tp!1857674))))

(assert (= (and b!6778598 ((_ is ElementMatch!16601) (reg!16930 (regTwo!33715 r!7292)))) b!6779973))

(assert (= (and b!6778598 ((_ is Concat!25446) (reg!16930 (regTwo!33715 r!7292)))) b!6779974))

(assert (= (and b!6778598 ((_ is Star!16601) (reg!16930 (regTwo!33715 r!7292)))) b!6779975))

(assert (= (and b!6778598 ((_ is Union!16601) (reg!16930 (regTwo!33715 r!7292)))) b!6779976))

(declare-fun b!6779977 () Bool)

(declare-fun e!4092877 () Bool)

(assert (=> b!6779977 (= e!4092877 tp_is_empty!42455)))

(declare-fun b!6779979 () Bool)

(declare-fun tp!1857680 () Bool)

(assert (=> b!6779979 (= e!4092877 tp!1857680)))

(declare-fun b!6779980 () Bool)

(declare-fun tp!1857681 () Bool)

(declare-fun tp!1857682 () Bool)

(assert (=> b!6779980 (= e!4092877 (and tp!1857681 tp!1857682))))

(assert (=> b!6778589 (= tp!1857388 e!4092877)))

(declare-fun b!6779978 () Bool)

(declare-fun tp!1857678 () Bool)

(declare-fun tp!1857679 () Bool)

(assert (=> b!6779978 (= e!4092877 (and tp!1857678 tp!1857679))))

(assert (= (and b!6778589 ((_ is ElementMatch!16601) (regOne!33714 (reg!16930 r!7292)))) b!6779977))

(assert (= (and b!6778589 ((_ is Concat!25446) (regOne!33714 (reg!16930 r!7292)))) b!6779978))

(assert (= (and b!6778589 ((_ is Star!16601) (regOne!33714 (reg!16930 r!7292)))) b!6779979))

(assert (= (and b!6778589 ((_ is Union!16601) (regOne!33714 (reg!16930 r!7292)))) b!6779980))

(declare-fun b!6779981 () Bool)

(declare-fun e!4092878 () Bool)

(assert (=> b!6779981 (= e!4092878 tp_is_empty!42455)))

(declare-fun b!6779983 () Bool)

(declare-fun tp!1857685 () Bool)

(assert (=> b!6779983 (= e!4092878 tp!1857685)))

(declare-fun b!6779984 () Bool)

(declare-fun tp!1857686 () Bool)

(declare-fun tp!1857687 () Bool)

(assert (=> b!6779984 (= e!4092878 (and tp!1857686 tp!1857687))))

(assert (=> b!6778589 (= tp!1857389 e!4092878)))

(declare-fun b!6779982 () Bool)

(declare-fun tp!1857683 () Bool)

(declare-fun tp!1857684 () Bool)

(assert (=> b!6779982 (= e!4092878 (and tp!1857683 tp!1857684))))

(assert (= (and b!6778589 ((_ is ElementMatch!16601) (regTwo!33714 (reg!16930 r!7292)))) b!6779981))

(assert (= (and b!6778589 ((_ is Concat!25446) (regTwo!33714 (reg!16930 r!7292)))) b!6779982))

(assert (= (and b!6778589 ((_ is Star!16601) (regTwo!33714 (reg!16930 r!7292)))) b!6779983))

(assert (= (and b!6778589 ((_ is Union!16601) (regTwo!33714 (reg!16930 r!7292)))) b!6779984))

(declare-fun b!6779985 () Bool)

(declare-fun e!4092879 () Bool)

(assert (=> b!6779985 (= e!4092879 tp_is_empty!42455)))

(declare-fun b!6779987 () Bool)

(declare-fun tp!1857690 () Bool)

(assert (=> b!6779987 (= e!4092879 tp!1857690)))

(declare-fun b!6779988 () Bool)

(declare-fun tp!1857691 () Bool)

(declare-fun tp!1857692 () Bool)

(assert (=> b!6779988 (= e!4092879 (and tp!1857691 tp!1857692))))

(assert (=> b!6778583 (= tp!1857381 e!4092879)))

(declare-fun b!6779986 () Bool)

(declare-fun tp!1857688 () Bool)

(declare-fun tp!1857689 () Bool)

(assert (=> b!6779986 (= e!4092879 (and tp!1857688 tp!1857689))))

(assert (= (and b!6778583 ((_ is ElementMatch!16601) (regOne!33715 (regOne!33714 r!7292)))) b!6779985))

(assert (= (and b!6778583 ((_ is Concat!25446) (regOne!33715 (regOne!33714 r!7292)))) b!6779986))

(assert (= (and b!6778583 ((_ is Star!16601) (regOne!33715 (regOne!33714 r!7292)))) b!6779987))

(assert (= (and b!6778583 ((_ is Union!16601) (regOne!33715 (regOne!33714 r!7292)))) b!6779988))

(declare-fun b!6779989 () Bool)

(declare-fun e!4092880 () Bool)

(assert (=> b!6779989 (= e!4092880 tp_is_empty!42455)))

(declare-fun b!6779991 () Bool)

(declare-fun tp!1857695 () Bool)

(assert (=> b!6779991 (= e!4092880 tp!1857695)))

(declare-fun b!6779992 () Bool)

(declare-fun tp!1857696 () Bool)

(declare-fun tp!1857697 () Bool)

(assert (=> b!6779992 (= e!4092880 (and tp!1857696 tp!1857697))))

(assert (=> b!6778583 (= tp!1857382 e!4092880)))

(declare-fun b!6779990 () Bool)

(declare-fun tp!1857693 () Bool)

(declare-fun tp!1857694 () Bool)

(assert (=> b!6779990 (= e!4092880 (and tp!1857693 tp!1857694))))

(assert (= (and b!6778583 ((_ is ElementMatch!16601) (regTwo!33715 (regOne!33714 r!7292)))) b!6779989))

(assert (= (and b!6778583 ((_ is Concat!25446) (regTwo!33715 (regOne!33714 r!7292)))) b!6779990))

(assert (= (and b!6778583 ((_ is Star!16601) (regTwo!33715 (regOne!33714 r!7292)))) b!6779991))

(assert (= (and b!6778583 ((_ is Union!16601) (regTwo!33715 (regOne!33714 r!7292)))) b!6779992))

(declare-fun b!6779993 () Bool)

(declare-fun e!4092881 () Bool)

(assert (=> b!6779993 (= e!4092881 tp_is_empty!42455)))

(declare-fun b!6779995 () Bool)

(declare-fun tp!1857700 () Bool)

(assert (=> b!6779995 (= e!4092881 tp!1857700)))

(declare-fun b!6779996 () Bool)

(declare-fun tp!1857701 () Bool)

(declare-fun tp!1857702 () Bool)

(assert (=> b!6779996 (= e!4092881 (and tp!1857701 tp!1857702))))

(assert (=> b!6778591 (= tp!1857391 e!4092881)))

(declare-fun b!6779994 () Bool)

(declare-fun tp!1857698 () Bool)

(declare-fun tp!1857699 () Bool)

(assert (=> b!6779994 (= e!4092881 (and tp!1857698 tp!1857699))))

(assert (= (and b!6778591 ((_ is ElementMatch!16601) (regOne!33715 (reg!16930 r!7292)))) b!6779993))

(assert (= (and b!6778591 ((_ is Concat!25446) (regOne!33715 (reg!16930 r!7292)))) b!6779994))

(assert (= (and b!6778591 ((_ is Star!16601) (regOne!33715 (reg!16930 r!7292)))) b!6779995))

(assert (= (and b!6778591 ((_ is Union!16601) (regOne!33715 (reg!16930 r!7292)))) b!6779996))

(declare-fun b!6779997 () Bool)

(declare-fun e!4092882 () Bool)

(assert (=> b!6779997 (= e!4092882 tp_is_empty!42455)))

(declare-fun b!6779999 () Bool)

(declare-fun tp!1857705 () Bool)

(assert (=> b!6779999 (= e!4092882 tp!1857705)))

(declare-fun b!6780000 () Bool)

(declare-fun tp!1857706 () Bool)

(declare-fun tp!1857707 () Bool)

(assert (=> b!6780000 (= e!4092882 (and tp!1857706 tp!1857707))))

(assert (=> b!6778591 (= tp!1857392 e!4092882)))

(declare-fun b!6779998 () Bool)

(declare-fun tp!1857703 () Bool)

(declare-fun tp!1857704 () Bool)

(assert (=> b!6779998 (= e!4092882 (and tp!1857703 tp!1857704))))

(assert (= (and b!6778591 ((_ is ElementMatch!16601) (regTwo!33715 (reg!16930 r!7292)))) b!6779997))

(assert (= (and b!6778591 ((_ is Concat!25446) (regTwo!33715 (reg!16930 r!7292)))) b!6779998))

(assert (= (and b!6778591 ((_ is Star!16601) (regTwo!33715 (reg!16930 r!7292)))) b!6779999))

(assert (= (and b!6778591 ((_ is Union!16601) (regTwo!33715 (reg!16930 r!7292)))) b!6780000))

(declare-fun b!6780001 () Bool)

(declare-fun e!4092883 () Bool)

(assert (=> b!6780001 (= e!4092883 tp_is_empty!42455)))

(declare-fun b!6780003 () Bool)

(declare-fun tp!1857710 () Bool)

(assert (=> b!6780003 (= e!4092883 tp!1857710)))

(declare-fun b!6780004 () Bool)

(declare-fun tp!1857711 () Bool)

(declare-fun tp!1857712 () Bool)

(assert (=> b!6780004 (= e!4092883 (and tp!1857711 tp!1857712))))

(assert (=> b!6778582 (= tp!1857380 e!4092883)))

(declare-fun b!6780002 () Bool)

(declare-fun tp!1857708 () Bool)

(declare-fun tp!1857709 () Bool)

(assert (=> b!6780002 (= e!4092883 (and tp!1857708 tp!1857709))))

(assert (= (and b!6778582 ((_ is ElementMatch!16601) (reg!16930 (regOne!33714 r!7292)))) b!6780001))

(assert (= (and b!6778582 ((_ is Concat!25446) (reg!16930 (regOne!33714 r!7292)))) b!6780002))

(assert (= (and b!6778582 ((_ is Star!16601) (reg!16930 (regOne!33714 r!7292)))) b!6780003))

(assert (= (and b!6778582 ((_ is Union!16601) (reg!16930 (regOne!33714 r!7292)))) b!6780004))

(declare-fun b!6780005 () Bool)

(declare-fun e!4092884 () Bool)

(assert (=> b!6780005 (= e!4092884 tp_is_empty!42455)))

(declare-fun b!6780007 () Bool)

(declare-fun tp!1857715 () Bool)

(assert (=> b!6780007 (= e!4092884 tp!1857715)))

(declare-fun b!6780008 () Bool)

(declare-fun tp!1857716 () Bool)

(declare-fun tp!1857717 () Bool)

(assert (=> b!6780008 (= e!4092884 (and tp!1857716 tp!1857717))))

(assert (=> b!6778586 (= tp!1857385 e!4092884)))

(declare-fun b!6780006 () Bool)

(declare-fun tp!1857713 () Bool)

(declare-fun tp!1857714 () Bool)

(assert (=> b!6780006 (= e!4092884 (and tp!1857713 tp!1857714))))

(assert (= (and b!6778586 ((_ is ElementMatch!16601) (reg!16930 (regTwo!33714 r!7292)))) b!6780005))

(assert (= (and b!6778586 ((_ is Concat!25446) (reg!16930 (regTwo!33714 r!7292)))) b!6780006))

(assert (= (and b!6778586 ((_ is Star!16601) (reg!16930 (regTwo!33714 r!7292)))) b!6780007))

(assert (= (and b!6778586 ((_ is Union!16601) (reg!16930 (regTwo!33714 r!7292)))) b!6780008))

(declare-fun b!6780009 () Bool)

(declare-fun e!4092885 () Bool)

(assert (=> b!6780009 (= e!4092885 tp_is_empty!42455)))

(declare-fun b!6780011 () Bool)

(declare-fun tp!1857720 () Bool)

(assert (=> b!6780011 (= e!4092885 tp!1857720)))

(declare-fun b!6780012 () Bool)

(declare-fun tp!1857721 () Bool)

(declare-fun tp!1857722 () Bool)

(assert (=> b!6780012 (= e!4092885 (and tp!1857721 tp!1857722))))

(assert (=> b!6778585 (= tp!1857383 e!4092885)))

(declare-fun b!6780010 () Bool)

(declare-fun tp!1857718 () Bool)

(declare-fun tp!1857719 () Bool)

(assert (=> b!6780010 (= e!4092885 (and tp!1857718 tp!1857719))))

(assert (= (and b!6778585 ((_ is ElementMatch!16601) (regOne!33714 (regTwo!33714 r!7292)))) b!6780009))

(assert (= (and b!6778585 ((_ is Concat!25446) (regOne!33714 (regTwo!33714 r!7292)))) b!6780010))

(assert (= (and b!6778585 ((_ is Star!16601) (regOne!33714 (regTwo!33714 r!7292)))) b!6780011))

(assert (= (and b!6778585 ((_ is Union!16601) (regOne!33714 (regTwo!33714 r!7292)))) b!6780012))

(declare-fun b!6780013 () Bool)

(declare-fun e!4092886 () Bool)

(assert (=> b!6780013 (= e!4092886 tp_is_empty!42455)))

(declare-fun b!6780015 () Bool)

(declare-fun tp!1857725 () Bool)

(assert (=> b!6780015 (= e!4092886 tp!1857725)))

(declare-fun b!6780016 () Bool)

(declare-fun tp!1857726 () Bool)

(declare-fun tp!1857727 () Bool)

(assert (=> b!6780016 (= e!4092886 (and tp!1857726 tp!1857727))))

(assert (=> b!6778585 (= tp!1857384 e!4092886)))

(declare-fun b!6780014 () Bool)

(declare-fun tp!1857723 () Bool)

(declare-fun tp!1857724 () Bool)

(assert (=> b!6780014 (= e!4092886 (and tp!1857723 tp!1857724))))

(assert (= (and b!6778585 ((_ is ElementMatch!16601) (regTwo!33714 (regTwo!33714 r!7292)))) b!6780013))

(assert (= (and b!6778585 ((_ is Concat!25446) (regTwo!33714 (regTwo!33714 r!7292)))) b!6780014))

(assert (= (and b!6778585 ((_ is Star!16601) (regTwo!33714 (regTwo!33714 r!7292)))) b!6780015))

(assert (= (and b!6778585 ((_ is Union!16601) (regTwo!33714 (regTwo!33714 r!7292)))) b!6780016))

(declare-fun b!6780017 () Bool)

(declare-fun e!4092887 () Bool)

(declare-fun tp!1857728 () Bool)

(assert (=> b!6780017 (= e!4092887 (and tp_is_empty!42455 tp!1857728))))

(assert (=> b!6778622 (= tp!1857423 e!4092887)))

(assert (= (and b!6778622 ((_ is Cons!65978) (t!379815 (t!379815 s!2326)))) b!6780017))

(declare-fun b!6780018 () Bool)

(declare-fun e!4092888 () Bool)

(assert (=> b!6780018 (= e!4092888 tp_is_empty!42455)))

(declare-fun b!6780020 () Bool)

(declare-fun tp!1857731 () Bool)

(assert (=> b!6780020 (= e!4092888 tp!1857731)))

(declare-fun b!6780021 () Bool)

(declare-fun tp!1857732 () Bool)

(declare-fun tp!1857733 () Bool)

(assert (=> b!6780021 (= e!4092888 (and tp!1857732 tp!1857733))))

(assert (=> b!6778595 (= tp!1857396 e!4092888)))

(declare-fun b!6780019 () Bool)

(declare-fun tp!1857729 () Bool)

(declare-fun tp!1857730 () Bool)

(assert (=> b!6780019 (= e!4092888 (and tp!1857729 tp!1857730))))

(assert (= (and b!6778595 ((_ is ElementMatch!16601) (regOne!33715 (regOne!33715 r!7292)))) b!6780018))

(assert (= (and b!6778595 ((_ is Concat!25446) (regOne!33715 (regOne!33715 r!7292)))) b!6780019))

(assert (= (and b!6778595 ((_ is Star!16601) (regOne!33715 (regOne!33715 r!7292)))) b!6780020))

(assert (= (and b!6778595 ((_ is Union!16601) (regOne!33715 (regOne!33715 r!7292)))) b!6780021))

(declare-fun b!6780022 () Bool)

(declare-fun e!4092889 () Bool)

(assert (=> b!6780022 (= e!4092889 tp_is_empty!42455)))

(declare-fun b!6780024 () Bool)

(declare-fun tp!1857736 () Bool)

(assert (=> b!6780024 (= e!4092889 tp!1857736)))

(declare-fun b!6780025 () Bool)

(declare-fun tp!1857737 () Bool)

(declare-fun tp!1857738 () Bool)

(assert (=> b!6780025 (= e!4092889 (and tp!1857737 tp!1857738))))

(assert (=> b!6778595 (= tp!1857397 e!4092889)))

(declare-fun b!6780023 () Bool)

(declare-fun tp!1857734 () Bool)

(declare-fun tp!1857735 () Bool)

(assert (=> b!6780023 (= e!4092889 (and tp!1857734 tp!1857735))))

(assert (= (and b!6778595 ((_ is ElementMatch!16601) (regTwo!33715 (regOne!33715 r!7292)))) b!6780022))

(assert (= (and b!6778595 ((_ is Concat!25446) (regTwo!33715 (regOne!33715 r!7292)))) b!6780023))

(assert (= (and b!6778595 ((_ is Star!16601) (regTwo!33715 (regOne!33715 r!7292)))) b!6780024))

(assert (= (and b!6778595 ((_ is Union!16601) (regTwo!33715 (regOne!33715 r!7292)))) b!6780025))

(declare-fun b!6780026 () Bool)

(declare-fun e!4092890 () Bool)

(declare-fun tp!1857739 () Bool)

(declare-fun tp!1857740 () Bool)

(assert (=> b!6780026 (= e!4092890 (and tp!1857739 tp!1857740))))

(assert (=> b!6778609 (= tp!1857413 e!4092890)))

(assert (= (and b!6778609 ((_ is Cons!65979) (exprs!6485 setElem!46357))) b!6780026))

(declare-fun b!6780027 () Bool)

(declare-fun e!4092891 () Bool)

(assert (=> b!6780027 (= e!4092891 tp_is_empty!42455)))

(declare-fun b!6780029 () Bool)

(declare-fun tp!1857743 () Bool)

(assert (=> b!6780029 (= e!4092891 tp!1857743)))

(declare-fun b!6780030 () Bool)

(declare-fun tp!1857744 () Bool)

(declare-fun tp!1857745 () Bool)

(assert (=> b!6780030 (= e!4092891 (and tp!1857744 tp!1857745))))

(assert (=> b!6778593 (= tp!1857393 e!4092891)))

(declare-fun b!6780028 () Bool)

(declare-fun tp!1857741 () Bool)

(declare-fun tp!1857742 () Bool)

(assert (=> b!6780028 (= e!4092891 (and tp!1857741 tp!1857742))))

(assert (= (and b!6778593 ((_ is ElementMatch!16601) (regOne!33714 (regOne!33715 r!7292)))) b!6780027))

(assert (= (and b!6778593 ((_ is Concat!25446) (regOne!33714 (regOne!33715 r!7292)))) b!6780028))

(assert (= (and b!6778593 ((_ is Star!16601) (regOne!33714 (regOne!33715 r!7292)))) b!6780029))

(assert (= (and b!6778593 ((_ is Union!16601) (regOne!33714 (regOne!33715 r!7292)))) b!6780030))

(declare-fun b!6780031 () Bool)

(declare-fun e!4092892 () Bool)

(assert (=> b!6780031 (= e!4092892 tp_is_empty!42455)))

(declare-fun b!6780033 () Bool)

(declare-fun tp!1857748 () Bool)

(assert (=> b!6780033 (= e!4092892 tp!1857748)))

(declare-fun b!6780034 () Bool)

(declare-fun tp!1857749 () Bool)

(declare-fun tp!1857750 () Bool)

(assert (=> b!6780034 (= e!4092892 (and tp!1857749 tp!1857750))))

(assert (=> b!6778593 (= tp!1857394 e!4092892)))

(declare-fun b!6780032 () Bool)

(declare-fun tp!1857746 () Bool)

(declare-fun tp!1857747 () Bool)

(assert (=> b!6780032 (= e!4092892 (and tp!1857746 tp!1857747))))

(assert (= (and b!6778593 ((_ is ElementMatch!16601) (regTwo!33714 (regOne!33715 r!7292)))) b!6780031))

(assert (= (and b!6778593 ((_ is Concat!25446) (regTwo!33714 (regOne!33715 r!7292)))) b!6780032))

(assert (= (and b!6778593 ((_ is Star!16601) (regTwo!33714 (regOne!33715 r!7292)))) b!6780033))

(assert (= (and b!6778593 ((_ is Union!16601) (regTwo!33714 (regOne!33715 r!7292)))) b!6780034))

(declare-fun b!6780035 () Bool)

(declare-fun e!4092893 () Bool)

(assert (=> b!6780035 (= e!4092893 tp_is_empty!42455)))

(declare-fun b!6780037 () Bool)

(declare-fun tp!1857753 () Bool)

(assert (=> b!6780037 (= e!4092893 tp!1857753)))

(declare-fun b!6780038 () Bool)

(declare-fun tp!1857754 () Bool)

(declare-fun tp!1857755 () Bool)

(assert (=> b!6780038 (= e!4092893 (and tp!1857754 tp!1857755))))

(assert (=> b!6778594 (= tp!1857395 e!4092893)))

(declare-fun b!6780036 () Bool)

(declare-fun tp!1857751 () Bool)

(declare-fun tp!1857752 () Bool)

(assert (=> b!6780036 (= e!4092893 (and tp!1857751 tp!1857752))))

(assert (= (and b!6778594 ((_ is ElementMatch!16601) (reg!16930 (regOne!33715 r!7292)))) b!6780035))

(assert (= (and b!6778594 ((_ is Concat!25446) (reg!16930 (regOne!33715 r!7292)))) b!6780036))

(assert (= (and b!6778594 ((_ is Star!16601) (reg!16930 (regOne!33715 r!7292)))) b!6780037))

(assert (= (and b!6778594 ((_ is Union!16601) (reg!16930 (regOne!33715 r!7292)))) b!6780038))

(declare-fun condSetEmpty!46371 () Bool)

(assert (=> setNonEmpty!46357 (= condSetEmpty!46371 (= setRest!46357 ((as const (Array Context!11970 Bool)) false)))))

(declare-fun setRes!46371 () Bool)

(assert (=> setNonEmpty!46357 (= tp!1857414 setRes!46371)))

(declare-fun setIsEmpty!46371 () Bool)

(assert (=> setIsEmpty!46371 setRes!46371))

(declare-fun setElem!46371 () Context!11970)

(declare-fun e!4092894 () Bool)

(declare-fun setNonEmpty!46371 () Bool)

(declare-fun tp!1857757 () Bool)

(assert (=> setNonEmpty!46371 (= setRes!46371 (and tp!1857757 (inv!84749 setElem!46371) e!4092894))))

(declare-fun setRest!46371 () (InoxSet Context!11970))

(assert (=> setNonEmpty!46371 (= setRest!46357 ((_ map or) (store ((as const (Array Context!11970 Bool)) false) setElem!46371 true) setRest!46371))))

(declare-fun b!6780039 () Bool)

(declare-fun tp!1857756 () Bool)

(assert (=> b!6780039 (= e!4092894 tp!1857756)))

(assert (= (and setNonEmpty!46357 condSetEmpty!46371) setIsEmpty!46371))

(assert (= (and setNonEmpty!46357 (not condSetEmpty!46371)) setNonEmpty!46371))

(assert (= setNonEmpty!46371 b!6780039))

(declare-fun m!7528916 () Bool)

(assert (=> setNonEmpty!46371 m!7528916))

(declare-fun b_lambda!255287 () Bool)

(assert (= b_lambda!255279 (or d!2129460 b_lambda!255287)))

(declare-fun bs!1805762 () Bool)

(declare-fun d!2130138 () Bool)

(assert (= bs!1805762 (and d!2130138 d!2129460)))

(assert (=> bs!1805762 (= (dynLambda!26328 lambda!381466 (h!72427 (unfocusZipperList!2022 zl!343))) (validRegex!8337 (h!72427 (unfocusZipperList!2022 zl!343))))))

(declare-fun m!7528918 () Bool)

(assert (=> bs!1805762 m!7528918))

(assert (=> b!6779715 d!2130138))

(declare-fun b_lambda!255289 () Bool)

(assert (= b_lambda!255283 (or d!2129282 b_lambda!255289)))

(declare-fun bs!1805763 () Bool)

(declare-fun d!2130140 () Bool)

(assert (= bs!1805763 (and d!2130140 d!2129282)))

(assert (=> bs!1805763 (= (dynLambda!26328 lambda!381401 (h!72427 (exprs!6485 (h!72428 zl!343)))) (validRegex!8337 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(declare-fun m!7528920 () Bool)

(assert (=> bs!1805763 m!7528920))

(assert (=> b!6779796 d!2130140))

(declare-fun b_lambda!255291 () Bool)

(assert (= b_lambda!255281 (or b!6777699 b_lambda!255291)))

(assert (=> d!2130062 d!2129500))

(declare-fun b_lambda!255293 () Bool)

(assert (= b_lambda!255285 (or d!2129462 b_lambda!255293)))

(declare-fun bs!1805764 () Bool)

(declare-fun d!2130142 () Bool)

(assert (= bs!1805764 (and d!2130142 d!2129462)))

(assert (=> bs!1805764 (= (dynLambda!26328 lambda!381469 (h!72427 lt!2444507)) (validRegex!8337 (h!72427 lt!2444507)))))

(declare-fun m!7528922 () Bool)

(assert (=> bs!1805764 m!7528922))

(assert (=> b!6779848 d!2130142))

(declare-fun b_lambda!255295 () Bool)

(assert (= b_lambda!255251 (or b!6777699 b_lambda!255295)))

(assert (=> d!2129898 d!2129504))

(declare-fun b_lambda!255297 () Bool)

(assert (= b_lambda!255257 (or d!2129458 b_lambda!255297)))

(declare-fun bs!1805765 () Bool)

(declare-fun d!2130144 () Bool)

(assert (= bs!1805765 (and d!2130144 d!2129458)))

(assert (=> bs!1805765 (= (dynLambda!26328 lambda!381463 (h!72427 (exprs!6485 (h!72428 zl!343)))) (validRegex!8337 (h!72427 (exprs!6485 (h!72428 zl!343)))))))

(assert (=> bs!1805765 m!7528920))

(assert (=> b!6779530 d!2130144))

(declare-fun b_lambda!255299 () Bool)

(assert (= b_lambda!255239 (or b!6777699 b_lambda!255299)))

(assert (=> d!2129786 d!2129498))

(declare-fun b_lambda!255301 () Bool)

(assert (= b_lambda!255253 (or d!2129480 b_lambda!255301)))

(declare-fun bs!1805766 () Bool)

(declare-fun d!2130146 () Bool)

(assert (= bs!1805766 (and d!2130146 d!2129480)))

(assert (=> bs!1805766 (= (dynLambda!26328 lambda!381471 (h!72427 (exprs!6485 lt!2444367))) (validRegex!8337 (h!72427 (exprs!6485 lt!2444367))))))

(declare-fun m!7528924 () Bool)

(assert (=> bs!1805766 m!7528924))

(assert (=> b!6779395 d!2130146))

(declare-fun b_lambda!255303 () Bool)

(assert (= b_lambda!255249 (or b!6777699 b_lambda!255303)))

(assert (=> d!2129896 d!2129502))

(declare-fun b_lambda!255305 () Bool)

(assert (= b_lambda!255233 (or d!2129456 b_lambda!255305)))

(declare-fun bs!1805767 () Bool)

(declare-fun d!2130148 () Bool)

(assert (= bs!1805767 (and d!2130148 d!2129456)))

(assert (=> bs!1805767 (= (dynLambda!26328 lambda!381462 (h!72427 (exprs!6485 setElem!46351))) (validRegex!8337 (h!72427 (exprs!6485 setElem!46351))))))

(declare-fun m!7528926 () Bool)

(assert (=> bs!1805767 m!7528926))

(assert (=> b!6779051 d!2130148))

(check-sat (not b!6779513) (not d!2129926) (not b!6779728) (not b!6779680) (not b!6779995) (not b!6779052) (not b!6779281) (not b!6778967) (not b!6780039) (not b!6779983) (not b!6779332) (not bm!615072) (not d!2129912) (not b!6779814) (not bm!615051) (not b!6779118) (not b!6779934) (not d!2130102) (not b!6779972) (not b!6779782) tp_is_empty!42455 (not b!6779333) (not b!6779772) (not bm!615088) (not bm!615077) (not d!2129682) (not setNonEmpty!46368) (not b!6780007) (not b!6779750) (not d!2130060) (not bm!615094) (not d!2130086) (not b!6779741) (not b_lambda!255287) (not bm!615043) (not b!6779809) (not bm!615063) (not bm!614948) (not d!2130108) (not bm!615061) (not b!6779991) (not d!2129852) (not b!6779950) (not b!6779970) (not b!6779385) (not bm!615090) (not bm!614995) (not b!6779998) (not b!6779315) (not b!6778949) (not bm!614953) (not d!2129764) (not b!6779578) (not b!6779302) (not b!6778947) (not b!6779914) (not d!2130042) (not b!6780020) (not b!6779858) (not d!2129660) (not b!6779125) (not bm!615011) (not b!6779988) (not bm!614922) (not b!6779393) (not b!6779577) (not d!2130106) (not bm!614929) (not b!6779752) (not bs!1805763) (not b!6779707) (not b_lambda!255219) (not b!6779966) (not b!6778992) (not b!6779864) (not b!6778929) (not setNonEmpty!46369) (not bs!1805762) (not b!6780014) (not b!6780015) (not b!6779151) (not b!6779803) (not b!6779658) (not b!6779971) (not bm!614962) (not bm!614928) (not bm!614997) (not bm!615018) (not b!6779730) (not bm!615093) (not b!6779868) (not b!6779074) (not d!2129652) (not b!6779845) (not b!6779986) (not b!6779164) (not b!6779755) (not bm!614926) (not bs!1805766) (not b!6779063) (not d!2129982) (not bm!615092) (not d!2129984) (not d!2130078) (not b!6779846) (not b!6779550) (not b!6779978) (not b!6779314) (not b!6779933) (not b!6779975) (not b!6779862) (not b!6779922) (not b!6779916) (not b!6779163) (not b!6780019) (not bm!615056) (not b!6779519) (not b!6779913) (not d!2130098) (not b!6779033) (not b!6779097) (not b!6778857) (not b!6779517) (not b!6779980) (not bm!615078) (not b!6779657) (not bm!615065) (not b_lambda!255293) (not b!6779806) (not d!2130084) (not bm!615091) (not d!2130080) (not bm!614960) (not b!6779123) (not b!6780034) (not d!2129974) (not b!6779888) (not bm!614892) (not bm!615054) (not b_lambda!255221) (not b!6780011) (not b_lambda!255291) (not bs!1805764) (not b!6780004) (not b!6779932) (not b_lambda!255295) (not b!6780006) (not d!2130062) (not b!6779573) (not bm!615069) (not b!6779861) (not b!6780003) (not b!6779937) (not setNonEmpty!46370) (not b!6779963) (not b!6780017) (not b!6779951) (not b!6779866) (not bm!615085) (not b!6779773) (not bm!614914) (not b!6779324) (not b!6778883) (not b!6779491) (not b!6779372) (not d!2129996) (not b!6779152) (not b!6779729) (not d!2130068) (not b!6779976) (not b!6779930) (not b!6780023) (not b!6779955) (not b!6779942) (not b!6779262) (not d!2129800) (not bs!1805767) (not d!2129890) (not b!6779548) (not bm!615050) (not d!2130070) (not b!6779318) (not bm!614986) (not b!6779511) (not d!2129896) (not b!6779943) (not bm!614890) (not b!6779987) (not b_lambda!255289) (not bm!615074) (not d!2129786) (not b_lambda!255305) (not d!2130048) (not b!6779804) (not d!2130036) (not b!6779925) (not b!6779904) (not b!6779167) (not b_lambda!255299) (not bm!615016) (not bm!615086) (not bm!615087) (not b!6779727) (not b!6779800) (not b!6779926) (not b!6778888) (not d!2129790) (not b!6779863) (not b!6779015) (not d!2129866) (not b!6779979) (not b!6780010) (not b!6779843) (not b!6779016) (not b!6779579) (not b!6779574) (not b!6779749) (not bm!614952) (not d!2129988) (not b!6779544) (not b!6779360) (not b!6779127) (not b!6778990) (not d!2130030) (not b!6779931) (not b!6779917) (not b!6780033) (not b_lambda!255297) (not bm!615066) (not b_lambda!255223) (not b!6779974) (not d!2129668) (not b!6779128) (not b!6780032) (not d!2130132) (not b!6779716) (not b!6780016) (not bm!614910) (not b!6779968) (not bm!615096) (not bm!614992) (not b!6779764) (not d!2129960) (not d!2129902) (not d!2129924) (not b!6779982) (not b!6779833) (not b!6778884) (not b!6779779) (not b!6779984) (not d!2130038) (not bm!615048) (not b!6779799) (not bm!614899) (not bm!614961) (not b!6779514) (not b!6779834) (not b!6780025) (not b!6779996) (not b!6778889) (not bm!614920) (not b!6779531) (not bm!614996) (not b!6780036) (not b!6779797) (not d!2130074) (not d!2130072) (not b!6779918) (not bm!615084) (not d!2129966) (not b!6779777) (not b!6779300) (not bm!615067) (not b!6779849) (not b!6779880) (not d!2129990) (not b!6780002) (not b!6780037) (not b!6779939) (not bm!614927) (not bm!614921) (not b!6779361) (not b!6779958) (not d!2129888) (not b!6779902) (not b!6779316) (not b!6779299) (not b!6779105) (not b!6779807) (not d!2130002) (not b!6780026) (not b!6779890) (not b!6779522) (not bm!614966) (not d!2130116) (not d!2130050) (not b!6779311) (not b!6780000) (not b!6779394) (not b!6780038) (not bm!615076) (not b!6779124) (not d!2129864) (not bm!614916) (not d!2130046) (not b!6779098) (not b!6779810) (not b!6778986) (not bm!615012) (not b!6779952) (not b!6779941) (not d!2130032) (not b!6779576) (not b!6779962) (not b!6779936) (not b!6780028) (not b!6780030) (not bm!615080) (not d!2129892) (not b!6779879) (not b!6779396) (not setNonEmpty!46371) (not b!6779754) (not b!6779120) (not b!6779319) (not d!2129796) (not b!6779949) (not b!6779107) (not bm!614990) (not b!6779947) (not b!6779812) (not b!6778887) (not bm!615052) (not d!2129992) (not b!6779886) (not bm!614932) (not d!2130088) (not b!6779169) (not b!6779121) (not d!2130000) (not bm!614911) (not b_lambda!255303) (not b!6779946) (not b!6779927) (not b!6779954) (not b!6779753) (not b!6780008) (not b!6779898) (not d!2129848) (not b!6779929) (not b!6779994) (not b!6779725) (not bm!614909) (not d!2129976) (not bm!614947) (not b!6779945) (not b!6779959) (not b!6778991) (not d!2129836) (not b!6779510) (not b!6779897) (not b!6779921) (not b!6778989) (not d!2130134) (not bm!615013) (not b_lambda!255225) (not b!6779964) (not b!6779990) (not d!2129798) (not bm!615060) (not b!6780024) (not b!6779518) (not b!6779739) (not d!2129770) (not d!2129986) (not b!6779967) (not b!6779835) (not b!6779724) (not b!6779780) (not b!6780029) (not bm!615007) (not d!2130076) (not b!6778886) (not bm!614954) (not b!6779166) (not d!2129730) (not b!6779312) (not d!2129898) (not bm!615041) (not b!6779788) (not bm!614991) (not bm!615062) (not bm!614984) (not b!6778987) (not d!2130104) (not b!6779106) (not d!2129712) (not b!6779865) (not bm!614946) (not d!2129900) (not b!6779841) (not b!6779617) (not b!6779956) (not b!6779783) (not b_lambda!255301) (not bs!1805765) (not b!6779960) (not b!6779992) (not b!6779920) (not d!2129778) (not d!2130096) (not b!6780021) (not b!6779168) (not b!6779785) (not b!6779545) (not b!6780012) (not b!6779515) (not b!6779938) (not b!6779860) (not b!6778978) (not d!2129952) (not setNonEmpty!46364) (not d!2129920) (not d!2130058) (not b!6779857) (not b!6779999) (not bm!615071) (not bm!614993) (not b!6779781) (not b!6779282))
(check-sat)
