; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572282 () Bool)

(assert start!572282)

(declare-fun b!5467197 () Bool)

(assert (=> b!5467197 true))

(assert (=> b!5467197 true))

(declare-fun lambda!290623 () Int)

(declare-fun lambda!290622 () Int)

(assert (=> b!5467197 (not (= lambda!290623 lambda!290622))))

(assert (=> b!5467197 true))

(assert (=> b!5467197 true))

(declare-fun lambda!290624 () Int)

(assert (=> b!5467197 (not (= lambda!290624 lambda!290622))))

(assert (=> b!5467197 (not (= lambda!290624 lambda!290623))))

(assert (=> b!5467197 true))

(assert (=> b!5467197 true))

(declare-fun b!5467211 () Bool)

(assert (=> b!5467211 true))

(declare-fun b!5467192 () Bool)

(declare-fun e!3384737 () Bool)

(declare-fun tp_is_empty!39903 () Bool)

(declare-fun tp!1503715 () Bool)

(assert (=> b!5467192 (= e!3384737 (and tp_is_empty!39903 tp!1503715))))

(declare-fun b!5467193 () Bool)

(declare-fun e!3384742 () Bool)

(declare-fun e!3384738 () Bool)

(assert (=> b!5467193 (= e!3384742 e!3384738)))

(declare-fun res!2329514 () Bool)

(assert (=> b!5467193 (=> res!2329514 e!3384738)))

(declare-datatypes ((C!30920 0))(
  ( (C!30921 (val!25162 Int)) )
))
(declare-datatypes ((List!62274 0))(
  ( (Nil!62150) (Cons!62150 (h!68598 C!30920) (t!375503 List!62274)) )
))
(declare-fun s!2326 () List!62274)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15325 0))(
  ( (ElementMatch!15325 (c!955101 C!30920)) (Concat!24170 (regOne!31162 Regex!15325) (regTwo!31162 Regex!15325)) (EmptyExpr!15325) (Star!15325 (reg!15654 Regex!15325)) (EmptyLang!15325) (Union!15325 (regOne!31163 Regex!15325) (regTwo!31163 Regex!15325)) )
))
(declare-datatypes ((List!62275 0))(
  ( (Nil!62151) (Cons!62151 (h!68599 Regex!15325) (t!375504 List!62275)) )
))
(declare-datatypes ((Context!9418 0))(
  ( (Context!9419 (exprs!5209 List!62275)) )
))
(declare-fun lt!2233862 () (InoxSet Context!9418))

(declare-fun lt!2233868 () (InoxSet Context!9418))

(declare-fun derivationStepZipper!1520 ((InoxSet Context!9418) C!30920) (InoxSet Context!9418))

(assert (=> b!5467193 (= res!2329514 (not (= lt!2233868 (derivationStepZipper!1520 lt!2233862 (h!68598 s!2326)))))))

(declare-fun lambda!290625 () Int)

(declare-fun lt!2233852 () Context!9418)

(declare-fun flatMap!1028 ((InoxSet Context!9418) Int) (InoxSet Context!9418))

(declare-fun derivationStepZipperUp!677 (Context!9418 C!30920) (InoxSet Context!9418))

(assert (=> b!5467193 (= (flatMap!1028 lt!2233862 lambda!290625) (derivationStepZipperUp!677 lt!2233852 (h!68598 s!2326)))))

(declare-datatypes ((Unit!155100 0))(
  ( (Unit!155101) )
))
(declare-fun lt!2233858 () Unit!155100)

(declare-fun lemmaFlatMapOnSingletonSet!560 ((InoxSet Context!9418) Context!9418 Int) Unit!155100)

(assert (=> b!5467193 (= lt!2233858 (lemmaFlatMapOnSingletonSet!560 lt!2233862 lt!2233852 lambda!290625))))

(declare-fun lt!2233869 () (InoxSet Context!9418))

(declare-fun lt!2233870 () Context!9418)

(assert (=> b!5467193 (= (flatMap!1028 lt!2233869 lambda!290625) (derivationStepZipperUp!677 lt!2233870 (h!68598 s!2326)))))

(declare-fun lt!2233855 () Unit!155100)

(assert (=> b!5467193 (= lt!2233855 (lemmaFlatMapOnSingletonSet!560 lt!2233869 lt!2233870 lambda!290625))))

(declare-fun lt!2233860 () (InoxSet Context!9418))

(assert (=> b!5467193 (= lt!2233860 (derivationStepZipperUp!677 lt!2233852 (h!68598 s!2326)))))

(declare-fun lt!2233871 () (InoxSet Context!9418))

(assert (=> b!5467193 (= lt!2233871 (derivationStepZipperUp!677 lt!2233870 (h!68598 s!2326)))))

(assert (=> b!5467193 (= lt!2233862 (store ((as const (Array Context!9418 Bool)) false) lt!2233852 true))))

(assert (=> b!5467193 (= lt!2233869 (store ((as const (Array Context!9418 Bool)) false) lt!2233870 true))))

(declare-fun r!7292 () Regex!15325)

(assert (=> b!5467193 (= lt!2233870 (Context!9419 (Cons!62151 (reg!15654 r!7292) Nil!62151)))))

(declare-fun b!5467194 () Bool)

(declare-fun res!2329519 () Bool)

(assert (=> b!5467194 (=> res!2329519 e!3384742)))

(declare-fun lt!2233872 () Context!9418)

(declare-datatypes ((List!62276 0))(
  ( (Nil!62152) (Cons!62152 (h!68600 Context!9418) (t!375505 List!62276)) )
))
(declare-fun unfocusZipper!1067 (List!62276) Regex!15325)

(assert (=> b!5467194 (= res!2329519 (not (= (unfocusZipper!1067 (Cons!62152 lt!2233872 Nil!62152)) (Concat!24170 (reg!15654 r!7292) r!7292))))))

(declare-fun b!5467195 () Bool)

(declare-fun res!2329517 () Bool)

(declare-fun e!3384741 () Bool)

(assert (=> b!5467195 (=> (not res!2329517) (not e!3384741))))

(declare-fun z!1189 () (InoxSet Context!9418))

(declare-fun zl!343 () List!62276)

(declare-fun toList!9109 ((InoxSet Context!9418)) List!62276)

(assert (=> b!5467195 (= res!2329517 (= (toList!9109 z!1189) zl!343))))

(declare-fun b!5467196 () Bool)

(declare-fun res!2329524 () Bool)

(assert (=> b!5467196 (=> res!2329524 e!3384742)))

(declare-fun lt!2233853 () (InoxSet Context!9418))

(declare-fun matchZipper!1543 ((InoxSet Context!9418) List!62274) Bool)

(assert (=> b!5467196 (= res!2329524 (not (= (matchZipper!1543 lt!2233853 s!2326) (matchZipper!1543 (derivationStepZipper!1520 lt!2233853 (h!68598 s!2326)) (t!375503 s!2326)))))))

(declare-fun e!3384740 () Bool)

(declare-fun e!3384746 () Bool)

(assert (=> b!5467197 (= e!3384740 e!3384746)))

(declare-fun res!2329523 () Bool)

(assert (=> b!5467197 (=> res!2329523 e!3384746)))

(declare-fun lt!2233864 () Bool)

(declare-fun e!3384735 () Bool)

(assert (=> b!5467197 (= res!2329523 (not (= lt!2233864 e!3384735)))))

(declare-fun res!2329513 () Bool)

(assert (=> b!5467197 (=> res!2329513 e!3384735)))

(declare-fun isEmpty!34110 (List!62274) Bool)

(assert (=> b!5467197 (= res!2329513 (isEmpty!34110 s!2326))))

(declare-fun Exists!2504 (Int) Bool)

(assert (=> b!5467197 (= (Exists!2504 lambda!290622) (Exists!2504 lambda!290624))))

(declare-fun lt!2233863 () Unit!155100)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1154 (Regex!15325 Regex!15325 List!62274) Unit!155100)

(assert (=> b!5467197 (= lt!2233863 (lemmaExistCutMatchRandMatchRSpecEquivalent!1154 (reg!15654 r!7292) r!7292 s!2326))))

(assert (=> b!5467197 (= (Exists!2504 lambda!290622) (Exists!2504 lambda!290623))))

(declare-fun lt!2233873 () Unit!155100)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!478 (Regex!15325 List!62274) Unit!155100)

(assert (=> b!5467197 (= lt!2233873 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!478 (reg!15654 r!7292) s!2326))))

(declare-fun lt!2233850 () Bool)

(assert (=> b!5467197 (= lt!2233850 (Exists!2504 lambda!290622))))

(declare-datatypes ((tuple2!65044 0))(
  ( (tuple2!65045 (_1!35825 List!62274) (_2!35825 List!62274)) )
))
(declare-datatypes ((Option!15434 0))(
  ( (None!15433) (Some!15433 (v!51462 tuple2!65044)) )
))
(declare-fun isDefined!12137 (Option!15434) Bool)

(declare-fun findConcatSeparation!1848 (Regex!15325 Regex!15325 List!62274 List!62274 List!62274) Option!15434)

(assert (=> b!5467197 (= lt!2233850 (isDefined!12137 (findConcatSeparation!1848 (reg!15654 r!7292) r!7292 Nil!62150 s!2326 s!2326)))))

(declare-fun lt!2233857 () Unit!155100)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1612 (Regex!15325 Regex!15325 List!62274) Unit!155100)

(assert (=> b!5467197 (= lt!2233857 (lemmaFindConcatSeparationEquivalentToExists!1612 (reg!15654 r!7292) r!7292 s!2326))))

(declare-fun b!5467198 () Bool)

(declare-fun e!3384739 () Bool)

(assert (=> b!5467198 (= e!3384739 tp_is_empty!39903)))

(declare-fun b!5467199 () Bool)

(declare-fun e!3384743 () Bool)

(assert (=> b!5467199 (= e!3384746 e!3384743)))

(declare-fun res!2329525 () Bool)

(assert (=> b!5467199 (=> res!2329525 e!3384743)))

(declare-fun lt!2233856 () (InoxSet Context!9418))

(declare-fun lt!2233866 () (InoxSet Context!9418))

(assert (=> b!5467199 (= res!2329525 (not (= lt!2233856 lt!2233866)))))

(declare-fun derivationStepZipperDown!751 (Regex!15325 Context!9418 C!30920) (InoxSet Context!9418))

(assert (=> b!5467199 (= lt!2233866 (derivationStepZipperDown!751 r!7292 (Context!9419 Nil!62151) (h!68598 s!2326)))))

(assert (=> b!5467199 (= lt!2233856 (derivationStepZipperUp!677 (Context!9419 (Cons!62151 r!7292 Nil!62151)) (h!68598 s!2326)))))

(assert (=> b!5467199 (= lt!2233868 (derivationStepZipper!1520 z!1189 (h!68598 s!2326)))))

(declare-fun b!5467200 () Bool)

(assert (=> b!5467200 (= e!3384735 lt!2233850)))

(declare-fun b!5467201 () Bool)

(declare-fun res!2329527 () Bool)

(assert (=> b!5467201 (=> res!2329527 e!3384740)))

(declare-fun isEmpty!34111 (List!62276) Bool)

(assert (=> b!5467201 (= res!2329527 (not (isEmpty!34111 (t!375505 zl!343))))))

(declare-fun b!5467202 () Bool)

(declare-fun e!3384745 () Bool)

(declare-fun tp!1503719 () Bool)

(assert (=> b!5467202 (= e!3384745 tp!1503719)))

(declare-fun b!5467203 () Bool)

(declare-fun res!2329530 () Bool)

(assert (=> b!5467203 (=> res!2329530 e!3384738)))

(assert (=> b!5467203 (= res!2329530 (not (= (unfocusZipper!1067 (Cons!62152 lt!2233870 Nil!62152)) (reg!15654 r!7292))))))

(declare-fun b!5467204 () Bool)

(declare-fun res!2329526 () Bool)

(assert (=> b!5467204 (=> res!2329526 e!3384746)))

(get-info :version)

(assert (=> b!5467204 (= res!2329526 ((_ is Nil!62150) s!2326))))

(declare-fun setIsEmpty!35857 () Bool)

(declare-fun setRes!35857 () Bool)

(assert (=> setIsEmpty!35857 setRes!35857))

(declare-fun b!5467205 () Bool)

(declare-fun res!2329510 () Bool)

(assert (=> b!5467205 (=> res!2329510 e!3384740)))

(assert (=> b!5467205 (= res!2329510 (not ((_ is Cons!62151) (exprs!5209 (h!68600 zl!343)))))))

(declare-fun b!5467206 () Bool)

(declare-fun e!3384733 () Bool)

(declare-fun tp!1503713 () Bool)

(assert (=> b!5467206 (= e!3384733 tp!1503713)))

(declare-fun b!5467207 () Bool)

(declare-fun tp!1503721 () Bool)

(declare-fun tp!1503717 () Bool)

(assert (=> b!5467207 (= e!3384739 (and tp!1503721 tp!1503717))))

(declare-fun b!5467208 () Bool)

(declare-fun e!3384744 () Bool)

(assert (=> b!5467208 (= e!3384744 e!3384742)))

(declare-fun res!2329520 () Bool)

(assert (=> b!5467208 (=> res!2329520 e!3384742)))

(assert (=> b!5467208 (= res!2329520 (not (= lt!2233868 (derivationStepZipperDown!751 (reg!15654 r!7292) lt!2233852 (h!68598 s!2326)))))))

(declare-fun lt!2233851 () List!62275)

(assert (=> b!5467208 (= lt!2233852 (Context!9419 lt!2233851))))

(assert (=> b!5467208 (= (flatMap!1028 lt!2233853 lambda!290625) (derivationStepZipperUp!677 lt!2233872 (h!68598 s!2326)))))

(declare-fun lt!2233854 () Unit!155100)

(assert (=> b!5467208 (= lt!2233854 (lemmaFlatMapOnSingletonSet!560 lt!2233853 lt!2233872 lambda!290625))))

(declare-fun lt!2233859 () (InoxSet Context!9418))

(assert (=> b!5467208 (= lt!2233859 (derivationStepZipperUp!677 lt!2233872 (h!68598 s!2326)))))

(assert (=> b!5467208 (= lt!2233853 (store ((as const (Array Context!9418 Bool)) false) lt!2233872 true))))

(assert (=> b!5467208 (= lt!2233872 (Context!9419 (Cons!62151 (reg!15654 r!7292) lt!2233851)))))

(assert (=> b!5467208 (= lt!2233851 (Cons!62151 r!7292 Nil!62151))))

(declare-fun b!5467209 () Bool)

(declare-fun res!2329516 () Bool)

(assert (=> b!5467209 (=> res!2329516 e!3384742)))

(declare-fun lt!2233867 () Regex!15325)

(assert (=> b!5467209 (= res!2329516 (or (not (= lt!2233867 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun setNonEmpty!35857 () Bool)

(declare-fun tp!1503716 () Bool)

(declare-fun setElem!35857 () Context!9418)

(declare-fun inv!81559 (Context!9418) Bool)

(assert (=> setNonEmpty!35857 (= setRes!35857 (and tp!1503716 (inv!81559 setElem!35857) e!3384745))))

(declare-fun setRest!35857 () (InoxSet Context!9418))

(assert (=> setNonEmpty!35857 (= z!1189 ((_ map or) (store ((as const (Array Context!9418 Bool)) false) setElem!35857 true) setRest!35857))))

(declare-fun b!5467210 () Bool)

(declare-fun res!2329512 () Bool)

(assert (=> b!5467210 (=> res!2329512 e!3384740)))

(declare-fun generalisedUnion!1254 (List!62275) Regex!15325)

(declare-fun unfocusZipperList!767 (List!62276) List!62275)

(assert (=> b!5467210 (= res!2329512 (not (= r!7292 (generalisedUnion!1254 (unfocusZipperList!767 zl!343)))))))

(assert (=> b!5467211 (= e!3384743 e!3384744)))

(declare-fun res!2329528 () Bool)

(assert (=> b!5467211 (=> res!2329528 e!3384744)))

(assert (=> b!5467211 (= res!2329528 (not (= lt!2233868 lt!2233866)))))

(assert (=> b!5467211 (= (flatMap!1028 z!1189 lambda!290625) (derivationStepZipperUp!677 (h!68600 zl!343) (h!68598 s!2326)))))

(declare-fun lt!2233865 () Unit!155100)

(assert (=> b!5467211 (= lt!2233865 (lemmaFlatMapOnSingletonSet!560 z!1189 (h!68600 zl!343) lambda!290625))))

(declare-fun tp!1503720 () Bool)

(declare-fun b!5467212 () Bool)

(declare-fun e!3384736 () Bool)

(assert (=> b!5467212 (= e!3384736 (and (inv!81559 (h!68600 zl!343)) e!3384733 tp!1503720))))

(declare-fun b!5467213 () Bool)

(declare-fun e!3384734 () Bool)

(assert (=> b!5467213 (= e!3384741 e!3384734)))

(declare-fun res!2329521 () Bool)

(assert (=> b!5467213 (=> (not res!2329521) (not e!3384734))))

(assert (=> b!5467213 (= res!2329521 (= r!7292 lt!2233867))))

(assert (=> b!5467213 (= lt!2233867 (unfocusZipper!1067 zl!343))))

(declare-fun b!5467214 () Bool)

(declare-fun tp!1503714 () Bool)

(assert (=> b!5467214 (= e!3384739 tp!1503714)))

(declare-fun res!2329518 () Bool)

(assert (=> start!572282 (=> (not res!2329518) (not e!3384741))))

(declare-fun validRegex!7061 (Regex!15325) Bool)

(assert (=> start!572282 (= res!2329518 (validRegex!7061 r!7292))))

(assert (=> start!572282 e!3384741))

(assert (=> start!572282 e!3384739))

(declare-fun condSetEmpty!35857 () Bool)

(assert (=> start!572282 (= condSetEmpty!35857 (= z!1189 ((as const (Array Context!9418 Bool)) false)))))

(assert (=> start!572282 setRes!35857))

(assert (=> start!572282 e!3384736))

(assert (=> start!572282 e!3384737))

(declare-fun b!5467215 () Bool)

(declare-fun res!2329511 () Bool)

(assert (=> b!5467215 (=> res!2329511 e!3384740)))

(assert (=> b!5467215 (= res!2329511 (or ((_ is EmptyExpr!15325) r!7292) ((_ is EmptyLang!15325) r!7292) ((_ is ElementMatch!15325) r!7292) ((_ is Union!15325) r!7292) ((_ is Concat!24170) r!7292)))))

(declare-fun b!5467216 () Bool)

(assert (=> b!5467216 (= e!3384738 true)))

(declare-fun b!5467217 () Bool)

(declare-fun res!2329529 () Bool)

(assert (=> b!5467217 (=> res!2329529 e!3384738)))

(assert (=> b!5467217 (= res!2329529 (not (= (unfocusZipper!1067 (Cons!62152 lt!2233852 Nil!62152)) r!7292)))))

(declare-fun b!5467218 () Bool)

(declare-fun res!2329522 () Bool)

(assert (=> b!5467218 (=> res!2329522 e!3384740)))

(declare-fun generalisedConcat!994 (List!62275) Regex!15325)

(assert (=> b!5467218 (= res!2329522 (not (= r!7292 (generalisedConcat!994 (exprs!5209 (h!68600 zl!343))))))))

(declare-fun b!5467219 () Bool)

(declare-fun tp!1503718 () Bool)

(declare-fun tp!1503712 () Bool)

(assert (=> b!5467219 (= e!3384739 (and tp!1503718 tp!1503712))))

(declare-fun b!5467220 () Bool)

(assert (=> b!5467220 (= e!3384734 (not e!3384740))))

(declare-fun res!2329515 () Bool)

(assert (=> b!5467220 (=> res!2329515 e!3384740)))

(assert (=> b!5467220 (= res!2329515 (not ((_ is Cons!62152) zl!343)))))

(declare-fun matchRSpec!2428 (Regex!15325 List!62274) Bool)

(assert (=> b!5467220 (= lt!2233864 (matchRSpec!2428 r!7292 s!2326))))

(declare-fun matchR!7510 (Regex!15325 List!62274) Bool)

(assert (=> b!5467220 (= lt!2233864 (matchR!7510 r!7292 s!2326))))

(declare-fun lt!2233861 () Unit!155100)

(declare-fun mainMatchTheorem!2428 (Regex!15325 List!62274) Unit!155100)

(assert (=> b!5467220 (= lt!2233861 (mainMatchTheorem!2428 r!7292 s!2326))))

(assert (= (and start!572282 res!2329518) b!5467195))

(assert (= (and b!5467195 res!2329517) b!5467213))

(assert (= (and b!5467213 res!2329521) b!5467220))

(assert (= (and b!5467220 (not res!2329515)) b!5467201))

(assert (= (and b!5467201 (not res!2329527)) b!5467218))

(assert (= (and b!5467218 (not res!2329522)) b!5467205))

(assert (= (and b!5467205 (not res!2329510)) b!5467210))

(assert (= (and b!5467210 (not res!2329512)) b!5467215))

(assert (= (and b!5467215 (not res!2329511)) b!5467197))

(assert (= (and b!5467197 (not res!2329513)) b!5467200))

(assert (= (and b!5467197 (not res!2329523)) b!5467204))

(assert (= (and b!5467204 (not res!2329526)) b!5467199))

(assert (= (and b!5467199 (not res!2329525)) b!5467211))

(assert (= (and b!5467211 (not res!2329528)) b!5467208))

(assert (= (and b!5467208 (not res!2329520)) b!5467196))

(assert (= (and b!5467196 (not res!2329524)) b!5467209))

(assert (= (and b!5467209 (not res!2329516)) b!5467194))

(assert (= (and b!5467194 (not res!2329519)) b!5467193))

(assert (= (and b!5467193 (not res!2329514)) b!5467203))

(assert (= (and b!5467203 (not res!2329530)) b!5467217))

(assert (= (and b!5467217 (not res!2329529)) b!5467216))

(assert (= (and start!572282 ((_ is ElementMatch!15325) r!7292)) b!5467198))

(assert (= (and start!572282 ((_ is Concat!24170) r!7292)) b!5467219))

(assert (= (and start!572282 ((_ is Star!15325) r!7292)) b!5467214))

(assert (= (and start!572282 ((_ is Union!15325) r!7292)) b!5467207))

(assert (= (and start!572282 condSetEmpty!35857) setIsEmpty!35857))

(assert (= (and start!572282 (not condSetEmpty!35857)) setNonEmpty!35857))

(assert (= setNonEmpty!35857 b!5467202))

(assert (= b!5467212 b!5467206))

(assert (= (and start!572282 ((_ is Cons!62152) zl!343)) b!5467212))

(assert (= (and start!572282 ((_ is Cons!62150) s!2326)) b!5467192))

(declare-fun m!6486354 () Bool)

(assert (=> b!5467196 m!6486354))

(declare-fun m!6486356 () Bool)

(assert (=> b!5467196 m!6486356))

(assert (=> b!5467196 m!6486356))

(declare-fun m!6486358 () Bool)

(assert (=> b!5467196 m!6486358))

(declare-fun m!6486360 () Bool)

(assert (=> b!5467217 m!6486360))

(declare-fun m!6486362 () Bool)

(assert (=> b!5467210 m!6486362))

(assert (=> b!5467210 m!6486362))

(declare-fun m!6486364 () Bool)

(assert (=> b!5467210 m!6486364))

(declare-fun m!6486366 () Bool)

(assert (=> b!5467212 m!6486366))

(declare-fun m!6486368 () Bool)

(assert (=> b!5467194 m!6486368))

(declare-fun m!6486370 () Bool)

(assert (=> b!5467211 m!6486370))

(declare-fun m!6486372 () Bool)

(assert (=> b!5467211 m!6486372))

(declare-fun m!6486374 () Bool)

(assert (=> b!5467211 m!6486374))

(declare-fun m!6486376 () Bool)

(assert (=> b!5467195 m!6486376))

(declare-fun m!6486378 () Bool)

(assert (=> b!5467213 m!6486378))

(declare-fun m!6486380 () Bool)

(assert (=> b!5467208 m!6486380))

(declare-fun m!6486382 () Bool)

(assert (=> b!5467208 m!6486382))

(declare-fun m!6486384 () Bool)

(assert (=> b!5467208 m!6486384))

(declare-fun m!6486386 () Bool)

(assert (=> b!5467208 m!6486386))

(declare-fun m!6486388 () Bool)

(assert (=> b!5467208 m!6486388))

(declare-fun m!6486390 () Bool)

(assert (=> b!5467203 m!6486390))

(declare-fun m!6486392 () Bool)

(assert (=> b!5467201 m!6486392))

(declare-fun m!6486394 () Bool)

(assert (=> b!5467193 m!6486394))

(declare-fun m!6486396 () Bool)

(assert (=> b!5467193 m!6486396))

(declare-fun m!6486398 () Bool)

(assert (=> b!5467193 m!6486398))

(declare-fun m!6486400 () Bool)

(assert (=> b!5467193 m!6486400))

(declare-fun m!6486402 () Bool)

(assert (=> b!5467193 m!6486402))

(declare-fun m!6486404 () Bool)

(assert (=> b!5467193 m!6486404))

(declare-fun m!6486406 () Bool)

(assert (=> b!5467193 m!6486406))

(declare-fun m!6486408 () Bool)

(assert (=> b!5467193 m!6486408))

(declare-fun m!6486410 () Bool)

(assert (=> b!5467193 m!6486410))

(declare-fun m!6486412 () Bool)

(assert (=> b!5467220 m!6486412))

(declare-fun m!6486414 () Bool)

(assert (=> b!5467220 m!6486414))

(declare-fun m!6486416 () Bool)

(assert (=> b!5467220 m!6486416))

(declare-fun m!6486418 () Bool)

(assert (=> b!5467218 m!6486418))

(declare-fun m!6486420 () Bool)

(assert (=> setNonEmpty!35857 m!6486420))

(declare-fun m!6486422 () Bool)

(assert (=> b!5467199 m!6486422))

(declare-fun m!6486424 () Bool)

(assert (=> b!5467199 m!6486424))

(declare-fun m!6486426 () Bool)

(assert (=> b!5467199 m!6486426))

(declare-fun m!6486428 () Bool)

(assert (=> b!5467197 m!6486428))

(declare-fun m!6486430 () Bool)

(assert (=> b!5467197 m!6486430))

(assert (=> b!5467197 m!6486428))

(declare-fun m!6486432 () Bool)

(assert (=> b!5467197 m!6486432))

(declare-fun m!6486434 () Bool)

(assert (=> b!5467197 m!6486434))

(assert (=> b!5467197 m!6486434))

(declare-fun m!6486436 () Bool)

(assert (=> b!5467197 m!6486436))

(declare-fun m!6486438 () Bool)

(assert (=> b!5467197 m!6486438))

(declare-fun m!6486440 () Bool)

(assert (=> b!5467197 m!6486440))

(assert (=> b!5467197 m!6486428))

(declare-fun m!6486442 () Bool)

(assert (=> b!5467197 m!6486442))

(declare-fun m!6486444 () Bool)

(assert (=> b!5467197 m!6486444))

(declare-fun m!6486446 () Bool)

(assert (=> start!572282 m!6486446))

(check-sat (not b!5467196) (not b!5467199) (not b!5467201) (not b!5467217) (not b!5467214) (not b!5467197) (not start!572282) (not b!5467206) (not b!5467195) (not b!5467210) (not b!5467194) (not b!5467218) (not b!5467192) (not b!5467203) (not b!5467208) (not b!5467211) (not b!5467207) (not b!5467219) (not b!5467213) (not b!5467220) (not b!5467202) (not b!5467212) (not b!5467193) tp_is_empty!39903 (not setNonEmpty!35857))
(check-sat)
