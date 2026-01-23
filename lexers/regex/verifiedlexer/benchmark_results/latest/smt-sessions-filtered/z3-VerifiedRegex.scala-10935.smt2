; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566002 () Bool)

(assert start!566002)

(declare-fun b!5383671 () Bool)

(assert (=> b!5383671 true))

(assert (=> b!5383671 true))

(declare-fun lambda!278917 () Int)

(declare-fun lambda!278916 () Int)

(assert (=> b!5383671 (not (= lambda!278917 lambda!278916))))

(assert (=> b!5383671 true))

(assert (=> b!5383671 true))

(declare-fun b!5383679 () Bool)

(assert (=> b!5383679 true))

(declare-fun bs!1246128 () Bool)

(declare-fun b!5383691 () Bool)

(assert (= bs!1246128 (and b!5383691 b!5383671)))

(declare-datatypes ((C!30504 0))(
  ( (C!30505 (val!24954 Int)) )
))
(declare-datatypes ((Regex!15117 0))(
  ( (ElementMatch!15117 (c!938181 C!30504)) (Concat!23962 (regOne!30746 Regex!15117) (regTwo!30746 Regex!15117)) (EmptyExpr!15117) (Star!15117 (reg!15446 Regex!15117)) (EmptyLang!15117) (Union!15117 (regOne!30747 Regex!15117) (regTwo!30747 Regex!15117)) )
))
(declare-fun r!7292 () Regex!15117)

(declare-fun lambda!278919 () Int)

(declare-fun lt!2192589 () Regex!15117)

(assert (=> bs!1246128 (= (= lt!2192589 (regOne!30746 r!7292)) (= lambda!278919 lambda!278916))))

(assert (=> bs!1246128 (not (= lambda!278919 lambda!278917))))

(assert (=> b!5383691 true))

(assert (=> b!5383691 true))

(assert (=> b!5383691 true))

(declare-fun lambda!278920 () Int)

(assert (=> bs!1246128 (not (= lambda!278920 lambda!278916))))

(assert (=> bs!1246128 (= (= lt!2192589 (regOne!30746 r!7292)) (= lambda!278920 lambda!278917))))

(assert (=> b!5383691 (not (= lambda!278920 lambda!278919))))

(assert (=> b!5383691 true))

(assert (=> b!5383691 true))

(assert (=> b!5383691 true))

(declare-fun bs!1246129 () Bool)

(declare-fun b!5383664 () Bool)

(assert (= bs!1246129 (and b!5383664 b!5383671)))

(declare-fun lambda!278921 () Int)

(declare-datatypes ((List!61650 0))(
  ( (Nil!61526) (Cons!61526 (h!67974 C!30504) (t!374873 List!61650)) )
))
(declare-datatypes ((tuple2!64632 0))(
  ( (tuple2!64633 (_1!35619 List!61650) (_2!35619 List!61650)) )
))
(declare-fun lt!2192597 () tuple2!64632)

(declare-fun s!2326 () List!61650)

(assert (=> bs!1246129 (= (and (= (_1!35619 lt!2192597) s!2326) (= (reg!15446 (regOne!30746 r!7292)) (regOne!30746 r!7292)) (= lt!2192589 (regTwo!30746 r!7292))) (= lambda!278921 lambda!278916))))

(assert (=> bs!1246129 (not (= lambda!278921 lambda!278917))))

(declare-fun bs!1246130 () Bool)

(assert (= bs!1246130 (and b!5383664 b!5383691)))

(assert (=> bs!1246130 (= (and (= (_1!35619 lt!2192597) s!2326) (= (reg!15446 (regOne!30746 r!7292)) lt!2192589) (= lt!2192589 (regTwo!30746 r!7292))) (= lambda!278921 lambda!278919))))

(assert (=> bs!1246130 (not (= lambda!278921 lambda!278920))))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(declare-fun lambda!278922 () Int)

(assert (=> bs!1246129 (not (= lambda!278922 lambda!278916))))

(assert (=> bs!1246130 (not (= lambda!278922 lambda!278920))))

(assert (=> bs!1246130 (not (= lambda!278922 lambda!278919))))

(assert (=> b!5383664 (not (= lambda!278922 lambda!278921))))

(assert (=> bs!1246129 (not (= lambda!278922 lambda!278917))))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(declare-fun lambda!278923 () Int)

(assert (=> bs!1246129 (not (= lambda!278923 lambda!278916))))

(assert (=> bs!1246130 (= (and (= (_1!35619 lt!2192597) s!2326) (= (reg!15446 (regOne!30746 r!7292)) lt!2192589) (= lt!2192589 (regTwo!30746 r!7292))) (= lambda!278923 lambda!278920))))

(assert (=> bs!1246130 (not (= lambda!278923 lambda!278919))))

(assert (=> b!5383664 (not (= lambda!278923 lambda!278922))))

(assert (=> b!5383664 (not (= lambda!278923 lambda!278921))))

(assert (=> bs!1246129 (= (and (= (_1!35619 lt!2192597) s!2326) (= (reg!15446 (regOne!30746 r!7292)) (regOne!30746 r!7292)) (= lt!2192589 (regTwo!30746 r!7292))) (= lambda!278923 lambda!278917))))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(assert (=> b!5383664 true))

(declare-fun b!5383660 () Bool)

(declare-fun e!3339436 () Bool)

(declare-fun e!3339421 () Bool)

(assert (=> b!5383660 (= e!3339436 e!3339421)))

(declare-fun res!2286509 () Bool)

(assert (=> b!5383660 (=> res!2286509 e!3339421)))

(declare-datatypes ((List!61651 0))(
  ( (Nil!61527) (Cons!61527 (h!67975 Regex!15117) (t!374874 List!61651)) )
))
(declare-datatypes ((Context!9002 0))(
  ( (Context!9003 (exprs!5001 List!61651)) )
))
(declare-datatypes ((List!61652 0))(
  ( (Nil!61528) (Cons!61528 (h!67976 Context!9002) (t!374875 List!61652)) )
))
(declare-fun lt!2192602 () List!61652)

(declare-fun unfocusZipper!859 (List!61652) Regex!15117)

(assert (=> b!5383660 (= res!2286509 (not (= (unfocusZipper!859 lt!2192602) (reg!15446 (regOne!30746 r!7292)))))))

(declare-fun lt!2192627 () Context!9002)

(assert (=> b!5383660 (= lt!2192602 (Cons!61528 lt!2192627 Nil!61528))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2192583 () (InoxSet Context!9002))

(declare-fun lambda!278918 () Int)

(declare-fun lt!2192628 () Context!9002)

(declare-fun flatMap!844 ((InoxSet Context!9002) Int) (InoxSet Context!9002))

(declare-fun derivationStepZipperUp!489 (Context!9002 C!30504) (InoxSet Context!9002))

(assert (=> b!5383660 (= (flatMap!844 lt!2192583 lambda!278918) (derivationStepZipperUp!489 lt!2192628 (h!67974 s!2326)))))

(declare-datatypes ((Unit!153986 0))(
  ( (Unit!153987) )
))
(declare-fun lt!2192598 () Unit!153986)

(declare-fun lemmaFlatMapOnSingletonSet!376 ((InoxSet Context!9002) Context!9002 Int) Unit!153986)

(assert (=> b!5383660 (= lt!2192598 (lemmaFlatMapOnSingletonSet!376 lt!2192583 lt!2192628 lambda!278918))))

(declare-fun lt!2192622 () (InoxSet Context!9002))

(assert (=> b!5383660 (= (flatMap!844 lt!2192622 lambda!278918) (derivationStepZipperUp!489 lt!2192627 (h!67974 s!2326)))))

(declare-fun lt!2192586 () Unit!153986)

(assert (=> b!5383660 (= lt!2192586 (lemmaFlatMapOnSingletonSet!376 lt!2192622 lt!2192627 lambda!278918))))

(declare-fun lt!2192590 () (InoxSet Context!9002))

(assert (=> b!5383660 (= lt!2192590 (derivationStepZipperUp!489 lt!2192628 (h!67974 s!2326)))))

(declare-fun lt!2192611 () (InoxSet Context!9002))

(assert (=> b!5383660 (= lt!2192611 (derivationStepZipperUp!489 lt!2192627 (h!67974 s!2326)))))

(assert (=> b!5383660 (= lt!2192583 (store ((as const (Array Context!9002 Bool)) false) lt!2192628 true))))

(assert (=> b!5383660 (= lt!2192622 (store ((as const (Array Context!9002 Bool)) false) lt!2192627 true))))

(assert (=> b!5383660 (= lt!2192627 (Context!9003 (Cons!61527 (reg!15446 (regOne!30746 r!7292)) Nil!61527)))))

(declare-fun b!5383661 () Bool)

(declare-fun res!2286493 () Bool)

(declare-fun e!3339431 () Bool)

(assert (=> b!5383661 (=> res!2286493 e!3339431)))

(declare-fun matchR!7302 (Regex!15117 List!61650) Bool)

(assert (=> b!5383661 (= res!2286493 (not (matchR!7302 (regTwo!30746 r!7292) (_2!35619 lt!2192597))))))

(declare-fun b!5383662 () Bool)

(declare-fun e!3339429 () Bool)

(declare-fun tp!1491801 () Bool)

(declare-fun tp!1491804 () Bool)

(assert (=> b!5383662 (= e!3339429 (and tp!1491801 tp!1491804))))

(declare-fun b!5383663 () Bool)

(declare-fun res!2286514 () Bool)

(declare-fun e!3339437 () Bool)

(assert (=> b!5383663 (=> res!2286514 e!3339437)))

(declare-fun zl!343 () List!61652)

(declare-fun isEmpty!33520 (List!61651) Bool)

(assert (=> b!5383663 (= res!2286514 (isEmpty!33520 (t!374874 (exprs!5001 (h!67976 zl!343)))))))

(declare-fun e!3339426 () Bool)

(assert (=> b!5383664 (= e!3339431 e!3339426)))

(declare-fun res!2286510 () Bool)

(assert (=> b!5383664 (=> res!2286510 e!3339426)))

(declare-fun lt!2192606 () List!61650)

(assert (=> b!5383664 (= res!2286510 (not (= (_1!35619 lt!2192597) lt!2192606)))))

(declare-fun lt!2192581 () tuple2!64632)

(declare-fun ++!13420 (List!61650 List!61650) List!61650)

(assert (=> b!5383664 (= lt!2192606 (++!13420 (_1!35619 lt!2192581) (_2!35619 lt!2192581)))))

(declare-datatypes ((Option!15228 0))(
  ( (None!15227) (Some!15227 (v!51256 tuple2!64632)) )
))
(declare-fun lt!2192601 () Option!15228)

(declare-fun get!21184 (Option!15228) tuple2!64632)

(assert (=> b!5383664 (= lt!2192581 (get!21184 lt!2192601))))

(declare-fun Exists!2298 (Int) Bool)

(assert (=> b!5383664 (= (Exists!2298 lambda!278921) (Exists!2298 lambda!278923))))

(declare-fun lt!2192600 () Unit!153986)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!952 (Regex!15117 Regex!15117 List!61650) Unit!153986)

(assert (=> b!5383664 (= lt!2192600 (lemmaExistCutMatchRandMatchRSpecEquivalent!952 (reg!15446 (regOne!30746 r!7292)) lt!2192589 (_1!35619 lt!2192597)))))

(assert (=> b!5383664 (= (Exists!2298 lambda!278921) (Exists!2298 lambda!278922))))

(declare-fun lt!2192625 () Unit!153986)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!382 (Regex!15117 List!61650) Unit!153986)

(assert (=> b!5383664 (= lt!2192625 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!382 (reg!15446 (regOne!30746 r!7292)) (_1!35619 lt!2192597)))))

(declare-fun isDefined!11931 (Option!15228) Bool)

(assert (=> b!5383664 (= (isDefined!11931 lt!2192601) (Exists!2298 lambda!278921))))

(declare-fun findConcatSeparation!1642 (Regex!15117 Regex!15117 List!61650 List!61650 List!61650) Option!15228)

(assert (=> b!5383664 (= lt!2192601 (findConcatSeparation!1642 (reg!15446 (regOne!30746 r!7292)) lt!2192589 Nil!61526 (_1!35619 lt!2192597) (_1!35619 lt!2192597)))))

(declare-fun lt!2192595 () Unit!153986)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1406 (Regex!15117 Regex!15117 List!61650) Unit!153986)

(assert (=> b!5383664 (= lt!2192595 (lemmaFindConcatSeparationEquivalentToExists!1406 (reg!15446 (regOne!30746 r!7292)) lt!2192589 (_1!35619 lt!2192597)))))

(declare-fun matchRSpec!2220 (Regex!15117 List!61650) Bool)

(assert (=> b!5383664 (matchRSpec!2220 lt!2192589 (_1!35619 lt!2192597))))

(declare-fun lt!2192576 () Unit!153986)

(declare-fun mainMatchTheorem!2220 (Regex!15117 List!61650) Unit!153986)

(assert (=> b!5383664 (= lt!2192576 (mainMatchTheorem!2220 lt!2192589 (_1!35619 lt!2192597)))))

(declare-fun tp!1491805 () Bool)

(declare-fun b!5383665 () Bool)

(declare-fun e!3339433 () Bool)

(declare-fun e!3339424 () Bool)

(declare-fun inv!81039 (Context!9002) Bool)

(assert (=> b!5383665 (= e!3339433 (and (inv!81039 (h!67976 zl!343)) e!3339424 tp!1491805))))

(declare-fun b!5383666 () Bool)

(declare-fun e!3339425 () Bool)

(declare-fun lt!2192623 () (InoxSet Context!9002))

(declare-fun matchZipper!1361 ((InoxSet Context!9002) List!61650) Bool)

(assert (=> b!5383666 (= e!3339425 (matchZipper!1361 lt!2192623 (t!374873 s!2326)))))

(declare-fun b!5383667 () Bool)

(declare-fun e!3339416 () Bool)

(declare-fun lt!2192582 () Bool)

(declare-fun lt!2192578 () Bool)

(assert (=> b!5383667 (= e!3339416 (or (not lt!2192582) lt!2192578))))

(declare-fun b!5383668 () Bool)

(declare-fun res!2286502 () Bool)

(declare-fun e!3339420 () Bool)

(assert (=> b!5383668 (=> (not res!2286502) (not e!3339420))))

(declare-fun z!1189 () (InoxSet Context!9002))

(declare-fun toList!8901 ((InoxSet Context!9002)) List!61652)

(assert (=> b!5383668 (= res!2286502 (= (toList!8901 z!1189) zl!343))))

(declare-fun b!5383669 () Bool)

(declare-fun e!3339435 () Bool)

(declare-fun e!3339419 () Bool)

(assert (=> b!5383669 (= e!3339435 e!3339419)))

(declare-fun res!2286504 () Bool)

(assert (=> b!5383669 (=> res!2286504 e!3339419)))

(declare-fun lt!2192592 () (InoxSet Context!9002))

(declare-fun lt!2192619 () (InoxSet Context!9002))

(assert (=> b!5383669 (= res!2286504 (not (= lt!2192592 lt!2192619)))))

(declare-fun derivationStepZipperDown!565 (Regex!15117 Context!9002 C!30504) (InoxSet Context!9002))

(assert (=> b!5383669 (= lt!2192619 (derivationStepZipperDown!565 (reg!15446 (regOne!30746 r!7292)) lt!2192628 (h!67974 s!2326)))))

(declare-fun lt!2192620 () List!61651)

(assert (=> b!5383669 (= lt!2192628 (Context!9003 lt!2192620))))

(assert (=> b!5383669 (= lt!2192620 (Cons!61527 lt!2192589 (t!374874 (exprs!5001 (h!67976 zl!343)))))))

(assert (=> b!5383669 (= lt!2192589 (Star!15117 (reg!15446 (regOne!30746 r!7292))))))

(declare-fun b!5383670 () Bool)

(declare-fun res!2286515 () Bool)

(assert (=> b!5383670 (=> res!2286515 e!3339431)))

(declare-fun isEmpty!33521 (List!61650) Bool)

(assert (=> b!5383670 (= res!2286515 (isEmpty!33521 (_1!35619 lt!2192597)))))

(declare-fun e!3339432 () Bool)

(assert (=> b!5383671 (= e!3339432 e!3339437)))

(declare-fun res!2286495 () Bool)

(assert (=> b!5383671 (=> res!2286495 e!3339437)))

(declare-fun lt!2192626 () Bool)

(get-info :version)

(assert (=> b!5383671 (= res!2286495 (or (not (= lt!2192582 lt!2192626)) ((_ is Nil!61526) s!2326)))))

(assert (=> b!5383671 (= (Exists!2298 lambda!278916) (Exists!2298 lambda!278917))))

(declare-fun lt!2192577 () Unit!153986)

(assert (=> b!5383671 (= lt!2192577 (lemmaExistCutMatchRandMatchRSpecEquivalent!952 (regOne!30746 r!7292) (regTwo!30746 r!7292) s!2326))))

(assert (=> b!5383671 (= lt!2192626 (Exists!2298 lambda!278916))))

(assert (=> b!5383671 (= lt!2192626 (isDefined!11931 (findConcatSeparation!1642 (regOne!30746 r!7292) (regTwo!30746 r!7292) Nil!61526 s!2326 s!2326)))))

(declare-fun lt!2192617 () Unit!153986)

(assert (=> b!5383671 (= lt!2192617 (lemmaFindConcatSeparationEquivalentToExists!1406 (regOne!30746 r!7292) (regTwo!30746 r!7292) s!2326))))

(declare-fun b!5383672 () Bool)

(declare-fun tp!1491803 () Bool)

(declare-fun tp!1491807 () Bool)

(assert (=> b!5383672 (= e!3339429 (and tp!1491803 tp!1491807))))

(declare-fun b!5383673 () Bool)

(declare-fun e!3339434 () Bool)

(assert (=> b!5383673 (= e!3339419 e!3339434)))

(declare-fun res!2286492 () Bool)

(assert (=> b!5383673 (=> res!2286492 e!3339434)))

(declare-fun lt!2192591 () (InoxSet Context!9002))

(assert (=> b!5383673 (= res!2286492 (not (= lt!2192591 lt!2192619)))))

(declare-fun lt!2192614 () (InoxSet Context!9002))

(declare-fun lt!2192596 () Context!9002)

(assert (=> b!5383673 (= (flatMap!844 lt!2192614 lambda!278918) (derivationStepZipperUp!489 lt!2192596 (h!67974 s!2326)))))

(declare-fun lt!2192593 () Unit!153986)

(assert (=> b!5383673 (= lt!2192593 (lemmaFlatMapOnSingletonSet!376 lt!2192614 lt!2192596 lambda!278918))))

(declare-fun lt!2192624 () (InoxSet Context!9002))

(assert (=> b!5383673 (= lt!2192624 (derivationStepZipperUp!489 lt!2192596 (h!67974 s!2326)))))

(declare-fun derivationStepZipper!1356 ((InoxSet Context!9002) C!30504) (InoxSet Context!9002))

(assert (=> b!5383673 (= lt!2192591 (derivationStepZipper!1356 lt!2192614 (h!67974 s!2326)))))

(assert (=> b!5383673 (= lt!2192614 (store ((as const (Array Context!9002 Bool)) false) lt!2192596 true))))

(assert (=> b!5383673 (= lt!2192596 (Context!9003 (Cons!61527 (reg!15446 (regOne!30746 r!7292)) lt!2192620)))))

(declare-fun b!5383674 () Bool)

(declare-fun res!2286520 () Bool)

(assert (=> b!5383674 (=> res!2286520 e!3339434)))

(assert (=> b!5383674 (= res!2286520 (not (= (matchZipper!1361 lt!2192614 s!2326) (matchZipper!1361 lt!2192591 (t!374873 s!2326)))))))

(declare-fun b!5383675 () Bool)

(declare-fun res!2286508 () Bool)

(assert (=> b!5383675 (=> res!2286508 e!3339432)))

(declare-fun generalisedUnion!1046 (List!61651) Regex!15117)

(declare-fun unfocusZipperList!559 (List!61652) List!61651)

(assert (=> b!5383675 (= res!2286508 (not (= r!7292 (generalisedUnion!1046 (unfocusZipperList!559 zl!343)))))))

(declare-fun setElem!34943 () Context!9002)

(declare-fun setRes!34943 () Bool)

(declare-fun e!3339428 () Bool)

(declare-fun setNonEmpty!34943 () Bool)

(declare-fun tp!1491806 () Bool)

(assert (=> setNonEmpty!34943 (= setRes!34943 (and tp!1491806 (inv!81039 setElem!34943) e!3339428))))

(declare-fun setRest!34943 () (InoxSet Context!9002))

(assert (=> setNonEmpty!34943 (= z!1189 ((_ map or) (store ((as const (Array Context!9002 Bool)) false) setElem!34943 true) setRest!34943))))

(declare-fun res!2286503 () Bool)

(assert (=> start!566002 (=> (not res!2286503) (not e!3339420))))

(declare-fun validRegex!6853 (Regex!15117) Bool)

(assert (=> start!566002 (= res!2286503 (validRegex!6853 r!7292))))

(assert (=> start!566002 e!3339420))

(assert (=> start!566002 e!3339429))

(declare-fun condSetEmpty!34943 () Bool)

(assert (=> start!566002 (= condSetEmpty!34943 (= z!1189 ((as const (Array Context!9002 Bool)) false)))))

(assert (=> start!566002 setRes!34943))

(assert (=> start!566002 e!3339433))

(declare-fun e!3339430 () Bool)

(assert (=> start!566002 e!3339430))

(declare-fun b!5383676 () Bool)

(declare-fun tp!1491802 () Bool)

(assert (=> b!5383676 (= e!3339424 tp!1491802)))

(declare-fun b!5383677 () Bool)

(declare-fun res!2286498 () Bool)

(assert (=> b!5383677 (=> res!2286498 e!3339432)))

(assert (=> b!5383677 (= res!2286498 (or ((_ is EmptyExpr!15117) r!7292) ((_ is EmptyLang!15117) r!7292) ((_ is ElementMatch!15117) r!7292) ((_ is Union!15117) r!7292) (not ((_ is Concat!23962) r!7292))))))

(declare-fun b!5383678 () Bool)

(declare-fun res!2286513 () Bool)

(assert (=> b!5383678 (=> res!2286513 e!3339435)))

(assert (=> b!5383678 (= res!2286513 (or ((_ is Concat!23962) (regOne!30746 r!7292)) (not ((_ is Star!15117) (regOne!30746 r!7292)))))))

(assert (=> b!5383679 (= e!3339437 e!3339435)))

(declare-fun res!2286489 () Bool)

(assert (=> b!5383679 (=> res!2286489 e!3339435)))

(assert (=> b!5383679 (= res!2286489 (or (and ((_ is ElementMatch!15117) (regOne!30746 r!7292)) (= (c!938181 (regOne!30746 r!7292)) (h!67974 s!2326))) ((_ is Union!15117) (regOne!30746 r!7292))))))

(declare-fun lt!2192613 () Unit!153986)

(declare-fun e!3339415 () Unit!153986)

(assert (=> b!5383679 (= lt!2192613 e!3339415)))

(declare-fun c!938180 () Bool)

(declare-fun nullable!5286 (Regex!15117) Bool)

(assert (=> b!5383679 (= c!938180 (nullable!5286 (h!67975 (exprs!5001 (h!67976 zl!343)))))))

(assert (=> b!5383679 (= (flatMap!844 z!1189 lambda!278918) (derivationStepZipperUp!489 (h!67976 zl!343) (h!67974 s!2326)))))

(declare-fun lt!2192612 () Unit!153986)

(assert (=> b!5383679 (= lt!2192612 (lemmaFlatMapOnSingletonSet!376 z!1189 (h!67976 zl!343) lambda!278918))))

(declare-fun lt!2192580 () Context!9002)

(assert (=> b!5383679 (= lt!2192623 (derivationStepZipperUp!489 lt!2192580 (h!67974 s!2326)))))

(assert (=> b!5383679 (= lt!2192592 (derivationStepZipperDown!565 (h!67975 (exprs!5001 (h!67976 zl!343))) lt!2192580 (h!67974 s!2326)))))

(assert (=> b!5383679 (= lt!2192580 (Context!9003 (t!374874 (exprs!5001 (h!67976 zl!343)))))))

(declare-fun lt!2192618 () (InoxSet Context!9002))

(assert (=> b!5383679 (= lt!2192618 (derivationStepZipperUp!489 (Context!9003 (Cons!61527 (h!67975 (exprs!5001 (h!67976 zl!343))) (t!374874 (exprs!5001 (h!67976 zl!343))))) (h!67974 s!2326)))))

(declare-fun b!5383680 () Bool)

(declare-fun res!2286496 () Bool)

(assert (=> b!5383680 (=> res!2286496 e!3339435)))

(declare-fun e!3339423 () Bool)

(assert (=> b!5383680 (= res!2286496 e!3339423)))

(declare-fun res!2286490 () Bool)

(assert (=> b!5383680 (=> (not res!2286490) (not e!3339423))))

(assert (=> b!5383680 (= res!2286490 ((_ is Concat!23962) (regOne!30746 r!7292)))))

(declare-fun b!5383681 () Bool)

(declare-fun tp_is_empty!39487 () Bool)

(assert (=> b!5383681 (= e!3339429 tp_is_empty!39487)))

(declare-fun b!5383682 () Bool)

(declare-fun res!2286494 () Bool)

(assert (=> b!5383682 (=> res!2286494 e!3339432)))

(assert (=> b!5383682 (= res!2286494 (not ((_ is Cons!61527) (exprs!5001 (h!67976 zl!343)))))))

(declare-fun b!5383683 () Bool)

(declare-fun e!3339427 () Bool)

(assert (=> b!5383683 (= e!3339427 true)))

(declare-fun lt!2192603 () List!61650)

(assert (=> b!5383683 (matchZipper!1361 lt!2192583 lt!2192603)))

(declare-fun lt!2192605 () List!61652)

(declare-fun lt!2192587 () Unit!153986)

(declare-fun lt!2192585 () Regex!15117)

(declare-fun theoremZipperRegexEquiv!447 ((InoxSet Context!9002) List!61652 Regex!15117 List!61650) Unit!153986)

(assert (=> b!5383683 (= lt!2192587 (theoremZipperRegexEquiv!447 lt!2192583 lt!2192605 lt!2192585 lt!2192603))))

(assert (=> b!5383683 (matchZipper!1361 lt!2192622 (_1!35619 lt!2192581))))

(declare-fun lt!2192609 () Unit!153986)

(assert (=> b!5383683 (= lt!2192609 (theoremZipperRegexEquiv!447 lt!2192622 lt!2192602 (reg!15446 (regOne!30746 r!7292)) (_1!35619 lt!2192581)))))

(assert (=> b!5383683 (matchR!7302 lt!2192585 lt!2192603)))

(declare-fun lt!2192594 () Unit!153986)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!164 (Regex!15117 Regex!15117 List!61650 List!61650) Unit!153986)

(assert (=> b!5383683 (= lt!2192594 (lemmaTwoRegexMatchThenConcatMatchesConcatString!164 lt!2192589 (regTwo!30746 r!7292) (_2!35619 lt!2192581) (_2!35619 lt!2192597)))))

(assert (=> b!5383683 (matchR!7302 lt!2192589 lt!2192606)))

(declare-fun lt!2192616 () Unit!153986)

(declare-fun lemmaStarApp!38 (Regex!15117 List!61650 List!61650) Unit!153986)

(assert (=> b!5383683 (= lt!2192616 (lemmaStarApp!38 (reg!15446 (regOne!30746 r!7292)) (_1!35619 lt!2192581) (_2!35619 lt!2192581)))))

(declare-fun b!5383684 () Bool)

(declare-fun res!2286488 () Bool)

(assert (=> b!5383684 (=> res!2286488 e!3339432)))

(declare-fun generalisedConcat!786 (List!61651) Regex!15117)

(assert (=> b!5383684 (= res!2286488 (not (= r!7292 (generalisedConcat!786 (exprs!5001 (h!67976 zl!343))))))))

(declare-fun b!5383685 () Bool)

(declare-fun e!3339418 () Bool)

(assert (=> b!5383685 (= e!3339434 e!3339418)))

(declare-fun res!2286517 () Bool)

(assert (=> b!5383685 (=> res!2286517 e!3339418)))

(assert (=> b!5383685 (= res!2286517 (not (= r!7292 lt!2192585)))))

(assert (=> b!5383685 (= lt!2192585 (Concat!23962 lt!2192589 (regTwo!30746 r!7292)))))

(declare-fun b!5383686 () Bool)

(declare-fun tp!1491800 () Bool)

(assert (=> b!5383686 (= e!3339428 tp!1491800)))

(declare-fun setIsEmpty!34943 () Bool)

(assert (=> setIsEmpty!34943 setRes!34943))

(declare-fun b!5383687 () Bool)

(declare-fun res!2286521 () Bool)

(assert (=> b!5383687 (=> res!2286521 e!3339431)))

(assert (=> b!5383687 (= res!2286521 (not (matchR!7302 lt!2192589 (_1!35619 lt!2192597))))))

(declare-fun b!5383688 () Bool)

(declare-fun res!2286491 () Bool)

(assert (=> b!5383688 (=> res!2286491 e!3339427)))

(assert (=> b!5383688 (= res!2286491 (not (matchR!7302 (reg!15446 (regOne!30746 r!7292)) (_1!35619 lt!2192581))))))

(declare-fun b!5383689 () Bool)

(declare-fun e!3339438 () Bool)

(declare-fun e!3339417 () Bool)

(assert (=> b!5383689 (= e!3339438 e!3339417)))

(declare-fun res!2286507 () Bool)

(assert (=> b!5383689 (=> res!2286507 e!3339417)))

(assert (=> b!5383689 (= res!2286507 (not lt!2192582))))

(assert (=> b!5383689 e!3339416))

(declare-fun res!2286501 () Bool)

(assert (=> b!5383689 (=> (not res!2286501) (not e!3339416))))

(declare-fun lt!2192579 () Regex!15117)

(assert (=> b!5383689 (= res!2286501 (= (matchR!7302 lt!2192579 s!2326) (matchRSpec!2220 lt!2192579 s!2326)))))

(declare-fun lt!2192599 () Unit!153986)

(assert (=> b!5383689 (= lt!2192599 (mainMatchTheorem!2220 lt!2192579 s!2326))))

(declare-fun b!5383690 () Bool)

(assert (=> b!5383690 (= e!3339421 e!3339438)))

(declare-fun res!2286511 () Bool)

(assert (=> b!5383690 (=> res!2286511 e!3339438)))

(assert (=> b!5383690 (= res!2286511 (not (= (unfocusZipper!859 lt!2192605) lt!2192585)))))

(assert (=> b!5383690 (= lt!2192605 (Cons!61528 lt!2192628 Nil!61528))))

(assert (=> b!5383691 (= e!3339417 e!3339431)))

(declare-fun res!2286518 () Bool)

(assert (=> b!5383691 (=> res!2286518 e!3339431)))

(assert (=> b!5383691 (= res!2286518 (not (= (++!13420 (_1!35619 lt!2192597) (_2!35619 lt!2192597)) s!2326)))))

(declare-fun lt!2192604 () Option!15228)

(assert (=> b!5383691 (= lt!2192597 (get!21184 lt!2192604))))

(assert (=> b!5383691 (= (Exists!2298 lambda!278919) (Exists!2298 lambda!278920))))

(declare-fun lt!2192607 () Unit!153986)

(assert (=> b!5383691 (= lt!2192607 (lemmaExistCutMatchRandMatchRSpecEquivalent!952 lt!2192589 (regTwo!30746 r!7292) s!2326))))

(assert (=> b!5383691 (= (isDefined!11931 lt!2192604) (Exists!2298 lambda!278919))))

(assert (=> b!5383691 (= lt!2192604 (findConcatSeparation!1642 lt!2192589 (regTwo!30746 r!7292) Nil!61526 s!2326 s!2326))))

(declare-fun lt!2192610 () Unit!153986)

(assert (=> b!5383691 (= lt!2192610 (lemmaFindConcatSeparationEquivalentToExists!1406 lt!2192589 (regTwo!30746 r!7292) s!2326))))

(declare-fun b!5383692 () Bool)

(declare-fun res!2286516 () Bool)

(assert (=> b!5383692 (=> res!2286516 e!3339432)))

(declare-fun isEmpty!33522 (List!61652) Bool)

(assert (=> b!5383692 (= res!2286516 (not (isEmpty!33522 (t!374875 zl!343))))))

(declare-fun b!5383693 () Bool)

(declare-fun Unit!153988 () Unit!153986)

(assert (=> b!5383693 (= e!3339415 Unit!153988)))

(declare-fun b!5383694 () Bool)

(declare-fun res!2286506 () Bool)

(assert (=> b!5383694 (=> res!2286506 e!3339434)))

(declare-fun lt!2192588 () Regex!15117)

(assert (=> b!5383694 (= res!2286506 (not (= lt!2192588 r!7292)))))

(declare-fun b!5383695 () Bool)

(declare-fun e!3339422 () Bool)

(assert (=> b!5383695 (= e!3339422 (not e!3339432))))

(declare-fun res!2286499 () Bool)

(assert (=> b!5383695 (=> res!2286499 e!3339432)))

(assert (=> b!5383695 (= res!2286499 (not ((_ is Cons!61528) zl!343)))))

(assert (=> b!5383695 (= lt!2192582 lt!2192578)))

(assert (=> b!5383695 (= lt!2192578 (matchRSpec!2220 r!7292 s!2326))))

(assert (=> b!5383695 (= lt!2192582 (matchR!7302 r!7292 s!2326))))

(declare-fun lt!2192608 () Unit!153986)

(assert (=> b!5383695 (= lt!2192608 (mainMatchTheorem!2220 r!7292 s!2326))))

(declare-fun b!5383696 () Bool)

(assert (=> b!5383696 (= e!3339418 e!3339436)))

(declare-fun res!2286505 () Bool)

(assert (=> b!5383696 (=> res!2286505 e!3339436)))

(assert (=> b!5383696 (= res!2286505 (not (= (unfocusZipper!859 (Cons!61528 lt!2192596 Nil!61528)) lt!2192579)))))

(assert (=> b!5383696 (= lt!2192579 (Concat!23962 (reg!15446 (regOne!30746 r!7292)) lt!2192585))))

(declare-fun b!5383697 () Bool)

(declare-fun Unit!153989 () Unit!153986)

(assert (=> b!5383697 (= e!3339415 Unit!153989)))

(declare-fun lt!2192615 () Unit!153986)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!354 ((InoxSet Context!9002) (InoxSet Context!9002) List!61650) Unit!153986)

(assert (=> b!5383697 (= lt!2192615 (lemmaZipperConcatMatchesSameAsBothZippers!354 lt!2192592 lt!2192623 (t!374873 s!2326)))))

(declare-fun res!2286497 () Bool)

(assert (=> b!5383697 (= res!2286497 (matchZipper!1361 lt!2192592 (t!374873 s!2326)))))

(assert (=> b!5383697 (=> res!2286497 e!3339425)))

(assert (=> b!5383697 (= (matchZipper!1361 ((_ map or) lt!2192592 lt!2192623) (t!374873 s!2326)) e!3339425)))

(declare-fun b!5383698 () Bool)

(assert (=> b!5383698 (= e!3339420 e!3339422)))

(declare-fun res!2286500 () Bool)

(assert (=> b!5383698 (=> (not res!2286500) (not e!3339422))))

(assert (=> b!5383698 (= res!2286500 (= r!7292 lt!2192588))))

(assert (=> b!5383698 (= lt!2192588 (unfocusZipper!859 zl!343))))

(declare-fun b!5383699 () Bool)

(declare-fun res!2286512 () Bool)

(assert (=> b!5383699 (=> res!2286512 e!3339427)))

(assert (=> b!5383699 (= res!2286512 (not (matchR!7302 lt!2192589 (_2!35619 lt!2192581))))))

(declare-fun b!5383700 () Bool)

(assert (=> b!5383700 (= e!3339426 e!3339427)))

(declare-fun res!2286519 () Bool)

(assert (=> b!5383700 (=> res!2286519 e!3339427)))

(declare-fun lt!2192621 () List!61650)

(assert (=> b!5383700 (= res!2286519 (not (= lt!2192621 s!2326)))))

(assert (=> b!5383700 (= lt!2192621 (++!13420 (_1!35619 lt!2192581) lt!2192603))))

(assert (=> b!5383700 (= lt!2192621 (++!13420 lt!2192606 (_2!35619 lt!2192597)))))

(assert (=> b!5383700 (= lt!2192603 (++!13420 (_2!35619 lt!2192581) (_2!35619 lt!2192597)))))

(declare-fun lt!2192584 () Unit!153986)

(declare-fun lemmaConcatAssociativity!2814 (List!61650 List!61650 List!61650) Unit!153986)

(assert (=> b!5383700 (= lt!2192584 (lemmaConcatAssociativity!2814 (_1!35619 lt!2192581) (_2!35619 lt!2192581) (_2!35619 lt!2192597)))))

(declare-fun b!5383701 () Bool)

(declare-fun tp!1491808 () Bool)

(assert (=> b!5383701 (= e!3339429 tp!1491808)))

(declare-fun b!5383702 () Bool)

(assert (=> b!5383702 (= e!3339423 (nullable!5286 (regOne!30746 (regOne!30746 r!7292))))))

(declare-fun b!5383703 () Bool)

(declare-fun tp!1491809 () Bool)

(assert (=> b!5383703 (= e!3339430 (and tp_is_empty!39487 tp!1491809))))

(assert (= (and start!566002 res!2286503) b!5383668))

(assert (= (and b!5383668 res!2286502) b!5383698))

(assert (= (and b!5383698 res!2286500) b!5383695))

(assert (= (and b!5383695 (not res!2286499)) b!5383692))

(assert (= (and b!5383692 (not res!2286516)) b!5383684))

(assert (= (and b!5383684 (not res!2286488)) b!5383682))

(assert (= (and b!5383682 (not res!2286494)) b!5383675))

(assert (= (and b!5383675 (not res!2286508)) b!5383677))

(assert (= (and b!5383677 (not res!2286498)) b!5383671))

(assert (= (and b!5383671 (not res!2286495)) b!5383663))

(assert (= (and b!5383663 (not res!2286514)) b!5383679))

(assert (= (and b!5383679 c!938180) b!5383697))

(assert (= (and b!5383679 (not c!938180)) b!5383693))

(assert (= (and b!5383697 (not res!2286497)) b!5383666))

(assert (= (and b!5383679 (not res!2286489)) b!5383680))

(assert (= (and b!5383680 res!2286490) b!5383702))

(assert (= (and b!5383680 (not res!2286496)) b!5383678))

(assert (= (and b!5383678 (not res!2286513)) b!5383669))

(assert (= (and b!5383669 (not res!2286504)) b!5383673))

(assert (= (and b!5383673 (not res!2286492)) b!5383674))

(assert (= (and b!5383674 (not res!2286520)) b!5383694))

(assert (= (and b!5383694 (not res!2286506)) b!5383685))

(assert (= (and b!5383685 (not res!2286517)) b!5383696))

(assert (= (and b!5383696 (not res!2286505)) b!5383660))

(assert (= (and b!5383660 (not res!2286509)) b!5383690))

(assert (= (and b!5383690 (not res!2286511)) b!5383689))

(assert (= (and b!5383689 res!2286501) b!5383667))

(assert (= (and b!5383689 (not res!2286507)) b!5383691))

(assert (= (and b!5383691 (not res!2286518)) b!5383687))

(assert (= (and b!5383687 (not res!2286521)) b!5383661))

(assert (= (and b!5383661 (not res!2286493)) b!5383670))

(assert (= (and b!5383670 (not res!2286515)) b!5383664))

(assert (= (and b!5383664 (not res!2286510)) b!5383700))

(assert (= (and b!5383700 (not res!2286519)) b!5383688))

(assert (= (and b!5383688 (not res!2286491)) b!5383699))

(assert (= (and b!5383699 (not res!2286512)) b!5383683))

(assert (= (and start!566002 ((_ is ElementMatch!15117) r!7292)) b!5383681))

(assert (= (and start!566002 ((_ is Concat!23962) r!7292)) b!5383672))

(assert (= (and start!566002 ((_ is Star!15117) r!7292)) b!5383701))

(assert (= (and start!566002 ((_ is Union!15117) r!7292)) b!5383662))

(assert (= (and start!566002 condSetEmpty!34943) setIsEmpty!34943))

(assert (= (and start!566002 (not condSetEmpty!34943)) setNonEmpty!34943))

(assert (= setNonEmpty!34943 b!5383686))

(assert (= b!5383665 b!5383676))

(assert (= (and start!566002 ((_ is Cons!61528) zl!343)) b!5383665))

(assert (= (and start!566002 ((_ is Cons!61526) s!2326)) b!5383703))

(declare-fun m!6409380 () Bool)

(assert (=> b!5383700 m!6409380))

(declare-fun m!6409382 () Bool)

(assert (=> b!5383700 m!6409382))

(declare-fun m!6409384 () Bool)

(assert (=> b!5383700 m!6409384))

(declare-fun m!6409386 () Bool)

(assert (=> b!5383700 m!6409386))

(declare-fun m!6409388 () Bool)

(assert (=> b!5383702 m!6409388))

(declare-fun m!6409390 () Bool)

(assert (=> setNonEmpty!34943 m!6409390))

(declare-fun m!6409392 () Bool)

(assert (=> b!5383679 m!6409392))

(declare-fun m!6409394 () Bool)

(assert (=> b!5383679 m!6409394))

(declare-fun m!6409396 () Bool)

(assert (=> b!5383679 m!6409396))

(declare-fun m!6409398 () Bool)

(assert (=> b!5383679 m!6409398))

(declare-fun m!6409400 () Bool)

(assert (=> b!5383679 m!6409400))

(declare-fun m!6409402 () Bool)

(assert (=> b!5383679 m!6409402))

(declare-fun m!6409404 () Bool)

(assert (=> b!5383679 m!6409404))

(declare-fun m!6409406 () Bool)

(assert (=> b!5383669 m!6409406))

(declare-fun m!6409408 () Bool)

(assert (=> b!5383696 m!6409408))

(declare-fun m!6409410 () Bool)

(assert (=> b!5383698 m!6409410))

(declare-fun m!6409412 () Bool)

(assert (=> b!5383695 m!6409412))

(declare-fun m!6409414 () Bool)

(assert (=> b!5383695 m!6409414))

(declare-fun m!6409416 () Bool)

(assert (=> b!5383695 m!6409416))

(declare-fun m!6409418 () Bool)

(assert (=> b!5383699 m!6409418))

(declare-fun m!6409420 () Bool)

(assert (=> start!566002 m!6409420))

(declare-fun m!6409422 () Bool)

(assert (=> b!5383668 m!6409422))

(declare-fun m!6409424 () Bool)

(assert (=> b!5383689 m!6409424))

(declare-fun m!6409426 () Bool)

(assert (=> b!5383689 m!6409426))

(declare-fun m!6409428 () Bool)

(assert (=> b!5383689 m!6409428))

(declare-fun m!6409430 () Bool)

(assert (=> b!5383687 m!6409430))

(declare-fun m!6409432 () Bool)

(assert (=> b!5383690 m!6409432))

(declare-fun m!6409434 () Bool)

(assert (=> b!5383664 m!6409434))

(declare-fun m!6409436 () Bool)

(assert (=> b!5383664 m!6409436))

(declare-fun m!6409438 () Bool)

(assert (=> b!5383664 m!6409438))

(declare-fun m!6409440 () Bool)

(assert (=> b!5383664 m!6409440))

(declare-fun m!6409442 () Bool)

(assert (=> b!5383664 m!6409442))

(declare-fun m!6409444 () Bool)

(assert (=> b!5383664 m!6409444))

(declare-fun m!6409446 () Bool)

(assert (=> b!5383664 m!6409446))

(declare-fun m!6409448 () Bool)

(assert (=> b!5383664 m!6409448))

(assert (=> b!5383664 m!6409448))

(declare-fun m!6409450 () Bool)

(assert (=> b!5383664 m!6409450))

(assert (=> b!5383664 m!6409448))

(declare-fun m!6409452 () Bool)

(assert (=> b!5383664 m!6409452))

(declare-fun m!6409454 () Bool)

(assert (=> b!5383664 m!6409454))

(declare-fun m!6409456 () Bool)

(assert (=> b!5383664 m!6409456))

(declare-fun m!6409458 () Bool)

(assert (=> b!5383671 m!6409458))

(declare-fun m!6409460 () Bool)

(assert (=> b!5383671 m!6409460))

(declare-fun m!6409462 () Bool)

(assert (=> b!5383671 m!6409462))

(declare-fun m!6409464 () Bool)

(assert (=> b!5383671 m!6409464))

(assert (=> b!5383671 m!6409458))

(declare-fun m!6409466 () Bool)

(assert (=> b!5383671 m!6409466))

(assert (=> b!5383671 m!6409460))

(declare-fun m!6409468 () Bool)

(assert (=> b!5383671 m!6409468))

(declare-fun m!6409470 () Bool)

(assert (=> b!5383674 m!6409470))

(declare-fun m!6409472 () Bool)

(assert (=> b!5383674 m!6409472))

(declare-fun m!6409474 () Bool)

(assert (=> b!5383661 m!6409474))

(declare-fun m!6409476 () Bool)

(assert (=> b!5383691 m!6409476))

(declare-fun m!6409478 () Bool)

(assert (=> b!5383691 m!6409478))

(declare-fun m!6409480 () Bool)

(assert (=> b!5383691 m!6409480))

(declare-fun m!6409482 () Bool)

(assert (=> b!5383691 m!6409482))

(declare-fun m!6409484 () Bool)

(assert (=> b!5383691 m!6409484))

(declare-fun m!6409486 () Bool)

(assert (=> b!5383691 m!6409486))

(declare-fun m!6409488 () Bool)

(assert (=> b!5383691 m!6409488))

(assert (=> b!5383691 m!6409480))

(declare-fun m!6409490 () Bool)

(assert (=> b!5383691 m!6409490))

(declare-fun m!6409492 () Bool)

(assert (=> b!5383665 m!6409492))

(declare-fun m!6409494 () Bool)

(assert (=> b!5383683 m!6409494))

(declare-fun m!6409496 () Bool)

(assert (=> b!5383683 m!6409496))

(declare-fun m!6409498 () Bool)

(assert (=> b!5383683 m!6409498))

(declare-fun m!6409500 () Bool)

(assert (=> b!5383683 m!6409500))

(declare-fun m!6409502 () Bool)

(assert (=> b!5383683 m!6409502))

(declare-fun m!6409504 () Bool)

(assert (=> b!5383683 m!6409504))

(declare-fun m!6409506 () Bool)

(assert (=> b!5383683 m!6409506))

(declare-fun m!6409508 () Bool)

(assert (=> b!5383683 m!6409508))

(declare-fun m!6409510 () Bool)

(assert (=> b!5383675 m!6409510))

(assert (=> b!5383675 m!6409510))

(declare-fun m!6409512 () Bool)

(assert (=> b!5383675 m!6409512))

(declare-fun m!6409514 () Bool)

(assert (=> b!5383670 m!6409514))

(declare-fun m!6409516 () Bool)

(assert (=> b!5383688 m!6409516))

(declare-fun m!6409518 () Bool)

(assert (=> b!5383684 m!6409518))

(declare-fun m!6409520 () Bool)

(assert (=> b!5383697 m!6409520))

(declare-fun m!6409522 () Bool)

(assert (=> b!5383697 m!6409522))

(declare-fun m!6409524 () Bool)

(assert (=> b!5383697 m!6409524))

(declare-fun m!6409526 () Bool)

(assert (=> b!5383660 m!6409526))

(declare-fun m!6409528 () Bool)

(assert (=> b!5383660 m!6409528))

(declare-fun m!6409530 () Bool)

(assert (=> b!5383660 m!6409530))

(declare-fun m!6409532 () Bool)

(assert (=> b!5383660 m!6409532))

(declare-fun m!6409534 () Bool)

(assert (=> b!5383660 m!6409534))

(declare-fun m!6409536 () Bool)

(assert (=> b!5383660 m!6409536))

(declare-fun m!6409538 () Bool)

(assert (=> b!5383660 m!6409538))

(declare-fun m!6409540 () Bool)

(assert (=> b!5383660 m!6409540))

(declare-fun m!6409542 () Bool)

(assert (=> b!5383660 m!6409542))

(declare-fun m!6409544 () Bool)

(assert (=> b!5383663 m!6409544))

(declare-fun m!6409546 () Bool)

(assert (=> b!5383692 m!6409546))

(declare-fun m!6409548 () Bool)

(assert (=> b!5383666 m!6409548))

(declare-fun m!6409550 () Bool)

(assert (=> b!5383673 m!6409550))

(declare-fun m!6409552 () Bool)

(assert (=> b!5383673 m!6409552))

(declare-fun m!6409554 () Bool)

(assert (=> b!5383673 m!6409554))

(declare-fun m!6409556 () Bool)

(assert (=> b!5383673 m!6409556))

(declare-fun m!6409558 () Bool)

(assert (=> b!5383673 m!6409558))

(check-sat (not b!5383703) (not b!5383672) (not setNonEmpty!34943) (not start!566002) (not b!5383689) (not b!5383661) (not b!5383687) (not b!5383701) (not b!5383696) (not b!5383669) (not b!5383670) (not b!5383695) (not b!5383674) (not b!5383675) (not b!5383686) tp_is_empty!39487 (not b!5383660) (not b!5383666) (not b!5383664) (not b!5383683) (not b!5383668) (not b!5383673) (not b!5383688) (not b!5383700) (not b!5383684) (not b!5383692) (not b!5383676) (not b!5383691) (not b!5383690) (not b!5383702) (not b!5383697) (not b!5383679) (not b!5383699) (not b!5383663) (not b!5383671) (not b!5383698) (not b!5383662) (not b!5383665))
(check-sat)
