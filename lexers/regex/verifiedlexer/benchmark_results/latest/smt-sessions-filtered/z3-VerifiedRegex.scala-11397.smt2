; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!608936 () Bool)

(assert start!608936)

(declare-fun b!6075653 () Bool)

(assert (=> b!6075653 true))

(assert (=> b!6075653 true))

(declare-fun lambda!331180 () Int)

(declare-fun lambda!331179 () Int)

(assert (=> b!6075653 (not (= lambda!331180 lambda!331179))))

(assert (=> b!6075653 true))

(assert (=> b!6075653 true))

(declare-fun b!6075648 () Bool)

(assert (=> b!6075648 true))

(declare-fun b!6075643 () Bool)

(declare-fun e!3707789 () Bool)

(declare-fun tp!1693543 () Bool)

(declare-fun tp!1693544 () Bool)

(assert (=> b!6075643 (= e!3707789 (and tp!1693543 tp!1693544))))

(declare-fun b!6075644 () Bool)

(declare-fun tp!1693542 () Bool)

(assert (=> b!6075644 (= e!3707789 tp!1693542)))

(declare-fun b!6075645 () Bool)

(declare-fun res!2524491 () Bool)

(declare-fun e!3707791 () Bool)

(assert (=> b!6075645 (=> res!2524491 e!3707791)))

(declare-datatypes ((C!32352 0))(
  ( (C!32353 (val!25878 Int)) )
))
(declare-datatypes ((Regex!16041 0))(
  ( (ElementMatch!16041 (c!1090407 C!32352)) (Concat!24886 (regOne!32594 Regex!16041) (regTwo!32594 Regex!16041)) (EmptyExpr!16041) (Star!16041 (reg!16370 Regex!16041)) (EmptyLang!16041) (Union!16041 (regOne!32595 Regex!16041) (regTwo!32595 Regex!16041)) )
))
(declare-fun r!7292 () Regex!16041)

(get-info :version)

(assert (=> b!6075645 (= res!2524491 (or ((_ is EmptyExpr!16041) r!7292) ((_ is EmptyLang!16041) r!7292) ((_ is ElementMatch!16041) r!7292) ((_ is Union!16041) r!7292) (not ((_ is Concat!24886) r!7292))))))

(declare-fun setIsEmpty!41082 () Bool)

(declare-fun setRes!41082 () Bool)

(assert (=> setIsEmpty!41082 setRes!41082))

(declare-fun b!6075646 () Bool)

(declare-fun tp_is_empty!41335 () Bool)

(assert (=> b!6075646 (= e!3707789 tp_is_empty!41335)))

(declare-fun e!3707786 () Bool)

(declare-fun e!3707794 () Bool)

(assert (=> b!6075648 (= e!3707786 e!3707794)))

(declare-fun res!2524499 () Bool)

(assert (=> b!6075648 (=> res!2524499 e!3707794)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64422 0))(
  ( (Nil!64298) (Cons!64298 (h!70746 Regex!16041) (t!377865 List!64422)) )
))
(declare-datatypes ((Context!10850 0))(
  ( (Context!10851 (exprs!5925 List!64422)) )
))
(declare-fun lt!2326808 () (InoxSet Context!10850))

(declare-fun lt!2326820 () (InoxSet Context!10850))

(assert (=> b!6075648 (= res!2524499 (not (= lt!2326808 lt!2326820)))))

(declare-datatypes ((List!64423 0))(
  ( (Nil!64299) (Cons!64299 (h!70747 C!32352) (t!377866 List!64423)) )
))
(declare-fun s!2326 () List!64423)

(declare-fun z!1189 () (InoxSet Context!10850))

(declare-fun lambda!331181 () Int)

(declare-datatypes ((List!64424 0))(
  ( (Nil!64300) (Cons!64300 (h!70748 Context!10850) (t!377867 List!64424)) )
))
(declare-fun zl!343 () List!64424)

(declare-fun flatMap!1554 ((InoxSet Context!10850) Int) (InoxSet Context!10850))

(declare-fun derivationStepZipperUp!1217 (Context!10850 C!32352) (InoxSet Context!10850))

(assert (=> b!6075648 (= (flatMap!1554 z!1189 lambda!331181) (derivationStepZipperUp!1217 (h!70748 zl!343) (h!70747 s!2326)))))

(declare-datatypes ((Unit!157353 0))(
  ( (Unit!157354) )
))
(declare-fun lt!2326822 () Unit!157353)

(declare-fun lemmaFlatMapOnSingletonSet!1080 ((InoxSet Context!10850) Context!10850 Int) Unit!157353)

(assert (=> b!6075648 (= lt!2326822 (lemmaFlatMapOnSingletonSet!1080 z!1189 (h!70748 zl!343) lambda!331181))))

(declare-fun b!6075649 () Bool)

(declare-fun res!2524501 () Bool)

(declare-fun e!3707788 () Bool)

(assert (=> b!6075649 (=> res!2524501 e!3707788)))

(declare-fun isEmpty!36209 (List!64422) Bool)

(assert (=> b!6075649 (= res!2524501 (not (isEmpty!36209 (t!377865 (exprs!5925 (h!70748 zl!343))))))))

(declare-fun b!6075650 () Bool)

(declare-fun e!3707793 () Bool)

(declare-fun tp!1693548 () Bool)

(assert (=> b!6075650 (= e!3707793 tp!1693548)))

(declare-fun b!6075651 () Bool)

(declare-fun e!3707790 () Bool)

(assert (=> b!6075651 (= e!3707790 (not e!3707791))))

(declare-fun res!2524493 () Bool)

(assert (=> b!6075651 (=> res!2524493 e!3707791)))

(assert (=> b!6075651 (= res!2524493 (not ((_ is Cons!64300) zl!343)))))

(declare-fun lt!2326824 () Bool)

(declare-fun matchRSpec!3142 (Regex!16041 List!64423) Bool)

(assert (=> b!6075651 (= lt!2326824 (matchRSpec!3142 r!7292 s!2326))))

(declare-fun matchR!8224 (Regex!16041 List!64423) Bool)

(assert (=> b!6075651 (= lt!2326824 (matchR!8224 r!7292 s!2326))))

(declare-fun lt!2326810 () Unit!157353)

(declare-fun mainMatchTheorem!3142 (Regex!16041 List!64423) Unit!157353)

(assert (=> b!6075651 (= lt!2326810 (mainMatchTheorem!3142 r!7292 s!2326))))

(declare-fun b!6075652 () Bool)

(assert (=> b!6075652 (= e!3707788 e!3707786)))

(declare-fun res!2524504 () Bool)

(assert (=> b!6075652 (=> res!2524504 e!3707786)))

(declare-fun lt!2326814 () (InoxSet Context!10850))

(assert (=> b!6075652 (= res!2524504 (not (= lt!2326814 lt!2326820)))))

(declare-fun lt!2326831 () Context!10850)

(declare-fun derivationStepZipperDown!1291 (Regex!16041 Context!10850 C!32352) (InoxSet Context!10850))

(assert (=> b!6075652 (= lt!2326820 (derivationStepZipperDown!1291 r!7292 lt!2326831 (h!70747 s!2326)))))

(assert (=> b!6075652 (= lt!2326831 (Context!10851 Nil!64298))))

(declare-fun lt!2326827 () Context!10850)

(assert (=> b!6075652 (= lt!2326814 (derivationStepZipperUp!1217 lt!2326827 (h!70747 s!2326)))))

(declare-fun lt!2326805 () List!64422)

(assert (=> b!6075652 (= lt!2326827 (Context!10851 lt!2326805))))

(assert (=> b!6075652 (= lt!2326805 (Cons!64298 r!7292 Nil!64298))))

(declare-fun derivationStepZipper!2022 ((InoxSet Context!10850) C!32352) (InoxSet Context!10850))

(assert (=> b!6075652 (= lt!2326808 (derivationStepZipper!2022 z!1189 (h!70747 s!2326)))))

(assert (=> b!6075653 (= e!3707791 e!3707788)))

(declare-fun res!2524502 () Bool)

(assert (=> b!6075653 (=> res!2524502 e!3707788)))

(declare-fun lt!2326812 () Bool)

(assert (=> b!6075653 (= res!2524502 (or (not (= lt!2326824 lt!2326812)) ((_ is Nil!64299) s!2326)))))

(declare-fun Exists!3111 (Int) Bool)

(assert (=> b!6075653 (= (Exists!3111 lambda!331179) (Exists!3111 lambda!331180))))

(declare-fun lt!2326823 () Unit!157353)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1648 (Regex!16041 Regex!16041 List!64423) Unit!157353)

(assert (=> b!6075653 (= lt!2326823 (lemmaExistCutMatchRandMatchRSpecEquivalent!1648 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326))))

(assert (=> b!6075653 (= lt!2326812 (Exists!3111 lambda!331179))))

(declare-datatypes ((tuple2!66040 0))(
  ( (tuple2!66041 (_1!36323 List!64423) (_2!36323 List!64423)) )
))
(declare-datatypes ((Option!15932 0))(
  ( (None!15931) (Some!15931 (v!52058 tuple2!66040)) )
))
(declare-fun isDefined!12635 (Option!15932) Bool)

(declare-fun findConcatSeparation!2346 (Regex!16041 Regex!16041 List!64423 List!64423 List!64423) Option!15932)

(assert (=> b!6075653 (= lt!2326812 (isDefined!12635 (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) Nil!64299 s!2326 s!2326)))))

(declare-fun lt!2326813 () Unit!157353)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2110 (Regex!16041 Regex!16041 List!64423) Unit!157353)

(assert (=> b!6075653 (= lt!2326813 (lemmaFindConcatSeparationEquivalentToExists!2110 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326))))

(declare-fun b!6075654 () Bool)

(declare-fun res!2524494 () Bool)

(assert (=> b!6075654 (=> res!2524494 e!3707791)))

(declare-fun isEmpty!36210 (List!64424) Bool)

(assert (=> b!6075654 (= res!2524494 (not (isEmpty!36210 (t!377867 zl!343))))))

(declare-fun b!6075655 () Bool)

(declare-fun e!3707796 () Bool)

(assert (=> b!6075655 (= e!3707794 e!3707796)))

(declare-fun res!2524498 () Bool)

(assert (=> b!6075655 (=> res!2524498 e!3707796)))

(declare-fun nullable!6036 (Regex!16041) Bool)

(assert (=> b!6075655 (= res!2524498 (nullable!6036 (regOne!32594 r!7292)))))

(declare-fun lt!2326815 () (InoxSet Context!10850))

(assert (=> b!6075655 (= lt!2326815 (derivationStepZipperDown!1291 (regTwo!32594 r!7292) lt!2326831 (h!70747 s!2326)))))

(declare-fun lt!2326825 () Context!10850)

(declare-fun lt!2326811 () (InoxSet Context!10850))

(assert (=> b!6075655 (= lt!2326811 (derivationStepZipperDown!1291 (regOne!32594 r!7292) lt!2326825 (h!70747 s!2326)))))

(declare-fun lt!2326829 () (InoxSet Context!10850))

(assert (=> b!6075655 (= (flatMap!1554 lt!2326829 lambda!331181) (derivationStepZipperUp!1217 lt!2326825 (h!70747 s!2326)))))

(declare-fun lt!2326830 () Unit!157353)

(assert (=> b!6075655 (= lt!2326830 (lemmaFlatMapOnSingletonSet!1080 lt!2326829 lt!2326825 lambda!331181))))

(declare-fun lt!2326821 () (InoxSet Context!10850))

(declare-fun lt!2326828 () Context!10850)

(assert (=> b!6075655 (= (flatMap!1554 lt!2326821 lambda!331181) (derivationStepZipperUp!1217 lt!2326828 (h!70747 s!2326)))))

(declare-fun lt!2326806 () Unit!157353)

(assert (=> b!6075655 (= lt!2326806 (lemmaFlatMapOnSingletonSet!1080 lt!2326821 lt!2326828 lambda!331181))))

(declare-fun lt!2326826 () (InoxSet Context!10850))

(assert (=> b!6075655 (= lt!2326826 (derivationStepZipperUp!1217 lt!2326825 (h!70747 s!2326)))))

(declare-fun lt!2326816 () (InoxSet Context!10850))

(assert (=> b!6075655 (= lt!2326816 (derivationStepZipperUp!1217 lt!2326828 (h!70747 s!2326)))))

(assert (=> b!6075655 (= lt!2326829 (store ((as const (Array Context!10850 Bool)) false) lt!2326825 true))))

(declare-fun lt!2326818 () List!64422)

(assert (=> b!6075655 (= lt!2326825 (Context!10851 lt!2326818))))

(assert (=> b!6075655 (= lt!2326821 (store ((as const (Array Context!10850 Bool)) false) lt!2326828 true))))

(assert (=> b!6075655 (= lt!2326828 (Context!10851 (Cons!64298 (regOne!32594 r!7292) lt!2326818)))))

(assert (=> b!6075655 (= lt!2326818 (Cons!64298 (regTwo!32594 r!7292) Nil!64298))))

(declare-fun tp!1693549 () Bool)

(declare-fun b!6075656 () Bool)

(declare-fun e!3707797 () Bool)

(declare-fun inv!83349 (Context!10850) Bool)

(assert (=> b!6075656 (= e!3707797 (and (inv!83349 (h!70748 zl!343)) e!3707793 tp!1693549))))

(declare-fun b!6075657 () Bool)

(declare-fun e!3707795 () Bool)

(assert (=> b!6075657 (= e!3707795 e!3707790)))

(declare-fun res!2524503 () Bool)

(assert (=> b!6075657 (=> (not res!2524503) (not e!3707790))))

(declare-fun lt!2326809 () Regex!16041)

(assert (=> b!6075657 (= res!2524503 (= r!7292 lt!2326809))))

(declare-fun unfocusZipper!1783 (List!64424) Regex!16041)

(assert (=> b!6075657 (= lt!2326809 (unfocusZipper!1783 zl!343))))

(declare-fun b!6075658 () Bool)

(declare-fun tp!1693546 () Bool)

(declare-fun tp!1693551 () Bool)

(assert (=> b!6075658 (= e!3707789 (and tp!1693546 tp!1693551))))

(declare-fun b!6075659 () Bool)

(declare-fun e!3707798 () Bool)

(declare-fun tp!1693545 () Bool)

(assert (=> b!6075659 (= e!3707798 (and tp_is_empty!41335 tp!1693545))))

(declare-fun b!6075660 () Bool)

(declare-fun res!2524500 () Bool)

(assert (=> b!6075660 (=> (not res!2524500) (not e!3707795))))

(declare-fun toList!9825 ((InoxSet Context!10850)) List!64424)

(assert (=> b!6075660 (= res!2524500 (= (toList!9825 z!1189) zl!343))))

(declare-fun b!6075661 () Bool)

(declare-fun res!2524497 () Bool)

(assert (=> b!6075661 (=> res!2524497 e!3707791)))

(declare-fun generalisedConcat!1638 (List!64422) Regex!16041)

(assert (=> b!6075661 (= res!2524497 (not (= r!7292 (generalisedConcat!1638 (exprs!5925 (h!70748 zl!343))))))))

(declare-fun b!6075662 () Bool)

(declare-fun res!2524495 () Bool)

(assert (=> b!6075662 (=> res!2524495 e!3707791)))

(declare-fun generalisedUnion!1885 (List!64422) Regex!16041)

(declare-fun unfocusZipperList!1462 (List!64424) List!64422)

(assert (=> b!6075662 (= res!2524495 (not (= r!7292 (generalisedUnion!1885 (unfocusZipperList!1462 zl!343)))))))

(declare-fun e!3707787 () Bool)

(declare-fun tp!1693550 () Bool)

(declare-fun setNonEmpty!41082 () Bool)

(declare-fun setElem!41082 () Context!10850)

(assert (=> setNonEmpty!41082 (= setRes!41082 (and tp!1693550 (inv!83349 setElem!41082) e!3707787))))

(declare-fun setRest!41082 () (InoxSet Context!10850))

(assert (=> setNonEmpty!41082 (= z!1189 ((_ map or) (store ((as const (Array Context!10850 Bool)) false) setElem!41082 true) setRest!41082))))

(declare-fun b!6075647 () Bool)

(declare-fun res!2524505 () Bool)

(assert (=> b!6075647 (=> res!2524505 e!3707791)))

(assert (=> b!6075647 (= res!2524505 (not ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343)))))))

(declare-fun res!2524506 () Bool)

(assert (=> start!608936 (=> (not res!2524506) (not e!3707795))))

(declare-fun validRegex!7777 (Regex!16041) Bool)

(assert (=> start!608936 (= res!2524506 (validRegex!7777 r!7292))))

(assert (=> start!608936 e!3707795))

(assert (=> start!608936 e!3707789))

(declare-fun condSetEmpty!41082 () Bool)

(assert (=> start!608936 (= condSetEmpty!41082 (= z!1189 ((as const (Array Context!10850 Bool)) false)))))

(assert (=> start!608936 setRes!41082))

(assert (=> start!608936 e!3707797))

(assert (=> start!608936 e!3707798))

(declare-fun b!6075663 () Bool)

(declare-fun e!3707792 () Bool)

(assert (=> b!6075663 (= e!3707792 (validRegex!7777 (regTwo!32594 r!7292)))))

(declare-fun lt!2326817 () Regex!16041)

(declare-fun matchZipper!2061 ((InoxSet Context!10850) List!64423) Bool)

(assert (=> b!6075663 (= (matchR!8224 lt!2326817 s!2326) (matchZipper!2061 lt!2326821 s!2326))))

(declare-fun lt!2326807 () Unit!157353)

(declare-fun lt!2326819 () List!64424)

(declare-fun theoremZipperRegexEquiv!717 ((InoxSet Context!10850) List!64424 Regex!16041 List!64423) Unit!157353)

(assert (=> b!6075663 (= lt!2326807 (theoremZipperRegexEquiv!717 lt!2326821 lt!2326819 lt!2326817 s!2326))))

(assert (=> b!6075663 (= lt!2326817 (Concat!24886 (regOne!32594 r!7292) (regTwo!32594 r!7292)))))

(declare-fun b!6075664 () Bool)

(declare-fun res!2524496 () Bool)

(assert (=> b!6075664 (=> res!2524496 e!3707796)))

(assert (=> b!6075664 (= res!2524496 (or (not (= lt!2326808 lt!2326811)) (not (= lt!2326809 r!7292)) (not (= (exprs!5925 (h!70748 zl!343)) lt!2326805))))))

(declare-fun b!6075665 () Bool)

(declare-fun tp!1693547 () Bool)

(assert (=> b!6075665 (= e!3707787 tp!1693547)))

(declare-fun b!6075666 () Bool)

(assert (=> b!6075666 (= e!3707796 e!3707792)))

(declare-fun res!2524492 () Bool)

(assert (=> b!6075666 (=> res!2524492 e!3707792)))

(declare-fun zipperDepth!286 (List!64424) Int)

(assert (=> b!6075666 (= res!2524492 (>= (zipperDepth!286 lt!2326819) (zipperDepth!286 (Cons!64300 lt!2326827 Nil!64300))))))

(assert (=> b!6075666 (= lt!2326819 (Cons!64300 lt!2326828 Nil!64300))))

(assert (= (and start!608936 res!2524506) b!6075660))

(assert (= (and b!6075660 res!2524500) b!6075657))

(assert (= (and b!6075657 res!2524503) b!6075651))

(assert (= (and b!6075651 (not res!2524493)) b!6075654))

(assert (= (and b!6075654 (not res!2524494)) b!6075661))

(assert (= (and b!6075661 (not res!2524497)) b!6075647))

(assert (= (and b!6075647 (not res!2524505)) b!6075662))

(assert (= (and b!6075662 (not res!2524495)) b!6075645))

(assert (= (and b!6075645 (not res!2524491)) b!6075653))

(assert (= (and b!6075653 (not res!2524502)) b!6075649))

(assert (= (and b!6075649 (not res!2524501)) b!6075652))

(assert (= (and b!6075652 (not res!2524504)) b!6075648))

(assert (= (and b!6075648 (not res!2524499)) b!6075655))

(assert (= (and b!6075655 (not res!2524498)) b!6075664))

(assert (= (and b!6075664 (not res!2524496)) b!6075666))

(assert (= (and b!6075666 (not res!2524492)) b!6075663))

(assert (= (and start!608936 ((_ is ElementMatch!16041) r!7292)) b!6075646))

(assert (= (and start!608936 ((_ is Concat!24886) r!7292)) b!6075658))

(assert (= (and start!608936 ((_ is Star!16041) r!7292)) b!6075644))

(assert (= (and start!608936 ((_ is Union!16041) r!7292)) b!6075643))

(assert (= (and start!608936 condSetEmpty!41082) setIsEmpty!41082))

(assert (= (and start!608936 (not condSetEmpty!41082)) setNonEmpty!41082))

(assert (= setNonEmpty!41082 b!6075665))

(assert (= b!6075656 b!6075650))

(assert (= (and start!608936 ((_ is Cons!64300) zl!343)) b!6075656))

(assert (= (and start!608936 ((_ is Cons!64299) s!2326)) b!6075659))

(declare-fun m!6935506 () Bool)

(assert (=> b!6075653 m!6935506))

(declare-fun m!6935508 () Bool)

(assert (=> b!6075653 m!6935508))

(declare-fun m!6935510 () Bool)

(assert (=> b!6075653 m!6935510))

(declare-fun m!6935512 () Bool)

(assert (=> b!6075653 m!6935512))

(assert (=> b!6075653 m!6935506))

(declare-fun m!6935514 () Bool)

(assert (=> b!6075653 m!6935514))

(assert (=> b!6075653 m!6935510))

(declare-fun m!6935516 () Bool)

(assert (=> b!6075653 m!6935516))

(declare-fun m!6935518 () Bool)

(assert (=> setNonEmpty!41082 m!6935518))

(declare-fun m!6935520 () Bool)

(assert (=> b!6075648 m!6935520))

(declare-fun m!6935522 () Bool)

(assert (=> b!6075648 m!6935522))

(declare-fun m!6935524 () Bool)

(assert (=> b!6075648 m!6935524))

(declare-fun m!6935526 () Bool)

(assert (=> b!6075663 m!6935526))

(declare-fun m!6935528 () Bool)

(assert (=> b!6075663 m!6935528))

(declare-fun m!6935530 () Bool)

(assert (=> b!6075663 m!6935530))

(declare-fun m!6935532 () Bool)

(assert (=> b!6075663 m!6935532))

(declare-fun m!6935534 () Bool)

(assert (=> b!6075651 m!6935534))

(declare-fun m!6935536 () Bool)

(assert (=> b!6075651 m!6935536))

(declare-fun m!6935538 () Bool)

(assert (=> b!6075651 m!6935538))

(declare-fun m!6935540 () Bool)

(assert (=> b!6075661 m!6935540))

(declare-fun m!6935542 () Bool)

(assert (=> b!6075656 m!6935542))

(declare-fun m!6935544 () Bool)

(assert (=> b!6075660 m!6935544))

(declare-fun m!6935546 () Bool)

(assert (=> b!6075654 m!6935546))

(declare-fun m!6935548 () Bool)

(assert (=> b!6075666 m!6935548))

(declare-fun m!6935550 () Bool)

(assert (=> b!6075666 m!6935550))

(declare-fun m!6935552 () Bool)

(assert (=> b!6075657 m!6935552))

(declare-fun m!6935554 () Bool)

(assert (=> b!6075649 m!6935554))

(declare-fun m!6935556 () Bool)

(assert (=> b!6075655 m!6935556))

(declare-fun m!6935558 () Bool)

(assert (=> b!6075655 m!6935558))

(declare-fun m!6935560 () Bool)

(assert (=> b!6075655 m!6935560))

(declare-fun m!6935562 () Bool)

(assert (=> b!6075655 m!6935562))

(declare-fun m!6935564 () Bool)

(assert (=> b!6075655 m!6935564))

(declare-fun m!6935566 () Bool)

(assert (=> b!6075655 m!6935566))

(declare-fun m!6935568 () Bool)

(assert (=> b!6075655 m!6935568))

(declare-fun m!6935570 () Bool)

(assert (=> b!6075655 m!6935570))

(declare-fun m!6935572 () Bool)

(assert (=> b!6075655 m!6935572))

(declare-fun m!6935574 () Bool)

(assert (=> b!6075655 m!6935574))

(declare-fun m!6935576 () Bool)

(assert (=> b!6075655 m!6935576))

(declare-fun m!6935578 () Bool)

(assert (=> start!608936 m!6935578))

(declare-fun m!6935580 () Bool)

(assert (=> b!6075652 m!6935580))

(declare-fun m!6935582 () Bool)

(assert (=> b!6075652 m!6935582))

(declare-fun m!6935584 () Bool)

(assert (=> b!6075652 m!6935584))

(declare-fun m!6935586 () Bool)

(assert (=> b!6075662 m!6935586))

(assert (=> b!6075662 m!6935586))

(declare-fun m!6935588 () Bool)

(assert (=> b!6075662 m!6935588))

(check-sat (not b!6075657) (not b!6075662) (not b!6075661) (not b!6075659) (not b!6075653) (not setNonEmpty!41082) (not b!6075650) (not b!6075663) (not b!6075654) (not b!6075666) (not b!6075656) (not start!608936) (not b!6075658) (not b!6075652) (not b!6075649) (not b!6075644) (not b!6075651) (not b!6075648) (not b!6075655) tp_is_empty!41335 (not b!6075660) (not b!6075643) (not b!6075665))
(check-sat)
(get-model)

(declare-fun d!1904818 () Bool)

(declare-fun lt!2326834 () Regex!16041)

(assert (=> d!1904818 (validRegex!7777 lt!2326834)))

(assert (=> d!1904818 (= lt!2326834 (generalisedUnion!1885 (unfocusZipperList!1462 zl!343)))))

(assert (=> d!1904818 (= (unfocusZipper!1783 zl!343) lt!2326834)))

(declare-fun bs!1504426 () Bool)

(assert (= bs!1504426 d!1904818))

(declare-fun m!6935590 () Bool)

(assert (=> bs!1504426 m!6935590))

(assert (=> bs!1504426 m!6935586))

(assert (=> bs!1504426 m!6935586))

(assert (=> bs!1504426 m!6935588))

(assert (=> b!6075657 d!1904818))

(declare-fun d!1904820 () Bool)

(declare-fun choose!45261 ((InoxSet Context!10850) Int) (InoxSet Context!10850))

(assert (=> d!1904820 (= (flatMap!1554 z!1189 lambda!331181) (choose!45261 z!1189 lambda!331181))))

(declare-fun bs!1504427 () Bool)

(assert (= bs!1504427 d!1904820))

(declare-fun m!6935592 () Bool)

(assert (=> bs!1504427 m!6935592))

(assert (=> b!6075648 d!1904820))

(declare-fun b!6075683 () Bool)

(declare-fun e!3707806 () Bool)

(assert (=> b!6075683 (= e!3707806 (nullable!6036 (h!70746 (exprs!5925 (h!70748 zl!343)))))))

(declare-fun b!6075684 () Bool)

(declare-fun e!3707807 () (InoxSet Context!10850))

(assert (=> b!6075684 (= e!3707807 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075685 () Bool)

(declare-fun e!3707805 () (InoxSet Context!10850))

(assert (=> b!6075685 (= e!3707805 e!3707807)))

(declare-fun c!1090412 () Bool)

(assert (=> b!6075685 (= c!1090412 ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343))))))

(declare-fun b!6075686 () Bool)

(declare-fun call!500052 () (InoxSet Context!10850))

(assert (=> b!6075686 (= e!3707807 call!500052)))

(declare-fun b!6075687 () Bool)

(assert (=> b!6075687 (= e!3707805 ((_ map or) call!500052 (derivationStepZipperUp!1217 (Context!10851 (t!377865 (exprs!5925 (h!70748 zl!343)))) (h!70747 s!2326))))))

(declare-fun bm!500047 () Bool)

(assert (=> bm!500047 (= call!500052 (derivationStepZipperDown!1291 (h!70746 (exprs!5925 (h!70748 zl!343))) (Context!10851 (t!377865 (exprs!5925 (h!70748 zl!343)))) (h!70747 s!2326)))))

(declare-fun d!1904822 () Bool)

(declare-fun c!1090413 () Bool)

(assert (=> d!1904822 (= c!1090413 e!3707806)))

(declare-fun res!2524509 () Bool)

(assert (=> d!1904822 (=> (not res!2524509) (not e!3707806))))

(assert (=> d!1904822 (= res!2524509 ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343))))))

(assert (=> d!1904822 (= (derivationStepZipperUp!1217 (h!70748 zl!343) (h!70747 s!2326)) e!3707805)))

(assert (= (and d!1904822 res!2524509) b!6075683))

(assert (= (and d!1904822 c!1090413) b!6075687))

(assert (= (and d!1904822 (not c!1090413)) b!6075685))

(assert (= (and b!6075685 c!1090412) b!6075686))

(assert (= (and b!6075685 (not c!1090412)) b!6075684))

(assert (= (or b!6075687 b!6075686) bm!500047))

(declare-fun m!6935594 () Bool)

(assert (=> b!6075683 m!6935594))

(declare-fun m!6935596 () Bool)

(assert (=> b!6075687 m!6935596))

(declare-fun m!6935598 () Bool)

(assert (=> bm!500047 m!6935598))

(assert (=> b!6075648 d!1904822))

(declare-fun d!1904824 () Bool)

(declare-fun dynLambda!25285 (Int Context!10850) (InoxSet Context!10850))

(assert (=> d!1904824 (= (flatMap!1554 z!1189 lambda!331181) (dynLambda!25285 lambda!331181 (h!70748 zl!343)))))

(declare-fun lt!2326837 () Unit!157353)

(declare-fun choose!45262 ((InoxSet Context!10850) Context!10850 Int) Unit!157353)

(assert (=> d!1904824 (= lt!2326837 (choose!45262 z!1189 (h!70748 zl!343) lambda!331181))))

(assert (=> d!1904824 (= z!1189 (store ((as const (Array Context!10850 Bool)) false) (h!70748 zl!343) true))))

(assert (=> d!1904824 (= (lemmaFlatMapOnSingletonSet!1080 z!1189 (h!70748 zl!343) lambda!331181) lt!2326837)))

(declare-fun b_lambda!231129 () Bool)

(assert (=> (not b_lambda!231129) (not d!1904824)))

(declare-fun bs!1504428 () Bool)

(assert (= bs!1504428 d!1904824))

(assert (=> bs!1504428 m!6935520))

(declare-fun m!6935600 () Bool)

(assert (=> bs!1504428 m!6935600))

(declare-fun m!6935602 () Bool)

(assert (=> bs!1504428 m!6935602))

(declare-fun m!6935604 () Bool)

(assert (=> bs!1504428 m!6935604))

(assert (=> b!6075648 d!1904824))

(declare-fun d!1904826 () Bool)

(assert (=> d!1904826 (= (flatMap!1554 lt!2326821 lambda!331181) (dynLambda!25285 lambda!331181 lt!2326828))))

(declare-fun lt!2326838 () Unit!157353)

(assert (=> d!1904826 (= lt!2326838 (choose!45262 lt!2326821 lt!2326828 lambda!331181))))

(assert (=> d!1904826 (= lt!2326821 (store ((as const (Array Context!10850 Bool)) false) lt!2326828 true))))

(assert (=> d!1904826 (= (lemmaFlatMapOnSingletonSet!1080 lt!2326821 lt!2326828 lambda!331181) lt!2326838)))

(declare-fun b_lambda!231131 () Bool)

(assert (=> (not b_lambda!231131) (not d!1904826)))

(declare-fun bs!1504429 () Bool)

(assert (= bs!1504429 d!1904826))

(assert (=> bs!1504429 m!6935566))

(declare-fun m!6935606 () Bool)

(assert (=> bs!1504429 m!6935606))

(declare-fun m!6935608 () Bool)

(assert (=> bs!1504429 m!6935608))

(assert (=> bs!1504429 m!6935576))

(assert (=> b!6075655 d!1904826))

(declare-fun d!1904828 () Bool)

(assert (=> d!1904828 (= (flatMap!1554 lt!2326829 lambda!331181) (choose!45261 lt!2326829 lambda!331181))))

(declare-fun bs!1504430 () Bool)

(assert (= bs!1504430 d!1904828))

(declare-fun m!6935610 () Bool)

(assert (=> bs!1504430 m!6935610))

(assert (=> b!6075655 d!1904828))

(declare-fun d!1904830 () Bool)

(assert (=> d!1904830 (= (flatMap!1554 lt!2326821 lambda!331181) (choose!45261 lt!2326821 lambda!331181))))

(declare-fun bs!1504431 () Bool)

(assert (= bs!1504431 d!1904830))

(declare-fun m!6935612 () Bool)

(assert (=> bs!1504431 m!6935612))

(assert (=> b!6075655 d!1904830))

(declare-fun d!1904832 () Bool)

(declare-fun nullableFct!1999 (Regex!16041) Bool)

(assert (=> d!1904832 (= (nullable!6036 (regOne!32594 r!7292)) (nullableFct!1999 (regOne!32594 r!7292)))))

(declare-fun bs!1504432 () Bool)

(assert (= bs!1504432 d!1904832))

(declare-fun m!6935614 () Bool)

(assert (=> bs!1504432 m!6935614))

(assert (=> b!6075655 d!1904832))

(declare-fun b!6075688 () Bool)

(declare-fun e!3707809 () Bool)

(assert (=> b!6075688 (= e!3707809 (nullable!6036 (h!70746 (exprs!5925 lt!2326828))))))

(declare-fun b!6075689 () Bool)

(declare-fun e!3707810 () (InoxSet Context!10850))

(assert (=> b!6075689 (= e!3707810 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075690 () Bool)

(declare-fun e!3707808 () (InoxSet Context!10850))

(assert (=> b!6075690 (= e!3707808 e!3707810)))

(declare-fun c!1090414 () Bool)

(assert (=> b!6075690 (= c!1090414 ((_ is Cons!64298) (exprs!5925 lt!2326828)))))

(declare-fun b!6075691 () Bool)

(declare-fun call!500053 () (InoxSet Context!10850))

(assert (=> b!6075691 (= e!3707810 call!500053)))

(declare-fun b!6075692 () Bool)

(assert (=> b!6075692 (= e!3707808 ((_ map or) call!500053 (derivationStepZipperUp!1217 (Context!10851 (t!377865 (exprs!5925 lt!2326828))) (h!70747 s!2326))))))

(declare-fun bm!500048 () Bool)

(assert (=> bm!500048 (= call!500053 (derivationStepZipperDown!1291 (h!70746 (exprs!5925 lt!2326828)) (Context!10851 (t!377865 (exprs!5925 lt!2326828))) (h!70747 s!2326)))))

(declare-fun d!1904834 () Bool)

(declare-fun c!1090415 () Bool)

(assert (=> d!1904834 (= c!1090415 e!3707809)))

(declare-fun res!2524510 () Bool)

(assert (=> d!1904834 (=> (not res!2524510) (not e!3707809))))

(assert (=> d!1904834 (= res!2524510 ((_ is Cons!64298) (exprs!5925 lt!2326828)))))

(assert (=> d!1904834 (= (derivationStepZipperUp!1217 lt!2326828 (h!70747 s!2326)) e!3707808)))

(assert (= (and d!1904834 res!2524510) b!6075688))

(assert (= (and d!1904834 c!1090415) b!6075692))

(assert (= (and d!1904834 (not c!1090415)) b!6075690))

(assert (= (and b!6075690 c!1090414) b!6075691))

(assert (= (and b!6075690 (not c!1090414)) b!6075689))

(assert (= (or b!6075692 b!6075691) bm!500048))

(declare-fun m!6935616 () Bool)

(assert (=> b!6075688 m!6935616))

(declare-fun m!6935618 () Bool)

(assert (=> b!6075692 m!6935618))

(declare-fun m!6935620 () Bool)

(assert (=> bm!500048 m!6935620))

(assert (=> b!6075655 d!1904834))

(declare-fun b!6075742 () Bool)

(declare-fun e!3707839 () Bool)

(assert (=> b!6075742 (= e!3707839 (nullable!6036 (regOne!32594 (regTwo!32594 r!7292))))))

(declare-fun b!6075743 () Bool)

(declare-fun e!3707843 () (InoxSet Context!10850))

(assert (=> b!6075743 (= e!3707843 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075744 () Bool)

(declare-fun e!3707841 () (InoxSet Context!10850))

(declare-fun call!500071 () (InoxSet Context!10850))

(declare-fun call!500066 () (InoxSet Context!10850))

(assert (=> b!6075744 (= e!3707841 ((_ map or) call!500071 call!500066))))

(declare-fun b!6075745 () Bool)

(declare-fun e!3707838 () (InoxSet Context!10850))

(assert (=> b!6075745 (= e!3707841 e!3707838)))

(declare-fun c!1090433 () Bool)

(assert (=> b!6075745 (= c!1090433 ((_ is Concat!24886) (regTwo!32594 r!7292)))))

(declare-fun bm!500061 () Bool)

(declare-fun call!500068 () (InoxSet Context!10850))

(assert (=> bm!500061 (= call!500068 call!500066)))

(declare-fun d!1904836 () Bool)

(declare-fun c!1090432 () Bool)

(assert (=> d!1904836 (= c!1090432 (and ((_ is ElementMatch!16041) (regTwo!32594 r!7292)) (= (c!1090407 (regTwo!32594 r!7292)) (h!70747 s!2326))))))

(declare-fun e!3707842 () (InoxSet Context!10850))

(assert (=> d!1904836 (= (derivationStepZipperDown!1291 (regTwo!32594 r!7292) lt!2326831 (h!70747 s!2326)) e!3707842)))

(declare-fun bm!500062 () Bool)

(declare-fun c!1090435 () Bool)

(declare-fun call!500070 () List!64422)

(declare-fun c!1090436 () Bool)

(declare-fun call!500067 () (InoxSet Context!10850))

(assert (=> bm!500062 (= call!500067 (derivationStepZipperDown!1291 (ite c!1090435 (regTwo!32595 (regTwo!32594 r!7292)) (ite c!1090436 (regTwo!32594 (regTwo!32594 r!7292)) (ite c!1090433 (regOne!32594 (regTwo!32594 r!7292)) (reg!16370 (regTwo!32594 r!7292))))) (ite (or c!1090435 c!1090436) lt!2326831 (Context!10851 call!500070)) (h!70747 s!2326)))))

(declare-fun bm!500063 () Bool)

(declare-fun call!500069 () List!64422)

(declare-fun $colon$colon!1920 (List!64422 Regex!16041) List!64422)

(assert (=> bm!500063 (= call!500069 ($colon$colon!1920 (exprs!5925 lt!2326831) (ite (or c!1090436 c!1090433) (regTwo!32594 (regTwo!32594 r!7292)) (regTwo!32594 r!7292))))))

(declare-fun b!6075746 () Bool)

(assert (=> b!6075746 (= e!3707842 (store ((as const (Array Context!10850 Bool)) false) lt!2326831 true))))

(declare-fun b!6075747 () Bool)

(assert (=> b!6075747 (= e!3707843 call!500068)))

(declare-fun b!6075748 () Bool)

(assert (=> b!6075748 (= e!3707838 call!500068)))

(declare-fun bm!500064 () Bool)

(assert (=> bm!500064 (= call!500070 call!500069)))

(declare-fun bm!500065 () Bool)

(assert (=> bm!500065 (= call!500066 call!500067)))

(declare-fun b!6075749 () Bool)

(declare-fun c!1090434 () Bool)

(assert (=> b!6075749 (= c!1090434 ((_ is Star!16041) (regTwo!32594 r!7292)))))

(assert (=> b!6075749 (= e!3707838 e!3707843)))

(declare-fun b!6075750 () Bool)

(assert (=> b!6075750 (= c!1090436 e!3707839)))

(declare-fun res!2524528 () Bool)

(assert (=> b!6075750 (=> (not res!2524528) (not e!3707839))))

(assert (=> b!6075750 (= res!2524528 ((_ is Concat!24886) (regTwo!32594 r!7292)))))

(declare-fun e!3707840 () (InoxSet Context!10850))

(assert (=> b!6075750 (= e!3707840 e!3707841)))

(declare-fun bm!500066 () Bool)

(assert (=> bm!500066 (= call!500071 (derivationStepZipperDown!1291 (ite c!1090435 (regOne!32595 (regTwo!32594 r!7292)) (regOne!32594 (regTwo!32594 r!7292))) (ite c!1090435 lt!2326831 (Context!10851 call!500069)) (h!70747 s!2326)))))

(declare-fun b!6075751 () Bool)

(assert (=> b!6075751 (= e!3707842 e!3707840)))

(assert (=> b!6075751 (= c!1090435 ((_ is Union!16041) (regTwo!32594 r!7292)))))

(declare-fun b!6075752 () Bool)

(assert (=> b!6075752 (= e!3707840 ((_ map or) call!500071 call!500067))))

(assert (= (and d!1904836 c!1090432) b!6075746))

(assert (= (and d!1904836 (not c!1090432)) b!6075751))

(assert (= (and b!6075751 c!1090435) b!6075752))

(assert (= (and b!6075751 (not c!1090435)) b!6075750))

(assert (= (and b!6075750 res!2524528) b!6075742))

(assert (= (and b!6075750 c!1090436) b!6075744))

(assert (= (and b!6075750 (not c!1090436)) b!6075745))

(assert (= (and b!6075745 c!1090433) b!6075748))

(assert (= (and b!6075745 (not c!1090433)) b!6075749))

(assert (= (and b!6075749 c!1090434) b!6075747))

(assert (= (and b!6075749 (not c!1090434)) b!6075743))

(assert (= (or b!6075748 b!6075747) bm!500064))

(assert (= (or b!6075748 b!6075747) bm!500061))

(assert (= (or b!6075744 bm!500064) bm!500063))

(assert (= (or b!6075744 bm!500061) bm!500065))

(assert (= (or b!6075752 bm!500065) bm!500062))

(assert (= (or b!6075752 b!6075744) bm!500066))

(declare-fun m!6935650 () Bool)

(assert (=> b!6075742 m!6935650))

(declare-fun m!6935652 () Bool)

(assert (=> bm!500063 m!6935652))

(declare-fun m!6935654 () Bool)

(assert (=> b!6075746 m!6935654))

(declare-fun m!6935656 () Bool)

(assert (=> bm!500066 m!6935656))

(declare-fun m!6935658 () Bool)

(assert (=> bm!500062 m!6935658))

(assert (=> b!6075655 d!1904836))

(declare-fun b!6075753 () Bool)

(declare-fun e!3707845 () Bool)

(assert (=> b!6075753 (= e!3707845 (nullable!6036 (h!70746 (exprs!5925 lt!2326825))))))

(declare-fun b!6075754 () Bool)

(declare-fun e!3707846 () (InoxSet Context!10850))

(assert (=> b!6075754 (= e!3707846 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075755 () Bool)

(declare-fun e!3707844 () (InoxSet Context!10850))

(assert (=> b!6075755 (= e!3707844 e!3707846)))

(declare-fun c!1090437 () Bool)

(assert (=> b!6075755 (= c!1090437 ((_ is Cons!64298) (exprs!5925 lt!2326825)))))

(declare-fun b!6075756 () Bool)

(declare-fun call!500072 () (InoxSet Context!10850))

(assert (=> b!6075756 (= e!3707846 call!500072)))

(declare-fun b!6075757 () Bool)

(assert (=> b!6075757 (= e!3707844 ((_ map or) call!500072 (derivationStepZipperUp!1217 (Context!10851 (t!377865 (exprs!5925 lt!2326825))) (h!70747 s!2326))))))

(declare-fun bm!500067 () Bool)

(assert (=> bm!500067 (= call!500072 (derivationStepZipperDown!1291 (h!70746 (exprs!5925 lt!2326825)) (Context!10851 (t!377865 (exprs!5925 lt!2326825))) (h!70747 s!2326)))))

(declare-fun d!1904846 () Bool)

(declare-fun c!1090438 () Bool)

(assert (=> d!1904846 (= c!1090438 e!3707845)))

(declare-fun res!2524529 () Bool)

(assert (=> d!1904846 (=> (not res!2524529) (not e!3707845))))

(assert (=> d!1904846 (= res!2524529 ((_ is Cons!64298) (exprs!5925 lt!2326825)))))

(assert (=> d!1904846 (= (derivationStepZipperUp!1217 lt!2326825 (h!70747 s!2326)) e!3707844)))

(assert (= (and d!1904846 res!2524529) b!6075753))

(assert (= (and d!1904846 c!1090438) b!6075757))

(assert (= (and d!1904846 (not c!1090438)) b!6075755))

(assert (= (and b!6075755 c!1090437) b!6075756))

(assert (= (and b!6075755 (not c!1090437)) b!6075754))

(assert (= (or b!6075757 b!6075756) bm!500067))

(declare-fun m!6935660 () Bool)

(assert (=> b!6075753 m!6935660))

(declare-fun m!6935662 () Bool)

(assert (=> b!6075757 m!6935662))

(declare-fun m!6935664 () Bool)

(assert (=> bm!500067 m!6935664))

(assert (=> b!6075655 d!1904846))

(declare-fun d!1904848 () Bool)

(assert (=> d!1904848 (= (flatMap!1554 lt!2326829 lambda!331181) (dynLambda!25285 lambda!331181 lt!2326825))))

(declare-fun lt!2326850 () Unit!157353)

(assert (=> d!1904848 (= lt!2326850 (choose!45262 lt!2326829 lt!2326825 lambda!331181))))

(assert (=> d!1904848 (= lt!2326829 (store ((as const (Array Context!10850 Bool)) false) lt!2326825 true))))

(assert (=> d!1904848 (= (lemmaFlatMapOnSingletonSet!1080 lt!2326829 lt!2326825 lambda!331181) lt!2326850)))

(declare-fun b_lambda!231133 () Bool)

(assert (=> (not b_lambda!231133) (not d!1904848)))

(declare-fun bs!1504435 () Bool)

(assert (= bs!1504435 d!1904848))

(assert (=> bs!1504435 m!6935558))

(declare-fun m!6935666 () Bool)

(assert (=> bs!1504435 m!6935666))

(declare-fun m!6935668 () Bool)

(assert (=> bs!1504435 m!6935668))

(assert (=> bs!1504435 m!6935570))

(assert (=> b!6075655 d!1904848))

(declare-fun b!6075762 () Bool)

(declare-fun e!3707850 () Bool)

(assert (=> b!6075762 (= e!3707850 (nullable!6036 (regOne!32594 (regOne!32594 r!7292))))))

(declare-fun b!6075763 () Bool)

(declare-fun e!3707854 () (InoxSet Context!10850))

(assert (=> b!6075763 (= e!3707854 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075764 () Bool)

(declare-fun e!3707852 () (InoxSet Context!10850))

(declare-fun call!500078 () (InoxSet Context!10850))

(declare-fun call!500073 () (InoxSet Context!10850))

(assert (=> b!6075764 (= e!3707852 ((_ map or) call!500078 call!500073))))

(declare-fun b!6075765 () Bool)

(declare-fun e!3707849 () (InoxSet Context!10850))

(assert (=> b!6075765 (= e!3707852 e!3707849)))

(declare-fun c!1090440 () Bool)

(assert (=> b!6075765 (= c!1090440 ((_ is Concat!24886) (regOne!32594 r!7292)))))

(declare-fun bm!500068 () Bool)

(declare-fun call!500075 () (InoxSet Context!10850))

(assert (=> bm!500068 (= call!500075 call!500073)))

(declare-fun d!1904850 () Bool)

(declare-fun c!1090439 () Bool)

(assert (=> d!1904850 (= c!1090439 (and ((_ is ElementMatch!16041) (regOne!32594 r!7292)) (= (c!1090407 (regOne!32594 r!7292)) (h!70747 s!2326))))))

(declare-fun e!3707853 () (InoxSet Context!10850))

(assert (=> d!1904850 (= (derivationStepZipperDown!1291 (regOne!32594 r!7292) lt!2326825 (h!70747 s!2326)) e!3707853)))

(declare-fun bm!500069 () Bool)

(declare-fun c!1090442 () Bool)

(declare-fun call!500077 () List!64422)

(declare-fun call!500074 () (InoxSet Context!10850))

(declare-fun c!1090443 () Bool)

(assert (=> bm!500069 (= call!500074 (derivationStepZipperDown!1291 (ite c!1090442 (regTwo!32595 (regOne!32594 r!7292)) (ite c!1090443 (regTwo!32594 (regOne!32594 r!7292)) (ite c!1090440 (regOne!32594 (regOne!32594 r!7292)) (reg!16370 (regOne!32594 r!7292))))) (ite (or c!1090442 c!1090443) lt!2326825 (Context!10851 call!500077)) (h!70747 s!2326)))))

(declare-fun bm!500070 () Bool)

(declare-fun call!500076 () List!64422)

(assert (=> bm!500070 (= call!500076 ($colon$colon!1920 (exprs!5925 lt!2326825) (ite (or c!1090443 c!1090440) (regTwo!32594 (regOne!32594 r!7292)) (regOne!32594 r!7292))))))

(declare-fun b!6075766 () Bool)

(assert (=> b!6075766 (= e!3707853 (store ((as const (Array Context!10850 Bool)) false) lt!2326825 true))))

(declare-fun b!6075767 () Bool)

(assert (=> b!6075767 (= e!3707854 call!500075)))

(declare-fun b!6075768 () Bool)

(assert (=> b!6075768 (= e!3707849 call!500075)))

(declare-fun bm!500071 () Bool)

(assert (=> bm!500071 (= call!500077 call!500076)))

(declare-fun bm!500072 () Bool)

(assert (=> bm!500072 (= call!500073 call!500074)))

(declare-fun b!6075769 () Bool)

(declare-fun c!1090441 () Bool)

(assert (=> b!6075769 (= c!1090441 ((_ is Star!16041) (regOne!32594 r!7292)))))

(assert (=> b!6075769 (= e!3707849 e!3707854)))

(declare-fun b!6075770 () Bool)

(assert (=> b!6075770 (= c!1090443 e!3707850)))

(declare-fun res!2524534 () Bool)

(assert (=> b!6075770 (=> (not res!2524534) (not e!3707850))))

(assert (=> b!6075770 (= res!2524534 ((_ is Concat!24886) (regOne!32594 r!7292)))))

(declare-fun e!3707851 () (InoxSet Context!10850))

(assert (=> b!6075770 (= e!3707851 e!3707852)))

(declare-fun bm!500073 () Bool)

(assert (=> bm!500073 (= call!500078 (derivationStepZipperDown!1291 (ite c!1090442 (regOne!32595 (regOne!32594 r!7292)) (regOne!32594 (regOne!32594 r!7292))) (ite c!1090442 lt!2326825 (Context!10851 call!500076)) (h!70747 s!2326)))))

(declare-fun b!6075771 () Bool)

(assert (=> b!6075771 (= e!3707853 e!3707851)))

(assert (=> b!6075771 (= c!1090442 ((_ is Union!16041) (regOne!32594 r!7292)))))

(declare-fun b!6075772 () Bool)

(assert (=> b!6075772 (= e!3707851 ((_ map or) call!500078 call!500074))))

(assert (= (and d!1904850 c!1090439) b!6075766))

(assert (= (and d!1904850 (not c!1090439)) b!6075771))

(assert (= (and b!6075771 c!1090442) b!6075772))

(assert (= (and b!6075771 (not c!1090442)) b!6075770))

(assert (= (and b!6075770 res!2524534) b!6075762))

(assert (= (and b!6075770 c!1090443) b!6075764))

(assert (= (and b!6075770 (not c!1090443)) b!6075765))

(assert (= (and b!6075765 c!1090440) b!6075768))

(assert (= (and b!6075765 (not c!1090440)) b!6075769))

(assert (= (and b!6075769 c!1090441) b!6075767))

(assert (= (and b!6075769 (not c!1090441)) b!6075763))

(assert (= (or b!6075768 b!6075767) bm!500071))

(assert (= (or b!6075768 b!6075767) bm!500068))

(assert (= (or b!6075764 bm!500071) bm!500070))

(assert (= (or b!6075764 bm!500068) bm!500072))

(assert (= (or b!6075772 bm!500072) bm!500069))

(assert (= (or b!6075772 b!6075764) bm!500073))

(declare-fun m!6935670 () Bool)

(assert (=> b!6075762 m!6935670))

(declare-fun m!6935672 () Bool)

(assert (=> bm!500070 m!6935672))

(assert (=> b!6075766 m!6935570))

(declare-fun m!6935678 () Bool)

(assert (=> bm!500073 m!6935678))

(declare-fun m!6935680 () Bool)

(assert (=> bm!500069 m!6935680))

(assert (=> b!6075655 d!1904850))

(declare-fun b!6075817 () Bool)

(assert (=> b!6075817 true))

(declare-fun bs!1504442 () Bool)

(declare-fun b!6075819 () Bool)

(assert (= bs!1504442 (and b!6075819 b!6075817)))

(declare-fun lt!2326867 () Int)

(declare-fun lambda!331201 () Int)

(declare-fun lambda!331202 () Int)

(declare-fun lt!2326866 () Int)

(assert (=> bs!1504442 (= (= lt!2326867 lt!2326866) (= lambda!331202 lambda!331201))))

(assert (=> b!6075819 true))

(declare-fun d!1904854 () Bool)

(declare-fun e!3707881 () Bool)

(assert (=> d!1904854 e!3707881))

(declare-fun res!2524551 () Bool)

(assert (=> d!1904854 (=> (not res!2524551) (not e!3707881))))

(assert (=> d!1904854 (= res!2524551 (>= lt!2326867 0))))

(declare-fun e!3707882 () Int)

(assert (=> d!1904854 (= lt!2326867 e!3707882)))

(declare-fun c!1090464 () Bool)

(assert (=> d!1904854 (= c!1090464 ((_ is Cons!64300) lt!2326819))))

(assert (=> d!1904854 (= (zipperDepth!286 lt!2326819) lt!2326867)))

(assert (=> b!6075817 (= e!3707882 lt!2326866)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!180 (Context!10850) Int)

(assert (=> b!6075817 (= lt!2326866 (maxBigInt!0 (contextDepth!180 (h!70748 lt!2326819)) (zipperDepth!286 (t!377867 lt!2326819))))))

(declare-fun lambda!331200 () Int)

(declare-fun lt!2326868 () Unit!157353)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!164 (List!64424 Int Int Int) Unit!157353)

(assert (=> b!6075817 (= lt!2326868 (lemmaForallContextDepthBiggerThanTransitive!164 (t!377867 lt!2326819) lt!2326866 (zipperDepth!286 (t!377867 lt!2326819)) lambda!331200))))

(declare-fun forall!15154 (List!64424 Int) Bool)

(assert (=> b!6075817 (forall!15154 (t!377867 lt!2326819) lambda!331201)))

(declare-fun lt!2326869 () Unit!157353)

(assert (=> b!6075817 (= lt!2326869 lt!2326868)))

(declare-fun b!6075818 () Bool)

(assert (=> b!6075818 (= e!3707882 0)))

(assert (=> b!6075819 (= e!3707881 (forall!15154 lt!2326819 lambda!331202))))

(assert (= (and d!1904854 c!1090464) b!6075817))

(assert (= (and d!1904854 (not c!1090464)) b!6075818))

(assert (= (and d!1904854 res!2524551) b!6075819))

(declare-fun m!6935708 () Bool)

(assert (=> b!6075817 m!6935708))

(declare-fun m!6935710 () Bool)

(assert (=> b!6075817 m!6935710))

(assert (=> b!6075817 m!6935710))

(declare-fun m!6935712 () Bool)

(assert (=> b!6075817 m!6935712))

(assert (=> b!6075817 m!6935708))

(assert (=> b!6075817 m!6935710))

(declare-fun m!6935714 () Bool)

(assert (=> b!6075817 m!6935714))

(declare-fun m!6935716 () Bool)

(assert (=> b!6075817 m!6935716))

(declare-fun m!6935718 () Bool)

(assert (=> b!6075819 m!6935718))

(assert (=> b!6075666 d!1904854))

(declare-fun bs!1504443 () Bool)

(declare-fun b!6075832 () Bool)

(assert (= bs!1504443 (and b!6075832 b!6075817)))

(declare-fun lambda!331205 () Int)

(assert (=> bs!1504443 (= lambda!331205 lambda!331200)))

(declare-fun lt!2326872 () Int)

(declare-fun lambda!331206 () Int)

(assert (=> bs!1504443 (= (= lt!2326872 lt!2326866) (= lambda!331206 lambda!331201))))

(declare-fun bs!1504444 () Bool)

(assert (= bs!1504444 (and b!6075832 b!6075819)))

(assert (=> bs!1504444 (= (= lt!2326872 lt!2326867) (= lambda!331206 lambda!331202))))

(assert (=> b!6075832 true))

(declare-fun bs!1504445 () Bool)

(declare-fun b!6075834 () Bool)

(assert (= bs!1504445 (and b!6075834 b!6075817)))

(declare-fun lt!2326873 () Int)

(declare-fun lambda!331207 () Int)

(assert (=> bs!1504445 (= (= lt!2326873 lt!2326866) (= lambda!331207 lambda!331201))))

(declare-fun bs!1504446 () Bool)

(assert (= bs!1504446 (and b!6075834 b!6075819)))

(assert (=> bs!1504446 (= (= lt!2326873 lt!2326867) (= lambda!331207 lambda!331202))))

(declare-fun bs!1504447 () Bool)

(assert (= bs!1504447 (and b!6075834 b!6075832)))

(assert (=> bs!1504447 (= (= lt!2326873 lt!2326872) (= lambda!331207 lambda!331206))))

(assert (=> b!6075834 true))

(declare-fun d!1904862 () Bool)

(declare-fun e!3707889 () Bool)

(assert (=> d!1904862 e!3707889))

(declare-fun res!2524554 () Bool)

(assert (=> d!1904862 (=> (not res!2524554) (not e!3707889))))

(assert (=> d!1904862 (= res!2524554 (>= lt!2326873 0))))

(declare-fun e!3707890 () Int)

(assert (=> d!1904862 (= lt!2326873 e!3707890)))

(declare-fun c!1090469 () Bool)

(assert (=> d!1904862 (= c!1090469 ((_ is Cons!64300) (Cons!64300 lt!2326827 Nil!64300)))))

(assert (=> d!1904862 (= (zipperDepth!286 (Cons!64300 lt!2326827 Nil!64300)) lt!2326873)))

(assert (=> b!6075832 (= e!3707890 lt!2326872)))

(assert (=> b!6075832 (= lt!2326872 (maxBigInt!0 (contextDepth!180 (h!70748 (Cons!64300 lt!2326827 Nil!64300))) (zipperDepth!286 (t!377867 (Cons!64300 lt!2326827 Nil!64300)))))))

(declare-fun lt!2326874 () Unit!157353)

(assert (=> b!6075832 (= lt!2326874 (lemmaForallContextDepthBiggerThanTransitive!164 (t!377867 (Cons!64300 lt!2326827 Nil!64300)) lt!2326872 (zipperDepth!286 (t!377867 (Cons!64300 lt!2326827 Nil!64300))) lambda!331205))))

(assert (=> b!6075832 (forall!15154 (t!377867 (Cons!64300 lt!2326827 Nil!64300)) lambda!331206)))

(declare-fun lt!2326875 () Unit!157353)

(assert (=> b!6075832 (= lt!2326875 lt!2326874)))

(declare-fun b!6075833 () Bool)

(assert (=> b!6075833 (= e!3707890 0)))

(assert (=> b!6075834 (= e!3707889 (forall!15154 (Cons!64300 lt!2326827 Nil!64300) lambda!331207))))

(assert (= (and d!1904862 c!1090469) b!6075832))

(assert (= (and d!1904862 (not c!1090469)) b!6075833))

(assert (= (and d!1904862 res!2524554) b!6075834))

(declare-fun m!6935720 () Bool)

(assert (=> b!6075832 m!6935720))

(declare-fun m!6935722 () Bool)

(assert (=> b!6075832 m!6935722))

(assert (=> b!6075832 m!6935722))

(declare-fun m!6935724 () Bool)

(assert (=> b!6075832 m!6935724))

(assert (=> b!6075832 m!6935720))

(assert (=> b!6075832 m!6935722))

(declare-fun m!6935726 () Bool)

(assert (=> b!6075832 m!6935726))

(declare-fun m!6935728 () Bool)

(assert (=> b!6075832 m!6935728))

(declare-fun m!6935730 () Bool)

(assert (=> b!6075834 m!6935730))

(assert (=> b!6075666 d!1904862))

(declare-fun d!1904864 () Bool)

(declare-fun lambda!331213 () Int)

(declare-fun forall!15155 (List!64422 Int) Bool)

(assert (=> d!1904864 (= (inv!83349 (h!70748 zl!343)) (forall!15155 (exprs!5925 (h!70748 zl!343)) lambda!331213))))

(declare-fun bs!1504449 () Bool)

(assert (= bs!1504449 d!1904864))

(declare-fun m!6935752 () Bool)

(assert (=> bs!1504449 m!6935752))

(assert (=> b!6075656 d!1904864))

(declare-fun bs!1504452 () Bool)

(declare-fun d!1904868 () Bool)

(assert (= bs!1504452 (and d!1904868 d!1904864)))

(declare-fun lambda!331215 () Int)

(assert (=> bs!1504452 (= lambda!331215 lambda!331213)))

(assert (=> d!1904868 (= (inv!83349 setElem!41082) (forall!15155 (exprs!5925 setElem!41082) lambda!331215))))

(declare-fun bs!1504453 () Bool)

(assert (= bs!1504453 d!1904868))

(declare-fun m!6935758 () Bool)

(assert (=> bs!1504453 m!6935758))

(assert (=> setNonEmpty!41082 d!1904868))

(declare-fun b!6075861 () Bool)

(declare-fun e!3707907 () Bool)

(assert (=> b!6075861 (= e!3707907 (nullable!6036 (regOne!32594 r!7292)))))

(declare-fun b!6075862 () Bool)

(declare-fun e!3707911 () (InoxSet Context!10850))

(assert (=> b!6075862 (= e!3707911 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075863 () Bool)

(declare-fun e!3707909 () (InoxSet Context!10850))

(declare-fun call!500084 () (InoxSet Context!10850))

(declare-fun call!500079 () (InoxSet Context!10850))

(assert (=> b!6075863 (= e!3707909 ((_ map or) call!500084 call!500079))))

(declare-fun b!6075864 () Bool)

(declare-fun e!3707906 () (InoxSet Context!10850))

(assert (=> b!6075864 (= e!3707909 e!3707906)))

(declare-fun c!1090482 () Bool)

(assert (=> b!6075864 (= c!1090482 ((_ is Concat!24886) r!7292))))

(declare-fun bm!500074 () Bool)

(declare-fun call!500081 () (InoxSet Context!10850))

(assert (=> bm!500074 (= call!500081 call!500079)))

(declare-fun d!1904872 () Bool)

(declare-fun c!1090481 () Bool)

(assert (=> d!1904872 (= c!1090481 (and ((_ is ElementMatch!16041) r!7292) (= (c!1090407 r!7292) (h!70747 s!2326))))))

(declare-fun e!3707910 () (InoxSet Context!10850))

(assert (=> d!1904872 (= (derivationStepZipperDown!1291 r!7292 lt!2326831 (h!70747 s!2326)) e!3707910)))

(declare-fun call!500080 () (InoxSet Context!10850))

(declare-fun c!1090484 () Bool)

(declare-fun bm!500075 () Bool)

(declare-fun call!500083 () List!64422)

(declare-fun c!1090485 () Bool)

(assert (=> bm!500075 (= call!500080 (derivationStepZipperDown!1291 (ite c!1090484 (regTwo!32595 r!7292) (ite c!1090485 (regTwo!32594 r!7292) (ite c!1090482 (regOne!32594 r!7292) (reg!16370 r!7292)))) (ite (or c!1090484 c!1090485) lt!2326831 (Context!10851 call!500083)) (h!70747 s!2326)))))

(declare-fun bm!500076 () Bool)

(declare-fun call!500082 () List!64422)

(assert (=> bm!500076 (= call!500082 ($colon$colon!1920 (exprs!5925 lt!2326831) (ite (or c!1090485 c!1090482) (regTwo!32594 r!7292) r!7292)))))

(declare-fun b!6075865 () Bool)

(assert (=> b!6075865 (= e!3707910 (store ((as const (Array Context!10850 Bool)) false) lt!2326831 true))))

(declare-fun b!6075866 () Bool)

(assert (=> b!6075866 (= e!3707911 call!500081)))

(declare-fun b!6075867 () Bool)

(assert (=> b!6075867 (= e!3707906 call!500081)))

(declare-fun bm!500077 () Bool)

(assert (=> bm!500077 (= call!500083 call!500082)))

(declare-fun bm!500078 () Bool)

(assert (=> bm!500078 (= call!500079 call!500080)))

(declare-fun b!6075868 () Bool)

(declare-fun c!1090483 () Bool)

(assert (=> b!6075868 (= c!1090483 ((_ is Star!16041) r!7292))))

(assert (=> b!6075868 (= e!3707906 e!3707911)))

(declare-fun b!6075869 () Bool)

(assert (=> b!6075869 (= c!1090485 e!3707907)))

(declare-fun res!2524559 () Bool)

(assert (=> b!6075869 (=> (not res!2524559) (not e!3707907))))

(assert (=> b!6075869 (= res!2524559 ((_ is Concat!24886) r!7292))))

(declare-fun e!3707908 () (InoxSet Context!10850))

(assert (=> b!6075869 (= e!3707908 e!3707909)))

(declare-fun bm!500079 () Bool)

(assert (=> bm!500079 (= call!500084 (derivationStepZipperDown!1291 (ite c!1090484 (regOne!32595 r!7292) (regOne!32594 r!7292)) (ite c!1090484 lt!2326831 (Context!10851 call!500082)) (h!70747 s!2326)))))

(declare-fun b!6075870 () Bool)

(assert (=> b!6075870 (= e!3707910 e!3707908)))

(assert (=> b!6075870 (= c!1090484 ((_ is Union!16041) r!7292))))

(declare-fun b!6075871 () Bool)

(assert (=> b!6075871 (= e!3707908 ((_ map or) call!500084 call!500080))))

(assert (= (and d!1904872 c!1090481) b!6075865))

(assert (= (and d!1904872 (not c!1090481)) b!6075870))

(assert (= (and b!6075870 c!1090484) b!6075871))

(assert (= (and b!6075870 (not c!1090484)) b!6075869))

(assert (= (and b!6075869 res!2524559) b!6075861))

(assert (= (and b!6075869 c!1090485) b!6075863))

(assert (= (and b!6075869 (not c!1090485)) b!6075864))

(assert (= (and b!6075864 c!1090482) b!6075867))

(assert (= (and b!6075864 (not c!1090482)) b!6075868))

(assert (= (and b!6075868 c!1090483) b!6075866))

(assert (= (and b!6075868 (not c!1090483)) b!6075862))

(assert (= (or b!6075867 b!6075866) bm!500077))

(assert (= (or b!6075867 b!6075866) bm!500074))

(assert (= (or b!6075863 bm!500077) bm!500076))

(assert (= (or b!6075863 bm!500074) bm!500078))

(assert (= (or b!6075871 bm!500078) bm!500075))

(assert (= (or b!6075871 b!6075863) bm!500079))

(assert (=> b!6075861 m!6935574))

(declare-fun m!6935760 () Bool)

(assert (=> bm!500076 m!6935760))

(assert (=> b!6075865 m!6935654))

(declare-fun m!6935762 () Bool)

(assert (=> bm!500079 m!6935762))

(declare-fun m!6935764 () Bool)

(assert (=> bm!500075 m!6935764))

(assert (=> b!6075652 d!1904872))

(declare-fun b!6075872 () Bool)

(declare-fun e!3707913 () Bool)

(assert (=> b!6075872 (= e!3707913 (nullable!6036 (h!70746 (exprs!5925 lt!2326827))))))

(declare-fun b!6075873 () Bool)

(declare-fun e!3707914 () (InoxSet Context!10850))

(assert (=> b!6075873 (= e!3707914 ((as const (Array Context!10850 Bool)) false))))

(declare-fun b!6075874 () Bool)

(declare-fun e!3707912 () (InoxSet Context!10850))

(assert (=> b!6075874 (= e!3707912 e!3707914)))

(declare-fun c!1090486 () Bool)

(assert (=> b!6075874 (= c!1090486 ((_ is Cons!64298) (exprs!5925 lt!2326827)))))

(declare-fun b!6075875 () Bool)

(declare-fun call!500085 () (InoxSet Context!10850))

(assert (=> b!6075875 (= e!3707914 call!500085)))

(declare-fun b!6075876 () Bool)

(assert (=> b!6075876 (= e!3707912 ((_ map or) call!500085 (derivationStepZipperUp!1217 (Context!10851 (t!377865 (exprs!5925 lt!2326827))) (h!70747 s!2326))))))

(declare-fun bm!500080 () Bool)

(assert (=> bm!500080 (= call!500085 (derivationStepZipperDown!1291 (h!70746 (exprs!5925 lt!2326827)) (Context!10851 (t!377865 (exprs!5925 lt!2326827))) (h!70747 s!2326)))))

(declare-fun d!1904874 () Bool)

(declare-fun c!1090487 () Bool)

(assert (=> d!1904874 (= c!1090487 e!3707913)))

(declare-fun res!2524560 () Bool)

(assert (=> d!1904874 (=> (not res!2524560) (not e!3707913))))

(assert (=> d!1904874 (= res!2524560 ((_ is Cons!64298) (exprs!5925 lt!2326827)))))

(assert (=> d!1904874 (= (derivationStepZipperUp!1217 lt!2326827 (h!70747 s!2326)) e!3707912)))

(assert (= (and d!1904874 res!2524560) b!6075872))

(assert (= (and d!1904874 c!1090487) b!6075876))

(assert (= (and d!1904874 (not c!1090487)) b!6075874))

(assert (= (and b!6075874 c!1090486) b!6075875))

(assert (= (and b!6075874 (not c!1090486)) b!6075873))

(assert (= (or b!6075876 b!6075875) bm!500080))

(declare-fun m!6935766 () Bool)

(assert (=> b!6075872 m!6935766))

(declare-fun m!6935768 () Bool)

(assert (=> b!6075876 m!6935768))

(declare-fun m!6935770 () Bool)

(assert (=> bm!500080 m!6935770))

(assert (=> b!6075652 d!1904874))

(declare-fun bs!1504454 () Bool)

(declare-fun d!1904876 () Bool)

(assert (= bs!1504454 (and d!1904876 b!6075648)))

(declare-fun lambda!331218 () Int)

(assert (=> bs!1504454 (= lambda!331218 lambda!331181)))

(assert (=> d!1904876 true))

(assert (=> d!1904876 (= (derivationStepZipper!2022 z!1189 (h!70747 s!2326)) (flatMap!1554 z!1189 lambda!331218))))

(declare-fun bs!1504455 () Bool)

(assert (= bs!1504455 d!1904876))

(declare-fun m!6935772 () Bool)

(assert (=> bs!1504455 m!6935772))

(assert (=> b!6075652 d!1904876))

(declare-fun b!6075945 () Bool)

(declare-fun e!3707956 () Bool)

(declare-fun e!3707961 () Bool)

(assert (=> b!6075945 (= e!3707956 e!3707961)))

(declare-fun c!1090517 () Bool)

(assert (=> b!6075945 (= c!1090517 ((_ is Union!16041) r!7292))))

(declare-fun b!6075946 () Bool)

(declare-fun res!2524581 () Bool)

(declare-fun e!3707960 () Bool)

(assert (=> b!6075946 (=> res!2524581 e!3707960)))

(assert (=> b!6075946 (= res!2524581 (not ((_ is Concat!24886) r!7292)))))

(assert (=> b!6075946 (= e!3707961 e!3707960)))

(declare-fun b!6075947 () Bool)

(declare-fun e!3707957 () Bool)

(declare-fun call!500113 () Bool)

(assert (=> b!6075947 (= e!3707957 call!500113)))

(declare-fun b!6075948 () Bool)

(declare-fun res!2524578 () Bool)

(declare-fun e!3707959 () Bool)

(assert (=> b!6075948 (=> (not res!2524578) (not e!3707959))))

(declare-fun call!500115 () Bool)

(assert (=> b!6075948 (= res!2524578 call!500115)))

(assert (=> b!6075948 (= e!3707961 e!3707959)))

(declare-fun b!6075949 () Bool)

(declare-fun e!3707958 () Bool)

(declare-fun call!500114 () Bool)

(assert (=> b!6075949 (= e!3707958 call!500114)))

(declare-fun bm!500108 () Bool)

(assert (=> bm!500108 (= call!500113 (validRegex!7777 (ite c!1090517 (regTwo!32595 r!7292) (regTwo!32594 r!7292))))))

(declare-fun c!1090518 () Bool)

(declare-fun bm!500109 () Bool)

(assert (=> bm!500109 (= call!500114 (validRegex!7777 (ite c!1090518 (reg!16370 r!7292) (ite c!1090517 (regOne!32595 r!7292) (regOne!32594 r!7292)))))))

(declare-fun bm!500110 () Bool)

(assert (=> bm!500110 (= call!500115 call!500114)))

(declare-fun b!6075950 () Bool)

(assert (=> b!6075950 (= e!3707956 e!3707958)))

(declare-fun res!2524579 () Bool)

(assert (=> b!6075950 (= res!2524579 (not (nullable!6036 (reg!16370 r!7292))))))

(assert (=> b!6075950 (=> (not res!2524579) (not e!3707958))))

(declare-fun d!1904878 () Bool)

(declare-fun res!2524580 () Bool)

(declare-fun e!3707962 () Bool)

(assert (=> d!1904878 (=> res!2524580 e!3707962)))

(assert (=> d!1904878 (= res!2524580 ((_ is ElementMatch!16041) r!7292))))

(assert (=> d!1904878 (= (validRegex!7777 r!7292) e!3707962)))

(declare-fun b!6075951 () Bool)

(assert (=> b!6075951 (= e!3707960 e!3707957)))

(declare-fun res!2524577 () Bool)

(assert (=> b!6075951 (=> (not res!2524577) (not e!3707957))))

(assert (=> b!6075951 (= res!2524577 call!500115)))

(declare-fun b!6075952 () Bool)

(assert (=> b!6075952 (= e!3707962 e!3707956)))

(assert (=> b!6075952 (= c!1090518 ((_ is Star!16041) r!7292))))

(declare-fun b!6075953 () Bool)

(assert (=> b!6075953 (= e!3707959 call!500113)))

(assert (= (and d!1904878 (not res!2524580)) b!6075952))

(assert (= (and b!6075952 c!1090518) b!6075950))

(assert (= (and b!6075952 (not c!1090518)) b!6075945))

(assert (= (and b!6075950 res!2524579) b!6075949))

(assert (= (and b!6075945 c!1090517) b!6075948))

(assert (= (and b!6075945 (not c!1090517)) b!6075946))

(assert (= (and b!6075948 res!2524578) b!6075953))

(assert (= (and b!6075946 (not res!2524581)) b!6075951))

(assert (= (and b!6075951 res!2524577) b!6075947))

(assert (= (or b!6075953 b!6075947) bm!500108))

(assert (= (or b!6075948 b!6075951) bm!500110))

(assert (= (or b!6075949 bm!500110) bm!500109))

(declare-fun m!6935790 () Bool)

(assert (=> bm!500108 m!6935790))

(declare-fun m!6935792 () Bool)

(assert (=> bm!500109 m!6935792))

(declare-fun m!6935794 () Bool)

(assert (=> b!6075950 m!6935794))

(assert (=> start!608936 d!1904878))

(declare-fun d!1904888 () Bool)

(assert (=> d!1904888 (= (isEmpty!36210 (t!377867 zl!343)) ((_ is Nil!64300) (t!377867 zl!343)))))

(assert (=> b!6075654 d!1904888))

(declare-fun b!6076023 () Bool)

(declare-fun e!3708006 () Bool)

(declare-fun lt!2326914 () Option!15932)

(declare-fun ++!14130 (List!64423 List!64423) List!64423)

(declare-fun get!22166 (Option!15932) tuple2!66040)

(assert (=> b!6076023 (= e!3708006 (= (++!14130 (_1!36323 (get!22166 lt!2326914)) (_2!36323 (get!22166 lt!2326914))) s!2326))))

(declare-fun b!6076024 () Bool)

(declare-fun lt!2326912 () Unit!157353)

(declare-fun lt!2326913 () Unit!157353)

(assert (=> b!6076024 (= lt!2326912 lt!2326913)))

(assert (=> b!6076024 (= (++!14130 (++!14130 Nil!64299 (Cons!64299 (h!70747 s!2326) Nil!64299)) (t!377866 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2225 (List!64423 C!32352 List!64423 List!64423) Unit!157353)

(assert (=> b!6076024 (= lt!2326913 (lemmaMoveElementToOtherListKeepsConcatEq!2225 Nil!64299 (h!70747 s!2326) (t!377866 s!2326) s!2326))))

(declare-fun e!3708002 () Option!15932)

(assert (=> b!6076024 (= e!3708002 (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) (++!14130 Nil!64299 (Cons!64299 (h!70747 s!2326) Nil!64299)) (t!377866 s!2326) s!2326))))

(declare-fun d!1904890 () Bool)

(declare-fun e!3708003 () Bool)

(assert (=> d!1904890 e!3708003))

(declare-fun res!2524604 () Bool)

(assert (=> d!1904890 (=> res!2524604 e!3708003)))

(assert (=> d!1904890 (= res!2524604 e!3708006)))

(declare-fun res!2524606 () Bool)

(assert (=> d!1904890 (=> (not res!2524606) (not e!3708006))))

(assert (=> d!1904890 (= res!2524606 (isDefined!12635 lt!2326914))))

(declare-fun e!3708004 () Option!15932)

(assert (=> d!1904890 (= lt!2326914 e!3708004)))

(declare-fun c!1090547 () Bool)

(declare-fun e!3708005 () Bool)

(assert (=> d!1904890 (= c!1090547 e!3708005)))

(declare-fun res!2524603 () Bool)

(assert (=> d!1904890 (=> (not res!2524603) (not e!3708005))))

(assert (=> d!1904890 (= res!2524603 (matchR!8224 (regOne!32594 r!7292) Nil!64299))))

(assert (=> d!1904890 (validRegex!7777 (regOne!32594 r!7292))))

(assert (=> d!1904890 (= (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) Nil!64299 s!2326 s!2326) lt!2326914)))

(declare-fun b!6076025 () Bool)

(assert (=> b!6076025 (= e!3708004 e!3708002)))

(declare-fun c!1090548 () Bool)

(assert (=> b!6076025 (= c!1090548 ((_ is Nil!64299) s!2326))))

(declare-fun b!6076026 () Bool)

(assert (=> b!6076026 (= e!3708002 None!15931)))

(declare-fun b!6076027 () Bool)

(assert (=> b!6076027 (= e!3708003 (not (isDefined!12635 lt!2326914)))))

(declare-fun b!6076028 () Bool)

(assert (=> b!6076028 (= e!3708005 (matchR!8224 (regTwo!32594 r!7292) s!2326))))

(declare-fun b!6076029 () Bool)

(declare-fun res!2524607 () Bool)

(assert (=> b!6076029 (=> (not res!2524607) (not e!3708006))))

(assert (=> b!6076029 (= res!2524607 (matchR!8224 (regOne!32594 r!7292) (_1!36323 (get!22166 lt!2326914))))))

(declare-fun b!6076030 () Bool)

(assert (=> b!6076030 (= e!3708004 (Some!15931 (tuple2!66041 Nil!64299 s!2326)))))

(declare-fun b!6076031 () Bool)

(declare-fun res!2524605 () Bool)

(assert (=> b!6076031 (=> (not res!2524605) (not e!3708006))))

(assert (=> b!6076031 (= res!2524605 (matchR!8224 (regTwo!32594 r!7292) (_2!36323 (get!22166 lt!2326914))))))

(assert (= (and d!1904890 res!2524603) b!6076028))

(assert (= (and d!1904890 c!1090547) b!6076030))

(assert (= (and d!1904890 (not c!1090547)) b!6076025))

(assert (= (and b!6076025 c!1090548) b!6076026))

(assert (= (and b!6076025 (not c!1090548)) b!6076024))

(assert (= (and d!1904890 res!2524606) b!6076029))

(assert (= (and b!6076029 res!2524607) b!6076031))

(assert (= (and b!6076031 res!2524605) b!6076023))

(assert (= (and d!1904890 (not res!2524604)) b!6076027))

(declare-fun m!6935872 () Bool)

(assert (=> b!6076024 m!6935872))

(assert (=> b!6076024 m!6935872))

(declare-fun m!6935874 () Bool)

(assert (=> b!6076024 m!6935874))

(declare-fun m!6935876 () Bool)

(assert (=> b!6076024 m!6935876))

(assert (=> b!6076024 m!6935872))

(declare-fun m!6935878 () Bool)

(assert (=> b!6076024 m!6935878))

(declare-fun m!6935880 () Bool)

(assert (=> b!6076027 m!6935880))

(declare-fun m!6935882 () Bool)

(assert (=> b!6076028 m!6935882))

(assert (=> d!1904890 m!6935880))

(declare-fun m!6935884 () Bool)

(assert (=> d!1904890 m!6935884))

(declare-fun m!6935886 () Bool)

(assert (=> d!1904890 m!6935886))

(declare-fun m!6935888 () Bool)

(assert (=> b!6076029 m!6935888))

(declare-fun m!6935890 () Bool)

(assert (=> b!6076029 m!6935890))

(assert (=> b!6076031 m!6935888))

(declare-fun m!6935892 () Bool)

(assert (=> b!6076031 m!6935892))

(assert (=> b!6076023 m!6935888))

(declare-fun m!6935894 () Bool)

(assert (=> b!6076023 m!6935894))

(assert (=> b!6075653 d!1904890))

(declare-fun d!1904920 () Bool)

(declare-fun choose!45266 (Int) Bool)

(assert (=> d!1904920 (= (Exists!3111 lambda!331180) (choose!45266 lambda!331180))))

(declare-fun bs!1504474 () Bool)

(assert (= bs!1504474 d!1904920))

(declare-fun m!6935896 () Bool)

(assert (=> bs!1504474 m!6935896))

(assert (=> b!6075653 d!1904920))

(declare-fun d!1904922 () Bool)

(assert (=> d!1904922 (= (Exists!3111 lambda!331179) (choose!45266 lambda!331179))))

(declare-fun bs!1504475 () Bool)

(assert (= bs!1504475 d!1904922))

(declare-fun m!6935898 () Bool)

(assert (=> bs!1504475 m!6935898))

(assert (=> b!6075653 d!1904922))

(declare-fun bs!1504476 () Bool)

(declare-fun d!1904924 () Bool)

(assert (= bs!1504476 (and d!1904924 b!6075653)))

(declare-fun lambda!331239 () Int)

(assert (=> bs!1504476 (= lambda!331239 lambda!331179)))

(assert (=> bs!1504476 (not (= lambda!331239 lambda!331180))))

(assert (=> d!1904924 true))

(assert (=> d!1904924 true))

(assert (=> d!1904924 true))

(assert (=> d!1904924 (= (isDefined!12635 (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) Nil!64299 s!2326 s!2326)) (Exists!3111 lambda!331239))))

(declare-fun lt!2326920 () Unit!157353)

(declare-fun choose!45267 (Regex!16041 Regex!16041 List!64423) Unit!157353)

(assert (=> d!1904924 (= lt!2326920 (choose!45267 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326))))

(assert (=> d!1904924 (validRegex!7777 (regOne!32594 r!7292))))

(assert (=> d!1904924 (= (lemmaFindConcatSeparationEquivalentToExists!2110 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326) lt!2326920)))

(declare-fun bs!1504477 () Bool)

(assert (= bs!1504477 d!1904924))

(assert (=> bs!1504477 m!6935510))

(assert (=> bs!1504477 m!6935512))

(declare-fun m!6935928 () Bool)

(assert (=> bs!1504477 m!6935928))

(assert (=> bs!1504477 m!6935886))

(assert (=> bs!1504477 m!6935510))

(declare-fun m!6935930 () Bool)

(assert (=> bs!1504477 m!6935930))

(assert (=> b!6075653 d!1904924))

(declare-fun bs!1504486 () Bool)

(declare-fun d!1904934 () Bool)

(assert (= bs!1504486 (and d!1904934 b!6075653)))

(declare-fun lambda!331245 () Int)

(assert (=> bs!1504486 (= lambda!331245 lambda!331179)))

(assert (=> bs!1504486 (not (= lambda!331245 lambda!331180))))

(declare-fun bs!1504487 () Bool)

(assert (= bs!1504487 (and d!1904934 d!1904924)))

(assert (=> bs!1504487 (= lambda!331245 lambda!331239)))

(assert (=> d!1904934 true))

(assert (=> d!1904934 true))

(assert (=> d!1904934 true))

(declare-fun lambda!331246 () Int)

(assert (=> bs!1504486 (not (= lambda!331246 lambda!331179))))

(assert (=> bs!1504486 (= lambda!331246 lambda!331180)))

(assert (=> bs!1504487 (not (= lambda!331246 lambda!331239))))

(declare-fun bs!1504488 () Bool)

(assert (= bs!1504488 d!1904934))

(assert (=> bs!1504488 (not (= lambda!331246 lambda!331245))))

(assert (=> d!1904934 true))

(assert (=> d!1904934 true))

(assert (=> d!1904934 true))

(assert (=> d!1904934 (= (Exists!3111 lambda!331245) (Exists!3111 lambda!331246))))

(declare-fun lt!2326927 () Unit!157353)

(declare-fun choose!45269 (Regex!16041 Regex!16041 List!64423) Unit!157353)

(assert (=> d!1904934 (= lt!2326927 (choose!45269 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326))))

(assert (=> d!1904934 (validRegex!7777 (regOne!32594 r!7292))))

(assert (=> d!1904934 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1648 (regOne!32594 r!7292) (regTwo!32594 r!7292) s!2326) lt!2326927)))

(declare-fun m!6935956 () Bool)

(assert (=> bs!1504488 m!6935956))

(declare-fun m!6935958 () Bool)

(assert (=> bs!1504488 m!6935958))

(declare-fun m!6935960 () Bool)

(assert (=> bs!1504488 m!6935960))

(assert (=> bs!1504488 m!6935886))

(assert (=> b!6075653 d!1904934))

(declare-fun d!1904948 () Bool)

(declare-fun isEmpty!36213 (Option!15932) Bool)

(assert (=> d!1904948 (= (isDefined!12635 (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) Nil!64299 s!2326 s!2326)) (not (isEmpty!36213 (findConcatSeparation!2346 (regOne!32594 r!7292) (regTwo!32594 r!7292) Nil!64299 s!2326 s!2326))))))

(declare-fun bs!1504489 () Bool)

(assert (= bs!1504489 d!1904948))

(assert (=> bs!1504489 m!6935510))

(declare-fun m!6935962 () Bool)

(assert (=> bs!1504489 m!6935962))

(assert (=> b!6075653 d!1904948))

(declare-fun b!6076155 () Bool)

(declare-fun e!3708082 () Bool)

(declare-fun e!3708087 () Bool)

(assert (=> b!6076155 (= e!3708082 e!3708087)))

(declare-fun c!1090579 () Bool)

(assert (=> b!6076155 (= c!1090579 ((_ is Union!16041) (regTwo!32594 r!7292)))))

(declare-fun b!6076156 () Bool)

(declare-fun res!2524675 () Bool)

(declare-fun e!3708086 () Bool)

(assert (=> b!6076156 (=> res!2524675 e!3708086)))

(assert (=> b!6076156 (= res!2524675 (not ((_ is Concat!24886) (regTwo!32594 r!7292))))))

(assert (=> b!6076156 (= e!3708087 e!3708086)))

(declare-fun b!6076157 () Bool)

(declare-fun e!3708083 () Bool)

(declare-fun call!500146 () Bool)

(assert (=> b!6076157 (= e!3708083 call!500146)))

(declare-fun b!6076158 () Bool)

(declare-fun res!2524672 () Bool)

(declare-fun e!3708085 () Bool)

(assert (=> b!6076158 (=> (not res!2524672) (not e!3708085))))

(declare-fun call!500148 () Bool)

(assert (=> b!6076158 (= res!2524672 call!500148)))

(assert (=> b!6076158 (= e!3708087 e!3708085)))

(declare-fun b!6076159 () Bool)

(declare-fun e!3708084 () Bool)

(declare-fun call!500147 () Bool)

(assert (=> b!6076159 (= e!3708084 call!500147)))

(declare-fun bm!500141 () Bool)

(assert (=> bm!500141 (= call!500146 (validRegex!7777 (ite c!1090579 (regTwo!32595 (regTwo!32594 r!7292)) (regTwo!32594 (regTwo!32594 r!7292)))))))

(declare-fun bm!500142 () Bool)

(declare-fun c!1090580 () Bool)

(assert (=> bm!500142 (= call!500147 (validRegex!7777 (ite c!1090580 (reg!16370 (regTwo!32594 r!7292)) (ite c!1090579 (regOne!32595 (regTwo!32594 r!7292)) (regOne!32594 (regTwo!32594 r!7292))))))))

(declare-fun bm!500143 () Bool)

(assert (=> bm!500143 (= call!500148 call!500147)))

(declare-fun b!6076160 () Bool)

(assert (=> b!6076160 (= e!3708082 e!3708084)))

(declare-fun res!2524673 () Bool)

(assert (=> b!6076160 (= res!2524673 (not (nullable!6036 (reg!16370 (regTwo!32594 r!7292)))))))

(assert (=> b!6076160 (=> (not res!2524673) (not e!3708084))))

(declare-fun d!1904950 () Bool)

(declare-fun res!2524674 () Bool)

(declare-fun e!3708088 () Bool)

(assert (=> d!1904950 (=> res!2524674 e!3708088)))

(assert (=> d!1904950 (= res!2524674 ((_ is ElementMatch!16041) (regTwo!32594 r!7292)))))

(assert (=> d!1904950 (= (validRegex!7777 (regTwo!32594 r!7292)) e!3708088)))

(declare-fun b!6076161 () Bool)

(assert (=> b!6076161 (= e!3708086 e!3708083)))

(declare-fun res!2524671 () Bool)

(assert (=> b!6076161 (=> (not res!2524671) (not e!3708083))))

(assert (=> b!6076161 (= res!2524671 call!500148)))

(declare-fun b!6076162 () Bool)

(assert (=> b!6076162 (= e!3708088 e!3708082)))

(assert (=> b!6076162 (= c!1090580 ((_ is Star!16041) (regTwo!32594 r!7292)))))

(declare-fun b!6076163 () Bool)

(assert (=> b!6076163 (= e!3708085 call!500146)))

(assert (= (and d!1904950 (not res!2524674)) b!6076162))

(assert (= (and b!6076162 c!1090580) b!6076160))

(assert (= (and b!6076162 (not c!1090580)) b!6076155))

(assert (= (and b!6076160 res!2524673) b!6076159))

(assert (= (and b!6076155 c!1090579) b!6076158))

(assert (= (and b!6076155 (not c!1090579)) b!6076156))

(assert (= (and b!6076158 res!2524672) b!6076163))

(assert (= (and b!6076156 (not res!2524675)) b!6076161))

(assert (= (and b!6076161 res!2524671) b!6076157))

(assert (= (or b!6076163 b!6076157) bm!500141))

(assert (= (or b!6076158 b!6076161) bm!500143))

(assert (= (or b!6076159 bm!500143) bm!500142))

(declare-fun m!6935964 () Bool)

(assert (=> bm!500141 m!6935964))

(declare-fun m!6935966 () Bool)

(assert (=> bm!500142 m!6935966))

(declare-fun m!6935968 () Bool)

(assert (=> b!6076160 m!6935968))

(assert (=> b!6075663 d!1904950))

(declare-fun b!6076213 () Bool)

(declare-fun e!3708119 () Bool)

(declare-fun derivativeStep!4764 (Regex!16041 C!32352) Regex!16041)

(declare-fun head!12607 (List!64423) C!32352)

(declare-fun tail!11692 (List!64423) List!64423)

(assert (=> b!6076213 (= e!3708119 (matchR!8224 (derivativeStep!4764 lt!2326817 (head!12607 s!2326)) (tail!11692 s!2326)))))

(declare-fun b!6076214 () Bool)

(declare-fun res!2524712 () Bool)

(declare-fun e!3708118 () Bool)

(assert (=> b!6076214 (=> res!2524712 e!3708118)))

(declare-fun isEmpty!36214 (List!64423) Bool)

(assert (=> b!6076214 (= res!2524712 (not (isEmpty!36214 (tail!11692 s!2326))))))

(declare-fun b!6076215 () Bool)

(declare-fun e!3708120 () Bool)

(assert (=> b!6076215 (= e!3708120 e!3708118)))

(declare-fun res!2524710 () Bool)

(assert (=> b!6076215 (=> res!2524710 e!3708118)))

(declare-fun call!500157 () Bool)

(assert (=> b!6076215 (= res!2524710 call!500157)))

(declare-fun b!6076216 () Bool)

(declare-fun e!3708114 () Bool)

(declare-fun lt!2326930 () Bool)

(assert (=> b!6076216 (= e!3708114 (not lt!2326930))))

(declare-fun b!6076217 () Bool)

(declare-fun res!2524705 () Bool)

(declare-fun e!3708115 () Bool)

(assert (=> b!6076217 (=> res!2524705 e!3708115)))

(assert (=> b!6076217 (= res!2524705 (not ((_ is ElementMatch!16041) lt!2326817)))))

(assert (=> b!6076217 (= e!3708114 e!3708115)))

(declare-fun b!6076218 () Bool)

(declare-fun e!3708117 () Bool)

(assert (=> b!6076218 (= e!3708117 e!3708114)))

(declare-fun c!1090591 () Bool)

(assert (=> b!6076218 (= c!1090591 ((_ is EmptyLang!16041) lt!2326817))))

(declare-fun b!6076219 () Bool)

(assert (=> b!6076219 (= e!3708119 (nullable!6036 lt!2326817))))

(declare-fun b!6076220 () Bool)

(declare-fun res!2524708 () Bool)

(declare-fun e!3708116 () Bool)

(assert (=> b!6076220 (=> (not res!2524708) (not e!3708116))))

(assert (=> b!6076220 (= res!2524708 (not call!500157))))

(declare-fun bm!500152 () Bool)

(assert (=> bm!500152 (= call!500157 (isEmpty!36214 s!2326))))

(declare-fun b!6076221 () Bool)

(assert (=> b!6076221 (= e!3708117 (= lt!2326930 call!500157))))

(declare-fun b!6076222 () Bool)

(declare-fun res!2524706 () Bool)

(assert (=> b!6076222 (=> (not res!2524706) (not e!3708116))))

(assert (=> b!6076222 (= res!2524706 (isEmpty!36214 (tail!11692 s!2326)))))

(declare-fun b!6076224 () Bool)

(assert (=> b!6076224 (= e!3708115 e!3708120)))

(declare-fun res!2524711 () Bool)

(assert (=> b!6076224 (=> (not res!2524711) (not e!3708120))))

(assert (=> b!6076224 (= res!2524711 (not lt!2326930))))

(declare-fun b!6076225 () Bool)

(assert (=> b!6076225 (= e!3708116 (= (head!12607 s!2326) (c!1090407 lt!2326817)))))

(declare-fun b!6076226 () Bool)

(assert (=> b!6076226 (= e!3708118 (not (= (head!12607 s!2326) (c!1090407 lt!2326817))))))

(declare-fun b!6076223 () Bool)

(declare-fun res!2524709 () Bool)

(assert (=> b!6076223 (=> res!2524709 e!3708115)))

(assert (=> b!6076223 (= res!2524709 e!3708116)))

(declare-fun res!2524707 () Bool)

(assert (=> b!6076223 (=> (not res!2524707) (not e!3708116))))

(assert (=> b!6076223 (= res!2524707 lt!2326930)))

(declare-fun d!1904952 () Bool)

(assert (=> d!1904952 e!3708117))

(declare-fun c!1090593 () Bool)

(assert (=> d!1904952 (= c!1090593 ((_ is EmptyExpr!16041) lt!2326817))))

(assert (=> d!1904952 (= lt!2326930 e!3708119)))

(declare-fun c!1090592 () Bool)

(assert (=> d!1904952 (= c!1090592 (isEmpty!36214 s!2326))))

(assert (=> d!1904952 (validRegex!7777 lt!2326817)))

(assert (=> d!1904952 (= (matchR!8224 lt!2326817 s!2326) lt!2326930)))

(assert (= (and d!1904952 c!1090592) b!6076219))

(assert (= (and d!1904952 (not c!1090592)) b!6076213))

(assert (= (and d!1904952 c!1090593) b!6076221))

(assert (= (and d!1904952 (not c!1090593)) b!6076218))

(assert (= (and b!6076218 c!1090591) b!6076216))

(assert (= (and b!6076218 (not c!1090591)) b!6076217))

(assert (= (and b!6076217 (not res!2524705)) b!6076223))

(assert (= (and b!6076223 res!2524707) b!6076220))

(assert (= (and b!6076220 res!2524708) b!6076222))

(assert (= (and b!6076222 res!2524706) b!6076225))

(assert (= (and b!6076223 (not res!2524709)) b!6076224))

(assert (= (and b!6076224 res!2524711) b!6076215))

(assert (= (and b!6076215 (not res!2524710)) b!6076214))

(assert (= (and b!6076214 (not res!2524712)) b!6076226))

(assert (= (or b!6076221 b!6076215 b!6076220) bm!500152))

(declare-fun m!6935970 () Bool)

(assert (=> b!6076214 m!6935970))

(assert (=> b!6076214 m!6935970))

(declare-fun m!6935974 () Bool)

(assert (=> b!6076214 m!6935974))

(declare-fun m!6935976 () Bool)

(assert (=> bm!500152 m!6935976))

(declare-fun m!6935980 () Bool)

(assert (=> b!6076226 m!6935980))

(assert (=> b!6076225 m!6935980))

(assert (=> b!6076222 m!6935970))

(assert (=> b!6076222 m!6935970))

(assert (=> b!6076222 m!6935974))

(assert (=> b!6076213 m!6935980))

(assert (=> b!6076213 m!6935980))

(declare-fun m!6935984 () Bool)

(assert (=> b!6076213 m!6935984))

(assert (=> b!6076213 m!6935970))

(assert (=> b!6076213 m!6935984))

(assert (=> b!6076213 m!6935970))

(declare-fun m!6935986 () Bool)

(assert (=> b!6076213 m!6935986))

(declare-fun m!6935988 () Bool)

(assert (=> b!6076219 m!6935988))

(assert (=> d!1904952 m!6935976))

(declare-fun m!6935990 () Bool)

(assert (=> d!1904952 m!6935990))

(assert (=> b!6075663 d!1904952))

(declare-fun d!1904956 () Bool)

(declare-fun c!1090599 () Bool)

(assert (=> d!1904956 (= c!1090599 (isEmpty!36214 s!2326))))

(declare-fun e!3708130 () Bool)

(assert (=> d!1904956 (= (matchZipper!2061 lt!2326821 s!2326) e!3708130)))

(declare-fun b!6076245 () Bool)

(declare-fun nullableZipper!1830 ((InoxSet Context!10850)) Bool)

(assert (=> b!6076245 (= e!3708130 (nullableZipper!1830 lt!2326821))))

(declare-fun b!6076246 () Bool)

(assert (=> b!6076246 (= e!3708130 (matchZipper!2061 (derivationStepZipper!2022 lt!2326821 (head!12607 s!2326)) (tail!11692 s!2326)))))

(assert (= (and d!1904956 c!1090599) b!6076245))

(assert (= (and d!1904956 (not c!1090599)) b!6076246))

(assert (=> d!1904956 m!6935976))

(declare-fun m!6935998 () Bool)

(assert (=> b!6076245 m!6935998))

(assert (=> b!6076246 m!6935980))

(assert (=> b!6076246 m!6935980))

(declare-fun m!6936000 () Bool)

(assert (=> b!6076246 m!6936000))

(assert (=> b!6076246 m!6935970))

(assert (=> b!6076246 m!6936000))

(assert (=> b!6076246 m!6935970))

(declare-fun m!6936002 () Bool)

(assert (=> b!6076246 m!6936002))

(assert (=> b!6075663 d!1904956))

(declare-fun d!1904960 () Bool)

(assert (=> d!1904960 (= (matchR!8224 lt!2326817 s!2326) (matchZipper!2061 lt!2326821 s!2326))))

(declare-fun lt!2326937 () Unit!157353)

(declare-fun choose!45270 ((InoxSet Context!10850) List!64424 Regex!16041 List!64423) Unit!157353)

(assert (=> d!1904960 (= lt!2326937 (choose!45270 lt!2326821 lt!2326819 lt!2326817 s!2326))))

(assert (=> d!1904960 (validRegex!7777 lt!2326817)))

(assert (=> d!1904960 (= (theoremZipperRegexEquiv!717 lt!2326821 lt!2326819 lt!2326817 s!2326) lt!2326937)))

(declare-fun bs!1504498 () Bool)

(assert (= bs!1504498 d!1904960))

(assert (=> bs!1504498 m!6935528))

(assert (=> bs!1504498 m!6935530))

(declare-fun m!6936008 () Bool)

(assert (=> bs!1504498 m!6936008))

(assert (=> bs!1504498 m!6935990))

(assert (=> b!6075663 d!1904960))

(declare-fun d!1904962 () Bool)

(assert (=> d!1904962 (= (isEmpty!36209 (t!377865 (exprs!5925 (h!70748 zl!343)))) ((_ is Nil!64298) (t!377865 (exprs!5925 (h!70748 zl!343)))))))

(assert (=> b!6075649 d!1904962))

(declare-fun d!1904964 () Bool)

(declare-fun e!3708156 () Bool)

(assert (=> d!1904964 e!3708156))

(declare-fun res!2524723 () Bool)

(assert (=> d!1904964 (=> (not res!2524723) (not e!3708156))))

(declare-fun lt!2326940 () List!64424)

(declare-fun noDuplicate!1890 (List!64424) Bool)

(assert (=> d!1904964 (= res!2524723 (noDuplicate!1890 lt!2326940))))

(declare-fun choose!45271 ((InoxSet Context!10850)) List!64424)

(assert (=> d!1904964 (= lt!2326940 (choose!45271 z!1189))))

(assert (=> d!1904964 (= (toList!9825 z!1189) lt!2326940)))

(declare-fun b!6076303 () Bool)

(declare-fun content!11913 (List!64424) (InoxSet Context!10850))

(assert (=> b!6076303 (= e!3708156 (= (content!11913 lt!2326940) z!1189))))

(assert (= (and d!1904964 res!2524723) b!6076303))

(declare-fun m!6936012 () Bool)

(assert (=> d!1904964 m!6936012))

(declare-fun m!6936014 () Bool)

(assert (=> d!1904964 m!6936014))

(declare-fun m!6936016 () Bool)

(assert (=> b!6076303 m!6936016))

(assert (=> b!6075660 d!1904964))

(declare-fun bs!1504502 () Bool)

(declare-fun b!6076338 () Bool)

(assert (= bs!1504502 (and b!6076338 d!1904934)))

(declare-fun lambda!331257 () Int)

(assert (=> bs!1504502 (not (= lambda!331257 lambda!331246))))

(declare-fun bs!1504503 () Bool)

(assert (= bs!1504503 (and b!6076338 b!6075653)))

(assert (=> bs!1504503 (not (= lambda!331257 lambda!331180))))

(assert (=> bs!1504503 (not (= lambda!331257 lambda!331179))))

(declare-fun bs!1504504 () Bool)

(assert (= bs!1504504 (and b!6076338 d!1904924)))

(assert (=> bs!1504504 (not (= lambda!331257 lambda!331239))))

(assert (=> bs!1504502 (not (= lambda!331257 lambda!331245))))

(assert (=> b!6076338 true))

(assert (=> b!6076338 true))

(declare-fun bs!1504505 () Bool)

(declare-fun b!6076346 () Bool)

(assert (= bs!1504505 (and b!6076346 b!6076338)))

(declare-fun lambda!331258 () Int)

(assert (=> bs!1504505 (not (= lambda!331258 lambda!331257))))

(declare-fun bs!1504506 () Bool)

(assert (= bs!1504506 (and b!6076346 d!1904934)))

(assert (=> bs!1504506 (= lambda!331258 lambda!331246)))

(declare-fun bs!1504507 () Bool)

(assert (= bs!1504507 (and b!6076346 b!6075653)))

(assert (=> bs!1504507 (= lambda!331258 lambda!331180)))

(assert (=> bs!1504507 (not (= lambda!331258 lambda!331179))))

(declare-fun bs!1504508 () Bool)

(assert (= bs!1504508 (and b!6076346 d!1904924)))

(assert (=> bs!1504508 (not (= lambda!331258 lambda!331239))))

(assert (=> bs!1504506 (not (= lambda!331258 lambda!331245))))

(assert (=> b!6076346 true))

(assert (=> b!6076346 true))

(declare-fun c!1090611 () Bool)

(declare-fun bm!500158 () Bool)

(declare-fun call!500164 () Bool)

(assert (=> bm!500158 (= call!500164 (Exists!3111 (ite c!1090611 lambda!331257 lambda!331258)))))

(declare-fun b!6076337 () Bool)

(declare-fun e!3708175 () Bool)

(declare-fun e!3708181 () Bool)

(assert (=> b!6076337 (= e!3708175 e!3708181)))

(declare-fun res!2524741 () Bool)

(assert (=> b!6076337 (= res!2524741 (not ((_ is EmptyLang!16041) r!7292)))))

(assert (=> b!6076337 (=> (not res!2524741) (not e!3708181))))

(declare-fun e!3708179 () Bool)

(assert (=> b!6076338 (= e!3708179 call!500164)))

(declare-fun b!6076339 () Bool)

(declare-fun e!3708177 () Bool)

(assert (=> b!6076339 (= e!3708177 (matchRSpec!3142 (regTwo!32595 r!7292) s!2326))))

(declare-fun b!6076340 () Bool)

(declare-fun e!3708176 () Bool)

(assert (=> b!6076340 (= e!3708176 (= s!2326 (Cons!64299 (c!1090407 r!7292) Nil!64299)))))

(declare-fun b!6076341 () Bool)

(declare-fun e!3708178 () Bool)

(assert (=> b!6076341 (= e!3708178 e!3708177)))

(declare-fun res!2524740 () Bool)

(assert (=> b!6076341 (= res!2524740 (matchRSpec!3142 (regOne!32595 r!7292) s!2326))))

(assert (=> b!6076341 (=> res!2524740 e!3708177)))

(declare-fun bm!500159 () Bool)

(declare-fun call!500163 () Bool)

(assert (=> bm!500159 (= call!500163 (isEmpty!36214 s!2326))))

(declare-fun b!6076342 () Bool)

(declare-fun c!1090609 () Bool)

(assert (=> b!6076342 (= c!1090609 ((_ is ElementMatch!16041) r!7292))))

(assert (=> b!6076342 (= e!3708181 e!3708176)))

(declare-fun b!6076336 () Bool)

(declare-fun res!2524742 () Bool)

(assert (=> b!6076336 (=> res!2524742 e!3708179)))

(assert (=> b!6076336 (= res!2524742 call!500163)))

(declare-fun e!3708180 () Bool)

(assert (=> b!6076336 (= e!3708180 e!3708179)))

(declare-fun d!1904972 () Bool)

(declare-fun c!1090608 () Bool)

(assert (=> d!1904972 (= c!1090608 ((_ is EmptyExpr!16041) r!7292))))

(assert (=> d!1904972 (= (matchRSpec!3142 r!7292 s!2326) e!3708175)))

(declare-fun b!6076343 () Bool)

(assert (=> b!6076343 (= e!3708178 e!3708180)))

(assert (=> b!6076343 (= c!1090611 ((_ is Star!16041) r!7292))))

(declare-fun b!6076344 () Bool)

(assert (=> b!6076344 (= e!3708175 call!500163)))

(declare-fun b!6076345 () Bool)

(declare-fun c!1090610 () Bool)

(assert (=> b!6076345 (= c!1090610 ((_ is Union!16041) r!7292))))

(assert (=> b!6076345 (= e!3708176 e!3708178)))

(assert (=> b!6076346 (= e!3708180 call!500164)))

(assert (= (and d!1904972 c!1090608) b!6076344))

(assert (= (and d!1904972 (not c!1090608)) b!6076337))

(assert (= (and b!6076337 res!2524741) b!6076342))

(assert (= (and b!6076342 c!1090609) b!6076340))

(assert (= (and b!6076342 (not c!1090609)) b!6076345))

(assert (= (and b!6076345 c!1090610) b!6076341))

(assert (= (and b!6076345 (not c!1090610)) b!6076343))

(assert (= (and b!6076341 (not res!2524740)) b!6076339))

(assert (= (and b!6076343 c!1090611) b!6076336))

(assert (= (and b!6076343 (not c!1090611)) b!6076346))

(assert (= (and b!6076336 (not res!2524742)) b!6076338))

(assert (= (or b!6076338 b!6076346) bm!500158))

(assert (= (or b!6076344 b!6076336) bm!500159))

(declare-fun m!6936018 () Bool)

(assert (=> bm!500158 m!6936018))

(declare-fun m!6936020 () Bool)

(assert (=> b!6076339 m!6936020))

(declare-fun m!6936022 () Bool)

(assert (=> b!6076341 m!6936022))

(assert (=> bm!500159 m!6935976))

(assert (=> b!6075651 d!1904972))

(declare-fun b!6076347 () Bool)

(declare-fun e!3708187 () Bool)

(assert (=> b!6076347 (= e!3708187 (matchR!8224 (derivativeStep!4764 r!7292 (head!12607 s!2326)) (tail!11692 s!2326)))))

(declare-fun b!6076348 () Bool)

(declare-fun res!2524750 () Bool)

(declare-fun e!3708186 () Bool)

(assert (=> b!6076348 (=> res!2524750 e!3708186)))

(assert (=> b!6076348 (= res!2524750 (not (isEmpty!36214 (tail!11692 s!2326))))))

(declare-fun b!6076349 () Bool)

(declare-fun e!3708188 () Bool)

(assert (=> b!6076349 (= e!3708188 e!3708186)))

(declare-fun res!2524748 () Bool)

(assert (=> b!6076349 (=> res!2524748 e!3708186)))

(declare-fun call!500165 () Bool)

(assert (=> b!6076349 (= res!2524748 call!500165)))

(declare-fun b!6076350 () Bool)

(declare-fun e!3708182 () Bool)

(declare-fun lt!2326941 () Bool)

(assert (=> b!6076350 (= e!3708182 (not lt!2326941))))

(declare-fun b!6076351 () Bool)

(declare-fun res!2524743 () Bool)

(declare-fun e!3708183 () Bool)

(assert (=> b!6076351 (=> res!2524743 e!3708183)))

(assert (=> b!6076351 (= res!2524743 (not ((_ is ElementMatch!16041) r!7292)))))

(assert (=> b!6076351 (= e!3708182 e!3708183)))

(declare-fun b!6076352 () Bool)

(declare-fun e!3708185 () Bool)

(assert (=> b!6076352 (= e!3708185 e!3708182)))

(declare-fun c!1090612 () Bool)

(assert (=> b!6076352 (= c!1090612 ((_ is EmptyLang!16041) r!7292))))

(declare-fun b!6076353 () Bool)

(assert (=> b!6076353 (= e!3708187 (nullable!6036 r!7292))))

(declare-fun b!6076354 () Bool)

(declare-fun res!2524746 () Bool)

(declare-fun e!3708184 () Bool)

(assert (=> b!6076354 (=> (not res!2524746) (not e!3708184))))

(assert (=> b!6076354 (= res!2524746 (not call!500165))))

(declare-fun bm!500160 () Bool)

(assert (=> bm!500160 (= call!500165 (isEmpty!36214 s!2326))))

(declare-fun b!6076355 () Bool)

(assert (=> b!6076355 (= e!3708185 (= lt!2326941 call!500165))))

(declare-fun b!6076356 () Bool)

(declare-fun res!2524744 () Bool)

(assert (=> b!6076356 (=> (not res!2524744) (not e!3708184))))

(assert (=> b!6076356 (= res!2524744 (isEmpty!36214 (tail!11692 s!2326)))))

(declare-fun b!6076358 () Bool)

(assert (=> b!6076358 (= e!3708183 e!3708188)))

(declare-fun res!2524749 () Bool)

(assert (=> b!6076358 (=> (not res!2524749) (not e!3708188))))

(assert (=> b!6076358 (= res!2524749 (not lt!2326941))))

(declare-fun b!6076359 () Bool)

(assert (=> b!6076359 (= e!3708184 (= (head!12607 s!2326) (c!1090407 r!7292)))))

(declare-fun b!6076360 () Bool)

(assert (=> b!6076360 (= e!3708186 (not (= (head!12607 s!2326) (c!1090407 r!7292))))))

(declare-fun b!6076357 () Bool)

(declare-fun res!2524747 () Bool)

(assert (=> b!6076357 (=> res!2524747 e!3708183)))

(assert (=> b!6076357 (= res!2524747 e!3708184)))

(declare-fun res!2524745 () Bool)

(assert (=> b!6076357 (=> (not res!2524745) (not e!3708184))))

(assert (=> b!6076357 (= res!2524745 lt!2326941)))

(declare-fun d!1904974 () Bool)

(assert (=> d!1904974 e!3708185))

(declare-fun c!1090614 () Bool)

(assert (=> d!1904974 (= c!1090614 ((_ is EmptyExpr!16041) r!7292))))

(assert (=> d!1904974 (= lt!2326941 e!3708187)))

(declare-fun c!1090613 () Bool)

(assert (=> d!1904974 (= c!1090613 (isEmpty!36214 s!2326))))

(assert (=> d!1904974 (validRegex!7777 r!7292)))

(assert (=> d!1904974 (= (matchR!8224 r!7292 s!2326) lt!2326941)))

(assert (= (and d!1904974 c!1090613) b!6076353))

(assert (= (and d!1904974 (not c!1090613)) b!6076347))

(assert (= (and d!1904974 c!1090614) b!6076355))

(assert (= (and d!1904974 (not c!1090614)) b!6076352))

(assert (= (and b!6076352 c!1090612) b!6076350))

(assert (= (and b!6076352 (not c!1090612)) b!6076351))

(assert (= (and b!6076351 (not res!2524743)) b!6076357))

(assert (= (and b!6076357 res!2524745) b!6076354))

(assert (= (and b!6076354 res!2524746) b!6076356))

(assert (= (and b!6076356 res!2524744) b!6076359))

(assert (= (and b!6076357 (not res!2524747)) b!6076358))

(assert (= (and b!6076358 res!2524749) b!6076349))

(assert (= (and b!6076349 (not res!2524748)) b!6076348))

(assert (= (and b!6076348 (not res!2524750)) b!6076360))

(assert (= (or b!6076355 b!6076349 b!6076354) bm!500160))

(assert (=> b!6076348 m!6935970))

(assert (=> b!6076348 m!6935970))

(assert (=> b!6076348 m!6935974))

(assert (=> bm!500160 m!6935976))

(assert (=> b!6076360 m!6935980))

(assert (=> b!6076359 m!6935980))

(assert (=> b!6076356 m!6935970))

(assert (=> b!6076356 m!6935970))

(assert (=> b!6076356 m!6935974))

(assert (=> b!6076347 m!6935980))

(assert (=> b!6076347 m!6935980))

(declare-fun m!6936024 () Bool)

(assert (=> b!6076347 m!6936024))

(assert (=> b!6076347 m!6935970))

(assert (=> b!6076347 m!6936024))

(assert (=> b!6076347 m!6935970))

(declare-fun m!6936026 () Bool)

(assert (=> b!6076347 m!6936026))

(declare-fun m!6936028 () Bool)

(assert (=> b!6076353 m!6936028))

(assert (=> d!1904974 m!6935976))

(assert (=> d!1904974 m!6935578))

(assert (=> b!6075651 d!1904974))

(declare-fun d!1904976 () Bool)

(assert (=> d!1904976 (= (matchR!8224 r!7292 s!2326) (matchRSpec!3142 r!7292 s!2326))))

(declare-fun lt!2326944 () Unit!157353)

(declare-fun choose!45273 (Regex!16041 List!64423) Unit!157353)

(assert (=> d!1904976 (= lt!2326944 (choose!45273 r!7292 s!2326))))

(assert (=> d!1904976 (validRegex!7777 r!7292)))

(assert (=> d!1904976 (= (mainMatchTheorem!3142 r!7292 s!2326) lt!2326944)))

(declare-fun bs!1504509 () Bool)

(assert (= bs!1504509 d!1904976))

(assert (=> bs!1504509 m!6935536))

(assert (=> bs!1504509 m!6935534))

(declare-fun m!6936030 () Bool)

(assert (=> bs!1504509 m!6936030))

(assert (=> bs!1504509 m!6935578))

(assert (=> b!6075651 d!1904976))

(declare-fun bs!1504510 () Bool)

(declare-fun d!1904978 () Bool)

(assert (= bs!1504510 (and d!1904978 d!1904864)))

(declare-fun lambda!331261 () Int)

(assert (=> bs!1504510 (= lambda!331261 lambda!331213)))

(declare-fun bs!1504511 () Bool)

(assert (= bs!1504511 (and d!1904978 d!1904868)))

(assert (=> bs!1504511 (= lambda!331261 lambda!331215)))

(declare-fun b!6076381 () Bool)

(declare-fun e!3708206 () Bool)

(declare-fun lt!2326947 () Regex!16041)

(declare-fun head!12608 (List!64422) Regex!16041)

(assert (=> b!6076381 (= e!3708206 (= lt!2326947 (head!12608 (unfocusZipperList!1462 zl!343))))))

(declare-fun b!6076382 () Bool)

(declare-fun e!3708201 () Regex!16041)

(assert (=> b!6076382 (= e!3708201 EmptyLang!16041)))

(declare-fun b!6076383 () Bool)

(assert (=> b!6076383 (= e!3708201 (Union!16041 (h!70746 (unfocusZipperList!1462 zl!343)) (generalisedUnion!1885 (t!377865 (unfocusZipperList!1462 zl!343)))))))

(declare-fun b!6076384 () Bool)

(declare-fun e!3708202 () Bool)

(assert (=> b!6076384 (= e!3708202 e!3708206)))

(declare-fun c!1090623 () Bool)

(declare-fun tail!11693 (List!64422) List!64422)

(assert (=> b!6076384 (= c!1090623 (isEmpty!36209 (tail!11693 (unfocusZipperList!1462 zl!343))))))

(declare-fun b!6076385 () Bool)

(declare-fun e!3708204 () Regex!16041)

(assert (=> b!6076385 (= e!3708204 (h!70746 (unfocusZipperList!1462 zl!343)))))

(declare-fun b!6076386 () Bool)

(declare-fun isUnion!900 (Regex!16041) Bool)

(assert (=> b!6076386 (= e!3708206 (isUnion!900 lt!2326947))))

(declare-fun b!6076387 () Bool)

(declare-fun e!3708205 () Bool)

(assert (=> b!6076387 (= e!3708205 (isEmpty!36209 (t!377865 (unfocusZipperList!1462 zl!343))))))

(declare-fun b!6076388 () Bool)

(declare-fun isEmptyLang!1470 (Regex!16041) Bool)

(assert (=> b!6076388 (= e!3708202 (isEmptyLang!1470 lt!2326947))))

(declare-fun e!3708203 () Bool)

(assert (=> d!1904978 e!3708203))

(declare-fun res!2524756 () Bool)

(assert (=> d!1904978 (=> (not res!2524756) (not e!3708203))))

(assert (=> d!1904978 (= res!2524756 (validRegex!7777 lt!2326947))))

(assert (=> d!1904978 (= lt!2326947 e!3708204)))

(declare-fun c!1090625 () Bool)

(assert (=> d!1904978 (= c!1090625 e!3708205)))

(declare-fun res!2524755 () Bool)

(assert (=> d!1904978 (=> (not res!2524755) (not e!3708205))))

(assert (=> d!1904978 (= res!2524755 ((_ is Cons!64298) (unfocusZipperList!1462 zl!343)))))

(assert (=> d!1904978 (forall!15155 (unfocusZipperList!1462 zl!343) lambda!331261)))

(assert (=> d!1904978 (= (generalisedUnion!1885 (unfocusZipperList!1462 zl!343)) lt!2326947)))

(declare-fun b!6076389 () Bool)

(assert (=> b!6076389 (= e!3708204 e!3708201)))

(declare-fun c!1090624 () Bool)

(assert (=> b!6076389 (= c!1090624 ((_ is Cons!64298) (unfocusZipperList!1462 zl!343)))))

(declare-fun b!6076390 () Bool)

(assert (=> b!6076390 (= e!3708203 e!3708202)))

(declare-fun c!1090626 () Bool)

(assert (=> b!6076390 (= c!1090626 (isEmpty!36209 (unfocusZipperList!1462 zl!343)))))

(assert (= (and d!1904978 res!2524755) b!6076387))

(assert (= (and d!1904978 c!1090625) b!6076385))

(assert (= (and d!1904978 (not c!1090625)) b!6076389))

(assert (= (and b!6076389 c!1090624) b!6076383))

(assert (= (and b!6076389 (not c!1090624)) b!6076382))

(assert (= (and d!1904978 res!2524756) b!6076390))

(assert (= (and b!6076390 c!1090626) b!6076388))

(assert (= (and b!6076390 (not c!1090626)) b!6076384))

(assert (= (and b!6076384 c!1090623) b!6076381))

(assert (= (and b!6076384 (not c!1090623)) b!6076386))

(assert (=> b!6076390 m!6935586))

(declare-fun m!6936032 () Bool)

(assert (=> b!6076390 m!6936032))

(declare-fun m!6936034 () Bool)

(assert (=> b!6076386 m!6936034))

(assert (=> b!6076384 m!6935586))

(declare-fun m!6936036 () Bool)

(assert (=> b!6076384 m!6936036))

(assert (=> b!6076384 m!6936036))

(declare-fun m!6936038 () Bool)

(assert (=> b!6076384 m!6936038))

(declare-fun m!6936040 () Bool)

(assert (=> b!6076387 m!6936040))

(declare-fun m!6936042 () Bool)

(assert (=> b!6076383 m!6936042))

(declare-fun m!6936044 () Bool)

(assert (=> d!1904978 m!6936044))

(assert (=> d!1904978 m!6935586))

(declare-fun m!6936046 () Bool)

(assert (=> d!1904978 m!6936046))

(assert (=> b!6076381 m!6935586))

(declare-fun m!6936048 () Bool)

(assert (=> b!6076381 m!6936048))

(declare-fun m!6936050 () Bool)

(assert (=> b!6076388 m!6936050))

(assert (=> b!6075662 d!1904978))

(declare-fun bs!1504512 () Bool)

(declare-fun d!1904980 () Bool)

(assert (= bs!1504512 (and d!1904980 d!1904864)))

(declare-fun lambda!331264 () Int)

(assert (=> bs!1504512 (= lambda!331264 lambda!331213)))

(declare-fun bs!1504513 () Bool)

(assert (= bs!1504513 (and d!1904980 d!1904868)))

(assert (=> bs!1504513 (= lambda!331264 lambda!331215)))

(declare-fun bs!1504514 () Bool)

(assert (= bs!1504514 (and d!1904980 d!1904978)))

(assert (=> bs!1504514 (= lambda!331264 lambda!331261)))

(declare-fun lt!2326950 () List!64422)

(assert (=> d!1904980 (forall!15155 lt!2326950 lambda!331264)))

(declare-fun e!3708209 () List!64422)

(assert (=> d!1904980 (= lt!2326950 e!3708209)))

(declare-fun c!1090629 () Bool)

(assert (=> d!1904980 (= c!1090629 ((_ is Cons!64300) zl!343))))

(assert (=> d!1904980 (= (unfocusZipperList!1462 zl!343) lt!2326950)))

(declare-fun b!6076395 () Bool)

(assert (=> b!6076395 (= e!3708209 (Cons!64298 (generalisedConcat!1638 (exprs!5925 (h!70748 zl!343))) (unfocusZipperList!1462 (t!377867 zl!343))))))

(declare-fun b!6076396 () Bool)

(assert (=> b!6076396 (= e!3708209 Nil!64298)))

(assert (= (and d!1904980 c!1090629) b!6076395))

(assert (= (and d!1904980 (not c!1090629)) b!6076396))

(declare-fun m!6936052 () Bool)

(assert (=> d!1904980 m!6936052))

(assert (=> b!6076395 m!6935540))

(declare-fun m!6936054 () Bool)

(assert (=> b!6076395 m!6936054))

(assert (=> b!6075662 d!1904980))

(declare-fun bs!1504515 () Bool)

(declare-fun d!1904982 () Bool)

(assert (= bs!1504515 (and d!1904982 d!1904864)))

(declare-fun lambda!331267 () Int)

(assert (=> bs!1504515 (= lambda!331267 lambda!331213)))

(declare-fun bs!1504516 () Bool)

(assert (= bs!1504516 (and d!1904982 d!1904868)))

(assert (=> bs!1504516 (= lambda!331267 lambda!331215)))

(declare-fun bs!1504517 () Bool)

(assert (= bs!1504517 (and d!1904982 d!1904978)))

(assert (=> bs!1504517 (= lambda!331267 lambda!331261)))

(declare-fun bs!1504518 () Bool)

(assert (= bs!1504518 (and d!1904982 d!1904980)))

(assert (=> bs!1504518 (= lambda!331267 lambda!331264)))

(declare-fun b!6076417 () Bool)

(declare-fun e!3708224 () Regex!16041)

(assert (=> b!6076417 (= e!3708224 (Concat!24886 (h!70746 (exprs!5925 (h!70748 zl!343))) (generalisedConcat!1638 (t!377865 (exprs!5925 (h!70748 zl!343))))))))

(declare-fun b!6076418 () Bool)

(declare-fun e!3708225 () Bool)

(declare-fun e!3708223 () Bool)

(assert (=> b!6076418 (= e!3708225 e!3708223)))

(declare-fun c!1090640 () Bool)

(assert (=> b!6076418 (= c!1090640 (isEmpty!36209 (tail!11693 (exprs!5925 (h!70748 zl!343)))))))

(declare-fun b!6076420 () Bool)

(declare-fun e!3708227 () Bool)

(assert (=> b!6076420 (= e!3708227 (isEmpty!36209 (t!377865 (exprs!5925 (h!70748 zl!343)))))))

(declare-fun b!6076421 () Bool)

(declare-fun e!3708226 () Regex!16041)

(assert (=> b!6076421 (= e!3708226 (h!70746 (exprs!5925 (h!70748 zl!343))))))

(declare-fun b!6076422 () Bool)

(declare-fun e!3708222 () Bool)

(assert (=> b!6076422 (= e!3708222 e!3708225)))

(declare-fun c!1090639 () Bool)

(assert (=> b!6076422 (= c!1090639 (isEmpty!36209 (exprs!5925 (h!70748 zl!343))))))

(declare-fun b!6076423 () Bool)

(assert (=> b!6076423 (= e!3708224 EmptyExpr!16041)))

(declare-fun b!6076424 () Bool)

(assert (=> b!6076424 (= e!3708226 e!3708224)))

(declare-fun c!1090638 () Bool)

(assert (=> b!6076424 (= c!1090638 ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343))))))

(declare-fun b!6076425 () Bool)

(declare-fun lt!2326953 () Regex!16041)

(declare-fun isEmptyExpr!1460 (Regex!16041) Bool)

(assert (=> b!6076425 (= e!3708225 (isEmptyExpr!1460 lt!2326953))))

(declare-fun b!6076426 () Bool)

(assert (=> b!6076426 (= e!3708223 (= lt!2326953 (head!12608 (exprs!5925 (h!70748 zl!343)))))))

(declare-fun b!6076419 () Bool)

(declare-fun isConcat!983 (Regex!16041) Bool)

(assert (=> b!6076419 (= e!3708223 (isConcat!983 lt!2326953))))

(assert (=> d!1904982 e!3708222))

(declare-fun res!2524762 () Bool)

(assert (=> d!1904982 (=> (not res!2524762) (not e!3708222))))

(assert (=> d!1904982 (= res!2524762 (validRegex!7777 lt!2326953))))

(assert (=> d!1904982 (= lt!2326953 e!3708226)))

(declare-fun c!1090641 () Bool)

(assert (=> d!1904982 (= c!1090641 e!3708227)))

(declare-fun res!2524761 () Bool)

(assert (=> d!1904982 (=> (not res!2524761) (not e!3708227))))

(assert (=> d!1904982 (= res!2524761 ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343))))))

(assert (=> d!1904982 (forall!15155 (exprs!5925 (h!70748 zl!343)) lambda!331267)))

(assert (=> d!1904982 (= (generalisedConcat!1638 (exprs!5925 (h!70748 zl!343))) lt!2326953)))

(assert (= (and d!1904982 res!2524761) b!6076420))

(assert (= (and d!1904982 c!1090641) b!6076421))

(assert (= (and d!1904982 (not c!1090641)) b!6076424))

(assert (= (and b!6076424 c!1090638) b!6076417))

(assert (= (and b!6076424 (not c!1090638)) b!6076423))

(assert (= (and d!1904982 res!2524762) b!6076422))

(assert (= (and b!6076422 c!1090639) b!6076425))

(assert (= (and b!6076422 (not c!1090639)) b!6076418))

(assert (= (and b!6076418 c!1090640) b!6076426))

(assert (= (and b!6076418 (not c!1090640)) b!6076419))

(declare-fun m!6936056 () Bool)

(assert (=> b!6076418 m!6936056))

(assert (=> b!6076418 m!6936056))

(declare-fun m!6936058 () Bool)

(assert (=> b!6076418 m!6936058))

(declare-fun m!6936060 () Bool)

(assert (=> b!6076426 m!6936060))

(assert (=> b!6076420 m!6935554))

(declare-fun m!6936062 () Bool)

(assert (=> b!6076417 m!6936062))

(declare-fun m!6936064 () Bool)

(assert (=> d!1904982 m!6936064))

(declare-fun m!6936066 () Bool)

(assert (=> d!1904982 m!6936066))

(declare-fun m!6936068 () Bool)

(assert (=> b!6076425 m!6936068))

(declare-fun m!6936070 () Bool)

(assert (=> b!6076419 m!6936070))

(declare-fun m!6936072 () Bool)

(assert (=> b!6076422 m!6936072))

(assert (=> b!6075661 d!1904982))

(declare-fun condSetEmpty!41088 () Bool)

(assert (=> setNonEmpty!41082 (= condSetEmpty!41088 (= setRest!41082 ((as const (Array Context!10850 Bool)) false)))))

(declare-fun setRes!41088 () Bool)

(assert (=> setNonEmpty!41082 (= tp!1693550 setRes!41088)))

(declare-fun setIsEmpty!41088 () Bool)

(assert (=> setIsEmpty!41088 setRes!41088))

(declare-fun e!3708230 () Bool)

(declare-fun setNonEmpty!41088 () Bool)

(declare-fun setElem!41088 () Context!10850)

(declare-fun tp!1693615 () Bool)

(assert (=> setNonEmpty!41088 (= setRes!41088 (and tp!1693615 (inv!83349 setElem!41088) e!3708230))))

(declare-fun setRest!41088 () (InoxSet Context!10850))

(assert (=> setNonEmpty!41088 (= setRest!41082 ((_ map or) (store ((as const (Array Context!10850 Bool)) false) setElem!41088 true) setRest!41088))))

(declare-fun b!6076431 () Bool)

(declare-fun tp!1693614 () Bool)

(assert (=> b!6076431 (= e!3708230 tp!1693614)))

(assert (= (and setNonEmpty!41082 condSetEmpty!41088) setIsEmpty!41088))

(assert (= (and setNonEmpty!41082 (not condSetEmpty!41088)) setNonEmpty!41088))

(assert (= setNonEmpty!41088 b!6076431))

(declare-fun m!6936074 () Bool)

(assert (=> setNonEmpty!41088 m!6936074))

(declare-fun b!6076445 () Bool)

(declare-fun e!3708233 () Bool)

(declare-fun tp!1693630 () Bool)

(declare-fun tp!1693628 () Bool)

(assert (=> b!6076445 (= e!3708233 (and tp!1693630 tp!1693628))))

(declare-fun b!6076442 () Bool)

(assert (=> b!6076442 (= e!3708233 tp_is_empty!41335)))

(declare-fun b!6076443 () Bool)

(declare-fun tp!1693627 () Bool)

(declare-fun tp!1693629 () Bool)

(assert (=> b!6076443 (= e!3708233 (and tp!1693627 tp!1693629))))

(assert (=> b!6075658 (= tp!1693546 e!3708233)))

(declare-fun b!6076444 () Bool)

(declare-fun tp!1693626 () Bool)

(assert (=> b!6076444 (= e!3708233 tp!1693626)))

(assert (= (and b!6075658 ((_ is ElementMatch!16041) (regOne!32594 r!7292))) b!6076442))

(assert (= (and b!6075658 ((_ is Concat!24886) (regOne!32594 r!7292))) b!6076443))

(assert (= (and b!6075658 ((_ is Star!16041) (regOne!32594 r!7292))) b!6076444))

(assert (= (and b!6075658 ((_ is Union!16041) (regOne!32594 r!7292))) b!6076445))

(declare-fun b!6076449 () Bool)

(declare-fun e!3708234 () Bool)

(declare-fun tp!1693635 () Bool)

(declare-fun tp!1693633 () Bool)

(assert (=> b!6076449 (= e!3708234 (and tp!1693635 tp!1693633))))

(declare-fun b!6076446 () Bool)

(assert (=> b!6076446 (= e!3708234 tp_is_empty!41335)))

(declare-fun b!6076447 () Bool)

(declare-fun tp!1693632 () Bool)

(declare-fun tp!1693634 () Bool)

(assert (=> b!6076447 (= e!3708234 (and tp!1693632 tp!1693634))))

(assert (=> b!6075658 (= tp!1693551 e!3708234)))

(declare-fun b!6076448 () Bool)

(declare-fun tp!1693631 () Bool)

(assert (=> b!6076448 (= e!3708234 tp!1693631)))

(assert (= (and b!6075658 ((_ is ElementMatch!16041) (regTwo!32594 r!7292))) b!6076446))

(assert (= (and b!6075658 ((_ is Concat!24886) (regTwo!32594 r!7292))) b!6076447))

(assert (= (and b!6075658 ((_ is Star!16041) (regTwo!32594 r!7292))) b!6076448))

(assert (= (and b!6075658 ((_ is Union!16041) (regTwo!32594 r!7292))) b!6076449))

(declare-fun b!6076453 () Bool)

(declare-fun e!3708235 () Bool)

(declare-fun tp!1693640 () Bool)

(declare-fun tp!1693638 () Bool)

(assert (=> b!6076453 (= e!3708235 (and tp!1693640 tp!1693638))))

(declare-fun b!6076450 () Bool)

(assert (=> b!6076450 (= e!3708235 tp_is_empty!41335)))

(declare-fun b!6076451 () Bool)

(declare-fun tp!1693637 () Bool)

(declare-fun tp!1693639 () Bool)

(assert (=> b!6076451 (= e!3708235 (and tp!1693637 tp!1693639))))

(assert (=> b!6075643 (= tp!1693543 e!3708235)))

(declare-fun b!6076452 () Bool)

(declare-fun tp!1693636 () Bool)

(assert (=> b!6076452 (= e!3708235 tp!1693636)))

(assert (= (and b!6075643 ((_ is ElementMatch!16041) (regOne!32595 r!7292))) b!6076450))

(assert (= (and b!6075643 ((_ is Concat!24886) (regOne!32595 r!7292))) b!6076451))

(assert (= (and b!6075643 ((_ is Star!16041) (regOne!32595 r!7292))) b!6076452))

(assert (= (and b!6075643 ((_ is Union!16041) (regOne!32595 r!7292))) b!6076453))

(declare-fun b!6076457 () Bool)

(declare-fun e!3708236 () Bool)

(declare-fun tp!1693645 () Bool)

(declare-fun tp!1693643 () Bool)

(assert (=> b!6076457 (= e!3708236 (and tp!1693645 tp!1693643))))

(declare-fun b!6076454 () Bool)

(assert (=> b!6076454 (= e!3708236 tp_is_empty!41335)))

(declare-fun b!6076455 () Bool)

(declare-fun tp!1693642 () Bool)

(declare-fun tp!1693644 () Bool)

(assert (=> b!6076455 (= e!3708236 (and tp!1693642 tp!1693644))))

(assert (=> b!6075643 (= tp!1693544 e!3708236)))

(declare-fun b!6076456 () Bool)

(declare-fun tp!1693641 () Bool)

(assert (=> b!6076456 (= e!3708236 tp!1693641)))

(assert (= (and b!6075643 ((_ is ElementMatch!16041) (regTwo!32595 r!7292))) b!6076454))

(assert (= (and b!6075643 ((_ is Concat!24886) (regTwo!32595 r!7292))) b!6076455))

(assert (= (and b!6075643 ((_ is Star!16041) (regTwo!32595 r!7292))) b!6076456))

(assert (= (and b!6075643 ((_ is Union!16041) (regTwo!32595 r!7292))) b!6076457))

(declare-fun b!6076462 () Bool)

(declare-fun e!3708239 () Bool)

(declare-fun tp!1693648 () Bool)

(assert (=> b!6076462 (= e!3708239 (and tp_is_empty!41335 tp!1693648))))

(assert (=> b!6075659 (= tp!1693545 e!3708239)))

(assert (= (and b!6075659 ((_ is Cons!64299) (t!377866 s!2326))) b!6076462))

(declare-fun b!6076466 () Bool)

(declare-fun e!3708240 () Bool)

(declare-fun tp!1693653 () Bool)

(declare-fun tp!1693651 () Bool)

(assert (=> b!6076466 (= e!3708240 (and tp!1693653 tp!1693651))))

(declare-fun b!6076463 () Bool)

(assert (=> b!6076463 (= e!3708240 tp_is_empty!41335)))

(declare-fun b!6076464 () Bool)

(declare-fun tp!1693650 () Bool)

(declare-fun tp!1693652 () Bool)

(assert (=> b!6076464 (= e!3708240 (and tp!1693650 tp!1693652))))

(assert (=> b!6075644 (= tp!1693542 e!3708240)))

(declare-fun b!6076465 () Bool)

(declare-fun tp!1693649 () Bool)

(assert (=> b!6076465 (= e!3708240 tp!1693649)))

(assert (= (and b!6075644 ((_ is ElementMatch!16041) (reg!16370 r!7292))) b!6076463))

(assert (= (and b!6075644 ((_ is Concat!24886) (reg!16370 r!7292))) b!6076464))

(assert (= (and b!6075644 ((_ is Star!16041) (reg!16370 r!7292))) b!6076465))

(assert (= (and b!6075644 ((_ is Union!16041) (reg!16370 r!7292))) b!6076466))

(declare-fun b!6076471 () Bool)

(declare-fun e!3708243 () Bool)

(declare-fun tp!1693658 () Bool)

(declare-fun tp!1693659 () Bool)

(assert (=> b!6076471 (= e!3708243 (and tp!1693658 tp!1693659))))

(assert (=> b!6075650 (= tp!1693548 e!3708243)))

(assert (= (and b!6075650 ((_ is Cons!64298) (exprs!5925 (h!70748 zl!343)))) b!6076471))

(declare-fun b!6076472 () Bool)

(declare-fun e!3708244 () Bool)

(declare-fun tp!1693660 () Bool)

(declare-fun tp!1693661 () Bool)

(assert (=> b!6076472 (= e!3708244 (and tp!1693660 tp!1693661))))

(assert (=> b!6075665 (= tp!1693547 e!3708244)))

(assert (= (and b!6075665 ((_ is Cons!64298) (exprs!5925 setElem!41082))) b!6076472))

(declare-fun b!6076480 () Bool)

(declare-fun e!3708250 () Bool)

(declare-fun tp!1693666 () Bool)

(assert (=> b!6076480 (= e!3708250 tp!1693666)))

(declare-fun tp!1693667 () Bool)

(declare-fun b!6076479 () Bool)

(declare-fun e!3708249 () Bool)

(assert (=> b!6076479 (= e!3708249 (and (inv!83349 (h!70748 (t!377867 zl!343))) e!3708250 tp!1693667))))

(assert (=> b!6075656 (= tp!1693549 e!3708249)))

(assert (= b!6076479 b!6076480))

(assert (= (and b!6075656 ((_ is Cons!64300) (t!377867 zl!343))) b!6076479))

(declare-fun m!6936076 () Bool)

(assert (=> b!6076479 m!6936076))

(declare-fun b_lambda!231147 () Bool)

(assert (= b_lambda!231133 (or b!6075648 b_lambda!231147)))

(declare-fun bs!1504519 () Bool)

(declare-fun d!1904984 () Bool)

(assert (= bs!1504519 (and d!1904984 b!6075648)))

(assert (=> bs!1504519 (= (dynLambda!25285 lambda!331181 lt!2326825) (derivationStepZipperUp!1217 lt!2326825 (h!70747 s!2326)))))

(assert (=> bs!1504519 m!6935562))

(assert (=> d!1904848 d!1904984))

(declare-fun b_lambda!231149 () Bool)

(assert (= b_lambda!231131 (or b!6075648 b_lambda!231149)))

(declare-fun bs!1504520 () Bool)

(declare-fun d!1904986 () Bool)

(assert (= bs!1504520 (and d!1904986 b!6075648)))

(assert (=> bs!1504520 (= (dynLambda!25285 lambda!331181 lt!2326828) (derivationStepZipperUp!1217 lt!2326828 (h!70747 s!2326)))))

(assert (=> bs!1504520 m!6935560))

(assert (=> d!1904826 d!1904986))

(declare-fun b_lambda!231151 () Bool)

(assert (= b_lambda!231129 (or b!6075648 b_lambda!231151)))

(declare-fun bs!1504521 () Bool)

(declare-fun d!1904988 () Bool)

(assert (= bs!1504521 (and d!1904988 b!6075648)))

(assert (=> bs!1504521 (= (dynLambda!25285 lambda!331181 (h!70748 zl!343)) (derivationStepZipperUp!1217 (h!70748 zl!343) (h!70747 s!2326)))))

(assert (=> bs!1504521 m!6935522))

(assert (=> d!1904824 d!1904988))

(check-sat (not d!1904830) (not d!1904890) (not bm!500142) (not d!1904868) (not bm!500076) (not b!6076464) (not b!6076356) (not b!6075861) (not bs!1504519) (not b!6075950) (not d!1904934) (not b!6076447) (not bm!500069) (not b!6076339) (not b!6076451) (not b!6076425) (not b!6076029) (not b!6076359) (not b!6076387) (not b!6076457) (not b!6076462) (not b!6076422) (not setNonEmpty!41088) (not b!6076417) (not b!6076024) (not b!6076023) (not bm!500073) (not bm!500070) (not b!6076245) (not b!6076383) (not d!1904948) (not b!6075683) (not b!6075819) (not b!6075834) (not d!1904832) (not b!6076456) (not d!1904976) (not b!6076449) (not bm!500159) (not b!6076381) (not bm!500079) (not bm!500160) (not b!6076390) (not b!6076419) (not b!6076448) (not b!6076420) tp_is_empty!41335 (not b!6076443) (not b!6076444) (not b!6076466) (not d!1904978) (not b!6075832) (not d!1904826) (not b!6076360) (not b!6076418) (not b!6076384) (not b!6076246) (not d!1904982) (not b!6076160) (not b!6076471) (not b_lambda!231147) (not d!1904818) (not b!6076347) (not bm!500063) (not b!6076426) (not d!1904960) (not b!6075757) (not b!6076395) (not b!6076341) (not b!6076028) (not b!6076472) (not d!1904956) (not bm!500062) (not bs!1504521) (not d!1904848) (not b!6075742) (not bm!500141) (not d!1904964) (not b!6076027) (not d!1904820) (not d!1904828) (not d!1904824) (not b!6075692) (not b!6076219) (not b!6076479) (not b!6076222) (not b!6076465) (not b!6075872) (not b_lambda!231149) (not d!1904952) (not b!6076353) (not b!6075688) (not d!1904922) (not b!6075762) (not d!1904876) (not b!6076225) (not d!1904924) (not bm!500048) (not b!6076480) (not bm!500067) (not bm!500080) (not b!6075687) (not b!6076386) (not b!6075817) (not b!6076348) (not b!6076226) (not b!6076213) (not b!6076214) (not b!6076445) (not bm!500152) (not bm!500075) (not bm!500158) (not b!6076388) (not b!6076452) (not b!6076431) (not b_lambda!231151) (not b!6075876) (not b!6076453) (not bm!500109) (not bs!1504520) (not b!6076455) (not bm!500047) (not bm!500108) (not d!1904864) (not bm!500066) (not d!1904980) (not d!1904920) (not b!6075753) (not b!6076303) (not d!1904974) (not b!6076031))
(check-sat)
