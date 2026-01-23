; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567954 () Bool)

(assert start!567954)

(declare-fun b!5407764 () Bool)

(assert (=> b!5407764 true))

(assert (=> b!5407764 true))

(declare-fun lambda!282036 () Int)

(declare-fun lambda!282035 () Int)

(assert (=> b!5407764 (not (= lambda!282036 lambda!282035))))

(assert (=> b!5407764 true))

(assert (=> b!5407764 true))

(declare-fun b!5407763 () Bool)

(assert (=> b!5407763 true))

(declare-fun b!5407799 () Bool)

(assert (=> b!5407799 true))

(declare-fun bs!1249262 () Bool)

(declare-fun b!5407772 () Bool)

(assert (= bs!1249262 (and b!5407772 b!5407764)))

(declare-datatypes ((C!30632 0))(
  ( (C!30633 (val!25018 Int)) )
))
(declare-datatypes ((Regex!15181 0))(
  ( (ElementMatch!15181 (c!942767 C!30632)) (Concat!24026 (regOne!30874 Regex!15181) (regTwo!30874 Regex!15181)) (EmptyExpr!15181) (Star!15181 (reg!15510 Regex!15181)) (EmptyLang!15181) (Union!15181 (regOne!30875 Regex!15181) (regTwo!30875 Regex!15181)) )
))
(declare-fun r!7292 () Regex!15181)

(declare-fun lt!2204738 () Regex!15181)

(declare-fun lambda!282040 () Int)

(assert (=> bs!1249262 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282040 lambda!282035))))

(assert (=> bs!1249262 (not (= lambda!282040 lambda!282036))))

(assert (=> b!5407772 true))

(assert (=> b!5407772 true))

(assert (=> b!5407772 true))

(declare-fun lambda!282041 () Int)

(assert (=> bs!1249262 (not (= lambda!282041 lambda!282035))))

(assert (=> bs!1249262 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282041 lambda!282036))))

(assert (=> b!5407772 (not (= lambda!282041 lambda!282040))))

(assert (=> b!5407772 true))

(assert (=> b!5407772 true))

(assert (=> b!5407772 true))

(declare-fun b!5407755 () Bool)

(declare-fun e!3352510 () Bool)

(declare-fun e!3352511 () Bool)

(assert (=> b!5407755 (= e!3352510 e!3352511)))

(declare-fun res!2299502 () Bool)

(assert (=> b!5407755 (=> res!2299502 e!3352511)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61842 0))(
  ( (Nil!61718) (Cons!61718 (h!68166 Regex!15181) (t!375065 List!61842)) )
))
(declare-datatypes ((Context!9130 0))(
  ( (Context!9131 (exprs!5065 List!61842)) )
))
(declare-fun lt!2204693 () (InoxSet Context!9130))

(declare-fun lt!2204708 () (InoxSet Context!9130))

(assert (=> b!5407755 (= res!2299502 (not (= lt!2204693 lt!2204708)))))

(declare-datatypes ((List!61843 0))(
  ( (Nil!61719) (Cons!61719 (h!68167 C!30632) (t!375066 List!61843)) )
))
(declare-fun s!2326 () List!61843)

(declare-fun lt!2204709 () Context!9130)

(declare-fun derivationStepZipperDown!629 (Regex!15181 Context!9130 C!30632) (InoxSet Context!9130))

(assert (=> b!5407755 (= lt!2204708 (derivationStepZipperDown!629 (reg!15510 (regOne!30874 r!7292)) lt!2204709 (h!68167 s!2326)))))

(declare-fun lt!2204684 () List!61842)

(assert (=> b!5407755 (= lt!2204709 (Context!9131 lt!2204684))))

(declare-fun lt!2204701 () Regex!15181)

(declare-datatypes ((List!61844 0))(
  ( (Nil!61720) (Cons!61720 (h!68168 Context!9130) (t!375067 List!61844)) )
))
(declare-fun zl!343 () List!61844)

(assert (=> b!5407755 (= lt!2204684 (Cons!61718 lt!2204701 (t!375065 (exprs!5065 (h!68168 zl!343)))))))

(assert (=> b!5407755 (= lt!2204701 (Star!15181 (reg!15510 (regOne!30874 r!7292))))))

(declare-fun b!5407756 () Bool)

(declare-fun e!3352502 () Bool)

(declare-fun e!3352498 () Bool)

(assert (=> b!5407756 (= e!3352502 e!3352498)))

(declare-fun res!2299486 () Bool)

(assert (=> b!5407756 (=> res!2299486 e!3352498)))

(declare-fun lt!2204690 () Bool)

(assert (=> b!5407756 (= res!2299486 lt!2204690)))

(declare-fun lt!2204725 () Bool)

(declare-fun lt!2204716 () Regex!15181)

(declare-fun matchRSpec!2284 (Regex!15181 List!61843) Bool)

(assert (=> b!5407756 (= lt!2204725 (matchRSpec!2284 lt!2204716 s!2326))))

(declare-fun matchR!7366 (Regex!15181 List!61843) Bool)

(assert (=> b!5407756 (= lt!2204725 (matchR!7366 lt!2204716 s!2326))))

(declare-datatypes ((Unit!154246 0))(
  ( (Unit!154247) )
))
(declare-fun lt!2204733 () Unit!154246)

(declare-fun mainMatchTheorem!2284 (Regex!15181 List!61843) Unit!154246)

(assert (=> b!5407756 (= lt!2204733 (mainMatchTheorem!2284 lt!2204716 s!2326))))

(declare-fun b!5407757 () Bool)

(declare-fun e!3352494 () Bool)

(assert (=> b!5407757 (= e!3352494 e!3352502)))

(declare-fun res!2299497 () Bool)

(assert (=> b!5407757 (=> res!2299497 e!3352502)))

(declare-fun lt!2204692 () List!61844)

(declare-fun lt!2204700 () Regex!15181)

(declare-fun unfocusZipper!923 (List!61844) Regex!15181)

(assert (=> b!5407757 (= res!2299497 (not (= (unfocusZipper!923 lt!2204692) lt!2204700)))))

(assert (=> b!5407757 (= lt!2204692 (Cons!61720 lt!2204709 Nil!61720))))

(declare-fun b!5407758 () Bool)

(declare-fun e!3352506 () Bool)

(declare-fun e!3352503 () Bool)

(assert (=> b!5407758 (= e!3352506 e!3352503)))

(declare-fun res!2299477 () Bool)

(assert (=> b!5407758 (=> res!2299477 e!3352503)))

(declare-fun lt!2204691 () Context!9130)

(assert (=> b!5407758 (= res!2299477 (not (= (unfocusZipper!923 (Cons!61720 lt!2204691 Nil!61720)) lt!2204716)))))

(assert (=> b!5407758 (= lt!2204716 (Concat!24026 (reg!15510 (regOne!30874 r!7292)) lt!2204700))))

(declare-fun b!5407759 () Bool)

(assert (=> b!5407759 (= e!3352503 e!3352494)))

(declare-fun res!2299474 () Bool)

(assert (=> b!5407759 (=> res!2299474 e!3352494)))

(declare-fun lt!2204726 () List!61844)

(assert (=> b!5407759 (= res!2299474 (not (= (unfocusZipper!923 lt!2204726) (reg!15510 (regOne!30874 r!7292)))))))

(declare-fun lt!2204688 () Context!9130)

(assert (=> b!5407759 (= lt!2204726 (Cons!61720 lt!2204688 Nil!61720))))

(declare-fun lambda!282037 () Int)

(declare-fun lt!2204724 () (InoxSet Context!9130))

(declare-fun flatMap!908 ((InoxSet Context!9130) Int) (InoxSet Context!9130))

(declare-fun derivationStepZipperUp!553 (Context!9130 C!30632) (InoxSet Context!9130))

(assert (=> b!5407759 (= (flatMap!908 lt!2204724 lambda!282037) (derivationStepZipperUp!553 lt!2204709 (h!68167 s!2326)))))

(declare-fun lt!2204719 () Unit!154246)

(declare-fun lemmaFlatMapOnSingletonSet!440 ((InoxSet Context!9130) Context!9130 Int) Unit!154246)

(assert (=> b!5407759 (= lt!2204719 (lemmaFlatMapOnSingletonSet!440 lt!2204724 lt!2204709 lambda!282037))))

(declare-fun lt!2204699 () (InoxSet Context!9130))

(assert (=> b!5407759 (= (flatMap!908 lt!2204699 lambda!282037) (derivationStepZipperUp!553 lt!2204688 (h!68167 s!2326)))))

(declare-fun lt!2204694 () Unit!154246)

(assert (=> b!5407759 (= lt!2204694 (lemmaFlatMapOnSingletonSet!440 lt!2204699 lt!2204688 lambda!282037))))

(declare-fun lt!2204721 () (InoxSet Context!9130))

(assert (=> b!5407759 (= lt!2204721 (derivationStepZipperUp!553 lt!2204709 (h!68167 s!2326)))))

(declare-fun lt!2204712 () (InoxSet Context!9130))

(assert (=> b!5407759 (= lt!2204712 (derivationStepZipperUp!553 lt!2204688 (h!68167 s!2326)))))

(assert (=> b!5407759 (= lt!2204724 (store ((as const (Array Context!9130 Bool)) false) lt!2204709 true))))

(assert (=> b!5407759 (= lt!2204699 (store ((as const (Array Context!9130 Bool)) false) lt!2204688 true))))

(declare-fun lt!2204683 () List!61842)

(assert (=> b!5407759 (= lt!2204688 (Context!9131 lt!2204683))))

(assert (=> b!5407759 (= lt!2204683 (Cons!61718 (reg!15510 (regOne!30874 r!7292)) Nil!61718))))

(declare-fun b!5407760 () Bool)

(declare-fun res!2299482 () Bool)

(declare-fun e!3352514 () Bool)

(assert (=> b!5407760 (=> res!2299482 e!3352514)))

(declare-fun generalisedConcat!850 (List!61842) Regex!15181)

(assert (=> b!5407760 (= res!2299482 (not (= r!7292 (generalisedConcat!850 (exprs!5065 (h!68168 zl!343))))))))

(declare-fun b!5407761 () Bool)

(declare-fun e!3352507 () Bool)

(declare-fun tp!1495257 () Bool)

(declare-fun e!3352499 () Bool)

(declare-fun inv!81199 (Context!9130) Bool)

(assert (=> b!5407761 (= e!3352499 (and (inv!81199 (h!68168 zl!343)) e!3352507 tp!1495257))))

(declare-fun b!5407762 () Bool)

(declare-fun e!3352495 () Bool)

(declare-fun tp!1495256 () Bool)

(assert (=> b!5407762 (= e!3352495 tp!1495256)))

(declare-fun res!2299492 () Bool)

(declare-fun e!3352515 () Bool)

(assert (=> start!567954 (=> (not res!2299492) (not e!3352515))))

(declare-fun validRegex!6917 (Regex!15181) Bool)

(assert (=> start!567954 (= res!2299492 (validRegex!6917 r!7292))))

(assert (=> start!567954 e!3352515))

(declare-fun e!3352509 () Bool)

(assert (=> start!567954 e!3352509))

(declare-fun condSetEmpty!35213 () Bool)

(declare-fun z!1189 () (InoxSet Context!9130))

(assert (=> start!567954 (= condSetEmpty!35213 (= z!1189 ((as const (Array Context!9130 Bool)) false)))))

(declare-fun setRes!35213 () Bool)

(assert (=> start!567954 setRes!35213))

(assert (=> start!567954 e!3352499))

(declare-fun e!3352513 () Bool)

(assert (=> start!567954 e!3352513))

(declare-fun e!3352501 () Bool)

(assert (=> b!5407763 (= e!3352501 e!3352510)))

(declare-fun res!2299485 () Bool)

(assert (=> b!5407763 (=> res!2299485 e!3352510)))

(get-info :version)

(assert (=> b!5407763 (= res!2299485 (or (and ((_ is ElementMatch!15181) (regOne!30874 r!7292)) (= (c!942767 (regOne!30874 r!7292)) (h!68167 s!2326))) ((_ is Union!15181) (regOne!30874 r!7292))))))

(declare-fun lt!2204734 () Unit!154246)

(declare-fun e!3352492 () Unit!154246)

(assert (=> b!5407763 (= lt!2204734 e!3352492)))

(declare-fun c!942766 () Bool)

(declare-fun lt!2204686 () Bool)

(assert (=> b!5407763 (= c!942766 lt!2204686)))

(declare-fun nullable!5350 (Regex!15181) Bool)

(assert (=> b!5407763 (= lt!2204686 (nullable!5350 (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(assert (=> b!5407763 (= (flatMap!908 z!1189 lambda!282037) (derivationStepZipperUp!553 (h!68168 zl!343) (h!68167 s!2326)))))

(declare-fun lt!2204707 () Unit!154246)

(assert (=> b!5407763 (= lt!2204707 (lemmaFlatMapOnSingletonSet!440 z!1189 (h!68168 zl!343) lambda!282037))))

(declare-fun lt!2204737 () (InoxSet Context!9130))

(declare-fun lt!2204735 () Context!9130)

(assert (=> b!5407763 (= lt!2204737 (derivationStepZipperUp!553 lt!2204735 (h!68167 s!2326)))))

(assert (=> b!5407763 (= lt!2204693 (derivationStepZipperDown!629 (h!68166 (exprs!5065 (h!68168 zl!343))) lt!2204735 (h!68167 s!2326)))))

(assert (=> b!5407763 (= lt!2204735 (Context!9131 (t!375065 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun lt!2204713 () (InoxSet Context!9130))

(assert (=> b!5407763 (= lt!2204713 (derivationStepZipperUp!553 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343))))) (h!68167 s!2326)))))

(assert (=> b!5407764 (= e!3352514 e!3352501)))

(declare-fun res!2299487 () Bool)

(assert (=> b!5407764 (=> res!2299487 e!3352501)))

(declare-fun lt!2204711 () Bool)

(assert (=> b!5407764 (= res!2299487 (or (not (= lt!2204690 lt!2204711)) ((_ is Nil!61719) s!2326)))))

(declare-fun Exists!2362 (Int) Bool)

(assert (=> b!5407764 (= (Exists!2362 lambda!282035) (Exists!2362 lambda!282036))))

(declare-fun lt!2204710 () Unit!154246)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1016 (Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> b!5407764 (= lt!2204710 (lemmaExistCutMatchRandMatchRSpecEquivalent!1016 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326))))

(assert (=> b!5407764 (= lt!2204711 (Exists!2362 lambda!282035))))

(declare-datatypes ((tuple2!64760 0))(
  ( (tuple2!64761 (_1!35683 List!61843) (_2!35683 List!61843)) )
))
(declare-datatypes ((Option!15292 0))(
  ( (None!15291) (Some!15291 (v!51320 tuple2!64760)) )
))
(declare-fun isDefined!11995 (Option!15292) Bool)

(declare-fun findConcatSeparation!1706 (Regex!15181 Regex!15181 List!61843 List!61843 List!61843) Option!15292)

(assert (=> b!5407764 (= lt!2204711 (isDefined!11995 (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)))))

(declare-fun lt!2204685 () Unit!154246)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1470 (Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> b!5407764 (= lt!2204685 (lemmaFindConcatSeparationEquivalentToExists!1470 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326))))

(declare-fun b!5407765 () Bool)

(declare-fun res!2299479 () Bool)

(assert (=> b!5407765 (=> res!2299479 e!3352514)))

(declare-fun isEmpty!33712 (List!61844) Bool)

(assert (=> b!5407765 (= res!2299479 (not (isEmpty!33712 (t!375067 zl!343))))))

(declare-fun b!5407766 () Bool)

(declare-fun res!2299484 () Bool)

(assert (=> b!5407766 (=> res!2299484 e!3352510)))

(assert (=> b!5407766 (= res!2299484 (or ((_ is Concat!24026) (regOne!30874 r!7292)) (not ((_ is Star!15181) (regOne!30874 r!7292)))))))

(declare-fun b!5407767 () Bool)

(declare-fun e!3352516 () Bool)

(declare-fun matchZipper!1425 ((InoxSet Context!9130) List!61843) Bool)

(assert (=> b!5407767 (= e!3352516 (not (matchZipper!1425 lt!2204737 (t!375066 s!2326))))))

(declare-fun b!5407768 () Bool)

(declare-fun e!3352496 () Bool)

(assert (=> b!5407768 (= e!3352496 (matchZipper!1425 lt!2204737 (t!375066 s!2326)))))

(declare-fun b!5407769 () Bool)

(declare-fun Unit!154248 () Unit!154246)

(assert (=> b!5407769 (= e!3352492 Unit!154248)))

(declare-fun lt!2204723 () Unit!154246)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!418 ((InoxSet Context!9130) (InoxSet Context!9130) List!61843) Unit!154246)

(assert (=> b!5407769 (= lt!2204723 (lemmaZipperConcatMatchesSameAsBothZippers!418 lt!2204693 lt!2204737 (t!375066 s!2326)))))

(declare-fun res!2299476 () Bool)

(assert (=> b!5407769 (= res!2299476 (matchZipper!1425 lt!2204693 (t!375066 s!2326)))))

(assert (=> b!5407769 (=> res!2299476 e!3352496)))

(assert (=> b!5407769 (= (matchZipper!1425 ((_ map or) lt!2204693 lt!2204737) (t!375066 s!2326)) e!3352496)))

(declare-fun b!5407770 () Bool)

(declare-fun res!2299501 () Bool)

(assert (=> b!5407770 (=> res!2299501 e!3352498)))

(assert (=> b!5407770 (= res!2299501 (not lt!2204686))))

(declare-fun b!5407771 () Bool)

(declare-fun e!3352505 () Bool)

(assert (=> b!5407771 (= e!3352498 e!3352505)))

(declare-fun res!2299498 () Bool)

(assert (=> b!5407771 (=> res!2299498 e!3352505)))

(assert (=> b!5407771 (= res!2299498 e!3352516)))

(declare-fun res!2299494 () Bool)

(assert (=> b!5407771 (=> (not res!2299494) (not e!3352516))))

(declare-fun lt!2204722 () Bool)

(assert (=> b!5407771 (= res!2299494 (not lt!2204722))))

(assert (=> b!5407771 (= lt!2204722 (matchZipper!1425 lt!2204693 (t!375066 s!2326)))))

(declare-fun e!3352508 () Bool)

(declare-fun lt!2204695 () Bool)

(assert (=> b!5407772 (= e!3352508 lt!2204695)))

(assert (=> b!5407772 (= (Exists!2362 lambda!282040) (Exists!2362 lambda!282041))))

(declare-fun lt!2204728 () Unit!154246)

(assert (=> b!5407772 (= lt!2204728 (lemmaExistCutMatchRandMatchRSpecEquivalent!1016 lt!2204738 (regTwo!30874 r!7292) s!2326))))

(assert (=> b!5407772 (= lt!2204695 (Exists!2362 lambda!282040))))

(assert (=> b!5407772 (= lt!2204695 (isDefined!11995 (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)))))

(declare-fun lt!2204720 () Unit!154246)

(assert (=> b!5407772 (= lt!2204720 (lemmaFindConcatSeparationEquivalentToExists!1470 lt!2204738 (regTwo!30874 r!7292) s!2326))))

(declare-fun lt!2204689 () Regex!15181)

(assert (=> b!5407772 (matchRSpec!2284 lt!2204689 s!2326)))

(declare-fun lt!2204732 () Unit!154246)

(assert (=> b!5407772 (= lt!2204732 (mainMatchTheorem!2284 lt!2204689 s!2326))))

(assert (=> b!5407772 (matchR!7366 lt!2204689 s!2326)))

(assert (=> b!5407772 (= lt!2204689 (Concat!24026 lt!2204738 (regTwo!30874 r!7292)))))

(assert (=> b!5407772 (= lt!2204738 (Concat!24026 (reg!15510 (regOne!30874 r!7292)) lt!2204701))))

(declare-fun lt!2204696 () Unit!154246)

(declare-fun lemmaConcatAssociative!34 (Regex!15181 Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> b!5407772 (= lt!2204696 (lemmaConcatAssociative!34 (reg!15510 (regOne!30874 r!7292)) lt!2204701 (regTwo!30874 r!7292) s!2326))))

(declare-fun e!3352497 () Bool)

(assert (=> b!5407772 e!3352497))

(declare-fun res!2299488 () Bool)

(assert (=> b!5407772 (=> (not res!2299488) (not e!3352497))))

(declare-fun lt!2204697 () List!61843)

(assert (=> b!5407772 (= res!2299488 (matchR!7366 lt!2204716 lt!2204697))))

(declare-fun lt!2204704 () tuple2!64760)

(declare-fun lt!2204715 () Unit!154246)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!204 (Regex!15181 Regex!15181 List!61843 List!61843) Unit!154246)

(assert (=> b!5407772 (= lt!2204715 (lemmaTwoRegexMatchThenConcatMatchesConcatString!204 (reg!15510 (regOne!30874 r!7292)) lt!2204700 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(assert (=> b!5407772 (matchR!7366 lt!2204700 (_2!35683 lt!2204704))))

(declare-fun lt!2204714 () Unit!154246)

(declare-fun theoremZipperRegexEquiv!495 ((InoxSet Context!9130) List!61844 Regex!15181 List!61843) Unit!154246)

(assert (=> b!5407772 (= lt!2204714 (theoremZipperRegexEquiv!495 lt!2204724 lt!2204692 lt!2204700 (_2!35683 lt!2204704)))))

(assert (=> b!5407772 (matchR!7366 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704))))

(declare-fun lt!2204706 () Unit!154246)

(assert (=> b!5407772 (= lt!2204706 (theoremZipperRegexEquiv!495 lt!2204699 lt!2204726 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704)))))

(declare-fun ++!13535 (List!61842 List!61842) List!61842)

(assert (=> b!5407772 (matchZipper!1425 (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 lt!2204683 lt!2204684)) true) lt!2204697)))

(declare-fun lt!2204717 () Unit!154246)

(declare-fun lambda!282039 () Int)

(declare-fun lemmaConcatPreservesForall!206 (List!61842 List!61842 Int) Unit!154246)

(assert (=> b!5407772 (= lt!2204717 (lemmaConcatPreservesForall!206 lt!2204683 lt!2204684 lambda!282039))))

(declare-fun lt!2204682 () Unit!154246)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!54 (Context!9130 Context!9130 List!61843 List!61843) Unit!154246)

(assert (=> b!5407772 (= lt!2204682 (lemmaConcatenateContextMatchesConcatOfStrings!54 lt!2204688 lt!2204709 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(declare-fun b!5407773 () Bool)

(declare-fun e!3352504 () Bool)

(assert (=> b!5407773 (= e!3352504 e!3352506)))

(declare-fun res!2299499 () Bool)

(assert (=> b!5407773 (=> res!2299499 e!3352506)))

(assert (=> b!5407773 (= res!2299499 (not (= r!7292 lt!2204700)))))

(assert (=> b!5407773 (= lt!2204700 (Concat!24026 lt!2204701 (regTwo!30874 r!7292)))))

(declare-fun b!5407774 () Bool)

(declare-fun res!2299503 () Bool)

(assert (=> b!5407774 (=> res!2299503 e!3352508)))

(assert (=> b!5407774 (= res!2299503 (not (matchZipper!1425 lt!2204724 (_2!35683 lt!2204704))))))

(declare-fun b!5407775 () Bool)

(declare-fun e!3352500 () Bool)

(assert (=> b!5407775 (= e!3352500 (nullable!5350 (regOne!30874 (regOne!30874 r!7292))))))

(declare-fun b!5407776 () Bool)

(declare-fun res!2299473 () Bool)

(assert (=> b!5407776 (=> res!2299473 e!3352501)))

(declare-fun isEmpty!33713 (List!61842) Bool)

(assert (=> b!5407776 (= res!2299473 (isEmpty!33713 (t!375065 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun b!5407777 () Bool)

(declare-fun res!2299483 () Bool)

(assert (=> b!5407777 (=> (not res!2299483) (not e!3352515))))

(declare-fun toList!8965 ((InoxSet Context!9130)) List!61844)

(assert (=> b!5407777 (= res!2299483 (= (toList!8965 z!1189) zl!343))))

(declare-fun b!5407778 () Bool)

(declare-fun res!2299489 () Bool)

(assert (=> b!5407778 (=> res!2299489 e!3352514)))

(assert (=> b!5407778 (= res!2299489 (or ((_ is EmptyExpr!15181) r!7292) ((_ is EmptyLang!15181) r!7292) ((_ is ElementMatch!15181) r!7292) ((_ is Union!15181) r!7292) (not ((_ is Concat!24026) r!7292))))))

(declare-fun b!5407779 () Bool)

(declare-fun tp!1495250 () Bool)

(declare-fun tp!1495249 () Bool)

(assert (=> b!5407779 (= e!3352509 (and tp!1495250 tp!1495249))))

(declare-fun b!5407780 () Bool)

(declare-fun res!2299495 () Bool)

(assert (=> b!5407780 (=> res!2299495 e!3352498)))

(assert (=> b!5407780 (= res!2299495 (not (matchZipper!1425 z!1189 s!2326)))))

(declare-fun b!5407781 () Bool)

(declare-fun tp_is_empty!39615 () Bool)

(assert (=> b!5407781 (= e!3352509 tp_is_empty!39615)))

(declare-fun b!5407782 () Bool)

(declare-fun Unit!154249 () Unit!154246)

(assert (=> b!5407782 (= e!3352492 Unit!154249)))

(declare-fun b!5407783 () Bool)

(declare-fun tp!1495251 () Bool)

(assert (=> b!5407783 (= e!3352513 (and tp_is_empty!39615 tp!1495251))))

(declare-fun b!5407784 () Bool)

(declare-fun e!3352512 () Bool)

(assert (=> b!5407784 (= e!3352512 e!3352508)))

(declare-fun res!2299480 () Bool)

(assert (=> b!5407784 (=> res!2299480 e!3352508)))

(assert (=> b!5407784 (= res!2299480 (not (= s!2326 lt!2204697)))))

(declare-fun ++!13536 (List!61843 List!61843) List!61843)

(assert (=> b!5407784 (= lt!2204697 (++!13536 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(declare-fun lt!2204729 () Option!15292)

(declare-fun get!21274 (Option!15292) tuple2!64760)

(assert (=> b!5407784 (= lt!2204704 (get!21274 lt!2204729))))

(assert (=> b!5407784 (isDefined!11995 lt!2204729)))

(declare-fun findConcatSeparationZippers!38 ((InoxSet Context!9130) (InoxSet Context!9130) List!61843 List!61843 List!61843) Option!15292)

(assert (=> b!5407784 (= lt!2204729 (findConcatSeparationZippers!38 lt!2204699 lt!2204724 Nil!61719 s!2326 s!2326))))

(declare-fun lt!2204727 () Unit!154246)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!38 ((InoxSet Context!9130) Context!9130 List!61843) Unit!154246)

(assert (=> b!5407784 (= lt!2204727 (lemmaConcatZipperMatchesStringThenFindConcatDefined!38 lt!2204699 lt!2204709 s!2326))))

(declare-fun b!5407785 () Bool)

(declare-fun e!3352491 () Bool)

(assert (=> b!5407785 (= e!3352491 (not e!3352514))))

(declare-fun res!2299504 () Bool)

(assert (=> b!5407785 (=> res!2299504 e!3352514)))

(assert (=> b!5407785 (= res!2299504 (not ((_ is Cons!61720) zl!343)))))

(assert (=> b!5407785 (= lt!2204690 (matchRSpec!2284 r!7292 s!2326))))

(assert (=> b!5407785 (= lt!2204690 (matchR!7366 r!7292 s!2326))))

(declare-fun lt!2204718 () Unit!154246)

(assert (=> b!5407785 (= lt!2204718 (mainMatchTheorem!2284 r!7292 s!2326))))

(declare-fun setIsEmpty!35213 () Bool)

(assert (=> setIsEmpty!35213 setRes!35213))

(declare-fun b!5407786 () Bool)

(declare-fun res!2299505 () Bool)

(assert (=> b!5407786 (=> res!2299505 e!3352505)))

(declare-fun lt!2204703 () Bool)

(assert (=> b!5407786 (= res!2299505 (or (not lt!2204722) (not lt!2204703)))))

(declare-fun b!5407787 () Bool)

(declare-fun e!3352493 () Bool)

(assert (=> b!5407787 (= e!3352493 e!3352504)))

(declare-fun res!2299478 () Bool)

(assert (=> b!5407787 (=> res!2299478 e!3352504)))

(declare-fun lt!2204730 () (InoxSet Context!9130))

(assert (=> b!5407787 (= res!2299478 (not (= lt!2204703 (matchZipper!1425 lt!2204730 (t!375066 s!2326)))))))

(declare-fun lt!2204698 () (InoxSet Context!9130))

(assert (=> b!5407787 (= lt!2204703 (matchZipper!1425 lt!2204698 s!2326))))

(declare-fun b!5407788 () Bool)

(declare-fun tp!1495254 () Bool)

(assert (=> b!5407788 (= e!3352509 tp!1495254)))

(declare-fun b!5407789 () Bool)

(declare-fun res!2299493 () Bool)

(assert (=> b!5407789 (=> res!2299493 e!3352510)))

(assert (=> b!5407789 (= res!2299493 e!3352500)))

(declare-fun res!2299496 () Bool)

(assert (=> b!5407789 (=> (not res!2299496) (not e!3352500))))

(assert (=> b!5407789 (= res!2299496 ((_ is Concat!24026) (regOne!30874 r!7292)))))

(declare-fun b!5407790 () Bool)

(assert (=> b!5407790 (= e!3352497 lt!2204725)))

(declare-fun b!5407791 () Bool)

(assert (=> b!5407791 (= e!3352511 e!3352493)))

(declare-fun res!2299472 () Bool)

(assert (=> b!5407791 (=> res!2299472 e!3352493)))

(assert (=> b!5407791 (= res!2299472 (not (= lt!2204730 lt!2204708)))))

(assert (=> b!5407791 (= (flatMap!908 lt!2204698 lambda!282037) (derivationStepZipperUp!553 lt!2204691 (h!68167 s!2326)))))

(declare-fun lt!2204736 () Unit!154246)

(assert (=> b!5407791 (= lt!2204736 (lemmaFlatMapOnSingletonSet!440 lt!2204698 lt!2204691 lambda!282037))))

(declare-fun lt!2204731 () (InoxSet Context!9130))

(assert (=> b!5407791 (= lt!2204731 (derivationStepZipperUp!553 lt!2204691 (h!68167 s!2326)))))

(declare-fun derivationStepZipper!1420 ((InoxSet Context!9130) C!30632) (InoxSet Context!9130))

(assert (=> b!5407791 (= lt!2204730 (derivationStepZipper!1420 lt!2204698 (h!68167 s!2326)))))

(assert (=> b!5407791 (= lt!2204698 (store ((as const (Array Context!9130 Bool)) false) lt!2204691 true))))

(assert (=> b!5407791 (= lt!2204691 (Context!9131 (Cons!61718 (reg!15510 (regOne!30874 r!7292)) lt!2204684)))))

(declare-fun b!5407792 () Bool)

(declare-fun res!2299471 () Bool)

(assert (=> b!5407792 (=> res!2299471 e!3352504)))

(declare-fun lt!2204687 () Regex!15181)

(assert (=> b!5407792 (= res!2299471 (not (= lt!2204687 r!7292)))))

(declare-fun b!5407793 () Bool)

(declare-fun res!2299481 () Bool)

(assert (=> b!5407793 (=> res!2299481 e!3352514)))

(declare-fun generalisedUnion!1110 (List!61842) Regex!15181)

(declare-fun unfocusZipperList!623 (List!61844) List!61842)

(assert (=> b!5407793 (= res!2299481 (not (= r!7292 (generalisedUnion!1110 (unfocusZipperList!623 zl!343)))))))

(declare-fun b!5407794 () Bool)

(declare-fun tp!1495252 () Bool)

(assert (=> b!5407794 (= e!3352507 tp!1495252)))

(declare-fun b!5407795 () Bool)

(declare-fun res!2299475 () Bool)

(assert (=> b!5407795 (=> res!2299475 e!3352508)))

(assert (=> b!5407795 (= res!2299475 (not (matchZipper!1425 lt!2204699 (_1!35683 lt!2204704))))))

(declare-fun b!5407796 () Bool)

(declare-fun tp!1495248 () Bool)

(declare-fun tp!1495255 () Bool)

(assert (=> b!5407796 (= e!3352509 (and tp!1495248 tp!1495255))))

(declare-fun b!5407797 () Bool)

(declare-fun res!2299490 () Bool)

(assert (=> b!5407797 (=> res!2299490 e!3352514)))

(assert (=> b!5407797 (= res!2299490 (not ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343)))))))

(declare-fun tp!1495253 () Bool)

(declare-fun setNonEmpty!35213 () Bool)

(declare-fun setElem!35213 () Context!9130)

(assert (=> setNonEmpty!35213 (= setRes!35213 (and tp!1495253 (inv!81199 setElem!35213) e!3352495))))

(declare-fun setRest!35213 () (InoxSet Context!9130))

(assert (=> setNonEmpty!35213 (= z!1189 ((_ map or) (store ((as const (Array Context!9130 Bool)) false) setElem!35213 true) setRest!35213))))

(declare-fun b!5407798 () Bool)

(assert (=> b!5407798 (= e!3352515 e!3352491)))

(declare-fun res!2299491 () Bool)

(assert (=> b!5407798 (=> (not res!2299491) (not e!3352491))))

(assert (=> b!5407798 (= res!2299491 (= r!7292 lt!2204687))))

(assert (=> b!5407798 (= lt!2204687 (unfocusZipper!923 zl!343))))

(assert (=> b!5407799 (= e!3352505 e!3352512)))

(declare-fun res!2299500 () Bool)

(assert (=> b!5407799 (=> res!2299500 e!3352512)))

(declare-fun appendTo!40 ((InoxSet Context!9130) Context!9130) (InoxSet Context!9130))

(assert (=> b!5407799 (= res!2299500 (not (= (appendTo!40 lt!2204699 lt!2204709) lt!2204698)))))

(declare-fun lambda!282038 () Int)

(declare-fun map!14156 ((InoxSet Context!9130) Int) (InoxSet Context!9130))

(assert (=> b!5407799 (= (map!14156 lt!2204699 lambda!282038) (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 lt!2204683 lt!2204684)) true))))

(declare-fun lt!2204705 () Unit!154246)

(assert (=> b!5407799 (= lt!2204705 (lemmaConcatPreservesForall!206 lt!2204683 lt!2204684 lambda!282039))))

(declare-fun lt!2204702 () Unit!154246)

(declare-fun lemmaMapOnSingletonSet!40 ((InoxSet Context!9130) Context!9130 Int) Unit!154246)

(assert (=> b!5407799 (= lt!2204702 (lemmaMapOnSingletonSet!40 lt!2204699 lt!2204688 lambda!282038))))

(assert (= (and start!567954 res!2299492) b!5407777))

(assert (= (and b!5407777 res!2299483) b!5407798))

(assert (= (and b!5407798 res!2299491) b!5407785))

(assert (= (and b!5407785 (not res!2299504)) b!5407765))

(assert (= (and b!5407765 (not res!2299479)) b!5407760))

(assert (= (and b!5407760 (not res!2299482)) b!5407797))

(assert (= (and b!5407797 (not res!2299490)) b!5407793))

(assert (= (and b!5407793 (not res!2299481)) b!5407778))

(assert (= (and b!5407778 (not res!2299489)) b!5407764))

(assert (= (and b!5407764 (not res!2299487)) b!5407776))

(assert (= (and b!5407776 (not res!2299473)) b!5407763))

(assert (= (and b!5407763 c!942766) b!5407769))

(assert (= (and b!5407763 (not c!942766)) b!5407782))

(assert (= (and b!5407769 (not res!2299476)) b!5407768))

(assert (= (and b!5407763 (not res!2299485)) b!5407789))

(assert (= (and b!5407789 res!2299496) b!5407775))

(assert (= (and b!5407789 (not res!2299493)) b!5407766))

(assert (= (and b!5407766 (not res!2299484)) b!5407755))

(assert (= (and b!5407755 (not res!2299502)) b!5407791))

(assert (= (and b!5407791 (not res!2299472)) b!5407787))

(assert (= (and b!5407787 (not res!2299478)) b!5407792))

(assert (= (and b!5407792 (not res!2299471)) b!5407773))

(assert (= (and b!5407773 (not res!2299499)) b!5407758))

(assert (= (and b!5407758 (not res!2299477)) b!5407759))

(assert (= (and b!5407759 (not res!2299474)) b!5407757))

(assert (= (and b!5407757 (not res!2299497)) b!5407756))

(assert (= (and b!5407756 (not res!2299486)) b!5407780))

(assert (= (and b!5407780 (not res!2299495)) b!5407770))

(assert (= (and b!5407770 (not res!2299501)) b!5407771))

(assert (= (and b!5407771 res!2299494) b!5407767))

(assert (= (and b!5407771 (not res!2299498)) b!5407786))

(assert (= (and b!5407786 (not res!2299505)) b!5407799))

(assert (= (and b!5407799 (not res!2299500)) b!5407784))

(assert (= (and b!5407784 (not res!2299480)) b!5407795))

(assert (= (and b!5407795 (not res!2299475)) b!5407774))

(assert (= (and b!5407774 (not res!2299503)) b!5407772))

(assert (= (and b!5407772 res!2299488) b!5407790))

(assert (= (and start!567954 ((_ is ElementMatch!15181) r!7292)) b!5407781))

(assert (= (and start!567954 ((_ is Concat!24026) r!7292)) b!5407796))

(assert (= (and start!567954 ((_ is Star!15181) r!7292)) b!5407788))

(assert (= (and start!567954 ((_ is Union!15181) r!7292)) b!5407779))

(assert (= (and start!567954 condSetEmpty!35213) setIsEmpty!35213))

(assert (= (and start!567954 (not condSetEmpty!35213)) setNonEmpty!35213))

(assert (= setNonEmpty!35213 b!5407762))

(assert (= b!5407761 b!5407794))

(assert (= (and start!567954 ((_ is Cons!61720) zl!343)) b!5407761))

(assert (= (and start!567954 ((_ is Cons!61719) s!2326)) b!5407783))

(declare-fun m!6431834 () Bool)

(assert (=> b!5407760 m!6431834))

(declare-fun m!6431836 () Bool)

(assert (=> b!5407757 m!6431836))

(declare-fun m!6431838 () Bool)

(assert (=> b!5407775 m!6431838))

(declare-fun m!6431840 () Bool)

(assert (=> b!5407761 m!6431840))

(declare-fun m!6431842 () Bool)

(assert (=> b!5407777 m!6431842))

(declare-fun m!6431844 () Bool)

(assert (=> b!5407763 m!6431844))

(declare-fun m!6431846 () Bool)

(assert (=> b!5407763 m!6431846))

(declare-fun m!6431848 () Bool)

(assert (=> b!5407763 m!6431848))

(declare-fun m!6431850 () Bool)

(assert (=> b!5407763 m!6431850))

(declare-fun m!6431852 () Bool)

(assert (=> b!5407763 m!6431852))

(declare-fun m!6431854 () Bool)

(assert (=> b!5407763 m!6431854))

(declare-fun m!6431856 () Bool)

(assert (=> b!5407763 m!6431856))

(declare-fun m!6431858 () Bool)

(assert (=> b!5407765 m!6431858))

(declare-fun m!6431860 () Bool)

(assert (=> b!5407798 m!6431860))

(declare-fun m!6431862 () Bool)

(assert (=> b!5407756 m!6431862))

(declare-fun m!6431864 () Bool)

(assert (=> b!5407756 m!6431864))

(declare-fun m!6431866 () Bool)

(assert (=> b!5407756 m!6431866))

(declare-fun m!6431868 () Bool)

(assert (=> b!5407776 m!6431868))

(declare-fun m!6431870 () Bool)

(assert (=> b!5407755 m!6431870))

(declare-fun m!6431872 () Bool)

(assert (=> b!5407768 m!6431872))

(declare-fun m!6431874 () Bool)

(assert (=> b!5407780 m!6431874))

(declare-fun m!6431876 () Bool)

(assert (=> setNonEmpty!35213 m!6431876))

(declare-fun m!6431878 () Bool)

(assert (=> b!5407799 m!6431878))

(declare-fun m!6431880 () Bool)

(assert (=> b!5407799 m!6431880))

(declare-fun m!6431882 () Bool)

(assert (=> b!5407799 m!6431882))

(declare-fun m!6431884 () Bool)

(assert (=> b!5407799 m!6431884))

(declare-fun m!6431886 () Bool)

(assert (=> b!5407799 m!6431886))

(declare-fun m!6431888 () Bool)

(assert (=> b!5407799 m!6431888))

(declare-fun m!6431890 () Bool)

(assert (=> b!5407758 m!6431890))

(assert (=> b!5407767 m!6431872))

(declare-fun m!6431892 () Bool)

(assert (=> b!5407772 m!6431892))

(declare-fun m!6431894 () Bool)

(assert (=> b!5407772 m!6431894))

(declare-fun m!6431896 () Bool)

(assert (=> b!5407772 m!6431896))

(declare-fun m!6431898 () Bool)

(assert (=> b!5407772 m!6431898))

(declare-fun m!6431900 () Bool)

(assert (=> b!5407772 m!6431900))

(declare-fun m!6431902 () Bool)

(assert (=> b!5407772 m!6431902))

(assert (=> b!5407772 m!6431894))

(declare-fun m!6431904 () Bool)

(assert (=> b!5407772 m!6431904))

(declare-fun m!6431906 () Bool)

(assert (=> b!5407772 m!6431906))

(declare-fun m!6431908 () Bool)

(assert (=> b!5407772 m!6431908))

(declare-fun m!6431910 () Bool)

(assert (=> b!5407772 m!6431910))

(declare-fun m!6431912 () Bool)

(assert (=> b!5407772 m!6431912))

(declare-fun m!6431914 () Bool)

(assert (=> b!5407772 m!6431914))

(assert (=> b!5407772 m!6431880))

(declare-fun m!6431916 () Bool)

(assert (=> b!5407772 m!6431916))

(assert (=> b!5407772 m!6431884))

(declare-fun m!6431918 () Bool)

(assert (=> b!5407772 m!6431918))

(assert (=> b!5407772 m!6431880))

(declare-fun m!6431920 () Bool)

(assert (=> b!5407772 m!6431920))

(assert (=> b!5407772 m!6431882))

(declare-fun m!6431922 () Bool)

(assert (=> b!5407772 m!6431922))

(declare-fun m!6431924 () Bool)

(assert (=> b!5407772 m!6431924))

(declare-fun m!6431926 () Bool)

(assert (=> b!5407772 m!6431926))

(assert (=> b!5407772 m!6431904))

(declare-fun m!6431928 () Bool)

(assert (=> b!5407774 m!6431928))

(declare-fun m!6431930 () Bool)

(assert (=> b!5407764 m!6431930))

(declare-fun m!6431932 () Bool)

(assert (=> b!5407764 m!6431932))

(declare-fun m!6431934 () Bool)

(assert (=> b!5407764 m!6431934))

(assert (=> b!5407764 m!6431930))

(declare-fun m!6431936 () Bool)

(assert (=> b!5407764 m!6431936))

(declare-fun m!6431938 () Bool)

(assert (=> b!5407764 m!6431938))

(assert (=> b!5407764 m!6431932))

(declare-fun m!6431940 () Bool)

(assert (=> b!5407764 m!6431940))

(declare-fun m!6431942 () Bool)

(assert (=> b!5407793 m!6431942))

(assert (=> b!5407793 m!6431942))

(declare-fun m!6431944 () Bool)

(assert (=> b!5407793 m!6431944))

(declare-fun m!6431946 () Bool)

(assert (=> b!5407769 m!6431946))

(declare-fun m!6431948 () Bool)

(assert (=> b!5407769 m!6431948))

(declare-fun m!6431950 () Bool)

(assert (=> b!5407769 m!6431950))

(assert (=> b!5407771 m!6431948))

(declare-fun m!6431952 () Bool)

(assert (=> b!5407784 m!6431952))

(declare-fun m!6431954 () Bool)

(assert (=> b!5407784 m!6431954))

(declare-fun m!6431956 () Bool)

(assert (=> b!5407784 m!6431956))

(declare-fun m!6431958 () Bool)

(assert (=> b!5407784 m!6431958))

(declare-fun m!6431960 () Bool)

(assert (=> b!5407784 m!6431960))

(declare-fun m!6431962 () Bool)

(assert (=> b!5407787 m!6431962))

(declare-fun m!6431964 () Bool)

(assert (=> b!5407787 m!6431964))

(declare-fun m!6431966 () Bool)

(assert (=> b!5407785 m!6431966))

(declare-fun m!6431968 () Bool)

(assert (=> b!5407785 m!6431968))

(declare-fun m!6431970 () Bool)

(assert (=> b!5407785 m!6431970))

(declare-fun m!6431972 () Bool)

(assert (=> b!5407759 m!6431972))

(declare-fun m!6431974 () Bool)

(assert (=> b!5407759 m!6431974))

(declare-fun m!6431976 () Bool)

(assert (=> b!5407759 m!6431976))

(declare-fun m!6431978 () Bool)

(assert (=> b!5407759 m!6431978))

(declare-fun m!6431980 () Bool)

(assert (=> b!5407759 m!6431980))

(declare-fun m!6431982 () Bool)

(assert (=> b!5407759 m!6431982))

(declare-fun m!6431984 () Bool)

(assert (=> b!5407759 m!6431984))

(declare-fun m!6431986 () Bool)

(assert (=> b!5407759 m!6431986))

(declare-fun m!6431988 () Bool)

(assert (=> b!5407759 m!6431988))

(declare-fun m!6431990 () Bool)

(assert (=> start!567954 m!6431990))

(declare-fun m!6431992 () Bool)

(assert (=> b!5407791 m!6431992))

(declare-fun m!6431994 () Bool)

(assert (=> b!5407791 m!6431994))

(declare-fun m!6431996 () Bool)

(assert (=> b!5407791 m!6431996))

(declare-fun m!6431998 () Bool)

(assert (=> b!5407791 m!6431998))

(declare-fun m!6432000 () Bool)

(assert (=> b!5407791 m!6432000))

(declare-fun m!6432002 () Bool)

(assert (=> b!5407795 m!6432002))

(check-sat (not b!5407785) tp_is_empty!39615 (not b!5407774) (not b!5407759) (not b!5407779) (not b!5407764) (not b!5407768) (not b!5407794) (not b!5407798) (not b!5407776) (not b!5407784) (not setNonEmpty!35213) (not b!5407762) (not b!5407755) (not b!5407760) (not b!5407761) (not b!5407793) (not start!567954) (not b!5407795) (not b!5407788) (not b!5407787) (not b!5407763) (not b!5407757) (not b!5407799) (not b!5407775) (not b!5407765) (not b!5407772) (not b!5407769) (not b!5407771) (not b!5407767) (not b!5407756) (not b!5407780) (not b!5407758) (not b!5407796) (not b!5407777) (not b!5407783) (not b!5407791))
(check-sat)
(get-model)

(declare-fun d!1726548 () Bool)

(declare-fun c!942829 () Bool)

(declare-fun isEmpty!33716 (List!61843) Bool)

(assert (=> d!1726548 (= c!942829 (isEmpty!33716 (t!375066 s!2326)))))

(declare-fun e!3352668 () Bool)

(assert (=> d!1726548 (= (matchZipper!1425 lt!2204730 (t!375066 s!2326)) e!3352668)))

(declare-fun b!5408078 () Bool)

(declare-fun nullableZipper!1442 ((InoxSet Context!9130)) Bool)

(assert (=> b!5408078 (= e!3352668 (nullableZipper!1442 lt!2204730))))

(declare-fun b!5408079 () Bool)

(declare-fun head!11600 (List!61843) C!30632)

(declare-fun tail!10697 (List!61843) List!61843)

(assert (=> b!5408079 (= e!3352668 (matchZipper!1425 (derivationStepZipper!1420 lt!2204730 (head!11600 (t!375066 s!2326))) (tail!10697 (t!375066 s!2326))))))

(assert (= (and d!1726548 c!942829) b!5408078))

(assert (= (and d!1726548 (not c!942829)) b!5408079))

(declare-fun m!6432244 () Bool)

(assert (=> d!1726548 m!6432244))

(declare-fun m!6432246 () Bool)

(assert (=> b!5408078 m!6432246))

(declare-fun m!6432248 () Bool)

(assert (=> b!5408079 m!6432248))

(assert (=> b!5408079 m!6432248))

(declare-fun m!6432250 () Bool)

(assert (=> b!5408079 m!6432250))

(declare-fun m!6432252 () Bool)

(assert (=> b!5408079 m!6432252))

(assert (=> b!5408079 m!6432250))

(assert (=> b!5408079 m!6432252))

(declare-fun m!6432254 () Bool)

(assert (=> b!5408079 m!6432254))

(assert (=> b!5407787 d!1726548))

(declare-fun d!1726550 () Bool)

(declare-fun c!942830 () Bool)

(assert (=> d!1726550 (= c!942830 (isEmpty!33716 s!2326))))

(declare-fun e!3352669 () Bool)

(assert (=> d!1726550 (= (matchZipper!1425 lt!2204698 s!2326) e!3352669)))

(declare-fun b!5408080 () Bool)

(assert (=> b!5408080 (= e!3352669 (nullableZipper!1442 lt!2204698))))

(declare-fun b!5408081 () Bool)

(assert (=> b!5408081 (= e!3352669 (matchZipper!1425 (derivationStepZipper!1420 lt!2204698 (head!11600 s!2326)) (tail!10697 s!2326)))))

(assert (= (and d!1726550 c!942830) b!5408080))

(assert (= (and d!1726550 (not c!942830)) b!5408081))

(declare-fun m!6432256 () Bool)

(assert (=> d!1726550 m!6432256))

(declare-fun m!6432258 () Bool)

(assert (=> b!5408080 m!6432258))

(declare-fun m!6432260 () Bool)

(assert (=> b!5408081 m!6432260))

(assert (=> b!5408081 m!6432260))

(declare-fun m!6432262 () Bool)

(assert (=> b!5408081 m!6432262))

(declare-fun m!6432264 () Bool)

(assert (=> b!5408081 m!6432264))

(assert (=> b!5408081 m!6432262))

(assert (=> b!5408081 m!6432264))

(declare-fun m!6432266 () Bool)

(assert (=> b!5408081 m!6432266))

(assert (=> b!5407787 d!1726550))

(declare-fun d!1726552 () Bool)

(assert (=> d!1726552 (= (isEmpty!33712 (t!375067 zl!343)) ((_ is Nil!61720) (t!375067 zl!343)))))

(assert (=> b!5407765 d!1726552))

(declare-fun d!1726554 () Bool)

(declare-fun e!3352679 () Bool)

(assert (=> d!1726554 (= (matchZipper!1425 ((_ map or) lt!2204693 lt!2204737) (t!375066 s!2326)) e!3352679)))

(declare-fun res!2299661 () Bool)

(assert (=> d!1726554 (=> res!2299661 e!3352679)))

(assert (=> d!1726554 (= res!2299661 (matchZipper!1425 lt!2204693 (t!375066 s!2326)))))

(declare-fun lt!2204810 () Unit!154246)

(declare-fun choose!40825 ((InoxSet Context!9130) (InoxSet Context!9130) List!61843) Unit!154246)

(assert (=> d!1726554 (= lt!2204810 (choose!40825 lt!2204693 lt!2204737 (t!375066 s!2326)))))

(assert (=> d!1726554 (= (lemmaZipperConcatMatchesSameAsBothZippers!418 lt!2204693 lt!2204737 (t!375066 s!2326)) lt!2204810)))

(declare-fun b!5408095 () Bool)

(assert (=> b!5408095 (= e!3352679 (matchZipper!1425 lt!2204737 (t!375066 s!2326)))))

(assert (= (and d!1726554 (not res!2299661)) b!5408095))

(assert (=> d!1726554 m!6431950))

(assert (=> d!1726554 m!6431948))

(declare-fun m!6432274 () Bool)

(assert (=> d!1726554 m!6432274))

(assert (=> b!5408095 m!6431872))

(assert (=> b!5407769 d!1726554))

(declare-fun d!1726558 () Bool)

(declare-fun c!942835 () Bool)

(assert (=> d!1726558 (= c!942835 (isEmpty!33716 (t!375066 s!2326)))))

(declare-fun e!3352680 () Bool)

(assert (=> d!1726558 (= (matchZipper!1425 lt!2204693 (t!375066 s!2326)) e!3352680)))

(declare-fun b!5408096 () Bool)

(assert (=> b!5408096 (= e!3352680 (nullableZipper!1442 lt!2204693))))

(declare-fun b!5408097 () Bool)

(assert (=> b!5408097 (= e!3352680 (matchZipper!1425 (derivationStepZipper!1420 lt!2204693 (head!11600 (t!375066 s!2326))) (tail!10697 (t!375066 s!2326))))))

(assert (= (and d!1726558 c!942835) b!5408096))

(assert (= (and d!1726558 (not c!942835)) b!5408097))

(assert (=> d!1726558 m!6432244))

(declare-fun m!6432276 () Bool)

(assert (=> b!5408096 m!6432276))

(assert (=> b!5408097 m!6432248))

(assert (=> b!5408097 m!6432248))

(declare-fun m!6432278 () Bool)

(assert (=> b!5408097 m!6432278))

(assert (=> b!5408097 m!6432252))

(assert (=> b!5408097 m!6432278))

(assert (=> b!5408097 m!6432252))

(declare-fun m!6432280 () Bool)

(assert (=> b!5408097 m!6432280))

(assert (=> b!5407769 d!1726558))

(declare-fun d!1726560 () Bool)

(declare-fun c!942836 () Bool)

(assert (=> d!1726560 (= c!942836 (isEmpty!33716 (t!375066 s!2326)))))

(declare-fun e!3352681 () Bool)

(assert (=> d!1726560 (= (matchZipper!1425 ((_ map or) lt!2204693 lt!2204737) (t!375066 s!2326)) e!3352681)))

(declare-fun b!5408098 () Bool)

(assert (=> b!5408098 (= e!3352681 (nullableZipper!1442 ((_ map or) lt!2204693 lt!2204737)))))

(declare-fun b!5408099 () Bool)

(assert (=> b!5408099 (= e!3352681 (matchZipper!1425 (derivationStepZipper!1420 ((_ map or) lt!2204693 lt!2204737) (head!11600 (t!375066 s!2326))) (tail!10697 (t!375066 s!2326))))))

(assert (= (and d!1726560 c!942836) b!5408098))

(assert (= (and d!1726560 (not c!942836)) b!5408099))

(assert (=> d!1726560 m!6432244))

(declare-fun m!6432282 () Bool)

(assert (=> b!5408098 m!6432282))

(assert (=> b!5408099 m!6432248))

(assert (=> b!5408099 m!6432248))

(declare-fun m!6432284 () Bool)

(assert (=> b!5408099 m!6432284))

(assert (=> b!5408099 m!6432252))

(assert (=> b!5408099 m!6432284))

(assert (=> b!5408099 m!6432252))

(declare-fun m!6432286 () Bool)

(assert (=> b!5408099 m!6432286))

(assert (=> b!5407769 d!1726560))

(declare-fun d!1726562 () Bool)

(declare-fun c!942837 () Bool)

(assert (=> d!1726562 (= c!942837 (isEmpty!33716 (t!375066 s!2326)))))

(declare-fun e!3352682 () Bool)

(assert (=> d!1726562 (= (matchZipper!1425 lt!2204737 (t!375066 s!2326)) e!3352682)))

(declare-fun b!5408100 () Bool)

(assert (=> b!5408100 (= e!3352682 (nullableZipper!1442 lt!2204737))))

(declare-fun b!5408101 () Bool)

(assert (=> b!5408101 (= e!3352682 (matchZipper!1425 (derivationStepZipper!1420 lt!2204737 (head!11600 (t!375066 s!2326))) (tail!10697 (t!375066 s!2326))))))

(assert (= (and d!1726562 c!942837) b!5408100))

(assert (= (and d!1726562 (not c!942837)) b!5408101))

(assert (=> d!1726562 m!6432244))

(declare-fun m!6432288 () Bool)

(assert (=> b!5408100 m!6432288))

(assert (=> b!5408101 m!6432248))

(assert (=> b!5408101 m!6432248))

(declare-fun m!6432290 () Bool)

(assert (=> b!5408101 m!6432290))

(assert (=> b!5408101 m!6432252))

(assert (=> b!5408101 m!6432290))

(assert (=> b!5408101 m!6432252))

(declare-fun m!6432292 () Bool)

(assert (=> b!5408101 m!6432292))

(assert (=> b!5407768 d!1726562))

(assert (=> b!5407767 d!1726562))

(declare-fun bs!1249308 () Bool)

(declare-fun d!1726564 () Bool)

(assert (= bs!1249308 (and d!1726564 b!5407799)))

(declare-fun lambda!282069 () Int)

(assert (=> bs!1249308 (= lambda!282069 lambda!282039)))

(declare-fun forall!14535 (List!61842 Int) Bool)

(assert (=> d!1726564 (= (inv!81199 (h!68168 zl!343)) (forall!14535 (exprs!5065 (h!68168 zl!343)) lambda!282069))))

(declare-fun bs!1249309 () Bool)

(assert (= bs!1249309 d!1726564))

(declare-fun m!6432300 () Bool)

(assert (=> bs!1249309 m!6432300))

(assert (=> b!5407761 d!1726564))

(declare-fun bs!1249312 () Bool)

(declare-fun d!1726568 () Bool)

(assert (= bs!1249312 (and d!1726568 b!5407799)))

(declare-fun lambda!282072 () Int)

(assert (=> bs!1249312 (= lambda!282072 lambda!282039)))

(declare-fun bs!1249313 () Bool)

(assert (= bs!1249313 (and d!1726568 d!1726564)))

(assert (=> bs!1249313 (= lambda!282072 lambda!282069)))

(declare-fun b!5408151 () Bool)

(declare-fun e!3352712 () Bool)

(declare-fun e!3352713 () Bool)

(assert (=> b!5408151 (= e!3352712 e!3352713)))

(declare-fun c!942855 () Bool)

(declare-fun tail!10698 (List!61842) List!61842)

(assert (=> b!5408151 (= c!942855 (isEmpty!33713 (tail!10698 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun e!3352714 () Bool)

(assert (=> d!1726568 e!3352714))

(declare-fun res!2299677 () Bool)

(assert (=> d!1726568 (=> (not res!2299677) (not e!3352714))))

(declare-fun lt!2204817 () Regex!15181)

(assert (=> d!1726568 (= res!2299677 (validRegex!6917 lt!2204817))))

(declare-fun e!3352716 () Regex!15181)

(assert (=> d!1726568 (= lt!2204817 e!3352716)))

(declare-fun c!942858 () Bool)

(declare-fun e!3352715 () Bool)

(assert (=> d!1726568 (= c!942858 e!3352715)))

(declare-fun res!2299678 () Bool)

(assert (=> d!1726568 (=> (not res!2299678) (not e!3352715))))

(assert (=> d!1726568 (= res!2299678 ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343))))))

(assert (=> d!1726568 (forall!14535 (exprs!5065 (h!68168 zl!343)) lambda!282072)))

(assert (=> d!1726568 (= (generalisedConcat!850 (exprs!5065 (h!68168 zl!343))) lt!2204817)))

(declare-fun b!5408152 () Bool)

(declare-fun isConcat!496 (Regex!15181) Bool)

(assert (=> b!5408152 (= e!3352713 (isConcat!496 lt!2204817))))

(declare-fun b!5408153 () Bool)

(assert (=> b!5408153 (= e!3352715 (isEmpty!33713 (t!375065 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun b!5408154 () Bool)

(declare-fun head!11601 (List!61842) Regex!15181)

(assert (=> b!5408154 (= e!3352713 (= lt!2204817 (head!11601 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun b!5408155 () Bool)

(assert (=> b!5408155 (= e!3352714 e!3352712)))

(declare-fun c!942856 () Bool)

(assert (=> b!5408155 (= c!942856 (isEmpty!33713 (exprs!5065 (h!68168 zl!343))))))

(declare-fun b!5408156 () Bool)

(declare-fun e!3352711 () Regex!15181)

(assert (=> b!5408156 (= e!3352711 EmptyExpr!15181)))

(declare-fun b!5408157 () Bool)

(assert (=> b!5408157 (= e!3352716 (h!68166 (exprs!5065 (h!68168 zl!343))))))

(declare-fun b!5408158 () Bool)

(declare-fun isEmptyExpr!973 (Regex!15181) Bool)

(assert (=> b!5408158 (= e!3352712 (isEmptyExpr!973 lt!2204817))))

(declare-fun b!5408159 () Bool)

(assert (=> b!5408159 (= e!3352716 e!3352711)))

(declare-fun c!942857 () Bool)

(assert (=> b!5408159 (= c!942857 ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343))))))

(declare-fun b!5408160 () Bool)

(assert (=> b!5408160 (= e!3352711 (Concat!24026 (h!68166 (exprs!5065 (h!68168 zl!343))) (generalisedConcat!850 (t!375065 (exprs!5065 (h!68168 zl!343))))))))

(assert (= (and d!1726568 res!2299678) b!5408153))

(assert (= (and d!1726568 c!942858) b!5408157))

(assert (= (and d!1726568 (not c!942858)) b!5408159))

(assert (= (and b!5408159 c!942857) b!5408160))

(assert (= (and b!5408159 (not c!942857)) b!5408156))

(assert (= (and d!1726568 res!2299677) b!5408155))

(assert (= (and b!5408155 c!942856) b!5408158))

(assert (= (and b!5408155 (not c!942856)) b!5408151))

(assert (= (and b!5408151 c!942855) b!5408154))

(assert (= (and b!5408151 (not c!942855)) b!5408152))

(assert (=> b!5408153 m!6431868))

(declare-fun m!6432322 () Bool)

(assert (=> b!5408154 m!6432322))

(declare-fun m!6432324 () Bool)

(assert (=> b!5408152 m!6432324))

(declare-fun m!6432326 () Bool)

(assert (=> d!1726568 m!6432326))

(declare-fun m!6432328 () Bool)

(assert (=> d!1726568 m!6432328))

(declare-fun m!6432330 () Bool)

(assert (=> b!5408151 m!6432330))

(assert (=> b!5408151 m!6432330))

(declare-fun m!6432332 () Bool)

(assert (=> b!5408151 m!6432332))

(declare-fun m!6432334 () Bool)

(assert (=> b!5408160 m!6432334))

(declare-fun m!6432336 () Bool)

(assert (=> b!5408155 m!6432336))

(declare-fun m!6432338 () Bool)

(assert (=> b!5408158 m!6432338))

(assert (=> b!5407760 d!1726568))

(declare-fun d!1726580 () Bool)

(declare-fun dynLambda!24322 (Int Context!9130) (InoxSet Context!9130))

(assert (=> d!1726580 (= (flatMap!908 lt!2204699 lambda!282037) (dynLambda!24322 lambda!282037 lt!2204688))))

(declare-fun lt!2204821 () Unit!154246)

(declare-fun choose!40828 ((InoxSet Context!9130) Context!9130 Int) Unit!154246)

(assert (=> d!1726580 (= lt!2204821 (choose!40828 lt!2204699 lt!2204688 lambda!282037))))

(assert (=> d!1726580 (= lt!2204699 (store ((as const (Array Context!9130 Bool)) false) lt!2204688 true))))

(assert (=> d!1726580 (= (lemmaFlatMapOnSingletonSet!440 lt!2204699 lt!2204688 lambda!282037) lt!2204821)))

(declare-fun b_lambda!206633 () Bool)

(assert (=> (not b_lambda!206633) (not d!1726580)))

(declare-fun bs!1249317 () Bool)

(assert (= bs!1249317 d!1726580))

(assert (=> bs!1249317 m!6431982))

(declare-fun m!6432342 () Bool)

(assert (=> bs!1249317 m!6432342))

(declare-fun m!6432344 () Bool)

(assert (=> bs!1249317 m!6432344))

(assert (=> bs!1249317 m!6431986))

(assert (=> b!5407759 d!1726580))

(declare-fun d!1726584 () Bool)

(declare-fun c!942873 () Bool)

(declare-fun e!3352735 () Bool)

(assert (=> d!1726584 (= c!942873 e!3352735)))

(declare-fun res!2299685 () Bool)

(assert (=> d!1726584 (=> (not res!2299685) (not e!3352735))))

(assert (=> d!1726584 (= res!2299685 ((_ is Cons!61718) (exprs!5065 lt!2204709)))))

(declare-fun e!3352737 () (InoxSet Context!9130))

(assert (=> d!1726584 (= (derivationStepZipperUp!553 lt!2204709 (h!68167 s!2326)) e!3352737)))

(declare-fun b!5408193 () Bool)

(declare-fun e!3352736 () (InoxSet Context!9130))

(assert (=> b!5408193 (= e!3352737 e!3352736)))

(declare-fun c!942874 () Bool)

(assert (=> b!5408193 (= c!942874 ((_ is Cons!61718) (exprs!5065 lt!2204709)))))

(declare-fun bm!387045 () Bool)

(declare-fun call!387050 () (InoxSet Context!9130))

(assert (=> bm!387045 (= call!387050 (derivationStepZipperDown!629 (h!68166 (exprs!5065 lt!2204709)) (Context!9131 (t!375065 (exprs!5065 lt!2204709))) (h!68167 s!2326)))))

(declare-fun b!5408194 () Bool)

(assert (=> b!5408194 (= e!3352737 ((_ map or) call!387050 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 lt!2204709))) (h!68167 s!2326))))))

(declare-fun b!5408195 () Bool)

(assert (=> b!5408195 (= e!3352735 (nullable!5350 (h!68166 (exprs!5065 lt!2204709))))))

(declare-fun b!5408196 () Bool)

(assert (=> b!5408196 (= e!3352736 call!387050)))

(declare-fun b!5408197 () Bool)

(assert (=> b!5408197 (= e!3352736 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726584 res!2299685) b!5408195))

(assert (= (and d!1726584 c!942873) b!5408194))

(assert (= (and d!1726584 (not c!942873)) b!5408193))

(assert (= (and b!5408193 c!942874) b!5408196))

(assert (= (and b!5408193 (not c!942874)) b!5408197))

(assert (= (or b!5408194 b!5408196) bm!387045))

(declare-fun m!6432346 () Bool)

(assert (=> bm!387045 m!6432346))

(declare-fun m!6432348 () Bool)

(assert (=> b!5408194 m!6432348))

(declare-fun m!6432350 () Bool)

(assert (=> b!5408195 m!6432350))

(assert (=> b!5407759 d!1726584))

(declare-fun d!1726586 () Bool)

(declare-fun lt!2204827 () Regex!15181)

(assert (=> d!1726586 (validRegex!6917 lt!2204827)))

(assert (=> d!1726586 (= lt!2204827 (generalisedUnion!1110 (unfocusZipperList!623 lt!2204726)))))

(assert (=> d!1726586 (= (unfocusZipper!923 lt!2204726) lt!2204827)))

(declare-fun bs!1249319 () Bool)

(assert (= bs!1249319 d!1726586))

(declare-fun m!6432352 () Bool)

(assert (=> bs!1249319 m!6432352))

(declare-fun m!6432354 () Bool)

(assert (=> bs!1249319 m!6432354))

(assert (=> bs!1249319 m!6432354))

(declare-fun m!6432356 () Bool)

(assert (=> bs!1249319 m!6432356))

(assert (=> b!5407759 d!1726586))

(declare-fun d!1726588 () Bool)

(assert (=> d!1726588 (= (flatMap!908 lt!2204724 lambda!282037) (dynLambda!24322 lambda!282037 lt!2204709))))

(declare-fun lt!2204828 () Unit!154246)

(assert (=> d!1726588 (= lt!2204828 (choose!40828 lt!2204724 lt!2204709 lambda!282037))))

(assert (=> d!1726588 (= lt!2204724 (store ((as const (Array Context!9130 Bool)) false) lt!2204709 true))))

(assert (=> d!1726588 (= (lemmaFlatMapOnSingletonSet!440 lt!2204724 lt!2204709 lambda!282037) lt!2204828)))

(declare-fun b_lambda!206635 () Bool)

(assert (=> (not b_lambda!206635) (not d!1726588)))

(declare-fun bs!1249321 () Bool)

(assert (= bs!1249321 d!1726588))

(assert (=> bs!1249321 m!6431988))

(declare-fun m!6432358 () Bool)

(assert (=> bs!1249321 m!6432358))

(declare-fun m!6432360 () Bool)

(assert (=> bs!1249321 m!6432360))

(assert (=> bs!1249321 m!6431976))

(assert (=> b!5407759 d!1726588))

(declare-fun d!1726590 () Bool)

(declare-fun choose!40830 ((InoxSet Context!9130) Int) (InoxSet Context!9130))

(assert (=> d!1726590 (= (flatMap!908 lt!2204724 lambda!282037) (choose!40830 lt!2204724 lambda!282037))))

(declare-fun bs!1249322 () Bool)

(assert (= bs!1249322 d!1726590))

(declare-fun m!6432382 () Bool)

(assert (=> bs!1249322 m!6432382))

(assert (=> b!5407759 d!1726590))

(declare-fun d!1726594 () Bool)

(declare-fun c!942879 () Bool)

(declare-fun e!3352744 () Bool)

(assert (=> d!1726594 (= c!942879 e!3352744)))

(declare-fun res!2299688 () Bool)

(assert (=> d!1726594 (=> (not res!2299688) (not e!3352744))))

(assert (=> d!1726594 (= res!2299688 ((_ is Cons!61718) (exprs!5065 lt!2204688)))))

(declare-fun e!3352746 () (InoxSet Context!9130))

(assert (=> d!1726594 (= (derivationStepZipperUp!553 lt!2204688 (h!68167 s!2326)) e!3352746)))

(declare-fun b!5408208 () Bool)

(declare-fun e!3352745 () (InoxSet Context!9130))

(assert (=> b!5408208 (= e!3352746 e!3352745)))

(declare-fun c!942880 () Bool)

(assert (=> b!5408208 (= c!942880 ((_ is Cons!61718) (exprs!5065 lt!2204688)))))

(declare-fun bm!387046 () Bool)

(declare-fun call!387051 () (InoxSet Context!9130))

(assert (=> bm!387046 (= call!387051 (derivationStepZipperDown!629 (h!68166 (exprs!5065 lt!2204688)) (Context!9131 (t!375065 (exprs!5065 lt!2204688))) (h!68167 s!2326)))))

(declare-fun b!5408209 () Bool)

(assert (=> b!5408209 (= e!3352746 ((_ map or) call!387051 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 lt!2204688))) (h!68167 s!2326))))))

(declare-fun b!5408210 () Bool)

(assert (=> b!5408210 (= e!3352744 (nullable!5350 (h!68166 (exprs!5065 lt!2204688))))))

(declare-fun b!5408211 () Bool)

(assert (=> b!5408211 (= e!3352745 call!387051)))

(declare-fun b!5408212 () Bool)

(assert (=> b!5408212 (= e!3352745 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726594 res!2299688) b!5408210))

(assert (= (and d!1726594 c!942879) b!5408209))

(assert (= (and d!1726594 (not c!942879)) b!5408208))

(assert (= (and b!5408208 c!942880) b!5408211))

(assert (= (and b!5408208 (not c!942880)) b!5408212))

(assert (= (or b!5408209 b!5408211) bm!387046))

(declare-fun m!6432384 () Bool)

(assert (=> bm!387046 m!6432384))

(declare-fun m!6432386 () Bool)

(assert (=> b!5408209 m!6432386))

(declare-fun m!6432388 () Bool)

(assert (=> b!5408210 m!6432388))

(assert (=> b!5407759 d!1726594))

(declare-fun d!1726596 () Bool)

(assert (=> d!1726596 (= (flatMap!908 lt!2204699 lambda!282037) (choose!40830 lt!2204699 lambda!282037))))

(declare-fun bs!1249323 () Bool)

(assert (= bs!1249323 d!1726596))

(declare-fun m!6432390 () Bool)

(assert (=> bs!1249323 m!6432390))

(assert (=> b!5407759 d!1726596))

(declare-fun b!5408266 () Bool)

(declare-fun e!3352780 () Option!15292)

(declare-fun e!3352776 () Option!15292)

(assert (=> b!5408266 (= e!3352780 e!3352776)))

(declare-fun c!942902 () Bool)

(assert (=> b!5408266 (= c!942902 ((_ is Nil!61719) s!2326))))

(declare-fun b!5408267 () Bool)

(assert (=> b!5408267 (= e!3352776 None!15291)))

(declare-fun b!5408268 () Bool)

(declare-fun e!3352779 () Bool)

(declare-fun lt!2204840 () Option!15292)

(assert (=> b!5408268 (= e!3352779 (= (++!13536 (_1!35683 (get!21274 lt!2204840)) (_2!35683 (get!21274 lt!2204840))) s!2326))))

(declare-fun b!5408269 () Bool)

(declare-fun res!2299706 () Bool)

(assert (=> b!5408269 (=> (not res!2299706) (not e!3352779))))

(assert (=> b!5408269 (= res!2299706 (matchR!7366 (regOne!30874 r!7292) (_1!35683 (get!21274 lt!2204840))))))

(declare-fun b!5408270 () Bool)

(declare-fun res!2299702 () Bool)

(assert (=> b!5408270 (=> (not res!2299702) (not e!3352779))))

(assert (=> b!5408270 (= res!2299702 (matchR!7366 (regTwo!30874 r!7292) (_2!35683 (get!21274 lt!2204840))))))

(declare-fun d!1726598 () Bool)

(declare-fun e!3352777 () Bool)

(assert (=> d!1726598 e!3352777))

(declare-fun res!2299703 () Bool)

(assert (=> d!1726598 (=> res!2299703 e!3352777)))

(assert (=> d!1726598 (= res!2299703 e!3352779)))

(declare-fun res!2299704 () Bool)

(assert (=> d!1726598 (=> (not res!2299704) (not e!3352779))))

(assert (=> d!1726598 (= res!2299704 (isDefined!11995 lt!2204840))))

(assert (=> d!1726598 (= lt!2204840 e!3352780)))

(declare-fun c!942901 () Bool)

(declare-fun e!3352778 () Bool)

(assert (=> d!1726598 (= c!942901 e!3352778)))

(declare-fun res!2299705 () Bool)

(assert (=> d!1726598 (=> (not res!2299705) (not e!3352778))))

(assert (=> d!1726598 (= res!2299705 (matchR!7366 (regOne!30874 r!7292) Nil!61719))))

(assert (=> d!1726598 (validRegex!6917 (regOne!30874 r!7292))))

(assert (=> d!1726598 (= (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326) lt!2204840)))

(declare-fun b!5408271 () Bool)

(assert (=> b!5408271 (= e!3352777 (not (isDefined!11995 lt!2204840)))))

(declare-fun b!5408272 () Bool)

(assert (=> b!5408272 (= e!3352780 (Some!15291 (tuple2!64761 Nil!61719 s!2326)))))

(declare-fun b!5408273 () Bool)

(declare-fun lt!2204841 () Unit!154246)

(declare-fun lt!2204839 () Unit!154246)

(assert (=> b!5408273 (= lt!2204841 lt!2204839)))

(assert (=> b!5408273 (= (++!13536 (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1837 (List!61843 C!30632 List!61843 List!61843) Unit!154246)

(assert (=> b!5408273 (= lt!2204839 (lemmaMoveElementToOtherListKeepsConcatEq!1837 Nil!61719 (h!68167 s!2326) (t!375066 s!2326) s!2326))))

(assert (=> b!5408273 (= e!3352776 (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326) s!2326))))

(declare-fun b!5408274 () Bool)

(assert (=> b!5408274 (= e!3352778 (matchR!7366 (regTwo!30874 r!7292) s!2326))))

(assert (= (and d!1726598 res!2299705) b!5408274))

(assert (= (and d!1726598 c!942901) b!5408272))

(assert (= (and d!1726598 (not c!942901)) b!5408266))

(assert (= (and b!5408266 c!942902) b!5408267))

(assert (= (and b!5408266 (not c!942902)) b!5408273))

(assert (= (and d!1726598 res!2299704) b!5408269))

(assert (= (and b!5408269 res!2299706) b!5408270))

(assert (= (and b!5408270 res!2299702) b!5408268))

(assert (= (and d!1726598 (not res!2299703)) b!5408271))

(declare-fun m!6432418 () Bool)

(assert (=> b!5408274 m!6432418))

(declare-fun m!6432420 () Bool)

(assert (=> b!5408269 m!6432420))

(declare-fun m!6432422 () Bool)

(assert (=> b!5408269 m!6432422))

(assert (=> b!5408268 m!6432420))

(declare-fun m!6432424 () Bool)

(assert (=> b!5408268 m!6432424))

(declare-fun m!6432426 () Bool)

(assert (=> b!5408271 m!6432426))

(assert (=> d!1726598 m!6432426))

(declare-fun m!6432428 () Bool)

(assert (=> d!1726598 m!6432428))

(declare-fun m!6432430 () Bool)

(assert (=> d!1726598 m!6432430))

(assert (=> b!5408270 m!6432420))

(declare-fun m!6432432 () Bool)

(assert (=> b!5408270 m!6432432))

(declare-fun m!6432434 () Bool)

(assert (=> b!5408273 m!6432434))

(assert (=> b!5408273 m!6432434))

(declare-fun m!6432436 () Bool)

(assert (=> b!5408273 m!6432436))

(declare-fun m!6432438 () Bool)

(assert (=> b!5408273 m!6432438))

(assert (=> b!5408273 m!6432434))

(declare-fun m!6432440 () Bool)

(assert (=> b!5408273 m!6432440))

(assert (=> b!5407764 d!1726598))

(declare-fun d!1726612 () Bool)

(declare-fun choose!40831 (Int) Bool)

(assert (=> d!1726612 (= (Exists!2362 lambda!282036) (choose!40831 lambda!282036))))

(declare-fun bs!1249330 () Bool)

(assert (= bs!1249330 d!1726612))

(declare-fun m!6432442 () Bool)

(assert (=> bs!1249330 m!6432442))

(assert (=> b!5407764 d!1726612))

(declare-fun d!1726614 () Bool)

(assert (=> d!1726614 (= (Exists!2362 lambda!282035) (choose!40831 lambda!282035))))

(declare-fun bs!1249331 () Bool)

(assert (= bs!1249331 d!1726614))

(declare-fun m!6432444 () Bool)

(assert (=> bs!1249331 m!6432444))

(assert (=> b!5407764 d!1726614))

(declare-fun bs!1249333 () Bool)

(declare-fun d!1726616 () Bool)

(assert (= bs!1249333 (and d!1726616 b!5407764)))

(declare-fun lambda!282086 () Int)

(assert (=> bs!1249333 (= lambda!282086 lambda!282035)))

(assert (=> bs!1249333 (not (= lambda!282086 lambda!282036))))

(declare-fun bs!1249337 () Bool)

(assert (= bs!1249337 (and d!1726616 b!5407772)))

(assert (=> bs!1249337 (= (= (regOne!30874 r!7292) lt!2204738) (= lambda!282086 lambda!282040))))

(assert (=> bs!1249337 (not (= lambda!282086 lambda!282041))))

(assert (=> d!1726616 true))

(assert (=> d!1726616 true))

(assert (=> d!1726616 true))

(assert (=> d!1726616 (= (isDefined!11995 (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)) (Exists!2362 lambda!282086))))

(declare-fun lt!2204847 () Unit!154246)

(declare-fun choose!40832 (Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> d!1726616 (= lt!2204847 (choose!40832 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326))))

(assert (=> d!1726616 (validRegex!6917 (regOne!30874 r!7292))))

(assert (=> d!1726616 (= (lemmaFindConcatSeparationEquivalentToExists!1470 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326) lt!2204847)))

(declare-fun bs!1249339 () Bool)

(assert (= bs!1249339 d!1726616))

(assert (=> bs!1249339 m!6432430))

(assert (=> bs!1249339 m!6431932))

(declare-fun m!6432476 () Bool)

(assert (=> bs!1249339 m!6432476))

(declare-fun m!6432478 () Bool)

(assert (=> bs!1249339 m!6432478))

(assert (=> bs!1249339 m!6431932))

(assert (=> bs!1249339 m!6431934))

(assert (=> b!5407764 d!1726616))

(declare-fun bs!1249362 () Bool)

(declare-fun d!1726630 () Bool)

(assert (= bs!1249362 (and d!1726630 d!1726616)))

(declare-fun lambda!282095 () Int)

(assert (=> bs!1249362 (= lambda!282095 lambda!282086)))

(declare-fun bs!1249363 () Bool)

(assert (= bs!1249363 (and d!1726630 b!5407772)))

(assert (=> bs!1249363 (= (= (regOne!30874 r!7292) lt!2204738) (= lambda!282095 lambda!282040))))

(assert (=> bs!1249363 (not (= lambda!282095 lambda!282041))))

(declare-fun bs!1249365 () Bool)

(assert (= bs!1249365 (and d!1726630 b!5407764)))

(assert (=> bs!1249365 (not (= lambda!282095 lambda!282036))))

(assert (=> bs!1249365 (= lambda!282095 lambda!282035)))

(assert (=> d!1726630 true))

(assert (=> d!1726630 true))

(assert (=> d!1726630 true))

(declare-fun lambda!282097 () Int)

(assert (=> bs!1249362 (not (= lambda!282097 lambda!282086))))

(assert (=> bs!1249363 (not (= lambda!282097 lambda!282040))))

(declare-fun bs!1249369 () Bool)

(assert (= bs!1249369 d!1726630))

(assert (=> bs!1249369 (not (= lambda!282097 lambda!282095))))

(assert (=> bs!1249363 (= (= (regOne!30874 r!7292) lt!2204738) (= lambda!282097 lambda!282041))))

(assert (=> bs!1249365 (= lambda!282097 lambda!282036)))

(assert (=> bs!1249365 (not (= lambda!282097 lambda!282035))))

(assert (=> d!1726630 true))

(assert (=> d!1726630 true))

(assert (=> d!1726630 true))

(assert (=> d!1726630 (= (Exists!2362 lambda!282095) (Exists!2362 lambda!282097))))

(declare-fun lt!2204858 () Unit!154246)

(declare-fun choose!40833 (Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> d!1726630 (= lt!2204858 (choose!40833 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326))))

(assert (=> d!1726630 (validRegex!6917 (regOne!30874 r!7292))))

(assert (=> d!1726630 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1016 (regOne!30874 r!7292) (regTwo!30874 r!7292) s!2326) lt!2204858)))

(declare-fun m!6432518 () Bool)

(assert (=> bs!1249369 m!6432518))

(declare-fun m!6432520 () Bool)

(assert (=> bs!1249369 m!6432520))

(declare-fun m!6432522 () Bool)

(assert (=> bs!1249369 m!6432522))

(assert (=> bs!1249369 m!6432430))

(assert (=> b!5407764 d!1726630))

(declare-fun d!1726646 () Bool)

(declare-fun isEmpty!33717 (Option!15292) Bool)

(assert (=> d!1726646 (= (isDefined!11995 (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)) (not (isEmpty!33717 (findConcatSeparation!1706 (regOne!30874 r!7292) (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326))))))

(declare-fun bs!1249377 () Bool)

(assert (= bs!1249377 d!1726646))

(assert (=> bs!1249377 m!6431932))

(declare-fun m!6432524 () Bool)

(assert (=> bs!1249377 m!6432524))

(assert (=> b!5407764 d!1726646))

(declare-fun bm!387083 () Bool)

(declare-fun call!387088 () Bool)

(declare-fun c!942932 () Bool)

(assert (=> bm!387083 (= call!387088 (validRegex!6917 (ite c!942932 (regTwo!30875 r!7292) (regTwo!30874 r!7292))))))

(declare-fun b!5408378 () Bool)

(declare-fun e!3352844 () Bool)

(declare-fun e!3352847 () Bool)

(assert (=> b!5408378 (= e!3352844 e!3352847)))

(declare-fun c!942933 () Bool)

(assert (=> b!5408378 (= c!942933 ((_ is Star!15181) r!7292))))

(declare-fun b!5408379 () Bool)

(declare-fun res!2299753 () Bool)

(declare-fun e!3352846 () Bool)

(assert (=> b!5408379 (=> res!2299753 e!3352846)))

(assert (=> b!5408379 (= res!2299753 (not ((_ is Concat!24026) r!7292)))))

(declare-fun e!3352848 () Bool)

(assert (=> b!5408379 (= e!3352848 e!3352846)))

(declare-fun b!5408380 () Bool)

(declare-fun e!3352843 () Bool)

(assert (=> b!5408380 (= e!3352843 call!387088)))

(declare-fun b!5408381 () Bool)

(declare-fun e!3352849 () Bool)

(assert (=> b!5408381 (= e!3352846 e!3352849)))

(declare-fun res!2299755 () Bool)

(assert (=> b!5408381 (=> (not res!2299755) (not e!3352849))))

(declare-fun call!387090 () Bool)

(assert (=> b!5408381 (= res!2299755 call!387090)))

(declare-fun b!5408382 () Bool)

(assert (=> b!5408382 (= e!3352847 e!3352848)))

(assert (=> b!5408382 (= c!942932 ((_ is Union!15181) r!7292))))

(declare-fun bm!387084 () Bool)

(declare-fun call!387089 () Bool)

(assert (=> bm!387084 (= call!387089 (validRegex!6917 (ite c!942933 (reg!15510 r!7292) (ite c!942932 (regOne!30875 r!7292) (regOne!30874 r!7292)))))))

(declare-fun b!5408383 () Bool)

(declare-fun res!2299754 () Bool)

(assert (=> b!5408383 (=> (not res!2299754) (not e!3352843))))

(assert (=> b!5408383 (= res!2299754 call!387090)))

(assert (=> b!5408383 (= e!3352848 e!3352843)))

(declare-fun b!5408384 () Bool)

(declare-fun e!3352845 () Bool)

(assert (=> b!5408384 (= e!3352847 e!3352845)))

(declare-fun res!2299752 () Bool)

(assert (=> b!5408384 (= res!2299752 (not (nullable!5350 (reg!15510 r!7292))))))

(assert (=> b!5408384 (=> (not res!2299752) (not e!3352845))))

(declare-fun b!5408385 () Bool)

(assert (=> b!5408385 (= e!3352845 call!387089)))

(declare-fun d!1726648 () Bool)

(declare-fun res!2299756 () Bool)

(assert (=> d!1726648 (=> res!2299756 e!3352844)))

(assert (=> d!1726648 (= res!2299756 ((_ is ElementMatch!15181) r!7292))))

(assert (=> d!1726648 (= (validRegex!6917 r!7292) e!3352844)))

(declare-fun b!5408386 () Bool)

(assert (=> b!5408386 (= e!3352849 call!387088)))

(declare-fun bm!387085 () Bool)

(assert (=> bm!387085 (= call!387090 call!387089)))

(assert (= (and d!1726648 (not res!2299756)) b!5408378))

(assert (= (and b!5408378 c!942933) b!5408384))

(assert (= (and b!5408378 (not c!942933)) b!5408382))

(assert (= (and b!5408384 res!2299752) b!5408385))

(assert (= (and b!5408382 c!942932) b!5408383))

(assert (= (and b!5408382 (not c!942932)) b!5408379))

(assert (= (and b!5408383 res!2299754) b!5408380))

(assert (= (and b!5408379 (not res!2299753)) b!5408381))

(assert (= (and b!5408381 res!2299755) b!5408386))

(assert (= (or b!5408380 b!5408386) bm!387083))

(assert (= (or b!5408383 b!5408381) bm!387085))

(assert (= (or b!5408385 bm!387085) bm!387084))

(declare-fun m!6432560 () Bool)

(assert (=> bm!387083 m!6432560))

(declare-fun m!6432562 () Bool)

(assert (=> bm!387084 m!6432562))

(declare-fun m!6432564 () Bool)

(assert (=> b!5408384 m!6432564))

(assert (=> start!567954 d!1726648))

(declare-fun bs!1249409 () Bool)

(declare-fun b!5408475 () Bool)

(assert (= bs!1249409 (and b!5408475 d!1726630)))

(declare-fun lambda!282107 () Int)

(assert (=> bs!1249409 (not (= lambda!282107 lambda!282097))))

(declare-fun bs!1249410 () Bool)

(assert (= bs!1249410 (and b!5408475 d!1726616)))

(assert (=> bs!1249410 (not (= lambda!282107 lambda!282086))))

(declare-fun bs!1249411 () Bool)

(assert (= bs!1249411 (and b!5408475 b!5407772)))

(assert (=> bs!1249411 (not (= lambda!282107 lambda!282040))))

(assert (=> bs!1249409 (not (= lambda!282107 lambda!282095))))

(assert (=> bs!1249411 (not (= lambda!282107 lambda!282041))))

(declare-fun bs!1249412 () Bool)

(assert (= bs!1249412 (and b!5408475 b!5407764)))

(assert (=> bs!1249412 (not (= lambda!282107 lambda!282036))))

(assert (=> bs!1249412 (not (= lambda!282107 lambda!282035))))

(assert (=> b!5408475 true))

(assert (=> b!5408475 true))

(declare-fun bs!1249413 () Bool)

(declare-fun b!5408474 () Bool)

(assert (= bs!1249413 (and b!5408474 b!5408475)))

(declare-fun lambda!282108 () Int)

(assert (=> bs!1249413 (not (= lambda!282108 lambda!282107))))

(declare-fun bs!1249414 () Bool)

(assert (= bs!1249414 (and b!5408474 d!1726630)))

(assert (=> bs!1249414 (= lambda!282108 lambda!282097)))

(declare-fun bs!1249415 () Bool)

(assert (= bs!1249415 (and b!5408474 d!1726616)))

(assert (=> bs!1249415 (not (= lambda!282108 lambda!282086))))

(declare-fun bs!1249416 () Bool)

(assert (= bs!1249416 (and b!5408474 b!5407772)))

(assert (=> bs!1249416 (not (= lambda!282108 lambda!282040))))

(assert (=> bs!1249414 (not (= lambda!282108 lambda!282095))))

(assert (=> bs!1249416 (= (= (regOne!30874 r!7292) lt!2204738) (= lambda!282108 lambda!282041))))

(declare-fun bs!1249417 () Bool)

(assert (= bs!1249417 (and b!5408474 b!5407764)))

(assert (=> bs!1249417 (= lambda!282108 lambda!282036)))

(assert (=> bs!1249417 (not (= lambda!282108 lambda!282035))))

(assert (=> b!5408474 true))

(assert (=> b!5408474 true))

(declare-fun b!5408465 () Bool)

(declare-fun res!2299783 () Bool)

(declare-fun e!3352898 () Bool)

(assert (=> b!5408465 (=> res!2299783 e!3352898)))

(declare-fun call!387098 () Bool)

(assert (=> b!5408465 (= res!2299783 call!387098)))

(declare-fun e!3352897 () Bool)

(assert (=> b!5408465 (= e!3352897 e!3352898)))

(declare-fun b!5408466 () Bool)

(declare-fun e!3352900 () Bool)

(assert (=> b!5408466 (= e!3352900 call!387098)))

(declare-fun b!5408467 () Bool)

(declare-fun c!942962 () Bool)

(assert (=> b!5408467 (= c!942962 ((_ is ElementMatch!15181) r!7292))))

(declare-fun e!3352901 () Bool)

(declare-fun e!3352896 () Bool)

(assert (=> b!5408467 (= e!3352901 e!3352896)))

(declare-fun b!5408468 () Bool)

(assert (=> b!5408468 (= e!3352896 (= s!2326 (Cons!61719 (c!942767 r!7292) Nil!61719)))))

(declare-fun b!5408469 () Bool)

(declare-fun e!3352895 () Bool)

(assert (=> b!5408469 (= e!3352895 e!3352897)))

(declare-fun c!942963 () Bool)

(assert (=> b!5408469 (= c!942963 ((_ is Star!15181) r!7292))))

(declare-fun b!5408470 () Bool)

(declare-fun e!3352899 () Bool)

(assert (=> b!5408470 (= e!3352899 (matchRSpec!2284 (regTwo!30875 r!7292) s!2326))))

(declare-fun call!387097 () Bool)

(declare-fun bm!387092 () Bool)

(assert (=> bm!387092 (= call!387097 (Exists!2362 (ite c!942963 lambda!282107 lambda!282108)))))

(declare-fun b!5408472 () Bool)

(assert (=> b!5408472 (= e!3352900 e!3352901)))

(declare-fun res!2299782 () Bool)

(assert (=> b!5408472 (= res!2299782 (not ((_ is EmptyLang!15181) r!7292)))))

(assert (=> b!5408472 (=> (not res!2299782) (not e!3352901))))

(declare-fun b!5408473 () Bool)

(declare-fun c!942964 () Bool)

(assert (=> b!5408473 (= c!942964 ((_ is Union!15181) r!7292))))

(assert (=> b!5408473 (= e!3352896 e!3352895)))

(declare-fun bm!387093 () Bool)

(assert (=> bm!387093 (= call!387098 (isEmpty!33716 s!2326))))

(assert (=> b!5408474 (= e!3352897 call!387097)))

(assert (=> b!5408475 (= e!3352898 call!387097)))

(declare-fun b!5408471 () Bool)

(assert (=> b!5408471 (= e!3352895 e!3352899)))

(declare-fun res!2299781 () Bool)

(assert (=> b!5408471 (= res!2299781 (matchRSpec!2284 (regOne!30875 r!7292) s!2326))))

(assert (=> b!5408471 (=> res!2299781 e!3352899)))

(declare-fun d!1726664 () Bool)

(declare-fun c!942961 () Bool)

(assert (=> d!1726664 (= c!942961 ((_ is EmptyExpr!15181) r!7292))))

(assert (=> d!1726664 (= (matchRSpec!2284 r!7292 s!2326) e!3352900)))

(assert (= (and d!1726664 c!942961) b!5408466))

(assert (= (and d!1726664 (not c!942961)) b!5408472))

(assert (= (and b!5408472 res!2299782) b!5408467))

(assert (= (and b!5408467 c!942962) b!5408468))

(assert (= (and b!5408467 (not c!942962)) b!5408473))

(assert (= (and b!5408473 c!942964) b!5408471))

(assert (= (and b!5408473 (not c!942964)) b!5408469))

(assert (= (and b!5408471 (not res!2299781)) b!5408470))

(assert (= (and b!5408469 c!942963) b!5408465))

(assert (= (and b!5408469 (not c!942963)) b!5408474))

(assert (= (and b!5408465 (not res!2299783)) b!5408475))

(assert (= (or b!5408475 b!5408474) bm!387092))

(assert (= (or b!5408466 b!5408465) bm!387093))

(declare-fun m!6432640 () Bool)

(assert (=> b!5408470 m!6432640))

(declare-fun m!6432642 () Bool)

(assert (=> bm!387092 m!6432642))

(assert (=> bm!387093 m!6432256))

(declare-fun m!6432644 () Bool)

(assert (=> b!5408471 m!6432644))

(assert (=> b!5407785 d!1726664))

(declare-fun b!5408560 () Bool)

(declare-fun res!2299803 () Bool)

(declare-fun e!3352945 () Bool)

(assert (=> b!5408560 (=> (not res!2299803) (not e!3352945))))

(assert (=> b!5408560 (= res!2299803 (isEmpty!33716 (tail!10697 s!2326)))))

(declare-fun b!5408561 () Bool)

(declare-fun res!2299800 () Bool)

(declare-fun e!3352943 () Bool)

(assert (=> b!5408561 (=> res!2299800 e!3352943)))

(assert (=> b!5408561 (= res!2299800 (not ((_ is ElementMatch!15181) r!7292)))))

(declare-fun e!3352941 () Bool)

(assert (=> b!5408561 (= e!3352941 e!3352943)))

(declare-fun b!5408562 () Bool)

(declare-fun e!3352944 () Bool)

(declare-fun lt!2204872 () Bool)

(declare-fun call!387101 () Bool)

(assert (=> b!5408562 (= e!3352944 (= lt!2204872 call!387101))))

(declare-fun b!5408563 () Bool)

(declare-fun e!3352946 () Bool)

(assert (=> b!5408563 (= e!3352943 e!3352946)))

(declare-fun res!2299801 () Bool)

(assert (=> b!5408563 (=> (not res!2299801) (not e!3352946))))

(assert (=> b!5408563 (= res!2299801 (not lt!2204872))))

(declare-fun b!5408564 () Bool)

(assert (=> b!5408564 (= e!3352944 e!3352941)))

(declare-fun c!942972 () Bool)

(assert (=> b!5408564 (= c!942972 ((_ is EmptyLang!15181) r!7292))))

(declare-fun b!5408566 () Bool)

(declare-fun e!3352942 () Bool)

(assert (=> b!5408566 (= e!3352946 e!3352942)))

(declare-fun res!2299802 () Bool)

(assert (=> b!5408566 (=> res!2299802 e!3352942)))

(assert (=> b!5408566 (= res!2299802 call!387101)))

(declare-fun b!5408567 () Bool)

(assert (=> b!5408567 (= e!3352945 (= (head!11600 s!2326) (c!942767 r!7292)))))

(declare-fun b!5408568 () Bool)

(declare-fun e!3352940 () Bool)

(declare-fun derivativeStep!4263 (Regex!15181 C!30632) Regex!15181)

(assert (=> b!5408568 (= e!3352940 (matchR!7366 (derivativeStep!4263 r!7292 (head!11600 s!2326)) (tail!10697 s!2326)))))

(declare-fun b!5408569 () Bool)

(declare-fun res!2299806 () Bool)

(assert (=> b!5408569 (=> res!2299806 e!3352942)))

(assert (=> b!5408569 (= res!2299806 (not (isEmpty!33716 (tail!10697 s!2326))))))

(declare-fun bm!387096 () Bool)

(assert (=> bm!387096 (= call!387101 (isEmpty!33716 s!2326))))

(declare-fun d!1726692 () Bool)

(assert (=> d!1726692 e!3352944))

(declare-fun c!942974 () Bool)

(assert (=> d!1726692 (= c!942974 ((_ is EmptyExpr!15181) r!7292))))

(assert (=> d!1726692 (= lt!2204872 e!3352940)))

(declare-fun c!942973 () Bool)

(assert (=> d!1726692 (= c!942973 (isEmpty!33716 s!2326))))

(assert (=> d!1726692 (validRegex!6917 r!7292)))

(assert (=> d!1726692 (= (matchR!7366 r!7292 s!2326) lt!2204872)))

(declare-fun b!5408565 () Bool)

(assert (=> b!5408565 (= e!3352941 (not lt!2204872))))

(declare-fun b!5408570 () Bool)

(assert (=> b!5408570 (= e!3352940 (nullable!5350 r!7292))))

(declare-fun b!5408571 () Bool)

(assert (=> b!5408571 (= e!3352942 (not (= (head!11600 s!2326) (c!942767 r!7292))))))

(declare-fun b!5408572 () Bool)

(declare-fun res!2299804 () Bool)

(assert (=> b!5408572 (=> res!2299804 e!3352943)))

(assert (=> b!5408572 (= res!2299804 e!3352945)))

(declare-fun res!2299807 () Bool)

(assert (=> b!5408572 (=> (not res!2299807) (not e!3352945))))

(assert (=> b!5408572 (= res!2299807 lt!2204872)))

(declare-fun b!5408573 () Bool)

(declare-fun res!2299805 () Bool)

(assert (=> b!5408573 (=> (not res!2299805) (not e!3352945))))

(assert (=> b!5408573 (= res!2299805 (not call!387101))))

(assert (= (and d!1726692 c!942973) b!5408570))

(assert (= (and d!1726692 (not c!942973)) b!5408568))

(assert (= (and d!1726692 c!942974) b!5408562))

(assert (= (and d!1726692 (not c!942974)) b!5408564))

(assert (= (and b!5408564 c!942972) b!5408565))

(assert (= (and b!5408564 (not c!942972)) b!5408561))

(assert (= (and b!5408561 (not res!2299800)) b!5408572))

(assert (= (and b!5408572 res!2299807) b!5408573))

(assert (= (and b!5408573 res!2299805) b!5408560))

(assert (= (and b!5408560 res!2299803) b!5408567))

(assert (= (and b!5408572 (not res!2299804)) b!5408563))

(assert (= (and b!5408563 res!2299801) b!5408566))

(assert (= (and b!5408566 (not res!2299802)) b!5408569))

(assert (= (and b!5408569 (not res!2299806)) b!5408571))

(assert (= (or b!5408562 b!5408566 b!5408573) bm!387096))

(assert (=> b!5408568 m!6432260))

(assert (=> b!5408568 m!6432260))

(declare-fun m!6432654 () Bool)

(assert (=> b!5408568 m!6432654))

(assert (=> b!5408568 m!6432264))

(assert (=> b!5408568 m!6432654))

(assert (=> b!5408568 m!6432264))

(declare-fun m!6432656 () Bool)

(assert (=> b!5408568 m!6432656))

(assert (=> bm!387096 m!6432256))

(assert (=> d!1726692 m!6432256))

(assert (=> d!1726692 m!6431990))

(assert (=> b!5408571 m!6432260))

(assert (=> b!5408567 m!6432260))

(assert (=> b!5408569 m!6432264))

(assert (=> b!5408569 m!6432264))

(declare-fun m!6432658 () Bool)

(assert (=> b!5408569 m!6432658))

(declare-fun m!6432660 () Bool)

(assert (=> b!5408570 m!6432660))

(assert (=> b!5408560 m!6432264))

(assert (=> b!5408560 m!6432264))

(assert (=> b!5408560 m!6432658))

(assert (=> b!5407785 d!1726692))

(declare-fun d!1726704 () Bool)

(assert (=> d!1726704 (= (matchR!7366 r!7292 s!2326) (matchRSpec!2284 r!7292 s!2326))))

(declare-fun lt!2204875 () Unit!154246)

(declare-fun choose!40836 (Regex!15181 List!61843) Unit!154246)

(assert (=> d!1726704 (= lt!2204875 (choose!40836 r!7292 s!2326))))

(assert (=> d!1726704 (validRegex!6917 r!7292)))

(assert (=> d!1726704 (= (mainMatchTheorem!2284 r!7292 s!2326) lt!2204875)))

(declare-fun bs!1249423 () Bool)

(assert (= bs!1249423 d!1726704))

(assert (=> bs!1249423 m!6431968))

(assert (=> bs!1249423 m!6431966))

(declare-fun m!6432662 () Bool)

(assert (=> bs!1249423 m!6432662))

(assert (=> bs!1249423 m!6431990))

(assert (=> b!5407785 d!1726704))

(declare-fun b!5408596 () Bool)

(declare-fun e!3352963 () (InoxSet Context!9130))

(assert (=> b!5408596 (= e!3352963 ((as const (Array Context!9130 Bool)) false))))

(declare-fun b!5408597 () Bool)

(declare-fun e!3352964 () (InoxSet Context!9130))

(declare-fun call!387114 () (InoxSet Context!9130))

(declare-fun call!387115 () (InoxSet Context!9130))

(assert (=> b!5408597 (= e!3352964 ((_ map or) call!387114 call!387115))))

(declare-fun d!1726706 () Bool)

(declare-fun c!942988 () Bool)

(assert (=> d!1726706 (= c!942988 (and ((_ is ElementMatch!15181) (h!68166 (exprs!5065 (h!68168 zl!343)))) (= (c!942767 (h!68166 (exprs!5065 (h!68168 zl!343)))) (h!68167 s!2326))))))

(declare-fun e!3352962 () (InoxSet Context!9130))

(assert (=> d!1726706 (= (derivationStepZipperDown!629 (h!68166 (exprs!5065 (h!68168 zl!343))) lt!2204735 (h!68167 s!2326)) e!3352962)))

(declare-fun b!5408598 () Bool)

(declare-fun e!3352960 () (InoxSet Context!9130))

(assert (=> b!5408598 (= e!3352964 e!3352960)))

(declare-fun c!942987 () Bool)

(assert (=> b!5408598 (= c!942987 ((_ is Concat!24026) (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun bm!387109 () Bool)

(declare-fun call!387119 () List!61842)

(declare-fun call!387117 () List!61842)

(assert (=> bm!387109 (= call!387119 call!387117)))

(declare-fun b!5408599 () Bool)

(declare-fun c!942985 () Bool)

(assert (=> b!5408599 (= c!942985 ((_ is Star!15181) (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(assert (=> b!5408599 (= e!3352960 e!3352963)))

(declare-fun b!5408600 () Bool)

(declare-fun e!3352961 () (InoxSet Context!9130))

(declare-fun call!387118 () (InoxSet Context!9130))

(assert (=> b!5408600 (= e!3352961 ((_ map or) call!387114 call!387118))))

(declare-fun b!5408601 () Bool)

(declare-fun e!3352959 () Bool)

(assert (=> b!5408601 (= e!3352959 (nullable!5350 (regOne!30874 (h!68166 (exprs!5065 (h!68168 zl!343))))))))

(declare-fun bm!387110 () Bool)

(declare-fun call!387116 () (InoxSet Context!9130))

(assert (=> bm!387110 (= call!387116 call!387115)))

(declare-fun b!5408602 () Bool)

(assert (=> b!5408602 (= e!3352960 call!387116)))

(declare-fun b!5408603 () Bool)

(assert (=> b!5408603 (= e!3352963 call!387116)))

(declare-fun bm!387111 () Bool)

(declare-fun c!942989 () Bool)

(declare-fun $colon$colon!1491 (List!61842 Regex!15181) List!61842)

(assert (=> bm!387111 (= call!387117 ($colon$colon!1491 (exprs!5065 lt!2204735) (ite (or c!942989 c!942987) (regTwo!30874 (h!68166 (exprs!5065 (h!68168 zl!343)))) (h!68166 (exprs!5065 (h!68168 zl!343))))))))

(declare-fun b!5408604 () Bool)

(assert (=> b!5408604 (= e!3352962 (store ((as const (Array Context!9130 Bool)) false) lt!2204735 true))))

(declare-fun b!5408605 () Bool)

(assert (=> b!5408605 (= c!942989 e!3352959)))

(declare-fun res!2299810 () Bool)

(assert (=> b!5408605 (=> (not res!2299810) (not e!3352959))))

(assert (=> b!5408605 (= res!2299810 ((_ is Concat!24026) (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(assert (=> b!5408605 (= e!3352961 e!3352964)))

(declare-fun bm!387112 () Bool)

(assert (=> bm!387112 (= call!387115 call!387118)))

(declare-fun bm!387113 () Bool)

(declare-fun c!942986 () Bool)

(assert (=> bm!387113 (= call!387114 (derivationStepZipperDown!629 (ite c!942986 (regOne!30875 (h!68166 (exprs!5065 (h!68168 zl!343)))) (regOne!30874 (h!68166 (exprs!5065 (h!68168 zl!343))))) (ite c!942986 lt!2204735 (Context!9131 call!387117)) (h!68167 s!2326)))))

(declare-fun b!5408606 () Bool)

(assert (=> b!5408606 (= e!3352962 e!3352961)))

(assert (=> b!5408606 (= c!942986 ((_ is Union!15181) (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun bm!387114 () Bool)

(assert (=> bm!387114 (= call!387118 (derivationStepZipperDown!629 (ite c!942986 (regTwo!30875 (h!68166 (exprs!5065 (h!68168 zl!343)))) (ite c!942989 (regTwo!30874 (h!68166 (exprs!5065 (h!68168 zl!343)))) (ite c!942987 (regOne!30874 (h!68166 (exprs!5065 (h!68168 zl!343)))) (reg!15510 (h!68166 (exprs!5065 (h!68168 zl!343))))))) (ite (or c!942986 c!942989) lt!2204735 (Context!9131 call!387119)) (h!68167 s!2326)))))

(assert (= (and d!1726706 c!942988) b!5408604))

(assert (= (and d!1726706 (not c!942988)) b!5408606))

(assert (= (and b!5408606 c!942986) b!5408600))

(assert (= (and b!5408606 (not c!942986)) b!5408605))

(assert (= (and b!5408605 res!2299810) b!5408601))

(assert (= (and b!5408605 c!942989) b!5408597))

(assert (= (and b!5408605 (not c!942989)) b!5408598))

(assert (= (and b!5408598 c!942987) b!5408602))

(assert (= (and b!5408598 (not c!942987)) b!5408599))

(assert (= (and b!5408599 c!942985) b!5408603))

(assert (= (and b!5408599 (not c!942985)) b!5408596))

(assert (= (or b!5408602 b!5408603) bm!387109))

(assert (= (or b!5408602 b!5408603) bm!387110))

(assert (= (or b!5408597 bm!387109) bm!387111))

(assert (= (or b!5408597 bm!387110) bm!387112))

(assert (= (or b!5408600 bm!387112) bm!387114))

(assert (= (or b!5408600 b!5408597) bm!387113))

(declare-fun m!6432664 () Bool)

(assert (=> b!5408601 m!6432664))

(declare-fun m!6432666 () Bool)

(assert (=> bm!387114 m!6432666))

(declare-fun m!6432668 () Bool)

(assert (=> b!5408604 m!6432668))

(declare-fun m!6432670 () Bool)

(assert (=> bm!387113 m!6432670))

(declare-fun m!6432672 () Bool)

(assert (=> bm!387111 m!6432672))

(assert (=> b!5407763 d!1726706))

(declare-fun d!1726708 () Bool)

(assert (=> d!1726708 (= (flatMap!908 z!1189 lambda!282037) (choose!40830 z!1189 lambda!282037))))

(declare-fun bs!1249424 () Bool)

(assert (= bs!1249424 d!1726708))

(declare-fun m!6432674 () Bool)

(assert (=> bs!1249424 m!6432674))

(assert (=> b!5407763 d!1726708))

(declare-fun d!1726710 () Bool)

(declare-fun nullableFct!1593 (Regex!15181) Bool)

(assert (=> d!1726710 (= (nullable!5350 (h!68166 (exprs!5065 (h!68168 zl!343)))) (nullableFct!1593 (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun bs!1249425 () Bool)

(assert (= bs!1249425 d!1726710))

(declare-fun m!6432676 () Bool)

(assert (=> bs!1249425 m!6432676))

(assert (=> b!5407763 d!1726710))

(declare-fun d!1726712 () Bool)

(declare-fun c!942990 () Bool)

(declare-fun e!3352965 () Bool)

(assert (=> d!1726712 (= c!942990 e!3352965)))

(declare-fun res!2299811 () Bool)

(assert (=> d!1726712 (=> (not res!2299811) (not e!3352965))))

(assert (=> d!1726712 (= res!2299811 ((_ is Cons!61718) (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343))))))))))

(declare-fun e!3352967 () (InoxSet Context!9130))

(assert (=> d!1726712 (= (derivationStepZipperUp!553 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343))))) (h!68167 s!2326)) e!3352967)))

(declare-fun b!5408607 () Bool)

(declare-fun e!3352966 () (InoxSet Context!9130))

(assert (=> b!5408607 (= e!3352967 e!3352966)))

(declare-fun c!942991 () Bool)

(assert (=> b!5408607 (= c!942991 ((_ is Cons!61718) (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343))))))))))

(declare-fun bm!387115 () Bool)

(declare-fun call!387120 () (InoxSet Context!9130))

(assert (=> bm!387115 (= call!387120 (derivationStepZipperDown!629 (h!68166 (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343))))))) (Context!9131 (t!375065 (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343)))))))) (h!68167 s!2326)))))

(declare-fun b!5408608 () Bool)

(assert (=> b!5408608 (= e!3352967 ((_ map or) call!387120 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343)))))))) (h!68167 s!2326))))))

(declare-fun b!5408609 () Bool)

(assert (=> b!5408609 (= e!3352965 (nullable!5350 (h!68166 (exprs!5065 (Context!9131 (Cons!61718 (h!68166 (exprs!5065 (h!68168 zl!343))) (t!375065 (exprs!5065 (h!68168 zl!343)))))))))))

(declare-fun b!5408610 () Bool)

(assert (=> b!5408610 (= e!3352966 call!387120)))

(declare-fun b!5408611 () Bool)

(assert (=> b!5408611 (= e!3352966 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726712 res!2299811) b!5408609))

(assert (= (and d!1726712 c!942990) b!5408608))

(assert (= (and d!1726712 (not c!942990)) b!5408607))

(assert (= (and b!5408607 c!942991) b!5408610))

(assert (= (and b!5408607 (not c!942991)) b!5408611))

(assert (= (or b!5408608 b!5408610) bm!387115))

(declare-fun m!6432678 () Bool)

(assert (=> bm!387115 m!6432678))

(declare-fun m!6432680 () Bool)

(assert (=> b!5408608 m!6432680))

(declare-fun m!6432682 () Bool)

(assert (=> b!5408609 m!6432682))

(assert (=> b!5407763 d!1726712))

(declare-fun d!1726714 () Bool)

(declare-fun c!942992 () Bool)

(declare-fun e!3352968 () Bool)

(assert (=> d!1726714 (= c!942992 e!3352968)))

(declare-fun res!2299812 () Bool)

(assert (=> d!1726714 (=> (not res!2299812) (not e!3352968))))

(assert (=> d!1726714 (= res!2299812 ((_ is Cons!61718) (exprs!5065 lt!2204735)))))

(declare-fun e!3352970 () (InoxSet Context!9130))

(assert (=> d!1726714 (= (derivationStepZipperUp!553 lt!2204735 (h!68167 s!2326)) e!3352970)))

(declare-fun b!5408612 () Bool)

(declare-fun e!3352969 () (InoxSet Context!9130))

(assert (=> b!5408612 (= e!3352970 e!3352969)))

(declare-fun c!942993 () Bool)

(assert (=> b!5408612 (= c!942993 ((_ is Cons!61718) (exprs!5065 lt!2204735)))))

(declare-fun bm!387116 () Bool)

(declare-fun call!387121 () (InoxSet Context!9130))

(assert (=> bm!387116 (= call!387121 (derivationStepZipperDown!629 (h!68166 (exprs!5065 lt!2204735)) (Context!9131 (t!375065 (exprs!5065 lt!2204735))) (h!68167 s!2326)))))

(declare-fun b!5408613 () Bool)

(assert (=> b!5408613 (= e!3352970 ((_ map or) call!387121 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 lt!2204735))) (h!68167 s!2326))))))

(declare-fun b!5408614 () Bool)

(assert (=> b!5408614 (= e!3352968 (nullable!5350 (h!68166 (exprs!5065 lt!2204735))))))

(declare-fun b!5408615 () Bool)

(assert (=> b!5408615 (= e!3352969 call!387121)))

(declare-fun b!5408616 () Bool)

(assert (=> b!5408616 (= e!3352969 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726714 res!2299812) b!5408614))

(assert (= (and d!1726714 c!942992) b!5408613))

(assert (= (and d!1726714 (not c!942992)) b!5408612))

(assert (= (and b!5408612 c!942993) b!5408615))

(assert (= (and b!5408612 (not c!942993)) b!5408616))

(assert (= (or b!5408613 b!5408615) bm!387116))

(declare-fun m!6432684 () Bool)

(assert (=> bm!387116 m!6432684))

(declare-fun m!6432686 () Bool)

(assert (=> b!5408613 m!6432686))

(declare-fun m!6432688 () Bool)

(assert (=> b!5408614 m!6432688))

(assert (=> b!5407763 d!1726714))

(declare-fun d!1726716 () Bool)

(assert (=> d!1726716 (= (flatMap!908 z!1189 lambda!282037) (dynLambda!24322 lambda!282037 (h!68168 zl!343)))))

(declare-fun lt!2204876 () Unit!154246)

(assert (=> d!1726716 (= lt!2204876 (choose!40828 z!1189 (h!68168 zl!343) lambda!282037))))

(assert (=> d!1726716 (= z!1189 (store ((as const (Array Context!9130 Bool)) false) (h!68168 zl!343) true))))

(assert (=> d!1726716 (= (lemmaFlatMapOnSingletonSet!440 z!1189 (h!68168 zl!343) lambda!282037) lt!2204876)))

(declare-fun b_lambda!206653 () Bool)

(assert (=> (not b_lambda!206653) (not d!1726716)))

(declare-fun bs!1249426 () Bool)

(assert (= bs!1249426 d!1726716))

(assert (=> bs!1249426 m!6431856))

(declare-fun m!6432690 () Bool)

(assert (=> bs!1249426 m!6432690))

(declare-fun m!6432692 () Bool)

(assert (=> bs!1249426 m!6432692))

(declare-fun m!6432694 () Bool)

(assert (=> bs!1249426 m!6432694))

(assert (=> b!5407763 d!1726716))

(declare-fun d!1726718 () Bool)

(declare-fun c!942994 () Bool)

(declare-fun e!3352971 () Bool)

(assert (=> d!1726718 (= c!942994 e!3352971)))

(declare-fun res!2299813 () Bool)

(assert (=> d!1726718 (=> (not res!2299813) (not e!3352971))))

(assert (=> d!1726718 (= res!2299813 ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343))))))

(declare-fun e!3352973 () (InoxSet Context!9130))

(assert (=> d!1726718 (= (derivationStepZipperUp!553 (h!68168 zl!343) (h!68167 s!2326)) e!3352973)))

(declare-fun b!5408617 () Bool)

(declare-fun e!3352972 () (InoxSet Context!9130))

(assert (=> b!5408617 (= e!3352973 e!3352972)))

(declare-fun c!942995 () Bool)

(assert (=> b!5408617 (= c!942995 ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343))))))

(declare-fun bm!387117 () Bool)

(declare-fun call!387122 () (InoxSet Context!9130))

(assert (=> bm!387117 (= call!387122 (derivationStepZipperDown!629 (h!68166 (exprs!5065 (h!68168 zl!343))) (Context!9131 (t!375065 (exprs!5065 (h!68168 zl!343)))) (h!68167 s!2326)))))

(declare-fun b!5408618 () Bool)

(assert (=> b!5408618 (= e!3352973 ((_ map or) call!387122 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 (h!68168 zl!343)))) (h!68167 s!2326))))))

(declare-fun b!5408619 () Bool)

(assert (=> b!5408619 (= e!3352971 (nullable!5350 (h!68166 (exprs!5065 (h!68168 zl!343)))))))

(declare-fun b!5408620 () Bool)

(assert (=> b!5408620 (= e!3352972 call!387122)))

(declare-fun b!5408621 () Bool)

(assert (=> b!5408621 (= e!3352972 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726718 res!2299813) b!5408619))

(assert (= (and d!1726718 c!942994) b!5408618))

(assert (= (and d!1726718 (not c!942994)) b!5408617))

(assert (= (and b!5408617 c!942995) b!5408620))

(assert (= (and b!5408617 (not c!942995)) b!5408621))

(assert (= (or b!5408618 b!5408620) bm!387117))

(declare-fun m!6432696 () Bool)

(assert (=> bm!387117 m!6432696))

(declare-fun m!6432698 () Bool)

(assert (=> b!5408618 m!6432698))

(assert (=> b!5408619 m!6431852))

(assert (=> b!5407763 d!1726718))

(declare-fun d!1726720 () Bool)

(assert (=> d!1726720 (isDefined!11995 (findConcatSeparationZippers!38 lt!2204699 (store ((as const (Array Context!9130 Bool)) false) lt!2204709 true) Nil!61719 s!2326 s!2326))))

(declare-fun lt!2204879 () Unit!154246)

(declare-fun choose!40837 ((InoxSet Context!9130) Context!9130 List!61843) Unit!154246)

(assert (=> d!1726720 (= lt!2204879 (choose!40837 lt!2204699 lt!2204709 s!2326))))

(assert (=> d!1726720 (matchZipper!1425 (appendTo!40 lt!2204699 lt!2204709) s!2326)))

(assert (=> d!1726720 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!38 lt!2204699 lt!2204709 s!2326) lt!2204879)))

(declare-fun bs!1249427 () Bool)

(assert (= bs!1249427 d!1726720))

(assert (=> bs!1249427 m!6431976))

(declare-fun m!6432700 () Bool)

(assert (=> bs!1249427 m!6432700))

(declare-fun m!6432702 () Bool)

(assert (=> bs!1249427 m!6432702))

(assert (=> bs!1249427 m!6431878))

(declare-fun m!6432704 () Bool)

(assert (=> bs!1249427 m!6432704))

(assert (=> bs!1249427 m!6431878))

(assert (=> bs!1249427 m!6431976))

(assert (=> bs!1249427 m!6432700))

(declare-fun m!6432706 () Bool)

(assert (=> bs!1249427 m!6432706))

(assert (=> b!5407784 d!1726720))

(declare-fun b!5408633 () Bool)

(declare-fun e!3352978 () Bool)

(declare-fun lt!2204882 () List!61843)

(assert (=> b!5408633 (= e!3352978 (or (not (= (_2!35683 lt!2204704) Nil!61719)) (= lt!2204882 (_1!35683 lt!2204704))))))

(declare-fun b!5408630 () Bool)

(declare-fun e!3352979 () List!61843)

(assert (=> b!5408630 (= e!3352979 (_2!35683 lt!2204704))))

(declare-fun b!5408631 () Bool)

(assert (=> b!5408631 (= e!3352979 (Cons!61719 (h!68167 (_1!35683 lt!2204704)) (++!13536 (t!375066 (_1!35683 lt!2204704)) (_2!35683 lt!2204704))))))

(declare-fun b!5408632 () Bool)

(declare-fun res!2299818 () Bool)

(assert (=> b!5408632 (=> (not res!2299818) (not e!3352978))))

(declare-fun size!39851 (List!61843) Int)

(assert (=> b!5408632 (= res!2299818 (= (size!39851 lt!2204882) (+ (size!39851 (_1!35683 lt!2204704)) (size!39851 (_2!35683 lt!2204704)))))))

(declare-fun d!1726722 () Bool)

(assert (=> d!1726722 e!3352978))

(declare-fun res!2299819 () Bool)

(assert (=> d!1726722 (=> (not res!2299819) (not e!3352978))))

(declare-fun content!11073 (List!61843) (InoxSet C!30632))

(assert (=> d!1726722 (= res!2299819 (= (content!11073 lt!2204882) ((_ map or) (content!11073 (_1!35683 lt!2204704)) (content!11073 (_2!35683 lt!2204704)))))))

(assert (=> d!1726722 (= lt!2204882 e!3352979)))

(declare-fun c!942998 () Bool)

(assert (=> d!1726722 (= c!942998 ((_ is Nil!61719) (_1!35683 lt!2204704)))))

(assert (=> d!1726722 (= (++!13536 (_1!35683 lt!2204704) (_2!35683 lt!2204704)) lt!2204882)))

(assert (= (and d!1726722 c!942998) b!5408630))

(assert (= (and d!1726722 (not c!942998)) b!5408631))

(assert (= (and d!1726722 res!2299819) b!5408632))

(assert (= (and b!5408632 res!2299818) b!5408633))

(declare-fun m!6432708 () Bool)

(assert (=> b!5408631 m!6432708))

(declare-fun m!6432710 () Bool)

(assert (=> b!5408632 m!6432710))

(declare-fun m!6432712 () Bool)

(assert (=> b!5408632 m!6432712))

(declare-fun m!6432714 () Bool)

(assert (=> b!5408632 m!6432714))

(declare-fun m!6432716 () Bool)

(assert (=> d!1726722 m!6432716))

(declare-fun m!6432718 () Bool)

(assert (=> d!1726722 m!6432718))

(declare-fun m!6432720 () Bool)

(assert (=> d!1726722 m!6432720))

(assert (=> b!5407784 d!1726722))

(declare-fun d!1726724 () Bool)

(assert (=> d!1726724 (= (get!21274 lt!2204729) (v!51320 lt!2204729))))

(assert (=> b!5407784 d!1726724))

(declare-fun b!5408652 () Bool)

(declare-fun e!3352993 () Option!15292)

(assert (=> b!5408652 (= e!3352993 None!15291)))

(declare-fun b!5408653 () Bool)

(declare-fun e!3352990 () Option!15292)

(assert (=> b!5408653 (= e!3352990 e!3352993)))

(declare-fun c!943003 () Bool)

(assert (=> b!5408653 (= c!943003 ((_ is Nil!61719) s!2326))))

(declare-fun b!5408654 () Bool)

(declare-fun e!3352992 () Bool)

(declare-fun lt!2204891 () Option!15292)

(assert (=> b!5408654 (= e!3352992 (not (isDefined!11995 lt!2204891)))))

(declare-fun b!5408655 () Bool)

(assert (=> b!5408655 (= e!3352990 (Some!15291 (tuple2!64761 Nil!61719 s!2326)))))

(declare-fun d!1726726 () Bool)

(assert (=> d!1726726 e!3352992))

(declare-fun res!2299833 () Bool)

(assert (=> d!1726726 (=> res!2299833 e!3352992)))

(declare-fun e!3352994 () Bool)

(assert (=> d!1726726 (= res!2299833 e!3352994)))

(declare-fun res!2299834 () Bool)

(assert (=> d!1726726 (=> (not res!2299834) (not e!3352994))))

(assert (=> d!1726726 (= res!2299834 (isDefined!11995 lt!2204891))))

(assert (=> d!1726726 (= lt!2204891 e!3352990)))

(declare-fun c!943004 () Bool)

(declare-fun e!3352991 () Bool)

(assert (=> d!1726726 (= c!943004 e!3352991)))

(declare-fun res!2299831 () Bool)

(assert (=> d!1726726 (=> (not res!2299831) (not e!3352991))))

(assert (=> d!1726726 (= res!2299831 (matchZipper!1425 lt!2204699 Nil!61719))))

(assert (=> d!1726726 (= (++!13536 Nil!61719 s!2326) s!2326)))

(assert (=> d!1726726 (= (findConcatSeparationZippers!38 lt!2204699 lt!2204724 Nil!61719 s!2326 s!2326) lt!2204891)))

(declare-fun b!5408656 () Bool)

(assert (=> b!5408656 (= e!3352991 (matchZipper!1425 lt!2204724 s!2326))))

(declare-fun b!5408657 () Bool)

(assert (=> b!5408657 (= e!3352994 (= (++!13536 (_1!35683 (get!21274 lt!2204891)) (_2!35683 (get!21274 lt!2204891))) s!2326))))

(declare-fun b!5408658 () Bool)

(declare-fun res!2299830 () Bool)

(assert (=> b!5408658 (=> (not res!2299830) (not e!3352994))))

(assert (=> b!5408658 (= res!2299830 (matchZipper!1425 lt!2204724 (_2!35683 (get!21274 lt!2204891))))))

(declare-fun b!5408659 () Bool)

(declare-fun lt!2204890 () Unit!154246)

(declare-fun lt!2204889 () Unit!154246)

(assert (=> b!5408659 (= lt!2204890 lt!2204889)))

(assert (=> b!5408659 (= (++!13536 (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326)) s!2326)))

(assert (=> b!5408659 (= lt!2204889 (lemmaMoveElementToOtherListKeepsConcatEq!1837 Nil!61719 (h!68167 s!2326) (t!375066 s!2326) s!2326))))

(assert (=> b!5408659 (= e!3352993 (findConcatSeparationZippers!38 lt!2204699 lt!2204724 (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326) s!2326))))

(declare-fun b!5408660 () Bool)

(declare-fun res!2299832 () Bool)

(assert (=> b!5408660 (=> (not res!2299832) (not e!3352994))))

(assert (=> b!5408660 (= res!2299832 (matchZipper!1425 lt!2204699 (_1!35683 (get!21274 lt!2204891))))))

(assert (= (and d!1726726 res!2299831) b!5408656))

(assert (= (and d!1726726 c!943004) b!5408655))

(assert (= (and d!1726726 (not c!943004)) b!5408653))

(assert (= (and b!5408653 c!943003) b!5408652))

(assert (= (and b!5408653 (not c!943003)) b!5408659))

(assert (= (and d!1726726 res!2299834) b!5408660))

(assert (= (and b!5408660 res!2299832) b!5408658))

(assert (= (and b!5408658 res!2299830) b!5408657))

(assert (= (and d!1726726 (not res!2299833)) b!5408654))

(declare-fun m!6432722 () Bool)

(assert (=> b!5408656 m!6432722))

(declare-fun m!6432724 () Bool)

(assert (=> b!5408658 m!6432724))

(declare-fun m!6432726 () Bool)

(assert (=> b!5408658 m!6432726))

(declare-fun m!6432728 () Bool)

(assert (=> d!1726726 m!6432728))

(declare-fun m!6432730 () Bool)

(assert (=> d!1726726 m!6432730))

(declare-fun m!6432732 () Bool)

(assert (=> d!1726726 m!6432732))

(assert (=> b!5408660 m!6432724))

(declare-fun m!6432734 () Bool)

(assert (=> b!5408660 m!6432734))

(assert (=> b!5408654 m!6432728))

(assert (=> b!5408659 m!6432434))

(assert (=> b!5408659 m!6432434))

(assert (=> b!5408659 m!6432436))

(assert (=> b!5408659 m!6432438))

(assert (=> b!5408659 m!6432434))

(declare-fun m!6432736 () Bool)

(assert (=> b!5408659 m!6432736))

(assert (=> b!5408657 m!6432724))

(declare-fun m!6432738 () Bool)

(assert (=> b!5408657 m!6432738))

(assert (=> b!5407784 d!1726726))

(declare-fun d!1726728 () Bool)

(assert (=> d!1726728 (= (isDefined!11995 lt!2204729) (not (isEmpty!33717 lt!2204729)))))

(declare-fun bs!1249428 () Bool)

(assert (= bs!1249428 d!1726728))

(declare-fun m!6432740 () Bool)

(assert (=> bs!1249428 m!6432740))

(assert (=> b!5407784 d!1726728))

(declare-fun bs!1249429 () Bool)

(declare-fun b!5408671 () Bool)

(assert (= bs!1249429 (and b!5408671 b!5408475)))

(declare-fun lambda!282109 () Int)

(assert (=> bs!1249429 (= (and (= (reg!15510 lt!2204716) (reg!15510 r!7292)) (= lt!2204716 r!7292)) (= lambda!282109 lambda!282107))))

(declare-fun bs!1249430 () Bool)

(assert (= bs!1249430 (and b!5408671 b!5408474)))

(assert (=> bs!1249430 (not (= lambda!282109 lambda!282108))))

(declare-fun bs!1249431 () Bool)

(assert (= bs!1249431 (and b!5408671 d!1726630)))

(assert (=> bs!1249431 (not (= lambda!282109 lambda!282097))))

(declare-fun bs!1249432 () Bool)

(assert (= bs!1249432 (and b!5408671 d!1726616)))

(assert (=> bs!1249432 (not (= lambda!282109 lambda!282086))))

(declare-fun bs!1249433 () Bool)

(assert (= bs!1249433 (and b!5408671 b!5407772)))

(assert (=> bs!1249433 (not (= lambda!282109 lambda!282040))))

(assert (=> bs!1249431 (not (= lambda!282109 lambda!282095))))

(assert (=> bs!1249433 (not (= lambda!282109 lambda!282041))))

(declare-fun bs!1249434 () Bool)

(assert (= bs!1249434 (and b!5408671 b!5407764)))

(assert (=> bs!1249434 (not (= lambda!282109 lambda!282036))))

(assert (=> bs!1249434 (not (= lambda!282109 lambda!282035))))

(assert (=> b!5408671 true))

(assert (=> b!5408671 true))

(declare-fun bs!1249435 () Bool)

(declare-fun b!5408670 () Bool)

(assert (= bs!1249435 (and b!5408670 b!5408475)))

(declare-fun lambda!282110 () Int)

(assert (=> bs!1249435 (not (= lambda!282110 lambda!282107))))

(declare-fun bs!1249436 () Bool)

(assert (= bs!1249436 (and b!5408670 b!5408671)))

(assert (=> bs!1249436 (not (= lambda!282110 lambda!282109))))

(declare-fun bs!1249437 () Bool)

(assert (= bs!1249437 (and b!5408670 b!5408474)))

(assert (=> bs!1249437 (= (and (= (regOne!30874 lt!2204716) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204716) (regTwo!30874 r!7292))) (= lambda!282110 lambda!282108))))

(declare-fun bs!1249438 () Bool)

(assert (= bs!1249438 (and b!5408670 d!1726630)))

(assert (=> bs!1249438 (= (and (= (regOne!30874 lt!2204716) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204716) (regTwo!30874 r!7292))) (= lambda!282110 lambda!282097))))

(declare-fun bs!1249439 () Bool)

(assert (= bs!1249439 (and b!5408670 d!1726616)))

(assert (=> bs!1249439 (not (= lambda!282110 lambda!282086))))

(declare-fun bs!1249440 () Bool)

(assert (= bs!1249440 (and b!5408670 b!5407772)))

(assert (=> bs!1249440 (not (= lambda!282110 lambda!282040))))

(assert (=> bs!1249438 (not (= lambda!282110 lambda!282095))))

(assert (=> bs!1249440 (= (and (= (regOne!30874 lt!2204716) lt!2204738) (= (regTwo!30874 lt!2204716) (regTwo!30874 r!7292))) (= lambda!282110 lambda!282041))))

(declare-fun bs!1249441 () Bool)

(assert (= bs!1249441 (and b!5408670 b!5407764)))

(assert (=> bs!1249441 (= (and (= (regOne!30874 lt!2204716) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204716) (regTwo!30874 r!7292))) (= lambda!282110 lambda!282036))))

(assert (=> bs!1249441 (not (= lambda!282110 lambda!282035))))

(assert (=> b!5408670 true))

(assert (=> b!5408670 true))

(declare-fun b!5408661 () Bool)

(declare-fun res!2299837 () Bool)

(declare-fun e!3352998 () Bool)

(assert (=> b!5408661 (=> res!2299837 e!3352998)))

(declare-fun call!387124 () Bool)

(assert (=> b!5408661 (= res!2299837 call!387124)))

(declare-fun e!3352997 () Bool)

(assert (=> b!5408661 (= e!3352997 e!3352998)))

(declare-fun b!5408662 () Bool)

(declare-fun e!3353000 () Bool)

(assert (=> b!5408662 (= e!3353000 call!387124)))

(declare-fun b!5408663 () Bool)

(declare-fun c!943006 () Bool)

(assert (=> b!5408663 (= c!943006 ((_ is ElementMatch!15181) lt!2204716))))

(declare-fun e!3353001 () Bool)

(declare-fun e!3352996 () Bool)

(assert (=> b!5408663 (= e!3353001 e!3352996)))

(declare-fun b!5408664 () Bool)

(assert (=> b!5408664 (= e!3352996 (= s!2326 (Cons!61719 (c!942767 lt!2204716) Nil!61719)))))

(declare-fun b!5408665 () Bool)

(declare-fun e!3352995 () Bool)

(assert (=> b!5408665 (= e!3352995 e!3352997)))

(declare-fun c!943007 () Bool)

(assert (=> b!5408665 (= c!943007 ((_ is Star!15181) lt!2204716))))

(declare-fun b!5408666 () Bool)

(declare-fun e!3352999 () Bool)

(assert (=> b!5408666 (= e!3352999 (matchRSpec!2284 (regTwo!30875 lt!2204716) s!2326))))

(declare-fun bm!387118 () Bool)

(declare-fun call!387123 () Bool)

(assert (=> bm!387118 (= call!387123 (Exists!2362 (ite c!943007 lambda!282109 lambda!282110)))))

(declare-fun b!5408668 () Bool)

(assert (=> b!5408668 (= e!3353000 e!3353001)))

(declare-fun res!2299836 () Bool)

(assert (=> b!5408668 (= res!2299836 (not ((_ is EmptyLang!15181) lt!2204716)))))

(assert (=> b!5408668 (=> (not res!2299836) (not e!3353001))))

(declare-fun b!5408669 () Bool)

(declare-fun c!943008 () Bool)

(assert (=> b!5408669 (= c!943008 ((_ is Union!15181) lt!2204716))))

(assert (=> b!5408669 (= e!3352996 e!3352995)))

(declare-fun bm!387119 () Bool)

(assert (=> bm!387119 (= call!387124 (isEmpty!33716 s!2326))))

(assert (=> b!5408670 (= e!3352997 call!387123)))

(assert (=> b!5408671 (= e!3352998 call!387123)))

(declare-fun b!5408667 () Bool)

(assert (=> b!5408667 (= e!3352995 e!3352999)))

(declare-fun res!2299835 () Bool)

(assert (=> b!5408667 (= res!2299835 (matchRSpec!2284 (regOne!30875 lt!2204716) s!2326))))

(assert (=> b!5408667 (=> res!2299835 e!3352999)))

(declare-fun d!1726730 () Bool)

(declare-fun c!943005 () Bool)

(assert (=> d!1726730 (= c!943005 ((_ is EmptyExpr!15181) lt!2204716))))

(assert (=> d!1726730 (= (matchRSpec!2284 lt!2204716 s!2326) e!3353000)))

(assert (= (and d!1726730 c!943005) b!5408662))

(assert (= (and d!1726730 (not c!943005)) b!5408668))

(assert (= (and b!5408668 res!2299836) b!5408663))

(assert (= (and b!5408663 c!943006) b!5408664))

(assert (= (and b!5408663 (not c!943006)) b!5408669))

(assert (= (and b!5408669 c!943008) b!5408667))

(assert (= (and b!5408669 (not c!943008)) b!5408665))

(assert (= (and b!5408667 (not res!2299835)) b!5408666))

(assert (= (and b!5408665 c!943007) b!5408661))

(assert (= (and b!5408665 (not c!943007)) b!5408670))

(assert (= (and b!5408661 (not res!2299837)) b!5408671))

(assert (= (or b!5408671 b!5408670) bm!387118))

(assert (= (or b!5408662 b!5408661) bm!387119))

(declare-fun m!6432742 () Bool)

(assert (=> b!5408666 m!6432742))

(declare-fun m!6432744 () Bool)

(assert (=> bm!387118 m!6432744))

(assert (=> bm!387119 m!6432256))

(declare-fun m!6432746 () Bool)

(assert (=> b!5408667 m!6432746))

(assert (=> b!5407756 d!1726730))

(declare-fun b!5408672 () Bool)

(declare-fun res!2299841 () Bool)

(declare-fun e!3353007 () Bool)

(assert (=> b!5408672 (=> (not res!2299841) (not e!3353007))))

(assert (=> b!5408672 (= res!2299841 (isEmpty!33716 (tail!10697 s!2326)))))

(declare-fun b!5408673 () Bool)

(declare-fun res!2299838 () Bool)

(declare-fun e!3353005 () Bool)

(assert (=> b!5408673 (=> res!2299838 e!3353005)))

(assert (=> b!5408673 (= res!2299838 (not ((_ is ElementMatch!15181) lt!2204716)))))

(declare-fun e!3353003 () Bool)

(assert (=> b!5408673 (= e!3353003 e!3353005)))

(declare-fun b!5408674 () Bool)

(declare-fun e!3353006 () Bool)

(declare-fun lt!2204892 () Bool)

(declare-fun call!387125 () Bool)

(assert (=> b!5408674 (= e!3353006 (= lt!2204892 call!387125))))

(declare-fun b!5408675 () Bool)

(declare-fun e!3353008 () Bool)

(assert (=> b!5408675 (= e!3353005 e!3353008)))

(declare-fun res!2299839 () Bool)

(assert (=> b!5408675 (=> (not res!2299839) (not e!3353008))))

(assert (=> b!5408675 (= res!2299839 (not lt!2204892))))

(declare-fun b!5408676 () Bool)

(assert (=> b!5408676 (= e!3353006 e!3353003)))

(declare-fun c!943009 () Bool)

(assert (=> b!5408676 (= c!943009 ((_ is EmptyLang!15181) lt!2204716))))

(declare-fun b!5408678 () Bool)

(declare-fun e!3353004 () Bool)

(assert (=> b!5408678 (= e!3353008 e!3353004)))

(declare-fun res!2299840 () Bool)

(assert (=> b!5408678 (=> res!2299840 e!3353004)))

(assert (=> b!5408678 (= res!2299840 call!387125)))

(declare-fun b!5408679 () Bool)

(assert (=> b!5408679 (= e!3353007 (= (head!11600 s!2326) (c!942767 lt!2204716)))))

(declare-fun b!5408680 () Bool)

(declare-fun e!3353002 () Bool)

(assert (=> b!5408680 (= e!3353002 (matchR!7366 (derivativeStep!4263 lt!2204716 (head!11600 s!2326)) (tail!10697 s!2326)))))

(declare-fun b!5408681 () Bool)

(declare-fun res!2299844 () Bool)

(assert (=> b!5408681 (=> res!2299844 e!3353004)))

(assert (=> b!5408681 (= res!2299844 (not (isEmpty!33716 (tail!10697 s!2326))))))

(declare-fun bm!387120 () Bool)

(assert (=> bm!387120 (= call!387125 (isEmpty!33716 s!2326))))

(declare-fun d!1726732 () Bool)

(assert (=> d!1726732 e!3353006))

(declare-fun c!943011 () Bool)

(assert (=> d!1726732 (= c!943011 ((_ is EmptyExpr!15181) lt!2204716))))

(assert (=> d!1726732 (= lt!2204892 e!3353002)))

(declare-fun c!943010 () Bool)

(assert (=> d!1726732 (= c!943010 (isEmpty!33716 s!2326))))

(assert (=> d!1726732 (validRegex!6917 lt!2204716)))

(assert (=> d!1726732 (= (matchR!7366 lt!2204716 s!2326) lt!2204892)))

(declare-fun b!5408677 () Bool)

(assert (=> b!5408677 (= e!3353003 (not lt!2204892))))

(declare-fun b!5408682 () Bool)

(assert (=> b!5408682 (= e!3353002 (nullable!5350 lt!2204716))))

(declare-fun b!5408683 () Bool)

(assert (=> b!5408683 (= e!3353004 (not (= (head!11600 s!2326) (c!942767 lt!2204716))))))

(declare-fun b!5408684 () Bool)

(declare-fun res!2299842 () Bool)

(assert (=> b!5408684 (=> res!2299842 e!3353005)))

(assert (=> b!5408684 (= res!2299842 e!3353007)))

(declare-fun res!2299845 () Bool)

(assert (=> b!5408684 (=> (not res!2299845) (not e!3353007))))

(assert (=> b!5408684 (= res!2299845 lt!2204892)))

(declare-fun b!5408685 () Bool)

(declare-fun res!2299843 () Bool)

(assert (=> b!5408685 (=> (not res!2299843) (not e!3353007))))

(assert (=> b!5408685 (= res!2299843 (not call!387125))))

(assert (= (and d!1726732 c!943010) b!5408682))

(assert (= (and d!1726732 (not c!943010)) b!5408680))

(assert (= (and d!1726732 c!943011) b!5408674))

(assert (= (and d!1726732 (not c!943011)) b!5408676))

(assert (= (and b!5408676 c!943009) b!5408677))

(assert (= (and b!5408676 (not c!943009)) b!5408673))

(assert (= (and b!5408673 (not res!2299838)) b!5408684))

(assert (= (and b!5408684 res!2299845) b!5408685))

(assert (= (and b!5408685 res!2299843) b!5408672))

(assert (= (and b!5408672 res!2299841) b!5408679))

(assert (= (and b!5408684 (not res!2299842)) b!5408675))

(assert (= (and b!5408675 res!2299839) b!5408678))

(assert (= (and b!5408678 (not res!2299840)) b!5408681))

(assert (= (and b!5408681 (not res!2299844)) b!5408683))

(assert (= (or b!5408674 b!5408678 b!5408685) bm!387120))

(assert (=> b!5408680 m!6432260))

(assert (=> b!5408680 m!6432260))

(declare-fun m!6432748 () Bool)

(assert (=> b!5408680 m!6432748))

(assert (=> b!5408680 m!6432264))

(assert (=> b!5408680 m!6432748))

(assert (=> b!5408680 m!6432264))

(declare-fun m!6432750 () Bool)

(assert (=> b!5408680 m!6432750))

(assert (=> bm!387120 m!6432256))

(assert (=> d!1726732 m!6432256))

(declare-fun m!6432752 () Bool)

(assert (=> d!1726732 m!6432752))

(assert (=> b!5408683 m!6432260))

(assert (=> b!5408679 m!6432260))

(assert (=> b!5408681 m!6432264))

(assert (=> b!5408681 m!6432264))

(assert (=> b!5408681 m!6432658))

(declare-fun m!6432754 () Bool)

(assert (=> b!5408682 m!6432754))

(assert (=> b!5408672 m!6432264))

(assert (=> b!5408672 m!6432264))

(assert (=> b!5408672 m!6432658))

(assert (=> b!5407756 d!1726732))

(declare-fun d!1726734 () Bool)

(assert (=> d!1726734 (= (matchR!7366 lt!2204716 s!2326) (matchRSpec!2284 lt!2204716 s!2326))))

(declare-fun lt!2204893 () Unit!154246)

(assert (=> d!1726734 (= lt!2204893 (choose!40836 lt!2204716 s!2326))))

(assert (=> d!1726734 (validRegex!6917 lt!2204716)))

(assert (=> d!1726734 (= (mainMatchTheorem!2284 lt!2204716 s!2326) lt!2204893)))

(declare-fun bs!1249442 () Bool)

(assert (= bs!1249442 d!1726734))

(assert (=> bs!1249442 m!6431864))

(assert (=> bs!1249442 m!6431862))

(declare-fun m!6432756 () Bool)

(assert (=> bs!1249442 m!6432756))

(assert (=> bs!1249442 m!6432752))

(assert (=> b!5407756 d!1726734))

(declare-fun d!1726736 () Bool)

(declare-fun e!3353011 () Bool)

(assert (=> d!1726736 e!3353011))

(declare-fun res!2299848 () Bool)

(assert (=> d!1726736 (=> (not res!2299848) (not e!3353011))))

(declare-fun lt!2204896 () List!61844)

(declare-fun noDuplicate!1392 (List!61844) Bool)

(assert (=> d!1726736 (= res!2299848 (noDuplicate!1392 lt!2204896))))

(declare-fun choose!40839 ((InoxSet Context!9130)) List!61844)

(assert (=> d!1726736 (= lt!2204896 (choose!40839 z!1189))))

(assert (=> d!1726736 (= (toList!8965 z!1189) lt!2204896)))

(declare-fun b!5408688 () Bool)

(declare-fun content!11074 (List!61844) (InoxSet Context!9130))

(assert (=> b!5408688 (= e!3353011 (= (content!11074 lt!2204896) z!1189))))

(assert (= (and d!1726736 res!2299848) b!5408688))

(declare-fun m!6432758 () Bool)

(assert (=> d!1726736 m!6432758))

(declare-fun m!6432760 () Bool)

(assert (=> d!1726736 m!6432760))

(declare-fun m!6432762 () Bool)

(assert (=> b!5408688 m!6432762))

(assert (=> b!5407777 d!1726736))

(declare-fun b!5408689 () Bool)

(declare-fun e!3353016 () (InoxSet Context!9130))

(assert (=> b!5408689 (= e!3353016 ((as const (Array Context!9130 Bool)) false))))

(declare-fun b!5408690 () Bool)

(declare-fun e!3353017 () (InoxSet Context!9130))

(declare-fun call!387126 () (InoxSet Context!9130))

(declare-fun call!387127 () (InoxSet Context!9130))

(assert (=> b!5408690 (= e!3353017 ((_ map or) call!387126 call!387127))))

(declare-fun d!1726738 () Bool)

(declare-fun c!943015 () Bool)

(assert (=> d!1726738 (= c!943015 (and ((_ is ElementMatch!15181) (reg!15510 (regOne!30874 r!7292))) (= (c!942767 (reg!15510 (regOne!30874 r!7292))) (h!68167 s!2326))))))

(declare-fun e!3353015 () (InoxSet Context!9130))

(assert (=> d!1726738 (= (derivationStepZipperDown!629 (reg!15510 (regOne!30874 r!7292)) lt!2204709 (h!68167 s!2326)) e!3353015)))

(declare-fun b!5408691 () Bool)

(declare-fun e!3353013 () (InoxSet Context!9130))

(assert (=> b!5408691 (= e!3353017 e!3353013)))

(declare-fun c!943014 () Bool)

(assert (=> b!5408691 (= c!943014 ((_ is Concat!24026) (reg!15510 (regOne!30874 r!7292))))))

(declare-fun bm!387121 () Bool)

(declare-fun call!387131 () List!61842)

(declare-fun call!387129 () List!61842)

(assert (=> bm!387121 (= call!387131 call!387129)))

(declare-fun b!5408692 () Bool)

(declare-fun c!943012 () Bool)

(assert (=> b!5408692 (= c!943012 ((_ is Star!15181) (reg!15510 (regOne!30874 r!7292))))))

(assert (=> b!5408692 (= e!3353013 e!3353016)))

(declare-fun b!5408693 () Bool)

(declare-fun e!3353014 () (InoxSet Context!9130))

(declare-fun call!387130 () (InoxSet Context!9130))

(assert (=> b!5408693 (= e!3353014 ((_ map or) call!387126 call!387130))))

(declare-fun b!5408694 () Bool)

(declare-fun e!3353012 () Bool)

(assert (=> b!5408694 (= e!3353012 (nullable!5350 (regOne!30874 (reg!15510 (regOne!30874 r!7292)))))))

(declare-fun bm!387122 () Bool)

(declare-fun call!387128 () (InoxSet Context!9130))

(assert (=> bm!387122 (= call!387128 call!387127)))

(declare-fun b!5408695 () Bool)

(assert (=> b!5408695 (= e!3353013 call!387128)))

(declare-fun b!5408696 () Bool)

(assert (=> b!5408696 (= e!3353016 call!387128)))

(declare-fun c!943016 () Bool)

(declare-fun bm!387123 () Bool)

(assert (=> bm!387123 (= call!387129 ($colon$colon!1491 (exprs!5065 lt!2204709) (ite (or c!943016 c!943014) (regTwo!30874 (reg!15510 (regOne!30874 r!7292))) (reg!15510 (regOne!30874 r!7292)))))))

(declare-fun b!5408697 () Bool)

(assert (=> b!5408697 (= e!3353015 (store ((as const (Array Context!9130 Bool)) false) lt!2204709 true))))

(declare-fun b!5408698 () Bool)

(assert (=> b!5408698 (= c!943016 e!3353012)))

(declare-fun res!2299849 () Bool)

(assert (=> b!5408698 (=> (not res!2299849) (not e!3353012))))

(assert (=> b!5408698 (= res!2299849 ((_ is Concat!24026) (reg!15510 (regOne!30874 r!7292))))))

(assert (=> b!5408698 (= e!3353014 e!3353017)))

(declare-fun bm!387124 () Bool)

(assert (=> bm!387124 (= call!387127 call!387130)))

(declare-fun bm!387125 () Bool)

(declare-fun c!943013 () Bool)

(assert (=> bm!387125 (= call!387126 (derivationStepZipperDown!629 (ite c!943013 (regOne!30875 (reg!15510 (regOne!30874 r!7292))) (regOne!30874 (reg!15510 (regOne!30874 r!7292)))) (ite c!943013 lt!2204709 (Context!9131 call!387129)) (h!68167 s!2326)))))

(declare-fun b!5408699 () Bool)

(assert (=> b!5408699 (= e!3353015 e!3353014)))

(assert (=> b!5408699 (= c!943013 ((_ is Union!15181) (reg!15510 (regOne!30874 r!7292))))))

(declare-fun bm!387126 () Bool)

(assert (=> bm!387126 (= call!387130 (derivationStepZipperDown!629 (ite c!943013 (regTwo!30875 (reg!15510 (regOne!30874 r!7292))) (ite c!943016 (regTwo!30874 (reg!15510 (regOne!30874 r!7292))) (ite c!943014 (regOne!30874 (reg!15510 (regOne!30874 r!7292))) (reg!15510 (reg!15510 (regOne!30874 r!7292)))))) (ite (or c!943013 c!943016) lt!2204709 (Context!9131 call!387131)) (h!68167 s!2326)))))

(assert (= (and d!1726738 c!943015) b!5408697))

(assert (= (and d!1726738 (not c!943015)) b!5408699))

(assert (= (and b!5408699 c!943013) b!5408693))

(assert (= (and b!5408699 (not c!943013)) b!5408698))

(assert (= (and b!5408698 res!2299849) b!5408694))

(assert (= (and b!5408698 c!943016) b!5408690))

(assert (= (and b!5408698 (not c!943016)) b!5408691))

(assert (= (and b!5408691 c!943014) b!5408695))

(assert (= (and b!5408691 (not c!943014)) b!5408692))

(assert (= (and b!5408692 c!943012) b!5408696))

(assert (= (and b!5408692 (not c!943012)) b!5408689))

(assert (= (or b!5408695 b!5408696) bm!387121))

(assert (= (or b!5408695 b!5408696) bm!387122))

(assert (= (or b!5408690 bm!387121) bm!387123))

(assert (= (or b!5408690 bm!387122) bm!387124))

(assert (= (or b!5408693 bm!387124) bm!387126))

(assert (= (or b!5408693 b!5408690) bm!387125))

(declare-fun m!6432764 () Bool)

(assert (=> b!5408694 m!6432764))

(declare-fun m!6432766 () Bool)

(assert (=> bm!387126 m!6432766))

(assert (=> b!5408697 m!6431976))

(declare-fun m!6432768 () Bool)

(assert (=> bm!387125 m!6432768))

(declare-fun m!6432770 () Bool)

(assert (=> bm!387123 m!6432770))

(assert (=> b!5407755 d!1726738))

(declare-fun d!1726740 () Bool)

(assert (=> d!1726740 (= (isEmpty!33713 (t!375065 (exprs!5065 (h!68168 zl!343)))) ((_ is Nil!61718) (t!375065 (exprs!5065 (h!68168 zl!343)))))))

(assert (=> b!5407776 d!1726740))

(declare-fun d!1726742 () Bool)

(assert (=> d!1726742 (= (nullable!5350 (regOne!30874 (regOne!30874 r!7292))) (nullableFct!1593 (regOne!30874 (regOne!30874 r!7292))))))

(declare-fun bs!1249443 () Bool)

(assert (= bs!1249443 d!1726742))

(declare-fun m!6432772 () Bool)

(assert (=> bs!1249443 m!6432772))

(assert (=> b!5407775 d!1726742))

(declare-fun d!1726744 () Bool)

(declare-fun c!943017 () Bool)

(assert (=> d!1726744 (= c!943017 (isEmpty!33716 s!2326))))

(declare-fun e!3353018 () Bool)

(assert (=> d!1726744 (= (matchZipper!1425 z!1189 s!2326) e!3353018)))

(declare-fun b!5408700 () Bool)

(assert (=> b!5408700 (= e!3353018 (nullableZipper!1442 z!1189))))

(declare-fun b!5408701 () Bool)

(assert (=> b!5408701 (= e!3353018 (matchZipper!1425 (derivationStepZipper!1420 z!1189 (head!11600 s!2326)) (tail!10697 s!2326)))))

(assert (= (and d!1726744 c!943017) b!5408700))

(assert (= (and d!1726744 (not c!943017)) b!5408701))

(assert (=> d!1726744 m!6432256))

(declare-fun m!6432774 () Bool)

(assert (=> b!5408700 m!6432774))

(assert (=> b!5408701 m!6432260))

(assert (=> b!5408701 m!6432260))

(declare-fun m!6432776 () Bool)

(assert (=> b!5408701 m!6432776))

(assert (=> b!5408701 m!6432264))

(assert (=> b!5408701 m!6432776))

(assert (=> b!5408701 m!6432264))

(declare-fun m!6432778 () Bool)

(assert (=> b!5408701 m!6432778))

(assert (=> b!5407780 d!1726744))

(declare-fun d!1726746 () Bool)

(declare-fun dynLambda!24324 (Int Context!9130) Context!9130)

(assert (=> d!1726746 (= (map!14156 lt!2204699 lambda!282038) (store ((as const (Array Context!9130 Bool)) false) (dynLambda!24324 lambda!282038 lt!2204688) true))))

(declare-fun lt!2204899 () Unit!154246)

(declare-fun choose!40840 ((InoxSet Context!9130) Context!9130 Int) Unit!154246)

(assert (=> d!1726746 (= lt!2204899 (choose!40840 lt!2204699 lt!2204688 lambda!282038))))

(assert (=> d!1726746 (= lt!2204699 (store ((as const (Array Context!9130 Bool)) false) lt!2204688 true))))

(assert (=> d!1726746 (= (lemmaMapOnSingletonSet!40 lt!2204699 lt!2204688 lambda!282038) lt!2204899)))

(declare-fun b_lambda!206655 () Bool)

(assert (=> (not b_lambda!206655) (not d!1726746)))

(declare-fun bs!1249444 () Bool)

(assert (= bs!1249444 d!1726746))

(assert (=> bs!1249444 m!6431986))

(declare-fun m!6432780 () Bool)

(assert (=> bs!1249444 m!6432780))

(assert (=> bs!1249444 m!6431886))

(declare-fun m!6432782 () Bool)

(assert (=> bs!1249444 m!6432782))

(assert (=> bs!1249444 m!6432782))

(declare-fun m!6432784 () Bool)

(assert (=> bs!1249444 m!6432784))

(assert (=> b!5407799 d!1726746))

(declare-fun d!1726748 () Bool)

(declare-fun choose!40841 ((InoxSet Context!9130) Int) (InoxSet Context!9130))

(assert (=> d!1726748 (= (map!14156 lt!2204699 lambda!282038) (choose!40841 lt!2204699 lambda!282038))))

(declare-fun bs!1249445 () Bool)

(assert (= bs!1249445 d!1726748))

(declare-fun m!6432786 () Bool)

(assert (=> bs!1249445 m!6432786))

(assert (=> b!5407799 d!1726748))

(declare-fun bs!1249446 () Bool)

(declare-fun d!1726750 () Bool)

(assert (= bs!1249446 (and d!1726750 b!5407799)))

(declare-fun lambda!282115 () Int)

(assert (=> bs!1249446 (= (= (exprs!5065 lt!2204709) lt!2204684) (= lambda!282115 lambda!282038))))

(assert (=> d!1726750 true))

(assert (=> d!1726750 (= (appendTo!40 lt!2204699 lt!2204709) (map!14156 lt!2204699 lambda!282115))))

(declare-fun bs!1249447 () Bool)

(assert (= bs!1249447 d!1726750))

(declare-fun m!6432788 () Bool)

(assert (=> bs!1249447 m!6432788))

(assert (=> b!5407799 d!1726750))

(declare-fun d!1726752 () Bool)

(declare-fun e!3353023 () Bool)

(assert (=> d!1726752 e!3353023))

(declare-fun res!2299855 () Bool)

(assert (=> d!1726752 (=> (not res!2299855) (not e!3353023))))

(declare-fun lt!2204904 () List!61842)

(declare-fun content!11075 (List!61842) (InoxSet Regex!15181))

(assert (=> d!1726752 (= res!2299855 (= (content!11075 lt!2204904) ((_ map or) (content!11075 lt!2204683) (content!11075 lt!2204684))))))

(declare-fun e!3353024 () List!61842)

(assert (=> d!1726752 (= lt!2204904 e!3353024)))

(declare-fun c!943021 () Bool)

(assert (=> d!1726752 (= c!943021 ((_ is Nil!61718) lt!2204683))))

(assert (=> d!1726752 (= (++!13535 lt!2204683 lt!2204684) lt!2204904)))

(declare-fun b!5408715 () Bool)

(assert (=> b!5408715 (= e!3353023 (or (not (= lt!2204684 Nil!61718)) (= lt!2204904 lt!2204683)))))

(declare-fun b!5408712 () Bool)

(assert (=> b!5408712 (= e!3353024 lt!2204684)))

(declare-fun b!5408714 () Bool)

(declare-fun res!2299854 () Bool)

(assert (=> b!5408714 (=> (not res!2299854) (not e!3353023))))

(declare-fun size!39852 (List!61842) Int)

(assert (=> b!5408714 (= res!2299854 (= (size!39852 lt!2204904) (+ (size!39852 lt!2204683) (size!39852 lt!2204684))))))

(declare-fun b!5408713 () Bool)

(assert (=> b!5408713 (= e!3353024 (Cons!61718 (h!68166 lt!2204683) (++!13535 (t!375065 lt!2204683) lt!2204684)))))

(assert (= (and d!1726752 c!943021) b!5408712))

(assert (= (and d!1726752 (not c!943021)) b!5408713))

(assert (= (and d!1726752 res!2299855) b!5408714))

(assert (= (and b!5408714 res!2299854) b!5408715))

(declare-fun m!6432790 () Bool)

(assert (=> d!1726752 m!6432790))

(declare-fun m!6432792 () Bool)

(assert (=> d!1726752 m!6432792))

(declare-fun m!6432794 () Bool)

(assert (=> d!1726752 m!6432794))

(declare-fun m!6432796 () Bool)

(assert (=> b!5408714 m!6432796))

(declare-fun m!6432798 () Bool)

(assert (=> b!5408714 m!6432798))

(declare-fun m!6432800 () Bool)

(assert (=> b!5408714 m!6432800))

(declare-fun m!6432802 () Bool)

(assert (=> b!5408713 m!6432802))

(assert (=> b!5407799 d!1726752))

(declare-fun d!1726754 () Bool)

(assert (=> d!1726754 (forall!14535 (++!13535 lt!2204683 lt!2204684) lambda!282039)))

(declare-fun lt!2204907 () Unit!154246)

(declare-fun choose!40842 (List!61842 List!61842 Int) Unit!154246)

(assert (=> d!1726754 (= lt!2204907 (choose!40842 lt!2204683 lt!2204684 lambda!282039))))

(assert (=> d!1726754 (forall!14535 lt!2204683 lambda!282039)))

(assert (=> d!1726754 (= (lemmaConcatPreservesForall!206 lt!2204683 lt!2204684 lambda!282039) lt!2204907)))

(declare-fun bs!1249448 () Bool)

(assert (= bs!1249448 d!1726754))

(assert (=> bs!1249448 m!6431882))

(assert (=> bs!1249448 m!6431882))

(declare-fun m!6432804 () Bool)

(assert (=> bs!1249448 m!6432804))

(declare-fun m!6432806 () Bool)

(assert (=> bs!1249448 m!6432806))

(declare-fun m!6432808 () Bool)

(assert (=> bs!1249448 m!6432808))

(assert (=> b!5407799 d!1726754))

(declare-fun d!1726756 () Bool)

(declare-fun lt!2204908 () Regex!15181)

(assert (=> d!1726756 (validRegex!6917 lt!2204908)))

(assert (=> d!1726756 (= lt!2204908 (generalisedUnion!1110 (unfocusZipperList!623 (Cons!61720 lt!2204691 Nil!61720))))))

(assert (=> d!1726756 (= (unfocusZipper!923 (Cons!61720 lt!2204691 Nil!61720)) lt!2204908)))

(declare-fun bs!1249449 () Bool)

(assert (= bs!1249449 d!1726756))

(declare-fun m!6432810 () Bool)

(assert (=> bs!1249449 m!6432810))

(declare-fun m!6432812 () Bool)

(assert (=> bs!1249449 m!6432812))

(assert (=> bs!1249449 m!6432812))

(declare-fun m!6432814 () Bool)

(assert (=> bs!1249449 m!6432814))

(assert (=> b!5407758 d!1726756))

(declare-fun d!1726758 () Bool)

(declare-fun lt!2204909 () Regex!15181)

(assert (=> d!1726758 (validRegex!6917 lt!2204909)))

(assert (=> d!1726758 (= lt!2204909 (generalisedUnion!1110 (unfocusZipperList!623 zl!343)))))

(assert (=> d!1726758 (= (unfocusZipper!923 zl!343) lt!2204909)))

(declare-fun bs!1249450 () Bool)

(assert (= bs!1249450 d!1726758))

(declare-fun m!6432816 () Bool)

(assert (=> bs!1249450 m!6432816))

(assert (=> bs!1249450 m!6431942))

(assert (=> bs!1249450 m!6431942))

(assert (=> bs!1249450 m!6431944))

(assert (=> b!5407798 d!1726758))

(declare-fun d!1726760 () Bool)

(declare-fun lt!2204910 () Regex!15181)

(assert (=> d!1726760 (validRegex!6917 lt!2204910)))

(assert (=> d!1726760 (= lt!2204910 (generalisedUnion!1110 (unfocusZipperList!623 lt!2204692)))))

(assert (=> d!1726760 (= (unfocusZipper!923 lt!2204692) lt!2204910)))

(declare-fun bs!1249451 () Bool)

(assert (= bs!1249451 d!1726760))

(declare-fun m!6432818 () Bool)

(assert (=> bs!1249451 m!6432818))

(declare-fun m!6432820 () Bool)

(assert (=> bs!1249451 m!6432820))

(assert (=> bs!1249451 m!6432820))

(declare-fun m!6432822 () Bool)

(assert (=> bs!1249451 m!6432822))

(assert (=> b!5407757 d!1726760))

(declare-fun bs!1249452 () Bool)

(declare-fun d!1726762 () Bool)

(assert (= bs!1249452 (and d!1726762 b!5407799)))

(declare-fun lambda!282116 () Int)

(assert (=> bs!1249452 (= lambda!282116 lambda!282039)))

(declare-fun bs!1249453 () Bool)

(assert (= bs!1249453 (and d!1726762 d!1726564)))

(assert (=> bs!1249453 (= lambda!282116 lambda!282069)))

(declare-fun bs!1249454 () Bool)

(assert (= bs!1249454 (and d!1726762 d!1726568)))

(assert (=> bs!1249454 (= lambda!282116 lambda!282072)))

(assert (=> d!1726762 (= (inv!81199 setElem!35213) (forall!14535 (exprs!5065 setElem!35213) lambda!282116))))

(declare-fun bs!1249455 () Bool)

(assert (= bs!1249455 d!1726762))

(declare-fun m!6432824 () Bool)

(assert (=> bs!1249455 m!6432824))

(assert (=> setNonEmpty!35213 d!1726762))

(declare-fun bs!1249456 () Bool)

(declare-fun d!1726764 () Bool)

(assert (= bs!1249456 (and d!1726764 b!5407799)))

(declare-fun lambda!282119 () Int)

(assert (=> bs!1249456 (= lambda!282119 lambda!282039)))

(declare-fun bs!1249457 () Bool)

(assert (= bs!1249457 (and d!1726764 d!1726564)))

(assert (=> bs!1249457 (= lambda!282119 lambda!282069)))

(declare-fun bs!1249458 () Bool)

(assert (= bs!1249458 (and d!1726764 d!1726568)))

(assert (=> bs!1249458 (= lambda!282119 lambda!282072)))

(declare-fun bs!1249459 () Bool)

(assert (= bs!1249459 (and d!1726764 d!1726762)))

(assert (=> bs!1249459 (= lambda!282119 lambda!282116)))

(assert (=> d!1726764 (matchZipper!1425 (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 (exprs!5065 lt!2204688) (exprs!5065 lt!2204709))) true) (++!13536 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(declare-fun lt!2204916 () Unit!154246)

(assert (=> d!1726764 (= lt!2204916 (lemmaConcatPreservesForall!206 (exprs!5065 lt!2204688) (exprs!5065 lt!2204709) lambda!282119))))

(declare-fun lt!2204915 () Unit!154246)

(declare-fun choose!40843 (Context!9130 Context!9130 List!61843 List!61843) Unit!154246)

(assert (=> d!1726764 (= lt!2204915 (choose!40843 lt!2204688 lt!2204709 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(assert (=> d!1726764 (matchZipper!1425 (store ((as const (Array Context!9130 Bool)) false) lt!2204688 true) (_1!35683 lt!2204704))))

(assert (=> d!1726764 (= (lemmaConcatenateContextMatchesConcatOfStrings!54 lt!2204688 lt!2204709 (_1!35683 lt!2204704) (_2!35683 lt!2204704)) lt!2204915)))

(declare-fun bs!1249460 () Bool)

(assert (= bs!1249460 d!1726764))

(declare-fun m!6432826 () Bool)

(assert (=> bs!1249460 m!6432826))

(assert (=> bs!1249460 m!6431986))

(declare-fun m!6432828 () Bool)

(assert (=> bs!1249460 m!6432828))

(declare-fun m!6432830 () Bool)

(assert (=> bs!1249460 m!6432830))

(declare-fun m!6432832 () Bool)

(assert (=> bs!1249460 m!6432832))

(assert (=> bs!1249460 m!6432826))

(assert (=> bs!1249460 m!6431952))

(declare-fun m!6432834 () Bool)

(assert (=> bs!1249460 m!6432834))

(declare-fun m!6432836 () Bool)

(assert (=> bs!1249460 m!6432836))

(assert (=> bs!1249460 m!6431952))

(assert (=> bs!1249460 m!6431986))

(assert (=> b!5407772 d!1726764))

(declare-fun d!1726766 () Bool)

(assert (=> d!1726766 (= (matchR!7366 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704)) (matchZipper!1425 lt!2204699 (_1!35683 lt!2204704)))))

(declare-fun lt!2204919 () Unit!154246)

(declare-fun choose!40844 ((InoxSet Context!9130) List!61844 Regex!15181 List!61843) Unit!154246)

(assert (=> d!1726766 (= lt!2204919 (choose!40844 lt!2204699 lt!2204726 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704)))))

(assert (=> d!1726766 (validRegex!6917 (reg!15510 (regOne!30874 r!7292)))))

(assert (=> d!1726766 (= (theoremZipperRegexEquiv!495 lt!2204699 lt!2204726 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704)) lt!2204919)))

(declare-fun bs!1249461 () Bool)

(assert (= bs!1249461 d!1726766))

(assert (=> bs!1249461 m!6431916))

(assert (=> bs!1249461 m!6432002))

(declare-fun m!6432838 () Bool)

(assert (=> bs!1249461 m!6432838))

(declare-fun m!6432840 () Bool)

(assert (=> bs!1249461 m!6432840))

(assert (=> b!5407772 d!1726766))

(declare-fun d!1726768 () Bool)

(assert (=> d!1726768 (= (isDefined!11995 (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)) (not (isEmpty!33717 (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326))))))

(declare-fun bs!1249462 () Bool)

(assert (= bs!1249462 d!1726768))

(assert (=> bs!1249462 m!6431894))

(declare-fun m!6432842 () Bool)

(assert (=> bs!1249462 m!6432842))

(assert (=> b!5407772 d!1726768))

(declare-fun b!5408716 () Bool)

(declare-fun res!2299859 () Bool)

(declare-fun e!3353030 () Bool)

(assert (=> b!5408716 (=> (not res!2299859) (not e!3353030))))

(assert (=> b!5408716 (= res!2299859 (isEmpty!33716 (tail!10697 (_1!35683 lt!2204704))))))

(declare-fun b!5408717 () Bool)

(declare-fun res!2299856 () Bool)

(declare-fun e!3353028 () Bool)

(assert (=> b!5408717 (=> res!2299856 e!3353028)))

(assert (=> b!5408717 (= res!2299856 (not ((_ is ElementMatch!15181) (reg!15510 (regOne!30874 r!7292)))))))

(declare-fun e!3353026 () Bool)

(assert (=> b!5408717 (= e!3353026 e!3353028)))

(declare-fun b!5408718 () Bool)

(declare-fun e!3353029 () Bool)

(declare-fun lt!2204920 () Bool)

(declare-fun call!387132 () Bool)

(assert (=> b!5408718 (= e!3353029 (= lt!2204920 call!387132))))

(declare-fun b!5408719 () Bool)

(declare-fun e!3353031 () Bool)

(assert (=> b!5408719 (= e!3353028 e!3353031)))

(declare-fun res!2299857 () Bool)

(assert (=> b!5408719 (=> (not res!2299857) (not e!3353031))))

(assert (=> b!5408719 (= res!2299857 (not lt!2204920))))

(declare-fun b!5408720 () Bool)

(assert (=> b!5408720 (= e!3353029 e!3353026)))

(declare-fun c!943022 () Bool)

(assert (=> b!5408720 (= c!943022 ((_ is EmptyLang!15181) (reg!15510 (regOne!30874 r!7292))))))

(declare-fun b!5408722 () Bool)

(declare-fun e!3353027 () Bool)

(assert (=> b!5408722 (= e!3353031 e!3353027)))

(declare-fun res!2299858 () Bool)

(assert (=> b!5408722 (=> res!2299858 e!3353027)))

(assert (=> b!5408722 (= res!2299858 call!387132)))

(declare-fun b!5408723 () Bool)

(assert (=> b!5408723 (= e!3353030 (= (head!11600 (_1!35683 lt!2204704)) (c!942767 (reg!15510 (regOne!30874 r!7292)))))))

(declare-fun b!5408724 () Bool)

(declare-fun e!3353025 () Bool)

(assert (=> b!5408724 (= e!3353025 (matchR!7366 (derivativeStep!4263 (reg!15510 (regOne!30874 r!7292)) (head!11600 (_1!35683 lt!2204704))) (tail!10697 (_1!35683 lt!2204704))))))

(declare-fun b!5408725 () Bool)

(declare-fun res!2299862 () Bool)

(assert (=> b!5408725 (=> res!2299862 e!3353027)))

(assert (=> b!5408725 (= res!2299862 (not (isEmpty!33716 (tail!10697 (_1!35683 lt!2204704)))))))

(declare-fun bm!387127 () Bool)

(assert (=> bm!387127 (= call!387132 (isEmpty!33716 (_1!35683 lt!2204704)))))

(declare-fun d!1726770 () Bool)

(assert (=> d!1726770 e!3353029))

(declare-fun c!943024 () Bool)

(assert (=> d!1726770 (= c!943024 ((_ is EmptyExpr!15181) (reg!15510 (regOne!30874 r!7292))))))

(assert (=> d!1726770 (= lt!2204920 e!3353025)))

(declare-fun c!943023 () Bool)

(assert (=> d!1726770 (= c!943023 (isEmpty!33716 (_1!35683 lt!2204704)))))

(assert (=> d!1726770 (validRegex!6917 (reg!15510 (regOne!30874 r!7292)))))

(assert (=> d!1726770 (= (matchR!7366 (reg!15510 (regOne!30874 r!7292)) (_1!35683 lt!2204704)) lt!2204920)))

(declare-fun b!5408721 () Bool)

(assert (=> b!5408721 (= e!3353026 (not lt!2204920))))

(declare-fun b!5408726 () Bool)

(assert (=> b!5408726 (= e!3353025 (nullable!5350 (reg!15510 (regOne!30874 r!7292))))))

(declare-fun b!5408727 () Bool)

(assert (=> b!5408727 (= e!3353027 (not (= (head!11600 (_1!35683 lt!2204704)) (c!942767 (reg!15510 (regOne!30874 r!7292))))))))

(declare-fun b!5408728 () Bool)

(declare-fun res!2299860 () Bool)

(assert (=> b!5408728 (=> res!2299860 e!3353028)))

(assert (=> b!5408728 (= res!2299860 e!3353030)))

(declare-fun res!2299863 () Bool)

(assert (=> b!5408728 (=> (not res!2299863) (not e!3353030))))

(assert (=> b!5408728 (= res!2299863 lt!2204920)))

(declare-fun b!5408729 () Bool)

(declare-fun res!2299861 () Bool)

(assert (=> b!5408729 (=> (not res!2299861) (not e!3353030))))

(assert (=> b!5408729 (= res!2299861 (not call!387132))))

(assert (= (and d!1726770 c!943023) b!5408726))

(assert (= (and d!1726770 (not c!943023)) b!5408724))

(assert (= (and d!1726770 c!943024) b!5408718))

(assert (= (and d!1726770 (not c!943024)) b!5408720))

(assert (= (and b!5408720 c!943022) b!5408721))

(assert (= (and b!5408720 (not c!943022)) b!5408717))

(assert (= (and b!5408717 (not res!2299856)) b!5408728))

(assert (= (and b!5408728 res!2299863) b!5408729))

(assert (= (and b!5408729 res!2299861) b!5408716))

(assert (= (and b!5408716 res!2299859) b!5408723))

(assert (= (and b!5408728 (not res!2299860)) b!5408719))

(assert (= (and b!5408719 res!2299857) b!5408722))

(assert (= (and b!5408722 (not res!2299858)) b!5408725))

(assert (= (and b!5408725 (not res!2299862)) b!5408727))

(assert (= (or b!5408718 b!5408722 b!5408729) bm!387127))

(declare-fun m!6432844 () Bool)

(assert (=> b!5408724 m!6432844))

(assert (=> b!5408724 m!6432844))

(declare-fun m!6432846 () Bool)

(assert (=> b!5408724 m!6432846))

(declare-fun m!6432848 () Bool)

(assert (=> b!5408724 m!6432848))

(assert (=> b!5408724 m!6432846))

(assert (=> b!5408724 m!6432848))

(declare-fun m!6432850 () Bool)

(assert (=> b!5408724 m!6432850))

(declare-fun m!6432852 () Bool)

(assert (=> bm!387127 m!6432852))

(assert (=> d!1726770 m!6432852))

(assert (=> d!1726770 m!6432840))

(assert (=> b!5408727 m!6432844))

(assert (=> b!5408723 m!6432844))

(assert (=> b!5408725 m!6432848))

(assert (=> b!5408725 m!6432848))

(declare-fun m!6432854 () Bool)

(assert (=> b!5408725 m!6432854))

(declare-fun m!6432856 () Bool)

(assert (=> b!5408726 m!6432856))

(assert (=> b!5408716 m!6432848))

(assert (=> b!5408716 m!6432848))

(assert (=> b!5408716 m!6432854))

(assert (=> b!5407772 d!1726770))

(declare-fun d!1726772 () Bool)

(assert (=> d!1726772 (= (matchR!7366 lt!2204689 s!2326) (matchRSpec!2284 lt!2204689 s!2326))))

(declare-fun lt!2204921 () Unit!154246)

(assert (=> d!1726772 (= lt!2204921 (choose!40836 lt!2204689 s!2326))))

(assert (=> d!1726772 (validRegex!6917 lt!2204689)))

(assert (=> d!1726772 (= (mainMatchTheorem!2284 lt!2204689 s!2326) lt!2204921)))

(declare-fun bs!1249463 () Bool)

(assert (= bs!1249463 d!1726772))

(assert (=> bs!1249463 m!6431902))

(assert (=> bs!1249463 m!6431918))

(declare-fun m!6432858 () Bool)

(assert (=> bs!1249463 m!6432858))

(declare-fun m!6432860 () Bool)

(assert (=> bs!1249463 m!6432860))

(assert (=> b!5407772 d!1726772))

(declare-fun d!1726774 () Bool)

(assert (=> d!1726774 (= (Exists!2362 lambda!282041) (choose!40831 lambda!282041))))

(declare-fun bs!1249464 () Bool)

(assert (= bs!1249464 d!1726774))

(declare-fun m!6432862 () Bool)

(assert (=> bs!1249464 m!6432862))

(assert (=> b!5407772 d!1726774))

(declare-fun d!1726776 () Bool)

(assert (=> d!1726776 (= (matchR!7366 (Concat!24026 (Concat!24026 (reg!15510 (regOne!30874 r!7292)) lt!2204701) (regTwo!30874 r!7292)) s!2326) (matchR!7366 (Concat!24026 (reg!15510 (regOne!30874 r!7292)) (Concat!24026 lt!2204701 (regTwo!30874 r!7292))) s!2326))))

(declare-fun lt!2204924 () Unit!154246)

(declare-fun choose!40845 (Regex!15181 Regex!15181 Regex!15181 List!61843) Unit!154246)

(assert (=> d!1726776 (= lt!2204924 (choose!40845 (reg!15510 (regOne!30874 r!7292)) lt!2204701 (regTwo!30874 r!7292) s!2326))))

(declare-fun e!3353034 () Bool)

(assert (=> d!1726776 e!3353034))

(declare-fun res!2299868 () Bool)

(assert (=> d!1726776 (=> (not res!2299868) (not e!3353034))))

(assert (=> d!1726776 (= res!2299868 (validRegex!6917 (reg!15510 (regOne!30874 r!7292))))))

(assert (=> d!1726776 (= (lemmaConcatAssociative!34 (reg!15510 (regOne!30874 r!7292)) lt!2204701 (regTwo!30874 r!7292) s!2326) lt!2204924)))

(declare-fun b!5408734 () Bool)

(declare-fun res!2299869 () Bool)

(assert (=> b!5408734 (=> (not res!2299869) (not e!3353034))))

(assert (=> b!5408734 (= res!2299869 (validRegex!6917 lt!2204701))))

(declare-fun b!5408735 () Bool)

(assert (=> b!5408735 (= e!3353034 (validRegex!6917 (regTwo!30874 r!7292)))))

(assert (= (and d!1726776 res!2299868) b!5408734))

(assert (= (and b!5408734 res!2299869) b!5408735))

(declare-fun m!6432864 () Bool)

(assert (=> d!1726776 m!6432864))

(declare-fun m!6432866 () Bool)

(assert (=> d!1726776 m!6432866))

(declare-fun m!6432868 () Bool)

(assert (=> d!1726776 m!6432868))

(assert (=> d!1726776 m!6432840))

(declare-fun m!6432870 () Bool)

(assert (=> b!5408734 m!6432870))

(declare-fun m!6432872 () Bool)

(assert (=> b!5408735 m!6432872))

(assert (=> b!5407772 d!1726776))

(declare-fun d!1726778 () Bool)

(assert (=> d!1726778 (matchR!7366 (Concat!24026 (reg!15510 (regOne!30874 r!7292)) lt!2204700) (++!13536 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(declare-fun lt!2204927 () Unit!154246)

(declare-fun choose!40846 (Regex!15181 Regex!15181 List!61843 List!61843) Unit!154246)

(assert (=> d!1726778 (= lt!2204927 (choose!40846 (reg!15510 (regOne!30874 r!7292)) lt!2204700 (_1!35683 lt!2204704) (_2!35683 lt!2204704)))))

(declare-fun e!3353037 () Bool)

(assert (=> d!1726778 e!3353037))

(declare-fun res!2299872 () Bool)

(assert (=> d!1726778 (=> (not res!2299872) (not e!3353037))))

(assert (=> d!1726778 (= res!2299872 (validRegex!6917 (reg!15510 (regOne!30874 r!7292))))))

(assert (=> d!1726778 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!204 (reg!15510 (regOne!30874 r!7292)) lt!2204700 (_1!35683 lt!2204704) (_2!35683 lt!2204704)) lt!2204927)))

(declare-fun b!5408738 () Bool)

(assert (=> b!5408738 (= e!3353037 (validRegex!6917 lt!2204700))))

(assert (= (and d!1726778 res!2299872) b!5408738))

(assert (=> d!1726778 m!6431952))

(assert (=> d!1726778 m!6431952))

(declare-fun m!6432874 () Bool)

(assert (=> d!1726778 m!6432874))

(declare-fun m!6432876 () Bool)

(assert (=> d!1726778 m!6432876))

(assert (=> d!1726778 m!6432840))

(declare-fun m!6432878 () Bool)

(assert (=> b!5408738 m!6432878))

(assert (=> b!5407772 d!1726778))

(assert (=> b!5407772 d!1726754))

(declare-fun bs!1249465 () Bool)

(declare-fun d!1726780 () Bool)

(assert (= bs!1249465 (and d!1726780 b!5408475)))

(declare-fun lambda!282120 () Int)

(assert (=> bs!1249465 (not (= lambda!282120 lambda!282107))))

(declare-fun bs!1249466 () Bool)

(assert (= bs!1249466 (and d!1726780 b!5408671)))

(assert (=> bs!1249466 (not (= lambda!282120 lambda!282109))))

(declare-fun bs!1249467 () Bool)

(assert (= bs!1249467 (and d!1726780 b!5408474)))

(assert (=> bs!1249467 (not (= lambda!282120 lambda!282108))))

(declare-fun bs!1249468 () Bool)

(assert (= bs!1249468 (and d!1726780 d!1726630)))

(assert (=> bs!1249468 (not (= lambda!282120 lambda!282097))))

(declare-fun bs!1249469 () Bool)

(assert (= bs!1249469 (and d!1726780 d!1726616)))

(assert (=> bs!1249469 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282120 lambda!282086))))

(declare-fun bs!1249470 () Bool)

(assert (= bs!1249470 (and d!1726780 b!5407772)))

(assert (=> bs!1249470 (= lambda!282120 lambda!282040)))

(assert (=> bs!1249470 (not (= lambda!282120 lambda!282041))))

(declare-fun bs!1249471 () Bool)

(assert (= bs!1249471 (and d!1726780 b!5407764)))

(assert (=> bs!1249471 (not (= lambda!282120 lambda!282036))))

(assert (=> bs!1249471 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282120 lambda!282035))))

(assert (=> bs!1249468 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282120 lambda!282095))))

(declare-fun bs!1249472 () Bool)

(assert (= bs!1249472 (and d!1726780 b!5408670)))

(assert (=> bs!1249472 (not (= lambda!282120 lambda!282110))))

(assert (=> d!1726780 true))

(assert (=> d!1726780 true))

(assert (=> d!1726780 true))

(declare-fun lambda!282121 () Int)

(assert (=> bs!1249465 (not (= lambda!282121 lambda!282107))))

(assert (=> bs!1249466 (not (= lambda!282121 lambda!282109))))

(assert (=> bs!1249467 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282121 lambda!282108))))

(assert (=> bs!1249468 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282121 lambda!282097))))

(assert (=> bs!1249469 (not (= lambda!282121 lambda!282086))))

(assert (=> bs!1249470 (not (= lambda!282121 lambda!282040))))

(declare-fun bs!1249473 () Bool)

(assert (= bs!1249473 d!1726780))

(assert (=> bs!1249473 (not (= lambda!282121 lambda!282120))))

(assert (=> bs!1249470 (= lambda!282121 lambda!282041)))

(assert (=> bs!1249471 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282121 lambda!282036))))

(assert (=> bs!1249471 (not (= lambda!282121 lambda!282035))))

(assert (=> bs!1249468 (not (= lambda!282121 lambda!282095))))

(assert (=> bs!1249472 (= (and (= lt!2204738 (regOne!30874 lt!2204716)) (= (regTwo!30874 r!7292) (regTwo!30874 lt!2204716))) (= lambda!282121 lambda!282110))))

(assert (=> d!1726780 true))

(assert (=> d!1726780 true))

(assert (=> d!1726780 true))

(assert (=> d!1726780 (= (Exists!2362 lambda!282120) (Exists!2362 lambda!282121))))

(declare-fun lt!2204928 () Unit!154246)

(assert (=> d!1726780 (= lt!2204928 (choose!40833 lt!2204738 (regTwo!30874 r!7292) s!2326))))

(assert (=> d!1726780 (validRegex!6917 lt!2204738)))

(assert (=> d!1726780 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1016 lt!2204738 (regTwo!30874 r!7292) s!2326) lt!2204928)))

(declare-fun m!6432880 () Bool)

(assert (=> bs!1249473 m!6432880))

(declare-fun m!6432882 () Bool)

(assert (=> bs!1249473 m!6432882))

(declare-fun m!6432884 () Bool)

(assert (=> bs!1249473 m!6432884))

(declare-fun m!6432886 () Bool)

(assert (=> bs!1249473 m!6432886))

(assert (=> b!5407772 d!1726780))

(declare-fun b!5408739 () Bool)

(declare-fun res!2299876 () Bool)

(declare-fun e!3353043 () Bool)

(assert (=> b!5408739 (=> (not res!2299876) (not e!3353043))))

(assert (=> b!5408739 (= res!2299876 (isEmpty!33716 (tail!10697 lt!2204697)))))

(declare-fun b!5408740 () Bool)

(declare-fun res!2299873 () Bool)

(declare-fun e!3353041 () Bool)

(assert (=> b!5408740 (=> res!2299873 e!3353041)))

(assert (=> b!5408740 (= res!2299873 (not ((_ is ElementMatch!15181) lt!2204716)))))

(declare-fun e!3353039 () Bool)

(assert (=> b!5408740 (= e!3353039 e!3353041)))

(declare-fun b!5408741 () Bool)

(declare-fun e!3353042 () Bool)

(declare-fun lt!2204929 () Bool)

(declare-fun call!387133 () Bool)

(assert (=> b!5408741 (= e!3353042 (= lt!2204929 call!387133))))

(declare-fun b!5408742 () Bool)

(declare-fun e!3353044 () Bool)

(assert (=> b!5408742 (= e!3353041 e!3353044)))

(declare-fun res!2299874 () Bool)

(assert (=> b!5408742 (=> (not res!2299874) (not e!3353044))))

(assert (=> b!5408742 (= res!2299874 (not lt!2204929))))

(declare-fun b!5408743 () Bool)

(assert (=> b!5408743 (= e!3353042 e!3353039)))

(declare-fun c!943025 () Bool)

(assert (=> b!5408743 (= c!943025 ((_ is EmptyLang!15181) lt!2204716))))

(declare-fun b!5408745 () Bool)

(declare-fun e!3353040 () Bool)

(assert (=> b!5408745 (= e!3353044 e!3353040)))

(declare-fun res!2299875 () Bool)

(assert (=> b!5408745 (=> res!2299875 e!3353040)))

(assert (=> b!5408745 (= res!2299875 call!387133)))

(declare-fun b!5408746 () Bool)

(assert (=> b!5408746 (= e!3353043 (= (head!11600 lt!2204697) (c!942767 lt!2204716)))))

(declare-fun b!5408747 () Bool)

(declare-fun e!3353038 () Bool)

(assert (=> b!5408747 (= e!3353038 (matchR!7366 (derivativeStep!4263 lt!2204716 (head!11600 lt!2204697)) (tail!10697 lt!2204697)))))

(declare-fun b!5408748 () Bool)

(declare-fun res!2299879 () Bool)

(assert (=> b!5408748 (=> res!2299879 e!3353040)))

(assert (=> b!5408748 (= res!2299879 (not (isEmpty!33716 (tail!10697 lt!2204697))))))

(declare-fun bm!387128 () Bool)

(assert (=> bm!387128 (= call!387133 (isEmpty!33716 lt!2204697))))

(declare-fun d!1726782 () Bool)

(assert (=> d!1726782 e!3353042))

(declare-fun c!943027 () Bool)

(assert (=> d!1726782 (= c!943027 ((_ is EmptyExpr!15181) lt!2204716))))

(assert (=> d!1726782 (= lt!2204929 e!3353038)))

(declare-fun c!943026 () Bool)

(assert (=> d!1726782 (= c!943026 (isEmpty!33716 lt!2204697))))

(assert (=> d!1726782 (validRegex!6917 lt!2204716)))

(assert (=> d!1726782 (= (matchR!7366 lt!2204716 lt!2204697) lt!2204929)))

(declare-fun b!5408744 () Bool)

(assert (=> b!5408744 (= e!3353039 (not lt!2204929))))

(declare-fun b!5408749 () Bool)

(assert (=> b!5408749 (= e!3353038 (nullable!5350 lt!2204716))))

(declare-fun b!5408750 () Bool)

(assert (=> b!5408750 (= e!3353040 (not (= (head!11600 lt!2204697) (c!942767 lt!2204716))))))

(declare-fun b!5408751 () Bool)

(declare-fun res!2299877 () Bool)

(assert (=> b!5408751 (=> res!2299877 e!3353041)))

(assert (=> b!5408751 (= res!2299877 e!3353043)))

(declare-fun res!2299880 () Bool)

(assert (=> b!5408751 (=> (not res!2299880) (not e!3353043))))

(assert (=> b!5408751 (= res!2299880 lt!2204929)))

(declare-fun b!5408752 () Bool)

(declare-fun res!2299878 () Bool)

(assert (=> b!5408752 (=> (not res!2299878) (not e!3353043))))

(assert (=> b!5408752 (= res!2299878 (not call!387133))))

(assert (= (and d!1726782 c!943026) b!5408749))

(assert (= (and d!1726782 (not c!943026)) b!5408747))

(assert (= (and d!1726782 c!943027) b!5408741))

(assert (= (and d!1726782 (not c!943027)) b!5408743))

(assert (= (and b!5408743 c!943025) b!5408744))

(assert (= (and b!5408743 (not c!943025)) b!5408740))

(assert (= (and b!5408740 (not res!2299873)) b!5408751))

(assert (= (and b!5408751 res!2299880) b!5408752))

(assert (= (and b!5408752 res!2299878) b!5408739))

(assert (= (and b!5408739 res!2299876) b!5408746))

(assert (= (and b!5408751 (not res!2299877)) b!5408742))

(assert (= (and b!5408742 res!2299874) b!5408745))

(assert (= (and b!5408745 (not res!2299875)) b!5408748))

(assert (= (and b!5408748 (not res!2299879)) b!5408750))

(assert (= (or b!5408741 b!5408745 b!5408752) bm!387128))

(declare-fun m!6432888 () Bool)

(assert (=> b!5408747 m!6432888))

(assert (=> b!5408747 m!6432888))

(declare-fun m!6432890 () Bool)

(assert (=> b!5408747 m!6432890))

(declare-fun m!6432892 () Bool)

(assert (=> b!5408747 m!6432892))

(assert (=> b!5408747 m!6432890))

(assert (=> b!5408747 m!6432892))

(declare-fun m!6432894 () Bool)

(assert (=> b!5408747 m!6432894))

(declare-fun m!6432896 () Bool)

(assert (=> bm!387128 m!6432896))

(assert (=> d!1726782 m!6432896))

(assert (=> d!1726782 m!6432752))

(assert (=> b!5408750 m!6432888))

(assert (=> b!5408746 m!6432888))

(assert (=> b!5408748 m!6432892))

(assert (=> b!5408748 m!6432892))

(declare-fun m!6432898 () Bool)

(assert (=> b!5408748 m!6432898))

(assert (=> b!5408749 m!6432754))

(assert (=> b!5408739 m!6432892))

(assert (=> b!5408739 m!6432892))

(assert (=> b!5408739 m!6432898))

(assert (=> b!5407772 d!1726782))

(declare-fun d!1726784 () Bool)

(assert (=> d!1726784 (= (Exists!2362 lambda!282040) (choose!40831 lambda!282040))))

(declare-fun bs!1249474 () Bool)

(assert (= bs!1249474 d!1726784))

(declare-fun m!6432900 () Bool)

(assert (=> bs!1249474 m!6432900))

(assert (=> b!5407772 d!1726784))

(declare-fun bs!1249475 () Bool)

(declare-fun b!5408763 () Bool)

(assert (= bs!1249475 (and b!5408763 b!5408475)))

(declare-fun lambda!282122 () Int)

(assert (=> bs!1249475 (= (and (= (reg!15510 lt!2204689) (reg!15510 r!7292)) (= lt!2204689 r!7292)) (= lambda!282122 lambda!282107))))

(declare-fun bs!1249476 () Bool)

(assert (= bs!1249476 (and b!5408763 b!5408474)))

(assert (=> bs!1249476 (not (= lambda!282122 lambda!282108))))

(declare-fun bs!1249477 () Bool)

(assert (= bs!1249477 (and b!5408763 d!1726630)))

(assert (=> bs!1249477 (not (= lambda!282122 lambda!282097))))

(declare-fun bs!1249478 () Bool)

(assert (= bs!1249478 (and b!5408763 d!1726616)))

(assert (=> bs!1249478 (not (= lambda!282122 lambda!282086))))

(declare-fun bs!1249479 () Bool)

(assert (= bs!1249479 (and b!5408763 b!5407772)))

(assert (=> bs!1249479 (not (= lambda!282122 lambda!282040))))

(declare-fun bs!1249480 () Bool)

(assert (= bs!1249480 (and b!5408763 d!1726780)))

(assert (=> bs!1249480 (not (= lambda!282122 lambda!282120))))

(assert (=> bs!1249479 (not (= lambda!282122 lambda!282041))))

(declare-fun bs!1249481 () Bool)

(assert (= bs!1249481 (and b!5408763 b!5407764)))

(assert (=> bs!1249481 (not (= lambda!282122 lambda!282036))))

(assert (=> bs!1249481 (not (= lambda!282122 lambda!282035))))

(assert (=> bs!1249480 (not (= lambda!282122 lambda!282121))))

(declare-fun bs!1249482 () Bool)

(assert (= bs!1249482 (and b!5408763 b!5408671)))

(assert (=> bs!1249482 (= (and (= (reg!15510 lt!2204689) (reg!15510 lt!2204716)) (= lt!2204689 lt!2204716)) (= lambda!282122 lambda!282109))))

(assert (=> bs!1249477 (not (= lambda!282122 lambda!282095))))

(declare-fun bs!1249483 () Bool)

(assert (= bs!1249483 (and b!5408763 b!5408670)))

(assert (=> bs!1249483 (not (= lambda!282122 lambda!282110))))

(assert (=> b!5408763 true))

(assert (=> b!5408763 true))

(declare-fun bs!1249484 () Bool)

(declare-fun b!5408762 () Bool)

(assert (= bs!1249484 (and b!5408762 b!5408475)))

(declare-fun lambda!282123 () Int)

(assert (=> bs!1249484 (not (= lambda!282123 lambda!282107))))

(declare-fun bs!1249485 () Bool)

(assert (= bs!1249485 (and b!5408762 b!5408474)))

(assert (=> bs!1249485 (= (and (= (regOne!30874 lt!2204689) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204689) (regTwo!30874 r!7292))) (= lambda!282123 lambda!282108))))

(declare-fun bs!1249486 () Bool)

(assert (= bs!1249486 (and b!5408762 d!1726630)))

(assert (=> bs!1249486 (= (and (= (regOne!30874 lt!2204689) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204689) (regTwo!30874 r!7292))) (= lambda!282123 lambda!282097))))

(declare-fun bs!1249487 () Bool)

(assert (= bs!1249487 (and b!5408762 d!1726616)))

(assert (=> bs!1249487 (not (= lambda!282123 lambda!282086))))

(declare-fun bs!1249488 () Bool)

(assert (= bs!1249488 (and b!5408762 b!5407772)))

(assert (=> bs!1249488 (not (= lambda!282123 lambda!282040))))

(declare-fun bs!1249489 () Bool)

(assert (= bs!1249489 (and b!5408762 d!1726780)))

(assert (=> bs!1249489 (not (= lambda!282123 lambda!282120))))

(declare-fun bs!1249490 () Bool)

(assert (= bs!1249490 (and b!5408762 b!5408763)))

(assert (=> bs!1249490 (not (= lambda!282123 lambda!282122))))

(assert (=> bs!1249488 (= (and (= (regOne!30874 lt!2204689) lt!2204738) (= (regTwo!30874 lt!2204689) (regTwo!30874 r!7292))) (= lambda!282123 lambda!282041))))

(declare-fun bs!1249491 () Bool)

(assert (= bs!1249491 (and b!5408762 b!5407764)))

(assert (=> bs!1249491 (= (and (= (regOne!30874 lt!2204689) (regOne!30874 r!7292)) (= (regTwo!30874 lt!2204689) (regTwo!30874 r!7292))) (= lambda!282123 lambda!282036))))

(assert (=> bs!1249491 (not (= lambda!282123 lambda!282035))))

(assert (=> bs!1249489 (= (and (= (regOne!30874 lt!2204689) lt!2204738) (= (regTwo!30874 lt!2204689) (regTwo!30874 r!7292))) (= lambda!282123 lambda!282121))))

(declare-fun bs!1249492 () Bool)

(assert (= bs!1249492 (and b!5408762 b!5408671)))

(assert (=> bs!1249492 (not (= lambda!282123 lambda!282109))))

(assert (=> bs!1249486 (not (= lambda!282123 lambda!282095))))

(declare-fun bs!1249493 () Bool)

(assert (= bs!1249493 (and b!5408762 b!5408670)))

(assert (=> bs!1249493 (= (and (= (regOne!30874 lt!2204689) (regOne!30874 lt!2204716)) (= (regTwo!30874 lt!2204689) (regTwo!30874 lt!2204716))) (= lambda!282123 lambda!282110))))

(assert (=> b!5408762 true))

(assert (=> b!5408762 true))

(declare-fun b!5408753 () Bool)

(declare-fun res!2299883 () Bool)

(declare-fun e!3353048 () Bool)

(assert (=> b!5408753 (=> res!2299883 e!3353048)))

(declare-fun call!387135 () Bool)

(assert (=> b!5408753 (= res!2299883 call!387135)))

(declare-fun e!3353047 () Bool)

(assert (=> b!5408753 (= e!3353047 e!3353048)))

(declare-fun b!5408754 () Bool)

(declare-fun e!3353050 () Bool)

(assert (=> b!5408754 (= e!3353050 call!387135)))

(declare-fun b!5408755 () Bool)

(declare-fun c!943029 () Bool)

(assert (=> b!5408755 (= c!943029 ((_ is ElementMatch!15181) lt!2204689))))

(declare-fun e!3353051 () Bool)

(declare-fun e!3353046 () Bool)

(assert (=> b!5408755 (= e!3353051 e!3353046)))

(declare-fun b!5408756 () Bool)

(assert (=> b!5408756 (= e!3353046 (= s!2326 (Cons!61719 (c!942767 lt!2204689) Nil!61719)))))

(declare-fun b!5408757 () Bool)

(declare-fun e!3353045 () Bool)

(assert (=> b!5408757 (= e!3353045 e!3353047)))

(declare-fun c!943030 () Bool)

(assert (=> b!5408757 (= c!943030 ((_ is Star!15181) lt!2204689))))

(declare-fun b!5408758 () Bool)

(declare-fun e!3353049 () Bool)

(assert (=> b!5408758 (= e!3353049 (matchRSpec!2284 (regTwo!30875 lt!2204689) s!2326))))

(declare-fun bm!387129 () Bool)

(declare-fun call!387134 () Bool)

(assert (=> bm!387129 (= call!387134 (Exists!2362 (ite c!943030 lambda!282122 lambda!282123)))))

(declare-fun b!5408760 () Bool)

(assert (=> b!5408760 (= e!3353050 e!3353051)))

(declare-fun res!2299882 () Bool)

(assert (=> b!5408760 (= res!2299882 (not ((_ is EmptyLang!15181) lt!2204689)))))

(assert (=> b!5408760 (=> (not res!2299882) (not e!3353051))))

(declare-fun b!5408761 () Bool)

(declare-fun c!943031 () Bool)

(assert (=> b!5408761 (= c!943031 ((_ is Union!15181) lt!2204689))))

(assert (=> b!5408761 (= e!3353046 e!3353045)))

(declare-fun bm!387130 () Bool)

(assert (=> bm!387130 (= call!387135 (isEmpty!33716 s!2326))))

(assert (=> b!5408762 (= e!3353047 call!387134)))

(assert (=> b!5408763 (= e!3353048 call!387134)))

(declare-fun b!5408759 () Bool)

(assert (=> b!5408759 (= e!3353045 e!3353049)))

(declare-fun res!2299881 () Bool)

(assert (=> b!5408759 (= res!2299881 (matchRSpec!2284 (regOne!30875 lt!2204689) s!2326))))

(assert (=> b!5408759 (=> res!2299881 e!3353049)))

(declare-fun d!1726786 () Bool)

(declare-fun c!943028 () Bool)

(assert (=> d!1726786 (= c!943028 ((_ is EmptyExpr!15181) lt!2204689))))

(assert (=> d!1726786 (= (matchRSpec!2284 lt!2204689 s!2326) e!3353050)))

(assert (= (and d!1726786 c!943028) b!5408754))

(assert (= (and d!1726786 (not c!943028)) b!5408760))

(assert (= (and b!5408760 res!2299882) b!5408755))

(assert (= (and b!5408755 c!943029) b!5408756))

(assert (= (and b!5408755 (not c!943029)) b!5408761))

(assert (= (and b!5408761 c!943031) b!5408759))

(assert (= (and b!5408761 (not c!943031)) b!5408757))

(assert (= (and b!5408759 (not res!2299881)) b!5408758))

(assert (= (and b!5408757 c!943030) b!5408753))

(assert (= (and b!5408757 (not c!943030)) b!5408762))

(assert (= (and b!5408753 (not res!2299883)) b!5408763))

(assert (= (or b!5408763 b!5408762) bm!387129))

(assert (= (or b!5408754 b!5408753) bm!387130))

(declare-fun m!6432902 () Bool)

(assert (=> b!5408758 m!6432902))

(declare-fun m!6432904 () Bool)

(assert (=> bm!387129 m!6432904))

(assert (=> bm!387130 m!6432256))

(declare-fun m!6432906 () Bool)

(assert (=> b!5408759 m!6432906))

(assert (=> b!5407772 d!1726786))

(declare-fun bs!1249494 () Bool)

(declare-fun d!1726788 () Bool)

(assert (= bs!1249494 (and d!1726788 b!5408475)))

(declare-fun lambda!282124 () Int)

(assert (=> bs!1249494 (not (= lambda!282124 lambda!282107))))

(declare-fun bs!1249495 () Bool)

(assert (= bs!1249495 (and d!1726788 b!5408474)))

(assert (=> bs!1249495 (not (= lambda!282124 lambda!282108))))

(declare-fun bs!1249496 () Bool)

(assert (= bs!1249496 (and d!1726788 d!1726630)))

(assert (=> bs!1249496 (not (= lambda!282124 lambda!282097))))

(declare-fun bs!1249497 () Bool)

(assert (= bs!1249497 (and d!1726788 d!1726616)))

(assert (=> bs!1249497 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282124 lambda!282086))))

(declare-fun bs!1249498 () Bool)

(assert (= bs!1249498 (and d!1726788 b!5407772)))

(assert (=> bs!1249498 (= lambda!282124 lambda!282040)))

(declare-fun bs!1249499 () Bool)

(assert (= bs!1249499 (and d!1726788 b!5408762)))

(assert (=> bs!1249499 (not (= lambda!282124 lambda!282123))))

(declare-fun bs!1249500 () Bool)

(assert (= bs!1249500 (and d!1726788 d!1726780)))

(assert (=> bs!1249500 (= lambda!282124 lambda!282120)))

(declare-fun bs!1249501 () Bool)

(assert (= bs!1249501 (and d!1726788 b!5408763)))

(assert (=> bs!1249501 (not (= lambda!282124 lambda!282122))))

(assert (=> bs!1249498 (not (= lambda!282124 lambda!282041))))

(declare-fun bs!1249502 () Bool)

(assert (= bs!1249502 (and d!1726788 b!5407764)))

(assert (=> bs!1249502 (not (= lambda!282124 lambda!282036))))

(assert (=> bs!1249502 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282124 lambda!282035))))

(assert (=> bs!1249500 (not (= lambda!282124 lambda!282121))))

(declare-fun bs!1249503 () Bool)

(assert (= bs!1249503 (and d!1726788 b!5408671)))

(assert (=> bs!1249503 (not (= lambda!282124 lambda!282109))))

(assert (=> bs!1249496 (= (= lt!2204738 (regOne!30874 r!7292)) (= lambda!282124 lambda!282095))))

(declare-fun bs!1249504 () Bool)

(assert (= bs!1249504 (and d!1726788 b!5408670)))

(assert (=> bs!1249504 (not (= lambda!282124 lambda!282110))))

(assert (=> d!1726788 true))

(assert (=> d!1726788 true))

(assert (=> d!1726788 true))

(assert (=> d!1726788 (= (isDefined!11995 (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326)) (Exists!2362 lambda!282124))))

(declare-fun lt!2204930 () Unit!154246)

(assert (=> d!1726788 (= lt!2204930 (choose!40832 lt!2204738 (regTwo!30874 r!7292) s!2326))))

(assert (=> d!1726788 (validRegex!6917 lt!2204738)))

(assert (=> d!1726788 (= (lemmaFindConcatSeparationEquivalentToExists!1470 lt!2204738 (regTwo!30874 r!7292) s!2326) lt!2204930)))

(declare-fun bs!1249505 () Bool)

(assert (= bs!1249505 d!1726788))

(assert (=> bs!1249505 m!6432886))

(assert (=> bs!1249505 m!6431894))

(declare-fun m!6432908 () Bool)

(assert (=> bs!1249505 m!6432908))

(declare-fun m!6432910 () Bool)

(assert (=> bs!1249505 m!6432910))

(assert (=> bs!1249505 m!6431894))

(assert (=> bs!1249505 m!6431896))

(assert (=> b!5407772 d!1726788))

(assert (=> b!5407772 d!1726752))

(declare-fun b!5408764 () Bool)

(declare-fun res!2299887 () Bool)

(declare-fun e!3353057 () Bool)

(assert (=> b!5408764 (=> (not res!2299887) (not e!3353057))))

(assert (=> b!5408764 (= res!2299887 (isEmpty!33716 (tail!10697 s!2326)))))

(declare-fun b!5408765 () Bool)

(declare-fun res!2299884 () Bool)

(declare-fun e!3353055 () Bool)

(assert (=> b!5408765 (=> res!2299884 e!3353055)))

(assert (=> b!5408765 (= res!2299884 (not ((_ is ElementMatch!15181) lt!2204689)))))

(declare-fun e!3353053 () Bool)

(assert (=> b!5408765 (= e!3353053 e!3353055)))

(declare-fun b!5408766 () Bool)

(declare-fun e!3353056 () Bool)

(declare-fun lt!2204931 () Bool)

(declare-fun call!387136 () Bool)

(assert (=> b!5408766 (= e!3353056 (= lt!2204931 call!387136))))

(declare-fun b!5408767 () Bool)

(declare-fun e!3353058 () Bool)

(assert (=> b!5408767 (= e!3353055 e!3353058)))

(declare-fun res!2299885 () Bool)

(assert (=> b!5408767 (=> (not res!2299885) (not e!3353058))))

(assert (=> b!5408767 (= res!2299885 (not lt!2204931))))

(declare-fun b!5408768 () Bool)

(assert (=> b!5408768 (= e!3353056 e!3353053)))

(declare-fun c!943032 () Bool)

(assert (=> b!5408768 (= c!943032 ((_ is EmptyLang!15181) lt!2204689))))

(declare-fun b!5408770 () Bool)

(declare-fun e!3353054 () Bool)

(assert (=> b!5408770 (= e!3353058 e!3353054)))

(declare-fun res!2299886 () Bool)

(assert (=> b!5408770 (=> res!2299886 e!3353054)))

(assert (=> b!5408770 (= res!2299886 call!387136)))

(declare-fun b!5408771 () Bool)

(assert (=> b!5408771 (= e!3353057 (= (head!11600 s!2326) (c!942767 lt!2204689)))))

(declare-fun b!5408772 () Bool)

(declare-fun e!3353052 () Bool)

(assert (=> b!5408772 (= e!3353052 (matchR!7366 (derivativeStep!4263 lt!2204689 (head!11600 s!2326)) (tail!10697 s!2326)))))

(declare-fun b!5408773 () Bool)

(declare-fun res!2299890 () Bool)

(assert (=> b!5408773 (=> res!2299890 e!3353054)))

(assert (=> b!5408773 (= res!2299890 (not (isEmpty!33716 (tail!10697 s!2326))))))

(declare-fun bm!387131 () Bool)

(assert (=> bm!387131 (= call!387136 (isEmpty!33716 s!2326))))

(declare-fun d!1726790 () Bool)

(assert (=> d!1726790 e!3353056))

(declare-fun c!943034 () Bool)

(assert (=> d!1726790 (= c!943034 ((_ is EmptyExpr!15181) lt!2204689))))

(assert (=> d!1726790 (= lt!2204931 e!3353052)))

(declare-fun c!943033 () Bool)

(assert (=> d!1726790 (= c!943033 (isEmpty!33716 s!2326))))

(assert (=> d!1726790 (validRegex!6917 lt!2204689)))

(assert (=> d!1726790 (= (matchR!7366 lt!2204689 s!2326) lt!2204931)))

(declare-fun b!5408769 () Bool)

(assert (=> b!5408769 (= e!3353053 (not lt!2204931))))

(declare-fun b!5408774 () Bool)

(assert (=> b!5408774 (= e!3353052 (nullable!5350 lt!2204689))))

(declare-fun b!5408775 () Bool)

(assert (=> b!5408775 (= e!3353054 (not (= (head!11600 s!2326) (c!942767 lt!2204689))))))

(declare-fun b!5408776 () Bool)

(declare-fun res!2299888 () Bool)

(assert (=> b!5408776 (=> res!2299888 e!3353055)))

(assert (=> b!5408776 (= res!2299888 e!3353057)))

(declare-fun res!2299891 () Bool)

(assert (=> b!5408776 (=> (not res!2299891) (not e!3353057))))

(assert (=> b!5408776 (= res!2299891 lt!2204931)))

(declare-fun b!5408777 () Bool)

(declare-fun res!2299889 () Bool)

(assert (=> b!5408777 (=> (not res!2299889) (not e!3353057))))

(assert (=> b!5408777 (= res!2299889 (not call!387136))))

(assert (= (and d!1726790 c!943033) b!5408774))

(assert (= (and d!1726790 (not c!943033)) b!5408772))

(assert (= (and d!1726790 c!943034) b!5408766))

(assert (= (and d!1726790 (not c!943034)) b!5408768))

(assert (= (and b!5408768 c!943032) b!5408769))

(assert (= (and b!5408768 (not c!943032)) b!5408765))

(assert (= (and b!5408765 (not res!2299884)) b!5408776))

(assert (= (and b!5408776 res!2299891) b!5408777))

(assert (= (and b!5408777 res!2299889) b!5408764))

(assert (= (and b!5408764 res!2299887) b!5408771))

(assert (= (and b!5408776 (not res!2299888)) b!5408767))

(assert (= (and b!5408767 res!2299885) b!5408770))

(assert (= (and b!5408770 (not res!2299886)) b!5408773))

(assert (= (and b!5408773 (not res!2299890)) b!5408775))

(assert (= (or b!5408766 b!5408770 b!5408777) bm!387131))

(assert (=> b!5408772 m!6432260))

(assert (=> b!5408772 m!6432260))

(declare-fun m!6432912 () Bool)

(assert (=> b!5408772 m!6432912))

(assert (=> b!5408772 m!6432264))

(assert (=> b!5408772 m!6432912))

(assert (=> b!5408772 m!6432264))

(declare-fun m!6432914 () Bool)

(assert (=> b!5408772 m!6432914))

(assert (=> bm!387131 m!6432256))

(assert (=> d!1726790 m!6432256))

(assert (=> d!1726790 m!6432860))

(assert (=> b!5408775 m!6432260))

(assert (=> b!5408771 m!6432260))

(assert (=> b!5408773 m!6432264))

(assert (=> b!5408773 m!6432264))

(assert (=> b!5408773 m!6432658))

(declare-fun m!6432916 () Bool)

(assert (=> b!5408774 m!6432916))

(assert (=> b!5408764 m!6432264))

(assert (=> b!5408764 m!6432264))

(assert (=> b!5408764 m!6432658))

(assert (=> b!5407772 d!1726790))

(declare-fun b!5408778 () Bool)

(declare-fun e!3353063 () Option!15292)

(declare-fun e!3353059 () Option!15292)

(assert (=> b!5408778 (= e!3353063 e!3353059)))

(declare-fun c!943036 () Bool)

(assert (=> b!5408778 (= c!943036 ((_ is Nil!61719) s!2326))))

(declare-fun b!5408779 () Bool)

(assert (=> b!5408779 (= e!3353059 None!15291)))

(declare-fun b!5408780 () Bool)

(declare-fun e!3353062 () Bool)

(declare-fun lt!2204933 () Option!15292)

(assert (=> b!5408780 (= e!3353062 (= (++!13536 (_1!35683 (get!21274 lt!2204933)) (_2!35683 (get!21274 lt!2204933))) s!2326))))

(declare-fun b!5408781 () Bool)

(declare-fun res!2299896 () Bool)

(assert (=> b!5408781 (=> (not res!2299896) (not e!3353062))))

(assert (=> b!5408781 (= res!2299896 (matchR!7366 lt!2204738 (_1!35683 (get!21274 lt!2204933))))))

(declare-fun b!5408782 () Bool)

(declare-fun res!2299892 () Bool)

(assert (=> b!5408782 (=> (not res!2299892) (not e!3353062))))

(assert (=> b!5408782 (= res!2299892 (matchR!7366 (regTwo!30874 r!7292) (_2!35683 (get!21274 lt!2204933))))))

(declare-fun d!1726792 () Bool)

(declare-fun e!3353060 () Bool)

(assert (=> d!1726792 e!3353060))

(declare-fun res!2299893 () Bool)

(assert (=> d!1726792 (=> res!2299893 e!3353060)))

(assert (=> d!1726792 (= res!2299893 e!3353062)))

(declare-fun res!2299894 () Bool)

(assert (=> d!1726792 (=> (not res!2299894) (not e!3353062))))

(assert (=> d!1726792 (= res!2299894 (isDefined!11995 lt!2204933))))

(assert (=> d!1726792 (= lt!2204933 e!3353063)))

(declare-fun c!943035 () Bool)

(declare-fun e!3353061 () Bool)

(assert (=> d!1726792 (= c!943035 e!3353061)))

(declare-fun res!2299895 () Bool)

(assert (=> d!1726792 (=> (not res!2299895) (not e!3353061))))

(assert (=> d!1726792 (= res!2299895 (matchR!7366 lt!2204738 Nil!61719))))

(assert (=> d!1726792 (validRegex!6917 lt!2204738)))

(assert (=> d!1726792 (= (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) Nil!61719 s!2326 s!2326) lt!2204933)))

(declare-fun b!5408783 () Bool)

(assert (=> b!5408783 (= e!3353060 (not (isDefined!11995 lt!2204933)))))

(declare-fun b!5408784 () Bool)

(assert (=> b!5408784 (= e!3353063 (Some!15291 (tuple2!64761 Nil!61719 s!2326)))))

(declare-fun b!5408785 () Bool)

(declare-fun lt!2204934 () Unit!154246)

(declare-fun lt!2204932 () Unit!154246)

(assert (=> b!5408785 (= lt!2204934 lt!2204932)))

(assert (=> b!5408785 (= (++!13536 (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326)) s!2326)))

(assert (=> b!5408785 (= lt!2204932 (lemmaMoveElementToOtherListKeepsConcatEq!1837 Nil!61719 (h!68167 s!2326) (t!375066 s!2326) s!2326))))

(assert (=> b!5408785 (= e!3353059 (findConcatSeparation!1706 lt!2204738 (regTwo!30874 r!7292) (++!13536 Nil!61719 (Cons!61719 (h!68167 s!2326) Nil!61719)) (t!375066 s!2326) s!2326))))

(declare-fun b!5408786 () Bool)

(assert (=> b!5408786 (= e!3353061 (matchR!7366 (regTwo!30874 r!7292) s!2326))))

(assert (= (and d!1726792 res!2299895) b!5408786))

(assert (= (and d!1726792 c!943035) b!5408784))

(assert (= (and d!1726792 (not c!943035)) b!5408778))

(assert (= (and b!5408778 c!943036) b!5408779))

(assert (= (and b!5408778 (not c!943036)) b!5408785))

(assert (= (and d!1726792 res!2299894) b!5408781))

(assert (= (and b!5408781 res!2299896) b!5408782))

(assert (= (and b!5408782 res!2299892) b!5408780))

(assert (= (and d!1726792 (not res!2299893)) b!5408783))

(assert (=> b!5408786 m!6432418))

(declare-fun m!6432918 () Bool)

(assert (=> b!5408781 m!6432918))

(declare-fun m!6432920 () Bool)

(assert (=> b!5408781 m!6432920))

(assert (=> b!5408780 m!6432918))

(declare-fun m!6432922 () Bool)

(assert (=> b!5408780 m!6432922))

(declare-fun m!6432924 () Bool)

(assert (=> b!5408783 m!6432924))

(assert (=> d!1726792 m!6432924))

(declare-fun m!6432926 () Bool)

(assert (=> d!1726792 m!6432926))

(assert (=> d!1726792 m!6432886))

(assert (=> b!5408782 m!6432918))

(declare-fun m!6432928 () Bool)

(assert (=> b!5408782 m!6432928))

(assert (=> b!5408785 m!6432434))

(assert (=> b!5408785 m!6432434))

(assert (=> b!5408785 m!6432436))

(assert (=> b!5408785 m!6432438))

(assert (=> b!5408785 m!6432434))

(declare-fun m!6432930 () Bool)

(assert (=> b!5408785 m!6432930))

(assert (=> b!5407772 d!1726792))

(declare-fun d!1726794 () Bool)

(assert (=> d!1726794 (= (matchR!7366 lt!2204700 (_2!35683 lt!2204704)) (matchZipper!1425 lt!2204724 (_2!35683 lt!2204704)))))

(declare-fun lt!2204935 () Unit!154246)

(assert (=> d!1726794 (= lt!2204935 (choose!40844 lt!2204724 lt!2204692 lt!2204700 (_2!35683 lt!2204704)))))

(assert (=> d!1726794 (validRegex!6917 lt!2204700)))

(assert (=> d!1726794 (= (theoremZipperRegexEquiv!495 lt!2204724 lt!2204692 lt!2204700 (_2!35683 lt!2204704)) lt!2204935)))

(declare-fun bs!1249506 () Bool)

(assert (= bs!1249506 d!1726794))

(assert (=> bs!1249506 m!6431908))

(assert (=> bs!1249506 m!6431928))

(declare-fun m!6432932 () Bool)

(assert (=> bs!1249506 m!6432932))

(assert (=> bs!1249506 m!6432878))

(assert (=> b!5407772 d!1726794))

(declare-fun b!5408787 () Bool)

(declare-fun res!2299900 () Bool)

(declare-fun e!3353069 () Bool)

(assert (=> b!5408787 (=> (not res!2299900) (not e!3353069))))

(assert (=> b!5408787 (= res!2299900 (isEmpty!33716 (tail!10697 (_2!35683 lt!2204704))))))

(declare-fun b!5408788 () Bool)

(declare-fun res!2299897 () Bool)

(declare-fun e!3353067 () Bool)

(assert (=> b!5408788 (=> res!2299897 e!3353067)))

(assert (=> b!5408788 (= res!2299897 (not ((_ is ElementMatch!15181) lt!2204700)))))

(declare-fun e!3353065 () Bool)

(assert (=> b!5408788 (= e!3353065 e!3353067)))

(declare-fun b!5408789 () Bool)

(declare-fun e!3353068 () Bool)

(declare-fun lt!2204936 () Bool)

(declare-fun call!387137 () Bool)

(assert (=> b!5408789 (= e!3353068 (= lt!2204936 call!387137))))

(declare-fun b!5408790 () Bool)

(declare-fun e!3353070 () Bool)

(assert (=> b!5408790 (= e!3353067 e!3353070)))

(declare-fun res!2299898 () Bool)

(assert (=> b!5408790 (=> (not res!2299898) (not e!3353070))))

(assert (=> b!5408790 (= res!2299898 (not lt!2204936))))

(declare-fun b!5408791 () Bool)

(assert (=> b!5408791 (= e!3353068 e!3353065)))

(declare-fun c!943037 () Bool)

(assert (=> b!5408791 (= c!943037 ((_ is EmptyLang!15181) lt!2204700))))

(declare-fun b!5408793 () Bool)

(declare-fun e!3353066 () Bool)

(assert (=> b!5408793 (= e!3353070 e!3353066)))

(declare-fun res!2299899 () Bool)

(assert (=> b!5408793 (=> res!2299899 e!3353066)))

(assert (=> b!5408793 (= res!2299899 call!387137)))

(declare-fun b!5408794 () Bool)

(assert (=> b!5408794 (= e!3353069 (= (head!11600 (_2!35683 lt!2204704)) (c!942767 lt!2204700)))))

(declare-fun b!5408795 () Bool)

(declare-fun e!3353064 () Bool)

(assert (=> b!5408795 (= e!3353064 (matchR!7366 (derivativeStep!4263 lt!2204700 (head!11600 (_2!35683 lt!2204704))) (tail!10697 (_2!35683 lt!2204704))))))

(declare-fun b!5408796 () Bool)

(declare-fun res!2299903 () Bool)

(assert (=> b!5408796 (=> res!2299903 e!3353066)))

(assert (=> b!5408796 (= res!2299903 (not (isEmpty!33716 (tail!10697 (_2!35683 lt!2204704)))))))

(declare-fun bm!387132 () Bool)

(assert (=> bm!387132 (= call!387137 (isEmpty!33716 (_2!35683 lt!2204704)))))

(declare-fun d!1726796 () Bool)

(assert (=> d!1726796 e!3353068))

(declare-fun c!943039 () Bool)

(assert (=> d!1726796 (= c!943039 ((_ is EmptyExpr!15181) lt!2204700))))

(assert (=> d!1726796 (= lt!2204936 e!3353064)))

(declare-fun c!943038 () Bool)

(assert (=> d!1726796 (= c!943038 (isEmpty!33716 (_2!35683 lt!2204704)))))

(assert (=> d!1726796 (validRegex!6917 lt!2204700)))

(assert (=> d!1726796 (= (matchR!7366 lt!2204700 (_2!35683 lt!2204704)) lt!2204936)))

(declare-fun b!5408792 () Bool)

(assert (=> b!5408792 (= e!3353065 (not lt!2204936))))

(declare-fun b!5408797 () Bool)

(assert (=> b!5408797 (= e!3353064 (nullable!5350 lt!2204700))))

(declare-fun b!5408798 () Bool)

(assert (=> b!5408798 (= e!3353066 (not (= (head!11600 (_2!35683 lt!2204704)) (c!942767 lt!2204700))))))

(declare-fun b!5408799 () Bool)

(declare-fun res!2299901 () Bool)

(assert (=> b!5408799 (=> res!2299901 e!3353067)))

(assert (=> b!5408799 (= res!2299901 e!3353069)))

(declare-fun res!2299904 () Bool)

(assert (=> b!5408799 (=> (not res!2299904) (not e!3353069))))

(assert (=> b!5408799 (= res!2299904 lt!2204936)))

(declare-fun b!5408800 () Bool)

(declare-fun res!2299902 () Bool)

(assert (=> b!5408800 (=> (not res!2299902) (not e!3353069))))

(assert (=> b!5408800 (= res!2299902 (not call!387137))))

(assert (= (and d!1726796 c!943038) b!5408797))

(assert (= (and d!1726796 (not c!943038)) b!5408795))

(assert (= (and d!1726796 c!943039) b!5408789))

(assert (= (and d!1726796 (not c!943039)) b!5408791))

(assert (= (and b!5408791 c!943037) b!5408792))

(assert (= (and b!5408791 (not c!943037)) b!5408788))

(assert (= (and b!5408788 (not res!2299897)) b!5408799))

(assert (= (and b!5408799 res!2299904) b!5408800))

(assert (= (and b!5408800 res!2299902) b!5408787))

(assert (= (and b!5408787 res!2299900) b!5408794))

(assert (= (and b!5408799 (not res!2299901)) b!5408790))

(assert (= (and b!5408790 res!2299898) b!5408793))

(assert (= (and b!5408793 (not res!2299899)) b!5408796))

(assert (= (and b!5408796 (not res!2299903)) b!5408798))

(assert (= (or b!5408789 b!5408793 b!5408800) bm!387132))

(declare-fun m!6432934 () Bool)

(assert (=> b!5408795 m!6432934))

(assert (=> b!5408795 m!6432934))

(declare-fun m!6432936 () Bool)

(assert (=> b!5408795 m!6432936))

(declare-fun m!6432938 () Bool)

(assert (=> b!5408795 m!6432938))

(assert (=> b!5408795 m!6432936))

(assert (=> b!5408795 m!6432938))

(declare-fun m!6432940 () Bool)

(assert (=> b!5408795 m!6432940))

(declare-fun m!6432942 () Bool)

(assert (=> bm!387132 m!6432942))

(assert (=> d!1726796 m!6432942))

(assert (=> d!1726796 m!6432878))

(assert (=> b!5408798 m!6432934))

(assert (=> b!5408794 m!6432934))

(assert (=> b!5408796 m!6432938))

(assert (=> b!5408796 m!6432938))

(declare-fun m!6432944 () Bool)

(assert (=> b!5408796 m!6432944))

(declare-fun m!6432946 () Bool)

(assert (=> b!5408797 m!6432946))

(assert (=> b!5408787 m!6432938))

(assert (=> b!5408787 m!6432938))

(assert (=> b!5408787 m!6432944))

(assert (=> b!5407772 d!1726796))

(declare-fun d!1726798 () Bool)

(declare-fun c!943040 () Bool)

(assert (=> d!1726798 (= c!943040 (isEmpty!33716 lt!2204697))))

(declare-fun e!3353071 () Bool)

(assert (=> d!1726798 (= (matchZipper!1425 (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 lt!2204683 lt!2204684)) true) lt!2204697) e!3353071)))

(declare-fun b!5408801 () Bool)

(assert (=> b!5408801 (= e!3353071 (nullableZipper!1442 (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 lt!2204683 lt!2204684)) true)))))

(declare-fun b!5408802 () Bool)

(assert (=> b!5408802 (= e!3353071 (matchZipper!1425 (derivationStepZipper!1420 (store ((as const (Array Context!9130 Bool)) false) (Context!9131 (++!13535 lt!2204683 lt!2204684)) true) (head!11600 lt!2204697)) (tail!10697 lt!2204697)))))

(assert (= (and d!1726798 c!943040) b!5408801))

(assert (= (and d!1726798 (not c!943040)) b!5408802))

(assert (=> d!1726798 m!6432896))

(assert (=> b!5408801 m!6431880))

(declare-fun m!6432948 () Bool)

(assert (=> b!5408801 m!6432948))

(assert (=> b!5408802 m!6432888))

(assert (=> b!5408802 m!6431880))

(assert (=> b!5408802 m!6432888))

(declare-fun m!6432950 () Bool)

(assert (=> b!5408802 m!6432950))

(assert (=> b!5408802 m!6432892))

(assert (=> b!5408802 m!6432950))

(assert (=> b!5408802 m!6432892))

(declare-fun m!6432952 () Bool)

(assert (=> b!5408802 m!6432952))

(assert (=> b!5407772 d!1726798))

(assert (=> b!5407771 d!1726558))

(declare-fun d!1726800 () Bool)

(assert (=> d!1726800 (= (flatMap!908 lt!2204698 lambda!282037) (choose!40830 lt!2204698 lambda!282037))))

(declare-fun bs!1249507 () Bool)

(assert (= bs!1249507 d!1726800))

(declare-fun m!6432954 () Bool)

(assert (=> bs!1249507 m!6432954))

(assert (=> b!5407791 d!1726800))

(declare-fun d!1726802 () Bool)

(declare-fun c!943041 () Bool)

(declare-fun e!3353072 () Bool)

(assert (=> d!1726802 (= c!943041 e!3353072)))

(declare-fun res!2299905 () Bool)

(assert (=> d!1726802 (=> (not res!2299905) (not e!3353072))))

(assert (=> d!1726802 (= res!2299905 ((_ is Cons!61718) (exprs!5065 lt!2204691)))))

(declare-fun e!3353074 () (InoxSet Context!9130))

(assert (=> d!1726802 (= (derivationStepZipperUp!553 lt!2204691 (h!68167 s!2326)) e!3353074)))

(declare-fun b!5408803 () Bool)

(declare-fun e!3353073 () (InoxSet Context!9130))

(assert (=> b!5408803 (= e!3353074 e!3353073)))

(declare-fun c!943042 () Bool)

(assert (=> b!5408803 (= c!943042 ((_ is Cons!61718) (exprs!5065 lt!2204691)))))

(declare-fun bm!387133 () Bool)

(declare-fun call!387138 () (InoxSet Context!9130))

(assert (=> bm!387133 (= call!387138 (derivationStepZipperDown!629 (h!68166 (exprs!5065 lt!2204691)) (Context!9131 (t!375065 (exprs!5065 lt!2204691))) (h!68167 s!2326)))))

(declare-fun b!5408804 () Bool)

(assert (=> b!5408804 (= e!3353074 ((_ map or) call!387138 (derivationStepZipperUp!553 (Context!9131 (t!375065 (exprs!5065 lt!2204691))) (h!68167 s!2326))))))

(declare-fun b!5408805 () Bool)

(assert (=> b!5408805 (= e!3353072 (nullable!5350 (h!68166 (exprs!5065 lt!2204691))))))

(declare-fun b!5408806 () Bool)

(assert (=> b!5408806 (= e!3353073 call!387138)))

(declare-fun b!5408807 () Bool)

(assert (=> b!5408807 (= e!3353073 ((as const (Array Context!9130 Bool)) false))))

(assert (= (and d!1726802 res!2299905) b!5408805))

(assert (= (and d!1726802 c!943041) b!5408804))

(assert (= (and d!1726802 (not c!943041)) b!5408803))

(assert (= (and b!5408803 c!943042) b!5408806))

(assert (= (and b!5408803 (not c!943042)) b!5408807))

(assert (= (or b!5408804 b!5408806) bm!387133))

(declare-fun m!6432956 () Bool)

(assert (=> bm!387133 m!6432956))

(declare-fun m!6432958 () Bool)

(assert (=> b!5408804 m!6432958))

(declare-fun m!6432960 () Bool)

(assert (=> b!5408805 m!6432960))

(assert (=> b!5407791 d!1726802))

(declare-fun d!1726804 () Bool)

(assert (=> d!1726804 (= (flatMap!908 lt!2204698 lambda!282037) (dynLambda!24322 lambda!282037 lt!2204691))))

(declare-fun lt!2204937 () Unit!154246)

(assert (=> d!1726804 (= lt!2204937 (choose!40828 lt!2204698 lt!2204691 lambda!282037))))

(assert (=> d!1726804 (= lt!2204698 (store ((as const (Array Context!9130 Bool)) false) lt!2204691 true))))

(assert (=> d!1726804 (= (lemmaFlatMapOnSingletonSet!440 lt!2204698 lt!2204691 lambda!282037) lt!2204937)))

(declare-fun b_lambda!206657 () Bool)

(assert (=> (not b_lambda!206657) (not d!1726804)))

(declare-fun bs!1249508 () Bool)

(assert (= bs!1249508 d!1726804))

(assert (=> bs!1249508 m!6431998))

(declare-fun m!6432962 () Bool)

(assert (=> bs!1249508 m!6432962))

(declare-fun m!6432964 () Bool)

(assert (=> bs!1249508 m!6432964))

(assert (=> bs!1249508 m!6431994))

(assert (=> b!5407791 d!1726804))

(declare-fun bs!1249509 () Bool)

(declare-fun d!1726806 () Bool)

(assert (= bs!1249509 (and d!1726806 b!5407763)))

(declare-fun lambda!282127 () Int)

(assert (=> bs!1249509 (= lambda!282127 lambda!282037)))

(assert (=> d!1726806 true))

(assert (=> d!1726806 (= (derivationStepZipper!1420 lt!2204698 (h!68167 s!2326)) (flatMap!908 lt!2204698 lambda!282127))))

(declare-fun bs!1249510 () Bool)

(assert (= bs!1249510 d!1726806))

(declare-fun m!6432966 () Bool)

(assert (=> bs!1249510 m!6432966))

(assert (=> b!5407791 d!1726806))

(declare-fun d!1726808 () Bool)

(declare-fun c!943045 () Bool)

(assert (=> d!1726808 (= c!943045 (isEmpty!33716 (_1!35683 lt!2204704)))))

(declare-fun e!3353075 () Bool)

(assert (=> d!1726808 (= (matchZipper!1425 lt!2204699 (_1!35683 lt!2204704)) e!3353075)))

(declare-fun b!5408810 () Bool)

(assert (=> b!5408810 (= e!3353075 (nullableZipper!1442 lt!2204699))))

(declare-fun b!5408811 () Bool)

(assert (=> b!5408811 (= e!3353075 (matchZipper!1425 (derivationStepZipper!1420 lt!2204699 (head!11600 (_1!35683 lt!2204704))) (tail!10697 (_1!35683 lt!2204704))))))

(assert (= (and d!1726808 c!943045) b!5408810))

(assert (= (and d!1726808 (not c!943045)) b!5408811))

(assert (=> d!1726808 m!6432852))

(declare-fun m!6432968 () Bool)

(assert (=> b!5408810 m!6432968))

(assert (=> b!5408811 m!6432844))

(assert (=> b!5408811 m!6432844))

(declare-fun m!6432970 () Bool)

(assert (=> b!5408811 m!6432970))

(assert (=> b!5408811 m!6432848))

(assert (=> b!5408811 m!6432970))

(assert (=> b!5408811 m!6432848))

(declare-fun m!6432972 () Bool)

(assert (=> b!5408811 m!6432972))

(assert (=> b!5407795 d!1726808))

(declare-fun d!1726810 () Bool)

(declare-fun c!943046 () Bool)

(assert (=> d!1726810 (= c!943046 (isEmpty!33716 (_2!35683 lt!2204704)))))

(declare-fun e!3353076 () Bool)

(assert (=> d!1726810 (= (matchZipper!1425 lt!2204724 (_2!35683 lt!2204704)) e!3353076)))

(declare-fun b!5408812 () Bool)

(assert (=> b!5408812 (= e!3353076 (nullableZipper!1442 lt!2204724))))

(declare-fun b!5408813 () Bool)

(assert (=> b!5408813 (= e!3353076 (matchZipper!1425 (derivationStepZipper!1420 lt!2204724 (head!11600 (_2!35683 lt!2204704))) (tail!10697 (_2!35683 lt!2204704))))))

(assert (= (and d!1726810 c!943046) b!5408812))

(assert (= (and d!1726810 (not c!943046)) b!5408813))

(assert (=> d!1726810 m!6432942))

(declare-fun m!6432974 () Bool)

(assert (=> b!5408812 m!6432974))

(assert (=> b!5408813 m!6432934))

(assert (=> b!5408813 m!6432934))

(declare-fun m!6432976 () Bool)

(assert (=> b!5408813 m!6432976))

(assert (=> b!5408813 m!6432938))

(assert (=> b!5408813 m!6432976))

(assert (=> b!5408813 m!6432938))

(declare-fun m!6432978 () Bool)

(assert (=> b!5408813 m!6432978))

(assert (=> b!5407774 d!1726810))

(declare-fun bs!1249511 () Bool)

(declare-fun d!1726812 () Bool)

(assert (= bs!1249511 (and d!1726812 d!1726568)))

(declare-fun lambda!282130 () Int)

(assert (=> bs!1249511 (= lambda!282130 lambda!282072)))

(declare-fun bs!1249512 () Bool)

(assert (= bs!1249512 (and d!1726812 d!1726764)))

(assert (=> bs!1249512 (= lambda!282130 lambda!282119)))

(declare-fun bs!1249513 () Bool)

(assert (= bs!1249513 (and d!1726812 d!1726564)))

(assert (=> bs!1249513 (= lambda!282130 lambda!282069)))

(declare-fun bs!1249514 () Bool)

(assert (= bs!1249514 (and d!1726812 b!5407799)))

(assert (=> bs!1249514 (= lambda!282130 lambda!282039)))

(declare-fun bs!1249515 () Bool)

(assert (= bs!1249515 (and d!1726812 d!1726762)))

(assert (=> bs!1249515 (= lambda!282130 lambda!282116)))

(declare-fun b!5408834 () Bool)

(declare-fun e!3353089 () Regex!15181)

(assert (=> b!5408834 (= e!3353089 EmptyLang!15181)))

(declare-fun b!5408835 () Bool)

(declare-fun e!3353094 () Bool)

(declare-fun lt!2204940 () Regex!15181)

(assert (=> b!5408835 (= e!3353094 (= lt!2204940 (head!11601 (unfocusZipperList!623 zl!343))))))

(declare-fun b!5408836 () Bool)

(declare-fun e!3353092 () Bool)

(assert (=> b!5408836 (= e!3353092 e!3353094)))

(declare-fun c!943055 () Bool)

(assert (=> b!5408836 (= c!943055 (isEmpty!33713 (tail!10698 (unfocusZipperList!623 zl!343))))))

(declare-fun b!5408837 () Bool)

(declare-fun e!3353090 () Bool)

(assert (=> b!5408837 (= e!3353090 e!3353092)))

(declare-fun c!943057 () Bool)

(assert (=> b!5408837 (= c!943057 (isEmpty!33713 (unfocusZipperList!623 zl!343)))))

(assert (=> d!1726812 e!3353090))

(declare-fun res!2299910 () Bool)

(assert (=> d!1726812 (=> (not res!2299910) (not e!3353090))))

(assert (=> d!1726812 (= res!2299910 (validRegex!6917 lt!2204940))))

(declare-fun e!3353093 () Regex!15181)

(assert (=> d!1726812 (= lt!2204940 e!3353093)))

(declare-fun c!943056 () Bool)

(declare-fun e!3353091 () Bool)

(assert (=> d!1726812 (= c!943056 e!3353091)))

(declare-fun res!2299911 () Bool)

(assert (=> d!1726812 (=> (not res!2299911) (not e!3353091))))

(assert (=> d!1726812 (= res!2299911 ((_ is Cons!61718) (unfocusZipperList!623 zl!343)))))

(assert (=> d!1726812 (forall!14535 (unfocusZipperList!623 zl!343) lambda!282130)))

(assert (=> d!1726812 (= (generalisedUnion!1110 (unfocusZipperList!623 zl!343)) lt!2204940)))

(declare-fun b!5408838 () Bool)

(assert (=> b!5408838 (= e!3353091 (isEmpty!33713 (t!375065 (unfocusZipperList!623 zl!343))))))

(declare-fun b!5408839 () Bool)

(assert (=> b!5408839 (= e!3353093 (h!68166 (unfocusZipperList!623 zl!343)))))

(declare-fun b!5408840 () Bool)

(declare-fun isEmptyLang!983 (Regex!15181) Bool)

(assert (=> b!5408840 (= e!3353092 (isEmptyLang!983 lt!2204940))))

(declare-fun b!5408841 () Bool)

(assert (=> b!5408841 (= e!3353093 e!3353089)))

(declare-fun c!943058 () Bool)

(assert (=> b!5408841 (= c!943058 ((_ is Cons!61718) (unfocusZipperList!623 zl!343)))))

(declare-fun b!5408842 () Bool)

(declare-fun isUnion!415 (Regex!15181) Bool)

(assert (=> b!5408842 (= e!3353094 (isUnion!415 lt!2204940))))

(declare-fun b!5408843 () Bool)

(assert (=> b!5408843 (= e!3353089 (Union!15181 (h!68166 (unfocusZipperList!623 zl!343)) (generalisedUnion!1110 (t!375065 (unfocusZipperList!623 zl!343)))))))

(assert (= (and d!1726812 res!2299911) b!5408838))

(assert (= (and d!1726812 c!943056) b!5408839))

(assert (= (and d!1726812 (not c!943056)) b!5408841))

(assert (= (and b!5408841 c!943058) b!5408843))

(assert (= (and b!5408841 (not c!943058)) b!5408834))

(assert (= (and d!1726812 res!2299910) b!5408837))

(assert (= (and b!5408837 c!943057) b!5408840))

(assert (= (and b!5408837 (not c!943057)) b!5408836))

(assert (= (and b!5408836 c!943055) b!5408835))

(assert (= (and b!5408836 (not c!943055)) b!5408842))

(assert (=> b!5408836 m!6431942))

(declare-fun m!6432980 () Bool)

(assert (=> b!5408836 m!6432980))

(assert (=> b!5408836 m!6432980))

(declare-fun m!6432982 () Bool)

(assert (=> b!5408836 m!6432982))

(assert (=> b!5408835 m!6431942))

(declare-fun m!6432984 () Bool)

(assert (=> b!5408835 m!6432984))

(declare-fun m!6432986 () Bool)

(assert (=> d!1726812 m!6432986))

(assert (=> d!1726812 m!6431942))

(declare-fun m!6432988 () Bool)

(assert (=> d!1726812 m!6432988))

(declare-fun m!6432990 () Bool)

(assert (=> b!5408838 m!6432990))

(declare-fun m!6432992 () Bool)

(assert (=> b!5408843 m!6432992))

(declare-fun m!6432994 () Bool)

(assert (=> b!5408842 m!6432994))

(declare-fun m!6432996 () Bool)

(assert (=> b!5408840 m!6432996))

(assert (=> b!5408837 m!6431942))

(declare-fun m!6432998 () Bool)

(assert (=> b!5408837 m!6432998))

(assert (=> b!5407793 d!1726812))

(declare-fun bs!1249516 () Bool)

(declare-fun d!1726814 () Bool)

(assert (= bs!1249516 (and d!1726814 d!1726568)))

(declare-fun lambda!282133 () Int)

(assert (=> bs!1249516 (= lambda!282133 lambda!282072)))

(declare-fun bs!1249517 () Bool)

(assert (= bs!1249517 (and d!1726814 d!1726812)))

(assert (=> bs!1249517 (= lambda!282133 lambda!282130)))

(declare-fun bs!1249518 () Bool)

(assert (= bs!1249518 (and d!1726814 d!1726764)))

(assert (=> bs!1249518 (= lambda!282133 lambda!282119)))

(declare-fun bs!1249519 () Bool)

(assert (= bs!1249519 (and d!1726814 d!1726564)))

(assert (=> bs!1249519 (= lambda!282133 lambda!282069)))

(declare-fun bs!1249520 () Bool)

(assert (= bs!1249520 (and d!1726814 b!5407799)))

(assert (=> bs!1249520 (= lambda!282133 lambda!282039)))

(declare-fun bs!1249521 () Bool)

(assert (= bs!1249521 (and d!1726814 d!1726762)))

(assert (=> bs!1249521 (= lambda!282133 lambda!282116)))

(declare-fun lt!2204943 () List!61842)

(assert (=> d!1726814 (forall!14535 lt!2204943 lambda!282133)))

(declare-fun e!3353097 () List!61842)

(assert (=> d!1726814 (= lt!2204943 e!3353097)))

(declare-fun c!943061 () Bool)

(assert (=> d!1726814 (= c!943061 ((_ is Cons!61720) zl!343))))

(assert (=> d!1726814 (= (unfocusZipperList!623 zl!343) lt!2204943)))

(declare-fun b!5408848 () Bool)

(assert (=> b!5408848 (= e!3353097 (Cons!61718 (generalisedConcat!850 (exprs!5065 (h!68168 zl!343))) (unfocusZipperList!623 (t!375067 zl!343))))))

(declare-fun b!5408849 () Bool)

(assert (=> b!5408849 (= e!3353097 Nil!61718)))

(assert (= (and d!1726814 c!943061) b!5408848))

(assert (= (and d!1726814 (not c!943061)) b!5408849))

(declare-fun m!6433000 () Bool)

(assert (=> d!1726814 m!6433000))

(assert (=> b!5408848 m!6431834))

(declare-fun m!6433002 () Bool)

(assert (=> b!5408848 m!6433002))

(assert (=> b!5407793 d!1726814))

(declare-fun b!5408857 () Bool)

(declare-fun e!3353103 () Bool)

(declare-fun tp!1495320 () Bool)

(assert (=> b!5408857 (= e!3353103 tp!1495320)))

(declare-fun e!3353102 () Bool)

(declare-fun b!5408856 () Bool)

(declare-fun tp!1495321 () Bool)

(assert (=> b!5408856 (= e!3353102 (and (inv!81199 (h!68168 (t!375067 zl!343))) e!3353103 tp!1495321))))

(assert (=> b!5407761 (= tp!1495257 e!3353102)))

(assert (= b!5408856 b!5408857))

(assert (= (and b!5407761 ((_ is Cons!61720) (t!375067 zl!343))) b!5408856))

(declare-fun m!6433004 () Bool)

(assert (=> b!5408856 m!6433004))

(declare-fun e!3353106 () Bool)

(assert (=> b!5407796 (= tp!1495248 e!3353106)))

(declare-fun b!5408871 () Bool)

(declare-fun tp!1495334 () Bool)

(declare-fun tp!1495336 () Bool)

(assert (=> b!5408871 (= e!3353106 (and tp!1495334 tp!1495336))))

(declare-fun b!5408869 () Bool)

(declare-fun tp!1495335 () Bool)

(declare-fun tp!1495332 () Bool)

(assert (=> b!5408869 (= e!3353106 (and tp!1495335 tp!1495332))))

(declare-fun b!5408868 () Bool)

(assert (=> b!5408868 (= e!3353106 tp_is_empty!39615)))

(declare-fun b!5408870 () Bool)

(declare-fun tp!1495333 () Bool)

(assert (=> b!5408870 (= e!3353106 tp!1495333)))

(assert (= (and b!5407796 ((_ is ElementMatch!15181) (regOne!30874 r!7292))) b!5408868))

(assert (= (and b!5407796 ((_ is Concat!24026) (regOne!30874 r!7292))) b!5408869))

(assert (= (and b!5407796 ((_ is Star!15181) (regOne!30874 r!7292))) b!5408870))

(assert (= (and b!5407796 ((_ is Union!15181) (regOne!30874 r!7292))) b!5408871))

(declare-fun e!3353107 () Bool)

(assert (=> b!5407796 (= tp!1495255 e!3353107)))

(declare-fun b!5408875 () Bool)

(declare-fun tp!1495339 () Bool)

(declare-fun tp!1495341 () Bool)

(assert (=> b!5408875 (= e!3353107 (and tp!1495339 tp!1495341))))

(declare-fun b!5408873 () Bool)

(declare-fun tp!1495340 () Bool)

(declare-fun tp!1495337 () Bool)

(assert (=> b!5408873 (= e!3353107 (and tp!1495340 tp!1495337))))

(declare-fun b!5408872 () Bool)

(assert (=> b!5408872 (= e!3353107 tp_is_empty!39615)))

(declare-fun b!5408874 () Bool)

(declare-fun tp!1495338 () Bool)

(assert (=> b!5408874 (= e!3353107 tp!1495338)))

(assert (= (and b!5407796 ((_ is ElementMatch!15181) (regTwo!30874 r!7292))) b!5408872))

(assert (= (and b!5407796 ((_ is Concat!24026) (regTwo!30874 r!7292))) b!5408873))

(assert (= (and b!5407796 ((_ is Star!15181) (regTwo!30874 r!7292))) b!5408874))

(assert (= (and b!5407796 ((_ is Union!15181) (regTwo!30874 r!7292))) b!5408875))

(declare-fun e!3353108 () Bool)

(assert (=> b!5407779 (= tp!1495250 e!3353108)))

(declare-fun b!5408879 () Bool)

(declare-fun tp!1495344 () Bool)

(declare-fun tp!1495346 () Bool)

(assert (=> b!5408879 (= e!3353108 (and tp!1495344 tp!1495346))))

(declare-fun b!5408877 () Bool)

(declare-fun tp!1495345 () Bool)

(declare-fun tp!1495342 () Bool)

(assert (=> b!5408877 (= e!3353108 (and tp!1495345 tp!1495342))))

(declare-fun b!5408876 () Bool)

(assert (=> b!5408876 (= e!3353108 tp_is_empty!39615)))

(declare-fun b!5408878 () Bool)

(declare-fun tp!1495343 () Bool)

(assert (=> b!5408878 (= e!3353108 tp!1495343)))

(assert (= (and b!5407779 ((_ is ElementMatch!15181) (regOne!30875 r!7292))) b!5408876))

(assert (= (and b!5407779 ((_ is Concat!24026) (regOne!30875 r!7292))) b!5408877))

(assert (= (and b!5407779 ((_ is Star!15181) (regOne!30875 r!7292))) b!5408878))

(assert (= (and b!5407779 ((_ is Union!15181) (regOne!30875 r!7292))) b!5408879))

(declare-fun e!3353109 () Bool)

(assert (=> b!5407779 (= tp!1495249 e!3353109)))

(declare-fun b!5408883 () Bool)

(declare-fun tp!1495349 () Bool)

(declare-fun tp!1495351 () Bool)

(assert (=> b!5408883 (= e!3353109 (and tp!1495349 tp!1495351))))

(declare-fun b!5408881 () Bool)

(declare-fun tp!1495350 () Bool)

(declare-fun tp!1495347 () Bool)

(assert (=> b!5408881 (= e!3353109 (and tp!1495350 tp!1495347))))

(declare-fun b!5408880 () Bool)

(assert (=> b!5408880 (= e!3353109 tp_is_empty!39615)))

(declare-fun b!5408882 () Bool)

(declare-fun tp!1495348 () Bool)

(assert (=> b!5408882 (= e!3353109 tp!1495348)))

(assert (= (and b!5407779 ((_ is ElementMatch!15181) (regTwo!30875 r!7292))) b!5408880))

(assert (= (and b!5407779 ((_ is Concat!24026) (regTwo!30875 r!7292))) b!5408881))

(assert (= (and b!5407779 ((_ is Star!15181) (regTwo!30875 r!7292))) b!5408882))

(assert (= (and b!5407779 ((_ is Union!15181) (regTwo!30875 r!7292))) b!5408883))

(declare-fun b!5408888 () Bool)

(declare-fun e!3353112 () Bool)

(declare-fun tp!1495356 () Bool)

(declare-fun tp!1495357 () Bool)

(assert (=> b!5408888 (= e!3353112 (and tp!1495356 tp!1495357))))

(assert (=> b!5407794 (= tp!1495252 e!3353112)))

(assert (= (and b!5407794 ((_ is Cons!61718) (exprs!5065 (h!68168 zl!343)))) b!5408888))

(declare-fun e!3353113 () Bool)

(assert (=> b!5407788 (= tp!1495254 e!3353113)))

(declare-fun b!5408892 () Bool)

(declare-fun tp!1495360 () Bool)

(declare-fun tp!1495362 () Bool)

(assert (=> b!5408892 (= e!3353113 (and tp!1495360 tp!1495362))))

(declare-fun b!5408890 () Bool)

(declare-fun tp!1495361 () Bool)

(declare-fun tp!1495358 () Bool)

(assert (=> b!5408890 (= e!3353113 (and tp!1495361 tp!1495358))))

(declare-fun b!5408889 () Bool)

(assert (=> b!5408889 (= e!3353113 tp_is_empty!39615)))

(declare-fun b!5408891 () Bool)

(declare-fun tp!1495359 () Bool)

(assert (=> b!5408891 (= e!3353113 tp!1495359)))

(assert (= (and b!5407788 ((_ is ElementMatch!15181) (reg!15510 r!7292))) b!5408889))

(assert (= (and b!5407788 ((_ is Concat!24026) (reg!15510 r!7292))) b!5408890))

(assert (= (and b!5407788 ((_ is Star!15181) (reg!15510 r!7292))) b!5408891))

(assert (= (and b!5407788 ((_ is Union!15181) (reg!15510 r!7292))) b!5408892))

(declare-fun b!5408893 () Bool)

(declare-fun e!3353114 () Bool)

(declare-fun tp!1495363 () Bool)

(declare-fun tp!1495364 () Bool)

(assert (=> b!5408893 (= e!3353114 (and tp!1495363 tp!1495364))))

(assert (=> b!5407762 (= tp!1495256 e!3353114)))

(assert (= (and b!5407762 ((_ is Cons!61718) (exprs!5065 setElem!35213))) b!5408893))

(declare-fun b!5408898 () Bool)

(declare-fun e!3353117 () Bool)

(declare-fun tp!1495367 () Bool)

(assert (=> b!5408898 (= e!3353117 (and tp_is_empty!39615 tp!1495367))))

(assert (=> b!5407783 (= tp!1495251 e!3353117)))

(assert (= (and b!5407783 ((_ is Cons!61719) (t!375066 s!2326))) b!5408898))

(declare-fun condSetEmpty!35219 () Bool)

(assert (=> setNonEmpty!35213 (= condSetEmpty!35219 (= setRest!35213 ((as const (Array Context!9130 Bool)) false)))))

(declare-fun setRes!35219 () Bool)

(assert (=> setNonEmpty!35213 (= tp!1495253 setRes!35219)))

(declare-fun setIsEmpty!35219 () Bool)

(assert (=> setIsEmpty!35219 setRes!35219))

(declare-fun tp!1495372 () Bool)

(declare-fun setElem!35219 () Context!9130)

(declare-fun e!3353120 () Bool)

(declare-fun setNonEmpty!35219 () Bool)

(assert (=> setNonEmpty!35219 (= setRes!35219 (and tp!1495372 (inv!81199 setElem!35219) e!3353120))))

(declare-fun setRest!35219 () (InoxSet Context!9130))

(assert (=> setNonEmpty!35219 (= setRest!35213 ((_ map or) (store ((as const (Array Context!9130 Bool)) false) setElem!35219 true) setRest!35219))))

(declare-fun b!5408903 () Bool)

(declare-fun tp!1495373 () Bool)

(assert (=> b!5408903 (= e!3353120 tp!1495373)))

(assert (= (and setNonEmpty!35213 condSetEmpty!35219) setIsEmpty!35219))

(assert (= (and setNonEmpty!35213 (not condSetEmpty!35219)) setNonEmpty!35219))

(assert (= setNonEmpty!35219 b!5408903))

(declare-fun m!6433006 () Bool)

(assert (=> setNonEmpty!35219 m!6433006))

(declare-fun b_lambda!206659 () Bool)

(assert (= b_lambda!206633 (or b!5407763 b_lambda!206659)))

(declare-fun bs!1249522 () Bool)

(declare-fun d!1726816 () Bool)

(assert (= bs!1249522 (and d!1726816 b!5407763)))

(assert (=> bs!1249522 (= (dynLambda!24322 lambda!282037 lt!2204688) (derivationStepZipperUp!553 lt!2204688 (h!68167 s!2326)))))

(assert (=> bs!1249522 m!6431980))

(assert (=> d!1726580 d!1726816))

(declare-fun b_lambda!206661 () Bool)

(assert (= b_lambda!206655 (or b!5407799 b_lambda!206661)))

(declare-fun bs!1249523 () Bool)

(declare-fun d!1726818 () Bool)

(assert (= bs!1249523 (and d!1726818 b!5407799)))

(declare-fun lt!2204944 () Unit!154246)

(assert (=> bs!1249523 (= lt!2204944 (lemmaConcatPreservesForall!206 (exprs!5065 lt!2204688) lt!2204684 lambda!282039))))

(assert (=> bs!1249523 (= (dynLambda!24324 lambda!282038 lt!2204688) (Context!9131 (++!13535 (exprs!5065 lt!2204688) lt!2204684)))))

(declare-fun m!6433008 () Bool)

(assert (=> bs!1249523 m!6433008))

(declare-fun m!6433010 () Bool)

(assert (=> bs!1249523 m!6433010))

(assert (=> d!1726746 d!1726818))

(declare-fun b_lambda!206663 () Bool)

(assert (= b_lambda!206635 (or b!5407763 b_lambda!206663)))

(declare-fun bs!1249524 () Bool)

(declare-fun d!1726820 () Bool)

(assert (= bs!1249524 (and d!1726820 b!5407763)))

(assert (=> bs!1249524 (= (dynLambda!24322 lambda!282037 lt!2204709) (derivationStepZipperUp!553 lt!2204709 (h!68167 s!2326)))))

(assert (=> bs!1249524 m!6431978))

(assert (=> d!1726588 d!1726820))

(declare-fun b_lambda!206665 () Bool)

(assert (= b_lambda!206653 (or b!5407763 b_lambda!206665)))

(declare-fun bs!1249525 () Bool)

(declare-fun d!1726822 () Bool)

(assert (= bs!1249525 (and d!1726822 b!5407763)))

(assert (=> bs!1249525 (= (dynLambda!24322 lambda!282037 (h!68168 zl!343)) (derivationStepZipperUp!553 (h!68168 zl!343) (h!68167 s!2326)))))

(assert (=> bs!1249525 m!6431846))

(assert (=> d!1726716 d!1726822))

(declare-fun b_lambda!206667 () Bool)

(assert (= b_lambda!206657 (or b!5407763 b_lambda!206667)))

(declare-fun bs!1249526 () Bool)

(declare-fun d!1726824 () Bool)

(assert (= bs!1249526 (and d!1726824 b!5407763)))

(assert (=> bs!1249526 (= (dynLambda!24322 lambda!282037 lt!2204691) (derivationStepZipperUp!553 lt!2204691 (h!68167 s!2326)))))

(assert (=> bs!1249526 m!6431996))

(assert (=> d!1726804 d!1726824))

(check-sat (not b!5408632) (not b!5408749) (not b!5408270) (not b!5408813) (not b!5408738) (not d!1726692) (not b!5408079) (not b!5408631) (not d!1726796) (not d!1726770) (not b!5408725) (not b!5408747) (not b!5408758) (not d!1726748) (not b!5408811) (not d!1726728) (not d!1726590) (not d!1726746) (not b!5408843) (not b!5408795) (not d!1726742) (not b!5408812) (not d!1726772) (not b!5408805) (not b!5408794) (not d!1726806) (not b!5408666) (not b!5408714) (not b!5408153) (not b!5408796) (not b!5408786) (not d!1726716) (not b!5408774) (not b!5408734) (not b!5408883) (not b!5408759) (not b!5408101) (not b!5408780) (not bm!387128) (not b!5408764) (not b!5408569) (not d!1726734) (not b!5408571) (not bm!387127) (not b!5408609) (not d!1726736) (not b!5408840) (not bm!387118) (not b!5408735) (not b!5408801) (not b!5408903) (not b!5408683) (not b!5408701) (not b_lambda!206667) (not d!1726630) (not d!1726764) (not b!5408568) (not b!5408893) (not b!5408785) (not bm!387117) (not bm!387126) (not bm!387125) (not b!5408570) (not b!5408269) (not b!5408271) (not b!5408881) (not b!5408688) (not bm!387113) (not b!5408882) (not b!5408081) (not b!5408096) (not b!5408098) (not b!5408773) (not d!1726726) (not b!5408470) (not b!5408870) (not bm!387092) (not b!5408835) (not b!5408656) (not b!5408875) (not b!5408878) (not b!5408879) (not bm!387116) (not b!5408384) (not b!5408836) (not bm!387119) (not b!5408672) (not b!5408613) (not b!5408716) (not b!5408891) (not d!1726550) (not bm!387130) (not b!5408080) (not b!5408871) (not d!1726564) tp_is_empty!39615 (not d!1726804) (not b!5408739) (not d!1726794) (not d!1726554) (not bm!387084) (not d!1726762) (not bm!387111) (not d!1726646) (not b!5408898) (not b!5408856) (not d!1726586) (not bs!1249523) (not d!1726560) (not bm!387115) (not d!1726596) (not bs!1249524) (not b!5408787) (not b_lambda!206661) (not b!5408869) (not b!5408471) (not b!5408273) (not b!5408888) (not b!5408619) (not b!5408601) (not d!1726744) (not bm!387129) (not d!1726580) (not d!1726756) (not d!1726776) (not b!5408654) (not b!5408618) (not d!1726568) (not d!1726768) (not b!5408194) (not b!5408694) (not b!5408726) (not bm!387120) (not b!5408746) (not b!5408567) (not b!5408099) (not b!5408682) (not d!1726800) (not b!5408877) (not b!5408802) (not b!5408158) (not b!5408838) (not bm!387123) (not d!1726760) (not b!5408775) (not d!1726810) (not b_lambda!206665) (not setNonEmpty!35219) (not bm!387131) (not d!1726752) (not d!1726710) (not d!1726808) (not d!1726788) (not b!5408078) (not b!5408154) (not d!1726782) (not d!1726704) (not d!1726720) (not b!5408772) (not b!5408209) (not b!5408274) (not b!5408155) (not b_lambda!206663) (not bm!387083) (not b!5408658) (not bm!387046) (not bm!387045) (not b!5408268) (not bm!387133) (not b!5408848) (not d!1726558) (not b!5408152) (not d!1726766) (not d!1726814) (not bm!387093) (not b!5408097) (not d!1726798) (not d!1726750) (not b!5408679) (not bm!387132) (not b!5408857) (not b_lambda!206659) (not b!5408804) (not b!5408095) (not b!5408797) (not b!5408842) (not b!5408723) (not bm!387114) (not b!5408210) (not b!5408748) (not b!5408195) (not d!1726774) (not b!5408713) (not d!1726792) (not b!5408608) (not b!5408798) (not bm!387096) (not b!5408660) (not b!5408892) (not b!5408151) (not bs!1249522) (not d!1726784) (not d!1726812) (not b!5408874) (not d!1726778) (not d!1726780) (not bs!1249525) (not b!5408100) (not d!1726612) (not b!5408700) (not b!5408837) (not d!1726758) (not b!5408727) (not d!1726562) (not b!5408724) (not b!5408657) (not d!1726614) (not d!1726548) (not d!1726790) (not b!5408783) (not b!5408560) (not d!1726708) (not bs!1249526) (not d!1726588) (not d!1726598) (not b!5408680) (not b!5408873) (not b!5408681) (not d!1726616) (not b!5408810) (not d!1726732) (not b!5408667) (not b!5408750) (not b!5408771) (not b!5408782) (not b!5408781) (not d!1726754) (not b!5408614) (not b!5408160) (not b!5408659) (not b!5408890) (not d!1726722))
(check-sat)
