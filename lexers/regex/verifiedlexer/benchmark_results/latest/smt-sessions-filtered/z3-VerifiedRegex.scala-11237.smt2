; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589092 () Bool)

(assert start!589092)

(declare-fun b!5723592 () Bool)

(assert (=> b!5723592 true))

(assert (=> b!5723592 true))

(declare-fun lambda!309368 () Int)

(declare-fun lambda!309367 () Int)

(assert (=> b!5723592 (not (= lambda!309368 lambda!309367))))

(assert (=> b!5723592 true))

(assert (=> b!5723592 true))

(declare-fun b!5723625 () Bool)

(assert (=> b!5723625 true))

(declare-fun b!5723588 () Bool)

(assert (=> b!5723588 true))

(declare-fun b!5723586 () Bool)

(declare-fun res!2416407 () Bool)

(declare-fun e!3519474 () Bool)

(assert (=> b!5723586 (=> res!2416407 e!3519474)))

(declare-datatypes ((C!31712 0))(
  ( (C!31713 (val!25558 Int)) )
))
(declare-datatypes ((Regex!15721 0))(
  ( (ElementMatch!15721 (c!1009551 C!31712)) (Concat!24566 (regOne!31954 Regex!15721) (regTwo!31954 Regex!15721)) (EmptyExpr!15721) (Star!15721 (reg!16050 Regex!15721)) (EmptyLang!15721) (Union!15721 (regOne!31955 Regex!15721) (regTwo!31955 Regex!15721)) )
))
(declare-fun lt!2278673 () Regex!15721)

(declare-fun r!7292 () Regex!15721)

(assert (=> b!5723586 (= res!2416407 (not (= lt!2278673 r!7292)))))

(declare-fun b!5723587 () Bool)

(declare-fun e!3519467 () Bool)

(declare-fun e!3519458 () Bool)

(assert (=> b!5723587 (= e!3519467 e!3519458)))

(declare-fun res!2416428 () Bool)

(assert (=> b!5723587 (=> res!2416428 e!3519458)))

(declare-datatypes ((List!63462 0))(
  ( (Nil!63338) (Cons!63338 (h!69786 Regex!15721) (t!376788 List!63462)) )
))
(declare-datatypes ((Context!10210 0))(
  ( (Context!10211 (exprs!5605 List!63462)) )
))
(declare-fun lt!2278666 () Context!10210)

(declare-fun lt!2278693 () Regex!15721)

(declare-datatypes ((List!63463 0))(
  ( (Nil!63339) (Cons!63339 (h!69787 Context!10210) (t!376789 List!63463)) )
))
(declare-fun unfocusZipper!1463 (List!63463) Regex!15721)

(assert (=> b!5723587 (= res!2416428 (not (= (unfocusZipper!1463 (Cons!63339 lt!2278666 Nil!63339)) lt!2278693)))))

(declare-fun lt!2278677 () Regex!15721)

(assert (=> b!5723587 (= lt!2278693 (Concat!24566 (reg!16050 (regOne!31954 r!7292)) lt!2278677))))

(declare-fun e!3519466 () Bool)

(declare-fun lt!2278694 () Context!10210)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2278685 () (InoxSet Context!10210))

(declare-fun lt!2278675 () (InoxSet Context!10210))

(declare-fun appendTo!102 ((InoxSet Context!10210) Context!10210) (InoxSet Context!10210))

(assert (=> b!5723588 (= e!3519466 (= (appendTo!102 lt!2278685 lt!2278694) lt!2278675))))

(declare-fun lambda!309370 () Int)

(declare-fun lt!2278663 () List!63462)

(declare-fun map!14502 ((InoxSet Context!10210) Int) (InoxSet Context!10210))

(declare-fun ++!13915 (List!63462 List!63462) List!63462)

(assert (=> b!5723588 (= (map!14502 lt!2278685 lambda!309370) (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663)) true))))

(declare-fun lambda!309371 () Int)

(declare-datatypes ((Unit!156416 0))(
  ( (Unit!156417) )
))
(declare-fun lt!2278660 () Unit!156416)

(declare-fun lemmaConcatPreservesForall!290 (List!63462 List!63462 Int) Unit!156416)

(assert (=> b!5723588 (= lt!2278660 (lemmaConcatPreservesForall!290 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663 lambda!309371))))

(declare-fun lt!2278687 () Unit!156416)

(declare-fun lt!2278665 () Context!10210)

(declare-fun lemmaMapOnSingletonSet!116 ((InoxSet Context!10210) Context!10210 Int) Unit!156416)

(assert (=> b!5723588 (= lt!2278687 (lemmaMapOnSingletonSet!116 lt!2278685 lt!2278665 lambda!309370))))

(declare-fun b!5723589 () Bool)

(declare-fun e!3519472 () Bool)

(declare-fun tp_is_empty!40695 () Bool)

(assert (=> b!5723589 (= e!3519472 tp_is_empty!40695)))

(declare-fun b!5723590 () Bool)

(declare-fun res!2416408 () Bool)

(declare-fun e!3519463 () Bool)

(assert (=> b!5723590 (=> res!2416408 e!3519463)))

(declare-fun zl!343 () List!63463)

(get-info :version)

(assert (=> b!5723590 (= res!2416408 (not ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5723591 () Bool)

(declare-fun res!2416409 () Bool)

(declare-fun e!3519465 () Bool)

(assert (=> b!5723591 (=> res!2416409 e!3519465)))

(assert (=> b!5723591 (= res!2416409 (or ((_ is Concat!24566) (regOne!31954 r!7292)) (not ((_ is Star!15721) (regOne!31954 r!7292)))))))

(declare-fun e!3519468 () Bool)

(assert (=> b!5723592 (= e!3519463 e!3519468)))

(declare-fun res!2416434 () Bool)

(assert (=> b!5723592 (=> res!2416434 e!3519468)))

(declare-fun lt!2278692 () Bool)

(declare-fun lt!2278662 () Bool)

(declare-datatypes ((List!63464 0))(
  ( (Nil!63340) (Cons!63340 (h!69788 C!31712) (t!376790 List!63464)) )
))
(declare-fun s!2326 () List!63464)

(assert (=> b!5723592 (= res!2416434 (or (not (= lt!2278692 lt!2278662)) ((_ is Nil!63340) s!2326)))))

(declare-fun Exists!2821 (Int) Bool)

(assert (=> b!5723592 (= (Exists!2821 lambda!309367) (Exists!2821 lambda!309368))))

(declare-fun lt!2278689 () Unit!156416)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1450 (Regex!15721 Regex!15721 List!63464) Unit!156416)

(assert (=> b!5723592 (= lt!2278689 (lemmaExistCutMatchRandMatchRSpecEquivalent!1450 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326))))

(assert (=> b!5723592 (= lt!2278662 (Exists!2821 lambda!309367))))

(declare-datatypes ((tuple2!65636 0))(
  ( (tuple2!65637 (_1!36121 List!63464) (_2!36121 List!63464)) )
))
(declare-datatypes ((Option!15730 0))(
  ( (None!15729) (Some!15729 (v!51784 tuple2!65636)) )
))
(declare-fun isDefined!12433 (Option!15730) Bool)

(declare-fun findConcatSeparation!2144 (Regex!15721 Regex!15721 List!63464 List!63464 List!63464) Option!15730)

(assert (=> b!5723592 (= lt!2278662 (isDefined!12433 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326)))))

(declare-fun lt!2278664 () Unit!156416)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1908 (Regex!15721 Regex!15721 List!63464) Unit!156416)

(assert (=> b!5723592 (= lt!2278664 (lemmaFindConcatSeparationEquivalentToExists!1908 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326))))

(declare-fun b!5723593 () Bool)

(declare-fun tp!1584994 () Bool)

(declare-fun tp!1584993 () Bool)

(assert (=> b!5723593 (= e!3519472 (and tp!1584994 tp!1584993))))

(declare-fun b!5723594 () Bool)

(declare-fun res!2416410 () Bool)

(assert (=> b!5723594 (=> res!2416410 e!3519463)))

(declare-fun isEmpty!35213 (List!63463) Bool)

(assert (=> b!5723594 (= res!2416410 (not (isEmpty!35213 (t!376789 zl!343))))))

(declare-fun b!5723595 () Bool)

(declare-fun res!2416421 () Bool)

(assert (=> b!5723595 (=> res!2416421 e!3519463)))

(declare-fun generalisedUnion!1584 (List!63462) Regex!15721)

(declare-fun unfocusZipperList!1149 (List!63463) List!63462)

(assert (=> b!5723595 (= res!2416421 (not (= r!7292 (generalisedUnion!1584 (unfocusZipperList!1149 zl!343)))))))

(declare-fun b!5723596 () Bool)

(declare-fun e!3519459 () Unit!156416)

(declare-fun Unit!156418 () Unit!156416)

(assert (=> b!5723596 (= e!3519459 Unit!156418)))

(declare-fun lt!2278659 () (InoxSet Context!10210))

(declare-fun lt!2278670 () Unit!156416)

(declare-fun lt!2278681 () (InoxSet Context!10210))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!746 ((InoxSet Context!10210) (InoxSet Context!10210) List!63464) Unit!156416)

(assert (=> b!5723596 (= lt!2278670 (lemmaZipperConcatMatchesSameAsBothZippers!746 lt!2278659 lt!2278681 (t!376790 s!2326)))))

(declare-fun res!2416425 () Bool)

(declare-fun matchZipper!1859 ((InoxSet Context!10210) List!63464) Bool)

(assert (=> b!5723596 (= res!2416425 (matchZipper!1859 lt!2278659 (t!376790 s!2326)))))

(declare-fun e!3519478 () Bool)

(assert (=> b!5723596 (=> res!2416425 e!3519478)))

(assert (=> b!5723596 (= (matchZipper!1859 ((_ map or) lt!2278659 lt!2278681) (t!376790 s!2326)) e!3519478)))

(declare-fun b!5723597 () Bool)

(declare-fun e!3519462 () Bool)

(declare-fun e!3519469 () Bool)

(assert (=> b!5723597 (= e!3519462 e!3519469)))

(declare-fun res!2416412 () Bool)

(assert (=> b!5723597 (=> res!2416412 e!3519469)))

(assert (=> b!5723597 (= res!2416412 lt!2278692)))

(declare-fun matchR!7906 (Regex!15721 List!63464) Bool)

(declare-fun matchRSpec!2824 (Regex!15721 List!63464) Bool)

(assert (=> b!5723597 (= (matchR!7906 lt!2278693 s!2326) (matchRSpec!2824 lt!2278693 s!2326))))

(declare-fun lt!2278676 () Unit!156416)

(declare-fun mainMatchTheorem!2824 (Regex!15721 List!63464) Unit!156416)

(assert (=> b!5723597 (= lt!2278676 (mainMatchTheorem!2824 lt!2278693 s!2326))))

(declare-fun b!5723598 () Bool)

(declare-fun tp!1584996 () Bool)

(declare-fun e!3519473 () Bool)

(declare-fun e!3519475 () Bool)

(declare-fun inv!82549 (Context!10210) Bool)

(assert (=> b!5723598 (= e!3519473 (and (inv!82549 (h!69787 zl!343)) e!3519475 tp!1584996))))

(declare-fun res!2416414 () Bool)

(declare-fun e!3519460 () Bool)

(assert (=> start!589092 (=> (not res!2416414) (not e!3519460))))

(declare-fun validRegex!7457 (Regex!15721) Bool)

(assert (=> start!589092 (= res!2416414 (validRegex!7457 r!7292))))

(assert (=> start!589092 e!3519460))

(assert (=> start!589092 e!3519472))

(declare-fun condSetEmpty!38363 () Bool)

(declare-fun z!1189 () (InoxSet Context!10210))

(assert (=> start!589092 (= condSetEmpty!38363 (= z!1189 ((as const (Array Context!10210 Bool)) false)))))

(declare-fun setRes!38363 () Bool)

(assert (=> start!589092 setRes!38363))

(assert (=> start!589092 e!3519473))

(declare-fun e!3519477 () Bool)

(assert (=> start!589092 e!3519477))

(declare-fun b!5723599 () Bool)

(declare-fun tp!1584997 () Bool)

(assert (=> b!5723599 (= e!3519472 tp!1584997)))

(declare-fun b!5723600 () Bool)

(assert (=> b!5723600 (= e!3519458 e!3519462)))

(declare-fun res!2416427 () Bool)

(assert (=> b!5723600 (=> res!2416427 e!3519462)))

(assert (=> b!5723600 (= res!2416427 (not (= (unfocusZipper!1463 (Cons!63339 lt!2278665 Nil!63339)) (reg!16050 (regOne!31954 r!7292)))))))

(declare-fun lt!2278669 () (InoxSet Context!10210))

(declare-fun lambda!309369 () Int)

(declare-fun flatMap!1334 ((InoxSet Context!10210) Int) (InoxSet Context!10210))

(declare-fun derivationStepZipperUp!989 (Context!10210 C!31712) (InoxSet Context!10210))

(assert (=> b!5723600 (= (flatMap!1334 lt!2278669 lambda!309369) (derivationStepZipperUp!989 lt!2278694 (h!69788 s!2326)))))

(declare-fun lt!2278658 () Unit!156416)

(declare-fun lemmaFlatMapOnSingletonSet!866 ((InoxSet Context!10210) Context!10210 Int) Unit!156416)

(assert (=> b!5723600 (= lt!2278658 (lemmaFlatMapOnSingletonSet!866 lt!2278669 lt!2278694 lambda!309369))))

(assert (=> b!5723600 (= (flatMap!1334 lt!2278685 lambda!309369) (derivationStepZipperUp!989 lt!2278665 (h!69788 s!2326)))))

(declare-fun lt!2278661 () Unit!156416)

(assert (=> b!5723600 (= lt!2278661 (lemmaFlatMapOnSingletonSet!866 lt!2278685 lt!2278665 lambda!309369))))

(declare-fun lt!2278678 () (InoxSet Context!10210))

(assert (=> b!5723600 (= lt!2278678 (derivationStepZipperUp!989 lt!2278694 (h!69788 s!2326)))))

(declare-fun lt!2278671 () (InoxSet Context!10210))

(assert (=> b!5723600 (= lt!2278671 (derivationStepZipperUp!989 lt!2278665 (h!69788 s!2326)))))

(assert (=> b!5723600 (= lt!2278669 (store ((as const (Array Context!10210 Bool)) false) lt!2278694 true))))

(assert (=> b!5723600 (= lt!2278685 (store ((as const (Array Context!10210 Bool)) false) lt!2278665 true))))

(assert (=> b!5723600 (= lt!2278665 (Context!10211 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))

(declare-fun b!5723601 () Bool)

(declare-fun res!2416432 () Bool)

(assert (=> b!5723601 (=> res!2416432 e!3519466)))

(declare-fun lt!2278688 () Bool)

(declare-fun lt!2278679 () Bool)

(assert (=> b!5723601 (= res!2416432 (or (not lt!2278688) (not lt!2278679)))))

(declare-fun b!5723602 () Bool)

(declare-fun res!2416424 () Bool)

(assert (=> b!5723602 (=> res!2416424 e!3519469)))

(assert (=> b!5723602 (= res!2416424 (not (matchZipper!1859 z!1189 s!2326)))))

(declare-fun b!5723603 () Bool)

(declare-fun e!3519476 () Bool)

(assert (=> b!5723603 (= e!3519465 e!3519476)))

(declare-fun res!2416418 () Bool)

(assert (=> b!5723603 (=> res!2416418 e!3519476)))

(declare-fun lt!2278668 () (InoxSet Context!10210))

(assert (=> b!5723603 (= res!2416418 (not (= lt!2278659 lt!2278668)))))

(declare-fun derivationStepZipperDown!1063 (Regex!15721 Context!10210 C!31712) (InoxSet Context!10210))

(assert (=> b!5723603 (= lt!2278668 (derivationStepZipperDown!1063 (reg!16050 (regOne!31954 r!7292)) lt!2278694 (h!69788 s!2326)))))

(assert (=> b!5723603 (= lt!2278694 (Context!10211 lt!2278663))))

(declare-fun lt!2278674 () Regex!15721)

(assert (=> b!5723603 (= lt!2278663 (Cons!63338 lt!2278674 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5723603 (= lt!2278674 (Star!15721 (reg!16050 (regOne!31954 r!7292))))))

(declare-fun setIsEmpty!38363 () Bool)

(assert (=> setIsEmpty!38363 setRes!38363))

(declare-fun b!5723604 () Bool)

(declare-fun res!2416429 () Bool)

(assert (=> b!5723604 (=> res!2416429 e!3519463)))

(assert (=> b!5723604 (= res!2416429 (or ((_ is EmptyExpr!15721) r!7292) ((_ is EmptyLang!15721) r!7292) ((_ is ElementMatch!15721) r!7292) ((_ is Union!15721) r!7292) (not ((_ is Concat!24566) r!7292))))))

(declare-fun b!5723605 () Bool)

(declare-fun tp!1584995 () Bool)

(assert (=> b!5723605 (= e!3519477 (and tp_is_empty!40695 tp!1584995))))

(declare-fun b!5723606 () Bool)

(declare-fun Unit!156419 () Unit!156416)

(assert (=> b!5723606 (= e!3519459 Unit!156419)))

(declare-fun b!5723607 () Bool)

(assert (=> b!5723607 (= e!3519478 (matchZipper!1859 lt!2278681 (t!376790 s!2326)))))

(declare-fun b!5723608 () Bool)

(declare-fun res!2416426 () Bool)

(assert (=> b!5723608 (=> res!2416426 e!3519463)))

(declare-fun generalisedConcat!1336 (List!63462) Regex!15721)

(assert (=> b!5723608 (= res!2416426 (not (= r!7292 (generalisedConcat!1336 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5723609 () Bool)

(declare-fun e!3519464 () Bool)

(assert (=> b!5723609 (= e!3519464 e!3519474)))

(declare-fun res!2416423 () Bool)

(assert (=> b!5723609 (=> res!2416423 e!3519474)))

(declare-fun lt!2278684 () (InoxSet Context!10210))

(assert (=> b!5723609 (= res!2416423 (not (= lt!2278679 (matchZipper!1859 lt!2278684 (t!376790 s!2326)))))))

(assert (=> b!5723609 (= lt!2278679 (matchZipper!1859 lt!2278675 s!2326))))

(declare-fun b!5723610 () Bool)

(declare-fun tp!1584991 () Bool)

(assert (=> b!5723610 (= e!3519475 tp!1584991)))

(declare-fun b!5723611 () Bool)

(assert (=> b!5723611 (= e!3519476 e!3519464)))

(declare-fun res!2416411 () Bool)

(assert (=> b!5723611 (=> res!2416411 e!3519464)))

(assert (=> b!5723611 (= res!2416411 (not (= lt!2278684 lt!2278668)))))

(assert (=> b!5723611 (= (flatMap!1334 lt!2278675 lambda!309369) (derivationStepZipperUp!989 lt!2278666 (h!69788 s!2326)))))

(declare-fun lt!2278683 () Unit!156416)

(assert (=> b!5723611 (= lt!2278683 (lemmaFlatMapOnSingletonSet!866 lt!2278675 lt!2278666 lambda!309369))))

(declare-fun lt!2278680 () (InoxSet Context!10210))

(assert (=> b!5723611 (= lt!2278680 (derivationStepZipperUp!989 lt!2278666 (h!69788 s!2326)))))

(declare-fun derivationStepZipper!1804 ((InoxSet Context!10210) C!31712) (InoxSet Context!10210))

(assert (=> b!5723611 (= lt!2278684 (derivationStepZipper!1804 lt!2278675 (h!69788 s!2326)))))

(assert (=> b!5723611 (= lt!2278675 (store ((as const (Array Context!10210 Bool)) false) lt!2278666 true))))

(assert (=> b!5723611 (= lt!2278666 (Context!10211 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) lt!2278663)))))

(declare-fun b!5723612 () Bool)

(declare-fun res!2416417 () Bool)

(assert (=> b!5723612 (=> res!2416417 e!3519469)))

(declare-fun lt!2278686 () Bool)

(assert (=> b!5723612 (= res!2416417 (not lt!2278686))))

(declare-fun b!5723613 () Bool)

(declare-fun e!3519461 () Bool)

(assert (=> b!5723613 (= e!3519461 (not e!3519463))))

(declare-fun res!2416419 () Bool)

(assert (=> b!5723613 (=> res!2416419 e!3519463)))

(assert (=> b!5723613 (= res!2416419 (not ((_ is Cons!63339) zl!343)))))

(assert (=> b!5723613 (= lt!2278692 (matchRSpec!2824 r!7292 s!2326))))

(assert (=> b!5723613 (= lt!2278692 (matchR!7906 r!7292 s!2326))))

(declare-fun lt!2278690 () Unit!156416)

(assert (=> b!5723613 (= lt!2278690 (mainMatchTheorem!2824 r!7292 s!2326))))

(declare-fun b!5723614 () Bool)

(declare-fun res!2416431 () Bool)

(assert (=> b!5723614 (=> res!2416431 e!3519465)))

(declare-fun e!3519457 () Bool)

(assert (=> b!5723614 (= res!2416431 e!3519457)))

(declare-fun res!2416413 () Bool)

(assert (=> b!5723614 (=> (not res!2416413) (not e!3519457))))

(assert (=> b!5723614 (= res!2416413 ((_ is Concat!24566) (regOne!31954 r!7292)))))

(declare-fun b!5723615 () Bool)

(declare-fun res!2416420 () Bool)

(assert (=> b!5723615 (=> res!2416420 e!3519468)))

(declare-fun isEmpty!35214 (List!63462) Bool)

(assert (=> b!5723615 (= res!2416420 (isEmpty!35214 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5723616 () Bool)

(declare-fun tp!1584992 () Bool)

(declare-fun tp!1584998 () Bool)

(assert (=> b!5723616 (= e!3519472 (and tp!1584992 tp!1584998))))

(declare-fun b!5723617 () Bool)

(assert (=> b!5723617 (= e!3519460 e!3519461)))

(declare-fun res!2416416 () Bool)

(assert (=> b!5723617 (=> (not res!2416416) (not e!3519461))))

(assert (=> b!5723617 (= res!2416416 (= r!7292 lt!2278673))))

(assert (=> b!5723617 (= lt!2278673 (unfocusZipper!1463 zl!343))))

(declare-fun b!5723618 () Bool)

(assert (=> b!5723618 (= e!3519474 e!3519467)))

(declare-fun res!2416422 () Bool)

(assert (=> b!5723618 (=> res!2416422 e!3519467)))

(assert (=> b!5723618 (= res!2416422 (not (= r!7292 lt!2278677)))))

(assert (=> b!5723618 (= lt!2278677 (Concat!24566 lt!2278674 (regTwo!31954 r!7292)))))

(declare-fun b!5723619 () Bool)

(declare-fun e!3519471 () Bool)

(assert (=> b!5723619 (= e!3519471 (not (matchZipper!1859 lt!2278681 (t!376790 s!2326))))))

(declare-fun b!5723620 () Bool)

(declare-fun res!2416406 () Bool)

(assert (=> b!5723620 (=> res!2416406 e!3519462)))

(assert (=> b!5723620 (= res!2416406 (not (= (unfocusZipper!1463 (Cons!63339 lt!2278694 Nil!63339)) lt!2278677)))))

(declare-fun b!5723621 () Bool)

(declare-fun nullable!5753 (Regex!15721) Bool)

(assert (=> b!5723621 (= e!3519457 (nullable!5753 (regOne!31954 (regOne!31954 r!7292))))))

(declare-fun b!5723622 () Bool)

(assert (=> b!5723622 (= e!3519469 e!3519466)))

(declare-fun res!2416415 () Bool)

(assert (=> b!5723622 (=> res!2416415 e!3519466)))

(assert (=> b!5723622 (= res!2416415 e!3519471)))

(declare-fun res!2416433 () Bool)

(assert (=> b!5723622 (=> (not res!2416433) (not e!3519471))))

(assert (=> b!5723622 (= res!2416433 (not lt!2278688))))

(assert (=> b!5723622 (= lt!2278688 (matchZipper!1859 lt!2278659 (t!376790 s!2326)))))

(declare-fun b!5723623 () Bool)

(declare-fun res!2416430 () Bool)

(assert (=> b!5723623 (=> (not res!2416430) (not e!3519460))))

(declare-fun toList!9505 ((InoxSet Context!10210)) List!63463)

(assert (=> b!5723623 (= res!2416430 (= (toList!9505 z!1189) zl!343))))

(declare-fun setElem!38363 () Context!10210)

(declare-fun e!3519470 () Bool)

(declare-fun tp!1584989 () Bool)

(declare-fun setNonEmpty!38363 () Bool)

(assert (=> setNonEmpty!38363 (= setRes!38363 (and tp!1584989 (inv!82549 setElem!38363) e!3519470))))

(declare-fun setRest!38363 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38363 (= z!1189 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38363 true) setRest!38363))))

(declare-fun b!5723624 () Bool)

(declare-fun tp!1584990 () Bool)

(assert (=> b!5723624 (= e!3519470 tp!1584990)))

(assert (=> b!5723625 (= e!3519468 e!3519465)))

(declare-fun res!2416435 () Bool)

(assert (=> b!5723625 (=> res!2416435 e!3519465)))

(assert (=> b!5723625 (= res!2416435 (or (and ((_ is ElementMatch!15721) (regOne!31954 r!7292)) (= (c!1009551 (regOne!31954 r!7292)) (h!69788 s!2326))) ((_ is Union!15721) (regOne!31954 r!7292))))))

(declare-fun lt!2278682 () Unit!156416)

(assert (=> b!5723625 (= lt!2278682 e!3519459)))

(declare-fun c!1009550 () Bool)

(assert (=> b!5723625 (= c!1009550 lt!2278686)))

(assert (=> b!5723625 (= lt!2278686 (nullable!5753 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5723625 (= (flatMap!1334 z!1189 lambda!309369) (derivationStepZipperUp!989 (h!69787 zl!343) (h!69788 s!2326)))))

(declare-fun lt!2278667 () Unit!156416)

(assert (=> b!5723625 (= lt!2278667 (lemmaFlatMapOnSingletonSet!866 z!1189 (h!69787 zl!343) lambda!309369))))

(declare-fun lt!2278672 () Context!10210)

(assert (=> b!5723625 (= lt!2278681 (derivationStepZipperUp!989 lt!2278672 (h!69788 s!2326)))))

(assert (=> b!5723625 (= lt!2278659 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (h!69787 zl!343))) lt!2278672 (h!69788 s!2326)))))

(assert (=> b!5723625 (= lt!2278672 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun lt!2278691 () (InoxSet Context!10210))

(assert (=> b!5723625 (= lt!2278691 (derivationStepZipperUp!989 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))) (h!69788 s!2326)))))

(assert (= (and start!589092 res!2416414) b!5723623))

(assert (= (and b!5723623 res!2416430) b!5723617))

(assert (= (and b!5723617 res!2416416) b!5723613))

(assert (= (and b!5723613 (not res!2416419)) b!5723594))

(assert (= (and b!5723594 (not res!2416410)) b!5723608))

(assert (= (and b!5723608 (not res!2416426)) b!5723590))

(assert (= (and b!5723590 (not res!2416408)) b!5723595))

(assert (= (and b!5723595 (not res!2416421)) b!5723604))

(assert (= (and b!5723604 (not res!2416429)) b!5723592))

(assert (= (and b!5723592 (not res!2416434)) b!5723615))

(assert (= (and b!5723615 (not res!2416420)) b!5723625))

(assert (= (and b!5723625 c!1009550) b!5723596))

(assert (= (and b!5723625 (not c!1009550)) b!5723606))

(assert (= (and b!5723596 (not res!2416425)) b!5723607))

(assert (= (and b!5723625 (not res!2416435)) b!5723614))

(assert (= (and b!5723614 res!2416413) b!5723621))

(assert (= (and b!5723614 (not res!2416431)) b!5723591))

(assert (= (and b!5723591 (not res!2416409)) b!5723603))

(assert (= (and b!5723603 (not res!2416418)) b!5723611))

(assert (= (and b!5723611 (not res!2416411)) b!5723609))

(assert (= (and b!5723609 (not res!2416423)) b!5723586))

(assert (= (and b!5723586 (not res!2416407)) b!5723618))

(assert (= (and b!5723618 (not res!2416422)) b!5723587))

(assert (= (and b!5723587 (not res!2416428)) b!5723600))

(assert (= (and b!5723600 (not res!2416427)) b!5723620))

(assert (= (and b!5723620 (not res!2416406)) b!5723597))

(assert (= (and b!5723597 (not res!2416412)) b!5723602))

(assert (= (and b!5723602 (not res!2416424)) b!5723612))

(assert (= (and b!5723612 (not res!2416417)) b!5723622))

(assert (= (and b!5723622 res!2416433) b!5723619))

(assert (= (and b!5723622 (not res!2416415)) b!5723601))

(assert (= (and b!5723601 (not res!2416432)) b!5723588))

(assert (= (and start!589092 ((_ is ElementMatch!15721) r!7292)) b!5723589))

(assert (= (and start!589092 ((_ is Concat!24566) r!7292)) b!5723593))

(assert (= (and start!589092 ((_ is Star!15721) r!7292)) b!5723599))

(assert (= (and start!589092 ((_ is Union!15721) r!7292)) b!5723616))

(assert (= (and start!589092 condSetEmpty!38363) setIsEmpty!38363))

(assert (= (and start!589092 (not condSetEmpty!38363)) setNonEmpty!38363))

(assert (= setNonEmpty!38363 b!5723624))

(assert (= b!5723598 b!5723610))

(assert (= (and start!589092 ((_ is Cons!63339) zl!343)) b!5723598))

(assert (= (and start!589092 ((_ is Cons!63340) s!2326)) b!5723605))

(declare-fun m!6676418 () Bool)

(assert (=> b!5723620 m!6676418))

(declare-fun m!6676420 () Bool)

(assert (=> b!5723588 m!6676420))

(declare-fun m!6676422 () Bool)

(assert (=> b!5723588 m!6676422))

(declare-fun m!6676424 () Bool)

(assert (=> b!5723588 m!6676424))

(declare-fun m!6676426 () Bool)

(assert (=> b!5723588 m!6676426))

(declare-fun m!6676428 () Bool)

(assert (=> b!5723588 m!6676428))

(declare-fun m!6676430 () Bool)

(assert (=> b!5723588 m!6676430))

(declare-fun m!6676432 () Bool)

(assert (=> b!5723596 m!6676432))

(declare-fun m!6676434 () Bool)

(assert (=> b!5723596 m!6676434))

(declare-fun m!6676436 () Bool)

(assert (=> b!5723596 m!6676436))

(declare-fun m!6676438 () Bool)

(assert (=> b!5723625 m!6676438))

(declare-fun m!6676440 () Bool)

(assert (=> b!5723625 m!6676440))

(declare-fun m!6676442 () Bool)

(assert (=> b!5723625 m!6676442))

(declare-fun m!6676444 () Bool)

(assert (=> b!5723625 m!6676444))

(declare-fun m!6676446 () Bool)

(assert (=> b!5723625 m!6676446))

(declare-fun m!6676448 () Bool)

(assert (=> b!5723625 m!6676448))

(declare-fun m!6676450 () Bool)

(assert (=> b!5723625 m!6676450))

(declare-fun m!6676452 () Bool)

(assert (=> b!5723623 m!6676452))

(declare-fun m!6676454 () Bool)

(assert (=> b!5723607 m!6676454))

(declare-fun m!6676456 () Bool)

(assert (=> b!5723617 m!6676456))

(declare-fun m!6676458 () Bool)

(assert (=> b!5723609 m!6676458))

(declare-fun m!6676460 () Bool)

(assert (=> b!5723609 m!6676460))

(declare-fun m!6676462 () Bool)

(assert (=> b!5723608 m!6676462))

(declare-fun m!6676464 () Bool)

(assert (=> b!5723595 m!6676464))

(assert (=> b!5723595 m!6676464))

(declare-fun m!6676466 () Bool)

(assert (=> b!5723595 m!6676466))

(declare-fun m!6676468 () Bool)

(assert (=> b!5723611 m!6676468))

(declare-fun m!6676470 () Bool)

(assert (=> b!5723611 m!6676470))

(declare-fun m!6676472 () Bool)

(assert (=> b!5723611 m!6676472))

(declare-fun m!6676474 () Bool)

(assert (=> b!5723611 m!6676474))

(declare-fun m!6676476 () Bool)

(assert (=> b!5723611 m!6676476))

(assert (=> b!5723619 m!6676454))

(declare-fun m!6676478 () Bool)

(assert (=> b!5723613 m!6676478))

(declare-fun m!6676480 () Bool)

(assert (=> b!5723613 m!6676480))

(declare-fun m!6676482 () Bool)

(assert (=> b!5723613 m!6676482))

(assert (=> b!5723622 m!6676434))

(declare-fun m!6676484 () Bool)

(assert (=> b!5723592 m!6676484))

(declare-fun m!6676486 () Bool)

(assert (=> b!5723592 m!6676486))

(declare-fun m!6676488 () Bool)

(assert (=> b!5723592 m!6676488))

(declare-fun m!6676490 () Bool)

(assert (=> b!5723592 m!6676490))

(declare-fun m!6676492 () Bool)

(assert (=> b!5723592 m!6676492))

(assert (=> b!5723592 m!6676490))

(assert (=> b!5723592 m!6676484))

(declare-fun m!6676494 () Bool)

(assert (=> b!5723592 m!6676494))

(declare-fun m!6676496 () Bool)

(assert (=> setNonEmpty!38363 m!6676496))

(declare-fun m!6676498 () Bool)

(assert (=> b!5723603 m!6676498))

(declare-fun m!6676500 () Bool)

(assert (=> start!589092 m!6676500))

(declare-fun m!6676502 () Bool)

(assert (=> b!5723587 m!6676502))

(declare-fun m!6676504 () Bool)

(assert (=> b!5723602 m!6676504))

(declare-fun m!6676506 () Bool)

(assert (=> b!5723597 m!6676506))

(declare-fun m!6676508 () Bool)

(assert (=> b!5723597 m!6676508))

(declare-fun m!6676510 () Bool)

(assert (=> b!5723597 m!6676510))

(declare-fun m!6676512 () Bool)

(assert (=> b!5723600 m!6676512))

(declare-fun m!6676514 () Bool)

(assert (=> b!5723600 m!6676514))

(declare-fun m!6676516 () Bool)

(assert (=> b!5723600 m!6676516))

(declare-fun m!6676518 () Bool)

(assert (=> b!5723600 m!6676518))

(declare-fun m!6676520 () Bool)

(assert (=> b!5723600 m!6676520))

(declare-fun m!6676522 () Bool)

(assert (=> b!5723600 m!6676522))

(declare-fun m!6676524 () Bool)

(assert (=> b!5723600 m!6676524))

(declare-fun m!6676526 () Bool)

(assert (=> b!5723600 m!6676526))

(declare-fun m!6676528 () Bool)

(assert (=> b!5723600 m!6676528))

(declare-fun m!6676530 () Bool)

(assert (=> b!5723621 m!6676530))

(declare-fun m!6676532 () Bool)

(assert (=> b!5723594 m!6676532))

(declare-fun m!6676534 () Bool)

(assert (=> b!5723615 m!6676534))

(declare-fun m!6676536 () Bool)

(assert (=> b!5723598 m!6676536))

(check-sat (not b!5723603) (not b!5723610) (not b!5723600) (not b!5723592) (not b!5723619) (not b!5723593) (not b!5723611) (not b!5723595) (not b!5723597) (not b!5723608) (not b!5723609) (not b!5723621) (not b!5723624) (not b!5723615) (not b!5723620) (not b!5723613) (not start!589092) (not b!5723594) (not b!5723587) (not b!5723622) (not b!5723616) (not b!5723625) (not b!5723607) (not b!5723617) (not setNonEmpty!38363) (not b!5723596) (not b!5723588) (not b!5723605) (not b!5723623) (not b!5723598) (not b!5723599) (not b!5723602) tp_is_empty!40695)
(check-sat)
(get-model)

(declare-fun bs!1338333 () Bool)

(declare-fun d!1805580 () Bool)

(assert (= bs!1338333 (and d!1805580 b!5723588)))

(declare-fun lambda!309402 () Int)

(assert (=> bs!1338333 (= lambda!309402 lambda!309371)))

(declare-fun b!5723978 () Bool)

(declare-fun e!3519681 () Bool)

(declare-fun lt!2278751 () Regex!15721)

(declare-fun isEmptyExpr!1226 (Regex!15721) Bool)

(assert (=> b!5723978 (= e!3519681 (isEmptyExpr!1226 lt!2278751))))

(declare-fun b!5723979 () Bool)

(declare-fun e!3519678 () Regex!15721)

(assert (=> b!5723979 (= e!3519678 EmptyExpr!15721)))

(declare-fun b!5723980 () Bool)

(assert (=> b!5723980 (= e!3519678 (Concat!24566 (h!69786 (exprs!5605 (h!69787 zl!343))) (generalisedConcat!1336 (t!376788 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5723981 () Bool)

(declare-fun e!3519680 () Bool)

(assert (=> b!5723981 (= e!3519680 e!3519681)))

(declare-fun c!1009662 () Bool)

(assert (=> b!5723981 (= c!1009662 (isEmpty!35214 (exprs!5605 (h!69787 zl!343))))))

(assert (=> d!1805580 e!3519680))

(declare-fun res!2416565 () Bool)

(assert (=> d!1805580 (=> (not res!2416565) (not e!3519680))))

(assert (=> d!1805580 (= res!2416565 (validRegex!7457 lt!2278751))))

(declare-fun e!3519679 () Regex!15721)

(assert (=> d!1805580 (= lt!2278751 e!3519679)))

(declare-fun c!1009663 () Bool)

(declare-fun e!3519676 () Bool)

(assert (=> d!1805580 (= c!1009663 e!3519676)))

(declare-fun res!2416564 () Bool)

(assert (=> d!1805580 (=> (not res!2416564) (not e!3519676))))

(assert (=> d!1805580 (= res!2416564 ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343))))))

(declare-fun forall!14854 (List!63462 Int) Bool)

(assert (=> d!1805580 (forall!14854 (exprs!5605 (h!69787 zl!343)) lambda!309402)))

(assert (=> d!1805580 (= (generalisedConcat!1336 (exprs!5605 (h!69787 zl!343))) lt!2278751)))

(declare-fun b!5723982 () Bool)

(declare-fun e!3519677 () Bool)

(declare-fun isConcat!749 (Regex!15721) Bool)

(assert (=> b!5723982 (= e!3519677 (isConcat!749 lt!2278751))))

(declare-fun b!5723983 () Bool)

(assert (=> b!5723983 (= e!3519679 e!3519678)))

(declare-fun c!1009664 () Bool)

(assert (=> b!5723983 (= c!1009664 ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343))))))

(declare-fun b!5723984 () Bool)

(declare-fun head!12118 (List!63462) Regex!15721)

(assert (=> b!5723984 (= e!3519677 (= lt!2278751 (head!12118 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5723985 () Bool)

(assert (=> b!5723985 (= e!3519676 (isEmpty!35214 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5723986 () Bool)

(assert (=> b!5723986 (= e!3519681 e!3519677)))

(declare-fun c!1009661 () Bool)

(declare-fun tail!11213 (List!63462) List!63462)

(assert (=> b!5723986 (= c!1009661 (isEmpty!35214 (tail!11213 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5723987 () Bool)

(assert (=> b!5723987 (= e!3519679 (h!69786 (exprs!5605 (h!69787 zl!343))))))

(assert (= (and d!1805580 res!2416564) b!5723985))

(assert (= (and d!1805580 c!1009663) b!5723987))

(assert (= (and d!1805580 (not c!1009663)) b!5723983))

(assert (= (and b!5723983 c!1009664) b!5723980))

(assert (= (and b!5723983 (not c!1009664)) b!5723979))

(assert (= (and d!1805580 res!2416565) b!5723981))

(assert (= (and b!5723981 c!1009662) b!5723978))

(assert (= (and b!5723981 (not c!1009662)) b!5723986))

(assert (= (and b!5723986 c!1009661) b!5723984))

(assert (= (and b!5723986 (not c!1009661)) b!5723982))

(declare-fun m!6676810 () Bool)

(assert (=> b!5723978 m!6676810))

(assert (=> b!5723985 m!6676534))

(declare-fun m!6676812 () Bool)

(assert (=> b!5723982 m!6676812))

(declare-fun m!6676814 () Bool)

(assert (=> d!1805580 m!6676814))

(declare-fun m!6676816 () Bool)

(assert (=> d!1805580 m!6676816))

(declare-fun m!6676818 () Bool)

(assert (=> b!5723986 m!6676818))

(assert (=> b!5723986 m!6676818))

(declare-fun m!6676822 () Bool)

(assert (=> b!5723986 m!6676822))

(declare-fun m!6676824 () Bool)

(assert (=> b!5723981 m!6676824))

(declare-fun m!6676826 () Bool)

(assert (=> b!5723980 m!6676826))

(declare-fun m!6676828 () Bool)

(assert (=> b!5723984 m!6676828))

(assert (=> b!5723608 d!1805580))

(declare-fun d!1805612 () Bool)

(declare-fun lt!2278758 () Regex!15721)

(assert (=> d!1805612 (validRegex!7457 lt!2278758)))

(assert (=> d!1805612 (= lt!2278758 (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))

(assert (=> d!1805612 (= (unfocusZipper!1463 (Cons!63339 lt!2278666 Nil!63339)) lt!2278758)))

(declare-fun bs!1338340 () Bool)

(assert (= bs!1338340 d!1805612))

(declare-fun m!6676848 () Bool)

(assert (=> bs!1338340 m!6676848))

(declare-fun m!6676850 () Bool)

(assert (=> bs!1338340 m!6676850))

(assert (=> bs!1338340 m!6676850))

(declare-fun m!6676852 () Bool)

(assert (=> bs!1338340 m!6676852))

(assert (=> b!5723587 d!1805612))

(declare-fun d!1805622 () Bool)

(declare-fun c!1009673 () Bool)

(declare-fun isEmpty!35217 (List!63464) Bool)

(assert (=> d!1805622 (= c!1009673 (isEmpty!35217 (t!376790 s!2326)))))

(declare-fun e!3519694 () Bool)

(assert (=> d!1805622 (= (matchZipper!1859 lt!2278681 (t!376790 s!2326)) e!3519694)))

(declare-fun b!5724008 () Bool)

(declare-fun nullableZipper!1669 ((InoxSet Context!10210)) Bool)

(assert (=> b!5724008 (= e!3519694 (nullableZipper!1669 lt!2278681))))

(declare-fun b!5724009 () Bool)

(declare-fun head!12119 (List!63464) C!31712)

(declare-fun tail!11214 (List!63464) List!63464)

(assert (=> b!5724009 (= e!3519694 (matchZipper!1859 (derivationStepZipper!1804 lt!2278681 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))))))

(assert (= (and d!1805622 c!1009673) b!5724008))

(assert (= (and d!1805622 (not c!1009673)) b!5724009))

(declare-fun m!6676858 () Bool)

(assert (=> d!1805622 m!6676858))

(declare-fun m!6676860 () Bool)

(assert (=> b!5724008 m!6676860))

(declare-fun m!6676862 () Bool)

(assert (=> b!5724009 m!6676862))

(assert (=> b!5724009 m!6676862))

(declare-fun m!6676864 () Bool)

(assert (=> b!5724009 m!6676864))

(declare-fun m!6676866 () Bool)

(assert (=> b!5724009 m!6676866))

(assert (=> b!5724009 m!6676864))

(assert (=> b!5724009 m!6676866))

(declare-fun m!6676868 () Bool)

(assert (=> b!5724009 m!6676868))

(assert (=> b!5723607 d!1805622))

(declare-fun d!1805630 () Bool)

(declare-fun c!1009680 () Bool)

(assert (=> d!1805630 (= c!1009680 (isEmpty!35217 (t!376790 s!2326)))))

(declare-fun e!3519703 () Bool)

(assert (=> d!1805630 (= (matchZipper!1859 lt!2278684 (t!376790 s!2326)) e!3519703)))

(declare-fun b!5724024 () Bool)

(assert (=> b!5724024 (= e!3519703 (nullableZipper!1669 lt!2278684))))

(declare-fun b!5724025 () Bool)

(assert (=> b!5724025 (= e!3519703 (matchZipper!1859 (derivationStepZipper!1804 lt!2278684 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))))))

(assert (= (and d!1805630 c!1009680) b!5724024))

(assert (= (and d!1805630 (not c!1009680)) b!5724025))

(assert (=> d!1805630 m!6676858))

(declare-fun m!6676870 () Bool)

(assert (=> b!5724024 m!6676870))

(assert (=> b!5724025 m!6676862))

(assert (=> b!5724025 m!6676862))

(declare-fun m!6676872 () Bool)

(assert (=> b!5724025 m!6676872))

(assert (=> b!5724025 m!6676866))

(assert (=> b!5724025 m!6676872))

(assert (=> b!5724025 m!6676866))

(declare-fun m!6676874 () Bool)

(assert (=> b!5724025 m!6676874))

(assert (=> b!5723609 d!1805630))

(declare-fun d!1805632 () Bool)

(declare-fun c!1009681 () Bool)

(assert (=> d!1805632 (= c!1009681 (isEmpty!35217 s!2326))))

(declare-fun e!3519704 () Bool)

(assert (=> d!1805632 (= (matchZipper!1859 lt!2278675 s!2326) e!3519704)))

(declare-fun b!5724026 () Bool)

(assert (=> b!5724026 (= e!3519704 (nullableZipper!1669 lt!2278675))))

(declare-fun b!5724027 () Bool)

(assert (=> b!5724027 (= e!3519704 (matchZipper!1859 (derivationStepZipper!1804 lt!2278675 (head!12119 s!2326)) (tail!11214 s!2326)))))

(assert (= (and d!1805632 c!1009681) b!5724026))

(assert (= (and d!1805632 (not c!1009681)) b!5724027))

(declare-fun m!6676876 () Bool)

(assert (=> d!1805632 m!6676876))

(declare-fun m!6676878 () Bool)

(assert (=> b!5724026 m!6676878))

(declare-fun m!6676880 () Bool)

(assert (=> b!5724027 m!6676880))

(assert (=> b!5724027 m!6676880))

(declare-fun m!6676882 () Bool)

(assert (=> b!5724027 m!6676882))

(declare-fun m!6676884 () Bool)

(assert (=> b!5724027 m!6676884))

(assert (=> b!5724027 m!6676882))

(assert (=> b!5724027 m!6676884))

(declare-fun m!6676886 () Bool)

(assert (=> b!5724027 m!6676886))

(assert (=> b!5723609 d!1805632))

(declare-fun bs!1338356 () Bool)

(declare-fun d!1805634 () Bool)

(assert (= bs!1338356 (and d!1805634 b!5723588)))

(declare-fun lambda!309417 () Int)

(assert (=> bs!1338356 (= (= (exprs!5605 lt!2278694) lt!2278663) (= lambda!309417 lambda!309370))))

(assert (=> d!1805634 true))

(assert (=> d!1805634 (= (appendTo!102 lt!2278685 lt!2278694) (map!14502 lt!2278685 lambda!309417))))

(declare-fun bs!1338359 () Bool)

(assert (= bs!1338359 d!1805634))

(declare-fun m!6676910 () Bool)

(assert (=> bs!1338359 m!6676910))

(assert (=> b!5723588 d!1805634))

(declare-fun b!5724104 () Bool)

(declare-fun res!2416580 () Bool)

(declare-fun e!3519738 () Bool)

(assert (=> b!5724104 (=> (not res!2416580) (not e!3519738))))

(declare-fun lt!2278767 () List!63462)

(declare-fun size!40031 (List!63462) Int)

(assert (=> b!5724104 (= res!2416580 (= (size!40031 lt!2278767) (+ (size!40031 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) (size!40031 lt!2278663))))))

(declare-fun d!1805646 () Bool)

(assert (=> d!1805646 e!3519738))

(declare-fun res!2416581 () Bool)

(assert (=> d!1805646 (=> (not res!2416581) (not e!3519738))))

(declare-fun content!11512 (List!63462) (InoxSet Regex!15721))

(assert (=> d!1805646 (= res!2416581 (= (content!11512 lt!2278767) ((_ map or) (content!11512 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) (content!11512 lt!2278663))))))

(declare-fun e!3519739 () List!63462)

(assert (=> d!1805646 (= lt!2278767 e!3519739)))

(declare-fun c!1009689 () Bool)

(assert (=> d!1805646 (= c!1009689 ((_ is Nil!63338) (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))

(assert (=> d!1805646 (= (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663) lt!2278767)))

(declare-fun b!5724102 () Bool)

(assert (=> b!5724102 (= e!3519739 lt!2278663)))

(declare-fun b!5724103 () Bool)

(assert (=> b!5724103 (= e!3519739 (Cons!63338 (h!69786 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) (++!13915 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) lt!2278663)))))

(declare-fun b!5724105 () Bool)

(assert (=> b!5724105 (= e!3519738 (or (not (= lt!2278663 Nil!63338)) (= lt!2278767 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))))))

(assert (= (and d!1805646 c!1009689) b!5724102))

(assert (= (and d!1805646 (not c!1009689)) b!5724103))

(assert (= (and d!1805646 res!2416581) b!5724104))

(assert (= (and b!5724104 res!2416580) b!5724105))

(declare-fun m!6676916 () Bool)

(assert (=> b!5724104 m!6676916))

(declare-fun m!6676918 () Bool)

(assert (=> b!5724104 m!6676918))

(declare-fun m!6676920 () Bool)

(assert (=> b!5724104 m!6676920))

(declare-fun m!6676922 () Bool)

(assert (=> d!1805646 m!6676922))

(declare-fun m!6676924 () Bool)

(assert (=> d!1805646 m!6676924))

(declare-fun m!6676926 () Bool)

(assert (=> d!1805646 m!6676926))

(declare-fun m!6676928 () Bool)

(assert (=> b!5724103 m!6676928))

(assert (=> b!5723588 d!1805646))

(declare-fun d!1805648 () Bool)

(declare-fun choose!43278 ((InoxSet Context!10210) Int) (InoxSet Context!10210))

(assert (=> d!1805648 (= (map!14502 lt!2278685 lambda!309370) (choose!43278 lt!2278685 lambda!309370))))

(declare-fun bs!1338360 () Bool)

(assert (= bs!1338360 d!1805648))

(declare-fun m!6676930 () Bool)

(assert (=> bs!1338360 m!6676930))

(assert (=> b!5723588 d!1805648))

(declare-fun d!1805650 () Bool)

(declare-fun dynLambda!24785 (Int Context!10210) Context!10210)

(assert (=> d!1805650 (= (map!14502 lt!2278685 lambda!309370) (store ((as const (Array Context!10210 Bool)) false) (dynLambda!24785 lambda!309370 lt!2278665) true))))

(declare-fun lt!2278770 () Unit!156416)

(declare-fun choose!43279 ((InoxSet Context!10210) Context!10210 Int) Unit!156416)

(assert (=> d!1805650 (= lt!2278770 (choose!43279 lt!2278685 lt!2278665 lambda!309370))))

(assert (=> d!1805650 (= lt!2278685 (store ((as const (Array Context!10210 Bool)) false) lt!2278665 true))))

(assert (=> d!1805650 (= (lemmaMapOnSingletonSet!116 lt!2278685 lt!2278665 lambda!309370) lt!2278770)))

(declare-fun b_lambda!216291 () Bool)

(assert (=> (not b_lambda!216291) (not d!1805650)))

(declare-fun bs!1338361 () Bool)

(assert (= bs!1338361 d!1805650))

(assert (=> bs!1338361 m!6676430))

(assert (=> bs!1338361 m!6676512))

(declare-fun m!6676932 () Bool)

(assert (=> bs!1338361 m!6676932))

(declare-fun m!6676934 () Bool)

(assert (=> bs!1338361 m!6676934))

(assert (=> bs!1338361 m!6676934))

(declare-fun m!6676936 () Bool)

(assert (=> bs!1338361 m!6676936))

(assert (=> b!5723588 d!1805650))

(declare-fun d!1805652 () Bool)

(assert (=> d!1805652 (forall!14854 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663) lambda!309371)))

(declare-fun lt!2278773 () Unit!156416)

(declare-fun choose!43280 (List!63462 List!63462 Int) Unit!156416)

(assert (=> d!1805652 (= lt!2278773 (choose!43280 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663 lambda!309371))))

(assert (=> d!1805652 (forall!14854 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lambda!309371)))

(assert (=> d!1805652 (= (lemmaConcatPreservesForall!290 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663 lambda!309371) lt!2278773)))

(declare-fun bs!1338362 () Bool)

(assert (= bs!1338362 d!1805652))

(assert (=> bs!1338362 m!6676426))

(assert (=> bs!1338362 m!6676426))

(declare-fun m!6676938 () Bool)

(assert (=> bs!1338362 m!6676938))

(declare-fun m!6676940 () Bool)

(assert (=> bs!1338362 m!6676940))

(declare-fun m!6676942 () Bool)

(assert (=> bs!1338362 m!6676942))

(assert (=> b!5723588 d!1805652))

(declare-fun d!1805654 () Bool)

(declare-fun choose!43281 ((InoxSet Context!10210) Int) (InoxSet Context!10210))

(assert (=> d!1805654 (= (flatMap!1334 lt!2278675 lambda!309369) (choose!43281 lt!2278675 lambda!309369))))

(declare-fun bs!1338363 () Bool)

(assert (= bs!1338363 d!1805654))

(declare-fun m!6676944 () Bool)

(assert (=> bs!1338363 m!6676944))

(assert (=> b!5723611 d!1805654))

(declare-fun b!5724116 () Bool)

(declare-fun e!3519746 () (InoxSet Context!10210))

(declare-fun call!437482 () (InoxSet Context!10210))

(assert (=> b!5724116 (= e!3519746 call!437482)))

(declare-fun b!5724117 () Bool)

(declare-fun e!3519747 () Bool)

(assert (=> b!5724117 (= e!3519747 (nullable!5753 (h!69786 (exprs!5605 lt!2278666))))))

(declare-fun e!3519748 () (InoxSet Context!10210))

(declare-fun b!5724118 () Bool)

(assert (=> b!5724118 (= e!3519748 ((_ map or) call!437482 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (h!69788 s!2326))))))

(declare-fun b!5724119 () Bool)

(assert (=> b!5724119 (= e!3519746 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805656 () Bool)

(declare-fun c!1009694 () Bool)

(assert (=> d!1805656 (= c!1009694 e!3519747)))

(declare-fun res!2416584 () Bool)

(assert (=> d!1805656 (=> (not res!2416584) (not e!3519747))))

(assert (=> d!1805656 (= res!2416584 ((_ is Cons!63338) (exprs!5605 lt!2278666)))))

(assert (=> d!1805656 (= (derivationStepZipperUp!989 lt!2278666 (h!69788 s!2326)) e!3519748)))

(declare-fun b!5724120 () Bool)

(assert (=> b!5724120 (= e!3519748 e!3519746)))

(declare-fun c!1009695 () Bool)

(assert (=> b!5724120 (= c!1009695 ((_ is Cons!63338) (exprs!5605 lt!2278666)))))

(declare-fun bm!437477 () Bool)

(assert (=> bm!437477 (= call!437482 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278666)) (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (h!69788 s!2326)))))

(assert (= (and d!1805656 res!2416584) b!5724117))

(assert (= (and d!1805656 c!1009694) b!5724118))

(assert (= (and d!1805656 (not c!1009694)) b!5724120))

(assert (= (and b!5724120 c!1009695) b!5724116))

(assert (= (and b!5724120 (not c!1009695)) b!5724119))

(assert (= (or b!5724118 b!5724116) bm!437477))

(declare-fun m!6676946 () Bool)

(assert (=> b!5724117 m!6676946))

(declare-fun m!6676948 () Bool)

(assert (=> b!5724118 m!6676948))

(declare-fun m!6676950 () Bool)

(assert (=> bm!437477 m!6676950))

(assert (=> b!5723611 d!1805656))

(declare-fun d!1805658 () Bool)

(declare-fun dynLambda!24786 (Int Context!10210) (InoxSet Context!10210))

(assert (=> d!1805658 (= (flatMap!1334 lt!2278675 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278666))))

(declare-fun lt!2278776 () Unit!156416)

(declare-fun choose!43283 ((InoxSet Context!10210) Context!10210 Int) Unit!156416)

(assert (=> d!1805658 (= lt!2278776 (choose!43283 lt!2278675 lt!2278666 lambda!309369))))

(assert (=> d!1805658 (= lt!2278675 (store ((as const (Array Context!10210 Bool)) false) lt!2278666 true))))

(assert (=> d!1805658 (= (lemmaFlatMapOnSingletonSet!866 lt!2278675 lt!2278666 lambda!309369) lt!2278776)))

(declare-fun b_lambda!216293 () Bool)

(assert (=> (not b_lambda!216293) (not d!1805658)))

(declare-fun bs!1338364 () Bool)

(assert (= bs!1338364 d!1805658))

(assert (=> bs!1338364 m!6676470))

(declare-fun m!6676952 () Bool)

(assert (=> bs!1338364 m!6676952))

(declare-fun m!6676954 () Bool)

(assert (=> bs!1338364 m!6676954))

(assert (=> bs!1338364 m!6676472))

(assert (=> b!5723611 d!1805658))

(declare-fun bs!1338365 () Bool)

(declare-fun d!1805660 () Bool)

(assert (= bs!1338365 (and d!1805660 b!5723625)))

(declare-fun lambda!309420 () Int)

(assert (=> bs!1338365 (= lambda!309420 lambda!309369)))

(assert (=> d!1805660 true))

(assert (=> d!1805660 (= (derivationStepZipper!1804 lt!2278675 (h!69788 s!2326)) (flatMap!1334 lt!2278675 lambda!309420))))

(declare-fun bs!1338366 () Bool)

(assert (= bs!1338366 d!1805660))

(declare-fun m!6676956 () Bool)

(assert (=> bs!1338366 m!6676956))

(assert (=> b!5723611 d!1805660))

(declare-fun bs!1338367 () Bool)

(declare-fun d!1805662 () Bool)

(assert (= bs!1338367 (and d!1805662 b!5723588)))

(declare-fun lambda!309423 () Int)

(assert (=> bs!1338367 (= lambda!309423 lambda!309371)))

(declare-fun bs!1338368 () Bool)

(assert (= bs!1338368 (and d!1805662 d!1805580)))

(assert (=> bs!1338368 (= lambda!309423 lambda!309402)))

(assert (=> d!1805662 (= (inv!82549 setElem!38363) (forall!14854 (exprs!5605 setElem!38363) lambda!309423))))

(declare-fun bs!1338369 () Bool)

(assert (= bs!1338369 d!1805662))

(declare-fun m!6676958 () Bool)

(assert (=> bs!1338369 m!6676958))

(assert (=> setNonEmpty!38363 d!1805662))

(declare-fun b!5724145 () Bool)

(declare-fun e!3519761 () (InoxSet Context!10210))

(declare-fun e!3519764 () (InoxSet Context!10210))

(assert (=> b!5724145 (= e!3519761 e!3519764)))

(declare-fun c!1009711 () Bool)

(assert (=> b!5724145 (= c!1009711 ((_ is Union!15721) (reg!16050 (regOne!31954 r!7292))))))

(declare-fun bm!437490 () Bool)

(declare-fun c!1009709 () Bool)

(declare-fun call!437499 () (InoxSet Context!10210))

(declare-fun c!1009710 () Bool)

(declare-fun call!437500 () List!63462)

(assert (=> bm!437490 (= call!437499 (derivationStepZipperDown!1063 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))) (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500)) (h!69788 s!2326)))))

(declare-fun bm!437491 () Bool)

(declare-fun call!437497 () List!63462)

(declare-fun $colon$colon!1736 (List!63462 Regex!15721) List!63462)

(assert (=> bm!437491 (= call!437497 ($colon$colon!1736 (exprs!5605 lt!2278694) (ite (or c!1009709 c!1009710) (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (regOne!31954 r!7292)))))))

(declare-fun b!5724146 () Bool)

(declare-fun e!3519765 () (InoxSet Context!10210))

(declare-fun call!437498 () (InoxSet Context!10210))

(assert (=> b!5724146 (= e!3519765 call!437498)))

(declare-fun bm!437492 () Bool)

(declare-fun call!437496 () (InoxSet Context!10210))

(assert (=> bm!437492 (= call!437498 call!437496)))

(declare-fun b!5724147 () Bool)

(declare-fun e!3519766 () Bool)

(assert (=> b!5724147 (= e!3519766 (nullable!5753 (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))))

(declare-fun bm!437494 () Bool)

(assert (=> bm!437494 (= call!437500 call!437497)))

(declare-fun b!5724148 () Bool)

(declare-fun e!3519762 () (InoxSet Context!10210))

(assert (=> b!5724148 (= e!3519762 call!437498)))

(declare-fun b!5724149 () Bool)

(declare-fun c!1009712 () Bool)

(assert (=> b!5724149 (= c!1009712 ((_ is Star!15721) (reg!16050 (regOne!31954 r!7292))))))

(assert (=> b!5724149 (= e!3519762 e!3519765)))

(declare-fun b!5724150 () Bool)

(declare-fun e!3519763 () (InoxSet Context!10210))

(assert (=> b!5724150 (= e!3519763 e!3519762)))

(assert (=> b!5724150 (= c!1009710 ((_ is Concat!24566) (reg!16050 (regOne!31954 r!7292))))))

(declare-fun b!5724151 () Bool)

(assert (=> b!5724151 (= c!1009709 e!3519766)))

(declare-fun res!2416587 () Bool)

(assert (=> b!5724151 (=> (not res!2416587) (not e!3519766))))

(assert (=> b!5724151 (= res!2416587 ((_ is Concat!24566) (reg!16050 (regOne!31954 r!7292))))))

(assert (=> b!5724151 (= e!3519764 e!3519763)))

(declare-fun b!5724152 () Bool)

(assert (=> b!5724152 (= e!3519765 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5724153 () Bool)

(declare-fun call!437495 () (InoxSet Context!10210))

(assert (=> b!5724153 (= e!3519763 ((_ map or) call!437495 call!437496))))

(declare-fun b!5724154 () Bool)

(assert (=> b!5724154 (= e!3519761 (store ((as const (Array Context!10210 Bool)) false) lt!2278694 true))))

(declare-fun d!1805664 () Bool)

(declare-fun c!1009708 () Bool)

(assert (=> d!1805664 (= c!1009708 (and ((_ is ElementMatch!15721) (reg!16050 (regOne!31954 r!7292))) (= (c!1009551 (reg!16050 (regOne!31954 r!7292))) (h!69788 s!2326))))))

(assert (=> d!1805664 (= (derivationStepZipperDown!1063 (reg!16050 (regOne!31954 r!7292)) lt!2278694 (h!69788 s!2326)) e!3519761)))

(declare-fun bm!437493 () Bool)

(assert (=> bm!437493 (= call!437495 (derivationStepZipperDown!1063 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))) (ite c!1009711 lt!2278694 (Context!10211 call!437497)) (h!69788 s!2326)))))

(declare-fun b!5724155 () Bool)

(assert (=> b!5724155 (= e!3519764 ((_ map or) call!437495 call!437499))))

(declare-fun bm!437495 () Bool)

(assert (=> bm!437495 (= call!437496 call!437499)))

(assert (= (and d!1805664 c!1009708) b!5724154))

(assert (= (and d!1805664 (not c!1009708)) b!5724145))

(assert (= (and b!5724145 c!1009711) b!5724155))

(assert (= (and b!5724145 (not c!1009711)) b!5724151))

(assert (= (and b!5724151 res!2416587) b!5724147))

(assert (= (and b!5724151 c!1009709) b!5724153))

(assert (= (and b!5724151 (not c!1009709)) b!5724150))

(assert (= (and b!5724150 c!1009710) b!5724148))

(assert (= (and b!5724150 (not c!1009710)) b!5724149))

(assert (= (and b!5724149 c!1009712) b!5724146))

(assert (= (and b!5724149 (not c!1009712)) b!5724152))

(assert (= (or b!5724148 b!5724146) bm!437494))

(assert (= (or b!5724148 b!5724146) bm!437492))

(assert (= (or b!5724153 bm!437494) bm!437491))

(assert (= (or b!5724153 bm!437492) bm!437495))

(assert (= (or b!5724155 bm!437495) bm!437490))

(assert (= (or b!5724155 b!5724153) bm!437493))

(declare-fun m!6676960 () Bool)

(assert (=> b!5724147 m!6676960))

(declare-fun m!6676962 () Bool)

(assert (=> bm!437493 m!6676962))

(assert (=> b!5724154 m!6676528))

(declare-fun m!6676964 () Bool)

(assert (=> bm!437490 m!6676964))

(declare-fun m!6676966 () Bool)

(assert (=> bm!437491 m!6676966))

(assert (=> b!5723603 d!1805664))

(declare-fun d!1805666 () Bool)

(declare-fun e!3519769 () Bool)

(assert (=> d!1805666 e!3519769))

(declare-fun res!2416590 () Bool)

(assert (=> d!1805666 (=> (not res!2416590) (not e!3519769))))

(declare-fun lt!2278779 () List!63463)

(declare-fun noDuplicate!1649 (List!63463) Bool)

(assert (=> d!1805666 (= res!2416590 (noDuplicate!1649 lt!2278779))))

(declare-fun choose!43284 ((InoxSet Context!10210)) List!63463)

(assert (=> d!1805666 (= lt!2278779 (choose!43284 z!1189))))

(assert (=> d!1805666 (= (toList!9505 z!1189) lt!2278779)))

(declare-fun b!5724158 () Bool)

(declare-fun content!11514 (List!63463) (InoxSet Context!10210))

(assert (=> b!5724158 (= e!3519769 (= (content!11514 lt!2278779) z!1189))))

(assert (= (and d!1805666 res!2416590) b!5724158))

(declare-fun m!6676968 () Bool)

(assert (=> d!1805666 m!6676968))

(declare-fun m!6676970 () Bool)

(assert (=> d!1805666 m!6676970))

(declare-fun m!6676972 () Bool)

(assert (=> b!5724158 m!6676972))

(assert (=> b!5723623 d!1805666))

(declare-fun b!5724159 () Bool)

(declare-fun e!3519770 () (InoxSet Context!10210))

(declare-fun call!437501 () (InoxSet Context!10210))

(assert (=> b!5724159 (= e!3519770 call!437501)))

(declare-fun b!5724160 () Bool)

(declare-fun e!3519771 () Bool)

(assert (=> b!5724160 (= e!3519771 (nullable!5753 (h!69786 (exprs!5605 lt!2278672))))))

(declare-fun b!5724161 () Bool)

(declare-fun e!3519772 () (InoxSet Context!10210))

(assert (=> b!5724161 (= e!3519772 ((_ map or) call!437501 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (h!69788 s!2326))))))

(declare-fun b!5724162 () Bool)

(assert (=> b!5724162 (= e!3519770 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805668 () Bool)

(declare-fun c!1009713 () Bool)

(assert (=> d!1805668 (= c!1009713 e!3519771)))

(declare-fun res!2416591 () Bool)

(assert (=> d!1805668 (=> (not res!2416591) (not e!3519771))))

(assert (=> d!1805668 (= res!2416591 ((_ is Cons!63338) (exprs!5605 lt!2278672)))))

(assert (=> d!1805668 (= (derivationStepZipperUp!989 lt!2278672 (h!69788 s!2326)) e!3519772)))

(declare-fun b!5724163 () Bool)

(assert (=> b!5724163 (= e!3519772 e!3519770)))

(declare-fun c!1009714 () Bool)

(assert (=> b!5724163 (= c!1009714 ((_ is Cons!63338) (exprs!5605 lt!2278672)))))

(declare-fun bm!437496 () Bool)

(assert (=> bm!437496 (= call!437501 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278672)) (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (h!69788 s!2326)))))

(assert (= (and d!1805668 res!2416591) b!5724160))

(assert (= (and d!1805668 c!1009713) b!5724161))

(assert (= (and d!1805668 (not c!1009713)) b!5724163))

(assert (= (and b!5724163 c!1009714) b!5724159))

(assert (= (and b!5724163 (not c!1009714)) b!5724162))

(assert (= (or b!5724161 b!5724159) bm!437496))

(declare-fun m!6676974 () Bool)

(assert (=> b!5724160 m!6676974))

(declare-fun m!6676976 () Bool)

(assert (=> b!5724161 m!6676976))

(declare-fun m!6676978 () Bool)

(assert (=> bm!437496 m!6676978))

(assert (=> b!5723625 d!1805668))

(declare-fun b!5724164 () Bool)

(declare-fun e!3519773 () (InoxSet Context!10210))

(declare-fun call!437502 () (InoxSet Context!10210))

(assert (=> b!5724164 (= e!3519773 call!437502)))

(declare-fun b!5724165 () Bool)

(declare-fun e!3519774 () Bool)

(assert (=> b!5724165 (= e!3519774 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun e!3519775 () (InoxSet Context!10210))

(declare-fun b!5724166 () Bool)

(assert (=> b!5724166 (= e!3519775 ((_ map or) call!437502 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326))))))

(declare-fun b!5724167 () Bool)

(assert (=> b!5724167 (= e!3519773 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805670 () Bool)

(declare-fun c!1009715 () Bool)

(assert (=> d!1805670 (= c!1009715 e!3519774)))

(declare-fun res!2416592 () Bool)

(assert (=> d!1805670 (=> (not res!2416592) (not e!3519774))))

(assert (=> d!1805670 (= res!2416592 ((_ is Cons!63338) (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))

(assert (=> d!1805670 (= (derivationStepZipperUp!989 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))) (h!69788 s!2326)) e!3519775)))

(declare-fun b!5724168 () Bool)

(assert (=> b!5724168 (= e!3519775 e!3519773)))

(declare-fun c!1009716 () Bool)

(assert (=> b!5724168 (= c!1009716 ((_ is Cons!63338) (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))

(declare-fun bm!437497 () Bool)

(assert (=> bm!437497 (= call!437502 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326)))))

(assert (= (and d!1805670 res!2416592) b!5724165))

(assert (= (and d!1805670 c!1009715) b!5724166))

(assert (= (and d!1805670 (not c!1009715)) b!5724168))

(assert (= (and b!5724168 c!1009716) b!5724164))

(assert (= (and b!5724168 (not c!1009716)) b!5724167))

(assert (= (or b!5724166 b!5724164) bm!437497))

(declare-fun m!6676980 () Bool)

(assert (=> b!5724165 m!6676980))

(declare-fun m!6676982 () Bool)

(assert (=> b!5724166 m!6676982))

(declare-fun m!6676984 () Bool)

(assert (=> bm!437497 m!6676984))

(assert (=> b!5723625 d!1805670))

(declare-fun b!5724169 () Bool)

(declare-fun e!3519776 () (InoxSet Context!10210))

(declare-fun e!3519779 () (InoxSet Context!10210))

(assert (=> b!5724169 (= e!3519776 e!3519779)))

(declare-fun c!1009720 () Bool)

(assert (=> b!5724169 (= c!1009720 ((_ is Union!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun c!1009718 () Bool)

(declare-fun call!437508 () List!63462)

(declare-fun bm!437498 () Bool)

(declare-fun call!437507 () (InoxSet Context!10210))

(declare-fun c!1009719 () Bool)

(assert (=> bm!437498 (= call!437507 (derivationStepZipperDown!1063 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))) (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508)) (h!69788 s!2326)))))

(declare-fun bm!437499 () Bool)

(declare-fun call!437505 () List!63462)

(assert (=> bm!437499 (= call!437505 ($colon$colon!1736 (exprs!5605 lt!2278672) (ite (or c!1009718 c!1009719) (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69786 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5724170 () Bool)

(declare-fun e!3519780 () (InoxSet Context!10210))

(declare-fun call!437506 () (InoxSet Context!10210))

(assert (=> b!5724170 (= e!3519780 call!437506)))

(declare-fun bm!437500 () Bool)

(declare-fun call!437504 () (InoxSet Context!10210))

(assert (=> bm!437500 (= call!437506 call!437504)))

(declare-fun b!5724171 () Bool)

(declare-fun e!3519781 () Bool)

(assert (=> b!5724171 (= e!3519781 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun bm!437502 () Bool)

(assert (=> bm!437502 (= call!437508 call!437505)))

(declare-fun b!5724172 () Bool)

(declare-fun e!3519777 () (InoxSet Context!10210))

(assert (=> b!5724172 (= e!3519777 call!437506)))

(declare-fun b!5724173 () Bool)

(declare-fun c!1009721 () Bool)

(assert (=> b!5724173 (= c!1009721 ((_ is Star!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5724173 (= e!3519777 e!3519780)))

(declare-fun b!5724174 () Bool)

(declare-fun e!3519778 () (InoxSet Context!10210))

(assert (=> b!5724174 (= e!3519778 e!3519777)))

(assert (=> b!5724174 (= c!1009719 ((_ is Concat!24566) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5724175 () Bool)

(assert (=> b!5724175 (= c!1009718 e!3519781)))

(declare-fun res!2416593 () Bool)

(assert (=> b!5724175 (=> (not res!2416593) (not e!3519781))))

(assert (=> b!5724175 (= res!2416593 ((_ is Concat!24566) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5724175 (= e!3519779 e!3519778)))

(declare-fun b!5724176 () Bool)

(assert (=> b!5724176 (= e!3519780 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5724177 () Bool)

(declare-fun call!437503 () (InoxSet Context!10210))

(assert (=> b!5724177 (= e!3519778 ((_ map or) call!437503 call!437504))))

(declare-fun b!5724178 () Bool)

(assert (=> b!5724178 (= e!3519776 (store ((as const (Array Context!10210 Bool)) false) lt!2278672 true))))

(declare-fun d!1805672 () Bool)

(declare-fun c!1009717 () Bool)

(assert (=> d!1805672 (= c!1009717 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))) (= (c!1009551 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326))))))

(assert (=> d!1805672 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (h!69787 zl!343))) lt!2278672 (h!69788 s!2326)) e!3519776)))

(declare-fun bm!437501 () Bool)

(assert (=> bm!437501 (= call!437503 (derivationStepZipperDown!1063 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))) (ite c!1009720 lt!2278672 (Context!10211 call!437505)) (h!69788 s!2326)))))

(declare-fun b!5724179 () Bool)

(assert (=> b!5724179 (= e!3519779 ((_ map or) call!437503 call!437507))))

(declare-fun bm!437503 () Bool)

(assert (=> bm!437503 (= call!437504 call!437507)))

(assert (= (and d!1805672 c!1009717) b!5724178))

(assert (= (and d!1805672 (not c!1009717)) b!5724169))

(assert (= (and b!5724169 c!1009720) b!5724179))

(assert (= (and b!5724169 (not c!1009720)) b!5724175))

(assert (= (and b!5724175 res!2416593) b!5724171))

(assert (= (and b!5724175 c!1009718) b!5724177))

(assert (= (and b!5724175 (not c!1009718)) b!5724174))

(assert (= (and b!5724174 c!1009719) b!5724172))

(assert (= (and b!5724174 (not c!1009719)) b!5724173))

(assert (= (and b!5724173 c!1009721) b!5724170))

(assert (= (and b!5724173 (not c!1009721)) b!5724176))

(assert (= (or b!5724172 b!5724170) bm!437502))

(assert (= (or b!5724172 b!5724170) bm!437500))

(assert (= (or b!5724177 bm!437502) bm!437499))

(assert (= (or b!5724177 bm!437500) bm!437503))

(assert (= (or b!5724179 bm!437503) bm!437498))

(assert (= (or b!5724179 b!5724177) bm!437501))

(declare-fun m!6676986 () Bool)

(assert (=> b!5724171 m!6676986))

(declare-fun m!6676988 () Bool)

(assert (=> bm!437501 m!6676988))

(declare-fun m!6676990 () Bool)

(assert (=> b!5724178 m!6676990))

(declare-fun m!6676992 () Bool)

(assert (=> bm!437498 m!6676992))

(declare-fun m!6676994 () Bool)

(assert (=> bm!437499 m!6676994))

(assert (=> b!5723625 d!1805672))

(declare-fun d!1805674 () Bool)

(assert (=> d!1805674 (= (flatMap!1334 z!1189 lambda!309369) (choose!43281 z!1189 lambda!309369))))

(declare-fun bs!1338370 () Bool)

(assert (= bs!1338370 d!1805674))

(declare-fun m!6676996 () Bool)

(assert (=> bs!1338370 m!6676996))

(assert (=> b!5723625 d!1805674))

(declare-fun b!5724180 () Bool)

(declare-fun e!3519782 () (InoxSet Context!10210))

(declare-fun call!437509 () (InoxSet Context!10210))

(assert (=> b!5724180 (= e!3519782 call!437509)))

(declare-fun b!5724181 () Bool)

(declare-fun e!3519783 () Bool)

(assert (=> b!5724181 (= e!3519783 (nullable!5753 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5724182 () Bool)

(declare-fun e!3519784 () (InoxSet Context!10210))

(assert (=> b!5724182 (= e!3519784 ((_ map or) call!437509 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326))))))

(declare-fun b!5724183 () Bool)

(assert (=> b!5724183 (= e!3519782 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805676 () Bool)

(declare-fun c!1009722 () Bool)

(assert (=> d!1805676 (= c!1009722 e!3519783)))

(declare-fun res!2416594 () Bool)

(assert (=> d!1805676 (=> (not res!2416594) (not e!3519783))))

(assert (=> d!1805676 (= res!2416594 ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343))))))

(assert (=> d!1805676 (= (derivationStepZipperUp!989 (h!69787 zl!343) (h!69788 s!2326)) e!3519784)))

(declare-fun b!5724184 () Bool)

(assert (=> b!5724184 (= e!3519784 e!3519782)))

(declare-fun c!1009723 () Bool)

(assert (=> b!5724184 (= c!1009723 ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343))))))

(declare-fun bm!437504 () Bool)

(assert (=> bm!437504 (= call!437509 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (h!69787 zl!343))) (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326)))))

(assert (= (and d!1805676 res!2416594) b!5724181))

(assert (= (and d!1805676 c!1009722) b!5724182))

(assert (= (and d!1805676 (not c!1009722)) b!5724184))

(assert (= (and b!5724184 c!1009723) b!5724180))

(assert (= (and b!5724184 (not c!1009723)) b!5724183))

(assert (= (or b!5724182 b!5724180) bm!437504))

(assert (=> b!5724181 m!6676446))

(declare-fun m!6676998 () Bool)

(assert (=> b!5724182 m!6676998))

(declare-fun m!6677000 () Bool)

(assert (=> bm!437504 m!6677000))

(assert (=> b!5723625 d!1805676))

(declare-fun d!1805678 () Bool)

(assert (=> d!1805678 (= (flatMap!1334 z!1189 lambda!309369) (dynLambda!24786 lambda!309369 (h!69787 zl!343)))))

(declare-fun lt!2278780 () Unit!156416)

(assert (=> d!1805678 (= lt!2278780 (choose!43283 z!1189 (h!69787 zl!343) lambda!309369))))

(assert (=> d!1805678 (= z!1189 (store ((as const (Array Context!10210 Bool)) false) (h!69787 zl!343) true))))

(assert (=> d!1805678 (= (lemmaFlatMapOnSingletonSet!866 z!1189 (h!69787 zl!343) lambda!309369) lt!2278780)))

(declare-fun b_lambda!216295 () Bool)

(assert (=> (not b_lambda!216295) (not d!1805678)))

(declare-fun bs!1338371 () Bool)

(assert (= bs!1338371 d!1805678))

(assert (=> bs!1338371 m!6676444))

(declare-fun m!6677002 () Bool)

(assert (=> bs!1338371 m!6677002))

(declare-fun m!6677004 () Bool)

(assert (=> bs!1338371 m!6677004))

(declare-fun m!6677006 () Bool)

(assert (=> bs!1338371 m!6677006))

(assert (=> b!5723625 d!1805678))

(declare-fun d!1805680 () Bool)

(declare-fun nullableFct!1815 (Regex!15721) Bool)

(assert (=> d!1805680 (= (nullable!5753 (h!69786 (exprs!5605 (h!69787 zl!343)))) (nullableFct!1815 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun bs!1338372 () Bool)

(assert (= bs!1338372 d!1805680))

(declare-fun m!6677008 () Bool)

(assert (=> bs!1338372 m!6677008))

(assert (=> b!5723625 d!1805680))

(declare-fun bs!1338373 () Bool)

(declare-fun d!1805682 () Bool)

(assert (= bs!1338373 (and d!1805682 b!5723588)))

(declare-fun lambda!309424 () Int)

(assert (=> bs!1338373 (= lambda!309424 lambda!309371)))

(declare-fun bs!1338374 () Bool)

(assert (= bs!1338374 (and d!1805682 d!1805580)))

(assert (=> bs!1338374 (= lambda!309424 lambda!309402)))

(declare-fun bs!1338375 () Bool)

(assert (= bs!1338375 (and d!1805682 d!1805662)))

(assert (=> bs!1338375 (= lambda!309424 lambda!309423)))

(assert (=> d!1805682 (= (inv!82549 (h!69787 zl!343)) (forall!14854 (exprs!5605 (h!69787 zl!343)) lambda!309424))))

(declare-fun bs!1338376 () Bool)

(assert (= bs!1338376 d!1805682))

(declare-fun m!6677010 () Bool)

(assert (=> bs!1338376 m!6677010))

(assert (=> b!5723598 d!1805682))

(declare-fun d!1805684 () Bool)

(declare-fun lt!2278781 () Regex!15721)

(assert (=> d!1805684 (validRegex!7457 lt!2278781)))

(assert (=> d!1805684 (= lt!2278781 (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))

(assert (=> d!1805684 (= (unfocusZipper!1463 (Cons!63339 lt!2278694 Nil!63339)) lt!2278781)))

(declare-fun bs!1338377 () Bool)

(assert (= bs!1338377 d!1805684))

(declare-fun m!6677012 () Bool)

(assert (=> bs!1338377 m!6677012))

(declare-fun m!6677014 () Bool)

(assert (=> bs!1338377 m!6677014))

(assert (=> bs!1338377 m!6677014))

(declare-fun m!6677016 () Bool)

(assert (=> bs!1338377 m!6677016))

(assert (=> b!5723620 d!1805684))

(assert (=> b!5723619 d!1805622))

(declare-fun d!1805686 () Bool)

(assert (=> d!1805686 (= (nullable!5753 (regOne!31954 (regOne!31954 r!7292))) (nullableFct!1815 (regOne!31954 (regOne!31954 r!7292))))))

(declare-fun bs!1338378 () Bool)

(assert (= bs!1338378 d!1805686))

(declare-fun m!6677018 () Bool)

(assert (=> bs!1338378 m!6677018))

(assert (=> b!5723621 d!1805686))

(declare-fun b!5724185 () Bool)

(declare-fun e!3519785 () (InoxSet Context!10210))

(declare-fun call!437510 () (InoxSet Context!10210))

(assert (=> b!5724185 (= e!3519785 call!437510)))

(declare-fun b!5724186 () Bool)

(declare-fun e!3519786 () Bool)

(assert (=> b!5724186 (= e!3519786 (nullable!5753 (h!69786 (exprs!5605 lt!2278694))))))

(declare-fun b!5724187 () Bool)

(declare-fun e!3519787 () (InoxSet Context!10210))

(assert (=> b!5724187 (= e!3519787 ((_ map or) call!437510 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (h!69788 s!2326))))))

(declare-fun b!5724188 () Bool)

(assert (=> b!5724188 (= e!3519785 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805688 () Bool)

(declare-fun c!1009724 () Bool)

(assert (=> d!1805688 (= c!1009724 e!3519786)))

(declare-fun res!2416595 () Bool)

(assert (=> d!1805688 (=> (not res!2416595) (not e!3519786))))

(assert (=> d!1805688 (= res!2416595 ((_ is Cons!63338) (exprs!5605 lt!2278694)))))

(assert (=> d!1805688 (= (derivationStepZipperUp!989 lt!2278694 (h!69788 s!2326)) e!3519787)))

(declare-fun b!5724189 () Bool)

(assert (=> b!5724189 (= e!3519787 e!3519785)))

(declare-fun c!1009725 () Bool)

(assert (=> b!5724189 (= c!1009725 ((_ is Cons!63338) (exprs!5605 lt!2278694)))))

(declare-fun bm!437505 () Bool)

(assert (=> bm!437505 (= call!437510 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278694)) (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (h!69788 s!2326)))))

(assert (= (and d!1805688 res!2416595) b!5724186))

(assert (= (and d!1805688 c!1009724) b!5724187))

(assert (= (and d!1805688 (not c!1009724)) b!5724189))

(assert (= (and b!5724189 c!1009725) b!5724185))

(assert (= (and b!5724189 (not c!1009725)) b!5724188))

(assert (= (or b!5724187 b!5724185) bm!437505))

(declare-fun m!6677020 () Bool)

(assert (=> b!5724186 m!6677020))

(declare-fun m!6677022 () Bool)

(assert (=> b!5724187 m!6677022))

(declare-fun m!6677024 () Bool)

(assert (=> bm!437505 m!6677024))

(assert (=> b!5723600 d!1805688))

(declare-fun d!1805690 () Bool)

(assert (=> d!1805690 (= (flatMap!1334 lt!2278685 lambda!309369) (choose!43281 lt!2278685 lambda!309369))))

(declare-fun bs!1338379 () Bool)

(assert (= bs!1338379 d!1805690))

(declare-fun m!6677026 () Bool)

(assert (=> bs!1338379 m!6677026))

(assert (=> b!5723600 d!1805690))

(declare-fun d!1805692 () Bool)

(assert (=> d!1805692 (= (flatMap!1334 lt!2278685 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278665))))

(declare-fun lt!2278782 () Unit!156416)

(assert (=> d!1805692 (= lt!2278782 (choose!43283 lt!2278685 lt!2278665 lambda!309369))))

(assert (=> d!1805692 (= lt!2278685 (store ((as const (Array Context!10210 Bool)) false) lt!2278665 true))))

(assert (=> d!1805692 (= (lemmaFlatMapOnSingletonSet!866 lt!2278685 lt!2278665 lambda!309369) lt!2278782)))

(declare-fun b_lambda!216297 () Bool)

(assert (=> (not b_lambda!216297) (not d!1805692)))

(declare-fun bs!1338380 () Bool)

(assert (= bs!1338380 d!1805692))

(assert (=> bs!1338380 m!6676522))

(declare-fun m!6677028 () Bool)

(assert (=> bs!1338380 m!6677028))

(declare-fun m!6677030 () Bool)

(assert (=> bs!1338380 m!6677030))

(assert (=> bs!1338380 m!6676512))

(assert (=> b!5723600 d!1805692))

(declare-fun d!1805694 () Bool)

(assert (=> d!1805694 (= (flatMap!1334 lt!2278669 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278694))))

(declare-fun lt!2278783 () Unit!156416)

(assert (=> d!1805694 (= lt!2278783 (choose!43283 lt!2278669 lt!2278694 lambda!309369))))

(assert (=> d!1805694 (= lt!2278669 (store ((as const (Array Context!10210 Bool)) false) lt!2278694 true))))

(assert (=> d!1805694 (= (lemmaFlatMapOnSingletonSet!866 lt!2278669 lt!2278694 lambda!309369) lt!2278783)))

(declare-fun b_lambda!216299 () Bool)

(assert (=> (not b_lambda!216299) (not d!1805694)))

(declare-fun bs!1338381 () Bool)

(assert (= bs!1338381 d!1805694))

(assert (=> bs!1338381 m!6676518))

(declare-fun m!6677032 () Bool)

(assert (=> bs!1338381 m!6677032))

(declare-fun m!6677034 () Bool)

(assert (=> bs!1338381 m!6677034))

(assert (=> bs!1338381 m!6676528))

(assert (=> b!5723600 d!1805694))

(declare-fun b!5724190 () Bool)

(declare-fun e!3519788 () (InoxSet Context!10210))

(declare-fun call!437511 () (InoxSet Context!10210))

(assert (=> b!5724190 (= e!3519788 call!437511)))

(declare-fun b!5724191 () Bool)

(declare-fun e!3519789 () Bool)

(assert (=> b!5724191 (= e!3519789 (nullable!5753 (h!69786 (exprs!5605 lt!2278665))))))

(declare-fun b!5724192 () Bool)

(declare-fun e!3519790 () (InoxSet Context!10210))

(assert (=> b!5724192 (= e!3519790 ((_ map or) call!437511 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (h!69788 s!2326))))))

(declare-fun b!5724193 () Bool)

(assert (=> b!5724193 (= e!3519788 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805696 () Bool)

(declare-fun c!1009726 () Bool)

(assert (=> d!1805696 (= c!1009726 e!3519789)))

(declare-fun res!2416596 () Bool)

(assert (=> d!1805696 (=> (not res!2416596) (not e!3519789))))

(assert (=> d!1805696 (= res!2416596 ((_ is Cons!63338) (exprs!5605 lt!2278665)))))

(assert (=> d!1805696 (= (derivationStepZipperUp!989 lt!2278665 (h!69788 s!2326)) e!3519790)))

(declare-fun b!5724194 () Bool)

(assert (=> b!5724194 (= e!3519790 e!3519788)))

(declare-fun c!1009727 () Bool)

(assert (=> b!5724194 (= c!1009727 ((_ is Cons!63338) (exprs!5605 lt!2278665)))))

(declare-fun bm!437506 () Bool)

(assert (=> bm!437506 (= call!437511 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278665)) (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (h!69788 s!2326)))))

(assert (= (and d!1805696 res!2416596) b!5724191))

(assert (= (and d!1805696 c!1009726) b!5724192))

(assert (= (and d!1805696 (not c!1009726)) b!5724194))

(assert (= (and b!5724194 c!1009727) b!5724190))

(assert (= (and b!5724194 (not c!1009727)) b!5724193))

(assert (= (or b!5724192 b!5724190) bm!437506))

(declare-fun m!6677036 () Bool)

(assert (=> b!5724191 m!6677036))

(declare-fun m!6677038 () Bool)

(assert (=> b!5724192 m!6677038))

(declare-fun m!6677040 () Bool)

(assert (=> bm!437506 m!6677040))

(assert (=> b!5723600 d!1805696))

(declare-fun d!1805698 () Bool)

(assert (=> d!1805698 (= (flatMap!1334 lt!2278669 lambda!309369) (choose!43281 lt!2278669 lambda!309369))))

(declare-fun bs!1338382 () Bool)

(assert (= bs!1338382 d!1805698))

(declare-fun m!6677042 () Bool)

(assert (=> bs!1338382 m!6677042))

(assert (=> b!5723600 d!1805698))

(declare-fun d!1805700 () Bool)

(declare-fun lt!2278784 () Regex!15721)

(assert (=> d!1805700 (validRegex!7457 lt!2278784)))

(assert (=> d!1805700 (= lt!2278784 (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))

(assert (=> d!1805700 (= (unfocusZipper!1463 (Cons!63339 lt!2278665 Nil!63339)) lt!2278784)))

(declare-fun bs!1338383 () Bool)

(assert (= bs!1338383 d!1805700))

(declare-fun m!6677044 () Bool)

(assert (=> bs!1338383 m!6677044))

(declare-fun m!6677046 () Bool)

(assert (=> bs!1338383 m!6677046))

(assert (=> bs!1338383 m!6677046))

(declare-fun m!6677048 () Bool)

(assert (=> bs!1338383 m!6677048))

(assert (=> b!5723600 d!1805700))

(declare-fun d!1805702 () Bool)

(declare-fun c!1009728 () Bool)

(assert (=> d!1805702 (= c!1009728 (isEmpty!35217 s!2326))))

(declare-fun e!3519791 () Bool)

(assert (=> d!1805702 (= (matchZipper!1859 z!1189 s!2326) e!3519791)))

(declare-fun b!5724195 () Bool)

(assert (=> b!5724195 (= e!3519791 (nullableZipper!1669 z!1189))))

(declare-fun b!5724196 () Bool)

(assert (=> b!5724196 (= e!3519791 (matchZipper!1859 (derivationStepZipper!1804 z!1189 (head!12119 s!2326)) (tail!11214 s!2326)))))

(assert (= (and d!1805702 c!1009728) b!5724195))

(assert (= (and d!1805702 (not c!1009728)) b!5724196))

(assert (=> d!1805702 m!6676876))

(declare-fun m!6677050 () Bool)

(assert (=> b!5724195 m!6677050))

(assert (=> b!5724196 m!6676880))

(assert (=> b!5724196 m!6676880))

(declare-fun m!6677052 () Bool)

(assert (=> b!5724196 m!6677052))

(assert (=> b!5724196 m!6676884))

(assert (=> b!5724196 m!6677052))

(assert (=> b!5724196 m!6676884))

(declare-fun m!6677054 () Bool)

(assert (=> b!5724196 m!6677054))

(assert (=> b!5723602 d!1805702))

(declare-fun d!1805704 () Bool)

(declare-fun c!1009729 () Bool)

(assert (=> d!1805704 (= c!1009729 (isEmpty!35217 (t!376790 s!2326)))))

(declare-fun e!3519792 () Bool)

(assert (=> d!1805704 (= (matchZipper!1859 lt!2278659 (t!376790 s!2326)) e!3519792)))

(declare-fun b!5724197 () Bool)

(assert (=> b!5724197 (= e!3519792 (nullableZipper!1669 lt!2278659))))

(declare-fun b!5724198 () Bool)

(assert (=> b!5724198 (= e!3519792 (matchZipper!1859 (derivationStepZipper!1804 lt!2278659 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))))))

(assert (= (and d!1805704 c!1009729) b!5724197))

(assert (= (and d!1805704 (not c!1009729)) b!5724198))

(assert (=> d!1805704 m!6676858))

(declare-fun m!6677056 () Bool)

(assert (=> b!5724197 m!6677056))

(assert (=> b!5724198 m!6676862))

(assert (=> b!5724198 m!6676862))

(declare-fun m!6677058 () Bool)

(assert (=> b!5724198 m!6677058))

(assert (=> b!5724198 m!6676866))

(assert (=> b!5724198 m!6677058))

(assert (=> b!5724198 m!6676866))

(declare-fun m!6677060 () Bool)

(assert (=> b!5724198 m!6677060))

(assert (=> b!5723622 d!1805704))

(declare-fun b!5724217 () Bool)

(declare-fun res!2416609 () Bool)

(declare-fun e!3519808 () Bool)

(assert (=> b!5724217 (=> (not res!2416609) (not e!3519808))))

(declare-fun call!437518 () Bool)

(assert (=> b!5724217 (= res!2416609 call!437518)))

(declare-fun e!3519809 () Bool)

(assert (=> b!5724217 (= e!3519809 e!3519808)))

(declare-fun b!5724218 () Bool)

(declare-fun e!3519813 () Bool)

(declare-fun e!3519807 () Bool)

(assert (=> b!5724218 (= e!3519813 e!3519807)))

(declare-fun c!1009734 () Bool)

(assert (=> b!5724218 (= c!1009734 ((_ is Star!15721) r!7292))))

(declare-fun b!5724219 () Bool)

(declare-fun e!3519811 () Bool)

(declare-fun call!437520 () Bool)

(assert (=> b!5724219 (= e!3519811 call!437520)))

(declare-fun b!5724220 () Bool)

(declare-fun e!3519810 () Bool)

(declare-fun e!3519812 () Bool)

(assert (=> b!5724220 (= e!3519810 e!3519812)))

(declare-fun res!2416610 () Bool)

(assert (=> b!5724220 (=> (not res!2416610) (not e!3519812))))

(assert (=> b!5724220 (= res!2416610 call!437518)))

(declare-fun b!5724221 () Bool)

(declare-fun call!437519 () Bool)

(assert (=> b!5724221 (= e!3519812 call!437519)))

(declare-fun c!1009735 () Bool)

(declare-fun bm!437514 () Bool)

(assert (=> bm!437514 (= call!437520 (validRegex!7457 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))

(declare-fun b!5724222 () Bool)

(assert (=> b!5724222 (= e!3519807 e!3519809)))

(assert (=> b!5724222 (= c!1009735 ((_ is Union!15721) r!7292))))

(declare-fun bm!437513 () Bool)

(assert (=> bm!437513 (= call!437518 (validRegex!7457 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))

(declare-fun d!1805706 () Bool)

(declare-fun res!2416611 () Bool)

(assert (=> d!1805706 (=> res!2416611 e!3519813)))

(assert (=> d!1805706 (= res!2416611 ((_ is ElementMatch!15721) r!7292))))

(assert (=> d!1805706 (= (validRegex!7457 r!7292) e!3519813)))

(declare-fun b!5724223 () Bool)

(assert (=> b!5724223 (= e!3519808 call!437519)))

(declare-fun b!5724224 () Bool)

(assert (=> b!5724224 (= e!3519807 e!3519811)))

(declare-fun res!2416607 () Bool)

(assert (=> b!5724224 (= res!2416607 (not (nullable!5753 (reg!16050 r!7292))))))

(assert (=> b!5724224 (=> (not res!2416607) (not e!3519811))))

(declare-fun b!5724225 () Bool)

(declare-fun res!2416608 () Bool)

(assert (=> b!5724225 (=> res!2416608 e!3519810)))

(assert (=> b!5724225 (= res!2416608 (not ((_ is Concat!24566) r!7292)))))

(assert (=> b!5724225 (= e!3519809 e!3519810)))

(declare-fun bm!437515 () Bool)

(assert (=> bm!437515 (= call!437519 call!437520)))

(assert (= (and d!1805706 (not res!2416611)) b!5724218))

(assert (= (and b!5724218 c!1009734) b!5724224))

(assert (= (and b!5724218 (not c!1009734)) b!5724222))

(assert (= (and b!5724224 res!2416607) b!5724219))

(assert (= (and b!5724222 c!1009735) b!5724217))

(assert (= (and b!5724222 (not c!1009735)) b!5724225))

(assert (= (and b!5724217 res!2416609) b!5724223))

(assert (= (and b!5724225 (not res!2416608)) b!5724220))

(assert (= (and b!5724220 res!2416610) b!5724221))

(assert (= (or b!5724223 b!5724221) bm!437515))

(assert (= (or b!5724217 b!5724220) bm!437513))

(assert (= (or b!5724219 bm!437515) bm!437514))

(declare-fun m!6677062 () Bool)

(assert (=> bm!437514 m!6677062))

(declare-fun m!6677064 () Bool)

(assert (=> bm!437513 m!6677064))

(declare-fun m!6677066 () Bool)

(assert (=> b!5724224 m!6677066))

(assert (=> start!589092 d!1805706))

(declare-fun bs!1338384 () Bool)

(declare-fun b!5724263 () Bool)

(assert (= bs!1338384 (and b!5724263 b!5723592)))

(declare-fun lambda!309429 () Int)

(assert (=> bs!1338384 (not (= lambda!309429 lambda!309367))))

(assert (=> bs!1338384 (not (= lambda!309429 lambda!309368))))

(assert (=> b!5724263 true))

(assert (=> b!5724263 true))

(declare-fun bs!1338385 () Bool)

(declare-fun b!5724262 () Bool)

(assert (= bs!1338385 (and b!5724262 b!5723592)))

(declare-fun lambda!309430 () Int)

(assert (=> bs!1338385 (not (= lambda!309430 lambda!309367))))

(assert (=> bs!1338385 (= lambda!309430 lambda!309368)))

(declare-fun bs!1338386 () Bool)

(assert (= bs!1338386 (and b!5724262 b!5724263)))

(assert (=> bs!1338386 (not (= lambda!309430 lambda!309429))))

(assert (=> b!5724262 true))

(assert (=> b!5724262 true))

(declare-fun b!5724258 () Bool)

(declare-fun e!3519835 () Bool)

(declare-fun e!3519834 () Bool)

(assert (=> b!5724258 (= e!3519835 e!3519834)))

(declare-fun res!2416628 () Bool)

(assert (=> b!5724258 (= res!2416628 (not ((_ is EmptyLang!15721) r!7292)))))

(assert (=> b!5724258 (=> (not res!2416628) (not e!3519834))))

(declare-fun b!5724259 () Bool)

(declare-fun res!2416629 () Bool)

(declare-fun e!3519837 () Bool)

(assert (=> b!5724259 (=> res!2416629 e!3519837)))

(declare-fun call!437525 () Bool)

(assert (=> b!5724259 (= res!2416629 call!437525)))

(declare-fun e!3519833 () Bool)

(assert (=> b!5724259 (= e!3519833 e!3519837)))

(declare-fun b!5724260 () Bool)

(declare-fun e!3519836 () Bool)

(assert (=> b!5724260 (= e!3519836 (matchRSpec!2824 (regTwo!31955 r!7292) s!2326))))

(declare-fun d!1805708 () Bool)

(declare-fun c!1009744 () Bool)

(assert (=> d!1805708 (= c!1009744 ((_ is EmptyExpr!15721) r!7292))))

(assert (=> d!1805708 (= (matchRSpec!2824 r!7292 s!2326) e!3519835)))

(declare-fun b!5724261 () Bool)

(declare-fun c!1009747 () Bool)

(assert (=> b!5724261 (= c!1009747 ((_ is ElementMatch!15721) r!7292))))

(declare-fun e!3519832 () Bool)

(assert (=> b!5724261 (= e!3519834 e!3519832)))

(declare-fun call!437526 () Bool)

(assert (=> b!5724262 (= e!3519833 call!437526)))

(declare-fun bm!437520 () Bool)

(declare-fun c!1009745 () Bool)

(assert (=> bm!437520 (= call!437526 (Exists!2821 (ite c!1009745 lambda!309429 lambda!309430)))))

(assert (=> b!5724263 (= e!3519837 call!437526)))

(declare-fun b!5724264 () Bool)

(declare-fun e!3519838 () Bool)

(assert (=> b!5724264 (= e!3519838 e!3519833)))

(assert (=> b!5724264 (= c!1009745 ((_ is Star!15721) r!7292))))

(declare-fun b!5724265 () Bool)

(assert (=> b!5724265 (= e!3519835 call!437525)))

(declare-fun b!5724266 () Bool)

(assert (=> b!5724266 (= e!3519832 (= s!2326 (Cons!63340 (c!1009551 r!7292) Nil!63340)))))

(declare-fun b!5724267 () Bool)

(declare-fun c!1009746 () Bool)

(assert (=> b!5724267 (= c!1009746 ((_ is Union!15721) r!7292))))

(assert (=> b!5724267 (= e!3519832 e!3519838)))

(declare-fun b!5724268 () Bool)

(assert (=> b!5724268 (= e!3519838 e!3519836)))

(declare-fun res!2416630 () Bool)

(assert (=> b!5724268 (= res!2416630 (matchRSpec!2824 (regOne!31955 r!7292) s!2326))))

(assert (=> b!5724268 (=> res!2416630 e!3519836)))

(declare-fun bm!437521 () Bool)

(assert (=> bm!437521 (= call!437525 (isEmpty!35217 s!2326))))

(assert (= (and d!1805708 c!1009744) b!5724265))

(assert (= (and d!1805708 (not c!1009744)) b!5724258))

(assert (= (and b!5724258 res!2416628) b!5724261))

(assert (= (and b!5724261 c!1009747) b!5724266))

(assert (= (and b!5724261 (not c!1009747)) b!5724267))

(assert (= (and b!5724267 c!1009746) b!5724268))

(assert (= (and b!5724267 (not c!1009746)) b!5724264))

(assert (= (and b!5724268 (not res!2416630)) b!5724260))

(assert (= (and b!5724264 c!1009745) b!5724259))

(assert (= (and b!5724264 (not c!1009745)) b!5724262))

(assert (= (and b!5724259 (not res!2416629)) b!5724263))

(assert (= (or b!5724263 b!5724262) bm!437520))

(assert (= (or b!5724265 b!5724259) bm!437521))

(declare-fun m!6677068 () Bool)

(assert (=> b!5724260 m!6677068))

(declare-fun m!6677070 () Bool)

(assert (=> bm!437520 m!6677070))

(declare-fun m!6677072 () Bool)

(assert (=> b!5724268 m!6677072))

(assert (=> bm!437521 m!6676876))

(assert (=> b!5723613 d!1805708))

(declare-fun bm!437524 () Bool)

(declare-fun call!437529 () Bool)

(assert (=> bm!437524 (= call!437529 (isEmpty!35217 s!2326))))

(declare-fun b!5724298 () Bool)

(declare-fun e!3519859 () Bool)

(declare-fun lt!2278787 () Bool)

(assert (=> b!5724298 (= e!3519859 (not lt!2278787))))

(declare-fun b!5724299 () Bool)

(declare-fun res!2416654 () Bool)

(declare-fun e!3519857 () Bool)

(assert (=> b!5724299 (=> (not res!2416654) (not e!3519857))))

(assert (=> b!5724299 (= res!2416654 (not call!437529))))

(declare-fun b!5724300 () Bool)

(declare-fun e!3519858 () Bool)

(assert (=> b!5724300 (= e!3519858 (= lt!2278787 call!437529))))

(declare-fun b!5724301 () Bool)

(declare-fun res!2416647 () Bool)

(declare-fun e!3519853 () Bool)

(assert (=> b!5724301 (=> res!2416647 e!3519853)))

(assert (=> b!5724301 (= res!2416647 (not ((_ is ElementMatch!15721) r!7292)))))

(assert (=> b!5724301 (= e!3519859 e!3519853)))

(declare-fun b!5724302 () Bool)

(declare-fun e!3519854 () Bool)

(declare-fun e!3519856 () Bool)

(assert (=> b!5724302 (= e!3519854 e!3519856)))

(declare-fun res!2416653 () Bool)

(assert (=> b!5724302 (=> res!2416653 e!3519856)))

(assert (=> b!5724302 (= res!2416653 call!437529)))

(declare-fun b!5724303 () Bool)

(assert (=> b!5724303 (= e!3519853 e!3519854)))

(declare-fun res!2416649 () Bool)

(assert (=> b!5724303 (=> (not res!2416649) (not e!3519854))))

(assert (=> b!5724303 (= res!2416649 (not lt!2278787))))

(declare-fun b!5724304 () Bool)

(declare-fun res!2416650 () Bool)

(assert (=> b!5724304 (=> res!2416650 e!3519853)))

(assert (=> b!5724304 (= res!2416650 e!3519857)))

(declare-fun res!2416648 () Bool)

(assert (=> b!5724304 (=> (not res!2416648) (not e!3519857))))

(assert (=> b!5724304 (= res!2416648 lt!2278787)))

(declare-fun d!1805710 () Bool)

(assert (=> d!1805710 e!3519858))

(declare-fun c!1009756 () Bool)

(assert (=> d!1805710 (= c!1009756 ((_ is EmptyExpr!15721) r!7292))))

(declare-fun e!3519855 () Bool)

(assert (=> d!1805710 (= lt!2278787 e!3519855)))

(declare-fun c!1009754 () Bool)

(assert (=> d!1805710 (= c!1009754 (isEmpty!35217 s!2326))))

(assert (=> d!1805710 (validRegex!7457 r!7292)))

(assert (=> d!1805710 (= (matchR!7906 r!7292 s!2326) lt!2278787)))

(declare-fun b!5724297 () Bool)

(assert (=> b!5724297 (= e!3519855 (nullable!5753 r!7292))))

(declare-fun b!5724305 () Bool)

(assert (=> b!5724305 (= e!3519858 e!3519859)))

(declare-fun c!1009755 () Bool)

(assert (=> b!5724305 (= c!1009755 ((_ is EmptyLang!15721) r!7292))))

(declare-fun b!5724306 () Bool)

(declare-fun derivativeStep!4522 (Regex!15721 C!31712) Regex!15721)

(assert (=> b!5724306 (= e!3519855 (matchR!7906 (derivativeStep!4522 r!7292 (head!12119 s!2326)) (tail!11214 s!2326)))))

(declare-fun b!5724307 () Bool)

(declare-fun res!2416652 () Bool)

(assert (=> b!5724307 (=> (not res!2416652) (not e!3519857))))

(assert (=> b!5724307 (= res!2416652 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun b!5724308 () Bool)

(assert (=> b!5724308 (= e!3519857 (= (head!12119 s!2326) (c!1009551 r!7292)))))

(declare-fun b!5724309 () Bool)

(declare-fun res!2416651 () Bool)

(assert (=> b!5724309 (=> res!2416651 e!3519856)))

(assert (=> b!5724309 (= res!2416651 (not (isEmpty!35217 (tail!11214 s!2326))))))

(declare-fun b!5724310 () Bool)

(assert (=> b!5724310 (= e!3519856 (not (= (head!12119 s!2326) (c!1009551 r!7292))))))

(assert (= (and d!1805710 c!1009754) b!5724297))

(assert (= (and d!1805710 (not c!1009754)) b!5724306))

(assert (= (and d!1805710 c!1009756) b!5724300))

(assert (= (and d!1805710 (not c!1009756)) b!5724305))

(assert (= (and b!5724305 c!1009755) b!5724298))

(assert (= (and b!5724305 (not c!1009755)) b!5724301))

(assert (= (and b!5724301 (not res!2416647)) b!5724304))

(assert (= (and b!5724304 res!2416648) b!5724299))

(assert (= (and b!5724299 res!2416654) b!5724307))

(assert (= (and b!5724307 res!2416652) b!5724308))

(assert (= (and b!5724304 (not res!2416650)) b!5724303))

(assert (= (and b!5724303 res!2416649) b!5724302))

(assert (= (and b!5724302 (not res!2416653)) b!5724309))

(assert (= (and b!5724309 (not res!2416651)) b!5724310))

(assert (= (or b!5724300 b!5724299 b!5724302) bm!437524))

(assert (=> bm!437524 m!6676876))

(declare-fun m!6677074 () Bool)

(assert (=> b!5724297 m!6677074))

(assert (=> b!5724306 m!6676880))

(assert (=> b!5724306 m!6676880))

(declare-fun m!6677076 () Bool)

(assert (=> b!5724306 m!6677076))

(assert (=> b!5724306 m!6676884))

(assert (=> b!5724306 m!6677076))

(assert (=> b!5724306 m!6676884))

(declare-fun m!6677078 () Bool)

(assert (=> b!5724306 m!6677078))

(assert (=> b!5724308 m!6676880))

(assert (=> b!5724307 m!6676884))

(assert (=> b!5724307 m!6676884))

(declare-fun m!6677080 () Bool)

(assert (=> b!5724307 m!6677080))

(assert (=> d!1805710 m!6676876))

(assert (=> d!1805710 m!6676500))

(assert (=> b!5724309 m!6676884))

(assert (=> b!5724309 m!6676884))

(assert (=> b!5724309 m!6677080))

(assert (=> b!5724310 m!6676880))

(assert (=> b!5723613 d!1805710))

(declare-fun d!1805712 () Bool)

(assert (=> d!1805712 (= (matchR!7906 r!7292 s!2326) (matchRSpec!2824 r!7292 s!2326))))

(declare-fun lt!2278790 () Unit!156416)

(declare-fun choose!43285 (Regex!15721 List!63464) Unit!156416)

(assert (=> d!1805712 (= lt!2278790 (choose!43285 r!7292 s!2326))))

(assert (=> d!1805712 (validRegex!7457 r!7292)))

(assert (=> d!1805712 (= (mainMatchTheorem!2824 r!7292 s!2326) lt!2278790)))

(declare-fun bs!1338387 () Bool)

(assert (= bs!1338387 d!1805712))

(assert (=> bs!1338387 m!6676480))

(assert (=> bs!1338387 m!6676478))

(declare-fun m!6677082 () Bool)

(assert (=> bs!1338387 m!6677082))

(assert (=> bs!1338387 m!6676500))

(assert (=> b!5723613 d!1805712))

(declare-fun b!5724330 () Bool)

(declare-fun e!3519874 () Option!15730)

(assert (=> b!5724330 (= e!3519874 None!15729)))

(declare-fun b!5724331 () Bool)

(declare-fun res!2416667 () Bool)

(declare-fun e!3519870 () Bool)

(assert (=> b!5724331 (=> (not res!2416667) (not e!3519870))))

(declare-fun lt!2278798 () Option!15730)

(declare-fun get!21839 (Option!15730) tuple2!65636)

(assert (=> b!5724331 (= res!2416667 (matchR!7906 (regOne!31954 r!7292) (_1!36121 (get!21839 lt!2278798))))))

(declare-fun b!5724332 () Bool)

(declare-fun e!3519873 () Option!15730)

(assert (=> b!5724332 (= e!3519873 (Some!15729 (tuple2!65637 Nil!63340 s!2326)))))

(declare-fun b!5724333 () Bool)

(assert (=> b!5724333 (= e!3519873 e!3519874)))

(declare-fun c!1009762 () Bool)

(assert (=> b!5724333 (= c!1009762 ((_ is Nil!63340) s!2326))))

(declare-fun b!5724334 () Bool)

(declare-fun e!3519871 () Bool)

(assert (=> b!5724334 (= e!3519871 (matchR!7906 (regTwo!31954 r!7292) s!2326))))

(declare-fun b!5724335 () Bool)

(declare-fun res!2416668 () Bool)

(assert (=> b!5724335 (=> (not res!2416668) (not e!3519870))))

(assert (=> b!5724335 (= res!2416668 (matchR!7906 (regTwo!31954 r!7292) (_2!36121 (get!21839 lt!2278798))))))

(declare-fun b!5724329 () Bool)

(declare-fun e!3519872 () Bool)

(assert (=> b!5724329 (= e!3519872 (not (isDefined!12433 lt!2278798)))))

(declare-fun d!1805714 () Bool)

(assert (=> d!1805714 e!3519872))

(declare-fun res!2416665 () Bool)

(assert (=> d!1805714 (=> res!2416665 e!3519872)))

(assert (=> d!1805714 (= res!2416665 e!3519870)))

(declare-fun res!2416666 () Bool)

(assert (=> d!1805714 (=> (not res!2416666) (not e!3519870))))

(assert (=> d!1805714 (= res!2416666 (isDefined!12433 lt!2278798))))

(assert (=> d!1805714 (= lt!2278798 e!3519873)))

(declare-fun c!1009761 () Bool)

(assert (=> d!1805714 (= c!1009761 e!3519871)))

(declare-fun res!2416669 () Bool)

(assert (=> d!1805714 (=> (not res!2416669) (not e!3519871))))

(assert (=> d!1805714 (= res!2416669 (matchR!7906 (regOne!31954 r!7292) Nil!63340))))

(assert (=> d!1805714 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1805714 (= (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326) lt!2278798)))

(declare-fun b!5724336 () Bool)

(declare-fun lt!2278799 () Unit!156416)

(declare-fun lt!2278797 () Unit!156416)

(assert (=> b!5724336 (= lt!2278799 lt!2278797)))

(declare-fun ++!13917 (List!63464 List!63464) List!63464)

(assert (=> b!5724336 (= (++!13917 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2072 (List!63464 C!31712 List!63464 List!63464) Unit!156416)

(assert (=> b!5724336 (= lt!2278797 (lemmaMoveElementToOtherListKeepsConcatEq!2072 Nil!63340 (h!69788 s!2326) (t!376790 s!2326) s!2326))))

(assert (=> b!5724336 (= e!3519874 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326) s!2326))))

(declare-fun b!5724337 () Bool)

(assert (=> b!5724337 (= e!3519870 (= (++!13917 (_1!36121 (get!21839 lt!2278798)) (_2!36121 (get!21839 lt!2278798))) s!2326))))

(assert (= (and d!1805714 res!2416669) b!5724334))

(assert (= (and d!1805714 c!1009761) b!5724332))

(assert (= (and d!1805714 (not c!1009761)) b!5724333))

(assert (= (and b!5724333 c!1009762) b!5724330))

(assert (= (and b!5724333 (not c!1009762)) b!5724336))

(assert (= (and d!1805714 res!2416666) b!5724331))

(assert (= (and b!5724331 res!2416667) b!5724335))

(assert (= (and b!5724335 res!2416668) b!5724337))

(assert (= (and d!1805714 (not res!2416665)) b!5724329))

(declare-fun m!6677084 () Bool)

(assert (=> b!5724329 m!6677084))

(declare-fun m!6677086 () Bool)

(assert (=> b!5724334 m!6677086))

(assert (=> d!1805714 m!6677084))

(declare-fun m!6677088 () Bool)

(assert (=> d!1805714 m!6677088))

(declare-fun m!6677090 () Bool)

(assert (=> d!1805714 m!6677090))

(declare-fun m!6677092 () Bool)

(assert (=> b!5724335 m!6677092))

(declare-fun m!6677094 () Bool)

(assert (=> b!5724335 m!6677094))

(declare-fun m!6677096 () Bool)

(assert (=> b!5724336 m!6677096))

(assert (=> b!5724336 m!6677096))

(declare-fun m!6677098 () Bool)

(assert (=> b!5724336 m!6677098))

(declare-fun m!6677100 () Bool)

(assert (=> b!5724336 m!6677100))

(assert (=> b!5724336 m!6677096))

(declare-fun m!6677102 () Bool)

(assert (=> b!5724336 m!6677102))

(assert (=> b!5724331 m!6677092))

(declare-fun m!6677104 () Bool)

(assert (=> b!5724331 m!6677104))

(assert (=> b!5724337 m!6677092))

(declare-fun m!6677106 () Bool)

(assert (=> b!5724337 m!6677106))

(assert (=> b!5723592 d!1805714))

(declare-fun d!1805716 () Bool)

(declare-fun choose!43286 (Int) Bool)

(assert (=> d!1805716 (= (Exists!2821 lambda!309368) (choose!43286 lambda!309368))))

(declare-fun bs!1338388 () Bool)

(assert (= bs!1338388 d!1805716))

(declare-fun m!6677108 () Bool)

(assert (=> bs!1338388 m!6677108))

(assert (=> b!5723592 d!1805716))

(declare-fun d!1805718 () Bool)

(assert (=> d!1805718 (= (Exists!2821 lambda!309367) (choose!43286 lambda!309367))))

(declare-fun bs!1338389 () Bool)

(assert (= bs!1338389 d!1805718))

(declare-fun m!6677110 () Bool)

(assert (=> bs!1338389 m!6677110))

(assert (=> b!5723592 d!1805718))

(declare-fun bs!1338390 () Bool)

(declare-fun d!1805720 () Bool)

(assert (= bs!1338390 (and d!1805720 b!5723592)))

(declare-fun lambda!309433 () Int)

(assert (=> bs!1338390 (= lambda!309433 lambda!309367)))

(assert (=> bs!1338390 (not (= lambda!309433 lambda!309368))))

(declare-fun bs!1338391 () Bool)

(assert (= bs!1338391 (and d!1805720 b!5724263)))

(assert (=> bs!1338391 (not (= lambda!309433 lambda!309429))))

(declare-fun bs!1338392 () Bool)

(assert (= bs!1338392 (and d!1805720 b!5724262)))

(assert (=> bs!1338392 (not (= lambda!309433 lambda!309430))))

(assert (=> d!1805720 true))

(assert (=> d!1805720 true))

(assert (=> d!1805720 true))

(assert (=> d!1805720 (= (isDefined!12433 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326)) (Exists!2821 lambda!309433))))

(declare-fun lt!2278802 () Unit!156416)

(declare-fun choose!43287 (Regex!15721 Regex!15721 List!63464) Unit!156416)

(assert (=> d!1805720 (= lt!2278802 (choose!43287 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326))))

(assert (=> d!1805720 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1805720 (= (lemmaFindConcatSeparationEquivalentToExists!1908 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326) lt!2278802)))

(declare-fun bs!1338393 () Bool)

(assert (= bs!1338393 d!1805720))

(declare-fun m!6677112 () Bool)

(assert (=> bs!1338393 m!6677112))

(assert (=> bs!1338393 m!6676484))

(assert (=> bs!1338393 m!6677090))

(declare-fun m!6677114 () Bool)

(assert (=> bs!1338393 m!6677114))

(assert (=> bs!1338393 m!6676484))

(assert (=> bs!1338393 m!6676486))

(assert (=> b!5723592 d!1805720))

(declare-fun bs!1338394 () Bool)

(declare-fun d!1805722 () Bool)

(assert (= bs!1338394 (and d!1805722 b!5723592)))

(declare-fun lambda!309438 () Int)

(assert (=> bs!1338394 (not (= lambda!309438 lambda!309368))))

(declare-fun bs!1338395 () Bool)

(assert (= bs!1338395 (and d!1805722 d!1805720)))

(assert (=> bs!1338395 (= lambda!309438 lambda!309433)))

(declare-fun bs!1338396 () Bool)

(assert (= bs!1338396 (and d!1805722 b!5724263)))

(assert (=> bs!1338396 (not (= lambda!309438 lambda!309429))))

(assert (=> bs!1338394 (= lambda!309438 lambda!309367)))

(declare-fun bs!1338397 () Bool)

(assert (= bs!1338397 (and d!1805722 b!5724262)))

(assert (=> bs!1338397 (not (= lambda!309438 lambda!309430))))

(assert (=> d!1805722 true))

(assert (=> d!1805722 true))

(assert (=> d!1805722 true))

(declare-fun lambda!309439 () Int)

(assert (=> bs!1338395 (not (= lambda!309439 lambda!309433))))

(assert (=> bs!1338396 (not (= lambda!309439 lambda!309429))))

(assert (=> bs!1338394 (not (= lambda!309439 lambda!309367))))

(assert (=> bs!1338397 (= lambda!309439 lambda!309430)))

(declare-fun bs!1338398 () Bool)

(assert (= bs!1338398 d!1805722))

(assert (=> bs!1338398 (not (= lambda!309439 lambda!309438))))

(assert (=> bs!1338394 (= lambda!309439 lambda!309368)))

(assert (=> d!1805722 true))

(assert (=> d!1805722 true))

(assert (=> d!1805722 true))

(assert (=> d!1805722 (= (Exists!2821 lambda!309438) (Exists!2821 lambda!309439))))

(declare-fun lt!2278805 () Unit!156416)

(declare-fun choose!43288 (Regex!15721 Regex!15721 List!63464) Unit!156416)

(assert (=> d!1805722 (= lt!2278805 (choose!43288 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326))))

(assert (=> d!1805722 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1805722 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1450 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326) lt!2278805)))

(declare-fun m!6677116 () Bool)

(assert (=> bs!1338398 m!6677116))

(declare-fun m!6677118 () Bool)

(assert (=> bs!1338398 m!6677118))

(declare-fun m!6677120 () Bool)

(assert (=> bs!1338398 m!6677120))

(assert (=> bs!1338398 m!6677090))

(assert (=> b!5723592 d!1805722))

(declare-fun d!1805724 () Bool)

(declare-fun isEmpty!35218 (Option!15730) Bool)

(assert (=> d!1805724 (= (isDefined!12433 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326)) (not (isEmpty!35218 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326))))))

(declare-fun bs!1338399 () Bool)

(assert (= bs!1338399 d!1805724))

(assert (=> bs!1338399 m!6676484))

(declare-fun m!6677122 () Bool)

(assert (=> bs!1338399 m!6677122))

(assert (=> b!5723592 d!1805724))

(declare-fun d!1805726 () Bool)

(assert (=> d!1805726 (= (isEmpty!35213 (t!376789 zl!343)) ((_ is Nil!63339) (t!376789 zl!343)))))

(assert (=> b!5723594 d!1805726))

(declare-fun bs!1338400 () Bool)

(declare-fun d!1805728 () Bool)

(assert (= bs!1338400 (and d!1805728 b!5723588)))

(declare-fun lambda!309442 () Int)

(assert (=> bs!1338400 (= lambda!309442 lambda!309371)))

(declare-fun bs!1338401 () Bool)

(assert (= bs!1338401 (and d!1805728 d!1805580)))

(assert (=> bs!1338401 (= lambda!309442 lambda!309402)))

(declare-fun bs!1338402 () Bool)

(assert (= bs!1338402 (and d!1805728 d!1805662)))

(assert (=> bs!1338402 (= lambda!309442 lambda!309423)))

(declare-fun bs!1338403 () Bool)

(assert (= bs!1338403 (and d!1805728 d!1805682)))

(assert (=> bs!1338403 (= lambda!309442 lambda!309424)))

(declare-fun b!5724370 () Bool)

(declare-fun e!3519894 () Bool)

(declare-fun lt!2278808 () Regex!15721)

(declare-fun isUnion!668 (Regex!15721) Bool)

(assert (=> b!5724370 (= e!3519894 (isUnion!668 lt!2278808))))

(declare-fun b!5724371 () Bool)

(declare-fun e!3519895 () Bool)

(assert (=> b!5724371 (= e!3519895 e!3519894)))

(declare-fun c!1009771 () Bool)

(assert (=> b!5724371 (= c!1009771 (isEmpty!35214 (tail!11213 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5724372 () Bool)

(assert (=> b!5724372 (= e!3519894 (= lt!2278808 (head!12118 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5724373 () Bool)

(declare-fun e!3519897 () Regex!15721)

(declare-fun e!3519898 () Regex!15721)

(assert (=> b!5724373 (= e!3519897 e!3519898)))

(declare-fun c!1009772 () Bool)

(assert (=> b!5724373 (= c!1009772 ((_ is Cons!63338) (unfocusZipperList!1149 zl!343)))))

(declare-fun b!5724374 () Bool)

(assert (=> b!5724374 (= e!3519898 EmptyLang!15721)))

(declare-fun b!5724375 () Bool)

(declare-fun e!3519893 () Bool)

(assert (=> b!5724375 (= e!3519893 e!3519895)))

(declare-fun c!1009774 () Bool)

(assert (=> b!5724375 (= c!1009774 (isEmpty!35214 (unfocusZipperList!1149 zl!343)))))

(declare-fun b!5724376 () Bool)

(assert (=> b!5724376 (= e!3519897 (h!69786 (unfocusZipperList!1149 zl!343)))))

(declare-fun b!5724377 () Bool)

(declare-fun isEmptyLang!1238 (Regex!15721) Bool)

(assert (=> b!5724377 (= e!3519895 (isEmptyLang!1238 lt!2278808))))

(assert (=> d!1805728 e!3519893))

(declare-fun res!2416687 () Bool)

(assert (=> d!1805728 (=> (not res!2416687) (not e!3519893))))

(assert (=> d!1805728 (= res!2416687 (validRegex!7457 lt!2278808))))

(assert (=> d!1805728 (= lt!2278808 e!3519897)))

(declare-fun c!1009773 () Bool)

(declare-fun e!3519896 () Bool)

(assert (=> d!1805728 (= c!1009773 e!3519896)))

(declare-fun res!2416686 () Bool)

(assert (=> d!1805728 (=> (not res!2416686) (not e!3519896))))

(assert (=> d!1805728 (= res!2416686 ((_ is Cons!63338) (unfocusZipperList!1149 zl!343)))))

(assert (=> d!1805728 (forall!14854 (unfocusZipperList!1149 zl!343) lambda!309442)))

(assert (=> d!1805728 (= (generalisedUnion!1584 (unfocusZipperList!1149 zl!343)) lt!2278808)))

(declare-fun b!5724378 () Bool)

(assert (=> b!5724378 (= e!3519896 (isEmpty!35214 (t!376788 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5724379 () Bool)

(assert (=> b!5724379 (= e!3519898 (Union!15721 (h!69786 (unfocusZipperList!1149 zl!343)) (generalisedUnion!1584 (t!376788 (unfocusZipperList!1149 zl!343)))))))

(assert (= (and d!1805728 res!2416686) b!5724378))

(assert (= (and d!1805728 c!1009773) b!5724376))

(assert (= (and d!1805728 (not c!1009773)) b!5724373))

(assert (= (and b!5724373 c!1009772) b!5724379))

(assert (= (and b!5724373 (not c!1009772)) b!5724374))

(assert (= (and d!1805728 res!2416687) b!5724375))

(assert (= (and b!5724375 c!1009774) b!5724377))

(assert (= (and b!5724375 (not c!1009774)) b!5724371))

(assert (= (and b!5724371 c!1009771) b!5724372))

(assert (= (and b!5724371 (not c!1009771)) b!5724370))

(assert (=> b!5724371 m!6676464))

(declare-fun m!6677124 () Bool)

(assert (=> b!5724371 m!6677124))

(assert (=> b!5724371 m!6677124))

(declare-fun m!6677126 () Bool)

(assert (=> b!5724371 m!6677126))

(declare-fun m!6677128 () Bool)

(assert (=> b!5724379 m!6677128))

(declare-fun m!6677130 () Bool)

(assert (=> b!5724370 m!6677130))

(assert (=> b!5724375 m!6676464))

(declare-fun m!6677132 () Bool)

(assert (=> b!5724375 m!6677132))

(declare-fun m!6677134 () Bool)

(assert (=> b!5724378 m!6677134))

(declare-fun m!6677136 () Bool)

(assert (=> d!1805728 m!6677136))

(assert (=> d!1805728 m!6676464))

(declare-fun m!6677138 () Bool)

(assert (=> d!1805728 m!6677138))

(declare-fun m!6677140 () Bool)

(assert (=> b!5724377 m!6677140))

(assert (=> b!5724372 m!6676464))

(declare-fun m!6677142 () Bool)

(assert (=> b!5724372 m!6677142))

(assert (=> b!5723595 d!1805728))

(declare-fun bs!1338404 () Bool)

(declare-fun d!1805730 () Bool)

(assert (= bs!1338404 (and d!1805730 d!1805728)))

(declare-fun lambda!309445 () Int)

(assert (=> bs!1338404 (= lambda!309445 lambda!309442)))

(declare-fun bs!1338405 () Bool)

(assert (= bs!1338405 (and d!1805730 b!5723588)))

(assert (=> bs!1338405 (= lambda!309445 lambda!309371)))

(declare-fun bs!1338406 () Bool)

(assert (= bs!1338406 (and d!1805730 d!1805682)))

(assert (=> bs!1338406 (= lambda!309445 lambda!309424)))

(declare-fun bs!1338407 () Bool)

(assert (= bs!1338407 (and d!1805730 d!1805580)))

(assert (=> bs!1338407 (= lambda!309445 lambda!309402)))

(declare-fun bs!1338408 () Bool)

(assert (= bs!1338408 (and d!1805730 d!1805662)))

(assert (=> bs!1338408 (= lambda!309445 lambda!309423)))

(declare-fun lt!2278811 () List!63462)

(assert (=> d!1805730 (forall!14854 lt!2278811 lambda!309445)))

(declare-fun e!3519901 () List!63462)

(assert (=> d!1805730 (= lt!2278811 e!3519901)))

(declare-fun c!1009777 () Bool)

(assert (=> d!1805730 (= c!1009777 ((_ is Cons!63339) zl!343))))

(assert (=> d!1805730 (= (unfocusZipperList!1149 zl!343) lt!2278811)))

(declare-fun b!5724384 () Bool)

(assert (=> b!5724384 (= e!3519901 (Cons!63338 (generalisedConcat!1336 (exprs!5605 (h!69787 zl!343))) (unfocusZipperList!1149 (t!376789 zl!343))))))

(declare-fun b!5724385 () Bool)

(assert (=> b!5724385 (= e!3519901 Nil!63338)))

(assert (= (and d!1805730 c!1009777) b!5724384))

(assert (= (and d!1805730 (not c!1009777)) b!5724385))

(declare-fun m!6677144 () Bool)

(assert (=> d!1805730 m!6677144))

(assert (=> b!5724384 m!6676462))

(declare-fun m!6677146 () Bool)

(assert (=> b!5724384 m!6677146))

(assert (=> b!5723595 d!1805730))

(declare-fun d!1805732 () Bool)

(assert (=> d!1805732 (= (isEmpty!35214 (t!376788 (exprs!5605 (h!69787 zl!343)))) ((_ is Nil!63338) (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5723615 d!1805732))

(declare-fun bm!437525 () Bool)

(declare-fun call!437530 () Bool)

(assert (=> bm!437525 (= call!437530 (isEmpty!35217 s!2326))))

(declare-fun b!5724387 () Bool)

(declare-fun e!3519908 () Bool)

(declare-fun lt!2278812 () Bool)

(assert (=> b!5724387 (= e!3519908 (not lt!2278812))))

(declare-fun b!5724388 () Bool)

(declare-fun res!2416695 () Bool)

(declare-fun e!3519906 () Bool)

(assert (=> b!5724388 (=> (not res!2416695) (not e!3519906))))

(assert (=> b!5724388 (= res!2416695 (not call!437530))))

(declare-fun b!5724389 () Bool)

(declare-fun e!3519907 () Bool)

(assert (=> b!5724389 (= e!3519907 (= lt!2278812 call!437530))))

(declare-fun b!5724390 () Bool)

(declare-fun res!2416688 () Bool)

(declare-fun e!3519902 () Bool)

(assert (=> b!5724390 (=> res!2416688 e!3519902)))

(assert (=> b!5724390 (= res!2416688 (not ((_ is ElementMatch!15721) lt!2278693)))))

(assert (=> b!5724390 (= e!3519908 e!3519902)))

(declare-fun b!5724391 () Bool)

(declare-fun e!3519903 () Bool)

(declare-fun e!3519905 () Bool)

(assert (=> b!5724391 (= e!3519903 e!3519905)))

(declare-fun res!2416694 () Bool)

(assert (=> b!5724391 (=> res!2416694 e!3519905)))

(assert (=> b!5724391 (= res!2416694 call!437530)))

(declare-fun b!5724392 () Bool)

(assert (=> b!5724392 (= e!3519902 e!3519903)))

(declare-fun res!2416690 () Bool)

(assert (=> b!5724392 (=> (not res!2416690) (not e!3519903))))

(assert (=> b!5724392 (= res!2416690 (not lt!2278812))))

(declare-fun b!5724393 () Bool)

(declare-fun res!2416691 () Bool)

(assert (=> b!5724393 (=> res!2416691 e!3519902)))

(assert (=> b!5724393 (= res!2416691 e!3519906)))

(declare-fun res!2416689 () Bool)

(assert (=> b!5724393 (=> (not res!2416689) (not e!3519906))))

(assert (=> b!5724393 (= res!2416689 lt!2278812)))

(declare-fun d!1805734 () Bool)

(assert (=> d!1805734 e!3519907))

(declare-fun c!1009780 () Bool)

(assert (=> d!1805734 (= c!1009780 ((_ is EmptyExpr!15721) lt!2278693))))

(declare-fun e!3519904 () Bool)

(assert (=> d!1805734 (= lt!2278812 e!3519904)))

(declare-fun c!1009778 () Bool)

(assert (=> d!1805734 (= c!1009778 (isEmpty!35217 s!2326))))

(assert (=> d!1805734 (validRegex!7457 lt!2278693)))

(assert (=> d!1805734 (= (matchR!7906 lt!2278693 s!2326) lt!2278812)))

(declare-fun b!5724386 () Bool)

(assert (=> b!5724386 (= e!3519904 (nullable!5753 lt!2278693))))

(declare-fun b!5724394 () Bool)

(assert (=> b!5724394 (= e!3519907 e!3519908)))

(declare-fun c!1009779 () Bool)

(assert (=> b!5724394 (= c!1009779 ((_ is EmptyLang!15721) lt!2278693))))

(declare-fun b!5724395 () Bool)

(assert (=> b!5724395 (= e!3519904 (matchR!7906 (derivativeStep!4522 lt!2278693 (head!12119 s!2326)) (tail!11214 s!2326)))))

(declare-fun b!5724396 () Bool)

(declare-fun res!2416693 () Bool)

(assert (=> b!5724396 (=> (not res!2416693) (not e!3519906))))

(assert (=> b!5724396 (= res!2416693 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun b!5724397 () Bool)

(assert (=> b!5724397 (= e!3519906 (= (head!12119 s!2326) (c!1009551 lt!2278693)))))

(declare-fun b!5724398 () Bool)

(declare-fun res!2416692 () Bool)

(assert (=> b!5724398 (=> res!2416692 e!3519905)))

(assert (=> b!5724398 (= res!2416692 (not (isEmpty!35217 (tail!11214 s!2326))))))

(declare-fun b!5724399 () Bool)

(assert (=> b!5724399 (= e!3519905 (not (= (head!12119 s!2326) (c!1009551 lt!2278693))))))

(assert (= (and d!1805734 c!1009778) b!5724386))

(assert (= (and d!1805734 (not c!1009778)) b!5724395))

(assert (= (and d!1805734 c!1009780) b!5724389))

(assert (= (and d!1805734 (not c!1009780)) b!5724394))

(assert (= (and b!5724394 c!1009779) b!5724387))

(assert (= (and b!5724394 (not c!1009779)) b!5724390))

(assert (= (and b!5724390 (not res!2416688)) b!5724393))

(assert (= (and b!5724393 res!2416689) b!5724388))

(assert (= (and b!5724388 res!2416695) b!5724396))

(assert (= (and b!5724396 res!2416693) b!5724397))

(assert (= (and b!5724393 (not res!2416691)) b!5724392))

(assert (= (and b!5724392 res!2416690) b!5724391))

(assert (= (and b!5724391 (not res!2416694)) b!5724398))

(assert (= (and b!5724398 (not res!2416692)) b!5724399))

(assert (= (or b!5724389 b!5724388 b!5724391) bm!437525))

(assert (=> bm!437525 m!6676876))

(declare-fun m!6677148 () Bool)

(assert (=> b!5724386 m!6677148))

(assert (=> b!5724395 m!6676880))

(assert (=> b!5724395 m!6676880))

(declare-fun m!6677150 () Bool)

(assert (=> b!5724395 m!6677150))

(assert (=> b!5724395 m!6676884))

(assert (=> b!5724395 m!6677150))

(assert (=> b!5724395 m!6676884))

(declare-fun m!6677152 () Bool)

(assert (=> b!5724395 m!6677152))

(assert (=> b!5724397 m!6676880))

(assert (=> b!5724396 m!6676884))

(assert (=> b!5724396 m!6676884))

(assert (=> b!5724396 m!6677080))

(assert (=> d!1805734 m!6676876))

(declare-fun m!6677154 () Bool)

(assert (=> d!1805734 m!6677154))

(assert (=> b!5724398 m!6676884))

(assert (=> b!5724398 m!6676884))

(assert (=> b!5724398 m!6677080))

(assert (=> b!5724399 m!6676880))

(assert (=> b!5723597 d!1805734))

(declare-fun bs!1338409 () Bool)

(declare-fun b!5724405 () Bool)

(assert (= bs!1338409 (and b!5724405 d!1805720)))

(declare-fun lambda!309446 () Int)

(assert (=> bs!1338409 (not (= lambda!309446 lambda!309433))))

(declare-fun bs!1338410 () Bool)

(assert (= bs!1338410 (and b!5724405 b!5723592)))

(assert (=> bs!1338410 (not (= lambda!309446 lambda!309367))))

(declare-fun bs!1338411 () Bool)

(assert (= bs!1338411 (and b!5724405 b!5724262)))

(assert (=> bs!1338411 (not (= lambda!309446 lambda!309430))))

(declare-fun bs!1338412 () Bool)

(assert (= bs!1338412 (and b!5724405 d!1805722)))

(assert (=> bs!1338412 (not (= lambda!309446 lambda!309438))))

(assert (=> bs!1338410 (not (= lambda!309446 lambda!309368))))

(declare-fun bs!1338413 () Bool)

(assert (= bs!1338413 (and b!5724405 b!5724263)))

(assert (=> bs!1338413 (= (and (= (reg!16050 lt!2278693) (reg!16050 r!7292)) (= lt!2278693 r!7292)) (= lambda!309446 lambda!309429))))

(assert (=> bs!1338412 (not (= lambda!309446 lambda!309439))))

(assert (=> b!5724405 true))

(assert (=> b!5724405 true))

(declare-fun bs!1338414 () Bool)

(declare-fun b!5724404 () Bool)

(assert (= bs!1338414 (and b!5724404 d!1805720)))

(declare-fun lambda!309447 () Int)

(assert (=> bs!1338414 (not (= lambda!309447 lambda!309433))))

(declare-fun bs!1338415 () Bool)

(assert (= bs!1338415 (and b!5724404 b!5724405)))

(assert (=> bs!1338415 (not (= lambda!309447 lambda!309446))))

(declare-fun bs!1338416 () Bool)

(assert (= bs!1338416 (and b!5724404 b!5723592)))

(assert (=> bs!1338416 (not (= lambda!309447 lambda!309367))))

(declare-fun bs!1338417 () Bool)

(assert (= bs!1338417 (and b!5724404 b!5724262)))

(assert (=> bs!1338417 (= (and (= (regOne!31954 lt!2278693) (regOne!31954 r!7292)) (= (regTwo!31954 lt!2278693) (regTwo!31954 r!7292))) (= lambda!309447 lambda!309430))))

(declare-fun bs!1338418 () Bool)

(assert (= bs!1338418 (and b!5724404 d!1805722)))

(assert (=> bs!1338418 (not (= lambda!309447 lambda!309438))))

(assert (=> bs!1338416 (= (and (= (regOne!31954 lt!2278693) (regOne!31954 r!7292)) (= (regTwo!31954 lt!2278693) (regTwo!31954 r!7292))) (= lambda!309447 lambda!309368))))

(declare-fun bs!1338419 () Bool)

(assert (= bs!1338419 (and b!5724404 b!5724263)))

(assert (=> bs!1338419 (not (= lambda!309447 lambda!309429))))

(assert (=> bs!1338418 (= (and (= (regOne!31954 lt!2278693) (regOne!31954 r!7292)) (= (regTwo!31954 lt!2278693) (regTwo!31954 r!7292))) (= lambda!309447 lambda!309439))))

(assert (=> b!5724404 true))

(assert (=> b!5724404 true))

(declare-fun b!5724400 () Bool)

(declare-fun e!3519912 () Bool)

(declare-fun e!3519911 () Bool)

(assert (=> b!5724400 (= e!3519912 e!3519911)))

(declare-fun res!2416696 () Bool)

(assert (=> b!5724400 (= res!2416696 (not ((_ is EmptyLang!15721) lt!2278693)))))

(assert (=> b!5724400 (=> (not res!2416696) (not e!3519911))))

(declare-fun b!5724401 () Bool)

(declare-fun res!2416697 () Bool)

(declare-fun e!3519914 () Bool)

(assert (=> b!5724401 (=> res!2416697 e!3519914)))

(declare-fun call!437531 () Bool)

(assert (=> b!5724401 (= res!2416697 call!437531)))

(declare-fun e!3519910 () Bool)

(assert (=> b!5724401 (= e!3519910 e!3519914)))

(declare-fun b!5724402 () Bool)

(declare-fun e!3519913 () Bool)

(assert (=> b!5724402 (= e!3519913 (matchRSpec!2824 (regTwo!31955 lt!2278693) s!2326))))

(declare-fun d!1805736 () Bool)

(declare-fun c!1009781 () Bool)

(assert (=> d!1805736 (= c!1009781 ((_ is EmptyExpr!15721) lt!2278693))))

(assert (=> d!1805736 (= (matchRSpec!2824 lt!2278693 s!2326) e!3519912)))

(declare-fun b!5724403 () Bool)

(declare-fun c!1009784 () Bool)

(assert (=> b!5724403 (= c!1009784 ((_ is ElementMatch!15721) lt!2278693))))

(declare-fun e!3519909 () Bool)

(assert (=> b!5724403 (= e!3519911 e!3519909)))

(declare-fun call!437532 () Bool)

(assert (=> b!5724404 (= e!3519910 call!437532)))

(declare-fun c!1009782 () Bool)

(declare-fun bm!437526 () Bool)

(assert (=> bm!437526 (= call!437532 (Exists!2821 (ite c!1009782 lambda!309446 lambda!309447)))))

(assert (=> b!5724405 (= e!3519914 call!437532)))

(declare-fun b!5724406 () Bool)

(declare-fun e!3519915 () Bool)

(assert (=> b!5724406 (= e!3519915 e!3519910)))

(assert (=> b!5724406 (= c!1009782 ((_ is Star!15721) lt!2278693))))

(declare-fun b!5724407 () Bool)

(assert (=> b!5724407 (= e!3519912 call!437531)))

(declare-fun b!5724408 () Bool)

(assert (=> b!5724408 (= e!3519909 (= s!2326 (Cons!63340 (c!1009551 lt!2278693) Nil!63340)))))

(declare-fun b!5724409 () Bool)

(declare-fun c!1009783 () Bool)

(assert (=> b!5724409 (= c!1009783 ((_ is Union!15721) lt!2278693))))

(assert (=> b!5724409 (= e!3519909 e!3519915)))

(declare-fun b!5724410 () Bool)

(assert (=> b!5724410 (= e!3519915 e!3519913)))

(declare-fun res!2416698 () Bool)

(assert (=> b!5724410 (= res!2416698 (matchRSpec!2824 (regOne!31955 lt!2278693) s!2326))))

(assert (=> b!5724410 (=> res!2416698 e!3519913)))

(declare-fun bm!437527 () Bool)

(assert (=> bm!437527 (= call!437531 (isEmpty!35217 s!2326))))

(assert (= (and d!1805736 c!1009781) b!5724407))

(assert (= (and d!1805736 (not c!1009781)) b!5724400))

(assert (= (and b!5724400 res!2416696) b!5724403))

(assert (= (and b!5724403 c!1009784) b!5724408))

(assert (= (and b!5724403 (not c!1009784)) b!5724409))

(assert (= (and b!5724409 c!1009783) b!5724410))

(assert (= (and b!5724409 (not c!1009783)) b!5724406))

(assert (= (and b!5724410 (not res!2416698)) b!5724402))

(assert (= (and b!5724406 c!1009782) b!5724401))

(assert (= (and b!5724406 (not c!1009782)) b!5724404))

(assert (= (and b!5724401 (not res!2416697)) b!5724405))

(assert (= (or b!5724405 b!5724404) bm!437526))

(assert (= (or b!5724407 b!5724401) bm!437527))

(declare-fun m!6677156 () Bool)

(assert (=> b!5724402 m!6677156))

(declare-fun m!6677158 () Bool)

(assert (=> bm!437526 m!6677158))

(declare-fun m!6677160 () Bool)

(assert (=> b!5724410 m!6677160))

(assert (=> bm!437527 m!6676876))

(assert (=> b!5723597 d!1805736))

(declare-fun d!1805738 () Bool)

(assert (=> d!1805738 (= (matchR!7906 lt!2278693 s!2326) (matchRSpec!2824 lt!2278693 s!2326))))

(declare-fun lt!2278813 () Unit!156416)

(assert (=> d!1805738 (= lt!2278813 (choose!43285 lt!2278693 s!2326))))

(assert (=> d!1805738 (validRegex!7457 lt!2278693)))

(assert (=> d!1805738 (= (mainMatchTheorem!2824 lt!2278693 s!2326) lt!2278813)))

(declare-fun bs!1338420 () Bool)

(assert (= bs!1338420 d!1805738))

(assert (=> bs!1338420 m!6676506))

(assert (=> bs!1338420 m!6676508))

(declare-fun m!6677162 () Bool)

(assert (=> bs!1338420 m!6677162))

(assert (=> bs!1338420 m!6677154))

(assert (=> b!5723597 d!1805738))

(declare-fun d!1805740 () Bool)

(declare-fun lt!2278814 () Regex!15721)

(assert (=> d!1805740 (validRegex!7457 lt!2278814)))

(assert (=> d!1805740 (= lt!2278814 (generalisedUnion!1584 (unfocusZipperList!1149 zl!343)))))

(assert (=> d!1805740 (= (unfocusZipper!1463 zl!343) lt!2278814)))

(declare-fun bs!1338421 () Bool)

(assert (= bs!1338421 d!1805740))

(declare-fun m!6677164 () Bool)

(assert (=> bs!1338421 m!6677164))

(assert (=> bs!1338421 m!6676464))

(assert (=> bs!1338421 m!6676464))

(assert (=> bs!1338421 m!6676466))

(assert (=> b!5723617 d!1805740))

(declare-fun e!3519918 () Bool)

(declare-fun d!1805742 () Bool)

(assert (=> d!1805742 (= (matchZipper!1859 ((_ map or) lt!2278659 lt!2278681) (t!376790 s!2326)) e!3519918)))

(declare-fun res!2416701 () Bool)

(assert (=> d!1805742 (=> res!2416701 e!3519918)))

(assert (=> d!1805742 (= res!2416701 (matchZipper!1859 lt!2278659 (t!376790 s!2326)))))

(declare-fun lt!2278817 () Unit!156416)

(declare-fun choose!43289 ((InoxSet Context!10210) (InoxSet Context!10210) List!63464) Unit!156416)

(assert (=> d!1805742 (= lt!2278817 (choose!43289 lt!2278659 lt!2278681 (t!376790 s!2326)))))

(assert (=> d!1805742 (= (lemmaZipperConcatMatchesSameAsBothZippers!746 lt!2278659 lt!2278681 (t!376790 s!2326)) lt!2278817)))

(declare-fun b!5724413 () Bool)

(assert (=> b!5724413 (= e!3519918 (matchZipper!1859 lt!2278681 (t!376790 s!2326)))))

(assert (= (and d!1805742 (not res!2416701)) b!5724413))

(assert (=> d!1805742 m!6676436))

(assert (=> d!1805742 m!6676434))

(declare-fun m!6677166 () Bool)

(assert (=> d!1805742 m!6677166))

(assert (=> b!5724413 m!6676454))

(assert (=> b!5723596 d!1805742))

(assert (=> b!5723596 d!1805704))

(declare-fun d!1805744 () Bool)

(declare-fun c!1009785 () Bool)

(assert (=> d!1805744 (= c!1009785 (isEmpty!35217 (t!376790 s!2326)))))

(declare-fun e!3519919 () Bool)

(assert (=> d!1805744 (= (matchZipper!1859 ((_ map or) lt!2278659 lt!2278681) (t!376790 s!2326)) e!3519919)))

(declare-fun b!5724414 () Bool)

(assert (=> b!5724414 (= e!3519919 (nullableZipper!1669 ((_ map or) lt!2278659 lt!2278681)))))

(declare-fun b!5724415 () Bool)

(assert (=> b!5724415 (= e!3519919 (matchZipper!1859 (derivationStepZipper!1804 ((_ map or) lt!2278659 lt!2278681) (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))))))

(assert (= (and d!1805744 c!1009785) b!5724414))

(assert (= (and d!1805744 (not c!1009785)) b!5724415))

(assert (=> d!1805744 m!6676858))

(declare-fun m!6677168 () Bool)

(assert (=> b!5724414 m!6677168))

(assert (=> b!5724415 m!6676862))

(assert (=> b!5724415 m!6676862))

(declare-fun m!6677170 () Bool)

(assert (=> b!5724415 m!6677170))

(assert (=> b!5724415 m!6676866))

(assert (=> b!5724415 m!6677170))

(assert (=> b!5724415 m!6676866))

(declare-fun m!6677172 () Bool)

(assert (=> b!5724415 m!6677172))

(assert (=> b!5723596 d!1805744))

(declare-fun condSetEmpty!38369 () Bool)

(assert (=> setNonEmpty!38363 (= condSetEmpty!38369 (= setRest!38363 ((as const (Array Context!10210 Bool)) false)))))

(declare-fun setRes!38369 () Bool)

(assert (=> setNonEmpty!38363 (= tp!1584989 setRes!38369)))

(declare-fun setIsEmpty!38369 () Bool)

(assert (=> setIsEmpty!38369 setRes!38369))

(declare-fun setNonEmpty!38369 () Bool)

(declare-fun tp!1585061 () Bool)

(declare-fun setElem!38369 () Context!10210)

(declare-fun e!3519922 () Bool)

(assert (=> setNonEmpty!38369 (= setRes!38369 (and tp!1585061 (inv!82549 setElem!38369) e!3519922))))

(declare-fun setRest!38369 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38369 (= setRest!38363 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38369 true) setRest!38369))))

(declare-fun b!5724420 () Bool)

(declare-fun tp!1585062 () Bool)

(assert (=> b!5724420 (= e!3519922 tp!1585062)))

(assert (= (and setNonEmpty!38363 condSetEmpty!38369) setIsEmpty!38369))

(assert (= (and setNonEmpty!38363 (not condSetEmpty!38369)) setNonEmpty!38369))

(assert (= setNonEmpty!38369 b!5724420))

(declare-fun m!6677174 () Bool)

(assert (=> setNonEmpty!38369 m!6677174))

(declare-fun b!5724432 () Bool)

(declare-fun e!3519925 () Bool)

(declare-fun tp!1585077 () Bool)

(declare-fun tp!1585073 () Bool)

(assert (=> b!5724432 (= e!3519925 (and tp!1585077 tp!1585073))))

(assert (=> b!5723593 (= tp!1584994 e!3519925)))

(declare-fun b!5724434 () Bool)

(declare-fun tp!1585076 () Bool)

(declare-fun tp!1585074 () Bool)

(assert (=> b!5724434 (= e!3519925 (and tp!1585076 tp!1585074))))

(declare-fun b!5724431 () Bool)

(assert (=> b!5724431 (= e!3519925 tp_is_empty!40695)))

(declare-fun b!5724433 () Bool)

(declare-fun tp!1585075 () Bool)

(assert (=> b!5724433 (= e!3519925 tp!1585075)))

(assert (= (and b!5723593 ((_ is ElementMatch!15721) (regOne!31954 r!7292))) b!5724431))

(assert (= (and b!5723593 ((_ is Concat!24566) (regOne!31954 r!7292))) b!5724432))

(assert (= (and b!5723593 ((_ is Star!15721) (regOne!31954 r!7292))) b!5724433))

(assert (= (and b!5723593 ((_ is Union!15721) (regOne!31954 r!7292))) b!5724434))

(declare-fun b!5724436 () Bool)

(declare-fun e!3519926 () Bool)

(declare-fun tp!1585082 () Bool)

(declare-fun tp!1585078 () Bool)

(assert (=> b!5724436 (= e!3519926 (and tp!1585082 tp!1585078))))

(assert (=> b!5723593 (= tp!1584993 e!3519926)))

(declare-fun b!5724438 () Bool)

(declare-fun tp!1585081 () Bool)

(declare-fun tp!1585079 () Bool)

(assert (=> b!5724438 (= e!3519926 (and tp!1585081 tp!1585079))))

(declare-fun b!5724435 () Bool)

(assert (=> b!5724435 (= e!3519926 tp_is_empty!40695)))

(declare-fun b!5724437 () Bool)

(declare-fun tp!1585080 () Bool)

(assert (=> b!5724437 (= e!3519926 tp!1585080)))

(assert (= (and b!5723593 ((_ is ElementMatch!15721) (regTwo!31954 r!7292))) b!5724435))

(assert (= (and b!5723593 ((_ is Concat!24566) (regTwo!31954 r!7292))) b!5724436))

(assert (= (and b!5723593 ((_ is Star!15721) (regTwo!31954 r!7292))) b!5724437))

(assert (= (and b!5723593 ((_ is Union!15721) (regTwo!31954 r!7292))) b!5724438))

(declare-fun b!5724446 () Bool)

(declare-fun e!3519932 () Bool)

(declare-fun tp!1585087 () Bool)

(assert (=> b!5724446 (= e!3519932 tp!1585087)))

(declare-fun e!3519931 () Bool)

(declare-fun b!5724445 () Bool)

(declare-fun tp!1585088 () Bool)

(assert (=> b!5724445 (= e!3519931 (and (inv!82549 (h!69787 (t!376789 zl!343))) e!3519932 tp!1585088))))

(assert (=> b!5723598 (= tp!1584996 e!3519931)))

(assert (= b!5724445 b!5724446))

(assert (= (and b!5723598 ((_ is Cons!63339) (t!376789 zl!343))) b!5724445))

(declare-fun m!6677176 () Bool)

(assert (=> b!5724445 m!6677176))

(declare-fun b!5724451 () Bool)

(declare-fun e!3519935 () Bool)

(declare-fun tp!1585093 () Bool)

(declare-fun tp!1585094 () Bool)

(assert (=> b!5724451 (= e!3519935 (and tp!1585093 tp!1585094))))

(assert (=> b!5723624 (= tp!1584990 e!3519935)))

(assert (= (and b!5723624 ((_ is Cons!63338) (exprs!5605 setElem!38363))) b!5724451))

(declare-fun b!5724453 () Bool)

(declare-fun e!3519936 () Bool)

(declare-fun tp!1585099 () Bool)

(declare-fun tp!1585095 () Bool)

(assert (=> b!5724453 (= e!3519936 (and tp!1585099 tp!1585095))))

(assert (=> b!5723599 (= tp!1584997 e!3519936)))

(declare-fun b!5724455 () Bool)

(declare-fun tp!1585098 () Bool)

(declare-fun tp!1585096 () Bool)

(assert (=> b!5724455 (= e!3519936 (and tp!1585098 tp!1585096))))

(declare-fun b!5724452 () Bool)

(assert (=> b!5724452 (= e!3519936 tp_is_empty!40695)))

(declare-fun b!5724454 () Bool)

(declare-fun tp!1585097 () Bool)

(assert (=> b!5724454 (= e!3519936 tp!1585097)))

(assert (= (and b!5723599 ((_ is ElementMatch!15721) (reg!16050 r!7292))) b!5724452))

(assert (= (and b!5723599 ((_ is Concat!24566) (reg!16050 r!7292))) b!5724453))

(assert (= (and b!5723599 ((_ is Star!15721) (reg!16050 r!7292))) b!5724454))

(assert (= (and b!5723599 ((_ is Union!15721) (reg!16050 r!7292))) b!5724455))

(declare-fun b!5724457 () Bool)

(declare-fun e!3519937 () Bool)

(declare-fun tp!1585104 () Bool)

(declare-fun tp!1585100 () Bool)

(assert (=> b!5724457 (= e!3519937 (and tp!1585104 tp!1585100))))

(assert (=> b!5723616 (= tp!1584992 e!3519937)))

(declare-fun b!5724459 () Bool)

(declare-fun tp!1585103 () Bool)

(declare-fun tp!1585101 () Bool)

(assert (=> b!5724459 (= e!3519937 (and tp!1585103 tp!1585101))))

(declare-fun b!5724456 () Bool)

(assert (=> b!5724456 (= e!3519937 tp_is_empty!40695)))

(declare-fun b!5724458 () Bool)

(declare-fun tp!1585102 () Bool)

(assert (=> b!5724458 (= e!3519937 tp!1585102)))

(assert (= (and b!5723616 ((_ is ElementMatch!15721) (regOne!31955 r!7292))) b!5724456))

(assert (= (and b!5723616 ((_ is Concat!24566) (regOne!31955 r!7292))) b!5724457))

(assert (= (and b!5723616 ((_ is Star!15721) (regOne!31955 r!7292))) b!5724458))

(assert (= (and b!5723616 ((_ is Union!15721) (regOne!31955 r!7292))) b!5724459))

(declare-fun b!5724461 () Bool)

(declare-fun e!3519938 () Bool)

(declare-fun tp!1585109 () Bool)

(declare-fun tp!1585105 () Bool)

(assert (=> b!5724461 (= e!3519938 (and tp!1585109 tp!1585105))))

(assert (=> b!5723616 (= tp!1584998 e!3519938)))

(declare-fun b!5724463 () Bool)

(declare-fun tp!1585108 () Bool)

(declare-fun tp!1585106 () Bool)

(assert (=> b!5724463 (= e!3519938 (and tp!1585108 tp!1585106))))

(declare-fun b!5724460 () Bool)

(assert (=> b!5724460 (= e!3519938 tp_is_empty!40695)))

(declare-fun b!5724462 () Bool)

(declare-fun tp!1585107 () Bool)

(assert (=> b!5724462 (= e!3519938 tp!1585107)))

(assert (= (and b!5723616 ((_ is ElementMatch!15721) (regTwo!31955 r!7292))) b!5724460))

(assert (= (and b!5723616 ((_ is Concat!24566) (regTwo!31955 r!7292))) b!5724461))

(assert (= (and b!5723616 ((_ is Star!15721) (regTwo!31955 r!7292))) b!5724462))

(assert (= (and b!5723616 ((_ is Union!15721) (regTwo!31955 r!7292))) b!5724463))

(declare-fun b!5724468 () Bool)

(declare-fun e!3519941 () Bool)

(declare-fun tp!1585112 () Bool)

(assert (=> b!5724468 (= e!3519941 (and tp_is_empty!40695 tp!1585112))))

(assert (=> b!5723605 (= tp!1584995 e!3519941)))

(assert (= (and b!5723605 ((_ is Cons!63340) (t!376790 s!2326))) b!5724468))

(declare-fun b!5724469 () Bool)

(declare-fun e!3519942 () Bool)

(declare-fun tp!1585113 () Bool)

(declare-fun tp!1585114 () Bool)

(assert (=> b!5724469 (= e!3519942 (and tp!1585113 tp!1585114))))

(assert (=> b!5723610 (= tp!1584991 e!3519942)))

(assert (= (and b!5723610 ((_ is Cons!63338) (exprs!5605 (h!69787 zl!343)))) b!5724469))

(declare-fun b_lambda!216301 () Bool)

(assert (= b_lambda!216291 (or b!5723588 b_lambda!216301)))

(declare-fun bs!1338422 () Bool)

(declare-fun d!1805746 () Bool)

(assert (= bs!1338422 (and d!1805746 b!5723588)))

(declare-fun lt!2278818 () Unit!156416)

(assert (=> bs!1338422 (= lt!2278818 (lemmaConcatPreservesForall!290 (exprs!5605 lt!2278665) lt!2278663 lambda!309371))))

(assert (=> bs!1338422 (= (dynLambda!24785 lambda!309370 lt!2278665) (Context!10211 (++!13915 (exprs!5605 lt!2278665) lt!2278663)))))

(declare-fun m!6677178 () Bool)

(assert (=> bs!1338422 m!6677178))

(declare-fun m!6677180 () Bool)

(assert (=> bs!1338422 m!6677180))

(assert (=> d!1805650 d!1805746))

(declare-fun b_lambda!216303 () Bool)

(assert (= b_lambda!216295 (or b!5723625 b_lambda!216303)))

(declare-fun bs!1338423 () Bool)

(declare-fun d!1805748 () Bool)

(assert (= bs!1338423 (and d!1805748 b!5723625)))

(assert (=> bs!1338423 (= (dynLambda!24786 lambda!309369 (h!69787 zl!343)) (derivationStepZipperUp!989 (h!69787 zl!343) (h!69788 s!2326)))))

(assert (=> bs!1338423 m!6676442))

(assert (=> d!1805678 d!1805748))

(declare-fun b_lambda!216305 () Bool)

(assert (= b_lambda!216299 (or b!5723625 b_lambda!216305)))

(declare-fun bs!1338424 () Bool)

(declare-fun d!1805750 () Bool)

(assert (= bs!1338424 (and d!1805750 b!5723625)))

(assert (=> bs!1338424 (= (dynLambda!24786 lambda!309369 lt!2278694) (derivationStepZipperUp!989 lt!2278694 (h!69788 s!2326)))))

(assert (=> bs!1338424 m!6676526))

(assert (=> d!1805694 d!1805750))

(declare-fun b_lambda!216307 () Bool)

(assert (= b_lambda!216293 (or b!5723625 b_lambda!216307)))

(declare-fun bs!1338425 () Bool)

(declare-fun d!1805752 () Bool)

(assert (= bs!1338425 (and d!1805752 b!5723625)))

(assert (=> bs!1338425 (= (dynLambda!24786 lambda!309369 lt!2278666) (derivationStepZipperUp!989 lt!2278666 (h!69788 s!2326)))))

(assert (=> bs!1338425 m!6676474))

(assert (=> d!1805658 d!1805752))

(declare-fun b_lambda!216309 () Bool)

(assert (= b_lambda!216297 (or b!5723625 b_lambda!216309)))

(declare-fun bs!1338426 () Bool)

(declare-fun d!1805754 () Bool)

(assert (= bs!1338426 (and d!1805754 b!5723625)))

(assert (=> bs!1338426 (= (dynLambda!24786 lambda!309369 lt!2278665) (derivationStepZipperUp!989 lt!2278665 (h!69788 s!2326)))))

(assert (=> bs!1338426 m!6676516))

(assert (=> d!1805692 d!1805754))

(check-sat (not bs!1338424) (not b!5723984) (not bm!437525) (not b!5724191) (not b!5724104) (not b!5724372) (not b!5724453) (not b!5724454) (not d!1805734) (not d!1805632) (not b!5724436) (not b!5724187) (not d!1805728) (not bm!437477) (not b!5724196) (not d!1805580) (not b!5724398) (not b!5724309) (not b_lambda!216305) (not d!1805686) (not d!1805648) (not d!1805690) (not bs!1338423) (not d!1805712) (not b!5724224) (not b!5723985) (not d!1805740) (not b!5723978) (not b!5724027) (not d!1805650) (not b!5724462) (not b!5724329) (not d!1805666) (not d!1805646) (not bs!1338426) (not b!5724118) (not b!5724432) (not d!1805692) (not d!1805742) (not b!5724371) (not b!5724260) (not b!5724455) (not d!1805714) (not d!1805716) (not d!1805658) (not b!5724437) (not b!5724334) (not b!5724197) (not b!5724386) (not b!5724377) (not b!5724410) (not bm!437514) (not b!5724461) (not d!1805694) (not b!5724413) (not b!5724310) (not b!5724445) (not b!5724446) (not b!5724469) (not b!5724468) (not bm!437526) (not bm!437527) (not bm!437501) (not b!5723981) (not d!1805744) (not d!1805680) (not d!1805652) (not d!1805702) (not b!5724171) (not bm!437493) (not bm!437497) (not b!5724103) (not bs!1338422) (not b!5724117) (not d!1805684) (not d!1805674) (not b!5724008) (not b_lambda!216307) (not b!5724198) (not b!5724402) (not b!5724192) (not bs!1338425) (not bm!437521) (not b!5724451) (not bm!437505) (not b!5724420) (not d!1805710) (not d!1805634) (not d!1805682) (not d!1805718) (not bm!437491) (not d!1805724) (not b_lambda!216301) (not b!5724457) (not b!5724147) (not bm!437496) (not bm!437499) (not b!5724024) (not d!1805612) (not d!1805698) (not b!5724268) (not b!5724009) (not d!1805678) (not b!5724166) (not b!5724337) (not b!5724308) (not d!1805700) (not d!1805622) (not b!5724415) (not b!5724181) (not b!5724384) (not b!5723982) (not b!5724161) (not b!5724397) (not d!1805720) (not bm!437520) (not bm!437524) (not b!5723980) (not b!5724433) (not d!1805722) (not bm!437513) (not b!5724025) (not b!5724182) (not d!1805630) (not b!5724375) (not b!5724195) (not d!1805730) (not b!5724158) (not b!5724396) (not d!1805662) (not b!5724379) (not b!5724297) (not b!5723986) (not bm!437506) (not b_lambda!216303) (not b!5724331) (not b!5724307) (not b!5724378) (not bm!437498) (not b!5724165) (not b!5724370) (not b!5724459) (not d!1805660) (not b!5724335) (not b!5724438) (not b!5724160) (not b_lambda!216309) (not b!5724306) (not b!5724434) (not b!5724395) (not b!5724336) (not b!5724026) (not b!5724414) (not d!1805738) tp_is_empty!40695 (not setNonEmpty!38369) (not bm!437504) (not b!5724458) (not b!5724399) (not d!1805704) (not d!1805654) (not b!5724186) (not bm!437490) (not b!5724463))
(check-sat)
(get-model)

(declare-fun b!5724713 () Bool)

(declare-fun e!3520098 () (InoxSet Context!10210))

(declare-fun call!437590 () (InoxSet Context!10210))

(assert (=> b!5724713 (= e!3520098 call!437590)))

(declare-fun b!5724714 () Bool)

(declare-fun e!3520099 () Bool)

(assert (=> b!5724714 (= e!3520099 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))))))

(declare-fun b!5724715 () Bool)

(declare-fun e!3520100 () (InoxSet Context!10210))

(assert (=> b!5724715 (= e!3520100 ((_ map or) call!437590 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))) (h!69788 s!2326))))))

(declare-fun b!5724716 () Bool)

(assert (=> b!5724716 (= e!3520098 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805900 () Bool)

(declare-fun c!1009866 () Bool)

(assert (=> d!1805900 (= c!1009866 e!3520099)))

(declare-fun res!2416787 () Bool)

(assert (=> d!1805900 (=> (not res!2416787) (not e!3520099))))

(assert (=> d!1805900 (= res!2416787 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))))

(assert (=> d!1805900 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326)) e!3520100)))

(declare-fun b!5724717 () Bool)

(assert (=> b!5724717 (= e!3520100 e!3520098)))

(declare-fun c!1009867 () Bool)

(assert (=> b!5724717 (= c!1009867 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))))

(declare-fun bm!437585 () Bool)

(assert (=> bm!437585 (= call!437590 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))) (h!69788 s!2326)))))

(assert (= (and d!1805900 res!2416787) b!5724714))

(assert (= (and d!1805900 c!1009866) b!5724715))

(assert (= (and d!1805900 (not c!1009866)) b!5724717))

(assert (= (and b!5724717 c!1009867) b!5724713))

(assert (= (and b!5724717 (not c!1009867)) b!5724716))

(assert (= (or b!5724715 b!5724713) bm!437585))

(declare-fun m!6677490 () Bool)

(assert (=> b!5724714 m!6677490))

(declare-fun m!6677492 () Bool)

(assert (=> b!5724715 m!6677492))

(declare-fun m!6677494 () Bool)

(assert (=> bm!437585 m!6677494))

(assert (=> b!5724166 d!1805900))

(declare-fun b!5724723 () Bool)

(declare-fun e!3520106 () (InoxSet Context!10210))

(declare-fun call!437591 () (InoxSet Context!10210))

(assert (=> b!5724723 (= e!3520106 call!437591)))

(declare-fun b!5724724 () Bool)

(declare-fun e!3520107 () Bool)

(assert (=> b!5724724 (= e!3520107 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672)))))))))

(declare-fun b!5724725 () Bool)

(declare-fun e!3520108 () (InoxSet Context!10210))

(assert (=> b!5724725 (= e!3520108 ((_ map or) call!437591 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672)))))) (h!69788 s!2326))))))

(declare-fun b!5724726 () Bool)

(assert (=> b!5724726 (= e!3520106 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1805902 () Bool)

(declare-fun c!1009868 () Bool)

(assert (=> d!1805902 (= c!1009868 e!3520107)))

(declare-fun res!2416792 () Bool)

(assert (=> d!1805902 (=> (not res!2416792) (not e!3520107))))

(assert (=> d!1805902 (= res!2416792 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672))))))))

(assert (=> d!1805902 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (h!69788 s!2326)) e!3520108)))

(declare-fun b!5724727 () Bool)

(assert (=> b!5724727 (= e!3520108 e!3520106)))

(declare-fun c!1009869 () Bool)

(assert (=> b!5724727 (= c!1009869 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672))))))))

(declare-fun bm!437586 () Bool)

(assert (=> bm!437586 (= call!437591 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672)))))) (h!69788 s!2326)))))

(assert (= (and d!1805902 res!2416792) b!5724724))

(assert (= (and d!1805902 c!1009868) b!5724725))

(assert (= (and d!1805902 (not c!1009868)) b!5724727))

(assert (= (and b!5724727 c!1009869) b!5724723))

(assert (= (and b!5724727 (not c!1009869)) b!5724726))

(assert (= (or b!5724725 b!5724723) bm!437586))

(declare-fun m!6677502 () Bool)

(assert (=> b!5724724 m!6677502))

(declare-fun m!6677504 () Bool)

(assert (=> b!5724725 m!6677504))

(declare-fun m!6677506 () Bool)

(assert (=> bm!437586 m!6677506))

(assert (=> b!5724161 d!1805902))

(declare-fun d!1805906 () Bool)

(assert (=> d!1805906 true))

(declare-fun setRes!38376 () Bool)

(assert (=> d!1805906 setRes!38376))

(declare-fun condSetEmpty!38376 () Bool)

(declare-fun res!2416797 () (InoxSet Context!10210))

(assert (=> d!1805906 (= condSetEmpty!38376 (= res!2416797 ((as const (Array Context!10210 Bool)) false)))))

(assert (=> d!1805906 (= (choose!43281 lt!2278669 lambda!309369) res!2416797)))

(declare-fun setIsEmpty!38376 () Bool)

(assert (=> setIsEmpty!38376 setRes!38376))

(declare-fun tp!1585134 () Bool)

(declare-fun setNonEmpty!38376 () Bool)

(declare-fun setElem!38376 () Context!10210)

(declare-fun e!3520113 () Bool)

(assert (=> setNonEmpty!38376 (= setRes!38376 (and tp!1585134 (inv!82549 setElem!38376) e!3520113))))

(declare-fun setRest!38376 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38376 (= res!2416797 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38376 true) setRest!38376))))

(declare-fun b!5724732 () Bool)

(declare-fun tp!1585133 () Bool)

(assert (=> b!5724732 (= e!3520113 tp!1585133)))

(assert (= (and d!1805906 condSetEmpty!38376) setIsEmpty!38376))

(assert (= (and d!1805906 (not condSetEmpty!38376)) setNonEmpty!38376))

(assert (= setNonEmpty!38376 b!5724732))

(declare-fun m!6677512 () Bool)

(assert (=> setNonEmpty!38376 m!6677512))

(assert (=> d!1805698 d!1805906))

(declare-fun d!1805912 () Bool)

(assert (=> d!1805912 (= (isEmpty!35214 (exprs!5605 (h!69787 zl!343))) ((_ is Nil!63338) (exprs!5605 (h!69787 zl!343))))))

(assert (=> b!5723981 d!1805912))

(declare-fun d!1805914 () Bool)

(assert (=> d!1805914 (= (isEmptyLang!1238 lt!2278808) ((_ is EmptyLang!15721) lt!2278808))))

(assert (=> b!5724377 d!1805914))

(declare-fun d!1805916 () Bool)

(assert (=> d!1805916 (= (Exists!2821 (ite c!1009782 lambda!309446 lambda!309447)) (choose!43286 (ite c!1009782 lambda!309446 lambda!309447)))))

(declare-fun bs!1338561 () Bool)

(assert (= bs!1338561 d!1805916))

(declare-fun m!6677514 () Bool)

(assert (=> bs!1338561 m!6677514))

(assert (=> bm!437526 d!1805916))

(assert (=> d!1805742 d!1805744))

(assert (=> d!1805742 d!1805704))

(declare-fun e!3520129 () Bool)

(declare-fun d!1805918 () Bool)

(assert (=> d!1805918 (= (matchZipper!1859 ((_ map or) lt!2278659 lt!2278681) (t!376790 s!2326)) e!3520129)))

(declare-fun res!2416814 () Bool)

(assert (=> d!1805918 (=> res!2416814 e!3520129)))

(assert (=> d!1805918 (= res!2416814 (matchZipper!1859 lt!2278659 (t!376790 s!2326)))))

(assert (=> d!1805918 true))

(declare-fun _$48!1365 () Unit!156416)

(assert (=> d!1805918 (= (choose!43289 lt!2278659 lt!2278681 (t!376790 s!2326)) _$48!1365)))

(declare-fun b!5724761 () Bool)

(assert (=> b!5724761 (= e!3520129 (matchZipper!1859 lt!2278681 (t!376790 s!2326)))))

(assert (= (and d!1805918 (not res!2416814)) b!5724761))

(assert (=> d!1805918 m!6676436))

(assert (=> d!1805918 m!6676434))

(assert (=> b!5724761 m!6676454))

(assert (=> d!1805742 d!1805918))

(declare-fun bm!437588 () Bool)

(declare-fun call!437593 () Bool)

(assert (=> bm!437588 (= call!437593 (isEmpty!35217 (_1!36121 (get!21839 lt!2278798))))))

(declare-fun b!5724763 () Bool)

(declare-fun e!3520136 () Bool)

(declare-fun lt!2278837 () Bool)

(assert (=> b!5724763 (= e!3520136 (not lt!2278837))))

(declare-fun b!5724764 () Bool)

(declare-fun res!2416822 () Bool)

(declare-fun e!3520134 () Bool)

(assert (=> b!5724764 (=> (not res!2416822) (not e!3520134))))

(assert (=> b!5724764 (= res!2416822 (not call!437593))))

(declare-fun b!5724765 () Bool)

(declare-fun e!3520135 () Bool)

(assert (=> b!5724765 (= e!3520135 (= lt!2278837 call!437593))))

(declare-fun b!5724766 () Bool)

(declare-fun res!2416815 () Bool)

(declare-fun e!3520130 () Bool)

(assert (=> b!5724766 (=> res!2416815 e!3520130)))

(assert (=> b!5724766 (= res!2416815 (not ((_ is ElementMatch!15721) (regOne!31954 r!7292))))))

(assert (=> b!5724766 (= e!3520136 e!3520130)))

(declare-fun b!5724767 () Bool)

(declare-fun e!3520131 () Bool)

(declare-fun e!3520133 () Bool)

(assert (=> b!5724767 (= e!3520131 e!3520133)))

(declare-fun res!2416821 () Bool)

(assert (=> b!5724767 (=> res!2416821 e!3520133)))

(assert (=> b!5724767 (= res!2416821 call!437593)))

(declare-fun b!5724768 () Bool)

(assert (=> b!5724768 (= e!3520130 e!3520131)))

(declare-fun res!2416817 () Bool)

(assert (=> b!5724768 (=> (not res!2416817) (not e!3520131))))

(assert (=> b!5724768 (= res!2416817 (not lt!2278837))))

(declare-fun b!5724769 () Bool)

(declare-fun res!2416818 () Bool)

(assert (=> b!5724769 (=> res!2416818 e!3520130)))

(assert (=> b!5724769 (= res!2416818 e!3520134)))

(declare-fun res!2416816 () Bool)

(assert (=> b!5724769 (=> (not res!2416816) (not e!3520134))))

(assert (=> b!5724769 (= res!2416816 lt!2278837)))

(declare-fun d!1805926 () Bool)

(assert (=> d!1805926 e!3520135))

(declare-fun c!1009878 () Bool)

(assert (=> d!1805926 (= c!1009878 ((_ is EmptyExpr!15721) (regOne!31954 r!7292)))))

(declare-fun e!3520132 () Bool)

(assert (=> d!1805926 (= lt!2278837 e!3520132)))

(declare-fun c!1009876 () Bool)

(assert (=> d!1805926 (= c!1009876 (isEmpty!35217 (_1!36121 (get!21839 lt!2278798))))))

(assert (=> d!1805926 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1805926 (= (matchR!7906 (regOne!31954 r!7292) (_1!36121 (get!21839 lt!2278798))) lt!2278837)))

(declare-fun b!5724762 () Bool)

(assert (=> b!5724762 (= e!3520132 (nullable!5753 (regOne!31954 r!7292)))))

(declare-fun b!5724770 () Bool)

(assert (=> b!5724770 (= e!3520135 e!3520136)))

(declare-fun c!1009877 () Bool)

(assert (=> b!5724770 (= c!1009877 ((_ is EmptyLang!15721) (regOne!31954 r!7292)))))

(declare-fun b!5724771 () Bool)

(assert (=> b!5724771 (= e!3520132 (matchR!7906 (derivativeStep!4522 (regOne!31954 r!7292) (head!12119 (_1!36121 (get!21839 lt!2278798)))) (tail!11214 (_1!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5724772 () Bool)

(declare-fun res!2416820 () Bool)

(assert (=> b!5724772 (=> (not res!2416820) (not e!3520134))))

(assert (=> b!5724772 (= res!2416820 (isEmpty!35217 (tail!11214 (_1!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5724773 () Bool)

(assert (=> b!5724773 (= e!3520134 (= (head!12119 (_1!36121 (get!21839 lt!2278798))) (c!1009551 (regOne!31954 r!7292))))))

(declare-fun b!5724774 () Bool)

(declare-fun res!2416819 () Bool)

(assert (=> b!5724774 (=> res!2416819 e!3520133)))

(assert (=> b!5724774 (= res!2416819 (not (isEmpty!35217 (tail!11214 (_1!36121 (get!21839 lt!2278798))))))))

(declare-fun b!5724775 () Bool)

(assert (=> b!5724775 (= e!3520133 (not (= (head!12119 (_1!36121 (get!21839 lt!2278798))) (c!1009551 (regOne!31954 r!7292)))))))

(assert (= (and d!1805926 c!1009876) b!5724762))

(assert (= (and d!1805926 (not c!1009876)) b!5724771))

(assert (= (and d!1805926 c!1009878) b!5724765))

(assert (= (and d!1805926 (not c!1009878)) b!5724770))

(assert (= (and b!5724770 c!1009877) b!5724763))

(assert (= (and b!5724770 (not c!1009877)) b!5724766))

(assert (= (and b!5724766 (not res!2416815)) b!5724769))

(assert (= (and b!5724769 res!2416816) b!5724764))

(assert (= (and b!5724764 res!2416822) b!5724772))

(assert (= (and b!5724772 res!2416820) b!5724773))

(assert (= (and b!5724769 (not res!2416818)) b!5724768))

(assert (= (and b!5724768 res!2416817) b!5724767))

(assert (= (and b!5724767 (not res!2416821)) b!5724774))

(assert (= (and b!5724774 (not res!2416819)) b!5724775))

(assert (= (or b!5724765 b!5724764 b!5724767) bm!437588))

(declare-fun m!6677540 () Bool)

(assert (=> bm!437588 m!6677540))

(declare-fun m!6677542 () Bool)

(assert (=> b!5724762 m!6677542))

(declare-fun m!6677544 () Bool)

(assert (=> b!5724771 m!6677544))

(assert (=> b!5724771 m!6677544))

(declare-fun m!6677546 () Bool)

(assert (=> b!5724771 m!6677546))

(declare-fun m!6677548 () Bool)

(assert (=> b!5724771 m!6677548))

(assert (=> b!5724771 m!6677546))

(assert (=> b!5724771 m!6677548))

(declare-fun m!6677550 () Bool)

(assert (=> b!5724771 m!6677550))

(assert (=> b!5724773 m!6677544))

(assert (=> b!5724772 m!6677548))

(assert (=> b!5724772 m!6677548))

(declare-fun m!6677552 () Bool)

(assert (=> b!5724772 m!6677552))

(assert (=> d!1805926 m!6677540))

(assert (=> d!1805926 m!6677090))

(assert (=> b!5724774 m!6677548))

(assert (=> b!5724774 m!6677548))

(assert (=> b!5724774 m!6677552))

(assert (=> b!5724775 m!6677544))

(assert (=> b!5724331 d!1805926))

(declare-fun d!1805928 () Bool)

(assert (=> d!1805928 (= (get!21839 lt!2278798) (v!51784 lt!2278798))))

(assert (=> b!5724331 d!1805928))

(declare-fun d!1805930 () Bool)

(assert (=> d!1805930 (= (isEmpty!35217 s!2326) ((_ is Nil!63340) s!2326))))

(assert (=> d!1805734 d!1805930))

(declare-fun b!5724776 () Bool)

(declare-fun res!2416825 () Bool)

(declare-fun e!3520138 () Bool)

(assert (=> b!5724776 (=> (not res!2416825) (not e!3520138))))

(declare-fun call!437594 () Bool)

(assert (=> b!5724776 (= res!2416825 call!437594)))

(declare-fun e!3520139 () Bool)

(assert (=> b!5724776 (= e!3520139 e!3520138)))

(declare-fun b!5724777 () Bool)

(declare-fun e!3520143 () Bool)

(declare-fun e!3520137 () Bool)

(assert (=> b!5724777 (= e!3520143 e!3520137)))

(declare-fun c!1009879 () Bool)

(assert (=> b!5724777 (= c!1009879 ((_ is Star!15721) lt!2278693))))

(declare-fun b!5724778 () Bool)

(declare-fun e!3520141 () Bool)

(declare-fun call!437596 () Bool)

(assert (=> b!5724778 (= e!3520141 call!437596)))

(declare-fun b!5724779 () Bool)

(declare-fun e!3520140 () Bool)

(declare-fun e!3520142 () Bool)

(assert (=> b!5724779 (= e!3520140 e!3520142)))

(declare-fun res!2416826 () Bool)

(assert (=> b!5724779 (=> (not res!2416826) (not e!3520142))))

(assert (=> b!5724779 (= res!2416826 call!437594)))

(declare-fun b!5724780 () Bool)

(declare-fun call!437595 () Bool)

(assert (=> b!5724780 (= e!3520142 call!437595)))

(declare-fun c!1009880 () Bool)

(declare-fun bm!437590 () Bool)

(assert (=> bm!437590 (= call!437596 (validRegex!7457 (ite c!1009879 (reg!16050 lt!2278693) (ite c!1009880 (regTwo!31955 lt!2278693) (regTwo!31954 lt!2278693)))))))

(declare-fun b!5724781 () Bool)

(assert (=> b!5724781 (= e!3520137 e!3520139)))

(assert (=> b!5724781 (= c!1009880 ((_ is Union!15721) lt!2278693))))

(declare-fun bm!437589 () Bool)

(assert (=> bm!437589 (= call!437594 (validRegex!7457 (ite c!1009880 (regOne!31955 lt!2278693) (regOne!31954 lt!2278693))))))

(declare-fun d!1805932 () Bool)

(declare-fun res!2416827 () Bool)

(assert (=> d!1805932 (=> res!2416827 e!3520143)))

(assert (=> d!1805932 (= res!2416827 ((_ is ElementMatch!15721) lt!2278693))))

(assert (=> d!1805932 (= (validRegex!7457 lt!2278693) e!3520143)))

(declare-fun b!5724782 () Bool)

(assert (=> b!5724782 (= e!3520138 call!437595)))

(declare-fun b!5724783 () Bool)

(assert (=> b!5724783 (= e!3520137 e!3520141)))

(declare-fun res!2416823 () Bool)

(assert (=> b!5724783 (= res!2416823 (not (nullable!5753 (reg!16050 lt!2278693))))))

(assert (=> b!5724783 (=> (not res!2416823) (not e!3520141))))

(declare-fun b!5724784 () Bool)

(declare-fun res!2416824 () Bool)

(assert (=> b!5724784 (=> res!2416824 e!3520140)))

(assert (=> b!5724784 (= res!2416824 (not ((_ is Concat!24566) lt!2278693)))))

(assert (=> b!5724784 (= e!3520139 e!3520140)))

(declare-fun bm!437591 () Bool)

(assert (=> bm!437591 (= call!437595 call!437596)))

(assert (= (and d!1805932 (not res!2416827)) b!5724777))

(assert (= (and b!5724777 c!1009879) b!5724783))

(assert (= (and b!5724777 (not c!1009879)) b!5724781))

(assert (= (and b!5724783 res!2416823) b!5724778))

(assert (= (and b!5724781 c!1009880) b!5724776))

(assert (= (and b!5724781 (not c!1009880)) b!5724784))

(assert (= (and b!5724776 res!2416825) b!5724782))

(assert (= (and b!5724784 (not res!2416824)) b!5724779))

(assert (= (and b!5724779 res!2416826) b!5724780))

(assert (= (or b!5724782 b!5724780) bm!437591))

(assert (= (or b!5724776 b!5724779) bm!437589))

(assert (= (or b!5724778 bm!437591) bm!437590))

(declare-fun m!6677554 () Bool)

(assert (=> bm!437590 m!6677554))

(declare-fun m!6677556 () Bool)

(assert (=> bm!437589 m!6677556))

(declare-fun m!6677558 () Bool)

(assert (=> b!5724783 m!6677558))

(assert (=> d!1805734 d!1805932))

(declare-fun d!1805934 () Bool)

(assert (=> d!1805934 (= (nullable!5753 lt!2278693) (nullableFct!1815 lt!2278693))))

(declare-fun bs!1338563 () Bool)

(assert (= bs!1338563 d!1805934))

(declare-fun m!6677560 () Bool)

(assert (=> bs!1338563 m!6677560))

(assert (=> b!5724386 d!1805934))

(declare-fun d!1805936 () Bool)

(assert (=> d!1805936 true))

(declare-fun setRes!38377 () Bool)

(assert (=> d!1805936 setRes!38377))

(declare-fun condSetEmpty!38377 () Bool)

(declare-fun res!2416828 () (InoxSet Context!10210))

(assert (=> d!1805936 (= condSetEmpty!38377 (= res!2416828 ((as const (Array Context!10210 Bool)) false)))))

(assert (=> d!1805936 (= (choose!43281 lt!2278685 lambda!309369) res!2416828)))

(declare-fun setIsEmpty!38377 () Bool)

(assert (=> setIsEmpty!38377 setRes!38377))

(declare-fun tp!1585136 () Bool)

(declare-fun setNonEmpty!38377 () Bool)

(declare-fun setElem!38377 () Context!10210)

(declare-fun e!3520144 () Bool)

(assert (=> setNonEmpty!38377 (= setRes!38377 (and tp!1585136 (inv!82549 setElem!38377) e!3520144))))

(declare-fun setRest!38377 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38377 (= res!2416828 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38377 true) setRest!38377))))

(declare-fun b!5724785 () Bool)

(declare-fun tp!1585135 () Bool)

(assert (=> b!5724785 (= e!3520144 tp!1585135)))

(assert (= (and d!1805936 condSetEmpty!38377) setIsEmpty!38377))

(assert (= (and d!1805936 (not condSetEmpty!38377)) setNonEmpty!38377))

(assert (= setNonEmpty!38377 b!5724785))

(declare-fun m!6677562 () Bool)

(assert (=> setNonEmpty!38377 m!6677562))

(assert (=> d!1805690 d!1805936))

(assert (=> d!1805712 d!1805710))

(assert (=> d!1805712 d!1805708))

(declare-fun d!1805938 () Bool)

(assert (=> d!1805938 (= (matchR!7906 r!7292 s!2326) (matchRSpec!2824 r!7292 s!2326))))

(assert (=> d!1805938 true))

(declare-fun _$88!4033 () Unit!156416)

(assert (=> d!1805938 (= (choose!43285 r!7292 s!2326) _$88!4033)))

(declare-fun bs!1338564 () Bool)

(assert (= bs!1338564 d!1805938))

(assert (=> bs!1338564 m!6676480))

(assert (=> bs!1338564 m!6676478))

(assert (=> d!1805712 d!1805938))

(assert (=> d!1805712 d!1805706))

(declare-fun d!1805940 () Bool)

(declare-fun lambda!309474 () Int)

(declare-fun exists!2229 ((InoxSet Context!10210) Int) Bool)

(assert (=> d!1805940 (= (nullableZipper!1669 lt!2278659) (exists!2229 lt!2278659 lambda!309474))))

(declare-fun bs!1338565 () Bool)

(assert (= bs!1338565 d!1805940))

(declare-fun m!6677564 () Bool)

(assert (=> bs!1338565 m!6677564))

(assert (=> b!5724197 d!1805940))

(declare-fun d!1805942 () Bool)

(declare-fun res!2416833 () Bool)

(declare-fun e!3520164 () Bool)

(assert (=> d!1805942 (=> res!2416833 e!3520164)))

(assert (=> d!1805942 (= res!2416833 ((_ is Nil!63339) lt!2278779))))

(assert (=> d!1805942 (= (noDuplicate!1649 lt!2278779) e!3520164)))

(declare-fun b!5724820 () Bool)

(declare-fun e!3520165 () Bool)

(assert (=> b!5724820 (= e!3520164 e!3520165)))

(declare-fun res!2416834 () Bool)

(assert (=> b!5724820 (=> (not res!2416834) (not e!3520165))))

(declare-fun contains!19858 (List!63463 Context!10210) Bool)

(assert (=> b!5724820 (= res!2416834 (not (contains!19858 (t!376789 lt!2278779) (h!69787 lt!2278779))))))

(declare-fun b!5724821 () Bool)

(assert (=> b!5724821 (= e!3520165 (noDuplicate!1649 (t!376789 lt!2278779)))))

(assert (= (and d!1805942 (not res!2416833)) b!5724820))

(assert (= (and b!5724820 res!2416834) b!5724821))

(declare-fun m!6677575 () Bool)

(assert (=> b!5724820 m!6677575))

(declare-fun m!6677578 () Bool)

(assert (=> b!5724821 m!6677578))

(assert (=> d!1805666 d!1805942))

(declare-fun d!1805948 () Bool)

(declare-fun e!3520175 () Bool)

(assert (=> d!1805948 e!3520175))

(declare-fun res!2416839 () Bool)

(assert (=> d!1805948 (=> (not res!2416839) (not e!3520175))))

(declare-fun res!2416840 () List!63463)

(assert (=> d!1805948 (= res!2416839 (noDuplicate!1649 res!2416840))))

(declare-fun e!3520177 () Bool)

(assert (=> d!1805948 e!3520177))

(assert (=> d!1805948 (= (choose!43284 z!1189) res!2416840)))

(declare-fun b!5724835 () Bool)

(declare-fun e!3520176 () Bool)

(declare-fun tp!1585141 () Bool)

(assert (=> b!5724835 (= e!3520176 tp!1585141)))

(declare-fun tp!1585142 () Bool)

(declare-fun b!5724834 () Bool)

(assert (=> b!5724834 (= e!3520177 (and (inv!82549 (h!69787 res!2416840)) e!3520176 tp!1585142))))

(declare-fun b!5724836 () Bool)

(assert (=> b!5724836 (= e!3520175 (= (content!11514 res!2416840) z!1189))))

(assert (= b!5724834 b!5724835))

(assert (= (and d!1805948 ((_ is Cons!63339) res!2416840)) b!5724834))

(assert (= (and d!1805948 res!2416839) b!5724836))

(declare-fun m!6677586 () Bool)

(assert (=> d!1805948 m!6677586))

(declare-fun m!6677588 () Bool)

(assert (=> b!5724834 m!6677588))

(declare-fun m!6677590 () Bool)

(assert (=> b!5724836 m!6677590))

(assert (=> d!1805666 d!1805948))

(declare-fun d!1805954 () Bool)

(assert (=> d!1805954 (= (nullable!5753 (regOne!31954 (reg!16050 (regOne!31954 r!7292)))) (nullableFct!1815 (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))))

(declare-fun bs!1338567 () Bool)

(assert (= bs!1338567 d!1805954))

(declare-fun m!6677596 () Bool)

(assert (=> bs!1338567 m!6677596))

(assert (=> b!5724147 d!1805954))

(declare-fun d!1805958 () Bool)

(assert (=> d!1805958 (= (nullable!5753 (h!69786 (exprs!5605 lt!2278665))) (nullableFct!1815 (h!69786 (exprs!5605 lt!2278665))))))

(declare-fun bs!1338568 () Bool)

(assert (= bs!1338568 d!1805958))

(declare-fun m!6677598 () Bool)

(assert (=> bs!1338568 m!6677598))

(assert (=> b!5724191 d!1805958))

(declare-fun b!5724852 () Bool)

(declare-fun e!3520186 () (InoxSet Context!10210))

(declare-fun e!3520189 () (InoxSet Context!10210))

(assert (=> b!5724852 (= e!3520186 e!3520189)))

(declare-fun c!1009911 () Bool)

(assert (=> b!5724852 (= c!1009911 ((_ is Union!15721) (h!69786 (exprs!5605 lt!2278694))))))

(declare-fun call!437620 () List!63462)

(declare-fun call!437619 () (InoxSet Context!10210))

(declare-fun c!1009909 () Bool)

(declare-fun bm!437610 () Bool)

(declare-fun c!1009910 () Bool)

(assert (=> bm!437610 (= call!437619 (derivationStepZipperDown!1063 (ite c!1009911 (regTwo!31955 (h!69786 (exprs!5605 lt!2278694))) (ite c!1009909 (regTwo!31954 (h!69786 (exprs!5605 lt!2278694))) (ite c!1009910 (regOne!31954 (h!69786 (exprs!5605 lt!2278694))) (reg!16050 (h!69786 (exprs!5605 lt!2278694)))))) (ite (or c!1009911 c!1009909) (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (Context!10211 call!437620)) (h!69788 s!2326)))))

(declare-fun call!437617 () List!63462)

(declare-fun bm!437611 () Bool)

(assert (=> bm!437611 (= call!437617 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694)))) (ite (or c!1009909 c!1009910) (regTwo!31954 (h!69786 (exprs!5605 lt!2278694))) (h!69786 (exprs!5605 lt!2278694)))))))

(declare-fun b!5724853 () Bool)

(declare-fun e!3520190 () (InoxSet Context!10210))

(declare-fun call!437618 () (InoxSet Context!10210))

(assert (=> b!5724853 (= e!3520190 call!437618)))

(declare-fun bm!437612 () Bool)

(declare-fun call!437616 () (InoxSet Context!10210))

(assert (=> bm!437612 (= call!437618 call!437616)))

(declare-fun b!5724854 () Bool)

(declare-fun e!3520191 () Bool)

(assert (=> b!5724854 (= e!3520191 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 lt!2278694)))))))

(declare-fun bm!437614 () Bool)

(assert (=> bm!437614 (= call!437620 call!437617)))

(declare-fun b!5724855 () Bool)

(declare-fun e!3520187 () (InoxSet Context!10210))

(assert (=> b!5724855 (= e!3520187 call!437618)))

(declare-fun b!5724856 () Bool)

(declare-fun c!1009912 () Bool)

(assert (=> b!5724856 (= c!1009912 ((_ is Star!15721) (h!69786 (exprs!5605 lt!2278694))))))

(assert (=> b!5724856 (= e!3520187 e!3520190)))

(declare-fun b!5724857 () Bool)

(declare-fun e!3520188 () (InoxSet Context!10210))

(assert (=> b!5724857 (= e!3520188 e!3520187)))

(assert (=> b!5724857 (= c!1009910 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278694))))))

(declare-fun b!5724858 () Bool)

(assert (=> b!5724858 (= c!1009909 e!3520191)))

(declare-fun res!2416842 () Bool)

(assert (=> b!5724858 (=> (not res!2416842) (not e!3520191))))

(assert (=> b!5724858 (= res!2416842 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278694))))))

(assert (=> b!5724858 (= e!3520189 e!3520188)))

(declare-fun b!5724859 () Bool)

(assert (=> b!5724859 (= e!3520190 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5724860 () Bool)

(declare-fun call!437615 () (InoxSet Context!10210))

(assert (=> b!5724860 (= e!3520188 ((_ map or) call!437615 call!437616))))

(declare-fun b!5724861 () Bool)

(assert (=> b!5724861 (= e!3520186 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 lt!2278694))) true))))

(declare-fun d!1805960 () Bool)

(declare-fun c!1009908 () Bool)

(assert (=> d!1805960 (= c!1009908 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 lt!2278694))) (= (c!1009551 (h!69786 (exprs!5605 lt!2278694))) (h!69788 s!2326))))))

(assert (=> d!1805960 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278694)) (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (h!69788 s!2326)) e!3520186)))

(declare-fun bm!437613 () Bool)

(assert (=> bm!437613 (= call!437615 (derivationStepZipperDown!1063 (ite c!1009911 (regOne!31955 (h!69786 (exprs!5605 lt!2278694))) (regOne!31954 (h!69786 (exprs!5605 lt!2278694)))) (ite c!1009911 (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (Context!10211 call!437617)) (h!69788 s!2326)))))

(declare-fun b!5724862 () Bool)

(assert (=> b!5724862 (= e!3520189 ((_ map or) call!437615 call!437619))))

(declare-fun bm!437615 () Bool)

(assert (=> bm!437615 (= call!437616 call!437619)))

(assert (= (and d!1805960 c!1009908) b!5724861))

(assert (= (and d!1805960 (not c!1009908)) b!5724852))

(assert (= (and b!5724852 c!1009911) b!5724862))

(assert (= (and b!5724852 (not c!1009911)) b!5724858))

(assert (= (and b!5724858 res!2416842) b!5724854))

(assert (= (and b!5724858 c!1009909) b!5724860))

(assert (= (and b!5724858 (not c!1009909)) b!5724857))

(assert (= (and b!5724857 c!1009910) b!5724855))

(assert (= (and b!5724857 (not c!1009910)) b!5724856))

(assert (= (and b!5724856 c!1009912) b!5724853))

(assert (= (and b!5724856 (not c!1009912)) b!5724859))

(assert (= (or b!5724855 b!5724853) bm!437614))

(assert (= (or b!5724855 b!5724853) bm!437612))

(assert (= (or b!5724860 bm!437614) bm!437611))

(assert (= (or b!5724860 bm!437612) bm!437615))

(assert (= (or b!5724862 bm!437615) bm!437610))

(assert (= (or b!5724862 b!5724860) bm!437613))

(declare-fun m!6677610 () Bool)

(assert (=> b!5724854 m!6677610))

(declare-fun m!6677612 () Bool)

(assert (=> bm!437613 m!6677612))

(declare-fun m!6677614 () Bool)

(assert (=> b!5724861 m!6677614))

(declare-fun m!6677616 () Bool)

(assert (=> bm!437610 m!6677616))

(declare-fun m!6677620 () Bool)

(assert (=> bm!437611 m!6677620))

(assert (=> bm!437505 d!1805960))

(declare-fun d!1805968 () Bool)

(declare-fun c!1009913 () Bool)

(assert (=> d!1805968 (= c!1009913 (isEmpty!35217 (tail!11214 (t!376790 s!2326))))))

(declare-fun e!3520192 () Bool)

(assert (=> d!1805968 (= (matchZipper!1859 (derivationStepZipper!1804 ((_ map or) lt!2278659 lt!2278681) (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))) e!3520192)))

(declare-fun b!5724863 () Bool)

(assert (=> b!5724863 (= e!3520192 (nullableZipper!1669 (derivationStepZipper!1804 ((_ map or) lt!2278659 lt!2278681) (head!12119 (t!376790 s!2326)))))))

(declare-fun b!5724864 () Bool)

(assert (=> b!5724864 (= e!3520192 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 ((_ map or) lt!2278659 lt!2278681) (head!12119 (t!376790 s!2326))) (head!12119 (tail!11214 (t!376790 s!2326)))) (tail!11214 (tail!11214 (t!376790 s!2326)))))))

(assert (= (and d!1805968 c!1009913) b!5724863))

(assert (= (and d!1805968 (not c!1009913)) b!5724864))

(assert (=> d!1805968 m!6676866))

(declare-fun m!6677622 () Bool)

(assert (=> d!1805968 m!6677622))

(assert (=> b!5724863 m!6677170))

(declare-fun m!6677624 () Bool)

(assert (=> b!5724863 m!6677624))

(assert (=> b!5724864 m!6676866))

(declare-fun m!6677626 () Bool)

(assert (=> b!5724864 m!6677626))

(assert (=> b!5724864 m!6677170))

(assert (=> b!5724864 m!6677626))

(declare-fun m!6677628 () Bool)

(assert (=> b!5724864 m!6677628))

(assert (=> b!5724864 m!6676866))

(declare-fun m!6677630 () Bool)

(assert (=> b!5724864 m!6677630))

(assert (=> b!5724864 m!6677628))

(assert (=> b!5724864 m!6677630))

(declare-fun m!6677632 () Bool)

(assert (=> b!5724864 m!6677632))

(assert (=> b!5724415 d!1805968))

(declare-fun bs!1338571 () Bool)

(declare-fun d!1805972 () Bool)

(assert (= bs!1338571 (and d!1805972 b!5723625)))

(declare-fun lambda!309475 () Int)

(assert (=> bs!1338571 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309475 lambda!309369))))

(declare-fun bs!1338572 () Bool)

(assert (= bs!1338572 (and d!1805972 d!1805660)))

(assert (=> bs!1338572 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309475 lambda!309420))))

(assert (=> d!1805972 true))

(assert (=> d!1805972 (= (derivationStepZipper!1804 ((_ map or) lt!2278659 lt!2278681) (head!12119 (t!376790 s!2326))) (flatMap!1334 ((_ map or) lt!2278659 lt!2278681) lambda!309475))))

(declare-fun bs!1338573 () Bool)

(assert (= bs!1338573 d!1805972))

(declare-fun m!6677640 () Bool)

(assert (=> bs!1338573 m!6677640))

(assert (=> b!5724415 d!1805972))

(declare-fun d!1805976 () Bool)

(assert (=> d!1805976 (= (head!12119 (t!376790 s!2326)) (h!69788 (t!376790 s!2326)))))

(assert (=> b!5724415 d!1805976))

(declare-fun d!1805978 () Bool)

(assert (=> d!1805978 (= (tail!11214 (t!376790 s!2326)) (t!376790 (t!376790 s!2326)))))

(assert (=> b!5724415 d!1805978))

(declare-fun b!5724883 () Bool)

(declare-fun e!3520207 () (InoxSet Context!10210))

(declare-fun e!3520210 () (InoxSet Context!10210))

(assert (=> b!5724883 (= e!3520207 e!3520210)))

(declare-fun c!1009921 () Bool)

(assert (=> b!5724883 (= c!1009921 ((_ is Union!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun call!437632 () List!63462)

(declare-fun call!437631 () (InoxSet Context!10210))

(declare-fun c!1009920 () Bool)

(declare-fun c!1009919 () Bool)

(declare-fun bm!437622 () Bool)

(assert (=> bm!437622 (= call!437631 (derivationStepZipperDown!1063 (ite c!1009921 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009919 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009920 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))) (ite (or c!1009921 c!1009919) (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (Context!10211 call!437632)) (h!69788 s!2326)))))

(declare-fun call!437629 () List!63462)

(declare-fun bm!437623 () Bool)

(assert (=> bm!437623 (= call!437629 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343))))) (ite (or c!1009919 c!1009920) (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69786 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5724884 () Bool)

(declare-fun e!3520211 () (InoxSet Context!10210))

(declare-fun call!437630 () (InoxSet Context!10210))

(assert (=> b!5724884 (= e!3520211 call!437630)))

(declare-fun bm!437624 () Bool)

(declare-fun call!437628 () (InoxSet Context!10210))

(assert (=> bm!437624 (= call!437630 call!437628)))

(declare-fun b!5724885 () Bool)

(declare-fun e!3520212 () Bool)

(assert (=> b!5724885 (= e!3520212 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun bm!437626 () Bool)

(assert (=> bm!437626 (= call!437632 call!437629)))

(declare-fun b!5724886 () Bool)

(declare-fun e!3520208 () (InoxSet Context!10210))

(assert (=> b!5724886 (= e!3520208 call!437630)))

(declare-fun b!5724887 () Bool)

(declare-fun c!1009922 () Bool)

(assert (=> b!5724887 (= c!1009922 ((_ is Star!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5724887 (= e!3520208 e!3520211)))

(declare-fun b!5724888 () Bool)

(declare-fun e!3520209 () (InoxSet Context!10210))

(assert (=> b!5724888 (= e!3520209 e!3520208)))

(assert (=> b!5724888 (= c!1009920 ((_ is Concat!24566) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5724889 () Bool)

(assert (=> b!5724889 (= c!1009919 e!3520212)))

(declare-fun res!2416853 () Bool)

(assert (=> b!5724889 (=> (not res!2416853) (not e!3520212))))

(assert (=> b!5724889 (= res!2416853 ((_ is Concat!24566) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5724889 (= e!3520210 e!3520209)))

(declare-fun b!5724890 () Bool)

(assert (=> b!5724890 (= e!3520211 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5724891 () Bool)

(declare-fun call!437627 () (InoxSet Context!10210))

(assert (=> b!5724891 (= e!3520209 ((_ map or) call!437627 call!437628))))

(declare-fun b!5724892 () Bool)

(assert (=> b!5724892 (= e!3520207 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) true))))

(declare-fun d!1805982 () Bool)

(declare-fun c!1009918 () Bool)

(assert (=> d!1805982 (= c!1009918 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))) (= (c!1009551 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326))))))

(assert (=> d!1805982 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (h!69787 zl!343))) (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326)) e!3520207)))

(declare-fun bm!437625 () Bool)

(assert (=> bm!437625 (= call!437627 (derivationStepZipperDown!1063 (ite c!1009921 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))) (ite c!1009921 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (Context!10211 call!437629)) (h!69788 s!2326)))))

(declare-fun b!5724893 () Bool)

(assert (=> b!5724893 (= e!3520210 ((_ map or) call!437627 call!437631))))

(declare-fun bm!437627 () Bool)

(assert (=> bm!437627 (= call!437628 call!437631)))

(assert (= (and d!1805982 c!1009918) b!5724892))

(assert (= (and d!1805982 (not c!1009918)) b!5724883))

(assert (= (and b!5724883 c!1009921) b!5724893))

(assert (= (and b!5724883 (not c!1009921)) b!5724889))

(assert (= (and b!5724889 res!2416853) b!5724885))

(assert (= (and b!5724889 c!1009919) b!5724891))

(assert (= (and b!5724889 (not c!1009919)) b!5724888))

(assert (= (and b!5724888 c!1009920) b!5724886))

(assert (= (and b!5724888 (not c!1009920)) b!5724887))

(assert (= (and b!5724887 c!1009922) b!5724884))

(assert (= (and b!5724887 (not c!1009922)) b!5724890))

(assert (= (or b!5724886 b!5724884) bm!437626))

(assert (= (or b!5724886 b!5724884) bm!437624))

(assert (= (or b!5724891 bm!437626) bm!437623))

(assert (= (or b!5724891 bm!437624) bm!437627))

(assert (= (or b!5724893 bm!437627) bm!437622))

(assert (= (or b!5724893 b!5724891) bm!437625))

(assert (=> b!5724885 m!6676986))

(declare-fun m!6677652 () Bool)

(assert (=> bm!437625 m!6677652))

(declare-fun m!6677654 () Bool)

(assert (=> b!5724892 m!6677654))

(declare-fun m!6677656 () Bool)

(assert (=> bm!437622 m!6677656))

(declare-fun m!6677658 () Bool)

(assert (=> bm!437623 m!6677658))

(assert (=> bm!437504 d!1805982))

(declare-fun b!5724937 () Bool)

(declare-fun e!3520245 () Bool)

(declare-fun lt!2278843 () List!63464)

(assert (=> b!5724937 (= e!3520245 (or (not (= (t!376790 s!2326) Nil!63340)) (= lt!2278843 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)))))))

(declare-fun b!5724936 () Bool)

(declare-fun res!2416880 () Bool)

(assert (=> b!5724936 (=> (not res!2416880) (not e!3520245))))

(declare-fun size!40032 (List!63464) Int)

(assert (=> b!5724936 (= res!2416880 (= (size!40032 lt!2278843) (+ (size!40032 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))) (size!40032 (t!376790 s!2326)))))))

(declare-fun d!1805988 () Bool)

(assert (=> d!1805988 e!3520245))

(declare-fun res!2416881 () Bool)

(assert (=> d!1805988 (=> (not res!2416881) (not e!3520245))))

(declare-fun content!11515 (List!63464) (InoxSet C!31712))

(assert (=> d!1805988 (= res!2416881 (= (content!11515 lt!2278843) ((_ map or) (content!11515 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))) (content!11515 (t!376790 s!2326)))))))

(declare-fun e!3520244 () List!63464)

(assert (=> d!1805988 (= lt!2278843 e!3520244)))

(declare-fun c!1009930 () Bool)

(assert (=> d!1805988 (= c!1009930 ((_ is Nil!63340) (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))))))

(assert (=> d!1805988 (= (++!13917 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326)) lt!2278843)))

(declare-fun b!5724935 () Bool)

(assert (=> b!5724935 (= e!3520244 (Cons!63340 (h!69788 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))) (++!13917 (t!376790 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))) (t!376790 s!2326))))))

(declare-fun b!5724933 () Bool)

(assert (=> b!5724933 (= e!3520244 (t!376790 s!2326))))

(assert (= (and d!1805988 c!1009930) b!5724933))

(assert (= (and d!1805988 (not c!1009930)) b!5724935))

(assert (= (and d!1805988 res!2416881) b!5724936))

(assert (= (and b!5724936 res!2416880) b!5724937))

(declare-fun m!6677664 () Bool)

(assert (=> b!5724936 m!6677664))

(assert (=> b!5724936 m!6677096))

(declare-fun m!6677666 () Bool)

(assert (=> b!5724936 m!6677666))

(declare-fun m!6677668 () Bool)

(assert (=> b!5724936 m!6677668))

(declare-fun m!6677670 () Bool)

(assert (=> d!1805988 m!6677670))

(assert (=> d!1805988 m!6677096))

(declare-fun m!6677674 () Bool)

(assert (=> d!1805988 m!6677674))

(declare-fun m!6677678 () Bool)

(assert (=> d!1805988 m!6677678))

(declare-fun m!6677682 () Bool)

(assert (=> b!5724935 m!6677682))

(assert (=> b!5724336 d!1805988))

(declare-fun b!5724941 () Bool)

(declare-fun e!3520247 () Bool)

(declare-fun lt!2278844 () List!63464)

(assert (=> b!5724941 (= e!3520247 (or (not (= (Cons!63340 (h!69788 s!2326) Nil!63340) Nil!63340)) (= lt!2278844 Nil!63340)))))

(declare-fun b!5724940 () Bool)

(declare-fun res!2416882 () Bool)

(assert (=> b!5724940 (=> (not res!2416882) (not e!3520247))))

(assert (=> b!5724940 (= res!2416882 (= (size!40032 lt!2278844) (+ (size!40032 Nil!63340) (size!40032 (Cons!63340 (h!69788 s!2326) Nil!63340)))))))

(declare-fun d!1805994 () Bool)

(assert (=> d!1805994 e!3520247))

(declare-fun res!2416883 () Bool)

(assert (=> d!1805994 (=> (not res!2416883) (not e!3520247))))

(assert (=> d!1805994 (= res!2416883 (= (content!11515 lt!2278844) ((_ map or) (content!11515 Nil!63340) (content!11515 (Cons!63340 (h!69788 s!2326) Nil!63340)))))))

(declare-fun e!3520246 () List!63464)

(assert (=> d!1805994 (= lt!2278844 e!3520246)))

(declare-fun c!1009931 () Bool)

(assert (=> d!1805994 (= c!1009931 ((_ is Nil!63340) Nil!63340))))

(assert (=> d!1805994 (= (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) lt!2278844)))

(declare-fun b!5724939 () Bool)

(assert (=> b!5724939 (= e!3520246 (Cons!63340 (h!69788 Nil!63340) (++!13917 (t!376790 Nil!63340) (Cons!63340 (h!69788 s!2326) Nil!63340))))))

(declare-fun b!5724938 () Bool)

(assert (=> b!5724938 (= e!3520246 (Cons!63340 (h!69788 s!2326) Nil!63340))))

(assert (= (and d!1805994 c!1009931) b!5724938))

(assert (= (and d!1805994 (not c!1009931)) b!5724939))

(assert (= (and d!1805994 res!2416883) b!5724940))

(assert (= (and b!5724940 res!2416882) b!5724941))

(declare-fun m!6677686 () Bool)

(assert (=> b!5724940 m!6677686))

(declare-fun m!6677688 () Bool)

(assert (=> b!5724940 m!6677688))

(declare-fun m!6677690 () Bool)

(assert (=> b!5724940 m!6677690))

(declare-fun m!6677692 () Bool)

(assert (=> d!1805994 m!6677692))

(declare-fun m!6677694 () Bool)

(assert (=> d!1805994 m!6677694))

(declare-fun m!6677696 () Bool)

(assert (=> d!1805994 m!6677696))

(declare-fun m!6677698 () Bool)

(assert (=> b!5724939 m!6677698))

(assert (=> b!5724336 d!1805994))

(declare-fun d!1806002 () Bool)

(assert (=> d!1806002 (= (++!13917 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326)) s!2326)))

(declare-fun lt!2278849 () Unit!156416)

(declare-fun choose!43290 (List!63464 C!31712 List!63464 List!63464) Unit!156416)

(assert (=> d!1806002 (= lt!2278849 (choose!43290 Nil!63340 (h!69788 s!2326) (t!376790 s!2326) s!2326))))

(assert (=> d!1806002 (= (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) (t!376790 s!2326))) s!2326)))

(assert (=> d!1806002 (= (lemmaMoveElementToOtherListKeepsConcatEq!2072 Nil!63340 (h!69788 s!2326) (t!376790 s!2326) s!2326) lt!2278849)))

(declare-fun bs!1338577 () Bool)

(assert (= bs!1338577 d!1806002))

(assert (=> bs!1338577 m!6677096))

(assert (=> bs!1338577 m!6677096))

(assert (=> bs!1338577 m!6677098))

(declare-fun m!6677722 () Bool)

(assert (=> bs!1338577 m!6677722))

(declare-fun m!6677724 () Bool)

(assert (=> bs!1338577 m!6677724))

(assert (=> b!5724336 d!1806002))

(declare-fun b!5724976 () Bool)

(declare-fun e!3520269 () Option!15730)

(assert (=> b!5724976 (= e!3520269 None!15729)))

(declare-fun b!5724977 () Bool)

(declare-fun res!2416903 () Bool)

(declare-fun e!3520265 () Bool)

(assert (=> b!5724977 (=> (not res!2416903) (not e!3520265))))

(declare-fun lt!2278851 () Option!15730)

(assert (=> b!5724977 (= res!2416903 (matchR!7906 (regOne!31954 r!7292) (_1!36121 (get!21839 lt!2278851))))))

(declare-fun b!5724978 () Bool)

(declare-fun e!3520268 () Option!15730)

(assert (=> b!5724978 (= e!3520268 (Some!15729 (tuple2!65637 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326))))))

(declare-fun b!5724979 () Bool)

(assert (=> b!5724979 (= e!3520268 e!3520269)))

(declare-fun c!1009941 () Bool)

(assert (=> b!5724979 (= c!1009941 ((_ is Nil!63340) (t!376790 s!2326)))))

(declare-fun b!5724980 () Bool)

(declare-fun e!3520266 () Bool)

(assert (=> b!5724980 (= e!3520266 (matchR!7906 (regTwo!31954 r!7292) (t!376790 s!2326)))))

(declare-fun b!5724981 () Bool)

(declare-fun res!2416904 () Bool)

(assert (=> b!5724981 (=> (not res!2416904) (not e!3520265))))

(assert (=> b!5724981 (= res!2416904 (matchR!7906 (regTwo!31954 r!7292) (_2!36121 (get!21839 lt!2278851))))))

(declare-fun b!5724975 () Bool)

(declare-fun e!3520267 () Bool)

(assert (=> b!5724975 (= e!3520267 (not (isDefined!12433 lt!2278851)))))

(declare-fun d!1806014 () Bool)

(assert (=> d!1806014 e!3520267))

(declare-fun res!2416901 () Bool)

(assert (=> d!1806014 (=> res!2416901 e!3520267)))

(assert (=> d!1806014 (= res!2416901 e!3520265)))

(declare-fun res!2416902 () Bool)

(assert (=> d!1806014 (=> (not res!2416902) (not e!3520265))))

(assert (=> d!1806014 (= res!2416902 (isDefined!12433 lt!2278851))))

(assert (=> d!1806014 (= lt!2278851 e!3520268)))

(declare-fun c!1009940 () Bool)

(assert (=> d!1806014 (= c!1009940 e!3520266)))

(declare-fun res!2416905 () Bool)

(assert (=> d!1806014 (=> (not res!2416905) (not e!3520266))))

(assert (=> d!1806014 (= res!2416905 (matchR!7906 (regOne!31954 r!7292) (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340))))))

(assert (=> d!1806014 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1806014 (= (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (t!376790 s!2326) s!2326) lt!2278851)))

(declare-fun b!5724982 () Bool)

(declare-fun lt!2278852 () Unit!156416)

(declare-fun lt!2278850 () Unit!156416)

(assert (=> b!5724982 (= lt!2278852 lt!2278850)))

(assert (=> b!5724982 (= (++!13917 (++!13917 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (Cons!63340 (h!69788 (t!376790 s!2326)) Nil!63340)) (t!376790 (t!376790 s!2326))) s!2326)))

(assert (=> b!5724982 (= lt!2278850 (lemmaMoveElementToOtherListKeepsConcatEq!2072 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (h!69788 (t!376790 s!2326)) (t!376790 (t!376790 s!2326)) s!2326))))

(assert (=> b!5724982 (= e!3520269 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) (++!13917 (++!13917 Nil!63340 (Cons!63340 (h!69788 s!2326) Nil!63340)) (Cons!63340 (h!69788 (t!376790 s!2326)) Nil!63340)) (t!376790 (t!376790 s!2326)) s!2326))))

(declare-fun b!5724983 () Bool)

(assert (=> b!5724983 (= e!3520265 (= (++!13917 (_1!36121 (get!21839 lt!2278851)) (_2!36121 (get!21839 lt!2278851))) s!2326))))

(assert (= (and d!1806014 res!2416905) b!5724980))

(assert (= (and d!1806014 c!1009940) b!5724978))

(assert (= (and d!1806014 (not c!1009940)) b!5724979))

(assert (= (and b!5724979 c!1009941) b!5724976))

(assert (= (and b!5724979 (not c!1009941)) b!5724982))

(assert (= (and d!1806014 res!2416902) b!5724977))

(assert (= (and b!5724977 res!2416903) b!5724981))

(assert (= (and b!5724981 res!2416904) b!5724983))

(assert (= (and d!1806014 (not res!2416901)) b!5724975))

(declare-fun m!6677734 () Bool)

(assert (=> b!5724975 m!6677734))

(declare-fun m!6677736 () Bool)

(assert (=> b!5724980 m!6677736))

(assert (=> d!1806014 m!6677734))

(assert (=> d!1806014 m!6677096))

(declare-fun m!6677740 () Bool)

(assert (=> d!1806014 m!6677740))

(assert (=> d!1806014 m!6677090))

(declare-fun m!6677744 () Bool)

(assert (=> b!5724981 m!6677744))

(declare-fun m!6677748 () Bool)

(assert (=> b!5724981 m!6677748))

(assert (=> b!5724982 m!6677096))

(declare-fun m!6677752 () Bool)

(assert (=> b!5724982 m!6677752))

(assert (=> b!5724982 m!6677752))

(declare-fun m!6677754 () Bool)

(assert (=> b!5724982 m!6677754))

(assert (=> b!5724982 m!6677096))

(declare-fun m!6677756 () Bool)

(assert (=> b!5724982 m!6677756))

(assert (=> b!5724982 m!6677752))

(declare-fun m!6677758 () Bool)

(assert (=> b!5724982 m!6677758))

(assert (=> b!5724977 m!6677744))

(declare-fun m!6677760 () Bool)

(assert (=> b!5724977 m!6677760))

(assert (=> b!5724983 m!6677744))

(declare-fun m!6677762 () Bool)

(assert (=> b!5724983 m!6677762))

(assert (=> b!5724336 d!1806014))

(declare-fun d!1806022 () Bool)

(declare-fun c!1009947 () Bool)

(assert (=> d!1806022 (= c!1009947 (isEmpty!35217 (tail!11214 (t!376790 s!2326))))))

(declare-fun e!3520275 () Bool)

(assert (=> d!1806022 (= (matchZipper!1859 (derivationStepZipper!1804 lt!2278681 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))) e!3520275)))

(declare-fun b!5724994 () Bool)

(assert (=> b!5724994 (= e!3520275 (nullableZipper!1669 (derivationStepZipper!1804 lt!2278681 (head!12119 (t!376790 s!2326)))))))

(declare-fun b!5724995 () Bool)

(assert (=> b!5724995 (= e!3520275 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 lt!2278681 (head!12119 (t!376790 s!2326))) (head!12119 (tail!11214 (t!376790 s!2326)))) (tail!11214 (tail!11214 (t!376790 s!2326)))))))

(assert (= (and d!1806022 c!1009947) b!5724994))

(assert (= (and d!1806022 (not c!1009947)) b!5724995))

(assert (=> d!1806022 m!6676866))

(assert (=> d!1806022 m!6677622))

(assert (=> b!5724994 m!6676864))

(declare-fun m!6677768 () Bool)

(assert (=> b!5724994 m!6677768))

(assert (=> b!5724995 m!6676866))

(assert (=> b!5724995 m!6677626))

(assert (=> b!5724995 m!6676864))

(assert (=> b!5724995 m!6677626))

(declare-fun m!6677770 () Bool)

(assert (=> b!5724995 m!6677770))

(assert (=> b!5724995 m!6676866))

(assert (=> b!5724995 m!6677630))

(assert (=> b!5724995 m!6677770))

(assert (=> b!5724995 m!6677630))

(declare-fun m!6677774 () Bool)

(assert (=> b!5724995 m!6677774))

(assert (=> b!5724009 d!1806022))

(declare-fun bs!1338586 () Bool)

(declare-fun d!1806028 () Bool)

(assert (= bs!1338586 (and d!1806028 b!5723625)))

(declare-fun lambda!309478 () Int)

(assert (=> bs!1338586 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309478 lambda!309369))))

(declare-fun bs!1338587 () Bool)

(assert (= bs!1338587 (and d!1806028 d!1805660)))

(assert (=> bs!1338587 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309478 lambda!309420))))

(declare-fun bs!1338588 () Bool)

(assert (= bs!1338588 (and d!1806028 d!1805972)))

(assert (=> bs!1338588 (= lambda!309478 lambda!309475)))

(assert (=> d!1806028 true))

(assert (=> d!1806028 (= (derivationStepZipper!1804 lt!2278681 (head!12119 (t!376790 s!2326))) (flatMap!1334 lt!2278681 lambda!309478))))

(declare-fun bs!1338589 () Bool)

(assert (= bs!1338589 d!1806028))

(declare-fun m!6677776 () Bool)

(assert (=> bs!1338589 m!6677776))

(assert (=> b!5724009 d!1806028))

(assert (=> b!5724009 d!1805976))

(assert (=> b!5724009 d!1805978))

(assert (=> bm!437521 d!1805930))

(declare-fun b!5724996 () Bool)

(declare-fun e!3520276 () (InoxSet Context!10210))

(declare-fun e!3520279 () (InoxSet Context!10210))

(assert (=> b!5724996 (= e!3520276 e!3520279)))

(declare-fun c!1009951 () Bool)

(assert (=> b!5724996 (= c!1009951 ((_ is Union!15721) (h!69786 (exprs!5605 lt!2278665))))))

(declare-fun call!437654 () List!63462)

(declare-fun c!1009949 () Bool)

(declare-fun bm!437644 () Bool)

(declare-fun call!437653 () (InoxSet Context!10210))

(declare-fun c!1009950 () Bool)

(assert (=> bm!437644 (= call!437653 (derivationStepZipperDown!1063 (ite c!1009951 (regTwo!31955 (h!69786 (exprs!5605 lt!2278665))) (ite c!1009949 (regTwo!31954 (h!69786 (exprs!5605 lt!2278665))) (ite c!1009950 (regOne!31954 (h!69786 (exprs!5605 lt!2278665))) (reg!16050 (h!69786 (exprs!5605 lt!2278665)))))) (ite (or c!1009951 c!1009949) (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (Context!10211 call!437654)) (h!69788 s!2326)))))

(declare-fun bm!437645 () Bool)

(declare-fun call!437651 () List!63462)

(assert (=> bm!437645 (= call!437651 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665)))) (ite (or c!1009949 c!1009950) (regTwo!31954 (h!69786 (exprs!5605 lt!2278665))) (h!69786 (exprs!5605 lt!2278665)))))))

(declare-fun b!5724997 () Bool)

(declare-fun e!3520280 () (InoxSet Context!10210))

(declare-fun call!437652 () (InoxSet Context!10210))

(assert (=> b!5724997 (= e!3520280 call!437652)))

(declare-fun bm!437646 () Bool)

(declare-fun call!437650 () (InoxSet Context!10210))

(assert (=> bm!437646 (= call!437652 call!437650)))

(declare-fun b!5724998 () Bool)

(declare-fun e!3520281 () Bool)

(assert (=> b!5724998 (= e!3520281 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 lt!2278665)))))))

(declare-fun bm!437648 () Bool)

(assert (=> bm!437648 (= call!437654 call!437651)))

(declare-fun b!5724999 () Bool)

(declare-fun e!3520277 () (InoxSet Context!10210))

(assert (=> b!5724999 (= e!3520277 call!437652)))

(declare-fun b!5725000 () Bool)

(declare-fun c!1009952 () Bool)

(assert (=> b!5725000 (= c!1009952 ((_ is Star!15721) (h!69786 (exprs!5605 lt!2278665))))))

(assert (=> b!5725000 (= e!3520277 e!3520280)))

(declare-fun b!5725001 () Bool)

(declare-fun e!3520278 () (InoxSet Context!10210))

(assert (=> b!5725001 (= e!3520278 e!3520277)))

(assert (=> b!5725001 (= c!1009950 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278665))))))

(declare-fun b!5725002 () Bool)

(assert (=> b!5725002 (= c!1009949 e!3520281)))

(declare-fun res!2416906 () Bool)

(assert (=> b!5725002 (=> (not res!2416906) (not e!3520281))))

(assert (=> b!5725002 (= res!2416906 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278665))))))

(assert (=> b!5725002 (= e!3520279 e!3520278)))

(declare-fun b!5725003 () Bool)

(assert (=> b!5725003 (= e!3520280 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725004 () Bool)

(declare-fun call!437649 () (InoxSet Context!10210))

(assert (=> b!5725004 (= e!3520278 ((_ map or) call!437649 call!437650))))

(declare-fun b!5725005 () Bool)

(assert (=> b!5725005 (= e!3520276 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 lt!2278665))) true))))

(declare-fun d!1806032 () Bool)

(declare-fun c!1009948 () Bool)

(assert (=> d!1806032 (= c!1009948 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 lt!2278665))) (= (c!1009551 (h!69786 (exprs!5605 lt!2278665))) (h!69788 s!2326))))))

(assert (=> d!1806032 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278665)) (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (h!69788 s!2326)) e!3520276)))

(declare-fun bm!437647 () Bool)

(assert (=> bm!437647 (= call!437649 (derivationStepZipperDown!1063 (ite c!1009951 (regOne!31955 (h!69786 (exprs!5605 lt!2278665))) (regOne!31954 (h!69786 (exprs!5605 lt!2278665)))) (ite c!1009951 (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (Context!10211 call!437651)) (h!69788 s!2326)))))

(declare-fun b!5725006 () Bool)

(assert (=> b!5725006 (= e!3520279 ((_ map or) call!437649 call!437653))))

(declare-fun bm!437649 () Bool)

(assert (=> bm!437649 (= call!437650 call!437653)))

(assert (= (and d!1806032 c!1009948) b!5725005))

(assert (= (and d!1806032 (not c!1009948)) b!5724996))

(assert (= (and b!5724996 c!1009951) b!5725006))

(assert (= (and b!5724996 (not c!1009951)) b!5725002))

(assert (= (and b!5725002 res!2416906) b!5724998))

(assert (= (and b!5725002 c!1009949) b!5725004))

(assert (= (and b!5725002 (not c!1009949)) b!5725001))

(assert (= (and b!5725001 c!1009950) b!5724999))

(assert (= (and b!5725001 (not c!1009950)) b!5725000))

(assert (= (and b!5725000 c!1009952) b!5724997))

(assert (= (and b!5725000 (not c!1009952)) b!5725003))

(assert (= (or b!5724999 b!5724997) bm!437648))

(assert (= (or b!5724999 b!5724997) bm!437646))

(assert (= (or b!5725004 bm!437648) bm!437645))

(assert (= (or b!5725004 bm!437646) bm!437649))

(assert (= (or b!5725006 bm!437649) bm!437644))

(assert (= (or b!5725006 b!5725004) bm!437647))

(declare-fun m!6677778 () Bool)

(assert (=> b!5724998 m!6677778))

(declare-fun m!6677780 () Bool)

(assert (=> bm!437647 m!6677780))

(declare-fun m!6677782 () Bool)

(assert (=> b!5725005 m!6677782))

(declare-fun m!6677784 () Bool)

(assert (=> bm!437644 m!6677784))

(declare-fun m!6677786 () Bool)

(assert (=> bm!437645 m!6677786))

(assert (=> bm!437506 d!1806032))

(assert (=> bs!1338425 d!1805656))

(declare-fun bs!1338590 () Bool)

(declare-fun d!1806034 () Bool)

(assert (= bs!1338590 (and d!1806034 d!1805728)))

(declare-fun lambda!309479 () Int)

(assert (=> bs!1338590 (= lambda!309479 lambda!309442)))

(declare-fun bs!1338591 () Bool)

(assert (= bs!1338591 (and d!1806034 b!5723588)))

(assert (=> bs!1338591 (= lambda!309479 lambda!309371)))

(declare-fun bs!1338592 () Bool)

(assert (= bs!1338592 (and d!1806034 d!1805580)))

(assert (=> bs!1338592 (= lambda!309479 lambda!309402)))

(declare-fun bs!1338593 () Bool)

(assert (= bs!1338593 (and d!1806034 d!1805662)))

(assert (=> bs!1338593 (= lambda!309479 lambda!309423)))

(declare-fun bs!1338594 () Bool)

(assert (= bs!1338594 (and d!1806034 d!1805682)))

(assert (=> bs!1338594 (= lambda!309479 lambda!309424)))

(declare-fun bs!1338595 () Bool)

(assert (= bs!1338595 (and d!1806034 d!1805730)))

(assert (=> bs!1338595 (= lambda!309479 lambda!309445)))

(assert (=> d!1806034 (= (inv!82549 (h!69787 (t!376789 zl!343))) (forall!14854 (exprs!5605 (h!69787 (t!376789 zl!343))) lambda!309479))))

(declare-fun bs!1338596 () Bool)

(assert (= bs!1338596 d!1806034))

(declare-fun m!6677790 () Bool)

(assert (=> bs!1338596 m!6677790))

(assert (=> b!5724445 d!1806034))

(declare-fun d!1806040 () Bool)

(assert (=> d!1806040 true))

(declare-fun setRes!38381 () Bool)

(assert (=> d!1806040 setRes!38381))

(declare-fun condSetEmpty!38381 () Bool)

(declare-fun res!2416912 () (InoxSet Context!10210))

(assert (=> d!1806040 (= condSetEmpty!38381 (= res!2416912 ((as const (Array Context!10210 Bool)) false)))))

(assert (=> d!1806040 (= (choose!43281 lt!2278675 lambda!309369) res!2416912)))

(declare-fun setIsEmpty!38381 () Bool)

(assert (=> setIsEmpty!38381 setRes!38381))

(declare-fun setNonEmpty!38381 () Bool)

(declare-fun e!3520285 () Bool)

(declare-fun tp!1585150 () Bool)

(declare-fun setElem!38381 () Context!10210)

(assert (=> setNonEmpty!38381 (= setRes!38381 (and tp!1585150 (inv!82549 setElem!38381) e!3520285))))

(declare-fun setRest!38381 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38381 (= res!2416912 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38381 true) setRest!38381))))

(declare-fun b!5725010 () Bool)

(declare-fun tp!1585149 () Bool)

(assert (=> b!5725010 (= e!3520285 tp!1585149)))

(assert (= (and d!1806040 condSetEmpty!38381) setIsEmpty!38381))

(assert (= (and d!1806040 (not condSetEmpty!38381)) setNonEmpty!38381))

(assert (= setNonEmpty!38381 b!5725010))

(declare-fun m!6677792 () Bool)

(assert (=> setNonEmpty!38381 m!6677792))

(assert (=> d!1805654 d!1806040))

(assert (=> d!1805710 d!1805930))

(assert (=> d!1805710 d!1805706))

(declare-fun d!1806044 () Bool)

(assert (=> d!1806044 (= (isEmpty!35217 (tail!11214 s!2326)) ((_ is Nil!63340) (tail!11214 s!2326)))))

(assert (=> b!5724398 d!1806044))

(declare-fun d!1806046 () Bool)

(assert (=> d!1806046 (= (tail!11214 s!2326) (t!376790 s!2326))))

(assert (=> b!5724398 d!1806046))

(declare-fun b!5725012 () Bool)

(declare-fun res!2416917 () Bool)

(declare-fun e!3520288 () Bool)

(assert (=> b!5725012 (=> (not res!2416917) (not e!3520288))))

(declare-fun call!437655 () Bool)

(assert (=> b!5725012 (= res!2416917 call!437655)))

(declare-fun e!3520289 () Bool)

(assert (=> b!5725012 (= e!3520289 e!3520288)))

(declare-fun b!5725013 () Bool)

(declare-fun e!3520293 () Bool)

(declare-fun e!3520287 () Bool)

(assert (=> b!5725013 (= e!3520293 e!3520287)))

(declare-fun c!1009953 () Bool)

(assert (=> b!5725013 (= c!1009953 ((_ is Star!15721) lt!2278784))))

(declare-fun b!5725014 () Bool)

(declare-fun e!3520291 () Bool)

(declare-fun call!437657 () Bool)

(assert (=> b!5725014 (= e!3520291 call!437657)))

(declare-fun b!5725015 () Bool)

(declare-fun e!3520290 () Bool)

(declare-fun e!3520292 () Bool)

(assert (=> b!5725015 (= e!3520290 e!3520292)))

(declare-fun res!2416918 () Bool)

(assert (=> b!5725015 (=> (not res!2416918) (not e!3520292))))

(assert (=> b!5725015 (= res!2416918 call!437655)))

(declare-fun b!5725016 () Bool)

(declare-fun call!437656 () Bool)

(assert (=> b!5725016 (= e!3520292 call!437656)))

(declare-fun bm!437651 () Bool)

(declare-fun c!1009954 () Bool)

(assert (=> bm!437651 (= call!437657 (validRegex!7457 (ite c!1009953 (reg!16050 lt!2278784) (ite c!1009954 (regTwo!31955 lt!2278784) (regTwo!31954 lt!2278784)))))))

(declare-fun b!5725017 () Bool)

(assert (=> b!5725017 (= e!3520287 e!3520289)))

(assert (=> b!5725017 (= c!1009954 ((_ is Union!15721) lt!2278784))))

(declare-fun bm!437650 () Bool)

(assert (=> bm!437650 (= call!437655 (validRegex!7457 (ite c!1009954 (regOne!31955 lt!2278784) (regOne!31954 lt!2278784))))))

(declare-fun d!1806048 () Bool)

(declare-fun res!2416919 () Bool)

(assert (=> d!1806048 (=> res!2416919 e!3520293)))

(assert (=> d!1806048 (= res!2416919 ((_ is ElementMatch!15721) lt!2278784))))

(assert (=> d!1806048 (= (validRegex!7457 lt!2278784) e!3520293)))

(declare-fun b!5725018 () Bool)

(assert (=> b!5725018 (= e!3520288 call!437656)))

(declare-fun b!5725019 () Bool)

(assert (=> b!5725019 (= e!3520287 e!3520291)))

(declare-fun res!2416915 () Bool)

(assert (=> b!5725019 (= res!2416915 (not (nullable!5753 (reg!16050 lt!2278784))))))

(assert (=> b!5725019 (=> (not res!2416915) (not e!3520291))))

(declare-fun b!5725020 () Bool)

(declare-fun res!2416916 () Bool)

(assert (=> b!5725020 (=> res!2416916 e!3520290)))

(assert (=> b!5725020 (= res!2416916 (not ((_ is Concat!24566) lt!2278784)))))

(assert (=> b!5725020 (= e!3520289 e!3520290)))

(declare-fun bm!437652 () Bool)

(assert (=> bm!437652 (= call!437656 call!437657)))

(assert (= (and d!1806048 (not res!2416919)) b!5725013))

(assert (= (and b!5725013 c!1009953) b!5725019))

(assert (= (and b!5725013 (not c!1009953)) b!5725017))

(assert (= (and b!5725019 res!2416915) b!5725014))

(assert (= (and b!5725017 c!1009954) b!5725012))

(assert (= (and b!5725017 (not c!1009954)) b!5725020))

(assert (= (and b!5725012 res!2416917) b!5725018))

(assert (= (and b!5725020 (not res!2416916)) b!5725015))

(assert (= (and b!5725015 res!2416918) b!5725016))

(assert (= (or b!5725018 b!5725016) bm!437652))

(assert (= (or b!5725012 b!5725015) bm!437650))

(assert (= (or b!5725014 bm!437652) bm!437651))

(declare-fun m!6677796 () Bool)

(assert (=> bm!437651 m!6677796))

(declare-fun m!6677798 () Bool)

(assert (=> bm!437650 m!6677798))

(declare-fun m!6677800 () Bool)

(assert (=> b!5725019 m!6677800))

(assert (=> d!1805700 d!1806048))

(declare-fun bs!1338597 () Bool)

(declare-fun d!1806052 () Bool)

(assert (= bs!1338597 (and d!1806052 d!1806034)))

(declare-fun lambda!309480 () Int)

(assert (=> bs!1338597 (= lambda!309480 lambda!309479)))

(declare-fun bs!1338598 () Bool)

(assert (= bs!1338598 (and d!1806052 d!1805728)))

(assert (=> bs!1338598 (= lambda!309480 lambda!309442)))

(declare-fun bs!1338599 () Bool)

(assert (= bs!1338599 (and d!1806052 b!5723588)))

(assert (=> bs!1338599 (= lambda!309480 lambda!309371)))

(declare-fun bs!1338600 () Bool)

(assert (= bs!1338600 (and d!1806052 d!1805580)))

(assert (=> bs!1338600 (= lambda!309480 lambda!309402)))

(declare-fun bs!1338601 () Bool)

(assert (= bs!1338601 (and d!1806052 d!1805662)))

(assert (=> bs!1338601 (= lambda!309480 lambda!309423)))

(declare-fun bs!1338602 () Bool)

(assert (= bs!1338602 (and d!1806052 d!1805682)))

(assert (=> bs!1338602 (= lambda!309480 lambda!309424)))

(declare-fun bs!1338603 () Bool)

(assert (= bs!1338603 (and d!1806052 d!1805730)))

(assert (=> bs!1338603 (= lambda!309480 lambda!309445)))

(declare-fun b!5725032 () Bool)

(declare-fun e!3520301 () Bool)

(declare-fun lt!2278854 () Regex!15721)

(assert (=> b!5725032 (= e!3520301 (isUnion!668 lt!2278854))))

(declare-fun b!5725033 () Bool)

(declare-fun e!3520302 () Bool)

(assert (=> b!5725033 (= e!3520302 e!3520301)))

(declare-fun c!1009960 () Bool)

(assert (=> b!5725033 (= c!1009960 (isEmpty!35214 (tail!11213 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339)))))))

(declare-fun b!5725034 () Bool)

(assert (=> b!5725034 (= e!3520301 (= lt!2278854 (head!12118 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339)))))))

(declare-fun b!5725035 () Bool)

(declare-fun e!3520304 () Regex!15721)

(declare-fun e!3520305 () Regex!15721)

(assert (=> b!5725035 (= e!3520304 e!3520305)))

(declare-fun c!1009961 () Bool)

(assert (=> b!5725035 (= c!1009961 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))

(declare-fun b!5725036 () Bool)

(assert (=> b!5725036 (= e!3520305 EmptyLang!15721)))

(declare-fun b!5725037 () Bool)

(declare-fun e!3520300 () Bool)

(assert (=> b!5725037 (= e!3520300 e!3520302)))

(declare-fun c!1009963 () Bool)

(assert (=> b!5725037 (= c!1009963 (isEmpty!35214 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))

(declare-fun b!5725038 () Bool)

(assert (=> b!5725038 (= e!3520304 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))

(declare-fun b!5725039 () Bool)

(assert (=> b!5725039 (= e!3520302 (isEmptyLang!1238 lt!2278854))))

(assert (=> d!1806052 e!3520300))

(declare-fun res!2416922 () Bool)

(assert (=> d!1806052 (=> (not res!2416922) (not e!3520300))))

(assert (=> d!1806052 (= res!2416922 (validRegex!7457 lt!2278854))))

(assert (=> d!1806052 (= lt!2278854 e!3520304)))

(declare-fun c!1009962 () Bool)

(declare-fun e!3520303 () Bool)

(assert (=> d!1806052 (= c!1009962 e!3520303)))

(declare-fun res!2416921 () Bool)

(assert (=> d!1806052 (=> (not res!2416921) (not e!3520303))))

(assert (=> d!1806052 (= res!2416921 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))

(assert (=> d!1806052 (forall!14854 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339)) lambda!309480)))

(assert (=> d!1806052 (= (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))) lt!2278854)))

(declare-fun b!5725040 () Bool)

(assert (=> b!5725040 (= e!3520303 (isEmpty!35214 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339)))))))

(declare-fun b!5725041 () Bool)

(assert (=> b!5725041 (= e!3520305 (Union!15721 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))) (generalisedUnion!1584 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339))))))))

(assert (= (and d!1806052 res!2416921) b!5725040))

(assert (= (and d!1806052 c!1009962) b!5725038))

(assert (= (and d!1806052 (not c!1009962)) b!5725035))

(assert (= (and b!5725035 c!1009961) b!5725041))

(assert (= (and b!5725035 (not c!1009961)) b!5725036))

(assert (= (and d!1806052 res!2416922) b!5725037))

(assert (= (and b!5725037 c!1009963) b!5725039))

(assert (= (and b!5725037 (not c!1009963)) b!5725033))

(assert (= (and b!5725033 c!1009960) b!5725034))

(assert (= (and b!5725033 (not c!1009960)) b!5725032))

(assert (=> b!5725033 m!6677046))

(declare-fun m!6677812 () Bool)

(assert (=> b!5725033 m!6677812))

(assert (=> b!5725033 m!6677812))

(declare-fun m!6677814 () Bool)

(assert (=> b!5725033 m!6677814))

(declare-fun m!6677816 () Bool)

(assert (=> b!5725041 m!6677816))

(declare-fun m!6677818 () Bool)

(assert (=> b!5725032 m!6677818))

(assert (=> b!5725037 m!6677046))

(declare-fun m!6677822 () Bool)

(assert (=> b!5725037 m!6677822))

(declare-fun m!6677824 () Bool)

(assert (=> b!5725040 m!6677824))

(declare-fun m!6677826 () Bool)

(assert (=> d!1806052 m!6677826))

(assert (=> d!1806052 m!6677046))

(declare-fun m!6677830 () Bool)

(assert (=> d!1806052 m!6677830))

(declare-fun m!6677832 () Bool)

(assert (=> b!5725039 m!6677832))

(assert (=> b!5725034 m!6677046))

(declare-fun m!6677834 () Bool)

(assert (=> b!5725034 m!6677834))

(assert (=> d!1805700 d!1806052))

(declare-fun bs!1338604 () Bool)

(declare-fun d!1806056 () Bool)

(assert (= bs!1338604 (and d!1806056 d!1806034)))

(declare-fun lambda!309481 () Int)

(assert (=> bs!1338604 (= lambda!309481 lambda!309479)))

(declare-fun bs!1338605 () Bool)

(assert (= bs!1338605 (and d!1806056 d!1805728)))

(assert (=> bs!1338605 (= lambda!309481 lambda!309442)))

(declare-fun bs!1338606 () Bool)

(assert (= bs!1338606 (and d!1806056 b!5723588)))

(assert (=> bs!1338606 (= lambda!309481 lambda!309371)))

(declare-fun bs!1338607 () Bool)

(assert (= bs!1338607 (and d!1806056 d!1806052)))

(assert (=> bs!1338607 (= lambda!309481 lambda!309480)))

(declare-fun bs!1338608 () Bool)

(assert (= bs!1338608 (and d!1806056 d!1805580)))

(assert (=> bs!1338608 (= lambda!309481 lambda!309402)))

(declare-fun bs!1338609 () Bool)

(assert (= bs!1338609 (and d!1806056 d!1805662)))

(assert (=> bs!1338609 (= lambda!309481 lambda!309423)))

(declare-fun bs!1338610 () Bool)

(assert (= bs!1338610 (and d!1806056 d!1805682)))

(assert (=> bs!1338610 (= lambda!309481 lambda!309424)))

(declare-fun bs!1338611 () Bool)

(assert (= bs!1338611 (and d!1806056 d!1805730)))

(assert (=> bs!1338611 (= lambda!309481 lambda!309445)))

(declare-fun lt!2278856 () List!63462)

(assert (=> d!1806056 (forall!14854 lt!2278856 lambda!309481)))

(declare-fun e!3520313 () List!63462)

(assert (=> d!1806056 (= lt!2278856 e!3520313)))

(declare-fun c!1009967 () Bool)

(assert (=> d!1806056 (= c!1009967 ((_ is Cons!63339) (Cons!63339 lt!2278665 Nil!63339)))))

(assert (=> d!1806056 (= (unfocusZipperList!1149 (Cons!63339 lt!2278665 Nil!63339)) lt!2278856)))

(declare-fun b!5725056 () Bool)

(assert (=> b!5725056 (= e!3520313 (Cons!63338 (generalisedConcat!1336 (exprs!5605 (h!69787 (Cons!63339 lt!2278665 Nil!63339)))) (unfocusZipperList!1149 (t!376789 (Cons!63339 lt!2278665 Nil!63339)))))))

(declare-fun b!5725057 () Bool)

(assert (=> b!5725057 (= e!3520313 Nil!63338)))

(assert (= (and d!1806056 c!1009967) b!5725056))

(assert (= (and d!1806056 (not c!1009967)) b!5725057))

(declare-fun m!6677842 () Bool)

(assert (=> d!1806056 m!6677842))

(declare-fun m!6677844 () Bool)

(assert (=> b!5725056 m!6677844))

(declare-fun m!6677846 () Bool)

(assert (=> b!5725056 m!6677846))

(assert (=> d!1805700 d!1806056))

(declare-fun b!5725077 () Bool)

(declare-fun e!3520327 () (InoxSet Context!10210))

(declare-fun e!3520330 () (InoxSet Context!10210))

(assert (=> b!5725077 (= e!3520327 e!3520330)))

(declare-fun c!1009977 () Bool)

(assert (=> b!5725077 (= c!1009977 ((_ is Union!15721) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))))))

(declare-fun c!1009975 () Bool)

(declare-fun call!437673 () List!63462)

(declare-fun call!437672 () (InoxSet Context!10210))

(declare-fun c!1009976 () Bool)

(declare-fun bm!437663 () Bool)

(assert (=> bm!437663 (= call!437672 (derivationStepZipperDown!1063 (ite c!1009977 (regTwo!31955 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (ite c!1009975 (regTwo!31954 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (ite c!1009976 (regOne!31954 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (reg!16050 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))))))) (ite (or c!1009977 c!1009975) (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500)) (Context!10211 call!437673)) (h!69788 s!2326)))))

(declare-fun bm!437664 () Bool)

(declare-fun call!437670 () List!63462)

(assert (=> bm!437664 (= call!437670 ($colon$colon!1736 (exprs!5605 (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500))) (ite (or c!1009975 c!1009976) (regTwo!31954 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))))))))

(declare-fun b!5725078 () Bool)

(declare-fun e!3520331 () (InoxSet Context!10210))

(declare-fun call!437671 () (InoxSet Context!10210))

(assert (=> b!5725078 (= e!3520331 call!437671)))

(declare-fun bm!437665 () Bool)

(declare-fun call!437669 () (InoxSet Context!10210))

(assert (=> bm!437665 (= call!437671 call!437669)))

(declare-fun e!3520332 () Bool)

(declare-fun b!5725079 () Bool)

(assert (=> b!5725079 (= e!3520332 (nullable!5753 (regOne!31954 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))))))))

(declare-fun bm!437667 () Bool)

(assert (=> bm!437667 (= call!437673 call!437670)))

(declare-fun b!5725080 () Bool)

(declare-fun e!3520328 () (InoxSet Context!10210))

(assert (=> b!5725080 (= e!3520328 call!437671)))

(declare-fun b!5725081 () Bool)

(declare-fun c!1009978 () Bool)

(assert (=> b!5725081 (= c!1009978 ((_ is Star!15721) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))))))

(assert (=> b!5725081 (= e!3520328 e!3520331)))

(declare-fun b!5725082 () Bool)

(declare-fun e!3520329 () (InoxSet Context!10210))

(assert (=> b!5725082 (= e!3520329 e!3520328)))

(assert (=> b!5725082 (= c!1009976 ((_ is Concat!24566) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))))))

(declare-fun b!5725083 () Bool)

(assert (=> b!5725083 (= c!1009975 e!3520332)))

(declare-fun res!2416938 () Bool)

(assert (=> b!5725083 (=> (not res!2416938) (not e!3520332))))

(assert (=> b!5725083 (= res!2416938 ((_ is Concat!24566) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))))))

(assert (=> b!5725083 (= e!3520330 e!3520329)))

(declare-fun b!5725084 () Bool)

(assert (=> b!5725084 (= e!3520331 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725085 () Bool)

(declare-fun call!437668 () (InoxSet Context!10210))

(assert (=> b!5725085 (= e!3520329 ((_ map or) call!437668 call!437669))))

(declare-fun b!5725086 () Bool)

(assert (=> b!5725086 (= e!3520327 (store ((as const (Array Context!10210 Bool)) false) (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500)) true))))

(declare-fun d!1806062 () Bool)

(declare-fun c!1009974 () Bool)

(assert (=> d!1806062 (= c!1009974 (and ((_ is ElementMatch!15721) (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (= (c!1009551 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (h!69788 s!2326))))))

(assert (=> d!1806062 (= (derivationStepZipperDown!1063 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))) (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500)) (h!69788 s!2326)) e!3520327)))

(declare-fun bm!437666 () Bool)

(assert (=> bm!437666 (= call!437668 (derivationStepZipperDown!1063 (ite c!1009977 (regOne!31955 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292))))))) (regOne!31954 (ite c!1009711 (regTwo!31955 (reg!16050 (regOne!31954 r!7292))) (ite c!1009709 (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (ite c!1009710 (regOne!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (reg!16050 (regOne!31954 r!7292)))))))) (ite c!1009977 (ite (or c!1009711 c!1009709) lt!2278694 (Context!10211 call!437500)) (Context!10211 call!437670)) (h!69788 s!2326)))))

(declare-fun b!5725087 () Bool)

(assert (=> b!5725087 (= e!3520330 ((_ map or) call!437668 call!437672))))

(declare-fun bm!437668 () Bool)

(assert (=> bm!437668 (= call!437669 call!437672)))

(assert (= (and d!1806062 c!1009974) b!5725086))

(assert (= (and d!1806062 (not c!1009974)) b!5725077))

(assert (= (and b!5725077 c!1009977) b!5725087))

(assert (= (and b!5725077 (not c!1009977)) b!5725083))

(assert (= (and b!5725083 res!2416938) b!5725079))

(assert (= (and b!5725083 c!1009975) b!5725085))

(assert (= (and b!5725083 (not c!1009975)) b!5725082))

(assert (= (and b!5725082 c!1009976) b!5725080))

(assert (= (and b!5725082 (not c!1009976)) b!5725081))

(assert (= (and b!5725081 c!1009978) b!5725078))

(assert (= (and b!5725081 (not c!1009978)) b!5725084))

(assert (= (or b!5725080 b!5725078) bm!437667))

(assert (= (or b!5725080 b!5725078) bm!437665))

(assert (= (or b!5725085 bm!437667) bm!437664))

(assert (= (or b!5725085 bm!437665) bm!437668))

(assert (= (or b!5725087 bm!437668) bm!437663))

(assert (= (or b!5725087 b!5725085) bm!437666))

(declare-fun m!6677850 () Bool)

(assert (=> b!5725079 m!6677850))

(declare-fun m!6677856 () Bool)

(assert (=> bm!437666 m!6677856))

(declare-fun m!6677860 () Bool)

(assert (=> b!5725086 m!6677860))

(declare-fun m!6677874 () Bool)

(assert (=> bm!437663 m!6677874))

(declare-fun m!6677876 () Bool)

(assert (=> bm!437664 m!6677876))

(assert (=> bm!437490 d!1806062))

(declare-fun d!1806066 () Bool)

(assert (=> d!1806066 (= (isEmpty!35218 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326)) (not ((_ is Some!15729) (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326))))))

(assert (=> d!1805724 d!1806066))

(declare-fun d!1806068 () Bool)

(assert (=> d!1806068 (= (nullable!5753 (h!69786 (exprs!5605 lt!2278694))) (nullableFct!1815 (h!69786 (exprs!5605 lt!2278694))))))

(declare-fun bs!1338635 () Bool)

(assert (= bs!1338635 d!1806068))

(declare-fun m!6677878 () Bool)

(assert (=> bs!1338635 m!6677878))

(assert (=> b!5724186 d!1806068))

(declare-fun bs!1338638 () Bool)

(declare-fun d!1806070 () Bool)

(assert (= bs!1338638 (and d!1806070 d!1805940)))

(declare-fun lambda!309484 () Int)

(assert (=> bs!1338638 (= lambda!309484 lambda!309474)))

(assert (=> d!1806070 (= (nullableZipper!1669 lt!2278675) (exists!2229 lt!2278675 lambda!309484))))

(declare-fun bs!1338639 () Bool)

(assert (= bs!1338639 d!1806070))

(declare-fun m!6677880 () Bool)

(assert (=> bs!1338639 m!6677880))

(assert (=> b!5724026 d!1806070))

(declare-fun d!1806072 () Bool)

(assert (=> d!1806072 (= (isEmpty!35214 (tail!11213 (exprs!5605 (h!69787 zl!343)))) ((_ is Nil!63338) (tail!11213 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> b!5723986 d!1806072))

(declare-fun d!1806074 () Bool)

(assert (=> d!1806074 (= (tail!11213 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))

(assert (=> b!5723986 d!1806074))

(assert (=> b!5724181 d!1805680))

(declare-fun d!1806080 () Bool)

(assert (=> d!1806080 (= (head!12119 s!2326) (h!69788 s!2326))))

(assert (=> b!5724308 d!1806080))

(declare-fun d!1806082 () Bool)

(assert (=> d!1806082 (= (isEmptyExpr!1226 lt!2278751) ((_ is EmptyExpr!15721) lt!2278751))))

(assert (=> b!5723978 d!1806082))

(declare-fun d!1806086 () Bool)

(assert (=> d!1806086 (= (nullable!5753 (reg!16050 r!7292)) (nullableFct!1815 (reg!16050 r!7292)))))

(declare-fun bs!1338640 () Bool)

(assert (= bs!1338640 d!1806086))

(declare-fun m!6677894 () Bool)

(assert (=> bs!1338640 m!6677894))

(assert (=> b!5724224 d!1806086))

(declare-fun b!5725102 () Bool)

(declare-fun res!2416948 () Bool)

(declare-fun e!3520344 () Bool)

(assert (=> b!5725102 (=> (not res!2416948) (not e!3520344))))

(declare-fun call!437677 () Bool)

(assert (=> b!5725102 (= res!2416948 call!437677)))

(declare-fun e!3520345 () Bool)

(assert (=> b!5725102 (= e!3520345 e!3520344)))

(declare-fun b!5725103 () Bool)

(declare-fun e!3520349 () Bool)

(declare-fun e!3520343 () Bool)

(assert (=> b!5725103 (= e!3520349 e!3520343)))

(declare-fun c!1009983 () Bool)

(assert (=> b!5725103 (= c!1009983 ((_ is Star!15721) lt!2278814))))

(declare-fun b!5725104 () Bool)

(declare-fun e!3520347 () Bool)

(declare-fun call!437679 () Bool)

(assert (=> b!5725104 (= e!3520347 call!437679)))

(declare-fun b!5725105 () Bool)

(declare-fun e!3520346 () Bool)

(declare-fun e!3520348 () Bool)

(assert (=> b!5725105 (= e!3520346 e!3520348)))

(declare-fun res!2416949 () Bool)

(assert (=> b!5725105 (=> (not res!2416949) (not e!3520348))))

(assert (=> b!5725105 (= res!2416949 call!437677)))

(declare-fun b!5725106 () Bool)

(declare-fun call!437678 () Bool)

(assert (=> b!5725106 (= e!3520348 call!437678)))

(declare-fun c!1009984 () Bool)

(declare-fun bm!437673 () Bool)

(assert (=> bm!437673 (= call!437679 (validRegex!7457 (ite c!1009983 (reg!16050 lt!2278814) (ite c!1009984 (regTwo!31955 lt!2278814) (regTwo!31954 lt!2278814)))))))

(declare-fun b!5725107 () Bool)

(assert (=> b!5725107 (= e!3520343 e!3520345)))

(assert (=> b!5725107 (= c!1009984 ((_ is Union!15721) lt!2278814))))

(declare-fun bm!437672 () Bool)

(assert (=> bm!437672 (= call!437677 (validRegex!7457 (ite c!1009984 (regOne!31955 lt!2278814) (regOne!31954 lt!2278814))))))

(declare-fun d!1806088 () Bool)

(declare-fun res!2416950 () Bool)

(assert (=> d!1806088 (=> res!2416950 e!3520349)))

(assert (=> d!1806088 (= res!2416950 ((_ is ElementMatch!15721) lt!2278814))))

(assert (=> d!1806088 (= (validRegex!7457 lt!2278814) e!3520349)))

(declare-fun b!5725108 () Bool)

(assert (=> b!5725108 (= e!3520344 call!437678)))

(declare-fun b!5725109 () Bool)

(assert (=> b!5725109 (= e!3520343 e!3520347)))

(declare-fun res!2416946 () Bool)

(assert (=> b!5725109 (= res!2416946 (not (nullable!5753 (reg!16050 lt!2278814))))))

(assert (=> b!5725109 (=> (not res!2416946) (not e!3520347))))

(declare-fun b!5725110 () Bool)

(declare-fun res!2416947 () Bool)

(assert (=> b!5725110 (=> res!2416947 e!3520346)))

(assert (=> b!5725110 (= res!2416947 (not ((_ is Concat!24566) lt!2278814)))))

(assert (=> b!5725110 (= e!3520345 e!3520346)))

(declare-fun bm!437674 () Bool)

(assert (=> bm!437674 (= call!437678 call!437679)))

(assert (= (and d!1806088 (not res!2416950)) b!5725103))

(assert (= (and b!5725103 c!1009983) b!5725109))

(assert (= (and b!5725103 (not c!1009983)) b!5725107))

(assert (= (and b!5725109 res!2416946) b!5725104))

(assert (= (and b!5725107 c!1009984) b!5725102))

(assert (= (and b!5725107 (not c!1009984)) b!5725110))

(assert (= (and b!5725102 res!2416948) b!5725108))

(assert (= (and b!5725110 (not res!2416947)) b!5725105))

(assert (= (and b!5725105 res!2416949) b!5725106))

(assert (= (or b!5725108 b!5725106) bm!437674))

(assert (= (or b!5725102 b!5725105) bm!437672))

(assert (= (or b!5725104 bm!437674) bm!437673))

(declare-fun m!6677900 () Bool)

(assert (=> bm!437673 m!6677900))

(declare-fun m!6677902 () Bool)

(assert (=> bm!437672 m!6677902))

(declare-fun m!6677904 () Bool)

(assert (=> b!5725109 m!6677904))

(assert (=> d!1805740 d!1806088))

(assert (=> d!1805740 d!1805728))

(assert (=> d!1805740 d!1805730))

(assert (=> d!1805692 d!1805690))

(declare-fun d!1806092 () Bool)

(assert (=> d!1806092 (= (flatMap!1334 lt!2278685 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278665))))

(assert (=> d!1806092 true))

(declare-fun _$13!2419 () Unit!156416)

(assert (=> d!1806092 (= (choose!43283 lt!2278685 lt!2278665 lambda!309369) _$13!2419)))

(declare-fun b_lambda!216323 () Bool)

(assert (=> (not b_lambda!216323) (not d!1806092)))

(declare-fun bs!1338652 () Bool)

(assert (= bs!1338652 d!1806092))

(assert (=> bs!1338652 m!6676522))

(assert (=> bs!1338652 m!6677028))

(assert (=> d!1805692 d!1806092))

(declare-fun d!1806098 () Bool)

(assert (=> d!1806098 (= (isEmpty!35214 (t!376788 (unfocusZipperList!1149 zl!343))) ((_ is Nil!63338) (t!376788 (unfocusZipperList!1149 zl!343))))))

(assert (=> b!5724378 d!1806098))

(declare-fun d!1806100 () Bool)

(assert (=> d!1806100 (= (isConcat!749 lt!2278751) ((_ is Concat!24566) lt!2278751))))

(assert (=> b!5723982 d!1806100))

(declare-fun b!5725122 () Bool)

(declare-fun res!2416960 () Bool)

(declare-fun e!3520360 () Bool)

(assert (=> b!5725122 (=> (not res!2416960) (not e!3520360))))

(declare-fun call!437683 () Bool)

(assert (=> b!5725122 (= res!2416960 call!437683)))

(declare-fun e!3520361 () Bool)

(assert (=> b!5725122 (= e!3520361 e!3520360)))

(declare-fun b!5725123 () Bool)

(declare-fun e!3520365 () Bool)

(declare-fun e!3520359 () Bool)

(assert (=> b!5725123 (= e!3520365 e!3520359)))

(declare-fun c!1009987 () Bool)

(assert (=> b!5725123 (= c!1009987 ((_ is Star!15721) lt!2278808))))

(declare-fun b!5725124 () Bool)

(declare-fun e!3520363 () Bool)

(declare-fun call!437685 () Bool)

(assert (=> b!5725124 (= e!3520363 call!437685)))

(declare-fun b!5725125 () Bool)

(declare-fun e!3520362 () Bool)

(declare-fun e!3520364 () Bool)

(assert (=> b!5725125 (= e!3520362 e!3520364)))

(declare-fun res!2416961 () Bool)

(assert (=> b!5725125 (=> (not res!2416961) (not e!3520364))))

(assert (=> b!5725125 (= res!2416961 call!437683)))

(declare-fun b!5725126 () Bool)

(declare-fun call!437684 () Bool)

(assert (=> b!5725126 (= e!3520364 call!437684)))

(declare-fun c!1009988 () Bool)

(declare-fun bm!437679 () Bool)

(assert (=> bm!437679 (= call!437685 (validRegex!7457 (ite c!1009987 (reg!16050 lt!2278808) (ite c!1009988 (regTwo!31955 lt!2278808) (regTwo!31954 lt!2278808)))))))

(declare-fun b!5725127 () Bool)

(assert (=> b!5725127 (= e!3520359 e!3520361)))

(assert (=> b!5725127 (= c!1009988 ((_ is Union!15721) lt!2278808))))

(declare-fun bm!437678 () Bool)

(assert (=> bm!437678 (= call!437683 (validRegex!7457 (ite c!1009988 (regOne!31955 lt!2278808) (regOne!31954 lt!2278808))))))

(declare-fun d!1806104 () Bool)

(declare-fun res!2416962 () Bool)

(assert (=> d!1806104 (=> res!2416962 e!3520365)))

(assert (=> d!1806104 (= res!2416962 ((_ is ElementMatch!15721) lt!2278808))))

(assert (=> d!1806104 (= (validRegex!7457 lt!2278808) e!3520365)))

(declare-fun b!5725128 () Bool)

(assert (=> b!5725128 (= e!3520360 call!437684)))

(declare-fun b!5725129 () Bool)

(assert (=> b!5725129 (= e!3520359 e!3520363)))

(declare-fun res!2416958 () Bool)

(assert (=> b!5725129 (= res!2416958 (not (nullable!5753 (reg!16050 lt!2278808))))))

(assert (=> b!5725129 (=> (not res!2416958) (not e!3520363))))

(declare-fun b!5725130 () Bool)

(declare-fun res!2416959 () Bool)

(assert (=> b!5725130 (=> res!2416959 e!3520362)))

(assert (=> b!5725130 (= res!2416959 (not ((_ is Concat!24566) lt!2278808)))))

(assert (=> b!5725130 (= e!3520361 e!3520362)))

(declare-fun bm!437680 () Bool)

(assert (=> bm!437680 (= call!437684 call!437685)))

(assert (= (and d!1806104 (not res!2416962)) b!5725123))

(assert (= (and b!5725123 c!1009987) b!5725129))

(assert (= (and b!5725123 (not c!1009987)) b!5725127))

(assert (= (and b!5725129 res!2416958) b!5725124))

(assert (= (and b!5725127 c!1009988) b!5725122))

(assert (= (and b!5725127 (not c!1009988)) b!5725130))

(assert (= (and b!5725122 res!2416960) b!5725128))

(assert (= (and b!5725130 (not res!2416959)) b!5725125))

(assert (= (and b!5725125 res!2416961) b!5725126))

(assert (= (or b!5725128 b!5725126) bm!437680))

(assert (= (or b!5725122 b!5725125) bm!437678))

(assert (= (or b!5725124 bm!437680) bm!437679))

(declare-fun m!6677920 () Bool)

(assert (=> bm!437679 m!6677920))

(declare-fun m!6677922 () Bool)

(assert (=> bm!437678 m!6677922))

(declare-fun m!6677924 () Bool)

(assert (=> b!5725129 m!6677924))

(assert (=> d!1805728 d!1806104))

(declare-fun d!1806108 () Bool)

(declare-fun res!2416970 () Bool)

(declare-fun e!3520377 () Bool)

(assert (=> d!1806108 (=> res!2416970 e!3520377)))

(assert (=> d!1806108 (= res!2416970 ((_ is Nil!63338) (unfocusZipperList!1149 zl!343)))))

(assert (=> d!1806108 (= (forall!14854 (unfocusZipperList!1149 zl!343) lambda!309442) e!3520377)))

(declare-fun b!5725146 () Bool)

(declare-fun e!3520378 () Bool)

(assert (=> b!5725146 (= e!3520377 e!3520378)))

(declare-fun res!2416971 () Bool)

(assert (=> b!5725146 (=> (not res!2416971) (not e!3520378))))

(declare-fun dynLambda!24788 (Int Regex!15721) Bool)

(assert (=> b!5725146 (= res!2416971 (dynLambda!24788 lambda!309442 (h!69786 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5725147 () Bool)

(assert (=> b!5725147 (= e!3520378 (forall!14854 (t!376788 (unfocusZipperList!1149 zl!343)) lambda!309442))))

(assert (= (and d!1806108 (not res!2416970)) b!5725146))

(assert (= (and b!5725146 res!2416971) b!5725147))

(declare-fun b_lambda!216327 () Bool)

(assert (=> (not b_lambda!216327) (not b!5725146)))

(declare-fun m!6677926 () Bool)

(assert (=> b!5725146 m!6677926))

(declare-fun m!6677928 () Bool)

(assert (=> b!5725147 m!6677928))

(assert (=> d!1805728 d!1806108))

(declare-fun d!1806110 () Bool)

(assert (=> d!1806110 (= (isEmpty!35217 (t!376790 s!2326)) ((_ is Nil!63340) (t!376790 s!2326)))))

(assert (=> d!1805744 d!1806110))

(declare-fun d!1806112 () Bool)

(declare-fun res!2416972 () Bool)

(declare-fun e!3520379 () Bool)

(assert (=> d!1806112 (=> res!2416972 e!3520379)))

(assert (=> d!1806112 (= res!2416972 ((_ is Nil!63338) (exprs!5605 (h!69787 zl!343))))))

(assert (=> d!1806112 (= (forall!14854 (exprs!5605 (h!69787 zl!343)) lambda!309424) e!3520379)))

(declare-fun b!5725148 () Bool)

(declare-fun e!3520380 () Bool)

(assert (=> b!5725148 (= e!3520379 e!3520380)))

(declare-fun res!2416973 () Bool)

(assert (=> b!5725148 (=> (not res!2416973) (not e!3520380))))

(assert (=> b!5725148 (= res!2416973 (dynLambda!24788 lambda!309424 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5725149 () Bool)

(assert (=> b!5725149 (= e!3520380 (forall!14854 (t!376788 (exprs!5605 (h!69787 zl!343))) lambda!309424))))

(assert (= (and d!1806112 (not res!2416972)) b!5725148))

(assert (= (and b!5725148 res!2416973) b!5725149))

(declare-fun b_lambda!216329 () Bool)

(assert (=> (not b_lambda!216329) (not b!5725148)))

(declare-fun m!6677930 () Bool)

(assert (=> b!5725148 m!6677930))

(declare-fun m!6677932 () Bool)

(assert (=> b!5725149 m!6677932))

(assert (=> d!1805682 d!1806112))

(declare-fun d!1806114 () Bool)

(declare-fun res!2416974 () Bool)

(declare-fun e!3520381 () Bool)

(assert (=> d!1806114 (=> res!2416974 e!3520381)))

(assert (=> d!1806114 (= res!2416974 ((_ is Nil!63338) lt!2278811))))

(assert (=> d!1806114 (= (forall!14854 lt!2278811 lambda!309445) e!3520381)))

(declare-fun b!5725150 () Bool)

(declare-fun e!3520382 () Bool)

(assert (=> b!5725150 (= e!3520381 e!3520382)))

(declare-fun res!2416975 () Bool)

(assert (=> b!5725150 (=> (not res!2416975) (not e!3520382))))

(assert (=> b!5725150 (= res!2416975 (dynLambda!24788 lambda!309445 (h!69786 lt!2278811)))))

(declare-fun b!5725151 () Bool)

(assert (=> b!5725151 (= e!3520382 (forall!14854 (t!376788 lt!2278811) lambda!309445))))

(assert (= (and d!1806114 (not res!2416974)) b!5725150))

(assert (= (and b!5725150 res!2416975) b!5725151))

(declare-fun b_lambda!216331 () Bool)

(assert (=> (not b_lambda!216331) (not b!5725150)))

(declare-fun m!6677934 () Bool)

(assert (=> b!5725150 m!6677934))

(declare-fun m!6677936 () Bool)

(assert (=> b!5725151 m!6677936))

(assert (=> d!1805730 d!1806114))

(declare-fun bs!1338669 () Bool)

(declare-fun d!1806116 () Bool)

(assert (= bs!1338669 (and d!1806116 d!1805940)))

(declare-fun lambda!309489 () Int)

(assert (=> bs!1338669 (= lambda!309489 lambda!309474)))

(declare-fun bs!1338671 () Bool)

(assert (= bs!1338671 (and d!1806116 d!1806070)))

(assert (=> bs!1338671 (= lambda!309489 lambda!309484)))

(assert (=> d!1806116 (= (nullableZipper!1669 lt!2278684) (exists!2229 lt!2278684 lambda!309489))))

(declare-fun bs!1338673 () Bool)

(assert (= bs!1338673 d!1806116))

(declare-fun m!6677938 () Bool)

(assert (=> bs!1338673 m!6677938))

(assert (=> b!5724024 d!1806116))

(declare-fun d!1806118 () Bool)

(assert (=> d!1806118 (= (nullable!5753 r!7292) (nullableFct!1815 r!7292))))

(declare-fun bs!1338674 () Bool)

(assert (= bs!1338674 d!1806118))

(declare-fun m!6677940 () Bool)

(assert (=> bs!1338674 m!6677940))

(assert (=> b!5724297 d!1806118))

(assert (=> bm!437525 d!1805930))

(declare-fun bs!1338682 () Bool)

(declare-fun b!5725157 () Bool)

(assert (= bs!1338682 (and b!5725157 d!1805720)))

(declare-fun lambda!309490 () Int)

(assert (=> bs!1338682 (not (= lambda!309490 lambda!309433))))

(declare-fun bs!1338683 () Bool)

(assert (= bs!1338683 (and b!5725157 b!5724405)))

(assert (=> bs!1338683 (= (and (= (reg!16050 (regTwo!31955 lt!2278693)) (reg!16050 lt!2278693)) (= (regTwo!31955 lt!2278693) lt!2278693)) (= lambda!309490 lambda!309446))))

(declare-fun bs!1338684 () Bool)

(assert (= bs!1338684 (and b!5725157 b!5723592)))

(assert (=> bs!1338684 (not (= lambda!309490 lambda!309367))))

(declare-fun bs!1338685 () Bool)

(assert (= bs!1338685 (and b!5725157 b!5724262)))

(assert (=> bs!1338685 (not (= lambda!309490 lambda!309430))))

(declare-fun bs!1338686 () Bool)

(assert (= bs!1338686 (and b!5725157 d!1805722)))

(assert (=> bs!1338686 (not (= lambda!309490 lambda!309438))))

(assert (=> bs!1338684 (not (= lambda!309490 lambda!309368))))

(declare-fun bs!1338687 () Bool)

(assert (= bs!1338687 (and b!5725157 b!5724404)))

(assert (=> bs!1338687 (not (= lambda!309490 lambda!309447))))

(declare-fun bs!1338688 () Bool)

(assert (= bs!1338688 (and b!5725157 b!5724263)))

(assert (=> bs!1338688 (= (and (= (reg!16050 (regTwo!31955 lt!2278693)) (reg!16050 r!7292)) (= (regTwo!31955 lt!2278693) r!7292)) (= lambda!309490 lambda!309429))))

(assert (=> bs!1338686 (not (= lambda!309490 lambda!309439))))

(assert (=> b!5725157 true))

(assert (=> b!5725157 true))

(declare-fun bs!1338696 () Bool)

(declare-fun b!5725156 () Bool)

(assert (= bs!1338696 (and b!5725156 d!1805720)))

(declare-fun lambda!309492 () Int)

(assert (=> bs!1338696 (not (= lambda!309492 lambda!309433))))

(declare-fun bs!1338699 () Bool)

(assert (= bs!1338699 (and b!5725156 b!5725157)))

(assert (=> bs!1338699 (not (= lambda!309492 lambda!309490))))

(declare-fun bs!1338702 () Bool)

(assert (= bs!1338702 (and b!5725156 b!5724405)))

(assert (=> bs!1338702 (not (= lambda!309492 lambda!309446))))

(declare-fun bs!1338705 () Bool)

(assert (= bs!1338705 (and b!5725156 b!5723592)))

(assert (=> bs!1338705 (not (= lambda!309492 lambda!309367))))

(declare-fun bs!1338707 () Bool)

(assert (= bs!1338707 (and b!5725156 b!5724262)))

(assert (=> bs!1338707 (= (and (= (regOne!31954 (regTwo!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309492 lambda!309430))))

(declare-fun bs!1338708 () Bool)

(assert (= bs!1338708 (and b!5725156 d!1805722)))

(assert (=> bs!1338708 (not (= lambda!309492 lambda!309438))))

(assert (=> bs!1338705 (= (and (= (regOne!31954 (regTwo!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309492 lambda!309368))))

(declare-fun bs!1338709 () Bool)

(assert (= bs!1338709 (and b!5725156 b!5724404)))

(assert (=> bs!1338709 (= (and (= (regOne!31954 (regTwo!31955 lt!2278693)) (regOne!31954 lt!2278693)) (= (regTwo!31954 (regTwo!31955 lt!2278693)) (regTwo!31954 lt!2278693))) (= lambda!309492 lambda!309447))))

(declare-fun bs!1338710 () Bool)

(assert (= bs!1338710 (and b!5725156 b!5724263)))

(assert (=> bs!1338710 (not (= lambda!309492 lambda!309429))))

(assert (=> bs!1338708 (= (and (= (regOne!31954 (regTwo!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309492 lambda!309439))))

(assert (=> b!5725156 true))

(assert (=> b!5725156 true))

(declare-fun b!5725152 () Bool)

(declare-fun e!3520386 () Bool)

(declare-fun e!3520385 () Bool)

(assert (=> b!5725152 (= e!3520386 e!3520385)))

(declare-fun res!2416976 () Bool)

(assert (=> b!5725152 (= res!2416976 (not ((_ is EmptyLang!15721) (regTwo!31955 lt!2278693))))))

(assert (=> b!5725152 (=> (not res!2416976) (not e!3520385))))

(declare-fun b!5725153 () Bool)

(declare-fun res!2416977 () Bool)

(declare-fun e!3520388 () Bool)

(assert (=> b!5725153 (=> res!2416977 e!3520388)))

(declare-fun call!437688 () Bool)

(assert (=> b!5725153 (= res!2416977 call!437688)))

(declare-fun e!3520384 () Bool)

(assert (=> b!5725153 (= e!3520384 e!3520388)))

(declare-fun b!5725154 () Bool)

(declare-fun e!3520387 () Bool)

(assert (=> b!5725154 (= e!3520387 (matchRSpec!2824 (regTwo!31955 (regTwo!31955 lt!2278693)) s!2326))))

(declare-fun d!1806120 () Bool)

(declare-fun c!1009993 () Bool)

(assert (=> d!1806120 (= c!1009993 ((_ is EmptyExpr!15721) (regTwo!31955 lt!2278693)))))

(assert (=> d!1806120 (= (matchRSpec!2824 (regTwo!31955 lt!2278693) s!2326) e!3520386)))

(declare-fun b!5725155 () Bool)

(declare-fun c!1009996 () Bool)

(assert (=> b!5725155 (= c!1009996 ((_ is ElementMatch!15721) (regTwo!31955 lt!2278693)))))

(declare-fun e!3520383 () Bool)

(assert (=> b!5725155 (= e!3520385 e!3520383)))

(declare-fun call!437689 () Bool)

(assert (=> b!5725156 (= e!3520384 call!437689)))

(declare-fun c!1009994 () Bool)

(declare-fun bm!437683 () Bool)

(assert (=> bm!437683 (= call!437689 (Exists!2821 (ite c!1009994 lambda!309490 lambda!309492)))))

(assert (=> b!5725157 (= e!3520388 call!437689)))

(declare-fun b!5725158 () Bool)

(declare-fun e!3520389 () Bool)

(assert (=> b!5725158 (= e!3520389 e!3520384)))

(assert (=> b!5725158 (= c!1009994 ((_ is Star!15721) (regTwo!31955 lt!2278693)))))

(declare-fun b!5725159 () Bool)

(assert (=> b!5725159 (= e!3520386 call!437688)))

(declare-fun b!5725160 () Bool)

(assert (=> b!5725160 (= e!3520383 (= s!2326 (Cons!63340 (c!1009551 (regTwo!31955 lt!2278693)) Nil!63340)))))

(declare-fun b!5725161 () Bool)

(declare-fun c!1009995 () Bool)

(assert (=> b!5725161 (= c!1009995 ((_ is Union!15721) (regTwo!31955 lt!2278693)))))

(assert (=> b!5725161 (= e!3520383 e!3520389)))

(declare-fun b!5725162 () Bool)

(assert (=> b!5725162 (= e!3520389 e!3520387)))

(declare-fun res!2416978 () Bool)

(assert (=> b!5725162 (= res!2416978 (matchRSpec!2824 (regOne!31955 (regTwo!31955 lt!2278693)) s!2326))))

(assert (=> b!5725162 (=> res!2416978 e!3520387)))

(declare-fun bm!437684 () Bool)

(assert (=> bm!437684 (= call!437688 (isEmpty!35217 s!2326))))

(assert (= (and d!1806120 c!1009993) b!5725159))

(assert (= (and d!1806120 (not c!1009993)) b!5725152))

(assert (= (and b!5725152 res!2416976) b!5725155))

(assert (= (and b!5725155 c!1009996) b!5725160))

(assert (= (and b!5725155 (not c!1009996)) b!5725161))

(assert (= (and b!5725161 c!1009995) b!5725162))

(assert (= (and b!5725161 (not c!1009995)) b!5725158))

(assert (= (and b!5725162 (not res!2416978)) b!5725154))

(assert (= (and b!5725158 c!1009994) b!5725153))

(assert (= (and b!5725158 (not c!1009994)) b!5725156))

(assert (= (and b!5725153 (not res!2416977)) b!5725157))

(assert (= (or b!5725157 b!5725156) bm!437683))

(assert (= (or b!5725159 b!5725153) bm!437684))

(declare-fun m!6677954 () Bool)

(assert (=> b!5725154 m!6677954))

(declare-fun m!6677956 () Bool)

(assert (=> bm!437683 m!6677956))

(declare-fun m!6677958 () Bool)

(assert (=> b!5725162 m!6677958))

(assert (=> bm!437684 m!6676876))

(assert (=> b!5724402 d!1806120))

(declare-fun bs!1338711 () Bool)

(declare-fun d!1806130 () Bool)

(assert (= bs!1338711 (and d!1806130 d!1805940)))

(declare-fun lambda!309493 () Int)

(assert (=> bs!1338711 (= lambda!309493 lambda!309474)))

(declare-fun bs!1338712 () Bool)

(assert (= bs!1338712 (and d!1806130 d!1806070)))

(assert (=> bs!1338712 (= lambda!309493 lambda!309484)))

(declare-fun bs!1338713 () Bool)

(assert (= bs!1338713 (and d!1806130 d!1806116)))

(assert (=> bs!1338713 (= lambda!309493 lambda!309489)))

(assert (=> d!1806130 (= (nullableZipper!1669 z!1189) (exists!2229 z!1189 lambda!309493))))

(declare-fun bs!1338714 () Bool)

(assert (= bs!1338714 d!1806130))

(declare-fun m!6677960 () Bool)

(assert (=> bs!1338714 m!6677960))

(assert (=> b!5724195 d!1806130))

(assert (=> b!5724413 d!1805622))

(declare-fun b!5725165 () Bool)

(declare-fun e!3520391 () (InoxSet Context!10210))

(declare-fun e!3520394 () (InoxSet Context!10210))

(assert (=> b!5725165 (= e!3520391 e!3520394)))

(declare-fun c!1010001 () Bool)

(assert (=> b!5725165 (= c!1010001 ((_ is Union!15721) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun bm!437685 () Bool)

(declare-fun c!1009999 () Bool)

(declare-fun c!1010000 () Bool)

(declare-fun call!437695 () List!63462)

(declare-fun call!437694 () (InoxSet Context!10210))

(assert (=> bm!437685 (= call!437694 (derivationStepZipperDown!1063 (ite c!1010001 (regTwo!31955 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (ite c!1009999 (regTwo!31954 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (ite c!1010000 (regOne!31954 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (reg!16050 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))))))) (ite (or c!1010001 c!1009999) (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508)) (Context!10211 call!437695)) (h!69788 s!2326)))))

(declare-fun call!437692 () List!63462)

(declare-fun bm!437686 () Bool)

(assert (=> bm!437686 (= call!437692 ($colon$colon!1736 (exprs!5605 (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508))) (ite (or c!1009999 c!1010000) (regTwo!31954 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))))))))

(declare-fun b!5725166 () Bool)

(declare-fun e!3520395 () (InoxSet Context!10210))

(declare-fun call!437693 () (InoxSet Context!10210))

(assert (=> b!5725166 (= e!3520395 call!437693)))

(declare-fun bm!437687 () Bool)

(declare-fun call!437691 () (InoxSet Context!10210))

(assert (=> bm!437687 (= call!437693 call!437691)))

(declare-fun e!3520396 () Bool)

(declare-fun b!5725167 () Bool)

(assert (=> b!5725167 (= e!3520396 (nullable!5753 (regOne!31954 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))))))))

(declare-fun bm!437689 () Bool)

(assert (=> bm!437689 (= call!437695 call!437692)))

(declare-fun b!5725168 () Bool)

(declare-fun e!3520392 () (InoxSet Context!10210))

(assert (=> b!5725168 (= e!3520392 call!437693)))

(declare-fun b!5725169 () Bool)

(declare-fun c!1010002 () Bool)

(assert (=> b!5725169 (= c!1010002 ((_ is Star!15721) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))))

(assert (=> b!5725169 (= e!3520392 e!3520395)))

(declare-fun b!5725170 () Bool)

(declare-fun e!3520393 () (InoxSet Context!10210))

(assert (=> b!5725170 (= e!3520393 e!3520392)))

(assert (=> b!5725170 (= c!1010000 ((_ is Concat!24566) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun b!5725171 () Bool)

(assert (=> b!5725171 (= c!1009999 e!3520396)))

(declare-fun res!2416979 () Bool)

(assert (=> b!5725171 (=> (not res!2416979) (not e!3520396))))

(assert (=> b!5725171 (= res!2416979 ((_ is Concat!24566) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))))

(assert (=> b!5725171 (= e!3520394 e!3520393)))

(declare-fun b!5725172 () Bool)

(assert (=> b!5725172 (= e!3520395 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725173 () Bool)

(declare-fun call!437690 () (InoxSet Context!10210))

(assert (=> b!5725173 (= e!3520393 ((_ map or) call!437690 call!437691))))

(declare-fun b!5725174 () Bool)

(assert (=> b!5725174 (= e!3520391 (store ((as const (Array Context!10210 Bool)) false) (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508)) true))))

(declare-fun c!1009998 () Bool)

(declare-fun d!1806132 () Bool)

(assert (=> d!1806132 (= c!1009998 (and ((_ is ElementMatch!15721) (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (= (c!1009551 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326))))))

(assert (=> d!1806132 (= (derivationStepZipperDown!1063 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))) (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508)) (h!69788 s!2326)) e!3520391)))

(declare-fun bm!437688 () Bool)

(assert (=> bm!437688 (= call!437690 (derivationStepZipperDown!1063 (ite c!1010001 (regOne!31955 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343)))))))) (regOne!31954 (ite c!1009720 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009718 (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (ite c!1009719 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (reg!16050 (h!69786 (exprs!5605 (h!69787 zl!343))))))))) (ite c!1010001 (ite (or c!1009720 c!1009718) lt!2278672 (Context!10211 call!437508)) (Context!10211 call!437692)) (h!69788 s!2326)))))

(declare-fun b!5725175 () Bool)

(assert (=> b!5725175 (= e!3520394 ((_ map or) call!437690 call!437694))))

(declare-fun bm!437690 () Bool)

(assert (=> bm!437690 (= call!437691 call!437694)))

(assert (= (and d!1806132 c!1009998) b!5725174))

(assert (= (and d!1806132 (not c!1009998)) b!5725165))

(assert (= (and b!5725165 c!1010001) b!5725175))

(assert (= (and b!5725165 (not c!1010001)) b!5725171))

(assert (= (and b!5725171 res!2416979) b!5725167))

(assert (= (and b!5725171 c!1009999) b!5725173))

(assert (= (and b!5725171 (not c!1009999)) b!5725170))

(assert (= (and b!5725170 c!1010000) b!5725168))

(assert (= (and b!5725170 (not c!1010000)) b!5725169))

(assert (= (and b!5725169 c!1010002) b!5725166))

(assert (= (and b!5725169 (not c!1010002)) b!5725172))

(assert (= (or b!5725168 b!5725166) bm!437689))

(assert (= (or b!5725168 b!5725166) bm!437687))

(assert (= (or b!5725173 bm!437689) bm!437686))

(assert (= (or b!5725173 bm!437687) bm!437690))

(assert (= (or b!5725175 bm!437690) bm!437685))

(assert (= (or b!5725175 b!5725173) bm!437688))

(declare-fun m!6677962 () Bool)

(assert (=> b!5725167 m!6677962))

(declare-fun m!6677964 () Bool)

(assert (=> bm!437688 m!6677964))

(declare-fun m!6677966 () Bool)

(assert (=> b!5725174 m!6677966))

(declare-fun m!6677970 () Bool)

(assert (=> bm!437685 m!6677970))

(declare-fun m!6677974 () Bool)

(assert (=> bm!437686 m!6677974))

(assert (=> bm!437498 d!1806132))

(declare-fun d!1806136 () Bool)

(declare-fun c!1010008 () Bool)

(assert (=> d!1806136 (= c!1010008 (isEmpty!35217 (tail!11214 (t!376790 s!2326))))))

(declare-fun e!3520403 () Bool)

(assert (=> d!1806136 (= (matchZipper!1859 (derivationStepZipper!1804 lt!2278659 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))) e!3520403)))

(declare-fun b!5725187 () Bool)

(assert (=> b!5725187 (= e!3520403 (nullableZipper!1669 (derivationStepZipper!1804 lt!2278659 (head!12119 (t!376790 s!2326)))))))

(declare-fun b!5725188 () Bool)

(assert (=> b!5725188 (= e!3520403 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 lt!2278659 (head!12119 (t!376790 s!2326))) (head!12119 (tail!11214 (t!376790 s!2326)))) (tail!11214 (tail!11214 (t!376790 s!2326)))))))

(assert (= (and d!1806136 c!1010008) b!5725187))

(assert (= (and d!1806136 (not c!1010008)) b!5725188))

(assert (=> d!1806136 m!6676866))

(assert (=> d!1806136 m!6677622))

(assert (=> b!5725187 m!6677058))

(declare-fun m!6677982 () Bool)

(assert (=> b!5725187 m!6677982))

(assert (=> b!5725188 m!6676866))

(assert (=> b!5725188 m!6677626))

(assert (=> b!5725188 m!6677058))

(assert (=> b!5725188 m!6677626))

(declare-fun m!6677984 () Bool)

(assert (=> b!5725188 m!6677984))

(assert (=> b!5725188 m!6676866))

(assert (=> b!5725188 m!6677630))

(assert (=> b!5725188 m!6677984))

(assert (=> b!5725188 m!6677630))

(declare-fun m!6677986 () Bool)

(assert (=> b!5725188 m!6677986))

(assert (=> b!5724198 d!1806136))

(declare-fun bs!1338716 () Bool)

(declare-fun d!1806140 () Bool)

(assert (= bs!1338716 (and d!1806140 b!5723625)))

(declare-fun lambda!309494 () Int)

(assert (=> bs!1338716 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309494 lambda!309369))))

(declare-fun bs!1338717 () Bool)

(assert (= bs!1338717 (and d!1806140 d!1805660)))

(assert (=> bs!1338717 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309494 lambda!309420))))

(declare-fun bs!1338718 () Bool)

(assert (= bs!1338718 (and d!1806140 d!1805972)))

(assert (=> bs!1338718 (= lambda!309494 lambda!309475)))

(declare-fun bs!1338719 () Bool)

(assert (= bs!1338719 (and d!1806140 d!1806028)))

(assert (=> bs!1338719 (= lambda!309494 lambda!309478)))

(assert (=> d!1806140 true))

(assert (=> d!1806140 (= (derivationStepZipper!1804 lt!2278659 (head!12119 (t!376790 s!2326))) (flatMap!1334 lt!2278659 lambda!309494))))

(declare-fun bs!1338720 () Bool)

(assert (= bs!1338720 d!1806140))

(declare-fun m!6677994 () Bool)

(assert (=> bs!1338720 m!6677994))

(assert (=> b!5724198 d!1806140))

(assert (=> b!5724198 d!1805976))

(assert (=> b!5724198 d!1805978))

(declare-fun d!1806144 () Bool)

(assert (=> d!1806144 (= (isUnion!668 lt!2278808) ((_ is Union!15721) lt!2278808))))

(assert (=> b!5724370 d!1806144))

(declare-fun b!5725205 () Bool)

(declare-fun e!3520414 () (InoxSet Context!10210))

(declare-fun e!3520417 () (InoxSet Context!10210))

(assert (=> b!5725205 (= e!3520414 e!3520417)))

(declare-fun c!1010018 () Bool)

(assert (=> b!5725205 (= c!1010018 ((_ is Union!15721) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))))))

(declare-fun call!437710 () List!63462)

(declare-fun c!1010017 () Bool)

(declare-fun c!1010016 () Bool)

(declare-fun call!437709 () (InoxSet Context!10210))

(declare-fun bm!437700 () Bool)

(assert (=> bm!437700 (= call!437709 (derivationStepZipperDown!1063 (ite c!1010018 (regTwo!31955 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (ite c!1010016 (regTwo!31954 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (ite c!1010017 (regOne!31954 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (reg!16050 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))))) (ite (or c!1010018 c!1010016) (ite c!1009711 lt!2278694 (Context!10211 call!437497)) (Context!10211 call!437710)) (h!69788 s!2326)))))

(declare-fun call!437707 () List!63462)

(declare-fun bm!437701 () Bool)

(assert (=> bm!437701 (= call!437707 ($colon$colon!1736 (exprs!5605 (ite c!1009711 lt!2278694 (Context!10211 call!437497))) (ite (or c!1010016 c!1010017) (regTwo!31954 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))))))

(declare-fun b!5725206 () Bool)

(declare-fun e!3520418 () (InoxSet Context!10210))

(declare-fun call!437708 () (InoxSet Context!10210))

(assert (=> b!5725206 (= e!3520418 call!437708)))

(declare-fun bm!437702 () Bool)

(declare-fun call!437706 () (InoxSet Context!10210))

(assert (=> bm!437702 (= call!437708 call!437706)))

(declare-fun b!5725207 () Bool)

(declare-fun e!3520419 () Bool)

(assert (=> b!5725207 (= e!3520419 (nullable!5753 (regOne!31954 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))))))

(declare-fun bm!437704 () Bool)

(assert (=> bm!437704 (= call!437710 call!437707)))

(declare-fun b!5725208 () Bool)

(declare-fun e!3520415 () (InoxSet Context!10210))

(assert (=> b!5725208 (= e!3520415 call!437708)))

(declare-fun b!5725209 () Bool)

(declare-fun c!1010019 () Bool)

(assert (=> b!5725209 (= c!1010019 ((_ is Star!15721) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))))))

(assert (=> b!5725209 (= e!3520415 e!3520418)))

(declare-fun b!5725210 () Bool)

(declare-fun e!3520416 () (InoxSet Context!10210))

(assert (=> b!5725210 (= e!3520416 e!3520415)))

(assert (=> b!5725210 (= c!1010017 ((_ is Concat!24566) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))))))

(declare-fun b!5725211 () Bool)

(assert (=> b!5725211 (= c!1010016 e!3520419)))

(declare-fun res!2416985 () Bool)

(assert (=> b!5725211 (=> (not res!2416985) (not e!3520419))))

(assert (=> b!5725211 (= res!2416985 ((_ is Concat!24566) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))))))

(assert (=> b!5725211 (= e!3520417 e!3520416)))

(declare-fun b!5725212 () Bool)

(assert (=> b!5725212 (= e!3520418 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725213 () Bool)

(declare-fun call!437705 () (InoxSet Context!10210))

(assert (=> b!5725213 (= e!3520416 ((_ map or) call!437705 call!437706))))

(declare-fun b!5725214 () Bool)

(assert (=> b!5725214 (= e!3520414 (store ((as const (Array Context!10210 Bool)) false) (ite c!1009711 lt!2278694 (Context!10211 call!437497)) true))))

(declare-fun c!1010015 () Bool)

(declare-fun d!1806146 () Bool)

(assert (=> d!1806146 (= c!1010015 (and ((_ is ElementMatch!15721) (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (= (c!1009551 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (h!69788 s!2326))))))

(assert (=> d!1806146 (= (derivationStepZipperDown!1063 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))) (ite c!1009711 lt!2278694 (Context!10211 call!437497)) (h!69788 s!2326)) e!3520414)))

(declare-fun bm!437703 () Bool)

(assert (=> bm!437703 (= call!437705 (derivationStepZipperDown!1063 (ite c!1010018 (regOne!31955 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292))))) (regOne!31954 (ite c!1009711 (regOne!31955 (reg!16050 (regOne!31954 r!7292))) (regOne!31954 (reg!16050 (regOne!31954 r!7292)))))) (ite c!1010018 (ite c!1009711 lt!2278694 (Context!10211 call!437497)) (Context!10211 call!437707)) (h!69788 s!2326)))))

(declare-fun b!5725215 () Bool)

(assert (=> b!5725215 (= e!3520417 ((_ map or) call!437705 call!437709))))

(declare-fun bm!437705 () Bool)

(assert (=> bm!437705 (= call!437706 call!437709)))

(assert (= (and d!1806146 c!1010015) b!5725214))

(assert (= (and d!1806146 (not c!1010015)) b!5725205))

(assert (= (and b!5725205 c!1010018) b!5725215))

(assert (= (and b!5725205 (not c!1010018)) b!5725211))

(assert (= (and b!5725211 res!2416985) b!5725207))

(assert (= (and b!5725211 c!1010016) b!5725213))

(assert (= (and b!5725211 (not c!1010016)) b!5725210))

(assert (= (and b!5725210 c!1010017) b!5725208))

(assert (= (and b!5725210 (not c!1010017)) b!5725209))

(assert (= (and b!5725209 c!1010019) b!5725206))

(assert (= (and b!5725209 (not c!1010019)) b!5725212))

(assert (= (or b!5725208 b!5725206) bm!437704))

(assert (= (or b!5725208 b!5725206) bm!437702))

(assert (= (or b!5725213 bm!437704) bm!437701))

(assert (= (or b!5725213 bm!437702) bm!437705))

(assert (= (or b!5725215 bm!437705) bm!437700))

(assert (= (or b!5725215 b!5725213) bm!437703))

(declare-fun m!6677996 () Bool)

(assert (=> b!5725207 m!6677996))

(declare-fun m!6677998 () Bool)

(assert (=> bm!437703 m!6677998))

(declare-fun m!6678000 () Bool)

(assert (=> b!5725214 m!6678000))

(declare-fun m!6678002 () Bool)

(assert (=> bm!437700 m!6678002))

(declare-fun m!6678004 () Bool)

(assert (=> bm!437701 m!6678004))

(assert (=> bm!437493 d!1806146))

(declare-fun b!5725216 () Bool)

(declare-fun e!3520420 () (InoxSet Context!10210))

(declare-fun call!437711 () (InoxSet Context!10210))

(assert (=> b!5725216 (= e!3520420 call!437711)))

(declare-fun b!5725217 () Bool)

(declare-fun e!3520421 () Bool)

(assert (=> b!5725217 (= e!3520421 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665)))))))))

(declare-fun e!3520422 () (InoxSet Context!10210))

(declare-fun b!5725218 () Bool)

(assert (=> b!5725218 (= e!3520422 ((_ map or) call!437711 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665)))))) (h!69788 s!2326))))))

(declare-fun b!5725219 () Bool)

(assert (=> b!5725219 (= e!3520420 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1806148 () Bool)

(declare-fun c!1010020 () Bool)

(assert (=> d!1806148 (= c!1010020 e!3520421)))

(declare-fun res!2416986 () Bool)

(assert (=> d!1806148 (=> (not res!2416986) (not e!3520421))))

(assert (=> d!1806148 (= res!2416986 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665))))))))

(assert (=> d!1806148 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278665))) (h!69788 s!2326)) e!3520422)))

(declare-fun b!5725220 () Bool)

(assert (=> b!5725220 (= e!3520422 e!3520420)))

(declare-fun c!1010021 () Bool)

(assert (=> b!5725220 (= c!1010021 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665))))))))

(declare-fun bm!437706 () Bool)

(assert (=> bm!437706 (= call!437711 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278665)))))) (h!69788 s!2326)))))

(assert (= (and d!1806148 res!2416986) b!5725217))

(assert (= (and d!1806148 c!1010020) b!5725218))

(assert (= (and d!1806148 (not c!1010020)) b!5725220))

(assert (= (and b!5725220 c!1010021) b!5725216))

(assert (= (and b!5725220 (not c!1010021)) b!5725219))

(assert (= (or b!5725218 b!5725216) bm!437706))

(declare-fun m!6678006 () Bool)

(assert (=> b!5725217 m!6678006))

(declare-fun m!6678008 () Bool)

(assert (=> b!5725218 m!6678008))

(declare-fun m!6678010 () Bool)

(assert (=> bm!437706 m!6678010))

(assert (=> b!5724192 d!1806148))

(declare-fun b!5725224 () Bool)

(declare-fun e!3520424 () Bool)

(declare-fun lt!2278860 () List!63464)

(assert (=> b!5725224 (= e!3520424 (or (not (= (_2!36121 (get!21839 lt!2278798)) Nil!63340)) (= lt!2278860 (_1!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5725223 () Bool)

(declare-fun res!2416987 () Bool)

(assert (=> b!5725223 (=> (not res!2416987) (not e!3520424))))

(assert (=> b!5725223 (= res!2416987 (= (size!40032 lt!2278860) (+ (size!40032 (_1!36121 (get!21839 lt!2278798))) (size!40032 (_2!36121 (get!21839 lt!2278798))))))))

(declare-fun d!1806150 () Bool)

(assert (=> d!1806150 e!3520424))

(declare-fun res!2416988 () Bool)

(assert (=> d!1806150 (=> (not res!2416988) (not e!3520424))))

(assert (=> d!1806150 (= res!2416988 (= (content!11515 lt!2278860) ((_ map or) (content!11515 (_1!36121 (get!21839 lt!2278798))) (content!11515 (_2!36121 (get!21839 lt!2278798))))))))

(declare-fun e!3520423 () List!63464)

(assert (=> d!1806150 (= lt!2278860 e!3520423)))

(declare-fun c!1010022 () Bool)

(assert (=> d!1806150 (= c!1010022 ((_ is Nil!63340) (_1!36121 (get!21839 lt!2278798))))))

(assert (=> d!1806150 (= (++!13917 (_1!36121 (get!21839 lt!2278798)) (_2!36121 (get!21839 lt!2278798))) lt!2278860)))

(declare-fun b!5725222 () Bool)

(assert (=> b!5725222 (= e!3520423 (Cons!63340 (h!69788 (_1!36121 (get!21839 lt!2278798))) (++!13917 (t!376790 (_1!36121 (get!21839 lt!2278798))) (_2!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5725221 () Bool)

(assert (=> b!5725221 (= e!3520423 (_2!36121 (get!21839 lt!2278798)))))

(assert (= (and d!1806150 c!1010022) b!5725221))

(assert (= (and d!1806150 (not c!1010022)) b!5725222))

(assert (= (and d!1806150 res!2416988) b!5725223))

(assert (= (and b!5725223 res!2416987) b!5725224))

(declare-fun m!6678012 () Bool)

(assert (=> b!5725223 m!6678012))

(declare-fun m!6678014 () Bool)

(assert (=> b!5725223 m!6678014))

(declare-fun m!6678016 () Bool)

(assert (=> b!5725223 m!6678016))

(declare-fun m!6678018 () Bool)

(assert (=> d!1806150 m!6678018))

(declare-fun m!6678020 () Bool)

(assert (=> d!1806150 m!6678020))

(declare-fun m!6678022 () Bool)

(assert (=> d!1806150 m!6678022))

(declare-fun m!6678024 () Bool)

(assert (=> b!5725222 m!6678024))

(assert (=> b!5724337 d!1806150))

(assert (=> b!5724337 d!1805928))

(declare-fun b!5725225 () Bool)

(declare-fun res!2416991 () Bool)

(declare-fun e!3520426 () Bool)

(assert (=> b!5725225 (=> (not res!2416991) (not e!3520426))))

(declare-fun call!437712 () Bool)

(assert (=> b!5725225 (= res!2416991 call!437712)))

(declare-fun e!3520427 () Bool)

(assert (=> b!5725225 (= e!3520427 e!3520426)))

(declare-fun b!5725226 () Bool)

(declare-fun e!3520431 () Bool)

(declare-fun e!3520425 () Bool)

(assert (=> b!5725226 (= e!3520431 e!3520425)))

(declare-fun c!1010023 () Bool)

(assert (=> b!5725226 (= c!1010023 ((_ is Star!15721) lt!2278758))))

(declare-fun b!5725227 () Bool)

(declare-fun e!3520429 () Bool)

(declare-fun call!437714 () Bool)

(assert (=> b!5725227 (= e!3520429 call!437714)))

(declare-fun b!5725228 () Bool)

(declare-fun e!3520428 () Bool)

(declare-fun e!3520430 () Bool)

(assert (=> b!5725228 (= e!3520428 e!3520430)))

(declare-fun res!2416992 () Bool)

(assert (=> b!5725228 (=> (not res!2416992) (not e!3520430))))

(assert (=> b!5725228 (= res!2416992 call!437712)))

(declare-fun b!5725229 () Bool)

(declare-fun call!437713 () Bool)

(assert (=> b!5725229 (= e!3520430 call!437713)))

(declare-fun bm!437708 () Bool)

(declare-fun c!1010024 () Bool)

(assert (=> bm!437708 (= call!437714 (validRegex!7457 (ite c!1010023 (reg!16050 lt!2278758) (ite c!1010024 (regTwo!31955 lt!2278758) (regTwo!31954 lt!2278758)))))))

(declare-fun b!5725230 () Bool)

(assert (=> b!5725230 (= e!3520425 e!3520427)))

(assert (=> b!5725230 (= c!1010024 ((_ is Union!15721) lt!2278758))))

(declare-fun bm!437707 () Bool)

(assert (=> bm!437707 (= call!437712 (validRegex!7457 (ite c!1010024 (regOne!31955 lt!2278758) (regOne!31954 lt!2278758))))))

(declare-fun d!1806152 () Bool)

(declare-fun res!2416993 () Bool)

(assert (=> d!1806152 (=> res!2416993 e!3520431)))

(assert (=> d!1806152 (= res!2416993 ((_ is ElementMatch!15721) lt!2278758))))

(assert (=> d!1806152 (= (validRegex!7457 lt!2278758) e!3520431)))

(declare-fun b!5725231 () Bool)

(assert (=> b!5725231 (= e!3520426 call!437713)))

(declare-fun b!5725232 () Bool)

(assert (=> b!5725232 (= e!3520425 e!3520429)))

(declare-fun res!2416989 () Bool)

(assert (=> b!5725232 (= res!2416989 (not (nullable!5753 (reg!16050 lt!2278758))))))

(assert (=> b!5725232 (=> (not res!2416989) (not e!3520429))))

(declare-fun b!5725233 () Bool)

(declare-fun res!2416990 () Bool)

(assert (=> b!5725233 (=> res!2416990 e!3520428)))

(assert (=> b!5725233 (= res!2416990 (not ((_ is Concat!24566) lt!2278758)))))

(assert (=> b!5725233 (= e!3520427 e!3520428)))

(declare-fun bm!437709 () Bool)

(assert (=> bm!437709 (= call!437713 call!437714)))

(assert (= (and d!1806152 (not res!2416993)) b!5725226))

(assert (= (and b!5725226 c!1010023) b!5725232))

(assert (= (and b!5725226 (not c!1010023)) b!5725230))

(assert (= (and b!5725232 res!2416989) b!5725227))

(assert (= (and b!5725230 c!1010024) b!5725225))

(assert (= (and b!5725230 (not c!1010024)) b!5725233))

(assert (= (and b!5725225 res!2416991) b!5725231))

(assert (= (and b!5725233 (not res!2416990)) b!5725228))

(assert (= (and b!5725228 res!2416992) b!5725229))

(assert (= (or b!5725231 b!5725229) bm!437709))

(assert (= (or b!5725225 b!5725228) bm!437707))

(assert (= (or b!5725227 bm!437709) bm!437708))

(declare-fun m!6678026 () Bool)

(assert (=> bm!437708 m!6678026))

(declare-fun m!6678028 () Bool)

(assert (=> bm!437707 m!6678028))

(declare-fun m!6678030 () Bool)

(assert (=> b!5725232 m!6678030))

(assert (=> d!1805612 d!1806152))

(declare-fun bs!1338744 () Bool)

(declare-fun d!1806154 () Bool)

(assert (= bs!1338744 (and d!1806154 d!1806034)))

(declare-fun lambda!309497 () Int)

(assert (=> bs!1338744 (= lambda!309497 lambda!309479)))

(declare-fun bs!1338746 () Bool)

(assert (= bs!1338746 (and d!1806154 d!1805728)))

(assert (=> bs!1338746 (= lambda!309497 lambda!309442)))

(declare-fun bs!1338747 () Bool)

(assert (= bs!1338747 (and d!1806154 b!5723588)))

(assert (=> bs!1338747 (= lambda!309497 lambda!309371)))

(declare-fun bs!1338749 () Bool)

(assert (= bs!1338749 (and d!1806154 d!1806056)))

(assert (=> bs!1338749 (= lambda!309497 lambda!309481)))

(declare-fun bs!1338751 () Bool)

(assert (= bs!1338751 (and d!1806154 d!1806052)))

(assert (=> bs!1338751 (= lambda!309497 lambda!309480)))

(declare-fun bs!1338752 () Bool)

(assert (= bs!1338752 (and d!1806154 d!1805580)))

(assert (=> bs!1338752 (= lambda!309497 lambda!309402)))

(declare-fun bs!1338754 () Bool)

(assert (= bs!1338754 (and d!1806154 d!1805662)))

(assert (=> bs!1338754 (= lambda!309497 lambda!309423)))

(declare-fun bs!1338755 () Bool)

(assert (= bs!1338755 (and d!1806154 d!1805682)))

(assert (=> bs!1338755 (= lambda!309497 lambda!309424)))

(declare-fun bs!1338757 () Bool)

(assert (= bs!1338757 (and d!1806154 d!1805730)))

(assert (=> bs!1338757 (= lambda!309497 lambda!309445)))

(declare-fun b!5725234 () Bool)

(declare-fun e!3520433 () Bool)

(declare-fun lt!2278861 () Regex!15721)

(assert (=> b!5725234 (= e!3520433 (isUnion!668 lt!2278861))))

(declare-fun b!5725235 () Bool)

(declare-fun e!3520434 () Bool)

(assert (=> b!5725235 (= e!3520434 e!3520433)))

(declare-fun c!1010025 () Bool)

(assert (=> b!5725235 (= c!1010025 (isEmpty!35214 (tail!11213 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339)))))))

(declare-fun b!5725236 () Bool)

(assert (=> b!5725236 (= e!3520433 (= lt!2278861 (head!12118 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339)))))))

(declare-fun b!5725237 () Bool)

(declare-fun e!3520436 () Regex!15721)

(declare-fun e!3520437 () Regex!15721)

(assert (=> b!5725237 (= e!3520436 e!3520437)))

(declare-fun c!1010026 () Bool)

(assert (=> b!5725237 (= c!1010026 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))

(declare-fun b!5725238 () Bool)

(assert (=> b!5725238 (= e!3520437 EmptyLang!15721)))

(declare-fun b!5725239 () Bool)

(declare-fun e!3520432 () Bool)

(assert (=> b!5725239 (= e!3520432 e!3520434)))

(declare-fun c!1010028 () Bool)

(assert (=> b!5725239 (= c!1010028 (isEmpty!35214 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))

(declare-fun b!5725240 () Bool)

(assert (=> b!5725240 (= e!3520436 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))

(declare-fun b!5725241 () Bool)

(assert (=> b!5725241 (= e!3520434 (isEmptyLang!1238 lt!2278861))))

(assert (=> d!1806154 e!3520432))

(declare-fun res!2416995 () Bool)

(assert (=> d!1806154 (=> (not res!2416995) (not e!3520432))))

(assert (=> d!1806154 (= res!2416995 (validRegex!7457 lt!2278861))))

(assert (=> d!1806154 (= lt!2278861 e!3520436)))

(declare-fun c!1010027 () Bool)

(declare-fun e!3520435 () Bool)

(assert (=> d!1806154 (= c!1010027 e!3520435)))

(declare-fun res!2416994 () Bool)

(assert (=> d!1806154 (=> (not res!2416994) (not e!3520435))))

(assert (=> d!1806154 (= res!2416994 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))

(assert (=> d!1806154 (forall!14854 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339)) lambda!309497)))

(assert (=> d!1806154 (= (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))) lt!2278861)))

(declare-fun b!5725242 () Bool)

(assert (=> b!5725242 (= e!3520435 (isEmpty!35214 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339)))))))

(declare-fun b!5725243 () Bool)

(assert (=> b!5725243 (= e!3520437 (Union!15721 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))) (generalisedUnion!1584 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339))))))))

(assert (= (and d!1806154 res!2416994) b!5725242))

(assert (= (and d!1806154 c!1010027) b!5725240))

(assert (= (and d!1806154 (not c!1010027)) b!5725237))

(assert (= (and b!5725237 c!1010026) b!5725243))

(assert (= (and b!5725237 (not c!1010026)) b!5725238))

(assert (= (and d!1806154 res!2416995) b!5725239))

(assert (= (and b!5725239 c!1010028) b!5725241))

(assert (= (and b!5725239 (not c!1010028)) b!5725235))

(assert (= (and b!5725235 c!1010025) b!5725236))

(assert (= (and b!5725235 (not c!1010025)) b!5725234))

(assert (=> b!5725235 m!6676850))

(declare-fun m!6678032 () Bool)

(assert (=> b!5725235 m!6678032))

(assert (=> b!5725235 m!6678032))

(declare-fun m!6678034 () Bool)

(assert (=> b!5725235 m!6678034))

(declare-fun m!6678036 () Bool)

(assert (=> b!5725243 m!6678036))

(declare-fun m!6678038 () Bool)

(assert (=> b!5725234 m!6678038))

(assert (=> b!5725239 m!6676850))

(declare-fun m!6678040 () Bool)

(assert (=> b!5725239 m!6678040))

(declare-fun m!6678044 () Bool)

(assert (=> b!5725242 m!6678044))

(declare-fun m!6678048 () Bool)

(assert (=> d!1806154 m!6678048))

(assert (=> d!1806154 m!6676850))

(declare-fun m!6678052 () Bool)

(assert (=> d!1806154 m!6678052))

(declare-fun m!6678054 () Bool)

(assert (=> b!5725241 m!6678054))

(assert (=> b!5725236 m!6676850))

(declare-fun m!6678056 () Bool)

(assert (=> b!5725236 m!6678056))

(assert (=> d!1805612 d!1806154))

(declare-fun bs!1338759 () Bool)

(declare-fun d!1806158 () Bool)

(assert (= bs!1338759 (and d!1806158 d!1806034)))

(declare-fun lambda!309498 () Int)

(assert (=> bs!1338759 (= lambda!309498 lambda!309479)))

(declare-fun bs!1338760 () Bool)

(assert (= bs!1338760 (and d!1806158 d!1805728)))

(assert (=> bs!1338760 (= lambda!309498 lambda!309442)))

(declare-fun bs!1338761 () Bool)

(assert (= bs!1338761 (and d!1806158 b!5723588)))

(assert (=> bs!1338761 (= lambda!309498 lambda!309371)))

(declare-fun bs!1338762 () Bool)

(assert (= bs!1338762 (and d!1806158 d!1806056)))

(assert (=> bs!1338762 (= lambda!309498 lambda!309481)))

(declare-fun bs!1338763 () Bool)

(assert (= bs!1338763 (and d!1806158 d!1806052)))

(assert (=> bs!1338763 (= lambda!309498 lambda!309480)))

(declare-fun bs!1338764 () Bool)

(assert (= bs!1338764 (and d!1806158 d!1805580)))

(assert (=> bs!1338764 (= lambda!309498 lambda!309402)))

(declare-fun bs!1338765 () Bool)

(assert (= bs!1338765 (and d!1806158 d!1806154)))

(assert (=> bs!1338765 (= lambda!309498 lambda!309497)))

(declare-fun bs!1338766 () Bool)

(assert (= bs!1338766 (and d!1806158 d!1805662)))

(assert (=> bs!1338766 (= lambda!309498 lambda!309423)))

(declare-fun bs!1338767 () Bool)

(assert (= bs!1338767 (and d!1806158 d!1805682)))

(assert (=> bs!1338767 (= lambda!309498 lambda!309424)))

(declare-fun bs!1338768 () Bool)

(assert (= bs!1338768 (and d!1806158 d!1805730)))

(assert (=> bs!1338768 (= lambda!309498 lambda!309445)))

(declare-fun lt!2278862 () List!63462)

(assert (=> d!1806158 (forall!14854 lt!2278862 lambda!309498)))

(declare-fun e!3520438 () List!63462)

(assert (=> d!1806158 (= lt!2278862 e!3520438)))

(declare-fun c!1010029 () Bool)

(assert (=> d!1806158 (= c!1010029 ((_ is Cons!63339) (Cons!63339 lt!2278666 Nil!63339)))))

(assert (=> d!1806158 (= (unfocusZipperList!1149 (Cons!63339 lt!2278666 Nil!63339)) lt!2278862)))

(declare-fun b!5725244 () Bool)

(assert (=> b!5725244 (= e!3520438 (Cons!63338 (generalisedConcat!1336 (exprs!5605 (h!69787 (Cons!63339 lt!2278666 Nil!63339)))) (unfocusZipperList!1149 (t!376789 (Cons!63339 lt!2278666 Nil!63339)))))))

(declare-fun b!5725245 () Bool)

(assert (=> b!5725245 (= e!3520438 Nil!63338)))

(assert (= (and d!1806158 c!1010029) b!5725244))

(assert (= (and d!1806158 (not c!1010029)) b!5725245))

(declare-fun m!6678070 () Bool)

(assert (=> d!1806158 m!6678070))

(declare-fun m!6678072 () Bool)

(assert (=> b!5725244 m!6678072))

(declare-fun m!6678074 () Bool)

(assert (=> b!5725244 m!6678074))

(assert (=> d!1805612 d!1806158))

(declare-fun b!5725271 () Bool)

(declare-fun res!2417007 () Bool)

(declare-fun e!3520453 () Bool)

(assert (=> b!5725271 (=> (not res!2417007) (not e!3520453))))

(declare-fun call!437722 () Bool)

(assert (=> b!5725271 (= res!2417007 call!437722)))

(declare-fun e!3520454 () Bool)

(assert (=> b!5725271 (= e!3520454 e!3520453)))

(declare-fun b!5725272 () Bool)

(declare-fun e!3520458 () Bool)

(declare-fun e!3520452 () Bool)

(assert (=> b!5725272 (= e!3520458 e!3520452)))

(declare-fun c!1010038 () Bool)

(assert (=> b!5725272 (= c!1010038 ((_ is Star!15721) (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))

(declare-fun b!5725273 () Bool)

(declare-fun e!3520456 () Bool)

(declare-fun call!437724 () Bool)

(assert (=> b!5725273 (= e!3520456 call!437724)))

(declare-fun b!5725274 () Bool)

(declare-fun e!3520455 () Bool)

(declare-fun e!3520457 () Bool)

(assert (=> b!5725274 (= e!3520455 e!3520457)))

(declare-fun res!2417008 () Bool)

(assert (=> b!5725274 (=> (not res!2417008) (not e!3520457))))

(assert (=> b!5725274 (= res!2417008 call!437722)))

(declare-fun b!5725275 () Bool)

(declare-fun call!437723 () Bool)

(assert (=> b!5725275 (= e!3520457 call!437723)))

(declare-fun bm!437718 () Bool)

(declare-fun c!1010039 () Bool)

(assert (=> bm!437718 (= call!437724 (validRegex!7457 (ite c!1010038 (reg!16050 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))) (ite c!1010039 (regTwo!31955 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))) (regTwo!31954 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292)))))))))

(declare-fun b!5725276 () Bool)

(assert (=> b!5725276 (= e!3520452 e!3520454)))

(assert (=> b!5725276 (= c!1010039 ((_ is Union!15721) (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))

(declare-fun bm!437717 () Bool)

(assert (=> bm!437717 (= call!437722 (validRegex!7457 (ite c!1010039 (regOne!31955 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))) (regOne!31954 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))))

(declare-fun d!1806162 () Bool)

(declare-fun res!2417009 () Bool)

(assert (=> d!1806162 (=> res!2417009 e!3520458)))

(assert (=> d!1806162 (= res!2417009 ((_ is ElementMatch!15721) (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))

(assert (=> d!1806162 (= (validRegex!7457 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))) e!3520458)))

(declare-fun b!5725277 () Bool)

(assert (=> b!5725277 (= e!3520453 call!437723)))

(declare-fun b!5725278 () Bool)

(assert (=> b!5725278 (= e!3520452 e!3520456)))

(declare-fun res!2417005 () Bool)

(assert (=> b!5725278 (= res!2417005 (not (nullable!5753 (reg!16050 (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292))))))))

(assert (=> b!5725278 (=> (not res!2417005) (not e!3520456))))

(declare-fun b!5725279 () Bool)

(declare-fun res!2417006 () Bool)

(assert (=> b!5725279 (=> res!2417006 e!3520455)))

(assert (=> b!5725279 (= res!2417006 (not ((_ is Concat!24566) (ite c!1009735 (regOne!31955 r!7292) (regOne!31954 r!7292)))))))

(assert (=> b!5725279 (= e!3520454 e!3520455)))

(declare-fun bm!437719 () Bool)

(assert (=> bm!437719 (= call!437723 call!437724)))

(assert (= (and d!1806162 (not res!2417009)) b!5725272))

(assert (= (and b!5725272 c!1010038) b!5725278))

(assert (= (and b!5725272 (not c!1010038)) b!5725276))

(assert (= (and b!5725278 res!2417005) b!5725273))

(assert (= (and b!5725276 c!1010039) b!5725271))

(assert (= (and b!5725276 (not c!1010039)) b!5725279))

(assert (= (and b!5725271 res!2417007) b!5725277))

(assert (= (and b!5725279 (not res!2417006)) b!5725274))

(assert (= (and b!5725274 res!2417008) b!5725275))

(assert (= (or b!5725277 b!5725275) bm!437719))

(assert (= (or b!5725271 b!5725274) bm!437717))

(assert (= (or b!5725273 bm!437719) bm!437718))

(declare-fun m!6678076 () Bool)

(assert (=> bm!437718 m!6678076))

(declare-fun m!6678078 () Bool)

(assert (=> bm!437717 m!6678078))

(declare-fun m!6678080 () Bool)

(assert (=> b!5725278 m!6678080))

(assert (=> bm!437513 d!1806162))

(declare-fun d!1806164 () Bool)

(assert (=> d!1806164 (= (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))) (nullableFct!1815 (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun bs!1338769 () Bool)

(assert (= bs!1338769 d!1806164))

(declare-fun m!6678082 () Bool)

(assert (=> bs!1338769 m!6678082))

(assert (=> b!5724171 d!1806164))

(declare-fun b!5725280 () Bool)

(declare-fun res!2417012 () Bool)

(declare-fun e!3520460 () Bool)

(assert (=> b!5725280 (=> (not res!2417012) (not e!3520460))))

(declare-fun call!437725 () Bool)

(assert (=> b!5725280 (= res!2417012 call!437725)))

(declare-fun e!3520461 () Bool)

(assert (=> b!5725280 (= e!3520461 e!3520460)))

(declare-fun b!5725281 () Bool)

(declare-fun e!3520465 () Bool)

(declare-fun e!3520459 () Bool)

(assert (=> b!5725281 (= e!3520465 e!3520459)))

(declare-fun c!1010040 () Bool)

(assert (=> b!5725281 (= c!1010040 ((_ is Star!15721) lt!2278781))))

(declare-fun b!5725282 () Bool)

(declare-fun e!3520463 () Bool)

(declare-fun call!437727 () Bool)

(assert (=> b!5725282 (= e!3520463 call!437727)))

(declare-fun b!5725283 () Bool)

(declare-fun e!3520462 () Bool)

(declare-fun e!3520464 () Bool)

(assert (=> b!5725283 (= e!3520462 e!3520464)))

(declare-fun res!2417013 () Bool)

(assert (=> b!5725283 (=> (not res!2417013) (not e!3520464))))

(assert (=> b!5725283 (= res!2417013 call!437725)))

(declare-fun b!5725284 () Bool)

(declare-fun call!437726 () Bool)

(assert (=> b!5725284 (= e!3520464 call!437726)))

(declare-fun bm!437721 () Bool)

(declare-fun c!1010041 () Bool)

(assert (=> bm!437721 (= call!437727 (validRegex!7457 (ite c!1010040 (reg!16050 lt!2278781) (ite c!1010041 (regTwo!31955 lt!2278781) (regTwo!31954 lt!2278781)))))))

(declare-fun b!5725285 () Bool)

(assert (=> b!5725285 (= e!3520459 e!3520461)))

(assert (=> b!5725285 (= c!1010041 ((_ is Union!15721) lt!2278781))))

(declare-fun bm!437720 () Bool)

(assert (=> bm!437720 (= call!437725 (validRegex!7457 (ite c!1010041 (regOne!31955 lt!2278781) (regOne!31954 lt!2278781))))))

(declare-fun d!1806166 () Bool)

(declare-fun res!2417014 () Bool)

(assert (=> d!1806166 (=> res!2417014 e!3520465)))

(assert (=> d!1806166 (= res!2417014 ((_ is ElementMatch!15721) lt!2278781))))

(assert (=> d!1806166 (= (validRegex!7457 lt!2278781) e!3520465)))

(declare-fun b!5725286 () Bool)

(assert (=> b!5725286 (= e!3520460 call!437726)))

(declare-fun b!5725287 () Bool)

(assert (=> b!5725287 (= e!3520459 e!3520463)))

(declare-fun res!2417010 () Bool)

(assert (=> b!5725287 (= res!2417010 (not (nullable!5753 (reg!16050 lt!2278781))))))

(assert (=> b!5725287 (=> (not res!2417010) (not e!3520463))))

(declare-fun b!5725288 () Bool)

(declare-fun res!2417011 () Bool)

(assert (=> b!5725288 (=> res!2417011 e!3520462)))

(assert (=> b!5725288 (= res!2417011 (not ((_ is Concat!24566) lt!2278781)))))

(assert (=> b!5725288 (= e!3520461 e!3520462)))

(declare-fun bm!437722 () Bool)

(assert (=> bm!437722 (= call!437726 call!437727)))

(assert (= (and d!1806166 (not res!2417014)) b!5725281))

(assert (= (and b!5725281 c!1010040) b!5725287))

(assert (= (and b!5725281 (not c!1010040)) b!5725285))

(assert (= (and b!5725287 res!2417010) b!5725282))

(assert (= (and b!5725285 c!1010041) b!5725280))

(assert (= (and b!5725285 (not c!1010041)) b!5725288))

(assert (= (and b!5725280 res!2417012) b!5725286))

(assert (= (and b!5725288 (not res!2417011)) b!5725283))

(assert (= (and b!5725283 res!2417013) b!5725284))

(assert (= (or b!5725286 b!5725284) bm!437722))

(assert (= (or b!5725280 b!5725283) bm!437720))

(assert (= (or b!5725282 bm!437722) bm!437721))

(declare-fun m!6678094 () Bool)

(assert (=> bm!437721 m!6678094))

(declare-fun m!6678096 () Bool)

(assert (=> bm!437720 m!6678096))

(declare-fun m!6678098 () Bool)

(assert (=> b!5725287 m!6678098))

(assert (=> d!1805684 d!1806166))

(declare-fun bs!1338770 () Bool)

(declare-fun d!1806170 () Bool)

(assert (= bs!1338770 (and d!1806170 d!1806034)))

(declare-fun lambda!309499 () Int)

(assert (=> bs!1338770 (= lambda!309499 lambda!309479)))

(declare-fun bs!1338771 () Bool)

(assert (= bs!1338771 (and d!1806170 d!1805728)))

(assert (=> bs!1338771 (= lambda!309499 lambda!309442)))

(declare-fun bs!1338772 () Bool)

(assert (= bs!1338772 (and d!1806170 b!5723588)))

(assert (=> bs!1338772 (= lambda!309499 lambda!309371)))

(declare-fun bs!1338773 () Bool)

(assert (= bs!1338773 (and d!1806170 d!1806056)))

(assert (=> bs!1338773 (= lambda!309499 lambda!309481)))

(declare-fun bs!1338774 () Bool)

(assert (= bs!1338774 (and d!1806170 d!1806052)))

(assert (=> bs!1338774 (= lambda!309499 lambda!309480)))

(declare-fun bs!1338775 () Bool)

(assert (= bs!1338775 (and d!1806170 d!1805580)))

(assert (=> bs!1338775 (= lambda!309499 lambda!309402)))

(declare-fun bs!1338776 () Bool)

(assert (= bs!1338776 (and d!1806170 d!1806154)))

(assert (=> bs!1338776 (= lambda!309499 lambda!309497)))

(declare-fun bs!1338777 () Bool)

(assert (= bs!1338777 (and d!1806170 d!1806158)))

(assert (=> bs!1338777 (= lambda!309499 lambda!309498)))

(declare-fun bs!1338778 () Bool)

(assert (= bs!1338778 (and d!1806170 d!1805662)))

(assert (=> bs!1338778 (= lambda!309499 lambda!309423)))

(declare-fun bs!1338779 () Bool)

(assert (= bs!1338779 (and d!1806170 d!1805682)))

(assert (=> bs!1338779 (= lambda!309499 lambda!309424)))

(declare-fun bs!1338780 () Bool)

(assert (= bs!1338780 (and d!1806170 d!1805730)))

(assert (=> bs!1338780 (= lambda!309499 lambda!309445)))

(declare-fun b!5725291 () Bool)

(declare-fun e!3520469 () Bool)

(declare-fun lt!2278864 () Regex!15721)

(assert (=> b!5725291 (= e!3520469 (isUnion!668 lt!2278864))))

(declare-fun b!5725292 () Bool)

(declare-fun e!3520470 () Bool)

(assert (=> b!5725292 (= e!3520470 e!3520469)))

(declare-fun c!1010042 () Bool)

(assert (=> b!5725292 (= c!1010042 (isEmpty!35214 (tail!11213 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339)))))))

(declare-fun b!5725293 () Bool)

(assert (=> b!5725293 (= e!3520469 (= lt!2278864 (head!12118 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339)))))))

(declare-fun b!5725294 () Bool)

(declare-fun e!3520472 () Regex!15721)

(declare-fun e!3520473 () Regex!15721)

(assert (=> b!5725294 (= e!3520472 e!3520473)))

(declare-fun c!1010043 () Bool)

(assert (=> b!5725294 (= c!1010043 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))

(declare-fun b!5725295 () Bool)

(assert (=> b!5725295 (= e!3520473 EmptyLang!15721)))

(declare-fun b!5725296 () Bool)

(declare-fun e!3520468 () Bool)

(assert (=> b!5725296 (= e!3520468 e!3520470)))

(declare-fun c!1010045 () Bool)

(assert (=> b!5725296 (= c!1010045 (isEmpty!35214 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))

(declare-fun b!5725297 () Bool)

(assert (=> b!5725297 (= e!3520472 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))

(declare-fun b!5725298 () Bool)

(assert (=> b!5725298 (= e!3520470 (isEmptyLang!1238 lt!2278864))))

(assert (=> d!1806170 e!3520468))

(declare-fun res!2417018 () Bool)

(assert (=> d!1806170 (=> (not res!2417018) (not e!3520468))))

(assert (=> d!1806170 (= res!2417018 (validRegex!7457 lt!2278864))))

(assert (=> d!1806170 (= lt!2278864 e!3520472)))

(declare-fun c!1010044 () Bool)

(declare-fun e!3520471 () Bool)

(assert (=> d!1806170 (= c!1010044 e!3520471)))

(declare-fun res!2417017 () Bool)

(assert (=> d!1806170 (=> (not res!2417017) (not e!3520471))))

(assert (=> d!1806170 (= res!2417017 ((_ is Cons!63338) (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))

(assert (=> d!1806170 (forall!14854 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339)) lambda!309499)))

(assert (=> d!1806170 (= (generalisedUnion!1584 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))) lt!2278864)))

(declare-fun b!5725299 () Bool)

(assert (=> b!5725299 (= e!3520471 (isEmpty!35214 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339)))))))

(declare-fun b!5725300 () Bool)

(assert (=> b!5725300 (= e!3520473 (Union!15721 (h!69786 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))) (generalisedUnion!1584 (t!376788 (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339))))))))

(assert (= (and d!1806170 res!2417017) b!5725299))

(assert (= (and d!1806170 c!1010044) b!5725297))

(assert (= (and d!1806170 (not c!1010044)) b!5725294))

(assert (= (and b!5725294 c!1010043) b!5725300))

(assert (= (and b!5725294 (not c!1010043)) b!5725295))

(assert (= (and d!1806170 res!2417018) b!5725296))

(assert (= (and b!5725296 c!1010045) b!5725298))

(assert (= (and b!5725296 (not c!1010045)) b!5725292))

(assert (= (and b!5725292 c!1010042) b!5725293))

(assert (= (and b!5725292 (not c!1010042)) b!5725291))

(assert (=> b!5725292 m!6677014))

(declare-fun m!6678108 () Bool)

(assert (=> b!5725292 m!6678108))

(assert (=> b!5725292 m!6678108))

(declare-fun m!6678110 () Bool)

(assert (=> b!5725292 m!6678110))

(declare-fun m!6678112 () Bool)

(assert (=> b!5725300 m!6678112))

(declare-fun m!6678114 () Bool)

(assert (=> b!5725291 m!6678114))

(assert (=> b!5725296 m!6677014))

(declare-fun m!6678116 () Bool)

(assert (=> b!5725296 m!6678116))

(declare-fun m!6678118 () Bool)

(assert (=> b!5725299 m!6678118))

(declare-fun m!6678120 () Bool)

(assert (=> d!1806170 m!6678120))

(assert (=> d!1806170 m!6677014))

(declare-fun m!6678122 () Bool)

(assert (=> d!1806170 m!6678122))

(declare-fun m!6678124 () Bool)

(assert (=> b!5725298 m!6678124))

(assert (=> b!5725293 m!6677014))

(declare-fun m!6678126 () Bool)

(assert (=> b!5725293 m!6678126))

(assert (=> d!1805684 d!1806170))

(declare-fun bs!1338782 () Bool)

(declare-fun d!1806178 () Bool)

(assert (= bs!1338782 (and d!1806178 d!1806034)))

(declare-fun lambda!309500 () Int)

(assert (=> bs!1338782 (= lambda!309500 lambda!309479)))

(declare-fun bs!1338783 () Bool)

(assert (= bs!1338783 (and d!1806178 d!1805728)))

(assert (=> bs!1338783 (= lambda!309500 lambda!309442)))

(declare-fun bs!1338784 () Bool)

(assert (= bs!1338784 (and d!1806178 b!5723588)))

(assert (=> bs!1338784 (= lambda!309500 lambda!309371)))

(declare-fun bs!1338785 () Bool)

(assert (= bs!1338785 (and d!1806178 d!1806170)))

(assert (=> bs!1338785 (= lambda!309500 lambda!309499)))

(declare-fun bs!1338786 () Bool)

(assert (= bs!1338786 (and d!1806178 d!1806056)))

(assert (=> bs!1338786 (= lambda!309500 lambda!309481)))

(declare-fun bs!1338787 () Bool)

(assert (= bs!1338787 (and d!1806178 d!1806052)))

(assert (=> bs!1338787 (= lambda!309500 lambda!309480)))

(declare-fun bs!1338788 () Bool)

(assert (= bs!1338788 (and d!1806178 d!1805580)))

(assert (=> bs!1338788 (= lambda!309500 lambda!309402)))

(declare-fun bs!1338789 () Bool)

(assert (= bs!1338789 (and d!1806178 d!1806154)))

(assert (=> bs!1338789 (= lambda!309500 lambda!309497)))

(declare-fun bs!1338790 () Bool)

(assert (= bs!1338790 (and d!1806178 d!1806158)))

(assert (=> bs!1338790 (= lambda!309500 lambda!309498)))

(declare-fun bs!1338791 () Bool)

(assert (= bs!1338791 (and d!1806178 d!1805662)))

(assert (=> bs!1338791 (= lambda!309500 lambda!309423)))

(declare-fun bs!1338792 () Bool)

(assert (= bs!1338792 (and d!1806178 d!1805682)))

(assert (=> bs!1338792 (= lambda!309500 lambda!309424)))

(declare-fun bs!1338793 () Bool)

(assert (= bs!1338793 (and d!1806178 d!1805730)))

(assert (=> bs!1338793 (= lambda!309500 lambda!309445)))

(declare-fun lt!2278865 () List!63462)

(assert (=> d!1806178 (forall!14854 lt!2278865 lambda!309500)))

(declare-fun e!3520476 () List!63462)

(assert (=> d!1806178 (= lt!2278865 e!3520476)))

(declare-fun c!1010046 () Bool)

(assert (=> d!1806178 (= c!1010046 ((_ is Cons!63339) (Cons!63339 lt!2278694 Nil!63339)))))

(assert (=> d!1806178 (= (unfocusZipperList!1149 (Cons!63339 lt!2278694 Nil!63339)) lt!2278865)))

(declare-fun b!5725303 () Bool)

(assert (=> b!5725303 (= e!3520476 (Cons!63338 (generalisedConcat!1336 (exprs!5605 (h!69787 (Cons!63339 lt!2278694 Nil!63339)))) (unfocusZipperList!1149 (t!376789 (Cons!63339 lt!2278694 Nil!63339)))))))

(declare-fun b!5725304 () Bool)

(assert (=> b!5725304 (= e!3520476 Nil!63338)))

(assert (= (and d!1806178 c!1010046) b!5725303))

(assert (= (and d!1806178 (not c!1010046)) b!5725304))

(declare-fun m!6678134 () Bool)

(assert (=> d!1806178 m!6678134))

(declare-fun m!6678136 () Bool)

(assert (=> b!5725303 m!6678136))

(declare-fun m!6678138 () Bool)

(assert (=> b!5725303 m!6678138))

(assert (=> d!1805684 d!1806178))

(assert (=> b!5724399 d!1806080))

(assert (=> d!1805632 d!1805930))

(assert (=> d!1805704 d!1806110))

(declare-fun d!1806184 () Bool)

(declare-fun res!2417025 () Bool)

(declare-fun e!3520483 () Bool)

(assert (=> d!1806184 (=> res!2417025 e!3520483)))

(assert (=> d!1806184 (= res!2417025 ((_ is Nil!63338) (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663)))))

(assert (=> d!1806184 (= (forall!14854 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663) lambda!309371) e!3520483)))

(declare-fun b!5725313 () Bool)

(declare-fun e!3520484 () Bool)

(assert (=> b!5725313 (= e!3520483 e!3520484)))

(declare-fun res!2417026 () Bool)

(assert (=> b!5725313 (=> (not res!2417026) (not e!3520484))))

(assert (=> b!5725313 (= res!2417026 (dynLambda!24788 lambda!309371 (h!69786 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663))))))

(declare-fun b!5725314 () Bool)

(assert (=> b!5725314 (= e!3520484 (forall!14854 (t!376788 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663)) lambda!309371))))

(assert (= (and d!1806184 (not res!2417025)) b!5725313))

(assert (= (and b!5725313 res!2417026) b!5725314))

(declare-fun b_lambda!216341 () Bool)

(assert (=> (not b_lambda!216341) (not b!5725313)))

(declare-fun m!6678146 () Bool)

(assert (=> b!5725313 m!6678146))

(declare-fun m!6678148 () Bool)

(assert (=> b!5725314 m!6678148))

(assert (=> d!1805652 d!1806184))

(assert (=> d!1805652 d!1805646))

(declare-fun d!1806188 () Bool)

(assert (=> d!1806188 (forall!14854 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663) lambda!309371)))

(assert (=> d!1806188 true))

(declare-fun _$78!284 () Unit!156416)

(assert (=> d!1806188 (= (choose!43280 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663 lambda!309371) _$78!284)))

(declare-fun bs!1338811 () Bool)

(assert (= bs!1338811 d!1806188))

(assert (=> bs!1338811 m!6676426))

(assert (=> bs!1338811 m!6676426))

(assert (=> bs!1338811 m!6676938))

(assert (=> d!1805652 d!1806188))

(declare-fun d!1806194 () Bool)

(declare-fun res!2417027 () Bool)

(declare-fun e!3520485 () Bool)

(assert (=> d!1806194 (=> res!2417027 e!3520485)))

(assert (=> d!1806194 (= res!2417027 ((_ is Nil!63338) (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))

(assert (=> d!1806194 (= (forall!14854 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lambda!309371) e!3520485)))

(declare-fun b!5725315 () Bool)

(declare-fun e!3520486 () Bool)

(assert (=> b!5725315 (= e!3520485 e!3520486)))

(declare-fun res!2417028 () Bool)

(assert (=> b!5725315 (=> (not res!2417028) (not e!3520486))))

(assert (=> b!5725315 (= res!2417028 (dynLambda!24788 lambda!309371 (h!69786 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))))))

(declare-fun b!5725316 () Bool)

(assert (=> b!5725316 (= e!3520486 (forall!14854 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) lambda!309371))))

(assert (= (and d!1806194 (not res!2417027)) b!5725315))

(assert (= (and b!5725315 res!2417028) b!5725316))

(declare-fun b_lambda!216345 () Bool)

(assert (=> (not b_lambda!216345) (not b!5725315)))

(declare-fun m!6678152 () Bool)

(assert (=> b!5725315 m!6678152))

(declare-fun m!6678154 () Bool)

(assert (=> b!5725316 m!6678154))

(assert (=> d!1805652 d!1806194))

(declare-fun d!1806196 () Bool)

(assert (=> d!1806196 (= (Exists!2821 (ite c!1009745 lambda!309429 lambda!309430)) (choose!43286 (ite c!1009745 lambda!309429 lambda!309430)))))

(declare-fun bs!1338812 () Bool)

(assert (= bs!1338812 d!1806196))

(declare-fun m!6678156 () Bool)

(assert (=> bs!1338812 m!6678156))

(assert (=> bm!437520 d!1806196))

(declare-fun d!1806198 () Bool)

(assert (=> d!1806198 (= ($colon$colon!1736 (exprs!5605 lt!2278694) (ite (or c!1009709 c!1009710) (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (regOne!31954 r!7292)))) (Cons!63338 (ite (or c!1009709 c!1009710) (regTwo!31954 (reg!16050 (regOne!31954 r!7292))) (reg!16050 (regOne!31954 r!7292))) (exprs!5605 lt!2278694)))))

(assert (=> bm!437491 d!1806198))

(declare-fun b!5725321 () Bool)

(declare-fun e!3520489 () (InoxSet Context!10210))

(declare-fun call!437729 () (InoxSet Context!10210))

(assert (=> b!5725321 (= e!3520489 call!437729)))

(declare-fun b!5725322 () Bool)

(declare-fun e!3520490 () Bool)

(assert (=> b!5725322 (= e!3520490 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694)))))))))

(declare-fun e!3520491 () (InoxSet Context!10210))

(declare-fun b!5725323 () Bool)

(assert (=> b!5725323 (= e!3520491 ((_ map or) call!437729 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694)))))) (h!69788 s!2326))))))

(declare-fun b!5725324 () Bool)

(assert (=> b!5725324 (= e!3520489 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1806200 () Bool)

(declare-fun c!1010051 () Bool)

(assert (=> d!1806200 (= c!1010051 e!3520490)))

(declare-fun res!2417029 () Bool)

(assert (=> d!1806200 (=> (not res!2417029) (not e!3520490))))

(assert (=> d!1806200 (= res!2417029 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694))))))))

(assert (=> d!1806200 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278694))) (h!69788 s!2326)) e!3520491)))

(declare-fun b!5725325 () Bool)

(assert (=> b!5725325 (= e!3520491 e!3520489)))

(declare-fun c!1010052 () Bool)

(assert (=> b!5725325 (= c!1010052 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694))))))))

(declare-fun bm!437724 () Bool)

(assert (=> bm!437724 (= call!437729 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278694)))))) (h!69788 s!2326)))))

(assert (= (and d!1806200 res!2417029) b!5725322))

(assert (= (and d!1806200 c!1010051) b!5725323))

(assert (= (and d!1806200 (not c!1010051)) b!5725325))

(assert (= (and b!5725325 c!1010052) b!5725321))

(assert (= (and b!5725325 (not c!1010052)) b!5725324))

(assert (= (or b!5725323 b!5725321) bm!437724))

(declare-fun m!6678158 () Bool)

(assert (=> b!5725322 m!6678158))

(declare-fun m!6678160 () Bool)

(assert (=> b!5725323 m!6678160))

(declare-fun m!6678164 () Bool)

(assert (=> bm!437724 m!6678164))

(assert (=> b!5724187 d!1806200))

(declare-fun b!5725359 () Bool)

(declare-fun e!3520515 () Bool)

(declare-fun call!437735 () Bool)

(assert (=> b!5725359 (= e!3520515 call!437735)))

(declare-fun bm!437730 () Bool)

(declare-fun call!437736 () Bool)

(declare-fun c!1010063 () Bool)

(assert (=> bm!437730 (= call!437736 (nullable!5753 (ite c!1010063 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun d!1806202 () Bool)

(declare-fun res!2417047 () Bool)

(declare-fun e!3520519 () Bool)

(assert (=> d!1806202 (=> res!2417047 e!3520519)))

(assert (=> d!1806202 (= res!2417047 ((_ is EmptyExpr!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> d!1806202 (= (nullableFct!1815 (h!69786 (exprs!5605 (h!69787 zl!343)))) e!3520519)))

(declare-fun b!5725360 () Bool)

(declare-fun e!3520517 () Bool)

(assert (=> b!5725360 (= e!3520517 e!3520515)))

(declare-fun res!2417044 () Bool)

(assert (=> b!5725360 (= res!2417044 call!437736)))

(assert (=> b!5725360 (=> (not res!2417044) (not e!3520515))))

(declare-fun b!5725361 () Bool)

(declare-fun e!3520518 () Bool)

(assert (=> b!5725361 (= e!3520517 e!3520518)))

(declare-fun res!2417046 () Bool)

(assert (=> b!5725361 (= res!2417046 call!437736)))

(assert (=> b!5725361 (=> res!2417046 e!3520518)))

(declare-fun b!5725362 () Bool)

(declare-fun e!3520516 () Bool)

(declare-fun e!3520520 () Bool)

(assert (=> b!5725362 (= e!3520516 e!3520520)))

(declare-fun res!2417043 () Bool)

(assert (=> b!5725362 (=> res!2417043 e!3520520)))

(assert (=> b!5725362 (= res!2417043 ((_ is Star!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5725363 () Bool)

(assert (=> b!5725363 (= e!3520520 e!3520517)))

(assert (=> b!5725363 (= c!1010063 ((_ is Union!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun bm!437731 () Bool)

(assert (=> bm!437731 (= call!437735 (nullable!5753 (ite c!1010063 (regTwo!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun b!5725364 () Bool)

(assert (=> b!5725364 (= e!3520519 e!3520516)))

(declare-fun res!2417045 () Bool)

(assert (=> b!5725364 (=> (not res!2417045) (not e!3520516))))

(assert (=> b!5725364 (= res!2417045 (and (not ((_ is EmptyLang!15721) (h!69786 (exprs!5605 (h!69787 zl!343))))) (not ((_ is ElementMatch!15721) (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun b!5725365 () Bool)

(assert (=> b!5725365 (= e!3520518 call!437735)))

(assert (= (and d!1806202 (not res!2417047)) b!5725364))

(assert (= (and b!5725364 res!2417045) b!5725362))

(assert (= (and b!5725362 (not res!2417043)) b!5725363))

(assert (= (and b!5725363 c!1010063) b!5725361))

(assert (= (and b!5725363 (not c!1010063)) b!5725360))

(assert (= (and b!5725361 (not res!2417046)) b!5725365))

(assert (= (and b!5725360 res!2417044) b!5725359))

(assert (= (or b!5725365 b!5725359) bm!437731))

(assert (= (or b!5725361 b!5725360) bm!437730))

(declare-fun m!6678208 () Bool)

(assert (=> bm!437730 m!6678208))

(declare-fun m!6678214 () Bool)

(assert (=> bm!437731 m!6678214))

(assert (=> d!1805680 d!1806202))

(declare-fun bm!437732 () Bool)

(declare-fun call!437737 () Bool)

(assert (=> bm!437732 (= call!437737 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun b!5725375 () Bool)

(declare-fun e!3520531 () Bool)

(declare-fun lt!2278868 () Bool)

(assert (=> b!5725375 (= e!3520531 (not lt!2278868))))

(declare-fun b!5725376 () Bool)

(declare-fun res!2417059 () Bool)

(declare-fun e!3520529 () Bool)

(assert (=> b!5725376 (=> (not res!2417059) (not e!3520529))))

(assert (=> b!5725376 (= res!2417059 (not call!437737))))

(declare-fun b!5725377 () Bool)

(declare-fun e!3520530 () Bool)

(assert (=> b!5725377 (= e!3520530 (= lt!2278868 call!437737))))

(declare-fun b!5725378 () Bool)

(declare-fun res!2417052 () Bool)

(declare-fun e!3520524 () Bool)

(assert (=> b!5725378 (=> res!2417052 e!3520524)))

(assert (=> b!5725378 (= res!2417052 (not ((_ is ElementMatch!15721) (derivativeStep!4522 lt!2278693 (head!12119 s!2326)))))))

(assert (=> b!5725378 (= e!3520531 e!3520524)))

(declare-fun b!5725379 () Bool)

(declare-fun e!3520525 () Bool)

(declare-fun e!3520528 () Bool)

(assert (=> b!5725379 (= e!3520525 e!3520528)))

(declare-fun res!2417058 () Bool)

(assert (=> b!5725379 (=> res!2417058 e!3520528)))

(assert (=> b!5725379 (= res!2417058 call!437737)))

(declare-fun b!5725380 () Bool)

(assert (=> b!5725380 (= e!3520524 e!3520525)))

(declare-fun res!2417054 () Bool)

(assert (=> b!5725380 (=> (not res!2417054) (not e!3520525))))

(assert (=> b!5725380 (= res!2417054 (not lt!2278868))))

(declare-fun b!5725381 () Bool)

(declare-fun res!2417055 () Bool)

(assert (=> b!5725381 (=> res!2417055 e!3520524)))

(assert (=> b!5725381 (= res!2417055 e!3520529)))

(declare-fun res!2417053 () Bool)

(assert (=> b!5725381 (=> (not res!2417053) (not e!3520529))))

(assert (=> b!5725381 (= res!2417053 lt!2278868)))

(declare-fun d!1806216 () Bool)

(assert (=> d!1806216 e!3520530))

(declare-fun c!1010068 () Bool)

(assert (=> d!1806216 (= c!1010068 ((_ is EmptyExpr!15721) (derivativeStep!4522 lt!2278693 (head!12119 s!2326))))))

(declare-fun e!3520527 () Bool)

(assert (=> d!1806216 (= lt!2278868 e!3520527)))

(declare-fun c!1010066 () Bool)

(assert (=> d!1806216 (= c!1010066 (isEmpty!35217 (tail!11214 s!2326)))))

(assert (=> d!1806216 (validRegex!7457 (derivativeStep!4522 lt!2278693 (head!12119 s!2326)))))

(assert (=> d!1806216 (= (matchR!7906 (derivativeStep!4522 lt!2278693 (head!12119 s!2326)) (tail!11214 s!2326)) lt!2278868)))

(declare-fun b!5725374 () Bool)

(assert (=> b!5725374 (= e!3520527 (nullable!5753 (derivativeStep!4522 lt!2278693 (head!12119 s!2326))))))

(declare-fun b!5725382 () Bool)

(assert (=> b!5725382 (= e!3520530 e!3520531)))

(declare-fun c!1010067 () Bool)

(assert (=> b!5725382 (= c!1010067 ((_ is EmptyLang!15721) (derivativeStep!4522 lt!2278693 (head!12119 s!2326))))))

(declare-fun b!5725383 () Bool)

(assert (=> b!5725383 (= e!3520527 (matchR!7906 (derivativeStep!4522 (derivativeStep!4522 lt!2278693 (head!12119 s!2326)) (head!12119 (tail!11214 s!2326))) (tail!11214 (tail!11214 s!2326))))))

(declare-fun b!5725384 () Bool)

(declare-fun res!2417057 () Bool)

(assert (=> b!5725384 (=> (not res!2417057) (not e!3520529))))

(assert (=> b!5725384 (= res!2417057 (isEmpty!35217 (tail!11214 (tail!11214 s!2326))))))

(declare-fun b!5725385 () Bool)

(assert (=> b!5725385 (= e!3520529 (= (head!12119 (tail!11214 s!2326)) (c!1009551 (derivativeStep!4522 lt!2278693 (head!12119 s!2326)))))))

(declare-fun b!5725386 () Bool)

(declare-fun res!2417056 () Bool)

(assert (=> b!5725386 (=> res!2417056 e!3520528)))

(assert (=> b!5725386 (= res!2417056 (not (isEmpty!35217 (tail!11214 (tail!11214 s!2326)))))))

(declare-fun b!5725387 () Bool)

(assert (=> b!5725387 (= e!3520528 (not (= (head!12119 (tail!11214 s!2326)) (c!1009551 (derivativeStep!4522 lt!2278693 (head!12119 s!2326))))))))

(assert (= (and d!1806216 c!1010066) b!5725374))

(assert (= (and d!1806216 (not c!1010066)) b!5725383))

(assert (= (and d!1806216 c!1010068) b!5725377))

(assert (= (and d!1806216 (not c!1010068)) b!5725382))

(assert (= (and b!5725382 c!1010067) b!5725375))

(assert (= (and b!5725382 (not c!1010067)) b!5725378))

(assert (= (and b!5725378 (not res!2417052)) b!5725381))

(assert (= (and b!5725381 res!2417053) b!5725376))

(assert (= (and b!5725376 res!2417059) b!5725384))

(assert (= (and b!5725384 res!2417057) b!5725385))

(assert (= (and b!5725381 (not res!2417055)) b!5725380))

(assert (= (and b!5725380 res!2417054) b!5725379))

(assert (= (and b!5725379 (not res!2417058)) b!5725386))

(assert (= (and b!5725386 (not res!2417056)) b!5725387))

(assert (= (or b!5725377 b!5725376 b!5725379) bm!437732))

(assert (=> bm!437732 m!6676884))

(assert (=> bm!437732 m!6677080))

(assert (=> b!5725374 m!6677150))

(declare-fun m!6678232 () Bool)

(assert (=> b!5725374 m!6678232))

(assert (=> b!5725383 m!6676884))

(declare-fun m!6678234 () Bool)

(assert (=> b!5725383 m!6678234))

(assert (=> b!5725383 m!6677150))

(assert (=> b!5725383 m!6678234))

(declare-fun m!6678236 () Bool)

(assert (=> b!5725383 m!6678236))

(assert (=> b!5725383 m!6676884))

(declare-fun m!6678238 () Bool)

(assert (=> b!5725383 m!6678238))

(assert (=> b!5725383 m!6678236))

(assert (=> b!5725383 m!6678238))

(declare-fun m!6678240 () Bool)

(assert (=> b!5725383 m!6678240))

(assert (=> b!5725385 m!6676884))

(assert (=> b!5725385 m!6678234))

(assert (=> b!5725384 m!6676884))

(assert (=> b!5725384 m!6678238))

(assert (=> b!5725384 m!6678238))

(declare-fun m!6678242 () Bool)

(assert (=> b!5725384 m!6678242))

(assert (=> d!1806216 m!6676884))

(assert (=> d!1806216 m!6677080))

(assert (=> d!1806216 m!6677150))

(declare-fun m!6678244 () Bool)

(assert (=> d!1806216 m!6678244))

(assert (=> b!5725386 m!6676884))

(assert (=> b!5725386 m!6678238))

(assert (=> b!5725386 m!6678238))

(assert (=> b!5725386 m!6678242))

(assert (=> b!5725387 m!6676884))

(assert (=> b!5725387 m!6678234))

(assert (=> b!5724395 d!1806216))

(declare-fun b!5725419 () Bool)

(declare-fun c!1010082 () Bool)

(assert (=> b!5725419 (= c!1010082 ((_ is Union!15721) lt!2278693))))

(declare-fun e!3520549 () Regex!15721)

(declare-fun e!3520551 () Regex!15721)

(assert (=> b!5725419 (= e!3520549 e!3520551)))

(declare-fun b!5725420 () Bool)

(declare-fun e!3520548 () Regex!15721)

(declare-fun call!437746 () Regex!15721)

(declare-fun call!437747 () Regex!15721)

(assert (=> b!5725420 (= e!3520548 (Union!15721 (Concat!24566 call!437746 (regTwo!31954 lt!2278693)) call!437747))))

(declare-fun b!5725421 () Bool)

(declare-fun call!437748 () Regex!15721)

(assert (=> b!5725421 (= e!3520551 (Union!15721 call!437748 call!437746))))

(declare-fun b!5725422 () Bool)

(assert (=> b!5725422 (= e!3520548 (Union!15721 (Concat!24566 call!437747 (regTwo!31954 lt!2278693)) EmptyLang!15721))))

(declare-fun d!1806220 () Bool)

(declare-fun lt!2278878 () Regex!15721)

(assert (=> d!1806220 (validRegex!7457 lt!2278878)))

(declare-fun e!3520550 () Regex!15721)

(assert (=> d!1806220 (= lt!2278878 e!3520550)))

(declare-fun c!1010084 () Bool)

(assert (=> d!1806220 (= c!1010084 (or ((_ is EmptyExpr!15721) lt!2278693) ((_ is EmptyLang!15721) lt!2278693)))))

(assert (=> d!1806220 (validRegex!7457 lt!2278693)))

(assert (=> d!1806220 (= (derivativeStep!4522 lt!2278693 (head!12119 s!2326)) lt!2278878)))

(declare-fun b!5725423 () Bool)

(declare-fun c!1010086 () Bool)

(assert (=> b!5725423 (= c!1010086 (nullable!5753 (regOne!31954 lt!2278693)))))

(declare-fun e!3520552 () Regex!15721)

(assert (=> b!5725423 (= e!3520552 e!3520548)))

(declare-fun b!5725424 () Bool)

(assert (=> b!5725424 (= e!3520549 (ite (= (head!12119 s!2326) (c!1009551 lt!2278693)) EmptyExpr!15721 EmptyLang!15721))))

(declare-fun b!5725425 () Bool)

(declare-fun call!437749 () Regex!15721)

(assert (=> b!5725425 (= e!3520552 (Concat!24566 call!437749 lt!2278693))))

(declare-fun b!5725426 () Bool)

(assert (=> b!5725426 (= e!3520551 e!3520552)))

(declare-fun c!1010085 () Bool)

(assert (=> b!5725426 (= c!1010085 ((_ is Star!15721) lt!2278693))))

(declare-fun b!5725427 () Bool)

(assert (=> b!5725427 (= e!3520550 e!3520549)))

(declare-fun c!1010083 () Bool)

(assert (=> b!5725427 (= c!1010083 ((_ is ElementMatch!15721) lt!2278693))))

(declare-fun b!5725428 () Bool)

(assert (=> b!5725428 (= e!3520550 EmptyLang!15721)))

(declare-fun bm!437741 () Bool)

(assert (=> bm!437741 (= call!437749 call!437748)))

(declare-fun bm!437742 () Bool)

(assert (=> bm!437742 (= call!437746 (derivativeStep!4522 (ite c!1010082 (regTwo!31955 lt!2278693) (regOne!31954 lt!2278693)) (head!12119 s!2326)))))

(declare-fun bm!437743 () Bool)

(assert (=> bm!437743 (= call!437748 (derivativeStep!4522 (ite c!1010082 (regOne!31955 lt!2278693) (ite c!1010085 (reg!16050 lt!2278693) (ite c!1010086 (regTwo!31954 lt!2278693) (regOne!31954 lt!2278693)))) (head!12119 s!2326)))))

(declare-fun bm!437744 () Bool)

(assert (=> bm!437744 (= call!437747 call!437749)))

(assert (= (and d!1806220 c!1010084) b!5725428))

(assert (= (and d!1806220 (not c!1010084)) b!5725427))

(assert (= (and b!5725427 c!1010083) b!5725424))

(assert (= (and b!5725427 (not c!1010083)) b!5725419))

(assert (= (and b!5725419 c!1010082) b!5725421))

(assert (= (and b!5725419 (not c!1010082)) b!5725426))

(assert (= (and b!5725426 c!1010085) b!5725425))

(assert (= (and b!5725426 (not c!1010085)) b!5725423))

(assert (= (and b!5725423 c!1010086) b!5725420))

(assert (= (and b!5725423 (not c!1010086)) b!5725422))

(assert (= (or b!5725420 b!5725422) bm!437744))

(assert (= (or b!5725425 bm!437744) bm!437741))

(assert (= (or b!5725421 b!5725420) bm!437742))

(assert (= (or b!5725421 bm!437741) bm!437743))

(declare-fun m!6678280 () Bool)

(assert (=> d!1806220 m!6678280))

(assert (=> d!1806220 m!6677154))

(declare-fun m!6678282 () Bool)

(assert (=> b!5725423 m!6678282))

(assert (=> bm!437742 m!6676880))

(declare-fun m!6678284 () Bool)

(assert (=> bm!437742 m!6678284))

(assert (=> bm!437743 m!6676880))

(declare-fun m!6678286 () Bool)

(assert (=> bm!437743 m!6678286))

(assert (=> b!5724395 d!1806220))

(assert (=> b!5724395 d!1806080))

(assert (=> b!5724395 d!1806046))

(declare-fun b!5725433 () Bool)

(declare-fun e!3520555 () (InoxSet Context!10210))

(declare-fun call!437750 () (InoxSet Context!10210))

(assert (=> b!5725433 (= e!3520555 call!437750)))

(declare-fun b!5725434 () Bool)

(declare-fun e!3520556 () Bool)

(assert (=> b!5725434 (= e!3520556 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343))))))))))

(declare-fun b!5725435 () Bool)

(declare-fun e!3520557 () (InoxSet Context!10210))

(assert (=> b!5725435 (= e!3520557 ((_ map or) call!437750 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343))))))) (h!69788 s!2326))))))

(declare-fun b!5725436 () Bool)

(assert (=> b!5725436 (= e!3520555 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1806230 () Bool)

(declare-fun c!1010087 () Bool)

(assert (=> d!1806230 (= c!1010087 e!3520556)))

(declare-fun res!2417069 () Bool)

(assert (=> d!1806230 (=> (not res!2417069) (not e!3520556))))

(assert (=> d!1806230 (= res!2417069 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))))))))

(assert (=> d!1806230 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))) (h!69788 s!2326)) e!3520557)))

(declare-fun b!5725437 () Bool)

(assert (=> b!5725437 (= e!3520557 e!3520555)))

(declare-fun c!1010088 () Bool)

(assert (=> b!5725437 (= c!1010088 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun bm!437745 () Bool)

(assert (=> bm!437745 (= call!437750 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343)))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (h!69787 zl!343))))))) (h!69788 s!2326)))))

(assert (= (and d!1806230 res!2417069) b!5725434))

(assert (= (and d!1806230 c!1010087) b!5725435))

(assert (= (and d!1806230 (not c!1010087)) b!5725437))

(assert (= (and b!5725437 c!1010088) b!5725433))

(assert (= (and b!5725437 (not c!1010088)) b!5725436))

(assert (= (or b!5725435 b!5725433) bm!437745))

(declare-fun m!6678288 () Bool)

(assert (=> b!5725434 m!6678288))

(declare-fun m!6678290 () Bool)

(assert (=> b!5725435 m!6678290))

(declare-fun m!6678292 () Bool)

(assert (=> bm!437745 m!6678292))

(assert (=> b!5724182 d!1806230))

(assert (=> b!5724309 d!1806044))

(assert (=> b!5724309 d!1806046))

(declare-fun d!1806232 () Bool)

(declare-fun c!1010089 () Bool)

(assert (=> d!1806232 (= c!1010089 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun e!3520558 () Bool)

(assert (=> d!1806232 (= (matchZipper!1859 (derivationStepZipper!1804 lt!2278675 (head!12119 s!2326)) (tail!11214 s!2326)) e!3520558)))

(declare-fun b!5725438 () Bool)

(assert (=> b!5725438 (= e!3520558 (nullableZipper!1669 (derivationStepZipper!1804 lt!2278675 (head!12119 s!2326))))))

(declare-fun b!5725439 () Bool)

(assert (=> b!5725439 (= e!3520558 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 lt!2278675 (head!12119 s!2326)) (head!12119 (tail!11214 s!2326))) (tail!11214 (tail!11214 s!2326))))))

(assert (= (and d!1806232 c!1010089) b!5725438))

(assert (= (and d!1806232 (not c!1010089)) b!5725439))

(assert (=> d!1806232 m!6676884))

(assert (=> d!1806232 m!6677080))

(assert (=> b!5725438 m!6676882))

(declare-fun m!6678294 () Bool)

(assert (=> b!5725438 m!6678294))

(assert (=> b!5725439 m!6676884))

(assert (=> b!5725439 m!6678234))

(assert (=> b!5725439 m!6676882))

(assert (=> b!5725439 m!6678234))

(declare-fun m!6678296 () Bool)

(assert (=> b!5725439 m!6678296))

(assert (=> b!5725439 m!6676884))

(assert (=> b!5725439 m!6678238))

(assert (=> b!5725439 m!6678296))

(assert (=> b!5725439 m!6678238))

(declare-fun m!6678298 () Bool)

(assert (=> b!5725439 m!6678298))

(assert (=> b!5724027 d!1806232))

(declare-fun bs!1338847 () Bool)

(declare-fun d!1806234 () Bool)

(assert (= bs!1338847 (and d!1806234 b!5723625)))

(declare-fun lambda!309508 () Int)

(assert (=> bs!1338847 (= (= (head!12119 s!2326) (h!69788 s!2326)) (= lambda!309508 lambda!309369))))

(declare-fun bs!1338848 () Bool)

(assert (= bs!1338848 (and d!1806234 d!1805660)))

(assert (=> bs!1338848 (= (= (head!12119 s!2326) (h!69788 s!2326)) (= lambda!309508 lambda!309420))))

(declare-fun bs!1338850 () Bool)

(assert (= bs!1338850 (and d!1806234 d!1806028)))

(assert (=> bs!1338850 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309508 lambda!309478))))

(declare-fun bs!1338851 () Bool)

(assert (= bs!1338851 (and d!1806234 d!1806140)))

(assert (=> bs!1338851 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309508 lambda!309494))))

(declare-fun bs!1338853 () Bool)

(assert (= bs!1338853 (and d!1806234 d!1805972)))

(assert (=> bs!1338853 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309508 lambda!309475))))

(assert (=> d!1806234 true))

(assert (=> d!1806234 (= (derivationStepZipper!1804 lt!2278675 (head!12119 s!2326)) (flatMap!1334 lt!2278675 lambda!309508))))

(declare-fun bs!1338855 () Bool)

(assert (= bs!1338855 d!1806234))

(declare-fun m!6678300 () Bool)

(assert (=> bs!1338855 m!6678300))

(assert (=> b!5724027 d!1806234))

(assert (=> b!5724027 d!1806080))

(assert (=> b!5724027 d!1806046))

(declare-fun bs!1338862 () Bool)

(declare-fun b!5725445 () Bool)

(assert (= bs!1338862 (and b!5725445 d!1805720)))

(declare-fun lambda!309509 () Int)

(assert (=> bs!1338862 (not (= lambda!309509 lambda!309433))))

(declare-fun bs!1338865 () Bool)

(assert (= bs!1338865 (and b!5725445 b!5725157)))

(assert (=> bs!1338865 (= (and (= (reg!16050 (regOne!31955 lt!2278693)) (reg!16050 (regTwo!31955 lt!2278693))) (= (regOne!31955 lt!2278693) (regTwo!31955 lt!2278693))) (= lambda!309509 lambda!309490))))

(declare-fun bs!1338867 () Bool)

(assert (= bs!1338867 (and b!5725445 b!5724405)))

(assert (=> bs!1338867 (= (and (= (reg!16050 (regOne!31955 lt!2278693)) (reg!16050 lt!2278693)) (= (regOne!31955 lt!2278693) lt!2278693)) (= lambda!309509 lambda!309446))))

(declare-fun bs!1338869 () Bool)

(assert (= bs!1338869 (and b!5725445 b!5723592)))

(assert (=> bs!1338869 (not (= lambda!309509 lambda!309367))))

(declare-fun bs!1338870 () Bool)

(assert (= bs!1338870 (and b!5725445 b!5724262)))

(assert (=> bs!1338870 (not (= lambda!309509 lambda!309430))))

(declare-fun bs!1338872 () Bool)

(assert (= bs!1338872 (and b!5725445 b!5725156)))

(assert (=> bs!1338872 (not (= lambda!309509 lambda!309492))))

(declare-fun bs!1338873 () Bool)

(assert (= bs!1338873 (and b!5725445 d!1805722)))

(assert (=> bs!1338873 (not (= lambda!309509 lambda!309438))))

(assert (=> bs!1338869 (not (= lambda!309509 lambda!309368))))

(declare-fun bs!1338875 () Bool)

(assert (= bs!1338875 (and b!5725445 b!5724404)))

(assert (=> bs!1338875 (not (= lambda!309509 lambda!309447))))

(declare-fun bs!1338876 () Bool)

(assert (= bs!1338876 (and b!5725445 b!5724263)))

(assert (=> bs!1338876 (= (and (= (reg!16050 (regOne!31955 lt!2278693)) (reg!16050 r!7292)) (= (regOne!31955 lt!2278693) r!7292)) (= lambda!309509 lambda!309429))))

(assert (=> bs!1338873 (not (= lambda!309509 lambda!309439))))

(assert (=> b!5725445 true))

(assert (=> b!5725445 true))

(declare-fun bs!1338878 () Bool)

(declare-fun b!5725444 () Bool)

(assert (= bs!1338878 (and b!5725444 d!1805720)))

(declare-fun lambda!309510 () Int)

(assert (=> bs!1338878 (not (= lambda!309510 lambda!309433))))

(declare-fun bs!1338879 () Bool)

(assert (= bs!1338879 (and b!5725444 b!5725157)))

(assert (=> bs!1338879 (not (= lambda!309510 lambda!309490))))

(declare-fun bs!1338880 () Bool)

(assert (= bs!1338880 (and b!5725444 b!5724405)))

(assert (=> bs!1338880 (not (= lambda!309510 lambda!309446))))

(declare-fun bs!1338881 () Bool)

(assert (= bs!1338881 (and b!5725444 b!5723592)))

(assert (=> bs!1338881 (not (= lambda!309510 lambda!309367))))

(declare-fun bs!1338882 () Bool)

(assert (= bs!1338882 (and b!5725444 b!5724262)))

(assert (=> bs!1338882 (= (and (= (regOne!31954 (regOne!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309510 lambda!309430))))

(declare-fun bs!1338883 () Bool)

(assert (= bs!1338883 (and b!5725444 b!5725445)))

(assert (=> bs!1338883 (not (= lambda!309510 lambda!309509))))

(declare-fun bs!1338884 () Bool)

(assert (= bs!1338884 (and b!5725444 b!5725156)))

(assert (=> bs!1338884 (= (and (= (regOne!31954 (regOne!31955 lt!2278693)) (regOne!31954 (regTwo!31955 lt!2278693))) (= (regTwo!31954 (regOne!31955 lt!2278693)) (regTwo!31954 (regTwo!31955 lt!2278693)))) (= lambda!309510 lambda!309492))))

(declare-fun bs!1338885 () Bool)

(assert (= bs!1338885 (and b!5725444 d!1805722)))

(assert (=> bs!1338885 (not (= lambda!309510 lambda!309438))))

(assert (=> bs!1338881 (= (and (= (regOne!31954 (regOne!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309510 lambda!309368))))

(declare-fun bs!1338886 () Bool)

(assert (= bs!1338886 (and b!5725444 b!5724404)))

(assert (=> bs!1338886 (= (and (= (regOne!31954 (regOne!31955 lt!2278693)) (regOne!31954 lt!2278693)) (= (regTwo!31954 (regOne!31955 lt!2278693)) (regTwo!31954 lt!2278693))) (= lambda!309510 lambda!309447))))

(declare-fun bs!1338887 () Bool)

(assert (= bs!1338887 (and b!5725444 b!5724263)))

(assert (=> bs!1338887 (not (= lambda!309510 lambda!309429))))

(assert (=> bs!1338885 (= (and (= (regOne!31954 (regOne!31955 lt!2278693)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 lt!2278693)) (regTwo!31954 r!7292))) (= lambda!309510 lambda!309439))))

(assert (=> b!5725444 true))

(assert (=> b!5725444 true))

(declare-fun b!5725440 () Bool)

(declare-fun e!3520562 () Bool)

(declare-fun e!3520561 () Bool)

(assert (=> b!5725440 (= e!3520562 e!3520561)))

(declare-fun res!2417070 () Bool)

(assert (=> b!5725440 (= res!2417070 (not ((_ is EmptyLang!15721) (regOne!31955 lt!2278693))))))

(assert (=> b!5725440 (=> (not res!2417070) (not e!3520561))))

(declare-fun b!5725441 () Bool)

(declare-fun res!2417071 () Bool)

(declare-fun e!3520564 () Bool)

(assert (=> b!5725441 (=> res!2417071 e!3520564)))

(declare-fun call!437751 () Bool)

(assert (=> b!5725441 (= res!2417071 call!437751)))

(declare-fun e!3520560 () Bool)

(assert (=> b!5725441 (= e!3520560 e!3520564)))

(declare-fun b!5725442 () Bool)

(declare-fun e!3520563 () Bool)

(assert (=> b!5725442 (= e!3520563 (matchRSpec!2824 (regTwo!31955 (regOne!31955 lt!2278693)) s!2326))))

(declare-fun d!1806236 () Bool)

(declare-fun c!1010090 () Bool)

(assert (=> d!1806236 (= c!1010090 ((_ is EmptyExpr!15721) (regOne!31955 lt!2278693)))))

(assert (=> d!1806236 (= (matchRSpec!2824 (regOne!31955 lt!2278693) s!2326) e!3520562)))

(declare-fun b!5725443 () Bool)

(declare-fun c!1010093 () Bool)

(assert (=> b!5725443 (= c!1010093 ((_ is ElementMatch!15721) (regOne!31955 lt!2278693)))))

(declare-fun e!3520559 () Bool)

(assert (=> b!5725443 (= e!3520561 e!3520559)))

(declare-fun call!437752 () Bool)

(assert (=> b!5725444 (= e!3520560 call!437752)))

(declare-fun bm!437746 () Bool)

(declare-fun c!1010091 () Bool)

(assert (=> bm!437746 (= call!437752 (Exists!2821 (ite c!1010091 lambda!309509 lambda!309510)))))

(assert (=> b!5725445 (= e!3520564 call!437752)))

(declare-fun b!5725446 () Bool)

(declare-fun e!3520565 () Bool)

(assert (=> b!5725446 (= e!3520565 e!3520560)))

(assert (=> b!5725446 (= c!1010091 ((_ is Star!15721) (regOne!31955 lt!2278693)))))

(declare-fun b!5725447 () Bool)

(assert (=> b!5725447 (= e!3520562 call!437751)))

(declare-fun b!5725448 () Bool)

(assert (=> b!5725448 (= e!3520559 (= s!2326 (Cons!63340 (c!1009551 (regOne!31955 lt!2278693)) Nil!63340)))))

(declare-fun b!5725449 () Bool)

(declare-fun c!1010092 () Bool)

(assert (=> b!5725449 (= c!1010092 ((_ is Union!15721) (regOne!31955 lt!2278693)))))

(assert (=> b!5725449 (= e!3520559 e!3520565)))

(declare-fun b!5725450 () Bool)

(assert (=> b!5725450 (= e!3520565 e!3520563)))

(declare-fun res!2417072 () Bool)

(assert (=> b!5725450 (= res!2417072 (matchRSpec!2824 (regOne!31955 (regOne!31955 lt!2278693)) s!2326))))

(assert (=> b!5725450 (=> res!2417072 e!3520563)))

(declare-fun bm!437747 () Bool)

(assert (=> bm!437747 (= call!437751 (isEmpty!35217 s!2326))))

(assert (= (and d!1806236 c!1010090) b!5725447))

(assert (= (and d!1806236 (not c!1010090)) b!5725440))

(assert (= (and b!5725440 res!2417070) b!5725443))

(assert (= (and b!5725443 c!1010093) b!5725448))

(assert (= (and b!5725443 (not c!1010093)) b!5725449))

(assert (= (and b!5725449 c!1010092) b!5725450))

(assert (= (and b!5725449 (not c!1010092)) b!5725446))

(assert (= (and b!5725450 (not res!2417072)) b!5725442))

(assert (= (and b!5725446 c!1010091) b!5725441))

(assert (= (and b!5725446 (not c!1010091)) b!5725444))

(assert (= (and b!5725441 (not res!2417071)) b!5725445))

(assert (= (or b!5725445 b!5725444) bm!437746))

(assert (= (or b!5725447 b!5725441) bm!437747))

(declare-fun m!6678306 () Bool)

(assert (=> b!5725442 m!6678306))

(declare-fun m!6678308 () Bool)

(assert (=> bm!437746 m!6678308))

(declare-fun m!6678310 () Bool)

(assert (=> b!5725450 m!6678310))

(assert (=> bm!437747 m!6676876))

(assert (=> b!5724410 d!1806236))

(declare-fun d!1806240 () Bool)

(assert (=> d!1806240 true))

(assert (=> d!1806240 true))

(declare-fun res!2417075 () Bool)

(assert (=> d!1806240 (= (choose!43286 lambda!309367) res!2417075)))

(assert (=> d!1805718 d!1806240))

(declare-fun d!1806242 () Bool)

(assert (=> d!1806242 (= (Exists!2821 lambda!309438) (choose!43286 lambda!309438))))

(declare-fun bs!1338888 () Bool)

(assert (= bs!1338888 d!1806242))

(declare-fun m!6678312 () Bool)

(assert (=> bs!1338888 m!6678312))

(assert (=> d!1805722 d!1806242))

(declare-fun d!1806244 () Bool)

(assert (=> d!1806244 (= (Exists!2821 lambda!309439) (choose!43286 lambda!309439))))

(declare-fun bs!1338889 () Bool)

(assert (= bs!1338889 d!1806244))

(declare-fun m!6678314 () Bool)

(assert (=> bs!1338889 m!6678314))

(assert (=> d!1805722 d!1806244))

(declare-fun bs!1338897 () Bool)

(declare-fun d!1806246 () Bool)

(assert (= bs!1338897 (and d!1806246 d!1805720)))

(declare-fun lambda!309515 () Int)

(assert (=> bs!1338897 (= lambda!309515 lambda!309433)))

(declare-fun bs!1338898 () Bool)

(assert (= bs!1338898 (and d!1806246 b!5725157)))

(assert (=> bs!1338898 (not (= lambda!309515 lambda!309490))))

(declare-fun bs!1338899 () Bool)

(assert (= bs!1338899 (and d!1806246 b!5724405)))

(assert (=> bs!1338899 (not (= lambda!309515 lambda!309446))))

(declare-fun bs!1338900 () Bool)

(assert (= bs!1338900 (and d!1806246 b!5723592)))

(assert (=> bs!1338900 (= lambda!309515 lambda!309367)))

(declare-fun bs!1338901 () Bool)

(assert (= bs!1338901 (and d!1806246 b!5724262)))

(assert (=> bs!1338901 (not (= lambda!309515 lambda!309430))))

(declare-fun bs!1338902 () Bool)

(assert (= bs!1338902 (and d!1806246 b!5725445)))

(assert (=> bs!1338902 (not (= lambda!309515 lambda!309509))))

(declare-fun bs!1338903 () Bool)

(assert (= bs!1338903 (and d!1806246 b!5725444)))

(assert (=> bs!1338903 (not (= lambda!309515 lambda!309510))))

(declare-fun bs!1338904 () Bool)

(assert (= bs!1338904 (and d!1806246 b!5725156)))

(assert (=> bs!1338904 (not (= lambda!309515 lambda!309492))))

(declare-fun bs!1338905 () Bool)

(assert (= bs!1338905 (and d!1806246 d!1805722)))

(assert (=> bs!1338905 (= lambda!309515 lambda!309438)))

(assert (=> bs!1338900 (not (= lambda!309515 lambda!309368))))

(declare-fun bs!1338906 () Bool)

(assert (= bs!1338906 (and d!1806246 b!5724404)))

(assert (=> bs!1338906 (not (= lambda!309515 lambda!309447))))

(declare-fun bs!1338907 () Bool)

(assert (= bs!1338907 (and d!1806246 b!5724263)))

(assert (=> bs!1338907 (not (= lambda!309515 lambda!309429))))

(assert (=> bs!1338905 (not (= lambda!309515 lambda!309439))))

(assert (=> d!1806246 true))

(assert (=> d!1806246 true))

(assert (=> d!1806246 true))

(declare-fun lambda!309516 () Int)

(assert (=> bs!1338897 (not (= lambda!309516 lambda!309433))))

(assert (=> bs!1338898 (not (= lambda!309516 lambda!309490))))

(assert (=> bs!1338899 (not (= lambda!309516 lambda!309446))))

(assert (=> bs!1338900 (not (= lambda!309516 lambda!309367))))

(declare-fun bs!1338908 () Bool)

(assert (= bs!1338908 d!1806246))

(assert (=> bs!1338908 (not (= lambda!309516 lambda!309515))))

(assert (=> bs!1338901 (= lambda!309516 lambda!309430)))

(assert (=> bs!1338902 (not (= lambda!309516 lambda!309509))))

(assert (=> bs!1338903 (= (and (= (regOne!31954 r!7292) (regOne!31954 (regOne!31955 lt!2278693))) (= (regTwo!31954 r!7292) (regTwo!31954 (regOne!31955 lt!2278693)))) (= lambda!309516 lambda!309510))))

(assert (=> bs!1338904 (= (and (= (regOne!31954 r!7292) (regOne!31954 (regTwo!31955 lt!2278693))) (= (regTwo!31954 r!7292) (regTwo!31954 (regTwo!31955 lt!2278693)))) (= lambda!309516 lambda!309492))))

(assert (=> bs!1338905 (not (= lambda!309516 lambda!309438))))

(assert (=> bs!1338900 (= lambda!309516 lambda!309368)))

(assert (=> bs!1338906 (= (and (= (regOne!31954 r!7292) (regOne!31954 lt!2278693)) (= (regTwo!31954 r!7292) (regTwo!31954 lt!2278693))) (= lambda!309516 lambda!309447))))

(assert (=> bs!1338907 (not (= lambda!309516 lambda!309429))))

(assert (=> bs!1338905 (= lambda!309516 lambda!309439)))

(assert (=> d!1806246 true))

(assert (=> d!1806246 true))

(assert (=> d!1806246 true))

(assert (=> d!1806246 (= (Exists!2821 lambda!309515) (Exists!2821 lambda!309516))))

(assert (=> d!1806246 true))

(declare-fun _$90!1483 () Unit!156416)

(assert (=> d!1806246 (= (choose!43288 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326) _$90!1483)))

(declare-fun m!6678332 () Bool)

(assert (=> bs!1338908 m!6678332))

(declare-fun m!6678334 () Bool)

(assert (=> bs!1338908 m!6678334))

(assert (=> d!1805722 d!1806246))

(declare-fun b!5725575 () Bool)

(declare-fun res!2417086 () Bool)

(declare-fun e!3520606 () Bool)

(assert (=> b!5725575 (=> (not res!2417086) (not e!3520606))))

(declare-fun call!437753 () Bool)

(assert (=> b!5725575 (= res!2417086 call!437753)))

(declare-fun e!3520607 () Bool)

(assert (=> b!5725575 (= e!3520607 e!3520606)))

(declare-fun b!5725576 () Bool)

(declare-fun e!3520611 () Bool)

(declare-fun e!3520605 () Bool)

(assert (=> b!5725576 (= e!3520611 e!3520605)))

(declare-fun c!1010094 () Bool)

(assert (=> b!5725576 (= c!1010094 ((_ is Star!15721) (regOne!31954 r!7292)))))

(declare-fun b!5725577 () Bool)

(declare-fun e!3520609 () Bool)

(declare-fun call!437755 () Bool)

(assert (=> b!5725577 (= e!3520609 call!437755)))

(declare-fun b!5725578 () Bool)

(declare-fun e!3520608 () Bool)

(declare-fun e!3520610 () Bool)

(assert (=> b!5725578 (= e!3520608 e!3520610)))

(declare-fun res!2417087 () Bool)

(assert (=> b!5725578 (=> (not res!2417087) (not e!3520610))))

(assert (=> b!5725578 (= res!2417087 call!437753)))

(declare-fun b!5725579 () Bool)

(declare-fun call!437754 () Bool)

(assert (=> b!5725579 (= e!3520610 call!437754)))

(declare-fun bm!437749 () Bool)

(declare-fun c!1010095 () Bool)

(assert (=> bm!437749 (= call!437755 (validRegex!7457 (ite c!1010094 (reg!16050 (regOne!31954 r!7292)) (ite c!1010095 (regTwo!31955 (regOne!31954 r!7292)) (regTwo!31954 (regOne!31954 r!7292))))))))

(declare-fun b!5725580 () Bool)

(assert (=> b!5725580 (= e!3520605 e!3520607)))

(assert (=> b!5725580 (= c!1010095 ((_ is Union!15721) (regOne!31954 r!7292)))))

(declare-fun bm!437748 () Bool)

(assert (=> bm!437748 (= call!437753 (validRegex!7457 (ite c!1010095 (regOne!31955 (regOne!31954 r!7292)) (regOne!31954 (regOne!31954 r!7292)))))))

(declare-fun d!1806262 () Bool)

(declare-fun res!2417088 () Bool)

(assert (=> d!1806262 (=> res!2417088 e!3520611)))

(assert (=> d!1806262 (= res!2417088 ((_ is ElementMatch!15721) (regOne!31954 r!7292)))))

(assert (=> d!1806262 (= (validRegex!7457 (regOne!31954 r!7292)) e!3520611)))

(declare-fun b!5725581 () Bool)

(assert (=> b!5725581 (= e!3520606 call!437754)))

(declare-fun b!5725582 () Bool)

(assert (=> b!5725582 (= e!3520605 e!3520609)))

(declare-fun res!2417084 () Bool)

(assert (=> b!5725582 (= res!2417084 (not (nullable!5753 (reg!16050 (regOne!31954 r!7292)))))))

(assert (=> b!5725582 (=> (not res!2417084) (not e!3520609))))

(declare-fun b!5725583 () Bool)

(declare-fun res!2417085 () Bool)

(assert (=> b!5725583 (=> res!2417085 e!3520608)))

(assert (=> b!5725583 (= res!2417085 (not ((_ is Concat!24566) (regOne!31954 r!7292))))))

(assert (=> b!5725583 (= e!3520607 e!3520608)))

(declare-fun bm!437750 () Bool)

(assert (=> bm!437750 (= call!437754 call!437755)))

(assert (= (and d!1806262 (not res!2417088)) b!5725576))

(assert (= (and b!5725576 c!1010094) b!5725582))

(assert (= (and b!5725576 (not c!1010094)) b!5725580))

(assert (= (and b!5725582 res!2417084) b!5725577))

(assert (= (and b!5725580 c!1010095) b!5725575))

(assert (= (and b!5725580 (not c!1010095)) b!5725583))

(assert (= (and b!5725575 res!2417086) b!5725581))

(assert (= (and b!5725583 (not res!2417085)) b!5725578))

(assert (= (and b!5725578 res!2417087) b!5725579))

(assert (= (or b!5725581 b!5725579) bm!437750))

(assert (= (or b!5725575 b!5725578) bm!437748))

(assert (= (or b!5725577 bm!437750) bm!437749))

(declare-fun m!6678336 () Bool)

(assert (=> bm!437749 m!6678336))

(declare-fun m!6678338 () Bool)

(assert (=> bm!437748 m!6678338))

(declare-fun m!6678340 () Bool)

(assert (=> b!5725582 m!6678340))

(assert (=> d!1805722 d!1806262))

(declare-fun d!1806264 () Bool)

(assert (=> d!1806264 (= (flatMap!1334 lt!2278675 lambda!309420) (choose!43281 lt!2278675 lambda!309420))))

(declare-fun bs!1338909 () Bool)

(assert (= bs!1338909 d!1806264))

(declare-fun m!6678342 () Bool)

(assert (=> bs!1338909 m!6678342))

(assert (=> d!1805660 d!1806264))

(assert (=> d!1805658 d!1805654))

(declare-fun d!1806266 () Bool)

(assert (=> d!1806266 (= (flatMap!1334 lt!2278675 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278666))))

(assert (=> d!1806266 true))

(declare-fun _$13!2421 () Unit!156416)

(assert (=> d!1806266 (= (choose!43283 lt!2278675 lt!2278666 lambda!309369) _$13!2421)))

(declare-fun b_lambda!216371 () Bool)

(assert (=> (not b_lambda!216371) (not d!1806266)))

(declare-fun bs!1338910 () Bool)

(assert (= bs!1338910 d!1806266))

(assert (=> bs!1338910 m!6676470))

(assert (=> bs!1338910 m!6676952))

(assert (=> d!1805658 d!1806266))

(declare-fun bs!1338911 () Bool)

(declare-fun d!1806268 () Bool)

(assert (= bs!1338911 (and d!1806268 d!1806034)))

(declare-fun lambda!309517 () Int)

(assert (=> bs!1338911 (= lambda!309517 lambda!309479)))

(declare-fun bs!1338912 () Bool)

(assert (= bs!1338912 (and d!1806268 d!1805728)))

(assert (=> bs!1338912 (= lambda!309517 lambda!309442)))

(declare-fun bs!1338913 () Bool)

(assert (= bs!1338913 (and d!1806268 b!5723588)))

(assert (=> bs!1338913 (= lambda!309517 lambda!309371)))

(declare-fun bs!1338914 () Bool)

(assert (= bs!1338914 (and d!1806268 d!1806170)))

(assert (=> bs!1338914 (= lambda!309517 lambda!309499)))

(declare-fun bs!1338915 () Bool)

(assert (= bs!1338915 (and d!1806268 d!1806056)))

(assert (=> bs!1338915 (= lambda!309517 lambda!309481)))

(declare-fun bs!1338916 () Bool)

(assert (= bs!1338916 (and d!1806268 d!1806052)))

(assert (=> bs!1338916 (= lambda!309517 lambda!309480)))

(declare-fun bs!1338917 () Bool)

(assert (= bs!1338917 (and d!1806268 d!1805580)))

(assert (=> bs!1338917 (= lambda!309517 lambda!309402)))

(declare-fun bs!1338918 () Bool)

(assert (= bs!1338918 (and d!1806268 d!1806154)))

(assert (=> bs!1338918 (= lambda!309517 lambda!309497)))

(declare-fun bs!1338919 () Bool)

(assert (= bs!1338919 (and d!1806268 d!1806158)))

(assert (=> bs!1338919 (= lambda!309517 lambda!309498)))

(declare-fun bs!1338920 () Bool)

(assert (= bs!1338920 (and d!1806268 d!1805662)))

(assert (=> bs!1338920 (= lambda!309517 lambda!309423)))

(declare-fun bs!1338921 () Bool)

(assert (= bs!1338921 (and d!1806268 d!1805682)))

(assert (=> bs!1338921 (= lambda!309517 lambda!309424)))

(declare-fun bs!1338922 () Bool)

(assert (= bs!1338922 (and d!1806268 d!1805730)))

(assert (=> bs!1338922 (= lambda!309517 lambda!309445)))

(declare-fun bs!1338923 () Bool)

(assert (= bs!1338923 (and d!1806268 d!1806178)))

(assert (=> bs!1338923 (= lambda!309517 lambda!309500)))

(declare-fun b!5725584 () Bool)

(declare-fun e!3520613 () Bool)

(declare-fun lt!2278879 () Regex!15721)

(assert (=> b!5725584 (= e!3520613 (isUnion!668 lt!2278879))))

(declare-fun b!5725585 () Bool)

(declare-fun e!3520614 () Bool)

(assert (=> b!5725585 (= e!3520614 e!3520613)))

(declare-fun c!1010096 () Bool)

(assert (=> b!5725585 (= c!1010096 (isEmpty!35214 (tail!11213 (t!376788 (unfocusZipperList!1149 zl!343)))))))

(declare-fun b!5725586 () Bool)

(assert (=> b!5725586 (= e!3520613 (= lt!2278879 (head!12118 (t!376788 (unfocusZipperList!1149 zl!343)))))))

(declare-fun b!5725587 () Bool)

(declare-fun e!3520616 () Regex!15721)

(declare-fun e!3520617 () Regex!15721)

(assert (=> b!5725587 (= e!3520616 e!3520617)))

(declare-fun c!1010097 () Bool)

(assert (=> b!5725587 (= c!1010097 ((_ is Cons!63338) (t!376788 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5725588 () Bool)

(assert (=> b!5725588 (= e!3520617 EmptyLang!15721)))

(declare-fun b!5725589 () Bool)

(declare-fun e!3520612 () Bool)

(assert (=> b!5725589 (= e!3520612 e!3520614)))

(declare-fun c!1010099 () Bool)

(assert (=> b!5725589 (= c!1010099 (isEmpty!35214 (t!376788 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5725590 () Bool)

(assert (=> b!5725590 (= e!3520616 (h!69786 (t!376788 (unfocusZipperList!1149 zl!343))))))

(declare-fun b!5725591 () Bool)

(assert (=> b!5725591 (= e!3520614 (isEmptyLang!1238 lt!2278879))))

(assert (=> d!1806268 e!3520612))

(declare-fun res!2417090 () Bool)

(assert (=> d!1806268 (=> (not res!2417090) (not e!3520612))))

(assert (=> d!1806268 (= res!2417090 (validRegex!7457 lt!2278879))))

(assert (=> d!1806268 (= lt!2278879 e!3520616)))

(declare-fun c!1010098 () Bool)

(declare-fun e!3520615 () Bool)

(assert (=> d!1806268 (= c!1010098 e!3520615)))

(declare-fun res!2417089 () Bool)

(assert (=> d!1806268 (=> (not res!2417089) (not e!3520615))))

(assert (=> d!1806268 (= res!2417089 ((_ is Cons!63338) (t!376788 (unfocusZipperList!1149 zl!343))))))

(assert (=> d!1806268 (forall!14854 (t!376788 (unfocusZipperList!1149 zl!343)) lambda!309517)))

(assert (=> d!1806268 (= (generalisedUnion!1584 (t!376788 (unfocusZipperList!1149 zl!343))) lt!2278879)))

(declare-fun b!5725592 () Bool)

(assert (=> b!5725592 (= e!3520615 (isEmpty!35214 (t!376788 (t!376788 (unfocusZipperList!1149 zl!343)))))))

(declare-fun b!5725593 () Bool)

(assert (=> b!5725593 (= e!3520617 (Union!15721 (h!69786 (t!376788 (unfocusZipperList!1149 zl!343))) (generalisedUnion!1584 (t!376788 (t!376788 (unfocusZipperList!1149 zl!343))))))))

(assert (= (and d!1806268 res!2417089) b!5725592))

(assert (= (and d!1806268 c!1010098) b!5725590))

(assert (= (and d!1806268 (not c!1010098)) b!5725587))

(assert (= (and b!5725587 c!1010097) b!5725593))

(assert (= (and b!5725587 (not c!1010097)) b!5725588))

(assert (= (and d!1806268 res!2417090) b!5725589))

(assert (= (and b!5725589 c!1010099) b!5725591))

(assert (= (and b!5725589 (not c!1010099)) b!5725585))

(assert (= (and b!5725585 c!1010096) b!5725586))

(assert (= (and b!5725585 (not c!1010096)) b!5725584))

(declare-fun m!6678344 () Bool)

(assert (=> b!5725585 m!6678344))

(assert (=> b!5725585 m!6678344))

(declare-fun m!6678346 () Bool)

(assert (=> b!5725585 m!6678346))

(declare-fun m!6678348 () Bool)

(assert (=> b!5725593 m!6678348))

(declare-fun m!6678350 () Bool)

(assert (=> b!5725584 m!6678350))

(assert (=> b!5725589 m!6677134))

(declare-fun m!6678352 () Bool)

(assert (=> b!5725592 m!6678352))

(declare-fun m!6678354 () Bool)

(assert (=> d!1806268 m!6678354))

(declare-fun m!6678356 () Bool)

(assert (=> d!1806268 m!6678356))

(declare-fun m!6678358 () Bool)

(assert (=> b!5725591 m!6678358))

(declare-fun m!6678360 () Bool)

(assert (=> b!5725586 m!6678360))

(assert (=> b!5724379 d!1806268))

(declare-fun b!5725596 () Bool)

(declare-fun res!2417091 () Bool)

(declare-fun e!3520618 () Bool)

(assert (=> b!5725596 (=> (not res!2417091) (not e!3520618))))

(declare-fun lt!2278880 () List!63462)

(assert (=> b!5725596 (= res!2417091 (= (size!40031 lt!2278880) (+ (size!40031 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))) (size!40031 lt!2278663))))))

(declare-fun d!1806270 () Bool)

(assert (=> d!1806270 e!3520618))

(declare-fun res!2417092 () Bool)

(assert (=> d!1806270 (=> (not res!2417092) (not e!3520618))))

(assert (=> d!1806270 (= res!2417092 (= (content!11512 lt!2278880) ((_ map or) (content!11512 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))) (content!11512 lt!2278663))))))

(declare-fun e!3520619 () List!63462)

(assert (=> d!1806270 (= lt!2278880 e!3520619)))

(declare-fun c!1010100 () Bool)

(assert (=> d!1806270 (= c!1010100 ((_ is Nil!63338) (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))))))

(assert (=> d!1806270 (= (++!13915 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) lt!2278663) lt!2278880)))

(declare-fun b!5725594 () Bool)

(assert (=> b!5725594 (= e!3520619 lt!2278663)))

(declare-fun b!5725595 () Bool)

(assert (=> b!5725595 (= e!3520619 (Cons!63338 (h!69786 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))) (++!13915 (t!376788 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))) lt!2278663)))))

(declare-fun b!5725597 () Bool)

(assert (=> b!5725597 (= e!3520618 (or (not (= lt!2278663 Nil!63338)) (= lt!2278880 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))))

(assert (= (and d!1806270 c!1010100) b!5725594))

(assert (= (and d!1806270 (not c!1010100)) b!5725595))

(assert (= (and d!1806270 res!2417092) b!5725596))

(assert (= (and b!5725596 res!2417091) b!5725597))

(declare-fun m!6678362 () Bool)

(assert (=> b!5725596 m!6678362))

(declare-fun m!6678364 () Bool)

(assert (=> b!5725596 m!6678364))

(assert (=> b!5725596 m!6676920))

(declare-fun m!6678366 () Bool)

(assert (=> d!1806270 m!6678366))

(declare-fun m!6678368 () Bool)

(assert (=> d!1806270 m!6678368))

(assert (=> d!1806270 m!6676926))

(declare-fun m!6678370 () Bool)

(assert (=> b!5725595 m!6678370))

(assert (=> b!5724103 d!1806270))

(declare-fun b!5725598 () Bool)

(declare-fun e!3520620 () (InoxSet Context!10210))

(declare-fun e!3520623 () (InoxSet Context!10210))

(assert (=> b!5725598 (= e!3520620 e!3520623)))

(declare-fun c!1010104 () Bool)

(assert (=> b!5725598 (= c!1010104 ((_ is Union!15721) (h!69786 (exprs!5605 lt!2278666))))))

(declare-fun call!437760 () (InoxSet Context!10210))

(declare-fun bm!437751 () Bool)

(declare-fun call!437761 () List!63462)

(declare-fun c!1010103 () Bool)

(declare-fun c!1010102 () Bool)

(assert (=> bm!437751 (= call!437760 (derivationStepZipperDown!1063 (ite c!1010104 (regTwo!31955 (h!69786 (exprs!5605 lt!2278666))) (ite c!1010102 (regTwo!31954 (h!69786 (exprs!5605 lt!2278666))) (ite c!1010103 (regOne!31954 (h!69786 (exprs!5605 lt!2278666))) (reg!16050 (h!69786 (exprs!5605 lt!2278666)))))) (ite (or c!1010104 c!1010102) (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (Context!10211 call!437761)) (h!69788 s!2326)))))

(declare-fun call!437758 () List!63462)

(declare-fun bm!437752 () Bool)

(assert (=> bm!437752 (= call!437758 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666)))) (ite (or c!1010102 c!1010103) (regTwo!31954 (h!69786 (exprs!5605 lt!2278666))) (h!69786 (exprs!5605 lt!2278666)))))))

(declare-fun b!5725599 () Bool)

(declare-fun e!3520624 () (InoxSet Context!10210))

(declare-fun call!437759 () (InoxSet Context!10210))

(assert (=> b!5725599 (= e!3520624 call!437759)))

(declare-fun bm!437753 () Bool)

(declare-fun call!437757 () (InoxSet Context!10210))

(assert (=> bm!437753 (= call!437759 call!437757)))

(declare-fun b!5725600 () Bool)

(declare-fun e!3520625 () Bool)

(assert (=> b!5725600 (= e!3520625 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 lt!2278666)))))))

(declare-fun bm!437755 () Bool)

(assert (=> bm!437755 (= call!437761 call!437758)))

(declare-fun b!5725601 () Bool)

(declare-fun e!3520621 () (InoxSet Context!10210))

(assert (=> b!5725601 (= e!3520621 call!437759)))

(declare-fun b!5725602 () Bool)

(declare-fun c!1010105 () Bool)

(assert (=> b!5725602 (= c!1010105 ((_ is Star!15721) (h!69786 (exprs!5605 lt!2278666))))))

(assert (=> b!5725602 (= e!3520621 e!3520624)))

(declare-fun b!5725603 () Bool)

(declare-fun e!3520622 () (InoxSet Context!10210))

(assert (=> b!5725603 (= e!3520622 e!3520621)))

(assert (=> b!5725603 (= c!1010103 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278666))))))

(declare-fun b!5725604 () Bool)

(assert (=> b!5725604 (= c!1010102 e!3520625)))

(declare-fun res!2417093 () Bool)

(assert (=> b!5725604 (=> (not res!2417093) (not e!3520625))))

(assert (=> b!5725604 (= res!2417093 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278666))))))

(assert (=> b!5725604 (= e!3520623 e!3520622)))

(declare-fun b!5725605 () Bool)

(assert (=> b!5725605 (= e!3520624 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725606 () Bool)

(declare-fun call!437756 () (InoxSet Context!10210))

(assert (=> b!5725606 (= e!3520622 ((_ map or) call!437756 call!437757))))

(declare-fun b!5725607 () Bool)

(assert (=> b!5725607 (= e!3520620 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 lt!2278666))) true))))

(declare-fun d!1806272 () Bool)

(declare-fun c!1010101 () Bool)

(assert (=> d!1806272 (= c!1010101 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 lt!2278666))) (= (c!1009551 (h!69786 (exprs!5605 lt!2278666))) (h!69788 s!2326))))))

(assert (=> d!1806272 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278666)) (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (h!69788 s!2326)) e!3520620)))

(declare-fun bm!437754 () Bool)

(assert (=> bm!437754 (= call!437756 (derivationStepZipperDown!1063 (ite c!1010104 (regOne!31955 (h!69786 (exprs!5605 lt!2278666))) (regOne!31954 (h!69786 (exprs!5605 lt!2278666)))) (ite c!1010104 (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (Context!10211 call!437758)) (h!69788 s!2326)))))

(declare-fun b!5725608 () Bool)

(assert (=> b!5725608 (= e!3520623 ((_ map or) call!437756 call!437760))))

(declare-fun bm!437756 () Bool)

(assert (=> bm!437756 (= call!437757 call!437760)))

(assert (= (and d!1806272 c!1010101) b!5725607))

(assert (= (and d!1806272 (not c!1010101)) b!5725598))

(assert (= (and b!5725598 c!1010104) b!5725608))

(assert (= (and b!5725598 (not c!1010104)) b!5725604))

(assert (= (and b!5725604 res!2417093) b!5725600))

(assert (= (and b!5725604 c!1010102) b!5725606))

(assert (= (and b!5725604 (not c!1010102)) b!5725603))

(assert (= (and b!5725603 c!1010103) b!5725601))

(assert (= (and b!5725603 (not c!1010103)) b!5725602))

(assert (= (and b!5725602 c!1010105) b!5725599))

(assert (= (and b!5725602 (not c!1010105)) b!5725605))

(assert (= (or b!5725601 b!5725599) bm!437755))

(assert (= (or b!5725601 b!5725599) bm!437753))

(assert (= (or b!5725606 bm!437755) bm!437752))

(assert (= (or b!5725606 bm!437753) bm!437756))

(assert (= (or b!5725608 bm!437756) bm!437751))

(assert (= (or b!5725608 b!5725606) bm!437754))

(declare-fun m!6678372 () Bool)

(assert (=> b!5725600 m!6678372))

(declare-fun m!6678374 () Bool)

(assert (=> bm!437754 m!6678374))

(declare-fun m!6678376 () Bool)

(assert (=> b!5725607 m!6678376))

(declare-fun m!6678378 () Bool)

(assert (=> bm!437751 m!6678378))

(declare-fun m!6678380 () Bool)

(assert (=> bm!437752 m!6678380))

(assert (=> bm!437477 d!1806272))

(assert (=> d!1805702 d!1805930))

(assert (=> bs!1338424 d!1805688))

(assert (=> d!1805678 d!1805674))

(declare-fun d!1806274 () Bool)

(assert (=> d!1806274 (= (flatMap!1334 z!1189 lambda!309369) (dynLambda!24786 lambda!309369 (h!69787 zl!343)))))

(assert (=> d!1806274 true))

(declare-fun _$13!2422 () Unit!156416)

(assert (=> d!1806274 (= (choose!43283 z!1189 (h!69787 zl!343) lambda!309369) _$13!2422)))

(declare-fun b_lambda!216373 () Bool)

(assert (=> (not b_lambda!216373) (not d!1806274)))

(declare-fun bs!1338924 () Bool)

(assert (= bs!1338924 d!1806274))

(assert (=> bs!1338924 m!6676444))

(assert (=> bs!1338924 m!6677002))

(assert (=> d!1805678 d!1806274))

(assert (=> bm!437524 d!1805930))

(declare-fun b!5725609 () Bool)

(declare-fun res!2417096 () Bool)

(declare-fun e!3520627 () Bool)

(assert (=> b!5725609 (=> (not res!2417096) (not e!3520627))))

(declare-fun call!437762 () Bool)

(assert (=> b!5725609 (= res!2417096 call!437762)))

(declare-fun e!3520628 () Bool)

(assert (=> b!5725609 (= e!3520628 e!3520627)))

(declare-fun b!5725610 () Bool)

(declare-fun e!3520632 () Bool)

(declare-fun e!3520626 () Bool)

(assert (=> b!5725610 (= e!3520632 e!3520626)))

(declare-fun c!1010106 () Bool)

(assert (=> b!5725610 (= c!1010106 ((_ is Star!15721) (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))

(declare-fun b!5725611 () Bool)

(declare-fun e!3520630 () Bool)

(declare-fun call!437764 () Bool)

(assert (=> b!5725611 (= e!3520630 call!437764)))

(declare-fun b!5725612 () Bool)

(declare-fun e!3520629 () Bool)

(declare-fun e!3520631 () Bool)

(assert (=> b!5725612 (= e!3520629 e!3520631)))

(declare-fun res!2417097 () Bool)

(assert (=> b!5725612 (=> (not res!2417097) (not e!3520631))))

(assert (=> b!5725612 (= res!2417097 call!437762)))

(declare-fun b!5725613 () Bool)

(declare-fun call!437763 () Bool)

(assert (=> b!5725613 (= e!3520631 call!437763)))

(declare-fun c!1010107 () Bool)

(declare-fun bm!437758 () Bool)

(assert (=> bm!437758 (= call!437764 (validRegex!7457 (ite c!1010106 (reg!16050 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))) (ite c!1010107 (regTwo!31955 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))) (regTwo!31954 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292))))))))))

(declare-fun b!5725614 () Bool)

(assert (=> b!5725614 (= e!3520626 e!3520628)))

(assert (=> b!5725614 (= c!1010107 ((_ is Union!15721) (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))

(declare-fun bm!437757 () Bool)

(assert (=> bm!437757 (= call!437762 (validRegex!7457 (ite c!1010107 (regOne!31955 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))) (regOne!31954 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))))

(declare-fun d!1806276 () Bool)

(declare-fun res!2417098 () Bool)

(assert (=> d!1806276 (=> res!2417098 e!3520632)))

(assert (=> d!1806276 (= res!2417098 ((_ is ElementMatch!15721) (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))

(assert (=> d!1806276 (= (validRegex!7457 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))) e!3520632)))

(declare-fun b!5725615 () Bool)

(assert (=> b!5725615 (= e!3520627 call!437763)))

(declare-fun b!5725616 () Bool)

(assert (=> b!5725616 (= e!3520626 e!3520630)))

(declare-fun res!2417094 () Bool)

(assert (=> b!5725616 (= res!2417094 (not (nullable!5753 (reg!16050 (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292)))))))))

(assert (=> b!5725616 (=> (not res!2417094) (not e!3520630))))

(declare-fun b!5725617 () Bool)

(declare-fun res!2417095 () Bool)

(assert (=> b!5725617 (=> res!2417095 e!3520629)))

(assert (=> b!5725617 (= res!2417095 (not ((_ is Concat!24566) (ite c!1009734 (reg!16050 r!7292) (ite c!1009735 (regTwo!31955 r!7292) (regTwo!31954 r!7292))))))))

(assert (=> b!5725617 (= e!3520628 e!3520629)))

(declare-fun bm!437759 () Bool)

(assert (=> bm!437759 (= call!437763 call!437764)))

(assert (= (and d!1806276 (not res!2417098)) b!5725610))

(assert (= (and b!5725610 c!1010106) b!5725616))

(assert (= (and b!5725610 (not c!1010106)) b!5725614))

(assert (= (and b!5725616 res!2417094) b!5725611))

(assert (= (and b!5725614 c!1010107) b!5725609))

(assert (= (and b!5725614 (not c!1010107)) b!5725617))

(assert (= (and b!5725609 res!2417096) b!5725615))

(assert (= (and b!5725617 (not res!2417095)) b!5725612))

(assert (= (and b!5725612 res!2417097) b!5725613))

(assert (= (or b!5725615 b!5725613) bm!437759))

(assert (= (or b!5725609 b!5725612) bm!437757))

(assert (= (or b!5725611 bm!437759) bm!437758))

(declare-fun m!6678382 () Bool)

(assert (=> bm!437758 m!6678382))

(declare-fun m!6678384 () Bool)

(assert (=> bm!437757 m!6678384))

(declare-fun m!6678386 () Bool)

(assert (=> b!5725616 m!6678386))

(assert (=> bm!437514 d!1806276))

(declare-fun d!1806278 () Bool)

(declare-fun c!1010108 () Bool)

(assert (=> d!1806278 (= c!1010108 (isEmpty!35217 (tail!11214 (t!376790 s!2326))))))

(declare-fun e!3520633 () Bool)

(assert (=> d!1806278 (= (matchZipper!1859 (derivationStepZipper!1804 lt!2278684 (head!12119 (t!376790 s!2326))) (tail!11214 (t!376790 s!2326))) e!3520633)))

(declare-fun b!5725618 () Bool)

(assert (=> b!5725618 (= e!3520633 (nullableZipper!1669 (derivationStepZipper!1804 lt!2278684 (head!12119 (t!376790 s!2326)))))))

(declare-fun b!5725619 () Bool)

(assert (=> b!5725619 (= e!3520633 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 lt!2278684 (head!12119 (t!376790 s!2326))) (head!12119 (tail!11214 (t!376790 s!2326)))) (tail!11214 (tail!11214 (t!376790 s!2326)))))))

(assert (= (and d!1806278 c!1010108) b!5725618))

(assert (= (and d!1806278 (not c!1010108)) b!5725619))

(assert (=> d!1806278 m!6676866))

(assert (=> d!1806278 m!6677622))

(assert (=> b!5725618 m!6676872))

(declare-fun m!6678388 () Bool)

(assert (=> b!5725618 m!6678388))

(assert (=> b!5725619 m!6676866))

(assert (=> b!5725619 m!6677626))

(assert (=> b!5725619 m!6676872))

(assert (=> b!5725619 m!6677626))

(declare-fun m!6678390 () Bool)

(assert (=> b!5725619 m!6678390))

(assert (=> b!5725619 m!6676866))

(assert (=> b!5725619 m!6677630))

(assert (=> b!5725619 m!6678390))

(assert (=> b!5725619 m!6677630))

(declare-fun m!6678392 () Bool)

(assert (=> b!5725619 m!6678392))

(assert (=> b!5724025 d!1806278))

(declare-fun bs!1338925 () Bool)

(declare-fun d!1806280 () Bool)

(assert (= bs!1338925 (and d!1806280 b!5723625)))

(declare-fun lambda!309518 () Int)

(assert (=> bs!1338925 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309518 lambda!309369))))

(declare-fun bs!1338926 () Bool)

(assert (= bs!1338926 (and d!1806280 d!1805660)))

(assert (=> bs!1338926 (= (= (head!12119 (t!376790 s!2326)) (h!69788 s!2326)) (= lambda!309518 lambda!309420))))

(declare-fun bs!1338927 () Bool)

(assert (= bs!1338927 (and d!1806280 d!1806028)))

(assert (=> bs!1338927 (= lambda!309518 lambda!309478)))

(declare-fun bs!1338928 () Bool)

(assert (= bs!1338928 (and d!1806280 d!1806234)))

(assert (=> bs!1338928 (= (= (head!12119 (t!376790 s!2326)) (head!12119 s!2326)) (= lambda!309518 lambda!309508))))

(declare-fun bs!1338929 () Bool)

(assert (= bs!1338929 (and d!1806280 d!1806140)))

(assert (=> bs!1338929 (= lambda!309518 lambda!309494)))

(declare-fun bs!1338930 () Bool)

(assert (= bs!1338930 (and d!1806280 d!1805972)))

(assert (=> bs!1338930 (= lambda!309518 lambda!309475)))

(assert (=> d!1806280 true))

(assert (=> d!1806280 (= (derivationStepZipper!1804 lt!2278684 (head!12119 (t!376790 s!2326))) (flatMap!1334 lt!2278684 lambda!309518))))

(declare-fun bs!1338931 () Bool)

(assert (= bs!1338931 d!1806280))

(declare-fun m!6678394 () Bool)

(assert (=> bs!1338931 m!6678394))

(assert (=> b!5724025 d!1806280))

(assert (=> b!5724025 d!1805976))

(assert (=> b!5724025 d!1805978))

(declare-fun d!1806282 () Bool)

(assert (=> d!1806282 (= (isDefined!12433 lt!2278798) (not (isEmpty!35218 lt!2278798)))))

(declare-fun bs!1338932 () Bool)

(assert (= bs!1338932 d!1806282))

(declare-fun m!6678396 () Bool)

(assert (=> bs!1338932 m!6678396))

(assert (=> b!5724329 d!1806282))

(declare-fun d!1806284 () Bool)

(declare-fun c!1010109 () Bool)

(assert (=> d!1806284 (= c!1010109 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun e!3520634 () Bool)

(assert (=> d!1806284 (= (matchZipper!1859 (derivationStepZipper!1804 z!1189 (head!12119 s!2326)) (tail!11214 s!2326)) e!3520634)))

(declare-fun b!5725620 () Bool)

(assert (=> b!5725620 (= e!3520634 (nullableZipper!1669 (derivationStepZipper!1804 z!1189 (head!12119 s!2326))))))

(declare-fun b!5725621 () Bool)

(assert (=> b!5725621 (= e!3520634 (matchZipper!1859 (derivationStepZipper!1804 (derivationStepZipper!1804 z!1189 (head!12119 s!2326)) (head!12119 (tail!11214 s!2326))) (tail!11214 (tail!11214 s!2326))))))

(assert (= (and d!1806284 c!1010109) b!5725620))

(assert (= (and d!1806284 (not c!1010109)) b!5725621))

(assert (=> d!1806284 m!6676884))

(assert (=> d!1806284 m!6677080))

(assert (=> b!5725620 m!6677052))

(declare-fun m!6678398 () Bool)

(assert (=> b!5725620 m!6678398))

(assert (=> b!5725621 m!6676884))

(assert (=> b!5725621 m!6678234))

(assert (=> b!5725621 m!6677052))

(assert (=> b!5725621 m!6678234))

(declare-fun m!6678400 () Bool)

(assert (=> b!5725621 m!6678400))

(assert (=> b!5725621 m!6676884))

(assert (=> b!5725621 m!6678238))

(assert (=> b!5725621 m!6678400))

(assert (=> b!5725621 m!6678238))

(declare-fun m!6678402 () Bool)

(assert (=> b!5725621 m!6678402))

(assert (=> b!5724196 d!1806284))

(declare-fun bs!1338933 () Bool)

(declare-fun d!1806286 () Bool)

(assert (= bs!1338933 (and d!1806286 b!5723625)))

(declare-fun lambda!309519 () Int)

(assert (=> bs!1338933 (= (= (head!12119 s!2326) (h!69788 s!2326)) (= lambda!309519 lambda!309369))))

(declare-fun bs!1338934 () Bool)

(assert (= bs!1338934 (and d!1806286 d!1805660)))

(assert (=> bs!1338934 (= (= (head!12119 s!2326) (h!69788 s!2326)) (= lambda!309519 lambda!309420))))

(declare-fun bs!1338935 () Bool)

(assert (= bs!1338935 (and d!1806286 d!1806028)))

(assert (=> bs!1338935 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309519 lambda!309478))))

(declare-fun bs!1338936 () Bool)

(assert (= bs!1338936 (and d!1806286 d!1806234)))

(assert (=> bs!1338936 (= lambda!309519 lambda!309508)))

(declare-fun bs!1338937 () Bool)

(assert (= bs!1338937 (and d!1806286 d!1806280)))

(assert (=> bs!1338937 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309519 lambda!309518))))

(declare-fun bs!1338938 () Bool)

(assert (= bs!1338938 (and d!1806286 d!1806140)))

(assert (=> bs!1338938 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309519 lambda!309494))))

(declare-fun bs!1338939 () Bool)

(assert (= bs!1338939 (and d!1806286 d!1805972)))

(assert (=> bs!1338939 (= (= (head!12119 s!2326) (head!12119 (t!376790 s!2326))) (= lambda!309519 lambda!309475))))

(assert (=> d!1806286 true))

(assert (=> d!1806286 (= (derivationStepZipper!1804 z!1189 (head!12119 s!2326)) (flatMap!1334 z!1189 lambda!309519))))

(declare-fun bs!1338940 () Bool)

(assert (= bs!1338940 d!1806286))

(declare-fun m!6678404 () Bool)

(assert (=> bs!1338940 m!6678404))

(assert (=> b!5724196 d!1806286))

(assert (=> b!5724196 d!1806080))

(assert (=> b!5724196 d!1806046))

(assert (=> b!5724310 d!1806080))

(declare-fun d!1806288 () Bool)

(assert (=> d!1806288 (= (isEmpty!35214 (tail!11213 (unfocusZipperList!1149 zl!343))) ((_ is Nil!63338) (tail!11213 (unfocusZipperList!1149 zl!343))))))

(assert (=> b!5724371 d!1806288))

(declare-fun d!1806290 () Bool)

(assert (=> d!1806290 (= (tail!11213 (unfocusZipperList!1149 zl!343)) (t!376788 (unfocusZipperList!1149 zl!343)))))

(assert (=> b!5724371 d!1806290))

(declare-fun d!1806292 () Bool)

(assert (=> d!1806292 (= ($colon$colon!1736 (exprs!5605 lt!2278672) (ite (or c!1009718 c!1009719) (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69786 (exprs!5605 (h!69787 zl!343))))) (Cons!63338 (ite (or c!1009718 c!1009719) (regTwo!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))) (h!69786 (exprs!5605 (h!69787 zl!343)))) (exprs!5605 lt!2278672)))))

(assert (=> bm!437499 d!1806292))

(declare-fun d!1806294 () Bool)

(assert (=> d!1806294 (= (nullable!5753 (h!69786 (exprs!5605 lt!2278666))) (nullableFct!1815 (h!69786 (exprs!5605 lt!2278666))))))

(declare-fun bs!1338941 () Bool)

(assert (= bs!1338941 d!1806294))

(declare-fun m!6678406 () Bool)

(assert (=> bs!1338941 m!6678406))

(assert (=> b!5724117 d!1806294))

(assert (=> d!1805694 d!1805698))

(declare-fun d!1806296 () Bool)

(assert (=> d!1806296 (= (flatMap!1334 lt!2278669 lambda!309369) (dynLambda!24786 lambda!309369 lt!2278694))))

(assert (=> d!1806296 true))

(declare-fun _$13!2423 () Unit!156416)

(assert (=> d!1806296 (= (choose!43283 lt!2278669 lt!2278694 lambda!309369) _$13!2423)))

(declare-fun b_lambda!216375 () Bool)

(assert (=> (not b_lambda!216375) (not d!1806296)))

(declare-fun bs!1338942 () Bool)

(assert (= bs!1338942 d!1806296))

(assert (=> bs!1338942 m!6676518))

(assert (=> bs!1338942 m!6677032))

(assert (=> d!1805694 d!1806296))

(assert (=> d!1805630 d!1806110))

(declare-fun b!5725622 () Bool)

(declare-fun e!3520635 () (InoxSet Context!10210))

(declare-fun e!3520638 () (InoxSet Context!10210))

(assert (=> b!5725622 (= e!3520635 e!3520638)))

(declare-fun c!1010113 () Bool)

(assert (=> b!5725622 (= c!1010113 ((_ is Union!15721) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun call!437769 () (InoxSet Context!10210))

(declare-fun call!437770 () List!63462)

(declare-fun c!1010111 () Bool)

(declare-fun c!1010112 () Bool)

(declare-fun bm!437760 () Bool)

(assert (=> bm!437760 (= call!437769 (derivationStepZipperDown!1063 (ite c!1010113 (regTwo!31955 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (ite c!1010111 (regTwo!31954 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (ite c!1010112 (regOne!31954 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (reg!16050 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))) (ite (or c!1010113 c!1010111) (ite c!1009720 lt!2278672 (Context!10211 call!437505)) (Context!10211 call!437770)) (h!69788 s!2326)))))

(declare-fun call!437767 () List!63462)

(declare-fun bm!437761 () Bool)

(assert (=> bm!437761 (= call!437767 ($colon$colon!1736 (exprs!5605 (ite c!1009720 lt!2278672 (Context!10211 call!437505))) (ite (or c!1010111 c!1010112) (regTwo!31954 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))))

(declare-fun b!5725623 () Bool)

(declare-fun e!3520639 () (InoxSet Context!10210))

(declare-fun call!437768 () (InoxSet Context!10210))

(assert (=> b!5725623 (= e!3520639 call!437768)))

(declare-fun bm!437762 () Bool)

(declare-fun call!437766 () (InoxSet Context!10210))

(assert (=> bm!437762 (= call!437768 call!437766)))

(declare-fun b!5725624 () Bool)

(declare-fun e!3520640 () Bool)

(assert (=> b!5725624 (= e!3520640 (nullable!5753 (regOne!31954 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))))))

(declare-fun bm!437764 () Bool)

(assert (=> bm!437764 (= call!437770 call!437767)))

(declare-fun b!5725625 () Bool)

(declare-fun e!3520636 () (InoxSet Context!10210))

(assert (=> b!5725625 (= e!3520636 call!437768)))

(declare-fun b!5725626 () Bool)

(declare-fun c!1010114 () Bool)

(assert (=> b!5725626 (= c!1010114 ((_ is Star!15721) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(assert (=> b!5725626 (= e!3520636 e!3520639)))

(declare-fun b!5725627 () Bool)

(declare-fun e!3520637 () (InoxSet Context!10210))

(assert (=> b!5725627 (= e!3520637 e!3520636)))

(assert (=> b!5725627 (= c!1010112 ((_ is Concat!24566) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun b!5725628 () Bool)

(assert (=> b!5725628 (= c!1010111 e!3520640)))

(declare-fun res!2417099 () Bool)

(assert (=> b!5725628 (=> (not res!2417099) (not e!3520640))))

(assert (=> b!5725628 (= res!2417099 ((_ is Concat!24566) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))))))

(assert (=> b!5725628 (= e!3520638 e!3520637)))

(declare-fun b!5725629 () Bool)

(assert (=> b!5725629 (= e!3520639 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725630 () Bool)

(declare-fun call!437765 () (InoxSet Context!10210))

(assert (=> b!5725630 (= e!3520637 ((_ map or) call!437765 call!437766))))

(declare-fun b!5725631 () Bool)

(assert (=> b!5725631 (= e!3520635 (store ((as const (Array Context!10210 Bool)) false) (ite c!1009720 lt!2278672 (Context!10211 call!437505)) true))))

(declare-fun c!1010110 () Bool)

(declare-fun d!1806298 () Bool)

(assert (=> d!1806298 (= c!1010110 (and ((_ is ElementMatch!15721) (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (= (c!1009551 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (h!69788 s!2326))))))

(assert (=> d!1806298 (= (derivationStepZipperDown!1063 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))) (ite c!1009720 lt!2278672 (Context!10211 call!437505)) (h!69788 s!2326)) e!3520635)))

(declare-fun bm!437763 () Bool)

(assert (=> bm!437763 (= call!437765 (derivationStepZipperDown!1063 (ite c!1010113 (regOne!31955 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343)))))) (regOne!31954 (ite c!1009720 (regOne!31955 (h!69786 (exprs!5605 (h!69787 zl!343)))) (regOne!31954 (h!69786 (exprs!5605 (h!69787 zl!343))))))) (ite c!1010113 (ite c!1009720 lt!2278672 (Context!10211 call!437505)) (Context!10211 call!437767)) (h!69788 s!2326)))))

(declare-fun b!5725632 () Bool)

(assert (=> b!5725632 (= e!3520638 ((_ map or) call!437765 call!437769))))

(declare-fun bm!437765 () Bool)

(assert (=> bm!437765 (= call!437766 call!437769)))

(assert (= (and d!1806298 c!1010110) b!5725631))

(assert (= (and d!1806298 (not c!1010110)) b!5725622))

(assert (= (and b!5725622 c!1010113) b!5725632))

(assert (= (and b!5725622 (not c!1010113)) b!5725628))

(assert (= (and b!5725628 res!2417099) b!5725624))

(assert (= (and b!5725628 c!1010111) b!5725630))

(assert (= (and b!5725628 (not c!1010111)) b!5725627))

(assert (= (and b!5725627 c!1010112) b!5725625))

(assert (= (and b!5725627 (not c!1010112)) b!5725626))

(assert (= (and b!5725626 c!1010114) b!5725623))

(assert (= (and b!5725626 (not c!1010114)) b!5725629))

(assert (= (or b!5725625 b!5725623) bm!437764))

(assert (= (or b!5725625 b!5725623) bm!437762))

(assert (= (or b!5725630 bm!437764) bm!437761))

(assert (= (or b!5725630 bm!437762) bm!437765))

(assert (= (or b!5725632 bm!437765) bm!437760))

(assert (= (or b!5725632 b!5725630) bm!437763))

(declare-fun m!6678408 () Bool)

(assert (=> b!5725624 m!6678408))

(declare-fun m!6678410 () Bool)

(assert (=> bm!437763 m!6678410))

(declare-fun m!6678412 () Bool)

(assert (=> b!5725631 m!6678412))

(declare-fun m!6678414 () Bool)

(assert (=> bm!437760 m!6678414))

(declare-fun m!6678416 () Bool)

(assert (=> bm!437761 m!6678416))

(assert (=> bm!437501 d!1806298))

(declare-fun bm!437766 () Bool)

(declare-fun call!437771 () Bool)

(assert (=> bm!437766 (= call!437771 (isEmpty!35217 s!2326))))

(declare-fun b!5725634 () Bool)

(declare-fun e!3520647 () Bool)

(declare-fun lt!2278881 () Bool)

(assert (=> b!5725634 (= e!3520647 (not lt!2278881))))

(declare-fun b!5725635 () Bool)

(declare-fun res!2417107 () Bool)

(declare-fun e!3520645 () Bool)

(assert (=> b!5725635 (=> (not res!2417107) (not e!3520645))))

(assert (=> b!5725635 (= res!2417107 (not call!437771))))

(declare-fun b!5725636 () Bool)

(declare-fun e!3520646 () Bool)

(assert (=> b!5725636 (= e!3520646 (= lt!2278881 call!437771))))

(declare-fun b!5725637 () Bool)

(declare-fun res!2417100 () Bool)

(declare-fun e!3520641 () Bool)

(assert (=> b!5725637 (=> res!2417100 e!3520641)))

(assert (=> b!5725637 (= res!2417100 (not ((_ is ElementMatch!15721) (regTwo!31954 r!7292))))))

(assert (=> b!5725637 (= e!3520647 e!3520641)))

(declare-fun b!5725638 () Bool)

(declare-fun e!3520642 () Bool)

(declare-fun e!3520644 () Bool)

(assert (=> b!5725638 (= e!3520642 e!3520644)))

(declare-fun res!2417106 () Bool)

(assert (=> b!5725638 (=> res!2417106 e!3520644)))

(assert (=> b!5725638 (= res!2417106 call!437771)))

(declare-fun b!5725639 () Bool)

(assert (=> b!5725639 (= e!3520641 e!3520642)))

(declare-fun res!2417102 () Bool)

(assert (=> b!5725639 (=> (not res!2417102) (not e!3520642))))

(assert (=> b!5725639 (= res!2417102 (not lt!2278881))))

(declare-fun b!5725640 () Bool)

(declare-fun res!2417103 () Bool)

(assert (=> b!5725640 (=> res!2417103 e!3520641)))

(assert (=> b!5725640 (= res!2417103 e!3520645)))

(declare-fun res!2417101 () Bool)

(assert (=> b!5725640 (=> (not res!2417101) (not e!3520645))))

(assert (=> b!5725640 (= res!2417101 lt!2278881)))

(declare-fun d!1806300 () Bool)

(assert (=> d!1806300 e!3520646))

(declare-fun c!1010117 () Bool)

(assert (=> d!1806300 (= c!1010117 ((_ is EmptyExpr!15721) (regTwo!31954 r!7292)))))

(declare-fun e!3520643 () Bool)

(assert (=> d!1806300 (= lt!2278881 e!3520643)))

(declare-fun c!1010115 () Bool)

(assert (=> d!1806300 (= c!1010115 (isEmpty!35217 s!2326))))

(assert (=> d!1806300 (validRegex!7457 (regTwo!31954 r!7292))))

(assert (=> d!1806300 (= (matchR!7906 (regTwo!31954 r!7292) s!2326) lt!2278881)))

(declare-fun b!5725633 () Bool)

(assert (=> b!5725633 (= e!3520643 (nullable!5753 (regTwo!31954 r!7292)))))

(declare-fun b!5725641 () Bool)

(assert (=> b!5725641 (= e!3520646 e!3520647)))

(declare-fun c!1010116 () Bool)

(assert (=> b!5725641 (= c!1010116 ((_ is EmptyLang!15721) (regTwo!31954 r!7292)))))

(declare-fun b!5725642 () Bool)

(assert (=> b!5725642 (= e!3520643 (matchR!7906 (derivativeStep!4522 (regTwo!31954 r!7292) (head!12119 s!2326)) (tail!11214 s!2326)))))

(declare-fun b!5725643 () Bool)

(declare-fun res!2417105 () Bool)

(assert (=> b!5725643 (=> (not res!2417105) (not e!3520645))))

(assert (=> b!5725643 (= res!2417105 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun b!5725644 () Bool)

(assert (=> b!5725644 (= e!3520645 (= (head!12119 s!2326) (c!1009551 (regTwo!31954 r!7292))))))

(declare-fun b!5725645 () Bool)

(declare-fun res!2417104 () Bool)

(assert (=> b!5725645 (=> res!2417104 e!3520644)))

(assert (=> b!5725645 (= res!2417104 (not (isEmpty!35217 (tail!11214 s!2326))))))

(declare-fun b!5725646 () Bool)

(assert (=> b!5725646 (= e!3520644 (not (= (head!12119 s!2326) (c!1009551 (regTwo!31954 r!7292)))))))

(assert (= (and d!1806300 c!1010115) b!5725633))

(assert (= (and d!1806300 (not c!1010115)) b!5725642))

(assert (= (and d!1806300 c!1010117) b!5725636))

(assert (= (and d!1806300 (not c!1010117)) b!5725641))

(assert (= (and b!5725641 c!1010116) b!5725634))

(assert (= (and b!5725641 (not c!1010116)) b!5725637))

(assert (= (and b!5725637 (not res!2417100)) b!5725640))

(assert (= (and b!5725640 res!2417101) b!5725635))

(assert (= (and b!5725635 res!2417107) b!5725643))

(assert (= (and b!5725643 res!2417105) b!5725644))

(assert (= (and b!5725640 (not res!2417103)) b!5725639))

(assert (= (and b!5725639 res!2417102) b!5725638))

(assert (= (and b!5725638 (not res!2417106)) b!5725645))

(assert (= (and b!5725645 (not res!2417104)) b!5725646))

(assert (= (or b!5725636 b!5725635 b!5725638) bm!437766))

(assert (=> bm!437766 m!6676876))

(declare-fun m!6678418 () Bool)

(assert (=> b!5725633 m!6678418))

(assert (=> b!5725642 m!6676880))

(assert (=> b!5725642 m!6676880))

(declare-fun m!6678420 () Bool)

(assert (=> b!5725642 m!6678420))

(assert (=> b!5725642 m!6676884))

(assert (=> b!5725642 m!6678420))

(assert (=> b!5725642 m!6676884))

(declare-fun m!6678422 () Bool)

(assert (=> b!5725642 m!6678422))

(assert (=> b!5725644 m!6676880))

(assert (=> b!5725643 m!6676884))

(assert (=> b!5725643 m!6676884))

(assert (=> b!5725643 m!6677080))

(assert (=> d!1806300 m!6676876))

(declare-fun m!6678424 () Bool)

(assert (=> d!1806300 m!6678424))

(assert (=> b!5725645 m!6676884))

(assert (=> b!5725645 m!6676884))

(assert (=> b!5725645 m!6677080))

(assert (=> b!5725646 m!6676880))

(assert (=> b!5724334 d!1806300))

(declare-fun d!1806302 () Bool)

(declare-fun lt!2278884 () Int)

(assert (=> d!1806302 (>= lt!2278884 0)))

(declare-fun e!3520650 () Int)

(assert (=> d!1806302 (= lt!2278884 e!3520650)))

(declare-fun c!1010120 () Bool)

(assert (=> d!1806302 (= c!1010120 ((_ is Nil!63338) lt!2278767))))

(assert (=> d!1806302 (= (size!40031 lt!2278767) lt!2278884)))

(declare-fun b!5725651 () Bool)

(assert (=> b!5725651 (= e!3520650 0)))

(declare-fun b!5725652 () Bool)

(assert (=> b!5725652 (= e!3520650 (+ 1 (size!40031 (t!376788 lt!2278767))))))

(assert (= (and d!1806302 c!1010120) b!5725651))

(assert (= (and d!1806302 (not c!1010120)) b!5725652))

(declare-fun m!6678426 () Bool)

(assert (=> b!5725652 m!6678426))

(assert (=> b!5724104 d!1806302))

(declare-fun d!1806304 () Bool)

(declare-fun lt!2278885 () Int)

(assert (=> d!1806304 (>= lt!2278885 0)))

(declare-fun e!3520651 () Int)

(assert (=> d!1806304 (= lt!2278885 e!3520651)))

(declare-fun c!1010121 () Bool)

(assert (=> d!1806304 (= c!1010121 ((_ is Nil!63338) (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))

(assert (=> d!1806304 (= (size!40031 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) lt!2278885)))

(declare-fun b!5725653 () Bool)

(assert (=> b!5725653 (= e!3520651 0)))

(declare-fun b!5725654 () Bool)

(assert (=> b!5725654 (= e!3520651 (+ 1 (size!40031 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))))

(assert (= (and d!1806304 c!1010121) b!5725653))

(assert (= (and d!1806304 (not c!1010121)) b!5725654))

(assert (=> b!5725654 m!6678364))

(assert (=> b!5724104 d!1806304))

(declare-fun d!1806306 () Bool)

(declare-fun lt!2278886 () Int)

(assert (=> d!1806306 (>= lt!2278886 0)))

(declare-fun e!3520652 () Int)

(assert (=> d!1806306 (= lt!2278886 e!3520652)))

(declare-fun c!1010122 () Bool)

(assert (=> d!1806306 (= c!1010122 ((_ is Nil!63338) lt!2278663))))

(assert (=> d!1806306 (= (size!40031 lt!2278663) lt!2278886)))

(declare-fun b!5725655 () Bool)

(assert (=> b!5725655 (= e!3520652 0)))

(declare-fun b!5725656 () Bool)

(assert (=> b!5725656 (= e!3520652 (+ 1 (size!40031 (t!376788 lt!2278663))))))

(assert (= (and d!1806306 c!1010122) b!5725655))

(assert (= (and d!1806306 (not c!1010122)) b!5725656))

(declare-fun m!6678428 () Bool)

(assert (=> b!5725656 m!6678428))

(assert (=> b!5724104 d!1806306))

(declare-fun d!1806308 () Bool)

(declare-fun c!1010125 () Bool)

(assert (=> d!1806308 (= c!1010125 ((_ is Nil!63338) lt!2278767))))

(declare-fun e!3520655 () (InoxSet Regex!15721))

(assert (=> d!1806308 (= (content!11512 lt!2278767) e!3520655)))

(declare-fun b!5725661 () Bool)

(assert (=> b!5725661 (= e!3520655 ((as const (Array Regex!15721 Bool)) false))))

(declare-fun b!5725662 () Bool)

(assert (=> b!5725662 (= e!3520655 ((_ map or) (store ((as const (Array Regex!15721 Bool)) false) (h!69786 lt!2278767) true) (content!11512 (t!376788 lt!2278767))))))

(assert (= (and d!1806308 c!1010125) b!5725661))

(assert (= (and d!1806308 (not c!1010125)) b!5725662))

(declare-fun m!6678430 () Bool)

(assert (=> b!5725662 m!6678430))

(declare-fun m!6678432 () Bool)

(assert (=> b!5725662 m!6678432))

(assert (=> d!1805646 d!1806308))

(declare-fun d!1806310 () Bool)

(declare-fun c!1010126 () Bool)

(assert (=> d!1806310 (= c!1010126 ((_ is Nil!63338) (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))

(declare-fun e!3520656 () (InoxSet Regex!15721))

(assert (=> d!1806310 (= (content!11512 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) e!3520656)))

(declare-fun b!5725663 () Bool)

(assert (=> b!5725663 (= e!3520656 ((as const (Array Regex!15721 Bool)) false))))

(declare-fun b!5725664 () Bool)

(assert (=> b!5725664 (= e!3520656 ((_ map or) (store ((as const (Array Regex!15721 Bool)) false) (h!69786 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)) true) (content!11512 (t!376788 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338)))))))

(assert (= (and d!1806310 c!1010126) b!5725663))

(assert (= (and d!1806310 (not c!1010126)) b!5725664))

(declare-fun m!6678434 () Bool)

(assert (=> b!5725664 m!6678434))

(assert (=> b!5725664 m!6678368))

(assert (=> d!1805646 d!1806310))

(declare-fun d!1806312 () Bool)

(declare-fun c!1010127 () Bool)

(assert (=> d!1806312 (= c!1010127 ((_ is Nil!63338) lt!2278663))))

(declare-fun e!3520657 () (InoxSet Regex!15721))

(assert (=> d!1806312 (= (content!11512 lt!2278663) e!3520657)))

(declare-fun b!5725665 () Bool)

(assert (=> b!5725665 (= e!3520657 ((as const (Array Regex!15721 Bool)) false))))

(declare-fun b!5725666 () Bool)

(assert (=> b!5725666 (= e!3520657 ((_ map or) (store ((as const (Array Regex!15721 Bool)) false) (h!69786 lt!2278663) true) (content!11512 (t!376788 lt!2278663))))))

(assert (= (and d!1806312 c!1010127) b!5725665))

(assert (= (and d!1806312 (not c!1010127)) b!5725666))

(declare-fun m!6678436 () Bool)

(assert (=> b!5725666 m!6678436))

(declare-fun m!6678438 () Bool)

(assert (=> b!5725666 m!6678438))

(assert (=> d!1805646 d!1806312))

(declare-fun d!1806314 () Bool)

(assert (=> d!1806314 (= (head!12118 (exprs!5605 (h!69787 zl!343))) (h!69786 (exprs!5605 (h!69787 zl!343))))))

(assert (=> b!5723984 d!1806314))

(declare-fun bm!437767 () Bool)

(declare-fun call!437772 () Bool)

(assert (=> bm!437767 (= call!437772 (isEmpty!35217 (tail!11214 s!2326)))))

(declare-fun b!5725668 () Bool)

(declare-fun e!3520664 () Bool)

(declare-fun lt!2278887 () Bool)

(assert (=> b!5725668 (= e!3520664 (not lt!2278887))))

(declare-fun b!5725669 () Bool)

(declare-fun res!2417115 () Bool)

(declare-fun e!3520662 () Bool)

(assert (=> b!5725669 (=> (not res!2417115) (not e!3520662))))

(assert (=> b!5725669 (= res!2417115 (not call!437772))))

(declare-fun b!5725670 () Bool)

(declare-fun e!3520663 () Bool)

(assert (=> b!5725670 (= e!3520663 (= lt!2278887 call!437772))))

(declare-fun b!5725671 () Bool)

(declare-fun res!2417108 () Bool)

(declare-fun e!3520658 () Bool)

(assert (=> b!5725671 (=> res!2417108 e!3520658)))

(assert (=> b!5725671 (= res!2417108 (not ((_ is ElementMatch!15721) (derivativeStep!4522 r!7292 (head!12119 s!2326)))))))

(assert (=> b!5725671 (= e!3520664 e!3520658)))

(declare-fun b!5725672 () Bool)

(declare-fun e!3520659 () Bool)

(declare-fun e!3520661 () Bool)

(assert (=> b!5725672 (= e!3520659 e!3520661)))

(declare-fun res!2417114 () Bool)

(assert (=> b!5725672 (=> res!2417114 e!3520661)))

(assert (=> b!5725672 (= res!2417114 call!437772)))

(declare-fun b!5725673 () Bool)

(assert (=> b!5725673 (= e!3520658 e!3520659)))

(declare-fun res!2417110 () Bool)

(assert (=> b!5725673 (=> (not res!2417110) (not e!3520659))))

(assert (=> b!5725673 (= res!2417110 (not lt!2278887))))

(declare-fun b!5725674 () Bool)

(declare-fun res!2417111 () Bool)

(assert (=> b!5725674 (=> res!2417111 e!3520658)))

(assert (=> b!5725674 (= res!2417111 e!3520662)))

(declare-fun res!2417109 () Bool)

(assert (=> b!5725674 (=> (not res!2417109) (not e!3520662))))

(assert (=> b!5725674 (= res!2417109 lt!2278887)))

(declare-fun d!1806316 () Bool)

(assert (=> d!1806316 e!3520663))

(declare-fun c!1010130 () Bool)

(assert (=> d!1806316 (= c!1010130 ((_ is EmptyExpr!15721) (derivativeStep!4522 r!7292 (head!12119 s!2326))))))

(declare-fun e!3520660 () Bool)

(assert (=> d!1806316 (= lt!2278887 e!3520660)))

(declare-fun c!1010128 () Bool)

(assert (=> d!1806316 (= c!1010128 (isEmpty!35217 (tail!11214 s!2326)))))

(assert (=> d!1806316 (validRegex!7457 (derivativeStep!4522 r!7292 (head!12119 s!2326)))))

(assert (=> d!1806316 (= (matchR!7906 (derivativeStep!4522 r!7292 (head!12119 s!2326)) (tail!11214 s!2326)) lt!2278887)))

(declare-fun b!5725667 () Bool)

(assert (=> b!5725667 (= e!3520660 (nullable!5753 (derivativeStep!4522 r!7292 (head!12119 s!2326))))))

(declare-fun b!5725675 () Bool)

(assert (=> b!5725675 (= e!3520663 e!3520664)))

(declare-fun c!1010129 () Bool)

(assert (=> b!5725675 (= c!1010129 ((_ is EmptyLang!15721) (derivativeStep!4522 r!7292 (head!12119 s!2326))))))

(declare-fun b!5725676 () Bool)

(assert (=> b!5725676 (= e!3520660 (matchR!7906 (derivativeStep!4522 (derivativeStep!4522 r!7292 (head!12119 s!2326)) (head!12119 (tail!11214 s!2326))) (tail!11214 (tail!11214 s!2326))))))

(declare-fun b!5725677 () Bool)

(declare-fun res!2417113 () Bool)

(assert (=> b!5725677 (=> (not res!2417113) (not e!3520662))))

(assert (=> b!5725677 (= res!2417113 (isEmpty!35217 (tail!11214 (tail!11214 s!2326))))))

(declare-fun b!5725678 () Bool)

(assert (=> b!5725678 (= e!3520662 (= (head!12119 (tail!11214 s!2326)) (c!1009551 (derivativeStep!4522 r!7292 (head!12119 s!2326)))))))

(declare-fun b!5725679 () Bool)

(declare-fun res!2417112 () Bool)

(assert (=> b!5725679 (=> res!2417112 e!3520661)))

(assert (=> b!5725679 (= res!2417112 (not (isEmpty!35217 (tail!11214 (tail!11214 s!2326)))))))

(declare-fun b!5725680 () Bool)

(assert (=> b!5725680 (= e!3520661 (not (= (head!12119 (tail!11214 s!2326)) (c!1009551 (derivativeStep!4522 r!7292 (head!12119 s!2326))))))))

(assert (= (and d!1806316 c!1010128) b!5725667))

(assert (= (and d!1806316 (not c!1010128)) b!5725676))

(assert (= (and d!1806316 c!1010130) b!5725670))

(assert (= (and d!1806316 (not c!1010130)) b!5725675))

(assert (= (and b!5725675 c!1010129) b!5725668))

(assert (= (and b!5725675 (not c!1010129)) b!5725671))

(assert (= (and b!5725671 (not res!2417108)) b!5725674))

(assert (= (and b!5725674 res!2417109) b!5725669))

(assert (= (and b!5725669 res!2417115) b!5725677))

(assert (= (and b!5725677 res!2417113) b!5725678))

(assert (= (and b!5725674 (not res!2417111)) b!5725673))

(assert (= (and b!5725673 res!2417110) b!5725672))

(assert (= (and b!5725672 (not res!2417114)) b!5725679))

(assert (= (and b!5725679 (not res!2417112)) b!5725680))

(assert (= (or b!5725670 b!5725669 b!5725672) bm!437767))

(assert (=> bm!437767 m!6676884))

(assert (=> bm!437767 m!6677080))

(assert (=> b!5725667 m!6677076))

(declare-fun m!6678440 () Bool)

(assert (=> b!5725667 m!6678440))

(assert (=> b!5725676 m!6676884))

(assert (=> b!5725676 m!6678234))

(assert (=> b!5725676 m!6677076))

(assert (=> b!5725676 m!6678234))

(declare-fun m!6678442 () Bool)

(assert (=> b!5725676 m!6678442))

(assert (=> b!5725676 m!6676884))

(assert (=> b!5725676 m!6678238))

(assert (=> b!5725676 m!6678442))

(assert (=> b!5725676 m!6678238))

(declare-fun m!6678444 () Bool)

(assert (=> b!5725676 m!6678444))

(assert (=> b!5725678 m!6676884))

(assert (=> b!5725678 m!6678234))

(assert (=> b!5725677 m!6676884))

(assert (=> b!5725677 m!6678238))

(assert (=> b!5725677 m!6678238))

(assert (=> b!5725677 m!6678242))

(assert (=> d!1806316 m!6676884))

(assert (=> d!1806316 m!6677080))

(assert (=> d!1806316 m!6677076))

(declare-fun m!6678446 () Bool)

(assert (=> d!1806316 m!6678446))

(assert (=> b!5725679 m!6676884))

(assert (=> b!5725679 m!6678238))

(assert (=> b!5725679 m!6678238))

(assert (=> b!5725679 m!6678242))

(assert (=> b!5725680 m!6676884))

(assert (=> b!5725680 m!6678234))

(assert (=> b!5724306 d!1806316))

(declare-fun b!5725681 () Bool)

(declare-fun c!1010131 () Bool)

(assert (=> b!5725681 (= c!1010131 ((_ is Union!15721) r!7292))))

(declare-fun e!3520666 () Regex!15721)

(declare-fun e!3520668 () Regex!15721)

(assert (=> b!5725681 (= e!3520666 e!3520668)))

(declare-fun call!437774 () Regex!15721)

(declare-fun e!3520665 () Regex!15721)

(declare-fun call!437773 () Regex!15721)

(declare-fun b!5725682 () Bool)

(assert (=> b!5725682 (= e!3520665 (Union!15721 (Concat!24566 call!437773 (regTwo!31954 r!7292)) call!437774))))

(declare-fun b!5725683 () Bool)

(declare-fun call!437775 () Regex!15721)

(assert (=> b!5725683 (= e!3520668 (Union!15721 call!437775 call!437773))))

(declare-fun b!5725684 () Bool)

(assert (=> b!5725684 (= e!3520665 (Union!15721 (Concat!24566 call!437774 (regTwo!31954 r!7292)) EmptyLang!15721))))

(declare-fun d!1806318 () Bool)

(declare-fun lt!2278888 () Regex!15721)

(assert (=> d!1806318 (validRegex!7457 lt!2278888)))

(declare-fun e!3520667 () Regex!15721)

(assert (=> d!1806318 (= lt!2278888 e!3520667)))

(declare-fun c!1010133 () Bool)

(assert (=> d!1806318 (= c!1010133 (or ((_ is EmptyExpr!15721) r!7292) ((_ is EmptyLang!15721) r!7292)))))

(assert (=> d!1806318 (validRegex!7457 r!7292)))

(assert (=> d!1806318 (= (derivativeStep!4522 r!7292 (head!12119 s!2326)) lt!2278888)))

(declare-fun b!5725685 () Bool)

(declare-fun c!1010135 () Bool)

(assert (=> b!5725685 (= c!1010135 (nullable!5753 (regOne!31954 r!7292)))))

(declare-fun e!3520669 () Regex!15721)

(assert (=> b!5725685 (= e!3520669 e!3520665)))

(declare-fun b!5725686 () Bool)

(assert (=> b!5725686 (= e!3520666 (ite (= (head!12119 s!2326) (c!1009551 r!7292)) EmptyExpr!15721 EmptyLang!15721))))

(declare-fun b!5725687 () Bool)

(declare-fun call!437776 () Regex!15721)

(assert (=> b!5725687 (= e!3520669 (Concat!24566 call!437776 r!7292))))

(declare-fun b!5725688 () Bool)

(assert (=> b!5725688 (= e!3520668 e!3520669)))

(declare-fun c!1010134 () Bool)

(assert (=> b!5725688 (= c!1010134 ((_ is Star!15721) r!7292))))

(declare-fun b!5725689 () Bool)

(assert (=> b!5725689 (= e!3520667 e!3520666)))

(declare-fun c!1010132 () Bool)

(assert (=> b!5725689 (= c!1010132 ((_ is ElementMatch!15721) r!7292))))

(declare-fun b!5725690 () Bool)

(assert (=> b!5725690 (= e!3520667 EmptyLang!15721)))

(declare-fun bm!437768 () Bool)

(assert (=> bm!437768 (= call!437776 call!437775)))

(declare-fun bm!437769 () Bool)

(assert (=> bm!437769 (= call!437773 (derivativeStep!4522 (ite c!1010131 (regTwo!31955 r!7292) (regOne!31954 r!7292)) (head!12119 s!2326)))))

(declare-fun bm!437770 () Bool)

(assert (=> bm!437770 (= call!437775 (derivativeStep!4522 (ite c!1010131 (regOne!31955 r!7292) (ite c!1010134 (reg!16050 r!7292) (ite c!1010135 (regTwo!31954 r!7292) (regOne!31954 r!7292)))) (head!12119 s!2326)))))

(declare-fun bm!437771 () Bool)

(assert (=> bm!437771 (= call!437774 call!437776)))

(assert (= (and d!1806318 c!1010133) b!5725690))

(assert (= (and d!1806318 (not c!1010133)) b!5725689))

(assert (= (and b!5725689 c!1010132) b!5725686))

(assert (= (and b!5725689 (not c!1010132)) b!5725681))

(assert (= (and b!5725681 c!1010131) b!5725683))

(assert (= (and b!5725681 (not c!1010131)) b!5725688))

(assert (= (and b!5725688 c!1010134) b!5725687))

(assert (= (and b!5725688 (not c!1010134)) b!5725685))

(assert (= (and b!5725685 c!1010135) b!5725682))

(assert (= (and b!5725685 (not c!1010135)) b!5725684))

(assert (= (or b!5725682 b!5725684) bm!437771))

(assert (= (or b!5725687 bm!437771) bm!437768))

(assert (= (or b!5725683 b!5725682) bm!437769))

(assert (= (or b!5725683 bm!437768) bm!437770))

(declare-fun m!6678448 () Bool)

(assert (=> d!1806318 m!6678448))

(assert (=> d!1806318 m!6676500))

(assert (=> b!5725685 m!6677542))

(assert (=> bm!437769 m!6676880))

(declare-fun m!6678450 () Bool)

(assert (=> bm!437769 m!6678450))

(assert (=> bm!437770 m!6676880))

(declare-fun m!6678452 () Bool)

(assert (=> bm!437770 m!6678452))

(assert (=> b!5724306 d!1806318))

(assert (=> b!5724306 d!1806080))

(assert (=> b!5724306 d!1806046))

(declare-fun d!1806320 () Bool)

(assert (=> d!1806320 (= (isEmpty!35214 (unfocusZipperList!1149 zl!343)) ((_ is Nil!63338) (unfocusZipperList!1149 zl!343)))))

(assert (=> b!5724375 d!1806320))

(declare-fun d!1806322 () Bool)

(assert (=> d!1806322 true))

(assert (=> d!1806322 true))

(declare-fun res!2417116 () Bool)

(assert (=> d!1806322 (= (choose!43286 lambda!309368) res!2417116)))

(assert (=> d!1805716 d!1806322))

(assert (=> b!5724396 d!1806044))

(assert (=> b!5724396 d!1806046))

(assert (=> bm!437527 d!1805930))

(declare-fun d!1806324 () Bool)

(assert (=> d!1806324 (= (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (nullableFct!1815 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun bs!1338943 () Bool)

(assert (= bs!1338943 d!1806324))

(declare-fun m!6678454 () Bool)

(assert (=> bs!1338943 m!6678454))

(assert (=> b!5724165 d!1806324))

(declare-fun d!1806326 () Bool)

(assert (=> d!1806326 (= (nullable!5753 (h!69786 (exprs!5605 lt!2278672))) (nullableFct!1815 (h!69786 (exprs!5605 lt!2278672))))))

(declare-fun bs!1338944 () Bool)

(assert (= bs!1338944 d!1806326))

(declare-fun m!6678456 () Bool)

(assert (=> bs!1338944 m!6678456))

(assert (=> b!5724160 d!1806326))

(assert (=> bs!1338423 d!1805676))

(declare-fun d!1806328 () Bool)

(assert (=> d!1806328 true))

(declare-fun setRes!38387 () Bool)

(assert (=> d!1806328 setRes!38387))

(declare-fun condSetEmpty!38387 () Bool)

(declare-fun res!2417119 () (InoxSet Context!10210))

(assert (=> d!1806328 (= condSetEmpty!38387 (= res!2417119 ((as const (Array Context!10210 Bool)) false)))))

(assert (=> d!1806328 (= (choose!43278 lt!2278685 lambda!309370) res!2417119)))

(declare-fun setIsEmpty!38387 () Bool)

(assert (=> setIsEmpty!38387 setRes!38387))

(declare-fun e!3520672 () Bool)

(declare-fun setNonEmpty!38387 () Bool)

(declare-fun tp!1585307 () Bool)

(declare-fun setElem!38387 () Context!10210)

(assert (=> setNonEmpty!38387 (= setRes!38387 (and tp!1585307 (inv!82549 setElem!38387) e!3520672))))

(declare-fun setRest!38387 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38387 (= res!2417119 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38387 true) setRest!38387))))

(declare-fun b!5725693 () Bool)

(declare-fun tp!1585308 () Bool)

(assert (=> b!5725693 (= e!3520672 tp!1585308)))

(assert (= (and d!1806328 condSetEmpty!38387) setIsEmpty!38387))

(assert (= (and d!1806328 (not condSetEmpty!38387)) setNonEmpty!38387))

(assert (= setNonEmpty!38387 b!5725693))

(declare-fun m!6678458 () Bool)

(assert (=> setNonEmpty!38387 m!6678458))

(assert (=> d!1805648 d!1806328))

(declare-fun bs!1338945 () Bool)

(declare-fun d!1806330 () Bool)

(assert (= bs!1338945 (and d!1806330 d!1806034)))

(declare-fun lambda!309520 () Int)

(assert (=> bs!1338945 (= lambda!309520 lambda!309479)))

(declare-fun bs!1338946 () Bool)

(assert (= bs!1338946 (and d!1806330 d!1805728)))

(assert (=> bs!1338946 (= lambda!309520 lambda!309442)))

(declare-fun bs!1338947 () Bool)

(assert (= bs!1338947 (and d!1806330 b!5723588)))

(assert (=> bs!1338947 (= lambda!309520 lambda!309371)))

(declare-fun bs!1338948 () Bool)

(assert (= bs!1338948 (and d!1806330 d!1806056)))

(assert (=> bs!1338948 (= lambda!309520 lambda!309481)))

(declare-fun bs!1338949 () Bool)

(assert (= bs!1338949 (and d!1806330 d!1806052)))

(assert (=> bs!1338949 (= lambda!309520 lambda!309480)))

(declare-fun bs!1338950 () Bool)

(assert (= bs!1338950 (and d!1806330 d!1805580)))

(assert (=> bs!1338950 (= lambda!309520 lambda!309402)))

(declare-fun bs!1338951 () Bool)

(assert (= bs!1338951 (and d!1806330 d!1806154)))

(assert (=> bs!1338951 (= lambda!309520 lambda!309497)))

(declare-fun bs!1338952 () Bool)

(assert (= bs!1338952 (and d!1806330 d!1806158)))

(assert (=> bs!1338952 (= lambda!309520 lambda!309498)))

(declare-fun bs!1338953 () Bool)

(assert (= bs!1338953 (and d!1806330 d!1805662)))

(assert (=> bs!1338953 (= lambda!309520 lambda!309423)))

(declare-fun bs!1338954 () Bool)

(assert (= bs!1338954 (and d!1806330 d!1805682)))

(assert (=> bs!1338954 (= lambda!309520 lambda!309424)))

(declare-fun bs!1338955 () Bool)

(assert (= bs!1338955 (and d!1806330 d!1805730)))

(assert (=> bs!1338955 (= lambda!309520 lambda!309445)))

(declare-fun bs!1338956 () Bool)

(assert (= bs!1338956 (and d!1806330 d!1806178)))

(assert (=> bs!1338956 (= lambda!309520 lambda!309500)))

(declare-fun bs!1338957 () Bool)

(assert (= bs!1338957 (and d!1806330 d!1806268)))

(assert (=> bs!1338957 (= lambda!309520 lambda!309517)))

(declare-fun bs!1338958 () Bool)

(assert (= bs!1338958 (and d!1806330 d!1806170)))

(assert (=> bs!1338958 (= lambda!309520 lambda!309499)))

(declare-fun b!5725694 () Bool)

(declare-fun e!3520678 () Bool)

(declare-fun lt!2278889 () Regex!15721)

(assert (=> b!5725694 (= e!3520678 (isEmptyExpr!1226 lt!2278889))))

(declare-fun b!5725695 () Bool)

(declare-fun e!3520675 () Regex!15721)

(assert (=> b!5725695 (= e!3520675 EmptyExpr!15721)))

(declare-fun b!5725696 () Bool)

(assert (=> b!5725696 (= e!3520675 (Concat!24566 (h!69786 (t!376788 (exprs!5605 (h!69787 zl!343)))) (generalisedConcat!1336 (t!376788 (t!376788 (exprs!5605 (h!69787 zl!343)))))))))

(declare-fun b!5725697 () Bool)

(declare-fun e!3520677 () Bool)

(assert (=> b!5725697 (= e!3520677 e!3520678)))

(declare-fun c!1010137 () Bool)

(assert (=> b!5725697 (= c!1010137 (isEmpty!35214 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> d!1806330 e!3520677))

(declare-fun res!2417121 () Bool)

(assert (=> d!1806330 (=> (not res!2417121) (not e!3520677))))

(assert (=> d!1806330 (= res!2417121 (validRegex!7457 lt!2278889))))

(declare-fun e!3520676 () Regex!15721)

(assert (=> d!1806330 (= lt!2278889 e!3520676)))

(declare-fun c!1010138 () Bool)

(declare-fun e!3520673 () Bool)

(assert (=> d!1806330 (= c!1010138 e!3520673)))

(declare-fun res!2417120 () Bool)

(assert (=> d!1806330 (=> (not res!2417120) (not e!3520673))))

(assert (=> d!1806330 (= res!2417120 ((_ is Cons!63338) (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> d!1806330 (forall!14854 (t!376788 (exprs!5605 (h!69787 zl!343))) lambda!309520)))

(assert (=> d!1806330 (= (generalisedConcat!1336 (t!376788 (exprs!5605 (h!69787 zl!343)))) lt!2278889)))

(declare-fun b!5725698 () Bool)

(declare-fun e!3520674 () Bool)

(assert (=> b!5725698 (= e!3520674 (isConcat!749 lt!2278889))))

(declare-fun b!5725699 () Bool)

(assert (=> b!5725699 (= e!3520676 e!3520675)))

(declare-fun c!1010139 () Bool)

(assert (=> b!5725699 (= c!1010139 ((_ is Cons!63338) (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5725700 () Bool)

(assert (=> b!5725700 (= e!3520674 (= lt!2278889 (head!12118 (t!376788 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5725701 () Bool)

(assert (=> b!5725701 (= e!3520673 (isEmpty!35214 (t!376788 (t!376788 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5725702 () Bool)

(assert (=> b!5725702 (= e!3520678 e!3520674)))

(declare-fun c!1010136 () Bool)

(assert (=> b!5725702 (= c!1010136 (isEmpty!35214 (tail!11213 (t!376788 (exprs!5605 (h!69787 zl!343))))))))

(declare-fun b!5725703 () Bool)

(assert (=> b!5725703 (= e!3520676 (h!69786 (t!376788 (exprs!5605 (h!69787 zl!343)))))))

(assert (= (and d!1806330 res!2417120) b!5725701))

(assert (= (and d!1806330 c!1010138) b!5725703))

(assert (= (and d!1806330 (not c!1010138)) b!5725699))

(assert (= (and b!5725699 c!1010139) b!5725696))

(assert (= (and b!5725699 (not c!1010139)) b!5725695))

(assert (= (and d!1806330 res!2417121) b!5725697))

(assert (= (and b!5725697 c!1010137) b!5725694))

(assert (= (and b!5725697 (not c!1010137)) b!5725702))

(assert (= (and b!5725702 c!1010136) b!5725700))

(assert (= (and b!5725702 (not c!1010136)) b!5725698))

(declare-fun m!6678460 () Bool)

(assert (=> b!5725694 m!6678460))

(declare-fun m!6678462 () Bool)

(assert (=> b!5725701 m!6678462))

(declare-fun m!6678464 () Bool)

(assert (=> b!5725698 m!6678464))

(declare-fun m!6678466 () Bool)

(assert (=> d!1806330 m!6678466))

(declare-fun m!6678468 () Bool)

(assert (=> d!1806330 m!6678468))

(declare-fun m!6678470 () Bool)

(assert (=> b!5725702 m!6678470))

(assert (=> b!5725702 m!6678470))

(declare-fun m!6678472 () Bool)

(assert (=> b!5725702 m!6678472))

(assert (=> b!5725697 m!6676534))

(declare-fun m!6678474 () Bool)

(assert (=> b!5725696 m!6678474))

(declare-fun m!6678476 () Bool)

(assert (=> b!5725700 m!6678476))

(assert (=> b!5723980 d!1806330))

(declare-fun d!1806332 () Bool)

(assert (=> d!1806332 (= (map!14502 lt!2278685 lambda!309417) (choose!43278 lt!2278685 lambda!309417))))

(declare-fun bs!1338959 () Bool)

(assert (= bs!1338959 d!1806332))

(declare-fun m!6678478 () Bool)

(assert (=> bs!1338959 m!6678478))

(assert (=> d!1805634 d!1806332))

(declare-fun d!1806334 () Bool)

(declare-fun res!2417122 () Bool)

(declare-fun e!3520679 () Bool)

(assert (=> d!1806334 (=> res!2417122 e!3520679)))

(assert (=> d!1806334 (= res!2417122 ((_ is Nil!63338) (exprs!5605 setElem!38363)))))

(assert (=> d!1806334 (= (forall!14854 (exprs!5605 setElem!38363) lambda!309423) e!3520679)))

(declare-fun b!5725704 () Bool)

(declare-fun e!3520680 () Bool)

(assert (=> b!5725704 (= e!3520679 e!3520680)))

(declare-fun res!2417123 () Bool)

(assert (=> b!5725704 (=> (not res!2417123) (not e!3520680))))

(assert (=> b!5725704 (= res!2417123 (dynLambda!24788 lambda!309423 (h!69786 (exprs!5605 setElem!38363))))))

(declare-fun b!5725705 () Bool)

(assert (=> b!5725705 (= e!3520680 (forall!14854 (t!376788 (exprs!5605 setElem!38363)) lambda!309423))))

(assert (= (and d!1806334 (not res!2417122)) b!5725704))

(assert (= (and b!5725704 res!2417123) b!5725705))

(declare-fun b_lambda!216377 () Bool)

(assert (=> (not b_lambda!216377) (not b!5725704)))

(declare-fun m!6678480 () Bool)

(assert (=> b!5725704 m!6678480))

(declare-fun m!6678482 () Bool)

(assert (=> b!5725705 m!6678482))

(assert (=> d!1805662 d!1806334))

(declare-fun b!5725706 () Bool)

(declare-fun e!3520681 () (InoxSet Context!10210))

(declare-fun e!3520684 () (InoxSet Context!10210))

(assert (=> b!5725706 (= e!3520681 e!3520684)))

(declare-fun c!1010143 () Bool)

(assert (=> b!5725706 (= c!1010143 ((_ is Union!15721) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun c!1010141 () Bool)

(declare-fun bm!437772 () Bool)

(declare-fun call!437782 () List!63462)

(declare-fun c!1010142 () Bool)

(declare-fun call!437781 () (InoxSet Context!10210))

(assert (=> bm!437772 (= call!437781 (derivationStepZipperDown!1063 (ite c!1010143 (regTwo!31955 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (ite c!1010141 (regTwo!31954 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (ite c!1010142 (regOne!31954 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (reg!16050 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))) (ite (or c!1010143 c!1010141) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (Context!10211 call!437782)) (h!69788 s!2326)))))

(declare-fun call!437779 () List!63462)

(declare-fun bm!437773 () Bool)

(assert (=> bm!437773 (= call!437779 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))) (ite (or c!1010141 c!1010142) (regTwo!31954 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))))

(declare-fun b!5725707 () Bool)

(declare-fun e!3520685 () (InoxSet Context!10210))

(declare-fun call!437780 () (InoxSet Context!10210))

(assert (=> b!5725707 (= e!3520685 call!437780)))

(declare-fun bm!437774 () Bool)

(declare-fun call!437778 () (InoxSet Context!10210))

(assert (=> bm!437774 (= call!437780 call!437778)))

(declare-fun b!5725708 () Bool)

(declare-fun e!3520686 () Bool)

(assert (=> b!5725708 (= e!3520686 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))))))

(declare-fun bm!437776 () Bool)

(assert (=> bm!437776 (= call!437782 call!437779)))

(declare-fun b!5725709 () Bool)

(declare-fun e!3520682 () (InoxSet Context!10210))

(assert (=> b!5725709 (= e!3520682 call!437780)))

(declare-fun b!5725710 () Bool)

(declare-fun c!1010144 () Bool)

(assert (=> b!5725710 (= c!1010144 ((_ is Star!15721) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(assert (=> b!5725710 (= e!3520682 e!3520685)))

(declare-fun b!5725711 () Bool)

(declare-fun e!3520683 () (InoxSet Context!10210))

(assert (=> b!5725711 (= e!3520683 e!3520682)))

(assert (=> b!5725711 (= c!1010142 ((_ is Concat!24566) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(declare-fun b!5725712 () Bool)

(assert (=> b!5725712 (= c!1010141 e!3520686)))

(declare-fun res!2417124 () Bool)

(assert (=> b!5725712 (=> (not res!2417124) (not e!3520686))))

(assert (=> b!5725712 (= res!2417124 ((_ is Concat!24566) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))))))

(assert (=> b!5725712 (= e!3520684 e!3520683)))

(declare-fun b!5725713 () Bool)

(assert (=> b!5725713 (= e!3520685 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725714 () Bool)

(declare-fun call!437777 () (InoxSet Context!10210))

(assert (=> b!5725714 (= e!3520683 ((_ map or) call!437777 call!437778))))

(declare-fun b!5725715 () Bool)

(assert (=> b!5725715 (= e!3520681 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) true))))

(declare-fun d!1806336 () Bool)

(declare-fun c!1010140 () Bool)

(assert (=> d!1806336 (= c!1010140 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (= (c!1009551 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326))))))

(assert (=> d!1806336 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (h!69788 s!2326)) e!3520681)))

(declare-fun bm!437775 () Bool)

(assert (=> bm!437775 (= call!437777 (derivationStepZipperDown!1063 (ite c!1010143 (regOne!31955 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (regOne!31954 (h!69786 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343))))))))) (ite c!1010143 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (Cons!63338 (h!69786 (exprs!5605 (h!69787 zl!343))) (t!376788 (exprs!5605 (h!69787 zl!343)))))))) (Context!10211 call!437779)) (h!69788 s!2326)))))

(declare-fun b!5725716 () Bool)

(assert (=> b!5725716 (= e!3520684 ((_ map or) call!437777 call!437781))))

(declare-fun bm!437777 () Bool)

(assert (=> bm!437777 (= call!437778 call!437781)))

(assert (= (and d!1806336 c!1010140) b!5725715))

(assert (= (and d!1806336 (not c!1010140)) b!5725706))

(assert (= (and b!5725706 c!1010143) b!5725716))

(assert (= (and b!5725706 (not c!1010143)) b!5725712))

(assert (= (and b!5725712 res!2417124) b!5725708))

(assert (= (and b!5725712 c!1010141) b!5725714))

(assert (= (and b!5725712 (not c!1010141)) b!5725711))

(assert (= (and b!5725711 c!1010142) b!5725709))

(assert (= (and b!5725711 (not c!1010142)) b!5725710))

(assert (= (and b!5725710 c!1010144) b!5725707))

(assert (= (and b!5725710 (not c!1010144)) b!5725713))

(assert (= (or b!5725709 b!5725707) bm!437776))

(assert (= (or b!5725709 b!5725707) bm!437774))

(assert (= (or b!5725714 bm!437776) bm!437773))

(assert (= (or b!5725714 bm!437774) bm!437777))

(assert (= (or b!5725716 bm!437777) bm!437772))

(assert (= (or b!5725716 b!5725714) bm!437775))

(declare-fun m!6678484 () Bool)

(assert (=> b!5725708 m!6678484))

(declare-fun m!6678486 () Bool)

(assert (=> bm!437775 m!6678486))

(declare-fun m!6678488 () Bool)

(assert (=> b!5725715 m!6678488))

(declare-fun m!6678490 () Bool)

(assert (=> bm!437772 m!6678490))

(declare-fun m!6678492 () Bool)

(assert (=> bm!437773 m!6678492))

(assert (=> bm!437497 d!1806336))

(declare-fun b!5725717 () Bool)

(declare-fun e!3520687 () (InoxSet Context!10210))

(declare-fun e!3520690 () (InoxSet Context!10210))

(assert (=> b!5725717 (= e!3520687 e!3520690)))

(declare-fun c!1010148 () Bool)

(assert (=> b!5725717 (= c!1010148 ((_ is Union!15721) (h!69786 (exprs!5605 lt!2278672))))))

(declare-fun call!437788 () List!63462)

(declare-fun bm!437778 () Bool)

(declare-fun c!1010146 () Bool)

(declare-fun call!437787 () (InoxSet Context!10210))

(declare-fun c!1010147 () Bool)

(assert (=> bm!437778 (= call!437787 (derivationStepZipperDown!1063 (ite c!1010148 (regTwo!31955 (h!69786 (exprs!5605 lt!2278672))) (ite c!1010146 (regTwo!31954 (h!69786 (exprs!5605 lt!2278672))) (ite c!1010147 (regOne!31954 (h!69786 (exprs!5605 lt!2278672))) (reg!16050 (h!69786 (exprs!5605 lt!2278672)))))) (ite (or c!1010148 c!1010146) (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (Context!10211 call!437788)) (h!69788 s!2326)))))

(declare-fun bm!437779 () Bool)

(declare-fun call!437785 () List!63462)

(assert (=> bm!437779 (= call!437785 ($colon$colon!1736 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278672)))) (ite (or c!1010146 c!1010147) (regTwo!31954 (h!69786 (exprs!5605 lt!2278672))) (h!69786 (exprs!5605 lt!2278672)))))))

(declare-fun b!5725718 () Bool)

(declare-fun e!3520691 () (InoxSet Context!10210))

(declare-fun call!437786 () (InoxSet Context!10210))

(assert (=> b!5725718 (= e!3520691 call!437786)))

(declare-fun bm!437780 () Bool)

(declare-fun call!437784 () (InoxSet Context!10210))

(assert (=> bm!437780 (= call!437786 call!437784)))

(declare-fun b!5725719 () Bool)

(declare-fun e!3520692 () Bool)

(assert (=> b!5725719 (= e!3520692 (nullable!5753 (regOne!31954 (h!69786 (exprs!5605 lt!2278672)))))))

(declare-fun bm!437782 () Bool)

(assert (=> bm!437782 (= call!437788 call!437785)))

(declare-fun b!5725720 () Bool)

(declare-fun e!3520688 () (InoxSet Context!10210))

(assert (=> b!5725720 (= e!3520688 call!437786)))

(declare-fun b!5725721 () Bool)

(declare-fun c!1010149 () Bool)

(assert (=> b!5725721 (= c!1010149 ((_ is Star!15721) (h!69786 (exprs!5605 lt!2278672))))))

(assert (=> b!5725721 (= e!3520688 e!3520691)))

(declare-fun b!5725722 () Bool)

(declare-fun e!3520689 () (InoxSet Context!10210))

(assert (=> b!5725722 (= e!3520689 e!3520688)))

(assert (=> b!5725722 (= c!1010147 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278672))))))

(declare-fun b!5725723 () Bool)

(assert (=> b!5725723 (= c!1010146 e!3520692)))

(declare-fun res!2417125 () Bool)

(assert (=> b!5725723 (=> (not res!2417125) (not e!3520692))))

(assert (=> b!5725723 (= res!2417125 ((_ is Concat!24566) (h!69786 (exprs!5605 lt!2278672))))))

(assert (=> b!5725723 (= e!3520690 e!3520689)))

(declare-fun b!5725724 () Bool)

(assert (=> b!5725724 (= e!3520691 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725725 () Bool)

(declare-fun call!437783 () (InoxSet Context!10210))

(assert (=> b!5725725 (= e!3520689 ((_ map or) call!437783 call!437784))))

(declare-fun b!5725726 () Bool)

(assert (=> b!5725726 (= e!3520687 (store ((as const (Array Context!10210 Bool)) false) (Context!10211 (t!376788 (exprs!5605 lt!2278672))) true))))

(declare-fun d!1806338 () Bool)

(declare-fun c!1010145 () Bool)

(assert (=> d!1806338 (= c!1010145 (and ((_ is ElementMatch!15721) (h!69786 (exprs!5605 lt!2278672))) (= (c!1009551 (h!69786 (exprs!5605 lt!2278672))) (h!69788 s!2326))))))

(assert (=> d!1806338 (= (derivationStepZipperDown!1063 (h!69786 (exprs!5605 lt!2278672)) (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (h!69788 s!2326)) e!3520687)))

(declare-fun bm!437781 () Bool)

(assert (=> bm!437781 (= call!437783 (derivationStepZipperDown!1063 (ite c!1010148 (regOne!31955 (h!69786 (exprs!5605 lt!2278672))) (regOne!31954 (h!69786 (exprs!5605 lt!2278672)))) (ite c!1010148 (Context!10211 (t!376788 (exprs!5605 lt!2278672))) (Context!10211 call!437785)) (h!69788 s!2326)))))

(declare-fun b!5725727 () Bool)

(assert (=> b!5725727 (= e!3520690 ((_ map or) call!437783 call!437787))))

(declare-fun bm!437783 () Bool)

(assert (=> bm!437783 (= call!437784 call!437787)))

(assert (= (and d!1806338 c!1010145) b!5725726))

(assert (= (and d!1806338 (not c!1010145)) b!5725717))

(assert (= (and b!5725717 c!1010148) b!5725727))

(assert (= (and b!5725717 (not c!1010148)) b!5725723))

(assert (= (and b!5725723 res!2417125) b!5725719))

(assert (= (and b!5725723 c!1010146) b!5725725))

(assert (= (and b!5725723 (not c!1010146)) b!5725722))

(assert (= (and b!5725722 c!1010147) b!5725720))

(assert (= (and b!5725722 (not c!1010147)) b!5725721))

(assert (= (and b!5725721 c!1010149) b!5725718))

(assert (= (and b!5725721 (not c!1010149)) b!5725724))

(assert (= (or b!5725720 b!5725718) bm!437782))

(assert (= (or b!5725720 b!5725718) bm!437780))

(assert (= (or b!5725725 bm!437782) bm!437779))

(assert (= (or b!5725725 bm!437780) bm!437783))

(assert (= (or b!5725727 bm!437783) bm!437778))

(assert (= (or b!5725727 b!5725725) bm!437781))

(declare-fun m!6678494 () Bool)

(assert (=> b!5725719 m!6678494))

(declare-fun m!6678496 () Bool)

(assert (=> bm!437781 m!6678496))

(declare-fun m!6678498 () Bool)

(assert (=> b!5725726 m!6678498))

(declare-fun m!6678500 () Bool)

(assert (=> bm!437778 m!6678500))

(declare-fun m!6678502 () Bool)

(assert (=> bm!437779 m!6678502))

(assert (=> bm!437496 d!1806338))

(declare-fun d!1806340 () Bool)

(declare-fun c!1010152 () Bool)

(assert (=> d!1806340 (= c!1010152 ((_ is Nil!63339) lt!2278779))))

(declare-fun e!3520695 () (InoxSet Context!10210))

(assert (=> d!1806340 (= (content!11514 lt!2278779) e!3520695)))

(declare-fun b!5725732 () Bool)

(assert (=> b!5725732 (= e!3520695 ((as const (Array Context!10210 Bool)) false))))

(declare-fun b!5725733 () Bool)

(assert (=> b!5725733 (= e!3520695 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) (h!69787 lt!2278779) true) (content!11514 (t!376789 lt!2278779))))))

(assert (= (and d!1806340 c!1010152) b!5725732))

(assert (= (and d!1806340 (not c!1010152)) b!5725733))

(declare-fun m!6678504 () Bool)

(assert (=> b!5725733 m!6678504))

(declare-fun m!6678506 () Bool)

(assert (=> b!5725733 m!6678506))

(assert (=> b!5724158 d!1806340))

(declare-fun bs!1338960 () Bool)

(declare-fun b!5725739 () Bool)

(assert (= bs!1338960 (and b!5725739 d!1805720)))

(declare-fun lambda!309521 () Int)

(assert (=> bs!1338960 (not (= lambda!309521 lambda!309433))))

(declare-fun bs!1338961 () Bool)

(assert (= bs!1338961 (and b!5725739 b!5724405)))

(assert (=> bs!1338961 (= (and (= (reg!16050 (regTwo!31955 r!7292)) (reg!16050 lt!2278693)) (= (regTwo!31955 r!7292) lt!2278693)) (= lambda!309521 lambda!309446))))

(declare-fun bs!1338962 () Bool)

(assert (= bs!1338962 (and b!5725739 b!5723592)))

(assert (=> bs!1338962 (not (= lambda!309521 lambda!309367))))

(declare-fun bs!1338963 () Bool)

(assert (= bs!1338963 (and b!5725739 d!1806246)))

(assert (=> bs!1338963 (not (= lambda!309521 lambda!309515))))

(declare-fun bs!1338964 () Bool)

(assert (= bs!1338964 (and b!5725739 b!5724262)))

(assert (=> bs!1338964 (not (= lambda!309521 lambda!309430))))

(declare-fun bs!1338965 () Bool)

(assert (= bs!1338965 (and b!5725739 b!5725445)))

(assert (=> bs!1338965 (= (and (= (reg!16050 (regTwo!31955 r!7292)) (reg!16050 (regOne!31955 lt!2278693))) (= (regTwo!31955 r!7292) (regOne!31955 lt!2278693))) (= lambda!309521 lambda!309509))))

(declare-fun bs!1338966 () Bool)

(assert (= bs!1338966 (and b!5725739 b!5725444)))

(assert (=> bs!1338966 (not (= lambda!309521 lambda!309510))))

(declare-fun bs!1338967 () Bool)

(assert (= bs!1338967 (and b!5725739 b!5725156)))

(assert (=> bs!1338967 (not (= lambda!309521 lambda!309492))))

(declare-fun bs!1338968 () Bool)

(assert (= bs!1338968 (and b!5725739 d!1805722)))

(assert (=> bs!1338968 (not (= lambda!309521 lambda!309438))))

(assert (=> bs!1338962 (not (= lambda!309521 lambda!309368))))

(declare-fun bs!1338969 () Bool)

(assert (= bs!1338969 (and b!5725739 b!5725157)))

(assert (=> bs!1338969 (= (and (= (reg!16050 (regTwo!31955 r!7292)) (reg!16050 (regTwo!31955 lt!2278693))) (= (regTwo!31955 r!7292) (regTwo!31955 lt!2278693))) (= lambda!309521 lambda!309490))))

(assert (=> bs!1338963 (not (= lambda!309521 lambda!309516))))

(declare-fun bs!1338970 () Bool)

(assert (= bs!1338970 (and b!5725739 b!5724404)))

(assert (=> bs!1338970 (not (= lambda!309521 lambda!309447))))

(declare-fun bs!1338971 () Bool)

(assert (= bs!1338971 (and b!5725739 b!5724263)))

(assert (=> bs!1338971 (= (and (= (reg!16050 (regTwo!31955 r!7292)) (reg!16050 r!7292)) (= (regTwo!31955 r!7292) r!7292)) (= lambda!309521 lambda!309429))))

(assert (=> bs!1338968 (not (= lambda!309521 lambda!309439))))

(assert (=> b!5725739 true))

(assert (=> b!5725739 true))

(declare-fun bs!1338972 () Bool)

(declare-fun b!5725738 () Bool)

(assert (= bs!1338972 (and b!5725738 d!1805720)))

(declare-fun lambda!309522 () Int)

(assert (=> bs!1338972 (not (= lambda!309522 lambda!309433))))

(declare-fun bs!1338973 () Bool)

(assert (= bs!1338973 (and b!5725738 b!5725739)))

(assert (=> bs!1338973 (not (= lambda!309522 lambda!309521))))

(declare-fun bs!1338974 () Bool)

(assert (= bs!1338974 (and b!5725738 b!5724405)))

(assert (=> bs!1338974 (not (= lambda!309522 lambda!309446))))

(declare-fun bs!1338975 () Bool)

(assert (= bs!1338975 (and b!5725738 b!5723592)))

(assert (=> bs!1338975 (not (= lambda!309522 lambda!309367))))

(declare-fun bs!1338976 () Bool)

(assert (= bs!1338976 (and b!5725738 d!1806246)))

(assert (=> bs!1338976 (not (= lambda!309522 lambda!309515))))

(declare-fun bs!1338977 () Bool)

(assert (= bs!1338977 (and b!5725738 b!5724262)))

(assert (=> bs!1338977 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309522 lambda!309430))))

(declare-fun bs!1338978 () Bool)

(assert (= bs!1338978 (and b!5725738 b!5725445)))

(assert (=> bs!1338978 (not (= lambda!309522 lambda!309509))))

(declare-fun bs!1338979 () Bool)

(assert (= bs!1338979 (and b!5725738 b!5725444)))

(assert (=> bs!1338979 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 (regOne!31955 lt!2278693))) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 (regOne!31955 lt!2278693)))) (= lambda!309522 lambda!309510))))

(declare-fun bs!1338980 () Bool)

(assert (= bs!1338980 (and b!5725738 b!5725156)))

(assert (=> bs!1338980 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 (regTwo!31955 lt!2278693))) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 (regTwo!31955 lt!2278693)))) (= lambda!309522 lambda!309492))))

(declare-fun bs!1338981 () Bool)

(assert (= bs!1338981 (and b!5725738 d!1805722)))

(assert (=> bs!1338981 (not (= lambda!309522 lambda!309438))))

(assert (=> bs!1338975 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309522 lambda!309368))))

(declare-fun bs!1338982 () Bool)

(assert (= bs!1338982 (and b!5725738 b!5725157)))

(assert (=> bs!1338982 (not (= lambda!309522 lambda!309490))))

(assert (=> bs!1338976 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309522 lambda!309516))))

(declare-fun bs!1338983 () Bool)

(assert (= bs!1338983 (and b!5725738 b!5724404)))

(assert (=> bs!1338983 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 lt!2278693)) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 lt!2278693))) (= lambda!309522 lambda!309447))))

(declare-fun bs!1338984 () Bool)

(assert (= bs!1338984 (and b!5725738 b!5724263)))

(assert (=> bs!1338984 (not (= lambda!309522 lambda!309429))))

(assert (=> bs!1338981 (= (and (= (regOne!31954 (regTwo!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regTwo!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309522 lambda!309439))))

(assert (=> b!5725738 true))

(assert (=> b!5725738 true))

(declare-fun b!5725734 () Bool)

(declare-fun e!3520699 () Bool)

(declare-fun e!3520698 () Bool)

(assert (=> b!5725734 (= e!3520699 e!3520698)))

(declare-fun res!2417126 () Bool)

(assert (=> b!5725734 (= res!2417126 (not ((_ is EmptyLang!15721) (regTwo!31955 r!7292))))))

(assert (=> b!5725734 (=> (not res!2417126) (not e!3520698))))

(declare-fun b!5725735 () Bool)

(declare-fun res!2417127 () Bool)

(declare-fun e!3520701 () Bool)

(assert (=> b!5725735 (=> res!2417127 e!3520701)))

(declare-fun call!437789 () Bool)

(assert (=> b!5725735 (= res!2417127 call!437789)))

(declare-fun e!3520697 () Bool)

(assert (=> b!5725735 (= e!3520697 e!3520701)))

(declare-fun b!5725736 () Bool)

(declare-fun e!3520700 () Bool)

(assert (=> b!5725736 (= e!3520700 (matchRSpec!2824 (regTwo!31955 (regTwo!31955 r!7292)) s!2326))))

(declare-fun d!1806342 () Bool)

(declare-fun c!1010153 () Bool)

(assert (=> d!1806342 (= c!1010153 ((_ is EmptyExpr!15721) (regTwo!31955 r!7292)))))

(assert (=> d!1806342 (= (matchRSpec!2824 (regTwo!31955 r!7292) s!2326) e!3520699)))

(declare-fun b!5725737 () Bool)

(declare-fun c!1010156 () Bool)

(assert (=> b!5725737 (= c!1010156 ((_ is ElementMatch!15721) (regTwo!31955 r!7292)))))

(declare-fun e!3520696 () Bool)

(assert (=> b!5725737 (= e!3520698 e!3520696)))

(declare-fun call!437790 () Bool)

(assert (=> b!5725738 (= e!3520697 call!437790)))

(declare-fun bm!437784 () Bool)

(declare-fun c!1010154 () Bool)

(assert (=> bm!437784 (= call!437790 (Exists!2821 (ite c!1010154 lambda!309521 lambda!309522)))))

(assert (=> b!5725739 (= e!3520701 call!437790)))

(declare-fun b!5725740 () Bool)

(declare-fun e!3520702 () Bool)

(assert (=> b!5725740 (= e!3520702 e!3520697)))

(assert (=> b!5725740 (= c!1010154 ((_ is Star!15721) (regTwo!31955 r!7292)))))

(declare-fun b!5725741 () Bool)

(assert (=> b!5725741 (= e!3520699 call!437789)))

(declare-fun b!5725742 () Bool)

(assert (=> b!5725742 (= e!3520696 (= s!2326 (Cons!63340 (c!1009551 (regTwo!31955 r!7292)) Nil!63340)))))

(declare-fun b!5725743 () Bool)

(declare-fun c!1010155 () Bool)

(assert (=> b!5725743 (= c!1010155 ((_ is Union!15721) (regTwo!31955 r!7292)))))

(assert (=> b!5725743 (= e!3520696 e!3520702)))

(declare-fun b!5725744 () Bool)

(assert (=> b!5725744 (= e!3520702 e!3520700)))

(declare-fun res!2417128 () Bool)

(assert (=> b!5725744 (= res!2417128 (matchRSpec!2824 (regOne!31955 (regTwo!31955 r!7292)) s!2326))))

(assert (=> b!5725744 (=> res!2417128 e!3520700)))

(declare-fun bm!437785 () Bool)

(assert (=> bm!437785 (= call!437789 (isEmpty!35217 s!2326))))

(assert (= (and d!1806342 c!1010153) b!5725741))

(assert (= (and d!1806342 (not c!1010153)) b!5725734))

(assert (= (and b!5725734 res!2417126) b!5725737))

(assert (= (and b!5725737 c!1010156) b!5725742))

(assert (= (and b!5725737 (not c!1010156)) b!5725743))

(assert (= (and b!5725743 c!1010155) b!5725744))

(assert (= (and b!5725743 (not c!1010155)) b!5725740))

(assert (= (and b!5725744 (not res!2417128)) b!5725736))

(assert (= (and b!5725740 c!1010154) b!5725735))

(assert (= (and b!5725740 (not c!1010154)) b!5725738))

(assert (= (and b!5725735 (not res!2417127)) b!5725739))

(assert (= (or b!5725739 b!5725738) bm!437784))

(assert (= (or b!5725741 b!5725735) bm!437785))

(declare-fun m!6678508 () Bool)

(assert (=> b!5725736 m!6678508))

(declare-fun m!6678510 () Bool)

(assert (=> bm!437784 m!6678510))

(declare-fun m!6678512 () Bool)

(assert (=> b!5725744 m!6678512))

(assert (=> bm!437785 m!6676876))

(assert (=> b!5724260 d!1806342))

(assert (=> b!5724384 d!1805580))

(declare-fun bs!1338985 () Bool)

(declare-fun d!1806344 () Bool)

(assert (= bs!1338985 (and d!1806344 d!1806034)))

(declare-fun lambda!309523 () Int)

(assert (=> bs!1338985 (= lambda!309523 lambda!309479)))

(declare-fun bs!1338986 () Bool)

(assert (= bs!1338986 (and d!1806344 d!1805728)))

(assert (=> bs!1338986 (= lambda!309523 lambda!309442)))

(declare-fun bs!1338987 () Bool)

(assert (= bs!1338987 (and d!1806344 b!5723588)))

(assert (=> bs!1338987 (= lambda!309523 lambda!309371)))

(declare-fun bs!1338988 () Bool)

(assert (= bs!1338988 (and d!1806344 d!1806056)))

(assert (=> bs!1338988 (= lambda!309523 lambda!309481)))

(declare-fun bs!1338989 () Bool)

(assert (= bs!1338989 (and d!1806344 d!1806052)))

(assert (=> bs!1338989 (= lambda!309523 lambda!309480)))

(declare-fun bs!1338990 () Bool)

(assert (= bs!1338990 (and d!1806344 d!1806154)))

(assert (=> bs!1338990 (= lambda!309523 lambda!309497)))

(declare-fun bs!1338991 () Bool)

(assert (= bs!1338991 (and d!1806344 d!1806158)))

(assert (=> bs!1338991 (= lambda!309523 lambda!309498)))

(declare-fun bs!1338992 () Bool)

(assert (= bs!1338992 (and d!1806344 d!1805662)))

(assert (=> bs!1338992 (= lambda!309523 lambda!309423)))

(declare-fun bs!1338993 () Bool)

(assert (= bs!1338993 (and d!1806344 d!1805682)))

(assert (=> bs!1338993 (= lambda!309523 lambda!309424)))

(declare-fun bs!1338994 () Bool)

(assert (= bs!1338994 (and d!1806344 d!1805730)))

(assert (=> bs!1338994 (= lambda!309523 lambda!309445)))

(declare-fun bs!1338995 () Bool)

(assert (= bs!1338995 (and d!1806344 d!1806178)))

(assert (=> bs!1338995 (= lambda!309523 lambda!309500)))

(declare-fun bs!1338996 () Bool)

(assert (= bs!1338996 (and d!1806344 d!1806268)))

(assert (=> bs!1338996 (= lambda!309523 lambda!309517)))

(declare-fun bs!1338997 () Bool)

(assert (= bs!1338997 (and d!1806344 d!1806170)))

(assert (=> bs!1338997 (= lambda!309523 lambda!309499)))

(declare-fun bs!1338998 () Bool)

(assert (= bs!1338998 (and d!1806344 d!1805580)))

(assert (=> bs!1338998 (= lambda!309523 lambda!309402)))

(declare-fun bs!1338999 () Bool)

(assert (= bs!1338999 (and d!1806344 d!1806330)))

(assert (=> bs!1338999 (= lambda!309523 lambda!309520)))

(declare-fun lt!2278890 () List!63462)

(assert (=> d!1806344 (forall!14854 lt!2278890 lambda!309523)))

(declare-fun e!3520703 () List!63462)

(assert (=> d!1806344 (= lt!2278890 e!3520703)))

(declare-fun c!1010157 () Bool)

(assert (=> d!1806344 (= c!1010157 ((_ is Cons!63339) (t!376789 zl!343)))))

(assert (=> d!1806344 (= (unfocusZipperList!1149 (t!376789 zl!343)) lt!2278890)))

(declare-fun b!5725745 () Bool)

(assert (=> b!5725745 (= e!3520703 (Cons!63338 (generalisedConcat!1336 (exprs!5605 (h!69787 (t!376789 zl!343)))) (unfocusZipperList!1149 (t!376789 (t!376789 zl!343)))))))

(declare-fun b!5725746 () Bool)

(assert (=> b!5725746 (= e!3520703 Nil!63338)))

(assert (= (and d!1806344 c!1010157) b!5725745))

(assert (= (and d!1806344 (not c!1010157)) b!5725746))

(declare-fun m!6678514 () Bool)

(assert (=> d!1806344 m!6678514))

(declare-fun m!6678516 () Bool)

(assert (=> b!5725745 m!6678516))

(declare-fun m!6678518 () Bool)

(assert (=> b!5725745 m!6678518))

(assert (=> b!5724384 d!1806344))

(declare-fun d!1806346 () Bool)

(assert (=> d!1806346 true))

(declare-fun setRes!38388 () Bool)

(assert (=> d!1806346 setRes!38388))

(declare-fun condSetEmpty!38388 () Bool)

(declare-fun res!2417129 () (InoxSet Context!10210))

(assert (=> d!1806346 (= condSetEmpty!38388 (= res!2417129 ((as const (Array Context!10210 Bool)) false)))))

(assert (=> d!1806346 (= (choose!43281 z!1189 lambda!309369) res!2417129)))

(declare-fun setIsEmpty!38388 () Bool)

(assert (=> setIsEmpty!38388 setRes!38388))

(declare-fun e!3520704 () Bool)

(declare-fun setElem!38388 () Context!10210)

(declare-fun tp!1585310 () Bool)

(declare-fun setNonEmpty!38388 () Bool)

(assert (=> setNonEmpty!38388 (= setRes!38388 (and tp!1585310 (inv!82549 setElem!38388) e!3520704))))

(declare-fun setRest!38388 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38388 (= res!2417129 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38388 true) setRest!38388))))

(declare-fun b!5725747 () Bool)

(declare-fun tp!1585309 () Bool)

(assert (=> b!5725747 (= e!3520704 tp!1585309)))

(assert (= (and d!1806346 condSetEmpty!38388) setIsEmpty!38388))

(assert (= (and d!1806346 (not condSetEmpty!38388)) setNonEmpty!38388))

(assert (= setNonEmpty!38388 b!5725747))

(declare-fun m!6678520 () Bool)

(assert (=> setNonEmpty!38388 m!6678520))

(assert (=> d!1805674 d!1806346))

(declare-fun d!1806348 () Bool)

(assert (=> d!1806348 (= (Exists!2821 lambda!309433) (choose!43286 lambda!309433))))

(declare-fun bs!1339000 () Bool)

(assert (= bs!1339000 d!1806348))

(declare-fun m!6678522 () Bool)

(assert (=> bs!1339000 m!6678522))

(assert (=> d!1805720 d!1806348))

(assert (=> d!1805720 d!1805714))

(assert (=> d!1805720 d!1806262))

(assert (=> d!1805720 d!1805724))

(declare-fun bs!1339001 () Bool)

(declare-fun d!1806350 () Bool)

(assert (= bs!1339001 (and d!1806350 d!1805720)))

(declare-fun lambda!309526 () Int)

(assert (=> bs!1339001 (= lambda!309526 lambda!309433)))

(declare-fun bs!1339002 () Bool)

(assert (= bs!1339002 (and d!1806350 b!5725739)))

(assert (=> bs!1339002 (not (= lambda!309526 lambda!309521))))

(declare-fun bs!1339003 () Bool)

(assert (= bs!1339003 (and d!1806350 b!5724405)))

(assert (=> bs!1339003 (not (= lambda!309526 lambda!309446))))

(declare-fun bs!1339004 () Bool)

(assert (= bs!1339004 (and d!1806350 b!5723592)))

(assert (=> bs!1339004 (= lambda!309526 lambda!309367)))

(declare-fun bs!1339005 () Bool)

(assert (= bs!1339005 (and d!1806350 b!5725738)))

(assert (=> bs!1339005 (not (= lambda!309526 lambda!309522))))

(declare-fun bs!1339006 () Bool)

(assert (= bs!1339006 (and d!1806350 d!1806246)))

(assert (=> bs!1339006 (= lambda!309526 lambda!309515)))

(declare-fun bs!1339007 () Bool)

(assert (= bs!1339007 (and d!1806350 b!5724262)))

(assert (=> bs!1339007 (not (= lambda!309526 lambda!309430))))

(declare-fun bs!1339008 () Bool)

(assert (= bs!1339008 (and d!1806350 b!5725445)))

(assert (=> bs!1339008 (not (= lambda!309526 lambda!309509))))

(declare-fun bs!1339009 () Bool)

(assert (= bs!1339009 (and d!1806350 b!5725444)))

(assert (=> bs!1339009 (not (= lambda!309526 lambda!309510))))

(declare-fun bs!1339010 () Bool)

(assert (= bs!1339010 (and d!1806350 b!5725156)))

(assert (=> bs!1339010 (not (= lambda!309526 lambda!309492))))

(declare-fun bs!1339011 () Bool)

(assert (= bs!1339011 (and d!1806350 d!1805722)))

(assert (=> bs!1339011 (= lambda!309526 lambda!309438)))

(assert (=> bs!1339004 (not (= lambda!309526 lambda!309368))))

(declare-fun bs!1339012 () Bool)

(assert (= bs!1339012 (and d!1806350 b!5725157)))

(assert (=> bs!1339012 (not (= lambda!309526 lambda!309490))))

(assert (=> bs!1339006 (not (= lambda!309526 lambda!309516))))

(declare-fun bs!1339013 () Bool)

(assert (= bs!1339013 (and d!1806350 b!5724404)))

(assert (=> bs!1339013 (not (= lambda!309526 lambda!309447))))

(declare-fun bs!1339014 () Bool)

(assert (= bs!1339014 (and d!1806350 b!5724263)))

(assert (=> bs!1339014 (not (= lambda!309526 lambda!309429))))

(assert (=> bs!1339011 (not (= lambda!309526 lambda!309439))))

(assert (=> d!1806350 true))

(assert (=> d!1806350 true))

(assert (=> d!1806350 true))

(assert (=> d!1806350 (= (isDefined!12433 (findConcatSeparation!2144 (regOne!31954 r!7292) (regTwo!31954 r!7292) Nil!63340 s!2326 s!2326)) (Exists!2821 lambda!309526))))

(assert (=> d!1806350 true))

(declare-fun _$89!1859 () Unit!156416)

(assert (=> d!1806350 (= (choose!43287 (regOne!31954 r!7292) (regTwo!31954 r!7292) s!2326) _$89!1859)))

(declare-fun bs!1339015 () Bool)

(assert (= bs!1339015 d!1806350))

(assert (=> bs!1339015 m!6676484))

(assert (=> bs!1339015 m!6676484))

(assert (=> bs!1339015 m!6676486))

(declare-fun m!6678524 () Bool)

(assert (=> bs!1339015 m!6678524))

(assert (=> d!1805720 d!1806350))

(assert (=> d!1805714 d!1806282))

(declare-fun bm!437786 () Bool)

(declare-fun call!437791 () Bool)

(assert (=> bm!437786 (= call!437791 (isEmpty!35217 Nil!63340))))

(declare-fun b!5725753 () Bool)

(declare-fun e!3520713 () Bool)

(declare-fun lt!2278891 () Bool)

(assert (=> b!5725753 (= e!3520713 (not lt!2278891))))

(declare-fun b!5725754 () Bool)

(declare-fun res!2417141 () Bool)

(declare-fun e!3520711 () Bool)

(assert (=> b!5725754 (=> (not res!2417141) (not e!3520711))))

(assert (=> b!5725754 (= res!2417141 (not call!437791))))

(declare-fun b!5725755 () Bool)

(declare-fun e!3520712 () Bool)

(assert (=> b!5725755 (= e!3520712 (= lt!2278891 call!437791))))

(declare-fun b!5725756 () Bool)

(declare-fun res!2417134 () Bool)

(declare-fun e!3520707 () Bool)

(assert (=> b!5725756 (=> res!2417134 e!3520707)))

(assert (=> b!5725756 (= res!2417134 (not ((_ is ElementMatch!15721) (regOne!31954 r!7292))))))

(assert (=> b!5725756 (= e!3520713 e!3520707)))

(declare-fun b!5725757 () Bool)

(declare-fun e!3520708 () Bool)

(declare-fun e!3520710 () Bool)

(assert (=> b!5725757 (= e!3520708 e!3520710)))

(declare-fun res!2417140 () Bool)

(assert (=> b!5725757 (=> res!2417140 e!3520710)))

(assert (=> b!5725757 (= res!2417140 call!437791)))

(declare-fun b!5725758 () Bool)

(assert (=> b!5725758 (= e!3520707 e!3520708)))

(declare-fun res!2417136 () Bool)

(assert (=> b!5725758 (=> (not res!2417136) (not e!3520708))))

(assert (=> b!5725758 (= res!2417136 (not lt!2278891))))

(declare-fun b!5725759 () Bool)

(declare-fun res!2417137 () Bool)

(assert (=> b!5725759 (=> res!2417137 e!3520707)))

(assert (=> b!5725759 (= res!2417137 e!3520711)))

(declare-fun res!2417135 () Bool)

(assert (=> b!5725759 (=> (not res!2417135) (not e!3520711))))

(assert (=> b!5725759 (= res!2417135 lt!2278891)))

(declare-fun d!1806352 () Bool)

(assert (=> d!1806352 e!3520712))

(declare-fun c!1010160 () Bool)

(assert (=> d!1806352 (= c!1010160 ((_ is EmptyExpr!15721) (regOne!31954 r!7292)))))

(declare-fun e!3520709 () Bool)

(assert (=> d!1806352 (= lt!2278891 e!3520709)))

(declare-fun c!1010158 () Bool)

(assert (=> d!1806352 (= c!1010158 (isEmpty!35217 Nil!63340))))

(assert (=> d!1806352 (validRegex!7457 (regOne!31954 r!7292))))

(assert (=> d!1806352 (= (matchR!7906 (regOne!31954 r!7292) Nil!63340) lt!2278891)))

(declare-fun b!5725752 () Bool)

(assert (=> b!5725752 (= e!3520709 (nullable!5753 (regOne!31954 r!7292)))))

(declare-fun b!5725760 () Bool)

(assert (=> b!5725760 (= e!3520712 e!3520713)))

(declare-fun c!1010159 () Bool)

(assert (=> b!5725760 (= c!1010159 ((_ is EmptyLang!15721) (regOne!31954 r!7292)))))

(declare-fun b!5725761 () Bool)

(assert (=> b!5725761 (= e!3520709 (matchR!7906 (derivativeStep!4522 (regOne!31954 r!7292) (head!12119 Nil!63340)) (tail!11214 Nil!63340)))))

(declare-fun b!5725762 () Bool)

(declare-fun res!2417139 () Bool)

(assert (=> b!5725762 (=> (not res!2417139) (not e!3520711))))

(assert (=> b!5725762 (= res!2417139 (isEmpty!35217 (tail!11214 Nil!63340)))))

(declare-fun b!5725763 () Bool)

(assert (=> b!5725763 (= e!3520711 (= (head!12119 Nil!63340) (c!1009551 (regOne!31954 r!7292))))))

(declare-fun b!5725764 () Bool)

(declare-fun res!2417138 () Bool)

(assert (=> b!5725764 (=> res!2417138 e!3520710)))

(assert (=> b!5725764 (= res!2417138 (not (isEmpty!35217 (tail!11214 Nil!63340))))))

(declare-fun b!5725765 () Bool)

(assert (=> b!5725765 (= e!3520710 (not (= (head!12119 Nil!63340) (c!1009551 (regOne!31954 r!7292)))))))

(assert (= (and d!1806352 c!1010158) b!5725752))

(assert (= (and d!1806352 (not c!1010158)) b!5725761))

(assert (= (and d!1806352 c!1010160) b!5725755))

(assert (= (and d!1806352 (not c!1010160)) b!5725760))

(assert (= (and b!5725760 c!1010159) b!5725753))

(assert (= (and b!5725760 (not c!1010159)) b!5725756))

(assert (= (and b!5725756 (not res!2417134)) b!5725759))

(assert (= (and b!5725759 res!2417135) b!5725754))

(assert (= (and b!5725754 res!2417141) b!5725762))

(assert (= (and b!5725762 res!2417139) b!5725763))

(assert (= (and b!5725759 (not res!2417137)) b!5725758))

(assert (= (and b!5725758 res!2417136) b!5725757))

(assert (= (and b!5725757 (not res!2417140)) b!5725764))

(assert (= (and b!5725764 (not res!2417138)) b!5725765))

(assert (= (or b!5725755 b!5725754 b!5725757) bm!437786))

(declare-fun m!6678526 () Bool)

(assert (=> bm!437786 m!6678526))

(assert (=> b!5725752 m!6677542))

(declare-fun m!6678528 () Bool)

(assert (=> b!5725761 m!6678528))

(assert (=> b!5725761 m!6678528))

(declare-fun m!6678530 () Bool)

(assert (=> b!5725761 m!6678530))

(declare-fun m!6678532 () Bool)

(assert (=> b!5725761 m!6678532))

(assert (=> b!5725761 m!6678530))

(assert (=> b!5725761 m!6678532))

(declare-fun m!6678534 () Bool)

(assert (=> b!5725761 m!6678534))

(assert (=> b!5725763 m!6678528))

(assert (=> b!5725762 m!6678532))

(assert (=> b!5725762 m!6678532))

(declare-fun m!6678536 () Bool)

(assert (=> b!5725762 m!6678536))

(assert (=> d!1806352 m!6678526))

(assert (=> d!1806352 m!6677090))

(assert (=> b!5725764 m!6678532))

(assert (=> b!5725764 m!6678532))

(assert (=> b!5725764 m!6678536))

(assert (=> b!5725765 m!6678528))

(assert (=> d!1805714 d!1806352))

(assert (=> d!1805714 d!1806262))

(declare-fun bs!1339016 () Bool)

(declare-fun d!1806354 () Bool)

(assert (= bs!1339016 (and d!1806354 d!1805940)))

(declare-fun lambda!309527 () Int)

(assert (=> bs!1339016 (= lambda!309527 lambda!309474)))

(declare-fun bs!1339017 () Bool)

(assert (= bs!1339017 (and d!1806354 d!1806070)))

(assert (=> bs!1339017 (= lambda!309527 lambda!309484)))

(declare-fun bs!1339018 () Bool)

(assert (= bs!1339018 (and d!1806354 d!1806116)))

(assert (=> bs!1339018 (= lambda!309527 lambda!309489)))

(declare-fun bs!1339019 () Bool)

(assert (= bs!1339019 (and d!1806354 d!1806130)))

(assert (=> bs!1339019 (= lambda!309527 lambda!309493)))

(assert (=> d!1806354 (= (nullableZipper!1669 lt!2278681) (exists!2229 lt!2278681 lambda!309527))))

(declare-fun bs!1339020 () Bool)

(assert (= bs!1339020 d!1806354))

(declare-fun m!6678538 () Bool)

(assert (=> bs!1339020 m!6678538))

(assert (=> b!5724008 d!1806354))

(assert (=> bs!1338426 d!1805696))

(declare-fun b!5725766 () Bool)

(declare-fun e!3520714 () (InoxSet Context!10210))

(declare-fun call!437792 () (InoxSet Context!10210))

(assert (=> b!5725766 (= e!3520714 call!437792)))

(declare-fun b!5725767 () Bool)

(declare-fun e!3520715 () Bool)

(assert (=> b!5725767 (= e!3520715 (nullable!5753 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666)))))))))

(declare-fun e!3520716 () (InoxSet Context!10210))

(declare-fun b!5725768 () Bool)

(assert (=> b!5725768 (= e!3520716 ((_ map or) call!437792 (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666)))))) (h!69788 s!2326))))))

(declare-fun b!5725769 () Bool)

(assert (=> b!5725769 (= e!3520714 ((as const (Array Context!10210 Bool)) false))))

(declare-fun d!1806356 () Bool)

(declare-fun c!1010161 () Bool)

(assert (=> d!1806356 (= c!1010161 e!3520715)))

(declare-fun res!2417142 () Bool)

(assert (=> d!1806356 (=> (not res!2417142) (not e!3520715))))

(assert (=> d!1806356 (= res!2417142 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666))))))))

(assert (=> d!1806356 (= (derivationStepZipperUp!989 (Context!10211 (t!376788 (exprs!5605 lt!2278666))) (h!69788 s!2326)) e!3520716)))

(declare-fun b!5725770 () Bool)

(assert (=> b!5725770 (= e!3520716 e!3520714)))

(declare-fun c!1010162 () Bool)

(assert (=> b!5725770 (= c!1010162 ((_ is Cons!63338) (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666))))))))

(declare-fun bm!437787 () Bool)

(assert (=> bm!437787 (= call!437792 (derivationStepZipperDown!1063 (h!69786 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666))))) (Context!10211 (t!376788 (exprs!5605 (Context!10211 (t!376788 (exprs!5605 lt!2278666)))))) (h!69788 s!2326)))))

(assert (= (and d!1806356 res!2417142) b!5725767))

(assert (= (and d!1806356 c!1010161) b!5725768))

(assert (= (and d!1806356 (not c!1010161)) b!5725770))

(assert (= (and b!5725770 c!1010162) b!5725766))

(assert (= (and b!5725770 (not c!1010162)) b!5725769))

(assert (= (or b!5725768 b!5725766) bm!437787))

(declare-fun m!6678540 () Bool)

(assert (=> b!5725767 m!6678540))

(declare-fun m!6678542 () Bool)

(assert (=> b!5725768 m!6678542))

(declare-fun m!6678544 () Bool)

(assert (=> bm!437787 m!6678544))

(assert (=> b!5724118 d!1806356))

(declare-fun bs!1339021 () Bool)

(declare-fun d!1806358 () Bool)

(assert (= bs!1339021 (and d!1806358 d!1806354)))

(declare-fun lambda!309528 () Int)

(assert (=> bs!1339021 (= lambda!309528 lambda!309527)))

(declare-fun bs!1339022 () Bool)

(assert (= bs!1339022 (and d!1806358 d!1806116)))

(assert (=> bs!1339022 (= lambda!309528 lambda!309489)))

(declare-fun bs!1339023 () Bool)

(assert (= bs!1339023 (and d!1806358 d!1806130)))

(assert (=> bs!1339023 (= lambda!309528 lambda!309493)))

(declare-fun bs!1339024 () Bool)

(assert (= bs!1339024 (and d!1806358 d!1805940)))

(assert (=> bs!1339024 (= lambda!309528 lambda!309474)))

(declare-fun bs!1339025 () Bool)

(assert (= bs!1339025 (and d!1806358 d!1806070)))

(assert (=> bs!1339025 (= lambda!309528 lambda!309484)))

(assert (=> d!1806358 (= (nullableZipper!1669 ((_ map or) lt!2278659 lt!2278681)) (exists!2229 ((_ map or) lt!2278659 lt!2278681) lambda!309528))))

(declare-fun bs!1339026 () Bool)

(assert (= bs!1339026 d!1806358))

(declare-fun m!6678546 () Bool)

(assert (=> bs!1339026 m!6678546))

(assert (=> b!5724414 d!1806358))

(declare-fun bs!1339027 () Bool)

(declare-fun b!5725776 () Bool)

(assert (= bs!1339027 (and b!5725776 d!1805720)))

(declare-fun lambda!309529 () Int)

(assert (=> bs!1339027 (not (= lambda!309529 lambda!309433))))

(declare-fun bs!1339028 () Bool)

(assert (= bs!1339028 (and b!5725776 b!5725739)))

(assert (=> bs!1339028 (= (and (= (reg!16050 (regOne!31955 r!7292)) (reg!16050 (regTwo!31955 r!7292))) (= (regOne!31955 r!7292) (regTwo!31955 r!7292))) (= lambda!309529 lambda!309521))))

(declare-fun bs!1339029 () Bool)

(assert (= bs!1339029 (and b!5725776 b!5724405)))

(assert (=> bs!1339029 (= (and (= (reg!16050 (regOne!31955 r!7292)) (reg!16050 lt!2278693)) (= (regOne!31955 r!7292) lt!2278693)) (= lambda!309529 lambda!309446))))

(declare-fun bs!1339030 () Bool)

(assert (= bs!1339030 (and b!5725776 b!5723592)))

(assert (=> bs!1339030 (not (= lambda!309529 lambda!309367))))

(declare-fun bs!1339031 () Bool)

(assert (= bs!1339031 (and b!5725776 b!5725738)))

(assert (=> bs!1339031 (not (= lambda!309529 lambda!309522))))

(declare-fun bs!1339032 () Bool)

(assert (= bs!1339032 (and b!5725776 b!5724262)))

(assert (=> bs!1339032 (not (= lambda!309529 lambda!309430))))

(declare-fun bs!1339033 () Bool)

(assert (= bs!1339033 (and b!5725776 b!5725445)))

(assert (=> bs!1339033 (= (and (= (reg!16050 (regOne!31955 r!7292)) (reg!16050 (regOne!31955 lt!2278693))) (= (regOne!31955 r!7292) (regOne!31955 lt!2278693))) (= lambda!309529 lambda!309509))))

(declare-fun bs!1339034 () Bool)

(assert (= bs!1339034 (and b!5725776 b!5725444)))

(assert (=> bs!1339034 (not (= lambda!309529 lambda!309510))))

(declare-fun bs!1339035 () Bool)

(assert (= bs!1339035 (and b!5725776 b!5725156)))

(assert (=> bs!1339035 (not (= lambda!309529 lambda!309492))))

(declare-fun bs!1339036 () Bool)

(assert (= bs!1339036 (and b!5725776 d!1805722)))

(assert (=> bs!1339036 (not (= lambda!309529 lambda!309438))))

(assert (=> bs!1339030 (not (= lambda!309529 lambda!309368))))

(declare-fun bs!1339037 () Bool)

(assert (= bs!1339037 (and b!5725776 b!5725157)))

(assert (=> bs!1339037 (= (and (= (reg!16050 (regOne!31955 r!7292)) (reg!16050 (regTwo!31955 lt!2278693))) (= (regOne!31955 r!7292) (regTwo!31955 lt!2278693))) (= lambda!309529 lambda!309490))))

(declare-fun bs!1339038 () Bool)

(assert (= bs!1339038 (and b!5725776 d!1806246)))

(assert (=> bs!1339038 (not (= lambda!309529 lambda!309516))))

(declare-fun bs!1339039 () Bool)

(assert (= bs!1339039 (and b!5725776 b!5724404)))

(assert (=> bs!1339039 (not (= lambda!309529 lambda!309447))))

(declare-fun bs!1339040 () Bool)

(assert (= bs!1339040 (and b!5725776 b!5724263)))

(assert (=> bs!1339040 (= (and (= (reg!16050 (regOne!31955 r!7292)) (reg!16050 r!7292)) (= (regOne!31955 r!7292) r!7292)) (= lambda!309529 lambda!309429))))

(assert (=> bs!1339036 (not (= lambda!309529 lambda!309439))))

(assert (=> bs!1339038 (not (= lambda!309529 lambda!309515))))

(declare-fun bs!1339041 () Bool)

(assert (= bs!1339041 (and b!5725776 d!1806350)))

(assert (=> bs!1339041 (not (= lambda!309529 lambda!309526))))

(assert (=> b!5725776 true))

(assert (=> b!5725776 true))

(declare-fun bs!1339042 () Bool)

(declare-fun b!5725775 () Bool)

(assert (= bs!1339042 (and b!5725775 d!1805720)))

(declare-fun lambda!309530 () Int)

(assert (=> bs!1339042 (not (= lambda!309530 lambda!309433))))

(declare-fun bs!1339043 () Bool)

(assert (= bs!1339043 (and b!5725775 b!5725739)))

(assert (=> bs!1339043 (not (= lambda!309530 lambda!309521))))

(declare-fun bs!1339044 () Bool)

(assert (= bs!1339044 (and b!5725775 b!5724405)))

(assert (=> bs!1339044 (not (= lambda!309530 lambda!309446))))

(declare-fun bs!1339045 () Bool)

(assert (= bs!1339045 (and b!5725775 b!5723592)))

(assert (=> bs!1339045 (not (= lambda!309530 lambda!309367))))

(declare-fun bs!1339046 () Bool)

(assert (= bs!1339046 (and b!5725775 b!5725738)))

(assert (=> bs!1339046 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 (regTwo!31955 r!7292))) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 (regTwo!31955 r!7292)))) (= lambda!309530 lambda!309522))))

(declare-fun bs!1339047 () Bool)

(assert (= bs!1339047 (and b!5725775 b!5724262)))

(assert (=> bs!1339047 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309530 lambda!309430))))

(declare-fun bs!1339048 () Bool)

(assert (= bs!1339048 (and b!5725775 b!5725445)))

(assert (=> bs!1339048 (not (= lambda!309530 lambda!309509))))

(declare-fun bs!1339049 () Bool)

(assert (= bs!1339049 (and b!5725775 b!5725444)))

(assert (=> bs!1339049 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 (regOne!31955 lt!2278693))) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 (regOne!31955 lt!2278693)))) (= lambda!309530 lambda!309510))))

(declare-fun bs!1339050 () Bool)

(assert (= bs!1339050 (and b!5725775 d!1805722)))

(assert (=> bs!1339050 (not (= lambda!309530 lambda!309438))))

(assert (=> bs!1339045 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309530 lambda!309368))))

(declare-fun bs!1339051 () Bool)

(assert (= bs!1339051 (and b!5725775 b!5725157)))

(assert (=> bs!1339051 (not (= lambda!309530 lambda!309490))))

(declare-fun bs!1339052 () Bool)

(assert (= bs!1339052 (and b!5725775 d!1806246)))

(assert (=> bs!1339052 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309530 lambda!309516))))

(declare-fun bs!1339053 () Bool)

(assert (= bs!1339053 (and b!5725775 b!5724404)))

(assert (=> bs!1339053 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 lt!2278693)) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 lt!2278693))) (= lambda!309530 lambda!309447))))

(declare-fun bs!1339054 () Bool)

(assert (= bs!1339054 (and b!5725775 b!5724263)))

(assert (=> bs!1339054 (not (= lambda!309530 lambda!309429))))

(assert (=> bs!1339050 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 r!7292)) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 r!7292))) (= lambda!309530 lambda!309439))))

(assert (=> bs!1339052 (not (= lambda!309530 lambda!309515))))

(declare-fun bs!1339055 () Bool)

(assert (= bs!1339055 (and b!5725775 d!1806350)))

(assert (=> bs!1339055 (not (= lambda!309530 lambda!309526))))

(declare-fun bs!1339056 () Bool)

(assert (= bs!1339056 (and b!5725775 b!5725156)))

(assert (=> bs!1339056 (= (and (= (regOne!31954 (regOne!31955 r!7292)) (regOne!31954 (regTwo!31955 lt!2278693))) (= (regTwo!31954 (regOne!31955 r!7292)) (regTwo!31954 (regTwo!31955 lt!2278693)))) (= lambda!309530 lambda!309492))))

(declare-fun bs!1339057 () Bool)

(assert (= bs!1339057 (and b!5725775 b!5725776)))

(assert (=> bs!1339057 (not (= lambda!309530 lambda!309529))))

(assert (=> b!5725775 true))

(assert (=> b!5725775 true))

(declare-fun b!5725771 () Bool)

(declare-fun e!3520720 () Bool)

(declare-fun e!3520719 () Bool)

(assert (=> b!5725771 (= e!3520720 e!3520719)))

(declare-fun res!2417143 () Bool)

(assert (=> b!5725771 (= res!2417143 (not ((_ is EmptyLang!15721) (regOne!31955 r!7292))))))

(assert (=> b!5725771 (=> (not res!2417143) (not e!3520719))))

(declare-fun b!5725772 () Bool)

(declare-fun res!2417144 () Bool)

(declare-fun e!3520722 () Bool)

(assert (=> b!5725772 (=> res!2417144 e!3520722)))

(declare-fun call!437793 () Bool)

(assert (=> b!5725772 (= res!2417144 call!437793)))

(declare-fun e!3520718 () Bool)

(assert (=> b!5725772 (= e!3520718 e!3520722)))

(declare-fun b!5725773 () Bool)

(declare-fun e!3520721 () Bool)

(assert (=> b!5725773 (= e!3520721 (matchRSpec!2824 (regTwo!31955 (regOne!31955 r!7292)) s!2326))))

(declare-fun d!1806360 () Bool)

(declare-fun c!1010163 () Bool)

(assert (=> d!1806360 (= c!1010163 ((_ is EmptyExpr!15721) (regOne!31955 r!7292)))))

(assert (=> d!1806360 (= (matchRSpec!2824 (regOne!31955 r!7292) s!2326) e!3520720)))

(declare-fun b!5725774 () Bool)

(declare-fun c!1010166 () Bool)

(assert (=> b!5725774 (= c!1010166 ((_ is ElementMatch!15721) (regOne!31955 r!7292)))))

(declare-fun e!3520717 () Bool)

(assert (=> b!5725774 (= e!3520719 e!3520717)))

(declare-fun call!437794 () Bool)

(assert (=> b!5725775 (= e!3520718 call!437794)))

(declare-fun c!1010164 () Bool)

(declare-fun bm!437788 () Bool)

(assert (=> bm!437788 (= call!437794 (Exists!2821 (ite c!1010164 lambda!309529 lambda!309530)))))

(assert (=> b!5725776 (= e!3520722 call!437794)))

(declare-fun b!5725777 () Bool)

(declare-fun e!3520723 () Bool)

(assert (=> b!5725777 (= e!3520723 e!3520718)))

(assert (=> b!5725777 (= c!1010164 ((_ is Star!15721) (regOne!31955 r!7292)))))

(declare-fun b!5725778 () Bool)

(assert (=> b!5725778 (= e!3520720 call!437793)))

(declare-fun b!5725779 () Bool)

(assert (=> b!5725779 (= e!3520717 (= s!2326 (Cons!63340 (c!1009551 (regOne!31955 r!7292)) Nil!63340)))))

(declare-fun b!5725780 () Bool)

(declare-fun c!1010165 () Bool)

(assert (=> b!5725780 (= c!1010165 ((_ is Union!15721) (regOne!31955 r!7292)))))

(assert (=> b!5725780 (= e!3520717 e!3520723)))

(declare-fun b!5725781 () Bool)

(assert (=> b!5725781 (= e!3520723 e!3520721)))

(declare-fun res!2417145 () Bool)

(assert (=> b!5725781 (= res!2417145 (matchRSpec!2824 (regOne!31955 (regOne!31955 r!7292)) s!2326))))

(assert (=> b!5725781 (=> res!2417145 e!3520721)))

(declare-fun bm!437789 () Bool)

(assert (=> bm!437789 (= call!437793 (isEmpty!35217 s!2326))))

(assert (= (and d!1806360 c!1010163) b!5725778))

(assert (= (and d!1806360 (not c!1010163)) b!5725771))

(assert (= (and b!5725771 res!2417143) b!5725774))

(assert (= (and b!5725774 c!1010166) b!5725779))

(assert (= (and b!5725774 (not c!1010166)) b!5725780))

(assert (= (and b!5725780 c!1010165) b!5725781))

(assert (= (and b!5725780 (not c!1010165)) b!5725777))

(assert (= (and b!5725781 (not res!2417145)) b!5725773))

(assert (= (and b!5725777 c!1010164) b!5725772))

(assert (= (and b!5725777 (not c!1010164)) b!5725775))

(assert (= (and b!5725772 (not res!2417144)) b!5725776))

(assert (= (or b!5725776 b!5725775) bm!437788))

(assert (= (or b!5725778 b!5725772) bm!437789))

(declare-fun m!6678548 () Bool)

(assert (=> b!5725773 m!6678548))

(declare-fun m!6678550 () Bool)

(assert (=> bm!437788 m!6678550))

(declare-fun m!6678552 () Bool)

(assert (=> b!5725781 m!6678552))

(assert (=> bm!437789 m!6676876))

(assert (=> b!5724268 d!1806360))

(declare-fun bs!1339058 () Bool)

(declare-fun d!1806362 () Bool)

(assert (= bs!1339058 (and d!1806362 d!1806034)))

(declare-fun lambda!309531 () Int)

(assert (=> bs!1339058 (= lambda!309531 lambda!309479)))

(declare-fun bs!1339059 () Bool)

(assert (= bs!1339059 (and d!1806362 d!1805728)))

(assert (=> bs!1339059 (= lambda!309531 lambda!309442)))

(declare-fun bs!1339060 () Bool)

(assert (= bs!1339060 (and d!1806362 b!5723588)))

(assert (=> bs!1339060 (= lambda!309531 lambda!309371)))

(declare-fun bs!1339061 () Bool)

(assert (= bs!1339061 (and d!1806362 d!1806056)))

(assert (=> bs!1339061 (= lambda!309531 lambda!309481)))

(declare-fun bs!1339062 () Bool)

(assert (= bs!1339062 (and d!1806362 d!1806344)))

(assert (=> bs!1339062 (= lambda!309531 lambda!309523)))

(declare-fun bs!1339063 () Bool)

(assert (= bs!1339063 (and d!1806362 d!1806052)))

(assert (=> bs!1339063 (= lambda!309531 lambda!309480)))

(declare-fun bs!1339064 () Bool)

(assert (= bs!1339064 (and d!1806362 d!1806154)))

(assert (=> bs!1339064 (= lambda!309531 lambda!309497)))

(declare-fun bs!1339065 () Bool)

(assert (= bs!1339065 (and d!1806362 d!1806158)))

(assert (=> bs!1339065 (= lambda!309531 lambda!309498)))

(declare-fun bs!1339066 () Bool)

(assert (= bs!1339066 (and d!1806362 d!1805662)))

(assert (=> bs!1339066 (= lambda!309531 lambda!309423)))

(declare-fun bs!1339067 () Bool)

(assert (= bs!1339067 (and d!1806362 d!1805682)))

(assert (=> bs!1339067 (= lambda!309531 lambda!309424)))

(declare-fun bs!1339068 () Bool)

(assert (= bs!1339068 (and d!1806362 d!1805730)))

(assert (=> bs!1339068 (= lambda!309531 lambda!309445)))

(declare-fun bs!1339069 () Bool)

(assert (= bs!1339069 (and d!1806362 d!1806178)))

(assert (=> bs!1339069 (= lambda!309531 lambda!309500)))

(declare-fun bs!1339070 () Bool)

(assert (= bs!1339070 (and d!1806362 d!1806268)))

(assert (=> bs!1339070 (= lambda!309531 lambda!309517)))

(declare-fun bs!1339071 () Bool)

(assert (= bs!1339071 (and d!1806362 d!1806170)))

(assert (=> bs!1339071 (= lambda!309531 lambda!309499)))

(declare-fun bs!1339072 () Bool)

(assert (= bs!1339072 (and d!1806362 d!1805580)))

(assert (=> bs!1339072 (= lambda!309531 lambda!309402)))

(declare-fun bs!1339073 () Bool)

(assert (= bs!1339073 (and d!1806362 d!1806330)))

(assert (=> bs!1339073 (= lambda!309531 lambda!309520)))

(assert (=> d!1806362 (= (inv!82549 setElem!38369) (forall!14854 (exprs!5605 setElem!38369) lambda!309531))))

(declare-fun bs!1339074 () Bool)

(assert (= bs!1339074 d!1806362))

(declare-fun m!6678554 () Bool)

(assert (=> bs!1339074 m!6678554))

(assert (=> setNonEmpty!38369 d!1806362))

(declare-fun bm!437790 () Bool)

(declare-fun call!437795 () Bool)

(assert (=> bm!437790 (= call!437795 (isEmpty!35217 (_2!36121 (get!21839 lt!2278798))))))

(declare-fun b!5725783 () Bool)

(declare-fun e!3520730 () Bool)

(declare-fun lt!2278892 () Bool)

(assert (=> b!5725783 (= e!3520730 (not lt!2278892))))

(declare-fun b!5725784 () Bool)

(declare-fun res!2417153 () Bool)

(declare-fun e!3520728 () Bool)

(assert (=> b!5725784 (=> (not res!2417153) (not e!3520728))))

(assert (=> b!5725784 (= res!2417153 (not call!437795))))

(declare-fun b!5725785 () Bool)

(declare-fun e!3520729 () Bool)

(assert (=> b!5725785 (= e!3520729 (= lt!2278892 call!437795))))

(declare-fun b!5725786 () Bool)

(declare-fun res!2417146 () Bool)

(declare-fun e!3520724 () Bool)

(assert (=> b!5725786 (=> res!2417146 e!3520724)))

(assert (=> b!5725786 (= res!2417146 (not ((_ is ElementMatch!15721) (regTwo!31954 r!7292))))))

(assert (=> b!5725786 (= e!3520730 e!3520724)))

(declare-fun b!5725787 () Bool)

(declare-fun e!3520725 () Bool)

(declare-fun e!3520727 () Bool)

(assert (=> b!5725787 (= e!3520725 e!3520727)))

(declare-fun res!2417152 () Bool)

(assert (=> b!5725787 (=> res!2417152 e!3520727)))

(assert (=> b!5725787 (= res!2417152 call!437795)))

(declare-fun b!5725788 () Bool)

(assert (=> b!5725788 (= e!3520724 e!3520725)))

(declare-fun res!2417148 () Bool)

(assert (=> b!5725788 (=> (not res!2417148) (not e!3520725))))

(assert (=> b!5725788 (= res!2417148 (not lt!2278892))))

(declare-fun b!5725789 () Bool)

(declare-fun res!2417149 () Bool)

(assert (=> b!5725789 (=> res!2417149 e!3520724)))

(assert (=> b!5725789 (= res!2417149 e!3520728)))

(declare-fun res!2417147 () Bool)

(assert (=> b!5725789 (=> (not res!2417147) (not e!3520728))))

(assert (=> b!5725789 (= res!2417147 lt!2278892)))

(declare-fun d!1806364 () Bool)

(assert (=> d!1806364 e!3520729))

(declare-fun c!1010169 () Bool)

(assert (=> d!1806364 (= c!1010169 ((_ is EmptyExpr!15721) (regTwo!31954 r!7292)))))

(declare-fun e!3520726 () Bool)

(assert (=> d!1806364 (= lt!2278892 e!3520726)))

(declare-fun c!1010167 () Bool)

(assert (=> d!1806364 (= c!1010167 (isEmpty!35217 (_2!36121 (get!21839 lt!2278798))))))

(assert (=> d!1806364 (validRegex!7457 (regTwo!31954 r!7292))))

(assert (=> d!1806364 (= (matchR!7906 (regTwo!31954 r!7292) (_2!36121 (get!21839 lt!2278798))) lt!2278892)))

(declare-fun b!5725782 () Bool)

(assert (=> b!5725782 (= e!3520726 (nullable!5753 (regTwo!31954 r!7292)))))

(declare-fun b!5725790 () Bool)

(assert (=> b!5725790 (= e!3520729 e!3520730)))

(declare-fun c!1010168 () Bool)

(assert (=> b!5725790 (= c!1010168 ((_ is EmptyLang!15721) (regTwo!31954 r!7292)))))

(declare-fun b!5725791 () Bool)

(assert (=> b!5725791 (= e!3520726 (matchR!7906 (derivativeStep!4522 (regTwo!31954 r!7292) (head!12119 (_2!36121 (get!21839 lt!2278798)))) (tail!11214 (_2!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5725792 () Bool)

(declare-fun res!2417151 () Bool)

(assert (=> b!5725792 (=> (not res!2417151) (not e!3520728))))

(assert (=> b!5725792 (= res!2417151 (isEmpty!35217 (tail!11214 (_2!36121 (get!21839 lt!2278798)))))))

(declare-fun b!5725793 () Bool)

(assert (=> b!5725793 (= e!3520728 (= (head!12119 (_2!36121 (get!21839 lt!2278798))) (c!1009551 (regTwo!31954 r!7292))))))

(declare-fun b!5725794 () Bool)

(declare-fun res!2417150 () Bool)

(assert (=> b!5725794 (=> res!2417150 e!3520727)))

(assert (=> b!5725794 (= res!2417150 (not (isEmpty!35217 (tail!11214 (_2!36121 (get!21839 lt!2278798))))))))

(declare-fun b!5725795 () Bool)

(assert (=> b!5725795 (= e!3520727 (not (= (head!12119 (_2!36121 (get!21839 lt!2278798))) (c!1009551 (regTwo!31954 r!7292)))))))

(assert (= (and d!1806364 c!1010167) b!5725782))

(assert (= (and d!1806364 (not c!1010167)) b!5725791))

(assert (= (and d!1806364 c!1010169) b!5725785))

(assert (= (and d!1806364 (not c!1010169)) b!5725790))

(assert (= (and b!5725790 c!1010168) b!5725783))

(assert (= (and b!5725790 (not c!1010168)) b!5725786))

(assert (= (and b!5725786 (not res!2417146)) b!5725789))

(assert (= (and b!5725789 res!2417147) b!5725784))

(assert (= (and b!5725784 res!2417153) b!5725792))

(assert (= (and b!5725792 res!2417151) b!5725793))

(assert (= (and b!5725789 (not res!2417149)) b!5725788))

(assert (= (and b!5725788 res!2417148) b!5725787))

(assert (= (and b!5725787 (not res!2417152)) b!5725794))

(assert (= (and b!5725794 (not res!2417150)) b!5725795))

(assert (= (or b!5725785 b!5725784 b!5725787) bm!437790))

(declare-fun m!6678556 () Bool)

(assert (=> bm!437790 m!6678556))

(assert (=> b!5725782 m!6678418))

(declare-fun m!6678558 () Bool)

(assert (=> b!5725791 m!6678558))

(assert (=> b!5725791 m!6678558))

(declare-fun m!6678560 () Bool)

(assert (=> b!5725791 m!6678560))

(declare-fun m!6678562 () Bool)

(assert (=> b!5725791 m!6678562))

(assert (=> b!5725791 m!6678560))

(assert (=> b!5725791 m!6678562))

(declare-fun m!6678564 () Bool)

(assert (=> b!5725791 m!6678564))

(assert (=> b!5725793 m!6678558))

(assert (=> b!5725792 m!6678562))

(assert (=> b!5725792 m!6678562))

(declare-fun m!6678566 () Bool)

(assert (=> b!5725792 m!6678566))

(assert (=> d!1806364 m!6678556))

(assert (=> d!1806364 m!6678424))

(assert (=> b!5725794 m!6678562))

(assert (=> b!5725794 m!6678562))

(assert (=> b!5725794 m!6678566))

(assert (=> b!5725795 m!6678558))

(assert (=> b!5724335 d!1806364))

(assert (=> b!5724335 d!1805928))

(declare-fun b!5725796 () Bool)

(declare-fun e!3520731 () Bool)

(declare-fun call!437796 () Bool)

(assert (=> b!5725796 (= e!3520731 call!437796)))

(declare-fun bm!437791 () Bool)

(declare-fun call!437797 () Bool)

(declare-fun c!1010170 () Bool)

(assert (=> bm!437791 (= call!437797 (nullable!5753 (ite c!1010170 (regOne!31955 (regOne!31954 (regOne!31954 r!7292))) (regOne!31954 (regOne!31954 (regOne!31954 r!7292))))))))

(declare-fun d!1806366 () Bool)

(declare-fun res!2417158 () Bool)

(declare-fun e!3520735 () Bool)

(assert (=> d!1806366 (=> res!2417158 e!3520735)))

(assert (=> d!1806366 (= res!2417158 ((_ is EmptyExpr!15721) (regOne!31954 (regOne!31954 r!7292))))))

(assert (=> d!1806366 (= (nullableFct!1815 (regOne!31954 (regOne!31954 r!7292))) e!3520735)))

(declare-fun b!5725797 () Bool)

(declare-fun e!3520733 () Bool)

(assert (=> b!5725797 (= e!3520733 e!3520731)))

(declare-fun res!2417155 () Bool)

(assert (=> b!5725797 (= res!2417155 call!437797)))

(assert (=> b!5725797 (=> (not res!2417155) (not e!3520731))))

(declare-fun b!5725798 () Bool)

(declare-fun e!3520734 () Bool)

(assert (=> b!5725798 (= e!3520733 e!3520734)))

(declare-fun res!2417157 () Bool)

(assert (=> b!5725798 (= res!2417157 call!437797)))

(assert (=> b!5725798 (=> res!2417157 e!3520734)))

(declare-fun b!5725799 () Bool)

(declare-fun e!3520732 () Bool)

(declare-fun e!3520736 () Bool)

(assert (=> b!5725799 (= e!3520732 e!3520736)))

(declare-fun res!2417154 () Bool)

(assert (=> b!5725799 (=> res!2417154 e!3520736)))

(assert (=> b!5725799 (= res!2417154 ((_ is Star!15721) (regOne!31954 (regOne!31954 r!7292))))))

(declare-fun b!5725800 () Bool)

(assert (=> b!5725800 (= e!3520736 e!3520733)))

(assert (=> b!5725800 (= c!1010170 ((_ is Union!15721) (regOne!31954 (regOne!31954 r!7292))))))

(declare-fun bm!437792 () Bool)

(assert (=> bm!437792 (= call!437796 (nullable!5753 (ite c!1010170 (regTwo!31955 (regOne!31954 (regOne!31954 r!7292))) (regTwo!31954 (regOne!31954 (regOne!31954 r!7292))))))))

(declare-fun b!5725801 () Bool)

(assert (=> b!5725801 (= e!3520735 e!3520732)))

(declare-fun res!2417156 () Bool)

(assert (=> b!5725801 (=> (not res!2417156) (not e!3520732))))

(assert (=> b!5725801 (= res!2417156 (and (not ((_ is EmptyLang!15721) (regOne!31954 (regOne!31954 r!7292)))) (not ((_ is ElementMatch!15721) (regOne!31954 (regOne!31954 r!7292))))))))

(declare-fun b!5725802 () Bool)

(assert (=> b!5725802 (= e!3520734 call!437796)))

(assert (= (and d!1806366 (not res!2417158)) b!5725801))

(assert (= (and b!5725801 res!2417156) b!5725799))

(assert (= (and b!5725799 (not res!2417154)) b!5725800))

(assert (= (and b!5725800 c!1010170) b!5725798))

(assert (= (and b!5725800 (not c!1010170)) b!5725797))

(assert (= (and b!5725798 (not res!2417157)) b!5725802))

(assert (= (and b!5725797 res!2417155) b!5725796))

(assert (= (or b!5725802 b!5725796) bm!437792))

(assert (= (or b!5725798 b!5725797) bm!437791))

(declare-fun m!6678568 () Bool)

(assert (=> bm!437791 m!6678568))

(declare-fun m!6678570 () Bool)

(assert (=> bm!437792 m!6678570))

(assert (=> d!1805686 d!1806366))

(declare-fun b!5725803 () Bool)

(declare-fun res!2417161 () Bool)

(declare-fun e!3520738 () Bool)

(assert (=> b!5725803 (=> (not res!2417161) (not e!3520738))))

(declare-fun call!437798 () Bool)

(assert (=> b!5725803 (= res!2417161 call!437798)))

(declare-fun e!3520739 () Bool)

(assert (=> b!5725803 (= e!3520739 e!3520738)))

(declare-fun b!5725804 () Bool)

(declare-fun e!3520743 () Bool)

(declare-fun e!3520737 () Bool)

(assert (=> b!5725804 (= e!3520743 e!3520737)))

(declare-fun c!1010171 () Bool)

(assert (=> b!5725804 (= c!1010171 ((_ is Star!15721) lt!2278751))))

(declare-fun b!5725805 () Bool)

(declare-fun e!3520741 () Bool)

(declare-fun call!437800 () Bool)

(assert (=> b!5725805 (= e!3520741 call!437800)))

(declare-fun b!5725806 () Bool)

(declare-fun e!3520740 () Bool)

(declare-fun e!3520742 () Bool)

(assert (=> b!5725806 (= e!3520740 e!3520742)))

(declare-fun res!2417162 () Bool)

(assert (=> b!5725806 (=> (not res!2417162) (not e!3520742))))

(assert (=> b!5725806 (= res!2417162 call!437798)))

(declare-fun b!5725807 () Bool)

(declare-fun call!437799 () Bool)

(assert (=> b!5725807 (= e!3520742 call!437799)))

(declare-fun c!1010172 () Bool)

(declare-fun bm!437794 () Bool)

(assert (=> bm!437794 (= call!437800 (validRegex!7457 (ite c!1010171 (reg!16050 lt!2278751) (ite c!1010172 (regTwo!31955 lt!2278751) (regTwo!31954 lt!2278751)))))))

(declare-fun b!5725808 () Bool)

(assert (=> b!5725808 (= e!3520737 e!3520739)))

(assert (=> b!5725808 (= c!1010172 ((_ is Union!15721) lt!2278751))))

(declare-fun bm!437793 () Bool)

(assert (=> bm!437793 (= call!437798 (validRegex!7457 (ite c!1010172 (regOne!31955 lt!2278751) (regOne!31954 lt!2278751))))))

(declare-fun d!1806368 () Bool)

(declare-fun res!2417163 () Bool)

(assert (=> d!1806368 (=> res!2417163 e!3520743)))

(assert (=> d!1806368 (= res!2417163 ((_ is ElementMatch!15721) lt!2278751))))

(assert (=> d!1806368 (= (validRegex!7457 lt!2278751) e!3520743)))

(declare-fun b!5725809 () Bool)

(assert (=> b!5725809 (= e!3520738 call!437799)))

(declare-fun b!5725810 () Bool)

(assert (=> b!5725810 (= e!3520737 e!3520741)))

(declare-fun res!2417159 () Bool)

(assert (=> b!5725810 (= res!2417159 (not (nullable!5753 (reg!16050 lt!2278751))))))

(assert (=> b!5725810 (=> (not res!2417159) (not e!3520741))))

(declare-fun b!5725811 () Bool)

(declare-fun res!2417160 () Bool)

(assert (=> b!5725811 (=> res!2417160 e!3520740)))

(assert (=> b!5725811 (= res!2417160 (not ((_ is Concat!24566) lt!2278751)))))

(assert (=> b!5725811 (= e!3520739 e!3520740)))

(declare-fun bm!437795 () Bool)

(assert (=> bm!437795 (= call!437799 call!437800)))

(assert (= (and d!1806368 (not res!2417163)) b!5725804))

(assert (= (and b!5725804 c!1010171) b!5725810))

(assert (= (and b!5725804 (not c!1010171)) b!5725808))

(assert (= (and b!5725810 res!2417159) b!5725805))

(assert (= (and b!5725808 c!1010172) b!5725803))

(assert (= (and b!5725808 (not c!1010172)) b!5725811))

(assert (= (and b!5725803 res!2417161) b!5725809))

(assert (= (and b!5725811 (not res!2417160)) b!5725806))

(assert (= (and b!5725806 res!2417162) b!5725807))

(assert (= (or b!5725809 b!5725807) bm!437795))

(assert (= (or b!5725803 b!5725806) bm!437793))

(assert (= (or b!5725805 bm!437795) bm!437794))

(declare-fun m!6678572 () Bool)

(assert (=> bm!437794 m!6678572))

(declare-fun m!6678574 () Bool)

(assert (=> bm!437793 m!6678574))

(declare-fun m!6678576 () Bool)

(assert (=> b!5725810 m!6678576))

(assert (=> d!1805580 d!1806368))

(declare-fun d!1806370 () Bool)

(declare-fun res!2417164 () Bool)

(declare-fun e!3520744 () Bool)

(assert (=> d!1806370 (=> res!2417164 e!3520744)))

(assert (=> d!1806370 (= res!2417164 ((_ is Nil!63338) (exprs!5605 (h!69787 zl!343))))))

(assert (=> d!1806370 (= (forall!14854 (exprs!5605 (h!69787 zl!343)) lambda!309402) e!3520744)))

(declare-fun b!5725812 () Bool)

(declare-fun e!3520745 () Bool)

(assert (=> b!5725812 (= e!3520744 e!3520745)))

(declare-fun res!2417165 () Bool)

(assert (=> b!5725812 (=> (not res!2417165) (not e!3520745))))

(assert (=> b!5725812 (= res!2417165 (dynLambda!24788 lambda!309402 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun b!5725813 () Bool)

(assert (=> b!5725813 (= e!3520745 (forall!14854 (t!376788 (exprs!5605 (h!69787 zl!343))) lambda!309402))))

(assert (= (and d!1806370 (not res!2417164)) b!5725812))

(assert (= (and b!5725812 res!2417165) b!5725813))

(declare-fun b_lambda!216379 () Bool)

(assert (=> (not b_lambda!216379) (not b!5725812)))

(declare-fun m!6678578 () Bool)

(assert (=> b!5725812 m!6678578))

(declare-fun m!6678580 () Bool)

(assert (=> b!5725813 m!6678580))

(assert (=> d!1805580 d!1806370))

(assert (=> b!5724397 d!1806080))

(assert (=> b!5724307 d!1806044))

(assert (=> b!5724307 d!1806046))

(assert (=> b!5723985 d!1805732))

(declare-fun d!1806372 () Bool)

(assert (=> d!1806372 (forall!14854 (++!13915 (exprs!5605 lt!2278665) lt!2278663) lambda!309371)))

(declare-fun lt!2278893 () Unit!156416)

(assert (=> d!1806372 (= lt!2278893 (choose!43280 (exprs!5605 lt!2278665) lt!2278663 lambda!309371))))

(assert (=> d!1806372 (forall!14854 (exprs!5605 lt!2278665) lambda!309371)))

(assert (=> d!1806372 (= (lemmaConcatPreservesForall!290 (exprs!5605 lt!2278665) lt!2278663 lambda!309371) lt!2278893)))

(declare-fun bs!1339075 () Bool)

(assert (= bs!1339075 d!1806372))

(assert (=> bs!1339075 m!6677180))

(assert (=> bs!1339075 m!6677180))

(declare-fun m!6678582 () Bool)

(assert (=> bs!1339075 m!6678582))

(declare-fun m!6678584 () Bool)

(assert (=> bs!1339075 m!6678584))

(declare-fun m!6678586 () Bool)

(assert (=> bs!1339075 m!6678586))

(assert (=> bs!1338422 d!1806372))

(declare-fun b!5725816 () Bool)

(declare-fun res!2417166 () Bool)

(declare-fun e!3520746 () Bool)

(assert (=> b!5725816 (=> (not res!2417166) (not e!3520746))))

(declare-fun lt!2278894 () List!63462)

(assert (=> b!5725816 (= res!2417166 (= (size!40031 lt!2278894) (+ (size!40031 (exprs!5605 lt!2278665)) (size!40031 lt!2278663))))))

(declare-fun d!1806374 () Bool)

(assert (=> d!1806374 e!3520746))

(declare-fun res!2417167 () Bool)

(assert (=> d!1806374 (=> (not res!2417167) (not e!3520746))))

(assert (=> d!1806374 (= res!2417167 (= (content!11512 lt!2278894) ((_ map or) (content!11512 (exprs!5605 lt!2278665)) (content!11512 lt!2278663))))))

(declare-fun e!3520747 () List!63462)

(assert (=> d!1806374 (= lt!2278894 e!3520747)))

(declare-fun c!1010173 () Bool)

(assert (=> d!1806374 (= c!1010173 ((_ is Nil!63338) (exprs!5605 lt!2278665)))))

(assert (=> d!1806374 (= (++!13915 (exprs!5605 lt!2278665) lt!2278663) lt!2278894)))

(declare-fun b!5725814 () Bool)

(assert (=> b!5725814 (= e!3520747 lt!2278663)))

(declare-fun b!5725815 () Bool)

(assert (=> b!5725815 (= e!3520747 (Cons!63338 (h!69786 (exprs!5605 lt!2278665)) (++!13915 (t!376788 (exprs!5605 lt!2278665)) lt!2278663)))))

(declare-fun b!5725817 () Bool)

(assert (=> b!5725817 (= e!3520746 (or (not (= lt!2278663 Nil!63338)) (= lt!2278894 (exprs!5605 lt!2278665))))))

(assert (= (and d!1806374 c!1010173) b!5725814))

(assert (= (and d!1806374 (not c!1010173)) b!5725815))

(assert (= (and d!1806374 res!2417167) b!5725816))

(assert (= (and b!5725816 res!2417166) b!5725817))

(declare-fun m!6678588 () Bool)

(assert (=> b!5725816 m!6678588))

(declare-fun m!6678590 () Bool)

(assert (=> b!5725816 m!6678590))

(assert (=> b!5725816 m!6676920))

(declare-fun m!6678592 () Bool)

(assert (=> d!1806374 m!6678592))

(declare-fun m!6678594 () Bool)

(assert (=> d!1806374 m!6678594))

(assert (=> d!1806374 m!6676926))

(declare-fun m!6678596 () Bool)

(assert (=> b!5725815 m!6678596))

(assert (=> bs!1338422 d!1806374))

(assert (=> d!1805738 d!1805734))

(assert (=> d!1805738 d!1805736))

(declare-fun d!1806376 () Bool)

(assert (=> d!1806376 (= (matchR!7906 lt!2278693 s!2326) (matchRSpec!2824 lt!2278693 s!2326))))

(assert (=> d!1806376 true))

(declare-fun _$88!4035 () Unit!156416)

(assert (=> d!1806376 (= (choose!43285 lt!2278693 s!2326) _$88!4035)))

(declare-fun bs!1339076 () Bool)

(assert (= bs!1339076 d!1806376))

(assert (=> bs!1339076 m!6676506))

(assert (=> bs!1339076 m!6676508))

(assert (=> d!1805738 d!1806376))

(assert (=> d!1805738 d!1805932))

(declare-fun d!1806378 () Bool)

(assert (=> d!1806378 (= (head!12118 (unfocusZipperList!1149 zl!343)) (h!69786 (unfocusZipperList!1149 zl!343)))))

(assert (=> b!5724372 d!1806378))

(assert (=> d!1805622 d!1806110))

(assert (=> d!1805650 d!1805648))

(declare-fun d!1806380 () Bool)

(assert (=> d!1806380 (= (map!14502 lt!2278685 lambda!309370) (store ((as const (Array Context!10210 Bool)) false) (dynLambda!24785 lambda!309370 lt!2278665) true))))

(assert (=> d!1806380 true))

(declare-fun _$12!1595 () Unit!156416)

(assert (=> d!1806380 (= (choose!43279 lt!2278685 lt!2278665 lambda!309370) _$12!1595)))

(declare-fun b_lambda!216381 () Bool)

(assert (=> (not b_lambda!216381) (not d!1806380)))

(declare-fun bs!1339077 () Bool)

(assert (= bs!1339077 d!1806380))

(assert (=> bs!1339077 m!6676430))

(assert (=> bs!1339077 m!6676934))

(assert (=> bs!1339077 m!6676934))

(assert (=> bs!1339077 m!6676936))

(assert (=> d!1805650 d!1806380))

(declare-fun b!5725819 () Bool)

(declare-fun e!3520748 () Bool)

(declare-fun tp!1585315 () Bool)

(declare-fun tp!1585311 () Bool)

(assert (=> b!5725819 (= e!3520748 (and tp!1585315 tp!1585311))))

(assert (=> b!5724469 (= tp!1585113 e!3520748)))

(declare-fun b!5725821 () Bool)

(declare-fun tp!1585314 () Bool)

(declare-fun tp!1585312 () Bool)

(assert (=> b!5725821 (= e!3520748 (and tp!1585314 tp!1585312))))

(declare-fun b!5725818 () Bool)

(assert (=> b!5725818 (= e!3520748 tp_is_empty!40695)))

(declare-fun b!5725820 () Bool)

(declare-fun tp!1585313 () Bool)

(assert (=> b!5725820 (= e!3520748 tp!1585313)))

(assert (= (and b!5724469 ((_ is ElementMatch!15721) (h!69786 (exprs!5605 (h!69787 zl!343))))) b!5725818))

(assert (= (and b!5724469 ((_ is Concat!24566) (h!69786 (exprs!5605 (h!69787 zl!343))))) b!5725819))

(assert (= (and b!5724469 ((_ is Star!15721) (h!69786 (exprs!5605 (h!69787 zl!343))))) b!5725820))

(assert (= (and b!5724469 ((_ is Union!15721) (h!69786 (exprs!5605 (h!69787 zl!343))))) b!5725821))

(declare-fun b!5725822 () Bool)

(declare-fun e!3520749 () Bool)

(declare-fun tp!1585316 () Bool)

(declare-fun tp!1585317 () Bool)

(assert (=> b!5725822 (= e!3520749 (and tp!1585316 tp!1585317))))

(assert (=> b!5724469 (= tp!1585114 e!3520749)))

(assert (= (and b!5724469 ((_ is Cons!63338) (t!376788 (exprs!5605 (h!69787 zl!343))))) b!5725822))

(declare-fun b!5725823 () Bool)

(declare-fun e!3520750 () Bool)

(declare-fun tp!1585318 () Bool)

(assert (=> b!5725823 (= e!3520750 (and tp_is_empty!40695 tp!1585318))))

(assert (=> b!5724468 (= tp!1585112 e!3520750)))

(assert (= (and b!5724468 ((_ is Cons!63340) (t!376790 (t!376790 s!2326)))) b!5725823))

(declare-fun b!5725824 () Bool)

(declare-fun e!3520751 () Bool)

(declare-fun tp!1585319 () Bool)

(declare-fun tp!1585320 () Bool)

(assert (=> b!5725824 (= e!3520751 (and tp!1585319 tp!1585320))))

(assert (=> b!5724446 (= tp!1585087 e!3520751)))

(assert (= (and b!5724446 ((_ is Cons!63338) (exprs!5605 (h!69787 (t!376789 zl!343))))) b!5725824))

(declare-fun b!5725826 () Bool)

(declare-fun e!3520752 () Bool)

(declare-fun tp!1585325 () Bool)

(declare-fun tp!1585321 () Bool)

(assert (=> b!5725826 (= e!3520752 (and tp!1585325 tp!1585321))))

(assert (=> b!5724455 (= tp!1585098 e!3520752)))

(declare-fun b!5725828 () Bool)

(declare-fun tp!1585324 () Bool)

(declare-fun tp!1585322 () Bool)

(assert (=> b!5725828 (= e!3520752 (and tp!1585324 tp!1585322))))

(declare-fun b!5725825 () Bool)

(assert (=> b!5725825 (= e!3520752 tp_is_empty!40695)))

(declare-fun b!5725827 () Bool)

(declare-fun tp!1585323 () Bool)

(assert (=> b!5725827 (= e!3520752 tp!1585323)))

(assert (= (and b!5724455 ((_ is ElementMatch!15721) (regOne!31955 (reg!16050 r!7292)))) b!5725825))

(assert (= (and b!5724455 ((_ is Concat!24566) (regOne!31955 (reg!16050 r!7292)))) b!5725826))

(assert (= (and b!5724455 ((_ is Star!15721) (regOne!31955 (reg!16050 r!7292)))) b!5725827))

(assert (= (and b!5724455 ((_ is Union!15721) (regOne!31955 (reg!16050 r!7292)))) b!5725828))

(declare-fun b!5725830 () Bool)

(declare-fun e!3520753 () Bool)

(declare-fun tp!1585330 () Bool)

(declare-fun tp!1585326 () Bool)

(assert (=> b!5725830 (= e!3520753 (and tp!1585330 tp!1585326))))

(assert (=> b!5724455 (= tp!1585096 e!3520753)))

(declare-fun b!5725832 () Bool)

(declare-fun tp!1585329 () Bool)

(declare-fun tp!1585327 () Bool)

(assert (=> b!5725832 (= e!3520753 (and tp!1585329 tp!1585327))))

(declare-fun b!5725829 () Bool)

(assert (=> b!5725829 (= e!3520753 tp_is_empty!40695)))

(declare-fun b!5725831 () Bool)

(declare-fun tp!1585328 () Bool)

(assert (=> b!5725831 (= e!3520753 tp!1585328)))

(assert (= (and b!5724455 ((_ is ElementMatch!15721) (regTwo!31955 (reg!16050 r!7292)))) b!5725829))

(assert (= (and b!5724455 ((_ is Concat!24566) (regTwo!31955 (reg!16050 r!7292)))) b!5725830))

(assert (= (and b!5724455 ((_ is Star!15721) (regTwo!31955 (reg!16050 r!7292)))) b!5725831))

(assert (= (and b!5724455 ((_ is Union!15721) (regTwo!31955 (reg!16050 r!7292)))) b!5725832))

(declare-fun b!5725834 () Bool)

(declare-fun e!3520754 () Bool)

(declare-fun tp!1585335 () Bool)

(declare-fun tp!1585331 () Bool)

(assert (=> b!5725834 (= e!3520754 (and tp!1585335 tp!1585331))))

(assert (=> b!5724434 (= tp!1585076 e!3520754)))

(declare-fun b!5725836 () Bool)

(declare-fun tp!1585334 () Bool)

(declare-fun tp!1585332 () Bool)

(assert (=> b!5725836 (= e!3520754 (and tp!1585334 tp!1585332))))

(declare-fun b!5725833 () Bool)

(assert (=> b!5725833 (= e!3520754 tp_is_empty!40695)))

(declare-fun b!5725835 () Bool)

(declare-fun tp!1585333 () Bool)

(assert (=> b!5725835 (= e!3520754 tp!1585333)))

(assert (= (and b!5724434 ((_ is ElementMatch!15721) (regOne!31955 (regOne!31954 r!7292)))) b!5725833))

(assert (= (and b!5724434 ((_ is Concat!24566) (regOne!31955 (regOne!31954 r!7292)))) b!5725834))

(assert (= (and b!5724434 ((_ is Star!15721) (regOne!31955 (regOne!31954 r!7292)))) b!5725835))

(assert (= (and b!5724434 ((_ is Union!15721) (regOne!31955 (regOne!31954 r!7292)))) b!5725836))

(declare-fun b!5725838 () Bool)

(declare-fun e!3520755 () Bool)

(declare-fun tp!1585340 () Bool)

(declare-fun tp!1585336 () Bool)

(assert (=> b!5725838 (= e!3520755 (and tp!1585340 tp!1585336))))

(assert (=> b!5724434 (= tp!1585074 e!3520755)))

(declare-fun b!5725840 () Bool)

(declare-fun tp!1585339 () Bool)

(declare-fun tp!1585337 () Bool)

(assert (=> b!5725840 (= e!3520755 (and tp!1585339 tp!1585337))))

(declare-fun b!5725837 () Bool)

(assert (=> b!5725837 (= e!3520755 tp_is_empty!40695)))

(declare-fun b!5725839 () Bool)

(declare-fun tp!1585338 () Bool)

(assert (=> b!5725839 (= e!3520755 tp!1585338)))

(assert (= (and b!5724434 ((_ is ElementMatch!15721) (regTwo!31955 (regOne!31954 r!7292)))) b!5725837))

(assert (= (and b!5724434 ((_ is Concat!24566) (regTwo!31955 (regOne!31954 r!7292)))) b!5725838))

(assert (= (and b!5724434 ((_ is Star!15721) (regTwo!31955 (regOne!31954 r!7292)))) b!5725839))

(assert (= (and b!5724434 ((_ is Union!15721) (regTwo!31955 (regOne!31954 r!7292)))) b!5725840))

(declare-fun b!5725842 () Bool)

(declare-fun e!3520756 () Bool)

(declare-fun tp!1585345 () Bool)

(declare-fun tp!1585341 () Bool)

(assert (=> b!5725842 (= e!3520756 (and tp!1585345 tp!1585341))))

(assert (=> b!5724454 (= tp!1585097 e!3520756)))

(declare-fun b!5725844 () Bool)

(declare-fun tp!1585344 () Bool)

(declare-fun tp!1585342 () Bool)

(assert (=> b!5725844 (= e!3520756 (and tp!1585344 tp!1585342))))

(declare-fun b!5725841 () Bool)

(assert (=> b!5725841 (= e!3520756 tp_is_empty!40695)))

(declare-fun b!5725843 () Bool)

(declare-fun tp!1585343 () Bool)

(assert (=> b!5725843 (= e!3520756 tp!1585343)))

(assert (= (and b!5724454 ((_ is ElementMatch!15721) (reg!16050 (reg!16050 r!7292)))) b!5725841))

(assert (= (and b!5724454 ((_ is Concat!24566) (reg!16050 (reg!16050 r!7292)))) b!5725842))

(assert (= (and b!5724454 ((_ is Star!15721) (reg!16050 (reg!16050 r!7292)))) b!5725843))

(assert (= (and b!5724454 ((_ is Union!15721) (reg!16050 (reg!16050 r!7292)))) b!5725844))

(declare-fun b!5725846 () Bool)

(declare-fun e!3520757 () Bool)

(declare-fun tp!1585350 () Bool)

(declare-fun tp!1585346 () Bool)

(assert (=> b!5725846 (= e!3520757 (and tp!1585350 tp!1585346))))

(assert (=> b!5724433 (= tp!1585075 e!3520757)))

(declare-fun b!5725848 () Bool)

(declare-fun tp!1585349 () Bool)

(declare-fun tp!1585347 () Bool)

(assert (=> b!5725848 (= e!3520757 (and tp!1585349 tp!1585347))))

(declare-fun b!5725845 () Bool)

(assert (=> b!5725845 (= e!3520757 tp_is_empty!40695)))

(declare-fun b!5725847 () Bool)

(declare-fun tp!1585348 () Bool)

(assert (=> b!5725847 (= e!3520757 tp!1585348)))

(assert (= (and b!5724433 ((_ is ElementMatch!15721) (reg!16050 (regOne!31954 r!7292)))) b!5725845))

(assert (= (and b!5724433 ((_ is Concat!24566) (reg!16050 (regOne!31954 r!7292)))) b!5725846))

(assert (= (and b!5724433 ((_ is Star!15721) (reg!16050 (regOne!31954 r!7292)))) b!5725847))

(assert (= (and b!5724433 ((_ is Union!15721) (reg!16050 (regOne!31954 r!7292)))) b!5725848))

(declare-fun b!5725850 () Bool)

(declare-fun e!3520758 () Bool)

(declare-fun tp!1585355 () Bool)

(declare-fun tp!1585351 () Bool)

(assert (=> b!5725850 (= e!3520758 (and tp!1585355 tp!1585351))))

(assert (=> b!5724463 (= tp!1585108 e!3520758)))

(declare-fun b!5725852 () Bool)

(declare-fun tp!1585354 () Bool)

(declare-fun tp!1585352 () Bool)

(assert (=> b!5725852 (= e!3520758 (and tp!1585354 tp!1585352))))

(declare-fun b!5725849 () Bool)

(assert (=> b!5725849 (= e!3520758 tp_is_empty!40695)))

(declare-fun b!5725851 () Bool)

(declare-fun tp!1585353 () Bool)

(assert (=> b!5725851 (= e!3520758 tp!1585353)))

(assert (= (and b!5724463 ((_ is ElementMatch!15721) (regOne!31955 (regTwo!31955 r!7292)))) b!5725849))

(assert (= (and b!5724463 ((_ is Concat!24566) (regOne!31955 (regTwo!31955 r!7292)))) b!5725850))

(assert (= (and b!5724463 ((_ is Star!15721) (regOne!31955 (regTwo!31955 r!7292)))) b!5725851))

(assert (= (and b!5724463 ((_ is Union!15721) (regOne!31955 (regTwo!31955 r!7292)))) b!5725852))

(declare-fun b!5725854 () Bool)

(declare-fun e!3520759 () Bool)

(declare-fun tp!1585360 () Bool)

(declare-fun tp!1585356 () Bool)

(assert (=> b!5725854 (= e!3520759 (and tp!1585360 tp!1585356))))

(assert (=> b!5724463 (= tp!1585106 e!3520759)))

(declare-fun b!5725856 () Bool)

(declare-fun tp!1585359 () Bool)

(declare-fun tp!1585357 () Bool)

(assert (=> b!5725856 (= e!3520759 (and tp!1585359 tp!1585357))))

(declare-fun b!5725853 () Bool)

(assert (=> b!5725853 (= e!3520759 tp_is_empty!40695)))

(declare-fun b!5725855 () Bool)

(declare-fun tp!1585358 () Bool)

(assert (=> b!5725855 (= e!3520759 tp!1585358)))

(assert (= (and b!5724463 ((_ is ElementMatch!15721) (regTwo!31955 (regTwo!31955 r!7292)))) b!5725853))

(assert (= (and b!5724463 ((_ is Concat!24566) (regTwo!31955 (regTwo!31955 r!7292)))) b!5725854))

(assert (= (and b!5724463 ((_ is Star!15721) (regTwo!31955 (regTwo!31955 r!7292)))) b!5725855))

(assert (= (and b!5724463 ((_ is Union!15721) (regTwo!31955 (regTwo!31955 r!7292)))) b!5725856))

(declare-fun b!5725858 () Bool)

(declare-fun e!3520760 () Bool)

(declare-fun tp!1585365 () Bool)

(declare-fun tp!1585361 () Bool)

(assert (=> b!5725858 (= e!3520760 (and tp!1585365 tp!1585361))))

(assert (=> b!5724453 (= tp!1585099 e!3520760)))

(declare-fun b!5725860 () Bool)

(declare-fun tp!1585364 () Bool)

(declare-fun tp!1585362 () Bool)

(assert (=> b!5725860 (= e!3520760 (and tp!1585364 tp!1585362))))

(declare-fun b!5725857 () Bool)

(assert (=> b!5725857 (= e!3520760 tp_is_empty!40695)))

(declare-fun b!5725859 () Bool)

(declare-fun tp!1585363 () Bool)

(assert (=> b!5725859 (= e!3520760 tp!1585363)))

(assert (= (and b!5724453 ((_ is ElementMatch!15721) (regOne!31954 (reg!16050 r!7292)))) b!5725857))

(assert (= (and b!5724453 ((_ is Concat!24566) (regOne!31954 (reg!16050 r!7292)))) b!5725858))

(assert (= (and b!5724453 ((_ is Star!15721) (regOne!31954 (reg!16050 r!7292)))) b!5725859))

(assert (= (and b!5724453 ((_ is Union!15721) (regOne!31954 (reg!16050 r!7292)))) b!5725860))

(declare-fun b!5725862 () Bool)

(declare-fun e!3520761 () Bool)

(declare-fun tp!1585370 () Bool)

(declare-fun tp!1585366 () Bool)

(assert (=> b!5725862 (= e!3520761 (and tp!1585370 tp!1585366))))

(assert (=> b!5724453 (= tp!1585095 e!3520761)))

(declare-fun b!5725864 () Bool)

(declare-fun tp!1585369 () Bool)

(declare-fun tp!1585367 () Bool)

(assert (=> b!5725864 (= e!3520761 (and tp!1585369 tp!1585367))))

(declare-fun b!5725861 () Bool)

(assert (=> b!5725861 (= e!3520761 tp_is_empty!40695)))

(declare-fun b!5725863 () Bool)

(declare-fun tp!1585368 () Bool)

(assert (=> b!5725863 (= e!3520761 tp!1585368)))

(assert (= (and b!5724453 ((_ is ElementMatch!15721) (regTwo!31954 (reg!16050 r!7292)))) b!5725861))

(assert (= (and b!5724453 ((_ is Concat!24566) (regTwo!31954 (reg!16050 r!7292)))) b!5725862))

(assert (= (and b!5724453 ((_ is Star!15721) (regTwo!31954 (reg!16050 r!7292)))) b!5725863))

(assert (= (and b!5724453 ((_ is Union!15721) (regTwo!31954 (reg!16050 r!7292)))) b!5725864))

(declare-fun b!5725866 () Bool)

(declare-fun e!3520762 () Bool)

(declare-fun tp!1585375 () Bool)

(declare-fun tp!1585371 () Bool)

(assert (=> b!5725866 (= e!3520762 (and tp!1585375 tp!1585371))))

(assert (=> b!5724432 (= tp!1585077 e!3520762)))

(declare-fun b!5725868 () Bool)

(declare-fun tp!1585374 () Bool)

(declare-fun tp!1585372 () Bool)

(assert (=> b!5725868 (= e!3520762 (and tp!1585374 tp!1585372))))

(declare-fun b!5725865 () Bool)

(assert (=> b!5725865 (= e!3520762 tp_is_empty!40695)))

(declare-fun b!5725867 () Bool)

(declare-fun tp!1585373 () Bool)

(assert (=> b!5725867 (= e!3520762 tp!1585373)))

(assert (= (and b!5724432 ((_ is ElementMatch!15721) (regOne!31954 (regOne!31954 r!7292)))) b!5725865))

(assert (= (and b!5724432 ((_ is Concat!24566) (regOne!31954 (regOne!31954 r!7292)))) b!5725866))

(assert (= (and b!5724432 ((_ is Star!15721) (regOne!31954 (regOne!31954 r!7292)))) b!5725867))

(assert (= (and b!5724432 ((_ is Union!15721) (regOne!31954 (regOne!31954 r!7292)))) b!5725868))

(declare-fun b!5725870 () Bool)

(declare-fun e!3520763 () Bool)

(declare-fun tp!1585380 () Bool)

(declare-fun tp!1585376 () Bool)

(assert (=> b!5725870 (= e!3520763 (and tp!1585380 tp!1585376))))

(assert (=> b!5724432 (= tp!1585073 e!3520763)))

(declare-fun b!5725872 () Bool)

(declare-fun tp!1585379 () Bool)

(declare-fun tp!1585377 () Bool)

(assert (=> b!5725872 (= e!3520763 (and tp!1585379 tp!1585377))))

(declare-fun b!5725869 () Bool)

(assert (=> b!5725869 (= e!3520763 tp_is_empty!40695)))

(declare-fun b!5725871 () Bool)

(declare-fun tp!1585378 () Bool)

(assert (=> b!5725871 (= e!3520763 tp!1585378)))

(assert (= (and b!5724432 ((_ is ElementMatch!15721) (regTwo!31954 (regOne!31954 r!7292)))) b!5725869))

(assert (= (and b!5724432 ((_ is Concat!24566) (regTwo!31954 (regOne!31954 r!7292)))) b!5725870))

(assert (= (and b!5724432 ((_ is Star!15721) (regTwo!31954 (regOne!31954 r!7292)))) b!5725871))

(assert (= (and b!5724432 ((_ is Union!15721) (regTwo!31954 (regOne!31954 r!7292)))) b!5725872))

(declare-fun b!5725874 () Bool)

(declare-fun e!3520764 () Bool)

(declare-fun tp!1585385 () Bool)

(declare-fun tp!1585381 () Bool)

(assert (=> b!5725874 (= e!3520764 (and tp!1585385 tp!1585381))))

(assert (=> b!5724462 (= tp!1585107 e!3520764)))

(declare-fun b!5725876 () Bool)

(declare-fun tp!1585384 () Bool)

(declare-fun tp!1585382 () Bool)

(assert (=> b!5725876 (= e!3520764 (and tp!1585384 tp!1585382))))

(declare-fun b!5725873 () Bool)

(assert (=> b!5725873 (= e!3520764 tp_is_empty!40695)))

(declare-fun b!5725875 () Bool)

(declare-fun tp!1585383 () Bool)

(assert (=> b!5725875 (= e!3520764 tp!1585383)))

(assert (= (and b!5724462 ((_ is ElementMatch!15721) (reg!16050 (regTwo!31955 r!7292)))) b!5725873))

(assert (= (and b!5724462 ((_ is Concat!24566) (reg!16050 (regTwo!31955 r!7292)))) b!5725874))

(assert (= (and b!5724462 ((_ is Star!15721) (reg!16050 (regTwo!31955 r!7292)))) b!5725875))

(assert (= (and b!5724462 ((_ is Union!15721) (reg!16050 (regTwo!31955 r!7292)))) b!5725876))

(declare-fun b!5725878 () Bool)

(declare-fun e!3520765 () Bool)

(declare-fun tp!1585390 () Bool)

(declare-fun tp!1585386 () Bool)

(assert (=> b!5725878 (= e!3520765 (and tp!1585390 tp!1585386))))

(assert (=> b!5724461 (= tp!1585109 e!3520765)))

(declare-fun b!5725880 () Bool)

(declare-fun tp!1585389 () Bool)

(declare-fun tp!1585387 () Bool)

(assert (=> b!5725880 (= e!3520765 (and tp!1585389 tp!1585387))))

(declare-fun b!5725877 () Bool)

(assert (=> b!5725877 (= e!3520765 tp_is_empty!40695)))

(declare-fun b!5725879 () Bool)

(declare-fun tp!1585388 () Bool)

(assert (=> b!5725879 (= e!3520765 tp!1585388)))

(assert (= (and b!5724461 ((_ is ElementMatch!15721) (regOne!31954 (regTwo!31955 r!7292)))) b!5725877))

(assert (= (and b!5724461 ((_ is Concat!24566) (regOne!31954 (regTwo!31955 r!7292)))) b!5725878))

(assert (= (and b!5724461 ((_ is Star!15721) (regOne!31954 (regTwo!31955 r!7292)))) b!5725879))

(assert (= (and b!5724461 ((_ is Union!15721) (regOne!31954 (regTwo!31955 r!7292)))) b!5725880))

(declare-fun b!5725882 () Bool)

(declare-fun e!3520766 () Bool)

(declare-fun tp!1585395 () Bool)

(declare-fun tp!1585391 () Bool)

(assert (=> b!5725882 (= e!3520766 (and tp!1585395 tp!1585391))))

(assert (=> b!5724461 (= tp!1585105 e!3520766)))

(declare-fun b!5725884 () Bool)

(declare-fun tp!1585394 () Bool)

(declare-fun tp!1585392 () Bool)

(assert (=> b!5725884 (= e!3520766 (and tp!1585394 tp!1585392))))

(declare-fun b!5725881 () Bool)

(assert (=> b!5725881 (= e!3520766 tp_is_empty!40695)))

(declare-fun b!5725883 () Bool)

(declare-fun tp!1585393 () Bool)

(assert (=> b!5725883 (= e!3520766 tp!1585393)))

(assert (= (and b!5724461 ((_ is ElementMatch!15721) (regTwo!31954 (regTwo!31955 r!7292)))) b!5725881))

(assert (= (and b!5724461 ((_ is Concat!24566) (regTwo!31954 (regTwo!31955 r!7292)))) b!5725882))

(assert (= (and b!5724461 ((_ is Star!15721) (regTwo!31954 (regTwo!31955 r!7292)))) b!5725883))

(assert (= (and b!5724461 ((_ is Union!15721) (regTwo!31954 (regTwo!31955 r!7292)))) b!5725884))

(declare-fun b!5725885 () Bool)

(declare-fun e!3520767 () Bool)

(declare-fun tp!1585396 () Bool)

(declare-fun tp!1585397 () Bool)

(assert (=> b!5725885 (= e!3520767 (and tp!1585396 tp!1585397))))

(assert (=> b!5724420 (= tp!1585062 e!3520767)))

(assert (= (and b!5724420 ((_ is Cons!63338) (exprs!5605 setElem!38369))) b!5725885))

(declare-fun condSetEmpty!38389 () Bool)

(assert (=> setNonEmpty!38369 (= condSetEmpty!38389 (= setRest!38369 ((as const (Array Context!10210 Bool)) false)))))

(declare-fun setRes!38389 () Bool)

(assert (=> setNonEmpty!38369 (= tp!1585061 setRes!38389)))

(declare-fun setIsEmpty!38389 () Bool)

(assert (=> setIsEmpty!38389 setRes!38389))

(declare-fun setElem!38389 () Context!10210)

(declare-fun setNonEmpty!38389 () Bool)

(declare-fun e!3520768 () Bool)

(declare-fun tp!1585398 () Bool)

(assert (=> setNonEmpty!38389 (= setRes!38389 (and tp!1585398 (inv!82549 setElem!38389) e!3520768))))

(declare-fun setRest!38389 () (InoxSet Context!10210))

(assert (=> setNonEmpty!38389 (= setRest!38369 ((_ map or) (store ((as const (Array Context!10210 Bool)) false) setElem!38389 true) setRest!38389))))

(declare-fun b!5725886 () Bool)

(declare-fun tp!1585399 () Bool)

(assert (=> b!5725886 (= e!3520768 tp!1585399)))

(assert (= (and setNonEmpty!38369 condSetEmpty!38389) setIsEmpty!38389))

(assert (= (and setNonEmpty!38369 (not condSetEmpty!38389)) setNonEmpty!38389))

(assert (= setNonEmpty!38389 b!5725886))

(declare-fun m!6678598 () Bool)

(assert (=> setNonEmpty!38389 m!6678598))

(declare-fun b!5725888 () Bool)

(declare-fun e!3520770 () Bool)

(declare-fun tp!1585400 () Bool)

(assert (=> b!5725888 (= e!3520770 tp!1585400)))

(declare-fun e!3520769 () Bool)

(declare-fun tp!1585401 () Bool)

(declare-fun b!5725887 () Bool)

(assert (=> b!5725887 (= e!3520769 (and (inv!82549 (h!69787 (t!376789 (t!376789 zl!343)))) e!3520770 tp!1585401))))

(assert (=> b!5724445 (= tp!1585088 e!3520769)))

(assert (= b!5725887 b!5725888))

(assert (= (and b!5724445 ((_ is Cons!63339) (t!376789 (t!376789 zl!343)))) b!5725887))

(declare-fun m!6678600 () Bool)

(assert (=> b!5725887 m!6678600))

(declare-fun b!5725890 () Bool)

(declare-fun e!3520771 () Bool)

(declare-fun tp!1585406 () Bool)

(declare-fun tp!1585402 () Bool)

(assert (=> b!5725890 (= e!3520771 (and tp!1585406 tp!1585402))))

(assert (=> b!5724451 (= tp!1585093 e!3520771)))

(declare-fun b!5725892 () Bool)

(declare-fun tp!1585405 () Bool)

(declare-fun tp!1585403 () Bool)

(assert (=> b!5725892 (= e!3520771 (and tp!1585405 tp!1585403))))

(declare-fun b!5725889 () Bool)

(assert (=> b!5725889 (= e!3520771 tp_is_empty!40695)))

(declare-fun b!5725891 () Bool)

(declare-fun tp!1585404 () Bool)

(assert (=> b!5725891 (= e!3520771 tp!1585404)))

(assert (= (and b!5724451 ((_ is ElementMatch!15721) (h!69786 (exprs!5605 setElem!38363)))) b!5725889))

(assert (= (and b!5724451 ((_ is Concat!24566) (h!69786 (exprs!5605 setElem!38363)))) b!5725890))

(assert (= (and b!5724451 ((_ is Star!15721) (h!69786 (exprs!5605 setElem!38363)))) b!5725891))

(assert (= (and b!5724451 ((_ is Union!15721) (h!69786 (exprs!5605 setElem!38363)))) b!5725892))

(declare-fun b!5725893 () Bool)

(declare-fun e!3520772 () Bool)

(declare-fun tp!1585407 () Bool)

(declare-fun tp!1585408 () Bool)

(assert (=> b!5725893 (= e!3520772 (and tp!1585407 tp!1585408))))

(assert (=> b!5724451 (= tp!1585094 e!3520772)))

(assert (= (and b!5724451 ((_ is Cons!63338) (t!376788 (exprs!5605 setElem!38363)))) b!5725893))

(declare-fun b!5725895 () Bool)

(declare-fun e!3520773 () Bool)

(declare-fun tp!1585413 () Bool)

(declare-fun tp!1585409 () Bool)

(assert (=> b!5725895 (= e!3520773 (and tp!1585413 tp!1585409))))

(assert (=> b!5724459 (= tp!1585103 e!3520773)))

(declare-fun b!5725897 () Bool)

(declare-fun tp!1585412 () Bool)

(declare-fun tp!1585410 () Bool)

(assert (=> b!5725897 (= e!3520773 (and tp!1585412 tp!1585410))))

(declare-fun b!5725894 () Bool)

(assert (=> b!5725894 (= e!3520773 tp_is_empty!40695)))

(declare-fun b!5725896 () Bool)

(declare-fun tp!1585411 () Bool)

(assert (=> b!5725896 (= e!3520773 tp!1585411)))

(assert (= (and b!5724459 ((_ is ElementMatch!15721) (regOne!31955 (regOne!31955 r!7292)))) b!5725894))

(assert (= (and b!5724459 ((_ is Concat!24566) (regOne!31955 (regOne!31955 r!7292)))) b!5725895))

(assert (= (and b!5724459 ((_ is Star!15721) (regOne!31955 (regOne!31955 r!7292)))) b!5725896))

(assert (= (and b!5724459 ((_ is Union!15721) (regOne!31955 (regOne!31955 r!7292)))) b!5725897))

(declare-fun b!5725899 () Bool)

(declare-fun e!3520774 () Bool)

(declare-fun tp!1585418 () Bool)

(declare-fun tp!1585414 () Bool)

(assert (=> b!5725899 (= e!3520774 (and tp!1585418 tp!1585414))))

(assert (=> b!5724459 (= tp!1585101 e!3520774)))

(declare-fun b!5725901 () Bool)

(declare-fun tp!1585417 () Bool)

(declare-fun tp!1585415 () Bool)

(assert (=> b!5725901 (= e!3520774 (and tp!1585417 tp!1585415))))

(declare-fun b!5725898 () Bool)

(assert (=> b!5725898 (= e!3520774 tp_is_empty!40695)))

(declare-fun b!5725900 () Bool)

(declare-fun tp!1585416 () Bool)

(assert (=> b!5725900 (= e!3520774 tp!1585416)))

(assert (= (and b!5724459 ((_ is ElementMatch!15721) (regTwo!31955 (regOne!31955 r!7292)))) b!5725898))

(assert (= (and b!5724459 ((_ is Concat!24566) (regTwo!31955 (regOne!31955 r!7292)))) b!5725899))

(assert (= (and b!5724459 ((_ is Star!15721) (regTwo!31955 (regOne!31955 r!7292)))) b!5725900))

(assert (= (and b!5724459 ((_ is Union!15721) (regTwo!31955 (regOne!31955 r!7292)))) b!5725901))

(declare-fun b!5725903 () Bool)

(declare-fun e!3520775 () Bool)

(declare-fun tp!1585423 () Bool)

(declare-fun tp!1585419 () Bool)

(assert (=> b!5725903 (= e!3520775 (and tp!1585423 tp!1585419))))

(assert (=> b!5724438 (= tp!1585081 e!3520775)))

(declare-fun b!5725905 () Bool)

(declare-fun tp!1585422 () Bool)

(declare-fun tp!1585420 () Bool)

(assert (=> b!5725905 (= e!3520775 (and tp!1585422 tp!1585420))))

(declare-fun b!5725902 () Bool)

(assert (=> b!5725902 (= e!3520775 tp_is_empty!40695)))

(declare-fun b!5725904 () Bool)

(declare-fun tp!1585421 () Bool)

(assert (=> b!5725904 (= e!3520775 tp!1585421)))

(assert (= (and b!5724438 ((_ is ElementMatch!15721) (regOne!31955 (regTwo!31954 r!7292)))) b!5725902))

(assert (= (and b!5724438 ((_ is Concat!24566) (regOne!31955 (regTwo!31954 r!7292)))) b!5725903))

(assert (= (and b!5724438 ((_ is Star!15721) (regOne!31955 (regTwo!31954 r!7292)))) b!5725904))

(assert (= (and b!5724438 ((_ is Union!15721) (regOne!31955 (regTwo!31954 r!7292)))) b!5725905))

(declare-fun b!5725907 () Bool)

(declare-fun e!3520776 () Bool)

(declare-fun tp!1585428 () Bool)

(declare-fun tp!1585424 () Bool)

(assert (=> b!5725907 (= e!3520776 (and tp!1585428 tp!1585424))))

(assert (=> b!5724438 (= tp!1585079 e!3520776)))

(declare-fun b!5725909 () Bool)

(declare-fun tp!1585427 () Bool)

(declare-fun tp!1585425 () Bool)

(assert (=> b!5725909 (= e!3520776 (and tp!1585427 tp!1585425))))

(declare-fun b!5725906 () Bool)

(assert (=> b!5725906 (= e!3520776 tp_is_empty!40695)))

(declare-fun b!5725908 () Bool)

(declare-fun tp!1585426 () Bool)

(assert (=> b!5725908 (= e!3520776 tp!1585426)))

(assert (= (and b!5724438 ((_ is ElementMatch!15721) (regTwo!31955 (regTwo!31954 r!7292)))) b!5725906))

(assert (= (and b!5724438 ((_ is Concat!24566) (regTwo!31955 (regTwo!31954 r!7292)))) b!5725907))

(assert (= (and b!5724438 ((_ is Star!15721) (regTwo!31955 (regTwo!31954 r!7292)))) b!5725908))

(assert (= (and b!5724438 ((_ is Union!15721) (regTwo!31955 (regTwo!31954 r!7292)))) b!5725909))

(declare-fun b!5725911 () Bool)

(declare-fun e!3520777 () Bool)

(declare-fun tp!1585433 () Bool)

(declare-fun tp!1585429 () Bool)

(assert (=> b!5725911 (= e!3520777 (and tp!1585433 tp!1585429))))

(assert (=> b!5724458 (= tp!1585102 e!3520777)))

(declare-fun b!5725913 () Bool)

(declare-fun tp!1585432 () Bool)

(declare-fun tp!1585430 () Bool)

(assert (=> b!5725913 (= e!3520777 (and tp!1585432 tp!1585430))))

(declare-fun b!5725910 () Bool)

(assert (=> b!5725910 (= e!3520777 tp_is_empty!40695)))

(declare-fun b!5725912 () Bool)

(declare-fun tp!1585431 () Bool)

(assert (=> b!5725912 (= e!3520777 tp!1585431)))

(assert (= (and b!5724458 ((_ is ElementMatch!15721) (reg!16050 (regOne!31955 r!7292)))) b!5725910))

(assert (= (and b!5724458 ((_ is Concat!24566) (reg!16050 (regOne!31955 r!7292)))) b!5725911))

(assert (= (and b!5724458 ((_ is Star!15721) (reg!16050 (regOne!31955 r!7292)))) b!5725912))

(assert (= (and b!5724458 ((_ is Union!15721) (reg!16050 (regOne!31955 r!7292)))) b!5725913))

(declare-fun b!5725915 () Bool)

(declare-fun e!3520778 () Bool)

(declare-fun tp!1585438 () Bool)

(declare-fun tp!1585434 () Bool)

(assert (=> b!5725915 (= e!3520778 (and tp!1585438 tp!1585434))))

(assert (=> b!5724437 (= tp!1585080 e!3520778)))

(declare-fun b!5725917 () Bool)

(declare-fun tp!1585437 () Bool)

(declare-fun tp!1585435 () Bool)

(assert (=> b!5725917 (= e!3520778 (and tp!1585437 tp!1585435))))

(declare-fun b!5725914 () Bool)

(assert (=> b!5725914 (= e!3520778 tp_is_empty!40695)))

(declare-fun b!5725916 () Bool)

(declare-fun tp!1585436 () Bool)

(assert (=> b!5725916 (= e!3520778 tp!1585436)))

(assert (= (and b!5724437 ((_ is ElementMatch!15721) (reg!16050 (regTwo!31954 r!7292)))) b!5725914))

(assert (= (and b!5724437 ((_ is Concat!24566) (reg!16050 (regTwo!31954 r!7292)))) b!5725915))

(assert (= (and b!5724437 ((_ is Star!15721) (reg!16050 (regTwo!31954 r!7292)))) b!5725916))

(assert (= (and b!5724437 ((_ is Union!15721) (reg!16050 (regTwo!31954 r!7292)))) b!5725917))

(declare-fun b!5725919 () Bool)

(declare-fun e!3520779 () Bool)

(declare-fun tp!1585443 () Bool)

(declare-fun tp!1585439 () Bool)

(assert (=> b!5725919 (= e!3520779 (and tp!1585443 tp!1585439))))

(assert (=> b!5724457 (= tp!1585104 e!3520779)))

(declare-fun b!5725921 () Bool)

(declare-fun tp!1585442 () Bool)

(declare-fun tp!1585440 () Bool)

(assert (=> b!5725921 (= e!3520779 (and tp!1585442 tp!1585440))))

(declare-fun b!5725918 () Bool)

(assert (=> b!5725918 (= e!3520779 tp_is_empty!40695)))

(declare-fun b!5725920 () Bool)

(declare-fun tp!1585441 () Bool)

(assert (=> b!5725920 (= e!3520779 tp!1585441)))

(assert (= (and b!5724457 ((_ is ElementMatch!15721) (regOne!31954 (regOne!31955 r!7292)))) b!5725918))

(assert (= (and b!5724457 ((_ is Concat!24566) (regOne!31954 (regOne!31955 r!7292)))) b!5725919))

(assert (= (and b!5724457 ((_ is Star!15721) (regOne!31954 (regOne!31955 r!7292)))) b!5725920))

(assert (= (and b!5724457 ((_ is Union!15721) (regOne!31954 (regOne!31955 r!7292)))) b!5725921))

(declare-fun b!5725923 () Bool)

(declare-fun e!3520780 () Bool)

(declare-fun tp!1585448 () Bool)

(declare-fun tp!1585444 () Bool)

(assert (=> b!5725923 (= e!3520780 (and tp!1585448 tp!1585444))))

(assert (=> b!5724457 (= tp!1585100 e!3520780)))

(declare-fun b!5725925 () Bool)

(declare-fun tp!1585447 () Bool)

(declare-fun tp!1585445 () Bool)

(assert (=> b!5725925 (= e!3520780 (and tp!1585447 tp!1585445))))

(declare-fun b!5725922 () Bool)

(assert (=> b!5725922 (= e!3520780 tp_is_empty!40695)))

(declare-fun b!5725924 () Bool)

(declare-fun tp!1585446 () Bool)

(assert (=> b!5725924 (= e!3520780 tp!1585446)))

(assert (= (and b!5724457 ((_ is ElementMatch!15721) (regTwo!31954 (regOne!31955 r!7292)))) b!5725922))

(assert (= (and b!5724457 ((_ is Concat!24566) (regTwo!31954 (regOne!31955 r!7292)))) b!5725923))

(assert (= (and b!5724457 ((_ is Star!15721) (regTwo!31954 (regOne!31955 r!7292)))) b!5725924))

(assert (= (and b!5724457 ((_ is Union!15721) (regTwo!31954 (regOne!31955 r!7292)))) b!5725925))

(declare-fun b!5725927 () Bool)

(declare-fun e!3520781 () Bool)

(declare-fun tp!1585453 () Bool)

(declare-fun tp!1585449 () Bool)

(assert (=> b!5725927 (= e!3520781 (and tp!1585453 tp!1585449))))

(assert (=> b!5724436 (= tp!1585082 e!3520781)))

(declare-fun b!5725929 () Bool)

(declare-fun tp!1585452 () Bool)

(declare-fun tp!1585450 () Bool)

(assert (=> b!5725929 (= e!3520781 (and tp!1585452 tp!1585450))))

(declare-fun b!5725926 () Bool)

(assert (=> b!5725926 (= e!3520781 tp_is_empty!40695)))

(declare-fun b!5725928 () Bool)

(declare-fun tp!1585451 () Bool)

(assert (=> b!5725928 (= e!3520781 tp!1585451)))

(assert (= (and b!5724436 ((_ is ElementMatch!15721) (regOne!31954 (regTwo!31954 r!7292)))) b!5725926))

(assert (= (and b!5724436 ((_ is Concat!24566) (regOne!31954 (regTwo!31954 r!7292)))) b!5725927))

(assert (= (and b!5724436 ((_ is Star!15721) (regOne!31954 (regTwo!31954 r!7292)))) b!5725928))

(assert (= (and b!5724436 ((_ is Union!15721) (regOne!31954 (regTwo!31954 r!7292)))) b!5725929))

(declare-fun b!5725931 () Bool)

(declare-fun e!3520782 () Bool)

(declare-fun tp!1585458 () Bool)

(declare-fun tp!1585454 () Bool)

(assert (=> b!5725931 (= e!3520782 (and tp!1585458 tp!1585454))))

(assert (=> b!5724436 (= tp!1585078 e!3520782)))

(declare-fun b!5725933 () Bool)

(declare-fun tp!1585457 () Bool)

(declare-fun tp!1585455 () Bool)

(assert (=> b!5725933 (= e!3520782 (and tp!1585457 tp!1585455))))

(declare-fun b!5725930 () Bool)

(assert (=> b!5725930 (= e!3520782 tp_is_empty!40695)))

(declare-fun b!5725932 () Bool)

(declare-fun tp!1585456 () Bool)

(assert (=> b!5725932 (= e!3520782 tp!1585456)))

(assert (= (and b!5724436 ((_ is ElementMatch!15721) (regTwo!31954 (regTwo!31954 r!7292)))) b!5725930))

(assert (= (and b!5724436 ((_ is Concat!24566) (regTwo!31954 (regTwo!31954 r!7292)))) b!5725931))

(assert (= (and b!5724436 ((_ is Star!15721) (regTwo!31954 (regTwo!31954 r!7292)))) b!5725932))

(assert (= (and b!5724436 ((_ is Union!15721) (regTwo!31954 (regTwo!31954 r!7292)))) b!5725933))

(declare-fun b_lambda!216383 () Bool)

(assert (= b_lambda!216331 (or d!1805730 b_lambda!216383)))

(declare-fun bs!1339078 () Bool)

(declare-fun d!1806382 () Bool)

(assert (= bs!1339078 (and d!1806382 d!1805730)))

(assert (=> bs!1339078 (= (dynLambda!24788 lambda!309445 (h!69786 lt!2278811)) (validRegex!7457 (h!69786 lt!2278811)))))

(declare-fun m!6678602 () Bool)

(assert (=> bs!1339078 m!6678602))

(assert (=> b!5725150 d!1806382))

(declare-fun b_lambda!216385 () Bool)

(assert (= b_lambda!216377 (or d!1805662 b_lambda!216385)))

(declare-fun bs!1339079 () Bool)

(declare-fun d!1806384 () Bool)

(assert (= bs!1339079 (and d!1806384 d!1805662)))

(assert (=> bs!1339079 (= (dynLambda!24788 lambda!309423 (h!69786 (exprs!5605 setElem!38363))) (validRegex!7457 (h!69786 (exprs!5605 setElem!38363))))))

(declare-fun m!6678604 () Bool)

(assert (=> bs!1339079 m!6678604))

(assert (=> b!5725704 d!1806384))

(declare-fun b_lambda!216387 () Bool)

(assert (= b_lambda!216341 (or b!5723588 b_lambda!216387)))

(declare-fun bs!1339080 () Bool)

(declare-fun d!1806386 () Bool)

(assert (= bs!1339080 (and d!1806386 b!5723588)))

(assert (=> bs!1339080 (= (dynLambda!24788 lambda!309371 (h!69786 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663))) (validRegex!7457 (h!69786 (++!13915 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338) lt!2278663))))))

(declare-fun m!6678606 () Bool)

(assert (=> bs!1339080 m!6678606))

(assert (=> b!5725313 d!1806386))

(declare-fun b_lambda!216389 () Bool)

(assert (= b_lambda!216381 (or b!5723588 b_lambda!216389)))

(assert (=> d!1806380 d!1805746))

(declare-fun b_lambda!216391 () Bool)

(assert (= b_lambda!216323 (or b!5723625 b_lambda!216391)))

(assert (=> d!1806092 d!1805754))

(declare-fun b_lambda!216393 () Bool)

(assert (= b_lambda!216375 (or b!5723625 b_lambda!216393)))

(assert (=> d!1806296 d!1805750))

(declare-fun b_lambda!216395 () Bool)

(assert (= b_lambda!216371 (or b!5723625 b_lambda!216395)))

(assert (=> d!1806266 d!1805752))

(declare-fun b_lambda!216397 () Bool)

(assert (= b_lambda!216379 (or d!1805580 b_lambda!216397)))

(declare-fun bs!1339081 () Bool)

(declare-fun d!1806388 () Bool)

(assert (= bs!1339081 (and d!1806388 d!1805580)))

(assert (=> bs!1339081 (= (dynLambda!24788 lambda!309402 (h!69786 (exprs!5605 (h!69787 zl!343)))) (validRegex!7457 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(declare-fun m!6678608 () Bool)

(assert (=> bs!1339081 m!6678608))

(assert (=> b!5725812 d!1806388))

(declare-fun b_lambda!216399 () Bool)

(assert (= b_lambda!216345 (or b!5723588 b_lambda!216399)))

(declare-fun bs!1339082 () Bool)

(declare-fun d!1806390 () Bool)

(assert (= bs!1339082 (and d!1806390 b!5723588)))

(assert (=> bs!1339082 (= (dynLambda!24788 lambda!309371 (h!69786 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))) (validRegex!7457 (h!69786 (Cons!63338 (reg!16050 (regOne!31954 r!7292)) Nil!63338))))))

(declare-fun m!6678610 () Bool)

(assert (=> bs!1339082 m!6678610))

(assert (=> b!5725315 d!1806390))

(declare-fun b_lambda!216401 () Bool)

(assert (= b_lambda!216373 (or b!5723625 b_lambda!216401)))

(assert (=> d!1806274 d!1805748))

(declare-fun b_lambda!216403 () Bool)

(assert (= b_lambda!216327 (or d!1805728 b_lambda!216403)))

(declare-fun bs!1339083 () Bool)

(declare-fun d!1806392 () Bool)

(assert (= bs!1339083 (and d!1806392 d!1805728)))

(assert (=> bs!1339083 (= (dynLambda!24788 lambda!309442 (h!69786 (unfocusZipperList!1149 zl!343))) (validRegex!7457 (h!69786 (unfocusZipperList!1149 zl!343))))))

(declare-fun m!6678612 () Bool)

(assert (=> bs!1339083 m!6678612))

(assert (=> b!5725146 d!1806392))

(declare-fun b_lambda!216405 () Bool)

(assert (= b_lambda!216329 (or d!1805682 b_lambda!216405)))

(declare-fun bs!1339084 () Bool)

(declare-fun d!1806394 () Bool)

(assert (= bs!1339084 (and d!1806394 d!1805682)))

(assert (=> bs!1339084 (= (dynLambda!24788 lambda!309424 (h!69786 (exprs!5605 (h!69787 zl!343)))) (validRegex!7457 (h!69786 (exprs!5605 (h!69787 zl!343)))))))

(assert (=> bs!1339084 m!6678608))

(assert (=> b!5725148 d!1806394))

(check-sat (not d!1806178) (not b!5725884) (not b!5725903) (not d!1806116) (not b!5725243) (not bm!437721) (not b!5725866) (not bm!437701) (not b!5725696) (not b!5725296) (not b!5725895) (not b!5725815) (not d!1806014) (not b!5725314) (not bm!437703) (not b!5725595) (not b!5725666) (not d!1806372) (not b!5725929) (not b!5725442) (not b!5725386) (not bm!437788) (not bm!437792) (not b!5725826) (not b_lambda!216393) (not b!5725851) (not b_lambda!216397) (not b!5725435) (not setNonEmpty!38388) (not d!1806266) (not b!5725162) (not b!5724820) (not setNonEmpty!38387) (not b!5725763) (not b!5725822) (not b!5725892) (not b!5725821) (not d!1806130) (not d!1806022) (not bm!437752) (not d!1806300) (not b_lambda!216387) (not bm!437625) (not b_lambda!216305) (not b!5724785) (not b!5725880) (not d!1806092) (not b!5725680) (not setNonEmpty!38376) (not b!5725701) (not b!5724775) (not b!5725207) (not b!5725916) (not b!5724982) (not b!5725915) (not b!5725791) (not bm!437623) (not bm!437724) (not bm!437708) (not b!5724998) (not bm!437610) (not d!1806380) (not b!5725793) (not bm!437586) (not b!5725874) (not b!5725931) (not b!5725303) (not b!5725768) (not d!1805958) (not bm!437673) (not bm!437772) (not b!5725854) (not d!1806330) (not b!5725893) (not b!5724983) (not b!5724975) (not d!1806242) (not b!5725218) (not b!5725291) (not bm!437611) (not b!5725909) (not b!5725872) (not d!1806268) (not b!5725823) (not b!5725933) (not b!5725835) (not d!1806244) (not b!5724821) (not b!5725897) (not bm!437664) (not d!1806282) (not d!1806170) (not bm!437590) (not d!1806164) (not b!5725708) (not b!5725816) (not bm!437794) (not b!5724935) (not b!5725885) (not b!5725645) (not d!1806232) (not b!5724835) (not b!5725664) (not b!5725034) (not b!5725033) (not b!5724864) (not b!5725586) (not b!5725843) (not b!5725322) (not b!5725871) (not bm!437778) (not bm!437747) (not bm!437718) (not b!5725919) (not d!1806350) (not b!5725676) (not bs!1339080) (not bm!437754) (not b!5725705) (not bm!437775) (not b!5725234) (not b!5725316) (not b!5725795) (not b!5725879) (not b!5725863) (not b!5725584) (not bm!437770) (not b!5725620) (not bm!437688) (not b!5725387) (not d!1806246) (not d!1806332) (not b!5725882) (not b!5725912) (not b!5725644) (not b!5725450) (not bm!437742) (not b!5725847) (not b!5725875) (not b!5725767) (not b!5725624) (not b!5725298) (not b!5725839) (not bm!437743) (not bm!437745) (not b!5725621) (not d!1806316) (not b!5725037) (not b!5725384) (not bm!437651) (not d!1806324) (not b!5725764) (not b!5725619) (not b!5725109) (not bm!437789) (not b!5725836) (not b!5725747) (not b!5724773) (not d!1806028) (not d!1806216) (not d!1806376) (not b_lambda!216403) (not b!5724715) (not d!1806374) (not b!5725592) (not d!1805916) (not b!5725039) (not b!5725434) (not bm!437700) (not b!5725827) (not d!1806318) (not d!1806154) (not b!5725901) (not b!5725633) (not b!5725900) (not b!5725010) (not b_lambda!216307) (not b_lambda!216391) (not b!5725129) (not b!5724761) (not b!5725232) (not b!5724995) (not b!5725383) (not b!5724854) (not b!5725582) (not d!1806086) (not d!1806264) (not bm!437779) (not bm!437613) (not b!5725244) (not b!5725698) (not d!1806348) (not b_lambda!216395) (not b!5725886) (not bm!437717) (not b!5725041) (not bm!437706) (not d!1806358) (not bm!437647) (not bm!437763) (not b!5725596) (not b!5725585) (not setNonEmpty!38389) (not d!1806270) (not d!1806056) (not bm!437666) (not d!1805938) (not d!1806278) (not d!1805972) (not bm!437773) (not bm!437781) (not b!5725832) (not bm!437686) (not b!5725242) (not b!5724980) (not b!5725782) (not d!1806002) (not b!5725702) (not b!5725864) (not d!1806296) (not b!5724836) (not b!5725040) (not bm!437749) (not d!1806274) (not b!5724714) (not b!5725848) (not b_lambda!216301) (not d!1806326) (not b!5725913) (not b!5725032) (not b!5725423) (not b!5724771) (not b!5725762) (not bm!437748) (not b!5725908) (not b!5724834) (not b!5725924) (not b!5725813) (not d!1805918) (not b!5725374) (not b!5725643) (not b!5725292) (not b!5724936) (not setNonEmpty!38377) (not b!5725888) (not d!1806354) (not b!5725147) (not b!5725878) (not d!1806068) (not b!5725697) (not bm!437731) (not b!5725838) (not b!5725932) (not bm!437761) (not d!1806052) (not d!1805948) (not b!5725056) (not setNonEmpty!38381) (not bm!437766) (not b!5725794) (not bm!437588) (not bm!437685) (not b!5725694) (not b!5724939) (not b!5725925) (not b!5725867) (not b!5725859) (not bm!437787) (not b!5725773) (not b_lambda!216405) (not d!1805934) (not bm!437730) (not b!5724977) (not bm!437791) (not bm!437589) (not b!5725287) (not bm!437650) (not b!5725654) (not b!5725299) (not bm!437769) (not d!1805994) (not b!5725840) (not b!5725907) (not d!1806284) (not b!5725646) (not d!1806150) (not b_lambda!216401) (not b!5725858) (not bm!437684) (not b!5724863) (not b!5724940) (not b!5725819) (not b!5725241) (not d!1805968) (not d!1806136) (not b!5725855) (not b!5724994) (not bm!437746) (not b!5725860) (not b!5725921) (not b!5725856) (not bm!437758) (not b!5725679) (not b!5725593) (not bm!437644) (not bs!1339079) (not d!1806188) (not bm!437645) (not b!5725222) (not b!5725850) (not d!1806362) (not b!5725300) (not b!5725890) (not d!1806220) (not bm!437790) (not b!5724732) (not bm!437732) (not b_lambda!216303) (not b!5725736) (not b_lambda!216399) (not d!1806196) (not b!5725927) (not b!5725923) (not b!5725167) (not b!5725323) (not d!1806118) (not b!5725235) (not b!5725439) (not b!5725079) (not b!5724885) (not b!5725844) (not b!5725642) (not b!5725870) (not b!5725700) (not b!5725154) (not b!5725293) (not bs!1339081) (not bs!1339084) (not b!5725667) (not d!1805940) (not d!1806286) (not b!5725693) (not b!5725824) (not b!5725868) (not b_lambda!216385) (not b!5725652) (not b!5725618) (not d!1806140) (not bm!437793) (not b!5725896) (not bm!437784) (not b!5725911) (not d!1806158) (not b_lambda!216309) (not b_lambda!216389) (not b!5725899) (not b!5725278) (not b!5725891) (not d!1805988) (not bm!437672) (not b!5725217) (not bm!437767) (not d!1806070) (not b!5725616) (not d!1806294) (not d!1805926) (not b!5725149) (not b!5724762) (not b!5725685) (not b!5724774) (not b!5725828) (not b!5725905) (not d!1806280) (not b!5725928) (not b!5725904) (not b!5725733) (not b!5725678) (not d!1806352) (not b_lambda!216383) (not b!5725151) (not d!1806234) (not bm!437786) (not b!5725019) (not bm!437585) (not b!5725920) (not b!5725876) (not b!5725236) (not b!5725187) (not bm!437683) (not d!1806344) (not b!5724725) (not b!5725820) (not bm!437720) (not d!1806364) (not b!5725862) (not bs!1339078) (not d!1805954) (not b!5725656) (not b!5725719) (not b!5725852) (not b!5725589) (not b!5725917) (not b!5725752) (not b!5725765) (not bm!437622) (not d!1806034) (not b!5725810) tp_is_empty!40695 (not bm!437751) (not b!5724981) (not bm!437679) (not bm!437757) (not bs!1339082) (not b!5725834) (not bm!437760) (not b!5725239) (not b!5725662) (not bm!437785) (not b!5725887) (not b!5725591) (not b!5725830) (not b!5725223) (not b!5725385) (not b!5725745) (not bs!1339083) (not b!5725846) (not b!5725781) (not b!5725438) (not b!5725883) (not b!5725600) (not bm!437663) (not b!5725188) (not b!5724724) (not b!5724772) (not b!5724783) (not b!5725792) (not b!5725744) (not b!5725842) (not b!5725831) (not bm!437678) (not bm!437707) (not b!5725761) (not b!5725677))
(check-sat)
