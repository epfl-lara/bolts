; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563938 () Bool)

(assert start!563938)

(declare-fun b!5356149 () Bool)

(assert (=> b!5356149 true))

(assert (=> b!5356149 true))

(declare-fun lambda!275504 () Int)

(declare-fun lambda!275503 () Int)

(assert (=> b!5356149 (not (= lambda!275504 lambda!275503))))

(assert (=> b!5356149 true))

(assert (=> b!5356149 true))

(declare-fun b!5356152 () Bool)

(assert (=> b!5356152 true))

(declare-fun b!5356148 () Bool)

(declare-datatypes ((Unit!153730 0))(
  ( (Unit!153731) )
))
(declare-fun e!3324552 () Unit!153730)

(declare-fun Unit!153732 () Unit!153730)

(assert (=> b!5356148 (= e!3324552 Unit!153732)))

(declare-datatypes ((C!30376 0))(
  ( (C!30377 (val!24890 Int)) )
))
(declare-datatypes ((List!61458 0))(
  ( (Nil!61334) (Cons!61334 (h!67782 C!30376) (t!374679 List!61458)) )
))
(declare-fun s!2326 () List!61458)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15053 0))(
  ( (ElementMatch!15053 (c!932579 C!30376)) (Concat!23898 (regOne!30618 Regex!15053) (regTwo!30618 Regex!15053)) (EmptyExpr!15053) (Star!15053 (reg!15382 Regex!15053)) (EmptyLang!15053) (Union!15053 (regOne!30619 Regex!15053) (regTwo!30619 Regex!15053)) )
))
(declare-datatypes ((List!61459 0))(
  ( (Nil!61335) (Cons!61335 (h!67783 Regex!15053) (t!374680 List!61459)) )
))
(declare-datatypes ((Context!8874 0))(
  ( (Context!8875 (exprs!4937 List!61459)) )
))
(declare-fun lt!2182445 () (InoxSet Context!8874))

(declare-fun lt!2182432 () Unit!153730)

(declare-fun lt!2182427 () (InoxSet Context!8874))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!290 ((InoxSet Context!8874) (InoxSet Context!8874) List!61458) Unit!153730)

(assert (=> b!5356148 (= lt!2182432 (lemmaZipperConcatMatchesSameAsBothZippers!290 lt!2182427 lt!2182445 (t!374679 s!2326)))))

(declare-fun res!2272657 () Bool)

(declare-fun matchZipper!1297 ((InoxSet Context!8874) List!61458) Bool)

(assert (=> b!5356148 (= res!2272657 (matchZipper!1297 lt!2182427 (t!374679 s!2326)))))

(declare-fun e!3324542 () Bool)

(assert (=> b!5356148 (=> res!2272657 e!3324542)))

(assert (=> b!5356148 (= (matchZipper!1297 ((_ map or) lt!2182427 lt!2182445) (t!374679 s!2326)) e!3324542)))

(declare-fun e!3324546 () Bool)

(declare-fun e!3324544 () Bool)

(assert (=> b!5356149 (= e!3324546 e!3324544)))

(declare-fun res!2272661 () Bool)

(assert (=> b!5356149 (=> res!2272661 e!3324544)))

(declare-fun lt!2182423 () Bool)

(declare-fun lt!2182428 () Bool)

(get-info :version)

(assert (=> b!5356149 (= res!2272661 (or (not (= lt!2182428 lt!2182423)) ((_ is Nil!61334) s!2326)))))

(declare-fun Exists!2234 (Int) Bool)

(assert (=> b!5356149 (= (Exists!2234 lambda!275503) (Exists!2234 lambda!275504))))

(declare-fun lt!2182438 () Unit!153730)

(declare-fun r!7292 () Regex!15053)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!888 (Regex!15053 Regex!15053 List!61458) Unit!153730)

(assert (=> b!5356149 (= lt!2182438 (lemmaExistCutMatchRandMatchRSpecEquivalent!888 (regOne!30618 r!7292) (regTwo!30618 r!7292) s!2326))))

(assert (=> b!5356149 (= lt!2182423 (Exists!2234 lambda!275503))))

(declare-datatypes ((tuple2!64504 0))(
  ( (tuple2!64505 (_1!35555 List!61458) (_2!35555 List!61458)) )
))
(declare-datatypes ((Option!15164 0))(
  ( (None!15163) (Some!15163 (v!51192 tuple2!64504)) )
))
(declare-fun isDefined!11867 (Option!15164) Bool)

(declare-fun findConcatSeparation!1578 (Regex!15053 Regex!15053 List!61458 List!61458 List!61458) Option!15164)

(assert (=> b!5356149 (= lt!2182423 (isDefined!11867 (findConcatSeparation!1578 (regOne!30618 r!7292) (regTwo!30618 r!7292) Nil!61334 s!2326 s!2326)))))

(declare-fun lt!2182451 () Unit!153730)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1342 (Regex!15053 Regex!15053 List!61458) Unit!153730)

(assert (=> b!5356149 (= lt!2182451 (lemmaFindConcatSeparationEquivalentToExists!1342 (regOne!30618 r!7292) (regTwo!30618 r!7292) s!2326))))

(declare-fun tp!1487689 () Bool)

(declare-datatypes ((List!61460 0))(
  ( (Nil!61336) (Cons!61336 (h!67784 Context!8874) (t!374681 List!61460)) )
))
(declare-fun zl!343 () List!61460)

(declare-fun b!5356150 () Bool)

(declare-fun e!3324537 () Bool)

(declare-fun e!3324551 () Bool)

(declare-fun inv!80879 (Context!8874) Bool)

(assert (=> b!5356150 (= e!3324551 (and (inv!80879 (h!67784 zl!343)) e!3324537 tp!1487689))))

(declare-fun b!5356151 () Bool)

(declare-fun e!3324545 () Bool)

(assert (=> b!5356151 (= e!3324545 (not e!3324546))))

(declare-fun res!2272659 () Bool)

(assert (=> b!5356151 (=> res!2272659 e!3324546)))

(assert (=> b!5356151 (= res!2272659 (not ((_ is Cons!61336) zl!343)))))

(declare-fun matchRSpec!2156 (Regex!15053 List!61458) Bool)

(assert (=> b!5356151 (= lt!2182428 (matchRSpec!2156 r!7292 s!2326))))

(declare-fun matchR!7238 (Regex!15053 List!61458) Bool)

(assert (=> b!5356151 (= lt!2182428 (matchR!7238 r!7292 s!2326))))

(declare-fun lt!2182430 () Unit!153730)

(declare-fun mainMatchTheorem!2156 (Regex!15053 List!61458) Unit!153730)

(assert (=> b!5356151 (= lt!2182430 (mainMatchTheorem!2156 r!7292 s!2326))))

(declare-fun e!3324547 () Bool)

(assert (=> b!5356152 (= e!3324544 e!3324547)))

(declare-fun res!2272643 () Bool)

(assert (=> b!5356152 (=> res!2272643 e!3324547)))

(assert (=> b!5356152 (= res!2272643 (or (and ((_ is ElementMatch!15053) (regOne!30618 r!7292)) (= (c!932579 (regOne!30618 r!7292)) (h!67782 s!2326))) ((_ is Union!15053) (regOne!30618 r!7292))))))

(declare-fun lt!2182447 () Unit!153730)

(assert (=> b!5356152 (= lt!2182447 e!3324552)))

(declare-fun c!932578 () Bool)

(declare-fun nullable!5222 (Regex!15053) Bool)

(assert (=> b!5356152 (= c!932578 (nullable!5222 (h!67783 (exprs!4937 (h!67784 zl!343)))))))

(declare-fun lambda!275505 () Int)

(declare-fun z!1189 () (InoxSet Context!8874))

(declare-fun flatMap!780 ((InoxSet Context!8874) Int) (InoxSet Context!8874))

(declare-fun derivationStepZipperUp!425 (Context!8874 C!30376) (InoxSet Context!8874))

(assert (=> b!5356152 (= (flatMap!780 z!1189 lambda!275505) (derivationStepZipperUp!425 (h!67784 zl!343) (h!67782 s!2326)))))

(declare-fun lt!2182433 () Unit!153730)

(declare-fun lemmaFlatMapOnSingletonSet!312 ((InoxSet Context!8874) Context!8874 Int) Unit!153730)

(assert (=> b!5356152 (= lt!2182433 (lemmaFlatMapOnSingletonSet!312 z!1189 (h!67784 zl!343) lambda!275505))))

(declare-fun lt!2182441 () Context!8874)

(assert (=> b!5356152 (= lt!2182445 (derivationStepZipperUp!425 lt!2182441 (h!67782 s!2326)))))

(declare-fun derivationStepZipperDown!501 (Regex!15053 Context!8874 C!30376) (InoxSet Context!8874))

(assert (=> b!5356152 (= lt!2182427 (derivationStepZipperDown!501 (h!67783 (exprs!4937 (h!67784 zl!343))) lt!2182441 (h!67782 s!2326)))))

(assert (=> b!5356152 (= lt!2182441 (Context!8875 (t!374680 (exprs!4937 (h!67784 zl!343)))))))

(declare-fun lt!2182424 () (InoxSet Context!8874))

(assert (=> b!5356152 (= lt!2182424 (derivationStepZipperUp!425 (Context!8875 (Cons!61335 (h!67783 (exprs!4937 (h!67784 zl!343))) (t!374680 (exprs!4937 (h!67784 zl!343))))) (h!67782 s!2326)))))

(declare-fun b!5356153 () Bool)

(declare-fun e!3324553 () Bool)

(assert (=> b!5356153 (= e!3324553 true)))

(declare-fun lt!2182425 () Regex!15053)

(assert (=> b!5356153 (= (matchR!7238 lt!2182425 s!2326) (matchRSpec!2156 lt!2182425 s!2326))))

(declare-fun lt!2182439 () Unit!153730)

(assert (=> b!5356153 (= lt!2182439 (mainMatchTheorem!2156 lt!2182425 s!2326))))

(declare-fun b!5356154 () Bool)

(declare-fun res!2272654 () Bool)

(declare-fun e!3324541 () Bool)

(assert (=> b!5356154 (=> res!2272654 e!3324541)))

(declare-fun lt!2182444 () Regex!15053)

(assert (=> b!5356154 (= res!2272654 (not (= lt!2182444 r!7292)))))

(declare-fun b!5356155 () Bool)

(declare-fun res!2272656 () Bool)

(assert (=> b!5356155 (=> res!2272656 e!3324546)))

(declare-fun generalisedUnion!982 (List!61459) Regex!15053)

(declare-fun unfocusZipperList!495 (List!61460) List!61459)

(assert (=> b!5356155 (= res!2272656 (not (= r!7292 (generalisedUnion!982 (unfocusZipperList!495 zl!343)))))))

(declare-fun b!5356156 () Bool)

(declare-fun res!2272651 () Bool)

(assert (=> b!5356156 (=> res!2272651 e!3324541)))

(declare-fun lt!2182446 () (InoxSet Context!8874))

(declare-fun lt!2182434 () (InoxSet Context!8874))

(assert (=> b!5356156 (= res!2272651 (not (= (matchZipper!1297 lt!2182434 s!2326) (matchZipper!1297 lt!2182446 (t!374679 s!2326)))))))

(declare-fun b!5356157 () Bool)

(assert (=> b!5356157 (= e!3324542 (matchZipper!1297 lt!2182445 (t!374679 s!2326)))))

(declare-fun b!5356158 () Bool)

(declare-fun e!3324549 () Bool)

(declare-fun tp_is_empty!39359 () Bool)

(declare-fun tp!1487692 () Bool)

(assert (=> b!5356158 (= e!3324549 (and tp_is_empty!39359 tp!1487692))))

(declare-fun b!5356159 () Bool)

(declare-fun res!2272650 () Bool)

(assert (=> b!5356159 (=> res!2272650 e!3324547)))

(declare-fun e!3324548 () Bool)

(assert (=> b!5356159 (= res!2272650 e!3324548)))

(declare-fun res!2272653 () Bool)

(assert (=> b!5356159 (=> (not res!2272653) (not e!3324548))))

(assert (=> b!5356159 (= res!2272653 ((_ is Concat!23898) (regOne!30618 r!7292)))))

(declare-fun b!5356160 () Bool)

(declare-fun res!2272640 () Bool)

(assert (=> b!5356160 (=> res!2272640 e!3324544)))

(declare-fun isEmpty!33307 (List!61459) Bool)

(assert (=> b!5356160 (= res!2272640 (isEmpty!33307 (t!374680 (exprs!4937 (h!67784 zl!343)))))))

(declare-fun b!5356161 () Bool)

(declare-fun e!3324539 () Bool)

(declare-fun tp!1487695 () Bool)

(declare-fun tp!1487697 () Bool)

(assert (=> b!5356161 (= e!3324539 (and tp!1487695 tp!1487697))))

(declare-fun b!5356162 () Bool)

(declare-fun e!3324550 () Bool)

(declare-fun e!3324543 () Bool)

(assert (=> b!5356162 (= e!3324550 e!3324543)))

(declare-fun res!2272660 () Bool)

(assert (=> b!5356162 (=> res!2272660 e!3324543)))

(declare-fun lt!2182431 () Context!8874)

(declare-fun unfocusZipper!795 (List!61460) Regex!15053)

(assert (=> b!5356162 (= res!2272660 (not (= (unfocusZipper!795 (Cons!61336 lt!2182431 Nil!61336)) lt!2182425)))))

(declare-fun lt!2182452 () Regex!15053)

(assert (=> b!5356162 (= lt!2182425 (Concat!23898 (reg!15382 (regOne!30618 r!7292)) lt!2182452))))

(declare-fun b!5356163 () Bool)

(declare-fun tp!1487694 () Bool)

(assert (=> b!5356163 (= e!3324537 tp!1487694)))

(declare-fun b!5356164 () Bool)

(declare-fun e!3324540 () Bool)

(declare-fun tp!1487691 () Bool)

(assert (=> b!5356164 (= e!3324540 tp!1487691)))

(declare-fun b!5356165 () Bool)

(declare-fun tp!1487696 () Bool)

(declare-fun tp!1487693 () Bool)

(assert (=> b!5356165 (= e!3324539 (and tp!1487696 tp!1487693))))

(declare-fun b!5356166 () Bool)

(declare-fun res!2272652 () Bool)

(assert (=> b!5356166 (=> res!2272652 e!3324546)))

(assert (=> b!5356166 (= res!2272652 (or ((_ is EmptyExpr!15053) r!7292) ((_ is EmptyLang!15053) r!7292) ((_ is ElementMatch!15053) r!7292) ((_ is Union!15053) r!7292) (not ((_ is Concat!23898) r!7292))))))

(declare-fun b!5356167 () Bool)

(declare-fun res!2272647 () Bool)

(declare-fun e!3324538 () Bool)

(assert (=> b!5356167 (=> (not res!2272647) (not e!3324538))))

(declare-fun toList!8837 ((InoxSet Context!8874)) List!61460)

(assert (=> b!5356167 (= res!2272647 (= (toList!8837 z!1189) zl!343))))

(declare-fun b!5356168 () Bool)

(declare-fun res!2272645 () Bool)

(assert (=> b!5356168 (=> res!2272645 e!3324546)))

(declare-fun generalisedConcat!722 (List!61459) Regex!15053)

(assert (=> b!5356168 (= res!2272645 (not (= r!7292 (generalisedConcat!722 (exprs!4937 (h!67784 zl!343))))))))

(declare-fun setElem!34639 () Context!8874)

(declare-fun setRes!34639 () Bool)

(declare-fun setNonEmpty!34639 () Bool)

(declare-fun tp!1487688 () Bool)

(assert (=> setNonEmpty!34639 (= setRes!34639 (and tp!1487688 (inv!80879 setElem!34639) e!3324540))))

(declare-fun setRest!34639 () (InoxSet Context!8874))

(assert (=> setNonEmpty!34639 (= z!1189 ((_ map or) (store ((as const (Array Context!8874 Bool)) false) setElem!34639 true) setRest!34639))))

(declare-fun b!5356169 () Bool)

(assert (=> b!5356169 (= e!3324538 e!3324545)))

(declare-fun res!2272642 () Bool)

(assert (=> b!5356169 (=> (not res!2272642) (not e!3324545))))

(assert (=> b!5356169 (= res!2272642 (= r!7292 lt!2182444))))

(assert (=> b!5356169 (= lt!2182444 (unfocusZipper!795 zl!343))))

(declare-fun b!5356170 () Bool)

(declare-fun e!3324554 () Bool)

(assert (=> b!5356170 (= e!3324554 e!3324541)))

(declare-fun res!2272662 () Bool)

(assert (=> b!5356170 (=> res!2272662 e!3324541)))

(declare-fun lt!2182448 () (InoxSet Context!8874))

(assert (=> b!5356170 (= res!2272662 (not (= lt!2182446 lt!2182448)))))

(assert (=> b!5356170 (= (flatMap!780 lt!2182434 lambda!275505) (derivationStepZipperUp!425 lt!2182431 (h!67782 s!2326)))))

(declare-fun lt!2182437 () Unit!153730)

(assert (=> b!5356170 (= lt!2182437 (lemmaFlatMapOnSingletonSet!312 lt!2182434 lt!2182431 lambda!275505))))

(declare-fun lt!2182453 () (InoxSet Context!8874))

(assert (=> b!5356170 (= lt!2182453 (derivationStepZipperUp!425 lt!2182431 (h!67782 s!2326)))))

(declare-fun derivationStepZipper!1292 ((InoxSet Context!8874) C!30376) (InoxSet Context!8874))

(assert (=> b!5356170 (= lt!2182446 (derivationStepZipper!1292 lt!2182434 (h!67782 s!2326)))))

(assert (=> b!5356170 (= lt!2182434 (store ((as const (Array Context!8874 Bool)) false) lt!2182431 true))))

(declare-fun lt!2182440 () List!61459)

(assert (=> b!5356170 (= lt!2182431 (Context!8875 (Cons!61335 (reg!15382 (regOne!30618 r!7292)) lt!2182440)))))

(declare-fun b!5356171 () Bool)

(declare-fun tp!1487690 () Bool)

(assert (=> b!5356171 (= e!3324539 tp!1487690)))

(declare-fun b!5356172 () Bool)

(assert (=> b!5356172 (= e!3324541 e!3324550)))

(declare-fun res!2272663 () Bool)

(assert (=> b!5356172 (=> res!2272663 e!3324550)))

(assert (=> b!5356172 (= res!2272663 (not (= r!7292 lt!2182452)))))

(declare-fun lt!2182443 () Regex!15053)

(assert (=> b!5356172 (= lt!2182452 (Concat!23898 lt!2182443 (regTwo!30618 r!7292)))))

(declare-fun b!5356173 () Bool)

(declare-fun res!2272655 () Bool)

(assert (=> b!5356173 (=> res!2272655 e!3324546)))

(declare-fun isEmpty!33308 (List!61460) Bool)

(assert (=> b!5356173 (= res!2272655 (not (isEmpty!33308 (t!374681 zl!343))))))

(declare-fun b!5356174 () Bool)

(declare-fun Unit!153733 () Unit!153730)

(assert (=> b!5356174 (= e!3324552 Unit!153733)))

(declare-fun b!5356175 () Bool)

(assert (=> b!5356175 (= e!3324547 e!3324554)))

(declare-fun res!2272648 () Bool)

(assert (=> b!5356175 (=> res!2272648 e!3324554)))

(assert (=> b!5356175 (= res!2272648 (not (= lt!2182427 lt!2182448)))))

(declare-fun lt!2182436 () Context!8874)

(assert (=> b!5356175 (= lt!2182448 (derivationStepZipperDown!501 (reg!15382 (regOne!30618 r!7292)) lt!2182436 (h!67782 s!2326)))))

(assert (=> b!5356175 (= lt!2182436 (Context!8875 lt!2182440))))

(assert (=> b!5356175 (= lt!2182440 (Cons!61335 lt!2182443 (t!374680 (exprs!4937 (h!67784 zl!343)))))))

(assert (=> b!5356175 (= lt!2182443 (Star!15053 (reg!15382 (regOne!30618 r!7292))))))

(declare-fun res!2272641 () Bool)

(assert (=> start!563938 (=> (not res!2272641) (not e!3324538))))

(declare-fun validRegex!6789 (Regex!15053) Bool)

(assert (=> start!563938 (= res!2272641 (validRegex!6789 r!7292))))

(assert (=> start!563938 e!3324538))

(assert (=> start!563938 e!3324539))

(declare-fun condSetEmpty!34639 () Bool)

(assert (=> start!563938 (= condSetEmpty!34639 (= z!1189 ((as const (Array Context!8874 Bool)) false)))))

(assert (=> start!563938 setRes!34639))

(assert (=> start!563938 e!3324551))

(assert (=> start!563938 e!3324549))

(declare-fun b!5356176 () Bool)

(declare-fun res!2272658 () Bool)

(assert (=> b!5356176 (=> res!2272658 e!3324553)))

(assert (=> b!5356176 (= res!2272658 (not (= (unfocusZipper!795 (Cons!61336 lt!2182436 Nil!61336)) lt!2182452)))))

(declare-fun b!5356177 () Bool)

(assert (=> b!5356177 (= e!3324539 tp_is_empty!39359)))

(declare-fun b!5356178 () Bool)

(assert (=> b!5356178 (= e!3324548 (nullable!5222 (regOne!30618 (regOne!30618 r!7292))))))

(declare-fun b!5356179 () Bool)

(assert (=> b!5356179 (= e!3324543 e!3324553)))

(declare-fun res!2272646 () Bool)

(assert (=> b!5356179 (=> res!2272646 e!3324553)))

(declare-fun lt!2182429 () Context!8874)

(assert (=> b!5356179 (= res!2272646 (not (= (unfocusZipper!795 (Cons!61336 lt!2182429 Nil!61336)) (reg!15382 (regOne!30618 r!7292)))))))

(declare-fun lt!2182442 () (InoxSet Context!8874))

(assert (=> b!5356179 (= (flatMap!780 lt!2182442 lambda!275505) (derivationStepZipperUp!425 lt!2182436 (h!67782 s!2326)))))

(declare-fun lt!2182426 () Unit!153730)

(assert (=> b!5356179 (= lt!2182426 (lemmaFlatMapOnSingletonSet!312 lt!2182442 lt!2182436 lambda!275505))))

(declare-fun lt!2182449 () (InoxSet Context!8874))

(assert (=> b!5356179 (= (flatMap!780 lt!2182449 lambda!275505) (derivationStepZipperUp!425 lt!2182429 (h!67782 s!2326)))))

(declare-fun lt!2182435 () Unit!153730)

(assert (=> b!5356179 (= lt!2182435 (lemmaFlatMapOnSingletonSet!312 lt!2182449 lt!2182429 lambda!275505))))

(declare-fun lt!2182450 () (InoxSet Context!8874))

(assert (=> b!5356179 (= lt!2182450 (derivationStepZipperUp!425 lt!2182436 (h!67782 s!2326)))))

(declare-fun lt!2182454 () (InoxSet Context!8874))

(assert (=> b!5356179 (= lt!2182454 (derivationStepZipperUp!425 lt!2182429 (h!67782 s!2326)))))

(assert (=> b!5356179 (= lt!2182442 (store ((as const (Array Context!8874 Bool)) false) lt!2182436 true))))

(assert (=> b!5356179 (= lt!2182449 (store ((as const (Array Context!8874 Bool)) false) lt!2182429 true))))

(assert (=> b!5356179 (= lt!2182429 (Context!8875 (Cons!61335 (reg!15382 (regOne!30618 r!7292)) Nil!61335)))))

(declare-fun b!5356180 () Bool)

(declare-fun res!2272644 () Bool)

(assert (=> b!5356180 (=> res!2272644 e!3324547)))

(assert (=> b!5356180 (= res!2272644 (or ((_ is Concat!23898) (regOne!30618 r!7292)) (not ((_ is Star!15053) (regOne!30618 r!7292)))))))

(declare-fun b!5356181 () Bool)

(declare-fun res!2272649 () Bool)

(assert (=> b!5356181 (=> res!2272649 e!3324546)))

(assert (=> b!5356181 (= res!2272649 (not ((_ is Cons!61335) (exprs!4937 (h!67784 zl!343)))))))

(declare-fun setIsEmpty!34639 () Bool)

(assert (=> setIsEmpty!34639 setRes!34639))

(assert (= (and start!563938 res!2272641) b!5356167))

(assert (= (and b!5356167 res!2272647) b!5356169))

(assert (= (and b!5356169 res!2272642) b!5356151))

(assert (= (and b!5356151 (not res!2272659)) b!5356173))

(assert (= (and b!5356173 (not res!2272655)) b!5356168))

(assert (= (and b!5356168 (not res!2272645)) b!5356181))

(assert (= (and b!5356181 (not res!2272649)) b!5356155))

(assert (= (and b!5356155 (not res!2272656)) b!5356166))

(assert (= (and b!5356166 (not res!2272652)) b!5356149))

(assert (= (and b!5356149 (not res!2272661)) b!5356160))

(assert (= (and b!5356160 (not res!2272640)) b!5356152))

(assert (= (and b!5356152 c!932578) b!5356148))

(assert (= (and b!5356152 (not c!932578)) b!5356174))

(assert (= (and b!5356148 (not res!2272657)) b!5356157))

(assert (= (and b!5356152 (not res!2272643)) b!5356159))

(assert (= (and b!5356159 res!2272653) b!5356178))

(assert (= (and b!5356159 (not res!2272650)) b!5356180))

(assert (= (and b!5356180 (not res!2272644)) b!5356175))

(assert (= (and b!5356175 (not res!2272648)) b!5356170))

(assert (= (and b!5356170 (not res!2272662)) b!5356156))

(assert (= (and b!5356156 (not res!2272651)) b!5356154))

(assert (= (and b!5356154 (not res!2272654)) b!5356172))

(assert (= (and b!5356172 (not res!2272663)) b!5356162))

(assert (= (and b!5356162 (not res!2272660)) b!5356179))

(assert (= (and b!5356179 (not res!2272646)) b!5356176))

(assert (= (and b!5356176 (not res!2272658)) b!5356153))

(assert (= (and start!563938 ((_ is ElementMatch!15053) r!7292)) b!5356177))

(assert (= (and start!563938 ((_ is Concat!23898) r!7292)) b!5356165))

(assert (= (and start!563938 ((_ is Star!15053) r!7292)) b!5356171))

(assert (= (and start!563938 ((_ is Union!15053) r!7292)) b!5356161))

(assert (= (and start!563938 condSetEmpty!34639) setIsEmpty!34639))

(assert (= (and start!563938 (not condSetEmpty!34639)) setNonEmpty!34639))

(assert (= setNonEmpty!34639 b!5356164))

(assert (= b!5356150 b!5356163))

(assert (= (and start!563938 ((_ is Cons!61336) zl!343)) b!5356150))

(assert (= (and start!563938 ((_ is Cons!61334) s!2326)) b!5356158))

(declare-fun m!6385870 () Bool)

(assert (=> b!5356176 m!6385870))

(declare-fun m!6385872 () Bool)

(assert (=> b!5356150 m!6385872))

(declare-fun m!6385874 () Bool)

(assert (=> b!5356156 m!6385874))

(declare-fun m!6385876 () Bool)

(assert (=> b!5356156 m!6385876))

(declare-fun m!6385878 () Bool)

(assert (=> b!5356148 m!6385878))

(declare-fun m!6385880 () Bool)

(assert (=> b!5356148 m!6385880))

(declare-fun m!6385882 () Bool)

(assert (=> b!5356148 m!6385882))

(declare-fun m!6385884 () Bool)

(assert (=> b!5356157 m!6385884))

(declare-fun m!6385886 () Bool)

(assert (=> b!5356179 m!6385886))

(declare-fun m!6385888 () Bool)

(assert (=> b!5356179 m!6385888))

(declare-fun m!6385890 () Bool)

(assert (=> b!5356179 m!6385890))

(declare-fun m!6385892 () Bool)

(assert (=> b!5356179 m!6385892))

(declare-fun m!6385894 () Bool)

(assert (=> b!5356179 m!6385894))

(declare-fun m!6385896 () Bool)

(assert (=> b!5356179 m!6385896))

(declare-fun m!6385898 () Bool)

(assert (=> b!5356179 m!6385898))

(declare-fun m!6385900 () Bool)

(assert (=> b!5356179 m!6385900))

(declare-fun m!6385902 () Bool)

(assert (=> b!5356179 m!6385902))

(declare-fun m!6385904 () Bool)

(assert (=> b!5356168 m!6385904))

(declare-fun m!6385906 () Bool)

(assert (=> start!563938 m!6385906))

(declare-fun m!6385908 () Bool)

(assert (=> b!5356173 m!6385908))

(declare-fun m!6385910 () Bool)

(assert (=> b!5356155 m!6385910))

(assert (=> b!5356155 m!6385910))

(declare-fun m!6385912 () Bool)

(assert (=> b!5356155 m!6385912))

(declare-fun m!6385914 () Bool)

(assert (=> b!5356178 m!6385914))

(declare-fun m!6385916 () Bool)

(assert (=> b!5356170 m!6385916))

(declare-fun m!6385918 () Bool)

(assert (=> b!5356170 m!6385918))

(declare-fun m!6385920 () Bool)

(assert (=> b!5356170 m!6385920))

(declare-fun m!6385922 () Bool)

(assert (=> b!5356170 m!6385922))

(declare-fun m!6385924 () Bool)

(assert (=> b!5356170 m!6385924))

(declare-fun m!6385926 () Bool)

(assert (=> b!5356151 m!6385926))

(declare-fun m!6385928 () Bool)

(assert (=> b!5356151 m!6385928))

(declare-fun m!6385930 () Bool)

(assert (=> b!5356151 m!6385930))

(declare-fun m!6385932 () Bool)

(assert (=> b!5356149 m!6385932))

(declare-fun m!6385934 () Bool)

(assert (=> b!5356149 m!6385934))

(declare-fun m!6385936 () Bool)

(assert (=> b!5356149 m!6385936))

(assert (=> b!5356149 m!6385936))

(assert (=> b!5356149 m!6385932))

(declare-fun m!6385938 () Bool)

(assert (=> b!5356149 m!6385938))

(declare-fun m!6385940 () Bool)

(assert (=> b!5356149 m!6385940))

(declare-fun m!6385942 () Bool)

(assert (=> b!5356149 m!6385942))

(declare-fun m!6385944 () Bool)

(assert (=> b!5356169 m!6385944))

(declare-fun m!6385946 () Bool)

(assert (=> b!5356160 m!6385946))

(declare-fun m!6385948 () Bool)

(assert (=> b!5356153 m!6385948))

(declare-fun m!6385950 () Bool)

(assert (=> b!5356153 m!6385950))

(declare-fun m!6385952 () Bool)

(assert (=> b!5356153 m!6385952))

(declare-fun m!6385954 () Bool)

(assert (=> b!5356152 m!6385954))

(declare-fun m!6385956 () Bool)

(assert (=> b!5356152 m!6385956))

(declare-fun m!6385958 () Bool)

(assert (=> b!5356152 m!6385958))

(declare-fun m!6385960 () Bool)

(assert (=> b!5356152 m!6385960))

(declare-fun m!6385962 () Bool)

(assert (=> b!5356152 m!6385962))

(declare-fun m!6385964 () Bool)

(assert (=> b!5356152 m!6385964))

(declare-fun m!6385966 () Bool)

(assert (=> b!5356152 m!6385966))

(declare-fun m!6385968 () Bool)

(assert (=> b!5356162 m!6385968))

(declare-fun m!6385970 () Bool)

(assert (=> setNonEmpty!34639 m!6385970))

(declare-fun m!6385972 () Bool)

(assert (=> b!5356167 m!6385972))

(declare-fun m!6385974 () Bool)

(assert (=> b!5356175 m!6385974))

(check-sat (not b!5356162) (not b!5356156) (not b!5356158) (not b!5356160) (not b!5356157) (not b!5356155) (not b!5356170) (not b!5356165) (not start!563938) (not b!5356153) (not b!5356175) (not b!5356176) (not b!5356179) (not b!5356149) (not b!5356163) (not setNonEmpty!34639) (not b!5356150) (not b!5356148) (not b!5356168) (not b!5356161) (not b!5356151) (not b!5356167) (not b!5356164) tp_is_empty!39359 (not b!5356178) (not b!5356173) (not b!5356169) (not b!5356171) (not b!5356152))
(check-sat)
