; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!551716 () Bool)

(assert start!551716)

(declare-fun b!5215825 () Bool)

(assert (=> b!5215825 true))

(assert (=> b!5215825 true))

(declare-fun lambda!261631 () Int)

(declare-fun lambda!261630 () Int)

(assert (=> b!5215825 (not (= lambda!261631 lambda!261630))))

(assert (=> b!5215825 true))

(assert (=> b!5215825 true))

(declare-fun b!5215801 () Bool)

(assert (=> b!5215801 true))

(declare-fun b!5215798 () Bool)

(declare-datatypes ((Unit!152482 0))(
  ( (Unit!152483) )
))
(declare-fun e!3246808 () Unit!152482)

(declare-fun Unit!152484 () Unit!152482)

(assert (=> b!5215798 (= e!3246808 Unit!152484)))

(declare-datatypes ((C!29878 0))(
  ( (C!29879 (val!24641 Int)) )
))
(declare-datatypes ((List!60711 0))(
  ( (Nil!60587) (Cons!60587 (h!67035 C!29878) (t!373878 List!60711)) )
))
(declare-fun s!2326 () List!60711)

(declare-fun lt!2142748 () Unit!152482)

(declare-datatypes ((Regex!14804 0))(
  ( (ElementMatch!14804 (c!899739 C!29878)) (Concat!23649 (regOne!30120 Regex!14804) (regTwo!30120 Regex!14804)) (EmptyExpr!14804) (Star!14804 (reg!15133 Regex!14804)) (EmptyLang!14804) (Union!14804 (regOne!30121 Regex!14804) (regTwo!30121 Regex!14804)) )
))
(declare-datatypes ((List!60712 0))(
  ( (Nil!60588) (Cons!60588 (h!67036 Regex!14804) (t!373879 List!60712)) )
))
(declare-datatypes ((Context!8376 0))(
  ( (Context!8377 (exprs!4688 List!60712)) )
))
(declare-fun lt!2142746 () (Set Context!8376))

(declare-fun lt!2142760 () (Set Context!8376))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!41 ((Set Context!8376) (Set Context!8376) List!60711) Unit!152482)

(assert (=> b!5215798 (= lt!2142748 (lemmaZipperConcatMatchesSameAsBothZippers!41 lt!2142760 lt!2142746 (t!373878 s!2326)))))

(declare-fun res!2215039 () Bool)

(declare-fun matchZipper!1048 ((Set Context!8376) List!60711) Bool)

(assert (=> b!5215798 (= res!2215039 (matchZipper!1048 lt!2142760 (t!373878 s!2326)))))

(declare-fun e!3246799 () Bool)

(assert (=> b!5215798 (=> res!2215039 e!3246799)))

(assert (=> b!5215798 (= (matchZipper!1048 (set.union lt!2142760 lt!2142746) (t!373878 s!2326)) e!3246799)))

(declare-fun b!5215799 () Bool)

(declare-fun e!3246807 () Bool)

(declare-fun r!7292 () Regex!14804)

(declare-fun validRegex!6540 (Regex!14804) Bool)

(assert (=> b!5215799 (= e!3246807 (validRegex!6540 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun setRes!33151 () Bool)

(declare-fun tp!1462528 () Bool)

(declare-fun e!3246805 () Bool)

(declare-fun setElem!33151 () Context!8376)

(declare-fun setNonEmpty!33151 () Bool)

(declare-fun inv!80258 (Context!8376) Bool)

(assert (=> setNonEmpty!33151 (= setRes!33151 (and tp!1462528 (inv!80258 setElem!33151) e!3246805))))

(declare-fun z!1189 () (Set Context!8376))

(declare-fun setRest!33151 () (Set Context!8376))

(assert (=> setNonEmpty!33151 (= z!1189 (set.union (set.insert setElem!33151 (as set.empty (Set Context!8376))) setRest!33151))))

(declare-fun b!5215800 () Bool)

(declare-fun res!2215035 () Bool)

(declare-fun e!3246811 () Bool)

(assert (=> b!5215800 (=> res!2215035 e!3246811)))

(declare-datatypes ((List!60713 0))(
  ( (Nil!60589) (Cons!60589 (h!67037 Context!8376) (t!373880 List!60713)) )
))
(declare-fun zl!343 () List!60713)

(assert (=> b!5215800 (= res!2215035 (not (is-Cons!60588 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun e!3246814 () Bool)

(declare-fun e!3246802 () Bool)

(assert (=> b!5215801 (= e!3246814 e!3246802)))

(declare-fun res!2215038 () Bool)

(assert (=> b!5215801 (=> res!2215038 e!3246802)))

(assert (=> b!5215801 (= res!2215038 (or (and (is-ElementMatch!14804 (regOne!30120 r!7292)) (= (c!899739 (regOne!30120 r!7292)) (h!67035 s!2326))) (not (is-Union!14804 (regOne!30120 r!7292)))))))

(declare-fun lt!2142755 () Unit!152482)

(assert (=> b!5215801 (= lt!2142755 e!3246808)))

(declare-fun c!899738 () Bool)

(declare-fun nullable!4973 (Regex!14804) Bool)

(assert (=> b!5215801 (= c!899738 (nullable!4973 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun lambda!261632 () Int)

(declare-fun flatMap!531 ((Set Context!8376) Int) (Set Context!8376))

(declare-fun derivationStepZipperUp!176 (Context!8376 C!29878) (Set Context!8376))

(assert (=> b!5215801 (= (flatMap!531 z!1189 lambda!261632) (derivationStepZipperUp!176 (h!67037 zl!343) (h!67035 s!2326)))))

(declare-fun lt!2142743 () Unit!152482)

(declare-fun lemmaFlatMapOnSingletonSet!63 ((Set Context!8376) Context!8376 Int) Unit!152482)

(assert (=> b!5215801 (= lt!2142743 (lemmaFlatMapOnSingletonSet!63 z!1189 (h!67037 zl!343) lambda!261632))))

(declare-fun lt!2142745 () Context!8376)

(assert (=> b!5215801 (= lt!2142746 (derivationStepZipperUp!176 lt!2142745 (h!67035 s!2326)))))

(declare-fun derivationStepZipperDown!252 (Regex!14804 Context!8376 C!29878) (Set Context!8376))

(assert (=> b!5215801 (= lt!2142760 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (h!67037 zl!343))) lt!2142745 (h!67035 s!2326)))))

(assert (=> b!5215801 (= lt!2142745 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun lt!2142753 () (Set Context!8376))

(assert (=> b!5215801 (= lt!2142753 (derivationStepZipperUp!176 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))) (h!67035 s!2326)))))

(declare-fun b!5215802 () Bool)

(assert (=> b!5215802 (= e!3246799 (matchZipper!1048 lt!2142746 (t!373878 s!2326)))))

(declare-fun b!5215803 () Bool)

(declare-fun e!3246804 () Bool)

(declare-fun tp_is_empty!38861 () Bool)

(assert (=> b!5215803 (= e!3246804 tp_is_empty!38861)))

(declare-fun b!5215804 () Bool)

(declare-fun res!2215044 () Bool)

(assert (=> b!5215804 (=> res!2215044 e!3246811)))

(declare-fun generalisedConcat!473 (List!60712) Regex!14804)

(assert (=> b!5215804 (= res!2215044 (not (= r!7292 (generalisedConcat!473 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5215805 () Bool)

(declare-fun tp!1462530 () Bool)

(assert (=> b!5215805 (= e!3246804 tp!1462530)))

(declare-fun b!5215806 () Bool)

(declare-fun res!2215043 () Bool)

(declare-fun e!3246812 () Bool)

(assert (=> b!5215806 (=> (not res!2215043) (not e!3246812))))

(declare-fun toList!8588 ((Set Context!8376)) List!60713)

(assert (=> b!5215806 (= res!2215043 (= (toList!8588 z!1189) zl!343))))

(declare-fun b!5215807 () Bool)

(declare-fun res!2215036 () Bool)

(assert (=> b!5215807 (=> res!2215036 e!3246811)))

(declare-fun isEmpty!32503 (List!60713) Bool)

(assert (=> b!5215807 (= res!2215036 (not (isEmpty!32503 (t!373880 zl!343))))))

(declare-fun b!5215808 () Bool)

(declare-fun tp!1462526 () Bool)

(declare-fun tp!1462531 () Bool)

(assert (=> b!5215808 (= e!3246804 (and tp!1462526 tp!1462531))))

(declare-fun b!5215809 () Bool)

(declare-fun Unit!152485 () Unit!152482)

(assert (=> b!5215809 (= e!3246808 Unit!152485)))

(declare-fun b!5215810 () Bool)

(declare-fun e!3246809 () Bool)

(assert (=> b!5215810 (= e!3246802 e!3246809)))

(declare-fun res!2215025 () Bool)

(assert (=> b!5215810 (=> res!2215025 e!3246809)))

(declare-fun lt!2142747 () (Set Context!8376))

(assert (=> b!5215810 (= res!2215025 (not (= lt!2142760 lt!2142747)))))

(declare-fun lt!2142752 () (Set Context!8376))

(declare-fun lt!2142762 () (Set Context!8376))

(assert (=> b!5215810 (= lt!2142747 (set.union lt!2142752 lt!2142762))))

(assert (=> b!5215810 (= lt!2142762 (derivationStepZipperDown!252 (regTwo!30121 (regOne!30120 r!7292)) lt!2142745 (h!67035 s!2326)))))

(assert (=> b!5215810 (= lt!2142752 (derivationStepZipperDown!252 (regOne!30121 (regOne!30120 r!7292)) lt!2142745 (h!67035 s!2326)))))

(declare-fun b!5215811 () Bool)

(assert (=> b!5215811 (= e!3246812 (not e!3246811))))

(declare-fun res!2215034 () Bool)

(assert (=> b!5215811 (=> res!2215034 e!3246811)))

(assert (=> b!5215811 (= res!2215034 (not (is-Cons!60589 zl!343)))))

(declare-fun lt!2142749 () Bool)

(declare-fun matchRSpec!1907 (Regex!14804 List!60711) Bool)

(assert (=> b!5215811 (= lt!2142749 (matchRSpec!1907 r!7292 s!2326))))

(declare-fun matchR!6989 (Regex!14804 List!60711) Bool)

(assert (=> b!5215811 (= lt!2142749 (matchR!6989 r!7292 s!2326))))

(declare-fun lt!2142759 () Unit!152482)

(declare-fun mainMatchTheorem!1907 (Regex!14804 List!60711) Unit!152482)

(assert (=> b!5215811 (= lt!2142759 (mainMatchTheorem!1907 r!7292 s!2326))))

(declare-fun b!5215812 () Bool)

(declare-fun e!3246810 () Bool)

(declare-fun e!3246801 () Bool)

(assert (=> b!5215812 (= e!3246810 e!3246801)))

(declare-fun res!2215040 () Bool)

(assert (=> b!5215812 (=> res!2215040 e!3246801)))

(assert (=> b!5215812 (= res!2215040 (not (nullable!4973 (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun lt!2142756 () Context!8376)

(declare-fun lt!2142751 () (Set Context!8376))

(assert (=> b!5215812 (= (flatMap!531 lt!2142751 lambda!261632) (derivationStepZipperUp!176 lt!2142756 (h!67035 s!2326)))))

(declare-fun lt!2142761 () Unit!152482)

(assert (=> b!5215812 (= lt!2142761 (lemmaFlatMapOnSingletonSet!63 lt!2142751 lt!2142756 lambda!261632))))

(declare-fun lt!2142754 () (Set Context!8376))

(assert (=> b!5215812 (= lt!2142754 (derivationStepZipperUp!176 lt!2142756 (h!67035 s!2326)))))

(declare-fun lt!2142744 () (Set Context!8376))

(declare-fun derivationStepZipper!1074 ((Set Context!8376) C!29878) (Set Context!8376))

(assert (=> b!5215812 (= lt!2142744 (derivationStepZipper!1074 lt!2142751 (h!67035 s!2326)))))

(assert (=> b!5215812 (= lt!2142751 (set.insert lt!2142756 (as set.empty (Set Context!8376))))))

(assert (=> b!5215812 (= lt!2142756 (Context!8377 (Cons!60588 (regOne!30121 (regOne!30120 r!7292)) (t!373879 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5215813 () Bool)

(declare-fun e!3246800 () Bool)

(declare-fun tp!1462535 () Bool)

(assert (=> b!5215813 (= e!3246800 tp!1462535)))

(declare-fun b!5215814 () Bool)

(declare-fun res!2215030 () Bool)

(assert (=> b!5215814 (=> res!2215030 e!3246811)))

(assert (=> b!5215814 (= res!2215030 (or (is-EmptyExpr!14804 r!7292) (is-EmptyLang!14804 r!7292) (is-ElementMatch!14804 r!7292) (is-Union!14804 r!7292) (not (is-Concat!23649 r!7292))))))

(declare-fun b!5215815 () Bool)

(declare-fun e!3246798 () Bool)

(assert (=> b!5215815 (= e!3246798 (not (matchZipper!1048 lt!2142762 (t!373878 s!2326))))))

(declare-fun b!5215816 () Bool)

(declare-fun tp!1462532 () Bool)

(declare-fun tp!1462533 () Bool)

(assert (=> b!5215816 (= e!3246804 (and tp!1462532 tp!1462533))))

(declare-fun b!5215817 () Bool)

(declare-fun res!2215026 () Bool)

(assert (=> b!5215817 (=> res!2215026 e!3246814)))

(declare-fun isEmpty!32504 (List!60712) Bool)

(assert (=> b!5215817 (= res!2215026 (isEmpty!32504 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5215818 () Bool)

(declare-fun e!3246806 () Bool)

(assert (=> b!5215818 (= e!3246806 (matchZipper!1048 lt!2142762 (t!373878 s!2326)))))

(declare-fun b!5215819 () Bool)

(declare-fun tp!1462534 () Bool)

(assert (=> b!5215819 (= e!3246805 tp!1462534)))

(declare-fun b!5215820 () Bool)

(assert (=> b!5215820 (= e!3246809 e!3246810)))

(declare-fun res!2215027 () Bool)

(assert (=> b!5215820 (=> res!2215027 e!3246810)))

(assert (=> b!5215820 (= res!2215027 e!3246798)))

(declare-fun res!2215042 () Bool)

(assert (=> b!5215820 (=> (not res!2215042) (not e!3246798))))

(declare-fun lt!2142763 () Bool)

(assert (=> b!5215820 (= res!2215042 (not (= (matchZipper!1048 lt!2142760 (t!373878 s!2326)) lt!2142763)))))

(assert (=> b!5215820 (= (matchZipper!1048 lt!2142747 (t!373878 s!2326)) e!3246806)))

(declare-fun res!2215032 () Bool)

(assert (=> b!5215820 (=> res!2215032 e!3246806)))

(assert (=> b!5215820 (= res!2215032 lt!2142763)))

(assert (=> b!5215820 (= lt!2142763 (matchZipper!1048 lt!2142752 (t!373878 s!2326)))))

(declare-fun lt!2142757 () Unit!152482)

(assert (=> b!5215820 (= lt!2142757 (lemmaZipperConcatMatchesSameAsBothZippers!41 lt!2142752 lt!2142762 (t!373878 s!2326)))))

(declare-fun b!5215821 () Bool)

(declare-fun res!2215033 () Bool)

(assert (=> b!5215821 (=> res!2215033 e!3246807)))

(assert (=> b!5215821 (= res!2215033 (not (= (matchZipper!1048 lt!2142751 s!2326) (matchZipper!1048 lt!2142744 (t!373878 s!2326)))))))

(declare-fun setIsEmpty!33151 () Bool)

(assert (=> setIsEmpty!33151 setRes!33151))

(declare-fun b!5215822 () Bool)

(declare-fun e!3246803 () Bool)

(declare-fun tp!1462527 () Bool)

(assert (=> b!5215822 (= e!3246803 (and tp_is_empty!38861 tp!1462527))))

(declare-fun b!5215823 () Bool)

(declare-fun res!2215028 () Bool)

(assert (=> b!5215823 (=> res!2215028 e!3246811)))

(declare-fun generalisedUnion!733 (List!60712) Regex!14804)

(declare-fun unfocusZipperList!246 (List!60713) List!60712)

(assert (=> b!5215823 (= res!2215028 (not (= r!7292 (generalisedUnion!733 (unfocusZipperList!246 zl!343)))))))

(declare-fun b!5215824 () Bool)

(assert (=> b!5215824 (= e!3246801 e!3246807)))

(declare-fun res!2215031 () Bool)

(assert (=> b!5215824 (=> res!2215031 e!3246807)))

(declare-fun lt!2142758 () (Set Context!8376))

(assert (=> b!5215824 (= res!2215031 (or (not (= lt!2142754 lt!2142758)) (not (= lt!2142744 lt!2142758))))))

(assert (=> b!5215824 (= lt!2142758 (set.union lt!2142752 lt!2142746))))

(declare-fun res!2215037 () Bool)

(assert (=> start!551716 (=> (not res!2215037) (not e!3246812))))

(assert (=> start!551716 (= res!2215037 (validRegex!6540 r!7292))))

(assert (=> start!551716 e!3246812))

(assert (=> start!551716 e!3246804))

(declare-fun condSetEmpty!33151 () Bool)

(assert (=> start!551716 (= condSetEmpty!33151 (= z!1189 (as set.empty (Set Context!8376))))))

(assert (=> start!551716 setRes!33151))

(declare-fun e!3246813 () Bool)

(assert (=> start!551716 e!3246813))

(assert (=> start!551716 e!3246803))

(assert (=> b!5215825 (= e!3246811 e!3246814)))

(declare-fun res!2215041 () Bool)

(assert (=> b!5215825 (=> res!2215041 e!3246814)))

(declare-fun lt!2142742 () Bool)

(assert (=> b!5215825 (= res!2215041 (or (not (= lt!2142749 lt!2142742)) (is-Nil!60587 s!2326)))))

(declare-fun Exists!1985 (Int) Bool)

(assert (=> b!5215825 (= (Exists!1985 lambda!261630) (Exists!1985 lambda!261631))))

(declare-fun lt!2142764 () Unit!152482)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!639 (Regex!14804 Regex!14804 List!60711) Unit!152482)

(assert (=> b!5215825 (= lt!2142764 (lemmaExistCutMatchRandMatchRSpecEquivalent!639 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326))))

(assert (=> b!5215825 (= lt!2142742 (Exists!1985 lambda!261630))))

(declare-datatypes ((tuple2!64006 0))(
  ( (tuple2!64007 (_1!35306 List!60711) (_2!35306 List!60711)) )
))
(declare-datatypes ((Option!14915 0))(
  ( (None!14914) (Some!14914 (v!50943 tuple2!64006)) )
))
(declare-fun isDefined!11618 (Option!14915) Bool)

(declare-fun findConcatSeparation!1329 (Regex!14804 Regex!14804 List!60711 List!60711 List!60711) Option!14915)

(assert (=> b!5215825 (= lt!2142742 (isDefined!11618 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326)))))

(declare-fun lt!2142750 () Unit!152482)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1093 (Regex!14804 Regex!14804 List!60711) Unit!152482)

(assert (=> b!5215825 (= lt!2142750 (lemmaFindConcatSeparationEquivalentToExists!1093 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326))))

(declare-fun tp!1462529 () Bool)

(declare-fun b!5215826 () Bool)

(assert (=> b!5215826 (= e!3246813 (and (inv!80258 (h!67037 zl!343)) e!3246800 tp!1462529))))

(declare-fun b!5215827 () Bool)

(declare-fun res!2215029 () Bool)

(assert (=> b!5215827 (=> (not res!2215029) (not e!3246812))))

(declare-fun unfocusZipper!546 (List!60713) Regex!14804)

(assert (=> b!5215827 (= res!2215029 (= r!7292 (unfocusZipper!546 zl!343)))))

(assert (= (and start!551716 res!2215037) b!5215806))

(assert (= (and b!5215806 res!2215043) b!5215827))

(assert (= (and b!5215827 res!2215029) b!5215811))

(assert (= (and b!5215811 (not res!2215034)) b!5215807))

(assert (= (and b!5215807 (not res!2215036)) b!5215804))

(assert (= (and b!5215804 (not res!2215044)) b!5215800))

(assert (= (and b!5215800 (not res!2215035)) b!5215823))

(assert (= (and b!5215823 (not res!2215028)) b!5215814))

(assert (= (and b!5215814 (not res!2215030)) b!5215825))

(assert (= (and b!5215825 (not res!2215041)) b!5215817))

(assert (= (and b!5215817 (not res!2215026)) b!5215801))

(assert (= (and b!5215801 c!899738) b!5215798))

(assert (= (and b!5215801 (not c!899738)) b!5215809))

(assert (= (and b!5215798 (not res!2215039)) b!5215802))

(assert (= (and b!5215801 (not res!2215038)) b!5215810))

(assert (= (and b!5215810 (not res!2215025)) b!5215820))

(assert (= (and b!5215820 (not res!2215032)) b!5215818))

(assert (= (and b!5215820 res!2215042) b!5215815))

(assert (= (and b!5215820 (not res!2215027)) b!5215812))

(assert (= (and b!5215812 (not res!2215040)) b!5215824))

(assert (= (and b!5215824 (not res!2215031)) b!5215821))

(assert (= (and b!5215821 (not res!2215033)) b!5215799))

(assert (= (and start!551716 (is-ElementMatch!14804 r!7292)) b!5215803))

(assert (= (and start!551716 (is-Concat!23649 r!7292)) b!5215816))

(assert (= (and start!551716 (is-Star!14804 r!7292)) b!5215805))

(assert (= (and start!551716 (is-Union!14804 r!7292)) b!5215808))

(assert (= (and start!551716 condSetEmpty!33151) setIsEmpty!33151))

(assert (= (and start!551716 (not condSetEmpty!33151)) setNonEmpty!33151))

(assert (= setNonEmpty!33151 b!5215819))

(assert (= b!5215826 b!5215813))

(assert (= (and start!551716 (is-Cons!60589 zl!343)) b!5215826))

(assert (= (and start!551716 (is-Cons!60587 s!2326)) b!5215822))

(declare-fun m!6264438 () Bool)

(assert (=> b!5215799 m!6264438))

(declare-fun m!6264440 () Bool)

(assert (=> b!5215823 m!6264440))

(assert (=> b!5215823 m!6264440))

(declare-fun m!6264442 () Bool)

(assert (=> b!5215823 m!6264442))

(declare-fun m!6264444 () Bool)

(assert (=> b!5215804 m!6264444))

(declare-fun m!6264446 () Bool)

(assert (=> b!5215825 m!6264446))

(declare-fun m!6264448 () Bool)

(assert (=> b!5215825 m!6264448))

(declare-fun m!6264450 () Bool)

(assert (=> b!5215825 m!6264450))

(assert (=> b!5215825 m!6264446))

(declare-fun m!6264452 () Bool)

(assert (=> b!5215825 m!6264452))

(declare-fun m!6264454 () Bool)

(assert (=> b!5215825 m!6264454))

(assert (=> b!5215825 m!6264448))

(declare-fun m!6264456 () Bool)

(assert (=> b!5215825 m!6264456))

(declare-fun m!6264458 () Bool)

(assert (=> b!5215811 m!6264458))

(declare-fun m!6264460 () Bool)

(assert (=> b!5215811 m!6264460))

(declare-fun m!6264462 () Bool)

(assert (=> b!5215811 m!6264462))

(declare-fun m!6264464 () Bool)

(assert (=> b!5215801 m!6264464))

(declare-fun m!6264466 () Bool)

(assert (=> b!5215801 m!6264466))

(declare-fun m!6264468 () Bool)

(assert (=> b!5215801 m!6264468))

(declare-fun m!6264470 () Bool)

(assert (=> b!5215801 m!6264470))

(declare-fun m!6264472 () Bool)

(assert (=> b!5215801 m!6264472))

(declare-fun m!6264474 () Bool)

(assert (=> b!5215801 m!6264474))

(declare-fun m!6264476 () Bool)

(assert (=> b!5215801 m!6264476))

(declare-fun m!6264478 () Bool)

(assert (=> b!5215810 m!6264478))

(declare-fun m!6264480 () Bool)

(assert (=> b!5215810 m!6264480))

(declare-fun m!6264482 () Bool)

(assert (=> start!551716 m!6264482))

(declare-fun m!6264484 () Bool)

(assert (=> setNonEmpty!33151 m!6264484))

(declare-fun m!6264486 () Bool)

(assert (=> b!5215806 m!6264486))

(declare-fun m!6264488 () Bool)

(assert (=> b!5215826 m!6264488))

(declare-fun m!6264490 () Bool)

(assert (=> b!5215820 m!6264490))

(declare-fun m!6264492 () Bool)

(assert (=> b!5215820 m!6264492))

(declare-fun m!6264494 () Bool)

(assert (=> b!5215820 m!6264494))

(declare-fun m!6264496 () Bool)

(assert (=> b!5215820 m!6264496))

(declare-fun m!6264498 () Bool)

(assert (=> b!5215798 m!6264498))

(assert (=> b!5215798 m!6264490))

(declare-fun m!6264500 () Bool)

(assert (=> b!5215798 m!6264500))

(declare-fun m!6264502 () Bool)

(assert (=> b!5215818 m!6264502))

(declare-fun m!6264504 () Bool)

(assert (=> b!5215827 m!6264504))

(declare-fun m!6264506 () Bool)

(assert (=> b!5215807 m!6264506))

(declare-fun m!6264508 () Bool)

(assert (=> b!5215821 m!6264508))

(declare-fun m!6264510 () Bool)

(assert (=> b!5215821 m!6264510))

(assert (=> b!5215815 m!6264502))

(declare-fun m!6264512 () Bool)

(assert (=> b!5215817 m!6264512))

(declare-fun m!6264514 () Bool)

(assert (=> b!5215802 m!6264514))

(declare-fun m!6264516 () Bool)

(assert (=> b!5215812 m!6264516))

(declare-fun m!6264518 () Bool)

(assert (=> b!5215812 m!6264518))

(declare-fun m!6264520 () Bool)

(assert (=> b!5215812 m!6264520))

(declare-fun m!6264522 () Bool)

(assert (=> b!5215812 m!6264522))

(declare-fun m!6264524 () Bool)

(assert (=> b!5215812 m!6264524))

(declare-fun m!6264526 () Bool)

(assert (=> b!5215812 m!6264526))

(push 1)

(assert (not b!5215823))

(assert (not start!551716))

(assert (not b!5215811))

(assert (not b!5215819))

(assert (not b!5215804))

(assert (not b!5215802))

(assert (not b!5215818))

(assert (not b!5215817))

(assert (not setNonEmpty!33151))

(assert (not b!5215816))

(assert (not b!5215820))

(assert (not b!5215808))

(assert (not b!5215825))

(assert (not b!5215812))

(assert (not b!5215807))

(assert (not b!5215805))

(assert (not b!5215822))

(assert (not b!5215799))

(assert tp_is_empty!38861)

(assert (not b!5215806))

(assert (not b!5215826))

(assert (not b!5215810))

(assert (not b!5215815))

(assert (not b!5215813))

(assert (not b!5215801))

(assert (not b!5215798))

(assert (not b!5215821))

(assert (not b!5215827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1211586 () Bool)

(declare-fun b!5215977 () Bool)

(assert (= bs!1211586 (and b!5215977 b!5215825)))

(declare-fun lambda!261650 () Int)

(assert (=> bs!1211586 (not (= lambda!261650 lambda!261630))))

(assert (=> bs!1211586 (not (= lambda!261650 lambda!261631))))

(assert (=> b!5215977 true))

(assert (=> b!5215977 true))

(declare-fun bs!1211587 () Bool)

(declare-fun b!5215984 () Bool)

(assert (= bs!1211587 (and b!5215984 b!5215825)))

(declare-fun lambda!261651 () Int)

(assert (=> bs!1211587 (not (= lambda!261651 lambda!261630))))

(assert (=> bs!1211587 (= lambda!261651 lambda!261631)))

(declare-fun bs!1211588 () Bool)

(assert (= bs!1211588 (and b!5215984 b!5215977)))

(assert (=> bs!1211588 (not (= lambda!261651 lambda!261650))))

(assert (=> b!5215984 true))

(assert (=> b!5215984 true))

(declare-fun bm!367693 () Bool)

(declare-fun call!367698 () Bool)

(declare-fun isEmpty!32507 (List!60711) Bool)

(assert (=> bm!367693 (= call!367698 (isEmpty!32507 s!2326))))

(declare-fun b!5215974 () Bool)

(declare-fun c!899757 () Bool)

(assert (=> b!5215974 (= c!899757 (is-ElementMatch!14804 r!7292))))

(declare-fun e!3246894 () Bool)

(declare-fun e!3246896 () Bool)

(assert (=> b!5215974 (= e!3246894 e!3246896)))

(declare-fun b!5215975 () Bool)

(declare-fun e!3246895 () Bool)

(declare-fun e!3246893 () Bool)

(assert (=> b!5215975 (= e!3246895 e!3246893)))

(declare-fun c!899759 () Bool)

(assert (=> b!5215975 (= c!899759 (is-Star!14804 r!7292))))

(declare-fun call!367699 () Bool)

(declare-fun bm!367694 () Bool)

(assert (=> bm!367694 (= call!367699 (Exists!1985 (ite c!899759 lambda!261650 lambda!261651)))))

(declare-fun b!5215976 () Bool)

(declare-fun res!2215134 () Bool)

(declare-fun e!3246890 () Bool)

(assert (=> b!5215976 (=> res!2215134 e!3246890)))

(assert (=> b!5215976 (= res!2215134 call!367698)))

(assert (=> b!5215976 (= e!3246893 e!3246890)))

(assert (=> b!5215977 (= e!3246890 call!367699)))

(declare-fun b!5215978 () Bool)

(declare-fun e!3246891 () Bool)

(assert (=> b!5215978 (= e!3246891 (matchRSpec!1907 (regTwo!30121 r!7292) s!2326))))

(declare-fun b!5215979 () Bool)

(assert (=> b!5215979 (= e!3246895 e!3246891)))

(declare-fun res!2215135 () Bool)

(assert (=> b!5215979 (= res!2215135 (matchRSpec!1907 (regOne!30121 r!7292) s!2326))))

(assert (=> b!5215979 (=> res!2215135 e!3246891)))

(declare-fun b!5215980 () Bool)

(declare-fun c!899758 () Bool)

(assert (=> b!5215980 (= c!899758 (is-Union!14804 r!7292))))

(assert (=> b!5215980 (= e!3246896 e!3246895)))

(declare-fun d!1681762 () Bool)

(declare-fun c!899760 () Bool)

(assert (=> d!1681762 (= c!899760 (is-EmptyExpr!14804 r!7292))))

(declare-fun e!3246892 () Bool)

(assert (=> d!1681762 (= (matchRSpec!1907 r!7292 s!2326) e!3246892)))

(declare-fun b!5215981 () Bool)

(assert (=> b!5215981 (= e!3246892 call!367698)))

(declare-fun b!5215982 () Bool)

(assert (=> b!5215982 (= e!3246892 e!3246894)))

(declare-fun res!2215133 () Bool)

(assert (=> b!5215982 (= res!2215133 (not (is-EmptyLang!14804 r!7292)))))

(assert (=> b!5215982 (=> (not res!2215133) (not e!3246894))))

(declare-fun b!5215983 () Bool)

(assert (=> b!5215983 (= e!3246896 (= s!2326 (Cons!60587 (c!899739 r!7292) Nil!60587)))))

(assert (=> b!5215984 (= e!3246893 call!367699)))

(assert (= (and d!1681762 c!899760) b!5215981))

(assert (= (and d!1681762 (not c!899760)) b!5215982))

(assert (= (and b!5215982 res!2215133) b!5215974))

(assert (= (and b!5215974 c!899757) b!5215983))

(assert (= (and b!5215974 (not c!899757)) b!5215980))

(assert (= (and b!5215980 c!899758) b!5215979))

(assert (= (and b!5215980 (not c!899758)) b!5215975))

(assert (= (and b!5215979 (not res!2215135)) b!5215978))

(assert (= (and b!5215975 c!899759) b!5215976))

(assert (= (and b!5215975 (not c!899759)) b!5215984))

(assert (= (and b!5215976 (not res!2215134)) b!5215977))

(assert (= (or b!5215977 b!5215984) bm!367694))

(assert (= (or b!5215981 b!5215976) bm!367693))

(declare-fun m!6264618 () Bool)

(assert (=> bm!367693 m!6264618))

(declare-fun m!6264620 () Bool)

(assert (=> bm!367694 m!6264620))

(declare-fun m!6264622 () Bool)

(assert (=> b!5215978 m!6264622))

(declare-fun m!6264624 () Bool)

(assert (=> b!5215979 m!6264624))

(assert (=> b!5215811 d!1681762))

(declare-fun b!5216013 () Bool)

(declare-fun res!2215153 () Bool)

(declare-fun e!3246917 () Bool)

(assert (=> b!5216013 (=> res!2215153 e!3246917)))

(assert (=> b!5216013 (= res!2215153 (not (is-ElementMatch!14804 r!7292)))))

(declare-fun e!3246915 () Bool)

(assert (=> b!5216013 (= e!3246915 e!3246917)))

(declare-fun b!5216014 () Bool)

(declare-fun lt!2142836 () Bool)

(assert (=> b!5216014 (= e!3246915 (not lt!2142836))))

(declare-fun bm!367697 () Bool)

(declare-fun call!367702 () Bool)

(assert (=> bm!367697 (= call!367702 (isEmpty!32507 s!2326))))

(declare-fun b!5216015 () Bool)

(declare-fun e!3246912 () Bool)

(declare-fun derivativeStep!4052 (Regex!14804 C!29878) Regex!14804)

(declare-fun head!11179 (List!60711) C!29878)

(declare-fun tail!10276 (List!60711) List!60711)

(assert (=> b!5216015 (= e!3246912 (matchR!6989 (derivativeStep!4052 r!7292 (head!11179 s!2326)) (tail!10276 s!2326)))))

(declare-fun b!5216016 () Bool)

(declare-fun res!2215155 () Bool)

(declare-fun e!3246914 () Bool)

(assert (=> b!5216016 (=> res!2215155 e!3246914)))

(assert (=> b!5216016 (= res!2215155 (not (isEmpty!32507 (tail!10276 s!2326))))))

(declare-fun b!5216017 () Bool)

(assert (=> b!5216017 (= e!3246914 (not (= (head!11179 s!2326) (c!899739 r!7292))))))

(declare-fun d!1681764 () Bool)

(declare-fun e!3246916 () Bool)

(assert (=> d!1681764 e!3246916))

(declare-fun c!899769 () Bool)

(assert (=> d!1681764 (= c!899769 (is-EmptyExpr!14804 r!7292))))

(assert (=> d!1681764 (= lt!2142836 e!3246912)))

(declare-fun c!899767 () Bool)

(assert (=> d!1681764 (= c!899767 (isEmpty!32507 s!2326))))

(assert (=> d!1681764 (validRegex!6540 r!7292)))

(assert (=> d!1681764 (= (matchR!6989 r!7292 s!2326) lt!2142836)))

(declare-fun b!5216018 () Bool)

(declare-fun e!3246913 () Bool)

(assert (=> b!5216018 (= e!3246917 e!3246913)))

(declare-fun res!2215152 () Bool)

(assert (=> b!5216018 (=> (not res!2215152) (not e!3246913))))

(assert (=> b!5216018 (= res!2215152 (not lt!2142836))))

(declare-fun b!5216019 () Bool)

(assert (=> b!5216019 (= e!3246913 e!3246914)))

(declare-fun res!2215159 () Bool)

(assert (=> b!5216019 (=> res!2215159 e!3246914)))

(assert (=> b!5216019 (= res!2215159 call!367702)))

(declare-fun b!5216020 () Bool)

(declare-fun res!2215158 () Bool)

(declare-fun e!3246911 () Bool)

(assert (=> b!5216020 (=> (not res!2215158) (not e!3246911))))

(assert (=> b!5216020 (= res!2215158 (isEmpty!32507 (tail!10276 s!2326)))))

(declare-fun b!5216021 () Bool)

(declare-fun res!2215157 () Bool)

(assert (=> b!5216021 (=> res!2215157 e!3246917)))

(assert (=> b!5216021 (= res!2215157 e!3246911)))

(declare-fun res!2215154 () Bool)

(assert (=> b!5216021 (=> (not res!2215154) (not e!3246911))))

(assert (=> b!5216021 (= res!2215154 lt!2142836)))

(declare-fun b!5216022 () Bool)

(assert (=> b!5216022 (= e!3246912 (nullable!4973 r!7292))))

(declare-fun b!5216023 () Bool)

(assert (=> b!5216023 (= e!3246911 (= (head!11179 s!2326) (c!899739 r!7292)))))

(declare-fun b!5216024 () Bool)

(assert (=> b!5216024 (= e!3246916 e!3246915)))

(declare-fun c!899768 () Bool)

(assert (=> b!5216024 (= c!899768 (is-EmptyLang!14804 r!7292))))

(declare-fun b!5216025 () Bool)

(declare-fun res!2215156 () Bool)

(assert (=> b!5216025 (=> (not res!2215156) (not e!3246911))))

(assert (=> b!5216025 (= res!2215156 (not call!367702))))

(declare-fun b!5216026 () Bool)

(assert (=> b!5216026 (= e!3246916 (= lt!2142836 call!367702))))

(assert (= (and d!1681764 c!899767) b!5216022))

(assert (= (and d!1681764 (not c!899767)) b!5216015))

(assert (= (and d!1681764 c!899769) b!5216026))

(assert (= (and d!1681764 (not c!899769)) b!5216024))

(assert (= (and b!5216024 c!899768) b!5216014))

(assert (= (and b!5216024 (not c!899768)) b!5216013))

(assert (= (and b!5216013 (not res!2215153)) b!5216021))

(assert (= (and b!5216021 res!2215154) b!5216025))

(assert (= (and b!5216025 res!2215156) b!5216020))

(assert (= (and b!5216020 res!2215158) b!5216023))

(assert (= (and b!5216021 (not res!2215157)) b!5216018))

(assert (= (and b!5216018 res!2215152) b!5216019))

(assert (= (and b!5216019 (not res!2215159)) b!5216016))

(assert (= (and b!5216016 (not res!2215155)) b!5216017))

(assert (= (or b!5216026 b!5216025 b!5216019) bm!367697))

(declare-fun m!6264626 () Bool)

(assert (=> b!5216017 m!6264626))

(assert (=> bm!367697 m!6264618))

(assert (=> b!5216015 m!6264626))

(assert (=> b!5216015 m!6264626))

(declare-fun m!6264628 () Bool)

(assert (=> b!5216015 m!6264628))

(declare-fun m!6264630 () Bool)

(assert (=> b!5216015 m!6264630))

(assert (=> b!5216015 m!6264628))

(assert (=> b!5216015 m!6264630))

(declare-fun m!6264632 () Bool)

(assert (=> b!5216015 m!6264632))

(assert (=> d!1681764 m!6264618))

(assert (=> d!1681764 m!6264482))

(assert (=> b!5216020 m!6264630))

(assert (=> b!5216020 m!6264630))

(declare-fun m!6264634 () Bool)

(assert (=> b!5216020 m!6264634))

(assert (=> b!5216016 m!6264630))

(assert (=> b!5216016 m!6264630))

(assert (=> b!5216016 m!6264634))

(assert (=> b!5216023 m!6264626))

(declare-fun m!6264636 () Bool)

(assert (=> b!5216022 m!6264636))

(assert (=> b!5215811 d!1681764))

(declare-fun d!1681766 () Bool)

(assert (=> d!1681766 (= (matchR!6989 r!7292 s!2326) (matchRSpec!1907 r!7292 s!2326))))

(declare-fun lt!2142839 () Unit!152482)

(declare-fun choose!38777 (Regex!14804 List!60711) Unit!152482)

(assert (=> d!1681766 (= lt!2142839 (choose!38777 r!7292 s!2326))))

(assert (=> d!1681766 (validRegex!6540 r!7292)))

(assert (=> d!1681766 (= (mainMatchTheorem!1907 r!7292 s!2326) lt!2142839)))

(declare-fun bs!1211589 () Bool)

(assert (= bs!1211589 d!1681766))

(assert (=> bs!1211589 m!6264460))

(assert (=> bs!1211589 m!6264458))

(declare-fun m!6264638 () Bool)

(assert (=> bs!1211589 m!6264638))

(assert (=> bs!1211589 m!6264482))

(assert (=> b!5215811 d!1681766))

(declare-fun d!1681768 () Bool)

(declare-fun choose!38778 ((Set Context!8376) Int) (Set Context!8376))

(assert (=> d!1681768 (= (flatMap!531 z!1189 lambda!261632) (choose!38778 z!1189 lambda!261632))))

(declare-fun bs!1211590 () Bool)

(assert (= bs!1211590 d!1681768))

(declare-fun m!6264640 () Bool)

(assert (=> bs!1211590 m!6264640))

(assert (=> b!5215801 d!1681768))

(declare-fun d!1681770 () Bool)

(declare-fun dynLambda!23938 (Int Context!8376) (Set Context!8376))

(assert (=> d!1681770 (= (flatMap!531 z!1189 lambda!261632) (dynLambda!23938 lambda!261632 (h!67037 zl!343)))))

(declare-fun lt!2142842 () Unit!152482)

(declare-fun choose!38779 ((Set Context!8376) Context!8376 Int) Unit!152482)

(assert (=> d!1681770 (= lt!2142842 (choose!38779 z!1189 (h!67037 zl!343) lambda!261632))))

(assert (=> d!1681770 (= z!1189 (set.insert (h!67037 zl!343) (as set.empty (Set Context!8376))))))

(assert (=> d!1681770 (= (lemmaFlatMapOnSingletonSet!63 z!1189 (h!67037 zl!343) lambda!261632) lt!2142842)))

(declare-fun b_lambda!201725 () Bool)

(assert (=> (not b_lambda!201725) (not d!1681770)))

(declare-fun bs!1211591 () Bool)

(assert (= bs!1211591 d!1681770))

(assert (=> bs!1211591 m!6264476))

(declare-fun m!6264642 () Bool)

(assert (=> bs!1211591 m!6264642))

(declare-fun m!6264644 () Bool)

(assert (=> bs!1211591 m!6264644))

(declare-fun m!6264646 () Bool)

(assert (=> bs!1211591 m!6264646))

(assert (=> b!5215801 d!1681770))

(declare-fun d!1681772 () Bool)

(declare-fun nullableFct!1382 (Regex!14804) Bool)

(assert (=> d!1681772 (= (nullable!4973 (h!67036 (exprs!4688 (h!67037 zl!343)))) (nullableFct!1382 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun bs!1211592 () Bool)

(assert (= bs!1211592 d!1681772))

(declare-fun m!6264648 () Bool)

(assert (=> bs!1211592 m!6264648))

(assert (=> b!5215801 d!1681772))

(declare-fun bm!367700 () Bool)

(declare-fun call!367705 () (Set Context!8376))

(assert (=> bm!367700 (= call!367705 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (h!67037 zl!343))) (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326)))))

(declare-fun b!5216037 () Bool)

(declare-fun e!3246924 () (Set Context!8376))

(assert (=> b!5216037 (= e!3246924 (set.union call!367705 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326))))))

(declare-fun b!5216038 () Bool)

(declare-fun e!3246926 () (Set Context!8376))

(assert (=> b!5216038 (= e!3246926 (as set.empty (Set Context!8376)))))

(declare-fun b!5216039 () Bool)

(assert (=> b!5216039 (= e!3246926 call!367705)))

(declare-fun b!5216040 () Bool)

(assert (=> b!5216040 (= e!3246924 e!3246926)))

(declare-fun c!899775 () Bool)

(assert (=> b!5216040 (= c!899775 (is-Cons!60588 (exprs!4688 (h!67037 zl!343))))))

(declare-fun b!5216041 () Bool)

(declare-fun e!3246925 () Bool)

(assert (=> b!5216041 (= e!3246925 (nullable!4973 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun d!1681774 () Bool)

(declare-fun c!899774 () Bool)

(assert (=> d!1681774 (= c!899774 e!3246925)))

(declare-fun res!2215162 () Bool)

(assert (=> d!1681774 (=> (not res!2215162) (not e!3246925))))

(assert (=> d!1681774 (= res!2215162 (is-Cons!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (=> d!1681774 (= (derivationStepZipperUp!176 (h!67037 zl!343) (h!67035 s!2326)) e!3246924)))

(assert (= (and d!1681774 res!2215162) b!5216041))

(assert (= (and d!1681774 c!899774) b!5216037))

(assert (= (and d!1681774 (not c!899774)) b!5216040))

(assert (= (and b!5216040 c!899775) b!5216039))

(assert (= (and b!5216040 (not c!899775)) b!5216038))

(assert (= (or b!5216037 b!5216039) bm!367700))

(declare-fun m!6264650 () Bool)

(assert (=> bm!367700 m!6264650))

(declare-fun m!6264652 () Bool)

(assert (=> b!5216037 m!6264652))

(assert (=> b!5216041 m!6264472))

(assert (=> b!5215801 d!1681774))

(declare-fun bm!367713 () Bool)

(declare-fun call!367719 () (Set Context!8376))

(declare-fun call!367720 () (Set Context!8376))

(assert (=> bm!367713 (= call!367719 call!367720)))

(declare-fun c!899789 () Bool)

(declare-fun call!367722 () List!60712)

(declare-fun bm!367714 () Bool)

(declare-fun c!899788 () Bool)

(declare-fun $colon$colon!1280 (List!60712 Regex!14804) List!60712)

(assert (=> bm!367714 (= call!367722 ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899789 c!899788) (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67036 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5216064 () Bool)

(declare-fun e!3246944 () (Set Context!8376))

(declare-fun e!3246943 () (Set Context!8376))

(assert (=> b!5216064 (= e!3246944 e!3246943)))

(assert (=> b!5216064 (= c!899788 (is-Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun bm!367715 () Bool)

(declare-fun c!899787 () Bool)

(declare-fun call!367723 () (Set Context!8376))

(assert (=> bm!367715 (= call!367723 (derivationStepZipperDown!252 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))) (ite c!899787 lt!2142745 (Context!8377 call!367722)) (h!67035 s!2326)))))

(declare-fun b!5216065 () Bool)

(declare-fun e!3246942 () Bool)

(assert (=> b!5216065 (= e!3246942 (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5216066 () Bool)

(declare-fun e!3246939 () (Set Context!8376))

(assert (=> b!5216066 (= e!3246939 (as set.empty (Set Context!8376)))))

(declare-fun b!5216067 () Bool)

(declare-fun call!367721 () (Set Context!8376))

(assert (=> b!5216067 (= e!3246939 call!367721)))

(declare-fun b!5216068 () Bool)

(declare-fun e!3246940 () (Set Context!8376))

(declare-fun e!3246941 () (Set Context!8376))

(assert (=> b!5216068 (= e!3246940 e!3246941)))

(assert (=> b!5216068 (= c!899787 (is-Union!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216069 () Bool)

(assert (=> b!5216069 (= c!899789 e!3246942)))

(declare-fun res!2215165 () Bool)

(assert (=> b!5216069 (=> (not res!2215165) (not e!3246942))))

(assert (=> b!5216069 (= res!2215165 (is-Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5216069 (= e!3246941 e!3246944)))

(declare-fun bm!367716 () Bool)

(declare-fun call!367718 () List!60712)

(assert (=> bm!367716 (= call!367718 call!367722)))

(declare-fun b!5216070 () Bool)

(declare-fun c!899790 () Bool)

(assert (=> b!5216070 (= c!899790 (is-Star!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5216070 (= e!3246943 e!3246939)))

(declare-fun b!5216071 () Bool)

(assert (=> b!5216071 (= e!3246944 (set.union call!367723 call!367719))))

(declare-fun d!1681776 () Bool)

(declare-fun c!899786 () Bool)

(assert (=> d!1681776 (= c!899786 (and (is-ElementMatch!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))) (= (c!899739 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326))))))

(assert (=> d!1681776 (= (derivationStepZipperDown!252 (h!67036 (exprs!4688 (h!67037 zl!343))) lt!2142745 (h!67035 s!2326)) e!3246940)))

(declare-fun bm!367717 () Bool)

(assert (=> bm!367717 (= call!367721 call!367719)))

(declare-fun bm!367718 () Bool)

(assert (=> bm!367718 (= call!367720 (derivationStepZipperDown!252 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))) (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718)) (h!67035 s!2326)))))

(declare-fun b!5216072 () Bool)

(assert (=> b!5216072 (= e!3246943 call!367721)))

(declare-fun b!5216073 () Bool)

(assert (=> b!5216073 (= e!3246940 (set.insert lt!2142745 (as set.empty (Set Context!8376))))))

(declare-fun b!5216074 () Bool)

(assert (=> b!5216074 (= e!3246941 (set.union call!367723 call!367720))))

(assert (= (and d!1681776 c!899786) b!5216073))

(assert (= (and d!1681776 (not c!899786)) b!5216068))

(assert (= (and b!5216068 c!899787) b!5216074))

(assert (= (and b!5216068 (not c!899787)) b!5216069))

(assert (= (and b!5216069 res!2215165) b!5216065))

(assert (= (and b!5216069 c!899789) b!5216071))

(assert (= (and b!5216069 (not c!899789)) b!5216064))

(assert (= (and b!5216064 c!899788) b!5216072))

(assert (= (and b!5216064 (not c!899788)) b!5216070))

(assert (= (and b!5216070 c!899790) b!5216067))

(assert (= (and b!5216070 (not c!899790)) b!5216066))

(assert (= (or b!5216072 b!5216067) bm!367716))

(assert (= (or b!5216072 b!5216067) bm!367717))

(assert (= (or b!5216071 bm!367716) bm!367714))

(assert (= (or b!5216071 bm!367717) bm!367713))

(assert (= (or b!5216074 bm!367713) bm!367718))

(assert (= (or b!5216074 b!5216071) bm!367715))

(declare-fun m!6264654 () Bool)

(assert (=> b!5216073 m!6264654))

(declare-fun m!6264656 () Bool)

(assert (=> bm!367714 m!6264656))

(declare-fun m!6264658 () Bool)

(assert (=> bm!367715 m!6264658))

(declare-fun m!6264660 () Bool)

(assert (=> b!5216065 m!6264660))

(declare-fun m!6264662 () Bool)

(assert (=> bm!367718 m!6264662))

(assert (=> b!5215801 d!1681776))

(declare-fun bm!367719 () Bool)

(declare-fun call!367724 () (Set Context!8376))

(assert (=> bm!367719 (= call!367724 (derivationStepZipperDown!252 (h!67036 (exprs!4688 lt!2142745)) (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (h!67035 s!2326)))))

(declare-fun b!5216075 () Bool)

(declare-fun e!3246945 () (Set Context!8376))

(assert (=> b!5216075 (= e!3246945 (set.union call!367724 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (h!67035 s!2326))))))

(declare-fun b!5216076 () Bool)

(declare-fun e!3246947 () (Set Context!8376))

(assert (=> b!5216076 (= e!3246947 (as set.empty (Set Context!8376)))))

(declare-fun b!5216077 () Bool)

(assert (=> b!5216077 (= e!3246947 call!367724)))

(declare-fun b!5216078 () Bool)

(assert (=> b!5216078 (= e!3246945 e!3246947)))

(declare-fun c!899792 () Bool)

(assert (=> b!5216078 (= c!899792 (is-Cons!60588 (exprs!4688 lt!2142745)))))

(declare-fun b!5216079 () Bool)

(declare-fun e!3246946 () Bool)

(assert (=> b!5216079 (= e!3246946 (nullable!4973 (h!67036 (exprs!4688 lt!2142745))))))

(declare-fun d!1681778 () Bool)

(declare-fun c!899791 () Bool)

(assert (=> d!1681778 (= c!899791 e!3246946)))

(declare-fun res!2215166 () Bool)

(assert (=> d!1681778 (=> (not res!2215166) (not e!3246946))))

(assert (=> d!1681778 (= res!2215166 (is-Cons!60588 (exprs!4688 lt!2142745)))))

(assert (=> d!1681778 (= (derivationStepZipperUp!176 lt!2142745 (h!67035 s!2326)) e!3246945)))

(assert (= (and d!1681778 res!2215166) b!5216079))

(assert (= (and d!1681778 c!899791) b!5216075))

(assert (= (and d!1681778 (not c!899791)) b!5216078))

(assert (= (and b!5216078 c!899792) b!5216077))

(assert (= (and b!5216078 (not c!899792)) b!5216076))

(assert (= (or b!5216075 b!5216077) bm!367719))

(declare-fun m!6264664 () Bool)

(assert (=> bm!367719 m!6264664))

(declare-fun m!6264666 () Bool)

(assert (=> b!5216075 m!6264666))

(declare-fun m!6264668 () Bool)

(assert (=> b!5216079 m!6264668))

(assert (=> b!5215801 d!1681778))

(declare-fun bm!367720 () Bool)

(declare-fun call!367725 () (Set Context!8376))

(assert (=> bm!367720 (= call!367725 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326)))))

(declare-fun e!3246948 () (Set Context!8376))

(declare-fun b!5216080 () Bool)

(assert (=> b!5216080 (= e!3246948 (set.union call!367725 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326))))))

(declare-fun b!5216081 () Bool)

(declare-fun e!3246950 () (Set Context!8376))

(assert (=> b!5216081 (= e!3246950 (as set.empty (Set Context!8376)))))

(declare-fun b!5216082 () Bool)

(assert (=> b!5216082 (= e!3246950 call!367725)))

(declare-fun b!5216083 () Bool)

(assert (=> b!5216083 (= e!3246948 e!3246950)))

(declare-fun c!899794 () Bool)

(assert (=> b!5216083 (= c!899794 (is-Cons!60588 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))

(declare-fun b!5216084 () Bool)

(declare-fun e!3246949 () Bool)

(assert (=> b!5216084 (= e!3246949 (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun d!1681780 () Bool)

(declare-fun c!899793 () Bool)

(assert (=> d!1681780 (= c!899793 e!3246949)))

(declare-fun res!2215167 () Bool)

(assert (=> d!1681780 (=> (not res!2215167) (not e!3246949))))

(assert (=> d!1681780 (= res!2215167 (is-Cons!60588 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))

(assert (=> d!1681780 (= (derivationStepZipperUp!176 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))) (h!67035 s!2326)) e!3246948)))

(assert (= (and d!1681780 res!2215167) b!5216084))

(assert (= (and d!1681780 c!899793) b!5216080))

(assert (= (and d!1681780 (not c!899793)) b!5216083))

(assert (= (and b!5216083 c!899794) b!5216082))

(assert (= (and b!5216083 (not c!899794)) b!5216081))

(assert (= (or b!5216080 b!5216082) bm!367720))

(declare-fun m!6264670 () Bool)

(assert (=> bm!367720 m!6264670))

(declare-fun m!6264672 () Bool)

(assert (=> b!5216080 m!6264672))

(declare-fun m!6264674 () Bool)

(assert (=> b!5216084 m!6264674))

(assert (=> b!5215801 d!1681780))

(declare-fun bm!367721 () Bool)

(declare-fun call!367726 () (Set Context!8376))

(assert (=> bm!367721 (= call!367726 (derivationStepZipperDown!252 (h!67036 (exprs!4688 lt!2142756)) (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (h!67035 s!2326)))))

(declare-fun e!3246951 () (Set Context!8376))

(declare-fun b!5216085 () Bool)

(assert (=> b!5216085 (= e!3246951 (set.union call!367726 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (h!67035 s!2326))))))

(declare-fun b!5216086 () Bool)

(declare-fun e!3246953 () (Set Context!8376))

(assert (=> b!5216086 (= e!3246953 (as set.empty (Set Context!8376)))))

(declare-fun b!5216087 () Bool)

(assert (=> b!5216087 (= e!3246953 call!367726)))

(declare-fun b!5216088 () Bool)

(assert (=> b!5216088 (= e!3246951 e!3246953)))

(declare-fun c!899796 () Bool)

(assert (=> b!5216088 (= c!899796 (is-Cons!60588 (exprs!4688 lt!2142756)))))

(declare-fun b!5216089 () Bool)

(declare-fun e!3246952 () Bool)

(assert (=> b!5216089 (= e!3246952 (nullable!4973 (h!67036 (exprs!4688 lt!2142756))))))

(declare-fun d!1681782 () Bool)

(declare-fun c!899795 () Bool)

(assert (=> d!1681782 (= c!899795 e!3246952)))

(declare-fun res!2215168 () Bool)

(assert (=> d!1681782 (=> (not res!2215168) (not e!3246952))))

(assert (=> d!1681782 (= res!2215168 (is-Cons!60588 (exprs!4688 lt!2142756)))))

(assert (=> d!1681782 (= (derivationStepZipperUp!176 lt!2142756 (h!67035 s!2326)) e!3246951)))

(assert (= (and d!1681782 res!2215168) b!5216089))

(assert (= (and d!1681782 c!899795) b!5216085))

(assert (= (and d!1681782 (not c!899795)) b!5216088))

(assert (= (and b!5216088 c!899796) b!5216087))

(assert (= (and b!5216088 (not c!899796)) b!5216086))

(assert (= (or b!5216085 b!5216087) bm!367721))

(declare-fun m!6264676 () Bool)

(assert (=> bm!367721 m!6264676))

(declare-fun m!6264678 () Bool)

(assert (=> b!5216085 m!6264678))

(declare-fun m!6264680 () Bool)

(assert (=> b!5216089 m!6264680))

(assert (=> b!5215812 d!1681782))

(declare-fun d!1681784 () Bool)

(assert (=> d!1681784 (= (flatMap!531 lt!2142751 lambda!261632) (dynLambda!23938 lambda!261632 lt!2142756))))

(declare-fun lt!2142843 () Unit!152482)

(assert (=> d!1681784 (= lt!2142843 (choose!38779 lt!2142751 lt!2142756 lambda!261632))))

(assert (=> d!1681784 (= lt!2142751 (set.insert lt!2142756 (as set.empty (Set Context!8376))))))

(assert (=> d!1681784 (= (lemmaFlatMapOnSingletonSet!63 lt!2142751 lt!2142756 lambda!261632) lt!2142843)))

(declare-fun b_lambda!201727 () Bool)

(assert (=> (not b_lambda!201727) (not d!1681784)))

(declare-fun bs!1211593 () Bool)

(assert (= bs!1211593 d!1681784))

(assert (=> bs!1211593 m!6264522))

(declare-fun m!6264682 () Bool)

(assert (=> bs!1211593 m!6264682))

(declare-fun m!6264684 () Bool)

(assert (=> bs!1211593 m!6264684))

(assert (=> bs!1211593 m!6264526))

(assert (=> b!5215812 d!1681784))

(declare-fun bs!1211594 () Bool)

(declare-fun d!1681786 () Bool)

(assert (= bs!1211594 (and d!1681786 b!5215801)))

(declare-fun lambda!261654 () Int)

(assert (=> bs!1211594 (= lambda!261654 lambda!261632)))

(assert (=> d!1681786 true))

(assert (=> d!1681786 (= (derivationStepZipper!1074 lt!2142751 (h!67035 s!2326)) (flatMap!531 lt!2142751 lambda!261654))))

(declare-fun bs!1211595 () Bool)

(assert (= bs!1211595 d!1681786))

(declare-fun m!6264686 () Bool)

(assert (=> bs!1211595 m!6264686))

(assert (=> b!5215812 d!1681786))

(declare-fun d!1681788 () Bool)

(assert (=> d!1681788 (= (nullable!4973 (regOne!30121 (regOne!30120 r!7292))) (nullableFct!1382 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun bs!1211596 () Bool)

(assert (= bs!1211596 d!1681788))

(declare-fun m!6264688 () Bool)

(assert (=> bs!1211596 m!6264688))

(assert (=> b!5215812 d!1681788))

(declare-fun d!1681790 () Bool)

(assert (=> d!1681790 (= (flatMap!531 lt!2142751 lambda!261632) (choose!38778 lt!2142751 lambda!261632))))

(declare-fun bs!1211597 () Bool)

(assert (= bs!1211597 d!1681790))

(declare-fun m!6264690 () Bool)

(assert (=> bs!1211597 m!6264690))

(assert (=> b!5215812 d!1681790))

(declare-fun d!1681792 () Bool)

(declare-fun lambda!261657 () Int)

(declare-fun forall!14238 (List!60712 Int) Bool)

(assert (=> d!1681792 (= (inv!80258 setElem!33151) (forall!14238 (exprs!4688 setElem!33151) lambda!261657))))

(declare-fun bs!1211598 () Bool)

(assert (= bs!1211598 d!1681792))

(declare-fun m!6264692 () Bool)

(assert (=> bs!1211598 m!6264692))

(assert (=> setNonEmpty!33151 d!1681792))

(declare-fun bm!367722 () Bool)

(declare-fun call!367728 () (Set Context!8376))

(declare-fun call!367729 () (Set Context!8376))

(assert (=> bm!367722 (= call!367728 call!367729)))

(declare-fun bm!367723 () Bool)

(declare-fun c!899802 () Bool)

(declare-fun call!367731 () List!60712)

(declare-fun c!899801 () Bool)

(assert (=> bm!367723 (= call!367731 ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899802 c!899801) (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (regTwo!30121 (regOne!30120 r!7292)))))))

(declare-fun b!5216092 () Bool)

(declare-fun e!3246959 () (Set Context!8376))

(declare-fun e!3246958 () (Set Context!8376))

(assert (=> b!5216092 (= e!3246959 e!3246958)))

(assert (=> b!5216092 (= c!899801 (is-Concat!23649 (regTwo!30121 (regOne!30120 r!7292))))))

(declare-fun call!367732 () (Set Context!8376))

(declare-fun bm!367724 () Bool)

(declare-fun c!899800 () Bool)

(assert (=> bm!367724 (= call!367732 (derivationStepZipperDown!252 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))) (ite c!899800 lt!2142745 (Context!8377 call!367731)) (h!67035 s!2326)))))

(declare-fun b!5216093 () Bool)

(declare-fun e!3246957 () Bool)

(assert (=> b!5216093 (= e!3246957 (nullable!4973 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))))

(declare-fun b!5216094 () Bool)

(declare-fun e!3246954 () (Set Context!8376))

(assert (=> b!5216094 (= e!3246954 (as set.empty (Set Context!8376)))))

(declare-fun b!5216095 () Bool)

(declare-fun call!367730 () (Set Context!8376))

(assert (=> b!5216095 (= e!3246954 call!367730)))

(declare-fun b!5216096 () Bool)

(declare-fun e!3246955 () (Set Context!8376))

(declare-fun e!3246956 () (Set Context!8376))

(assert (=> b!5216096 (= e!3246955 e!3246956)))

(assert (=> b!5216096 (= c!899800 (is-Union!14804 (regTwo!30121 (regOne!30120 r!7292))))))

(declare-fun b!5216097 () Bool)

(assert (=> b!5216097 (= c!899802 e!3246957)))

(declare-fun res!2215169 () Bool)

(assert (=> b!5216097 (=> (not res!2215169) (not e!3246957))))

(assert (=> b!5216097 (= res!2215169 (is-Concat!23649 (regTwo!30121 (regOne!30120 r!7292))))))

(assert (=> b!5216097 (= e!3246956 e!3246959)))

(declare-fun bm!367725 () Bool)

(declare-fun call!367727 () List!60712)

(assert (=> bm!367725 (= call!367727 call!367731)))

(declare-fun b!5216098 () Bool)

(declare-fun c!899803 () Bool)

(assert (=> b!5216098 (= c!899803 (is-Star!14804 (regTwo!30121 (regOne!30120 r!7292))))))

(assert (=> b!5216098 (= e!3246958 e!3246954)))

(declare-fun b!5216099 () Bool)

(assert (=> b!5216099 (= e!3246959 (set.union call!367732 call!367728))))

(declare-fun d!1681794 () Bool)

(declare-fun c!899799 () Bool)

(assert (=> d!1681794 (= c!899799 (and (is-ElementMatch!14804 (regTwo!30121 (regOne!30120 r!7292))) (= (c!899739 (regTwo!30121 (regOne!30120 r!7292))) (h!67035 s!2326))))))

(assert (=> d!1681794 (= (derivationStepZipperDown!252 (regTwo!30121 (regOne!30120 r!7292)) lt!2142745 (h!67035 s!2326)) e!3246955)))

(declare-fun bm!367726 () Bool)

(assert (=> bm!367726 (= call!367730 call!367728)))

(declare-fun bm!367727 () Bool)

(assert (=> bm!367727 (= call!367729 (derivationStepZipperDown!252 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))) (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727)) (h!67035 s!2326)))))

(declare-fun b!5216100 () Bool)

(assert (=> b!5216100 (= e!3246958 call!367730)))

(declare-fun b!5216101 () Bool)

(assert (=> b!5216101 (= e!3246955 (set.insert lt!2142745 (as set.empty (Set Context!8376))))))

(declare-fun b!5216102 () Bool)

(assert (=> b!5216102 (= e!3246956 (set.union call!367732 call!367729))))

(assert (= (and d!1681794 c!899799) b!5216101))

(assert (= (and d!1681794 (not c!899799)) b!5216096))

(assert (= (and b!5216096 c!899800) b!5216102))

(assert (= (and b!5216096 (not c!899800)) b!5216097))

(assert (= (and b!5216097 res!2215169) b!5216093))

(assert (= (and b!5216097 c!899802) b!5216099))

(assert (= (and b!5216097 (not c!899802)) b!5216092))

(assert (= (and b!5216092 c!899801) b!5216100))

(assert (= (and b!5216092 (not c!899801)) b!5216098))

(assert (= (and b!5216098 c!899803) b!5216095))

(assert (= (and b!5216098 (not c!899803)) b!5216094))

(assert (= (or b!5216100 b!5216095) bm!367725))

(assert (= (or b!5216100 b!5216095) bm!367726))

(assert (= (or b!5216099 bm!367725) bm!367723))

(assert (= (or b!5216099 bm!367726) bm!367722))

(assert (= (or b!5216102 bm!367722) bm!367727))

(assert (= (or b!5216102 b!5216099) bm!367724))

(assert (=> b!5216101 m!6264654))

(declare-fun m!6264694 () Bool)

(assert (=> bm!367723 m!6264694))

(declare-fun m!6264696 () Bool)

(assert (=> bm!367724 m!6264696))

(declare-fun m!6264698 () Bool)

(assert (=> b!5216093 m!6264698))

(declare-fun m!6264700 () Bool)

(assert (=> bm!367727 m!6264700))

(assert (=> b!5215810 d!1681794))

(declare-fun bm!367728 () Bool)

(declare-fun call!367734 () (Set Context!8376))

(declare-fun call!367735 () (Set Context!8376))

(assert (=> bm!367728 (= call!367734 call!367735)))

(declare-fun c!899807 () Bool)

(declare-fun bm!367729 () Bool)

(declare-fun c!899806 () Bool)

(declare-fun call!367737 () List!60712)

(assert (=> bm!367729 (= call!367737 ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899807 c!899806) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun b!5216103 () Bool)

(declare-fun e!3246965 () (Set Context!8376))

(declare-fun e!3246964 () (Set Context!8376))

(assert (=> b!5216103 (= e!3246965 e!3246964)))

(assert (=> b!5216103 (= c!899806 (is-Concat!23649 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun c!899805 () Bool)

(declare-fun call!367738 () (Set Context!8376))

(declare-fun bm!367730 () Bool)

(assert (=> bm!367730 (= call!367738 (derivationStepZipperDown!252 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))) (ite c!899805 lt!2142745 (Context!8377 call!367737)) (h!67035 s!2326)))))

(declare-fun b!5216104 () Bool)

(declare-fun e!3246963 () Bool)

(assert (=> b!5216104 (= e!3246963 (nullable!4973 (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun b!5216105 () Bool)

(declare-fun e!3246960 () (Set Context!8376))

(assert (=> b!5216105 (= e!3246960 (as set.empty (Set Context!8376)))))

(declare-fun b!5216106 () Bool)

(declare-fun call!367736 () (Set Context!8376))

(assert (=> b!5216106 (= e!3246960 call!367736)))

(declare-fun b!5216107 () Bool)

(declare-fun e!3246961 () (Set Context!8376))

(declare-fun e!3246962 () (Set Context!8376))

(assert (=> b!5216107 (= e!3246961 e!3246962)))

(assert (=> b!5216107 (= c!899805 (is-Union!14804 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun b!5216108 () Bool)

(assert (=> b!5216108 (= c!899807 e!3246963)))

(declare-fun res!2215170 () Bool)

(assert (=> b!5216108 (=> (not res!2215170) (not e!3246963))))

(assert (=> b!5216108 (= res!2215170 (is-Concat!23649 (regOne!30121 (regOne!30120 r!7292))))))

(assert (=> b!5216108 (= e!3246962 e!3246965)))

(declare-fun bm!367731 () Bool)

(declare-fun call!367733 () List!60712)

(assert (=> bm!367731 (= call!367733 call!367737)))

(declare-fun b!5216109 () Bool)

(declare-fun c!899808 () Bool)

(assert (=> b!5216109 (= c!899808 (is-Star!14804 (regOne!30121 (regOne!30120 r!7292))))))

(assert (=> b!5216109 (= e!3246964 e!3246960)))

(declare-fun b!5216110 () Bool)

(assert (=> b!5216110 (= e!3246965 (set.union call!367738 call!367734))))

(declare-fun d!1681796 () Bool)

(declare-fun c!899804 () Bool)

(assert (=> d!1681796 (= c!899804 (and (is-ElementMatch!14804 (regOne!30121 (regOne!30120 r!7292))) (= (c!899739 (regOne!30121 (regOne!30120 r!7292))) (h!67035 s!2326))))))

(assert (=> d!1681796 (= (derivationStepZipperDown!252 (regOne!30121 (regOne!30120 r!7292)) lt!2142745 (h!67035 s!2326)) e!3246961)))

(declare-fun bm!367732 () Bool)

(assert (=> bm!367732 (= call!367736 call!367734)))

(declare-fun bm!367733 () Bool)

(assert (=> bm!367733 (= call!367735 (derivationStepZipperDown!252 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))) (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733)) (h!67035 s!2326)))))

(declare-fun b!5216111 () Bool)

(assert (=> b!5216111 (= e!3246964 call!367736)))

(declare-fun b!5216112 () Bool)

(assert (=> b!5216112 (= e!3246961 (set.insert lt!2142745 (as set.empty (Set Context!8376))))))

(declare-fun b!5216113 () Bool)

(assert (=> b!5216113 (= e!3246962 (set.union call!367738 call!367735))))

(assert (= (and d!1681796 c!899804) b!5216112))

(assert (= (and d!1681796 (not c!899804)) b!5216107))

(assert (= (and b!5216107 c!899805) b!5216113))

(assert (= (and b!5216107 (not c!899805)) b!5216108))

(assert (= (and b!5216108 res!2215170) b!5216104))

(assert (= (and b!5216108 c!899807) b!5216110))

(assert (= (and b!5216108 (not c!899807)) b!5216103))

(assert (= (and b!5216103 c!899806) b!5216111))

(assert (= (and b!5216103 (not c!899806)) b!5216109))

(assert (= (and b!5216109 c!899808) b!5216106))

(assert (= (and b!5216109 (not c!899808)) b!5216105))

(assert (= (or b!5216111 b!5216106) bm!367731))

(assert (= (or b!5216111 b!5216106) bm!367732))

(assert (= (or b!5216110 bm!367731) bm!367729))

(assert (= (or b!5216110 bm!367732) bm!367728))

(assert (= (or b!5216113 bm!367728) bm!367733))

(assert (= (or b!5216113 b!5216110) bm!367730))

(assert (=> b!5216112 m!6264654))

(declare-fun m!6264702 () Bool)

(assert (=> bm!367729 m!6264702))

(declare-fun m!6264704 () Bool)

(assert (=> bm!367730 m!6264704))

(declare-fun m!6264706 () Bool)

(assert (=> b!5216104 m!6264706))

(declare-fun m!6264708 () Bool)

(assert (=> bm!367733 m!6264708))

(assert (=> b!5215810 d!1681796))

(declare-fun d!1681798 () Bool)

(declare-fun c!899811 () Bool)

(assert (=> d!1681798 (= c!899811 (isEmpty!32507 s!2326))))

(declare-fun e!3246968 () Bool)

(assert (=> d!1681798 (= (matchZipper!1048 lt!2142751 s!2326) e!3246968)))

(declare-fun b!5216118 () Bool)

(declare-fun nullableZipper!1230 ((Set Context!8376)) Bool)

(assert (=> b!5216118 (= e!3246968 (nullableZipper!1230 lt!2142751))))

(declare-fun b!5216119 () Bool)

(assert (=> b!5216119 (= e!3246968 (matchZipper!1048 (derivationStepZipper!1074 lt!2142751 (head!11179 s!2326)) (tail!10276 s!2326)))))

(assert (= (and d!1681798 c!899811) b!5216118))

(assert (= (and d!1681798 (not c!899811)) b!5216119))

(assert (=> d!1681798 m!6264618))

(declare-fun m!6264710 () Bool)

(assert (=> b!5216118 m!6264710))

(assert (=> b!5216119 m!6264626))

(assert (=> b!5216119 m!6264626))

(declare-fun m!6264712 () Bool)

(assert (=> b!5216119 m!6264712))

(assert (=> b!5216119 m!6264630))

(assert (=> b!5216119 m!6264712))

(assert (=> b!5216119 m!6264630))

(declare-fun m!6264714 () Bool)

(assert (=> b!5216119 m!6264714))

(assert (=> b!5215821 d!1681798))

(declare-fun d!1681800 () Bool)

(declare-fun c!899812 () Bool)

(assert (=> d!1681800 (= c!899812 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3246969 () Bool)

(assert (=> d!1681800 (= (matchZipper!1048 lt!2142744 (t!373878 s!2326)) e!3246969)))

(declare-fun b!5216120 () Bool)

(assert (=> b!5216120 (= e!3246969 (nullableZipper!1230 lt!2142744))))

(declare-fun b!5216121 () Bool)

(assert (=> b!5216121 (= e!3246969 (matchZipper!1048 (derivationStepZipper!1074 lt!2142744 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681800 c!899812) b!5216120))

(assert (= (and d!1681800 (not c!899812)) b!5216121))

(declare-fun m!6264716 () Bool)

(assert (=> d!1681800 m!6264716))

(declare-fun m!6264718 () Bool)

(assert (=> b!5216120 m!6264718))

(declare-fun m!6264720 () Bool)

(assert (=> b!5216121 m!6264720))

(assert (=> b!5216121 m!6264720))

(declare-fun m!6264722 () Bool)

(assert (=> b!5216121 m!6264722))

(declare-fun m!6264724 () Bool)

(assert (=> b!5216121 m!6264724))

(assert (=> b!5216121 m!6264722))

(assert (=> b!5216121 m!6264724))

(declare-fun m!6264726 () Bool)

(assert (=> b!5216121 m!6264726))

(assert (=> b!5215821 d!1681800))

(declare-fun bm!367740 () Bool)

(declare-fun call!367747 () Bool)

(declare-fun call!367745 () Bool)

(assert (=> bm!367740 (= call!367747 call!367745)))

(declare-fun b!5216140 () Bool)

(declare-fun e!3246987 () Bool)

(assert (=> b!5216140 (= e!3246987 call!367747)))

(declare-fun b!5216141 () Bool)

(declare-fun e!3246989 () Bool)

(declare-fun e!3246984 () Bool)

(assert (=> b!5216141 (= e!3246989 e!3246984)))

(declare-fun c!899817 () Bool)

(assert (=> b!5216141 (= c!899817 (is-Star!14804 r!7292))))

(declare-fun b!5216142 () Bool)

(declare-fun res!2215184 () Bool)

(declare-fun e!3246988 () Bool)

(assert (=> b!5216142 (=> res!2215184 e!3246988)))

(assert (=> b!5216142 (= res!2215184 (not (is-Concat!23649 r!7292)))))

(declare-fun e!3246985 () Bool)

(assert (=> b!5216142 (= e!3246985 e!3246988)))

(declare-fun b!5216143 () Bool)

(assert (=> b!5216143 (= e!3246984 e!3246985)))

(declare-fun c!899818 () Bool)

(assert (=> b!5216143 (= c!899818 (is-Union!14804 r!7292))))

(declare-fun b!5216144 () Bool)

(declare-fun e!3246990 () Bool)

(assert (=> b!5216144 (= e!3246990 call!367747)))

(declare-fun b!5216145 () Bool)

(declare-fun e!3246986 () Bool)

(assert (=> b!5216145 (= e!3246984 e!3246986)))

(declare-fun res!2215181 () Bool)

(assert (=> b!5216145 (= res!2215181 (not (nullable!4973 (reg!15133 r!7292))))))

(assert (=> b!5216145 (=> (not res!2215181) (not e!3246986))))

(declare-fun bm!367741 () Bool)

(declare-fun call!367746 () Bool)

(assert (=> bm!367741 (= call!367746 (validRegex!6540 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))

(declare-fun b!5216146 () Bool)

(assert (=> b!5216146 (= e!3246988 e!3246990)))

(declare-fun res!2215183 () Bool)

(assert (=> b!5216146 (=> (not res!2215183) (not e!3246990))))

(assert (=> b!5216146 (= res!2215183 call!367746)))

(declare-fun d!1681802 () Bool)

(declare-fun res!2215185 () Bool)

(assert (=> d!1681802 (=> res!2215185 e!3246989)))

(assert (=> d!1681802 (= res!2215185 (is-ElementMatch!14804 r!7292))))

(assert (=> d!1681802 (= (validRegex!6540 r!7292) e!3246989)))

(declare-fun b!5216147 () Bool)

(assert (=> b!5216147 (= e!3246986 call!367745)))

(declare-fun bm!367742 () Bool)

(assert (=> bm!367742 (= call!367745 (validRegex!6540 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))

(declare-fun b!5216148 () Bool)

(declare-fun res!2215182 () Bool)

(assert (=> b!5216148 (=> (not res!2215182) (not e!3246987))))

(assert (=> b!5216148 (= res!2215182 call!367746)))

(assert (=> b!5216148 (= e!3246985 e!3246987)))

(assert (= (and d!1681802 (not res!2215185)) b!5216141))

(assert (= (and b!5216141 c!899817) b!5216145))

(assert (= (and b!5216141 (not c!899817)) b!5216143))

(assert (= (and b!5216145 res!2215181) b!5216147))

(assert (= (and b!5216143 c!899818) b!5216148))

(assert (= (and b!5216143 (not c!899818)) b!5216142))

(assert (= (and b!5216148 res!2215182) b!5216140))

(assert (= (and b!5216142 (not res!2215184)) b!5216146))

(assert (= (and b!5216146 res!2215183) b!5216144))

(assert (= (or b!5216140 b!5216144) bm!367740))

(assert (= (or b!5216148 b!5216146) bm!367741))

(assert (= (or b!5216147 bm!367740) bm!367742))

(declare-fun m!6264728 () Bool)

(assert (=> b!5216145 m!6264728))

(declare-fun m!6264730 () Bool)

(assert (=> bm!367741 m!6264730))

(declare-fun m!6264732 () Bool)

(assert (=> bm!367742 m!6264732))

(assert (=> start!551716 d!1681802))

(declare-fun bm!367743 () Bool)

(declare-fun call!367750 () Bool)

(declare-fun call!367748 () Bool)

(assert (=> bm!367743 (= call!367750 call!367748)))

(declare-fun b!5216149 () Bool)

(declare-fun e!3246994 () Bool)

(assert (=> b!5216149 (= e!3246994 call!367750)))

(declare-fun b!5216150 () Bool)

(declare-fun e!3246996 () Bool)

(declare-fun e!3246991 () Bool)

(assert (=> b!5216150 (= e!3246996 e!3246991)))

(declare-fun c!899819 () Bool)

(assert (=> b!5216150 (= c!899819 (is-Star!14804 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun b!5216151 () Bool)

(declare-fun res!2215189 () Bool)

(declare-fun e!3246995 () Bool)

(assert (=> b!5216151 (=> res!2215189 e!3246995)))

(assert (=> b!5216151 (= res!2215189 (not (is-Concat!23649 (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun e!3246992 () Bool)

(assert (=> b!5216151 (= e!3246992 e!3246995)))

(declare-fun b!5216152 () Bool)

(assert (=> b!5216152 (= e!3246991 e!3246992)))

(declare-fun c!899820 () Bool)

(assert (=> b!5216152 (= c!899820 (is-Union!14804 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun b!5216153 () Bool)

(declare-fun e!3246997 () Bool)

(assert (=> b!5216153 (= e!3246997 call!367750)))

(declare-fun b!5216154 () Bool)

(declare-fun e!3246993 () Bool)

(assert (=> b!5216154 (= e!3246991 e!3246993)))

(declare-fun res!2215186 () Bool)

(assert (=> b!5216154 (= res!2215186 (not (nullable!4973 (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))))

(assert (=> b!5216154 (=> (not res!2215186) (not e!3246993))))

(declare-fun bm!367744 () Bool)

(declare-fun call!367749 () Bool)

(assert (=> bm!367744 (= call!367749 (validRegex!6540 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5216155 () Bool)

(assert (=> b!5216155 (= e!3246995 e!3246997)))

(declare-fun res!2215188 () Bool)

(assert (=> b!5216155 (=> (not res!2215188) (not e!3246997))))

(assert (=> b!5216155 (= res!2215188 call!367749)))

(declare-fun d!1681804 () Bool)

(declare-fun res!2215190 () Bool)

(assert (=> d!1681804 (=> res!2215190 e!3246996)))

(assert (=> d!1681804 (= res!2215190 (is-ElementMatch!14804 (regOne!30121 (regOne!30120 r!7292))))))

(assert (=> d!1681804 (= (validRegex!6540 (regOne!30121 (regOne!30120 r!7292))) e!3246996)))

(declare-fun b!5216156 () Bool)

(assert (=> b!5216156 (= e!3246993 call!367748)))

(declare-fun bm!367745 () Bool)

(assert (=> bm!367745 (= call!367748 (validRegex!6540 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5216157 () Bool)

(declare-fun res!2215187 () Bool)

(assert (=> b!5216157 (=> (not res!2215187) (not e!3246994))))

(assert (=> b!5216157 (= res!2215187 call!367749)))

(assert (=> b!5216157 (= e!3246992 e!3246994)))

(assert (= (and d!1681804 (not res!2215190)) b!5216150))

(assert (= (and b!5216150 c!899819) b!5216154))

(assert (= (and b!5216150 (not c!899819)) b!5216152))

(assert (= (and b!5216154 res!2215186) b!5216156))

(assert (= (and b!5216152 c!899820) b!5216157))

(assert (= (and b!5216152 (not c!899820)) b!5216151))

(assert (= (and b!5216157 res!2215187) b!5216149))

(assert (= (and b!5216151 (not res!2215189)) b!5216155))

(assert (= (and b!5216155 res!2215188) b!5216153))

(assert (= (or b!5216149 b!5216153) bm!367743))

(assert (= (or b!5216157 b!5216155) bm!367744))

(assert (= (or b!5216156 bm!367743) bm!367745))

(declare-fun m!6264734 () Bool)

(assert (=> b!5216154 m!6264734))

(declare-fun m!6264736 () Bool)

(assert (=> bm!367744 m!6264736))

(declare-fun m!6264738 () Bool)

(assert (=> bm!367745 m!6264738))

(assert (=> b!5215799 d!1681804))

(declare-fun d!1681806 () Bool)

(declare-fun c!899821 () Bool)

(assert (=> d!1681806 (= c!899821 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3246998 () Bool)

(assert (=> d!1681806 (= (matchZipper!1048 lt!2142760 (t!373878 s!2326)) e!3246998)))

(declare-fun b!5216158 () Bool)

(assert (=> b!5216158 (= e!3246998 (nullableZipper!1230 lt!2142760))))

(declare-fun b!5216159 () Bool)

(assert (=> b!5216159 (= e!3246998 (matchZipper!1048 (derivationStepZipper!1074 lt!2142760 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681806 c!899821) b!5216158))

(assert (= (and d!1681806 (not c!899821)) b!5216159))

(assert (=> d!1681806 m!6264716))

(declare-fun m!6264740 () Bool)

(assert (=> b!5216158 m!6264740))

(assert (=> b!5216159 m!6264720))

(assert (=> b!5216159 m!6264720))

(declare-fun m!6264742 () Bool)

(assert (=> b!5216159 m!6264742))

(assert (=> b!5216159 m!6264724))

(assert (=> b!5216159 m!6264742))

(assert (=> b!5216159 m!6264724))

(declare-fun m!6264744 () Bool)

(assert (=> b!5216159 m!6264744))

(assert (=> b!5215820 d!1681806))

(declare-fun d!1681808 () Bool)

(declare-fun c!899822 () Bool)

(assert (=> d!1681808 (= c!899822 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3246999 () Bool)

(assert (=> d!1681808 (= (matchZipper!1048 lt!2142747 (t!373878 s!2326)) e!3246999)))

(declare-fun b!5216160 () Bool)

(assert (=> b!5216160 (= e!3246999 (nullableZipper!1230 lt!2142747))))

(declare-fun b!5216161 () Bool)

(assert (=> b!5216161 (= e!3246999 (matchZipper!1048 (derivationStepZipper!1074 lt!2142747 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681808 c!899822) b!5216160))

(assert (= (and d!1681808 (not c!899822)) b!5216161))

(assert (=> d!1681808 m!6264716))

(declare-fun m!6264746 () Bool)

(assert (=> b!5216160 m!6264746))

(assert (=> b!5216161 m!6264720))

(assert (=> b!5216161 m!6264720))

(declare-fun m!6264748 () Bool)

(assert (=> b!5216161 m!6264748))

(assert (=> b!5216161 m!6264724))

(assert (=> b!5216161 m!6264748))

(assert (=> b!5216161 m!6264724))

(declare-fun m!6264750 () Bool)

(assert (=> b!5216161 m!6264750))

(assert (=> b!5215820 d!1681808))

(declare-fun d!1681810 () Bool)

(declare-fun c!899823 () Bool)

(assert (=> d!1681810 (= c!899823 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3247000 () Bool)

(assert (=> d!1681810 (= (matchZipper!1048 lt!2142752 (t!373878 s!2326)) e!3247000)))

(declare-fun b!5216162 () Bool)

(assert (=> b!5216162 (= e!3247000 (nullableZipper!1230 lt!2142752))))

(declare-fun b!5216163 () Bool)

(assert (=> b!5216163 (= e!3247000 (matchZipper!1048 (derivationStepZipper!1074 lt!2142752 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681810 c!899823) b!5216162))

(assert (= (and d!1681810 (not c!899823)) b!5216163))

(assert (=> d!1681810 m!6264716))

(declare-fun m!6264752 () Bool)

(assert (=> b!5216162 m!6264752))

(assert (=> b!5216163 m!6264720))

(assert (=> b!5216163 m!6264720))

(declare-fun m!6264754 () Bool)

(assert (=> b!5216163 m!6264754))

(assert (=> b!5216163 m!6264724))

(assert (=> b!5216163 m!6264754))

(assert (=> b!5216163 m!6264724))

(declare-fun m!6264756 () Bool)

(assert (=> b!5216163 m!6264756))

(assert (=> b!5215820 d!1681810))

(declare-fun d!1681812 () Bool)

(declare-fun e!3247003 () Bool)

(assert (=> d!1681812 (= (matchZipper!1048 (set.union lt!2142752 lt!2142762) (t!373878 s!2326)) e!3247003)))

(declare-fun res!2215193 () Bool)

(assert (=> d!1681812 (=> res!2215193 e!3247003)))

(assert (=> d!1681812 (= res!2215193 (matchZipper!1048 lt!2142752 (t!373878 s!2326)))))

(declare-fun lt!2142846 () Unit!152482)

(declare-fun choose!38780 ((Set Context!8376) (Set Context!8376) List!60711) Unit!152482)

(assert (=> d!1681812 (= lt!2142846 (choose!38780 lt!2142752 lt!2142762 (t!373878 s!2326)))))

(assert (=> d!1681812 (= (lemmaZipperConcatMatchesSameAsBothZippers!41 lt!2142752 lt!2142762 (t!373878 s!2326)) lt!2142846)))

(declare-fun b!5216166 () Bool)

(assert (=> b!5216166 (= e!3247003 (matchZipper!1048 lt!2142762 (t!373878 s!2326)))))

(assert (= (and d!1681812 (not res!2215193)) b!5216166))

(declare-fun m!6264758 () Bool)

(assert (=> d!1681812 m!6264758))

(assert (=> d!1681812 m!6264494))

(declare-fun m!6264760 () Bool)

(assert (=> d!1681812 m!6264760))

(assert (=> b!5216166 m!6264502))

(assert (=> b!5215820 d!1681812))

(declare-fun d!1681814 () Bool)

(assert (=> d!1681814 (= (isEmpty!32503 (t!373880 zl!343)) (is-Nil!60589 (t!373880 zl!343)))))

(assert (=> b!5215807 d!1681814))

(declare-fun d!1681816 () Bool)

(declare-fun c!899824 () Bool)

(assert (=> d!1681816 (= c!899824 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3247004 () Bool)

(assert (=> d!1681816 (= (matchZipper!1048 lt!2142762 (t!373878 s!2326)) e!3247004)))

(declare-fun b!5216167 () Bool)

(assert (=> b!5216167 (= e!3247004 (nullableZipper!1230 lt!2142762))))

(declare-fun b!5216168 () Bool)

(assert (=> b!5216168 (= e!3247004 (matchZipper!1048 (derivationStepZipper!1074 lt!2142762 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681816 c!899824) b!5216167))

(assert (= (and d!1681816 (not c!899824)) b!5216168))

(assert (=> d!1681816 m!6264716))

(declare-fun m!6264762 () Bool)

(assert (=> b!5216167 m!6264762))

(assert (=> b!5216168 m!6264720))

(assert (=> b!5216168 m!6264720))

(declare-fun m!6264764 () Bool)

(assert (=> b!5216168 m!6264764))

(assert (=> b!5216168 m!6264724))

(assert (=> b!5216168 m!6264764))

(assert (=> b!5216168 m!6264724))

(declare-fun m!6264766 () Bool)

(assert (=> b!5216168 m!6264766))

(assert (=> b!5215818 d!1681816))

(declare-fun d!1681818 () Bool)

(declare-fun e!3247005 () Bool)

(assert (=> d!1681818 (= (matchZipper!1048 (set.union lt!2142760 lt!2142746) (t!373878 s!2326)) e!3247005)))

(declare-fun res!2215194 () Bool)

(assert (=> d!1681818 (=> res!2215194 e!3247005)))

(assert (=> d!1681818 (= res!2215194 (matchZipper!1048 lt!2142760 (t!373878 s!2326)))))

(declare-fun lt!2142847 () Unit!152482)

(assert (=> d!1681818 (= lt!2142847 (choose!38780 lt!2142760 lt!2142746 (t!373878 s!2326)))))

(assert (=> d!1681818 (= (lemmaZipperConcatMatchesSameAsBothZippers!41 lt!2142760 lt!2142746 (t!373878 s!2326)) lt!2142847)))

(declare-fun b!5216169 () Bool)

(assert (=> b!5216169 (= e!3247005 (matchZipper!1048 lt!2142746 (t!373878 s!2326)))))

(assert (= (and d!1681818 (not res!2215194)) b!5216169))

(assert (=> d!1681818 m!6264500))

(assert (=> d!1681818 m!6264490))

(declare-fun m!6264768 () Bool)

(assert (=> d!1681818 m!6264768))

(assert (=> b!5216169 m!6264514))

(assert (=> b!5215798 d!1681818))

(assert (=> b!5215798 d!1681806))

(declare-fun d!1681820 () Bool)

(declare-fun c!899825 () Bool)

(assert (=> d!1681820 (= c!899825 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3247006 () Bool)

(assert (=> d!1681820 (= (matchZipper!1048 (set.union lt!2142760 lt!2142746) (t!373878 s!2326)) e!3247006)))

(declare-fun b!5216170 () Bool)

(assert (=> b!5216170 (= e!3247006 (nullableZipper!1230 (set.union lt!2142760 lt!2142746)))))

(declare-fun b!5216171 () Bool)

(assert (=> b!5216171 (= e!3247006 (matchZipper!1048 (derivationStepZipper!1074 (set.union lt!2142760 lt!2142746) (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681820 c!899825) b!5216170))

(assert (= (and d!1681820 (not c!899825)) b!5216171))

(assert (=> d!1681820 m!6264716))

(declare-fun m!6264770 () Bool)

(assert (=> b!5216170 m!6264770))

(assert (=> b!5216171 m!6264720))

(assert (=> b!5216171 m!6264720))

(declare-fun m!6264772 () Bool)

(assert (=> b!5216171 m!6264772))

(assert (=> b!5216171 m!6264724))

(assert (=> b!5216171 m!6264772))

(assert (=> b!5216171 m!6264724))

(declare-fun m!6264774 () Bool)

(assert (=> b!5216171 m!6264774))

(assert (=> b!5215798 d!1681820))

(declare-fun bs!1211599 () Bool)

(declare-fun d!1681822 () Bool)

(assert (= bs!1211599 (and d!1681822 d!1681792)))

(declare-fun lambda!261658 () Int)

(assert (=> bs!1211599 (= lambda!261658 lambda!261657)))

(assert (=> d!1681822 (= (inv!80258 (h!67037 zl!343)) (forall!14238 (exprs!4688 (h!67037 zl!343)) lambda!261658))))

(declare-fun bs!1211600 () Bool)

(assert (= bs!1211600 d!1681822))

(declare-fun m!6264776 () Bool)

(assert (=> bs!1211600 m!6264776))

(assert (=> b!5215826 d!1681822))

(declare-fun d!1681824 () Bool)

(declare-fun e!3247009 () Bool)

(assert (=> d!1681824 e!3247009))

(declare-fun res!2215197 () Bool)

(assert (=> d!1681824 (=> (not res!2215197) (not e!3247009))))

(declare-fun lt!2142850 () List!60713)

(declare-fun noDuplicate!1186 (List!60713) Bool)

(assert (=> d!1681824 (= res!2215197 (noDuplicate!1186 lt!2142850))))

(declare-fun choose!38781 ((Set Context!8376)) List!60713)

(assert (=> d!1681824 (= lt!2142850 (choose!38781 z!1189))))

(assert (=> d!1681824 (= (toList!8588 z!1189) lt!2142850)))

(declare-fun b!5216174 () Bool)

(declare-fun content!10738 (List!60713) (Set Context!8376))

(assert (=> b!5216174 (= e!3247009 (= (content!10738 lt!2142850) z!1189))))

(assert (= (and d!1681824 res!2215197) b!5216174))

(declare-fun m!6264778 () Bool)

(assert (=> d!1681824 m!6264778))

(declare-fun m!6264780 () Bool)

(assert (=> d!1681824 m!6264780))

(declare-fun m!6264782 () Bool)

(assert (=> b!5216174 m!6264782))

(assert (=> b!5215806 d!1681824))

(declare-fun d!1681826 () Bool)

(assert (=> d!1681826 (= (isEmpty!32504 (t!373879 (exprs!4688 (h!67037 zl!343)))) (is-Nil!60588 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5215817 d!1681826))

(declare-fun d!1681828 () Bool)

(declare-fun lt!2142853 () Regex!14804)

(assert (=> d!1681828 (validRegex!6540 lt!2142853)))

(assert (=> d!1681828 (= lt!2142853 (generalisedUnion!733 (unfocusZipperList!246 zl!343)))))

(assert (=> d!1681828 (= (unfocusZipper!546 zl!343) lt!2142853)))

(declare-fun bs!1211601 () Bool)

(assert (= bs!1211601 d!1681828))

(declare-fun m!6264784 () Bool)

(assert (=> bs!1211601 m!6264784))

(assert (=> bs!1211601 m!6264440))

(assert (=> bs!1211601 m!6264440))

(assert (=> bs!1211601 m!6264442))

(assert (=> b!5215827 d!1681828))

(assert (=> b!5215815 d!1681816))

(declare-fun b!5216193 () Bool)

(declare-fun e!3247022 () Bool)

(declare-fun lt!2142861 () Option!14915)

(declare-fun ++!13210 (List!60711 List!60711) List!60711)

(declare-fun get!20818 (Option!14915) tuple2!64006)

(assert (=> b!5216193 (= e!3247022 (= (++!13210 (_1!35306 (get!20818 lt!2142861)) (_2!35306 (get!20818 lt!2142861))) s!2326))))

(declare-fun b!5216194 () Bool)

(declare-fun e!3247020 () Bool)

(assert (=> b!5216194 (= e!3247020 (not (isDefined!11618 lt!2142861)))))

(declare-fun b!5216196 () Bool)

(declare-fun e!3247021 () Option!14915)

(assert (=> b!5216196 (= e!3247021 None!14914)))

(declare-fun b!5216197 () Bool)

(declare-fun res!2215212 () Bool)

(assert (=> b!5216197 (=> (not res!2215212) (not e!3247022))))

(assert (=> b!5216197 (= res!2215212 (matchR!6989 (regOne!30120 r!7292) (_1!35306 (get!20818 lt!2142861))))))

(declare-fun b!5216198 () Bool)

(declare-fun e!3247023 () Option!14915)

(assert (=> b!5216198 (= e!3247023 e!3247021)))

(declare-fun c!899831 () Bool)

(assert (=> b!5216198 (= c!899831 (is-Nil!60587 s!2326))))

(declare-fun b!5216199 () Bool)

(declare-fun res!2215209 () Bool)

(assert (=> b!5216199 (=> (not res!2215209) (not e!3247022))))

(assert (=> b!5216199 (= res!2215209 (matchR!6989 (regTwo!30120 r!7292) (_2!35306 (get!20818 lt!2142861))))))

(declare-fun b!5216200 () Bool)

(declare-fun e!3247024 () Bool)

(assert (=> b!5216200 (= e!3247024 (matchR!6989 (regTwo!30120 r!7292) s!2326))))

(declare-fun b!5216201 () Bool)

(assert (=> b!5216201 (= e!3247023 (Some!14914 (tuple2!64007 Nil!60587 s!2326)))))

(declare-fun b!5216195 () Bool)

(declare-fun lt!2142860 () Unit!152482)

(declare-fun lt!2142862 () Unit!152482)

(assert (=> b!5216195 (= lt!2142860 lt!2142862)))

(assert (=> b!5216195 (= (++!13210 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1625 (List!60711 C!29878 List!60711 List!60711) Unit!152482)

(assert (=> b!5216195 (= lt!2142862 (lemmaMoveElementToOtherListKeepsConcatEq!1625 Nil!60587 (h!67035 s!2326) (t!373878 s!2326) s!2326))))

(assert (=> b!5216195 (= e!3247021 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326) s!2326))))

(declare-fun d!1681830 () Bool)

(assert (=> d!1681830 e!3247020))

(declare-fun res!2215210 () Bool)

(assert (=> d!1681830 (=> res!2215210 e!3247020)))

(assert (=> d!1681830 (= res!2215210 e!3247022)))

(declare-fun res!2215208 () Bool)

(assert (=> d!1681830 (=> (not res!2215208) (not e!3247022))))

(assert (=> d!1681830 (= res!2215208 (isDefined!11618 lt!2142861))))

(assert (=> d!1681830 (= lt!2142861 e!3247023)))

(declare-fun c!899830 () Bool)

(assert (=> d!1681830 (= c!899830 e!3247024)))

(declare-fun res!2215211 () Bool)

(assert (=> d!1681830 (=> (not res!2215211) (not e!3247024))))

(assert (=> d!1681830 (= res!2215211 (matchR!6989 (regOne!30120 r!7292) Nil!60587))))

(assert (=> d!1681830 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1681830 (= (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326) lt!2142861)))

(assert (= (and d!1681830 res!2215211) b!5216200))

(assert (= (and d!1681830 c!899830) b!5216201))

(assert (= (and d!1681830 (not c!899830)) b!5216198))

(assert (= (and b!5216198 c!899831) b!5216196))

(assert (= (and b!5216198 (not c!899831)) b!5216195))

(assert (= (and d!1681830 res!2215208) b!5216197))

(assert (= (and b!5216197 res!2215212) b!5216199))

(assert (= (and b!5216199 res!2215209) b!5216193))

(assert (= (and d!1681830 (not res!2215210)) b!5216194))

(declare-fun m!6264786 () Bool)

(assert (=> b!5216199 m!6264786))

(declare-fun m!6264788 () Bool)

(assert (=> b!5216199 m!6264788))

(assert (=> b!5216193 m!6264786))

(declare-fun m!6264790 () Bool)

(assert (=> b!5216193 m!6264790))

(declare-fun m!6264792 () Bool)

(assert (=> d!1681830 m!6264792))

(declare-fun m!6264794 () Bool)

(assert (=> d!1681830 m!6264794))

(declare-fun m!6264796 () Bool)

(assert (=> d!1681830 m!6264796))

(assert (=> b!5216194 m!6264792))

(assert (=> b!5216197 m!6264786))

(declare-fun m!6264798 () Bool)

(assert (=> b!5216197 m!6264798))

(declare-fun m!6264800 () Bool)

(assert (=> b!5216195 m!6264800))

(assert (=> b!5216195 m!6264800))

(declare-fun m!6264802 () Bool)

(assert (=> b!5216195 m!6264802))

(declare-fun m!6264804 () Bool)

(assert (=> b!5216195 m!6264804))

(assert (=> b!5216195 m!6264800))

(declare-fun m!6264806 () Bool)

(assert (=> b!5216195 m!6264806))

(declare-fun m!6264808 () Bool)

(assert (=> b!5216200 m!6264808))

(assert (=> b!5215825 d!1681830))

(declare-fun d!1681832 () Bool)

(declare-fun choose!38782 (Int) Bool)

(assert (=> d!1681832 (= (Exists!1985 lambda!261630) (choose!38782 lambda!261630))))

(declare-fun bs!1211602 () Bool)

(assert (= bs!1211602 d!1681832))

(declare-fun m!6264810 () Bool)

(assert (=> bs!1211602 m!6264810))

(assert (=> b!5215825 d!1681832))

(declare-fun d!1681834 () Bool)

(assert (=> d!1681834 (= (Exists!1985 lambda!261631) (choose!38782 lambda!261631))))

(declare-fun bs!1211603 () Bool)

(assert (= bs!1211603 d!1681834))

(declare-fun m!6264812 () Bool)

(assert (=> bs!1211603 m!6264812))

(assert (=> b!5215825 d!1681834))

(declare-fun bs!1211604 () Bool)

(declare-fun d!1681836 () Bool)

(assert (= bs!1211604 (and d!1681836 b!5215825)))

(declare-fun lambda!261661 () Int)

(assert (=> bs!1211604 (= lambda!261661 lambda!261630)))

(assert (=> bs!1211604 (not (= lambda!261661 lambda!261631))))

(declare-fun bs!1211605 () Bool)

(assert (= bs!1211605 (and d!1681836 b!5215977)))

(assert (=> bs!1211605 (not (= lambda!261661 lambda!261650))))

(declare-fun bs!1211606 () Bool)

(assert (= bs!1211606 (and d!1681836 b!5215984)))

(assert (=> bs!1211606 (not (= lambda!261661 lambda!261651))))

(assert (=> d!1681836 true))

(assert (=> d!1681836 true))

(assert (=> d!1681836 true))

(assert (=> d!1681836 (= (isDefined!11618 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326)) (Exists!1985 lambda!261661))))

(declare-fun lt!2142865 () Unit!152482)

(declare-fun choose!38783 (Regex!14804 Regex!14804 List!60711) Unit!152482)

(assert (=> d!1681836 (= lt!2142865 (choose!38783 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326))))

(assert (=> d!1681836 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1681836 (= (lemmaFindConcatSeparationEquivalentToExists!1093 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326) lt!2142865)))

(declare-fun bs!1211607 () Bool)

(assert (= bs!1211607 d!1681836))

(declare-fun m!6264814 () Bool)

(assert (=> bs!1211607 m!6264814))

(assert (=> bs!1211607 m!6264448))

(assert (=> bs!1211607 m!6264448))

(assert (=> bs!1211607 m!6264450))

(assert (=> bs!1211607 m!6264796))

(declare-fun m!6264816 () Bool)

(assert (=> bs!1211607 m!6264816))

(assert (=> b!5215825 d!1681836))

(declare-fun bs!1211608 () Bool)

(declare-fun d!1681838 () Bool)

(assert (= bs!1211608 (and d!1681838 b!5215977)))

(declare-fun lambda!261666 () Int)

(assert (=> bs!1211608 (not (= lambda!261666 lambda!261650))))

(declare-fun bs!1211609 () Bool)

(assert (= bs!1211609 (and d!1681838 b!5215825)))

(assert (=> bs!1211609 (not (= lambda!261666 lambda!261631))))

(declare-fun bs!1211610 () Bool)

(assert (= bs!1211610 (and d!1681838 d!1681836)))

(assert (=> bs!1211610 (= lambda!261666 lambda!261661)))

(assert (=> bs!1211609 (= lambda!261666 lambda!261630)))

(declare-fun bs!1211611 () Bool)

(assert (= bs!1211611 (and d!1681838 b!5215984)))

(assert (=> bs!1211611 (not (= lambda!261666 lambda!261651))))

(assert (=> d!1681838 true))

(assert (=> d!1681838 true))

(assert (=> d!1681838 true))

(declare-fun bs!1211612 () Bool)

(assert (= bs!1211612 d!1681838))

(declare-fun lambda!261667 () Int)

(assert (=> bs!1211612 (not (= lambda!261667 lambda!261666))))

(assert (=> bs!1211608 (not (= lambda!261667 lambda!261650))))

(assert (=> bs!1211609 (= lambda!261667 lambda!261631)))

(assert (=> bs!1211610 (not (= lambda!261667 lambda!261661))))

(assert (=> bs!1211609 (not (= lambda!261667 lambda!261630))))

(assert (=> bs!1211611 (= lambda!261667 lambda!261651)))

(assert (=> d!1681838 true))

(assert (=> d!1681838 true))

(assert (=> d!1681838 true))

(assert (=> d!1681838 (= (Exists!1985 lambda!261666) (Exists!1985 lambda!261667))))

(declare-fun lt!2142868 () Unit!152482)

(declare-fun choose!38784 (Regex!14804 Regex!14804 List!60711) Unit!152482)

(assert (=> d!1681838 (= lt!2142868 (choose!38784 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326))))

(assert (=> d!1681838 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1681838 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!639 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326) lt!2142868)))

(declare-fun m!6264818 () Bool)

(assert (=> bs!1211612 m!6264818))

(declare-fun m!6264820 () Bool)

(assert (=> bs!1211612 m!6264820))

(declare-fun m!6264822 () Bool)

(assert (=> bs!1211612 m!6264822))

(assert (=> bs!1211612 m!6264796))

(assert (=> b!5215825 d!1681838))

(declare-fun d!1681840 () Bool)

(declare-fun isEmpty!32508 (Option!14915) Bool)

(assert (=> d!1681840 (= (isDefined!11618 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326)) (not (isEmpty!32508 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326))))))

(declare-fun bs!1211613 () Bool)

(assert (= bs!1211613 d!1681840))

(assert (=> bs!1211613 m!6264448))

(declare-fun m!6264824 () Bool)

(assert (=> bs!1211613 m!6264824))

(assert (=> b!5215825 d!1681840))

(declare-fun bs!1211614 () Bool)

(declare-fun d!1681842 () Bool)

(assert (= bs!1211614 (and d!1681842 d!1681792)))

(declare-fun lambda!261670 () Int)

(assert (=> bs!1211614 (= lambda!261670 lambda!261657)))

(declare-fun bs!1211615 () Bool)

(assert (= bs!1211615 (and d!1681842 d!1681822)))

(assert (=> bs!1211615 (= lambda!261670 lambda!261658)))

(declare-fun b!5216234 () Bool)

(declare-fun e!3247047 () Regex!14804)

(assert (=> b!5216234 (= e!3247047 (h!67036 (exprs!4688 (h!67037 zl!343))))))

(declare-fun b!5216235 () Bool)

(declare-fun e!3247044 () Bool)

(assert (=> b!5216235 (= e!3247044 (isEmpty!32504 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216236 () Bool)

(declare-fun e!3247048 () Bool)

(declare-fun lt!2142871 () Regex!14804)

(declare-fun isConcat!289 (Regex!14804) Bool)

(assert (=> b!5216236 (= e!3247048 (isConcat!289 lt!2142871))))

(declare-fun b!5216237 () Bool)

(declare-fun e!3247043 () Bool)

(assert (=> b!5216237 (= e!3247043 e!3247048)))

(declare-fun c!899842 () Bool)

(declare-fun tail!10277 (List!60712) List!60712)

(assert (=> b!5216237 (= c!899842 (isEmpty!32504 (tail!10277 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun e!3247045 () Bool)

(assert (=> d!1681842 e!3247045))

(declare-fun res!2215229 () Bool)

(assert (=> d!1681842 (=> (not res!2215229) (not e!3247045))))

(assert (=> d!1681842 (= res!2215229 (validRegex!6540 lt!2142871))))

(assert (=> d!1681842 (= lt!2142871 e!3247047)))

(declare-fun c!899840 () Bool)

(assert (=> d!1681842 (= c!899840 e!3247044)))

(declare-fun res!2215230 () Bool)

(assert (=> d!1681842 (=> (not res!2215230) (not e!3247044))))

(assert (=> d!1681842 (= res!2215230 (is-Cons!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (=> d!1681842 (forall!14238 (exprs!4688 (h!67037 zl!343)) lambda!261670)))

(assert (=> d!1681842 (= (generalisedConcat!473 (exprs!4688 (h!67037 zl!343))) lt!2142871)))

(declare-fun b!5216238 () Bool)

(assert (=> b!5216238 (= e!3247045 e!3247043)))

(declare-fun c!899841 () Bool)

(assert (=> b!5216238 (= c!899841 (isEmpty!32504 (exprs!4688 (h!67037 zl!343))))))

(declare-fun b!5216239 () Bool)

(declare-fun isEmptyExpr!766 (Regex!14804) Bool)

(assert (=> b!5216239 (= e!3247043 (isEmptyExpr!766 lt!2142871))))

(declare-fun b!5216240 () Bool)

(declare-fun head!11180 (List!60712) Regex!14804)

(assert (=> b!5216240 (= e!3247048 (= lt!2142871 (head!11180 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216241 () Bool)

(declare-fun e!3247046 () Regex!14804)

(assert (=> b!5216241 (= e!3247046 EmptyExpr!14804)))

(declare-fun b!5216242 () Bool)

(assert (=> b!5216242 (= e!3247046 (Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343))) (generalisedConcat!473 (t!373879 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5216243 () Bool)

(assert (=> b!5216243 (= e!3247047 e!3247046)))

(declare-fun c!899843 () Bool)

(assert (=> b!5216243 (= c!899843 (is-Cons!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (= (and d!1681842 res!2215230) b!5216235))

(assert (= (and d!1681842 c!899840) b!5216234))

(assert (= (and d!1681842 (not c!899840)) b!5216243))

(assert (= (and b!5216243 c!899843) b!5216242))

(assert (= (and b!5216243 (not c!899843)) b!5216241))

(assert (= (and d!1681842 res!2215229) b!5216238))

(assert (= (and b!5216238 c!899841) b!5216239))

(assert (= (and b!5216238 (not c!899841)) b!5216237))

(assert (= (and b!5216237 c!899842) b!5216240))

(assert (= (and b!5216237 (not c!899842)) b!5216236))

(declare-fun m!6264826 () Bool)

(assert (=> b!5216238 m!6264826))

(declare-fun m!6264828 () Bool)

(assert (=> d!1681842 m!6264828))

(declare-fun m!6264830 () Bool)

(assert (=> d!1681842 m!6264830))

(assert (=> b!5216235 m!6264512))

(declare-fun m!6264832 () Bool)

(assert (=> b!5216237 m!6264832))

(assert (=> b!5216237 m!6264832))

(declare-fun m!6264834 () Bool)

(assert (=> b!5216237 m!6264834))

(declare-fun m!6264836 () Bool)

(assert (=> b!5216240 m!6264836))

(declare-fun m!6264838 () Bool)

(assert (=> b!5216242 m!6264838))

(declare-fun m!6264840 () Bool)

(assert (=> b!5216239 m!6264840))

(declare-fun m!6264842 () Bool)

(assert (=> b!5216236 m!6264842))

(assert (=> b!5215804 d!1681842))

(declare-fun d!1681844 () Bool)

(declare-fun c!899844 () Bool)

(assert (=> d!1681844 (= c!899844 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3247049 () Bool)

(assert (=> d!1681844 (= (matchZipper!1048 lt!2142746 (t!373878 s!2326)) e!3247049)))

(declare-fun b!5216244 () Bool)

(assert (=> b!5216244 (= e!3247049 (nullableZipper!1230 lt!2142746))))

(declare-fun b!5216245 () Bool)

(assert (=> b!5216245 (= e!3247049 (matchZipper!1048 (derivationStepZipper!1074 lt!2142746 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1681844 c!899844) b!5216244))

(assert (= (and d!1681844 (not c!899844)) b!5216245))

(assert (=> d!1681844 m!6264716))

(declare-fun m!6264844 () Bool)

(assert (=> b!5216244 m!6264844))

(assert (=> b!5216245 m!6264720))

(assert (=> b!5216245 m!6264720))

(declare-fun m!6264846 () Bool)

(assert (=> b!5216245 m!6264846))

(assert (=> b!5216245 m!6264724))

(assert (=> b!5216245 m!6264846))

(assert (=> b!5216245 m!6264724))

(declare-fun m!6264848 () Bool)

(assert (=> b!5216245 m!6264848))

(assert (=> b!5215802 d!1681844))

(declare-fun bs!1211616 () Bool)

(declare-fun d!1681846 () Bool)

(assert (= bs!1211616 (and d!1681846 d!1681792)))

(declare-fun lambda!261673 () Int)

(assert (=> bs!1211616 (= lambda!261673 lambda!261657)))

(declare-fun bs!1211617 () Bool)

(assert (= bs!1211617 (and d!1681846 d!1681822)))

(assert (=> bs!1211617 (= lambda!261673 lambda!261658)))

(declare-fun bs!1211618 () Bool)

(assert (= bs!1211618 (and d!1681846 d!1681842)))

(assert (=> bs!1211618 (= lambda!261673 lambda!261670)))

(declare-fun b!5216266 () Bool)

(declare-fun e!3247065 () Bool)

(declare-fun lt!2142874 () Regex!14804)

(assert (=> b!5216266 (= e!3247065 (= lt!2142874 (head!11180 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5216267 () Bool)

(declare-fun e!3247062 () Regex!14804)

(declare-fun e!3247064 () Regex!14804)

(assert (=> b!5216267 (= e!3247062 e!3247064)))

(declare-fun c!899854 () Bool)

(assert (=> b!5216267 (= c!899854 (is-Cons!60588 (unfocusZipperList!246 zl!343)))))

(declare-fun b!5216268 () Bool)

(assert (=> b!5216268 (= e!3247062 (h!67036 (unfocusZipperList!246 zl!343)))))

(declare-fun b!5216269 () Bool)

(declare-fun e!3247063 () Bool)

(declare-fun e!3247066 () Bool)

(assert (=> b!5216269 (= e!3247063 e!3247066)))

(declare-fun c!899856 () Bool)

(assert (=> b!5216269 (= c!899856 (isEmpty!32504 (unfocusZipperList!246 zl!343)))))

(declare-fun b!5216270 () Bool)

(assert (=> b!5216270 (= e!3247064 EmptyLang!14804)))

(declare-fun b!5216271 () Bool)

(declare-fun e!3247067 () Bool)

(assert (=> b!5216271 (= e!3247067 (isEmpty!32504 (t!373879 (unfocusZipperList!246 zl!343))))))

(assert (=> d!1681846 e!3247063))

(declare-fun res!2215236 () Bool)

(assert (=> d!1681846 (=> (not res!2215236) (not e!3247063))))

(assert (=> d!1681846 (= res!2215236 (validRegex!6540 lt!2142874))))

(assert (=> d!1681846 (= lt!2142874 e!3247062)))

(declare-fun c!899855 () Bool)

(assert (=> d!1681846 (= c!899855 e!3247067)))

(declare-fun res!2215235 () Bool)

(assert (=> d!1681846 (=> (not res!2215235) (not e!3247067))))

(assert (=> d!1681846 (= res!2215235 (is-Cons!60588 (unfocusZipperList!246 zl!343)))))

(assert (=> d!1681846 (forall!14238 (unfocusZipperList!246 zl!343) lambda!261673)))

(assert (=> d!1681846 (= (generalisedUnion!733 (unfocusZipperList!246 zl!343)) lt!2142874)))

(declare-fun b!5216272 () Bool)

(assert (=> b!5216272 (= e!3247066 e!3247065)))

(declare-fun c!899853 () Bool)

(assert (=> b!5216272 (= c!899853 (isEmpty!32504 (tail!10277 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5216273 () Bool)

(declare-fun isUnion!207 (Regex!14804) Bool)

(assert (=> b!5216273 (= e!3247065 (isUnion!207 lt!2142874))))

(declare-fun b!5216274 () Bool)

(declare-fun isEmptyLang!775 (Regex!14804) Bool)

(assert (=> b!5216274 (= e!3247066 (isEmptyLang!775 lt!2142874))))

(declare-fun b!5216275 () Bool)

(assert (=> b!5216275 (= e!3247064 (Union!14804 (h!67036 (unfocusZipperList!246 zl!343)) (generalisedUnion!733 (t!373879 (unfocusZipperList!246 zl!343)))))))

(assert (= (and d!1681846 res!2215235) b!5216271))

(assert (= (and d!1681846 c!899855) b!5216268))

(assert (= (and d!1681846 (not c!899855)) b!5216267))

(assert (= (and b!5216267 c!899854) b!5216275))

(assert (= (and b!5216267 (not c!899854)) b!5216270))

(assert (= (and d!1681846 res!2215236) b!5216269))

(assert (= (and b!5216269 c!899856) b!5216274))

(assert (= (and b!5216269 (not c!899856)) b!5216272))

(assert (= (and b!5216272 c!899853) b!5216266))

(assert (= (and b!5216272 (not c!899853)) b!5216273))

(declare-fun m!6264850 () Bool)

(assert (=> b!5216271 m!6264850))

(assert (=> b!5216266 m!6264440))

(declare-fun m!6264852 () Bool)

(assert (=> b!5216266 m!6264852))

(assert (=> b!5216269 m!6264440))

(declare-fun m!6264854 () Bool)

(assert (=> b!5216269 m!6264854))

(assert (=> b!5216272 m!6264440))

(declare-fun m!6264856 () Bool)

(assert (=> b!5216272 m!6264856))

(assert (=> b!5216272 m!6264856))

(declare-fun m!6264858 () Bool)

(assert (=> b!5216272 m!6264858))

(declare-fun m!6264860 () Bool)

(assert (=> b!5216273 m!6264860))

(declare-fun m!6264862 () Bool)

(assert (=> b!5216274 m!6264862))

(declare-fun m!6264864 () Bool)

(assert (=> b!5216275 m!6264864))

(declare-fun m!6264866 () Bool)

(assert (=> d!1681846 m!6264866))

(assert (=> d!1681846 m!6264440))

(declare-fun m!6264868 () Bool)

(assert (=> d!1681846 m!6264868))

(assert (=> b!5215823 d!1681846))

(declare-fun bs!1211619 () Bool)

(declare-fun d!1681848 () Bool)

(assert (= bs!1211619 (and d!1681848 d!1681792)))

(declare-fun lambda!261676 () Int)

(assert (=> bs!1211619 (= lambda!261676 lambda!261657)))

(declare-fun bs!1211620 () Bool)

(assert (= bs!1211620 (and d!1681848 d!1681822)))

(assert (=> bs!1211620 (= lambda!261676 lambda!261658)))

(declare-fun bs!1211621 () Bool)

(assert (= bs!1211621 (and d!1681848 d!1681842)))

(assert (=> bs!1211621 (= lambda!261676 lambda!261670)))

(declare-fun bs!1211622 () Bool)

(assert (= bs!1211622 (and d!1681848 d!1681846)))

(assert (=> bs!1211622 (= lambda!261676 lambda!261673)))

(declare-fun lt!2142877 () List!60712)

(assert (=> d!1681848 (forall!14238 lt!2142877 lambda!261676)))

(declare-fun e!3247070 () List!60712)

(assert (=> d!1681848 (= lt!2142877 e!3247070)))

(declare-fun c!899859 () Bool)

(assert (=> d!1681848 (= c!899859 (is-Cons!60589 zl!343))))

(assert (=> d!1681848 (= (unfocusZipperList!246 zl!343) lt!2142877)))

(declare-fun b!5216280 () Bool)

(assert (=> b!5216280 (= e!3247070 (Cons!60588 (generalisedConcat!473 (exprs!4688 (h!67037 zl!343))) (unfocusZipperList!246 (t!373880 zl!343))))))

(declare-fun b!5216281 () Bool)

(assert (=> b!5216281 (= e!3247070 Nil!60588)))

(assert (= (and d!1681848 c!899859) b!5216280))

(assert (= (and d!1681848 (not c!899859)) b!5216281))

(declare-fun m!6264870 () Bool)

(assert (=> d!1681848 m!6264870))

(assert (=> b!5216280 m!6264444))

(declare-fun m!6264872 () Bool)

(assert (=> b!5216280 m!6264872))

(assert (=> b!5215823 d!1681848))

(declare-fun b!5216289 () Bool)

(declare-fun e!3247076 () Bool)

(declare-fun tp!1462570 () Bool)

(assert (=> b!5216289 (= e!3247076 tp!1462570)))

(declare-fun b!5216288 () Bool)

(declare-fun tp!1462571 () Bool)

(declare-fun e!3247075 () Bool)

(assert (=> b!5216288 (= e!3247075 (and (inv!80258 (h!67037 (t!373880 zl!343))) e!3247076 tp!1462571))))

(assert (=> b!5215826 (= tp!1462529 e!3247075)))

(assert (= b!5216288 b!5216289))

(assert (= (and b!5215826 (is-Cons!60589 (t!373880 zl!343))) b!5216288))

(declare-fun m!6264874 () Bool)

(assert (=> b!5216288 m!6264874))

(declare-fun condSetEmpty!33157 () Bool)

(assert (=> setNonEmpty!33151 (= condSetEmpty!33157 (= setRest!33151 (as set.empty (Set Context!8376))))))

(declare-fun setRes!33157 () Bool)

(assert (=> setNonEmpty!33151 (= tp!1462528 setRes!33157)))

(declare-fun setIsEmpty!33157 () Bool)

(assert (=> setIsEmpty!33157 setRes!33157))

(declare-fun setNonEmpty!33157 () Bool)

(declare-fun tp!1462576 () Bool)

(declare-fun e!3247079 () Bool)

(declare-fun setElem!33157 () Context!8376)

(assert (=> setNonEmpty!33157 (= setRes!33157 (and tp!1462576 (inv!80258 setElem!33157) e!3247079))))

(declare-fun setRest!33157 () (Set Context!8376))

(assert (=> setNonEmpty!33157 (= setRest!33151 (set.union (set.insert setElem!33157 (as set.empty (Set Context!8376))) setRest!33157))))

(declare-fun b!5216294 () Bool)

(declare-fun tp!1462577 () Bool)

(assert (=> b!5216294 (= e!3247079 tp!1462577)))

(assert (= (and setNonEmpty!33151 condSetEmpty!33157) setIsEmpty!33157))

(assert (= (and setNonEmpty!33151 (not condSetEmpty!33157)) setNonEmpty!33157))

(assert (= setNonEmpty!33157 b!5216294))

(declare-fun m!6264876 () Bool)

(assert (=> setNonEmpty!33157 m!6264876))

(declare-fun b!5216306 () Bool)

(declare-fun e!3247082 () Bool)

(declare-fun tp!1462592 () Bool)

(declare-fun tp!1462590 () Bool)

(assert (=> b!5216306 (= e!3247082 (and tp!1462592 tp!1462590))))

(assert (=> b!5215805 (= tp!1462530 e!3247082)))

(declare-fun b!5216308 () Bool)

(declare-fun tp!1462588 () Bool)

(declare-fun tp!1462589 () Bool)

(assert (=> b!5216308 (= e!3247082 (and tp!1462588 tp!1462589))))

(declare-fun b!5216307 () Bool)

(declare-fun tp!1462591 () Bool)

(assert (=> b!5216307 (= e!3247082 tp!1462591)))

(declare-fun b!5216305 () Bool)

(assert (=> b!5216305 (= e!3247082 tp_is_empty!38861)))

(assert (= (and b!5215805 (is-ElementMatch!14804 (reg!15133 r!7292))) b!5216305))

(assert (= (and b!5215805 (is-Concat!23649 (reg!15133 r!7292))) b!5216306))

(assert (= (and b!5215805 (is-Star!14804 (reg!15133 r!7292))) b!5216307))

(assert (= (and b!5215805 (is-Union!14804 (reg!15133 r!7292))) b!5216308))

(declare-fun b!5216310 () Bool)

(declare-fun e!3247083 () Bool)

(declare-fun tp!1462597 () Bool)

(declare-fun tp!1462595 () Bool)

(assert (=> b!5216310 (= e!3247083 (and tp!1462597 tp!1462595))))

(assert (=> b!5215816 (= tp!1462532 e!3247083)))

(declare-fun b!5216312 () Bool)

(declare-fun tp!1462593 () Bool)

(declare-fun tp!1462594 () Bool)

(assert (=> b!5216312 (= e!3247083 (and tp!1462593 tp!1462594))))

(declare-fun b!5216311 () Bool)

(declare-fun tp!1462596 () Bool)

(assert (=> b!5216311 (= e!3247083 tp!1462596)))

(declare-fun b!5216309 () Bool)

(assert (=> b!5216309 (= e!3247083 tp_is_empty!38861)))

(assert (= (and b!5215816 (is-ElementMatch!14804 (regOne!30120 r!7292))) b!5216309))

(assert (= (and b!5215816 (is-Concat!23649 (regOne!30120 r!7292))) b!5216310))

(assert (= (and b!5215816 (is-Star!14804 (regOne!30120 r!7292))) b!5216311))

(assert (= (and b!5215816 (is-Union!14804 (regOne!30120 r!7292))) b!5216312))

(declare-fun b!5216314 () Bool)

(declare-fun e!3247084 () Bool)

(declare-fun tp!1462602 () Bool)

(declare-fun tp!1462600 () Bool)

(assert (=> b!5216314 (= e!3247084 (and tp!1462602 tp!1462600))))

(assert (=> b!5215816 (= tp!1462533 e!3247084)))

(declare-fun b!5216316 () Bool)

(declare-fun tp!1462598 () Bool)

(declare-fun tp!1462599 () Bool)

(assert (=> b!5216316 (= e!3247084 (and tp!1462598 tp!1462599))))

(declare-fun b!5216315 () Bool)

(declare-fun tp!1462601 () Bool)

(assert (=> b!5216315 (= e!3247084 tp!1462601)))

(declare-fun b!5216313 () Bool)

(assert (=> b!5216313 (= e!3247084 tp_is_empty!38861)))

(assert (= (and b!5215816 (is-ElementMatch!14804 (regTwo!30120 r!7292))) b!5216313))

(assert (= (and b!5215816 (is-Concat!23649 (regTwo!30120 r!7292))) b!5216314))

(assert (= (and b!5215816 (is-Star!14804 (regTwo!30120 r!7292))) b!5216315))

(assert (= (and b!5215816 (is-Union!14804 (regTwo!30120 r!7292))) b!5216316))

(declare-fun b!5216321 () Bool)

(declare-fun e!3247087 () Bool)

(declare-fun tp!1462607 () Bool)

(declare-fun tp!1462608 () Bool)

(assert (=> b!5216321 (= e!3247087 (and tp!1462607 tp!1462608))))

(assert (=> b!5215819 (= tp!1462534 e!3247087)))

(assert (= (and b!5215819 (is-Cons!60588 (exprs!4688 setElem!33151))) b!5216321))

(declare-fun b!5216326 () Bool)

(declare-fun e!3247090 () Bool)

(declare-fun tp!1462611 () Bool)

(assert (=> b!5216326 (= e!3247090 (and tp_is_empty!38861 tp!1462611))))

(assert (=> b!5215822 (= tp!1462527 e!3247090)))

(assert (= (and b!5215822 (is-Cons!60587 (t!373878 s!2326))) b!5216326))

(declare-fun b!5216327 () Bool)

(declare-fun e!3247091 () Bool)

(declare-fun tp!1462612 () Bool)

(declare-fun tp!1462613 () Bool)

(assert (=> b!5216327 (= e!3247091 (and tp!1462612 tp!1462613))))

(assert (=> b!5215813 (= tp!1462535 e!3247091)))

(assert (= (and b!5215813 (is-Cons!60588 (exprs!4688 (h!67037 zl!343)))) b!5216327))

(declare-fun b!5216329 () Bool)

(declare-fun e!3247092 () Bool)

(declare-fun tp!1462618 () Bool)

(declare-fun tp!1462616 () Bool)

(assert (=> b!5216329 (= e!3247092 (and tp!1462618 tp!1462616))))

(assert (=> b!5215808 (= tp!1462526 e!3247092)))

(declare-fun b!5216331 () Bool)

(declare-fun tp!1462614 () Bool)

(declare-fun tp!1462615 () Bool)

(assert (=> b!5216331 (= e!3247092 (and tp!1462614 tp!1462615))))

(declare-fun b!5216330 () Bool)

(declare-fun tp!1462617 () Bool)

(assert (=> b!5216330 (= e!3247092 tp!1462617)))

(declare-fun b!5216328 () Bool)

(assert (=> b!5216328 (= e!3247092 tp_is_empty!38861)))

(assert (= (and b!5215808 (is-ElementMatch!14804 (regOne!30121 r!7292))) b!5216328))

(assert (= (and b!5215808 (is-Concat!23649 (regOne!30121 r!7292))) b!5216329))

(assert (= (and b!5215808 (is-Star!14804 (regOne!30121 r!7292))) b!5216330))

(assert (= (and b!5215808 (is-Union!14804 (regOne!30121 r!7292))) b!5216331))

(declare-fun b!5216333 () Bool)

(declare-fun e!3247093 () Bool)

(declare-fun tp!1462623 () Bool)

(declare-fun tp!1462621 () Bool)

(assert (=> b!5216333 (= e!3247093 (and tp!1462623 tp!1462621))))

(assert (=> b!5215808 (= tp!1462531 e!3247093)))

(declare-fun b!5216335 () Bool)

(declare-fun tp!1462619 () Bool)

(declare-fun tp!1462620 () Bool)

(assert (=> b!5216335 (= e!3247093 (and tp!1462619 tp!1462620))))

(declare-fun b!5216334 () Bool)

(declare-fun tp!1462622 () Bool)

(assert (=> b!5216334 (= e!3247093 tp!1462622)))

(declare-fun b!5216332 () Bool)

(assert (=> b!5216332 (= e!3247093 tp_is_empty!38861)))

(assert (= (and b!5215808 (is-ElementMatch!14804 (regTwo!30121 r!7292))) b!5216332))

(assert (= (and b!5215808 (is-Concat!23649 (regTwo!30121 r!7292))) b!5216333))

(assert (= (and b!5215808 (is-Star!14804 (regTwo!30121 r!7292))) b!5216334))

(assert (= (and b!5215808 (is-Union!14804 (regTwo!30121 r!7292))) b!5216335))

(declare-fun b_lambda!201729 () Bool)

(assert (= b_lambda!201725 (or b!5215801 b_lambda!201729)))

(declare-fun bs!1211623 () Bool)

(declare-fun d!1681850 () Bool)

(assert (= bs!1211623 (and d!1681850 b!5215801)))

(assert (=> bs!1211623 (= (dynLambda!23938 lambda!261632 (h!67037 zl!343)) (derivationStepZipperUp!176 (h!67037 zl!343) (h!67035 s!2326)))))

(assert (=> bs!1211623 m!6264468))

(assert (=> d!1681770 d!1681850))

(declare-fun b_lambda!201731 () Bool)

(assert (= b_lambda!201727 (or b!5215801 b_lambda!201731)))

(declare-fun bs!1211624 () Bool)

(declare-fun d!1681852 () Bool)

(assert (= bs!1211624 (and d!1681852 b!5215801)))

(assert (=> bs!1211624 (= (dynLambda!23938 lambda!261632 lt!2142756) (derivationStepZipperUp!176 lt!2142756 (h!67035 s!2326)))))

(assert (=> bs!1211624 m!6264520))

(assert (=> d!1681784 d!1681852))

(push 1)

(assert (not b!5216119))

(assert (not b!5215979))

(assert (not setNonEmpty!33157))

(assert (not b!5216194))

(assert (not b!5216306))

(assert (not d!1681786))

(assert (not b!5216266))

(assert (not b!5216273))

(assert (not b!5216197))

(assert (not b!5216316))

(assert (not b!5216120))

(assert (not b!5216017))

(assert (not b!5216242))

(assert (not bm!367720))

(assert (not bm!367714))

(assert (not d!1681822))

(assert (not bm!367745))

(assert (not b!5216163))

(assert (not b!5216235))

(assert (not b!5215978))

(assert (not d!1681828))

(assert (not d!1681772))

(assert (not b!5216171))

(assert (not b!5216238))

(assert (not b!5216118))

(assert (not b!5216311))

(assert (not bm!367697))

(assert (not bm!367742))

(assert (not b!5216161))

(assert (not b!5216085))

(assert (not b!5216314))

(assert (not b!5216168))

(assert (not bm!367694))

(assert (not b!5216308))

(assert (not b!5216158))

(assert (not b!5216166))

(assert (not b!5216104))

(assert (not bm!367723))

(assert (not d!1681848))

(assert (not b!5216280))

(assert (not b!5216307))

(assert (not d!1681830))

(assert (not d!1681810))

(assert (not b!5216162))

(assert (not b!5216240))

(assert (not b!5216331))

(assert (not b!5216079))

(assert (not d!1681806))

(assert (not b!5216016))

(assert (not d!1681792))

(assert (not d!1681838))

(assert tp_is_empty!38861)

(assert (not b!5216327))

(assert (not b!5216193))

(assert (not bm!367721))

(assert (not d!1681834))

(assert (not b!5216199))

(assert (not b!5216275))

(assert (not d!1681818))

(assert (not b!5216154))

(assert (not b!5216294))

(assert (not b!5216236))

(assert (not b!5216159))

(assert (not b!5216169))

(assert (not bm!367741))

(assert (not b_lambda!201731))

(assert (not b!5216330))

(assert (not b!5216080))

(assert (not b!5216289))

(assert (not b!5216237))

(assert (not bs!1211624))

(assert (not b!5216239))

(assert (not d!1681790))

(assert (not bm!367744))

(assert (not b!5216020))

(assert (not b!5216015))

(assert (not d!1681840))

(assert (not b!5216326))

(assert (not d!1681784))

(assert (not d!1681788))

(assert (not bm!367733))

(assert (not d!1681842))

(assert (not b!5216333))

(assert (not d!1681820))

(assert (not d!1681808))

(assert (not b!5216335))

(assert (not bm!367700))

(assert (not bm!367719))

(assert (not b!5216315))

(assert (not b_lambda!201729))

(assert (not bm!367729))

(assert (not bm!367724))

(assert (not d!1681816))

(assert (not bm!367727))

(assert (not b!5216065))

(assert (not d!1681800))

(assert (not b!5216334))

(assert (not bm!367693))

(assert (not d!1681770))

(assert (not b!5216022))

(assert (not b!5216269))

(assert (not d!1681832))

(assert (not b!5216121))

(assert (not b!5216271))

(assert (not b!5216160))

(assert (not b!5216037))

(assert (not b!5216288))

(assert (not b!5216272))

(assert (not bm!367715))

(assert (not b!5216084))

(assert (not bm!367730))

(assert (not d!1681768))

(assert (not bs!1211623))

(assert (not b!5216310))

(assert (not d!1681764))

(assert (not b!5216023))

(assert (not b!5216093))

(assert (not d!1681836))

(assert (not d!1681798))

(assert (not d!1681766))

(assert (not b!5216200))

(assert (not b!5216329))

(assert (not b!5216274))

(assert (not b!5216174))

(assert (not b!5216170))

(assert (not d!1681824))

(assert (not b!5216245))

(assert (not b!5216321))

(assert (not b!5216089))

(assert (not b!5216075))

(assert (not bm!367718))

(assert (not d!1681846))

(assert (not b!5216195))

(assert (not b!5216312))

(assert (not b!5216167))

(assert (not b!5216041))

(assert (not d!1681812))

(assert (not b!5216244))

(assert (not b!5216145))

(assert (not d!1681844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!367803 () Bool)

(declare-fun call!367809 () (Set Context!8376))

(declare-fun call!367810 () (Set Context!8376))

(assert (=> bm!367803 (= call!367809 call!367810)))

(declare-fun bm!367804 () Bool)

(declare-fun call!367812 () List!60712)

(declare-fun c!899973 () Bool)

(declare-fun c!899974 () Bool)

(assert (=> bm!367804 (= call!367812 ($colon$colon!1280 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))) (ite (or c!899974 c!899973) (regTwo!30120 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))))

(declare-fun b!5216730 () Bool)

(declare-fun e!3247321 () (Set Context!8376))

(declare-fun e!3247320 () (Set Context!8376))

(assert (=> b!5216730 (= e!3247321 e!3247320)))

(assert (=> b!5216730 (= c!899973 (is-Concat!23649 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun c!899972 () Bool)

(declare-fun call!367813 () (Set Context!8376))

(declare-fun bm!367805 () Bool)

(assert (=> bm!367805 (= call!367813 (derivationStepZipperDown!252 (ite c!899972 (regOne!30121 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (regOne!30120 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))) (ite c!899972 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (Context!8377 call!367812)) (h!67035 s!2326)))))

(declare-fun b!5216731 () Bool)

(declare-fun e!3247319 () Bool)

(assert (=> b!5216731 (= e!3247319 (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))))

(declare-fun b!5216732 () Bool)

(declare-fun e!3247316 () (Set Context!8376))

(assert (=> b!5216732 (= e!3247316 (as set.empty (Set Context!8376)))))

(declare-fun b!5216733 () Bool)

(declare-fun call!367811 () (Set Context!8376))

(assert (=> b!5216733 (= e!3247316 call!367811)))

(declare-fun b!5216734 () Bool)

(declare-fun e!3247317 () (Set Context!8376))

(declare-fun e!3247318 () (Set Context!8376))

(assert (=> b!5216734 (= e!3247317 e!3247318)))

(assert (=> b!5216734 (= c!899972 (is-Union!14804 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun b!5216735 () Bool)

(assert (=> b!5216735 (= c!899974 e!3247319)))

(declare-fun res!2215357 () Bool)

(assert (=> b!5216735 (=> (not res!2215357) (not e!3247319))))

(assert (=> b!5216735 (= res!2215357 (is-Concat!23649 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(assert (=> b!5216735 (= e!3247318 e!3247321)))

(declare-fun bm!367806 () Bool)

(declare-fun call!367808 () List!60712)

(assert (=> bm!367806 (= call!367808 call!367812)))

(declare-fun b!5216736 () Bool)

(declare-fun c!899975 () Bool)

(assert (=> b!5216736 (= c!899975 (is-Star!14804 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(assert (=> b!5216736 (= e!3247320 e!3247316)))

(declare-fun b!5216737 () Bool)

(assert (=> b!5216737 (= e!3247321 (set.union call!367813 call!367809))))

(declare-fun d!1681946 () Bool)

(declare-fun c!899971 () Bool)

(assert (=> d!1681946 (= c!899971 (and (is-ElementMatch!14804 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (= (c!899739 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326))))))

(assert (=> d!1681946 (= (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326)) e!3247317)))

(declare-fun bm!367807 () Bool)

(assert (=> bm!367807 (= call!367811 call!367809)))

(declare-fun bm!367808 () Bool)

(assert (=> bm!367808 (= call!367810 (derivationStepZipperDown!252 (ite c!899972 (regTwo!30121 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (ite c!899974 (regTwo!30120 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (ite c!899973 (regOne!30120 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (reg!15133 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))) (ite (or c!899972 c!899974) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (Context!8377 call!367808)) (h!67035 s!2326)))))

(declare-fun b!5216738 () Bool)

(assert (=> b!5216738 (= e!3247320 call!367811)))

(declare-fun b!5216739 () Bool)

(assert (=> b!5216739 (= e!3247317 (set.insert (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (as set.empty (Set Context!8376))))))

(declare-fun b!5216740 () Bool)

(assert (=> b!5216740 (= e!3247318 (set.union call!367813 call!367810))))

(assert (= (and d!1681946 c!899971) b!5216739))

(assert (= (and d!1681946 (not c!899971)) b!5216734))

(assert (= (and b!5216734 c!899972) b!5216740))

(assert (= (and b!5216734 (not c!899972)) b!5216735))

(assert (= (and b!5216735 res!2215357) b!5216731))

(assert (= (and b!5216735 c!899974) b!5216737))

(assert (= (and b!5216735 (not c!899974)) b!5216730))

(assert (= (and b!5216730 c!899973) b!5216738))

(assert (= (and b!5216730 (not c!899973)) b!5216736))

(assert (= (and b!5216736 c!899975) b!5216733))

(assert (= (and b!5216736 (not c!899975)) b!5216732))

(assert (= (or b!5216738 b!5216733) bm!367806))

(assert (= (or b!5216738 b!5216733) bm!367807))

(assert (= (or b!5216737 bm!367806) bm!367804))

(assert (= (or b!5216737 bm!367807) bm!367803))

(assert (= (or b!5216740 bm!367803) bm!367808))

(assert (= (or b!5216740 b!5216737) bm!367805))

(declare-fun m!6265138 () Bool)

(assert (=> b!5216739 m!6265138))

(declare-fun m!6265140 () Bool)

(assert (=> bm!367804 m!6265140))

(declare-fun m!6265142 () Bool)

(assert (=> bm!367805 m!6265142))

(declare-fun m!6265144 () Bool)

(assert (=> b!5216731 m!6265144))

(declare-fun m!6265146 () Bool)

(assert (=> bm!367808 m!6265146))

(assert (=> bm!367720 d!1681946))

(declare-fun bm!367809 () Bool)

(declare-fun call!367815 () (Set Context!8376))

(declare-fun call!367816 () (Set Context!8376))

(assert (=> bm!367809 (= call!367815 call!367816)))

(declare-fun c!899979 () Bool)

(declare-fun c!899978 () Bool)

(declare-fun bm!367810 () Bool)

(declare-fun call!367818 () List!60712)

(assert (=> bm!367810 (= call!367818 ($colon$colon!1280 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756)))) (ite (or c!899979 c!899978) (regTwo!30120 (h!67036 (exprs!4688 lt!2142756))) (h!67036 (exprs!4688 lt!2142756)))))))

(declare-fun b!5216741 () Bool)

(declare-fun e!3247327 () (Set Context!8376))

(declare-fun e!3247326 () (Set Context!8376))

(assert (=> b!5216741 (= e!3247327 e!3247326)))

(assert (=> b!5216741 (= c!899978 (is-Concat!23649 (h!67036 (exprs!4688 lt!2142756))))))

(declare-fun call!367819 () (Set Context!8376))

(declare-fun c!899977 () Bool)

(declare-fun bm!367811 () Bool)

(assert (=> bm!367811 (= call!367819 (derivationStepZipperDown!252 (ite c!899977 (regOne!30121 (h!67036 (exprs!4688 lt!2142756))) (regOne!30120 (h!67036 (exprs!4688 lt!2142756)))) (ite c!899977 (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (Context!8377 call!367818)) (h!67035 s!2326)))))

(declare-fun b!5216742 () Bool)

(declare-fun e!3247325 () Bool)

(assert (=> b!5216742 (= e!3247325 (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 lt!2142756)))))))

(declare-fun b!5216743 () Bool)

(declare-fun e!3247322 () (Set Context!8376))

(assert (=> b!5216743 (= e!3247322 (as set.empty (Set Context!8376)))))

(declare-fun b!5216744 () Bool)

(declare-fun call!367817 () (Set Context!8376))

(assert (=> b!5216744 (= e!3247322 call!367817)))

(declare-fun b!5216745 () Bool)

(declare-fun e!3247323 () (Set Context!8376))

(declare-fun e!3247324 () (Set Context!8376))

(assert (=> b!5216745 (= e!3247323 e!3247324)))

(assert (=> b!5216745 (= c!899977 (is-Union!14804 (h!67036 (exprs!4688 lt!2142756))))))

(declare-fun b!5216746 () Bool)

(assert (=> b!5216746 (= c!899979 e!3247325)))

(declare-fun res!2215358 () Bool)

(assert (=> b!5216746 (=> (not res!2215358) (not e!3247325))))

(assert (=> b!5216746 (= res!2215358 (is-Concat!23649 (h!67036 (exprs!4688 lt!2142756))))))

(assert (=> b!5216746 (= e!3247324 e!3247327)))

(declare-fun bm!367812 () Bool)

(declare-fun call!367814 () List!60712)

(assert (=> bm!367812 (= call!367814 call!367818)))

(declare-fun b!5216747 () Bool)

(declare-fun c!899980 () Bool)

(assert (=> b!5216747 (= c!899980 (is-Star!14804 (h!67036 (exprs!4688 lt!2142756))))))

(assert (=> b!5216747 (= e!3247326 e!3247322)))

(declare-fun b!5216748 () Bool)

(assert (=> b!5216748 (= e!3247327 (set.union call!367819 call!367815))))

(declare-fun d!1681948 () Bool)

(declare-fun c!899976 () Bool)

(assert (=> d!1681948 (= c!899976 (and (is-ElementMatch!14804 (h!67036 (exprs!4688 lt!2142756))) (= (c!899739 (h!67036 (exprs!4688 lt!2142756))) (h!67035 s!2326))))))

(assert (=> d!1681948 (= (derivationStepZipperDown!252 (h!67036 (exprs!4688 lt!2142756)) (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (h!67035 s!2326)) e!3247323)))

(declare-fun bm!367813 () Bool)

(assert (=> bm!367813 (= call!367817 call!367815)))

(declare-fun bm!367814 () Bool)

(assert (=> bm!367814 (= call!367816 (derivationStepZipperDown!252 (ite c!899977 (regTwo!30121 (h!67036 (exprs!4688 lt!2142756))) (ite c!899979 (regTwo!30120 (h!67036 (exprs!4688 lt!2142756))) (ite c!899978 (regOne!30120 (h!67036 (exprs!4688 lt!2142756))) (reg!15133 (h!67036 (exprs!4688 lt!2142756)))))) (ite (or c!899977 c!899979) (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (Context!8377 call!367814)) (h!67035 s!2326)))))

(declare-fun b!5216749 () Bool)

(assert (=> b!5216749 (= e!3247326 call!367817)))

(declare-fun b!5216750 () Bool)

(assert (=> b!5216750 (= e!3247323 (set.insert (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (as set.empty (Set Context!8376))))))

(declare-fun b!5216751 () Bool)

(assert (=> b!5216751 (= e!3247324 (set.union call!367819 call!367816))))

(assert (= (and d!1681948 c!899976) b!5216750))

(assert (= (and d!1681948 (not c!899976)) b!5216745))

(assert (= (and b!5216745 c!899977) b!5216751))

(assert (= (and b!5216745 (not c!899977)) b!5216746))

(assert (= (and b!5216746 res!2215358) b!5216742))

(assert (= (and b!5216746 c!899979) b!5216748))

(assert (= (and b!5216746 (not c!899979)) b!5216741))

(assert (= (and b!5216741 c!899978) b!5216749))

(assert (= (and b!5216741 (not c!899978)) b!5216747))

(assert (= (and b!5216747 c!899980) b!5216744))

(assert (= (and b!5216747 (not c!899980)) b!5216743))

(assert (= (or b!5216749 b!5216744) bm!367812))

(assert (= (or b!5216749 b!5216744) bm!367813))

(assert (= (or b!5216748 bm!367812) bm!367810))

(assert (= (or b!5216748 bm!367813) bm!367809))

(assert (= (or b!5216751 bm!367809) bm!367814))

(assert (= (or b!5216751 b!5216748) bm!367811))

(declare-fun m!6265148 () Bool)

(assert (=> b!5216750 m!6265148))

(declare-fun m!6265150 () Bool)

(assert (=> bm!367810 m!6265150))

(declare-fun m!6265152 () Bool)

(assert (=> bm!367811 m!6265152))

(declare-fun m!6265154 () Bool)

(assert (=> b!5216742 m!6265154))

(declare-fun m!6265156 () Bool)

(assert (=> bm!367814 m!6265156))

(assert (=> bm!367721 d!1681948))

(declare-fun d!1681950 () Bool)

(assert (=> d!1681950 (= (isEmpty!32504 (exprs!4688 (h!67037 zl!343))) (is-Nil!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (=> b!5216238 d!1681950))

(declare-fun d!1681952 () Bool)

(assert (=> d!1681952 (= (isEmpty!32507 (t!373878 s!2326)) (is-Nil!60587 (t!373878 s!2326)))))

(assert (=> d!1681820 d!1681952))

(declare-fun d!1681954 () Bool)

(declare-fun lambda!261710 () Int)

(declare-fun exists!1967 ((Set Context!8376) Int) Bool)

(assert (=> d!1681954 (= (nullableZipper!1230 lt!2142744) (exists!1967 lt!2142744 lambda!261710))))

(declare-fun bs!1211664 () Bool)

(assert (= bs!1211664 d!1681954))

(declare-fun m!6265158 () Bool)

(assert (=> bs!1211664 m!6265158))

(assert (=> b!5216120 d!1681954))

(declare-fun bs!1211665 () Bool)

(declare-fun d!1681956 () Bool)

(assert (= bs!1211665 (and d!1681956 d!1681842)))

(declare-fun lambda!261711 () Int)

(assert (=> bs!1211665 (= lambda!261711 lambda!261670)))

(declare-fun bs!1211666 () Bool)

(assert (= bs!1211666 (and d!1681956 d!1681822)))

(assert (=> bs!1211666 (= lambda!261711 lambda!261658)))

(declare-fun bs!1211667 () Bool)

(assert (= bs!1211667 (and d!1681956 d!1681846)))

(assert (=> bs!1211667 (= lambda!261711 lambda!261673)))

(declare-fun bs!1211668 () Bool)

(assert (= bs!1211668 (and d!1681956 d!1681848)))

(assert (=> bs!1211668 (= lambda!261711 lambda!261676)))

(declare-fun bs!1211669 () Bool)

(assert (= bs!1211669 (and d!1681956 d!1681792)))

(assert (=> bs!1211669 (= lambda!261711 lambda!261657)))

(declare-fun b!5216752 () Bool)

(declare-fun e!3247332 () Regex!14804)

(assert (=> b!5216752 (= e!3247332 (h!67036 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216753 () Bool)

(declare-fun e!3247329 () Bool)

(assert (=> b!5216753 (= e!3247329 (isEmpty!32504 (t!373879 (t!373879 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5216754 () Bool)

(declare-fun e!3247333 () Bool)

(declare-fun lt!2142922 () Regex!14804)

(assert (=> b!5216754 (= e!3247333 (isConcat!289 lt!2142922))))

(declare-fun b!5216755 () Bool)

(declare-fun e!3247328 () Bool)

(assert (=> b!5216755 (= e!3247328 e!3247333)))

(declare-fun c!899985 () Bool)

(assert (=> b!5216755 (= c!899985 (isEmpty!32504 (tail!10277 (t!373879 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun e!3247330 () Bool)

(assert (=> d!1681956 e!3247330))

(declare-fun res!2215359 () Bool)

(assert (=> d!1681956 (=> (not res!2215359) (not e!3247330))))

(assert (=> d!1681956 (= res!2215359 (validRegex!6540 lt!2142922))))

(assert (=> d!1681956 (= lt!2142922 e!3247332)))

(declare-fun c!899983 () Bool)

(assert (=> d!1681956 (= c!899983 e!3247329)))

(declare-fun res!2215360 () Bool)

(assert (=> d!1681956 (=> (not res!2215360) (not e!3247329))))

(assert (=> d!1681956 (= res!2215360 (is-Cons!60588 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> d!1681956 (forall!14238 (t!373879 (exprs!4688 (h!67037 zl!343))) lambda!261711)))

(assert (=> d!1681956 (= (generalisedConcat!473 (t!373879 (exprs!4688 (h!67037 zl!343)))) lt!2142922)))

(declare-fun b!5216756 () Bool)

(assert (=> b!5216756 (= e!3247330 e!3247328)))

(declare-fun c!899984 () Bool)

(assert (=> b!5216756 (= c!899984 (isEmpty!32504 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216757 () Bool)

(assert (=> b!5216757 (= e!3247328 (isEmptyExpr!766 lt!2142922))))

(declare-fun b!5216758 () Bool)

(assert (=> b!5216758 (= e!3247333 (= lt!2142922 (head!11180 (t!373879 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5216759 () Bool)

(declare-fun e!3247331 () Regex!14804)

(assert (=> b!5216759 (= e!3247331 EmptyExpr!14804)))

(declare-fun b!5216760 () Bool)

(assert (=> b!5216760 (= e!3247331 (Concat!23649 (h!67036 (t!373879 (exprs!4688 (h!67037 zl!343)))) (generalisedConcat!473 (t!373879 (t!373879 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun b!5216761 () Bool)

(assert (=> b!5216761 (= e!3247332 e!3247331)))

(declare-fun c!899986 () Bool)

(assert (=> b!5216761 (= c!899986 (is-Cons!60588 (t!373879 (exprs!4688 (h!67037 zl!343)))))))

(assert (= (and d!1681956 res!2215360) b!5216753))

(assert (= (and d!1681956 c!899983) b!5216752))

(assert (= (and d!1681956 (not c!899983)) b!5216761))

(assert (= (and b!5216761 c!899986) b!5216760))

(assert (= (and b!5216761 (not c!899986)) b!5216759))

(assert (= (and d!1681956 res!2215359) b!5216756))

(assert (= (and b!5216756 c!899984) b!5216757))

(assert (= (and b!5216756 (not c!899984)) b!5216755))

(assert (= (and b!5216755 c!899985) b!5216758))

(assert (= (and b!5216755 (not c!899985)) b!5216754))

(assert (=> b!5216756 m!6264512))

(declare-fun m!6265160 () Bool)

(assert (=> d!1681956 m!6265160))

(declare-fun m!6265162 () Bool)

(assert (=> d!1681956 m!6265162))

(declare-fun m!6265164 () Bool)

(assert (=> b!5216753 m!6265164))

(declare-fun m!6265166 () Bool)

(assert (=> b!5216755 m!6265166))

(assert (=> b!5216755 m!6265166))

(declare-fun m!6265168 () Bool)

(assert (=> b!5216755 m!6265168))

(declare-fun m!6265170 () Bool)

(assert (=> b!5216758 m!6265170))

(declare-fun m!6265172 () Bool)

(assert (=> b!5216760 m!6265172))

(declare-fun m!6265174 () Bool)

(assert (=> b!5216757 m!6265174))

(declare-fun m!6265176 () Bool)

(assert (=> b!5216754 m!6265176))

(assert (=> b!5216242 d!1681956))

(declare-fun b!5216762 () Bool)

(declare-fun res!2215362 () Bool)

(declare-fun e!3247340 () Bool)

(assert (=> b!5216762 (=> res!2215362 e!3247340)))

(assert (=> b!5216762 (= res!2215362 (not (is-ElementMatch!14804 (derivativeStep!4052 r!7292 (head!11179 s!2326)))))))

(declare-fun e!3247338 () Bool)

(assert (=> b!5216762 (= e!3247338 e!3247340)))

(declare-fun b!5216763 () Bool)

(declare-fun lt!2142923 () Bool)

(assert (=> b!5216763 (= e!3247338 (not lt!2142923))))

(declare-fun bm!367815 () Bool)

(declare-fun call!367820 () Bool)

(assert (=> bm!367815 (= call!367820 (isEmpty!32507 (tail!10276 s!2326)))))

(declare-fun b!5216764 () Bool)

(declare-fun e!3247335 () Bool)

(assert (=> b!5216764 (= e!3247335 (matchR!6989 (derivativeStep!4052 (derivativeStep!4052 r!7292 (head!11179 s!2326)) (head!11179 (tail!10276 s!2326))) (tail!10276 (tail!10276 s!2326))))))

(declare-fun b!5216765 () Bool)

(declare-fun res!2215364 () Bool)

(declare-fun e!3247337 () Bool)

(assert (=> b!5216765 (=> res!2215364 e!3247337)))

(assert (=> b!5216765 (= res!2215364 (not (isEmpty!32507 (tail!10276 (tail!10276 s!2326)))))))

(declare-fun b!5216766 () Bool)

(assert (=> b!5216766 (= e!3247337 (not (= (head!11179 (tail!10276 s!2326)) (c!899739 (derivativeStep!4052 r!7292 (head!11179 s!2326))))))))

(declare-fun d!1681958 () Bool)

(declare-fun e!3247339 () Bool)

(assert (=> d!1681958 e!3247339))

(declare-fun c!899989 () Bool)

(assert (=> d!1681958 (= c!899989 (is-EmptyExpr!14804 (derivativeStep!4052 r!7292 (head!11179 s!2326))))))

(assert (=> d!1681958 (= lt!2142923 e!3247335)))

(declare-fun c!899987 () Bool)

(assert (=> d!1681958 (= c!899987 (isEmpty!32507 (tail!10276 s!2326)))))

(assert (=> d!1681958 (validRegex!6540 (derivativeStep!4052 r!7292 (head!11179 s!2326)))))

(assert (=> d!1681958 (= (matchR!6989 (derivativeStep!4052 r!7292 (head!11179 s!2326)) (tail!10276 s!2326)) lt!2142923)))

(declare-fun b!5216767 () Bool)

(declare-fun e!3247336 () Bool)

(assert (=> b!5216767 (= e!3247340 e!3247336)))

(declare-fun res!2215361 () Bool)

(assert (=> b!5216767 (=> (not res!2215361) (not e!3247336))))

(assert (=> b!5216767 (= res!2215361 (not lt!2142923))))

(declare-fun b!5216768 () Bool)

(assert (=> b!5216768 (= e!3247336 e!3247337)))

(declare-fun res!2215368 () Bool)

(assert (=> b!5216768 (=> res!2215368 e!3247337)))

(assert (=> b!5216768 (= res!2215368 call!367820)))

(declare-fun b!5216769 () Bool)

(declare-fun res!2215367 () Bool)

(declare-fun e!3247334 () Bool)

(assert (=> b!5216769 (=> (not res!2215367) (not e!3247334))))

(assert (=> b!5216769 (= res!2215367 (isEmpty!32507 (tail!10276 (tail!10276 s!2326))))))

(declare-fun b!5216770 () Bool)

(declare-fun res!2215366 () Bool)

(assert (=> b!5216770 (=> res!2215366 e!3247340)))

(assert (=> b!5216770 (= res!2215366 e!3247334)))

(declare-fun res!2215363 () Bool)

(assert (=> b!5216770 (=> (not res!2215363) (not e!3247334))))

(assert (=> b!5216770 (= res!2215363 lt!2142923)))

(declare-fun b!5216771 () Bool)

(assert (=> b!5216771 (= e!3247335 (nullable!4973 (derivativeStep!4052 r!7292 (head!11179 s!2326))))))

(declare-fun b!5216772 () Bool)

(assert (=> b!5216772 (= e!3247334 (= (head!11179 (tail!10276 s!2326)) (c!899739 (derivativeStep!4052 r!7292 (head!11179 s!2326)))))))

(declare-fun b!5216773 () Bool)

(assert (=> b!5216773 (= e!3247339 e!3247338)))

(declare-fun c!899988 () Bool)

(assert (=> b!5216773 (= c!899988 (is-EmptyLang!14804 (derivativeStep!4052 r!7292 (head!11179 s!2326))))))

(declare-fun b!5216774 () Bool)

(declare-fun res!2215365 () Bool)

(assert (=> b!5216774 (=> (not res!2215365) (not e!3247334))))

(assert (=> b!5216774 (= res!2215365 (not call!367820))))

(declare-fun b!5216775 () Bool)

(assert (=> b!5216775 (= e!3247339 (= lt!2142923 call!367820))))

(assert (= (and d!1681958 c!899987) b!5216771))

(assert (= (and d!1681958 (not c!899987)) b!5216764))

(assert (= (and d!1681958 c!899989) b!5216775))

(assert (= (and d!1681958 (not c!899989)) b!5216773))

(assert (= (and b!5216773 c!899988) b!5216763))

(assert (= (and b!5216773 (not c!899988)) b!5216762))

(assert (= (and b!5216762 (not res!2215362)) b!5216770))

(assert (= (and b!5216770 res!2215363) b!5216774))

(assert (= (and b!5216774 res!2215365) b!5216769))

(assert (= (and b!5216769 res!2215367) b!5216772))

(assert (= (and b!5216770 (not res!2215366)) b!5216767))

(assert (= (and b!5216767 res!2215361) b!5216768))

(assert (= (and b!5216768 (not res!2215368)) b!5216765))

(assert (= (and b!5216765 (not res!2215364)) b!5216766))

(assert (= (or b!5216775 b!5216774 b!5216768) bm!367815))

(assert (=> b!5216766 m!6264630))

(declare-fun m!6265178 () Bool)

(assert (=> b!5216766 m!6265178))

(assert (=> bm!367815 m!6264630))

(assert (=> bm!367815 m!6264634))

(assert (=> b!5216764 m!6264630))

(assert (=> b!5216764 m!6265178))

(assert (=> b!5216764 m!6264628))

(assert (=> b!5216764 m!6265178))

(declare-fun m!6265180 () Bool)

(assert (=> b!5216764 m!6265180))

(assert (=> b!5216764 m!6264630))

(declare-fun m!6265182 () Bool)

(assert (=> b!5216764 m!6265182))

(assert (=> b!5216764 m!6265180))

(assert (=> b!5216764 m!6265182))

(declare-fun m!6265184 () Bool)

(assert (=> b!5216764 m!6265184))

(assert (=> d!1681958 m!6264630))

(assert (=> d!1681958 m!6264634))

(assert (=> d!1681958 m!6264628))

(declare-fun m!6265186 () Bool)

(assert (=> d!1681958 m!6265186))

(assert (=> b!5216769 m!6264630))

(assert (=> b!5216769 m!6265182))

(assert (=> b!5216769 m!6265182))

(declare-fun m!6265188 () Bool)

(assert (=> b!5216769 m!6265188))

(assert (=> b!5216765 m!6264630))

(assert (=> b!5216765 m!6265182))

(assert (=> b!5216765 m!6265182))

(assert (=> b!5216765 m!6265188))

(assert (=> b!5216772 m!6264630))

(assert (=> b!5216772 m!6265178))

(assert (=> b!5216771 m!6264628))

(declare-fun m!6265190 () Bool)

(assert (=> b!5216771 m!6265190))

(assert (=> b!5216015 d!1681958))

(declare-fun b!5216796 () Bool)

(declare-fun e!3247355 () Regex!14804)

(declare-fun call!367829 () Regex!14804)

(assert (=> b!5216796 (= e!3247355 (Concat!23649 call!367829 r!7292))))

(declare-fun b!5216797 () Bool)

(declare-fun e!3247353 () Regex!14804)

(assert (=> b!5216797 (= e!3247353 e!3247355)))

(declare-fun c!900001 () Bool)

(assert (=> b!5216797 (= c!900001 (is-Star!14804 r!7292))))

(declare-fun b!5216798 () Bool)

(declare-fun e!3247354 () Regex!14804)

(assert (=> b!5216798 (= e!3247354 EmptyLang!14804)))

(declare-fun d!1681960 () Bool)

(declare-fun lt!2142926 () Regex!14804)

(assert (=> d!1681960 (validRegex!6540 lt!2142926)))

(assert (=> d!1681960 (= lt!2142926 e!3247354)))

(declare-fun c!900004 () Bool)

(assert (=> d!1681960 (= c!900004 (or (is-EmptyExpr!14804 r!7292) (is-EmptyLang!14804 r!7292)))))

(assert (=> d!1681960 (validRegex!6540 r!7292)))

(assert (=> d!1681960 (= (derivativeStep!4052 r!7292 (head!11179 s!2326)) lt!2142926)))

(declare-fun call!367830 () Regex!14804)

(declare-fun bm!367824 () Bool)

(declare-fun c!900003 () Bool)

(assert (=> bm!367824 (= call!367830 (derivativeStep!4052 (ite c!900003 (regTwo!30121 r!7292) (ite c!900001 (reg!15133 r!7292) (regOne!30120 r!7292))) (head!11179 s!2326)))))

(declare-fun call!367832 () Regex!14804)

(declare-fun b!5216799 () Bool)

(declare-fun e!3247351 () Regex!14804)

(assert (=> b!5216799 (= e!3247351 (Union!14804 (Concat!23649 call!367829 (regTwo!30120 r!7292)) call!367832))))

(declare-fun b!5216800 () Bool)

(declare-fun e!3247352 () Regex!14804)

(assert (=> b!5216800 (= e!3247354 e!3247352)))

(declare-fun c!900002 () Bool)

(assert (=> b!5216800 (= c!900002 (is-ElementMatch!14804 r!7292))))

(declare-fun b!5216801 () Bool)

(assert (=> b!5216801 (= e!3247351 (Union!14804 (Concat!23649 call!367832 (regTwo!30120 r!7292)) EmptyLang!14804))))

(declare-fun b!5216802 () Bool)

(assert (=> b!5216802 (= e!3247352 (ite (= (head!11179 s!2326) (c!899739 r!7292)) EmptyExpr!14804 EmptyLang!14804))))

(declare-fun b!5216803 () Bool)

(declare-fun c!900000 () Bool)

(assert (=> b!5216803 (= c!900000 (nullable!4973 (regOne!30120 r!7292)))))

(assert (=> b!5216803 (= e!3247355 e!3247351)))

(declare-fun bm!367825 () Bool)

(assert (=> bm!367825 (= call!367829 call!367830)))

(declare-fun b!5216804 () Bool)

(declare-fun call!367831 () Regex!14804)

(assert (=> b!5216804 (= e!3247353 (Union!14804 call!367831 call!367830))))

(declare-fun b!5216805 () Bool)

(assert (=> b!5216805 (= c!900003 (is-Union!14804 r!7292))))

(assert (=> b!5216805 (= e!3247352 e!3247353)))

(declare-fun bm!367826 () Bool)

(assert (=> bm!367826 (= call!367832 call!367831)))

(declare-fun bm!367827 () Bool)

(assert (=> bm!367827 (= call!367831 (derivativeStep!4052 (ite c!900003 (regOne!30121 r!7292) (ite c!900000 (regTwo!30120 r!7292) (regOne!30120 r!7292))) (head!11179 s!2326)))))

(assert (= (and d!1681960 c!900004) b!5216798))

(assert (= (and d!1681960 (not c!900004)) b!5216800))

(assert (= (and b!5216800 c!900002) b!5216802))

(assert (= (and b!5216800 (not c!900002)) b!5216805))

(assert (= (and b!5216805 c!900003) b!5216804))

(assert (= (and b!5216805 (not c!900003)) b!5216797))

(assert (= (and b!5216797 c!900001) b!5216796))

(assert (= (and b!5216797 (not c!900001)) b!5216803))

(assert (= (and b!5216803 c!900000) b!5216799))

(assert (= (and b!5216803 (not c!900000)) b!5216801))

(assert (= (or b!5216799 b!5216801) bm!367826))

(assert (= (or b!5216796 b!5216799) bm!367825))

(assert (= (or b!5216804 bm!367825) bm!367824))

(assert (= (or b!5216804 bm!367826) bm!367827))

(declare-fun m!6265192 () Bool)

(assert (=> d!1681960 m!6265192))

(assert (=> d!1681960 m!6264482))

(assert (=> bm!367824 m!6264626))

(declare-fun m!6265194 () Bool)

(assert (=> bm!367824 m!6265194))

(declare-fun m!6265196 () Bool)

(assert (=> b!5216803 m!6265196))

(assert (=> bm!367827 m!6264626))

(declare-fun m!6265198 () Bool)

(assert (=> bm!367827 m!6265198))

(assert (=> b!5216015 d!1681960))

(declare-fun d!1681962 () Bool)

(assert (=> d!1681962 (= (head!11179 s!2326) (h!67035 s!2326))))

(assert (=> b!5216015 d!1681962))

(declare-fun d!1681964 () Bool)

(assert (=> d!1681964 (= (tail!10276 s!2326) (t!373878 s!2326))))

(assert (=> b!5216015 d!1681964))

(declare-fun d!1681966 () Bool)

(declare-fun c!900005 () Bool)

(assert (=> d!1681966 (= c!900005 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247356 () Bool)

(assert (=> d!1681966 (= (matchZipper!1048 (derivationStepZipper!1074 (set.union lt!2142760 lt!2142746) (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247356)))

(declare-fun b!5216806 () Bool)

(assert (=> b!5216806 (= e!3247356 (nullableZipper!1230 (derivationStepZipper!1074 (set.union lt!2142760 lt!2142746) (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5216807 () Bool)

(assert (=> b!5216807 (= e!3247356 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 (set.union lt!2142760 lt!2142746) (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1681966 c!900005) b!5216806))

(assert (= (and d!1681966 (not c!900005)) b!5216807))

(assert (=> d!1681966 m!6264724))

(declare-fun m!6265200 () Bool)

(assert (=> d!1681966 m!6265200))

(assert (=> b!5216806 m!6264772))

(declare-fun m!6265202 () Bool)

(assert (=> b!5216806 m!6265202))

(assert (=> b!5216807 m!6264724))

(declare-fun m!6265204 () Bool)

(assert (=> b!5216807 m!6265204))

(assert (=> b!5216807 m!6264772))

(assert (=> b!5216807 m!6265204))

(declare-fun m!6265206 () Bool)

(assert (=> b!5216807 m!6265206))

(assert (=> b!5216807 m!6264724))

(declare-fun m!6265208 () Bool)

(assert (=> b!5216807 m!6265208))

(assert (=> b!5216807 m!6265206))

(assert (=> b!5216807 m!6265208))

(declare-fun m!6265210 () Bool)

(assert (=> b!5216807 m!6265210))

(assert (=> b!5216171 d!1681966))

(declare-fun bs!1211670 () Bool)

(declare-fun d!1681968 () Bool)

(assert (= bs!1211670 (and d!1681968 b!5215801)))

(declare-fun lambda!261712 () Int)

(assert (=> bs!1211670 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261712 lambda!261632))))

(declare-fun bs!1211671 () Bool)

(assert (= bs!1211671 (and d!1681968 d!1681786)))

(assert (=> bs!1211671 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261712 lambda!261654))))

(assert (=> d!1681968 true))

(assert (=> d!1681968 (= (derivationStepZipper!1074 (set.union lt!2142760 lt!2142746) (head!11179 (t!373878 s!2326))) (flatMap!531 (set.union lt!2142760 lt!2142746) lambda!261712))))

(declare-fun bs!1211672 () Bool)

(assert (= bs!1211672 d!1681968))

(declare-fun m!6265212 () Bool)

(assert (=> bs!1211672 m!6265212))

(assert (=> b!5216171 d!1681968))

(declare-fun d!1681970 () Bool)

(assert (=> d!1681970 (= (head!11179 (t!373878 s!2326)) (h!67035 (t!373878 s!2326)))))

(assert (=> b!5216171 d!1681970))

(declare-fun d!1681972 () Bool)

(assert (=> d!1681972 (= (tail!10276 (t!373878 s!2326)) (t!373878 (t!373878 s!2326)))))

(assert (=> b!5216171 d!1681972))

(declare-fun bs!1211673 () Bool)

(declare-fun d!1681974 () Bool)

(assert (= bs!1211673 (and d!1681974 d!1681954)))

(declare-fun lambda!261713 () Int)

(assert (=> bs!1211673 (= lambda!261713 lambda!261710)))

(assert (=> d!1681974 (= (nullableZipper!1230 lt!2142762) (exists!1967 lt!2142762 lambda!261713))))

(declare-fun bs!1211674 () Bool)

(assert (= bs!1211674 d!1681974))

(declare-fun m!6265214 () Bool)

(assert (=> bs!1211674 m!6265214))

(assert (=> b!5216167 d!1681974))

(declare-fun bm!367828 () Bool)

(declare-fun call!367834 () (Set Context!8376))

(declare-fun call!367835 () (Set Context!8376))

(assert (=> bm!367828 (= call!367834 call!367835)))

(declare-fun c!900009 () Bool)

(declare-fun bm!367829 () Bool)

(declare-fun call!367837 () List!60712)

(declare-fun c!900008 () Bool)

(assert (=> bm!367829 (= call!367837 ($colon$colon!1280 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745)))) (ite (or c!900009 c!900008) (regTwo!30120 (h!67036 (exprs!4688 lt!2142745))) (h!67036 (exprs!4688 lt!2142745)))))))

(declare-fun b!5216808 () Bool)

(declare-fun e!3247362 () (Set Context!8376))

(declare-fun e!3247361 () (Set Context!8376))

(assert (=> b!5216808 (= e!3247362 e!3247361)))

(assert (=> b!5216808 (= c!900008 (is-Concat!23649 (h!67036 (exprs!4688 lt!2142745))))))

(declare-fun call!367838 () (Set Context!8376))

(declare-fun c!900007 () Bool)

(declare-fun bm!367830 () Bool)

(assert (=> bm!367830 (= call!367838 (derivationStepZipperDown!252 (ite c!900007 (regOne!30121 (h!67036 (exprs!4688 lt!2142745))) (regOne!30120 (h!67036 (exprs!4688 lt!2142745)))) (ite c!900007 (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (Context!8377 call!367837)) (h!67035 s!2326)))))

(declare-fun b!5216809 () Bool)

(declare-fun e!3247360 () Bool)

(assert (=> b!5216809 (= e!3247360 (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 lt!2142745)))))))

(declare-fun b!5216810 () Bool)

(declare-fun e!3247357 () (Set Context!8376))

(assert (=> b!5216810 (= e!3247357 (as set.empty (Set Context!8376)))))

(declare-fun b!5216811 () Bool)

(declare-fun call!367836 () (Set Context!8376))

(assert (=> b!5216811 (= e!3247357 call!367836)))

(declare-fun b!5216812 () Bool)

(declare-fun e!3247358 () (Set Context!8376))

(declare-fun e!3247359 () (Set Context!8376))

(assert (=> b!5216812 (= e!3247358 e!3247359)))

(assert (=> b!5216812 (= c!900007 (is-Union!14804 (h!67036 (exprs!4688 lt!2142745))))))

(declare-fun b!5216813 () Bool)

(assert (=> b!5216813 (= c!900009 e!3247360)))

(declare-fun res!2215369 () Bool)

(assert (=> b!5216813 (=> (not res!2215369) (not e!3247360))))

(assert (=> b!5216813 (= res!2215369 (is-Concat!23649 (h!67036 (exprs!4688 lt!2142745))))))

(assert (=> b!5216813 (= e!3247359 e!3247362)))

(declare-fun bm!367831 () Bool)

(declare-fun call!367833 () List!60712)

(assert (=> bm!367831 (= call!367833 call!367837)))

(declare-fun b!5216814 () Bool)

(declare-fun c!900010 () Bool)

(assert (=> b!5216814 (= c!900010 (is-Star!14804 (h!67036 (exprs!4688 lt!2142745))))))

(assert (=> b!5216814 (= e!3247361 e!3247357)))

(declare-fun b!5216815 () Bool)

(assert (=> b!5216815 (= e!3247362 (set.union call!367838 call!367834))))

(declare-fun d!1681976 () Bool)

(declare-fun c!900006 () Bool)

(assert (=> d!1681976 (= c!900006 (and (is-ElementMatch!14804 (h!67036 (exprs!4688 lt!2142745))) (= (c!899739 (h!67036 (exprs!4688 lt!2142745))) (h!67035 s!2326))))))

(assert (=> d!1681976 (= (derivationStepZipperDown!252 (h!67036 (exprs!4688 lt!2142745)) (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (h!67035 s!2326)) e!3247358)))

(declare-fun bm!367832 () Bool)

(assert (=> bm!367832 (= call!367836 call!367834)))

(declare-fun bm!367833 () Bool)

(assert (=> bm!367833 (= call!367835 (derivationStepZipperDown!252 (ite c!900007 (regTwo!30121 (h!67036 (exprs!4688 lt!2142745))) (ite c!900009 (regTwo!30120 (h!67036 (exprs!4688 lt!2142745))) (ite c!900008 (regOne!30120 (h!67036 (exprs!4688 lt!2142745))) (reg!15133 (h!67036 (exprs!4688 lt!2142745)))))) (ite (or c!900007 c!900009) (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (Context!8377 call!367833)) (h!67035 s!2326)))))

(declare-fun b!5216816 () Bool)

(assert (=> b!5216816 (= e!3247361 call!367836)))

(declare-fun b!5216817 () Bool)

(assert (=> b!5216817 (= e!3247358 (set.insert (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (as set.empty (Set Context!8376))))))

(declare-fun b!5216818 () Bool)

(assert (=> b!5216818 (= e!3247359 (set.union call!367838 call!367835))))

(assert (= (and d!1681976 c!900006) b!5216817))

(assert (= (and d!1681976 (not c!900006)) b!5216812))

(assert (= (and b!5216812 c!900007) b!5216818))

(assert (= (and b!5216812 (not c!900007)) b!5216813))

(assert (= (and b!5216813 res!2215369) b!5216809))

(assert (= (and b!5216813 c!900009) b!5216815))

(assert (= (and b!5216813 (not c!900009)) b!5216808))

(assert (= (and b!5216808 c!900008) b!5216816))

(assert (= (and b!5216808 (not c!900008)) b!5216814))

(assert (= (and b!5216814 c!900010) b!5216811))

(assert (= (and b!5216814 (not c!900010)) b!5216810))

(assert (= (or b!5216816 b!5216811) bm!367831))

(assert (= (or b!5216816 b!5216811) bm!367832))

(assert (= (or b!5216815 bm!367831) bm!367829))

(assert (= (or b!5216815 bm!367832) bm!367828))

(assert (= (or b!5216818 bm!367828) bm!367833))

(assert (= (or b!5216818 b!5216815) bm!367830))

(declare-fun m!6265216 () Bool)

(assert (=> b!5216817 m!6265216))

(declare-fun m!6265218 () Bool)

(assert (=> bm!367829 m!6265218))

(declare-fun m!6265220 () Bool)

(assert (=> bm!367830 m!6265220))

(declare-fun m!6265222 () Bool)

(assert (=> b!5216809 m!6265222))

(declare-fun m!6265224 () Bool)

(assert (=> bm!367833 m!6265224))

(assert (=> bm!367719 d!1681976))

(declare-fun d!1681978 () Bool)

(declare-fun res!2215374 () Bool)

(declare-fun e!3247367 () Bool)

(assert (=> d!1681978 (=> res!2215374 e!3247367)))

(assert (=> d!1681978 (= res!2215374 (is-Nil!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (=> d!1681978 (= (forall!14238 (exprs!4688 (h!67037 zl!343)) lambda!261658) e!3247367)))

(declare-fun b!5216823 () Bool)

(declare-fun e!3247368 () Bool)

(assert (=> b!5216823 (= e!3247367 e!3247368)))

(declare-fun res!2215375 () Bool)

(assert (=> b!5216823 (=> (not res!2215375) (not e!3247368))))

(declare-fun dynLambda!23940 (Int Regex!14804) Bool)

(assert (=> b!5216823 (= res!2215375 (dynLambda!23940 lambda!261658 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216824 () Bool)

(assert (=> b!5216824 (= e!3247368 (forall!14238 (t!373879 (exprs!4688 (h!67037 zl!343))) lambda!261658))))

(assert (= (and d!1681978 (not res!2215374)) b!5216823))

(assert (= (and b!5216823 res!2215375) b!5216824))

(declare-fun b_lambda!201741 () Bool)

(assert (=> (not b_lambda!201741) (not b!5216823)))

(declare-fun m!6265226 () Bool)

(assert (=> b!5216823 m!6265226))

(declare-fun m!6265228 () Bool)

(assert (=> b!5216824 m!6265228))

(assert (=> d!1681822 d!1681978))

(assert (=> d!1681836 d!1681830))

(declare-fun d!1681980 () Bool)

(assert (=> d!1681980 (= (Exists!1985 lambda!261661) (choose!38782 lambda!261661))))

(declare-fun bs!1211675 () Bool)

(assert (= bs!1211675 d!1681980))

(declare-fun m!6265230 () Bool)

(assert (=> bs!1211675 m!6265230))

(assert (=> d!1681836 d!1681980))

(declare-fun bm!367834 () Bool)

(declare-fun call!367841 () Bool)

(declare-fun call!367839 () Bool)

(assert (=> bm!367834 (= call!367841 call!367839)))

(declare-fun b!5216825 () Bool)

(declare-fun e!3247372 () Bool)

(assert (=> b!5216825 (= e!3247372 call!367841)))

(declare-fun b!5216826 () Bool)

(declare-fun e!3247374 () Bool)

(declare-fun e!3247369 () Bool)

(assert (=> b!5216826 (= e!3247374 e!3247369)))

(declare-fun c!900011 () Bool)

(assert (=> b!5216826 (= c!900011 (is-Star!14804 (regOne!30120 r!7292)))))

(declare-fun b!5216827 () Bool)

(declare-fun res!2215379 () Bool)

(declare-fun e!3247373 () Bool)

(assert (=> b!5216827 (=> res!2215379 e!3247373)))

(assert (=> b!5216827 (= res!2215379 (not (is-Concat!23649 (regOne!30120 r!7292))))))

(declare-fun e!3247370 () Bool)

(assert (=> b!5216827 (= e!3247370 e!3247373)))

(declare-fun b!5216828 () Bool)

(assert (=> b!5216828 (= e!3247369 e!3247370)))

(declare-fun c!900012 () Bool)

(assert (=> b!5216828 (= c!900012 (is-Union!14804 (regOne!30120 r!7292)))))

(declare-fun b!5216829 () Bool)

(declare-fun e!3247375 () Bool)

(assert (=> b!5216829 (= e!3247375 call!367841)))

(declare-fun b!5216830 () Bool)

(declare-fun e!3247371 () Bool)

(assert (=> b!5216830 (= e!3247369 e!3247371)))

(declare-fun res!2215376 () Bool)

(assert (=> b!5216830 (= res!2215376 (not (nullable!4973 (reg!15133 (regOne!30120 r!7292)))))))

(assert (=> b!5216830 (=> (not res!2215376) (not e!3247371))))

(declare-fun bm!367835 () Bool)

(declare-fun call!367840 () Bool)

(assert (=> bm!367835 (= call!367840 (validRegex!6540 (ite c!900012 (regOne!30121 (regOne!30120 r!7292)) (regOne!30120 (regOne!30120 r!7292)))))))

(declare-fun b!5216831 () Bool)

(assert (=> b!5216831 (= e!3247373 e!3247375)))

(declare-fun res!2215378 () Bool)

(assert (=> b!5216831 (=> (not res!2215378) (not e!3247375))))

(assert (=> b!5216831 (= res!2215378 call!367840)))

(declare-fun d!1681982 () Bool)

(declare-fun res!2215380 () Bool)

(assert (=> d!1681982 (=> res!2215380 e!3247374)))

(assert (=> d!1681982 (= res!2215380 (is-ElementMatch!14804 (regOne!30120 r!7292)))))

(assert (=> d!1681982 (= (validRegex!6540 (regOne!30120 r!7292)) e!3247374)))

(declare-fun b!5216832 () Bool)

(assert (=> b!5216832 (= e!3247371 call!367839)))

(declare-fun bm!367836 () Bool)

(assert (=> bm!367836 (= call!367839 (validRegex!6540 (ite c!900011 (reg!15133 (regOne!30120 r!7292)) (ite c!900012 (regTwo!30121 (regOne!30120 r!7292)) (regTwo!30120 (regOne!30120 r!7292))))))))

(declare-fun b!5216833 () Bool)

(declare-fun res!2215377 () Bool)

(assert (=> b!5216833 (=> (not res!2215377) (not e!3247372))))

(assert (=> b!5216833 (= res!2215377 call!367840)))

(assert (=> b!5216833 (= e!3247370 e!3247372)))

(assert (= (and d!1681982 (not res!2215380)) b!5216826))

(assert (= (and b!5216826 c!900011) b!5216830))

(assert (= (and b!5216826 (not c!900011)) b!5216828))

(assert (= (and b!5216830 res!2215376) b!5216832))

(assert (= (and b!5216828 c!900012) b!5216833))

(assert (= (and b!5216828 (not c!900012)) b!5216827))

(assert (= (and b!5216833 res!2215377) b!5216825))

(assert (= (and b!5216827 (not res!2215379)) b!5216831))

(assert (= (and b!5216831 res!2215378) b!5216829))

(assert (= (or b!5216825 b!5216829) bm!367834))

(assert (= (or b!5216833 b!5216831) bm!367835))

(assert (= (or b!5216832 bm!367834) bm!367836))

(declare-fun m!6265232 () Bool)

(assert (=> b!5216830 m!6265232))

(declare-fun m!6265234 () Bool)

(assert (=> bm!367835 m!6265234))

(declare-fun m!6265236 () Bool)

(assert (=> bm!367836 m!6265236))

(assert (=> d!1681836 d!1681982))

(assert (=> d!1681836 d!1681840))

(declare-fun bs!1211676 () Bool)

(declare-fun d!1681984 () Bool)

(assert (= bs!1211676 (and d!1681984 d!1681838)))

(declare-fun lambda!261716 () Int)

(assert (=> bs!1211676 (= lambda!261716 lambda!261666)))

(assert (=> bs!1211676 (not (= lambda!261716 lambda!261667))))

(declare-fun bs!1211677 () Bool)

(assert (= bs!1211677 (and d!1681984 b!5215977)))

(assert (=> bs!1211677 (not (= lambda!261716 lambda!261650))))

(declare-fun bs!1211678 () Bool)

(assert (= bs!1211678 (and d!1681984 b!5215825)))

(assert (=> bs!1211678 (not (= lambda!261716 lambda!261631))))

(declare-fun bs!1211679 () Bool)

(assert (= bs!1211679 (and d!1681984 d!1681836)))

(assert (=> bs!1211679 (= lambda!261716 lambda!261661)))

(assert (=> bs!1211678 (= lambda!261716 lambda!261630)))

(declare-fun bs!1211680 () Bool)

(assert (= bs!1211680 (and d!1681984 b!5215984)))

(assert (=> bs!1211680 (not (= lambda!261716 lambda!261651))))

(assert (=> d!1681984 true))

(assert (=> d!1681984 true))

(assert (=> d!1681984 true))

(assert (=> d!1681984 (= (isDefined!11618 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326)) (Exists!1985 lambda!261716))))

(assert (=> d!1681984 true))

(declare-fun _$89!1385 () Unit!152482)

(assert (=> d!1681984 (= (choose!38783 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326) _$89!1385)))

(declare-fun bs!1211681 () Bool)

(assert (= bs!1211681 d!1681984))

(assert (=> bs!1211681 m!6264448))

(assert (=> bs!1211681 m!6264448))

(assert (=> bs!1211681 m!6264450))

(declare-fun m!6265238 () Bool)

(assert (=> bs!1211681 m!6265238))

(assert (=> d!1681836 d!1681984))

(declare-fun d!1681986 () Bool)

(assert (=> d!1681986 (= (Exists!1985 (ite c!899759 lambda!261650 lambda!261651)) (choose!38782 (ite c!899759 lambda!261650 lambda!261651)))))

(declare-fun bs!1211682 () Bool)

(assert (= bs!1211682 d!1681986))

(declare-fun m!6265240 () Bool)

(assert (=> bs!1211682 m!6265240))

(assert (=> bm!367694 d!1681986))

(declare-fun d!1681988 () Bool)

(assert (=> d!1681988 (= ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899802 c!899801) (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (regTwo!30121 (regOne!30120 r!7292)))) (Cons!60588 (ite (or c!899802 c!899801) (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (regTwo!30121 (regOne!30120 r!7292))) (exprs!4688 lt!2142745)))))

(assert (=> bm!367723 d!1681988))

(declare-fun bm!367837 () Bool)

(declare-fun call!367844 () Bool)

(declare-fun call!367842 () Bool)

(assert (=> bm!367837 (= call!367844 call!367842)))

(declare-fun b!5216838 () Bool)

(declare-fun e!3247381 () Bool)

(assert (=> b!5216838 (= e!3247381 call!367844)))

(declare-fun b!5216839 () Bool)

(declare-fun e!3247383 () Bool)

(declare-fun e!3247378 () Bool)

(assert (=> b!5216839 (= e!3247383 e!3247378)))

(declare-fun c!900013 () Bool)

(assert (=> b!5216839 (= c!900013 (is-Star!14804 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5216840 () Bool)

(declare-fun res!2215388 () Bool)

(declare-fun e!3247382 () Bool)

(assert (=> b!5216840 (=> res!2215388 e!3247382)))

(assert (=> b!5216840 (= res!2215388 (not (is-Concat!23649 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun e!3247379 () Bool)

(assert (=> b!5216840 (= e!3247379 e!3247382)))

(declare-fun b!5216841 () Bool)

(assert (=> b!5216841 (= e!3247378 e!3247379)))

(declare-fun c!900014 () Bool)

(assert (=> b!5216841 (= c!900014 (is-Union!14804 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5216842 () Bool)

(declare-fun e!3247384 () Bool)

(assert (=> b!5216842 (= e!3247384 call!367844)))

(declare-fun b!5216843 () Bool)

(declare-fun e!3247380 () Bool)

(assert (=> b!5216843 (= e!3247378 e!3247380)))

(declare-fun res!2215385 () Bool)

(assert (=> b!5216843 (= res!2215385 (not (nullable!4973 (reg!15133 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))))

(assert (=> b!5216843 (=> (not res!2215385) (not e!3247380))))

(declare-fun call!367843 () Bool)

(declare-fun bm!367838 () Bool)

(assert (=> bm!367838 (= call!367843 (validRegex!6540 (ite c!900014 (regOne!30121 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (regOne!30120 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))))

(declare-fun b!5216844 () Bool)

(assert (=> b!5216844 (= e!3247382 e!3247384)))

(declare-fun res!2215387 () Bool)

(assert (=> b!5216844 (=> (not res!2215387) (not e!3247384))))

(assert (=> b!5216844 (= res!2215387 call!367843)))

(declare-fun d!1681990 () Bool)

(declare-fun res!2215389 () Bool)

(assert (=> d!1681990 (=> res!2215389 e!3247383)))

(assert (=> d!1681990 (= res!2215389 (is-ElementMatch!14804 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(assert (=> d!1681990 (= (validRegex!6540 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) e!3247383)))

(declare-fun b!5216845 () Bool)

(assert (=> b!5216845 (= e!3247380 call!367842)))

(declare-fun bm!367839 () Bool)

(assert (=> bm!367839 (= call!367842 (validRegex!6540 (ite c!900013 (reg!15133 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (ite c!900014 (regTwo!30121 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (regTwo!30120 (ite c!899820 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5216846 () Bool)

(declare-fun res!2215386 () Bool)

(assert (=> b!5216846 (=> (not res!2215386) (not e!3247381))))

(assert (=> b!5216846 (= res!2215386 call!367843)))

(assert (=> b!5216846 (= e!3247379 e!3247381)))

(assert (= (and d!1681990 (not res!2215389)) b!5216839))

(assert (= (and b!5216839 c!900013) b!5216843))

(assert (= (and b!5216839 (not c!900013)) b!5216841))

(assert (= (and b!5216843 res!2215385) b!5216845))

(assert (= (and b!5216841 c!900014) b!5216846))

(assert (= (and b!5216841 (not c!900014)) b!5216840))

(assert (= (and b!5216846 res!2215386) b!5216838))

(assert (= (and b!5216840 (not res!2215388)) b!5216844))

(assert (= (and b!5216844 res!2215387) b!5216842))

(assert (= (or b!5216838 b!5216842) bm!367837))

(assert (= (or b!5216846 b!5216844) bm!367838))

(assert (= (or b!5216845 bm!367837) bm!367839))

(declare-fun m!6265242 () Bool)

(assert (=> b!5216843 m!6265242))

(declare-fun m!6265244 () Bool)

(assert (=> bm!367838 m!6265244))

(declare-fun m!6265246 () Bool)

(assert (=> bm!367839 m!6265246))

(assert (=> bm!367744 d!1681990))

(declare-fun d!1681992 () Bool)

(assert (=> d!1681992 (= (isEmpty!32504 (tail!10277 (unfocusZipperList!246 zl!343))) (is-Nil!60588 (tail!10277 (unfocusZipperList!246 zl!343))))))

(assert (=> b!5216272 d!1681992))

(declare-fun d!1681994 () Bool)

(assert (=> d!1681994 (= (tail!10277 (unfocusZipperList!246 zl!343)) (t!373879 (unfocusZipperList!246 zl!343)))))

(assert (=> b!5216272 d!1681994))

(assert (=> d!1681766 d!1681764))

(assert (=> d!1681766 d!1681762))

(declare-fun d!1681996 () Bool)

(assert (=> d!1681996 (= (matchR!6989 r!7292 s!2326) (matchRSpec!1907 r!7292 s!2326))))

(assert (=> d!1681996 true))

(declare-fun _$88!3477 () Unit!152482)

(assert (=> d!1681996 (= (choose!38777 r!7292 s!2326) _$88!3477)))

(declare-fun bs!1211683 () Bool)

(assert (= bs!1211683 d!1681996))

(assert (=> bs!1211683 m!6264460))

(assert (=> bs!1211683 m!6264458))

(assert (=> d!1681766 d!1681996))

(assert (=> d!1681766 d!1681802))

(assert (=> d!1681770 d!1681768))

(declare-fun d!1681998 () Bool)

(assert (=> d!1681998 (= (flatMap!531 z!1189 lambda!261632) (dynLambda!23938 lambda!261632 (h!67037 zl!343)))))

(assert (=> d!1681998 true))

(declare-fun _$13!1706 () Unit!152482)

(assert (=> d!1681998 (= (choose!38779 z!1189 (h!67037 zl!343) lambda!261632) _$13!1706)))

(declare-fun b_lambda!201743 () Bool)

(assert (=> (not b_lambda!201743) (not d!1681998)))

(declare-fun bs!1211684 () Bool)

(assert (= bs!1211684 d!1681998))

(assert (=> bs!1211684 m!6264476))

(assert (=> bs!1211684 m!6264642))

(assert (=> d!1681770 d!1681998))

(declare-fun d!1682000 () Bool)

(assert (=> d!1682000 (= (isDefined!11618 lt!2142861) (not (isEmpty!32508 lt!2142861)))))

(declare-fun bs!1211685 () Bool)

(assert (= bs!1211685 d!1682000))

(declare-fun m!6265248 () Bool)

(assert (=> bs!1211685 m!6265248))

(assert (=> b!5216194 d!1682000))

(declare-fun d!1682002 () Bool)

(assert (=> d!1682002 true))

(declare-fun setRes!33163 () Bool)

(assert (=> d!1682002 setRes!33163))

(declare-fun condSetEmpty!33163 () Bool)

(declare-fun res!2215392 () (Set Context!8376))

(assert (=> d!1682002 (= condSetEmpty!33163 (= res!2215392 (as set.empty (Set Context!8376))))))

(assert (=> d!1682002 (= (choose!38778 lt!2142751 lambda!261632) res!2215392)))

(declare-fun setIsEmpty!33163 () Bool)

(assert (=> setIsEmpty!33163 setRes!33163))

(declare-fun e!3247387 () Bool)

(declare-fun tp!1462687 () Bool)

(declare-fun setElem!33163 () Context!8376)

(declare-fun setNonEmpty!33163 () Bool)

(assert (=> setNonEmpty!33163 (= setRes!33163 (and tp!1462687 (inv!80258 setElem!33163) e!3247387))))

(declare-fun setRest!33163 () (Set Context!8376))

(assert (=> setNonEmpty!33163 (= res!2215392 (set.union (set.insert setElem!33163 (as set.empty (Set Context!8376))) setRest!33163))))

(declare-fun b!5216849 () Bool)

(declare-fun tp!1462686 () Bool)

(assert (=> b!5216849 (= e!3247387 tp!1462686)))

(assert (= (and d!1682002 condSetEmpty!33163) setIsEmpty!33163))

(assert (= (and d!1682002 (not condSetEmpty!33163)) setNonEmpty!33163))

(assert (= setNonEmpty!33163 b!5216849))

(declare-fun m!6265250 () Bool)

(assert (=> setNonEmpty!33163 m!6265250))

(assert (=> d!1681790 d!1682002))

(declare-fun bs!1211686 () Bool)

(declare-fun b!5216853 () Bool)

(assert (= bs!1211686 (and b!5216853 d!1681838)))

(declare-fun lambda!261717 () Int)

(assert (=> bs!1211686 (not (= lambda!261717 lambda!261666))))

(assert (=> bs!1211686 (not (= lambda!261717 lambda!261667))))

(declare-fun bs!1211687 () Bool)

(assert (= bs!1211687 (and b!5216853 b!5215977)))

(assert (=> bs!1211687 (= (and (= (reg!15133 (regOne!30121 r!7292)) (reg!15133 r!7292)) (= (regOne!30121 r!7292) r!7292)) (= lambda!261717 lambda!261650))))

(declare-fun bs!1211688 () Bool)

(assert (= bs!1211688 (and b!5216853 d!1681836)))

(assert (=> bs!1211688 (not (= lambda!261717 lambda!261661))))

(declare-fun bs!1211689 () Bool)

(assert (= bs!1211689 (and b!5216853 b!5215825)))

(assert (=> bs!1211689 (not (= lambda!261717 lambda!261631))))

(declare-fun bs!1211690 () Bool)

(assert (= bs!1211690 (and b!5216853 d!1681984)))

(assert (=> bs!1211690 (not (= lambda!261717 lambda!261716))))

(assert (=> bs!1211689 (not (= lambda!261717 lambda!261630))))

(declare-fun bs!1211691 () Bool)

(assert (= bs!1211691 (and b!5216853 b!5215984)))

(assert (=> bs!1211691 (not (= lambda!261717 lambda!261651))))

(assert (=> b!5216853 true))

(assert (=> b!5216853 true))

(declare-fun bs!1211692 () Bool)

(declare-fun b!5216860 () Bool)

(assert (= bs!1211692 (and b!5216860 d!1681838)))

(declare-fun lambda!261718 () Int)

(assert (=> bs!1211692 (not (= lambda!261718 lambda!261666))))

(declare-fun bs!1211693 () Bool)

(assert (= bs!1211693 (and b!5216860 b!5216853)))

(assert (=> bs!1211693 (not (= lambda!261718 lambda!261717))))

(assert (=> bs!1211692 (= (and (= (regOne!30120 (regOne!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regOne!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261718 lambda!261667))))

(declare-fun bs!1211694 () Bool)

(assert (= bs!1211694 (and b!5216860 b!5215977)))

(assert (=> bs!1211694 (not (= lambda!261718 lambda!261650))))

(declare-fun bs!1211695 () Bool)

(assert (= bs!1211695 (and b!5216860 d!1681836)))

(assert (=> bs!1211695 (not (= lambda!261718 lambda!261661))))

(declare-fun bs!1211696 () Bool)

(assert (= bs!1211696 (and b!5216860 b!5215825)))

(assert (=> bs!1211696 (= (and (= (regOne!30120 (regOne!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regOne!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261718 lambda!261631))))

(declare-fun bs!1211697 () Bool)

(assert (= bs!1211697 (and b!5216860 d!1681984)))

(assert (=> bs!1211697 (not (= lambda!261718 lambda!261716))))

(assert (=> bs!1211696 (not (= lambda!261718 lambda!261630))))

(declare-fun bs!1211698 () Bool)

(assert (= bs!1211698 (and b!5216860 b!5215984)))

(assert (=> bs!1211698 (= (and (= (regOne!30120 (regOne!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regOne!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261718 lambda!261651))))

(assert (=> b!5216860 true))

(assert (=> b!5216860 true))

(declare-fun bm!367840 () Bool)

(declare-fun call!367845 () Bool)

(assert (=> bm!367840 (= call!367845 (isEmpty!32507 s!2326))))

(declare-fun b!5216850 () Bool)

(declare-fun c!900015 () Bool)

(assert (=> b!5216850 (= c!900015 (is-ElementMatch!14804 (regOne!30121 r!7292)))))

(declare-fun e!3247392 () Bool)

(declare-fun e!3247394 () Bool)

(assert (=> b!5216850 (= e!3247392 e!3247394)))

(declare-fun b!5216851 () Bool)

(declare-fun e!3247393 () Bool)

(declare-fun e!3247391 () Bool)

(assert (=> b!5216851 (= e!3247393 e!3247391)))

(declare-fun c!900017 () Bool)

(assert (=> b!5216851 (= c!900017 (is-Star!14804 (regOne!30121 r!7292)))))

(declare-fun bm!367841 () Bool)

(declare-fun call!367846 () Bool)

(assert (=> bm!367841 (= call!367846 (Exists!1985 (ite c!900017 lambda!261717 lambda!261718)))))

(declare-fun b!5216852 () Bool)

(declare-fun res!2215394 () Bool)

(declare-fun e!3247388 () Bool)

(assert (=> b!5216852 (=> res!2215394 e!3247388)))

(assert (=> b!5216852 (= res!2215394 call!367845)))

(assert (=> b!5216852 (= e!3247391 e!3247388)))

(assert (=> b!5216853 (= e!3247388 call!367846)))

(declare-fun b!5216854 () Bool)

(declare-fun e!3247389 () Bool)

(assert (=> b!5216854 (= e!3247389 (matchRSpec!1907 (regTwo!30121 (regOne!30121 r!7292)) s!2326))))

(declare-fun b!5216855 () Bool)

(assert (=> b!5216855 (= e!3247393 e!3247389)))

(declare-fun res!2215395 () Bool)

(assert (=> b!5216855 (= res!2215395 (matchRSpec!1907 (regOne!30121 (regOne!30121 r!7292)) s!2326))))

(assert (=> b!5216855 (=> res!2215395 e!3247389)))

(declare-fun b!5216856 () Bool)

(declare-fun c!900016 () Bool)

(assert (=> b!5216856 (= c!900016 (is-Union!14804 (regOne!30121 r!7292)))))

(assert (=> b!5216856 (= e!3247394 e!3247393)))

(declare-fun d!1682004 () Bool)

(declare-fun c!900018 () Bool)

(assert (=> d!1682004 (= c!900018 (is-EmptyExpr!14804 (regOne!30121 r!7292)))))

(declare-fun e!3247390 () Bool)

(assert (=> d!1682004 (= (matchRSpec!1907 (regOne!30121 r!7292) s!2326) e!3247390)))

(declare-fun b!5216857 () Bool)

(assert (=> b!5216857 (= e!3247390 call!367845)))

(declare-fun b!5216858 () Bool)

(assert (=> b!5216858 (= e!3247390 e!3247392)))

(declare-fun res!2215393 () Bool)

(assert (=> b!5216858 (= res!2215393 (not (is-EmptyLang!14804 (regOne!30121 r!7292))))))

(assert (=> b!5216858 (=> (not res!2215393) (not e!3247392))))

(declare-fun b!5216859 () Bool)

(assert (=> b!5216859 (= e!3247394 (= s!2326 (Cons!60587 (c!899739 (regOne!30121 r!7292)) Nil!60587)))))

(assert (=> b!5216860 (= e!3247391 call!367846)))

(assert (= (and d!1682004 c!900018) b!5216857))

(assert (= (and d!1682004 (not c!900018)) b!5216858))

(assert (= (and b!5216858 res!2215393) b!5216850))

(assert (= (and b!5216850 c!900015) b!5216859))

(assert (= (and b!5216850 (not c!900015)) b!5216856))

(assert (= (and b!5216856 c!900016) b!5216855))

(assert (= (and b!5216856 (not c!900016)) b!5216851))

(assert (= (and b!5216855 (not res!2215395)) b!5216854))

(assert (= (and b!5216851 c!900017) b!5216852))

(assert (= (and b!5216851 (not c!900017)) b!5216860))

(assert (= (and b!5216852 (not res!2215394)) b!5216853))

(assert (= (or b!5216853 b!5216860) bm!367841))

(assert (= (or b!5216857 b!5216852) bm!367840))

(assert (=> bm!367840 m!6264618))

(declare-fun m!6265252 () Bool)

(assert (=> bm!367841 m!6265252))

(declare-fun m!6265254 () Bool)

(assert (=> b!5216854 m!6265254))

(declare-fun m!6265256 () Bool)

(assert (=> b!5216855 m!6265256))

(assert (=> b!5215979 d!1682004))

(declare-fun bm!367842 () Bool)

(declare-fun call!367849 () Bool)

(declare-fun call!367847 () Bool)

(assert (=> bm!367842 (= call!367849 call!367847)))

(declare-fun b!5216861 () Bool)

(declare-fun e!3247398 () Bool)

(assert (=> b!5216861 (= e!3247398 call!367849)))

(declare-fun b!5216862 () Bool)

(declare-fun e!3247400 () Bool)

(declare-fun e!3247395 () Bool)

(assert (=> b!5216862 (= e!3247400 e!3247395)))

(declare-fun c!900019 () Bool)

(assert (=> b!5216862 (= c!900019 (is-Star!14804 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))

(declare-fun b!5216863 () Bool)

(declare-fun res!2215399 () Bool)

(declare-fun e!3247399 () Bool)

(assert (=> b!5216863 (=> res!2215399 e!3247399)))

(assert (=> b!5216863 (= res!2215399 (not (is-Concat!23649 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292))))))))

(declare-fun e!3247396 () Bool)

(assert (=> b!5216863 (= e!3247396 e!3247399)))

(declare-fun b!5216864 () Bool)

(assert (=> b!5216864 (= e!3247395 e!3247396)))

(declare-fun c!900020 () Bool)

(assert (=> b!5216864 (= c!900020 (is-Union!14804 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))

(declare-fun b!5216865 () Bool)

(declare-fun e!3247401 () Bool)

(assert (=> b!5216865 (= e!3247401 call!367849)))

(declare-fun b!5216866 () Bool)

(declare-fun e!3247397 () Bool)

(assert (=> b!5216866 (= e!3247395 e!3247397)))

(declare-fun res!2215396 () Bool)

(assert (=> b!5216866 (= res!2215396 (not (nullable!4973 (reg!15133 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))))

(assert (=> b!5216866 (=> (not res!2215396) (not e!3247397))))

(declare-fun bm!367843 () Bool)

(declare-fun call!367848 () Bool)

(assert (=> bm!367843 (= call!367848 (validRegex!6540 (ite c!900020 (regOne!30121 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))) (regOne!30120 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))))

(declare-fun b!5216867 () Bool)

(assert (=> b!5216867 (= e!3247399 e!3247401)))

(declare-fun res!2215398 () Bool)

(assert (=> b!5216867 (=> (not res!2215398) (not e!3247401))))

(assert (=> b!5216867 (= res!2215398 call!367848)))

(declare-fun d!1682006 () Bool)

(declare-fun res!2215400 () Bool)

(assert (=> d!1682006 (=> res!2215400 e!3247400)))

(assert (=> d!1682006 (= res!2215400 (is-ElementMatch!14804 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))))))

(assert (=> d!1682006 (= (validRegex!6540 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))) e!3247400)))

(declare-fun b!5216868 () Bool)

(assert (=> b!5216868 (= e!3247397 call!367847)))

(declare-fun bm!367844 () Bool)

(assert (=> bm!367844 (= call!367847 (validRegex!6540 (ite c!900019 (reg!15133 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))) (ite c!900020 (regTwo!30121 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292)))) (regTwo!30120 (ite c!899817 (reg!15133 r!7292) (ite c!899818 (regTwo!30121 r!7292) (regTwo!30120 r!7292))))))))))

(declare-fun b!5216869 () Bool)

(declare-fun res!2215397 () Bool)

(assert (=> b!5216869 (=> (not res!2215397) (not e!3247398))))

(assert (=> b!5216869 (= res!2215397 call!367848)))

(assert (=> b!5216869 (= e!3247396 e!3247398)))

(assert (= (and d!1682006 (not res!2215400)) b!5216862))

(assert (= (and b!5216862 c!900019) b!5216866))

(assert (= (and b!5216862 (not c!900019)) b!5216864))

(assert (= (and b!5216866 res!2215396) b!5216868))

(assert (= (and b!5216864 c!900020) b!5216869))

(assert (= (and b!5216864 (not c!900020)) b!5216863))

(assert (= (and b!5216869 res!2215397) b!5216861))

(assert (= (and b!5216863 (not res!2215399)) b!5216867))

(assert (= (and b!5216867 res!2215398) b!5216865))

(assert (= (or b!5216861 b!5216865) bm!367842))

(assert (= (or b!5216869 b!5216867) bm!367843))

(assert (= (or b!5216868 bm!367842) bm!367844))

(declare-fun m!6265258 () Bool)

(assert (=> b!5216866 m!6265258))

(declare-fun m!6265260 () Bool)

(assert (=> bm!367843 m!6265260))

(declare-fun m!6265262 () Bool)

(assert (=> bm!367844 m!6265262))

(assert (=> bm!367742 d!1682006))

(declare-fun d!1682008 () Bool)

(assert (=> d!1682008 (= (nullable!4973 (reg!15133 r!7292)) (nullableFct!1382 (reg!15133 r!7292)))))

(declare-fun bs!1211699 () Bool)

(assert (= bs!1211699 d!1682008))

(declare-fun m!6265264 () Bool)

(assert (=> bs!1211699 m!6265264))

(assert (=> b!5216145 d!1682008))

(assert (=> b!5216280 d!1681842))

(declare-fun bs!1211700 () Bool)

(declare-fun d!1682010 () Bool)

(assert (= bs!1211700 (and d!1682010 d!1681822)))

(declare-fun lambda!261719 () Int)

(assert (=> bs!1211700 (= lambda!261719 lambda!261658)))

(declare-fun bs!1211701 () Bool)

(assert (= bs!1211701 (and d!1682010 d!1681846)))

(assert (=> bs!1211701 (= lambda!261719 lambda!261673)))

(declare-fun bs!1211702 () Bool)

(assert (= bs!1211702 (and d!1682010 d!1681848)))

(assert (=> bs!1211702 (= lambda!261719 lambda!261676)))

(declare-fun bs!1211703 () Bool)

(assert (= bs!1211703 (and d!1682010 d!1681792)))

(assert (=> bs!1211703 (= lambda!261719 lambda!261657)))

(declare-fun bs!1211704 () Bool)

(assert (= bs!1211704 (and d!1682010 d!1681842)))

(assert (=> bs!1211704 (= lambda!261719 lambda!261670)))

(declare-fun bs!1211705 () Bool)

(assert (= bs!1211705 (and d!1682010 d!1681956)))

(assert (=> bs!1211705 (= lambda!261719 lambda!261711)))

(declare-fun lt!2142927 () List!60712)

(assert (=> d!1682010 (forall!14238 lt!2142927 lambda!261719)))

(declare-fun e!3247402 () List!60712)

(assert (=> d!1682010 (= lt!2142927 e!3247402)))

(declare-fun c!900021 () Bool)

(assert (=> d!1682010 (= c!900021 (is-Cons!60589 (t!373880 zl!343)))))

(assert (=> d!1682010 (= (unfocusZipperList!246 (t!373880 zl!343)) lt!2142927)))

(declare-fun b!5216870 () Bool)

(assert (=> b!5216870 (= e!3247402 (Cons!60588 (generalisedConcat!473 (exprs!4688 (h!67037 (t!373880 zl!343)))) (unfocusZipperList!246 (t!373880 (t!373880 zl!343)))))))

(declare-fun b!5216871 () Bool)

(assert (=> b!5216871 (= e!3247402 Nil!60588)))

(assert (= (and d!1682010 c!900021) b!5216870))

(assert (= (and d!1682010 (not c!900021)) b!5216871))

(declare-fun m!6265266 () Bool)

(assert (=> d!1682010 m!6265266))

(declare-fun m!6265268 () Bool)

(assert (=> b!5216870 m!6265268))

(declare-fun m!6265270 () Bool)

(assert (=> b!5216870 m!6265270))

(assert (=> b!5216280 d!1682010))

(declare-fun d!1682012 () Bool)

(declare-fun res!2215401 () Bool)

(declare-fun e!3247403 () Bool)

(assert (=> d!1682012 (=> res!2215401 e!3247403)))

(assert (=> d!1682012 (= res!2215401 (is-Nil!60588 lt!2142877))))

(assert (=> d!1682012 (= (forall!14238 lt!2142877 lambda!261676) e!3247403)))

(declare-fun b!5216872 () Bool)

(declare-fun e!3247404 () Bool)

(assert (=> b!5216872 (= e!3247403 e!3247404)))

(declare-fun res!2215402 () Bool)

(assert (=> b!5216872 (=> (not res!2215402) (not e!3247404))))

(assert (=> b!5216872 (= res!2215402 (dynLambda!23940 lambda!261676 (h!67036 lt!2142877)))))

(declare-fun b!5216873 () Bool)

(assert (=> b!5216873 (= e!3247404 (forall!14238 (t!373879 lt!2142877) lambda!261676))))

(assert (= (and d!1682012 (not res!2215401)) b!5216872))

(assert (= (and b!5216872 res!2215402) b!5216873))

(declare-fun b_lambda!201745 () Bool)

(assert (=> (not b_lambda!201745) (not b!5216872)))

(declare-fun m!6265272 () Bool)

(assert (=> b!5216872 m!6265272))

(declare-fun m!6265274 () Bool)

(assert (=> b!5216873 m!6265274))

(assert (=> d!1681848 d!1682012))

(assert (=> b!5216023 d!1681962))

(assert (=> d!1681816 d!1681952))

(declare-fun d!1682014 () Bool)

(declare-fun c!900022 () Bool)

(assert (=> d!1682014 (= c!900022 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247405 () Bool)

(assert (=> d!1682014 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142744 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247405)))

(declare-fun b!5216874 () Bool)

(assert (=> b!5216874 (= e!3247405 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142744 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5216875 () Bool)

(assert (=> b!5216875 (= e!3247405 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142744 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682014 c!900022) b!5216874))

(assert (= (and d!1682014 (not c!900022)) b!5216875))

(assert (=> d!1682014 m!6264724))

(assert (=> d!1682014 m!6265200))

(assert (=> b!5216874 m!6264722))

(declare-fun m!6265276 () Bool)

(assert (=> b!5216874 m!6265276))

(assert (=> b!5216875 m!6264724))

(assert (=> b!5216875 m!6265204))

(assert (=> b!5216875 m!6264722))

(assert (=> b!5216875 m!6265204))

(declare-fun m!6265278 () Bool)

(assert (=> b!5216875 m!6265278))

(assert (=> b!5216875 m!6264724))

(assert (=> b!5216875 m!6265208))

(assert (=> b!5216875 m!6265278))

(assert (=> b!5216875 m!6265208))

(declare-fun m!6265280 () Bool)

(assert (=> b!5216875 m!6265280))

(assert (=> b!5216121 d!1682014))

(declare-fun bs!1211706 () Bool)

(declare-fun d!1682016 () Bool)

(assert (= bs!1211706 (and d!1682016 b!5215801)))

(declare-fun lambda!261720 () Int)

(assert (=> bs!1211706 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261720 lambda!261632))))

(declare-fun bs!1211707 () Bool)

(assert (= bs!1211707 (and d!1682016 d!1681786)))

(assert (=> bs!1211707 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261720 lambda!261654))))

(declare-fun bs!1211708 () Bool)

(assert (= bs!1211708 (and d!1682016 d!1681968)))

(assert (=> bs!1211708 (= lambda!261720 lambda!261712)))

(assert (=> d!1682016 true))

(assert (=> d!1682016 (= (derivationStepZipper!1074 lt!2142744 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142744 lambda!261720))))

(declare-fun bs!1211709 () Bool)

(assert (= bs!1211709 d!1682016))

(declare-fun m!6265282 () Bool)

(assert (=> bs!1211709 m!6265282))

(assert (=> b!5216121 d!1682016))

(assert (=> b!5216121 d!1681970))

(assert (=> b!5216121 d!1681972))

(assert (=> b!5216235 d!1681826))

(declare-fun bs!1211710 () Bool)

(declare-fun d!1682018 () Bool)

(assert (= bs!1211710 (and d!1682018 d!1681954)))

(declare-fun lambda!261721 () Int)

(assert (=> bs!1211710 (= lambda!261721 lambda!261710)))

(declare-fun bs!1211711 () Bool)

(assert (= bs!1211711 (and d!1682018 d!1681974)))

(assert (=> bs!1211711 (= lambda!261721 lambda!261713)))

(assert (=> d!1682018 (= (nullableZipper!1230 lt!2142752) (exists!1967 lt!2142752 lambda!261721))))

(declare-fun bs!1211712 () Bool)

(assert (= bs!1211712 d!1682018))

(declare-fun m!6265284 () Bool)

(assert (=> bs!1211712 m!6265284))

(assert (=> b!5216162 d!1682018))

(declare-fun d!1682020 () Bool)

(assert (=> d!1682020 (= (nullable!4973 (h!67036 (exprs!4688 lt!2142745))) (nullableFct!1382 (h!67036 (exprs!4688 lt!2142745))))))

(declare-fun bs!1211713 () Bool)

(assert (= bs!1211713 d!1682020))

(declare-fun m!6265286 () Bool)

(assert (=> bs!1211713 m!6265286))

(assert (=> b!5216079 d!1682020))

(declare-fun d!1682022 () Bool)

(assert (=> d!1682022 (= (isEmpty!32507 (tail!10276 s!2326)) (is-Nil!60587 (tail!10276 s!2326)))))

(assert (=> b!5216016 d!1682022))

(assert (=> b!5216016 d!1681964))

(declare-fun d!1682024 () Bool)

(assert (=> d!1682024 (= (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (nullableFct!1382 (h!67036 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun bs!1211714 () Bool)

(assert (= bs!1211714 d!1682024))

(declare-fun m!6265288 () Bool)

(assert (=> bs!1211714 m!6265288))

(assert (=> b!5216084 d!1682024))

(declare-fun d!1682026 () Bool)

(assert (=> d!1682026 (= (nullable!4973 (h!67036 (exprs!4688 lt!2142756))) (nullableFct!1382 (h!67036 (exprs!4688 lt!2142756))))))

(declare-fun bs!1211715 () Bool)

(assert (= bs!1211715 d!1682026))

(declare-fun m!6265290 () Bool)

(assert (=> bs!1211715 m!6265290))

(assert (=> b!5216089 d!1682026))

(declare-fun bm!367845 () Bool)

(declare-fun call!367850 () (Set Context!8376))

(assert (=> bm!367845 (= call!367850 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745)))))) (h!67035 s!2326)))))

(declare-fun b!5216876 () Bool)

(declare-fun e!3247406 () (Set Context!8376))

(assert (=> b!5216876 (= e!3247406 (set.union call!367850 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745)))))) (h!67035 s!2326))))))

(declare-fun b!5216877 () Bool)

(declare-fun e!3247408 () (Set Context!8376))

(assert (=> b!5216877 (= e!3247408 (as set.empty (Set Context!8376)))))

(declare-fun b!5216878 () Bool)

(assert (=> b!5216878 (= e!3247408 call!367850)))

(declare-fun b!5216879 () Bool)

(assert (=> b!5216879 (= e!3247406 e!3247408)))

(declare-fun c!900024 () Bool)

(assert (=> b!5216879 (= c!900024 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745))))))))

(declare-fun b!5216880 () Bool)

(declare-fun e!3247407 () Bool)

(assert (=> b!5216880 (= e!3247407 (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745)))))))))

(declare-fun d!1682028 () Bool)

(declare-fun c!900023 () Bool)

(assert (=> d!1682028 (= c!900023 e!3247407)))

(declare-fun res!2215403 () Bool)

(assert (=> d!1682028 (=> (not res!2215403) (not e!3247407))))

(assert (=> d!1682028 (= res!2215403 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142745))))))))

(assert (=> d!1682028 (= (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 lt!2142745))) (h!67035 s!2326)) e!3247406)))

(assert (= (and d!1682028 res!2215403) b!5216880))

(assert (= (and d!1682028 c!900023) b!5216876))

(assert (= (and d!1682028 (not c!900023)) b!5216879))

(assert (= (and b!5216879 c!900024) b!5216878))

(assert (= (and b!5216879 (not c!900024)) b!5216877))

(assert (= (or b!5216876 b!5216878) bm!367845))

(declare-fun m!6265292 () Bool)

(assert (=> bm!367845 m!6265292))

(declare-fun m!6265294 () Bool)

(assert (=> b!5216876 m!6265294))

(declare-fun m!6265296 () Bool)

(assert (=> b!5216880 m!6265296))

(assert (=> b!5216075 d!1682028))

(declare-fun bm!367846 () Bool)

(declare-fun call!367851 () (Set Context!8376))

(assert (=> bm!367846 (= call!367851 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))) (h!67035 s!2326)))))

(declare-fun b!5216881 () Bool)

(declare-fun e!3247409 () (Set Context!8376))

(assert (=> b!5216881 (= e!3247409 (set.union call!367851 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))) (h!67035 s!2326))))))

(declare-fun b!5216882 () Bool)

(declare-fun e!3247411 () (Set Context!8376))

(assert (=> b!5216882 (= e!3247411 (as set.empty (Set Context!8376)))))

(declare-fun b!5216883 () Bool)

(assert (=> b!5216883 (= e!3247411 call!367851)))

(declare-fun b!5216884 () Bool)

(assert (=> b!5216884 (= e!3247409 e!3247411)))

(declare-fun c!900026 () Bool)

(assert (=> b!5216884 (= c!900026 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))))

(declare-fun b!5216885 () Bool)

(declare-fun e!3247410 () Bool)

(assert (=> b!5216885 (= e!3247410 (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))))))))))

(declare-fun d!1682030 () Bool)

(declare-fun c!900025 () Bool)

(assert (=> d!1682030 (= c!900025 e!3247410)))

(declare-fun res!2215404 () Bool)

(assert (=> d!1682030 (=> (not res!2215404) (not e!3247410))))

(assert (=> d!1682030 (= res!2215404 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))))))))

(assert (=> d!1682030 (= (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (Cons!60588 (h!67036 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326)) e!3247409)))

(assert (= (and d!1682030 res!2215404) b!5216885))

(assert (= (and d!1682030 c!900025) b!5216881))

(assert (= (and d!1682030 (not c!900025)) b!5216884))

(assert (= (and b!5216884 c!900026) b!5216883))

(assert (= (and b!5216884 (not c!900026)) b!5216882))

(assert (= (or b!5216881 b!5216883) bm!367846))

(declare-fun m!6265298 () Bool)

(assert (=> bm!367846 m!6265298))

(declare-fun m!6265300 () Bool)

(assert (=> b!5216881 m!6265300))

(declare-fun m!6265302 () Bool)

(assert (=> b!5216885 m!6265302))

(assert (=> b!5216080 d!1682030))

(declare-fun bm!367847 () Bool)

(declare-fun call!367852 () (Set Context!8376))

(assert (=> bm!367847 (= call!367852 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756)))))) (h!67035 s!2326)))))

(declare-fun b!5216886 () Bool)

(declare-fun e!3247412 () (Set Context!8376))

(assert (=> b!5216886 (= e!3247412 (set.union call!367852 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756)))))) (h!67035 s!2326))))))

(declare-fun b!5216887 () Bool)

(declare-fun e!3247414 () (Set Context!8376))

(assert (=> b!5216887 (= e!3247414 (as set.empty (Set Context!8376)))))

(declare-fun b!5216888 () Bool)

(assert (=> b!5216888 (= e!3247414 call!367852)))

(declare-fun b!5216889 () Bool)

(assert (=> b!5216889 (= e!3247412 e!3247414)))

(declare-fun c!900028 () Bool)

(assert (=> b!5216889 (= c!900028 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756))))))))

(declare-fun b!5216890 () Bool)

(declare-fun e!3247413 () Bool)

(assert (=> b!5216890 (= e!3247413 (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756)))))))))

(declare-fun d!1682032 () Bool)

(declare-fun c!900027 () Bool)

(assert (=> d!1682032 (= c!900027 e!3247413)))

(declare-fun res!2215405 () Bool)

(assert (=> d!1682032 (=> (not res!2215405) (not e!3247413))))

(assert (=> d!1682032 (= res!2215405 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 lt!2142756))))))))

(assert (=> d!1682032 (= (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 lt!2142756))) (h!67035 s!2326)) e!3247412)))

(assert (= (and d!1682032 res!2215405) b!5216890))

(assert (= (and d!1682032 c!900027) b!5216886))

(assert (= (and d!1682032 (not c!900027)) b!5216889))

(assert (= (and b!5216889 c!900028) b!5216888))

(assert (= (and b!5216889 (not c!900028)) b!5216887))

(assert (= (or b!5216886 b!5216888) bm!367847))

(declare-fun m!6265304 () Bool)

(assert (=> bm!367847 m!6265304))

(declare-fun m!6265306 () Bool)

(assert (=> b!5216886 m!6265306))

(declare-fun m!6265308 () Bool)

(assert (=> b!5216890 m!6265308))

(assert (=> b!5216085 d!1682032))

(declare-fun d!1682034 () Bool)

(assert (=> d!1682034 (= (isEmptyExpr!766 lt!2142871) (is-EmptyExpr!14804 lt!2142871))))

(assert (=> b!5216239 d!1682034))

(declare-fun d!1682036 () Bool)

(declare-fun c!900029 () Bool)

(assert (=> d!1682036 (= c!900029 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247415 () Bool)

(assert (=> d!1682036 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142762 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247415)))

(declare-fun b!5216891 () Bool)

(assert (=> b!5216891 (= e!3247415 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142762 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5216892 () Bool)

(assert (=> b!5216892 (= e!3247415 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142762 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682036 c!900029) b!5216891))

(assert (= (and d!1682036 (not c!900029)) b!5216892))

(assert (=> d!1682036 m!6264724))

(assert (=> d!1682036 m!6265200))

(assert (=> b!5216891 m!6264764))

(declare-fun m!6265310 () Bool)

(assert (=> b!5216891 m!6265310))

(assert (=> b!5216892 m!6264724))

(assert (=> b!5216892 m!6265204))

(assert (=> b!5216892 m!6264764))

(assert (=> b!5216892 m!6265204))

(declare-fun m!6265312 () Bool)

(assert (=> b!5216892 m!6265312))

(assert (=> b!5216892 m!6264724))

(assert (=> b!5216892 m!6265208))

(assert (=> b!5216892 m!6265312))

(assert (=> b!5216892 m!6265208))

(declare-fun m!6265314 () Bool)

(assert (=> b!5216892 m!6265314))

(assert (=> b!5216168 d!1682036))

(declare-fun bs!1211716 () Bool)

(declare-fun d!1682038 () Bool)

(assert (= bs!1211716 (and d!1682038 b!5215801)))

(declare-fun lambda!261722 () Int)

(assert (=> bs!1211716 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261722 lambda!261632))))

(declare-fun bs!1211717 () Bool)

(assert (= bs!1211717 (and d!1682038 d!1681786)))

(assert (=> bs!1211717 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261722 lambda!261654))))

(declare-fun bs!1211718 () Bool)

(assert (= bs!1211718 (and d!1682038 d!1681968)))

(assert (=> bs!1211718 (= lambda!261722 lambda!261712)))

(declare-fun bs!1211719 () Bool)

(assert (= bs!1211719 (and d!1682038 d!1682016)))

(assert (=> bs!1211719 (= lambda!261722 lambda!261720)))

(assert (=> d!1682038 true))

(assert (=> d!1682038 (= (derivationStepZipper!1074 lt!2142762 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142762 lambda!261722))))

(declare-fun bs!1211720 () Bool)

(assert (= bs!1211720 d!1682038))

(declare-fun m!6265316 () Bool)

(assert (=> bs!1211720 m!6265316))

(assert (=> b!5216168 d!1682038))

(assert (=> b!5216168 d!1681970))

(assert (=> b!5216168 d!1681972))

(declare-fun d!1682040 () Bool)

(assert (=> d!1682040 (= (isEmpty!32504 (unfocusZipperList!246 zl!343)) (is-Nil!60588 (unfocusZipperList!246 zl!343)))))

(assert (=> b!5216269 d!1682040))

(assert (=> b!5216020 d!1682022))

(assert (=> b!5216020 d!1681964))

(declare-fun bm!367848 () Bool)

(declare-fun call!367854 () (Set Context!8376))

(declare-fun call!367855 () (Set Context!8376))

(assert (=> bm!367848 (= call!367854 call!367855)))

(declare-fun call!367857 () List!60712)

(declare-fun c!900033 () Bool)

(declare-fun bm!367849 () Bool)

(declare-fun c!900032 () Bool)

(assert (=> bm!367849 (= call!367857 ($colon$colon!1280 (exprs!4688 (ite c!899805 lt!2142745 (Context!8377 call!367737))) (ite (or c!900033 c!900032) (regTwo!30120 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5216893 () Bool)

(declare-fun e!3247421 () (Set Context!8376))

(declare-fun e!3247420 () (Set Context!8376))

(assert (=> b!5216893 (= e!3247421 e!3247420)))

(assert (=> b!5216893 (= c!900032 (is-Concat!23649 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun c!900031 () Bool)

(declare-fun bm!367850 () Bool)

(declare-fun call!367858 () (Set Context!8376))

(assert (=> bm!367850 (= call!367858 (derivationStepZipperDown!252 (ite c!900031 (regOne!30121 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (regOne!30120 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))) (ite c!900031 (ite c!899805 lt!2142745 (Context!8377 call!367737)) (Context!8377 call!367857)) (h!67035 s!2326)))))

(declare-fun b!5216894 () Bool)

(declare-fun e!3247419 () Bool)

(assert (=> b!5216894 (= e!3247419 (nullable!4973 (regOne!30120 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5216895 () Bool)

(declare-fun e!3247416 () (Set Context!8376))

(assert (=> b!5216895 (= e!3247416 (as set.empty (Set Context!8376)))))

(declare-fun b!5216896 () Bool)

(declare-fun call!367856 () (Set Context!8376))

(assert (=> b!5216896 (= e!3247416 call!367856)))

(declare-fun b!5216897 () Bool)

(declare-fun e!3247417 () (Set Context!8376))

(declare-fun e!3247418 () (Set Context!8376))

(assert (=> b!5216897 (= e!3247417 e!3247418)))

(assert (=> b!5216897 (= c!900031 (is-Union!14804 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5216898 () Bool)

(assert (=> b!5216898 (= c!900033 e!3247419)))

(declare-fun res!2215406 () Bool)

(assert (=> b!5216898 (=> (not res!2215406) (not e!3247419))))

(assert (=> b!5216898 (= res!2215406 (is-Concat!23649 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(assert (=> b!5216898 (= e!3247418 e!3247421)))

(declare-fun bm!367851 () Bool)

(declare-fun call!367853 () List!60712)

(assert (=> bm!367851 (= call!367853 call!367857)))

(declare-fun b!5216899 () Bool)

(declare-fun c!900034 () Bool)

(assert (=> b!5216899 (= c!900034 (is-Star!14804 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(assert (=> b!5216899 (= e!3247420 e!3247416)))

(declare-fun b!5216900 () Bool)

(assert (=> b!5216900 (= e!3247421 (set.union call!367858 call!367854))))

(declare-fun c!900030 () Bool)

(declare-fun d!1682042 () Bool)

(assert (=> d!1682042 (= c!900030 (and (is-ElementMatch!14804 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (= (c!899739 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (h!67035 s!2326))))))

(assert (=> d!1682042 (= (derivationStepZipperDown!252 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))) (ite c!899805 lt!2142745 (Context!8377 call!367737)) (h!67035 s!2326)) e!3247417)))

(declare-fun bm!367852 () Bool)

(assert (=> bm!367852 (= call!367856 call!367854)))

(declare-fun bm!367853 () Bool)

(assert (=> bm!367853 (= call!367855 (derivationStepZipperDown!252 (ite c!900031 (regTwo!30121 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (ite c!900033 (regTwo!30120 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (ite c!900032 (regOne!30120 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))) (reg!15133 (ite c!899805 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))) (ite (or c!900031 c!900033) (ite c!899805 lt!2142745 (Context!8377 call!367737)) (Context!8377 call!367853)) (h!67035 s!2326)))))

(declare-fun b!5216901 () Bool)

(assert (=> b!5216901 (= e!3247420 call!367856)))

(declare-fun b!5216902 () Bool)

(assert (=> b!5216902 (= e!3247417 (set.insert (ite c!899805 lt!2142745 (Context!8377 call!367737)) (as set.empty (Set Context!8376))))))

(declare-fun b!5216903 () Bool)

(assert (=> b!5216903 (= e!3247418 (set.union call!367858 call!367855))))

(assert (= (and d!1682042 c!900030) b!5216902))

(assert (= (and d!1682042 (not c!900030)) b!5216897))

(assert (= (and b!5216897 c!900031) b!5216903))

(assert (= (and b!5216897 (not c!900031)) b!5216898))

(assert (= (and b!5216898 res!2215406) b!5216894))

(assert (= (and b!5216898 c!900033) b!5216900))

(assert (= (and b!5216898 (not c!900033)) b!5216893))

(assert (= (and b!5216893 c!900032) b!5216901))

(assert (= (and b!5216893 (not c!900032)) b!5216899))

(assert (= (and b!5216899 c!900034) b!5216896))

(assert (= (and b!5216899 (not c!900034)) b!5216895))

(assert (= (or b!5216901 b!5216896) bm!367851))

(assert (= (or b!5216901 b!5216896) bm!367852))

(assert (= (or b!5216900 bm!367851) bm!367849))

(assert (= (or b!5216900 bm!367852) bm!367848))

(assert (= (or b!5216903 bm!367848) bm!367853))

(assert (= (or b!5216903 b!5216900) bm!367850))

(declare-fun m!6265318 () Bool)

(assert (=> b!5216902 m!6265318))

(declare-fun m!6265320 () Bool)

(assert (=> bm!367849 m!6265320))

(declare-fun m!6265322 () Bool)

(assert (=> bm!367850 m!6265322))

(declare-fun m!6265324 () Bool)

(assert (=> b!5216894 m!6265324))

(declare-fun m!6265326 () Bool)

(assert (=> bm!367853 m!6265326))

(assert (=> bm!367730 d!1682042))

(assert (=> d!1681818 d!1681820))

(assert (=> d!1681818 d!1681806))

(declare-fun d!1682044 () Bool)

(declare-fun e!3247424 () Bool)

(assert (=> d!1682044 (= (matchZipper!1048 (set.union lt!2142760 lt!2142746) (t!373878 s!2326)) e!3247424)))

(declare-fun res!2215409 () Bool)

(assert (=> d!1682044 (=> res!2215409 e!3247424)))

(assert (=> d!1682044 (= res!2215409 (matchZipper!1048 lt!2142760 (t!373878 s!2326)))))

(assert (=> d!1682044 true))

(declare-fun _$48!815 () Unit!152482)

(assert (=> d!1682044 (= (choose!38780 lt!2142760 lt!2142746 (t!373878 s!2326)) _$48!815)))

(declare-fun b!5216906 () Bool)

(assert (=> b!5216906 (= e!3247424 (matchZipper!1048 lt!2142746 (t!373878 s!2326)))))

(assert (= (and d!1682044 (not res!2215409)) b!5216906))

(assert (=> d!1682044 m!6264500))

(assert (=> d!1682044 m!6264490))

(assert (=> b!5216906 m!6264514))

(assert (=> d!1681818 d!1682044))

(declare-fun bm!367854 () Bool)

(declare-fun call!367860 () (Set Context!8376))

(declare-fun call!367861 () (Set Context!8376))

(assert (=> bm!367854 (= call!367860 call!367861)))

(declare-fun call!367863 () List!60712)

(declare-fun c!900037 () Bool)

(declare-fun c!900038 () Bool)

(declare-fun bm!367855 () Bool)

(assert (=> bm!367855 (= call!367863 ($colon$colon!1280 (exprs!4688 (ite c!899787 lt!2142745 (Context!8377 call!367722))) (ite (or c!900038 c!900037) (regTwo!30120 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))))

(declare-fun b!5216907 () Bool)

(declare-fun e!3247430 () (Set Context!8376))

(declare-fun e!3247429 () (Set Context!8376))

(assert (=> b!5216907 (= e!3247430 e!3247429)))

(assert (=> b!5216907 (= c!900037 (is-Concat!23649 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun bm!367856 () Bool)

(declare-fun call!367864 () (Set Context!8376))

(declare-fun c!900036 () Bool)

(assert (=> bm!367856 (= call!367864 (derivationStepZipperDown!252 (ite c!900036 (regOne!30121 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (regOne!30120 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))) (ite c!900036 (ite c!899787 lt!2142745 (Context!8377 call!367722)) (Context!8377 call!367863)) (h!67035 s!2326)))))

(declare-fun b!5216908 () Bool)

(declare-fun e!3247428 () Bool)

(assert (=> b!5216908 (= e!3247428 (nullable!4973 (regOne!30120 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))))

(declare-fun b!5216909 () Bool)

(declare-fun e!3247425 () (Set Context!8376))

(assert (=> b!5216909 (= e!3247425 (as set.empty (Set Context!8376)))))

(declare-fun b!5216910 () Bool)

(declare-fun call!367862 () (Set Context!8376))

(assert (=> b!5216910 (= e!3247425 call!367862)))

(declare-fun b!5216911 () Bool)

(declare-fun e!3247426 () (Set Context!8376))

(declare-fun e!3247427 () (Set Context!8376))

(assert (=> b!5216911 (= e!3247426 e!3247427)))

(assert (=> b!5216911 (= c!900036 (is-Union!14804 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun b!5216912 () Bool)

(assert (=> b!5216912 (= c!900038 e!3247428)))

(declare-fun res!2215410 () Bool)

(assert (=> b!5216912 (=> (not res!2215410) (not e!3247428))))

(assert (=> b!5216912 (= res!2215410 (is-Concat!23649 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(assert (=> b!5216912 (= e!3247427 e!3247430)))

(declare-fun bm!367857 () Bool)

(declare-fun call!367859 () List!60712)

(assert (=> bm!367857 (= call!367859 call!367863)))

(declare-fun b!5216913 () Bool)

(declare-fun c!900039 () Bool)

(assert (=> b!5216913 (= c!900039 (is-Star!14804 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(assert (=> b!5216913 (= e!3247429 e!3247425)))

(declare-fun b!5216914 () Bool)

(assert (=> b!5216914 (= e!3247430 (set.union call!367864 call!367860))))

(declare-fun c!900035 () Bool)

(declare-fun d!1682046 () Bool)

(assert (=> d!1682046 (= c!900035 (and (is-ElementMatch!14804 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (= (c!899739 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (h!67035 s!2326))))))

(assert (=> d!1682046 (= (derivationStepZipperDown!252 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))) (ite c!899787 lt!2142745 (Context!8377 call!367722)) (h!67035 s!2326)) e!3247426)))

(declare-fun bm!367858 () Bool)

(assert (=> bm!367858 (= call!367862 call!367860)))

(declare-fun bm!367859 () Bool)

(assert (=> bm!367859 (= call!367861 (derivationStepZipperDown!252 (ite c!900036 (regTwo!30121 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (ite c!900038 (regTwo!30120 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (ite c!900037 (regOne!30120 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))) (reg!15133 (ite c!899787 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))) (ite (or c!900036 c!900038) (ite c!899787 lt!2142745 (Context!8377 call!367722)) (Context!8377 call!367859)) (h!67035 s!2326)))))

(declare-fun b!5216915 () Bool)

(assert (=> b!5216915 (= e!3247429 call!367862)))

(declare-fun b!5216916 () Bool)

(assert (=> b!5216916 (= e!3247426 (set.insert (ite c!899787 lt!2142745 (Context!8377 call!367722)) (as set.empty (Set Context!8376))))))

(declare-fun b!5216917 () Bool)

(assert (=> b!5216917 (= e!3247427 (set.union call!367864 call!367861))))

(assert (= (and d!1682046 c!900035) b!5216916))

(assert (= (and d!1682046 (not c!900035)) b!5216911))

(assert (= (and b!5216911 c!900036) b!5216917))

(assert (= (and b!5216911 (not c!900036)) b!5216912))

(assert (= (and b!5216912 res!2215410) b!5216908))

(assert (= (and b!5216912 c!900038) b!5216914))

(assert (= (and b!5216912 (not c!900038)) b!5216907))

(assert (= (and b!5216907 c!900037) b!5216915))

(assert (= (and b!5216907 (not c!900037)) b!5216913))

(assert (= (and b!5216913 c!900039) b!5216910))

(assert (= (and b!5216913 (not c!900039)) b!5216909))

(assert (= (or b!5216915 b!5216910) bm!367857))

(assert (= (or b!5216915 b!5216910) bm!367858))

(assert (= (or b!5216914 bm!367857) bm!367855))

(assert (= (or b!5216914 bm!367858) bm!367854))

(assert (= (or b!5216917 bm!367854) bm!367859))

(assert (= (or b!5216917 b!5216914) bm!367856))

(declare-fun m!6265328 () Bool)

(assert (=> b!5216916 m!6265328))

(declare-fun m!6265330 () Bool)

(assert (=> bm!367855 m!6265330))

(declare-fun m!6265332 () Bool)

(assert (=> bm!367856 m!6265332))

(declare-fun m!6265334 () Bool)

(assert (=> b!5216908 m!6265334))

(declare-fun m!6265336 () Bool)

(assert (=> bm!367859 m!6265336))

(assert (=> bm!367715 d!1682046))

(declare-fun d!1682048 () Bool)

(assert (=> d!1682048 (= (isUnion!207 lt!2142874) (is-Union!14804 lt!2142874))))

(assert (=> b!5216273 d!1682048))

(declare-fun bs!1211721 () Bool)

(declare-fun d!1682050 () Bool)

(assert (= bs!1211721 (and d!1682050 d!1681954)))

(declare-fun lambda!261723 () Int)

(assert (=> bs!1211721 (= lambda!261723 lambda!261710)))

(declare-fun bs!1211722 () Bool)

(assert (= bs!1211722 (and d!1682050 d!1681974)))

(assert (=> bs!1211722 (= lambda!261723 lambda!261713)))

(declare-fun bs!1211723 () Bool)

(assert (= bs!1211723 (and d!1682050 d!1682018)))

(assert (=> bs!1211723 (= lambda!261723 lambda!261721)))

(assert (=> d!1682050 (= (nullableZipper!1230 lt!2142751) (exists!1967 lt!2142751 lambda!261723))))

(declare-fun bs!1211724 () Bool)

(assert (= bs!1211724 d!1682050))

(declare-fun m!6265338 () Bool)

(assert (=> bs!1211724 m!6265338))

(assert (=> b!5216118 d!1682050))

(declare-fun d!1682052 () Bool)

(assert (=> d!1682052 (= (isEmpty!32508 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326)) (not (is-Some!14914 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) Nil!60587 s!2326 s!2326))))))

(assert (=> d!1681840 d!1682052))

(declare-fun b!5216927 () Bool)

(declare-fun e!3247435 () List!60711)

(assert (=> b!5216927 (= e!3247435 (Cons!60587 (h!67035 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))) (++!13210 (t!373878 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))) (t!373878 s!2326))))))

(declare-fun d!1682054 () Bool)

(declare-fun e!3247436 () Bool)

(assert (=> d!1682054 e!3247436))

(declare-fun res!2215416 () Bool)

(assert (=> d!1682054 (=> (not res!2215416) (not e!3247436))))

(declare-fun lt!2142930 () List!60711)

(declare-fun content!10740 (List!60711) (Set C!29878))

(assert (=> d!1682054 (= res!2215416 (= (content!10740 lt!2142930) (set.union (content!10740 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))) (content!10740 (t!373878 s!2326)))))))

(assert (=> d!1682054 (= lt!2142930 e!3247435)))

(declare-fun c!900042 () Bool)

(assert (=> d!1682054 (= c!900042 (is-Nil!60587 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))))))

(assert (=> d!1682054 (= (++!13210 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326)) lt!2142930)))

(declare-fun b!5216929 () Bool)

(assert (=> b!5216929 (= e!3247436 (or (not (= (t!373878 s!2326) Nil!60587)) (= lt!2142930 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)))))))

(declare-fun b!5216928 () Bool)

(declare-fun res!2215415 () Bool)

(assert (=> b!5216928 (=> (not res!2215415) (not e!3247436))))

(declare-fun size!39722 (List!60711) Int)

(assert (=> b!5216928 (= res!2215415 (= (size!39722 lt!2142930) (+ (size!39722 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))) (size!39722 (t!373878 s!2326)))))))

(declare-fun b!5216926 () Bool)

(assert (=> b!5216926 (= e!3247435 (t!373878 s!2326))))

(assert (= (and d!1682054 c!900042) b!5216926))

(assert (= (and d!1682054 (not c!900042)) b!5216927))

(assert (= (and d!1682054 res!2215416) b!5216928))

(assert (= (and b!5216928 res!2215415) b!5216929))

(declare-fun m!6265340 () Bool)

(assert (=> b!5216927 m!6265340))

(declare-fun m!6265342 () Bool)

(assert (=> d!1682054 m!6265342))

(assert (=> d!1682054 m!6264800))

(declare-fun m!6265344 () Bool)

(assert (=> d!1682054 m!6265344))

(declare-fun m!6265346 () Bool)

(assert (=> d!1682054 m!6265346))

(declare-fun m!6265348 () Bool)

(assert (=> b!5216928 m!6265348))

(assert (=> b!5216928 m!6264800))

(declare-fun m!6265350 () Bool)

(assert (=> b!5216928 m!6265350))

(declare-fun m!6265352 () Bool)

(assert (=> b!5216928 m!6265352))

(assert (=> b!5216195 d!1682054))

(declare-fun b!5216931 () Bool)

(declare-fun e!3247437 () List!60711)

(assert (=> b!5216931 (= e!3247437 (Cons!60587 (h!67035 Nil!60587) (++!13210 (t!373878 Nil!60587) (Cons!60587 (h!67035 s!2326) Nil!60587))))))

(declare-fun d!1682056 () Bool)

(declare-fun e!3247438 () Bool)

(assert (=> d!1682056 e!3247438))

(declare-fun res!2215418 () Bool)

(assert (=> d!1682056 (=> (not res!2215418) (not e!3247438))))

(declare-fun lt!2142931 () List!60711)

(assert (=> d!1682056 (= res!2215418 (= (content!10740 lt!2142931) (set.union (content!10740 Nil!60587) (content!10740 (Cons!60587 (h!67035 s!2326) Nil!60587)))))))

(assert (=> d!1682056 (= lt!2142931 e!3247437)))

(declare-fun c!900043 () Bool)

(assert (=> d!1682056 (= c!900043 (is-Nil!60587 Nil!60587))))

(assert (=> d!1682056 (= (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) lt!2142931)))

(declare-fun b!5216933 () Bool)

(assert (=> b!5216933 (= e!3247438 (or (not (= (Cons!60587 (h!67035 s!2326) Nil!60587) Nil!60587)) (= lt!2142931 Nil!60587)))))

(declare-fun b!5216932 () Bool)

(declare-fun res!2215417 () Bool)

(assert (=> b!5216932 (=> (not res!2215417) (not e!3247438))))

(assert (=> b!5216932 (= res!2215417 (= (size!39722 lt!2142931) (+ (size!39722 Nil!60587) (size!39722 (Cons!60587 (h!67035 s!2326) Nil!60587)))))))

(declare-fun b!5216930 () Bool)

(assert (=> b!5216930 (= e!3247437 (Cons!60587 (h!67035 s!2326) Nil!60587))))

(assert (= (and d!1682056 c!900043) b!5216930))

(assert (= (and d!1682056 (not c!900043)) b!5216931))

(assert (= (and d!1682056 res!2215418) b!5216932))

(assert (= (and b!5216932 res!2215417) b!5216933))

(declare-fun m!6265354 () Bool)

(assert (=> b!5216931 m!6265354))

(declare-fun m!6265356 () Bool)

(assert (=> d!1682056 m!6265356))

(declare-fun m!6265358 () Bool)

(assert (=> d!1682056 m!6265358))

(declare-fun m!6265360 () Bool)

(assert (=> d!1682056 m!6265360))

(declare-fun m!6265362 () Bool)

(assert (=> b!5216932 m!6265362))

(declare-fun m!6265364 () Bool)

(assert (=> b!5216932 m!6265364))

(declare-fun m!6265366 () Bool)

(assert (=> b!5216932 m!6265366))

(assert (=> b!5216195 d!1682056))

(declare-fun d!1682058 () Bool)

(assert (=> d!1682058 (= (++!13210 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326)) s!2326)))

(declare-fun lt!2142934 () Unit!152482)

(declare-fun choose!38793 (List!60711 C!29878 List!60711 List!60711) Unit!152482)

(assert (=> d!1682058 (= lt!2142934 (choose!38793 Nil!60587 (h!67035 s!2326) (t!373878 s!2326) s!2326))))

(assert (=> d!1682058 (= (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) (t!373878 s!2326))) s!2326)))

(assert (=> d!1682058 (= (lemmaMoveElementToOtherListKeepsConcatEq!1625 Nil!60587 (h!67035 s!2326) (t!373878 s!2326) s!2326) lt!2142934)))

(declare-fun bs!1211725 () Bool)

(assert (= bs!1211725 d!1682058))

(assert (=> bs!1211725 m!6264800))

(assert (=> bs!1211725 m!6264800))

(assert (=> bs!1211725 m!6264802))

(declare-fun m!6265368 () Bool)

(assert (=> bs!1211725 m!6265368))

(declare-fun m!6265370 () Bool)

(assert (=> bs!1211725 m!6265370))

(assert (=> b!5216195 d!1682058))

(declare-fun b!5216934 () Bool)

(declare-fun e!3247441 () Bool)

(declare-fun lt!2142936 () Option!14915)

(assert (=> b!5216934 (= e!3247441 (= (++!13210 (_1!35306 (get!20818 lt!2142936)) (_2!35306 (get!20818 lt!2142936))) s!2326))))

(declare-fun b!5216935 () Bool)

(declare-fun e!3247439 () Bool)

(assert (=> b!5216935 (= e!3247439 (not (isDefined!11618 lt!2142936)))))

(declare-fun b!5216937 () Bool)

(declare-fun e!3247440 () Option!14915)

(assert (=> b!5216937 (= e!3247440 None!14914)))

(declare-fun b!5216938 () Bool)

(declare-fun res!2215423 () Bool)

(assert (=> b!5216938 (=> (not res!2215423) (not e!3247441))))

(assert (=> b!5216938 (= res!2215423 (matchR!6989 (regOne!30120 r!7292) (_1!35306 (get!20818 lt!2142936))))))

(declare-fun b!5216939 () Bool)

(declare-fun e!3247442 () Option!14915)

(assert (=> b!5216939 (= e!3247442 e!3247440)))

(declare-fun c!900045 () Bool)

(assert (=> b!5216939 (= c!900045 (is-Nil!60587 (t!373878 s!2326)))))

(declare-fun b!5216940 () Bool)

(declare-fun res!2215420 () Bool)

(assert (=> b!5216940 (=> (not res!2215420) (not e!3247441))))

(assert (=> b!5216940 (= res!2215420 (matchR!6989 (regTwo!30120 r!7292) (_2!35306 (get!20818 lt!2142936))))))

(declare-fun b!5216941 () Bool)

(declare-fun e!3247443 () Bool)

(assert (=> b!5216941 (= e!3247443 (matchR!6989 (regTwo!30120 r!7292) (t!373878 s!2326)))))

(declare-fun b!5216942 () Bool)

(assert (=> b!5216942 (= e!3247442 (Some!14914 (tuple2!64007 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326))))))

(declare-fun b!5216936 () Bool)

(declare-fun lt!2142935 () Unit!152482)

(declare-fun lt!2142937 () Unit!152482)

(assert (=> b!5216936 (= lt!2142935 lt!2142937)))

(assert (=> b!5216936 (= (++!13210 (++!13210 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (Cons!60587 (h!67035 (t!373878 s!2326)) Nil!60587)) (t!373878 (t!373878 s!2326))) s!2326)))

(assert (=> b!5216936 (= lt!2142937 (lemmaMoveElementToOtherListKeepsConcatEq!1625 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (h!67035 (t!373878 s!2326)) (t!373878 (t!373878 s!2326)) s!2326))))

(assert (=> b!5216936 (= e!3247440 (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) (++!13210 (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (Cons!60587 (h!67035 (t!373878 s!2326)) Nil!60587)) (t!373878 (t!373878 s!2326)) s!2326))))

(declare-fun d!1682060 () Bool)

(assert (=> d!1682060 e!3247439))

(declare-fun res!2215421 () Bool)

(assert (=> d!1682060 (=> res!2215421 e!3247439)))

(assert (=> d!1682060 (= res!2215421 e!3247441)))

(declare-fun res!2215419 () Bool)

(assert (=> d!1682060 (=> (not res!2215419) (not e!3247441))))

(assert (=> d!1682060 (= res!2215419 (isDefined!11618 lt!2142936))))

(assert (=> d!1682060 (= lt!2142936 e!3247442)))

(declare-fun c!900044 () Bool)

(assert (=> d!1682060 (= c!900044 e!3247443)))

(declare-fun res!2215422 () Bool)

(assert (=> d!1682060 (=> (not res!2215422) (not e!3247443))))

(assert (=> d!1682060 (= res!2215422 (matchR!6989 (regOne!30120 r!7292) (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587))))))

(assert (=> d!1682060 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1682060 (= (findConcatSeparation!1329 (regOne!30120 r!7292) (regTwo!30120 r!7292) (++!13210 Nil!60587 (Cons!60587 (h!67035 s!2326) Nil!60587)) (t!373878 s!2326) s!2326) lt!2142936)))

(assert (= (and d!1682060 res!2215422) b!5216941))

(assert (= (and d!1682060 c!900044) b!5216942))

(assert (= (and d!1682060 (not c!900044)) b!5216939))

(assert (= (and b!5216939 c!900045) b!5216937))

(assert (= (and b!5216939 (not c!900045)) b!5216936))

(assert (= (and d!1682060 res!2215419) b!5216938))

(assert (= (and b!5216938 res!2215423) b!5216940))

(assert (= (and b!5216940 res!2215420) b!5216934))

(assert (= (and d!1682060 (not res!2215421)) b!5216935))

(declare-fun m!6265372 () Bool)

(assert (=> b!5216940 m!6265372))

(declare-fun m!6265374 () Bool)

(assert (=> b!5216940 m!6265374))

(assert (=> b!5216934 m!6265372))

(declare-fun m!6265376 () Bool)

(assert (=> b!5216934 m!6265376))

(declare-fun m!6265378 () Bool)

(assert (=> d!1682060 m!6265378))

(assert (=> d!1682060 m!6264800))

(declare-fun m!6265380 () Bool)

(assert (=> d!1682060 m!6265380))

(assert (=> d!1682060 m!6264796))

(assert (=> b!5216935 m!6265378))

(assert (=> b!5216938 m!6265372))

(declare-fun m!6265382 () Bool)

(assert (=> b!5216938 m!6265382))

(assert (=> b!5216936 m!6264800))

(declare-fun m!6265384 () Bool)

(assert (=> b!5216936 m!6265384))

(assert (=> b!5216936 m!6265384))

(declare-fun m!6265386 () Bool)

(assert (=> b!5216936 m!6265386))

(assert (=> b!5216936 m!6264800))

(declare-fun m!6265388 () Bool)

(assert (=> b!5216936 m!6265388))

(assert (=> b!5216936 m!6265384))

(declare-fun m!6265390 () Bool)

(assert (=> b!5216936 m!6265390))

(declare-fun m!6265392 () Bool)

(assert (=> b!5216941 m!6265392))

(assert (=> b!5216195 d!1682060))

(declare-fun d!1682062 () Bool)

(assert (=> d!1682062 (= (isEmpty!32507 s!2326) (is-Nil!60587 s!2326))))

(assert (=> bm!367693 d!1682062))

(assert (=> b!5216169 d!1681844))

(declare-fun bm!367860 () Bool)

(declare-fun call!367867 () Bool)

(declare-fun call!367865 () Bool)

(assert (=> bm!367860 (= call!367867 call!367865)))

(declare-fun b!5216943 () Bool)

(declare-fun e!3247447 () Bool)

(assert (=> b!5216943 (= e!3247447 call!367867)))

(declare-fun b!5216944 () Bool)

(declare-fun e!3247449 () Bool)

(declare-fun e!3247444 () Bool)

(assert (=> b!5216944 (= e!3247449 e!3247444)))

(declare-fun c!900046 () Bool)

(assert (=> b!5216944 (= c!900046 (is-Star!14804 lt!2142871))))

(declare-fun b!5216945 () Bool)

(declare-fun res!2215427 () Bool)

(declare-fun e!3247448 () Bool)

(assert (=> b!5216945 (=> res!2215427 e!3247448)))

(assert (=> b!5216945 (= res!2215427 (not (is-Concat!23649 lt!2142871)))))

(declare-fun e!3247445 () Bool)

(assert (=> b!5216945 (= e!3247445 e!3247448)))

(declare-fun b!5216946 () Bool)

(assert (=> b!5216946 (= e!3247444 e!3247445)))

(declare-fun c!900047 () Bool)

(assert (=> b!5216946 (= c!900047 (is-Union!14804 lt!2142871))))

(declare-fun b!5216947 () Bool)

(declare-fun e!3247450 () Bool)

(assert (=> b!5216947 (= e!3247450 call!367867)))

(declare-fun b!5216948 () Bool)

(declare-fun e!3247446 () Bool)

(assert (=> b!5216948 (= e!3247444 e!3247446)))

(declare-fun res!2215424 () Bool)

(assert (=> b!5216948 (= res!2215424 (not (nullable!4973 (reg!15133 lt!2142871))))))

(assert (=> b!5216948 (=> (not res!2215424) (not e!3247446))))

(declare-fun bm!367861 () Bool)

(declare-fun call!367866 () Bool)

(assert (=> bm!367861 (= call!367866 (validRegex!6540 (ite c!900047 (regOne!30121 lt!2142871) (regOne!30120 lt!2142871))))))

(declare-fun b!5216949 () Bool)

(assert (=> b!5216949 (= e!3247448 e!3247450)))

(declare-fun res!2215426 () Bool)

(assert (=> b!5216949 (=> (not res!2215426) (not e!3247450))))

(assert (=> b!5216949 (= res!2215426 call!367866)))

(declare-fun d!1682064 () Bool)

(declare-fun res!2215428 () Bool)

(assert (=> d!1682064 (=> res!2215428 e!3247449)))

(assert (=> d!1682064 (= res!2215428 (is-ElementMatch!14804 lt!2142871))))

(assert (=> d!1682064 (= (validRegex!6540 lt!2142871) e!3247449)))

(declare-fun b!5216950 () Bool)

(assert (=> b!5216950 (= e!3247446 call!367865)))

(declare-fun bm!367862 () Bool)

(assert (=> bm!367862 (= call!367865 (validRegex!6540 (ite c!900046 (reg!15133 lt!2142871) (ite c!900047 (regTwo!30121 lt!2142871) (regTwo!30120 lt!2142871)))))))

(declare-fun b!5216951 () Bool)

(declare-fun res!2215425 () Bool)

(assert (=> b!5216951 (=> (not res!2215425) (not e!3247447))))

(assert (=> b!5216951 (= res!2215425 call!367866)))

(assert (=> b!5216951 (= e!3247445 e!3247447)))

(assert (= (and d!1682064 (not res!2215428)) b!5216944))

(assert (= (and b!5216944 c!900046) b!5216948))

(assert (= (and b!5216944 (not c!900046)) b!5216946))

(assert (= (and b!5216948 res!2215424) b!5216950))

(assert (= (and b!5216946 c!900047) b!5216951))

(assert (= (and b!5216946 (not c!900047)) b!5216945))

(assert (= (and b!5216951 res!2215425) b!5216943))

(assert (= (and b!5216945 (not res!2215427)) b!5216949))

(assert (= (and b!5216949 res!2215426) b!5216947))

(assert (= (or b!5216943 b!5216947) bm!367860))

(assert (= (or b!5216951 b!5216949) bm!367861))

(assert (= (or b!5216950 bm!367860) bm!367862))

(declare-fun m!6265394 () Bool)

(assert (=> b!5216948 m!6265394))

(declare-fun m!6265396 () Bool)

(assert (=> bm!367861 m!6265396))

(declare-fun m!6265398 () Bool)

(assert (=> bm!367862 m!6265398))

(assert (=> d!1681842 d!1682064))

(declare-fun d!1682066 () Bool)

(declare-fun res!2215429 () Bool)

(declare-fun e!3247451 () Bool)

(assert (=> d!1682066 (=> res!2215429 e!3247451)))

(assert (=> d!1682066 (= res!2215429 (is-Nil!60588 (exprs!4688 (h!67037 zl!343))))))

(assert (=> d!1682066 (= (forall!14238 (exprs!4688 (h!67037 zl!343)) lambda!261670) e!3247451)))

(declare-fun b!5216952 () Bool)

(declare-fun e!3247452 () Bool)

(assert (=> b!5216952 (= e!3247451 e!3247452)))

(declare-fun res!2215430 () Bool)

(assert (=> b!5216952 (=> (not res!2215430) (not e!3247452))))

(assert (=> b!5216952 (= res!2215430 (dynLambda!23940 lambda!261670 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5216953 () Bool)

(assert (=> b!5216953 (= e!3247452 (forall!14238 (t!373879 (exprs!4688 (h!67037 zl!343))) lambda!261670))))

(assert (= (and d!1682066 (not res!2215429)) b!5216952))

(assert (= (and b!5216952 res!2215430) b!5216953))

(declare-fun b_lambda!201747 () Bool)

(assert (=> (not b_lambda!201747) (not b!5216952)))

(declare-fun m!6265400 () Bool)

(assert (=> b!5216952 m!6265400))

(declare-fun m!6265402 () Bool)

(assert (=> b!5216953 m!6265402))

(assert (=> d!1681842 d!1682066))

(assert (=> bs!1211623 d!1681774))

(declare-fun d!1682068 () Bool)

(declare-fun res!2215431 () Bool)

(declare-fun e!3247453 () Bool)

(assert (=> d!1682068 (=> res!2215431 e!3247453)))

(assert (=> d!1682068 (= res!2215431 (is-Nil!60588 (exprs!4688 setElem!33151)))))

(assert (=> d!1682068 (= (forall!14238 (exprs!4688 setElem!33151) lambda!261657) e!3247453)))

(declare-fun b!5216954 () Bool)

(declare-fun e!3247454 () Bool)

(assert (=> b!5216954 (= e!3247453 e!3247454)))

(declare-fun res!2215432 () Bool)

(assert (=> b!5216954 (=> (not res!2215432) (not e!3247454))))

(assert (=> b!5216954 (= res!2215432 (dynLambda!23940 lambda!261657 (h!67036 (exprs!4688 setElem!33151))))))

(declare-fun b!5216955 () Bool)

(assert (=> b!5216955 (= e!3247454 (forall!14238 (t!373879 (exprs!4688 setElem!33151)) lambda!261657))))

(assert (= (and d!1682068 (not res!2215431)) b!5216954))

(assert (= (and b!5216954 res!2215432) b!5216955))

(declare-fun b_lambda!201749 () Bool)

(assert (=> (not b_lambda!201749) (not b!5216954)))

(declare-fun m!6265404 () Bool)

(assert (=> b!5216954 m!6265404))

(declare-fun m!6265406 () Bool)

(assert (=> b!5216955 m!6265406))

(assert (=> d!1681792 d!1682068))

(declare-fun b!5216956 () Bool)

(declare-fun res!2215434 () Bool)

(declare-fun e!3247461 () Bool)

(assert (=> b!5216956 (=> res!2215434 e!3247461)))

(assert (=> b!5216956 (= res!2215434 (not (is-ElementMatch!14804 (regTwo!30120 r!7292))))))

(declare-fun e!3247459 () Bool)

(assert (=> b!5216956 (= e!3247459 e!3247461)))

(declare-fun b!5216957 () Bool)

(declare-fun lt!2142938 () Bool)

(assert (=> b!5216957 (= e!3247459 (not lt!2142938))))

(declare-fun bm!367863 () Bool)

(declare-fun call!367868 () Bool)

(assert (=> bm!367863 (= call!367868 (isEmpty!32507 (_2!35306 (get!20818 lt!2142861))))))

(declare-fun b!5216958 () Bool)

(declare-fun e!3247456 () Bool)

(assert (=> b!5216958 (= e!3247456 (matchR!6989 (derivativeStep!4052 (regTwo!30120 r!7292) (head!11179 (_2!35306 (get!20818 lt!2142861)))) (tail!10276 (_2!35306 (get!20818 lt!2142861)))))))

(declare-fun b!5216959 () Bool)

(declare-fun res!2215436 () Bool)

(declare-fun e!3247458 () Bool)

(assert (=> b!5216959 (=> res!2215436 e!3247458)))

(assert (=> b!5216959 (= res!2215436 (not (isEmpty!32507 (tail!10276 (_2!35306 (get!20818 lt!2142861))))))))

(declare-fun b!5216960 () Bool)

(assert (=> b!5216960 (= e!3247458 (not (= (head!11179 (_2!35306 (get!20818 lt!2142861))) (c!899739 (regTwo!30120 r!7292)))))))

(declare-fun d!1682070 () Bool)

(declare-fun e!3247460 () Bool)

(assert (=> d!1682070 e!3247460))

(declare-fun c!900050 () Bool)

(assert (=> d!1682070 (= c!900050 (is-EmptyExpr!14804 (regTwo!30120 r!7292)))))

(assert (=> d!1682070 (= lt!2142938 e!3247456)))

(declare-fun c!900048 () Bool)

(assert (=> d!1682070 (= c!900048 (isEmpty!32507 (_2!35306 (get!20818 lt!2142861))))))

(assert (=> d!1682070 (validRegex!6540 (regTwo!30120 r!7292))))

(assert (=> d!1682070 (= (matchR!6989 (regTwo!30120 r!7292) (_2!35306 (get!20818 lt!2142861))) lt!2142938)))

(declare-fun b!5216961 () Bool)

(declare-fun e!3247457 () Bool)

(assert (=> b!5216961 (= e!3247461 e!3247457)))

(declare-fun res!2215433 () Bool)

(assert (=> b!5216961 (=> (not res!2215433) (not e!3247457))))

(assert (=> b!5216961 (= res!2215433 (not lt!2142938))))

(declare-fun b!5216962 () Bool)

(assert (=> b!5216962 (= e!3247457 e!3247458)))

(declare-fun res!2215440 () Bool)

(assert (=> b!5216962 (=> res!2215440 e!3247458)))

(assert (=> b!5216962 (= res!2215440 call!367868)))

(declare-fun b!5216963 () Bool)

(declare-fun res!2215439 () Bool)

(declare-fun e!3247455 () Bool)

(assert (=> b!5216963 (=> (not res!2215439) (not e!3247455))))

(assert (=> b!5216963 (= res!2215439 (isEmpty!32507 (tail!10276 (_2!35306 (get!20818 lt!2142861)))))))

(declare-fun b!5216964 () Bool)

(declare-fun res!2215438 () Bool)

(assert (=> b!5216964 (=> res!2215438 e!3247461)))

(assert (=> b!5216964 (= res!2215438 e!3247455)))

(declare-fun res!2215435 () Bool)

(assert (=> b!5216964 (=> (not res!2215435) (not e!3247455))))

(assert (=> b!5216964 (= res!2215435 lt!2142938)))

(declare-fun b!5216965 () Bool)

(assert (=> b!5216965 (= e!3247456 (nullable!4973 (regTwo!30120 r!7292)))))

(declare-fun b!5216966 () Bool)

(assert (=> b!5216966 (= e!3247455 (= (head!11179 (_2!35306 (get!20818 lt!2142861))) (c!899739 (regTwo!30120 r!7292))))))

(declare-fun b!5216967 () Bool)

(assert (=> b!5216967 (= e!3247460 e!3247459)))

(declare-fun c!900049 () Bool)

(assert (=> b!5216967 (= c!900049 (is-EmptyLang!14804 (regTwo!30120 r!7292)))))

(declare-fun b!5216968 () Bool)

(declare-fun res!2215437 () Bool)

(assert (=> b!5216968 (=> (not res!2215437) (not e!3247455))))

(assert (=> b!5216968 (= res!2215437 (not call!367868))))

(declare-fun b!5216969 () Bool)

(assert (=> b!5216969 (= e!3247460 (= lt!2142938 call!367868))))

(assert (= (and d!1682070 c!900048) b!5216965))

(assert (= (and d!1682070 (not c!900048)) b!5216958))

(assert (= (and d!1682070 c!900050) b!5216969))

(assert (= (and d!1682070 (not c!900050)) b!5216967))

(assert (= (and b!5216967 c!900049) b!5216957))

(assert (= (and b!5216967 (not c!900049)) b!5216956))

(assert (= (and b!5216956 (not res!2215434)) b!5216964))

(assert (= (and b!5216964 res!2215435) b!5216968))

(assert (= (and b!5216968 res!2215437) b!5216963))

(assert (= (and b!5216963 res!2215439) b!5216966))

(assert (= (and b!5216964 (not res!2215438)) b!5216961))

(assert (= (and b!5216961 res!2215433) b!5216962))

(assert (= (and b!5216962 (not res!2215440)) b!5216959))

(assert (= (and b!5216959 (not res!2215436)) b!5216960))

(assert (= (or b!5216969 b!5216968 b!5216962) bm!367863))

(declare-fun m!6265408 () Bool)

(assert (=> b!5216960 m!6265408))

(declare-fun m!6265410 () Bool)

(assert (=> bm!367863 m!6265410))

(assert (=> b!5216958 m!6265408))

(assert (=> b!5216958 m!6265408))

(declare-fun m!6265412 () Bool)

(assert (=> b!5216958 m!6265412))

(declare-fun m!6265414 () Bool)

(assert (=> b!5216958 m!6265414))

(assert (=> b!5216958 m!6265412))

(assert (=> b!5216958 m!6265414))

(declare-fun m!6265416 () Bool)

(assert (=> b!5216958 m!6265416))

(assert (=> d!1682070 m!6265410))

(declare-fun m!6265418 () Bool)

(assert (=> d!1682070 m!6265418))

(assert (=> b!5216963 m!6265414))

(assert (=> b!5216963 m!6265414))

(declare-fun m!6265420 () Bool)

(assert (=> b!5216963 m!6265420))

(assert (=> b!5216959 m!6265414))

(assert (=> b!5216959 m!6265414))

(assert (=> b!5216959 m!6265420))

(assert (=> b!5216966 m!6265408))

(declare-fun m!6265422 () Bool)

(assert (=> b!5216965 m!6265422))

(assert (=> b!5216199 d!1682070))

(declare-fun d!1682072 () Bool)

(assert (=> d!1682072 (= (get!20818 lt!2142861) (v!50943 lt!2142861))))

(assert (=> b!5216199 d!1682072))

(assert (=> d!1681830 d!1682000))

(declare-fun b!5216970 () Bool)

(declare-fun res!2215442 () Bool)

(declare-fun e!3247468 () Bool)

(assert (=> b!5216970 (=> res!2215442 e!3247468)))

(assert (=> b!5216970 (= res!2215442 (not (is-ElementMatch!14804 (regOne!30120 r!7292))))))

(declare-fun e!3247466 () Bool)

(assert (=> b!5216970 (= e!3247466 e!3247468)))

(declare-fun b!5216971 () Bool)

(declare-fun lt!2142939 () Bool)

(assert (=> b!5216971 (= e!3247466 (not lt!2142939))))

(declare-fun bm!367864 () Bool)

(declare-fun call!367869 () Bool)

(assert (=> bm!367864 (= call!367869 (isEmpty!32507 Nil!60587))))

(declare-fun b!5216972 () Bool)

(declare-fun e!3247463 () Bool)

(assert (=> b!5216972 (= e!3247463 (matchR!6989 (derivativeStep!4052 (regOne!30120 r!7292) (head!11179 Nil!60587)) (tail!10276 Nil!60587)))))

(declare-fun b!5216973 () Bool)

(declare-fun res!2215444 () Bool)

(declare-fun e!3247465 () Bool)

(assert (=> b!5216973 (=> res!2215444 e!3247465)))

(assert (=> b!5216973 (= res!2215444 (not (isEmpty!32507 (tail!10276 Nil!60587))))))

(declare-fun b!5216974 () Bool)

(assert (=> b!5216974 (= e!3247465 (not (= (head!11179 Nil!60587) (c!899739 (regOne!30120 r!7292)))))))

(declare-fun d!1682074 () Bool)

(declare-fun e!3247467 () Bool)

(assert (=> d!1682074 e!3247467))

(declare-fun c!900053 () Bool)

(assert (=> d!1682074 (= c!900053 (is-EmptyExpr!14804 (regOne!30120 r!7292)))))

(assert (=> d!1682074 (= lt!2142939 e!3247463)))

(declare-fun c!900051 () Bool)

(assert (=> d!1682074 (= c!900051 (isEmpty!32507 Nil!60587))))

(assert (=> d!1682074 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1682074 (= (matchR!6989 (regOne!30120 r!7292) Nil!60587) lt!2142939)))

(declare-fun b!5216975 () Bool)

(declare-fun e!3247464 () Bool)

(assert (=> b!5216975 (= e!3247468 e!3247464)))

(declare-fun res!2215441 () Bool)

(assert (=> b!5216975 (=> (not res!2215441) (not e!3247464))))

(assert (=> b!5216975 (= res!2215441 (not lt!2142939))))

(declare-fun b!5216976 () Bool)

(assert (=> b!5216976 (= e!3247464 e!3247465)))

(declare-fun res!2215448 () Bool)

(assert (=> b!5216976 (=> res!2215448 e!3247465)))

(assert (=> b!5216976 (= res!2215448 call!367869)))

(declare-fun b!5216977 () Bool)

(declare-fun res!2215447 () Bool)

(declare-fun e!3247462 () Bool)

(assert (=> b!5216977 (=> (not res!2215447) (not e!3247462))))

(assert (=> b!5216977 (= res!2215447 (isEmpty!32507 (tail!10276 Nil!60587)))))

(declare-fun b!5216978 () Bool)

(declare-fun res!2215446 () Bool)

(assert (=> b!5216978 (=> res!2215446 e!3247468)))

(assert (=> b!5216978 (= res!2215446 e!3247462)))

(declare-fun res!2215443 () Bool)

(assert (=> b!5216978 (=> (not res!2215443) (not e!3247462))))

(assert (=> b!5216978 (= res!2215443 lt!2142939)))

(declare-fun b!5216979 () Bool)

(assert (=> b!5216979 (= e!3247463 (nullable!4973 (regOne!30120 r!7292)))))

(declare-fun b!5216980 () Bool)

(assert (=> b!5216980 (= e!3247462 (= (head!11179 Nil!60587) (c!899739 (regOne!30120 r!7292))))))

(declare-fun b!5216981 () Bool)

(assert (=> b!5216981 (= e!3247467 e!3247466)))

(declare-fun c!900052 () Bool)

(assert (=> b!5216981 (= c!900052 (is-EmptyLang!14804 (regOne!30120 r!7292)))))

(declare-fun b!5216982 () Bool)

(declare-fun res!2215445 () Bool)

(assert (=> b!5216982 (=> (not res!2215445) (not e!3247462))))

(assert (=> b!5216982 (= res!2215445 (not call!367869))))

(declare-fun b!5216983 () Bool)

(assert (=> b!5216983 (= e!3247467 (= lt!2142939 call!367869))))

(assert (= (and d!1682074 c!900051) b!5216979))

(assert (= (and d!1682074 (not c!900051)) b!5216972))

(assert (= (and d!1682074 c!900053) b!5216983))

(assert (= (and d!1682074 (not c!900053)) b!5216981))

(assert (= (and b!5216981 c!900052) b!5216971))

(assert (= (and b!5216981 (not c!900052)) b!5216970))

(assert (= (and b!5216970 (not res!2215442)) b!5216978))

(assert (= (and b!5216978 res!2215443) b!5216982))

(assert (= (and b!5216982 res!2215445) b!5216977))

(assert (= (and b!5216977 res!2215447) b!5216980))

(assert (= (and b!5216978 (not res!2215446)) b!5216975))

(assert (= (and b!5216975 res!2215441) b!5216976))

(assert (= (and b!5216976 (not res!2215448)) b!5216973))

(assert (= (and b!5216973 (not res!2215444)) b!5216974))

(assert (= (or b!5216983 b!5216982 b!5216976) bm!367864))

(declare-fun m!6265424 () Bool)

(assert (=> b!5216974 m!6265424))

(declare-fun m!6265426 () Bool)

(assert (=> bm!367864 m!6265426))

(assert (=> b!5216972 m!6265424))

(assert (=> b!5216972 m!6265424))

(declare-fun m!6265428 () Bool)

(assert (=> b!5216972 m!6265428))

(declare-fun m!6265430 () Bool)

(assert (=> b!5216972 m!6265430))

(assert (=> b!5216972 m!6265428))

(assert (=> b!5216972 m!6265430))

(declare-fun m!6265432 () Bool)

(assert (=> b!5216972 m!6265432))

(assert (=> d!1682074 m!6265426))

(assert (=> d!1682074 m!6264796))

(assert (=> b!5216977 m!6265430))

(assert (=> b!5216977 m!6265430))

(declare-fun m!6265434 () Bool)

(assert (=> b!5216977 m!6265434))

(assert (=> b!5216973 m!6265430))

(assert (=> b!5216973 m!6265430))

(assert (=> b!5216973 m!6265434))

(assert (=> b!5216980 m!6265424))

(assert (=> b!5216979 m!6265196))

(assert (=> d!1681830 d!1682074))

(assert (=> d!1681830 d!1681982))

(assert (=> d!1681784 d!1681790))

(declare-fun d!1682076 () Bool)

(assert (=> d!1682076 (= (flatMap!531 lt!2142751 lambda!261632) (dynLambda!23938 lambda!261632 lt!2142756))))

(assert (=> d!1682076 true))

(declare-fun _$13!1707 () Unit!152482)

(assert (=> d!1682076 (= (choose!38779 lt!2142751 lt!2142756 lambda!261632) _$13!1707)))

(declare-fun b_lambda!201751 () Bool)

(assert (=> (not b_lambda!201751) (not d!1682076)))

(declare-fun bs!1211726 () Bool)

(assert (= bs!1211726 d!1682076))

(assert (=> bs!1211726 m!6264522))

(assert (=> bs!1211726 m!6264682))

(assert (=> d!1681784 d!1682076))

(declare-fun bm!367865 () Bool)

(declare-fun call!367872 () Bool)

(declare-fun call!367870 () Bool)

(assert (=> bm!367865 (= call!367872 call!367870)))

(declare-fun b!5216984 () Bool)

(declare-fun e!3247472 () Bool)

(assert (=> b!5216984 (= e!3247472 call!367872)))

(declare-fun b!5216985 () Bool)

(declare-fun e!3247474 () Bool)

(declare-fun e!3247469 () Bool)

(assert (=> b!5216985 (= e!3247474 e!3247469)))

(declare-fun c!900054 () Bool)

(assert (=> b!5216985 (= c!900054 (is-Star!14804 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))

(declare-fun b!5216986 () Bool)

(declare-fun res!2215452 () Bool)

(declare-fun e!3247473 () Bool)

(assert (=> b!5216986 (=> res!2215452 e!3247473)))

(assert (=> b!5216986 (= res!2215452 (not (is-Concat!23649 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292)))))))

(declare-fun e!3247470 () Bool)

(assert (=> b!5216986 (= e!3247470 e!3247473)))

(declare-fun b!5216987 () Bool)

(assert (=> b!5216987 (= e!3247469 e!3247470)))

(declare-fun c!900055 () Bool)

(assert (=> b!5216987 (= c!900055 (is-Union!14804 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))

(declare-fun b!5216988 () Bool)

(declare-fun e!3247475 () Bool)

(assert (=> b!5216988 (= e!3247475 call!367872)))

(declare-fun b!5216989 () Bool)

(declare-fun e!3247471 () Bool)

(assert (=> b!5216989 (= e!3247469 e!3247471)))

(declare-fun res!2215449 () Bool)

(assert (=> b!5216989 (= res!2215449 (not (nullable!4973 (reg!15133 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))))

(assert (=> b!5216989 (=> (not res!2215449) (not e!3247471))))

(declare-fun bm!367866 () Bool)

(declare-fun call!367871 () Bool)

(assert (=> bm!367866 (= call!367871 (validRegex!6540 (ite c!900055 (regOne!30121 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))) (regOne!30120 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))))

(declare-fun b!5216990 () Bool)

(assert (=> b!5216990 (= e!3247473 e!3247475)))

(declare-fun res!2215451 () Bool)

(assert (=> b!5216990 (=> (not res!2215451) (not e!3247475))))

(assert (=> b!5216990 (= res!2215451 call!367871)))

(declare-fun d!1682078 () Bool)

(declare-fun res!2215453 () Bool)

(assert (=> d!1682078 (=> res!2215453 e!3247474)))

(assert (=> d!1682078 (= res!2215453 (is-ElementMatch!14804 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))))))

(assert (=> d!1682078 (= (validRegex!6540 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))) e!3247474)))

(declare-fun b!5216991 () Bool)

(assert (=> b!5216991 (= e!3247471 call!367870)))

(declare-fun bm!367867 () Bool)

(assert (=> bm!367867 (= call!367870 (validRegex!6540 (ite c!900054 (reg!15133 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))) (ite c!900055 (regTwo!30121 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292))) (regTwo!30120 (ite c!899818 (regOne!30121 r!7292) (regOne!30120 r!7292)))))))))

(declare-fun b!5216992 () Bool)

(declare-fun res!2215450 () Bool)

(assert (=> b!5216992 (=> (not res!2215450) (not e!3247472))))

(assert (=> b!5216992 (= res!2215450 call!367871)))

(assert (=> b!5216992 (= e!3247470 e!3247472)))

(assert (= (and d!1682078 (not res!2215453)) b!5216985))

(assert (= (and b!5216985 c!900054) b!5216989))

(assert (= (and b!5216985 (not c!900054)) b!5216987))

(assert (= (and b!5216989 res!2215449) b!5216991))

(assert (= (and b!5216987 c!900055) b!5216992))

(assert (= (and b!5216987 (not c!900055)) b!5216986))

(assert (= (and b!5216992 res!2215450) b!5216984))

(assert (= (and b!5216986 (not res!2215452)) b!5216990))

(assert (= (and b!5216990 res!2215451) b!5216988))

(assert (= (or b!5216984 b!5216988) bm!367865))

(assert (= (or b!5216992 b!5216990) bm!367866))

(assert (= (or b!5216991 bm!367865) bm!367867))

(declare-fun m!6265436 () Bool)

(assert (=> b!5216989 m!6265436))

(declare-fun m!6265438 () Bool)

(assert (=> bm!367866 m!6265438))

(declare-fun m!6265440 () Bool)

(assert (=> bm!367867 m!6265440))

(assert (=> bm!367741 d!1682078))

(declare-fun bm!367868 () Bool)

(declare-fun call!367874 () (Set Context!8376))

(declare-fun call!367875 () (Set Context!8376))

(assert (=> bm!367868 (= call!367874 call!367875)))

(declare-fun c!900059 () Bool)

(declare-fun call!367877 () List!60712)

(declare-fun c!900058 () Bool)

(declare-fun bm!367869 () Bool)

(assert (=> bm!367869 (= call!367877 ($colon$colon!1280 (exprs!4688 (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718))) (ite (or c!900059 c!900058) (regTwo!30120 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))))))))

(declare-fun b!5216993 () Bool)

(declare-fun e!3247481 () (Set Context!8376))

(declare-fun e!3247480 () (Set Context!8376))

(assert (=> b!5216993 (= e!3247481 e!3247480)))

(assert (=> b!5216993 (= c!900058 (is-Concat!23649 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun bm!367870 () Bool)

(declare-fun call!367878 () (Set Context!8376))

(declare-fun c!900057 () Bool)

(assert (=> bm!367870 (= call!367878 (derivationStepZipperDown!252 (ite c!900057 (regOne!30121 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (regOne!30120 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))))) (ite c!900057 (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718)) (Context!8377 call!367877)) (h!67035 s!2326)))))

(declare-fun e!3247479 () Bool)

(declare-fun b!5216994 () Bool)

(assert (=> b!5216994 (= e!3247479 (nullable!4973 (regOne!30120 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))))))))

(declare-fun b!5216995 () Bool)

(declare-fun e!3247476 () (Set Context!8376))

(assert (=> b!5216995 (= e!3247476 (as set.empty (Set Context!8376)))))

(declare-fun b!5216996 () Bool)

(declare-fun call!367876 () (Set Context!8376))

(assert (=> b!5216996 (= e!3247476 call!367876)))

(declare-fun b!5216997 () Bool)

(declare-fun e!3247477 () (Set Context!8376))

(declare-fun e!3247478 () (Set Context!8376))

(assert (=> b!5216997 (= e!3247477 e!3247478)))

(assert (=> b!5216997 (= c!900057 (is-Union!14804 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))))

(declare-fun b!5216998 () Bool)

(assert (=> b!5216998 (= c!900059 e!3247479)))

(declare-fun res!2215454 () Bool)

(assert (=> b!5216998 (=> (not res!2215454) (not e!3247479))))

(assert (=> b!5216998 (= res!2215454 (is-Concat!23649 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))))

(assert (=> b!5216998 (= e!3247478 e!3247481)))

(declare-fun bm!367871 () Bool)

(declare-fun call!367873 () List!60712)

(assert (=> bm!367871 (= call!367873 call!367877)))

(declare-fun b!5216999 () Bool)

(declare-fun c!900060 () Bool)

(assert (=> b!5216999 (= c!900060 (is-Star!14804 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))))

(assert (=> b!5216999 (= e!3247480 e!3247476)))

(declare-fun b!5217000 () Bool)

(assert (=> b!5217000 (= e!3247481 (set.union call!367878 call!367874))))

(declare-fun d!1682080 () Bool)

(declare-fun c!900056 () Bool)

(assert (=> d!1682080 (= c!900056 (and (is-ElementMatch!14804 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (= (c!899739 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (h!67035 s!2326))))))

(assert (=> d!1682080 (= (derivationStepZipperDown!252 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))) (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718)) (h!67035 s!2326)) e!3247477)))

(declare-fun bm!367872 () Bool)

(assert (=> bm!367872 (= call!367876 call!367874)))

(declare-fun bm!367873 () Bool)

(assert (=> bm!367873 (= call!367875 (derivationStepZipperDown!252 (ite c!900057 (regTwo!30121 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (ite c!900059 (regTwo!30120 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (ite c!900058 (regOne!30120 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343)))))))) (reg!15133 (ite c!899787 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899789 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!899788 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))))))) (ite (or c!900057 c!900059) (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718)) (Context!8377 call!367873)) (h!67035 s!2326)))))

(declare-fun b!5217001 () Bool)

(assert (=> b!5217001 (= e!3247480 call!367876)))

(declare-fun b!5217002 () Bool)

(assert (=> b!5217002 (= e!3247477 (set.insert (ite (or c!899787 c!899789) lt!2142745 (Context!8377 call!367718)) (as set.empty (Set Context!8376))))))

(declare-fun b!5217003 () Bool)

(assert (=> b!5217003 (= e!3247478 (set.union call!367878 call!367875))))

(assert (= (and d!1682080 c!900056) b!5217002))

(assert (= (and d!1682080 (not c!900056)) b!5216997))

(assert (= (and b!5216997 c!900057) b!5217003))

(assert (= (and b!5216997 (not c!900057)) b!5216998))

(assert (= (and b!5216998 res!2215454) b!5216994))

(assert (= (and b!5216998 c!900059) b!5217000))

(assert (= (and b!5216998 (not c!900059)) b!5216993))

(assert (= (and b!5216993 c!900058) b!5217001))

(assert (= (and b!5216993 (not c!900058)) b!5216999))

(assert (= (and b!5216999 c!900060) b!5216996))

(assert (= (and b!5216999 (not c!900060)) b!5216995))

(assert (= (or b!5217001 b!5216996) bm!367871))

(assert (= (or b!5217001 b!5216996) bm!367872))

(assert (= (or b!5217000 bm!367871) bm!367869))

(assert (= (or b!5217000 bm!367872) bm!367868))

(assert (= (or b!5217003 bm!367868) bm!367873))

(assert (= (or b!5217003 b!5217000) bm!367870))

(declare-fun m!6265442 () Bool)

(assert (=> b!5217002 m!6265442))

(declare-fun m!6265444 () Bool)

(assert (=> bm!367869 m!6265444))

(declare-fun m!6265446 () Bool)

(assert (=> bm!367870 m!6265446))

(declare-fun m!6265448 () Bool)

(assert (=> b!5216994 m!6265448))

(declare-fun m!6265450 () Bool)

(assert (=> bm!367873 m!6265450))

(assert (=> bm!367718 d!1682080))

(declare-fun d!1682082 () Bool)

(assert (=> d!1682082 (= (head!11180 (unfocusZipperList!246 zl!343)) (h!67036 (unfocusZipperList!246 zl!343)))))

(assert (=> b!5216266 d!1682082))

(assert (=> d!1681810 d!1681952))

(declare-fun bm!367874 () Bool)

(declare-fun call!367880 () (Set Context!8376))

(declare-fun call!367881 () (Set Context!8376))

(assert (=> bm!367874 (= call!367880 call!367881)))

(declare-fun bm!367875 () Bool)

(declare-fun c!900063 () Bool)

(declare-fun call!367883 () List!60712)

(declare-fun c!900064 () Bool)

(assert (=> bm!367875 (= call!367883 ($colon$colon!1280 (exprs!4688 (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733))) (ite (or c!900064 c!900063) (regTwo!30120 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5217004 () Bool)

(declare-fun e!3247487 () (Set Context!8376))

(declare-fun e!3247486 () (Set Context!8376))

(assert (=> b!5217004 (= e!3247487 e!3247486)))

(assert (=> b!5217004 (= c!900063 (is-Concat!23649 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))))))

(declare-fun bm!367876 () Bool)

(declare-fun call!367884 () (Set Context!8376))

(declare-fun c!900062 () Bool)

(assert (=> bm!367876 (= call!367884 (derivationStepZipperDown!252 (ite c!900062 (regOne!30121 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (regOne!30120 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))))) (ite c!900062 (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733)) (Context!8377 call!367883)) (h!67035 s!2326)))))

(declare-fun e!3247485 () Bool)

(declare-fun b!5217005 () Bool)

(assert (=> b!5217005 (= e!3247485 (nullable!4973 (regOne!30120 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5217006 () Bool)

(declare-fun e!3247482 () (Set Context!8376))

(assert (=> b!5217006 (= e!3247482 (as set.empty (Set Context!8376)))))

(declare-fun b!5217007 () Bool)

(declare-fun call!367882 () (Set Context!8376))

(assert (=> b!5217007 (= e!3247482 call!367882)))

(declare-fun b!5217008 () Bool)

(declare-fun e!3247483 () (Set Context!8376))

(declare-fun e!3247484 () (Set Context!8376))

(assert (=> b!5217008 (= e!3247483 e!3247484)))

(assert (=> b!5217008 (= c!900062 (is-Union!14804 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))))))

(declare-fun b!5217009 () Bool)

(assert (=> b!5217009 (= c!900064 e!3247485)))

(declare-fun res!2215455 () Bool)

(assert (=> b!5217009 (=> (not res!2215455) (not e!3247485))))

(assert (=> b!5217009 (= res!2215455 (is-Concat!23649 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))))))

(assert (=> b!5217009 (= e!3247484 e!3247487)))

(declare-fun bm!367877 () Bool)

(declare-fun call!367879 () List!60712)

(assert (=> bm!367877 (= call!367879 call!367883)))

(declare-fun c!900065 () Bool)

(declare-fun b!5217010 () Bool)

(assert (=> b!5217010 (= c!900065 (is-Star!14804 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))))))

(assert (=> b!5217010 (= e!3247486 e!3247482)))

(declare-fun b!5217011 () Bool)

(assert (=> b!5217011 (= e!3247487 (set.union call!367884 call!367880))))

(declare-fun d!1682084 () Bool)

(declare-fun c!900061 () Bool)

(assert (=> d!1682084 (= c!900061 (and (is-ElementMatch!14804 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (= (c!899739 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (h!67035 s!2326))))))

(assert (=> d!1682084 (= (derivationStepZipperDown!252 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))) (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733)) (h!67035 s!2326)) e!3247483)))

(declare-fun bm!367878 () Bool)

(assert (=> bm!367878 (= call!367882 call!367880)))

(declare-fun bm!367879 () Bool)

(assert (=> bm!367879 (= call!367881 (derivationStepZipperDown!252 (ite c!900062 (regTwo!30121 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (ite c!900064 (regTwo!30120 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (ite c!900063 (regOne!30120 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292))))))) (reg!15133 (ite c!899805 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (ite c!899807 (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (ite c!899806 (regOne!30120 (regOne!30121 (regOne!30120 r!7292))) (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))))))) (ite (or c!900062 c!900064) (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733)) (Context!8377 call!367879)) (h!67035 s!2326)))))

(declare-fun b!5217012 () Bool)

(assert (=> b!5217012 (= e!3247486 call!367882)))

(declare-fun b!5217013 () Bool)

(assert (=> b!5217013 (= e!3247483 (set.insert (ite (or c!899805 c!899807) lt!2142745 (Context!8377 call!367733)) (as set.empty (Set Context!8376))))))

(declare-fun b!5217014 () Bool)

(assert (=> b!5217014 (= e!3247484 (set.union call!367884 call!367881))))

(assert (= (and d!1682084 c!900061) b!5217013))

(assert (= (and d!1682084 (not c!900061)) b!5217008))

(assert (= (and b!5217008 c!900062) b!5217014))

(assert (= (and b!5217008 (not c!900062)) b!5217009))

(assert (= (and b!5217009 res!2215455) b!5217005))

(assert (= (and b!5217009 c!900064) b!5217011))

(assert (= (and b!5217009 (not c!900064)) b!5217004))

(assert (= (and b!5217004 c!900063) b!5217012))

(assert (= (and b!5217004 (not c!900063)) b!5217010))

(assert (= (and b!5217010 c!900065) b!5217007))

(assert (= (and b!5217010 (not c!900065)) b!5217006))

(assert (= (or b!5217012 b!5217007) bm!367877))

(assert (= (or b!5217012 b!5217007) bm!367878))

(assert (= (or b!5217011 bm!367877) bm!367875))

(assert (= (or b!5217011 bm!367878) bm!367874))

(assert (= (or b!5217014 bm!367874) bm!367879))

(assert (= (or b!5217014 b!5217011) bm!367876))

(declare-fun m!6265452 () Bool)

(assert (=> b!5217013 m!6265452))

(declare-fun m!6265454 () Bool)

(assert (=> bm!367875 m!6265454))

(declare-fun m!6265456 () Bool)

(assert (=> bm!367876 m!6265456))

(declare-fun m!6265458 () Bool)

(assert (=> b!5217005 m!6265458))

(declare-fun m!6265460 () Bool)

(assert (=> bm!367879 m!6265460))

(assert (=> bm!367733 d!1682084))

(declare-fun d!1682086 () Bool)

(assert (=> d!1682086 (= (isConcat!289 lt!2142871) (is-Concat!23649 lt!2142871))))

(assert (=> b!5216236 d!1682086))

(declare-fun bm!367880 () Bool)

(declare-fun call!367887 () Bool)

(declare-fun call!367885 () Bool)

(assert (=> bm!367880 (= call!367887 call!367885)))

(declare-fun b!5217015 () Bool)

(declare-fun e!3247491 () Bool)

(assert (=> b!5217015 (= e!3247491 call!367887)))

(declare-fun b!5217016 () Bool)

(declare-fun e!3247493 () Bool)

(declare-fun e!3247488 () Bool)

(assert (=> b!5217016 (= e!3247493 e!3247488)))

(declare-fun c!900066 () Bool)

(assert (=> b!5217016 (= c!900066 (is-Star!14804 lt!2142874))))

(declare-fun b!5217017 () Bool)

(declare-fun res!2215459 () Bool)

(declare-fun e!3247492 () Bool)

(assert (=> b!5217017 (=> res!2215459 e!3247492)))

(assert (=> b!5217017 (= res!2215459 (not (is-Concat!23649 lt!2142874)))))

(declare-fun e!3247489 () Bool)

(assert (=> b!5217017 (= e!3247489 e!3247492)))

(declare-fun b!5217018 () Bool)

(assert (=> b!5217018 (= e!3247488 e!3247489)))

(declare-fun c!900067 () Bool)

(assert (=> b!5217018 (= c!900067 (is-Union!14804 lt!2142874))))

(declare-fun b!5217019 () Bool)

(declare-fun e!3247494 () Bool)

(assert (=> b!5217019 (= e!3247494 call!367887)))

(declare-fun b!5217020 () Bool)

(declare-fun e!3247490 () Bool)

(assert (=> b!5217020 (= e!3247488 e!3247490)))

(declare-fun res!2215456 () Bool)

(assert (=> b!5217020 (= res!2215456 (not (nullable!4973 (reg!15133 lt!2142874))))))

(assert (=> b!5217020 (=> (not res!2215456) (not e!3247490))))

(declare-fun bm!367881 () Bool)

(declare-fun call!367886 () Bool)

(assert (=> bm!367881 (= call!367886 (validRegex!6540 (ite c!900067 (regOne!30121 lt!2142874) (regOne!30120 lt!2142874))))))

(declare-fun b!5217021 () Bool)

(assert (=> b!5217021 (= e!3247492 e!3247494)))

(declare-fun res!2215458 () Bool)

(assert (=> b!5217021 (=> (not res!2215458) (not e!3247494))))

(assert (=> b!5217021 (= res!2215458 call!367886)))

(declare-fun d!1682088 () Bool)

(declare-fun res!2215460 () Bool)

(assert (=> d!1682088 (=> res!2215460 e!3247493)))

(assert (=> d!1682088 (= res!2215460 (is-ElementMatch!14804 lt!2142874))))

(assert (=> d!1682088 (= (validRegex!6540 lt!2142874) e!3247493)))

(declare-fun b!5217022 () Bool)

(assert (=> b!5217022 (= e!3247490 call!367885)))

(declare-fun bm!367882 () Bool)

(assert (=> bm!367882 (= call!367885 (validRegex!6540 (ite c!900066 (reg!15133 lt!2142874) (ite c!900067 (regTwo!30121 lt!2142874) (regTwo!30120 lt!2142874)))))))

(declare-fun b!5217023 () Bool)

(declare-fun res!2215457 () Bool)

(assert (=> b!5217023 (=> (not res!2215457) (not e!3247491))))

(assert (=> b!5217023 (= res!2215457 call!367886)))

(assert (=> b!5217023 (= e!3247489 e!3247491)))

(assert (= (and d!1682088 (not res!2215460)) b!5217016))

(assert (= (and b!5217016 c!900066) b!5217020))

(assert (= (and b!5217016 (not c!900066)) b!5217018))

(assert (= (and b!5217020 res!2215456) b!5217022))

(assert (= (and b!5217018 c!900067) b!5217023))

(assert (= (and b!5217018 (not c!900067)) b!5217017))

(assert (= (and b!5217023 res!2215457) b!5217015))

(assert (= (and b!5217017 (not res!2215459)) b!5217021))

(assert (= (and b!5217021 res!2215458) b!5217019))

(assert (= (or b!5217015 b!5217019) bm!367880))

(assert (= (or b!5217023 b!5217021) bm!367881))

(assert (= (or b!5217022 bm!367880) bm!367882))

(declare-fun m!6265462 () Bool)

(assert (=> b!5217020 m!6265462))

(declare-fun m!6265464 () Bool)

(assert (=> bm!367881 m!6265464))

(declare-fun m!6265466 () Bool)

(assert (=> bm!367882 m!6265466))

(assert (=> d!1681846 d!1682088))

(declare-fun d!1682090 () Bool)

(declare-fun res!2215461 () Bool)

(declare-fun e!3247495 () Bool)

(assert (=> d!1682090 (=> res!2215461 e!3247495)))

(assert (=> d!1682090 (= res!2215461 (is-Nil!60588 (unfocusZipperList!246 zl!343)))))

(assert (=> d!1682090 (= (forall!14238 (unfocusZipperList!246 zl!343) lambda!261673) e!3247495)))

(declare-fun b!5217024 () Bool)

(declare-fun e!3247496 () Bool)

(assert (=> b!5217024 (= e!3247495 e!3247496)))

(declare-fun res!2215462 () Bool)

(assert (=> b!5217024 (=> (not res!2215462) (not e!3247496))))

(assert (=> b!5217024 (= res!2215462 (dynLambda!23940 lambda!261673 (h!67036 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5217025 () Bool)

(assert (=> b!5217025 (= e!3247496 (forall!14238 (t!373879 (unfocusZipperList!246 zl!343)) lambda!261673))))

(assert (= (and d!1682090 (not res!2215461)) b!5217024))

(assert (= (and b!5217024 res!2215462) b!5217025))

(declare-fun b_lambda!201753 () Bool)

(assert (=> (not b_lambda!201753) (not b!5217024)))

(declare-fun m!6265468 () Bool)

(assert (=> b!5217024 m!6265468))

(declare-fun m!6265470 () Bool)

(assert (=> b!5217025 m!6265470))

(assert (=> d!1681846 d!1682090))

(declare-fun d!1682092 () Bool)

(declare-fun c!900068 () Bool)

(assert (=> d!1682092 (= c!900068 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247497 () Bool)

(assert (=> d!1682092 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142752 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247497)))

(declare-fun b!5217026 () Bool)

(assert (=> b!5217026 (= e!3247497 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142752 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5217027 () Bool)

(assert (=> b!5217027 (= e!3247497 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142752 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682092 c!900068) b!5217026))

(assert (= (and d!1682092 (not c!900068)) b!5217027))

(assert (=> d!1682092 m!6264724))

(assert (=> d!1682092 m!6265200))

(assert (=> b!5217026 m!6264754))

(declare-fun m!6265472 () Bool)

(assert (=> b!5217026 m!6265472))

(assert (=> b!5217027 m!6264724))

(assert (=> b!5217027 m!6265204))

(assert (=> b!5217027 m!6264754))

(assert (=> b!5217027 m!6265204))

(declare-fun m!6265474 () Bool)

(assert (=> b!5217027 m!6265474))

(assert (=> b!5217027 m!6264724))

(assert (=> b!5217027 m!6265208))

(assert (=> b!5217027 m!6265474))

(assert (=> b!5217027 m!6265208))

(declare-fun m!6265476 () Bool)

(assert (=> b!5217027 m!6265476))

(assert (=> b!5216163 d!1682092))

(declare-fun bs!1211727 () Bool)

(declare-fun d!1682094 () Bool)

(assert (= bs!1211727 (and d!1682094 d!1681786)))

(declare-fun lambda!261724 () Int)

(assert (=> bs!1211727 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261724 lambda!261654))))

(declare-fun bs!1211728 () Bool)

(assert (= bs!1211728 (and d!1682094 d!1681968)))

(assert (=> bs!1211728 (= lambda!261724 lambda!261712)))

(declare-fun bs!1211729 () Bool)

(assert (= bs!1211729 (and d!1682094 d!1682016)))

(assert (=> bs!1211729 (= lambda!261724 lambda!261720)))

(declare-fun bs!1211730 () Bool)

(assert (= bs!1211730 (and d!1682094 d!1682038)))

(assert (=> bs!1211730 (= lambda!261724 lambda!261722)))

(declare-fun bs!1211731 () Bool)

(assert (= bs!1211731 (and d!1682094 b!5215801)))

(assert (=> bs!1211731 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261724 lambda!261632))))

(assert (=> d!1682094 true))

(assert (=> d!1682094 (= (derivationStepZipper!1074 lt!2142752 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142752 lambda!261724))))

(declare-fun bs!1211732 () Bool)

(assert (= bs!1211732 d!1682094))

(declare-fun m!6265478 () Bool)

(assert (=> bs!1211732 m!6265478))

(assert (=> b!5216163 d!1682094))

(assert (=> b!5216163 d!1681970))

(assert (=> b!5216163 d!1681972))

(declare-fun b!5217042 () Bool)

(declare-fun e!3247510 () Bool)

(declare-fun e!3247515 () Bool)

(assert (=> b!5217042 (= e!3247510 e!3247515)))

(declare-fun c!900071 () Bool)

(assert (=> b!5217042 (= c!900071 (is-Union!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5217043 () Bool)

(declare-fun e!3247512 () Bool)

(declare-fun call!367893 () Bool)

(assert (=> b!5217043 (= e!3247512 call!367893)))

(declare-fun bm!367887 () Bool)

(declare-fun call!367892 () Bool)

(assert (=> bm!367887 (= call!367892 (nullable!4973 (ite c!900071 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun b!5217044 () Bool)

(declare-fun e!3247514 () Bool)

(assert (=> b!5217044 (= e!3247514 call!367893)))

(declare-fun d!1682096 () Bool)

(declare-fun res!2215475 () Bool)

(declare-fun e!3247511 () Bool)

(assert (=> d!1682096 (=> res!2215475 e!3247511)))

(assert (=> d!1682096 (= res!2215475 (is-EmptyExpr!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> d!1682096 (= (nullableFct!1382 (h!67036 (exprs!4688 (h!67037 zl!343)))) e!3247511)))

(declare-fun b!5217045 () Bool)

(assert (=> b!5217045 (= e!3247515 e!3247512)))

(declare-fun res!2215474 () Bool)

(assert (=> b!5217045 (= res!2215474 call!367892)))

(assert (=> b!5217045 (=> (not res!2215474) (not e!3247512))))

(declare-fun b!5217046 () Bool)

(declare-fun e!3247513 () Bool)

(assert (=> b!5217046 (= e!3247513 e!3247510)))

(declare-fun res!2215476 () Bool)

(assert (=> b!5217046 (=> res!2215476 e!3247510)))

(assert (=> b!5217046 (= res!2215476 (is-Star!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun bm!367888 () Bool)

(assert (=> bm!367888 (= call!367893 (nullable!4973 (ite c!900071 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun b!5217047 () Bool)

(assert (=> b!5217047 (= e!3247515 e!3247514)))

(declare-fun res!2215473 () Bool)

(assert (=> b!5217047 (= res!2215473 call!367892)))

(assert (=> b!5217047 (=> res!2215473 e!3247514)))

(declare-fun b!5217048 () Bool)

(assert (=> b!5217048 (= e!3247511 e!3247513)))

(declare-fun res!2215477 () Bool)

(assert (=> b!5217048 (=> (not res!2215477) (not e!3247513))))

(assert (=> b!5217048 (= res!2215477 (and (not (is-EmptyLang!14804 (h!67036 (exprs!4688 (h!67037 zl!343))))) (not (is-ElementMatch!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))))

(assert (= (and d!1682096 (not res!2215475)) b!5217048))

(assert (= (and b!5217048 res!2215477) b!5217046))

(assert (= (and b!5217046 (not res!2215476)) b!5217042))

(assert (= (and b!5217042 c!900071) b!5217047))

(assert (= (and b!5217042 (not c!900071)) b!5217045))

(assert (= (and b!5217047 (not res!2215473)) b!5217044))

(assert (= (and b!5217045 res!2215474) b!5217043))

(assert (= (or b!5217044 b!5217043) bm!367888))

(assert (= (or b!5217047 b!5217045) bm!367887))

(declare-fun m!6265480 () Bool)

(assert (=> bm!367887 m!6265480))

(declare-fun m!6265482 () Bool)

(assert (=> bm!367888 m!6265482))

(assert (=> d!1681772 d!1682096))

(declare-fun d!1682098 () Bool)

(assert (=> d!1682098 (= (flatMap!531 lt!2142751 lambda!261654) (choose!38778 lt!2142751 lambda!261654))))

(declare-fun bs!1211733 () Bool)

(assert (= bs!1211733 d!1682098))

(declare-fun m!6265484 () Bool)

(assert (=> bs!1211733 m!6265484))

(assert (=> d!1681786 d!1682098))

(declare-fun d!1682100 () Bool)

(assert (=> d!1682100 (= (head!11180 (exprs!4688 (h!67037 zl!343))) (h!67036 (exprs!4688 (h!67037 zl!343))))))

(assert (=> b!5216240 d!1682100))

(declare-fun bs!1211734 () Bool)

(declare-fun d!1682102 () Bool)

(assert (= bs!1211734 (and d!1682102 d!1681954)))

(declare-fun lambda!261725 () Int)

(assert (=> bs!1211734 (= lambda!261725 lambda!261710)))

(declare-fun bs!1211735 () Bool)

(assert (= bs!1211735 (and d!1682102 d!1681974)))

(assert (=> bs!1211735 (= lambda!261725 lambda!261713)))

(declare-fun bs!1211736 () Bool)

(assert (= bs!1211736 (and d!1682102 d!1682018)))

(assert (=> bs!1211736 (= lambda!261725 lambda!261721)))

(declare-fun bs!1211737 () Bool)

(assert (= bs!1211737 (and d!1682102 d!1682050)))

(assert (=> bs!1211737 (= lambda!261725 lambda!261723)))

(assert (=> d!1682102 (= (nullableZipper!1230 lt!2142760) (exists!1967 lt!2142760 lambda!261725))))

(declare-fun bs!1211738 () Bool)

(assert (= bs!1211738 d!1682102))

(declare-fun m!6265486 () Bool)

(assert (=> bs!1211738 m!6265486))

(assert (=> b!5216158 d!1682102))

(declare-fun bm!367889 () Bool)

(declare-fun call!367896 () Bool)

(declare-fun call!367894 () Bool)

(assert (=> bm!367889 (= call!367896 call!367894)))

(declare-fun b!5217049 () Bool)

(declare-fun e!3247519 () Bool)

(assert (=> b!5217049 (= e!3247519 call!367896)))

(declare-fun b!5217050 () Bool)

(declare-fun e!3247521 () Bool)

(declare-fun e!3247516 () Bool)

(assert (=> b!5217050 (= e!3247521 e!3247516)))

(declare-fun c!900072 () Bool)

(assert (=> b!5217050 (= c!900072 (is-Star!14804 lt!2142853))))

(declare-fun b!5217051 () Bool)

(declare-fun res!2215481 () Bool)

(declare-fun e!3247520 () Bool)

(assert (=> b!5217051 (=> res!2215481 e!3247520)))

(assert (=> b!5217051 (= res!2215481 (not (is-Concat!23649 lt!2142853)))))

(declare-fun e!3247517 () Bool)

(assert (=> b!5217051 (= e!3247517 e!3247520)))

(declare-fun b!5217052 () Bool)

(assert (=> b!5217052 (= e!3247516 e!3247517)))

(declare-fun c!900073 () Bool)

(assert (=> b!5217052 (= c!900073 (is-Union!14804 lt!2142853))))

(declare-fun b!5217053 () Bool)

(declare-fun e!3247522 () Bool)

(assert (=> b!5217053 (= e!3247522 call!367896)))

(declare-fun b!5217054 () Bool)

(declare-fun e!3247518 () Bool)

(assert (=> b!5217054 (= e!3247516 e!3247518)))

(declare-fun res!2215478 () Bool)

(assert (=> b!5217054 (= res!2215478 (not (nullable!4973 (reg!15133 lt!2142853))))))

(assert (=> b!5217054 (=> (not res!2215478) (not e!3247518))))

(declare-fun bm!367890 () Bool)

(declare-fun call!367895 () Bool)

(assert (=> bm!367890 (= call!367895 (validRegex!6540 (ite c!900073 (regOne!30121 lt!2142853) (regOne!30120 lt!2142853))))))

(declare-fun b!5217055 () Bool)

(assert (=> b!5217055 (= e!3247520 e!3247522)))

(declare-fun res!2215480 () Bool)

(assert (=> b!5217055 (=> (not res!2215480) (not e!3247522))))

(assert (=> b!5217055 (= res!2215480 call!367895)))

(declare-fun d!1682104 () Bool)

(declare-fun res!2215482 () Bool)

(assert (=> d!1682104 (=> res!2215482 e!3247521)))

(assert (=> d!1682104 (= res!2215482 (is-ElementMatch!14804 lt!2142853))))

(assert (=> d!1682104 (= (validRegex!6540 lt!2142853) e!3247521)))

(declare-fun b!5217056 () Bool)

(assert (=> b!5217056 (= e!3247518 call!367894)))

(declare-fun bm!367891 () Bool)

(assert (=> bm!367891 (= call!367894 (validRegex!6540 (ite c!900072 (reg!15133 lt!2142853) (ite c!900073 (regTwo!30121 lt!2142853) (regTwo!30120 lt!2142853)))))))

(declare-fun b!5217057 () Bool)

(declare-fun res!2215479 () Bool)

(assert (=> b!5217057 (=> (not res!2215479) (not e!3247519))))

(assert (=> b!5217057 (= res!2215479 call!367895)))

(assert (=> b!5217057 (= e!3247517 e!3247519)))

(assert (= (and d!1682104 (not res!2215482)) b!5217050))

(assert (= (and b!5217050 c!900072) b!5217054))

(assert (= (and b!5217050 (not c!900072)) b!5217052))

(assert (= (and b!5217054 res!2215478) b!5217056))

(assert (= (and b!5217052 c!900073) b!5217057))

(assert (= (and b!5217052 (not c!900073)) b!5217051))

(assert (= (and b!5217057 res!2215479) b!5217049))

(assert (= (and b!5217051 (not res!2215481)) b!5217055))

(assert (= (and b!5217055 res!2215480) b!5217053))

(assert (= (or b!5217049 b!5217053) bm!367889))

(assert (= (or b!5217057 b!5217055) bm!367890))

(assert (= (or b!5217056 bm!367889) bm!367891))

(declare-fun m!6265488 () Bool)

(assert (=> b!5217054 m!6265488))

(declare-fun m!6265490 () Bool)

(assert (=> bm!367890 m!6265490))

(declare-fun m!6265492 () Bool)

(assert (=> bm!367891 m!6265492))

(assert (=> d!1681828 d!1682104))

(assert (=> d!1681828 d!1681846))

(assert (=> d!1681828 d!1681848))

(declare-fun bs!1211739 () Bool)

(declare-fun d!1682106 () Bool)

(assert (= bs!1211739 (and d!1682106 d!1682050)))

(declare-fun lambda!261726 () Int)

(assert (=> bs!1211739 (= lambda!261726 lambda!261723)))

(declare-fun bs!1211740 () Bool)

(assert (= bs!1211740 (and d!1682106 d!1682102)))

(assert (=> bs!1211740 (= lambda!261726 lambda!261725)))

(declare-fun bs!1211741 () Bool)

(assert (= bs!1211741 (and d!1682106 d!1681954)))

(assert (=> bs!1211741 (= lambda!261726 lambda!261710)))

(declare-fun bs!1211742 () Bool)

(assert (= bs!1211742 (and d!1682106 d!1681974)))

(assert (=> bs!1211742 (= lambda!261726 lambda!261713)))

(declare-fun bs!1211743 () Bool)

(assert (= bs!1211743 (and d!1682106 d!1682018)))

(assert (=> bs!1211743 (= lambda!261726 lambda!261721)))

(assert (=> d!1682106 (= (nullableZipper!1230 lt!2142746) (exists!1967 lt!2142746 lambda!261726))))

(declare-fun bs!1211744 () Bool)

(assert (= bs!1211744 d!1682106))

(declare-fun m!6265494 () Bool)

(assert (=> bs!1211744 m!6265494))

(assert (=> b!5216244 d!1682106))

(declare-fun bm!367892 () Bool)

(declare-fun call!367898 () (Set Context!8376))

(declare-fun call!367899 () (Set Context!8376))

(assert (=> bm!367892 (= call!367898 call!367899)))

(declare-fun bm!367893 () Bool)

(declare-fun c!900077 () Bool)

(declare-fun call!367901 () List!60712)

(declare-fun c!900076 () Bool)

(assert (=> bm!367893 (= call!367901 ($colon$colon!1280 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343))))) (ite (or c!900077 c!900076) (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67036 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5217058 () Bool)

(declare-fun e!3247528 () (Set Context!8376))

(declare-fun e!3247527 () (Set Context!8376))

(assert (=> b!5217058 (= e!3247528 e!3247527)))

(assert (=> b!5217058 (= c!900076 (is-Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun bm!367894 () Bool)

(declare-fun call!367902 () (Set Context!8376))

(declare-fun c!900075 () Bool)

(assert (=> bm!367894 (= call!367902 (derivationStepZipperDown!252 (ite c!900075 (regOne!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))) (ite c!900075 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (Context!8377 call!367901)) (h!67035 s!2326)))))

(declare-fun b!5217059 () Bool)

(declare-fun e!3247526 () Bool)

(assert (=> b!5217059 (= e!3247526 (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun b!5217060 () Bool)

(declare-fun e!3247523 () (Set Context!8376))

(assert (=> b!5217060 (= e!3247523 (as set.empty (Set Context!8376)))))

(declare-fun b!5217061 () Bool)

(declare-fun call!367900 () (Set Context!8376))

(assert (=> b!5217061 (= e!3247523 call!367900)))

(declare-fun b!5217062 () Bool)

(declare-fun e!3247524 () (Set Context!8376))

(declare-fun e!3247525 () (Set Context!8376))

(assert (=> b!5217062 (= e!3247524 e!3247525)))

(assert (=> b!5217062 (= c!900075 (is-Union!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun b!5217063 () Bool)

(assert (=> b!5217063 (= c!900077 e!3247526)))

(declare-fun res!2215483 () Bool)

(assert (=> b!5217063 (=> (not res!2215483) (not e!3247526))))

(assert (=> b!5217063 (= res!2215483 (is-Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5217063 (= e!3247525 e!3247528)))

(declare-fun bm!367895 () Bool)

(declare-fun call!367897 () List!60712)

(assert (=> bm!367895 (= call!367897 call!367901)))

(declare-fun b!5217064 () Bool)

(declare-fun c!900078 () Bool)

(assert (=> b!5217064 (= c!900078 (is-Star!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5217064 (= e!3247527 e!3247523)))

(declare-fun b!5217065 () Bool)

(assert (=> b!5217065 (= e!3247528 (set.union call!367902 call!367898))))

(declare-fun d!1682108 () Bool)

(declare-fun c!900074 () Bool)

(assert (=> d!1682108 (= c!900074 (and (is-ElementMatch!14804 (h!67036 (exprs!4688 (h!67037 zl!343)))) (= (c!899739 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326))))))

(assert (=> d!1682108 (= (derivationStepZipperDown!252 (h!67036 (exprs!4688 (h!67037 zl!343))) (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326)) e!3247524)))

(declare-fun bm!367896 () Bool)

(assert (=> bm!367896 (= call!367900 call!367898)))

(declare-fun bm!367897 () Bool)

(assert (=> bm!367897 (= call!367899 (derivationStepZipperDown!252 (ite c!900075 (regTwo!30121 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!900077 (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (ite c!900076 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (reg!15133 (h!67036 (exprs!4688 (h!67037 zl!343))))))) (ite (or c!900075 c!900077) (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (Context!8377 call!367897)) (h!67035 s!2326)))))

(declare-fun b!5217066 () Bool)

(assert (=> b!5217066 (= e!3247527 call!367900)))

(declare-fun b!5217067 () Bool)

(assert (=> b!5217067 (= e!3247524 (set.insert (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (as set.empty (Set Context!8376))))))

(declare-fun b!5217068 () Bool)

(assert (=> b!5217068 (= e!3247525 (set.union call!367902 call!367899))))

(assert (= (and d!1682108 c!900074) b!5217067))

(assert (= (and d!1682108 (not c!900074)) b!5217062))

(assert (= (and b!5217062 c!900075) b!5217068))

(assert (= (and b!5217062 (not c!900075)) b!5217063))

(assert (= (and b!5217063 res!2215483) b!5217059))

(assert (= (and b!5217063 c!900077) b!5217065))

(assert (= (and b!5217063 (not c!900077)) b!5217058))

(assert (= (and b!5217058 c!900076) b!5217066))

(assert (= (and b!5217058 (not c!900076)) b!5217064))

(assert (= (and b!5217064 c!900078) b!5217061))

(assert (= (and b!5217064 (not c!900078)) b!5217060))

(assert (= (or b!5217066 b!5217061) bm!367895))

(assert (= (or b!5217066 b!5217061) bm!367896))

(assert (= (or b!5217065 bm!367895) bm!367893))

(assert (= (or b!5217065 bm!367896) bm!367892))

(assert (= (or b!5217068 bm!367892) bm!367897))

(assert (= (or b!5217068 b!5217065) bm!367894))

(declare-fun m!6265496 () Bool)

(assert (=> b!5217067 m!6265496))

(declare-fun m!6265498 () Bool)

(assert (=> bm!367893 m!6265498))

(declare-fun m!6265500 () Bool)

(assert (=> bm!367894 m!6265500))

(assert (=> b!5217059 m!6264660))

(declare-fun m!6265502 () Bool)

(assert (=> bm!367897 m!6265502))

(assert (=> bm!367700 d!1682108))

(declare-fun bm!367898 () Bool)

(declare-fun call!367904 () (Set Context!8376))

(declare-fun call!367905 () (Set Context!8376))

(assert (=> bm!367898 (= call!367904 call!367905)))

(declare-fun bm!367899 () Bool)

(declare-fun c!900081 () Bool)

(declare-fun c!900082 () Bool)

(declare-fun call!367907 () List!60712)

(assert (=> bm!367899 (= call!367907 ($colon$colon!1280 (exprs!4688 (ite c!899800 lt!2142745 (Context!8377 call!367731))) (ite (or c!900082 c!900081) (regTwo!30120 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5217069 () Bool)

(declare-fun e!3247534 () (Set Context!8376))

(declare-fun e!3247533 () (Set Context!8376))

(assert (=> b!5217069 (= e!3247534 e!3247533)))

(assert (=> b!5217069 (= c!900081 (is-Concat!23649 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))))))

(declare-fun bm!367900 () Bool)

(declare-fun c!900080 () Bool)

(declare-fun call!367908 () (Set Context!8376))

(assert (=> bm!367900 (= call!367908 (derivationStepZipperDown!252 (ite c!900080 (regOne!30121 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (regOne!30120 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))) (ite c!900080 (ite c!899800 lt!2142745 (Context!8377 call!367731)) (Context!8377 call!367907)) (h!67035 s!2326)))))

(declare-fun b!5217070 () Bool)

(declare-fun e!3247532 () Bool)

(assert (=> b!5217070 (= e!3247532 (nullable!4973 (regOne!30120 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5217071 () Bool)

(declare-fun e!3247529 () (Set Context!8376))

(assert (=> b!5217071 (= e!3247529 (as set.empty (Set Context!8376)))))

(declare-fun b!5217072 () Bool)

(declare-fun call!367906 () (Set Context!8376))

(assert (=> b!5217072 (= e!3247529 call!367906)))

(declare-fun b!5217073 () Bool)

(declare-fun e!3247530 () (Set Context!8376))

(declare-fun e!3247531 () (Set Context!8376))

(assert (=> b!5217073 (= e!3247530 e!3247531)))

(assert (=> b!5217073 (= c!900080 (is-Union!14804 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5217074 () Bool)

(assert (=> b!5217074 (= c!900082 e!3247532)))

(declare-fun res!2215484 () Bool)

(assert (=> b!5217074 (=> (not res!2215484) (not e!3247532))))

(assert (=> b!5217074 (= res!2215484 (is-Concat!23649 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))))))

(assert (=> b!5217074 (= e!3247531 e!3247534)))

(declare-fun bm!367901 () Bool)

(declare-fun call!367903 () List!60712)

(assert (=> bm!367901 (= call!367903 call!367907)))

(declare-fun b!5217075 () Bool)

(declare-fun c!900083 () Bool)

(assert (=> b!5217075 (= c!900083 (is-Star!14804 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))))))

(assert (=> b!5217075 (= e!3247533 e!3247529)))

(declare-fun b!5217076 () Bool)

(assert (=> b!5217076 (= e!3247534 (set.union call!367908 call!367904))))

(declare-fun c!900079 () Bool)

(declare-fun d!1682110 () Bool)

(assert (=> d!1682110 (= c!900079 (and (is-ElementMatch!14804 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (= (c!899739 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (h!67035 s!2326))))))

(assert (=> d!1682110 (= (derivationStepZipperDown!252 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))) (ite c!899800 lt!2142745 (Context!8377 call!367731)) (h!67035 s!2326)) e!3247530)))

(declare-fun bm!367902 () Bool)

(assert (=> bm!367902 (= call!367906 call!367904)))

(declare-fun bm!367903 () Bool)

(assert (=> bm!367903 (= call!367905 (derivationStepZipperDown!252 (ite c!900080 (regTwo!30121 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (ite c!900082 (regTwo!30120 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (ite c!900081 (regOne!30120 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))))) (reg!15133 (ite c!899800 (regOne!30121 (regTwo!30121 (regOne!30120 r!7292))) (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))))) (ite (or c!900080 c!900082) (ite c!899800 lt!2142745 (Context!8377 call!367731)) (Context!8377 call!367903)) (h!67035 s!2326)))))

(declare-fun b!5217077 () Bool)

(assert (=> b!5217077 (= e!3247533 call!367906)))

(declare-fun b!5217078 () Bool)

(assert (=> b!5217078 (= e!3247530 (set.insert (ite c!899800 lt!2142745 (Context!8377 call!367731)) (as set.empty (Set Context!8376))))))

(declare-fun b!5217079 () Bool)

(assert (=> b!5217079 (= e!3247531 (set.union call!367908 call!367905))))

(assert (= (and d!1682110 c!900079) b!5217078))

(assert (= (and d!1682110 (not c!900079)) b!5217073))

(assert (= (and b!5217073 c!900080) b!5217079))

(assert (= (and b!5217073 (not c!900080)) b!5217074))

(assert (= (and b!5217074 res!2215484) b!5217070))

(assert (= (and b!5217074 c!900082) b!5217076))

(assert (= (and b!5217074 (not c!900082)) b!5217069))

(assert (= (and b!5217069 c!900081) b!5217077))

(assert (= (and b!5217069 (not c!900081)) b!5217075))

(assert (= (and b!5217075 c!900083) b!5217072))

(assert (= (and b!5217075 (not c!900083)) b!5217071))

(assert (= (or b!5217077 b!5217072) bm!367901))

(assert (= (or b!5217077 b!5217072) bm!367902))

(assert (= (or b!5217076 bm!367901) bm!367899))

(assert (= (or b!5217076 bm!367902) bm!367898))

(assert (= (or b!5217079 bm!367898) bm!367903))

(assert (= (or b!5217079 b!5217076) bm!367900))

(declare-fun m!6265504 () Bool)

(assert (=> b!5217078 m!6265504))

(declare-fun m!6265506 () Bool)

(assert (=> bm!367899 m!6265506))

(declare-fun m!6265508 () Bool)

(assert (=> bm!367900 m!6265508))

(declare-fun m!6265510 () Bool)

(assert (=> b!5217070 m!6265510))

(declare-fun m!6265512 () Bool)

(assert (=> bm!367903 m!6265512))

(assert (=> bm!367724 d!1682110))

(declare-fun d!1682112 () Bool)

(declare-fun c!900086 () Bool)

(assert (=> d!1682112 (= c!900086 (is-Nil!60589 lt!2142850))))

(declare-fun e!3247537 () (Set Context!8376))

(assert (=> d!1682112 (= (content!10738 lt!2142850) e!3247537)))

(declare-fun b!5217084 () Bool)

(assert (=> b!5217084 (= e!3247537 (as set.empty (Set Context!8376)))))

(declare-fun b!5217085 () Bool)

(assert (=> b!5217085 (= e!3247537 (set.union (set.insert (h!67037 lt!2142850) (as set.empty (Set Context!8376))) (content!10738 (t!373880 lt!2142850))))))

(assert (= (and d!1682112 c!900086) b!5217084))

(assert (= (and d!1682112 (not c!900086)) b!5217085))

(declare-fun m!6265514 () Bool)

(assert (=> b!5217085 m!6265514))

(declare-fun m!6265516 () Bool)

(assert (=> b!5217085 m!6265516))

(assert (=> b!5216174 d!1682112))

(assert (=> b!5216017 d!1681962))

(assert (=> b!5216166 d!1681816))

(declare-fun d!1682114 () Bool)

(assert (=> d!1682114 (= (isEmptyLang!775 lt!2142874) (is-EmptyLang!14804 lt!2142874))))

(assert (=> b!5216274 d!1682114))

(declare-fun d!1682116 () Bool)

(declare-fun c!900087 () Bool)

(assert (=> d!1682116 (= c!900087 (isEmpty!32507 (tail!10276 s!2326)))))

(declare-fun e!3247538 () Bool)

(assert (=> d!1682116 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142751 (head!11179 s!2326)) (tail!10276 s!2326)) e!3247538)))

(declare-fun b!5217086 () Bool)

(assert (=> b!5217086 (= e!3247538 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142751 (head!11179 s!2326))))))

(declare-fun b!5217087 () Bool)

(assert (=> b!5217087 (= e!3247538 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142751 (head!11179 s!2326)) (head!11179 (tail!10276 s!2326))) (tail!10276 (tail!10276 s!2326))))))

(assert (= (and d!1682116 c!900087) b!5217086))

(assert (= (and d!1682116 (not c!900087)) b!5217087))

(assert (=> d!1682116 m!6264630))

(assert (=> d!1682116 m!6264634))

(assert (=> b!5217086 m!6264712))

(declare-fun m!6265518 () Bool)

(assert (=> b!5217086 m!6265518))

(assert (=> b!5217087 m!6264630))

(assert (=> b!5217087 m!6265178))

(assert (=> b!5217087 m!6264712))

(assert (=> b!5217087 m!6265178))

(declare-fun m!6265520 () Bool)

(assert (=> b!5217087 m!6265520))

(assert (=> b!5217087 m!6264630))

(assert (=> b!5217087 m!6265182))

(assert (=> b!5217087 m!6265520))

(assert (=> b!5217087 m!6265182))

(declare-fun m!6265522 () Bool)

(assert (=> b!5217087 m!6265522))

(assert (=> b!5216119 d!1682116))

(declare-fun bs!1211745 () Bool)

(declare-fun d!1682118 () Bool)

(assert (= bs!1211745 (and d!1682118 d!1681786)))

(declare-fun lambda!261727 () Int)

(assert (=> bs!1211745 (= (= (head!11179 s!2326) (h!67035 s!2326)) (= lambda!261727 lambda!261654))))

(declare-fun bs!1211746 () Bool)

(assert (= bs!1211746 (and d!1682118 d!1681968)))

(assert (=> bs!1211746 (= (= (head!11179 s!2326) (head!11179 (t!373878 s!2326))) (= lambda!261727 lambda!261712))))

(declare-fun bs!1211747 () Bool)

(assert (= bs!1211747 (and d!1682118 d!1682016)))

(assert (=> bs!1211747 (= (= (head!11179 s!2326) (head!11179 (t!373878 s!2326))) (= lambda!261727 lambda!261720))))

(declare-fun bs!1211748 () Bool)

(assert (= bs!1211748 (and d!1682118 d!1682038)))

(assert (=> bs!1211748 (= (= (head!11179 s!2326) (head!11179 (t!373878 s!2326))) (= lambda!261727 lambda!261722))))

(declare-fun bs!1211749 () Bool)

(assert (= bs!1211749 (and d!1682118 b!5215801)))

(assert (=> bs!1211749 (= (= (head!11179 s!2326) (h!67035 s!2326)) (= lambda!261727 lambda!261632))))

(declare-fun bs!1211750 () Bool)

(assert (= bs!1211750 (and d!1682118 d!1682094)))

(assert (=> bs!1211750 (= (= (head!11179 s!2326) (head!11179 (t!373878 s!2326))) (= lambda!261727 lambda!261724))))

(assert (=> d!1682118 true))

(assert (=> d!1682118 (= (derivationStepZipper!1074 lt!2142751 (head!11179 s!2326)) (flatMap!531 lt!2142751 lambda!261727))))

(declare-fun bs!1211751 () Bool)

(assert (= bs!1211751 d!1682118))

(declare-fun m!6265524 () Bool)

(assert (=> bs!1211751 m!6265524))

(assert (=> b!5216119 d!1682118))

(assert (=> b!5216119 d!1681962))

(assert (=> b!5216119 d!1681964))

(assert (=> d!1681800 d!1681952))

(declare-fun d!1682120 () Bool)

(assert (=> d!1682120 (= (nullable!4973 (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))) (nullableFct!1382 (regOne!30120 (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun bs!1211752 () Bool)

(assert (= bs!1211752 d!1682120))

(declare-fun m!6265526 () Bool)

(assert (=> bs!1211752 m!6265526))

(assert (=> b!5216104 d!1682120))

(declare-fun d!1682122 () Bool)

(declare-fun c!900088 () Bool)

(assert (=> d!1682122 (= c!900088 (isEmpty!32507 (t!373878 s!2326)))))

(declare-fun e!3247539 () Bool)

(assert (=> d!1682122 (= (matchZipper!1048 (set.union lt!2142752 lt!2142762) (t!373878 s!2326)) e!3247539)))

(declare-fun b!5217088 () Bool)

(assert (=> b!5217088 (= e!3247539 (nullableZipper!1230 (set.union lt!2142752 lt!2142762)))))

(declare-fun b!5217089 () Bool)

(assert (=> b!5217089 (= e!3247539 (matchZipper!1048 (derivationStepZipper!1074 (set.union lt!2142752 lt!2142762) (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))))))

(assert (= (and d!1682122 c!900088) b!5217088))

(assert (= (and d!1682122 (not c!900088)) b!5217089))

(assert (=> d!1682122 m!6264716))

(declare-fun m!6265528 () Bool)

(assert (=> b!5217088 m!6265528))

(assert (=> b!5217089 m!6264720))

(assert (=> b!5217089 m!6264720))

(declare-fun m!6265530 () Bool)

(assert (=> b!5217089 m!6265530))

(assert (=> b!5217089 m!6264724))

(assert (=> b!5217089 m!6265530))

(assert (=> b!5217089 m!6264724))

(declare-fun m!6265532 () Bool)

(assert (=> b!5217089 m!6265532))

(assert (=> d!1681812 d!1682122))

(assert (=> d!1681812 d!1681810))

(declare-fun d!1682124 () Bool)

(declare-fun e!3247540 () Bool)

(assert (=> d!1682124 (= (matchZipper!1048 (set.union lt!2142752 lt!2142762) (t!373878 s!2326)) e!3247540)))

(declare-fun res!2215485 () Bool)

(assert (=> d!1682124 (=> res!2215485 e!3247540)))

(assert (=> d!1682124 (= res!2215485 (matchZipper!1048 lt!2142752 (t!373878 s!2326)))))

(assert (=> d!1682124 true))

(declare-fun _$48!816 () Unit!152482)

(assert (=> d!1682124 (= (choose!38780 lt!2142752 lt!2142762 (t!373878 s!2326)) _$48!816)))

(declare-fun b!5217090 () Bool)

(assert (=> b!5217090 (= e!3247540 (matchZipper!1048 lt!2142762 (t!373878 s!2326)))))

(assert (= (and d!1682124 (not res!2215485)) b!5217090))

(assert (=> d!1682124 m!6264758))

(assert (=> d!1682124 m!6264494))

(assert (=> b!5217090 m!6264502))

(assert (=> d!1681812 d!1682124))

(declare-fun d!1682126 () Bool)

(assert (=> d!1682126 (= (nullable!4973 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))) (nullableFct!1382 (regOne!30120 (h!67036 (exprs!4688 (h!67037 zl!343))))))))

(declare-fun bs!1211753 () Bool)

(assert (= bs!1211753 d!1682126))

(declare-fun m!6265534 () Bool)

(assert (=> bs!1211753 m!6265534))

(assert (=> b!5216065 d!1682126))

(declare-fun b!5217091 () Bool)

(declare-fun res!2215487 () Bool)

(declare-fun e!3247547 () Bool)

(assert (=> b!5217091 (=> res!2215487 e!3247547)))

(assert (=> b!5217091 (= res!2215487 (not (is-ElementMatch!14804 (regTwo!30120 r!7292))))))

(declare-fun e!3247545 () Bool)

(assert (=> b!5217091 (= e!3247545 e!3247547)))

(declare-fun b!5217092 () Bool)

(declare-fun lt!2142940 () Bool)

(assert (=> b!5217092 (= e!3247545 (not lt!2142940))))

(declare-fun bm!367904 () Bool)

(declare-fun call!367909 () Bool)

(assert (=> bm!367904 (= call!367909 (isEmpty!32507 s!2326))))

(declare-fun b!5217093 () Bool)

(declare-fun e!3247542 () Bool)

(assert (=> b!5217093 (= e!3247542 (matchR!6989 (derivativeStep!4052 (regTwo!30120 r!7292) (head!11179 s!2326)) (tail!10276 s!2326)))))

(declare-fun b!5217094 () Bool)

(declare-fun res!2215489 () Bool)

(declare-fun e!3247544 () Bool)

(assert (=> b!5217094 (=> res!2215489 e!3247544)))

(assert (=> b!5217094 (= res!2215489 (not (isEmpty!32507 (tail!10276 s!2326))))))

(declare-fun b!5217095 () Bool)

(assert (=> b!5217095 (= e!3247544 (not (= (head!11179 s!2326) (c!899739 (regTwo!30120 r!7292)))))))

(declare-fun d!1682128 () Bool)

(declare-fun e!3247546 () Bool)

(assert (=> d!1682128 e!3247546))

(declare-fun c!900091 () Bool)

(assert (=> d!1682128 (= c!900091 (is-EmptyExpr!14804 (regTwo!30120 r!7292)))))

(assert (=> d!1682128 (= lt!2142940 e!3247542)))

(declare-fun c!900089 () Bool)

(assert (=> d!1682128 (= c!900089 (isEmpty!32507 s!2326))))

(assert (=> d!1682128 (validRegex!6540 (regTwo!30120 r!7292))))

(assert (=> d!1682128 (= (matchR!6989 (regTwo!30120 r!7292) s!2326) lt!2142940)))

(declare-fun b!5217096 () Bool)

(declare-fun e!3247543 () Bool)

(assert (=> b!5217096 (= e!3247547 e!3247543)))

(declare-fun res!2215486 () Bool)

(assert (=> b!5217096 (=> (not res!2215486) (not e!3247543))))

(assert (=> b!5217096 (= res!2215486 (not lt!2142940))))

(declare-fun b!5217097 () Bool)

(assert (=> b!5217097 (= e!3247543 e!3247544)))

(declare-fun res!2215493 () Bool)

(assert (=> b!5217097 (=> res!2215493 e!3247544)))

(assert (=> b!5217097 (= res!2215493 call!367909)))

(declare-fun b!5217098 () Bool)

(declare-fun res!2215492 () Bool)

(declare-fun e!3247541 () Bool)

(assert (=> b!5217098 (=> (not res!2215492) (not e!3247541))))

(assert (=> b!5217098 (= res!2215492 (isEmpty!32507 (tail!10276 s!2326)))))

(declare-fun b!5217099 () Bool)

(declare-fun res!2215491 () Bool)

(assert (=> b!5217099 (=> res!2215491 e!3247547)))

(assert (=> b!5217099 (= res!2215491 e!3247541)))

(declare-fun res!2215488 () Bool)

(assert (=> b!5217099 (=> (not res!2215488) (not e!3247541))))

(assert (=> b!5217099 (= res!2215488 lt!2142940)))

(declare-fun b!5217100 () Bool)

(assert (=> b!5217100 (= e!3247542 (nullable!4973 (regTwo!30120 r!7292)))))

(declare-fun b!5217101 () Bool)

(assert (=> b!5217101 (= e!3247541 (= (head!11179 s!2326) (c!899739 (regTwo!30120 r!7292))))))

(declare-fun b!5217102 () Bool)

(assert (=> b!5217102 (= e!3247546 e!3247545)))

(declare-fun c!900090 () Bool)

(assert (=> b!5217102 (= c!900090 (is-EmptyLang!14804 (regTwo!30120 r!7292)))))

(declare-fun b!5217103 () Bool)

(declare-fun res!2215490 () Bool)

(assert (=> b!5217103 (=> (not res!2215490) (not e!3247541))))

(assert (=> b!5217103 (= res!2215490 (not call!367909))))

(declare-fun b!5217104 () Bool)

(assert (=> b!5217104 (= e!3247546 (= lt!2142940 call!367909))))

(assert (= (and d!1682128 c!900089) b!5217100))

(assert (= (and d!1682128 (not c!900089)) b!5217093))

(assert (= (and d!1682128 c!900091) b!5217104))

(assert (= (and d!1682128 (not c!900091)) b!5217102))

(assert (= (and b!5217102 c!900090) b!5217092))

(assert (= (and b!5217102 (not c!900090)) b!5217091))

(assert (= (and b!5217091 (not res!2215487)) b!5217099))

(assert (= (and b!5217099 res!2215488) b!5217103))

(assert (= (and b!5217103 res!2215490) b!5217098))

(assert (= (and b!5217098 res!2215492) b!5217101))

(assert (= (and b!5217099 (not res!2215491)) b!5217096))

(assert (= (and b!5217096 res!2215486) b!5217097))

(assert (= (and b!5217097 (not res!2215493)) b!5217094))

(assert (= (and b!5217094 (not res!2215489)) b!5217095))

(assert (= (or b!5217104 b!5217103 b!5217097) bm!367904))

(assert (=> b!5217095 m!6264626))

(assert (=> bm!367904 m!6264618))

(assert (=> b!5217093 m!6264626))

(assert (=> b!5217093 m!6264626))

(declare-fun m!6265536 () Bool)

(assert (=> b!5217093 m!6265536))

(assert (=> b!5217093 m!6264630))

(assert (=> b!5217093 m!6265536))

(assert (=> b!5217093 m!6264630))

(declare-fun m!6265538 () Bool)

(assert (=> b!5217093 m!6265538))

(assert (=> d!1682128 m!6264618))

(assert (=> d!1682128 m!6265418))

(assert (=> b!5217098 m!6264630))

(assert (=> b!5217098 m!6264630))

(assert (=> b!5217098 m!6264634))

(assert (=> b!5217094 m!6264630))

(assert (=> b!5217094 m!6264630))

(assert (=> b!5217094 m!6264634))

(assert (=> b!5217101 m!6264626))

(assert (=> b!5217100 m!6265422))

(assert (=> b!5216200 d!1682128))

(declare-fun bs!1211754 () Bool)

(declare-fun d!1682130 () Bool)

(assert (= bs!1211754 (and d!1682130 d!1682050)))

(declare-fun lambda!261728 () Int)

(assert (=> bs!1211754 (= lambda!261728 lambda!261723)))

(declare-fun bs!1211755 () Bool)

(assert (= bs!1211755 (and d!1682130 d!1682102)))

(assert (=> bs!1211755 (= lambda!261728 lambda!261725)))

(declare-fun bs!1211756 () Bool)

(assert (= bs!1211756 (and d!1682130 d!1682106)))

(assert (=> bs!1211756 (= lambda!261728 lambda!261726)))

(declare-fun bs!1211757 () Bool)

(assert (= bs!1211757 (and d!1682130 d!1681954)))

(assert (=> bs!1211757 (= lambda!261728 lambda!261710)))

(declare-fun bs!1211758 () Bool)

(assert (= bs!1211758 (and d!1682130 d!1681974)))

(assert (=> bs!1211758 (= lambda!261728 lambda!261713)))

(declare-fun bs!1211759 () Bool)

(assert (= bs!1211759 (and d!1682130 d!1682018)))

(assert (=> bs!1211759 (= lambda!261728 lambda!261721)))

(assert (=> d!1682130 (= (nullableZipper!1230 lt!2142747) (exists!1967 lt!2142747 lambda!261728))))

(declare-fun bs!1211760 () Bool)

(assert (= bs!1211760 d!1682130))

(declare-fun m!6265540 () Bool)

(assert (=> bs!1211760 m!6265540))

(assert (=> b!5216160 d!1682130))

(declare-fun d!1682132 () Bool)

(assert (=> d!1682132 true))

(declare-fun setRes!33164 () Bool)

(assert (=> d!1682132 setRes!33164))

(declare-fun condSetEmpty!33164 () Bool)

(declare-fun res!2215494 () (Set Context!8376))

(assert (=> d!1682132 (= condSetEmpty!33164 (= res!2215494 (as set.empty (Set Context!8376))))))

(assert (=> d!1682132 (= (choose!38778 z!1189 lambda!261632) res!2215494)))

(declare-fun setIsEmpty!33164 () Bool)

(assert (=> setIsEmpty!33164 setRes!33164))

(declare-fun e!3247548 () Bool)

(declare-fun tp!1462689 () Bool)

(declare-fun setNonEmpty!33164 () Bool)

(declare-fun setElem!33164 () Context!8376)

(assert (=> setNonEmpty!33164 (= setRes!33164 (and tp!1462689 (inv!80258 setElem!33164) e!3247548))))

(declare-fun setRest!33164 () (Set Context!8376))

(assert (=> setNonEmpty!33164 (= res!2215494 (set.union (set.insert setElem!33164 (as set.empty (Set Context!8376))) setRest!33164))))

(declare-fun b!5217105 () Bool)

(declare-fun tp!1462688 () Bool)

(assert (=> b!5217105 (= e!3247548 tp!1462688)))

(assert (= (and d!1682132 condSetEmpty!33164) setIsEmpty!33164))

(assert (= (and d!1682132 (not condSetEmpty!33164)) setNonEmpty!33164))

(assert (= setNonEmpty!33164 b!5217105))

(declare-fun m!6265542 () Bool)

(assert (=> setNonEmpty!33164 m!6265542))

(assert (=> d!1681768 d!1682132))

(declare-fun d!1682134 () Bool)

(assert (=> d!1682134 (= (isEmpty!32504 (tail!10277 (exprs!4688 (h!67037 zl!343)))) (is-Nil!60588 (tail!10277 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> b!5216237 d!1682134))

(declare-fun d!1682136 () Bool)

(assert (=> d!1682136 (= (tail!10277 (exprs!4688 (h!67037 zl!343))) (t!373879 (exprs!4688 (h!67037 zl!343))))))

(assert (=> b!5216237 d!1682136))

(declare-fun bs!1211761 () Bool)

(declare-fun d!1682138 () Bool)

(assert (= bs!1211761 (and d!1682138 d!1682010)))

(declare-fun lambda!261729 () Int)

(assert (=> bs!1211761 (= lambda!261729 lambda!261719)))

(declare-fun bs!1211762 () Bool)

(assert (= bs!1211762 (and d!1682138 d!1681822)))

(assert (=> bs!1211762 (= lambda!261729 lambda!261658)))

(declare-fun bs!1211763 () Bool)

(assert (= bs!1211763 (and d!1682138 d!1681846)))

(assert (=> bs!1211763 (= lambda!261729 lambda!261673)))

(declare-fun bs!1211764 () Bool)

(assert (= bs!1211764 (and d!1682138 d!1681848)))

(assert (=> bs!1211764 (= lambda!261729 lambda!261676)))

(declare-fun bs!1211765 () Bool)

(assert (= bs!1211765 (and d!1682138 d!1681792)))

(assert (=> bs!1211765 (= lambda!261729 lambda!261657)))

(declare-fun bs!1211766 () Bool)

(assert (= bs!1211766 (and d!1682138 d!1681842)))

(assert (=> bs!1211766 (= lambda!261729 lambda!261670)))

(declare-fun bs!1211767 () Bool)

(assert (= bs!1211767 (and d!1682138 d!1681956)))

(assert (=> bs!1211767 (= lambda!261729 lambda!261711)))

(assert (=> d!1682138 (= (inv!80258 setElem!33157) (forall!14238 (exprs!4688 setElem!33157) lambda!261729))))

(declare-fun bs!1211768 () Bool)

(assert (= bs!1211768 d!1682138))

(declare-fun m!6265544 () Bool)

(assert (=> bs!1211768 m!6265544))

(assert (=> setNonEmpty!33157 d!1682138))

(declare-fun bs!1211769 () Bool)

(declare-fun d!1682140 () Bool)

(assert (= bs!1211769 (and d!1682140 d!1682050)))

(declare-fun lambda!261730 () Int)

(assert (=> bs!1211769 (= lambda!261730 lambda!261723)))

(declare-fun bs!1211770 () Bool)

(assert (= bs!1211770 (and d!1682140 d!1682130)))

(assert (=> bs!1211770 (= lambda!261730 lambda!261728)))

(declare-fun bs!1211771 () Bool)

(assert (= bs!1211771 (and d!1682140 d!1682102)))

(assert (=> bs!1211771 (= lambda!261730 lambda!261725)))

(declare-fun bs!1211772 () Bool)

(assert (= bs!1211772 (and d!1682140 d!1682106)))

(assert (=> bs!1211772 (= lambda!261730 lambda!261726)))

(declare-fun bs!1211773 () Bool)

(assert (= bs!1211773 (and d!1682140 d!1681954)))

(assert (=> bs!1211773 (= lambda!261730 lambda!261710)))

(declare-fun bs!1211774 () Bool)

(assert (= bs!1211774 (and d!1682140 d!1681974)))

(assert (=> bs!1211774 (= lambda!261730 lambda!261713)))

(declare-fun bs!1211775 () Bool)

(assert (= bs!1211775 (and d!1682140 d!1682018)))

(assert (=> bs!1211775 (= lambda!261730 lambda!261721)))

(assert (=> d!1682140 (= (nullableZipper!1230 (set.union lt!2142760 lt!2142746)) (exists!1967 (set.union lt!2142760 lt!2142746) lambda!261730))))

(declare-fun bs!1211776 () Bool)

(assert (= bs!1211776 d!1682140))

(declare-fun m!6265546 () Bool)

(assert (=> bs!1211776 m!6265546))

(assert (=> b!5216170 d!1682140))

(declare-fun bm!367905 () Bool)

(declare-fun call!367911 () (Set Context!8376))

(declare-fun call!367912 () (Set Context!8376))

(assert (=> bm!367905 (= call!367911 call!367912)))

(declare-fun bm!367906 () Bool)

(declare-fun c!900094 () Bool)

(declare-fun c!900095 () Bool)

(declare-fun call!367914 () List!60712)

(assert (=> bm!367906 (= call!367914 ($colon$colon!1280 (exprs!4688 (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727))) (ite (or c!900095 c!900094) (regTwo!30120 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5217106 () Bool)

(declare-fun e!3247554 () (Set Context!8376))

(declare-fun e!3247553 () (Set Context!8376))

(assert (=> b!5217106 (= e!3247554 e!3247553)))

(assert (=> b!5217106 (= c!900094 (is-Concat!23649 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))))))

(declare-fun c!900093 () Bool)

(declare-fun call!367915 () (Set Context!8376))

(declare-fun bm!367907 () Bool)

(assert (=> bm!367907 (= call!367915 (derivationStepZipperDown!252 (ite c!900093 (regOne!30121 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (regOne!30120 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))))) (ite c!900093 (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727)) (Context!8377 call!367914)) (h!67035 s!2326)))))

(declare-fun b!5217107 () Bool)

(declare-fun e!3247552 () Bool)

(assert (=> b!5217107 (= e!3247552 (nullable!4973 (regOne!30120 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5217108 () Bool)

(declare-fun e!3247549 () (Set Context!8376))

(assert (=> b!5217108 (= e!3247549 (as set.empty (Set Context!8376)))))

(declare-fun b!5217109 () Bool)

(declare-fun call!367913 () (Set Context!8376))

(assert (=> b!5217109 (= e!3247549 call!367913)))

(declare-fun b!5217110 () Bool)

(declare-fun e!3247550 () (Set Context!8376))

(declare-fun e!3247551 () (Set Context!8376))

(assert (=> b!5217110 (= e!3247550 e!3247551)))

(assert (=> b!5217110 (= c!900093 (is-Union!14804 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))))))

(declare-fun b!5217111 () Bool)

(assert (=> b!5217111 (= c!900095 e!3247552)))

(declare-fun res!2215495 () Bool)

(assert (=> b!5217111 (=> (not res!2215495) (not e!3247552))))

(assert (=> b!5217111 (= res!2215495 (is-Concat!23649 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))))))

(assert (=> b!5217111 (= e!3247551 e!3247554)))

(declare-fun bm!367908 () Bool)

(declare-fun call!367910 () List!60712)

(assert (=> bm!367908 (= call!367910 call!367914)))

(declare-fun c!900096 () Bool)

(declare-fun b!5217112 () Bool)

(assert (=> b!5217112 (= c!900096 (is-Star!14804 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))))))

(assert (=> b!5217112 (= e!3247553 e!3247549)))

(declare-fun b!5217113 () Bool)

(assert (=> b!5217113 (= e!3247554 (set.union call!367915 call!367911))))

(declare-fun c!900092 () Bool)

(declare-fun d!1682142 () Bool)

(assert (=> d!1682142 (= c!900092 (and (is-ElementMatch!14804 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (= (c!899739 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (h!67035 s!2326))))))

(assert (=> d!1682142 (= (derivationStepZipperDown!252 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))) (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727)) (h!67035 s!2326)) e!3247550)))

(declare-fun bm!367909 () Bool)

(assert (=> bm!367909 (= call!367913 call!367911)))

(declare-fun bm!367910 () Bool)

(assert (=> bm!367910 (= call!367912 (derivationStepZipperDown!252 (ite c!900093 (regTwo!30121 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (ite c!900095 (regTwo!30120 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (ite c!900094 (regOne!30120 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292))))))) (reg!15133 (ite c!899800 (regTwo!30121 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899802 (regTwo!30120 (regTwo!30121 (regOne!30120 r!7292))) (ite c!899801 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292))) (reg!15133 (regTwo!30121 (regOne!30120 r!7292)))))))))) (ite (or c!900093 c!900095) (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727)) (Context!8377 call!367910)) (h!67035 s!2326)))))

(declare-fun b!5217114 () Bool)

(assert (=> b!5217114 (= e!3247553 call!367913)))

(declare-fun b!5217115 () Bool)

(assert (=> b!5217115 (= e!3247550 (set.insert (ite (or c!899800 c!899802) lt!2142745 (Context!8377 call!367727)) (as set.empty (Set Context!8376))))))

(declare-fun b!5217116 () Bool)

(assert (=> b!5217116 (= e!3247551 (set.union call!367915 call!367912))))

(assert (= (and d!1682142 c!900092) b!5217115))

(assert (= (and d!1682142 (not c!900092)) b!5217110))

(assert (= (and b!5217110 c!900093) b!5217116))

(assert (= (and b!5217110 (not c!900093)) b!5217111))

(assert (= (and b!5217111 res!2215495) b!5217107))

(assert (= (and b!5217111 c!900095) b!5217113))

(assert (= (and b!5217111 (not c!900095)) b!5217106))

(assert (= (and b!5217106 c!900094) b!5217114))

(assert (= (and b!5217106 (not c!900094)) b!5217112))

(assert (= (and b!5217112 c!900096) b!5217109))

(assert (= (and b!5217112 (not c!900096)) b!5217108))

(assert (= (or b!5217114 b!5217109) bm!367908))

(assert (= (or b!5217114 b!5217109) bm!367909))

(assert (= (or b!5217113 bm!367908) bm!367906))

(assert (= (or b!5217113 bm!367909) bm!367905))

(assert (= (or b!5217116 bm!367905) bm!367910))

(assert (= (or b!5217116 b!5217113) bm!367907))

(declare-fun m!6265548 () Bool)

(assert (=> b!5217115 m!6265548))

(declare-fun m!6265550 () Bool)

(assert (=> bm!367906 m!6265550))

(declare-fun m!6265552 () Bool)

(assert (=> bm!367907 m!6265552))

(declare-fun m!6265554 () Bool)

(assert (=> b!5217107 m!6265554))

(declare-fun m!6265556 () Bool)

(assert (=> bm!367910 m!6265556))

(assert (=> bm!367727 d!1682142))

(declare-fun d!1682144 () Bool)

(assert (=> d!1682144 true))

(assert (=> d!1682144 true))

(declare-fun res!2215498 () Bool)

(assert (=> d!1682144 (= (choose!38782 lambda!261630) res!2215498)))

(assert (=> d!1681832 d!1682144))

(assert (=> d!1681806 d!1681952))

(assert (=> bs!1211624 d!1681782))

(assert (=> bm!367697 d!1682062))

(declare-fun bs!1211777 () Bool)

(declare-fun d!1682146 () Bool)

(assert (= bs!1211777 (and d!1682146 d!1682010)))

(declare-fun lambda!261731 () Int)

(assert (=> bs!1211777 (= lambda!261731 lambda!261719)))

(declare-fun bs!1211778 () Bool)

(assert (= bs!1211778 (and d!1682146 d!1681822)))

(assert (=> bs!1211778 (= lambda!261731 lambda!261658)))

(declare-fun bs!1211779 () Bool)

(assert (= bs!1211779 (and d!1682146 d!1682138)))

(assert (=> bs!1211779 (= lambda!261731 lambda!261729)))

(declare-fun bs!1211780 () Bool)

(assert (= bs!1211780 (and d!1682146 d!1681846)))

(assert (=> bs!1211780 (= lambda!261731 lambda!261673)))

(declare-fun bs!1211781 () Bool)

(assert (= bs!1211781 (and d!1682146 d!1681848)))

(assert (=> bs!1211781 (= lambda!261731 lambda!261676)))

(declare-fun bs!1211782 () Bool)

(assert (= bs!1211782 (and d!1682146 d!1681792)))

(assert (=> bs!1211782 (= lambda!261731 lambda!261657)))

(declare-fun bs!1211783 () Bool)

(assert (= bs!1211783 (and d!1682146 d!1681842)))

(assert (=> bs!1211783 (= lambda!261731 lambda!261670)))

(declare-fun bs!1211784 () Bool)

(assert (= bs!1211784 (and d!1682146 d!1681956)))

(assert (=> bs!1211784 (= lambda!261731 lambda!261711)))

(assert (=> d!1682146 (= (inv!80258 (h!67037 (t!373880 zl!343))) (forall!14238 (exprs!4688 (h!67037 (t!373880 zl!343))) lambda!261731))))

(declare-fun bs!1211785 () Bool)

(assert (= bs!1211785 d!1682146))

(declare-fun m!6265558 () Bool)

(assert (=> bs!1211785 m!6265558))

(assert (=> b!5216288 d!1682146))

(declare-fun d!1682148 () Bool)

(assert (=> d!1682148 true))

(assert (=> d!1682148 true))

(declare-fun res!2215499 () Bool)

(assert (=> d!1682148 (= (choose!38782 lambda!261631) res!2215499)))

(assert (=> d!1681834 d!1682148))

(declare-fun d!1682150 () Bool)

(assert (=> d!1682150 (= (isEmpty!32504 (t!373879 (unfocusZipperList!246 zl!343))) (is-Nil!60588 (t!373879 (unfocusZipperList!246 zl!343))))))

(assert (=> b!5216271 d!1682150))

(declare-fun d!1682152 () Bool)

(declare-fun c!900097 () Bool)

(assert (=> d!1682152 (= c!900097 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247555 () Bool)

(assert (=> d!1682152 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142760 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247555)))

(declare-fun b!5217117 () Bool)

(assert (=> b!5217117 (= e!3247555 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142760 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5217118 () Bool)

(assert (=> b!5217118 (= e!3247555 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142760 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682152 c!900097) b!5217117))

(assert (= (and d!1682152 (not c!900097)) b!5217118))

(assert (=> d!1682152 m!6264724))

(assert (=> d!1682152 m!6265200))

(assert (=> b!5217117 m!6264742))

(declare-fun m!6265560 () Bool)

(assert (=> b!5217117 m!6265560))

(assert (=> b!5217118 m!6264724))

(assert (=> b!5217118 m!6265204))

(assert (=> b!5217118 m!6264742))

(assert (=> b!5217118 m!6265204))

(declare-fun m!6265562 () Bool)

(assert (=> b!5217118 m!6265562))

(assert (=> b!5217118 m!6264724))

(assert (=> b!5217118 m!6265208))

(assert (=> b!5217118 m!6265562))

(assert (=> b!5217118 m!6265208))

(declare-fun m!6265564 () Bool)

(assert (=> b!5217118 m!6265564))

(assert (=> b!5216159 d!1682152))

(declare-fun bs!1211786 () Bool)

(declare-fun d!1682154 () Bool)

(assert (= bs!1211786 (and d!1682154 d!1681786)))

(declare-fun lambda!261732 () Int)

(assert (=> bs!1211786 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261732 lambda!261654))))

(declare-fun bs!1211787 () Bool)

(assert (= bs!1211787 (and d!1682154 d!1682016)))

(assert (=> bs!1211787 (= lambda!261732 lambda!261720)))

(declare-fun bs!1211788 () Bool)

(assert (= bs!1211788 (and d!1682154 d!1682038)))

(assert (=> bs!1211788 (= lambda!261732 lambda!261722)))

(declare-fun bs!1211789 () Bool)

(assert (= bs!1211789 (and d!1682154 b!5215801)))

(assert (=> bs!1211789 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261732 lambda!261632))))

(declare-fun bs!1211790 () Bool)

(assert (= bs!1211790 (and d!1682154 d!1682094)))

(assert (=> bs!1211790 (= lambda!261732 lambda!261724)))

(declare-fun bs!1211791 () Bool)

(assert (= bs!1211791 (and d!1682154 d!1682118)))

(assert (=> bs!1211791 (= (= (head!11179 (t!373878 s!2326)) (head!11179 s!2326)) (= lambda!261732 lambda!261727))))

(declare-fun bs!1211792 () Bool)

(assert (= bs!1211792 (and d!1682154 d!1681968)))

(assert (=> bs!1211792 (= lambda!261732 lambda!261712)))

(assert (=> d!1682154 true))

(assert (=> d!1682154 (= (derivationStepZipper!1074 lt!2142760 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142760 lambda!261732))))

(declare-fun bs!1211793 () Bool)

(assert (= bs!1211793 d!1682154))

(declare-fun m!6265566 () Bool)

(assert (=> bs!1211793 m!6265566))

(assert (=> b!5216159 d!1682154))

(assert (=> b!5216159 d!1681970))

(assert (=> b!5216159 d!1681972))

(declare-fun b!5217119 () Bool)

(declare-fun e!3247556 () Bool)

(declare-fun e!3247561 () Bool)

(assert (=> b!5217119 (= e!3247556 e!3247561)))

(declare-fun c!900098 () Bool)

(assert (=> b!5217119 (= c!900098 (is-Union!14804 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun b!5217120 () Bool)

(declare-fun e!3247558 () Bool)

(declare-fun call!367917 () Bool)

(assert (=> b!5217120 (= e!3247558 call!367917)))

(declare-fun bm!367911 () Bool)

(declare-fun call!367916 () Bool)

(assert (=> bm!367911 (= call!367916 (nullable!4973 (ite c!900098 (regOne!30121 (regOne!30121 (regOne!30120 r!7292))) (regOne!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5217121 () Bool)

(declare-fun e!3247560 () Bool)

(assert (=> b!5217121 (= e!3247560 call!367917)))

(declare-fun d!1682156 () Bool)

(declare-fun res!2215502 () Bool)

(declare-fun e!3247557 () Bool)

(assert (=> d!1682156 (=> res!2215502 e!3247557)))

(assert (=> d!1682156 (= res!2215502 (is-EmptyExpr!14804 (regOne!30121 (regOne!30120 r!7292))))))

(assert (=> d!1682156 (= (nullableFct!1382 (regOne!30121 (regOne!30120 r!7292))) e!3247557)))

(declare-fun b!5217122 () Bool)

(assert (=> b!5217122 (= e!3247561 e!3247558)))

(declare-fun res!2215501 () Bool)

(assert (=> b!5217122 (= res!2215501 call!367916)))

(assert (=> b!5217122 (=> (not res!2215501) (not e!3247558))))

(declare-fun b!5217123 () Bool)

(declare-fun e!3247559 () Bool)

(assert (=> b!5217123 (= e!3247559 e!3247556)))

(declare-fun res!2215503 () Bool)

(assert (=> b!5217123 (=> res!2215503 e!3247556)))

(assert (=> b!5217123 (= res!2215503 (is-Star!14804 (regOne!30121 (regOne!30120 r!7292))))))

(declare-fun bm!367912 () Bool)

(assert (=> bm!367912 (= call!367917 (nullable!4973 (ite c!900098 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))))))))

(declare-fun b!5217124 () Bool)

(assert (=> b!5217124 (= e!3247561 e!3247560)))

(declare-fun res!2215500 () Bool)

(assert (=> b!5217124 (= res!2215500 call!367916)))

(assert (=> b!5217124 (=> res!2215500 e!3247560)))

(declare-fun b!5217125 () Bool)

(assert (=> b!5217125 (= e!3247557 e!3247559)))

(declare-fun res!2215504 () Bool)

(assert (=> b!5217125 (=> (not res!2215504) (not e!3247559))))

(assert (=> b!5217125 (= res!2215504 (and (not (is-EmptyLang!14804 (regOne!30121 (regOne!30120 r!7292)))) (not (is-ElementMatch!14804 (regOne!30121 (regOne!30120 r!7292))))))))

(assert (= (and d!1682156 (not res!2215502)) b!5217125))

(assert (= (and b!5217125 res!2215504) b!5217123))

(assert (= (and b!5217123 (not res!2215503)) b!5217119))

(assert (= (and b!5217119 c!900098) b!5217124))

(assert (= (and b!5217119 (not c!900098)) b!5217122))

(assert (= (and b!5217124 (not res!2215500)) b!5217121))

(assert (= (and b!5217122 res!2215501) b!5217120))

(assert (= (or b!5217121 b!5217120) bm!367912))

(assert (= (or b!5217124 b!5217122) bm!367911))

(declare-fun m!6265568 () Bool)

(assert (=> bm!367911 m!6265568))

(declare-fun m!6265570 () Bool)

(assert (=> bm!367912 m!6265570))

(assert (=> d!1681788 d!1682156))

(declare-fun d!1682158 () Bool)

(assert (=> d!1682158 (= (nullable!4973 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))) (nullableFct!1382 (regOne!30120 (regTwo!30121 (regOne!30120 r!7292)))))))

(declare-fun bs!1211794 () Bool)

(assert (= bs!1211794 d!1682158))

(declare-fun m!6265572 () Bool)

(assert (=> bs!1211794 m!6265572))

(assert (=> b!5216093 d!1682158))

(assert (=> d!1681808 d!1681952))

(declare-fun d!1682160 () Bool)

(assert (=> d!1682160 (= ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899807 c!899806) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (regOne!30121 (regOne!30120 r!7292)))) (Cons!60588 (ite (or c!899807 c!899806) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))) (regOne!30121 (regOne!30120 r!7292))) (exprs!4688 lt!2142745)))))

(assert (=> bm!367729 d!1682160))

(declare-fun d!1682162 () Bool)

(assert (=> d!1682162 (= (Exists!1985 lambda!261666) (choose!38782 lambda!261666))))

(declare-fun bs!1211795 () Bool)

(assert (= bs!1211795 d!1682162))

(declare-fun m!6265574 () Bool)

(assert (=> bs!1211795 m!6265574))

(assert (=> d!1681838 d!1682162))

(declare-fun d!1682164 () Bool)

(assert (=> d!1682164 (= (Exists!1985 lambda!261667) (choose!38782 lambda!261667))))

(declare-fun bs!1211796 () Bool)

(assert (= bs!1211796 d!1682164))

(declare-fun m!6265576 () Bool)

(assert (=> bs!1211796 m!6265576))

(assert (=> d!1681838 d!1682164))

(declare-fun bs!1211797 () Bool)

(declare-fun d!1682166 () Bool)

(assert (= bs!1211797 (and d!1682166 d!1681838)))

(declare-fun lambda!261737 () Int)

(assert (=> bs!1211797 (= lambda!261737 lambda!261666)))

(declare-fun bs!1211798 () Bool)

(assert (= bs!1211798 (and d!1682166 b!5216853)))

(assert (=> bs!1211798 (not (= lambda!261737 lambda!261717))))

(assert (=> bs!1211797 (not (= lambda!261737 lambda!261667))))

(declare-fun bs!1211799 () Bool)

(assert (= bs!1211799 (and d!1682166 b!5215977)))

(assert (=> bs!1211799 (not (= lambda!261737 lambda!261650))))

(declare-fun bs!1211800 () Bool)

(assert (= bs!1211800 (and d!1682166 d!1681836)))

(assert (=> bs!1211800 (= lambda!261737 lambda!261661)))

(declare-fun bs!1211801 () Bool)

(assert (= bs!1211801 (and d!1682166 b!5216860)))

(assert (=> bs!1211801 (not (= lambda!261737 lambda!261718))))

(declare-fun bs!1211802 () Bool)

(assert (= bs!1211802 (and d!1682166 b!5215825)))

(assert (=> bs!1211802 (not (= lambda!261737 lambda!261631))))

(declare-fun bs!1211803 () Bool)

(assert (= bs!1211803 (and d!1682166 d!1681984)))

(assert (=> bs!1211803 (= lambda!261737 lambda!261716)))

(assert (=> bs!1211802 (= lambda!261737 lambda!261630)))

(declare-fun bs!1211804 () Bool)

(assert (= bs!1211804 (and d!1682166 b!5215984)))

(assert (=> bs!1211804 (not (= lambda!261737 lambda!261651))))

(assert (=> d!1682166 true))

(assert (=> d!1682166 true))

(assert (=> d!1682166 true))

(declare-fun lambda!261738 () Int)

(assert (=> bs!1211797 (not (= lambda!261738 lambda!261666))))

(assert (=> bs!1211798 (not (= lambda!261738 lambda!261717))))

(assert (=> bs!1211797 (= lambda!261738 lambda!261667)))

(declare-fun bs!1211805 () Bool)

(assert (= bs!1211805 d!1682166))

(assert (=> bs!1211805 (not (= lambda!261738 lambda!261737))))

(assert (=> bs!1211799 (not (= lambda!261738 lambda!261650))))

(assert (=> bs!1211800 (not (= lambda!261738 lambda!261661))))

(assert (=> bs!1211801 (= (and (= (regOne!30120 r!7292) (regOne!30120 (regOne!30121 r!7292))) (= (regTwo!30120 r!7292) (regTwo!30120 (regOne!30121 r!7292)))) (= lambda!261738 lambda!261718))))

(assert (=> bs!1211802 (= lambda!261738 lambda!261631)))

(assert (=> bs!1211803 (not (= lambda!261738 lambda!261716))))

(assert (=> bs!1211802 (not (= lambda!261738 lambda!261630))))

(assert (=> bs!1211804 (= lambda!261738 lambda!261651)))

(assert (=> d!1682166 true))

(assert (=> d!1682166 true))

(assert (=> d!1682166 true))

(assert (=> d!1682166 (= (Exists!1985 lambda!261737) (Exists!1985 lambda!261738))))

(assert (=> d!1682166 true))

(declare-fun _$90!1009 () Unit!152482)

(assert (=> d!1682166 (= (choose!38784 (regOne!30120 r!7292) (regTwo!30120 r!7292) s!2326) _$90!1009)))

(declare-fun m!6265578 () Bool)

(assert (=> bs!1211805 m!6265578))

(declare-fun m!6265580 () Bool)

(assert (=> bs!1211805 m!6265580))

(assert (=> d!1681838 d!1682166))

(assert (=> d!1681838 d!1681982))

(declare-fun bs!1211806 () Bool)

(declare-fun d!1682168 () Bool)

(assert (= bs!1211806 (and d!1682168 d!1682010)))

(declare-fun lambda!261739 () Int)

(assert (=> bs!1211806 (= lambda!261739 lambda!261719)))

(declare-fun bs!1211807 () Bool)

(assert (= bs!1211807 (and d!1682168 d!1681822)))

(assert (=> bs!1211807 (= lambda!261739 lambda!261658)))

(declare-fun bs!1211808 () Bool)

(assert (= bs!1211808 (and d!1682168 d!1682138)))

(assert (=> bs!1211808 (= lambda!261739 lambda!261729)))

(declare-fun bs!1211809 () Bool)

(assert (= bs!1211809 (and d!1682168 d!1682146)))

(assert (=> bs!1211809 (= lambda!261739 lambda!261731)))

(declare-fun bs!1211810 () Bool)

(assert (= bs!1211810 (and d!1682168 d!1681846)))

(assert (=> bs!1211810 (= lambda!261739 lambda!261673)))

(declare-fun bs!1211811 () Bool)

(assert (= bs!1211811 (and d!1682168 d!1681848)))

(assert (=> bs!1211811 (= lambda!261739 lambda!261676)))

(declare-fun bs!1211812 () Bool)

(assert (= bs!1211812 (and d!1682168 d!1681792)))

(assert (=> bs!1211812 (= lambda!261739 lambda!261657)))

(declare-fun bs!1211813 () Bool)

(assert (= bs!1211813 (and d!1682168 d!1681842)))

(assert (=> bs!1211813 (= lambda!261739 lambda!261670)))

(declare-fun bs!1211814 () Bool)

(assert (= bs!1211814 (and d!1682168 d!1681956)))

(assert (=> bs!1211814 (= lambda!261739 lambda!261711)))

(declare-fun b!5217134 () Bool)

(declare-fun e!3247569 () Bool)

(declare-fun lt!2142941 () Regex!14804)

(assert (=> b!5217134 (= e!3247569 (= lt!2142941 (head!11180 (t!373879 (unfocusZipperList!246 zl!343)))))))

(declare-fun b!5217135 () Bool)

(declare-fun e!3247566 () Regex!14804)

(declare-fun e!3247568 () Regex!14804)

(assert (=> b!5217135 (= e!3247566 e!3247568)))

(declare-fun c!900100 () Bool)

(assert (=> b!5217135 (= c!900100 (is-Cons!60588 (t!373879 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5217136 () Bool)

(assert (=> b!5217136 (= e!3247566 (h!67036 (t!373879 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5217137 () Bool)

(declare-fun e!3247567 () Bool)

(declare-fun e!3247570 () Bool)

(assert (=> b!5217137 (= e!3247567 e!3247570)))

(declare-fun c!900102 () Bool)

(assert (=> b!5217137 (= c!900102 (isEmpty!32504 (t!373879 (unfocusZipperList!246 zl!343))))))

(declare-fun b!5217138 () Bool)

(assert (=> b!5217138 (= e!3247568 EmptyLang!14804)))

(declare-fun b!5217139 () Bool)

(declare-fun e!3247571 () Bool)

(assert (=> b!5217139 (= e!3247571 (isEmpty!32504 (t!373879 (t!373879 (unfocusZipperList!246 zl!343)))))))

(assert (=> d!1682168 e!3247567))

(declare-fun res!2215514 () Bool)

(assert (=> d!1682168 (=> (not res!2215514) (not e!3247567))))

(assert (=> d!1682168 (= res!2215514 (validRegex!6540 lt!2142941))))

(assert (=> d!1682168 (= lt!2142941 e!3247566)))

(declare-fun c!900101 () Bool)

(assert (=> d!1682168 (= c!900101 e!3247571)))

(declare-fun res!2215513 () Bool)

(assert (=> d!1682168 (=> (not res!2215513) (not e!3247571))))

(assert (=> d!1682168 (= res!2215513 (is-Cons!60588 (t!373879 (unfocusZipperList!246 zl!343))))))

(assert (=> d!1682168 (forall!14238 (t!373879 (unfocusZipperList!246 zl!343)) lambda!261739)))

(assert (=> d!1682168 (= (generalisedUnion!733 (t!373879 (unfocusZipperList!246 zl!343))) lt!2142941)))

(declare-fun b!5217140 () Bool)

(assert (=> b!5217140 (= e!3247570 e!3247569)))

(declare-fun c!900099 () Bool)

(assert (=> b!5217140 (= c!900099 (isEmpty!32504 (tail!10277 (t!373879 (unfocusZipperList!246 zl!343)))))))

(declare-fun b!5217141 () Bool)

(assert (=> b!5217141 (= e!3247569 (isUnion!207 lt!2142941))))

(declare-fun b!5217142 () Bool)

(assert (=> b!5217142 (= e!3247570 (isEmptyLang!775 lt!2142941))))

(declare-fun b!5217143 () Bool)

(assert (=> b!5217143 (= e!3247568 (Union!14804 (h!67036 (t!373879 (unfocusZipperList!246 zl!343))) (generalisedUnion!733 (t!373879 (t!373879 (unfocusZipperList!246 zl!343))))))))

(assert (= (and d!1682168 res!2215513) b!5217139))

(assert (= (and d!1682168 c!900101) b!5217136))

(assert (= (and d!1682168 (not c!900101)) b!5217135))

(assert (= (and b!5217135 c!900100) b!5217143))

(assert (= (and b!5217135 (not c!900100)) b!5217138))

(assert (= (and d!1682168 res!2215514) b!5217137))

(assert (= (and b!5217137 c!900102) b!5217142))

(assert (= (and b!5217137 (not c!900102)) b!5217140))

(assert (= (and b!5217140 c!900099) b!5217134))

(assert (= (and b!5217140 (not c!900099)) b!5217141))

(declare-fun m!6265582 () Bool)

(assert (=> b!5217139 m!6265582))

(declare-fun m!6265584 () Bool)

(assert (=> b!5217134 m!6265584))

(assert (=> b!5217137 m!6264850))

(declare-fun m!6265586 () Bool)

(assert (=> b!5217140 m!6265586))

(assert (=> b!5217140 m!6265586))

(declare-fun m!6265588 () Bool)

(assert (=> b!5217140 m!6265588))

(declare-fun m!6265590 () Bool)

(assert (=> b!5217141 m!6265590))

(declare-fun m!6265592 () Bool)

(assert (=> b!5217142 m!6265592))

(declare-fun m!6265594 () Bool)

(assert (=> b!5217143 m!6265594))

(declare-fun m!6265596 () Bool)

(assert (=> d!1682168 m!6265596))

(declare-fun m!6265598 () Bool)

(assert (=> d!1682168 m!6265598))

(assert (=> b!5216275 d!1682168))

(declare-fun bm!367913 () Bool)

(declare-fun call!367920 () Bool)

(declare-fun call!367918 () Bool)

(assert (=> bm!367913 (= call!367920 call!367918)))

(declare-fun b!5217144 () Bool)

(declare-fun e!3247575 () Bool)

(assert (=> b!5217144 (= e!3247575 call!367920)))

(declare-fun b!5217145 () Bool)

(declare-fun e!3247577 () Bool)

(declare-fun e!3247572 () Bool)

(assert (=> b!5217145 (= e!3247577 e!3247572)))

(declare-fun c!900103 () Bool)

(assert (=> b!5217145 (= c!900103 (is-Star!14804 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5217146 () Bool)

(declare-fun res!2215518 () Bool)

(declare-fun e!3247576 () Bool)

(assert (=> b!5217146 (=> res!2215518 e!3247576)))

(assert (=> b!5217146 (= res!2215518 (not (is-Concat!23649 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))))))))))

(declare-fun e!3247573 () Bool)

(assert (=> b!5217146 (= e!3247573 e!3247576)))

(declare-fun b!5217147 () Bool)

(assert (=> b!5217147 (= e!3247572 e!3247573)))

(declare-fun c!900104 () Bool)

(assert (=> b!5217147 (= c!900104 (is-Union!14804 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(declare-fun b!5217148 () Bool)

(declare-fun e!3247578 () Bool)

(assert (=> b!5217148 (= e!3247578 call!367920)))

(declare-fun b!5217149 () Bool)

(declare-fun e!3247574 () Bool)

(assert (=> b!5217149 (= e!3247572 e!3247574)))

(declare-fun res!2215515 () Bool)

(assert (=> b!5217149 (= res!2215515 (not (nullable!4973 (reg!15133 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))))

(assert (=> b!5217149 (=> (not res!2215515) (not e!3247574))))

(declare-fun call!367919 () Bool)

(declare-fun bm!367914 () Bool)

(assert (=> bm!367914 (= call!367919 (validRegex!6540 (ite c!900104 (regOne!30121 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))) (regOne!30120 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))))

(declare-fun b!5217150 () Bool)

(assert (=> b!5217150 (= e!3247576 e!3247578)))

(declare-fun res!2215517 () Bool)

(assert (=> b!5217150 (=> (not res!2215517) (not e!3247578))))

(assert (=> b!5217150 (= res!2215517 call!367919)))

(declare-fun d!1682170 () Bool)

(declare-fun res!2215519 () Bool)

(assert (=> d!1682170 (=> res!2215519 e!3247577)))

(assert (=> d!1682170 (= res!2215519 (is-ElementMatch!14804 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))))))

(assert (=> d!1682170 (= (validRegex!6540 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))) e!3247577)))

(declare-fun b!5217151 () Bool)

(assert (=> b!5217151 (= e!3247574 call!367918)))

(declare-fun bm!367915 () Bool)

(assert (=> bm!367915 (= call!367918 (validRegex!6540 (ite c!900103 (reg!15133 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))) (ite c!900104 (regTwo!30121 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292)))))) (regTwo!30120 (ite c!899819 (reg!15133 (regOne!30121 (regOne!30120 r!7292))) (ite c!899820 (regTwo!30121 (regOne!30121 (regOne!30120 r!7292))) (regTwo!30120 (regOne!30121 (regOne!30120 r!7292))))))))))))

(declare-fun b!5217152 () Bool)

(declare-fun res!2215516 () Bool)

(assert (=> b!5217152 (=> (not res!2215516) (not e!3247575))))

(assert (=> b!5217152 (= res!2215516 call!367919)))

(assert (=> b!5217152 (= e!3247573 e!3247575)))

(assert (= (and d!1682170 (not res!2215519)) b!5217145))

(assert (= (and b!5217145 c!900103) b!5217149))

(assert (= (and b!5217145 (not c!900103)) b!5217147))

(assert (= (and b!5217149 res!2215515) b!5217151))

(assert (= (and b!5217147 c!900104) b!5217152))

(assert (= (and b!5217147 (not c!900104)) b!5217146))

(assert (= (and b!5217152 res!2215516) b!5217144))

(assert (= (and b!5217146 (not res!2215518)) b!5217150))

(assert (= (and b!5217150 res!2215517) b!5217148))

(assert (= (or b!5217144 b!5217148) bm!367913))

(assert (= (or b!5217152 b!5217150) bm!367914))

(assert (= (or b!5217151 bm!367913) bm!367915))

(declare-fun m!6265600 () Bool)

(assert (=> b!5217149 m!6265600))

(declare-fun m!6265602 () Bool)

(assert (=> bm!367914 m!6265602))

(declare-fun m!6265604 () Bool)

(assert (=> bm!367915 m!6265604))

(assert (=> bm!367745 d!1682170))

(declare-fun bm!367916 () Bool)

(declare-fun call!367921 () (Set Context!8376))

(assert (=> bm!367916 (= call!367921 (derivationStepZipperDown!252 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))))) (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343))))))) (h!67035 s!2326)))))

(declare-fun e!3247579 () (Set Context!8376))

(declare-fun b!5217153 () Bool)

(assert (=> b!5217153 (= e!3247579 (set.union call!367921 (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343))))))) (h!67035 s!2326))))))

(declare-fun b!5217154 () Bool)

(declare-fun e!3247581 () (Set Context!8376))

(assert (=> b!5217154 (= e!3247581 (as set.empty (Set Context!8376)))))

(declare-fun b!5217155 () Bool)

(assert (=> b!5217155 (= e!3247581 call!367921)))

(declare-fun b!5217156 () Bool)

(assert (=> b!5217156 (= e!3247579 e!3247581)))

(declare-fun c!900106 () Bool)

(assert (=> b!5217156 (= c!900106 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))))))))

(declare-fun b!5217157 () Bool)

(declare-fun e!3247580 () Bool)

(assert (=> b!5217157 (= e!3247580 (nullable!4973 (h!67036 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343))))))))))

(declare-fun d!1682172 () Bool)

(declare-fun c!900105 () Bool)

(assert (=> d!1682172 (= c!900105 e!3247580)))

(declare-fun res!2215520 () Bool)

(assert (=> d!1682172 (=> (not res!2215520) (not e!3247580))))

(assert (=> d!1682172 (= res!2215520 (is-Cons!60588 (exprs!4688 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))))))))

(assert (=> d!1682172 (= (derivationStepZipperUp!176 (Context!8377 (t!373879 (exprs!4688 (h!67037 zl!343)))) (h!67035 s!2326)) e!3247579)))

(assert (= (and d!1682172 res!2215520) b!5217157))

(assert (= (and d!1682172 c!900105) b!5217153))

(assert (= (and d!1682172 (not c!900105)) b!5217156))

(assert (= (and b!5217156 c!900106) b!5217155))

(assert (= (and b!5217156 (not c!900106)) b!5217154))

(assert (= (or b!5217153 b!5217155) bm!367916))

(declare-fun m!6265606 () Bool)

(assert (=> bm!367916 m!6265606))

(declare-fun m!6265608 () Bool)

(assert (=> b!5217153 m!6265608))

(declare-fun m!6265610 () Bool)

(assert (=> b!5217157 m!6265610))

(assert (=> b!5216037 d!1682172))

(declare-fun b!5217158 () Bool)

(declare-fun res!2215522 () Bool)

(declare-fun e!3247588 () Bool)

(assert (=> b!5217158 (=> res!2215522 e!3247588)))

(assert (=> b!5217158 (= res!2215522 (not (is-ElementMatch!14804 (regOne!30120 r!7292))))))

(declare-fun e!3247586 () Bool)

(assert (=> b!5217158 (= e!3247586 e!3247588)))

(declare-fun b!5217159 () Bool)

(declare-fun lt!2142942 () Bool)

(assert (=> b!5217159 (= e!3247586 (not lt!2142942))))

(declare-fun bm!367917 () Bool)

(declare-fun call!367922 () Bool)

(assert (=> bm!367917 (= call!367922 (isEmpty!32507 (_1!35306 (get!20818 lt!2142861))))))

(declare-fun b!5217160 () Bool)

(declare-fun e!3247583 () Bool)

(assert (=> b!5217160 (= e!3247583 (matchR!6989 (derivativeStep!4052 (regOne!30120 r!7292) (head!11179 (_1!35306 (get!20818 lt!2142861)))) (tail!10276 (_1!35306 (get!20818 lt!2142861)))))))

(declare-fun b!5217161 () Bool)

(declare-fun res!2215524 () Bool)

(declare-fun e!3247585 () Bool)

(assert (=> b!5217161 (=> res!2215524 e!3247585)))

(assert (=> b!5217161 (= res!2215524 (not (isEmpty!32507 (tail!10276 (_1!35306 (get!20818 lt!2142861))))))))

(declare-fun b!5217162 () Bool)

(assert (=> b!5217162 (= e!3247585 (not (= (head!11179 (_1!35306 (get!20818 lt!2142861))) (c!899739 (regOne!30120 r!7292)))))))

(declare-fun d!1682174 () Bool)

(declare-fun e!3247587 () Bool)

(assert (=> d!1682174 e!3247587))

(declare-fun c!900109 () Bool)

(assert (=> d!1682174 (= c!900109 (is-EmptyExpr!14804 (regOne!30120 r!7292)))))

(assert (=> d!1682174 (= lt!2142942 e!3247583)))

(declare-fun c!900107 () Bool)

(assert (=> d!1682174 (= c!900107 (isEmpty!32507 (_1!35306 (get!20818 lt!2142861))))))

(assert (=> d!1682174 (validRegex!6540 (regOne!30120 r!7292))))

(assert (=> d!1682174 (= (matchR!6989 (regOne!30120 r!7292) (_1!35306 (get!20818 lt!2142861))) lt!2142942)))

(declare-fun b!5217163 () Bool)

(declare-fun e!3247584 () Bool)

(assert (=> b!5217163 (= e!3247588 e!3247584)))

(declare-fun res!2215521 () Bool)

(assert (=> b!5217163 (=> (not res!2215521) (not e!3247584))))

(assert (=> b!5217163 (= res!2215521 (not lt!2142942))))

(declare-fun b!5217164 () Bool)

(assert (=> b!5217164 (= e!3247584 e!3247585)))

(declare-fun res!2215528 () Bool)

(assert (=> b!5217164 (=> res!2215528 e!3247585)))

(assert (=> b!5217164 (= res!2215528 call!367922)))

(declare-fun b!5217165 () Bool)

(declare-fun res!2215527 () Bool)

(declare-fun e!3247582 () Bool)

(assert (=> b!5217165 (=> (not res!2215527) (not e!3247582))))

(assert (=> b!5217165 (= res!2215527 (isEmpty!32507 (tail!10276 (_1!35306 (get!20818 lt!2142861)))))))

(declare-fun b!5217166 () Bool)

(declare-fun res!2215526 () Bool)

(assert (=> b!5217166 (=> res!2215526 e!3247588)))

(assert (=> b!5217166 (= res!2215526 e!3247582)))

(declare-fun res!2215523 () Bool)

(assert (=> b!5217166 (=> (not res!2215523) (not e!3247582))))

(assert (=> b!5217166 (= res!2215523 lt!2142942)))

(declare-fun b!5217167 () Bool)

(assert (=> b!5217167 (= e!3247583 (nullable!4973 (regOne!30120 r!7292)))))

(declare-fun b!5217168 () Bool)

(assert (=> b!5217168 (= e!3247582 (= (head!11179 (_1!35306 (get!20818 lt!2142861))) (c!899739 (regOne!30120 r!7292))))))

(declare-fun b!5217169 () Bool)

(assert (=> b!5217169 (= e!3247587 e!3247586)))

(declare-fun c!900108 () Bool)

(assert (=> b!5217169 (= c!900108 (is-EmptyLang!14804 (regOne!30120 r!7292)))))

(declare-fun b!5217170 () Bool)

(declare-fun res!2215525 () Bool)

(assert (=> b!5217170 (=> (not res!2215525) (not e!3247582))))

(assert (=> b!5217170 (= res!2215525 (not call!367922))))

(declare-fun b!5217171 () Bool)

(assert (=> b!5217171 (= e!3247587 (= lt!2142942 call!367922))))

(assert (= (and d!1682174 c!900107) b!5217167))

(assert (= (and d!1682174 (not c!900107)) b!5217160))

(assert (= (and d!1682174 c!900109) b!5217171))

(assert (= (and d!1682174 (not c!900109)) b!5217169))

(assert (= (and b!5217169 c!900108) b!5217159))

(assert (= (and b!5217169 (not c!900108)) b!5217158))

(assert (= (and b!5217158 (not res!2215522)) b!5217166))

(assert (= (and b!5217166 res!2215523) b!5217170))

(assert (= (and b!5217170 res!2215525) b!5217165))

(assert (= (and b!5217165 res!2215527) b!5217168))

(assert (= (and b!5217166 (not res!2215526)) b!5217163))

(assert (= (and b!5217163 res!2215521) b!5217164))

(assert (= (and b!5217164 (not res!2215528)) b!5217161))

(assert (= (and b!5217161 (not res!2215524)) b!5217162))

(assert (= (or b!5217171 b!5217170 b!5217164) bm!367917))

(declare-fun m!6265612 () Bool)

(assert (=> b!5217162 m!6265612))

(declare-fun m!6265614 () Bool)

(assert (=> bm!367917 m!6265614))

(assert (=> b!5217160 m!6265612))

(assert (=> b!5217160 m!6265612))

(declare-fun m!6265616 () Bool)

(assert (=> b!5217160 m!6265616))

(declare-fun m!6265618 () Bool)

(assert (=> b!5217160 m!6265618))

(assert (=> b!5217160 m!6265616))

(assert (=> b!5217160 m!6265618))

(declare-fun m!6265620 () Bool)

(assert (=> b!5217160 m!6265620))

(assert (=> d!1682174 m!6265614))

(assert (=> d!1682174 m!6264796))

(assert (=> b!5217165 m!6265618))

(assert (=> b!5217165 m!6265618))

(declare-fun m!6265622 () Bool)

(assert (=> b!5217165 m!6265622))

(assert (=> b!5217161 m!6265618))

(assert (=> b!5217161 m!6265618))

(assert (=> b!5217161 m!6265622))

(assert (=> b!5217168 m!6265612))

(assert (=> b!5217167 m!6265196))

(assert (=> b!5216197 d!1682174))

(assert (=> b!5216197 d!1682072))

(declare-fun d!1682176 () Bool)

(declare-fun c!900110 () Bool)

(assert (=> d!1682176 (= c!900110 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247589 () Bool)

(assert (=> d!1682176 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142746 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247589)))

(declare-fun b!5217172 () Bool)

(assert (=> b!5217172 (= e!3247589 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142746 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5217173 () Bool)

(assert (=> b!5217173 (= e!3247589 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142746 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682176 c!900110) b!5217172))

(assert (= (and d!1682176 (not c!900110)) b!5217173))

(assert (=> d!1682176 m!6264724))

(assert (=> d!1682176 m!6265200))

(assert (=> b!5217172 m!6264846))

(declare-fun m!6265624 () Bool)

(assert (=> b!5217172 m!6265624))

(assert (=> b!5217173 m!6264724))

(assert (=> b!5217173 m!6265204))

(assert (=> b!5217173 m!6264846))

(assert (=> b!5217173 m!6265204))

(declare-fun m!6265626 () Bool)

(assert (=> b!5217173 m!6265626))

(assert (=> b!5217173 m!6264724))

(assert (=> b!5217173 m!6265208))

(assert (=> b!5217173 m!6265626))

(assert (=> b!5217173 m!6265208))

(declare-fun m!6265628 () Bool)

(assert (=> b!5217173 m!6265628))

(assert (=> b!5216245 d!1682176))

(declare-fun bs!1211815 () Bool)

(declare-fun d!1682178 () Bool)

(assert (= bs!1211815 (and d!1682178 d!1682016)))

(declare-fun lambda!261740 () Int)

(assert (=> bs!1211815 (= lambda!261740 lambda!261720)))

(declare-fun bs!1211816 () Bool)

(assert (= bs!1211816 (and d!1682178 d!1682038)))

(assert (=> bs!1211816 (= lambda!261740 lambda!261722)))

(declare-fun bs!1211817 () Bool)

(assert (= bs!1211817 (and d!1682178 b!5215801)))

(assert (=> bs!1211817 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261740 lambda!261632))))

(declare-fun bs!1211818 () Bool)

(assert (= bs!1211818 (and d!1682178 d!1682094)))

(assert (=> bs!1211818 (= lambda!261740 lambda!261724)))

(declare-fun bs!1211819 () Bool)

(assert (= bs!1211819 (and d!1682178 d!1681786)))

(assert (=> bs!1211819 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261740 lambda!261654))))

(declare-fun bs!1211820 () Bool)

(assert (= bs!1211820 (and d!1682178 d!1682154)))

(assert (=> bs!1211820 (= lambda!261740 lambda!261732)))

(declare-fun bs!1211821 () Bool)

(assert (= bs!1211821 (and d!1682178 d!1682118)))

(assert (=> bs!1211821 (= (= (head!11179 (t!373878 s!2326)) (head!11179 s!2326)) (= lambda!261740 lambda!261727))))

(declare-fun bs!1211822 () Bool)

(assert (= bs!1211822 (and d!1682178 d!1681968)))

(assert (=> bs!1211822 (= lambda!261740 lambda!261712)))

(assert (=> d!1682178 true))

(assert (=> d!1682178 (= (derivationStepZipper!1074 lt!2142746 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142746 lambda!261740))))

(declare-fun bs!1211823 () Bool)

(assert (= bs!1211823 d!1682178))

(declare-fun m!6265630 () Bool)

(assert (=> bs!1211823 m!6265630))

(assert (=> b!5216245 d!1682178))

(assert (=> b!5216245 d!1681970))

(assert (=> b!5216245 d!1681972))

(declare-fun d!1682180 () Bool)

(assert (=> d!1682180 (= (nullable!4973 (reg!15133 (regOne!30121 (regOne!30120 r!7292)))) (nullableFct!1382 (reg!15133 (regOne!30121 (regOne!30120 r!7292)))))))

(declare-fun bs!1211824 () Bool)

(assert (= bs!1211824 d!1682180))

(declare-fun m!6265632 () Bool)

(assert (=> bs!1211824 m!6265632))

(assert (=> b!5216154 d!1682180))

(declare-fun b!5217175 () Bool)

(declare-fun e!3247590 () List!60711)

(assert (=> b!5217175 (= e!3247590 (Cons!60587 (h!67035 (_1!35306 (get!20818 lt!2142861))) (++!13210 (t!373878 (_1!35306 (get!20818 lt!2142861))) (_2!35306 (get!20818 lt!2142861)))))))

(declare-fun d!1682182 () Bool)

(declare-fun e!3247591 () Bool)

(assert (=> d!1682182 e!3247591))

(declare-fun res!2215530 () Bool)

(assert (=> d!1682182 (=> (not res!2215530) (not e!3247591))))

(declare-fun lt!2142943 () List!60711)

(assert (=> d!1682182 (= res!2215530 (= (content!10740 lt!2142943) (set.union (content!10740 (_1!35306 (get!20818 lt!2142861))) (content!10740 (_2!35306 (get!20818 lt!2142861))))))))

(assert (=> d!1682182 (= lt!2142943 e!3247590)))

(declare-fun c!900111 () Bool)

(assert (=> d!1682182 (= c!900111 (is-Nil!60587 (_1!35306 (get!20818 lt!2142861))))))

(assert (=> d!1682182 (= (++!13210 (_1!35306 (get!20818 lt!2142861)) (_2!35306 (get!20818 lt!2142861))) lt!2142943)))

(declare-fun b!5217177 () Bool)

(assert (=> b!5217177 (= e!3247591 (or (not (= (_2!35306 (get!20818 lt!2142861)) Nil!60587)) (= lt!2142943 (_1!35306 (get!20818 lt!2142861)))))))

(declare-fun b!5217176 () Bool)

(declare-fun res!2215529 () Bool)

(assert (=> b!5217176 (=> (not res!2215529) (not e!3247591))))

(assert (=> b!5217176 (= res!2215529 (= (size!39722 lt!2142943) (+ (size!39722 (_1!35306 (get!20818 lt!2142861))) (size!39722 (_2!35306 (get!20818 lt!2142861))))))))

(declare-fun b!5217174 () Bool)

(assert (=> b!5217174 (= e!3247590 (_2!35306 (get!20818 lt!2142861)))))

(assert (= (and d!1682182 c!900111) b!5217174))

(assert (= (and d!1682182 (not c!900111)) b!5217175))

(assert (= (and d!1682182 res!2215530) b!5217176))

(assert (= (and b!5217176 res!2215529) b!5217177))

(declare-fun m!6265634 () Bool)

(assert (=> b!5217175 m!6265634))

(declare-fun m!6265636 () Bool)

(assert (=> d!1682182 m!6265636))

(declare-fun m!6265638 () Bool)

(assert (=> d!1682182 m!6265638))

(declare-fun m!6265640 () Bool)

(assert (=> d!1682182 m!6265640))

(declare-fun m!6265642 () Bool)

(assert (=> b!5217176 m!6265642))

(declare-fun m!6265644 () Bool)

(assert (=> b!5217176 m!6265644))

(declare-fun m!6265646 () Bool)

(assert (=> b!5217176 m!6265646))

(assert (=> b!5216193 d!1682182))

(assert (=> b!5216193 d!1682072))

(assert (=> d!1681844 d!1681952))

(declare-fun d!1682184 () Bool)

(assert (=> d!1682184 (= ($colon$colon!1280 (exprs!4688 lt!2142745) (ite (or c!899789 c!899788) (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67036 (exprs!4688 (h!67037 zl!343))))) (Cons!60588 (ite (or c!899789 c!899788) (regTwo!30120 (h!67036 (exprs!4688 (h!67037 zl!343)))) (h!67036 (exprs!4688 (h!67037 zl!343)))) (exprs!4688 lt!2142745)))))

(assert (=> bm!367714 d!1682184))

(assert (=> b!5216041 d!1681772))

(declare-fun d!1682186 () Bool)

(declare-fun res!2215535 () Bool)

(declare-fun e!3247596 () Bool)

(assert (=> d!1682186 (=> res!2215535 e!3247596)))

(assert (=> d!1682186 (= res!2215535 (is-Nil!60589 lt!2142850))))

(assert (=> d!1682186 (= (noDuplicate!1186 lt!2142850) e!3247596)))

(declare-fun b!5217182 () Bool)

(declare-fun e!3247597 () Bool)

(assert (=> b!5217182 (= e!3247596 e!3247597)))

(declare-fun res!2215536 () Bool)

(assert (=> b!5217182 (=> (not res!2215536) (not e!3247597))))

(declare-fun contains!19669 (List!60713 Context!8376) Bool)

(assert (=> b!5217182 (= res!2215536 (not (contains!19669 (t!373880 lt!2142850) (h!67037 lt!2142850))))))

(declare-fun b!5217183 () Bool)

(assert (=> b!5217183 (= e!3247597 (noDuplicate!1186 (t!373880 lt!2142850)))))

(assert (= (and d!1682186 (not res!2215535)) b!5217182))

(assert (= (and b!5217182 res!2215536) b!5217183))

(declare-fun m!6265648 () Bool)

(assert (=> b!5217182 m!6265648))

(declare-fun m!6265650 () Bool)

(assert (=> b!5217183 m!6265650))

(assert (=> d!1681824 d!1682186))

(declare-fun d!1682188 () Bool)

(declare-fun e!3247605 () Bool)

(assert (=> d!1682188 e!3247605))

(declare-fun res!2215541 () Bool)

(assert (=> d!1682188 (=> (not res!2215541) (not e!3247605))))

(declare-fun res!2215542 () List!60713)

(assert (=> d!1682188 (= res!2215541 (noDuplicate!1186 res!2215542))))

(declare-fun e!3247606 () Bool)

(assert (=> d!1682188 e!3247606))

(assert (=> d!1682188 (= (choose!38781 z!1189) res!2215542)))

(declare-fun b!5217191 () Bool)

(declare-fun e!3247604 () Bool)

(declare-fun tp!1462695 () Bool)

(assert (=> b!5217191 (= e!3247604 tp!1462695)))

(declare-fun tp!1462694 () Bool)

(declare-fun b!5217190 () Bool)

(assert (=> b!5217190 (= e!3247606 (and (inv!80258 (h!67037 res!2215542)) e!3247604 tp!1462694))))

(declare-fun b!5217192 () Bool)

(assert (=> b!5217192 (= e!3247605 (= (content!10738 res!2215542) z!1189))))

(assert (= b!5217190 b!5217191))

(assert (= (and d!1682188 (is-Cons!60589 res!2215542)) b!5217190))

(assert (= (and d!1682188 res!2215541) b!5217192))

(declare-fun m!6265652 () Bool)

(assert (=> d!1682188 m!6265652))

(declare-fun m!6265654 () Bool)

(assert (=> b!5217190 m!6265654))

(declare-fun m!6265656 () Bool)

(assert (=> b!5217192 m!6265656))

(assert (=> d!1681824 d!1682188))

(declare-fun d!1682190 () Bool)

(assert (=> d!1682190 (= (nullable!4973 r!7292) (nullableFct!1382 r!7292))))

(declare-fun bs!1211825 () Bool)

(assert (= bs!1211825 d!1682190))

(declare-fun m!6265658 () Bool)

(assert (=> bs!1211825 m!6265658))

(assert (=> b!5216022 d!1682190))

(declare-fun bs!1211826 () Bool)

(declare-fun b!5217196 () Bool)

(assert (= bs!1211826 (and b!5217196 d!1681838)))

(declare-fun lambda!261741 () Int)

(assert (=> bs!1211826 (not (= lambda!261741 lambda!261666))))

(declare-fun bs!1211827 () Bool)

(assert (= bs!1211827 (and b!5217196 d!1682166)))

(assert (=> bs!1211827 (not (= lambda!261741 lambda!261738))))

(declare-fun bs!1211828 () Bool)

(assert (= bs!1211828 (and b!5217196 b!5216853)))

(assert (=> bs!1211828 (= (and (= (reg!15133 (regTwo!30121 r!7292)) (reg!15133 (regOne!30121 r!7292))) (= (regTwo!30121 r!7292) (regOne!30121 r!7292))) (= lambda!261741 lambda!261717))))

(assert (=> bs!1211826 (not (= lambda!261741 lambda!261667))))

(assert (=> bs!1211827 (not (= lambda!261741 lambda!261737))))

(declare-fun bs!1211829 () Bool)

(assert (= bs!1211829 (and b!5217196 b!5215977)))

(assert (=> bs!1211829 (= (and (= (reg!15133 (regTwo!30121 r!7292)) (reg!15133 r!7292)) (= (regTwo!30121 r!7292) r!7292)) (= lambda!261741 lambda!261650))))

(declare-fun bs!1211830 () Bool)

(assert (= bs!1211830 (and b!5217196 d!1681836)))

(assert (=> bs!1211830 (not (= lambda!261741 lambda!261661))))

(declare-fun bs!1211831 () Bool)

(assert (= bs!1211831 (and b!5217196 b!5216860)))

(assert (=> bs!1211831 (not (= lambda!261741 lambda!261718))))

(declare-fun bs!1211832 () Bool)

(assert (= bs!1211832 (and b!5217196 b!5215825)))

(assert (=> bs!1211832 (not (= lambda!261741 lambda!261631))))

(declare-fun bs!1211833 () Bool)

(assert (= bs!1211833 (and b!5217196 d!1681984)))

(assert (=> bs!1211833 (not (= lambda!261741 lambda!261716))))

(assert (=> bs!1211832 (not (= lambda!261741 lambda!261630))))

(declare-fun bs!1211834 () Bool)

(assert (= bs!1211834 (and b!5217196 b!5215984)))

(assert (=> bs!1211834 (not (= lambda!261741 lambda!261651))))

(assert (=> b!5217196 true))

(assert (=> b!5217196 true))

(declare-fun bs!1211835 () Bool)

(declare-fun b!5217203 () Bool)

(assert (= bs!1211835 (and b!5217203 d!1681838)))

(declare-fun lambda!261742 () Int)

(assert (=> bs!1211835 (not (= lambda!261742 lambda!261666))))

(declare-fun bs!1211836 () Bool)

(assert (= bs!1211836 (and b!5217203 d!1682166)))

(assert (=> bs!1211836 (= (and (= (regOne!30120 (regTwo!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regTwo!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261742 lambda!261738))))

(declare-fun bs!1211837 () Bool)

(assert (= bs!1211837 (and b!5217203 b!5216853)))

(assert (=> bs!1211837 (not (= lambda!261742 lambda!261717))))

(assert (=> bs!1211835 (= (and (= (regOne!30120 (regTwo!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regTwo!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261742 lambda!261667))))

(declare-fun bs!1211838 () Bool)

(assert (= bs!1211838 (and b!5217203 b!5215977)))

(assert (=> bs!1211838 (not (= lambda!261742 lambda!261650))))

(declare-fun bs!1211839 () Bool)

(assert (= bs!1211839 (and b!5217203 d!1681836)))

(assert (=> bs!1211839 (not (= lambda!261742 lambda!261661))))

(declare-fun bs!1211840 () Bool)

(assert (= bs!1211840 (and b!5217203 b!5216860)))

(assert (=> bs!1211840 (= (and (= (regOne!30120 (regTwo!30121 r!7292)) (regOne!30120 (regOne!30121 r!7292))) (= (regTwo!30120 (regTwo!30121 r!7292)) (regTwo!30120 (regOne!30121 r!7292)))) (= lambda!261742 lambda!261718))))

(assert (=> bs!1211836 (not (= lambda!261742 lambda!261737))))

(declare-fun bs!1211841 () Bool)

(assert (= bs!1211841 (and b!5217203 b!5217196)))

(assert (=> bs!1211841 (not (= lambda!261742 lambda!261741))))

(declare-fun bs!1211842 () Bool)

(assert (= bs!1211842 (and b!5217203 b!5215825)))

(assert (=> bs!1211842 (= (and (= (regOne!30120 (regTwo!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regTwo!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261742 lambda!261631))))

(declare-fun bs!1211843 () Bool)

(assert (= bs!1211843 (and b!5217203 d!1681984)))

(assert (=> bs!1211843 (not (= lambda!261742 lambda!261716))))

(assert (=> bs!1211842 (not (= lambda!261742 lambda!261630))))

(declare-fun bs!1211844 () Bool)

(assert (= bs!1211844 (and b!5217203 b!5215984)))

(assert (=> bs!1211844 (= (and (= (regOne!30120 (regTwo!30121 r!7292)) (regOne!30120 r!7292)) (= (regTwo!30120 (regTwo!30121 r!7292)) (regTwo!30120 r!7292))) (= lambda!261742 lambda!261651))))

(assert (=> b!5217203 true))

(assert (=> b!5217203 true))

(declare-fun bm!367918 () Bool)

(declare-fun call!367923 () Bool)

(assert (=> bm!367918 (= call!367923 (isEmpty!32507 s!2326))))

(declare-fun b!5217193 () Bool)

(declare-fun c!900112 () Bool)

(assert (=> b!5217193 (= c!900112 (is-ElementMatch!14804 (regTwo!30121 r!7292)))))

(declare-fun e!3247611 () Bool)

(declare-fun e!3247613 () Bool)

(assert (=> b!5217193 (= e!3247611 e!3247613)))

(declare-fun b!5217194 () Bool)

(declare-fun e!3247612 () Bool)

(declare-fun e!3247610 () Bool)

(assert (=> b!5217194 (= e!3247612 e!3247610)))

(declare-fun c!900114 () Bool)

(assert (=> b!5217194 (= c!900114 (is-Star!14804 (regTwo!30121 r!7292)))))

(declare-fun call!367924 () Bool)

(declare-fun bm!367919 () Bool)

(assert (=> bm!367919 (= call!367924 (Exists!1985 (ite c!900114 lambda!261741 lambda!261742)))))

(declare-fun b!5217195 () Bool)

(declare-fun res!2215544 () Bool)

(declare-fun e!3247607 () Bool)

(assert (=> b!5217195 (=> res!2215544 e!3247607)))

(assert (=> b!5217195 (= res!2215544 call!367923)))

(assert (=> b!5217195 (= e!3247610 e!3247607)))

(assert (=> b!5217196 (= e!3247607 call!367924)))

(declare-fun b!5217197 () Bool)

(declare-fun e!3247608 () Bool)

(assert (=> b!5217197 (= e!3247608 (matchRSpec!1907 (regTwo!30121 (regTwo!30121 r!7292)) s!2326))))

(declare-fun b!5217198 () Bool)

(assert (=> b!5217198 (= e!3247612 e!3247608)))

(declare-fun res!2215545 () Bool)

(assert (=> b!5217198 (= res!2215545 (matchRSpec!1907 (regOne!30121 (regTwo!30121 r!7292)) s!2326))))

(assert (=> b!5217198 (=> res!2215545 e!3247608)))

(declare-fun b!5217199 () Bool)

(declare-fun c!900113 () Bool)

(assert (=> b!5217199 (= c!900113 (is-Union!14804 (regTwo!30121 r!7292)))))

(assert (=> b!5217199 (= e!3247613 e!3247612)))

(declare-fun d!1682192 () Bool)

(declare-fun c!900115 () Bool)

(assert (=> d!1682192 (= c!900115 (is-EmptyExpr!14804 (regTwo!30121 r!7292)))))

(declare-fun e!3247609 () Bool)

(assert (=> d!1682192 (= (matchRSpec!1907 (regTwo!30121 r!7292) s!2326) e!3247609)))

(declare-fun b!5217200 () Bool)

(assert (=> b!5217200 (= e!3247609 call!367923)))

(declare-fun b!5217201 () Bool)

(assert (=> b!5217201 (= e!3247609 e!3247611)))

(declare-fun res!2215543 () Bool)

(assert (=> b!5217201 (= res!2215543 (not (is-EmptyLang!14804 (regTwo!30121 r!7292))))))

(assert (=> b!5217201 (=> (not res!2215543) (not e!3247611))))

(declare-fun b!5217202 () Bool)

(assert (=> b!5217202 (= e!3247613 (= s!2326 (Cons!60587 (c!899739 (regTwo!30121 r!7292)) Nil!60587)))))

(assert (=> b!5217203 (= e!3247610 call!367924)))

(assert (= (and d!1682192 c!900115) b!5217200))

(assert (= (and d!1682192 (not c!900115)) b!5217201))

(assert (= (and b!5217201 res!2215543) b!5217193))

(assert (= (and b!5217193 c!900112) b!5217202))

(assert (= (and b!5217193 (not c!900112)) b!5217199))

(assert (= (and b!5217199 c!900113) b!5217198))

(assert (= (and b!5217199 (not c!900113)) b!5217194))

(assert (= (and b!5217198 (not res!2215545)) b!5217197))

(assert (= (and b!5217194 c!900114) b!5217195))

(assert (= (and b!5217194 (not c!900114)) b!5217203))

(assert (= (and b!5217195 (not res!2215544)) b!5217196))

(assert (= (or b!5217196 b!5217203) bm!367919))

(assert (= (or b!5217200 b!5217195) bm!367918))

(assert (=> bm!367918 m!6264618))

(declare-fun m!6265660 () Bool)

(assert (=> bm!367919 m!6265660))

(declare-fun m!6265662 () Bool)

(assert (=> b!5217197 m!6265662))

(declare-fun m!6265664 () Bool)

(assert (=> b!5217198 m!6265664))

(assert (=> b!5215978 d!1682192))

(assert (=> d!1681764 d!1682062))

(assert (=> d!1681764 d!1681802))

(declare-fun d!1682194 () Bool)

(declare-fun c!900116 () Bool)

(assert (=> d!1682194 (= c!900116 (isEmpty!32507 (tail!10276 (t!373878 s!2326))))))

(declare-fun e!3247614 () Bool)

(assert (=> d!1682194 (= (matchZipper!1048 (derivationStepZipper!1074 lt!2142747 (head!11179 (t!373878 s!2326))) (tail!10276 (t!373878 s!2326))) e!3247614)))

(declare-fun b!5217204 () Bool)

(assert (=> b!5217204 (= e!3247614 (nullableZipper!1230 (derivationStepZipper!1074 lt!2142747 (head!11179 (t!373878 s!2326)))))))

(declare-fun b!5217205 () Bool)

(assert (=> b!5217205 (= e!3247614 (matchZipper!1048 (derivationStepZipper!1074 (derivationStepZipper!1074 lt!2142747 (head!11179 (t!373878 s!2326))) (head!11179 (tail!10276 (t!373878 s!2326)))) (tail!10276 (tail!10276 (t!373878 s!2326)))))))

(assert (= (and d!1682194 c!900116) b!5217204))

(assert (= (and d!1682194 (not c!900116)) b!5217205))

(assert (=> d!1682194 m!6264724))

(assert (=> d!1682194 m!6265200))

(assert (=> b!5217204 m!6264748))

(declare-fun m!6265666 () Bool)

(assert (=> b!5217204 m!6265666))

(assert (=> b!5217205 m!6264724))

(assert (=> b!5217205 m!6265204))

(assert (=> b!5217205 m!6264748))

(assert (=> b!5217205 m!6265204))

(declare-fun m!6265668 () Bool)

(assert (=> b!5217205 m!6265668))

(assert (=> b!5217205 m!6264724))

(assert (=> b!5217205 m!6265208))

(assert (=> b!5217205 m!6265668))

(assert (=> b!5217205 m!6265208))

(declare-fun m!6265670 () Bool)

(assert (=> b!5217205 m!6265670))

(assert (=> b!5216161 d!1682194))

(declare-fun bs!1211845 () Bool)

(declare-fun d!1682196 () Bool)

(assert (= bs!1211845 (and d!1682196 d!1682178)))

(declare-fun lambda!261743 () Int)

(assert (=> bs!1211845 (= lambda!261743 lambda!261740)))

(declare-fun bs!1211846 () Bool)

(assert (= bs!1211846 (and d!1682196 d!1682016)))

(assert (=> bs!1211846 (= lambda!261743 lambda!261720)))

(declare-fun bs!1211847 () Bool)

(assert (= bs!1211847 (and d!1682196 d!1682038)))

(assert (=> bs!1211847 (= lambda!261743 lambda!261722)))

(declare-fun bs!1211848 () Bool)

(assert (= bs!1211848 (and d!1682196 b!5215801)))

(assert (=> bs!1211848 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261743 lambda!261632))))

(declare-fun bs!1211849 () Bool)

(assert (= bs!1211849 (and d!1682196 d!1682094)))

(assert (=> bs!1211849 (= lambda!261743 lambda!261724)))

(declare-fun bs!1211850 () Bool)

(assert (= bs!1211850 (and d!1682196 d!1681786)))

(assert (=> bs!1211850 (= (= (head!11179 (t!373878 s!2326)) (h!67035 s!2326)) (= lambda!261743 lambda!261654))))

(declare-fun bs!1211851 () Bool)

(assert (= bs!1211851 (and d!1682196 d!1682154)))

(assert (=> bs!1211851 (= lambda!261743 lambda!261732)))

(declare-fun bs!1211852 () Bool)

(assert (= bs!1211852 (and d!1682196 d!1682118)))

(assert (=> bs!1211852 (= (= (head!11179 (t!373878 s!2326)) (head!11179 s!2326)) (= lambda!261743 lambda!261727))))

(declare-fun bs!1211853 () Bool)

(assert (= bs!1211853 (and d!1682196 d!1681968)))

(assert (=> bs!1211853 (= lambda!261743 lambda!261712)))

(assert (=> d!1682196 true))

(assert (=> d!1682196 (= (derivationStepZipper!1074 lt!2142747 (head!11179 (t!373878 s!2326))) (flatMap!531 lt!2142747 lambda!261743))))

(declare-fun bs!1211854 () Bool)

(assert (= bs!1211854 d!1682196))

(declare-fun m!6265672 () Bool)

(assert (=> bs!1211854 m!6265672))

(assert (=> b!5216161 d!1682196))

(assert (=> b!5216161 d!1681970))

(assert (=> b!5216161 d!1681972))

(assert (=> d!1681798 d!1682062))

(declare-fun condSetEmpty!33165 () Bool)

(assert (=> setNonEmpty!33157 (= condSetEmpty!33165 (= setRest!33157 (as set.empty (Set Context!8376))))))

(declare-fun setRes!33165 () Bool)

(assert (=> setNonEmpty!33157 (= tp!1462576 setRes!33165)))

(declare-fun setIsEmpty!33165 () Bool)

(assert (=> setIsEmpty!33165 setRes!33165))

(declare-fun setElem!33165 () Context!8376)

(declare-fun setNonEmpty!33165 () Bool)

(declare-fun e!3247615 () Bool)

(declare-fun tp!1462696 () Bool)

(assert (=> setNonEmpty!33165 (= setRes!33165 (and tp!1462696 (inv!80258 setElem!33165) e!3247615))))

(declare-fun setRest!33165 () (Set Context!8376))

(assert (=> setNonEmpty!33165 (= setRest!33157 (set.union (set.insert setElem!33165 (as set.empty (Set Context!8376))) setRest!33165))))

(declare-fun b!5217206 () Bool)

(declare-fun tp!1462697 () Bool)

(assert (=> b!5217206 (= e!3247615 tp!1462697)))

(assert (= (and setNonEmpty!33157 condSetEmpty!33165) setIsEmpty!33165))

(assert (= (and setNonEmpty!33157 (not condSetEmpty!33165)) setNonEmpty!33165))

(assert (= setNonEmpty!33165 b!5217206))

(declare-fun m!6265674 () Bool)

(assert (=> setNonEmpty!33165 m!6265674))

(declare-fun b!5217208 () Bool)

(declare-fun e!3247616 () Bool)

(declare-fun tp!1462702 () Bool)

(declare-fun tp!1462700 () Bool)

(assert (=> b!5217208 (= e!3247616 (and tp!1462702 tp!1462700))))

(assert (=> b!5216331 (= tp!1462614 e!3247616)))

(declare-fun b!5217210 () Bool)

(declare-fun tp!1462698 () Bool)

(declare-fun tp!1462699 () Bool)

(assert (=> b!5217210 (= e!3247616 (and tp!1462698 tp!1462699))))

(declare-fun b!5217209 () Bool)

(declare-fun tp!1462701 () Bool)

(assert (=> b!5217209 (= e!3247616 tp!1462701)))

(declare-fun b!5217207 () Bool)

(assert (=> b!5217207 (= e!3247616 tp_is_empty!38861)))

(assert (= (and b!5216331 (is-ElementMatch!14804 (regOne!30121 (regOne!30121 r!7292)))) b!5217207))

(assert (= (and b!5216331 (is-Concat!23649 (regOne!30121 (regOne!30121 r!7292)))) b!5217208))

(assert (= (and b!5216331 (is-Star!14804 (regOne!30121 (regOne!30121 r!7292)))) b!5217209))

(assert (= (and b!5216331 (is-Union!14804 (regOne!30121 (regOne!30121 r!7292)))) b!5217210))

(declare-fun b!5217212 () Bool)

(declare-fun e!3247617 () Bool)

(declare-fun tp!1462707 () Bool)

(declare-fun tp!1462705 () Bool)

(assert (=> b!5217212 (= e!3247617 (and tp!1462707 tp!1462705))))

(assert (=> b!5216331 (= tp!1462615 e!3247617)))

(declare-fun b!5217214 () Bool)

(declare-fun tp!1462703 () Bool)

(declare-fun tp!1462704 () Bool)

(assert (=> b!5217214 (= e!3247617 (and tp!1462703 tp!1462704))))

(declare-fun b!5217213 () Bool)

(declare-fun tp!1462706 () Bool)

(assert (=> b!5217213 (= e!3247617 tp!1462706)))

(declare-fun b!5217211 () Bool)

(assert (=> b!5217211 (= e!3247617 tp_is_empty!38861)))

(assert (= (and b!5216331 (is-ElementMatch!14804 (regTwo!30121 (regOne!30121 r!7292)))) b!5217211))

(assert (= (and b!5216331 (is-Concat!23649 (regTwo!30121 (regOne!30121 r!7292)))) b!5217212))

(assert (= (and b!5216331 (is-Star!14804 (regTwo!30121 (regOne!30121 r!7292)))) b!5217213))

(assert (= (and b!5216331 (is-Union!14804 (regTwo!30121 (regOne!30121 r!7292)))) b!5217214))

(declare-fun b!5217215 () Bool)

(declare-fun e!3247618 () Bool)

(declare-fun tp!1462708 () Bool)

(declare-fun tp!1462709 () Bool)

(assert (=> b!5217215 (= e!3247618 (and tp!1462708 tp!1462709))))

(assert (=> b!5216294 (= tp!1462577 e!3247618)))

(assert (= (and b!5216294 (is-Cons!60588 (exprs!4688 setElem!33157))) b!5217215))

(declare-fun b!5217217 () Bool)

(declare-fun e!3247619 () Bool)

(declare-fun tp!1462714 () Bool)

(declare-fun tp!1462712 () Bool)

(assert (=> b!5217217 (= e!3247619 (and tp!1462714 tp!1462712))))

(assert (=> b!5216329 (= tp!1462618 e!3247619)))

(declare-fun b!5217219 () Bool)

(declare-fun tp!1462710 () Bool)

(declare-fun tp!1462711 () Bool)

(assert (=> b!5217219 (= e!3247619 (and tp!1462710 tp!1462711))))

(declare-fun b!5217218 () Bool)

(declare-fun tp!1462713 () Bool)

(assert (=> b!5217218 (= e!3247619 tp!1462713)))

(declare-fun b!5217216 () Bool)

(assert (=> b!5217216 (= e!3247619 tp_is_empty!38861)))

(assert (= (and b!5216329 (is-ElementMatch!14804 (regOne!30120 (regOne!30121 r!7292)))) b!5217216))

(assert (= (and b!5216329 (is-Concat!23649 (regOne!30120 (regOne!30121 r!7292)))) b!5217217))

(assert (= (and b!5216329 (is-Star!14804 (regOne!30120 (regOne!30121 r!7292)))) b!5217218))

(assert (= (and b!5216329 (is-Union!14804 (regOne!30120 (regOne!30121 r!7292)))) b!5217219))

(declare-fun b!5217221 () Bool)

(declare-fun e!3247620 () Bool)

(declare-fun tp!1462719 () Bool)

(declare-fun tp!1462717 () Bool)

(assert (=> b!5217221 (= e!3247620 (and tp!1462719 tp!1462717))))

(assert (=> b!5216329 (= tp!1462616 e!3247620)))

(declare-fun b!5217223 () Bool)

(declare-fun tp!1462715 () Bool)

(declare-fun tp!1462716 () Bool)

(assert (=> b!5217223 (= e!3247620 (and tp!1462715 tp!1462716))))

(declare-fun b!5217222 () Bool)

(declare-fun tp!1462718 () Bool)

(assert (=> b!5217222 (= e!3247620 tp!1462718)))

(declare-fun b!5217220 () Bool)

(assert (=> b!5217220 (= e!3247620 tp_is_empty!38861)))

(assert (= (and b!5216329 (is-ElementMatch!14804 (regTwo!30120 (regOne!30121 r!7292)))) b!5217220))

(assert (= (and b!5216329 (is-Concat!23649 (regTwo!30120 (regOne!30121 r!7292)))) b!5217221))

(assert (= (and b!5216329 (is-Star!14804 (regTwo!30120 (regOne!30121 r!7292)))) b!5217222))

(assert (= (and b!5216329 (is-Union!14804 (regTwo!30120 (regOne!30121 r!7292)))) b!5217223))

(declare-fun b!5217225 () Bool)

(declare-fun e!3247621 () Bool)

(declare-fun tp!1462724 () Bool)

(declare-fun tp!1462722 () Bool)

(assert (=> b!5217225 (= e!3247621 (and tp!1462724 tp!1462722))))

(assert (=> b!5216308 (= tp!1462588 e!3247621)))

(declare-fun b!5217227 () Bool)

(declare-fun tp!1462720 () Bool)

(declare-fun tp!1462721 () Bool)

(assert (=> b!5217227 (= e!3247621 (and tp!1462720 tp!1462721))))

(declare-fun b!5217226 () Bool)

(declare-fun tp!1462723 () Bool)

(assert (=> b!5217226 (= e!3247621 tp!1462723)))

(declare-fun b!5217224 () Bool)

(assert (=> b!5217224 (= e!3247621 tp_is_empty!38861)))

(assert (= (and b!5216308 (is-ElementMatch!14804 (regOne!30121 (reg!15133 r!7292)))) b!5217224))

(assert (= (and b!5216308 (is-Concat!23649 (regOne!30121 (reg!15133 r!7292)))) b!5217225))

(assert (= (and b!5216308 (is-Star!14804 (regOne!30121 (reg!15133 r!7292)))) b!5217226))

(assert (= (and b!5216308 (is-Union!14804 (regOne!30121 (reg!15133 r!7292)))) b!5217227))

(declare-fun b!5217229 () Bool)

(declare-fun e!3247622 () Bool)

(declare-fun tp!1462729 () Bool)

(declare-fun tp!1462727 () Bool)

(assert (=> b!5217229 (= e!3247622 (and tp!1462729 tp!1462727))))

(assert (=> b!5216308 (= tp!1462589 e!3247622)))

(declare-fun b!5217231 () Bool)

(declare-fun tp!1462725 () Bool)

(declare-fun tp!1462726 () Bool)

(assert (=> b!5217231 (= e!3247622 (and tp!1462725 tp!1462726))))

(declare-fun b!5217230 () Bool)

(declare-fun tp!1462728 () Bool)

(assert (=> b!5217230 (= e!3247622 tp!1462728)))

(declare-fun b!5217228 () Bool)

(assert (=> b!5217228 (= e!3247622 tp_is_empty!38861)))

(assert (= (and b!5216308 (is-ElementMatch!14804 (regTwo!30121 (reg!15133 r!7292)))) b!5217228))

(assert (= (and b!5216308 (is-Concat!23649 (regTwo!30121 (reg!15133 r!7292)))) b!5217229))

(assert (= (and b!5216308 (is-Star!14804 (regTwo!30121 (reg!15133 r!7292)))) b!5217230))

(assert (= (and b!5216308 (is-Union!14804 (regTwo!30121 (reg!15133 r!7292)))) b!5217231))

(declare-fun b!5217233 () Bool)

(declare-fun e!3247623 () Bool)

(declare-fun tp!1462734 () Bool)

(declare-fun tp!1462732 () Bool)

(assert (=> b!5217233 (= e!3247623 (and tp!1462734 tp!1462732))))

(assert (=> b!5216330 (= tp!1462617 e!3247623)))

(declare-fun b!5217235 () Bool)

(declare-fun tp!1462730 () Bool)

(declare-fun tp!1462731 () Bool)

(assert (=> b!5217235 (= e!3247623 (and tp!1462730 tp!1462731))))

(declare-fun b!5217234 () Bool)

(declare-fun tp!1462733 () Bool)

(assert (=> b!5217234 (= e!3247623 tp!1462733)))

(declare-fun b!5217232 () Bool)

(assert (=> b!5217232 (= e!3247623 tp_is_empty!38861)))

(assert (= (and b!5216330 (is-ElementMatch!14804 (reg!15133 (regOne!30121 r!7292)))) b!5217232))

(assert (= (and b!5216330 (is-Concat!23649 (reg!15133 (regOne!30121 r!7292)))) b!5217233))

(assert (= (and b!5216330 (is-Star!14804 (reg!15133 (regOne!30121 r!7292)))) b!5217234))

(assert (= (and b!5216330 (is-Union!14804 (reg!15133 (regOne!30121 r!7292)))) b!5217235))

(declare-fun b!5217237 () Bool)

(declare-fun e!3247624 () Bool)

(declare-fun tp!1462739 () Bool)

(declare-fun tp!1462737 () Bool)

(assert (=> b!5217237 (= e!3247624 (and tp!1462739 tp!1462737))))

(assert (=> b!5216311 (= tp!1462596 e!3247624)))

(declare-fun b!5217239 () Bool)

(declare-fun tp!1462735 () Bool)

(declare-fun tp!1462736 () Bool)

(assert (=> b!5217239 (= e!3247624 (and tp!1462735 tp!1462736))))

(declare-fun b!5217238 () Bool)

(declare-fun tp!1462738 () Bool)

(assert (=> b!5217238 (= e!3247624 tp!1462738)))

(declare-fun b!5217236 () Bool)

(assert (=> b!5217236 (= e!3247624 tp_is_empty!38861)))

(assert (= (and b!5216311 (is-ElementMatch!14804 (reg!15133 (regOne!30120 r!7292)))) b!5217236))

(assert (= (and b!5216311 (is-Concat!23649 (reg!15133 (regOne!30120 r!7292)))) b!5217237))

(assert (= (and b!5216311 (is-Star!14804 (reg!15133 (regOne!30120 r!7292)))) b!5217238))

(assert (= (and b!5216311 (is-Union!14804 (reg!15133 (regOne!30120 r!7292)))) b!5217239))

(declare-fun b!5217241 () Bool)

(declare-fun e!3247625 () Bool)

(declare-fun tp!1462744 () Bool)

(declare-fun tp!1462742 () Bool)

(assert (=> b!5217241 (= e!3247625 (and tp!1462744 tp!1462742))))

(assert (=> b!5216310 (= tp!1462597 e!3247625)))

(declare-fun b!5217243 () Bool)

(declare-fun tp!1462740 () Bool)

(declare-fun tp!1462741 () Bool)

(assert (=> b!5217243 (= e!3247625 (and tp!1462740 tp!1462741))))

(declare-fun b!5217242 () Bool)

(declare-fun tp!1462743 () Bool)

(assert (=> b!5217242 (= e!3247625 tp!1462743)))

(declare-fun b!5217240 () Bool)

(assert (=> b!5217240 (= e!3247625 tp_is_empty!38861)))

(assert (= (and b!5216310 (is-ElementMatch!14804 (regOne!30120 (regOne!30120 r!7292)))) b!5217240))

(assert (= (and b!5216310 (is-Concat!23649 (regOne!30120 (regOne!30120 r!7292)))) b!5217241))

(assert (= (and b!5216310 (is-Star!14804 (regOne!30120 (regOne!30120 r!7292)))) b!5217242))

(assert (= (and b!5216310 (is-Union!14804 (regOne!30120 (regOne!30120 r!7292)))) b!5217243))

(declare-fun b!5217245 () Bool)

(declare-fun e!3247626 () Bool)

(declare-fun tp!1462749 () Bool)

(declare-fun tp!1462747 () Bool)

(assert (=> b!5217245 (= e!3247626 (and tp!1462749 tp!1462747))))

(assert (=> b!5216310 (= tp!1462595 e!3247626)))

(declare-fun b!5217247 () Bool)

(declare-fun tp!1462745 () Bool)

(declare-fun tp!1462746 () Bool)

(assert (=> b!5217247 (= e!3247626 (and tp!1462745 tp!1462746))))

(declare-fun b!5217246 () Bool)

(declare-fun tp!1462748 () Bool)

(assert (=> b!5217246 (= e!3247626 tp!1462748)))

(declare-fun b!5217244 () Bool)

(assert (=> b!5217244 (= e!3247626 tp_is_empty!38861)))

(assert (= (and b!5216310 (is-ElementMatch!14804 (regTwo!30120 (regOne!30120 r!7292)))) b!5217244))

(assert (= (and b!5216310 (is-Concat!23649 (regTwo!30120 (regOne!30120 r!7292)))) b!5217245))

(assert (= (and b!5216310 (is-Star!14804 (regTwo!30120 (regOne!30120 r!7292)))) b!5217246))

(assert (= (and b!5216310 (is-Union!14804 (regTwo!30120 (regOne!30120 r!7292)))) b!5217247))

(declare-fun b!5217249 () Bool)

(declare-fun e!3247628 () Bool)

(declare-fun tp!1462750 () Bool)

(assert (=> b!5217249 (= e!3247628 tp!1462750)))

(declare-fun e!3247627 () Bool)

(declare-fun tp!1462751 () Bool)

(declare-fun b!5217248 () Bool)

(assert (=> b!5217248 (= e!3247627 (and (inv!80258 (h!67037 (t!373880 (t!373880 zl!343)))) e!3247628 tp!1462751))))

(assert (=> b!5216288 (= tp!1462571 e!3247627)))

(assert (= b!5217248 b!5217249))

(assert (= (and b!5216288 (is-Cons!60589 (t!373880 (t!373880 zl!343)))) b!5217248))

(declare-fun m!6265676 () Bool)

(assert (=> b!5217248 m!6265676))

(declare-fun b!5217251 () Bool)

(declare-fun e!3247629 () Bool)

(declare-fun tp!1462756 () Bool)

(declare-fun tp!1462754 () Bool)

(assert (=> b!5217251 (= e!3247629 (and tp!1462756 tp!1462754))))

(assert (=> b!5216312 (= tp!1462593 e!3247629)))

(declare-fun b!5217253 () Bool)

(declare-fun tp!1462752 () Bool)

(declare-fun tp!1462753 () Bool)

(assert (=> b!5217253 (= e!3247629 (and tp!1462752 tp!1462753))))

(declare-fun b!5217252 () Bool)

(declare-fun tp!1462755 () Bool)

(assert (=> b!5217252 (= e!3247629 tp!1462755)))

(declare-fun b!5217250 () Bool)

(assert (=> b!5217250 (= e!3247629 tp_is_empty!38861)))

(assert (= (and b!5216312 (is-ElementMatch!14804 (regOne!30121 (regOne!30120 r!7292)))) b!5217250))

(assert (= (and b!5216312 (is-Concat!23649 (regOne!30121 (regOne!30120 r!7292)))) b!5217251))

(assert (= (and b!5216312 (is-Star!14804 (regOne!30121 (regOne!30120 r!7292)))) b!5217252))

(assert (= (and b!5216312 (is-Union!14804 (regOne!30121 (regOne!30120 r!7292)))) b!5217253))

(declare-fun b!5217255 () Bool)

(declare-fun e!3247630 () Bool)

(declare-fun tp!1462761 () Bool)

(declare-fun tp!1462759 () Bool)

(assert (=> b!5217255 (= e!3247630 (and tp!1462761 tp!1462759))))

(assert (=> b!5216312 (= tp!1462594 e!3247630)))

(declare-fun b!5217257 () Bool)

(declare-fun tp!1462757 () Bool)

(declare-fun tp!1462758 () Bool)

(assert (=> b!5217257 (= e!3247630 (and tp!1462757 tp!1462758))))

(declare-fun b!5217256 () Bool)

(declare-fun tp!1462760 () Bool)

(assert (=> b!5217256 (= e!3247630 tp!1462760)))

(declare-fun b!5217254 () Bool)

(assert (=> b!5217254 (= e!3247630 tp_is_empty!38861)))

(assert (= (and b!5216312 (is-ElementMatch!14804 (regTwo!30121 (regOne!30120 r!7292)))) b!5217254))

(assert (= (and b!5216312 (is-Concat!23649 (regTwo!30121 (regOne!30120 r!7292)))) b!5217255))

(assert (= (and b!5216312 (is-Star!14804 (regTwo!30121 (regOne!30120 r!7292)))) b!5217256))

(assert (= (and b!5216312 (is-Union!14804 (regTwo!30121 (regOne!30120 r!7292)))) b!5217257))

(declare-fun b!5217258 () Bool)

(declare-fun e!3247631 () Bool)

(declare-fun tp!1462762 () Bool)

(assert (=> b!5217258 (= e!3247631 (and tp_is_empty!38861 tp!1462762))))

(assert (=> b!5216326 (= tp!1462611 e!3247631)))

(assert (= (and b!5216326 (is-Cons!60587 (t!373878 (t!373878 s!2326)))) b!5217258))

(declare-fun b!5217259 () Bool)

(declare-fun e!3247632 () Bool)

(declare-fun tp!1462763 () Bool)

(declare-fun tp!1462764 () Bool)

(assert (=> b!5217259 (= e!3247632 (and tp!1462763 tp!1462764))))

(assert (=> b!5216289 (= tp!1462570 e!3247632)))

(assert (= (and b!5216289 (is-Cons!60588 (exprs!4688 (h!67037 (t!373880 zl!343))))) b!5217259))

(declare-fun b!5217261 () Bool)

(declare-fun e!3247633 () Bool)

(declare-fun tp!1462769 () Bool)

(declare-fun tp!1462767 () Bool)

(assert (=> b!5217261 (= e!3247633 (and tp!1462769 tp!1462767))))

(assert (=> b!5216327 (= tp!1462612 e!3247633)))

(declare-fun b!5217263 () Bool)

(declare-fun tp!1462765 () Bool)

(declare-fun tp!1462766 () Bool)

(assert (=> b!5217263 (= e!3247633 (and tp!1462765 tp!1462766))))

(declare-fun b!5217262 () Bool)

(declare-fun tp!1462768 () Bool)

(assert (=> b!5217262 (= e!3247633 tp!1462768)))

(declare-fun b!5217260 () Bool)

(assert (=> b!5217260 (= e!3247633 tp_is_empty!38861)))

(assert (= (and b!5216327 (is-ElementMatch!14804 (h!67036 (exprs!4688 (h!67037 zl!343))))) b!5217260))

(assert (= (and b!5216327 (is-Concat!23649 (h!67036 (exprs!4688 (h!67037 zl!343))))) b!5217261))

(assert (= (and b!5216327 (is-Star!14804 (h!67036 (exprs!4688 (h!67037 zl!343))))) b!5217262))

(assert (= (and b!5216327 (is-Union!14804 (h!67036 (exprs!4688 (h!67037 zl!343))))) b!5217263))

(declare-fun b!5217264 () Bool)

(declare-fun e!3247634 () Bool)

(declare-fun tp!1462770 () Bool)

(declare-fun tp!1462771 () Bool)

(assert (=> b!5217264 (= e!3247634 (and tp!1462770 tp!1462771))))

(assert (=> b!5216327 (= tp!1462613 e!3247634)))

(assert (= (and b!5216327 (is-Cons!60588 (t!373879 (exprs!4688 (h!67037 zl!343))))) b!5217264))

(declare-fun b!5217266 () Bool)

(declare-fun e!3247635 () Bool)

(declare-fun tp!1462776 () Bool)

(declare-fun tp!1462774 () Bool)

(assert (=> b!5217266 (= e!3247635 (and tp!1462776 tp!1462774))))

(assert (=> b!5216333 (= tp!1462623 e!3247635)))

(declare-fun b!5217268 () Bool)

(declare-fun tp!1462772 () Bool)

(declare-fun tp!1462773 () Bool)

(assert (=> b!5217268 (= e!3247635 (and tp!1462772 tp!1462773))))

(declare-fun b!5217267 () Bool)

(declare-fun tp!1462775 () Bool)

(assert (=> b!5217267 (= e!3247635 tp!1462775)))

(declare-fun b!5217265 () Bool)

(assert (=> b!5217265 (= e!3247635 tp_is_empty!38861)))

(assert (= (and b!5216333 (is-ElementMatch!14804 (regOne!30120 (regTwo!30121 r!7292)))) b!5217265))

(assert (= (and b!5216333 (is-Concat!23649 (regOne!30120 (regTwo!30121 r!7292)))) b!5217266))

(assert (= (and b!5216333 (is-Star!14804 (regOne!30120 (regTwo!30121 r!7292)))) b!5217267))

(assert (= (and b!5216333 (is-Union!14804 (regOne!30120 (regTwo!30121 r!7292)))) b!5217268))

(declare-fun b!5217270 () Bool)

(declare-fun e!3247636 () Bool)

(declare-fun tp!1462781 () Bool)

(declare-fun tp!1462779 () Bool)

(assert (=> b!5217270 (= e!3247636 (and tp!1462781 tp!1462779))))

(assert (=> b!5216333 (= tp!1462621 e!3247636)))

(declare-fun b!5217272 () Bool)

(declare-fun tp!1462777 () Bool)

(declare-fun tp!1462778 () Bool)

(assert (=> b!5217272 (= e!3247636 (and tp!1462777 tp!1462778))))

(declare-fun b!5217271 () Bool)

(declare-fun tp!1462780 () Bool)

(assert (=> b!5217271 (= e!3247636 tp!1462780)))

(declare-fun b!5217269 () Bool)

(assert (=> b!5217269 (= e!3247636 tp_is_empty!38861)))

(assert (= (and b!5216333 (is-ElementMatch!14804 (regTwo!30120 (regTwo!30121 r!7292)))) b!5217269))

(assert (= (and b!5216333 (is-Concat!23649 (regTwo!30120 (regTwo!30121 r!7292)))) b!5217270))

(assert (= (and b!5216333 (is-Star!14804 (regTwo!30120 (regTwo!30121 r!7292)))) b!5217271))

(assert (= (and b!5216333 (is-Union!14804 (regTwo!30120 (regTwo!30121 r!7292)))) b!5217272))

(declare-fun b!5217274 () Bool)

(declare-fun e!3247637 () Bool)

(declare-fun tp!1462786 () Bool)

(declare-fun tp!1462784 () Bool)

(assert (=> b!5217274 (= e!3247637 (and tp!1462786 tp!1462784))))

(assert (=> b!5216335 (= tp!1462619 e!3247637)))

(declare-fun b!5217276 () Bool)

(declare-fun tp!1462782 () Bool)

(declare-fun tp!1462783 () Bool)

(assert (=> b!5217276 (= e!3247637 (and tp!1462782 tp!1462783))))

(declare-fun b!5217275 () Bool)

(declare-fun tp!1462785 () Bool)

(assert (=> b!5217275 (= e!3247637 tp!1462785)))

(declare-fun b!5217273 () Bool)

(assert (=> b!5217273 (= e!3247637 tp_is_empty!38861)))

(assert (= (and b!5216335 (is-ElementMatch!14804 (regOne!30121 (regTwo!30121 r!7292)))) b!5217273))

(assert (= (and b!5216335 (is-Concat!23649 (regOne!30121 (regTwo!30121 r!7292)))) b!5217274))

(assert (= (and b!5216335 (is-Star!14804 (regOne!30121 (regTwo!30121 r!7292)))) b!5217275))

(assert (= (and b!5216335 (is-Union!14804 (regOne!30121 (regTwo!30121 r!7292)))) b!5217276))

(declare-fun b!5217278 () Bool)

(declare-fun e!3247638 () Bool)

(declare-fun tp!1462791 () Bool)

(declare-fun tp!1462789 () Bool)

(assert (=> b!5217278 (= e!3247638 (and tp!1462791 tp!1462789))))

(assert (=> b!5216335 (= tp!1462620 e!3247638)))

(declare-fun b!5217280 () Bool)

(declare-fun tp!1462787 () Bool)

(declare-fun tp!1462788 () Bool)

(assert (=> b!5217280 (= e!3247638 (and tp!1462787 tp!1462788))))

(declare-fun b!5217279 () Bool)

(declare-fun tp!1462790 () Bool)

(assert (=> b!5217279 (= e!3247638 tp!1462790)))

(declare-fun b!5217277 () Bool)

(assert (=> b!5217277 (= e!3247638 tp_is_empty!38861)))

(assert (= (and b!5216335 (is-ElementMatch!14804 (regTwo!30121 (regTwo!30121 r!7292)))) b!5217277))

(assert (= (and b!5216335 (is-Concat!23649 (regTwo!30121 (regTwo!30121 r!7292)))) b!5217278))

(assert (= (and b!5216335 (is-Star!14804 (regTwo!30121 (regTwo!30121 r!7292)))) b!5217279))

(assert (= (and b!5216335 (is-Union!14804 (regTwo!30121 (regTwo!30121 r!7292)))) b!5217280))

(declare-fun b!5217282 () Bool)

(declare-fun e!3247639 () Bool)

(declare-fun tp!1462796 () Bool)

(declare-fun tp!1462794 () Bool)

(assert (=> b!5217282 (= e!3247639 (and tp!1462796 tp!1462794))))

(assert (=> b!5216334 (= tp!1462622 e!3247639)))

(declare-fun b!5217284 () Bool)

(declare-fun tp!1462792 () Bool)

(declare-fun tp!1462793 () Bool)

(assert (=> b!5217284 (= e!3247639 (and tp!1462792 tp!1462793))))

(declare-fun b!5217283 () Bool)

(declare-fun tp!1462795 () Bool)

(assert (=> b!5217283 (= e!3247639 tp!1462795)))

(declare-fun b!5217281 () Bool)

(assert (=> b!5217281 (= e!3247639 tp_is_empty!38861)))

(assert (= (and b!5216334 (is-ElementMatch!14804 (reg!15133 (regTwo!30121 r!7292)))) b!5217281))

(assert (= (and b!5216334 (is-Concat!23649 (reg!15133 (regTwo!30121 r!7292)))) b!5217282))

(assert (= (and b!5216334 (is-Star!14804 (reg!15133 (regTwo!30121 r!7292)))) b!5217283))

(assert (= (and b!5216334 (is-Union!14804 (reg!15133 (regTwo!30121 r!7292)))) b!5217284))

(declare-fun b!5217286 () Bool)

(declare-fun e!3247640 () Bool)

(declare-fun tp!1462801 () Bool)

(declare-fun tp!1462799 () Bool)

(assert (=> b!5217286 (= e!3247640 (and tp!1462801 tp!1462799))))

(assert (=> b!5216306 (= tp!1462592 e!3247640)))

(declare-fun b!5217288 () Bool)

(declare-fun tp!1462797 () Bool)

(declare-fun tp!1462798 () Bool)

(assert (=> b!5217288 (= e!3247640 (and tp!1462797 tp!1462798))))

(declare-fun b!5217287 () Bool)

(declare-fun tp!1462800 () Bool)

(assert (=> b!5217287 (= e!3247640 tp!1462800)))

(declare-fun b!5217285 () Bool)

(assert (=> b!5217285 (= e!3247640 tp_is_empty!38861)))

(assert (= (and b!5216306 (is-ElementMatch!14804 (regOne!30120 (reg!15133 r!7292)))) b!5217285))

(assert (= (and b!5216306 (is-Concat!23649 (regOne!30120 (reg!15133 r!7292)))) b!5217286))

(assert (= (and b!5216306 (is-Star!14804 (regOne!30120 (reg!15133 r!7292)))) b!5217287))

(assert (= (and b!5216306 (is-Union!14804 (regOne!30120 (reg!15133 r!7292)))) b!5217288))

(declare-fun b!5217290 () Bool)

(declare-fun e!3247641 () Bool)

(declare-fun tp!1462806 () Bool)

(declare-fun tp!1462804 () Bool)

(assert (=> b!5217290 (= e!3247641 (and tp!1462806 tp!1462804))))

(assert (=> b!5216306 (= tp!1462590 e!3247641)))

(declare-fun b!5217292 () Bool)

(declare-fun tp!1462802 () Bool)

(declare-fun tp!1462803 () Bool)

(assert (=> b!5217292 (= e!3247641 (and tp!1462802 tp!1462803))))

(declare-fun b!5217291 () Bool)

(declare-fun tp!1462805 () Bool)

(assert (=> b!5217291 (= e!3247641 tp!1462805)))

(declare-fun b!5217289 () Bool)

(assert (=> b!5217289 (= e!3247641 tp_is_empty!38861)))

(assert (= (and b!5216306 (is-ElementMatch!14804 (regTwo!30120 (reg!15133 r!7292)))) b!5217289))

(assert (= (and b!5216306 (is-Concat!23649 (regTwo!30120 (reg!15133 r!7292)))) b!5217290))

(assert (= (and b!5216306 (is-Star!14804 (regTwo!30120 (reg!15133 r!7292)))) b!5217291))

(assert (= (and b!5216306 (is-Union!14804 (regTwo!30120 (reg!15133 r!7292)))) b!5217292))

(declare-fun b!5217294 () Bool)

(declare-fun e!3247642 () Bool)

(declare-fun tp!1462811 () Bool)

(declare-fun tp!1462809 () Bool)

(assert (=> b!5217294 (= e!3247642 (and tp!1462811 tp!1462809))))

(assert (=> b!5216315 (= tp!1462601 e!3247642)))

(declare-fun b!5217296 () Bool)

(declare-fun tp!1462807 () Bool)

(declare-fun tp!1462808 () Bool)

(assert (=> b!5217296 (= e!3247642 (and tp!1462807 tp!1462808))))

(declare-fun b!5217295 () Bool)

(declare-fun tp!1462810 () Bool)

(assert (=> b!5217295 (= e!3247642 tp!1462810)))

(declare-fun b!5217293 () Bool)

(assert (=> b!5217293 (= e!3247642 tp_is_empty!38861)))

(assert (= (and b!5216315 (is-ElementMatch!14804 (reg!15133 (regTwo!30120 r!7292)))) b!5217293))

(assert (= (and b!5216315 (is-Concat!23649 (reg!15133 (regTwo!30120 r!7292)))) b!5217294))

(assert (= (and b!5216315 (is-Star!14804 (reg!15133 (regTwo!30120 r!7292)))) b!5217295))

(assert (= (and b!5216315 (is-Union!14804 (reg!15133 (regTwo!30120 r!7292)))) b!5217296))

(declare-fun b!5217298 () Bool)

(declare-fun e!3247643 () Bool)

(declare-fun tp!1462816 () Bool)

(declare-fun tp!1462814 () Bool)

(assert (=> b!5217298 (= e!3247643 (and tp!1462816 tp!1462814))))

(assert (=> b!5216316 (= tp!1462598 e!3247643)))

(declare-fun b!5217300 () Bool)

(declare-fun tp!1462812 () Bool)

(declare-fun tp!1462813 () Bool)

(assert (=> b!5217300 (= e!3247643 (and tp!1462812 tp!1462813))))

(declare-fun b!5217299 () Bool)

(declare-fun tp!1462815 () Bool)

(assert (=> b!5217299 (= e!3247643 tp!1462815)))

(declare-fun b!5217297 () Bool)

(assert (=> b!5217297 (= e!3247643 tp_is_empty!38861)))

(assert (= (and b!5216316 (is-ElementMatch!14804 (regOne!30121 (regTwo!30120 r!7292)))) b!5217297))

(assert (= (and b!5216316 (is-Concat!23649 (regOne!30121 (regTwo!30120 r!7292)))) b!5217298))

(assert (= (and b!5216316 (is-Star!14804 (regOne!30121 (regTwo!30120 r!7292)))) b!5217299))

(assert (= (and b!5216316 (is-Union!14804 (regOne!30121 (regTwo!30120 r!7292)))) b!5217300))

(declare-fun b!5217302 () Bool)

(declare-fun e!3247644 () Bool)

(declare-fun tp!1462821 () Bool)

(declare-fun tp!1462819 () Bool)

(assert (=> b!5217302 (= e!3247644 (and tp!1462821 tp!1462819))))

(assert (=> b!5216316 (= tp!1462599 e!3247644)))

(declare-fun b!5217304 () Bool)

(declare-fun tp!1462817 () Bool)

(declare-fun tp!1462818 () Bool)

(assert (=> b!5217304 (= e!3247644 (and tp!1462817 tp!1462818))))

(declare-fun b!5217303 () Bool)

(declare-fun tp!1462820 () Bool)

(assert (=> b!5217303 (= e!3247644 tp!1462820)))

(declare-fun b!5217301 () Bool)

(assert (=> b!5217301 (= e!3247644 tp_is_empty!38861)))

(assert (= (and b!5216316 (is-ElementMatch!14804 (regTwo!30121 (regTwo!30120 r!7292)))) b!5217301))

(assert (= (and b!5216316 (is-Concat!23649 (regTwo!30121 (regTwo!30120 r!7292)))) b!5217302))

(assert (= (and b!5216316 (is-Star!14804 (regTwo!30121 (regTwo!30120 r!7292)))) b!5217303))

(assert (= (and b!5216316 (is-Union!14804 (regTwo!30121 (regTwo!30120 r!7292)))) b!5217304))

(declare-fun b!5217306 () Bool)

(declare-fun e!3247645 () Bool)

(declare-fun tp!1462826 () Bool)

(declare-fun tp!1462824 () Bool)

(assert (=> b!5217306 (= e!3247645 (and tp!1462826 tp!1462824))))

(assert (=> b!5216307 (= tp!1462591 e!3247645)))

(declare-fun b!5217308 () Bool)

(declare-fun tp!1462822 () Bool)

(declare-fun tp!1462823 () Bool)

(assert (=> b!5217308 (= e!3247645 (and tp!1462822 tp!1462823))))

(declare-fun b!5217307 () Bool)

(declare-fun tp!1462825 () Bool)

(assert (=> b!5217307 (= e!3247645 tp!1462825)))

(declare-fun b!5217305 () Bool)

(assert (=> b!5217305 (= e!3247645 tp_is_empty!38861)))

(assert (= (and b!5216307 (is-ElementMatch!14804 (reg!15133 (reg!15133 r!7292)))) b!5217305))

(assert (= (and b!5216307 (is-Concat!23649 (reg!15133 (reg!15133 r!7292)))) b!5217306))

(assert (= (and b!5216307 (is-Star!14804 (reg!15133 (reg!15133 r!7292)))) b!5217307))

(assert (= (and b!5216307 (is-Union!14804 (reg!15133 (reg!15133 r!7292)))) b!5217308))

(declare-fun b!5217310 () Bool)

(declare-fun e!3247646 () Bool)

(declare-fun tp!1462831 () Bool)

(declare-fun tp!1462829 () Bool)

(assert (=> b!5217310 (= e!3247646 (and tp!1462831 tp!1462829))))

(assert (=> b!5216321 (= tp!1462607 e!3247646)))

(declare-fun b!5217312 () Bool)

(declare-fun tp!1462827 () Bool)

(declare-fun tp!1462828 () Bool)

(assert (=> b!5217312 (= e!3247646 (and tp!1462827 tp!1462828))))

(declare-fun b!5217311 () Bool)

(declare-fun tp!1462830 () Bool)

(assert (=> b!5217311 (= e!3247646 tp!1462830)))

(declare-fun b!5217309 () Bool)

(assert (=> b!5217309 (= e!3247646 tp_is_empty!38861)))

(assert (= (and b!5216321 (is-ElementMatch!14804 (h!67036 (exprs!4688 setElem!33151)))) b!5217309))

(assert (= (and b!5216321 (is-Concat!23649 (h!67036 (exprs!4688 setElem!33151)))) b!5217310))

(assert (= (and b!5216321 (is-Star!14804 (h!67036 (exprs!4688 setElem!33151)))) b!5217311))

(assert (= (and b!5216321 (is-Union!14804 (h!67036 (exprs!4688 setElem!33151)))) b!5217312))

(declare-fun b!5217313 () Bool)

(declare-fun e!3247647 () Bool)

(declare-fun tp!1462832 () Bool)

(declare-fun tp!1462833 () Bool)

(assert (=> b!5217313 (= e!3247647 (and tp!1462832 tp!1462833))))

(assert (=> b!5216321 (= tp!1462608 e!3247647)))

(assert (= (and b!5216321 (is-Cons!60588 (t!373879 (exprs!4688 setElem!33151)))) b!5217313))

(declare-fun b!5217315 () Bool)

(declare-fun e!3247648 () Bool)

(declare-fun tp!1462838 () Bool)

(declare-fun tp!1462836 () Bool)

(assert (=> b!5217315 (= e!3247648 (and tp!1462838 tp!1462836))))

(assert (=> b!5216314 (= tp!1462602 e!3247648)))

(declare-fun b!5217317 () Bool)

(declare-fun tp!1462834 () Bool)

(declare-fun tp!1462835 () Bool)

(assert (=> b!5217317 (= e!3247648 (and tp!1462834 tp!1462835))))

(declare-fun b!5217316 () Bool)

(declare-fun tp!1462837 () Bool)

(assert (=> b!5217316 (= e!3247648 tp!1462837)))

(declare-fun b!5217314 () Bool)

(assert (=> b!5217314 (= e!3247648 tp_is_empty!38861)))

(assert (= (and b!5216314 (is-ElementMatch!14804 (regOne!30120 (regTwo!30120 r!7292)))) b!5217314))

(assert (= (and b!5216314 (is-Concat!23649 (regOne!30120 (regTwo!30120 r!7292)))) b!5217315))

(assert (= (and b!5216314 (is-Star!14804 (regOne!30120 (regTwo!30120 r!7292)))) b!5217316))

(assert (= (and b!5216314 (is-Union!14804 (regOne!30120 (regTwo!30120 r!7292)))) b!5217317))

(declare-fun b!5217319 () Bool)

(declare-fun e!3247649 () Bool)

(declare-fun tp!1462843 () Bool)

(declare-fun tp!1462841 () Bool)

(assert (=> b!5217319 (= e!3247649 (and tp!1462843 tp!1462841))))

(assert (=> b!5216314 (= tp!1462600 e!3247649)))

(declare-fun b!5217321 () Bool)

(declare-fun tp!1462839 () Bool)

(declare-fun tp!1462840 () Bool)

(assert (=> b!5217321 (= e!3247649 (and tp!1462839 tp!1462840))))

(declare-fun b!5217320 () Bool)

(declare-fun tp!1462842 () Bool)

(assert (=> b!5217320 (= e!3247649 tp!1462842)))

(declare-fun b!5217318 () Bool)

(assert (=> b!5217318 (= e!3247649 tp_is_empty!38861)))

(assert (= (and b!5216314 (is-ElementMatch!14804 (regTwo!30120 (regTwo!30120 r!7292)))) b!5217318))

(assert (= (and b!5216314 (is-Concat!23649 (regTwo!30120 (regTwo!30120 r!7292)))) b!5217319))

(assert (= (and b!5216314 (is-Star!14804 (regTwo!30120 (regTwo!30120 r!7292)))) b!5217320))

(assert (= (and b!5216314 (is-Union!14804 (regTwo!30120 (regTwo!30120 r!7292)))) b!5217321))

(declare-fun b_lambda!201755 () Bool)

(assert (= b_lambda!201751 (or b!5215801 b_lambda!201755)))

(assert (=> d!1682076 d!1681852))

(declare-fun b_lambda!201757 () Bool)

(assert (= b_lambda!201745 (or d!1681848 b_lambda!201757)))

(declare-fun bs!1211855 () Bool)

(declare-fun d!1682198 () Bool)

(assert (= bs!1211855 (and d!1682198 d!1681848)))

(assert (=> bs!1211855 (= (dynLambda!23940 lambda!261676 (h!67036 lt!2142877)) (validRegex!6540 (h!67036 lt!2142877)))))

(declare-fun m!6265678 () Bool)

(assert (=> bs!1211855 m!6265678))

(assert (=> b!5216872 d!1682198))

(declare-fun b_lambda!201759 () Bool)

(assert (= b_lambda!201743 (or b!5215801 b_lambda!201759)))

(assert (=> d!1681998 d!1681850))

(declare-fun b_lambda!201761 () Bool)

(assert (= b_lambda!201749 (or d!1681792 b_lambda!201761)))

(declare-fun bs!1211856 () Bool)

(declare-fun d!1682200 () Bool)

(assert (= bs!1211856 (and d!1682200 d!1681792)))

(assert (=> bs!1211856 (= (dynLambda!23940 lambda!261657 (h!67036 (exprs!4688 setElem!33151))) (validRegex!6540 (h!67036 (exprs!4688 setElem!33151))))))

(declare-fun m!6265680 () Bool)

(assert (=> bs!1211856 m!6265680))

(assert (=> b!5216954 d!1682200))

(declare-fun b_lambda!201763 () Bool)

(assert (= b_lambda!201741 (or d!1681822 b_lambda!201763)))

(declare-fun bs!1211857 () Bool)

(declare-fun d!1682202 () Bool)

(assert (= bs!1211857 (and d!1682202 d!1681822)))

(assert (=> bs!1211857 (= (dynLambda!23940 lambda!261658 (h!67036 (exprs!4688 (h!67037 zl!343)))) (validRegex!6540 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(declare-fun m!6265682 () Bool)

(assert (=> bs!1211857 m!6265682))

(assert (=> b!5216823 d!1682202))

(declare-fun b_lambda!201765 () Bool)

(assert (= b_lambda!201753 (or d!1681846 b_lambda!201765)))

(declare-fun bs!1211858 () Bool)

(declare-fun d!1682204 () Bool)

(assert (= bs!1211858 (and d!1682204 d!1681846)))

(assert (=> bs!1211858 (= (dynLambda!23940 lambda!261673 (h!67036 (unfocusZipperList!246 zl!343))) (validRegex!6540 (h!67036 (unfocusZipperList!246 zl!343))))))

(declare-fun m!6265684 () Bool)

(assert (=> bs!1211858 m!6265684))

(assert (=> b!5217024 d!1682204))

(declare-fun b_lambda!201767 () Bool)

(assert (= b_lambda!201747 (or d!1681842 b_lambda!201767)))

(declare-fun bs!1211859 () Bool)

(declare-fun d!1682206 () Bool)

(assert (= bs!1211859 (and d!1682206 d!1681842)))

(assert (=> bs!1211859 (= (dynLambda!23940 lambda!261670 (h!67036 (exprs!4688 (h!67037 zl!343)))) (validRegex!6540 (h!67036 (exprs!4688 (h!67037 zl!343)))))))

(assert (=> bs!1211859 m!6265682))

(assert (=> b!5216952 d!1682206))

(push 1)

(assert (not d!1682120))

(assert (not bm!367915))

(assert (not bm!367830))

(assert (not bm!367869))

(assert (not b!5217190))

(assert (not bm!367870))

(assert (not d!1682168))

(assert (not b!5216931))

(assert (not bm!367903))

(assert (not b!5216880))

(assert (not b!5217212))

(assert (not bm!367804))

(assert (not bm!367805))

(assert (not b!5217100))

(assert (not b!5217168))

(assert (not b!5217020))

(assert (not bm!367843))

(assert (not d!1682076))

(assert (not b!5216753))

(assert (not bm!367914))

(assert (not b!5217227))

(assert (not b!5217308))

(assert (not b!5217223))

(assert (not bm!367916))

(assert (not d!1682188))

(assert (not b!5217275))

(assert (not bm!367888))

(assert (not d!1682014))

(assert (not b!5216974))

(assert (not d!1682138))

(assert (not bm!367829))

(assert (not b_lambda!201767))

(assert (not b!5217258))

(assert (not b!5217300))

(assert (not b!5217142))

(assert (not d!1682130))

(assert (not d!1682128))

(assert (not b!5216934))

(assert (not b!5217213))

(assert (not d!1682000))

(assert (not bm!367887))

(assert (not b!5217315))

(assert (not d!1682050))

(assert (not b_lambda!201763))

(assert (not b!5217098))

(assert (not b!5216742))

(assert (not d!1682074))

(assert (not b!5217090))

(assert (not b!5216989))

(assert (not b!5217005))

(assert (not b!5216892))

(assert (not b!5216764))

(assert (not d!1682178))

(assert (not b!5217312))

(assert (not b_lambda!201757))

(assert (not b!5217226))

(assert (not b!5217143))

(assert (not b!5216875))

(assert (not bm!367846))

(assert (not bm!367873))

(assert (not b!5217290))

(assert (not b!5217271))

(assert (not bm!367890))

(assert (not b!5217153))

(assert (not b!5216890))

(assert (not b!5217222))

(assert (not b!5216994))

(assert (not b!5217237))

(assert (not b!5216953))

(assert (not b!5216885))

(assert (not b!5216757))

(assert (not b!5217172))

(assert (not bm!367810))

(assert (not b!5217317))

(assert (not d!1682126))

(assert (not bm!367867))

(assert (not b!5217027))

(assert (not d!1682118))

(assert (not d!1682098))

(assert (not b_lambda!201759))

(assert (not bm!367824))

(assert (not b!5217283))

(assert (not b!5217268))

(assert (not b!5217310))

(assert (not b!5217313))

(assert (not b!5217294))

(assert (not b!5216980))

(assert (not b!5217249))

(assert (not d!1682190))

(assert (not b!5216906))

(assert (not b!5216756))

(assert (not b!5216958))

(assert (not b!5217054))

(assert (not d!1682092))

(assert (not b!5217267))

(assert (not d!1682164))

(assert (not bm!367900))

(assert (not bm!367815))

(assert (not d!1682116))

(assert (not b!5217245))

(assert (not d!1682152))

(assert (not bm!367910))

(assert (not b!5217247))

(assert (not bm!367839))

(assert (not b!5216809))

(assert (not bs!1211857))

(assert (not b!5217191))

(assert (not b!5217286))

(assert (not b!5217272))

(assert (not b!5216874))

(assert (not b!5216755))

(assert (not setNonEmpty!33165))

(assert (not b!5217107))

(assert (not bm!367863))

(assert (not b!5216866))

(assert (not bm!367918))

(assert (not d!1682010))

(assert (not bm!367864))

(assert (not bm!367866))

(assert (not b!5217162))

(assert (not b!5216886))

(assert (not d!1682056))

(assert (not b!5216881))

(assert (not b!5217266))

(assert (not b!5217215))

(assert (not b!5217093))

(assert (not b!5216938))

(assert (not b!5217311))

(assert (not b_lambda!201755))

(assert (not b!5216806))

(assert (not d!1681954))

(assert (not b!5217320))

(assert (not b!5217026))

(assert (not bm!367882))

(assert (not b!5217246))

(assert (not b!5216966))

(assert (not b!5217088))

(assert (not b!5217292))

(assert (not b!5217086))

(assert (not b!5216928))

(assert (not b!5217141))

(assert tp_is_empty!38861)

(assert (not b!5216766))

(assert (not b!5216876))

(assert (not b!5217262))

(assert (not b!5216771))

(assert (not b!5217321))

(assert (not b!5217209))

(assert (not b!5217274))

(assert (not b!5217239))

(assert (not b!5217242))

(assert (not d!1682176))

(assert (not bm!367907))

(assert (not b!5217087))

(assert (not d!1682054))

(assert (not bs!1211855))

(assert (not b!5216843))

(assert (not d!1681974))

(assert (not d!1682196))

(assert (not d!1682018))

(assert (not b_lambda!201765))

(assert (not b!5217117))

(assert (not b!5216979))

(assert (not b!5216855))

(assert (not b!5216908))

(assert (not b!5216824))

(assert (not b!5217256))

(assert (not bm!367838))

(assert (not b!5217319))

(assert (not b!5216803))

(assert (not bm!367897))

(assert (not b!5217176))

(assert (not b!5217278))

(assert (not bm!367835))

(assert (not b_lambda!201731))

(assert (not bm!367811))

(assert (not d!1682106))

(assert (not b!5216936))

(assert (not d!1682024))

(assert (not b!5217252))

(assert (not b!5217231))

(assert (not b!5217085))

(assert (not bs!1211856))

(assert (not bm!367833))

(assert (not d!1682158))

(assert (not b!5217219))

(assert (not b!5216854))

(assert (not d!1682094))

(assert (not bm!367841))

(assert (not bm!367849))

(assert (not d!1682070))

(assert (not b!5217230))

(assert (not d!1682166))

(assert (not d!1682016))

(assert (not bm!367808))

(assert (not b!5217218))

(assert (not b!5217140))

(assert (not d!1682124))

(assert (not b!5217288))

(assert (not d!1681968))

(assert (not bm!367917))

(assert (not b!5216870))

(assert (not d!1681958))

(assert (not setNonEmpty!33163))

(assert (not b!5217264))

(assert (not b!5217307))

(assert (not b!5216963))

(assert (not d!1682146))

(assert (not b!5217095))

(assert (not b!5216765))

(assert (not d!1681956))

(assert (not b!5217241))

(assert (not d!1681980))

(assert (not bm!367814))

(assert (not b!5217282))

(assert (not d!1681960))

(assert (not bm!367912))

(assert (not b!5216772))

(assert (not d!1682122))

(assert (not b!5217139))

(assert (not b!5217225))

(assert (not setNonEmpty!33164))

(assert (not b_lambda!201761))

(assert (not b!5217284))

(assert (not b!5217210))

(assert (not d!1681966))

(assert (not b!5217149))

(assert (not b!5217221))

(assert (not b!5217205))

(assert (not b!5217134))

(assert (not b!5217302))

(assert (not b!5216973))

(assert (not b_lambda!201729))

(assert (not b!5217251))

(assert (not b!5217198))

(assert (not bm!367911))

(assert (not bm!367845))

(assert (not bm!367906))

(assert (not b!5217296))

(assert (not b!5216935))

(assert (not bm!367894))

(assert (not bm!367836))

(assert (not b!5217316))

(assert (not b!5217280))

(assert (not b!5216731))

(assert (not bs!1211859))

(assert (not d!1682058))

(assert (not b!5217279))

(assert (not d!1682162))

(assert (not b!5216873))

(assert (not b!5217157))

(assert (not d!1682044))

(assert (not b!5216948))

(assert (not b!5216769))

(assert (not bm!367881))

(assert (not b!5216972))

(assert (not b!5217287))

(assert (not bm!367853))

(assert (not b!5217197))

(assert (not bm!367850))

(assert (not bm!367904))

(assert (not d!1681998))

(assert (not b!5217248))

(assert (not b!5217253))

(assert (not b!5216959))

(assert (not b!5216894))

(assert (not b!5217101))

(assert (not b!5217233))

(assert (not bm!367856))

(assert (not b!5217165))

(assert (not b!5216807))

(assert (not b!5217303))

(assert (not d!1681986))

(assert (not b!5217235))

(assert (not bm!367876))

(assert (not d!1682038))

(assert (not d!1682008))

(assert (not d!1682036))

(assert (not d!1681996))

(assert (not b!5217259))

(assert (not b!5216977))

(assert (not b!5217059))

(assert (not b!5216891))

(assert (not bm!367899))

(assert (not b!5216830))

(assert (not b!5217182))

(assert (not b!5216940))

(assert (not b!5217175))

(assert (not b!5217214))

(assert (not b!5216965))

(assert (not b!5217304))

(assert (not d!1682182))

(assert (not bm!367840))

(assert (not d!1682020))

(assert (not bm!367879))

(assert (not b!5216932))

(assert (not b!5217137))

(assert (not bm!367844))

(assert (not d!1682140))

(assert (not b!5217173))

(assert (not b!5217243))

(assert (not b!5217217))

(assert (not bm!367827))

(assert (not bm!367891))

(assert (not b!5217070))

(assert (not b!5217206))

(assert (not b!5216754))

(assert (not bm!367859))

(assert (not b!5217263))

(assert (not bs!1211858))

(assert (not b!5216955))

(assert (not b!5217160))

(assert (not b!5217295))

(assert (not bm!367875))

(assert (not b!5216758))

(assert (not b!5216941))

(assert (not b!5217167))

(assert (not b!5217255))

(assert (not b!5217257))

(assert (not d!1681984))

(assert (not d!1682194))

(assert (not b!5217261))

(assert (not b!5217229))

(assert (not b!5216849))

(assert (not b!5217118))

(assert (not bm!367847))

(assert (not b!5216960))

(assert (not b!5217094))

(assert (not d!1682180))

(assert (not b!5217270))

(assert (not d!1682026))

(assert (not b!5216927))

(assert (not bm!367893))

(assert (not bm!367919))

(assert (not bm!367862))

(assert (not b!5217025))

(assert (not b!5217204))

(assert (not b!5217208))

(assert (not b!5217234))

(assert (not b!5217105))

(assert (not d!1682060))

(assert (not d!1682102))

(assert (not b!5216760))

(assert (not b!5217291))

(assert (not b!5217238))

(assert (not bm!367855))

(assert (not d!1682154))

(assert (not b!5217306))

(assert (not d!1682174))

(assert (not b!5217183))

(assert (not b!5217161))

(assert (not b!5217192))

(assert (not b!5217298))

(assert (not b!5217299))

(assert (not bm!367861))

(assert (not b!5217276))

(assert (not b!5217089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

