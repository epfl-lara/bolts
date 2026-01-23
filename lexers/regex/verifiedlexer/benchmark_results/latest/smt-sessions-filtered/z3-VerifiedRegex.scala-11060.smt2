; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573390 () Bool)

(assert start!573390)

(declare-fun b!5481655 () Bool)

(assert (=> b!5481655 true))

(assert (=> b!5481655 true))

(declare-fun lambda!292593 () Int)

(declare-fun lambda!292592 () Int)

(assert (=> b!5481655 (not (= lambda!292593 lambda!292592))))

(assert (=> b!5481655 true))

(assert (=> b!5481655 true))

(declare-fun lambda!292594 () Int)

(assert (=> b!5481655 (not (= lambda!292594 lambda!292592))))

(assert (=> b!5481655 (not (= lambda!292594 lambda!292593))))

(assert (=> b!5481655 true))

(assert (=> b!5481655 true))

(declare-fun b!5481673 () Bool)

(assert (=> b!5481673 true))

(declare-fun b!5481664 () Bool)

(assert (=> b!5481664 true))

(declare-fun e!3392526 () Bool)

(declare-fun e!3392519 () Bool)

(assert (=> b!5481655 (= e!3392526 e!3392519)))

(declare-fun res!2336887 () Bool)

(assert (=> b!5481655 (=> res!2336887 e!3392519)))

(declare-fun lt!2238597 () Bool)

(declare-fun e!3392521 () Bool)

(assert (=> b!5481655 (= res!2336887 (not (= lt!2238597 e!3392521)))))

(declare-fun res!2336871 () Bool)

(assert (=> b!5481655 (=> res!2336871 e!3392521)))

(declare-datatypes ((C!31004 0))(
  ( (C!31005 (val!25204 Int)) )
))
(declare-datatypes ((List!62400 0))(
  ( (Nil!62276) (Cons!62276 (h!68724 C!31004) (t!375631 List!62400)) )
))
(declare-fun s!2326 () List!62400)

(declare-fun isEmpty!34230 (List!62400) Bool)

(assert (=> b!5481655 (= res!2336871 (isEmpty!34230 s!2326))))

(declare-fun Exists!2546 (Int) Bool)

(assert (=> b!5481655 (= (Exists!2546 lambda!292592) (Exists!2546 lambda!292594))))

(declare-datatypes ((Unit!155184 0))(
  ( (Unit!155185) )
))
(declare-fun lt!2238588 () Unit!155184)

(declare-datatypes ((Regex!15367 0))(
  ( (ElementMatch!15367 (c!957861 C!31004)) (Concat!24212 (regOne!31246 Regex!15367) (regTwo!31246 Regex!15367)) (EmptyExpr!15367) (Star!15367 (reg!15696 Regex!15367)) (EmptyLang!15367) (Union!15367 (regOne!31247 Regex!15367) (regTwo!31247 Regex!15367)) )
))
(declare-fun r!7292 () Regex!15367)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1196 (Regex!15367 Regex!15367 List!62400) Unit!155184)

(assert (=> b!5481655 (= lt!2238588 (lemmaExistCutMatchRandMatchRSpecEquivalent!1196 (reg!15696 r!7292) r!7292 s!2326))))

(assert (=> b!5481655 (= (Exists!2546 lambda!292592) (Exists!2546 lambda!292593))))

(declare-fun lt!2238574 () Unit!155184)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!520 (Regex!15367 List!62400) Unit!155184)

(assert (=> b!5481655 (= lt!2238574 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!520 (reg!15696 r!7292) s!2326))))

(declare-fun lt!2238591 () Bool)

(assert (=> b!5481655 (= lt!2238591 (Exists!2546 lambda!292592))))

(declare-datatypes ((tuple2!65128 0))(
  ( (tuple2!65129 (_1!35867 List!62400) (_2!35867 List!62400)) )
))
(declare-datatypes ((Option!15476 0))(
  ( (None!15475) (Some!15475 (v!51504 tuple2!65128)) )
))
(declare-fun isDefined!12179 (Option!15476) Bool)

(declare-fun findConcatSeparation!1890 (Regex!15367 Regex!15367 List!62400 List!62400 List!62400) Option!15476)

(assert (=> b!5481655 (= lt!2238591 (isDefined!12179 (findConcatSeparation!1890 (reg!15696 r!7292) r!7292 Nil!62276 s!2326 s!2326)))))

(declare-fun lt!2238593 () Unit!155184)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1654 (Regex!15367 Regex!15367 List!62400) Unit!155184)

(assert (=> b!5481655 (= lt!2238593 (lemmaFindConcatSeparationEquivalentToExists!1654 (reg!15696 r!7292) r!7292 s!2326))))

(declare-fun b!5481657 () Bool)

(declare-fun e!3392527 () Bool)

(assert (=> b!5481657 (= e!3392527 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62401 0))(
  ( (Nil!62277) (Cons!62277 (h!68725 Regex!15367) (t!375632 List!62401)) )
))
(declare-datatypes ((Context!9502 0))(
  ( (Context!9503 (exprs!5251 List!62401)) )
))
(declare-fun lt!2238581 () (InoxSet Context!9502))

(declare-fun lt!2238598 () (InoxSet Context!9502))

(declare-fun findConcatSeparationZippers!94 ((InoxSet Context!9502) (InoxSet Context!9502) List!62400 List!62400 List!62400) Option!15476)

(assert (=> b!5481657 (isDefined!12179 (findConcatSeparationZippers!94 lt!2238581 lt!2238598 Nil!62276 s!2326 s!2326))))

(declare-fun lt!2238592 () Context!9502)

(declare-fun lt!2238572 () Unit!155184)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!94 ((InoxSet Context!9502) Context!9502 List!62400) Unit!155184)

(assert (=> b!5481657 (= lt!2238572 (lemmaConcatZipperMatchesStringThenFindConcatDefined!94 lt!2238581 lt!2238592 s!2326))))

(declare-fun b!5481658 () Bool)

(declare-fun e!3392528 () Bool)

(declare-fun e!3392529 () Bool)

(assert (=> b!5481658 (= e!3392528 e!3392529)))

(declare-fun res!2336889 () Bool)

(assert (=> b!5481658 (=> res!2336889 e!3392529)))

(declare-fun lt!2238570 () (InoxSet Context!9502))

(declare-fun derivationStepZipperDown!793 (Regex!15367 Context!9502 C!31004) (InoxSet Context!9502))

(assert (=> b!5481658 (= res!2336889 (not (= lt!2238570 (derivationStepZipperDown!793 (reg!15696 r!7292) lt!2238592 (h!68724 s!2326)))))))

(declare-fun lt!2238582 () List!62401)

(assert (=> b!5481658 (= lt!2238592 (Context!9503 lt!2238582))))

(declare-fun lambda!292595 () Int)

(declare-fun lt!2238596 () (InoxSet Context!9502))

(declare-fun lt!2238587 () Context!9502)

(declare-fun flatMap!1070 ((InoxSet Context!9502) Int) (InoxSet Context!9502))

(declare-fun derivationStepZipperUp!719 (Context!9502 C!31004) (InoxSet Context!9502))

(assert (=> b!5481658 (= (flatMap!1070 lt!2238596 lambda!292595) (derivationStepZipperUp!719 lt!2238587 (h!68724 s!2326)))))

(declare-fun lt!2238589 () Unit!155184)

(declare-fun lemmaFlatMapOnSingletonSet!602 ((InoxSet Context!9502) Context!9502 Int) Unit!155184)

(assert (=> b!5481658 (= lt!2238589 (lemmaFlatMapOnSingletonSet!602 lt!2238596 lt!2238587 lambda!292595))))

(declare-fun lt!2238584 () (InoxSet Context!9502))

(assert (=> b!5481658 (= lt!2238584 (derivationStepZipperUp!719 lt!2238587 (h!68724 s!2326)))))

(assert (=> b!5481658 (= lt!2238596 (store ((as const (Array Context!9502 Bool)) false) lt!2238587 true))))

(assert (=> b!5481658 (= lt!2238587 (Context!9503 (Cons!62277 (reg!15696 r!7292) lt!2238582)))))

(assert (=> b!5481658 (= lt!2238582 (Cons!62277 r!7292 Nil!62277))))

(declare-fun b!5481659 () Bool)

(declare-fun e!3392525 () Bool)

(declare-fun tp!1506382 () Bool)

(assert (=> b!5481659 (= e!3392525 tp!1506382)))

(declare-fun b!5481660 () Bool)

(declare-fun tp!1506383 () Bool)

(declare-fun tp!1506389 () Bool)

(assert (=> b!5481660 (= e!3392525 (and tp!1506383 tp!1506389))))

(declare-fun b!5481661 () Bool)

(declare-fun res!2336888 () Bool)

(declare-fun e!3392518 () Bool)

(assert (=> b!5481661 (=> res!2336888 e!3392518)))

(declare-datatypes ((List!62402 0))(
  ( (Nil!62278) (Cons!62278 (h!68726 Context!9502) (t!375633 List!62402)) )
))
(declare-fun unfocusZipper!1109 (List!62402) Regex!15367)

(assert (=> b!5481661 (= res!2336888 (not (= (unfocusZipper!1109 (Cons!62278 lt!2238592 Nil!62278)) r!7292)))))

(declare-fun b!5481662 () Bool)

(declare-fun e!3392523 () Bool)

(assert (=> b!5481662 (= e!3392523 (not e!3392526))))

(declare-fun res!2336885 () Bool)

(assert (=> b!5481662 (=> res!2336885 e!3392526)))

(declare-fun zl!343 () List!62402)

(get-info :version)

(assert (=> b!5481662 (= res!2336885 (not ((_ is Cons!62278) zl!343)))))

(declare-fun matchRSpec!2470 (Regex!15367 List!62400) Bool)

(assert (=> b!5481662 (= lt!2238597 (matchRSpec!2470 r!7292 s!2326))))

(declare-fun matchR!7552 (Regex!15367 List!62400) Bool)

(assert (=> b!5481662 (= lt!2238597 (matchR!7552 r!7292 s!2326))))

(declare-fun lt!2238590 () Unit!155184)

(declare-fun mainMatchTheorem!2470 (Regex!15367 List!62400) Unit!155184)

(assert (=> b!5481662 (= lt!2238590 (mainMatchTheorem!2470 r!7292 s!2326))))

(declare-fun e!3392516 () Bool)

(declare-fun setRes!36051 () Bool)

(declare-fun setElem!36051 () Context!9502)

(declare-fun tp!1506384 () Bool)

(declare-fun setNonEmpty!36051 () Bool)

(declare-fun inv!81664 (Context!9502) Bool)

(assert (=> setNonEmpty!36051 (= setRes!36051 (and tp!1506384 (inv!81664 setElem!36051) e!3392516))))

(declare-fun z!1189 () (InoxSet Context!9502))

(declare-fun setRest!36051 () (InoxSet Context!9502))

(assert (=> setNonEmpty!36051 (= z!1189 ((_ map or) (store ((as const (Array Context!9502 Bool)) false) setElem!36051 true) setRest!36051))))

(declare-fun b!5481663 () Bool)

(declare-fun tp_is_empty!39987 () Bool)

(assert (=> b!5481663 (= e!3392525 tp_is_empty!39987)))

(declare-fun e!3392514 () Bool)

(assert (=> b!5481664 (= e!3392514 e!3392527)))

(declare-fun res!2336867 () Bool)

(assert (=> b!5481664 (=> res!2336867 e!3392527)))

(declare-fun appendTo!86 ((InoxSet Context!9502) Context!9502) (InoxSet Context!9502))

(assert (=> b!5481664 (= res!2336867 (not (= (appendTo!86 lt!2238581 lt!2238592) lt!2238596)))))

(declare-fun lambda!292596 () Int)

(declare-fun map!14307 ((InoxSet Context!9502) Int) (InoxSet Context!9502))

(declare-fun ++!13708 (List!62401 List!62401) List!62401)

(assert (=> b!5481664 (= (map!14307 lt!2238581 lambda!292596) (store ((as const (Array Context!9502 Bool)) false) (Context!9503 (++!13708 (Cons!62277 (reg!15696 r!7292) Nil!62277) lt!2238582)) true))))

(declare-fun lambda!292597 () Int)

(declare-fun lt!2238571 () Unit!155184)

(declare-fun lemmaConcatPreservesForall!268 (List!62401 List!62401 Int) Unit!155184)

(assert (=> b!5481664 (= lt!2238571 (lemmaConcatPreservesForall!268 (Cons!62277 (reg!15696 r!7292) Nil!62277) lt!2238582 lambda!292597))))

(declare-fun lt!2238575 () Unit!155184)

(declare-fun lt!2238573 () Context!9502)

(declare-fun lemmaMapOnSingletonSet!98 ((InoxSet Context!9502) Context!9502 Int) Unit!155184)

(assert (=> b!5481664 (= lt!2238575 (lemmaMapOnSingletonSet!98 lt!2238581 lt!2238573 lambda!292596))))

(declare-fun b!5481665 () Bool)

(declare-fun e!3392520 () Bool)

(assert (=> b!5481665 (= e!3392520 e!3392518)))

(declare-fun res!2336879 () Bool)

(assert (=> b!5481665 (=> res!2336879 e!3392518)))

(declare-fun derivationStepZipper!1562 ((InoxSet Context!9502) C!31004) (InoxSet Context!9502))

(assert (=> b!5481665 (= res!2336879 (not (= lt!2238570 (derivationStepZipper!1562 lt!2238598 (h!68724 s!2326)))))))

(assert (=> b!5481665 (= (flatMap!1070 lt!2238598 lambda!292595) (derivationStepZipperUp!719 lt!2238592 (h!68724 s!2326)))))

(declare-fun lt!2238585 () Unit!155184)

(assert (=> b!5481665 (= lt!2238585 (lemmaFlatMapOnSingletonSet!602 lt!2238598 lt!2238592 lambda!292595))))

(assert (=> b!5481665 (= (flatMap!1070 lt!2238581 lambda!292595) (derivationStepZipperUp!719 lt!2238573 (h!68724 s!2326)))))

(declare-fun lt!2238595 () Unit!155184)

(assert (=> b!5481665 (= lt!2238595 (lemmaFlatMapOnSingletonSet!602 lt!2238581 lt!2238573 lambda!292595))))

(declare-fun lt!2238579 () (InoxSet Context!9502))

(assert (=> b!5481665 (= lt!2238579 (derivationStepZipperUp!719 lt!2238592 (h!68724 s!2326)))))

(declare-fun lt!2238586 () (InoxSet Context!9502))

(assert (=> b!5481665 (= lt!2238586 (derivationStepZipperUp!719 lt!2238573 (h!68724 s!2326)))))

(assert (=> b!5481665 (= lt!2238598 (store ((as const (Array Context!9502 Bool)) false) lt!2238592 true))))

(assert (=> b!5481665 (= lt!2238581 (store ((as const (Array Context!9502 Bool)) false) lt!2238573 true))))

(assert (=> b!5481665 (= lt!2238573 (Context!9503 (Cons!62277 (reg!15696 r!7292) Nil!62277)))))

(declare-fun b!5481666 () Bool)

(declare-fun tp!1506388 () Bool)

(declare-fun tp!1506391 () Bool)

(assert (=> b!5481666 (= e!3392525 (and tp!1506388 tp!1506391))))

(declare-fun b!5481667 () Bool)

(declare-fun e!3392524 () Bool)

(declare-fun tp!1506390 () Bool)

(assert (=> b!5481667 (= e!3392524 (and tp_is_empty!39987 tp!1506390))))

(declare-fun b!5481668 () Bool)

(declare-fun res!2336886 () Bool)

(assert (=> b!5481668 (=> res!2336886 e!3392529)))

(declare-fun lt!2238578 () Regex!15367)

(assert (=> b!5481668 (= res!2336886 (or (not (= lt!2238578 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5481669 () Bool)

(declare-fun e!3392517 () Bool)

(declare-fun tp!1506385 () Bool)

(assert (=> b!5481669 (= e!3392517 tp!1506385)))

(declare-fun b!5481670 () Bool)

(declare-fun res!2336884 () Bool)

(assert (=> b!5481670 (=> res!2336884 e!3392526)))

(assert (=> b!5481670 (= res!2336884 (or ((_ is EmptyExpr!15367) r!7292) ((_ is EmptyLang!15367) r!7292) ((_ is ElementMatch!15367) r!7292) ((_ is Union!15367) r!7292) ((_ is Concat!24212) r!7292)))))

(declare-fun tp!1506387 () Bool)

(declare-fun b!5481671 () Bool)

(declare-fun e!3392515 () Bool)

(assert (=> b!5481671 (= e!3392515 (and (inv!81664 (h!68726 zl!343)) e!3392517 tp!1506387))))

(declare-fun b!5481672 () Bool)

(declare-fun res!2336881 () Bool)

(assert (=> b!5481672 (=> res!2336881 e!3392526)))

(assert (=> b!5481672 (= res!2336881 (not ((_ is Cons!62277) (exprs!5251 (h!68726 zl!343)))))))

(declare-fun e!3392530 () Bool)

(assert (=> b!5481673 (= e!3392530 e!3392528)))

(declare-fun res!2336883 () Bool)

(assert (=> b!5481673 (=> res!2336883 e!3392528)))

(declare-fun lt!2238583 () (InoxSet Context!9502))

(assert (=> b!5481673 (= res!2336883 (not (= lt!2238570 lt!2238583)))))

(assert (=> b!5481673 (= (flatMap!1070 z!1189 lambda!292595) (derivationStepZipperUp!719 (h!68726 zl!343) (h!68724 s!2326)))))

(declare-fun lt!2238577 () Unit!155184)

(assert (=> b!5481673 (= lt!2238577 (lemmaFlatMapOnSingletonSet!602 z!1189 (h!68726 zl!343) lambda!292595))))

(declare-fun setIsEmpty!36051 () Bool)

(assert (=> setIsEmpty!36051 setRes!36051))

(declare-fun b!5481674 () Bool)

(assert (=> b!5481674 (= e!3392518 e!3392514)))

(declare-fun res!2336875 () Bool)

(assert (=> b!5481674 (=> res!2336875 e!3392514)))

(declare-fun lt!2238599 () Bool)

(assert (=> b!5481674 (= res!2336875 lt!2238599)))

(declare-fun lt!2238594 () Regex!15367)

(assert (=> b!5481674 (= lt!2238599 (matchRSpec!2470 lt!2238594 s!2326))))

(assert (=> b!5481674 (= lt!2238599 (matchR!7552 lt!2238594 s!2326))))

(declare-fun lt!2238580 () Unit!155184)

(assert (=> b!5481674 (= lt!2238580 (mainMatchTheorem!2470 lt!2238594 s!2326))))

(declare-fun b!5481675 () Bool)

(declare-fun res!2336876 () Bool)

(assert (=> b!5481675 (=> res!2336876 e!3392514)))

(declare-fun matchZipper!1585 ((InoxSet Context!9502) List!62400) Bool)

(assert (=> b!5481675 (= res!2336876 (not (matchZipper!1585 z!1189 s!2326)))))

(declare-fun b!5481676 () Bool)

(declare-fun e!3392522 () Bool)

(assert (=> b!5481676 (= e!3392522 e!3392523)))

(declare-fun res!2336870 () Bool)

(assert (=> b!5481676 (=> (not res!2336870) (not e!3392523))))

(assert (=> b!5481676 (= res!2336870 (= r!7292 lt!2238578))))

(assert (=> b!5481676 (= lt!2238578 (unfocusZipper!1109 zl!343))))

(declare-fun b!5481677 () Bool)

(declare-fun res!2336882 () Bool)

(assert (=> b!5481677 (=> res!2336882 e!3392529)))

(assert (=> b!5481677 (= res!2336882 (not (= (matchZipper!1585 lt!2238596 s!2326) (matchZipper!1585 (derivationStepZipper!1562 lt!2238596 (h!68724 s!2326)) (t!375631 s!2326)))))))

(declare-fun res!2336877 () Bool)

(assert (=> start!573390 (=> (not res!2336877) (not e!3392522))))

(declare-fun validRegex!7103 (Regex!15367) Bool)

(assert (=> start!573390 (= res!2336877 (validRegex!7103 r!7292))))

(assert (=> start!573390 e!3392522))

(assert (=> start!573390 e!3392525))

(declare-fun condSetEmpty!36051 () Bool)

(assert (=> start!573390 (= condSetEmpty!36051 (= z!1189 ((as const (Array Context!9502 Bool)) false)))))

(assert (=> start!573390 setRes!36051))

(assert (=> start!573390 e!3392515))

(assert (=> start!573390 e!3392524))

(declare-fun b!5481656 () Bool)

(declare-fun res!2336873 () Bool)

(assert (=> b!5481656 (=> res!2336873 e!3392526)))

(declare-fun generalisedUnion!1296 (List!62401) Regex!15367)

(declare-fun unfocusZipperList!809 (List!62402) List!62401)

(assert (=> b!5481656 (= res!2336873 (not (= r!7292 (generalisedUnion!1296 (unfocusZipperList!809 zl!343)))))))

(declare-fun b!5481678 () Bool)

(declare-fun res!2336872 () Bool)

(assert (=> b!5481678 (=> res!2336872 e!3392526)))

(declare-fun isEmpty!34231 (List!62402) Bool)

(assert (=> b!5481678 (= res!2336872 (not (isEmpty!34231 (t!375633 zl!343))))))

(declare-fun b!5481679 () Bool)

(assert (=> b!5481679 (= e!3392529 e!3392520)))

(declare-fun res!2336874 () Bool)

(assert (=> b!5481679 (=> res!2336874 e!3392520)))

(assert (=> b!5481679 (= res!2336874 (not (= (unfocusZipper!1109 (Cons!62278 lt!2238587 Nil!62278)) lt!2238594)))))

(assert (=> b!5481679 (= lt!2238594 (Concat!24212 (reg!15696 r!7292) r!7292))))

(declare-fun b!5481680 () Bool)

(declare-fun res!2336890 () Bool)

(assert (=> b!5481680 (=> (not res!2336890) (not e!3392522))))

(declare-fun toList!9151 ((InoxSet Context!9502)) List!62402)

(assert (=> b!5481680 (= res!2336890 (= (toList!9151 z!1189) zl!343))))

(declare-fun b!5481681 () Bool)

(assert (=> b!5481681 (= e!3392521 lt!2238591)))

(declare-fun b!5481682 () Bool)

(declare-fun res!2336868 () Bool)

(assert (=> b!5481682 (=> res!2336868 e!3392526)))

(declare-fun generalisedConcat!1036 (List!62401) Regex!15367)

(assert (=> b!5481682 (= res!2336868 (not (= r!7292 (generalisedConcat!1036 (exprs!5251 (h!68726 zl!343))))))))

(declare-fun b!5481683 () Bool)

(declare-fun tp!1506386 () Bool)

(assert (=> b!5481683 (= e!3392516 tp!1506386)))

(declare-fun b!5481684 () Bool)

(declare-fun res!2336880 () Bool)

(assert (=> b!5481684 (=> res!2336880 e!3392519)))

(assert (=> b!5481684 (= res!2336880 ((_ is Nil!62276) s!2326))))

(declare-fun b!5481685 () Bool)

(declare-fun res!2336878 () Bool)

(assert (=> b!5481685 (=> res!2336878 e!3392518)))

(assert (=> b!5481685 (= res!2336878 (not (= (unfocusZipper!1109 (Cons!62278 lt!2238573 Nil!62278)) (reg!15696 r!7292))))))

(declare-fun b!5481686 () Bool)

(assert (=> b!5481686 (= e!3392519 e!3392530)))

(declare-fun res!2336869 () Bool)

(assert (=> b!5481686 (=> res!2336869 e!3392530)))

(declare-fun lt!2238576 () (InoxSet Context!9502))

(assert (=> b!5481686 (= res!2336869 (not (= lt!2238576 lt!2238583)))))

(assert (=> b!5481686 (= lt!2238583 (derivationStepZipperDown!793 r!7292 (Context!9503 Nil!62277) (h!68724 s!2326)))))

(assert (=> b!5481686 (= lt!2238576 (derivationStepZipperUp!719 (Context!9503 (Cons!62277 r!7292 Nil!62277)) (h!68724 s!2326)))))

(assert (=> b!5481686 (= lt!2238570 (derivationStepZipper!1562 z!1189 (h!68724 s!2326)))))

(assert (= (and start!573390 res!2336877) b!5481680))

(assert (= (and b!5481680 res!2336890) b!5481676))

(assert (= (and b!5481676 res!2336870) b!5481662))

(assert (= (and b!5481662 (not res!2336885)) b!5481678))

(assert (= (and b!5481678 (not res!2336872)) b!5481682))

(assert (= (and b!5481682 (not res!2336868)) b!5481672))

(assert (= (and b!5481672 (not res!2336881)) b!5481656))

(assert (= (and b!5481656 (not res!2336873)) b!5481670))

(assert (= (and b!5481670 (not res!2336884)) b!5481655))

(assert (= (and b!5481655 (not res!2336871)) b!5481681))

(assert (= (and b!5481655 (not res!2336887)) b!5481684))

(assert (= (and b!5481684 (not res!2336880)) b!5481686))

(assert (= (and b!5481686 (not res!2336869)) b!5481673))

(assert (= (and b!5481673 (not res!2336883)) b!5481658))

(assert (= (and b!5481658 (not res!2336889)) b!5481677))

(assert (= (and b!5481677 (not res!2336882)) b!5481668))

(assert (= (and b!5481668 (not res!2336886)) b!5481679))

(assert (= (and b!5481679 (not res!2336874)) b!5481665))

(assert (= (and b!5481665 (not res!2336879)) b!5481685))

(assert (= (and b!5481685 (not res!2336878)) b!5481661))

(assert (= (and b!5481661 (not res!2336888)) b!5481674))

(assert (= (and b!5481674 (not res!2336875)) b!5481675))

(assert (= (and b!5481675 (not res!2336876)) b!5481664))

(assert (= (and b!5481664 (not res!2336867)) b!5481657))

(assert (= (and start!573390 ((_ is ElementMatch!15367) r!7292)) b!5481663))

(assert (= (and start!573390 ((_ is Concat!24212) r!7292)) b!5481660))

(assert (= (and start!573390 ((_ is Star!15367) r!7292)) b!5481659))

(assert (= (and start!573390 ((_ is Union!15367) r!7292)) b!5481666))

(assert (= (and start!573390 condSetEmpty!36051) setIsEmpty!36051))

(assert (= (and start!573390 (not condSetEmpty!36051)) setNonEmpty!36051))

(assert (= setNonEmpty!36051 b!5481683))

(assert (= b!5481671 b!5481669))

(assert (= (and start!573390 ((_ is Cons!62278) zl!343)) b!5481671))

(assert (= (and start!573390 ((_ is Cons!62276) s!2326)) b!5481667))

(declare-fun m!6497272 () Bool)

(assert (=> b!5481678 m!6497272))

(declare-fun m!6497274 () Bool)

(assert (=> b!5481665 m!6497274))

(declare-fun m!6497276 () Bool)

(assert (=> b!5481665 m!6497276))

(declare-fun m!6497278 () Bool)

(assert (=> b!5481665 m!6497278))

(declare-fun m!6497280 () Bool)

(assert (=> b!5481665 m!6497280))

(declare-fun m!6497282 () Bool)

(assert (=> b!5481665 m!6497282))

(declare-fun m!6497284 () Bool)

(assert (=> b!5481665 m!6497284))

(declare-fun m!6497286 () Bool)

(assert (=> b!5481665 m!6497286))

(declare-fun m!6497288 () Bool)

(assert (=> b!5481665 m!6497288))

(declare-fun m!6497290 () Bool)

(assert (=> b!5481665 m!6497290))

(declare-fun m!6497292 () Bool)

(assert (=> b!5481677 m!6497292))

(declare-fun m!6497294 () Bool)

(assert (=> b!5481677 m!6497294))

(assert (=> b!5481677 m!6497294))

(declare-fun m!6497296 () Bool)

(assert (=> b!5481677 m!6497296))

(declare-fun m!6497298 () Bool)

(assert (=> b!5481655 m!6497298))

(declare-fun m!6497300 () Bool)

(assert (=> b!5481655 m!6497300))

(declare-fun m!6497302 () Bool)

(assert (=> b!5481655 m!6497302))

(assert (=> b!5481655 m!6497298))

(declare-fun m!6497304 () Bool)

(assert (=> b!5481655 m!6497304))

(declare-fun m!6497306 () Bool)

(assert (=> b!5481655 m!6497306))

(declare-fun m!6497308 () Bool)

(assert (=> b!5481655 m!6497308))

(assert (=> b!5481655 m!6497306))

(declare-fun m!6497310 () Bool)

(assert (=> b!5481655 m!6497310))

(declare-fun m!6497312 () Bool)

(assert (=> b!5481655 m!6497312))

(assert (=> b!5481655 m!6497298))

(declare-fun m!6497314 () Bool)

(assert (=> b!5481655 m!6497314))

(declare-fun m!6497316 () Bool)

(assert (=> b!5481662 m!6497316))

(declare-fun m!6497318 () Bool)

(assert (=> b!5481662 m!6497318))

(declare-fun m!6497320 () Bool)

(assert (=> b!5481662 m!6497320))

(declare-fun m!6497322 () Bool)

(assert (=> b!5481658 m!6497322))

(declare-fun m!6497324 () Bool)

(assert (=> b!5481658 m!6497324))

(declare-fun m!6497326 () Bool)

(assert (=> b!5481658 m!6497326))

(declare-fun m!6497328 () Bool)

(assert (=> b!5481658 m!6497328))

(declare-fun m!6497330 () Bool)

(assert (=> b!5481658 m!6497330))

(declare-fun m!6497332 () Bool)

(assert (=> b!5481671 m!6497332))

(declare-fun m!6497334 () Bool)

(assert (=> b!5481686 m!6497334))

(declare-fun m!6497336 () Bool)

(assert (=> b!5481686 m!6497336))

(declare-fun m!6497338 () Bool)

(assert (=> b!5481686 m!6497338))

(declare-fun m!6497340 () Bool)

(assert (=> b!5481674 m!6497340))

(declare-fun m!6497342 () Bool)

(assert (=> b!5481674 m!6497342))

(declare-fun m!6497344 () Bool)

(assert (=> b!5481674 m!6497344))

(declare-fun m!6497346 () Bool)

(assert (=> b!5481685 m!6497346))

(declare-fun m!6497348 () Bool)

(assert (=> b!5481657 m!6497348))

(assert (=> b!5481657 m!6497348))

(declare-fun m!6497350 () Bool)

(assert (=> b!5481657 m!6497350))

(declare-fun m!6497352 () Bool)

(assert (=> b!5481657 m!6497352))

(declare-fun m!6497354 () Bool)

(assert (=> b!5481661 m!6497354))

(declare-fun m!6497356 () Bool)

(assert (=> b!5481656 m!6497356))

(assert (=> b!5481656 m!6497356))

(declare-fun m!6497358 () Bool)

(assert (=> b!5481656 m!6497358))

(declare-fun m!6497360 () Bool)

(assert (=> b!5481664 m!6497360))

(declare-fun m!6497362 () Bool)

(assert (=> b!5481664 m!6497362))

(declare-fun m!6497364 () Bool)

(assert (=> b!5481664 m!6497364))

(declare-fun m!6497366 () Bool)

(assert (=> b!5481664 m!6497366))

(declare-fun m!6497368 () Bool)

(assert (=> b!5481664 m!6497368))

(declare-fun m!6497370 () Bool)

(assert (=> b!5481664 m!6497370))

(declare-fun m!6497372 () Bool)

(assert (=> b!5481676 m!6497372))

(declare-fun m!6497374 () Bool)

(assert (=> start!573390 m!6497374))

(declare-fun m!6497376 () Bool)

(assert (=> b!5481673 m!6497376))

(declare-fun m!6497378 () Bool)

(assert (=> b!5481673 m!6497378))

(declare-fun m!6497380 () Bool)

(assert (=> b!5481673 m!6497380))

(declare-fun m!6497382 () Bool)

(assert (=> b!5481675 m!6497382))

(declare-fun m!6497384 () Bool)

(assert (=> b!5481679 m!6497384))

(declare-fun m!6497386 () Bool)

(assert (=> b!5481680 m!6497386))

(declare-fun m!6497388 () Bool)

(assert (=> b!5481682 m!6497388))

(declare-fun m!6497390 () Bool)

(assert (=> setNonEmpty!36051 m!6497390))

(check-sat (not b!5481662) (not b!5481675) (not b!5481667) (not b!5481666) (not b!5481669) (not b!5481657) (not b!5481671) (not b!5481673) (not b!5481659) (not b!5481676) (not b!5481685) (not b!5481664) (not b!5481680) (not b!5481655) (not b!5481658) (not b!5481656) (not b!5481678) (not b!5481679) (not b!5481677) (not b!5481686) (not setNonEmpty!36051) (not b!5481660) tp_is_empty!39987 (not b!5481683) (not b!5481682) (not b!5481665) (not b!5481674) (not b!5481661) (not start!573390))
(check-sat)
