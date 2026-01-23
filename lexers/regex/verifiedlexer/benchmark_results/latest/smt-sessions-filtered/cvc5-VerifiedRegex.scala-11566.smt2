; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!638708 () Bool)

(assert start!638708)

(declare-fun b!6500822 () Bool)

(assert (=> b!6500822 true))

(assert (=> b!6500822 true))

(declare-fun lambda!360262 () Int)

(declare-fun lambda!360261 () Int)

(assert (=> b!6500822 (not (= lambda!360262 lambda!360261))))

(assert (=> b!6500822 true))

(assert (=> b!6500822 true))

(declare-fun b!6500793 () Bool)

(assert (=> b!6500793 true))

(declare-fun b!6500790 () Bool)

(declare-fun e!3939191 () Bool)

(declare-fun e!3939194 () Bool)

(assert (=> b!6500790 (= e!3939191 e!3939194)))

(declare-fun res!2669681 () Bool)

(assert (=> b!6500790 (=> res!2669681 e!3939194)))

(declare-datatypes ((C!33026 0))(
  ( (C!33027 (val!26215 Int)) )
))
(declare-datatypes ((Regex!16378 0))(
  ( (ElementMatch!16378 (c!1191918 C!33026)) (Concat!25223 (regOne!33268 Regex!16378) (regTwo!33268 Regex!16378)) (EmptyExpr!16378) (Star!16378 (reg!16707 Regex!16378)) (EmptyLang!16378) (Union!16378 (regOne!33269 Regex!16378) (regTwo!33269 Regex!16378)) )
))
(declare-datatypes ((List!65433 0))(
  ( (Nil!65309) (Cons!65309 (h!71757 Regex!16378) (t!379067 List!65433)) )
))
(declare-datatypes ((Context!11524 0))(
  ( (Context!11525 (exprs!6262 List!65433)) )
))
(declare-fun lt!2391601 () Context!11524)

(declare-fun lt!2391578 () Regex!16378)

(declare-datatypes ((List!65434 0))(
  ( (Nil!65310) (Cons!65310 (h!71758 Context!11524) (t!379068 List!65434)) )
))
(declare-fun unfocusZipper!2120 (List!65434) Regex!16378)

(assert (=> b!6500790 (= res!2669681 (not (= (unfocusZipper!2120 (Cons!65310 lt!2391601 Nil!65310)) lt!2391578)))))

(declare-fun r!7292 () Regex!16378)

(declare-fun lt!2391575 () Regex!16378)

(assert (=> b!6500790 (= lt!2391578 (Concat!25223 (reg!16707 (regOne!33268 r!7292)) lt!2391575))))

(declare-fun b!6500791 () Bool)

(declare-fun res!2669684 () Bool)

(declare-fun e!3939195 () Bool)

(assert (=> b!6500791 (=> res!2669684 e!3939195)))

(declare-fun lt!2391586 () Bool)

(assert (=> b!6500791 (= res!2669684 (not lt!2391586))))

(declare-fun res!2669704 () Bool)

(declare-fun e!3939175 () Bool)

(assert (=> start!638708 (=> (not res!2669704) (not e!3939175))))

(declare-fun validRegex!8114 (Regex!16378) Bool)

(assert (=> start!638708 (= res!2669704 (validRegex!8114 r!7292))))

(assert (=> start!638708 e!3939175))

(declare-fun c!324 () Context!11524)

(declare-fun e!3939177 () Bool)

(declare-fun inv!84193 (Context!11524) Bool)

(assert (=> start!638708 (and (inv!84193 c!324) e!3939177)))

(declare-fun e!3939180 () Bool)

(assert (=> start!638708 e!3939180))

(declare-fun e!3939190 () Bool)

(assert (=> start!638708 e!3939190))

(declare-fun condSetEmpty!44312 () Bool)

(declare-fun z!1189 () (Set Context!11524))

(assert (=> start!638708 (= condSetEmpty!44312 (= z!1189 (as set.empty (Set Context!11524))))))

(declare-fun setRes!44312 () Bool)

(assert (=> start!638708 setRes!44312))

(declare-fun e!3939184 () Bool)

(assert (=> start!638708 e!3939184))

(declare-fun b!6500792 () Bool)

(declare-fun res!2669693 () Bool)

(assert (=> b!6500792 (=> res!2669693 e!3939195)))

(declare-datatypes ((List!65435 0))(
  ( (Nil!65311) (Cons!65311 (h!71759 C!33026) (t!379069 List!65435)) )
))
(declare-fun s!2326 () List!65435)

(declare-fun matchZipper!2390 ((Set Context!11524) List!65435) Bool)

(assert (=> b!6500792 (= res!2669693 (not (matchZipper!2390 z!1189 s!2326)))))

(declare-fun e!3939181 () Bool)

(declare-fun e!3939197 () Bool)

(assert (=> b!6500793 (= e!3939181 e!3939197)))

(declare-fun res!2669703 () Bool)

(assert (=> b!6500793 (=> res!2669703 e!3939197)))

(assert (=> b!6500793 (= res!2669703 (or (and (is-ElementMatch!16378 (regOne!33268 r!7292)) (= (c!1191918 (regOne!33268 r!7292)) (h!71759 s!2326))) (is-Union!16378 (regOne!33268 r!7292))))))

(declare-datatypes ((Unit!158847 0))(
  ( (Unit!158848) )
))
(declare-fun lt!2391599 () Unit!158847)

(declare-fun e!3939188 () Unit!158847)

(assert (=> b!6500793 (= lt!2391599 e!3939188)))

(declare-fun c!1191917 () Bool)

(assert (=> b!6500793 (= c!1191917 lt!2391586)))

(declare-fun zl!343 () List!65434)

(declare-fun nullable!6371 (Regex!16378) Bool)

(assert (=> b!6500793 (= lt!2391586 (nullable!6371 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun lambda!360263 () Int)

(declare-fun flatMap!1883 ((Set Context!11524) Int) (Set Context!11524))

(declare-fun derivationStepZipperUp!1552 (Context!11524 C!33026) (Set Context!11524))

(assert (=> b!6500793 (= (flatMap!1883 z!1189 lambda!360263) (derivationStepZipperUp!1552 (h!71758 zl!343) (h!71759 s!2326)))))

(declare-fun lt!2391587 () Unit!158847)

(declare-fun lemmaFlatMapOnSingletonSet!1409 ((Set Context!11524) Context!11524 Int) Unit!158847)

(assert (=> b!6500793 (= lt!2391587 (lemmaFlatMapOnSingletonSet!1409 z!1189 (h!71758 zl!343) lambda!360263))))

(declare-fun lt!2391605 () (Set Context!11524))

(declare-fun lt!2391598 () Context!11524)

(assert (=> b!6500793 (= lt!2391605 (derivationStepZipperUp!1552 lt!2391598 (h!71759 s!2326)))))

(declare-fun lt!2391583 () (Set Context!11524))

(declare-fun derivationStepZipperDown!1626 (Regex!16378 Context!11524 C!33026) (Set Context!11524))

(assert (=> b!6500793 (= lt!2391583 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 (h!71758 zl!343))) lt!2391598 (h!71759 s!2326)))))

(assert (=> b!6500793 (= lt!2391598 (Context!11525 (t!379067 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun lt!2391594 () (Set Context!11524))

(assert (=> b!6500793 (= lt!2391594 (derivationStepZipperUp!1552 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343))))) (h!71759 s!2326)))))

(declare-fun b!6500794 () Bool)

(declare-fun e!3939192 () Bool)

(assert (=> b!6500794 (= e!3939192 e!3939191)))

(declare-fun res!2669702 () Bool)

(assert (=> b!6500794 (=> res!2669702 e!3939191)))

(assert (=> b!6500794 (= res!2669702 (not (= r!7292 lt!2391575)))))

(declare-fun lt!2391591 () Regex!16378)

(assert (=> b!6500794 (= lt!2391575 (Concat!25223 lt!2391591 (regTwo!33268 r!7292)))))

(declare-fun b!6500795 () Bool)

(declare-fun e!3939183 () Bool)

(assert (=> b!6500795 (= e!3939194 e!3939183)))

(declare-fun res!2669688 () Bool)

(assert (=> b!6500795 (=> res!2669688 e!3939183)))

(declare-fun lt!2391588 () Context!11524)

(assert (=> b!6500795 (= res!2669688 (not (= (unfocusZipper!2120 (Cons!65310 lt!2391588 Nil!65310)) (reg!16707 (regOne!33268 r!7292)))))))

(declare-fun lt!2391577 () Context!11524)

(declare-fun lt!2391576 () (Set Context!11524))

(assert (=> b!6500795 (= (flatMap!1883 lt!2391576 lambda!360263) (derivationStepZipperUp!1552 lt!2391577 (h!71759 s!2326)))))

(declare-fun lt!2391595 () Unit!158847)

(assert (=> b!6500795 (= lt!2391595 (lemmaFlatMapOnSingletonSet!1409 lt!2391576 lt!2391577 lambda!360263))))

(declare-fun lt!2391582 () (Set Context!11524))

(assert (=> b!6500795 (= (flatMap!1883 lt!2391582 lambda!360263) (derivationStepZipperUp!1552 lt!2391588 (h!71759 s!2326)))))

(declare-fun lt!2391602 () Unit!158847)

(assert (=> b!6500795 (= lt!2391602 (lemmaFlatMapOnSingletonSet!1409 lt!2391582 lt!2391588 lambda!360263))))

(declare-fun lt!2391597 () (Set Context!11524))

(assert (=> b!6500795 (= lt!2391597 (derivationStepZipperUp!1552 lt!2391577 (h!71759 s!2326)))))

(declare-fun lt!2391584 () (Set Context!11524))

(assert (=> b!6500795 (= lt!2391584 (derivationStepZipperUp!1552 lt!2391588 (h!71759 s!2326)))))

(assert (=> b!6500795 (= lt!2391576 (set.insert lt!2391577 (as set.empty (Set Context!11524))))))

(assert (=> b!6500795 (= lt!2391582 (set.insert lt!2391588 (as set.empty (Set Context!11524))))))

(assert (=> b!6500795 (= lt!2391588 (Context!11525 (Cons!65309 (reg!16707 (regOne!33268 r!7292)) Nil!65309)))))

(declare-fun b!6500796 () Bool)

(declare-fun e!3939178 () Bool)

(declare-fun lt!2391606 () List!65433)

(declare-fun ++!14460 (List!65433 List!65433) List!65433)

(assert (=> b!6500796 (= e!3939178 (inv!84193 (Context!11525 (++!14460 (exprs!6262 c!324) lt!2391606))))))

(declare-fun lt!2391581 () Unit!158847)

(declare-fun lambda!360264 () Int)

(declare-fun lemmaConcatPreservesForall!351 (List!65433 List!65433 Int) Unit!158847)

(assert (=> b!6500796 (= lt!2391581 (lemmaConcatPreservesForall!351 (exprs!6262 c!324) lt!2391606 lambda!360264))))

(declare-fun e!3939179 () Bool)

(declare-fun b!6500797 () Bool)

(declare-fun tp!1798421 () Bool)

(assert (=> b!6500797 (= e!3939184 (and (inv!84193 (h!71758 zl!343)) e!3939179 tp!1798421))))

(declare-fun b!6500798 () Bool)

(declare-fun e!3939185 () Bool)

(assert (=> b!6500798 (= e!3939197 e!3939185)))

(declare-fun res!2669691 () Bool)

(assert (=> b!6500798 (=> res!2669691 e!3939185)))

(declare-fun lt!2391609 () (Set Context!11524))

(assert (=> b!6500798 (= res!2669691 (not (= lt!2391583 lt!2391609)))))

(assert (=> b!6500798 (= lt!2391609 (derivationStepZipperDown!1626 (reg!16707 (regOne!33268 r!7292)) lt!2391577 (h!71759 s!2326)))))

(assert (=> b!6500798 (= lt!2391577 (Context!11525 lt!2391606))))

(assert (=> b!6500798 (= lt!2391606 (Cons!65309 lt!2391591 (t!379067 (exprs!6262 (h!71758 zl!343)))))))

(assert (=> b!6500798 (= lt!2391591 (Star!16378 (reg!16707 (regOne!33268 r!7292))))))

(declare-fun b!6500799 () Bool)

(declare-fun res!2669687 () Bool)

(assert (=> b!6500799 (=> (not res!2669687) (not e!3939175))))

(declare-fun toList!10162 ((Set Context!11524)) List!65434)

(assert (=> b!6500799 (= res!2669687 (= (toList!10162 z!1189) zl!343))))

(declare-fun b!6500800 () Bool)

(declare-fun tp!1798426 () Bool)

(assert (=> b!6500800 (= e!3939177 tp!1798426)))

(declare-fun b!6500801 () Bool)

(declare-fun e!3939186 () Bool)

(assert (=> b!6500801 (= e!3939186 (not (matchZipper!2390 lt!2391605 (t!379069 s!2326))))))

(declare-fun b!6500802 () Bool)

(declare-fun res!2669694 () Bool)

(assert (=> b!6500802 (=> res!2669694 e!3939197)))

(assert (=> b!6500802 (= res!2669694 (or (is-Concat!25223 (regOne!33268 r!7292)) (not (is-Star!16378 (regOne!33268 r!7292)))))))

(declare-fun b!6500803 () Bool)

(declare-fun e!3939189 () Bool)

(declare-fun e!3939176 () Bool)

(assert (=> b!6500803 (= e!3939189 (not e!3939176))))

(declare-fun res!2669680 () Bool)

(assert (=> b!6500803 (=> res!2669680 e!3939176)))

(assert (=> b!6500803 (= res!2669680 (not (is-Cons!65310 zl!343)))))

(declare-fun lt!2391589 () Bool)

(declare-fun matchRSpec!3479 (Regex!16378 List!65435) Bool)

(assert (=> b!6500803 (= lt!2391589 (matchRSpec!3479 r!7292 s!2326))))

(declare-fun matchR!8561 (Regex!16378 List!65435) Bool)

(assert (=> b!6500803 (= lt!2391589 (matchR!8561 r!7292 s!2326))))

(declare-fun lt!2391604 () Unit!158847)

(declare-fun mainMatchTheorem!3479 (Regex!16378 List!65435) Unit!158847)

(assert (=> b!6500803 (= lt!2391604 (mainMatchTheorem!3479 r!7292 s!2326))))

(declare-fun setIsEmpty!44312 () Bool)

(assert (=> setIsEmpty!44312 setRes!44312))

(declare-fun b!6500804 () Bool)

(declare-fun res!2669683 () Bool)

(assert (=> b!6500804 (=> res!2669683 e!3939176)))

(declare-fun generalisedUnion!2222 (List!65433) Regex!16378)

(declare-fun unfocusZipperList!1799 (List!65434) List!65433)

(assert (=> b!6500804 (= res!2669683 (not (= r!7292 (generalisedUnion!2222 (unfocusZipperList!1799 zl!343)))))))

(declare-fun b!6500805 () Bool)

(declare-fun tp!1798419 () Bool)

(assert (=> b!6500805 (= e!3939180 tp!1798419)))

(declare-fun b!6500806 () Bool)

(declare-fun res!2669679 () Bool)

(assert (=> b!6500806 (=> res!2669679 e!3939176)))

(assert (=> b!6500806 (= res!2669679 (or (is-EmptyExpr!16378 r!7292) (is-EmptyLang!16378 r!7292) (is-ElementMatch!16378 r!7292) (is-Union!16378 r!7292) (not (is-Concat!25223 r!7292))))))

(declare-fun b!6500807 () Bool)

(declare-fun res!2669696 () Bool)

(assert (=> b!6500807 (=> res!2669696 e!3939181)))

(declare-fun isEmpty!37511 (List!65433) Bool)

(assert (=> b!6500807 (= res!2669696 (isEmpty!37511 (t!379067 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun b!6500808 () Bool)

(declare-fun e!3939196 () Bool)

(assert (=> b!6500808 (= e!3939196 (nullable!6371 (regOne!33268 (regOne!33268 r!7292))))))

(declare-fun b!6500809 () Bool)

(declare-fun e!3939193 () Bool)

(assert (=> b!6500809 (= e!3939193 (matchZipper!2390 lt!2391605 (t!379069 s!2326)))))

(declare-fun b!6500810 () Bool)

(declare-fun e!3939187 () Bool)

(declare-fun tp!1798423 () Bool)

(assert (=> b!6500810 (= e!3939187 tp!1798423)))

(declare-fun b!6500811 () Bool)

(assert (=> b!6500811 (= e!3939183 e!3939195)))

(declare-fun res!2669701 () Bool)

(assert (=> b!6500811 (=> res!2669701 e!3939195)))

(assert (=> b!6500811 (= res!2669701 lt!2391589)))

(assert (=> b!6500811 (= (matchR!8561 lt!2391578 s!2326) (matchRSpec!3479 lt!2391578 s!2326))))

(declare-fun lt!2391608 () Unit!158847)

(assert (=> b!6500811 (= lt!2391608 (mainMatchTheorem!3479 lt!2391578 s!2326))))

(declare-fun b!6500812 () Bool)

(declare-fun e!3939182 () Bool)

(assert (=> b!6500812 (= e!3939185 e!3939182)))

(declare-fun res!2669692 () Bool)

(assert (=> b!6500812 (=> res!2669692 e!3939182)))

(declare-fun lt!2391607 () (Set Context!11524))

(assert (=> b!6500812 (= res!2669692 (not (= lt!2391607 lt!2391609)))))

(declare-fun lt!2391596 () (Set Context!11524))

(assert (=> b!6500812 (= (flatMap!1883 lt!2391596 lambda!360263) (derivationStepZipperUp!1552 lt!2391601 (h!71759 s!2326)))))

(declare-fun lt!2391580 () Unit!158847)

(assert (=> b!6500812 (= lt!2391580 (lemmaFlatMapOnSingletonSet!1409 lt!2391596 lt!2391601 lambda!360263))))

(declare-fun lt!2391579 () (Set Context!11524))

(assert (=> b!6500812 (= lt!2391579 (derivationStepZipperUp!1552 lt!2391601 (h!71759 s!2326)))))

(declare-fun derivationStepZipper!2344 ((Set Context!11524) C!33026) (Set Context!11524))

(assert (=> b!6500812 (= lt!2391607 (derivationStepZipper!2344 lt!2391596 (h!71759 s!2326)))))

(assert (=> b!6500812 (= lt!2391596 (set.insert lt!2391601 (as set.empty (Set Context!11524))))))

(assert (=> b!6500812 (= lt!2391601 (Context!11525 (Cons!65309 (reg!16707 (regOne!33268 r!7292)) lt!2391606)))))

(declare-fun b!6500813 () Bool)

(declare-fun tp!1798425 () Bool)

(declare-fun tp!1798422 () Bool)

(assert (=> b!6500813 (= e!3939180 (and tp!1798425 tp!1798422))))

(declare-fun b!6500814 () Bool)

(declare-fun res!2669689 () Bool)

(assert (=> b!6500814 (=> res!2669689 e!3939178)))

(declare-fun lt!2391600 () Bool)

(declare-fun lt!2391610 () Bool)

(assert (=> b!6500814 (= res!2669689 (or (not lt!2391600) (not lt!2391610)))))

(declare-fun b!6500815 () Bool)

(declare-fun tp!1798427 () Bool)

(assert (=> b!6500815 (= e!3939179 tp!1798427)))

(declare-fun b!6500816 () Bool)

(declare-fun tp!1798429 () Bool)

(declare-fun tp!1798424 () Bool)

(assert (=> b!6500816 (= e!3939180 (and tp!1798429 tp!1798424))))

(declare-fun b!6500817 () Bool)

(declare-fun res!2669697 () Bool)

(assert (=> b!6500817 (=> res!2669697 e!3939192)))

(declare-fun lt!2391585 () Regex!16378)

(assert (=> b!6500817 (= res!2669697 (not (= lt!2391585 r!7292)))))

(declare-fun b!6500818 () Bool)

(declare-fun res!2669685 () Bool)

(assert (=> b!6500818 (=> res!2669685 e!3939197)))

(assert (=> b!6500818 (= res!2669685 e!3939196)))

(declare-fun res!2669698 () Bool)

(assert (=> b!6500818 (=> (not res!2669698) (not e!3939196))))

(assert (=> b!6500818 (= res!2669698 (is-Concat!25223 (regOne!33268 r!7292)))))

(declare-fun b!6500819 () Bool)

(declare-fun tp_is_empty!42009 () Bool)

(assert (=> b!6500819 (= e!3939180 tp_is_empty!42009)))

(declare-fun b!6500820 () Bool)

(declare-fun Unit!158849 () Unit!158847)

(assert (=> b!6500820 (= e!3939188 Unit!158849)))

(declare-fun b!6500821 () Bool)

(assert (=> b!6500821 (= e!3939182 e!3939192)))

(declare-fun res!2669700 () Bool)

(assert (=> b!6500821 (=> res!2669700 e!3939192)))

(assert (=> b!6500821 (= res!2669700 (not (= lt!2391610 (matchZipper!2390 lt!2391607 (t!379069 s!2326)))))))

(assert (=> b!6500821 (= lt!2391610 (matchZipper!2390 lt!2391596 s!2326))))

(assert (=> b!6500822 (= e!3939176 e!3939181)))

(declare-fun res!2669675 () Bool)

(assert (=> b!6500822 (=> res!2669675 e!3939181)))

(declare-fun lt!2391603 () Bool)

(assert (=> b!6500822 (= res!2669675 (or (not (= lt!2391589 lt!2391603)) (is-Nil!65311 s!2326)))))

(declare-fun Exists!3448 (Int) Bool)

(assert (=> b!6500822 (= (Exists!3448 lambda!360261) (Exists!3448 lambda!360262))))

(declare-fun lt!2391590 () Unit!158847)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1985 (Regex!16378 Regex!16378 List!65435) Unit!158847)

(assert (=> b!6500822 (= lt!2391590 (lemmaExistCutMatchRandMatchRSpecEquivalent!1985 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326))))

(assert (=> b!6500822 (= lt!2391603 (Exists!3448 lambda!360261))))

(declare-datatypes ((tuple2!66714 0))(
  ( (tuple2!66715 (_1!36660 List!65435) (_2!36660 List!65435)) )
))
(declare-datatypes ((Option!16269 0))(
  ( (None!16268) (Some!16268 (v!52447 tuple2!66714)) )
))
(declare-fun isDefined!12972 (Option!16269) Bool)

(declare-fun findConcatSeparation!2683 (Regex!16378 Regex!16378 List!65435 List!65435 List!65435) Option!16269)

(assert (=> b!6500822 (= lt!2391603 (isDefined!12972 (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) Nil!65311 s!2326 s!2326)))))

(declare-fun lt!2391593 () Unit!158847)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2447 (Regex!16378 Regex!16378 List!65435) Unit!158847)

(assert (=> b!6500822 (= lt!2391593 (lemmaFindConcatSeparationEquivalentToExists!2447 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326))))

(declare-fun b!6500823 () Bool)

(declare-fun res!2669695 () Bool)

(assert (=> b!6500823 (=> res!2669695 e!3939176)))

(declare-fun isEmpty!37512 (List!65434) Bool)

(assert (=> b!6500823 (= res!2669695 (not (isEmpty!37512 (t!379068 zl!343))))))

(declare-fun b!6500824 () Bool)

(declare-fun tp!1798420 () Bool)

(assert (=> b!6500824 (= e!3939190 (and tp_is_empty!42009 tp!1798420))))

(declare-fun b!6500825 () Bool)

(assert (=> b!6500825 (= e!3939175 e!3939189)))

(declare-fun res!2669676 () Bool)

(assert (=> b!6500825 (=> (not res!2669676) (not e!3939189))))

(assert (=> b!6500825 (= res!2669676 (= r!7292 lt!2391585))))

(assert (=> b!6500825 (= lt!2391585 (unfocusZipper!2120 zl!343))))

(declare-fun b!6500826 () Bool)

(assert (=> b!6500826 (= e!3939195 e!3939178)))

(declare-fun res!2669699 () Bool)

(assert (=> b!6500826 (=> res!2669699 e!3939178)))

(assert (=> b!6500826 (= res!2669699 e!3939186)))

(declare-fun res!2669690 () Bool)

(assert (=> b!6500826 (=> (not res!2669690) (not e!3939186))))

(assert (=> b!6500826 (= res!2669690 (not lt!2391600))))

(assert (=> b!6500826 (= lt!2391600 (matchZipper!2390 lt!2391583 (t!379069 s!2326)))))

(declare-fun b!6500827 () Bool)

(declare-fun res!2669678 () Bool)

(assert (=> b!6500827 (=> res!2669678 e!3939183)))

(assert (=> b!6500827 (= res!2669678 (not (= (unfocusZipper!2120 (Cons!65310 lt!2391577 Nil!65310)) lt!2391575)))))

(declare-fun b!6500828 () Bool)

(declare-fun res!2669686 () Bool)

(assert (=> b!6500828 (=> res!2669686 e!3939176)))

(assert (=> b!6500828 (= res!2669686 (not (is-Cons!65309 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun setElem!44312 () Context!11524)

(declare-fun tp!1798428 () Bool)

(declare-fun setNonEmpty!44312 () Bool)

(assert (=> setNonEmpty!44312 (= setRes!44312 (and tp!1798428 (inv!84193 setElem!44312) e!3939187))))

(declare-fun setRest!44312 () (Set Context!11524))

(assert (=> setNonEmpty!44312 (= z!1189 (set.union (set.insert setElem!44312 (as set.empty (Set Context!11524))) setRest!44312))))

(declare-fun b!6500829 () Bool)

(declare-fun Unit!158850 () Unit!158847)

(assert (=> b!6500829 (= e!3939188 Unit!158850)))

(declare-fun lt!2391592 () Unit!158847)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1209 ((Set Context!11524) (Set Context!11524) List!65435) Unit!158847)

(assert (=> b!6500829 (= lt!2391592 (lemmaZipperConcatMatchesSameAsBothZippers!1209 lt!2391583 lt!2391605 (t!379069 s!2326)))))

(declare-fun res!2669677 () Bool)

(assert (=> b!6500829 (= res!2669677 (matchZipper!2390 lt!2391583 (t!379069 s!2326)))))

(assert (=> b!6500829 (=> res!2669677 e!3939193)))

(assert (=> b!6500829 (= (matchZipper!2390 (set.union lt!2391583 lt!2391605) (t!379069 s!2326)) e!3939193)))

(declare-fun b!6500830 () Bool)

(declare-fun res!2669682 () Bool)

(assert (=> b!6500830 (=> res!2669682 e!3939176)))

(declare-fun generalisedConcat!1975 (List!65433) Regex!16378)

(assert (=> b!6500830 (= res!2669682 (not (= r!7292 (generalisedConcat!1975 (exprs!6262 (h!71758 zl!343))))))))

(assert (= (and start!638708 res!2669704) b!6500799))

(assert (= (and b!6500799 res!2669687) b!6500825))

(assert (= (and b!6500825 res!2669676) b!6500803))

(assert (= (and b!6500803 (not res!2669680)) b!6500823))

(assert (= (and b!6500823 (not res!2669695)) b!6500830))

(assert (= (and b!6500830 (not res!2669682)) b!6500828))

(assert (= (and b!6500828 (not res!2669686)) b!6500804))

(assert (= (and b!6500804 (not res!2669683)) b!6500806))

(assert (= (and b!6500806 (not res!2669679)) b!6500822))

(assert (= (and b!6500822 (not res!2669675)) b!6500807))

(assert (= (and b!6500807 (not res!2669696)) b!6500793))

(assert (= (and b!6500793 c!1191917) b!6500829))

(assert (= (and b!6500793 (not c!1191917)) b!6500820))

(assert (= (and b!6500829 (not res!2669677)) b!6500809))

(assert (= (and b!6500793 (not res!2669703)) b!6500818))

(assert (= (and b!6500818 res!2669698) b!6500808))

(assert (= (and b!6500818 (not res!2669685)) b!6500802))

(assert (= (and b!6500802 (not res!2669694)) b!6500798))

(assert (= (and b!6500798 (not res!2669691)) b!6500812))

(assert (= (and b!6500812 (not res!2669692)) b!6500821))

(assert (= (and b!6500821 (not res!2669700)) b!6500817))

(assert (= (and b!6500817 (not res!2669697)) b!6500794))

(assert (= (and b!6500794 (not res!2669702)) b!6500790))

(assert (= (and b!6500790 (not res!2669681)) b!6500795))

(assert (= (and b!6500795 (not res!2669688)) b!6500827))

(assert (= (and b!6500827 (not res!2669678)) b!6500811))

(assert (= (and b!6500811 (not res!2669701)) b!6500792))

(assert (= (and b!6500792 (not res!2669693)) b!6500791))

(assert (= (and b!6500791 (not res!2669684)) b!6500826))

(assert (= (and b!6500826 res!2669690) b!6500801))

(assert (= (and b!6500826 (not res!2669699)) b!6500814))

(assert (= (and b!6500814 (not res!2669689)) b!6500796))

(assert (= start!638708 b!6500800))

(assert (= (and start!638708 (is-ElementMatch!16378 r!7292)) b!6500819))

(assert (= (and start!638708 (is-Concat!25223 r!7292)) b!6500813))

(assert (= (and start!638708 (is-Star!16378 r!7292)) b!6500805))

(assert (= (and start!638708 (is-Union!16378 r!7292)) b!6500816))

(assert (= (and start!638708 (is-Cons!65311 s!2326)) b!6500824))

(assert (= (and start!638708 condSetEmpty!44312) setIsEmpty!44312))

(assert (= (and start!638708 (not condSetEmpty!44312)) setNonEmpty!44312))

(assert (= setNonEmpty!44312 b!6500810))

(assert (= b!6500797 b!6500815))

(assert (= (and start!638708 (is-Cons!65310 zl!343)) b!6500797))

(declare-fun m!7288560 () Bool)

(assert (=> b!6500812 m!7288560))

(declare-fun m!7288562 () Bool)

(assert (=> b!6500812 m!7288562))

(declare-fun m!7288564 () Bool)

(assert (=> b!6500812 m!7288564))

(declare-fun m!7288566 () Bool)

(assert (=> b!6500812 m!7288566))

(declare-fun m!7288568 () Bool)

(assert (=> b!6500812 m!7288568))

(declare-fun m!7288570 () Bool)

(assert (=> b!6500809 m!7288570))

(declare-fun m!7288572 () Bool)

(assert (=> setNonEmpty!44312 m!7288572))

(assert (=> b!6500801 m!7288570))

(declare-fun m!7288574 () Bool)

(assert (=> b!6500793 m!7288574))

(declare-fun m!7288576 () Bool)

(assert (=> b!6500793 m!7288576))

(declare-fun m!7288578 () Bool)

(assert (=> b!6500793 m!7288578))

(declare-fun m!7288580 () Bool)

(assert (=> b!6500793 m!7288580))

(declare-fun m!7288582 () Bool)

(assert (=> b!6500793 m!7288582))

(declare-fun m!7288584 () Bool)

(assert (=> b!6500793 m!7288584))

(declare-fun m!7288586 () Bool)

(assert (=> b!6500793 m!7288586))

(declare-fun m!7288588 () Bool)

(assert (=> b!6500821 m!7288588))

(declare-fun m!7288590 () Bool)

(assert (=> b!6500821 m!7288590))

(declare-fun m!7288592 () Bool)

(assert (=> b!6500807 m!7288592))

(declare-fun m!7288594 () Bool)

(assert (=> b!6500790 m!7288594))

(declare-fun m!7288596 () Bool)

(assert (=> b!6500804 m!7288596))

(assert (=> b!6500804 m!7288596))

(declare-fun m!7288598 () Bool)

(assert (=> b!6500804 m!7288598))

(declare-fun m!7288600 () Bool)

(assert (=> b!6500825 m!7288600))

(declare-fun m!7288602 () Bool)

(assert (=> b!6500811 m!7288602))

(declare-fun m!7288604 () Bool)

(assert (=> b!6500811 m!7288604))

(declare-fun m!7288606 () Bool)

(assert (=> b!6500811 m!7288606))

(declare-fun m!7288608 () Bool)

(assert (=> b!6500803 m!7288608))

(declare-fun m!7288610 () Bool)

(assert (=> b!6500803 m!7288610))

(declare-fun m!7288612 () Bool)

(assert (=> b!6500803 m!7288612))

(declare-fun m!7288614 () Bool)

(assert (=> b!6500823 m!7288614))

(declare-fun m!7288616 () Bool)

(assert (=> b!6500798 m!7288616))

(declare-fun m!7288618 () Bool)

(assert (=> b!6500829 m!7288618))

(declare-fun m!7288620 () Bool)

(assert (=> b!6500829 m!7288620))

(declare-fun m!7288622 () Bool)

(assert (=> b!6500829 m!7288622))

(declare-fun m!7288624 () Bool)

(assert (=> b!6500830 m!7288624))

(declare-fun m!7288626 () Bool)

(assert (=> b!6500808 m!7288626))

(declare-fun m!7288628 () Bool)

(assert (=> b!6500827 m!7288628))

(declare-fun m!7288630 () Bool)

(assert (=> start!638708 m!7288630))

(declare-fun m!7288632 () Bool)

(assert (=> start!638708 m!7288632))

(declare-fun m!7288634 () Bool)

(assert (=> b!6500797 m!7288634))

(declare-fun m!7288636 () Bool)

(assert (=> b!6500799 m!7288636))

(declare-fun m!7288638 () Bool)

(assert (=> b!6500792 m!7288638))

(declare-fun m!7288640 () Bool)

(assert (=> b!6500795 m!7288640))

(declare-fun m!7288642 () Bool)

(assert (=> b!6500795 m!7288642))

(declare-fun m!7288644 () Bool)

(assert (=> b!6500795 m!7288644))

(declare-fun m!7288646 () Bool)

(assert (=> b!6500795 m!7288646))

(declare-fun m!7288648 () Bool)

(assert (=> b!6500795 m!7288648))

(declare-fun m!7288650 () Bool)

(assert (=> b!6500795 m!7288650))

(declare-fun m!7288652 () Bool)

(assert (=> b!6500795 m!7288652))

(declare-fun m!7288654 () Bool)

(assert (=> b!6500795 m!7288654))

(declare-fun m!7288656 () Bool)

(assert (=> b!6500795 m!7288656))

(assert (=> b!6500826 m!7288620))

(declare-fun m!7288658 () Bool)

(assert (=> b!6500796 m!7288658))

(declare-fun m!7288660 () Bool)

(assert (=> b!6500796 m!7288660))

(declare-fun m!7288662 () Bool)

(assert (=> b!6500796 m!7288662))

(declare-fun m!7288664 () Bool)

(assert (=> b!6500822 m!7288664))

(declare-fun m!7288666 () Bool)

(assert (=> b!6500822 m!7288666))

(declare-fun m!7288668 () Bool)

(assert (=> b!6500822 m!7288668))

(declare-fun m!7288670 () Bool)

(assert (=> b!6500822 m!7288670))

(assert (=> b!6500822 m!7288670))

(declare-fun m!7288672 () Bool)

(assert (=> b!6500822 m!7288672))

(assert (=> b!6500822 m!7288666))

(declare-fun m!7288674 () Bool)

(assert (=> b!6500822 m!7288674))

(push 1)

(assert (not b!6500816))

(assert (not b!6500829))

(assert (not b!6500821))

(assert (not b!6500812))

(assert (not b!6500795))

(assert (not b!6500805))

(assert (not b!6500800))

(assert (not b!6500827))

(assert (not b!6500808))

(assert (not b!6500826))

(assert (not b!6500804))

(assert (not b!6500807))

(assert (not b!6500797))

(assert (not setNonEmpty!44312))

(assert (not b!6500810))

(assert (not b!6500801))

(assert (not b!6500824))

(assert (not b!6500830))

(assert (not b!6500793))

(assert (not b!6500811))

(assert (not b!6500792))

(assert (not b!6500813))

(assert tp_is_empty!42009)

(assert (not b!6500799))

(assert (not b!6500803))

(assert (not b!6500790))

(assert (not b!6500822))

(assert (not b!6500825))

(assert (not start!638708))

(assert (not b!6500809))

(assert (not b!6500823))

(assert (not b!6500815))

(assert (not b!6500798))

(assert (not b!6500796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!563303 () Bool)

(declare-fun call!563308 () (Set Context!11524))

(declare-fun call!563312 () (Set Context!11524))

(assert (=> bm!563303 (= call!563308 call!563312)))

(declare-fun d!2039835 () Bool)

(declare-fun c!1191946 () Bool)

(assert (=> d!2039835 (= c!1191946 (and (is-ElementMatch!16378 (reg!16707 (regOne!33268 r!7292))) (= (c!1191918 (reg!16707 (regOne!33268 r!7292))) (h!71759 s!2326))))))

(declare-fun e!3939289 () (Set Context!11524))

(assert (=> d!2039835 (= (derivationStepZipperDown!1626 (reg!16707 (regOne!33268 r!7292)) lt!2391577 (h!71759 s!2326)) e!3939289)))

(declare-fun b!6501000 () Bool)

(declare-fun e!3939288 () Bool)

(assert (=> b!6501000 (= e!3939288 (nullable!6371 (regOne!33268 (reg!16707 (regOne!33268 r!7292)))))))

(declare-fun b!6501001 () Bool)

(declare-fun e!3939290 () (Set Context!11524))

(declare-fun call!563310 () (Set Context!11524))

(assert (=> b!6501001 (= e!3939290 (set.union call!563310 call!563312))))

(declare-fun bm!563304 () Bool)

(declare-fun call!563309 () List!65433)

(declare-fun call!563313 () List!65433)

(assert (=> bm!563304 (= call!563309 call!563313)))

(declare-fun bm!563305 () Bool)

(declare-fun c!1191943 () Bool)

(assert (=> bm!563305 (= call!563310 (derivationStepZipperDown!1626 (ite c!1191943 (regOne!33269 (reg!16707 (regOne!33268 r!7292))) (regOne!33268 (reg!16707 (regOne!33268 r!7292)))) (ite c!1191943 lt!2391577 (Context!11525 call!563313)) (h!71759 s!2326)))))

(declare-fun b!6501002 () Bool)

(declare-fun e!3939285 () (Set Context!11524))

(assert (=> b!6501002 (= e!3939285 (as set.empty (Set Context!11524)))))

(declare-fun b!6501003 () Bool)

(declare-fun c!1191944 () Bool)

(assert (=> b!6501003 (= c!1191944 (is-Star!16378 (reg!16707 (regOne!33268 r!7292))))))

(declare-fun e!3939287 () (Set Context!11524))

(assert (=> b!6501003 (= e!3939287 e!3939285)))

(declare-fun b!6501004 () Bool)

(declare-fun call!563311 () (Set Context!11524))

(assert (=> b!6501004 (= e!3939285 call!563311)))

(declare-fun c!1191942 () Bool)

(declare-fun bm!563306 () Bool)

(declare-fun c!1191945 () Bool)

(declare-fun $colon$colon!2229 (List!65433 Regex!16378) List!65433)

(assert (=> bm!563306 (= call!563313 ($colon$colon!2229 (exprs!6262 lt!2391577) (ite (or c!1191942 c!1191945) (regTwo!33268 (reg!16707 (regOne!33268 r!7292))) (reg!16707 (regOne!33268 r!7292)))))))

(declare-fun b!6501005 () Bool)

(assert (=> b!6501005 (= c!1191942 e!3939288)))

(declare-fun res!2669809 () Bool)

(assert (=> b!6501005 (=> (not res!2669809) (not e!3939288))))

(assert (=> b!6501005 (= res!2669809 (is-Concat!25223 (reg!16707 (regOne!33268 r!7292))))))

(declare-fun e!3939286 () (Set Context!11524))

(assert (=> b!6501005 (= e!3939290 e!3939286)))

(declare-fun bm!563307 () Bool)

(assert (=> bm!563307 (= call!563312 (derivationStepZipperDown!1626 (ite c!1191943 (regTwo!33269 (reg!16707 (regOne!33268 r!7292))) (ite c!1191942 (regTwo!33268 (reg!16707 (regOne!33268 r!7292))) (ite c!1191945 (regOne!33268 (reg!16707 (regOne!33268 r!7292))) (reg!16707 (reg!16707 (regOne!33268 r!7292)))))) (ite (or c!1191943 c!1191942) lt!2391577 (Context!11525 call!563309)) (h!71759 s!2326)))))

(declare-fun b!6501006 () Bool)

(assert (=> b!6501006 (= e!3939289 e!3939290)))

(assert (=> b!6501006 (= c!1191943 (is-Union!16378 (reg!16707 (regOne!33268 r!7292))))))

(declare-fun bm!563308 () Bool)

(assert (=> bm!563308 (= call!563311 call!563308)))

(declare-fun b!6501007 () Bool)

(assert (=> b!6501007 (= e!3939286 (set.union call!563310 call!563308))))

(declare-fun b!6501008 () Bool)

(assert (=> b!6501008 (= e!3939287 call!563311)))

(declare-fun b!6501009 () Bool)

(assert (=> b!6501009 (= e!3939286 e!3939287)))

(assert (=> b!6501009 (= c!1191945 (is-Concat!25223 (reg!16707 (regOne!33268 r!7292))))))

(declare-fun b!6501010 () Bool)

(assert (=> b!6501010 (= e!3939289 (set.insert lt!2391577 (as set.empty (Set Context!11524))))))

(assert (= (and d!2039835 c!1191946) b!6501010))

(assert (= (and d!2039835 (not c!1191946)) b!6501006))

(assert (= (and b!6501006 c!1191943) b!6501001))

(assert (= (and b!6501006 (not c!1191943)) b!6501005))

(assert (= (and b!6501005 res!2669809) b!6501000))

(assert (= (and b!6501005 c!1191942) b!6501007))

(assert (= (and b!6501005 (not c!1191942)) b!6501009))

(assert (= (and b!6501009 c!1191945) b!6501008))

(assert (= (and b!6501009 (not c!1191945)) b!6501003))

(assert (= (and b!6501003 c!1191944) b!6501004))

(assert (= (and b!6501003 (not c!1191944)) b!6501002))

(assert (= (or b!6501008 b!6501004) bm!563304))

(assert (= (or b!6501008 b!6501004) bm!563308))

(assert (= (or b!6501007 bm!563304) bm!563306))

(assert (= (or b!6501007 bm!563308) bm!563303))

(assert (= (or b!6501001 bm!563303) bm!563307))

(assert (= (or b!6501001 b!6501007) bm!563305))

(assert (=> b!6501010 m!7288652))

(declare-fun m!7288792 () Bool)

(assert (=> bm!563307 m!7288792))

(declare-fun m!7288794 () Bool)

(assert (=> b!6501000 m!7288794))

(declare-fun m!7288796 () Bool)

(assert (=> bm!563306 m!7288796))

(declare-fun m!7288798 () Bool)

(assert (=> bm!563305 m!7288798))

(assert (=> b!6500798 d!2039835))

(declare-fun bs!1651326 () Bool)

(declare-fun d!2039837 () Bool)

(assert (= bs!1651326 (and d!2039837 b!6500796)))

(declare-fun lambda!360287 () Int)

(assert (=> bs!1651326 (= lambda!360287 lambda!360264)))

(declare-fun forall!15559 (List!65433 Int) Bool)

(assert (=> d!2039837 (= (inv!84193 (h!71758 zl!343)) (forall!15559 (exprs!6262 (h!71758 zl!343)) lambda!360287))))

(declare-fun bs!1651327 () Bool)

(assert (= bs!1651327 d!2039837))

(declare-fun m!7288800 () Bool)

(assert (=> bs!1651327 m!7288800))

(assert (=> b!6500797 d!2039837))

(declare-fun d!2039839 () Bool)

(declare-fun c!1191949 () Bool)

(declare-fun isEmpty!37515 (List!65435) Bool)

(assert (=> d!2039839 (= c!1191949 (isEmpty!37515 (t!379069 s!2326)))))

(declare-fun e!3939293 () Bool)

(assert (=> d!2039839 (= (matchZipper!2390 lt!2391605 (t!379069 s!2326)) e!3939293)))

(declare-fun b!6501015 () Bool)

(declare-fun nullableZipper!2133 ((Set Context!11524)) Bool)

(assert (=> b!6501015 (= e!3939293 (nullableZipper!2133 lt!2391605))))

(declare-fun b!6501016 () Bool)

(declare-fun head!13227 (List!65435) C!33026)

(declare-fun tail!12312 (List!65435) List!65435)

(assert (=> b!6501016 (= e!3939293 (matchZipper!2390 (derivationStepZipper!2344 lt!2391605 (head!13227 (t!379069 s!2326))) (tail!12312 (t!379069 s!2326))))))

(assert (= (and d!2039839 c!1191949) b!6501015))

(assert (= (and d!2039839 (not c!1191949)) b!6501016))

(declare-fun m!7288802 () Bool)

(assert (=> d!2039839 m!7288802))

(declare-fun m!7288804 () Bool)

(assert (=> b!6501015 m!7288804))

(declare-fun m!7288806 () Bool)

(assert (=> b!6501016 m!7288806))

(assert (=> b!6501016 m!7288806))

(declare-fun m!7288808 () Bool)

(assert (=> b!6501016 m!7288808))

(declare-fun m!7288810 () Bool)

(assert (=> b!6501016 m!7288810))

(assert (=> b!6501016 m!7288808))

(assert (=> b!6501016 m!7288810))

(declare-fun m!7288812 () Bool)

(assert (=> b!6501016 m!7288812))

(assert (=> b!6500801 d!2039839))

(declare-fun d!2039841 () Bool)

(declare-fun c!1191950 () Bool)

(assert (=> d!2039841 (= c!1191950 (isEmpty!37515 (t!379069 s!2326)))))

(declare-fun e!3939294 () Bool)

(assert (=> d!2039841 (= (matchZipper!2390 lt!2391607 (t!379069 s!2326)) e!3939294)))

(declare-fun b!6501017 () Bool)

(assert (=> b!6501017 (= e!3939294 (nullableZipper!2133 lt!2391607))))

(declare-fun b!6501018 () Bool)

(assert (=> b!6501018 (= e!3939294 (matchZipper!2390 (derivationStepZipper!2344 lt!2391607 (head!13227 (t!379069 s!2326))) (tail!12312 (t!379069 s!2326))))))

(assert (= (and d!2039841 c!1191950) b!6501017))

(assert (= (and d!2039841 (not c!1191950)) b!6501018))

(assert (=> d!2039841 m!7288802))

(declare-fun m!7288814 () Bool)

(assert (=> b!6501017 m!7288814))

(assert (=> b!6501018 m!7288806))

(assert (=> b!6501018 m!7288806))

(declare-fun m!7288816 () Bool)

(assert (=> b!6501018 m!7288816))

(assert (=> b!6501018 m!7288810))

(assert (=> b!6501018 m!7288816))

(assert (=> b!6501018 m!7288810))

(declare-fun m!7288818 () Bool)

(assert (=> b!6501018 m!7288818))

(assert (=> b!6500821 d!2039841))

(declare-fun d!2039843 () Bool)

(declare-fun c!1191951 () Bool)

(assert (=> d!2039843 (= c!1191951 (isEmpty!37515 s!2326))))

(declare-fun e!3939295 () Bool)

(assert (=> d!2039843 (= (matchZipper!2390 lt!2391596 s!2326) e!3939295)))

(declare-fun b!6501019 () Bool)

(assert (=> b!6501019 (= e!3939295 (nullableZipper!2133 lt!2391596))))

(declare-fun b!6501020 () Bool)

(assert (=> b!6501020 (= e!3939295 (matchZipper!2390 (derivationStepZipper!2344 lt!2391596 (head!13227 s!2326)) (tail!12312 s!2326)))))

(assert (= (and d!2039843 c!1191951) b!6501019))

(assert (= (and d!2039843 (not c!1191951)) b!6501020))

(declare-fun m!7288820 () Bool)

(assert (=> d!2039843 m!7288820))

(declare-fun m!7288822 () Bool)

(assert (=> b!6501019 m!7288822))

(declare-fun m!7288824 () Bool)

(assert (=> b!6501020 m!7288824))

(assert (=> b!6501020 m!7288824))

(declare-fun m!7288826 () Bool)

(assert (=> b!6501020 m!7288826))

(declare-fun m!7288828 () Bool)

(assert (=> b!6501020 m!7288828))

(assert (=> b!6501020 m!7288826))

(assert (=> b!6501020 m!7288828))

(declare-fun m!7288830 () Bool)

(assert (=> b!6501020 m!7288830))

(assert (=> b!6500821 d!2039843))

(declare-fun d!2039845 () Bool)

(declare-fun e!3939298 () Bool)

(assert (=> d!2039845 e!3939298))

(declare-fun res!2669812 () Bool)

(assert (=> d!2039845 (=> (not res!2669812) (not e!3939298))))

(declare-fun lt!2391721 () List!65434)

(declare-fun noDuplicate!2195 (List!65434) Bool)

(assert (=> d!2039845 (= res!2669812 (noDuplicate!2195 lt!2391721))))

(declare-fun choose!48254 ((Set Context!11524)) List!65434)

(assert (=> d!2039845 (= lt!2391721 (choose!48254 z!1189))))

(assert (=> d!2039845 (= (toList!10162 z!1189) lt!2391721)))

(declare-fun b!6501023 () Bool)

(declare-fun content!12456 (List!65434) (Set Context!11524))

(assert (=> b!6501023 (= e!3939298 (= (content!12456 lt!2391721) z!1189))))

(assert (= (and d!2039845 res!2669812) b!6501023))

(declare-fun m!7288832 () Bool)

(assert (=> d!2039845 m!7288832))

(declare-fun m!7288834 () Bool)

(assert (=> d!2039845 m!7288834))

(declare-fun m!7288836 () Bool)

(assert (=> b!6501023 m!7288836))

(assert (=> b!6500799 d!2039845))

(declare-fun bm!563311 () Bool)

(declare-fun call!563316 () (Set Context!11524))

(assert (=> bm!563311 (= call!563316 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 lt!2391598)) (Context!11525 (t!379067 (exprs!6262 lt!2391598))) (h!71759 s!2326)))))

(declare-fun d!2039847 () Bool)

(declare-fun c!1191956 () Bool)

(declare-fun e!3939306 () Bool)

(assert (=> d!2039847 (= c!1191956 e!3939306)))

(declare-fun res!2669815 () Bool)

(assert (=> d!2039847 (=> (not res!2669815) (not e!3939306))))

(assert (=> d!2039847 (= res!2669815 (is-Cons!65309 (exprs!6262 lt!2391598)))))

(declare-fun e!3939305 () (Set Context!11524))

(assert (=> d!2039847 (= (derivationStepZipperUp!1552 lt!2391598 (h!71759 s!2326)) e!3939305)))

(declare-fun b!6501034 () Bool)

(declare-fun e!3939307 () (Set Context!11524))

(assert (=> b!6501034 (= e!3939307 (as set.empty (Set Context!11524)))))

(declare-fun b!6501035 () Bool)

(assert (=> b!6501035 (= e!3939305 (set.union call!563316 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 lt!2391598))) (h!71759 s!2326))))))

(declare-fun b!6501036 () Bool)

(assert (=> b!6501036 (= e!3939305 e!3939307)))

(declare-fun c!1191957 () Bool)

(assert (=> b!6501036 (= c!1191957 (is-Cons!65309 (exprs!6262 lt!2391598)))))

(declare-fun b!6501037 () Bool)

(assert (=> b!6501037 (= e!3939307 call!563316)))

(declare-fun b!6501038 () Bool)

(assert (=> b!6501038 (= e!3939306 (nullable!6371 (h!71757 (exprs!6262 lt!2391598))))))

(assert (= (and d!2039847 res!2669815) b!6501038))

(assert (= (and d!2039847 c!1191956) b!6501035))

(assert (= (and d!2039847 (not c!1191956)) b!6501036))

(assert (= (and b!6501036 c!1191957) b!6501037))

(assert (= (and b!6501036 (not c!1191957)) b!6501034))

(assert (= (or b!6501035 b!6501037) bm!563311))

(declare-fun m!7288838 () Bool)

(assert (=> bm!563311 m!7288838))

(declare-fun m!7288840 () Bool)

(assert (=> b!6501035 m!7288840))

(declare-fun m!7288842 () Bool)

(assert (=> b!6501038 m!7288842))

(assert (=> b!6500793 d!2039847))

(declare-fun bm!563312 () Bool)

(declare-fun call!563317 () (Set Context!11524))

(declare-fun call!563321 () (Set Context!11524))

(assert (=> bm!563312 (= call!563317 call!563321)))

(declare-fun d!2039849 () Bool)

(declare-fun c!1191962 () Bool)

(assert (=> d!2039849 (= c!1191962 (and (is-ElementMatch!16378 (h!71757 (exprs!6262 (h!71758 zl!343)))) (= (c!1191918 (h!71757 (exprs!6262 (h!71758 zl!343)))) (h!71759 s!2326))))))

(declare-fun e!3939312 () (Set Context!11524))

(assert (=> d!2039849 (= (derivationStepZipperDown!1626 (h!71757 (exprs!6262 (h!71758 zl!343))) lt!2391598 (h!71759 s!2326)) e!3939312)))

(declare-fun b!6501039 () Bool)

(declare-fun e!3939311 () Bool)

(assert (=> b!6501039 (= e!3939311 (nullable!6371 (regOne!33268 (h!71757 (exprs!6262 (h!71758 zl!343))))))))

(declare-fun b!6501040 () Bool)

(declare-fun e!3939313 () (Set Context!11524))

(declare-fun call!563319 () (Set Context!11524))

(assert (=> b!6501040 (= e!3939313 (set.union call!563319 call!563321))))

(declare-fun bm!563313 () Bool)

(declare-fun call!563318 () List!65433)

(declare-fun call!563322 () List!65433)

(assert (=> bm!563313 (= call!563318 call!563322)))

(declare-fun c!1191959 () Bool)

(declare-fun bm!563314 () Bool)

(assert (=> bm!563314 (= call!563319 (derivationStepZipperDown!1626 (ite c!1191959 (regOne!33269 (h!71757 (exprs!6262 (h!71758 zl!343)))) (regOne!33268 (h!71757 (exprs!6262 (h!71758 zl!343))))) (ite c!1191959 lt!2391598 (Context!11525 call!563322)) (h!71759 s!2326)))))

(declare-fun b!6501041 () Bool)

(declare-fun e!3939308 () (Set Context!11524))

(assert (=> b!6501041 (= e!3939308 (as set.empty (Set Context!11524)))))

(declare-fun b!6501042 () Bool)

(declare-fun c!1191960 () Bool)

(assert (=> b!6501042 (= c!1191960 (is-Star!16378 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun e!3939310 () (Set Context!11524))

(assert (=> b!6501042 (= e!3939310 e!3939308)))

(declare-fun b!6501043 () Bool)

(declare-fun call!563320 () (Set Context!11524))

(assert (=> b!6501043 (= e!3939308 call!563320)))

(declare-fun bm!563315 () Bool)

(declare-fun c!1191961 () Bool)

(declare-fun c!1191958 () Bool)

(assert (=> bm!563315 (= call!563322 ($colon$colon!2229 (exprs!6262 lt!2391598) (ite (or c!1191958 c!1191961) (regTwo!33268 (h!71757 (exprs!6262 (h!71758 zl!343)))) (h!71757 (exprs!6262 (h!71758 zl!343))))))))

(declare-fun b!6501044 () Bool)

(assert (=> b!6501044 (= c!1191958 e!3939311)))

(declare-fun res!2669816 () Bool)

(assert (=> b!6501044 (=> (not res!2669816) (not e!3939311))))

(assert (=> b!6501044 (= res!2669816 (is-Concat!25223 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun e!3939309 () (Set Context!11524))

(assert (=> b!6501044 (= e!3939313 e!3939309)))

(declare-fun bm!563316 () Bool)

(assert (=> bm!563316 (= call!563321 (derivationStepZipperDown!1626 (ite c!1191959 (regTwo!33269 (h!71757 (exprs!6262 (h!71758 zl!343)))) (ite c!1191958 (regTwo!33268 (h!71757 (exprs!6262 (h!71758 zl!343)))) (ite c!1191961 (regOne!33268 (h!71757 (exprs!6262 (h!71758 zl!343)))) (reg!16707 (h!71757 (exprs!6262 (h!71758 zl!343))))))) (ite (or c!1191959 c!1191958) lt!2391598 (Context!11525 call!563318)) (h!71759 s!2326)))))

(declare-fun b!6501045 () Bool)

(assert (=> b!6501045 (= e!3939312 e!3939313)))

(assert (=> b!6501045 (= c!1191959 (is-Union!16378 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun bm!563317 () Bool)

(assert (=> bm!563317 (= call!563320 call!563317)))

(declare-fun b!6501046 () Bool)

(assert (=> b!6501046 (= e!3939309 (set.union call!563319 call!563317))))

(declare-fun b!6501047 () Bool)

(assert (=> b!6501047 (= e!3939310 call!563320)))

(declare-fun b!6501048 () Bool)

(assert (=> b!6501048 (= e!3939309 e!3939310)))

(assert (=> b!6501048 (= c!1191961 (is-Concat!25223 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun b!6501049 () Bool)

(assert (=> b!6501049 (= e!3939312 (set.insert lt!2391598 (as set.empty (Set Context!11524))))))

(assert (= (and d!2039849 c!1191962) b!6501049))

(assert (= (and d!2039849 (not c!1191962)) b!6501045))

(assert (= (and b!6501045 c!1191959) b!6501040))

(assert (= (and b!6501045 (not c!1191959)) b!6501044))

(assert (= (and b!6501044 res!2669816) b!6501039))

(assert (= (and b!6501044 c!1191958) b!6501046))

(assert (= (and b!6501044 (not c!1191958)) b!6501048))

(assert (= (and b!6501048 c!1191961) b!6501047))

(assert (= (and b!6501048 (not c!1191961)) b!6501042))

(assert (= (and b!6501042 c!1191960) b!6501043))

(assert (= (and b!6501042 (not c!1191960)) b!6501041))

(assert (= (or b!6501047 b!6501043) bm!563313))

(assert (= (or b!6501047 b!6501043) bm!563317))

(assert (= (or b!6501046 bm!563313) bm!563315))

(assert (= (or b!6501046 bm!563317) bm!563312))

(assert (= (or b!6501040 bm!563312) bm!563316))

(assert (= (or b!6501040 b!6501046) bm!563314))

(declare-fun m!7288844 () Bool)

(assert (=> b!6501049 m!7288844))

(declare-fun m!7288846 () Bool)

(assert (=> bm!563316 m!7288846))

(declare-fun m!7288848 () Bool)

(assert (=> b!6501039 m!7288848))

(declare-fun m!7288850 () Bool)

(assert (=> bm!563315 m!7288850))

(declare-fun m!7288852 () Bool)

(assert (=> bm!563314 m!7288852))

(assert (=> b!6500793 d!2039849))

(declare-fun d!2039851 () Bool)

(declare-fun nullableFct!2307 (Regex!16378) Bool)

(assert (=> d!2039851 (= (nullable!6371 (h!71757 (exprs!6262 (h!71758 zl!343)))) (nullableFct!2307 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun bs!1651328 () Bool)

(assert (= bs!1651328 d!2039851))

(declare-fun m!7288854 () Bool)

(assert (=> bs!1651328 m!7288854))

(assert (=> b!6500793 d!2039851))

(declare-fun bm!563318 () Bool)

(declare-fun call!563323 () (Set Context!11524))

(assert (=> bm!563318 (= call!563323 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343))))))) (Context!11525 (t!379067 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343)))))))) (h!71759 s!2326)))))

(declare-fun d!2039853 () Bool)

(declare-fun c!1191963 () Bool)

(declare-fun e!3939315 () Bool)

(assert (=> d!2039853 (= c!1191963 e!3939315)))

(declare-fun res!2669817 () Bool)

(assert (=> d!2039853 (=> (not res!2669817) (not e!3939315))))

(assert (=> d!2039853 (= res!2669817 (is-Cons!65309 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343))))))))))

(declare-fun e!3939314 () (Set Context!11524))

(assert (=> d!2039853 (= (derivationStepZipperUp!1552 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343))))) (h!71759 s!2326)) e!3939314)))

(declare-fun b!6501050 () Bool)

(declare-fun e!3939316 () (Set Context!11524))

(assert (=> b!6501050 (= e!3939316 (as set.empty (Set Context!11524)))))

(declare-fun b!6501051 () Bool)

(assert (=> b!6501051 (= e!3939314 (set.union call!563323 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343)))))))) (h!71759 s!2326))))))

(declare-fun b!6501052 () Bool)

(assert (=> b!6501052 (= e!3939314 e!3939316)))

(declare-fun c!1191964 () Bool)

(assert (=> b!6501052 (= c!1191964 (is-Cons!65309 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343))))))))))

(declare-fun b!6501053 () Bool)

(assert (=> b!6501053 (= e!3939316 call!563323)))

(declare-fun b!6501054 () Bool)

(assert (=> b!6501054 (= e!3939315 (nullable!6371 (h!71757 (exprs!6262 (Context!11525 (Cons!65309 (h!71757 (exprs!6262 (h!71758 zl!343))) (t!379067 (exprs!6262 (h!71758 zl!343)))))))))))

(assert (= (and d!2039853 res!2669817) b!6501054))

(assert (= (and d!2039853 c!1191963) b!6501051))

(assert (= (and d!2039853 (not c!1191963)) b!6501052))

(assert (= (and b!6501052 c!1191964) b!6501053))

(assert (= (and b!6501052 (not c!1191964)) b!6501050))

(assert (= (or b!6501051 b!6501053) bm!563318))

(declare-fun m!7288856 () Bool)

(assert (=> bm!563318 m!7288856))

(declare-fun m!7288858 () Bool)

(assert (=> b!6501051 m!7288858))

(declare-fun m!7288860 () Bool)

(assert (=> b!6501054 m!7288860))

(assert (=> b!6500793 d!2039853))

(declare-fun bm!563319 () Bool)

(declare-fun call!563324 () (Set Context!11524))

(assert (=> bm!563319 (= call!563324 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 (h!71758 zl!343))) (Context!11525 (t!379067 (exprs!6262 (h!71758 zl!343)))) (h!71759 s!2326)))))

(declare-fun d!2039855 () Bool)

(declare-fun c!1191965 () Bool)

(declare-fun e!3939318 () Bool)

(assert (=> d!2039855 (= c!1191965 e!3939318)))

(declare-fun res!2669818 () Bool)

(assert (=> d!2039855 (=> (not res!2669818) (not e!3939318))))

(assert (=> d!2039855 (= res!2669818 (is-Cons!65309 (exprs!6262 (h!71758 zl!343))))))

(declare-fun e!3939317 () (Set Context!11524))

(assert (=> d!2039855 (= (derivationStepZipperUp!1552 (h!71758 zl!343) (h!71759 s!2326)) e!3939317)))

(declare-fun b!6501055 () Bool)

(declare-fun e!3939319 () (Set Context!11524))

(assert (=> b!6501055 (= e!3939319 (as set.empty (Set Context!11524)))))

(declare-fun b!6501056 () Bool)

(assert (=> b!6501056 (= e!3939317 (set.union call!563324 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 (h!71758 zl!343)))) (h!71759 s!2326))))))

(declare-fun b!6501057 () Bool)

(assert (=> b!6501057 (= e!3939317 e!3939319)))

(declare-fun c!1191966 () Bool)

(assert (=> b!6501057 (= c!1191966 (is-Cons!65309 (exprs!6262 (h!71758 zl!343))))))

(declare-fun b!6501058 () Bool)

(assert (=> b!6501058 (= e!3939319 call!563324)))

(declare-fun b!6501059 () Bool)

(assert (=> b!6501059 (= e!3939318 (nullable!6371 (h!71757 (exprs!6262 (h!71758 zl!343)))))))

(assert (= (and d!2039855 res!2669818) b!6501059))

(assert (= (and d!2039855 c!1191965) b!6501056))

(assert (= (and d!2039855 (not c!1191965)) b!6501057))

(assert (= (and b!6501057 c!1191966) b!6501058))

(assert (= (and b!6501057 (not c!1191966)) b!6501055))

(assert (= (or b!6501056 b!6501058) bm!563319))

(declare-fun m!7288862 () Bool)

(assert (=> bm!563319 m!7288862))

(declare-fun m!7288864 () Bool)

(assert (=> b!6501056 m!7288864))

(assert (=> b!6501059 m!7288582))

(assert (=> b!6500793 d!2039855))

(declare-fun d!2039857 () Bool)

(declare-fun dynLambda!25944 (Int Context!11524) (Set Context!11524))

(assert (=> d!2039857 (= (flatMap!1883 z!1189 lambda!360263) (dynLambda!25944 lambda!360263 (h!71758 zl!343)))))

(declare-fun lt!2391724 () Unit!158847)

(declare-fun choose!48255 ((Set Context!11524) Context!11524 Int) Unit!158847)

(assert (=> d!2039857 (= lt!2391724 (choose!48255 z!1189 (h!71758 zl!343) lambda!360263))))

(assert (=> d!2039857 (= z!1189 (set.insert (h!71758 zl!343) (as set.empty (Set Context!11524))))))

(assert (=> d!2039857 (= (lemmaFlatMapOnSingletonSet!1409 z!1189 (h!71758 zl!343) lambda!360263) lt!2391724)))

(declare-fun b_lambda!246105 () Bool)

(assert (=> (not b_lambda!246105) (not d!2039857)))

(declare-fun bs!1651329 () Bool)

(assert (= bs!1651329 d!2039857))

(assert (=> bs!1651329 m!7288580))

(declare-fun m!7288866 () Bool)

(assert (=> bs!1651329 m!7288866))

(declare-fun m!7288868 () Bool)

(assert (=> bs!1651329 m!7288868))

(declare-fun m!7288870 () Bool)

(assert (=> bs!1651329 m!7288870))

(assert (=> b!6500793 d!2039857))

(declare-fun d!2039859 () Bool)

(declare-fun choose!48256 ((Set Context!11524) Int) (Set Context!11524))

(assert (=> d!2039859 (= (flatMap!1883 z!1189 lambda!360263) (choose!48256 z!1189 lambda!360263))))

(declare-fun bs!1651330 () Bool)

(assert (= bs!1651330 d!2039859))

(declare-fun m!7288872 () Bool)

(assert (=> bs!1651330 m!7288872))

(assert (=> b!6500793 d!2039859))

(declare-fun d!2039861 () Bool)

(declare-fun c!1191967 () Bool)

(assert (=> d!2039861 (= c!1191967 (isEmpty!37515 s!2326))))

(declare-fun e!3939320 () Bool)

(assert (=> d!2039861 (= (matchZipper!2390 z!1189 s!2326) e!3939320)))

(declare-fun b!6501060 () Bool)

(assert (=> b!6501060 (= e!3939320 (nullableZipper!2133 z!1189))))

(declare-fun b!6501061 () Bool)

(assert (=> b!6501061 (= e!3939320 (matchZipper!2390 (derivationStepZipper!2344 z!1189 (head!13227 s!2326)) (tail!12312 s!2326)))))

(assert (= (and d!2039861 c!1191967) b!6501060))

(assert (= (and d!2039861 (not c!1191967)) b!6501061))

(assert (=> d!2039861 m!7288820))

(declare-fun m!7288874 () Bool)

(assert (=> b!6501060 m!7288874))

(assert (=> b!6501061 m!7288824))

(assert (=> b!6501061 m!7288824))

(declare-fun m!7288876 () Bool)

(assert (=> b!6501061 m!7288876))

(assert (=> b!6501061 m!7288828))

(assert (=> b!6501061 m!7288876))

(assert (=> b!6501061 m!7288828))

(declare-fun m!7288878 () Bool)

(assert (=> b!6501061 m!7288878))

(assert (=> b!6500792 d!2039861))

(declare-fun d!2039863 () Bool)

(assert (=> d!2039863 (= (flatMap!1883 lt!2391596 lambda!360263) (choose!48256 lt!2391596 lambda!360263))))

(declare-fun bs!1651331 () Bool)

(assert (= bs!1651331 d!2039863))

(declare-fun m!7288880 () Bool)

(assert (=> bs!1651331 m!7288880))

(assert (=> b!6500812 d!2039863))

(declare-fun bm!563320 () Bool)

(declare-fun call!563325 () (Set Context!11524))

(assert (=> bm!563320 (= call!563325 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 lt!2391601)) (Context!11525 (t!379067 (exprs!6262 lt!2391601))) (h!71759 s!2326)))))

(declare-fun d!2039865 () Bool)

(declare-fun c!1191968 () Bool)

(declare-fun e!3939322 () Bool)

(assert (=> d!2039865 (= c!1191968 e!3939322)))

(declare-fun res!2669819 () Bool)

(assert (=> d!2039865 (=> (not res!2669819) (not e!3939322))))

(assert (=> d!2039865 (= res!2669819 (is-Cons!65309 (exprs!6262 lt!2391601)))))

(declare-fun e!3939321 () (Set Context!11524))

(assert (=> d!2039865 (= (derivationStepZipperUp!1552 lt!2391601 (h!71759 s!2326)) e!3939321)))

(declare-fun b!6501062 () Bool)

(declare-fun e!3939323 () (Set Context!11524))

(assert (=> b!6501062 (= e!3939323 (as set.empty (Set Context!11524)))))

(declare-fun b!6501063 () Bool)

(assert (=> b!6501063 (= e!3939321 (set.union call!563325 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 lt!2391601))) (h!71759 s!2326))))))

(declare-fun b!6501064 () Bool)

(assert (=> b!6501064 (= e!3939321 e!3939323)))

(declare-fun c!1191969 () Bool)

(assert (=> b!6501064 (= c!1191969 (is-Cons!65309 (exprs!6262 lt!2391601)))))

(declare-fun b!6501065 () Bool)

(assert (=> b!6501065 (= e!3939323 call!563325)))

(declare-fun b!6501066 () Bool)

(assert (=> b!6501066 (= e!3939322 (nullable!6371 (h!71757 (exprs!6262 lt!2391601))))))

(assert (= (and d!2039865 res!2669819) b!6501066))

(assert (= (and d!2039865 c!1191968) b!6501063))

(assert (= (and d!2039865 (not c!1191968)) b!6501064))

(assert (= (and b!6501064 c!1191969) b!6501065))

(assert (= (and b!6501064 (not c!1191969)) b!6501062))

(assert (= (or b!6501063 b!6501065) bm!563320))

(declare-fun m!7288882 () Bool)

(assert (=> bm!563320 m!7288882))

(declare-fun m!7288884 () Bool)

(assert (=> b!6501063 m!7288884))

(declare-fun m!7288886 () Bool)

(assert (=> b!6501066 m!7288886))

(assert (=> b!6500812 d!2039865))

(declare-fun d!2039867 () Bool)

(assert (=> d!2039867 (= (flatMap!1883 lt!2391596 lambda!360263) (dynLambda!25944 lambda!360263 lt!2391601))))

(declare-fun lt!2391725 () Unit!158847)

(assert (=> d!2039867 (= lt!2391725 (choose!48255 lt!2391596 lt!2391601 lambda!360263))))

(assert (=> d!2039867 (= lt!2391596 (set.insert lt!2391601 (as set.empty (Set Context!11524))))))

(assert (=> d!2039867 (= (lemmaFlatMapOnSingletonSet!1409 lt!2391596 lt!2391601 lambda!360263) lt!2391725)))

(declare-fun b_lambda!246107 () Bool)

(assert (=> (not b_lambda!246107) (not d!2039867)))

(declare-fun bs!1651332 () Bool)

(assert (= bs!1651332 d!2039867))

(assert (=> bs!1651332 m!7288566))

(declare-fun m!7288888 () Bool)

(assert (=> bs!1651332 m!7288888))

(declare-fun m!7288890 () Bool)

(assert (=> bs!1651332 m!7288890))

(assert (=> bs!1651332 m!7288568))

(assert (=> b!6500812 d!2039867))

(declare-fun bs!1651333 () Bool)

(declare-fun d!2039869 () Bool)

(assert (= bs!1651333 (and d!2039869 b!6500793)))

(declare-fun lambda!360290 () Int)

(assert (=> bs!1651333 (= lambda!360290 lambda!360263)))

(assert (=> d!2039869 true))

(assert (=> d!2039869 (= (derivationStepZipper!2344 lt!2391596 (h!71759 s!2326)) (flatMap!1883 lt!2391596 lambda!360290))))

(declare-fun bs!1651334 () Bool)

(assert (= bs!1651334 d!2039869))

(declare-fun m!7288892 () Bool)

(assert (=> bs!1651334 m!7288892))

(assert (=> b!6500812 d!2039869))

(declare-fun bs!1651335 () Bool)

(declare-fun d!2039871 () Bool)

(assert (= bs!1651335 (and d!2039871 b!6500796)))

(declare-fun lambda!360291 () Int)

(assert (=> bs!1651335 (= lambda!360291 lambda!360264)))

(declare-fun bs!1651336 () Bool)

(assert (= bs!1651336 (and d!2039871 d!2039837)))

(assert (=> bs!1651336 (= lambda!360291 lambda!360287)))

(assert (=> d!2039871 (= (inv!84193 (Context!11525 (++!14460 (exprs!6262 c!324) lt!2391606))) (forall!15559 (exprs!6262 (Context!11525 (++!14460 (exprs!6262 c!324) lt!2391606))) lambda!360291))))

(declare-fun bs!1651337 () Bool)

(assert (= bs!1651337 d!2039871))

(declare-fun m!7288894 () Bool)

(assert (=> bs!1651337 m!7288894))

(assert (=> b!6500796 d!2039871))

(declare-fun d!2039873 () Bool)

(declare-fun e!3939328 () Bool)

(assert (=> d!2039873 e!3939328))

(declare-fun res!2669825 () Bool)

(assert (=> d!2039873 (=> (not res!2669825) (not e!3939328))))

(declare-fun lt!2391728 () List!65433)

(declare-fun content!12457 (List!65433) (Set Regex!16378))

(assert (=> d!2039873 (= res!2669825 (= (content!12457 lt!2391728) (set.union (content!12457 (exprs!6262 c!324)) (content!12457 lt!2391606))))))

(declare-fun e!3939329 () List!65433)

(assert (=> d!2039873 (= lt!2391728 e!3939329)))

(declare-fun c!1191974 () Bool)

(assert (=> d!2039873 (= c!1191974 (is-Nil!65309 (exprs!6262 c!324)))))

(assert (=> d!2039873 (= (++!14460 (exprs!6262 c!324) lt!2391606) lt!2391728)))

(declare-fun b!6501077 () Bool)

(assert (=> b!6501077 (= e!3939329 lt!2391606)))

(declare-fun b!6501078 () Bool)

(assert (=> b!6501078 (= e!3939329 (Cons!65309 (h!71757 (exprs!6262 c!324)) (++!14460 (t!379067 (exprs!6262 c!324)) lt!2391606)))))

(declare-fun b!6501080 () Bool)

(assert (=> b!6501080 (= e!3939328 (or (not (= lt!2391606 Nil!65309)) (= lt!2391728 (exprs!6262 c!324))))))

(declare-fun b!6501079 () Bool)

(declare-fun res!2669824 () Bool)

(assert (=> b!6501079 (=> (not res!2669824) (not e!3939328))))

(declare-fun size!40435 (List!65433) Int)

(assert (=> b!6501079 (= res!2669824 (= (size!40435 lt!2391728) (+ (size!40435 (exprs!6262 c!324)) (size!40435 lt!2391606))))))

(assert (= (and d!2039873 c!1191974) b!6501077))

(assert (= (and d!2039873 (not c!1191974)) b!6501078))

(assert (= (and d!2039873 res!2669825) b!6501079))

(assert (= (and b!6501079 res!2669824) b!6501080))

(declare-fun m!7288896 () Bool)

(assert (=> d!2039873 m!7288896))

(declare-fun m!7288898 () Bool)

(assert (=> d!2039873 m!7288898))

(declare-fun m!7288900 () Bool)

(assert (=> d!2039873 m!7288900))

(declare-fun m!7288902 () Bool)

(assert (=> b!6501078 m!7288902))

(declare-fun m!7288904 () Bool)

(assert (=> b!6501079 m!7288904))

(declare-fun m!7288906 () Bool)

(assert (=> b!6501079 m!7288906))

(declare-fun m!7288908 () Bool)

(assert (=> b!6501079 m!7288908))

(assert (=> b!6500796 d!2039873))

(declare-fun d!2039875 () Bool)

(assert (=> d!2039875 (forall!15559 (++!14460 (exprs!6262 c!324) lt!2391606) lambda!360264)))

(declare-fun lt!2391731 () Unit!158847)

(declare-fun choose!48257 (List!65433 List!65433 Int) Unit!158847)

(assert (=> d!2039875 (= lt!2391731 (choose!48257 (exprs!6262 c!324) lt!2391606 lambda!360264))))

(assert (=> d!2039875 (forall!15559 (exprs!6262 c!324) lambda!360264)))

(assert (=> d!2039875 (= (lemmaConcatPreservesForall!351 (exprs!6262 c!324) lt!2391606 lambda!360264) lt!2391731)))

(declare-fun bs!1651338 () Bool)

(assert (= bs!1651338 d!2039875))

(assert (=> bs!1651338 m!7288658))

(assert (=> bs!1651338 m!7288658))

(declare-fun m!7288910 () Bool)

(assert (=> bs!1651338 m!7288910))

(declare-fun m!7288912 () Bool)

(assert (=> bs!1651338 m!7288912))

(declare-fun m!7288914 () Bool)

(assert (=> bs!1651338 m!7288914))

(assert (=> b!6500796 d!2039875))

(declare-fun bm!563321 () Bool)

(declare-fun call!563326 () (Set Context!11524))

(assert (=> bm!563321 (= call!563326 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 lt!2391577)) (Context!11525 (t!379067 (exprs!6262 lt!2391577))) (h!71759 s!2326)))))

(declare-fun d!2039877 () Bool)

(declare-fun c!1191975 () Bool)

(declare-fun e!3939331 () Bool)

(assert (=> d!2039877 (= c!1191975 e!3939331)))

(declare-fun res!2669826 () Bool)

(assert (=> d!2039877 (=> (not res!2669826) (not e!3939331))))

(assert (=> d!2039877 (= res!2669826 (is-Cons!65309 (exprs!6262 lt!2391577)))))

(declare-fun e!3939330 () (Set Context!11524))

(assert (=> d!2039877 (= (derivationStepZipperUp!1552 lt!2391577 (h!71759 s!2326)) e!3939330)))

(declare-fun b!6501081 () Bool)

(declare-fun e!3939332 () (Set Context!11524))

(assert (=> b!6501081 (= e!3939332 (as set.empty (Set Context!11524)))))

(declare-fun b!6501082 () Bool)

(assert (=> b!6501082 (= e!3939330 (set.union call!563326 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 lt!2391577))) (h!71759 s!2326))))))

(declare-fun b!6501083 () Bool)

(assert (=> b!6501083 (= e!3939330 e!3939332)))

(declare-fun c!1191976 () Bool)

(assert (=> b!6501083 (= c!1191976 (is-Cons!65309 (exprs!6262 lt!2391577)))))

(declare-fun b!6501084 () Bool)

(assert (=> b!6501084 (= e!3939332 call!563326)))

(declare-fun b!6501085 () Bool)

(assert (=> b!6501085 (= e!3939331 (nullable!6371 (h!71757 (exprs!6262 lt!2391577))))))

(assert (= (and d!2039877 res!2669826) b!6501085))

(assert (= (and d!2039877 c!1191975) b!6501082))

(assert (= (and d!2039877 (not c!1191975)) b!6501083))

(assert (= (and b!6501083 c!1191976) b!6501084))

(assert (= (and b!6501083 (not c!1191976)) b!6501081))

(assert (= (or b!6501082 b!6501084) bm!563321))

(declare-fun m!7288916 () Bool)

(assert (=> bm!563321 m!7288916))

(declare-fun m!7288918 () Bool)

(assert (=> b!6501082 m!7288918))

(declare-fun m!7288920 () Bool)

(assert (=> b!6501085 m!7288920))

(assert (=> b!6500795 d!2039877))

(declare-fun d!2039879 () Bool)

(assert (=> d!2039879 (= (flatMap!1883 lt!2391576 lambda!360263) (choose!48256 lt!2391576 lambda!360263))))

(declare-fun bs!1651339 () Bool)

(assert (= bs!1651339 d!2039879))

(declare-fun m!7288922 () Bool)

(assert (=> bs!1651339 m!7288922))

(assert (=> b!6500795 d!2039879))

(declare-fun d!2039881 () Bool)

(assert (=> d!2039881 (= (flatMap!1883 lt!2391582 lambda!360263) (dynLambda!25944 lambda!360263 lt!2391588))))

(declare-fun lt!2391732 () Unit!158847)

(assert (=> d!2039881 (= lt!2391732 (choose!48255 lt!2391582 lt!2391588 lambda!360263))))

(assert (=> d!2039881 (= lt!2391582 (set.insert lt!2391588 (as set.empty (Set Context!11524))))))

(assert (=> d!2039881 (= (lemmaFlatMapOnSingletonSet!1409 lt!2391582 lt!2391588 lambda!360263) lt!2391732)))

(declare-fun b_lambda!246109 () Bool)

(assert (=> (not b_lambda!246109) (not d!2039881)))

(declare-fun bs!1651340 () Bool)

(assert (= bs!1651340 d!2039881))

(assert (=> bs!1651340 m!7288650))

(declare-fun m!7288924 () Bool)

(assert (=> bs!1651340 m!7288924))

(declare-fun m!7288926 () Bool)

(assert (=> bs!1651340 m!7288926))

(assert (=> bs!1651340 m!7288644))

(assert (=> b!6500795 d!2039881))

(declare-fun d!2039883 () Bool)

(declare-fun lt!2391735 () Regex!16378)

(assert (=> d!2039883 (validRegex!8114 lt!2391735)))

(assert (=> d!2039883 (= lt!2391735 (generalisedUnion!2222 (unfocusZipperList!1799 (Cons!65310 lt!2391588 Nil!65310))))))

(assert (=> d!2039883 (= (unfocusZipper!2120 (Cons!65310 lt!2391588 Nil!65310)) lt!2391735)))

(declare-fun bs!1651341 () Bool)

(assert (= bs!1651341 d!2039883))

(declare-fun m!7288928 () Bool)

(assert (=> bs!1651341 m!7288928))

(declare-fun m!7288930 () Bool)

(assert (=> bs!1651341 m!7288930))

(assert (=> bs!1651341 m!7288930))

(declare-fun m!7288932 () Bool)

(assert (=> bs!1651341 m!7288932))

(assert (=> b!6500795 d!2039883))

(declare-fun d!2039885 () Bool)

(assert (=> d!2039885 (= (flatMap!1883 lt!2391576 lambda!360263) (dynLambda!25944 lambda!360263 lt!2391577))))

(declare-fun lt!2391736 () Unit!158847)

(assert (=> d!2039885 (= lt!2391736 (choose!48255 lt!2391576 lt!2391577 lambda!360263))))

(assert (=> d!2039885 (= lt!2391576 (set.insert lt!2391577 (as set.empty (Set Context!11524))))))

(assert (=> d!2039885 (= (lemmaFlatMapOnSingletonSet!1409 lt!2391576 lt!2391577 lambda!360263) lt!2391736)))

(declare-fun b_lambda!246111 () Bool)

(assert (=> (not b_lambda!246111) (not d!2039885)))

(declare-fun bs!1651342 () Bool)

(assert (= bs!1651342 d!2039885))

(assert (=> bs!1651342 m!7288646))

(declare-fun m!7288934 () Bool)

(assert (=> bs!1651342 m!7288934))

(declare-fun m!7288936 () Bool)

(assert (=> bs!1651342 m!7288936))

(assert (=> bs!1651342 m!7288652))

(assert (=> b!6500795 d!2039885))

(declare-fun d!2039887 () Bool)

(assert (=> d!2039887 (= (flatMap!1883 lt!2391582 lambda!360263) (choose!48256 lt!2391582 lambda!360263))))

(declare-fun bs!1651343 () Bool)

(assert (= bs!1651343 d!2039887))

(declare-fun m!7288938 () Bool)

(assert (=> bs!1651343 m!7288938))

(assert (=> b!6500795 d!2039887))

(declare-fun bm!563322 () Bool)

(declare-fun call!563327 () (Set Context!11524))

(assert (=> bm!563322 (= call!563327 (derivationStepZipperDown!1626 (h!71757 (exprs!6262 lt!2391588)) (Context!11525 (t!379067 (exprs!6262 lt!2391588))) (h!71759 s!2326)))))

(declare-fun d!2039889 () Bool)

(declare-fun c!1191977 () Bool)

(declare-fun e!3939334 () Bool)

(assert (=> d!2039889 (= c!1191977 e!3939334)))

(declare-fun res!2669827 () Bool)

(assert (=> d!2039889 (=> (not res!2669827) (not e!3939334))))

(assert (=> d!2039889 (= res!2669827 (is-Cons!65309 (exprs!6262 lt!2391588)))))

(declare-fun e!3939333 () (Set Context!11524))

(assert (=> d!2039889 (= (derivationStepZipperUp!1552 lt!2391588 (h!71759 s!2326)) e!3939333)))

(declare-fun b!6501086 () Bool)

(declare-fun e!3939335 () (Set Context!11524))

(assert (=> b!6501086 (= e!3939335 (as set.empty (Set Context!11524)))))

(declare-fun b!6501087 () Bool)

(assert (=> b!6501087 (= e!3939333 (set.union call!563327 (derivationStepZipperUp!1552 (Context!11525 (t!379067 (exprs!6262 lt!2391588))) (h!71759 s!2326))))))

(declare-fun b!6501088 () Bool)

(assert (=> b!6501088 (= e!3939333 e!3939335)))

(declare-fun c!1191978 () Bool)

(assert (=> b!6501088 (= c!1191978 (is-Cons!65309 (exprs!6262 lt!2391588)))))

(declare-fun b!6501089 () Bool)

(assert (=> b!6501089 (= e!3939335 call!563327)))

(declare-fun b!6501090 () Bool)

(assert (=> b!6501090 (= e!3939334 (nullable!6371 (h!71757 (exprs!6262 lt!2391588))))))

(assert (= (and d!2039889 res!2669827) b!6501090))

(assert (= (and d!2039889 c!1191977) b!6501087))

(assert (= (and d!2039889 (not c!1191977)) b!6501088))

(assert (= (and b!6501088 c!1191978) b!6501089))

(assert (= (and b!6501088 (not c!1191978)) b!6501086))

(assert (= (or b!6501087 b!6501089) bm!563322))

(declare-fun m!7288940 () Bool)

(assert (=> bm!563322 m!7288940))

(declare-fun m!7288942 () Bool)

(assert (=> b!6501087 m!7288942))

(declare-fun m!7288944 () Bool)

(assert (=> b!6501090 m!7288944))

(assert (=> b!6500795 d!2039889))

(declare-fun b!6501109 () Bool)

(declare-fun e!3939351 () Bool)

(declare-fun e!3939353 () Bool)

(assert (=> b!6501109 (= e!3939351 e!3939353)))

(declare-fun res!2669839 () Bool)

(assert (=> b!6501109 (=> (not res!2669839) (not e!3939353))))

(declare-fun call!563335 () Bool)

(assert (=> b!6501109 (= res!2669839 call!563335)))

(declare-fun b!6501110 () Bool)

(declare-fun res!2669841 () Bool)

(declare-fun e!3939354 () Bool)

(assert (=> b!6501110 (=> (not res!2669841) (not e!3939354))))

(assert (=> b!6501110 (= res!2669841 call!563335)))

(declare-fun e!3939355 () Bool)

(assert (=> b!6501110 (= e!3939355 e!3939354)))

(declare-fun b!6501111 () Bool)

(declare-fun call!563336 () Bool)

(assert (=> b!6501111 (= e!3939353 call!563336)))

(declare-fun bm!563329 () Bool)

(declare-fun c!1191983 () Bool)

(assert (=> bm!563329 (= call!563335 (validRegex!8114 (ite c!1191983 (regOne!33269 r!7292) (regOne!33268 r!7292))))))

(declare-fun b!6501112 () Bool)

(declare-fun e!3939350 () Bool)

(assert (=> b!6501112 (= e!3939350 e!3939355)))

(assert (=> b!6501112 (= c!1191983 (is-Union!16378 r!7292))))

(declare-fun b!6501113 () Bool)

(declare-fun e!3939352 () Bool)

(declare-fun call!563334 () Bool)

(assert (=> b!6501113 (= e!3939352 call!563334)))

(declare-fun b!6501114 () Bool)

(assert (=> b!6501114 (= e!3939350 e!3939352)))

(declare-fun res!2669838 () Bool)

(assert (=> b!6501114 (= res!2669838 (not (nullable!6371 (reg!16707 r!7292))))))

(assert (=> b!6501114 (=> (not res!2669838) (not e!3939352))))

(declare-fun bm!563331 () Bool)

(declare-fun c!1191984 () Bool)

(assert (=> bm!563331 (= call!563334 (validRegex!8114 (ite c!1191984 (reg!16707 r!7292) (ite c!1191983 (regTwo!33269 r!7292) (regTwo!33268 r!7292)))))))

(declare-fun b!6501115 () Bool)

(declare-fun res!2669840 () Bool)

(assert (=> b!6501115 (=> res!2669840 e!3939351)))

(assert (=> b!6501115 (= res!2669840 (not (is-Concat!25223 r!7292)))))

(assert (=> b!6501115 (= e!3939355 e!3939351)))

(declare-fun b!6501116 () Bool)

(declare-fun e!3939356 () Bool)

(assert (=> b!6501116 (= e!3939356 e!3939350)))

(assert (=> b!6501116 (= c!1191984 (is-Star!16378 r!7292))))

(declare-fun b!6501117 () Bool)

(assert (=> b!6501117 (= e!3939354 call!563336)))

(declare-fun bm!563330 () Bool)

(assert (=> bm!563330 (= call!563336 call!563334)))

(declare-fun d!2039891 () Bool)

(declare-fun res!2669842 () Bool)

(assert (=> d!2039891 (=> res!2669842 e!3939356)))

(assert (=> d!2039891 (= res!2669842 (is-ElementMatch!16378 r!7292))))

(assert (=> d!2039891 (= (validRegex!8114 r!7292) e!3939356)))

(assert (= (and d!2039891 (not res!2669842)) b!6501116))

(assert (= (and b!6501116 c!1191984) b!6501114))

(assert (= (and b!6501116 (not c!1191984)) b!6501112))

(assert (= (and b!6501114 res!2669838) b!6501113))

(assert (= (and b!6501112 c!1191983) b!6501110))

(assert (= (and b!6501112 (not c!1191983)) b!6501115))

(assert (= (and b!6501110 res!2669841) b!6501117))

(assert (= (and b!6501115 (not res!2669840)) b!6501109))

(assert (= (and b!6501109 res!2669839) b!6501111))

(assert (= (or b!6501117 b!6501111) bm!563330))

(assert (= (or b!6501110 b!6501109) bm!563329))

(assert (= (or b!6501113 bm!563330) bm!563331))

(declare-fun m!7288946 () Bool)

(assert (=> bm!563329 m!7288946))

(declare-fun m!7288948 () Bool)

(assert (=> b!6501114 m!7288948))

(declare-fun m!7288950 () Bool)

(assert (=> bm!563331 m!7288950))

(assert (=> start!638708 d!2039891))

(declare-fun bs!1651344 () Bool)

(declare-fun d!2039893 () Bool)

(assert (= bs!1651344 (and d!2039893 b!6500796)))

(declare-fun lambda!360292 () Int)

(assert (=> bs!1651344 (= lambda!360292 lambda!360264)))

(declare-fun bs!1651345 () Bool)

(assert (= bs!1651345 (and d!2039893 d!2039837)))

(assert (=> bs!1651345 (= lambda!360292 lambda!360287)))

(declare-fun bs!1651346 () Bool)

(assert (= bs!1651346 (and d!2039893 d!2039871)))

(assert (=> bs!1651346 (= lambda!360292 lambda!360291)))

(assert (=> d!2039893 (= (inv!84193 c!324) (forall!15559 (exprs!6262 c!324) lambda!360292))))

(declare-fun bs!1651347 () Bool)

(assert (= bs!1651347 d!2039893))

(declare-fun m!7288952 () Bool)

(assert (=> bs!1651347 m!7288952))

(assert (=> start!638708 d!2039893))

(declare-fun d!2039895 () Bool)

(assert (=> d!2039895 (= (nullable!6371 (regOne!33268 (regOne!33268 r!7292))) (nullableFct!2307 (regOne!33268 (regOne!33268 r!7292))))))

(declare-fun bs!1651348 () Bool)

(assert (= bs!1651348 d!2039895))

(declare-fun m!7288954 () Bool)

(assert (=> bs!1651348 m!7288954))

(assert (=> b!6500808 d!2039895))

(declare-fun bs!1651349 () Bool)

(declare-fun d!2039897 () Bool)

(assert (= bs!1651349 (and d!2039897 b!6500796)))

(declare-fun lambda!360293 () Int)

(assert (=> bs!1651349 (= lambda!360293 lambda!360264)))

(declare-fun bs!1651350 () Bool)

(assert (= bs!1651350 (and d!2039897 d!2039837)))

(assert (=> bs!1651350 (= lambda!360293 lambda!360287)))

(declare-fun bs!1651351 () Bool)

(assert (= bs!1651351 (and d!2039897 d!2039871)))

(assert (=> bs!1651351 (= lambda!360293 lambda!360291)))

(declare-fun bs!1651352 () Bool)

(assert (= bs!1651352 (and d!2039897 d!2039893)))

(assert (=> bs!1651352 (= lambda!360293 lambda!360292)))

(assert (=> d!2039897 (= (inv!84193 setElem!44312) (forall!15559 (exprs!6262 setElem!44312) lambda!360293))))

(declare-fun bs!1651353 () Bool)

(assert (= bs!1651353 d!2039897))

(declare-fun m!7288956 () Bool)

(assert (=> bs!1651353 m!7288956))

(assert (=> setNonEmpty!44312 d!2039897))

(declare-fun d!2039899 () Bool)

(assert (=> d!2039899 (= (isEmpty!37511 (t!379067 (exprs!6262 (h!71758 zl!343)))) (is-Nil!65309 (t!379067 (exprs!6262 (h!71758 zl!343)))))))

(assert (=> b!6500807 d!2039899))

(declare-fun b!6501146 () Bool)

(declare-fun e!3939374 () Bool)

(declare-fun lt!2391739 () Bool)

(assert (=> b!6501146 (= e!3939374 (not lt!2391739))))

(declare-fun b!6501147 () Bool)

(declare-fun e!3939377 () Bool)

(declare-fun call!563339 () Bool)

(assert (=> b!6501147 (= e!3939377 (= lt!2391739 call!563339))))

(declare-fun b!6501148 () Bool)

(declare-fun e!3939376 () Bool)

(assert (=> b!6501148 (= e!3939376 (not (= (head!13227 s!2326) (c!1191918 lt!2391578))))))

(declare-fun b!6501150 () Bool)

(declare-fun res!2669861 () Bool)

(declare-fun e!3939372 () Bool)

(assert (=> b!6501150 (=> (not res!2669861) (not e!3939372))))

(assert (=> b!6501150 (= res!2669861 (not call!563339))))

(declare-fun b!6501151 () Bool)

(declare-fun e!3939373 () Bool)

(assert (=> b!6501151 (= e!3939373 (nullable!6371 lt!2391578))))

(declare-fun b!6501152 () Bool)

(declare-fun e!3939371 () Bool)

(assert (=> b!6501152 (= e!3939371 e!3939376)))

(declare-fun res!2669862 () Bool)

(assert (=> b!6501152 (=> res!2669862 e!3939376)))

(assert (=> b!6501152 (= res!2669862 call!563339)))

(declare-fun b!6501153 () Bool)

(assert (=> b!6501153 (= e!3939377 e!3939374)))

(declare-fun c!1191992 () Bool)

(assert (=> b!6501153 (= c!1191992 (is-EmptyLang!16378 lt!2391578))))

(declare-fun bm!563334 () Bool)

(assert (=> bm!563334 (= call!563339 (isEmpty!37515 s!2326))))

(declare-fun b!6501154 () Bool)

(declare-fun derivativeStep!5072 (Regex!16378 C!33026) Regex!16378)

(assert (=> b!6501154 (= e!3939373 (matchR!8561 (derivativeStep!5072 lt!2391578 (head!13227 s!2326)) (tail!12312 s!2326)))))

(declare-fun b!6501155 () Bool)

(declare-fun res!2669860 () Bool)

(declare-fun e!3939375 () Bool)

(assert (=> b!6501155 (=> res!2669860 e!3939375)))

(assert (=> b!6501155 (= res!2669860 e!3939372)))

(declare-fun res!2669866 () Bool)

(assert (=> b!6501155 (=> (not res!2669866) (not e!3939372))))

(assert (=> b!6501155 (= res!2669866 lt!2391739)))

(declare-fun b!6501156 () Bool)

(assert (=> b!6501156 (= e!3939375 e!3939371)))

(declare-fun res!2669865 () Bool)

(assert (=> b!6501156 (=> (not res!2669865) (not e!3939371))))

(assert (=> b!6501156 (= res!2669865 (not lt!2391739))))

(declare-fun b!6501157 () Bool)

(declare-fun res!2669864 () Bool)

(assert (=> b!6501157 (=> res!2669864 e!3939375)))

(assert (=> b!6501157 (= res!2669864 (not (is-ElementMatch!16378 lt!2391578)))))

(assert (=> b!6501157 (= e!3939374 e!3939375)))

(declare-fun b!6501158 () Bool)

(declare-fun res!2669859 () Bool)

(assert (=> b!6501158 (=> (not res!2669859) (not e!3939372))))

(assert (=> b!6501158 (= res!2669859 (isEmpty!37515 (tail!12312 s!2326)))))

(declare-fun b!6501159 () Bool)

(declare-fun res!2669863 () Bool)

(assert (=> b!6501159 (=> res!2669863 e!3939376)))

(assert (=> b!6501159 (= res!2669863 (not (isEmpty!37515 (tail!12312 s!2326))))))

(declare-fun d!2039901 () Bool)

(assert (=> d!2039901 e!3939377))

(declare-fun c!1191991 () Bool)

(assert (=> d!2039901 (= c!1191991 (is-EmptyExpr!16378 lt!2391578))))

(assert (=> d!2039901 (= lt!2391739 e!3939373)))

(declare-fun c!1191993 () Bool)

(assert (=> d!2039901 (= c!1191993 (isEmpty!37515 s!2326))))

(assert (=> d!2039901 (validRegex!8114 lt!2391578)))

(assert (=> d!2039901 (= (matchR!8561 lt!2391578 s!2326) lt!2391739)))

(declare-fun b!6501149 () Bool)

(assert (=> b!6501149 (= e!3939372 (= (head!13227 s!2326) (c!1191918 lt!2391578)))))

(assert (= (and d!2039901 c!1191993) b!6501151))

(assert (= (and d!2039901 (not c!1191993)) b!6501154))

(assert (= (and d!2039901 c!1191991) b!6501147))

(assert (= (and d!2039901 (not c!1191991)) b!6501153))

(assert (= (and b!6501153 c!1191992) b!6501146))

(assert (= (and b!6501153 (not c!1191992)) b!6501157))

(assert (= (and b!6501157 (not res!2669864)) b!6501155))

(assert (= (and b!6501155 res!2669866) b!6501150))

(assert (= (and b!6501150 res!2669861) b!6501158))

(assert (= (and b!6501158 res!2669859) b!6501149))

(assert (= (and b!6501155 (not res!2669860)) b!6501156))

(assert (= (and b!6501156 res!2669865) b!6501152))

(assert (= (and b!6501152 (not res!2669862)) b!6501159))

(assert (= (and b!6501159 (not res!2669863)) b!6501148))

(assert (= (or b!6501147 b!6501150 b!6501152) bm!563334))

(declare-fun m!7288958 () Bool)

(assert (=> b!6501151 m!7288958))

(assert (=> b!6501154 m!7288824))

(assert (=> b!6501154 m!7288824))

(declare-fun m!7288960 () Bool)

(assert (=> b!6501154 m!7288960))

(assert (=> b!6501154 m!7288828))

(assert (=> b!6501154 m!7288960))

(assert (=> b!6501154 m!7288828))

(declare-fun m!7288962 () Bool)

(assert (=> b!6501154 m!7288962))

(assert (=> bm!563334 m!7288820))

(assert (=> b!6501149 m!7288824))

(assert (=> b!6501148 m!7288824))

(assert (=> b!6501158 m!7288828))

(assert (=> b!6501158 m!7288828))

(declare-fun m!7288964 () Bool)

(assert (=> b!6501158 m!7288964))

(assert (=> b!6501159 m!7288828))

(assert (=> b!6501159 m!7288828))

(assert (=> b!6501159 m!7288964))

(assert (=> d!2039901 m!7288820))

(declare-fun m!7288966 () Bool)

(assert (=> d!2039901 m!7288966))

(assert (=> b!6500811 d!2039901))

(declare-fun bs!1651354 () Bool)

(declare-fun b!6501195 () Bool)

(assert (= bs!1651354 (and b!6501195 b!6500822)))

(declare-fun lambda!360298 () Int)

(assert (=> bs!1651354 (not (= lambda!360298 lambda!360261))))

(assert (=> bs!1651354 (not (= lambda!360298 lambda!360262))))

(assert (=> b!6501195 true))

(assert (=> b!6501195 true))

(declare-fun bs!1651355 () Bool)

(declare-fun b!6501196 () Bool)

(assert (= bs!1651355 (and b!6501196 b!6500822)))

(declare-fun lambda!360299 () Int)

(assert (=> bs!1651355 (not (= lambda!360299 lambda!360261))))

(assert (=> bs!1651355 (= (and (= (regOne!33268 lt!2391578) (regOne!33268 r!7292)) (= (regTwo!33268 lt!2391578) (regTwo!33268 r!7292))) (= lambda!360299 lambda!360262))))

(declare-fun bs!1651356 () Bool)

(assert (= bs!1651356 (and b!6501196 b!6501195)))

(assert (=> bs!1651356 (not (= lambda!360299 lambda!360298))))

(assert (=> b!6501196 true))

(assert (=> b!6501196 true))

(declare-fun d!2039903 () Bool)

(declare-fun c!1192005 () Bool)

(assert (=> d!2039903 (= c!1192005 (is-EmptyExpr!16378 lt!2391578))))

(declare-fun e!3939398 () Bool)

(assert (=> d!2039903 (= (matchRSpec!3479 lt!2391578 s!2326) e!3939398)))

(declare-fun b!6501192 () Bool)

(declare-fun res!2669885 () Bool)

(declare-fun e!3939396 () Bool)

(assert (=> b!6501192 (=> res!2669885 e!3939396)))

(declare-fun call!563345 () Bool)

(assert (=> b!6501192 (= res!2669885 call!563345)))

(declare-fun e!3939400 () Bool)

(assert (=> b!6501192 (= e!3939400 e!3939396)))

(declare-fun b!6501193 () Bool)

(declare-fun e!3939399 () Bool)

(assert (=> b!6501193 (= e!3939399 e!3939400)))

(declare-fun c!1192002 () Bool)

(assert (=> b!6501193 (= c!1192002 (is-Star!16378 lt!2391578))))

(declare-fun bm!563339 () Bool)

(assert (=> bm!563339 (= call!563345 (isEmpty!37515 s!2326))))

(declare-fun b!6501194 () Bool)

(declare-fun c!1192003 () Bool)

(assert (=> b!6501194 (= c!1192003 (is-Union!16378 lt!2391578))))

(declare-fun e!3939401 () Bool)

(assert (=> b!6501194 (= e!3939401 e!3939399)))

(declare-fun call!563344 () Bool)

(assert (=> b!6501195 (= e!3939396 call!563344)))

(assert (=> b!6501196 (= e!3939400 call!563344)))

(declare-fun b!6501197 () Bool)

(declare-fun e!3939402 () Bool)

(assert (=> b!6501197 (= e!3939402 (matchRSpec!3479 (regTwo!33269 lt!2391578) s!2326))))

(declare-fun b!6501198 () Bool)

(declare-fun e!3939397 () Bool)

(assert (=> b!6501198 (= e!3939398 e!3939397)))

(declare-fun res!2669884 () Bool)

(assert (=> b!6501198 (= res!2669884 (not (is-EmptyLang!16378 lt!2391578)))))

(assert (=> b!6501198 (=> (not res!2669884) (not e!3939397))))

(declare-fun b!6501199 () Bool)

(assert (=> b!6501199 (= e!3939401 (= s!2326 (Cons!65311 (c!1191918 lt!2391578) Nil!65311)))))

(declare-fun b!6501200 () Bool)

(assert (=> b!6501200 (= e!3939399 e!3939402)))

(declare-fun res!2669883 () Bool)

(assert (=> b!6501200 (= res!2669883 (matchRSpec!3479 (regOne!33269 lt!2391578) s!2326))))

(assert (=> b!6501200 (=> res!2669883 e!3939402)))

(declare-fun b!6501201 () Bool)

(declare-fun c!1192004 () Bool)

(assert (=> b!6501201 (= c!1192004 (is-ElementMatch!16378 lt!2391578))))

(assert (=> b!6501201 (= e!3939397 e!3939401)))

(declare-fun bm!563340 () Bool)

(assert (=> bm!563340 (= call!563344 (Exists!3448 (ite c!1192002 lambda!360298 lambda!360299)))))

(declare-fun b!6501202 () Bool)

(assert (=> b!6501202 (= e!3939398 call!563345)))

(assert (= (and d!2039903 c!1192005) b!6501202))

(assert (= (and d!2039903 (not c!1192005)) b!6501198))

(assert (= (and b!6501198 res!2669884) b!6501201))

(assert (= (and b!6501201 c!1192004) b!6501199))

(assert (= (and b!6501201 (not c!1192004)) b!6501194))

(assert (= (and b!6501194 c!1192003) b!6501200))

(assert (= (and b!6501194 (not c!1192003)) b!6501193))

(assert (= (and b!6501200 (not res!2669883)) b!6501197))

(assert (= (and b!6501193 c!1192002) b!6501192))

(assert (= (and b!6501193 (not c!1192002)) b!6501196))

(assert (= (and b!6501192 (not res!2669885)) b!6501195))

(assert (= (or b!6501195 b!6501196) bm!563340))

(assert (= (or b!6501202 b!6501192) bm!563339))

(assert (=> bm!563339 m!7288820))

(declare-fun m!7288968 () Bool)

(assert (=> b!6501197 m!7288968))

(declare-fun m!7288970 () Bool)

(assert (=> b!6501200 m!7288970))

(declare-fun m!7288972 () Bool)

(assert (=> bm!563340 m!7288972))

(assert (=> b!6500811 d!2039903))

(declare-fun d!2039905 () Bool)

(assert (=> d!2039905 (= (matchR!8561 lt!2391578 s!2326) (matchRSpec!3479 lt!2391578 s!2326))))

(declare-fun lt!2391742 () Unit!158847)

(declare-fun choose!48258 (Regex!16378 List!65435) Unit!158847)

(assert (=> d!2039905 (= lt!2391742 (choose!48258 lt!2391578 s!2326))))

(assert (=> d!2039905 (validRegex!8114 lt!2391578)))

(assert (=> d!2039905 (= (mainMatchTheorem!3479 lt!2391578 s!2326) lt!2391742)))

(declare-fun bs!1651357 () Bool)

(assert (= bs!1651357 d!2039905))

(assert (=> bs!1651357 m!7288602))

(assert (=> bs!1651357 m!7288604))

(declare-fun m!7288974 () Bool)

(assert (=> bs!1651357 m!7288974))

(assert (=> bs!1651357 m!7288966))

(assert (=> b!6500811 d!2039905))

(declare-fun d!2039907 () Bool)

(declare-fun lt!2391743 () Regex!16378)

(assert (=> d!2039907 (validRegex!8114 lt!2391743)))

(assert (=> d!2039907 (= lt!2391743 (generalisedUnion!2222 (unfocusZipperList!1799 (Cons!65310 lt!2391601 Nil!65310))))))

(assert (=> d!2039907 (= (unfocusZipper!2120 (Cons!65310 lt!2391601 Nil!65310)) lt!2391743)))

(declare-fun bs!1651358 () Bool)

(assert (= bs!1651358 d!2039907))

(declare-fun m!7288976 () Bool)

(assert (=> bs!1651358 m!7288976))

(declare-fun m!7288978 () Bool)

(assert (=> bs!1651358 m!7288978))

(assert (=> bs!1651358 m!7288978))

(declare-fun m!7288980 () Bool)

(assert (=> bs!1651358 m!7288980))

(assert (=> b!6500790 d!2039907))

(declare-fun bs!1651359 () Bool)

(declare-fun d!2039909 () Bool)

(assert (= bs!1651359 (and d!2039909 d!2039893)))

(declare-fun lambda!360302 () Int)

(assert (=> bs!1651359 (= lambda!360302 lambda!360292)))

(declare-fun bs!1651360 () Bool)

(assert (= bs!1651360 (and d!2039909 d!2039871)))

(assert (=> bs!1651360 (= lambda!360302 lambda!360291)))

(declare-fun bs!1651361 () Bool)

(assert (= bs!1651361 (and d!2039909 b!6500796)))

(assert (=> bs!1651361 (= lambda!360302 lambda!360264)))

(declare-fun bs!1651362 () Bool)

(assert (= bs!1651362 (and d!2039909 d!2039897)))

(assert (=> bs!1651362 (= lambda!360302 lambda!360293)))

(declare-fun bs!1651363 () Bool)

(assert (= bs!1651363 (and d!2039909 d!2039837)))

(assert (=> bs!1651363 (= lambda!360302 lambda!360287)))

(declare-fun b!6501223 () Bool)

(declare-fun e!3939418 () Bool)

(declare-fun e!3939419 () Bool)

(assert (=> b!6501223 (= e!3939418 e!3939419)))

(declare-fun c!1192017 () Bool)

(declare-fun tail!12313 (List!65433) List!65433)

(assert (=> b!6501223 (= c!1192017 (isEmpty!37511 (tail!12313 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun b!6501224 () Bool)

(declare-fun lt!2391746 () Regex!16378)

(declare-fun isConcat!1290 (Regex!16378) Bool)

(assert (=> b!6501224 (= e!3939419 (isConcat!1290 lt!2391746))))

(declare-fun b!6501225 () Bool)

(declare-fun e!3939420 () Bool)

(assert (=> b!6501225 (= e!3939420 e!3939418)))

(declare-fun c!1192014 () Bool)

(assert (=> b!6501225 (= c!1192014 (isEmpty!37511 (exprs!6262 (h!71758 zl!343))))))

(assert (=> d!2039909 e!3939420))

(declare-fun res!2669891 () Bool)

(assert (=> d!2039909 (=> (not res!2669891) (not e!3939420))))

(assert (=> d!2039909 (= res!2669891 (validRegex!8114 lt!2391746))))

(declare-fun e!3939417 () Regex!16378)

(assert (=> d!2039909 (= lt!2391746 e!3939417)))

(declare-fun c!1192015 () Bool)

(declare-fun e!3939415 () Bool)

(assert (=> d!2039909 (= c!1192015 e!3939415)))

(declare-fun res!2669890 () Bool)

(assert (=> d!2039909 (=> (not res!2669890) (not e!3939415))))

(assert (=> d!2039909 (= res!2669890 (is-Cons!65309 (exprs!6262 (h!71758 zl!343))))))

(assert (=> d!2039909 (forall!15559 (exprs!6262 (h!71758 zl!343)) lambda!360302)))

(assert (=> d!2039909 (= (generalisedConcat!1975 (exprs!6262 (h!71758 zl!343))) lt!2391746)))

(declare-fun b!6501226 () Bool)

(assert (=> b!6501226 (= e!3939417 (h!71757 (exprs!6262 (h!71758 zl!343))))))

(declare-fun b!6501227 () Bool)

(assert (=> b!6501227 (= e!3939415 (isEmpty!37511 (t!379067 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun b!6501228 () Bool)

(declare-fun e!3939416 () Regex!16378)

(assert (=> b!6501228 (= e!3939416 (Concat!25223 (h!71757 (exprs!6262 (h!71758 zl!343))) (generalisedConcat!1975 (t!379067 (exprs!6262 (h!71758 zl!343))))))))

(declare-fun b!6501229 () Bool)

(declare-fun head!13228 (List!65433) Regex!16378)

(assert (=> b!6501229 (= e!3939419 (= lt!2391746 (head!13228 (exprs!6262 (h!71758 zl!343)))))))

(declare-fun b!6501230 () Bool)

(declare-fun isEmptyExpr!1767 (Regex!16378) Bool)

(assert (=> b!6501230 (= e!3939418 (isEmptyExpr!1767 lt!2391746))))

(declare-fun b!6501231 () Bool)

(assert (=> b!6501231 (= e!3939417 e!3939416)))

(declare-fun c!1192016 () Bool)

(assert (=> b!6501231 (= c!1192016 (is-Cons!65309 (exprs!6262 (h!71758 zl!343))))))

(declare-fun b!6501232 () Bool)

(assert (=> b!6501232 (= e!3939416 EmptyExpr!16378)))

(assert (= (and d!2039909 res!2669890) b!6501227))

(assert (= (and d!2039909 c!1192015) b!6501226))

(assert (= (and d!2039909 (not c!1192015)) b!6501231))

(assert (= (and b!6501231 c!1192016) b!6501228))

(assert (= (and b!6501231 (not c!1192016)) b!6501232))

(assert (= (and d!2039909 res!2669891) b!6501225))

(assert (= (and b!6501225 c!1192014) b!6501230))

(assert (= (and b!6501225 (not c!1192014)) b!6501223))

(assert (= (and b!6501223 c!1192017) b!6501229))

(assert (= (and b!6501223 (not c!1192017)) b!6501224))

(declare-fun m!7288982 () Bool)

(assert (=> b!6501229 m!7288982))

(declare-fun m!7288984 () Bool)

(assert (=> b!6501228 m!7288984))

(assert (=> b!6501227 m!7288592))

(declare-fun m!7288986 () Bool)

(assert (=> b!6501225 m!7288986))

(declare-fun m!7288988 () Bool)

(assert (=> b!6501230 m!7288988))

(declare-fun m!7288990 () Bool)

(assert (=> b!6501224 m!7288990))

(declare-fun m!7288992 () Bool)

(assert (=> d!2039909 m!7288992))

(declare-fun m!7288994 () Bool)

(assert (=> d!2039909 m!7288994))

(declare-fun m!7288996 () Bool)

(assert (=> b!6501223 m!7288996))

(assert (=> b!6501223 m!7288996))

(declare-fun m!7288998 () Bool)

(assert (=> b!6501223 m!7288998))

(assert (=> b!6500830 d!2039909))

(assert (=> b!6500809 d!2039839))

(declare-fun e!3939423 () Bool)

(declare-fun d!2039911 () Bool)

(assert (=> d!2039911 (= (matchZipper!2390 (set.union lt!2391583 lt!2391605) (t!379069 s!2326)) e!3939423)))

(declare-fun res!2669894 () Bool)

(assert (=> d!2039911 (=> res!2669894 e!3939423)))

(assert (=> d!2039911 (= res!2669894 (matchZipper!2390 lt!2391583 (t!379069 s!2326)))))

(declare-fun lt!2391749 () Unit!158847)

(declare-fun choose!48261 ((Set Context!11524) (Set Context!11524) List!65435) Unit!158847)

(assert (=> d!2039911 (= lt!2391749 (choose!48261 lt!2391583 lt!2391605 (t!379069 s!2326)))))

(assert (=> d!2039911 (= (lemmaZipperConcatMatchesSameAsBothZippers!1209 lt!2391583 lt!2391605 (t!379069 s!2326)) lt!2391749)))

(declare-fun b!6501235 () Bool)

(assert (=> b!6501235 (= e!3939423 (matchZipper!2390 lt!2391605 (t!379069 s!2326)))))

(assert (= (and d!2039911 (not res!2669894)) b!6501235))

(assert (=> d!2039911 m!7288622))

(assert (=> d!2039911 m!7288620))

(declare-fun m!7289000 () Bool)

(assert (=> d!2039911 m!7289000))

(assert (=> b!6501235 m!7288570))

(assert (=> b!6500829 d!2039911))

(declare-fun d!2039913 () Bool)

(declare-fun c!1192018 () Bool)

(assert (=> d!2039913 (= c!1192018 (isEmpty!37515 (t!379069 s!2326)))))

(declare-fun e!3939424 () Bool)

(assert (=> d!2039913 (= (matchZipper!2390 lt!2391583 (t!379069 s!2326)) e!3939424)))

(declare-fun b!6501236 () Bool)

(assert (=> b!6501236 (= e!3939424 (nullableZipper!2133 lt!2391583))))

(declare-fun b!6501237 () Bool)

(assert (=> b!6501237 (= e!3939424 (matchZipper!2390 (derivationStepZipper!2344 lt!2391583 (head!13227 (t!379069 s!2326))) (tail!12312 (t!379069 s!2326))))))

(assert (= (and d!2039913 c!1192018) b!6501236))

(assert (= (and d!2039913 (not c!1192018)) b!6501237))

(assert (=> d!2039913 m!7288802))

(declare-fun m!7289002 () Bool)

(assert (=> b!6501236 m!7289002))

(assert (=> b!6501237 m!7288806))

(assert (=> b!6501237 m!7288806))

(declare-fun m!7289004 () Bool)

(assert (=> b!6501237 m!7289004))

(assert (=> b!6501237 m!7288810))

(assert (=> b!6501237 m!7289004))

(assert (=> b!6501237 m!7288810))

(declare-fun m!7289006 () Bool)

(assert (=> b!6501237 m!7289006))

(assert (=> b!6500829 d!2039913))

(declare-fun d!2039915 () Bool)

(declare-fun c!1192019 () Bool)

(assert (=> d!2039915 (= c!1192019 (isEmpty!37515 (t!379069 s!2326)))))

(declare-fun e!3939425 () Bool)

(assert (=> d!2039915 (= (matchZipper!2390 (set.union lt!2391583 lt!2391605) (t!379069 s!2326)) e!3939425)))

(declare-fun b!6501238 () Bool)

(assert (=> b!6501238 (= e!3939425 (nullableZipper!2133 (set.union lt!2391583 lt!2391605)))))

(declare-fun b!6501239 () Bool)

(assert (=> b!6501239 (= e!3939425 (matchZipper!2390 (derivationStepZipper!2344 (set.union lt!2391583 lt!2391605) (head!13227 (t!379069 s!2326))) (tail!12312 (t!379069 s!2326))))))

(assert (= (and d!2039915 c!1192019) b!6501238))

(assert (= (and d!2039915 (not c!1192019)) b!6501239))

(assert (=> d!2039915 m!7288802))

(declare-fun m!7289008 () Bool)

(assert (=> b!6501238 m!7289008))

(assert (=> b!6501239 m!7288806))

(assert (=> b!6501239 m!7288806))

(declare-fun m!7289010 () Bool)

(assert (=> b!6501239 m!7289010))

(assert (=> b!6501239 m!7288810))

(assert (=> b!6501239 m!7289010))

(assert (=> b!6501239 m!7288810))

(declare-fun m!7289012 () Bool)

(assert (=> b!6501239 m!7289012))

(assert (=> b!6500829 d!2039915))

(declare-fun bs!1651364 () Bool)

(declare-fun b!6501243 () Bool)

(assert (= bs!1651364 (and b!6501243 b!6500822)))

(declare-fun lambda!360303 () Int)

(assert (=> bs!1651364 (not (= lambda!360303 lambda!360261))))

(assert (=> bs!1651364 (not (= lambda!360303 lambda!360262))))

(declare-fun bs!1651365 () Bool)

(assert (= bs!1651365 (and b!6501243 b!6501195)))

(assert (=> bs!1651365 (= (and (= (reg!16707 r!7292) (reg!16707 lt!2391578)) (= r!7292 lt!2391578)) (= lambda!360303 lambda!360298))))

(declare-fun bs!1651366 () Bool)

(assert (= bs!1651366 (and b!6501243 b!6501196)))

(assert (=> bs!1651366 (not (= lambda!360303 lambda!360299))))

(assert (=> b!6501243 true))

(assert (=> b!6501243 true))

(declare-fun bs!1651367 () Bool)

(declare-fun b!6501244 () Bool)

(assert (= bs!1651367 (and b!6501244 b!6501243)))

(declare-fun lambda!360304 () Int)

(assert (=> bs!1651367 (not (= lambda!360304 lambda!360303))))

(declare-fun bs!1651368 () Bool)

(assert (= bs!1651368 (and b!6501244 b!6500822)))

(assert (=> bs!1651368 (= lambda!360304 lambda!360262)))

(assert (=> bs!1651368 (not (= lambda!360304 lambda!360261))))

(declare-fun bs!1651369 () Bool)

(assert (= bs!1651369 (and b!6501244 b!6501195)))

(assert (=> bs!1651369 (not (= lambda!360304 lambda!360298))))

(declare-fun bs!1651370 () Bool)

(assert (= bs!1651370 (and b!6501244 b!6501196)))

(assert (=> bs!1651370 (= (and (= (regOne!33268 r!7292) (regOne!33268 lt!2391578)) (= (regTwo!33268 r!7292) (regTwo!33268 lt!2391578))) (= lambda!360304 lambda!360299))))

(assert (=> b!6501244 true))

(assert (=> b!6501244 true))

(declare-fun d!2039917 () Bool)

(declare-fun c!1192023 () Bool)

(assert (=> d!2039917 (= c!1192023 (is-EmptyExpr!16378 r!7292))))

(declare-fun e!3939428 () Bool)

(assert (=> d!2039917 (= (matchRSpec!3479 r!7292 s!2326) e!3939428)))

(declare-fun b!6501240 () Bool)

(declare-fun res!2669897 () Bool)

(declare-fun e!3939426 () Bool)

(assert (=> b!6501240 (=> res!2669897 e!3939426)))

(declare-fun call!563347 () Bool)

(assert (=> b!6501240 (= res!2669897 call!563347)))

(declare-fun e!3939430 () Bool)

(assert (=> b!6501240 (= e!3939430 e!3939426)))

(declare-fun b!6501241 () Bool)

(declare-fun e!3939429 () Bool)

(assert (=> b!6501241 (= e!3939429 e!3939430)))

(declare-fun c!1192020 () Bool)

(assert (=> b!6501241 (= c!1192020 (is-Star!16378 r!7292))))

(declare-fun bm!563341 () Bool)

(assert (=> bm!563341 (= call!563347 (isEmpty!37515 s!2326))))

(declare-fun b!6501242 () Bool)

(declare-fun c!1192021 () Bool)

(assert (=> b!6501242 (= c!1192021 (is-Union!16378 r!7292))))

(declare-fun e!3939431 () Bool)

(assert (=> b!6501242 (= e!3939431 e!3939429)))

(declare-fun call!563346 () Bool)

(assert (=> b!6501243 (= e!3939426 call!563346)))

(assert (=> b!6501244 (= e!3939430 call!563346)))

(declare-fun b!6501245 () Bool)

(declare-fun e!3939432 () Bool)

(assert (=> b!6501245 (= e!3939432 (matchRSpec!3479 (regTwo!33269 r!7292) s!2326))))

(declare-fun b!6501246 () Bool)

(declare-fun e!3939427 () Bool)

(assert (=> b!6501246 (= e!3939428 e!3939427)))

(declare-fun res!2669896 () Bool)

(assert (=> b!6501246 (= res!2669896 (not (is-EmptyLang!16378 r!7292)))))

(assert (=> b!6501246 (=> (not res!2669896) (not e!3939427))))

(declare-fun b!6501247 () Bool)

(assert (=> b!6501247 (= e!3939431 (= s!2326 (Cons!65311 (c!1191918 r!7292) Nil!65311)))))

(declare-fun b!6501248 () Bool)

(assert (=> b!6501248 (= e!3939429 e!3939432)))

(declare-fun res!2669895 () Bool)

(assert (=> b!6501248 (= res!2669895 (matchRSpec!3479 (regOne!33269 r!7292) s!2326))))

(assert (=> b!6501248 (=> res!2669895 e!3939432)))

(declare-fun b!6501249 () Bool)

(declare-fun c!1192022 () Bool)

(assert (=> b!6501249 (= c!1192022 (is-ElementMatch!16378 r!7292))))

(assert (=> b!6501249 (= e!3939427 e!3939431)))

(declare-fun bm!563342 () Bool)

(assert (=> bm!563342 (= call!563346 (Exists!3448 (ite c!1192020 lambda!360303 lambda!360304)))))

(declare-fun b!6501250 () Bool)

(assert (=> b!6501250 (= e!3939428 call!563347)))

(assert (= (and d!2039917 c!1192023) b!6501250))

(assert (= (and d!2039917 (not c!1192023)) b!6501246))

(assert (= (and b!6501246 res!2669896) b!6501249))

(assert (= (and b!6501249 c!1192022) b!6501247))

(assert (= (and b!6501249 (not c!1192022)) b!6501242))

(assert (= (and b!6501242 c!1192021) b!6501248))

(assert (= (and b!6501242 (not c!1192021)) b!6501241))

(assert (= (and b!6501248 (not res!2669895)) b!6501245))

(assert (= (and b!6501241 c!1192020) b!6501240))

(assert (= (and b!6501241 (not c!1192020)) b!6501244))

(assert (= (and b!6501240 (not res!2669897)) b!6501243))

(assert (= (or b!6501243 b!6501244) bm!563342))

(assert (= (or b!6501250 b!6501240) bm!563341))

(assert (=> bm!563341 m!7288820))

(declare-fun m!7289014 () Bool)

(assert (=> b!6501245 m!7289014))

(declare-fun m!7289016 () Bool)

(assert (=> b!6501248 m!7289016))

(declare-fun m!7289018 () Bool)

(assert (=> bm!563342 m!7289018))

(assert (=> b!6500803 d!2039917))

(declare-fun b!6501251 () Bool)

(declare-fun e!3939436 () Bool)

(declare-fun lt!2391750 () Bool)

(assert (=> b!6501251 (= e!3939436 (not lt!2391750))))

(declare-fun b!6501252 () Bool)

(declare-fun e!3939439 () Bool)

(declare-fun call!563348 () Bool)

(assert (=> b!6501252 (= e!3939439 (= lt!2391750 call!563348))))

(declare-fun b!6501253 () Bool)

(declare-fun e!3939438 () Bool)

(assert (=> b!6501253 (= e!3939438 (not (= (head!13227 s!2326) (c!1191918 r!7292))))))

(declare-fun b!6501255 () Bool)

(declare-fun res!2669900 () Bool)

(declare-fun e!3939434 () Bool)

(assert (=> b!6501255 (=> (not res!2669900) (not e!3939434))))

(assert (=> b!6501255 (= res!2669900 (not call!563348))))

(declare-fun b!6501256 () Bool)

(declare-fun e!3939435 () Bool)

(assert (=> b!6501256 (= e!3939435 (nullable!6371 r!7292))))

(declare-fun b!6501257 () Bool)

(declare-fun e!3939433 () Bool)

(assert (=> b!6501257 (= e!3939433 e!3939438)))

(declare-fun res!2669901 () Bool)

(assert (=> b!6501257 (=> res!2669901 e!3939438)))

(assert (=> b!6501257 (= res!2669901 call!563348)))

(declare-fun b!6501258 () Bool)

(assert (=> b!6501258 (= e!3939439 e!3939436)))

(declare-fun c!1192025 () Bool)

(assert (=> b!6501258 (= c!1192025 (is-EmptyLang!16378 r!7292))))

(declare-fun bm!563343 () Bool)

(assert (=> bm!563343 (= call!563348 (isEmpty!37515 s!2326))))

(declare-fun b!6501259 () Bool)

(assert (=> b!6501259 (= e!3939435 (matchR!8561 (derivativeStep!5072 r!7292 (head!13227 s!2326)) (tail!12312 s!2326)))))

(declare-fun b!6501260 () Bool)

(declare-fun res!2669899 () Bool)

(declare-fun e!3939437 () Bool)

(assert (=> b!6501260 (=> res!2669899 e!3939437)))

(assert (=> b!6501260 (= res!2669899 e!3939434)))

(declare-fun res!2669905 () Bool)

(assert (=> b!6501260 (=> (not res!2669905) (not e!3939434))))

(assert (=> b!6501260 (= res!2669905 lt!2391750)))

(declare-fun b!6501261 () Bool)

(assert (=> b!6501261 (= e!3939437 e!3939433)))

(declare-fun res!2669904 () Bool)

(assert (=> b!6501261 (=> (not res!2669904) (not e!3939433))))

(assert (=> b!6501261 (= res!2669904 (not lt!2391750))))

(declare-fun b!6501262 () Bool)

(declare-fun res!2669903 () Bool)

(assert (=> b!6501262 (=> res!2669903 e!3939437)))

(assert (=> b!6501262 (= res!2669903 (not (is-ElementMatch!16378 r!7292)))))

(assert (=> b!6501262 (= e!3939436 e!3939437)))

(declare-fun b!6501263 () Bool)

(declare-fun res!2669898 () Bool)

(assert (=> b!6501263 (=> (not res!2669898) (not e!3939434))))

(assert (=> b!6501263 (= res!2669898 (isEmpty!37515 (tail!12312 s!2326)))))

(declare-fun b!6501264 () Bool)

(declare-fun res!2669902 () Bool)

(assert (=> b!6501264 (=> res!2669902 e!3939438)))

(assert (=> b!6501264 (= res!2669902 (not (isEmpty!37515 (tail!12312 s!2326))))))

(declare-fun d!2039919 () Bool)

(assert (=> d!2039919 e!3939439))

(declare-fun c!1192024 () Bool)

(assert (=> d!2039919 (= c!1192024 (is-EmptyExpr!16378 r!7292))))

(assert (=> d!2039919 (= lt!2391750 e!3939435)))

(declare-fun c!1192026 () Bool)

(assert (=> d!2039919 (= c!1192026 (isEmpty!37515 s!2326))))

(assert (=> d!2039919 (validRegex!8114 r!7292)))

(assert (=> d!2039919 (= (matchR!8561 r!7292 s!2326) lt!2391750)))

(declare-fun b!6501254 () Bool)

(assert (=> b!6501254 (= e!3939434 (= (head!13227 s!2326) (c!1191918 r!7292)))))

(assert (= (and d!2039919 c!1192026) b!6501256))

(assert (= (and d!2039919 (not c!1192026)) b!6501259))

(assert (= (and d!2039919 c!1192024) b!6501252))

(assert (= (and d!2039919 (not c!1192024)) b!6501258))

(assert (= (and b!6501258 c!1192025) b!6501251))

(assert (= (and b!6501258 (not c!1192025)) b!6501262))

(assert (= (and b!6501262 (not res!2669903)) b!6501260))

(assert (= (and b!6501260 res!2669905) b!6501255))

(assert (= (and b!6501255 res!2669900) b!6501263))

(assert (= (and b!6501263 res!2669898) b!6501254))

(assert (= (and b!6501260 (not res!2669899)) b!6501261))

(assert (= (and b!6501261 res!2669904) b!6501257))

(assert (= (and b!6501257 (not res!2669901)) b!6501264))

(assert (= (and b!6501264 (not res!2669902)) b!6501253))

(assert (= (or b!6501252 b!6501255 b!6501257) bm!563343))

(declare-fun m!7289020 () Bool)

(assert (=> b!6501256 m!7289020))

(assert (=> b!6501259 m!7288824))

(assert (=> b!6501259 m!7288824))

(declare-fun m!7289022 () Bool)

(assert (=> b!6501259 m!7289022))

(assert (=> b!6501259 m!7288828))

(assert (=> b!6501259 m!7289022))

(assert (=> b!6501259 m!7288828))

(declare-fun m!7289024 () Bool)

(assert (=> b!6501259 m!7289024))

(assert (=> bm!563343 m!7288820))

(assert (=> b!6501254 m!7288824))

(assert (=> b!6501253 m!7288824))

(assert (=> b!6501263 m!7288828))

(assert (=> b!6501263 m!7288828))

(assert (=> b!6501263 m!7288964))

(assert (=> b!6501264 m!7288828))

(assert (=> b!6501264 m!7288828))

(assert (=> b!6501264 m!7288964))

(assert (=> d!2039919 m!7288820))

(assert (=> d!2039919 m!7288630))

(assert (=> b!6500803 d!2039919))

(declare-fun d!2039921 () Bool)

(assert (=> d!2039921 (= (matchR!8561 r!7292 s!2326) (matchRSpec!3479 r!7292 s!2326))))

(declare-fun lt!2391751 () Unit!158847)

(assert (=> d!2039921 (= lt!2391751 (choose!48258 r!7292 s!2326))))

(assert (=> d!2039921 (validRegex!8114 r!7292)))

(assert (=> d!2039921 (= (mainMatchTheorem!3479 r!7292 s!2326) lt!2391751)))

(declare-fun bs!1651371 () Bool)

(assert (= bs!1651371 d!2039921))

(assert (=> bs!1651371 m!7288610))

(assert (=> bs!1651371 m!7288608))

(declare-fun m!7289026 () Bool)

(assert (=> bs!1651371 m!7289026))

(assert (=> bs!1651371 m!7288630))

(assert (=> b!6500803 d!2039921))

(declare-fun d!2039923 () Bool)

(assert (=> d!2039923 (= (isEmpty!37512 (t!379068 zl!343)) (is-Nil!65310 (t!379068 zl!343)))))

(assert (=> b!6500823 d!2039923))

(declare-fun b!6501283 () Bool)

(declare-fun e!3939450 () Bool)

(declare-fun lt!2391758 () Option!16269)

(assert (=> b!6501283 (= e!3939450 (not (isDefined!12972 lt!2391758)))))

(declare-fun b!6501284 () Bool)

(declare-fun e!3939451 () Option!16269)

(assert (=> b!6501284 (= e!3939451 None!16268)))

(declare-fun b!6501285 () Bool)

(declare-fun e!3939452 () Option!16269)

(assert (=> b!6501285 (= e!3939452 (Some!16268 (tuple2!66715 Nil!65311 s!2326)))))

(declare-fun b!6501286 () Bool)

(declare-fun res!2669917 () Bool)

(declare-fun e!3939453 () Bool)

(assert (=> b!6501286 (=> (not res!2669917) (not e!3939453))))

(declare-fun get!22651 (Option!16269) tuple2!66714)

(assert (=> b!6501286 (= res!2669917 (matchR!8561 (regOne!33268 r!7292) (_1!36660 (get!22651 lt!2391758))))))

(declare-fun b!6501287 () Bool)

(declare-fun lt!2391760 () Unit!158847)

(declare-fun lt!2391759 () Unit!158847)

(assert (=> b!6501287 (= lt!2391760 lt!2391759)))

(declare-fun ++!14462 (List!65435 List!65435) List!65435)

(assert (=> b!6501287 (= (++!14462 (++!14462 Nil!65311 (Cons!65311 (h!71759 s!2326) Nil!65311)) (t!379069 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2531 (List!65435 C!33026 List!65435 List!65435) Unit!158847)

(assert (=> b!6501287 (= lt!2391759 (lemmaMoveElementToOtherListKeepsConcatEq!2531 Nil!65311 (h!71759 s!2326) (t!379069 s!2326) s!2326))))

(assert (=> b!6501287 (= e!3939451 (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) (++!14462 Nil!65311 (Cons!65311 (h!71759 s!2326) Nil!65311)) (t!379069 s!2326) s!2326))))

(declare-fun b!6501288 () Bool)

(assert (=> b!6501288 (= e!3939452 e!3939451)))

(declare-fun c!1192032 () Bool)

(assert (=> b!6501288 (= c!1192032 (is-Nil!65311 s!2326))))

(declare-fun b!6501290 () Bool)

(assert (=> b!6501290 (= e!3939453 (= (++!14462 (_1!36660 (get!22651 lt!2391758)) (_2!36660 (get!22651 lt!2391758))) s!2326))))

(declare-fun b!6501291 () Bool)

(declare-fun e!3939454 () Bool)

(assert (=> b!6501291 (= e!3939454 (matchR!8561 (regTwo!33268 r!7292) s!2326))))

(declare-fun d!2039925 () Bool)

(assert (=> d!2039925 e!3939450))

(declare-fun res!2669916 () Bool)

(assert (=> d!2039925 (=> res!2669916 e!3939450)))

(assert (=> d!2039925 (= res!2669916 e!3939453)))

(declare-fun res!2669918 () Bool)

(assert (=> d!2039925 (=> (not res!2669918) (not e!3939453))))

(assert (=> d!2039925 (= res!2669918 (isDefined!12972 lt!2391758))))

(assert (=> d!2039925 (= lt!2391758 e!3939452)))

(declare-fun c!1192031 () Bool)

(assert (=> d!2039925 (= c!1192031 e!3939454)))

(declare-fun res!2669920 () Bool)

(assert (=> d!2039925 (=> (not res!2669920) (not e!3939454))))

(assert (=> d!2039925 (= res!2669920 (matchR!8561 (regOne!33268 r!7292) Nil!65311))))

(assert (=> d!2039925 (validRegex!8114 (regOne!33268 r!7292))))

(assert (=> d!2039925 (= (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) Nil!65311 s!2326 s!2326) lt!2391758)))

(declare-fun b!6501289 () Bool)

(declare-fun res!2669919 () Bool)

(assert (=> b!6501289 (=> (not res!2669919) (not e!3939453))))

(assert (=> b!6501289 (= res!2669919 (matchR!8561 (regTwo!33268 r!7292) (_2!36660 (get!22651 lt!2391758))))))

(assert (= (and d!2039925 res!2669920) b!6501291))

(assert (= (and d!2039925 c!1192031) b!6501285))

(assert (= (and d!2039925 (not c!1192031)) b!6501288))

(assert (= (and b!6501288 c!1192032) b!6501284))

(assert (= (and b!6501288 (not c!1192032)) b!6501287))

(assert (= (and d!2039925 res!2669918) b!6501286))

(assert (= (and b!6501286 res!2669917) b!6501289))

(assert (= (and b!6501289 res!2669919) b!6501290))

(assert (= (and d!2039925 (not res!2669916)) b!6501283))

(declare-fun m!7289030 () Bool)

(assert (=> d!2039925 m!7289030))

(declare-fun m!7289032 () Bool)

(assert (=> d!2039925 m!7289032))

(declare-fun m!7289034 () Bool)

(assert (=> d!2039925 m!7289034))

(declare-fun m!7289036 () Bool)

(assert (=> b!6501289 m!7289036))

(declare-fun m!7289038 () Bool)

(assert (=> b!6501289 m!7289038))

(assert (=> b!6501290 m!7289036))

(declare-fun m!7289040 () Bool)

(assert (=> b!6501290 m!7289040))

(declare-fun m!7289042 () Bool)

(assert (=> b!6501291 m!7289042))

(declare-fun m!7289044 () Bool)

(assert (=> b!6501287 m!7289044))

(assert (=> b!6501287 m!7289044))

(declare-fun m!7289046 () Bool)

(assert (=> b!6501287 m!7289046))

(declare-fun m!7289048 () Bool)

(assert (=> b!6501287 m!7289048))

(assert (=> b!6501287 m!7289044))

(declare-fun m!7289050 () Bool)

(assert (=> b!6501287 m!7289050))

(assert (=> b!6501283 m!7289030))

(assert (=> b!6501286 m!7289036))

(declare-fun m!7289052 () Bool)

(assert (=> b!6501286 m!7289052))

(assert (=> b!6500822 d!2039925))

(declare-fun d!2039931 () Bool)

(declare-fun choose!48263 (Int) Bool)

(assert (=> d!2039931 (= (Exists!3448 lambda!360262) (choose!48263 lambda!360262))))

(declare-fun bs!1651373 () Bool)

(assert (= bs!1651373 d!2039931))

(declare-fun m!7289054 () Bool)

(assert (=> bs!1651373 m!7289054))

(assert (=> b!6500822 d!2039931))

(declare-fun d!2039933 () Bool)

(assert (=> d!2039933 (= (Exists!3448 lambda!360261) (choose!48263 lambda!360261))))

(declare-fun bs!1651374 () Bool)

(assert (= bs!1651374 d!2039933))

(declare-fun m!7289056 () Bool)

(assert (=> bs!1651374 m!7289056))

(assert (=> b!6500822 d!2039933))

(declare-fun bs!1651375 () Bool)

(declare-fun d!2039935 () Bool)

(assert (= bs!1651375 (and d!2039935 b!6501244)))

(declare-fun lambda!360307 () Int)

(assert (=> bs!1651375 (not (= lambda!360307 lambda!360304))))

(declare-fun bs!1651376 () Bool)

(assert (= bs!1651376 (and d!2039935 b!6501243)))

(assert (=> bs!1651376 (not (= lambda!360307 lambda!360303))))

(declare-fun bs!1651377 () Bool)

(assert (= bs!1651377 (and d!2039935 b!6500822)))

(assert (=> bs!1651377 (not (= lambda!360307 lambda!360262))))

(assert (=> bs!1651377 (= lambda!360307 lambda!360261)))

(declare-fun bs!1651378 () Bool)

(assert (= bs!1651378 (and d!2039935 b!6501195)))

(assert (=> bs!1651378 (not (= lambda!360307 lambda!360298))))

(declare-fun bs!1651379 () Bool)

(assert (= bs!1651379 (and d!2039935 b!6501196)))

(assert (=> bs!1651379 (not (= lambda!360307 lambda!360299))))

(assert (=> d!2039935 true))

(assert (=> d!2039935 true))

(assert (=> d!2039935 true))

(assert (=> d!2039935 (= (isDefined!12972 (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) Nil!65311 s!2326 s!2326)) (Exists!3448 lambda!360307))))

(declare-fun lt!2391763 () Unit!158847)

(declare-fun choose!48264 (Regex!16378 Regex!16378 List!65435) Unit!158847)

(assert (=> d!2039935 (= lt!2391763 (choose!48264 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326))))

(assert (=> d!2039935 (validRegex!8114 (regOne!33268 r!7292))))

(assert (=> d!2039935 (= (lemmaFindConcatSeparationEquivalentToExists!2447 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326) lt!2391763)))

(declare-fun bs!1651380 () Bool)

(assert (= bs!1651380 d!2039935))

(assert (=> bs!1651380 m!7288666))

(assert (=> bs!1651380 m!7288668))

(assert (=> bs!1651380 m!7289034))

(declare-fun m!7289058 () Bool)

(assert (=> bs!1651380 m!7289058))

(assert (=> bs!1651380 m!7288666))

(declare-fun m!7289060 () Bool)

(assert (=> bs!1651380 m!7289060))

(assert (=> b!6500822 d!2039935))

(declare-fun bs!1651382 () Bool)

(declare-fun d!2039937 () Bool)

(assert (= bs!1651382 (and d!2039937 b!6501244)))

(declare-fun lambda!360314 () Int)

(assert (=> bs!1651382 (not (= lambda!360314 lambda!360304))))

(declare-fun bs!1651383 () Bool)

(assert (= bs!1651383 (and d!2039937 b!6501243)))

(assert (=> bs!1651383 (not (= lambda!360314 lambda!360303))))

(declare-fun bs!1651384 () Bool)

(assert (= bs!1651384 (and d!2039937 d!2039935)))

(assert (=> bs!1651384 (= lambda!360314 lambda!360307)))

(declare-fun bs!1651386 () Bool)

(assert (= bs!1651386 (and d!2039937 b!6500822)))

(assert (=> bs!1651386 (not (= lambda!360314 lambda!360262))))

(assert (=> bs!1651386 (= lambda!360314 lambda!360261)))

(declare-fun bs!1651387 () Bool)

(assert (= bs!1651387 (and d!2039937 b!6501195)))

(assert (=> bs!1651387 (not (= lambda!360314 lambda!360298))))

(declare-fun bs!1651388 () Bool)

(assert (= bs!1651388 (and d!2039937 b!6501196)))

(assert (=> bs!1651388 (not (= lambda!360314 lambda!360299))))

(assert (=> d!2039937 true))

(assert (=> d!2039937 true))

(assert (=> d!2039937 true))

(declare-fun bs!1651390 () Bool)

(assert (= bs!1651390 d!2039937))

(declare-fun lambda!360316 () Int)

(assert (=> bs!1651390 (not (= lambda!360316 lambda!360314))))

(assert (=> bs!1651382 (= lambda!360316 lambda!360304)))

(assert (=> bs!1651383 (not (= lambda!360316 lambda!360303))))

(assert (=> bs!1651384 (not (= lambda!360316 lambda!360307))))

(assert (=> bs!1651386 (= lambda!360316 lambda!360262)))

(assert (=> bs!1651386 (not (= lambda!360316 lambda!360261))))

(assert (=> bs!1651387 (not (= lambda!360316 lambda!360298))))

(assert (=> bs!1651388 (= (and (= (regOne!33268 r!7292) (regOne!33268 lt!2391578)) (= (regTwo!33268 r!7292) (regTwo!33268 lt!2391578))) (= lambda!360316 lambda!360299))))

(assert (=> d!2039937 true))

(assert (=> d!2039937 true))

(assert (=> d!2039937 true))

(assert (=> d!2039937 (= (Exists!3448 lambda!360314) (Exists!3448 lambda!360316))))

(declare-fun lt!2391769 () Unit!158847)

(declare-fun choose!48265 (Regex!16378 Regex!16378 List!65435) Unit!158847)

(assert (=> d!2039937 (= lt!2391769 (choose!48265 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326))))

(assert (=> d!2039937 (validRegex!8114 (regOne!33268 r!7292))))

(assert (=> d!2039937 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1985 (regOne!33268 r!7292) (regTwo!33268 r!7292) s!2326) lt!2391769)))

(declare-fun m!7289074 () Bool)

(assert (=> bs!1651390 m!7289074))

(declare-fun m!7289076 () Bool)

(assert (=> bs!1651390 m!7289076))

(declare-fun m!7289078 () Bool)

(assert (=> bs!1651390 m!7289078))

(assert (=> bs!1651390 m!7289034))

(assert (=> b!6500822 d!2039937))

(declare-fun d!2039945 () Bool)

(declare-fun isEmpty!37517 (Option!16269) Bool)

(assert (=> d!2039945 (= (isDefined!12972 (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) Nil!65311 s!2326 s!2326)) (not (isEmpty!37517 (findConcatSeparation!2683 (regOne!33268 r!7292) (regTwo!33268 r!7292) Nil!65311 s!2326 s!2326))))))

(declare-fun bs!1651391 () Bool)

(assert (= bs!1651391 d!2039945))

(assert (=> bs!1651391 m!7288666))

(declare-fun m!7289080 () Bool)

(assert (=> bs!1651391 m!7289080))

(assert (=> b!6500822 d!2039945))

(declare-fun d!2039947 () Bool)

(declare-fun lt!2391770 () Regex!16378)

(assert (=> d!2039947 (validRegex!8114 lt!2391770)))

(assert (=> d!2039947 (= lt!2391770 (generalisedUnion!2222 (unfocusZipperList!1799 (Cons!65310 lt!2391577 Nil!65310))))))

(assert (=> d!2039947 (= (unfocusZipper!2120 (Cons!65310 lt!2391577 Nil!65310)) lt!2391770)))

(declare-fun bs!1651392 () Bool)

(assert (= bs!1651392 d!2039947))

(declare-fun m!7289082 () Bool)

(assert (=> bs!1651392 m!7289082))

(declare-fun m!7289084 () Bool)

(assert (=> bs!1651392 m!7289084))

(assert (=> bs!1651392 m!7289084))

(declare-fun m!7289086 () Bool)

(assert (=> bs!1651392 m!7289086))

(assert (=> b!6500827 d!2039947))

(assert (=> b!6500826 d!2039913))

(declare-fun bs!1651393 () Bool)

(declare-fun d!2039949 () Bool)

(assert (= bs!1651393 (and d!2039949 d!2039893)))

(declare-fun lambda!360319 () Int)

(assert (=> bs!1651393 (= lambda!360319 lambda!360292)))

(declare-fun bs!1651394 () Bool)

(assert (= bs!1651394 (and d!2039949 d!2039909)))

(assert (=> bs!1651394 (= lambda!360319 lambda!360302)))

(declare-fun bs!1651395 () Bool)

(assert (= bs!1651395 (and d!2039949 d!2039871)))

(assert (=> bs!1651395 (= lambda!360319 lambda!360291)))

(declare-fun bs!1651396 () Bool)

(assert (= bs!1651396 (and d!2039949 b!6500796)))

(assert (=> bs!1651396 (= lambda!360319 lambda!360264)))

(declare-fun bs!1651397 () Bool)

(assert (= bs!1651397 (and d!2039949 d!2039897)))

(assert (=> bs!1651397 (= lambda!360319 lambda!360293)))

(declare-fun bs!1651398 () Bool)

(assert (= bs!1651398 (and d!2039949 d!2039837)))

(assert (=> bs!1651398 (= lambda!360319 lambda!360287)))

(declare-fun b!6501344 () Bool)

(declare-fun e!3939489 () Regex!16378)

(declare-fun e!3939487 () Regex!16378)

(assert (=> b!6501344 (= e!3939489 e!3939487)))

(declare-fun c!1192050 () Bool)

(assert (=> b!6501344 (= c!1192050 (is-Cons!65309 (unfocusZipperList!1799 zl!343)))))

(declare-fun b!6501345 () Bool)

(assert (=> b!6501345 (= e!3939487 (Union!16378 (h!71757 (unfocusZipperList!1799 zl!343)) (generalisedUnion!2222 (t!379067 (unfocusZipperList!1799 zl!343)))))))

(declare-fun b!6501346 () Bool)

(declare-fun e!3939485 () Bool)

(declare-fun lt!2391776 () Regex!16378)

(declare-fun isEmptyLang!1776 (Regex!16378) Bool)

(assert (=> b!6501346 (= e!3939485 (isEmptyLang!1776 lt!2391776))))

(declare-fun b!6501347 () Bool)

(declare-fun e!3939490 () Bool)

(assert (=> b!6501347 (= e!3939485 e!3939490)))

(declare-fun c!1192051 () Bool)

(assert (=> b!6501347 (= c!1192051 (isEmpty!37511 (tail!12313 (unfocusZipperList!1799 zl!343))))))

(declare-fun b!6501348 () Bool)

(assert (=> b!6501348 (= e!3939487 EmptyLang!16378)))

(declare-fun b!6501349 () Bool)

(assert (=> b!6501349 (= e!3939489 (h!71757 (unfocusZipperList!1799 zl!343)))))

(declare-fun e!3939486 () Bool)

(assert (=> d!2039949 e!3939486))

(declare-fun res!2669944 () Bool)

(assert (=> d!2039949 (=> (not res!2669944) (not e!3939486))))

(assert (=> d!2039949 (= res!2669944 (validRegex!8114 lt!2391776))))

(assert (=> d!2039949 (= lt!2391776 e!3939489)))

(declare-fun c!1192052 () Bool)

(declare-fun e!3939488 () Bool)

(assert (=> d!2039949 (= c!1192052 e!3939488)))

(declare-fun res!2669943 () Bool)

(assert (=> d!2039949 (=> (not res!2669943) (not e!3939488))))

(assert (=> d!2039949 (= res!2669943 (is-Cons!65309 (unfocusZipperList!1799 zl!343)))))

(assert (=> d!2039949 (forall!15559 (unfocusZipperList!1799 zl!343) lambda!360319)))

(assert (=> d!2039949 (= (generalisedUnion!2222 (unfocusZipperList!1799 zl!343)) lt!2391776)))

(declare-fun b!6501350 () Bool)

(assert (=> b!6501350 (= e!3939488 (isEmpty!37511 (t!379067 (unfocusZipperList!1799 zl!343))))))

(declare-fun b!6501351 () Bool)

(declare-fun isUnion!1206 (Regex!16378) Bool)

(assert (=> b!6501351 (= e!3939490 (isUnion!1206 lt!2391776))))

(declare-fun b!6501352 () Bool)

(assert (=> b!6501352 (= e!3939486 e!3939485)))

(declare-fun c!1192049 () Bool)

(assert (=> b!6501352 (= c!1192049 (isEmpty!37511 (unfocusZipperList!1799 zl!343)))))

(declare-fun b!6501353 () Bool)

(assert (=> b!6501353 (= e!3939490 (= lt!2391776 (head!13228 (unfocusZipperList!1799 zl!343))))))

(assert (= (and d!2039949 res!2669943) b!6501350))

(assert (= (and d!2039949 c!1192052) b!6501349))

(assert (= (and d!2039949 (not c!1192052)) b!6501344))

(assert (= (and b!6501344 c!1192050) b!6501345))

(assert (= (and b!6501344 (not c!1192050)) b!6501348))

(assert (= (and d!2039949 res!2669944) b!6501352))

(assert (= (and b!6501352 c!1192049) b!6501346))

(assert (= (and b!6501352 (not c!1192049)) b!6501347))

(assert (= (and b!6501347 c!1192051) b!6501353))

(assert (= (and b!6501347 (not c!1192051)) b!6501351))

(declare-fun m!7289090 () Bool)

(assert (=> b!6501346 m!7289090))

(declare-fun m!7289092 () Bool)

(assert (=> d!2039949 m!7289092))

(assert (=> d!2039949 m!7288596))

(declare-fun m!7289094 () Bool)

(assert (=> d!2039949 m!7289094))

(assert (=> b!6501352 m!7288596))

(declare-fun m!7289096 () Bool)

(assert (=> b!6501352 m!7289096))

(declare-fun m!7289098 () Bool)

(assert (=> b!6501351 m!7289098))

(assert (=> b!6501347 m!7288596))

(declare-fun m!7289100 () Bool)

(assert (=> b!6501347 m!7289100))

(assert (=> b!6501347 m!7289100))

(declare-fun m!7289102 () Bool)

(assert (=> b!6501347 m!7289102))

(declare-fun m!7289104 () Bool)

(assert (=> b!6501350 m!7289104))

(assert (=> b!6501353 m!7288596))

(declare-fun m!7289106 () Bool)

(assert (=> b!6501353 m!7289106))

(declare-fun m!7289108 () Bool)

(assert (=> b!6501345 m!7289108))

(assert (=> b!6500804 d!2039949))

(declare-fun bs!1651399 () Bool)

(declare-fun d!2039953 () Bool)

(assert (= bs!1651399 (and d!2039953 d!2039893)))

(declare-fun lambda!360322 () Int)

(assert (=> bs!1651399 (= lambda!360322 lambda!360292)))

(declare-fun bs!1651400 () Bool)

(assert (= bs!1651400 (and d!2039953 d!2039909)))

(assert (=> bs!1651400 (= lambda!360322 lambda!360302)))

(declare-fun bs!1651401 () Bool)

(assert (= bs!1651401 (and d!2039953 d!2039871)))

(assert (=> bs!1651401 (= lambda!360322 lambda!360291)))

(declare-fun bs!1651402 () Bool)

(assert (= bs!1651402 (and d!2039953 d!2039949)))

(assert (=> bs!1651402 (= lambda!360322 lambda!360319)))

(declare-fun bs!1651403 () Bool)

(assert (= bs!1651403 (and d!2039953 b!6500796)))

(assert (=> bs!1651403 (= lambda!360322 lambda!360264)))

(declare-fun bs!1651404 () Bool)

(assert (= bs!1651404 (and d!2039953 d!2039897)))

(assert (=> bs!1651404 (= lambda!360322 lambda!360293)))

(declare-fun bs!1651405 () Bool)

(assert (= bs!1651405 (and d!2039953 d!2039837)))

(assert (=> bs!1651405 (= lambda!360322 lambda!360287)))

(declare-fun lt!2391779 () List!65433)

(assert (=> d!2039953 (forall!15559 lt!2391779 lambda!360322)))

(declare-fun e!3939497 () List!65433)

(assert (=> d!2039953 (= lt!2391779 e!3939497)))

(declare-fun c!1192059 () Bool)

(assert (=> d!2039953 (= c!1192059 (is-Cons!65310 zl!343))))

(assert (=> d!2039953 (= (unfocusZipperList!1799 zl!343) lt!2391779)))

(declare-fun b!6501366 () Bool)

(assert (=> b!6501366 (= e!3939497 (Cons!65309 (generalisedConcat!1975 (exprs!6262 (h!71758 zl!343))) (unfocusZipperList!1799 (t!379068 zl!343))))))

(declare-fun b!6501367 () Bool)

(assert (=> b!6501367 (= e!3939497 Nil!65309)))

(assert (= (and d!2039953 c!1192059) b!6501366))

(assert (= (and d!2039953 (not c!1192059)) b!6501367))

(declare-fun m!7289128 () Bool)

(assert (=> d!2039953 m!7289128))

(assert (=> b!6501366 m!7288624))

(declare-fun m!7289130 () Bool)

(assert (=> b!6501366 m!7289130))

(assert (=> b!6500804 d!2039953))

(declare-fun d!2039959 () Bool)

(declare-fun lt!2391780 () Regex!16378)

(assert (=> d!2039959 (validRegex!8114 lt!2391780)))

(assert (=> d!2039959 (= lt!2391780 (generalisedUnion!2222 (unfocusZipperList!1799 zl!343)))))

(assert (=> d!2039959 (= (unfocusZipper!2120 zl!343) lt!2391780)))

(declare-fun bs!1651406 () Bool)

(assert (= bs!1651406 d!2039959))

(declare-fun m!7289132 () Bool)

(assert (=> bs!1651406 m!7289132))

(assert (=> bs!1651406 m!7288596))

(assert (=> bs!1651406 m!7288596))

(assert (=> bs!1651406 m!7288598))

(assert (=> b!6500825 d!2039959))

(declare-fun b!6501372 () Bool)

(declare-fun e!3939500 () Bool)

(declare-fun tp!1798465 () Bool)

(assert (=> b!6501372 (= e!3939500 (and tp_is_empty!42009 tp!1798465))))

(assert (=> b!6500824 (= tp!1798420 e!3939500)))

(assert (= (and b!6500824 (is-Cons!65311 (t!379069 s!2326))) b!6501372))

(declare-fun condSetEmpty!44318 () Bool)

(assert (=> setNonEmpty!44312 (= condSetEmpty!44318 (= setRest!44312 (as set.empty (Set Context!11524))))))

(declare-fun setRes!44318 () Bool)

(assert (=> setNonEmpty!44312 (= tp!1798428 setRes!44318)))

(declare-fun setIsEmpty!44318 () Bool)

(assert (=> setIsEmpty!44318 setRes!44318))

(declare-fun tp!1798471 () Bool)

(declare-fun e!3939503 () Bool)

(declare-fun setElem!44318 () Context!11524)

(declare-fun setNonEmpty!44318 () Bool)

(assert (=> setNonEmpty!44318 (= setRes!44318 (and tp!1798471 (inv!84193 setElem!44318) e!3939503))))

(declare-fun setRest!44318 () (Set Context!11524))

(assert (=> setNonEmpty!44318 (= setRest!44312 (set.union (set.insert setElem!44318 (as set.empty (Set Context!11524))) setRest!44318))))

(declare-fun b!6501377 () Bool)

(declare-fun tp!1798470 () Bool)

(assert (=> b!6501377 (= e!3939503 tp!1798470)))

(assert (= (and setNonEmpty!44312 condSetEmpty!44318) setIsEmpty!44318))

(assert (= (and setNonEmpty!44312 (not condSetEmpty!44318)) setNonEmpty!44318))

(assert (= setNonEmpty!44318 b!6501377))

(declare-fun m!7289136 () Bool)

(assert (=> setNonEmpty!44318 m!7289136))

(declare-fun e!3939506 () Bool)

(assert (=> b!6500813 (= tp!1798425 e!3939506)))

(declare-fun b!6501388 () Bool)

(assert (=> b!6501388 (= e!3939506 tp_is_empty!42009)))

(declare-fun b!6501391 () Bool)

(declare-fun tp!1798482 () Bool)

(declare-fun tp!1798486 () Bool)

(assert (=> b!6501391 (= e!3939506 (and tp!1798482 tp!1798486))))

(declare-fun b!6501389 () Bool)

(declare-fun tp!1798485 () Bool)

(declare-fun tp!1798483 () Bool)

(assert (=> b!6501389 (= e!3939506 (and tp!1798485 tp!1798483))))

(declare-fun b!6501390 () Bool)

(declare-fun tp!1798484 () Bool)

(assert (=> b!6501390 (= e!3939506 tp!1798484)))

(assert (= (and b!6500813 (is-ElementMatch!16378 (regOne!33268 r!7292))) b!6501388))

(assert (= (and b!6500813 (is-Concat!25223 (regOne!33268 r!7292))) b!6501389))

(assert (= (and b!6500813 (is-Star!16378 (regOne!33268 r!7292))) b!6501390))

(assert (= (and b!6500813 (is-Union!16378 (regOne!33268 r!7292))) b!6501391))

(declare-fun e!3939507 () Bool)

(assert (=> b!6500813 (= tp!1798422 e!3939507)))

(declare-fun b!6501392 () Bool)

(assert (=> b!6501392 (= e!3939507 tp_is_empty!42009)))

(declare-fun b!6501395 () Bool)

(declare-fun tp!1798487 () Bool)

(declare-fun tp!1798491 () Bool)

(assert (=> b!6501395 (= e!3939507 (and tp!1798487 tp!1798491))))

(declare-fun b!6501393 () Bool)

(declare-fun tp!1798490 () Bool)

(declare-fun tp!1798488 () Bool)

(assert (=> b!6501393 (= e!3939507 (and tp!1798490 tp!1798488))))

(declare-fun b!6501394 () Bool)

(declare-fun tp!1798489 () Bool)

(assert (=> b!6501394 (= e!3939507 tp!1798489)))

(assert (= (and b!6500813 (is-ElementMatch!16378 (regTwo!33268 r!7292))) b!6501392))

(assert (= (and b!6500813 (is-Concat!25223 (regTwo!33268 r!7292))) b!6501393))

(assert (= (and b!6500813 (is-Star!16378 (regTwo!33268 r!7292))) b!6501394))

(assert (= (and b!6500813 (is-Union!16378 (regTwo!33268 r!7292))) b!6501395))

(declare-fun b!6501403 () Bool)

(declare-fun e!3939513 () Bool)

(declare-fun tp!1798496 () Bool)

(assert (=> b!6501403 (= e!3939513 tp!1798496)))

(declare-fun e!3939512 () Bool)

(declare-fun tp!1798497 () Bool)

(declare-fun b!6501402 () Bool)

(assert (=> b!6501402 (= e!3939512 (and (inv!84193 (h!71758 (t!379068 zl!343))) e!3939513 tp!1798497))))

(assert (=> b!6500797 (= tp!1798421 e!3939512)))

(assert (= b!6501402 b!6501403))

(assert (= (and b!6500797 (is-Cons!65310 (t!379068 zl!343))) b!6501402))

(declare-fun m!7289138 () Bool)

(assert (=> b!6501402 m!7289138))

(declare-fun e!3939514 () Bool)

(assert (=> b!6500816 (= tp!1798429 e!3939514)))

(declare-fun b!6501404 () Bool)

(assert (=> b!6501404 (= e!3939514 tp_is_empty!42009)))

(declare-fun b!6501407 () Bool)

(declare-fun tp!1798498 () Bool)

(declare-fun tp!1798502 () Bool)

(assert (=> b!6501407 (= e!3939514 (and tp!1798498 tp!1798502))))

(declare-fun b!6501405 () Bool)

(declare-fun tp!1798501 () Bool)

(declare-fun tp!1798499 () Bool)

(assert (=> b!6501405 (= e!3939514 (and tp!1798501 tp!1798499))))

(declare-fun b!6501406 () Bool)

(declare-fun tp!1798500 () Bool)

(assert (=> b!6501406 (= e!3939514 tp!1798500)))

(assert (= (and b!6500816 (is-ElementMatch!16378 (regOne!33269 r!7292))) b!6501404))

(assert (= (and b!6500816 (is-Concat!25223 (regOne!33269 r!7292))) b!6501405))

(assert (= (and b!6500816 (is-Star!16378 (regOne!33269 r!7292))) b!6501406))

(assert (= (and b!6500816 (is-Union!16378 (regOne!33269 r!7292))) b!6501407))

(declare-fun e!3939515 () Bool)

(assert (=> b!6500816 (= tp!1798424 e!3939515)))

(declare-fun b!6501408 () Bool)

(assert (=> b!6501408 (= e!3939515 tp_is_empty!42009)))

(declare-fun b!6501411 () Bool)

(declare-fun tp!1798503 () Bool)

(declare-fun tp!1798507 () Bool)

(assert (=> b!6501411 (= e!3939515 (and tp!1798503 tp!1798507))))

(declare-fun b!6501409 () Bool)

(declare-fun tp!1798506 () Bool)

(declare-fun tp!1798504 () Bool)

(assert (=> b!6501409 (= e!3939515 (and tp!1798506 tp!1798504))))

(declare-fun b!6501410 () Bool)

(declare-fun tp!1798505 () Bool)

(assert (=> b!6501410 (= e!3939515 tp!1798505)))

(assert (= (and b!6500816 (is-ElementMatch!16378 (regTwo!33269 r!7292))) b!6501408))

(assert (= (and b!6500816 (is-Concat!25223 (regTwo!33269 r!7292))) b!6501409))

(assert (= (and b!6500816 (is-Star!16378 (regTwo!33269 r!7292))) b!6501410))

(assert (= (and b!6500816 (is-Union!16378 (regTwo!33269 r!7292))) b!6501411))

(declare-fun e!3939516 () Bool)

(assert (=> b!6500805 (= tp!1798419 e!3939516)))

(declare-fun b!6501412 () Bool)

(assert (=> b!6501412 (= e!3939516 tp_is_empty!42009)))

(declare-fun b!6501415 () Bool)

(declare-fun tp!1798508 () Bool)

(declare-fun tp!1798512 () Bool)

(assert (=> b!6501415 (= e!3939516 (and tp!1798508 tp!1798512))))

(declare-fun b!6501413 () Bool)

(declare-fun tp!1798511 () Bool)

(declare-fun tp!1798509 () Bool)

(assert (=> b!6501413 (= e!3939516 (and tp!1798511 tp!1798509))))

(declare-fun b!6501414 () Bool)

(declare-fun tp!1798510 () Bool)

(assert (=> b!6501414 (= e!3939516 tp!1798510)))

(assert (= (and b!6500805 (is-ElementMatch!16378 (reg!16707 r!7292))) b!6501412))

(assert (= (and b!6500805 (is-Concat!25223 (reg!16707 r!7292))) b!6501413))

(assert (= (and b!6500805 (is-Star!16378 (reg!16707 r!7292))) b!6501414))

(assert (= (and b!6500805 (is-Union!16378 (reg!16707 r!7292))) b!6501415))

(declare-fun b!6501420 () Bool)

(declare-fun e!3939519 () Bool)

(declare-fun tp!1798517 () Bool)

(declare-fun tp!1798518 () Bool)

(assert (=> b!6501420 (= e!3939519 (and tp!1798517 tp!1798518))))

(assert (=> b!6500810 (= tp!1798423 e!3939519)))

(assert (= (and b!6500810 (is-Cons!65309 (exprs!6262 setElem!44312))) b!6501420))

(declare-fun b!6501421 () Bool)

(declare-fun e!3939520 () Bool)

(declare-fun tp!1798519 () Bool)

(declare-fun tp!1798520 () Bool)

(assert (=> b!6501421 (= e!3939520 (and tp!1798519 tp!1798520))))

(assert (=> b!6500815 (= tp!1798427 e!3939520)))

(assert (= (and b!6500815 (is-Cons!65309 (exprs!6262 (h!71758 zl!343)))) b!6501421))

(declare-fun b!6501422 () Bool)

(declare-fun e!3939521 () Bool)

(declare-fun tp!1798521 () Bool)

(declare-fun tp!1798522 () Bool)

(assert (=> b!6501422 (= e!3939521 (and tp!1798521 tp!1798522))))

(assert (=> b!6500800 (= tp!1798426 e!3939521)))

(assert (= (and b!6500800 (is-Cons!65309 (exprs!6262 c!324))) b!6501422))

(declare-fun b_lambda!246115 () Bool)

(assert (= b_lambda!246107 (or b!6500793 b_lambda!246115)))

(declare-fun bs!1651409 () Bool)

(declare-fun d!2039963 () Bool)

(assert (= bs!1651409 (and d!2039963 b!6500793)))

(assert (=> bs!1651409 (= (dynLambda!25944 lambda!360263 lt!2391601) (derivationStepZipperUp!1552 lt!2391601 (h!71759 s!2326)))))

(assert (=> bs!1651409 m!7288562))

(assert (=> d!2039867 d!2039963))

(declare-fun b_lambda!246117 () Bool)

(assert (= b_lambda!246105 (or b!6500793 b_lambda!246117)))

(declare-fun bs!1651410 () Bool)

(declare-fun d!2039965 () Bool)

(assert (= bs!1651410 (and d!2039965 b!6500793)))

(assert (=> bs!1651410 (= (dynLambda!25944 lambda!360263 (h!71758 zl!343)) (derivationStepZipperUp!1552 (h!71758 zl!343) (h!71759 s!2326)))))

(assert (=> bs!1651410 m!7288578))

(assert (=> d!2039857 d!2039965))

(declare-fun b_lambda!246119 () Bool)

(assert (= b_lambda!246109 (or b!6500793 b_lambda!246119)))

(declare-fun bs!1651411 () Bool)

(declare-fun d!2039967 () Bool)

(assert (= bs!1651411 (and d!2039967 b!6500793)))

(assert (=> bs!1651411 (= (dynLambda!25944 lambda!360263 lt!2391588) (derivationStepZipperUp!1552 lt!2391588 (h!71759 s!2326)))))

(assert (=> bs!1651411 m!7288640))

(assert (=> d!2039881 d!2039967))

(declare-fun b_lambda!246121 () Bool)

(assert (= b_lambda!246111 (or b!6500793 b_lambda!246121)))

(declare-fun bs!1651412 () Bool)

(declare-fun d!2039969 () Bool)

(assert (= bs!1651412 (and d!2039969 b!6500793)))

(assert (=> bs!1651412 (= (dynLambda!25944 lambda!360263 lt!2391577) (derivationStepZipperUp!1552 lt!2391577 (h!71759 s!2326)))))

(assert (=> bs!1651412 m!7288654))

(assert (=> d!2039885 d!2039969))

(push 1)

(assert (not b!6501413))

(assert (not b!6501035))

(assert (not b!6501148))

(assert (not d!2039859))

(assert (not b!6501415))

(assert (not b!6501254))

(assert (not b!6501395))

(assert (not bm!563331))

(assert (not b!6501078))

(assert (not d!2039931))

(assert (not d!2039907))

(assert (not d!2039843))

(assert (not b!6501248))

(assert (not d!2039863))

(assert (not bm!563339))

(assert (not b!6501289))

(assert (not b!6501421))

(assert (not b!6501407))

(assert (not bm!563322))

(assert (not d!2039911))

(assert (not b!6501228))

(assert (not b!6501090))

(assert (not b!6501263))

(assert (not bm!563329))

(assert (not d!2039905))

(assert (not d!2039935))

(assert (not bs!1651412))

(assert (not b!6501390))

(assert (not bm!563306))

(assert (not d!2039869))

(assert (not b!6501353))

(assert (not b_lambda!246115))

(assert (not b!6501016))

(assert (not b!6501017))

(assert (not bm!563343))

(assert (not d!2039953))

(assert (not b!6501054))

(assert (not b!6501286))

(assert (not b!6501236))

(assert (not d!2039909))

(assert (not d!2039919))

(assert (not b!6501345))

(assert (not bm!563340))

(assert (not b!6501060))

(assert (not bm!563334))

(assert (not b!6501020))

(assert (not b!6501346))

(assert (not d!2039883))

(assert (not b!6501237))

(assert (not b!6501283))

(assert (not bm!563342))

(assert (not b!6501056))

(assert (not b!6501391))

(assert (not b!6501114))

(assert (not b!6501264))

(assert (not b!6501066))

(assert (not b!6501394))

(assert (not b!6501015))

(assert (not b!6501149))

(assert (not b!6501023))

(assert (not d!2039895))

(assert (not b!6501239))

(assert (not b!6501393))

(assert (not b!6501352))

(assert (not bm!563318))

(assert (not d!2039851))

(assert (not bm!563319))

(assert (not b!6501406))

(assert (not b!6501403))

(assert (not bs!1651409))

(assert (not b!6501000))

(assert (not d!2039937))

(assert (not b!6501051))

(assert (not b!6501158))

(assert (not d!2039881))

(assert (not b!6501256))

(assert (not d!2039901))

(assert (not b!6501154))

(assert (not setNonEmpty!44318))

(assert (not b!6501259))

(assert (not d!2039887))

(assert tp_is_empty!42009)

(assert (not b!6501420))

(assert (not d!2039925))

(assert (not b!6501350))

(assert (not b!6501411))

(assert (not d!2039871))

(assert (not b_lambda!246121))

(assert (not b!6501229))

(assert (not d!2039947))

(assert (not b!6501079))

(assert (not d!2039857))

(assert (not b!6501402))

(assert (not d!2039949))

(assert (not bs!1651411))

(assert (not b!6501200))

(assert (not b!6501039))

(assert (not b!6501085))

(assert (not d!2039913))

(assert (not b!6501238))

(assert (not b!6501159))

(assert (not bm!563314))

(assert (not bs!1651410))

(assert (not d!2039873))

(assert (not b!6501223))

(assert (not b!6501059))

(assert (not b!6501410))

(assert (not d!2039933))

(assert (not b!6501151))

(assert (not d!2039839))

(assert (not b!6501414))

(assert (not b!6501422))

(assert (not b_lambda!246119))

(assert (not d!2039921))

(assert (not b!6501290))

(assert (not bm!563315))

(assert (not b!6501347))

(assert (not b!6501409))

(assert (not b!6501389))

(assert (not d!2039845))

(assert (not b!6501019))

(assert (not bm!563305))

(assert (not b!6501366))

(assert (not b!6501063))

(assert (not b!6501061))

(assert (not b!6501082))

(assert (not d!2039867))

(assert (not d!2039885))

(assert (not d!2039837))

(assert (not b_lambda!246117))

(assert (not b!6501227))

(assert (not d!2039897))

(assert (not b!6501018))

(assert (not b!6501225))

(assert (not d!2039959))

(assert (not d!2039875))

(assert (not b!6501291))

(assert (not bm!563316))

(assert (not b!6501224))

(assert (not d!2039945))

(assert (not b!6501245))

(assert (not b!6501087))

(assert (not bm!563311))

(assert (not bm!563341))

(assert (not b!6501372))

(assert (not bm!563321))

(assert (not b!6501377))

(assert (not b!6501351))

(assert (not b!6501253))

(assert (not b!6501287))

(assert (not d!2039915))

(assert (not b!6501405))

(assert (not d!2039841))

(assert (not b!6501230))

(assert (not bm!563320))

(assert (not d!2039893))

(assert (not b!6501235))

(assert (not d!2039879))

(assert (not b!6501038))

(assert (not b!6501197))

(assert (not d!2039861))

(assert (not bm!563307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

