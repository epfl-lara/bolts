; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!631136 () Bool)

(assert start!631136)

(declare-fun b!6370672 () Bool)

(assert (=> b!6370672 true))

(assert (=> b!6370672 true))

(declare-fun lambda!351091 () Int)

(declare-fun lambda!351090 () Int)

(assert (=> b!6370672 (not (= lambda!351091 lambda!351090))))

(assert (=> b!6370672 true))

(assert (=> b!6370672 true))

(declare-fun b!6370646 () Bool)

(assert (=> b!6370646 true))

(declare-fun e!3867824 () Bool)

(declare-fun e!3867833 () Bool)

(assert (=> b!6370646 (= e!3867824 e!3867833)))

(declare-fun res!2620796 () Bool)

(assert (=> b!6370646 (=> res!2620796 e!3867833)))

(declare-datatypes ((C!32830 0))(
  ( (C!32831 (val!26117 Int)) )
))
(declare-datatypes ((Regex!16280 0))(
  ( (ElementMatch!16280 (c!1160141 C!32830)) (Concat!25125 (regOne!33072 Regex!16280) (regTwo!33072 Regex!16280)) (EmptyExpr!16280) (Star!16280 (reg!16609 Regex!16280)) (EmptyLang!16280) (Union!16280 (regOne!33073 Regex!16280) (regTwo!33073 Regex!16280)) )
))
(declare-fun r!7292 () Regex!16280)

(declare-datatypes ((List!65139 0))(
  ( (Nil!65015) (Cons!65015 (h!71463 C!32830) (t!378739 List!65139)) )
))
(declare-fun s!2326 () List!65139)

(assert (=> b!6370646 (= res!2620796 (or (and (is-ElementMatch!16280 (regOne!33072 r!7292)) (= (c!1160141 (regOne!33072 r!7292)) (h!71463 s!2326))) (is-Union!16280 (regOne!33072 r!7292))))))

(declare-datatypes ((Unit!158451 0))(
  ( (Unit!158452) )
))
(declare-fun lt!2368149 () Unit!158451)

(declare-fun e!3867828 () Unit!158451)

(assert (=> b!6370646 (= lt!2368149 e!3867828)))

(declare-fun c!1160140 () Bool)

(declare-datatypes ((List!65140 0))(
  ( (Nil!65016) (Cons!65016 (h!71464 Regex!16280) (t!378740 List!65140)) )
))
(declare-datatypes ((Context!11328 0))(
  ( (Context!11329 (exprs!6164 List!65140)) )
))
(declare-datatypes ((List!65141 0))(
  ( (Nil!65017) (Cons!65017 (h!71465 Context!11328) (t!378741 List!65141)) )
))
(declare-fun zl!343 () List!65141)

(declare-fun nullable!6273 (Regex!16280) Bool)

(assert (=> b!6370646 (= c!1160140 (nullable!6273 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun z!1189 () (Set Context!11328))

(declare-fun lambda!351092 () Int)

(declare-fun flatMap!1785 ((Set Context!11328) Int) (Set Context!11328))

(declare-fun derivationStepZipperUp!1454 (Context!11328 C!32830) (Set Context!11328))

(assert (=> b!6370646 (= (flatMap!1785 z!1189 lambda!351092) (derivationStepZipperUp!1454 (h!71465 zl!343) (h!71463 s!2326)))))

(declare-fun lt!2368150 () Unit!158451)

(declare-fun lemmaFlatMapOnSingletonSet!1311 ((Set Context!11328) Context!11328 Int) Unit!158451)

(assert (=> b!6370646 (= lt!2368150 (lemmaFlatMapOnSingletonSet!1311 z!1189 (h!71465 zl!343) lambda!351092))))

(declare-fun lt!2368153 () (Set Context!11328))

(declare-fun lt!2368148 () Context!11328)

(assert (=> b!6370646 (= lt!2368153 (derivationStepZipperUp!1454 lt!2368148 (h!71463 s!2326)))))

(declare-fun lt!2368146 () (Set Context!11328))

(declare-fun derivationStepZipperDown!1528 (Regex!16280 Context!11328 C!32830) (Set Context!11328))

(assert (=> b!6370646 (= lt!2368146 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 (h!71465 zl!343))) lt!2368148 (h!71463 s!2326)))))

(assert (=> b!6370646 (= lt!2368148 (Context!11329 (t!378740 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun lt!2368136 () (Set Context!11328))

(assert (=> b!6370646 (= lt!2368136 (derivationStepZipperUp!1454 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343))))) (h!71463 s!2326)))))

(declare-fun b!6370647 () Bool)

(declare-fun res!2620799 () Bool)

(declare-fun e!3867832 () Bool)

(assert (=> b!6370647 (=> res!2620799 e!3867832)))

(declare-fun lt!2368154 () Regex!16280)

(assert (=> b!6370647 (= res!2620799 (not (= lt!2368154 r!7292)))))

(declare-fun b!6370648 () Bool)

(declare-fun Unit!158453 () Unit!158451)

(assert (=> b!6370648 (= e!3867828 Unit!158453)))

(declare-fun b!6370649 () Bool)

(declare-fun e!3867830 () Bool)

(assert (=> b!6370649 (= e!3867832 e!3867830)))

(declare-fun res!2620812 () Bool)

(assert (=> b!6370649 (=> res!2620812 e!3867830)))

(declare-fun lt!2368142 () Regex!16280)

(assert (=> b!6370649 (= res!2620812 (not (= r!7292 lt!2368142)))))

(declare-fun lt!2368144 () Regex!16280)

(assert (=> b!6370649 (= lt!2368142 (Concat!25125 lt!2368144 (regTwo!33072 r!7292)))))

(declare-fun b!6370650 () Bool)

(declare-fun e!3867821 () Bool)

(declare-fun tp_is_empty!41813 () Bool)

(declare-fun tp!1773693 () Bool)

(assert (=> b!6370650 (= e!3867821 (and tp_is_empty!41813 tp!1773693))))

(declare-fun b!6370651 () Bool)

(declare-fun e!3867834 () Bool)

(assert (=> b!6370651 (= e!3867834 (nullable!6273 (regOne!33072 (regOne!33072 r!7292))))))

(declare-fun e!3867826 () Bool)

(declare-fun setRes!43433 () Bool)

(declare-fun tp!1773696 () Bool)

(declare-fun setNonEmpty!43433 () Bool)

(declare-fun setElem!43433 () Context!11328)

(declare-fun inv!83948 (Context!11328) Bool)

(assert (=> setNonEmpty!43433 (= setRes!43433 (and tp!1773696 (inv!83948 setElem!43433) e!3867826))))

(declare-fun setRest!43433 () (Set Context!11328))

(assert (=> setNonEmpty!43433 (= z!1189 (set.union (set.insert setElem!43433 (as set.empty (Set Context!11328))) setRest!43433))))

(declare-fun b!6370652 () Bool)

(declare-fun Unit!158454 () Unit!158451)

(assert (=> b!6370652 (= e!3867828 Unit!158454)))

(declare-fun lt!2368137 () Unit!158451)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1111 ((Set Context!11328) (Set Context!11328) List!65139) Unit!158451)

(assert (=> b!6370652 (= lt!2368137 (lemmaZipperConcatMatchesSameAsBothZippers!1111 lt!2368146 lt!2368153 (t!378739 s!2326)))))

(declare-fun res!2620805 () Bool)

(declare-fun matchZipper!2292 ((Set Context!11328) List!65139) Bool)

(assert (=> b!6370652 (= res!2620805 (matchZipper!2292 lt!2368146 (t!378739 s!2326)))))

(declare-fun e!3867831 () Bool)

(assert (=> b!6370652 (=> res!2620805 e!3867831)))

(assert (=> b!6370652 (= (matchZipper!2292 (set.union lt!2368146 lt!2368153) (t!378739 s!2326)) e!3867831)))

(declare-fun b!6370653 () Bool)

(declare-fun res!2620811 () Bool)

(assert (=> b!6370653 (=> res!2620811 e!3867833)))

(assert (=> b!6370653 (= res!2620811 e!3867834)))

(declare-fun res!2620807 () Bool)

(assert (=> b!6370653 (=> (not res!2620807) (not e!3867834))))

(assert (=> b!6370653 (= res!2620807 (is-Concat!25125 (regOne!33072 r!7292)))))

(declare-fun b!6370654 () Bool)

(declare-fun res!2620804 () Bool)

(declare-fun e!3867825 () Bool)

(assert (=> b!6370654 (=> res!2620804 e!3867825)))

(declare-fun generalisedConcat!1877 (List!65140) Regex!16280)

(assert (=> b!6370654 (= res!2620804 (not (= r!7292 (generalisedConcat!1877 (exprs!6164 (h!71465 zl!343))))))))

(declare-fun b!6370655 () Bool)

(declare-fun e!3867835 () Bool)

(assert (=> b!6370655 (= e!3867835 (not e!3867825))))

(declare-fun res!2620801 () Bool)

(assert (=> b!6370655 (=> res!2620801 e!3867825)))

(assert (=> b!6370655 (= res!2620801 (not (is-Cons!65017 zl!343)))))

(declare-fun lt!2368138 () Bool)

(declare-fun matchRSpec!3381 (Regex!16280 List!65139) Bool)

(assert (=> b!6370655 (= lt!2368138 (matchRSpec!3381 r!7292 s!2326))))

(declare-fun matchR!8463 (Regex!16280 List!65139) Bool)

(assert (=> b!6370655 (= lt!2368138 (matchR!8463 r!7292 s!2326))))

(declare-fun lt!2368143 () Unit!158451)

(declare-fun mainMatchTheorem!3381 (Regex!16280 List!65139) Unit!158451)

(assert (=> b!6370655 (= lt!2368143 (mainMatchTheorem!3381 r!7292 s!2326))))

(declare-fun b!6370656 () Bool)

(declare-fun res!2620795 () Bool)

(assert (=> b!6370656 (=> res!2620795 e!3867825)))

(declare-fun isEmpty!37131 (List!65141) Bool)

(assert (=> b!6370656 (= res!2620795 (not (isEmpty!37131 (t!378741 zl!343))))))

(declare-fun b!6370657 () Bool)

(declare-fun e!3867822 () Bool)

(declare-fun tp!1773688 () Bool)

(declare-fun tp!1773690 () Bool)

(assert (=> b!6370657 (= e!3867822 (and tp!1773688 tp!1773690))))

(declare-fun res!2620809 () Bool)

(declare-fun e!3867836 () Bool)

(assert (=> start!631136 (=> (not res!2620809) (not e!3867836))))

(declare-fun validRegex!8016 (Regex!16280) Bool)

(assert (=> start!631136 (= res!2620809 (validRegex!8016 r!7292))))

(assert (=> start!631136 e!3867836))

(assert (=> start!631136 e!3867822))

(declare-fun condSetEmpty!43433 () Bool)

(assert (=> start!631136 (= condSetEmpty!43433 (= z!1189 (as set.empty (Set Context!11328))))))

(assert (=> start!631136 setRes!43433))

(declare-fun e!3867827 () Bool)

(assert (=> start!631136 e!3867827))

(assert (=> start!631136 e!3867821))

(declare-fun b!6370658 () Bool)

(assert (=> b!6370658 (= e!3867831 (matchZipper!2292 lt!2368153 (t!378739 s!2326)))))

(declare-fun b!6370659 () Bool)

(declare-fun res!2620794 () Bool)

(assert (=> b!6370659 (=> res!2620794 e!3867825)))

(declare-fun generalisedUnion!2124 (List!65140) Regex!16280)

(declare-fun unfocusZipperList!1701 (List!65141) List!65140)

(assert (=> b!6370659 (= res!2620794 (not (= r!7292 (generalisedUnion!2124 (unfocusZipperList!1701 zl!343)))))))

(declare-fun b!6370660 () Bool)

(declare-fun res!2620814 () Bool)

(assert (=> b!6370660 (=> res!2620814 e!3867830)))

(declare-fun lt!2368139 () Context!11328)

(declare-fun unfocusZipper!2022 (List!65141) Regex!16280)

(assert (=> b!6370660 (= res!2620814 (not (= (unfocusZipper!2022 (Cons!65017 lt!2368139 Nil!65017)) (Concat!25125 (reg!16609 (regOne!33072 r!7292)) lt!2368142))))))

(declare-fun setIsEmpty!43433 () Bool)

(assert (=> setIsEmpty!43433 setRes!43433))

(declare-fun e!3867829 () Bool)

(declare-fun tp!1773694 () Bool)

(declare-fun b!6370661 () Bool)

(assert (=> b!6370661 (= e!3867827 (and (inv!83948 (h!71465 zl!343)) e!3867829 tp!1773694))))

(declare-fun b!6370662 () Bool)

(declare-fun tp!1773692 () Bool)

(assert (=> b!6370662 (= e!3867822 tp!1773692)))

(declare-fun b!6370663 () Bool)

(declare-fun lt!2368140 () Context!11328)

(assert (=> b!6370663 (= e!3867830 (inv!83948 lt!2368140))))

(declare-fun lt!2368141 () (Set Context!11328))

(assert (=> b!6370663 (= lt!2368141 (derivationStepZipperUp!1454 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016)) (h!71463 s!2326)))))

(declare-fun b!6370664 () Bool)

(declare-fun tp!1773695 () Bool)

(assert (=> b!6370664 (= e!3867826 tp!1773695)))

(declare-fun b!6370665 () Bool)

(declare-fun res!2620803 () Bool)

(assert (=> b!6370665 (=> res!2620803 e!3867824)))

(declare-fun isEmpty!37132 (List!65140) Bool)

(assert (=> b!6370665 (= res!2620803 (isEmpty!37132 (t!378740 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6370666 () Bool)

(declare-fun res!2620808 () Bool)

(assert (=> b!6370666 (=> res!2620808 e!3867832)))

(declare-fun lt!2368157 () (Set Context!11328))

(declare-fun lt!2368152 () (Set Context!11328))

(assert (=> b!6370666 (= res!2620808 (not (= (matchZipper!2292 lt!2368152 s!2326) (matchZipper!2292 lt!2368157 (t!378739 s!2326)))))))

(declare-fun b!6370667 () Bool)

(assert (=> b!6370667 (= e!3867836 e!3867835)))

(declare-fun res!2620802 () Bool)

(assert (=> b!6370667 (=> (not res!2620802) (not e!3867835))))

(assert (=> b!6370667 (= res!2620802 (= r!7292 lt!2368154))))

(assert (=> b!6370667 (= lt!2368154 (unfocusZipper!2022 zl!343))))

(declare-fun b!6370668 () Bool)

(declare-fun res!2620798 () Bool)

(assert (=> b!6370668 (=> res!2620798 e!3867825)))

(assert (=> b!6370668 (= res!2620798 (not (is-Cons!65016 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6370669 () Bool)

(declare-fun tp!1773689 () Bool)

(declare-fun tp!1773687 () Bool)

(assert (=> b!6370669 (= e!3867822 (and tp!1773689 tp!1773687))))

(declare-fun b!6370670 () Bool)

(declare-fun res!2620810 () Bool)

(assert (=> b!6370670 (=> res!2620810 e!3867833)))

(assert (=> b!6370670 (= res!2620810 (or (is-Concat!25125 (regOne!33072 r!7292)) (not (is-Star!16280 (regOne!33072 r!7292)))))))

(declare-fun b!6370671 () Bool)

(declare-fun res!2620793 () Bool)

(assert (=> b!6370671 (=> (not res!2620793) (not e!3867836))))

(declare-fun toList!10064 ((Set Context!11328)) List!65141)

(assert (=> b!6370671 (= res!2620793 (= (toList!10064 z!1189) zl!343))))

(assert (=> b!6370672 (= e!3867825 e!3867824)))

(declare-fun res!2620813 () Bool)

(assert (=> b!6370672 (=> res!2620813 e!3867824)))

(declare-fun lt!2368151 () Bool)

(assert (=> b!6370672 (= res!2620813 (or (not (= lt!2368138 lt!2368151)) (is-Nil!65015 s!2326)))))

(declare-fun Exists!3350 (Int) Bool)

(assert (=> b!6370672 (= (Exists!3350 lambda!351090) (Exists!3350 lambda!351091))))

(declare-fun lt!2368156 () Unit!158451)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1887 (Regex!16280 Regex!16280 List!65139) Unit!158451)

(assert (=> b!6370672 (= lt!2368156 (lemmaExistCutMatchRandMatchRSpecEquivalent!1887 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326))))

(assert (=> b!6370672 (= lt!2368151 (Exists!3350 lambda!351090))))

(declare-datatypes ((tuple2!66518 0))(
  ( (tuple2!66519 (_1!36562 List!65139) (_2!36562 List!65139)) )
))
(declare-datatypes ((Option!16171 0))(
  ( (None!16170) (Some!16170 (v!52339 tuple2!66518)) )
))
(declare-fun isDefined!12874 (Option!16171) Bool)

(declare-fun findConcatSeparation!2585 (Regex!16280 Regex!16280 List!65139 List!65139 List!65139) Option!16171)

(assert (=> b!6370672 (= lt!2368151 (isDefined!12874 (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) Nil!65015 s!2326 s!2326)))))

(declare-fun lt!2368147 () Unit!158451)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2349 (Regex!16280 Regex!16280 List!65139) Unit!158451)

(assert (=> b!6370672 (= lt!2368147 (lemmaFindConcatSeparationEquivalentToExists!2349 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326))))

(declare-fun b!6370673 () Bool)

(declare-fun res!2620806 () Bool)

(assert (=> b!6370673 (=> res!2620806 e!3867825)))

(assert (=> b!6370673 (= res!2620806 (or (is-EmptyExpr!16280 r!7292) (is-EmptyLang!16280 r!7292) (is-ElementMatch!16280 r!7292) (is-Union!16280 r!7292) (not (is-Concat!25125 r!7292))))))

(declare-fun b!6370674 () Bool)

(declare-fun e!3867823 () Bool)

(assert (=> b!6370674 (= e!3867823 e!3867832)))

(declare-fun res!2620797 () Bool)

(assert (=> b!6370674 (=> res!2620797 e!3867832)))

(declare-fun lt!2368155 () (Set Context!11328))

(assert (=> b!6370674 (= res!2620797 (not (= lt!2368157 lt!2368155)))))

(assert (=> b!6370674 (= (flatMap!1785 lt!2368152 lambda!351092) (derivationStepZipperUp!1454 lt!2368139 (h!71463 s!2326)))))

(declare-fun lt!2368158 () Unit!158451)

(assert (=> b!6370674 (= lt!2368158 (lemmaFlatMapOnSingletonSet!1311 lt!2368152 lt!2368139 lambda!351092))))

(declare-fun lt!2368145 () (Set Context!11328))

(assert (=> b!6370674 (= lt!2368145 (derivationStepZipperUp!1454 lt!2368139 (h!71463 s!2326)))))

(declare-fun derivationStepZipper!2246 ((Set Context!11328) C!32830) (Set Context!11328))

(assert (=> b!6370674 (= lt!2368157 (derivationStepZipper!2246 lt!2368152 (h!71463 s!2326)))))

(assert (=> b!6370674 (= lt!2368152 (set.insert lt!2368139 (as set.empty (Set Context!11328))))))

(declare-fun lt!2368135 () List!65140)

(assert (=> b!6370674 (= lt!2368139 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) lt!2368135)))))

(declare-fun b!6370675 () Bool)

(assert (=> b!6370675 (= e!3867833 e!3867823)))

(declare-fun res!2620800 () Bool)

(assert (=> b!6370675 (=> res!2620800 e!3867823)))

(assert (=> b!6370675 (= res!2620800 (not (= lt!2368146 lt!2368155)))))

(assert (=> b!6370675 (= lt!2368155 (derivationStepZipperDown!1528 (reg!16609 (regOne!33072 r!7292)) lt!2368140 (h!71463 s!2326)))))

(assert (=> b!6370675 (= lt!2368140 (Context!11329 lt!2368135))))

(assert (=> b!6370675 (= lt!2368135 (Cons!65016 lt!2368144 (t!378740 (exprs!6164 (h!71465 zl!343)))))))

(assert (=> b!6370675 (= lt!2368144 (Star!16280 (reg!16609 (regOne!33072 r!7292))))))

(declare-fun b!6370676 () Bool)

(assert (=> b!6370676 (= e!3867822 tp_is_empty!41813)))

(declare-fun b!6370677 () Bool)

(declare-fun tp!1773691 () Bool)

(assert (=> b!6370677 (= e!3867829 tp!1773691)))

(assert (= (and start!631136 res!2620809) b!6370671))

(assert (= (and b!6370671 res!2620793) b!6370667))

(assert (= (and b!6370667 res!2620802) b!6370655))

(assert (= (and b!6370655 (not res!2620801)) b!6370656))

(assert (= (and b!6370656 (not res!2620795)) b!6370654))

(assert (= (and b!6370654 (not res!2620804)) b!6370668))

(assert (= (and b!6370668 (not res!2620798)) b!6370659))

(assert (= (and b!6370659 (not res!2620794)) b!6370673))

(assert (= (and b!6370673 (not res!2620806)) b!6370672))

(assert (= (and b!6370672 (not res!2620813)) b!6370665))

(assert (= (and b!6370665 (not res!2620803)) b!6370646))

(assert (= (and b!6370646 c!1160140) b!6370652))

(assert (= (and b!6370646 (not c!1160140)) b!6370648))

(assert (= (and b!6370652 (not res!2620805)) b!6370658))

(assert (= (and b!6370646 (not res!2620796)) b!6370653))

(assert (= (and b!6370653 res!2620807) b!6370651))

(assert (= (and b!6370653 (not res!2620811)) b!6370670))

(assert (= (and b!6370670 (not res!2620810)) b!6370675))

(assert (= (and b!6370675 (not res!2620800)) b!6370674))

(assert (= (and b!6370674 (not res!2620797)) b!6370666))

(assert (= (and b!6370666 (not res!2620808)) b!6370647))

(assert (= (and b!6370647 (not res!2620799)) b!6370649))

(assert (= (and b!6370649 (not res!2620812)) b!6370660))

(assert (= (and b!6370660 (not res!2620814)) b!6370663))

(assert (= (and start!631136 (is-ElementMatch!16280 r!7292)) b!6370676))

(assert (= (and start!631136 (is-Concat!25125 r!7292)) b!6370669))

(assert (= (and start!631136 (is-Star!16280 r!7292)) b!6370662))

(assert (= (and start!631136 (is-Union!16280 r!7292)) b!6370657))

(assert (= (and start!631136 condSetEmpty!43433) setIsEmpty!43433))

(assert (= (and start!631136 (not condSetEmpty!43433)) setNonEmpty!43433))

(assert (= setNonEmpty!43433 b!6370664))

(assert (= b!6370661 b!6370677))

(assert (= (and start!631136 (is-Cons!65017 zl!343)) b!6370661))

(assert (= (and start!631136 (is-Cons!65015 s!2326)) b!6370650))

(declare-fun m!7173488 () Bool)

(assert (=> b!6370675 m!7173488))

(declare-fun m!7173490 () Bool)

(assert (=> b!6370666 m!7173490))

(declare-fun m!7173492 () Bool)

(assert (=> b!6370666 m!7173492))

(declare-fun m!7173494 () Bool)

(assert (=> b!6370660 m!7173494))

(declare-fun m!7173496 () Bool)

(assert (=> b!6370656 m!7173496))

(declare-fun m!7173498 () Bool)

(assert (=> b!6370652 m!7173498))

(declare-fun m!7173500 () Bool)

(assert (=> b!6370652 m!7173500))

(declare-fun m!7173502 () Bool)

(assert (=> b!6370652 m!7173502))

(declare-fun m!7173504 () Bool)

(assert (=> b!6370655 m!7173504))

(declare-fun m!7173506 () Bool)

(assert (=> b!6370655 m!7173506))

(declare-fun m!7173508 () Bool)

(assert (=> b!6370655 m!7173508))

(declare-fun m!7173510 () Bool)

(assert (=> start!631136 m!7173510))

(declare-fun m!7173512 () Bool)

(assert (=> setNonEmpty!43433 m!7173512))

(declare-fun m!7173514 () Bool)

(assert (=> b!6370671 m!7173514))

(declare-fun m!7173516 () Bool)

(assert (=> b!6370674 m!7173516))

(declare-fun m!7173518 () Bool)

(assert (=> b!6370674 m!7173518))

(declare-fun m!7173520 () Bool)

(assert (=> b!6370674 m!7173520))

(declare-fun m!7173522 () Bool)

(assert (=> b!6370674 m!7173522))

(declare-fun m!7173524 () Bool)

(assert (=> b!6370674 m!7173524))

(declare-fun m!7173526 () Bool)

(assert (=> b!6370654 m!7173526))

(declare-fun m!7173528 () Bool)

(assert (=> b!6370646 m!7173528))

(declare-fun m!7173530 () Bool)

(assert (=> b!6370646 m!7173530))

(declare-fun m!7173532 () Bool)

(assert (=> b!6370646 m!7173532))

(declare-fun m!7173534 () Bool)

(assert (=> b!6370646 m!7173534))

(declare-fun m!7173536 () Bool)

(assert (=> b!6370646 m!7173536))

(declare-fun m!7173538 () Bool)

(assert (=> b!6370646 m!7173538))

(declare-fun m!7173540 () Bool)

(assert (=> b!6370646 m!7173540))

(declare-fun m!7173542 () Bool)

(assert (=> b!6370651 m!7173542))

(declare-fun m!7173544 () Bool)

(assert (=> b!6370658 m!7173544))

(declare-fun m!7173546 () Bool)

(assert (=> b!6370672 m!7173546))

(declare-fun m!7173548 () Bool)

(assert (=> b!6370672 m!7173548))

(declare-fun m!7173550 () Bool)

(assert (=> b!6370672 m!7173550))

(declare-fun m!7173552 () Bool)

(assert (=> b!6370672 m!7173552))

(assert (=> b!6370672 m!7173550))

(declare-fun m!7173554 () Bool)

(assert (=> b!6370672 m!7173554))

(assert (=> b!6370672 m!7173546))

(declare-fun m!7173556 () Bool)

(assert (=> b!6370672 m!7173556))

(declare-fun m!7173558 () Bool)

(assert (=> b!6370659 m!7173558))

(assert (=> b!6370659 m!7173558))

(declare-fun m!7173560 () Bool)

(assert (=> b!6370659 m!7173560))

(declare-fun m!7173562 () Bool)

(assert (=> b!6370663 m!7173562))

(declare-fun m!7173564 () Bool)

(assert (=> b!6370663 m!7173564))

(declare-fun m!7173566 () Bool)

(assert (=> b!6370661 m!7173566))

(declare-fun m!7173568 () Bool)

(assert (=> b!6370665 m!7173568))

(declare-fun m!7173570 () Bool)

(assert (=> b!6370667 m!7173570))

(push 1)

(assert (not b!6370659))

(assert (not b!6370652))

(assert (not b!6370671))

(assert (not b!6370669))

(assert (not b!6370666))

(assert (not b!6370657))

(assert (not b!6370660))

(assert (not b!6370672))

(assert (not b!6370677))

(assert (not b!6370665))

(assert (not b!6370664))

(assert (not b!6370654))

(assert (not b!6370651))

(assert (not setNonEmpty!43433))

(assert (not b!6370656))

(assert (not b!6370650))

(assert (not b!6370655))

(assert (not b!6370662))

(assert (not b!6370667))

(assert (not start!631136))

(assert (not b!6370646))

(assert (not b!6370674))

(assert (not b!6370675))

(assert tp_is_empty!41813)

(assert (not b!6370658))

(assert (not b!6370661))

(assert (not b!6370663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1998126 () Bool)

(declare-fun lambda!351108 () Int)

(declare-fun forall!15458 (List!65140 Int) Bool)

(assert (=> d!1998126 (= (inv!83948 lt!2368140) (forall!15458 (exprs!6164 lt!2368140) lambda!351108))))

(declare-fun bs!1595620 () Bool)

(assert (= bs!1595620 d!1998126))

(declare-fun m!7173656 () Bool)

(assert (=> bs!1595620 m!7173656))

(assert (=> b!6370663 d!1998126))

(declare-fun bm!543988 () Bool)

(declare-fun call!543993 () (Set Context!11328))

(assert (=> bm!543988 (= call!543993 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016)))) (Context!11329 (t!378740 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016))))) (h!71463 s!2326)))))

(declare-fun d!1998128 () Bool)

(declare-fun c!1160155 () Bool)

(declare-fun e!3867899 () Bool)

(assert (=> d!1998128 (= c!1160155 e!3867899)))

(declare-fun res!2620895 () Bool)

(assert (=> d!1998128 (=> (not res!2620895) (not e!3867899))))

(assert (=> d!1998128 (= res!2620895 (is-Cons!65016 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016)))))))

(declare-fun e!3867897 () (Set Context!11328))

(assert (=> d!1998128 (= (derivationStepZipperUp!1454 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016)) (h!71463 s!2326)) e!3867897)))

(declare-fun b!6370808 () Bool)

(declare-fun e!3867898 () (Set Context!11328))

(assert (=> b!6370808 (= e!3867897 e!3867898)))

(declare-fun c!1160156 () Bool)

(assert (=> b!6370808 (= c!1160156 (is-Cons!65016 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016)))))))

(declare-fun b!6370809 () Bool)

(assert (=> b!6370809 (= e!3867899 (nullable!6273 (h!71464 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016))))))))

(declare-fun b!6370810 () Bool)

(assert (=> b!6370810 (= e!3867897 (set.union call!543993 (derivationStepZipperUp!1454 (Context!11329 (t!378740 (exprs!6164 (Context!11329 (Cons!65016 (reg!16609 (regOne!33072 r!7292)) Nil!65016))))) (h!71463 s!2326))))))

(declare-fun b!6370811 () Bool)

(assert (=> b!6370811 (= e!3867898 (as set.empty (Set Context!11328)))))

(declare-fun b!6370812 () Bool)

(assert (=> b!6370812 (= e!3867898 call!543993)))

(assert (= (and d!1998128 res!2620895) b!6370809))

(assert (= (and d!1998128 c!1160155) b!6370810))

(assert (= (and d!1998128 (not c!1160155)) b!6370808))

(assert (= (and b!6370808 c!1160156) b!6370812))

(assert (= (and b!6370808 (not c!1160156)) b!6370811))

(assert (= (or b!6370810 b!6370812) bm!543988))

(declare-fun m!7173658 () Bool)

(assert (=> bm!543988 m!7173658))

(declare-fun m!7173660 () Bool)

(assert (=> b!6370809 m!7173660))

(declare-fun m!7173662 () Bool)

(assert (=> b!6370810 m!7173662))

(assert (=> b!6370663 d!1998128))

(declare-fun d!1998130 () Bool)

(declare-fun choose!47339 ((Set Context!11328) Int) (Set Context!11328))

(assert (=> d!1998130 (= (flatMap!1785 lt!2368152 lambda!351092) (choose!47339 lt!2368152 lambda!351092))))

(declare-fun bs!1595621 () Bool)

(assert (= bs!1595621 d!1998130))

(declare-fun m!7173664 () Bool)

(assert (=> bs!1595621 m!7173664))

(assert (=> b!6370674 d!1998130))

(declare-fun bm!543989 () Bool)

(declare-fun call!543994 () (Set Context!11328))

(assert (=> bm!543989 (= call!543994 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 lt!2368139)) (Context!11329 (t!378740 (exprs!6164 lt!2368139))) (h!71463 s!2326)))))

(declare-fun d!1998132 () Bool)

(declare-fun c!1160157 () Bool)

(declare-fun e!3867902 () Bool)

(assert (=> d!1998132 (= c!1160157 e!3867902)))

(declare-fun res!2620896 () Bool)

(assert (=> d!1998132 (=> (not res!2620896) (not e!3867902))))

(assert (=> d!1998132 (= res!2620896 (is-Cons!65016 (exprs!6164 lt!2368139)))))

(declare-fun e!3867900 () (Set Context!11328))

(assert (=> d!1998132 (= (derivationStepZipperUp!1454 lt!2368139 (h!71463 s!2326)) e!3867900)))

(declare-fun b!6370813 () Bool)

(declare-fun e!3867901 () (Set Context!11328))

(assert (=> b!6370813 (= e!3867900 e!3867901)))

(declare-fun c!1160158 () Bool)

(assert (=> b!6370813 (= c!1160158 (is-Cons!65016 (exprs!6164 lt!2368139)))))

(declare-fun b!6370814 () Bool)

(assert (=> b!6370814 (= e!3867902 (nullable!6273 (h!71464 (exprs!6164 lt!2368139))))))

(declare-fun b!6370815 () Bool)

(assert (=> b!6370815 (= e!3867900 (set.union call!543994 (derivationStepZipperUp!1454 (Context!11329 (t!378740 (exprs!6164 lt!2368139))) (h!71463 s!2326))))))

(declare-fun b!6370816 () Bool)

(assert (=> b!6370816 (= e!3867901 (as set.empty (Set Context!11328)))))

(declare-fun b!6370817 () Bool)

(assert (=> b!6370817 (= e!3867901 call!543994)))

(assert (= (and d!1998132 res!2620896) b!6370814))

(assert (= (and d!1998132 c!1160157) b!6370815))

(assert (= (and d!1998132 (not c!1160157)) b!6370813))

(assert (= (and b!6370813 c!1160158) b!6370817))

(assert (= (and b!6370813 (not c!1160158)) b!6370816))

(assert (= (or b!6370815 b!6370817) bm!543989))

(declare-fun m!7173666 () Bool)

(assert (=> bm!543989 m!7173666))

(declare-fun m!7173668 () Bool)

(assert (=> b!6370814 m!7173668))

(declare-fun m!7173670 () Bool)

(assert (=> b!6370815 m!7173670))

(assert (=> b!6370674 d!1998132))

(declare-fun d!1998134 () Bool)

(declare-fun dynLambda!25794 (Int Context!11328) (Set Context!11328))

(assert (=> d!1998134 (= (flatMap!1785 lt!2368152 lambda!351092) (dynLambda!25794 lambda!351092 lt!2368139))))

(declare-fun lt!2368233 () Unit!158451)

(declare-fun choose!47340 ((Set Context!11328) Context!11328 Int) Unit!158451)

(assert (=> d!1998134 (= lt!2368233 (choose!47340 lt!2368152 lt!2368139 lambda!351092))))

(assert (=> d!1998134 (= lt!2368152 (set.insert lt!2368139 (as set.empty (Set Context!11328))))))

(assert (=> d!1998134 (= (lemmaFlatMapOnSingletonSet!1311 lt!2368152 lt!2368139 lambda!351092) lt!2368233)))

(declare-fun b_lambda!242125 () Bool)

(assert (=> (not b_lambda!242125) (not d!1998134)))

(declare-fun bs!1595622 () Bool)

(assert (= bs!1595622 d!1998134))

(assert (=> bs!1595622 m!7173524))

(declare-fun m!7173672 () Bool)

(assert (=> bs!1595622 m!7173672))

(declare-fun m!7173674 () Bool)

(assert (=> bs!1595622 m!7173674))

(assert (=> bs!1595622 m!7173518))

(assert (=> b!6370674 d!1998134))

(declare-fun bs!1595623 () Bool)

(declare-fun d!1998136 () Bool)

(assert (= bs!1595623 (and d!1998136 b!6370646)))

(declare-fun lambda!351111 () Int)

(assert (=> bs!1595623 (= lambda!351111 lambda!351092)))

(assert (=> d!1998136 true))

(assert (=> d!1998136 (= (derivationStepZipper!2246 lt!2368152 (h!71463 s!2326)) (flatMap!1785 lt!2368152 lambda!351111))))

(declare-fun bs!1595624 () Bool)

(assert (= bs!1595624 d!1998136))

(declare-fun m!7173676 () Bool)

(assert (=> bs!1595624 m!7173676))

(assert (=> b!6370674 d!1998136))

(declare-fun bs!1595625 () Bool)

(declare-fun d!1998138 () Bool)

(assert (= bs!1595625 (and d!1998138 d!1998126)))

(declare-fun lambda!351114 () Int)

(assert (=> bs!1595625 (= lambda!351114 lambda!351108)))

(declare-fun e!3867916 () Bool)

(assert (=> d!1998138 e!3867916))

(declare-fun res!2620902 () Bool)

(assert (=> d!1998138 (=> (not res!2620902) (not e!3867916))))

(declare-fun lt!2368236 () Regex!16280)

(assert (=> d!1998138 (= res!2620902 (validRegex!8016 lt!2368236))))

(declare-fun e!3867918 () Regex!16280)

(assert (=> d!1998138 (= lt!2368236 e!3867918)))

(declare-fun c!1160170 () Bool)

(declare-fun e!3867917 () Bool)

(assert (=> d!1998138 (= c!1160170 e!3867917)))

(declare-fun res!2620901 () Bool)

(assert (=> d!1998138 (=> (not res!2620901) (not e!3867917))))

(assert (=> d!1998138 (= res!2620901 (is-Cons!65016 (exprs!6164 (h!71465 zl!343))))))

(assert (=> d!1998138 (forall!15458 (exprs!6164 (h!71465 zl!343)) lambda!351114)))

(assert (=> d!1998138 (= (generalisedConcat!1877 (exprs!6164 (h!71465 zl!343))) lt!2368236)))

(declare-fun b!6370840 () Bool)

(declare-fun e!3867919 () Bool)

(declare-fun e!3867920 () Bool)

(assert (=> b!6370840 (= e!3867919 e!3867920)))

(declare-fun c!1160169 () Bool)

(declare-fun tail!12137 (List!65140) List!65140)

(assert (=> b!6370840 (= c!1160169 (isEmpty!37132 (tail!12137 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6370841 () Bool)

(declare-fun e!3867915 () Regex!16280)

(assert (=> b!6370841 (= e!3867918 e!3867915)))

(declare-fun c!1160171 () Bool)

(assert (=> b!6370841 (= c!1160171 (is-Cons!65016 (exprs!6164 (h!71465 zl!343))))))

(declare-fun b!6370842 () Bool)

(assert (=> b!6370842 (= e!3867915 EmptyExpr!16280)))

(declare-fun b!6370843 () Bool)

(assert (=> b!6370843 (= e!3867916 e!3867919)))

(declare-fun c!1160172 () Bool)

(assert (=> b!6370843 (= c!1160172 (isEmpty!37132 (exprs!6164 (h!71465 zl!343))))))

(declare-fun b!6370844 () Bool)

(assert (=> b!6370844 (= e!3867917 (isEmpty!37132 (t!378740 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6370845 () Bool)

(declare-fun isConcat!1205 (Regex!16280) Bool)

(assert (=> b!6370845 (= e!3867920 (isConcat!1205 lt!2368236))))

(declare-fun b!6370846 () Bool)

(declare-fun head!13052 (List!65140) Regex!16280)

(assert (=> b!6370846 (= e!3867920 (= lt!2368236 (head!13052 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6370847 () Bool)

(assert (=> b!6370847 (= e!3867915 (Concat!25125 (h!71464 (exprs!6164 (h!71465 zl!343))) (generalisedConcat!1877 (t!378740 (exprs!6164 (h!71465 zl!343))))))))

(declare-fun b!6370848 () Bool)

(assert (=> b!6370848 (= e!3867918 (h!71464 (exprs!6164 (h!71465 zl!343))))))

(declare-fun b!6370849 () Bool)

(declare-fun isEmptyExpr!1682 (Regex!16280) Bool)

(assert (=> b!6370849 (= e!3867919 (isEmptyExpr!1682 lt!2368236))))

(assert (= (and d!1998138 res!2620901) b!6370844))

(assert (= (and d!1998138 c!1160170) b!6370848))

(assert (= (and d!1998138 (not c!1160170)) b!6370841))

(assert (= (and b!6370841 c!1160171) b!6370847))

(assert (= (and b!6370841 (not c!1160171)) b!6370842))

(assert (= (and d!1998138 res!2620902) b!6370843))

(assert (= (and b!6370843 c!1160172) b!6370849))

(assert (= (and b!6370843 (not c!1160172)) b!6370840))

(assert (= (and b!6370840 c!1160169) b!6370846))

(assert (= (and b!6370840 (not c!1160169)) b!6370845))

(declare-fun m!7173678 () Bool)

(assert (=> d!1998138 m!7173678))

(declare-fun m!7173680 () Bool)

(assert (=> d!1998138 m!7173680))

(declare-fun m!7173682 () Bool)

(assert (=> b!6370849 m!7173682))

(assert (=> b!6370844 m!7173568))

(declare-fun m!7173684 () Bool)

(assert (=> b!6370840 m!7173684))

(assert (=> b!6370840 m!7173684))

(declare-fun m!7173686 () Bool)

(assert (=> b!6370840 m!7173686))

(declare-fun m!7173688 () Bool)

(assert (=> b!6370847 m!7173688))

(declare-fun m!7173690 () Bool)

(assert (=> b!6370843 m!7173690))

(declare-fun m!7173692 () Bool)

(assert (=> b!6370845 m!7173692))

(declare-fun m!7173694 () Bool)

(assert (=> b!6370846 m!7173694))

(assert (=> b!6370654 d!1998138))

(declare-fun b!6370872 () Bool)

(declare-fun e!3867937 () (Set Context!11328))

(declare-fun call!544010 () (Set Context!11328))

(assert (=> b!6370872 (= e!3867937 call!544010)))

(declare-fun b!6370873 () Bool)

(declare-fun c!1160187 () Bool)

(assert (=> b!6370873 (= c!1160187 (is-Star!16280 (reg!16609 (regOne!33072 r!7292))))))

(declare-fun e!3867938 () (Set Context!11328))

(assert (=> b!6370873 (= e!3867937 e!3867938)))

(declare-fun bm!544002 () Bool)

(declare-fun call!544009 () List!65140)

(declare-fun call!544012 () List!65140)

(assert (=> bm!544002 (= call!544009 call!544012)))

(declare-fun b!6370874 () Bool)

(declare-fun e!3867936 () (Set Context!11328))

(assert (=> b!6370874 (= e!3867936 e!3867937)))

(declare-fun c!1160185 () Bool)

(assert (=> b!6370874 (= c!1160185 (is-Concat!25125 (reg!16609 (regOne!33072 r!7292))))))

(declare-fun b!6370875 () Bool)

(declare-fun c!1160183 () Bool)

(declare-fun e!3867935 () Bool)

(assert (=> b!6370875 (= c!1160183 e!3867935)))

(declare-fun res!2620905 () Bool)

(assert (=> b!6370875 (=> (not res!2620905) (not e!3867935))))

(assert (=> b!6370875 (= res!2620905 (is-Concat!25125 (reg!16609 (regOne!33072 r!7292))))))

(declare-fun e!3867934 () (Set Context!11328))

(assert (=> b!6370875 (= e!3867934 e!3867936)))

(declare-fun b!6370876 () Bool)

(declare-fun call!544008 () (Set Context!11328))

(declare-fun call!544011 () (Set Context!11328))

(assert (=> b!6370876 (= e!3867934 (set.union call!544008 call!544011))))

(declare-fun bm!544003 () Bool)

(declare-fun call!544007 () (Set Context!11328))

(assert (=> bm!544003 (= call!544010 call!544007)))

(declare-fun b!6370877 () Bool)

(assert (=> b!6370877 (= e!3867935 (nullable!6273 (regOne!33072 (reg!16609 (regOne!33072 r!7292)))))))

(declare-fun b!6370878 () Bool)

(assert (=> b!6370878 (= e!3867936 (set.union call!544011 call!544007))))

(declare-fun b!6370879 () Bool)

(assert (=> b!6370879 (= e!3867938 (as set.empty (Set Context!11328)))))

(declare-fun b!6370880 () Bool)

(declare-fun e!3867933 () (Set Context!11328))

(assert (=> b!6370880 (= e!3867933 e!3867934)))

(declare-fun c!1160184 () Bool)

(assert (=> b!6370880 (= c!1160184 (is-Union!16280 (reg!16609 (regOne!33072 r!7292))))))

(declare-fun b!6370881 () Bool)

(assert (=> b!6370881 (= e!3867938 call!544010)))

(declare-fun bm!544004 () Bool)

(assert (=> bm!544004 (= call!544007 call!544008)))

(declare-fun bm!544005 () Bool)

(assert (=> bm!544005 (= call!544011 (derivationStepZipperDown!1528 (ite c!1160184 (regTwo!33073 (reg!16609 (regOne!33072 r!7292))) (regOne!33072 (reg!16609 (regOne!33072 r!7292)))) (ite c!1160184 lt!2368140 (Context!11329 call!544012)) (h!71463 s!2326)))))

(declare-fun d!1998140 () Bool)

(declare-fun c!1160186 () Bool)

(assert (=> d!1998140 (= c!1160186 (and (is-ElementMatch!16280 (reg!16609 (regOne!33072 r!7292))) (= (c!1160141 (reg!16609 (regOne!33072 r!7292))) (h!71463 s!2326))))))

(assert (=> d!1998140 (= (derivationStepZipperDown!1528 (reg!16609 (regOne!33072 r!7292)) lt!2368140 (h!71463 s!2326)) e!3867933)))

(declare-fun b!6370882 () Bool)

(assert (=> b!6370882 (= e!3867933 (set.insert lt!2368140 (as set.empty (Set Context!11328))))))

(declare-fun bm!544006 () Bool)

(declare-fun $colon$colon!2141 (List!65140 Regex!16280) List!65140)

(assert (=> bm!544006 (= call!544012 ($colon$colon!2141 (exprs!6164 lt!2368140) (ite (or c!1160183 c!1160185) (regTwo!33072 (reg!16609 (regOne!33072 r!7292))) (reg!16609 (regOne!33072 r!7292)))))))

(declare-fun bm!544007 () Bool)

(assert (=> bm!544007 (= call!544008 (derivationStepZipperDown!1528 (ite c!1160184 (regOne!33073 (reg!16609 (regOne!33072 r!7292))) (ite c!1160183 (regTwo!33072 (reg!16609 (regOne!33072 r!7292))) (ite c!1160185 (regOne!33072 (reg!16609 (regOne!33072 r!7292))) (reg!16609 (reg!16609 (regOne!33072 r!7292)))))) (ite (or c!1160184 c!1160183) lt!2368140 (Context!11329 call!544009)) (h!71463 s!2326)))))

(assert (= (and d!1998140 c!1160186) b!6370882))

(assert (= (and d!1998140 (not c!1160186)) b!6370880))

(assert (= (and b!6370880 c!1160184) b!6370876))

(assert (= (and b!6370880 (not c!1160184)) b!6370875))

(assert (= (and b!6370875 res!2620905) b!6370877))

(assert (= (and b!6370875 c!1160183) b!6370878))

(assert (= (and b!6370875 (not c!1160183)) b!6370874))

(assert (= (and b!6370874 c!1160185) b!6370872))

(assert (= (and b!6370874 (not c!1160185)) b!6370873))

(assert (= (and b!6370873 c!1160187) b!6370881))

(assert (= (and b!6370873 (not c!1160187)) b!6370879))

(assert (= (or b!6370872 b!6370881) bm!544002))

(assert (= (or b!6370872 b!6370881) bm!544003))

(assert (= (or b!6370878 bm!544002) bm!544006))

(assert (= (or b!6370878 bm!544003) bm!544004))

(assert (= (or b!6370876 b!6370878) bm!544005))

(assert (= (or b!6370876 bm!544004) bm!544007))

(declare-fun m!7173696 () Bool)

(assert (=> b!6370882 m!7173696))

(declare-fun m!7173698 () Bool)

(assert (=> bm!544006 m!7173698))

(declare-fun m!7173700 () Bool)

(assert (=> bm!544005 m!7173700))

(declare-fun m!7173702 () Bool)

(assert (=> b!6370877 m!7173702))

(declare-fun m!7173704 () Bool)

(assert (=> bm!544007 m!7173704))

(assert (=> b!6370675 d!1998140))

(declare-fun d!1998142 () Bool)

(declare-fun nullableFct!2220 (Regex!16280) Bool)

(assert (=> d!1998142 (= (nullable!6273 (regOne!33072 (regOne!33072 r!7292))) (nullableFct!2220 (regOne!33072 (regOne!33072 r!7292))))))

(declare-fun bs!1595626 () Bool)

(assert (= bs!1595626 d!1998142))

(declare-fun m!7173706 () Bool)

(assert (=> bs!1595626 m!7173706))

(assert (=> b!6370651 d!1998142))

(declare-fun d!1998144 () Bool)

(declare-fun e!3867941 () Bool)

(assert (=> d!1998144 e!3867941))

(declare-fun res!2620908 () Bool)

(assert (=> d!1998144 (=> (not res!2620908) (not e!3867941))))

(declare-fun lt!2368239 () List!65141)

(declare-fun noDuplicate!2110 (List!65141) Bool)

(assert (=> d!1998144 (= res!2620908 (noDuplicate!2110 lt!2368239))))

(declare-fun choose!47341 ((Set Context!11328)) List!65141)

(assert (=> d!1998144 (= lt!2368239 (choose!47341 z!1189))))

(assert (=> d!1998144 (= (toList!10064 z!1189) lt!2368239)))

(declare-fun b!6370885 () Bool)

(declare-fun content!12291 (List!65141) (Set Context!11328))

(assert (=> b!6370885 (= e!3867941 (= (content!12291 lt!2368239) z!1189))))

(assert (= (and d!1998144 res!2620908) b!6370885))

(declare-fun m!7173708 () Bool)

(assert (=> d!1998144 m!7173708))

(declare-fun m!7173710 () Bool)

(assert (=> d!1998144 m!7173710))

(declare-fun m!7173712 () Bool)

(assert (=> b!6370885 m!7173712))

(assert (=> b!6370671 d!1998144))

(declare-fun bs!1595627 () Bool)

(declare-fun d!1998146 () Bool)

(assert (= bs!1595627 (and d!1998146 d!1998126)))

(declare-fun lambda!351115 () Int)

(assert (=> bs!1595627 (= lambda!351115 lambda!351108)))

(declare-fun bs!1595628 () Bool)

(assert (= bs!1595628 (and d!1998146 d!1998138)))

(assert (=> bs!1595628 (= lambda!351115 lambda!351114)))

(assert (=> d!1998146 (= (inv!83948 setElem!43433) (forall!15458 (exprs!6164 setElem!43433) lambda!351115))))

(declare-fun bs!1595629 () Bool)

(assert (= bs!1595629 d!1998146))

(declare-fun m!7173714 () Bool)

(assert (=> bs!1595629 m!7173714))

(assert (=> setNonEmpty!43433 d!1998146))

(declare-fun bs!1595630 () Bool)

(declare-fun d!1998148 () Bool)

(assert (= bs!1595630 (and d!1998148 d!1998126)))

(declare-fun lambda!351116 () Int)

(assert (=> bs!1595630 (= lambda!351116 lambda!351108)))

(declare-fun bs!1595631 () Bool)

(assert (= bs!1595631 (and d!1998148 d!1998138)))

(assert (=> bs!1595631 (= lambda!351116 lambda!351114)))

(declare-fun bs!1595632 () Bool)

(assert (= bs!1595632 (and d!1998148 d!1998146)))

(assert (=> bs!1595632 (= lambda!351116 lambda!351115)))

(assert (=> d!1998148 (= (inv!83948 (h!71465 zl!343)) (forall!15458 (exprs!6164 (h!71465 zl!343)) lambda!351116))))

(declare-fun bs!1595633 () Bool)

(assert (= bs!1595633 d!1998148))

(declare-fun m!7173716 () Bool)

(assert (=> bs!1595633 m!7173716))

(assert (=> b!6370661 d!1998148))

(declare-fun d!1998150 () Bool)

(declare-fun choose!47342 (Int) Bool)

(assert (=> d!1998150 (= (Exists!3350 lambda!351091) (choose!47342 lambda!351091))))

(declare-fun bs!1595634 () Bool)

(assert (= bs!1595634 d!1998150))

(declare-fun m!7173718 () Bool)

(assert (=> bs!1595634 m!7173718))

(assert (=> b!6370672 d!1998150))

(declare-fun bs!1595635 () Bool)

(declare-fun d!1998152 () Bool)

(assert (= bs!1595635 (and d!1998152 b!6370672)))

(declare-fun lambda!351119 () Int)

(assert (=> bs!1595635 (= lambda!351119 lambda!351090)))

(assert (=> bs!1595635 (not (= lambda!351119 lambda!351091))))

(assert (=> d!1998152 true))

(assert (=> d!1998152 true))

(assert (=> d!1998152 true))

(assert (=> d!1998152 (= (isDefined!12874 (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) Nil!65015 s!2326 s!2326)) (Exists!3350 lambda!351119))))

(declare-fun lt!2368242 () Unit!158451)

(declare-fun choose!47343 (Regex!16280 Regex!16280 List!65139) Unit!158451)

(assert (=> d!1998152 (= lt!2368242 (choose!47343 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326))))

(assert (=> d!1998152 (validRegex!8016 (regOne!33072 r!7292))))

(assert (=> d!1998152 (= (lemmaFindConcatSeparationEquivalentToExists!2349 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326) lt!2368242)))

(declare-fun bs!1595636 () Bool)

(assert (= bs!1595636 d!1998152))

(assert (=> bs!1595636 m!7173546))

(declare-fun m!7173720 () Bool)

(assert (=> bs!1595636 m!7173720))

(assert (=> bs!1595636 m!7173546))

(assert (=> bs!1595636 m!7173548))

(declare-fun m!7173722 () Bool)

(assert (=> bs!1595636 m!7173722))

(declare-fun m!7173724 () Bool)

(assert (=> bs!1595636 m!7173724))

(assert (=> b!6370672 d!1998152))

(declare-fun d!1998154 () Bool)

(assert (=> d!1998154 (= (Exists!3350 lambda!351090) (choose!47342 lambda!351090))))

(declare-fun bs!1595637 () Bool)

(assert (= bs!1595637 d!1998154))

(declare-fun m!7173726 () Bool)

(assert (=> bs!1595637 m!7173726))

(assert (=> b!6370672 d!1998154))

(declare-fun b!6370908 () Bool)

(declare-fun res!2620927 () Bool)

(declare-fun e!3867958 () Bool)

(assert (=> b!6370908 (=> (not res!2620927) (not e!3867958))))

(declare-fun lt!2368251 () Option!16171)

(declare-fun get!22505 (Option!16171) tuple2!66518)

(assert (=> b!6370908 (= res!2620927 (matchR!8463 (regOne!33072 r!7292) (_1!36562 (get!22505 lt!2368251))))))

(declare-fun b!6370909 () Bool)

(declare-fun res!2620925 () Bool)

(assert (=> b!6370909 (=> (not res!2620925) (not e!3867958))))

(assert (=> b!6370909 (= res!2620925 (matchR!8463 (regTwo!33072 r!7292) (_2!36562 (get!22505 lt!2368251))))))

(declare-fun b!6370910 () Bool)

(declare-fun e!3867956 () Bool)

(assert (=> b!6370910 (= e!3867956 (matchR!8463 (regTwo!33072 r!7292) s!2326))))

(declare-fun b!6370911 () Bool)

(declare-fun e!3867957 () Option!16171)

(assert (=> b!6370911 (= e!3867957 (Some!16170 (tuple2!66519 Nil!65015 s!2326)))))

(declare-fun b!6370912 () Bool)

(declare-fun lt!2368249 () Unit!158451)

(declare-fun lt!2368250 () Unit!158451)

(assert (=> b!6370912 (= lt!2368249 lt!2368250)))

(declare-fun ++!14349 (List!65139 List!65139) List!65139)

(assert (=> b!6370912 (= (++!14349 (++!14349 Nil!65015 (Cons!65015 (h!71463 s!2326) Nil!65015)) (t!378739 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2444 (List!65139 C!32830 List!65139 List!65139) Unit!158451)

(assert (=> b!6370912 (= lt!2368250 (lemmaMoveElementToOtherListKeepsConcatEq!2444 Nil!65015 (h!71463 s!2326) (t!378739 s!2326) s!2326))))

(declare-fun e!3867955 () Option!16171)

(assert (=> b!6370912 (= e!3867955 (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) (++!14349 Nil!65015 (Cons!65015 (h!71463 s!2326) Nil!65015)) (t!378739 s!2326) s!2326))))

(declare-fun b!6370914 () Bool)

(assert (=> b!6370914 (= e!3867957 e!3867955)))

(declare-fun c!1160192 () Bool)

(assert (=> b!6370914 (= c!1160192 (is-Nil!65015 s!2326))))

(declare-fun b!6370915 () Bool)

(assert (=> b!6370915 (= e!3867955 None!16170)))

(declare-fun b!6370916 () Bool)

(declare-fun e!3867954 () Bool)

(assert (=> b!6370916 (= e!3867954 (not (isDefined!12874 lt!2368251)))))

(declare-fun b!6370913 () Bool)

(assert (=> b!6370913 (= e!3867958 (= (++!14349 (_1!36562 (get!22505 lt!2368251)) (_2!36562 (get!22505 lt!2368251))) s!2326))))

(declare-fun d!1998156 () Bool)

(assert (=> d!1998156 e!3867954))

(declare-fun res!2620924 () Bool)

(assert (=> d!1998156 (=> res!2620924 e!3867954)))

(assert (=> d!1998156 (= res!2620924 e!3867958)))

(declare-fun res!2620923 () Bool)

(assert (=> d!1998156 (=> (not res!2620923) (not e!3867958))))

(assert (=> d!1998156 (= res!2620923 (isDefined!12874 lt!2368251))))

(assert (=> d!1998156 (= lt!2368251 e!3867957)))

(declare-fun c!1160193 () Bool)

(assert (=> d!1998156 (= c!1160193 e!3867956)))

(declare-fun res!2620926 () Bool)

(assert (=> d!1998156 (=> (not res!2620926) (not e!3867956))))

(assert (=> d!1998156 (= res!2620926 (matchR!8463 (regOne!33072 r!7292) Nil!65015))))

(assert (=> d!1998156 (validRegex!8016 (regOne!33072 r!7292))))

(assert (=> d!1998156 (= (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) Nil!65015 s!2326 s!2326) lt!2368251)))

(assert (= (and d!1998156 res!2620926) b!6370910))

(assert (= (and d!1998156 c!1160193) b!6370911))

(assert (= (and d!1998156 (not c!1160193)) b!6370914))

(assert (= (and b!6370914 c!1160192) b!6370915))

(assert (= (and b!6370914 (not c!1160192)) b!6370912))

(assert (= (and d!1998156 res!2620923) b!6370908))

(assert (= (and b!6370908 res!2620927) b!6370909))

(assert (= (and b!6370909 res!2620925) b!6370913))

(assert (= (and d!1998156 (not res!2620924)) b!6370916))

(declare-fun m!7173728 () Bool)

(assert (=> b!6370912 m!7173728))

(assert (=> b!6370912 m!7173728))

(declare-fun m!7173730 () Bool)

(assert (=> b!6370912 m!7173730))

(declare-fun m!7173732 () Bool)

(assert (=> b!6370912 m!7173732))

(assert (=> b!6370912 m!7173728))

(declare-fun m!7173734 () Bool)

(assert (=> b!6370912 m!7173734))

(declare-fun m!7173736 () Bool)

(assert (=> b!6370909 m!7173736))

(declare-fun m!7173738 () Bool)

(assert (=> b!6370909 m!7173738))

(declare-fun m!7173740 () Bool)

(assert (=> d!1998156 m!7173740))

(declare-fun m!7173742 () Bool)

(assert (=> d!1998156 m!7173742))

(assert (=> d!1998156 m!7173722))

(declare-fun m!7173744 () Bool)

(assert (=> b!6370910 m!7173744))

(assert (=> b!6370916 m!7173740))

(assert (=> b!6370908 m!7173736))

(declare-fun m!7173746 () Bool)

(assert (=> b!6370908 m!7173746))

(assert (=> b!6370913 m!7173736))

(declare-fun m!7173748 () Bool)

(assert (=> b!6370913 m!7173748))

(assert (=> b!6370672 d!1998156))

(declare-fun bs!1595638 () Bool)

(declare-fun d!1998158 () Bool)

(assert (= bs!1595638 (and d!1998158 b!6370672)))

(declare-fun lambda!351124 () Int)

(assert (=> bs!1595638 (= lambda!351124 lambda!351090)))

(assert (=> bs!1595638 (not (= lambda!351124 lambda!351091))))

(declare-fun bs!1595639 () Bool)

(assert (= bs!1595639 (and d!1998158 d!1998152)))

(assert (=> bs!1595639 (= lambda!351124 lambda!351119)))

(assert (=> d!1998158 true))

(assert (=> d!1998158 true))

(assert (=> d!1998158 true))

(declare-fun lambda!351125 () Int)

(assert (=> bs!1595638 (not (= lambda!351125 lambda!351090))))

(assert (=> bs!1595638 (= lambda!351125 lambda!351091)))

(assert (=> bs!1595639 (not (= lambda!351125 lambda!351119))))

(declare-fun bs!1595640 () Bool)

(assert (= bs!1595640 d!1998158))

(assert (=> bs!1595640 (not (= lambda!351125 lambda!351124))))

(assert (=> d!1998158 true))

(assert (=> d!1998158 true))

(assert (=> d!1998158 true))

(assert (=> d!1998158 (= (Exists!3350 lambda!351124) (Exists!3350 lambda!351125))))

(declare-fun lt!2368254 () Unit!158451)

(declare-fun choose!47344 (Regex!16280 Regex!16280 List!65139) Unit!158451)

(assert (=> d!1998158 (= lt!2368254 (choose!47344 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326))))

(assert (=> d!1998158 (validRegex!8016 (regOne!33072 r!7292))))

(assert (=> d!1998158 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1887 (regOne!33072 r!7292) (regTwo!33072 r!7292) s!2326) lt!2368254)))

(declare-fun m!7173750 () Bool)

(assert (=> bs!1595640 m!7173750))

(declare-fun m!7173752 () Bool)

(assert (=> bs!1595640 m!7173752))

(declare-fun m!7173754 () Bool)

(assert (=> bs!1595640 m!7173754))

(assert (=> bs!1595640 m!7173722))

(assert (=> b!6370672 d!1998158))

(declare-fun d!1998160 () Bool)

(declare-fun isEmpty!37135 (Option!16171) Bool)

(assert (=> d!1998160 (= (isDefined!12874 (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) Nil!65015 s!2326 s!2326)) (not (isEmpty!37135 (findConcatSeparation!2585 (regOne!33072 r!7292) (regTwo!33072 r!7292) Nil!65015 s!2326 s!2326))))))

(declare-fun bs!1595641 () Bool)

(assert (= bs!1595641 d!1998160))

(assert (=> bs!1595641 m!7173546))

(declare-fun m!7173756 () Bool)

(assert (=> bs!1595641 m!7173756))

(assert (=> b!6370672 d!1998160))

(declare-fun d!1998162 () Bool)

(declare-fun e!3867965 () Bool)

(assert (=> d!1998162 (= (matchZipper!2292 (set.union lt!2368146 lt!2368153) (t!378739 s!2326)) e!3867965)))

(declare-fun res!2620938 () Bool)

(assert (=> d!1998162 (=> res!2620938 e!3867965)))

(assert (=> d!1998162 (= res!2620938 (matchZipper!2292 lt!2368146 (t!378739 s!2326)))))

(declare-fun lt!2368257 () Unit!158451)

(declare-fun choose!47345 ((Set Context!11328) (Set Context!11328) List!65139) Unit!158451)

(assert (=> d!1998162 (= lt!2368257 (choose!47345 lt!2368146 lt!2368153 (t!378739 s!2326)))))

(assert (=> d!1998162 (= (lemmaZipperConcatMatchesSameAsBothZippers!1111 lt!2368146 lt!2368153 (t!378739 s!2326)) lt!2368257)))

(declare-fun b!6370927 () Bool)

(assert (=> b!6370927 (= e!3867965 (matchZipper!2292 lt!2368153 (t!378739 s!2326)))))

(assert (= (and d!1998162 (not res!2620938)) b!6370927))

(assert (=> d!1998162 m!7173502))

(assert (=> d!1998162 m!7173500))

(declare-fun m!7173758 () Bool)

(assert (=> d!1998162 m!7173758))

(assert (=> b!6370927 m!7173544))

(assert (=> b!6370652 d!1998162))

(declare-fun d!1998164 () Bool)

(declare-fun c!1160196 () Bool)

(declare-fun isEmpty!37136 (List!65139) Bool)

(assert (=> d!1998164 (= c!1160196 (isEmpty!37136 (t!378739 s!2326)))))

(declare-fun e!3867968 () Bool)

(assert (=> d!1998164 (= (matchZipper!2292 lt!2368146 (t!378739 s!2326)) e!3867968)))

(declare-fun b!6370932 () Bool)

(declare-fun nullableZipper!2046 ((Set Context!11328)) Bool)

(assert (=> b!6370932 (= e!3867968 (nullableZipper!2046 lt!2368146))))

(declare-fun b!6370933 () Bool)

(declare-fun head!13053 (List!65139) C!32830)

(declare-fun tail!12138 (List!65139) List!65139)

(assert (=> b!6370933 (= e!3867968 (matchZipper!2292 (derivationStepZipper!2246 lt!2368146 (head!13053 (t!378739 s!2326))) (tail!12138 (t!378739 s!2326))))))

(assert (= (and d!1998164 c!1160196) b!6370932))

(assert (= (and d!1998164 (not c!1160196)) b!6370933))

(declare-fun m!7173760 () Bool)

(assert (=> d!1998164 m!7173760))

(declare-fun m!7173762 () Bool)

(assert (=> b!6370932 m!7173762))

(declare-fun m!7173764 () Bool)

(assert (=> b!6370933 m!7173764))

(assert (=> b!6370933 m!7173764))

(declare-fun m!7173766 () Bool)

(assert (=> b!6370933 m!7173766))

(declare-fun m!7173768 () Bool)

(assert (=> b!6370933 m!7173768))

(assert (=> b!6370933 m!7173766))

(assert (=> b!6370933 m!7173768))

(declare-fun m!7173770 () Bool)

(assert (=> b!6370933 m!7173770))

(assert (=> b!6370652 d!1998164))

(declare-fun d!1998166 () Bool)

(declare-fun c!1160197 () Bool)

(assert (=> d!1998166 (= c!1160197 (isEmpty!37136 (t!378739 s!2326)))))

(declare-fun e!3867969 () Bool)

(assert (=> d!1998166 (= (matchZipper!2292 (set.union lt!2368146 lt!2368153) (t!378739 s!2326)) e!3867969)))

(declare-fun b!6370934 () Bool)

(assert (=> b!6370934 (= e!3867969 (nullableZipper!2046 (set.union lt!2368146 lt!2368153)))))

(declare-fun b!6370935 () Bool)

(assert (=> b!6370935 (= e!3867969 (matchZipper!2292 (derivationStepZipper!2246 (set.union lt!2368146 lt!2368153) (head!13053 (t!378739 s!2326))) (tail!12138 (t!378739 s!2326))))))

(assert (= (and d!1998166 c!1160197) b!6370934))

(assert (= (and d!1998166 (not c!1160197)) b!6370935))

(assert (=> d!1998166 m!7173760))

(declare-fun m!7173772 () Bool)

(assert (=> b!6370934 m!7173772))

(assert (=> b!6370935 m!7173764))

(assert (=> b!6370935 m!7173764))

(declare-fun m!7173774 () Bool)

(assert (=> b!6370935 m!7173774))

(assert (=> b!6370935 m!7173768))

(assert (=> b!6370935 m!7173774))

(assert (=> b!6370935 m!7173768))

(declare-fun m!7173776 () Bool)

(assert (=> b!6370935 m!7173776))

(assert (=> b!6370652 d!1998166))

(declare-fun d!1998168 () Bool)

(declare-fun c!1160198 () Bool)

(assert (=> d!1998168 (= c!1160198 (isEmpty!37136 (t!378739 s!2326)))))

(declare-fun e!3867970 () Bool)

(assert (=> d!1998168 (= (matchZipper!2292 lt!2368153 (t!378739 s!2326)) e!3867970)))

(declare-fun b!6370936 () Bool)

(assert (=> b!6370936 (= e!3867970 (nullableZipper!2046 lt!2368153))))

(declare-fun b!6370937 () Bool)

(assert (=> b!6370937 (= e!3867970 (matchZipper!2292 (derivationStepZipper!2246 lt!2368153 (head!13053 (t!378739 s!2326))) (tail!12138 (t!378739 s!2326))))))

(assert (= (and d!1998168 c!1160198) b!6370936))

(assert (= (and d!1998168 (not c!1160198)) b!6370937))

(assert (=> d!1998168 m!7173760))

(declare-fun m!7173778 () Bool)

(assert (=> b!6370936 m!7173778))

(assert (=> b!6370937 m!7173764))

(assert (=> b!6370937 m!7173764))

(declare-fun m!7173780 () Bool)

(assert (=> b!6370937 m!7173780))

(assert (=> b!6370937 m!7173768))

(assert (=> b!6370937 m!7173780))

(assert (=> b!6370937 m!7173768))

(declare-fun m!7173782 () Bool)

(assert (=> b!6370937 m!7173782))

(assert (=> b!6370658 d!1998168))

(declare-fun bs!1595642 () Bool)

(declare-fun d!1998170 () Bool)

(assert (= bs!1595642 (and d!1998170 d!1998126)))

(declare-fun lambda!351128 () Int)

(assert (=> bs!1595642 (= lambda!351128 lambda!351108)))

(declare-fun bs!1595643 () Bool)

(assert (= bs!1595643 (and d!1998170 d!1998138)))

(assert (=> bs!1595643 (= lambda!351128 lambda!351114)))

(declare-fun bs!1595644 () Bool)

(assert (= bs!1595644 (and d!1998170 d!1998146)))

(assert (=> bs!1595644 (= lambda!351128 lambda!351115)))

(declare-fun bs!1595645 () Bool)

(assert (= bs!1595645 (and d!1998170 d!1998148)))

(assert (=> bs!1595645 (= lambda!351128 lambda!351116)))

(declare-fun b!6370958 () Bool)

(declare-fun e!3867987 () Bool)

(declare-fun lt!2368260 () Regex!16280)

(declare-fun isUnion!1119 (Regex!16280) Bool)

(assert (=> b!6370958 (= e!3867987 (isUnion!1119 lt!2368260))))

(declare-fun b!6370960 () Bool)

(declare-fun e!3867985 () Regex!16280)

(declare-fun e!3867983 () Regex!16280)

(assert (=> b!6370960 (= e!3867985 e!3867983)))

(declare-fun c!1160209 () Bool)

(assert (=> b!6370960 (= c!1160209 (is-Cons!65016 (unfocusZipperList!1701 zl!343)))))

(declare-fun b!6370961 () Bool)

(declare-fun e!3867986 () Bool)

(declare-fun e!3867984 () Bool)

(assert (=> b!6370961 (= e!3867986 e!3867984)))

(declare-fun c!1160208 () Bool)

(assert (=> b!6370961 (= c!1160208 (isEmpty!37132 (unfocusZipperList!1701 zl!343)))))

(declare-fun b!6370962 () Bool)

(assert (=> b!6370962 (= e!3867983 EmptyLang!16280)))

(declare-fun b!6370963 () Bool)

(declare-fun e!3867988 () Bool)

(assert (=> b!6370963 (= e!3867988 (isEmpty!37132 (t!378740 (unfocusZipperList!1701 zl!343))))))

(declare-fun b!6370964 () Bool)

(assert (=> b!6370964 (= e!3867987 (= lt!2368260 (head!13052 (unfocusZipperList!1701 zl!343))))))

(declare-fun b!6370965 () Bool)

(assert (=> b!6370965 (= e!3867983 (Union!16280 (h!71464 (unfocusZipperList!1701 zl!343)) (generalisedUnion!2124 (t!378740 (unfocusZipperList!1701 zl!343)))))))

(declare-fun b!6370966 () Bool)

(declare-fun isEmptyLang!1689 (Regex!16280) Bool)

(assert (=> b!6370966 (= e!3867984 (isEmptyLang!1689 lt!2368260))))

(declare-fun b!6370967 () Bool)

(assert (=> b!6370967 (= e!3867984 e!3867987)))

(declare-fun c!1160207 () Bool)

(assert (=> b!6370967 (= c!1160207 (isEmpty!37132 (tail!12137 (unfocusZipperList!1701 zl!343))))))

(declare-fun b!6370959 () Bool)

(assert (=> b!6370959 (= e!3867985 (h!71464 (unfocusZipperList!1701 zl!343)))))

(assert (=> d!1998170 e!3867986))

(declare-fun res!2620944 () Bool)

(assert (=> d!1998170 (=> (not res!2620944) (not e!3867986))))

(assert (=> d!1998170 (= res!2620944 (validRegex!8016 lt!2368260))))

(assert (=> d!1998170 (= lt!2368260 e!3867985)))

(declare-fun c!1160210 () Bool)

(assert (=> d!1998170 (= c!1160210 e!3867988)))

(declare-fun res!2620943 () Bool)

(assert (=> d!1998170 (=> (not res!2620943) (not e!3867988))))

(assert (=> d!1998170 (= res!2620943 (is-Cons!65016 (unfocusZipperList!1701 zl!343)))))

(assert (=> d!1998170 (forall!15458 (unfocusZipperList!1701 zl!343) lambda!351128)))

(assert (=> d!1998170 (= (generalisedUnion!2124 (unfocusZipperList!1701 zl!343)) lt!2368260)))

(assert (= (and d!1998170 res!2620943) b!6370963))

(assert (= (and d!1998170 c!1160210) b!6370959))

(assert (= (and d!1998170 (not c!1160210)) b!6370960))

(assert (= (and b!6370960 c!1160209) b!6370965))

(assert (= (and b!6370960 (not c!1160209)) b!6370962))

(assert (= (and d!1998170 res!2620944) b!6370961))

(assert (= (and b!6370961 c!1160208) b!6370966))

(assert (= (and b!6370961 (not c!1160208)) b!6370967))

(assert (= (and b!6370967 c!1160207) b!6370964))

(assert (= (and b!6370967 (not c!1160207)) b!6370958))

(assert (=> b!6370961 m!7173558))

(declare-fun m!7173784 () Bool)

(assert (=> b!6370961 m!7173784))

(assert (=> b!6370967 m!7173558))

(declare-fun m!7173786 () Bool)

(assert (=> b!6370967 m!7173786))

(assert (=> b!6370967 m!7173786))

(declare-fun m!7173788 () Bool)

(assert (=> b!6370967 m!7173788))

(declare-fun m!7173790 () Bool)

(assert (=> d!1998170 m!7173790))

(assert (=> d!1998170 m!7173558))

(declare-fun m!7173792 () Bool)

(assert (=> d!1998170 m!7173792))

(declare-fun m!7173794 () Bool)

(assert (=> b!6370963 m!7173794))

(assert (=> b!6370964 m!7173558))

(declare-fun m!7173796 () Bool)

(assert (=> b!6370964 m!7173796))

(declare-fun m!7173798 () Bool)

(assert (=> b!6370966 m!7173798))

(declare-fun m!7173800 () Bool)

(assert (=> b!6370958 m!7173800))

(declare-fun m!7173802 () Bool)

(assert (=> b!6370965 m!7173802))

(assert (=> b!6370659 d!1998170))

(declare-fun bs!1595646 () Bool)

(declare-fun d!1998174 () Bool)

(assert (= bs!1595646 (and d!1998174 d!1998146)))

(declare-fun lambda!351131 () Int)

(assert (=> bs!1595646 (= lambda!351131 lambda!351115)))

(declare-fun bs!1595647 () Bool)

(assert (= bs!1595647 (and d!1998174 d!1998170)))

(assert (=> bs!1595647 (= lambda!351131 lambda!351128)))

(declare-fun bs!1595648 () Bool)

(assert (= bs!1595648 (and d!1998174 d!1998148)))

(assert (=> bs!1595648 (= lambda!351131 lambda!351116)))

(declare-fun bs!1595649 () Bool)

(assert (= bs!1595649 (and d!1998174 d!1998126)))

(assert (=> bs!1595649 (= lambda!351131 lambda!351108)))

(declare-fun bs!1595650 () Bool)

(assert (= bs!1595650 (and d!1998174 d!1998138)))

(assert (=> bs!1595650 (= lambda!351131 lambda!351114)))

(declare-fun lt!2368263 () List!65140)

(assert (=> d!1998174 (forall!15458 lt!2368263 lambda!351131)))

(declare-fun e!3867991 () List!65140)

(assert (=> d!1998174 (= lt!2368263 e!3867991)))

(declare-fun c!1160213 () Bool)

(assert (=> d!1998174 (= c!1160213 (is-Cons!65017 zl!343))))

(assert (=> d!1998174 (= (unfocusZipperList!1701 zl!343) lt!2368263)))

(declare-fun b!6370972 () Bool)

(assert (=> b!6370972 (= e!3867991 (Cons!65016 (generalisedConcat!1877 (exprs!6164 (h!71465 zl!343))) (unfocusZipperList!1701 (t!378741 zl!343))))))

(declare-fun b!6370973 () Bool)

(assert (=> b!6370973 (= e!3867991 Nil!65016)))

(assert (= (and d!1998174 c!1160213) b!6370972))

(assert (= (and d!1998174 (not c!1160213)) b!6370973))

(declare-fun m!7173804 () Bool)

(assert (=> d!1998174 m!7173804))

(assert (=> b!6370972 m!7173526))

(declare-fun m!7173806 () Bool)

(assert (=> b!6370972 m!7173806))

(assert (=> b!6370659 d!1998174))

(declare-fun d!1998176 () Bool)

(declare-fun lt!2368266 () Regex!16280)

(assert (=> d!1998176 (validRegex!8016 lt!2368266)))

(assert (=> d!1998176 (= lt!2368266 (generalisedUnion!2124 (unfocusZipperList!1701 (Cons!65017 lt!2368139 Nil!65017))))))

(assert (=> d!1998176 (= (unfocusZipper!2022 (Cons!65017 lt!2368139 Nil!65017)) lt!2368266)))

(declare-fun bs!1595651 () Bool)

(assert (= bs!1595651 d!1998176))

(declare-fun m!7173808 () Bool)

(assert (=> bs!1595651 m!7173808))

(declare-fun m!7173810 () Bool)

(assert (=> bs!1595651 m!7173810))

(assert (=> bs!1595651 m!7173810))

(declare-fun m!7173812 () Bool)

(assert (=> bs!1595651 m!7173812))

(assert (=> b!6370660 d!1998176))

(declare-fun bs!1595652 () Bool)

(declare-fun b!6371036 () Bool)

(assert (= bs!1595652 (and b!6371036 d!1998158)))

(declare-fun lambda!351139 () Int)

(assert (=> bs!1595652 (not (= lambda!351139 lambda!351125))))

(declare-fun bs!1595653 () Bool)

(assert (= bs!1595653 (and b!6371036 d!1998152)))

(assert (=> bs!1595653 (not (= lambda!351139 lambda!351119))))

(assert (=> bs!1595652 (not (= lambda!351139 lambda!351124))))

(declare-fun bs!1595654 () Bool)

(assert (= bs!1595654 (and b!6371036 b!6370672)))

(assert (=> bs!1595654 (not (= lambda!351139 lambda!351090))))

(assert (=> bs!1595654 (not (= lambda!351139 lambda!351091))))

(assert (=> b!6371036 true))

(assert (=> b!6371036 true))

(declare-fun bs!1595655 () Bool)

(declare-fun b!6371038 () Bool)

(assert (= bs!1595655 (and b!6371038 d!1998158)))

(declare-fun lambda!351140 () Int)

(assert (=> bs!1595655 (= lambda!351140 lambda!351125)))

(declare-fun bs!1595656 () Bool)

(assert (= bs!1595656 (and b!6371038 d!1998152)))

(assert (=> bs!1595656 (not (= lambda!351140 lambda!351119))))

(declare-fun bs!1595657 () Bool)

(assert (= bs!1595657 (and b!6371038 b!6371036)))

(assert (=> bs!1595657 (not (= lambda!351140 lambda!351139))))

(assert (=> bs!1595655 (not (= lambda!351140 lambda!351124))))

(declare-fun bs!1595658 () Bool)

(assert (= bs!1595658 (and b!6371038 b!6370672)))

(assert (=> bs!1595658 (not (= lambda!351140 lambda!351090))))

(assert (=> bs!1595658 (= lambda!351140 lambda!351091)))

(assert (=> b!6371038 true))

(assert (=> b!6371038 true))

(declare-fun e!3868029 () Bool)

(declare-fun call!544017 () Bool)

(assert (=> b!6371036 (= e!3868029 call!544017)))

(declare-fun bm!544012 () Bool)

(declare-fun call!544018 () Bool)

(assert (=> bm!544012 (= call!544018 (isEmpty!37136 s!2326))))

(declare-fun b!6371037 () Bool)

(declare-fun c!1160237 () Bool)

(assert (=> b!6371037 (= c!1160237 (is-ElementMatch!16280 r!7292))))

(declare-fun e!3868034 () Bool)

(declare-fun e!3868030 () Bool)

(assert (=> b!6371037 (= e!3868034 e!3868030)))

(declare-fun e!3868033 () Bool)

(assert (=> b!6371038 (= e!3868033 call!544017)))

(declare-fun b!6371039 () Bool)

(declare-fun e!3868032 () Bool)

(assert (=> b!6371039 (= e!3868032 e!3868034)))

(declare-fun res!2620969 () Bool)

(assert (=> b!6371039 (= res!2620969 (not (is-EmptyLang!16280 r!7292)))))

(assert (=> b!6371039 (=> (not res!2620969) (not e!3868034))))

(declare-fun c!1160235 () Bool)

(declare-fun bm!544013 () Bool)

(assert (=> bm!544013 (= call!544017 (Exists!3350 (ite c!1160235 lambda!351139 lambda!351140)))))

(declare-fun b!6371040 () Bool)

(declare-fun e!3868031 () Bool)

(declare-fun e!3868028 () Bool)

(assert (=> b!6371040 (= e!3868031 e!3868028)))

(declare-fun res!2620967 () Bool)

(assert (=> b!6371040 (= res!2620967 (matchRSpec!3381 (regOne!33073 r!7292) s!2326))))

(assert (=> b!6371040 (=> res!2620967 e!3868028)))

(declare-fun d!1998178 () Bool)

(declare-fun c!1160234 () Bool)

(assert (=> d!1998178 (= c!1160234 (is-EmptyExpr!16280 r!7292))))

(assert (=> d!1998178 (= (matchRSpec!3381 r!7292 s!2326) e!3868032)))

(declare-fun b!6371041 () Bool)

(assert (=> b!6371041 (= e!3868031 e!3868033)))

(assert (=> b!6371041 (= c!1160235 (is-Star!16280 r!7292))))

(declare-fun b!6371042 () Bool)

(declare-fun res!2620968 () Bool)

(assert (=> b!6371042 (=> res!2620968 e!3868029)))

(assert (=> b!6371042 (= res!2620968 call!544018)))

(assert (=> b!6371042 (= e!3868033 e!3868029)))

(declare-fun b!6371043 () Bool)

(declare-fun c!1160236 () Bool)

(assert (=> b!6371043 (= c!1160236 (is-Union!16280 r!7292))))

(assert (=> b!6371043 (= e!3868030 e!3868031)))

(declare-fun b!6371044 () Bool)

(assert (=> b!6371044 (= e!3868032 call!544018)))

(declare-fun b!6371045 () Bool)

(assert (=> b!6371045 (= e!3868030 (= s!2326 (Cons!65015 (c!1160141 r!7292) Nil!65015)))))

(declare-fun b!6371046 () Bool)

(assert (=> b!6371046 (= e!3868028 (matchRSpec!3381 (regTwo!33073 r!7292) s!2326))))

(assert (= (and d!1998178 c!1160234) b!6371044))

(assert (= (and d!1998178 (not c!1160234)) b!6371039))

(assert (= (and b!6371039 res!2620969) b!6371037))

(assert (= (and b!6371037 c!1160237) b!6371045))

(assert (= (and b!6371037 (not c!1160237)) b!6371043))

(assert (= (and b!6371043 c!1160236) b!6371040))

(assert (= (and b!6371043 (not c!1160236)) b!6371041))

(assert (= (and b!6371040 (not res!2620967)) b!6371046))

(assert (= (and b!6371041 c!1160235) b!6371042))

(assert (= (and b!6371041 (not c!1160235)) b!6371038))

(assert (= (and b!6371042 (not res!2620968)) b!6371036))

(assert (= (or b!6371036 b!6371038) bm!544013))

(assert (= (or b!6371044 b!6371042) bm!544012))

(declare-fun m!7173832 () Bool)

(assert (=> bm!544012 m!7173832))

(declare-fun m!7173834 () Bool)

(assert (=> bm!544013 m!7173834))

(declare-fun m!7173836 () Bool)

(assert (=> b!6371040 m!7173836))

(declare-fun m!7173838 () Bool)

(assert (=> b!6371046 m!7173838))

(assert (=> b!6370655 d!1998178))

(declare-fun b!6371097 () Bool)

(declare-fun e!3868065 () Bool)

(declare-fun derivativeStep!4985 (Regex!16280 C!32830) Regex!16280)

(assert (=> b!6371097 (= e!3868065 (matchR!8463 (derivativeStep!4985 r!7292 (head!13053 s!2326)) (tail!12138 s!2326)))))

(declare-fun b!6371099 () Bool)

(declare-fun e!3868062 () Bool)

(assert (=> b!6371099 (= e!3868062 (= (head!13053 s!2326) (c!1160141 r!7292)))))

(declare-fun b!6371100 () Bool)

(declare-fun res!2620994 () Bool)

(declare-fun e!3868067 () Bool)

(assert (=> b!6371100 (=> res!2620994 e!3868067)))

(assert (=> b!6371100 (= res!2620994 (not (is-ElementMatch!16280 r!7292)))))

(declare-fun e!3868066 () Bool)

(assert (=> b!6371100 (= e!3868066 e!3868067)))

(declare-fun b!6371101 () Bool)

(declare-fun e!3868064 () Bool)

(assert (=> b!6371101 (= e!3868064 (not (= (head!13053 s!2326) (c!1160141 r!7292))))))

(declare-fun b!6371102 () Bool)

(declare-fun res!2620988 () Bool)

(assert (=> b!6371102 (=> res!2620988 e!3868067)))

(assert (=> b!6371102 (= res!2620988 e!3868062)))

(declare-fun res!2620995 () Bool)

(assert (=> b!6371102 (=> (not res!2620995) (not e!3868062))))

(declare-fun lt!2368272 () Bool)

(assert (=> b!6371102 (= res!2620995 lt!2368272)))

(declare-fun b!6371103 () Bool)

(declare-fun e!3868061 () Bool)

(assert (=> b!6371103 (= e!3868061 e!3868064)))

(declare-fun res!2620993 () Bool)

(assert (=> b!6371103 (=> res!2620993 e!3868064)))

(declare-fun call!544033 () Bool)

(assert (=> b!6371103 (= res!2620993 call!544033)))

(declare-fun b!6371104 () Bool)

(declare-fun res!2620989 () Bool)

(assert (=> b!6371104 (=> (not res!2620989) (not e!3868062))))

(assert (=> b!6371104 (= res!2620989 (isEmpty!37136 (tail!12138 s!2326)))))

(declare-fun b!6371105 () Bool)

(declare-fun res!2620991 () Bool)

(assert (=> b!6371105 (=> (not res!2620991) (not e!3868062))))

(assert (=> b!6371105 (= res!2620991 (not call!544033))))

(declare-fun bm!544028 () Bool)

(assert (=> bm!544028 (= call!544033 (isEmpty!37136 s!2326))))

(declare-fun b!6371106 () Bool)

(declare-fun res!2620992 () Bool)

(assert (=> b!6371106 (=> res!2620992 e!3868064)))

(assert (=> b!6371106 (= res!2620992 (not (isEmpty!37136 (tail!12138 s!2326))))))

(declare-fun b!6371107 () Bool)

(assert (=> b!6371107 (= e!3868066 (not lt!2368272))))

(declare-fun b!6371108 () Bool)

(assert (=> b!6371108 (= e!3868065 (nullable!6273 r!7292))))

(declare-fun d!1998182 () Bool)

(declare-fun e!3868063 () Bool)

(assert (=> d!1998182 e!3868063))

(declare-fun c!1160256 () Bool)

(assert (=> d!1998182 (= c!1160256 (is-EmptyExpr!16280 r!7292))))

(assert (=> d!1998182 (= lt!2368272 e!3868065)))

(declare-fun c!1160254 () Bool)

(assert (=> d!1998182 (= c!1160254 (isEmpty!37136 s!2326))))

(assert (=> d!1998182 (validRegex!8016 r!7292)))

(assert (=> d!1998182 (= (matchR!8463 r!7292 s!2326) lt!2368272)))

(declare-fun b!6371098 () Bool)

(assert (=> b!6371098 (= e!3868067 e!3868061)))

(declare-fun res!2620990 () Bool)

(assert (=> b!6371098 (=> (not res!2620990) (not e!3868061))))

(assert (=> b!6371098 (= res!2620990 (not lt!2368272))))

(declare-fun b!6371109 () Bool)

(assert (=> b!6371109 (= e!3868063 (= lt!2368272 call!544033))))

(declare-fun b!6371110 () Bool)

(assert (=> b!6371110 (= e!3868063 e!3868066)))

(declare-fun c!1160255 () Bool)

(assert (=> b!6371110 (= c!1160255 (is-EmptyLang!16280 r!7292))))

(assert (= (and d!1998182 c!1160254) b!6371108))

(assert (= (and d!1998182 (not c!1160254)) b!6371097))

(assert (= (and d!1998182 c!1160256) b!6371109))

(assert (= (and d!1998182 (not c!1160256)) b!6371110))

(assert (= (and b!6371110 c!1160255) b!6371107))

(assert (= (and b!6371110 (not c!1160255)) b!6371100))

(assert (= (and b!6371100 (not res!2620994)) b!6371102))

(assert (= (and b!6371102 res!2620995) b!6371105))

(assert (= (and b!6371105 res!2620991) b!6371104))

(assert (= (and b!6371104 res!2620989) b!6371099))

(assert (= (and b!6371102 (not res!2620988)) b!6371098))

(assert (= (and b!6371098 res!2620990) b!6371103))

(assert (= (and b!6371103 (not res!2620993)) b!6371106))

(assert (= (and b!6371106 (not res!2620992)) b!6371101))

(assert (= (or b!6371109 b!6371103 b!6371105) bm!544028))

(declare-fun m!7173840 () Bool)

(assert (=> b!6371108 m!7173840))

(declare-fun m!7173842 () Bool)

(assert (=> b!6371104 m!7173842))

(assert (=> b!6371104 m!7173842))

(declare-fun m!7173844 () Bool)

(assert (=> b!6371104 m!7173844))

(declare-fun m!7173846 () Bool)

(assert (=> b!6371101 m!7173846))

(assert (=> bm!544028 m!7173832))

(assert (=> d!1998182 m!7173832))

(assert (=> d!1998182 m!7173510))

(assert (=> b!6371106 m!7173842))

(assert (=> b!6371106 m!7173842))

(assert (=> b!6371106 m!7173844))

(assert (=> b!6371099 m!7173846))

(assert (=> b!6371097 m!7173846))

(assert (=> b!6371097 m!7173846))

(declare-fun m!7173848 () Bool)

(assert (=> b!6371097 m!7173848))

(assert (=> b!6371097 m!7173842))

(assert (=> b!6371097 m!7173848))

(assert (=> b!6371097 m!7173842))

(declare-fun m!7173850 () Bool)

(assert (=> b!6371097 m!7173850))

(assert (=> b!6370655 d!1998182))

(declare-fun d!1998184 () Bool)

(assert (=> d!1998184 (= (matchR!8463 r!7292 s!2326) (matchRSpec!3381 r!7292 s!2326))))

(declare-fun lt!2368275 () Unit!158451)

(declare-fun choose!47346 (Regex!16280 List!65139) Unit!158451)

(assert (=> d!1998184 (= lt!2368275 (choose!47346 r!7292 s!2326))))

(assert (=> d!1998184 (validRegex!8016 r!7292)))

(assert (=> d!1998184 (= (mainMatchTheorem!3381 r!7292 s!2326) lt!2368275)))

(declare-fun bs!1595659 () Bool)

(assert (= bs!1595659 d!1998184))

(assert (=> bs!1595659 m!7173506))

(assert (=> bs!1595659 m!7173504))

(declare-fun m!7173852 () Bool)

(assert (=> bs!1595659 m!7173852))

(assert (=> bs!1595659 m!7173510))

(assert (=> b!6370655 d!1998184))

(declare-fun d!1998186 () Bool)

(assert (=> d!1998186 (= (isEmpty!37132 (t!378740 (exprs!6164 (h!71465 zl!343)))) (is-Nil!65016 (t!378740 (exprs!6164 (h!71465 zl!343)))))))

(assert (=> b!6370665 d!1998186))

(declare-fun bm!544035 () Bool)

(declare-fun call!544040 () (Set Context!11328))

(assert (=> bm!544035 (= call!544040 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 lt!2368148)) (Context!11329 (t!378740 (exprs!6164 lt!2368148))) (h!71463 s!2326)))))

(declare-fun d!1998188 () Bool)

(declare-fun c!1160262 () Bool)

(declare-fun e!3868076 () Bool)

(assert (=> d!1998188 (= c!1160262 e!3868076)))

(declare-fun res!2620997 () Bool)

(assert (=> d!1998188 (=> (not res!2620997) (not e!3868076))))

(assert (=> d!1998188 (= res!2620997 (is-Cons!65016 (exprs!6164 lt!2368148)))))

(declare-fun e!3868074 () (Set Context!11328))

(assert (=> d!1998188 (= (derivationStepZipperUp!1454 lt!2368148 (h!71463 s!2326)) e!3868074)))

(declare-fun b!6371122 () Bool)

(declare-fun e!3868075 () (Set Context!11328))

(assert (=> b!6371122 (= e!3868074 e!3868075)))

(declare-fun c!1160263 () Bool)

(assert (=> b!6371122 (= c!1160263 (is-Cons!65016 (exprs!6164 lt!2368148)))))

(declare-fun b!6371123 () Bool)

(assert (=> b!6371123 (= e!3868076 (nullable!6273 (h!71464 (exprs!6164 lt!2368148))))))

(declare-fun b!6371124 () Bool)

(assert (=> b!6371124 (= e!3868074 (set.union call!544040 (derivationStepZipperUp!1454 (Context!11329 (t!378740 (exprs!6164 lt!2368148))) (h!71463 s!2326))))))

(declare-fun b!6371125 () Bool)

(assert (=> b!6371125 (= e!3868075 (as set.empty (Set Context!11328)))))

(declare-fun b!6371126 () Bool)

(assert (=> b!6371126 (= e!3868075 call!544040)))

(assert (= (and d!1998188 res!2620997) b!6371123))

(assert (= (and d!1998188 c!1160262) b!6371124))

(assert (= (and d!1998188 (not c!1160262)) b!6371122))

(assert (= (and b!6371122 c!1160263) b!6371126))

(assert (= (and b!6371122 (not c!1160263)) b!6371125))

(assert (= (or b!6371124 b!6371126) bm!544035))

(declare-fun m!7173864 () Bool)

(assert (=> bm!544035 m!7173864))

(declare-fun m!7173866 () Bool)

(assert (=> b!6371123 m!7173866))

(declare-fun m!7173868 () Bool)

(assert (=> b!6371124 m!7173868))

(assert (=> b!6370646 d!1998188))

(declare-fun d!1998192 () Bool)

(assert (=> d!1998192 (= (nullable!6273 (h!71464 (exprs!6164 (h!71465 zl!343)))) (nullableFct!2220 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun bs!1595660 () Bool)

(assert (= bs!1595660 d!1998192))

(declare-fun m!7173870 () Bool)

(assert (=> bs!1595660 m!7173870))

(assert (=> b!6370646 d!1998192))

(declare-fun bm!544036 () Bool)

(declare-fun call!544041 () (Set Context!11328))

(assert (=> bm!544036 (= call!544041 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343))))))) (Context!11329 (t!378740 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343)))))))) (h!71463 s!2326)))))

(declare-fun d!1998194 () Bool)

(declare-fun c!1160264 () Bool)

(declare-fun e!3868079 () Bool)

(assert (=> d!1998194 (= c!1160264 e!3868079)))

(declare-fun res!2620998 () Bool)

(assert (=> d!1998194 (=> (not res!2620998) (not e!3868079))))

(assert (=> d!1998194 (= res!2620998 (is-Cons!65016 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343))))))))))

(declare-fun e!3868077 () (Set Context!11328))

(assert (=> d!1998194 (= (derivationStepZipperUp!1454 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343))))) (h!71463 s!2326)) e!3868077)))

(declare-fun b!6371127 () Bool)

(declare-fun e!3868078 () (Set Context!11328))

(assert (=> b!6371127 (= e!3868077 e!3868078)))

(declare-fun c!1160265 () Bool)

(assert (=> b!6371127 (= c!1160265 (is-Cons!65016 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343))))))))))

(declare-fun b!6371128 () Bool)

(assert (=> b!6371128 (= e!3868079 (nullable!6273 (h!71464 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343)))))))))))

(declare-fun b!6371129 () Bool)

(assert (=> b!6371129 (= e!3868077 (set.union call!544041 (derivationStepZipperUp!1454 (Context!11329 (t!378740 (exprs!6164 (Context!11329 (Cons!65016 (h!71464 (exprs!6164 (h!71465 zl!343))) (t!378740 (exprs!6164 (h!71465 zl!343)))))))) (h!71463 s!2326))))))

(declare-fun b!6371130 () Bool)

(assert (=> b!6371130 (= e!3868078 (as set.empty (Set Context!11328)))))

(declare-fun b!6371131 () Bool)

(assert (=> b!6371131 (= e!3868078 call!544041)))

(assert (= (and d!1998194 res!2620998) b!6371128))

(assert (= (and d!1998194 c!1160264) b!6371129))

(assert (= (and d!1998194 (not c!1160264)) b!6371127))

(assert (= (and b!6371127 c!1160265) b!6371131))

(assert (= (and b!6371127 (not c!1160265)) b!6371130))

(assert (= (or b!6371129 b!6371131) bm!544036))

(declare-fun m!7173872 () Bool)

(assert (=> bm!544036 m!7173872))

(declare-fun m!7173874 () Bool)

(assert (=> b!6371128 m!7173874))

(declare-fun m!7173876 () Bool)

(assert (=> b!6371129 m!7173876))

(assert (=> b!6370646 d!1998194))

(declare-fun d!1998196 () Bool)

(assert (=> d!1998196 (= (flatMap!1785 z!1189 lambda!351092) (choose!47339 z!1189 lambda!351092))))

(declare-fun bs!1595661 () Bool)

(assert (= bs!1595661 d!1998196))

(declare-fun m!7173878 () Bool)

(assert (=> bs!1595661 m!7173878))

(assert (=> b!6370646 d!1998196))

(declare-fun bm!544037 () Bool)

(declare-fun call!544042 () (Set Context!11328))

(assert (=> bm!544037 (= call!544042 (derivationStepZipperDown!1528 (h!71464 (exprs!6164 (h!71465 zl!343))) (Context!11329 (t!378740 (exprs!6164 (h!71465 zl!343)))) (h!71463 s!2326)))))

(declare-fun d!1998198 () Bool)

(declare-fun c!1160266 () Bool)

(declare-fun e!3868082 () Bool)

(assert (=> d!1998198 (= c!1160266 e!3868082)))

(declare-fun res!2620999 () Bool)

(assert (=> d!1998198 (=> (not res!2620999) (not e!3868082))))

(assert (=> d!1998198 (= res!2620999 (is-Cons!65016 (exprs!6164 (h!71465 zl!343))))))

(declare-fun e!3868080 () (Set Context!11328))

(assert (=> d!1998198 (= (derivationStepZipperUp!1454 (h!71465 zl!343) (h!71463 s!2326)) e!3868080)))

(declare-fun b!6371132 () Bool)

(declare-fun e!3868081 () (Set Context!11328))

(assert (=> b!6371132 (= e!3868080 e!3868081)))

(declare-fun c!1160267 () Bool)

(assert (=> b!6371132 (= c!1160267 (is-Cons!65016 (exprs!6164 (h!71465 zl!343))))))

(declare-fun b!6371133 () Bool)

(assert (=> b!6371133 (= e!3868082 (nullable!6273 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6371134 () Bool)

(assert (=> b!6371134 (= e!3868080 (set.union call!544042 (derivationStepZipperUp!1454 (Context!11329 (t!378740 (exprs!6164 (h!71465 zl!343)))) (h!71463 s!2326))))))

(declare-fun b!6371135 () Bool)

(assert (=> b!6371135 (= e!3868081 (as set.empty (Set Context!11328)))))

(declare-fun b!6371136 () Bool)

(assert (=> b!6371136 (= e!3868081 call!544042)))

(assert (= (and d!1998198 res!2620999) b!6371133))

(assert (= (and d!1998198 c!1160266) b!6371134))

(assert (= (and d!1998198 (not c!1160266)) b!6371132))

(assert (= (and b!6371132 c!1160267) b!6371136))

(assert (= (and b!6371132 (not c!1160267)) b!6371135))

(assert (= (or b!6371134 b!6371136) bm!544037))

(declare-fun m!7173880 () Bool)

(assert (=> bm!544037 m!7173880))

(assert (=> b!6371133 m!7173536))

(declare-fun m!7173882 () Bool)

(assert (=> b!6371134 m!7173882))

(assert (=> b!6370646 d!1998198))

(declare-fun d!1998200 () Bool)

(assert (=> d!1998200 (= (flatMap!1785 z!1189 lambda!351092) (dynLambda!25794 lambda!351092 (h!71465 zl!343)))))

(declare-fun lt!2368276 () Unit!158451)

(assert (=> d!1998200 (= lt!2368276 (choose!47340 z!1189 (h!71465 zl!343) lambda!351092))))

(assert (=> d!1998200 (= z!1189 (set.insert (h!71465 zl!343) (as set.empty (Set Context!11328))))))

(assert (=> d!1998200 (= (lemmaFlatMapOnSingletonSet!1311 z!1189 (h!71465 zl!343) lambda!351092) lt!2368276)))

(declare-fun b_lambda!242127 () Bool)

(assert (=> (not b_lambda!242127) (not d!1998200)))

(declare-fun bs!1595662 () Bool)

(assert (= bs!1595662 d!1998200))

(assert (=> bs!1595662 m!7173534))

(declare-fun m!7173884 () Bool)

(assert (=> bs!1595662 m!7173884))

(declare-fun m!7173886 () Bool)

(assert (=> bs!1595662 m!7173886))

(declare-fun m!7173888 () Bool)

(assert (=> bs!1595662 m!7173888))

(assert (=> b!6370646 d!1998200))

(declare-fun b!6371137 () Bool)

(declare-fun e!3868087 () (Set Context!11328))

(declare-fun call!544046 () (Set Context!11328))

(assert (=> b!6371137 (= e!3868087 call!544046)))

(declare-fun b!6371138 () Bool)

(declare-fun c!1160272 () Bool)

(assert (=> b!6371138 (= c!1160272 (is-Star!16280 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun e!3868088 () (Set Context!11328))

(assert (=> b!6371138 (= e!3868087 e!3868088)))

(declare-fun bm!544038 () Bool)

(declare-fun call!544045 () List!65140)

(declare-fun call!544048 () List!65140)

(assert (=> bm!544038 (= call!544045 call!544048)))

(declare-fun b!6371139 () Bool)

(declare-fun e!3868086 () (Set Context!11328))

(assert (=> b!6371139 (= e!3868086 e!3868087)))

(declare-fun c!1160270 () Bool)

(assert (=> b!6371139 (= c!1160270 (is-Concat!25125 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6371140 () Bool)

(declare-fun c!1160268 () Bool)

(declare-fun e!3868085 () Bool)

(assert (=> b!6371140 (= c!1160268 e!3868085)))

(declare-fun res!2621000 () Bool)

(assert (=> b!6371140 (=> (not res!2621000) (not e!3868085))))

(assert (=> b!6371140 (= res!2621000 (is-Concat!25125 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun e!3868084 () (Set Context!11328))

(assert (=> b!6371140 (= e!3868084 e!3868086)))

(declare-fun b!6371141 () Bool)

(declare-fun call!544044 () (Set Context!11328))

(declare-fun call!544047 () (Set Context!11328))

(assert (=> b!6371141 (= e!3868084 (set.union call!544044 call!544047))))

(declare-fun bm!544039 () Bool)

(declare-fun call!544043 () (Set Context!11328))

(assert (=> bm!544039 (= call!544046 call!544043)))

(declare-fun b!6371142 () Bool)

(assert (=> b!6371142 (= e!3868085 (nullable!6273 (regOne!33072 (h!71464 (exprs!6164 (h!71465 zl!343))))))))

(declare-fun b!6371143 () Bool)

(assert (=> b!6371143 (= e!3868086 (set.union call!544047 call!544043))))

(declare-fun b!6371144 () Bool)

(assert (=> b!6371144 (= e!3868088 (as set.empty (Set Context!11328)))))

(declare-fun b!6371145 () Bool)

(declare-fun e!3868083 () (Set Context!11328))

(assert (=> b!6371145 (= e!3868083 e!3868084)))

(declare-fun c!1160269 () Bool)

(assert (=> b!6371145 (= c!1160269 (is-Union!16280 (h!71464 (exprs!6164 (h!71465 zl!343)))))))

(declare-fun b!6371146 () Bool)

(assert (=> b!6371146 (= e!3868088 call!544046)))

(declare-fun bm!544040 () Bool)

(assert (=> bm!544040 (= call!544043 call!544044)))

(declare-fun bm!544041 () Bool)

(assert (=> bm!544041 (= call!544047 (derivationStepZipperDown!1528 (ite c!1160269 (regTwo!33073 (h!71464 (exprs!6164 (h!71465 zl!343)))) (regOne!33072 (h!71464 (exprs!6164 (h!71465 zl!343))))) (ite c!1160269 lt!2368148 (Context!11329 call!544048)) (h!71463 s!2326)))))

(declare-fun d!1998202 () Bool)

(declare-fun c!1160271 () Bool)

(assert (=> d!1998202 (= c!1160271 (and (is-ElementMatch!16280 (h!71464 (exprs!6164 (h!71465 zl!343)))) (= (c!1160141 (h!71464 (exprs!6164 (h!71465 zl!343)))) (h!71463 s!2326))))))

(assert (=> d!1998202 (= (derivationStepZipperDown!1528 (h!71464 (exprs!6164 (h!71465 zl!343))) lt!2368148 (h!71463 s!2326)) e!3868083)))

(declare-fun b!6371147 () Bool)

(assert (=> b!6371147 (= e!3868083 (set.insert lt!2368148 (as set.empty (Set Context!11328))))))

(declare-fun bm!544042 () Bool)

(assert (=> bm!544042 (= call!544048 ($colon$colon!2141 (exprs!6164 lt!2368148) (ite (or c!1160268 c!1160270) (regTwo!33072 (h!71464 (exprs!6164 (h!71465 zl!343)))) (h!71464 (exprs!6164 (h!71465 zl!343))))))))

(declare-fun bm!544043 () Bool)

(assert (=> bm!544043 (= call!544044 (derivationStepZipperDown!1528 (ite c!1160269 (regOne!33073 (h!71464 (exprs!6164 (h!71465 zl!343)))) (ite c!1160268 (regTwo!33072 (h!71464 (exprs!6164 (h!71465 zl!343)))) (ite c!1160270 (regOne!33072 (h!71464 (exprs!6164 (h!71465 zl!343)))) (reg!16609 (h!71464 (exprs!6164 (h!71465 zl!343))))))) (ite (or c!1160269 c!1160268) lt!2368148 (Context!11329 call!544045)) (h!71463 s!2326)))))

(assert (= (and d!1998202 c!1160271) b!6371147))

(assert (= (and d!1998202 (not c!1160271)) b!6371145))

(assert (= (and b!6371145 c!1160269) b!6371141))

(assert (= (and b!6371145 (not c!1160269)) b!6371140))

(assert (= (and b!6371140 res!2621000) b!6371142))

(assert (= (and b!6371140 c!1160268) b!6371143))

(assert (= (and b!6371140 (not c!1160268)) b!6371139))

(assert (= (and b!6371139 c!1160270) b!6371137))

(assert (= (and b!6371139 (not c!1160270)) b!6371138))

(assert (= (and b!6371138 c!1160272) b!6371146))

(assert (= (and b!6371138 (not c!1160272)) b!6371144))

(assert (= (or b!6371137 b!6371146) bm!544038))

(assert (= (or b!6371137 b!6371146) bm!544039))

(assert (= (or b!6371143 bm!544038) bm!544042))

(assert (= (or b!6371143 bm!544039) bm!544040))

(assert (= (or b!6371141 b!6371143) bm!544041))

(assert (= (or b!6371141 bm!544040) bm!544043))

(declare-fun m!7173890 () Bool)

(assert (=> b!6371147 m!7173890))

(declare-fun m!7173892 () Bool)

(assert (=> bm!544042 m!7173892))

(declare-fun m!7173894 () Bool)

(assert (=> bm!544041 m!7173894))

(declare-fun m!7173896 () Bool)

(assert (=> b!6371142 m!7173896))

(declare-fun m!7173898 () Bool)

(assert (=> bm!544043 m!7173898))

(assert (=> b!6370646 d!1998202))

(declare-fun d!1998204 () Bool)

(assert (=> d!1998204 (= (isEmpty!37131 (t!378741 zl!343)) (is-Nil!65017 (t!378741 zl!343)))))

(assert (=> b!6370656 d!1998204))

(declare-fun d!1998206 () Bool)

(declare-fun c!1160273 () Bool)

(assert (=> d!1998206 (= c!1160273 (isEmpty!37136 s!2326))))

(declare-fun e!3868089 () Bool)

(assert (=> d!1998206 (= (matchZipper!2292 lt!2368152 s!2326) e!3868089)))

(declare-fun b!6371148 () Bool)

(assert (=> b!6371148 (= e!3868089 (nullableZipper!2046 lt!2368152))))

(declare-fun b!6371149 () Bool)

(assert (=> b!6371149 (= e!3868089 (matchZipper!2292 (derivationStepZipper!2246 lt!2368152 (head!13053 s!2326)) (tail!12138 s!2326)))))

(assert (= (and d!1998206 c!1160273) b!6371148))

(assert (= (and d!1998206 (not c!1160273)) b!6371149))

(assert (=> d!1998206 m!7173832))

(declare-fun m!7173906 () Bool)

(assert (=> b!6371148 m!7173906))

(assert (=> b!6371149 m!7173846))

(assert (=> b!6371149 m!7173846))

(declare-fun m!7173908 () Bool)

(assert (=> b!6371149 m!7173908))

(assert (=> b!6371149 m!7173842))

(assert (=> b!6371149 m!7173908))

(assert (=> b!6371149 m!7173842))

(declare-fun m!7173910 () Bool)

(assert (=> b!6371149 m!7173910))

(assert (=> b!6370666 d!1998206))

(declare-fun d!1998210 () Bool)

(declare-fun c!1160274 () Bool)

(assert (=> d!1998210 (= c!1160274 (isEmpty!37136 (t!378739 s!2326)))))

(declare-fun e!3868090 () Bool)

(assert (=> d!1998210 (= (matchZipper!2292 lt!2368157 (t!378739 s!2326)) e!3868090)))

(declare-fun b!6371150 () Bool)

(assert (=> b!6371150 (= e!3868090 (nullableZipper!2046 lt!2368157))))

(declare-fun b!6371151 () Bool)

(assert (=> b!6371151 (= e!3868090 (matchZipper!2292 (derivationStepZipper!2246 lt!2368157 (head!13053 (t!378739 s!2326))) (tail!12138 (t!378739 s!2326))))))

(assert (= (and d!1998210 c!1160274) b!6371150))

(assert (= (and d!1998210 (not c!1160274)) b!6371151))

(assert (=> d!1998210 m!7173760))

(declare-fun m!7173912 () Bool)

(assert (=> b!6371150 m!7173912))

(assert (=> b!6371151 m!7173764))

(assert (=> b!6371151 m!7173764))

(declare-fun m!7173914 () Bool)

(assert (=> b!6371151 m!7173914))

(assert (=> b!6371151 m!7173768))

(assert (=> b!6371151 m!7173914))

(assert (=> b!6371151 m!7173768))

(declare-fun m!7173916 () Bool)

(assert (=> b!6371151 m!7173916))

(assert (=> b!6370666 d!1998210))

(declare-fun b!6371170 () Bool)

(declare-fun e!3868107 () Bool)

(declare-fun e!3868108 () Bool)

(assert (=> b!6371170 (= e!3868107 e!3868108)))

(declare-fun c!1160280 () Bool)

(assert (=> b!6371170 (= c!1160280 (is-Union!16280 r!7292))))

(declare-fun bm!544050 () Bool)

(declare-fun c!1160279 () Bool)

(declare-fun call!544055 () Bool)

(assert (=> bm!544050 (= call!544055 (validRegex!8016 (ite c!1160279 (reg!16609 r!7292) (ite c!1160280 (regOne!33073 r!7292) (regOne!33072 r!7292)))))))

(declare-fun d!1998212 () Bool)

(declare-fun res!2621014 () Bool)

(declare-fun e!3868105 () Bool)

(assert (=> d!1998212 (=> res!2621014 e!3868105)))

(assert (=> d!1998212 (= res!2621014 (is-ElementMatch!16280 r!7292))))

(assert (=> d!1998212 (= (validRegex!8016 r!7292) e!3868105)))

(declare-fun b!6371171 () Bool)

(declare-fun e!3868106 () Bool)

(assert (=> b!6371171 (= e!3868107 e!3868106)))

(declare-fun res!2621012 () Bool)

(assert (=> b!6371171 (= res!2621012 (not (nullable!6273 (reg!16609 r!7292))))))

(assert (=> b!6371171 (=> (not res!2621012) (not e!3868106))))

(declare-fun b!6371172 () Bool)

(declare-fun res!2621015 () Bool)

(declare-fun e!3868110 () Bool)

(assert (=> b!6371172 (=> (not res!2621015) (not e!3868110))))

(declare-fun call!544057 () Bool)

(assert (=> b!6371172 (= res!2621015 call!544057)))

(assert (=> b!6371172 (= e!3868108 e!3868110)))

(declare-fun b!6371173 () Bool)

(declare-fun call!544056 () Bool)

(assert (=> b!6371173 (= e!3868110 call!544056)))

(declare-fun b!6371174 () Bool)

(assert (=> b!6371174 (= e!3868105 e!3868107)))

(assert (=> b!6371174 (= c!1160279 (is-Star!16280 r!7292))))

(declare-fun b!6371175 () Bool)

(declare-fun e!3868111 () Bool)

(assert (=> b!6371175 (= e!3868111 call!544056)))

(declare-fun bm!544051 () Bool)

(assert (=> bm!544051 (= call!544056 (validRegex!8016 (ite c!1160280 (regTwo!33073 r!7292) (regTwo!33072 r!7292))))))

(declare-fun b!6371176 () Bool)

(declare-fun res!2621013 () Bool)

(declare-fun e!3868109 () Bool)

(assert (=> b!6371176 (=> res!2621013 e!3868109)))

(assert (=> b!6371176 (= res!2621013 (not (is-Concat!25125 r!7292)))))

(assert (=> b!6371176 (= e!3868108 e!3868109)))

(declare-fun bm!544052 () Bool)

(assert (=> bm!544052 (= call!544057 call!544055)))

(declare-fun b!6371177 () Bool)

(assert (=> b!6371177 (= e!3868109 e!3868111)))

(declare-fun res!2621011 () Bool)

(assert (=> b!6371177 (=> (not res!2621011) (not e!3868111))))

(assert (=> b!6371177 (= res!2621011 call!544057)))

(declare-fun b!6371178 () Bool)

(assert (=> b!6371178 (= e!3868106 call!544055)))

(assert (= (and d!1998212 (not res!2621014)) b!6371174))

(assert (= (and b!6371174 c!1160279) b!6371171))

(assert (= (and b!6371174 (not c!1160279)) b!6371170))

(assert (= (and b!6371171 res!2621012) b!6371178))

(assert (= (and b!6371170 c!1160280) b!6371172))

(assert (= (and b!6371170 (not c!1160280)) b!6371176))

(assert (= (and b!6371172 res!2621015) b!6371173))

(assert (= (and b!6371176 (not res!2621013)) b!6371177))

(assert (= (and b!6371177 res!2621011) b!6371175))

(assert (= (or b!6371173 b!6371175) bm!544051))

(assert (= (or b!6371172 b!6371177) bm!544052))

(assert (= (or b!6371178 bm!544052) bm!544050))

(declare-fun m!7173920 () Bool)

(assert (=> bm!544050 m!7173920))

(declare-fun m!7173922 () Bool)

(assert (=> b!6371171 m!7173922))

(declare-fun m!7173924 () Bool)

(assert (=> bm!544051 m!7173924))

(assert (=> start!631136 d!1998212))

(declare-fun d!1998218 () Bool)

(declare-fun lt!2368280 () Regex!16280)

(assert (=> d!1998218 (validRegex!8016 lt!2368280)))

(assert (=> d!1998218 (= lt!2368280 (generalisedUnion!2124 (unfocusZipperList!1701 zl!343)))))

(assert (=> d!1998218 (= (unfocusZipper!2022 zl!343) lt!2368280)))

(declare-fun bs!1595666 () Bool)

(assert (= bs!1595666 d!1998218))

(declare-fun m!7173926 () Bool)

(assert (=> bs!1595666 m!7173926))

(assert (=> bs!1595666 m!7173558))

(assert (=> bs!1595666 m!7173558))

(assert (=> bs!1595666 m!7173560))

(assert (=> b!6370667 d!1998218))

(declare-fun b!6371196 () Bool)

(declare-fun e!3868116 () Bool)

(declare-fun tp!1773738 () Bool)

(declare-fun tp!1773739 () Bool)

(assert (=> b!6371196 (= e!3868116 (and tp!1773738 tp!1773739))))

(declare-fun b!6371193 () Bool)

(assert (=> b!6371193 (= e!3868116 tp_is_empty!41813)))

(declare-fun b!6371195 () Bool)

(declare-fun tp!1773737 () Bool)

(assert (=> b!6371195 (= e!3868116 tp!1773737)))

(assert (=> b!6370662 (= tp!1773692 e!3868116)))

(declare-fun b!6371194 () Bool)

(declare-fun tp!1773740 () Bool)

(declare-fun tp!1773741 () Bool)

(assert (=> b!6371194 (= e!3868116 (and tp!1773740 tp!1773741))))

(assert (= (and b!6370662 (is-ElementMatch!16280 (reg!16609 r!7292))) b!6371193))

(assert (= (and b!6370662 (is-Concat!25125 (reg!16609 r!7292))) b!6371194))

(assert (= (and b!6370662 (is-Star!16280 (reg!16609 r!7292))) b!6371195))

(assert (= (and b!6370662 (is-Union!16280 (reg!16609 r!7292))) b!6371196))

(declare-fun b!6371200 () Bool)

(declare-fun e!3868117 () Bool)

(declare-fun tp!1773743 () Bool)

(declare-fun tp!1773744 () Bool)

(assert (=> b!6371200 (= e!3868117 (and tp!1773743 tp!1773744))))

(declare-fun b!6371197 () Bool)

(assert (=> b!6371197 (= e!3868117 tp_is_empty!41813)))

(declare-fun b!6371199 () Bool)

(declare-fun tp!1773742 () Bool)

(assert (=> b!6371199 (= e!3868117 tp!1773742)))

(assert (=> b!6370669 (= tp!1773689 e!3868117)))

(declare-fun b!6371198 () Bool)

(declare-fun tp!1773745 () Bool)

(declare-fun tp!1773746 () Bool)

(assert (=> b!6371198 (= e!3868117 (and tp!1773745 tp!1773746))))

(assert (= (and b!6370669 (is-ElementMatch!16280 (regOne!33072 r!7292))) b!6371197))

(assert (= (and b!6370669 (is-Concat!25125 (regOne!33072 r!7292))) b!6371198))

(assert (= (and b!6370669 (is-Star!16280 (regOne!33072 r!7292))) b!6371199))

(assert (= (and b!6370669 (is-Union!16280 (regOne!33072 r!7292))) b!6371200))

(declare-fun b!6371204 () Bool)

(declare-fun e!3868118 () Bool)

(declare-fun tp!1773748 () Bool)

(declare-fun tp!1773749 () Bool)

(assert (=> b!6371204 (= e!3868118 (and tp!1773748 tp!1773749))))

(declare-fun b!6371201 () Bool)

(assert (=> b!6371201 (= e!3868118 tp_is_empty!41813)))

(declare-fun b!6371203 () Bool)

(declare-fun tp!1773747 () Bool)

(assert (=> b!6371203 (= e!3868118 tp!1773747)))

(assert (=> b!6370669 (= tp!1773687 e!3868118)))

(declare-fun b!6371202 () Bool)

(declare-fun tp!1773750 () Bool)

(declare-fun tp!1773751 () Bool)

(assert (=> b!6371202 (= e!3868118 (and tp!1773750 tp!1773751))))

(assert (= (and b!6370669 (is-ElementMatch!16280 (regTwo!33072 r!7292))) b!6371201))

(assert (= (and b!6370669 (is-Concat!25125 (regTwo!33072 r!7292))) b!6371202))

(assert (= (and b!6370669 (is-Star!16280 (regTwo!33072 r!7292))) b!6371203))

(assert (= (and b!6370669 (is-Union!16280 (regTwo!33072 r!7292))) b!6371204))

(declare-fun b!6371209 () Bool)

(declare-fun e!3868121 () Bool)

(declare-fun tp!1773756 () Bool)

(declare-fun tp!1773757 () Bool)

(assert (=> b!6371209 (= e!3868121 (and tp!1773756 tp!1773757))))

(assert (=> b!6370664 (= tp!1773695 e!3868121)))

(assert (= (and b!6370664 (is-Cons!65016 (exprs!6164 setElem!43433))) b!6371209))

(declare-fun b!6371216 () Bool)

(declare-fun e!3868125 () Bool)

(declare-fun tp!1773760 () Bool)

(assert (=> b!6371216 (= e!3868125 (and tp_is_empty!41813 tp!1773760))))

(assert (=> b!6370650 (= tp!1773693 e!3868125)))

(assert (= (and b!6370650 (is-Cons!65015 (t!378739 s!2326))) b!6371216))

(declare-fun condSetEmpty!43439 () Bool)

(assert (=> setNonEmpty!43433 (= condSetEmpty!43439 (= setRest!43433 (as set.empty (Set Context!11328))))))

(declare-fun setRes!43439 () Bool)

(assert (=> setNonEmpty!43433 (= tp!1773696 setRes!43439)))

(declare-fun setIsEmpty!43439 () Bool)

(assert (=> setIsEmpty!43439 setRes!43439))

(declare-fun e!3868129 () Bool)

(declare-fun setElem!43439 () Context!11328)

(declare-fun tp!1773766 () Bool)

(declare-fun setNonEmpty!43439 () Bool)

(assert (=> setNonEmpty!43439 (= setRes!43439 (and tp!1773766 (inv!83948 setElem!43439) e!3868129))))

(declare-fun setRest!43439 () (Set Context!11328))

(assert (=> setNonEmpty!43439 (= setRest!43433 (set.union (set.insert setElem!43439 (as set.empty (Set Context!11328))) setRest!43439))))

(declare-fun b!6371223 () Bool)

(declare-fun tp!1773765 () Bool)

(assert (=> b!6371223 (= e!3868129 tp!1773765)))

(assert (= (and setNonEmpty!43433 condSetEmpty!43439) setIsEmpty!43439))

(assert (= (and setNonEmpty!43433 (not condSetEmpty!43439)) setNonEmpty!43439))

(assert (= setNonEmpty!43439 b!6371223))

(declare-fun m!7173946 () Bool)

(assert (=> setNonEmpty!43439 m!7173946))

(declare-fun b!6371224 () Bool)

(declare-fun e!3868130 () Bool)

(declare-fun tp!1773767 () Bool)

(declare-fun tp!1773768 () Bool)

(assert (=> b!6371224 (= e!3868130 (and tp!1773767 tp!1773768))))

(assert (=> b!6370677 (= tp!1773691 e!3868130)))

(assert (= (and b!6370677 (is-Cons!65016 (exprs!6164 (h!71465 zl!343)))) b!6371224))

(declare-fun b!6371234 () Bool)

(declare-fun e!3868137 () Bool)

(declare-fun tp!1773773 () Bool)

(assert (=> b!6371234 (= e!3868137 tp!1773773)))

(declare-fun b!6371233 () Bool)

(declare-fun tp!1773774 () Bool)

(declare-fun e!3868136 () Bool)

(assert (=> b!6371233 (= e!3868136 (and (inv!83948 (h!71465 (t!378741 zl!343))) e!3868137 tp!1773774))))

(assert (=> b!6370661 (= tp!1773694 e!3868136)))

(assert (= b!6371233 b!6371234))

(assert (= (and b!6370661 (is-Cons!65017 (t!378741 zl!343))) b!6371233))

(declare-fun m!7173960 () Bool)

(assert (=> b!6371233 m!7173960))

(declare-fun b!6371238 () Bool)

(declare-fun e!3868138 () Bool)

(declare-fun tp!1773776 () Bool)

(declare-fun tp!1773777 () Bool)

(assert (=> b!6371238 (= e!3868138 (and tp!1773776 tp!1773777))))

(declare-fun b!6371235 () Bool)

(assert (=> b!6371235 (= e!3868138 tp_is_empty!41813)))

(declare-fun b!6371237 () Bool)

(declare-fun tp!1773775 () Bool)

(assert (=> b!6371237 (= e!3868138 tp!1773775)))

(assert (=> b!6370657 (= tp!1773688 e!3868138)))

(declare-fun b!6371236 () Bool)

(declare-fun tp!1773778 () Bool)

(declare-fun tp!1773779 () Bool)

(assert (=> b!6371236 (= e!3868138 (and tp!1773778 tp!1773779))))

(assert (= (and b!6370657 (is-ElementMatch!16280 (regOne!33073 r!7292))) b!6371235))

(assert (= (and b!6370657 (is-Concat!25125 (regOne!33073 r!7292))) b!6371236))

(assert (= (and b!6370657 (is-Star!16280 (regOne!33073 r!7292))) b!6371237))

(assert (= (and b!6370657 (is-Union!16280 (regOne!33073 r!7292))) b!6371238))

(declare-fun b!6371242 () Bool)

(declare-fun e!3868139 () Bool)

(declare-fun tp!1773781 () Bool)

(declare-fun tp!1773782 () Bool)

(assert (=> b!6371242 (= e!3868139 (and tp!1773781 tp!1773782))))

(declare-fun b!6371239 () Bool)

(assert (=> b!6371239 (= e!3868139 tp_is_empty!41813)))

(declare-fun b!6371241 () Bool)

(declare-fun tp!1773780 () Bool)

(assert (=> b!6371241 (= e!3868139 tp!1773780)))

(assert (=> b!6370657 (= tp!1773690 e!3868139)))

(declare-fun b!6371240 () Bool)

(declare-fun tp!1773783 () Bool)

(declare-fun tp!1773784 () Bool)

(assert (=> b!6371240 (= e!3868139 (and tp!1773783 tp!1773784))))

(assert (= (and b!6370657 (is-ElementMatch!16280 (regTwo!33073 r!7292))) b!6371239))

(assert (= (and b!6370657 (is-Concat!25125 (regTwo!33073 r!7292))) b!6371240))

(assert (= (and b!6370657 (is-Star!16280 (regTwo!33073 r!7292))) b!6371241))

(assert (= (and b!6370657 (is-Union!16280 (regTwo!33073 r!7292))) b!6371242))

(declare-fun b_lambda!242129 () Bool)

(assert (= b_lambda!242125 (or b!6370646 b_lambda!242129)))

(declare-fun bs!1595667 () Bool)

(declare-fun d!1998226 () Bool)

(assert (= bs!1595667 (and d!1998226 b!6370646)))

(assert (=> bs!1595667 (= (dynLambda!25794 lambda!351092 lt!2368139) (derivationStepZipperUp!1454 lt!2368139 (h!71463 s!2326)))))

(assert (=> bs!1595667 m!7173522))

(assert (=> d!1998134 d!1998226))

(declare-fun b_lambda!242131 () Bool)

(assert (= b_lambda!242127 (or b!6370646 b_lambda!242131)))

(declare-fun bs!1595668 () Bool)

(declare-fun d!1998230 () Bool)

(assert (= bs!1595668 (and d!1998230 b!6370646)))

(assert (=> bs!1595668 (= (dynLambda!25794 lambda!351092 (h!71465 zl!343)) (derivationStepZipperUp!1454 (h!71465 zl!343) (h!71463 s!2326)))))

(assert (=> bs!1595668 m!7173530))

(assert (=> d!1998200 d!1998230))

(push 1)

(assert (not d!1998192))

(assert (not b!6371194))

(assert (not b!6370963))

(assert (not d!1998210))

(assert (not b!6371150))

(assert (not bm!543988))

(assert (not d!1998170))

(assert (not b!6371123))

(assert (not d!1998200))

(assert (not b!6370913))

(assert (not b!6370972))

(assert (not b!6371234))

(assert (not b!6370847))

(assert (not b!6371151))

(assert (not bm!544007))

(assert (not d!1998156))

(assert (not d!1998130))

(assert (not b!6371148))

(assert (not b!6371236))

(assert (not b!6371242))

(assert (not b!6371133))

(assert (not bm!544037))

(assert (not b!6370840))

(assert (not b_lambda!242131))

(assert (not bm!544006))

(assert (not d!1998168))

(assert (not d!1998146))

(assert (not b!6370935))

(assert (not bm!544043))

(assert (not d!1998182))

(assert (not b!6371195))

(assert (not d!1998184))

(assert (not b!6371142))

(assert (not b_lambda!242129))

(assert (not d!1998218))

(assert (not b!6370912))

(assert (not b!6371108))

(assert (not bm!544013))

(assert (not b!6371149))

(assert (not b!6371101))

(assert (not bs!1595668))

(assert (not bm!544036))

(assert (not b!6371233))

(assert (not b!6371171))

(assert (not bm!544050))

(assert (not d!1998154))

(assert (not d!1998158))

(assert (not d!1998144))

(assert (not b!6370885))

(assert (not b!6370958))

(assert (not bm!543989))

(assert (not d!1998142))

(assert (not b!6371241))

(assert (not b!6370937))

(assert (not b!6370844))

(assert (not b!6371238))

(assert (not b!6371134))

(assert (not b!6370814))

(assert (not d!1998166))

(assert (not setNonEmpty!43439))

(assert (not b!6371199))

(assert (not b!6370916))

(assert (not b!6370936))

(assert (not b!6370932))

(assert (not b!6371040))

(assert (not b!6371046))

(assert (not b!6371240))

(assert (not bm!544051))

(assert (not d!1998134))

(assert (not d!1998150))

(assert (not b!6371202))

(assert (not b!6370810))

(assert (not d!1998136))

(assert (not b!6370877))

(assert (not d!1998126))

(assert (not d!1998148))

(assert (not b!6370966))

(assert (not b!6371224))

(assert (not d!1998206))

(assert (not b!6370845))

(assert (not bm!544005))

(assert (not b!6370934))

(assert (not d!1998160))

(assert (not b!6370965))

(assert (not b!6370908))

(assert (not b!6371106))

(assert (not b!6370843))

(assert (not b!6370933))

(assert (not bm!544012))

(assert (not b!6371200))

(assert (not b!6371124))

(assert tp_is_empty!41813)

(assert (not b!6370809))

(assert (not d!1998174))

(assert (not d!1998176))

(assert (not d!1998164))

(assert (not b!6371204))

(assert (not d!1998138))

(assert (not bs!1595667))

(assert (not d!1998152))

(assert (not bm!544042))

(assert (not bm!544028))

(assert (not b!6371104))

(assert (not b!6370815))

(assert (not b!6371237))

(assert (not bm!544041))

(assert (not b!6371216))

(assert (not b!6370961))

(assert (not b!6370910))

(assert (not b!6371209))

(assert (not b!6370927))

(assert (not d!1998196))

(assert (not b!6371203))

(assert (not b!6370964))

(assert (not b!6371097))

(assert (not d!1998162))

(assert (not b!6371198))

(assert (not b!6370909))

(assert (not b!6370849))

(assert (not b!6370846))

(assert (not b!6371129))

(assert (not b!6371099))

(assert (not b!6370967))

(assert (not b!6371223))

(assert (not b!6371196))

(assert (not bm!544035))

(assert (not b!6371128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

