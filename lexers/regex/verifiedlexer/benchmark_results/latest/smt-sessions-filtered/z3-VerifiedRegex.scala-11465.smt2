; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!622046 () Bool)

(assert start!622046)

(declare-fun b!6252634 () Bool)

(assert (=> b!6252634 true))

(assert (=> b!6252634 true))

(declare-fun lambda!342042 () Int)

(declare-fun lambda!342041 () Int)

(assert (=> b!6252634 (not (= lambda!342042 lambda!342041))))

(assert (=> b!6252634 true))

(assert (=> b!6252634 true))

(declare-fun b!6252643 () Bool)

(assert (=> b!6252643 true))

(declare-fun b!6252628 () Bool)

(declare-fun res!2580680 () Bool)

(declare-fun e!3803865 () Bool)

(assert (=> b!6252628 (=> (not res!2580680) (not e!3803865))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32624 0))(
  ( (C!32625 (val!26014 Int)) )
))
(declare-datatypes ((Regex!16177 0))(
  ( (ElementMatch!16177 (c!1131644 C!32624)) (Concat!25022 (regOne!32866 Regex!16177) (regTwo!32866 Regex!16177)) (EmptyExpr!16177) (Star!16177 (reg!16506 Regex!16177)) (EmptyLang!16177) (Union!16177 (regOne!32867 Regex!16177) (regTwo!32867 Regex!16177)) )
))
(declare-datatypes ((List!64830 0))(
  ( (Nil!64706) (Cons!64706 (h!71154 Regex!16177) (t!378378 List!64830)) )
))
(declare-datatypes ((Context!11122 0))(
  ( (Context!11123 (exprs!6061 List!64830)) )
))
(declare-fun z!1189 () (InoxSet Context!11122))

(declare-datatypes ((List!64831 0))(
  ( (Nil!64707) (Cons!64707 (h!71155 Context!11122) (t!378379 List!64831)) )
))
(declare-fun zl!343 () List!64831)

(declare-fun toList!9961 ((InoxSet Context!11122)) List!64831)

(assert (=> b!6252628 (= res!2580680 (= (toList!9961 z!1189) zl!343))))

(declare-fun b!6252629 () Bool)

(declare-fun res!2580692 () Bool)

(assert (=> b!6252629 (=> (not res!2580692) (not e!3803865))))

(declare-fun r!7292 () Regex!16177)

(declare-fun unfocusZipper!1919 (List!64831) Regex!16177)

(assert (=> b!6252629 (= res!2580692 (= r!7292 (unfocusZipper!1919 zl!343)))))

(declare-fun b!6252630 () Bool)

(declare-fun res!2580694 () Bool)

(declare-fun e!3803849 () Bool)

(assert (=> b!6252630 (=> res!2580694 e!3803849)))

(declare-fun lt!2348857 () (InoxSet Context!11122))

(declare-fun lt!2348865 () List!64831)

(assert (=> b!6252630 (= res!2580694 (not (= (toList!9961 lt!2348857) lt!2348865)))))

(declare-fun b!6252631 () Bool)

(declare-datatypes ((Unit!158039 0))(
  ( (Unit!158040) )
))
(declare-fun e!3803852 () Unit!158039)

(declare-fun Unit!158041 () Unit!158039)

(assert (=> b!6252631 (= e!3803852 Unit!158041)))

(declare-datatypes ((List!64832 0))(
  ( (Nil!64708) (Cons!64708 (h!71156 C!32624) (t!378380 List!64832)) )
))
(declare-fun s!2326 () List!64832)

(declare-fun lt!2348882 () Unit!158039)

(declare-fun lt!2348871 () (InoxSet Context!11122))

(declare-fun lt!2348858 () (InoxSet Context!11122))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1008 ((InoxSet Context!11122) (InoxSet Context!11122) List!64832) Unit!158039)

(assert (=> b!6252631 (= lt!2348882 (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348871 lt!2348858 (t!378380 s!2326)))))

(declare-fun res!2580690 () Bool)

(declare-fun matchZipper!2189 ((InoxSet Context!11122) List!64832) Bool)

(assert (=> b!6252631 (= res!2580690 (matchZipper!2189 lt!2348871 (t!378380 s!2326)))))

(declare-fun e!3803866 () Bool)

(assert (=> b!6252631 (=> res!2580690 e!3803866)))

(assert (=> b!6252631 (= (matchZipper!2189 ((_ map or) lt!2348871 lt!2348858) (t!378380 s!2326)) e!3803866)))

(declare-fun b!6252632 () Bool)

(declare-fun res!2580684 () Bool)

(declare-fun e!3803868 () Bool)

(assert (=> b!6252632 (=> res!2580684 e!3803868)))

(declare-fun isEmpty!36730 (List!64831) Bool)

(assert (=> b!6252632 (= res!2580684 (not (isEmpty!36730 (t!378379 zl!343))))))

(declare-fun res!2580678 () Bool)

(assert (=> start!622046 (=> (not res!2580678) (not e!3803865))))

(declare-fun validRegex!7913 (Regex!16177) Bool)

(assert (=> start!622046 (= res!2580678 (validRegex!7913 r!7292))))

(assert (=> start!622046 e!3803865))

(declare-fun e!3803854 () Bool)

(assert (=> start!622046 e!3803854))

(declare-fun condSetEmpty!42506 () Bool)

(assert (=> start!622046 (= condSetEmpty!42506 (= z!1189 ((as const (Array Context!11122 Bool)) false)))))

(declare-fun setRes!42506 () Bool)

(assert (=> start!622046 setRes!42506))

(declare-fun e!3803848 () Bool)

(assert (=> start!622046 e!3803848))

(declare-fun e!3803863 () Bool)

(assert (=> start!622046 e!3803863))

(declare-fun b!6252633 () Bool)

(declare-fun res!2580679 () Bool)

(declare-fun e!3803861 () Bool)

(assert (=> b!6252633 (=> res!2580679 e!3803861)))

(declare-fun zipperDepth!302 (List!64831) Int)

(assert (=> b!6252633 (= res!2580679 (> (zipperDepth!302 lt!2348865) (zipperDepth!302 zl!343)))))

(declare-fun e!3803867 () Bool)

(assert (=> b!6252634 (= e!3803868 e!3803867)))

(declare-fun res!2580687 () Bool)

(assert (=> b!6252634 (=> res!2580687 e!3803867)))

(declare-fun lt!2348880 () Bool)

(declare-fun lt!2348873 () Bool)

(get-info :version)

(assert (=> b!6252634 (= res!2580687 (or (not (= lt!2348873 lt!2348880)) ((_ is Nil!64708) s!2326)))))

(declare-fun Exists!3247 (Int) Bool)

(assert (=> b!6252634 (= (Exists!3247 lambda!342041) (Exists!3247 lambda!342042))))

(declare-fun lt!2348861 () Unit!158039)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1784 (Regex!16177 Regex!16177 List!64832) Unit!158039)

(assert (=> b!6252634 (= lt!2348861 (lemmaExistCutMatchRandMatchRSpecEquivalent!1784 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326))))

(assert (=> b!6252634 (= lt!2348880 (Exists!3247 lambda!342041))))

(declare-datatypes ((tuple2!66312 0))(
  ( (tuple2!66313 (_1!36459 List!64832) (_2!36459 List!64832)) )
))
(declare-datatypes ((Option!16068 0))(
  ( (None!16067) (Some!16067 (v!52220 tuple2!66312)) )
))
(declare-fun isDefined!12771 (Option!16068) Bool)

(declare-fun findConcatSeparation!2482 (Regex!16177 Regex!16177 List!64832 List!64832 List!64832) Option!16068)

(assert (=> b!6252634 (= lt!2348880 (isDefined!12771 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326)))))

(declare-fun lt!2348864 () Unit!158039)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2246 (Regex!16177 Regex!16177 List!64832) Unit!158039)

(assert (=> b!6252634 (= lt!2348864 (lemmaFindConcatSeparationEquivalentToExists!2246 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326))))

(declare-fun b!6252635 () Bool)

(declare-fun res!2580689 () Bool)

(assert (=> b!6252635 (=> res!2580689 e!3803868)))

(declare-fun generalisedConcat!1774 (List!64830) Regex!16177)

(assert (=> b!6252635 (= res!2580689 (not (= r!7292 (generalisedConcat!1774 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6252636 () Bool)

(declare-fun e!3803851 () Bool)

(declare-fun tp!1744844 () Bool)

(declare-fun inv!83689 (Context!11122) Bool)

(assert (=> b!6252636 (= e!3803848 (and (inv!83689 (h!71155 zl!343)) e!3803851 tp!1744844))))

(declare-fun b!6252637 () Bool)

(declare-fun tp!1744846 () Bool)

(declare-fun tp!1744837 () Bool)

(assert (=> b!6252637 (= e!3803854 (and tp!1744846 tp!1744837))))

(declare-fun b!6252638 () Bool)

(declare-fun res!2580698 () Bool)

(assert (=> b!6252638 (=> res!2580698 e!3803867)))

(declare-fun isEmpty!36731 (List!64830) Bool)

(assert (=> b!6252638 (= res!2580698 (isEmpty!36731 (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun setNonEmpty!42506 () Bool)

(declare-fun e!3803850 () Bool)

(declare-fun setElem!42506 () Context!11122)

(declare-fun tp!1744840 () Bool)

(assert (=> setNonEmpty!42506 (= setRes!42506 (and tp!1744840 (inv!83689 setElem!42506) e!3803850))))

(declare-fun setRest!42506 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42506 (= z!1189 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42506 true) setRest!42506))))

(declare-fun b!6252639 () Bool)

(declare-fun e!3803862 () Bool)

(declare-fun lt!2348867 () (InoxSet Context!11122))

(assert (=> b!6252639 (= e!3803862 (matchZipper!2189 lt!2348867 (t!378380 s!2326)))))

(declare-fun b!6252640 () Bool)

(declare-fun res!2580677 () Bool)

(assert (=> b!6252640 (=> res!2580677 e!3803868)))

(assert (=> b!6252640 (= res!2580677 (or ((_ is EmptyExpr!16177) r!7292) ((_ is EmptyLang!16177) r!7292) ((_ is ElementMatch!16177) r!7292) ((_ is Union!16177) r!7292) (not ((_ is Concat!25022) r!7292))))))

(declare-fun b!6252641 () Bool)

(declare-fun lt!2348881 () Regex!16177)

(assert (=> b!6252641 (= e!3803849 (= lt!2348881 (unfocusZipper!1919 lt!2348865)))))

(declare-fun b!6252642 () Bool)

(declare-fun res!2580688 () Bool)

(assert (=> b!6252642 (=> res!2580688 e!3803868)))

(declare-fun generalisedUnion!2021 (List!64830) Regex!16177)

(declare-fun unfocusZipperList!1598 (List!64831) List!64830)

(assert (=> b!6252642 (= res!2580688 (not (= r!7292 (generalisedUnion!2021 (unfocusZipperList!1598 zl!343)))))))

(declare-fun e!3803858 () Bool)

(assert (=> b!6252643 (= e!3803867 e!3803858)))

(declare-fun res!2580676 () Bool)

(assert (=> b!6252643 (=> res!2580676 e!3803858)))

(assert (=> b!6252643 (= res!2580676 (or (and ((_ is ElementMatch!16177) (regOne!32866 r!7292)) (= (c!1131644 (regOne!32866 r!7292)) (h!71156 s!2326))) ((_ is Union!16177) (regOne!32866 r!7292)) (not ((_ is Concat!25022) (regOne!32866 r!7292)))))))

(declare-fun lt!2348862 () Unit!158039)

(assert (=> b!6252643 (= lt!2348862 e!3803852)))

(declare-fun c!1131643 () Bool)

(declare-fun nullable!6170 (Regex!16177) Bool)

(assert (=> b!6252643 (= c!1131643 (nullable!6170 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun lambda!342043 () Int)

(declare-fun flatMap!1682 ((InoxSet Context!11122) Int) (InoxSet Context!11122))

(declare-fun derivationStepZipperUp!1351 (Context!11122 C!32624) (InoxSet Context!11122))

(assert (=> b!6252643 (= (flatMap!1682 z!1189 lambda!342043) (derivationStepZipperUp!1351 (h!71155 zl!343) (h!71156 s!2326)))))

(declare-fun lt!2348850 () Unit!158039)

(declare-fun lemmaFlatMapOnSingletonSet!1208 ((InoxSet Context!11122) Context!11122 Int) Unit!158039)

(assert (=> b!6252643 (= lt!2348850 (lemmaFlatMapOnSingletonSet!1208 z!1189 (h!71155 zl!343) lambda!342043))))

(declare-fun lt!2348878 () Context!11122)

(assert (=> b!6252643 (= lt!2348858 (derivationStepZipperUp!1351 lt!2348878 (h!71156 s!2326)))))

(declare-fun derivationStepZipperDown!1425 (Regex!16177 Context!11122 C!32624) (InoxSet Context!11122))

(assert (=> b!6252643 (= lt!2348871 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (h!71155 zl!343))) lt!2348878 (h!71156 s!2326)))))

(assert (=> b!6252643 (= lt!2348878 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun lt!2348851 () (InoxSet Context!11122))

(assert (=> b!6252643 (= lt!2348851 (derivationStepZipperUp!1351 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))) (h!71156 s!2326)))))

(declare-fun b!6252644 () Bool)

(assert (=> b!6252644 (= e!3803865 (not e!3803868))))

(declare-fun res!2580675 () Bool)

(assert (=> b!6252644 (=> res!2580675 e!3803868)))

(assert (=> b!6252644 (= res!2580675 (not ((_ is Cons!64707) zl!343)))))

(declare-fun matchRSpec!3278 (Regex!16177 List!64832) Bool)

(assert (=> b!6252644 (= lt!2348873 (matchRSpec!3278 r!7292 s!2326))))

(declare-fun matchR!8360 (Regex!16177 List!64832) Bool)

(assert (=> b!6252644 (= lt!2348873 (matchR!8360 r!7292 s!2326))))

(declare-fun lt!2348866 () Unit!158039)

(declare-fun mainMatchTheorem!3278 (Regex!16177 List!64832) Unit!158039)

(assert (=> b!6252644 (= lt!2348866 (mainMatchTheorem!3278 r!7292 s!2326))))

(declare-fun b!6252645 () Bool)

(declare-fun res!2580697 () Bool)

(declare-fun e!3803860 () Bool)

(assert (=> b!6252645 (=> res!2580697 e!3803860)))

(assert (=> b!6252645 (= res!2580697 (not (= (exprs!6061 (h!71155 zl!343)) (Cons!64706 (Concat!25022 (regOne!32866 (regOne!32866 r!7292)) (regTwo!32866 (regOne!32866 r!7292))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6252646 () Bool)

(declare-fun res!2580686 () Bool)

(assert (=> b!6252646 (=> res!2580686 e!3803858)))

(assert (=> b!6252646 (= res!2580686 (not (nullable!6170 (regOne!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6252647 () Bool)

(declare-fun res!2580700 () Bool)

(assert (=> b!6252647 (=> res!2580700 e!3803860)))

(declare-fun lt!2348879 () Context!11122)

(declare-fun contextDepthTotal!300 (Context!11122) Int)

(assert (=> b!6252647 (= res!2580700 (>= (contextDepthTotal!300 lt!2348879) (contextDepthTotal!300 (h!71155 zl!343))))))

(declare-fun b!6252648 () Bool)

(declare-fun e!3803857 () Bool)

(declare-fun lt!2348854 () (InoxSet Context!11122))

(assert (=> b!6252648 (= e!3803857 (matchZipper!2189 lt!2348854 (t!378380 s!2326)))))

(declare-fun b!6252649 () Bool)

(declare-fun e!3803864 () Bool)

(declare-fun lt!2348870 () (InoxSet Context!11122))

(declare-fun derivationStepZipper!2143 ((InoxSet Context!11122) C!32624) (InoxSet Context!11122))

(assert (=> b!6252649 (= e!3803864 (not (matchZipper!2189 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (t!378380 s!2326))))))

(declare-fun b!6252650 () Bool)

(declare-fun tp_is_empty!41607 () Bool)

(declare-fun tp!1744841 () Bool)

(assert (=> b!6252650 (= e!3803863 (and tp_is_empty!41607 tp!1744841))))

(declare-fun b!6252651 () Bool)

(assert (=> b!6252651 (= e!3803854 tp_is_empty!41607)))

(declare-fun b!6252652 () Bool)

(declare-fun tp!1744839 () Bool)

(assert (=> b!6252652 (= e!3803850 tp!1744839)))

(declare-fun b!6252653 () Bool)

(declare-fun e!3803855 () Bool)

(assert (=> b!6252653 (= e!3803855 (not (matchZipper!2189 lt!2348854 (t!378380 s!2326))))))

(declare-fun b!6252654 () Bool)

(declare-fun tp!1744843 () Bool)

(assert (=> b!6252654 (= e!3803851 tp!1744843)))

(declare-fun b!6252655 () Bool)

(assert (=> b!6252655 (= e!3803866 (matchZipper!2189 lt!2348858 (t!378380 s!2326)))))

(declare-fun b!6252656 () Bool)

(declare-fun e!3803859 () Bool)

(declare-fun e!3803856 () Bool)

(assert (=> b!6252656 (= e!3803859 e!3803856)))

(declare-fun res!2580685 () Bool)

(assert (=> b!6252656 (=> res!2580685 e!3803856)))

(declare-fun lt!2348853 () (InoxSet Context!11122))

(declare-fun lt!2348868 () (InoxSet Context!11122))

(assert (=> b!6252656 (= res!2580685 (not (= lt!2348853 lt!2348868)))))

(declare-fun lt!2348852 () (InoxSet Context!11122))

(assert (=> b!6252656 (= lt!2348868 ((_ map or) lt!2348852 lt!2348867))))

(declare-fun lt!2348859 () Context!11122)

(assert (=> b!6252656 (= lt!2348867 (derivationStepZipperUp!1351 lt!2348859 (h!71156 s!2326)))))

(assert (=> b!6252656 (= (flatMap!1682 lt!2348857 lambda!342043) (derivationStepZipperUp!1351 lt!2348879 (h!71156 s!2326)))))

(declare-fun lt!2348876 () Unit!158039)

(assert (=> b!6252656 (= lt!2348876 (lemmaFlatMapOnSingletonSet!1208 lt!2348857 lt!2348879 lambda!342043))))

(declare-fun lt!2348855 () (InoxSet Context!11122))

(assert (=> b!6252656 (= lt!2348855 (derivationStepZipperUp!1351 lt!2348879 (h!71156 s!2326)))))

(assert (=> b!6252656 (= lt!2348853 (derivationStepZipper!2143 lt!2348857 (h!71156 s!2326)))))

(assert (=> b!6252656 (= lt!2348870 (store ((as const (Array Context!11122 Bool)) false) lt!2348859 true))))

(assert (=> b!6252656 (= lt!2348857 (store ((as const (Array Context!11122 Bool)) false) lt!2348879 true))))

(declare-fun lt!2348860 () List!64830)

(assert (=> b!6252656 (= lt!2348879 (Context!11123 lt!2348860))))

(declare-fun lt!2348877 () List!64830)

(assert (=> b!6252656 (= lt!2348860 (Cons!64706 (regOne!32866 (regOne!32866 r!7292)) lt!2348877))))

(declare-fun setIsEmpty!42506 () Bool)

(assert (=> setIsEmpty!42506 setRes!42506))

(declare-fun b!6252657 () Bool)

(assert (=> b!6252657 (= e!3803856 e!3803860)))

(declare-fun res!2580699 () Bool)

(assert (=> b!6252657 (=> res!2580699 e!3803860)))

(assert (=> b!6252657 (= res!2580699 e!3803864)))

(declare-fun res!2580693 () Bool)

(assert (=> b!6252657 (=> (not res!2580693) (not e!3803864))))

(declare-fun lt!2348872 () Bool)

(assert (=> b!6252657 (= res!2580693 (not (= lt!2348872 (matchZipper!2189 lt!2348853 (t!378380 s!2326)))))))

(assert (=> b!6252657 (= (matchZipper!2189 lt!2348868 (t!378380 s!2326)) e!3803862)))

(declare-fun res!2580696 () Bool)

(assert (=> b!6252657 (=> res!2580696 e!3803862)))

(declare-fun lt!2348863 () Bool)

(assert (=> b!6252657 (= res!2580696 lt!2348863)))

(declare-fun lt!2348869 () Unit!158039)

(assert (=> b!6252657 (= lt!2348869 (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348852 lt!2348867 (t!378380 s!2326)))))

(assert (=> b!6252657 (= (flatMap!1682 lt!2348870 lambda!342043) (derivationStepZipperUp!1351 lt!2348859 (h!71156 s!2326)))))

(declare-fun lt!2348856 () Unit!158039)

(assert (=> b!6252657 (= lt!2348856 (lemmaFlatMapOnSingletonSet!1208 lt!2348870 lt!2348859 lambda!342043))))

(declare-fun b!6252658 () Bool)

(declare-fun e!3803853 () Bool)

(assert (=> b!6252658 (= e!3803853 e!3803859)))

(declare-fun res!2580691 () Bool)

(assert (=> b!6252658 (=> res!2580691 e!3803859)))

(assert (=> b!6252658 (= res!2580691 e!3803855)))

(declare-fun res!2580683 () Bool)

(assert (=> b!6252658 (=> (not res!2580683) (not e!3803855))))

(assert (=> b!6252658 (= res!2580683 (not (= lt!2348872 lt!2348863)))))

(assert (=> b!6252658 (= lt!2348872 (matchZipper!2189 lt!2348871 (t!378380 s!2326)))))

(declare-fun lt!2348875 () (InoxSet Context!11122))

(assert (=> b!6252658 (= (matchZipper!2189 lt!2348875 (t!378380 s!2326)) e!3803857)))

(declare-fun res!2580702 () Bool)

(assert (=> b!6252658 (=> res!2580702 e!3803857)))

(assert (=> b!6252658 (= res!2580702 lt!2348863)))

(assert (=> b!6252658 (= lt!2348863 (matchZipper!2189 lt!2348852 (t!378380 s!2326)))))

(declare-fun lt!2348874 () Unit!158039)

(assert (=> b!6252658 (= lt!2348874 (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348852 lt!2348854 (t!378380 s!2326)))))

(declare-fun b!6252659 () Bool)

(declare-fun tp!1744838 () Bool)

(declare-fun tp!1744845 () Bool)

(assert (=> b!6252659 (= e!3803854 (and tp!1744838 tp!1744845))))

(declare-fun b!6252660 () Bool)

(assert (=> b!6252660 (= e!3803860 e!3803861)))

(declare-fun res!2580695 () Bool)

(assert (=> b!6252660 (=> res!2580695 e!3803861)))

(declare-fun zipperDepthTotal!330 (List!64831) Int)

(assert (=> b!6252660 (= res!2580695 (>= (zipperDepthTotal!330 lt!2348865) (zipperDepthTotal!330 zl!343)))))

(assert (=> b!6252660 (= lt!2348865 (Cons!64707 lt!2348879 Nil!64707))))

(declare-fun b!6252661 () Bool)

(declare-fun res!2580682 () Bool)

(assert (=> b!6252661 (=> res!2580682 e!3803868)))

(assert (=> b!6252661 (= res!2580682 (not ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6252662 () Bool)

(assert (=> b!6252662 (= e!3803858 e!3803853)))

(declare-fun res!2580681 () Bool)

(assert (=> b!6252662 (=> res!2580681 e!3803853)))

(assert (=> b!6252662 (= res!2580681 (not (= lt!2348871 lt!2348875)))))

(assert (=> b!6252662 (= lt!2348875 ((_ map or) lt!2348852 lt!2348854))))

(assert (=> b!6252662 (= lt!2348854 (derivationStepZipperDown!1425 (regTwo!32866 (regOne!32866 r!7292)) lt!2348878 (h!71156 s!2326)))))

(assert (=> b!6252662 (= lt!2348852 (derivationStepZipperDown!1425 (regOne!32866 (regOne!32866 r!7292)) lt!2348859 (h!71156 s!2326)))))

(assert (=> b!6252662 (= lt!2348859 (Context!11123 lt!2348877))))

(assert (=> b!6252662 (= lt!2348877 (Cons!64706 (regTwo!32866 (regOne!32866 r!7292)) (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6252663 () Bool)

(declare-fun Unit!158042 () Unit!158039)

(assert (=> b!6252663 (= e!3803852 Unit!158042)))

(declare-fun b!6252664 () Bool)

(assert (=> b!6252664 (= e!3803861 e!3803849)))

(declare-fun res!2580701 () Bool)

(assert (=> b!6252664 (=> res!2580701 e!3803849)))

(assert (=> b!6252664 (= res!2580701 (not (validRegex!7913 lt!2348881)))))

(assert (=> b!6252664 (= lt!2348881 (generalisedConcat!1774 lt!2348860))))

(declare-fun b!6252665 () Bool)

(declare-fun tp!1744842 () Bool)

(assert (=> b!6252665 (= e!3803854 tp!1744842)))

(assert (= (and start!622046 res!2580678) b!6252628))

(assert (= (and b!6252628 res!2580680) b!6252629))

(assert (= (and b!6252629 res!2580692) b!6252644))

(assert (= (and b!6252644 (not res!2580675)) b!6252632))

(assert (= (and b!6252632 (not res!2580684)) b!6252635))

(assert (= (and b!6252635 (not res!2580689)) b!6252661))

(assert (= (and b!6252661 (not res!2580682)) b!6252642))

(assert (= (and b!6252642 (not res!2580688)) b!6252640))

(assert (= (and b!6252640 (not res!2580677)) b!6252634))

(assert (= (and b!6252634 (not res!2580687)) b!6252638))

(assert (= (and b!6252638 (not res!2580698)) b!6252643))

(assert (= (and b!6252643 c!1131643) b!6252631))

(assert (= (and b!6252643 (not c!1131643)) b!6252663))

(assert (= (and b!6252631 (not res!2580690)) b!6252655))

(assert (= (and b!6252643 (not res!2580676)) b!6252646))

(assert (= (and b!6252646 (not res!2580686)) b!6252662))

(assert (= (and b!6252662 (not res!2580681)) b!6252658))

(assert (= (and b!6252658 (not res!2580702)) b!6252648))

(assert (= (and b!6252658 res!2580683) b!6252653))

(assert (= (and b!6252658 (not res!2580691)) b!6252656))

(assert (= (and b!6252656 (not res!2580685)) b!6252657))

(assert (= (and b!6252657 (not res!2580696)) b!6252639))

(assert (= (and b!6252657 res!2580693) b!6252649))

(assert (= (and b!6252657 (not res!2580699)) b!6252645))

(assert (= (and b!6252645 (not res!2580697)) b!6252647))

(assert (= (and b!6252647 (not res!2580700)) b!6252660))

(assert (= (and b!6252660 (not res!2580695)) b!6252633))

(assert (= (and b!6252633 (not res!2580679)) b!6252664))

(assert (= (and b!6252664 (not res!2580701)) b!6252630))

(assert (= (and b!6252630 (not res!2580694)) b!6252641))

(assert (= (and start!622046 ((_ is ElementMatch!16177) r!7292)) b!6252651))

(assert (= (and start!622046 ((_ is Concat!25022) r!7292)) b!6252637))

(assert (= (and start!622046 ((_ is Star!16177) r!7292)) b!6252665))

(assert (= (and start!622046 ((_ is Union!16177) r!7292)) b!6252659))

(assert (= (and start!622046 condSetEmpty!42506) setIsEmpty!42506))

(assert (= (and start!622046 (not condSetEmpty!42506)) setNonEmpty!42506))

(assert (= setNonEmpty!42506 b!6252652))

(assert (= b!6252636 b!6252654))

(assert (= (and start!622046 ((_ is Cons!64707) zl!343)) b!6252636))

(assert (= (and start!622046 ((_ is Cons!64708) s!2326)) b!6252650))

(declare-fun m!7075652 () Bool)

(assert (=> b!6252643 m!7075652))

(declare-fun m!7075654 () Bool)

(assert (=> b!6252643 m!7075654))

(declare-fun m!7075656 () Bool)

(assert (=> b!6252643 m!7075656))

(declare-fun m!7075658 () Bool)

(assert (=> b!6252643 m!7075658))

(declare-fun m!7075660 () Bool)

(assert (=> b!6252643 m!7075660))

(declare-fun m!7075662 () Bool)

(assert (=> b!6252643 m!7075662))

(declare-fun m!7075664 () Bool)

(assert (=> b!6252643 m!7075664))

(declare-fun m!7075666 () Bool)

(assert (=> b!6252642 m!7075666))

(assert (=> b!6252642 m!7075666))

(declare-fun m!7075668 () Bool)

(assert (=> b!6252642 m!7075668))

(declare-fun m!7075670 () Bool)

(assert (=> b!6252649 m!7075670))

(assert (=> b!6252649 m!7075670))

(declare-fun m!7075672 () Bool)

(assert (=> b!6252649 m!7075672))

(declare-fun m!7075674 () Bool)

(assert (=> b!6252653 m!7075674))

(declare-fun m!7075676 () Bool)

(assert (=> b!6252641 m!7075676))

(declare-fun m!7075678 () Bool)

(assert (=> b!6252644 m!7075678))

(declare-fun m!7075680 () Bool)

(assert (=> b!6252644 m!7075680))

(declare-fun m!7075682 () Bool)

(assert (=> b!6252644 m!7075682))

(declare-fun m!7075684 () Bool)

(assert (=> setNonEmpty!42506 m!7075684))

(declare-fun m!7075686 () Bool)

(assert (=> b!6252632 m!7075686))

(declare-fun m!7075688 () Bool)

(assert (=> b!6252662 m!7075688))

(declare-fun m!7075690 () Bool)

(assert (=> b!6252662 m!7075690))

(declare-fun m!7075692 () Bool)

(assert (=> b!6252660 m!7075692))

(declare-fun m!7075694 () Bool)

(assert (=> b!6252660 m!7075694))

(declare-fun m!7075696 () Bool)

(assert (=> b!6252630 m!7075696))

(declare-fun m!7075698 () Bool)

(assert (=> b!6252638 m!7075698))

(declare-fun m!7075700 () Bool)

(assert (=> b!6252634 m!7075700))

(declare-fun m!7075702 () Bool)

(assert (=> b!6252634 m!7075702))

(declare-fun m!7075704 () Bool)

(assert (=> b!6252634 m!7075704))

(declare-fun m!7075706 () Bool)

(assert (=> b!6252634 m!7075706))

(assert (=> b!6252634 m!7075702))

(declare-fun m!7075708 () Bool)

(assert (=> b!6252634 m!7075708))

(assert (=> b!6252634 m!7075704))

(declare-fun m!7075710 () Bool)

(assert (=> b!6252634 m!7075710))

(declare-fun m!7075712 () Bool)

(assert (=> b!6252656 m!7075712))

(declare-fun m!7075714 () Bool)

(assert (=> b!6252656 m!7075714))

(declare-fun m!7075716 () Bool)

(assert (=> b!6252656 m!7075716))

(declare-fun m!7075718 () Bool)

(assert (=> b!6252656 m!7075718))

(declare-fun m!7075720 () Bool)

(assert (=> b!6252656 m!7075720))

(declare-fun m!7075722 () Bool)

(assert (=> b!6252656 m!7075722))

(declare-fun m!7075724 () Bool)

(assert (=> b!6252656 m!7075724))

(declare-fun m!7075726 () Bool)

(assert (=> b!6252647 m!7075726))

(declare-fun m!7075728 () Bool)

(assert (=> b!6252647 m!7075728))

(declare-fun m!7075730 () Bool)

(assert (=> b!6252636 m!7075730))

(declare-fun m!7075732 () Bool)

(assert (=> b!6252657 m!7075732))

(declare-fun m!7075734 () Bool)

(assert (=> b!6252657 m!7075734))

(declare-fun m!7075736 () Bool)

(assert (=> b!6252657 m!7075736))

(declare-fun m!7075738 () Bool)

(assert (=> b!6252657 m!7075738))

(declare-fun m!7075740 () Bool)

(assert (=> b!6252657 m!7075740))

(assert (=> b!6252657 m!7075722))

(declare-fun m!7075742 () Bool)

(assert (=> b!6252646 m!7075742))

(declare-fun m!7075744 () Bool)

(assert (=> b!6252664 m!7075744))

(declare-fun m!7075746 () Bool)

(assert (=> b!6252664 m!7075746))

(declare-fun m!7075748 () Bool)

(assert (=> b!6252658 m!7075748))

(declare-fun m!7075750 () Bool)

(assert (=> b!6252658 m!7075750))

(declare-fun m!7075752 () Bool)

(assert (=> b!6252658 m!7075752))

(declare-fun m!7075754 () Bool)

(assert (=> b!6252658 m!7075754))

(declare-fun m!7075756 () Bool)

(assert (=> b!6252631 m!7075756))

(assert (=> b!6252631 m!7075748))

(declare-fun m!7075758 () Bool)

(assert (=> b!6252631 m!7075758))

(declare-fun m!7075760 () Bool)

(assert (=> b!6252655 m!7075760))

(declare-fun m!7075762 () Bool)

(assert (=> b!6252635 m!7075762))

(declare-fun m!7075764 () Bool)

(assert (=> b!6252628 m!7075764))

(declare-fun m!7075766 () Bool)

(assert (=> b!6252629 m!7075766))

(declare-fun m!7075768 () Bool)

(assert (=> b!6252639 m!7075768))

(assert (=> b!6252648 m!7075674))

(declare-fun m!7075770 () Bool)

(assert (=> b!6252633 m!7075770))

(declare-fun m!7075772 () Bool)

(assert (=> b!6252633 m!7075772))

(declare-fun m!7075774 () Bool)

(assert (=> start!622046 m!7075774))

(check-sat (not b!6252655) (not b!6252647) (not setNonEmpty!42506) (not b!6252632) (not b!6252646) (not b!6252662) (not b!6252650) (not b!6252660) (not b!6252664) (not start!622046) (not b!6252648) (not b!6252636) (not b!6252628) (not b!6252633) tp_is_empty!41607 (not b!6252639) (not b!6252630) (not b!6252637) (not b!6252638) (not b!6252634) (not b!6252657) (not b!6252642) (not b!6252653) (not b!6252656) (not b!6252654) (not b!6252649) (not b!6252641) (not b!6252658) (not b!6252643) (not b!6252644) (not b!6252652) (not b!6252659) (not b!6252629) (not b!6252635) (not b!6252631) (not b!6252665))
(check-sat)
(get-model)

(declare-fun d!1961536 () Bool)

(declare-fun c!1131785 () Bool)

(declare-fun isEmpty!36734 (List!64832) Bool)

(assert (=> d!1961536 (= c!1131785 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804122 () Bool)

(assert (=> d!1961536 (= (matchZipper!2189 lt!2348854 (t!378380 s!2326)) e!3804122)))

(declare-fun b!6253121 () Bool)

(declare-fun nullableZipper!1949 ((InoxSet Context!11122)) Bool)

(assert (=> b!6253121 (= e!3804122 (nullableZipper!1949 lt!2348854))))

(declare-fun b!6253122 () Bool)

(declare-fun head!12858 (List!64832) C!32624)

(declare-fun tail!11943 (List!64832) List!64832)

(assert (=> b!6253122 (= e!3804122 (matchZipper!2189 (derivationStepZipper!2143 lt!2348854 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961536 c!1131785) b!6253121))

(assert (= (and d!1961536 (not c!1131785)) b!6253122))

(declare-fun m!7076136 () Bool)

(assert (=> d!1961536 m!7076136))

(declare-fun m!7076138 () Bool)

(assert (=> b!6253121 m!7076138))

(declare-fun m!7076140 () Bool)

(assert (=> b!6253122 m!7076140))

(assert (=> b!6253122 m!7076140))

(declare-fun m!7076142 () Bool)

(assert (=> b!6253122 m!7076142))

(declare-fun m!7076144 () Bool)

(assert (=> b!6253122 m!7076144))

(assert (=> b!6253122 m!7076142))

(assert (=> b!6253122 m!7076144))

(declare-fun m!7076146 () Bool)

(assert (=> b!6253122 m!7076146))

(assert (=> b!6252648 d!1961536))

(declare-fun d!1961538 () Bool)

(declare-fun e!3804125 () Bool)

(assert (=> d!1961538 e!3804125))

(declare-fun res!2580834 () Bool)

(assert (=> d!1961538 (=> (not res!2580834) (not e!3804125))))

(declare-fun lt!2348958 () List!64831)

(declare-fun noDuplicate!2013 (List!64831) Bool)

(assert (=> d!1961538 (= res!2580834 (noDuplicate!2013 lt!2348958))))

(declare-fun choose!46404 ((InoxSet Context!11122)) List!64831)

(assert (=> d!1961538 (= lt!2348958 (choose!46404 z!1189))))

(assert (=> d!1961538 (= (toList!9961 z!1189) lt!2348958)))

(declare-fun b!6253125 () Bool)

(declare-fun content!12142 (List!64831) (InoxSet Context!11122))

(assert (=> b!6253125 (= e!3804125 (= (content!12142 lt!2348958) z!1189))))

(assert (= (and d!1961538 res!2580834) b!6253125))

(declare-fun m!7076148 () Bool)

(assert (=> d!1961538 m!7076148))

(declare-fun m!7076150 () Bool)

(assert (=> d!1961538 m!7076150))

(declare-fun m!7076152 () Bool)

(assert (=> b!6253125 m!7076152))

(assert (=> b!6252628 d!1961538))

(declare-fun b!6253144 () Bool)

(declare-fun e!3804143 () Bool)

(declare-fun e!3804142 () Bool)

(assert (=> b!6253144 (= e!3804143 e!3804142)))

(declare-fun res!2580846 () Bool)

(assert (=> b!6253144 (=> (not res!2580846) (not e!3804142))))

(declare-fun call!527523 () Bool)

(assert (=> b!6253144 (= res!2580846 call!527523)))

(declare-fun b!6253145 () Bool)

(declare-fun e!3804146 () Bool)

(declare-fun e!3804140 () Bool)

(assert (=> b!6253145 (= e!3804146 e!3804140)))

(declare-fun res!2580847 () Bool)

(assert (=> b!6253145 (= res!2580847 (not (nullable!6170 (reg!16506 r!7292))))))

(assert (=> b!6253145 (=> (not res!2580847) (not e!3804140))))

(declare-fun b!6253146 () Bool)

(declare-fun e!3804144 () Bool)

(assert (=> b!6253146 (= e!3804144 e!3804146)))

(declare-fun c!1131790 () Bool)

(assert (=> b!6253146 (= c!1131790 ((_ is Star!16177) r!7292))))

(declare-fun d!1961540 () Bool)

(declare-fun res!2580845 () Bool)

(assert (=> d!1961540 (=> res!2580845 e!3804144)))

(assert (=> d!1961540 (= res!2580845 ((_ is ElementMatch!16177) r!7292))))

(assert (=> d!1961540 (= (validRegex!7913 r!7292) e!3804144)))

(declare-fun bm!527518 () Bool)

(declare-fun call!527525 () Bool)

(declare-fun c!1131791 () Bool)

(assert (=> bm!527518 (= call!527525 (validRegex!7913 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))

(declare-fun b!6253147 () Bool)

(declare-fun res!2580848 () Bool)

(assert (=> b!6253147 (=> res!2580848 e!3804143)))

(assert (=> b!6253147 (= res!2580848 (not ((_ is Concat!25022) r!7292)))))

(declare-fun e!3804141 () Bool)

(assert (=> b!6253147 (= e!3804141 e!3804143)))

(declare-fun bm!527519 () Bool)

(declare-fun call!527524 () Bool)

(assert (=> bm!527519 (= call!527523 call!527524)))

(declare-fun b!6253148 () Bool)

(declare-fun res!2580849 () Bool)

(declare-fun e!3804145 () Bool)

(assert (=> b!6253148 (=> (not res!2580849) (not e!3804145))))

(assert (=> b!6253148 (= res!2580849 call!527523)))

(assert (=> b!6253148 (= e!3804141 e!3804145)))

(declare-fun b!6253149 () Bool)

(assert (=> b!6253149 (= e!3804145 call!527525)))

(declare-fun b!6253150 () Bool)

(assert (=> b!6253150 (= e!3804146 e!3804141)))

(assert (=> b!6253150 (= c!1131791 ((_ is Union!16177) r!7292))))

(declare-fun bm!527520 () Bool)

(assert (=> bm!527520 (= call!527524 (validRegex!7913 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))

(declare-fun b!6253151 () Bool)

(assert (=> b!6253151 (= e!3804142 call!527525)))

(declare-fun b!6253152 () Bool)

(assert (=> b!6253152 (= e!3804140 call!527524)))

(assert (= (and d!1961540 (not res!2580845)) b!6253146))

(assert (= (and b!6253146 c!1131790) b!6253145))

(assert (= (and b!6253146 (not c!1131790)) b!6253150))

(assert (= (and b!6253145 res!2580847) b!6253152))

(assert (= (and b!6253150 c!1131791) b!6253148))

(assert (= (and b!6253150 (not c!1131791)) b!6253147))

(assert (= (and b!6253148 res!2580849) b!6253149))

(assert (= (and b!6253147 (not res!2580848)) b!6253144))

(assert (= (and b!6253144 res!2580846) b!6253151))

(assert (= (or b!6253149 b!6253151) bm!527518))

(assert (= (or b!6253148 b!6253144) bm!527519))

(assert (= (or b!6253152 bm!527519) bm!527520))

(declare-fun m!7076154 () Bool)

(assert (=> b!6253145 m!7076154))

(declare-fun m!7076156 () Bool)

(assert (=> bm!527518 m!7076156))

(declare-fun m!7076158 () Bool)

(assert (=> bm!527520 m!7076158))

(assert (=> start!622046 d!1961540))

(declare-fun d!1961542 () Bool)

(declare-fun lt!2348961 () Int)

(assert (=> d!1961542 (>= lt!2348961 0)))

(declare-fun e!3804149 () Int)

(assert (=> d!1961542 (= lt!2348961 e!3804149)))

(declare-fun c!1131795 () Bool)

(assert (=> d!1961542 (= c!1131795 ((_ is Cons!64706) (exprs!6061 lt!2348879)))))

(assert (=> d!1961542 (= (contextDepthTotal!300 lt!2348879) lt!2348961)))

(declare-fun b!6253157 () Bool)

(declare-fun regexDepthTotal!155 (Regex!16177) Int)

(assert (=> b!6253157 (= e!3804149 (+ (regexDepthTotal!155 (h!71154 (exprs!6061 lt!2348879))) (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 lt!2348879))))))))

(declare-fun b!6253158 () Bool)

(assert (=> b!6253158 (= e!3804149 1)))

(assert (= (and d!1961542 c!1131795) b!6253157))

(assert (= (and d!1961542 (not c!1131795)) b!6253158))

(declare-fun m!7076160 () Bool)

(assert (=> b!6253157 m!7076160))

(declare-fun m!7076162 () Bool)

(assert (=> b!6253157 m!7076162))

(assert (=> b!6252647 d!1961542))

(declare-fun d!1961544 () Bool)

(declare-fun lt!2348962 () Int)

(assert (=> d!1961544 (>= lt!2348962 0)))

(declare-fun e!3804150 () Int)

(assert (=> d!1961544 (= lt!2348962 e!3804150)))

(declare-fun c!1131796 () Bool)

(assert (=> d!1961544 (= c!1131796 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1961544 (= (contextDepthTotal!300 (h!71155 zl!343)) lt!2348962)))

(declare-fun b!6253159 () Bool)

(assert (=> b!6253159 (= e!3804150 (+ (regexDepthTotal!155 (h!71154 (exprs!6061 (h!71155 zl!343)))) (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6253160 () Bool)

(assert (=> b!6253160 (= e!3804150 1)))

(assert (= (and d!1961544 c!1131796) b!6253159))

(assert (= (and d!1961544 (not c!1131796)) b!6253160))

(declare-fun m!7076164 () Bool)

(assert (=> b!6253159 m!7076164))

(declare-fun m!7076166 () Bool)

(assert (=> b!6253159 m!7076166))

(assert (=> b!6252647 d!1961544))

(declare-fun d!1961546 () Bool)

(declare-fun e!3804151 () Bool)

(assert (=> d!1961546 e!3804151))

(declare-fun res!2580850 () Bool)

(assert (=> d!1961546 (=> (not res!2580850) (not e!3804151))))

(declare-fun lt!2348963 () List!64831)

(assert (=> d!1961546 (= res!2580850 (noDuplicate!2013 lt!2348963))))

(assert (=> d!1961546 (= lt!2348963 (choose!46404 lt!2348857))))

(assert (=> d!1961546 (= (toList!9961 lt!2348857) lt!2348963)))

(declare-fun b!6253161 () Bool)

(assert (=> b!6253161 (= e!3804151 (= (content!12142 lt!2348963) lt!2348857))))

(assert (= (and d!1961546 res!2580850) b!6253161))

(declare-fun m!7076168 () Bool)

(assert (=> d!1961546 m!7076168))

(declare-fun m!7076170 () Bool)

(assert (=> d!1961546 m!7076170))

(declare-fun m!7076172 () Bool)

(assert (=> b!6253161 m!7076172))

(assert (=> b!6252630 d!1961546))

(declare-fun e!3804154 () Bool)

(declare-fun d!1961548 () Bool)

(assert (=> d!1961548 (= (matchZipper!2189 ((_ map or) lt!2348871 lt!2348858) (t!378380 s!2326)) e!3804154)))

(declare-fun res!2580853 () Bool)

(assert (=> d!1961548 (=> res!2580853 e!3804154)))

(assert (=> d!1961548 (= res!2580853 (matchZipper!2189 lt!2348871 (t!378380 s!2326)))))

(declare-fun lt!2348966 () Unit!158039)

(declare-fun choose!46405 ((InoxSet Context!11122) (InoxSet Context!11122) List!64832) Unit!158039)

(assert (=> d!1961548 (= lt!2348966 (choose!46405 lt!2348871 lt!2348858 (t!378380 s!2326)))))

(assert (=> d!1961548 (= (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348871 lt!2348858 (t!378380 s!2326)) lt!2348966)))

(declare-fun b!6253164 () Bool)

(assert (=> b!6253164 (= e!3804154 (matchZipper!2189 lt!2348858 (t!378380 s!2326)))))

(assert (= (and d!1961548 (not res!2580853)) b!6253164))

(assert (=> d!1961548 m!7075758))

(assert (=> d!1961548 m!7075748))

(declare-fun m!7076174 () Bool)

(assert (=> d!1961548 m!7076174))

(assert (=> b!6253164 m!7075760))

(assert (=> b!6252631 d!1961548))

(declare-fun d!1961550 () Bool)

(declare-fun c!1131797 () Bool)

(assert (=> d!1961550 (= c!1131797 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804155 () Bool)

(assert (=> d!1961550 (= (matchZipper!2189 lt!2348871 (t!378380 s!2326)) e!3804155)))

(declare-fun b!6253165 () Bool)

(assert (=> b!6253165 (= e!3804155 (nullableZipper!1949 lt!2348871))))

(declare-fun b!6253166 () Bool)

(assert (=> b!6253166 (= e!3804155 (matchZipper!2189 (derivationStepZipper!2143 lt!2348871 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961550 c!1131797) b!6253165))

(assert (= (and d!1961550 (not c!1131797)) b!6253166))

(assert (=> d!1961550 m!7076136))

(declare-fun m!7076176 () Bool)

(assert (=> b!6253165 m!7076176))

(assert (=> b!6253166 m!7076140))

(assert (=> b!6253166 m!7076140))

(declare-fun m!7076178 () Bool)

(assert (=> b!6253166 m!7076178))

(assert (=> b!6253166 m!7076144))

(assert (=> b!6253166 m!7076178))

(assert (=> b!6253166 m!7076144))

(declare-fun m!7076180 () Bool)

(assert (=> b!6253166 m!7076180))

(assert (=> b!6252631 d!1961550))

(declare-fun d!1961552 () Bool)

(declare-fun c!1131798 () Bool)

(assert (=> d!1961552 (= c!1131798 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804156 () Bool)

(assert (=> d!1961552 (= (matchZipper!2189 ((_ map or) lt!2348871 lt!2348858) (t!378380 s!2326)) e!3804156)))

(declare-fun b!6253167 () Bool)

(assert (=> b!6253167 (= e!3804156 (nullableZipper!1949 ((_ map or) lt!2348871 lt!2348858)))))

(declare-fun b!6253168 () Bool)

(assert (=> b!6253168 (= e!3804156 (matchZipper!2189 (derivationStepZipper!2143 ((_ map or) lt!2348871 lt!2348858) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961552 c!1131798) b!6253167))

(assert (= (and d!1961552 (not c!1131798)) b!6253168))

(assert (=> d!1961552 m!7076136))

(declare-fun m!7076182 () Bool)

(assert (=> b!6253167 m!7076182))

(assert (=> b!6253168 m!7076140))

(assert (=> b!6253168 m!7076140))

(declare-fun m!7076184 () Bool)

(assert (=> b!6253168 m!7076184))

(assert (=> b!6253168 m!7076144))

(assert (=> b!6253168 m!7076184))

(assert (=> b!6253168 m!7076144))

(declare-fun m!7076186 () Bool)

(assert (=> b!6253168 m!7076186))

(assert (=> b!6252631 d!1961552))

(declare-fun d!1961554 () Bool)

(declare-fun c!1131799 () Bool)

(assert (=> d!1961554 (= c!1131799 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804157 () Bool)

(assert (=> d!1961554 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (t!378380 s!2326)) e!3804157)))

(declare-fun b!6253169 () Bool)

(assert (=> b!6253169 (= e!3804157 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326))))))

(declare-fun b!6253170 () Bool)

(assert (=> b!6253170 (= e!3804157 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961554 c!1131799) b!6253169))

(assert (= (and d!1961554 (not c!1131799)) b!6253170))

(assert (=> d!1961554 m!7076136))

(assert (=> b!6253169 m!7075670))

(declare-fun m!7076188 () Bool)

(assert (=> b!6253169 m!7076188))

(assert (=> b!6253170 m!7076140))

(assert (=> b!6253170 m!7075670))

(assert (=> b!6253170 m!7076140))

(declare-fun m!7076190 () Bool)

(assert (=> b!6253170 m!7076190))

(assert (=> b!6253170 m!7076144))

(assert (=> b!6253170 m!7076190))

(assert (=> b!6253170 m!7076144))

(declare-fun m!7076192 () Bool)

(assert (=> b!6253170 m!7076192))

(assert (=> b!6252649 d!1961554))

(declare-fun bs!1556779 () Bool)

(declare-fun d!1961556 () Bool)

(assert (= bs!1556779 (and d!1961556 b!6252643)))

(declare-fun lambda!342091 () Int)

(assert (=> bs!1556779 (= lambda!342091 lambda!342043)))

(assert (=> d!1961556 true))

(assert (=> d!1961556 (= (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (flatMap!1682 lt!2348870 lambda!342091))))

(declare-fun bs!1556780 () Bool)

(assert (= bs!1556780 d!1961556))

(declare-fun m!7076194 () Bool)

(assert (=> bs!1556780 m!7076194))

(assert (=> b!6252649 d!1961556))

(declare-fun d!1961558 () Bool)

(declare-fun lt!2348969 () Regex!16177)

(assert (=> d!1961558 (validRegex!7913 lt!2348969)))

(assert (=> d!1961558 (= lt!2348969 (generalisedUnion!2021 (unfocusZipperList!1598 zl!343)))))

(assert (=> d!1961558 (= (unfocusZipper!1919 zl!343) lt!2348969)))

(declare-fun bs!1556781 () Bool)

(assert (= bs!1556781 d!1961558))

(declare-fun m!7076196 () Bool)

(assert (=> bs!1556781 m!7076196))

(assert (=> bs!1556781 m!7075666))

(assert (=> bs!1556781 m!7075666))

(assert (=> bs!1556781 m!7075668))

(assert (=> b!6252629 d!1961558))

(declare-fun b!6253195 () Bool)

(declare-fun e!3804173 () Bool)

(assert (=> b!6253195 (= e!3804173 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6253196 () Bool)

(declare-fun e!3804170 () (InoxSet Context!11122))

(declare-fun call!527538 () (InoxSet Context!11122))

(assert (=> b!6253196 (= e!3804170 call!527538)))

(declare-fun b!6253197 () Bool)

(declare-fun e!3804171 () (InoxSet Context!11122))

(declare-fun call!527541 () (InoxSet Context!11122))

(declare-fun call!527542 () (InoxSet Context!11122))

(assert (=> b!6253197 (= e!3804171 ((_ map or) call!527541 call!527542))))

(declare-fun d!1961560 () Bool)

(declare-fun c!1131814 () Bool)

(assert (=> d!1961560 (= c!1131814 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))) (= (c!1131644 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326))))))

(declare-fun e!3804174 () (InoxSet Context!11122))

(assert (=> d!1961560 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (h!71155 zl!343))) lt!2348878 (h!71156 s!2326)) e!3804174)))

(declare-fun b!6253198 () Bool)

(assert (=> b!6253198 (= e!3804174 e!3804171)))

(declare-fun c!1131813 () Bool)

(assert (=> b!6253198 (= c!1131813 ((_ is Union!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun c!1131816 () Bool)

(declare-fun c!1131815 () Bool)

(declare-fun call!527539 () List!64830)

(declare-fun bm!527533 () Bool)

(assert (=> bm!527533 (= call!527541 (derivationStepZipperDown!1425 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))) (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539)) (h!71156 s!2326)))))

(declare-fun call!527543 () List!64830)

(declare-fun bm!527534 () Bool)

(declare-fun $colon$colon!2044 (List!64830 Regex!16177) List!64830)

(assert (=> bm!527534 (= call!527543 ($colon$colon!2044 (exprs!6061 lt!2348878) (ite (or c!1131815 c!1131816) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71154 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6253199 () Bool)

(assert (=> b!6253199 (= c!1131815 e!3804173)))

(declare-fun res!2580856 () Bool)

(assert (=> b!6253199 (=> (not res!2580856) (not e!3804173))))

(assert (=> b!6253199 (= res!2580856 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun e!3804172 () (InoxSet Context!11122))

(assert (=> b!6253199 (= e!3804171 e!3804172)))

(declare-fun b!6253200 () Bool)

(assert (=> b!6253200 (= e!3804172 e!3804170)))

(assert (=> b!6253200 (= c!1131816 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun bm!527535 () Bool)

(assert (=> bm!527535 (= call!527539 call!527543)))

(declare-fun bm!527536 () Bool)

(declare-fun call!527540 () (InoxSet Context!11122))

(assert (=> bm!527536 (= call!527538 call!527540)))

(declare-fun b!6253201 () Bool)

(assert (=> b!6253201 (= e!3804172 ((_ map or) call!527542 call!527540))))

(declare-fun b!6253202 () Bool)

(assert (=> b!6253202 (= e!3804174 (store ((as const (Array Context!11122 Bool)) false) lt!2348878 true))))

(declare-fun bm!527537 () Bool)

(assert (=> bm!527537 (= call!527542 (derivationStepZipperDown!1425 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))) (ite c!1131813 lt!2348878 (Context!11123 call!527543)) (h!71156 s!2326)))))

(declare-fun b!6253203 () Bool)

(declare-fun e!3804175 () (InoxSet Context!11122))

(assert (=> b!6253203 (= e!3804175 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6253204 () Bool)

(declare-fun c!1131812 () Bool)

(assert (=> b!6253204 (= c!1131812 ((_ is Star!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> b!6253204 (= e!3804170 e!3804175)))

(declare-fun bm!527538 () Bool)

(assert (=> bm!527538 (= call!527540 call!527541)))

(declare-fun b!6253205 () Bool)

(assert (=> b!6253205 (= e!3804175 call!527538)))

(assert (= (and d!1961560 c!1131814) b!6253202))

(assert (= (and d!1961560 (not c!1131814)) b!6253198))

(assert (= (and b!6253198 c!1131813) b!6253197))

(assert (= (and b!6253198 (not c!1131813)) b!6253199))

(assert (= (and b!6253199 res!2580856) b!6253195))

(assert (= (and b!6253199 c!1131815) b!6253201))

(assert (= (and b!6253199 (not c!1131815)) b!6253200))

(assert (= (and b!6253200 c!1131816) b!6253196))

(assert (= (and b!6253200 (not c!1131816)) b!6253204))

(assert (= (and b!6253204 c!1131812) b!6253205))

(assert (= (and b!6253204 (not c!1131812)) b!6253203))

(assert (= (or b!6253196 b!6253205) bm!527535))

(assert (= (or b!6253196 b!6253205) bm!527536))

(assert (= (or b!6253201 bm!527535) bm!527534))

(assert (= (or b!6253201 bm!527536) bm!527538))

(assert (= (or b!6253197 b!6253201) bm!527537))

(assert (= (or b!6253197 bm!527538) bm!527533))

(declare-fun m!7076198 () Bool)

(assert (=> bm!527534 m!7076198))

(declare-fun m!7076200 () Bool)

(assert (=> bm!527537 m!7076200))

(declare-fun m!7076202 () Bool)

(assert (=> b!6253202 m!7076202))

(declare-fun m!7076204 () Bool)

(assert (=> bm!527533 m!7076204))

(declare-fun m!7076206 () Bool)

(assert (=> b!6253195 m!7076206))

(assert (=> b!6252643 d!1961560))

(declare-fun b!6253216 () Bool)

(declare-fun e!3804184 () (InoxSet Context!11122))

(declare-fun call!527546 () (InoxSet Context!11122))

(assert (=> b!6253216 (= e!3804184 ((_ map or) call!527546 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326))))))

(declare-fun b!6253217 () Bool)

(declare-fun e!3804183 () (InoxSet Context!11122))

(assert (=> b!6253217 (= e!3804184 e!3804183)))

(declare-fun c!1131821 () Bool)

(assert (=> b!6253217 (= c!1131821 ((_ is Cons!64706) (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))

(declare-fun b!6253218 () Bool)

(declare-fun e!3804182 () Bool)

(assert (=> b!6253218 (= e!3804182 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun b!6253219 () Bool)

(assert (=> b!6253219 (= e!3804183 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1961562 () Bool)

(declare-fun c!1131822 () Bool)

(assert (=> d!1961562 (= c!1131822 e!3804182)))

(declare-fun res!2580859 () Bool)

(assert (=> d!1961562 (=> (not res!2580859) (not e!3804182))))

(assert (=> d!1961562 (= res!2580859 ((_ is Cons!64706) (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))

(assert (=> d!1961562 (= (derivationStepZipperUp!1351 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))) (h!71156 s!2326)) e!3804184)))

(declare-fun b!6253220 () Bool)

(assert (=> b!6253220 (= e!3804183 call!527546)))

(declare-fun bm!527541 () Bool)

(assert (=> bm!527541 (= call!527546 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326)))))

(assert (= (and d!1961562 res!2580859) b!6253218))

(assert (= (and d!1961562 c!1131822) b!6253216))

(assert (= (and d!1961562 (not c!1131822)) b!6253217))

(assert (= (and b!6253217 c!1131821) b!6253220))

(assert (= (and b!6253217 (not c!1131821)) b!6253219))

(assert (= (or b!6253216 b!6253220) bm!527541))

(declare-fun m!7076208 () Bool)

(assert (=> b!6253216 m!7076208))

(declare-fun m!7076210 () Bool)

(assert (=> b!6253218 m!7076210))

(declare-fun m!7076212 () Bool)

(assert (=> bm!527541 m!7076212))

(assert (=> b!6252643 d!1961562))

(declare-fun e!3804187 () (InoxSet Context!11122))

(declare-fun call!527547 () (InoxSet Context!11122))

(declare-fun b!6253221 () Bool)

(assert (=> b!6253221 (= e!3804187 ((_ map or) call!527547 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (h!71156 s!2326))))))

(declare-fun b!6253222 () Bool)

(declare-fun e!3804186 () (InoxSet Context!11122))

(assert (=> b!6253222 (= e!3804187 e!3804186)))

(declare-fun c!1131823 () Bool)

(assert (=> b!6253222 (= c!1131823 ((_ is Cons!64706) (exprs!6061 lt!2348878)))))

(declare-fun b!6253223 () Bool)

(declare-fun e!3804185 () Bool)

(assert (=> b!6253223 (= e!3804185 (nullable!6170 (h!71154 (exprs!6061 lt!2348878))))))

(declare-fun b!6253224 () Bool)

(assert (=> b!6253224 (= e!3804186 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1961564 () Bool)

(declare-fun c!1131824 () Bool)

(assert (=> d!1961564 (= c!1131824 e!3804185)))

(declare-fun res!2580860 () Bool)

(assert (=> d!1961564 (=> (not res!2580860) (not e!3804185))))

(assert (=> d!1961564 (= res!2580860 ((_ is Cons!64706) (exprs!6061 lt!2348878)))))

(assert (=> d!1961564 (= (derivationStepZipperUp!1351 lt!2348878 (h!71156 s!2326)) e!3804187)))

(declare-fun b!6253225 () Bool)

(assert (=> b!6253225 (= e!3804186 call!527547)))

(declare-fun bm!527542 () Bool)

(assert (=> bm!527542 (= call!527547 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348878)) (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (h!71156 s!2326)))))

(assert (= (and d!1961564 res!2580860) b!6253223))

(assert (= (and d!1961564 c!1131824) b!6253221))

(assert (= (and d!1961564 (not c!1131824)) b!6253222))

(assert (= (and b!6253222 c!1131823) b!6253225))

(assert (= (and b!6253222 (not c!1131823)) b!6253224))

(assert (= (or b!6253221 b!6253225) bm!527542))

(declare-fun m!7076214 () Bool)

(assert (=> b!6253221 m!7076214))

(declare-fun m!7076216 () Bool)

(assert (=> b!6253223 m!7076216))

(declare-fun m!7076218 () Bool)

(assert (=> bm!527542 m!7076218))

(assert (=> b!6252643 d!1961564))

(declare-fun d!1961566 () Bool)

(declare-fun nullableFct!2124 (Regex!16177) Bool)

(assert (=> d!1961566 (= (nullable!6170 (h!71154 (exprs!6061 (h!71155 zl!343)))) (nullableFct!2124 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun bs!1556782 () Bool)

(assert (= bs!1556782 d!1961566))

(declare-fun m!7076220 () Bool)

(assert (=> bs!1556782 m!7076220))

(assert (=> b!6252643 d!1961566))

(declare-fun d!1961568 () Bool)

(declare-fun choose!46406 ((InoxSet Context!11122) Int) (InoxSet Context!11122))

(assert (=> d!1961568 (= (flatMap!1682 z!1189 lambda!342043) (choose!46406 z!1189 lambda!342043))))

(declare-fun bs!1556783 () Bool)

(assert (= bs!1556783 d!1961568))

(declare-fun m!7076222 () Bool)

(assert (=> bs!1556783 m!7076222))

(assert (=> b!6252643 d!1961568))

(declare-fun b!6253226 () Bool)

(declare-fun e!3804190 () (InoxSet Context!11122))

(declare-fun call!527548 () (InoxSet Context!11122))

(assert (=> b!6253226 (= e!3804190 ((_ map or) call!527548 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326))))))

(declare-fun b!6253227 () Bool)

(declare-fun e!3804189 () (InoxSet Context!11122))

(assert (=> b!6253227 (= e!3804190 e!3804189)))

(declare-fun c!1131825 () Bool)

(assert (=> b!6253227 (= c!1131825 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(declare-fun b!6253228 () Bool)

(declare-fun e!3804188 () Bool)

(assert (=> b!6253228 (= e!3804188 (nullable!6170 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6253229 () Bool)

(assert (=> b!6253229 (= e!3804189 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1961570 () Bool)

(declare-fun c!1131826 () Bool)

(assert (=> d!1961570 (= c!1131826 e!3804188)))

(declare-fun res!2580861 () Bool)

(assert (=> d!1961570 (=> (not res!2580861) (not e!3804188))))

(assert (=> d!1961570 (= res!2580861 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1961570 (= (derivationStepZipperUp!1351 (h!71155 zl!343) (h!71156 s!2326)) e!3804190)))

(declare-fun b!6253230 () Bool)

(assert (=> b!6253230 (= e!3804189 call!527548)))

(declare-fun bm!527543 () Bool)

(assert (=> bm!527543 (= call!527548 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (h!71155 zl!343))) (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326)))))

(assert (= (and d!1961570 res!2580861) b!6253228))

(assert (= (and d!1961570 c!1131826) b!6253226))

(assert (= (and d!1961570 (not c!1131826)) b!6253227))

(assert (= (and b!6253227 c!1131825) b!6253230))

(assert (= (and b!6253227 (not c!1131825)) b!6253229))

(assert (= (or b!6253226 b!6253230) bm!527543))

(declare-fun m!7076224 () Bool)

(assert (=> b!6253226 m!7076224))

(assert (=> b!6253228 m!7075662))

(declare-fun m!7076226 () Bool)

(assert (=> bm!527543 m!7076226))

(assert (=> b!6252643 d!1961570))

(declare-fun d!1961572 () Bool)

(declare-fun dynLambda!25556 (Int Context!11122) (InoxSet Context!11122))

(assert (=> d!1961572 (= (flatMap!1682 z!1189 lambda!342043) (dynLambda!25556 lambda!342043 (h!71155 zl!343)))))

(declare-fun lt!2348972 () Unit!158039)

(declare-fun choose!46407 ((InoxSet Context!11122) Context!11122 Int) Unit!158039)

(assert (=> d!1961572 (= lt!2348972 (choose!46407 z!1189 (h!71155 zl!343) lambda!342043))))

(assert (=> d!1961572 (= z!1189 (store ((as const (Array Context!11122 Bool)) false) (h!71155 zl!343) true))))

(assert (=> d!1961572 (= (lemmaFlatMapOnSingletonSet!1208 z!1189 (h!71155 zl!343) lambda!342043) lt!2348972)))

(declare-fun b_lambda!237929 () Bool)

(assert (=> (not b_lambda!237929) (not d!1961572)))

(declare-fun bs!1556784 () Bool)

(assert (= bs!1556784 d!1961572))

(assert (=> bs!1556784 m!7075664))

(declare-fun m!7076228 () Bool)

(assert (=> bs!1556784 m!7076228))

(declare-fun m!7076230 () Bool)

(assert (=> bs!1556784 m!7076230))

(declare-fun m!7076232 () Bool)

(assert (=> bs!1556784 m!7076232))

(assert (=> b!6252643 d!1961572))

(declare-fun d!1961574 () Bool)

(declare-fun lt!2348973 () Regex!16177)

(assert (=> d!1961574 (validRegex!7913 lt!2348973)))

(assert (=> d!1961574 (= lt!2348973 (generalisedUnion!2021 (unfocusZipperList!1598 lt!2348865)))))

(assert (=> d!1961574 (= (unfocusZipper!1919 lt!2348865) lt!2348973)))

(declare-fun bs!1556785 () Bool)

(assert (= bs!1556785 d!1961574))

(declare-fun m!7076234 () Bool)

(assert (=> bs!1556785 m!7076234))

(declare-fun m!7076236 () Bool)

(assert (=> bs!1556785 m!7076236))

(assert (=> bs!1556785 m!7076236))

(declare-fun m!7076238 () Bool)

(assert (=> bs!1556785 m!7076238))

(assert (=> b!6252641 d!1961574))

(declare-fun b!6253231 () Bool)

(declare-fun e!3804194 () Bool)

(assert (=> b!6253231 (= e!3804194 (nullable!6170 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6253232 () Bool)

(declare-fun e!3804191 () (InoxSet Context!11122))

(declare-fun call!527549 () (InoxSet Context!11122))

(assert (=> b!6253232 (= e!3804191 call!527549)))

(declare-fun b!6253233 () Bool)

(declare-fun e!3804192 () (InoxSet Context!11122))

(declare-fun call!527552 () (InoxSet Context!11122))

(declare-fun call!527553 () (InoxSet Context!11122))

(assert (=> b!6253233 (= e!3804192 ((_ map or) call!527552 call!527553))))

(declare-fun d!1961576 () Bool)

(declare-fun c!1131829 () Bool)

(assert (=> d!1961576 (= c!1131829 (and ((_ is ElementMatch!16177) (regTwo!32866 (regOne!32866 r!7292))) (= (c!1131644 (regTwo!32866 (regOne!32866 r!7292))) (h!71156 s!2326))))))

(declare-fun e!3804195 () (InoxSet Context!11122))

(assert (=> d!1961576 (= (derivationStepZipperDown!1425 (regTwo!32866 (regOne!32866 r!7292)) lt!2348878 (h!71156 s!2326)) e!3804195)))

(declare-fun b!6253234 () Bool)

(assert (=> b!6253234 (= e!3804195 e!3804192)))

(declare-fun c!1131828 () Bool)

(assert (=> b!6253234 (= c!1131828 ((_ is Union!16177) (regTwo!32866 (regOne!32866 r!7292))))))

(declare-fun call!527550 () List!64830)

(declare-fun c!1131830 () Bool)

(declare-fun bm!527544 () Bool)

(declare-fun c!1131831 () Bool)

(assert (=> bm!527544 (= call!527552 (derivationStepZipperDown!1425 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))) (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550)) (h!71156 s!2326)))))

(declare-fun call!527554 () List!64830)

(declare-fun bm!527545 () Bool)

(assert (=> bm!527545 (= call!527554 ($colon$colon!2044 (exprs!6061 lt!2348878) (ite (or c!1131830 c!1131831) (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (regTwo!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6253235 () Bool)

(assert (=> b!6253235 (= c!1131830 e!3804194)))

(declare-fun res!2580862 () Bool)

(assert (=> b!6253235 (=> (not res!2580862) (not e!3804194))))

(assert (=> b!6253235 (= res!2580862 ((_ is Concat!25022) (regTwo!32866 (regOne!32866 r!7292))))))

(declare-fun e!3804193 () (InoxSet Context!11122))

(assert (=> b!6253235 (= e!3804192 e!3804193)))

(declare-fun b!6253236 () Bool)

(assert (=> b!6253236 (= e!3804193 e!3804191)))

(assert (=> b!6253236 (= c!1131831 ((_ is Concat!25022) (regTwo!32866 (regOne!32866 r!7292))))))

(declare-fun bm!527546 () Bool)

(assert (=> bm!527546 (= call!527550 call!527554)))

(declare-fun bm!527547 () Bool)

(declare-fun call!527551 () (InoxSet Context!11122))

(assert (=> bm!527547 (= call!527549 call!527551)))

(declare-fun b!6253237 () Bool)

(assert (=> b!6253237 (= e!3804193 ((_ map or) call!527553 call!527551))))

(declare-fun b!6253238 () Bool)

(assert (=> b!6253238 (= e!3804195 (store ((as const (Array Context!11122 Bool)) false) lt!2348878 true))))

(declare-fun bm!527548 () Bool)

(assert (=> bm!527548 (= call!527553 (derivationStepZipperDown!1425 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))) (ite c!1131828 lt!2348878 (Context!11123 call!527554)) (h!71156 s!2326)))))

(declare-fun b!6253239 () Bool)

(declare-fun e!3804196 () (InoxSet Context!11122))

(assert (=> b!6253239 (= e!3804196 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6253240 () Bool)

(declare-fun c!1131827 () Bool)

(assert (=> b!6253240 (= c!1131827 ((_ is Star!16177) (regTwo!32866 (regOne!32866 r!7292))))))

(assert (=> b!6253240 (= e!3804191 e!3804196)))

(declare-fun bm!527549 () Bool)

(assert (=> bm!527549 (= call!527551 call!527552)))

(declare-fun b!6253241 () Bool)

(assert (=> b!6253241 (= e!3804196 call!527549)))

(assert (= (and d!1961576 c!1131829) b!6253238))

(assert (= (and d!1961576 (not c!1131829)) b!6253234))

(assert (= (and b!6253234 c!1131828) b!6253233))

(assert (= (and b!6253234 (not c!1131828)) b!6253235))

(assert (= (and b!6253235 res!2580862) b!6253231))

(assert (= (and b!6253235 c!1131830) b!6253237))

(assert (= (and b!6253235 (not c!1131830)) b!6253236))

(assert (= (and b!6253236 c!1131831) b!6253232))

(assert (= (and b!6253236 (not c!1131831)) b!6253240))

(assert (= (and b!6253240 c!1131827) b!6253241))

(assert (= (and b!6253240 (not c!1131827)) b!6253239))

(assert (= (or b!6253232 b!6253241) bm!527546))

(assert (= (or b!6253232 b!6253241) bm!527547))

(assert (= (or b!6253237 bm!527546) bm!527545))

(assert (= (or b!6253237 bm!527547) bm!527549))

(assert (= (or b!6253233 b!6253237) bm!527548))

(assert (= (or b!6253233 bm!527549) bm!527544))

(declare-fun m!7076240 () Bool)

(assert (=> bm!527545 m!7076240))

(declare-fun m!7076242 () Bool)

(assert (=> bm!527548 m!7076242))

(assert (=> b!6253238 m!7076202))

(declare-fun m!7076244 () Bool)

(assert (=> bm!527544 m!7076244))

(declare-fun m!7076246 () Bool)

(assert (=> b!6253231 m!7076246))

(assert (=> b!6252662 d!1961576))

(declare-fun b!6253242 () Bool)

(declare-fun e!3804200 () Bool)

(assert (=> b!6253242 (= e!3804200 (nullable!6170 (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6253243 () Bool)

(declare-fun e!3804197 () (InoxSet Context!11122))

(declare-fun call!527555 () (InoxSet Context!11122))

(assert (=> b!6253243 (= e!3804197 call!527555)))

(declare-fun b!6253244 () Bool)

(declare-fun e!3804198 () (InoxSet Context!11122))

(declare-fun call!527558 () (InoxSet Context!11122))

(declare-fun call!527559 () (InoxSet Context!11122))

(assert (=> b!6253244 (= e!3804198 ((_ map or) call!527558 call!527559))))

(declare-fun d!1961578 () Bool)

(declare-fun c!1131834 () Bool)

(assert (=> d!1961578 (= c!1131834 (and ((_ is ElementMatch!16177) (regOne!32866 (regOne!32866 r!7292))) (= (c!1131644 (regOne!32866 (regOne!32866 r!7292))) (h!71156 s!2326))))))

(declare-fun e!3804201 () (InoxSet Context!11122))

(assert (=> d!1961578 (= (derivationStepZipperDown!1425 (regOne!32866 (regOne!32866 r!7292)) lt!2348859 (h!71156 s!2326)) e!3804201)))

(declare-fun b!6253245 () Bool)

(assert (=> b!6253245 (= e!3804201 e!3804198)))

(declare-fun c!1131833 () Bool)

(assert (=> b!6253245 (= c!1131833 ((_ is Union!16177) (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun c!1131835 () Bool)

(declare-fun c!1131836 () Bool)

(declare-fun call!527556 () List!64830)

(declare-fun bm!527550 () Bool)

(assert (=> bm!527550 (= call!527558 (derivationStepZipperDown!1425 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))) (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556)) (h!71156 s!2326)))))

(declare-fun bm!527551 () Bool)

(declare-fun call!527560 () List!64830)

(assert (=> bm!527551 (= call!527560 ($colon$colon!2044 (exprs!6061 lt!2348859) (ite (or c!1131835 c!1131836) (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6253246 () Bool)

(assert (=> b!6253246 (= c!1131835 e!3804200)))

(declare-fun res!2580863 () Bool)

(assert (=> b!6253246 (=> (not res!2580863) (not e!3804200))))

(assert (=> b!6253246 (= res!2580863 ((_ is Concat!25022) (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun e!3804199 () (InoxSet Context!11122))

(assert (=> b!6253246 (= e!3804198 e!3804199)))

(declare-fun b!6253247 () Bool)

(assert (=> b!6253247 (= e!3804199 e!3804197)))

(assert (=> b!6253247 (= c!1131836 ((_ is Concat!25022) (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun bm!527552 () Bool)

(assert (=> bm!527552 (= call!527556 call!527560)))

(declare-fun bm!527553 () Bool)

(declare-fun call!527557 () (InoxSet Context!11122))

(assert (=> bm!527553 (= call!527555 call!527557)))

(declare-fun b!6253248 () Bool)

(assert (=> b!6253248 (= e!3804199 ((_ map or) call!527559 call!527557))))

(declare-fun b!6253249 () Bool)

(assert (=> b!6253249 (= e!3804201 (store ((as const (Array Context!11122 Bool)) false) lt!2348859 true))))

(declare-fun bm!527554 () Bool)

(assert (=> bm!527554 (= call!527559 (derivationStepZipperDown!1425 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))) (ite c!1131833 lt!2348859 (Context!11123 call!527560)) (h!71156 s!2326)))))

(declare-fun b!6253250 () Bool)

(declare-fun e!3804202 () (InoxSet Context!11122))

(assert (=> b!6253250 (= e!3804202 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6253251 () Bool)

(declare-fun c!1131832 () Bool)

(assert (=> b!6253251 (= c!1131832 ((_ is Star!16177) (regOne!32866 (regOne!32866 r!7292))))))

(assert (=> b!6253251 (= e!3804197 e!3804202)))

(declare-fun bm!527555 () Bool)

(assert (=> bm!527555 (= call!527557 call!527558)))

(declare-fun b!6253252 () Bool)

(assert (=> b!6253252 (= e!3804202 call!527555)))

(assert (= (and d!1961578 c!1131834) b!6253249))

(assert (= (and d!1961578 (not c!1131834)) b!6253245))

(assert (= (and b!6253245 c!1131833) b!6253244))

(assert (= (and b!6253245 (not c!1131833)) b!6253246))

(assert (= (and b!6253246 res!2580863) b!6253242))

(assert (= (and b!6253246 c!1131835) b!6253248))

(assert (= (and b!6253246 (not c!1131835)) b!6253247))

(assert (= (and b!6253247 c!1131836) b!6253243))

(assert (= (and b!6253247 (not c!1131836)) b!6253251))

(assert (= (and b!6253251 c!1131832) b!6253252))

(assert (= (and b!6253251 (not c!1131832)) b!6253250))

(assert (= (or b!6253243 b!6253252) bm!527552))

(assert (= (or b!6253243 b!6253252) bm!527553))

(assert (= (or b!6253248 bm!527552) bm!527551))

(assert (= (or b!6253248 bm!527553) bm!527555))

(assert (= (or b!6253244 b!6253248) bm!527554))

(assert (= (or b!6253244 bm!527555) bm!527550))

(declare-fun m!7076248 () Bool)

(assert (=> bm!527551 m!7076248))

(declare-fun m!7076250 () Bool)

(assert (=> bm!527554 m!7076250))

(assert (=> b!6253249 m!7075714))

(declare-fun m!7076252 () Bool)

(assert (=> bm!527550 m!7076252))

(declare-fun m!7076254 () Bool)

(assert (=> b!6253242 m!7076254))

(assert (=> b!6252662 d!1961578))

(declare-fun b!6253273 () Bool)

(declare-fun e!3804216 () Regex!16177)

(assert (=> b!6253273 (= e!3804216 EmptyLang!16177)))

(declare-fun b!6253274 () Bool)

(declare-fun e!3804218 () Bool)

(declare-fun e!3804217 () Bool)

(assert (=> b!6253274 (= e!3804218 e!3804217)))

(declare-fun c!1131846 () Bool)

(assert (=> b!6253274 (= c!1131846 (isEmpty!36731 (unfocusZipperList!1598 zl!343)))))

(declare-fun b!6253275 () Bool)

(assert (=> b!6253275 (= e!3804216 (Union!16177 (h!71154 (unfocusZipperList!1598 zl!343)) (generalisedUnion!2021 (t!378378 (unfocusZipperList!1598 zl!343)))))))

(declare-fun b!6253277 () Bool)

(declare-fun e!3804215 () Bool)

(assert (=> b!6253277 (= e!3804215 (isEmpty!36731 (t!378378 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6253278 () Bool)

(declare-fun e!3804219 () Bool)

(assert (=> b!6253278 (= e!3804217 e!3804219)))

(declare-fun c!1131848 () Bool)

(declare-fun tail!11944 (List!64830) List!64830)

(assert (=> b!6253278 (= c!1131848 (isEmpty!36731 (tail!11944 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6253276 () Bool)

(declare-fun lt!2348976 () Regex!16177)

(declare-fun head!12859 (List!64830) Regex!16177)

(assert (=> b!6253276 (= e!3804219 (= lt!2348976 (head!12859 (unfocusZipperList!1598 zl!343))))))

(declare-fun d!1961580 () Bool)

(assert (=> d!1961580 e!3804218))

(declare-fun res!2580869 () Bool)

(assert (=> d!1961580 (=> (not res!2580869) (not e!3804218))))

(assert (=> d!1961580 (= res!2580869 (validRegex!7913 lt!2348976))))

(declare-fun e!3804220 () Regex!16177)

(assert (=> d!1961580 (= lt!2348976 e!3804220)))

(declare-fun c!1131845 () Bool)

(assert (=> d!1961580 (= c!1131845 e!3804215)))

(declare-fun res!2580868 () Bool)

(assert (=> d!1961580 (=> (not res!2580868) (not e!3804215))))

(assert (=> d!1961580 (= res!2580868 ((_ is Cons!64706) (unfocusZipperList!1598 zl!343)))))

(declare-fun lambda!342094 () Int)

(declare-fun forall!15296 (List!64830 Int) Bool)

(assert (=> d!1961580 (forall!15296 (unfocusZipperList!1598 zl!343) lambda!342094)))

(assert (=> d!1961580 (= (generalisedUnion!2021 (unfocusZipperList!1598 zl!343)) lt!2348976)))

(declare-fun b!6253279 () Bool)

(assert (=> b!6253279 (= e!3804220 e!3804216)))

(declare-fun c!1131847 () Bool)

(assert (=> b!6253279 (= c!1131847 ((_ is Cons!64706) (unfocusZipperList!1598 zl!343)))))

(declare-fun b!6253280 () Bool)

(declare-fun isEmptyLang!1594 (Regex!16177) Bool)

(assert (=> b!6253280 (= e!3804217 (isEmptyLang!1594 lt!2348976))))

(declare-fun b!6253281 () Bool)

(assert (=> b!6253281 (= e!3804220 (h!71154 (unfocusZipperList!1598 zl!343)))))

(declare-fun b!6253282 () Bool)

(declare-fun isUnion!1024 (Regex!16177) Bool)

(assert (=> b!6253282 (= e!3804219 (isUnion!1024 lt!2348976))))

(assert (= (and d!1961580 res!2580868) b!6253277))

(assert (= (and d!1961580 c!1131845) b!6253281))

(assert (= (and d!1961580 (not c!1131845)) b!6253279))

(assert (= (and b!6253279 c!1131847) b!6253275))

(assert (= (and b!6253279 (not c!1131847)) b!6253273))

(assert (= (and d!1961580 res!2580869) b!6253274))

(assert (= (and b!6253274 c!1131846) b!6253280))

(assert (= (and b!6253274 (not c!1131846)) b!6253278))

(assert (= (and b!6253278 c!1131848) b!6253276))

(assert (= (and b!6253278 (not c!1131848)) b!6253282))

(assert (=> b!6253278 m!7075666))

(declare-fun m!7076256 () Bool)

(assert (=> b!6253278 m!7076256))

(assert (=> b!6253278 m!7076256))

(declare-fun m!7076258 () Bool)

(assert (=> b!6253278 m!7076258))

(assert (=> b!6253274 m!7075666))

(declare-fun m!7076260 () Bool)

(assert (=> b!6253274 m!7076260))

(assert (=> b!6253276 m!7075666))

(declare-fun m!7076262 () Bool)

(assert (=> b!6253276 m!7076262))

(declare-fun m!7076264 () Bool)

(assert (=> d!1961580 m!7076264))

(assert (=> d!1961580 m!7075666))

(declare-fun m!7076266 () Bool)

(assert (=> d!1961580 m!7076266))

(declare-fun m!7076268 () Bool)

(assert (=> b!6253275 m!7076268))

(declare-fun m!7076270 () Bool)

(assert (=> b!6253280 m!7076270))

(declare-fun m!7076272 () Bool)

(assert (=> b!6253282 m!7076272))

(declare-fun m!7076274 () Bool)

(assert (=> b!6253277 m!7076274))

(assert (=> b!6252642 d!1961580))

(declare-fun bs!1556786 () Bool)

(declare-fun d!1961582 () Bool)

(assert (= bs!1556786 (and d!1961582 d!1961580)))

(declare-fun lambda!342097 () Int)

(assert (=> bs!1556786 (= lambda!342097 lambda!342094)))

(declare-fun lt!2348979 () List!64830)

(assert (=> d!1961582 (forall!15296 lt!2348979 lambda!342097)))

(declare-fun e!3804223 () List!64830)

(assert (=> d!1961582 (= lt!2348979 e!3804223)))

(declare-fun c!1131851 () Bool)

(assert (=> d!1961582 (= c!1131851 ((_ is Cons!64707) zl!343))))

(assert (=> d!1961582 (= (unfocusZipperList!1598 zl!343) lt!2348979)))

(declare-fun b!6253287 () Bool)

(assert (=> b!6253287 (= e!3804223 (Cons!64706 (generalisedConcat!1774 (exprs!6061 (h!71155 zl!343))) (unfocusZipperList!1598 (t!378379 zl!343))))))

(declare-fun b!6253288 () Bool)

(assert (=> b!6253288 (= e!3804223 Nil!64706)))

(assert (= (and d!1961582 c!1131851) b!6253287))

(assert (= (and d!1961582 (not c!1131851)) b!6253288))

(declare-fun m!7076276 () Bool)

(assert (=> d!1961582 m!7076276))

(assert (=> b!6253287 m!7075762))

(declare-fun m!7076278 () Bool)

(assert (=> b!6253287 m!7076278))

(assert (=> b!6252642 d!1961582))

(declare-fun d!1961584 () Bool)

(assert (=> d!1961584 (= (nullable!6170 (regOne!32866 (regOne!32866 r!7292))) (nullableFct!2124 (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun bs!1556787 () Bool)

(assert (= bs!1556787 d!1961584))

(declare-fun m!7076280 () Bool)

(assert (=> bs!1556787 m!7076280))

(assert (=> b!6252646 d!1961584))

(declare-fun b!6253289 () Bool)

(declare-fun e!3804227 () Bool)

(declare-fun e!3804226 () Bool)

(assert (=> b!6253289 (= e!3804227 e!3804226)))

(declare-fun res!2580871 () Bool)

(assert (=> b!6253289 (=> (not res!2580871) (not e!3804226))))

(declare-fun call!527561 () Bool)

(assert (=> b!6253289 (= res!2580871 call!527561)))

(declare-fun b!6253290 () Bool)

(declare-fun e!3804230 () Bool)

(declare-fun e!3804224 () Bool)

(assert (=> b!6253290 (= e!3804230 e!3804224)))

(declare-fun res!2580872 () Bool)

(assert (=> b!6253290 (= res!2580872 (not (nullable!6170 (reg!16506 lt!2348881))))))

(assert (=> b!6253290 (=> (not res!2580872) (not e!3804224))))

(declare-fun b!6253291 () Bool)

(declare-fun e!3804228 () Bool)

(assert (=> b!6253291 (= e!3804228 e!3804230)))

(declare-fun c!1131852 () Bool)

(assert (=> b!6253291 (= c!1131852 ((_ is Star!16177) lt!2348881))))

(declare-fun d!1961586 () Bool)

(declare-fun res!2580870 () Bool)

(assert (=> d!1961586 (=> res!2580870 e!3804228)))

(assert (=> d!1961586 (= res!2580870 ((_ is ElementMatch!16177) lt!2348881))))

(assert (=> d!1961586 (= (validRegex!7913 lt!2348881) e!3804228)))

(declare-fun bm!527556 () Bool)

(declare-fun call!527563 () Bool)

(declare-fun c!1131853 () Bool)

(assert (=> bm!527556 (= call!527563 (validRegex!7913 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))

(declare-fun b!6253292 () Bool)

(declare-fun res!2580873 () Bool)

(assert (=> b!6253292 (=> res!2580873 e!3804227)))

(assert (=> b!6253292 (= res!2580873 (not ((_ is Concat!25022) lt!2348881)))))

(declare-fun e!3804225 () Bool)

(assert (=> b!6253292 (= e!3804225 e!3804227)))

(declare-fun bm!527557 () Bool)

(declare-fun call!527562 () Bool)

(assert (=> bm!527557 (= call!527561 call!527562)))

(declare-fun b!6253293 () Bool)

(declare-fun res!2580874 () Bool)

(declare-fun e!3804229 () Bool)

(assert (=> b!6253293 (=> (not res!2580874) (not e!3804229))))

(assert (=> b!6253293 (= res!2580874 call!527561)))

(assert (=> b!6253293 (= e!3804225 e!3804229)))

(declare-fun b!6253294 () Bool)

(assert (=> b!6253294 (= e!3804229 call!527563)))

(declare-fun b!6253295 () Bool)

(assert (=> b!6253295 (= e!3804230 e!3804225)))

(assert (=> b!6253295 (= c!1131853 ((_ is Union!16177) lt!2348881))))

(declare-fun bm!527558 () Bool)

(assert (=> bm!527558 (= call!527562 (validRegex!7913 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))

(declare-fun b!6253296 () Bool)

(assert (=> b!6253296 (= e!3804226 call!527563)))

(declare-fun b!6253297 () Bool)

(assert (=> b!6253297 (= e!3804224 call!527562)))

(assert (= (and d!1961586 (not res!2580870)) b!6253291))

(assert (= (and b!6253291 c!1131852) b!6253290))

(assert (= (and b!6253291 (not c!1131852)) b!6253295))

(assert (= (and b!6253290 res!2580872) b!6253297))

(assert (= (and b!6253295 c!1131853) b!6253293))

(assert (= (and b!6253295 (not c!1131853)) b!6253292))

(assert (= (and b!6253293 res!2580874) b!6253294))

(assert (= (and b!6253292 (not res!2580873)) b!6253289))

(assert (= (and b!6253289 res!2580871) b!6253296))

(assert (= (or b!6253294 b!6253296) bm!527556))

(assert (= (or b!6253293 b!6253289) bm!527557))

(assert (= (or b!6253297 bm!527557) bm!527558))

(declare-fun m!7076282 () Bool)

(assert (=> b!6253290 m!7076282))

(declare-fun m!7076284 () Bool)

(assert (=> bm!527556 m!7076284))

(declare-fun m!7076286 () Bool)

(assert (=> bm!527558 m!7076286))

(assert (=> b!6252664 d!1961586))

(declare-fun bs!1556788 () Bool)

(declare-fun d!1961588 () Bool)

(assert (= bs!1556788 (and d!1961588 d!1961580)))

(declare-fun lambda!342100 () Int)

(assert (=> bs!1556788 (= lambda!342100 lambda!342094)))

(declare-fun bs!1556789 () Bool)

(assert (= bs!1556789 (and d!1961588 d!1961582)))

(assert (=> bs!1556789 (= lambda!342100 lambda!342097)))

(declare-fun b!6253319 () Bool)

(declare-fun e!3804245 () Regex!16177)

(assert (=> b!6253319 (= e!3804245 (Concat!25022 (h!71154 lt!2348860) (generalisedConcat!1774 (t!378378 lt!2348860))))))

(declare-fun b!6253320 () Bool)

(declare-fun e!3804247 () Regex!16177)

(assert (=> b!6253320 (= e!3804247 e!3804245)))

(declare-fun c!1131862 () Bool)

(assert (=> b!6253320 (= c!1131862 ((_ is Cons!64706) lt!2348860))))

(declare-fun b!6253321 () Bool)

(declare-fun e!3804246 () Bool)

(declare-fun lt!2348982 () Regex!16177)

(assert (=> b!6253321 (= e!3804246 (= lt!2348982 (head!12859 lt!2348860)))))

(declare-fun b!6253322 () Bool)

(declare-fun e!3804248 () Bool)

(assert (=> b!6253322 (= e!3804248 e!3804246)))

(declare-fun c!1131865 () Bool)

(assert (=> b!6253322 (= c!1131865 (isEmpty!36731 (tail!11944 lt!2348860)))))

(declare-fun b!6253323 () Bool)

(assert (=> b!6253323 (= e!3804245 EmptyExpr!16177)))

(declare-fun b!6253324 () Bool)

(declare-fun isConcat!1108 (Regex!16177) Bool)

(assert (=> b!6253324 (= e!3804246 (isConcat!1108 lt!2348982))))

(declare-fun b!6253325 () Bool)

(declare-fun isEmptyExpr!1585 (Regex!16177) Bool)

(assert (=> b!6253325 (= e!3804248 (isEmptyExpr!1585 lt!2348982))))

(declare-fun b!6253326 () Bool)

(assert (=> b!6253326 (= e!3804247 (h!71154 lt!2348860))))

(declare-fun b!6253327 () Bool)

(declare-fun e!3804244 () Bool)

(assert (=> b!6253327 (= e!3804244 e!3804248)))

(declare-fun c!1131864 () Bool)

(assert (=> b!6253327 (= c!1131864 (isEmpty!36731 lt!2348860))))

(declare-fun b!6253318 () Bool)

(declare-fun e!3804243 () Bool)

(assert (=> b!6253318 (= e!3804243 (isEmpty!36731 (t!378378 lt!2348860)))))

(assert (=> d!1961588 e!3804244))

(declare-fun res!2580880 () Bool)

(assert (=> d!1961588 (=> (not res!2580880) (not e!3804244))))

(assert (=> d!1961588 (= res!2580880 (validRegex!7913 lt!2348982))))

(assert (=> d!1961588 (= lt!2348982 e!3804247)))

(declare-fun c!1131863 () Bool)

(assert (=> d!1961588 (= c!1131863 e!3804243)))

(declare-fun res!2580879 () Bool)

(assert (=> d!1961588 (=> (not res!2580879) (not e!3804243))))

(assert (=> d!1961588 (= res!2580879 ((_ is Cons!64706) lt!2348860))))

(assert (=> d!1961588 (forall!15296 lt!2348860 lambda!342100)))

(assert (=> d!1961588 (= (generalisedConcat!1774 lt!2348860) lt!2348982)))

(assert (= (and d!1961588 res!2580879) b!6253318))

(assert (= (and d!1961588 c!1131863) b!6253326))

(assert (= (and d!1961588 (not c!1131863)) b!6253320))

(assert (= (and b!6253320 c!1131862) b!6253319))

(assert (= (and b!6253320 (not c!1131862)) b!6253323))

(assert (= (and d!1961588 res!2580880) b!6253327))

(assert (= (and b!6253327 c!1131864) b!6253325))

(assert (= (and b!6253327 (not c!1131864)) b!6253322))

(assert (= (and b!6253322 c!1131865) b!6253321))

(assert (= (and b!6253322 (not c!1131865)) b!6253324))

(declare-fun m!7076288 () Bool)

(assert (=> b!6253327 m!7076288))

(declare-fun m!7076290 () Bool)

(assert (=> b!6253322 m!7076290))

(assert (=> b!6253322 m!7076290))

(declare-fun m!7076292 () Bool)

(assert (=> b!6253322 m!7076292))

(declare-fun m!7076294 () Bool)

(assert (=> d!1961588 m!7076294))

(declare-fun m!7076296 () Bool)

(assert (=> d!1961588 m!7076296))

(declare-fun m!7076298 () Bool)

(assert (=> b!6253318 m!7076298))

(declare-fun m!7076300 () Bool)

(assert (=> b!6253324 m!7076300))

(declare-fun m!7076302 () Bool)

(assert (=> b!6253319 m!7076302))

(declare-fun m!7076304 () Bool)

(assert (=> b!6253325 m!7076304))

(declare-fun m!7076306 () Bool)

(assert (=> b!6253321 m!7076306))

(assert (=> b!6252664 d!1961588))

(declare-fun bs!1556790 () Bool)

(declare-fun b!6253360 () Bool)

(assert (= bs!1556790 (and b!6253360 b!6252634)))

(declare-fun lambda!342105 () Int)

(assert (=> bs!1556790 (not (= lambda!342105 lambda!342041))))

(assert (=> bs!1556790 (not (= lambda!342105 lambda!342042))))

(assert (=> b!6253360 true))

(assert (=> b!6253360 true))

(declare-fun bs!1556791 () Bool)

(declare-fun b!6253362 () Bool)

(assert (= bs!1556791 (and b!6253362 b!6252634)))

(declare-fun lambda!342106 () Int)

(assert (=> bs!1556791 (not (= lambda!342106 lambda!342041))))

(assert (=> bs!1556791 (= lambda!342106 lambda!342042)))

(declare-fun bs!1556792 () Bool)

(assert (= bs!1556792 (and b!6253362 b!6253360)))

(assert (=> bs!1556792 (not (= lambda!342106 lambda!342105))))

(assert (=> b!6253362 true))

(assert (=> b!6253362 true))

(declare-fun e!3804269 () Bool)

(declare-fun call!527568 () Bool)

(assert (=> b!6253360 (= e!3804269 call!527568)))

(declare-fun b!6253361 () Bool)

(declare-fun e!3804270 () Bool)

(declare-fun e!3804273 () Bool)

(assert (=> b!6253361 (= e!3804270 e!3804273)))

(declare-fun c!1131875 () Bool)

(assert (=> b!6253361 (= c!1131875 ((_ is Star!16177) r!7292))))

(declare-fun bm!527563 () Bool)

(declare-fun call!527569 () Bool)

(assert (=> bm!527563 (= call!527569 (isEmpty!36734 s!2326))))

(assert (=> b!6253362 (= e!3804273 call!527568)))

(declare-fun b!6253363 () Bool)

(declare-fun e!3804272 () Bool)

(assert (=> b!6253363 (= e!3804270 e!3804272)))

(declare-fun res!2580898 () Bool)

(assert (=> b!6253363 (= res!2580898 (matchRSpec!3278 (regOne!32867 r!7292) s!2326))))

(assert (=> b!6253363 (=> res!2580898 e!3804272)))

(declare-fun b!6253364 () Bool)

(declare-fun e!3804268 () Bool)

(assert (=> b!6253364 (= e!3804268 (= s!2326 (Cons!64708 (c!1131644 r!7292) Nil!64708)))))

(declare-fun b!6253365 () Bool)

(declare-fun c!1131877 () Bool)

(assert (=> b!6253365 (= c!1131877 ((_ is ElementMatch!16177) r!7292))))

(declare-fun e!3804271 () Bool)

(assert (=> b!6253365 (= e!3804271 e!3804268)))

(declare-fun b!6253366 () Bool)

(assert (=> b!6253366 (= e!3804272 (matchRSpec!3278 (regTwo!32867 r!7292) s!2326))))

(declare-fun b!6253367 () Bool)

(declare-fun c!1131876 () Bool)

(assert (=> b!6253367 (= c!1131876 ((_ is Union!16177) r!7292))))

(assert (=> b!6253367 (= e!3804268 e!3804270)))

(declare-fun b!6253368 () Bool)

(declare-fun res!2580897 () Bool)

(assert (=> b!6253368 (=> res!2580897 e!3804269)))

(assert (=> b!6253368 (= res!2580897 call!527569)))

(assert (=> b!6253368 (= e!3804273 e!3804269)))

(declare-fun d!1961590 () Bool)

(declare-fun c!1131874 () Bool)

(assert (=> d!1961590 (= c!1131874 ((_ is EmptyExpr!16177) r!7292))))

(declare-fun e!3804267 () Bool)

(assert (=> d!1961590 (= (matchRSpec!3278 r!7292 s!2326) e!3804267)))

(declare-fun b!6253369 () Bool)

(assert (=> b!6253369 (= e!3804267 call!527569)))

(declare-fun bm!527564 () Bool)

(assert (=> bm!527564 (= call!527568 (Exists!3247 (ite c!1131875 lambda!342105 lambda!342106)))))

(declare-fun b!6253370 () Bool)

(assert (=> b!6253370 (= e!3804267 e!3804271)))

(declare-fun res!2580899 () Bool)

(assert (=> b!6253370 (= res!2580899 (not ((_ is EmptyLang!16177) r!7292)))))

(assert (=> b!6253370 (=> (not res!2580899) (not e!3804271))))

(assert (= (and d!1961590 c!1131874) b!6253369))

(assert (= (and d!1961590 (not c!1131874)) b!6253370))

(assert (= (and b!6253370 res!2580899) b!6253365))

(assert (= (and b!6253365 c!1131877) b!6253364))

(assert (= (and b!6253365 (not c!1131877)) b!6253367))

(assert (= (and b!6253367 c!1131876) b!6253363))

(assert (= (and b!6253367 (not c!1131876)) b!6253361))

(assert (= (and b!6253363 (not res!2580898)) b!6253366))

(assert (= (and b!6253361 c!1131875) b!6253368))

(assert (= (and b!6253361 (not c!1131875)) b!6253362))

(assert (= (and b!6253368 (not res!2580897)) b!6253360))

(assert (= (or b!6253360 b!6253362) bm!527564))

(assert (= (or b!6253369 b!6253368) bm!527563))

(declare-fun m!7076308 () Bool)

(assert (=> bm!527563 m!7076308))

(declare-fun m!7076310 () Bool)

(assert (=> b!6253363 m!7076310))

(declare-fun m!7076312 () Bool)

(assert (=> b!6253366 m!7076312))

(declare-fun m!7076314 () Bool)

(assert (=> bm!527564 m!7076314))

(assert (=> b!6252644 d!1961590))

(declare-fun b!6253399 () Bool)

(declare-fun e!3804292 () Bool)

(declare-fun e!3804289 () Bool)

(assert (=> b!6253399 (= e!3804292 e!3804289)))

(declare-fun res!2580922 () Bool)

(assert (=> b!6253399 (=> (not res!2580922) (not e!3804289))))

(declare-fun lt!2348985 () Bool)

(assert (=> b!6253399 (= res!2580922 (not lt!2348985))))

(declare-fun b!6253400 () Bool)

(declare-fun e!3804294 () Bool)

(assert (=> b!6253400 (= e!3804289 e!3804294)))

(declare-fun res!2580920 () Bool)

(assert (=> b!6253400 (=> res!2580920 e!3804294)))

(declare-fun call!527572 () Bool)

(assert (=> b!6253400 (= res!2580920 call!527572)))

(declare-fun b!6253401 () Bool)

(assert (=> b!6253401 (= e!3804294 (not (= (head!12858 s!2326) (c!1131644 r!7292))))))

(declare-fun b!6253402 () Bool)

(declare-fun res!2580919 () Bool)

(declare-fun e!3804290 () Bool)

(assert (=> b!6253402 (=> (not res!2580919) (not e!3804290))))

(assert (=> b!6253402 (= res!2580919 (isEmpty!36734 (tail!11943 s!2326)))))

(declare-fun b!6253403 () Bool)

(declare-fun e!3804291 () Bool)

(declare-fun derivativeStep!4888 (Regex!16177 C!32624) Regex!16177)

(assert (=> b!6253403 (= e!3804291 (matchR!8360 (derivativeStep!4888 r!7292 (head!12858 s!2326)) (tail!11943 s!2326)))))

(declare-fun b!6253404 () Bool)

(declare-fun res!2580923 () Bool)

(assert (=> b!6253404 (=> res!2580923 e!3804294)))

(assert (=> b!6253404 (= res!2580923 (not (isEmpty!36734 (tail!11943 s!2326))))))

(declare-fun b!6253405 () Bool)

(declare-fun e!3804293 () Bool)

(assert (=> b!6253405 (= e!3804293 (= lt!2348985 call!527572))))

(declare-fun b!6253407 () Bool)

(declare-fun e!3804288 () Bool)

(assert (=> b!6253407 (= e!3804288 (not lt!2348985))))

(declare-fun b!6253408 () Bool)

(declare-fun res!2580918 () Bool)

(assert (=> b!6253408 (=> res!2580918 e!3804292)))

(assert (=> b!6253408 (= res!2580918 e!3804290)))

(declare-fun res!2580916 () Bool)

(assert (=> b!6253408 (=> (not res!2580916) (not e!3804290))))

(assert (=> b!6253408 (= res!2580916 lt!2348985)))

(declare-fun b!6253409 () Bool)

(assert (=> b!6253409 (= e!3804293 e!3804288)))

(declare-fun c!1131885 () Bool)

(assert (=> b!6253409 (= c!1131885 ((_ is EmptyLang!16177) r!7292))))

(declare-fun b!6253410 () Bool)

(declare-fun res!2580917 () Bool)

(assert (=> b!6253410 (=> res!2580917 e!3804292)))

(assert (=> b!6253410 (= res!2580917 (not ((_ is ElementMatch!16177) r!7292)))))

(assert (=> b!6253410 (= e!3804288 e!3804292)))

(declare-fun b!6253411 () Bool)

(assert (=> b!6253411 (= e!3804290 (= (head!12858 s!2326) (c!1131644 r!7292)))))

(declare-fun b!6253412 () Bool)

(declare-fun res!2580921 () Bool)

(assert (=> b!6253412 (=> (not res!2580921) (not e!3804290))))

(assert (=> b!6253412 (= res!2580921 (not call!527572))))

(declare-fun bm!527567 () Bool)

(assert (=> bm!527567 (= call!527572 (isEmpty!36734 s!2326))))

(declare-fun b!6253406 () Bool)

(assert (=> b!6253406 (= e!3804291 (nullable!6170 r!7292))))

(declare-fun d!1961592 () Bool)

(assert (=> d!1961592 e!3804293))

(declare-fun c!1131884 () Bool)

(assert (=> d!1961592 (= c!1131884 ((_ is EmptyExpr!16177) r!7292))))

(assert (=> d!1961592 (= lt!2348985 e!3804291)))

(declare-fun c!1131886 () Bool)

(assert (=> d!1961592 (= c!1131886 (isEmpty!36734 s!2326))))

(assert (=> d!1961592 (validRegex!7913 r!7292)))

(assert (=> d!1961592 (= (matchR!8360 r!7292 s!2326) lt!2348985)))

(assert (= (and d!1961592 c!1131886) b!6253406))

(assert (= (and d!1961592 (not c!1131886)) b!6253403))

(assert (= (and d!1961592 c!1131884) b!6253405))

(assert (= (and d!1961592 (not c!1131884)) b!6253409))

(assert (= (and b!6253409 c!1131885) b!6253407))

(assert (= (and b!6253409 (not c!1131885)) b!6253410))

(assert (= (and b!6253410 (not res!2580917)) b!6253408))

(assert (= (and b!6253408 res!2580916) b!6253412))

(assert (= (and b!6253412 res!2580921) b!6253402))

(assert (= (and b!6253402 res!2580919) b!6253411))

(assert (= (and b!6253408 (not res!2580918)) b!6253399))

(assert (= (and b!6253399 res!2580922) b!6253400))

(assert (= (and b!6253400 (not res!2580920)) b!6253404))

(assert (= (and b!6253404 (not res!2580923)) b!6253401))

(assert (= (or b!6253405 b!6253400 b!6253412) bm!527567))

(assert (=> d!1961592 m!7076308))

(assert (=> d!1961592 m!7075774))

(declare-fun m!7076316 () Bool)

(assert (=> b!6253401 m!7076316))

(declare-fun m!7076318 () Bool)

(assert (=> b!6253402 m!7076318))

(assert (=> b!6253402 m!7076318))

(declare-fun m!7076320 () Bool)

(assert (=> b!6253402 m!7076320))

(assert (=> b!6253404 m!7076318))

(assert (=> b!6253404 m!7076318))

(assert (=> b!6253404 m!7076320))

(assert (=> b!6253403 m!7076316))

(assert (=> b!6253403 m!7076316))

(declare-fun m!7076322 () Bool)

(assert (=> b!6253403 m!7076322))

(assert (=> b!6253403 m!7076318))

(assert (=> b!6253403 m!7076322))

(assert (=> b!6253403 m!7076318))

(declare-fun m!7076324 () Bool)

(assert (=> b!6253403 m!7076324))

(assert (=> bm!527567 m!7076308))

(assert (=> b!6253411 m!7076316))

(declare-fun m!7076326 () Bool)

(assert (=> b!6253406 m!7076326))

(assert (=> b!6252644 d!1961592))

(declare-fun d!1961594 () Bool)

(assert (=> d!1961594 (= (matchR!8360 r!7292 s!2326) (matchRSpec!3278 r!7292 s!2326))))

(declare-fun lt!2348988 () Unit!158039)

(declare-fun choose!46408 (Regex!16177 List!64832) Unit!158039)

(assert (=> d!1961594 (= lt!2348988 (choose!46408 r!7292 s!2326))))

(assert (=> d!1961594 (validRegex!7913 r!7292)))

(assert (=> d!1961594 (= (mainMatchTheorem!3278 r!7292 s!2326) lt!2348988)))

(declare-fun bs!1556793 () Bool)

(assert (= bs!1556793 d!1961594))

(assert (=> bs!1556793 m!7075680))

(assert (=> bs!1556793 m!7075678))

(declare-fun m!7076328 () Bool)

(assert (=> bs!1556793 m!7076328))

(assert (=> bs!1556793 m!7075774))

(assert (=> b!6252644 d!1961594))

(declare-fun d!1961596 () Bool)

(assert (=> d!1961596 (= (isEmpty!36731 (t!378378 (exprs!6061 (h!71155 zl!343)))) ((_ is Nil!64706) (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> b!6252638 d!1961596))

(assert (=> b!6252658 d!1961550))

(declare-fun d!1961598 () Bool)

(declare-fun c!1131887 () Bool)

(assert (=> d!1961598 (= c!1131887 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804295 () Bool)

(assert (=> d!1961598 (= (matchZipper!2189 lt!2348875 (t!378380 s!2326)) e!3804295)))

(declare-fun b!6253413 () Bool)

(assert (=> b!6253413 (= e!3804295 (nullableZipper!1949 lt!2348875))))

(declare-fun b!6253414 () Bool)

(assert (=> b!6253414 (= e!3804295 (matchZipper!2189 (derivationStepZipper!2143 lt!2348875 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961598 c!1131887) b!6253413))

(assert (= (and d!1961598 (not c!1131887)) b!6253414))

(assert (=> d!1961598 m!7076136))

(declare-fun m!7076330 () Bool)

(assert (=> b!6253413 m!7076330))

(assert (=> b!6253414 m!7076140))

(assert (=> b!6253414 m!7076140))

(declare-fun m!7076332 () Bool)

(assert (=> b!6253414 m!7076332))

(assert (=> b!6253414 m!7076144))

(assert (=> b!6253414 m!7076332))

(assert (=> b!6253414 m!7076144))

(declare-fun m!7076334 () Bool)

(assert (=> b!6253414 m!7076334))

(assert (=> b!6252658 d!1961598))

(declare-fun d!1961600 () Bool)

(declare-fun c!1131888 () Bool)

(assert (=> d!1961600 (= c!1131888 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804296 () Bool)

(assert (=> d!1961600 (= (matchZipper!2189 lt!2348852 (t!378380 s!2326)) e!3804296)))

(declare-fun b!6253415 () Bool)

(assert (=> b!6253415 (= e!3804296 (nullableZipper!1949 lt!2348852))))

(declare-fun b!6253416 () Bool)

(assert (=> b!6253416 (= e!3804296 (matchZipper!2189 (derivationStepZipper!2143 lt!2348852 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961600 c!1131888) b!6253415))

(assert (= (and d!1961600 (not c!1131888)) b!6253416))

(assert (=> d!1961600 m!7076136))

(declare-fun m!7076336 () Bool)

(assert (=> b!6253415 m!7076336))

(assert (=> b!6253416 m!7076140))

(assert (=> b!6253416 m!7076140))

(declare-fun m!7076338 () Bool)

(assert (=> b!6253416 m!7076338))

(assert (=> b!6253416 m!7076144))

(assert (=> b!6253416 m!7076338))

(assert (=> b!6253416 m!7076144))

(declare-fun m!7076340 () Bool)

(assert (=> b!6253416 m!7076340))

(assert (=> b!6252658 d!1961600))

(declare-fun e!3804297 () Bool)

(declare-fun d!1961602 () Bool)

(assert (=> d!1961602 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348854) (t!378380 s!2326)) e!3804297)))

(declare-fun res!2580924 () Bool)

(assert (=> d!1961602 (=> res!2580924 e!3804297)))

(assert (=> d!1961602 (= res!2580924 (matchZipper!2189 lt!2348852 (t!378380 s!2326)))))

(declare-fun lt!2348989 () Unit!158039)

(assert (=> d!1961602 (= lt!2348989 (choose!46405 lt!2348852 lt!2348854 (t!378380 s!2326)))))

(assert (=> d!1961602 (= (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348852 lt!2348854 (t!378380 s!2326)) lt!2348989)))

(declare-fun b!6253417 () Bool)

(assert (=> b!6253417 (= e!3804297 (matchZipper!2189 lt!2348854 (t!378380 s!2326)))))

(assert (= (and d!1961602 (not res!2580924)) b!6253417))

(declare-fun m!7076342 () Bool)

(assert (=> d!1961602 m!7076342))

(assert (=> d!1961602 m!7075752))

(declare-fun m!7076344 () Bool)

(assert (=> d!1961602 m!7076344))

(assert (=> b!6253417 m!7075674))

(assert (=> b!6252658 d!1961602))

(declare-fun bs!1556794 () Bool)

(declare-fun d!1961604 () Bool)

(assert (= bs!1556794 (and d!1961604 d!1961580)))

(declare-fun lambda!342109 () Int)

(assert (=> bs!1556794 (= lambda!342109 lambda!342094)))

(declare-fun bs!1556795 () Bool)

(assert (= bs!1556795 (and d!1961604 d!1961582)))

(assert (=> bs!1556795 (= lambda!342109 lambda!342097)))

(declare-fun bs!1556796 () Bool)

(assert (= bs!1556796 (and d!1961604 d!1961588)))

(assert (=> bs!1556796 (= lambda!342109 lambda!342100)))

(assert (=> d!1961604 (= (inv!83689 setElem!42506) (forall!15296 (exprs!6061 setElem!42506) lambda!342109))))

(declare-fun bs!1556797 () Bool)

(assert (= bs!1556797 d!1961604))

(declare-fun m!7076346 () Bool)

(assert (=> bs!1556797 m!7076346))

(assert (=> setNonEmpty!42506 d!1961604))

(declare-fun call!527573 () (InoxSet Context!11122))

(declare-fun b!6253418 () Bool)

(declare-fun e!3804300 () (InoxSet Context!11122))

(assert (=> b!6253418 (= e!3804300 ((_ map or) call!527573 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (h!71156 s!2326))))))

(declare-fun b!6253419 () Bool)

(declare-fun e!3804299 () (InoxSet Context!11122))

(assert (=> b!6253419 (= e!3804300 e!3804299)))

(declare-fun c!1131889 () Bool)

(assert (=> b!6253419 (= c!1131889 ((_ is Cons!64706) (exprs!6061 lt!2348859)))))

(declare-fun b!6253420 () Bool)

(declare-fun e!3804298 () Bool)

(assert (=> b!6253420 (= e!3804298 (nullable!6170 (h!71154 (exprs!6061 lt!2348859))))))

(declare-fun b!6253421 () Bool)

(assert (=> b!6253421 (= e!3804299 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1961606 () Bool)

(declare-fun c!1131890 () Bool)

(assert (=> d!1961606 (= c!1131890 e!3804298)))

(declare-fun res!2580925 () Bool)

(assert (=> d!1961606 (=> (not res!2580925) (not e!3804298))))

(assert (=> d!1961606 (= res!2580925 ((_ is Cons!64706) (exprs!6061 lt!2348859)))))

(assert (=> d!1961606 (= (derivationStepZipperUp!1351 lt!2348859 (h!71156 s!2326)) e!3804300)))

(declare-fun b!6253422 () Bool)

(assert (=> b!6253422 (= e!3804299 call!527573)))

(declare-fun bm!527568 () Bool)

(assert (=> bm!527568 (= call!527573 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348859)) (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (h!71156 s!2326)))))

(assert (= (and d!1961606 res!2580925) b!6253420))

(assert (= (and d!1961606 c!1131890) b!6253418))

(assert (= (and d!1961606 (not c!1131890)) b!6253419))

(assert (= (and b!6253419 c!1131889) b!6253422))

(assert (= (and b!6253419 (not c!1131889)) b!6253421))

(assert (= (or b!6253418 b!6253422) bm!527568))

(declare-fun m!7076348 () Bool)

(assert (=> b!6253418 m!7076348))

(declare-fun m!7076350 () Bool)

(assert (=> b!6253420 m!7076350))

(declare-fun m!7076352 () Bool)

(assert (=> bm!527568 m!7076352))

(assert (=> b!6252657 d!1961606))

(declare-fun d!1961608 () Bool)

(declare-fun c!1131891 () Bool)

(assert (=> d!1961608 (= c!1131891 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804301 () Bool)

(assert (=> d!1961608 (= (matchZipper!2189 lt!2348853 (t!378380 s!2326)) e!3804301)))

(declare-fun b!6253423 () Bool)

(assert (=> b!6253423 (= e!3804301 (nullableZipper!1949 lt!2348853))))

(declare-fun b!6253424 () Bool)

(assert (=> b!6253424 (= e!3804301 (matchZipper!2189 (derivationStepZipper!2143 lt!2348853 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961608 c!1131891) b!6253423))

(assert (= (and d!1961608 (not c!1131891)) b!6253424))

(assert (=> d!1961608 m!7076136))

(declare-fun m!7076354 () Bool)

(assert (=> b!6253423 m!7076354))

(assert (=> b!6253424 m!7076140))

(assert (=> b!6253424 m!7076140))

(declare-fun m!7076356 () Bool)

(assert (=> b!6253424 m!7076356))

(assert (=> b!6253424 m!7076144))

(assert (=> b!6253424 m!7076356))

(assert (=> b!6253424 m!7076144))

(declare-fun m!7076358 () Bool)

(assert (=> b!6253424 m!7076358))

(assert (=> b!6252657 d!1961608))

(declare-fun d!1961610 () Bool)

(assert (=> d!1961610 (= (flatMap!1682 lt!2348870 lambda!342043) (dynLambda!25556 lambda!342043 lt!2348859))))

(declare-fun lt!2348990 () Unit!158039)

(assert (=> d!1961610 (= lt!2348990 (choose!46407 lt!2348870 lt!2348859 lambda!342043))))

(assert (=> d!1961610 (= lt!2348870 (store ((as const (Array Context!11122 Bool)) false) lt!2348859 true))))

(assert (=> d!1961610 (= (lemmaFlatMapOnSingletonSet!1208 lt!2348870 lt!2348859 lambda!342043) lt!2348990)))

(declare-fun b_lambda!237931 () Bool)

(assert (=> (not b_lambda!237931) (not d!1961610)))

(declare-fun bs!1556798 () Bool)

(assert (= bs!1556798 d!1961610))

(assert (=> bs!1556798 m!7075740))

(declare-fun m!7076360 () Bool)

(assert (=> bs!1556798 m!7076360))

(declare-fun m!7076362 () Bool)

(assert (=> bs!1556798 m!7076362))

(assert (=> bs!1556798 m!7075714))

(assert (=> b!6252657 d!1961610))

(declare-fun d!1961612 () Bool)

(declare-fun e!3804302 () Bool)

(assert (=> d!1961612 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348867) (t!378380 s!2326)) e!3804302)))

(declare-fun res!2580926 () Bool)

(assert (=> d!1961612 (=> res!2580926 e!3804302)))

(assert (=> d!1961612 (= res!2580926 (matchZipper!2189 lt!2348852 (t!378380 s!2326)))))

(declare-fun lt!2348991 () Unit!158039)

(assert (=> d!1961612 (= lt!2348991 (choose!46405 lt!2348852 lt!2348867 (t!378380 s!2326)))))

(assert (=> d!1961612 (= (lemmaZipperConcatMatchesSameAsBothZippers!1008 lt!2348852 lt!2348867 (t!378380 s!2326)) lt!2348991)))

(declare-fun b!6253425 () Bool)

(assert (=> b!6253425 (= e!3804302 (matchZipper!2189 lt!2348867 (t!378380 s!2326)))))

(assert (= (and d!1961612 (not res!2580926)) b!6253425))

(declare-fun m!7076364 () Bool)

(assert (=> d!1961612 m!7076364))

(assert (=> d!1961612 m!7075752))

(declare-fun m!7076366 () Bool)

(assert (=> d!1961612 m!7076366))

(assert (=> b!6253425 m!7075768))

(assert (=> b!6252657 d!1961612))

(declare-fun d!1961614 () Bool)

(declare-fun c!1131892 () Bool)

(assert (=> d!1961614 (= c!1131892 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804303 () Bool)

(assert (=> d!1961614 (= (matchZipper!2189 lt!2348868 (t!378380 s!2326)) e!3804303)))

(declare-fun b!6253426 () Bool)

(assert (=> b!6253426 (= e!3804303 (nullableZipper!1949 lt!2348868))))

(declare-fun b!6253427 () Bool)

(assert (=> b!6253427 (= e!3804303 (matchZipper!2189 (derivationStepZipper!2143 lt!2348868 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961614 c!1131892) b!6253426))

(assert (= (and d!1961614 (not c!1131892)) b!6253427))

(assert (=> d!1961614 m!7076136))

(declare-fun m!7076368 () Bool)

(assert (=> b!6253426 m!7076368))

(assert (=> b!6253427 m!7076140))

(assert (=> b!6253427 m!7076140))

(declare-fun m!7076370 () Bool)

(assert (=> b!6253427 m!7076370))

(assert (=> b!6253427 m!7076144))

(assert (=> b!6253427 m!7076370))

(assert (=> b!6253427 m!7076144))

(declare-fun m!7076372 () Bool)

(assert (=> b!6253427 m!7076372))

(assert (=> b!6252657 d!1961614))

(declare-fun d!1961616 () Bool)

(assert (=> d!1961616 (= (flatMap!1682 lt!2348870 lambda!342043) (choose!46406 lt!2348870 lambda!342043))))

(declare-fun bs!1556799 () Bool)

(assert (= bs!1556799 d!1961616))

(declare-fun m!7076374 () Bool)

(assert (=> bs!1556799 m!7076374))

(assert (=> b!6252657 d!1961616))

(declare-fun d!1961618 () Bool)

(declare-fun lt!2348994 () Int)

(assert (=> d!1961618 (>= lt!2348994 0)))

(declare-fun e!3804306 () Int)

(assert (=> d!1961618 (= lt!2348994 e!3804306)))

(declare-fun c!1131895 () Bool)

(assert (=> d!1961618 (= c!1131895 ((_ is Cons!64707) lt!2348865))))

(assert (=> d!1961618 (= (zipperDepthTotal!330 lt!2348865) lt!2348994)))

(declare-fun b!6253432 () Bool)

(assert (=> b!6253432 (= e!3804306 (+ (contextDepthTotal!300 (h!71155 lt!2348865)) (zipperDepthTotal!330 (t!378379 lt!2348865))))))

(declare-fun b!6253433 () Bool)

(assert (=> b!6253433 (= e!3804306 0)))

(assert (= (and d!1961618 c!1131895) b!6253432))

(assert (= (and d!1961618 (not c!1131895)) b!6253433))

(declare-fun m!7076376 () Bool)

(assert (=> b!6253432 m!7076376))

(declare-fun m!7076378 () Bool)

(assert (=> b!6253432 m!7076378))

(assert (=> b!6252660 d!1961618))

(declare-fun d!1961620 () Bool)

(declare-fun lt!2348995 () Int)

(assert (=> d!1961620 (>= lt!2348995 0)))

(declare-fun e!3804307 () Int)

(assert (=> d!1961620 (= lt!2348995 e!3804307)))

(declare-fun c!1131896 () Bool)

(assert (=> d!1961620 (= c!1131896 ((_ is Cons!64707) zl!343))))

(assert (=> d!1961620 (= (zipperDepthTotal!330 zl!343) lt!2348995)))

(declare-fun b!6253434 () Bool)

(assert (=> b!6253434 (= e!3804307 (+ (contextDepthTotal!300 (h!71155 zl!343)) (zipperDepthTotal!330 (t!378379 zl!343))))))

(declare-fun b!6253435 () Bool)

(assert (=> b!6253435 (= e!3804307 0)))

(assert (= (and d!1961620 c!1131896) b!6253434))

(assert (= (and d!1961620 (not c!1131896)) b!6253435))

(assert (=> b!6253434 m!7075728))

(declare-fun m!7076380 () Bool)

(assert (=> b!6253434 m!7076380))

(assert (=> b!6252660 d!1961620))

(declare-fun d!1961622 () Bool)

(declare-fun c!1131897 () Bool)

(assert (=> d!1961622 (= c!1131897 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804308 () Bool)

(assert (=> d!1961622 (= (matchZipper!2189 lt!2348867 (t!378380 s!2326)) e!3804308)))

(declare-fun b!6253436 () Bool)

(assert (=> b!6253436 (= e!3804308 (nullableZipper!1949 lt!2348867))))

(declare-fun b!6253437 () Bool)

(assert (=> b!6253437 (= e!3804308 (matchZipper!2189 (derivationStepZipper!2143 lt!2348867 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961622 c!1131897) b!6253436))

(assert (= (and d!1961622 (not c!1131897)) b!6253437))

(assert (=> d!1961622 m!7076136))

(declare-fun m!7076382 () Bool)

(assert (=> b!6253436 m!7076382))

(assert (=> b!6253437 m!7076140))

(assert (=> b!6253437 m!7076140))

(declare-fun m!7076384 () Bool)

(assert (=> b!6253437 m!7076384))

(assert (=> b!6253437 m!7076144))

(assert (=> b!6253437 m!7076384))

(assert (=> b!6253437 m!7076144))

(declare-fun m!7076386 () Bool)

(assert (=> b!6253437 m!7076386))

(assert (=> b!6252639 d!1961622))

(assert (=> b!6252653 d!1961536))

(declare-fun b!6253444 () Bool)

(assert (=> b!6253444 true))

(declare-fun bs!1556800 () Bool)

(declare-fun b!6253446 () Bool)

(assert (= bs!1556800 (and b!6253446 b!6253444)))

(declare-fun lambda!342117 () Int)

(declare-fun lt!2349006 () Int)

(declare-fun lt!2349004 () Int)

(declare-fun lambda!342118 () Int)

(assert (=> bs!1556800 (= (= lt!2349004 lt!2349006) (= lambda!342118 lambda!342117))))

(assert (=> b!6253446 true))

(declare-fun d!1961624 () Bool)

(declare-fun e!3804313 () Bool)

(assert (=> d!1961624 e!3804313))

(declare-fun res!2580929 () Bool)

(assert (=> d!1961624 (=> (not res!2580929) (not e!3804313))))

(assert (=> d!1961624 (= res!2580929 (>= lt!2349004 0))))

(declare-fun e!3804314 () Int)

(assert (=> d!1961624 (= lt!2349004 e!3804314)))

(declare-fun c!1131906 () Bool)

(assert (=> d!1961624 (= c!1131906 ((_ is Cons!64707) lt!2348865))))

(assert (=> d!1961624 (= (zipperDepth!302 lt!2348865) lt!2349004)))

(assert (=> b!6253444 (= e!3804314 lt!2349006)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!197 (Context!11122) Int)

(assert (=> b!6253444 (= lt!2349006 (maxBigInt!0 (contextDepth!197 (h!71155 lt!2348865)) (zipperDepth!302 (t!378379 lt!2348865))))))

(declare-fun lambda!342116 () Int)

(declare-fun lt!2349007 () Unit!158039)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!181 (List!64831 Int Int Int) Unit!158039)

(assert (=> b!6253444 (= lt!2349007 (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 lt!2348865) lt!2349006 (zipperDepth!302 (t!378379 lt!2348865)) lambda!342116))))

(declare-fun forall!15297 (List!64831 Int) Bool)

(assert (=> b!6253444 (forall!15297 (t!378379 lt!2348865) lambda!342117)))

(declare-fun lt!2349005 () Unit!158039)

(assert (=> b!6253444 (= lt!2349005 lt!2349007)))

(declare-fun b!6253445 () Bool)

(assert (=> b!6253445 (= e!3804314 0)))

(assert (=> b!6253446 (= e!3804313 (forall!15297 lt!2348865 lambda!342118))))

(assert (= (and d!1961624 c!1131906) b!6253444))

(assert (= (and d!1961624 (not c!1131906)) b!6253445))

(assert (= (and d!1961624 res!2580929) b!6253446))

(declare-fun m!7076388 () Bool)

(assert (=> b!6253444 m!7076388))

(declare-fun m!7076390 () Bool)

(assert (=> b!6253444 m!7076390))

(declare-fun m!7076392 () Bool)

(assert (=> b!6253444 m!7076392))

(assert (=> b!6253444 m!7076388))

(declare-fun m!7076394 () Bool)

(assert (=> b!6253444 m!7076394))

(assert (=> b!6253444 m!7076392))

(assert (=> b!6253444 m!7076388))

(declare-fun m!7076396 () Bool)

(assert (=> b!6253444 m!7076396))

(declare-fun m!7076398 () Bool)

(assert (=> b!6253446 m!7076398))

(assert (=> b!6252633 d!1961624))

(declare-fun bs!1556801 () Bool)

(declare-fun b!6253449 () Bool)

(assert (= bs!1556801 (and b!6253449 b!6253444)))

(declare-fun lambda!342119 () Int)

(assert (=> bs!1556801 (= lambda!342119 lambda!342116)))

(declare-fun lambda!342120 () Int)

(declare-fun lt!2349010 () Int)

(assert (=> bs!1556801 (= (= lt!2349010 lt!2349006) (= lambda!342120 lambda!342117))))

(declare-fun bs!1556802 () Bool)

(assert (= bs!1556802 (and b!6253449 b!6253446)))

(assert (=> bs!1556802 (= (= lt!2349010 lt!2349004) (= lambda!342120 lambda!342118))))

(assert (=> b!6253449 true))

(declare-fun bs!1556803 () Bool)

(declare-fun b!6253451 () Bool)

(assert (= bs!1556803 (and b!6253451 b!6253444)))

(declare-fun lt!2349008 () Int)

(declare-fun lambda!342121 () Int)

(assert (=> bs!1556803 (= (= lt!2349008 lt!2349006) (= lambda!342121 lambda!342117))))

(declare-fun bs!1556804 () Bool)

(assert (= bs!1556804 (and b!6253451 b!6253446)))

(assert (=> bs!1556804 (= (= lt!2349008 lt!2349004) (= lambda!342121 lambda!342118))))

(declare-fun bs!1556805 () Bool)

(assert (= bs!1556805 (and b!6253451 b!6253449)))

(assert (=> bs!1556805 (= (= lt!2349008 lt!2349010) (= lambda!342121 lambda!342120))))

(assert (=> b!6253451 true))

(declare-fun d!1961626 () Bool)

(declare-fun e!3804315 () Bool)

(assert (=> d!1961626 e!3804315))

(declare-fun res!2580930 () Bool)

(assert (=> d!1961626 (=> (not res!2580930) (not e!3804315))))

(assert (=> d!1961626 (= res!2580930 (>= lt!2349008 0))))

(declare-fun e!3804316 () Int)

(assert (=> d!1961626 (= lt!2349008 e!3804316)))

(declare-fun c!1131907 () Bool)

(assert (=> d!1961626 (= c!1131907 ((_ is Cons!64707) zl!343))))

(assert (=> d!1961626 (= (zipperDepth!302 zl!343) lt!2349008)))

(assert (=> b!6253449 (= e!3804316 lt!2349010)))

(assert (=> b!6253449 (= lt!2349010 (maxBigInt!0 (contextDepth!197 (h!71155 zl!343)) (zipperDepth!302 (t!378379 zl!343))))))

(declare-fun lt!2349011 () Unit!158039)

(assert (=> b!6253449 (= lt!2349011 (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 zl!343) lt!2349010 (zipperDepth!302 (t!378379 zl!343)) lambda!342119))))

(assert (=> b!6253449 (forall!15297 (t!378379 zl!343) lambda!342120)))

(declare-fun lt!2349009 () Unit!158039)

(assert (=> b!6253449 (= lt!2349009 lt!2349011)))

(declare-fun b!6253450 () Bool)

(assert (=> b!6253450 (= e!3804316 0)))

(assert (=> b!6253451 (= e!3804315 (forall!15297 zl!343 lambda!342121))))

(assert (= (and d!1961626 c!1131907) b!6253449))

(assert (= (and d!1961626 (not c!1131907)) b!6253450))

(assert (= (and d!1961626 res!2580930) b!6253451))

(declare-fun m!7076400 () Bool)

(assert (=> b!6253449 m!7076400))

(declare-fun m!7076402 () Bool)

(assert (=> b!6253449 m!7076402))

(declare-fun m!7076404 () Bool)

(assert (=> b!6253449 m!7076404))

(assert (=> b!6253449 m!7076400))

(declare-fun m!7076406 () Bool)

(assert (=> b!6253449 m!7076406))

(assert (=> b!6253449 m!7076404))

(assert (=> b!6253449 m!7076400))

(declare-fun m!7076408 () Bool)

(assert (=> b!6253449 m!7076408))

(declare-fun m!7076410 () Bool)

(assert (=> b!6253451 m!7076410))

(assert (=> b!6252633 d!1961626))

(declare-fun d!1961628 () Bool)

(assert (=> d!1961628 (= (isEmpty!36730 (t!378379 zl!343)) ((_ is Nil!64707) (t!378379 zl!343)))))

(assert (=> b!6252632 d!1961628))

(assert (=> b!6252656 d!1961606))

(declare-fun call!527574 () (InoxSet Context!11122))

(declare-fun b!6253452 () Bool)

(declare-fun e!3804319 () (InoxSet Context!11122))

(assert (=> b!6253452 (= e!3804319 ((_ map or) call!527574 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (h!71156 s!2326))))))

(declare-fun b!6253453 () Bool)

(declare-fun e!3804318 () (InoxSet Context!11122))

(assert (=> b!6253453 (= e!3804319 e!3804318)))

(declare-fun c!1131908 () Bool)

(assert (=> b!6253453 (= c!1131908 ((_ is Cons!64706) (exprs!6061 lt!2348879)))))

(declare-fun b!6253454 () Bool)

(declare-fun e!3804317 () Bool)

(assert (=> b!6253454 (= e!3804317 (nullable!6170 (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun b!6253455 () Bool)

(assert (=> b!6253455 (= e!3804318 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1961630 () Bool)

(declare-fun c!1131909 () Bool)

(assert (=> d!1961630 (= c!1131909 e!3804317)))

(declare-fun res!2580931 () Bool)

(assert (=> d!1961630 (=> (not res!2580931) (not e!3804317))))

(assert (=> d!1961630 (= res!2580931 ((_ is Cons!64706) (exprs!6061 lt!2348879)))))

(assert (=> d!1961630 (= (derivationStepZipperUp!1351 lt!2348879 (h!71156 s!2326)) e!3804319)))

(declare-fun b!6253456 () Bool)

(assert (=> b!6253456 (= e!3804318 call!527574)))

(declare-fun bm!527569 () Bool)

(assert (=> bm!527569 (= call!527574 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348879)) (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (h!71156 s!2326)))))

(assert (= (and d!1961630 res!2580931) b!6253454))

(assert (= (and d!1961630 c!1131909) b!6253452))

(assert (= (and d!1961630 (not c!1131909)) b!6253453))

(assert (= (and b!6253453 c!1131908) b!6253456))

(assert (= (and b!6253453 (not c!1131908)) b!6253455))

(assert (= (or b!6253452 b!6253456) bm!527569))

(declare-fun m!7076412 () Bool)

(assert (=> b!6253452 m!7076412))

(declare-fun m!7076414 () Bool)

(assert (=> b!6253454 m!7076414))

(declare-fun m!7076416 () Bool)

(assert (=> bm!527569 m!7076416))

(assert (=> b!6252656 d!1961630))

(declare-fun bs!1556806 () Bool)

(declare-fun d!1961632 () Bool)

(assert (= bs!1556806 (and d!1961632 b!6252643)))

(declare-fun lambda!342122 () Int)

(assert (=> bs!1556806 (= lambda!342122 lambda!342043)))

(declare-fun bs!1556807 () Bool)

(assert (= bs!1556807 (and d!1961632 d!1961556)))

(assert (=> bs!1556807 (= lambda!342122 lambda!342091)))

(assert (=> d!1961632 true))

(assert (=> d!1961632 (= (derivationStepZipper!2143 lt!2348857 (h!71156 s!2326)) (flatMap!1682 lt!2348857 lambda!342122))))

(declare-fun bs!1556808 () Bool)

(assert (= bs!1556808 d!1961632))

(declare-fun m!7076418 () Bool)

(assert (=> bs!1556808 m!7076418))

(assert (=> b!6252656 d!1961632))

(declare-fun d!1961634 () Bool)

(assert (=> d!1961634 (= (flatMap!1682 lt!2348857 lambda!342043) (dynLambda!25556 lambda!342043 lt!2348879))))

(declare-fun lt!2349012 () Unit!158039)

(assert (=> d!1961634 (= lt!2349012 (choose!46407 lt!2348857 lt!2348879 lambda!342043))))

(assert (=> d!1961634 (= lt!2348857 (store ((as const (Array Context!11122 Bool)) false) lt!2348879 true))))

(assert (=> d!1961634 (= (lemmaFlatMapOnSingletonSet!1208 lt!2348857 lt!2348879 lambda!342043) lt!2349012)))

(declare-fun b_lambda!237933 () Bool)

(assert (=> (not b_lambda!237933) (not d!1961634)))

(declare-fun bs!1556809 () Bool)

(assert (= bs!1556809 d!1961634))

(assert (=> bs!1556809 m!7075716))

(declare-fun m!7076420 () Bool)

(assert (=> bs!1556809 m!7076420))

(declare-fun m!7076422 () Bool)

(assert (=> bs!1556809 m!7076422))

(assert (=> bs!1556809 m!7075712))

(assert (=> b!6252656 d!1961634))

(declare-fun d!1961636 () Bool)

(assert (=> d!1961636 (= (flatMap!1682 lt!2348857 lambda!342043) (choose!46406 lt!2348857 lambda!342043))))

(declare-fun bs!1556810 () Bool)

(assert (= bs!1556810 d!1961636))

(declare-fun m!7076424 () Bool)

(assert (=> bs!1556810 m!7076424))

(assert (=> b!6252656 d!1961636))

(declare-fun bs!1556811 () Bool)

(declare-fun d!1961638 () Bool)

(assert (= bs!1556811 (and d!1961638 d!1961580)))

(declare-fun lambda!342123 () Int)

(assert (=> bs!1556811 (= lambda!342123 lambda!342094)))

(declare-fun bs!1556812 () Bool)

(assert (= bs!1556812 (and d!1961638 d!1961582)))

(assert (=> bs!1556812 (= lambda!342123 lambda!342097)))

(declare-fun bs!1556813 () Bool)

(assert (= bs!1556813 (and d!1961638 d!1961588)))

(assert (=> bs!1556813 (= lambda!342123 lambda!342100)))

(declare-fun bs!1556814 () Bool)

(assert (= bs!1556814 (and d!1961638 d!1961604)))

(assert (=> bs!1556814 (= lambda!342123 lambda!342109)))

(assert (=> d!1961638 (= (inv!83689 (h!71155 zl!343)) (forall!15296 (exprs!6061 (h!71155 zl!343)) lambda!342123))))

(declare-fun bs!1556815 () Bool)

(assert (= bs!1556815 d!1961638))

(declare-fun m!7076426 () Bool)

(assert (=> bs!1556815 m!7076426))

(assert (=> b!6252636 d!1961638))

(declare-fun b!6253475 () Bool)

(declare-fun e!3804331 () Bool)

(declare-fun lt!2349021 () Option!16068)

(declare-fun ++!14253 (List!64832 List!64832) List!64832)

(declare-fun get!22357 (Option!16068) tuple2!66312)

(assert (=> b!6253475 (= e!3804331 (= (++!14253 (_1!36459 (get!22357 lt!2349021)) (_2!36459 (get!22357 lt!2349021))) s!2326))))

(declare-fun b!6253476 () Bool)

(declare-fun e!3804333 () Bool)

(assert (=> b!6253476 (= e!3804333 (not (isDefined!12771 lt!2349021)))))

(declare-fun b!6253478 () Bool)

(declare-fun e!3804330 () Bool)

(assert (=> b!6253478 (= e!3804330 (matchR!8360 (regTwo!32866 r!7292) s!2326))))

(declare-fun b!6253479 () Bool)

(declare-fun e!3804334 () Option!16068)

(assert (=> b!6253479 (= e!3804334 (Some!16067 (tuple2!66313 Nil!64708 s!2326)))))

(declare-fun b!6253480 () Bool)

(declare-fun lt!2349019 () Unit!158039)

(declare-fun lt!2349020 () Unit!158039)

(assert (=> b!6253480 (= lt!2349019 lt!2349020)))

(assert (=> b!6253480 (= (++!14253 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2348 (List!64832 C!32624 List!64832 List!64832) Unit!158039)

(assert (=> b!6253480 (= lt!2349020 (lemmaMoveElementToOtherListKeepsConcatEq!2348 Nil!64708 (h!71156 s!2326) (t!378380 s!2326) s!2326))))

(declare-fun e!3804332 () Option!16068)

(assert (=> b!6253480 (= e!3804332 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326) s!2326))))

(declare-fun b!6253481 () Bool)

(declare-fun res!2580943 () Bool)

(assert (=> b!6253481 (=> (not res!2580943) (not e!3804331))))

(assert (=> b!6253481 (= res!2580943 (matchR!8360 (regOne!32866 r!7292) (_1!36459 (get!22357 lt!2349021))))))

(declare-fun b!6253482 () Bool)

(assert (=> b!6253482 (= e!3804332 None!16067)))

(declare-fun b!6253483 () Bool)

(declare-fun res!2580942 () Bool)

(assert (=> b!6253483 (=> (not res!2580942) (not e!3804331))))

(assert (=> b!6253483 (= res!2580942 (matchR!8360 (regTwo!32866 r!7292) (_2!36459 (get!22357 lt!2349021))))))

(declare-fun d!1961640 () Bool)

(assert (=> d!1961640 e!3804333))

(declare-fun res!2580946 () Bool)

(assert (=> d!1961640 (=> res!2580946 e!3804333)))

(assert (=> d!1961640 (= res!2580946 e!3804331)))

(declare-fun res!2580944 () Bool)

(assert (=> d!1961640 (=> (not res!2580944) (not e!3804331))))

(assert (=> d!1961640 (= res!2580944 (isDefined!12771 lt!2349021))))

(assert (=> d!1961640 (= lt!2349021 e!3804334)))

(declare-fun c!1131914 () Bool)

(assert (=> d!1961640 (= c!1131914 e!3804330)))

(declare-fun res!2580945 () Bool)

(assert (=> d!1961640 (=> (not res!2580945) (not e!3804330))))

(assert (=> d!1961640 (= res!2580945 (matchR!8360 (regOne!32866 r!7292) Nil!64708))))

(assert (=> d!1961640 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1961640 (= (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326) lt!2349021)))

(declare-fun b!6253477 () Bool)

(assert (=> b!6253477 (= e!3804334 e!3804332)))

(declare-fun c!1131915 () Bool)

(assert (=> b!6253477 (= c!1131915 ((_ is Nil!64708) s!2326))))

(assert (= (and d!1961640 res!2580945) b!6253478))

(assert (= (and d!1961640 c!1131914) b!6253479))

(assert (= (and d!1961640 (not c!1131914)) b!6253477))

(assert (= (and b!6253477 c!1131915) b!6253482))

(assert (= (and b!6253477 (not c!1131915)) b!6253480))

(assert (= (and d!1961640 res!2580944) b!6253481))

(assert (= (and b!6253481 res!2580943) b!6253483))

(assert (= (and b!6253483 res!2580942) b!6253475))

(assert (= (and d!1961640 (not res!2580946)) b!6253476))

(declare-fun m!7076428 () Bool)

(assert (=> b!6253483 m!7076428))

(declare-fun m!7076430 () Bool)

(assert (=> b!6253483 m!7076430))

(declare-fun m!7076432 () Bool)

(assert (=> b!6253476 m!7076432))

(assert (=> b!6253475 m!7076428))

(declare-fun m!7076434 () Bool)

(assert (=> b!6253475 m!7076434))

(assert (=> d!1961640 m!7076432))

(declare-fun m!7076436 () Bool)

(assert (=> d!1961640 m!7076436))

(declare-fun m!7076438 () Bool)

(assert (=> d!1961640 m!7076438))

(declare-fun m!7076440 () Bool)

(assert (=> b!6253478 m!7076440))

(declare-fun m!7076442 () Bool)

(assert (=> b!6253480 m!7076442))

(assert (=> b!6253480 m!7076442))

(declare-fun m!7076444 () Bool)

(assert (=> b!6253480 m!7076444))

(declare-fun m!7076446 () Bool)

(assert (=> b!6253480 m!7076446))

(assert (=> b!6253480 m!7076442))

(declare-fun m!7076448 () Bool)

(assert (=> b!6253480 m!7076448))

(assert (=> b!6253481 m!7076428))

(declare-fun m!7076450 () Bool)

(assert (=> b!6253481 m!7076450))

(assert (=> b!6252634 d!1961640))

(declare-fun d!1961642 () Bool)

(declare-fun choose!46409 (Int) Bool)

(assert (=> d!1961642 (= (Exists!3247 lambda!342042) (choose!46409 lambda!342042))))

(declare-fun bs!1556816 () Bool)

(assert (= bs!1556816 d!1961642))

(declare-fun m!7076452 () Bool)

(assert (=> bs!1556816 m!7076452))

(assert (=> b!6252634 d!1961642))

(declare-fun d!1961644 () Bool)

(assert (=> d!1961644 (= (Exists!3247 lambda!342041) (choose!46409 lambda!342041))))

(declare-fun bs!1556817 () Bool)

(assert (= bs!1556817 d!1961644))

(declare-fun m!7076454 () Bool)

(assert (=> bs!1556817 m!7076454))

(assert (=> b!6252634 d!1961644))

(declare-fun bs!1556818 () Bool)

(declare-fun d!1961646 () Bool)

(assert (= bs!1556818 (and d!1961646 b!6252634)))

(declare-fun lambda!342126 () Int)

(assert (=> bs!1556818 (= lambda!342126 lambda!342041)))

(assert (=> bs!1556818 (not (= lambda!342126 lambda!342042))))

(declare-fun bs!1556819 () Bool)

(assert (= bs!1556819 (and d!1961646 b!6253360)))

(assert (=> bs!1556819 (not (= lambda!342126 lambda!342105))))

(declare-fun bs!1556820 () Bool)

(assert (= bs!1556820 (and d!1961646 b!6253362)))

(assert (=> bs!1556820 (not (= lambda!342126 lambda!342106))))

(assert (=> d!1961646 true))

(assert (=> d!1961646 true))

(assert (=> d!1961646 true))

(assert (=> d!1961646 (= (isDefined!12771 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326)) (Exists!3247 lambda!342126))))

(declare-fun lt!2349024 () Unit!158039)

(declare-fun choose!46410 (Regex!16177 Regex!16177 List!64832) Unit!158039)

(assert (=> d!1961646 (= lt!2349024 (choose!46410 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326))))

(assert (=> d!1961646 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1961646 (= (lemmaFindConcatSeparationEquivalentToExists!2246 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326) lt!2349024)))

(declare-fun bs!1556821 () Bool)

(assert (= bs!1556821 d!1961646))

(assert (=> bs!1556821 m!7075704))

(assert (=> bs!1556821 m!7076438))

(declare-fun m!7076456 () Bool)

(assert (=> bs!1556821 m!7076456))

(assert (=> bs!1556821 m!7075704))

(assert (=> bs!1556821 m!7075706))

(declare-fun m!7076458 () Bool)

(assert (=> bs!1556821 m!7076458))

(assert (=> b!6252634 d!1961646))

(declare-fun bs!1556822 () Bool)

(declare-fun d!1961648 () Bool)

(assert (= bs!1556822 (and d!1961648 b!6253360)))

(declare-fun lambda!342131 () Int)

(assert (=> bs!1556822 (not (= lambda!342131 lambda!342105))))

(declare-fun bs!1556823 () Bool)

(assert (= bs!1556823 (and d!1961648 d!1961646)))

(assert (=> bs!1556823 (= lambda!342131 lambda!342126)))

(declare-fun bs!1556824 () Bool)

(assert (= bs!1556824 (and d!1961648 b!6252634)))

(assert (=> bs!1556824 (= lambda!342131 lambda!342041)))

(assert (=> bs!1556824 (not (= lambda!342131 lambda!342042))))

(declare-fun bs!1556825 () Bool)

(assert (= bs!1556825 (and d!1961648 b!6253362)))

(assert (=> bs!1556825 (not (= lambda!342131 lambda!342106))))

(assert (=> d!1961648 true))

(assert (=> d!1961648 true))

(assert (=> d!1961648 true))

(declare-fun lambda!342132 () Int)

(assert (=> bs!1556822 (not (= lambda!342132 lambda!342105))))

(assert (=> bs!1556823 (not (= lambda!342132 lambda!342126))))

(assert (=> bs!1556824 (not (= lambda!342132 lambda!342041))))

(assert (=> bs!1556825 (= lambda!342132 lambda!342106)))

(declare-fun bs!1556826 () Bool)

(assert (= bs!1556826 d!1961648))

(assert (=> bs!1556826 (not (= lambda!342132 lambda!342131))))

(assert (=> bs!1556824 (= lambda!342132 lambda!342042)))

(assert (=> d!1961648 true))

(assert (=> d!1961648 true))

(assert (=> d!1961648 true))

(assert (=> d!1961648 (= (Exists!3247 lambda!342131) (Exists!3247 lambda!342132))))

(declare-fun lt!2349027 () Unit!158039)

(declare-fun choose!46411 (Regex!16177 Regex!16177 List!64832) Unit!158039)

(assert (=> d!1961648 (= lt!2349027 (choose!46411 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326))))

(assert (=> d!1961648 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1961648 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1784 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326) lt!2349027)))

(declare-fun m!7076460 () Bool)

(assert (=> bs!1556826 m!7076460))

(declare-fun m!7076462 () Bool)

(assert (=> bs!1556826 m!7076462))

(declare-fun m!7076464 () Bool)

(assert (=> bs!1556826 m!7076464))

(assert (=> bs!1556826 m!7076438))

(assert (=> b!6252634 d!1961648))

(declare-fun d!1961650 () Bool)

(declare-fun isEmpty!36735 (Option!16068) Bool)

(assert (=> d!1961650 (= (isDefined!12771 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326)) (not (isEmpty!36735 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326))))))

(declare-fun bs!1556827 () Bool)

(assert (= bs!1556827 d!1961650))

(assert (=> bs!1556827 m!7075704))

(declare-fun m!7076466 () Bool)

(assert (=> bs!1556827 m!7076466))

(assert (=> b!6252634 d!1961650))

(declare-fun d!1961652 () Bool)

(declare-fun c!1131916 () Bool)

(assert (=> d!1961652 (= c!1131916 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804341 () Bool)

(assert (=> d!1961652 (= (matchZipper!2189 lt!2348858 (t!378380 s!2326)) e!3804341)))

(declare-fun b!6253496 () Bool)

(assert (=> b!6253496 (= e!3804341 (nullableZipper!1949 lt!2348858))))

(declare-fun b!6253497 () Bool)

(assert (=> b!6253497 (= e!3804341 (matchZipper!2189 (derivationStepZipper!2143 lt!2348858 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1961652 c!1131916) b!6253496))

(assert (= (and d!1961652 (not c!1131916)) b!6253497))

(assert (=> d!1961652 m!7076136))

(declare-fun m!7076468 () Bool)

(assert (=> b!6253496 m!7076468))

(assert (=> b!6253497 m!7076140))

(assert (=> b!6253497 m!7076140))

(declare-fun m!7076470 () Bool)

(assert (=> b!6253497 m!7076470))

(assert (=> b!6253497 m!7076144))

(assert (=> b!6253497 m!7076470))

(assert (=> b!6253497 m!7076144))

(declare-fun m!7076472 () Bool)

(assert (=> b!6253497 m!7076472))

(assert (=> b!6252655 d!1961652))

(declare-fun bs!1556828 () Bool)

(declare-fun d!1961654 () Bool)

(assert (= bs!1556828 (and d!1961654 d!1961580)))

(declare-fun lambda!342133 () Int)

(assert (=> bs!1556828 (= lambda!342133 lambda!342094)))

(declare-fun bs!1556829 () Bool)

(assert (= bs!1556829 (and d!1961654 d!1961604)))

(assert (=> bs!1556829 (= lambda!342133 lambda!342109)))

(declare-fun bs!1556830 () Bool)

(assert (= bs!1556830 (and d!1961654 d!1961588)))

(assert (=> bs!1556830 (= lambda!342133 lambda!342100)))

(declare-fun bs!1556831 () Bool)

(assert (= bs!1556831 (and d!1961654 d!1961638)))

(assert (=> bs!1556831 (= lambda!342133 lambda!342123)))

(declare-fun bs!1556832 () Bool)

(assert (= bs!1556832 (and d!1961654 d!1961582)))

(assert (=> bs!1556832 (= lambda!342133 lambda!342097)))

(declare-fun b!6253499 () Bool)

(declare-fun e!3804344 () Regex!16177)

(assert (=> b!6253499 (= e!3804344 (Concat!25022 (h!71154 (exprs!6061 (h!71155 zl!343))) (generalisedConcat!1774 (t!378378 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6253500 () Bool)

(declare-fun e!3804346 () Regex!16177)

(assert (=> b!6253500 (= e!3804346 e!3804344)))

(declare-fun c!1131917 () Bool)

(assert (=> b!6253500 (= c!1131917 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(declare-fun b!6253501 () Bool)

(declare-fun e!3804345 () Bool)

(declare-fun lt!2349028 () Regex!16177)

(assert (=> b!6253501 (= e!3804345 (= lt!2349028 (head!12859 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6253502 () Bool)

(declare-fun e!3804347 () Bool)

(assert (=> b!6253502 (= e!3804347 e!3804345)))

(declare-fun c!1131920 () Bool)

(assert (=> b!6253502 (= c!1131920 (isEmpty!36731 (tail!11944 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6253503 () Bool)

(assert (=> b!6253503 (= e!3804344 EmptyExpr!16177)))

(declare-fun b!6253504 () Bool)

(assert (=> b!6253504 (= e!3804345 (isConcat!1108 lt!2349028))))

(declare-fun b!6253505 () Bool)

(assert (=> b!6253505 (= e!3804347 (isEmptyExpr!1585 lt!2349028))))

(declare-fun b!6253506 () Bool)

(assert (=> b!6253506 (= e!3804346 (h!71154 (exprs!6061 (h!71155 zl!343))))))

(declare-fun b!6253507 () Bool)

(declare-fun e!3804343 () Bool)

(assert (=> b!6253507 (= e!3804343 e!3804347)))

(declare-fun c!1131919 () Bool)

(assert (=> b!6253507 (= c!1131919 (isEmpty!36731 (exprs!6061 (h!71155 zl!343))))))

(declare-fun b!6253498 () Bool)

(declare-fun e!3804342 () Bool)

(assert (=> b!6253498 (= e!3804342 (isEmpty!36731 (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> d!1961654 e!3804343))

(declare-fun res!2580960 () Bool)

(assert (=> d!1961654 (=> (not res!2580960) (not e!3804343))))

(assert (=> d!1961654 (= res!2580960 (validRegex!7913 lt!2349028))))

(assert (=> d!1961654 (= lt!2349028 e!3804346)))

(declare-fun c!1131918 () Bool)

(assert (=> d!1961654 (= c!1131918 e!3804342)))

(declare-fun res!2580959 () Bool)

(assert (=> d!1961654 (=> (not res!2580959) (not e!3804342))))

(assert (=> d!1961654 (= res!2580959 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1961654 (forall!15296 (exprs!6061 (h!71155 zl!343)) lambda!342133)))

(assert (=> d!1961654 (= (generalisedConcat!1774 (exprs!6061 (h!71155 zl!343))) lt!2349028)))

(assert (= (and d!1961654 res!2580959) b!6253498))

(assert (= (and d!1961654 c!1131918) b!6253506))

(assert (= (and d!1961654 (not c!1131918)) b!6253500))

(assert (= (and b!6253500 c!1131917) b!6253499))

(assert (= (and b!6253500 (not c!1131917)) b!6253503))

(assert (= (and d!1961654 res!2580960) b!6253507))

(assert (= (and b!6253507 c!1131919) b!6253505))

(assert (= (and b!6253507 (not c!1131919)) b!6253502))

(assert (= (and b!6253502 c!1131920) b!6253501))

(assert (= (and b!6253502 (not c!1131920)) b!6253504))

(declare-fun m!7076474 () Bool)

(assert (=> b!6253507 m!7076474))

(declare-fun m!7076476 () Bool)

(assert (=> b!6253502 m!7076476))

(assert (=> b!6253502 m!7076476))

(declare-fun m!7076478 () Bool)

(assert (=> b!6253502 m!7076478))

(declare-fun m!7076480 () Bool)

(assert (=> d!1961654 m!7076480))

(declare-fun m!7076482 () Bool)

(assert (=> d!1961654 m!7076482))

(assert (=> b!6253498 m!7075698))

(declare-fun m!7076484 () Bool)

(assert (=> b!6253504 m!7076484))

(declare-fun m!7076486 () Bool)

(assert (=> b!6253499 m!7076486))

(declare-fun m!7076488 () Bool)

(assert (=> b!6253505 m!7076488))

(declare-fun m!7076490 () Bool)

(assert (=> b!6253501 m!7076490))

(assert (=> b!6252635 d!1961654))

(declare-fun condSetEmpty!42512 () Bool)

(assert (=> setNonEmpty!42506 (= condSetEmpty!42512 (= setRest!42506 ((as const (Array Context!11122 Bool)) false)))))

(declare-fun setRes!42512 () Bool)

(assert (=> setNonEmpty!42506 (= tp!1744840 setRes!42512)))

(declare-fun setIsEmpty!42512 () Bool)

(assert (=> setIsEmpty!42512 setRes!42512))

(declare-fun e!3804350 () Bool)

(declare-fun setElem!42512 () Context!11122)

(declare-fun setNonEmpty!42512 () Bool)

(declare-fun tp!1744910 () Bool)

(assert (=> setNonEmpty!42512 (= setRes!42512 (and tp!1744910 (inv!83689 setElem!42512) e!3804350))))

(declare-fun setRest!42512 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42512 (= setRest!42506 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42512 true) setRest!42512))))

(declare-fun b!6253512 () Bool)

(declare-fun tp!1744909 () Bool)

(assert (=> b!6253512 (= e!3804350 tp!1744909)))

(assert (= (and setNonEmpty!42506 condSetEmpty!42512) setIsEmpty!42512))

(assert (= (and setNonEmpty!42506 (not condSetEmpty!42512)) setNonEmpty!42512))

(assert (= setNonEmpty!42512 b!6253512))

(declare-fun m!7076492 () Bool)

(assert (=> setNonEmpty!42512 m!7076492))

(declare-fun b!6253517 () Bool)

(declare-fun e!3804353 () Bool)

(declare-fun tp!1744915 () Bool)

(declare-fun tp!1744916 () Bool)

(assert (=> b!6253517 (= e!3804353 (and tp!1744915 tp!1744916))))

(assert (=> b!6252654 (= tp!1744843 e!3804353)))

(assert (= (and b!6252654 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343)))) b!6253517))

(declare-fun b!6253529 () Bool)

(declare-fun e!3804356 () Bool)

(declare-fun tp!1744927 () Bool)

(declare-fun tp!1744931 () Bool)

(assert (=> b!6253529 (= e!3804356 (and tp!1744927 tp!1744931))))

(declare-fun b!6253530 () Bool)

(declare-fun tp!1744930 () Bool)

(assert (=> b!6253530 (= e!3804356 tp!1744930)))

(assert (=> b!6252637 (= tp!1744846 e!3804356)))

(declare-fun b!6253528 () Bool)

(assert (=> b!6253528 (= e!3804356 tp_is_empty!41607)))

(declare-fun b!6253531 () Bool)

(declare-fun tp!1744929 () Bool)

(declare-fun tp!1744928 () Bool)

(assert (=> b!6253531 (= e!3804356 (and tp!1744929 tp!1744928))))

(assert (= (and b!6252637 ((_ is ElementMatch!16177) (regOne!32866 r!7292))) b!6253528))

(assert (= (and b!6252637 ((_ is Concat!25022) (regOne!32866 r!7292))) b!6253529))

(assert (= (and b!6252637 ((_ is Star!16177) (regOne!32866 r!7292))) b!6253530))

(assert (= (and b!6252637 ((_ is Union!16177) (regOne!32866 r!7292))) b!6253531))

(declare-fun b!6253533 () Bool)

(declare-fun e!3804357 () Bool)

(declare-fun tp!1744932 () Bool)

(declare-fun tp!1744936 () Bool)

(assert (=> b!6253533 (= e!3804357 (and tp!1744932 tp!1744936))))

(declare-fun b!6253534 () Bool)

(declare-fun tp!1744935 () Bool)

(assert (=> b!6253534 (= e!3804357 tp!1744935)))

(assert (=> b!6252637 (= tp!1744837 e!3804357)))

(declare-fun b!6253532 () Bool)

(assert (=> b!6253532 (= e!3804357 tp_is_empty!41607)))

(declare-fun b!6253535 () Bool)

(declare-fun tp!1744934 () Bool)

(declare-fun tp!1744933 () Bool)

(assert (=> b!6253535 (= e!3804357 (and tp!1744934 tp!1744933))))

(assert (= (and b!6252637 ((_ is ElementMatch!16177) (regTwo!32866 r!7292))) b!6253532))

(assert (= (and b!6252637 ((_ is Concat!25022) (regTwo!32866 r!7292))) b!6253533))

(assert (= (and b!6252637 ((_ is Star!16177) (regTwo!32866 r!7292))) b!6253534))

(assert (= (and b!6252637 ((_ is Union!16177) (regTwo!32866 r!7292))) b!6253535))

(declare-fun b!6253536 () Bool)

(declare-fun e!3804358 () Bool)

(declare-fun tp!1744937 () Bool)

(declare-fun tp!1744938 () Bool)

(assert (=> b!6253536 (= e!3804358 (and tp!1744937 tp!1744938))))

(assert (=> b!6252652 (= tp!1744839 e!3804358)))

(assert (= (and b!6252652 ((_ is Cons!64706) (exprs!6061 setElem!42506))) b!6253536))

(declare-fun b!6253544 () Bool)

(declare-fun e!3804364 () Bool)

(declare-fun tp!1744943 () Bool)

(assert (=> b!6253544 (= e!3804364 tp!1744943)))

(declare-fun b!6253543 () Bool)

(declare-fun e!3804363 () Bool)

(declare-fun tp!1744944 () Bool)

(assert (=> b!6253543 (= e!3804363 (and (inv!83689 (h!71155 (t!378379 zl!343))) e!3804364 tp!1744944))))

(assert (=> b!6252636 (= tp!1744844 e!3804363)))

(assert (= b!6253543 b!6253544))

(assert (= (and b!6252636 ((_ is Cons!64707) (t!378379 zl!343))) b!6253543))

(declare-fun m!7076494 () Bool)

(assert (=> b!6253543 m!7076494))

(declare-fun b!6253546 () Bool)

(declare-fun e!3804365 () Bool)

(declare-fun tp!1744945 () Bool)

(declare-fun tp!1744949 () Bool)

(assert (=> b!6253546 (= e!3804365 (and tp!1744945 tp!1744949))))

(declare-fun b!6253547 () Bool)

(declare-fun tp!1744948 () Bool)

(assert (=> b!6253547 (= e!3804365 tp!1744948)))

(assert (=> b!6252659 (= tp!1744838 e!3804365)))

(declare-fun b!6253545 () Bool)

(assert (=> b!6253545 (= e!3804365 tp_is_empty!41607)))

(declare-fun b!6253548 () Bool)

(declare-fun tp!1744947 () Bool)

(declare-fun tp!1744946 () Bool)

(assert (=> b!6253548 (= e!3804365 (and tp!1744947 tp!1744946))))

(assert (= (and b!6252659 ((_ is ElementMatch!16177) (regOne!32867 r!7292))) b!6253545))

(assert (= (and b!6252659 ((_ is Concat!25022) (regOne!32867 r!7292))) b!6253546))

(assert (= (and b!6252659 ((_ is Star!16177) (regOne!32867 r!7292))) b!6253547))

(assert (= (and b!6252659 ((_ is Union!16177) (regOne!32867 r!7292))) b!6253548))

(declare-fun b!6253550 () Bool)

(declare-fun e!3804366 () Bool)

(declare-fun tp!1744950 () Bool)

(declare-fun tp!1744954 () Bool)

(assert (=> b!6253550 (= e!3804366 (and tp!1744950 tp!1744954))))

(declare-fun b!6253551 () Bool)

(declare-fun tp!1744953 () Bool)

(assert (=> b!6253551 (= e!3804366 tp!1744953)))

(assert (=> b!6252659 (= tp!1744845 e!3804366)))

(declare-fun b!6253549 () Bool)

(assert (=> b!6253549 (= e!3804366 tp_is_empty!41607)))

(declare-fun b!6253552 () Bool)

(declare-fun tp!1744952 () Bool)

(declare-fun tp!1744951 () Bool)

(assert (=> b!6253552 (= e!3804366 (and tp!1744952 tp!1744951))))

(assert (= (and b!6252659 ((_ is ElementMatch!16177) (regTwo!32867 r!7292))) b!6253549))

(assert (= (and b!6252659 ((_ is Concat!25022) (regTwo!32867 r!7292))) b!6253550))

(assert (= (and b!6252659 ((_ is Star!16177) (regTwo!32867 r!7292))) b!6253551))

(assert (= (and b!6252659 ((_ is Union!16177) (regTwo!32867 r!7292))) b!6253552))

(declare-fun b!6253554 () Bool)

(declare-fun e!3804367 () Bool)

(declare-fun tp!1744955 () Bool)

(declare-fun tp!1744959 () Bool)

(assert (=> b!6253554 (= e!3804367 (and tp!1744955 tp!1744959))))

(declare-fun b!6253555 () Bool)

(declare-fun tp!1744958 () Bool)

(assert (=> b!6253555 (= e!3804367 tp!1744958)))

(assert (=> b!6252665 (= tp!1744842 e!3804367)))

(declare-fun b!6253553 () Bool)

(assert (=> b!6253553 (= e!3804367 tp_is_empty!41607)))

(declare-fun b!6253556 () Bool)

(declare-fun tp!1744957 () Bool)

(declare-fun tp!1744956 () Bool)

(assert (=> b!6253556 (= e!3804367 (and tp!1744957 tp!1744956))))

(assert (= (and b!6252665 ((_ is ElementMatch!16177) (reg!16506 r!7292))) b!6253553))

(assert (= (and b!6252665 ((_ is Concat!25022) (reg!16506 r!7292))) b!6253554))

(assert (= (and b!6252665 ((_ is Star!16177) (reg!16506 r!7292))) b!6253555))

(assert (= (and b!6252665 ((_ is Union!16177) (reg!16506 r!7292))) b!6253556))

(declare-fun b!6253561 () Bool)

(declare-fun e!3804370 () Bool)

(declare-fun tp!1744962 () Bool)

(assert (=> b!6253561 (= e!3804370 (and tp_is_empty!41607 tp!1744962))))

(assert (=> b!6252650 (= tp!1744841 e!3804370)))

(assert (= (and b!6252650 ((_ is Cons!64708) (t!378380 s!2326))) b!6253561))

(declare-fun b_lambda!237935 () Bool)

(assert (= b_lambda!237929 (or b!6252643 b_lambda!237935)))

(declare-fun bs!1556833 () Bool)

(declare-fun d!1961656 () Bool)

(assert (= bs!1556833 (and d!1961656 b!6252643)))

(assert (=> bs!1556833 (= (dynLambda!25556 lambda!342043 (h!71155 zl!343)) (derivationStepZipperUp!1351 (h!71155 zl!343) (h!71156 s!2326)))))

(assert (=> bs!1556833 m!7075658))

(assert (=> d!1961572 d!1961656))

(declare-fun b_lambda!237937 () Bool)

(assert (= b_lambda!237931 (or b!6252643 b_lambda!237937)))

(declare-fun bs!1556834 () Bool)

(declare-fun d!1961658 () Bool)

(assert (= bs!1556834 (and d!1961658 b!6252643)))

(assert (=> bs!1556834 (= (dynLambda!25556 lambda!342043 lt!2348859) (derivationStepZipperUp!1351 lt!2348859 (h!71156 s!2326)))))

(assert (=> bs!1556834 m!7075722))

(assert (=> d!1961610 d!1961658))

(declare-fun b_lambda!237939 () Bool)

(assert (= b_lambda!237933 (or b!6252643 b_lambda!237939)))

(declare-fun bs!1556835 () Bool)

(declare-fun d!1961660 () Bool)

(assert (= bs!1556835 (and d!1961660 b!6252643)))

(assert (=> bs!1556835 (= (dynLambda!25556 lambda!342043 lt!2348879) (derivationStepZipperUp!1351 lt!2348879 (h!71156 s!2326)))))

(assert (=> bs!1556835 m!7075718))

(assert (=> d!1961634 d!1961660))

(check-sat (not d!1961650) (not d!1961588) (not d!1961600) (not bs!1556833) (not b!6253195) (not b!6253416) (not b!6253122) (not d!1961548) (not b!6253276) (not d!1961538) (not b!6253415) (not b!6253406) (not d!1961634) (not b!6253418) (not b!6253547) (not b!6253536) (not bm!527543) (not b!6253434) (not d!1961640) (not b!6253403) (not bm!527558) (not b!6253169) (not b!6253420) (not bm!527563) (not b!6253413) (not b!6253481) (not b!6253543) (not b!6253480) (not b!6253221) (not d!1961622) (not d!1961652) (not b!6253544) (not d!1961592) (not d!1961556) (not b!6253504) (not b!6253530) (not b!6253501) (not bm!527534) (not b!6253223) (not bm!527568) (not d!1961608) (not b!6253321) (not d!1961604) (not d!1961648) (not b!6253478) (not bm!527537) (not bm!527518) (not b!6253363) (not b!6253159) (not b!6253280) tp_is_empty!41607 (not b!6253427) (not b!6253277) (not bm!527554) (not b!6253318) (not d!1961568) (not b!6253404) (not d!1961584) (not bm!527548) (not b!6253446) (not bm!527569) (not b!6253290) (not b!6253497) (not b!6253121) (not d!1961580) (not b!6253432) (not b!6253157) (not bm!527533) (not b!6253436) (not b!6253423) (not d!1961558) (not d!1961594) (not d!1961602) (not bm!527556) (not bs!1556835) (not bm!527567) (not b!6253499) (not bm!527544) (not d!1961632) (not b!6253552) (not b!6253242) (not b!6253125) (not b!6253366) (not b!6253476) (not b!6253483) (not b!6253529) (not d!1961612) (not b!6253145) (not b!6253166) (not b!6253449) (not b!6253414) (not b!6253502) (not b!6253531) (not b!6253550) (not bm!527545) (not b!6253275) (not b!6253168) (not b!6253287) (not b!6253556) (not b!6253164) (not b!6253452) (not bm!527550) (not b!6253454) (not b!6253278) (not b!6253322) (not setNonEmpty!42512) (not b!6253444) (not d!1961550) (not b!6253425) (not b_lambda!237937) (not d!1961638) (not b!6253324) (not bm!527551) (not b!6253424) (not bm!527542) (not b!6253551) (not d!1961646) (not b!6253517) (not d!1961572) (not b!6253274) (not b!6253170) (not d!1961546) (not b!6253535) (not b!6253475) (not b!6253451) (not b!6253548) (not b!6253327) (not b!6253226) (not d!1961574) (not b!6253533) (not bm!527564) (not d!1961554) (not d!1961642) (not b!6253161) (not d!1961566) (not b!6253325) (not b!6253282) (not b!6253437) (not d!1961644) (not b_lambda!237939) (not d!1961582) (not b!6253228) (not b!6253561) (not b!6253496) (not b_lambda!237935) (not d!1961536) (not b!6253231) (not d!1961654) (not b!6253401) (not b!6253505) (not d!1961614) (not b!6253546) (not b!6253534) (not b!6253417) (not b!6253402) (not d!1961616) (not b!6253426) (not d!1961552) (not d!1961636) (not bm!527520) (not b!6253319) (not bs!1556834) (not b!6253507) (not b!6253555) (not d!1961598) (not b!6253216) (not b!6253411) (not b!6253167) (not b!6253218) (not d!1961610) (not b!6253165) (not b!6253554) (not bm!527541) (not b!6253512) (not b!6253498))
(check-sat)
(get-model)

(declare-fun b!6254293 () Bool)

(declare-fun e!3804796 () Bool)

(declare-fun e!3804795 () Bool)

(assert (=> b!6254293 (= e!3804796 e!3804795)))

(declare-fun res!2581193 () Bool)

(assert (=> b!6254293 (=> (not res!2581193) (not e!3804795))))

(declare-fun call!527717 () Bool)

(assert (=> b!6254293 (= res!2581193 call!527717)))

(declare-fun b!6254294 () Bool)

(declare-fun e!3804799 () Bool)

(declare-fun e!3804793 () Bool)

(assert (=> b!6254294 (= e!3804799 e!3804793)))

(declare-fun res!2581194 () Bool)

(assert (=> b!6254294 (= res!2581194 (not (nullable!6170 (reg!16506 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))))

(assert (=> b!6254294 (=> (not res!2581194) (not e!3804793))))

(declare-fun b!6254296 () Bool)

(declare-fun e!3804797 () Bool)

(assert (=> b!6254296 (= e!3804797 e!3804799)))

(declare-fun c!1132121 () Bool)

(assert (=> b!6254296 (= c!1132121 ((_ is Star!16177) (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))

(declare-fun d!1962012 () Bool)

(declare-fun res!2581192 () Bool)

(assert (=> d!1962012 (=> res!2581192 e!3804797)))

(assert (=> d!1962012 (= res!2581192 ((_ is ElementMatch!16177) (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))

(assert (=> d!1962012 (= (validRegex!7913 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))) e!3804797)))

(declare-fun bm!527712 () Bool)

(declare-fun c!1132122 () Bool)

(declare-fun call!527719 () Bool)

(assert (=> bm!527712 (= call!527719 (validRegex!7913 (ite c!1132122 (regTwo!32867 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))) (regTwo!32866 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))))

(declare-fun b!6254297 () Bool)

(declare-fun res!2581195 () Bool)

(assert (=> b!6254297 (=> res!2581195 e!3804796)))

(assert (=> b!6254297 (= res!2581195 (not ((_ is Concat!25022) (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881)))))))

(declare-fun e!3804794 () Bool)

(assert (=> b!6254297 (= e!3804794 e!3804796)))

(declare-fun bm!527713 () Bool)

(declare-fun call!527718 () Bool)

(assert (=> bm!527713 (= call!527717 call!527718)))

(declare-fun b!6254298 () Bool)

(declare-fun res!2581196 () Bool)

(declare-fun e!3804798 () Bool)

(assert (=> b!6254298 (=> (not res!2581196) (not e!3804798))))

(assert (=> b!6254298 (= res!2581196 call!527717)))

(assert (=> b!6254298 (= e!3804794 e!3804798)))

(declare-fun b!6254299 () Bool)

(assert (=> b!6254299 (= e!3804798 call!527719)))

(declare-fun b!6254300 () Bool)

(assert (=> b!6254300 (= e!3804799 e!3804794)))

(assert (=> b!6254300 (= c!1132122 ((_ is Union!16177) (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))))))

(declare-fun bm!527714 () Bool)

(assert (=> bm!527714 (= call!527718 (validRegex!7913 (ite c!1132121 (reg!16506 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))) (ite c!1132122 (regOne!32867 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881))) (regOne!32866 (ite c!1131853 (regTwo!32867 lt!2348881) (regTwo!32866 lt!2348881)))))))))

(declare-fun b!6254301 () Bool)

(assert (=> b!6254301 (= e!3804795 call!527719)))

(declare-fun b!6254302 () Bool)

(assert (=> b!6254302 (= e!3804793 call!527718)))

(assert (= (and d!1962012 (not res!2581192)) b!6254296))

(assert (= (and b!6254296 c!1132121) b!6254294))

(assert (= (and b!6254296 (not c!1132121)) b!6254300))

(assert (= (and b!6254294 res!2581194) b!6254302))

(assert (= (and b!6254300 c!1132122) b!6254298))

(assert (= (and b!6254300 (not c!1132122)) b!6254297))

(assert (= (and b!6254298 res!2581196) b!6254299))

(assert (= (and b!6254297 (not res!2581195)) b!6254293))

(assert (= (and b!6254293 res!2581193) b!6254301))

(assert (= (or b!6254299 b!6254301) bm!527712))

(assert (= (or b!6254298 b!6254293) bm!527713))

(assert (= (or b!6254302 bm!527713) bm!527714))

(declare-fun m!7077258 () Bool)

(assert (=> b!6254294 m!7077258))

(declare-fun m!7077260 () Bool)

(assert (=> bm!527712 m!7077260))

(declare-fun m!7077262 () Bool)

(assert (=> bm!527714 m!7077262))

(assert (=> bm!527556 d!1962012))

(declare-fun d!1962016 () Bool)

(assert (=> d!1962016 (= (isEmpty!36731 (t!378378 (unfocusZipperList!1598 zl!343))) ((_ is Nil!64706) (t!378378 (unfocusZipperList!1598 zl!343))))))

(assert (=> b!6253277 d!1962016))

(declare-fun d!1962020 () Bool)

(assert (=> d!1962020 (= (isEmpty!36734 (t!378380 s!2326)) ((_ is Nil!64708) (t!378380 s!2326)))))

(assert (=> d!1961652 d!1962020))

(assert (=> d!1961536 d!1962020))

(declare-fun d!1962036 () Bool)

(declare-fun c!1132125 () Bool)

(assert (=> d!1962036 (= c!1132125 ((_ is Nil!64707) lt!2348963))))

(declare-fun e!3804808 () (InoxSet Context!11122))

(assert (=> d!1962036 (= (content!12142 lt!2348963) e!3804808)))

(declare-fun b!6254318 () Bool)

(assert (=> b!6254318 (= e!3804808 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254319 () Bool)

(assert (=> b!6254319 (= e!3804808 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) (h!71155 lt!2348963) true) (content!12142 (t!378379 lt!2348963))))))

(assert (= (and d!1962036 c!1132125) b!6254318))

(assert (= (and d!1962036 (not c!1132125)) b!6254319))

(declare-fun m!7077274 () Bool)

(assert (=> b!6254319 m!7077274))

(declare-fun m!7077276 () Bool)

(assert (=> b!6254319 m!7077276))

(assert (=> b!6253161 d!1962036))

(declare-fun d!1962040 () Bool)

(assert (=> d!1962040 (= (isDefined!12771 lt!2349021) (not (isEmpty!36735 lt!2349021)))))

(declare-fun bs!1557336 () Bool)

(assert (= bs!1557336 d!1962040))

(declare-fun m!7077278 () Bool)

(assert (=> bs!1557336 m!7077278))

(assert (=> b!6253476 d!1962040))

(declare-fun b!6254320 () Bool)

(declare-fun e!3804812 () Bool)

(assert (=> b!6254320 (= e!3804812 (nullable!6170 (regOne!32866 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))))))

(declare-fun b!6254321 () Bool)

(declare-fun e!3804809 () (InoxSet Context!11122))

(declare-fun call!527720 () (InoxSet Context!11122))

(assert (=> b!6254321 (= e!3804809 call!527720)))

(declare-fun b!6254322 () Bool)

(declare-fun e!3804810 () (InoxSet Context!11122))

(declare-fun call!527723 () (InoxSet Context!11122))

(declare-fun call!527724 () (InoxSet Context!11122))

(assert (=> b!6254322 (= e!3804810 ((_ map or) call!527723 call!527724))))

(declare-fun c!1132128 () Bool)

(declare-fun d!1962042 () Bool)

(assert (=> d!1962042 (= c!1132128 (and ((_ is ElementMatch!16177) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (= (c!1131644 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (h!71156 s!2326))))))

(declare-fun e!3804813 () (InoxSet Context!11122))

(assert (=> d!1962042 (= (derivationStepZipperDown!1425 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))) (ite c!1131833 lt!2348859 (Context!11123 call!527560)) (h!71156 s!2326)) e!3804813)))

(declare-fun b!6254323 () Bool)

(assert (=> b!6254323 (= e!3804813 e!3804810)))

(declare-fun c!1132127 () Bool)

(assert (=> b!6254323 (= c!1132127 ((_ is Union!16177) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun c!1132130 () Bool)

(declare-fun c!1132129 () Bool)

(declare-fun call!527721 () List!64830)

(declare-fun bm!527715 () Bool)

(assert (=> bm!527715 (= call!527723 (derivationStepZipperDown!1425 (ite c!1132127 (regOne!32867 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (ite c!1132129 (regTwo!32866 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (ite c!1132130 (regOne!32866 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (reg!16506 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))))) (ite (or c!1132127 c!1132129) (ite c!1131833 lt!2348859 (Context!11123 call!527560)) (Context!11123 call!527721)) (h!71156 s!2326)))))

(declare-fun call!527725 () List!64830)

(declare-fun bm!527716 () Bool)

(assert (=> bm!527716 (= call!527725 ($colon$colon!2044 (exprs!6061 (ite c!1131833 lt!2348859 (Context!11123 call!527560))) (ite (or c!1132129 c!1132130) (regTwo!32866 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))))))

(declare-fun b!6254324 () Bool)

(assert (=> b!6254324 (= c!1132129 e!3804812)))

(declare-fun res!2581197 () Bool)

(assert (=> b!6254324 (=> (not res!2581197) (not e!3804812))))

(assert (=> b!6254324 (= res!2581197 ((_ is Concat!25022) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun e!3804811 () (InoxSet Context!11122))

(assert (=> b!6254324 (= e!3804810 e!3804811)))

(declare-fun b!6254325 () Bool)

(assert (=> b!6254325 (= e!3804811 e!3804809)))

(assert (=> b!6254325 (= c!1132130 ((_ is Concat!25022) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun bm!527717 () Bool)

(assert (=> bm!527717 (= call!527721 call!527725)))

(declare-fun bm!527718 () Bool)

(declare-fun call!527722 () (InoxSet Context!11122))

(assert (=> bm!527718 (= call!527720 call!527722)))

(declare-fun b!6254326 () Bool)

(assert (=> b!6254326 (= e!3804811 ((_ map or) call!527724 call!527722))))

(declare-fun b!6254327 () Bool)

(assert (=> b!6254327 (= e!3804813 (store ((as const (Array Context!11122 Bool)) false) (ite c!1131833 lt!2348859 (Context!11123 call!527560)) true))))

(declare-fun bm!527719 () Bool)

(assert (=> bm!527719 (= call!527724 (derivationStepZipperDown!1425 (ite c!1132127 (regTwo!32867 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))) (regOne!32866 (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))) (ite c!1132127 (ite c!1131833 lt!2348859 (Context!11123 call!527560)) (Context!11123 call!527725)) (h!71156 s!2326)))))

(declare-fun b!6254328 () Bool)

(declare-fun e!3804814 () (InoxSet Context!11122))

(assert (=> b!6254328 (= e!3804814 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254329 () Bool)

(declare-fun c!1132126 () Bool)

(assert (=> b!6254329 (= c!1132126 ((_ is Star!16177) (ite c!1131833 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(assert (=> b!6254329 (= e!3804809 e!3804814)))

(declare-fun bm!527720 () Bool)

(assert (=> bm!527720 (= call!527722 call!527723)))

(declare-fun b!6254330 () Bool)

(assert (=> b!6254330 (= e!3804814 call!527720)))

(assert (= (and d!1962042 c!1132128) b!6254327))

(assert (= (and d!1962042 (not c!1132128)) b!6254323))

(assert (= (and b!6254323 c!1132127) b!6254322))

(assert (= (and b!6254323 (not c!1132127)) b!6254324))

(assert (= (and b!6254324 res!2581197) b!6254320))

(assert (= (and b!6254324 c!1132129) b!6254326))

(assert (= (and b!6254324 (not c!1132129)) b!6254325))

(assert (= (and b!6254325 c!1132130) b!6254321))

(assert (= (and b!6254325 (not c!1132130)) b!6254329))

(assert (= (and b!6254329 c!1132126) b!6254330))

(assert (= (and b!6254329 (not c!1132126)) b!6254328))

(assert (= (or b!6254321 b!6254330) bm!527717))

(assert (= (or b!6254321 b!6254330) bm!527718))

(assert (= (or b!6254326 bm!527717) bm!527716))

(assert (= (or b!6254326 bm!527718) bm!527720))

(assert (= (or b!6254322 b!6254326) bm!527719))

(assert (= (or b!6254322 bm!527720) bm!527715))

(declare-fun m!7077280 () Bool)

(assert (=> bm!527716 m!7077280))

(declare-fun m!7077282 () Bool)

(assert (=> bm!527719 m!7077282))

(declare-fun m!7077284 () Bool)

(assert (=> b!6254327 m!7077284))

(declare-fun m!7077286 () Bool)

(assert (=> bm!527715 m!7077286))

(declare-fun m!7077288 () Bool)

(assert (=> b!6254320 m!7077288))

(assert (=> bm!527554 d!1962042))

(declare-fun bs!1557337 () Bool)

(declare-fun d!1962044 () Bool)

(assert (= bs!1557337 (and d!1962044 b!6253444)))

(declare-fun lambda!342197 () Int)

(assert (=> bs!1557337 (not (= lambda!342197 lambda!342117))))

(declare-fun bs!1557338 () Bool)

(assert (= bs!1557338 (and d!1962044 b!6253446)))

(assert (=> bs!1557338 (not (= lambda!342197 lambda!342118))))

(declare-fun bs!1557339 () Bool)

(assert (= bs!1557339 (and d!1962044 b!6253449)))

(assert (=> bs!1557339 (not (= lambda!342197 lambda!342120))))

(declare-fun bs!1557340 () Bool)

(assert (= bs!1557340 (and d!1962044 b!6253451)))

(assert (=> bs!1557340 (not (= lambda!342197 lambda!342121))))

(declare-fun exists!2513 ((InoxSet Context!11122) Int) Bool)

(assert (=> d!1962044 (= (nullableZipper!1949 lt!2348868) (exists!2513 lt!2348868 lambda!342197))))

(declare-fun bs!1557341 () Bool)

(assert (= bs!1557341 d!1962044))

(declare-fun m!7077290 () Bool)

(assert (=> bs!1557341 m!7077290))

(assert (=> b!6253426 d!1962044))

(assert (=> d!1961572 d!1961568))

(declare-fun d!1962046 () Bool)

(assert (=> d!1962046 (= (flatMap!1682 z!1189 lambda!342043) (dynLambda!25556 lambda!342043 (h!71155 zl!343)))))

(assert (=> d!1962046 true))

(declare-fun _$13!3340 () Unit!158039)

(assert (=> d!1962046 (= (choose!46407 z!1189 (h!71155 zl!343) lambda!342043) _$13!3340)))

(declare-fun b_lambda!237993 () Bool)

(assert (=> (not b_lambda!237993) (not d!1962046)))

(declare-fun bs!1557342 () Bool)

(assert (= bs!1557342 d!1962046))

(assert (=> bs!1557342 m!7075664))

(assert (=> bs!1557342 m!7076228))

(assert (=> d!1961572 d!1962046))

(declare-fun b!6254331 () Bool)

(declare-fun e!3804818 () Bool)

(assert (=> b!6254331 (= e!3804818 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 lt!2348879)))))))

(declare-fun b!6254332 () Bool)

(declare-fun e!3804815 () (InoxSet Context!11122))

(declare-fun call!527726 () (InoxSet Context!11122))

(assert (=> b!6254332 (= e!3804815 call!527726)))

(declare-fun b!6254333 () Bool)

(declare-fun e!3804816 () (InoxSet Context!11122))

(declare-fun call!527729 () (InoxSet Context!11122))

(declare-fun call!527730 () (InoxSet Context!11122))

(assert (=> b!6254333 (= e!3804816 ((_ map or) call!527729 call!527730))))

(declare-fun d!1962048 () Bool)

(declare-fun c!1132135 () Bool)

(assert (=> d!1962048 (= c!1132135 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 lt!2348879))) (= (c!1131644 (h!71154 (exprs!6061 lt!2348879))) (h!71156 s!2326))))))

(declare-fun e!3804819 () (InoxSet Context!11122))

(assert (=> d!1962048 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348879)) (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (h!71156 s!2326)) e!3804819)))

(declare-fun b!6254334 () Bool)

(assert (=> b!6254334 (= e!3804819 e!3804816)))

(declare-fun c!1132134 () Bool)

(assert (=> b!6254334 (= c!1132134 ((_ is Union!16177) (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun c!1132136 () Bool)

(declare-fun bm!527721 () Bool)

(declare-fun c!1132137 () Bool)

(declare-fun call!527727 () List!64830)

(assert (=> bm!527721 (= call!527729 (derivationStepZipperDown!1425 (ite c!1132134 (regOne!32867 (h!71154 (exprs!6061 lt!2348879))) (ite c!1132136 (regTwo!32866 (h!71154 (exprs!6061 lt!2348879))) (ite c!1132137 (regOne!32866 (h!71154 (exprs!6061 lt!2348879))) (reg!16506 (h!71154 (exprs!6061 lt!2348879)))))) (ite (or c!1132134 c!1132136) (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (Context!11123 call!527727)) (h!71156 s!2326)))))

(declare-fun bm!527722 () Bool)

(declare-fun call!527731 () List!64830)

(assert (=> bm!527722 (= call!527731 ($colon$colon!2044 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))) (ite (or c!1132136 c!1132137) (regTwo!32866 (h!71154 (exprs!6061 lt!2348879))) (h!71154 (exprs!6061 lt!2348879)))))))

(declare-fun b!6254335 () Bool)

(assert (=> b!6254335 (= c!1132136 e!3804818)))

(declare-fun res!2581198 () Bool)

(assert (=> b!6254335 (=> (not res!2581198) (not e!3804818))))

(assert (=> b!6254335 (= res!2581198 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun e!3804817 () (InoxSet Context!11122))

(assert (=> b!6254335 (= e!3804816 e!3804817)))

(declare-fun b!6254336 () Bool)

(assert (=> b!6254336 (= e!3804817 e!3804815)))

(assert (=> b!6254336 (= c!1132137 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun bm!527723 () Bool)

(assert (=> bm!527723 (= call!527727 call!527731)))

(declare-fun bm!527724 () Bool)

(declare-fun call!527728 () (InoxSet Context!11122))

(assert (=> bm!527724 (= call!527726 call!527728)))

(declare-fun b!6254337 () Bool)

(assert (=> b!6254337 (= e!3804817 ((_ map or) call!527730 call!527728))))

(declare-fun b!6254338 () Bool)

(assert (=> b!6254338 (= e!3804819 (store ((as const (Array Context!11122 Bool)) false) (Context!11123 (t!378378 (exprs!6061 lt!2348879))) true))))

(declare-fun bm!527725 () Bool)

(assert (=> bm!527725 (= call!527730 (derivationStepZipperDown!1425 (ite c!1132134 (regTwo!32867 (h!71154 (exprs!6061 lt!2348879))) (regOne!32866 (h!71154 (exprs!6061 lt!2348879)))) (ite c!1132134 (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (Context!11123 call!527731)) (h!71156 s!2326)))))

(declare-fun b!6254339 () Bool)

(declare-fun e!3804820 () (InoxSet Context!11122))

(assert (=> b!6254339 (= e!3804820 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254340 () Bool)

(declare-fun c!1132133 () Bool)

(assert (=> b!6254340 (= c!1132133 ((_ is Star!16177) (h!71154 (exprs!6061 lt!2348879))))))

(assert (=> b!6254340 (= e!3804815 e!3804820)))

(declare-fun bm!527726 () Bool)

(assert (=> bm!527726 (= call!527728 call!527729)))

(declare-fun b!6254341 () Bool)

(assert (=> b!6254341 (= e!3804820 call!527726)))

(assert (= (and d!1962048 c!1132135) b!6254338))

(assert (= (and d!1962048 (not c!1132135)) b!6254334))

(assert (= (and b!6254334 c!1132134) b!6254333))

(assert (= (and b!6254334 (not c!1132134)) b!6254335))

(assert (= (and b!6254335 res!2581198) b!6254331))

(assert (= (and b!6254335 c!1132136) b!6254337))

(assert (= (and b!6254335 (not c!1132136)) b!6254336))

(assert (= (and b!6254336 c!1132137) b!6254332))

(assert (= (and b!6254336 (not c!1132137)) b!6254340))

(assert (= (and b!6254340 c!1132133) b!6254341))

(assert (= (and b!6254340 (not c!1132133)) b!6254339))

(assert (= (or b!6254332 b!6254341) bm!527723))

(assert (= (or b!6254332 b!6254341) bm!527724))

(assert (= (or b!6254337 bm!527723) bm!527722))

(assert (= (or b!6254337 bm!527724) bm!527726))

(assert (= (or b!6254333 b!6254337) bm!527725))

(assert (= (or b!6254333 bm!527726) bm!527721))

(declare-fun m!7077292 () Bool)

(assert (=> bm!527722 m!7077292))

(declare-fun m!7077294 () Bool)

(assert (=> bm!527725 m!7077294))

(declare-fun m!7077296 () Bool)

(assert (=> b!6254338 m!7077296))

(declare-fun m!7077298 () Bool)

(assert (=> bm!527721 m!7077298))

(declare-fun m!7077300 () Bool)

(assert (=> b!6254331 m!7077300))

(assert (=> bm!527569 d!1962048))

(declare-fun bs!1557343 () Bool)

(declare-fun d!1962050 () Bool)

(assert (= bs!1557343 (and d!1962050 b!6253451)))

(declare-fun lambda!342200 () Int)

(assert (=> bs!1557343 (not (= lambda!342200 lambda!342121))))

(declare-fun bs!1557344 () Bool)

(assert (= bs!1557344 (and d!1962050 b!6253444)))

(assert (=> bs!1557344 (not (= lambda!342200 lambda!342117))))

(declare-fun bs!1557345 () Bool)

(assert (= bs!1557345 (and d!1962050 d!1962044)))

(assert (=> bs!1557345 (not (= lambda!342200 lambda!342197))))

(declare-fun bs!1557346 () Bool)

(assert (= bs!1557346 (and d!1962050 b!6253449)))

(assert (=> bs!1557346 (not (= lambda!342200 lambda!342120))))

(declare-fun bs!1557347 () Bool)

(assert (= bs!1557347 (and d!1962050 b!6253446)))

(assert (=> bs!1557347 (not (= lambda!342200 lambda!342118))))

(assert (=> d!1962050 true))

(assert (=> d!1962050 true))

(declare-fun order!27427 () Int)

(declare-fun order!27425 () Int)

(declare-fun dynLambda!25561 (Int Int) Int)

(declare-fun dynLambda!25562 (Int Int) Int)

(assert (=> d!1962050 (< (dynLambda!25561 order!27425 lambda!342119) (dynLambda!25562 order!27427 lambda!342200))))

(assert (=> d!1962050 (forall!15297 (t!378379 zl!343) lambda!342200)))

(declare-fun lt!2349093 () Unit!158039)

(declare-fun choose!46413 (List!64831 Int Int Int) Unit!158039)

(assert (=> d!1962050 (= lt!2349093 (choose!46413 (t!378379 zl!343) lt!2349010 (zipperDepth!302 (t!378379 zl!343)) lambda!342119))))

(assert (=> d!1962050 (>= lt!2349010 (zipperDepth!302 (t!378379 zl!343)))))

(assert (=> d!1962050 (= (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 zl!343) lt!2349010 (zipperDepth!302 (t!378379 zl!343)) lambda!342119) lt!2349093)))

(declare-fun bs!1557348 () Bool)

(assert (= bs!1557348 d!1962050))

(declare-fun m!7077302 () Bool)

(assert (=> bs!1557348 m!7077302))

(assert (=> bs!1557348 m!7076400))

(declare-fun m!7077304 () Bool)

(assert (=> bs!1557348 m!7077304))

(assert (=> b!6253449 d!1962050))

(declare-fun d!1962052 () Bool)

(declare-fun res!2581203 () Bool)

(declare-fun e!3804825 () Bool)

(assert (=> d!1962052 (=> res!2581203 e!3804825)))

(assert (=> d!1962052 (= res!2581203 ((_ is Nil!64707) (t!378379 zl!343)))))

(assert (=> d!1962052 (= (forall!15297 (t!378379 zl!343) lambda!342120) e!3804825)))

(declare-fun b!6254349 () Bool)

(declare-fun e!3804826 () Bool)

(assert (=> b!6254349 (= e!3804825 e!3804826)))

(declare-fun res!2581204 () Bool)

(assert (=> b!6254349 (=> (not res!2581204) (not e!3804826))))

(declare-fun dynLambda!25563 (Int Context!11122) Bool)

(assert (=> b!6254349 (= res!2581204 (dynLambda!25563 lambda!342120 (h!71155 (t!378379 zl!343))))))

(declare-fun b!6254350 () Bool)

(assert (=> b!6254350 (= e!3804826 (forall!15297 (t!378379 (t!378379 zl!343)) lambda!342120))))

(assert (= (and d!1962052 (not res!2581203)) b!6254349))

(assert (= (and b!6254349 res!2581204) b!6254350))

(declare-fun b_lambda!237995 () Bool)

(assert (=> (not b_lambda!237995) (not b!6254349)))

(declare-fun m!7077306 () Bool)

(assert (=> b!6254349 m!7077306))

(declare-fun m!7077308 () Bool)

(assert (=> b!6254350 m!7077308))

(assert (=> b!6253449 d!1962052))

(declare-fun bs!1557349 () Bool)

(declare-fun b!6254357 () Bool)

(assert (= bs!1557349 (and b!6254357 d!1961580)))

(declare-fun lambda!342205 () Int)

(assert (=> bs!1557349 (not (= lambda!342205 lambda!342094))))

(declare-fun bs!1557350 () Bool)

(assert (= bs!1557350 (and b!6254357 d!1961604)))

(assert (=> bs!1557350 (not (= lambda!342205 lambda!342109))))

(declare-fun bs!1557351 () Bool)

(assert (= bs!1557351 (and b!6254357 d!1961588)))

(assert (=> bs!1557351 (not (= lambda!342205 lambda!342100))))

(declare-fun bs!1557352 () Bool)

(assert (= bs!1557352 (and b!6254357 d!1961638)))

(assert (=> bs!1557352 (not (= lambda!342205 lambda!342123))))

(declare-fun bs!1557353 () Bool)

(assert (= bs!1557353 (and b!6254357 d!1961582)))

(assert (=> bs!1557353 (not (= lambda!342205 lambda!342097))))

(declare-fun bs!1557354 () Bool)

(assert (= bs!1557354 (and b!6254357 d!1961654)))

(assert (=> bs!1557354 (not (= lambda!342205 lambda!342133))))

(assert (=> b!6254357 true))

(declare-fun bs!1557355 () Bool)

(declare-fun b!6254359 () Bool)

(assert (= bs!1557355 (and b!6254359 d!1961580)))

(declare-fun lambda!342206 () Int)

(assert (=> bs!1557355 (not (= lambda!342206 lambda!342094))))

(declare-fun bs!1557356 () Bool)

(assert (= bs!1557356 (and b!6254359 d!1961604)))

(assert (=> bs!1557356 (not (= lambda!342206 lambda!342109))))

(declare-fun bs!1557357 () Bool)

(assert (= bs!1557357 (and b!6254359 d!1961588)))

(assert (=> bs!1557357 (not (= lambda!342206 lambda!342100))))

(declare-fun bs!1557358 () Bool)

(assert (= bs!1557358 (and b!6254359 d!1961638)))

(assert (=> bs!1557358 (not (= lambda!342206 lambda!342123))))

(declare-fun bs!1557359 () Bool)

(assert (= bs!1557359 (and b!6254359 d!1961582)))

(assert (=> bs!1557359 (not (= lambda!342206 lambda!342097))))

(declare-fun bs!1557360 () Bool)

(assert (= bs!1557360 (and b!6254359 b!6254357)))

(declare-fun lt!2349105 () Int)

(declare-fun lt!2349102 () Int)

(assert (=> bs!1557360 (= (= lt!2349102 lt!2349105) (= lambda!342206 lambda!342205))))

(declare-fun bs!1557361 () Bool)

(assert (= bs!1557361 (and b!6254359 d!1961654)))

(assert (=> bs!1557361 (not (= lambda!342206 lambda!342133))))

(assert (=> b!6254359 true))

(declare-fun d!1962054 () Bool)

(declare-fun e!3804832 () Bool)

(assert (=> d!1962054 e!3804832))

(declare-fun res!2581207 () Bool)

(assert (=> d!1962054 (=> (not res!2581207) (not e!3804832))))

(assert (=> d!1962054 (= res!2581207 (>= lt!2349102 0))))

(declare-fun e!3804831 () Int)

(assert (=> d!1962054 (= lt!2349102 e!3804831)))

(declare-fun c!1132143 () Bool)

(assert (=> d!1962054 (= c!1132143 ((_ is Cons!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1962054 (= (contextDepth!197 (h!71155 zl!343)) lt!2349102)))

(assert (=> b!6254357 (= e!3804831 lt!2349105)))

(declare-fun regexDepth!302 (Regex!16177) Int)

(assert (=> b!6254357 (= lt!2349105 (maxBigInt!0 (regexDepth!302 (h!71154 (exprs!6061 (h!71155 zl!343)))) (contextDepth!197 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun lt!2349104 () Unit!158039)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!92 (List!64830 Int Int) Unit!158039)

(assert (=> b!6254357 (= lt!2349104 (lemmaForallRegexDepthBiggerThanTransitive!92 (t!378378 (exprs!6061 (h!71155 zl!343))) lt!2349105 (contextDepth!197 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(assert (=> b!6254357 (forall!15296 (t!378378 (exprs!6061 (h!71155 zl!343))) lambda!342205)))

(declare-fun lt!2349103 () Unit!158039)

(assert (=> b!6254357 (= lt!2349103 lt!2349104)))

(declare-fun b!6254358 () Bool)

(assert (=> b!6254358 (= e!3804831 0)))

(assert (=> b!6254359 (= e!3804832 (forall!15296 (exprs!6061 (h!71155 zl!343)) lambda!342206))))

(assert (= (and d!1962054 c!1132143) b!6254357))

(assert (= (and d!1962054 (not c!1132143)) b!6254358))

(assert (= (and d!1962054 res!2581207) b!6254359))

(declare-fun m!7077310 () Bool)

(assert (=> b!6254357 m!7077310))

(declare-fun m!7077312 () Bool)

(assert (=> b!6254357 m!7077312))

(declare-fun m!7077314 () Bool)

(assert (=> b!6254357 m!7077314))

(assert (=> b!6254357 m!7077314))

(assert (=> b!6254357 m!7077310))

(declare-fun m!7077316 () Bool)

(assert (=> b!6254357 m!7077316))

(declare-fun m!7077318 () Bool)

(assert (=> b!6254357 m!7077318))

(assert (=> b!6254357 m!7077310))

(declare-fun m!7077320 () Bool)

(assert (=> b!6254359 m!7077320))

(assert (=> b!6253449 d!1962054))

(declare-fun bs!1557362 () Bool)

(declare-fun b!6254362 () Bool)

(assert (= bs!1557362 (and b!6254362 b!6253444)))

(declare-fun lambda!342207 () Int)

(assert (=> bs!1557362 (= lambda!342207 lambda!342116)))

(declare-fun bs!1557363 () Bool)

(assert (= bs!1557363 (and b!6254362 b!6253449)))

(assert (=> bs!1557363 (= lambda!342207 lambda!342119)))

(declare-fun bs!1557364 () Bool)

(assert (= bs!1557364 (and b!6254362 d!1962050)))

(declare-fun lambda!342208 () Int)

(assert (=> bs!1557364 (not (= lambda!342208 lambda!342200))))

(declare-fun bs!1557365 () Bool)

(assert (= bs!1557365 (and b!6254362 b!6253451)))

(declare-fun lt!2349108 () Int)

(assert (=> bs!1557365 (= (= lt!2349108 lt!2349008) (= lambda!342208 lambda!342121))))

(assert (=> bs!1557362 (= (= lt!2349108 lt!2349006) (= lambda!342208 lambda!342117))))

(declare-fun bs!1557366 () Bool)

(assert (= bs!1557366 (and b!6254362 d!1962044)))

(assert (=> bs!1557366 (not (= lambda!342208 lambda!342197))))

(assert (=> bs!1557363 (= (= lt!2349108 lt!2349010) (= lambda!342208 lambda!342120))))

(declare-fun bs!1557367 () Bool)

(assert (= bs!1557367 (and b!6254362 b!6253446)))

(assert (=> bs!1557367 (= (= lt!2349108 lt!2349004) (= lambda!342208 lambda!342118))))

(assert (=> b!6254362 true))

(declare-fun bs!1557368 () Bool)

(declare-fun b!6254364 () Bool)

(assert (= bs!1557368 (and b!6254364 b!6253451)))

(declare-fun lt!2349106 () Int)

(declare-fun lambda!342209 () Int)

(assert (=> bs!1557368 (= (= lt!2349106 lt!2349008) (= lambda!342209 lambda!342121))))

(declare-fun bs!1557369 () Bool)

(assert (= bs!1557369 (and b!6254364 b!6253444)))

(assert (=> bs!1557369 (= (= lt!2349106 lt!2349006) (= lambda!342209 lambda!342117))))

(declare-fun bs!1557370 () Bool)

(assert (= bs!1557370 (and b!6254364 d!1962044)))

(assert (=> bs!1557370 (not (= lambda!342209 lambda!342197))))

(declare-fun bs!1557371 () Bool)

(assert (= bs!1557371 (and b!6254364 d!1962050)))

(assert (=> bs!1557371 (not (= lambda!342209 lambda!342200))))

(declare-fun bs!1557372 () Bool)

(assert (= bs!1557372 (and b!6254364 b!6254362)))

(assert (=> bs!1557372 (= (= lt!2349106 lt!2349108) (= lambda!342209 lambda!342208))))

(declare-fun bs!1557373 () Bool)

(assert (= bs!1557373 (and b!6254364 b!6253449)))

(assert (=> bs!1557373 (= (= lt!2349106 lt!2349010) (= lambda!342209 lambda!342120))))

(declare-fun bs!1557374 () Bool)

(assert (= bs!1557374 (and b!6254364 b!6253446)))

(assert (=> bs!1557374 (= (= lt!2349106 lt!2349004) (= lambda!342209 lambda!342118))))

(assert (=> b!6254364 true))

(declare-fun d!1962056 () Bool)

(declare-fun e!3804833 () Bool)

(assert (=> d!1962056 e!3804833))

(declare-fun res!2581208 () Bool)

(assert (=> d!1962056 (=> (not res!2581208) (not e!3804833))))

(assert (=> d!1962056 (= res!2581208 (>= lt!2349106 0))))

(declare-fun e!3804834 () Int)

(assert (=> d!1962056 (= lt!2349106 e!3804834)))

(declare-fun c!1132144 () Bool)

(assert (=> d!1962056 (= c!1132144 ((_ is Cons!64707) (t!378379 zl!343)))))

(assert (=> d!1962056 (= (zipperDepth!302 (t!378379 zl!343)) lt!2349106)))

(assert (=> b!6254362 (= e!3804834 lt!2349108)))

(assert (=> b!6254362 (= lt!2349108 (maxBigInt!0 (contextDepth!197 (h!71155 (t!378379 zl!343))) (zipperDepth!302 (t!378379 (t!378379 zl!343)))))))

(declare-fun lt!2349109 () Unit!158039)

(assert (=> b!6254362 (= lt!2349109 (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 (t!378379 zl!343)) lt!2349108 (zipperDepth!302 (t!378379 (t!378379 zl!343))) lambda!342207))))

(assert (=> b!6254362 (forall!15297 (t!378379 (t!378379 zl!343)) lambda!342208)))

(declare-fun lt!2349107 () Unit!158039)

(assert (=> b!6254362 (= lt!2349107 lt!2349109)))

(declare-fun b!6254363 () Bool)

(assert (=> b!6254363 (= e!3804834 0)))

(assert (=> b!6254364 (= e!3804833 (forall!15297 (t!378379 zl!343) lambda!342209))))

(assert (= (and d!1962056 c!1132144) b!6254362))

(assert (= (and d!1962056 (not c!1132144)) b!6254363))

(assert (= (and d!1962056 res!2581208) b!6254364))

(declare-fun m!7077322 () Bool)

(assert (=> b!6254362 m!7077322))

(declare-fun m!7077324 () Bool)

(assert (=> b!6254362 m!7077324))

(declare-fun m!7077326 () Bool)

(assert (=> b!6254362 m!7077326))

(assert (=> b!6254362 m!7077322))

(declare-fun m!7077328 () Bool)

(assert (=> b!6254362 m!7077328))

(assert (=> b!6254362 m!7077326))

(assert (=> b!6254362 m!7077322))

(declare-fun m!7077330 () Bool)

(assert (=> b!6254362 m!7077330))

(declare-fun m!7077332 () Bool)

(assert (=> b!6254364 m!7077332))

(assert (=> b!6253449 d!1962056))

(declare-fun d!1962058 () Bool)

(assert (=> d!1962058 (= (maxBigInt!0 (contextDepth!197 (h!71155 zl!343)) (zipperDepth!302 (t!378379 zl!343))) (ite (>= (contextDepth!197 (h!71155 zl!343)) (zipperDepth!302 (t!378379 zl!343))) (contextDepth!197 (h!71155 zl!343)) (zipperDepth!302 (t!378379 zl!343))))))

(assert (=> b!6253449 d!1962058))

(declare-fun d!1962060 () Bool)

(declare-fun res!2581213 () Bool)

(declare-fun e!3804839 () Bool)

(assert (=> d!1962060 (=> res!2581213 e!3804839)))

(assert (=> d!1962060 (= res!2581213 ((_ is Nil!64707) lt!2348963))))

(assert (=> d!1962060 (= (noDuplicate!2013 lt!2348963) e!3804839)))

(declare-fun b!6254370 () Bool)

(declare-fun e!3804840 () Bool)

(assert (=> b!6254370 (= e!3804839 e!3804840)))

(declare-fun res!2581214 () Bool)

(assert (=> b!6254370 (=> (not res!2581214) (not e!3804840))))

(declare-fun contains!20113 (List!64831 Context!11122) Bool)

(assert (=> b!6254370 (= res!2581214 (not (contains!20113 (t!378379 lt!2348963) (h!71155 lt!2348963))))))

(declare-fun b!6254371 () Bool)

(assert (=> b!6254371 (= e!3804840 (noDuplicate!2013 (t!378379 lt!2348963)))))

(assert (= (and d!1962060 (not res!2581213)) b!6254370))

(assert (= (and b!6254370 res!2581214) b!6254371))

(declare-fun m!7077334 () Bool)

(assert (=> b!6254370 m!7077334))

(declare-fun m!7077336 () Bool)

(assert (=> b!6254371 m!7077336))

(assert (=> d!1961546 d!1962060))

(declare-fun d!1962062 () Bool)

(declare-fun e!3804849 () Bool)

(assert (=> d!1962062 e!3804849))

(declare-fun res!2581220 () Bool)

(assert (=> d!1962062 (=> (not res!2581220) (not e!3804849))))

(declare-fun res!2581219 () List!64831)

(assert (=> d!1962062 (= res!2581220 (noDuplicate!2013 res!2581219))))

(declare-fun e!3804847 () Bool)

(assert (=> d!1962062 e!3804847))

(assert (=> d!1962062 (= (choose!46404 lt!2348857) res!2581219)))

(declare-fun b!6254379 () Bool)

(declare-fun e!3804848 () Bool)

(declare-fun tp!1745134 () Bool)

(assert (=> b!6254379 (= e!3804848 tp!1745134)))

(declare-fun b!6254378 () Bool)

(declare-fun tp!1745133 () Bool)

(assert (=> b!6254378 (= e!3804847 (and (inv!83689 (h!71155 res!2581219)) e!3804848 tp!1745133))))

(declare-fun b!6254380 () Bool)

(assert (=> b!6254380 (= e!3804849 (= (content!12142 res!2581219) lt!2348857))))

(assert (= b!6254378 b!6254379))

(assert (= (and d!1962062 ((_ is Cons!64707) res!2581219)) b!6254378))

(assert (= (and d!1962062 res!2581220) b!6254380))

(declare-fun m!7077338 () Bool)

(assert (=> d!1962062 m!7077338))

(declare-fun m!7077340 () Bool)

(assert (=> b!6254378 m!7077340))

(declare-fun m!7077342 () Bool)

(assert (=> b!6254380 m!7077342))

(assert (=> d!1961546 d!1962062))

(declare-fun bs!1557375 () Bool)

(declare-fun d!1962064 () Bool)

(assert (= bs!1557375 (and d!1962064 d!1961580)))

(declare-fun lambda!342210 () Int)

(assert (=> bs!1557375 (= lambda!342210 lambda!342094)))

(declare-fun bs!1557376 () Bool)

(assert (= bs!1557376 (and d!1962064 d!1961604)))

(assert (=> bs!1557376 (= lambda!342210 lambda!342109)))

(declare-fun bs!1557377 () Bool)

(assert (= bs!1557377 (and d!1962064 d!1961588)))

(assert (=> bs!1557377 (= lambda!342210 lambda!342100)))

(declare-fun bs!1557378 () Bool)

(assert (= bs!1557378 (and d!1962064 d!1961638)))

(assert (=> bs!1557378 (= lambda!342210 lambda!342123)))

(declare-fun bs!1557379 () Bool)

(assert (= bs!1557379 (and d!1962064 b!6254359)))

(assert (=> bs!1557379 (not (= lambda!342210 lambda!342206))))

(declare-fun bs!1557380 () Bool)

(assert (= bs!1557380 (and d!1962064 d!1961582)))

(assert (=> bs!1557380 (= lambda!342210 lambda!342097)))

(declare-fun bs!1557381 () Bool)

(assert (= bs!1557381 (and d!1962064 b!6254357)))

(assert (=> bs!1557381 (not (= lambda!342210 lambda!342205))))

(declare-fun bs!1557382 () Bool)

(assert (= bs!1557382 (and d!1962064 d!1961654)))

(assert (=> bs!1557382 (= lambda!342210 lambda!342133)))

(declare-fun b!6254382 () Bool)

(declare-fun e!3804852 () Regex!16177)

(assert (=> b!6254382 (= e!3804852 (Concat!25022 (h!71154 (t!378378 lt!2348860)) (generalisedConcat!1774 (t!378378 (t!378378 lt!2348860)))))))

(declare-fun b!6254383 () Bool)

(declare-fun e!3804854 () Regex!16177)

(assert (=> b!6254383 (= e!3804854 e!3804852)))

(declare-fun c!1132145 () Bool)

(assert (=> b!6254383 (= c!1132145 ((_ is Cons!64706) (t!378378 lt!2348860)))))

(declare-fun b!6254384 () Bool)

(declare-fun e!3804853 () Bool)

(declare-fun lt!2349110 () Regex!16177)

(assert (=> b!6254384 (= e!3804853 (= lt!2349110 (head!12859 (t!378378 lt!2348860))))))

(declare-fun b!6254385 () Bool)

(declare-fun e!3804855 () Bool)

(assert (=> b!6254385 (= e!3804855 e!3804853)))

(declare-fun c!1132148 () Bool)

(assert (=> b!6254385 (= c!1132148 (isEmpty!36731 (tail!11944 (t!378378 lt!2348860))))))

(declare-fun b!6254386 () Bool)

(assert (=> b!6254386 (= e!3804852 EmptyExpr!16177)))

(declare-fun b!6254387 () Bool)

(assert (=> b!6254387 (= e!3804853 (isConcat!1108 lt!2349110))))

(declare-fun b!6254388 () Bool)

(assert (=> b!6254388 (= e!3804855 (isEmptyExpr!1585 lt!2349110))))

(declare-fun b!6254389 () Bool)

(assert (=> b!6254389 (= e!3804854 (h!71154 (t!378378 lt!2348860)))))

(declare-fun b!6254390 () Bool)

(declare-fun e!3804851 () Bool)

(assert (=> b!6254390 (= e!3804851 e!3804855)))

(declare-fun c!1132147 () Bool)

(assert (=> b!6254390 (= c!1132147 (isEmpty!36731 (t!378378 lt!2348860)))))

(declare-fun b!6254381 () Bool)

(declare-fun e!3804850 () Bool)

(assert (=> b!6254381 (= e!3804850 (isEmpty!36731 (t!378378 (t!378378 lt!2348860))))))

(assert (=> d!1962064 e!3804851))

(declare-fun res!2581222 () Bool)

(assert (=> d!1962064 (=> (not res!2581222) (not e!3804851))))

(assert (=> d!1962064 (= res!2581222 (validRegex!7913 lt!2349110))))

(assert (=> d!1962064 (= lt!2349110 e!3804854)))

(declare-fun c!1132146 () Bool)

(assert (=> d!1962064 (= c!1132146 e!3804850)))

(declare-fun res!2581221 () Bool)

(assert (=> d!1962064 (=> (not res!2581221) (not e!3804850))))

(assert (=> d!1962064 (= res!2581221 ((_ is Cons!64706) (t!378378 lt!2348860)))))

(assert (=> d!1962064 (forall!15296 (t!378378 lt!2348860) lambda!342210)))

(assert (=> d!1962064 (= (generalisedConcat!1774 (t!378378 lt!2348860)) lt!2349110)))

(assert (= (and d!1962064 res!2581221) b!6254381))

(assert (= (and d!1962064 c!1132146) b!6254389))

(assert (= (and d!1962064 (not c!1132146)) b!6254383))

(assert (= (and b!6254383 c!1132145) b!6254382))

(assert (= (and b!6254383 (not c!1132145)) b!6254386))

(assert (= (and d!1962064 res!2581222) b!6254390))

(assert (= (and b!6254390 c!1132147) b!6254388))

(assert (= (and b!6254390 (not c!1132147)) b!6254385))

(assert (= (and b!6254385 c!1132148) b!6254384))

(assert (= (and b!6254385 (not c!1132148)) b!6254387))

(assert (=> b!6254390 m!7076298))

(declare-fun m!7077344 () Bool)

(assert (=> b!6254385 m!7077344))

(assert (=> b!6254385 m!7077344))

(declare-fun m!7077346 () Bool)

(assert (=> b!6254385 m!7077346))

(declare-fun m!7077348 () Bool)

(assert (=> d!1962064 m!7077348))

(declare-fun m!7077350 () Bool)

(assert (=> d!1962064 m!7077350))

(declare-fun m!7077352 () Bool)

(assert (=> b!6254381 m!7077352))

(declare-fun m!7077354 () Bool)

(assert (=> b!6254387 m!7077354))

(declare-fun m!7077356 () Bool)

(assert (=> b!6254382 m!7077356))

(declare-fun m!7077358 () Bool)

(assert (=> b!6254388 m!7077358))

(declare-fun m!7077360 () Bool)

(assert (=> b!6254384 m!7077360))

(assert (=> b!6253319 d!1962064))

(declare-fun d!1962066 () Bool)

(assert (=> d!1962066 (= (isEmpty!36734 (tail!11943 s!2326)) ((_ is Nil!64708) (tail!11943 s!2326)))))

(assert (=> b!6253404 d!1962066))

(declare-fun d!1962068 () Bool)

(assert (=> d!1962068 (= (tail!11943 s!2326) (t!378380 s!2326))))

(assert (=> b!6253404 d!1962068))

(declare-fun d!1962070 () Bool)

(assert (=> d!1962070 (= ($colon$colon!2044 (exprs!6061 lt!2348878) (ite (or c!1131815 c!1131816) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71154 (exprs!6061 (h!71155 zl!343))))) (Cons!64706 (ite (or c!1131815 c!1131816) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71154 (exprs!6061 (h!71155 zl!343)))) (exprs!6061 lt!2348878)))))

(assert (=> bm!527534 d!1962070))

(assert (=> d!1961548 d!1961552))

(assert (=> d!1961548 d!1961550))

(declare-fun d!1962072 () Bool)

(declare-fun e!3804858 () Bool)

(assert (=> d!1962072 (= (matchZipper!2189 ((_ map or) lt!2348871 lt!2348858) (t!378380 s!2326)) e!3804858)))

(declare-fun res!2581225 () Bool)

(assert (=> d!1962072 (=> res!2581225 e!3804858)))

(assert (=> d!1962072 (= res!2581225 (matchZipper!2189 lt!2348871 (t!378380 s!2326)))))

(assert (=> d!1962072 true))

(declare-fun _$48!1982 () Unit!158039)

(assert (=> d!1962072 (= (choose!46405 lt!2348871 lt!2348858 (t!378380 s!2326)) _$48!1982)))

(declare-fun b!6254393 () Bool)

(assert (=> b!6254393 (= e!3804858 (matchZipper!2189 lt!2348858 (t!378380 s!2326)))))

(assert (= (and d!1962072 (not res!2581225)) b!6254393))

(assert (=> d!1962072 m!7075758))

(assert (=> d!1962072 m!7075748))

(assert (=> b!6254393 m!7075760))

(assert (=> d!1961548 d!1962072))

(declare-fun d!1962074 () Bool)

(declare-fun c!1132149 () Bool)

(assert (=> d!1962074 (= c!1132149 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3804859 () Bool)

(assert (=> d!1962074 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348871 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3804859)))

(declare-fun b!6254394 () Bool)

(assert (=> b!6254394 (= e!3804859 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348871 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254395 () Bool)

(assert (=> b!6254395 (= e!3804859 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348871 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962074 c!1132149) b!6254394))

(assert (= (and d!1962074 (not c!1132149)) b!6254395))

(assert (=> d!1962074 m!7076144))

(declare-fun m!7077362 () Bool)

(assert (=> d!1962074 m!7077362))

(assert (=> b!6254394 m!7076178))

(declare-fun m!7077364 () Bool)

(assert (=> b!6254394 m!7077364))

(assert (=> b!6254395 m!7076144))

(declare-fun m!7077366 () Bool)

(assert (=> b!6254395 m!7077366))

(assert (=> b!6254395 m!7076178))

(assert (=> b!6254395 m!7077366))

(declare-fun m!7077368 () Bool)

(assert (=> b!6254395 m!7077368))

(assert (=> b!6254395 m!7076144))

(declare-fun m!7077370 () Bool)

(assert (=> b!6254395 m!7077370))

(assert (=> b!6254395 m!7077368))

(assert (=> b!6254395 m!7077370))

(declare-fun m!7077372 () Bool)

(assert (=> b!6254395 m!7077372))

(assert (=> b!6253166 d!1962074))

(declare-fun bs!1557383 () Bool)

(declare-fun d!1962076 () Bool)

(assert (= bs!1557383 (and d!1962076 b!6252643)))

(declare-fun lambda!342211 () Int)

(assert (=> bs!1557383 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342211 lambda!342043))))

(declare-fun bs!1557384 () Bool)

(assert (= bs!1557384 (and d!1962076 d!1961556)))

(assert (=> bs!1557384 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342211 lambda!342091))))

(declare-fun bs!1557385 () Bool)

(assert (= bs!1557385 (and d!1962076 d!1961632)))

(assert (=> bs!1557385 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342211 lambda!342122))))

(assert (=> d!1962076 true))

(assert (=> d!1962076 (= (derivationStepZipper!2143 lt!2348871 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348871 lambda!342211))))

(declare-fun bs!1557386 () Bool)

(assert (= bs!1557386 d!1962076))

(declare-fun m!7077374 () Bool)

(assert (=> bs!1557386 m!7077374))

(assert (=> b!6253166 d!1962076))

(declare-fun d!1962078 () Bool)

(assert (=> d!1962078 (= (head!12858 (t!378380 s!2326)) (h!71156 (t!378380 s!2326)))))

(assert (=> b!6253166 d!1962078))

(declare-fun d!1962080 () Bool)

(assert (=> d!1962080 (= (tail!11943 (t!378380 s!2326)) (t!378380 (t!378380 s!2326)))))

(assert (=> b!6253166 d!1962080))

(declare-fun d!1962082 () Bool)

(assert (=> d!1962082 (= (isEmptyExpr!1585 lt!2349028) ((_ is EmptyExpr!16177) lt!2349028))))

(assert (=> b!6253505 d!1962082))

(declare-fun b!6254396 () Bool)

(declare-fun call!527732 () (InoxSet Context!11122))

(declare-fun e!3804862 () (InoxSet Context!11122))

(assert (=> b!6254396 (= e!3804862 ((_ map or) call!527732 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))))) (h!71156 s!2326))))))

(declare-fun b!6254397 () Bool)

(declare-fun e!3804861 () (InoxSet Context!11122))

(assert (=> b!6254397 (= e!3804862 e!3804861)))

(declare-fun c!1132150 () Bool)

(assert (=> b!6254397 (= c!1132150 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879))))))))

(declare-fun b!6254398 () Bool)

(declare-fun e!3804860 () Bool)

(assert (=> b!6254398 (= e!3804860 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))))))))

(declare-fun b!6254399 () Bool)

(assert (=> b!6254399 (= e!3804861 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1962084 () Bool)

(declare-fun c!1132151 () Bool)

(assert (=> d!1962084 (= c!1132151 e!3804860)))

(declare-fun res!2581226 () Bool)

(assert (=> d!1962084 (=> (not res!2581226) (not e!3804860))))

(assert (=> d!1962084 (= res!2581226 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879))))))))

(assert (=> d!1962084 (= (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348879))) (h!71156 s!2326)) e!3804862)))

(declare-fun b!6254400 () Bool)

(assert (=> b!6254400 (= e!3804861 call!527732)))

(declare-fun bm!527727 () Bool)

(assert (=> bm!527727 (= call!527732 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))))) (h!71156 s!2326)))))

(assert (= (and d!1962084 res!2581226) b!6254398))

(assert (= (and d!1962084 c!1132151) b!6254396))

(assert (= (and d!1962084 (not c!1132151)) b!6254397))

(assert (= (and b!6254397 c!1132150) b!6254400))

(assert (= (and b!6254397 (not c!1132150)) b!6254399))

(assert (= (or b!6254396 b!6254400) bm!527727))

(declare-fun m!7077376 () Bool)

(assert (=> b!6254396 m!7077376))

(declare-fun m!7077378 () Bool)

(assert (=> b!6254398 m!7077378))

(declare-fun m!7077380 () Bool)

(assert (=> bm!527727 m!7077380))

(assert (=> b!6253452 d!1962084))

(declare-fun b!6254401 () Bool)

(declare-fun e!3804866 () Bool)

(declare-fun e!3804865 () Bool)

(assert (=> b!6254401 (= e!3804866 e!3804865)))

(declare-fun res!2581228 () Bool)

(assert (=> b!6254401 (=> (not res!2581228) (not e!3804865))))

(declare-fun call!527733 () Bool)

(assert (=> b!6254401 (= res!2581228 call!527733)))

(declare-fun b!6254402 () Bool)

(declare-fun e!3804869 () Bool)

(declare-fun e!3804863 () Bool)

(assert (=> b!6254402 (= e!3804869 e!3804863)))

(declare-fun res!2581229 () Bool)

(assert (=> b!6254402 (= res!2581229 (not (nullable!6170 (reg!16506 lt!2349028))))))

(assert (=> b!6254402 (=> (not res!2581229) (not e!3804863))))

(declare-fun b!6254403 () Bool)

(declare-fun e!3804867 () Bool)

(assert (=> b!6254403 (= e!3804867 e!3804869)))

(declare-fun c!1132152 () Bool)

(assert (=> b!6254403 (= c!1132152 ((_ is Star!16177) lt!2349028))))

(declare-fun d!1962086 () Bool)

(declare-fun res!2581227 () Bool)

(assert (=> d!1962086 (=> res!2581227 e!3804867)))

(assert (=> d!1962086 (= res!2581227 ((_ is ElementMatch!16177) lt!2349028))))

(assert (=> d!1962086 (= (validRegex!7913 lt!2349028) e!3804867)))

(declare-fun bm!527728 () Bool)

(declare-fun call!527735 () Bool)

(declare-fun c!1132153 () Bool)

(assert (=> bm!527728 (= call!527735 (validRegex!7913 (ite c!1132153 (regTwo!32867 lt!2349028) (regTwo!32866 lt!2349028))))))

(declare-fun b!6254404 () Bool)

(declare-fun res!2581230 () Bool)

(assert (=> b!6254404 (=> res!2581230 e!3804866)))

(assert (=> b!6254404 (= res!2581230 (not ((_ is Concat!25022) lt!2349028)))))

(declare-fun e!3804864 () Bool)

(assert (=> b!6254404 (= e!3804864 e!3804866)))

(declare-fun bm!527729 () Bool)

(declare-fun call!527734 () Bool)

(assert (=> bm!527729 (= call!527733 call!527734)))

(declare-fun b!6254405 () Bool)

(declare-fun res!2581231 () Bool)

(declare-fun e!3804868 () Bool)

(assert (=> b!6254405 (=> (not res!2581231) (not e!3804868))))

(assert (=> b!6254405 (= res!2581231 call!527733)))

(assert (=> b!6254405 (= e!3804864 e!3804868)))

(declare-fun b!6254406 () Bool)

(assert (=> b!6254406 (= e!3804868 call!527735)))

(declare-fun b!6254407 () Bool)

(assert (=> b!6254407 (= e!3804869 e!3804864)))

(assert (=> b!6254407 (= c!1132153 ((_ is Union!16177) lt!2349028))))

(declare-fun bm!527730 () Bool)

(assert (=> bm!527730 (= call!527734 (validRegex!7913 (ite c!1132152 (reg!16506 lt!2349028) (ite c!1132153 (regOne!32867 lt!2349028) (regOne!32866 lt!2349028)))))))

(declare-fun b!6254408 () Bool)

(assert (=> b!6254408 (= e!3804865 call!527735)))

(declare-fun b!6254409 () Bool)

(assert (=> b!6254409 (= e!3804863 call!527734)))

(assert (= (and d!1962086 (not res!2581227)) b!6254403))

(assert (= (and b!6254403 c!1132152) b!6254402))

(assert (= (and b!6254403 (not c!1132152)) b!6254407))

(assert (= (and b!6254402 res!2581229) b!6254409))

(assert (= (and b!6254407 c!1132153) b!6254405))

(assert (= (and b!6254407 (not c!1132153)) b!6254404))

(assert (= (and b!6254405 res!2581231) b!6254406))

(assert (= (and b!6254404 (not res!2581230)) b!6254401))

(assert (= (and b!6254401 res!2581228) b!6254408))

(assert (= (or b!6254406 b!6254408) bm!527728))

(assert (= (or b!6254405 b!6254401) bm!527729))

(assert (= (or b!6254409 bm!527729) bm!527730))

(declare-fun m!7077382 () Bool)

(assert (=> b!6254402 m!7077382))

(declare-fun m!7077384 () Bool)

(assert (=> bm!527728 m!7077384))

(declare-fun m!7077386 () Bool)

(assert (=> bm!527730 m!7077386))

(assert (=> d!1961654 d!1962086))

(declare-fun d!1962088 () Bool)

(declare-fun res!2581236 () Bool)

(declare-fun e!3804874 () Bool)

(assert (=> d!1962088 (=> res!2581236 e!3804874)))

(assert (=> d!1962088 (= res!2581236 ((_ is Nil!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1962088 (= (forall!15296 (exprs!6061 (h!71155 zl!343)) lambda!342133) e!3804874)))

(declare-fun b!6254414 () Bool)

(declare-fun e!3804875 () Bool)

(assert (=> b!6254414 (= e!3804874 e!3804875)))

(declare-fun res!2581237 () Bool)

(assert (=> b!6254414 (=> (not res!2581237) (not e!3804875))))

(declare-fun dynLambda!25564 (Int Regex!16177) Bool)

(assert (=> b!6254414 (= res!2581237 (dynLambda!25564 lambda!342133 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254415 () Bool)

(assert (=> b!6254415 (= e!3804875 (forall!15296 (t!378378 (exprs!6061 (h!71155 zl!343))) lambda!342133))))

(assert (= (and d!1962088 (not res!2581236)) b!6254414))

(assert (= (and b!6254414 res!2581237) b!6254415))

(declare-fun b_lambda!237997 () Bool)

(assert (=> (not b_lambda!237997) (not b!6254414)))

(declare-fun m!7077388 () Bool)

(assert (=> b!6254414 m!7077388))

(declare-fun m!7077390 () Bool)

(assert (=> b!6254415 m!7077390))

(assert (=> d!1961654 d!1962088))

(assert (=> d!1961634 d!1961636))

(declare-fun d!1962090 () Bool)

(assert (=> d!1962090 (= (flatMap!1682 lt!2348857 lambda!342043) (dynLambda!25556 lambda!342043 lt!2348879))))

(assert (=> d!1962090 true))

(declare-fun _$13!3341 () Unit!158039)

(assert (=> d!1962090 (= (choose!46407 lt!2348857 lt!2348879 lambda!342043) _$13!3341)))

(declare-fun b_lambda!237999 () Bool)

(assert (=> (not b_lambda!237999) (not d!1962090)))

(declare-fun bs!1557387 () Bool)

(assert (= bs!1557387 d!1962090))

(assert (=> bs!1557387 m!7075716))

(assert (=> bs!1557387 m!7076420))

(assert (=> d!1961634 d!1962090))

(assert (=> b!6253164 d!1961652))

(declare-fun d!1962092 () Bool)

(declare-fun c!1132154 () Bool)

(assert (=> d!1962092 (= c!1132154 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3804876 () Bool)

(assert (=> d!1962092 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348867) (t!378380 s!2326)) e!3804876)))

(declare-fun b!6254416 () Bool)

(assert (=> b!6254416 (= e!3804876 (nullableZipper!1949 ((_ map or) lt!2348852 lt!2348867)))))

(declare-fun b!6254417 () Bool)

(assert (=> b!6254417 (= e!3804876 (matchZipper!2189 (derivationStepZipper!2143 ((_ map or) lt!2348852 lt!2348867) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1962092 c!1132154) b!6254416))

(assert (= (and d!1962092 (not c!1132154)) b!6254417))

(assert (=> d!1962092 m!7076136))

(declare-fun m!7077392 () Bool)

(assert (=> b!6254416 m!7077392))

(assert (=> b!6254417 m!7076140))

(assert (=> b!6254417 m!7076140))

(declare-fun m!7077394 () Bool)

(assert (=> b!6254417 m!7077394))

(assert (=> b!6254417 m!7076144))

(assert (=> b!6254417 m!7077394))

(assert (=> b!6254417 m!7076144))

(declare-fun m!7077396 () Bool)

(assert (=> b!6254417 m!7077396))

(assert (=> d!1961612 d!1962092))

(assert (=> d!1961612 d!1961600))

(declare-fun e!3804877 () Bool)

(declare-fun d!1962094 () Bool)

(assert (=> d!1962094 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348867) (t!378380 s!2326)) e!3804877)))

(declare-fun res!2581238 () Bool)

(assert (=> d!1962094 (=> res!2581238 e!3804877)))

(assert (=> d!1962094 (= res!2581238 (matchZipper!2189 lt!2348852 (t!378380 s!2326)))))

(assert (=> d!1962094 true))

(declare-fun _$48!1983 () Unit!158039)

(assert (=> d!1962094 (= (choose!46405 lt!2348852 lt!2348867 (t!378380 s!2326)) _$48!1983)))

(declare-fun b!6254418 () Bool)

(assert (=> b!6254418 (= e!3804877 (matchZipper!2189 lt!2348867 (t!378380 s!2326)))))

(assert (= (and d!1962094 (not res!2581238)) b!6254418))

(assert (=> d!1962094 m!7076364))

(assert (=> d!1962094 m!7075752))

(assert (=> b!6254418 m!7075768))

(assert (=> d!1961612 d!1962094))

(declare-fun d!1962096 () Bool)

(declare-fun c!1132155 () Bool)

(assert (=> d!1962096 (= c!1132155 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3804878 () Bool)

(assert (=> d!1962096 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348858 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3804878)))

(declare-fun b!6254419 () Bool)

(assert (=> b!6254419 (= e!3804878 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348858 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254420 () Bool)

(assert (=> b!6254420 (= e!3804878 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348858 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962096 c!1132155) b!6254419))

(assert (= (and d!1962096 (not c!1132155)) b!6254420))

(assert (=> d!1962096 m!7076144))

(assert (=> d!1962096 m!7077362))

(assert (=> b!6254419 m!7076470))

(declare-fun m!7077398 () Bool)

(assert (=> b!6254419 m!7077398))

(assert (=> b!6254420 m!7076144))

(assert (=> b!6254420 m!7077366))

(assert (=> b!6254420 m!7076470))

(assert (=> b!6254420 m!7077366))

(declare-fun m!7077400 () Bool)

(assert (=> b!6254420 m!7077400))

(assert (=> b!6254420 m!7076144))

(assert (=> b!6254420 m!7077370))

(assert (=> b!6254420 m!7077400))

(assert (=> b!6254420 m!7077370))

(declare-fun m!7077402 () Bool)

(assert (=> b!6254420 m!7077402))

(assert (=> b!6253497 d!1962096))

(declare-fun bs!1557388 () Bool)

(declare-fun d!1962098 () Bool)

(assert (= bs!1557388 (and d!1962098 b!6252643)))

(declare-fun lambda!342212 () Int)

(assert (=> bs!1557388 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342212 lambda!342043))))

(declare-fun bs!1557389 () Bool)

(assert (= bs!1557389 (and d!1962098 d!1961556)))

(assert (=> bs!1557389 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342212 lambda!342091))))

(declare-fun bs!1557390 () Bool)

(assert (= bs!1557390 (and d!1962098 d!1961632)))

(assert (=> bs!1557390 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342212 lambda!342122))))

(declare-fun bs!1557391 () Bool)

(assert (= bs!1557391 (and d!1962098 d!1962076)))

(assert (=> bs!1557391 (= lambda!342212 lambda!342211)))

(assert (=> d!1962098 true))

(assert (=> d!1962098 (= (derivationStepZipper!2143 lt!2348858 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348858 lambda!342212))))

(declare-fun bs!1557392 () Bool)

(assert (= bs!1557392 d!1962098))

(declare-fun m!7077404 () Bool)

(assert (=> bs!1557392 m!7077404))

(assert (=> b!6253497 d!1962098))

(assert (=> b!6253497 d!1962078))

(assert (=> b!6253497 d!1962080))

(declare-fun d!1962100 () Bool)

(assert (=> d!1962100 (= (flatMap!1682 lt!2348857 lambda!342122) (choose!46406 lt!2348857 lambda!342122))))

(declare-fun bs!1557393 () Bool)

(assert (= bs!1557393 d!1962100))

(declare-fun m!7077406 () Bool)

(assert (=> bs!1557393 m!7077406))

(assert (=> d!1961632 d!1962100))

(declare-fun d!1962102 () Bool)

(assert (=> d!1962102 (= (isEmpty!36731 lt!2348860) ((_ is Nil!64706) lt!2348860))))

(assert (=> b!6253327 d!1962102))

(declare-fun b!6254421 () Bool)

(declare-fun e!3804882 () Bool)

(declare-fun e!3804881 () Bool)

(assert (=> b!6254421 (= e!3804882 e!3804881)))

(declare-fun res!2581240 () Bool)

(assert (=> b!6254421 (=> (not res!2581240) (not e!3804881))))

(declare-fun call!527736 () Bool)

(assert (=> b!6254421 (= res!2581240 call!527736)))

(declare-fun b!6254422 () Bool)

(declare-fun e!3804885 () Bool)

(declare-fun e!3804879 () Bool)

(assert (=> b!6254422 (= e!3804885 e!3804879)))

(declare-fun res!2581241 () Bool)

(assert (=> b!6254422 (= res!2581241 (not (nullable!6170 (reg!16506 (regOne!32866 r!7292)))))))

(assert (=> b!6254422 (=> (not res!2581241) (not e!3804879))))

(declare-fun b!6254423 () Bool)

(declare-fun e!3804883 () Bool)

(assert (=> b!6254423 (= e!3804883 e!3804885)))

(declare-fun c!1132156 () Bool)

(assert (=> b!6254423 (= c!1132156 ((_ is Star!16177) (regOne!32866 r!7292)))))

(declare-fun d!1962104 () Bool)

(declare-fun res!2581239 () Bool)

(assert (=> d!1962104 (=> res!2581239 e!3804883)))

(assert (=> d!1962104 (= res!2581239 ((_ is ElementMatch!16177) (regOne!32866 r!7292)))))

(assert (=> d!1962104 (= (validRegex!7913 (regOne!32866 r!7292)) e!3804883)))

(declare-fun bm!527731 () Bool)

(declare-fun call!527738 () Bool)

(declare-fun c!1132157 () Bool)

(assert (=> bm!527731 (= call!527738 (validRegex!7913 (ite c!1132157 (regTwo!32867 (regOne!32866 r!7292)) (regTwo!32866 (regOne!32866 r!7292)))))))

(declare-fun b!6254424 () Bool)

(declare-fun res!2581242 () Bool)

(assert (=> b!6254424 (=> res!2581242 e!3804882)))

(assert (=> b!6254424 (= res!2581242 (not ((_ is Concat!25022) (regOne!32866 r!7292))))))

(declare-fun e!3804880 () Bool)

(assert (=> b!6254424 (= e!3804880 e!3804882)))

(declare-fun bm!527732 () Bool)

(declare-fun call!527737 () Bool)

(assert (=> bm!527732 (= call!527736 call!527737)))

(declare-fun b!6254425 () Bool)

(declare-fun res!2581243 () Bool)

(declare-fun e!3804884 () Bool)

(assert (=> b!6254425 (=> (not res!2581243) (not e!3804884))))

(assert (=> b!6254425 (= res!2581243 call!527736)))

(assert (=> b!6254425 (= e!3804880 e!3804884)))

(declare-fun b!6254426 () Bool)

(assert (=> b!6254426 (= e!3804884 call!527738)))

(declare-fun b!6254427 () Bool)

(assert (=> b!6254427 (= e!3804885 e!3804880)))

(assert (=> b!6254427 (= c!1132157 ((_ is Union!16177) (regOne!32866 r!7292)))))

(declare-fun bm!527733 () Bool)

(assert (=> bm!527733 (= call!527737 (validRegex!7913 (ite c!1132156 (reg!16506 (regOne!32866 r!7292)) (ite c!1132157 (regOne!32867 (regOne!32866 r!7292)) (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun b!6254428 () Bool)

(assert (=> b!6254428 (= e!3804881 call!527738)))

(declare-fun b!6254429 () Bool)

(assert (=> b!6254429 (= e!3804879 call!527737)))

(assert (= (and d!1962104 (not res!2581239)) b!6254423))

(assert (= (and b!6254423 c!1132156) b!6254422))

(assert (= (and b!6254423 (not c!1132156)) b!6254427))

(assert (= (and b!6254422 res!2581241) b!6254429))

(assert (= (and b!6254427 c!1132157) b!6254425))

(assert (= (and b!6254427 (not c!1132157)) b!6254424))

(assert (= (and b!6254425 res!2581243) b!6254426))

(assert (= (and b!6254424 (not res!2581242)) b!6254421))

(assert (= (and b!6254421 res!2581240) b!6254428))

(assert (= (or b!6254426 b!6254428) bm!527731))

(assert (= (or b!6254425 b!6254421) bm!527732))

(assert (= (or b!6254429 bm!527732) bm!527733))

(declare-fun m!7077408 () Bool)

(assert (=> b!6254422 m!7077408))

(declare-fun m!7077410 () Bool)

(assert (=> bm!527731 m!7077410))

(declare-fun m!7077412 () Bool)

(assert (=> bm!527733 m!7077412))

(assert (=> d!1961646 d!1962104))

(assert (=> d!1961646 d!1961650))

(declare-fun bs!1557394 () Bool)

(declare-fun d!1962106 () Bool)

(assert (= bs!1557394 (and d!1962106 b!6253360)))

(declare-fun lambda!342215 () Int)

(assert (=> bs!1557394 (not (= lambda!342215 lambda!342105))))

(declare-fun bs!1557395 () Bool)

(assert (= bs!1557395 (and d!1962106 d!1961646)))

(assert (=> bs!1557395 (= lambda!342215 lambda!342126)))

(declare-fun bs!1557396 () Bool)

(assert (= bs!1557396 (and d!1962106 d!1961648)))

(assert (=> bs!1557396 (not (= lambda!342215 lambda!342132))))

(declare-fun bs!1557397 () Bool)

(assert (= bs!1557397 (and d!1962106 b!6252634)))

(assert (=> bs!1557397 (= lambda!342215 lambda!342041)))

(declare-fun bs!1557398 () Bool)

(assert (= bs!1557398 (and d!1962106 b!6253362)))

(assert (=> bs!1557398 (not (= lambda!342215 lambda!342106))))

(assert (=> bs!1557396 (= lambda!342215 lambda!342131)))

(assert (=> bs!1557397 (not (= lambda!342215 lambda!342042))))

(assert (=> d!1962106 true))

(assert (=> d!1962106 true))

(assert (=> d!1962106 true))

(assert (=> d!1962106 (= (isDefined!12771 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326)) (Exists!3247 lambda!342215))))

(assert (=> d!1962106 true))

(declare-fun _$89!2443 () Unit!158039)

(assert (=> d!1962106 (= (choose!46410 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326) _$89!2443)))

(declare-fun bs!1557399 () Bool)

(assert (= bs!1557399 d!1962106))

(assert (=> bs!1557399 m!7075704))

(assert (=> bs!1557399 m!7075704))

(assert (=> bs!1557399 m!7075706))

(declare-fun m!7077414 () Bool)

(assert (=> bs!1557399 m!7077414))

(assert (=> d!1961646 d!1962106))

(assert (=> d!1961646 d!1961640))

(declare-fun d!1962108 () Bool)

(assert (=> d!1962108 (= (Exists!3247 lambda!342126) (choose!46409 lambda!342126))))

(declare-fun bs!1557400 () Bool)

(assert (= bs!1557400 d!1962108))

(declare-fun m!7077416 () Bool)

(assert (=> bs!1557400 m!7077416))

(assert (=> d!1961646 d!1962108))

(declare-fun b!6254445 () Bool)

(declare-fun e!3804892 () Bool)

(declare-fun lt!2349113 () List!64832)

(assert (=> b!6254445 (= e!3804892 (or (not (= (t!378380 s!2326) Nil!64708)) (= lt!2349113 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)))))))

(declare-fun b!6254444 () Bool)

(declare-fun res!2581253 () Bool)

(assert (=> b!6254444 (=> (not res!2581253) (not e!3804892))))

(declare-fun size!40300 (List!64832) Int)

(assert (=> b!6254444 (= res!2581253 (= (size!40300 lt!2349113) (+ (size!40300 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))) (size!40300 (t!378380 s!2326)))))))

(declare-fun b!6254443 () Bool)

(declare-fun e!3804893 () List!64832)

(assert (=> b!6254443 (= e!3804893 (Cons!64708 (h!71156 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))) (++!14253 (t!378380 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))) (t!378380 s!2326))))))

(declare-fun b!6254442 () Bool)

(assert (=> b!6254442 (= e!3804893 (t!378380 s!2326))))

(declare-fun d!1962110 () Bool)

(assert (=> d!1962110 e!3804892))

(declare-fun res!2581252 () Bool)

(assert (=> d!1962110 (=> (not res!2581252) (not e!3804892))))

(declare-fun content!12144 (List!64832) (InoxSet C!32624))

(assert (=> d!1962110 (= res!2581252 (= (content!12144 lt!2349113) ((_ map or) (content!12144 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))) (content!12144 (t!378380 s!2326)))))))

(assert (=> d!1962110 (= lt!2349113 e!3804893)))

(declare-fun c!1132160 () Bool)

(assert (=> d!1962110 (= c!1132160 ((_ is Nil!64708) (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))))))

(assert (=> d!1962110 (= (++!14253 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326)) lt!2349113)))

(assert (= (and d!1962110 c!1132160) b!6254442))

(assert (= (and d!1962110 (not c!1132160)) b!6254443))

(assert (= (and d!1962110 res!2581252) b!6254444))

(assert (= (and b!6254444 res!2581253) b!6254445))

(declare-fun m!7077418 () Bool)

(assert (=> b!6254444 m!7077418))

(assert (=> b!6254444 m!7076442))

(declare-fun m!7077420 () Bool)

(assert (=> b!6254444 m!7077420))

(declare-fun m!7077422 () Bool)

(assert (=> b!6254444 m!7077422))

(declare-fun m!7077424 () Bool)

(assert (=> b!6254443 m!7077424))

(declare-fun m!7077426 () Bool)

(assert (=> d!1962110 m!7077426))

(assert (=> d!1962110 m!7076442))

(declare-fun m!7077428 () Bool)

(assert (=> d!1962110 m!7077428))

(declare-fun m!7077430 () Bool)

(assert (=> d!1962110 m!7077430))

(assert (=> b!6253480 d!1962110))

(declare-fun b!6254449 () Bool)

(declare-fun e!3804894 () Bool)

(declare-fun lt!2349114 () List!64832)

(assert (=> b!6254449 (= e!3804894 (or (not (= (Cons!64708 (h!71156 s!2326) Nil!64708) Nil!64708)) (= lt!2349114 Nil!64708)))))

(declare-fun b!6254448 () Bool)

(declare-fun res!2581255 () Bool)

(assert (=> b!6254448 (=> (not res!2581255) (not e!3804894))))

(assert (=> b!6254448 (= res!2581255 (= (size!40300 lt!2349114) (+ (size!40300 Nil!64708) (size!40300 (Cons!64708 (h!71156 s!2326) Nil!64708)))))))

(declare-fun b!6254447 () Bool)

(declare-fun e!3804895 () List!64832)

(assert (=> b!6254447 (= e!3804895 (Cons!64708 (h!71156 Nil!64708) (++!14253 (t!378380 Nil!64708) (Cons!64708 (h!71156 s!2326) Nil!64708))))))

(declare-fun b!6254446 () Bool)

(assert (=> b!6254446 (= e!3804895 (Cons!64708 (h!71156 s!2326) Nil!64708))))

(declare-fun d!1962112 () Bool)

(assert (=> d!1962112 e!3804894))

(declare-fun res!2581254 () Bool)

(assert (=> d!1962112 (=> (not res!2581254) (not e!3804894))))

(assert (=> d!1962112 (= res!2581254 (= (content!12144 lt!2349114) ((_ map or) (content!12144 Nil!64708) (content!12144 (Cons!64708 (h!71156 s!2326) Nil!64708)))))))

(assert (=> d!1962112 (= lt!2349114 e!3804895)))

(declare-fun c!1132161 () Bool)

(assert (=> d!1962112 (= c!1132161 ((_ is Nil!64708) Nil!64708))))

(assert (=> d!1962112 (= (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) lt!2349114)))

(assert (= (and d!1962112 c!1132161) b!6254446))

(assert (= (and d!1962112 (not c!1132161)) b!6254447))

(assert (= (and d!1962112 res!2581254) b!6254448))

(assert (= (and b!6254448 res!2581255) b!6254449))

(declare-fun m!7077432 () Bool)

(assert (=> b!6254448 m!7077432))

(declare-fun m!7077434 () Bool)

(assert (=> b!6254448 m!7077434))

(declare-fun m!7077436 () Bool)

(assert (=> b!6254448 m!7077436))

(declare-fun m!7077438 () Bool)

(assert (=> b!6254447 m!7077438))

(declare-fun m!7077440 () Bool)

(assert (=> d!1962112 m!7077440))

(declare-fun m!7077442 () Bool)

(assert (=> d!1962112 m!7077442))

(declare-fun m!7077444 () Bool)

(assert (=> d!1962112 m!7077444))

(assert (=> b!6253480 d!1962112))

(declare-fun d!1962114 () Bool)

(assert (=> d!1962114 (= (++!14253 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326)) s!2326)))

(declare-fun lt!2349117 () Unit!158039)

(declare-fun choose!46414 (List!64832 C!32624 List!64832 List!64832) Unit!158039)

(assert (=> d!1962114 (= lt!2349117 (choose!46414 Nil!64708 (h!71156 s!2326) (t!378380 s!2326) s!2326))))

(assert (=> d!1962114 (= (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) (t!378380 s!2326))) s!2326)))

(assert (=> d!1962114 (= (lemmaMoveElementToOtherListKeepsConcatEq!2348 Nil!64708 (h!71156 s!2326) (t!378380 s!2326) s!2326) lt!2349117)))

(declare-fun bs!1557401 () Bool)

(assert (= bs!1557401 d!1962114))

(assert (=> bs!1557401 m!7076442))

(assert (=> bs!1557401 m!7076442))

(assert (=> bs!1557401 m!7076444))

(declare-fun m!7077446 () Bool)

(assert (=> bs!1557401 m!7077446))

(declare-fun m!7077448 () Bool)

(assert (=> bs!1557401 m!7077448))

(assert (=> b!6253480 d!1962114))

(declare-fun b!6254450 () Bool)

(declare-fun e!3804897 () Bool)

(declare-fun lt!2349120 () Option!16068)

(assert (=> b!6254450 (= e!3804897 (= (++!14253 (_1!36459 (get!22357 lt!2349120)) (_2!36459 (get!22357 lt!2349120))) s!2326))))

(declare-fun b!6254451 () Bool)

(declare-fun e!3804899 () Bool)

(assert (=> b!6254451 (= e!3804899 (not (isDefined!12771 lt!2349120)))))

(declare-fun b!6254453 () Bool)

(declare-fun e!3804896 () Bool)

(assert (=> b!6254453 (= e!3804896 (matchR!8360 (regTwo!32866 r!7292) (t!378380 s!2326)))))

(declare-fun b!6254454 () Bool)

(declare-fun e!3804900 () Option!16068)

(assert (=> b!6254454 (= e!3804900 (Some!16067 (tuple2!66313 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326))))))

(declare-fun b!6254455 () Bool)

(declare-fun lt!2349118 () Unit!158039)

(declare-fun lt!2349119 () Unit!158039)

(assert (=> b!6254455 (= lt!2349118 lt!2349119)))

(assert (=> b!6254455 (= (++!14253 (++!14253 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (Cons!64708 (h!71156 (t!378380 s!2326)) Nil!64708)) (t!378380 (t!378380 s!2326))) s!2326)))

(assert (=> b!6254455 (= lt!2349119 (lemmaMoveElementToOtherListKeepsConcatEq!2348 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (h!71156 (t!378380 s!2326)) (t!378380 (t!378380 s!2326)) s!2326))))

(declare-fun e!3804898 () Option!16068)

(assert (=> b!6254455 (= e!3804898 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) (++!14253 (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (Cons!64708 (h!71156 (t!378380 s!2326)) Nil!64708)) (t!378380 (t!378380 s!2326)) s!2326))))

(declare-fun b!6254456 () Bool)

(declare-fun res!2581257 () Bool)

(assert (=> b!6254456 (=> (not res!2581257) (not e!3804897))))

(assert (=> b!6254456 (= res!2581257 (matchR!8360 (regOne!32866 r!7292) (_1!36459 (get!22357 lt!2349120))))))

(declare-fun b!6254457 () Bool)

(assert (=> b!6254457 (= e!3804898 None!16067)))

(declare-fun b!6254458 () Bool)

(declare-fun res!2581256 () Bool)

(assert (=> b!6254458 (=> (not res!2581256) (not e!3804897))))

(assert (=> b!6254458 (= res!2581256 (matchR!8360 (regTwo!32866 r!7292) (_2!36459 (get!22357 lt!2349120))))))

(declare-fun d!1962116 () Bool)

(assert (=> d!1962116 e!3804899))

(declare-fun res!2581260 () Bool)

(assert (=> d!1962116 (=> res!2581260 e!3804899)))

(assert (=> d!1962116 (= res!2581260 e!3804897)))

(declare-fun res!2581258 () Bool)

(assert (=> d!1962116 (=> (not res!2581258) (not e!3804897))))

(assert (=> d!1962116 (= res!2581258 (isDefined!12771 lt!2349120))))

(assert (=> d!1962116 (= lt!2349120 e!3804900)))

(declare-fun c!1132162 () Bool)

(assert (=> d!1962116 (= c!1132162 e!3804896)))

(declare-fun res!2581259 () Bool)

(assert (=> d!1962116 (=> (not res!2581259) (not e!3804896))))

(assert (=> d!1962116 (= res!2581259 (matchR!8360 (regOne!32866 r!7292) (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708))))))

(assert (=> d!1962116 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1962116 (= (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) (++!14253 Nil!64708 (Cons!64708 (h!71156 s!2326) Nil!64708)) (t!378380 s!2326) s!2326) lt!2349120)))

(declare-fun b!6254452 () Bool)

(assert (=> b!6254452 (= e!3804900 e!3804898)))

(declare-fun c!1132163 () Bool)

(assert (=> b!6254452 (= c!1132163 ((_ is Nil!64708) (t!378380 s!2326)))))

(assert (= (and d!1962116 res!2581259) b!6254453))

(assert (= (and d!1962116 c!1132162) b!6254454))

(assert (= (and d!1962116 (not c!1132162)) b!6254452))

(assert (= (and b!6254452 c!1132163) b!6254457))

(assert (= (and b!6254452 (not c!1132163)) b!6254455))

(assert (= (and d!1962116 res!2581258) b!6254456))

(assert (= (and b!6254456 res!2581257) b!6254458))

(assert (= (and b!6254458 res!2581256) b!6254450))

(assert (= (and d!1962116 (not res!2581260)) b!6254451))

(declare-fun m!7077450 () Bool)

(assert (=> b!6254458 m!7077450))

(declare-fun m!7077452 () Bool)

(assert (=> b!6254458 m!7077452))

(declare-fun m!7077454 () Bool)

(assert (=> b!6254451 m!7077454))

(assert (=> b!6254450 m!7077450))

(declare-fun m!7077456 () Bool)

(assert (=> b!6254450 m!7077456))

(assert (=> d!1962116 m!7077454))

(assert (=> d!1962116 m!7076442))

(declare-fun m!7077458 () Bool)

(assert (=> d!1962116 m!7077458))

(assert (=> d!1962116 m!7076438))

(declare-fun m!7077460 () Bool)

(assert (=> b!6254453 m!7077460))

(assert (=> b!6254455 m!7076442))

(declare-fun m!7077462 () Bool)

(assert (=> b!6254455 m!7077462))

(assert (=> b!6254455 m!7077462))

(declare-fun m!7077464 () Bool)

(assert (=> b!6254455 m!7077464))

(assert (=> b!6254455 m!7076442))

(declare-fun m!7077466 () Bool)

(assert (=> b!6254455 m!7077466))

(assert (=> b!6254455 m!7077462))

(declare-fun m!7077468 () Bool)

(assert (=> b!6254455 m!7077468))

(assert (=> b!6254456 m!7077450))

(declare-fun m!7077470 () Bool)

(assert (=> b!6254456 m!7077470))

(assert (=> b!6253480 d!1962116))

(assert (=> d!1961550 d!1962020))

(assert (=> b!6253425 d!1961622))

(declare-fun d!1962118 () Bool)

(assert (=> d!1962118 (= (head!12859 (exprs!6061 (h!71155 zl!343))) (h!71154 (exprs!6061 (h!71155 zl!343))))))

(assert (=> b!6253501 d!1962118))

(assert (=> b!6253228 d!1961566))

(assert (=> d!1961552 d!1962020))

(declare-fun d!1962120 () Bool)

(declare-fun lt!2349123 () Int)

(assert (=> d!1962120 (> lt!2349123 0)))

(declare-fun e!3804909 () Int)

(assert (=> d!1962120 (= lt!2349123 e!3804909)))

(declare-fun c!1132175 () Bool)

(assert (=> d!1962120 (= c!1132175 ((_ is ElementMatch!16177) (h!71154 (exprs!6061 lt!2348879))))))

(assert (=> d!1962120 (= (regexDepthTotal!155 (h!71154 (exprs!6061 lt!2348879))) lt!2349123)))

(declare-fun b!6254475 () Bool)

(declare-fun e!3804911 () Int)

(assert (=> b!6254475 (= e!3804909 e!3804911)))

(declare-fun c!1132173 () Bool)

(assert (=> b!6254475 (= c!1132173 ((_ is Star!16177) (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun b!6254476 () Bool)

(declare-fun call!527746 () Int)

(assert (=> b!6254476 (= e!3804911 (+ 1 call!527746))))

(declare-fun b!6254477 () Bool)

(declare-fun e!3804910 () Int)

(declare-fun e!3804912 () Int)

(assert (=> b!6254477 (= e!3804910 e!3804912)))

(declare-fun c!1132172 () Bool)

(assert (=> b!6254477 (= c!1132172 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun b!6254478 () Bool)

(assert (=> b!6254478 (= e!3804912 1)))

(declare-fun bm!527740 () Bool)

(declare-fun call!527747 () Int)

(assert (=> bm!527740 (= call!527747 call!527746)))

(declare-fun b!6254479 () Bool)

(declare-fun call!527745 () Int)

(assert (=> b!6254479 (= e!3804910 (+ 1 call!527747 call!527745))))

(declare-fun b!6254480 () Bool)

(assert (=> b!6254480 (= e!3804909 1)))

(declare-fun b!6254481 () Bool)

(declare-fun c!1132174 () Bool)

(assert (=> b!6254481 (= c!1132174 ((_ is Union!16177) (h!71154 (exprs!6061 lt!2348879))))))

(assert (=> b!6254481 (= e!3804911 e!3804910)))

(declare-fun b!6254482 () Bool)

(assert (=> b!6254482 (= e!3804912 (+ 1 call!527747 call!527745))))

(declare-fun bm!527741 () Bool)

(assert (=> bm!527741 (= call!527745 (regexDepthTotal!155 (ite c!1132174 (regTwo!32867 (h!71154 (exprs!6061 lt!2348879))) (regTwo!32866 (h!71154 (exprs!6061 lt!2348879))))))))

(declare-fun bm!527742 () Bool)

(assert (=> bm!527742 (= call!527746 (regexDepthTotal!155 (ite c!1132173 (reg!16506 (h!71154 (exprs!6061 lt!2348879))) (ite c!1132174 (regOne!32867 (h!71154 (exprs!6061 lt!2348879))) (regOne!32866 (h!71154 (exprs!6061 lt!2348879)))))))))

(assert (= (and d!1962120 c!1132175) b!6254480))

(assert (= (and d!1962120 (not c!1132175)) b!6254475))

(assert (= (and b!6254475 c!1132173) b!6254476))

(assert (= (and b!6254475 (not c!1132173)) b!6254481))

(assert (= (and b!6254481 c!1132174) b!6254479))

(assert (= (and b!6254481 (not c!1132174)) b!6254477))

(assert (= (and b!6254477 c!1132172) b!6254482))

(assert (= (and b!6254477 (not c!1132172)) b!6254478))

(assert (= (or b!6254479 b!6254482) bm!527741))

(assert (= (or b!6254479 b!6254482) bm!527740))

(assert (= (or b!6254476 bm!527740) bm!527742))

(declare-fun m!7077472 () Bool)

(assert (=> bm!527741 m!7077472))

(declare-fun m!7077474 () Bool)

(assert (=> bm!527742 m!7077474))

(assert (=> b!6253157 d!1962120))

(declare-fun d!1962122 () Bool)

(declare-fun lt!2349124 () Int)

(assert (=> d!1962122 (>= lt!2349124 0)))

(declare-fun e!3804913 () Int)

(assert (=> d!1962122 (= lt!2349124 e!3804913)))

(declare-fun c!1132176 () Bool)

(assert (=> d!1962122 (= c!1132176 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879))))))))

(assert (=> d!1962122 (= (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))) lt!2349124)))

(declare-fun b!6254483 () Bool)

(assert (=> b!6254483 (= e!3804913 (+ (regexDepthTotal!155 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))))) (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348879)))))))))))

(declare-fun b!6254484 () Bool)

(assert (=> b!6254484 (= e!3804913 1)))

(assert (= (and d!1962122 c!1132176) b!6254483))

(assert (= (and d!1962122 (not c!1132176)) b!6254484))

(declare-fun m!7077476 () Bool)

(assert (=> b!6254483 m!7077476))

(declare-fun m!7077478 () Bool)

(assert (=> b!6254483 m!7077478))

(assert (=> b!6253157 d!1962122))

(declare-fun d!1962124 () Bool)

(assert (=> d!1962124 (= (head!12859 (unfocusZipperList!1598 zl!343)) (h!71154 (unfocusZipperList!1598 zl!343)))))

(assert (=> b!6253276 d!1962124))

(declare-fun d!1962126 () Bool)

(assert (=> d!1962126 (= (isEmpty!36731 (tail!11944 lt!2348860)) ((_ is Nil!64706) (tail!11944 lt!2348860)))))

(assert (=> b!6253322 d!1962126))

(declare-fun d!1962128 () Bool)

(assert (=> d!1962128 (= (tail!11944 lt!2348860) (t!378378 lt!2348860))))

(assert (=> b!6253322 d!1962128))

(declare-fun d!1962130 () Bool)

(assert (=> d!1962130 true))

(assert (=> d!1962130 true))

(declare-fun res!2581263 () Bool)

(assert (=> d!1962130 (= (choose!46409 lambda!342041) res!2581263)))

(assert (=> d!1961644 d!1962130))

(declare-fun b!6254488 () Bool)

(declare-fun e!3804914 () Bool)

(declare-fun lt!2349125 () List!64832)

(assert (=> b!6254488 (= e!3804914 (or (not (= (_2!36459 (get!22357 lt!2349021)) Nil!64708)) (= lt!2349125 (_1!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254487 () Bool)

(declare-fun res!2581265 () Bool)

(assert (=> b!6254487 (=> (not res!2581265) (not e!3804914))))

(assert (=> b!6254487 (= res!2581265 (= (size!40300 lt!2349125) (+ (size!40300 (_1!36459 (get!22357 lt!2349021))) (size!40300 (_2!36459 (get!22357 lt!2349021))))))))

(declare-fun b!6254486 () Bool)

(declare-fun e!3804915 () List!64832)

(assert (=> b!6254486 (= e!3804915 (Cons!64708 (h!71156 (_1!36459 (get!22357 lt!2349021))) (++!14253 (t!378380 (_1!36459 (get!22357 lt!2349021))) (_2!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254485 () Bool)

(assert (=> b!6254485 (= e!3804915 (_2!36459 (get!22357 lt!2349021)))))

(declare-fun d!1962132 () Bool)

(assert (=> d!1962132 e!3804914))

(declare-fun res!2581264 () Bool)

(assert (=> d!1962132 (=> (not res!2581264) (not e!3804914))))

(assert (=> d!1962132 (= res!2581264 (= (content!12144 lt!2349125) ((_ map or) (content!12144 (_1!36459 (get!22357 lt!2349021))) (content!12144 (_2!36459 (get!22357 lt!2349021))))))))

(assert (=> d!1962132 (= lt!2349125 e!3804915)))

(declare-fun c!1132177 () Bool)

(assert (=> d!1962132 (= c!1132177 ((_ is Nil!64708) (_1!36459 (get!22357 lt!2349021))))))

(assert (=> d!1962132 (= (++!14253 (_1!36459 (get!22357 lt!2349021)) (_2!36459 (get!22357 lt!2349021))) lt!2349125)))

(assert (= (and d!1962132 c!1132177) b!6254485))

(assert (= (and d!1962132 (not c!1132177)) b!6254486))

(assert (= (and d!1962132 res!2581264) b!6254487))

(assert (= (and b!6254487 res!2581265) b!6254488))

(declare-fun m!7077480 () Bool)

(assert (=> b!6254487 m!7077480))

(declare-fun m!7077482 () Bool)

(assert (=> b!6254487 m!7077482))

(declare-fun m!7077484 () Bool)

(assert (=> b!6254487 m!7077484))

(declare-fun m!7077486 () Bool)

(assert (=> b!6254486 m!7077486))

(declare-fun m!7077488 () Bool)

(assert (=> d!1962132 m!7077488))

(declare-fun m!7077490 () Bool)

(assert (=> d!1962132 m!7077490))

(declare-fun m!7077492 () Bool)

(assert (=> d!1962132 m!7077492))

(assert (=> b!6253475 d!1962132))

(declare-fun d!1962134 () Bool)

(assert (=> d!1962134 (= (get!22357 lt!2349021) (v!52220 lt!2349021))))

(assert (=> b!6253475 d!1962134))

(declare-fun bs!1557402 () Bool)

(declare-fun b!6254489 () Bool)

(assert (= bs!1557402 (and b!6254489 b!6253360)))

(declare-fun lambda!342216 () Int)

(assert (=> bs!1557402 (= (and (= (reg!16506 (regOne!32867 r!7292)) (reg!16506 r!7292)) (= (regOne!32867 r!7292) r!7292)) (= lambda!342216 lambda!342105))))

(declare-fun bs!1557403 () Bool)

(assert (= bs!1557403 (and b!6254489 d!1961646)))

(assert (=> bs!1557403 (not (= lambda!342216 lambda!342126))))

(declare-fun bs!1557404 () Bool)

(assert (= bs!1557404 (and b!6254489 d!1961648)))

(assert (=> bs!1557404 (not (= lambda!342216 lambda!342132))))

(declare-fun bs!1557405 () Bool)

(assert (= bs!1557405 (and b!6254489 b!6252634)))

(assert (=> bs!1557405 (not (= lambda!342216 lambda!342041))))

(declare-fun bs!1557406 () Bool)

(assert (= bs!1557406 (and b!6254489 d!1962106)))

(assert (=> bs!1557406 (not (= lambda!342216 lambda!342215))))

(declare-fun bs!1557407 () Bool)

(assert (= bs!1557407 (and b!6254489 b!6253362)))

(assert (=> bs!1557407 (not (= lambda!342216 lambda!342106))))

(assert (=> bs!1557404 (not (= lambda!342216 lambda!342131))))

(assert (=> bs!1557405 (not (= lambda!342216 lambda!342042))))

(assert (=> b!6254489 true))

(assert (=> b!6254489 true))

(declare-fun bs!1557408 () Bool)

(declare-fun b!6254491 () Bool)

(assert (= bs!1557408 (and b!6254491 b!6253360)))

(declare-fun lambda!342217 () Int)

(assert (=> bs!1557408 (not (= lambda!342217 lambda!342105))))

(declare-fun bs!1557409 () Bool)

(assert (= bs!1557409 (and b!6254491 d!1961646)))

(assert (=> bs!1557409 (not (= lambda!342217 lambda!342126))))

(declare-fun bs!1557410 () Bool)

(assert (= bs!1557410 (and b!6254491 d!1961648)))

(assert (=> bs!1557410 (= (and (= (regOne!32866 (regOne!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regOne!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342217 lambda!342132))))

(declare-fun bs!1557411 () Bool)

(assert (= bs!1557411 (and b!6254491 b!6252634)))

(assert (=> bs!1557411 (not (= lambda!342217 lambda!342041))))

(declare-fun bs!1557412 () Bool)

(assert (= bs!1557412 (and b!6254491 b!6254489)))

(assert (=> bs!1557412 (not (= lambda!342217 lambda!342216))))

(declare-fun bs!1557413 () Bool)

(assert (= bs!1557413 (and b!6254491 d!1962106)))

(assert (=> bs!1557413 (not (= lambda!342217 lambda!342215))))

(declare-fun bs!1557414 () Bool)

(assert (= bs!1557414 (and b!6254491 b!6253362)))

(assert (=> bs!1557414 (= (and (= (regOne!32866 (regOne!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regOne!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342217 lambda!342106))))

(assert (=> bs!1557410 (not (= lambda!342217 lambda!342131))))

(assert (=> bs!1557411 (= (and (= (regOne!32866 (regOne!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regOne!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342217 lambda!342042))))

(assert (=> b!6254491 true))

(assert (=> b!6254491 true))

(declare-fun e!3804918 () Bool)

(declare-fun call!527748 () Bool)

(assert (=> b!6254489 (= e!3804918 call!527748)))

(declare-fun b!6254490 () Bool)

(declare-fun e!3804919 () Bool)

(declare-fun e!3804922 () Bool)

(assert (=> b!6254490 (= e!3804919 e!3804922)))

(declare-fun c!1132179 () Bool)

(assert (=> b!6254490 (= c!1132179 ((_ is Star!16177) (regOne!32867 r!7292)))))

(declare-fun bm!527743 () Bool)

(declare-fun call!527749 () Bool)

(assert (=> bm!527743 (= call!527749 (isEmpty!36734 s!2326))))

(assert (=> b!6254491 (= e!3804922 call!527748)))

(declare-fun b!6254492 () Bool)

(declare-fun e!3804921 () Bool)

(assert (=> b!6254492 (= e!3804919 e!3804921)))

(declare-fun res!2581267 () Bool)

(assert (=> b!6254492 (= res!2581267 (matchRSpec!3278 (regOne!32867 (regOne!32867 r!7292)) s!2326))))

(assert (=> b!6254492 (=> res!2581267 e!3804921)))

(declare-fun b!6254493 () Bool)

(declare-fun e!3804917 () Bool)

(assert (=> b!6254493 (= e!3804917 (= s!2326 (Cons!64708 (c!1131644 (regOne!32867 r!7292)) Nil!64708)))))

(declare-fun b!6254494 () Bool)

(declare-fun c!1132181 () Bool)

(assert (=> b!6254494 (= c!1132181 ((_ is ElementMatch!16177) (regOne!32867 r!7292)))))

(declare-fun e!3804920 () Bool)

(assert (=> b!6254494 (= e!3804920 e!3804917)))

(declare-fun b!6254495 () Bool)

(assert (=> b!6254495 (= e!3804921 (matchRSpec!3278 (regTwo!32867 (regOne!32867 r!7292)) s!2326))))

(declare-fun b!6254496 () Bool)

(declare-fun c!1132180 () Bool)

(assert (=> b!6254496 (= c!1132180 ((_ is Union!16177) (regOne!32867 r!7292)))))

(assert (=> b!6254496 (= e!3804917 e!3804919)))

(declare-fun b!6254497 () Bool)

(declare-fun res!2581266 () Bool)

(assert (=> b!6254497 (=> res!2581266 e!3804918)))

(assert (=> b!6254497 (= res!2581266 call!527749)))

(assert (=> b!6254497 (= e!3804922 e!3804918)))

(declare-fun d!1962136 () Bool)

(declare-fun c!1132178 () Bool)

(assert (=> d!1962136 (= c!1132178 ((_ is EmptyExpr!16177) (regOne!32867 r!7292)))))

(declare-fun e!3804916 () Bool)

(assert (=> d!1962136 (= (matchRSpec!3278 (regOne!32867 r!7292) s!2326) e!3804916)))

(declare-fun b!6254498 () Bool)

(assert (=> b!6254498 (= e!3804916 call!527749)))

(declare-fun bm!527744 () Bool)

(assert (=> bm!527744 (= call!527748 (Exists!3247 (ite c!1132179 lambda!342216 lambda!342217)))))

(declare-fun b!6254499 () Bool)

(assert (=> b!6254499 (= e!3804916 e!3804920)))

(declare-fun res!2581268 () Bool)

(assert (=> b!6254499 (= res!2581268 (not ((_ is EmptyLang!16177) (regOne!32867 r!7292))))))

(assert (=> b!6254499 (=> (not res!2581268) (not e!3804920))))

(assert (= (and d!1962136 c!1132178) b!6254498))

(assert (= (and d!1962136 (not c!1132178)) b!6254499))

(assert (= (and b!6254499 res!2581268) b!6254494))

(assert (= (and b!6254494 c!1132181) b!6254493))

(assert (= (and b!6254494 (not c!1132181)) b!6254496))

(assert (= (and b!6254496 c!1132180) b!6254492))

(assert (= (and b!6254496 (not c!1132180)) b!6254490))

(assert (= (and b!6254492 (not res!2581267)) b!6254495))

(assert (= (and b!6254490 c!1132179) b!6254497))

(assert (= (and b!6254490 (not c!1132179)) b!6254491))

(assert (= (and b!6254497 (not res!2581266)) b!6254489))

(assert (= (or b!6254489 b!6254491) bm!527744))

(assert (= (or b!6254498 b!6254497) bm!527743))

(assert (=> bm!527743 m!7076308))

(declare-fun m!7077494 () Bool)

(assert (=> b!6254492 m!7077494))

(declare-fun m!7077496 () Bool)

(assert (=> b!6254495 m!7077496))

(declare-fun m!7077498 () Bool)

(assert (=> bm!527744 m!7077498))

(assert (=> b!6253363 d!1962136))

(declare-fun d!1962138 () Bool)

(declare-fun c!1132182 () Bool)

(assert (=> d!1962138 (= c!1132182 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3804923 () Bool)

(assert (=> d!1962138 (= (matchZipper!2189 (derivationStepZipper!2143 ((_ map or) lt!2348871 lt!2348858) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3804923)))

(declare-fun b!6254500 () Bool)

(assert (=> b!6254500 (= e!3804923 (nullableZipper!1949 (derivationStepZipper!2143 ((_ map or) lt!2348871 lt!2348858) (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254501 () Bool)

(assert (=> b!6254501 (= e!3804923 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 ((_ map or) lt!2348871 lt!2348858) (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962138 c!1132182) b!6254500))

(assert (= (and d!1962138 (not c!1132182)) b!6254501))

(assert (=> d!1962138 m!7076144))

(assert (=> d!1962138 m!7077362))

(assert (=> b!6254500 m!7076184))

(declare-fun m!7077500 () Bool)

(assert (=> b!6254500 m!7077500))

(assert (=> b!6254501 m!7076144))

(assert (=> b!6254501 m!7077366))

(assert (=> b!6254501 m!7076184))

(assert (=> b!6254501 m!7077366))

(declare-fun m!7077502 () Bool)

(assert (=> b!6254501 m!7077502))

(assert (=> b!6254501 m!7076144))

(assert (=> b!6254501 m!7077370))

(assert (=> b!6254501 m!7077502))

(assert (=> b!6254501 m!7077370))

(declare-fun m!7077504 () Bool)

(assert (=> b!6254501 m!7077504))

(assert (=> b!6253168 d!1962138))

(declare-fun bs!1557415 () Bool)

(declare-fun d!1962140 () Bool)

(assert (= bs!1557415 (and d!1962140 d!1961556)))

(declare-fun lambda!342218 () Int)

(assert (=> bs!1557415 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342218 lambda!342091))))

(declare-fun bs!1557416 () Bool)

(assert (= bs!1557416 (and d!1962140 d!1962076)))

(assert (=> bs!1557416 (= lambda!342218 lambda!342211)))

(declare-fun bs!1557417 () Bool)

(assert (= bs!1557417 (and d!1962140 d!1962098)))

(assert (=> bs!1557417 (= lambda!342218 lambda!342212)))

(declare-fun bs!1557418 () Bool)

(assert (= bs!1557418 (and d!1962140 d!1961632)))

(assert (=> bs!1557418 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342218 lambda!342122))))

(declare-fun bs!1557419 () Bool)

(assert (= bs!1557419 (and d!1962140 b!6252643)))

(assert (=> bs!1557419 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342218 lambda!342043))))

(assert (=> d!1962140 true))

(assert (=> d!1962140 (= (derivationStepZipper!2143 ((_ map or) lt!2348871 lt!2348858) (head!12858 (t!378380 s!2326))) (flatMap!1682 ((_ map or) lt!2348871 lt!2348858) lambda!342218))))

(declare-fun bs!1557420 () Bool)

(assert (= bs!1557420 d!1962140))

(declare-fun m!7077506 () Bool)

(assert (=> bs!1557420 m!7077506))

(assert (=> b!6253168 d!1962140))

(assert (=> b!6253168 d!1962078))

(assert (=> b!6253168 d!1962080))

(declare-fun d!1962142 () Bool)

(declare-fun c!1132183 () Bool)

(assert (=> d!1962142 (= c!1132183 ((_ is Nil!64707) lt!2348958))))

(declare-fun e!3804924 () (InoxSet Context!11122))

(assert (=> d!1962142 (= (content!12142 lt!2348958) e!3804924)))

(declare-fun b!6254502 () Bool)

(assert (=> b!6254502 (= e!3804924 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254503 () Bool)

(assert (=> b!6254503 (= e!3804924 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) (h!71155 lt!2348958) true) (content!12142 (t!378379 lt!2348958))))))

(assert (= (and d!1962142 c!1132183) b!6254502))

(assert (= (and d!1962142 (not c!1132183)) b!6254503))

(declare-fun m!7077508 () Bool)

(assert (=> b!6254503 m!7077508))

(declare-fun m!7077510 () Bool)

(assert (=> b!6254503 m!7077510))

(assert (=> b!6253125 d!1962142))

(assert (=> d!1961608 d!1962020))

(declare-fun bs!1557421 () Bool)

(declare-fun d!1962144 () Bool)

(assert (= bs!1557421 (and d!1962144 b!6253451)))

(declare-fun lambda!342219 () Int)

(assert (=> bs!1557421 (not (= lambda!342219 lambda!342121))))

(declare-fun bs!1557422 () Bool)

(assert (= bs!1557422 (and d!1962144 b!6253444)))

(assert (=> bs!1557422 (not (= lambda!342219 lambda!342117))))

(declare-fun bs!1557423 () Bool)

(assert (= bs!1557423 (and d!1962144 d!1962050)))

(assert (=> bs!1557423 (not (= lambda!342219 lambda!342200))))

(declare-fun bs!1557424 () Bool)

(assert (= bs!1557424 (and d!1962144 b!6254362)))

(assert (=> bs!1557424 (not (= lambda!342219 lambda!342208))))

(declare-fun bs!1557425 () Bool)

(assert (= bs!1557425 (and d!1962144 d!1962044)))

(assert (=> bs!1557425 (= lambda!342219 lambda!342197)))

(declare-fun bs!1557426 () Bool)

(assert (= bs!1557426 (and d!1962144 b!6254364)))

(assert (=> bs!1557426 (not (= lambda!342219 lambda!342209))))

(declare-fun bs!1557427 () Bool)

(assert (= bs!1557427 (and d!1962144 b!6253449)))

(assert (=> bs!1557427 (not (= lambda!342219 lambda!342120))))

(declare-fun bs!1557428 () Bool)

(assert (= bs!1557428 (and d!1962144 b!6253446)))

(assert (=> bs!1557428 (not (= lambda!342219 lambda!342118))))

(assert (=> d!1962144 (= (nullableZipper!1949 lt!2348858) (exists!2513 lt!2348858 lambda!342219))))

(declare-fun bs!1557429 () Bool)

(assert (= bs!1557429 d!1962144))

(declare-fun m!7077512 () Bool)

(assert (=> bs!1557429 m!7077512))

(assert (=> b!6253496 d!1962144))

(declare-fun d!1962146 () Bool)

(assert (=> d!1962146 true))

(assert (=> d!1962146 true))

(declare-fun res!2581269 () Bool)

(assert (=> d!1962146 (= (choose!46409 lambda!342042) res!2581269)))

(assert (=> d!1961642 d!1962146))

(declare-fun b!6254504 () Bool)

(declare-fun e!3804928 () Bool)

(declare-fun e!3804927 () Bool)

(assert (=> b!6254504 (= e!3804928 e!3804927)))

(declare-fun res!2581271 () Bool)

(assert (=> b!6254504 (=> (not res!2581271) (not e!3804927))))

(declare-fun call!527750 () Bool)

(assert (=> b!6254504 (= res!2581271 call!527750)))

(declare-fun b!6254505 () Bool)

(declare-fun e!3804931 () Bool)

(declare-fun e!3804925 () Bool)

(assert (=> b!6254505 (= e!3804931 e!3804925)))

(declare-fun res!2581272 () Bool)

(assert (=> b!6254505 (= res!2581272 (not (nullable!6170 (reg!16506 lt!2348982))))))

(assert (=> b!6254505 (=> (not res!2581272) (not e!3804925))))

(declare-fun b!6254506 () Bool)

(declare-fun e!3804929 () Bool)

(assert (=> b!6254506 (= e!3804929 e!3804931)))

(declare-fun c!1132184 () Bool)

(assert (=> b!6254506 (= c!1132184 ((_ is Star!16177) lt!2348982))))

(declare-fun d!1962148 () Bool)

(declare-fun res!2581270 () Bool)

(assert (=> d!1962148 (=> res!2581270 e!3804929)))

(assert (=> d!1962148 (= res!2581270 ((_ is ElementMatch!16177) lt!2348982))))

(assert (=> d!1962148 (= (validRegex!7913 lt!2348982) e!3804929)))

(declare-fun bm!527745 () Bool)

(declare-fun call!527752 () Bool)

(declare-fun c!1132185 () Bool)

(assert (=> bm!527745 (= call!527752 (validRegex!7913 (ite c!1132185 (regTwo!32867 lt!2348982) (regTwo!32866 lt!2348982))))))

(declare-fun b!6254507 () Bool)

(declare-fun res!2581273 () Bool)

(assert (=> b!6254507 (=> res!2581273 e!3804928)))

(assert (=> b!6254507 (= res!2581273 (not ((_ is Concat!25022) lt!2348982)))))

(declare-fun e!3804926 () Bool)

(assert (=> b!6254507 (= e!3804926 e!3804928)))

(declare-fun bm!527746 () Bool)

(declare-fun call!527751 () Bool)

(assert (=> bm!527746 (= call!527750 call!527751)))

(declare-fun b!6254508 () Bool)

(declare-fun res!2581274 () Bool)

(declare-fun e!3804930 () Bool)

(assert (=> b!6254508 (=> (not res!2581274) (not e!3804930))))

(assert (=> b!6254508 (= res!2581274 call!527750)))

(assert (=> b!6254508 (= e!3804926 e!3804930)))

(declare-fun b!6254509 () Bool)

(assert (=> b!6254509 (= e!3804930 call!527752)))

(declare-fun b!6254510 () Bool)

(assert (=> b!6254510 (= e!3804931 e!3804926)))

(assert (=> b!6254510 (= c!1132185 ((_ is Union!16177) lt!2348982))))

(declare-fun bm!527747 () Bool)

(assert (=> bm!527747 (= call!527751 (validRegex!7913 (ite c!1132184 (reg!16506 lt!2348982) (ite c!1132185 (regOne!32867 lt!2348982) (regOne!32866 lt!2348982)))))))

(declare-fun b!6254511 () Bool)

(assert (=> b!6254511 (= e!3804927 call!527752)))

(declare-fun b!6254512 () Bool)

(assert (=> b!6254512 (= e!3804925 call!527751)))

(assert (= (and d!1962148 (not res!2581270)) b!6254506))

(assert (= (and b!6254506 c!1132184) b!6254505))

(assert (= (and b!6254506 (not c!1132184)) b!6254510))

(assert (= (and b!6254505 res!2581272) b!6254512))

(assert (= (and b!6254510 c!1132185) b!6254508))

(assert (= (and b!6254510 (not c!1132185)) b!6254507))

(assert (= (and b!6254508 res!2581274) b!6254509))

(assert (= (and b!6254507 (not res!2581273)) b!6254504))

(assert (= (and b!6254504 res!2581271) b!6254511))

(assert (= (or b!6254509 b!6254511) bm!527745))

(assert (= (or b!6254508 b!6254504) bm!527746))

(assert (= (or b!6254512 bm!527746) bm!527747))

(declare-fun m!7077514 () Bool)

(assert (=> b!6254505 m!7077514))

(declare-fun m!7077516 () Bool)

(assert (=> bm!527745 m!7077516))

(declare-fun m!7077518 () Bool)

(assert (=> bm!527747 m!7077518))

(assert (=> d!1961588 d!1962148))

(declare-fun d!1962150 () Bool)

(declare-fun res!2581275 () Bool)

(declare-fun e!3804932 () Bool)

(assert (=> d!1962150 (=> res!2581275 e!3804932)))

(assert (=> d!1962150 (= res!2581275 ((_ is Nil!64706) lt!2348860))))

(assert (=> d!1962150 (= (forall!15296 lt!2348860 lambda!342100) e!3804932)))

(declare-fun b!6254513 () Bool)

(declare-fun e!3804933 () Bool)

(assert (=> b!6254513 (= e!3804932 e!3804933)))

(declare-fun res!2581276 () Bool)

(assert (=> b!6254513 (=> (not res!2581276) (not e!3804933))))

(assert (=> b!6254513 (= res!2581276 (dynLambda!25564 lambda!342100 (h!71154 lt!2348860)))))

(declare-fun b!6254514 () Bool)

(assert (=> b!6254514 (= e!3804933 (forall!15296 (t!378378 lt!2348860) lambda!342100))))

(assert (= (and d!1962150 (not res!2581275)) b!6254513))

(assert (= (and b!6254513 res!2581276) b!6254514))

(declare-fun b_lambda!238001 () Bool)

(assert (=> (not b_lambda!238001) (not b!6254513)))

(declare-fun m!7077520 () Bool)

(assert (=> b!6254513 m!7077520))

(declare-fun m!7077522 () Bool)

(assert (=> b!6254514 m!7077522))

(assert (=> d!1961588 d!1962150))

(declare-fun b!6254529 () Bool)

(declare-fun e!3804948 () Bool)

(declare-fun e!3804946 () Bool)

(assert (=> b!6254529 (= e!3804948 e!3804946)))

(declare-fun res!2581288 () Bool)

(declare-fun call!527757 () Bool)

(assert (=> b!6254529 (= res!2581288 call!527757)))

(assert (=> b!6254529 (=> res!2581288 e!3804946)))

(declare-fun bm!527752 () Bool)

(declare-fun c!1132188 () Bool)

(assert (=> bm!527752 (= call!527757 (nullable!6170 (ite c!1132188 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun b!6254531 () Bool)

(declare-fun e!3804949 () Bool)

(declare-fun e!3804950 () Bool)

(assert (=> b!6254531 (= e!3804949 e!3804950)))

(declare-fun res!2581290 () Bool)

(assert (=> b!6254531 (=> (not res!2581290) (not e!3804950))))

(assert (=> b!6254531 (= res!2581290 (and (not ((_ is EmptyLang!16177) (regOne!32866 (regOne!32866 r!7292)))) (not ((_ is ElementMatch!16177) (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun bm!527753 () Bool)

(declare-fun call!527758 () Bool)

(assert (=> bm!527753 (= call!527758 (nullable!6170 (ite c!1132188 (regTwo!32867 (regOne!32866 (regOne!32866 r!7292))) (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))))))))

(declare-fun b!6254532 () Bool)

(declare-fun e!3804951 () Bool)

(assert (=> b!6254532 (= e!3804950 e!3804951)))

(declare-fun res!2581291 () Bool)

(assert (=> b!6254532 (=> res!2581291 e!3804951)))

(assert (=> b!6254532 (= res!2581291 ((_ is Star!16177) (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun b!6254533 () Bool)

(declare-fun e!3804947 () Bool)

(assert (=> b!6254533 (= e!3804948 e!3804947)))

(declare-fun res!2581289 () Bool)

(assert (=> b!6254533 (= res!2581289 call!527757)))

(assert (=> b!6254533 (=> (not res!2581289) (not e!3804947))))

(declare-fun b!6254534 () Bool)

(assert (=> b!6254534 (= e!3804947 call!527758)))

(declare-fun b!6254535 () Bool)

(assert (=> b!6254535 (= e!3804951 e!3804948)))

(assert (=> b!6254535 (= c!1132188 ((_ is Union!16177) (regOne!32866 (regOne!32866 r!7292))))))

(declare-fun b!6254530 () Bool)

(assert (=> b!6254530 (= e!3804946 call!527758)))

(declare-fun d!1962152 () Bool)

(declare-fun res!2581287 () Bool)

(assert (=> d!1962152 (=> res!2581287 e!3804949)))

(assert (=> d!1962152 (= res!2581287 ((_ is EmptyExpr!16177) (regOne!32866 (regOne!32866 r!7292))))))

(assert (=> d!1962152 (= (nullableFct!2124 (regOne!32866 (regOne!32866 r!7292))) e!3804949)))

(assert (= (and d!1962152 (not res!2581287)) b!6254531))

(assert (= (and b!6254531 res!2581290) b!6254532))

(assert (= (and b!6254532 (not res!2581291)) b!6254535))

(assert (= (and b!6254535 c!1132188) b!6254529))

(assert (= (and b!6254535 (not c!1132188)) b!6254533))

(assert (= (and b!6254529 (not res!2581288)) b!6254530))

(assert (= (and b!6254533 res!2581289) b!6254534))

(assert (= (or b!6254530 b!6254534) bm!527753))

(assert (= (or b!6254529 b!6254533) bm!527752))

(declare-fun m!7077524 () Bool)

(assert (=> bm!527752 m!7077524))

(declare-fun m!7077526 () Bool)

(assert (=> bm!527753 m!7077526))

(assert (=> d!1961584 d!1962152))

(assert (=> d!1961640 d!1962040))

(declare-fun b!6254536 () Bool)

(declare-fun e!3804956 () Bool)

(declare-fun e!3804953 () Bool)

(assert (=> b!6254536 (= e!3804956 e!3804953)))

(declare-fun res!2581298 () Bool)

(assert (=> b!6254536 (=> (not res!2581298) (not e!3804953))))

(declare-fun lt!2349126 () Bool)

(assert (=> b!6254536 (= res!2581298 (not lt!2349126))))

(declare-fun b!6254537 () Bool)

(declare-fun e!3804958 () Bool)

(assert (=> b!6254537 (= e!3804953 e!3804958)))

(declare-fun res!2581296 () Bool)

(assert (=> b!6254537 (=> res!2581296 e!3804958)))

(declare-fun call!527759 () Bool)

(assert (=> b!6254537 (= res!2581296 call!527759)))

(declare-fun b!6254538 () Bool)

(assert (=> b!6254538 (= e!3804958 (not (= (head!12858 Nil!64708) (c!1131644 (regOne!32866 r!7292)))))))

(declare-fun b!6254539 () Bool)

(declare-fun res!2581295 () Bool)

(declare-fun e!3804954 () Bool)

(assert (=> b!6254539 (=> (not res!2581295) (not e!3804954))))

(assert (=> b!6254539 (= res!2581295 (isEmpty!36734 (tail!11943 Nil!64708)))))

(declare-fun b!6254540 () Bool)

(declare-fun e!3804955 () Bool)

(assert (=> b!6254540 (= e!3804955 (matchR!8360 (derivativeStep!4888 (regOne!32866 r!7292) (head!12858 Nil!64708)) (tail!11943 Nil!64708)))))

(declare-fun b!6254541 () Bool)

(declare-fun res!2581299 () Bool)

(assert (=> b!6254541 (=> res!2581299 e!3804958)))

(assert (=> b!6254541 (= res!2581299 (not (isEmpty!36734 (tail!11943 Nil!64708))))))

(declare-fun b!6254542 () Bool)

(declare-fun e!3804957 () Bool)

(assert (=> b!6254542 (= e!3804957 (= lt!2349126 call!527759))))

(declare-fun b!6254544 () Bool)

(declare-fun e!3804952 () Bool)

(assert (=> b!6254544 (= e!3804952 (not lt!2349126))))

(declare-fun b!6254545 () Bool)

(declare-fun res!2581294 () Bool)

(assert (=> b!6254545 (=> res!2581294 e!3804956)))

(assert (=> b!6254545 (= res!2581294 e!3804954)))

(declare-fun res!2581292 () Bool)

(assert (=> b!6254545 (=> (not res!2581292) (not e!3804954))))

(assert (=> b!6254545 (= res!2581292 lt!2349126)))

(declare-fun b!6254546 () Bool)

(assert (=> b!6254546 (= e!3804957 e!3804952)))

(declare-fun c!1132190 () Bool)

(assert (=> b!6254546 (= c!1132190 ((_ is EmptyLang!16177) (regOne!32866 r!7292)))))

(declare-fun b!6254547 () Bool)

(declare-fun res!2581293 () Bool)

(assert (=> b!6254547 (=> res!2581293 e!3804956)))

(assert (=> b!6254547 (= res!2581293 (not ((_ is ElementMatch!16177) (regOne!32866 r!7292))))))

(assert (=> b!6254547 (= e!3804952 e!3804956)))

(declare-fun b!6254548 () Bool)

(assert (=> b!6254548 (= e!3804954 (= (head!12858 Nil!64708) (c!1131644 (regOne!32866 r!7292))))))

(declare-fun b!6254549 () Bool)

(declare-fun res!2581297 () Bool)

(assert (=> b!6254549 (=> (not res!2581297) (not e!3804954))))

(assert (=> b!6254549 (= res!2581297 (not call!527759))))

(declare-fun bm!527754 () Bool)

(assert (=> bm!527754 (= call!527759 (isEmpty!36734 Nil!64708))))

(declare-fun b!6254543 () Bool)

(assert (=> b!6254543 (= e!3804955 (nullable!6170 (regOne!32866 r!7292)))))

(declare-fun d!1962154 () Bool)

(assert (=> d!1962154 e!3804957))

(declare-fun c!1132189 () Bool)

(assert (=> d!1962154 (= c!1132189 ((_ is EmptyExpr!16177) (regOne!32866 r!7292)))))

(assert (=> d!1962154 (= lt!2349126 e!3804955)))

(declare-fun c!1132191 () Bool)

(assert (=> d!1962154 (= c!1132191 (isEmpty!36734 Nil!64708))))

(assert (=> d!1962154 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1962154 (= (matchR!8360 (regOne!32866 r!7292) Nil!64708) lt!2349126)))

(assert (= (and d!1962154 c!1132191) b!6254543))

(assert (= (and d!1962154 (not c!1132191)) b!6254540))

(assert (= (and d!1962154 c!1132189) b!6254542))

(assert (= (and d!1962154 (not c!1132189)) b!6254546))

(assert (= (and b!6254546 c!1132190) b!6254544))

(assert (= (and b!6254546 (not c!1132190)) b!6254547))

(assert (= (and b!6254547 (not res!2581293)) b!6254545))

(assert (= (and b!6254545 res!2581292) b!6254549))

(assert (= (and b!6254549 res!2581297) b!6254539))

(assert (= (and b!6254539 res!2581295) b!6254548))

(assert (= (and b!6254545 (not res!2581294)) b!6254536))

(assert (= (and b!6254536 res!2581298) b!6254537))

(assert (= (and b!6254537 (not res!2581296)) b!6254541))

(assert (= (and b!6254541 (not res!2581299)) b!6254538))

(assert (= (or b!6254542 b!6254537 b!6254549) bm!527754))

(declare-fun m!7077528 () Bool)

(assert (=> d!1962154 m!7077528))

(assert (=> d!1962154 m!7076438))

(declare-fun m!7077530 () Bool)

(assert (=> b!6254538 m!7077530))

(declare-fun m!7077532 () Bool)

(assert (=> b!6254539 m!7077532))

(assert (=> b!6254539 m!7077532))

(declare-fun m!7077534 () Bool)

(assert (=> b!6254539 m!7077534))

(assert (=> b!6254541 m!7077532))

(assert (=> b!6254541 m!7077532))

(assert (=> b!6254541 m!7077534))

(assert (=> b!6254540 m!7077530))

(assert (=> b!6254540 m!7077530))

(declare-fun m!7077536 () Bool)

(assert (=> b!6254540 m!7077536))

(assert (=> b!6254540 m!7077532))

(assert (=> b!6254540 m!7077536))

(assert (=> b!6254540 m!7077532))

(declare-fun m!7077538 () Bool)

(assert (=> b!6254540 m!7077538))

(assert (=> bm!527754 m!7077528))

(assert (=> b!6254548 m!7077530))

(declare-fun m!7077540 () Bool)

(assert (=> b!6254543 m!7077540))

(assert (=> d!1961640 d!1962154))

(assert (=> d!1961640 d!1962104))

(declare-fun d!1962156 () Bool)

(declare-fun c!1132192 () Bool)

(assert (=> d!1962156 (= c!1132192 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3804959 () Bool)

(assert (=> d!1962156 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348854 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3804959)))

(declare-fun b!6254550 () Bool)

(assert (=> b!6254550 (= e!3804959 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348854 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254551 () Bool)

(assert (=> b!6254551 (= e!3804959 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348854 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962156 c!1132192) b!6254550))

(assert (= (and d!1962156 (not c!1132192)) b!6254551))

(assert (=> d!1962156 m!7076144))

(assert (=> d!1962156 m!7077362))

(assert (=> b!6254550 m!7076142))

(declare-fun m!7077542 () Bool)

(assert (=> b!6254550 m!7077542))

(assert (=> b!6254551 m!7076144))

(assert (=> b!6254551 m!7077366))

(assert (=> b!6254551 m!7076142))

(assert (=> b!6254551 m!7077366))

(declare-fun m!7077544 () Bool)

(assert (=> b!6254551 m!7077544))

(assert (=> b!6254551 m!7076144))

(assert (=> b!6254551 m!7077370))

(assert (=> b!6254551 m!7077544))

(assert (=> b!6254551 m!7077370))

(declare-fun m!7077546 () Bool)

(assert (=> b!6254551 m!7077546))

(assert (=> b!6253122 d!1962156))

(declare-fun bs!1557430 () Bool)

(declare-fun d!1962158 () Bool)

(assert (= bs!1557430 (and d!1962158 d!1961556)))

(declare-fun lambda!342220 () Int)

(assert (=> bs!1557430 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342220 lambda!342091))))

(declare-fun bs!1557431 () Bool)

(assert (= bs!1557431 (and d!1962158 d!1962076)))

(assert (=> bs!1557431 (= lambda!342220 lambda!342211)))

(declare-fun bs!1557432 () Bool)

(assert (= bs!1557432 (and d!1962158 d!1962098)))

(assert (=> bs!1557432 (= lambda!342220 lambda!342212)))

(declare-fun bs!1557433 () Bool)

(assert (= bs!1557433 (and d!1962158 d!1962140)))

(assert (=> bs!1557433 (= lambda!342220 lambda!342218)))

(declare-fun bs!1557434 () Bool)

(assert (= bs!1557434 (and d!1962158 d!1961632)))

(assert (=> bs!1557434 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342220 lambda!342122))))

(declare-fun bs!1557435 () Bool)

(assert (= bs!1557435 (and d!1962158 b!6252643)))

(assert (=> bs!1557435 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342220 lambda!342043))))

(assert (=> d!1962158 true))

(assert (=> d!1962158 (= (derivationStepZipper!2143 lt!2348854 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348854 lambda!342220))))

(declare-fun bs!1557436 () Bool)

(assert (= bs!1557436 d!1962158))

(declare-fun m!7077548 () Bool)

(assert (=> bs!1557436 m!7077548))

(assert (=> b!6253122 d!1962158))

(assert (=> b!6253122 d!1962078))

(assert (=> b!6253122 d!1962080))

(declare-fun b!6254552 () Bool)

(declare-fun e!3804963 () Bool)

(assert (=> b!6254552 (= e!3804963 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 lt!2348859)))))))

(declare-fun b!6254553 () Bool)

(declare-fun e!3804960 () (InoxSet Context!11122))

(declare-fun call!527760 () (InoxSet Context!11122))

(assert (=> b!6254553 (= e!3804960 call!527760)))

(declare-fun b!6254554 () Bool)

(declare-fun e!3804961 () (InoxSet Context!11122))

(declare-fun call!527763 () (InoxSet Context!11122))

(declare-fun call!527764 () (InoxSet Context!11122))

(assert (=> b!6254554 (= e!3804961 ((_ map or) call!527763 call!527764))))

(declare-fun d!1962160 () Bool)

(declare-fun c!1132195 () Bool)

(assert (=> d!1962160 (= c!1132195 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 lt!2348859))) (= (c!1131644 (h!71154 (exprs!6061 lt!2348859))) (h!71156 s!2326))))))

(declare-fun e!3804964 () (InoxSet Context!11122))

(assert (=> d!1962160 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348859)) (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (h!71156 s!2326)) e!3804964)))

(declare-fun b!6254555 () Bool)

(assert (=> b!6254555 (= e!3804964 e!3804961)))

(declare-fun c!1132194 () Bool)

(assert (=> b!6254555 (= c!1132194 ((_ is Union!16177) (h!71154 (exprs!6061 lt!2348859))))))

(declare-fun bm!527755 () Bool)

(declare-fun call!527761 () List!64830)

(declare-fun c!1132197 () Bool)

(declare-fun c!1132196 () Bool)

(assert (=> bm!527755 (= call!527763 (derivationStepZipperDown!1425 (ite c!1132194 (regOne!32867 (h!71154 (exprs!6061 lt!2348859))) (ite c!1132196 (regTwo!32866 (h!71154 (exprs!6061 lt!2348859))) (ite c!1132197 (regOne!32866 (h!71154 (exprs!6061 lt!2348859))) (reg!16506 (h!71154 (exprs!6061 lt!2348859)))))) (ite (or c!1132194 c!1132196) (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (Context!11123 call!527761)) (h!71156 s!2326)))))

(declare-fun call!527765 () List!64830)

(declare-fun bm!527756 () Bool)

(assert (=> bm!527756 (= call!527765 ($colon$colon!2044 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859)))) (ite (or c!1132196 c!1132197) (regTwo!32866 (h!71154 (exprs!6061 lt!2348859))) (h!71154 (exprs!6061 lt!2348859)))))))

(declare-fun b!6254556 () Bool)

(assert (=> b!6254556 (= c!1132196 e!3804963)))

(declare-fun res!2581300 () Bool)

(assert (=> b!6254556 (=> (not res!2581300) (not e!3804963))))

(assert (=> b!6254556 (= res!2581300 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348859))))))

(declare-fun e!3804962 () (InoxSet Context!11122))

(assert (=> b!6254556 (= e!3804961 e!3804962)))

(declare-fun b!6254557 () Bool)

(assert (=> b!6254557 (= e!3804962 e!3804960)))

(assert (=> b!6254557 (= c!1132197 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348859))))))

(declare-fun bm!527757 () Bool)

(assert (=> bm!527757 (= call!527761 call!527765)))

(declare-fun bm!527758 () Bool)

(declare-fun call!527762 () (InoxSet Context!11122))

(assert (=> bm!527758 (= call!527760 call!527762)))

(declare-fun b!6254558 () Bool)

(assert (=> b!6254558 (= e!3804962 ((_ map or) call!527764 call!527762))))

(declare-fun b!6254559 () Bool)

(assert (=> b!6254559 (= e!3804964 (store ((as const (Array Context!11122 Bool)) false) (Context!11123 (t!378378 (exprs!6061 lt!2348859))) true))))

(declare-fun bm!527759 () Bool)

(assert (=> bm!527759 (= call!527764 (derivationStepZipperDown!1425 (ite c!1132194 (regTwo!32867 (h!71154 (exprs!6061 lt!2348859))) (regOne!32866 (h!71154 (exprs!6061 lt!2348859)))) (ite c!1132194 (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (Context!11123 call!527765)) (h!71156 s!2326)))))

(declare-fun b!6254560 () Bool)

(declare-fun e!3804965 () (InoxSet Context!11122))

(assert (=> b!6254560 (= e!3804965 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254561 () Bool)

(declare-fun c!1132193 () Bool)

(assert (=> b!6254561 (= c!1132193 ((_ is Star!16177) (h!71154 (exprs!6061 lt!2348859))))))

(assert (=> b!6254561 (= e!3804960 e!3804965)))

(declare-fun bm!527760 () Bool)

(assert (=> bm!527760 (= call!527762 call!527763)))

(declare-fun b!6254562 () Bool)

(assert (=> b!6254562 (= e!3804965 call!527760)))

(assert (= (and d!1962160 c!1132195) b!6254559))

(assert (= (and d!1962160 (not c!1132195)) b!6254555))

(assert (= (and b!6254555 c!1132194) b!6254554))

(assert (= (and b!6254555 (not c!1132194)) b!6254556))

(assert (= (and b!6254556 res!2581300) b!6254552))

(assert (= (and b!6254556 c!1132196) b!6254558))

(assert (= (and b!6254556 (not c!1132196)) b!6254557))

(assert (= (and b!6254557 c!1132197) b!6254553))

(assert (= (and b!6254557 (not c!1132197)) b!6254561))

(assert (= (and b!6254561 c!1132193) b!6254562))

(assert (= (and b!6254561 (not c!1132193)) b!6254560))

(assert (= (or b!6254553 b!6254562) bm!527757))

(assert (= (or b!6254553 b!6254562) bm!527758))

(assert (= (or b!6254558 bm!527757) bm!527756))

(assert (= (or b!6254558 bm!527758) bm!527760))

(assert (= (or b!6254554 b!6254558) bm!527759))

(assert (= (or b!6254554 bm!527760) bm!527755))

(declare-fun m!7077550 () Bool)

(assert (=> bm!527756 m!7077550))

(declare-fun m!7077552 () Bool)

(assert (=> bm!527759 m!7077552))

(declare-fun m!7077554 () Bool)

(assert (=> b!6254559 m!7077554))

(declare-fun m!7077556 () Bool)

(assert (=> bm!527755 m!7077556))

(declare-fun m!7077558 () Bool)

(assert (=> b!6254552 m!7077558))

(assert (=> bm!527568 d!1962160))

(assert (=> bs!1556835 d!1961630))

(declare-fun b!6254563 () Bool)

(declare-fun e!3804970 () Bool)

(declare-fun e!3804967 () Bool)

(assert (=> b!6254563 (= e!3804970 e!3804967)))

(declare-fun res!2581307 () Bool)

(assert (=> b!6254563 (=> (not res!2581307) (not e!3804967))))

(declare-fun lt!2349127 () Bool)

(assert (=> b!6254563 (= res!2581307 (not lt!2349127))))

(declare-fun b!6254564 () Bool)

(declare-fun e!3804972 () Bool)

(assert (=> b!6254564 (= e!3804967 e!3804972)))

(declare-fun res!2581305 () Bool)

(assert (=> b!6254564 (=> res!2581305 e!3804972)))

(declare-fun call!527766 () Bool)

(assert (=> b!6254564 (= res!2581305 call!527766)))

(declare-fun b!6254565 () Bool)

(assert (=> b!6254565 (= e!3804972 (not (= (head!12858 (tail!11943 s!2326)) (c!1131644 (derivativeStep!4888 r!7292 (head!12858 s!2326))))))))

(declare-fun b!6254566 () Bool)

(declare-fun res!2581304 () Bool)

(declare-fun e!3804968 () Bool)

(assert (=> b!6254566 (=> (not res!2581304) (not e!3804968))))

(assert (=> b!6254566 (= res!2581304 (isEmpty!36734 (tail!11943 (tail!11943 s!2326))))))

(declare-fun b!6254567 () Bool)

(declare-fun e!3804969 () Bool)

(assert (=> b!6254567 (= e!3804969 (matchR!8360 (derivativeStep!4888 (derivativeStep!4888 r!7292 (head!12858 s!2326)) (head!12858 (tail!11943 s!2326))) (tail!11943 (tail!11943 s!2326))))))

(declare-fun b!6254568 () Bool)

(declare-fun res!2581308 () Bool)

(assert (=> b!6254568 (=> res!2581308 e!3804972)))

(assert (=> b!6254568 (= res!2581308 (not (isEmpty!36734 (tail!11943 (tail!11943 s!2326)))))))

(declare-fun b!6254569 () Bool)

(declare-fun e!3804971 () Bool)

(assert (=> b!6254569 (= e!3804971 (= lt!2349127 call!527766))))

(declare-fun b!6254571 () Bool)

(declare-fun e!3804966 () Bool)

(assert (=> b!6254571 (= e!3804966 (not lt!2349127))))

(declare-fun b!6254572 () Bool)

(declare-fun res!2581303 () Bool)

(assert (=> b!6254572 (=> res!2581303 e!3804970)))

(assert (=> b!6254572 (= res!2581303 e!3804968)))

(declare-fun res!2581301 () Bool)

(assert (=> b!6254572 (=> (not res!2581301) (not e!3804968))))

(assert (=> b!6254572 (= res!2581301 lt!2349127)))

(declare-fun b!6254573 () Bool)

(assert (=> b!6254573 (= e!3804971 e!3804966)))

(declare-fun c!1132199 () Bool)

(assert (=> b!6254573 (= c!1132199 ((_ is EmptyLang!16177) (derivativeStep!4888 r!7292 (head!12858 s!2326))))))

(declare-fun b!6254574 () Bool)

(declare-fun res!2581302 () Bool)

(assert (=> b!6254574 (=> res!2581302 e!3804970)))

(assert (=> b!6254574 (= res!2581302 (not ((_ is ElementMatch!16177) (derivativeStep!4888 r!7292 (head!12858 s!2326)))))))

(assert (=> b!6254574 (= e!3804966 e!3804970)))

(declare-fun b!6254575 () Bool)

(assert (=> b!6254575 (= e!3804968 (= (head!12858 (tail!11943 s!2326)) (c!1131644 (derivativeStep!4888 r!7292 (head!12858 s!2326)))))))

(declare-fun b!6254576 () Bool)

(declare-fun res!2581306 () Bool)

(assert (=> b!6254576 (=> (not res!2581306) (not e!3804968))))

(assert (=> b!6254576 (= res!2581306 (not call!527766))))

(declare-fun bm!527761 () Bool)

(assert (=> bm!527761 (= call!527766 (isEmpty!36734 (tail!11943 s!2326)))))

(declare-fun b!6254570 () Bool)

(assert (=> b!6254570 (= e!3804969 (nullable!6170 (derivativeStep!4888 r!7292 (head!12858 s!2326))))))

(declare-fun d!1962162 () Bool)

(assert (=> d!1962162 e!3804971))

(declare-fun c!1132198 () Bool)

(assert (=> d!1962162 (= c!1132198 ((_ is EmptyExpr!16177) (derivativeStep!4888 r!7292 (head!12858 s!2326))))))

(assert (=> d!1962162 (= lt!2349127 e!3804969)))

(declare-fun c!1132200 () Bool)

(assert (=> d!1962162 (= c!1132200 (isEmpty!36734 (tail!11943 s!2326)))))

(assert (=> d!1962162 (validRegex!7913 (derivativeStep!4888 r!7292 (head!12858 s!2326)))))

(assert (=> d!1962162 (= (matchR!8360 (derivativeStep!4888 r!7292 (head!12858 s!2326)) (tail!11943 s!2326)) lt!2349127)))

(assert (= (and d!1962162 c!1132200) b!6254570))

(assert (= (and d!1962162 (not c!1132200)) b!6254567))

(assert (= (and d!1962162 c!1132198) b!6254569))

(assert (= (and d!1962162 (not c!1132198)) b!6254573))

(assert (= (and b!6254573 c!1132199) b!6254571))

(assert (= (and b!6254573 (not c!1132199)) b!6254574))

(assert (= (and b!6254574 (not res!2581302)) b!6254572))

(assert (= (and b!6254572 res!2581301) b!6254576))

(assert (= (and b!6254576 res!2581306) b!6254566))

(assert (= (and b!6254566 res!2581304) b!6254575))

(assert (= (and b!6254572 (not res!2581303)) b!6254563))

(assert (= (and b!6254563 res!2581307) b!6254564))

(assert (= (and b!6254564 (not res!2581305)) b!6254568))

(assert (= (and b!6254568 (not res!2581308)) b!6254565))

(assert (= (or b!6254569 b!6254564 b!6254576) bm!527761))

(assert (=> d!1962162 m!7076318))

(assert (=> d!1962162 m!7076320))

(assert (=> d!1962162 m!7076322))

(declare-fun m!7077560 () Bool)

(assert (=> d!1962162 m!7077560))

(assert (=> b!6254565 m!7076318))

(declare-fun m!7077562 () Bool)

(assert (=> b!6254565 m!7077562))

(assert (=> b!6254566 m!7076318))

(declare-fun m!7077564 () Bool)

(assert (=> b!6254566 m!7077564))

(assert (=> b!6254566 m!7077564))

(declare-fun m!7077566 () Bool)

(assert (=> b!6254566 m!7077566))

(assert (=> b!6254568 m!7076318))

(assert (=> b!6254568 m!7077564))

(assert (=> b!6254568 m!7077564))

(assert (=> b!6254568 m!7077566))

(assert (=> b!6254567 m!7076318))

(assert (=> b!6254567 m!7077562))

(assert (=> b!6254567 m!7076322))

(assert (=> b!6254567 m!7077562))

(declare-fun m!7077568 () Bool)

(assert (=> b!6254567 m!7077568))

(assert (=> b!6254567 m!7076318))

(assert (=> b!6254567 m!7077564))

(assert (=> b!6254567 m!7077568))

(assert (=> b!6254567 m!7077564))

(declare-fun m!7077570 () Bool)

(assert (=> b!6254567 m!7077570))

(assert (=> bm!527761 m!7076318))

(assert (=> bm!527761 m!7076320))

(assert (=> b!6254575 m!7076318))

(assert (=> b!6254575 m!7077562))

(assert (=> b!6254570 m!7076322))

(declare-fun m!7077572 () Bool)

(assert (=> b!6254570 m!7077572))

(assert (=> b!6253403 d!1962162))

(declare-fun b!6254597 () Bool)

(declare-fun e!3804986 () Regex!16177)

(declare-fun e!3804984 () Regex!16177)

(assert (=> b!6254597 (= e!3804986 e!3804984)))

(declare-fun c!1132211 () Bool)

(assert (=> b!6254597 (= c!1132211 ((_ is ElementMatch!16177) r!7292))))

(declare-fun bm!527770 () Bool)

(declare-fun call!527778 () Regex!16177)

(declare-fun call!527777 () Regex!16177)

(assert (=> bm!527770 (= call!527778 call!527777)))

(declare-fun d!1962164 () Bool)

(declare-fun lt!2349130 () Regex!16177)

(assert (=> d!1962164 (validRegex!7913 lt!2349130)))

(assert (=> d!1962164 (= lt!2349130 e!3804986)))

(declare-fun c!1132212 () Bool)

(assert (=> d!1962164 (= c!1132212 (or ((_ is EmptyExpr!16177) r!7292) ((_ is EmptyLang!16177) r!7292)))))

(assert (=> d!1962164 (validRegex!7913 r!7292)))

(assert (=> d!1962164 (= (derivativeStep!4888 r!7292 (head!12858 s!2326)) lt!2349130)))

(declare-fun b!6254598 () Bool)

(declare-fun e!3804985 () Regex!16177)

(assert (=> b!6254598 (= e!3804985 (Union!16177 (Concat!25022 call!527778 (regTwo!32866 r!7292)) EmptyLang!16177))))

(declare-fun b!6254599 () Bool)

(declare-fun c!1132214 () Bool)

(assert (=> b!6254599 (= c!1132214 ((_ is Union!16177) r!7292))))

(declare-fun e!3804987 () Regex!16177)

(assert (=> b!6254599 (= e!3804984 e!3804987)))

(declare-fun b!6254600 () Bool)

(declare-fun call!527775 () Regex!16177)

(assert (=> b!6254600 (= e!3804985 (Union!16177 (Concat!25022 call!527775 (regTwo!32866 r!7292)) call!527778))))

(declare-fun b!6254601 () Bool)

(assert (=> b!6254601 (= e!3804986 EmptyLang!16177)))

(declare-fun b!6254602 () Bool)

(declare-fun e!3804983 () Regex!16177)

(assert (=> b!6254602 (= e!3804987 e!3804983)))

(declare-fun c!1132215 () Bool)

(assert (=> b!6254602 (= c!1132215 ((_ is Star!16177) r!7292))))

(declare-fun b!6254603 () Bool)

(declare-fun call!527776 () Regex!16177)

(assert (=> b!6254603 (= e!3804987 (Union!16177 call!527777 call!527776))))

(declare-fun c!1132213 () Bool)

(declare-fun bm!527771 () Bool)

(assert (=> bm!527771 (= call!527777 (derivativeStep!4888 (ite c!1132214 (regOne!32867 r!7292) (ite c!1132213 (regTwo!32866 r!7292) (regOne!32866 r!7292))) (head!12858 s!2326)))))

(declare-fun b!6254604 () Bool)

(assert (=> b!6254604 (= e!3804983 (Concat!25022 call!527775 r!7292))))

(declare-fun b!6254605 () Bool)

(assert (=> b!6254605 (= c!1132213 (nullable!6170 (regOne!32866 r!7292)))))

(assert (=> b!6254605 (= e!3804983 e!3804985)))

(declare-fun b!6254606 () Bool)

(assert (=> b!6254606 (= e!3804984 (ite (= (head!12858 s!2326) (c!1131644 r!7292)) EmptyExpr!16177 EmptyLang!16177))))

(declare-fun bm!527772 () Bool)

(assert (=> bm!527772 (= call!527775 call!527776)))

(declare-fun bm!527773 () Bool)

(assert (=> bm!527773 (= call!527776 (derivativeStep!4888 (ite c!1132214 (regTwo!32867 r!7292) (ite c!1132215 (reg!16506 r!7292) (regOne!32866 r!7292))) (head!12858 s!2326)))))

(assert (= (and d!1962164 c!1132212) b!6254601))

(assert (= (and d!1962164 (not c!1132212)) b!6254597))

(assert (= (and b!6254597 c!1132211) b!6254606))

(assert (= (and b!6254597 (not c!1132211)) b!6254599))

(assert (= (and b!6254599 c!1132214) b!6254603))

(assert (= (and b!6254599 (not c!1132214)) b!6254602))

(assert (= (and b!6254602 c!1132215) b!6254604))

(assert (= (and b!6254602 (not c!1132215)) b!6254605))

(assert (= (and b!6254605 c!1132213) b!6254600))

(assert (= (and b!6254605 (not c!1132213)) b!6254598))

(assert (= (or b!6254600 b!6254598) bm!527770))

(assert (= (or b!6254604 b!6254600) bm!527772))

(assert (= (or b!6254603 bm!527772) bm!527773))

(assert (= (or b!6254603 bm!527770) bm!527771))

(declare-fun m!7077574 () Bool)

(assert (=> d!1962164 m!7077574))

(assert (=> d!1962164 m!7075774))

(assert (=> bm!527771 m!7076316))

(declare-fun m!7077576 () Bool)

(assert (=> bm!527771 m!7077576))

(assert (=> b!6254605 m!7077540))

(assert (=> bm!527773 m!7076316))

(declare-fun m!7077578 () Bool)

(assert (=> bm!527773 m!7077578))

(assert (=> b!6253403 d!1962164))

(declare-fun d!1962166 () Bool)

(assert (=> d!1962166 (= (head!12858 s!2326) (h!71156 s!2326))))

(assert (=> b!6253403 d!1962166))

(assert (=> b!6253403 d!1962068))

(declare-fun bs!1557437 () Bool)

(declare-fun d!1962168 () Bool)

(assert (= bs!1557437 (and d!1962168 d!1961580)))

(declare-fun lambda!342221 () Int)

(assert (=> bs!1557437 (= lambda!342221 lambda!342094)))

(declare-fun bs!1557438 () Bool)

(assert (= bs!1557438 (and d!1962168 d!1961604)))

(assert (=> bs!1557438 (= lambda!342221 lambda!342109)))

(declare-fun bs!1557439 () Bool)

(assert (= bs!1557439 (and d!1962168 d!1961638)))

(assert (=> bs!1557439 (= lambda!342221 lambda!342123)))

(declare-fun bs!1557440 () Bool)

(assert (= bs!1557440 (and d!1962168 b!6254359)))

(assert (=> bs!1557440 (not (= lambda!342221 lambda!342206))))

(declare-fun bs!1557441 () Bool)

(assert (= bs!1557441 (and d!1962168 d!1961582)))

(assert (=> bs!1557441 (= lambda!342221 lambda!342097)))

(declare-fun bs!1557442 () Bool)

(assert (= bs!1557442 (and d!1962168 b!6254357)))

(assert (=> bs!1557442 (not (= lambda!342221 lambda!342205))))

(declare-fun bs!1557443 () Bool)

(assert (= bs!1557443 (and d!1962168 d!1961654)))

(assert (=> bs!1557443 (= lambda!342221 lambda!342133)))

(declare-fun bs!1557444 () Bool)

(assert (= bs!1557444 (and d!1962168 d!1962064)))

(assert (=> bs!1557444 (= lambda!342221 lambda!342210)))

(declare-fun bs!1557445 () Bool)

(assert (= bs!1557445 (and d!1962168 d!1961588)))

(assert (=> bs!1557445 (= lambda!342221 lambda!342100)))

(assert (=> d!1962168 (= (inv!83689 (h!71155 (t!378379 zl!343))) (forall!15296 (exprs!6061 (h!71155 (t!378379 zl!343))) lambda!342221))))

(declare-fun bs!1557446 () Bool)

(assert (= bs!1557446 d!1962168))

(declare-fun m!7077580 () Bool)

(assert (=> bs!1557446 m!7077580))

(assert (=> b!6253543 d!1962168))

(declare-fun d!1962170 () Bool)

(assert (=> d!1962170 (= (isEmpty!36731 (t!378378 lt!2348860)) ((_ is Nil!64706) (t!378378 lt!2348860)))))

(assert (=> b!6253318 d!1962170))

(declare-fun b!6254607 () Bool)

(declare-fun e!3804991 () Bool)

(declare-fun e!3804990 () Bool)

(assert (=> b!6254607 (= e!3804991 e!3804990)))

(declare-fun res!2581310 () Bool)

(assert (=> b!6254607 (=> (not res!2581310) (not e!3804990))))

(declare-fun call!527779 () Bool)

(assert (=> b!6254607 (= res!2581310 call!527779)))

(declare-fun b!6254608 () Bool)

(declare-fun e!3804994 () Bool)

(declare-fun e!3804988 () Bool)

(assert (=> b!6254608 (= e!3804994 e!3804988)))

(declare-fun res!2581311 () Bool)

(assert (=> b!6254608 (= res!2581311 (not (nullable!6170 (reg!16506 lt!2348976))))))

(assert (=> b!6254608 (=> (not res!2581311) (not e!3804988))))

(declare-fun b!6254609 () Bool)

(declare-fun e!3804992 () Bool)

(assert (=> b!6254609 (= e!3804992 e!3804994)))

(declare-fun c!1132216 () Bool)

(assert (=> b!6254609 (= c!1132216 ((_ is Star!16177) lt!2348976))))

(declare-fun d!1962172 () Bool)

(declare-fun res!2581309 () Bool)

(assert (=> d!1962172 (=> res!2581309 e!3804992)))

(assert (=> d!1962172 (= res!2581309 ((_ is ElementMatch!16177) lt!2348976))))

(assert (=> d!1962172 (= (validRegex!7913 lt!2348976) e!3804992)))

(declare-fun bm!527774 () Bool)

(declare-fun call!527781 () Bool)

(declare-fun c!1132217 () Bool)

(assert (=> bm!527774 (= call!527781 (validRegex!7913 (ite c!1132217 (regTwo!32867 lt!2348976) (regTwo!32866 lt!2348976))))))

(declare-fun b!6254610 () Bool)

(declare-fun res!2581312 () Bool)

(assert (=> b!6254610 (=> res!2581312 e!3804991)))

(assert (=> b!6254610 (= res!2581312 (not ((_ is Concat!25022) lt!2348976)))))

(declare-fun e!3804989 () Bool)

(assert (=> b!6254610 (= e!3804989 e!3804991)))

(declare-fun bm!527775 () Bool)

(declare-fun call!527780 () Bool)

(assert (=> bm!527775 (= call!527779 call!527780)))

(declare-fun b!6254611 () Bool)

(declare-fun res!2581313 () Bool)

(declare-fun e!3804993 () Bool)

(assert (=> b!6254611 (=> (not res!2581313) (not e!3804993))))

(assert (=> b!6254611 (= res!2581313 call!527779)))

(assert (=> b!6254611 (= e!3804989 e!3804993)))

(declare-fun b!6254612 () Bool)

(assert (=> b!6254612 (= e!3804993 call!527781)))

(declare-fun b!6254613 () Bool)

(assert (=> b!6254613 (= e!3804994 e!3804989)))

(assert (=> b!6254613 (= c!1132217 ((_ is Union!16177) lt!2348976))))

(declare-fun bm!527776 () Bool)

(assert (=> bm!527776 (= call!527780 (validRegex!7913 (ite c!1132216 (reg!16506 lt!2348976) (ite c!1132217 (regOne!32867 lt!2348976) (regOne!32866 lt!2348976)))))))

(declare-fun b!6254614 () Bool)

(assert (=> b!6254614 (= e!3804990 call!527781)))

(declare-fun b!6254615 () Bool)

(assert (=> b!6254615 (= e!3804988 call!527780)))

(assert (= (and d!1962172 (not res!2581309)) b!6254609))

(assert (= (and b!6254609 c!1132216) b!6254608))

(assert (= (and b!6254609 (not c!1132216)) b!6254613))

(assert (= (and b!6254608 res!2581311) b!6254615))

(assert (= (and b!6254613 c!1132217) b!6254611))

(assert (= (and b!6254613 (not c!1132217)) b!6254610))

(assert (= (and b!6254611 res!2581313) b!6254612))

(assert (= (and b!6254610 (not res!2581312)) b!6254607))

(assert (= (and b!6254607 res!2581310) b!6254614))

(assert (= (or b!6254612 b!6254614) bm!527774))

(assert (= (or b!6254611 b!6254607) bm!527775))

(assert (= (or b!6254615 bm!527775) bm!527776))

(declare-fun m!7077582 () Bool)

(assert (=> b!6254608 m!7077582))

(declare-fun m!7077584 () Bool)

(assert (=> bm!527774 m!7077584))

(declare-fun m!7077586 () Bool)

(assert (=> bm!527776 m!7077586))

(assert (=> d!1961580 d!1962172))

(declare-fun d!1962174 () Bool)

(declare-fun res!2581314 () Bool)

(declare-fun e!3804995 () Bool)

(assert (=> d!1962174 (=> res!2581314 e!3804995)))

(assert (=> d!1962174 (= res!2581314 ((_ is Nil!64706) (unfocusZipperList!1598 zl!343)))))

(assert (=> d!1962174 (= (forall!15296 (unfocusZipperList!1598 zl!343) lambda!342094) e!3804995)))

(declare-fun b!6254616 () Bool)

(declare-fun e!3804996 () Bool)

(assert (=> b!6254616 (= e!3804995 e!3804996)))

(declare-fun res!2581315 () Bool)

(assert (=> b!6254616 (=> (not res!2581315) (not e!3804996))))

(assert (=> b!6254616 (= res!2581315 (dynLambda!25564 lambda!342094 (h!71154 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6254617 () Bool)

(assert (=> b!6254617 (= e!3804996 (forall!15296 (t!378378 (unfocusZipperList!1598 zl!343)) lambda!342094))))

(assert (= (and d!1962174 (not res!2581314)) b!6254616))

(assert (= (and b!6254616 res!2581315) b!6254617))

(declare-fun b_lambda!238003 () Bool)

(assert (=> (not b_lambda!238003) (not b!6254616)))

(declare-fun m!7077588 () Bool)

(assert (=> b!6254616 m!7077588))

(declare-fun m!7077590 () Bool)

(assert (=> b!6254617 m!7077590))

(assert (=> d!1961580 d!1962174))

(declare-fun e!3805000 () Bool)

(declare-fun b!6254618 () Bool)

(assert (=> b!6254618 (= e!3805000 (nullable!6170 (regOne!32866 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))))

(declare-fun b!6254619 () Bool)

(declare-fun e!3804997 () (InoxSet Context!11122))

(declare-fun call!527782 () (InoxSet Context!11122))

(assert (=> b!6254619 (= e!3804997 call!527782)))

(declare-fun b!6254620 () Bool)

(declare-fun e!3804998 () (InoxSet Context!11122))

(declare-fun call!527785 () (InoxSet Context!11122))

(declare-fun call!527786 () (InoxSet Context!11122))

(assert (=> b!6254620 (= e!3804998 ((_ map or) call!527785 call!527786))))

(declare-fun c!1132220 () Bool)

(declare-fun d!1962176 () Bool)

(assert (=> d!1962176 (= c!1132220 (and ((_ is ElementMatch!16177) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (= (c!1131644 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326))))))

(declare-fun e!3805001 () (InoxSet Context!11122))

(assert (=> d!1962176 (= (derivationStepZipperDown!1425 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))) (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539)) (h!71156 s!2326)) e!3805001)))

(declare-fun b!6254621 () Bool)

(assert (=> b!6254621 (= e!3805001 e!3804998)))

(declare-fun c!1132219 () Bool)

(assert (=> b!6254621 (= c!1132219 ((_ is Union!16177) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun c!1132221 () Bool)

(declare-fun c!1132222 () Bool)

(declare-fun bm!527777 () Bool)

(declare-fun call!527783 () List!64830)

(assert (=> bm!527777 (= call!527785 (derivationStepZipperDown!1425 (ite c!1132219 (regOne!32867 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (ite c!1132221 (regTwo!32866 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (ite c!1132222 (regOne!32866 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (reg!16506 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))) (ite (or c!1132219 c!1132221) (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539)) (Context!11123 call!527783)) (h!71156 s!2326)))))

(declare-fun call!527787 () List!64830)

(declare-fun bm!527778 () Bool)

(assert (=> bm!527778 (= call!527787 ($colon$colon!2044 (exprs!6061 (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539))) (ite (or c!1132221 c!1132222) (regTwo!32866 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))))

(declare-fun b!6254622 () Bool)

(assert (=> b!6254622 (= c!1132221 e!3805000)))

(declare-fun res!2581316 () Bool)

(assert (=> b!6254622 (=> (not res!2581316) (not e!3805000))))

(assert (=> b!6254622 (= res!2581316 ((_ is Concat!25022) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun e!3804999 () (InoxSet Context!11122))

(assert (=> b!6254622 (= e!3804998 e!3804999)))

(declare-fun b!6254623 () Bool)

(assert (=> b!6254623 (= e!3804999 e!3804997)))

(assert (=> b!6254623 (= c!1132222 ((_ is Concat!25022) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun bm!527779 () Bool)

(assert (=> bm!527779 (= call!527783 call!527787)))

(declare-fun bm!527780 () Bool)

(declare-fun call!527784 () (InoxSet Context!11122))

(assert (=> bm!527780 (= call!527782 call!527784)))

(declare-fun b!6254624 () Bool)

(assert (=> b!6254624 (= e!3804999 ((_ map or) call!527786 call!527784))))

(declare-fun b!6254625 () Bool)

(assert (=> b!6254625 (= e!3805001 (store ((as const (Array Context!11122 Bool)) false) (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539)) true))))

(declare-fun bm!527781 () Bool)

(assert (=> bm!527781 (= call!527786 (derivationStepZipperDown!1425 (ite c!1132219 (regTwo!32867 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))) (regOne!32866 (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))))) (ite c!1132219 (ite (or c!1131813 c!1131815) lt!2348878 (Context!11123 call!527539)) (Context!11123 call!527787)) (h!71156 s!2326)))))

(declare-fun b!6254626 () Bool)

(declare-fun e!3805002 () (InoxSet Context!11122))

(assert (=> b!6254626 (= e!3805002 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254627 () Bool)

(declare-fun c!1132218 () Bool)

(assert (=> b!6254627 (= c!1132218 ((_ is Star!16177) (ite c!1131813 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131815 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1131816 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))))

(assert (=> b!6254627 (= e!3804997 e!3805002)))

(declare-fun bm!527782 () Bool)

(assert (=> bm!527782 (= call!527784 call!527785)))

(declare-fun b!6254628 () Bool)

(assert (=> b!6254628 (= e!3805002 call!527782)))

(assert (= (and d!1962176 c!1132220) b!6254625))

(assert (= (and d!1962176 (not c!1132220)) b!6254621))

(assert (= (and b!6254621 c!1132219) b!6254620))

(assert (= (and b!6254621 (not c!1132219)) b!6254622))

(assert (= (and b!6254622 res!2581316) b!6254618))

(assert (= (and b!6254622 c!1132221) b!6254624))

(assert (= (and b!6254622 (not c!1132221)) b!6254623))

(assert (= (and b!6254623 c!1132222) b!6254619))

(assert (= (and b!6254623 (not c!1132222)) b!6254627))

(assert (= (and b!6254627 c!1132218) b!6254628))

(assert (= (and b!6254627 (not c!1132218)) b!6254626))

(assert (= (or b!6254619 b!6254628) bm!527779))

(assert (= (or b!6254619 b!6254628) bm!527780))

(assert (= (or b!6254624 bm!527779) bm!527778))

(assert (= (or b!6254624 bm!527780) bm!527782))

(assert (= (or b!6254620 b!6254624) bm!527781))

(assert (= (or b!6254620 bm!527782) bm!527777))

(declare-fun m!7077592 () Bool)

(assert (=> bm!527778 m!7077592))

(declare-fun m!7077594 () Bool)

(assert (=> bm!527781 m!7077594))

(declare-fun m!7077596 () Bool)

(assert (=> b!6254625 m!7077596))

(declare-fun m!7077598 () Bool)

(assert (=> bm!527777 m!7077598))

(declare-fun m!7077600 () Bool)

(assert (=> b!6254618 m!7077600))

(assert (=> bm!527533 d!1962176))

(declare-fun b!6254629 () Bool)

(declare-fun e!3805007 () Bool)

(declare-fun e!3805004 () Bool)

(assert (=> b!6254629 (= e!3805007 e!3805004)))

(declare-fun res!2581323 () Bool)

(assert (=> b!6254629 (=> (not res!2581323) (not e!3805004))))

(declare-fun lt!2349131 () Bool)

(assert (=> b!6254629 (= res!2581323 (not lt!2349131))))

(declare-fun b!6254630 () Bool)

(declare-fun e!3805009 () Bool)

(assert (=> b!6254630 (= e!3805004 e!3805009)))

(declare-fun res!2581321 () Bool)

(assert (=> b!6254630 (=> res!2581321 e!3805009)))

(declare-fun call!527788 () Bool)

(assert (=> b!6254630 (= res!2581321 call!527788)))

(declare-fun b!6254631 () Bool)

(assert (=> b!6254631 (= e!3805009 (not (= (head!12858 (_2!36459 (get!22357 lt!2349021))) (c!1131644 (regTwo!32866 r!7292)))))))

(declare-fun b!6254632 () Bool)

(declare-fun res!2581320 () Bool)

(declare-fun e!3805005 () Bool)

(assert (=> b!6254632 (=> (not res!2581320) (not e!3805005))))

(assert (=> b!6254632 (= res!2581320 (isEmpty!36734 (tail!11943 (_2!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254633 () Bool)

(declare-fun e!3805006 () Bool)

(assert (=> b!6254633 (= e!3805006 (matchR!8360 (derivativeStep!4888 (regTwo!32866 r!7292) (head!12858 (_2!36459 (get!22357 lt!2349021)))) (tail!11943 (_2!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254634 () Bool)

(declare-fun res!2581324 () Bool)

(assert (=> b!6254634 (=> res!2581324 e!3805009)))

(assert (=> b!6254634 (= res!2581324 (not (isEmpty!36734 (tail!11943 (_2!36459 (get!22357 lt!2349021))))))))

(declare-fun b!6254635 () Bool)

(declare-fun e!3805008 () Bool)

(assert (=> b!6254635 (= e!3805008 (= lt!2349131 call!527788))))

(declare-fun b!6254637 () Bool)

(declare-fun e!3805003 () Bool)

(assert (=> b!6254637 (= e!3805003 (not lt!2349131))))

(declare-fun b!6254638 () Bool)

(declare-fun res!2581319 () Bool)

(assert (=> b!6254638 (=> res!2581319 e!3805007)))

(assert (=> b!6254638 (= res!2581319 e!3805005)))

(declare-fun res!2581317 () Bool)

(assert (=> b!6254638 (=> (not res!2581317) (not e!3805005))))

(assert (=> b!6254638 (= res!2581317 lt!2349131)))

(declare-fun b!6254639 () Bool)

(assert (=> b!6254639 (= e!3805008 e!3805003)))

(declare-fun c!1132224 () Bool)

(assert (=> b!6254639 (= c!1132224 ((_ is EmptyLang!16177) (regTwo!32866 r!7292)))))

(declare-fun b!6254640 () Bool)

(declare-fun res!2581318 () Bool)

(assert (=> b!6254640 (=> res!2581318 e!3805007)))

(assert (=> b!6254640 (= res!2581318 (not ((_ is ElementMatch!16177) (regTwo!32866 r!7292))))))

(assert (=> b!6254640 (= e!3805003 e!3805007)))

(declare-fun b!6254641 () Bool)

(assert (=> b!6254641 (= e!3805005 (= (head!12858 (_2!36459 (get!22357 lt!2349021))) (c!1131644 (regTwo!32866 r!7292))))))

(declare-fun b!6254642 () Bool)

(declare-fun res!2581322 () Bool)

(assert (=> b!6254642 (=> (not res!2581322) (not e!3805005))))

(assert (=> b!6254642 (= res!2581322 (not call!527788))))

(declare-fun bm!527783 () Bool)

(assert (=> bm!527783 (= call!527788 (isEmpty!36734 (_2!36459 (get!22357 lt!2349021))))))

(declare-fun b!6254636 () Bool)

(assert (=> b!6254636 (= e!3805006 (nullable!6170 (regTwo!32866 r!7292)))))

(declare-fun d!1962178 () Bool)

(assert (=> d!1962178 e!3805008))

(declare-fun c!1132223 () Bool)

(assert (=> d!1962178 (= c!1132223 ((_ is EmptyExpr!16177) (regTwo!32866 r!7292)))))

(assert (=> d!1962178 (= lt!2349131 e!3805006)))

(declare-fun c!1132225 () Bool)

(assert (=> d!1962178 (= c!1132225 (isEmpty!36734 (_2!36459 (get!22357 lt!2349021))))))

(assert (=> d!1962178 (validRegex!7913 (regTwo!32866 r!7292))))

(assert (=> d!1962178 (= (matchR!8360 (regTwo!32866 r!7292) (_2!36459 (get!22357 lt!2349021))) lt!2349131)))

(assert (= (and d!1962178 c!1132225) b!6254636))

(assert (= (and d!1962178 (not c!1132225)) b!6254633))

(assert (= (and d!1962178 c!1132223) b!6254635))

(assert (= (and d!1962178 (not c!1132223)) b!6254639))

(assert (= (and b!6254639 c!1132224) b!6254637))

(assert (= (and b!6254639 (not c!1132224)) b!6254640))

(assert (= (and b!6254640 (not res!2581318)) b!6254638))

(assert (= (and b!6254638 res!2581317) b!6254642))

(assert (= (and b!6254642 res!2581322) b!6254632))

(assert (= (and b!6254632 res!2581320) b!6254641))

(assert (= (and b!6254638 (not res!2581319)) b!6254629))

(assert (= (and b!6254629 res!2581323) b!6254630))

(assert (= (and b!6254630 (not res!2581321)) b!6254634))

(assert (= (and b!6254634 (not res!2581324)) b!6254631))

(assert (= (or b!6254635 b!6254630 b!6254642) bm!527783))

(declare-fun m!7077602 () Bool)

(assert (=> d!1962178 m!7077602))

(declare-fun m!7077604 () Bool)

(assert (=> d!1962178 m!7077604))

(declare-fun m!7077606 () Bool)

(assert (=> b!6254631 m!7077606))

(declare-fun m!7077608 () Bool)

(assert (=> b!6254632 m!7077608))

(assert (=> b!6254632 m!7077608))

(declare-fun m!7077610 () Bool)

(assert (=> b!6254632 m!7077610))

(assert (=> b!6254634 m!7077608))

(assert (=> b!6254634 m!7077608))

(assert (=> b!6254634 m!7077610))

(assert (=> b!6254633 m!7077606))

(assert (=> b!6254633 m!7077606))

(declare-fun m!7077612 () Bool)

(assert (=> b!6254633 m!7077612))

(assert (=> b!6254633 m!7077608))

(assert (=> b!6254633 m!7077612))

(assert (=> b!6254633 m!7077608))

(declare-fun m!7077614 () Bool)

(assert (=> b!6254633 m!7077614))

(assert (=> bm!527783 m!7077602))

(assert (=> b!6254641 m!7077606))

(declare-fun m!7077616 () Bool)

(assert (=> b!6254636 m!7077616))

(assert (=> b!6253483 d!1962178))

(assert (=> b!6253483 d!1962134))

(declare-fun b!6254643 () Bool)

(declare-fun e!3805013 () Bool)

(assert (=> b!6254643 (= e!3805013 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6254644 () Bool)

(declare-fun e!3805010 () (InoxSet Context!11122))

(declare-fun call!527789 () (InoxSet Context!11122))

(assert (=> b!6254644 (= e!3805010 call!527789)))

(declare-fun b!6254645 () Bool)

(declare-fun e!3805011 () (InoxSet Context!11122))

(declare-fun call!527792 () (InoxSet Context!11122))

(declare-fun call!527793 () (InoxSet Context!11122))

(assert (=> b!6254645 (= e!3805011 ((_ map or) call!527792 call!527793))))

(declare-fun d!1962180 () Bool)

(declare-fun c!1132228 () Bool)

(assert (=> d!1962180 (= c!1132228 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))) (= (c!1131644 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326))))))

(declare-fun e!3805014 () (InoxSet Context!11122))

(assert (=> d!1962180 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (h!71155 zl!343))) (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326)) e!3805014)))

(declare-fun b!6254646 () Bool)

(assert (=> b!6254646 (= e!3805014 e!3805011)))

(declare-fun c!1132227 () Bool)

(assert (=> b!6254646 (= c!1132227 ((_ is Union!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun call!527790 () List!64830)

(declare-fun bm!527784 () Bool)

(declare-fun c!1132229 () Bool)

(declare-fun c!1132230 () Bool)

(assert (=> bm!527784 (= call!527792 (derivationStepZipperDown!1425 (ite c!1132227 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1132229 (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1132230 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343))))))) (ite (or c!1132227 c!1132229) (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (Context!11123 call!527790)) (h!71156 s!2326)))))

(declare-fun call!527794 () List!64830)

(declare-fun bm!527785 () Bool)

(assert (=> bm!527785 (= call!527794 ($colon$colon!2044 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))) (ite (or c!1132229 c!1132230) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))) (h!71154 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6254647 () Bool)

(assert (=> b!6254647 (= c!1132229 e!3805013)))

(declare-fun res!2581325 () Bool)

(assert (=> b!6254647 (=> (not res!2581325) (not e!3805013))))

(assert (=> b!6254647 (= res!2581325 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun e!3805012 () (InoxSet Context!11122))

(assert (=> b!6254647 (= e!3805011 e!3805012)))

(declare-fun b!6254648 () Bool)

(assert (=> b!6254648 (= e!3805012 e!3805010)))

(assert (=> b!6254648 (= c!1132230 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun bm!527786 () Bool)

(assert (=> bm!527786 (= call!527790 call!527794)))

(declare-fun bm!527787 () Bool)

(declare-fun call!527791 () (InoxSet Context!11122))

(assert (=> bm!527787 (= call!527789 call!527791)))

(declare-fun b!6254649 () Bool)

(assert (=> b!6254649 (= e!3805012 ((_ map or) call!527793 call!527791))))

(declare-fun b!6254650 () Bool)

(assert (=> b!6254650 (= e!3805014 (store ((as const (Array Context!11122 Bool)) false) (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) true))))

(declare-fun bm!527788 () Bool)

(assert (=> bm!527788 (= call!527793 (derivationStepZipperDown!1425 (ite c!1132227 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))) (ite c!1132227 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (Context!11123 call!527794)) (h!71156 s!2326)))))

(declare-fun b!6254651 () Bool)

(declare-fun e!3805015 () (InoxSet Context!11122))

(assert (=> b!6254651 (= e!3805015 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254652 () Bool)

(declare-fun c!1132226 () Bool)

(assert (=> b!6254652 (= c!1132226 ((_ is Star!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> b!6254652 (= e!3805010 e!3805015)))

(declare-fun bm!527789 () Bool)

(assert (=> bm!527789 (= call!527791 call!527792)))

(declare-fun b!6254653 () Bool)

(assert (=> b!6254653 (= e!3805015 call!527789)))

(assert (= (and d!1962180 c!1132228) b!6254650))

(assert (= (and d!1962180 (not c!1132228)) b!6254646))

(assert (= (and b!6254646 c!1132227) b!6254645))

(assert (= (and b!6254646 (not c!1132227)) b!6254647))

(assert (= (and b!6254647 res!2581325) b!6254643))

(assert (= (and b!6254647 c!1132229) b!6254649))

(assert (= (and b!6254647 (not c!1132229)) b!6254648))

(assert (= (and b!6254648 c!1132230) b!6254644))

(assert (= (and b!6254648 (not c!1132230)) b!6254652))

(assert (= (and b!6254652 c!1132226) b!6254653))

(assert (= (and b!6254652 (not c!1132226)) b!6254651))

(assert (= (or b!6254644 b!6254653) bm!527786))

(assert (= (or b!6254644 b!6254653) bm!527787))

(assert (= (or b!6254649 bm!527786) bm!527785))

(assert (= (or b!6254649 bm!527787) bm!527789))

(assert (= (or b!6254645 b!6254649) bm!527788))

(assert (= (or b!6254645 bm!527789) bm!527784))

(declare-fun m!7077618 () Bool)

(assert (=> bm!527785 m!7077618))

(declare-fun m!7077620 () Bool)

(assert (=> bm!527788 m!7077620))

(declare-fun m!7077622 () Bool)

(assert (=> b!6254650 m!7077622))

(declare-fun m!7077624 () Bool)

(assert (=> bm!527784 m!7077624))

(assert (=> b!6254643 m!7076206))

(assert (=> bm!527543 d!1962180))

(assert (=> d!1961554 d!1962020))

(declare-fun call!527795 () (InoxSet Context!11122))

(declare-fun e!3805018 () (InoxSet Context!11122))

(declare-fun b!6254654 () Bool)

(assert (=> b!6254654 (= e!3805018 ((_ map or) call!527795 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859)))))) (h!71156 s!2326))))))

(declare-fun b!6254655 () Bool)

(declare-fun e!3805017 () (InoxSet Context!11122))

(assert (=> b!6254655 (= e!3805018 e!3805017)))

(declare-fun c!1132231 () Bool)

(assert (=> b!6254655 (= c!1132231 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859))))))))

(declare-fun b!6254656 () Bool)

(declare-fun e!3805016 () Bool)

(assert (=> b!6254656 (= e!3805016 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859)))))))))

(declare-fun b!6254657 () Bool)

(assert (=> b!6254657 (= e!3805017 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1962182 () Bool)

(declare-fun c!1132232 () Bool)

(assert (=> d!1962182 (= c!1132232 e!3805016)))

(declare-fun res!2581326 () Bool)

(assert (=> d!1962182 (=> (not res!2581326) (not e!3805016))))

(assert (=> d!1962182 (= res!2581326 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859))))))))

(assert (=> d!1962182 (= (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348859))) (h!71156 s!2326)) e!3805018)))

(declare-fun b!6254658 () Bool)

(assert (=> b!6254658 (= e!3805017 call!527795)))

(declare-fun bm!527790 () Bool)

(assert (=> bm!527790 (= call!527795 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348859)))))) (h!71156 s!2326)))))

(assert (= (and d!1962182 res!2581326) b!6254656))

(assert (= (and d!1962182 c!1132232) b!6254654))

(assert (= (and d!1962182 (not c!1132232)) b!6254655))

(assert (= (and b!6254655 c!1132231) b!6254658))

(assert (= (and b!6254655 (not c!1132231)) b!6254657))

(assert (= (or b!6254654 b!6254658) bm!527790))

(declare-fun m!7077626 () Bool)

(assert (=> b!6254654 m!7077626))

(declare-fun m!7077628 () Bool)

(assert (=> b!6254656 m!7077628))

(declare-fun m!7077630 () Bool)

(assert (=> bm!527790 m!7077630))

(assert (=> b!6253418 d!1962182))

(declare-fun d!1962184 () Bool)

(assert (=> d!1962184 (= (isConcat!1108 lt!2349028) ((_ is Concat!25022) lt!2349028))))

(assert (=> b!6253504 d!1962184))

(declare-fun d!1962186 () Bool)

(assert (=> d!1962186 (= (nullable!6170 (h!71154 (exprs!6061 lt!2348878))) (nullableFct!2124 (h!71154 (exprs!6061 lt!2348878))))))

(declare-fun bs!1557447 () Bool)

(assert (= bs!1557447 d!1962186))

(declare-fun m!7077632 () Bool)

(assert (=> bs!1557447 m!7077632))

(assert (=> b!6253223 d!1962186))

(declare-fun bs!1557448 () Bool)

(declare-fun d!1962188 () Bool)

(assert (= bs!1557448 (and d!1962188 d!1962144)))

(declare-fun lambda!342222 () Int)

(assert (=> bs!1557448 (= lambda!342222 lambda!342219)))

(declare-fun bs!1557449 () Bool)

(assert (= bs!1557449 (and d!1962188 b!6253451)))

(assert (=> bs!1557449 (not (= lambda!342222 lambda!342121))))

(declare-fun bs!1557450 () Bool)

(assert (= bs!1557450 (and d!1962188 b!6253444)))

(assert (=> bs!1557450 (not (= lambda!342222 lambda!342117))))

(declare-fun bs!1557451 () Bool)

(assert (= bs!1557451 (and d!1962188 d!1962050)))

(assert (=> bs!1557451 (not (= lambda!342222 lambda!342200))))

(declare-fun bs!1557452 () Bool)

(assert (= bs!1557452 (and d!1962188 b!6254362)))

(assert (=> bs!1557452 (not (= lambda!342222 lambda!342208))))

(declare-fun bs!1557453 () Bool)

(assert (= bs!1557453 (and d!1962188 d!1962044)))

(assert (=> bs!1557453 (= lambda!342222 lambda!342197)))

(declare-fun bs!1557454 () Bool)

(assert (= bs!1557454 (and d!1962188 b!6254364)))

(assert (=> bs!1557454 (not (= lambda!342222 lambda!342209))))

(declare-fun bs!1557455 () Bool)

(assert (= bs!1557455 (and d!1962188 b!6253449)))

(assert (=> bs!1557455 (not (= lambda!342222 lambda!342120))))

(declare-fun bs!1557456 () Bool)

(assert (= bs!1557456 (and d!1962188 b!6253446)))

(assert (=> bs!1557456 (not (= lambda!342222 lambda!342118))))

(assert (=> d!1962188 (= (nullableZipper!1949 lt!2348871) (exists!2513 lt!2348871 lambda!342222))))

(declare-fun bs!1557457 () Bool)

(assert (= bs!1557457 d!1962188))

(declare-fun m!7077634 () Bool)

(assert (=> bs!1557457 m!7077634))

(assert (=> b!6253165 d!1962188))

(declare-fun d!1962190 () Bool)

(assert (=> d!1962190 (= (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (nullableFct!2124 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun bs!1557458 () Bool)

(assert (= bs!1557458 d!1962190))

(declare-fun m!7077636 () Bool)

(assert (=> bs!1557458 m!7077636))

(assert (=> b!6253218 d!1962190))

(declare-fun b!6254659 () Bool)

(declare-fun e!3805022 () Bool)

(declare-fun e!3805021 () Bool)

(assert (=> b!6254659 (= e!3805022 e!3805021)))

(declare-fun res!2581328 () Bool)

(assert (=> b!6254659 (=> (not res!2581328) (not e!3805021))))

(declare-fun call!527796 () Bool)

(assert (=> b!6254659 (= res!2581328 call!527796)))

(declare-fun b!6254660 () Bool)

(declare-fun e!3805025 () Bool)

(declare-fun e!3805019 () Bool)

(assert (=> b!6254660 (= e!3805025 e!3805019)))

(declare-fun res!2581329 () Bool)

(assert (=> b!6254660 (= res!2581329 (not (nullable!6170 (reg!16506 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))))

(assert (=> b!6254660 (=> (not res!2581329) (not e!3805019))))

(declare-fun b!6254661 () Bool)

(declare-fun e!3805023 () Bool)

(assert (=> b!6254661 (= e!3805023 e!3805025)))

(declare-fun c!1132233 () Bool)

(assert (=> b!6254661 (= c!1132233 ((_ is Star!16177) (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))

(declare-fun d!1962192 () Bool)

(declare-fun res!2581327 () Bool)

(assert (=> d!1962192 (=> res!2581327 e!3805023)))

(assert (=> d!1962192 (= res!2581327 ((_ is ElementMatch!16177) (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))

(assert (=> d!1962192 (= (validRegex!7913 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))) e!3805023)))

(declare-fun call!527798 () Bool)

(declare-fun c!1132234 () Bool)

(declare-fun bm!527791 () Bool)

(assert (=> bm!527791 (= call!527798 (validRegex!7913 (ite c!1132234 (regTwo!32867 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))) (regTwo!32866 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))))

(declare-fun b!6254662 () Bool)

(declare-fun res!2581330 () Bool)

(assert (=> b!6254662 (=> res!2581330 e!3805022)))

(assert (=> b!6254662 (= res!2581330 (not ((_ is Concat!25022) (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292))))))))

(declare-fun e!3805020 () Bool)

(assert (=> b!6254662 (= e!3805020 e!3805022)))

(declare-fun bm!527792 () Bool)

(declare-fun call!527797 () Bool)

(assert (=> bm!527792 (= call!527796 call!527797)))

(declare-fun b!6254663 () Bool)

(declare-fun res!2581331 () Bool)

(declare-fun e!3805024 () Bool)

(assert (=> b!6254663 (=> (not res!2581331) (not e!3805024))))

(assert (=> b!6254663 (= res!2581331 call!527796)))

(assert (=> b!6254663 (= e!3805020 e!3805024)))

(declare-fun b!6254664 () Bool)

(assert (=> b!6254664 (= e!3805024 call!527798)))

(declare-fun b!6254665 () Bool)

(assert (=> b!6254665 (= e!3805025 e!3805020)))

(assert (=> b!6254665 (= c!1132234 ((_ is Union!16177) (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))))))

(declare-fun bm!527793 () Bool)

(assert (=> bm!527793 (= call!527797 (validRegex!7913 (ite c!1132233 (reg!16506 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))) (ite c!1132234 (regOne!32867 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292)))) (regOne!32866 (ite c!1131790 (reg!16506 r!7292) (ite c!1131791 (regOne!32867 r!7292) (regOne!32866 r!7292))))))))))

(declare-fun b!6254666 () Bool)

(assert (=> b!6254666 (= e!3805021 call!527798)))

(declare-fun b!6254667 () Bool)

(assert (=> b!6254667 (= e!3805019 call!527797)))

(assert (= (and d!1962192 (not res!2581327)) b!6254661))

(assert (= (and b!6254661 c!1132233) b!6254660))

(assert (= (and b!6254661 (not c!1132233)) b!6254665))

(assert (= (and b!6254660 res!2581329) b!6254667))

(assert (= (and b!6254665 c!1132234) b!6254663))

(assert (= (and b!6254665 (not c!1132234)) b!6254662))

(assert (= (and b!6254663 res!2581331) b!6254664))

(assert (= (and b!6254662 (not res!2581330)) b!6254659))

(assert (= (and b!6254659 res!2581328) b!6254666))

(assert (= (or b!6254664 b!6254666) bm!527791))

(assert (= (or b!6254663 b!6254659) bm!527792))

(assert (= (or b!6254667 bm!527792) bm!527793))

(declare-fun m!7077638 () Bool)

(assert (=> b!6254660 m!7077638))

(declare-fun m!7077640 () Bool)

(assert (=> bm!527791 m!7077640))

(declare-fun m!7077642 () Bool)

(assert (=> bm!527793 m!7077642))

(assert (=> bm!527520 d!1962192))

(declare-fun d!1962194 () Bool)

(assert (=> d!1962194 (= (isEmptyLang!1594 lt!2348976) ((_ is EmptyLang!16177) lt!2348976))))

(assert (=> b!6253280 d!1962194))

(declare-fun d!1962196 () Bool)

(assert (=> d!1962196 (= (maxBigInt!0 (contextDepth!197 (h!71155 lt!2348865)) (zipperDepth!302 (t!378379 lt!2348865))) (ite (>= (contextDepth!197 (h!71155 lt!2348865)) (zipperDepth!302 (t!378379 lt!2348865))) (contextDepth!197 (h!71155 lt!2348865)) (zipperDepth!302 (t!378379 lt!2348865))))))

(assert (=> b!6253444 d!1962196))

(declare-fun bs!1557459 () Bool)

(declare-fun d!1962198 () Bool)

(assert (= bs!1557459 (and d!1962198 b!6253451)))

(declare-fun lambda!342223 () Int)

(assert (=> bs!1557459 (not (= lambda!342223 lambda!342121))))

(declare-fun bs!1557460 () Bool)

(assert (= bs!1557460 (and d!1962198 b!6253444)))

(assert (=> bs!1557460 (not (= lambda!342223 lambda!342117))))

(declare-fun bs!1557461 () Bool)

(assert (= bs!1557461 (and d!1962198 d!1962050)))

(assert (=> bs!1557461 (= (and (= lt!2349006 lt!2349010) (= lambda!342116 lambda!342119)) (= lambda!342223 lambda!342200))))

(declare-fun bs!1557462 () Bool)

(assert (= bs!1557462 (and d!1962198 b!6254362)))

(assert (=> bs!1557462 (not (= lambda!342223 lambda!342208))))

(declare-fun bs!1557463 () Bool)

(assert (= bs!1557463 (and d!1962198 d!1962188)))

(assert (=> bs!1557463 (not (= lambda!342223 lambda!342222))))

(declare-fun bs!1557464 () Bool)

(assert (= bs!1557464 (and d!1962198 d!1962144)))

(assert (=> bs!1557464 (not (= lambda!342223 lambda!342219))))

(declare-fun bs!1557465 () Bool)

(assert (= bs!1557465 (and d!1962198 d!1962044)))

(assert (=> bs!1557465 (not (= lambda!342223 lambda!342197))))

(declare-fun bs!1557466 () Bool)

(assert (= bs!1557466 (and d!1962198 b!6254364)))

(assert (=> bs!1557466 (not (= lambda!342223 lambda!342209))))

(declare-fun bs!1557467 () Bool)

(assert (= bs!1557467 (and d!1962198 b!6253449)))

(assert (=> bs!1557467 (not (= lambda!342223 lambda!342120))))

(declare-fun bs!1557468 () Bool)

(assert (= bs!1557468 (and d!1962198 b!6253446)))

(assert (=> bs!1557468 (not (= lambda!342223 lambda!342118))))

(assert (=> d!1962198 true))

(assert (=> d!1962198 true))

(assert (=> d!1962198 (< (dynLambda!25561 order!27425 lambda!342116) (dynLambda!25562 order!27427 lambda!342223))))

(assert (=> d!1962198 (forall!15297 (t!378379 lt!2348865) lambda!342223)))

(declare-fun lt!2349132 () Unit!158039)

(assert (=> d!1962198 (= lt!2349132 (choose!46413 (t!378379 lt!2348865) lt!2349006 (zipperDepth!302 (t!378379 lt!2348865)) lambda!342116))))

(assert (=> d!1962198 (>= lt!2349006 (zipperDepth!302 (t!378379 lt!2348865)))))

(assert (=> d!1962198 (= (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 lt!2348865) lt!2349006 (zipperDepth!302 (t!378379 lt!2348865)) lambda!342116) lt!2349132)))

(declare-fun bs!1557469 () Bool)

(assert (= bs!1557469 d!1962198))

(declare-fun m!7077644 () Bool)

(assert (=> bs!1557469 m!7077644))

(assert (=> bs!1557469 m!7076388))

(declare-fun m!7077646 () Bool)

(assert (=> bs!1557469 m!7077646))

(assert (=> b!6253444 d!1962198))

(declare-fun bs!1557470 () Bool)

(declare-fun b!6254668 () Bool)

(assert (= bs!1557470 (and b!6254668 d!1961580)))

(declare-fun lambda!342224 () Int)

(assert (=> bs!1557470 (not (= lambda!342224 lambda!342094))))

(declare-fun bs!1557471 () Bool)

(assert (= bs!1557471 (and b!6254668 d!1961604)))

(assert (=> bs!1557471 (not (= lambda!342224 lambda!342109))))

(declare-fun bs!1557472 () Bool)

(assert (= bs!1557472 (and b!6254668 d!1961638)))

(assert (=> bs!1557472 (not (= lambda!342224 lambda!342123))))

(declare-fun bs!1557473 () Bool)

(assert (= bs!1557473 (and b!6254668 b!6254359)))

(declare-fun lt!2349136 () Int)

(assert (=> bs!1557473 (= (= lt!2349136 lt!2349102) (= lambda!342224 lambda!342206))))

(declare-fun bs!1557474 () Bool)

(assert (= bs!1557474 (and b!6254668 d!1961582)))

(assert (=> bs!1557474 (not (= lambda!342224 lambda!342097))))

(declare-fun bs!1557475 () Bool)

(assert (= bs!1557475 (and b!6254668 b!6254357)))

(assert (=> bs!1557475 (= (= lt!2349136 lt!2349105) (= lambda!342224 lambda!342205))))

(declare-fun bs!1557476 () Bool)

(assert (= bs!1557476 (and b!6254668 d!1961654)))

(assert (=> bs!1557476 (not (= lambda!342224 lambda!342133))))

(declare-fun bs!1557477 () Bool)

(assert (= bs!1557477 (and b!6254668 d!1962168)))

(assert (=> bs!1557477 (not (= lambda!342224 lambda!342221))))

(declare-fun bs!1557478 () Bool)

(assert (= bs!1557478 (and b!6254668 d!1962064)))

(assert (=> bs!1557478 (not (= lambda!342224 lambda!342210))))

(declare-fun bs!1557479 () Bool)

(assert (= bs!1557479 (and b!6254668 d!1961588)))

(assert (=> bs!1557479 (not (= lambda!342224 lambda!342100))))

(assert (=> b!6254668 true))

(declare-fun bs!1557480 () Bool)

(declare-fun b!6254670 () Bool)

(assert (= bs!1557480 (and b!6254670 d!1961580)))

(declare-fun lambda!342225 () Int)

(assert (=> bs!1557480 (not (= lambda!342225 lambda!342094))))

(declare-fun bs!1557481 () Bool)

(assert (= bs!1557481 (and b!6254670 d!1961604)))

(assert (=> bs!1557481 (not (= lambda!342225 lambda!342109))))

(declare-fun bs!1557482 () Bool)

(assert (= bs!1557482 (and b!6254670 d!1961638)))

(assert (=> bs!1557482 (not (= lambda!342225 lambda!342123))))

(declare-fun bs!1557483 () Bool)

(assert (= bs!1557483 (and b!6254670 b!6254668)))

(declare-fun lt!2349133 () Int)

(assert (=> bs!1557483 (= (= lt!2349133 lt!2349136) (= lambda!342225 lambda!342224))))

(declare-fun bs!1557484 () Bool)

(assert (= bs!1557484 (and b!6254670 b!6254359)))

(assert (=> bs!1557484 (= (= lt!2349133 lt!2349102) (= lambda!342225 lambda!342206))))

(declare-fun bs!1557485 () Bool)

(assert (= bs!1557485 (and b!6254670 d!1961582)))

(assert (=> bs!1557485 (not (= lambda!342225 lambda!342097))))

(declare-fun bs!1557486 () Bool)

(assert (= bs!1557486 (and b!6254670 b!6254357)))

(assert (=> bs!1557486 (= (= lt!2349133 lt!2349105) (= lambda!342225 lambda!342205))))

(declare-fun bs!1557487 () Bool)

(assert (= bs!1557487 (and b!6254670 d!1961654)))

(assert (=> bs!1557487 (not (= lambda!342225 lambda!342133))))

(declare-fun bs!1557488 () Bool)

(assert (= bs!1557488 (and b!6254670 d!1962168)))

(assert (=> bs!1557488 (not (= lambda!342225 lambda!342221))))

(declare-fun bs!1557489 () Bool)

(assert (= bs!1557489 (and b!6254670 d!1962064)))

(assert (=> bs!1557489 (not (= lambda!342225 lambda!342210))))

(declare-fun bs!1557490 () Bool)

(assert (= bs!1557490 (and b!6254670 d!1961588)))

(assert (=> bs!1557490 (not (= lambda!342225 lambda!342100))))

(assert (=> b!6254670 true))

(declare-fun d!1962200 () Bool)

(declare-fun e!3805027 () Bool)

(assert (=> d!1962200 e!3805027))

(declare-fun res!2581332 () Bool)

(assert (=> d!1962200 (=> (not res!2581332) (not e!3805027))))

(assert (=> d!1962200 (= res!2581332 (>= lt!2349133 0))))

(declare-fun e!3805026 () Int)

(assert (=> d!1962200 (= lt!2349133 e!3805026)))

(declare-fun c!1132235 () Bool)

(assert (=> d!1962200 (= c!1132235 ((_ is Cons!64706) (exprs!6061 (h!71155 lt!2348865))))))

(assert (=> d!1962200 (= (contextDepth!197 (h!71155 lt!2348865)) lt!2349133)))

(assert (=> b!6254668 (= e!3805026 lt!2349136)))

(assert (=> b!6254668 (= lt!2349136 (maxBigInt!0 (regexDepth!302 (h!71154 (exprs!6061 (h!71155 lt!2348865)))) (contextDepth!197 (Context!11123 (t!378378 (exprs!6061 (h!71155 lt!2348865)))))))))

(declare-fun lt!2349135 () Unit!158039)

(assert (=> b!6254668 (= lt!2349135 (lemmaForallRegexDepthBiggerThanTransitive!92 (t!378378 (exprs!6061 (h!71155 lt!2348865))) lt!2349136 (contextDepth!197 (Context!11123 (t!378378 (exprs!6061 (h!71155 lt!2348865)))))))))

(assert (=> b!6254668 (forall!15296 (t!378378 (exprs!6061 (h!71155 lt!2348865))) lambda!342224)))

(declare-fun lt!2349134 () Unit!158039)

(assert (=> b!6254668 (= lt!2349134 lt!2349135)))

(declare-fun b!6254669 () Bool)

(assert (=> b!6254669 (= e!3805026 0)))

(assert (=> b!6254670 (= e!3805027 (forall!15296 (exprs!6061 (h!71155 lt!2348865)) lambda!342225))))

(assert (= (and d!1962200 c!1132235) b!6254668))

(assert (= (and d!1962200 (not c!1132235)) b!6254669))

(assert (= (and d!1962200 res!2581332) b!6254670))

(declare-fun m!7077648 () Bool)

(assert (=> b!6254668 m!7077648))

(declare-fun m!7077650 () Bool)

(assert (=> b!6254668 m!7077650))

(declare-fun m!7077652 () Bool)

(assert (=> b!6254668 m!7077652))

(assert (=> b!6254668 m!7077652))

(assert (=> b!6254668 m!7077648))

(declare-fun m!7077654 () Bool)

(assert (=> b!6254668 m!7077654))

(declare-fun m!7077656 () Bool)

(assert (=> b!6254668 m!7077656))

(assert (=> b!6254668 m!7077648))

(declare-fun m!7077658 () Bool)

(assert (=> b!6254670 m!7077658))

(assert (=> b!6253444 d!1962200))

(declare-fun bs!1557491 () Bool)

(declare-fun b!6254671 () Bool)

(assert (= bs!1557491 (and b!6254671 b!6253444)))

(declare-fun lambda!342226 () Int)

(assert (=> bs!1557491 (= lambda!342226 lambda!342116)))

(declare-fun bs!1557492 () Bool)

(assert (= bs!1557492 (and b!6254671 b!6253449)))

(assert (=> bs!1557492 (= lambda!342226 lambda!342119)))

(declare-fun bs!1557493 () Bool)

(assert (= bs!1557493 (and b!6254671 b!6254362)))

(assert (=> bs!1557493 (= lambda!342226 lambda!342207)))

(declare-fun bs!1557494 () Bool)

(assert (= bs!1557494 (and b!6254671 d!1962198)))

(declare-fun lambda!342227 () Int)

(assert (=> bs!1557494 (not (= lambda!342227 lambda!342223))))

(declare-fun bs!1557495 () Bool)

(assert (= bs!1557495 (and b!6254671 b!6253451)))

(declare-fun lt!2349139 () Int)

(assert (=> bs!1557495 (= (= lt!2349139 lt!2349008) (= lambda!342227 lambda!342121))))

(assert (=> bs!1557491 (= (= lt!2349139 lt!2349006) (= lambda!342227 lambda!342117))))

(declare-fun bs!1557496 () Bool)

(assert (= bs!1557496 (and b!6254671 d!1962050)))

(assert (=> bs!1557496 (not (= lambda!342227 lambda!342200))))

(assert (=> bs!1557493 (= (= lt!2349139 lt!2349108) (= lambda!342227 lambda!342208))))

(declare-fun bs!1557497 () Bool)

(assert (= bs!1557497 (and b!6254671 d!1962188)))

(assert (=> bs!1557497 (not (= lambda!342227 lambda!342222))))

(declare-fun bs!1557498 () Bool)

(assert (= bs!1557498 (and b!6254671 d!1962144)))

(assert (=> bs!1557498 (not (= lambda!342227 lambda!342219))))

(declare-fun bs!1557499 () Bool)

(assert (= bs!1557499 (and b!6254671 d!1962044)))

(assert (=> bs!1557499 (not (= lambda!342227 lambda!342197))))

(declare-fun bs!1557500 () Bool)

(assert (= bs!1557500 (and b!6254671 b!6254364)))

(assert (=> bs!1557500 (= (= lt!2349139 lt!2349106) (= lambda!342227 lambda!342209))))

(assert (=> bs!1557492 (= (= lt!2349139 lt!2349010) (= lambda!342227 lambda!342120))))

(declare-fun bs!1557501 () Bool)

(assert (= bs!1557501 (and b!6254671 b!6253446)))

(assert (=> bs!1557501 (= (= lt!2349139 lt!2349004) (= lambda!342227 lambda!342118))))

(assert (=> b!6254671 true))

(declare-fun bs!1557502 () Bool)

(declare-fun b!6254673 () Bool)

(assert (= bs!1557502 (and b!6254673 d!1962198)))

(declare-fun lambda!342228 () Int)

(assert (=> bs!1557502 (not (= lambda!342228 lambda!342223))))

(declare-fun bs!1557503 () Bool)

(assert (= bs!1557503 (and b!6254673 b!6253451)))

(declare-fun lt!2349137 () Int)

(assert (=> bs!1557503 (= (= lt!2349137 lt!2349008) (= lambda!342228 lambda!342121))))

(declare-fun bs!1557504 () Bool)

(assert (= bs!1557504 (and b!6254673 b!6254671)))

(assert (=> bs!1557504 (= (= lt!2349137 lt!2349139) (= lambda!342228 lambda!342227))))

(declare-fun bs!1557505 () Bool)

(assert (= bs!1557505 (and b!6254673 b!6253444)))

(assert (=> bs!1557505 (= (= lt!2349137 lt!2349006) (= lambda!342228 lambda!342117))))

(declare-fun bs!1557506 () Bool)

(assert (= bs!1557506 (and b!6254673 d!1962050)))

(assert (=> bs!1557506 (not (= lambda!342228 lambda!342200))))

(declare-fun bs!1557507 () Bool)

(assert (= bs!1557507 (and b!6254673 b!6254362)))

(assert (=> bs!1557507 (= (= lt!2349137 lt!2349108) (= lambda!342228 lambda!342208))))

(declare-fun bs!1557508 () Bool)

(assert (= bs!1557508 (and b!6254673 d!1962188)))

(assert (=> bs!1557508 (not (= lambda!342228 lambda!342222))))

(declare-fun bs!1557509 () Bool)

(assert (= bs!1557509 (and b!6254673 d!1962144)))

(assert (=> bs!1557509 (not (= lambda!342228 lambda!342219))))

(declare-fun bs!1557510 () Bool)

(assert (= bs!1557510 (and b!6254673 d!1962044)))

(assert (=> bs!1557510 (not (= lambda!342228 lambda!342197))))

(declare-fun bs!1557511 () Bool)

(assert (= bs!1557511 (and b!6254673 b!6254364)))

(assert (=> bs!1557511 (= (= lt!2349137 lt!2349106) (= lambda!342228 lambda!342209))))

(declare-fun bs!1557512 () Bool)

(assert (= bs!1557512 (and b!6254673 b!6253449)))

(assert (=> bs!1557512 (= (= lt!2349137 lt!2349010) (= lambda!342228 lambda!342120))))

(declare-fun bs!1557513 () Bool)

(assert (= bs!1557513 (and b!6254673 b!6253446)))

(assert (=> bs!1557513 (= (= lt!2349137 lt!2349004) (= lambda!342228 lambda!342118))))

(assert (=> b!6254673 true))

(declare-fun d!1962202 () Bool)

(declare-fun e!3805028 () Bool)

(assert (=> d!1962202 e!3805028))

(declare-fun res!2581333 () Bool)

(assert (=> d!1962202 (=> (not res!2581333) (not e!3805028))))

(assert (=> d!1962202 (= res!2581333 (>= lt!2349137 0))))

(declare-fun e!3805029 () Int)

(assert (=> d!1962202 (= lt!2349137 e!3805029)))

(declare-fun c!1132236 () Bool)

(assert (=> d!1962202 (= c!1132236 ((_ is Cons!64707) (t!378379 lt!2348865)))))

(assert (=> d!1962202 (= (zipperDepth!302 (t!378379 lt!2348865)) lt!2349137)))

(assert (=> b!6254671 (= e!3805029 lt!2349139)))

(assert (=> b!6254671 (= lt!2349139 (maxBigInt!0 (contextDepth!197 (h!71155 (t!378379 lt!2348865))) (zipperDepth!302 (t!378379 (t!378379 lt!2348865)))))))

(declare-fun lt!2349140 () Unit!158039)

(assert (=> b!6254671 (= lt!2349140 (lemmaForallContextDepthBiggerThanTransitive!181 (t!378379 (t!378379 lt!2348865)) lt!2349139 (zipperDepth!302 (t!378379 (t!378379 lt!2348865))) lambda!342226))))

(assert (=> b!6254671 (forall!15297 (t!378379 (t!378379 lt!2348865)) lambda!342227)))

(declare-fun lt!2349138 () Unit!158039)

(assert (=> b!6254671 (= lt!2349138 lt!2349140)))

(declare-fun b!6254672 () Bool)

(assert (=> b!6254672 (= e!3805029 0)))

(assert (=> b!6254673 (= e!3805028 (forall!15297 (t!378379 lt!2348865) lambda!342228))))

(assert (= (and d!1962202 c!1132236) b!6254671))

(assert (= (and d!1962202 (not c!1132236)) b!6254672))

(assert (= (and d!1962202 res!2581333) b!6254673))

(declare-fun m!7077660 () Bool)

(assert (=> b!6254671 m!7077660))

(declare-fun m!7077662 () Bool)

(assert (=> b!6254671 m!7077662))

(declare-fun m!7077664 () Bool)

(assert (=> b!6254671 m!7077664))

(assert (=> b!6254671 m!7077660))

(declare-fun m!7077666 () Bool)

(assert (=> b!6254671 m!7077666))

(assert (=> b!6254671 m!7077664))

(assert (=> b!6254671 m!7077660))

(declare-fun m!7077668 () Bool)

(assert (=> b!6254671 m!7077668))

(declare-fun m!7077670 () Bool)

(assert (=> b!6254673 m!7077670))

(assert (=> b!6253444 d!1962202))

(declare-fun d!1962204 () Bool)

(declare-fun res!2581334 () Bool)

(declare-fun e!3805030 () Bool)

(assert (=> d!1962204 (=> res!2581334 e!3805030)))

(assert (=> d!1962204 (= res!2581334 ((_ is Nil!64707) (t!378379 lt!2348865)))))

(assert (=> d!1962204 (= (forall!15297 (t!378379 lt!2348865) lambda!342117) e!3805030)))

(declare-fun b!6254674 () Bool)

(declare-fun e!3805031 () Bool)

(assert (=> b!6254674 (= e!3805030 e!3805031)))

(declare-fun res!2581335 () Bool)

(assert (=> b!6254674 (=> (not res!2581335) (not e!3805031))))

(assert (=> b!6254674 (= res!2581335 (dynLambda!25563 lambda!342117 (h!71155 (t!378379 lt!2348865))))))

(declare-fun b!6254675 () Bool)

(assert (=> b!6254675 (= e!3805031 (forall!15297 (t!378379 (t!378379 lt!2348865)) lambda!342117))))

(assert (= (and d!1962204 (not res!2581334)) b!6254674))

(assert (= (and b!6254674 res!2581335) b!6254675))

(declare-fun b_lambda!238005 () Bool)

(assert (=> (not b_lambda!238005) (not b!6254674)))

(declare-fun m!7077672 () Bool)

(assert (=> b!6254674 m!7077672))

(declare-fun m!7077674 () Bool)

(assert (=> b!6254675 m!7077674))

(assert (=> b!6253444 d!1962204))

(assert (=> b!6253411 d!1962166))

(declare-fun d!1962206 () Bool)

(assert (=> d!1962206 (= ($colon$colon!2044 (exprs!6061 lt!2348878) (ite (or c!1131830 c!1131831) (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (regTwo!32866 (regOne!32866 r!7292)))) (Cons!64706 (ite (or c!1131830 c!1131831) (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (regTwo!32866 (regOne!32866 r!7292))) (exprs!6061 lt!2348878)))))

(assert (=> bm!527545 d!1962206))

(declare-fun d!1962208 () Bool)

(assert (=> d!1962208 (= (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))) (nullableFct!2124 (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun bs!1557514 () Bool)

(assert (= bs!1557514 d!1962208))

(declare-fun m!7077676 () Bool)

(assert (=> bs!1557514 m!7077676))

(assert (=> b!6253195 d!1962208))

(declare-fun d!1962210 () Bool)

(assert (=> d!1962210 (= (nullable!6170 (reg!16506 r!7292)) (nullableFct!2124 (reg!16506 r!7292)))))

(declare-fun bs!1557515 () Bool)

(assert (= bs!1557515 d!1962210))

(declare-fun m!7077678 () Bool)

(assert (=> bs!1557515 m!7077678))

(assert (=> b!6253145 d!1962210))

(declare-fun d!1962212 () Bool)

(declare-fun res!2581336 () Bool)

(declare-fun e!3805032 () Bool)

(assert (=> d!1962212 (=> res!2581336 e!3805032)))

(assert (=> d!1962212 (= res!2581336 ((_ is Nil!64706) lt!2348979))))

(assert (=> d!1962212 (= (forall!15296 lt!2348979 lambda!342097) e!3805032)))

(declare-fun b!6254676 () Bool)

(declare-fun e!3805033 () Bool)

(assert (=> b!6254676 (= e!3805032 e!3805033)))

(declare-fun res!2581337 () Bool)

(assert (=> b!6254676 (=> (not res!2581337) (not e!3805033))))

(assert (=> b!6254676 (= res!2581337 (dynLambda!25564 lambda!342097 (h!71154 lt!2348979)))))

(declare-fun b!6254677 () Bool)

(assert (=> b!6254677 (= e!3805033 (forall!15296 (t!378378 lt!2348979) lambda!342097))))

(assert (= (and d!1962212 (not res!2581336)) b!6254676))

(assert (= (and b!6254676 res!2581337) b!6254677))

(declare-fun b_lambda!238007 () Bool)

(assert (=> (not b_lambda!238007) (not b!6254676)))

(declare-fun m!7077680 () Bool)

(assert (=> b!6254676 m!7077680))

(declare-fun m!7077682 () Bool)

(assert (=> b!6254677 m!7077682))

(assert (=> d!1961582 d!1962212))

(assert (=> b!6253287 d!1961654))

(declare-fun bs!1557516 () Bool)

(declare-fun d!1962214 () Bool)

(assert (= bs!1557516 (and d!1962214 d!1961580)))

(declare-fun lambda!342229 () Int)

(assert (=> bs!1557516 (= lambda!342229 lambda!342094)))

(declare-fun bs!1557517 () Bool)

(assert (= bs!1557517 (and d!1962214 d!1961604)))

(assert (=> bs!1557517 (= lambda!342229 lambda!342109)))

(declare-fun bs!1557518 () Bool)

(assert (= bs!1557518 (and d!1962214 d!1961638)))

(assert (=> bs!1557518 (= lambda!342229 lambda!342123)))

(declare-fun bs!1557519 () Bool)

(assert (= bs!1557519 (and d!1962214 b!6254668)))

(assert (=> bs!1557519 (not (= lambda!342229 lambda!342224))))

(declare-fun bs!1557520 () Bool)

(assert (= bs!1557520 (and d!1962214 b!6254359)))

(assert (=> bs!1557520 (not (= lambda!342229 lambda!342206))))

(declare-fun bs!1557521 () Bool)

(assert (= bs!1557521 (and d!1962214 d!1961582)))

(assert (=> bs!1557521 (= lambda!342229 lambda!342097)))

(declare-fun bs!1557522 () Bool)

(assert (= bs!1557522 (and d!1962214 b!6254357)))

(assert (=> bs!1557522 (not (= lambda!342229 lambda!342205))))

(declare-fun bs!1557523 () Bool)

(assert (= bs!1557523 (and d!1962214 d!1962168)))

(assert (=> bs!1557523 (= lambda!342229 lambda!342221)))

(declare-fun bs!1557524 () Bool)

(assert (= bs!1557524 (and d!1962214 d!1962064)))

(assert (=> bs!1557524 (= lambda!342229 lambda!342210)))

(declare-fun bs!1557525 () Bool)

(assert (= bs!1557525 (and d!1962214 d!1961588)))

(assert (=> bs!1557525 (= lambda!342229 lambda!342100)))

(declare-fun bs!1557526 () Bool)

(assert (= bs!1557526 (and d!1962214 b!6254670)))

(assert (=> bs!1557526 (not (= lambda!342229 lambda!342225))))

(declare-fun bs!1557527 () Bool)

(assert (= bs!1557527 (and d!1962214 d!1961654)))

(assert (=> bs!1557527 (= lambda!342229 lambda!342133)))

(declare-fun lt!2349141 () List!64830)

(assert (=> d!1962214 (forall!15296 lt!2349141 lambda!342229)))

(declare-fun e!3805034 () List!64830)

(assert (=> d!1962214 (= lt!2349141 e!3805034)))

(declare-fun c!1132237 () Bool)

(assert (=> d!1962214 (= c!1132237 ((_ is Cons!64707) (t!378379 zl!343)))))

(assert (=> d!1962214 (= (unfocusZipperList!1598 (t!378379 zl!343)) lt!2349141)))

(declare-fun b!6254678 () Bool)

(assert (=> b!6254678 (= e!3805034 (Cons!64706 (generalisedConcat!1774 (exprs!6061 (h!71155 (t!378379 zl!343)))) (unfocusZipperList!1598 (t!378379 (t!378379 zl!343)))))))

(declare-fun b!6254679 () Bool)

(assert (=> b!6254679 (= e!3805034 Nil!64706)))

(assert (= (and d!1962214 c!1132237) b!6254678))

(assert (= (and d!1962214 (not c!1132237)) b!6254679))

(declare-fun m!7077684 () Bool)

(assert (=> d!1962214 m!7077684))

(declare-fun m!7077686 () Bool)

(assert (=> b!6254678 m!7077686))

(declare-fun m!7077688 () Bool)

(assert (=> b!6254678 m!7077688))

(assert (=> b!6253287 d!1962214))

(declare-fun d!1962216 () Bool)

(declare-fun c!1132238 () Bool)

(assert (=> d!1962216 (= c!1132238 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805035 () Bool)

(assert (=> d!1962216 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348853 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805035)))

(declare-fun b!6254680 () Bool)

(assert (=> b!6254680 (= e!3805035 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348853 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254681 () Bool)

(assert (=> b!6254681 (= e!3805035 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348853 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962216 c!1132238) b!6254680))

(assert (= (and d!1962216 (not c!1132238)) b!6254681))

(assert (=> d!1962216 m!7076144))

(assert (=> d!1962216 m!7077362))

(assert (=> b!6254680 m!7076356))

(declare-fun m!7077690 () Bool)

(assert (=> b!6254680 m!7077690))

(assert (=> b!6254681 m!7076144))

(assert (=> b!6254681 m!7077366))

(assert (=> b!6254681 m!7076356))

(assert (=> b!6254681 m!7077366))

(declare-fun m!7077692 () Bool)

(assert (=> b!6254681 m!7077692))

(assert (=> b!6254681 m!7076144))

(assert (=> b!6254681 m!7077370))

(assert (=> b!6254681 m!7077692))

(assert (=> b!6254681 m!7077370))

(declare-fun m!7077694 () Bool)

(assert (=> b!6254681 m!7077694))

(assert (=> b!6253424 d!1962216))

(declare-fun bs!1557528 () Bool)

(declare-fun d!1962218 () Bool)

(assert (= bs!1557528 (and d!1962218 d!1961556)))

(declare-fun lambda!342230 () Int)

(assert (=> bs!1557528 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342230 lambda!342091))))

(declare-fun bs!1557529 () Bool)

(assert (= bs!1557529 (and d!1962218 d!1962076)))

(assert (=> bs!1557529 (= lambda!342230 lambda!342211)))

(declare-fun bs!1557530 () Bool)

(assert (= bs!1557530 (and d!1962218 d!1962098)))

(assert (=> bs!1557530 (= lambda!342230 lambda!342212)))

(declare-fun bs!1557531 () Bool)

(assert (= bs!1557531 (and d!1962218 d!1962140)))

(assert (=> bs!1557531 (= lambda!342230 lambda!342218)))

(declare-fun bs!1557532 () Bool)

(assert (= bs!1557532 (and d!1962218 d!1961632)))

(assert (=> bs!1557532 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342230 lambda!342122))))

(declare-fun bs!1557533 () Bool)

(assert (= bs!1557533 (and d!1962218 b!6252643)))

(assert (=> bs!1557533 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342230 lambda!342043))))

(declare-fun bs!1557534 () Bool)

(assert (= bs!1557534 (and d!1962218 d!1962158)))

(assert (=> bs!1557534 (= lambda!342230 lambda!342220)))

(assert (=> d!1962218 true))

(assert (=> d!1962218 (= (derivationStepZipper!2143 lt!2348853 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348853 lambda!342230))))

(declare-fun bs!1557535 () Bool)

(assert (= bs!1557535 d!1962218))

(declare-fun m!7077696 () Bool)

(assert (=> bs!1557535 m!7077696))

(assert (=> b!6253424 d!1962218))

(assert (=> b!6253424 d!1962078))

(assert (=> b!6253424 d!1962080))

(declare-fun d!1962220 () Bool)

(declare-fun res!2581338 () Bool)

(declare-fun e!3805036 () Bool)

(assert (=> d!1962220 (=> res!2581338 e!3805036)))

(assert (=> d!1962220 (= res!2581338 ((_ is Nil!64706) (exprs!6061 setElem!42506)))))

(assert (=> d!1962220 (= (forall!15296 (exprs!6061 setElem!42506) lambda!342109) e!3805036)))

(declare-fun b!6254682 () Bool)

(declare-fun e!3805037 () Bool)

(assert (=> b!6254682 (= e!3805036 e!3805037)))

(declare-fun res!2581339 () Bool)

(assert (=> b!6254682 (=> (not res!2581339) (not e!3805037))))

(assert (=> b!6254682 (= res!2581339 (dynLambda!25564 lambda!342109 (h!71154 (exprs!6061 setElem!42506))))))

(declare-fun b!6254683 () Bool)

(assert (=> b!6254683 (= e!3805037 (forall!15296 (t!378378 (exprs!6061 setElem!42506)) lambda!342109))))

(assert (= (and d!1962220 (not res!2581338)) b!6254682))

(assert (= (and b!6254682 res!2581339) b!6254683))

(declare-fun b_lambda!238009 () Bool)

(assert (=> (not b_lambda!238009) (not b!6254682)))

(declare-fun m!7077698 () Bool)

(assert (=> b!6254682 m!7077698))

(declare-fun m!7077700 () Bool)

(assert (=> b!6254683 m!7077700))

(assert (=> d!1961604 d!1962220))

(declare-fun bs!1557536 () Bool)

(declare-fun d!1962222 () Bool)

(assert (= bs!1557536 (and d!1962222 d!1961604)))

(declare-fun lambda!342231 () Int)

(assert (=> bs!1557536 (= lambda!342231 lambda!342109)))

(declare-fun bs!1557537 () Bool)

(assert (= bs!1557537 (and d!1962222 d!1961638)))

(assert (=> bs!1557537 (= lambda!342231 lambda!342123)))

(declare-fun bs!1557538 () Bool)

(assert (= bs!1557538 (and d!1962222 b!6254668)))

(assert (=> bs!1557538 (not (= lambda!342231 lambda!342224))))

(declare-fun bs!1557539 () Bool)

(assert (= bs!1557539 (and d!1962222 b!6254359)))

(assert (=> bs!1557539 (not (= lambda!342231 lambda!342206))))

(declare-fun bs!1557540 () Bool)

(assert (= bs!1557540 (and d!1962222 d!1961582)))

(assert (=> bs!1557540 (= lambda!342231 lambda!342097)))

(declare-fun bs!1557541 () Bool)

(assert (= bs!1557541 (and d!1962222 b!6254357)))

(assert (=> bs!1557541 (not (= lambda!342231 lambda!342205))))

(declare-fun bs!1557542 () Bool)

(assert (= bs!1557542 (and d!1962222 d!1961580)))

(assert (=> bs!1557542 (= lambda!342231 lambda!342094)))

(declare-fun bs!1557543 () Bool)

(assert (= bs!1557543 (and d!1962222 d!1962214)))

(assert (=> bs!1557543 (= lambda!342231 lambda!342229)))

(declare-fun bs!1557544 () Bool)

(assert (= bs!1557544 (and d!1962222 d!1962168)))

(assert (=> bs!1557544 (= lambda!342231 lambda!342221)))

(declare-fun bs!1557545 () Bool)

(assert (= bs!1557545 (and d!1962222 d!1962064)))

(assert (=> bs!1557545 (= lambda!342231 lambda!342210)))

(declare-fun bs!1557546 () Bool)

(assert (= bs!1557546 (and d!1962222 d!1961588)))

(assert (=> bs!1557546 (= lambda!342231 lambda!342100)))

(declare-fun bs!1557547 () Bool)

(assert (= bs!1557547 (and d!1962222 b!6254670)))

(assert (=> bs!1557547 (not (= lambda!342231 lambda!342225))))

(declare-fun bs!1557548 () Bool)

(assert (= bs!1557548 (and d!1962222 d!1961654)))

(assert (=> bs!1557548 (= lambda!342231 lambda!342133)))

(declare-fun b!6254684 () Bool)

(declare-fun e!3805039 () Regex!16177)

(assert (=> b!6254684 (= e!3805039 EmptyLang!16177)))

(declare-fun b!6254685 () Bool)

(declare-fun e!3805041 () Bool)

(declare-fun e!3805040 () Bool)

(assert (=> b!6254685 (= e!3805041 e!3805040)))

(declare-fun c!1132240 () Bool)

(assert (=> b!6254685 (= c!1132240 (isEmpty!36731 (t!378378 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6254686 () Bool)

(assert (=> b!6254686 (= e!3805039 (Union!16177 (h!71154 (t!378378 (unfocusZipperList!1598 zl!343))) (generalisedUnion!2021 (t!378378 (t!378378 (unfocusZipperList!1598 zl!343))))))))

(declare-fun b!6254688 () Bool)

(declare-fun e!3805038 () Bool)

(assert (=> b!6254688 (= e!3805038 (isEmpty!36731 (t!378378 (t!378378 (unfocusZipperList!1598 zl!343)))))))

(declare-fun b!6254689 () Bool)

(declare-fun e!3805042 () Bool)

(assert (=> b!6254689 (= e!3805040 e!3805042)))

(declare-fun c!1132242 () Bool)

(assert (=> b!6254689 (= c!1132242 (isEmpty!36731 (tail!11944 (t!378378 (unfocusZipperList!1598 zl!343)))))))

(declare-fun b!6254687 () Bool)

(declare-fun lt!2349142 () Regex!16177)

(assert (=> b!6254687 (= e!3805042 (= lt!2349142 (head!12859 (t!378378 (unfocusZipperList!1598 zl!343)))))))

(assert (=> d!1962222 e!3805041))

(declare-fun res!2581341 () Bool)

(assert (=> d!1962222 (=> (not res!2581341) (not e!3805041))))

(assert (=> d!1962222 (= res!2581341 (validRegex!7913 lt!2349142))))

(declare-fun e!3805043 () Regex!16177)

(assert (=> d!1962222 (= lt!2349142 e!3805043)))

(declare-fun c!1132239 () Bool)

(assert (=> d!1962222 (= c!1132239 e!3805038)))

(declare-fun res!2581340 () Bool)

(assert (=> d!1962222 (=> (not res!2581340) (not e!3805038))))

(assert (=> d!1962222 (= res!2581340 ((_ is Cons!64706) (t!378378 (unfocusZipperList!1598 zl!343))))))

(assert (=> d!1962222 (forall!15296 (t!378378 (unfocusZipperList!1598 zl!343)) lambda!342231)))

(assert (=> d!1962222 (= (generalisedUnion!2021 (t!378378 (unfocusZipperList!1598 zl!343))) lt!2349142)))

(declare-fun b!6254690 () Bool)

(assert (=> b!6254690 (= e!3805043 e!3805039)))

(declare-fun c!1132241 () Bool)

(assert (=> b!6254690 (= c!1132241 ((_ is Cons!64706) (t!378378 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6254691 () Bool)

(assert (=> b!6254691 (= e!3805040 (isEmptyLang!1594 lt!2349142))))

(declare-fun b!6254692 () Bool)

(assert (=> b!6254692 (= e!3805043 (h!71154 (t!378378 (unfocusZipperList!1598 zl!343))))))

(declare-fun b!6254693 () Bool)

(assert (=> b!6254693 (= e!3805042 (isUnion!1024 lt!2349142))))

(assert (= (and d!1962222 res!2581340) b!6254688))

(assert (= (and d!1962222 c!1132239) b!6254692))

(assert (= (and d!1962222 (not c!1132239)) b!6254690))

(assert (= (and b!6254690 c!1132241) b!6254686))

(assert (= (and b!6254690 (not c!1132241)) b!6254684))

(assert (= (and d!1962222 res!2581341) b!6254685))

(assert (= (and b!6254685 c!1132240) b!6254691))

(assert (= (and b!6254685 (not c!1132240)) b!6254689))

(assert (= (and b!6254689 c!1132242) b!6254687))

(assert (= (and b!6254689 (not c!1132242)) b!6254693))

(declare-fun m!7077702 () Bool)

(assert (=> b!6254689 m!7077702))

(assert (=> b!6254689 m!7077702))

(declare-fun m!7077704 () Bool)

(assert (=> b!6254689 m!7077704))

(assert (=> b!6254685 m!7076274))

(declare-fun m!7077706 () Bool)

(assert (=> b!6254687 m!7077706))

(declare-fun m!7077708 () Bool)

(assert (=> d!1962222 m!7077708))

(declare-fun m!7077710 () Bool)

(assert (=> d!1962222 m!7077710))

(declare-fun m!7077712 () Bool)

(assert (=> b!6254686 m!7077712))

(declare-fun m!7077714 () Bool)

(assert (=> b!6254691 m!7077714))

(declare-fun m!7077716 () Bool)

(assert (=> b!6254693 m!7077716))

(declare-fun m!7077718 () Bool)

(assert (=> b!6254688 m!7077718))

(assert (=> b!6253275 d!1962222))

(assert (=> d!1961594 d!1961592))

(assert (=> d!1961594 d!1961590))

(declare-fun d!1962224 () Bool)

(assert (=> d!1962224 (= (matchR!8360 r!7292 s!2326) (matchRSpec!3278 r!7292 s!2326))))

(assert (=> d!1962224 true))

(declare-fun _$88!4889 () Unit!158039)

(assert (=> d!1962224 (= (choose!46408 r!7292 s!2326) _$88!4889)))

(declare-fun bs!1557549 () Bool)

(assert (= bs!1557549 d!1962224))

(assert (=> bs!1557549 m!7075680))

(assert (=> bs!1557549 m!7075678))

(assert (=> d!1961594 d!1962224))

(assert (=> d!1961594 d!1961540))

(declare-fun d!1962226 () Bool)

(declare-fun res!2581342 () Bool)

(declare-fun e!3805044 () Bool)

(assert (=> d!1962226 (=> res!2581342 e!3805044)))

(assert (=> d!1962226 (= res!2581342 ((_ is Nil!64707) zl!343))))

(assert (=> d!1962226 (= (forall!15297 zl!343 lambda!342121) e!3805044)))

(declare-fun b!6254694 () Bool)

(declare-fun e!3805045 () Bool)

(assert (=> b!6254694 (= e!3805044 e!3805045)))

(declare-fun res!2581343 () Bool)

(assert (=> b!6254694 (=> (not res!2581343) (not e!3805045))))

(assert (=> b!6254694 (= res!2581343 (dynLambda!25563 lambda!342121 (h!71155 zl!343)))))

(declare-fun b!6254695 () Bool)

(assert (=> b!6254695 (= e!3805045 (forall!15297 (t!378379 zl!343) lambda!342121))))

(assert (= (and d!1962226 (not res!2581342)) b!6254694))

(assert (= (and b!6254694 res!2581343) b!6254695))

(declare-fun b_lambda!238011 () Bool)

(assert (=> (not b_lambda!238011) (not b!6254694)))

(declare-fun m!7077720 () Bool)

(assert (=> b!6254694 m!7077720))

(declare-fun m!7077722 () Bool)

(assert (=> b!6254695 m!7077722))

(assert (=> b!6253451 d!1962226))

(declare-fun d!1962228 () Bool)

(declare-fun c!1132243 () Bool)

(assert (=> d!1962228 (= c!1132243 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805046 () Bool)

(assert (=> d!1962228 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348875 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805046)))

(declare-fun b!6254696 () Bool)

(assert (=> b!6254696 (= e!3805046 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348875 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254697 () Bool)

(assert (=> b!6254697 (= e!3805046 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348875 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962228 c!1132243) b!6254696))

(assert (= (and d!1962228 (not c!1132243)) b!6254697))

(assert (=> d!1962228 m!7076144))

(assert (=> d!1962228 m!7077362))

(assert (=> b!6254696 m!7076332))

(declare-fun m!7077724 () Bool)

(assert (=> b!6254696 m!7077724))

(assert (=> b!6254697 m!7076144))

(assert (=> b!6254697 m!7077366))

(assert (=> b!6254697 m!7076332))

(assert (=> b!6254697 m!7077366))

(declare-fun m!7077726 () Bool)

(assert (=> b!6254697 m!7077726))

(assert (=> b!6254697 m!7076144))

(assert (=> b!6254697 m!7077370))

(assert (=> b!6254697 m!7077726))

(assert (=> b!6254697 m!7077370))

(declare-fun m!7077728 () Bool)

(assert (=> b!6254697 m!7077728))

(assert (=> b!6253414 d!1962228))

(declare-fun bs!1557550 () Bool)

(declare-fun d!1962230 () Bool)

(assert (= bs!1557550 (and d!1962230 d!1961556)))

(declare-fun lambda!342232 () Int)

(assert (=> bs!1557550 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342232 lambda!342091))))

(declare-fun bs!1557551 () Bool)

(assert (= bs!1557551 (and d!1962230 d!1962076)))

(assert (=> bs!1557551 (= lambda!342232 lambda!342211)))

(declare-fun bs!1557552 () Bool)

(assert (= bs!1557552 (and d!1962230 d!1962098)))

(assert (=> bs!1557552 (= lambda!342232 lambda!342212)))

(declare-fun bs!1557553 () Bool)

(assert (= bs!1557553 (and d!1962230 d!1962140)))

(assert (=> bs!1557553 (= lambda!342232 lambda!342218)))

(declare-fun bs!1557554 () Bool)

(assert (= bs!1557554 (and d!1962230 d!1961632)))

(assert (=> bs!1557554 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342232 lambda!342122))))

(declare-fun bs!1557555 () Bool)

(assert (= bs!1557555 (and d!1962230 b!6252643)))

(assert (=> bs!1557555 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342232 lambda!342043))))

(declare-fun bs!1557556 () Bool)

(assert (= bs!1557556 (and d!1962230 d!1962158)))

(assert (=> bs!1557556 (= lambda!342232 lambda!342220)))

(declare-fun bs!1557557 () Bool)

(assert (= bs!1557557 (and d!1962230 d!1962218)))

(assert (=> bs!1557557 (= lambda!342232 lambda!342230)))

(assert (=> d!1962230 true))

(assert (=> d!1962230 (= (derivationStepZipper!2143 lt!2348875 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348875 lambda!342232))))

(declare-fun bs!1557558 () Bool)

(assert (= bs!1557558 d!1962230))

(declare-fun m!7077730 () Bool)

(assert (=> bs!1557558 m!7077730))

(assert (=> b!6253414 d!1962230))

(assert (=> b!6253414 d!1962078))

(assert (=> b!6253414 d!1962080))

(declare-fun d!1962232 () Bool)

(assert (=> d!1962232 (= (Exists!3247 lambda!342131) (choose!46409 lambda!342131))))

(declare-fun bs!1557559 () Bool)

(assert (= bs!1557559 d!1962232))

(declare-fun m!7077732 () Bool)

(assert (=> bs!1557559 m!7077732))

(assert (=> d!1961648 d!1962232))

(declare-fun d!1962234 () Bool)

(assert (=> d!1962234 (= (Exists!3247 lambda!342132) (choose!46409 lambda!342132))))

(declare-fun bs!1557560 () Bool)

(assert (= bs!1557560 d!1962234))

(declare-fun m!7077734 () Bool)

(assert (=> bs!1557560 m!7077734))

(assert (=> d!1961648 d!1962234))

(declare-fun bs!1557561 () Bool)

(declare-fun d!1962236 () Bool)

(assert (= bs!1557561 (and d!1962236 b!6253360)))

(declare-fun lambda!342237 () Int)

(assert (=> bs!1557561 (not (= lambda!342237 lambda!342105))))

(declare-fun bs!1557562 () Bool)

(assert (= bs!1557562 (and d!1962236 d!1961646)))

(assert (=> bs!1557562 (= lambda!342237 lambda!342126)))

(declare-fun bs!1557563 () Bool)

(assert (= bs!1557563 (and d!1962236 d!1961648)))

(assert (=> bs!1557563 (not (= lambda!342237 lambda!342132))))

(declare-fun bs!1557564 () Bool)

(assert (= bs!1557564 (and d!1962236 b!6252634)))

(assert (=> bs!1557564 (= lambda!342237 lambda!342041)))

(declare-fun bs!1557565 () Bool)

(assert (= bs!1557565 (and d!1962236 b!6254489)))

(assert (=> bs!1557565 (not (= lambda!342237 lambda!342216))))

(declare-fun bs!1557566 () Bool)

(assert (= bs!1557566 (and d!1962236 d!1962106)))

(assert (=> bs!1557566 (= lambda!342237 lambda!342215)))

(assert (=> bs!1557563 (= lambda!342237 lambda!342131)))

(assert (=> bs!1557564 (not (= lambda!342237 lambda!342042))))

(declare-fun bs!1557567 () Bool)

(assert (= bs!1557567 (and d!1962236 b!6253362)))

(assert (=> bs!1557567 (not (= lambda!342237 lambda!342106))))

(declare-fun bs!1557568 () Bool)

(assert (= bs!1557568 (and d!1962236 b!6254491)))

(assert (=> bs!1557568 (not (= lambda!342237 lambda!342217))))

(assert (=> d!1962236 true))

(assert (=> d!1962236 true))

(assert (=> d!1962236 true))

(declare-fun lambda!342238 () Int)

(assert (=> bs!1557561 (not (= lambda!342238 lambda!342105))))

(assert (=> bs!1557562 (not (= lambda!342238 lambda!342126))))

(assert (=> bs!1557563 (= lambda!342238 lambda!342132)))

(declare-fun bs!1557569 () Bool)

(assert (= bs!1557569 d!1962236))

(assert (=> bs!1557569 (not (= lambda!342238 lambda!342237))))

(assert (=> bs!1557564 (not (= lambda!342238 lambda!342041))))

(assert (=> bs!1557565 (not (= lambda!342238 lambda!342216))))

(assert (=> bs!1557566 (not (= lambda!342238 lambda!342215))))

(assert (=> bs!1557563 (not (= lambda!342238 lambda!342131))))

(assert (=> bs!1557564 (= lambda!342238 lambda!342042)))

(assert (=> bs!1557567 (= lambda!342238 lambda!342106)))

(assert (=> bs!1557568 (= (and (= (regOne!32866 r!7292) (regOne!32866 (regOne!32867 r!7292))) (= (regTwo!32866 r!7292) (regTwo!32866 (regOne!32867 r!7292)))) (= lambda!342238 lambda!342217))))

(assert (=> d!1962236 true))

(assert (=> d!1962236 true))

(assert (=> d!1962236 true))

(assert (=> d!1962236 (= (Exists!3247 lambda!342237) (Exists!3247 lambda!342238))))

(assert (=> d!1962236 true))

(declare-fun _$90!2067 () Unit!158039)

(assert (=> d!1962236 (= (choose!46411 (regOne!32866 r!7292) (regTwo!32866 r!7292) s!2326) _$90!2067)))

(declare-fun m!7077736 () Bool)

(assert (=> bs!1557569 m!7077736))

(declare-fun m!7077738 () Bool)

(assert (=> bs!1557569 m!7077738))

(assert (=> d!1961648 d!1962236))

(assert (=> d!1961648 d!1962104))

(declare-fun d!1962238 () Bool)

(assert (=> d!1962238 (= (head!12859 lt!2348860) (h!71154 lt!2348860))))

(assert (=> b!6253321 d!1962238))

(declare-fun d!1962240 () Bool)

(assert (=> d!1962240 (= (nullable!6170 r!7292) (nullableFct!2124 r!7292))))

(declare-fun bs!1557570 () Bool)

(assert (= bs!1557570 d!1962240))

(declare-fun m!7077740 () Bool)

(assert (=> bs!1557570 m!7077740))

(assert (=> b!6253406 d!1962240))

(assert (=> d!1961622 d!1962020))

(declare-fun d!1962242 () Bool)

(assert (=> d!1962242 (= (flatMap!1682 lt!2348870 lambda!342091) (choose!46406 lt!2348870 lambda!342091))))

(declare-fun bs!1557571 () Bool)

(assert (= bs!1557571 d!1962242))

(declare-fun m!7077742 () Bool)

(assert (=> bs!1557571 m!7077742))

(assert (=> d!1961556 d!1962242))

(declare-fun d!1962244 () Bool)

(assert (=> d!1962244 (= (nullable!6170 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))) (nullableFct!2124 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))))

(declare-fun bs!1557572 () Bool)

(assert (= bs!1557572 d!1962244))

(declare-fun m!7077744 () Bool)

(assert (=> bs!1557572 m!7077744))

(assert (=> b!6253231 d!1962244))

(declare-fun b!6254706 () Bool)

(declare-fun e!3805053 () Bool)

(declare-fun e!3805051 () Bool)

(assert (=> b!6254706 (= e!3805053 e!3805051)))

(declare-fun res!2581353 () Bool)

(declare-fun call!527799 () Bool)

(assert (=> b!6254706 (= res!2581353 call!527799)))

(assert (=> b!6254706 (=> res!2581353 e!3805051)))

(declare-fun bm!527794 () Bool)

(declare-fun c!1132244 () Bool)

(assert (=> bm!527794 (= call!527799 (nullable!6170 (ite c!1132244 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6254708 () Bool)

(declare-fun e!3805054 () Bool)

(declare-fun e!3805055 () Bool)

(assert (=> b!6254708 (= e!3805054 e!3805055)))

(declare-fun res!2581355 () Bool)

(assert (=> b!6254708 (=> (not res!2581355) (not e!3805055))))

(assert (=> b!6254708 (= res!2581355 (and (not ((_ is EmptyLang!16177) (h!71154 (exprs!6061 (h!71155 zl!343))))) (not ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun bm!527795 () Bool)

(declare-fun call!527800 () Bool)

(assert (=> bm!527795 (= call!527800 (nullable!6170 (ite c!1132244 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6254709 () Bool)

(declare-fun e!3805056 () Bool)

(assert (=> b!6254709 (= e!3805055 e!3805056)))

(declare-fun res!2581356 () Bool)

(assert (=> b!6254709 (=> res!2581356 e!3805056)))

(assert (=> b!6254709 (= res!2581356 ((_ is Star!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254710 () Bool)

(declare-fun e!3805052 () Bool)

(assert (=> b!6254710 (= e!3805053 e!3805052)))

(declare-fun res!2581354 () Bool)

(assert (=> b!6254710 (= res!2581354 call!527799)))

(assert (=> b!6254710 (=> (not res!2581354) (not e!3805052))))

(declare-fun b!6254711 () Bool)

(assert (=> b!6254711 (= e!3805052 call!527800)))

(declare-fun b!6254712 () Bool)

(assert (=> b!6254712 (= e!3805056 e!3805053)))

(assert (=> b!6254712 (= c!1132244 ((_ is Union!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254707 () Bool)

(assert (=> b!6254707 (= e!3805051 call!527800)))

(declare-fun d!1962246 () Bool)

(declare-fun res!2581352 () Bool)

(assert (=> d!1962246 (=> res!2581352 e!3805054)))

(assert (=> d!1962246 (= res!2581352 ((_ is EmptyExpr!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> d!1962246 (= (nullableFct!2124 (h!71154 (exprs!6061 (h!71155 zl!343)))) e!3805054)))

(assert (= (and d!1962246 (not res!2581352)) b!6254708))

(assert (= (and b!6254708 res!2581355) b!6254709))

(assert (= (and b!6254709 (not res!2581356)) b!6254712))

(assert (= (and b!6254712 c!1132244) b!6254706))

(assert (= (and b!6254712 (not c!1132244)) b!6254710))

(assert (= (and b!6254706 (not res!2581353)) b!6254707))

(assert (= (and b!6254710 res!2581354) b!6254711))

(assert (= (or b!6254707 b!6254711) bm!527795))

(assert (= (or b!6254706 b!6254710) bm!527794))

(declare-fun m!7077746 () Bool)

(assert (=> bm!527794 m!7077746))

(declare-fun m!7077748 () Bool)

(assert (=> bm!527795 m!7077748))

(assert (=> d!1961566 d!1962246))

(declare-fun bs!1557573 () Bool)

(declare-fun d!1962248 () Bool)

(assert (= bs!1557573 (and d!1962248 d!1962198)))

(declare-fun lambda!342239 () Int)

(assert (=> bs!1557573 (not (= lambda!342239 lambda!342223))))

(declare-fun bs!1557574 () Bool)

(assert (= bs!1557574 (and d!1962248 b!6253451)))

(assert (=> bs!1557574 (not (= lambda!342239 lambda!342121))))

(declare-fun bs!1557575 () Bool)

(assert (= bs!1557575 (and d!1962248 b!6254671)))

(assert (=> bs!1557575 (not (= lambda!342239 lambda!342227))))

(declare-fun bs!1557576 () Bool)

(assert (= bs!1557576 (and d!1962248 b!6253444)))

(assert (=> bs!1557576 (not (= lambda!342239 lambda!342117))))

(declare-fun bs!1557577 () Bool)

(assert (= bs!1557577 (and d!1962248 b!6254673)))

(assert (=> bs!1557577 (not (= lambda!342239 lambda!342228))))

(declare-fun bs!1557578 () Bool)

(assert (= bs!1557578 (and d!1962248 d!1962050)))

(assert (=> bs!1557578 (not (= lambda!342239 lambda!342200))))

(declare-fun bs!1557579 () Bool)

(assert (= bs!1557579 (and d!1962248 b!6254362)))

(assert (=> bs!1557579 (not (= lambda!342239 lambda!342208))))

(declare-fun bs!1557580 () Bool)

(assert (= bs!1557580 (and d!1962248 d!1962188)))

(assert (=> bs!1557580 (= lambda!342239 lambda!342222)))

(declare-fun bs!1557581 () Bool)

(assert (= bs!1557581 (and d!1962248 d!1962144)))

(assert (=> bs!1557581 (= lambda!342239 lambda!342219)))

(declare-fun bs!1557582 () Bool)

(assert (= bs!1557582 (and d!1962248 d!1962044)))

(assert (=> bs!1557582 (= lambda!342239 lambda!342197)))

(declare-fun bs!1557583 () Bool)

(assert (= bs!1557583 (and d!1962248 b!6254364)))

(assert (=> bs!1557583 (not (= lambda!342239 lambda!342209))))

(declare-fun bs!1557584 () Bool)

(assert (= bs!1557584 (and d!1962248 b!6253449)))

(assert (=> bs!1557584 (not (= lambda!342239 lambda!342120))))

(declare-fun bs!1557585 () Bool)

(assert (= bs!1557585 (and d!1962248 b!6253446)))

(assert (=> bs!1557585 (not (= lambda!342239 lambda!342118))))

(assert (=> d!1962248 (= (nullableZipper!1949 ((_ map or) lt!2348871 lt!2348858)) (exists!2513 ((_ map or) lt!2348871 lt!2348858) lambda!342239))))

(declare-fun bs!1557586 () Bool)

(assert (= bs!1557586 d!1962248))

(declare-fun m!7077750 () Bool)

(assert (=> bs!1557586 m!7077750))

(assert (=> b!6253167 d!1962248))

(declare-fun bs!1557587 () Bool)

(declare-fun d!1962250 () Bool)

(assert (= bs!1557587 (and d!1962250 d!1962198)))

(declare-fun lambda!342240 () Int)

(assert (=> bs!1557587 (not (= lambda!342240 lambda!342223))))

(declare-fun bs!1557588 () Bool)

(assert (= bs!1557588 (and d!1962250 d!1962248)))

(assert (=> bs!1557588 (= lambda!342240 lambda!342239)))

(declare-fun bs!1557589 () Bool)

(assert (= bs!1557589 (and d!1962250 b!6253451)))

(assert (=> bs!1557589 (not (= lambda!342240 lambda!342121))))

(declare-fun bs!1557590 () Bool)

(assert (= bs!1557590 (and d!1962250 b!6254671)))

(assert (=> bs!1557590 (not (= lambda!342240 lambda!342227))))

(declare-fun bs!1557591 () Bool)

(assert (= bs!1557591 (and d!1962250 b!6253444)))

(assert (=> bs!1557591 (not (= lambda!342240 lambda!342117))))

(declare-fun bs!1557592 () Bool)

(assert (= bs!1557592 (and d!1962250 b!6254673)))

(assert (=> bs!1557592 (not (= lambda!342240 lambda!342228))))

(declare-fun bs!1557593 () Bool)

(assert (= bs!1557593 (and d!1962250 d!1962050)))

(assert (=> bs!1557593 (not (= lambda!342240 lambda!342200))))

(declare-fun bs!1557594 () Bool)

(assert (= bs!1557594 (and d!1962250 b!6254362)))

(assert (=> bs!1557594 (not (= lambda!342240 lambda!342208))))

(declare-fun bs!1557595 () Bool)

(assert (= bs!1557595 (and d!1962250 d!1962188)))

(assert (=> bs!1557595 (= lambda!342240 lambda!342222)))

(declare-fun bs!1557596 () Bool)

(assert (= bs!1557596 (and d!1962250 d!1962144)))

(assert (=> bs!1557596 (= lambda!342240 lambda!342219)))

(declare-fun bs!1557597 () Bool)

(assert (= bs!1557597 (and d!1962250 d!1962044)))

(assert (=> bs!1557597 (= lambda!342240 lambda!342197)))

(declare-fun bs!1557598 () Bool)

(assert (= bs!1557598 (and d!1962250 b!6254364)))

(assert (=> bs!1557598 (not (= lambda!342240 lambda!342209))))

(declare-fun bs!1557599 () Bool)

(assert (= bs!1557599 (and d!1962250 b!6253449)))

(assert (=> bs!1557599 (not (= lambda!342240 lambda!342120))))

(declare-fun bs!1557600 () Bool)

(assert (= bs!1557600 (and d!1962250 b!6253446)))

(assert (=> bs!1557600 (not (= lambda!342240 lambda!342118))))

(assert (=> d!1962250 (= (nullableZipper!1949 lt!2348854) (exists!2513 lt!2348854 lambda!342240))))

(declare-fun bs!1557601 () Bool)

(assert (= bs!1557601 d!1962250))

(declare-fun m!7077752 () Bool)

(assert (=> bs!1557601 m!7077752))

(assert (=> b!6253121 d!1962250))

(declare-fun d!1962252 () Bool)

(declare-fun c!1132245 () Bool)

(assert (=> d!1962252 (= c!1132245 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805057 () Bool)

(assert (=> d!1962252 (= (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805057)))

(declare-fun b!6254713 () Bool)

(assert (=> b!6254713 (= e!3805057 (nullableZipper!1949 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254714 () Bool)

(assert (=> b!6254714 (= e!3805057 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962252 c!1132245) b!6254713))

(assert (= (and d!1962252 (not c!1132245)) b!6254714))

(assert (=> d!1962252 m!7076144))

(assert (=> d!1962252 m!7077362))

(assert (=> b!6254713 m!7076190))

(declare-fun m!7077754 () Bool)

(assert (=> b!6254713 m!7077754))

(assert (=> b!6254714 m!7076144))

(assert (=> b!6254714 m!7077366))

(assert (=> b!6254714 m!7076190))

(assert (=> b!6254714 m!7077366))

(declare-fun m!7077756 () Bool)

(assert (=> b!6254714 m!7077756))

(assert (=> b!6254714 m!7076144))

(assert (=> b!6254714 m!7077370))

(assert (=> b!6254714 m!7077756))

(assert (=> b!6254714 m!7077370))

(declare-fun m!7077758 () Bool)

(assert (=> b!6254714 m!7077758))

(assert (=> b!6253170 d!1962252))

(declare-fun bs!1557602 () Bool)

(declare-fun d!1962254 () Bool)

(assert (= bs!1557602 (and d!1962254 d!1961556)))

(declare-fun lambda!342241 () Int)

(assert (=> bs!1557602 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342241 lambda!342091))))

(declare-fun bs!1557603 () Bool)

(assert (= bs!1557603 (and d!1962254 d!1962076)))

(assert (=> bs!1557603 (= lambda!342241 lambda!342211)))

(declare-fun bs!1557604 () Bool)

(assert (= bs!1557604 (and d!1962254 d!1962098)))

(assert (=> bs!1557604 (= lambda!342241 lambda!342212)))

(declare-fun bs!1557605 () Bool)

(assert (= bs!1557605 (and d!1962254 d!1962140)))

(assert (=> bs!1557605 (= lambda!342241 lambda!342218)))

(declare-fun bs!1557606 () Bool)

(assert (= bs!1557606 (and d!1962254 b!6252643)))

(assert (=> bs!1557606 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342241 lambda!342043))))

(declare-fun bs!1557607 () Bool)

(assert (= bs!1557607 (and d!1962254 d!1962158)))

(assert (=> bs!1557607 (= lambda!342241 lambda!342220)))

(declare-fun bs!1557608 () Bool)

(assert (= bs!1557608 (and d!1962254 d!1962218)))

(assert (=> bs!1557608 (= lambda!342241 lambda!342230)))

(declare-fun bs!1557609 () Bool)

(assert (= bs!1557609 (and d!1962254 d!1962230)))

(assert (=> bs!1557609 (= lambda!342241 lambda!342232)))

(declare-fun bs!1557610 () Bool)

(assert (= bs!1557610 (and d!1962254 d!1961632)))

(assert (=> bs!1557610 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342241 lambda!342122))))

(assert (=> d!1962254 true))

(assert (=> d!1962254 (= (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) (head!12858 (t!378380 s!2326))) (flatMap!1682 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) lambda!342241))))

(declare-fun bs!1557611 () Bool)

(assert (= bs!1557611 d!1962254))

(assert (=> bs!1557611 m!7075670))

(declare-fun m!7077760 () Bool)

(assert (=> bs!1557611 m!7077760))

(assert (=> b!6253170 d!1962254))

(assert (=> b!6253170 d!1962078))

(assert (=> b!6253170 d!1962080))

(declare-fun b!6254715 () Bool)

(declare-fun e!3805061 () Bool)

(declare-fun e!3805060 () Bool)

(assert (=> b!6254715 (= e!3805061 e!3805060)))

(declare-fun res!2581358 () Bool)

(assert (=> b!6254715 (=> (not res!2581358) (not e!3805060))))

(declare-fun call!527801 () Bool)

(assert (=> b!6254715 (= res!2581358 call!527801)))

(declare-fun b!6254716 () Bool)

(declare-fun e!3805064 () Bool)

(declare-fun e!3805058 () Bool)

(assert (=> b!6254716 (= e!3805064 e!3805058)))

(declare-fun res!2581359 () Bool)

(assert (=> b!6254716 (= res!2581359 (not (nullable!6170 (reg!16506 lt!2348973))))))

(assert (=> b!6254716 (=> (not res!2581359) (not e!3805058))))

(declare-fun b!6254717 () Bool)

(declare-fun e!3805062 () Bool)

(assert (=> b!6254717 (= e!3805062 e!3805064)))

(declare-fun c!1132246 () Bool)

(assert (=> b!6254717 (= c!1132246 ((_ is Star!16177) lt!2348973))))

(declare-fun d!1962256 () Bool)

(declare-fun res!2581357 () Bool)

(assert (=> d!1962256 (=> res!2581357 e!3805062)))

(assert (=> d!1962256 (= res!2581357 ((_ is ElementMatch!16177) lt!2348973))))

(assert (=> d!1962256 (= (validRegex!7913 lt!2348973) e!3805062)))

(declare-fun bm!527796 () Bool)

(declare-fun call!527803 () Bool)

(declare-fun c!1132247 () Bool)

(assert (=> bm!527796 (= call!527803 (validRegex!7913 (ite c!1132247 (regTwo!32867 lt!2348973) (regTwo!32866 lt!2348973))))))

(declare-fun b!6254718 () Bool)

(declare-fun res!2581360 () Bool)

(assert (=> b!6254718 (=> res!2581360 e!3805061)))

(assert (=> b!6254718 (= res!2581360 (not ((_ is Concat!25022) lt!2348973)))))

(declare-fun e!3805059 () Bool)

(assert (=> b!6254718 (= e!3805059 e!3805061)))

(declare-fun bm!527797 () Bool)

(declare-fun call!527802 () Bool)

(assert (=> bm!527797 (= call!527801 call!527802)))

(declare-fun b!6254719 () Bool)

(declare-fun res!2581361 () Bool)

(declare-fun e!3805063 () Bool)

(assert (=> b!6254719 (=> (not res!2581361) (not e!3805063))))

(assert (=> b!6254719 (= res!2581361 call!527801)))

(assert (=> b!6254719 (= e!3805059 e!3805063)))

(declare-fun b!6254720 () Bool)

(assert (=> b!6254720 (= e!3805063 call!527803)))

(declare-fun b!6254721 () Bool)

(assert (=> b!6254721 (= e!3805064 e!3805059)))

(assert (=> b!6254721 (= c!1132247 ((_ is Union!16177) lt!2348973))))

(declare-fun bm!527798 () Bool)

(assert (=> bm!527798 (= call!527802 (validRegex!7913 (ite c!1132246 (reg!16506 lt!2348973) (ite c!1132247 (regOne!32867 lt!2348973) (regOne!32866 lt!2348973)))))))

(declare-fun b!6254722 () Bool)

(assert (=> b!6254722 (= e!3805060 call!527803)))

(declare-fun b!6254723 () Bool)

(assert (=> b!6254723 (= e!3805058 call!527802)))

(assert (= (and d!1962256 (not res!2581357)) b!6254717))

(assert (= (and b!6254717 c!1132246) b!6254716))

(assert (= (and b!6254717 (not c!1132246)) b!6254721))

(assert (= (and b!6254716 res!2581359) b!6254723))

(assert (= (and b!6254721 c!1132247) b!6254719))

(assert (= (and b!6254721 (not c!1132247)) b!6254718))

(assert (= (and b!6254719 res!2581361) b!6254720))

(assert (= (and b!6254718 (not res!2581360)) b!6254715))

(assert (= (and b!6254715 res!2581358) b!6254722))

(assert (= (or b!6254720 b!6254722) bm!527796))

(assert (= (or b!6254719 b!6254715) bm!527797))

(assert (= (or b!6254723 bm!527797) bm!527798))

(declare-fun m!7077762 () Bool)

(assert (=> b!6254716 m!7077762))

(declare-fun m!7077764 () Bool)

(assert (=> bm!527796 m!7077764))

(declare-fun m!7077766 () Bool)

(assert (=> bm!527798 m!7077766))

(assert (=> d!1961574 d!1962256))

(declare-fun bs!1557612 () Bool)

(declare-fun d!1962258 () Bool)

(assert (= bs!1557612 (and d!1962258 d!1961604)))

(declare-fun lambda!342242 () Int)

(assert (=> bs!1557612 (= lambda!342242 lambda!342109)))

(declare-fun bs!1557613 () Bool)

(assert (= bs!1557613 (and d!1962258 d!1962222)))

(assert (=> bs!1557613 (= lambda!342242 lambda!342231)))

(declare-fun bs!1557614 () Bool)

(assert (= bs!1557614 (and d!1962258 d!1961638)))

(assert (=> bs!1557614 (= lambda!342242 lambda!342123)))

(declare-fun bs!1557615 () Bool)

(assert (= bs!1557615 (and d!1962258 b!6254668)))

(assert (=> bs!1557615 (not (= lambda!342242 lambda!342224))))

(declare-fun bs!1557616 () Bool)

(assert (= bs!1557616 (and d!1962258 b!6254359)))

(assert (=> bs!1557616 (not (= lambda!342242 lambda!342206))))

(declare-fun bs!1557617 () Bool)

(assert (= bs!1557617 (and d!1962258 d!1961582)))

(assert (=> bs!1557617 (= lambda!342242 lambda!342097)))

(declare-fun bs!1557618 () Bool)

(assert (= bs!1557618 (and d!1962258 b!6254357)))

(assert (=> bs!1557618 (not (= lambda!342242 lambda!342205))))

(declare-fun bs!1557619 () Bool)

(assert (= bs!1557619 (and d!1962258 d!1961580)))

(assert (=> bs!1557619 (= lambda!342242 lambda!342094)))

(declare-fun bs!1557620 () Bool)

(assert (= bs!1557620 (and d!1962258 d!1962214)))

(assert (=> bs!1557620 (= lambda!342242 lambda!342229)))

(declare-fun bs!1557621 () Bool)

(assert (= bs!1557621 (and d!1962258 d!1962168)))

(assert (=> bs!1557621 (= lambda!342242 lambda!342221)))

(declare-fun bs!1557622 () Bool)

(assert (= bs!1557622 (and d!1962258 d!1962064)))

(assert (=> bs!1557622 (= lambda!342242 lambda!342210)))

(declare-fun bs!1557623 () Bool)

(assert (= bs!1557623 (and d!1962258 d!1961588)))

(assert (=> bs!1557623 (= lambda!342242 lambda!342100)))

(declare-fun bs!1557624 () Bool)

(assert (= bs!1557624 (and d!1962258 b!6254670)))

(assert (=> bs!1557624 (not (= lambda!342242 lambda!342225))))

(declare-fun bs!1557625 () Bool)

(assert (= bs!1557625 (and d!1962258 d!1961654)))

(assert (=> bs!1557625 (= lambda!342242 lambda!342133)))

(declare-fun b!6254724 () Bool)

(declare-fun e!3805066 () Regex!16177)

(assert (=> b!6254724 (= e!3805066 EmptyLang!16177)))

(declare-fun b!6254725 () Bool)

(declare-fun e!3805068 () Bool)

(declare-fun e!3805067 () Bool)

(assert (=> b!6254725 (= e!3805068 e!3805067)))

(declare-fun c!1132249 () Bool)

(assert (=> b!6254725 (= c!1132249 (isEmpty!36731 (unfocusZipperList!1598 lt!2348865)))))

(declare-fun b!6254726 () Bool)

(assert (=> b!6254726 (= e!3805066 (Union!16177 (h!71154 (unfocusZipperList!1598 lt!2348865)) (generalisedUnion!2021 (t!378378 (unfocusZipperList!1598 lt!2348865)))))))

(declare-fun b!6254728 () Bool)

(declare-fun e!3805065 () Bool)

(assert (=> b!6254728 (= e!3805065 (isEmpty!36731 (t!378378 (unfocusZipperList!1598 lt!2348865))))))

(declare-fun b!6254729 () Bool)

(declare-fun e!3805069 () Bool)

(assert (=> b!6254729 (= e!3805067 e!3805069)))

(declare-fun c!1132251 () Bool)

(assert (=> b!6254729 (= c!1132251 (isEmpty!36731 (tail!11944 (unfocusZipperList!1598 lt!2348865))))))

(declare-fun b!6254727 () Bool)

(declare-fun lt!2349143 () Regex!16177)

(assert (=> b!6254727 (= e!3805069 (= lt!2349143 (head!12859 (unfocusZipperList!1598 lt!2348865))))))

(assert (=> d!1962258 e!3805068))

(declare-fun res!2581363 () Bool)

(assert (=> d!1962258 (=> (not res!2581363) (not e!3805068))))

(assert (=> d!1962258 (= res!2581363 (validRegex!7913 lt!2349143))))

(declare-fun e!3805070 () Regex!16177)

(assert (=> d!1962258 (= lt!2349143 e!3805070)))

(declare-fun c!1132248 () Bool)

(assert (=> d!1962258 (= c!1132248 e!3805065)))

(declare-fun res!2581362 () Bool)

(assert (=> d!1962258 (=> (not res!2581362) (not e!3805065))))

(assert (=> d!1962258 (= res!2581362 ((_ is Cons!64706) (unfocusZipperList!1598 lt!2348865)))))

(assert (=> d!1962258 (forall!15296 (unfocusZipperList!1598 lt!2348865) lambda!342242)))

(assert (=> d!1962258 (= (generalisedUnion!2021 (unfocusZipperList!1598 lt!2348865)) lt!2349143)))

(declare-fun b!6254730 () Bool)

(assert (=> b!6254730 (= e!3805070 e!3805066)))

(declare-fun c!1132250 () Bool)

(assert (=> b!6254730 (= c!1132250 ((_ is Cons!64706) (unfocusZipperList!1598 lt!2348865)))))

(declare-fun b!6254731 () Bool)

(assert (=> b!6254731 (= e!3805067 (isEmptyLang!1594 lt!2349143))))

(declare-fun b!6254732 () Bool)

(assert (=> b!6254732 (= e!3805070 (h!71154 (unfocusZipperList!1598 lt!2348865)))))

(declare-fun b!6254733 () Bool)

(assert (=> b!6254733 (= e!3805069 (isUnion!1024 lt!2349143))))

(assert (= (and d!1962258 res!2581362) b!6254728))

(assert (= (and d!1962258 c!1132248) b!6254732))

(assert (= (and d!1962258 (not c!1132248)) b!6254730))

(assert (= (and b!6254730 c!1132250) b!6254726))

(assert (= (and b!6254730 (not c!1132250)) b!6254724))

(assert (= (and d!1962258 res!2581363) b!6254725))

(assert (= (and b!6254725 c!1132249) b!6254731))

(assert (= (and b!6254725 (not c!1132249)) b!6254729))

(assert (= (and b!6254729 c!1132251) b!6254727))

(assert (= (and b!6254729 (not c!1132251)) b!6254733))

(assert (=> b!6254729 m!7076236))

(declare-fun m!7077768 () Bool)

(assert (=> b!6254729 m!7077768))

(assert (=> b!6254729 m!7077768))

(declare-fun m!7077770 () Bool)

(assert (=> b!6254729 m!7077770))

(assert (=> b!6254725 m!7076236))

(declare-fun m!7077772 () Bool)

(assert (=> b!6254725 m!7077772))

(assert (=> b!6254727 m!7076236))

(declare-fun m!7077774 () Bool)

(assert (=> b!6254727 m!7077774))

(declare-fun m!7077776 () Bool)

(assert (=> d!1962258 m!7077776))

(assert (=> d!1962258 m!7076236))

(declare-fun m!7077778 () Bool)

(assert (=> d!1962258 m!7077778))

(declare-fun m!7077780 () Bool)

(assert (=> b!6254726 m!7077780))

(declare-fun m!7077782 () Bool)

(assert (=> b!6254731 m!7077782))

(declare-fun m!7077784 () Bool)

(assert (=> b!6254733 m!7077784))

(declare-fun m!7077786 () Bool)

(assert (=> b!6254728 m!7077786))

(assert (=> d!1961574 d!1962258))

(declare-fun bs!1557626 () Bool)

(declare-fun d!1962260 () Bool)

(assert (= bs!1557626 (and d!1962260 d!1962258)))

(declare-fun lambda!342243 () Int)

(assert (=> bs!1557626 (= lambda!342243 lambda!342242)))

(declare-fun bs!1557627 () Bool)

(assert (= bs!1557627 (and d!1962260 d!1961604)))

(assert (=> bs!1557627 (= lambda!342243 lambda!342109)))

(declare-fun bs!1557628 () Bool)

(assert (= bs!1557628 (and d!1962260 d!1962222)))

(assert (=> bs!1557628 (= lambda!342243 lambda!342231)))

(declare-fun bs!1557629 () Bool)

(assert (= bs!1557629 (and d!1962260 d!1961638)))

(assert (=> bs!1557629 (= lambda!342243 lambda!342123)))

(declare-fun bs!1557630 () Bool)

(assert (= bs!1557630 (and d!1962260 b!6254668)))

(assert (=> bs!1557630 (not (= lambda!342243 lambda!342224))))

(declare-fun bs!1557631 () Bool)

(assert (= bs!1557631 (and d!1962260 b!6254359)))

(assert (=> bs!1557631 (not (= lambda!342243 lambda!342206))))

(declare-fun bs!1557632 () Bool)

(assert (= bs!1557632 (and d!1962260 d!1961582)))

(assert (=> bs!1557632 (= lambda!342243 lambda!342097)))

(declare-fun bs!1557633 () Bool)

(assert (= bs!1557633 (and d!1962260 b!6254357)))

(assert (=> bs!1557633 (not (= lambda!342243 lambda!342205))))

(declare-fun bs!1557634 () Bool)

(assert (= bs!1557634 (and d!1962260 d!1961580)))

(assert (=> bs!1557634 (= lambda!342243 lambda!342094)))

(declare-fun bs!1557635 () Bool)

(assert (= bs!1557635 (and d!1962260 d!1962214)))

(assert (=> bs!1557635 (= lambda!342243 lambda!342229)))

(declare-fun bs!1557636 () Bool)

(assert (= bs!1557636 (and d!1962260 d!1962168)))

(assert (=> bs!1557636 (= lambda!342243 lambda!342221)))

(declare-fun bs!1557637 () Bool)

(assert (= bs!1557637 (and d!1962260 d!1962064)))

(assert (=> bs!1557637 (= lambda!342243 lambda!342210)))

(declare-fun bs!1557638 () Bool)

(assert (= bs!1557638 (and d!1962260 d!1961588)))

(assert (=> bs!1557638 (= lambda!342243 lambda!342100)))

(declare-fun bs!1557639 () Bool)

(assert (= bs!1557639 (and d!1962260 b!6254670)))

(assert (=> bs!1557639 (not (= lambda!342243 lambda!342225))))

(declare-fun bs!1557640 () Bool)

(assert (= bs!1557640 (and d!1962260 d!1961654)))

(assert (=> bs!1557640 (= lambda!342243 lambda!342133)))

(declare-fun lt!2349144 () List!64830)

(assert (=> d!1962260 (forall!15296 lt!2349144 lambda!342243)))

(declare-fun e!3805071 () List!64830)

(assert (=> d!1962260 (= lt!2349144 e!3805071)))

(declare-fun c!1132252 () Bool)

(assert (=> d!1962260 (= c!1132252 ((_ is Cons!64707) lt!2348865))))

(assert (=> d!1962260 (= (unfocusZipperList!1598 lt!2348865) lt!2349144)))

(declare-fun b!6254734 () Bool)

(assert (=> b!6254734 (= e!3805071 (Cons!64706 (generalisedConcat!1774 (exprs!6061 (h!71155 lt!2348865))) (unfocusZipperList!1598 (t!378379 lt!2348865))))))

(declare-fun b!6254735 () Bool)

(assert (=> b!6254735 (= e!3805071 Nil!64706)))

(assert (= (and d!1962260 c!1132252) b!6254734))

(assert (= (and d!1962260 (not c!1132252)) b!6254735))

(declare-fun m!7077788 () Bool)

(assert (=> d!1962260 m!7077788))

(declare-fun m!7077790 () Bool)

(assert (=> b!6254734 m!7077790))

(declare-fun m!7077792 () Bool)

(assert (=> b!6254734 m!7077792))

(assert (=> d!1961574 d!1962260))

(assert (=> d!1961610 d!1961616))

(declare-fun d!1962262 () Bool)

(assert (=> d!1962262 (= (flatMap!1682 lt!2348870 lambda!342043) (dynLambda!25556 lambda!342043 lt!2348859))))

(assert (=> d!1962262 true))

(declare-fun _$13!3342 () Unit!158039)

(assert (=> d!1962262 (= (choose!46407 lt!2348870 lt!2348859 lambda!342043) _$13!3342)))

(declare-fun b_lambda!238013 () Bool)

(assert (=> (not b_lambda!238013) (not d!1962262)))

(declare-fun bs!1557641 () Bool)

(assert (= bs!1557641 d!1962262))

(assert (=> bs!1557641 m!7075740))

(assert (=> bs!1557641 m!7076360))

(assert (=> d!1961610 d!1962262))

(assert (=> d!1961598 d!1962020))

(assert (=> b!6253402 d!1962066))

(assert (=> b!6253402 d!1962068))

(declare-fun b!6254736 () Bool)

(declare-fun e!3805075 () Bool)

(assert (=> b!6254736 (= e!3805075 (nullable!6170 (regOne!32866 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))

(declare-fun b!6254737 () Bool)

(declare-fun e!3805072 () (InoxSet Context!11122))

(declare-fun call!527804 () (InoxSet Context!11122))

(assert (=> b!6254737 (= e!3805072 call!527804)))

(declare-fun b!6254738 () Bool)

(declare-fun e!3805073 () (InoxSet Context!11122))

(declare-fun call!527807 () (InoxSet Context!11122))

(declare-fun call!527808 () (InoxSet Context!11122))

(assert (=> b!6254738 (= e!3805073 ((_ map or) call!527807 call!527808))))

(declare-fun d!1962264 () Bool)

(declare-fun c!1132255 () Bool)

(assert (=> d!1962264 (= c!1132255 (and ((_ is ElementMatch!16177) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (= (c!1131644 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (h!71156 s!2326))))))

(declare-fun e!3805076 () (InoxSet Context!11122))

(assert (=> d!1962264 (= (derivationStepZipperDown!1425 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))) (ite c!1131813 lt!2348878 (Context!11123 call!527543)) (h!71156 s!2326)) e!3805076)))

(declare-fun b!6254739 () Bool)

(assert (=> b!6254739 (= e!3805076 e!3805073)))

(declare-fun c!1132254 () Bool)

(assert (=> b!6254739 (= c!1132254 ((_ is Union!16177) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun c!1132257 () Bool)

(declare-fun call!527805 () List!64830)

(declare-fun c!1132256 () Bool)

(declare-fun bm!527799 () Bool)

(assert (=> bm!527799 (= call!527807 (derivationStepZipperDown!1425 (ite c!1132254 (regOne!32867 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (ite c!1132256 (regTwo!32866 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (ite c!1132257 (regOne!32866 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (reg!16506 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))) (ite (or c!1132254 c!1132256) (ite c!1131813 lt!2348878 (Context!11123 call!527543)) (Context!11123 call!527805)) (h!71156 s!2326)))))

(declare-fun bm!527800 () Bool)

(declare-fun call!527809 () List!64830)

(assert (=> bm!527800 (= call!527809 ($colon$colon!2044 (exprs!6061 (ite c!1131813 lt!2348878 (Context!11123 call!527543))) (ite (or c!1132256 c!1132257) (regTwo!32866 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))

(declare-fun b!6254740 () Bool)

(assert (=> b!6254740 (= c!1132256 e!3805075)))

(declare-fun res!2581364 () Bool)

(assert (=> b!6254740 (=> (not res!2581364) (not e!3805075))))

(assert (=> b!6254740 (= res!2581364 ((_ is Concat!25022) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun e!3805074 () (InoxSet Context!11122))

(assert (=> b!6254740 (= e!3805073 e!3805074)))

(declare-fun b!6254741 () Bool)

(assert (=> b!6254741 (= e!3805074 e!3805072)))

(assert (=> b!6254741 (= c!1132257 ((_ is Concat!25022) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun bm!527801 () Bool)

(assert (=> bm!527801 (= call!527805 call!527809)))

(declare-fun bm!527802 () Bool)

(declare-fun call!527806 () (InoxSet Context!11122))

(assert (=> bm!527802 (= call!527804 call!527806)))

(declare-fun b!6254742 () Bool)

(assert (=> b!6254742 (= e!3805074 ((_ map or) call!527808 call!527806))))

(declare-fun b!6254743 () Bool)

(assert (=> b!6254743 (= e!3805076 (store ((as const (Array Context!11122 Bool)) false) (ite c!1131813 lt!2348878 (Context!11123 call!527543)) true))))

(declare-fun bm!527803 () Bool)

(assert (=> bm!527803 (= call!527808 (derivationStepZipperDown!1425 (ite c!1132254 (regTwo!32867 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))) (regOne!32866 (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))) (ite c!1132254 (ite c!1131813 lt!2348878 (Context!11123 call!527543)) (Context!11123 call!527809)) (h!71156 s!2326)))))

(declare-fun b!6254744 () Bool)

(declare-fun e!3805077 () (InoxSet Context!11122))

(assert (=> b!6254744 (= e!3805077 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254745 () Bool)

(declare-fun c!1132253 () Bool)

(assert (=> b!6254745 (= c!1132253 ((_ is Star!16177) (ite c!1131813 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(assert (=> b!6254745 (= e!3805072 e!3805077)))

(declare-fun bm!527804 () Bool)

(assert (=> bm!527804 (= call!527806 call!527807)))

(declare-fun b!6254746 () Bool)

(assert (=> b!6254746 (= e!3805077 call!527804)))

(assert (= (and d!1962264 c!1132255) b!6254743))

(assert (= (and d!1962264 (not c!1132255)) b!6254739))

(assert (= (and b!6254739 c!1132254) b!6254738))

(assert (= (and b!6254739 (not c!1132254)) b!6254740))

(assert (= (and b!6254740 res!2581364) b!6254736))

(assert (= (and b!6254740 c!1132256) b!6254742))

(assert (= (and b!6254740 (not c!1132256)) b!6254741))

(assert (= (and b!6254741 c!1132257) b!6254737))

(assert (= (and b!6254741 (not c!1132257)) b!6254745))

(assert (= (and b!6254745 c!1132253) b!6254746))

(assert (= (and b!6254745 (not c!1132253)) b!6254744))

(assert (= (or b!6254737 b!6254746) bm!527801))

(assert (= (or b!6254737 b!6254746) bm!527802))

(assert (= (or b!6254742 bm!527801) bm!527800))

(assert (= (or b!6254742 bm!527802) bm!527804))

(assert (= (or b!6254738 b!6254742) bm!527803))

(assert (= (or b!6254738 bm!527804) bm!527799))

(declare-fun m!7077794 () Bool)

(assert (=> bm!527800 m!7077794))

(declare-fun m!7077796 () Bool)

(assert (=> bm!527803 m!7077796))

(declare-fun m!7077798 () Bool)

(assert (=> b!6254743 m!7077798))

(declare-fun m!7077800 () Bool)

(assert (=> bm!527799 m!7077800))

(declare-fun m!7077802 () Bool)

(assert (=> b!6254736 m!7077802))

(assert (=> bm!527537 d!1962264))

(declare-fun d!1962266 () Bool)

(assert (=> d!1962266 (= (nullable!6170 (reg!16506 lt!2348881)) (nullableFct!2124 (reg!16506 lt!2348881)))))

(declare-fun bs!1557642 () Bool)

(assert (= bs!1557642 d!1962266))

(declare-fun m!7077804 () Bool)

(assert (=> bs!1557642 m!7077804))

(assert (=> b!6253290 d!1962266))

(declare-fun bs!1557643 () Bool)

(declare-fun d!1962268 () Bool)

(assert (= bs!1557643 (and d!1962268 d!1962258)))

(declare-fun lambda!342244 () Int)

(assert (=> bs!1557643 (= lambda!342244 lambda!342242)))

(declare-fun bs!1557644 () Bool)

(assert (= bs!1557644 (and d!1962268 d!1961604)))

(assert (=> bs!1557644 (= lambda!342244 lambda!342109)))

(declare-fun bs!1557645 () Bool)

(assert (= bs!1557645 (and d!1962268 d!1962222)))

(assert (=> bs!1557645 (= lambda!342244 lambda!342231)))

(declare-fun bs!1557646 () Bool)

(assert (= bs!1557646 (and d!1962268 d!1961638)))

(assert (=> bs!1557646 (= lambda!342244 lambda!342123)))

(declare-fun bs!1557647 () Bool)

(assert (= bs!1557647 (and d!1962268 b!6254668)))

(assert (=> bs!1557647 (not (= lambda!342244 lambda!342224))))

(declare-fun bs!1557648 () Bool)

(assert (= bs!1557648 (and d!1962268 d!1961582)))

(assert (=> bs!1557648 (= lambda!342244 lambda!342097)))

(declare-fun bs!1557649 () Bool)

(assert (= bs!1557649 (and d!1962268 b!6254357)))

(assert (=> bs!1557649 (not (= lambda!342244 lambda!342205))))

(declare-fun bs!1557650 () Bool)

(assert (= bs!1557650 (and d!1962268 d!1961580)))

(assert (=> bs!1557650 (= lambda!342244 lambda!342094)))

(declare-fun bs!1557651 () Bool)

(assert (= bs!1557651 (and d!1962268 d!1962214)))

(assert (=> bs!1557651 (= lambda!342244 lambda!342229)))

(declare-fun bs!1557652 () Bool)

(assert (= bs!1557652 (and d!1962268 d!1962168)))

(assert (=> bs!1557652 (= lambda!342244 lambda!342221)))

(declare-fun bs!1557653 () Bool)

(assert (= bs!1557653 (and d!1962268 d!1962064)))

(assert (=> bs!1557653 (= lambda!342244 lambda!342210)))

(declare-fun bs!1557654 () Bool)

(assert (= bs!1557654 (and d!1962268 d!1961588)))

(assert (=> bs!1557654 (= lambda!342244 lambda!342100)))

(declare-fun bs!1557655 () Bool)

(assert (= bs!1557655 (and d!1962268 b!6254359)))

(assert (=> bs!1557655 (not (= lambda!342244 lambda!342206))))

(declare-fun bs!1557656 () Bool)

(assert (= bs!1557656 (and d!1962268 d!1962260)))

(assert (=> bs!1557656 (= lambda!342244 lambda!342243)))

(declare-fun bs!1557657 () Bool)

(assert (= bs!1557657 (and d!1962268 b!6254670)))

(assert (=> bs!1557657 (not (= lambda!342244 lambda!342225))))

(declare-fun bs!1557658 () Bool)

(assert (= bs!1557658 (and d!1962268 d!1961654)))

(assert (=> bs!1557658 (= lambda!342244 lambda!342133)))

(assert (=> d!1962268 (= (inv!83689 setElem!42512) (forall!15296 (exprs!6061 setElem!42512) lambda!342244))))

(declare-fun bs!1557659 () Bool)

(assert (= bs!1557659 d!1962268))

(declare-fun m!7077806 () Bool)

(assert (=> bs!1557659 m!7077806))

(assert (=> setNonEmpty!42512 d!1962268))

(declare-fun d!1962270 () Bool)

(assert (=> d!1962270 (= (Exists!3247 (ite c!1131875 lambda!342105 lambda!342106)) (choose!46409 (ite c!1131875 lambda!342105 lambda!342106)))))

(declare-fun bs!1557660 () Bool)

(assert (= bs!1557660 d!1962270))

(declare-fun m!7077808 () Bool)

(assert (=> bs!1557660 m!7077808))

(assert (=> bm!527564 d!1962270))

(declare-fun d!1962272 () Bool)

(declare-fun lt!2349145 () Int)

(assert (=> d!1962272 (> lt!2349145 0)))

(declare-fun e!3805078 () Int)

(assert (=> d!1962272 (= lt!2349145 e!3805078)))

(declare-fun c!1132261 () Bool)

(assert (=> d!1962272 (= c!1132261 ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> d!1962272 (= (regexDepthTotal!155 (h!71154 (exprs!6061 (h!71155 zl!343)))) lt!2349145)))

(declare-fun b!6254747 () Bool)

(declare-fun e!3805080 () Int)

(assert (=> b!6254747 (= e!3805078 e!3805080)))

(declare-fun c!1132259 () Bool)

(assert (=> b!6254747 (= c!1132259 ((_ is Star!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254748 () Bool)

(declare-fun call!527811 () Int)

(assert (=> b!6254748 (= e!3805080 (+ 1 call!527811))))

(declare-fun b!6254749 () Bool)

(declare-fun e!3805079 () Int)

(declare-fun e!3805081 () Int)

(assert (=> b!6254749 (= e!3805079 e!3805081)))

(declare-fun c!1132258 () Bool)

(assert (=> b!6254749 (= c!1132258 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254750 () Bool)

(assert (=> b!6254750 (= e!3805081 1)))

(declare-fun bm!527805 () Bool)

(declare-fun call!527812 () Int)

(assert (=> bm!527805 (= call!527812 call!527811)))

(declare-fun b!6254751 () Bool)

(declare-fun call!527810 () Int)

(assert (=> b!6254751 (= e!3805079 (+ 1 call!527812 call!527810))))

(declare-fun b!6254752 () Bool)

(assert (=> b!6254752 (= e!3805078 1)))

(declare-fun b!6254753 () Bool)

(declare-fun c!1132260 () Bool)

(assert (=> b!6254753 (= c!1132260 ((_ is Union!16177) (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> b!6254753 (= e!3805080 e!3805079)))

(declare-fun b!6254754 () Bool)

(assert (=> b!6254754 (= e!3805081 (+ 1 call!527812 call!527810))))

(declare-fun bm!527806 () Bool)

(assert (=> bm!527806 (= call!527810 (regexDepthTotal!155 (ite c!1132260 (regTwo!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regTwo!32866 (h!71154 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun bm!527807 () Bool)

(assert (=> bm!527807 (= call!527811 (regexDepthTotal!155 (ite c!1132259 (reg!16506 (h!71154 (exprs!6061 (h!71155 zl!343)))) (ite c!1132260 (regOne!32867 (h!71154 (exprs!6061 (h!71155 zl!343)))) (regOne!32866 (h!71154 (exprs!6061 (h!71155 zl!343))))))))))

(assert (= (and d!1962272 c!1132261) b!6254752))

(assert (= (and d!1962272 (not c!1132261)) b!6254747))

(assert (= (and b!6254747 c!1132259) b!6254748))

(assert (= (and b!6254747 (not c!1132259)) b!6254753))

(assert (= (and b!6254753 c!1132260) b!6254751))

(assert (= (and b!6254753 (not c!1132260)) b!6254749))

(assert (= (and b!6254749 c!1132258) b!6254754))

(assert (= (and b!6254749 (not c!1132258)) b!6254750))

(assert (= (or b!6254751 b!6254754) bm!527806))

(assert (= (or b!6254751 b!6254754) bm!527805))

(assert (= (or b!6254748 bm!527805) bm!527807))

(declare-fun m!7077810 () Bool)

(assert (=> bm!527806 m!7077810))

(declare-fun m!7077812 () Bool)

(assert (=> bm!527807 m!7077812))

(assert (=> b!6253159 d!1962272))

(declare-fun d!1962274 () Bool)

(declare-fun lt!2349146 () Int)

(assert (=> d!1962274 (>= lt!2349146 0)))

(declare-fun e!3805082 () Int)

(assert (=> d!1962274 (= lt!2349146 e!3805082)))

(declare-fun c!1132262 () Bool)

(assert (=> d!1962274 (= c!1132262 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(assert (=> d!1962274 (= (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))) lt!2349146)))

(declare-fun b!6254755 () Bool)

(assert (=> b!6254755 (= e!3805082 (+ (regexDepthTotal!155 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))))) (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))))))))))

(declare-fun b!6254756 () Bool)

(assert (=> b!6254756 (= e!3805082 1)))

(assert (= (and d!1962274 c!1132262) b!6254755))

(assert (= (and d!1962274 (not c!1132262)) b!6254756))

(declare-fun m!7077814 () Bool)

(assert (=> b!6254755 m!7077814))

(declare-fun m!7077816 () Bool)

(assert (=> b!6254755 m!7077816))

(assert (=> b!6253159 d!1962274))

(assert (=> bs!1556833 d!1961570))

(declare-fun d!1962276 () Bool)

(assert (=> d!1962276 true))

(declare-fun setRes!42521 () Bool)

(assert (=> d!1962276 setRes!42521))

(declare-fun condSetEmpty!42521 () Bool)

(declare-fun res!2581367 () (InoxSet Context!11122))

(assert (=> d!1962276 (= condSetEmpty!42521 (= res!2581367 ((as const (Array Context!11122 Bool)) false)))))

(assert (=> d!1962276 (= (choose!46406 z!1189 lambda!342043) res!2581367)))

(declare-fun setIsEmpty!42521 () Bool)

(assert (=> setIsEmpty!42521 setRes!42521))

(declare-fun e!3805085 () Bool)

(declare-fun tp!1745139 () Bool)

(declare-fun setElem!42521 () Context!11122)

(declare-fun setNonEmpty!42521 () Bool)

(assert (=> setNonEmpty!42521 (= setRes!42521 (and tp!1745139 (inv!83689 setElem!42521) e!3805085))))

(declare-fun setRest!42521 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42521 (= res!2581367 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42521 true) setRest!42521))))

(declare-fun b!6254759 () Bool)

(declare-fun tp!1745140 () Bool)

(assert (=> b!6254759 (= e!3805085 tp!1745140)))

(assert (= (and d!1962276 condSetEmpty!42521) setIsEmpty!42521))

(assert (= (and d!1962276 (not condSetEmpty!42521)) setNonEmpty!42521))

(assert (= setNonEmpty!42521 b!6254759))

(declare-fun m!7077818 () Bool)

(assert (=> setNonEmpty!42521 m!7077818))

(assert (=> d!1961568 d!1962276))

(declare-fun d!1962278 () Bool)

(declare-fun c!1132263 () Bool)

(assert (=> d!1962278 (= c!1132263 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805086 () Bool)

(assert (=> d!1962278 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348852 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805086)))

(declare-fun b!6254760 () Bool)

(assert (=> b!6254760 (= e!3805086 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348852 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254761 () Bool)

(assert (=> b!6254761 (= e!3805086 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348852 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962278 c!1132263) b!6254760))

(assert (= (and d!1962278 (not c!1132263)) b!6254761))

(assert (=> d!1962278 m!7076144))

(assert (=> d!1962278 m!7077362))

(assert (=> b!6254760 m!7076338))

(declare-fun m!7077820 () Bool)

(assert (=> b!6254760 m!7077820))

(assert (=> b!6254761 m!7076144))

(assert (=> b!6254761 m!7077366))

(assert (=> b!6254761 m!7076338))

(assert (=> b!6254761 m!7077366))

(declare-fun m!7077822 () Bool)

(assert (=> b!6254761 m!7077822))

(assert (=> b!6254761 m!7076144))

(assert (=> b!6254761 m!7077370))

(assert (=> b!6254761 m!7077822))

(assert (=> b!6254761 m!7077370))

(declare-fun m!7077824 () Bool)

(assert (=> b!6254761 m!7077824))

(assert (=> b!6253416 d!1962278))

(declare-fun bs!1557661 () Bool)

(declare-fun d!1962280 () Bool)

(assert (= bs!1557661 (and d!1962280 d!1961556)))

(declare-fun lambda!342245 () Int)

(assert (=> bs!1557661 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342245 lambda!342091))))

(declare-fun bs!1557662 () Bool)

(assert (= bs!1557662 (and d!1962280 d!1962076)))

(assert (=> bs!1557662 (= lambda!342245 lambda!342211)))

(declare-fun bs!1557663 () Bool)

(assert (= bs!1557663 (and d!1962280 d!1962098)))

(assert (=> bs!1557663 (= lambda!342245 lambda!342212)))

(declare-fun bs!1557664 () Bool)

(assert (= bs!1557664 (and d!1962280 d!1962140)))

(assert (=> bs!1557664 (= lambda!342245 lambda!342218)))

(declare-fun bs!1557665 () Bool)

(assert (= bs!1557665 (and d!1962280 b!6252643)))

(assert (=> bs!1557665 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342245 lambda!342043))))

(declare-fun bs!1557666 () Bool)

(assert (= bs!1557666 (and d!1962280 d!1962218)))

(assert (=> bs!1557666 (= lambda!342245 lambda!342230)))

(declare-fun bs!1557667 () Bool)

(assert (= bs!1557667 (and d!1962280 d!1962230)))

(assert (=> bs!1557667 (= lambda!342245 lambda!342232)))

(declare-fun bs!1557668 () Bool)

(assert (= bs!1557668 (and d!1962280 d!1961632)))

(assert (=> bs!1557668 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342245 lambda!342122))))

(declare-fun bs!1557669 () Bool)

(assert (= bs!1557669 (and d!1962280 d!1962254)))

(assert (=> bs!1557669 (= lambda!342245 lambda!342241)))

(declare-fun bs!1557670 () Bool)

(assert (= bs!1557670 (and d!1962280 d!1962158)))

(assert (=> bs!1557670 (= lambda!342245 lambda!342220)))

(assert (=> d!1962280 true))

(assert (=> d!1962280 (= (derivationStepZipper!2143 lt!2348852 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348852 lambda!342245))))

(declare-fun bs!1557671 () Bool)

(assert (= bs!1557671 d!1962280))

(declare-fun m!7077826 () Bool)

(assert (=> bs!1557671 m!7077826))

(assert (=> b!6253416 d!1962280))

(assert (=> b!6253416 d!1962078))

(assert (=> b!6253416 d!1962080))

(declare-fun b!6254762 () Bool)

(declare-fun e!3805090 () Bool)

(assert (=> b!6254762 (= e!3805090 (nullable!6170 (regOne!32866 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))))))

(declare-fun b!6254763 () Bool)

(declare-fun e!3805087 () (InoxSet Context!11122))

(declare-fun call!527813 () (InoxSet Context!11122))

(assert (=> b!6254763 (= e!3805087 call!527813)))

(declare-fun b!6254764 () Bool)

(declare-fun e!3805088 () (InoxSet Context!11122))

(declare-fun call!527816 () (InoxSet Context!11122))

(declare-fun call!527817 () (InoxSet Context!11122))

(assert (=> b!6254764 (= e!3805088 ((_ map or) call!527816 call!527817))))

(declare-fun c!1132266 () Bool)

(declare-fun d!1962282 () Bool)

(assert (=> d!1962282 (= c!1132266 (and ((_ is ElementMatch!16177) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (= (c!1131644 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (h!71156 s!2326))))))

(declare-fun e!3805091 () (InoxSet Context!11122))

(assert (=> d!1962282 (= (derivationStepZipperDown!1425 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))) (ite c!1131828 lt!2348878 (Context!11123 call!527554)) (h!71156 s!2326)) e!3805091)))

(declare-fun b!6254765 () Bool)

(assert (=> b!6254765 (= e!3805091 e!3805088)))

(declare-fun c!1132265 () Bool)

(assert (=> b!6254765 (= c!1132265 ((_ is Union!16177) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))))))

(declare-fun bm!527808 () Bool)

(declare-fun call!527814 () List!64830)

(declare-fun c!1132268 () Bool)

(declare-fun c!1132267 () Bool)

(assert (=> bm!527808 (= call!527816 (derivationStepZipperDown!1425 (ite c!1132265 (regOne!32867 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (ite c!1132267 (regTwo!32866 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (ite c!1132268 (regOne!32866 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (reg!16506 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))))) (ite (or c!1132265 c!1132267) (ite c!1131828 lt!2348878 (Context!11123 call!527554)) (Context!11123 call!527814)) (h!71156 s!2326)))))

(declare-fun bm!527809 () Bool)

(declare-fun call!527818 () List!64830)

(assert (=> bm!527809 (= call!527818 ($colon$colon!2044 (exprs!6061 (ite c!1131828 lt!2348878 (Context!11123 call!527554))) (ite (or c!1132267 c!1132268) (regTwo!32866 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))))))

(declare-fun b!6254766 () Bool)

(assert (=> b!6254766 (= c!1132267 e!3805090)))

(declare-fun res!2581368 () Bool)

(assert (=> b!6254766 (=> (not res!2581368) (not e!3805090))))

(assert (=> b!6254766 (= res!2581368 ((_ is Concat!25022) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))))))

(declare-fun e!3805089 () (InoxSet Context!11122))

(assert (=> b!6254766 (= e!3805088 e!3805089)))

(declare-fun b!6254767 () Bool)

(assert (=> b!6254767 (= e!3805089 e!3805087)))

(assert (=> b!6254767 (= c!1132268 ((_ is Concat!25022) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))))))

(declare-fun bm!527810 () Bool)

(assert (=> bm!527810 (= call!527814 call!527818)))

(declare-fun bm!527811 () Bool)

(declare-fun call!527815 () (InoxSet Context!11122))

(assert (=> bm!527811 (= call!527813 call!527815)))

(declare-fun b!6254768 () Bool)

(assert (=> b!6254768 (= e!3805089 ((_ map or) call!527817 call!527815))))

(declare-fun b!6254769 () Bool)

(assert (=> b!6254769 (= e!3805091 (store ((as const (Array Context!11122 Bool)) false) (ite c!1131828 lt!2348878 (Context!11123 call!527554)) true))))

(declare-fun bm!527812 () Bool)

(assert (=> bm!527812 (= call!527817 (derivationStepZipperDown!1425 (ite c!1132265 (regTwo!32867 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))) (regOne!32866 (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292)))))) (ite c!1132265 (ite c!1131828 lt!2348878 (Context!11123 call!527554)) (Context!11123 call!527818)) (h!71156 s!2326)))))

(declare-fun b!6254770 () Bool)

(declare-fun e!3805092 () (InoxSet Context!11122))

(assert (=> b!6254770 (= e!3805092 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254771 () Bool)

(declare-fun c!1132264 () Bool)

(assert (=> b!6254771 (= c!1132264 ((_ is Star!16177) (ite c!1131828 (regTwo!32867 (regTwo!32866 (regOne!32866 r!7292))) (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))))))))

(assert (=> b!6254771 (= e!3805087 e!3805092)))

(declare-fun bm!527813 () Bool)

(assert (=> bm!527813 (= call!527815 call!527816)))

(declare-fun b!6254772 () Bool)

(assert (=> b!6254772 (= e!3805092 call!527813)))

(assert (= (and d!1962282 c!1132266) b!6254769))

(assert (= (and d!1962282 (not c!1132266)) b!6254765))

(assert (= (and b!6254765 c!1132265) b!6254764))

(assert (= (and b!6254765 (not c!1132265)) b!6254766))

(assert (= (and b!6254766 res!2581368) b!6254762))

(assert (= (and b!6254766 c!1132267) b!6254768))

(assert (= (and b!6254766 (not c!1132267)) b!6254767))

(assert (= (and b!6254767 c!1132268) b!6254763))

(assert (= (and b!6254767 (not c!1132268)) b!6254771))

(assert (= (and b!6254771 c!1132264) b!6254772))

(assert (= (and b!6254771 (not c!1132264)) b!6254770))

(assert (= (or b!6254763 b!6254772) bm!527810))

(assert (= (or b!6254763 b!6254772) bm!527811))

(assert (= (or b!6254768 bm!527810) bm!527809))

(assert (= (or b!6254768 bm!527811) bm!527813))

(assert (= (or b!6254764 b!6254768) bm!527812))

(assert (= (or b!6254764 bm!527813) bm!527808))

(declare-fun m!7077828 () Bool)

(assert (=> bm!527809 m!7077828))

(declare-fun m!7077830 () Bool)

(assert (=> bm!527812 m!7077830))

(declare-fun m!7077832 () Bool)

(assert (=> b!6254769 m!7077832))

(declare-fun m!7077834 () Bool)

(assert (=> bm!527808 m!7077834))

(declare-fun m!7077836 () Bool)

(assert (=> b!6254762 m!7077836))

(assert (=> bm!527548 d!1962282))

(assert (=> d!1961614 d!1962020))

(declare-fun d!1962284 () Bool)

(assert (=> d!1962284 (= (isEmpty!36731 (exprs!6061 (h!71155 zl!343))) ((_ is Nil!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> b!6253507 d!1962284))

(declare-fun d!1962286 () Bool)

(assert (=> d!1962286 (= (isEmptyExpr!1585 lt!2348982) ((_ is EmptyExpr!16177) lt!2348982))))

(assert (=> b!6253325 d!1962286))

(declare-fun b!6254773 () Bool)

(declare-fun e!3805097 () Bool)

(declare-fun e!3805094 () Bool)

(assert (=> b!6254773 (= e!3805097 e!3805094)))

(declare-fun res!2581375 () Bool)

(assert (=> b!6254773 (=> (not res!2581375) (not e!3805094))))

(declare-fun lt!2349147 () Bool)

(assert (=> b!6254773 (= res!2581375 (not lt!2349147))))

(declare-fun b!6254774 () Bool)

(declare-fun e!3805099 () Bool)

(assert (=> b!6254774 (= e!3805094 e!3805099)))

(declare-fun res!2581373 () Bool)

(assert (=> b!6254774 (=> res!2581373 e!3805099)))

(declare-fun call!527819 () Bool)

(assert (=> b!6254774 (= res!2581373 call!527819)))

(declare-fun b!6254775 () Bool)

(assert (=> b!6254775 (= e!3805099 (not (= (head!12858 s!2326) (c!1131644 (regTwo!32866 r!7292)))))))

(declare-fun b!6254776 () Bool)

(declare-fun res!2581372 () Bool)

(declare-fun e!3805095 () Bool)

(assert (=> b!6254776 (=> (not res!2581372) (not e!3805095))))

(assert (=> b!6254776 (= res!2581372 (isEmpty!36734 (tail!11943 s!2326)))))

(declare-fun b!6254777 () Bool)

(declare-fun e!3805096 () Bool)

(assert (=> b!6254777 (= e!3805096 (matchR!8360 (derivativeStep!4888 (regTwo!32866 r!7292) (head!12858 s!2326)) (tail!11943 s!2326)))))

(declare-fun b!6254778 () Bool)

(declare-fun res!2581376 () Bool)

(assert (=> b!6254778 (=> res!2581376 e!3805099)))

(assert (=> b!6254778 (= res!2581376 (not (isEmpty!36734 (tail!11943 s!2326))))))

(declare-fun b!6254779 () Bool)

(declare-fun e!3805098 () Bool)

(assert (=> b!6254779 (= e!3805098 (= lt!2349147 call!527819))))

(declare-fun b!6254781 () Bool)

(declare-fun e!3805093 () Bool)

(assert (=> b!6254781 (= e!3805093 (not lt!2349147))))

(declare-fun b!6254782 () Bool)

(declare-fun res!2581371 () Bool)

(assert (=> b!6254782 (=> res!2581371 e!3805097)))

(assert (=> b!6254782 (= res!2581371 e!3805095)))

(declare-fun res!2581369 () Bool)

(assert (=> b!6254782 (=> (not res!2581369) (not e!3805095))))

(assert (=> b!6254782 (= res!2581369 lt!2349147)))

(declare-fun b!6254783 () Bool)

(assert (=> b!6254783 (= e!3805098 e!3805093)))

(declare-fun c!1132270 () Bool)

(assert (=> b!6254783 (= c!1132270 ((_ is EmptyLang!16177) (regTwo!32866 r!7292)))))

(declare-fun b!6254784 () Bool)

(declare-fun res!2581370 () Bool)

(assert (=> b!6254784 (=> res!2581370 e!3805097)))

(assert (=> b!6254784 (= res!2581370 (not ((_ is ElementMatch!16177) (regTwo!32866 r!7292))))))

(assert (=> b!6254784 (= e!3805093 e!3805097)))

(declare-fun b!6254785 () Bool)

(assert (=> b!6254785 (= e!3805095 (= (head!12858 s!2326) (c!1131644 (regTwo!32866 r!7292))))))

(declare-fun b!6254786 () Bool)

(declare-fun res!2581374 () Bool)

(assert (=> b!6254786 (=> (not res!2581374) (not e!3805095))))

(assert (=> b!6254786 (= res!2581374 (not call!527819))))

(declare-fun bm!527814 () Bool)

(assert (=> bm!527814 (= call!527819 (isEmpty!36734 s!2326))))

(declare-fun b!6254780 () Bool)

(assert (=> b!6254780 (= e!3805096 (nullable!6170 (regTwo!32866 r!7292)))))

(declare-fun d!1962288 () Bool)

(assert (=> d!1962288 e!3805098))

(declare-fun c!1132269 () Bool)

(assert (=> d!1962288 (= c!1132269 ((_ is EmptyExpr!16177) (regTwo!32866 r!7292)))))

(assert (=> d!1962288 (= lt!2349147 e!3805096)))

(declare-fun c!1132271 () Bool)

(assert (=> d!1962288 (= c!1132271 (isEmpty!36734 s!2326))))

(assert (=> d!1962288 (validRegex!7913 (regTwo!32866 r!7292))))

(assert (=> d!1962288 (= (matchR!8360 (regTwo!32866 r!7292) s!2326) lt!2349147)))

(assert (= (and d!1962288 c!1132271) b!6254780))

(assert (= (and d!1962288 (not c!1132271)) b!6254777))

(assert (= (and d!1962288 c!1132269) b!6254779))

(assert (= (and d!1962288 (not c!1132269)) b!6254783))

(assert (= (and b!6254783 c!1132270) b!6254781))

(assert (= (and b!6254783 (not c!1132270)) b!6254784))

(assert (= (and b!6254784 (not res!2581370)) b!6254782))

(assert (= (and b!6254782 res!2581369) b!6254786))

(assert (= (and b!6254786 res!2581374) b!6254776))

(assert (= (and b!6254776 res!2581372) b!6254785))

(assert (= (and b!6254782 (not res!2581371)) b!6254773))

(assert (= (and b!6254773 res!2581375) b!6254774))

(assert (= (and b!6254774 (not res!2581373)) b!6254778))

(assert (= (and b!6254778 (not res!2581376)) b!6254775))

(assert (= (or b!6254779 b!6254774 b!6254786) bm!527814))

(assert (=> d!1962288 m!7076308))

(assert (=> d!1962288 m!7077604))

(assert (=> b!6254775 m!7076316))

(assert (=> b!6254776 m!7076318))

(assert (=> b!6254776 m!7076318))

(assert (=> b!6254776 m!7076320))

(assert (=> b!6254778 m!7076318))

(assert (=> b!6254778 m!7076318))

(assert (=> b!6254778 m!7076320))

(assert (=> b!6254777 m!7076316))

(assert (=> b!6254777 m!7076316))

(declare-fun m!7077838 () Bool)

(assert (=> b!6254777 m!7077838))

(assert (=> b!6254777 m!7076318))

(assert (=> b!6254777 m!7077838))

(assert (=> b!6254777 m!7076318))

(declare-fun m!7077840 () Bool)

(assert (=> b!6254777 m!7077840))

(assert (=> bm!527814 m!7076308))

(assert (=> b!6254785 m!7076316))

(assert (=> b!6254780 m!7077616))

(assert (=> b!6253478 d!1962288))

(declare-fun d!1962290 () Bool)

(declare-fun c!1132272 () Bool)

(assert (=> d!1962290 (= c!1132272 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805100 () Bool)

(assert (=> d!1962290 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348867 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805100)))

(declare-fun b!6254787 () Bool)

(assert (=> b!6254787 (= e!3805100 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348867 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254788 () Bool)

(assert (=> b!6254788 (= e!3805100 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348867 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962290 c!1132272) b!6254787))

(assert (= (and d!1962290 (not c!1132272)) b!6254788))

(assert (=> d!1962290 m!7076144))

(assert (=> d!1962290 m!7077362))

(assert (=> b!6254787 m!7076384))

(declare-fun m!7077842 () Bool)

(assert (=> b!6254787 m!7077842))

(assert (=> b!6254788 m!7076144))

(assert (=> b!6254788 m!7077366))

(assert (=> b!6254788 m!7076384))

(assert (=> b!6254788 m!7077366))

(declare-fun m!7077844 () Bool)

(assert (=> b!6254788 m!7077844))

(assert (=> b!6254788 m!7076144))

(assert (=> b!6254788 m!7077370))

(assert (=> b!6254788 m!7077844))

(assert (=> b!6254788 m!7077370))

(declare-fun m!7077846 () Bool)

(assert (=> b!6254788 m!7077846))

(assert (=> b!6253437 d!1962290))

(declare-fun bs!1557672 () Bool)

(declare-fun d!1962292 () Bool)

(assert (= bs!1557672 (and d!1962292 d!1962076)))

(declare-fun lambda!342246 () Int)

(assert (=> bs!1557672 (= lambda!342246 lambda!342211)))

(declare-fun bs!1557673 () Bool)

(assert (= bs!1557673 (and d!1962292 d!1962098)))

(assert (=> bs!1557673 (= lambda!342246 lambda!342212)))

(declare-fun bs!1557674 () Bool)

(assert (= bs!1557674 (and d!1962292 d!1962140)))

(assert (=> bs!1557674 (= lambda!342246 lambda!342218)))

(declare-fun bs!1557675 () Bool)

(assert (= bs!1557675 (and d!1962292 b!6252643)))

(assert (=> bs!1557675 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342246 lambda!342043))))

(declare-fun bs!1557676 () Bool)

(assert (= bs!1557676 (and d!1962292 d!1962218)))

(assert (=> bs!1557676 (= lambda!342246 lambda!342230)))

(declare-fun bs!1557677 () Bool)

(assert (= bs!1557677 (and d!1962292 d!1962280)))

(assert (=> bs!1557677 (= lambda!342246 lambda!342245)))

(declare-fun bs!1557678 () Bool)

(assert (= bs!1557678 (and d!1962292 d!1961556)))

(assert (=> bs!1557678 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342246 lambda!342091))))

(declare-fun bs!1557679 () Bool)

(assert (= bs!1557679 (and d!1962292 d!1962230)))

(assert (=> bs!1557679 (= lambda!342246 lambda!342232)))

(declare-fun bs!1557680 () Bool)

(assert (= bs!1557680 (and d!1962292 d!1961632)))

(assert (=> bs!1557680 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342246 lambda!342122))))

(declare-fun bs!1557681 () Bool)

(assert (= bs!1557681 (and d!1962292 d!1962254)))

(assert (=> bs!1557681 (= lambda!342246 lambda!342241)))

(declare-fun bs!1557682 () Bool)

(assert (= bs!1557682 (and d!1962292 d!1962158)))

(assert (=> bs!1557682 (= lambda!342246 lambda!342220)))

(assert (=> d!1962292 true))

(assert (=> d!1962292 (= (derivationStepZipper!2143 lt!2348867 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348867 lambda!342246))))

(declare-fun bs!1557683 () Bool)

(assert (= bs!1557683 d!1962292))

(declare-fun m!7077848 () Bool)

(assert (=> bs!1557683 m!7077848))

(assert (=> b!6253437 d!1962292))

(assert (=> b!6253437 d!1962078))

(assert (=> b!6253437 d!1962080))

(declare-fun b!6254789 () Bool)

(declare-fun e!3805104 () Bool)

(declare-fun e!3805103 () Bool)

(assert (=> b!6254789 (= e!3805104 e!3805103)))

(declare-fun res!2581378 () Bool)

(assert (=> b!6254789 (=> (not res!2581378) (not e!3805103))))

(declare-fun call!527820 () Bool)

(assert (=> b!6254789 (= res!2581378 call!527820)))

(declare-fun b!6254790 () Bool)

(declare-fun e!3805107 () Bool)

(declare-fun e!3805101 () Bool)

(assert (=> b!6254790 (= e!3805107 e!3805101)))

(declare-fun res!2581379 () Bool)

(assert (=> b!6254790 (= res!2581379 (not (nullable!6170 (reg!16506 lt!2348969))))))

(assert (=> b!6254790 (=> (not res!2581379) (not e!3805101))))

(declare-fun b!6254791 () Bool)

(declare-fun e!3805105 () Bool)

(assert (=> b!6254791 (= e!3805105 e!3805107)))

(declare-fun c!1132273 () Bool)

(assert (=> b!6254791 (= c!1132273 ((_ is Star!16177) lt!2348969))))

(declare-fun d!1962294 () Bool)

(declare-fun res!2581377 () Bool)

(assert (=> d!1962294 (=> res!2581377 e!3805105)))

(assert (=> d!1962294 (= res!2581377 ((_ is ElementMatch!16177) lt!2348969))))

(assert (=> d!1962294 (= (validRegex!7913 lt!2348969) e!3805105)))

(declare-fun bm!527815 () Bool)

(declare-fun call!527822 () Bool)

(declare-fun c!1132274 () Bool)

(assert (=> bm!527815 (= call!527822 (validRegex!7913 (ite c!1132274 (regTwo!32867 lt!2348969) (regTwo!32866 lt!2348969))))))

(declare-fun b!6254792 () Bool)

(declare-fun res!2581380 () Bool)

(assert (=> b!6254792 (=> res!2581380 e!3805104)))

(assert (=> b!6254792 (= res!2581380 (not ((_ is Concat!25022) lt!2348969)))))

(declare-fun e!3805102 () Bool)

(assert (=> b!6254792 (= e!3805102 e!3805104)))

(declare-fun bm!527816 () Bool)

(declare-fun call!527821 () Bool)

(assert (=> bm!527816 (= call!527820 call!527821)))

(declare-fun b!6254793 () Bool)

(declare-fun res!2581381 () Bool)

(declare-fun e!3805106 () Bool)

(assert (=> b!6254793 (=> (not res!2581381) (not e!3805106))))

(assert (=> b!6254793 (= res!2581381 call!527820)))

(assert (=> b!6254793 (= e!3805102 e!3805106)))

(declare-fun b!6254794 () Bool)

(assert (=> b!6254794 (= e!3805106 call!527822)))

(declare-fun b!6254795 () Bool)

(assert (=> b!6254795 (= e!3805107 e!3805102)))

(assert (=> b!6254795 (= c!1132274 ((_ is Union!16177) lt!2348969))))

(declare-fun bm!527817 () Bool)

(assert (=> bm!527817 (= call!527821 (validRegex!7913 (ite c!1132273 (reg!16506 lt!2348969) (ite c!1132274 (regOne!32867 lt!2348969) (regOne!32866 lt!2348969)))))))

(declare-fun b!6254796 () Bool)

(assert (=> b!6254796 (= e!3805103 call!527822)))

(declare-fun b!6254797 () Bool)

(assert (=> b!6254797 (= e!3805101 call!527821)))

(assert (= (and d!1962294 (not res!2581377)) b!6254791))

(assert (= (and b!6254791 c!1132273) b!6254790))

(assert (= (and b!6254791 (not c!1132273)) b!6254795))

(assert (= (and b!6254790 res!2581379) b!6254797))

(assert (= (and b!6254795 c!1132274) b!6254793))

(assert (= (and b!6254795 (not c!1132274)) b!6254792))

(assert (= (and b!6254793 res!2581381) b!6254794))

(assert (= (and b!6254792 (not res!2581380)) b!6254789))

(assert (= (and b!6254789 res!2581378) b!6254796))

(assert (= (or b!6254794 b!6254796) bm!527815))

(assert (= (or b!6254793 b!6254789) bm!527816))

(assert (= (or b!6254797 bm!527816) bm!527817))

(declare-fun m!7077850 () Bool)

(assert (=> b!6254790 m!7077850))

(declare-fun m!7077852 () Bool)

(assert (=> bm!527815 m!7077852))

(declare-fun m!7077854 () Bool)

(assert (=> bm!527817 m!7077854))

(assert (=> d!1961558 d!1962294))

(assert (=> d!1961558 d!1961580))

(assert (=> d!1961558 d!1961582))

(declare-fun b!6254798 () Bool)

(declare-fun e!3805111 () Bool)

(declare-fun e!3805110 () Bool)

(assert (=> b!6254798 (= e!3805111 e!3805110)))

(declare-fun res!2581383 () Bool)

(assert (=> b!6254798 (=> (not res!2581383) (not e!3805110))))

(declare-fun call!527823 () Bool)

(assert (=> b!6254798 (= res!2581383 call!527823)))

(declare-fun b!6254799 () Bool)

(declare-fun e!3805114 () Bool)

(declare-fun e!3805108 () Bool)

(assert (=> b!6254799 (= e!3805114 e!3805108)))

(declare-fun res!2581384 () Bool)

(assert (=> b!6254799 (= res!2581384 (not (nullable!6170 (reg!16506 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))))

(assert (=> b!6254799 (=> (not res!2581384) (not e!3805108))))

(declare-fun b!6254800 () Bool)

(declare-fun e!3805112 () Bool)

(assert (=> b!6254800 (= e!3805112 e!3805114)))

(declare-fun c!1132275 () Bool)

(assert (=> b!6254800 (= c!1132275 ((_ is Star!16177) (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))

(declare-fun d!1962296 () Bool)

(declare-fun res!2581382 () Bool)

(assert (=> d!1962296 (=> res!2581382 e!3805112)))

(assert (=> d!1962296 (= res!2581382 ((_ is ElementMatch!16177) (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))

(assert (=> d!1962296 (= (validRegex!7913 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))) e!3805112)))

(declare-fun call!527825 () Bool)

(declare-fun bm!527818 () Bool)

(declare-fun c!1132276 () Bool)

(assert (=> bm!527818 (= call!527825 (validRegex!7913 (ite c!1132276 (regTwo!32867 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))) (regTwo!32866 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))))

(declare-fun b!6254801 () Bool)

(declare-fun res!2581385 () Bool)

(assert (=> b!6254801 (=> res!2581385 e!3805111)))

(assert (=> b!6254801 (= res!2581385 (not ((_ is Concat!25022) (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881))))))))

(declare-fun e!3805109 () Bool)

(assert (=> b!6254801 (= e!3805109 e!3805111)))

(declare-fun bm!527819 () Bool)

(declare-fun call!527824 () Bool)

(assert (=> bm!527819 (= call!527823 call!527824)))

(declare-fun b!6254802 () Bool)

(declare-fun res!2581386 () Bool)

(declare-fun e!3805113 () Bool)

(assert (=> b!6254802 (=> (not res!2581386) (not e!3805113))))

(assert (=> b!6254802 (= res!2581386 call!527823)))

(assert (=> b!6254802 (= e!3805109 e!3805113)))

(declare-fun b!6254803 () Bool)

(assert (=> b!6254803 (= e!3805113 call!527825)))

(declare-fun b!6254804 () Bool)

(assert (=> b!6254804 (= e!3805114 e!3805109)))

(assert (=> b!6254804 (= c!1132276 ((_ is Union!16177) (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))))))

(declare-fun bm!527820 () Bool)

(assert (=> bm!527820 (= call!527824 (validRegex!7913 (ite c!1132275 (reg!16506 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))) (ite c!1132276 (regOne!32867 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881)))) (regOne!32866 (ite c!1131852 (reg!16506 lt!2348881) (ite c!1131853 (regOne!32867 lt!2348881) (regOne!32866 lt!2348881))))))))))

(declare-fun b!6254805 () Bool)

(assert (=> b!6254805 (= e!3805110 call!527825)))

(declare-fun b!6254806 () Bool)

(assert (=> b!6254806 (= e!3805108 call!527824)))

(assert (= (and d!1962296 (not res!2581382)) b!6254800))

(assert (= (and b!6254800 c!1132275) b!6254799))

(assert (= (and b!6254800 (not c!1132275)) b!6254804))

(assert (= (and b!6254799 res!2581384) b!6254806))

(assert (= (and b!6254804 c!1132276) b!6254802))

(assert (= (and b!6254804 (not c!1132276)) b!6254801))

(assert (= (and b!6254802 res!2581386) b!6254803))

(assert (= (and b!6254801 (not res!2581385)) b!6254798))

(assert (= (and b!6254798 res!2581383) b!6254805))

(assert (= (or b!6254803 b!6254805) bm!527818))

(assert (= (or b!6254802 b!6254798) bm!527819))

(assert (= (or b!6254806 bm!527819) bm!527820))

(declare-fun m!7077856 () Bool)

(assert (=> b!6254799 m!7077856))

(declare-fun m!7077858 () Bool)

(assert (=> bm!527818 m!7077858))

(declare-fun m!7077860 () Bool)

(assert (=> bm!527820 m!7077860))

(assert (=> bm!527558 d!1962296))

(declare-fun call!527826 () (InoxSet Context!11122))

(declare-fun e!3805117 () (InoxSet Context!11122))

(declare-fun b!6254807 () Bool)

(assert (=> b!6254807 (= e!3805117 ((_ map or) call!527826 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))))) (h!71156 s!2326))))))

(declare-fun b!6254808 () Bool)

(declare-fun e!3805116 () (InoxSet Context!11122))

(assert (=> b!6254808 (= e!3805117 e!3805116)))

(declare-fun c!1132277 () Bool)

(assert (=> b!6254808 (= c!1132277 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6254809 () Bool)

(declare-fun e!3805115 () Bool)

(assert (=> b!6254809 (= e!3805115 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))))))))

(declare-fun b!6254810 () Bool)

(assert (=> b!6254810 (= e!3805116 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1962298 () Bool)

(declare-fun c!1132278 () Bool)

(assert (=> d!1962298 (= c!1132278 e!3805115)))

(declare-fun res!2581387 () Bool)

(assert (=> d!1962298 (=> (not res!2581387) (not e!3805115))))

(assert (=> d!1962298 (= res!2581387 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(assert (=> d!1962298 (= (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))) (h!71156 s!2326)) e!3805117)))

(declare-fun b!6254811 () Bool)

(assert (=> b!6254811 (= e!3805116 call!527826)))

(declare-fun bm!527821 () Bool)

(assert (=> bm!527821 (= call!527826 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343)))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (h!71155 zl!343))))))) (h!71156 s!2326)))))

(assert (= (and d!1962298 res!2581387) b!6254809))

(assert (= (and d!1962298 c!1132278) b!6254807))

(assert (= (and d!1962298 (not c!1132278)) b!6254808))

(assert (= (and b!6254808 c!1132277) b!6254811))

(assert (= (and b!6254808 (not c!1132277)) b!6254810))

(assert (= (or b!6254807 b!6254811) bm!527821))

(declare-fun m!7077862 () Bool)

(assert (=> b!6254807 m!7077862))

(declare-fun m!7077864 () Bool)

(assert (=> b!6254809 m!7077864))

(declare-fun m!7077866 () Bool)

(assert (=> bm!527821 m!7077866))

(assert (=> b!6253226 d!1962298))

(declare-fun d!1962300 () Bool)

(declare-fun lt!2349148 () Int)

(assert (=> d!1962300 (>= lt!2349148 0)))

(declare-fun e!3805118 () Int)

(assert (=> d!1962300 (= lt!2349148 e!3805118)))

(declare-fun c!1132279 () Bool)

(assert (=> d!1962300 (= c!1132279 ((_ is Cons!64706) (exprs!6061 (h!71155 lt!2348865))))))

(assert (=> d!1962300 (= (contextDepthTotal!300 (h!71155 lt!2348865)) lt!2349148)))

(declare-fun b!6254812 () Bool)

(assert (=> b!6254812 (= e!3805118 (+ (regexDepthTotal!155 (h!71154 (exprs!6061 (h!71155 lt!2348865)))) (contextDepthTotal!300 (Context!11123 (t!378378 (exprs!6061 (h!71155 lt!2348865)))))))))

(declare-fun b!6254813 () Bool)

(assert (=> b!6254813 (= e!3805118 1)))

(assert (= (and d!1962300 c!1132279) b!6254812))

(assert (= (and d!1962300 (not c!1132279)) b!6254813))

(declare-fun m!7077868 () Bool)

(assert (=> b!6254812 m!7077868))

(declare-fun m!7077870 () Bool)

(assert (=> b!6254812 m!7077870))

(assert (=> b!6253432 d!1962300))

(declare-fun d!1962302 () Bool)

(declare-fun lt!2349149 () Int)

(assert (=> d!1962302 (>= lt!2349149 0)))

(declare-fun e!3805119 () Int)

(assert (=> d!1962302 (= lt!2349149 e!3805119)))

(declare-fun c!1132280 () Bool)

(assert (=> d!1962302 (= c!1132280 ((_ is Cons!64707) (t!378379 lt!2348865)))))

(assert (=> d!1962302 (= (zipperDepthTotal!330 (t!378379 lt!2348865)) lt!2349149)))

(declare-fun b!6254814 () Bool)

(assert (=> b!6254814 (= e!3805119 (+ (contextDepthTotal!300 (h!71155 (t!378379 lt!2348865))) (zipperDepthTotal!330 (t!378379 (t!378379 lt!2348865)))))))

(declare-fun b!6254815 () Bool)

(assert (=> b!6254815 (= e!3805119 0)))

(assert (= (and d!1962302 c!1132280) b!6254814))

(assert (= (and d!1962302 (not c!1132280)) b!6254815))

(declare-fun m!7077872 () Bool)

(assert (=> b!6254814 m!7077872))

(declare-fun m!7077874 () Bool)

(assert (=> b!6254814 m!7077874))

(assert (=> b!6253432 d!1962302))

(declare-fun e!3805123 () Bool)

(declare-fun b!6254816 () Bool)

(assert (=> b!6254816 (= e!3805123 (nullable!6170 (regOne!32866 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))))))))

(declare-fun b!6254817 () Bool)

(declare-fun e!3805120 () (InoxSet Context!11122))

(declare-fun call!527827 () (InoxSet Context!11122))

(assert (=> b!6254817 (= e!3805120 call!527827)))

(declare-fun b!6254818 () Bool)

(declare-fun e!3805121 () (InoxSet Context!11122))

(declare-fun call!527830 () (InoxSet Context!11122))

(declare-fun call!527831 () (InoxSet Context!11122))

(assert (=> b!6254818 (= e!3805121 ((_ map or) call!527830 call!527831))))

(declare-fun c!1132283 () Bool)

(declare-fun d!1962304 () Bool)

(assert (=> d!1962304 (= c!1132283 (and ((_ is ElementMatch!16177) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (= (c!1131644 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (h!71156 s!2326))))))

(declare-fun e!3805124 () (InoxSet Context!11122))

(assert (=> d!1962304 (= (derivationStepZipperDown!1425 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))) (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550)) (h!71156 s!2326)) e!3805124)))

(declare-fun b!6254819 () Bool)

(assert (=> b!6254819 (= e!3805124 e!3805121)))

(declare-fun c!1132282 () Bool)

(assert (=> b!6254819 (= c!1132282 ((_ is Union!16177) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))))))

(declare-fun c!1132285 () Bool)

(declare-fun c!1132284 () Bool)

(declare-fun call!527828 () List!64830)

(declare-fun bm!527822 () Bool)

(assert (=> bm!527822 (= call!527830 (derivationStepZipperDown!1425 (ite c!1132282 (regOne!32867 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (ite c!1132284 (regTwo!32866 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (ite c!1132285 (regOne!32866 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (reg!16506 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))))))) (ite (or c!1132282 c!1132284) (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550)) (Context!11123 call!527828)) (h!71156 s!2326)))))

(declare-fun bm!527823 () Bool)

(declare-fun call!527832 () List!64830)

(assert (=> bm!527823 (= call!527832 ($colon$colon!2044 (exprs!6061 (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550))) (ite (or c!1132284 c!1132285) (regTwo!32866 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))))))))

(declare-fun b!6254820 () Bool)

(assert (=> b!6254820 (= c!1132284 e!3805123)))

(declare-fun res!2581388 () Bool)

(assert (=> b!6254820 (=> (not res!2581388) (not e!3805123))))

(assert (=> b!6254820 (= res!2581388 ((_ is Concat!25022) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))))))

(declare-fun e!3805122 () (InoxSet Context!11122))

(assert (=> b!6254820 (= e!3805121 e!3805122)))

(declare-fun b!6254821 () Bool)

(assert (=> b!6254821 (= e!3805122 e!3805120)))

(assert (=> b!6254821 (= c!1132285 ((_ is Concat!25022) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))))))

(declare-fun bm!527824 () Bool)

(assert (=> bm!527824 (= call!527828 call!527832)))

(declare-fun bm!527825 () Bool)

(declare-fun call!527829 () (InoxSet Context!11122))

(assert (=> bm!527825 (= call!527827 call!527829)))

(declare-fun b!6254822 () Bool)

(assert (=> b!6254822 (= e!3805122 ((_ map or) call!527831 call!527829))))

(declare-fun b!6254823 () Bool)

(assert (=> b!6254823 (= e!3805124 (store ((as const (Array Context!11122 Bool)) false) (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550)) true))))

(declare-fun bm!527826 () Bool)

(assert (=> bm!527826 (= call!527831 (derivationStepZipperDown!1425 (ite c!1132282 (regTwo!32867 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))) (regOne!32866 (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292)))))))) (ite c!1132282 (ite (or c!1131828 c!1131830) lt!2348878 (Context!11123 call!527550)) (Context!11123 call!527832)) (h!71156 s!2326)))))

(declare-fun b!6254824 () Bool)

(declare-fun e!3805125 () (InoxSet Context!11122))

(assert (=> b!6254824 (= e!3805125 ((as const (Array Context!11122 Bool)) false))))

(declare-fun c!1132281 () Bool)

(declare-fun b!6254825 () Bool)

(assert (=> b!6254825 (= c!1132281 ((_ is Star!16177) (ite c!1131828 (regOne!32867 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131830 (regTwo!32866 (regTwo!32866 (regOne!32866 r!7292))) (ite c!1131831 (regOne!32866 (regTwo!32866 (regOne!32866 r!7292))) (reg!16506 (regTwo!32866 (regOne!32866 r!7292))))))))))

(assert (=> b!6254825 (= e!3805120 e!3805125)))

(declare-fun bm!527827 () Bool)

(assert (=> bm!527827 (= call!527829 call!527830)))

(declare-fun b!6254826 () Bool)

(assert (=> b!6254826 (= e!3805125 call!527827)))

(assert (= (and d!1962304 c!1132283) b!6254823))

(assert (= (and d!1962304 (not c!1132283)) b!6254819))

(assert (= (and b!6254819 c!1132282) b!6254818))

(assert (= (and b!6254819 (not c!1132282)) b!6254820))

(assert (= (and b!6254820 res!2581388) b!6254816))

(assert (= (and b!6254820 c!1132284) b!6254822))

(assert (= (and b!6254820 (not c!1132284)) b!6254821))

(assert (= (and b!6254821 c!1132285) b!6254817))

(assert (= (and b!6254821 (not c!1132285)) b!6254825))

(assert (= (and b!6254825 c!1132281) b!6254826))

(assert (= (and b!6254825 (not c!1132281)) b!6254824))

(assert (= (or b!6254817 b!6254826) bm!527824))

(assert (= (or b!6254817 b!6254826) bm!527825))

(assert (= (or b!6254822 bm!527824) bm!527823))

(assert (= (or b!6254822 bm!527825) bm!527827))

(assert (= (or b!6254818 b!6254822) bm!527826))

(assert (= (or b!6254818 bm!527827) bm!527822))

(declare-fun m!7077876 () Bool)

(assert (=> bm!527823 m!7077876))

(declare-fun m!7077878 () Bool)

(assert (=> bm!527826 m!7077878))

(declare-fun m!7077880 () Bool)

(assert (=> b!6254823 m!7077880))

(declare-fun m!7077882 () Bool)

(assert (=> bm!527822 m!7077882))

(declare-fun m!7077884 () Bool)

(assert (=> b!6254816 m!7077884))

(assert (=> bm!527544 d!1962304))

(declare-fun d!1962306 () Bool)

(declare-fun res!2581389 () Bool)

(declare-fun e!3805126 () Bool)

(assert (=> d!1962306 (=> res!2581389 e!3805126)))

(assert (=> d!1962306 (= res!2581389 ((_ is Nil!64706) (exprs!6061 (h!71155 zl!343))))))

(assert (=> d!1962306 (= (forall!15296 (exprs!6061 (h!71155 zl!343)) lambda!342123) e!3805126)))

(declare-fun b!6254827 () Bool)

(declare-fun e!3805127 () Bool)

(assert (=> b!6254827 (= e!3805126 e!3805127)))

(declare-fun res!2581390 () Bool)

(assert (=> b!6254827 (=> (not res!2581390) (not e!3805127))))

(assert (=> b!6254827 (= res!2581390 (dynLambda!25564 lambda!342123 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254828 () Bool)

(assert (=> b!6254828 (= e!3805127 (forall!15296 (t!378378 (exprs!6061 (h!71155 zl!343))) lambda!342123))))

(assert (= (and d!1962306 (not res!2581389)) b!6254827))

(assert (= (and b!6254827 res!2581390) b!6254828))

(declare-fun b_lambda!238015 () Bool)

(assert (=> (not b_lambda!238015) (not b!6254827)))

(declare-fun m!7077886 () Bool)

(assert (=> b!6254827 m!7077886))

(declare-fun m!7077888 () Bool)

(assert (=> b!6254828 m!7077888))

(assert (=> d!1961638 d!1962306))

(declare-fun bs!1557684 () Bool)

(declare-fun d!1962308 () Bool)

(assert (= bs!1557684 (and d!1962308 d!1962198)))

(declare-fun lambda!342247 () Int)

(assert (=> bs!1557684 (not (= lambda!342247 lambda!342223))))

(declare-fun bs!1557685 () Bool)

(assert (= bs!1557685 (and d!1962308 d!1962248)))

(assert (=> bs!1557685 (= lambda!342247 lambda!342239)))

(declare-fun bs!1557686 () Bool)

(assert (= bs!1557686 (and d!1962308 b!6253451)))

(assert (=> bs!1557686 (not (= lambda!342247 lambda!342121))))

(declare-fun bs!1557687 () Bool)

(assert (= bs!1557687 (and d!1962308 b!6254671)))

(assert (=> bs!1557687 (not (= lambda!342247 lambda!342227))))

(declare-fun bs!1557688 () Bool)

(assert (= bs!1557688 (and d!1962308 b!6253444)))

(assert (=> bs!1557688 (not (= lambda!342247 lambda!342117))))

(declare-fun bs!1557689 () Bool)

(assert (= bs!1557689 (and d!1962308 b!6254673)))

(assert (=> bs!1557689 (not (= lambda!342247 lambda!342228))))

(declare-fun bs!1557690 () Bool)

(assert (= bs!1557690 (and d!1962308 d!1962250)))

(assert (=> bs!1557690 (= lambda!342247 lambda!342240)))

(declare-fun bs!1557691 () Bool)

(assert (= bs!1557691 (and d!1962308 d!1962050)))

(assert (=> bs!1557691 (not (= lambda!342247 lambda!342200))))

(declare-fun bs!1557692 () Bool)

(assert (= bs!1557692 (and d!1962308 b!6254362)))

(assert (=> bs!1557692 (not (= lambda!342247 lambda!342208))))

(declare-fun bs!1557693 () Bool)

(assert (= bs!1557693 (and d!1962308 d!1962188)))

(assert (=> bs!1557693 (= lambda!342247 lambda!342222)))

(declare-fun bs!1557694 () Bool)

(assert (= bs!1557694 (and d!1962308 d!1962144)))

(assert (=> bs!1557694 (= lambda!342247 lambda!342219)))

(declare-fun bs!1557695 () Bool)

(assert (= bs!1557695 (and d!1962308 d!1962044)))

(assert (=> bs!1557695 (= lambda!342247 lambda!342197)))

(declare-fun bs!1557696 () Bool)

(assert (= bs!1557696 (and d!1962308 b!6254364)))

(assert (=> bs!1557696 (not (= lambda!342247 lambda!342209))))

(declare-fun bs!1557697 () Bool)

(assert (= bs!1557697 (and d!1962308 b!6253449)))

(assert (=> bs!1557697 (not (= lambda!342247 lambda!342120))))

(declare-fun bs!1557698 () Bool)

(assert (= bs!1557698 (and d!1962308 b!6253446)))

(assert (=> bs!1557698 (not (= lambda!342247 lambda!342118))))

(assert (=> d!1962308 (= (nullableZipper!1949 lt!2348853) (exists!2513 lt!2348853 lambda!342247))))

(declare-fun bs!1557699 () Bool)

(assert (= bs!1557699 d!1962308))

(declare-fun m!7077890 () Bool)

(assert (=> bs!1557699 m!7077890))

(assert (=> b!6253423 d!1962308))

(declare-fun bs!1557700 () Bool)

(declare-fun b!6254829 () Bool)

(assert (= bs!1557700 (and b!6254829 b!6253360)))

(declare-fun lambda!342248 () Int)

(assert (=> bs!1557700 (= (and (= (reg!16506 (regTwo!32867 r!7292)) (reg!16506 r!7292)) (= (regTwo!32867 r!7292) r!7292)) (= lambda!342248 lambda!342105))))

(declare-fun bs!1557701 () Bool)

(assert (= bs!1557701 (and b!6254829 d!1961646)))

(assert (=> bs!1557701 (not (= lambda!342248 lambda!342126))))

(declare-fun bs!1557702 () Bool)

(assert (= bs!1557702 (and b!6254829 d!1961648)))

(assert (=> bs!1557702 (not (= lambda!342248 lambda!342132))))

(declare-fun bs!1557703 () Bool)

(assert (= bs!1557703 (and b!6254829 d!1962236)))

(assert (=> bs!1557703 (not (= lambda!342248 lambda!342237))))

(declare-fun bs!1557704 () Bool)

(assert (= bs!1557704 (and b!6254829 b!6252634)))

(assert (=> bs!1557704 (not (= lambda!342248 lambda!342041))))

(assert (=> bs!1557703 (not (= lambda!342248 lambda!342238))))

(declare-fun bs!1557705 () Bool)

(assert (= bs!1557705 (and b!6254829 b!6254489)))

(assert (=> bs!1557705 (= (and (= (reg!16506 (regTwo!32867 r!7292)) (reg!16506 (regOne!32867 r!7292))) (= (regTwo!32867 r!7292) (regOne!32867 r!7292))) (= lambda!342248 lambda!342216))))

(declare-fun bs!1557706 () Bool)

(assert (= bs!1557706 (and b!6254829 d!1962106)))

(assert (=> bs!1557706 (not (= lambda!342248 lambda!342215))))

(assert (=> bs!1557702 (not (= lambda!342248 lambda!342131))))

(assert (=> bs!1557704 (not (= lambda!342248 lambda!342042))))

(declare-fun bs!1557707 () Bool)

(assert (= bs!1557707 (and b!6254829 b!6253362)))

(assert (=> bs!1557707 (not (= lambda!342248 lambda!342106))))

(declare-fun bs!1557708 () Bool)

(assert (= bs!1557708 (and b!6254829 b!6254491)))

(assert (=> bs!1557708 (not (= lambda!342248 lambda!342217))))

(assert (=> b!6254829 true))

(assert (=> b!6254829 true))

(declare-fun bs!1557709 () Bool)

(declare-fun b!6254831 () Bool)

(assert (= bs!1557709 (and b!6254831 b!6253360)))

(declare-fun lambda!342249 () Int)

(assert (=> bs!1557709 (not (= lambda!342249 lambda!342105))))

(declare-fun bs!1557710 () Bool)

(assert (= bs!1557710 (and b!6254831 d!1961646)))

(assert (=> bs!1557710 (not (= lambda!342249 lambda!342126))))

(declare-fun bs!1557711 () Bool)

(assert (= bs!1557711 (and b!6254831 d!1961648)))

(assert (=> bs!1557711 (= (and (= (regOne!32866 (regTwo!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regTwo!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342249 lambda!342132))))

(declare-fun bs!1557712 () Bool)

(assert (= bs!1557712 (and b!6254831 d!1962236)))

(assert (=> bs!1557712 (not (= lambda!342249 lambda!342237))))

(declare-fun bs!1557713 () Bool)

(assert (= bs!1557713 (and b!6254831 b!6252634)))

(assert (=> bs!1557713 (not (= lambda!342249 lambda!342041))))

(assert (=> bs!1557712 (= (and (= (regOne!32866 (regTwo!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regTwo!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342249 lambda!342238))))

(declare-fun bs!1557714 () Bool)

(assert (= bs!1557714 (and b!6254831 b!6254489)))

(assert (=> bs!1557714 (not (= lambda!342249 lambda!342216))))

(declare-fun bs!1557715 () Bool)

(assert (= bs!1557715 (and b!6254831 d!1962106)))

(assert (=> bs!1557715 (not (= lambda!342249 lambda!342215))))

(declare-fun bs!1557716 () Bool)

(assert (= bs!1557716 (and b!6254831 b!6254829)))

(assert (=> bs!1557716 (not (= lambda!342249 lambda!342248))))

(assert (=> bs!1557711 (not (= lambda!342249 lambda!342131))))

(assert (=> bs!1557713 (= (and (= (regOne!32866 (regTwo!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regTwo!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342249 lambda!342042))))

(declare-fun bs!1557717 () Bool)

(assert (= bs!1557717 (and b!6254831 b!6253362)))

(assert (=> bs!1557717 (= (and (= (regOne!32866 (regTwo!32867 r!7292)) (regOne!32866 r!7292)) (= (regTwo!32866 (regTwo!32867 r!7292)) (regTwo!32866 r!7292))) (= lambda!342249 lambda!342106))))

(declare-fun bs!1557718 () Bool)

(assert (= bs!1557718 (and b!6254831 b!6254491)))

(assert (=> bs!1557718 (= (and (= (regOne!32866 (regTwo!32867 r!7292)) (regOne!32866 (regOne!32867 r!7292))) (= (regTwo!32866 (regTwo!32867 r!7292)) (regTwo!32866 (regOne!32867 r!7292)))) (= lambda!342249 lambda!342217))))

(assert (=> b!6254831 true))

(assert (=> b!6254831 true))

(declare-fun e!3805130 () Bool)

(declare-fun call!527833 () Bool)

(assert (=> b!6254829 (= e!3805130 call!527833)))

(declare-fun b!6254830 () Bool)

(declare-fun e!3805131 () Bool)

(declare-fun e!3805134 () Bool)

(assert (=> b!6254830 (= e!3805131 e!3805134)))

(declare-fun c!1132287 () Bool)

(assert (=> b!6254830 (= c!1132287 ((_ is Star!16177) (regTwo!32867 r!7292)))))

(declare-fun bm!527828 () Bool)

(declare-fun call!527834 () Bool)

(assert (=> bm!527828 (= call!527834 (isEmpty!36734 s!2326))))

(assert (=> b!6254831 (= e!3805134 call!527833)))

(declare-fun b!6254832 () Bool)

(declare-fun e!3805133 () Bool)

(assert (=> b!6254832 (= e!3805131 e!3805133)))

(declare-fun res!2581392 () Bool)

(assert (=> b!6254832 (= res!2581392 (matchRSpec!3278 (regOne!32867 (regTwo!32867 r!7292)) s!2326))))

(assert (=> b!6254832 (=> res!2581392 e!3805133)))

(declare-fun b!6254833 () Bool)

(declare-fun e!3805129 () Bool)

(assert (=> b!6254833 (= e!3805129 (= s!2326 (Cons!64708 (c!1131644 (regTwo!32867 r!7292)) Nil!64708)))))

(declare-fun b!6254834 () Bool)

(declare-fun c!1132289 () Bool)

(assert (=> b!6254834 (= c!1132289 ((_ is ElementMatch!16177) (regTwo!32867 r!7292)))))

(declare-fun e!3805132 () Bool)

(assert (=> b!6254834 (= e!3805132 e!3805129)))

(declare-fun b!6254835 () Bool)

(assert (=> b!6254835 (= e!3805133 (matchRSpec!3278 (regTwo!32867 (regTwo!32867 r!7292)) s!2326))))

(declare-fun b!6254836 () Bool)

(declare-fun c!1132288 () Bool)

(assert (=> b!6254836 (= c!1132288 ((_ is Union!16177) (regTwo!32867 r!7292)))))

(assert (=> b!6254836 (= e!3805129 e!3805131)))

(declare-fun b!6254837 () Bool)

(declare-fun res!2581391 () Bool)

(assert (=> b!6254837 (=> res!2581391 e!3805130)))

(assert (=> b!6254837 (= res!2581391 call!527834)))

(assert (=> b!6254837 (= e!3805134 e!3805130)))

(declare-fun d!1962310 () Bool)

(declare-fun c!1132286 () Bool)

(assert (=> d!1962310 (= c!1132286 ((_ is EmptyExpr!16177) (regTwo!32867 r!7292)))))

(declare-fun e!3805128 () Bool)

(assert (=> d!1962310 (= (matchRSpec!3278 (regTwo!32867 r!7292) s!2326) e!3805128)))

(declare-fun b!6254838 () Bool)

(assert (=> b!6254838 (= e!3805128 call!527834)))

(declare-fun bm!527829 () Bool)

(assert (=> bm!527829 (= call!527833 (Exists!3247 (ite c!1132287 lambda!342248 lambda!342249)))))

(declare-fun b!6254839 () Bool)

(assert (=> b!6254839 (= e!3805128 e!3805132)))

(declare-fun res!2581393 () Bool)

(assert (=> b!6254839 (= res!2581393 (not ((_ is EmptyLang!16177) (regTwo!32867 r!7292))))))

(assert (=> b!6254839 (=> (not res!2581393) (not e!3805132))))

(assert (= (and d!1962310 c!1132286) b!6254838))

(assert (= (and d!1962310 (not c!1132286)) b!6254839))

(assert (= (and b!6254839 res!2581393) b!6254834))

(assert (= (and b!6254834 c!1132289) b!6254833))

(assert (= (and b!6254834 (not c!1132289)) b!6254836))

(assert (= (and b!6254836 c!1132288) b!6254832))

(assert (= (and b!6254836 (not c!1132288)) b!6254830))

(assert (= (and b!6254832 (not res!2581392)) b!6254835))

(assert (= (and b!6254830 c!1132287) b!6254837))

(assert (= (and b!6254830 (not c!1132287)) b!6254831))

(assert (= (and b!6254837 (not res!2581391)) b!6254829))

(assert (= (or b!6254829 b!6254831) bm!527829))

(assert (= (or b!6254838 b!6254837) bm!527828))

(assert (=> bm!527828 m!7076308))

(declare-fun m!7077892 () Bool)

(assert (=> b!6254832 m!7077892))

(declare-fun m!7077894 () Bool)

(assert (=> b!6254835 m!7077894))

(declare-fun m!7077896 () Bool)

(assert (=> bm!527829 m!7077896))

(assert (=> b!6253366 d!1962310))

(declare-fun bs!1557719 () Bool)

(declare-fun d!1962312 () Bool)

(assert (= bs!1557719 (and d!1962312 d!1962258)))

(declare-fun lambda!342250 () Int)

(assert (=> bs!1557719 (= lambda!342250 lambda!342242)))

(declare-fun bs!1557720 () Bool)

(assert (= bs!1557720 (and d!1962312 d!1961604)))

(assert (=> bs!1557720 (= lambda!342250 lambda!342109)))

(declare-fun bs!1557721 () Bool)

(assert (= bs!1557721 (and d!1962312 d!1962222)))

(assert (=> bs!1557721 (= lambda!342250 lambda!342231)))

(declare-fun bs!1557722 () Bool)

(assert (= bs!1557722 (and d!1962312 d!1961638)))

(assert (=> bs!1557722 (= lambda!342250 lambda!342123)))

(declare-fun bs!1557723 () Bool)

(assert (= bs!1557723 (and d!1962312 b!6254668)))

(assert (=> bs!1557723 (not (= lambda!342250 lambda!342224))))

(declare-fun bs!1557724 () Bool)

(assert (= bs!1557724 (and d!1962312 d!1962268)))

(assert (=> bs!1557724 (= lambda!342250 lambda!342244)))

(declare-fun bs!1557725 () Bool)

(assert (= bs!1557725 (and d!1962312 d!1961582)))

(assert (=> bs!1557725 (= lambda!342250 lambda!342097)))

(declare-fun bs!1557726 () Bool)

(assert (= bs!1557726 (and d!1962312 b!6254357)))

(assert (=> bs!1557726 (not (= lambda!342250 lambda!342205))))

(declare-fun bs!1557727 () Bool)

(assert (= bs!1557727 (and d!1962312 d!1961580)))

(assert (=> bs!1557727 (= lambda!342250 lambda!342094)))

(declare-fun bs!1557728 () Bool)

(assert (= bs!1557728 (and d!1962312 d!1962214)))

(assert (=> bs!1557728 (= lambda!342250 lambda!342229)))

(declare-fun bs!1557729 () Bool)

(assert (= bs!1557729 (and d!1962312 d!1962168)))

(assert (=> bs!1557729 (= lambda!342250 lambda!342221)))

(declare-fun bs!1557730 () Bool)

(assert (= bs!1557730 (and d!1962312 d!1962064)))

(assert (=> bs!1557730 (= lambda!342250 lambda!342210)))

(declare-fun bs!1557731 () Bool)

(assert (= bs!1557731 (and d!1962312 d!1961588)))

(assert (=> bs!1557731 (= lambda!342250 lambda!342100)))

(declare-fun bs!1557732 () Bool)

(assert (= bs!1557732 (and d!1962312 b!6254359)))

(assert (=> bs!1557732 (not (= lambda!342250 lambda!342206))))

(declare-fun bs!1557733 () Bool)

(assert (= bs!1557733 (and d!1962312 d!1962260)))

(assert (=> bs!1557733 (= lambda!342250 lambda!342243)))

(declare-fun bs!1557734 () Bool)

(assert (= bs!1557734 (and d!1962312 b!6254670)))

(assert (=> bs!1557734 (not (= lambda!342250 lambda!342225))))

(declare-fun bs!1557735 () Bool)

(assert (= bs!1557735 (and d!1962312 d!1961654)))

(assert (=> bs!1557735 (= lambda!342250 lambda!342133)))

(declare-fun b!6254841 () Bool)

(declare-fun e!3805137 () Regex!16177)

(assert (=> b!6254841 (= e!3805137 (Concat!25022 (h!71154 (t!378378 (exprs!6061 (h!71155 zl!343)))) (generalisedConcat!1774 (t!378378 (t!378378 (exprs!6061 (h!71155 zl!343)))))))))

(declare-fun b!6254842 () Bool)

(declare-fun e!3805139 () Regex!16177)

(assert (=> b!6254842 (= e!3805139 e!3805137)))

(declare-fun c!1132290 () Bool)

(assert (=> b!6254842 (= c!1132290 ((_ is Cons!64706) (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254843 () Bool)

(declare-fun e!3805138 () Bool)

(declare-fun lt!2349150 () Regex!16177)

(assert (=> b!6254843 (= e!3805138 (= lt!2349150 (head!12859 (t!378378 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6254844 () Bool)

(declare-fun e!3805140 () Bool)

(assert (=> b!6254844 (= e!3805140 e!3805138)))

(declare-fun c!1132293 () Bool)

(assert (=> b!6254844 (= c!1132293 (isEmpty!36731 (tail!11944 (t!378378 (exprs!6061 (h!71155 zl!343))))))))

(declare-fun b!6254845 () Bool)

(assert (=> b!6254845 (= e!3805137 EmptyExpr!16177)))

(declare-fun b!6254846 () Bool)

(assert (=> b!6254846 (= e!3805138 (isConcat!1108 lt!2349150))))

(declare-fun b!6254847 () Bool)

(assert (=> b!6254847 (= e!3805140 (isEmptyExpr!1585 lt!2349150))))

(declare-fun b!6254848 () Bool)

(assert (=> b!6254848 (= e!3805139 (h!71154 (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254849 () Bool)

(declare-fun e!3805136 () Bool)

(assert (=> b!6254849 (= e!3805136 e!3805140)))

(declare-fun c!1132292 () Bool)

(assert (=> b!6254849 (= c!1132292 (isEmpty!36731 (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun b!6254840 () Bool)

(declare-fun e!3805135 () Bool)

(assert (=> b!6254840 (= e!3805135 (isEmpty!36731 (t!378378 (t!378378 (exprs!6061 (h!71155 zl!343))))))))

(assert (=> d!1962312 e!3805136))

(declare-fun res!2581395 () Bool)

(assert (=> d!1962312 (=> (not res!2581395) (not e!3805136))))

(assert (=> d!1962312 (= res!2581395 (validRegex!7913 lt!2349150))))

(assert (=> d!1962312 (= lt!2349150 e!3805139)))

(declare-fun c!1132291 () Bool)

(assert (=> d!1962312 (= c!1132291 e!3805135)))

(declare-fun res!2581394 () Bool)

(assert (=> d!1962312 (=> (not res!2581394) (not e!3805135))))

(assert (=> d!1962312 (= res!2581394 ((_ is Cons!64706) (t!378378 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> d!1962312 (forall!15296 (t!378378 (exprs!6061 (h!71155 zl!343))) lambda!342250)))

(assert (=> d!1962312 (= (generalisedConcat!1774 (t!378378 (exprs!6061 (h!71155 zl!343)))) lt!2349150)))

(assert (= (and d!1962312 res!2581394) b!6254840))

(assert (= (and d!1962312 c!1132291) b!6254848))

(assert (= (and d!1962312 (not c!1132291)) b!6254842))

(assert (= (and b!6254842 c!1132290) b!6254841))

(assert (= (and b!6254842 (not c!1132290)) b!6254845))

(assert (= (and d!1962312 res!2581395) b!6254849))

(assert (= (and b!6254849 c!1132292) b!6254847))

(assert (= (and b!6254849 (not c!1132292)) b!6254844))

(assert (= (and b!6254844 c!1132293) b!6254843))

(assert (= (and b!6254844 (not c!1132293)) b!6254846))

(assert (=> b!6254849 m!7075698))

(declare-fun m!7077898 () Bool)

(assert (=> b!6254844 m!7077898))

(assert (=> b!6254844 m!7077898))

(declare-fun m!7077900 () Bool)

(assert (=> b!6254844 m!7077900))

(declare-fun m!7077902 () Bool)

(assert (=> d!1962312 m!7077902))

(declare-fun m!7077904 () Bool)

(assert (=> d!1962312 m!7077904))

(declare-fun m!7077906 () Bool)

(assert (=> b!6254840 m!7077906))

(declare-fun m!7077908 () Bool)

(assert (=> b!6254846 m!7077908))

(declare-fun m!7077910 () Bool)

(assert (=> b!6254841 m!7077910))

(declare-fun m!7077912 () Bool)

(assert (=> b!6254847 m!7077912))

(declare-fun m!7077914 () Bool)

(assert (=> b!6254843 m!7077914))

(assert (=> b!6253499 d!1962312))

(assert (=> d!1961600 d!1962020))

(declare-fun d!1962314 () Bool)

(assert (=> d!1962314 (= ($colon$colon!2044 (exprs!6061 lt!2348859) (ite (or c!1131835 c!1131836) (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 r!7292)))) (Cons!64706 (ite (or c!1131835 c!1131836) (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (regOne!32866 (regOne!32866 r!7292))) (exprs!6061 lt!2348859)))))

(assert (=> bm!527551 d!1962314))

(declare-fun d!1962316 () Bool)

(assert (=> d!1962316 (= (isEmpty!36734 s!2326) ((_ is Nil!64708) s!2326))))

(assert (=> bm!527563 d!1962316))

(declare-fun d!1962318 () Bool)

(assert (=> d!1962318 true))

(declare-fun setRes!42522 () Bool)

(assert (=> d!1962318 setRes!42522))

(declare-fun condSetEmpty!42522 () Bool)

(declare-fun res!2581396 () (InoxSet Context!11122))

(assert (=> d!1962318 (= condSetEmpty!42522 (= res!2581396 ((as const (Array Context!11122 Bool)) false)))))

(assert (=> d!1962318 (= (choose!46406 lt!2348857 lambda!342043) res!2581396)))

(declare-fun setIsEmpty!42522 () Bool)

(assert (=> setIsEmpty!42522 setRes!42522))

(declare-fun setNonEmpty!42522 () Bool)

(declare-fun setElem!42522 () Context!11122)

(declare-fun tp!1745141 () Bool)

(declare-fun e!3805141 () Bool)

(assert (=> setNonEmpty!42522 (= setRes!42522 (and tp!1745141 (inv!83689 setElem!42522) e!3805141))))

(declare-fun setRest!42522 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42522 (= res!2581396 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42522 true) setRest!42522))))

(declare-fun b!6254850 () Bool)

(declare-fun tp!1745142 () Bool)

(assert (=> b!6254850 (= e!3805141 tp!1745142)))

(assert (= (and d!1962318 condSetEmpty!42522) setIsEmpty!42522))

(assert (= (and d!1962318 (not condSetEmpty!42522)) setNonEmpty!42522))

(assert (= setNonEmpty!42522 b!6254850))

(declare-fun m!7077916 () Bool)

(assert (=> setNonEmpty!42522 m!7077916))

(assert (=> d!1961636 d!1962318))

(declare-fun d!1962320 () Bool)

(assert (=> d!1962320 (= (isEmpty!36731 (tail!11944 (unfocusZipperList!1598 zl!343))) ((_ is Nil!64706) (tail!11944 (unfocusZipperList!1598 zl!343))))))

(assert (=> b!6253278 d!1962320))

(declare-fun d!1962322 () Bool)

(assert (=> d!1962322 (= (tail!11944 (unfocusZipperList!1598 zl!343)) (t!378378 (unfocusZipperList!1598 zl!343)))))

(assert (=> b!6253278 d!1962322))

(assert (=> b!6253417 d!1961536))

(declare-fun d!1962324 () Bool)

(assert (=> d!1962324 (= (nullable!6170 (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))) (nullableFct!2124 (regOne!32866 (regOne!32866 (regOne!32866 r!7292)))))))

(declare-fun bs!1557736 () Bool)

(assert (= bs!1557736 d!1962324))

(declare-fun m!7077918 () Bool)

(assert (=> bs!1557736 m!7077918))

(assert (=> b!6253242 d!1962324))

(declare-fun d!1962326 () Bool)

(assert (=> d!1962326 (= (isConcat!1108 lt!2348982) ((_ is Concat!25022) lt!2348982))))

(assert (=> b!6253324 d!1962326))

(declare-fun b!6254851 () Bool)

(declare-fun e!3805145 () Bool)

(assert (=> b!6254851 (= e!3805145 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))))

(declare-fun b!6254852 () Bool)

(declare-fun e!3805142 () (InoxSet Context!11122))

(declare-fun call!527835 () (InoxSet Context!11122))

(assert (=> b!6254852 (= e!3805142 call!527835)))

(declare-fun b!6254853 () Bool)

(declare-fun e!3805143 () (InoxSet Context!11122))

(declare-fun call!527838 () (InoxSet Context!11122))

(declare-fun call!527839 () (InoxSet Context!11122))

(assert (=> b!6254853 (= e!3805143 ((_ map or) call!527838 call!527839))))

(declare-fun d!1962328 () Bool)

(declare-fun c!1132296 () Bool)

(assert (=> d!1962328 (= c!1132296 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (= (c!1131644 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326))))))

(declare-fun e!3805146 () (InoxSet Context!11122))

(assert (=> d!1962328 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326)) e!3805146)))

(declare-fun b!6254854 () Bool)

(assert (=> b!6254854 (= e!3805146 e!3805143)))

(declare-fun c!1132295 () Bool)

(assert (=> b!6254854 (= c!1132295 ((_ is Union!16177) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun bm!527830 () Bool)

(declare-fun c!1132298 () Bool)

(declare-fun c!1132297 () Bool)

(declare-fun call!527836 () List!64830)

(assert (=> bm!527830 (= call!527838 (derivationStepZipperDown!1425 (ite c!1132295 (regOne!32867 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (ite c!1132297 (regTwo!32866 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (ite c!1132298 (regOne!32866 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (reg!16506 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))) (ite (or c!1132295 c!1132297) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (Context!11123 call!527836)) (h!71156 s!2326)))))

(declare-fun call!527840 () List!64830)

(declare-fun bm!527831 () Bool)

(assert (=> bm!527831 (= call!527840 ($colon$colon!2044 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))) (ite (or c!1132297 c!1132298) (regTwo!32866 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))))

(declare-fun b!6254855 () Bool)

(assert (=> b!6254855 (= c!1132297 e!3805145)))

(declare-fun res!2581397 () Bool)

(assert (=> b!6254855 (=> (not res!2581397) (not e!3805145))))

(assert (=> b!6254855 (= res!2581397 ((_ is Concat!25022) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun e!3805144 () (InoxSet Context!11122))

(assert (=> b!6254855 (= e!3805143 e!3805144)))

(declare-fun b!6254856 () Bool)

(assert (=> b!6254856 (= e!3805144 e!3805142)))

(assert (=> b!6254856 (= c!1132298 ((_ is Concat!25022) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(declare-fun bm!527832 () Bool)

(assert (=> bm!527832 (= call!527836 call!527840)))

(declare-fun bm!527833 () Bool)

(declare-fun call!527837 () (InoxSet Context!11122))

(assert (=> bm!527833 (= call!527835 call!527837)))

(declare-fun b!6254857 () Bool)

(assert (=> b!6254857 (= e!3805144 ((_ map or) call!527839 call!527837))))

(declare-fun b!6254858 () Bool)

(assert (=> b!6254858 (= e!3805146 (store ((as const (Array Context!11122 Bool)) false) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) true))))

(declare-fun bm!527834 () Bool)

(assert (=> bm!527834 (= call!527839 (derivationStepZipperDown!1425 (ite c!1132295 (regTwo!32867 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (regOne!32866 (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))) (ite c!1132295 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (Context!11123 call!527840)) (h!71156 s!2326)))))

(declare-fun b!6254859 () Bool)

(declare-fun e!3805147 () (InoxSet Context!11122))

(assert (=> b!6254859 (= e!3805147 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254860 () Bool)

(declare-fun c!1132294 () Bool)

(assert (=> b!6254860 (= c!1132294 ((_ is Star!16177) (h!71154 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))

(assert (=> b!6254860 (= e!3805142 e!3805147)))

(declare-fun bm!527835 () Bool)

(assert (=> bm!527835 (= call!527837 call!527838)))

(declare-fun b!6254861 () Bool)

(assert (=> b!6254861 (= e!3805147 call!527835)))

(assert (= (and d!1962328 c!1132296) b!6254858))

(assert (= (and d!1962328 (not c!1132296)) b!6254854))

(assert (= (and b!6254854 c!1132295) b!6254853))

(assert (= (and b!6254854 (not c!1132295)) b!6254855))

(assert (= (and b!6254855 res!2581397) b!6254851))

(assert (= (and b!6254855 c!1132297) b!6254857))

(assert (= (and b!6254855 (not c!1132297)) b!6254856))

(assert (= (and b!6254856 c!1132298) b!6254852))

(assert (= (and b!6254856 (not c!1132298)) b!6254860))

(assert (= (and b!6254860 c!1132294) b!6254861))

(assert (= (and b!6254860 (not c!1132294)) b!6254859))

(assert (= (or b!6254852 b!6254861) bm!527832))

(assert (= (or b!6254852 b!6254861) bm!527833))

(assert (= (or b!6254857 bm!527832) bm!527831))

(assert (= (or b!6254857 bm!527833) bm!527835))

(assert (= (or b!6254853 b!6254857) bm!527834))

(assert (= (or b!6254853 bm!527835) bm!527830))

(declare-fun m!7077920 () Bool)

(assert (=> bm!527831 m!7077920))

(declare-fun m!7077922 () Bool)

(assert (=> bm!527834 m!7077922))

(declare-fun m!7077924 () Bool)

(assert (=> b!6254858 m!7077924))

(declare-fun m!7077926 () Bool)

(assert (=> bm!527830 m!7077926))

(declare-fun m!7077928 () Bool)

(assert (=> b!6254851 m!7077928))

(assert (=> bm!527541 d!1962328))

(declare-fun d!1962330 () Bool)

(assert (=> d!1962330 (= (nullable!6170 (h!71154 (exprs!6061 lt!2348879))) (nullableFct!2124 (h!71154 (exprs!6061 lt!2348879))))))

(declare-fun bs!1557737 () Bool)

(assert (= bs!1557737 d!1962330))

(declare-fun m!7077930 () Bool)

(assert (=> bs!1557737 m!7077930))

(assert (=> b!6253454 d!1962330))

(declare-fun bs!1557738 () Bool)

(declare-fun d!1962332 () Bool)

(assert (= bs!1557738 (and d!1962332 d!1962198)))

(declare-fun lambda!342251 () Int)

(assert (=> bs!1557738 (not (= lambda!342251 lambda!342223))))

(declare-fun bs!1557739 () Bool)

(assert (= bs!1557739 (and d!1962332 d!1962308)))

(assert (=> bs!1557739 (= lambda!342251 lambda!342247)))

(declare-fun bs!1557740 () Bool)

(assert (= bs!1557740 (and d!1962332 d!1962248)))

(assert (=> bs!1557740 (= lambda!342251 lambda!342239)))

(declare-fun bs!1557741 () Bool)

(assert (= bs!1557741 (and d!1962332 b!6253451)))

(assert (=> bs!1557741 (not (= lambda!342251 lambda!342121))))

(declare-fun bs!1557742 () Bool)

(assert (= bs!1557742 (and d!1962332 b!6254671)))

(assert (=> bs!1557742 (not (= lambda!342251 lambda!342227))))

(declare-fun bs!1557743 () Bool)

(assert (= bs!1557743 (and d!1962332 b!6253444)))

(assert (=> bs!1557743 (not (= lambda!342251 lambda!342117))))

(declare-fun bs!1557744 () Bool)

(assert (= bs!1557744 (and d!1962332 b!6254673)))

(assert (=> bs!1557744 (not (= lambda!342251 lambda!342228))))

(declare-fun bs!1557745 () Bool)

(assert (= bs!1557745 (and d!1962332 d!1962250)))

(assert (=> bs!1557745 (= lambda!342251 lambda!342240)))

(declare-fun bs!1557746 () Bool)

(assert (= bs!1557746 (and d!1962332 d!1962050)))

(assert (=> bs!1557746 (not (= lambda!342251 lambda!342200))))

(declare-fun bs!1557747 () Bool)

(assert (= bs!1557747 (and d!1962332 b!6254362)))

(assert (=> bs!1557747 (not (= lambda!342251 lambda!342208))))

(declare-fun bs!1557748 () Bool)

(assert (= bs!1557748 (and d!1962332 d!1962188)))

(assert (=> bs!1557748 (= lambda!342251 lambda!342222)))

(declare-fun bs!1557749 () Bool)

(assert (= bs!1557749 (and d!1962332 d!1962144)))

(assert (=> bs!1557749 (= lambda!342251 lambda!342219)))

(declare-fun bs!1557750 () Bool)

(assert (= bs!1557750 (and d!1962332 d!1962044)))

(assert (=> bs!1557750 (= lambda!342251 lambda!342197)))

(declare-fun bs!1557751 () Bool)

(assert (= bs!1557751 (and d!1962332 b!6254364)))

(assert (=> bs!1557751 (not (= lambda!342251 lambda!342209))))

(declare-fun bs!1557752 () Bool)

(assert (= bs!1557752 (and d!1962332 b!6253449)))

(assert (=> bs!1557752 (not (= lambda!342251 lambda!342120))))

(declare-fun bs!1557753 () Bool)

(assert (= bs!1557753 (and d!1962332 b!6253446)))

(assert (=> bs!1557753 (not (= lambda!342251 lambda!342118))))

(assert (=> d!1962332 (= (nullableZipper!1949 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326))) (exists!2513 (derivationStepZipper!2143 lt!2348870 (h!71156 s!2326)) lambda!342251))))

(declare-fun bs!1557754 () Bool)

(assert (= bs!1557754 d!1962332))

(assert (=> bs!1557754 m!7075670))

(declare-fun m!7077932 () Bool)

(assert (=> bs!1557754 m!7077932))

(assert (=> b!6253169 d!1962332))

(declare-fun b!6254862 () Bool)

(declare-fun e!3805151 () Bool)

(assert (=> b!6254862 (= e!3805151 (nullable!6170 (regOne!32866 (h!71154 (exprs!6061 lt!2348878)))))))

(declare-fun b!6254863 () Bool)

(declare-fun e!3805148 () (InoxSet Context!11122))

(declare-fun call!527841 () (InoxSet Context!11122))

(assert (=> b!6254863 (= e!3805148 call!527841)))

(declare-fun b!6254864 () Bool)

(declare-fun e!3805149 () (InoxSet Context!11122))

(declare-fun call!527844 () (InoxSet Context!11122))

(declare-fun call!527845 () (InoxSet Context!11122))

(assert (=> b!6254864 (= e!3805149 ((_ map or) call!527844 call!527845))))

(declare-fun d!1962334 () Bool)

(declare-fun c!1132301 () Bool)

(assert (=> d!1962334 (= c!1132301 (and ((_ is ElementMatch!16177) (h!71154 (exprs!6061 lt!2348878))) (= (c!1131644 (h!71154 (exprs!6061 lt!2348878))) (h!71156 s!2326))))))

(declare-fun e!3805152 () (InoxSet Context!11122))

(assert (=> d!1962334 (= (derivationStepZipperDown!1425 (h!71154 (exprs!6061 lt!2348878)) (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (h!71156 s!2326)) e!3805152)))

(declare-fun b!6254865 () Bool)

(assert (=> b!6254865 (= e!3805152 e!3805149)))

(declare-fun c!1132300 () Bool)

(assert (=> b!6254865 (= c!1132300 ((_ is Union!16177) (h!71154 (exprs!6061 lt!2348878))))))

(declare-fun c!1132302 () Bool)

(declare-fun c!1132303 () Bool)

(declare-fun bm!527836 () Bool)

(declare-fun call!527842 () List!64830)

(assert (=> bm!527836 (= call!527844 (derivationStepZipperDown!1425 (ite c!1132300 (regOne!32867 (h!71154 (exprs!6061 lt!2348878))) (ite c!1132302 (regTwo!32866 (h!71154 (exprs!6061 lt!2348878))) (ite c!1132303 (regOne!32866 (h!71154 (exprs!6061 lt!2348878))) (reg!16506 (h!71154 (exprs!6061 lt!2348878)))))) (ite (or c!1132300 c!1132302) (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (Context!11123 call!527842)) (h!71156 s!2326)))))

(declare-fun bm!527837 () Bool)

(declare-fun call!527846 () List!64830)

(assert (=> bm!527837 (= call!527846 ($colon$colon!2044 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878)))) (ite (or c!1132302 c!1132303) (regTwo!32866 (h!71154 (exprs!6061 lt!2348878))) (h!71154 (exprs!6061 lt!2348878)))))))

(declare-fun b!6254866 () Bool)

(assert (=> b!6254866 (= c!1132302 e!3805151)))

(declare-fun res!2581398 () Bool)

(assert (=> b!6254866 (=> (not res!2581398) (not e!3805151))))

(assert (=> b!6254866 (= res!2581398 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348878))))))

(declare-fun e!3805150 () (InoxSet Context!11122))

(assert (=> b!6254866 (= e!3805149 e!3805150)))

(declare-fun b!6254867 () Bool)

(assert (=> b!6254867 (= e!3805150 e!3805148)))

(assert (=> b!6254867 (= c!1132303 ((_ is Concat!25022) (h!71154 (exprs!6061 lt!2348878))))))

(declare-fun bm!527838 () Bool)

(assert (=> bm!527838 (= call!527842 call!527846)))

(declare-fun bm!527839 () Bool)

(declare-fun call!527843 () (InoxSet Context!11122))

(assert (=> bm!527839 (= call!527841 call!527843)))

(declare-fun b!6254868 () Bool)

(assert (=> b!6254868 (= e!3805150 ((_ map or) call!527845 call!527843))))

(declare-fun b!6254869 () Bool)

(assert (=> b!6254869 (= e!3805152 (store ((as const (Array Context!11122 Bool)) false) (Context!11123 (t!378378 (exprs!6061 lt!2348878))) true))))

(declare-fun bm!527840 () Bool)

(assert (=> bm!527840 (= call!527845 (derivationStepZipperDown!1425 (ite c!1132300 (regTwo!32867 (h!71154 (exprs!6061 lt!2348878))) (regOne!32866 (h!71154 (exprs!6061 lt!2348878)))) (ite c!1132300 (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (Context!11123 call!527846)) (h!71156 s!2326)))))

(declare-fun b!6254870 () Bool)

(declare-fun e!3805153 () (InoxSet Context!11122))

(assert (=> b!6254870 (= e!3805153 ((as const (Array Context!11122 Bool)) false))))

(declare-fun b!6254871 () Bool)

(declare-fun c!1132299 () Bool)

(assert (=> b!6254871 (= c!1132299 ((_ is Star!16177) (h!71154 (exprs!6061 lt!2348878))))))

(assert (=> b!6254871 (= e!3805148 e!3805153)))

(declare-fun bm!527841 () Bool)

(assert (=> bm!527841 (= call!527843 call!527844)))

(declare-fun b!6254872 () Bool)

(assert (=> b!6254872 (= e!3805153 call!527841)))

(assert (= (and d!1962334 c!1132301) b!6254869))

(assert (= (and d!1962334 (not c!1132301)) b!6254865))

(assert (= (and b!6254865 c!1132300) b!6254864))

(assert (= (and b!6254865 (not c!1132300)) b!6254866))

(assert (= (and b!6254866 res!2581398) b!6254862))

(assert (= (and b!6254866 c!1132302) b!6254868))

(assert (= (and b!6254866 (not c!1132302)) b!6254867))

(assert (= (and b!6254867 c!1132303) b!6254863))

(assert (= (and b!6254867 (not c!1132303)) b!6254871))

(assert (= (and b!6254871 c!1132299) b!6254872))

(assert (= (and b!6254871 (not c!1132299)) b!6254870))

(assert (= (or b!6254863 b!6254872) bm!527838))

(assert (= (or b!6254863 b!6254872) bm!527839))

(assert (= (or b!6254868 bm!527838) bm!527837))

(assert (= (or b!6254868 bm!527839) bm!527841))

(assert (= (or b!6254864 b!6254868) bm!527840))

(assert (= (or b!6254864 bm!527841) bm!527836))

(declare-fun m!7077934 () Bool)

(assert (=> bm!527837 m!7077934))

(declare-fun m!7077936 () Bool)

(assert (=> bm!527840 m!7077936))

(declare-fun m!7077938 () Bool)

(assert (=> b!6254869 m!7077938))

(declare-fun m!7077940 () Bool)

(assert (=> bm!527836 m!7077940))

(declare-fun m!7077942 () Bool)

(assert (=> b!6254862 m!7077942))

(assert (=> bm!527542 d!1962334))

(assert (=> b!6253401 d!1962166))

(assert (=> b!6253434 d!1961544))

(declare-fun d!1962336 () Bool)

(declare-fun lt!2349151 () Int)

(assert (=> d!1962336 (>= lt!2349151 0)))

(declare-fun e!3805154 () Int)

(assert (=> d!1962336 (= lt!2349151 e!3805154)))

(declare-fun c!1132304 () Bool)

(assert (=> d!1962336 (= c!1132304 ((_ is Cons!64707) (t!378379 zl!343)))))

(assert (=> d!1962336 (= (zipperDepthTotal!330 (t!378379 zl!343)) lt!2349151)))

(declare-fun b!6254873 () Bool)

(assert (=> b!6254873 (= e!3805154 (+ (contextDepthTotal!300 (h!71155 (t!378379 zl!343))) (zipperDepthTotal!330 (t!378379 (t!378379 zl!343)))))))

(declare-fun b!6254874 () Bool)

(assert (=> b!6254874 (= e!3805154 0)))

(assert (= (and d!1962336 c!1132304) b!6254873))

(assert (= (and d!1962336 (not c!1132304)) b!6254874))

(declare-fun m!7077944 () Bool)

(assert (=> b!6254873 m!7077944))

(declare-fun m!7077946 () Bool)

(assert (=> b!6254873 m!7077946))

(assert (=> b!6253434 d!1962336))

(declare-fun d!1962338 () Bool)

(declare-fun c!1132305 () Bool)

(assert (=> d!1962338 (= c!1132305 (isEmpty!36734 (tail!11943 (t!378380 s!2326))))))

(declare-fun e!3805155 () Bool)

(assert (=> d!1962338 (= (matchZipper!2189 (derivationStepZipper!2143 lt!2348868 (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))) e!3805155)))

(declare-fun b!6254875 () Bool)

(assert (=> b!6254875 (= e!3805155 (nullableZipper!1949 (derivationStepZipper!2143 lt!2348868 (head!12858 (t!378380 s!2326)))))))

(declare-fun b!6254876 () Bool)

(assert (=> b!6254876 (= e!3805155 (matchZipper!2189 (derivationStepZipper!2143 (derivationStepZipper!2143 lt!2348868 (head!12858 (t!378380 s!2326))) (head!12858 (tail!11943 (t!378380 s!2326)))) (tail!11943 (tail!11943 (t!378380 s!2326)))))))

(assert (= (and d!1962338 c!1132305) b!6254875))

(assert (= (and d!1962338 (not c!1132305)) b!6254876))

(assert (=> d!1962338 m!7076144))

(assert (=> d!1962338 m!7077362))

(assert (=> b!6254875 m!7076370))

(declare-fun m!7077948 () Bool)

(assert (=> b!6254875 m!7077948))

(assert (=> b!6254876 m!7076144))

(assert (=> b!6254876 m!7077366))

(assert (=> b!6254876 m!7076370))

(assert (=> b!6254876 m!7077366))

(declare-fun m!7077950 () Bool)

(assert (=> b!6254876 m!7077950))

(assert (=> b!6254876 m!7076144))

(assert (=> b!6254876 m!7077370))

(assert (=> b!6254876 m!7077950))

(assert (=> b!6254876 m!7077370))

(declare-fun m!7077952 () Bool)

(assert (=> b!6254876 m!7077952))

(assert (=> b!6253427 d!1962338))

(declare-fun bs!1557755 () Bool)

(declare-fun d!1962340 () Bool)

(assert (= bs!1557755 (and d!1962340 d!1962076)))

(declare-fun lambda!342252 () Int)

(assert (=> bs!1557755 (= lambda!342252 lambda!342211)))

(declare-fun bs!1557756 () Bool)

(assert (= bs!1557756 (and d!1962340 d!1962098)))

(assert (=> bs!1557756 (= lambda!342252 lambda!342212)))

(declare-fun bs!1557757 () Bool)

(assert (= bs!1557757 (and d!1962340 d!1962140)))

(assert (=> bs!1557757 (= lambda!342252 lambda!342218)))

(declare-fun bs!1557758 () Bool)

(assert (= bs!1557758 (and d!1962340 b!6252643)))

(assert (=> bs!1557758 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342252 lambda!342043))))

(declare-fun bs!1557759 () Bool)

(assert (= bs!1557759 (and d!1962340 d!1962218)))

(assert (=> bs!1557759 (= lambda!342252 lambda!342230)))

(declare-fun bs!1557760 () Bool)

(assert (= bs!1557760 (and d!1962340 d!1962292)))

(assert (=> bs!1557760 (= lambda!342252 lambda!342246)))

(declare-fun bs!1557761 () Bool)

(assert (= bs!1557761 (and d!1962340 d!1962280)))

(assert (=> bs!1557761 (= lambda!342252 lambda!342245)))

(declare-fun bs!1557762 () Bool)

(assert (= bs!1557762 (and d!1962340 d!1961556)))

(assert (=> bs!1557762 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342252 lambda!342091))))

(declare-fun bs!1557763 () Bool)

(assert (= bs!1557763 (and d!1962340 d!1962230)))

(assert (=> bs!1557763 (= lambda!342252 lambda!342232)))

(declare-fun bs!1557764 () Bool)

(assert (= bs!1557764 (and d!1962340 d!1961632)))

(assert (=> bs!1557764 (= (= (head!12858 (t!378380 s!2326)) (h!71156 s!2326)) (= lambda!342252 lambda!342122))))

(declare-fun bs!1557765 () Bool)

(assert (= bs!1557765 (and d!1962340 d!1962254)))

(assert (=> bs!1557765 (= lambda!342252 lambda!342241)))

(declare-fun bs!1557766 () Bool)

(assert (= bs!1557766 (and d!1962340 d!1962158)))

(assert (=> bs!1557766 (= lambda!342252 lambda!342220)))

(assert (=> d!1962340 true))

(assert (=> d!1962340 (= (derivationStepZipper!2143 lt!2348868 (head!12858 (t!378380 s!2326))) (flatMap!1682 lt!2348868 lambda!342252))))

(declare-fun bs!1557767 () Bool)

(assert (= bs!1557767 d!1962340))

(declare-fun m!7077954 () Bool)

(assert (=> bs!1557767 m!7077954))

(assert (=> b!6253427 d!1962340))

(assert (=> b!6253427 d!1962078))

(assert (=> b!6253427 d!1962080))

(declare-fun bs!1557768 () Bool)

(declare-fun d!1962342 () Bool)

(assert (= bs!1557768 (and d!1962342 d!1962198)))

(declare-fun lambda!342253 () Int)

(assert (=> bs!1557768 (not (= lambda!342253 lambda!342223))))

(declare-fun bs!1557769 () Bool)

(assert (= bs!1557769 (and d!1962342 d!1962308)))

(assert (=> bs!1557769 (= lambda!342253 lambda!342247)))

(declare-fun bs!1557770 () Bool)

(assert (= bs!1557770 (and d!1962342 d!1962248)))

(assert (=> bs!1557770 (= lambda!342253 lambda!342239)))

(declare-fun bs!1557771 () Bool)

(assert (= bs!1557771 (and d!1962342 b!6253451)))

(assert (=> bs!1557771 (not (= lambda!342253 lambda!342121))))

(declare-fun bs!1557772 () Bool)

(assert (= bs!1557772 (and d!1962342 b!6254671)))

(assert (=> bs!1557772 (not (= lambda!342253 lambda!342227))))

(declare-fun bs!1557773 () Bool)

(assert (= bs!1557773 (and d!1962342 b!6253444)))

(assert (=> bs!1557773 (not (= lambda!342253 lambda!342117))))

(declare-fun bs!1557774 () Bool)

(assert (= bs!1557774 (and d!1962342 d!1962332)))

(assert (=> bs!1557774 (= lambda!342253 lambda!342251)))

(declare-fun bs!1557775 () Bool)

(assert (= bs!1557775 (and d!1962342 b!6254673)))

(assert (=> bs!1557775 (not (= lambda!342253 lambda!342228))))

(declare-fun bs!1557776 () Bool)

(assert (= bs!1557776 (and d!1962342 d!1962250)))

(assert (=> bs!1557776 (= lambda!342253 lambda!342240)))

(declare-fun bs!1557777 () Bool)

(assert (= bs!1557777 (and d!1962342 d!1962050)))

(assert (=> bs!1557777 (not (= lambda!342253 lambda!342200))))

(declare-fun bs!1557778 () Bool)

(assert (= bs!1557778 (and d!1962342 b!6254362)))

(assert (=> bs!1557778 (not (= lambda!342253 lambda!342208))))

(declare-fun bs!1557779 () Bool)

(assert (= bs!1557779 (and d!1962342 d!1962188)))

(assert (=> bs!1557779 (= lambda!342253 lambda!342222)))

(declare-fun bs!1557780 () Bool)

(assert (= bs!1557780 (and d!1962342 d!1962144)))

(assert (=> bs!1557780 (= lambda!342253 lambda!342219)))

(declare-fun bs!1557781 () Bool)

(assert (= bs!1557781 (and d!1962342 d!1962044)))

(assert (=> bs!1557781 (= lambda!342253 lambda!342197)))

(declare-fun bs!1557782 () Bool)

(assert (= bs!1557782 (and d!1962342 b!6254364)))

(assert (=> bs!1557782 (not (= lambda!342253 lambda!342209))))

(declare-fun bs!1557783 () Bool)

(assert (= bs!1557783 (and d!1962342 b!6253449)))

(assert (=> bs!1557783 (not (= lambda!342253 lambda!342120))))

(declare-fun bs!1557784 () Bool)

(assert (= bs!1557784 (and d!1962342 b!6253446)))

(assert (=> bs!1557784 (not (= lambda!342253 lambda!342118))))

(assert (=> d!1962342 (= (nullableZipper!1949 lt!2348875) (exists!2513 lt!2348875 lambda!342253))))

(declare-fun bs!1557785 () Bool)

(assert (= bs!1557785 d!1962342))

(declare-fun m!7077956 () Bool)

(assert (=> bs!1557785 m!7077956))

(assert (=> b!6253413 d!1962342))

(declare-fun d!1962344 () Bool)

(assert (=> d!1962344 (= (isEmpty!36731 (unfocusZipperList!1598 zl!343)) ((_ is Nil!64706) (unfocusZipperList!1598 zl!343)))))

(assert (=> b!6253274 d!1962344))

(declare-fun d!1962346 () Bool)

(declare-fun c!1132306 () Bool)

(assert (=> d!1962346 (= c!1132306 (isEmpty!36734 (t!378380 s!2326)))))

(declare-fun e!3805156 () Bool)

(assert (=> d!1962346 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348854) (t!378380 s!2326)) e!3805156)))

(declare-fun b!6254877 () Bool)

(assert (=> b!6254877 (= e!3805156 (nullableZipper!1949 ((_ map or) lt!2348852 lt!2348854)))))

(declare-fun b!6254878 () Bool)

(assert (=> b!6254878 (= e!3805156 (matchZipper!2189 (derivationStepZipper!2143 ((_ map or) lt!2348852 lt!2348854) (head!12858 (t!378380 s!2326))) (tail!11943 (t!378380 s!2326))))))

(assert (= (and d!1962346 c!1132306) b!6254877))

(assert (= (and d!1962346 (not c!1132306)) b!6254878))

(assert (=> d!1962346 m!7076136))

(declare-fun m!7077958 () Bool)

(assert (=> b!6254877 m!7077958))

(assert (=> b!6254878 m!7076140))

(assert (=> b!6254878 m!7076140))

(declare-fun m!7077960 () Bool)

(assert (=> b!6254878 m!7077960))

(assert (=> b!6254878 m!7076144))

(assert (=> b!6254878 m!7077960))

(assert (=> b!6254878 m!7076144))

(declare-fun m!7077962 () Bool)

(assert (=> b!6254878 m!7077962))

(assert (=> d!1961602 d!1962346))

(assert (=> d!1961602 d!1961600))

(declare-fun d!1962348 () Bool)

(declare-fun e!3805157 () Bool)

(assert (=> d!1962348 (= (matchZipper!2189 ((_ map or) lt!2348852 lt!2348854) (t!378380 s!2326)) e!3805157)))

(declare-fun res!2581399 () Bool)

(assert (=> d!1962348 (=> res!2581399 e!3805157)))

(assert (=> d!1962348 (= res!2581399 (matchZipper!2189 lt!2348852 (t!378380 s!2326)))))

(assert (=> d!1962348 true))

(declare-fun _$48!1984 () Unit!158039)

(assert (=> d!1962348 (= (choose!46405 lt!2348852 lt!2348854 (t!378380 s!2326)) _$48!1984)))

(declare-fun b!6254879 () Bool)

(assert (=> b!6254879 (= e!3805157 (matchZipper!2189 lt!2348854 (t!378380 s!2326)))))

(assert (= (and d!1962348 (not res!2581399)) b!6254879))

(assert (=> d!1962348 m!7076342))

(assert (=> d!1962348 m!7075752))

(assert (=> b!6254879 m!7075674))

(assert (=> d!1961602 d!1962348))

(declare-fun call!527847 () (InoxSet Context!11122))

(declare-fun e!3805160 () (InoxSet Context!11122))

(declare-fun b!6254880 () Bool)

(assert (=> b!6254880 (= e!3805160 ((_ map or) call!527847 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878)))))) (h!71156 s!2326))))))

(declare-fun b!6254881 () Bool)

(declare-fun e!3805159 () (InoxSet Context!11122))

(assert (=> b!6254881 (= e!3805160 e!3805159)))

(declare-fun c!1132307 () Bool)

(assert (=> b!6254881 (= c!1132307 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878))))))))

(declare-fun b!6254882 () Bool)

(declare-fun e!3805158 () Bool)

(assert (=> b!6254882 (= e!3805158 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878)))))))))

(declare-fun b!6254883 () Bool)

(assert (=> b!6254883 (= e!3805159 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1962350 () Bool)

(declare-fun c!1132308 () Bool)

(assert (=> d!1962350 (= c!1132308 e!3805158)))

(declare-fun res!2581400 () Bool)

(assert (=> d!1962350 (=> (not res!2581400) (not e!3805158))))

(assert (=> d!1962350 (= res!2581400 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878))))))))

(assert (=> d!1962350 (= (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 lt!2348878))) (h!71156 s!2326)) e!3805160)))

(declare-fun b!6254884 () Bool)

(assert (=> b!6254884 (= e!3805159 call!527847)))

(declare-fun bm!527842 () Bool)

(assert (=> bm!527842 (= call!527847 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 lt!2348878)))))) (h!71156 s!2326)))))

(assert (= (and d!1962350 res!2581400) b!6254882))

(assert (= (and d!1962350 c!1132308) b!6254880))

(assert (= (and d!1962350 (not c!1132308)) b!6254881))

(assert (= (and b!6254881 c!1132307) b!6254884))

(assert (= (and b!6254881 (not c!1132307)) b!6254883))

(assert (= (or b!6254880 b!6254884) bm!527842))

(declare-fun m!7077964 () Bool)

(assert (=> b!6254880 m!7077964))

(declare-fun m!7077966 () Bool)

(assert (=> b!6254882 m!7077966))

(declare-fun m!7077968 () Bool)

(assert (=> bm!527842 m!7077968))

(assert (=> b!6253221 d!1962350))

(declare-fun d!1962352 () Bool)

(assert (=> d!1962352 (= (isEmpty!36731 (tail!11944 (exprs!6061 (h!71155 zl!343)))) ((_ is Nil!64706) (tail!11944 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> b!6253502 d!1962352))

(declare-fun d!1962354 () Bool)

(assert (=> d!1962354 (= (tail!11944 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))

(assert (=> b!6253502 d!1962354))

(declare-fun b!6254885 () Bool)

(declare-fun e!3805163 () (InoxSet Context!11122))

(declare-fun call!527848 () (InoxSet Context!11122))

(assert (=> b!6254885 (= e!3805163 ((_ map or) call!527848 (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))) (h!71156 s!2326))))))

(declare-fun b!6254886 () Bool)

(declare-fun e!3805162 () (InoxSet Context!11122))

(assert (=> b!6254886 (= e!3805163 e!3805162)))

(declare-fun c!1132309 () Bool)

(assert (=> b!6254886 (= c!1132309 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))))

(declare-fun b!6254887 () Bool)

(declare-fun e!3805161 () Bool)

(assert (=> b!6254887 (= e!3805161 (nullable!6170 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))))))

(declare-fun b!6254888 () Bool)

(assert (=> b!6254888 (= e!3805162 ((as const (Array Context!11122 Bool)) false))))

(declare-fun d!1962356 () Bool)

(declare-fun c!1132310 () Bool)

(assert (=> d!1962356 (= c!1132310 e!3805161)))

(declare-fun res!2581401 () Bool)

(assert (=> d!1962356 (=> (not res!2581401) (not e!3805161))))

(assert (=> d!1962356 (= res!2581401 ((_ is Cons!64706) (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))))))

(assert (=> d!1962356 (= (derivationStepZipperUp!1351 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))) (h!71156 s!2326)) e!3805163)))

(declare-fun b!6254889 () Bool)

(assert (=> b!6254889 (= e!3805162 call!527848)))

(declare-fun bm!527843 () Bool)

(assert (=> bm!527843 (= call!527848 (derivationStepZipperDown!1425 (h!71154 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343)))))))))) (Context!11123 (t!378378 (exprs!6061 (Context!11123 (t!378378 (exprs!6061 (Context!11123 (Cons!64706 (h!71154 (exprs!6061 (h!71155 zl!343))) (t!378378 (exprs!6061 (h!71155 zl!343))))))))))) (h!71156 s!2326)))))

(assert (= (and d!1962356 res!2581401) b!6254887))

(assert (= (and d!1962356 c!1132310) b!6254885))

(assert (= (and d!1962356 (not c!1132310)) b!6254886))

(assert (= (and b!6254886 c!1132309) b!6254889))

(assert (= (and b!6254886 (not c!1132309)) b!6254888))

(assert (= (or b!6254885 b!6254889) bm!527843))

(declare-fun m!7077970 () Bool)

(assert (=> b!6254885 m!7077970))

(declare-fun m!7077972 () Bool)

(assert (=> b!6254887 m!7077972))

(declare-fun m!7077974 () Bool)

(assert (=> bm!527843 m!7077974))

(assert (=> b!6253216 d!1962356))

(declare-fun bs!1557786 () Bool)

(declare-fun d!1962358 () Bool)

(assert (= bs!1557786 (and d!1962358 d!1962342)))

(declare-fun lambda!342254 () Int)

(assert (=> bs!1557786 (= lambda!342254 lambda!342253)))

(declare-fun bs!1557787 () Bool)

(assert (= bs!1557787 (and d!1962358 d!1962198)))

(assert (=> bs!1557787 (not (= lambda!342254 lambda!342223))))

(declare-fun bs!1557788 () Bool)

(assert (= bs!1557788 (and d!1962358 d!1962308)))

(assert (=> bs!1557788 (= lambda!342254 lambda!342247)))

(declare-fun bs!1557789 () Bool)

(assert (= bs!1557789 (and d!1962358 d!1962248)))

(assert (=> bs!1557789 (= lambda!342254 lambda!342239)))

(declare-fun bs!1557790 () Bool)

(assert (= bs!1557790 (and d!1962358 b!6253451)))

(assert (=> bs!1557790 (not (= lambda!342254 lambda!342121))))

(declare-fun bs!1557791 () Bool)

(assert (= bs!1557791 (and d!1962358 b!6254671)))

(assert (=> bs!1557791 (not (= lambda!342254 lambda!342227))))

(declare-fun bs!1557792 () Bool)

(assert (= bs!1557792 (and d!1962358 b!6253444)))

(assert (=> bs!1557792 (not (= lambda!342254 lambda!342117))))

(declare-fun bs!1557793 () Bool)

(assert (= bs!1557793 (and d!1962358 d!1962332)))

(assert (=> bs!1557793 (= lambda!342254 lambda!342251)))

(declare-fun bs!1557794 () Bool)

(assert (= bs!1557794 (and d!1962358 b!6254673)))

(assert (=> bs!1557794 (not (= lambda!342254 lambda!342228))))

(declare-fun bs!1557795 () Bool)

(assert (= bs!1557795 (and d!1962358 d!1962250)))

(assert (=> bs!1557795 (= lambda!342254 lambda!342240)))

(declare-fun bs!1557796 () Bool)

(assert (= bs!1557796 (and d!1962358 d!1962050)))

(assert (=> bs!1557796 (not (= lambda!342254 lambda!342200))))

(declare-fun bs!1557797 () Bool)

(assert (= bs!1557797 (and d!1962358 b!6254362)))

(assert (=> bs!1557797 (not (= lambda!342254 lambda!342208))))

(declare-fun bs!1557798 () Bool)

(assert (= bs!1557798 (and d!1962358 d!1962188)))

(assert (=> bs!1557798 (= lambda!342254 lambda!342222)))

(declare-fun bs!1557799 () Bool)

(assert (= bs!1557799 (and d!1962358 d!1962144)))

(assert (=> bs!1557799 (= lambda!342254 lambda!342219)))

(declare-fun bs!1557800 () Bool)

(assert (= bs!1557800 (and d!1962358 d!1962044)))

(assert (=> bs!1557800 (= lambda!342254 lambda!342197)))

(declare-fun bs!1557801 () Bool)

(assert (= bs!1557801 (and d!1962358 b!6254364)))

(assert (=> bs!1557801 (not (= lambda!342254 lambda!342209))))

(declare-fun bs!1557802 () Bool)

(assert (= bs!1557802 (and d!1962358 b!6253449)))

(assert (=> bs!1557802 (not (= lambda!342254 lambda!342120))))

(declare-fun bs!1557803 () Bool)

(assert (= bs!1557803 (and d!1962358 b!6253446)))

(assert (=> bs!1557803 (not (= lambda!342254 lambda!342118))))

(assert (=> d!1962358 (= (nullableZipper!1949 lt!2348852) (exists!2513 lt!2348852 lambda!342254))))

(declare-fun bs!1557804 () Bool)

(assert (= bs!1557804 d!1962358))

(declare-fun m!7077976 () Bool)

(assert (=> bs!1557804 m!7077976))

(assert (=> b!6253415 d!1962358))

(declare-fun d!1962360 () Bool)

(assert (=> d!1962360 (= (nullable!6170 (h!71154 (exprs!6061 lt!2348859))) (nullableFct!2124 (h!71154 (exprs!6061 lt!2348859))))))

(declare-fun bs!1557805 () Bool)

(assert (= bs!1557805 d!1962360))

(declare-fun m!7077978 () Bool)

(assert (=> bs!1557805 m!7077978))

(assert (=> b!6253420 d!1962360))

(assert (=> bs!1556834 d!1961606))

(declare-fun d!1962362 () Bool)

(assert (=> d!1962362 (= (isEmpty!36735 (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326)) (not ((_ is Some!16067) (findConcatSeparation!2482 (regOne!32866 r!7292) (regTwo!32866 r!7292) Nil!64708 s!2326 s!2326))))))

(assert (=> d!1961650 d!1962362))

(declare-fun bs!1557806 () Bool)

(declare-fun d!1962364 () Bool)

(assert (= bs!1557806 (and d!1962364 d!1962342)))

(declare-fun lambda!342255 () Int)

(assert (=> bs!1557806 (= lambda!342255 lambda!342253)))

(declare-fun bs!1557807 () Bool)

(assert (= bs!1557807 (and d!1962364 d!1962198)))

(assert (=> bs!1557807 (not (= lambda!342255 lambda!342223))))

(declare-fun bs!1557808 () Bool)

(assert (= bs!1557808 (and d!1962364 d!1962308)))

(assert (=> bs!1557808 (= lambda!342255 lambda!342247)))

(declare-fun bs!1557809 () Bool)

(assert (= bs!1557809 (and d!1962364 d!1962248)))

(assert (=> bs!1557809 (= lambda!342255 lambda!342239)))

(declare-fun bs!1557810 () Bool)

(assert (= bs!1557810 (and d!1962364 b!6253451)))

(assert (=> bs!1557810 (not (= lambda!342255 lambda!342121))))

(declare-fun bs!1557811 () Bool)

(assert (= bs!1557811 (and d!1962364 b!6254671)))

(assert (=> bs!1557811 (not (= lambda!342255 lambda!342227))))

(declare-fun bs!1557812 () Bool)

(assert (= bs!1557812 (and d!1962364 d!1962332)))

(assert (=> bs!1557812 (= lambda!342255 lambda!342251)))

(declare-fun bs!1557813 () Bool)

(assert (= bs!1557813 (and d!1962364 b!6254673)))

(assert (=> bs!1557813 (not (= lambda!342255 lambda!342228))))

(declare-fun bs!1557814 () Bool)

(assert (= bs!1557814 (and d!1962364 d!1962250)))

(assert (=> bs!1557814 (= lambda!342255 lambda!342240)))

(declare-fun bs!1557815 () Bool)

(assert (= bs!1557815 (and d!1962364 d!1962050)))

(assert (=> bs!1557815 (not (= lambda!342255 lambda!342200))))

(declare-fun bs!1557816 () Bool)

(assert (= bs!1557816 (and d!1962364 b!6254362)))

(assert (=> bs!1557816 (not (= lambda!342255 lambda!342208))))

(declare-fun bs!1557817 () Bool)

(assert (= bs!1557817 (and d!1962364 d!1962188)))

(assert (=> bs!1557817 (= lambda!342255 lambda!342222)))

(declare-fun bs!1557818 () Bool)

(assert (= bs!1557818 (and d!1962364 d!1962144)))

(assert (=> bs!1557818 (= lambda!342255 lambda!342219)))

(declare-fun bs!1557819 () Bool)

(assert (= bs!1557819 (and d!1962364 b!6253444)))

(assert (=> bs!1557819 (not (= lambda!342255 lambda!342117))))

(declare-fun bs!1557820 () Bool)

(assert (= bs!1557820 (and d!1962364 d!1962358)))

(assert (=> bs!1557820 (= lambda!342255 lambda!342254)))

(declare-fun bs!1557821 () Bool)

(assert (= bs!1557821 (and d!1962364 d!1962044)))

(assert (=> bs!1557821 (= lambda!342255 lambda!342197)))

(declare-fun bs!1557822 () Bool)

(assert (= bs!1557822 (and d!1962364 b!6254364)))

(assert (=> bs!1557822 (not (= lambda!342255 lambda!342209))))

(declare-fun bs!1557823 () Bool)

(assert (= bs!1557823 (and d!1962364 b!6253449)))

(assert (=> bs!1557823 (not (= lambda!342255 lambda!342120))))

(declare-fun bs!1557824 () Bool)

(assert (= bs!1557824 (and d!1962364 b!6253446)))

(assert (=> bs!1557824 (not (= lambda!342255 lambda!342118))))

(assert (=> d!1962364 (= (nullableZipper!1949 lt!2348867) (exists!2513 lt!2348867 lambda!342255))))

(declare-fun bs!1557825 () Bool)

(assert (= bs!1557825 d!1962364))

(declare-fun m!7077980 () Bool)

(assert (=> bs!1557825 m!7077980))

(assert (=> b!6253436 d!1962364))

(assert (=> d!1961592 d!1962316))

(assert (=> d!1961592 d!1961540))

(declare-fun d!1962366 () Bool)

(assert (=> d!1962366 true))

(declare-fun setRes!42523 () Bool)

(assert (=> d!1962366 setRes!42523))

(declare-fun condSetEmpty!42523 () Bool)

(declare-fun res!2581402 () (InoxSet Context!11122))

(assert (=> d!1962366 (= condSetEmpty!42523 (= res!2581402 ((as const (Array Context!11122 Bool)) false)))))

(assert (=> d!1962366 (= (choose!46406 lt!2348870 lambda!342043) res!2581402)))

(declare-fun setIsEmpty!42523 () Bool)

(assert (=> setIsEmpty!42523 setRes!42523))

(declare-fun tp!1745143 () Bool)

(declare-fun e!3805164 () Bool)

(declare-fun setNonEmpty!42523 () Bool)

(declare-fun setElem!42523 () Context!11122)

(assert (=> setNonEmpty!42523 (= setRes!42523 (and tp!1745143 (inv!83689 setElem!42523) e!3805164))))

(declare-fun setRest!42523 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42523 (= res!2581402 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42523 true) setRest!42523))))

(declare-fun b!6254890 () Bool)

(declare-fun tp!1745144 () Bool)

(assert (=> b!6254890 (= e!3805164 tp!1745144)))

(assert (= (and d!1962366 condSetEmpty!42523) setIsEmpty!42523))

(assert (= (and d!1962366 (not condSetEmpty!42523)) setNonEmpty!42523))

(assert (= setNonEmpty!42523 b!6254890))

(declare-fun m!7077982 () Bool)

(assert (=> setNonEmpty!42523 m!7077982))

(assert (=> d!1961616 d!1962366))

(assert (=> b!6253498 d!1961596))

(declare-fun d!1962368 () Bool)

(assert (=> d!1962368 (= (isUnion!1024 lt!2348976) ((_ is Union!16177) lt!2348976))))

(assert (=> b!6253282 d!1962368))

(declare-fun b!6254891 () Bool)

(declare-fun e!3805168 () Bool)

(declare-fun e!3805167 () Bool)

(assert (=> b!6254891 (= e!3805168 e!3805167)))

(declare-fun res!2581404 () Bool)

(assert (=> b!6254891 (=> (not res!2581404) (not e!3805167))))

(declare-fun call!527849 () Bool)

(assert (=> b!6254891 (= res!2581404 call!527849)))

(declare-fun b!6254892 () Bool)

(declare-fun e!3805171 () Bool)

(declare-fun e!3805165 () Bool)

(assert (=> b!6254892 (= e!3805171 e!3805165)))

(declare-fun res!2581405 () Bool)

(assert (=> b!6254892 (= res!2581405 (not (nullable!6170 (reg!16506 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))))

(assert (=> b!6254892 (=> (not res!2581405) (not e!3805165))))

(declare-fun b!6254893 () Bool)

(declare-fun e!3805169 () Bool)

(assert (=> b!6254893 (= e!3805169 e!3805171)))

(declare-fun c!1132311 () Bool)

(assert (=> b!6254893 (= c!1132311 ((_ is Star!16177) (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))

(declare-fun d!1962370 () Bool)

(declare-fun res!2581403 () Bool)

(assert (=> d!1962370 (=> res!2581403 e!3805169)))

(assert (=> d!1962370 (= res!2581403 ((_ is ElementMatch!16177) (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))

(assert (=> d!1962370 (= (validRegex!7913 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))) e!3805169)))

(declare-fun bm!527844 () Bool)

(declare-fun call!527851 () Bool)

(declare-fun c!1132312 () Bool)

(assert (=> bm!527844 (= call!527851 (validRegex!7913 (ite c!1132312 (regTwo!32867 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))) (regTwo!32866 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))))

(declare-fun b!6254894 () Bool)

(declare-fun res!2581406 () Bool)

(assert (=> b!6254894 (=> res!2581406 e!3805168)))

(assert (=> b!6254894 (= res!2581406 (not ((_ is Concat!25022) (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292)))))))

(declare-fun e!3805166 () Bool)

(assert (=> b!6254894 (= e!3805166 e!3805168)))

(declare-fun bm!527845 () Bool)

(declare-fun call!527850 () Bool)

(assert (=> bm!527845 (= call!527849 call!527850)))

(declare-fun b!6254895 () Bool)

(declare-fun res!2581407 () Bool)

(declare-fun e!3805170 () Bool)

(assert (=> b!6254895 (=> (not res!2581407) (not e!3805170))))

(assert (=> b!6254895 (= res!2581407 call!527849)))

(assert (=> b!6254895 (= e!3805166 e!3805170)))

(declare-fun b!6254896 () Bool)

(assert (=> b!6254896 (= e!3805170 call!527851)))

(declare-fun b!6254897 () Bool)

(assert (=> b!6254897 (= e!3805171 e!3805166)))

(assert (=> b!6254897 (= c!1132312 ((_ is Union!16177) (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))))))

(declare-fun bm!527846 () Bool)

(assert (=> bm!527846 (= call!527850 (validRegex!7913 (ite c!1132311 (reg!16506 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))) (ite c!1132312 (regOne!32867 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292))) (regOne!32866 (ite c!1131791 (regTwo!32867 r!7292) (regTwo!32866 r!7292)))))))))

(declare-fun b!6254898 () Bool)

(assert (=> b!6254898 (= e!3805167 call!527851)))

(declare-fun b!6254899 () Bool)

(assert (=> b!6254899 (= e!3805165 call!527850)))

(assert (= (and d!1962370 (not res!2581403)) b!6254893))

(assert (= (and b!6254893 c!1132311) b!6254892))

(assert (= (and b!6254893 (not c!1132311)) b!6254897))

(assert (= (and b!6254892 res!2581405) b!6254899))

(assert (= (and b!6254897 c!1132312) b!6254895))

(assert (= (and b!6254897 (not c!1132312)) b!6254894))

(assert (= (and b!6254895 res!2581407) b!6254896))

(assert (= (and b!6254894 (not res!2581406)) b!6254891))

(assert (= (and b!6254891 res!2581404) b!6254898))

(assert (= (or b!6254896 b!6254898) bm!527844))

(assert (= (or b!6254895 b!6254891) bm!527845))

(assert (= (or b!6254899 bm!527845) bm!527846))

(declare-fun m!7077984 () Bool)

(assert (=> b!6254892 m!7077984))

(declare-fun m!7077986 () Bool)

(assert (=> bm!527844 m!7077986))

(declare-fun m!7077988 () Bool)

(assert (=> bm!527846 m!7077988))

(assert (=> bm!527518 d!1962370))

(declare-fun d!1962372 () Bool)

(declare-fun res!2581408 () Bool)

(declare-fun e!3805172 () Bool)

(assert (=> d!1962372 (=> res!2581408 e!3805172)))

(assert (=> d!1962372 (= res!2581408 ((_ is Nil!64707) lt!2348865))))

(assert (=> d!1962372 (= (forall!15297 lt!2348865 lambda!342118) e!3805172)))

(declare-fun b!6254900 () Bool)

(declare-fun e!3805173 () Bool)

(assert (=> b!6254900 (= e!3805172 e!3805173)))

(declare-fun res!2581409 () Bool)

(assert (=> b!6254900 (=> (not res!2581409) (not e!3805173))))

(assert (=> b!6254900 (= res!2581409 (dynLambda!25563 lambda!342118 (h!71155 lt!2348865)))))

(declare-fun b!6254901 () Bool)

(assert (=> b!6254901 (= e!3805173 (forall!15297 (t!378379 lt!2348865) lambda!342118))))

(assert (= (and d!1962372 (not res!2581408)) b!6254900))

(assert (= (and b!6254900 res!2581409) b!6254901))

(declare-fun b_lambda!238017 () Bool)

(assert (=> (not b_lambda!238017) (not b!6254900)))

(declare-fun m!7077990 () Bool)

(assert (=> b!6254900 m!7077990))

(declare-fun m!7077992 () Bool)

(assert (=> b!6254901 m!7077992))

(assert (=> b!6253446 d!1962372))

(assert (=> bm!527567 d!1962316))

(declare-fun e!3805177 () Bool)

(declare-fun b!6254902 () Bool)

(assert (=> b!6254902 (= e!3805177 (nullable!6170 (regOne!32866 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))))))))

(declare-fun b!6254903 () Bool)

(declare-fun e!3805174 () (InoxSet Context!11122))

(declare-fun call!527852 () (InoxSet Context!11122))

(assert (=> b!6254903 (= e!3805174 call!527852)))

(declare-fun b!6254904 () Bool)

(declare-fun e!3805175 () (InoxSet Context!11122))

(declare-fun call!527855 () (InoxSet Context!11122))

(declare-fun call!527856 () (InoxSet Context!11122))

(assert (=> b!6254904 (= e!3805175 ((_ map or) call!527855 call!527856))))

(declare-fun d!1962374 () Bool)

(declare-fun c!1132315 () Bool)

(assert (=> d!1962374 (= c!1132315 (and ((_ is ElementMatch!16177) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (= (c!1131644 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (h!71156 s!2326))))))

(declare-fun e!3805178 () (InoxSet Context!11122))

(assert (=> d!1962374 (= (derivationStepZipperDown!1425 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))) (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556)) (h!71156 s!2326)) e!3805178)))

(declare-fun b!6254905 () Bool)

(assert (=> b!6254905 (= e!3805178 e!3805175)))

(declare-fun c!1132314 () Bool)

(assert (=> b!6254905 (= c!1132314 ((_ is Union!16177) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))))))

(declare-fun call!527853 () List!64830)

(declare-fun c!1132316 () Bool)

(declare-fun c!1132317 () Bool)

(declare-fun bm!527847 () Bool)

(assert (=> bm!527847 (= call!527855 (derivationStepZipperDown!1425 (ite c!1132314 (regOne!32867 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (ite c!1132316 (regTwo!32866 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (ite c!1132317 (regOne!32866 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (reg!16506 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))))))) (ite (or c!1132314 c!1132316) (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556)) (Context!11123 call!527853)) (h!71156 s!2326)))))

(declare-fun bm!527848 () Bool)

(declare-fun call!527857 () List!64830)

(assert (=> bm!527848 (= call!527857 ($colon$colon!2044 (exprs!6061 (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556))) (ite (or c!1132316 c!1132317) (regTwo!32866 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))))))))

(declare-fun b!6254906 () Bool)

(assert (=> b!6254906 (= c!1132316 e!3805177)))

(declare-fun res!2581410 () Bool)

(assert (=> b!6254906 (=> (not res!2581410) (not e!3805177))))

(assert (=> b!6254906 (= res!2581410 ((_ is Concat!25022) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))))))

(declare-fun e!3805176 () (InoxSet Context!11122))

(assert (=> b!6254906 (= e!3805175 e!3805176)))

(declare-fun b!6254907 () Bool)

(assert (=> b!6254907 (= e!3805176 e!3805174)))

(assert (=> b!6254907 (= c!1132317 ((_ is Concat!25022) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))))))

(declare-fun bm!527849 () Bool)

(assert (=> bm!527849 (= call!527853 call!527857)))

(declare-fun bm!527850 () Bool)

(declare-fun call!527854 () (InoxSet Context!11122))

(assert (=> bm!527850 (= call!527852 call!527854)))

(declare-fun b!6254908 () Bool)

(assert (=> b!6254908 (= e!3805176 ((_ map or) call!527856 call!527854))))

(declare-fun b!6254909 () Bool)

(assert (=> b!6254909 (= e!3805178 (store ((as const (Array Context!11122 Bool)) false) (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556)) true))))

(declare-fun bm!527851 () Bool)

(assert (=> bm!527851 (= call!527856 (derivationStepZipperDown!1425 (ite c!1132314 (regTwo!32867 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))) (regOne!32866 (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292)))))))) (ite c!1132314 (ite (or c!1131833 c!1131835) lt!2348859 (Context!11123 call!527556)) (Context!11123 call!527857)) (h!71156 s!2326)))))

(declare-fun b!6254910 () Bool)

(declare-fun e!3805179 () (InoxSet Context!11122))

(assert (=> b!6254910 (= e!3805179 ((as const (Array Context!11122 Bool)) false))))

(declare-fun c!1132313 () Bool)

(declare-fun b!6254911 () Bool)

(assert (=> b!6254911 (= c!1132313 ((_ is Star!16177) (ite c!1131833 (regOne!32867 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131835 (regTwo!32866 (regOne!32866 (regOne!32866 r!7292))) (ite c!1131836 (regOne!32866 (regOne!32866 (regOne!32866 r!7292))) (reg!16506 (regOne!32866 (regOne!32866 r!7292))))))))))

(assert (=> b!6254911 (= e!3805174 e!3805179)))

(declare-fun bm!527852 () Bool)

(assert (=> bm!527852 (= call!527854 call!527855)))

(declare-fun b!6254912 () Bool)

(assert (=> b!6254912 (= e!3805179 call!527852)))

(assert (= (and d!1962374 c!1132315) b!6254909))

(assert (= (and d!1962374 (not c!1132315)) b!6254905))

(assert (= (and b!6254905 c!1132314) b!6254904))

(assert (= (and b!6254905 (not c!1132314)) b!6254906))

(assert (= (and b!6254906 res!2581410) b!6254902))

(assert (= (and b!6254906 c!1132316) b!6254908))

(assert (= (and b!6254906 (not c!1132316)) b!6254907))

(assert (= (and b!6254907 c!1132317) b!6254903))

(assert (= (and b!6254907 (not c!1132317)) b!6254911))

(assert (= (and b!6254911 c!1132313) b!6254912))

(assert (= (and b!6254911 (not c!1132313)) b!6254910))

(assert (= (or b!6254903 b!6254912) bm!527849))

(assert (= (or b!6254903 b!6254912) bm!527850))

(assert (= (or b!6254908 bm!527849) bm!527848))

(assert (= (or b!6254908 bm!527850) bm!527852))

(assert (= (or b!6254904 b!6254908) bm!527851))

(assert (= (or b!6254904 bm!527852) bm!527847))

(declare-fun m!7077994 () Bool)

(assert (=> bm!527848 m!7077994))

(declare-fun m!7077996 () Bool)

(assert (=> bm!527851 m!7077996))

(declare-fun m!7077998 () Bool)

(assert (=> b!6254909 m!7077998))

(declare-fun m!7078000 () Bool)

(assert (=> bm!527847 m!7078000))

(declare-fun m!7078002 () Bool)

(assert (=> b!6254902 m!7078002))

(assert (=> bm!527550 d!1962374))

(declare-fun d!1962376 () Bool)

(declare-fun res!2581411 () Bool)

(declare-fun e!3805180 () Bool)

(assert (=> d!1962376 (=> res!2581411 e!3805180)))

(assert (=> d!1962376 (= res!2581411 ((_ is Nil!64707) lt!2348958))))

(assert (=> d!1962376 (= (noDuplicate!2013 lt!2348958) e!3805180)))

(declare-fun b!6254913 () Bool)

(declare-fun e!3805181 () Bool)

(assert (=> b!6254913 (= e!3805180 e!3805181)))

(declare-fun res!2581412 () Bool)

(assert (=> b!6254913 (=> (not res!2581412) (not e!3805181))))

(assert (=> b!6254913 (= res!2581412 (not (contains!20113 (t!378379 lt!2348958) (h!71155 lt!2348958))))))

(declare-fun b!6254914 () Bool)

(assert (=> b!6254914 (= e!3805181 (noDuplicate!2013 (t!378379 lt!2348958)))))

(assert (= (and d!1962376 (not res!2581411)) b!6254913))

(assert (= (and b!6254913 res!2581412) b!6254914))

(declare-fun m!7078004 () Bool)

(assert (=> b!6254913 m!7078004))

(declare-fun m!7078006 () Bool)

(assert (=> b!6254914 m!7078006))

(assert (=> d!1961538 d!1962376))

(declare-fun d!1962378 () Bool)

(declare-fun e!3805184 () Bool)

(assert (=> d!1962378 e!3805184))

(declare-fun res!2581414 () Bool)

(assert (=> d!1962378 (=> (not res!2581414) (not e!3805184))))

(declare-fun res!2581413 () List!64831)

(assert (=> d!1962378 (= res!2581414 (noDuplicate!2013 res!2581413))))

(declare-fun e!3805182 () Bool)

(assert (=> d!1962378 e!3805182))

(assert (=> d!1962378 (= (choose!46404 z!1189) res!2581413)))

(declare-fun b!6254916 () Bool)

(declare-fun e!3805183 () Bool)

(declare-fun tp!1745146 () Bool)

(assert (=> b!6254916 (= e!3805183 tp!1745146)))

(declare-fun b!6254915 () Bool)

(declare-fun tp!1745145 () Bool)

(assert (=> b!6254915 (= e!3805182 (and (inv!83689 (h!71155 res!2581413)) e!3805183 tp!1745145))))

(declare-fun b!6254917 () Bool)

(assert (=> b!6254917 (= e!3805184 (= (content!12142 res!2581413) z!1189))))

(assert (= b!6254915 b!6254916))

(assert (= (and d!1962378 ((_ is Cons!64707) res!2581413)) b!6254915))

(assert (= (and d!1962378 res!2581414) b!6254917))

(declare-fun m!7078008 () Bool)

(assert (=> d!1962378 m!7078008))

(declare-fun m!7078010 () Bool)

(assert (=> b!6254915 m!7078010))

(declare-fun m!7078012 () Bool)

(assert (=> b!6254917 m!7078012))

(assert (=> d!1961538 d!1962378))

(declare-fun b!6254918 () Bool)

(declare-fun e!3805189 () Bool)

(declare-fun e!3805186 () Bool)

(assert (=> b!6254918 (= e!3805189 e!3805186)))

(declare-fun res!2581421 () Bool)

(assert (=> b!6254918 (=> (not res!2581421) (not e!3805186))))

(declare-fun lt!2349152 () Bool)

(assert (=> b!6254918 (= res!2581421 (not lt!2349152))))

(declare-fun b!6254919 () Bool)

(declare-fun e!3805191 () Bool)

(assert (=> b!6254919 (= e!3805186 e!3805191)))

(declare-fun res!2581419 () Bool)

(assert (=> b!6254919 (=> res!2581419 e!3805191)))

(declare-fun call!527858 () Bool)

(assert (=> b!6254919 (= res!2581419 call!527858)))

(declare-fun b!6254920 () Bool)

(assert (=> b!6254920 (= e!3805191 (not (= (head!12858 (_1!36459 (get!22357 lt!2349021))) (c!1131644 (regOne!32866 r!7292)))))))

(declare-fun b!6254921 () Bool)

(declare-fun res!2581418 () Bool)

(declare-fun e!3805187 () Bool)

(assert (=> b!6254921 (=> (not res!2581418) (not e!3805187))))

(assert (=> b!6254921 (= res!2581418 (isEmpty!36734 (tail!11943 (_1!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254922 () Bool)

(declare-fun e!3805188 () Bool)

(assert (=> b!6254922 (= e!3805188 (matchR!8360 (derivativeStep!4888 (regOne!32866 r!7292) (head!12858 (_1!36459 (get!22357 lt!2349021)))) (tail!11943 (_1!36459 (get!22357 lt!2349021)))))))

(declare-fun b!6254923 () Bool)

(declare-fun res!2581422 () Bool)

(assert (=> b!6254923 (=> res!2581422 e!3805191)))

(assert (=> b!6254923 (= res!2581422 (not (isEmpty!36734 (tail!11943 (_1!36459 (get!22357 lt!2349021))))))))

(declare-fun b!6254924 () Bool)

(declare-fun e!3805190 () Bool)

(assert (=> b!6254924 (= e!3805190 (= lt!2349152 call!527858))))

(declare-fun b!6254926 () Bool)

(declare-fun e!3805185 () Bool)

(assert (=> b!6254926 (= e!3805185 (not lt!2349152))))

(declare-fun b!6254927 () Bool)

(declare-fun res!2581417 () Bool)

(assert (=> b!6254927 (=> res!2581417 e!3805189)))

(assert (=> b!6254927 (= res!2581417 e!3805187)))

(declare-fun res!2581415 () Bool)

(assert (=> b!6254927 (=> (not res!2581415) (not e!3805187))))

(assert (=> b!6254927 (= res!2581415 lt!2349152)))

(declare-fun b!6254928 () Bool)

(assert (=> b!6254928 (= e!3805190 e!3805185)))

(declare-fun c!1132319 () Bool)

(assert (=> b!6254928 (= c!1132319 ((_ is EmptyLang!16177) (regOne!32866 r!7292)))))

(declare-fun b!6254929 () Bool)

(declare-fun res!2581416 () Bool)

(assert (=> b!6254929 (=> res!2581416 e!3805189)))

(assert (=> b!6254929 (= res!2581416 (not ((_ is ElementMatch!16177) (regOne!32866 r!7292))))))

(assert (=> b!6254929 (= e!3805185 e!3805189)))

(declare-fun b!6254930 () Bool)

(assert (=> b!6254930 (= e!3805187 (= (head!12858 (_1!36459 (get!22357 lt!2349021))) (c!1131644 (regOne!32866 r!7292))))))

(declare-fun b!6254931 () Bool)

(declare-fun res!2581420 () Bool)

(assert (=> b!6254931 (=> (not res!2581420) (not e!3805187))))

(assert (=> b!6254931 (= res!2581420 (not call!527858))))

(declare-fun bm!527853 () Bool)

(assert (=> bm!527853 (= call!527858 (isEmpty!36734 (_1!36459 (get!22357 lt!2349021))))))

(declare-fun b!6254925 () Bool)

(assert (=> b!6254925 (= e!3805188 (nullable!6170 (regOne!32866 r!7292)))))

(declare-fun d!1962380 () Bool)

(assert (=> d!1962380 e!3805190))

(declare-fun c!1132318 () Bool)

(assert (=> d!1962380 (= c!1132318 ((_ is EmptyExpr!16177) (regOne!32866 r!7292)))))

(assert (=> d!1962380 (= lt!2349152 e!3805188)))

(declare-fun c!1132320 () Bool)

(assert (=> d!1962380 (= c!1132320 (isEmpty!36734 (_1!36459 (get!22357 lt!2349021))))))

(assert (=> d!1962380 (validRegex!7913 (regOne!32866 r!7292))))

(assert (=> d!1962380 (= (matchR!8360 (regOne!32866 r!7292) (_1!36459 (get!22357 lt!2349021))) lt!2349152)))

(assert (= (and d!1962380 c!1132320) b!6254925))

(assert (= (and d!1962380 (not c!1132320)) b!6254922))

(assert (= (and d!1962380 c!1132318) b!6254924))

(assert (= (and d!1962380 (not c!1132318)) b!6254928))

(assert (= (and b!6254928 c!1132319) b!6254926))

(assert (= (and b!6254928 (not c!1132319)) b!6254929))

(assert (= (and b!6254929 (not res!2581416)) b!6254927))

(assert (= (and b!6254927 res!2581415) b!6254931))

(assert (= (and b!6254931 res!2581420) b!6254921))

(assert (= (and b!6254921 res!2581418) b!6254930))

(assert (= (and b!6254927 (not res!2581417)) b!6254918))

(assert (= (and b!6254918 res!2581421) b!6254919))

(assert (= (and b!6254919 (not res!2581419)) b!6254923))

(assert (= (and b!6254923 (not res!2581422)) b!6254920))

(assert (= (or b!6254924 b!6254919 b!6254931) bm!527853))

(declare-fun m!7078014 () Bool)

(assert (=> d!1962380 m!7078014))

(assert (=> d!1962380 m!7076438))

(declare-fun m!7078016 () Bool)

(assert (=> b!6254920 m!7078016))

(declare-fun m!7078018 () Bool)

(assert (=> b!6254921 m!7078018))

(assert (=> b!6254921 m!7078018))

(declare-fun m!7078020 () Bool)

(assert (=> b!6254921 m!7078020))

(assert (=> b!6254923 m!7078018))

(assert (=> b!6254923 m!7078018))

(assert (=> b!6254923 m!7078020))

(assert (=> b!6254922 m!7078016))

(assert (=> b!6254922 m!7078016))

(declare-fun m!7078022 () Bool)

(assert (=> b!6254922 m!7078022))

(assert (=> b!6254922 m!7078018))

(assert (=> b!6254922 m!7078022))

(assert (=> b!6254922 m!7078018))

(declare-fun m!7078024 () Bool)

(assert (=> b!6254922 m!7078024))

(assert (=> bm!527853 m!7078014))

(assert (=> b!6254930 m!7078016))

(assert (=> b!6254925 m!7077540))

(assert (=> b!6253481 d!1962380))

(assert (=> b!6253481 d!1962134))

(declare-fun b!6254933 () Bool)

(declare-fun e!3805192 () Bool)

(declare-fun tp!1745147 () Bool)

(declare-fun tp!1745151 () Bool)

(assert (=> b!6254933 (= e!3805192 (and tp!1745147 tp!1745151))))

(declare-fun b!6254934 () Bool)

(declare-fun tp!1745150 () Bool)

(assert (=> b!6254934 (= e!3805192 tp!1745150)))

(assert (=> b!6253529 (= tp!1744927 e!3805192)))

(declare-fun b!6254932 () Bool)

(assert (=> b!6254932 (= e!3805192 tp_is_empty!41607)))

(declare-fun b!6254935 () Bool)

(declare-fun tp!1745149 () Bool)

(declare-fun tp!1745148 () Bool)

(assert (=> b!6254935 (= e!3805192 (and tp!1745149 tp!1745148))))

(assert (= (and b!6253529 ((_ is ElementMatch!16177) (regOne!32866 (regOne!32866 r!7292)))) b!6254932))

(assert (= (and b!6253529 ((_ is Concat!25022) (regOne!32866 (regOne!32866 r!7292)))) b!6254933))

(assert (= (and b!6253529 ((_ is Star!16177) (regOne!32866 (regOne!32866 r!7292)))) b!6254934))

(assert (= (and b!6253529 ((_ is Union!16177) (regOne!32866 (regOne!32866 r!7292)))) b!6254935))

(declare-fun b!6254937 () Bool)

(declare-fun e!3805193 () Bool)

(declare-fun tp!1745152 () Bool)

(declare-fun tp!1745156 () Bool)

(assert (=> b!6254937 (= e!3805193 (and tp!1745152 tp!1745156))))

(declare-fun b!6254938 () Bool)

(declare-fun tp!1745155 () Bool)

(assert (=> b!6254938 (= e!3805193 tp!1745155)))

(assert (=> b!6253529 (= tp!1744931 e!3805193)))

(declare-fun b!6254936 () Bool)

(assert (=> b!6254936 (= e!3805193 tp_is_empty!41607)))

(declare-fun b!6254939 () Bool)

(declare-fun tp!1745154 () Bool)

(declare-fun tp!1745153 () Bool)

(assert (=> b!6254939 (= e!3805193 (and tp!1745154 tp!1745153))))

(assert (= (and b!6253529 ((_ is ElementMatch!16177) (regTwo!32866 (regOne!32866 r!7292)))) b!6254936))

(assert (= (and b!6253529 ((_ is Concat!25022) (regTwo!32866 (regOne!32866 r!7292)))) b!6254937))

(assert (= (and b!6253529 ((_ is Star!16177) (regTwo!32866 (regOne!32866 r!7292)))) b!6254938))

(assert (= (and b!6253529 ((_ is Union!16177) (regTwo!32866 (regOne!32866 r!7292)))) b!6254939))

(declare-fun b!6254941 () Bool)

(declare-fun e!3805194 () Bool)

(declare-fun tp!1745157 () Bool)

(declare-fun tp!1745161 () Bool)

(assert (=> b!6254941 (= e!3805194 (and tp!1745157 tp!1745161))))

(declare-fun b!6254942 () Bool)

(declare-fun tp!1745160 () Bool)

(assert (=> b!6254942 (= e!3805194 tp!1745160)))

(assert (=> b!6253530 (= tp!1744930 e!3805194)))

(declare-fun b!6254940 () Bool)

(assert (=> b!6254940 (= e!3805194 tp_is_empty!41607)))

(declare-fun b!6254943 () Bool)

(declare-fun tp!1745159 () Bool)

(declare-fun tp!1745158 () Bool)

(assert (=> b!6254943 (= e!3805194 (and tp!1745159 tp!1745158))))

(assert (= (and b!6253530 ((_ is ElementMatch!16177) (reg!16506 (regOne!32866 r!7292)))) b!6254940))

(assert (= (and b!6253530 ((_ is Concat!25022) (reg!16506 (regOne!32866 r!7292)))) b!6254941))

(assert (= (and b!6253530 ((_ is Star!16177) (reg!16506 (regOne!32866 r!7292)))) b!6254942))

(assert (= (and b!6253530 ((_ is Union!16177) (reg!16506 (regOne!32866 r!7292)))) b!6254943))

(declare-fun b!6254944 () Bool)

(declare-fun e!3805195 () Bool)

(declare-fun tp!1745162 () Bool)

(assert (=> b!6254944 (= e!3805195 (and tp_is_empty!41607 tp!1745162))))

(assert (=> b!6253561 (= tp!1744962 e!3805195)))

(assert (= (and b!6253561 ((_ is Cons!64708) (t!378380 (t!378380 s!2326)))) b!6254944))

(declare-fun b!6254946 () Bool)

(declare-fun e!3805196 () Bool)

(declare-fun tp!1745163 () Bool)

(declare-fun tp!1745167 () Bool)

(assert (=> b!6254946 (= e!3805196 (and tp!1745163 tp!1745167))))

(declare-fun b!6254947 () Bool)

(declare-fun tp!1745166 () Bool)

(assert (=> b!6254947 (= e!3805196 tp!1745166)))

(assert (=> b!6253531 (= tp!1744929 e!3805196)))

(declare-fun b!6254945 () Bool)

(assert (=> b!6254945 (= e!3805196 tp_is_empty!41607)))

(declare-fun b!6254948 () Bool)

(declare-fun tp!1745165 () Bool)

(declare-fun tp!1745164 () Bool)

(assert (=> b!6254948 (= e!3805196 (and tp!1745165 tp!1745164))))

(assert (= (and b!6253531 ((_ is ElementMatch!16177) (regOne!32867 (regOne!32866 r!7292)))) b!6254945))

(assert (= (and b!6253531 ((_ is Concat!25022) (regOne!32867 (regOne!32866 r!7292)))) b!6254946))

(assert (= (and b!6253531 ((_ is Star!16177) (regOne!32867 (regOne!32866 r!7292)))) b!6254947))

(assert (= (and b!6253531 ((_ is Union!16177) (regOne!32867 (regOne!32866 r!7292)))) b!6254948))

(declare-fun b!6254950 () Bool)

(declare-fun e!3805197 () Bool)

(declare-fun tp!1745168 () Bool)

(declare-fun tp!1745172 () Bool)

(assert (=> b!6254950 (= e!3805197 (and tp!1745168 tp!1745172))))

(declare-fun b!6254951 () Bool)

(declare-fun tp!1745171 () Bool)

(assert (=> b!6254951 (= e!3805197 tp!1745171)))

(assert (=> b!6253531 (= tp!1744928 e!3805197)))

(declare-fun b!6254949 () Bool)

(assert (=> b!6254949 (= e!3805197 tp_is_empty!41607)))

(declare-fun b!6254952 () Bool)

(declare-fun tp!1745170 () Bool)

(declare-fun tp!1745169 () Bool)

(assert (=> b!6254952 (= e!3805197 (and tp!1745170 tp!1745169))))

(assert (= (and b!6253531 ((_ is ElementMatch!16177) (regTwo!32867 (regOne!32866 r!7292)))) b!6254949))

(assert (= (and b!6253531 ((_ is Concat!25022) (regTwo!32867 (regOne!32866 r!7292)))) b!6254950))

(assert (= (and b!6253531 ((_ is Star!16177) (regTwo!32867 (regOne!32866 r!7292)))) b!6254951))

(assert (= (and b!6253531 ((_ is Union!16177) (regTwo!32867 (regOne!32866 r!7292)))) b!6254952))

(declare-fun b!6254954 () Bool)

(declare-fun e!3805198 () Bool)

(declare-fun tp!1745173 () Bool)

(declare-fun tp!1745177 () Bool)

(assert (=> b!6254954 (= e!3805198 (and tp!1745173 tp!1745177))))

(declare-fun b!6254955 () Bool)

(declare-fun tp!1745176 () Bool)

(assert (=> b!6254955 (= e!3805198 tp!1745176)))

(assert (=> b!6253536 (= tp!1744937 e!3805198)))

(declare-fun b!6254953 () Bool)

(assert (=> b!6254953 (= e!3805198 tp_is_empty!41607)))

(declare-fun b!6254956 () Bool)

(declare-fun tp!1745175 () Bool)

(declare-fun tp!1745174 () Bool)

(assert (=> b!6254956 (= e!3805198 (and tp!1745175 tp!1745174))))

(assert (= (and b!6253536 ((_ is ElementMatch!16177) (h!71154 (exprs!6061 setElem!42506)))) b!6254953))

(assert (= (and b!6253536 ((_ is Concat!25022) (h!71154 (exprs!6061 setElem!42506)))) b!6254954))

(assert (= (and b!6253536 ((_ is Star!16177) (h!71154 (exprs!6061 setElem!42506)))) b!6254955))

(assert (= (and b!6253536 ((_ is Union!16177) (h!71154 (exprs!6061 setElem!42506)))) b!6254956))

(declare-fun b!6254957 () Bool)

(declare-fun e!3805199 () Bool)

(declare-fun tp!1745178 () Bool)

(declare-fun tp!1745179 () Bool)

(assert (=> b!6254957 (= e!3805199 (and tp!1745178 tp!1745179))))

(assert (=> b!6253536 (= tp!1744938 e!3805199)))

(assert (= (and b!6253536 ((_ is Cons!64706) (t!378378 (exprs!6061 setElem!42506)))) b!6254957))

(declare-fun b!6254959 () Bool)

(declare-fun e!3805200 () Bool)

(declare-fun tp!1745180 () Bool)

(declare-fun tp!1745184 () Bool)

(assert (=> b!6254959 (= e!3805200 (and tp!1745180 tp!1745184))))

(declare-fun b!6254960 () Bool)

(declare-fun tp!1745183 () Bool)

(assert (=> b!6254960 (= e!3805200 tp!1745183)))

(assert (=> b!6253550 (= tp!1744950 e!3805200)))

(declare-fun b!6254958 () Bool)

(assert (=> b!6254958 (= e!3805200 tp_is_empty!41607)))

(declare-fun b!6254961 () Bool)

(declare-fun tp!1745182 () Bool)

(declare-fun tp!1745181 () Bool)

(assert (=> b!6254961 (= e!3805200 (and tp!1745182 tp!1745181))))

(assert (= (and b!6253550 ((_ is ElementMatch!16177) (regOne!32866 (regTwo!32867 r!7292)))) b!6254958))

(assert (= (and b!6253550 ((_ is Concat!25022) (regOne!32866 (regTwo!32867 r!7292)))) b!6254959))

(assert (= (and b!6253550 ((_ is Star!16177) (regOne!32866 (regTwo!32867 r!7292)))) b!6254960))

(assert (= (and b!6253550 ((_ is Union!16177) (regOne!32866 (regTwo!32867 r!7292)))) b!6254961))

(declare-fun b!6254963 () Bool)

(declare-fun e!3805201 () Bool)

(declare-fun tp!1745185 () Bool)

(declare-fun tp!1745189 () Bool)

(assert (=> b!6254963 (= e!3805201 (and tp!1745185 tp!1745189))))

(declare-fun b!6254964 () Bool)

(declare-fun tp!1745188 () Bool)

(assert (=> b!6254964 (= e!3805201 tp!1745188)))

(assert (=> b!6253550 (= tp!1744954 e!3805201)))

(declare-fun b!6254962 () Bool)

(assert (=> b!6254962 (= e!3805201 tp_is_empty!41607)))

(declare-fun b!6254965 () Bool)

(declare-fun tp!1745187 () Bool)

(declare-fun tp!1745186 () Bool)

(assert (=> b!6254965 (= e!3805201 (and tp!1745187 tp!1745186))))

(assert (= (and b!6253550 ((_ is ElementMatch!16177) (regTwo!32866 (regTwo!32867 r!7292)))) b!6254962))

(assert (= (and b!6253550 ((_ is Concat!25022) (regTwo!32866 (regTwo!32867 r!7292)))) b!6254963))

(assert (= (and b!6253550 ((_ is Star!16177) (regTwo!32866 (regTwo!32867 r!7292)))) b!6254964))

(assert (= (and b!6253550 ((_ is Union!16177) (regTwo!32866 (regTwo!32867 r!7292)))) b!6254965))

(declare-fun b!6254967 () Bool)

(declare-fun e!3805203 () Bool)

(declare-fun tp!1745190 () Bool)

(assert (=> b!6254967 (= e!3805203 tp!1745190)))

(declare-fun e!3805202 () Bool)

(declare-fun b!6254966 () Bool)

(declare-fun tp!1745191 () Bool)

(assert (=> b!6254966 (= e!3805202 (and (inv!83689 (h!71155 (t!378379 (t!378379 zl!343)))) e!3805203 tp!1745191))))

(assert (=> b!6253543 (= tp!1744944 e!3805202)))

(assert (= b!6254966 b!6254967))

(assert (= (and b!6253543 ((_ is Cons!64707) (t!378379 (t!378379 zl!343)))) b!6254966))

(declare-fun m!7078026 () Bool)

(assert (=> b!6254966 m!7078026))

(declare-fun b!6254969 () Bool)

(declare-fun e!3805204 () Bool)

(declare-fun tp!1745192 () Bool)

(declare-fun tp!1745196 () Bool)

(assert (=> b!6254969 (= e!3805204 (and tp!1745192 tp!1745196))))

(declare-fun b!6254970 () Bool)

(declare-fun tp!1745195 () Bool)

(assert (=> b!6254970 (= e!3805204 tp!1745195)))

(assert (=> b!6253551 (= tp!1744953 e!3805204)))

(declare-fun b!6254968 () Bool)

(assert (=> b!6254968 (= e!3805204 tp_is_empty!41607)))

(declare-fun b!6254971 () Bool)

(declare-fun tp!1745194 () Bool)

(declare-fun tp!1745193 () Bool)

(assert (=> b!6254971 (= e!3805204 (and tp!1745194 tp!1745193))))

(assert (= (and b!6253551 ((_ is ElementMatch!16177) (reg!16506 (regTwo!32867 r!7292)))) b!6254968))

(assert (= (and b!6253551 ((_ is Concat!25022) (reg!16506 (regTwo!32867 r!7292)))) b!6254969))

(assert (= (and b!6253551 ((_ is Star!16177) (reg!16506 (regTwo!32867 r!7292)))) b!6254970))

(assert (= (and b!6253551 ((_ is Union!16177) (reg!16506 (regTwo!32867 r!7292)))) b!6254971))

(declare-fun b!6254972 () Bool)

(declare-fun e!3805205 () Bool)

(declare-fun tp!1745197 () Bool)

(declare-fun tp!1745198 () Bool)

(assert (=> b!6254972 (= e!3805205 (and tp!1745197 tp!1745198))))

(assert (=> b!6253544 (= tp!1744943 e!3805205)))

(assert (= (and b!6253544 ((_ is Cons!64706) (exprs!6061 (h!71155 (t!378379 zl!343))))) b!6254972))

(declare-fun b!6254974 () Bool)

(declare-fun e!3805206 () Bool)

(declare-fun tp!1745199 () Bool)

(declare-fun tp!1745203 () Bool)

(assert (=> b!6254974 (= e!3805206 (and tp!1745199 tp!1745203))))

(declare-fun b!6254975 () Bool)

(declare-fun tp!1745202 () Bool)

(assert (=> b!6254975 (= e!3805206 tp!1745202)))

(assert (=> b!6253552 (= tp!1744952 e!3805206)))

(declare-fun b!6254973 () Bool)

(assert (=> b!6254973 (= e!3805206 tp_is_empty!41607)))

(declare-fun b!6254976 () Bool)

(declare-fun tp!1745201 () Bool)

(declare-fun tp!1745200 () Bool)

(assert (=> b!6254976 (= e!3805206 (and tp!1745201 tp!1745200))))

(assert (= (and b!6253552 ((_ is ElementMatch!16177) (regOne!32867 (regTwo!32867 r!7292)))) b!6254973))

(assert (= (and b!6253552 ((_ is Concat!25022) (regOne!32867 (regTwo!32867 r!7292)))) b!6254974))

(assert (= (and b!6253552 ((_ is Star!16177) (regOne!32867 (regTwo!32867 r!7292)))) b!6254975))

(assert (= (and b!6253552 ((_ is Union!16177) (regOne!32867 (regTwo!32867 r!7292)))) b!6254976))

(declare-fun b!6254978 () Bool)

(declare-fun e!3805207 () Bool)

(declare-fun tp!1745204 () Bool)

(declare-fun tp!1745208 () Bool)

(assert (=> b!6254978 (= e!3805207 (and tp!1745204 tp!1745208))))

(declare-fun b!6254979 () Bool)

(declare-fun tp!1745207 () Bool)

(assert (=> b!6254979 (= e!3805207 tp!1745207)))

(assert (=> b!6253552 (= tp!1744951 e!3805207)))

(declare-fun b!6254977 () Bool)

(assert (=> b!6254977 (= e!3805207 tp_is_empty!41607)))

(declare-fun b!6254980 () Bool)

(declare-fun tp!1745206 () Bool)

(declare-fun tp!1745205 () Bool)

(assert (=> b!6254980 (= e!3805207 (and tp!1745206 tp!1745205))))

(assert (= (and b!6253552 ((_ is ElementMatch!16177) (regTwo!32867 (regTwo!32867 r!7292)))) b!6254977))

(assert (= (and b!6253552 ((_ is Concat!25022) (regTwo!32867 (regTwo!32867 r!7292)))) b!6254978))

(assert (= (and b!6253552 ((_ is Star!16177) (regTwo!32867 (regTwo!32867 r!7292)))) b!6254979))

(assert (= (and b!6253552 ((_ is Union!16177) (regTwo!32867 (regTwo!32867 r!7292)))) b!6254980))

(declare-fun condSetEmpty!42524 () Bool)

(assert (=> setNonEmpty!42512 (= condSetEmpty!42524 (= setRest!42512 ((as const (Array Context!11122 Bool)) false)))))

(declare-fun setRes!42524 () Bool)

(assert (=> setNonEmpty!42512 (= tp!1744910 setRes!42524)))

(declare-fun setIsEmpty!42524 () Bool)

(assert (=> setIsEmpty!42524 setRes!42524))

(declare-fun setElem!42524 () Context!11122)

(declare-fun e!3805208 () Bool)

(declare-fun tp!1745210 () Bool)

(declare-fun setNonEmpty!42524 () Bool)

(assert (=> setNonEmpty!42524 (= setRes!42524 (and tp!1745210 (inv!83689 setElem!42524) e!3805208))))

(declare-fun setRest!42524 () (InoxSet Context!11122))

(assert (=> setNonEmpty!42524 (= setRest!42512 ((_ map or) (store ((as const (Array Context!11122 Bool)) false) setElem!42524 true) setRest!42524))))

(declare-fun b!6254981 () Bool)

(declare-fun tp!1745209 () Bool)

(assert (=> b!6254981 (= e!3805208 tp!1745209)))

(assert (= (and setNonEmpty!42512 condSetEmpty!42524) setIsEmpty!42524))

(assert (= (and setNonEmpty!42512 (not condSetEmpty!42524)) setNonEmpty!42524))

(assert (= setNonEmpty!42524 b!6254981))

(declare-fun m!7078028 () Bool)

(assert (=> setNonEmpty!42524 m!7078028))

(declare-fun b!6254983 () Bool)

(declare-fun e!3805209 () Bool)

(declare-fun tp!1745211 () Bool)

(declare-fun tp!1745215 () Bool)

(assert (=> b!6254983 (= e!3805209 (and tp!1745211 tp!1745215))))

(declare-fun b!6254984 () Bool)

(declare-fun tp!1745214 () Bool)

(assert (=> b!6254984 (= e!3805209 tp!1745214)))

(assert (=> b!6253548 (= tp!1744947 e!3805209)))

(declare-fun b!6254982 () Bool)

(assert (=> b!6254982 (= e!3805209 tp_is_empty!41607)))

(declare-fun b!6254985 () Bool)

(declare-fun tp!1745213 () Bool)

(declare-fun tp!1745212 () Bool)

(assert (=> b!6254985 (= e!3805209 (and tp!1745213 tp!1745212))))

(assert (= (and b!6253548 ((_ is ElementMatch!16177) (regOne!32867 (regOne!32867 r!7292)))) b!6254982))

(assert (= (and b!6253548 ((_ is Concat!25022) (regOne!32867 (regOne!32867 r!7292)))) b!6254983))

(assert (= (and b!6253548 ((_ is Star!16177) (regOne!32867 (regOne!32867 r!7292)))) b!6254984))

(assert (= (and b!6253548 ((_ is Union!16177) (regOne!32867 (regOne!32867 r!7292)))) b!6254985))

(declare-fun b!6254987 () Bool)

(declare-fun e!3805210 () Bool)

(declare-fun tp!1745216 () Bool)

(declare-fun tp!1745220 () Bool)

(assert (=> b!6254987 (= e!3805210 (and tp!1745216 tp!1745220))))

(declare-fun b!6254988 () Bool)

(declare-fun tp!1745219 () Bool)

(assert (=> b!6254988 (= e!3805210 tp!1745219)))

(assert (=> b!6253548 (= tp!1744946 e!3805210)))

(declare-fun b!6254986 () Bool)

(assert (=> b!6254986 (= e!3805210 tp_is_empty!41607)))

(declare-fun b!6254989 () Bool)

(declare-fun tp!1745218 () Bool)

(declare-fun tp!1745217 () Bool)

(assert (=> b!6254989 (= e!3805210 (and tp!1745218 tp!1745217))))

(assert (= (and b!6253548 ((_ is ElementMatch!16177) (regTwo!32867 (regOne!32867 r!7292)))) b!6254986))

(assert (= (and b!6253548 ((_ is Concat!25022) (regTwo!32867 (regOne!32867 r!7292)))) b!6254987))

(assert (= (and b!6253548 ((_ is Star!16177) (regTwo!32867 (regOne!32867 r!7292)))) b!6254988))

(assert (= (and b!6253548 ((_ is Union!16177) (regTwo!32867 (regOne!32867 r!7292)))) b!6254989))

(declare-fun b!6254991 () Bool)

(declare-fun e!3805211 () Bool)

(declare-fun tp!1745221 () Bool)

(declare-fun tp!1745225 () Bool)

(assert (=> b!6254991 (= e!3805211 (and tp!1745221 tp!1745225))))

(declare-fun b!6254992 () Bool)

(declare-fun tp!1745224 () Bool)

(assert (=> b!6254992 (= e!3805211 tp!1745224)))

(assert (=> b!6253533 (= tp!1744932 e!3805211)))

(declare-fun b!6254990 () Bool)

(assert (=> b!6254990 (= e!3805211 tp_is_empty!41607)))

(declare-fun b!6254993 () Bool)

(declare-fun tp!1745223 () Bool)

(declare-fun tp!1745222 () Bool)

(assert (=> b!6254993 (= e!3805211 (and tp!1745223 tp!1745222))))

(assert (= (and b!6253533 ((_ is ElementMatch!16177) (regOne!32866 (regTwo!32866 r!7292)))) b!6254990))

(assert (= (and b!6253533 ((_ is Concat!25022) (regOne!32866 (regTwo!32866 r!7292)))) b!6254991))

(assert (= (and b!6253533 ((_ is Star!16177) (regOne!32866 (regTwo!32866 r!7292)))) b!6254992))

(assert (= (and b!6253533 ((_ is Union!16177) (regOne!32866 (regTwo!32866 r!7292)))) b!6254993))

(declare-fun b!6254995 () Bool)

(declare-fun e!3805212 () Bool)

(declare-fun tp!1745226 () Bool)

(declare-fun tp!1745230 () Bool)

(assert (=> b!6254995 (= e!3805212 (and tp!1745226 tp!1745230))))

(declare-fun b!6254996 () Bool)

(declare-fun tp!1745229 () Bool)

(assert (=> b!6254996 (= e!3805212 tp!1745229)))

(assert (=> b!6253533 (= tp!1744936 e!3805212)))

(declare-fun b!6254994 () Bool)

(assert (=> b!6254994 (= e!3805212 tp_is_empty!41607)))

(declare-fun b!6254997 () Bool)

(declare-fun tp!1745228 () Bool)

(declare-fun tp!1745227 () Bool)

(assert (=> b!6254997 (= e!3805212 (and tp!1745228 tp!1745227))))

(assert (= (and b!6253533 ((_ is ElementMatch!16177) (regTwo!32866 (regTwo!32866 r!7292)))) b!6254994))

(assert (= (and b!6253533 ((_ is Concat!25022) (regTwo!32866 (regTwo!32866 r!7292)))) b!6254995))

(assert (= (and b!6253533 ((_ is Star!16177) (regTwo!32866 (regTwo!32866 r!7292)))) b!6254996))

(assert (= (and b!6253533 ((_ is Union!16177) (regTwo!32866 (regTwo!32866 r!7292)))) b!6254997))

(declare-fun b!6254998 () Bool)

(declare-fun e!3805213 () Bool)

(declare-fun tp!1745231 () Bool)

(declare-fun tp!1745232 () Bool)

(assert (=> b!6254998 (= e!3805213 (and tp!1745231 tp!1745232))))

(assert (=> b!6253512 (= tp!1744909 e!3805213)))

(assert (= (and b!6253512 ((_ is Cons!64706) (exprs!6061 setElem!42512))) b!6254998))

(declare-fun b!6255000 () Bool)

(declare-fun e!3805214 () Bool)

(declare-fun tp!1745233 () Bool)

(declare-fun tp!1745237 () Bool)

(assert (=> b!6255000 (= e!3805214 (and tp!1745233 tp!1745237))))

(declare-fun b!6255001 () Bool)

(declare-fun tp!1745236 () Bool)

(assert (=> b!6255001 (= e!3805214 tp!1745236)))

(assert (=> b!6253534 (= tp!1744935 e!3805214)))

(declare-fun b!6254999 () Bool)

(assert (=> b!6254999 (= e!3805214 tp_is_empty!41607)))

(declare-fun b!6255002 () Bool)

(declare-fun tp!1745235 () Bool)

(declare-fun tp!1745234 () Bool)

(assert (=> b!6255002 (= e!3805214 (and tp!1745235 tp!1745234))))

(assert (= (and b!6253534 ((_ is ElementMatch!16177) (reg!16506 (regTwo!32866 r!7292)))) b!6254999))

(assert (= (and b!6253534 ((_ is Concat!25022) (reg!16506 (regTwo!32866 r!7292)))) b!6255000))

(assert (= (and b!6253534 ((_ is Star!16177) (reg!16506 (regTwo!32866 r!7292)))) b!6255001))

(assert (= (and b!6253534 ((_ is Union!16177) (reg!16506 (regTwo!32866 r!7292)))) b!6255002))

(declare-fun b!6255004 () Bool)

(declare-fun e!3805215 () Bool)

(declare-fun tp!1745238 () Bool)

(declare-fun tp!1745242 () Bool)

(assert (=> b!6255004 (= e!3805215 (and tp!1745238 tp!1745242))))

(declare-fun b!6255005 () Bool)

(declare-fun tp!1745241 () Bool)

(assert (=> b!6255005 (= e!3805215 tp!1745241)))

(assert (=> b!6253535 (= tp!1744934 e!3805215)))

(declare-fun b!6255003 () Bool)

(assert (=> b!6255003 (= e!3805215 tp_is_empty!41607)))

(declare-fun b!6255006 () Bool)

(declare-fun tp!1745240 () Bool)

(declare-fun tp!1745239 () Bool)

(assert (=> b!6255006 (= e!3805215 (and tp!1745240 tp!1745239))))

(assert (= (and b!6253535 ((_ is ElementMatch!16177) (regOne!32867 (regTwo!32866 r!7292)))) b!6255003))

(assert (= (and b!6253535 ((_ is Concat!25022) (regOne!32867 (regTwo!32866 r!7292)))) b!6255004))

(assert (= (and b!6253535 ((_ is Star!16177) (regOne!32867 (regTwo!32866 r!7292)))) b!6255005))

(assert (= (and b!6253535 ((_ is Union!16177) (regOne!32867 (regTwo!32866 r!7292)))) b!6255006))

(declare-fun b!6255008 () Bool)

(declare-fun e!3805216 () Bool)

(declare-fun tp!1745243 () Bool)

(declare-fun tp!1745247 () Bool)

(assert (=> b!6255008 (= e!3805216 (and tp!1745243 tp!1745247))))

(declare-fun b!6255009 () Bool)

(declare-fun tp!1745246 () Bool)

(assert (=> b!6255009 (= e!3805216 tp!1745246)))

(assert (=> b!6253535 (= tp!1744933 e!3805216)))

(declare-fun b!6255007 () Bool)

(assert (=> b!6255007 (= e!3805216 tp_is_empty!41607)))

(declare-fun b!6255010 () Bool)

(declare-fun tp!1745245 () Bool)

(declare-fun tp!1745244 () Bool)

(assert (=> b!6255010 (= e!3805216 (and tp!1745245 tp!1745244))))

(assert (= (and b!6253535 ((_ is ElementMatch!16177) (regTwo!32867 (regTwo!32866 r!7292)))) b!6255007))

(assert (= (and b!6253535 ((_ is Concat!25022) (regTwo!32867 (regTwo!32866 r!7292)))) b!6255008))

(assert (= (and b!6253535 ((_ is Star!16177) (regTwo!32867 (regTwo!32866 r!7292)))) b!6255009))

(assert (= (and b!6253535 ((_ is Union!16177) (regTwo!32867 (regTwo!32866 r!7292)))) b!6255010))

(declare-fun b!6255012 () Bool)

(declare-fun e!3805217 () Bool)

(declare-fun tp!1745248 () Bool)

(declare-fun tp!1745252 () Bool)

(assert (=> b!6255012 (= e!3805217 (and tp!1745248 tp!1745252))))

(declare-fun b!6255013 () Bool)

(declare-fun tp!1745251 () Bool)

(assert (=> b!6255013 (= e!3805217 tp!1745251)))

(assert (=> b!6253554 (= tp!1744955 e!3805217)))

(declare-fun b!6255011 () Bool)

(assert (=> b!6255011 (= e!3805217 tp_is_empty!41607)))

(declare-fun b!6255014 () Bool)

(declare-fun tp!1745250 () Bool)

(declare-fun tp!1745249 () Bool)

(assert (=> b!6255014 (= e!3805217 (and tp!1745250 tp!1745249))))

(assert (= (and b!6253554 ((_ is ElementMatch!16177) (regOne!32866 (reg!16506 r!7292)))) b!6255011))

(assert (= (and b!6253554 ((_ is Concat!25022) (regOne!32866 (reg!16506 r!7292)))) b!6255012))

(assert (= (and b!6253554 ((_ is Star!16177) (regOne!32866 (reg!16506 r!7292)))) b!6255013))

(assert (= (and b!6253554 ((_ is Union!16177) (regOne!32866 (reg!16506 r!7292)))) b!6255014))

(declare-fun b!6255016 () Bool)

(declare-fun e!3805218 () Bool)

(declare-fun tp!1745253 () Bool)

(declare-fun tp!1745257 () Bool)

(assert (=> b!6255016 (= e!3805218 (and tp!1745253 tp!1745257))))

(declare-fun b!6255017 () Bool)

(declare-fun tp!1745256 () Bool)

(assert (=> b!6255017 (= e!3805218 tp!1745256)))

(assert (=> b!6253554 (= tp!1744959 e!3805218)))

(declare-fun b!6255015 () Bool)

(assert (=> b!6255015 (= e!3805218 tp_is_empty!41607)))

(declare-fun b!6255018 () Bool)

(declare-fun tp!1745255 () Bool)

(declare-fun tp!1745254 () Bool)

(assert (=> b!6255018 (= e!3805218 (and tp!1745255 tp!1745254))))

(assert (= (and b!6253554 ((_ is ElementMatch!16177) (regTwo!32866 (reg!16506 r!7292)))) b!6255015))

(assert (= (and b!6253554 ((_ is Concat!25022) (regTwo!32866 (reg!16506 r!7292)))) b!6255016))

(assert (= (and b!6253554 ((_ is Star!16177) (regTwo!32866 (reg!16506 r!7292)))) b!6255017))

(assert (= (and b!6253554 ((_ is Union!16177) (regTwo!32866 (reg!16506 r!7292)))) b!6255018))

(declare-fun b!6255020 () Bool)

(declare-fun e!3805219 () Bool)

(declare-fun tp!1745258 () Bool)

(declare-fun tp!1745262 () Bool)

(assert (=> b!6255020 (= e!3805219 (and tp!1745258 tp!1745262))))

(declare-fun b!6255021 () Bool)

(declare-fun tp!1745261 () Bool)

(assert (=> b!6255021 (= e!3805219 tp!1745261)))

(assert (=> b!6253555 (= tp!1744958 e!3805219)))

(declare-fun b!6255019 () Bool)

(assert (=> b!6255019 (= e!3805219 tp_is_empty!41607)))

(declare-fun b!6255022 () Bool)

(declare-fun tp!1745260 () Bool)

(declare-fun tp!1745259 () Bool)

(assert (=> b!6255022 (= e!3805219 (and tp!1745260 tp!1745259))))

(assert (= (and b!6253555 ((_ is ElementMatch!16177) (reg!16506 (reg!16506 r!7292)))) b!6255019))

(assert (= (and b!6253555 ((_ is Concat!25022) (reg!16506 (reg!16506 r!7292)))) b!6255020))

(assert (= (and b!6253555 ((_ is Star!16177) (reg!16506 (reg!16506 r!7292)))) b!6255021))

(assert (= (and b!6253555 ((_ is Union!16177) (reg!16506 (reg!16506 r!7292)))) b!6255022))

(declare-fun b!6255024 () Bool)

(declare-fun e!3805220 () Bool)

(declare-fun tp!1745263 () Bool)

(declare-fun tp!1745267 () Bool)

(assert (=> b!6255024 (= e!3805220 (and tp!1745263 tp!1745267))))

(declare-fun b!6255025 () Bool)

(declare-fun tp!1745266 () Bool)

(assert (=> b!6255025 (= e!3805220 tp!1745266)))

(assert (=> b!6253546 (= tp!1744945 e!3805220)))

(declare-fun b!6255023 () Bool)

(assert (=> b!6255023 (= e!3805220 tp_is_empty!41607)))

(declare-fun b!6255026 () Bool)

(declare-fun tp!1745265 () Bool)

(declare-fun tp!1745264 () Bool)

(assert (=> b!6255026 (= e!3805220 (and tp!1745265 tp!1745264))))

(assert (= (and b!6253546 ((_ is ElementMatch!16177) (regOne!32866 (regOne!32867 r!7292)))) b!6255023))

(assert (= (and b!6253546 ((_ is Concat!25022) (regOne!32866 (regOne!32867 r!7292)))) b!6255024))

(assert (= (and b!6253546 ((_ is Star!16177) (regOne!32866 (regOne!32867 r!7292)))) b!6255025))

(assert (= (and b!6253546 ((_ is Union!16177) (regOne!32866 (regOne!32867 r!7292)))) b!6255026))

(declare-fun b!6255028 () Bool)

(declare-fun e!3805221 () Bool)

(declare-fun tp!1745268 () Bool)

(declare-fun tp!1745272 () Bool)

(assert (=> b!6255028 (= e!3805221 (and tp!1745268 tp!1745272))))

(declare-fun b!6255029 () Bool)

(declare-fun tp!1745271 () Bool)

(assert (=> b!6255029 (= e!3805221 tp!1745271)))

(assert (=> b!6253546 (= tp!1744949 e!3805221)))

(declare-fun b!6255027 () Bool)

(assert (=> b!6255027 (= e!3805221 tp_is_empty!41607)))

(declare-fun b!6255030 () Bool)

(declare-fun tp!1745270 () Bool)

(declare-fun tp!1745269 () Bool)

(assert (=> b!6255030 (= e!3805221 (and tp!1745270 tp!1745269))))

(assert (= (and b!6253546 ((_ is ElementMatch!16177) (regTwo!32866 (regOne!32867 r!7292)))) b!6255027))

(assert (= (and b!6253546 ((_ is Concat!25022) (regTwo!32866 (regOne!32867 r!7292)))) b!6255028))

(assert (= (and b!6253546 ((_ is Star!16177) (regTwo!32866 (regOne!32867 r!7292)))) b!6255029))

(assert (= (and b!6253546 ((_ is Union!16177) (regTwo!32866 (regOne!32867 r!7292)))) b!6255030))

(declare-fun b!6255032 () Bool)

(declare-fun e!3805222 () Bool)

(declare-fun tp!1745273 () Bool)

(declare-fun tp!1745277 () Bool)

(assert (=> b!6255032 (= e!3805222 (and tp!1745273 tp!1745277))))

(declare-fun b!6255033 () Bool)

(declare-fun tp!1745276 () Bool)

(assert (=> b!6255033 (= e!3805222 tp!1745276)))

(assert (=> b!6253556 (= tp!1744957 e!3805222)))

(declare-fun b!6255031 () Bool)

(assert (=> b!6255031 (= e!3805222 tp_is_empty!41607)))

(declare-fun b!6255034 () Bool)

(declare-fun tp!1745275 () Bool)

(declare-fun tp!1745274 () Bool)

(assert (=> b!6255034 (= e!3805222 (and tp!1745275 tp!1745274))))

(assert (= (and b!6253556 ((_ is ElementMatch!16177) (regOne!32867 (reg!16506 r!7292)))) b!6255031))

(assert (= (and b!6253556 ((_ is Concat!25022) (regOne!32867 (reg!16506 r!7292)))) b!6255032))

(assert (= (and b!6253556 ((_ is Star!16177) (regOne!32867 (reg!16506 r!7292)))) b!6255033))

(assert (= (and b!6253556 ((_ is Union!16177) (regOne!32867 (reg!16506 r!7292)))) b!6255034))

(declare-fun b!6255036 () Bool)

(declare-fun e!3805223 () Bool)

(declare-fun tp!1745278 () Bool)

(declare-fun tp!1745282 () Bool)

(assert (=> b!6255036 (= e!3805223 (and tp!1745278 tp!1745282))))

(declare-fun b!6255037 () Bool)

(declare-fun tp!1745281 () Bool)

(assert (=> b!6255037 (= e!3805223 tp!1745281)))

(assert (=> b!6253556 (= tp!1744956 e!3805223)))

(declare-fun b!6255035 () Bool)

(assert (=> b!6255035 (= e!3805223 tp_is_empty!41607)))

(declare-fun b!6255038 () Bool)

(declare-fun tp!1745280 () Bool)

(declare-fun tp!1745279 () Bool)

(assert (=> b!6255038 (= e!3805223 (and tp!1745280 tp!1745279))))

(assert (= (and b!6253556 ((_ is ElementMatch!16177) (regTwo!32867 (reg!16506 r!7292)))) b!6255035))

(assert (= (and b!6253556 ((_ is Concat!25022) (regTwo!32867 (reg!16506 r!7292)))) b!6255036))

(assert (= (and b!6253556 ((_ is Star!16177) (regTwo!32867 (reg!16506 r!7292)))) b!6255037))

(assert (= (and b!6253556 ((_ is Union!16177) (regTwo!32867 (reg!16506 r!7292)))) b!6255038))

(declare-fun b!6255040 () Bool)

(declare-fun e!3805224 () Bool)

(declare-fun tp!1745283 () Bool)

(declare-fun tp!1745287 () Bool)

(assert (=> b!6255040 (= e!3805224 (and tp!1745283 tp!1745287))))

(declare-fun b!6255041 () Bool)

(declare-fun tp!1745286 () Bool)

(assert (=> b!6255041 (= e!3805224 tp!1745286)))

(assert (=> b!6253547 (= tp!1744948 e!3805224)))

(declare-fun b!6255039 () Bool)

(assert (=> b!6255039 (= e!3805224 tp_is_empty!41607)))

(declare-fun b!6255042 () Bool)

(declare-fun tp!1745285 () Bool)

(declare-fun tp!1745284 () Bool)

(assert (=> b!6255042 (= e!3805224 (and tp!1745285 tp!1745284))))

(assert (= (and b!6253547 ((_ is ElementMatch!16177) (reg!16506 (regOne!32867 r!7292)))) b!6255039))

(assert (= (and b!6253547 ((_ is Concat!25022) (reg!16506 (regOne!32867 r!7292)))) b!6255040))

(assert (= (and b!6253547 ((_ is Star!16177) (reg!16506 (regOne!32867 r!7292)))) b!6255041))

(assert (= (and b!6253547 ((_ is Union!16177) (reg!16506 (regOne!32867 r!7292)))) b!6255042))

(declare-fun b!6255044 () Bool)

(declare-fun e!3805225 () Bool)

(declare-fun tp!1745288 () Bool)

(declare-fun tp!1745292 () Bool)

(assert (=> b!6255044 (= e!3805225 (and tp!1745288 tp!1745292))))

(declare-fun b!6255045 () Bool)

(declare-fun tp!1745291 () Bool)

(assert (=> b!6255045 (= e!3805225 tp!1745291)))

(assert (=> b!6253517 (= tp!1744915 e!3805225)))

(declare-fun b!6255043 () Bool)

(assert (=> b!6255043 (= e!3805225 tp_is_empty!41607)))

(declare-fun b!6255046 () Bool)

(declare-fun tp!1745290 () Bool)

(declare-fun tp!1745289 () Bool)

(assert (=> b!6255046 (= e!3805225 (and tp!1745290 tp!1745289))))

(assert (= (and b!6253517 ((_ is ElementMatch!16177) (h!71154 (exprs!6061 (h!71155 zl!343))))) b!6255043))

(assert (= (and b!6253517 ((_ is Concat!25022) (h!71154 (exprs!6061 (h!71155 zl!343))))) b!6255044))

(assert (= (and b!6253517 ((_ is Star!16177) (h!71154 (exprs!6061 (h!71155 zl!343))))) b!6255045))

(assert (= (and b!6253517 ((_ is Union!16177) (h!71154 (exprs!6061 (h!71155 zl!343))))) b!6255046))

(declare-fun b!6255047 () Bool)

(declare-fun e!3805226 () Bool)

(declare-fun tp!1745293 () Bool)

(declare-fun tp!1745294 () Bool)

(assert (=> b!6255047 (= e!3805226 (and tp!1745293 tp!1745294))))

(assert (=> b!6253517 (= tp!1744916 e!3805226)))

(assert (= (and b!6253517 ((_ is Cons!64706) (t!378378 (exprs!6061 (h!71155 zl!343))))) b!6255047))

(declare-fun b_lambda!238019 () Bool)

(assert (= b_lambda!238003 (or d!1961580 b_lambda!238019)))

(declare-fun bs!1557826 () Bool)

(declare-fun d!1962382 () Bool)

(assert (= bs!1557826 (and d!1962382 d!1961580)))

(assert (=> bs!1557826 (= (dynLambda!25564 lambda!342094 (h!71154 (unfocusZipperList!1598 zl!343))) (validRegex!7913 (h!71154 (unfocusZipperList!1598 zl!343))))))

(declare-fun m!7078030 () Bool)

(assert (=> bs!1557826 m!7078030))

(assert (=> b!6254616 d!1962382))

(declare-fun b_lambda!238021 () Bool)

(assert (= b_lambda!237995 (or b!6253449 b_lambda!238021)))

(declare-fun bs!1557827 () Bool)

(declare-fun d!1962384 () Bool)

(assert (= bs!1557827 (and d!1962384 b!6253449)))

(assert (=> bs!1557827 (= (dynLambda!25563 lambda!342120 (h!71155 (t!378379 zl!343))) (>= lt!2349010 (contextDepth!197 (h!71155 (t!378379 zl!343)))))))

(assert (=> bs!1557827 m!7077326))

(assert (=> b!6254349 d!1962384))

(declare-fun b_lambda!238023 () Bool)

(assert (= b_lambda!238005 (or b!6253444 b_lambda!238023)))

(declare-fun bs!1557828 () Bool)

(declare-fun d!1962386 () Bool)

(assert (= bs!1557828 (and d!1962386 b!6253444)))

(assert (=> bs!1557828 (= (dynLambda!25563 lambda!342117 (h!71155 (t!378379 lt!2348865))) (>= lt!2349006 (contextDepth!197 (h!71155 (t!378379 lt!2348865)))))))

(assert (=> bs!1557828 m!7077664))

(assert (=> b!6254674 d!1962386))

(declare-fun b_lambda!238025 () Bool)

(assert (= b_lambda!238007 (or d!1961582 b_lambda!238025)))

(declare-fun bs!1557829 () Bool)

(declare-fun d!1962388 () Bool)

(assert (= bs!1557829 (and d!1962388 d!1961582)))

(assert (=> bs!1557829 (= (dynLambda!25564 lambda!342097 (h!71154 lt!2348979)) (validRegex!7913 (h!71154 lt!2348979)))))

(declare-fun m!7078032 () Bool)

(assert (=> bs!1557829 m!7078032))

(assert (=> b!6254676 d!1962388))

(declare-fun b_lambda!238027 () Bool)

(assert (= b_lambda!238013 (or b!6252643 b_lambda!238027)))

(assert (=> d!1962262 d!1961658))

(declare-fun b_lambda!238029 () Bool)

(assert (= b_lambda!238001 (or d!1961588 b_lambda!238029)))

(declare-fun bs!1557830 () Bool)

(declare-fun d!1962390 () Bool)

(assert (= bs!1557830 (and d!1962390 d!1961588)))

(assert (=> bs!1557830 (= (dynLambda!25564 lambda!342100 (h!71154 lt!2348860)) (validRegex!7913 (h!71154 lt!2348860)))))

(declare-fun m!7078034 () Bool)

(assert (=> bs!1557830 m!7078034))

(assert (=> b!6254513 d!1962390))

(declare-fun b_lambda!238031 () Bool)

(assert (= b_lambda!237997 (or d!1961654 b_lambda!238031)))

(declare-fun bs!1557831 () Bool)

(declare-fun d!1962392 () Bool)

(assert (= bs!1557831 (and d!1962392 d!1961654)))

(assert (=> bs!1557831 (= (dynLambda!25564 lambda!342133 (h!71154 (exprs!6061 (h!71155 zl!343)))) (validRegex!7913 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(declare-fun m!7078036 () Bool)

(assert (=> bs!1557831 m!7078036))

(assert (=> b!6254414 d!1962392))

(declare-fun b_lambda!238033 () Bool)

(assert (= b_lambda!237999 (or b!6252643 b_lambda!238033)))

(assert (=> d!1962090 d!1961660))

(declare-fun b_lambda!238035 () Bool)

(assert (= b_lambda!237993 (or b!6252643 b_lambda!238035)))

(assert (=> d!1962046 d!1961656))

(declare-fun b_lambda!238037 () Bool)

(assert (= b_lambda!238015 (or d!1961638 b_lambda!238037)))

(declare-fun bs!1557832 () Bool)

(declare-fun d!1962394 () Bool)

(assert (= bs!1557832 (and d!1962394 d!1961638)))

(assert (=> bs!1557832 (= (dynLambda!25564 lambda!342123 (h!71154 (exprs!6061 (h!71155 zl!343)))) (validRegex!7913 (h!71154 (exprs!6061 (h!71155 zl!343)))))))

(assert (=> bs!1557832 m!7078036))

(assert (=> b!6254827 d!1962394))

(declare-fun b_lambda!238039 () Bool)

(assert (= b_lambda!238017 (or b!6253446 b_lambda!238039)))

(declare-fun bs!1557833 () Bool)

(declare-fun d!1962396 () Bool)

(assert (= bs!1557833 (and d!1962396 b!6253446)))

(assert (=> bs!1557833 (= (dynLambda!25563 lambda!342118 (h!71155 lt!2348865)) (>= lt!2349004 (contextDepth!197 (h!71155 lt!2348865))))))

(assert (=> bs!1557833 m!7076392))

(assert (=> b!6254900 d!1962396))

(declare-fun b_lambda!238041 () Bool)

(assert (= b_lambda!238011 (or b!6253451 b_lambda!238041)))

(declare-fun bs!1557834 () Bool)

(declare-fun d!1962398 () Bool)

(assert (= bs!1557834 (and d!1962398 b!6253451)))

(assert (=> bs!1557834 (= (dynLambda!25563 lambda!342121 (h!71155 zl!343)) (>= lt!2349008 (contextDepth!197 (h!71155 zl!343))))))

(assert (=> bs!1557834 m!7076404))

(assert (=> b!6254694 d!1962398))

(declare-fun b_lambda!238043 () Bool)

(assert (= b_lambda!238009 (or d!1961604 b_lambda!238043)))

(declare-fun bs!1557835 () Bool)

(declare-fun d!1962400 () Bool)

(assert (= bs!1557835 (and d!1962400 d!1961604)))

(assert (=> bs!1557835 (= (dynLambda!25564 lambda!342109 (h!71154 (exprs!6061 setElem!42506))) (validRegex!7913 (h!71154 (exprs!6061 setElem!42506))))))

(declare-fun m!7078038 () Bool)

(assert (=> bs!1557835 m!7078038))

(assert (=> b!6254682 d!1962400))

(check-sat (not d!1962218) (not b!6254370) (not b!6254777) (not b!6254992) (not bm!527778) (not b!6254387) (not bm!527823) (not bs!1557826) (not b!6254939) (not b!6254448) (not b!6254539) (not b!6254959) (not b!6254914) (not b_lambda!238043) (not b!6254760) (not d!1962214) (not b!6254670) (not b_lambda!238035) (not b!6254755) (not bm!527714) (not bm!527755) (not b!6254809) (not b!6254543) (not b!6255026) (not b!6254995) (not d!1962046) (not b!6254541) (not b!6255034) (not bm!527716) (not b!6254736) (not bm!527754) (not bm!527807) (not b!6254983) (not bm!527761) (not b!6254969) (not b!6254947) (not b!6255032) (not b!6254960) (not b!6254951) (not bm!527793) (not b!6255005) (not b!6255006) (not b!6254381) (not bm!527809) (not bm!527848) (not b!6254877) (not b_lambda!238031) (not b!6255020) (not bm!527843) (not b!6255022) (not bm!527830) (not b!6254812) (not b!6254997) (not b!6254380) (not b!6255044) (not b!6254875) (not bm!527794) (not d!1962208) (not bm!527840) (not b!6254388) (not bm!527831) (not b!6254548) (not b!6254492) (not b!6254964) (not bm!527851) (not b!6255028) (not b!6254385) (not bm!527727) (not b!6254654) (not b!6254458) (not b!6254716) (not b!6254882) (not d!1962100) (not bm!527791) (not d!1962188) (not b!6254503) (not b!6254691) (not d!1962072) (not d!1962342) (not bm!527741) (not b!6254725) (not d!1962108) (not b!6254501) (not b!6254565) (not bm!527800) (not d!1962278) (not b!6254942) (not setNonEmpty!42524) (not d!1962232) (not bm!527721) (not b!6254890) (not b!6254364) (not d!1962154) (not b!6254832) (not bs!1557827) (not bm!527808) (not b!6254320) (not d!1962186) (not b!6254660) (not b!6254681) (not b!6254729) tp_is_empty!41607 (not b!6255009) (not b_lambda!238037) (not b!6254641) (not b!6254456) (not b!6254955) (not b!6254989) (not b!6254880) (not b!6254570) (not bm!527846) (not bm!527733) (not b!6254734) (not b!6255038) (not d!1962268) (not b!6254970) (not b!6254878) (not b!6254495) (not b!6254689) (not b!6254417) (not d!1962076) (not b!6254787) (not b!6254841) (not bm!527725) (not d!1962248) (not b!6254956) (not b!6254762) (not b!6254776) (not b!6254966) (not b!6254976) (not d!1962162) (not b!6254807) (not bs!1557834) (not b!6254540) (not b!6254608) (not b!6254675) (not d!1962064) (not d!1962074) (not b!6255045) (not b!6254398) (not b!6254851) (not b!6254843) (not bm!527795) (not b!6254980) (not b!6254780) (not b!6254981) (not b!6254840) (not bm!527806) (not b!6254514) (not b!6254778) (not b!6254727) (not d!1962090) (not b!6254816) (not b!6254419) (not d!1962308) (not b!6254788) (not b!6254835) (not b!6254915) (not b!6254686) (not bm!527837) (not b!6254714) (not b!6254447) (not b!6254634) (not d!1962198) (not b!6254948) (not b!6254636) (not d!1962112) (not d!1962116) (not b!6255010) (not b!6255030) (not b!6254631) (not b_lambda!238019) (not b!6255000) (not d!1962288) (not bm!527815) (not b!6254362) (not b!6254678) (not d!1962234) (not b!6255033) (not b!6254695) (not b!6254696) (not b!6254687) (not d!1962258) (not d!1962380) (not b!6254902) (not b!6254978) (not d!1962254) (not b!6254935) (not bm!527788) (not b!6254643) (not d!1962280) (not setNonEmpty!42523) (not bm!527812) (not b!6254487) (not b!6254979) (not bm!527776) (not b!6254393) (not b!6255029) (not d!1962252) (not b!6254605) (not b!6255041) (not d!1962040) (not b!6254550) (not d!1962364) (not b!6254680) (not b!6254965) (not b!6255014) (not d!1962240) (not b!6254728) (not bm!527715) (not b!6255018) (not b!6254731) (not d!1962348) (not bm!527728) (not b!6254483) (not bm!527742) (not d!1962044) (not d!1962358) (not b_lambda!238029) (not b!6254933) (not d!1962244) (not b!6254444) (not bm!527719) (not b!6254862) (not b_lambda!238039) (not d!1962168) (not bm!527834) (not b!6254987) (not b!6254972) (not b!6254952) (not d!1962062) (not b!6254575) (not d!1962114) (not b!6254632) (not b_lambda!238021) (not b!6254500) (not d!1962260) (not b!6254984) (not b!6254567) (not d!1962140) (not b!6255017) (not b!6254402) (not bs!1557829) (not b!6254975) (not b!6255040) (not b!6254390) (not b!6254847) (not b_lambda!238041) (not b_lambda!238023) (not d!1962106) (not d!1962216) (not b!6254656) (not bm!527836) (not d!1962338) (not b!6254828) (not d!1962144) (not b!6255001) (not b!6254957) (not b!6254713) (not d!1962050) (not d!1962340) (not b!6255046) (not b_lambda!237937) (not b!6254677) (not b!6254988) (not b!6254633) (not b!6254617) (not b!6254359) (not b!6254879) (not d!1962098) (not b!6254357) (not d!1962228) (not b!6254418) (not b!6254913) (not b!6254920) (not b!6254319) (not d!1962210) (not b!6254552) (not b!6255037) (not bs!1557832) (not d!1962094) (not bm!527842) (not bm!527853) (not b!6254486) (not bm!527828) (not b!6254954) (not b!6254379) (not d!1962346) (not d!1962236) (not b!6254885) (not b!6255025) (not bm!527781) (not d!1962096) (not b!6254993) (not b!6254673) (not d!1962332) (not b!6254938) (not b!6254901) (not bm!527744) (not d!1962230) (not b!6254420) (not b!6254991) (not bm!527798) (not bm!527822) (not b!6254733) (not b!6254849) (not b!6254538) (not b!6254693) (not b!6254394) (not b!6254618) (not d!1962092) (not b!6254916) (not d!1962190) (not b!6255042) (not b!6254930) (not b!6254688) (not b!6254761) (not d!1962138) (not bm!527826) (not b!6254814) (not b!6255013) (not b!6254371) (not b!6254350) (not bm!527847) (not b!6254876) (not bm!527820) (not setNonEmpty!42522) (not bm!527756) (not d!1962292) (not bm!527783) (not bs!1557833) (not b!6254925) (not b!6254873) (not b!6254775) (not bm!527796) (not bm!527722) (not b!6254505) (not b!6254971) (not b!6254451) (not d!1962330) (not b!6255036) (not bm!527790) (not b!6254934) (not bm!527803) (not b!6254937) (not bm!527743) (not b!6254697) (not b!6254382) (not b!6254961) (not bm!527773) (not b_lambda!237939) (not b!6255008) (not bm!527799) (not b!6254850) (not b!6255024) (not b!6254455) (not b!6254453) (not d!1962110) (not d!1962378) (not b!6254395) (not setNonEmpty!42521) (not b_lambda!237935) (not d!1962324) (not d!1962266) (not b!6254887) (not bm!527818) (not bm!527785) (not d!1962360) (not b!6254944) (not b!6254551) (not b_lambda!238025) (not b!6254941) (not b!6254974) (not b!6254726) (not b!6254950) (not bm!527784) (not b!6254922) (not bm!527844) (not bm!527814) (not d!1962178) (not b!6254963) (not b!6254685) (not bm!527747) (not b!6254790) (not bm!527821) (not b!6254668) (not d!1962290) (not b!6254415) (not d!1962270) (not b!6254846) (not b!6254450) (not b!6254892) (not bs!1557830) (not b!6254943) (not b!6255012) (not bm!527745) (not b!6254759) (not b!6254396) (not b_lambda!238033) (not b!6254917) (not d!1962132) (not bm!527759) (not b!6254985) (not b!6254921) (not b!6254998) (not b!6254785) (not b_lambda!238027) (not d!1962156) (not bm!527753) (not bm!527730) (not b!6254443) (not d!1962312) (not d!1962250) (not b!6254683) (not b!6254844) (not b!6254923) (not b!6255004) (not bs!1557831) (not d!1962242) (not b!6254967) (not b!6254799) (not b!6254331) (not bm!527774) (not b!6254294) (not bm!527752) (not bs!1557835) (not bm!527771) (not d!1962262) (not bm!527829) (not b!6254378) (not bs!1557828) (not b!6254946) (not b!6255047) (not bm!527777) (not d!1962164) (not bm!527731) (not b!6254566) (not d!1962222) (not b!6254384) (not bm!527817) (not d!1962224) (not b!6254568) (not bm!527712) (not b!6255016) (not b!6254422) (not d!1962158) (not b!6255021) (not b!6254996) (not b!6255002) (not b!6254671) (not b!6254416))
(check-sat)
