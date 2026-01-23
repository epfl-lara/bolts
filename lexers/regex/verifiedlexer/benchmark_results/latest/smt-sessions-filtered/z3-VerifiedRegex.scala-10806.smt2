; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554818 () Bool)

(assert start!554818)

(declare-fun b!5250831 () Bool)

(assert (=> b!5250831 true))

(assert (=> b!5250831 true))

(declare-fun lambda!264416 () Int)

(declare-fun lambda!264415 () Int)

(assert (=> b!5250831 (not (= lambda!264416 lambda!264415))))

(assert (=> b!5250831 true))

(assert (=> b!5250831 true))

(declare-fun b!5250855 () Bool)

(assert (=> b!5250855 true))

(declare-fun e!3266746 () Bool)

(declare-fun b!5250815 () Bool)

(declare-datatypes ((C!29988 0))(
  ( (C!29989 (val!24696 Int)) )
))
(declare-datatypes ((Regex!14859 0))(
  ( (ElementMatch!14859 (c!908285 C!29988)) (Concat!23704 (regOne!30230 Regex!14859) (regTwo!30230 Regex!14859)) (EmptyExpr!14859) (Star!14859 (reg!15188 Regex!14859)) (EmptyLang!14859) (Union!14859 (regOne!30231 Regex!14859) (regTwo!30231 Regex!14859)) )
))
(declare-datatypes ((List!60876 0))(
  ( (Nil!60752) (Cons!60752 (h!67200 Regex!14859) (t!374059 List!60876)) )
))
(declare-datatypes ((Context!8486 0))(
  ( (Context!8487 (exprs!4743 List!60876)) )
))
(declare-datatypes ((List!60877 0))(
  ( (Nil!60753) (Cons!60753 (h!67201 Context!8486) (t!374060 List!60877)) )
))
(declare-fun zl!343 () List!60877)

(declare-fun tp!1469112 () Bool)

(declare-fun e!3266758 () Bool)

(declare-fun inv!80394 (Context!8486) Bool)

(assert (=> b!5250815 (= e!3266758 (and (inv!80394 (h!67201 zl!343)) e!3266746 tp!1469112))))

(declare-fun b!5250816 () Bool)

(declare-datatypes ((Unit!152886 0))(
  ( (Unit!152887) )
))
(declare-fun e!3266734 () Unit!152886)

(declare-fun Unit!152888 () Unit!152886)

(assert (=> b!5250816 (= e!3266734 Unit!152888)))

(declare-fun b!5250817 () Bool)

(declare-fun e!3266740 () Bool)

(declare-fun e!3266753 () Bool)

(assert (=> b!5250817 (= e!3266740 e!3266753)))

(declare-fun res!2228288 () Bool)

(assert (=> b!5250817 (=> res!2228288 e!3266753)))

(declare-fun lt!2151810 () Int)

(declare-fun lt!2151807 () Int)

(assert (=> b!5250817 (= res!2228288 (>= lt!2151810 lt!2151807))))

(declare-fun zipperDepthTotal!40 (List!60877) Int)

(assert (=> b!5250817 (= lt!2151807 (zipperDepthTotal!40 zl!343))))

(declare-fun lt!2151781 () List!60877)

(assert (=> b!5250817 (= lt!2151810 (zipperDepthTotal!40 lt!2151781))))

(declare-fun lt!2151801 () Context!8486)

(assert (=> b!5250817 (= lt!2151781 (Cons!60753 lt!2151801 Nil!60753))))

(declare-fun b!5250818 () Bool)

(declare-fun e!3266737 () Bool)

(declare-fun tp_is_empty!38971 () Bool)

(assert (=> b!5250818 (= e!3266737 tp_is_empty!38971)))

(declare-fun b!5250819 () Bool)

(declare-fun res!2228290 () Bool)

(declare-fun e!3266755 () Bool)

(assert (=> b!5250819 (=> res!2228290 e!3266755)))

(get-info :version)

(assert (=> b!5250819 (= res!2228290 (not ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5250820 () Bool)

(declare-fun e!3266742 () Bool)

(declare-fun e!3266754 () Bool)

(assert (=> b!5250820 (= e!3266742 e!3266754)))

(declare-fun res!2228302 () Bool)

(assert (=> b!5250820 (=> res!2228302 e!3266754)))

(declare-fun r!7292 () Regex!14859)

(declare-fun lt!2151806 () Regex!14859)

(declare-fun lt!2151765 () Regex!14859)

(declare-fun lt!2151803 () Regex!14859)

(assert (=> b!5250820 (= res!2228302 (or (not (= lt!2151806 (Concat!23704 (regOne!30231 (regOne!30230 r!7292)) lt!2151765))) (not (= lt!2151803 (Concat!23704 (regTwo!30231 (regOne!30230 r!7292)) lt!2151765))) (not (= (regTwo!30230 r!7292) lt!2151765))))))

(declare-fun generalisedConcat!528 (List!60876) Regex!14859)

(assert (=> b!5250820 (= lt!2151765 (generalisedConcat!528 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5250821 () Bool)

(declare-fun res!2228298 () Bool)

(declare-fun e!3266750 () Bool)

(assert (=> b!5250821 (=> (not res!2228298) (not e!3266750))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8486))

(declare-fun toList!8643 ((InoxSet Context!8486)) List!60877)

(assert (=> b!5250821 (= res!2228298 (= (toList!8643 z!1189) zl!343))))

(declare-fun b!5250822 () Bool)

(declare-fun Unit!152889 () Unit!152886)

(assert (=> b!5250822 (= e!3266734 Unit!152889)))

(declare-datatypes ((List!60878 0))(
  ( (Nil!60754) (Cons!60754 (h!67202 C!29988) (t!374061 List!60878)) )
))
(declare-fun s!2326 () List!60878)

(declare-fun lt!2151797 () (InoxSet Context!8486))

(declare-fun lt!2151791 () (InoxSet Context!8486))

(declare-fun lt!2151772 () Unit!152886)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!96 ((InoxSet Context!8486) (InoxSet Context!8486) List!60878) Unit!152886)

(assert (=> b!5250822 (= lt!2151772 (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151791 lt!2151797 (t!374061 s!2326)))))

(declare-fun res!2228291 () Bool)

(declare-fun matchZipper!1103 ((InoxSet Context!8486) List!60878) Bool)

(assert (=> b!5250822 (= res!2228291 (matchZipper!1103 lt!2151791 (t!374061 s!2326)))))

(declare-fun e!3266743 () Bool)

(assert (=> b!5250822 (=> res!2228291 e!3266743)))

(assert (=> b!5250822 (= (matchZipper!1103 ((_ map or) lt!2151791 lt!2151797) (t!374061 s!2326)) e!3266743)))

(declare-fun b!5250824 () Bool)

(declare-fun tp!1469106 () Bool)

(assert (=> b!5250824 (= e!3266737 tp!1469106)))

(declare-fun b!5250825 () Bool)

(declare-fun e!3266732 () Bool)

(assert (=> b!5250825 (= e!3266732 (not e!3266755))))

(declare-fun res!2228287 () Bool)

(assert (=> b!5250825 (=> res!2228287 e!3266755)))

(assert (=> b!5250825 (= res!2228287 (not ((_ is Cons!60753) zl!343)))))

(declare-fun lt!2151813 () Bool)

(declare-fun matchRSpec!1962 (Regex!14859 List!60878) Bool)

(assert (=> b!5250825 (= lt!2151813 (matchRSpec!1962 r!7292 s!2326))))

(declare-fun matchR!7044 (Regex!14859 List!60878) Bool)

(assert (=> b!5250825 (= lt!2151813 (matchR!7044 r!7292 s!2326))))

(declare-fun lt!2151796 () Unit!152886)

(declare-fun mainMatchTheorem!1962 (Regex!14859 List!60878) Unit!152886)

(assert (=> b!5250825 (= lt!2151796 (mainMatchTheorem!1962 r!7292 s!2326))))

(declare-fun b!5250826 () Bool)

(declare-fun e!3266735 () Bool)

(declare-fun lt!2151812 () (InoxSet Context!8486))

(assert (=> b!5250826 (= e!3266735 (matchZipper!1103 lt!2151812 s!2326))))

(declare-fun b!5250827 () Bool)

(declare-fun e!3266747 () Bool)

(assert (=> b!5250827 (= e!3266747 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(declare-fun b!5250828 () Bool)

(declare-fun e!3266745 () Bool)

(declare-fun e!3266751 () Bool)

(assert (=> b!5250828 (= e!3266745 e!3266751)))

(declare-fun res!2228293 () Bool)

(assert (=> b!5250828 (=> res!2228293 e!3266751)))

(declare-fun e!3266749 () Bool)

(assert (=> b!5250828 (= res!2228293 e!3266749)))

(declare-fun res!2228294 () Bool)

(assert (=> b!5250828 (=> (not res!2228294) (not e!3266749))))

(declare-fun lt!2151799 () Bool)

(assert (=> b!5250828 (= res!2228294 (not (= (matchZipper!1103 lt!2151791 (t!374061 s!2326)) lt!2151799)))))

(declare-fun lt!2151778 () (InoxSet Context!8486))

(declare-fun e!3266741 () Bool)

(assert (=> b!5250828 (= (matchZipper!1103 lt!2151778 (t!374061 s!2326)) e!3266741)))

(declare-fun res!2228297 () Bool)

(assert (=> b!5250828 (=> res!2228297 e!3266741)))

(assert (=> b!5250828 (= res!2228297 lt!2151799)))

(declare-fun lt!2151785 () (InoxSet Context!8486))

(assert (=> b!5250828 (= lt!2151799 (matchZipper!1103 lt!2151785 (t!374061 s!2326)))))

(declare-fun lt!2151802 () (InoxSet Context!8486))

(declare-fun lt!2151766 () Unit!152886)

(assert (=> b!5250828 (= lt!2151766 (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151785 lt!2151802 (t!374061 s!2326)))))

(declare-fun b!5250829 () Bool)

(declare-fun tp!1469108 () Bool)

(declare-fun tp!1469105 () Bool)

(assert (=> b!5250829 (= e!3266737 (and tp!1469108 tp!1469105))))

(declare-fun b!5250830 () Bool)

(declare-fun e!3266748 () Bool)

(declare-fun tp!1469110 () Bool)

(assert (=> b!5250830 (= e!3266748 (and tp_is_empty!38971 tp!1469110))))

(declare-fun setIsEmpty!33527 () Bool)

(declare-fun setRes!33527 () Bool)

(assert (=> setIsEmpty!33527 setRes!33527))

(declare-fun e!3266756 () Bool)

(assert (=> b!5250831 (= e!3266755 e!3266756)))

(declare-fun res!2228278 () Bool)

(assert (=> b!5250831 (=> res!2228278 e!3266756)))

(declare-fun lt!2151783 () Bool)

(assert (=> b!5250831 (= res!2228278 (or (not (= lt!2151813 lt!2151783)) ((_ is Nil!60754) s!2326)))))

(declare-fun Exists!2040 (Int) Bool)

(assert (=> b!5250831 (= (Exists!2040 lambda!264415) (Exists!2040 lambda!264416))))

(declare-fun lt!2151784 () Unit!152886)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!694 (Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> b!5250831 (= lt!2151784 (lemmaExistCutMatchRandMatchRSpecEquivalent!694 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326))))

(assert (=> b!5250831 (= lt!2151783 (Exists!2040 lambda!264415))))

(declare-datatypes ((tuple2!64116 0))(
  ( (tuple2!64117 (_1!35361 List!60878) (_2!35361 List!60878)) )
))
(declare-datatypes ((Option!14970 0))(
  ( (None!14969) (Some!14969 (v!50998 tuple2!64116)) )
))
(declare-fun isDefined!11673 (Option!14970) Bool)

(declare-fun findConcatSeparation!1384 (Regex!14859 Regex!14859 List!60878 List!60878 List!60878) Option!14970)

(assert (=> b!5250831 (= lt!2151783 (isDefined!11673 (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) Nil!60754 s!2326 s!2326)))))

(declare-fun lt!2151804 () Unit!152886)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1148 (Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> b!5250831 (= lt!2151804 (lemmaFindConcatSeparationEquivalentToExists!1148 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326))))

(declare-fun b!5250832 () Bool)

(declare-fun e!3266739 () Bool)

(assert (=> b!5250832 (= e!3266739 e!3266745)))

(declare-fun res!2228301 () Bool)

(assert (=> b!5250832 (=> res!2228301 e!3266745)))

(assert (=> b!5250832 (= res!2228301 (not (= lt!2151791 lt!2151778)))))

(assert (=> b!5250832 (= lt!2151778 ((_ map or) lt!2151785 lt!2151802))))

(declare-fun lt!2151789 () Context!8486)

(declare-fun derivationStepZipperDown!307 (Regex!14859 Context!8486 C!29988) (InoxSet Context!8486))

(assert (=> b!5250832 (= lt!2151802 (derivationStepZipperDown!307 (regTwo!30231 (regOne!30230 r!7292)) lt!2151789 (h!67202 s!2326)))))

(assert (=> b!5250832 (= lt!2151785 (derivationStepZipperDown!307 (regOne!30231 (regOne!30230 r!7292)) lt!2151789 (h!67202 s!2326)))))

(declare-fun b!5250833 () Bool)

(declare-fun tp!1469113 () Bool)

(assert (=> b!5250833 (= e!3266746 tp!1469113)))

(declare-fun b!5250834 () Bool)

(assert (=> b!5250834 (= e!3266749 (not (matchZipper!1103 lt!2151802 (t!374061 s!2326))))))

(declare-fun b!5250835 () Bool)

(declare-fun res!2228282 () Bool)

(assert (=> b!5250835 (=> res!2228282 e!3266755)))

(assert (=> b!5250835 (= res!2228282 (not (= r!7292 (generalisedConcat!528 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5250836 () Bool)

(assert (=> b!5250836 (= e!3266751 e!3266740)))

(declare-fun res!2228303 () Bool)

(assert (=> b!5250836 (=> res!2228303 e!3266740)))

(declare-fun lt!2151808 () Bool)

(assert (=> b!5250836 (= res!2228303 (not (= lt!2151808 e!3266735)))))

(declare-fun res!2228284 () Bool)

(assert (=> b!5250836 (=> res!2228284 e!3266735)))

(declare-fun lt!2151787 () Bool)

(assert (=> b!5250836 (= res!2228284 lt!2151787)))

(assert (=> b!5250836 (= lt!2151808 (matchZipper!1103 z!1189 s!2326))))

(declare-fun lt!2151770 () (InoxSet Context!8486))

(assert (=> b!5250836 (= lt!2151787 (matchZipper!1103 lt!2151770 s!2326))))

(declare-fun lt!2151792 () Unit!152886)

(declare-fun e!3266736 () Unit!152886)

(assert (=> b!5250836 (= lt!2151792 e!3266736)))

(declare-fun c!908282 () Bool)

(declare-fun nullable!5028 (Regex!14859) Bool)

(assert (=> b!5250836 (= c!908282 (nullable!5028 (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun lambda!264417 () Int)

(declare-fun lt!2151780 () Context!8486)

(declare-fun flatMap!586 ((InoxSet Context!8486) Int) (InoxSet Context!8486))

(declare-fun derivationStepZipperUp!231 (Context!8486 C!29988) (InoxSet Context!8486))

(assert (=> b!5250836 (= (flatMap!586 lt!2151812 lambda!264417) (derivationStepZipperUp!231 lt!2151780 (h!67202 s!2326)))))

(declare-fun lt!2151768 () Unit!152886)

(declare-fun lemmaFlatMapOnSingletonSet!118 ((InoxSet Context!8486) Context!8486 Int) Unit!152886)

(assert (=> b!5250836 (= lt!2151768 (lemmaFlatMapOnSingletonSet!118 lt!2151812 lt!2151780 lambda!264417))))

(declare-fun lt!2151793 () (InoxSet Context!8486))

(assert (=> b!5250836 (= lt!2151793 (derivationStepZipperUp!231 lt!2151780 (h!67202 s!2326)))))

(declare-fun lt!2151800 () Unit!152886)

(declare-fun e!3266757 () Unit!152886)

(assert (=> b!5250836 (= lt!2151800 e!3266757)))

(declare-fun c!908283 () Bool)

(assert (=> b!5250836 (= c!908283 (nullable!5028 (regOne!30231 (regOne!30230 r!7292))))))

(assert (=> b!5250836 (= (flatMap!586 lt!2151770 lambda!264417) (derivationStepZipperUp!231 lt!2151801 (h!67202 s!2326)))))

(declare-fun lt!2151775 () Unit!152886)

(assert (=> b!5250836 (= lt!2151775 (lemmaFlatMapOnSingletonSet!118 lt!2151770 lt!2151801 lambda!264417))))

(declare-fun lt!2151790 () (InoxSet Context!8486))

(assert (=> b!5250836 (= lt!2151790 (derivationStepZipperUp!231 lt!2151801 (h!67202 s!2326)))))

(assert (=> b!5250836 (= lt!2151812 (store ((as const (Array Context!8486 Bool)) false) lt!2151780 true))))

(declare-fun lt!2151811 () List!60876)

(assert (=> b!5250836 (= lt!2151780 (Context!8487 lt!2151811))))

(assert (=> b!5250836 (= lt!2151811 (Cons!60752 (regTwo!30231 (regOne!30230 r!7292)) (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(assert (=> b!5250836 (= lt!2151770 (store ((as const (Array Context!8486 Bool)) false) lt!2151801 true))))

(declare-fun lt!2151779 () List!60876)

(assert (=> b!5250836 (= lt!2151801 (Context!8487 lt!2151779))))

(assert (=> b!5250836 (= lt!2151779 (Cons!60752 (regOne!30231 (regOne!30230 r!7292)) (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun e!3266733 () Bool)

(declare-fun tp!1469109 () Bool)

(declare-fun setElem!33527 () Context!8486)

(declare-fun setNonEmpty!33527 () Bool)

(assert (=> setNonEmpty!33527 (= setRes!33527 (and tp!1469109 (inv!80394 setElem!33527) e!3266733))))

(declare-fun setRest!33527 () (InoxSet Context!8486))

(assert (=> setNonEmpty!33527 (= z!1189 ((_ map or) (store ((as const (Array Context!8486 Bool)) false) setElem!33527 true) setRest!33527))))

(declare-fun b!5250837 () Bool)

(declare-fun tp!1469111 () Bool)

(declare-fun tp!1469107 () Bool)

(assert (=> b!5250837 (= e!3266737 (and tp!1469111 tp!1469107))))

(declare-fun b!5250838 () Bool)

(assert (=> b!5250838 (= e!3266750 e!3266732)))

(declare-fun res!2228295 () Bool)

(assert (=> b!5250838 (=> (not res!2228295) (not e!3266732))))

(declare-fun lt!2151769 () Regex!14859)

(assert (=> b!5250838 (= res!2228295 (= r!7292 lt!2151769))))

(declare-fun unfocusZipper!601 (List!60877) Regex!14859)

(assert (=> b!5250838 (= lt!2151769 (unfocusZipper!601 zl!343))))

(declare-fun b!5250839 () Bool)

(declare-fun res!2228285 () Bool)

(assert (=> b!5250839 (=> res!2228285 e!3266740)))

(assert (=> b!5250839 (= res!2228285 (or (not (= lt!2151769 r!7292)) (not (= (exprs!4743 (h!67201 zl!343)) (Cons!60752 (regOne!30230 r!7292) (t!374059 (exprs!4743 (h!67201 zl!343))))))))))

(declare-fun b!5250840 () Bool)

(declare-fun e!3266738 () Bool)

(assert (=> b!5250840 (= e!3266738 e!3266742)))

(declare-fun res!2228286 () Bool)

(assert (=> b!5250840 (=> res!2228286 e!3266742)))

(declare-fun lt!2151776 () Regex!14859)

(assert (=> b!5250840 (= res!2228286 (not (= r!7292 lt!2151776)))))

(assert (=> b!5250840 (= lt!2151776 (Concat!23704 (Union!14859 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30231 (regOne!30230 r!7292))) (regTwo!30230 r!7292)))))

(declare-fun b!5250841 () Bool)

(assert (=> b!5250841 (= e!3266743 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(declare-fun b!5250842 () Bool)

(declare-fun res!2228280 () Bool)

(assert (=> b!5250842 (=> res!2228280 e!3266755)))

(declare-fun isEmpty!32691 (List!60877) Bool)

(assert (=> b!5250842 (= res!2228280 (not (isEmpty!32691 (t!374060 zl!343))))))

(declare-fun b!5250843 () Bool)

(declare-fun res!2228300 () Bool)

(assert (=> b!5250843 (=> res!2228300 e!3266755)))

(assert (=> b!5250843 (= res!2228300 (or ((_ is EmptyExpr!14859) r!7292) ((_ is EmptyLang!14859) r!7292) ((_ is ElementMatch!14859) r!7292) ((_ is Union!14859) r!7292) (not ((_ is Concat!23704) r!7292))))))

(declare-fun b!5250844 () Bool)

(declare-fun e!3266744 () Bool)

(assert (=> b!5250844 (= e!3266744 e!3266738)))

(declare-fun res!2228277 () Bool)

(assert (=> b!5250844 (=> res!2228277 e!3266738)))

(declare-fun lt!2151771 () Bool)

(declare-fun lt!2151773 () Bool)

(assert (=> b!5250844 (= res!2228277 (and (not (= lt!2151808 lt!2151771)) (not lt!2151773)))))

(assert (=> b!5250844 (= lt!2151773 (matchRSpec!1962 lt!2151803 s!2326))))

(declare-fun lt!2151814 () Unit!152886)

(assert (=> b!5250844 (= lt!2151814 (mainMatchTheorem!1962 lt!2151803 s!2326))))

(assert (=> b!5250844 (= lt!2151771 (matchRSpec!1962 lt!2151806 s!2326))))

(declare-fun lt!2151767 () Unit!152886)

(assert (=> b!5250844 (= lt!2151767 (mainMatchTheorem!1962 lt!2151806 s!2326))))

(assert (=> b!5250844 (= lt!2151773 (matchZipper!1103 lt!2151812 s!2326))))

(assert (=> b!5250844 (= lt!2151773 (matchR!7044 lt!2151803 s!2326))))

(declare-fun lt!2151777 () List!60877)

(declare-fun lt!2151809 () Unit!152886)

(declare-fun theoremZipperRegexEquiv!293 ((InoxSet Context!8486) List!60877 Regex!14859 List!60878) Unit!152886)

(assert (=> b!5250844 (= lt!2151809 (theoremZipperRegexEquiv!293 lt!2151812 lt!2151777 lt!2151803 s!2326))))

(assert (=> b!5250844 (= lt!2151803 (generalisedConcat!528 lt!2151811))))

(assert (=> b!5250844 (= lt!2151771 lt!2151787)))

(assert (=> b!5250844 (= lt!2151771 (matchR!7044 lt!2151806 s!2326))))

(declare-fun lt!2151788 () Unit!152886)

(assert (=> b!5250844 (= lt!2151788 (theoremZipperRegexEquiv!293 lt!2151770 lt!2151781 lt!2151806 s!2326))))

(assert (=> b!5250844 (= lt!2151806 (generalisedConcat!528 lt!2151779))))

(declare-fun b!5250845 () Bool)

(assert (=> b!5250845 (= e!3266741 (matchZipper!1103 lt!2151802 (t!374061 s!2326)))))

(declare-fun b!5250846 () Bool)

(declare-fun Unit!152890 () Unit!152886)

(assert (=> b!5250846 (= e!3266736 Unit!152890)))

(declare-fun b!5250847 () Bool)

(declare-fun tp!1469104 () Bool)

(assert (=> b!5250847 (= e!3266733 tp!1469104)))

(declare-fun b!5250848 () Bool)

(assert (=> b!5250848 (= e!3266753 e!3266744)))

(declare-fun res!2228279 () Bool)

(assert (=> b!5250848 (=> res!2228279 e!3266744)))

(assert (=> b!5250848 (= res!2228279 (>= (zipperDepthTotal!40 lt!2151777) lt!2151807))))

(assert (=> b!5250848 (= lt!2151777 (Cons!60753 lt!2151780 Nil!60753))))

(declare-fun b!5250849 () Bool)

(declare-fun res!2228283 () Bool)

(assert (=> b!5250849 (=> res!2228283 e!3266756)))

(declare-fun isEmpty!32692 (List!60876) Bool)

(assert (=> b!5250849 (= res!2228283 (isEmpty!32692 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5250850 () Bool)

(declare-fun lt!2151782 () Regex!14859)

(declare-fun validRegex!6595 (Regex!14859) Bool)

(assert (=> b!5250850 (= e!3266754 (validRegex!6595 lt!2151782))))

(assert (=> b!5250850 (= (matchR!7044 lt!2151776 s!2326) (matchR!7044 lt!2151782 s!2326))))

(assert (=> b!5250850 (= lt!2151782 (Union!14859 (Concat!23704 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292)) (Concat!23704 (regTwo!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292))))))

(declare-fun lt!2151798 () Unit!152886)

(declare-fun lemmaConcatDistributesInUnion!4 (Regex!14859 Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> b!5250850 (= lt!2151798 (lemmaConcatDistributesInUnion!4 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292) s!2326))))

(declare-fun b!5250823 () Bool)

(declare-fun Unit!152891 () Unit!152886)

(assert (=> b!5250823 (= e!3266757 Unit!152891)))

(declare-fun lt!2151786 () Unit!152886)

(assert (=> b!5250823 (= lt!2151786 (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151785 lt!2151797 (t!374061 s!2326)))))

(declare-fun res!2228296 () Bool)

(assert (=> b!5250823 (= res!2228296 lt!2151799)))

(assert (=> b!5250823 (=> res!2228296 e!3266747)))

(assert (=> b!5250823 (= (matchZipper!1103 ((_ map or) lt!2151785 lt!2151797) (t!374061 s!2326)) e!3266747)))

(declare-fun res!2228292 () Bool)

(assert (=> start!554818 (=> (not res!2228292) (not e!3266750))))

(assert (=> start!554818 (= res!2228292 (validRegex!6595 r!7292))))

(assert (=> start!554818 e!3266750))

(assert (=> start!554818 e!3266737))

(declare-fun condSetEmpty!33527 () Bool)

(assert (=> start!554818 (= condSetEmpty!33527 (= z!1189 ((as const (Array Context!8486 Bool)) false)))))

(assert (=> start!554818 setRes!33527))

(assert (=> start!554818 e!3266758))

(assert (=> start!554818 e!3266748))

(declare-fun b!5250851 () Bool)

(declare-fun Unit!152892 () Unit!152886)

(assert (=> b!5250851 (= e!3266736 Unit!152892)))

(declare-fun lt!2151795 () Unit!152886)

(assert (=> b!5250851 (= lt!2151795 (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151802 lt!2151797 (t!374061 s!2326)))))

(declare-fun res!2228289 () Bool)

(assert (=> b!5250851 (= res!2228289 (matchZipper!1103 lt!2151802 (t!374061 s!2326)))))

(declare-fun e!3266752 () Bool)

(assert (=> b!5250851 (=> res!2228289 e!3266752)))

(assert (=> b!5250851 (= (matchZipper!1103 ((_ map or) lt!2151802 lt!2151797) (t!374061 s!2326)) e!3266752)))

(declare-fun b!5250852 () Bool)

(assert (=> b!5250852 (= e!3266752 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(declare-fun b!5250853 () Bool)

(declare-fun res!2228281 () Bool)

(assert (=> b!5250853 (=> res!2228281 e!3266755)))

(declare-fun generalisedUnion!788 (List!60876) Regex!14859)

(declare-fun unfocusZipperList!301 (List!60877) List!60876)

(assert (=> b!5250853 (= res!2228281 (not (= r!7292 (generalisedUnion!788 (unfocusZipperList!301 zl!343)))))))

(declare-fun b!5250854 () Bool)

(declare-fun Unit!152893 () Unit!152886)

(assert (=> b!5250854 (= e!3266757 Unit!152893)))

(assert (=> b!5250855 (= e!3266756 e!3266739)))

(declare-fun res!2228299 () Bool)

(assert (=> b!5250855 (=> res!2228299 e!3266739)))

(assert (=> b!5250855 (= res!2228299 (or (and ((_ is ElementMatch!14859) (regOne!30230 r!7292)) (= (c!908285 (regOne!30230 r!7292)) (h!67202 s!2326))) (not ((_ is Union!14859) (regOne!30230 r!7292)))))))

(declare-fun lt!2151794 () Unit!152886)

(assert (=> b!5250855 (= lt!2151794 e!3266734)))

(declare-fun c!908284 () Bool)

(assert (=> b!5250855 (= c!908284 (nullable!5028 (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(assert (=> b!5250855 (= (flatMap!586 z!1189 lambda!264417) (derivationStepZipperUp!231 (h!67201 zl!343) (h!67202 s!2326)))))

(declare-fun lt!2151805 () Unit!152886)

(assert (=> b!5250855 (= lt!2151805 (lemmaFlatMapOnSingletonSet!118 z!1189 (h!67201 zl!343) lambda!264417))))

(assert (=> b!5250855 (= lt!2151797 (derivationStepZipperUp!231 lt!2151789 (h!67202 s!2326)))))

(assert (=> b!5250855 (= lt!2151791 (derivationStepZipperDown!307 (h!67200 (exprs!4743 (h!67201 zl!343))) lt!2151789 (h!67202 s!2326)))))

(assert (=> b!5250855 (= lt!2151789 (Context!8487 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun lt!2151774 () (InoxSet Context!8486))

(assert (=> b!5250855 (= lt!2151774 (derivationStepZipperUp!231 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343))))) (h!67202 s!2326)))))

(assert (= (and start!554818 res!2228292) b!5250821))

(assert (= (and b!5250821 res!2228298) b!5250838))

(assert (= (and b!5250838 res!2228295) b!5250825))

(assert (= (and b!5250825 (not res!2228287)) b!5250842))

(assert (= (and b!5250842 (not res!2228280)) b!5250835))

(assert (= (and b!5250835 (not res!2228282)) b!5250819))

(assert (= (and b!5250819 (not res!2228290)) b!5250853))

(assert (= (and b!5250853 (not res!2228281)) b!5250843))

(assert (= (and b!5250843 (not res!2228300)) b!5250831))

(assert (= (and b!5250831 (not res!2228278)) b!5250849))

(assert (= (and b!5250849 (not res!2228283)) b!5250855))

(assert (= (and b!5250855 c!908284) b!5250822))

(assert (= (and b!5250855 (not c!908284)) b!5250816))

(assert (= (and b!5250822 (not res!2228291)) b!5250841))

(assert (= (and b!5250855 (not res!2228299)) b!5250832))

(assert (= (and b!5250832 (not res!2228301)) b!5250828))

(assert (= (and b!5250828 (not res!2228297)) b!5250845))

(assert (= (and b!5250828 res!2228294) b!5250834))

(assert (= (and b!5250828 (not res!2228293)) b!5250836))

(assert (= (and b!5250836 c!908283) b!5250823))

(assert (= (and b!5250836 (not c!908283)) b!5250854))

(assert (= (and b!5250823 (not res!2228296)) b!5250827))

(assert (= (and b!5250836 c!908282) b!5250851))

(assert (= (and b!5250836 (not c!908282)) b!5250846))

(assert (= (and b!5250851 (not res!2228289)) b!5250852))

(assert (= (and b!5250836 (not res!2228284)) b!5250826))

(assert (= (and b!5250836 (not res!2228303)) b!5250839))

(assert (= (and b!5250839 (not res!2228285)) b!5250817))

(assert (= (and b!5250817 (not res!2228288)) b!5250848))

(assert (= (and b!5250848 (not res!2228279)) b!5250844))

(assert (= (and b!5250844 (not res!2228277)) b!5250840))

(assert (= (and b!5250840 (not res!2228286)) b!5250820))

(assert (= (and b!5250820 (not res!2228302)) b!5250850))

(assert (= (and start!554818 ((_ is ElementMatch!14859) r!7292)) b!5250818))

(assert (= (and start!554818 ((_ is Concat!23704) r!7292)) b!5250837))

(assert (= (and start!554818 ((_ is Star!14859) r!7292)) b!5250824))

(assert (= (and start!554818 ((_ is Union!14859) r!7292)) b!5250829))

(assert (= (and start!554818 condSetEmpty!33527) setIsEmpty!33527))

(assert (= (and start!554818 (not condSetEmpty!33527)) setNonEmpty!33527))

(assert (= setNonEmpty!33527 b!5250847))

(assert (= b!5250815 b!5250833))

(assert (= (and start!554818 ((_ is Cons!60753) zl!343)) b!5250815))

(assert (= (and start!554818 ((_ is Cons!60754) s!2326)) b!5250830))

(declare-fun m!6294014 () Bool)

(assert (=> setNonEmpty!33527 m!6294014))

(declare-fun m!6294016 () Bool)

(assert (=> b!5250835 m!6294016))

(declare-fun m!6294018 () Bool)

(assert (=> b!5250851 m!6294018))

(declare-fun m!6294020 () Bool)

(assert (=> b!5250851 m!6294020))

(declare-fun m!6294022 () Bool)

(assert (=> b!5250851 m!6294022))

(declare-fun m!6294024 () Bool)

(assert (=> b!5250820 m!6294024))

(assert (=> b!5250834 m!6294020))

(declare-fun m!6294026 () Bool)

(assert (=> b!5250838 m!6294026))

(declare-fun m!6294028 () Bool)

(assert (=> b!5250817 m!6294028))

(declare-fun m!6294030 () Bool)

(assert (=> b!5250817 m!6294030))

(declare-fun m!6294032 () Bool)

(assert (=> b!5250849 m!6294032))

(declare-fun m!6294034 () Bool)

(assert (=> b!5250826 m!6294034))

(declare-fun m!6294036 () Bool)

(assert (=> b!5250853 m!6294036))

(assert (=> b!5250853 m!6294036))

(declare-fun m!6294038 () Bool)

(assert (=> b!5250853 m!6294038))

(declare-fun m!6294040 () Bool)

(assert (=> start!554818 m!6294040))

(declare-fun m!6294042 () Bool)

(assert (=> b!5250841 m!6294042))

(declare-fun m!6294044 () Bool)

(assert (=> b!5250831 m!6294044))

(declare-fun m!6294046 () Bool)

(assert (=> b!5250831 m!6294046))

(declare-fun m!6294048 () Bool)

(assert (=> b!5250831 m!6294048))

(declare-fun m!6294050 () Bool)

(assert (=> b!5250831 m!6294050))

(assert (=> b!5250831 m!6294050))

(declare-fun m!6294052 () Bool)

(assert (=> b!5250831 m!6294052))

(assert (=> b!5250831 m!6294046))

(declare-fun m!6294054 () Bool)

(assert (=> b!5250831 m!6294054))

(declare-fun m!6294056 () Bool)

(assert (=> b!5250850 m!6294056))

(declare-fun m!6294058 () Bool)

(assert (=> b!5250850 m!6294058))

(declare-fun m!6294060 () Bool)

(assert (=> b!5250850 m!6294060))

(declare-fun m!6294062 () Bool)

(assert (=> b!5250850 m!6294062))

(declare-fun m!6294064 () Bool)

(assert (=> b!5250815 m!6294064))

(declare-fun m!6294066 () Bool)

(assert (=> b!5250823 m!6294066))

(declare-fun m!6294068 () Bool)

(assert (=> b!5250823 m!6294068))

(assert (=> b!5250852 m!6294042))

(declare-fun m!6294070 () Bool)

(assert (=> b!5250825 m!6294070))

(declare-fun m!6294072 () Bool)

(assert (=> b!5250825 m!6294072))

(declare-fun m!6294074 () Bool)

(assert (=> b!5250825 m!6294074))

(declare-fun m!6294076 () Bool)

(assert (=> b!5250855 m!6294076))

(declare-fun m!6294078 () Bool)

(assert (=> b!5250855 m!6294078))

(declare-fun m!6294080 () Bool)

(assert (=> b!5250855 m!6294080))

(declare-fun m!6294082 () Bool)

(assert (=> b!5250855 m!6294082))

(declare-fun m!6294084 () Bool)

(assert (=> b!5250855 m!6294084))

(declare-fun m!6294086 () Bool)

(assert (=> b!5250855 m!6294086))

(declare-fun m!6294088 () Bool)

(assert (=> b!5250855 m!6294088))

(declare-fun m!6294090 () Bool)

(assert (=> b!5250842 m!6294090))

(declare-fun m!6294092 () Bool)

(assert (=> b!5250848 m!6294092))

(declare-fun m!6294094 () Bool)

(assert (=> b!5250822 m!6294094))

(declare-fun m!6294096 () Bool)

(assert (=> b!5250822 m!6294096))

(declare-fun m!6294098 () Bool)

(assert (=> b!5250822 m!6294098))

(declare-fun m!6294100 () Bool)

(assert (=> b!5250836 m!6294100))

(declare-fun m!6294102 () Bool)

(assert (=> b!5250836 m!6294102))

(declare-fun m!6294104 () Bool)

(assert (=> b!5250836 m!6294104))

(declare-fun m!6294106 () Bool)

(assert (=> b!5250836 m!6294106))

(declare-fun m!6294108 () Bool)

(assert (=> b!5250836 m!6294108))

(declare-fun m!6294110 () Bool)

(assert (=> b!5250836 m!6294110))

(declare-fun m!6294112 () Bool)

(assert (=> b!5250836 m!6294112))

(declare-fun m!6294114 () Bool)

(assert (=> b!5250836 m!6294114))

(declare-fun m!6294116 () Bool)

(assert (=> b!5250836 m!6294116))

(declare-fun m!6294118 () Bool)

(assert (=> b!5250836 m!6294118))

(declare-fun m!6294120 () Bool)

(assert (=> b!5250836 m!6294120))

(declare-fun m!6294122 () Bool)

(assert (=> b!5250836 m!6294122))

(assert (=> b!5250845 m!6294020))

(assert (=> b!5250827 m!6294042))

(declare-fun m!6294124 () Bool)

(assert (=> b!5250821 m!6294124))

(declare-fun m!6294126 () Bool)

(assert (=> b!5250844 m!6294126))

(assert (=> b!5250844 m!6294034))

(declare-fun m!6294128 () Bool)

(assert (=> b!5250844 m!6294128))

(declare-fun m!6294130 () Bool)

(assert (=> b!5250844 m!6294130))

(declare-fun m!6294132 () Bool)

(assert (=> b!5250844 m!6294132))

(declare-fun m!6294134 () Bool)

(assert (=> b!5250844 m!6294134))

(declare-fun m!6294136 () Bool)

(assert (=> b!5250844 m!6294136))

(declare-fun m!6294138 () Bool)

(assert (=> b!5250844 m!6294138))

(declare-fun m!6294140 () Bool)

(assert (=> b!5250844 m!6294140))

(declare-fun m!6294142 () Bool)

(assert (=> b!5250844 m!6294142))

(declare-fun m!6294144 () Bool)

(assert (=> b!5250844 m!6294144))

(declare-fun m!6294146 () Bool)

(assert (=> b!5250832 m!6294146))

(declare-fun m!6294148 () Bool)

(assert (=> b!5250832 m!6294148))

(assert (=> b!5250828 m!6294096))

(declare-fun m!6294150 () Bool)

(assert (=> b!5250828 m!6294150))

(declare-fun m!6294152 () Bool)

(assert (=> b!5250828 m!6294152))

(declare-fun m!6294154 () Bool)

(assert (=> b!5250828 m!6294154))

(check-sat (not b!5250832) (not b!5250822) (not b!5250841) (not b!5250850) (not b!5250835) (not b!5250815) (not b!5250844) (not b!5250849) (not b!5250847) (not b!5250824) (not b!5250848) (not b!5250852) (not b!5250855) (not setNonEmpty!33527) (not b!5250845) (not b!5250853) (not b!5250827) (not b!5250838) (not b!5250817) (not b!5250829) (not b!5250823) (not b!5250820) (not b!5250851) (not b!5250825) (not b!5250826) (not b!5250836) (not b!5250834) (not b!5250833) (not b!5250837) (not b!5250821) (not b!5250831) (not b!5250842) (not b!5250830) (not b!5250828) tp_is_empty!38971 (not start!554818))
(check-sat)
(get-model)

(declare-fun d!1691289 () Bool)

(assert (=> d!1691289 (= (isEmpty!32691 (t!374060 zl!343)) ((_ is Nil!60753) (t!374060 zl!343)))))

(assert (=> b!5250842 d!1691289))

(declare-fun d!1691291 () Bool)

(declare-fun e!3266761 () Bool)

(assert (=> d!1691291 (= (matchZipper!1103 ((_ map or) lt!2151785 lt!2151797) (t!374061 s!2326)) e!3266761)))

(declare-fun res!2228306 () Bool)

(assert (=> d!1691291 (=> res!2228306 e!3266761)))

(assert (=> d!1691291 (= res!2228306 (matchZipper!1103 lt!2151785 (t!374061 s!2326)))))

(declare-fun lt!2151817 () Unit!152886)

(declare-fun choose!39123 ((InoxSet Context!8486) (InoxSet Context!8486) List!60878) Unit!152886)

(assert (=> d!1691291 (= lt!2151817 (choose!39123 lt!2151785 lt!2151797 (t!374061 s!2326)))))

(assert (=> d!1691291 (= (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151785 lt!2151797 (t!374061 s!2326)) lt!2151817)))

(declare-fun b!5250864 () Bool)

(assert (=> b!5250864 (= e!3266761 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(assert (= (and d!1691291 (not res!2228306)) b!5250864))

(assert (=> d!1691291 m!6294068))

(assert (=> d!1691291 m!6294152))

(declare-fun m!6294156 () Bool)

(assert (=> d!1691291 m!6294156))

(assert (=> b!5250864 m!6294042))

(assert (=> b!5250823 d!1691291))

(declare-fun d!1691293 () Bool)

(declare-fun c!908288 () Bool)

(declare-fun isEmpty!32693 (List!60878) Bool)

(assert (=> d!1691293 (= c!908288 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266764 () Bool)

(assert (=> d!1691293 (= (matchZipper!1103 ((_ map or) lt!2151785 lt!2151797) (t!374061 s!2326)) e!3266764)))

(declare-fun b!5250869 () Bool)

(declare-fun nullableZipper!1269 ((InoxSet Context!8486)) Bool)

(assert (=> b!5250869 (= e!3266764 (nullableZipper!1269 ((_ map or) lt!2151785 lt!2151797)))))

(declare-fun b!5250870 () Bool)

(declare-fun derivationStepZipper!1113 ((InoxSet Context!8486) C!29988) (InoxSet Context!8486))

(declare-fun head!11256 (List!60878) C!29988)

(declare-fun tail!10353 (List!60878) List!60878)

(assert (=> b!5250870 (= e!3266764 (matchZipper!1103 (derivationStepZipper!1113 ((_ map or) lt!2151785 lt!2151797) (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691293 c!908288) b!5250869))

(assert (= (and d!1691293 (not c!908288)) b!5250870))

(declare-fun m!6294158 () Bool)

(assert (=> d!1691293 m!6294158))

(declare-fun m!6294160 () Bool)

(assert (=> b!5250869 m!6294160))

(declare-fun m!6294162 () Bool)

(assert (=> b!5250870 m!6294162))

(assert (=> b!5250870 m!6294162))

(declare-fun m!6294164 () Bool)

(assert (=> b!5250870 m!6294164))

(declare-fun m!6294166 () Bool)

(assert (=> b!5250870 m!6294166))

(assert (=> b!5250870 m!6294164))

(assert (=> b!5250870 m!6294166))

(declare-fun m!6294168 () Bool)

(assert (=> b!5250870 m!6294168))

(assert (=> b!5250823 d!1691293))

(declare-fun d!1691295 () Bool)

(assert (=> d!1691295 (= (matchR!7044 lt!2151803 s!2326) (matchRSpec!1962 lt!2151803 s!2326))))

(declare-fun lt!2151820 () Unit!152886)

(declare-fun choose!39124 (Regex!14859 List!60878) Unit!152886)

(assert (=> d!1691295 (= lt!2151820 (choose!39124 lt!2151803 s!2326))))

(assert (=> d!1691295 (validRegex!6595 lt!2151803)))

(assert (=> d!1691295 (= (mainMatchTheorem!1962 lt!2151803 s!2326) lt!2151820)))

(declare-fun bs!1218079 () Bool)

(assert (= bs!1218079 d!1691295))

(assert (=> bs!1218079 m!6294126))

(assert (=> bs!1218079 m!6294140))

(declare-fun m!6294170 () Bool)

(assert (=> bs!1218079 m!6294170))

(declare-fun m!6294172 () Bool)

(assert (=> bs!1218079 m!6294172))

(assert (=> b!5250844 d!1691295))

(declare-fun b!5250899 () Bool)

(declare-fun e!3266783 () Bool)

(declare-fun lt!2151823 () Bool)

(declare-fun call!372049 () Bool)

(assert (=> b!5250899 (= e!3266783 (= lt!2151823 call!372049))))

(declare-fun b!5250900 () Bool)

(declare-fun e!3266779 () Bool)

(declare-fun derivativeStep!4090 (Regex!14859 C!29988) Regex!14859)

(assert (=> b!5250900 (= e!3266779 (matchR!7044 (derivativeStep!4090 lt!2151806 (head!11256 s!2326)) (tail!10353 s!2326)))))

(declare-fun b!5250901 () Bool)

(declare-fun res!2228329 () Bool)

(declare-fun e!3266785 () Bool)

(assert (=> b!5250901 (=> (not res!2228329) (not e!3266785))))

(assert (=> b!5250901 (= res!2228329 (isEmpty!32693 (tail!10353 s!2326)))))

(declare-fun b!5250902 () Bool)

(declare-fun e!3266780 () Bool)

(declare-fun e!3266784 () Bool)

(assert (=> b!5250902 (= e!3266780 e!3266784)))

(declare-fun res!2228325 () Bool)

(assert (=> b!5250902 (=> (not res!2228325) (not e!3266784))))

(assert (=> b!5250902 (= res!2228325 (not lt!2151823))))

(declare-fun b!5250903 () Bool)

(declare-fun e!3266781 () Bool)

(assert (=> b!5250903 (= e!3266781 (not (= (head!11256 s!2326) (c!908285 lt!2151806))))))

(declare-fun b!5250904 () Bool)

(declare-fun e!3266782 () Bool)

(assert (=> b!5250904 (= e!3266782 (not lt!2151823))))

(declare-fun b!5250905 () Bool)

(declare-fun res!2228327 () Bool)

(assert (=> b!5250905 (=> (not res!2228327) (not e!3266785))))

(assert (=> b!5250905 (= res!2228327 (not call!372049))))

(declare-fun d!1691297 () Bool)

(assert (=> d!1691297 e!3266783))

(declare-fun c!908297 () Bool)

(assert (=> d!1691297 (= c!908297 ((_ is EmptyExpr!14859) lt!2151806))))

(assert (=> d!1691297 (= lt!2151823 e!3266779)))

(declare-fun c!908296 () Bool)

(assert (=> d!1691297 (= c!908296 (isEmpty!32693 s!2326))))

(assert (=> d!1691297 (validRegex!6595 lt!2151806)))

(assert (=> d!1691297 (= (matchR!7044 lt!2151806 s!2326) lt!2151823)))

(declare-fun b!5250906 () Bool)

(declare-fun res!2228324 () Bool)

(assert (=> b!5250906 (=> res!2228324 e!3266780)))

(assert (=> b!5250906 (= res!2228324 (not ((_ is ElementMatch!14859) lt!2151806)))))

(assert (=> b!5250906 (= e!3266782 e!3266780)))

(declare-fun b!5250907 () Bool)

(assert (=> b!5250907 (= e!3266783 e!3266782)))

(declare-fun c!908295 () Bool)

(assert (=> b!5250907 (= c!908295 ((_ is EmptyLang!14859) lt!2151806))))

(declare-fun b!5250908 () Bool)

(declare-fun res!2228328 () Bool)

(assert (=> b!5250908 (=> res!2228328 e!3266781)))

(assert (=> b!5250908 (= res!2228328 (not (isEmpty!32693 (tail!10353 s!2326))))))

(declare-fun b!5250909 () Bool)

(assert (=> b!5250909 (= e!3266785 (= (head!11256 s!2326) (c!908285 lt!2151806)))))

(declare-fun bm!372044 () Bool)

(assert (=> bm!372044 (= call!372049 (isEmpty!32693 s!2326))))

(declare-fun b!5250910 () Bool)

(assert (=> b!5250910 (= e!3266779 (nullable!5028 lt!2151806))))

(declare-fun b!5250911 () Bool)

(assert (=> b!5250911 (= e!3266784 e!3266781)))

(declare-fun res!2228330 () Bool)

(assert (=> b!5250911 (=> res!2228330 e!3266781)))

(assert (=> b!5250911 (= res!2228330 call!372049)))

(declare-fun b!5250912 () Bool)

(declare-fun res!2228326 () Bool)

(assert (=> b!5250912 (=> res!2228326 e!3266780)))

(assert (=> b!5250912 (= res!2228326 e!3266785)))

(declare-fun res!2228323 () Bool)

(assert (=> b!5250912 (=> (not res!2228323) (not e!3266785))))

(assert (=> b!5250912 (= res!2228323 lt!2151823)))

(assert (= (and d!1691297 c!908296) b!5250910))

(assert (= (and d!1691297 (not c!908296)) b!5250900))

(assert (= (and d!1691297 c!908297) b!5250899))

(assert (= (and d!1691297 (not c!908297)) b!5250907))

(assert (= (and b!5250907 c!908295) b!5250904))

(assert (= (and b!5250907 (not c!908295)) b!5250906))

(assert (= (and b!5250906 (not res!2228324)) b!5250912))

(assert (= (and b!5250912 res!2228323) b!5250905))

(assert (= (and b!5250905 res!2228327) b!5250901))

(assert (= (and b!5250901 res!2228329) b!5250909))

(assert (= (and b!5250912 (not res!2228326)) b!5250902))

(assert (= (and b!5250902 res!2228325) b!5250911))

(assert (= (and b!5250911 (not res!2228330)) b!5250908))

(assert (= (and b!5250908 (not res!2228328)) b!5250903))

(assert (= (or b!5250899 b!5250905 b!5250911) bm!372044))

(declare-fun m!6294174 () Bool)

(assert (=> d!1691297 m!6294174))

(declare-fun m!6294176 () Bool)

(assert (=> d!1691297 m!6294176))

(declare-fun m!6294178 () Bool)

(assert (=> b!5250903 m!6294178))

(declare-fun m!6294180 () Bool)

(assert (=> b!5250901 m!6294180))

(assert (=> b!5250901 m!6294180))

(declare-fun m!6294182 () Bool)

(assert (=> b!5250901 m!6294182))

(declare-fun m!6294184 () Bool)

(assert (=> b!5250910 m!6294184))

(assert (=> b!5250908 m!6294180))

(assert (=> b!5250908 m!6294180))

(assert (=> b!5250908 m!6294182))

(assert (=> b!5250909 m!6294178))

(assert (=> b!5250900 m!6294178))

(assert (=> b!5250900 m!6294178))

(declare-fun m!6294186 () Bool)

(assert (=> b!5250900 m!6294186))

(assert (=> b!5250900 m!6294180))

(assert (=> b!5250900 m!6294186))

(assert (=> b!5250900 m!6294180))

(declare-fun m!6294188 () Bool)

(assert (=> b!5250900 m!6294188))

(assert (=> bm!372044 m!6294174))

(assert (=> b!5250844 d!1691297))

(declare-fun d!1691299 () Bool)

(assert (=> d!1691299 (= (matchR!7044 lt!2151806 s!2326) (matchZipper!1103 lt!2151770 s!2326))))

(declare-fun lt!2151826 () Unit!152886)

(declare-fun choose!39125 ((InoxSet Context!8486) List!60877 Regex!14859 List!60878) Unit!152886)

(assert (=> d!1691299 (= lt!2151826 (choose!39125 lt!2151770 lt!2151781 lt!2151806 s!2326))))

(assert (=> d!1691299 (validRegex!6595 lt!2151806)))

(assert (=> d!1691299 (= (theoremZipperRegexEquiv!293 lt!2151770 lt!2151781 lt!2151806 s!2326) lt!2151826)))

(declare-fun bs!1218080 () Bool)

(assert (= bs!1218080 d!1691299))

(assert (=> bs!1218080 m!6294144))

(assert (=> bs!1218080 m!6294114))

(declare-fun m!6294190 () Bool)

(assert (=> bs!1218080 m!6294190))

(assert (=> bs!1218080 m!6294176))

(assert (=> b!5250844 d!1691299))

(declare-fun d!1691301 () Bool)

(assert (=> d!1691301 (= (matchR!7044 lt!2151803 s!2326) (matchZipper!1103 lt!2151812 s!2326))))

(declare-fun lt!2151827 () Unit!152886)

(assert (=> d!1691301 (= lt!2151827 (choose!39125 lt!2151812 lt!2151777 lt!2151803 s!2326))))

(assert (=> d!1691301 (validRegex!6595 lt!2151803)))

(assert (=> d!1691301 (= (theoremZipperRegexEquiv!293 lt!2151812 lt!2151777 lt!2151803 s!2326) lt!2151827)))

(declare-fun bs!1218081 () Bool)

(assert (= bs!1218081 d!1691301))

(assert (=> bs!1218081 m!6294126))

(assert (=> bs!1218081 m!6294034))

(declare-fun m!6294192 () Bool)

(assert (=> bs!1218081 m!6294192))

(assert (=> bs!1218081 m!6294172))

(assert (=> b!5250844 d!1691301))

(declare-fun bs!1218082 () Bool)

(declare-fun b!5250953 () Bool)

(assert (= bs!1218082 (and b!5250953 b!5250831)))

(declare-fun lambda!264422 () Int)

(assert (=> bs!1218082 (not (= lambda!264422 lambda!264415))))

(assert (=> bs!1218082 (not (= lambda!264422 lambda!264416))))

(assert (=> b!5250953 true))

(assert (=> b!5250953 true))

(declare-fun bs!1218083 () Bool)

(declare-fun b!5250951 () Bool)

(assert (= bs!1218083 (and b!5250951 b!5250831)))

(declare-fun lambda!264423 () Int)

(assert (=> bs!1218083 (not (= lambda!264423 lambda!264415))))

(assert (=> bs!1218083 (= (and (= (regOne!30230 lt!2151803) (regOne!30230 r!7292)) (= (regTwo!30230 lt!2151803) (regTwo!30230 r!7292))) (= lambda!264423 lambda!264416))))

(declare-fun bs!1218084 () Bool)

(assert (= bs!1218084 (and b!5250951 b!5250953)))

(assert (=> bs!1218084 (not (= lambda!264423 lambda!264422))))

(assert (=> b!5250951 true))

(assert (=> b!5250951 true))

(declare-fun b!5250945 () Bool)

(declare-fun c!908308 () Bool)

(assert (=> b!5250945 (= c!908308 ((_ is Union!14859) lt!2151803))))

(declare-fun e!3266807 () Bool)

(declare-fun e!3266806 () Bool)

(assert (=> b!5250945 (= e!3266807 e!3266806)))

(declare-fun b!5250946 () Bool)

(declare-fun res!2228347 () Bool)

(declare-fun e!3266808 () Bool)

(assert (=> b!5250946 (=> res!2228347 e!3266808)))

(declare-fun call!372054 () Bool)

(assert (=> b!5250946 (= res!2228347 call!372054)))

(declare-fun e!3266805 () Bool)

(assert (=> b!5250946 (= e!3266805 e!3266808)))

(declare-fun call!372055 () Bool)

(declare-fun bm!372049 () Bool)

(declare-fun c!908306 () Bool)

(assert (=> bm!372049 (= call!372055 (Exists!2040 (ite c!908306 lambda!264422 lambda!264423)))))

(declare-fun b!5250947 () Bool)

(assert (=> b!5250947 (= e!3266806 e!3266805)))

(assert (=> b!5250947 (= c!908306 ((_ is Star!14859) lt!2151803))))

(declare-fun bm!372050 () Bool)

(assert (=> bm!372050 (= call!372054 (isEmpty!32693 s!2326))))

(declare-fun b!5250948 () Bool)

(declare-fun e!3266809 () Bool)

(assert (=> b!5250948 (= e!3266809 call!372054)))

(declare-fun b!5250949 () Bool)

(declare-fun c!908309 () Bool)

(assert (=> b!5250949 (= c!908309 ((_ is ElementMatch!14859) lt!2151803))))

(declare-fun e!3266804 () Bool)

(assert (=> b!5250949 (= e!3266804 e!3266807)))

(declare-fun b!5250950 () Bool)

(assert (=> b!5250950 (= e!3266807 (= s!2326 (Cons!60754 (c!908285 lt!2151803) Nil!60754)))))

(declare-fun d!1691303 () Bool)

(declare-fun c!908307 () Bool)

(assert (=> d!1691303 (= c!908307 ((_ is EmptyExpr!14859) lt!2151803))))

(assert (=> d!1691303 (= (matchRSpec!1962 lt!2151803 s!2326) e!3266809)))

(assert (=> b!5250951 (= e!3266805 call!372055)))

(declare-fun b!5250952 () Bool)

(declare-fun e!3266810 () Bool)

(assert (=> b!5250952 (= e!3266810 (matchRSpec!1962 (regTwo!30231 lt!2151803) s!2326))))

(assert (=> b!5250953 (= e!3266808 call!372055)))

(declare-fun b!5250954 () Bool)

(assert (=> b!5250954 (= e!3266806 e!3266810)))

(declare-fun res!2228348 () Bool)

(assert (=> b!5250954 (= res!2228348 (matchRSpec!1962 (regOne!30231 lt!2151803) s!2326))))

(assert (=> b!5250954 (=> res!2228348 e!3266810)))

(declare-fun b!5250955 () Bool)

(assert (=> b!5250955 (= e!3266809 e!3266804)))

(declare-fun res!2228349 () Bool)

(assert (=> b!5250955 (= res!2228349 (not ((_ is EmptyLang!14859) lt!2151803)))))

(assert (=> b!5250955 (=> (not res!2228349) (not e!3266804))))

(assert (= (and d!1691303 c!908307) b!5250948))

(assert (= (and d!1691303 (not c!908307)) b!5250955))

(assert (= (and b!5250955 res!2228349) b!5250949))

(assert (= (and b!5250949 c!908309) b!5250950))

(assert (= (and b!5250949 (not c!908309)) b!5250945))

(assert (= (and b!5250945 c!908308) b!5250954))

(assert (= (and b!5250945 (not c!908308)) b!5250947))

(assert (= (and b!5250954 (not res!2228348)) b!5250952))

(assert (= (and b!5250947 c!908306) b!5250946))

(assert (= (and b!5250947 (not c!908306)) b!5250951))

(assert (= (and b!5250946 (not res!2228347)) b!5250953))

(assert (= (or b!5250953 b!5250951) bm!372049))

(assert (= (or b!5250948 b!5250946) bm!372050))

(declare-fun m!6294194 () Bool)

(assert (=> bm!372049 m!6294194))

(assert (=> bm!372050 m!6294174))

(declare-fun m!6294196 () Bool)

(assert (=> b!5250952 m!6294196))

(declare-fun m!6294198 () Bool)

(assert (=> b!5250954 m!6294198))

(assert (=> b!5250844 d!1691303))

(declare-fun bs!1218085 () Bool)

(declare-fun b!5250964 () Bool)

(assert (= bs!1218085 (and b!5250964 b!5250831)))

(declare-fun lambda!264424 () Int)

(assert (=> bs!1218085 (not (= lambda!264424 lambda!264415))))

(assert (=> bs!1218085 (not (= lambda!264424 lambda!264416))))

(declare-fun bs!1218086 () Bool)

(assert (= bs!1218086 (and b!5250964 b!5250953)))

(assert (=> bs!1218086 (= (and (= (reg!15188 lt!2151806) (reg!15188 lt!2151803)) (= lt!2151806 lt!2151803)) (= lambda!264424 lambda!264422))))

(declare-fun bs!1218087 () Bool)

(assert (= bs!1218087 (and b!5250964 b!5250951)))

(assert (=> bs!1218087 (not (= lambda!264424 lambda!264423))))

(assert (=> b!5250964 true))

(assert (=> b!5250964 true))

(declare-fun bs!1218088 () Bool)

(declare-fun b!5250962 () Bool)

(assert (= bs!1218088 (and b!5250962 b!5250964)))

(declare-fun lambda!264425 () Int)

(assert (=> bs!1218088 (not (= lambda!264425 lambda!264424))))

(declare-fun bs!1218089 () Bool)

(assert (= bs!1218089 (and b!5250962 b!5250953)))

(assert (=> bs!1218089 (not (= lambda!264425 lambda!264422))))

(declare-fun bs!1218090 () Bool)

(assert (= bs!1218090 (and b!5250962 b!5250831)))

(assert (=> bs!1218090 (= (and (= (regOne!30230 lt!2151806) (regOne!30230 r!7292)) (= (regTwo!30230 lt!2151806) (regTwo!30230 r!7292))) (= lambda!264425 lambda!264416))))

(declare-fun bs!1218091 () Bool)

(assert (= bs!1218091 (and b!5250962 b!5250951)))

(assert (=> bs!1218091 (= (and (= (regOne!30230 lt!2151806) (regOne!30230 lt!2151803)) (= (regTwo!30230 lt!2151806) (regTwo!30230 lt!2151803))) (= lambda!264425 lambda!264423))))

(assert (=> bs!1218090 (not (= lambda!264425 lambda!264415))))

(assert (=> b!5250962 true))

(assert (=> b!5250962 true))

(declare-fun b!5250956 () Bool)

(declare-fun c!908312 () Bool)

(assert (=> b!5250956 (= c!908312 ((_ is Union!14859) lt!2151806))))

(declare-fun e!3266814 () Bool)

(declare-fun e!3266813 () Bool)

(assert (=> b!5250956 (= e!3266814 e!3266813)))

(declare-fun b!5250957 () Bool)

(declare-fun res!2228350 () Bool)

(declare-fun e!3266815 () Bool)

(assert (=> b!5250957 (=> res!2228350 e!3266815)))

(declare-fun call!372056 () Bool)

(assert (=> b!5250957 (= res!2228350 call!372056)))

(declare-fun e!3266812 () Bool)

(assert (=> b!5250957 (= e!3266812 e!3266815)))

(declare-fun call!372057 () Bool)

(declare-fun bm!372051 () Bool)

(declare-fun c!908310 () Bool)

(assert (=> bm!372051 (= call!372057 (Exists!2040 (ite c!908310 lambda!264424 lambda!264425)))))

(declare-fun b!5250958 () Bool)

(assert (=> b!5250958 (= e!3266813 e!3266812)))

(assert (=> b!5250958 (= c!908310 ((_ is Star!14859) lt!2151806))))

(declare-fun bm!372052 () Bool)

(assert (=> bm!372052 (= call!372056 (isEmpty!32693 s!2326))))

(declare-fun b!5250959 () Bool)

(declare-fun e!3266816 () Bool)

(assert (=> b!5250959 (= e!3266816 call!372056)))

(declare-fun b!5250960 () Bool)

(declare-fun c!908313 () Bool)

(assert (=> b!5250960 (= c!908313 ((_ is ElementMatch!14859) lt!2151806))))

(declare-fun e!3266811 () Bool)

(assert (=> b!5250960 (= e!3266811 e!3266814)))

(declare-fun b!5250961 () Bool)

(assert (=> b!5250961 (= e!3266814 (= s!2326 (Cons!60754 (c!908285 lt!2151806) Nil!60754)))))

(declare-fun d!1691305 () Bool)

(declare-fun c!908311 () Bool)

(assert (=> d!1691305 (= c!908311 ((_ is EmptyExpr!14859) lt!2151806))))

(assert (=> d!1691305 (= (matchRSpec!1962 lt!2151806 s!2326) e!3266816)))

(assert (=> b!5250962 (= e!3266812 call!372057)))

(declare-fun b!5250963 () Bool)

(declare-fun e!3266817 () Bool)

(assert (=> b!5250963 (= e!3266817 (matchRSpec!1962 (regTwo!30231 lt!2151806) s!2326))))

(assert (=> b!5250964 (= e!3266815 call!372057)))

(declare-fun b!5250965 () Bool)

(assert (=> b!5250965 (= e!3266813 e!3266817)))

(declare-fun res!2228351 () Bool)

(assert (=> b!5250965 (= res!2228351 (matchRSpec!1962 (regOne!30231 lt!2151806) s!2326))))

(assert (=> b!5250965 (=> res!2228351 e!3266817)))

(declare-fun b!5250966 () Bool)

(assert (=> b!5250966 (= e!3266816 e!3266811)))

(declare-fun res!2228352 () Bool)

(assert (=> b!5250966 (= res!2228352 (not ((_ is EmptyLang!14859) lt!2151806)))))

(assert (=> b!5250966 (=> (not res!2228352) (not e!3266811))))

(assert (= (and d!1691305 c!908311) b!5250959))

(assert (= (and d!1691305 (not c!908311)) b!5250966))

(assert (= (and b!5250966 res!2228352) b!5250960))

(assert (= (and b!5250960 c!908313) b!5250961))

(assert (= (and b!5250960 (not c!908313)) b!5250956))

(assert (= (and b!5250956 c!908312) b!5250965))

(assert (= (and b!5250956 (not c!908312)) b!5250958))

(assert (= (and b!5250965 (not res!2228351)) b!5250963))

(assert (= (and b!5250958 c!908310) b!5250957))

(assert (= (and b!5250958 (not c!908310)) b!5250962))

(assert (= (and b!5250957 (not res!2228350)) b!5250964))

(assert (= (or b!5250964 b!5250962) bm!372051))

(assert (= (or b!5250959 b!5250957) bm!372052))

(declare-fun m!6294200 () Bool)

(assert (=> bm!372051 m!6294200))

(assert (=> bm!372052 m!6294174))

(declare-fun m!6294202 () Bool)

(assert (=> b!5250963 m!6294202))

(declare-fun m!6294204 () Bool)

(assert (=> b!5250965 m!6294204))

(assert (=> b!5250844 d!1691305))

(declare-fun b!5251016 () Bool)

(declare-fun e!3266853 () Bool)

(assert (=> b!5251016 (= e!3266853 (isEmpty!32692 (t!374059 lt!2151811)))))

(declare-fun b!5251017 () Bool)

(declare-fun e!3266850 () Bool)

(declare-fun lt!2151835 () Regex!14859)

(declare-fun head!11257 (List!60876) Regex!14859)

(assert (=> b!5251017 (= e!3266850 (= lt!2151835 (head!11257 lt!2151811)))))

(declare-fun b!5251018 () Bool)

(declare-fun e!3266851 () Bool)

(declare-fun e!3266849 () Bool)

(assert (=> b!5251018 (= e!3266851 e!3266849)))

(declare-fun c!908336 () Bool)

(assert (=> b!5251018 (= c!908336 (isEmpty!32692 lt!2151811))))

(declare-fun b!5251019 () Bool)

(declare-fun e!3266852 () Regex!14859)

(declare-fun e!3266848 () Regex!14859)

(assert (=> b!5251019 (= e!3266852 e!3266848)))

(declare-fun c!908334 () Bool)

(assert (=> b!5251019 (= c!908334 ((_ is Cons!60752) lt!2151811))))

(declare-fun b!5251020 () Bool)

(declare-fun isConcat!327 (Regex!14859) Bool)

(assert (=> b!5251020 (= e!3266850 (isConcat!327 lt!2151835))))

(declare-fun b!5251021 () Bool)

(assert (=> b!5251021 (= e!3266848 EmptyExpr!14859)))

(declare-fun b!5251022 () Bool)

(assert (=> b!5251022 (= e!3266852 (h!67200 lt!2151811))))

(declare-fun b!5251023 () Bool)

(assert (=> b!5251023 (= e!3266848 (Concat!23704 (h!67200 lt!2151811) (generalisedConcat!528 (t!374059 lt!2151811))))))

(declare-fun b!5251024 () Bool)

(assert (=> b!5251024 (= e!3266849 e!3266850)))

(declare-fun c!908333 () Bool)

(declare-fun tail!10354 (List!60876) List!60876)

(assert (=> b!5251024 (= c!908333 (isEmpty!32692 (tail!10354 lt!2151811)))))

(declare-fun d!1691309 () Bool)

(assert (=> d!1691309 e!3266851))

(declare-fun res!2228364 () Bool)

(assert (=> d!1691309 (=> (not res!2228364) (not e!3266851))))

(assert (=> d!1691309 (= res!2228364 (validRegex!6595 lt!2151835))))

(assert (=> d!1691309 (= lt!2151835 e!3266852)))

(declare-fun c!908335 () Bool)

(assert (=> d!1691309 (= c!908335 e!3266853)))

(declare-fun res!2228365 () Bool)

(assert (=> d!1691309 (=> (not res!2228365) (not e!3266853))))

(assert (=> d!1691309 (= res!2228365 ((_ is Cons!60752) lt!2151811))))

(declare-fun lambda!264430 () Int)

(declare-fun forall!14278 (List!60876 Int) Bool)

(assert (=> d!1691309 (forall!14278 lt!2151811 lambda!264430)))

(assert (=> d!1691309 (= (generalisedConcat!528 lt!2151811) lt!2151835)))

(declare-fun b!5251025 () Bool)

(declare-fun isEmptyExpr!804 (Regex!14859) Bool)

(assert (=> b!5251025 (= e!3266849 (isEmptyExpr!804 lt!2151835))))

(assert (= (and d!1691309 res!2228365) b!5251016))

(assert (= (and d!1691309 c!908335) b!5251022))

(assert (= (and d!1691309 (not c!908335)) b!5251019))

(assert (= (and b!5251019 c!908334) b!5251023))

(assert (= (and b!5251019 (not c!908334)) b!5251021))

(assert (= (and d!1691309 res!2228364) b!5251018))

(assert (= (and b!5251018 c!908336) b!5251025))

(assert (= (and b!5251018 (not c!908336)) b!5251024))

(assert (= (and b!5251024 c!908333) b!5251017))

(assert (= (and b!5251024 (not c!908333)) b!5251020))

(declare-fun m!6294220 () Bool)

(assert (=> b!5251016 m!6294220))

(declare-fun m!6294222 () Bool)

(assert (=> b!5251025 m!6294222))

(declare-fun m!6294224 () Bool)

(assert (=> b!5251017 m!6294224))

(declare-fun m!6294226 () Bool)

(assert (=> b!5251018 m!6294226))

(declare-fun m!6294228 () Bool)

(assert (=> b!5251020 m!6294228))

(declare-fun m!6294230 () Bool)

(assert (=> d!1691309 m!6294230))

(declare-fun m!6294232 () Bool)

(assert (=> d!1691309 m!6294232))

(declare-fun m!6294234 () Bool)

(assert (=> b!5251023 m!6294234))

(declare-fun m!6294236 () Bool)

(assert (=> b!5251024 m!6294236))

(assert (=> b!5251024 m!6294236))

(declare-fun m!6294238 () Bool)

(assert (=> b!5251024 m!6294238))

(assert (=> b!5250844 d!1691309))

(declare-fun bs!1218092 () Bool)

(declare-fun d!1691315 () Bool)

(assert (= bs!1218092 (and d!1691315 d!1691309)))

(declare-fun lambda!264432 () Int)

(assert (=> bs!1218092 (= lambda!264432 lambda!264430)))

(declare-fun b!5251036 () Bool)

(declare-fun e!3266865 () Bool)

(assert (=> b!5251036 (= e!3266865 (isEmpty!32692 (t!374059 lt!2151779)))))

(declare-fun b!5251037 () Bool)

(declare-fun e!3266862 () Bool)

(declare-fun lt!2151837 () Regex!14859)

(assert (=> b!5251037 (= e!3266862 (= lt!2151837 (head!11257 lt!2151779)))))

(declare-fun b!5251038 () Bool)

(declare-fun e!3266863 () Bool)

(declare-fun e!3266861 () Bool)

(assert (=> b!5251038 (= e!3266863 e!3266861)))

(declare-fun c!908344 () Bool)

(assert (=> b!5251038 (= c!908344 (isEmpty!32692 lt!2151779))))

(declare-fun b!5251039 () Bool)

(declare-fun e!3266864 () Regex!14859)

(declare-fun e!3266860 () Regex!14859)

(assert (=> b!5251039 (= e!3266864 e!3266860)))

(declare-fun c!908342 () Bool)

(assert (=> b!5251039 (= c!908342 ((_ is Cons!60752) lt!2151779))))

(declare-fun b!5251040 () Bool)

(assert (=> b!5251040 (= e!3266862 (isConcat!327 lt!2151837))))

(declare-fun b!5251041 () Bool)

(assert (=> b!5251041 (= e!3266860 EmptyExpr!14859)))

(declare-fun b!5251042 () Bool)

(assert (=> b!5251042 (= e!3266864 (h!67200 lt!2151779))))

(declare-fun b!5251043 () Bool)

(assert (=> b!5251043 (= e!3266860 (Concat!23704 (h!67200 lt!2151779) (generalisedConcat!528 (t!374059 lt!2151779))))))

(declare-fun b!5251044 () Bool)

(assert (=> b!5251044 (= e!3266861 e!3266862)))

(declare-fun c!908341 () Bool)

(assert (=> b!5251044 (= c!908341 (isEmpty!32692 (tail!10354 lt!2151779)))))

(assert (=> d!1691315 e!3266863))

(declare-fun res!2228368 () Bool)

(assert (=> d!1691315 (=> (not res!2228368) (not e!3266863))))

(assert (=> d!1691315 (= res!2228368 (validRegex!6595 lt!2151837))))

(assert (=> d!1691315 (= lt!2151837 e!3266864)))

(declare-fun c!908343 () Bool)

(assert (=> d!1691315 (= c!908343 e!3266865)))

(declare-fun res!2228369 () Bool)

(assert (=> d!1691315 (=> (not res!2228369) (not e!3266865))))

(assert (=> d!1691315 (= res!2228369 ((_ is Cons!60752) lt!2151779))))

(assert (=> d!1691315 (forall!14278 lt!2151779 lambda!264432)))

(assert (=> d!1691315 (= (generalisedConcat!528 lt!2151779) lt!2151837)))

(declare-fun b!5251045 () Bool)

(assert (=> b!5251045 (= e!3266861 (isEmptyExpr!804 lt!2151837))))

(assert (= (and d!1691315 res!2228369) b!5251036))

(assert (= (and d!1691315 c!908343) b!5251042))

(assert (= (and d!1691315 (not c!908343)) b!5251039))

(assert (= (and b!5251039 c!908342) b!5251043))

(assert (= (and b!5251039 (not c!908342)) b!5251041))

(assert (= (and d!1691315 res!2228368) b!5251038))

(assert (= (and b!5251038 c!908344) b!5251045))

(assert (= (and b!5251038 (not c!908344)) b!5251044))

(assert (= (and b!5251044 c!908341) b!5251037))

(assert (= (and b!5251044 (not c!908341)) b!5251040))

(declare-fun m!6294258 () Bool)

(assert (=> b!5251036 m!6294258))

(declare-fun m!6294260 () Bool)

(assert (=> b!5251045 m!6294260))

(declare-fun m!6294262 () Bool)

(assert (=> b!5251037 m!6294262))

(declare-fun m!6294266 () Bool)

(assert (=> b!5251038 m!6294266))

(declare-fun m!6294268 () Bool)

(assert (=> b!5251040 m!6294268))

(declare-fun m!6294270 () Bool)

(assert (=> d!1691315 m!6294270))

(declare-fun m!6294272 () Bool)

(assert (=> d!1691315 m!6294272))

(declare-fun m!6294274 () Bool)

(assert (=> b!5251043 m!6294274))

(declare-fun m!6294276 () Bool)

(assert (=> b!5251044 m!6294276))

(assert (=> b!5251044 m!6294276))

(declare-fun m!6294278 () Bool)

(assert (=> b!5251044 m!6294278))

(assert (=> b!5250844 d!1691315))

(declare-fun d!1691321 () Bool)

(assert (=> d!1691321 (= (matchR!7044 lt!2151806 s!2326) (matchRSpec!1962 lt!2151806 s!2326))))

(declare-fun lt!2151838 () Unit!152886)

(assert (=> d!1691321 (= lt!2151838 (choose!39124 lt!2151806 s!2326))))

(assert (=> d!1691321 (validRegex!6595 lt!2151806)))

(assert (=> d!1691321 (= (mainMatchTheorem!1962 lt!2151806 s!2326) lt!2151838)))

(declare-fun bs!1218094 () Bool)

(assert (= bs!1218094 d!1691321))

(assert (=> bs!1218094 m!6294144))

(assert (=> bs!1218094 m!6294128))

(declare-fun m!6294280 () Bool)

(assert (=> bs!1218094 m!6294280))

(assert (=> bs!1218094 m!6294176))

(assert (=> b!5250844 d!1691321))

(declare-fun b!5251046 () Bool)

(declare-fun e!3266870 () Bool)

(declare-fun lt!2151839 () Bool)

(declare-fun call!372058 () Bool)

(assert (=> b!5251046 (= e!3266870 (= lt!2151839 call!372058))))

(declare-fun b!5251047 () Bool)

(declare-fun e!3266866 () Bool)

(assert (=> b!5251047 (= e!3266866 (matchR!7044 (derivativeStep!4090 lt!2151803 (head!11256 s!2326)) (tail!10353 s!2326)))))

(declare-fun b!5251048 () Bool)

(declare-fun res!2228376 () Bool)

(declare-fun e!3266872 () Bool)

(assert (=> b!5251048 (=> (not res!2228376) (not e!3266872))))

(assert (=> b!5251048 (= res!2228376 (isEmpty!32693 (tail!10353 s!2326)))))

(declare-fun b!5251049 () Bool)

(declare-fun e!3266867 () Bool)

(declare-fun e!3266871 () Bool)

(assert (=> b!5251049 (= e!3266867 e!3266871)))

(declare-fun res!2228372 () Bool)

(assert (=> b!5251049 (=> (not res!2228372) (not e!3266871))))

(assert (=> b!5251049 (= res!2228372 (not lt!2151839))))

(declare-fun b!5251050 () Bool)

(declare-fun e!3266868 () Bool)

(assert (=> b!5251050 (= e!3266868 (not (= (head!11256 s!2326) (c!908285 lt!2151803))))))

(declare-fun b!5251051 () Bool)

(declare-fun e!3266869 () Bool)

(assert (=> b!5251051 (= e!3266869 (not lt!2151839))))

(declare-fun b!5251052 () Bool)

(declare-fun res!2228374 () Bool)

(assert (=> b!5251052 (=> (not res!2228374) (not e!3266872))))

(assert (=> b!5251052 (= res!2228374 (not call!372058))))

(declare-fun d!1691323 () Bool)

(assert (=> d!1691323 e!3266870))

(declare-fun c!908347 () Bool)

(assert (=> d!1691323 (= c!908347 ((_ is EmptyExpr!14859) lt!2151803))))

(assert (=> d!1691323 (= lt!2151839 e!3266866)))

(declare-fun c!908346 () Bool)

(assert (=> d!1691323 (= c!908346 (isEmpty!32693 s!2326))))

(assert (=> d!1691323 (validRegex!6595 lt!2151803)))

(assert (=> d!1691323 (= (matchR!7044 lt!2151803 s!2326) lt!2151839)))

(declare-fun b!5251053 () Bool)

(declare-fun res!2228371 () Bool)

(assert (=> b!5251053 (=> res!2228371 e!3266867)))

(assert (=> b!5251053 (= res!2228371 (not ((_ is ElementMatch!14859) lt!2151803)))))

(assert (=> b!5251053 (= e!3266869 e!3266867)))

(declare-fun b!5251054 () Bool)

(assert (=> b!5251054 (= e!3266870 e!3266869)))

(declare-fun c!908345 () Bool)

(assert (=> b!5251054 (= c!908345 ((_ is EmptyLang!14859) lt!2151803))))

(declare-fun b!5251055 () Bool)

(declare-fun res!2228375 () Bool)

(assert (=> b!5251055 (=> res!2228375 e!3266868)))

(assert (=> b!5251055 (= res!2228375 (not (isEmpty!32693 (tail!10353 s!2326))))))

(declare-fun b!5251056 () Bool)

(assert (=> b!5251056 (= e!3266872 (= (head!11256 s!2326) (c!908285 lt!2151803)))))

(declare-fun bm!372053 () Bool)

(assert (=> bm!372053 (= call!372058 (isEmpty!32693 s!2326))))

(declare-fun b!5251057 () Bool)

(assert (=> b!5251057 (= e!3266866 (nullable!5028 lt!2151803))))

(declare-fun b!5251058 () Bool)

(assert (=> b!5251058 (= e!3266871 e!3266868)))

(declare-fun res!2228377 () Bool)

(assert (=> b!5251058 (=> res!2228377 e!3266868)))

(assert (=> b!5251058 (= res!2228377 call!372058)))

(declare-fun b!5251059 () Bool)

(declare-fun res!2228373 () Bool)

(assert (=> b!5251059 (=> res!2228373 e!3266867)))

(assert (=> b!5251059 (= res!2228373 e!3266872)))

(declare-fun res!2228370 () Bool)

(assert (=> b!5251059 (=> (not res!2228370) (not e!3266872))))

(assert (=> b!5251059 (= res!2228370 lt!2151839)))

(assert (= (and d!1691323 c!908346) b!5251057))

(assert (= (and d!1691323 (not c!908346)) b!5251047))

(assert (= (and d!1691323 c!908347) b!5251046))

(assert (= (and d!1691323 (not c!908347)) b!5251054))

(assert (= (and b!5251054 c!908345) b!5251051))

(assert (= (and b!5251054 (not c!908345)) b!5251053))

(assert (= (and b!5251053 (not res!2228371)) b!5251059))

(assert (= (and b!5251059 res!2228370) b!5251052))

(assert (= (and b!5251052 res!2228374) b!5251048))

(assert (= (and b!5251048 res!2228376) b!5251056))

(assert (= (and b!5251059 (not res!2228373)) b!5251049))

(assert (= (and b!5251049 res!2228372) b!5251058))

(assert (= (and b!5251058 (not res!2228377)) b!5251055))

(assert (= (and b!5251055 (not res!2228375)) b!5251050))

(assert (= (or b!5251046 b!5251052 b!5251058) bm!372053))

(assert (=> d!1691323 m!6294174))

(assert (=> d!1691323 m!6294172))

(assert (=> b!5251050 m!6294178))

(assert (=> b!5251048 m!6294180))

(assert (=> b!5251048 m!6294180))

(assert (=> b!5251048 m!6294182))

(declare-fun m!6294282 () Bool)

(assert (=> b!5251057 m!6294282))

(assert (=> b!5251055 m!6294180))

(assert (=> b!5251055 m!6294180))

(assert (=> b!5251055 m!6294182))

(assert (=> b!5251056 m!6294178))

(assert (=> b!5251047 m!6294178))

(assert (=> b!5251047 m!6294178))

(declare-fun m!6294284 () Bool)

(assert (=> b!5251047 m!6294284))

(assert (=> b!5251047 m!6294180))

(assert (=> b!5251047 m!6294284))

(assert (=> b!5251047 m!6294180))

(declare-fun m!6294286 () Bool)

(assert (=> b!5251047 m!6294286))

(assert (=> bm!372053 m!6294174))

(assert (=> b!5250844 d!1691323))

(declare-fun d!1691325 () Bool)

(declare-fun c!908352 () Bool)

(assert (=> d!1691325 (= c!908352 (isEmpty!32693 s!2326))))

(declare-fun e!3266879 () Bool)

(assert (=> d!1691325 (= (matchZipper!1103 lt!2151812 s!2326) e!3266879)))

(declare-fun b!5251070 () Bool)

(assert (=> b!5251070 (= e!3266879 (nullableZipper!1269 lt!2151812))))

(declare-fun b!5251071 () Bool)

(assert (=> b!5251071 (= e!3266879 (matchZipper!1103 (derivationStepZipper!1113 lt!2151812 (head!11256 s!2326)) (tail!10353 s!2326)))))

(assert (= (and d!1691325 c!908352) b!5251070))

(assert (= (and d!1691325 (not c!908352)) b!5251071))

(assert (=> d!1691325 m!6294174))

(declare-fun m!6294288 () Bool)

(assert (=> b!5251070 m!6294288))

(assert (=> b!5251071 m!6294178))

(assert (=> b!5251071 m!6294178))

(declare-fun m!6294290 () Bool)

(assert (=> b!5251071 m!6294290))

(assert (=> b!5251071 m!6294180))

(assert (=> b!5251071 m!6294290))

(assert (=> b!5251071 m!6294180))

(declare-fun m!6294292 () Bool)

(assert (=> b!5251071 m!6294292))

(assert (=> b!5250844 d!1691325))

(declare-fun bs!1218095 () Bool)

(declare-fun d!1691327 () Bool)

(assert (= bs!1218095 (and d!1691327 d!1691309)))

(declare-fun lambda!264433 () Int)

(assert (=> bs!1218095 (= lambda!264433 lambda!264430)))

(declare-fun bs!1218096 () Bool)

(assert (= bs!1218096 (and d!1691327 d!1691315)))

(assert (=> bs!1218096 (= lambda!264433 lambda!264432)))

(declare-fun b!5251072 () Bool)

(declare-fun e!3266885 () Bool)

(assert (=> b!5251072 (= e!3266885 (isEmpty!32692 (t!374059 (t!374059 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5251073 () Bool)

(declare-fun e!3266882 () Bool)

(declare-fun lt!2151840 () Regex!14859)

(assert (=> b!5251073 (= e!3266882 (= lt!2151840 (head!11257 (t!374059 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5251074 () Bool)

(declare-fun e!3266883 () Bool)

(declare-fun e!3266881 () Bool)

(assert (=> b!5251074 (= e!3266883 e!3266881)))

(declare-fun c!908356 () Bool)

(assert (=> b!5251074 (= c!908356 (isEmpty!32692 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5251075 () Bool)

(declare-fun e!3266884 () Regex!14859)

(declare-fun e!3266880 () Regex!14859)

(assert (=> b!5251075 (= e!3266884 e!3266880)))

(declare-fun c!908354 () Bool)

(assert (=> b!5251075 (= c!908354 ((_ is Cons!60752) (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5251076 () Bool)

(assert (=> b!5251076 (= e!3266882 (isConcat!327 lt!2151840))))

(declare-fun b!5251077 () Bool)

(assert (=> b!5251077 (= e!3266880 EmptyExpr!14859)))

(declare-fun b!5251078 () Bool)

(assert (=> b!5251078 (= e!3266884 (h!67200 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5251079 () Bool)

(assert (=> b!5251079 (= e!3266880 (Concat!23704 (h!67200 (t!374059 (exprs!4743 (h!67201 zl!343)))) (generalisedConcat!528 (t!374059 (t!374059 (exprs!4743 (h!67201 zl!343)))))))))

(declare-fun b!5251080 () Bool)

(assert (=> b!5251080 (= e!3266881 e!3266882)))

(declare-fun c!908353 () Bool)

(assert (=> b!5251080 (= c!908353 (isEmpty!32692 (tail!10354 (t!374059 (exprs!4743 (h!67201 zl!343))))))))

(assert (=> d!1691327 e!3266883))

(declare-fun res!2228380 () Bool)

(assert (=> d!1691327 (=> (not res!2228380) (not e!3266883))))

(assert (=> d!1691327 (= res!2228380 (validRegex!6595 lt!2151840))))

(assert (=> d!1691327 (= lt!2151840 e!3266884)))

(declare-fun c!908355 () Bool)

(assert (=> d!1691327 (= c!908355 e!3266885)))

(declare-fun res!2228381 () Bool)

(assert (=> d!1691327 (=> (not res!2228381) (not e!3266885))))

(assert (=> d!1691327 (= res!2228381 ((_ is Cons!60752) (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(assert (=> d!1691327 (forall!14278 (t!374059 (exprs!4743 (h!67201 zl!343))) lambda!264433)))

(assert (=> d!1691327 (= (generalisedConcat!528 (t!374059 (exprs!4743 (h!67201 zl!343)))) lt!2151840)))

(declare-fun b!5251081 () Bool)

(assert (=> b!5251081 (= e!3266881 (isEmptyExpr!804 lt!2151840))))

(assert (= (and d!1691327 res!2228381) b!5251072))

(assert (= (and d!1691327 c!908355) b!5251078))

(assert (= (and d!1691327 (not c!908355)) b!5251075))

(assert (= (and b!5251075 c!908354) b!5251079))

(assert (= (and b!5251075 (not c!908354)) b!5251077))

(assert (= (and d!1691327 res!2228380) b!5251074))

(assert (= (and b!5251074 c!908356) b!5251081))

(assert (= (and b!5251074 (not c!908356)) b!5251080))

(assert (= (and b!5251080 c!908353) b!5251073))

(assert (= (and b!5251080 (not c!908353)) b!5251076))

(declare-fun m!6294300 () Bool)

(assert (=> b!5251072 m!6294300))

(declare-fun m!6294302 () Bool)

(assert (=> b!5251081 m!6294302))

(declare-fun m!6294304 () Bool)

(assert (=> b!5251073 m!6294304))

(assert (=> b!5251074 m!6294032))

(declare-fun m!6294306 () Bool)

(assert (=> b!5251076 m!6294306))

(declare-fun m!6294308 () Bool)

(assert (=> d!1691327 m!6294308))

(declare-fun m!6294310 () Bool)

(assert (=> d!1691327 m!6294310))

(declare-fun m!6294312 () Bool)

(assert (=> b!5251079 m!6294312))

(declare-fun m!6294314 () Bool)

(assert (=> b!5251080 m!6294314))

(assert (=> b!5251080 m!6294314))

(declare-fun m!6294316 () Bool)

(assert (=> b!5251080 m!6294316))

(assert (=> b!5250820 d!1691327))

(declare-fun d!1691331 () Bool)

(declare-fun e!3266897 () Bool)

(assert (=> d!1691331 e!3266897))

(declare-fun res!2228387 () Bool)

(assert (=> d!1691331 (=> (not res!2228387) (not e!3266897))))

(declare-fun lt!2151846 () List!60877)

(declare-fun noDuplicate!1225 (List!60877) Bool)

(assert (=> d!1691331 (= res!2228387 (noDuplicate!1225 lt!2151846))))

(declare-fun choose!39128 ((InoxSet Context!8486)) List!60877)

(assert (=> d!1691331 (= lt!2151846 (choose!39128 z!1189))))

(assert (=> d!1691331 (= (toList!8643 z!1189) lt!2151846)))

(declare-fun b!5251099 () Bool)

(declare-fun content!10792 (List!60877) (InoxSet Context!8486))

(assert (=> b!5251099 (= e!3266897 (= (content!10792 lt!2151846) z!1189))))

(assert (= (and d!1691331 res!2228387) b!5251099))

(declare-fun m!6294336 () Bool)

(assert (=> d!1691331 m!6294336))

(declare-fun m!6294338 () Bool)

(assert (=> d!1691331 m!6294338))

(declare-fun m!6294340 () Bool)

(assert (=> b!5251099 m!6294340))

(assert (=> b!5250821 d!1691331))

(declare-fun e!3266898 () Bool)

(declare-fun d!1691341 () Bool)

(assert (=> d!1691341 (= (matchZipper!1103 ((_ map or) lt!2151791 lt!2151797) (t!374061 s!2326)) e!3266898)))

(declare-fun res!2228388 () Bool)

(assert (=> d!1691341 (=> res!2228388 e!3266898)))

(assert (=> d!1691341 (= res!2228388 (matchZipper!1103 lt!2151791 (t!374061 s!2326)))))

(declare-fun lt!2151847 () Unit!152886)

(assert (=> d!1691341 (= lt!2151847 (choose!39123 lt!2151791 lt!2151797 (t!374061 s!2326)))))

(assert (=> d!1691341 (= (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151791 lt!2151797 (t!374061 s!2326)) lt!2151847)))

(declare-fun b!5251100 () Bool)

(assert (=> b!5251100 (= e!3266898 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(assert (= (and d!1691341 (not res!2228388)) b!5251100))

(assert (=> d!1691341 m!6294098))

(assert (=> d!1691341 m!6294096))

(declare-fun m!6294342 () Bool)

(assert (=> d!1691341 m!6294342))

(assert (=> b!5251100 m!6294042))

(assert (=> b!5250822 d!1691341))

(declare-fun d!1691343 () Bool)

(declare-fun c!908363 () Bool)

(assert (=> d!1691343 (= c!908363 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266899 () Bool)

(assert (=> d!1691343 (= (matchZipper!1103 lt!2151791 (t!374061 s!2326)) e!3266899)))

(declare-fun b!5251101 () Bool)

(assert (=> b!5251101 (= e!3266899 (nullableZipper!1269 lt!2151791))))

(declare-fun b!5251102 () Bool)

(assert (=> b!5251102 (= e!3266899 (matchZipper!1103 (derivationStepZipper!1113 lt!2151791 (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691343 c!908363) b!5251101))

(assert (= (and d!1691343 (not c!908363)) b!5251102))

(assert (=> d!1691343 m!6294158))

(declare-fun m!6294344 () Bool)

(assert (=> b!5251101 m!6294344))

(assert (=> b!5251102 m!6294162))

(assert (=> b!5251102 m!6294162))

(declare-fun m!6294346 () Bool)

(assert (=> b!5251102 m!6294346))

(assert (=> b!5251102 m!6294166))

(assert (=> b!5251102 m!6294346))

(assert (=> b!5251102 m!6294166))

(declare-fun m!6294348 () Bool)

(assert (=> b!5251102 m!6294348))

(assert (=> b!5250822 d!1691343))

(declare-fun d!1691345 () Bool)

(declare-fun c!908364 () Bool)

(assert (=> d!1691345 (= c!908364 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266900 () Bool)

(assert (=> d!1691345 (= (matchZipper!1103 ((_ map or) lt!2151791 lt!2151797) (t!374061 s!2326)) e!3266900)))

(declare-fun b!5251103 () Bool)

(assert (=> b!5251103 (= e!3266900 (nullableZipper!1269 ((_ map or) lt!2151791 lt!2151797)))))

(declare-fun b!5251104 () Bool)

(assert (=> b!5251104 (= e!3266900 (matchZipper!1103 (derivationStepZipper!1113 ((_ map or) lt!2151791 lt!2151797) (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691345 c!908364) b!5251103))

(assert (= (and d!1691345 (not c!908364)) b!5251104))

(assert (=> d!1691345 m!6294158))

(declare-fun m!6294350 () Bool)

(assert (=> b!5251103 m!6294350))

(assert (=> b!5251104 m!6294162))

(assert (=> b!5251104 m!6294162))

(declare-fun m!6294352 () Bool)

(assert (=> b!5251104 m!6294352))

(assert (=> b!5251104 m!6294166))

(assert (=> b!5251104 m!6294352))

(assert (=> b!5251104 m!6294166))

(declare-fun m!6294354 () Bool)

(assert (=> b!5251104 m!6294354))

(assert (=> b!5250822 d!1691345))

(declare-fun bm!372083 () Bool)

(declare-fun call!372088 () Bool)

(declare-fun c!908384 () Bool)

(assert (=> bm!372083 (= call!372088 (validRegex!6595 (ite c!908384 (regTwo!30231 r!7292) (regTwo!30230 r!7292))))))

(declare-fun b!5251156 () Bool)

(declare-fun e!3266939 () Bool)

(declare-fun e!3266933 () Bool)

(assert (=> b!5251156 (= e!3266939 e!3266933)))

(assert (=> b!5251156 (= c!908384 ((_ is Union!14859) r!7292))))

(declare-fun b!5251157 () Bool)

(declare-fun e!3266936 () Bool)

(assert (=> b!5251157 (= e!3266936 call!372088)))

(declare-fun bm!372084 () Bool)

(declare-fun call!372089 () Bool)

(declare-fun call!372090 () Bool)

(assert (=> bm!372084 (= call!372089 call!372090)))

(declare-fun b!5251158 () Bool)

(declare-fun e!3266938 () Bool)

(assert (=> b!5251158 (= e!3266938 e!3266936)))

(declare-fun res!2228403 () Bool)

(assert (=> b!5251158 (=> (not res!2228403) (not e!3266936))))

(assert (=> b!5251158 (= res!2228403 call!372089)))

(declare-fun b!5251159 () Bool)

(declare-fun res!2228405 () Bool)

(assert (=> b!5251159 (=> res!2228405 e!3266938)))

(assert (=> b!5251159 (= res!2228405 (not ((_ is Concat!23704) r!7292)))))

(assert (=> b!5251159 (= e!3266933 e!3266938)))

(declare-fun b!5251160 () Bool)

(declare-fun e!3266934 () Bool)

(assert (=> b!5251160 (= e!3266934 call!372090)))

(declare-fun b!5251162 () Bool)

(assert (=> b!5251162 (= e!3266939 e!3266934)))

(declare-fun res!2228406 () Bool)

(assert (=> b!5251162 (= res!2228406 (not (nullable!5028 (reg!15188 r!7292))))))

(assert (=> b!5251162 (=> (not res!2228406) (not e!3266934))))

(declare-fun b!5251163 () Bool)

(declare-fun e!3266937 () Bool)

(assert (=> b!5251163 (= e!3266937 call!372088)))

(declare-fun bm!372085 () Bool)

(declare-fun c!908385 () Bool)

(assert (=> bm!372085 (= call!372090 (validRegex!6595 (ite c!908385 (reg!15188 r!7292) (ite c!908384 (regOne!30231 r!7292) (regOne!30230 r!7292)))))))

(declare-fun b!5251164 () Bool)

(declare-fun e!3266935 () Bool)

(assert (=> b!5251164 (= e!3266935 e!3266939)))

(assert (=> b!5251164 (= c!908385 ((_ is Star!14859) r!7292))))

(declare-fun d!1691347 () Bool)

(declare-fun res!2228404 () Bool)

(assert (=> d!1691347 (=> res!2228404 e!3266935)))

(assert (=> d!1691347 (= res!2228404 ((_ is ElementMatch!14859) r!7292))))

(assert (=> d!1691347 (= (validRegex!6595 r!7292) e!3266935)))

(declare-fun b!5251161 () Bool)

(declare-fun res!2228402 () Bool)

(assert (=> b!5251161 (=> (not res!2228402) (not e!3266937))))

(assert (=> b!5251161 (= res!2228402 call!372089)))

(assert (=> b!5251161 (= e!3266933 e!3266937)))

(assert (= (and d!1691347 (not res!2228404)) b!5251164))

(assert (= (and b!5251164 c!908385) b!5251162))

(assert (= (and b!5251164 (not c!908385)) b!5251156))

(assert (= (and b!5251162 res!2228406) b!5251160))

(assert (= (and b!5251156 c!908384) b!5251161))

(assert (= (and b!5251156 (not c!908384)) b!5251159))

(assert (= (and b!5251161 res!2228402) b!5251163))

(assert (= (and b!5251159 (not res!2228405)) b!5251158))

(assert (= (and b!5251158 res!2228403) b!5251157))

(assert (= (or b!5251163 b!5251157) bm!372083))

(assert (= (or b!5251161 b!5251158) bm!372084))

(assert (= (or b!5251160 bm!372084) bm!372085))

(declare-fun m!6294366 () Bool)

(assert (=> bm!372083 m!6294366))

(declare-fun m!6294368 () Bool)

(assert (=> b!5251162 m!6294368))

(declare-fun m!6294370 () Bool)

(assert (=> bm!372085 m!6294370))

(assert (=> start!554818 d!1691347))

(declare-fun d!1691351 () Bool)

(declare-fun c!908390 () Bool)

(assert (=> d!1691351 (= c!908390 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266954 () Bool)

(assert (=> d!1691351 (= (matchZipper!1103 lt!2151797 (t!374061 s!2326)) e!3266954)))

(declare-fun b!5251183 () Bool)

(assert (=> b!5251183 (= e!3266954 (nullableZipper!1269 lt!2151797))))

(declare-fun b!5251184 () Bool)

(assert (=> b!5251184 (= e!3266954 (matchZipper!1103 (derivationStepZipper!1113 lt!2151797 (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691351 c!908390) b!5251183))

(assert (= (and d!1691351 (not c!908390)) b!5251184))

(assert (=> d!1691351 m!6294158))

(declare-fun m!6294372 () Bool)

(assert (=> b!5251183 m!6294372))

(assert (=> b!5251184 m!6294162))

(assert (=> b!5251184 m!6294162))

(declare-fun m!6294374 () Bool)

(assert (=> b!5251184 m!6294374))

(assert (=> b!5251184 m!6294166))

(assert (=> b!5251184 m!6294374))

(assert (=> b!5251184 m!6294166))

(declare-fun m!6294376 () Bool)

(assert (=> b!5251184 m!6294376))

(assert (=> b!5250841 d!1691351))

(assert (=> b!5250828 d!1691343))

(declare-fun d!1691353 () Bool)

(declare-fun c!908391 () Bool)

(assert (=> d!1691353 (= c!908391 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266955 () Bool)

(assert (=> d!1691353 (= (matchZipper!1103 lt!2151778 (t!374061 s!2326)) e!3266955)))

(declare-fun b!5251185 () Bool)

(assert (=> b!5251185 (= e!3266955 (nullableZipper!1269 lt!2151778))))

(declare-fun b!5251186 () Bool)

(assert (=> b!5251186 (= e!3266955 (matchZipper!1103 (derivationStepZipper!1113 lt!2151778 (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691353 c!908391) b!5251185))

(assert (= (and d!1691353 (not c!908391)) b!5251186))

(assert (=> d!1691353 m!6294158))

(declare-fun m!6294378 () Bool)

(assert (=> b!5251185 m!6294378))

(assert (=> b!5251186 m!6294162))

(assert (=> b!5251186 m!6294162))

(declare-fun m!6294380 () Bool)

(assert (=> b!5251186 m!6294380))

(assert (=> b!5251186 m!6294166))

(assert (=> b!5251186 m!6294380))

(assert (=> b!5251186 m!6294166))

(declare-fun m!6294382 () Bool)

(assert (=> b!5251186 m!6294382))

(assert (=> b!5250828 d!1691353))

(declare-fun d!1691355 () Bool)

(declare-fun c!908392 () Bool)

(assert (=> d!1691355 (= c!908392 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266956 () Bool)

(assert (=> d!1691355 (= (matchZipper!1103 lt!2151785 (t!374061 s!2326)) e!3266956)))

(declare-fun b!5251187 () Bool)

(assert (=> b!5251187 (= e!3266956 (nullableZipper!1269 lt!2151785))))

(declare-fun b!5251188 () Bool)

(assert (=> b!5251188 (= e!3266956 (matchZipper!1103 (derivationStepZipper!1113 lt!2151785 (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691355 c!908392) b!5251187))

(assert (= (and d!1691355 (not c!908392)) b!5251188))

(assert (=> d!1691355 m!6294158))

(declare-fun m!6294384 () Bool)

(assert (=> b!5251187 m!6294384))

(assert (=> b!5251188 m!6294162))

(assert (=> b!5251188 m!6294162))

(declare-fun m!6294386 () Bool)

(assert (=> b!5251188 m!6294386))

(assert (=> b!5251188 m!6294166))

(assert (=> b!5251188 m!6294386))

(assert (=> b!5251188 m!6294166))

(declare-fun m!6294388 () Bool)

(assert (=> b!5251188 m!6294388))

(assert (=> b!5250828 d!1691355))

(declare-fun e!3266957 () Bool)

(declare-fun d!1691357 () Bool)

(assert (=> d!1691357 (= (matchZipper!1103 ((_ map or) lt!2151785 lt!2151802) (t!374061 s!2326)) e!3266957)))

(declare-fun res!2228417 () Bool)

(assert (=> d!1691357 (=> res!2228417 e!3266957)))

(assert (=> d!1691357 (= res!2228417 (matchZipper!1103 lt!2151785 (t!374061 s!2326)))))

(declare-fun lt!2151848 () Unit!152886)

(assert (=> d!1691357 (= lt!2151848 (choose!39123 lt!2151785 lt!2151802 (t!374061 s!2326)))))

(assert (=> d!1691357 (= (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151785 lt!2151802 (t!374061 s!2326)) lt!2151848)))

(declare-fun b!5251189 () Bool)

(assert (=> b!5251189 (= e!3266957 (matchZipper!1103 lt!2151802 (t!374061 s!2326)))))

(assert (= (and d!1691357 (not res!2228417)) b!5251189))

(declare-fun m!6294390 () Bool)

(assert (=> d!1691357 m!6294390))

(assert (=> d!1691357 m!6294152))

(declare-fun m!6294392 () Bool)

(assert (=> d!1691357 m!6294392))

(assert (=> b!5251189 m!6294020))

(assert (=> b!5250828 d!1691357))

(declare-fun d!1691359 () Bool)

(declare-fun lt!2151851 () Int)

(assert (=> d!1691359 (>= lt!2151851 0)))

(declare-fun e!3266967 () Int)

(assert (=> d!1691359 (= lt!2151851 e!3266967)))

(declare-fun c!908397 () Bool)

(assert (=> d!1691359 (= c!908397 ((_ is Cons!60753) lt!2151777))))

(assert (=> d!1691359 (= (zipperDepthTotal!40 lt!2151777) lt!2151851)))

(declare-fun b!5251203 () Bool)

(declare-fun contextDepthTotal!27 (Context!8486) Int)

(assert (=> b!5251203 (= e!3266967 (+ (contextDepthTotal!27 (h!67201 lt!2151777)) (zipperDepthTotal!40 (t!374060 lt!2151777))))))

(declare-fun b!5251204 () Bool)

(assert (=> b!5251204 (= e!3266967 0)))

(assert (= (and d!1691359 c!908397) b!5251203))

(assert (= (and d!1691359 (not c!908397)) b!5251204))

(declare-fun m!6294400 () Bool)

(assert (=> b!5251203 m!6294400))

(declare-fun m!6294402 () Bool)

(assert (=> b!5251203 m!6294402))

(assert (=> b!5250848 d!1691359))

(declare-fun d!1691363 () Bool)

(assert (=> d!1691363 (= (isEmpty!32692 (t!374059 (exprs!4743 (h!67201 zl!343)))) ((_ is Nil!60752) (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(assert (=> b!5250849 d!1691363))

(declare-fun bs!1218099 () Bool)

(declare-fun b!5251213 () Bool)

(assert (= bs!1218099 (and b!5251213 b!5250964)))

(declare-fun lambda!264434 () Int)

(assert (=> bs!1218099 (= (and (= (reg!15188 r!7292) (reg!15188 lt!2151806)) (= r!7292 lt!2151806)) (= lambda!264434 lambda!264424))))

(declare-fun bs!1218100 () Bool)

(assert (= bs!1218100 (and b!5251213 b!5250953)))

(assert (=> bs!1218100 (= (and (= (reg!15188 r!7292) (reg!15188 lt!2151803)) (= r!7292 lt!2151803)) (= lambda!264434 lambda!264422))))

(declare-fun bs!1218101 () Bool)

(assert (= bs!1218101 (and b!5251213 b!5250831)))

(assert (=> bs!1218101 (not (= lambda!264434 lambda!264416))))

(declare-fun bs!1218102 () Bool)

(assert (= bs!1218102 (and b!5251213 b!5250951)))

(assert (=> bs!1218102 (not (= lambda!264434 lambda!264423))))

(declare-fun bs!1218103 () Bool)

(assert (= bs!1218103 (and b!5251213 b!5250962)))

(assert (=> bs!1218103 (not (= lambda!264434 lambda!264425))))

(assert (=> bs!1218101 (not (= lambda!264434 lambda!264415))))

(assert (=> b!5251213 true))

(assert (=> b!5251213 true))

(declare-fun bs!1218104 () Bool)

(declare-fun b!5251211 () Bool)

(assert (= bs!1218104 (and b!5251211 b!5250953)))

(declare-fun lambda!264435 () Int)

(assert (=> bs!1218104 (not (= lambda!264435 lambda!264422))))

(declare-fun bs!1218105 () Bool)

(assert (= bs!1218105 (and b!5251211 b!5250831)))

(assert (=> bs!1218105 (= lambda!264435 lambda!264416)))

(declare-fun bs!1218106 () Bool)

(assert (= bs!1218106 (and b!5251211 b!5250951)))

(assert (=> bs!1218106 (= (and (= (regOne!30230 r!7292) (regOne!30230 lt!2151803)) (= (regTwo!30230 r!7292) (regTwo!30230 lt!2151803))) (= lambda!264435 lambda!264423))))

(declare-fun bs!1218107 () Bool)

(assert (= bs!1218107 (and b!5251211 b!5250962)))

(assert (=> bs!1218107 (= (and (= (regOne!30230 r!7292) (regOne!30230 lt!2151806)) (= (regTwo!30230 r!7292) (regTwo!30230 lt!2151806))) (= lambda!264435 lambda!264425))))

(assert (=> bs!1218105 (not (= lambda!264435 lambda!264415))))

(declare-fun bs!1218108 () Bool)

(assert (= bs!1218108 (and b!5251211 b!5251213)))

(assert (=> bs!1218108 (not (= lambda!264435 lambda!264434))))

(declare-fun bs!1218109 () Bool)

(assert (= bs!1218109 (and b!5251211 b!5250964)))

(assert (=> bs!1218109 (not (= lambda!264435 lambda!264424))))

(assert (=> b!5251211 true))

(assert (=> b!5251211 true))

(declare-fun b!5251205 () Bool)

(declare-fun c!908400 () Bool)

(assert (=> b!5251205 (= c!908400 ((_ is Union!14859) r!7292))))

(declare-fun e!3266971 () Bool)

(declare-fun e!3266970 () Bool)

(assert (=> b!5251205 (= e!3266971 e!3266970)))

(declare-fun b!5251206 () Bool)

(declare-fun res!2228423 () Bool)

(declare-fun e!3266972 () Bool)

(assert (=> b!5251206 (=> res!2228423 e!3266972)))

(declare-fun call!372100 () Bool)

(assert (=> b!5251206 (= res!2228423 call!372100)))

(declare-fun e!3266969 () Bool)

(assert (=> b!5251206 (= e!3266969 e!3266972)))

(declare-fun call!372101 () Bool)

(declare-fun c!908398 () Bool)

(declare-fun bm!372095 () Bool)

(assert (=> bm!372095 (= call!372101 (Exists!2040 (ite c!908398 lambda!264434 lambda!264435)))))

(declare-fun b!5251207 () Bool)

(assert (=> b!5251207 (= e!3266970 e!3266969)))

(assert (=> b!5251207 (= c!908398 ((_ is Star!14859) r!7292))))

(declare-fun bm!372096 () Bool)

(assert (=> bm!372096 (= call!372100 (isEmpty!32693 s!2326))))

(declare-fun b!5251208 () Bool)

(declare-fun e!3266973 () Bool)

(assert (=> b!5251208 (= e!3266973 call!372100)))

(declare-fun b!5251209 () Bool)

(declare-fun c!908401 () Bool)

(assert (=> b!5251209 (= c!908401 ((_ is ElementMatch!14859) r!7292))))

(declare-fun e!3266968 () Bool)

(assert (=> b!5251209 (= e!3266968 e!3266971)))

(declare-fun b!5251210 () Bool)

(assert (=> b!5251210 (= e!3266971 (= s!2326 (Cons!60754 (c!908285 r!7292) Nil!60754)))))

(declare-fun d!1691365 () Bool)

(declare-fun c!908399 () Bool)

(assert (=> d!1691365 (= c!908399 ((_ is EmptyExpr!14859) r!7292))))

(assert (=> d!1691365 (= (matchRSpec!1962 r!7292 s!2326) e!3266973)))

(assert (=> b!5251211 (= e!3266969 call!372101)))

(declare-fun b!5251212 () Bool)

(declare-fun e!3266974 () Bool)

(assert (=> b!5251212 (= e!3266974 (matchRSpec!1962 (regTwo!30231 r!7292) s!2326))))

(assert (=> b!5251213 (= e!3266972 call!372101)))

(declare-fun b!5251214 () Bool)

(assert (=> b!5251214 (= e!3266970 e!3266974)))

(declare-fun res!2228424 () Bool)

(assert (=> b!5251214 (= res!2228424 (matchRSpec!1962 (regOne!30231 r!7292) s!2326))))

(assert (=> b!5251214 (=> res!2228424 e!3266974)))

(declare-fun b!5251215 () Bool)

(assert (=> b!5251215 (= e!3266973 e!3266968)))

(declare-fun res!2228425 () Bool)

(assert (=> b!5251215 (= res!2228425 (not ((_ is EmptyLang!14859) r!7292)))))

(assert (=> b!5251215 (=> (not res!2228425) (not e!3266968))))

(assert (= (and d!1691365 c!908399) b!5251208))

(assert (= (and d!1691365 (not c!908399)) b!5251215))

(assert (= (and b!5251215 res!2228425) b!5251209))

(assert (= (and b!5251209 c!908401) b!5251210))

(assert (= (and b!5251209 (not c!908401)) b!5251205))

(assert (= (and b!5251205 c!908400) b!5251214))

(assert (= (and b!5251205 (not c!908400)) b!5251207))

(assert (= (and b!5251214 (not res!2228424)) b!5251212))

(assert (= (and b!5251207 c!908398) b!5251206))

(assert (= (and b!5251207 (not c!908398)) b!5251211))

(assert (= (and b!5251206 (not res!2228423)) b!5251213))

(assert (= (or b!5251213 b!5251211) bm!372095))

(assert (= (or b!5251208 b!5251206) bm!372096))

(declare-fun m!6294404 () Bool)

(assert (=> bm!372095 m!6294404))

(assert (=> bm!372096 m!6294174))

(declare-fun m!6294406 () Bool)

(assert (=> b!5251212 m!6294406))

(declare-fun m!6294408 () Bool)

(assert (=> b!5251214 m!6294408))

(assert (=> b!5250825 d!1691365))

(declare-fun b!5251216 () Bool)

(declare-fun e!3266979 () Bool)

(declare-fun lt!2151852 () Bool)

(declare-fun call!372102 () Bool)

(assert (=> b!5251216 (= e!3266979 (= lt!2151852 call!372102))))

(declare-fun b!5251217 () Bool)

(declare-fun e!3266975 () Bool)

(assert (=> b!5251217 (= e!3266975 (matchR!7044 (derivativeStep!4090 r!7292 (head!11256 s!2326)) (tail!10353 s!2326)))))

(declare-fun b!5251218 () Bool)

(declare-fun res!2228432 () Bool)

(declare-fun e!3266981 () Bool)

(assert (=> b!5251218 (=> (not res!2228432) (not e!3266981))))

(assert (=> b!5251218 (= res!2228432 (isEmpty!32693 (tail!10353 s!2326)))))

(declare-fun b!5251219 () Bool)

(declare-fun e!3266976 () Bool)

(declare-fun e!3266980 () Bool)

(assert (=> b!5251219 (= e!3266976 e!3266980)))

(declare-fun res!2228428 () Bool)

(assert (=> b!5251219 (=> (not res!2228428) (not e!3266980))))

(assert (=> b!5251219 (= res!2228428 (not lt!2151852))))

(declare-fun b!5251220 () Bool)

(declare-fun e!3266977 () Bool)

(assert (=> b!5251220 (= e!3266977 (not (= (head!11256 s!2326) (c!908285 r!7292))))))

(declare-fun b!5251221 () Bool)

(declare-fun e!3266978 () Bool)

(assert (=> b!5251221 (= e!3266978 (not lt!2151852))))

(declare-fun b!5251222 () Bool)

(declare-fun res!2228430 () Bool)

(assert (=> b!5251222 (=> (not res!2228430) (not e!3266981))))

(assert (=> b!5251222 (= res!2228430 (not call!372102))))

(declare-fun d!1691367 () Bool)

(assert (=> d!1691367 e!3266979))

(declare-fun c!908404 () Bool)

(assert (=> d!1691367 (= c!908404 ((_ is EmptyExpr!14859) r!7292))))

(assert (=> d!1691367 (= lt!2151852 e!3266975)))

(declare-fun c!908403 () Bool)

(assert (=> d!1691367 (= c!908403 (isEmpty!32693 s!2326))))

(assert (=> d!1691367 (validRegex!6595 r!7292)))

(assert (=> d!1691367 (= (matchR!7044 r!7292 s!2326) lt!2151852)))

(declare-fun b!5251223 () Bool)

(declare-fun res!2228427 () Bool)

(assert (=> b!5251223 (=> res!2228427 e!3266976)))

(assert (=> b!5251223 (= res!2228427 (not ((_ is ElementMatch!14859) r!7292)))))

(assert (=> b!5251223 (= e!3266978 e!3266976)))

(declare-fun b!5251224 () Bool)

(assert (=> b!5251224 (= e!3266979 e!3266978)))

(declare-fun c!908402 () Bool)

(assert (=> b!5251224 (= c!908402 ((_ is EmptyLang!14859) r!7292))))

(declare-fun b!5251225 () Bool)

(declare-fun res!2228431 () Bool)

(assert (=> b!5251225 (=> res!2228431 e!3266977)))

(assert (=> b!5251225 (= res!2228431 (not (isEmpty!32693 (tail!10353 s!2326))))))

(declare-fun b!5251226 () Bool)

(assert (=> b!5251226 (= e!3266981 (= (head!11256 s!2326) (c!908285 r!7292)))))

(declare-fun bm!372097 () Bool)

(assert (=> bm!372097 (= call!372102 (isEmpty!32693 s!2326))))

(declare-fun b!5251227 () Bool)

(assert (=> b!5251227 (= e!3266975 (nullable!5028 r!7292))))

(declare-fun b!5251228 () Bool)

(assert (=> b!5251228 (= e!3266980 e!3266977)))

(declare-fun res!2228433 () Bool)

(assert (=> b!5251228 (=> res!2228433 e!3266977)))

(assert (=> b!5251228 (= res!2228433 call!372102)))

(declare-fun b!5251229 () Bool)

(declare-fun res!2228429 () Bool)

(assert (=> b!5251229 (=> res!2228429 e!3266976)))

(assert (=> b!5251229 (= res!2228429 e!3266981)))

(declare-fun res!2228426 () Bool)

(assert (=> b!5251229 (=> (not res!2228426) (not e!3266981))))

(assert (=> b!5251229 (= res!2228426 lt!2151852)))

(assert (= (and d!1691367 c!908403) b!5251227))

(assert (= (and d!1691367 (not c!908403)) b!5251217))

(assert (= (and d!1691367 c!908404) b!5251216))

(assert (= (and d!1691367 (not c!908404)) b!5251224))

(assert (= (and b!5251224 c!908402) b!5251221))

(assert (= (and b!5251224 (not c!908402)) b!5251223))

(assert (= (and b!5251223 (not res!2228427)) b!5251229))

(assert (= (and b!5251229 res!2228426) b!5251222))

(assert (= (and b!5251222 res!2228430) b!5251218))

(assert (= (and b!5251218 res!2228432) b!5251226))

(assert (= (and b!5251229 (not res!2228429)) b!5251219))

(assert (= (and b!5251219 res!2228428) b!5251228))

(assert (= (and b!5251228 (not res!2228433)) b!5251225))

(assert (= (and b!5251225 (not res!2228431)) b!5251220))

(assert (= (or b!5251216 b!5251222 b!5251228) bm!372097))

(assert (=> d!1691367 m!6294174))

(assert (=> d!1691367 m!6294040))

(assert (=> b!5251220 m!6294178))

(assert (=> b!5251218 m!6294180))

(assert (=> b!5251218 m!6294180))

(assert (=> b!5251218 m!6294182))

(declare-fun m!6294410 () Bool)

(assert (=> b!5251227 m!6294410))

(assert (=> b!5251225 m!6294180))

(assert (=> b!5251225 m!6294180))

(assert (=> b!5251225 m!6294182))

(assert (=> b!5251226 m!6294178))

(assert (=> b!5251217 m!6294178))

(assert (=> b!5251217 m!6294178))

(declare-fun m!6294412 () Bool)

(assert (=> b!5251217 m!6294412))

(assert (=> b!5251217 m!6294180))

(assert (=> b!5251217 m!6294412))

(assert (=> b!5251217 m!6294180))

(declare-fun m!6294414 () Bool)

(assert (=> b!5251217 m!6294414))

(assert (=> bm!372097 m!6294174))

(assert (=> b!5250825 d!1691367))

(declare-fun d!1691369 () Bool)

(assert (=> d!1691369 (= (matchR!7044 r!7292 s!2326) (matchRSpec!1962 r!7292 s!2326))))

(declare-fun lt!2151855 () Unit!152886)

(assert (=> d!1691369 (= lt!2151855 (choose!39124 r!7292 s!2326))))

(assert (=> d!1691369 (validRegex!6595 r!7292)))

(assert (=> d!1691369 (= (mainMatchTheorem!1962 r!7292 s!2326) lt!2151855)))

(declare-fun bs!1218110 () Bool)

(assert (= bs!1218110 d!1691369))

(assert (=> bs!1218110 m!6294072))

(assert (=> bs!1218110 m!6294070))

(declare-fun m!6294416 () Bool)

(assert (=> bs!1218110 m!6294416))

(assert (=> bs!1218110 m!6294040))

(assert (=> b!5250825 d!1691369))

(assert (=> b!5250826 d!1691325))

(declare-fun d!1691371 () Bool)

(declare-fun c!908407 () Bool)

(assert (=> d!1691371 (= c!908407 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3266984 () Bool)

(assert (=> d!1691371 (= (matchZipper!1103 lt!2151802 (t!374061 s!2326)) e!3266984)))

(declare-fun b!5251234 () Bool)

(assert (=> b!5251234 (= e!3266984 (nullableZipper!1269 lt!2151802))))

(declare-fun b!5251235 () Bool)

(assert (=> b!5251235 (= e!3266984 (matchZipper!1103 (derivationStepZipper!1113 lt!2151802 (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691371 c!908407) b!5251234))

(assert (= (and d!1691371 (not c!908407)) b!5251235))

(assert (=> d!1691371 m!6294158))

(declare-fun m!6294418 () Bool)

(assert (=> b!5251234 m!6294418))

(assert (=> b!5251235 m!6294162))

(assert (=> b!5251235 m!6294162))

(declare-fun m!6294420 () Bool)

(assert (=> b!5251235 m!6294420))

(assert (=> b!5251235 m!6294166))

(assert (=> b!5251235 m!6294420))

(assert (=> b!5251235 m!6294166))

(declare-fun m!6294422 () Bool)

(assert (=> b!5251235 m!6294422))

(assert (=> b!5250845 d!1691371))

(assert (=> b!5250827 d!1691351))

(declare-fun b!5251310 () Bool)

(declare-fun e!3267025 () (InoxSet Context!8486))

(declare-fun call!372121 () (InoxSet Context!8486))

(assert (=> b!5251310 (= e!3267025 call!372121)))

(declare-fun bm!372114 () Bool)

(declare-fun call!372124 () List!60876)

(declare-fun call!372122 () List!60876)

(assert (=> bm!372114 (= call!372124 call!372122)))

(declare-fun bm!372115 () Bool)

(declare-fun call!372123 () (InoxSet Context!8486))

(declare-fun call!372120 () (InoxSet Context!8486))

(assert (=> bm!372115 (= call!372123 call!372120)))

(declare-fun b!5251311 () Bool)

(assert (=> b!5251311 (= e!3267025 ((as const (Array Context!8486 Bool)) false))))

(declare-fun b!5251312 () Bool)

(declare-fun e!3267023 () (InoxSet Context!8486))

(declare-fun call!372119 () (InoxSet Context!8486))

(assert (=> b!5251312 (= e!3267023 ((_ map or) call!372120 call!372119))))

(declare-fun b!5251313 () Bool)

(declare-fun c!908429 () Bool)

(assert (=> b!5251313 (= c!908429 ((_ is Star!14859) (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun e!3267024 () (InoxSet Context!8486))

(assert (=> b!5251313 (= e!3267024 e!3267025)))

(declare-fun c!908428 () Bool)

(declare-fun c!908431 () Bool)

(declare-fun c!908432 () Bool)

(declare-fun bm!372116 () Bool)

(assert (=> bm!372116 (= call!372120 (derivationStepZipperDown!307 (ite c!908432 (regOne!30231 (regTwo!30231 (regOne!30230 r!7292))) (ite c!908428 (regTwo!30230 (regTwo!30231 (regOne!30230 r!7292))) (ite c!908431 (regOne!30230 (regTwo!30231 (regOne!30230 r!7292))) (reg!15188 (regTwo!30231 (regOne!30230 r!7292)))))) (ite (or c!908432 c!908428) lt!2151789 (Context!8487 call!372124)) (h!67202 s!2326)))))

(declare-fun b!5251314 () Bool)

(declare-fun e!3267028 () (InoxSet Context!8486))

(assert (=> b!5251314 (= e!3267028 (store ((as const (Array Context!8486 Bool)) false) lt!2151789 true))))

(declare-fun bm!372117 () Bool)

(assert (=> bm!372117 (= call!372119 (derivationStepZipperDown!307 (ite c!908432 (regTwo!30231 (regTwo!30231 (regOne!30230 r!7292))) (regOne!30230 (regTwo!30231 (regOne!30230 r!7292)))) (ite c!908432 lt!2151789 (Context!8487 call!372122)) (h!67202 s!2326)))))

(declare-fun b!5251315 () Bool)

(assert (=> b!5251315 (= e!3267024 call!372121)))

(declare-fun b!5251317 () Bool)

(declare-fun e!3267027 () Bool)

(assert (=> b!5251317 (= c!908428 e!3267027)))

(declare-fun res!2228468 () Bool)

(assert (=> b!5251317 (=> (not res!2228468) (not e!3267027))))

(assert (=> b!5251317 (= res!2228468 ((_ is Concat!23704) (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun e!3267026 () (InoxSet Context!8486))

(assert (=> b!5251317 (= e!3267023 e!3267026)))

(declare-fun bm!372118 () Bool)

(declare-fun $colon$colon!1320 (List!60876 Regex!14859) List!60876)

(assert (=> bm!372118 (= call!372122 ($colon$colon!1320 (exprs!4743 lt!2151789) (ite (or c!908428 c!908431) (regTwo!30230 (regTwo!30231 (regOne!30230 r!7292))) (regTwo!30231 (regOne!30230 r!7292)))))))

(declare-fun b!5251318 () Bool)

(assert (=> b!5251318 (= e!3267027 (nullable!5028 (regOne!30230 (regTwo!30231 (regOne!30230 r!7292)))))))

(declare-fun b!5251319 () Bool)

(assert (=> b!5251319 (= e!3267026 ((_ map or) call!372119 call!372123))))

(declare-fun b!5251316 () Bool)

(assert (=> b!5251316 (= e!3267026 e!3267024)))

(assert (=> b!5251316 (= c!908431 ((_ is Concat!23704) (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun d!1691373 () Bool)

(declare-fun c!908430 () Bool)

(assert (=> d!1691373 (= c!908430 (and ((_ is ElementMatch!14859) (regTwo!30231 (regOne!30230 r!7292))) (= (c!908285 (regTwo!30231 (regOne!30230 r!7292))) (h!67202 s!2326))))))

(assert (=> d!1691373 (= (derivationStepZipperDown!307 (regTwo!30231 (regOne!30230 r!7292)) lt!2151789 (h!67202 s!2326)) e!3267028)))

(declare-fun b!5251320 () Bool)

(assert (=> b!5251320 (= e!3267028 e!3267023)))

(assert (=> b!5251320 (= c!908432 ((_ is Union!14859) (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun bm!372119 () Bool)

(assert (=> bm!372119 (= call!372121 call!372123)))

(assert (= (and d!1691373 c!908430) b!5251314))

(assert (= (and d!1691373 (not c!908430)) b!5251320))

(assert (= (and b!5251320 c!908432) b!5251312))

(assert (= (and b!5251320 (not c!908432)) b!5251317))

(assert (= (and b!5251317 res!2228468) b!5251318))

(assert (= (and b!5251317 c!908428) b!5251319))

(assert (= (and b!5251317 (not c!908428)) b!5251316))

(assert (= (and b!5251316 c!908431) b!5251315))

(assert (= (and b!5251316 (not c!908431)) b!5251313))

(assert (= (and b!5251313 c!908429) b!5251310))

(assert (= (and b!5251313 (not c!908429)) b!5251311))

(assert (= (or b!5251315 b!5251310) bm!372114))

(assert (= (or b!5251315 b!5251310) bm!372119))

(assert (= (or b!5251319 bm!372114) bm!372118))

(assert (= (or b!5251319 bm!372119) bm!372115))

(assert (= (or b!5251312 b!5251319) bm!372117))

(assert (= (or b!5251312 bm!372115) bm!372116))

(declare-fun m!6294454 () Bool)

(assert (=> b!5251318 m!6294454))

(declare-fun m!6294456 () Bool)

(assert (=> bm!372116 m!6294456))

(declare-fun m!6294458 () Bool)

(assert (=> b!5251314 m!6294458))

(declare-fun m!6294460 () Bool)

(assert (=> bm!372118 m!6294460))

(declare-fun m!6294462 () Bool)

(assert (=> bm!372117 m!6294462))

(assert (=> b!5250832 d!1691373))

(declare-fun b!5251321 () Bool)

(declare-fun e!3267031 () (InoxSet Context!8486))

(declare-fun call!372127 () (InoxSet Context!8486))

(assert (=> b!5251321 (= e!3267031 call!372127)))

(declare-fun bm!372120 () Bool)

(declare-fun call!372130 () List!60876)

(declare-fun call!372128 () List!60876)

(assert (=> bm!372120 (= call!372130 call!372128)))

(declare-fun bm!372121 () Bool)

(declare-fun call!372129 () (InoxSet Context!8486))

(declare-fun call!372126 () (InoxSet Context!8486))

(assert (=> bm!372121 (= call!372129 call!372126)))

(declare-fun b!5251322 () Bool)

(assert (=> b!5251322 (= e!3267031 ((as const (Array Context!8486 Bool)) false))))

(declare-fun b!5251323 () Bool)

(declare-fun e!3267029 () (InoxSet Context!8486))

(declare-fun call!372125 () (InoxSet Context!8486))

(assert (=> b!5251323 (= e!3267029 ((_ map or) call!372126 call!372125))))

(declare-fun b!5251324 () Bool)

(declare-fun c!908434 () Bool)

(assert (=> b!5251324 (= c!908434 ((_ is Star!14859) (regOne!30231 (regOne!30230 r!7292))))))

(declare-fun e!3267030 () (InoxSet Context!8486))

(assert (=> b!5251324 (= e!3267030 e!3267031)))

(declare-fun bm!372122 () Bool)

(declare-fun c!908436 () Bool)

(declare-fun c!908437 () Bool)

(declare-fun c!908433 () Bool)

(assert (=> bm!372122 (= call!372126 (derivationStepZipperDown!307 (ite c!908437 (regOne!30231 (regOne!30231 (regOne!30230 r!7292))) (ite c!908433 (regTwo!30230 (regOne!30231 (regOne!30230 r!7292))) (ite c!908436 (regOne!30230 (regOne!30231 (regOne!30230 r!7292))) (reg!15188 (regOne!30231 (regOne!30230 r!7292)))))) (ite (or c!908437 c!908433) lt!2151789 (Context!8487 call!372130)) (h!67202 s!2326)))))

(declare-fun b!5251325 () Bool)

(declare-fun e!3267034 () (InoxSet Context!8486))

(assert (=> b!5251325 (= e!3267034 (store ((as const (Array Context!8486 Bool)) false) lt!2151789 true))))

(declare-fun bm!372123 () Bool)

(assert (=> bm!372123 (= call!372125 (derivationStepZipperDown!307 (ite c!908437 (regTwo!30231 (regOne!30231 (regOne!30230 r!7292))) (regOne!30230 (regOne!30231 (regOne!30230 r!7292)))) (ite c!908437 lt!2151789 (Context!8487 call!372128)) (h!67202 s!2326)))))

(declare-fun b!5251326 () Bool)

(assert (=> b!5251326 (= e!3267030 call!372127)))

(declare-fun b!5251328 () Bool)

(declare-fun e!3267033 () Bool)

(assert (=> b!5251328 (= c!908433 e!3267033)))

(declare-fun res!2228469 () Bool)

(assert (=> b!5251328 (=> (not res!2228469) (not e!3267033))))

(assert (=> b!5251328 (= res!2228469 ((_ is Concat!23704) (regOne!30231 (regOne!30230 r!7292))))))

(declare-fun e!3267032 () (InoxSet Context!8486))

(assert (=> b!5251328 (= e!3267029 e!3267032)))

(declare-fun bm!372124 () Bool)

(assert (=> bm!372124 (= call!372128 ($colon$colon!1320 (exprs!4743 lt!2151789) (ite (or c!908433 c!908436) (regTwo!30230 (regOne!30231 (regOne!30230 r!7292))) (regOne!30231 (regOne!30230 r!7292)))))))

(declare-fun b!5251329 () Bool)

(assert (=> b!5251329 (= e!3267033 (nullable!5028 (regOne!30230 (regOne!30231 (regOne!30230 r!7292)))))))

(declare-fun b!5251330 () Bool)

(assert (=> b!5251330 (= e!3267032 ((_ map or) call!372125 call!372129))))

(declare-fun b!5251327 () Bool)

(assert (=> b!5251327 (= e!3267032 e!3267030)))

(assert (=> b!5251327 (= c!908436 ((_ is Concat!23704) (regOne!30231 (regOne!30230 r!7292))))))

(declare-fun d!1691381 () Bool)

(declare-fun c!908435 () Bool)

(assert (=> d!1691381 (= c!908435 (and ((_ is ElementMatch!14859) (regOne!30231 (regOne!30230 r!7292))) (= (c!908285 (regOne!30231 (regOne!30230 r!7292))) (h!67202 s!2326))))))

(assert (=> d!1691381 (= (derivationStepZipperDown!307 (regOne!30231 (regOne!30230 r!7292)) lt!2151789 (h!67202 s!2326)) e!3267034)))

(declare-fun b!5251331 () Bool)

(assert (=> b!5251331 (= e!3267034 e!3267029)))

(assert (=> b!5251331 (= c!908437 ((_ is Union!14859) (regOne!30231 (regOne!30230 r!7292))))))

(declare-fun bm!372125 () Bool)

(assert (=> bm!372125 (= call!372127 call!372129)))

(assert (= (and d!1691381 c!908435) b!5251325))

(assert (= (and d!1691381 (not c!908435)) b!5251331))

(assert (= (and b!5251331 c!908437) b!5251323))

(assert (= (and b!5251331 (not c!908437)) b!5251328))

(assert (= (and b!5251328 res!2228469) b!5251329))

(assert (= (and b!5251328 c!908433) b!5251330))

(assert (= (and b!5251328 (not c!908433)) b!5251327))

(assert (= (and b!5251327 c!908436) b!5251326))

(assert (= (and b!5251327 (not c!908436)) b!5251324))

(assert (= (and b!5251324 c!908434) b!5251321))

(assert (= (and b!5251324 (not c!908434)) b!5251322))

(assert (= (or b!5251326 b!5251321) bm!372120))

(assert (= (or b!5251326 b!5251321) bm!372125))

(assert (= (or b!5251330 bm!372120) bm!372124))

(assert (= (or b!5251330 bm!372125) bm!372121))

(assert (= (or b!5251323 b!5251330) bm!372123))

(assert (= (or b!5251323 bm!372121) bm!372122))

(declare-fun m!6294464 () Bool)

(assert (=> b!5251329 m!6294464))

(declare-fun m!6294466 () Bool)

(assert (=> bm!372122 m!6294466))

(assert (=> b!5251325 m!6294458))

(declare-fun m!6294468 () Bool)

(assert (=> bm!372124 m!6294468))

(declare-fun m!6294470 () Bool)

(assert (=> bm!372123 m!6294470))

(assert (=> b!5250832 d!1691381))

(declare-fun bs!1218113 () Bool)

(declare-fun d!1691383 () Bool)

(assert (= bs!1218113 (and d!1691383 d!1691309)))

(declare-fun lambda!264438 () Int)

(assert (=> bs!1218113 (= lambda!264438 lambda!264430)))

(declare-fun bs!1218115 () Bool)

(assert (= bs!1218115 (and d!1691383 d!1691315)))

(assert (=> bs!1218115 (= lambda!264438 lambda!264432)))

(declare-fun bs!1218116 () Bool)

(assert (= bs!1218116 (and d!1691383 d!1691327)))

(assert (=> bs!1218116 (= lambda!264438 lambda!264433)))

(declare-fun b!5251361 () Bool)

(declare-fun e!3267053 () Bool)

(declare-fun e!3267054 () Bool)

(assert (=> b!5251361 (= e!3267053 e!3267054)))

(declare-fun c!908450 () Bool)

(assert (=> b!5251361 (= c!908450 (isEmpty!32692 (unfocusZipperList!301 zl!343)))))

(declare-fun b!5251363 () Bool)

(declare-fun e!3267058 () Bool)

(assert (=> b!5251363 (= e!3267054 e!3267058)))

(declare-fun c!908451 () Bool)

(assert (=> b!5251363 (= c!908451 (isEmpty!32692 (tail!10354 (unfocusZipperList!301 zl!343))))))

(declare-fun b!5251364 () Bool)

(declare-fun lt!2151872 () Regex!14859)

(declare-fun isUnion!245 (Regex!14859) Bool)

(assert (=> b!5251364 (= e!3267058 (isUnion!245 lt!2151872))))

(declare-fun b!5251365 () Bool)

(declare-fun e!3267055 () Regex!14859)

(assert (=> b!5251365 (= e!3267055 (h!67200 (unfocusZipperList!301 zl!343)))))

(declare-fun b!5251366 () Bool)

(declare-fun e!3267056 () Regex!14859)

(assert (=> b!5251366 (= e!3267056 EmptyLang!14859)))

(declare-fun b!5251367 () Bool)

(declare-fun isEmptyLang!813 (Regex!14859) Bool)

(assert (=> b!5251367 (= e!3267054 (isEmptyLang!813 lt!2151872))))

(declare-fun b!5251368 () Bool)

(assert (=> b!5251368 (= e!3267055 e!3267056)))

(declare-fun c!908449 () Bool)

(assert (=> b!5251368 (= c!908449 ((_ is Cons!60752) (unfocusZipperList!301 zl!343)))))

(declare-fun b!5251362 () Bool)

(declare-fun e!3267057 () Bool)

(assert (=> b!5251362 (= e!3267057 (isEmpty!32692 (t!374059 (unfocusZipperList!301 zl!343))))))

(assert (=> d!1691383 e!3267053))

(declare-fun res!2228477 () Bool)

(assert (=> d!1691383 (=> (not res!2228477) (not e!3267053))))

(assert (=> d!1691383 (= res!2228477 (validRegex!6595 lt!2151872))))

(assert (=> d!1691383 (= lt!2151872 e!3267055)))

(declare-fun c!908452 () Bool)

(assert (=> d!1691383 (= c!908452 e!3267057)))

(declare-fun res!2228478 () Bool)

(assert (=> d!1691383 (=> (not res!2228478) (not e!3267057))))

(assert (=> d!1691383 (= res!2228478 ((_ is Cons!60752) (unfocusZipperList!301 zl!343)))))

(assert (=> d!1691383 (forall!14278 (unfocusZipperList!301 zl!343) lambda!264438)))

(assert (=> d!1691383 (= (generalisedUnion!788 (unfocusZipperList!301 zl!343)) lt!2151872)))

(declare-fun b!5251369 () Bool)

(assert (=> b!5251369 (= e!3267058 (= lt!2151872 (head!11257 (unfocusZipperList!301 zl!343))))))

(declare-fun b!5251370 () Bool)

(assert (=> b!5251370 (= e!3267056 (Union!14859 (h!67200 (unfocusZipperList!301 zl!343)) (generalisedUnion!788 (t!374059 (unfocusZipperList!301 zl!343)))))))

(assert (= (and d!1691383 res!2228478) b!5251362))

(assert (= (and d!1691383 c!908452) b!5251365))

(assert (= (and d!1691383 (not c!908452)) b!5251368))

(assert (= (and b!5251368 c!908449) b!5251370))

(assert (= (and b!5251368 (not c!908449)) b!5251366))

(assert (= (and d!1691383 res!2228477) b!5251361))

(assert (= (and b!5251361 c!908450) b!5251367))

(assert (= (and b!5251361 (not c!908450)) b!5251363))

(assert (= (and b!5251363 c!908451) b!5251369))

(assert (= (and b!5251363 (not c!908451)) b!5251364))

(declare-fun m!6294506 () Bool)

(assert (=> b!5251364 m!6294506))

(declare-fun m!6294508 () Bool)

(assert (=> b!5251367 m!6294508))

(assert (=> b!5251369 m!6294036))

(declare-fun m!6294510 () Bool)

(assert (=> b!5251369 m!6294510))

(assert (=> b!5251363 m!6294036))

(declare-fun m!6294512 () Bool)

(assert (=> b!5251363 m!6294512))

(assert (=> b!5251363 m!6294512))

(declare-fun m!6294514 () Bool)

(assert (=> b!5251363 m!6294514))

(declare-fun m!6294516 () Bool)

(assert (=> b!5251362 m!6294516))

(declare-fun m!6294518 () Bool)

(assert (=> d!1691383 m!6294518))

(assert (=> d!1691383 m!6294036))

(declare-fun m!6294520 () Bool)

(assert (=> d!1691383 m!6294520))

(assert (=> b!5251361 m!6294036))

(declare-fun m!6294522 () Bool)

(assert (=> b!5251361 m!6294522))

(declare-fun m!6294526 () Bool)

(assert (=> b!5251370 m!6294526))

(assert (=> b!5250853 d!1691383))

(declare-fun bs!1218119 () Bool)

(declare-fun d!1691395 () Bool)

(assert (= bs!1218119 (and d!1691395 d!1691309)))

(declare-fun lambda!264442 () Int)

(assert (=> bs!1218119 (= lambda!264442 lambda!264430)))

(declare-fun bs!1218120 () Bool)

(assert (= bs!1218120 (and d!1691395 d!1691315)))

(assert (=> bs!1218120 (= lambda!264442 lambda!264432)))

(declare-fun bs!1218121 () Bool)

(assert (= bs!1218121 (and d!1691395 d!1691327)))

(assert (=> bs!1218121 (= lambda!264442 lambda!264433)))

(declare-fun bs!1218122 () Bool)

(assert (= bs!1218122 (and d!1691395 d!1691383)))

(assert (=> bs!1218122 (= lambda!264442 lambda!264438)))

(declare-fun lt!2151881 () List!60876)

(assert (=> d!1691395 (forall!14278 lt!2151881 lambda!264442)))

(declare-fun e!3267074 () List!60876)

(assert (=> d!1691395 (= lt!2151881 e!3267074)))

(declare-fun c!908462 () Bool)

(assert (=> d!1691395 (= c!908462 ((_ is Cons!60753) zl!343))))

(assert (=> d!1691395 (= (unfocusZipperList!301 zl!343) lt!2151881)))

(declare-fun b!5251399 () Bool)

(assert (=> b!5251399 (= e!3267074 (Cons!60752 (generalisedConcat!528 (exprs!4743 (h!67201 zl!343))) (unfocusZipperList!301 (t!374060 zl!343))))))

(declare-fun b!5251400 () Bool)

(assert (=> b!5251400 (= e!3267074 Nil!60752)))

(assert (= (and d!1691395 c!908462) b!5251399))

(assert (= (and d!1691395 (not c!908462)) b!5251400))

(declare-fun m!6294538 () Bool)

(assert (=> d!1691395 m!6294538))

(assert (=> b!5251399 m!6294016))

(declare-fun m!6294540 () Bool)

(assert (=> b!5251399 m!6294540))

(assert (=> b!5250853 d!1691395))

(assert (=> b!5250834 d!1691371))

(declare-fun bm!372127 () Bool)

(declare-fun call!372132 () Bool)

(declare-fun c!908463 () Bool)

(assert (=> bm!372127 (= call!372132 (validRegex!6595 (ite c!908463 (regTwo!30231 lt!2151782) (regTwo!30230 lt!2151782))))))

(declare-fun b!5251401 () Bool)

(declare-fun e!3267081 () Bool)

(declare-fun e!3267075 () Bool)

(assert (=> b!5251401 (= e!3267081 e!3267075)))

(assert (=> b!5251401 (= c!908463 ((_ is Union!14859) lt!2151782))))

(declare-fun b!5251402 () Bool)

(declare-fun e!3267078 () Bool)

(assert (=> b!5251402 (= e!3267078 call!372132)))

(declare-fun bm!372128 () Bool)

(declare-fun call!372133 () Bool)

(declare-fun call!372134 () Bool)

(assert (=> bm!372128 (= call!372133 call!372134)))

(declare-fun b!5251403 () Bool)

(declare-fun e!3267080 () Bool)

(assert (=> b!5251403 (= e!3267080 e!3267078)))

(declare-fun res!2228490 () Bool)

(assert (=> b!5251403 (=> (not res!2228490) (not e!3267078))))

(assert (=> b!5251403 (= res!2228490 call!372133)))

(declare-fun b!5251404 () Bool)

(declare-fun res!2228492 () Bool)

(assert (=> b!5251404 (=> res!2228492 e!3267080)))

(assert (=> b!5251404 (= res!2228492 (not ((_ is Concat!23704) lt!2151782)))))

(assert (=> b!5251404 (= e!3267075 e!3267080)))

(declare-fun b!5251405 () Bool)

(declare-fun e!3267076 () Bool)

(assert (=> b!5251405 (= e!3267076 call!372134)))

(declare-fun b!5251407 () Bool)

(assert (=> b!5251407 (= e!3267081 e!3267076)))

(declare-fun res!2228493 () Bool)

(assert (=> b!5251407 (= res!2228493 (not (nullable!5028 (reg!15188 lt!2151782))))))

(assert (=> b!5251407 (=> (not res!2228493) (not e!3267076))))

(declare-fun b!5251408 () Bool)

(declare-fun e!3267079 () Bool)

(assert (=> b!5251408 (= e!3267079 call!372132)))

(declare-fun c!908464 () Bool)

(declare-fun bm!372129 () Bool)

(assert (=> bm!372129 (= call!372134 (validRegex!6595 (ite c!908464 (reg!15188 lt!2151782) (ite c!908463 (regOne!30231 lt!2151782) (regOne!30230 lt!2151782)))))))

(declare-fun b!5251409 () Bool)

(declare-fun e!3267077 () Bool)

(assert (=> b!5251409 (= e!3267077 e!3267081)))

(assert (=> b!5251409 (= c!908464 ((_ is Star!14859) lt!2151782))))

(declare-fun d!1691401 () Bool)

(declare-fun res!2228491 () Bool)

(assert (=> d!1691401 (=> res!2228491 e!3267077)))

(assert (=> d!1691401 (= res!2228491 ((_ is ElementMatch!14859) lt!2151782))))

(assert (=> d!1691401 (= (validRegex!6595 lt!2151782) e!3267077)))

(declare-fun b!5251406 () Bool)

(declare-fun res!2228489 () Bool)

(assert (=> b!5251406 (=> (not res!2228489) (not e!3267079))))

(assert (=> b!5251406 (= res!2228489 call!372133)))

(assert (=> b!5251406 (= e!3267075 e!3267079)))

(assert (= (and d!1691401 (not res!2228491)) b!5251409))

(assert (= (and b!5251409 c!908464) b!5251407))

(assert (= (and b!5251409 (not c!908464)) b!5251401))

(assert (= (and b!5251407 res!2228493) b!5251405))

(assert (= (and b!5251401 c!908463) b!5251406))

(assert (= (and b!5251401 (not c!908463)) b!5251404))

(assert (= (and b!5251406 res!2228489) b!5251408))

(assert (= (and b!5251404 (not res!2228492)) b!5251403))

(assert (= (and b!5251403 res!2228490) b!5251402))

(assert (= (or b!5251408 b!5251402) bm!372127))

(assert (= (or b!5251406 b!5251403) bm!372128))

(assert (= (or b!5251405 bm!372128) bm!372129))

(declare-fun m!6294542 () Bool)

(assert (=> bm!372127 m!6294542))

(declare-fun m!6294544 () Bool)

(assert (=> b!5251407 m!6294544))

(declare-fun m!6294546 () Bool)

(assert (=> bm!372129 m!6294546))

(assert (=> b!5250850 d!1691401))

(declare-fun b!5251410 () Bool)

(declare-fun e!3267086 () Bool)

(declare-fun lt!2151882 () Bool)

(declare-fun call!372135 () Bool)

(assert (=> b!5251410 (= e!3267086 (= lt!2151882 call!372135))))

(declare-fun b!5251411 () Bool)

(declare-fun e!3267082 () Bool)

(assert (=> b!5251411 (= e!3267082 (matchR!7044 (derivativeStep!4090 lt!2151776 (head!11256 s!2326)) (tail!10353 s!2326)))))

(declare-fun b!5251412 () Bool)

(declare-fun res!2228500 () Bool)

(declare-fun e!3267088 () Bool)

(assert (=> b!5251412 (=> (not res!2228500) (not e!3267088))))

(assert (=> b!5251412 (= res!2228500 (isEmpty!32693 (tail!10353 s!2326)))))

(declare-fun b!5251413 () Bool)

(declare-fun e!3267083 () Bool)

(declare-fun e!3267087 () Bool)

(assert (=> b!5251413 (= e!3267083 e!3267087)))

(declare-fun res!2228496 () Bool)

(assert (=> b!5251413 (=> (not res!2228496) (not e!3267087))))

(assert (=> b!5251413 (= res!2228496 (not lt!2151882))))

(declare-fun b!5251414 () Bool)

(declare-fun e!3267084 () Bool)

(assert (=> b!5251414 (= e!3267084 (not (= (head!11256 s!2326) (c!908285 lt!2151776))))))

(declare-fun b!5251415 () Bool)

(declare-fun e!3267085 () Bool)

(assert (=> b!5251415 (= e!3267085 (not lt!2151882))))

(declare-fun b!5251416 () Bool)

(declare-fun res!2228498 () Bool)

(assert (=> b!5251416 (=> (not res!2228498) (not e!3267088))))

(assert (=> b!5251416 (= res!2228498 (not call!372135))))

(declare-fun d!1691403 () Bool)

(assert (=> d!1691403 e!3267086))

(declare-fun c!908467 () Bool)

(assert (=> d!1691403 (= c!908467 ((_ is EmptyExpr!14859) lt!2151776))))

(assert (=> d!1691403 (= lt!2151882 e!3267082)))

(declare-fun c!908466 () Bool)

(assert (=> d!1691403 (= c!908466 (isEmpty!32693 s!2326))))

(assert (=> d!1691403 (validRegex!6595 lt!2151776)))

(assert (=> d!1691403 (= (matchR!7044 lt!2151776 s!2326) lt!2151882)))

(declare-fun b!5251417 () Bool)

(declare-fun res!2228495 () Bool)

(assert (=> b!5251417 (=> res!2228495 e!3267083)))

(assert (=> b!5251417 (= res!2228495 (not ((_ is ElementMatch!14859) lt!2151776)))))

(assert (=> b!5251417 (= e!3267085 e!3267083)))

(declare-fun b!5251418 () Bool)

(assert (=> b!5251418 (= e!3267086 e!3267085)))

(declare-fun c!908465 () Bool)

(assert (=> b!5251418 (= c!908465 ((_ is EmptyLang!14859) lt!2151776))))

(declare-fun b!5251419 () Bool)

(declare-fun res!2228499 () Bool)

(assert (=> b!5251419 (=> res!2228499 e!3267084)))

(assert (=> b!5251419 (= res!2228499 (not (isEmpty!32693 (tail!10353 s!2326))))))

(declare-fun b!5251420 () Bool)

(assert (=> b!5251420 (= e!3267088 (= (head!11256 s!2326) (c!908285 lt!2151776)))))

(declare-fun bm!372130 () Bool)

(assert (=> bm!372130 (= call!372135 (isEmpty!32693 s!2326))))

(declare-fun b!5251421 () Bool)

(assert (=> b!5251421 (= e!3267082 (nullable!5028 lt!2151776))))

(declare-fun b!5251422 () Bool)

(assert (=> b!5251422 (= e!3267087 e!3267084)))

(declare-fun res!2228501 () Bool)

(assert (=> b!5251422 (=> res!2228501 e!3267084)))

(assert (=> b!5251422 (= res!2228501 call!372135)))

(declare-fun b!5251423 () Bool)

(declare-fun res!2228497 () Bool)

(assert (=> b!5251423 (=> res!2228497 e!3267083)))

(assert (=> b!5251423 (= res!2228497 e!3267088)))

(declare-fun res!2228494 () Bool)

(assert (=> b!5251423 (=> (not res!2228494) (not e!3267088))))

(assert (=> b!5251423 (= res!2228494 lt!2151882)))

(assert (= (and d!1691403 c!908466) b!5251421))

(assert (= (and d!1691403 (not c!908466)) b!5251411))

(assert (= (and d!1691403 c!908467) b!5251410))

(assert (= (and d!1691403 (not c!908467)) b!5251418))

(assert (= (and b!5251418 c!908465) b!5251415))

(assert (= (and b!5251418 (not c!908465)) b!5251417))

(assert (= (and b!5251417 (not res!2228495)) b!5251423))

(assert (= (and b!5251423 res!2228494) b!5251416))

(assert (= (and b!5251416 res!2228498) b!5251412))

(assert (= (and b!5251412 res!2228500) b!5251420))

(assert (= (and b!5251423 (not res!2228497)) b!5251413))

(assert (= (and b!5251413 res!2228496) b!5251422))

(assert (= (and b!5251422 (not res!2228501)) b!5251419))

(assert (= (and b!5251419 (not res!2228499)) b!5251414))

(assert (= (or b!5251410 b!5251416 b!5251422) bm!372130))

(assert (=> d!1691403 m!6294174))

(declare-fun m!6294548 () Bool)

(assert (=> d!1691403 m!6294548))

(assert (=> b!5251414 m!6294178))

(assert (=> b!5251412 m!6294180))

(assert (=> b!5251412 m!6294180))

(assert (=> b!5251412 m!6294182))

(declare-fun m!6294550 () Bool)

(assert (=> b!5251421 m!6294550))

(assert (=> b!5251419 m!6294180))

(assert (=> b!5251419 m!6294180))

(assert (=> b!5251419 m!6294182))

(assert (=> b!5251420 m!6294178))

(assert (=> b!5251411 m!6294178))

(assert (=> b!5251411 m!6294178))

(declare-fun m!6294552 () Bool)

(assert (=> b!5251411 m!6294552))

(assert (=> b!5251411 m!6294180))

(assert (=> b!5251411 m!6294552))

(assert (=> b!5251411 m!6294180))

(declare-fun m!6294554 () Bool)

(assert (=> b!5251411 m!6294554))

(assert (=> bm!372130 m!6294174))

(assert (=> b!5250850 d!1691403))

(declare-fun b!5251424 () Bool)

(declare-fun e!3267093 () Bool)

(declare-fun lt!2151883 () Bool)

(declare-fun call!372136 () Bool)

(assert (=> b!5251424 (= e!3267093 (= lt!2151883 call!372136))))

(declare-fun b!5251425 () Bool)

(declare-fun e!3267089 () Bool)

(assert (=> b!5251425 (= e!3267089 (matchR!7044 (derivativeStep!4090 lt!2151782 (head!11256 s!2326)) (tail!10353 s!2326)))))

(declare-fun b!5251426 () Bool)

(declare-fun res!2228508 () Bool)

(declare-fun e!3267095 () Bool)

(assert (=> b!5251426 (=> (not res!2228508) (not e!3267095))))

(assert (=> b!5251426 (= res!2228508 (isEmpty!32693 (tail!10353 s!2326)))))

(declare-fun b!5251427 () Bool)

(declare-fun e!3267090 () Bool)

(declare-fun e!3267094 () Bool)

(assert (=> b!5251427 (= e!3267090 e!3267094)))

(declare-fun res!2228504 () Bool)

(assert (=> b!5251427 (=> (not res!2228504) (not e!3267094))))

(assert (=> b!5251427 (= res!2228504 (not lt!2151883))))

(declare-fun b!5251428 () Bool)

(declare-fun e!3267091 () Bool)

(assert (=> b!5251428 (= e!3267091 (not (= (head!11256 s!2326) (c!908285 lt!2151782))))))

(declare-fun b!5251429 () Bool)

(declare-fun e!3267092 () Bool)

(assert (=> b!5251429 (= e!3267092 (not lt!2151883))))

(declare-fun b!5251430 () Bool)

(declare-fun res!2228506 () Bool)

(assert (=> b!5251430 (=> (not res!2228506) (not e!3267095))))

(assert (=> b!5251430 (= res!2228506 (not call!372136))))

(declare-fun d!1691405 () Bool)

(assert (=> d!1691405 e!3267093))

(declare-fun c!908470 () Bool)

(assert (=> d!1691405 (= c!908470 ((_ is EmptyExpr!14859) lt!2151782))))

(assert (=> d!1691405 (= lt!2151883 e!3267089)))

(declare-fun c!908469 () Bool)

(assert (=> d!1691405 (= c!908469 (isEmpty!32693 s!2326))))

(assert (=> d!1691405 (validRegex!6595 lt!2151782)))

(assert (=> d!1691405 (= (matchR!7044 lt!2151782 s!2326) lt!2151883)))

(declare-fun b!5251431 () Bool)

(declare-fun res!2228503 () Bool)

(assert (=> b!5251431 (=> res!2228503 e!3267090)))

(assert (=> b!5251431 (= res!2228503 (not ((_ is ElementMatch!14859) lt!2151782)))))

(assert (=> b!5251431 (= e!3267092 e!3267090)))

(declare-fun b!5251432 () Bool)

(assert (=> b!5251432 (= e!3267093 e!3267092)))

(declare-fun c!908468 () Bool)

(assert (=> b!5251432 (= c!908468 ((_ is EmptyLang!14859) lt!2151782))))

(declare-fun b!5251433 () Bool)

(declare-fun res!2228507 () Bool)

(assert (=> b!5251433 (=> res!2228507 e!3267091)))

(assert (=> b!5251433 (= res!2228507 (not (isEmpty!32693 (tail!10353 s!2326))))))

(declare-fun b!5251434 () Bool)

(assert (=> b!5251434 (= e!3267095 (= (head!11256 s!2326) (c!908285 lt!2151782)))))

(declare-fun bm!372131 () Bool)

(assert (=> bm!372131 (= call!372136 (isEmpty!32693 s!2326))))

(declare-fun b!5251435 () Bool)

(assert (=> b!5251435 (= e!3267089 (nullable!5028 lt!2151782))))

(declare-fun b!5251436 () Bool)

(assert (=> b!5251436 (= e!3267094 e!3267091)))

(declare-fun res!2228509 () Bool)

(assert (=> b!5251436 (=> res!2228509 e!3267091)))

(assert (=> b!5251436 (= res!2228509 call!372136)))

(declare-fun b!5251437 () Bool)

(declare-fun res!2228505 () Bool)

(assert (=> b!5251437 (=> res!2228505 e!3267090)))

(assert (=> b!5251437 (= res!2228505 e!3267095)))

(declare-fun res!2228502 () Bool)

(assert (=> b!5251437 (=> (not res!2228502) (not e!3267095))))

(assert (=> b!5251437 (= res!2228502 lt!2151883)))

(assert (= (and d!1691405 c!908469) b!5251435))

(assert (= (and d!1691405 (not c!908469)) b!5251425))

(assert (= (and d!1691405 c!908470) b!5251424))

(assert (= (and d!1691405 (not c!908470)) b!5251432))

(assert (= (and b!5251432 c!908468) b!5251429))

(assert (= (and b!5251432 (not c!908468)) b!5251431))

(assert (= (and b!5251431 (not res!2228503)) b!5251437))

(assert (= (and b!5251437 res!2228502) b!5251430))

(assert (= (and b!5251430 res!2228506) b!5251426))

(assert (= (and b!5251426 res!2228508) b!5251434))

(assert (= (and b!5251437 (not res!2228505)) b!5251427))

(assert (= (and b!5251427 res!2228504) b!5251436))

(assert (= (and b!5251436 (not res!2228509)) b!5251433))

(assert (= (and b!5251433 (not res!2228507)) b!5251428))

(assert (= (or b!5251424 b!5251430 b!5251436) bm!372131))

(assert (=> d!1691405 m!6294174))

(assert (=> d!1691405 m!6294056))

(assert (=> b!5251428 m!6294178))

(assert (=> b!5251426 m!6294180))

(assert (=> b!5251426 m!6294180))

(assert (=> b!5251426 m!6294182))

(declare-fun m!6294556 () Bool)

(assert (=> b!5251435 m!6294556))

(assert (=> b!5251433 m!6294180))

(assert (=> b!5251433 m!6294180))

(assert (=> b!5251433 m!6294182))

(assert (=> b!5251434 m!6294178))

(assert (=> b!5251425 m!6294178))

(assert (=> b!5251425 m!6294178))

(declare-fun m!6294558 () Bool)

(assert (=> b!5251425 m!6294558))

(assert (=> b!5251425 m!6294180))

(assert (=> b!5251425 m!6294558))

(assert (=> b!5251425 m!6294180))

(declare-fun m!6294560 () Bool)

(assert (=> b!5251425 m!6294560))

(assert (=> bm!372131 m!6294174))

(assert (=> b!5250850 d!1691405))

(declare-fun d!1691407 () Bool)

(assert (=> d!1691407 (= (matchR!7044 (Concat!23704 (Union!14859 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30231 (regOne!30230 r!7292))) (regTwo!30230 r!7292)) s!2326) (matchR!7044 (Union!14859 (Concat!23704 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292)) (Concat!23704 (regTwo!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292))) s!2326))))

(declare-fun lt!2151886 () Unit!152886)

(declare-fun choose!39134 (Regex!14859 Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> d!1691407 (= lt!2151886 (choose!39134 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292) s!2326))))

(assert (=> d!1691407 (validRegex!6595 (regOne!30231 (regOne!30230 r!7292)))))

(assert (=> d!1691407 (= (lemmaConcatDistributesInUnion!4 (regOne!30231 (regOne!30230 r!7292)) (regTwo!30231 (regOne!30230 r!7292)) (regTwo!30230 r!7292) s!2326) lt!2151886)))

(declare-fun bs!1218123 () Bool)

(assert (= bs!1218123 d!1691407))

(declare-fun m!6294562 () Bool)

(assert (=> bs!1218123 m!6294562))

(declare-fun m!6294564 () Bool)

(assert (=> bs!1218123 m!6294564))

(declare-fun m!6294566 () Bool)

(assert (=> bs!1218123 m!6294566))

(declare-fun m!6294568 () Bool)

(assert (=> bs!1218123 m!6294568))

(assert (=> b!5250850 d!1691407))

(declare-fun d!1691409 () Bool)

(declare-fun choose!39135 (Int) Bool)

(assert (=> d!1691409 (= (Exists!2040 lambda!264416) (choose!39135 lambda!264416))))

(declare-fun bs!1218124 () Bool)

(assert (= bs!1218124 d!1691409))

(declare-fun m!6294570 () Bool)

(assert (=> bs!1218124 m!6294570))

(assert (=> b!5250831 d!1691409))

(declare-fun bs!1218126 () Bool)

(declare-fun d!1691411 () Bool)

(assert (= bs!1218126 (and d!1691411 b!5250953)))

(declare-fun lambda!264450 () Int)

(assert (=> bs!1218126 (not (= lambda!264450 lambda!264422))))

(declare-fun bs!1218127 () Bool)

(assert (= bs!1218127 (and d!1691411 b!5250831)))

(assert (=> bs!1218127 (not (= lambda!264450 lambda!264416))))

(declare-fun bs!1218128 () Bool)

(assert (= bs!1218128 (and d!1691411 b!5250951)))

(assert (=> bs!1218128 (not (= lambda!264450 lambda!264423))))

(declare-fun bs!1218129 () Bool)

(assert (= bs!1218129 (and d!1691411 b!5251211)))

(assert (=> bs!1218129 (not (= lambda!264450 lambda!264435))))

(declare-fun bs!1218130 () Bool)

(assert (= bs!1218130 (and d!1691411 b!5250962)))

(assert (=> bs!1218130 (not (= lambda!264450 lambda!264425))))

(assert (=> bs!1218127 (= lambda!264450 lambda!264415)))

(declare-fun bs!1218132 () Bool)

(assert (= bs!1218132 (and d!1691411 b!5251213)))

(assert (=> bs!1218132 (not (= lambda!264450 lambda!264434))))

(declare-fun bs!1218134 () Bool)

(assert (= bs!1218134 (and d!1691411 b!5250964)))

(assert (=> bs!1218134 (not (= lambda!264450 lambda!264424))))

(assert (=> d!1691411 true))

(assert (=> d!1691411 true))

(assert (=> d!1691411 true))

(assert (=> d!1691411 (= (isDefined!11673 (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) Nil!60754 s!2326 s!2326)) (Exists!2040 lambda!264450))))

(declare-fun lt!2151889 () Unit!152886)

(declare-fun choose!39136 (Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> d!1691411 (= lt!2151889 (choose!39136 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326))))

(assert (=> d!1691411 (validRegex!6595 (regOne!30230 r!7292))))

(assert (=> d!1691411 (= (lemmaFindConcatSeparationEquivalentToExists!1148 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326) lt!2151889)))

(declare-fun bs!1218135 () Bool)

(assert (= bs!1218135 d!1691411))

(declare-fun m!6294572 () Bool)

(assert (=> bs!1218135 m!6294572))

(assert (=> bs!1218135 m!6294046))

(assert (=> bs!1218135 m!6294046))

(assert (=> bs!1218135 m!6294048))

(declare-fun m!6294574 () Bool)

(assert (=> bs!1218135 m!6294574))

(declare-fun m!6294576 () Bool)

(assert (=> bs!1218135 m!6294576))

(assert (=> b!5250831 d!1691411))

(declare-fun d!1691413 () Bool)

(assert (=> d!1691413 (= (Exists!2040 lambda!264415) (choose!39135 lambda!264415))))

(declare-fun bs!1218136 () Bool)

(assert (= bs!1218136 d!1691413))

(declare-fun m!6294578 () Bool)

(assert (=> bs!1218136 m!6294578))

(assert (=> b!5250831 d!1691413))

(declare-fun d!1691415 () Bool)

(declare-fun e!3267156 () Bool)

(assert (=> d!1691415 e!3267156))

(declare-fun res!2228558 () Bool)

(assert (=> d!1691415 (=> res!2228558 e!3267156)))

(declare-fun e!3267155 () Bool)

(assert (=> d!1691415 (= res!2228558 e!3267155)))

(declare-fun res!2228559 () Bool)

(assert (=> d!1691415 (=> (not res!2228559) (not e!3267155))))

(declare-fun lt!2151901 () Option!14970)

(assert (=> d!1691415 (= res!2228559 (isDefined!11673 lt!2151901))))

(declare-fun e!3267157 () Option!14970)

(assert (=> d!1691415 (= lt!2151901 e!3267157)))

(declare-fun c!908499 () Bool)

(declare-fun e!3267158 () Bool)

(assert (=> d!1691415 (= c!908499 e!3267158)))

(declare-fun res!2228556 () Bool)

(assert (=> d!1691415 (=> (not res!2228556) (not e!3267158))))

(assert (=> d!1691415 (= res!2228556 (matchR!7044 (regOne!30230 r!7292) Nil!60754))))

(assert (=> d!1691415 (validRegex!6595 (regOne!30230 r!7292))))

(assert (=> d!1691415 (= (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) Nil!60754 s!2326 s!2326) lt!2151901)))

(declare-fun b!5251542 () Bool)

(declare-fun res!2228557 () Bool)

(assert (=> b!5251542 (=> (not res!2228557) (not e!3267155))))

(declare-fun get!20884 (Option!14970) tuple2!64116)

(assert (=> b!5251542 (= res!2228557 (matchR!7044 (regOne!30230 r!7292) (_1!35361 (get!20884 lt!2151901))))))

(declare-fun b!5251543 () Bool)

(declare-fun ++!13249 (List!60878 List!60878) List!60878)

(assert (=> b!5251543 (= e!3267155 (= (++!13249 (_1!35361 (get!20884 lt!2151901)) (_2!35361 (get!20884 lt!2151901))) s!2326))))

(declare-fun b!5251544 () Bool)

(declare-fun res!2228560 () Bool)

(assert (=> b!5251544 (=> (not res!2228560) (not e!3267155))))

(assert (=> b!5251544 (= res!2228560 (matchR!7044 (regTwo!30230 r!7292) (_2!35361 (get!20884 lt!2151901))))))

(declare-fun b!5251545 () Bool)

(declare-fun lt!2151903 () Unit!152886)

(declare-fun lt!2151902 () Unit!152886)

(assert (=> b!5251545 (= lt!2151903 lt!2151902)))

(assert (=> b!5251545 (= (++!13249 (++!13249 Nil!60754 (Cons!60754 (h!67202 s!2326) Nil!60754)) (t!374061 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1664 (List!60878 C!29988 List!60878 List!60878) Unit!152886)

(assert (=> b!5251545 (= lt!2151902 (lemmaMoveElementToOtherListKeepsConcatEq!1664 Nil!60754 (h!67202 s!2326) (t!374061 s!2326) s!2326))))

(declare-fun e!3267154 () Option!14970)

(assert (=> b!5251545 (= e!3267154 (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) (++!13249 Nil!60754 (Cons!60754 (h!67202 s!2326) Nil!60754)) (t!374061 s!2326) s!2326))))

(declare-fun b!5251546 () Bool)

(assert (=> b!5251546 (= e!3267157 (Some!14969 (tuple2!64117 Nil!60754 s!2326)))))

(declare-fun b!5251547 () Bool)

(assert (=> b!5251547 (= e!3267154 None!14969)))

(declare-fun b!5251548 () Bool)

(assert (=> b!5251548 (= e!3267157 e!3267154)))

(declare-fun c!908500 () Bool)

(assert (=> b!5251548 (= c!908500 ((_ is Nil!60754) s!2326))))

(declare-fun b!5251549 () Bool)

(assert (=> b!5251549 (= e!3267156 (not (isDefined!11673 lt!2151901)))))

(declare-fun b!5251550 () Bool)

(assert (=> b!5251550 (= e!3267158 (matchR!7044 (regTwo!30230 r!7292) s!2326))))

(assert (= (and d!1691415 res!2228556) b!5251550))

(assert (= (and d!1691415 c!908499) b!5251546))

(assert (= (and d!1691415 (not c!908499)) b!5251548))

(assert (= (and b!5251548 c!908500) b!5251547))

(assert (= (and b!5251548 (not c!908500)) b!5251545))

(assert (= (and d!1691415 res!2228559) b!5251542))

(assert (= (and b!5251542 res!2228557) b!5251544))

(assert (= (and b!5251544 res!2228560) b!5251543))

(assert (= (and d!1691415 (not res!2228558)) b!5251549))

(declare-fun m!6294628 () Bool)

(assert (=> b!5251544 m!6294628))

(declare-fun m!6294630 () Bool)

(assert (=> b!5251544 m!6294630))

(declare-fun m!6294632 () Bool)

(assert (=> d!1691415 m!6294632))

(declare-fun m!6294634 () Bool)

(assert (=> d!1691415 m!6294634))

(assert (=> d!1691415 m!6294572))

(declare-fun m!6294636 () Bool)

(assert (=> b!5251550 m!6294636))

(assert (=> b!5251543 m!6294628))

(declare-fun m!6294638 () Bool)

(assert (=> b!5251543 m!6294638))

(assert (=> b!5251549 m!6294632))

(declare-fun m!6294640 () Bool)

(assert (=> b!5251545 m!6294640))

(assert (=> b!5251545 m!6294640))

(declare-fun m!6294642 () Bool)

(assert (=> b!5251545 m!6294642))

(declare-fun m!6294644 () Bool)

(assert (=> b!5251545 m!6294644))

(assert (=> b!5251545 m!6294640))

(declare-fun m!6294646 () Bool)

(assert (=> b!5251545 m!6294646))

(assert (=> b!5251542 m!6294628))

(declare-fun m!6294648 () Bool)

(assert (=> b!5251542 m!6294648))

(assert (=> b!5250831 d!1691415))

(declare-fun bs!1218149 () Bool)

(declare-fun d!1691431 () Bool)

(assert (= bs!1218149 (and d!1691431 b!5250953)))

(declare-fun lambda!264459 () Int)

(assert (=> bs!1218149 (not (= lambda!264459 lambda!264422))))

(declare-fun bs!1218150 () Bool)

(assert (= bs!1218150 (and d!1691431 b!5250831)))

(assert (=> bs!1218150 (not (= lambda!264459 lambda!264416))))

(declare-fun bs!1218151 () Bool)

(assert (= bs!1218151 (and d!1691431 b!5250951)))

(assert (=> bs!1218151 (not (= lambda!264459 lambda!264423))))

(declare-fun bs!1218152 () Bool)

(assert (= bs!1218152 (and d!1691431 b!5251211)))

(assert (=> bs!1218152 (not (= lambda!264459 lambda!264435))))

(declare-fun bs!1218153 () Bool)

(assert (= bs!1218153 (and d!1691431 d!1691411)))

(assert (=> bs!1218153 (= lambda!264459 lambda!264450)))

(declare-fun bs!1218154 () Bool)

(assert (= bs!1218154 (and d!1691431 b!5250962)))

(assert (=> bs!1218154 (not (= lambda!264459 lambda!264425))))

(assert (=> bs!1218150 (= lambda!264459 lambda!264415)))

(declare-fun bs!1218155 () Bool)

(assert (= bs!1218155 (and d!1691431 b!5251213)))

(assert (=> bs!1218155 (not (= lambda!264459 lambda!264434))))

(declare-fun bs!1218156 () Bool)

(assert (= bs!1218156 (and d!1691431 b!5250964)))

(assert (=> bs!1218156 (not (= lambda!264459 lambda!264424))))

(assert (=> d!1691431 true))

(assert (=> d!1691431 true))

(assert (=> d!1691431 true))

(declare-fun lambda!264462 () Int)

(assert (=> bs!1218149 (not (= lambda!264462 lambda!264422))))

(assert (=> bs!1218150 (= lambda!264462 lambda!264416)))

(assert (=> bs!1218151 (= (and (= (regOne!30230 r!7292) (regOne!30230 lt!2151803)) (= (regTwo!30230 r!7292) (regTwo!30230 lt!2151803))) (= lambda!264462 lambda!264423))))

(assert (=> bs!1218152 (= lambda!264462 lambda!264435)))

(assert (=> bs!1218154 (= (and (= (regOne!30230 r!7292) (regOne!30230 lt!2151806)) (= (regTwo!30230 r!7292) (regTwo!30230 lt!2151806))) (= lambda!264462 lambda!264425))))

(assert (=> bs!1218150 (not (= lambda!264462 lambda!264415))))

(assert (=> bs!1218155 (not (= lambda!264462 lambda!264434))))

(assert (=> bs!1218156 (not (= lambda!264462 lambda!264424))))

(assert (=> bs!1218153 (not (= lambda!264462 lambda!264450))))

(declare-fun bs!1218158 () Bool)

(assert (= bs!1218158 d!1691431))

(assert (=> bs!1218158 (not (= lambda!264462 lambda!264459))))

(assert (=> d!1691431 true))

(assert (=> d!1691431 true))

(assert (=> d!1691431 true))

(assert (=> d!1691431 (= (Exists!2040 lambda!264459) (Exists!2040 lambda!264462))))

(declare-fun lt!2151913 () Unit!152886)

(declare-fun choose!39137 (Regex!14859 Regex!14859 List!60878) Unit!152886)

(assert (=> d!1691431 (= lt!2151913 (choose!39137 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326))))

(assert (=> d!1691431 (validRegex!6595 (regOne!30230 r!7292))))

(assert (=> d!1691431 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!694 (regOne!30230 r!7292) (regTwo!30230 r!7292) s!2326) lt!2151913)))

(declare-fun m!6294676 () Bool)

(assert (=> bs!1218158 m!6294676))

(declare-fun m!6294678 () Bool)

(assert (=> bs!1218158 m!6294678))

(declare-fun m!6294680 () Bool)

(assert (=> bs!1218158 m!6294680))

(assert (=> bs!1218158 m!6294572))

(assert (=> b!5250831 d!1691431))

(declare-fun d!1691437 () Bool)

(declare-fun isEmpty!32695 (Option!14970) Bool)

(assert (=> d!1691437 (= (isDefined!11673 (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) Nil!60754 s!2326 s!2326)) (not (isEmpty!32695 (findConcatSeparation!1384 (regOne!30230 r!7292) (regTwo!30230 r!7292) Nil!60754 s!2326 s!2326))))))

(declare-fun bs!1218164 () Bool)

(assert (= bs!1218164 d!1691437))

(assert (=> bs!1218164 m!6294046))

(declare-fun m!6294686 () Bool)

(assert (=> bs!1218164 m!6294686))

(assert (=> b!5250831 d!1691437))

(declare-fun d!1691441 () Bool)

(declare-fun e!3267180 () Bool)

(assert (=> d!1691441 (= (matchZipper!1103 ((_ map or) lt!2151802 lt!2151797) (t!374061 s!2326)) e!3267180)))

(declare-fun res!2228588 () Bool)

(assert (=> d!1691441 (=> res!2228588 e!3267180)))

(assert (=> d!1691441 (= res!2228588 (matchZipper!1103 lt!2151802 (t!374061 s!2326)))))

(declare-fun lt!2151917 () Unit!152886)

(assert (=> d!1691441 (= lt!2151917 (choose!39123 lt!2151802 lt!2151797 (t!374061 s!2326)))))

(assert (=> d!1691441 (= (lemmaZipperConcatMatchesSameAsBothZippers!96 lt!2151802 lt!2151797 (t!374061 s!2326)) lt!2151917)))

(declare-fun b!5251588 () Bool)

(assert (=> b!5251588 (= e!3267180 (matchZipper!1103 lt!2151797 (t!374061 s!2326)))))

(assert (= (and d!1691441 (not res!2228588)) b!5251588))

(assert (=> d!1691441 m!6294022))

(assert (=> d!1691441 m!6294020))

(declare-fun m!6294688 () Bool)

(assert (=> d!1691441 m!6294688))

(assert (=> b!5251588 m!6294042))

(assert (=> b!5250851 d!1691441))

(assert (=> b!5250851 d!1691371))

(declare-fun d!1691443 () Bool)

(declare-fun c!908507 () Bool)

(assert (=> d!1691443 (= c!908507 (isEmpty!32693 (t!374061 s!2326)))))

(declare-fun e!3267181 () Bool)

(assert (=> d!1691443 (= (matchZipper!1103 ((_ map or) lt!2151802 lt!2151797) (t!374061 s!2326)) e!3267181)))

(declare-fun b!5251589 () Bool)

(assert (=> b!5251589 (= e!3267181 (nullableZipper!1269 ((_ map or) lt!2151802 lt!2151797)))))

(declare-fun b!5251590 () Bool)

(assert (=> b!5251590 (= e!3267181 (matchZipper!1103 (derivationStepZipper!1113 ((_ map or) lt!2151802 lt!2151797) (head!11256 (t!374061 s!2326))) (tail!10353 (t!374061 s!2326))))))

(assert (= (and d!1691443 c!908507) b!5251589))

(assert (= (and d!1691443 (not c!908507)) b!5251590))

(assert (=> d!1691443 m!6294158))

(declare-fun m!6294690 () Bool)

(assert (=> b!5251589 m!6294690))

(assert (=> b!5251590 m!6294162))

(assert (=> b!5251590 m!6294162))

(declare-fun m!6294692 () Bool)

(assert (=> b!5251590 m!6294692))

(assert (=> b!5251590 m!6294166))

(assert (=> b!5251590 m!6294692))

(assert (=> b!5251590 m!6294166))

(declare-fun m!6294694 () Bool)

(assert (=> b!5251590 m!6294694))

(assert (=> b!5250851 d!1691443))

(assert (=> b!5250852 d!1691351))

(declare-fun d!1691445 () Bool)

(declare-fun lt!2151918 () Int)

(assert (=> d!1691445 (>= lt!2151918 0)))

(declare-fun e!3267182 () Int)

(assert (=> d!1691445 (= lt!2151918 e!3267182)))

(declare-fun c!908508 () Bool)

(assert (=> d!1691445 (= c!908508 ((_ is Cons!60753) zl!343))))

(assert (=> d!1691445 (= (zipperDepthTotal!40 zl!343) lt!2151918)))

(declare-fun b!5251591 () Bool)

(assert (=> b!5251591 (= e!3267182 (+ (contextDepthTotal!27 (h!67201 zl!343)) (zipperDepthTotal!40 (t!374060 zl!343))))))

(declare-fun b!5251592 () Bool)

(assert (=> b!5251592 (= e!3267182 0)))

(assert (= (and d!1691445 c!908508) b!5251591))

(assert (= (and d!1691445 (not c!908508)) b!5251592))

(declare-fun m!6294696 () Bool)

(assert (=> b!5251591 m!6294696))

(declare-fun m!6294698 () Bool)

(assert (=> b!5251591 m!6294698))

(assert (=> b!5250817 d!1691445))

(declare-fun d!1691447 () Bool)

(declare-fun lt!2151919 () Int)

(assert (=> d!1691447 (>= lt!2151919 0)))

(declare-fun e!3267183 () Int)

(assert (=> d!1691447 (= lt!2151919 e!3267183)))

(declare-fun c!908509 () Bool)

(assert (=> d!1691447 (= c!908509 ((_ is Cons!60753) lt!2151781))))

(assert (=> d!1691447 (= (zipperDepthTotal!40 lt!2151781) lt!2151919)))

(declare-fun b!5251593 () Bool)

(assert (=> b!5251593 (= e!3267183 (+ (contextDepthTotal!27 (h!67201 lt!2151781)) (zipperDepthTotal!40 (t!374060 lt!2151781))))))

(declare-fun b!5251594 () Bool)

(assert (=> b!5251594 (= e!3267183 0)))

(assert (= (and d!1691447 c!908509) b!5251593))

(assert (= (and d!1691447 (not c!908509)) b!5251594))

(declare-fun m!6294700 () Bool)

(assert (=> b!5251593 m!6294700))

(declare-fun m!6294702 () Bool)

(assert (=> b!5251593 m!6294702))

(assert (=> b!5250817 d!1691447))

(declare-fun d!1691449 () Bool)

(declare-fun lt!2151922 () Regex!14859)

(assert (=> d!1691449 (validRegex!6595 lt!2151922)))

(assert (=> d!1691449 (= lt!2151922 (generalisedUnion!788 (unfocusZipperList!301 zl!343)))))

(assert (=> d!1691449 (= (unfocusZipper!601 zl!343) lt!2151922)))

(declare-fun bs!1218165 () Bool)

(assert (= bs!1218165 d!1691449))

(declare-fun m!6294704 () Bool)

(assert (=> bs!1218165 m!6294704))

(assert (=> bs!1218165 m!6294036))

(assert (=> bs!1218165 m!6294036))

(assert (=> bs!1218165 m!6294038))

(assert (=> b!5250838 d!1691449))

(declare-fun bs!1218166 () Bool)

(declare-fun d!1691451 () Bool)

(assert (= bs!1218166 (and d!1691451 d!1691383)))

(declare-fun lambda!264464 () Int)

(assert (=> bs!1218166 (= lambda!264464 lambda!264438)))

(declare-fun bs!1218167 () Bool)

(assert (= bs!1218167 (and d!1691451 d!1691395)))

(assert (=> bs!1218167 (= lambda!264464 lambda!264442)))

(declare-fun bs!1218168 () Bool)

(assert (= bs!1218168 (and d!1691451 d!1691315)))

(assert (=> bs!1218168 (= lambda!264464 lambda!264432)))

(declare-fun bs!1218169 () Bool)

(assert (= bs!1218169 (and d!1691451 d!1691327)))

(assert (=> bs!1218169 (= lambda!264464 lambda!264433)))

(declare-fun bs!1218170 () Bool)

(assert (= bs!1218170 (and d!1691451 d!1691309)))

(assert (=> bs!1218170 (= lambda!264464 lambda!264430)))

(declare-fun b!5251595 () Bool)

(declare-fun e!3267189 () Bool)

(assert (=> b!5251595 (= e!3267189 (isEmpty!32692 (t!374059 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5251596 () Bool)

(declare-fun e!3267186 () Bool)

(declare-fun lt!2151923 () Regex!14859)

(assert (=> b!5251596 (= e!3267186 (= lt!2151923 (head!11257 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun b!5251597 () Bool)

(declare-fun e!3267187 () Bool)

(declare-fun e!3267185 () Bool)

(assert (=> b!5251597 (= e!3267187 e!3267185)))

(declare-fun c!908513 () Bool)

(assert (=> b!5251597 (= c!908513 (isEmpty!32692 (exprs!4743 (h!67201 zl!343))))))

(declare-fun b!5251598 () Bool)

(declare-fun e!3267188 () Regex!14859)

(declare-fun e!3267184 () Regex!14859)

(assert (=> b!5251598 (= e!3267188 e!3267184)))

(declare-fun c!908511 () Bool)

(assert (=> b!5251598 (= c!908511 ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343))))))

(declare-fun b!5251599 () Bool)

(assert (=> b!5251599 (= e!3267186 (isConcat!327 lt!2151923))))

(declare-fun b!5251600 () Bool)

(assert (=> b!5251600 (= e!3267184 EmptyExpr!14859)))

(declare-fun b!5251601 () Bool)

(assert (=> b!5251601 (= e!3267188 (h!67200 (exprs!4743 (h!67201 zl!343))))))

(declare-fun b!5251602 () Bool)

(assert (=> b!5251602 (= e!3267184 (Concat!23704 (h!67200 (exprs!4743 (h!67201 zl!343))) (generalisedConcat!528 (t!374059 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5251603 () Bool)

(assert (=> b!5251603 (= e!3267185 e!3267186)))

(declare-fun c!908510 () Bool)

(assert (=> b!5251603 (= c!908510 (isEmpty!32692 (tail!10354 (exprs!4743 (h!67201 zl!343)))))))

(assert (=> d!1691451 e!3267187))

(declare-fun res!2228589 () Bool)

(assert (=> d!1691451 (=> (not res!2228589) (not e!3267187))))

(assert (=> d!1691451 (= res!2228589 (validRegex!6595 lt!2151923))))

(assert (=> d!1691451 (= lt!2151923 e!3267188)))

(declare-fun c!908512 () Bool)

(assert (=> d!1691451 (= c!908512 e!3267189)))

(declare-fun res!2228590 () Bool)

(assert (=> d!1691451 (=> (not res!2228590) (not e!3267189))))

(assert (=> d!1691451 (= res!2228590 ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343))))))

(assert (=> d!1691451 (forall!14278 (exprs!4743 (h!67201 zl!343)) lambda!264464)))

(assert (=> d!1691451 (= (generalisedConcat!528 (exprs!4743 (h!67201 zl!343))) lt!2151923)))

(declare-fun b!5251604 () Bool)

(assert (=> b!5251604 (= e!3267185 (isEmptyExpr!804 lt!2151923))))

(assert (= (and d!1691451 res!2228590) b!5251595))

(assert (= (and d!1691451 c!908512) b!5251601))

(assert (= (and d!1691451 (not c!908512)) b!5251598))

(assert (= (and b!5251598 c!908511) b!5251602))

(assert (= (and b!5251598 (not c!908511)) b!5251600))

(assert (= (and d!1691451 res!2228589) b!5251597))

(assert (= (and b!5251597 c!908513) b!5251604))

(assert (= (and b!5251597 (not c!908513)) b!5251603))

(assert (= (and b!5251603 c!908510) b!5251596))

(assert (= (and b!5251603 (not c!908510)) b!5251599))

(assert (=> b!5251595 m!6294032))

(declare-fun m!6294706 () Bool)

(assert (=> b!5251604 m!6294706))

(declare-fun m!6294708 () Bool)

(assert (=> b!5251596 m!6294708))

(declare-fun m!6294710 () Bool)

(assert (=> b!5251597 m!6294710))

(declare-fun m!6294712 () Bool)

(assert (=> b!5251599 m!6294712))

(declare-fun m!6294714 () Bool)

(assert (=> d!1691451 m!6294714))

(declare-fun m!6294716 () Bool)

(assert (=> d!1691451 m!6294716))

(assert (=> b!5251602 m!6294024))

(declare-fun m!6294718 () Bool)

(assert (=> b!5251603 m!6294718))

(assert (=> b!5251603 m!6294718))

(declare-fun m!6294720 () Bool)

(assert (=> b!5251603 m!6294720))

(assert (=> b!5250835 d!1691451))

(declare-fun d!1691453 () Bool)

(declare-fun dynLambda!24009 (Int Context!8486) (InoxSet Context!8486))

(assert (=> d!1691453 (= (flatMap!586 z!1189 lambda!264417) (dynLambda!24009 lambda!264417 (h!67201 zl!343)))))

(declare-fun lt!2151928 () Unit!152886)

(declare-fun choose!39139 ((InoxSet Context!8486) Context!8486 Int) Unit!152886)

(assert (=> d!1691453 (= lt!2151928 (choose!39139 z!1189 (h!67201 zl!343) lambda!264417))))

(assert (=> d!1691453 (= z!1189 (store ((as const (Array Context!8486 Bool)) false) (h!67201 zl!343) true))))

(assert (=> d!1691453 (= (lemmaFlatMapOnSingletonSet!118 z!1189 (h!67201 zl!343) lambda!264417) lt!2151928)))

(declare-fun b_lambda!202815 () Bool)

(assert (=> (not b_lambda!202815) (not d!1691453)))

(declare-fun bs!1218171 () Bool)

(assert (= bs!1218171 d!1691453))

(assert (=> bs!1218171 m!6294086))

(declare-fun m!6294722 () Bool)

(assert (=> bs!1218171 m!6294722))

(declare-fun m!6294724 () Bool)

(assert (=> bs!1218171 m!6294724))

(declare-fun m!6294726 () Bool)

(assert (=> bs!1218171 m!6294726))

(assert (=> b!5250855 d!1691453))

(declare-fun d!1691455 () Bool)

(declare-fun nullableFct!1422 (Regex!14859) Bool)

(assert (=> d!1691455 (= (nullable!5028 (h!67200 (exprs!4743 (h!67201 zl!343)))) (nullableFct!1422 (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun bs!1218172 () Bool)

(assert (= bs!1218172 d!1691455))

(declare-fun m!6294728 () Bool)

(assert (=> bs!1218172 m!6294728))

(assert (=> b!5250855 d!1691455))

(declare-fun b!5251623 () Bool)

(declare-fun e!3267202 () (InoxSet Context!8486))

(declare-fun call!372148 () (InoxSet Context!8486))

(assert (=> b!5251623 (= e!3267202 call!372148)))

(declare-fun b!5251624 () Bool)

(declare-fun e!3267201 () (InoxSet Context!8486))

(assert (=> b!5251624 (= e!3267201 e!3267202)))

(declare-fun c!908519 () Bool)

(assert (=> b!5251624 (= c!908519 ((_ is Cons!60752) (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343))))))))))

(declare-fun b!5251625 () Bool)

(declare-fun e!3267200 () Bool)

(assert (=> b!5251625 (= e!3267200 (nullable!5028 (h!67200 (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343)))))))))))

(declare-fun d!1691457 () Bool)

(declare-fun c!908518 () Bool)

(assert (=> d!1691457 (= c!908518 e!3267200)))

(declare-fun res!2228601 () Bool)

(assert (=> d!1691457 (=> (not res!2228601) (not e!3267200))))

(assert (=> d!1691457 (= res!2228601 ((_ is Cons!60752) (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343))))))))))

(assert (=> d!1691457 (= (derivationStepZipperUp!231 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343))))) (h!67202 s!2326)) e!3267201)))

(declare-fun b!5251626 () Bool)

(assert (=> b!5251626 (= e!3267201 ((_ map or) call!372148 (derivationStepZipperUp!231 (Context!8487 (t!374059 (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343)))))))) (h!67202 s!2326))))))

(declare-fun b!5251627 () Bool)

(assert (=> b!5251627 (= e!3267202 ((as const (Array Context!8486 Bool)) false))))

(declare-fun bm!372143 () Bool)

(assert (=> bm!372143 (= call!372148 (derivationStepZipperDown!307 (h!67200 (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343))))))) (Context!8487 (t!374059 (exprs!4743 (Context!8487 (Cons!60752 (h!67200 (exprs!4743 (h!67201 zl!343))) (t!374059 (exprs!4743 (h!67201 zl!343)))))))) (h!67202 s!2326)))))

(assert (= (and d!1691457 res!2228601) b!5251625))

(assert (= (and d!1691457 c!908518) b!5251626))

(assert (= (and d!1691457 (not c!908518)) b!5251624))

(assert (= (and b!5251624 c!908519) b!5251623))

(assert (= (and b!5251624 (not c!908519)) b!5251627))

(assert (= (or b!5251626 b!5251623) bm!372143))

(declare-fun m!6294730 () Bool)

(assert (=> b!5251625 m!6294730))

(declare-fun m!6294732 () Bool)

(assert (=> b!5251626 m!6294732))

(declare-fun m!6294734 () Bool)

(assert (=> bm!372143 m!6294734))

(assert (=> b!5250855 d!1691457))

(declare-fun b!5251628 () Bool)

(declare-fun e!3267205 () (InoxSet Context!8486))

(declare-fun call!372151 () (InoxSet Context!8486))

(assert (=> b!5251628 (= e!3267205 call!372151)))

(declare-fun bm!372144 () Bool)

(declare-fun call!372154 () List!60876)

(declare-fun call!372152 () List!60876)

(assert (=> bm!372144 (= call!372154 call!372152)))

(declare-fun bm!372145 () Bool)

(declare-fun call!372153 () (InoxSet Context!8486))

(declare-fun call!372150 () (InoxSet Context!8486))

(assert (=> bm!372145 (= call!372153 call!372150)))

(declare-fun b!5251629 () Bool)

(assert (=> b!5251629 (= e!3267205 ((as const (Array Context!8486 Bool)) false))))

(declare-fun b!5251630 () Bool)

(declare-fun e!3267203 () (InoxSet Context!8486))

(declare-fun call!372149 () (InoxSet Context!8486))

(assert (=> b!5251630 (= e!3267203 ((_ map or) call!372150 call!372149))))

(declare-fun b!5251631 () Bool)

(declare-fun c!908521 () Bool)

(assert (=> b!5251631 (= c!908521 ((_ is Star!14859) (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun e!3267204 () (InoxSet Context!8486))

(assert (=> b!5251631 (= e!3267204 e!3267205)))

(declare-fun c!908520 () Bool)

(declare-fun c!908523 () Bool)

(declare-fun c!908524 () Bool)

(declare-fun bm!372146 () Bool)

(assert (=> bm!372146 (= call!372150 (derivationStepZipperDown!307 (ite c!908524 (regOne!30231 (h!67200 (exprs!4743 (h!67201 zl!343)))) (ite c!908520 (regTwo!30230 (h!67200 (exprs!4743 (h!67201 zl!343)))) (ite c!908523 (regOne!30230 (h!67200 (exprs!4743 (h!67201 zl!343)))) (reg!15188 (h!67200 (exprs!4743 (h!67201 zl!343))))))) (ite (or c!908524 c!908520) lt!2151789 (Context!8487 call!372154)) (h!67202 s!2326)))))

(declare-fun b!5251632 () Bool)

(declare-fun e!3267208 () (InoxSet Context!8486))

(assert (=> b!5251632 (= e!3267208 (store ((as const (Array Context!8486 Bool)) false) lt!2151789 true))))

(declare-fun bm!372147 () Bool)

(assert (=> bm!372147 (= call!372149 (derivationStepZipperDown!307 (ite c!908524 (regTwo!30231 (h!67200 (exprs!4743 (h!67201 zl!343)))) (regOne!30230 (h!67200 (exprs!4743 (h!67201 zl!343))))) (ite c!908524 lt!2151789 (Context!8487 call!372152)) (h!67202 s!2326)))))

(declare-fun b!5251633 () Bool)

(assert (=> b!5251633 (= e!3267204 call!372151)))

(declare-fun b!5251635 () Bool)

(declare-fun e!3267207 () Bool)

(assert (=> b!5251635 (= c!908520 e!3267207)))

(declare-fun res!2228602 () Bool)

(assert (=> b!5251635 (=> (not res!2228602) (not e!3267207))))

(assert (=> b!5251635 (= res!2228602 ((_ is Concat!23704) (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun e!3267206 () (InoxSet Context!8486))

(assert (=> b!5251635 (= e!3267203 e!3267206)))

(declare-fun bm!372148 () Bool)

(assert (=> bm!372148 (= call!372152 ($colon$colon!1320 (exprs!4743 lt!2151789) (ite (or c!908520 c!908523) (regTwo!30230 (h!67200 (exprs!4743 (h!67201 zl!343)))) (h!67200 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5251636 () Bool)

(assert (=> b!5251636 (= e!3267207 (nullable!5028 (regOne!30230 (h!67200 (exprs!4743 (h!67201 zl!343))))))))

(declare-fun b!5251637 () Bool)

(assert (=> b!5251637 (= e!3267206 ((_ map or) call!372149 call!372153))))

(declare-fun b!5251634 () Bool)

(assert (=> b!5251634 (= e!3267206 e!3267204)))

(assert (=> b!5251634 (= c!908523 ((_ is Concat!23704) (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun d!1691459 () Bool)

(declare-fun c!908522 () Bool)

(assert (=> d!1691459 (= c!908522 (and ((_ is ElementMatch!14859) (h!67200 (exprs!4743 (h!67201 zl!343)))) (= (c!908285 (h!67200 (exprs!4743 (h!67201 zl!343)))) (h!67202 s!2326))))))

(assert (=> d!1691459 (= (derivationStepZipperDown!307 (h!67200 (exprs!4743 (h!67201 zl!343))) lt!2151789 (h!67202 s!2326)) e!3267208)))

(declare-fun b!5251638 () Bool)

(assert (=> b!5251638 (= e!3267208 e!3267203)))

(assert (=> b!5251638 (= c!908524 ((_ is Union!14859) (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun bm!372149 () Bool)

(assert (=> bm!372149 (= call!372151 call!372153)))

(assert (= (and d!1691459 c!908522) b!5251632))

(assert (= (and d!1691459 (not c!908522)) b!5251638))

(assert (= (and b!5251638 c!908524) b!5251630))

(assert (= (and b!5251638 (not c!908524)) b!5251635))

(assert (= (and b!5251635 res!2228602) b!5251636))

(assert (= (and b!5251635 c!908520) b!5251637))

(assert (= (and b!5251635 (not c!908520)) b!5251634))

(assert (= (and b!5251634 c!908523) b!5251633))

(assert (= (and b!5251634 (not c!908523)) b!5251631))

(assert (= (and b!5251631 c!908521) b!5251628))

(assert (= (and b!5251631 (not c!908521)) b!5251629))

(assert (= (or b!5251633 b!5251628) bm!372144))

(assert (= (or b!5251633 b!5251628) bm!372149))

(assert (= (or b!5251637 bm!372144) bm!372148))

(assert (= (or b!5251637 bm!372149) bm!372145))

(assert (= (or b!5251630 b!5251637) bm!372147))

(assert (= (or b!5251630 bm!372145) bm!372146))

(declare-fun m!6294742 () Bool)

(assert (=> b!5251636 m!6294742))

(declare-fun m!6294744 () Bool)

(assert (=> bm!372146 m!6294744))

(assert (=> b!5251632 m!6294458))

(declare-fun m!6294746 () Bool)

(assert (=> bm!372148 m!6294746))

(declare-fun m!6294748 () Bool)

(assert (=> bm!372147 m!6294748))

(assert (=> b!5250855 d!1691459))

(declare-fun b!5251639 () Bool)

(declare-fun e!3267211 () (InoxSet Context!8486))

(declare-fun call!372155 () (InoxSet Context!8486))

(assert (=> b!5251639 (= e!3267211 call!372155)))

(declare-fun b!5251640 () Bool)

(declare-fun e!3267210 () (InoxSet Context!8486))

(assert (=> b!5251640 (= e!3267210 e!3267211)))

(declare-fun c!908526 () Bool)

(assert (=> b!5251640 (= c!908526 ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343))))))

(declare-fun b!5251641 () Bool)

(declare-fun e!3267209 () Bool)

(assert (=> b!5251641 (= e!3267209 (nullable!5028 (h!67200 (exprs!4743 (h!67201 zl!343)))))))

(declare-fun d!1691463 () Bool)

(declare-fun c!908525 () Bool)

(assert (=> d!1691463 (= c!908525 e!3267209)))

(declare-fun res!2228603 () Bool)

(assert (=> d!1691463 (=> (not res!2228603) (not e!3267209))))

(assert (=> d!1691463 (= res!2228603 ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343))))))

(assert (=> d!1691463 (= (derivationStepZipperUp!231 (h!67201 zl!343) (h!67202 s!2326)) e!3267210)))

(declare-fun b!5251642 () Bool)

(assert (=> b!5251642 (= e!3267210 ((_ map or) call!372155 (derivationStepZipperUp!231 (Context!8487 (t!374059 (exprs!4743 (h!67201 zl!343)))) (h!67202 s!2326))))))

(declare-fun b!5251643 () Bool)

(assert (=> b!5251643 (= e!3267211 ((as const (Array Context!8486 Bool)) false))))

(declare-fun bm!372150 () Bool)

(assert (=> bm!372150 (= call!372155 (derivationStepZipperDown!307 (h!67200 (exprs!4743 (h!67201 zl!343))) (Context!8487 (t!374059 (exprs!4743 (h!67201 zl!343)))) (h!67202 s!2326)))))

(assert (= (and d!1691463 res!2228603) b!5251641))

(assert (= (and d!1691463 c!908525) b!5251642))

(assert (= (and d!1691463 (not c!908525)) b!5251640))

(assert (= (and b!5251640 c!908526) b!5251639))

(assert (= (and b!5251640 (not c!908526)) b!5251643))

(assert (= (or b!5251642 b!5251639) bm!372150))

(assert (=> b!5251641 m!6294080))

(declare-fun m!6294752 () Bool)

(assert (=> b!5251642 m!6294752))

(declare-fun m!6294754 () Bool)

(assert (=> bm!372150 m!6294754))

(assert (=> b!5250855 d!1691463))

(declare-fun d!1691467 () Bool)

(declare-fun choose!39141 ((InoxSet Context!8486) Int) (InoxSet Context!8486))

(assert (=> d!1691467 (= (flatMap!586 z!1189 lambda!264417) (choose!39141 z!1189 lambda!264417))))

(declare-fun bs!1218181 () Bool)

(assert (= bs!1218181 d!1691467))

(declare-fun m!6294761 () Bool)

(assert (=> bs!1218181 m!6294761))

(assert (=> b!5250855 d!1691467))

(declare-fun b!5251647 () Bool)

(declare-fun e!3267216 () (InoxSet Context!8486))

(declare-fun call!372156 () (InoxSet Context!8486))

(assert (=> b!5251647 (= e!3267216 call!372156)))

(declare-fun b!5251648 () Bool)

(declare-fun e!3267215 () (InoxSet Context!8486))

(assert (=> b!5251648 (= e!3267215 e!3267216)))

(declare-fun c!908529 () Bool)

(assert (=> b!5251648 (= c!908529 ((_ is Cons!60752) (exprs!4743 lt!2151789)))))

(declare-fun b!5251649 () Bool)

(declare-fun e!3267214 () Bool)

(assert (=> b!5251649 (= e!3267214 (nullable!5028 (h!67200 (exprs!4743 lt!2151789))))))

(declare-fun d!1691473 () Bool)

(declare-fun c!908528 () Bool)

(assert (=> d!1691473 (= c!908528 e!3267214)))

(declare-fun res!2228605 () Bool)

(assert (=> d!1691473 (=> (not res!2228605) (not e!3267214))))

(assert (=> d!1691473 (= res!2228605 ((_ is Cons!60752) (exprs!4743 lt!2151789)))))

(assert (=> d!1691473 (= (derivationStepZipperUp!231 lt!2151789 (h!67202 s!2326)) e!3267215)))

(declare-fun b!5251650 () Bool)

(assert (=> b!5251650 (= e!3267215 ((_ map or) call!372156 (derivationStepZipperUp!231 (Context!8487 (t!374059 (exprs!4743 lt!2151789))) (h!67202 s!2326))))))

(declare-fun b!5251651 () Bool)

(assert (=> b!5251651 (= e!3267216 ((as const (Array Context!8486 Bool)) false))))

(declare-fun bm!372151 () Bool)

(assert (=> bm!372151 (= call!372156 (derivationStepZipperDown!307 (h!67200 (exprs!4743 lt!2151789)) (Context!8487 (t!374059 (exprs!4743 lt!2151789))) (h!67202 s!2326)))))

(assert (= (and d!1691473 res!2228605) b!5251649))

(assert (= (and d!1691473 c!908528) b!5251650))

(assert (= (and d!1691473 (not c!908528)) b!5251648))

(assert (= (and b!5251648 c!908529) b!5251647))

(assert (= (and b!5251648 (not c!908529)) b!5251651))

(assert (= (or b!5251650 b!5251647) bm!372151))

(declare-fun m!6294770 () Bool)

(assert (=> b!5251649 m!6294770))

(declare-fun m!6294774 () Bool)

(assert (=> b!5251650 m!6294774))

(declare-fun m!6294776 () Bool)

(assert (=> bm!372151 m!6294776))

(assert (=> b!5250855 d!1691473))

(declare-fun bs!1218185 () Bool)

(declare-fun d!1691479 () Bool)

(assert (= bs!1218185 (and d!1691479 d!1691383)))

(declare-fun lambda!264474 () Int)

(assert (=> bs!1218185 (= lambda!264474 lambda!264438)))

(declare-fun bs!1218186 () Bool)

(assert (= bs!1218186 (and d!1691479 d!1691395)))

(assert (=> bs!1218186 (= lambda!264474 lambda!264442)))

(declare-fun bs!1218187 () Bool)

(assert (= bs!1218187 (and d!1691479 d!1691451)))

(assert (=> bs!1218187 (= lambda!264474 lambda!264464)))

(declare-fun bs!1218188 () Bool)

(assert (= bs!1218188 (and d!1691479 d!1691315)))

(assert (=> bs!1218188 (= lambda!264474 lambda!264432)))

(declare-fun bs!1218189 () Bool)

(assert (= bs!1218189 (and d!1691479 d!1691327)))

(assert (=> bs!1218189 (= lambda!264474 lambda!264433)))

(declare-fun bs!1218190 () Bool)

(assert (= bs!1218190 (and d!1691479 d!1691309)))

(assert (=> bs!1218190 (= lambda!264474 lambda!264430)))

(assert (=> d!1691479 (= (inv!80394 (h!67201 zl!343)) (forall!14278 (exprs!4743 (h!67201 zl!343)) lambda!264474))))

(declare-fun bs!1218191 () Bool)

(assert (= bs!1218191 d!1691479))

(declare-fun m!6294808 () Bool)

(assert (=> bs!1218191 m!6294808))

(assert (=> b!5250815 d!1691479))

(declare-fun d!1691489 () Bool)

(declare-fun c!908542 () Bool)

(assert (=> d!1691489 (= c!908542 (isEmpty!32693 s!2326))))

(declare-fun e!3267234 () Bool)

(assert (=> d!1691489 (= (matchZipper!1103 lt!2151770 s!2326) e!3267234)))

(declare-fun b!5251681 () Bool)

(assert (=> b!5251681 (= e!3267234 (nullableZipper!1269 lt!2151770))))

(declare-fun b!5251682 () Bool)

(assert (=> b!5251682 (= e!3267234 (matchZipper!1103 (derivationStepZipper!1113 lt!2151770 (head!11256 s!2326)) (tail!10353 s!2326)))))

(assert (= (and d!1691489 c!908542) b!5251681))

(assert (= (and d!1691489 (not c!908542)) b!5251682))

(assert (=> d!1691489 m!6294174))

(declare-fun m!6294810 () Bool)

(assert (=> b!5251681 m!6294810))

(assert (=> b!5251682 m!6294178))

(assert (=> b!5251682 m!6294178))

(declare-fun m!6294812 () Bool)

(assert (=> b!5251682 m!6294812))

(assert (=> b!5251682 m!6294180))

(assert (=> b!5251682 m!6294812))

(assert (=> b!5251682 m!6294180))

(declare-fun m!6294814 () Bool)

(assert (=> b!5251682 m!6294814))

(assert (=> b!5250836 d!1691489))

(declare-fun d!1691491 () Bool)

(assert (=> d!1691491 (= (nullable!5028 (regTwo!30231 (regOne!30230 r!7292))) (nullableFct!1422 (regTwo!30231 (regOne!30230 r!7292))))))

(declare-fun bs!1218192 () Bool)

(assert (= bs!1218192 d!1691491))

(declare-fun m!6294816 () Bool)

(assert (=> bs!1218192 m!6294816))

(assert (=> b!5250836 d!1691491))

(declare-fun b!5251683 () Bool)

(declare-fun e!3267237 () (InoxSet Context!8486))

(declare-fun call!372159 () (InoxSet Context!8486))

(assert (=> b!5251683 (= e!3267237 call!372159)))

(declare-fun b!5251684 () Bool)

(declare-fun e!3267236 () (InoxSet Context!8486))

(assert (=> b!5251684 (= e!3267236 e!3267237)))

(declare-fun c!908544 () Bool)

(assert (=> b!5251684 (= c!908544 ((_ is Cons!60752) (exprs!4743 lt!2151780)))))

(declare-fun b!5251685 () Bool)

(declare-fun e!3267235 () Bool)

(assert (=> b!5251685 (= e!3267235 (nullable!5028 (h!67200 (exprs!4743 lt!2151780))))))

(declare-fun d!1691493 () Bool)

(declare-fun c!908543 () Bool)

(assert (=> d!1691493 (= c!908543 e!3267235)))

(declare-fun res!2228611 () Bool)

(assert (=> d!1691493 (=> (not res!2228611) (not e!3267235))))

(assert (=> d!1691493 (= res!2228611 ((_ is Cons!60752) (exprs!4743 lt!2151780)))))

(assert (=> d!1691493 (= (derivationStepZipperUp!231 lt!2151780 (h!67202 s!2326)) e!3267236)))

(declare-fun b!5251686 () Bool)

(assert (=> b!5251686 (= e!3267236 ((_ map or) call!372159 (derivationStepZipperUp!231 (Context!8487 (t!374059 (exprs!4743 lt!2151780))) (h!67202 s!2326))))))

(declare-fun b!5251687 () Bool)

(assert (=> b!5251687 (= e!3267237 ((as const (Array Context!8486 Bool)) false))))

(declare-fun bm!372154 () Bool)

(assert (=> bm!372154 (= call!372159 (derivationStepZipperDown!307 (h!67200 (exprs!4743 lt!2151780)) (Context!8487 (t!374059 (exprs!4743 lt!2151780))) (h!67202 s!2326)))))

(assert (= (and d!1691493 res!2228611) b!5251685))

(assert (= (and d!1691493 c!908543) b!5251686))

(assert (= (and d!1691493 (not c!908543)) b!5251684))

(assert (= (and b!5251684 c!908544) b!5251683))

(assert (= (and b!5251684 (not c!908544)) b!5251687))

(assert (= (or b!5251686 b!5251683) bm!372154))

(declare-fun m!6294818 () Bool)

(assert (=> b!5251685 m!6294818))

(declare-fun m!6294820 () Bool)

(assert (=> b!5251686 m!6294820))

(declare-fun m!6294822 () Bool)

(assert (=> bm!372154 m!6294822))

(assert (=> b!5250836 d!1691493))

(declare-fun d!1691495 () Bool)

(assert (=> d!1691495 (= (flatMap!586 lt!2151770 lambda!264417) (dynLambda!24009 lambda!264417 lt!2151801))))

(declare-fun lt!2151934 () Unit!152886)

(assert (=> d!1691495 (= lt!2151934 (choose!39139 lt!2151770 lt!2151801 lambda!264417))))

(assert (=> d!1691495 (= lt!2151770 (store ((as const (Array Context!8486 Bool)) false) lt!2151801 true))))

(assert (=> d!1691495 (= (lemmaFlatMapOnSingletonSet!118 lt!2151770 lt!2151801 lambda!264417) lt!2151934)))

(declare-fun b_lambda!202817 () Bool)

(assert (=> (not b_lambda!202817) (not d!1691495)))

(declare-fun bs!1218196 () Bool)

(assert (= bs!1218196 d!1691495))

(assert (=> bs!1218196 m!6294110))

(declare-fun m!6294824 () Bool)

(assert (=> bs!1218196 m!6294824))

(declare-fun m!6294826 () Bool)

(assert (=> bs!1218196 m!6294826))

(assert (=> bs!1218196 m!6294102))

(assert (=> b!5250836 d!1691495))

(declare-fun d!1691497 () Bool)

(declare-fun c!908545 () Bool)

(assert (=> d!1691497 (= c!908545 (isEmpty!32693 s!2326))))

(declare-fun e!3267238 () Bool)

(assert (=> d!1691497 (= (matchZipper!1103 z!1189 s!2326) e!3267238)))

(declare-fun b!5251688 () Bool)

(assert (=> b!5251688 (= e!3267238 (nullableZipper!1269 z!1189))))

(declare-fun b!5251689 () Bool)

(assert (=> b!5251689 (= e!3267238 (matchZipper!1103 (derivationStepZipper!1113 z!1189 (head!11256 s!2326)) (tail!10353 s!2326)))))

(assert (= (and d!1691497 c!908545) b!5251688))

(assert (= (and d!1691497 (not c!908545)) b!5251689))

(assert (=> d!1691497 m!6294174))

(declare-fun m!6294828 () Bool)

(assert (=> b!5251688 m!6294828))

(assert (=> b!5251689 m!6294178))

(assert (=> b!5251689 m!6294178))

(declare-fun m!6294830 () Bool)

(assert (=> b!5251689 m!6294830))

(assert (=> b!5251689 m!6294180))

(assert (=> b!5251689 m!6294830))

(assert (=> b!5251689 m!6294180))

(declare-fun m!6294832 () Bool)

(assert (=> b!5251689 m!6294832))

(assert (=> b!5250836 d!1691497))

(declare-fun d!1691499 () Bool)

(assert (=> d!1691499 (= (flatMap!586 lt!2151812 lambda!264417) (dynLambda!24009 lambda!264417 lt!2151780))))

(declare-fun lt!2151935 () Unit!152886)

(assert (=> d!1691499 (= lt!2151935 (choose!39139 lt!2151812 lt!2151780 lambda!264417))))

(assert (=> d!1691499 (= lt!2151812 (store ((as const (Array Context!8486 Bool)) false) lt!2151780 true))))

(assert (=> d!1691499 (= (lemmaFlatMapOnSingletonSet!118 lt!2151812 lt!2151780 lambda!264417) lt!2151935)))

(declare-fun b_lambda!202819 () Bool)

(assert (=> (not b_lambda!202819) (not d!1691499)))

(declare-fun bs!1218200 () Bool)

(assert (= bs!1218200 d!1691499))

(assert (=> bs!1218200 m!6294116))

(declare-fun m!6294834 () Bool)

(assert (=> bs!1218200 m!6294834))

(declare-fun m!6294836 () Bool)

(assert (=> bs!1218200 m!6294836))

(assert (=> bs!1218200 m!6294118))

(assert (=> b!5250836 d!1691499))

(declare-fun d!1691501 () Bool)

(assert (=> d!1691501 (= (flatMap!586 lt!2151812 lambda!264417) (choose!39141 lt!2151812 lambda!264417))))

(declare-fun bs!1218202 () Bool)

(assert (= bs!1218202 d!1691501))

(declare-fun m!6294838 () Bool)

(assert (=> bs!1218202 m!6294838))

(assert (=> b!5250836 d!1691501))

(declare-fun d!1691503 () Bool)

(assert (=> d!1691503 (= (flatMap!586 lt!2151770 lambda!264417) (choose!39141 lt!2151770 lambda!264417))))

(declare-fun bs!1218203 () Bool)

(assert (= bs!1218203 d!1691503))

(declare-fun m!6294840 () Bool)

(assert (=> bs!1218203 m!6294840))

(assert (=> b!5250836 d!1691503))

(declare-fun b!5251690 () Bool)

(declare-fun e!3267241 () (InoxSet Context!8486))

(declare-fun call!372160 () (InoxSet Context!8486))

(assert (=> b!5251690 (= e!3267241 call!372160)))

(declare-fun b!5251691 () Bool)

(declare-fun e!3267240 () (InoxSet Context!8486))

(assert (=> b!5251691 (= e!3267240 e!3267241)))

(declare-fun c!908547 () Bool)

(assert (=> b!5251691 (= c!908547 ((_ is Cons!60752) (exprs!4743 lt!2151801)))))

(declare-fun b!5251692 () Bool)

(declare-fun e!3267239 () Bool)

(assert (=> b!5251692 (= e!3267239 (nullable!5028 (h!67200 (exprs!4743 lt!2151801))))))

(declare-fun d!1691505 () Bool)

(declare-fun c!908546 () Bool)

(assert (=> d!1691505 (= c!908546 e!3267239)))

(declare-fun res!2228612 () Bool)

(assert (=> d!1691505 (=> (not res!2228612) (not e!3267239))))

(assert (=> d!1691505 (= res!2228612 ((_ is Cons!60752) (exprs!4743 lt!2151801)))))

(assert (=> d!1691505 (= (derivationStepZipperUp!231 lt!2151801 (h!67202 s!2326)) e!3267240)))

(declare-fun b!5251693 () Bool)

(assert (=> b!5251693 (= e!3267240 ((_ map or) call!372160 (derivationStepZipperUp!231 (Context!8487 (t!374059 (exprs!4743 lt!2151801))) (h!67202 s!2326))))))

(declare-fun b!5251694 () Bool)

(assert (=> b!5251694 (= e!3267241 ((as const (Array Context!8486 Bool)) false))))

(declare-fun bm!372155 () Bool)

(assert (=> bm!372155 (= call!372160 (derivationStepZipperDown!307 (h!67200 (exprs!4743 lt!2151801)) (Context!8487 (t!374059 (exprs!4743 lt!2151801))) (h!67202 s!2326)))))

(assert (= (and d!1691505 res!2228612) b!5251692))

(assert (= (and d!1691505 c!908546) b!5251693))

(assert (= (and d!1691505 (not c!908546)) b!5251691))

(assert (= (and b!5251691 c!908547) b!5251690))

(assert (= (and b!5251691 (not c!908547)) b!5251694))

(assert (= (or b!5251693 b!5251690) bm!372155))

(declare-fun m!6294842 () Bool)

(assert (=> b!5251692 m!6294842))

(declare-fun m!6294844 () Bool)

(assert (=> b!5251693 m!6294844))

(declare-fun m!6294846 () Bool)

(assert (=> bm!372155 m!6294846))

(assert (=> b!5250836 d!1691505))

(declare-fun d!1691507 () Bool)

(assert (=> d!1691507 (= (nullable!5028 (regOne!30231 (regOne!30230 r!7292))) (nullableFct!1422 (regOne!30231 (regOne!30230 r!7292))))))

(declare-fun bs!1218204 () Bool)

(assert (= bs!1218204 d!1691507))

(declare-fun m!6294848 () Bool)

(assert (=> bs!1218204 m!6294848))

(assert (=> b!5250836 d!1691507))

(declare-fun bs!1218206 () Bool)

(declare-fun d!1691509 () Bool)

(assert (= bs!1218206 (and d!1691509 d!1691383)))

(declare-fun lambda!264477 () Int)

(assert (=> bs!1218206 (= lambda!264477 lambda!264438)))

(declare-fun bs!1218208 () Bool)

(assert (= bs!1218208 (and d!1691509 d!1691395)))

(assert (=> bs!1218208 (= lambda!264477 lambda!264442)))

(declare-fun bs!1218209 () Bool)

(assert (= bs!1218209 (and d!1691509 d!1691479)))

(assert (=> bs!1218209 (= lambda!264477 lambda!264474)))

(declare-fun bs!1218211 () Bool)

(assert (= bs!1218211 (and d!1691509 d!1691451)))

(assert (=> bs!1218211 (= lambda!264477 lambda!264464)))

(declare-fun bs!1218213 () Bool)

(assert (= bs!1218213 (and d!1691509 d!1691315)))

(assert (=> bs!1218213 (= lambda!264477 lambda!264432)))

(declare-fun bs!1218214 () Bool)

(assert (= bs!1218214 (and d!1691509 d!1691327)))

(assert (=> bs!1218214 (= lambda!264477 lambda!264433)))

(declare-fun bs!1218215 () Bool)

(assert (= bs!1218215 (and d!1691509 d!1691309)))

(assert (=> bs!1218215 (= lambda!264477 lambda!264430)))

(assert (=> d!1691509 (= (inv!80394 setElem!33527) (forall!14278 (exprs!4743 setElem!33527) lambda!264477))))

(declare-fun bs!1218217 () Bool)

(assert (= bs!1218217 d!1691509))

(declare-fun m!6294850 () Bool)

(assert (=> bs!1218217 m!6294850))

(assert (=> setNonEmpty!33527 d!1691509))

(declare-fun b!5251699 () Bool)

(declare-fun e!3267244 () Bool)

(declare-fun tp!1469118 () Bool)

(declare-fun tp!1469119 () Bool)

(assert (=> b!5251699 (= e!3267244 (and tp!1469118 tp!1469119))))

(assert (=> b!5250847 (= tp!1469104 e!3267244)))

(assert (= (and b!5250847 ((_ is Cons!60752) (exprs!4743 setElem!33527))) b!5251699))

(declare-fun b!5251700 () Bool)

(declare-fun e!3267245 () Bool)

(declare-fun tp!1469120 () Bool)

(declare-fun tp!1469121 () Bool)

(assert (=> b!5251700 (= e!3267245 (and tp!1469120 tp!1469121))))

(assert (=> b!5250833 (= tp!1469113 e!3267245)))

(assert (= (and b!5250833 ((_ is Cons!60752) (exprs!4743 (h!67201 zl!343)))) b!5251700))

(declare-fun b!5251728 () Bool)

(declare-fun e!3267255 () Bool)

(declare-fun tp!1469132 () Bool)

(declare-fun tp!1469133 () Bool)

(assert (=> b!5251728 (= e!3267255 (and tp!1469132 tp!1469133))))

(declare-fun b!5251725 () Bool)

(assert (=> b!5251725 (= e!3267255 tp_is_empty!38971)))

(assert (=> b!5250837 (= tp!1469111 e!3267255)))

(declare-fun b!5251727 () Bool)

(declare-fun tp!1469134 () Bool)

(assert (=> b!5251727 (= e!3267255 tp!1469134)))

(declare-fun b!5251726 () Bool)

(declare-fun tp!1469136 () Bool)

(declare-fun tp!1469135 () Bool)

(assert (=> b!5251726 (= e!3267255 (and tp!1469136 tp!1469135))))

(assert (= (and b!5250837 ((_ is ElementMatch!14859) (regOne!30230 r!7292))) b!5251725))

(assert (= (and b!5250837 ((_ is Concat!23704) (regOne!30230 r!7292))) b!5251726))

(assert (= (and b!5250837 ((_ is Star!14859) (regOne!30230 r!7292))) b!5251727))

(assert (= (and b!5250837 ((_ is Union!14859) (regOne!30230 r!7292))) b!5251728))

(declare-fun b!5251732 () Bool)

(declare-fun e!3267256 () Bool)

(declare-fun tp!1469137 () Bool)

(declare-fun tp!1469138 () Bool)

(assert (=> b!5251732 (= e!3267256 (and tp!1469137 tp!1469138))))

(declare-fun b!5251729 () Bool)

(assert (=> b!5251729 (= e!3267256 tp_is_empty!38971)))

(assert (=> b!5250837 (= tp!1469107 e!3267256)))

(declare-fun b!5251731 () Bool)

(declare-fun tp!1469139 () Bool)

(assert (=> b!5251731 (= e!3267256 tp!1469139)))

(declare-fun b!5251730 () Bool)

(declare-fun tp!1469141 () Bool)

(declare-fun tp!1469140 () Bool)

(assert (=> b!5251730 (= e!3267256 (and tp!1469141 tp!1469140))))

(assert (= (and b!5250837 ((_ is ElementMatch!14859) (regTwo!30230 r!7292))) b!5251729))

(assert (= (and b!5250837 ((_ is Concat!23704) (regTwo!30230 r!7292))) b!5251730))

(assert (= (and b!5250837 ((_ is Star!14859) (regTwo!30230 r!7292))) b!5251731))

(assert (= (and b!5250837 ((_ is Union!14859) (regTwo!30230 r!7292))) b!5251732))

(declare-fun b!5251736 () Bool)

(declare-fun e!3267257 () Bool)

(declare-fun tp!1469142 () Bool)

(declare-fun tp!1469143 () Bool)

(assert (=> b!5251736 (= e!3267257 (and tp!1469142 tp!1469143))))

(declare-fun b!5251733 () Bool)

(assert (=> b!5251733 (= e!3267257 tp_is_empty!38971)))

(assert (=> b!5250824 (= tp!1469106 e!3267257)))

(declare-fun b!5251735 () Bool)

(declare-fun tp!1469144 () Bool)

(assert (=> b!5251735 (= e!3267257 tp!1469144)))

(declare-fun b!5251734 () Bool)

(declare-fun tp!1469146 () Bool)

(declare-fun tp!1469145 () Bool)

(assert (=> b!5251734 (= e!3267257 (and tp!1469146 tp!1469145))))

(assert (= (and b!5250824 ((_ is ElementMatch!14859) (reg!15188 r!7292))) b!5251733))

(assert (= (and b!5250824 ((_ is Concat!23704) (reg!15188 r!7292))) b!5251734))

(assert (= (and b!5250824 ((_ is Star!14859) (reg!15188 r!7292))) b!5251735))

(assert (= (and b!5250824 ((_ is Union!14859) (reg!15188 r!7292))) b!5251736))

(declare-fun b!5251740 () Bool)

(declare-fun e!3267258 () Bool)

(declare-fun tp!1469147 () Bool)

(declare-fun tp!1469148 () Bool)

(assert (=> b!5251740 (= e!3267258 (and tp!1469147 tp!1469148))))

(declare-fun b!5251737 () Bool)

(assert (=> b!5251737 (= e!3267258 tp_is_empty!38971)))

(assert (=> b!5250829 (= tp!1469108 e!3267258)))

(declare-fun b!5251739 () Bool)

(declare-fun tp!1469149 () Bool)

(assert (=> b!5251739 (= e!3267258 tp!1469149)))

(declare-fun b!5251738 () Bool)

(declare-fun tp!1469151 () Bool)

(declare-fun tp!1469150 () Bool)

(assert (=> b!5251738 (= e!3267258 (and tp!1469151 tp!1469150))))

(assert (= (and b!5250829 ((_ is ElementMatch!14859) (regOne!30231 r!7292))) b!5251737))

(assert (= (and b!5250829 ((_ is Concat!23704) (regOne!30231 r!7292))) b!5251738))

(assert (= (and b!5250829 ((_ is Star!14859) (regOne!30231 r!7292))) b!5251739))

(assert (= (and b!5250829 ((_ is Union!14859) (regOne!30231 r!7292))) b!5251740))

(declare-fun b!5251744 () Bool)

(declare-fun e!3267259 () Bool)

(declare-fun tp!1469152 () Bool)

(declare-fun tp!1469153 () Bool)

(assert (=> b!5251744 (= e!3267259 (and tp!1469152 tp!1469153))))

(declare-fun b!5251741 () Bool)

(assert (=> b!5251741 (= e!3267259 tp_is_empty!38971)))

(assert (=> b!5250829 (= tp!1469105 e!3267259)))

(declare-fun b!5251743 () Bool)

(declare-fun tp!1469154 () Bool)

(assert (=> b!5251743 (= e!3267259 tp!1469154)))

(declare-fun b!5251742 () Bool)

(declare-fun tp!1469156 () Bool)

(declare-fun tp!1469155 () Bool)

(assert (=> b!5251742 (= e!3267259 (and tp!1469156 tp!1469155))))

(assert (= (and b!5250829 ((_ is ElementMatch!14859) (regTwo!30231 r!7292))) b!5251741))

(assert (= (and b!5250829 ((_ is Concat!23704) (regTwo!30231 r!7292))) b!5251742))

(assert (= (and b!5250829 ((_ is Star!14859) (regTwo!30231 r!7292))) b!5251743))

(assert (= (and b!5250829 ((_ is Union!14859) (regTwo!30231 r!7292))) b!5251744))

(declare-fun b!5251749 () Bool)

(declare-fun e!3267262 () Bool)

(declare-fun tp!1469159 () Bool)

(assert (=> b!5251749 (= e!3267262 (and tp_is_empty!38971 tp!1469159))))

(assert (=> b!5250830 (= tp!1469110 e!3267262)))

(assert (= (and b!5250830 ((_ is Cons!60754) (t!374061 s!2326))) b!5251749))

(declare-fun b!5251757 () Bool)

(declare-fun e!3267268 () Bool)

(declare-fun tp!1469164 () Bool)

(assert (=> b!5251757 (= e!3267268 tp!1469164)))

(declare-fun e!3267267 () Bool)

(declare-fun tp!1469165 () Bool)

(declare-fun b!5251756 () Bool)

(assert (=> b!5251756 (= e!3267267 (and (inv!80394 (h!67201 (t!374060 zl!343))) e!3267268 tp!1469165))))

(assert (=> b!5250815 (= tp!1469112 e!3267267)))

(assert (= b!5251756 b!5251757))

(assert (= (and b!5250815 ((_ is Cons!60753) (t!374060 zl!343))) b!5251756))

(declare-fun m!6294866 () Bool)

(assert (=> b!5251756 m!6294866))

(declare-fun condSetEmpty!33530 () Bool)

(assert (=> setNonEmpty!33527 (= condSetEmpty!33530 (= setRest!33527 ((as const (Array Context!8486 Bool)) false)))))

(declare-fun setRes!33530 () Bool)

(assert (=> setNonEmpty!33527 (= tp!1469109 setRes!33530)))

(declare-fun setIsEmpty!33530 () Bool)

(assert (=> setIsEmpty!33530 setRes!33530))

(declare-fun tp!1469171 () Bool)

(declare-fun e!3267271 () Bool)

(declare-fun setElem!33530 () Context!8486)

(declare-fun setNonEmpty!33530 () Bool)

(assert (=> setNonEmpty!33530 (= setRes!33530 (and tp!1469171 (inv!80394 setElem!33530) e!3267271))))

(declare-fun setRest!33530 () (InoxSet Context!8486))

(assert (=> setNonEmpty!33530 (= setRest!33527 ((_ map or) (store ((as const (Array Context!8486 Bool)) false) setElem!33530 true) setRest!33530))))

(declare-fun b!5251762 () Bool)

(declare-fun tp!1469170 () Bool)

(assert (=> b!5251762 (= e!3267271 tp!1469170)))

(assert (= (and setNonEmpty!33527 condSetEmpty!33530) setIsEmpty!33530))

(assert (= (and setNonEmpty!33527 (not condSetEmpty!33530)) setNonEmpty!33530))

(assert (= setNonEmpty!33530 b!5251762))

(declare-fun m!6294872 () Bool)

(assert (=> setNonEmpty!33530 m!6294872))

(declare-fun b_lambda!202821 () Bool)

(assert (= b_lambda!202817 (or b!5250855 b_lambda!202821)))

(declare-fun bs!1218233 () Bool)

(declare-fun d!1691521 () Bool)

(assert (= bs!1218233 (and d!1691521 b!5250855)))

(assert (=> bs!1218233 (= (dynLambda!24009 lambda!264417 lt!2151801) (derivationStepZipperUp!231 lt!2151801 (h!67202 s!2326)))))

(assert (=> bs!1218233 m!6294106))

(assert (=> d!1691495 d!1691521))

(declare-fun b_lambda!202823 () Bool)

(assert (= b_lambda!202819 (or b!5250855 b_lambda!202823)))

(declare-fun bs!1218234 () Bool)

(declare-fun d!1691523 () Bool)

(assert (= bs!1218234 (and d!1691523 b!5250855)))

(assert (=> bs!1218234 (= (dynLambda!24009 lambda!264417 lt!2151780) (derivationStepZipperUp!231 lt!2151780 (h!67202 s!2326)))))

(assert (=> bs!1218234 m!6294120))

(assert (=> d!1691499 d!1691523))

(declare-fun b_lambda!202825 () Bool)

(assert (= b_lambda!202815 (or b!5250855 b_lambda!202825)))

(declare-fun bs!1218235 () Bool)

(declare-fun d!1691527 () Bool)

(assert (= bs!1218235 (and d!1691527 b!5250855)))

(assert (=> bs!1218235 (= (dynLambda!24009 lambda!264417 (h!67201 zl!343)) (derivationStepZipperUp!231 (h!67201 zl!343) (h!67202 s!2326)))))

(assert (=> bs!1218235 m!6294078))

(assert (=> d!1691453 d!1691527))

(check-sat (not d!1691453) (not b!5251407) (not b!5251649) (not b!5251420) (not d!1691293) (not bm!372122) (not b!5250952) (not b!5250909) (not b_lambda!202821) (not bm!372154) (not b!5251025) (not b!5251103) (not b!5251727) (not b!5251235) (not d!1691309) (not b!5251073) (not b!5251682) (not b!5251037) (not b!5251739) (not b!5251187) (not d!1691437) (not d!1691507) (not b!5251434) (not b!5251433) (not bm!372116) (not d!1691443) (not b!5251212) (not b!5251226) (not b!5251597) (not d!1691413) (not b!5251735) (not b!5251728) (not b!5251225) (not d!1691501) (not b!5251742) (not bm!372097) (not b!5251101) (not b!5251689) (not bm!372118) (not d!1691395) (not b!5250869) (not bm!372151) (not b!5251044) (not bs!1218235) (not b!5251692) (not bm!372143) (not bm!372146) (not d!1691323) (not b!5251023) (not b!5250870) (not b!5251045) (not b!5251399) (not d!1691491) (not bm!372124) (not b!5251227) (not d!1691467) (not b!5251411) (not b!5251740) (not b!5251080) (not bm!372117) (not b_lambda!202825) (not b!5251589) (not b!5251361) (not d!1691489) (not b!5251100) (not bm!372050) (not d!1691325) (not b!5251650) (not bm!372147) (not d!1691343) (not bm!372051) (not b!5251542) (not b!5251550) (not b!5251549) (not b!5251048) (not b!5251545) (not b!5251544) (not b!5251220) (not b!5251738) (not b!5251214) (not b!5251055) (not d!1691315) (not b!5251016) (not b!5251700) (not bm!372049) (not b!5251024) (not b!5251218) (not b!5251189) (not b!5251217) (not d!1691497) (not b!5251599) (not b!5251081) (not b!5251185) (not b!5251104) (not b!5251076) (not b!5251036) (not d!1691295) (not d!1691301) (not b!5251414) (not b!5250963) (not b!5251642) (not b!5251686) (not b!5251188) (not b!5251369) (not b!5251604) (not d!1691351) (not bm!372131) (not d!1691353) (not b!5251412) (not bs!1218234) (not bm!372127) (not b!5251071) (not b_lambda!202823) (not b!5251370) (not b!5251732) (not b!5250864) (not b!5251435) (not b!5251363) (not b!5251591) (not b!5251426) (not b!5251079) (not b!5250954) (not b!5251730) (not b!5251057) (not b!5250901) (not b!5251762) (not b!5251602) (not bm!372052) (not b!5251043) (not d!1691509) (not b!5251056) (not setNonEmpty!33530) (not b!5251425) (not d!1691357) (not b!5251756) (not bm!372129) (not d!1691369) (not b!5251757) (not b!5251203) (not b!5251693) (not b!5251744) (not b!5251074) (not bm!372155) (not d!1691331) (not b!5251040) (not d!1691297) (not d!1691371) (not b!5251020) (not b!5251017) (not d!1691415) (not b!5251184) (not b!5250908) (not bm!372096) (not b!5251038) (not b!5251428) (not b!5251588) (not b!5251183) (not b!5251596) (not d!1691345) (not d!1691321) (not b!5251743) (not b!5251047) (not d!1691449) (not b!5251590) (not b!5251603) (not b!5251625) (not b!5251421) (not b!5251162) (not d!1691455) (not bm!372053) (not d!1691495) (not d!1691383) (not bm!372095) (not b!5251593) (not b!5251688) (not b!5251595) (not d!1691411) (not b!5251318) (not b!5251749) (not b!5251734) (not b!5251072) (not b!5251681) (not b!5251626) (not bm!372083) (not bm!372044) (not d!1691327) (not b!5251364) (not b!5251636) (not b!5251018) (not b!5251099) (not d!1691407) (not b!5251367) (not b!5250965) (not d!1691503) (not b!5251419) (not b!5251731) (not bm!372130) (not d!1691405) (not bs!1218233) (not b!5251234) (not d!1691409) (not b!5250910) (not b!5251736) (not bm!372148) (not d!1691499) (not b!5251050) (not d!1691479) (not d!1691431) (not b!5251685) (not b!5251543) (not b!5250900) (not d!1691403) (not d!1691341) (not d!1691441) (not d!1691299) (not d!1691367) (not b!5251641) (not b!5251102) (not d!1691355) (not b!5251362) (not bm!372085) (not b!5250903) (not b!5251070) (not b!5251699) tp_is_empty!38971 (not bm!372123) (not b!5251329) (not d!1691451) (not b!5251726) (not bm!372150) (not d!1691291) (not b!5251186))
(check-sat)
