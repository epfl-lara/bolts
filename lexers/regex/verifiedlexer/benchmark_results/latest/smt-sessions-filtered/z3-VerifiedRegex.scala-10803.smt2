; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554698 () Bool)

(assert start!554698)

(declare-fun b!5249022 () Bool)

(assert (=> b!5249022 true))

(assert (=> b!5249022 true))

(declare-fun lambda!264255 () Int)

(declare-fun lambda!264254 () Int)

(assert (=> b!5249022 (not (= lambda!264255 lambda!264254))))

(assert (=> b!5249022 true))

(assert (=> b!5249022 true))

(declare-fun b!5249028 () Bool)

(assert (=> b!5249028 true))

(declare-fun b!5248998 () Bool)

(declare-fun e!3265668 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29976 0))(
  ( (C!29977 (val!24690 Int)) )
))
(declare-datatypes ((Regex!14853 0))(
  ( (ElementMatch!14853 (c!907897 C!29976)) (Concat!23698 (regOne!30218 Regex!14853) (regTwo!30218 Regex!14853)) (EmptyExpr!14853) (Star!14853 (reg!15182 Regex!14853)) (EmptyLang!14853) (Union!14853 (regOne!30219 Regex!14853) (regTwo!30219 Regex!14853)) )
))
(declare-datatypes ((List!60858 0))(
  ( (Nil!60734) (Cons!60734 (h!67182 Regex!14853) (t!374041 List!60858)) )
))
(declare-datatypes ((Context!8474 0))(
  ( (Context!8475 (exprs!4737 List!60858)) )
))
(declare-fun lt!2150774 () (InoxSet Context!8474))

(declare-datatypes ((List!60859 0))(
  ( (Nil!60735) (Cons!60735 (h!67183 C!29976) (t!374042 List!60859)) )
))
(declare-fun s!2326 () List!60859)

(declare-fun matchZipper!1097 ((InoxSet Context!8474) List!60859) Bool)

(assert (=> b!5248998 (= e!3265668 (not (matchZipper!1097 lt!2150774 (t!374042 s!2326))))))

(declare-fun b!5248999 () Bool)

(declare-fun res!2227438 () Bool)

(declare-fun e!3265679 () Bool)

(assert (=> b!5248999 (=> (not res!2227438) (not e!3265679))))

(declare-fun z!1189 () (InoxSet Context!8474))

(declare-datatypes ((List!60860 0))(
  ( (Nil!60736) (Cons!60736 (h!67184 Context!8474) (t!374043 List!60860)) )
))
(declare-fun zl!343 () List!60860)

(declare-fun toList!8637 ((InoxSet Context!8474)) List!60860)

(assert (=> b!5248999 (= res!2227438 (= (toList!8637 z!1189) zl!343))))

(declare-fun b!5249000 () Bool)

(declare-fun e!3265681 () Bool)

(declare-fun e!3265675 () Bool)

(assert (=> b!5249000 (= e!3265681 e!3265675)))

(declare-fun res!2227440 () Bool)

(assert (=> b!5249000 (=> res!2227440 e!3265675)))

(declare-fun lt!2150769 () (InoxSet Context!8474))

(declare-fun lt!2150785 () (InoxSet Context!8474))

(assert (=> b!5249000 (= res!2227440 (not (= lt!2150769 lt!2150785)))))

(declare-fun lt!2150796 () (InoxSet Context!8474))

(assert (=> b!5249000 (= lt!2150785 ((_ map or) lt!2150796 lt!2150774))))

(declare-fun r!7292 () Regex!14853)

(declare-fun lt!2150781 () Context!8474)

(declare-fun derivationStepZipperDown!301 (Regex!14853 Context!8474 C!29976) (InoxSet Context!8474))

(assert (=> b!5249000 (= lt!2150774 (derivationStepZipperDown!301 (regTwo!30219 (regOne!30218 r!7292)) lt!2150781 (h!67183 s!2326)))))

(assert (=> b!5249000 (= lt!2150796 (derivationStepZipperDown!301 (regOne!30219 (regOne!30218 r!7292)) lt!2150781 (h!67183 s!2326)))))

(declare-fun b!5249001 () Bool)

(declare-fun e!3265686 () Bool)

(declare-fun tp_is_empty!38959 () Bool)

(declare-fun tp!1468814 () Bool)

(assert (=> b!5249001 (= e!3265686 (and tp_is_empty!38959 tp!1468814))))

(declare-fun b!5249002 () Bool)

(declare-fun e!3265673 () Bool)

(declare-fun e!3265671 () Bool)

(assert (=> b!5249002 (= e!3265673 e!3265671)))

(declare-fun res!2227437 () Bool)

(assert (=> b!5249002 (=> res!2227437 e!3265671)))

(declare-fun lt!2150767 () Bool)

(declare-fun e!3265666 () Bool)

(assert (=> b!5249002 (= res!2227437 (not (= lt!2150767 e!3265666)))))

(declare-fun res!2227442 () Bool)

(assert (=> b!5249002 (=> res!2227442 e!3265666)))

(declare-fun lt!2150776 () Bool)

(assert (=> b!5249002 (= res!2227442 lt!2150776)))

(assert (=> b!5249002 (= lt!2150767 (matchZipper!1097 z!1189 s!2326))))

(declare-fun lt!2150783 () (InoxSet Context!8474))

(assert (=> b!5249002 (= lt!2150776 (matchZipper!1097 lt!2150783 s!2326))))

(declare-datatypes ((Unit!152838 0))(
  ( (Unit!152839) )
))
(declare-fun lt!2150768 () Unit!152838)

(declare-fun e!3265670 () Unit!152838)

(assert (=> b!5249002 (= lt!2150768 e!3265670)))

(declare-fun c!907896 () Bool)

(declare-fun nullable!5022 (Regex!14853) Bool)

(assert (=> b!5249002 (= c!907896 (nullable!5022 (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun lambda!264256 () Int)

(declare-fun lt!2150806 () (InoxSet Context!8474))

(declare-fun lt!2150798 () Context!8474)

(declare-fun flatMap!580 ((InoxSet Context!8474) Int) (InoxSet Context!8474))

(declare-fun derivationStepZipperUp!225 (Context!8474 C!29976) (InoxSet Context!8474))

(assert (=> b!5249002 (= (flatMap!580 lt!2150806 lambda!264256) (derivationStepZipperUp!225 lt!2150798 (h!67183 s!2326)))))

(declare-fun lt!2150807 () Unit!152838)

(declare-fun lemmaFlatMapOnSingletonSet!112 ((InoxSet Context!8474) Context!8474 Int) Unit!152838)

(assert (=> b!5249002 (= lt!2150807 (lemmaFlatMapOnSingletonSet!112 lt!2150806 lt!2150798 lambda!264256))))

(declare-fun lt!2150811 () (InoxSet Context!8474))

(assert (=> b!5249002 (= lt!2150811 (derivationStepZipperUp!225 lt!2150798 (h!67183 s!2326)))))

(declare-fun lt!2150771 () Unit!152838)

(declare-fun e!3265685 () Unit!152838)

(assert (=> b!5249002 (= lt!2150771 e!3265685)))

(declare-fun c!907894 () Bool)

(assert (=> b!5249002 (= c!907894 (nullable!5022 (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun lt!2150808 () Context!8474)

(assert (=> b!5249002 (= (flatMap!580 lt!2150783 lambda!264256) (derivationStepZipperUp!225 lt!2150808 (h!67183 s!2326)))))

(declare-fun lt!2150784 () Unit!152838)

(assert (=> b!5249002 (= lt!2150784 (lemmaFlatMapOnSingletonSet!112 lt!2150783 lt!2150808 lambda!264256))))

(declare-fun lt!2150800 () (InoxSet Context!8474))

(assert (=> b!5249002 (= lt!2150800 (derivationStepZipperUp!225 lt!2150808 (h!67183 s!2326)))))

(assert (=> b!5249002 (= lt!2150806 (store ((as const (Array Context!8474 Bool)) false) lt!2150798 true))))

(declare-fun lt!2150809 () List!60858)

(assert (=> b!5249002 (= lt!2150798 (Context!8475 lt!2150809))))

(assert (=> b!5249002 (= lt!2150809 (Cons!60734 (regTwo!30219 (regOne!30218 r!7292)) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> b!5249002 (= lt!2150783 (store ((as const (Array Context!8474 Bool)) false) lt!2150808 true))))

(declare-fun lt!2150810 () List!60858)

(assert (=> b!5249002 (= lt!2150808 (Context!8475 lt!2150810))))

(assert (=> b!5249002 (= lt!2150810 (Cons!60734 (regOne!30219 (regOne!30218 r!7292)) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249003 () Bool)

(declare-fun Unit!152840 () Unit!152838)

(assert (=> b!5249003 (= e!3265685 Unit!152840)))

(declare-fun lt!2150788 () (InoxSet Context!8474))

(declare-fun lt!2150779 () Unit!152838)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!90 ((InoxSet Context!8474) (InoxSet Context!8474) List!60859) Unit!152838)

(assert (=> b!5249003 (= lt!2150779 (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150796 lt!2150788 (t!374042 s!2326)))))

(declare-fun res!2227447 () Bool)

(declare-fun lt!2150805 () Bool)

(assert (=> b!5249003 (= res!2227447 lt!2150805)))

(declare-fun e!3265667 () Bool)

(assert (=> b!5249003 (=> res!2227447 e!3265667)))

(assert (=> b!5249003 (= (matchZipper!1097 ((_ map or) lt!2150796 lt!2150788) (t!374042 s!2326)) e!3265667)))

(declare-fun b!5249004 () Bool)

(declare-fun Unit!152841 () Unit!152838)

(assert (=> b!5249004 (= e!3265670 Unit!152841)))

(declare-fun lt!2150801 () Unit!152838)

(assert (=> b!5249004 (= lt!2150801 (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150774 lt!2150788 (t!374042 s!2326)))))

(declare-fun res!2227441 () Bool)

(assert (=> b!5249004 (= res!2227441 (matchZipper!1097 lt!2150774 (t!374042 s!2326)))))

(declare-fun e!3265687 () Bool)

(assert (=> b!5249004 (=> res!2227441 e!3265687)))

(assert (=> b!5249004 (= (matchZipper!1097 ((_ map or) lt!2150774 lt!2150788) (t!374042 s!2326)) e!3265687)))

(declare-fun b!5249005 () Bool)

(declare-fun e!3265678 () Bool)

(declare-fun e!3265672 () Bool)

(assert (=> b!5249005 (= e!3265678 e!3265672)))

(declare-fun res!2227448 () Bool)

(assert (=> b!5249005 (=> res!2227448 e!3265672)))

(declare-fun lt!2150778 () Bool)

(declare-fun lt!2150766 () Bool)

(assert (=> b!5249005 (= res!2227448 (or (and (not (= lt!2150767 lt!2150766)) (not lt!2150778)) (not (= r!7292 (Concat!23698 (Union!14853 (regOne!30219 (regOne!30218 r!7292)) (regTwo!30219 (regOne!30218 r!7292))) (regTwo!30218 r!7292))))))))

(declare-fun lt!2150804 () Regex!14853)

(declare-fun matchRSpec!1956 (Regex!14853 List!60859) Bool)

(assert (=> b!5249005 (= lt!2150778 (matchRSpec!1956 lt!2150804 s!2326))))

(declare-fun lt!2150780 () Unit!152838)

(declare-fun mainMatchTheorem!1956 (Regex!14853 List!60859) Unit!152838)

(assert (=> b!5249005 (= lt!2150780 (mainMatchTheorem!1956 lt!2150804 s!2326))))

(declare-fun lt!2150787 () Regex!14853)

(assert (=> b!5249005 (= lt!2150766 (matchRSpec!1956 lt!2150787 s!2326))))

(declare-fun lt!2150775 () Unit!152838)

(assert (=> b!5249005 (= lt!2150775 (mainMatchTheorem!1956 lt!2150787 s!2326))))

(assert (=> b!5249005 (= lt!2150778 (matchZipper!1097 lt!2150806 s!2326))))

(declare-fun matchR!7038 (Regex!14853 List!60859) Bool)

(assert (=> b!5249005 (= lt!2150778 (matchR!7038 lt!2150804 s!2326))))

(declare-fun lt!2150772 () List!60860)

(declare-fun lt!2150786 () Unit!152838)

(declare-fun theoremZipperRegexEquiv!287 ((InoxSet Context!8474) List!60860 Regex!14853 List!60859) Unit!152838)

(assert (=> b!5249005 (= lt!2150786 (theoremZipperRegexEquiv!287 lt!2150806 lt!2150772 lt!2150804 s!2326))))

(declare-fun generalisedConcat!522 (List!60858) Regex!14853)

(assert (=> b!5249005 (= lt!2150804 (generalisedConcat!522 lt!2150809))))

(assert (=> b!5249005 (= lt!2150766 lt!2150776)))

(assert (=> b!5249005 (= lt!2150766 (matchR!7038 lt!2150787 s!2326))))

(declare-fun lt!2150782 () Unit!152838)

(declare-fun lt!2150791 () List!60860)

(assert (=> b!5249005 (= lt!2150782 (theoremZipperRegexEquiv!287 lt!2150783 lt!2150791 lt!2150787 s!2326))))

(assert (=> b!5249005 (= lt!2150787 (generalisedConcat!522 lt!2150810))))

(declare-fun b!5249007 () Bool)

(declare-fun res!2227431 () Bool)

(declare-fun e!3265680 () Bool)

(assert (=> b!5249007 (=> res!2227431 e!3265680)))

(get-info :version)

(assert (=> b!5249007 (= res!2227431 (or ((_ is EmptyExpr!14853) r!7292) ((_ is EmptyLang!14853) r!7292) ((_ is ElementMatch!14853) r!7292) ((_ is Union!14853) r!7292) (not ((_ is Concat!23698) r!7292))))))

(declare-fun b!5249008 () Bool)

(declare-fun e!3265663 () Bool)

(declare-fun tp!1468810 () Bool)

(declare-fun tp!1468816 () Bool)

(assert (=> b!5249008 (= e!3265663 (and tp!1468810 tp!1468816))))

(declare-fun b!5249009 () Bool)

(assert (=> b!5249009 (= e!3265666 (matchZipper!1097 lt!2150806 s!2326))))

(declare-fun b!5249010 () Bool)

(declare-fun e!3265669 () Bool)

(assert (=> b!5249010 (= e!3265669 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(declare-fun setIsEmpty!33503 () Bool)

(declare-fun setRes!33503 () Bool)

(assert (=> setIsEmpty!33503 setRes!33503))

(declare-fun b!5249011 () Bool)

(declare-fun Unit!152842 () Unit!152838)

(assert (=> b!5249011 (= e!3265670 Unit!152842)))

(declare-fun b!5249012 () Bool)

(declare-fun e!3265665 () Bool)

(assert (=> b!5249012 (= e!3265665 (not e!3265680))))

(declare-fun res!2227433 () Bool)

(assert (=> b!5249012 (=> res!2227433 e!3265680)))

(assert (=> b!5249012 (= res!2227433 (not ((_ is Cons!60736) zl!343)))))

(declare-fun lt!2150803 () Bool)

(assert (=> b!5249012 (= lt!2150803 (matchRSpec!1956 r!7292 s!2326))))

(assert (=> b!5249012 (= lt!2150803 (matchR!7038 r!7292 s!2326))))

(declare-fun lt!2150792 () Unit!152838)

(assert (=> b!5249012 (= lt!2150792 (mainMatchTheorem!1956 r!7292 s!2326))))

(declare-fun b!5249013 () Bool)

(declare-fun e!3265676 () Bool)

(declare-fun lambda!264257 () Int)

(declare-fun forall!14277 (List!60858 Int) Bool)

(assert (=> b!5249013 (= e!3265676 (forall!14277 (t!374041 (exprs!4737 (h!67184 zl!343))) lambda!264257))))

(declare-fun setNonEmpty!33503 () Bool)

(declare-fun setElem!33503 () Context!8474)

(declare-fun e!3265664 () Bool)

(declare-fun tp!1468812 () Bool)

(declare-fun inv!80379 (Context!8474) Bool)

(assert (=> setNonEmpty!33503 (= setRes!33503 (and tp!1468812 (inv!80379 setElem!33503) e!3265664))))

(declare-fun setRest!33503 () (InoxSet Context!8474))

(assert (=> setNonEmpty!33503 (= z!1189 ((_ map or) (store ((as const (Array Context!8474 Bool)) false) setElem!33503 true) setRest!33503))))

(declare-fun b!5249014 () Bool)

(assert (=> b!5249014 (= e!3265667 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(declare-fun b!5249015 () Bool)

(declare-fun tp!1468808 () Bool)

(assert (=> b!5249015 (= e!3265664 tp!1468808)))

(declare-fun b!5249016 () Bool)

(declare-fun e!3265684 () Bool)

(declare-fun tp!1468815 () Bool)

(assert (=> b!5249016 (= e!3265684 tp!1468815)))

(declare-fun b!5249017 () Bool)

(declare-fun e!3265688 () Bool)

(assert (=> b!5249017 (= e!3265671 e!3265688)))

(declare-fun res!2227445 () Bool)

(assert (=> b!5249017 (=> res!2227445 e!3265688)))

(declare-fun lt!2150797 () Int)

(declare-fun lt!2150794 () Int)

(assert (=> b!5249017 (= res!2227445 (>= lt!2150797 lt!2150794))))

(declare-fun zipperDepthTotal!34 (List!60860) Int)

(assert (=> b!5249017 (= lt!2150794 (zipperDepthTotal!34 zl!343))))

(assert (=> b!5249017 (= lt!2150797 (zipperDepthTotal!34 lt!2150791))))

(assert (=> b!5249017 (= lt!2150791 (Cons!60736 lt!2150808 Nil!60736))))

(declare-fun b!5249018 () Bool)

(declare-fun tp!1468811 () Bool)

(assert (=> b!5249018 (= e!3265663 tp!1468811)))

(declare-fun b!5249019 () Bool)

(declare-fun e!3265683 () Unit!152838)

(declare-fun Unit!152843 () Unit!152838)

(assert (=> b!5249019 (= e!3265683 Unit!152843)))

(declare-fun lt!2150795 () Unit!152838)

(assert (=> b!5249019 (= lt!2150795 (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150769 lt!2150788 (t!374042 s!2326)))))

(declare-fun res!2227453 () Bool)

(assert (=> b!5249019 (= res!2227453 (matchZipper!1097 lt!2150769 (t!374042 s!2326)))))

(assert (=> b!5249019 (=> res!2227453 e!3265669)))

(assert (=> b!5249019 (= (matchZipper!1097 ((_ map or) lt!2150769 lt!2150788) (t!374042 s!2326)) e!3265669)))

(declare-fun b!5249020 () Bool)

(declare-fun Unit!152844 () Unit!152838)

(assert (=> b!5249020 (= e!3265685 Unit!152844)))

(declare-fun b!5249021 () Bool)

(declare-fun e!3265677 () Bool)

(assert (=> b!5249021 (= e!3265677 (matchZipper!1097 lt!2150774 (t!374042 s!2326)))))

(declare-fun e!3265682 () Bool)

(assert (=> b!5249022 (= e!3265680 e!3265682)))

(declare-fun res!2227443 () Bool)

(assert (=> b!5249022 (=> res!2227443 e!3265682)))

(declare-fun lt!2150793 () Bool)

(assert (=> b!5249022 (= res!2227443 (or (not (= lt!2150803 lt!2150793)) ((_ is Nil!60735) s!2326)))))

(declare-fun Exists!2034 (Int) Bool)

(assert (=> b!5249022 (= (Exists!2034 lambda!264254) (Exists!2034 lambda!264255))))

(declare-fun lt!2150799 () Unit!152838)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!688 (Regex!14853 Regex!14853 List!60859) Unit!152838)

(assert (=> b!5249022 (= lt!2150799 (lemmaExistCutMatchRandMatchRSpecEquivalent!688 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326))))

(assert (=> b!5249022 (= lt!2150793 (Exists!2034 lambda!264254))))

(declare-datatypes ((tuple2!64104 0))(
  ( (tuple2!64105 (_1!35355 List!60859) (_2!35355 List!60859)) )
))
(declare-datatypes ((Option!14964 0))(
  ( (None!14963) (Some!14963 (v!50992 tuple2!64104)) )
))
(declare-fun isDefined!11667 (Option!14964) Bool)

(declare-fun findConcatSeparation!1378 (Regex!14853 Regex!14853 List!60859 List!60859 List!60859) Option!14964)

(assert (=> b!5249022 (= lt!2150793 (isDefined!11667 (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) Nil!60735 s!2326 s!2326)))))

(declare-fun lt!2150790 () Unit!152838)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1142 (Regex!14853 Regex!14853 List!60859) Unit!152838)

(assert (=> b!5249022 (= lt!2150790 (lemmaFindConcatSeparationEquivalentToExists!1142 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326))))

(declare-fun b!5249023 () Bool)

(declare-fun tp!1468817 () Bool)

(declare-fun tp!1468809 () Bool)

(assert (=> b!5249023 (= e!3265663 (and tp!1468817 tp!1468809))))

(declare-fun b!5249024 () Bool)

(declare-fun e!3265674 () Bool)

(declare-fun tp!1468813 () Bool)

(assert (=> b!5249024 (= e!3265674 (and (inv!80379 (h!67184 zl!343)) e!3265684 tp!1468813))))

(declare-fun b!5249025 () Bool)

(assert (=> b!5249025 (= e!3265672 e!3265676)))

(declare-fun res!2227444 () Bool)

(assert (=> b!5249025 (=> res!2227444 e!3265676)))

(declare-fun lt!2150773 () Regex!14853)

(assert (=> b!5249025 (= res!2227444 (or (not (= lt!2150787 (Concat!23698 (regOne!30219 (regOne!30218 r!7292)) lt!2150773))) (not (= lt!2150804 (Concat!23698 (regTwo!30219 (regOne!30218 r!7292)) lt!2150773)))))))

(assert (=> b!5249025 (= lt!2150773 (generalisedConcat!522 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249026 () Bool)

(assert (=> b!5249026 (= e!3265688 e!3265678)))

(declare-fun res!2227428 () Bool)

(assert (=> b!5249026 (=> res!2227428 e!3265678)))

(assert (=> b!5249026 (= res!2227428 (>= (zipperDepthTotal!34 lt!2150772) lt!2150794))))

(assert (=> b!5249026 (= lt!2150772 (Cons!60736 lt!2150798 Nil!60736))))

(declare-fun b!5249027 () Bool)

(declare-fun res!2227439 () Bool)

(assert (=> b!5249027 (=> res!2227439 e!3265682)))

(declare-fun isEmpty!32675 (List!60858) Bool)

(assert (=> b!5249027 (= res!2227439 (isEmpty!32675 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249006 () Bool)

(declare-fun Unit!152845 () Unit!152838)

(assert (=> b!5249006 (= e!3265683 Unit!152845)))

(declare-fun res!2227435 () Bool)

(assert (=> start!554698 (=> (not res!2227435) (not e!3265679))))

(declare-fun validRegex!6589 (Regex!14853) Bool)

(assert (=> start!554698 (= res!2227435 (validRegex!6589 r!7292))))

(assert (=> start!554698 e!3265679))

(assert (=> start!554698 e!3265663))

(declare-fun condSetEmpty!33503 () Bool)

(assert (=> start!554698 (= condSetEmpty!33503 (= z!1189 ((as const (Array Context!8474 Bool)) false)))))

(assert (=> start!554698 setRes!33503))

(assert (=> start!554698 e!3265674))

(assert (=> start!554698 e!3265686))

(assert (=> b!5249028 (= e!3265682 e!3265681)))

(declare-fun res!2227449 () Bool)

(assert (=> b!5249028 (=> res!2227449 e!3265681)))

(assert (=> b!5249028 (= res!2227449 (or (and ((_ is ElementMatch!14853) (regOne!30218 r!7292)) (= (c!907897 (regOne!30218 r!7292)) (h!67183 s!2326))) (not ((_ is Union!14853) (regOne!30218 r!7292)))))))

(declare-fun lt!2150789 () Unit!152838)

(assert (=> b!5249028 (= lt!2150789 e!3265683)))

(declare-fun c!907895 () Bool)

(assert (=> b!5249028 (= c!907895 (nullable!5022 (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> b!5249028 (= (flatMap!580 z!1189 lambda!264256) (derivationStepZipperUp!225 (h!67184 zl!343) (h!67183 s!2326)))))

(declare-fun lt!2150777 () Unit!152838)

(assert (=> b!5249028 (= lt!2150777 (lemmaFlatMapOnSingletonSet!112 z!1189 (h!67184 zl!343) lambda!264256))))

(assert (=> b!5249028 (= lt!2150788 (derivationStepZipperUp!225 lt!2150781 (h!67183 s!2326)))))

(assert (=> b!5249028 (= lt!2150769 (derivationStepZipperDown!301 (h!67182 (exprs!4737 (h!67184 zl!343))) lt!2150781 (h!67183 s!2326)))))

(assert (=> b!5249028 (= lt!2150781 (Context!8475 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun lt!2150770 () (InoxSet Context!8474))

(assert (=> b!5249028 (= lt!2150770 (derivationStepZipperUp!225 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343))))) (h!67183 s!2326)))))

(declare-fun b!5249029 () Bool)

(declare-fun res!2227436 () Bool)

(assert (=> b!5249029 (=> res!2227436 e!3265680)))

(assert (=> b!5249029 (= res!2227436 (not (= r!7292 (generalisedConcat!522 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249030 () Bool)

(declare-fun res!2227452 () Bool)

(assert (=> b!5249030 (=> res!2227452 e!3265671)))

(declare-fun lt!2150802 () Regex!14853)

(assert (=> b!5249030 (= res!2227452 (or (not (= lt!2150802 r!7292)) (not (= (exprs!4737 (h!67184 zl!343)) (Cons!60734 (regOne!30218 r!7292) (t!374041 (exprs!4737 (h!67184 zl!343))))))))))

(declare-fun b!5249031 () Bool)

(assert (=> b!5249031 (= e!3265663 tp_is_empty!38959)))

(declare-fun b!5249032 () Bool)

(declare-fun res!2227432 () Bool)

(assert (=> b!5249032 (=> res!2227432 e!3265680)))

(declare-fun generalisedUnion!782 (List!60858) Regex!14853)

(declare-fun unfocusZipperList!295 (List!60860) List!60858)

(assert (=> b!5249032 (= res!2227432 (not (= r!7292 (generalisedUnion!782 (unfocusZipperList!295 zl!343)))))))

(declare-fun b!5249033 () Bool)

(declare-fun res!2227434 () Bool)

(assert (=> b!5249033 (=> res!2227434 e!3265680)))

(declare-fun isEmpty!32676 (List!60860) Bool)

(assert (=> b!5249033 (= res!2227434 (not (isEmpty!32676 (t!374043 zl!343))))))

(declare-fun b!5249034 () Bool)

(assert (=> b!5249034 (= e!3265675 e!3265673)))

(declare-fun res!2227451 () Bool)

(assert (=> b!5249034 (=> res!2227451 e!3265673)))

(assert (=> b!5249034 (= res!2227451 e!3265668)))

(declare-fun res!2227429 () Bool)

(assert (=> b!5249034 (=> (not res!2227429) (not e!3265668))))

(assert (=> b!5249034 (= res!2227429 (not (= (matchZipper!1097 lt!2150769 (t!374042 s!2326)) lt!2150805)))))

(assert (=> b!5249034 (= (matchZipper!1097 lt!2150785 (t!374042 s!2326)) e!3265677)))

(declare-fun res!2227450 () Bool)

(assert (=> b!5249034 (=> res!2227450 e!3265677)))

(assert (=> b!5249034 (= res!2227450 lt!2150805)))

(assert (=> b!5249034 (= lt!2150805 (matchZipper!1097 lt!2150796 (t!374042 s!2326)))))

(declare-fun lt!2150812 () Unit!152838)

(assert (=> b!5249034 (= lt!2150812 (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150796 lt!2150774 (t!374042 s!2326)))))

(declare-fun b!5249035 () Bool)

(declare-fun res!2227430 () Bool)

(assert (=> b!5249035 (=> res!2227430 e!3265680)))

(assert (=> b!5249035 (= res!2227430 (not ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249036 () Bool)

(assert (=> b!5249036 (= e!3265687 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(declare-fun b!5249037 () Bool)

(assert (=> b!5249037 (= e!3265679 e!3265665)))

(declare-fun res!2227446 () Bool)

(assert (=> b!5249037 (=> (not res!2227446) (not e!3265665))))

(assert (=> b!5249037 (= res!2227446 (= r!7292 lt!2150802))))

(declare-fun unfocusZipper!595 (List!60860) Regex!14853)

(assert (=> b!5249037 (= lt!2150802 (unfocusZipper!595 zl!343))))

(assert (= (and start!554698 res!2227435) b!5248999))

(assert (= (and b!5248999 res!2227438) b!5249037))

(assert (= (and b!5249037 res!2227446) b!5249012))

(assert (= (and b!5249012 (not res!2227433)) b!5249033))

(assert (= (and b!5249033 (not res!2227434)) b!5249029))

(assert (= (and b!5249029 (not res!2227436)) b!5249035))

(assert (= (and b!5249035 (not res!2227430)) b!5249032))

(assert (= (and b!5249032 (not res!2227432)) b!5249007))

(assert (= (and b!5249007 (not res!2227431)) b!5249022))

(assert (= (and b!5249022 (not res!2227443)) b!5249027))

(assert (= (and b!5249027 (not res!2227439)) b!5249028))

(assert (= (and b!5249028 c!907895) b!5249019))

(assert (= (and b!5249028 (not c!907895)) b!5249006))

(assert (= (and b!5249019 (not res!2227453)) b!5249010))

(assert (= (and b!5249028 (not res!2227449)) b!5249000))

(assert (= (and b!5249000 (not res!2227440)) b!5249034))

(assert (= (and b!5249034 (not res!2227450)) b!5249021))

(assert (= (and b!5249034 res!2227429) b!5248998))

(assert (= (and b!5249034 (not res!2227451)) b!5249002))

(assert (= (and b!5249002 c!907894) b!5249003))

(assert (= (and b!5249002 (not c!907894)) b!5249020))

(assert (= (and b!5249003 (not res!2227447)) b!5249014))

(assert (= (and b!5249002 c!907896) b!5249004))

(assert (= (and b!5249002 (not c!907896)) b!5249011))

(assert (= (and b!5249004 (not res!2227441)) b!5249036))

(assert (= (and b!5249002 (not res!2227442)) b!5249009))

(assert (= (and b!5249002 (not res!2227437)) b!5249030))

(assert (= (and b!5249030 (not res!2227452)) b!5249017))

(assert (= (and b!5249017 (not res!2227445)) b!5249026))

(assert (= (and b!5249026 (not res!2227428)) b!5249005))

(assert (= (and b!5249005 (not res!2227448)) b!5249025))

(assert (= (and b!5249025 (not res!2227444)) b!5249013))

(assert (= (and start!554698 ((_ is ElementMatch!14853) r!7292)) b!5249031))

(assert (= (and start!554698 ((_ is Concat!23698) r!7292)) b!5249008))

(assert (= (and start!554698 ((_ is Star!14853) r!7292)) b!5249018))

(assert (= (and start!554698 ((_ is Union!14853) r!7292)) b!5249023))

(assert (= (and start!554698 condSetEmpty!33503) setIsEmpty!33503))

(assert (= (and start!554698 (not condSetEmpty!33503)) setNonEmpty!33503))

(assert (= setNonEmpty!33503 b!5249015))

(assert (= b!5249024 b!5249016))

(assert (= (and start!554698 ((_ is Cons!60736) zl!343)) b!5249024))

(assert (= (and start!554698 ((_ is Cons!60735) s!2326)) b!5249001))

(declare-fun m!6292388 () Bool)

(assert (=> b!5249028 m!6292388))

(declare-fun m!6292390 () Bool)

(assert (=> b!5249028 m!6292390))

(declare-fun m!6292392 () Bool)

(assert (=> b!5249028 m!6292392))

(declare-fun m!6292394 () Bool)

(assert (=> b!5249028 m!6292394))

(declare-fun m!6292396 () Bool)

(assert (=> b!5249028 m!6292396))

(declare-fun m!6292398 () Bool)

(assert (=> b!5249028 m!6292398))

(declare-fun m!6292400 () Bool)

(assert (=> b!5249028 m!6292400))

(declare-fun m!6292402 () Bool)

(assert (=> b!5249019 m!6292402))

(declare-fun m!6292404 () Bool)

(assert (=> b!5249019 m!6292404))

(declare-fun m!6292406 () Bool)

(assert (=> b!5249019 m!6292406))

(declare-fun m!6292408 () Bool)

(assert (=> b!5249026 m!6292408))

(declare-fun m!6292410 () Bool)

(assert (=> b!5249027 m!6292410))

(declare-fun m!6292412 () Bool)

(assert (=> b!5249004 m!6292412))

(declare-fun m!6292414 () Bool)

(assert (=> b!5249004 m!6292414))

(declare-fun m!6292416 () Bool)

(assert (=> b!5249004 m!6292416))

(declare-fun m!6292418 () Bool)

(assert (=> b!5249005 m!6292418))

(declare-fun m!6292420 () Bool)

(assert (=> b!5249005 m!6292420))

(declare-fun m!6292422 () Bool)

(assert (=> b!5249005 m!6292422))

(declare-fun m!6292424 () Bool)

(assert (=> b!5249005 m!6292424))

(declare-fun m!6292426 () Bool)

(assert (=> b!5249005 m!6292426))

(declare-fun m!6292428 () Bool)

(assert (=> b!5249005 m!6292428))

(declare-fun m!6292430 () Bool)

(assert (=> b!5249005 m!6292430))

(declare-fun m!6292432 () Bool)

(assert (=> b!5249005 m!6292432))

(declare-fun m!6292434 () Bool)

(assert (=> b!5249005 m!6292434))

(declare-fun m!6292436 () Bool)

(assert (=> b!5249005 m!6292436))

(declare-fun m!6292438 () Bool)

(assert (=> b!5249005 m!6292438))

(assert (=> b!5249021 m!6292414))

(declare-fun m!6292440 () Bool)

(assert (=> b!5249037 m!6292440))

(declare-fun m!6292442 () Bool)

(assert (=> b!5249036 m!6292442))

(declare-fun m!6292444 () Bool)

(assert (=> setNonEmpty!33503 m!6292444))

(declare-fun m!6292446 () Bool)

(assert (=> b!5249000 m!6292446))

(declare-fun m!6292448 () Bool)

(assert (=> b!5249000 m!6292448))

(declare-fun m!6292450 () Bool)

(assert (=> b!5249012 m!6292450))

(declare-fun m!6292452 () Bool)

(assert (=> b!5249012 m!6292452))

(declare-fun m!6292454 () Bool)

(assert (=> b!5249012 m!6292454))

(assert (=> b!5249010 m!6292442))

(assert (=> b!5248998 m!6292414))

(assert (=> b!5249034 m!6292404))

(declare-fun m!6292456 () Bool)

(assert (=> b!5249034 m!6292456))

(declare-fun m!6292458 () Bool)

(assert (=> b!5249034 m!6292458))

(declare-fun m!6292460 () Bool)

(assert (=> b!5249034 m!6292460))

(declare-fun m!6292462 () Bool)

(assert (=> b!5249025 m!6292462))

(declare-fun m!6292464 () Bool)

(assert (=> b!5249002 m!6292464))

(declare-fun m!6292466 () Bool)

(assert (=> b!5249002 m!6292466))

(declare-fun m!6292468 () Bool)

(assert (=> b!5249002 m!6292468))

(declare-fun m!6292470 () Bool)

(assert (=> b!5249002 m!6292470))

(declare-fun m!6292472 () Bool)

(assert (=> b!5249002 m!6292472))

(declare-fun m!6292474 () Bool)

(assert (=> b!5249002 m!6292474))

(declare-fun m!6292476 () Bool)

(assert (=> b!5249002 m!6292476))

(declare-fun m!6292478 () Bool)

(assert (=> b!5249002 m!6292478))

(declare-fun m!6292480 () Bool)

(assert (=> b!5249002 m!6292480))

(declare-fun m!6292482 () Bool)

(assert (=> b!5249002 m!6292482))

(declare-fun m!6292484 () Bool)

(assert (=> b!5249002 m!6292484))

(declare-fun m!6292486 () Bool)

(assert (=> b!5249002 m!6292486))

(declare-fun m!6292488 () Bool)

(assert (=> b!5248999 m!6292488))

(declare-fun m!6292490 () Bool)

(assert (=> b!5249033 m!6292490))

(assert (=> b!5249014 m!6292442))

(declare-fun m!6292492 () Bool)

(assert (=> b!5249017 m!6292492))

(declare-fun m!6292494 () Bool)

(assert (=> b!5249017 m!6292494))

(declare-fun m!6292496 () Bool)

(assert (=> b!5249032 m!6292496))

(assert (=> b!5249032 m!6292496))

(declare-fun m!6292498 () Bool)

(assert (=> b!5249032 m!6292498))

(assert (=> b!5249009 m!6292422))

(declare-fun m!6292500 () Bool)

(assert (=> b!5249022 m!6292500))

(declare-fun m!6292502 () Bool)

(assert (=> b!5249022 m!6292502))

(declare-fun m!6292504 () Bool)

(assert (=> b!5249022 m!6292504))

(declare-fun m!6292506 () Bool)

(assert (=> b!5249022 m!6292506))

(assert (=> b!5249022 m!6292500))

(declare-fun m!6292508 () Bool)

(assert (=> b!5249022 m!6292508))

(assert (=> b!5249022 m!6292502))

(declare-fun m!6292510 () Bool)

(assert (=> b!5249022 m!6292510))

(declare-fun m!6292512 () Bool)

(assert (=> b!5249013 m!6292512))

(declare-fun m!6292514 () Bool)

(assert (=> b!5249024 m!6292514))

(declare-fun m!6292516 () Bool)

(assert (=> b!5249003 m!6292516))

(declare-fun m!6292518 () Bool)

(assert (=> b!5249003 m!6292518))

(declare-fun m!6292520 () Bool)

(assert (=> b!5249029 m!6292520))

(declare-fun m!6292522 () Bool)

(assert (=> start!554698 m!6292522))

(check-sat (not b!5249014) (not b!5249009) (not b!5249034) (not b!5249008) (not b!5249001) (not b!5249010) tp_is_empty!38959 (not b!5249027) (not b!5249005) (not b!5249019) (not b!5249033) (not b!5249017) (not b!5249012) (not b!5249032) (not b!5249016) (not b!5248998) (not b!5249004) (not b!5249022) (not b!5249037) (not b!5249003) (not b!5249023) (not b!5249026) (not start!554698) (not b!5249015) (not b!5249024) (not b!5249021) (not b!5249002) (not b!5249013) (not b!5248999) (not b!5249000) (not b!5249028) (not b!5249018) (not b!5249029) (not setNonEmpty!33503) (not b!5249036) (not b!5249025))
(check-sat)
(get-model)

(declare-fun b!5249168 () Bool)

(declare-fun lt!2150830 () Unit!152838)

(declare-fun lt!2150832 () Unit!152838)

(assert (=> b!5249168 (= lt!2150830 lt!2150832)))

(declare-fun ++!13247 (List!60859 List!60859) List!60859)

(assert (=> b!5249168 (= (++!13247 (++!13247 Nil!60735 (Cons!60735 (h!67183 s!2326) Nil!60735)) (t!374042 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1662 (List!60859 C!29976 List!60859 List!60859) Unit!152838)

(assert (=> b!5249168 (= lt!2150832 (lemmaMoveElementToOtherListKeepsConcatEq!1662 Nil!60735 (h!67183 s!2326) (t!374042 s!2326) s!2326))))

(declare-fun e!3265769 () Option!14964)

(assert (=> b!5249168 (= e!3265769 (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) (++!13247 Nil!60735 (Cons!60735 (h!67183 s!2326) Nil!60735)) (t!374042 s!2326) s!2326))))

(declare-fun b!5249169 () Bool)

(declare-fun e!3265768 () Bool)

(declare-fun lt!2150831 () Option!14964)

(declare-fun get!20879 (Option!14964) tuple2!64104)

(assert (=> b!5249169 (= e!3265768 (= (++!13247 (_1!35355 (get!20879 lt!2150831)) (_2!35355 (get!20879 lt!2150831))) s!2326))))

(declare-fun b!5249170 () Bool)

(declare-fun e!3265767 () Bool)

(assert (=> b!5249170 (= e!3265767 (matchR!7038 (regTwo!30218 r!7292) s!2326))))

(declare-fun b!5249171 () Bool)

(declare-fun e!3265771 () Option!14964)

(assert (=> b!5249171 (= e!3265771 (Some!14963 (tuple2!64105 Nil!60735 s!2326)))))

(declare-fun b!5249172 () Bool)

(declare-fun res!2227497 () Bool)

(assert (=> b!5249172 (=> (not res!2227497) (not e!3265768))))

(assert (=> b!5249172 (= res!2227497 (matchR!7038 (regTwo!30218 r!7292) (_2!35355 (get!20879 lt!2150831))))))

(declare-fun d!1691010 () Bool)

(declare-fun e!3265770 () Bool)

(assert (=> d!1691010 e!3265770))

(declare-fun res!2227498 () Bool)

(assert (=> d!1691010 (=> res!2227498 e!3265770)))

(assert (=> d!1691010 (= res!2227498 e!3265768)))

(declare-fun res!2227496 () Bool)

(assert (=> d!1691010 (=> (not res!2227496) (not e!3265768))))

(assert (=> d!1691010 (= res!2227496 (isDefined!11667 lt!2150831))))

(assert (=> d!1691010 (= lt!2150831 e!3265771)))

(declare-fun c!907940 () Bool)

(assert (=> d!1691010 (= c!907940 e!3265767)))

(declare-fun res!2227494 () Bool)

(assert (=> d!1691010 (=> (not res!2227494) (not e!3265767))))

(assert (=> d!1691010 (= res!2227494 (matchR!7038 (regOne!30218 r!7292) Nil!60735))))

(assert (=> d!1691010 (validRegex!6589 (regOne!30218 r!7292))))

(assert (=> d!1691010 (= (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) Nil!60735 s!2326 s!2326) lt!2150831)))

(declare-fun b!5249173 () Bool)

(assert (=> b!5249173 (= e!3265769 None!14963)))

(declare-fun b!5249174 () Bool)

(declare-fun res!2227495 () Bool)

(assert (=> b!5249174 (=> (not res!2227495) (not e!3265768))))

(assert (=> b!5249174 (= res!2227495 (matchR!7038 (regOne!30218 r!7292) (_1!35355 (get!20879 lt!2150831))))))

(declare-fun b!5249175 () Bool)

(assert (=> b!5249175 (= e!3265771 e!3265769)))

(declare-fun c!907941 () Bool)

(assert (=> b!5249175 (= c!907941 ((_ is Nil!60735) s!2326))))

(declare-fun b!5249176 () Bool)

(assert (=> b!5249176 (= e!3265770 (not (isDefined!11667 lt!2150831)))))

(assert (= (and d!1691010 res!2227494) b!5249170))

(assert (= (and d!1691010 c!907940) b!5249171))

(assert (= (and d!1691010 (not c!907940)) b!5249175))

(assert (= (and b!5249175 c!907941) b!5249173))

(assert (= (and b!5249175 (not c!907941)) b!5249168))

(assert (= (and d!1691010 res!2227496) b!5249174))

(assert (= (and b!5249174 res!2227495) b!5249172))

(assert (= (and b!5249172 res!2227497) b!5249169))

(assert (= (and d!1691010 (not res!2227498)) b!5249176))

(declare-fun m!6292644 () Bool)

(assert (=> d!1691010 m!6292644))

(declare-fun m!6292646 () Bool)

(assert (=> d!1691010 m!6292646))

(declare-fun m!6292648 () Bool)

(assert (=> d!1691010 m!6292648))

(declare-fun m!6292650 () Bool)

(assert (=> b!5249172 m!6292650))

(declare-fun m!6292652 () Bool)

(assert (=> b!5249172 m!6292652))

(declare-fun m!6292654 () Bool)

(assert (=> b!5249170 m!6292654))

(assert (=> b!5249169 m!6292650))

(declare-fun m!6292656 () Bool)

(assert (=> b!5249169 m!6292656))

(assert (=> b!5249176 m!6292644))

(assert (=> b!5249174 m!6292650))

(declare-fun m!6292658 () Bool)

(assert (=> b!5249174 m!6292658))

(declare-fun m!6292660 () Bool)

(assert (=> b!5249168 m!6292660))

(assert (=> b!5249168 m!6292660))

(declare-fun m!6292662 () Bool)

(assert (=> b!5249168 m!6292662))

(declare-fun m!6292664 () Bool)

(assert (=> b!5249168 m!6292664))

(assert (=> b!5249168 m!6292660))

(declare-fun m!6292666 () Bool)

(assert (=> b!5249168 m!6292666))

(assert (=> b!5249022 d!1691010))

(declare-fun d!1691050 () Bool)

(declare-fun choose!39108 (Int) Bool)

(assert (=> d!1691050 (= (Exists!2034 lambda!264255) (choose!39108 lambda!264255))))

(declare-fun bs!1217890 () Bool)

(assert (= bs!1217890 d!1691050))

(declare-fun m!6292668 () Bool)

(assert (=> bs!1217890 m!6292668))

(assert (=> b!5249022 d!1691050))

(declare-fun d!1691052 () Bool)

(assert (=> d!1691052 (= (Exists!2034 lambda!264254) (choose!39108 lambda!264254))))

(declare-fun bs!1217891 () Bool)

(assert (= bs!1217891 d!1691052))

(declare-fun m!6292670 () Bool)

(assert (=> bs!1217891 m!6292670))

(assert (=> b!5249022 d!1691052))

(declare-fun bs!1217900 () Bool)

(declare-fun d!1691054 () Bool)

(assert (= bs!1217900 (and d!1691054 b!5249022)))

(declare-fun lambda!264274 () Int)

(assert (=> bs!1217900 (= lambda!264274 lambda!264254)))

(assert (=> bs!1217900 (not (= lambda!264274 lambda!264255))))

(assert (=> d!1691054 true))

(assert (=> d!1691054 true))

(assert (=> d!1691054 true))

(assert (=> d!1691054 (= (isDefined!11667 (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) Nil!60735 s!2326 s!2326)) (Exists!2034 lambda!264274))))

(declare-fun lt!2150836 () Unit!152838)

(declare-fun choose!39109 (Regex!14853 Regex!14853 List!60859) Unit!152838)

(assert (=> d!1691054 (= lt!2150836 (choose!39109 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326))))

(assert (=> d!1691054 (validRegex!6589 (regOne!30218 r!7292))))

(assert (=> d!1691054 (= (lemmaFindConcatSeparationEquivalentToExists!1142 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326) lt!2150836)))

(declare-fun bs!1217906 () Bool)

(assert (= bs!1217906 d!1691054))

(assert (=> bs!1217906 m!6292502))

(assert (=> bs!1217906 m!6292648))

(declare-fun m!6292722 () Bool)

(assert (=> bs!1217906 m!6292722))

(declare-fun m!6292728 () Bool)

(assert (=> bs!1217906 m!6292728))

(assert (=> bs!1217906 m!6292502))

(assert (=> bs!1217906 m!6292504))

(assert (=> b!5249022 d!1691054))

(declare-fun bs!1217917 () Bool)

(declare-fun d!1691066 () Bool)

(assert (= bs!1217917 (and d!1691066 b!5249022)))

(declare-fun lambda!264282 () Int)

(assert (=> bs!1217917 (= lambda!264282 lambda!264254)))

(assert (=> bs!1217917 (not (= lambda!264282 lambda!264255))))

(declare-fun bs!1217918 () Bool)

(assert (= bs!1217918 (and d!1691066 d!1691054)))

(assert (=> bs!1217918 (= lambda!264282 lambda!264274)))

(assert (=> d!1691066 true))

(assert (=> d!1691066 true))

(assert (=> d!1691066 true))

(declare-fun lambda!264283 () Int)

(assert (=> bs!1217917 (not (= lambda!264283 lambda!264254))))

(assert (=> bs!1217917 (= lambda!264283 lambda!264255)))

(assert (=> bs!1217918 (not (= lambda!264283 lambda!264274))))

(declare-fun bs!1217922 () Bool)

(assert (= bs!1217922 d!1691066))

(assert (=> bs!1217922 (not (= lambda!264283 lambda!264282))))

(assert (=> d!1691066 true))

(assert (=> d!1691066 true))

(assert (=> d!1691066 true))

(assert (=> d!1691066 (= (Exists!2034 lambda!264282) (Exists!2034 lambda!264283))))

(declare-fun lt!2150852 () Unit!152838)

(declare-fun choose!39110 (Regex!14853 Regex!14853 List!60859) Unit!152838)

(assert (=> d!1691066 (= lt!2150852 (choose!39110 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326))))

(assert (=> d!1691066 (validRegex!6589 (regOne!30218 r!7292))))

(assert (=> d!1691066 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!688 (regOne!30218 r!7292) (regTwo!30218 r!7292) s!2326) lt!2150852)))

(declare-fun m!6292786 () Bool)

(assert (=> bs!1217922 m!6292786))

(declare-fun m!6292788 () Bool)

(assert (=> bs!1217922 m!6292788))

(declare-fun m!6292790 () Bool)

(assert (=> bs!1217922 m!6292790))

(assert (=> bs!1217922 m!6292648))

(assert (=> b!5249022 d!1691066))

(declare-fun d!1691094 () Bool)

(declare-fun isEmpty!32678 (Option!14964) Bool)

(assert (=> d!1691094 (= (isDefined!11667 (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) Nil!60735 s!2326 s!2326)) (not (isEmpty!32678 (findConcatSeparation!1378 (regOne!30218 r!7292) (regTwo!30218 r!7292) Nil!60735 s!2326 s!2326))))))

(declare-fun bs!1217923 () Bool)

(assert (= bs!1217923 d!1691094))

(assert (=> bs!1217923 m!6292502))

(declare-fun m!6292792 () Bool)

(assert (=> bs!1217923 m!6292792))

(assert (=> b!5249022 d!1691094))

(declare-fun d!1691096 () Bool)

(declare-fun c!907996 () Bool)

(declare-fun isEmpty!32679 (List!60859) Bool)

(assert (=> d!1691096 (= c!907996 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3265876 () Bool)

(assert (=> d!1691096 (= (matchZipper!1097 lt!2150774 (t!374042 s!2326)) e!3265876)))

(declare-fun b!5249363 () Bool)

(declare-fun nullableZipper!1268 ((InoxSet Context!8474)) Bool)

(assert (=> b!5249363 (= e!3265876 (nullableZipper!1268 lt!2150774))))

(declare-fun b!5249364 () Bool)

(declare-fun derivationStepZipper!1112 ((InoxSet Context!8474) C!29976) (InoxSet Context!8474))

(declare-fun head!11254 (List!60859) C!29976)

(declare-fun tail!10351 (List!60859) List!60859)

(assert (=> b!5249364 (= e!3265876 (matchZipper!1097 (derivationStepZipper!1112 lt!2150774 (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691096 c!907996) b!5249363))

(assert (= (and d!1691096 (not c!907996)) b!5249364))

(declare-fun m!6292794 () Bool)

(assert (=> d!1691096 m!6292794))

(declare-fun m!6292796 () Bool)

(assert (=> b!5249363 m!6292796))

(declare-fun m!6292798 () Bool)

(assert (=> b!5249364 m!6292798))

(assert (=> b!5249364 m!6292798))

(declare-fun m!6292800 () Bool)

(assert (=> b!5249364 m!6292800))

(declare-fun m!6292802 () Bool)

(assert (=> b!5249364 m!6292802))

(assert (=> b!5249364 m!6292800))

(assert (=> b!5249364 m!6292802))

(declare-fun m!6292804 () Bool)

(assert (=> b!5249364 m!6292804))

(assert (=> b!5249021 d!1691096))

(declare-fun d!1691098 () Bool)

(declare-fun dynLambda!24005 (Int Context!8474) (InoxSet Context!8474))

(assert (=> d!1691098 (= (flatMap!580 lt!2150783 lambda!264256) (dynLambda!24005 lambda!264256 lt!2150808))))

(declare-fun lt!2150859 () Unit!152838)

(declare-fun choose!39111 ((InoxSet Context!8474) Context!8474 Int) Unit!152838)

(assert (=> d!1691098 (= lt!2150859 (choose!39111 lt!2150783 lt!2150808 lambda!264256))))

(assert (=> d!1691098 (= lt!2150783 (store ((as const (Array Context!8474 Bool)) false) lt!2150808 true))))

(assert (=> d!1691098 (= (lemmaFlatMapOnSingletonSet!112 lt!2150783 lt!2150808 lambda!264256) lt!2150859)))

(declare-fun b_lambda!202787 () Bool)

(assert (=> (not b_lambda!202787) (not d!1691098)))

(declare-fun bs!1217924 () Bool)

(assert (= bs!1217924 d!1691098))

(assert (=> bs!1217924 m!6292474))

(declare-fun m!6292816 () Bool)

(assert (=> bs!1217924 m!6292816))

(declare-fun m!6292818 () Bool)

(assert (=> bs!1217924 m!6292818))

(assert (=> bs!1217924 m!6292484))

(assert (=> b!5249002 d!1691098))

(declare-fun d!1691102 () Bool)

(declare-fun c!908004 () Bool)

(assert (=> d!1691102 (= c!908004 (isEmpty!32679 s!2326))))

(declare-fun e!3265885 () Bool)

(assert (=> d!1691102 (= (matchZipper!1097 z!1189 s!2326) e!3265885)))

(declare-fun b!5249380 () Bool)

(assert (=> b!5249380 (= e!3265885 (nullableZipper!1268 z!1189))))

(declare-fun b!5249381 () Bool)

(assert (=> b!5249381 (= e!3265885 (matchZipper!1097 (derivationStepZipper!1112 z!1189 (head!11254 s!2326)) (tail!10351 s!2326)))))

(assert (= (and d!1691102 c!908004) b!5249380))

(assert (= (and d!1691102 (not c!908004)) b!5249381))

(declare-fun m!6292820 () Bool)

(assert (=> d!1691102 m!6292820))

(declare-fun m!6292822 () Bool)

(assert (=> b!5249380 m!6292822))

(declare-fun m!6292824 () Bool)

(assert (=> b!5249381 m!6292824))

(assert (=> b!5249381 m!6292824))

(declare-fun m!6292826 () Bool)

(assert (=> b!5249381 m!6292826))

(declare-fun m!6292828 () Bool)

(assert (=> b!5249381 m!6292828))

(assert (=> b!5249381 m!6292826))

(assert (=> b!5249381 m!6292828))

(declare-fun m!6292830 () Bool)

(assert (=> b!5249381 m!6292830))

(assert (=> b!5249002 d!1691102))

(declare-fun d!1691104 () Bool)

(assert (=> d!1691104 (= (flatMap!580 lt!2150806 lambda!264256) (dynLambda!24005 lambda!264256 lt!2150798))))

(declare-fun lt!2150862 () Unit!152838)

(assert (=> d!1691104 (= lt!2150862 (choose!39111 lt!2150806 lt!2150798 lambda!264256))))

(assert (=> d!1691104 (= lt!2150806 (store ((as const (Array Context!8474 Bool)) false) lt!2150798 true))))

(assert (=> d!1691104 (= (lemmaFlatMapOnSingletonSet!112 lt!2150806 lt!2150798 lambda!264256) lt!2150862)))

(declare-fun b_lambda!202789 () Bool)

(assert (=> (not b_lambda!202789) (not d!1691104)))

(declare-fun bs!1217925 () Bool)

(assert (= bs!1217925 d!1691104))

(assert (=> bs!1217925 m!6292476))

(declare-fun m!6292836 () Bool)

(assert (=> bs!1217925 m!6292836))

(declare-fun m!6292838 () Bool)

(assert (=> bs!1217925 m!6292838))

(assert (=> bs!1217925 m!6292478))

(assert (=> b!5249002 d!1691104))

(declare-fun d!1691108 () Bool)

(declare-fun choose!39113 ((InoxSet Context!8474) Int) (InoxSet Context!8474))

(assert (=> d!1691108 (= (flatMap!580 lt!2150783 lambda!264256) (choose!39113 lt!2150783 lambda!264256))))

(declare-fun bs!1217926 () Bool)

(assert (= bs!1217926 d!1691108))

(declare-fun m!6292844 () Bool)

(assert (=> bs!1217926 m!6292844))

(assert (=> b!5249002 d!1691108))

(declare-fun d!1691112 () Bool)

(declare-fun c!908007 () Bool)

(assert (=> d!1691112 (= c!908007 (isEmpty!32679 s!2326))))

(declare-fun e!3265892 () Bool)

(assert (=> d!1691112 (= (matchZipper!1097 lt!2150783 s!2326) e!3265892)))

(declare-fun b!5249390 () Bool)

(assert (=> b!5249390 (= e!3265892 (nullableZipper!1268 lt!2150783))))

(declare-fun b!5249391 () Bool)

(assert (=> b!5249391 (= e!3265892 (matchZipper!1097 (derivationStepZipper!1112 lt!2150783 (head!11254 s!2326)) (tail!10351 s!2326)))))

(assert (= (and d!1691112 c!908007) b!5249390))

(assert (= (and d!1691112 (not c!908007)) b!5249391))

(assert (=> d!1691112 m!6292820))

(declare-fun m!6292846 () Bool)

(assert (=> b!5249390 m!6292846))

(assert (=> b!5249391 m!6292824))

(assert (=> b!5249391 m!6292824))

(declare-fun m!6292848 () Bool)

(assert (=> b!5249391 m!6292848))

(assert (=> b!5249391 m!6292828))

(assert (=> b!5249391 m!6292848))

(assert (=> b!5249391 m!6292828))

(declare-fun m!6292850 () Bool)

(assert (=> b!5249391 m!6292850))

(assert (=> b!5249002 d!1691112))

(declare-fun d!1691114 () Bool)

(declare-fun nullableFct!1420 (Regex!14853) Bool)

(assert (=> d!1691114 (= (nullable!5022 (regOne!30219 (regOne!30218 r!7292))) (nullableFct!1420 (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun bs!1217927 () Bool)

(assert (= bs!1217927 d!1691114))

(declare-fun m!6292864 () Bool)

(assert (=> bs!1217927 m!6292864))

(assert (=> b!5249002 d!1691114))

(declare-fun d!1691122 () Bool)

(assert (=> d!1691122 (= (flatMap!580 lt!2150806 lambda!264256) (choose!39113 lt!2150806 lambda!264256))))

(declare-fun bs!1217928 () Bool)

(assert (= bs!1217928 d!1691122))

(declare-fun m!6292868 () Bool)

(assert (=> bs!1217928 m!6292868))

(assert (=> b!5249002 d!1691122))

(declare-fun d!1691124 () Bool)

(assert (=> d!1691124 (= (nullable!5022 (regTwo!30219 (regOne!30218 r!7292))) (nullableFct!1420 (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun bs!1217929 () Bool)

(assert (= bs!1217929 d!1691124))

(declare-fun m!6292874 () Bool)

(assert (=> bs!1217929 m!6292874))

(assert (=> b!5249002 d!1691124))

(declare-fun b!5249432 () Bool)

(declare-fun e!3265920 () (InoxSet Context!8474))

(assert (=> b!5249432 (= e!3265920 ((as const (Array Context!8474 Bool)) false))))

(declare-fun b!5249433 () Bool)

(declare-fun call!371973 () (InoxSet Context!8474))

(declare-fun e!3265919 () (InoxSet Context!8474))

(assert (=> b!5249433 (= e!3265919 ((_ map or) call!371973 (derivationStepZipperUp!225 (Context!8475 (t!374041 (exprs!4737 lt!2150798))) (h!67183 s!2326))))))

(declare-fun b!5249434 () Bool)

(assert (=> b!5249434 (= e!3265919 e!3265920)))

(declare-fun c!908023 () Bool)

(assert (=> b!5249434 (= c!908023 ((_ is Cons!60734) (exprs!4737 lt!2150798)))))

(declare-fun d!1691128 () Bool)

(declare-fun c!908024 () Bool)

(declare-fun e!3265918 () Bool)

(assert (=> d!1691128 (= c!908024 e!3265918)))

(declare-fun res!2227592 () Bool)

(assert (=> d!1691128 (=> (not res!2227592) (not e!3265918))))

(assert (=> d!1691128 (= res!2227592 ((_ is Cons!60734) (exprs!4737 lt!2150798)))))

(assert (=> d!1691128 (= (derivationStepZipperUp!225 lt!2150798 (h!67183 s!2326)) e!3265919)))

(declare-fun b!5249435 () Bool)

(assert (=> b!5249435 (= e!3265918 (nullable!5022 (h!67182 (exprs!4737 lt!2150798))))))

(declare-fun bm!371968 () Bool)

(assert (=> bm!371968 (= call!371973 (derivationStepZipperDown!301 (h!67182 (exprs!4737 lt!2150798)) (Context!8475 (t!374041 (exprs!4737 lt!2150798))) (h!67183 s!2326)))))

(declare-fun b!5249436 () Bool)

(assert (=> b!5249436 (= e!3265920 call!371973)))

(assert (= (and d!1691128 res!2227592) b!5249435))

(assert (= (and d!1691128 c!908024) b!5249433))

(assert (= (and d!1691128 (not c!908024)) b!5249434))

(assert (= (and b!5249434 c!908023) b!5249436))

(assert (= (and b!5249434 (not c!908023)) b!5249432))

(assert (= (or b!5249433 b!5249436) bm!371968))

(declare-fun m!6292884 () Bool)

(assert (=> b!5249433 m!6292884))

(declare-fun m!6292886 () Bool)

(assert (=> b!5249435 m!6292886))

(declare-fun m!6292888 () Bool)

(assert (=> bm!371968 m!6292888))

(assert (=> b!5249002 d!1691128))

(declare-fun b!5249447 () Bool)

(declare-fun e!3265929 () (InoxSet Context!8474))

(assert (=> b!5249447 (= e!3265929 ((as const (Array Context!8474 Bool)) false))))

(declare-fun e!3265928 () (InoxSet Context!8474))

(declare-fun call!371974 () (InoxSet Context!8474))

(declare-fun b!5249448 () Bool)

(assert (=> b!5249448 (= e!3265928 ((_ map or) call!371974 (derivationStepZipperUp!225 (Context!8475 (t!374041 (exprs!4737 lt!2150808))) (h!67183 s!2326))))))

(declare-fun b!5249449 () Bool)

(assert (=> b!5249449 (= e!3265928 e!3265929)))

(declare-fun c!908029 () Bool)

(assert (=> b!5249449 (= c!908029 ((_ is Cons!60734) (exprs!4737 lt!2150808)))))

(declare-fun d!1691134 () Bool)

(declare-fun c!908030 () Bool)

(declare-fun e!3265927 () Bool)

(assert (=> d!1691134 (= c!908030 e!3265927)))

(declare-fun res!2227595 () Bool)

(assert (=> d!1691134 (=> (not res!2227595) (not e!3265927))))

(assert (=> d!1691134 (= res!2227595 ((_ is Cons!60734) (exprs!4737 lt!2150808)))))

(assert (=> d!1691134 (= (derivationStepZipperUp!225 lt!2150808 (h!67183 s!2326)) e!3265928)))

(declare-fun b!5249450 () Bool)

(assert (=> b!5249450 (= e!3265927 (nullable!5022 (h!67182 (exprs!4737 lt!2150808))))))

(declare-fun bm!371969 () Bool)

(assert (=> bm!371969 (= call!371974 (derivationStepZipperDown!301 (h!67182 (exprs!4737 lt!2150808)) (Context!8475 (t!374041 (exprs!4737 lt!2150808))) (h!67183 s!2326)))))

(declare-fun b!5249451 () Bool)

(assert (=> b!5249451 (= e!3265929 call!371974)))

(assert (= (and d!1691134 res!2227595) b!5249450))

(assert (= (and d!1691134 c!908030) b!5249448))

(assert (= (and d!1691134 (not c!908030)) b!5249449))

(assert (= (and b!5249449 c!908029) b!5249451))

(assert (= (and b!5249449 (not c!908029)) b!5249447))

(assert (= (or b!5249448 b!5249451) bm!371969))

(declare-fun m!6292900 () Bool)

(assert (=> b!5249448 m!6292900))

(declare-fun m!6292908 () Bool)

(assert (=> b!5249450 m!6292908))

(declare-fun m!6292914 () Bool)

(assert (=> bm!371969 m!6292914))

(assert (=> b!5249002 d!1691134))

(declare-fun e!3265945 () Bool)

(declare-fun d!1691138 () Bool)

(assert (=> d!1691138 (= (matchZipper!1097 ((_ map or) lt!2150774 lt!2150788) (t!374042 s!2326)) e!3265945)))

(declare-fun res!2227602 () Bool)

(assert (=> d!1691138 (=> res!2227602 e!3265945)))

(assert (=> d!1691138 (= res!2227602 (matchZipper!1097 lt!2150774 (t!374042 s!2326)))))

(declare-fun lt!2150876 () Unit!152838)

(declare-fun choose!39114 ((InoxSet Context!8474) (InoxSet Context!8474) List!60859) Unit!152838)

(assert (=> d!1691138 (= lt!2150876 (choose!39114 lt!2150774 lt!2150788 (t!374042 s!2326)))))

(assert (=> d!1691138 (= (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150774 lt!2150788 (t!374042 s!2326)) lt!2150876)))

(declare-fun b!5249476 () Bool)

(assert (=> b!5249476 (= e!3265945 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(assert (= (and d!1691138 (not res!2227602)) b!5249476))

(assert (=> d!1691138 m!6292416))

(assert (=> d!1691138 m!6292414))

(declare-fun m!6292936 () Bool)

(assert (=> d!1691138 m!6292936))

(assert (=> b!5249476 m!6292442))

(assert (=> b!5249004 d!1691138))

(assert (=> b!5249004 d!1691096))

(declare-fun d!1691148 () Bool)

(declare-fun c!908040 () Bool)

(assert (=> d!1691148 (= c!908040 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3265946 () Bool)

(assert (=> d!1691148 (= (matchZipper!1097 ((_ map or) lt!2150774 lt!2150788) (t!374042 s!2326)) e!3265946)))

(declare-fun b!5249477 () Bool)

(assert (=> b!5249477 (= e!3265946 (nullableZipper!1268 ((_ map or) lt!2150774 lt!2150788)))))

(declare-fun b!5249478 () Bool)

(assert (=> b!5249478 (= e!3265946 (matchZipper!1097 (derivationStepZipper!1112 ((_ map or) lt!2150774 lt!2150788) (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691148 c!908040) b!5249477))

(assert (= (and d!1691148 (not c!908040)) b!5249478))

(assert (=> d!1691148 m!6292794))

(declare-fun m!6292938 () Bool)

(assert (=> b!5249477 m!6292938))

(assert (=> b!5249478 m!6292798))

(assert (=> b!5249478 m!6292798))

(declare-fun m!6292940 () Bool)

(assert (=> b!5249478 m!6292940))

(assert (=> b!5249478 m!6292802))

(assert (=> b!5249478 m!6292940))

(assert (=> b!5249478 m!6292802))

(declare-fun m!6292942 () Bool)

(assert (=> b!5249478 m!6292942))

(assert (=> b!5249004 d!1691148))

(declare-fun e!3265947 () Bool)

(declare-fun d!1691150 () Bool)

(assert (=> d!1691150 (= (matchZipper!1097 ((_ map or) lt!2150796 lt!2150788) (t!374042 s!2326)) e!3265947)))

(declare-fun res!2227603 () Bool)

(assert (=> d!1691150 (=> res!2227603 e!3265947)))

(assert (=> d!1691150 (= res!2227603 (matchZipper!1097 lt!2150796 (t!374042 s!2326)))))

(declare-fun lt!2150877 () Unit!152838)

(assert (=> d!1691150 (= lt!2150877 (choose!39114 lt!2150796 lt!2150788 (t!374042 s!2326)))))

(assert (=> d!1691150 (= (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150796 lt!2150788 (t!374042 s!2326)) lt!2150877)))

(declare-fun b!5249479 () Bool)

(assert (=> b!5249479 (= e!3265947 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(assert (= (and d!1691150 (not res!2227603)) b!5249479))

(assert (=> d!1691150 m!6292518))

(assert (=> d!1691150 m!6292458))

(declare-fun m!6292950 () Bool)

(assert (=> d!1691150 m!6292950))

(assert (=> b!5249479 m!6292442))

(assert (=> b!5249003 d!1691150))

(declare-fun d!1691154 () Bool)

(declare-fun c!908044 () Bool)

(assert (=> d!1691154 (= c!908044 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3265955 () Bool)

(assert (=> d!1691154 (= (matchZipper!1097 ((_ map or) lt!2150796 lt!2150788) (t!374042 s!2326)) e!3265955)))

(declare-fun b!5249494 () Bool)

(assert (=> b!5249494 (= e!3265955 (nullableZipper!1268 ((_ map or) lt!2150796 lt!2150788)))))

(declare-fun b!5249495 () Bool)

(assert (=> b!5249495 (= e!3265955 (matchZipper!1097 (derivationStepZipper!1112 ((_ map or) lt!2150796 lt!2150788) (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691154 c!908044) b!5249494))

(assert (= (and d!1691154 (not c!908044)) b!5249495))

(assert (=> d!1691154 m!6292794))

(declare-fun m!6292952 () Bool)

(assert (=> b!5249494 m!6292952))

(assert (=> b!5249495 m!6292798))

(assert (=> b!5249495 m!6292798))

(declare-fun m!6292954 () Bool)

(assert (=> b!5249495 m!6292954))

(assert (=> b!5249495 m!6292802))

(assert (=> b!5249495 m!6292954))

(assert (=> b!5249495 m!6292802))

(declare-fun m!6292956 () Bool)

(assert (=> b!5249495 m!6292956))

(assert (=> b!5249003 d!1691154))

(declare-fun b!5249566 () Bool)

(declare-fun res!2227642 () Bool)

(declare-fun e!3265994 () Bool)

(assert (=> b!5249566 (=> res!2227642 e!3265994)))

(declare-fun e!3265995 () Bool)

(assert (=> b!5249566 (= res!2227642 e!3265995)))

(declare-fun res!2227647 () Bool)

(assert (=> b!5249566 (=> (not res!2227647) (not e!3265995))))

(declare-fun lt!2150892 () Bool)

(assert (=> b!5249566 (= res!2227647 lt!2150892)))

(declare-fun b!5249567 () Bool)

(assert (=> b!5249567 (= e!3265995 (= (head!11254 s!2326) (c!907897 lt!2150804)))))

(declare-fun b!5249568 () Bool)

(declare-fun res!2227644 () Bool)

(assert (=> b!5249568 (=> (not res!2227644) (not e!3265995))))

(declare-fun call!371992 () Bool)

(assert (=> b!5249568 (= res!2227644 (not call!371992))))

(declare-fun b!5249569 () Bool)

(declare-fun res!2227640 () Bool)

(assert (=> b!5249569 (=> res!2227640 e!3265994)))

(assert (=> b!5249569 (= res!2227640 (not ((_ is ElementMatch!14853) lt!2150804)))))

(declare-fun e!3265997 () Bool)

(assert (=> b!5249569 (= e!3265997 e!3265994)))

(declare-fun b!5249570 () Bool)

(declare-fun e!3265996 () Bool)

(assert (=> b!5249570 (= e!3265996 (= lt!2150892 call!371992))))

(declare-fun bm!371987 () Bool)

(assert (=> bm!371987 (= call!371992 (isEmpty!32679 s!2326))))

(declare-fun b!5249572 () Bool)

(assert (=> b!5249572 (= e!3265996 e!3265997)))

(declare-fun c!908066 () Bool)

(assert (=> b!5249572 (= c!908066 ((_ is EmptyLang!14853) lt!2150804))))

(declare-fun b!5249573 () Bool)

(declare-fun e!3265998 () Bool)

(assert (=> b!5249573 (= e!3265994 e!3265998)))

(declare-fun res!2227645 () Bool)

(assert (=> b!5249573 (=> (not res!2227645) (not e!3265998))))

(assert (=> b!5249573 (= res!2227645 (not lt!2150892))))

(declare-fun b!5249574 () Bool)

(declare-fun e!3265999 () Bool)

(declare-fun derivativeStep!4089 (Regex!14853 C!29976) Regex!14853)

(assert (=> b!5249574 (= e!3265999 (matchR!7038 (derivativeStep!4089 lt!2150804 (head!11254 s!2326)) (tail!10351 s!2326)))))

(declare-fun b!5249575 () Bool)

(assert (=> b!5249575 (= e!3265999 (nullable!5022 lt!2150804))))

(declare-fun b!5249576 () Bool)

(declare-fun res!2227646 () Bool)

(assert (=> b!5249576 (=> (not res!2227646) (not e!3265995))))

(assert (=> b!5249576 (= res!2227646 (isEmpty!32679 (tail!10351 s!2326)))))

(declare-fun b!5249577 () Bool)

(declare-fun e!3265993 () Bool)

(assert (=> b!5249577 (= e!3265998 e!3265993)))

(declare-fun res!2227641 () Bool)

(assert (=> b!5249577 (=> res!2227641 e!3265993)))

(assert (=> b!5249577 (= res!2227641 call!371992)))

(declare-fun b!5249571 () Bool)

(declare-fun res!2227643 () Bool)

(assert (=> b!5249571 (=> res!2227643 e!3265993)))

(assert (=> b!5249571 (= res!2227643 (not (isEmpty!32679 (tail!10351 s!2326))))))

(declare-fun d!1691156 () Bool)

(assert (=> d!1691156 e!3265996))

(declare-fun c!908068 () Bool)

(assert (=> d!1691156 (= c!908068 ((_ is EmptyExpr!14853) lt!2150804))))

(assert (=> d!1691156 (= lt!2150892 e!3265999)))

(declare-fun c!908067 () Bool)

(assert (=> d!1691156 (= c!908067 (isEmpty!32679 s!2326))))

(assert (=> d!1691156 (validRegex!6589 lt!2150804)))

(assert (=> d!1691156 (= (matchR!7038 lt!2150804 s!2326) lt!2150892)))

(declare-fun b!5249578 () Bool)

(assert (=> b!5249578 (= e!3265993 (not (= (head!11254 s!2326) (c!907897 lt!2150804))))))

(declare-fun b!5249579 () Bool)

(assert (=> b!5249579 (= e!3265997 (not lt!2150892))))

(assert (= (and d!1691156 c!908067) b!5249575))

(assert (= (and d!1691156 (not c!908067)) b!5249574))

(assert (= (and d!1691156 c!908068) b!5249570))

(assert (= (and d!1691156 (not c!908068)) b!5249572))

(assert (= (and b!5249572 c!908066) b!5249579))

(assert (= (and b!5249572 (not c!908066)) b!5249569))

(assert (= (and b!5249569 (not res!2227640)) b!5249566))

(assert (= (and b!5249566 res!2227647) b!5249568))

(assert (= (and b!5249568 res!2227644) b!5249576))

(assert (= (and b!5249576 res!2227646) b!5249567))

(assert (= (and b!5249566 (not res!2227642)) b!5249573))

(assert (= (and b!5249573 res!2227645) b!5249577))

(assert (= (and b!5249577 (not res!2227641)) b!5249571))

(assert (= (and b!5249571 (not res!2227643)) b!5249578))

(assert (= (or b!5249570 b!5249568 b!5249577) bm!371987))

(assert (=> b!5249567 m!6292824))

(assert (=> b!5249571 m!6292828))

(assert (=> b!5249571 m!6292828))

(declare-fun m!6292990 () Bool)

(assert (=> b!5249571 m!6292990))

(assert (=> b!5249574 m!6292824))

(assert (=> b!5249574 m!6292824))

(declare-fun m!6292992 () Bool)

(assert (=> b!5249574 m!6292992))

(assert (=> b!5249574 m!6292828))

(assert (=> b!5249574 m!6292992))

(assert (=> b!5249574 m!6292828))

(declare-fun m!6292994 () Bool)

(assert (=> b!5249574 m!6292994))

(assert (=> b!5249578 m!6292824))

(assert (=> b!5249576 m!6292828))

(assert (=> b!5249576 m!6292828))

(assert (=> b!5249576 m!6292990))

(assert (=> bm!371987 m!6292820))

(assert (=> d!1691156 m!6292820))

(declare-fun m!6292996 () Bool)

(assert (=> d!1691156 m!6292996))

(declare-fun m!6292998 () Bool)

(assert (=> b!5249575 m!6292998))

(assert (=> b!5249005 d!1691156))

(declare-fun d!1691172 () Bool)

(assert (=> d!1691172 (= (matchR!7038 lt!2150787 s!2326) (matchRSpec!1956 lt!2150787 s!2326))))

(declare-fun lt!2150898 () Unit!152838)

(declare-fun choose!39115 (Regex!14853 List!60859) Unit!152838)

(assert (=> d!1691172 (= lt!2150898 (choose!39115 lt!2150787 s!2326))))

(assert (=> d!1691172 (validRegex!6589 lt!2150787)))

(assert (=> d!1691172 (= (mainMatchTheorem!1956 lt!2150787 s!2326) lt!2150898)))

(declare-fun bs!1217967 () Bool)

(assert (= bs!1217967 d!1691172))

(assert (=> bs!1217967 m!6292430))

(assert (=> bs!1217967 m!6292420))

(declare-fun m!6293028 () Bool)

(assert (=> bs!1217967 m!6293028))

(declare-fun m!6293030 () Bool)

(assert (=> bs!1217967 m!6293030))

(assert (=> b!5249005 d!1691172))

(declare-fun b!5249589 () Bool)

(declare-fun res!2227655 () Bool)

(declare-fun e!3266006 () Bool)

(assert (=> b!5249589 (=> res!2227655 e!3266006)))

(declare-fun e!3266007 () Bool)

(assert (=> b!5249589 (= res!2227655 e!3266007)))

(declare-fun res!2227660 () Bool)

(assert (=> b!5249589 (=> (not res!2227660) (not e!3266007))))

(declare-fun lt!2150899 () Bool)

(assert (=> b!5249589 (= res!2227660 lt!2150899)))

(declare-fun b!5249590 () Bool)

(assert (=> b!5249590 (= e!3266007 (= (head!11254 s!2326) (c!907897 lt!2150787)))))

(declare-fun b!5249591 () Bool)

(declare-fun res!2227657 () Bool)

(assert (=> b!5249591 (=> (not res!2227657) (not e!3266007))))

(declare-fun call!371993 () Bool)

(assert (=> b!5249591 (= res!2227657 (not call!371993))))

(declare-fun b!5249592 () Bool)

(declare-fun res!2227653 () Bool)

(assert (=> b!5249592 (=> res!2227653 e!3266006)))

(assert (=> b!5249592 (= res!2227653 (not ((_ is ElementMatch!14853) lt!2150787)))))

(declare-fun e!3266009 () Bool)

(assert (=> b!5249592 (= e!3266009 e!3266006)))

(declare-fun b!5249593 () Bool)

(declare-fun e!3266008 () Bool)

(assert (=> b!5249593 (= e!3266008 (= lt!2150899 call!371993))))

(declare-fun bm!371988 () Bool)

(assert (=> bm!371988 (= call!371993 (isEmpty!32679 s!2326))))

(declare-fun b!5249595 () Bool)

(assert (=> b!5249595 (= e!3266008 e!3266009)))

(declare-fun c!908071 () Bool)

(assert (=> b!5249595 (= c!908071 ((_ is EmptyLang!14853) lt!2150787))))

(declare-fun b!5249596 () Bool)

(declare-fun e!3266010 () Bool)

(assert (=> b!5249596 (= e!3266006 e!3266010)))

(declare-fun res!2227658 () Bool)

(assert (=> b!5249596 (=> (not res!2227658) (not e!3266010))))

(assert (=> b!5249596 (= res!2227658 (not lt!2150899))))

(declare-fun b!5249597 () Bool)

(declare-fun e!3266011 () Bool)

(assert (=> b!5249597 (= e!3266011 (matchR!7038 (derivativeStep!4089 lt!2150787 (head!11254 s!2326)) (tail!10351 s!2326)))))

(declare-fun b!5249598 () Bool)

(assert (=> b!5249598 (= e!3266011 (nullable!5022 lt!2150787))))

(declare-fun b!5249599 () Bool)

(declare-fun res!2227659 () Bool)

(assert (=> b!5249599 (=> (not res!2227659) (not e!3266007))))

(assert (=> b!5249599 (= res!2227659 (isEmpty!32679 (tail!10351 s!2326)))))

(declare-fun b!5249600 () Bool)

(declare-fun e!3266005 () Bool)

(assert (=> b!5249600 (= e!3266010 e!3266005)))

(declare-fun res!2227654 () Bool)

(assert (=> b!5249600 (=> res!2227654 e!3266005)))

(assert (=> b!5249600 (= res!2227654 call!371993)))

(declare-fun b!5249594 () Bool)

(declare-fun res!2227656 () Bool)

(assert (=> b!5249594 (=> res!2227656 e!3266005)))

(assert (=> b!5249594 (= res!2227656 (not (isEmpty!32679 (tail!10351 s!2326))))))

(declare-fun d!1691180 () Bool)

(assert (=> d!1691180 e!3266008))

(declare-fun c!908073 () Bool)

(assert (=> d!1691180 (= c!908073 ((_ is EmptyExpr!14853) lt!2150787))))

(assert (=> d!1691180 (= lt!2150899 e!3266011)))

(declare-fun c!908072 () Bool)

(assert (=> d!1691180 (= c!908072 (isEmpty!32679 s!2326))))

(assert (=> d!1691180 (validRegex!6589 lt!2150787)))

(assert (=> d!1691180 (= (matchR!7038 lt!2150787 s!2326) lt!2150899)))

(declare-fun b!5249601 () Bool)

(assert (=> b!5249601 (= e!3266005 (not (= (head!11254 s!2326) (c!907897 lt!2150787))))))

(declare-fun b!5249602 () Bool)

(assert (=> b!5249602 (= e!3266009 (not lt!2150899))))

(assert (= (and d!1691180 c!908072) b!5249598))

(assert (= (and d!1691180 (not c!908072)) b!5249597))

(assert (= (and d!1691180 c!908073) b!5249593))

(assert (= (and d!1691180 (not c!908073)) b!5249595))

(assert (= (and b!5249595 c!908071) b!5249602))

(assert (= (and b!5249595 (not c!908071)) b!5249592))

(assert (= (and b!5249592 (not res!2227653)) b!5249589))

(assert (= (and b!5249589 res!2227660) b!5249591))

(assert (= (and b!5249591 res!2227657) b!5249599))

(assert (= (and b!5249599 res!2227659) b!5249590))

(assert (= (and b!5249589 (not res!2227655)) b!5249596))

(assert (= (and b!5249596 res!2227658) b!5249600))

(assert (= (and b!5249600 (not res!2227654)) b!5249594))

(assert (= (and b!5249594 (not res!2227656)) b!5249601))

(assert (= (or b!5249593 b!5249591 b!5249600) bm!371988))

(assert (=> b!5249590 m!6292824))

(assert (=> b!5249594 m!6292828))

(assert (=> b!5249594 m!6292828))

(assert (=> b!5249594 m!6292990))

(assert (=> b!5249597 m!6292824))

(assert (=> b!5249597 m!6292824))

(declare-fun m!6293032 () Bool)

(assert (=> b!5249597 m!6293032))

(assert (=> b!5249597 m!6292828))

(assert (=> b!5249597 m!6293032))

(assert (=> b!5249597 m!6292828))

(declare-fun m!6293034 () Bool)

(assert (=> b!5249597 m!6293034))

(assert (=> b!5249601 m!6292824))

(assert (=> b!5249599 m!6292828))

(assert (=> b!5249599 m!6292828))

(assert (=> b!5249599 m!6292990))

(assert (=> bm!371988 m!6292820))

(assert (=> d!1691180 m!6292820))

(assert (=> d!1691180 m!6293030))

(declare-fun m!6293036 () Bool)

(assert (=> b!5249598 m!6293036))

(assert (=> b!5249005 d!1691180))

(declare-fun bs!1217976 () Bool)

(declare-fun d!1691182 () Bool)

(assert (= bs!1217976 (and d!1691182 b!5249013)))

(declare-fun lambda!264298 () Int)

(assert (=> bs!1217976 (= lambda!264298 lambda!264257)))

(declare-fun b!5249627 () Bool)

(declare-fun e!3266030 () Regex!14853)

(declare-fun e!3266027 () Regex!14853)

(assert (=> b!5249627 (= e!3266030 e!3266027)))

(declare-fun c!908084 () Bool)

(assert (=> b!5249627 (= c!908084 ((_ is Cons!60734) lt!2150809))))

(declare-fun b!5249628 () Bool)

(declare-fun e!3266031 () Bool)

(declare-fun e!3266029 () Bool)

(assert (=> b!5249628 (= e!3266031 e!3266029)))

(declare-fun c!908082 () Bool)

(assert (=> b!5249628 (= c!908082 (isEmpty!32675 lt!2150809))))

(declare-fun b!5249629 () Bool)

(assert (=> b!5249629 (= e!3266030 (h!67182 lt!2150809))))

(declare-fun b!5249631 () Bool)

(declare-fun lt!2150905 () Regex!14853)

(declare-fun isEmptyExpr!803 (Regex!14853) Bool)

(assert (=> b!5249631 (= e!3266029 (isEmptyExpr!803 lt!2150905))))

(declare-fun b!5249632 () Bool)

(assert (=> b!5249632 (= e!3266027 EmptyExpr!14853)))

(declare-fun b!5249633 () Bool)

(assert (=> b!5249633 (= e!3266027 (Concat!23698 (h!67182 lt!2150809) (generalisedConcat!522 (t!374041 lt!2150809))))))

(declare-fun b!5249634 () Bool)

(declare-fun e!3266028 () Bool)

(assert (=> b!5249634 (= e!3266029 e!3266028)))

(declare-fun c!908085 () Bool)

(declare-fun tail!10352 (List!60858) List!60858)

(assert (=> b!5249634 (= c!908085 (isEmpty!32675 (tail!10352 lt!2150809)))))

(assert (=> d!1691182 e!3266031))

(declare-fun res!2227669 () Bool)

(assert (=> d!1691182 (=> (not res!2227669) (not e!3266031))))

(assert (=> d!1691182 (= res!2227669 (validRegex!6589 lt!2150905))))

(assert (=> d!1691182 (= lt!2150905 e!3266030)))

(declare-fun c!908083 () Bool)

(declare-fun e!3266026 () Bool)

(assert (=> d!1691182 (= c!908083 e!3266026)))

(declare-fun res!2227670 () Bool)

(assert (=> d!1691182 (=> (not res!2227670) (not e!3266026))))

(assert (=> d!1691182 (= res!2227670 ((_ is Cons!60734) lt!2150809))))

(assert (=> d!1691182 (forall!14277 lt!2150809 lambda!264298)))

(assert (=> d!1691182 (= (generalisedConcat!522 lt!2150809) lt!2150905)))

(declare-fun b!5249630 () Bool)

(declare-fun isConcat!326 (Regex!14853) Bool)

(assert (=> b!5249630 (= e!3266028 (isConcat!326 lt!2150905))))

(declare-fun b!5249635 () Bool)

(declare-fun head!11255 (List!60858) Regex!14853)

(assert (=> b!5249635 (= e!3266028 (= lt!2150905 (head!11255 lt!2150809)))))

(declare-fun b!5249636 () Bool)

(assert (=> b!5249636 (= e!3266026 (isEmpty!32675 (t!374041 lt!2150809)))))

(assert (= (and d!1691182 res!2227670) b!5249636))

(assert (= (and d!1691182 c!908083) b!5249629))

(assert (= (and d!1691182 (not c!908083)) b!5249627))

(assert (= (and b!5249627 c!908084) b!5249633))

(assert (= (and b!5249627 (not c!908084)) b!5249632))

(assert (= (and d!1691182 res!2227669) b!5249628))

(assert (= (and b!5249628 c!908082) b!5249631))

(assert (= (and b!5249628 (not c!908082)) b!5249634))

(assert (= (and b!5249634 c!908085) b!5249635))

(assert (= (and b!5249634 (not c!908085)) b!5249630))

(declare-fun m!6293042 () Bool)

(assert (=> d!1691182 m!6293042))

(declare-fun m!6293044 () Bool)

(assert (=> d!1691182 m!6293044))

(declare-fun m!6293046 () Bool)

(assert (=> b!5249636 m!6293046))

(declare-fun m!6293048 () Bool)

(assert (=> b!5249628 m!6293048))

(declare-fun m!6293050 () Bool)

(assert (=> b!5249634 m!6293050))

(assert (=> b!5249634 m!6293050))

(declare-fun m!6293052 () Bool)

(assert (=> b!5249634 m!6293052))

(declare-fun m!6293054 () Bool)

(assert (=> b!5249633 m!6293054))

(declare-fun m!6293056 () Bool)

(assert (=> b!5249635 m!6293056))

(declare-fun m!6293058 () Bool)

(assert (=> b!5249630 m!6293058))

(declare-fun m!6293060 () Bool)

(assert (=> b!5249631 m!6293060))

(assert (=> b!5249005 d!1691182))

(declare-fun bs!1217977 () Bool)

(declare-fun d!1691186 () Bool)

(assert (= bs!1217977 (and d!1691186 b!5249013)))

(declare-fun lambda!264299 () Int)

(assert (=> bs!1217977 (= lambda!264299 lambda!264257)))

(declare-fun bs!1217978 () Bool)

(assert (= bs!1217978 (and d!1691186 d!1691182)))

(assert (=> bs!1217978 (= lambda!264299 lambda!264298)))

(declare-fun b!5249637 () Bool)

(declare-fun e!3266036 () Regex!14853)

(declare-fun e!3266033 () Regex!14853)

(assert (=> b!5249637 (= e!3266036 e!3266033)))

(declare-fun c!908088 () Bool)

(assert (=> b!5249637 (= c!908088 ((_ is Cons!60734) lt!2150810))))

(declare-fun b!5249638 () Bool)

(declare-fun e!3266037 () Bool)

(declare-fun e!3266035 () Bool)

(assert (=> b!5249638 (= e!3266037 e!3266035)))

(declare-fun c!908086 () Bool)

(assert (=> b!5249638 (= c!908086 (isEmpty!32675 lt!2150810))))

(declare-fun b!5249639 () Bool)

(assert (=> b!5249639 (= e!3266036 (h!67182 lt!2150810))))

(declare-fun b!5249641 () Bool)

(declare-fun lt!2150906 () Regex!14853)

(assert (=> b!5249641 (= e!3266035 (isEmptyExpr!803 lt!2150906))))

(declare-fun b!5249642 () Bool)

(assert (=> b!5249642 (= e!3266033 EmptyExpr!14853)))

(declare-fun b!5249643 () Bool)

(assert (=> b!5249643 (= e!3266033 (Concat!23698 (h!67182 lt!2150810) (generalisedConcat!522 (t!374041 lt!2150810))))))

(declare-fun b!5249644 () Bool)

(declare-fun e!3266034 () Bool)

(assert (=> b!5249644 (= e!3266035 e!3266034)))

(declare-fun c!908089 () Bool)

(assert (=> b!5249644 (= c!908089 (isEmpty!32675 (tail!10352 lt!2150810)))))

(assert (=> d!1691186 e!3266037))

(declare-fun res!2227671 () Bool)

(assert (=> d!1691186 (=> (not res!2227671) (not e!3266037))))

(assert (=> d!1691186 (= res!2227671 (validRegex!6589 lt!2150906))))

(assert (=> d!1691186 (= lt!2150906 e!3266036)))

(declare-fun c!908087 () Bool)

(declare-fun e!3266032 () Bool)

(assert (=> d!1691186 (= c!908087 e!3266032)))

(declare-fun res!2227672 () Bool)

(assert (=> d!1691186 (=> (not res!2227672) (not e!3266032))))

(assert (=> d!1691186 (= res!2227672 ((_ is Cons!60734) lt!2150810))))

(assert (=> d!1691186 (forall!14277 lt!2150810 lambda!264299)))

(assert (=> d!1691186 (= (generalisedConcat!522 lt!2150810) lt!2150906)))

(declare-fun b!5249640 () Bool)

(assert (=> b!5249640 (= e!3266034 (isConcat!326 lt!2150906))))

(declare-fun b!5249645 () Bool)

(assert (=> b!5249645 (= e!3266034 (= lt!2150906 (head!11255 lt!2150810)))))

(declare-fun b!5249646 () Bool)

(assert (=> b!5249646 (= e!3266032 (isEmpty!32675 (t!374041 lt!2150810)))))

(assert (= (and d!1691186 res!2227672) b!5249646))

(assert (= (and d!1691186 c!908087) b!5249639))

(assert (= (and d!1691186 (not c!908087)) b!5249637))

(assert (= (and b!5249637 c!908088) b!5249643))

(assert (= (and b!5249637 (not c!908088)) b!5249642))

(assert (= (and d!1691186 res!2227671) b!5249638))

(assert (= (and b!5249638 c!908086) b!5249641))

(assert (= (and b!5249638 (not c!908086)) b!5249644))

(assert (= (and b!5249644 c!908089) b!5249645))

(assert (= (and b!5249644 (not c!908089)) b!5249640))

(declare-fun m!6293062 () Bool)

(assert (=> d!1691186 m!6293062))

(declare-fun m!6293064 () Bool)

(assert (=> d!1691186 m!6293064))

(declare-fun m!6293066 () Bool)

(assert (=> b!5249646 m!6293066))

(declare-fun m!6293068 () Bool)

(assert (=> b!5249638 m!6293068))

(declare-fun m!6293070 () Bool)

(assert (=> b!5249644 m!6293070))

(assert (=> b!5249644 m!6293070))

(declare-fun m!6293072 () Bool)

(assert (=> b!5249644 m!6293072))

(declare-fun m!6293074 () Bool)

(assert (=> b!5249643 m!6293074))

(declare-fun m!6293076 () Bool)

(assert (=> b!5249645 m!6293076))

(declare-fun m!6293078 () Bool)

(assert (=> b!5249640 m!6293078))

(declare-fun m!6293080 () Bool)

(assert (=> b!5249641 m!6293080))

(assert (=> b!5249005 d!1691186))

(declare-fun bs!1217993 () Bool)

(declare-fun b!5249751 () Bool)

(assert (= bs!1217993 (and b!5249751 b!5249022)))

(declare-fun lambda!264310 () Int)

(assert (=> bs!1217993 (not (= lambda!264310 lambda!264254))))

(declare-fun bs!1217994 () Bool)

(assert (= bs!1217994 (and b!5249751 d!1691054)))

(assert (=> bs!1217994 (not (= lambda!264310 lambda!264274))))

(declare-fun bs!1217995 () Bool)

(assert (= bs!1217995 (and b!5249751 d!1691066)))

(assert (=> bs!1217995 (not (= lambda!264310 lambda!264282))))

(assert (=> bs!1217993 (not (= lambda!264310 lambda!264255))))

(assert (=> bs!1217995 (not (= lambda!264310 lambda!264283))))

(assert (=> b!5249751 true))

(assert (=> b!5249751 true))

(declare-fun bs!1217996 () Bool)

(declare-fun b!5249749 () Bool)

(assert (= bs!1217996 (and b!5249749 b!5249022)))

(declare-fun lambda!264311 () Int)

(assert (=> bs!1217996 (not (= lambda!264311 lambda!264254))))

(declare-fun bs!1217997 () Bool)

(assert (= bs!1217997 (and b!5249749 d!1691054)))

(assert (=> bs!1217997 (not (= lambda!264311 lambda!264274))))

(declare-fun bs!1217998 () Bool)

(assert (= bs!1217998 (and b!5249749 b!5249751)))

(assert (=> bs!1217998 (not (= lambda!264311 lambda!264310))))

(declare-fun bs!1217999 () Bool)

(assert (= bs!1217999 (and b!5249749 d!1691066)))

(assert (=> bs!1217999 (not (= lambda!264311 lambda!264282))))

(assert (=> bs!1217996 (= (and (= (regOne!30218 lt!2150787) (regOne!30218 r!7292)) (= (regTwo!30218 lt!2150787) (regTwo!30218 r!7292))) (= lambda!264311 lambda!264255))))

(assert (=> bs!1217999 (= (and (= (regOne!30218 lt!2150787) (regOne!30218 r!7292)) (= (regTwo!30218 lt!2150787) (regTwo!30218 r!7292))) (= lambda!264311 lambda!264283))))

(assert (=> b!5249749 true))

(assert (=> b!5249749 true))

(declare-fun b!5249741 () Bool)

(declare-fun e!3266087 () Bool)

(assert (=> b!5249741 (= e!3266087 (= s!2326 (Cons!60735 (c!907897 lt!2150787) Nil!60735)))))

(declare-fun bm!371993 () Bool)

(declare-fun call!371999 () Bool)

(assert (=> bm!371993 (= call!371999 (isEmpty!32679 s!2326))))

(declare-fun b!5249742 () Bool)

(declare-fun res!2227698 () Bool)

(declare-fun e!3266086 () Bool)

(assert (=> b!5249742 (=> res!2227698 e!3266086)))

(assert (=> b!5249742 (= res!2227698 call!371999)))

(declare-fun e!3266088 () Bool)

(assert (=> b!5249742 (= e!3266088 e!3266086)))

(declare-fun b!5249743 () Bool)

(declare-fun e!3266089 () Bool)

(declare-fun e!3266084 () Bool)

(assert (=> b!5249743 (= e!3266089 e!3266084)))

(declare-fun res!2227697 () Bool)

(assert (=> b!5249743 (= res!2227697 (not ((_ is EmptyLang!14853) lt!2150787)))))

(assert (=> b!5249743 (=> (not res!2227697) (not e!3266084))))

(declare-fun b!5249744 () Bool)

(declare-fun c!908101 () Bool)

(assert (=> b!5249744 (= c!908101 ((_ is ElementMatch!14853) lt!2150787))))

(assert (=> b!5249744 (= e!3266084 e!3266087)))

(declare-fun bm!371994 () Bool)

(declare-fun call!371998 () Bool)

(declare-fun c!908098 () Bool)

(assert (=> bm!371994 (= call!371998 (Exists!2034 (ite c!908098 lambda!264310 lambda!264311)))))

(declare-fun b!5249746 () Bool)

(assert (=> b!5249746 (= e!3266089 call!371999)))

(declare-fun b!5249747 () Bool)

(declare-fun e!3266085 () Bool)

(declare-fun e!3266083 () Bool)

(assert (=> b!5249747 (= e!3266085 e!3266083)))

(declare-fun res!2227699 () Bool)

(assert (=> b!5249747 (= res!2227699 (matchRSpec!1956 (regOne!30219 lt!2150787) s!2326))))

(assert (=> b!5249747 (=> res!2227699 e!3266083)))

(declare-fun b!5249748 () Bool)

(declare-fun c!908099 () Bool)

(assert (=> b!5249748 (= c!908099 ((_ is Union!14853) lt!2150787))))

(assert (=> b!5249748 (= e!3266087 e!3266085)))

(assert (=> b!5249749 (= e!3266088 call!371998)))

(declare-fun b!5249750 () Bool)

(assert (=> b!5249750 (= e!3266085 e!3266088)))

(assert (=> b!5249750 (= c!908098 ((_ is Star!14853) lt!2150787))))

(assert (=> b!5249751 (= e!3266086 call!371998)))

(declare-fun d!1691188 () Bool)

(declare-fun c!908100 () Bool)

(assert (=> d!1691188 (= c!908100 ((_ is EmptyExpr!14853) lt!2150787))))

(assert (=> d!1691188 (= (matchRSpec!1956 lt!2150787 s!2326) e!3266089)))

(declare-fun b!5249745 () Bool)

(assert (=> b!5249745 (= e!3266083 (matchRSpec!1956 (regTwo!30219 lt!2150787) s!2326))))

(assert (= (and d!1691188 c!908100) b!5249746))

(assert (= (and d!1691188 (not c!908100)) b!5249743))

(assert (= (and b!5249743 res!2227697) b!5249744))

(assert (= (and b!5249744 c!908101) b!5249741))

(assert (= (and b!5249744 (not c!908101)) b!5249748))

(assert (= (and b!5249748 c!908099) b!5249747))

(assert (= (and b!5249748 (not c!908099)) b!5249750))

(assert (= (and b!5249747 (not res!2227699)) b!5249745))

(assert (= (and b!5249750 c!908098) b!5249742))

(assert (= (and b!5249750 (not c!908098)) b!5249749))

(assert (= (and b!5249742 (not res!2227698)) b!5249751))

(assert (= (or b!5249751 b!5249749) bm!371994))

(assert (= (or b!5249746 b!5249742) bm!371993))

(assert (=> bm!371993 m!6292820))

(declare-fun m!6293096 () Bool)

(assert (=> bm!371994 m!6293096))

(declare-fun m!6293098 () Bool)

(assert (=> b!5249747 m!6293098))

(declare-fun m!6293100 () Bool)

(assert (=> b!5249745 m!6293100))

(assert (=> b!5249005 d!1691188))

(declare-fun d!1691200 () Bool)

(declare-fun c!908102 () Bool)

(assert (=> d!1691200 (= c!908102 (isEmpty!32679 s!2326))))

(declare-fun e!3266090 () Bool)

(assert (=> d!1691200 (= (matchZipper!1097 lt!2150806 s!2326) e!3266090)))

(declare-fun b!5249752 () Bool)

(assert (=> b!5249752 (= e!3266090 (nullableZipper!1268 lt!2150806))))

(declare-fun b!5249753 () Bool)

(assert (=> b!5249753 (= e!3266090 (matchZipper!1097 (derivationStepZipper!1112 lt!2150806 (head!11254 s!2326)) (tail!10351 s!2326)))))

(assert (= (and d!1691200 c!908102) b!5249752))

(assert (= (and d!1691200 (not c!908102)) b!5249753))

(assert (=> d!1691200 m!6292820))

(declare-fun m!6293102 () Bool)

(assert (=> b!5249752 m!6293102))

(assert (=> b!5249753 m!6292824))

(assert (=> b!5249753 m!6292824))

(declare-fun m!6293104 () Bool)

(assert (=> b!5249753 m!6293104))

(assert (=> b!5249753 m!6292828))

(assert (=> b!5249753 m!6293104))

(assert (=> b!5249753 m!6292828))

(declare-fun m!6293106 () Bool)

(assert (=> b!5249753 m!6293106))

(assert (=> b!5249005 d!1691200))

(declare-fun d!1691202 () Bool)

(assert (=> d!1691202 (= (matchR!7038 lt!2150787 s!2326) (matchZipper!1097 lt!2150783 s!2326))))

(declare-fun lt!2150912 () Unit!152838)

(declare-fun choose!39118 ((InoxSet Context!8474) List!60860 Regex!14853 List!60859) Unit!152838)

(assert (=> d!1691202 (= lt!2150912 (choose!39118 lt!2150783 lt!2150791 lt!2150787 s!2326))))

(assert (=> d!1691202 (validRegex!6589 lt!2150787)))

(assert (=> d!1691202 (= (theoremZipperRegexEquiv!287 lt!2150783 lt!2150791 lt!2150787 s!2326) lt!2150912)))

(declare-fun bs!1218000 () Bool)

(assert (= bs!1218000 d!1691202))

(assert (=> bs!1218000 m!6292430))

(assert (=> bs!1218000 m!6292470))

(declare-fun m!6293108 () Bool)

(assert (=> bs!1218000 m!6293108))

(assert (=> bs!1218000 m!6293030))

(assert (=> b!5249005 d!1691202))

(declare-fun d!1691204 () Bool)

(assert (=> d!1691204 (= (matchR!7038 lt!2150804 s!2326) (matchZipper!1097 lt!2150806 s!2326))))

(declare-fun lt!2150913 () Unit!152838)

(assert (=> d!1691204 (= lt!2150913 (choose!39118 lt!2150806 lt!2150772 lt!2150804 s!2326))))

(assert (=> d!1691204 (validRegex!6589 lt!2150804)))

(assert (=> d!1691204 (= (theoremZipperRegexEquiv!287 lt!2150806 lt!2150772 lt!2150804 s!2326) lt!2150913)))

(declare-fun bs!1218001 () Bool)

(assert (= bs!1218001 d!1691204))

(assert (=> bs!1218001 m!6292426))

(assert (=> bs!1218001 m!6292422))

(declare-fun m!6293110 () Bool)

(assert (=> bs!1218001 m!6293110))

(assert (=> bs!1218001 m!6292996))

(assert (=> b!5249005 d!1691204))

(declare-fun d!1691206 () Bool)

(assert (=> d!1691206 (= (matchR!7038 lt!2150804 s!2326) (matchRSpec!1956 lt!2150804 s!2326))))

(declare-fun lt!2150914 () Unit!152838)

(assert (=> d!1691206 (= lt!2150914 (choose!39115 lt!2150804 s!2326))))

(assert (=> d!1691206 (validRegex!6589 lt!2150804)))

(assert (=> d!1691206 (= (mainMatchTheorem!1956 lt!2150804 s!2326) lt!2150914)))

(declare-fun bs!1218002 () Bool)

(assert (= bs!1218002 d!1691206))

(assert (=> bs!1218002 m!6292426))

(assert (=> bs!1218002 m!6292438))

(declare-fun m!6293112 () Bool)

(assert (=> bs!1218002 m!6293112))

(assert (=> bs!1218002 m!6292996))

(assert (=> b!5249005 d!1691206))

(declare-fun bs!1218003 () Bool)

(declare-fun b!5249764 () Bool)

(assert (= bs!1218003 (and b!5249764 b!5249022)))

(declare-fun lambda!264312 () Int)

(assert (=> bs!1218003 (not (= lambda!264312 lambda!264254))))

(declare-fun bs!1218004 () Bool)

(assert (= bs!1218004 (and b!5249764 d!1691054)))

(assert (=> bs!1218004 (not (= lambda!264312 lambda!264274))))

(declare-fun bs!1218005 () Bool)

(assert (= bs!1218005 (and b!5249764 b!5249751)))

(assert (=> bs!1218005 (= (and (= (reg!15182 lt!2150804) (reg!15182 lt!2150787)) (= lt!2150804 lt!2150787)) (= lambda!264312 lambda!264310))))

(declare-fun bs!1218006 () Bool)

(assert (= bs!1218006 (and b!5249764 d!1691066)))

(assert (=> bs!1218006 (not (= lambda!264312 lambda!264282))))

(assert (=> bs!1218003 (not (= lambda!264312 lambda!264255))))

(declare-fun bs!1218007 () Bool)

(assert (= bs!1218007 (and b!5249764 b!5249749)))

(assert (=> bs!1218007 (not (= lambda!264312 lambda!264311))))

(assert (=> bs!1218006 (not (= lambda!264312 lambda!264283))))

(assert (=> b!5249764 true))

(assert (=> b!5249764 true))

(declare-fun bs!1218008 () Bool)

(declare-fun b!5249762 () Bool)

(assert (= bs!1218008 (and b!5249762 b!5249022)))

(declare-fun lambda!264313 () Int)

(assert (=> bs!1218008 (not (= lambda!264313 lambda!264254))))

(declare-fun bs!1218009 () Bool)

(assert (= bs!1218009 (and b!5249762 d!1691054)))

(assert (=> bs!1218009 (not (= lambda!264313 lambda!264274))))

(declare-fun bs!1218010 () Bool)

(assert (= bs!1218010 (and b!5249762 b!5249764)))

(assert (=> bs!1218010 (not (= lambda!264313 lambda!264312))))

(declare-fun bs!1218011 () Bool)

(assert (= bs!1218011 (and b!5249762 b!5249751)))

(assert (=> bs!1218011 (not (= lambda!264313 lambda!264310))))

(declare-fun bs!1218012 () Bool)

(assert (= bs!1218012 (and b!5249762 d!1691066)))

(assert (=> bs!1218012 (not (= lambda!264313 lambda!264282))))

(assert (=> bs!1218008 (= (and (= (regOne!30218 lt!2150804) (regOne!30218 r!7292)) (= (regTwo!30218 lt!2150804) (regTwo!30218 r!7292))) (= lambda!264313 lambda!264255))))

(declare-fun bs!1218013 () Bool)

(assert (= bs!1218013 (and b!5249762 b!5249749)))

(assert (=> bs!1218013 (= (and (= (regOne!30218 lt!2150804) (regOne!30218 lt!2150787)) (= (regTwo!30218 lt!2150804) (regTwo!30218 lt!2150787))) (= lambda!264313 lambda!264311))))

(assert (=> bs!1218012 (= (and (= (regOne!30218 lt!2150804) (regOne!30218 r!7292)) (= (regTwo!30218 lt!2150804) (regTwo!30218 r!7292))) (= lambda!264313 lambda!264283))))

(assert (=> b!5249762 true))

(assert (=> b!5249762 true))

(declare-fun b!5249754 () Bool)

(declare-fun e!3266095 () Bool)

(assert (=> b!5249754 (= e!3266095 (= s!2326 (Cons!60735 (c!907897 lt!2150804) Nil!60735)))))

(declare-fun bm!371995 () Bool)

(declare-fun call!372001 () Bool)

(assert (=> bm!371995 (= call!372001 (isEmpty!32679 s!2326))))

(declare-fun b!5249755 () Bool)

(declare-fun res!2227701 () Bool)

(declare-fun e!3266094 () Bool)

(assert (=> b!5249755 (=> res!2227701 e!3266094)))

(assert (=> b!5249755 (= res!2227701 call!372001)))

(declare-fun e!3266096 () Bool)

(assert (=> b!5249755 (= e!3266096 e!3266094)))

(declare-fun b!5249756 () Bool)

(declare-fun e!3266097 () Bool)

(declare-fun e!3266092 () Bool)

(assert (=> b!5249756 (= e!3266097 e!3266092)))

(declare-fun res!2227700 () Bool)

(assert (=> b!5249756 (= res!2227700 (not ((_ is EmptyLang!14853) lt!2150804)))))

(assert (=> b!5249756 (=> (not res!2227700) (not e!3266092))))

(declare-fun b!5249757 () Bool)

(declare-fun c!908106 () Bool)

(assert (=> b!5249757 (= c!908106 ((_ is ElementMatch!14853) lt!2150804))))

(assert (=> b!5249757 (= e!3266092 e!3266095)))

(declare-fun c!908103 () Bool)

(declare-fun bm!371996 () Bool)

(declare-fun call!372000 () Bool)

(assert (=> bm!371996 (= call!372000 (Exists!2034 (ite c!908103 lambda!264312 lambda!264313)))))

(declare-fun b!5249759 () Bool)

(assert (=> b!5249759 (= e!3266097 call!372001)))

(declare-fun b!5249760 () Bool)

(declare-fun e!3266093 () Bool)

(declare-fun e!3266091 () Bool)

(assert (=> b!5249760 (= e!3266093 e!3266091)))

(declare-fun res!2227702 () Bool)

(assert (=> b!5249760 (= res!2227702 (matchRSpec!1956 (regOne!30219 lt!2150804) s!2326))))

(assert (=> b!5249760 (=> res!2227702 e!3266091)))

(declare-fun b!5249761 () Bool)

(declare-fun c!908104 () Bool)

(assert (=> b!5249761 (= c!908104 ((_ is Union!14853) lt!2150804))))

(assert (=> b!5249761 (= e!3266095 e!3266093)))

(assert (=> b!5249762 (= e!3266096 call!372000)))

(declare-fun b!5249763 () Bool)

(assert (=> b!5249763 (= e!3266093 e!3266096)))

(assert (=> b!5249763 (= c!908103 ((_ is Star!14853) lt!2150804))))

(assert (=> b!5249764 (= e!3266094 call!372000)))

(declare-fun d!1691208 () Bool)

(declare-fun c!908105 () Bool)

(assert (=> d!1691208 (= c!908105 ((_ is EmptyExpr!14853) lt!2150804))))

(assert (=> d!1691208 (= (matchRSpec!1956 lt!2150804 s!2326) e!3266097)))

(declare-fun b!5249758 () Bool)

(assert (=> b!5249758 (= e!3266091 (matchRSpec!1956 (regTwo!30219 lt!2150804) s!2326))))

(assert (= (and d!1691208 c!908105) b!5249759))

(assert (= (and d!1691208 (not c!908105)) b!5249756))

(assert (= (and b!5249756 res!2227700) b!5249757))

(assert (= (and b!5249757 c!908106) b!5249754))

(assert (= (and b!5249757 (not c!908106)) b!5249761))

(assert (= (and b!5249761 c!908104) b!5249760))

(assert (= (and b!5249761 (not c!908104)) b!5249763))

(assert (= (and b!5249760 (not res!2227702)) b!5249758))

(assert (= (and b!5249763 c!908103) b!5249755))

(assert (= (and b!5249763 (not c!908103)) b!5249762))

(assert (= (and b!5249755 (not res!2227701)) b!5249764))

(assert (= (or b!5249764 b!5249762) bm!371996))

(assert (= (or b!5249759 b!5249755) bm!371995))

(assert (=> bm!371995 m!6292820))

(declare-fun m!6293114 () Bool)

(assert (=> bm!371996 m!6293114))

(declare-fun m!6293116 () Bool)

(assert (=> b!5249760 m!6293116))

(declare-fun m!6293118 () Bool)

(assert (=> b!5249758 m!6293118))

(assert (=> b!5249005 d!1691208))

(declare-fun bs!1218014 () Bool)

(declare-fun d!1691210 () Bool)

(assert (= bs!1218014 (and d!1691210 b!5249013)))

(declare-fun lambda!264316 () Int)

(assert (=> bs!1218014 (= lambda!264316 lambda!264257)))

(declare-fun bs!1218015 () Bool)

(assert (= bs!1218015 (and d!1691210 d!1691182)))

(assert (=> bs!1218015 (= lambda!264316 lambda!264298)))

(declare-fun bs!1218016 () Bool)

(assert (= bs!1218016 (and d!1691210 d!1691186)))

(assert (=> bs!1218016 (= lambda!264316 lambda!264299)))

(assert (=> d!1691210 (= (inv!80379 (h!67184 zl!343)) (forall!14277 (exprs!4737 (h!67184 zl!343)) lambda!264316))))

(declare-fun bs!1218017 () Bool)

(assert (= bs!1218017 d!1691210))

(declare-fun m!6293120 () Bool)

(assert (=> bs!1218017 m!6293120))

(assert (=> b!5249024 d!1691210))

(declare-fun d!1691212 () Bool)

(declare-fun lt!2150917 () Int)

(assert (=> d!1691212 (>= lt!2150917 0)))

(declare-fun e!3266100 () Int)

(assert (=> d!1691212 (= lt!2150917 e!3266100)))

(declare-fun c!908109 () Bool)

(assert (=> d!1691212 (= c!908109 ((_ is Cons!60736) lt!2150772))))

(assert (=> d!1691212 (= (zipperDepthTotal!34 lt!2150772) lt!2150917)))

(declare-fun b!5249769 () Bool)

(declare-fun contextDepthTotal!25 (Context!8474) Int)

(assert (=> b!5249769 (= e!3266100 (+ (contextDepthTotal!25 (h!67184 lt!2150772)) (zipperDepthTotal!34 (t!374043 lt!2150772))))))

(declare-fun b!5249770 () Bool)

(assert (=> b!5249770 (= e!3266100 0)))

(assert (= (and d!1691212 c!908109) b!5249769))

(assert (= (and d!1691212 (not c!908109)) b!5249770))

(declare-fun m!6293122 () Bool)

(assert (=> b!5249769 m!6293122))

(declare-fun m!6293124 () Bool)

(assert (=> b!5249769 m!6293124))

(assert (=> b!5249026 d!1691212))

(declare-fun bs!1218018 () Bool)

(declare-fun d!1691214 () Bool)

(assert (= bs!1218018 (and d!1691214 b!5249013)))

(declare-fun lambda!264317 () Int)

(assert (=> bs!1218018 (= lambda!264317 lambda!264257)))

(declare-fun bs!1218019 () Bool)

(assert (= bs!1218019 (and d!1691214 d!1691182)))

(assert (=> bs!1218019 (= lambda!264317 lambda!264298)))

(declare-fun bs!1218020 () Bool)

(assert (= bs!1218020 (and d!1691214 d!1691186)))

(assert (=> bs!1218020 (= lambda!264317 lambda!264299)))

(declare-fun bs!1218021 () Bool)

(assert (= bs!1218021 (and d!1691214 d!1691210)))

(assert (=> bs!1218021 (= lambda!264317 lambda!264316)))

(declare-fun b!5249771 () Bool)

(declare-fun e!3266105 () Regex!14853)

(declare-fun e!3266102 () Regex!14853)

(assert (=> b!5249771 (= e!3266105 e!3266102)))

(declare-fun c!908112 () Bool)

(assert (=> b!5249771 (= c!908112 ((_ is Cons!60734) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249772 () Bool)

(declare-fun e!3266106 () Bool)

(declare-fun e!3266104 () Bool)

(assert (=> b!5249772 (= e!3266106 e!3266104)))

(declare-fun c!908110 () Bool)

(assert (=> b!5249772 (= c!908110 (isEmpty!32675 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249773 () Bool)

(assert (=> b!5249773 (= e!3266105 (h!67182 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249775 () Bool)

(declare-fun lt!2150918 () Regex!14853)

(assert (=> b!5249775 (= e!3266104 (isEmptyExpr!803 lt!2150918))))

(declare-fun b!5249776 () Bool)

(assert (=> b!5249776 (= e!3266102 EmptyExpr!14853)))

(declare-fun b!5249777 () Bool)

(assert (=> b!5249777 (= e!3266102 (Concat!23698 (h!67182 (t!374041 (exprs!4737 (h!67184 zl!343)))) (generalisedConcat!522 (t!374041 (t!374041 (exprs!4737 (h!67184 zl!343)))))))))

(declare-fun b!5249778 () Bool)

(declare-fun e!3266103 () Bool)

(assert (=> b!5249778 (= e!3266104 e!3266103)))

(declare-fun c!908113 () Bool)

(assert (=> b!5249778 (= c!908113 (isEmpty!32675 (tail!10352 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(assert (=> d!1691214 e!3266106))

(declare-fun res!2227703 () Bool)

(assert (=> d!1691214 (=> (not res!2227703) (not e!3266106))))

(assert (=> d!1691214 (= res!2227703 (validRegex!6589 lt!2150918))))

(assert (=> d!1691214 (= lt!2150918 e!3266105)))

(declare-fun c!908111 () Bool)

(declare-fun e!3266101 () Bool)

(assert (=> d!1691214 (= c!908111 e!3266101)))

(declare-fun res!2227704 () Bool)

(assert (=> d!1691214 (=> (not res!2227704) (not e!3266101))))

(assert (=> d!1691214 (= res!2227704 ((_ is Cons!60734) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> d!1691214 (forall!14277 (t!374041 (exprs!4737 (h!67184 zl!343))) lambda!264317)))

(assert (=> d!1691214 (= (generalisedConcat!522 (t!374041 (exprs!4737 (h!67184 zl!343)))) lt!2150918)))

(declare-fun b!5249774 () Bool)

(assert (=> b!5249774 (= e!3266103 (isConcat!326 lt!2150918))))

(declare-fun b!5249779 () Bool)

(assert (=> b!5249779 (= e!3266103 (= lt!2150918 (head!11255 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249780 () Bool)

(assert (=> b!5249780 (= e!3266101 (isEmpty!32675 (t!374041 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(assert (= (and d!1691214 res!2227704) b!5249780))

(assert (= (and d!1691214 c!908111) b!5249773))

(assert (= (and d!1691214 (not c!908111)) b!5249771))

(assert (= (and b!5249771 c!908112) b!5249777))

(assert (= (and b!5249771 (not c!908112)) b!5249776))

(assert (= (and d!1691214 res!2227703) b!5249772))

(assert (= (and b!5249772 c!908110) b!5249775))

(assert (= (and b!5249772 (not c!908110)) b!5249778))

(assert (= (and b!5249778 c!908113) b!5249779))

(assert (= (and b!5249778 (not c!908113)) b!5249774))

(declare-fun m!6293126 () Bool)

(assert (=> d!1691214 m!6293126))

(declare-fun m!6293128 () Bool)

(assert (=> d!1691214 m!6293128))

(declare-fun m!6293130 () Bool)

(assert (=> b!5249780 m!6293130))

(assert (=> b!5249772 m!6292410))

(declare-fun m!6293132 () Bool)

(assert (=> b!5249778 m!6293132))

(assert (=> b!5249778 m!6293132))

(declare-fun m!6293134 () Bool)

(assert (=> b!5249778 m!6293134))

(declare-fun m!6293136 () Bool)

(assert (=> b!5249777 m!6293136))

(declare-fun m!6293138 () Bool)

(assert (=> b!5249779 m!6293138))

(declare-fun m!6293140 () Bool)

(assert (=> b!5249774 m!6293140))

(declare-fun m!6293142 () Bool)

(assert (=> b!5249775 m!6293142))

(assert (=> b!5249025 d!1691214))

(declare-fun d!1691216 () Bool)

(declare-fun lt!2150921 () Regex!14853)

(assert (=> d!1691216 (validRegex!6589 lt!2150921)))

(assert (=> d!1691216 (= lt!2150921 (generalisedUnion!782 (unfocusZipperList!295 zl!343)))))

(assert (=> d!1691216 (= (unfocusZipper!595 zl!343) lt!2150921)))

(declare-fun bs!1218022 () Bool)

(assert (= bs!1218022 d!1691216))

(declare-fun m!6293144 () Bool)

(assert (=> bs!1218022 m!6293144))

(assert (=> bs!1218022 m!6292496))

(assert (=> bs!1218022 m!6292496))

(assert (=> bs!1218022 m!6292498))

(assert (=> b!5249037 d!1691216))

(declare-fun d!1691218 () Bool)

(declare-fun lt!2150922 () Int)

(assert (=> d!1691218 (>= lt!2150922 0)))

(declare-fun e!3266107 () Int)

(assert (=> d!1691218 (= lt!2150922 e!3266107)))

(declare-fun c!908114 () Bool)

(assert (=> d!1691218 (= c!908114 ((_ is Cons!60736) zl!343))))

(assert (=> d!1691218 (= (zipperDepthTotal!34 zl!343) lt!2150922)))

(declare-fun b!5249781 () Bool)

(assert (=> b!5249781 (= e!3266107 (+ (contextDepthTotal!25 (h!67184 zl!343)) (zipperDepthTotal!34 (t!374043 zl!343))))))

(declare-fun b!5249782 () Bool)

(assert (=> b!5249782 (= e!3266107 0)))

(assert (= (and d!1691218 c!908114) b!5249781))

(assert (= (and d!1691218 (not c!908114)) b!5249782))

(declare-fun m!6293146 () Bool)

(assert (=> b!5249781 m!6293146))

(declare-fun m!6293148 () Bool)

(assert (=> b!5249781 m!6293148))

(assert (=> b!5249017 d!1691218))

(declare-fun d!1691220 () Bool)

(declare-fun lt!2150923 () Int)

(assert (=> d!1691220 (>= lt!2150923 0)))

(declare-fun e!3266108 () Int)

(assert (=> d!1691220 (= lt!2150923 e!3266108)))

(declare-fun c!908115 () Bool)

(assert (=> d!1691220 (= c!908115 ((_ is Cons!60736) lt!2150791))))

(assert (=> d!1691220 (= (zipperDepthTotal!34 lt!2150791) lt!2150923)))

(declare-fun b!5249783 () Bool)

(assert (=> b!5249783 (= e!3266108 (+ (contextDepthTotal!25 (h!67184 lt!2150791)) (zipperDepthTotal!34 (t!374043 lt!2150791))))))

(declare-fun b!5249784 () Bool)

(assert (=> b!5249784 (= e!3266108 0)))

(assert (= (and d!1691220 c!908115) b!5249783))

(assert (= (and d!1691220 (not c!908115)) b!5249784))

(declare-fun m!6293150 () Bool)

(assert (=> b!5249783 m!6293150))

(declare-fun m!6293152 () Bool)

(assert (=> b!5249783 m!6293152))

(assert (=> b!5249017 d!1691220))

(assert (=> b!5248998 d!1691096))

(declare-fun e!3266109 () Bool)

(declare-fun d!1691222 () Bool)

(assert (=> d!1691222 (= (matchZipper!1097 ((_ map or) lt!2150769 lt!2150788) (t!374042 s!2326)) e!3266109)))

(declare-fun res!2227705 () Bool)

(assert (=> d!1691222 (=> res!2227705 e!3266109)))

(assert (=> d!1691222 (= res!2227705 (matchZipper!1097 lt!2150769 (t!374042 s!2326)))))

(declare-fun lt!2150924 () Unit!152838)

(assert (=> d!1691222 (= lt!2150924 (choose!39114 lt!2150769 lt!2150788 (t!374042 s!2326)))))

(assert (=> d!1691222 (= (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150769 lt!2150788 (t!374042 s!2326)) lt!2150924)))

(declare-fun b!5249785 () Bool)

(assert (=> b!5249785 (= e!3266109 (matchZipper!1097 lt!2150788 (t!374042 s!2326)))))

(assert (= (and d!1691222 (not res!2227705)) b!5249785))

(assert (=> d!1691222 m!6292406))

(assert (=> d!1691222 m!6292404))

(declare-fun m!6293154 () Bool)

(assert (=> d!1691222 m!6293154))

(assert (=> b!5249785 m!6292442))

(assert (=> b!5249019 d!1691222))

(declare-fun d!1691224 () Bool)

(declare-fun c!908116 () Bool)

(assert (=> d!1691224 (= c!908116 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3266110 () Bool)

(assert (=> d!1691224 (= (matchZipper!1097 lt!2150769 (t!374042 s!2326)) e!3266110)))

(declare-fun b!5249786 () Bool)

(assert (=> b!5249786 (= e!3266110 (nullableZipper!1268 lt!2150769))))

(declare-fun b!5249787 () Bool)

(assert (=> b!5249787 (= e!3266110 (matchZipper!1097 (derivationStepZipper!1112 lt!2150769 (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691224 c!908116) b!5249786))

(assert (= (and d!1691224 (not c!908116)) b!5249787))

(assert (=> d!1691224 m!6292794))

(declare-fun m!6293156 () Bool)

(assert (=> b!5249786 m!6293156))

(assert (=> b!5249787 m!6292798))

(assert (=> b!5249787 m!6292798))

(declare-fun m!6293158 () Bool)

(assert (=> b!5249787 m!6293158))

(assert (=> b!5249787 m!6292802))

(assert (=> b!5249787 m!6293158))

(assert (=> b!5249787 m!6292802))

(declare-fun m!6293160 () Bool)

(assert (=> b!5249787 m!6293160))

(assert (=> b!5249019 d!1691224))

(declare-fun d!1691226 () Bool)

(declare-fun c!908117 () Bool)

(assert (=> d!1691226 (= c!908117 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3266111 () Bool)

(assert (=> d!1691226 (= (matchZipper!1097 ((_ map or) lt!2150769 lt!2150788) (t!374042 s!2326)) e!3266111)))

(declare-fun b!5249788 () Bool)

(assert (=> b!5249788 (= e!3266111 (nullableZipper!1268 ((_ map or) lt!2150769 lt!2150788)))))

(declare-fun b!5249789 () Bool)

(assert (=> b!5249789 (= e!3266111 (matchZipper!1097 (derivationStepZipper!1112 ((_ map or) lt!2150769 lt!2150788) (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691226 c!908117) b!5249788))

(assert (= (and d!1691226 (not c!908117)) b!5249789))

(assert (=> d!1691226 m!6292794))

(declare-fun m!6293162 () Bool)

(assert (=> b!5249788 m!6293162))

(assert (=> b!5249789 m!6292798))

(assert (=> b!5249789 m!6292798))

(declare-fun m!6293164 () Bool)

(assert (=> b!5249789 m!6293164))

(assert (=> b!5249789 m!6292802))

(assert (=> b!5249789 m!6293164))

(assert (=> b!5249789 m!6292802))

(declare-fun m!6293166 () Bool)

(assert (=> b!5249789 m!6293166))

(assert (=> b!5249019 d!1691226))

(declare-fun b!5249812 () Bool)

(declare-fun e!3266128 () Bool)

(assert (=> b!5249812 (= e!3266128 (nullable!5022 (regOne!30218 (regTwo!30219 (regOne!30218 r!7292)))))))

(declare-fun b!5249813 () Bool)

(declare-fun c!908131 () Bool)

(assert (=> b!5249813 (= c!908131 ((_ is Star!14853) (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun e!3266126 () (InoxSet Context!8474))

(declare-fun e!3266124 () (InoxSet Context!8474))

(assert (=> b!5249813 (= e!3266126 e!3266124)))

(declare-fun b!5249814 () Bool)

(declare-fun c!908128 () Bool)

(assert (=> b!5249814 (= c!908128 e!3266128)))

(declare-fun res!2227708 () Bool)

(assert (=> b!5249814 (=> (not res!2227708) (not e!3266128))))

(assert (=> b!5249814 (= res!2227708 ((_ is Concat!23698) (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun e!3266127 () (InoxSet Context!8474))

(declare-fun e!3266125 () (InoxSet Context!8474))

(assert (=> b!5249814 (= e!3266127 e!3266125)))

(declare-fun call!372017 () List!60858)

(declare-fun call!372015 () (InoxSet Context!8474))

(declare-fun bm!372009 () Bool)

(declare-fun c!908130 () Bool)

(assert (=> bm!372009 (= call!372015 (derivationStepZipperDown!301 (ite c!908130 (regOne!30219 (regTwo!30219 (regOne!30218 r!7292))) (regOne!30218 (regTwo!30219 (regOne!30218 r!7292)))) (ite c!908130 lt!2150781 (Context!8475 call!372017)) (h!67183 s!2326)))))

(declare-fun c!908129 () Bool)

(declare-fun bm!372010 () Bool)

(declare-fun $colon$colon!1318 (List!60858 Regex!14853) List!60858)

(assert (=> bm!372010 (= call!372017 ($colon$colon!1318 (exprs!4737 lt!2150781) (ite (or c!908128 c!908129) (regTwo!30218 (regTwo!30219 (regOne!30218 r!7292))) (regTwo!30219 (regOne!30218 r!7292)))))))

(declare-fun b!5249815 () Bool)

(assert (=> b!5249815 (= e!3266125 e!3266126)))

(assert (=> b!5249815 (= c!908129 ((_ is Concat!23698) (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun bm!372011 () Bool)

(declare-fun call!372016 () (InoxSet Context!8474))

(declare-fun call!372019 () (InoxSet Context!8474))

(assert (=> bm!372011 (= call!372016 call!372019)))

(declare-fun b!5249816 () Bool)

(assert (=> b!5249816 (= e!3266124 call!372016)))

(declare-fun b!5249817 () Bool)

(declare-fun e!3266129 () (InoxSet Context!8474))

(assert (=> b!5249817 (= e!3266129 e!3266127)))

(assert (=> b!5249817 (= c!908130 ((_ is Union!14853) (regTwo!30219 (regOne!30218 r!7292))))))

(declare-fun b!5249818 () Bool)

(assert (=> b!5249818 (= e!3266124 ((as const (Array Context!8474 Bool)) false))))

(declare-fun bm!372012 () Bool)

(declare-fun call!372014 () List!60858)

(assert (=> bm!372012 (= call!372014 call!372017)))

(declare-fun b!5249820 () Bool)

(assert (=> b!5249820 (= e!3266126 call!372016)))

(declare-fun call!372018 () (InoxSet Context!8474))

(declare-fun bm!372013 () Bool)

(assert (=> bm!372013 (= call!372018 (derivationStepZipperDown!301 (ite c!908130 (regTwo!30219 (regTwo!30219 (regOne!30218 r!7292))) (ite c!908128 (regTwo!30218 (regTwo!30219 (regOne!30218 r!7292))) (ite c!908129 (regOne!30218 (regTwo!30219 (regOne!30218 r!7292))) (reg!15182 (regTwo!30219 (regOne!30218 r!7292)))))) (ite (or c!908130 c!908128) lt!2150781 (Context!8475 call!372014)) (h!67183 s!2326)))))

(declare-fun d!1691228 () Bool)

(declare-fun c!908132 () Bool)

(assert (=> d!1691228 (= c!908132 (and ((_ is ElementMatch!14853) (regTwo!30219 (regOne!30218 r!7292))) (= (c!907897 (regTwo!30219 (regOne!30218 r!7292))) (h!67183 s!2326))))))

(assert (=> d!1691228 (= (derivationStepZipperDown!301 (regTwo!30219 (regOne!30218 r!7292)) lt!2150781 (h!67183 s!2326)) e!3266129)))

(declare-fun b!5249819 () Bool)

(assert (=> b!5249819 (= e!3266127 ((_ map or) call!372015 call!372018))))

(declare-fun b!5249821 () Bool)

(assert (=> b!5249821 (= e!3266129 (store ((as const (Array Context!8474 Bool)) false) lt!2150781 true))))

(declare-fun b!5249822 () Bool)

(assert (=> b!5249822 (= e!3266125 ((_ map or) call!372015 call!372019))))

(declare-fun bm!372014 () Bool)

(assert (=> bm!372014 (= call!372019 call!372018)))

(assert (= (and d!1691228 c!908132) b!5249821))

(assert (= (and d!1691228 (not c!908132)) b!5249817))

(assert (= (and b!5249817 c!908130) b!5249819))

(assert (= (and b!5249817 (not c!908130)) b!5249814))

(assert (= (and b!5249814 res!2227708) b!5249812))

(assert (= (and b!5249814 c!908128) b!5249822))

(assert (= (and b!5249814 (not c!908128)) b!5249815))

(assert (= (and b!5249815 c!908129) b!5249820))

(assert (= (and b!5249815 (not c!908129)) b!5249813))

(assert (= (and b!5249813 c!908131) b!5249816))

(assert (= (and b!5249813 (not c!908131)) b!5249818))

(assert (= (or b!5249820 b!5249816) bm!372012))

(assert (= (or b!5249820 b!5249816) bm!372011))

(assert (= (or b!5249822 bm!372012) bm!372010))

(assert (= (or b!5249822 bm!372011) bm!372014))

(assert (= (or b!5249819 bm!372014) bm!372013))

(assert (= (or b!5249819 b!5249822) bm!372009))

(declare-fun m!6293168 () Bool)

(assert (=> bm!372009 m!6293168))

(declare-fun m!6293170 () Bool)

(assert (=> b!5249812 m!6293170))

(declare-fun m!6293172 () Bool)

(assert (=> b!5249821 m!6293172))

(declare-fun m!6293174 () Bool)

(assert (=> bm!372010 m!6293174))

(declare-fun m!6293176 () Bool)

(assert (=> bm!372013 m!6293176))

(assert (=> b!5249000 d!1691228))

(declare-fun b!5249823 () Bool)

(declare-fun e!3266134 () Bool)

(assert (=> b!5249823 (= e!3266134 (nullable!5022 (regOne!30218 (regOne!30219 (regOne!30218 r!7292)))))))

(declare-fun b!5249824 () Bool)

(declare-fun c!908136 () Bool)

(assert (=> b!5249824 (= c!908136 ((_ is Star!14853) (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun e!3266132 () (InoxSet Context!8474))

(declare-fun e!3266130 () (InoxSet Context!8474))

(assert (=> b!5249824 (= e!3266132 e!3266130)))

(declare-fun b!5249825 () Bool)

(declare-fun c!908133 () Bool)

(assert (=> b!5249825 (= c!908133 e!3266134)))

(declare-fun res!2227709 () Bool)

(assert (=> b!5249825 (=> (not res!2227709) (not e!3266134))))

(assert (=> b!5249825 (= res!2227709 ((_ is Concat!23698) (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun e!3266133 () (InoxSet Context!8474))

(declare-fun e!3266131 () (InoxSet Context!8474))

(assert (=> b!5249825 (= e!3266133 e!3266131)))

(declare-fun call!372023 () List!60858)

(declare-fun c!908135 () Bool)

(declare-fun bm!372015 () Bool)

(declare-fun call!372021 () (InoxSet Context!8474))

(assert (=> bm!372015 (= call!372021 (derivationStepZipperDown!301 (ite c!908135 (regOne!30219 (regOne!30219 (regOne!30218 r!7292))) (regOne!30218 (regOne!30219 (regOne!30218 r!7292)))) (ite c!908135 lt!2150781 (Context!8475 call!372023)) (h!67183 s!2326)))))

(declare-fun bm!372016 () Bool)

(declare-fun c!908134 () Bool)

(assert (=> bm!372016 (= call!372023 ($colon$colon!1318 (exprs!4737 lt!2150781) (ite (or c!908133 c!908134) (regTwo!30218 (regOne!30219 (regOne!30218 r!7292))) (regOne!30219 (regOne!30218 r!7292)))))))

(declare-fun b!5249826 () Bool)

(assert (=> b!5249826 (= e!3266131 e!3266132)))

(assert (=> b!5249826 (= c!908134 ((_ is Concat!23698) (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun bm!372017 () Bool)

(declare-fun call!372022 () (InoxSet Context!8474))

(declare-fun call!372025 () (InoxSet Context!8474))

(assert (=> bm!372017 (= call!372022 call!372025)))

(declare-fun b!5249827 () Bool)

(assert (=> b!5249827 (= e!3266130 call!372022)))

(declare-fun b!5249828 () Bool)

(declare-fun e!3266135 () (InoxSet Context!8474))

(assert (=> b!5249828 (= e!3266135 e!3266133)))

(assert (=> b!5249828 (= c!908135 ((_ is Union!14853) (regOne!30219 (regOne!30218 r!7292))))))

(declare-fun b!5249829 () Bool)

(assert (=> b!5249829 (= e!3266130 ((as const (Array Context!8474 Bool)) false))))

(declare-fun bm!372018 () Bool)

(declare-fun call!372020 () List!60858)

(assert (=> bm!372018 (= call!372020 call!372023)))

(declare-fun b!5249831 () Bool)

(assert (=> b!5249831 (= e!3266132 call!372022)))

(declare-fun bm!372019 () Bool)

(declare-fun call!372024 () (InoxSet Context!8474))

(assert (=> bm!372019 (= call!372024 (derivationStepZipperDown!301 (ite c!908135 (regTwo!30219 (regOne!30219 (regOne!30218 r!7292))) (ite c!908133 (regTwo!30218 (regOne!30219 (regOne!30218 r!7292))) (ite c!908134 (regOne!30218 (regOne!30219 (regOne!30218 r!7292))) (reg!15182 (regOne!30219 (regOne!30218 r!7292)))))) (ite (or c!908135 c!908133) lt!2150781 (Context!8475 call!372020)) (h!67183 s!2326)))))

(declare-fun d!1691230 () Bool)

(declare-fun c!908137 () Bool)

(assert (=> d!1691230 (= c!908137 (and ((_ is ElementMatch!14853) (regOne!30219 (regOne!30218 r!7292))) (= (c!907897 (regOne!30219 (regOne!30218 r!7292))) (h!67183 s!2326))))))

(assert (=> d!1691230 (= (derivationStepZipperDown!301 (regOne!30219 (regOne!30218 r!7292)) lt!2150781 (h!67183 s!2326)) e!3266135)))

(declare-fun b!5249830 () Bool)

(assert (=> b!5249830 (= e!3266133 ((_ map or) call!372021 call!372024))))

(declare-fun b!5249832 () Bool)

(assert (=> b!5249832 (= e!3266135 (store ((as const (Array Context!8474 Bool)) false) lt!2150781 true))))

(declare-fun b!5249833 () Bool)

(assert (=> b!5249833 (= e!3266131 ((_ map or) call!372021 call!372025))))

(declare-fun bm!372020 () Bool)

(assert (=> bm!372020 (= call!372025 call!372024)))

(assert (= (and d!1691230 c!908137) b!5249832))

(assert (= (and d!1691230 (not c!908137)) b!5249828))

(assert (= (and b!5249828 c!908135) b!5249830))

(assert (= (and b!5249828 (not c!908135)) b!5249825))

(assert (= (and b!5249825 res!2227709) b!5249823))

(assert (= (and b!5249825 c!908133) b!5249833))

(assert (= (and b!5249825 (not c!908133)) b!5249826))

(assert (= (and b!5249826 c!908134) b!5249831))

(assert (= (and b!5249826 (not c!908134)) b!5249824))

(assert (= (and b!5249824 c!908136) b!5249827))

(assert (= (and b!5249824 (not c!908136)) b!5249829))

(assert (= (or b!5249831 b!5249827) bm!372018))

(assert (= (or b!5249831 b!5249827) bm!372017))

(assert (= (or b!5249833 bm!372018) bm!372016))

(assert (= (or b!5249833 bm!372017) bm!372020))

(assert (= (or b!5249830 bm!372020) bm!372019))

(assert (= (or b!5249830 b!5249833) bm!372015))

(declare-fun m!6293178 () Bool)

(assert (=> bm!372015 m!6293178))

(declare-fun m!6293180 () Bool)

(assert (=> b!5249823 m!6293180))

(assert (=> b!5249832 m!6293172))

(declare-fun m!6293182 () Bool)

(assert (=> bm!372016 m!6293182))

(declare-fun m!6293184 () Bool)

(assert (=> bm!372019 m!6293184))

(assert (=> b!5249000 d!1691230))

(declare-fun d!1691232 () Bool)

(declare-fun e!3266138 () Bool)

(assert (=> d!1691232 e!3266138))

(declare-fun res!2227712 () Bool)

(assert (=> d!1691232 (=> (not res!2227712) (not e!3266138))))

(declare-fun lt!2150927 () List!60860)

(declare-fun noDuplicate!1224 (List!60860) Bool)

(assert (=> d!1691232 (= res!2227712 (noDuplicate!1224 lt!2150927))))

(declare-fun choose!39119 ((InoxSet Context!8474)) List!60860)

(assert (=> d!1691232 (= lt!2150927 (choose!39119 z!1189))))

(assert (=> d!1691232 (= (toList!8637 z!1189) lt!2150927)))

(declare-fun b!5249836 () Bool)

(declare-fun content!10791 (List!60860) (InoxSet Context!8474))

(assert (=> b!5249836 (= e!3266138 (= (content!10791 lt!2150927) z!1189))))

(assert (= (and d!1691232 res!2227712) b!5249836))

(declare-fun m!6293186 () Bool)

(assert (=> d!1691232 m!6293186))

(declare-fun m!6293188 () Bool)

(assert (=> d!1691232 m!6293188))

(declare-fun m!6293190 () Bool)

(assert (=> b!5249836 m!6293190))

(assert (=> b!5248999 d!1691232))

(declare-fun d!1691234 () Bool)

(declare-fun res!2227727 () Bool)

(declare-fun e!3266155 () Bool)

(assert (=> d!1691234 (=> res!2227727 e!3266155)))

(assert (=> d!1691234 (= res!2227727 ((_ is ElementMatch!14853) r!7292))))

(assert (=> d!1691234 (= (validRegex!6589 r!7292) e!3266155)))

(declare-fun b!5249855 () Bool)

(declare-fun e!3266156 () Bool)

(assert (=> b!5249855 (= e!3266155 e!3266156)))

(declare-fun c!908143 () Bool)

(assert (=> b!5249855 (= c!908143 ((_ is Star!14853) r!7292))))

(declare-fun bm!372027 () Bool)

(declare-fun call!372034 () Bool)

(declare-fun c!908142 () Bool)

(assert (=> bm!372027 (= call!372034 (validRegex!6589 (ite c!908142 (regOne!30219 r!7292) (regOne!30218 r!7292))))))

(declare-fun b!5249856 () Bool)

(declare-fun res!2227725 () Bool)

(declare-fun e!3266154 () Bool)

(assert (=> b!5249856 (=> res!2227725 e!3266154)))

(assert (=> b!5249856 (= res!2227725 (not ((_ is Concat!23698) r!7292)))))

(declare-fun e!3266153 () Bool)

(assert (=> b!5249856 (= e!3266153 e!3266154)))

(declare-fun bm!372028 () Bool)

(declare-fun call!372033 () Bool)

(assert (=> bm!372028 (= call!372033 (validRegex!6589 (ite c!908143 (reg!15182 r!7292) (ite c!908142 (regTwo!30219 r!7292) (regTwo!30218 r!7292)))))))

(declare-fun b!5249857 () Bool)

(declare-fun e!3266159 () Bool)

(assert (=> b!5249857 (= e!3266154 e!3266159)))

(declare-fun res!2227724 () Bool)

(assert (=> b!5249857 (=> (not res!2227724) (not e!3266159))))

(assert (=> b!5249857 (= res!2227724 call!372034)))

(declare-fun b!5249858 () Bool)

(declare-fun e!3266157 () Bool)

(assert (=> b!5249858 (= e!3266157 call!372033)))

(declare-fun b!5249859 () Bool)

(declare-fun res!2227723 () Bool)

(declare-fun e!3266158 () Bool)

(assert (=> b!5249859 (=> (not res!2227723) (not e!3266158))))

(assert (=> b!5249859 (= res!2227723 call!372034)))

(assert (=> b!5249859 (= e!3266153 e!3266158)))

(declare-fun bm!372029 () Bool)

(declare-fun call!372032 () Bool)

(assert (=> bm!372029 (= call!372032 call!372033)))

(declare-fun b!5249860 () Bool)

(assert (=> b!5249860 (= e!3266156 e!3266157)))

(declare-fun res!2227726 () Bool)

(assert (=> b!5249860 (= res!2227726 (not (nullable!5022 (reg!15182 r!7292))))))

(assert (=> b!5249860 (=> (not res!2227726) (not e!3266157))))

(declare-fun b!5249861 () Bool)

(assert (=> b!5249861 (= e!3266156 e!3266153)))

(assert (=> b!5249861 (= c!908142 ((_ is Union!14853) r!7292))))

(declare-fun b!5249862 () Bool)

(assert (=> b!5249862 (= e!3266159 call!372032)))

(declare-fun b!5249863 () Bool)

(assert (=> b!5249863 (= e!3266158 call!372032)))

(assert (= (and d!1691234 (not res!2227727)) b!5249855))

(assert (= (and b!5249855 c!908143) b!5249860))

(assert (= (and b!5249855 (not c!908143)) b!5249861))

(assert (= (and b!5249860 res!2227726) b!5249858))

(assert (= (and b!5249861 c!908142) b!5249859))

(assert (= (and b!5249861 (not c!908142)) b!5249856))

(assert (= (and b!5249859 res!2227723) b!5249863))

(assert (= (and b!5249856 (not res!2227725)) b!5249857))

(assert (= (and b!5249857 res!2227724) b!5249862))

(assert (= (or b!5249863 b!5249862) bm!372029))

(assert (= (or b!5249859 b!5249857) bm!372027))

(assert (= (or b!5249858 bm!372029) bm!372028))

(declare-fun m!6293192 () Bool)

(assert (=> bm!372027 m!6293192))

(declare-fun m!6293194 () Bool)

(assert (=> bm!372028 m!6293194))

(declare-fun m!6293196 () Bool)

(assert (=> b!5249860 m!6293196))

(assert (=> start!554698 d!1691234))

(declare-fun bs!1218023 () Bool)

(declare-fun b!5249874 () Bool)

(assert (= bs!1218023 (and b!5249874 b!5249022)))

(declare-fun lambda!264318 () Int)

(assert (=> bs!1218023 (not (= lambda!264318 lambda!264254))))

(declare-fun bs!1218024 () Bool)

(assert (= bs!1218024 (and b!5249874 d!1691054)))

(assert (=> bs!1218024 (not (= lambda!264318 lambda!264274))))

(declare-fun bs!1218025 () Bool)

(assert (= bs!1218025 (and b!5249874 b!5249764)))

(assert (=> bs!1218025 (= (and (= (reg!15182 r!7292) (reg!15182 lt!2150804)) (= r!7292 lt!2150804)) (= lambda!264318 lambda!264312))))

(declare-fun bs!1218026 () Bool)

(assert (= bs!1218026 (and b!5249874 b!5249751)))

(assert (=> bs!1218026 (= (and (= (reg!15182 r!7292) (reg!15182 lt!2150787)) (= r!7292 lt!2150787)) (= lambda!264318 lambda!264310))))

(declare-fun bs!1218027 () Bool)

(assert (= bs!1218027 (and b!5249874 b!5249762)))

(assert (=> bs!1218027 (not (= lambda!264318 lambda!264313))))

(declare-fun bs!1218028 () Bool)

(assert (= bs!1218028 (and b!5249874 d!1691066)))

(assert (=> bs!1218028 (not (= lambda!264318 lambda!264282))))

(assert (=> bs!1218023 (not (= lambda!264318 lambda!264255))))

(declare-fun bs!1218029 () Bool)

(assert (= bs!1218029 (and b!5249874 b!5249749)))

(assert (=> bs!1218029 (not (= lambda!264318 lambda!264311))))

(assert (=> bs!1218028 (not (= lambda!264318 lambda!264283))))

(assert (=> b!5249874 true))

(assert (=> b!5249874 true))

(declare-fun bs!1218030 () Bool)

(declare-fun b!5249872 () Bool)

(assert (= bs!1218030 (and b!5249872 b!5249022)))

(declare-fun lambda!264319 () Int)

(assert (=> bs!1218030 (not (= lambda!264319 lambda!264254))))

(declare-fun bs!1218031 () Bool)

(assert (= bs!1218031 (and b!5249872 d!1691054)))

(assert (=> bs!1218031 (not (= lambda!264319 lambda!264274))))

(declare-fun bs!1218032 () Bool)

(assert (= bs!1218032 (and b!5249872 b!5249764)))

(assert (=> bs!1218032 (not (= lambda!264319 lambda!264312))))

(declare-fun bs!1218033 () Bool)

(assert (= bs!1218033 (and b!5249872 b!5249874)))

(assert (=> bs!1218033 (not (= lambda!264319 lambda!264318))))

(declare-fun bs!1218034 () Bool)

(assert (= bs!1218034 (and b!5249872 b!5249751)))

(assert (=> bs!1218034 (not (= lambda!264319 lambda!264310))))

(declare-fun bs!1218035 () Bool)

(assert (= bs!1218035 (and b!5249872 b!5249762)))

(assert (=> bs!1218035 (= (and (= (regOne!30218 r!7292) (regOne!30218 lt!2150804)) (= (regTwo!30218 r!7292) (regTwo!30218 lt!2150804))) (= lambda!264319 lambda!264313))))

(declare-fun bs!1218036 () Bool)

(assert (= bs!1218036 (and b!5249872 d!1691066)))

(assert (=> bs!1218036 (not (= lambda!264319 lambda!264282))))

(assert (=> bs!1218030 (= lambda!264319 lambda!264255)))

(declare-fun bs!1218037 () Bool)

(assert (= bs!1218037 (and b!5249872 b!5249749)))

(assert (=> bs!1218037 (= (and (= (regOne!30218 r!7292) (regOne!30218 lt!2150787)) (= (regTwo!30218 r!7292) (regTwo!30218 lt!2150787))) (= lambda!264319 lambda!264311))))

(assert (=> bs!1218036 (= lambda!264319 lambda!264283)))

(assert (=> b!5249872 true))

(assert (=> b!5249872 true))

(declare-fun b!5249864 () Bool)

(declare-fun e!3266164 () Bool)

(assert (=> b!5249864 (= e!3266164 (= s!2326 (Cons!60735 (c!907897 r!7292) Nil!60735)))))

(declare-fun bm!372030 () Bool)

(declare-fun call!372036 () Bool)

(assert (=> bm!372030 (= call!372036 (isEmpty!32679 s!2326))))

(declare-fun b!5249865 () Bool)

(declare-fun res!2227729 () Bool)

(declare-fun e!3266163 () Bool)

(assert (=> b!5249865 (=> res!2227729 e!3266163)))

(assert (=> b!5249865 (= res!2227729 call!372036)))

(declare-fun e!3266165 () Bool)

(assert (=> b!5249865 (= e!3266165 e!3266163)))

(declare-fun b!5249866 () Bool)

(declare-fun e!3266166 () Bool)

(declare-fun e!3266161 () Bool)

(assert (=> b!5249866 (= e!3266166 e!3266161)))

(declare-fun res!2227728 () Bool)

(assert (=> b!5249866 (= res!2227728 (not ((_ is EmptyLang!14853) r!7292)))))

(assert (=> b!5249866 (=> (not res!2227728) (not e!3266161))))

(declare-fun b!5249867 () Bool)

(declare-fun c!908147 () Bool)

(assert (=> b!5249867 (= c!908147 ((_ is ElementMatch!14853) r!7292))))

(assert (=> b!5249867 (= e!3266161 e!3266164)))

(declare-fun call!372035 () Bool)

(declare-fun bm!372031 () Bool)

(declare-fun c!908144 () Bool)

(assert (=> bm!372031 (= call!372035 (Exists!2034 (ite c!908144 lambda!264318 lambda!264319)))))

(declare-fun b!5249869 () Bool)

(assert (=> b!5249869 (= e!3266166 call!372036)))

(declare-fun b!5249870 () Bool)

(declare-fun e!3266162 () Bool)

(declare-fun e!3266160 () Bool)

(assert (=> b!5249870 (= e!3266162 e!3266160)))

(declare-fun res!2227730 () Bool)

(assert (=> b!5249870 (= res!2227730 (matchRSpec!1956 (regOne!30219 r!7292) s!2326))))

(assert (=> b!5249870 (=> res!2227730 e!3266160)))

(declare-fun b!5249871 () Bool)

(declare-fun c!908145 () Bool)

(assert (=> b!5249871 (= c!908145 ((_ is Union!14853) r!7292))))

(assert (=> b!5249871 (= e!3266164 e!3266162)))

(assert (=> b!5249872 (= e!3266165 call!372035)))

(declare-fun b!5249873 () Bool)

(assert (=> b!5249873 (= e!3266162 e!3266165)))

(assert (=> b!5249873 (= c!908144 ((_ is Star!14853) r!7292))))

(assert (=> b!5249874 (= e!3266163 call!372035)))

(declare-fun d!1691236 () Bool)

(declare-fun c!908146 () Bool)

(assert (=> d!1691236 (= c!908146 ((_ is EmptyExpr!14853) r!7292))))

(assert (=> d!1691236 (= (matchRSpec!1956 r!7292 s!2326) e!3266166)))

(declare-fun b!5249868 () Bool)

(assert (=> b!5249868 (= e!3266160 (matchRSpec!1956 (regTwo!30219 r!7292) s!2326))))

(assert (= (and d!1691236 c!908146) b!5249869))

(assert (= (and d!1691236 (not c!908146)) b!5249866))

(assert (= (and b!5249866 res!2227728) b!5249867))

(assert (= (and b!5249867 c!908147) b!5249864))

(assert (= (and b!5249867 (not c!908147)) b!5249871))

(assert (= (and b!5249871 c!908145) b!5249870))

(assert (= (and b!5249871 (not c!908145)) b!5249873))

(assert (= (and b!5249870 (not res!2227730)) b!5249868))

(assert (= (and b!5249873 c!908144) b!5249865))

(assert (= (and b!5249873 (not c!908144)) b!5249872))

(assert (= (and b!5249865 (not res!2227729)) b!5249874))

(assert (= (or b!5249874 b!5249872) bm!372031))

(assert (= (or b!5249869 b!5249865) bm!372030))

(assert (=> bm!372030 m!6292820))

(declare-fun m!6293198 () Bool)

(assert (=> bm!372031 m!6293198))

(declare-fun m!6293200 () Bool)

(assert (=> b!5249870 m!6293200))

(declare-fun m!6293202 () Bool)

(assert (=> b!5249868 m!6293202))

(assert (=> b!5249012 d!1691236))

(declare-fun b!5249875 () Bool)

(declare-fun res!2227733 () Bool)

(declare-fun e!3266168 () Bool)

(assert (=> b!5249875 (=> res!2227733 e!3266168)))

(declare-fun e!3266169 () Bool)

(assert (=> b!5249875 (= res!2227733 e!3266169)))

(declare-fun res!2227738 () Bool)

(assert (=> b!5249875 (=> (not res!2227738) (not e!3266169))))

(declare-fun lt!2150928 () Bool)

(assert (=> b!5249875 (= res!2227738 lt!2150928)))

(declare-fun b!5249876 () Bool)

(assert (=> b!5249876 (= e!3266169 (= (head!11254 s!2326) (c!907897 r!7292)))))

(declare-fun b!5249877 () Bool)

(declare-fun res!2227735 () Bool)

(assert (=> b!5249877 (=> (not res!2227735) (not e!3266169))))

(declare-fun call!372037 () Bool)

(assert (=> b!5249877 (= res!2227735 (not call!372037))))

(declare-fun b!5249878 () Bool)

(declare-fun res!2227731 () Bool)

(assert (=> b!5249878 (=> res!2227731 e!3266168)))

(assert (=> b!5249878 (= res!2227731 (not ((_ is ElementMatch!14853) r!7292)))))

(declare-fun e!3266171 () Bool)

(assert (=> b!5249878 (= e!3266171 e!3266168)))

(declare-fun b!5249879 () Bool)

(declare-fun e!3266170 () Bool)

(assert (=> b!5249879 (= e!3266170 (= lt!2150928 call!372037))))

(declare-fun bm!372032 () Bool)

(assert (=> bm!372032 (= call!372037 (isEmpty!32679 s!2326))))

(declare-fun b!5249881 () Bool)

(assert (=> b!5249881 (= e!3266170 e!3266171)))

(declare-fun c!908148 () Bool)

(assert (=> b!5249881 (= c!908148 ((_ is EmptyLang!14853) r!7292))))

(declare-fun b!5249882 () Bool)

(declare-fun e!3266172 () Bool)

(assert (=> b!5249882 (= e!3266168 e!3266172)))

(declare-fun res!2227736 () Bool)

(assert (=> b!5249882 (=> (not res!2227736) (not e!3266172))))

(assert (=> b!5249882 (= res!2227736 (not lt!2150928))))

(declare-fun b!5249883 () Bool)

(declare-fun e!3266173 () Bool)

(assert (=> b!5249883 (= e!3266173 (matchR!7038 (derivativeStep!4089 r!7292 (head!11254 s!2326)) (tail!10351 s!2326)))))

(declare-fun b!5249884 () Bool)

(assert (=> b!5249884 (= e!3266173 (nullable!5022 r!7292))))

(declare-fun b!5249885 () Bool)

(declare-fun res!2227737 () Bool)

(assert (=> b!5249885 (=> (not res!2227737) (not e!3266169))))

(assert (=> b!5249885 (= res!2227737 (isEmpty!32679 (tail!10351 s!2326)))))

(declare-fun b!5249886 () Bool)

(declare-fun e!3266167 () Bool)

(assert (=> b!5249886 (= e!3266172 e!3266167)))

(declare-fun res!2227732 () Bool)

(assert (=> b!5249886 (=> res!2227732 e!3266167)))

(assert (=> b!5249886 (= res!2227732 call!372037)))

(declare-fun b!5249880 () Bool)

(declare-fun res!2227734 () Bool)

(assert (=> b!5249880 (=> res!2227734 e!3266167)))

(assert (=> b!5249880 (= res!2227734 (not (isEmpty!32679 (tail!10351 s!2326))))))

(declare-fun d!1691238 () Bool)

(assert (=> d!1691238 e!3266170))

(declare-fun c!908150 () Bool)

(assert (=> d!1691238 (= c!908150 ((_ is EmptyExpr!14853) r!7292))))

(assert (=> d!1691238 (= lt!2150928 e!3266173)))

(declare-fun c!908149 () Bool)

(assert (=> d!1691238 (= c!908149 (isEmpty!32679 s!2326))))

(assert (=> d!1691238 (validRegex!6589 r!7292)))

(assert (=> d!1691238 (= (matchR!7038 r!7292 s!2326) lt!2150928)))

(declare-fun b!5249887 () Bool)

(assert (=> b!5249887 (= e!3266167 (not (= (head!11254 s!2326) (c!907897 r!7292))))))

(declare-fun b!5249888 () Bool)

(assert (=> b!5249888 (= e!3266171 (not lt!2150928))))

(assert (= (and d!1691238 c!908149) b!5249884))

(assert (= (and d!1691238 (not c!908149)) b!5249883))

(assert (= (and d!1691238 c!908150) b!5249879))

(assert (= (and d!1691238 (not c!908150)) b!5249881))

(assert (= (and b!5249881 c!908148) b!5249888))

(assert (= (and b!5249881 (not c!908148)) b!5249878))

(assert (= (and b!5249878 (not res!2227731)) b!5249875))

(assert (= (and b!5249875 res!2227738) b!5249877))

(assert (= (and b!5249877 res!2227735) b!5249885))

(assert (= (and b!5249885 res!2227737) b!5249876))

(assert (= (and b!5249875 (not res!2227733)) b!5249882))

(assert (= (and b!5249882 res!2227736) b!5249886))

(assert (= (and b!5249886 (not res!2227732)) b!5249880))

(assert (= (and b!5249880 (not res!2227734)) b!5249887))

(assert (= (or b!5249879 b!5249877 b!5249886) bm!372032))

(assert (=> b!5249876 m!6292824))

(assert (=> b!5249880 m!6292828))

(assert (=> b!5249880 m!6292828))

(assert (=> b!5249880 m!6292990))

(assert (=> b!5249883 m!6292824))

(assert (=> b!5249883 m!6292824))

(declare-fun m!6293204 () Bool)

(assert (=> b!5249883 m!6293204))

(assert (=> b!5249883 m!6292828))

(assert (=> b!5249883 m!6293204))

(assert (=> b!5249883 m!6292828))

(declare-fun m!6293206 () Bool)

(assert (=> b!5249883 m!6293206))

(assert (=> b!5249887 m!6292824))

(assert (=> b!5249885 m!6292828))

(assert (=> b!5249885 m!6292828))

(assert (=> b!5249885 m!6292990))

(assert (=> bm!372032 m!6292820))

(assert (=> d!1691238 m!6292820))

(assert (=> d!1691238 m!6292522))

(declare-fun m!6293208 () Bool)

(assert (=> b!5249884 m!6293208))

(assert (=> b!5249012 d!1691238))

(declare-fun d!1691240 () Bool)

(assert (=> d!1691240 (= (matchR!7038 r!7292 s!2326) (matchRSpec!1956 r!7292 s!2326))))

(declare-fun lt!2150929 () Unit!152838)

(assert (=> d!1691240 (= lt!2150929 (choose!39115 r!7292 s!2326))))

(assert (=> d!1691240 (validRegex!6589 r!7292)))

(assert (=> d!1691240 (= (mainMatchTheorem!1956 r!7292 s!2326) lt!2150929)))

(declare-fun bs!1218038 () Bool)

(assert (= bs!1218038 d!1691240))

(assert (=> bs!1218038 m!6292452))

(assert (=> bs!1218038 m!6292450))

(declare-fun m!6293210 () Bool)

(assert (=> bs!1218038 m!6293210))

(assert (=> bs!1218038 m!6292522))

(assert (=> b!5249012 d!1691240))

(declare-fun bs!1218039 () Bool)

(declare-fun d!1691242 () Bool)

(assert (= bs!1218039 (and d!1691242 d!1691214)))

(declare-fun lambda!264322 () Int)

(assert (=> bs!1218039 (= lambda!264322 lambda!264317)))

(declare-fun bs!1218040 () Bool)

(assert (= bs!1218040 (and d!1691242 d!1691210)))

(assert (=> bs!1218040 (= lambda!264322 lambda!264316)))

(declare-fun bs!1218041 () Bool)

(assert (= bs!1218041 (and d!1691242 d!1691186)))

(assert (=> bs!1218041 (= lambda!264322 lambda!264299)))

(declare-fun bs!1218042 () Bool)

(assert (= bs!1218042 (and d!1691242 d!1691182)))

(assert (=> bs!1218042 (= lambda!264322 lambda!264298)))

(declare-fun bs!1218043 () Bool)

(assert (= bs!1218043 (and d!1691242 b!5249013)))

(assert (=> bs!1218043 (= lambda!264322 lambda!264257)))

(declare-fun b!5249909 () Bool)

(declare-fun e!3266191 () Bool)

(assert (=> b!5249909 (= e!3266191 (isEmpty!32675 (t!374041 (unfocusZipperList!295 zl!343))))))

(declare-fun e!3266187 () Bool)

(assert (=> d!1691242 e!3266187))

(declare-fun res!2227743 () Bool)

(assert (=> d!1691242 (=> (not res!2227743) (not e!3266187))))

(declare-fun lt!2150932 () Regex!14853)

(assert (=> d!1691242 (= res!2227743 (validRegex!6589 lt!2150932))))

(declare-fun e!3266188 () Regex!14853)

(assert (=> d!1691242 (= lt!2150932 e!3266188)))

(declare-fun c!908162 () Bool)

(assert (=> d!1691242 (= c!908162 e!3266191)))

(declare-fun res!2227744 () Bool)

(assert (=> d!1691242 (=> (not res!2227744) (not e!3266191))))

(assert (=> d!1691242 (= res!2227744 ((_ is Cons!60734) (unfocusZipperList!295 zl!343)))))

(assert (=> d!1691242 (forall!14277 (unfocusZipperList!295 zl!343) lambda!264322)))

(assert (=> d!1691242 (= (generalisedUnion!782 (unfocusZipperList!295 zl!343)) lt!2150932)))

(declare-fun b!5249910 () Bool)

(declare-fun e!3266186 () Bool)

(declare-fun isEmptyLang!812 (Regex!14853) Bool)

(assert (=> b!5249910 (= e!3266186 (isEmptyLang!812 lt!2150932))))

(declare-fun b!5249911 () Bool)

(declare-fun e!3266189 () Bool)

(assert (=> b!5249911 (= e!3266186 e!3266189)))

(declare-fun c!908161 () Bool)

(assert (=> b!5249911 (= c!908161 (isEmpty!32675 (tail!10352 (unfocusZipperList!295 zl!343))))))

(declare-fun b!5249912 () Bool)

(assert (=> b!5249912 (= e!3266187 e!3266186)))

(declare-fun c!908160 () Bool)

(assert (=> b!5249912 (= c!908160 (isEmpty!32675 (unfocusZipperList!295 zl!343)))))

(declare-fun b!5249913 () Bool)

(declare-fun e!3266190 () Regex!14853)

(assert (=> b!5249913 (= e!3266188 e!3266190)))

(declare-fun c!908159 () Bool)

(assert (=> b!5249913 (= c!908159 ((_ is Cons!60734) (unfocusZipperList!295 zl!343)))))

(declare-fun b!5249914 () Bool)

(declare-fun isUnion!244 (Regex!14853) Bool)

(assert (=> b!5249914 (= e!3266189 (isUnion!244 lt!2150932))))

(declare-fun b!5249915 () Bool)

(assert (=> b!5249915 (= e!3266190 (Union!14853 (h!67182 (unfocusZipperList!295 zl!343)) (generalisedUnion!782 (t!374041 (unfocusZipperList!295 zl!343)))))))

(declare-fun b!5249916 () Bool)

(assert (=> b!5249916 (= e!3266190 EmptyLang!14853)))

(declare-fun b!5249917 () Bool)

(assert (=> b!5249917 (= e!3266188 (h!67182 (unfocusZipperList!295 zl!343)))))

(declare-fun b!5249918 () Bool)

(assert (=> b!5249918 (= e!3266189 (= lt!2150932 (head!11255 (unfocusZipperList!295 zl!343))))))

(assert (= (and d!1691242 res!2227744) b!5249909))

(assert (= (and d!1691242 c!908162) b!5249917))

(assert (= (and d!1691242 (not c!908162)) b!5249913))

(assert (= (and b!5249913 c!908159) b!5249915))

(assert (= (and b!5249913 (not c!908159)) b!5249916))

(assert (= (and d!1691242 res!2227743) b!5249912))

(assert (= (and b!5249912 c!908160) b!5249910))

(assert (= (and b!5249912 (not c!908160)) b!5249911))

(assert (= (and b!5249911 c!908161) b!5249918))

(assert (= (and b!5249911 (not c!908161)) b!5249914))

(declare-fun m!6293212 () Bool)

(assert (=> b!5249910 m!6293212))

(declare-fun m!6293214 () Bool)

(assert (=> b!5249909 m!6293214))

(assert (=> b!5249911 m!6292496))

(declare-fun m!6293216 () Bool)

(assert (=> b!5249911 m!6293216))

(assert (=> b!5249911 m!6293216))

(declare-fun m!6293218 () Bool)

(assert (=> b!5249911 m!6293218))

(declare-fun m!6293220 () Bool)

(assert (=> b!5249914 m!6293220))

(assert (=> b!5249912 m!6292496))

(declare-fun m!6293222 () Bool)

(assert (=> b!5249912 m!6293222))

(assert (=> b!5249918 m!6292496))

(declare-fun m!6293224 () Bool)

(assert (=> b!5249918 m!6293224))

(declare-fun m!6293226 () Bool)

(assert (=> d!1691242 m!6293226))

(assert (=> d!1691242 m!6292496))

(declare-fun m!6293228 () Bool)

(assert (=> d!1691242 m!6293228))

(declare-fun m!6293230 () Bool)

(assert (=> b!5249915 m!6293230))

(assert (=> b!5249032 d!1691242))

(declare-fun bs!1218044 () Bool)

(declare-fun d!1691244 () Bool)

(assert (= bs!1218044 (and d!1691244 d!1691214)))

(declare-fun lambda!264325 () Int)

(assert (=> bs!1218044 (= lambda!264325 lambda!264317)))

(declare-fun bs!1218045 () Bool)

(assert (= bs!1218045 (and d!1691244 d!1691242)))

(assert (=> bs!1218045 (= lambda!264325 lambda!264322)))

(declare-fun bs!1218046 () Bool)

(assert (= bs!1218046 (and d!1691244 d!1691210)))

(assert (=> bs!1218046 (= lambda!264325 lambda!264316)))

(declare-fun bs!1218047 () Bool)

(assert (= bs!1218047 (and d!1691244 d!1691186)))

(assert (=> bs!1218047 (= lambda!264325 lambda!264299)))

(declare-fun bs!1218048 () Bool)

(assert (= bs!1218048 (and d!1691244 d!1691182)))

(assert (=> bs!1218048 (= lambda!264325 lambda!264298)))

(declare-fun bs!1218049 () Bool)

(assert (= bs!1218049 (and d!1691244 b!5249013)))

(assert (=> bs!1218049 (= lambda!264325 lambda!264257)))

(declare-fun lt!2150935 () List!60858)

(assert (=> d!1691244 (forall!14277 lt!2150935 lambda!264325)))

(declare-fun e!3266194 () List!60858)

(assert (=> d!1691244 (= lt!2150935 e!3266194)))

(declare-fun c!908165 () Bool)

(assert (=> d!1691244 (= c!908165 ((_ is Cons!60736) zl!343))))

(assert (=> d!1691244 (= (unfocusZipperList!295 zl!343) lt!2150935)))

(declare-fun b!5249923 () Bool)

(assert (=> b!5249923 (= e!3266194 (Cons!60734 (generalisedConcat!522 (exprs!4737 (h!67184 zl!343))) (unfocusZipperList!295 (t!374043 zl!343))))))

(declare-fun b!5249924 () Bool)

(assert (=> b!5249924 (= e!3266194 Nil!60734)))

(assert (= (and d!1691244 c!908165) b!5249923))

(assert (= (and d!1691244 (not c!908165)) b!5249924))

(declare-fun m!6293232 () Bool)

(assert (=> d!1691244 m!6293232))

(assert (=> b!5249923 m!6292520))

(declare-fun m!6293234 () Bool)

(assert (=> b!5249923 m!6293234))

(assert (=> b!5249032 d!1691244))

(assert (=> b!5249034 d!1691224))

(declare-fun d!1691246 () Bool)

(declare-fun c!908166 () Bool)

(assert (=> d!1691246 (= c!908166 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3266195 () Bool)

(assert (=> d!1691246 (= (matchZipper!1097 lt!2150785 (t!374042 s!2326)) e!3266195)))

(declare-fun b!5249925 () Bool)

(assert (=> b!5249925 (= e!3266195 (nullableZipper!1268 lt!2150785))))

(declare-fun b!5249926 () Bool)

(assert (=> b!5249926 (= e!3266195 (matchZipper!1097 (derivationStepZipper!1112 lt!2150785 (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691246 c!908166) b!5249925))

(assert (= (and d!1691246 (not c!908166)) b!5249926))

(assert (=> d!1691246 m!6292794))

(declare-fun m!6293236 () Bool)

(assert (=> b!5249925 m!6293236))

(assert (=> b!5249926 m!6292798))

(assert (=> b!5249926 m!6292798))

(declare-fun m!6293238 () Bool)

(assert (=> b!5249926 m!6293238))

(assert (=> b!5249926 m!6292802))

(assert (=> b!5249926 m!6293238))

(assert (=> b!5249926 m!6292802))

(declare-fun m!6293240 () Bool)

(assert (=> b!5249926 m!6293240))

(assert (=> b!5249034 d!1691246))

(declare-fun d!1691248 () Bool)

(declare-fun c!908167 () Bool)

(assert (=> d!1691248 (= c!908167 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3266196 () Bool)

(assert (=> d!1691248 (= (matchZipper!1097 lt!2150796 (t!374042 s!2326)) e!3266196)))

(declare-fun b!5249927 () Bool)

(assert (=> b!5249927 (= e!3266196 (nullableZipper!1268 lt!2150796))))

(declare-fun b!5249928 () Bool)

(assert (=> b!5249928 (= e!3266196 (matchZipper!1097 (derivationStepZipper!1112 lt!2150796 (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691248 c!908167) b!5249927))

(assert (= (and d!1691248 (not c!908167)) b!5249928))

(assert (=> d!1691248 m!6292794))

(declare-fun m!6293242 () Bool)

(assert (=> b!5249927 m!6293242))

(assert (=> b!5249928 m!6292798))

(assert (=> b!5249928 m!6292798))

(declare-fun m!6293244 () Bool)

(assert (=> b!5249928 m!6293244))

(assert (=> b!5249928 m!6292802))

(assert (=> b!5249928 m!6293244))

(assert (=> b!5249928 m!6292802))

(declare-fun m!6293246 () Bool)

(assert (=> b!5249928 m!6293246))

(assert (=> b!5249034 d!1691248))

(declare-fun e!3266197 () Bool)

(declare-fun d!1691250 () Bool)

(assert (=> d!1691250 (= (matchZipper!1097 ((_ map or) lt!2150796 lt!2150774) (t!374042 s!2326)) e!3266197)))

(declare-fun res!2227745 () Bool)

(assert (=> d!1691250 (=> res!2227745 e!3266197)))

(assert (=> d!1691250 (= res!2227745 (matchZipper!1097 lt!2150796 (t!374042 s!2326)))))

(declare-fun lt!2150936 () Unit!152838)

(assert (=> d!1691250 (= lt!2150936 (choose!39114 lt!2150796 lt!2150774 (t!374042 s!2326)))))

(assert (=> d!1691250 (= (lemmaZipperConcatMatchesSameAsBothZippers!90 lt!2150796 lt!2150774 (t!374042 s!2326)) lt!2150936)))

(declare-fun b!5249929 () Bool)

(assert (=> b!5249929 (= e!3266197 (matchZipper!1097 lt!2150774 (t!374042 s!2326)))))

(assert (= (and d!1691250 (not res!2227745)) b!5249929))

(declare-fun m!6293248 () Bool)

(assert (=> d!1691250 m!6293248))

(assert (=> d!1691250 m!6292458))

(declare-fun m!6293250 () Bool)

(assert (=> d!1691250 m!6293250))

(assert (=> b!5249929 m!6292414))

(assert (=> b!5249034 d!1691250))

(declare-fun d!1691252 () Bool)

(assert (=> d!1691252 (= (isEmpty!32676 (t!374043 zl!343)) ((_ is Nil!60736) (t!374043 zl!343)))))

(assert (=> b!5249033 d!1691252))

(declare-fun d!1691254 () Bool)

(declare-fun res!2227750 () Bool)

(declare-fun e!3266202 () Bool)

(assert (=> d!1691254 (=> res!2227750 e!3266202)))

(assert (=> d!1691254 (= res!2227750 ((_ is Nil!60734) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> d!1691254 (= (forall!14277 (t!374041 (exprs!4737 (h!67184 zl!343))) lambda!264257) e!3266202)))

(declare-fun b!5249934 () Bool)

(declare-fun e!3266203 () Bool)

(assert (=> b!5249934 (= e!3266202 e!3266203)))

(declare-fun res!2227751 () Bool)

(assert (=> b!5249934 (=> (not res!2227751) (not e!3266203))))

(declare-fun dynLambda!24007 (Int Regex!14853) Bool)

(assert (=> b!5249934 (= res!2227751 (dynLambda!24007 lambda!264257 (h!67182 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249935 () Bool)

(assert (=> b!5249935 (= e!3266203 (forall!14277 (t!374041 (t!374041 (exprs!4737 (h!67184 zl!343)))) lambda!264257))))

(assert (= (and d!1691254 (not res!2227750)) b!5249934))

(assert (= (and b!5249934 res!2227751) b!5249935))

(declare-fun b_lambda!202801 () Bool)

(assert (=> (not b_lambda!202801) (not b!5249934)))

(declare-fun m!6293252 () Bool)

(assert (=> b!5249934 m!6293252))

(declare-fun m!6293254 () Bool)

(assert (=> b!5249935 m!6293254))

(assert (=> b!5249013 d!1691254))

(declare-fun d!1691256 () Bool)

(declare-fun c!908168 () Bool)

(assert (=> d!1691256 (= c!908168 (isEmpty!32679 (t!374042 s!2326)))))

(declare-fun e!3266204 () Bool)

(assert (=> d!1691256 (= (matchZipper!1097 lt!2150788 (t!374042 s!2326)) e!3266204)))

(declare-fun b!5249936 () Bool)

(assert (=> b!5249936 (= e!3266204 (nullableZipper!1268 lt!2150788))))

(declare-fun b!5249937 () Bool)

(assert (=> b!5249937 (= e!3266204 (matchZipper!1097 (derivationStepZipper!1112 lt!2150788 (head!11254 (t!374042 s!2326))) (tail!10351 (t!374042 s!2326))))))

(assert (= (and d!1691256 c!908168) b!5249936))

(assert (= (and d!1691256 (not c!908168)) b!5249937))

(assert (=> d!1691256 m!6292794))

(declare-fun m!6293256 () Bool)

(assert (=> b!5249936 m!6293256))

(assert (=> b!5249937 m!6292798))

(assert (=> b!5249937 m!6292798))

(declare-fun m!6293258 () Bool)

(assert (=> b!5249937 m!6293258))

(assert (=> b!5249937 m!6292802))

(assert (=> b!5249937 m!6293258))

(assert (=> b!5249937 m!6292802))

(declare-fun m!6293260 () Bool)

(assert (=> b!5249937 m!6293260))

(assert (=> b!5249014 d!1691256))

(declare-fun bs!1218050 () Bool)

(declare-fun d!1691258 () Bool)

(assert (= bs!1218050 (and d!1691258 d!1691214)))

(declare-fun lambda!264326 () Int)

(assert (=> bs!1218050 (= lambda!264326 lambda!264317)))

(declare-fun bs!1218051 () Bool)

(assert (= bs!1218051 (and d!1691258 d!1691242)))

(assert (=> bs!1218051 (= lambda!264326 lambda!264322)))

(declare-fun bs!1218052 () Bool)

(assert (= bs!1218052 (and d!1691258 d!1691210)))

(assert (=> bs!1218052 (= lambda!264326 lambda!264316)))

(declare-fun bs!1218053 () Bool)

(assert (= bs!1218053 (and d!1691258 d!1691186)))

(assert (=> bs!1218053 (= lambda!264326 lambda!264299)))

(declare-fun bs!1218054 () Bool)

(assert (= bs!1218054 (and d!1691258 d!1691182)))

(assert (=> bs!1218054 (= lambda!264326 lambda!264298)))

(declare-fun bs!1218055 () Bool)

(assert (= bs!1218055 (and d!1691258 b!5249013)))

(assert (=> bs!1218055 (= lambda!264326 lambda!264257)))

(declare-fun bs!1218056 () Bool)

(assert (= bs!1218056 (and d!1691258 d!1691244)))

(assert (=> bs!1218056 (= lambda!264326 lambda!264325)))

(assert (=> d!1691258 (= (inv!80379 setElem!33503) (forall!14277 (exprs!4737 setElem!33503) lambda!264326))))

(declare-fun bs!1218057 () Bool)

(assert (= bs!1218057 d!1691258))

(declare-fun m!6293262 () Bool)

(assert (=> bs!1218057 m!6293262))

(assert (=> setNonEmpty!33503 d!1691258))

(assert (=> b!5249036 d!1691256))

(declare-fun d!1691260 () Bool)

(assert (=> d!1691260 (= (isEmpty!32675 (t!374041 (exprs!4737 (h!67184 zl!343)))) ((_ is Nil!60734) (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> b!5249027 d!1691260))

(assert (=> b!5249009 d!1691200))

(declare-fun d!1691262 () Bool)

(assert (=> d!1691262 (= (nullable!5022 (h!67182 (exprs!4737 (h!67184 zl!343)))) (nullableFct!1420 (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun bs!1218058 () Bool)

(assert (= bs!1218058 d!1691262))

(declare-fun m!6293264 () Bool)

(assert (=> bs!1218058 m!6293264))

(assert (=> b!5249028 d!1691262))

(declare-fun b!5249938 () Bool)

(declare-fun e!3266207 () (InoxSet Context!8474))

(assert (=> b!5249938 (= e!3266207 ((as const (Array Context!8474 Bool)) false))))

(declare-fun b!5249939 () Bool)

(declare-fun e!3266206 () (InoxSet Context!8474))

(declare-fun call!372038 () (InoxSet Context!8474))

(assert (=> b!5249939 (= e!3266206 ((_ map or) call!372038 (derivationStepZipperUp!225 (Context!8475 (t!374041 (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343)))))))) (h!67183 s!2326))))))

(declare-fun b!5249940 () Bool)

(assert (=> b!5249940 (= e!3266206 e!3266207)))

(declare-fun c!908169 () Bool)

(assert (=> b!5249940 (= c!908169 ((_ is Cons!60734) (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343))))))))))

(declare-fun d!1691264 () Bool)

(declare-fun c!908170 () Bool)

(declare-fun e!3266205 () Bool)

(assert (=> d!1691264 (= c!908170 e!3266205)))

(declare-fun res!2227752 () Bool)

(assert (=> d!1691264 (=> (not res!2227752) (not e!3266205))))

(assert (=> d!1691264 (= res!2227752 ((_ is Cons!60734) (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343))))))))))

(assert (=> d!1691264 (= (derivationStepZipperUp!225 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343))))) (h!67183 s!2326)) e!3266206)))

(declare-fun b!5249941 () Bool)

(assert (=> b!5249941 (= e!3266205 (nullable!5022 (h!67182 (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343)))))))))))

(declare-fun bm!372033 () Bool)

(assert (=> bm!372033 (= call!372038 (derivationStepZipperDown!301 (h!67182 (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343))))))) (Context!8475 (t!374041 (exprs!4737 (Context!8475 (Cons!60734 (h!67182 (exprs!4737 (h!67184 zl!343))) (t!374041 (exprs!4737 (h!67184 zl!343)))))))) (h!67183 s!2326)))))

(declare-fun b!5249942 () Bool)

(assert (=> b!5249942 (= e!3266207 call!372038)))

(assert (= (and d!1691264 res!2227752) b!5249941))

(assert (= (and d!1691264 c!908170) b!5249939))

(assert (= (and d!1691264 (not c!908170)) b!5249940))

(assert (= (and b!5249940 c!908169) b!5249942))

(assert (= (and b!5249940 (not c!908169)) b!5249938))

(assert (= (or b!5249939 b!5249942) bm!372033))

(declare-fun m!6293266 () Bool)

(assert (=> b!5249939 m!6293266))

(declare-fun m!6293268 () Bool)

(assert (=> b!5249941 m!6293268))

(declare-fun m!6293270 () Bool)

(assert (=> bm!372033 m!6293270))

(assert (=> b!5249028 d!1691264))

(declare-fun b!5249943 () Bool)

(declare-fun e!3266210 () (InoxSet Context!8474))

(assert (=> b!5249943 (= e!3266210 ((as const (Array Context!8474 Bool)) false))))

(declare-fun e!3266209 () (InoxSet Context!8474))

(declare-fun b!5249944 () Bool)

(declare-fun call!372039 () (InoxSet Context!8474))

(assert (=> b!5249944 (= e!3266209 ((_ map or) call!372039 (derivationStepZipperUp!225 (Context!8475 (t!374041 (exprs!4737 lt!2150781))) (h!67183 s!2326))))))

(declare-fun b!5249945 () Bool)

(assert (=> b!5249945 (= e!3266209 e!3266210)))

(declare-fun c!908171 () Bool)

(assert (=> b!5249945 (= c!908171 ((_ is Cons!60734) (exprs!4737 lt!2150781)))))

(declare-fun d!1691266 () Bool)

(declare-fun c!908172 () Bool)

(declare-fun e!3266208 () Bool)

(assert (=> d!1691266 (= c!908172 e!3266208)))

(declare-fun res!2227753 () Bool)

(assert (=> d!1691266 (=> (not res!2227753) (not e!3266208))))

(assert (=> d!1691266 (= res!2227753 ((_ is Cons!60734) (exprs!4737 lt!2150781)))))

(assert (=> d!1691266 (= (derivationStepZipperUp!225 lt!2150781 (h!67183 s!2326)) e!3266209)))

(declare-fun b!5249946 () Bool)

(assert (=> b!5249946 (= e!3266208 (nullable!5022 (h!67182 (exprs!4737 lt!2150781))))))

(declare-fun bm!372034 () Bool)

(assert (=> bm!372034 (= call!372039 (derivationStepZipperDown!301 (h!67182 (exprs!4737 lt!2150781)) (Context!8475 (t!374041 (exprs!4737 lt!2150781))) (h!67183 s!2326)))))

(declare-fun b!5249947 () Bool)

(assert (=> b!5249947 (= e!3266210 call!372039)))

(assert (= (and d!1691266 res!2227753) b!5249946))

(assert (= (and d!1691266 c!908172) b!5249944))

(assert (= (and d!1691266 (not c!908172)) b!5249945))

(assert (= (and b!5249945 c!908171) b!5249947))

(assert (= (and b!5249945 (not c!908171)) b!5249943))

(assert (= (or b!5249944 b!5249947) bm!372034))

(declare-fun m!6293272 () Bool)

(assert (=> b!5249944 m!6293272))

(declare-fun m!6293274 () Bool)

(assert (=> b!5249946 m!6293274))

(declare-fun m!6293276 () Bool)

(assert (=> bm!372034 m!6293276))

(assert (=> b!5249028 d!1691266))

(declare-fun b!5249948 () Bool)

(declare-fun e!3266215 () Bool)

(assert (=> b!5249948 (= e!3266215 (nullable!5022 (regOne!30218 (h!67182 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249949 () Bool)

(declare-fun c!908176 () Bool)

(assert (=> b!5249949 (= c!908176 ((_ is Star!14853) (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun e!3266213 () (InoxSet Context!8474))

(declare-fun e!3266211 () (InoxSet Context!8474))

(assert (=> b!5249949 (= e!3266213 e!3266211)))

(declare-fun b!5249950 () Bool)

(declare-fun c!908173 () Bool)

(assert (=> b!5249950 (= c!908173 e!3266215)))

(declare-fun res!2227754 () Bool)

(assert (=> b!5249950 (=> (not res!2227754) (not e!3266215))))

(assert (=> b!5249950 (= res!2227754 ((_ is Concat!23698) (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun e!3266214 () (InoxSet Context!8474))

(declare-fun e!3266212 () (InoxSet Context!8474))

(assert (=> b!5249950 (= e!3266214 e!3266212)))

(declare-fun c!908175 () Bool)

(declare-fun bm!372035 () Bool)

(declare-fun call!372041 () (InoxSet Context!8474))

(declare-fun call!372043 () List!60858)

(assert (=> bm!372035 (= call!372041 (derivationStepZipperDown!301 (ite c!908175 (regOne!30219 (h!67182 (exprs!4737 (h!67184 zl!343)))) (regOne!30218 (h!67182 (exprs!4737 (h!67184 zl!343))))) (ite c!908175 lt!2150781 (Context!8475 call!372043)) (h!67183 s!2326)))))

(declare-fun c!908174 () Bool)

(declare-fun bm!372036 () Bool)

(assert (=> bm!372036 (= call!372043 ($colon$colon!1318 (exprs!4737 lt!2150781) (ite (or c!908173 c!908174) (regTwo!30218 (h!67182 (exprs!4737 (h!67184 zl!343)))) (h!67182 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249951 () Bool)

(assert (=> b!5249951 (= e!3266212 e!3266213)))

(assert (=> b!5249951 (= c!908174 ((_ is Concat!23698) (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun bm!372037 () Bool)

(declare-fun call!372042 () (InoxSet Context!8474))

(declare-fun call!372045 () (InoxSet Context!8474))

(assert (=> bm!372037 (= call!372042 call!372045)))

(declare-fun b!5249952 () Bool)

(assert (=> b!5249952 (= e!3266211 call!372042)))

(declare-fun b!5249953 () Bool)

(declare-fun e!3266216 () (InoxSet Context!8474))

(assert (=> b!5249953 (= e!3266216 e!3266214)))

(assert (=> b!5249953 (= c!908175 ((_ is Union!14853) (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249954 () Bool)

(assert (=> b!5249954 (= e!3266211 ((as const (Array Context!8474 Bool)) false))))

(declare-fun bm!372038 () Bool)

(declare-fun call!372040 () List!60858)

(assert (=> bm!372038 (= call!372040 call!372043)))

(declare-fun b!5249956 () Bool)

(assert (=> b!5249956 (= e!3266213 call!372042)))

(declare-fun bm!372039 () Bool)

(declare-fun call!372044 () (InoxSet Context!8474))

(assert (=> bm!372039 (= call!372044 (derivationStepZipperDown!301 (ite c!908175 (regTwo!30219 (h!67182 (exprs!4737 (h!67184 zl!343)))) (ite c!908173 (regTwo!30218 (h!67182 (exprs!4737 (h!67184 zl!343)))) (ite c!908174 (regOne!30218 (h!67182 (exprs!4737 (h!67184 zl!343)))) (reg!15182 (h!67182 (exprs!4737 (h!67184 zl!343))))))) (ite (or c!908175 c!908173) lt!2150781 (Context!8475 call!372040)) (h!67183 s!2326)))))

(declare-fun d!1691268 () Bool)

(declare-fun c!908177 () Bool)

(assert (=> d!1691268 (= c!908177 (and ((_ is ElementMatch!14853) (h!67182 (exprs!4737 (h!67184 zl!343)))) (= (c!907897 (h!67182 (exprs!4737 (h!67184 zl!343)))) (h!67183 s!2326))))))

(assert (=> d!1691268 (= (derivationStepZipperDown!301 (h!67182 (exprs!4737 (h!67184 zl!343))) lt!2150781 (h!67183 s!2326)) e!3266216)))

(declare-fun b!5249955 () Bool)

(assert (=> b!5249955 (= e!3266214 ((_ map or) call!372041 call!372044))))

(declare-fun b!5249957 () Bool)

(assert (=> b!5249957 (= e!3266216 (store ((as const (Array Context!8474 Bool)) false) lt!2150781 true))))

(declare-fun b!5249958 () Bool)

(assert (=> b!5249958 (= e!3266212 ((_ map or) call!372041 call!372045))))

(declare-fun bm!372040 () Bool)

(assert (=> bm!372040 (= call!372045 call!372044)))

(assert (= (and d!1691268 c!908177) b!5249957))

(assert (= (and d!1691268 (not c!908177)) b!5249953))

(assert (= (and b!5249953 c!908175) b!5249955))

(assert (= (and b!5249953 (not c!908175)) b!5249950))

(assert (= (and b!5249950 res!2227754) b!5249948))

(assert (= (and b!5249950 c!908173) b!5249958))

(assert (= (and b!5249950 (not c!908173)) b!5249951))

(assert (= (and b!5249951 c!908174) b!5249956))

(assert (= (and b!5249951 (not c!908174)) b!5249949))

(assert (= (and b!5249949 c!908176) b!5249952))

(assert (= (and b!5249949 (not c!908176)) b!5249954))

(assert (= (or b!5249956 b!5249952) bm!372038))

(assert (= (or b!5249956 b!5249952) bm!372037))

(assert (= (or b!5249958 bm!372038) bm!372036))

(assert (= (or b!5249958 bm!372037) bm!372040))

(assert (= (or b!5249955 bm!372040) bm!372039))

(assert (= (or b!5249955 b!5249958) bm!372035))

(declare-fun m!6293278 () Bool)

(assert (=> bm!372035 m!6293278))

(declare-fun m!6293280 () Bool)

(assert (=> b!5249948 m!6293280))

(assert (=> b!5249957 m!6293172))

(declare-fun m!6293282 () Bool)

(assert (=> bm!372036 m!6293282))

(declare-fun m!6293284 () Bool)

(assert (=> bm!372039 m!6293284))

(assert (=> b!5249028 d!1691268))

(declare-fun b!5249959 () Bool)

(declare-fun e!3266219 () (InoxSet Context!8474))

(assert (=> b!5249959 (= e!3266219 ((as const (Array Context!8474 Bool)) false))))

(declare-fun b!5249960 () Bool)

(declare-fun e!3266218 () (InoxSet Context!8474))

(declare-fun call!372046 () (InoxSet Context!8474))

(assert (=> b!5249960 (= e!3266218 ((_ map or) call!372046 (derivationStepZipperUp!225 (Context!8475 (t!374041 (exprs!4737 (h!67184 zl!343)))) (h!67183 s!2326))))))

(declare-fun b!5249961 () Bool)

(assert (=> b!5249961 (= e!3266218 e!3266219)))

(declare-fun c!908178 () Bool)

(assert (=> b!5249961 (= c!908178 ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343))))))

(declare-fun d!1691270 () Bool)

(declare-fun c!908179 () Bool)

(declare-fun e!3266217 () Bool)

(assert (=> d!1691270 (= c!908179 e!3266217)))

(declare-fun res!2227755 () Bool)

(assert (=> d!1691270 (=> (not res!2227755) (not e!3266217))))

(assert (=> d!1691270 (= res!2227755 ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343))))))

(assert (=> d!1691270 (= (derivationStepZipperUp!225 (h!67184 zl!343) (h!67183 s!2326)) e!3266218)))

(declare-fun b!5249962 () Bool)

(assert (=> b!5249962 (= e!3266217 (nullable!5022 (h!67182 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun bm!372041 () Bool)

(assert (=> bm!372041 (= call!372046 (derivationStepZipperDown!301 (h!67182 (exprs!4737 (h!67184 zl!343))) (Context!8475 (t!374041 (exprs!4737 (h!67184 zl!343)))) (h!67183 s!2326)))))

(declare-fun b!5249963 () Bool)

(assert (=> b!5249963 (= e!3266219 call!372046)))

(assert (= (and d!1691270 res!2227755) b!5249962))

(assert (= (and d!1691270 c!908179) b!5249960))

(assert (= (and d!1691270 (not c!908179)) b!5249961))

(assert (= (and b!5249961 c!908178) b!5249963))

(assert (= (and b!5249961 (not c!908178)) b!5249959))

(assert (= (or b!5249960 b!5249963) bm!372041))

(declare-fun m!6293286 () Bool)

(assert (=> b!5249960 m!6293286))

(assert (=> b!5249962 m!6292394))

(declare-fun m!6293288 () Bool)

(assert (=> bm!372041 m!6293288))

(assert (=> b!5249028 d!1691270))

(declare-fun d!1691272 () Bool)

(assert (=> d!1691272 (= (flatMap!580 z!1189 lambda!264256) (dynLambda!24005 lambda!264256 (h!67184 zl!343)))))

(declare-fun lt!2150937 () Unit!152838)

(assert (=> d!1691272 (= lt!2150937 (choose!39111 z!1189 (h!67184 zl!343) lambda!264256))))

(assert (=> d!1691272 (= z!1189 (store ((as const (Array Context!8474 Bool)) false) (h!67184 zl!343) true))))

(assert (=> d!1691272 (= (lemmaFlatMapOnSingletonSet!112 z!1189 (h!67184 zl!343) lambda!264256) lt!2150937)))

(declare-fun b_lambda!202803 () Bool)

(assert (=> (not b_lambda!202803) (not d!1691272)))

(declare-fun bs!1218059 () Bool)

(assert (= bs!1218059 d!1691272))

(assert (=> bs!1218059 m!6292400))

(declare-fun m!6293290 () Bool)

(assert (=> bs!1218059 m!6293290))

(declare-fun m!6293292 () Bool)

(assert (=> bs!1218059 m!6293292))

(declare-fun m!6293294 () Bool)

(assert (=> bs!1218059 m!6293294))

(assert (=> b!5249028 d!1691272))

(declare-fun d!1691274 () Bool)

(assert (=> d!1691274 (= (flatMap!580 z!1189 lambda!264256) (choose!39113 z!1189 lambda!264256))))

(declare-fun bs!1218060 () Bool)

(assert (= bs!1218060 d!1691274))

(declare-fun m!6293296 () Bool)

(assert (=> bs!1218060 m!6293296))

(assert (=> b!5249028 d!1691274))

(declare-fun bs!1218061 () Bool)

(declare-fun d!1691276 () Bool)

(assert (= bs!1218061 (and d!1691276 d!1691214)))

(declare-fun lambda!264327 () Int)

(assert (=> bs!1218061 (= lambda!264327 lambda!264317)))

(declare-fun bs!1218062 () Bool)

(assert (= bs!1218062 (and d!1691276 d!1691242)))

(assert (=> bs!1218062 (= lambda!264327 lambda!264322)))

(declare-fun bs!1218063 () Bool)

(assert (= bs!1218063 (and d!1691276 d!1691210)))

(assert (=> bs!1218063 (= lambda!264327 lambda!264316)))

(declare-fun bs!1218064 () Bool)

(assert (= bs!1218064 (and d!1691276 d!1691186)))

(assert (=> bs!1218064 (= lambda!264327 lambda!264299)))

(declare-fun bs!1218065 () Bool)

(assert (= bs!1218065 (and d!1691276 d!1691182)))

(assert (=> bs!1218065 (= lambda!264327 lambda!264298)))

(declare-fun bs!1218066 () Bool)

(assert (= bs!1218066 (and d!1691276 b!5249013)))

(assert (=> bs!1218066 (= lambda!264327 lambda!264257)))

(declare-fun bs!1218067 () Bool)

(assert (= bs!1218067 (and d!1691276 d!1691244)))

(assert (=> bs!1218067 (= lambda!264327 lambda!264325)))

(declare-fun bs!1218068 () Bool)

(assert (= bs!1218068 (and d!1691276 d!1691258)))

(assert (=> bs!1218068 (= lambda!264327 lambda!264326)))

(declare-fun b!5249964 () Bool)

(declare-fun e!3266224 () Regex!14853)

(declare-fun e!3266221 () Regex!14853)

(assert (=> b!5249964 (= e!3266224 e!3266221)))

(declare-fun c!908182 () Bool)

(assert (=> b!5249964 (= c!908182 ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343))))))

(declare-fun b!5249965 () Bool)

(declare-fun e!3266225 () Bool)

(declare-fun e!3266223 () Bool)

(assert (=> b!5249965 (= e!3266225 e!3266223)))

(declare-fun c!908180 () Bool)

(assert (=> b!5249965 (= c!908180 (isEmpty!32675 (exprs!4737 (h!67184 zl!343))))))

(declare-fun b!5249966 () Bool)

(assert (=> b!5249966 (= e!3266224 (h!67182 (exprs!4737 (h!67184 zl!343))))))

(declare-fun b!5249968 () Bool)

(declare-fun lt!2150938 () Regex!14853)

(assert (=> b!5249968 (= e!3266223 (isEmptyExpr!803 lt!2150938))))

(declare-fun b!5249969 () Bool)

(assert (=> b!5249969 (= e!3266221 EmptyExpr!14853)))

(declare-fun b!5249970 () Bool)

(assert (=> b!5249970 (= e!3266221 (Concat!23698 (h!67182 (exprs!4737 (h!67184 zl!343))) (generalisedConcat!522 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun b!5249971 () Bool)

(declare-fun e!3266222 () Bool)

(assert (=> b!5249971 (= e!3266223 e!3266222)))

(declare-fun c!908183 () Bool)

(assert (=> b!5249971 (= c!908183 (isEmpty!32675 (tail!10352 (exprs!4737 (h!67184 zl!343)))))))

(assert (=> d!1691276 e!3266225))

(declare-fun res!2227756 () Bool)

(assert (=> d!1691276 (=> (not res!2227756) (not e!3266225))))

(assert (=> d!1691276 (= res!2227756 (validRegex!6589 lt!2150938))))

(assert (=> d!1691276 (= lt!2150938 e!3266224)))

(declare-fun c!908181 () Bool)

(declare-fun e!3266220 () Bool)

(assert (=> d!1691276 (= c!908181 e!3266220)))

(declare-fun res!2227757 () Bool)

(assert (=> d!1691276 (=> (not res!2227757) (not e!3266220))))

(assert (=> d!1691276 (= res!2227757 ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343))))))

(assert (=> d!1691276 (forall!14277 (exprs!4737 (h!67184 zl!343)) lambda!264327)))

(assert (=> d!1691276 (= (generalisedConcat!522 (exprs!4737 (h!67184 zl!343))) lt!2150938)))

(declare-fun b!5249967 () Bool)

(assert (=> b!5249967 (= e!3266222 (isConcat!326 lt!2150938))))

(declare-fun b!5249972 () Bool)

(assert (=> b!5249972 (= e!3266222 (= lt!2150938 (head!11255 (exprs!4737 (h!67184 zl!343)))))))

(declare-fun b!5249973 () Bool)

(assert (=> b!5249973 (= e!3266220 (isEmpty!32675 (t!374041 (exprs!4737 (h!67184 zl!343)))))))

(assert (= (and d!1691276 res!2227757) b!5249973))

(assert (= (and d!1691276 c!908181) b!5249966))

(assert (= (and d!1691276 (not c!908181)) b!5249964))

(assert (= (and b!5249964 c!908182) b!5249970))

(assert (= (and b!5249964 (not c!908182)) b!5249969))

(assert (= (and d!1691276 res!2227756) b!5249965))

(assert (= (and b!5249965 c!908180) b!5249968))

(assert (= (and b!5249965 (not c!908180)) b!5249971))

(assert (= (and b!5249971 c!908183) b!5249972))

(assert (= (and b!5249971 (not c!908183)) b!5249967))

(declare-fun m!6293298 () Bool)

(assert (=> d!1691276 m!6293298))

(declare-fun m!6293300 () Bool)

(assert (=> d!1691276 m!6293300))

(assert (=> b!5249973 m!6292410))

(declare-fun m!6293302 () Bool)

(assert (=> b!5249965 m!6293302))

(declare-fun m!6293304 () Bool)

(assert (=> b!5249971 m!6293304))

(assert (=> b!5249971 m!6293304))

(declare-fun m!6293306 () Bool)

(assert (=> b!5249971 m!6293306))

(assert (=> b!5249970 m!6292462))

(declare-fun m!6293308 () Bool)

(assert (=> b!5249972 m!6293308))

(declare-fun m!6293310 () Bool)

(assert (=> b!5249967 m!6293310))

(declare-fun m!6293312 () Bool)

(assert (=> b!5249968 m!6293312))

(assert (=> b!5249029 d!1691276))

(assert (=> b!5249010 d!1691256))

(declare-fun b!5249987 () Bool)

(declare-fun e!3266228 () Bool)

(declare-fun tp!1468886 () Bool)

(declare-fun tp!1468888 () Bool)

(assert (=> b!5249987 (= e!3266228 (and tp!1468886 tp!1468888))))

(declare-fun b!5249984 () Bool)

(assert (=> b!5249984 (= e!3266228 tp_is_empty!38959)))

(assert (=> b!5249008 (= tp!1468810 e!3266228)))

(declare-fun b!5249985 () Bool)

(declare-fun tp!1468887 () Bool)

(declare-fun tp!1468889 () Bool)

(assert (=> b!5249985 (= e!3266228 (and tp!1468887 tp!1468889))))

(declare-fun b!5249986 () Bool)

(declare-fun tp!1468890 () Bool)

(assert (=> b!5249986 (= e!3266228 tp!1468890)))

(assert (= (and b!5249008 ((_ is ElementMatch!14853) (regOne!30218 r!7292))) b!5249984))

(assert (= (and b!5249008 ((_ is Concat!23698) (regOne!30218 r!7292))) b!5249985))

(assert (= (and b!5249008 ((_ is Star!14853) (regOne!30218 r!7292))) b!5249986))

(assert (= (and b!5249008 ((_ is Union!14853) (regOne!30218 r!7292))) b!5249987))

(declare-fun b!5249991 () Bool)

(declare-fun e!3266229 () Bool)

(declare-fun tp!1468891 () Bool)

(declare-fun tp!1468893 () Bool)

(assert (=> b!5249991 (= e!3266229 (and tp!1468891 tp!1468893))))

(declare-fun b!5249988 () Bool)

(assert (=> b!5249988 (= e!3266229 tp_is_empty!38959)))

(assert (=> b!5249008 (= tp!1468816 e!3266229)))

(declare-fun b!5249989 () Bool)

(declare-fun tp!1468892 () Bool)

(declare-fun tp!1468894 () Bool)

(assert (=> b!5249989 (= e!3266229 (and tp!1468892 tp!1468894))))

(declare-fun b!5249990 () Bool)

(declare-fun tp!1468895 () Bool)

(assert (=> b!5249990 (= e!3266229 tp!1468895)))

(assert (= (and b!5249008 ((_ is ElementMatch!14853) (regTwo!30218 r!7292))) b!5249988))

(assert (= (and b!5249008 ((_ is Concat!23698) (regTwo!30218 r!7292))) b!5249989))

(assert (= (and b!5249008 ((_ is Star!14853) (regTwo!30218 r!7292))) b!5249990))

(assert (= (and b!5249008 ((_ is Union!14853) (regTwo!30218 r!7292))) b!5249991))

(declare-fun b!5249996 () Bool)

(declare-fun e!3266232 () Bool)

(declare-fun tp!1468900 () Bool)

(declare-fun tp!1468901 () Bool)

(assert (=> b!5249996 (= e!3266232 (and tp!1468900 tp!1468901))))

(assert (=> b!5249016 (= tp!1468815 e!3266232)))

(assert (= (and b!5249016 ((_ is Cons!60734) (exprs!4737 (h!67184 zl!343)))) b!5249996))

(declare-fun b!5250000 () Bool)

(declare-fun e!3266233 () Bool)

(declare-fun tp!1468902 () Bool)

(declare-fun tp!1468904 () Bool)

(assert (=> b!5250000 (= e!3266233 (and tp!1468902 tp!1468904))))

(declare-fun b!5249997 () Bool)

(assert (=> b!5249997 (= e!3266233 tp_is_empty!38959)))

(assert (=> b!5249023 (= tp!1468817 e!3266233)))

(declare-fun b!5249998 () Bool)

(declare-fun tp!1468903 () Bool)

(declare-fun tp!1468905 () Bool)

(assert (=> b!5249998 (= e!3266233 (and tp!1468903 tp!1468905))))

(declare-fun b!5249999 () Bool)

(declare-fun tp!1468906 () Bool)

(assert (=> b!5249999 (= e!3266233 tp!1468906)))

(assert (= (and b!5249023 ((_ is ElementMatch!14853) (regOne!30219 r!7292))) b!5249997))

(assert (= (and b!5249023 ((_ is Concat!23698) (regOne!30219 r!7292))) b!5249998))

(assert (= (and b!5249023 ((_ is Star!14853) (regOne!30219 r!7292))) b!5249999))

(assert (= (and b!5249023 ((_ is Union!14853) (regOne!30219 r!7292))) b!5250000))

(declare-fun b!5250004 () Bool)

(declare-fun e!3266234 () Bool)

(declare-fun tp!1468907 () Bool)

(declare-fun tp!1468909 () Bool)

(assert (=> b!5250004 (= e!3266234 (and tp!1468907 tp!1468909))))

(declare-fun b!5250001 () Bool)

(assert (=> b!5250001 (= e!3266234 tp_is_empty!38959)))

(assert (=> b!5249023 (= tp!1468809 e!3266234)))

(declare-fun b!5250002 () Bool)

(declare-fun tp!1468908 () Bool)

(declare-fun tp!1468910 () Bool)

(assert (=> b!5250002 (= e!3266234 (and tp!1468908 tp!1468910))))

(declare-fun b!5250003 () Bool)

(declare-fun tp!1468911 () Bool)

(assert (=> b!5250003 (= e!3266234 tp!1468911)))

(assert (= (and b!5249023 ((_ is ElementMatch!14853) (regTwo!30219 r!7292))) b!5250001))

(assert (= (and b!5249023 ((_ is Concat!23698) (regTwo!30219 r!7292))) b!5250002))

(assert (= (and b!5249023 ((_ is Star!14853) (regTwo!30219 r!7292))) b!5250003))

(assert (= (and b!5249023 ((_ is Union!14853) (regTwo!30219 r!7292))) b!5250004))

(declare-fun b!5250008 () Bool)

(declare-fun e!3266235 () Bool)

(declare-fun tp!1468912 () Bool)

(declare-fun tp!1468914 () Bool)

(assert (=> b!5250008 (= e!3266235 (and tp!1468912 tp!1468914))))

(declare-fun b!5250005 () Bool)

(assert (=> b!5250005 (= e!3266235 tp_is_empty!38959)))

(assert (=> b!5249018 (= tp!1468811 e!3266235)))

(declare-fun b!5250006 () Bool)

(declare-fun tp!1468913 () Bool)

(declare-fun tp!1468915 () Bool)

(assert (=> b!5250006 (= e!3266235 (and tp!1468913 tp!1468915))))

(declare-fun b!5250007 () Bool)

(declare-fun tp!1468916 () Bool)

(assert (=> b!5250007 (= e!3266235 tp!1468916)))

(assert (= (and b!5249018 ((_ is ElementMatch!14853) (reg!15182 r!7292))) b!5250005))

(assert (= (and b!5249018 ((_ is Concat!23698) (reg!15182 r!7292))) b!5250006))

(assert (= (and b!5249018 ((_ is Star!14853) (reg!15182 r!7292))) b!5250007))

(assert (= (and b!5249018 ((_ is Union!14853) (reg!15182 r!7292))) b!5250008))

(declare-fun condSetEmpty!33509 () Bool)

(assert (=> setNonEmpty!33503 (= condSetEmpty!33509 (= setRest!33503 ((as const (Array Context!8474 Bool)) false)))))

(declare-fun setRes!33509 () Bool)

(assert (=> setNonEmpty!33503 (= tp!1468812 setRes!33509)))

(declare-fun setIsEmpty!33509 () Bool)

(assert (=> setIsEmpty!33509 setRes!33509))

(declare-fun tp!1468921 () Bool)

(declare-fun e!3266238 () Bool)

(declare-fun setElem!33509 () Context!8474)

(declare-fun setNonEmpty!33509 () Bool)

(assert (=> setNonEmpty!33509 (= setRes!33509 (and tp!1468921 (inv!80379 setElem!33509) e!3266238))))

(declare-fun setRest!33509 () (InoxSet Context!8474))

(assert (=> setNonEmpty!33509 (= setRest!33503 ((_ map or) (store ((as const (Array Context!8474 Bool)) false) setElem!33509 true) setRest!33509))))

(declare-fun b!5250013 () Bool)

(declare-fun tp!1468922 () Bool)

(assert (=> b!5250013 (= e!3266238 tp!1468922)))

(assert (= (and setNonEmpty!33503 condSetEmpty!33509) setIsEmpty!33509))

(assert (= (and setNonEmpty!33503 (not condSetEmpty!33509)) setNonEmpty!33509))

(assert (= setNonEmpty!33509 b!5250013))

(declare-fun m!6293314 () Bool)

(assert (=> setNonEmpty!33509 m!6293314))

(declare-fun b!5250021 () Bool)

(declare-fun e!3266244 () Bool)

(declare-fun tp!1468927 () Bool)

(assert (=> b!5250021 (= e!3266244 tp!1468927)))

(declare-fun tp!1468928 () Bool)

(declare-fun e!3266243 () Bool)

(declare-fun b!5250020 () Bool)

(assert (=> b!5250020 (= e!3266243 (and (inv!80379 (h!67184 (t!374043 zl!343))) e!3266244 tp!1468928))))

(assert (=> b!5249024 (= tp!1468813 e!3266243)))

(assert (= b!5250020 b!5250021))

(assert (= (and b!5249024 ((_ is Cons!60736) (t!374043 zl!343))) b!5250020))

(declare-fun m!6293316 () Bool)

(assert (=> b!5250020 m!6293316))

(declare-fun b!5250026 () Bool)

(declare-fun e!3266247 () Bool)

(declare-fun tp!1468931 () Bool)

(assert (=> b!5250026 (= e!3266247 (and tp_is_empty!38959 tp!1468931))))

(assert (=> b!5249001 (= tp!1468814 e!3266247)))

(assert (= (and b!5249001 ((_ is Cons!60735) (t!374042 s!2326))) b!5250026))

(declare-fun b!5250027 () Bool)

(declare-fun e!3266248 () Bool)

(declare-fun tp!1468932 () Bool)

(declare-fun tp!1468933 () Bool)

(assert (=> b!5250027 (= e!3266248 (and tp!1468932 tp!1468933))))

(assert (=> b!5249015 (= tp!1468808 e!3266248)))

(assert (= (and b!5249015 ((_ is Cons!60734) (exprs!4737 setElem!33503))) b!5250027))

(declare-fun b_lambda!202805 () Bool)

(assert (= b_lambda!202789 (or b!5249028 b_lambda!202805)))

(declare-fun bs!1218069 () Bool)

(declare-fun d!1691278 () Bool)

(assert (= bs!1218069 (and d!1691278 b!5249028)))

(assert (=> bs!1218069 (= (dynLambda!24005 lambda!264256 lt!2150798) (derivationStepZipperUp!225 lt!2150798 (h!67183 s!2326)))))

(assert (=> bs!1218069 m!6292464))

(assert (=> d!1691104 d!1691278))

(declare-fun b_lambda!202807 () Bool)

(assert (= b_lambda!202787 (or b!5249028 b_lambda!202807)))

(declare-fun bs!1218070 () Bool)

(declare-fun d!1691280 () Bool)

(assert (= bs!1218070 (and d!1691280 b!5249028)))

(assert (=> bs!1218070 (= (dynLambda!24005 lambda!264256 lt!2150808) (derivationStepZipperUp!225 lt!2150808 (h!67183 s!2326)))))

(assert (=> bs!1218070 m!6292468))

(assert (=> d!1691098 d!1691280))

(declare-fun b_lambda!202809 () Bool)

(assert (= b_lambda!202803 (or b!5249028 b_lambda!202809)))

(declare-fun bs!1218071 () Bool)

(declare-fun d!1691282 () Bool)

(assert (= bs!1218071 (and d!1691282 b!5249028)))

(assert (=> bs!1218071 (= (dynLambda!24005 lambda!264256 (h!67184 zl!343)) (derivationStepZipperUp!225 (h!67184 zl!343) (h!67183 s!2326)))))

(assert (=> bs!1218071 m!6292398))

(assert (=> d!1691272 d!1691282))

(declare-fun b_lambda!202811 () Bool)

(assert (= b_lambda!202801 (or b!5249013 b_lambda!202811)))

(declare-fun bs!1218072 () Bool)

(declare-fun d!1691284 () Bool)

(assert (= bs!1218072 (and d!1691284 b!5249013)))

(assert (=> bs!1218072 (= (dynLambda!24007 lambda!264257 (h!67182 (t!374041 (exprs!4737 (h!67184 zl!343))))) (validRegex!6589 (h!67182 (t!374041 (exprs!4737 (h!67184 zl!343))))))))

(declare-fun m!6293318 () Bool)

(assert (=> bs!1218072 m!6293318))

(assert (=> b!5249934 d!1691284))

(check-sat (not b!5249772) (not b!5249176) (not b!5249433) (not b!5249363) (not b!5250027) (not b!5249783) (not b!5249638) (not d!1691200) (not b!5249968) (not b!5249967) (not d!1691148) (not b!5249939) (not b!5249937) (not d!1691250) (not d!1691244) (not b!5249785) (not b!5249999) (not b!5249989) (not b!5249381) (not b!5249884) (not b!5249986) (not bm!372009) (not bm!372031) (not b!5249971) (not d!1691238) (not b!5250006) (not b!5250000) (not bm!372034) (not b!5250004) (not b!5249643) (not bm!372036) (not b!5249915) (not d!1691210) (not b!5250021) (not bm!372015) (not d!1691274) (not d!1691242) (not b!5249928) (not d!1691156) (not bm!372033) (not bm!371995) (not b!5249926) (not b!5249745) (not bm!372035) (not b!5249996) (not d!1691206) (not bm!371968) (not b_lambda!202809) (not b!5249380) (not b!5249476) (not b!5249870) (not b!5249998) (not bm!372028) (not bs!1218069) (not b!5249169) (not bm!372019) (not b!5249918) (not b!5249576) (not b!5249170) (not b!5249786) (not b!5249962) (not b!5249597) (not b!5249876) (not d!1691122) (not b_lambda!202805) (not bm!372013) (not d!1691114) (not b!5249885) (not b!5249774) (not d!1691108) (not b!5249965) (not b!5249174) (not b!5249912) (not b!5249391) (not d!1691098) (not b!5249644) (not bm!371969) (not b!5249390) (not b_lambda!202807) (not b!5249923) (not b!5249752) (not b!5249172) (not d!1691214) (not bm!371996) (not b!5249571) (not b_lambda!202811) (not bm!371987) (not bs!1218071) (not b!5249944) (not b!5249880) (not b!5249635) (not d!1691150) (not b!5249574) (not b!5249914) (not b!5249631) (not d!1691276) (not bm!372039) (not d!1691172) (not d!1691222) (not d!1691246) (not b!5249578) (not bm!372016) (not d!1691216) (not b!5249590) (not b!5250020) (not b!5249598) (not b!5249779) (not d!1691104) (not d!1691262) (not b!5249789) (not d!1691124) (not bs!1218072) tp_is_empty!38959 (not b!5249970) (not d!1691224) (not b!5249633) (not d!1691256) (not b!5249909) (not b!5249594) (not b!5249479) (not d!1691066) (not b!5249941) (not d!1691010) (not d!1691182) (not b!5249575) (not b!5250008) (not d!1691154) (not d!1691272) (not d!1691138) (not b!5249599) (not b!5249168) (not b!5249477) (not b!5249990) (not b!5250002) (not b!5249630) (not b!5249636) (not d!1691258) (not bm!372032) (not b!5249936) (not b!5249478) (not b!5249450) (not b!5249760) (not b!5249769) (not bs!1218070) (not bm!372027) (not b!5249948) (not b!5249747) (not bm!372041) (not b!5249972) (not bm!371988) (not b!5249787) (not d!1691226) (not b!5249946) (not b!5249929) (not d!1691240) (not d!1691204) (not d!1691052) (not b!5249960) (not b!5249641) (not b!5249860) (not d!1691094) (not setNonEmpty!33509) (not b!5249494) (not b!5249780) (not bm!371994) (not b!5249985) (not b!5249646) (not b!5249753) (not b!5249435) (not b!5249778) (not d!1691054) (not b!5250007) (not b!5249645) (not b!5249910) (not b!5250013) (not b!5249640) (not bm!371993) (not b!5249758) (not d!1691112) (not b!5249812) (not b!5249601) (not b!5249927) (not d!1691050) (not b!5249973) (not b!5249775) (not d!1691102) (not b!5249887) (not b!5249567) (not b!5249634) (not b!5249935) (not b!5249883) (not b!5249987) (not b!5249911) (not b!5249836) (not b!5249495) (not bm!372010) (not d!1691096) (not d!1691232) (not b!5249868) (not b!5249448) (not b!5250003) (not b!5249991) (not b!5249788) (not b!5249925) (not bm!372030) (not d!1691248) (not d!1691180) (not b!5249781) (not b!5249777) (not d!1691186) (not b!5249364) (not b!5249823) (not d!1691202) (not b!5250026) (not b!5249628))
(check-sat)
