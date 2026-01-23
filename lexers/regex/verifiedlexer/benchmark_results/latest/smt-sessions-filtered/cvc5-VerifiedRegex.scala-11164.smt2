; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!580300 () Bool)

(assert start!580300)

(declare-fun b!5586785 () Bool)

(assert (=> b!5586785 true))

(assert (=> b!5586785 true))

(declare-fun lambda!299774 () Int)

(declare-fun lambda!299773 () Int)

(assert (=> b!5586785 (not (= lambda!299774 lambda!299773))))

(assert (=> b!5586785 true))

(assert (=> b!5586785 true))

(declare-fun b!5586782 () Bool)

(assert (=> b!5586782 true))

(declare-fun e!3446906 () Bool)

(declare-datatypes ((C!31418 0))(
  ( (C!31419 (val!25411 Int)) )
))
(declare-datatypes ((List!63021 0))(
  ( (Nil!62897) (Cons!62897 (h!69345 C!31418) (t!376296 List!63021)) )
))
(declare-fun s!2326 () List!63021)

(declare-fun b!5586781 () Bool)

(declare-datatypes ((Regex!15574 0))(
  ( (ElementMatch!15574 (c!978676 C!31418)) (Concat!24419 (regOne!31660 Regex!15574) (regTwo!31660 Regex!15574)) (EmptyExpr!15574) (Star!15574 (reg!15903 Regex!15574)) (EmptyLang!15574) (Union!15574 (regOne!31661 Regex!15574) (regTwo!31661 Regex!15574)) )
))
(declare-datatypes ((List!63022 0))(
  ( (Nil!62898) (Cons!62898 (h!69346 Regex!15574) (t!376297 List!63022)) )
))
(declare-datatypes ((Context!9916 0))(
  ( (Context!9917 (exprs!5458 List!63022)) )
))
(declare-fun lt!2254825 () (Set Context!9916))

(declare-fun lt!2254813 () (Set Context!9916))

(declare-fun matchZipper!1712 ((Set Context!9916) List!63021) Bool)

(assert (=> b!5586781 (= e!3446906 (= (matchZipper!1712 lt!2254813 s!2326) (matchZipper!1712 lt!2254825 (t!376296 s!2326))))))

(declare-fun res!2370623 () Bool)

(declare-fun e!3446902 () Bool)

(assert (=> start!580300 (=> (not res!2370623) (not e!3446902))))

(declare-fun r!7292 () Regex!15574)

(declare-fun validRegex!7310 (Regex!15574) Bool)

(assert (=> start!580300 (= res!2370623 (validRegex!7310 r!7292))))

(assert (=> start!580300 e!3446902))

(declare-fun e!3446910 () Bool)

(assert (=> start!580300 e!3446910))

(declare-fun condSetEmpty!37216 () Bool)

(declare-fun z!1189 () (Set Context!9916))

(assert (=> start!580300 (= condSetEmpty!37216 (= z!1189 (as set.empty (Set Context!9916))))))

(declare-fun setRes!37216 () Bool)

(assert (=> start!580300 setRes!37216))

(declare-fun e!3446905 () Bool)

(assert (=> start!580300 e!3446905))

(declare-fun e!3446909 () Bool)

(assert (=> start!580300 e!3446909))

(declare-fun e!3446911 () Bool)

(declare-fun e!3446900 () Bool)

(assert (=> b!5586782 (= e!3446911 e!3446900)))

(declare-fun res!2370627 () Bool)

(assert (=> b!5586782 (=> res!2370627 e!3446900)))

(assert (=> b!5586782 (= res!2370627 (or (and (is-ElementMatch!15574 (regOne!31660 r!7292)) (= (c!978676 (regOne!31660 r!7292)) (h!69345 s!2326))) (not (is-Union!15574 (regOne!31660 r!7292)))))))

(declare-datatypes ((Unit!155688 0))(
  ( (Unit!155689) )
))
(declare-fun lt!2254817 () Unit!155688)

(declare-fun e!3446907 () Unit!155688)

(assert (=> b!5586782 (= lt!2254817 e!3446907)))

(declare-fun c!978674 () Bool)

(declare-datatypes ((List!63023 0))(
  ( (Nil!62899) (Cons!62899 (h!69347 Context!9916) (t!376298 List!63023)) )
))
(declare-fun zl!343 () List!63023)

(declare-fun nullable!5606 (Regex!15574) Bool)

(assert (=> b!5586782 (= c!978674 (nullable!5606 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun lambda!299775 () Int)

(declare-fun flatMap!1187 ((Set Context!9916) Int) (Set Context!9916))

(declare-fun derivationStepZipperUp!842 (Context!9916 C!31418) (Set Context!9916))

(assert (=> b!5586782 (= (flatMap!1187 z!1189 lambda!299775) (derivationStepZipperUp!842 (h!69347 zl!343) (h!69345 s!2326)))))

(declare-fun lt!2254826 () Unit!155688)

(declare-fun lemmaFlatMapOnSingletonSet!719 ((Set Context!9916) Context!9916 Int) Unit!155688)

(assert (=> b!5586782 (= lt!2254826 (lemmaFlatMapOnSingletonSet!719 z!1189 (h!69347 zl!343) lambda!299775))))

(declare-fun lt!2254822 () (Set Context!9916))

(declare-fun lt!2254824 () Context!9916)

(assert (=> b!5586782 (= lt!2254822 (derivationStepZipperUp!842 lt!2254824 (h!69345 s!2326)))))

(declare-fun lt!2254821 () (Set Context!9916))

(declare-fun derivationStepZipperDown!916 (Regex!15574 Context!9916 C!31418) (Set Context!9916))

(assert (=> b!5586782 (= lt!2254821 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (h!69347 zl!343))) lt!2254824 (h!69345 s!2326)))))

(assert (=> b!5586782 (= lt!2254824 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun lt!2254819 () (Set Context!9916))

(assert (=> b!5586782 (= lt!2254819 (derivationStepZipperUp!842 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))) (h!69345 s!2326)))))

(declare-fun tp!1545454 () Bool)

(declare-fun e!3446903 () Bool)

(declare-fun b!5586783 () Bool)

(declare-fun inv!82183 (Context!9916) Bool)

(assert (=> b!5586783 (= e!3446905 (and (inv!82183 (h!69347 zl!343)) e!3446903 tp!1545454))))

(declare-fun b!5586784 () Bool)

(declare-fun tp_is_empty!40401 () Bool)

(assert (=> b!5586784 (= e!3446910 tp_is_empty!40401)))

(declare-fun e!3446904 () Bool)

(assert (=> b!5586785 (= e!3446904 e!3446911)))

(declare-fun res!2370613 () Bool)

(assert (=> b!5586785 (=> res!2370613 e!3446911)))

(declare-fun lt!2254812 () Bool)

(declare-fun lt!2254828 () Bool)

(assert (=> b!5586785 (= res!2370613 (or (not (= lt!2254828 lt!2254812)) (is-Nil!62897 s!2326)))))

(declare-fun Exists!2674 (Int) Bool)

(assert (=> b!5586785 (= (Exists!2674 lambda!299773) (Exists!2674 lambda!299774))))

(declare-fun lt!2254816 () Unit!155688)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1303 (Regex!15574 Regex!15574 List!63021) Unit!155688)

(assert (=> b!5586785 (= lt!2254816 (lemmaExistCutMatchRandMatchRSpecEquivalent!1303 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326))))

(assert (=> b!5586785 (= lt!2254812 (Exists!2674 lambda!299773))))

(declare-datatypes ((tuple2!65342 0))(
  ( (tuple2!65343 (_1!35974 List!63021) (_2!35974 List!63021)) )
))
(declare-datatypes ((Option!15583 0))(
  ( (None!15582) (Some!15582 (v!51623 tuple2!65342)) )
))
(declare-fun isDefined!12286 (Option!15583) Bool)

(declare-fun findConcatSeparation!1997 (Regex!15574 Regex!15574 List!63021 List!63021 List!63021) Option!15583)

(assert (=> b!5586785 (= lt!2254812 (isDefined!12286 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326)))))

(declare-fun lt!2254827 () Unit!155688)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1761 (Regex!15574 Regex!15574 List!63021) Unit!155688)

(assert (=> b!5586785 (= lt!2254827 (lemmaFindConcatSeparationEquivalentToExists!1761 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326))))

(declare-fun b!5586786 () Bool)

(declare-fun Unit!155690 () Unit!155688)

(assert (=> b!5586786 (= e!3446907 Unit!155690)))

(declare-fun b!5586787 () Bool)

(declare-fun e!3446913 () Bool)

(assert (=> b!5586787 (= e!3446913 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(declare-fun b!5586788 () Bool)

(declare-fun tp!1545449 () Bool)

(declare-fun tp!1545455 () Bool)

(assert (=> b!5586788 (= e!3446910 (and tp!1545449 tp!1545455))))

(declare-fun b!5586789 () Bool)

(declare-fun e!3446912 () Bool)

(assert (=> b!5586789 (= e!3446900 e!3446912)))

(declare-fun res!2370628 () Bool)

(assert (=> b!5586789 (=> res!2370628 e!3446912)))

(declare-fun lt!2254830 () (Set Context!9916))

(assert (=> b!5586789 (= res!2370628 (not (= lt!2254821 lt!2254830)))))

(declare-fun lt!2254829 () (Set Context!9916))

(assert (=> b!5586789 (= lt!2254830 (set.union lt!2254829 lt!2254825))))

(assert (=> b!5586789 (= lt!2254825 (derivationStepZipperDown!916 (regTwo!31661 (regOne!31660 r!7292)) lt!2254824 (h!69345 s!2326)))))

(assert (=> b!5586789 (= lt!2254829 (derivationStepZipperDown!916 (regOne!31661 (regOne!31660 r!7292)) lt!2254824 (h!69345 s!2326)))))

(declare-fun b!5586790 () Bool)

(declare-fun e!3446916 () Bool)

(assert (=> b!5586790 (= e!3446916 (not (matchZipper!1712 lt!2254825 (t!376296 s!2326))))))

(declare-fun b!5586791 () Bool)

(declare-fun tp!1545453 () Bool)

(assert (=> b!5586791 (= e!3446910 tp!1545453)))

(declare-fun b!5586792 () Bool)

(declare-fun e!3446914 () Bool)

(assert (=> b!5586792 (= e!3446912 e!3446914)))

(declare-fun res!2370626 () Bool)

(assert (=> b!5586792 (=> res!2370626 e!3446914)))

(assert (=> b!5586792 (= res!2370626 e!3446916)))

(declare-fun res!2370615 () Bool)

(assert (=> b!5586792 (=> (not res!2370615) (not e!3446916))))

(declare-fun lt!2254807 () Bool)

(assert (=> b!5586792 (= res!2370615 (not (= (matchZipper!1712 lt!2254821 (t!376296 s!2326)) lt!2254807)))))

(declare-fun e!3446917 () Bool)

(assert (=> b!5586792 (= (matchZipper!1712 lt!2254830 (t!376296 s!2326)) e!3446917)))

(declare-fun res!2370621 () Bool)

(assert (=> b!5586792 (=> res!2370621 e!3446917)))

(assert (=> b!5586792 (= res!2370621 lt!2254807)))

(assert (=> b!5586792 (= lt!2254807 (matchZipper!1712 lt!2254829 (t!376296 s!2326)))))

(declare-fun lt!2254809 () Unit!155688)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!599 ((Set Context!9916) (Set Context!9916) List!63021) Unit!155688)

(assert (=> b!5586792 (= lt!2254809 (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254829 lt!2254825 (t!376296 s!2326)))))

(declare-fun b!5586793 () Bool)

(declare-fun res!2370617 () Bool)

(assert (=> b!5586793 (=> res!2370617 e!3446904)))

(declare-fun generalisedUnion!1437 (List!63022) Regex!15574)

(declare-fun unfocusZipperList!1002 (List!63023) List!63022)

(assert (=> b!5586793 (= res!2370617 (not (= r!7292 (generalisedUnion!1437 (unfocusZipperList!1002 zl!343)))))))

(declare-fun b!5586794 () Bool)

(declare-fun e!3446901 () Unit!155688)

(declare-fun Unit!155691 () Unit!155688)

(assert (=> b!5586794 (= e!3446901 Unit!155691)))

(declare-fun b!5586795 () Bool)

(declare-fun Unit!155692 () Unit!155688)

(assert (=> b!5586795 (= e!3446907 Unit!155692)))

(declare-fun lt!2254833 () Unit!155688)

(assert (=> b!5586795 (= lt!2254833 (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254821 lt!2254822 (t!376296 s!2326)))))

(declare-fun res!2370614 () Bool)

(assert (=> b!5586795 (= res!2370614 (matchZipper!1712 lt!2254821 (t!376296 s!2326)))))

(assert (=> b!5586795 (=> res!2370614 e!3446913)))

(assert (=> b!5586795 (= (matchZipper!1712 (set.union lt!2254821 lt!2254822) (t!376296 s!2326)) e!3446913)))

(declare-fun setIsEmpty!37216 () Bool)

(assert (=> setIsEmpty!37216 setRes!37216))

(declare-fun b!5586796 () Bool)

(declare-fun res!2370612 () Bool)

(assert (=> b!5586796 (=> res!2370612 e!3446911)))

(declare-fun isEmpty!34712 (List!63022) Bool)

(assert (=> b!5586796 (= res!2370612 (isEmpty!34712 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5586797 () Bool)

(declare-fun res!2370618 () Bool)

(assert (=> b!5586797 (=> res!2370618 e!3446904)))

(declare-fun isEmpty!34713 (List!63023) Bool)

(assert (=> b!5586797 (= res!2370618 (not (isEmpty!34713 (t!376298 zl!343))))))

(declare-fun b!5586798 () Bool)

(declare-fun Unit!155693 () Unit!155688)

(assert (=> b!5586798 (= e!3446901 Unit!155693)))

(declare-fun lt!2254832 () Unit!155688)

(assert (=> b!5586798 (= lt!2254832 (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254829 lt!2254822 (t!376296 s!2326)))))

(declare-fun res!2370624 () Bool)

(assert (=> b!5586798 (= res!2370624 lt!2254807)))

(declare-fun e!3446915 () Bool)

(assert (=> b!5586798 (=> res!2370624 e!3446915)))

(assert (=> b!5586798 (= (matchZipper!1712 (set.union lt!2254829 lt!2254822) (t!376296 s!2326)) e!3446915)))

(declare-fun b!5586799 () Bool)

(assert (=> b!5586799 (= e!3446915 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(declare-fun b!5586800 () Bool)

(declare-fun res!2370611 () Bool)

(assert (=> b!5586800 (=> res!2370611 e!3446904)))

(declare-fun generalisedConcat!1189 (List!63022) Regex!15574)

(assert (=> b!5586800 (= res!2370611 (not (= r!7292 (generalisedConcat!1189 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5586801 () Bool)

(declare-fun e!3446908 () Bool)

(declare-fun tp!1545448 () Bool)

(assert (=> b!5586801 (= e!3446908 tp!1545448)))

(declare-fun b!5586802 () Bool)

(declare-fun tp!1545451 () Bool)

(declare-fun tp!1545456 () Bool)

(assert (=> b!5586802 (= e!3446910 (and tp!1545451 tp!1545456))))

(declare-fun b!5586803 () Bool)

(assert (=> b!5586803 (= e!3446917 (matchZipper!1712 lt!2254825 (t!376296 s!2326)))))

(declare-fun b!5586804 () Bool)

(declare-fun res!2370619 () Bool)

(assert (=> b!5586804 (=> (not res!2370619) (not e!3446902))))

(declare-fun toList!9358 ((Set Context!9916)) List!63023)

(assert (=> b!5586804 (= res!2370619 (= (toList!9358 z!1189) zl!343))))

(declare-fun b!5586805 () Bool)

(assert (=> b!5586805 (= e!3446902 (not e!3446904))))

(declare-fun res!2370622 () Bool)

(assert (=> b!5586805 (=> res!2370622 e!3446904)))

(assert (=> b!5586805 (= res!2370622 (not (is-Cons!62899 zl!343)))))

(declare-fun matchRSpec!2677 (Regex!15574 List!63021) Bool)

(assert (=> b!5586805 (= lt!2254828 (matchRSpec!2677 r!7292 s!2326))))

(declare-fun matchR!7759 (Regex!15574 List!63021) Bool)

(assert (=> b!5586805 (= lt!2254828 (matchR!7759 r!7292 s!2326))))

(declare-fun lt!2254823 () Unit!155688)

(declare-fun mainMatchTheorem!2677 (Regex!15574 List!63021) Unit!155688)

(assert (=> b!5586805 (= lt!2254823 (mainMatchTheorem!2677 r!7292 s!2326))))

(declare-fun b!5586806 () Bool)

(assert (=> b!5586806 (= e!3446914 e!3446906)))

(declare-fun res!2370620 () Bool)

(assert (=> b!5586806 (=> res!2370620 e!3446906)))

(assert (=> b!5586806 (= res!2370620 (nullable!5606 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun lt!2254810 () Context!9916)

(assert (=> b!5586806 (= (flatMap!1187 lt!2254813 lambda!299775) (derivationStepZipperUp!842 lt!2254810 (h!69345 s!2326)))))

(declare-fun lt!2254831 () Unit!155688)

(assert (=> b!5586806 (= lt!2254831 (lemmaFlatMapOnSingletonSet!719 lt!2254813 lt!2254810 lambda!299775))))

(declare-fun lt!2254820 () (Set Context!9916))

(assert (=> b!5586806 (= lt!2254820 (derivationStepZipperUp!842 lt!2254810 (h!69345 s!2326)))))

(declare-fun lt!2254811 () Unit!155688)

(assert (=> b!5586806 (= lt!2254811 e!3446901)))

(declare-fun c!978675 () Bool)

(assert (=> b!5586806 (= c!978675 (nullable!5606 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun lt!2254814 () Context!9916)

(declare-fun lt!2254808 () (Set Context!9916))

(assert (=> b!5586806 (= (flatMap!1187 lt!2254808 lambda!299775) (derivationStepZipperUp!842 lt!2254814 (h!69345 s!2326)))))

(declare-fun lt!2254818 () Unit!155688)

(assert (=> b!5586806 (= lt!2254818 (lemmaFlatMapOnSingletonSet!719 lt!2254808 lt!2254814 lambda!299775))))

(declare-fun lt!2254815 () (Set Context!9916))

(assert (=> b!5586806 (= lt!2254815 (derivationStepZipperUp!842 lt!2254814 (h!69345 s!2326)))))

(assert (=> b!5586806 (= lt!2254813 (set.insert lt!2254810 (as set.empty (Set Context!9916))))))

(assert (=> b!5586806 (= lt!2254810 (Context!9917 (Cons!62898 (regTwo!31661 (regOne!31660 r!7292)) (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(assert (=> b!5586806 (= lt!2254808 (set.insert lt!2254814 (as set.empty (Set Context!9916))))))

(assert (=> b!5586806 (= lt!2254814 (Context!9917 (Cons!62898 (regOne!31661 (regOne!31660 r!7292)) (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5586807 () Bool)

(declare-fun tp!1545450 () Bool)

(assert (=> b!5586807 (= e!3446909 (and tp_is_empty!40401 tp!1545450))))

(declare-fun b!5586808 () Bool)

(declare-fun res!2370625 () Bool)

(assert (=> b!5586808 (=> res!2370625 e!3446904)))

(assert (=> b!5586808 (= res!2370625 (or (is-EmptyExpr!15574 r!7292) (is-EmptyLang!15574 r!7292) (is-ElementMatch!15574 r!7292) (is-Union!15574 r!7292) (not (is-Concat!24419 r!7292))))))

(declare-fun b!5586809 () Bool)

(declare-fun tp!1545457 () Bool)

(assert (=> b!5586809 (= e!3446903 tp!1545457)))

(declare-fun b!5586810 () Bool)

(declare-fun res!2370630 () Bool)

(assert (=> b!5586810 (=> res!2370630 e!3446904)))

(assert (=> b!5586810 (= res!2370630 (not (is-Cons!62898 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5586811 () Bool)

(declare-fun res!2370616 () Bool)

(assert (=> b!5586811 (=> res!2370616 e!3446906)))

(assert (=> b!5586811 (= res!2370616 (not (= lt!2254820 lt!2254825)))))

(declare-fun setNonEmpty!37216 () Bool)

(declare-fun setElem!37216 () Context!9916)

(declare-fun tp!1545452 () Bool)

(assert (=> setNonEmpty!37216 (= setRes!37216 (and tp!1545452 (inv!82183 setElem!37216) e!3446908))))

(declare-fun setRest!37216 () (Set Context!9916))

(assert (=> setNonEmpty!37216 (= z!1189 (set.union (set.insert setElem!37216 (as set.empty (Set Context!9916))) setRest!37216))))

(declare-fun b!5586812 () Bool)

(declare-fun res!2370629 () Bool)

(assert (=> b!5586812 (=> (not res!2370629) (not e!3446902))))

(declare-fun unfocusZipper!1316 (List!63023) Regex!15574)

(assert (=> b!5586812 (= res!2370629 (= r!7292 (unfocusZipper!1316 zl!343)))))

(assert (= (and start!580300 res!2370623) b!5586804))

(assert (= (and b!5586804 res!2370619) b!5586812))

(assert (= (and b!5586812 res!2370629) b!5586805))

(assert (= (and b!5586805 (not res!2370622)) b!5586797))

(assert (= (and b!5586797 (not res!2370618)) b!5586800))

(assert (= (and b!5586800 (not res!2370611)) b!5586810))

(assert (= (and b!5586810 (not res!2370630)) b!5586793))

(assert (= (and b!5586793 (not res!2370617)) b!5586808))

(assert (= (and b!5586808 (not res!2370625)) b!5586785))

(assert (= (and b!5586785 (not res!2370613)) b!5586796))

(assert (= (and b!5586796 (not res!2370612)) b!5586782))

(assert (= (and b!5586782 c!978674) b!5586795))

(assert (= (and b!5586782 (not c!978674)) b!5586786))

(assert (= (and b!5586795 (not res!2370614)) b!5586787))

(assert (= (and b!5586782 (not res!2370627)) b!5586789))

(assert (= (and b!5586789 (not res!2370628)) b!5586792))

(assert (= (and b!5586792 (not res!2370621)) b!5586803))

(assert (= (and b!5586792 res!2370615) b!5586790))

(assert (= (and b!5586792 (not res!2370626)) b!5586806))

(assert (= (and b!5586806 c!978675) b!5586798))

(assert (= (and b!5586806 (not c!978675)) b!5586794))

(assert (= (and b!5586798 (not res!2370624)) b!5586799))

(assert (= (and b!5586806 (not res!2370620)) b!5586811))

(assert (= (and b!5586811 (not res!2370616)) b!5586781))

(assert (= (and start!580300 (is-ElementMatch!15574 r!7292)) b!5586784))

(assert (= (and start!580300 (is-Concat!24419 r!7292)) b!5586802))

(assert (= (and start!580300 (is-Star!15574 r!7292)) b!5586791))

(assert (= (and start!580300 (is-Union!15574 r!7292)) b!5586788))

(assert (= (and start!580300 condSetEmpty!37216) setIsEmpty!37216))

(assert (= (and start!580300 (not condSetEmpty!37216)) setNonEmpty!37216))

(assert (= setNonEmpty!37216 b!5586801))

(assert (= b!5586783 b!5586809))

(assert (= (and start!580300 (is-Cons!62899 zl!343)) b!5586783))

(assert (= (and start!580300 (is-Cons!62897 s!2326)) b!5586807))

(declare-fun m!6567530 () Bool)

(assert (=> b!5586799 m!6567530))

(declare-fun m!6567532 () Bool)

(assert (=> b!5586803 m!6567532))

(declare-fun m!6567534 () Bool)

(assert (=> b!5586795 m!6567534))

(declare-fun m!6567536 () Bool)

(assert (=> b!5586795 m!6567536))

(declare-fun m!6567538 () Bool)

(assert (=> b!5586795 m!6567538))

(assert (=> b!5586790 m!6567532))

(declare-fun m!6567540 () Bool)

(assert (=> b!5586800 m!6567540))

(declare-fun m!6567542 () Bool)

(assert (=> b!5586812 m!6567542))

(declare-fun m!6567544 () Bool)

(assert (=> b!5586798 m!6567544))

(declare-fun m!6567546 () Bool)

(assert (=> b!5586798 m!6567546))

(declare-fun m!6567548 () Bool)

(assert (=> b!5586781 m!6567548))

(assert (=> b!5586781 m!6567532))

(declare-fun m!6567550 () Bool)

(assert (=> b!5586805 m!6567550))

(declare-fun m!6567552 () Bool)

(assert (=> b!5586805 m!6567552))

(declare-fun m!6567554 () Bool)

(assert (=> b!5586805 m!6567554))

(declare-fun m!6567556 () Bool)

(assert (=> b!5586806 m!6567556))

(declare-fun m!6567558 () Bool)

(assert (=> b!5586806 m!6567558))

(declare-fun m!6567560 () Bool)

(assert (=> b!5586806 m!6567560))

(declare-fun m!6567562 () Bool)

(assert (=> b!5586806 m!6567562))

(declare-fun m!6567564 () Bool)

(assert (=> b!5586806 m!6567564))

(declare-fun m!6567566 () Bool)

(assert (=> b!5586806 m!6567566))

(declare-fun m!6567568 () Bool)

(assert (=> b!5586806 m!6567568))

(declare-fun m!6567570 () Bool)

(assert (=> b!5586806 m!6567570))

(declare-fun m!6567572 () Bool)

(assert (=> b!5586806 m!6567572))

(declare-fun m!6567574 () Bool)

(assert (=> b!5586806 m!6567574))

(declare-fun m!6567576 () Bool)

(assert (=> b!5586789 m!6567576))

(declare-fun m!6567578 () Bool)

(assert (=> b!5586789 m!6567578))

(declare-fun m!6567580 () Bool)

(assert (=> b!5586796 m!6567580))

(declare-fun m!6567582 () Bool)

(assert (=> b!5586804 m!6567582))

(assert (=> b!5586792 m!6567536))

(declare-fun m!6567584 () Bool)

(assert (=> b!5586792 m!6567584))

(declare-fun m!6567586 () Bool)

(assert (=> b!5586792 m!6567586))

(declare-fun m!6567588 () Bool)

(assert (=> b!5586792 m!6567588))

(assert (=> b!5586787 m!6567530))

(declare-fun m!6567590 () Bool)

(assert (=> setNonEmpty!37216 m!6567590))

(declare-fun m!6567592 () Bool)

(assert (=> b!5586793 m!6567592))

(assert (=> b!5586793 m!6567592))

(declare-fun m!6567594 () Bool)

(assert (=> b!5586793 m!6567594))

(declare-fun m!6567596 () Bool)

(assert (=> b!5586783 m!6567596))

(declare-fun m!6567598 () Bool)

(assert (=> b!5586782 m!6567598))

(declare-fun m!6567600 () Bool)

(assert (=> b!5586782 m!6567600))

(declare-fun m!6567602 () Bool)

(assert (=> b!5586782 m!6567602))

(declare-fun m!6567604 () Bool)

(assert (=> b!5586782 m!6567604))

(declare-fun m!6567606 () Bool)

(assert (=> b!5586782 m!6567606))

(declare-fun m!6567608 () Bool)

(assert (=> b!5586782 m!6567608))

(declare-fun m!6567610 () Bool)

(assert (=> b!5586782 m!6567610))

(declare-fun m!6567612 () Bool)

(assert (=> b!5586797 m!6567612))

(declare-fun m!6567614 () Bool)

(assert (=> b!5586785 m!6567614))

(declare-fun m!6567616 () Bool)

(assert (=> b!5586785 m!6567616))

(declare-fun m!6567618 () Bool)

(assert (=> b!5586785 m!6567618))

(declare-fun m!6567620 () Bool)

(assert (=> b!5586785 m!6567620))

(assert (=> b!5586785 m!6567614))

(declare-fun m!6567622 () Bool)

(assert (=> b!5586785 m!6567622))

(assert (=> b!5586785 m!6567618))

(declare-fun m!6567624 () Bool)

(assert (=> b!5586785 m!6567624))

(declare-fun m!6567626 () Bool)

(assert (=> start!580300 m!6567626))

(push 1)

(assert (not b!5586809))

(assert (not b!5586812))

(assert (not b!5586790))

(assert (not b!5586807))

(assert (not b!5586792))

(assert tp_is_empty!40401)

(assert (not b!5586793))

(assert (not b!5586782))

(assert (not b!5586800))

(assert (not b!5586789))

(assert (not b!5586798))

(assert (not b!5586803))

(assert (not b!5586787))

(assert (not b!5586797))

(assert (not b!5586802))

(assert (not b!5586799))

(assert (not b!5586804))

(assert (not b!5586788))

(assert (not b!5586791))

(assert (not b!5586781))

(assert (not setNonEmpty!37216))

(assert (not b!5586783))

(assert (not b!5586805))

(assert (not start!580300))

(assert (not b!5586795))

(assert (not b!5586806))

(assert (not b!5586785))

(assert (not b!5586796))

(assert (not b!5586801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1765809 () Bool)

(declare-fun dynLambda!24597 (Int Context!9916) (Set Context!9916))

(assert (=> d!1765809 (= (flatMap!1187 z!1189 lambda!299775) (dynLambda!24597 lambda!299775 (h!69347 zl!343)))))

(declare-fun lt!2254917 () Unit!155688)

(declare-fun choose!42357 ((Set Context!9916) Context!9916 Int) Unit!155688)

(assert (=> d!1765809 (= lt!2254917 (choose!42357 z!1189 (h!69347 zl!343) lambda!299775))))

(assert (=> d!1765809 (= z!1189 (set.insert (h!69347 zl!343) (as set.empty (Set Context!9916))))))

(assert (=> d!1765809 (= (lemmaFlatMapOnSingletonSet!719 z!1189 (h!69347 zl!343) lambda!299775) lt!2254917)))

(declare-fun b_lambda!211707 () Bool)

(assert (=> (not b_lambda!211707) (not d!1765809)))

(declare-fun bs!1292006 () Bool)

(assert (= bs!1292006 d!1765809))

(assert (=> bs!1292006 m!6567610))

(declare-fun m!6567726 () Bool)

(assert (=> bs!1292006 m!6567726))

(declare-fun m!6567728 () Bool)

(assert (=> bs!1292006 m!6567728))

(declare-fun m!6567730 () Bool)

(assert (=> bs!1292006 m!6567730))

(assert (=> b!5586782 d!1765809))

(declare-fun d!1765811 () Bool)

(declare-fun nullableFct!1715 (Regex!15574) Bool)

(assert (=> d!1765811 (= (nullable!5606 (h!69346 (exprs!5458 (h!69347 zl!343)))) (nullableFct!1715 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun bs!1292007 () Bool)

(assert (= bs!1292007 d!1765811))

(declare-fun m!6567732 () Bool)

(assert (=> bs!1292007 m!6567732))

(assert (=> b!5586782 d!1765811))

(declare-fun bm!418162 () Bool)

(declare-fun call!418167 () (Set Context!9916))

(assert (=> bm!418162 (= call!418167 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326)))))

(declare-fun d!1765813 () Bool)

(declare-fun c!978695 () Bool)

(declare-fun e!3446984 () Bool)

(assert (=> d!1765813 (= c!978695 e!3446984)))

(declare-fun res!2370705 () Bool)

(assert (=> d!1765813 (=> (not res!2370705) (not e!3446984))))

(assert (=> d!1765813 (= res!2370705 (is-Cons!62898 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))

(declare-fun e!3446986 () (Set Context!9916))

(assert (=> d!1765813 (= (derivationStepZipperUp!842 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))) (h!69345 s!2326)) e!3446986)))

(declare-fun b!5586943 () Bool)

(declare-fun e!3446985 () (Set Context!9916))

(assert (=> b!5586943 (= e!3446985 call!418167)))

(declare-fun b!5586944 () Bool)

(assert (=> b!5586944 (= e!3446984 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun b!5586945 () Bool)

(assert (=> b!5586945 (= e!3446985 (as set.empty (Set Context!9916)))))

(declare-fun b!5586946 () Bool)

(assert (=> b!5586946 (= e!3446986 e!3446985)))

(declare-fun c!978696 () Bool)

(assert (=> b!5586946 (= c!978696 (is-Cons!62898 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))

(declare-fun b!5586947 () Bool)

(assert (=> b!5586947 (= e!3446986 (set.union call!418167 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326))))))

(assert (= (and d!1765813 res!2370705) b!5586944))

(assert (= (and d!1765813 c!978695) b!5586947))

(assert (= (and d!1765813 (not c!978695)) b!5586946))

(assert (= (and b!5586946 c!978696) b!5586943))

(assert (= (and b!5586946 (not c!978696)) b!5586945))

(assert (= (or b!5586947 b!5586943) bm!418162))

(declare-fun m!6567734 () Bool)

(assert (=> bm!418162 m!6567734))

(declare-fun m!6567736 () Bool)

(assert (=> b!5586944 m!6567736))

(declare-fun m!6567738 () Bool)

(assert (=> b!5586947 m!6567738))

(assert (=> b!5586782 d!1765813))

(declare-fun bm!418163 () Bool)

(declare-fun call!418168 () (Set Context!9916))

(assert (=> bm!418163 (= call!418168 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (h!69347 zl!343))) (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326)))))

(declare-fun d!1765815 () Bool)

(declare-fun c!978697 () Bool)

(declare-fun e!3446987 () Bool)

(assert (=> d!1765815 (= c!978697 e!3446987)))

(declare-fun res!2370706 () Bool)

(assert (=> d!1765815 (=> (not res!2370706) (not e!3446987))))

(assert (=> d!1765815 (= res!2370706 (is-Cons!62898 (exprs!5458 (h!69347 zl!343))))))

(declare-fun e!3446989 () (Set Context!9916))

(assert (=> d!1765815 (= (derivationStepZipperUp!842 (h!69347 zl!343) (h!69345 s!2326)) e!3446989)))

(declare-fun b!5586948 () Bool)

(declare-fun e!3446988 () (Set Context!9916))

(assert (=> b!5586948 (= e!3446988 call!418168)))

(declare-fun b!5586949 () Bool)

(assert (=> b!5586949 (= e!3446987 (nullable!5606 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5586950 () Bool)

(assert (=> b!5586950 (= e!3446988 (as set.empty (Set Context!9916)))))

(declare-fun b!5586951 () Bool)

(assert (=> b!5586951 (= e!3446989 e!3446988)))

(declare-fun c!978698 () Bool)

(assert (=> b!5586951 (= c!978698 (is-Cons!62898 (exprs!5458 (h!69347 zl!343))))))

(declare-fun b!5586952 () Bool)

(assert (=> b!5586952 (= e!3446989 (set.union call!418168 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326))))))

(assert (= (and d!1765815 res!2370706) b!5586949))

(assert (= (and d!1765815 c!978697) b!5586952))

(assert (= (and d!1765815 (not c!978697)) b!5586951))

(assert (= (and b!5586951 c!978698) b!5586948))

(assert (= (and b!5586951 (not c!978698)) b!5586950))

(assert (= (or b!5586952 b!5586948) bm!418163))

(declare-fun m!6567740 () Bool)

(assert (=> bm!418163 m!6567740))

(assert (=> b!5586949 m!6567608))

(declare-fun m!6567742 () Bool)

(assert (=> b!5586952 m!6567742))

(assert (=> b!5586782 d!1765815))

(declare-fun bm!418164 () Bool)

(declare-fun call!418169 () (Set Context!9916))

(assert (=> bm!418164 (= call!418169 (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254824)) (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (h!69345 s!2326)))))

(declare-fun d!1765817 () Bool)

(declare-fun c!978699 () Bool)

(declare-fun e!3446990 () Bool)

(assert (=> d!1765817 (= c!978699 e!3446990)))

(declare-fun res!2370707 () Bool)

(assert (=> d!1765817 (=> (not res!2370707) (not e!3446990))))

(assert (=> d!1765817 (= res!2370707 (is-Cons!62898 (exprs!5458 lt!2254824)))))

(declare-fun e!3446992 () (Set Context!9916))

(assert (=> d!1765817 (= (derivationStepZipperUp!842 lt!2254824 (h!69345 s!2326)) e!3446992)))

(declare-fun b!5586953 () Bool)

(declare-fun e!3446991 () (Set Context!9916))

(assert (=> b!5586953 (= e!3446991 call!418169)))

(declare-fun b!5586954 () Bool)

(assert (=> b!5586954 (= e!3446990 (nullable!5606 (h!69346 (exprs!5458 lt!2254824))))))

(declare-fun b!5586955 () Bool)

(assert (=> b!5586955 (= e!3446991 (as set.empty (Set Context!9916)))))

(declare-fun b!5586956 () Bool)

(assert (=> b!5586956 (= e!3446992 e!3446991)))

(declare-fun c!978700 () Bool)

(assert (=> b!5586956 (= c!978700 (is-Cons!62898 (exprs!5458 lt!2254824)))))

(declare-fun b!5586957 () Bool)

(assert (=> b!5586957 (= e!3446992 (set.union call!418169 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (h!69345 s!2326))))))

(assert (= (and d!1765817 res!2370707) b!5586954))

(assert (= (and d!1765817 c!978699) b!5586957))

(assert (= (and d!1765817 (not c!978699)) b!5586956))

(assert (= (and b!5586956 c!978700) b!5586953))

(assert (= (and b!5586956 (not c!978700)) b!5586955))

(assert (= (or b!5586957 b!5586953) bm!418164))

(declare-fun m!6567744 () Bool)

(assert (=> bm!418164 m!6567744))

(declare-fun m!6567746 () Bool)

(assert (=> b!5586954 m!6567746))

(declare-fun m!6567748 () Bool)

(assert (=> b!5586957 m!6567748))

(assert (=> b!5586782 d!1765817))

(declare-fun bm!418177 () Bool)

(declare-fun call!418183 () (Set Context!9916))

(declare-fun call!418184 () (Set Context!9916))

(assert (=> bm!418177 (= call!418183 call!418184)))

(declare-fun b!5586980 () Bool)

(declare-fun e!3447009 () (Set Context!9916))

(declare-fun call!418186 () (Set Context!9916))

(assert (=> b!5586980 (= e!3447009 (set.union call!418186 call!418183))))

(declare-fun call!418187 () List!63022)

(declare-fun c!978713 () Bool)

(declare-fun bm!418178 () Bool)

(assert (=> bm!418178 (= call!418186 (derivationStepZipperDown!916 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))) (ite c!978713 lt!2254824 (Context!9917 call!418187)) (h!69345 s!2326)))))

(declare-fun bm!418179 () Bool)

(declare-fun call!418182 () (Set Context!9916))

(assert (=> bm!418179 (= call!418182 call!418183)))

(declare-fun d!1765819 () Bool)

(declare-fun c!978714 () Bool)

(assert (=> d!1765819 (= c!978714 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))) (= (c!978676 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326))))))

(declare-fun e!3447005 () (Set Context!9916))

(assert (=> d!1765819 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 (h!69347 zl!343))) lt!2254824 (h!69345 s!2326)) e!3447005)))

(declare-fun b!5586981 () Bool)

(declare-fun e!3447007 () (Set Context!9916))

(assert (=> b!5586981 (= e!3447005 e!3447007)))

(assert (=> b!5586981 (= c!978713 (is-Union!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun c!978715 () Bool)

(declare-fun call!418185 () List!63022)

(declare-fun c!978711 () Bool)

(declare-fun bm!418180 () Bool)

(assert (=> bm!418180 (= call!418184 (derivationStepZipperDown!916 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))) (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185)) (h!69345 s!2326)))))

(declare-fun b!5586982 () Bool)

(declare-fun e!3447006 () Bool)

(assert (=> b!5586982 (= c!978711 e!3447006)))

(declare-fun res!2370710 () Bool)

(assert (=> b!5586982 (=> (not res!2370710) (not e!3447006))))

(assert (=> b!5586982 (= res!2370710 (is-Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5586982 (= e!3447007 e!3447009)))

(declare-fun b!5586983 () Bool)

(declare-fun e!3447008 () (Set Context!9916))

(assert (=> b!5586983 (= e!3447008 call!418182)))

(declare-fun b!5586984 () Bool)

(assert (=> b!5586984 (= e!3447009 e!3447008)))

(assert (=> b!5586984 (= c!978715 (is-Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5586985 () Bool)

(assert (=> b!5586985 (= e!3447006 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5586986 () Bool)

(assert (=> b!5586986 (= e!3447005 (set.insert lt!2254824 (as set.empty (Set Context!9916))))))

(declare-fun b!5586987 () Bool)

(declare-fun e!3447010 () (Set Context!9916))

(assert (=> b!5586987 (= e!3447010 call!418182)))

(declare-fun b!5586988 () Bool)

(assert (=> b!5586988 (= e!3447007 (set.union call!418186 call!418184))))

(declare-fun b!5586989 () Bool)

(declare-fun c!978712 () Bool)

(assert (=> b!5586989 (= c!978712 (is-Star!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5586989 (= e!3447008 e!3447010)))

(declare-fun bm!418181 () Bool)

(declare-fun $colon$colon!1637 (List!63022 Regex!15574) List!63022)

(assert (=> bm!418181 (= call!418187 ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978711 c!978715) (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69346 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun bm!418182 () Bool)

(assert (=> bm!418182 (= call!418185 call!418187)))

(declare-fun b!5586990 () Bool)

(assert (=> b!5586990 (= e!3447010 (as set.empty (Set Context!9916)))))

(assert (= (and d!1765819 c!978714) b!5586986))

(assert (= (and d!1765819 (not c!978714)) b!5586981))

(assert (= (and b!5586981 c!978713) b!5586988))

(assert (= (and b!5586981 (not c!978713)) b!5586982))

(assert (= (and b!5586982 res!2370710) b!5586985))

(assert (= (and b!5586982 c!978711) b!5586980))

(assert (= (and b!5586982 (not c!978711)) b!5586984))

(assert (= (and b!5586984 c!978715) b!5586983))

(assert (= (and b!5586984 (not c!978715)) b!5586989))

(assert (= (and b!5586989 c!978712) b!5586987))

(assert (= (and b!5586989 (not c!978712)) b!5586990))

(assert (= (or b!5586983 b!5586987) bm!418182))

(assert (= (or b!5586983 b!5586987) bm!418179))

(assert (= (or b!5586980 bm!418182) bm!418181))

(assert (= (or b!5586980 bm!418179) bm!418177))

(assert (= (or b!5586988 bm!418177) bm!418180))

(assert (= (or b!5586988 b!5586980) bm!418178))

(declare-fun m!6567750 () Bool)

(assert (=> bm!418181 m!6567750))

(declare-fun m!6567752 () Bool)

(assert (=> bm!418180 m!6567752))

(declare-fun m!6567754 () Bool)

(assert (=> b!5586986 m!6567754))

(declare-fun m!6567756 () Bool)

(assert (=> bm!418178 m!6567756))

(declare-fun m!6567758 () Bool)

(assert (=> b!5586985 m!6567758))

(assert (=> b!5586782 d!1765819))

(declare-fun d!1765821 () Bool)

(declare-fun choose!42358 ((Set Context!9916) Int) (Set Context!9916))

(assert (=> d!1765821 (= (flatMap!1187 z!1189 lambda!299775) (choose!42358 z!1189 lambda!299775))))

(declare-fun bs!1292008 () Bool)

(assert (= bs!1292008 d!1765821))

(declare-fun m!6567760 () Bool)

(assert (=> bs!1292008 m!6567760))

(assert (=> b!5586782 d!1765821))

(declare-fun d!1765823 () Bool)

(declare-fun lt!2254920 () Regex!15574)

(assert (=> d!1765823 (validRegex!7310 lt!2254920)))

(assert (=> d!1765823 (= lt!2254920 (generalisedUnion!1437 (unfocusZipperList!1002 zl!343)))))

(assert (=> d!1765823 (= (unfocusZipper!1316 zl!343) lt!2254920)))

(declare-fun bs!1292009 () Bool)

(assert (= bs!1292009 d!1765823))

(declare-fun m!6567762 () Bool)

(assert (=> bs!1292009 m!6567762))

(assert (=> bs!1292009 m!6567592))

(assert (=> bs!1292009 m!6567592))

(assert (=> bs!1292009 m!6567594))

(assert (=> b!5586812 d!1765823))

(declare-fun b!5587011 () Bool)

(declare-fun e!3447025 () Regex!15574)

(assert (=> b!5587011 (= e!3447025 EmptyLang!15574)))

(declare-fun b!5587012 () Bool)

(declare-fun e!3447024 () Bool)

(declare-fun lt!2254923 () Regex!15574)

(declare-fun isUnion!568 (Regex!15574) Bool)

(assert (=> b!5587012 (= e!3447024 (isUnion!568 lt!2254923))))

(declare-fun d!1765825 () Bool)

(declare-fun e!3447023 () Bool)

(assert (=> d!1765825 e!3447023))

(declare-fun res!2370716 () Bool)

(assert (=> d!1765825 (=> (not res!2370716) (not e!3447023))))

(assert (=> d!1765825 (= res!2370716 (validRegex!7310 lt!2254923))))

(declare-fun e!3447027 () Regex!15574)

(assert (=> d!1765825 (= lt!2254923 e!3447027)))

(declare-fun c!978727 () Bool)

(declare-fun e!3447028 () Bool)

(assert (=> d!1765825 (= c!978727 e!3447028)))

(declare-fun res!2370715 () Bool)

(assert (=> d!1765825 (=> (not res!2370715) (not e!3447028))))

(assert (=> d!1765825 (= res!2370715 (is-Cons!62898 (unfocusZipperList!1002 zl!343)))))

(declare-fun lambda!299793 () Int)

(declare-fun forall!14740 (List!63022 Int) Bool)

(assert (=> d!1765825 (forall!14740 (unfocusZipperList!1002 zl!343) lambda!299793)))

(assert (=> d!1765825 (= (generalisedUnion!1437 (unfocusZipperList!1002 zl!343)) lt!2254923)))

(declare-fun b!5587013 () Bool)

(declare-fun e!3447026 () Bool)

(declare-fun isEmptyLang!1138 (Regex!15574) Bool)

(assert (=> b!5587013 (= e!3447026 (isEmptyLang!1138 lt!2254923))))

(declare-fun b!5587014 () Bool)

(assert (=> b!5587014 (= e!3447027 (h!69346 (unfocusZipperList!1002 zl!343)))))

(declare-fun b!5587015 () Bool)

(declare-fun head!11917 (List!63022) Regex!15574)

(assert (=> b!5587015 (= e!3447024 (= lt!2254923 (head!11917 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587016 () Bool)

(assert (=> b!5587016 (= e!3447025 (Union!15574 (h!69346 (unfocusZipperList!1002 zl!343)) (generalisedUnion!1437 (t!376297 (unfocusZipperList!1002 zl!343)))))))

(declare-fun b!5587017 () Bool)

(assert (=> b!5587017 (= e!3447023 e!3447026)))

(declare-fun c!978724 () Bool)

(assert (=> b!5587017 (= c!978724 (isEmpty!34712 (unfocusZipperList!1002 zl!343)))))

(declare-fun b!5587018 () Bool)

(assert (=> b!5587018 (= e!3447028 (isEmpty!34712 (t!376297 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587019 () Bool)

(assert (=> b!5587019 (= e!3447027 e!3447025)))

(declare-fun c!978725 () Bool)

(assert (=> b!5587019 (= c!978725 (is-Cons!62898 (unfocusZipperList!1002 zl!343)))))

(declare-fun b!5587020 () Bool)

(assert (=> b!5587020 (= e!3447026 e!3447024)))

(declare-fun c!978726 () Bool)

(declare-fun tail!11012 (List!63022) List!63022)

(assert (=> b!5587020 (= c!978726 (isEmpty!34712 (tail!11012 (unfocusZipperList!1002 zl!343))))))

(assert (= (and d!1765825 res!2370715) b!5587018))

(assert (= (and d!1765825 c!978727) b!5587014))

(assert (= (and d!1765825 (not c!978727)) b!5587019))

(assert (= (and b!5587019 c!978725) b!5587016))

(assert (= (and b!5587019 (not c!978725)) b!5587011))

(assert (= (and d!1765825 res!2370716) b!5587017))

(assert (= (and b!5587017 c!978724) b!5587013))

(assert (= (and b!5587017 (not c!978724)) b!5587020))

(assert (= (and b!5587020 c!978726) b!5587015))

(assert (= (and b!5587020 (not c!978726)) b!5587012))

(declare-fun m!6567764 () Bool)

(assert (=> b!5587018 m!6567764))

(assert (=> b!5587017 m!6567592))

(declare-fun m!6567766 () Bool)

(assert (=> b!5587017 m!6567766))

(assert (=> b!5587020 m!6567592))

(declare-fun m!6567768 () Bool)

(assert (=> b!5587020 m!6567768))

(assert (=> b!5587020 m!6567768))

(declare-fun m!6567770 () Bool)

(assert (=> b!5587020 m!6567770))

(declare-fun m!6567772 () Bool)

(assert (=> b!5587016 m!6567772))

(declare-fun m!6567774 () Bool)

(assert (=> d!1765825 m!6567774))

(assert (=> d!1765825 m!6567592))

(declare-fun m!6567776 () Bool)

(assert (=> d!1765825 m!6567776))

(declare-fun m!6567778 () Bool)

(assert (=> b!5587012 m!6567778))

(assert (=> b!5587015 m!6567592))

(declare-fun m!6567780 () Bool)

(assert (=> b!5587015 m!6567780))

(declare-fun m!6567782 () Bool)

(assert (=> b!5587013 m!6567782))

(assert (=> b!5586793 d!1765825))

(declare-fun bs!1292010 () Bool)

(declare-fun d!1765827 () Bool)

(assert (= bs!1292010 (and d!1765827 d!1765825)))

(declare-fun lambda!299796 () Int)

(assert (=> bs!1292010 (= lambda!299796 lambda!299793)))

(declare-fun lt!2254926 () List!63022)

(assert (=> d!1765827 (forall!14740 lt!2254926 lambda!299796)))

(declare-fun e!3447031 () List!63022)

(assert (=> d!1765827 (= lt!2254926 e!3447031)))

(declare-fun c!978730 () Bool)

(assert (=> d!1765827 (= c!978730 (is-Cons!62899 zl!343))))

(assert (=> d!1765827 (= (unfocusZipperList!1002 zl!343) lt!2254926)))

(declare-fun b!5587025 () Bool)

(assert (=> b!5587025 (= e!3447031 (Cons!62898 (generalisedConcat!1189 (exprs!5458 (h!69347 zl!343))) (unfocusZipperList!1002 (t!376298 zl!343))))))

(declare-fun b!5587026 () Bool)

(assert (=> b!5587026 (= e!3447031 Nil!62898)))

(assert (= (and d!1765827 c!978730) b!5587025))

(assert (= (and d!1765827 (not c!978730)) b!5587026))

(declare-fun m!6567784 () Bool)

(assert (=> d!1765827 m!6567784))

(assert (=> b!5587025 m!6567540))

(declare-fun m!6567786 () Bool)

(assert (=> b!5587025 m!6567786))

(assert (=> b!5586793 d!1765827))

(declare-fun d!1765829 () Bool)

(declare-fun c!978733 () Bool)

(declare-fun isEmpty!34716 (List!63021) Bool)

(assert (=> d!1765829 (= c!978733 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447034 () Bool)

(assert (=> d!1765829 (= (matchZipper!1712 lt!2254825 (t!376296 s!2326)) e!3447034)))

(declare-fun b!5587031 () Bool)

(declare-fun nullableZipper!1569 ((Set Context!9916)) Bool)

(assert (=> b!5587031 (= e!3447034 (nullableZipper!1569 lt!2254825))))

(declare-fun b!5587032 () Bool)

(declare-fun derivationStepZipper!1673 ((Set Context!9916) C!31418) (Set Context!9916))

(declare-fun head!11918 (List!63021) C!31418)

(declare-fun tail!11013 (List!63021) List!63021)

(assert (=> b!5587032 (= e!3447034 (matchZipper!1712 (derivationStepZipper!1673 lt!2254825 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765829 c!978733) b!5587031))

(assert (= (and d!1765829 (not c!978733)) b!5587032))

(declare-fun m!6567788 () Bool)

(assert (=> d!1765829 m!6567788))

(declare-fun m!6567790 () Bool)

(assert (=> b!5587031 m!6567790))

(declare-fun m!6567792 () Bool)

(assert (=> b!5587032 m!6567792))

(assert (=> b!5587032 m!6567792))

(declare-fun m!6567794 () Bool)

(assert (=> b!5587032 m!6567794))

(declare-fun m!6567796 () Bool)

(assert (=> b!5587032 m!6567796))

(assert (=> b!5587032 m!6567794))

(assert (=> b!5587032 m!6567796))

(declare-fun m!6567798 () Bool)

(assert (=> b!5587032 m!6567798))

(assert (=> b!5586803 d!1765829))

(declare-fun bs!1292011 () Bool)

(declare-fun d!1765831 () Bool)

(assert (= bs!1292011 (and d!1765831 d!1765825)))

(declare-fun lambda!299799 () Int)

(assert (=> bs!1292011 (= lambda!299799 lambda!299793)))

(declare-fun bs!1292012 () Bool)

(assert (= bs!1292012 (and d!1765831 d!1765827)))

(assert (=> bs!1292012 (= lambda!299799 lambda!299796)))

(assert (=> d!1765831 (= (inv!82183 (h!69347 zl!343)) (forall!14740 (exprs!5458 (h!69347 zl!343)) lambda!299799))))

(declare-fun bs!1292013 () Bool)

(assert (= bs!1292013 d!1765831))

(declare-fun m!6567800 () Bool)

(assert (=> bs!1292013 m!6567800))

(assert (=> b!5586783 d!1765831))

(declare-fun d!1765833 () Bool)

(declare-fun e!3447037 () Bool)

(assert (=> d!1765833 e!3447037))

(declare-fun res!2370719 () Bool)

(assert (=> d!1765833 (=> (not res!2370719) (not e!3447037))))

(declare-fun lt!2254929 () List!63023)

(declare-fun noDuplicate!1550 (List!63023) Bool)

(assert (=> d!1765833 (= res!2370719 (noDuplicate!1550 lt!2254929))))

(declare-fun choose!42359 ((Set Context!9916)) List!63023)

(assert (=> d!1765833 (= lt!2254929 (choose!42359 z!1189))))

(assert (=> d!1765833 (= (toList!9358 z!1189) lt!2254929)))

(declare-fun b!5587035 () Bool)

(declare-fun content!11344 (List!63023) (Set Context!9916))

(assert (=> b!5587035 (= e!3447037 (= (content!11344 lt!2254929) z!1189))))

(assert (= (and d!1765833 res!2370719) b!5587035))

(declare-fun m!6567802 () Bool)

(assert (=> d!1765833 m!6567802))

(declare-fun m!6567804 () Bool)

(assert (=> d!1765833 m!6567804))

(declare-fun m!6567806 () Bool)

(assert (=> b!5587035 m!6567806))

(assert (=> b!5586804 d!1765833))

(declare-fun e!3447040 () Bool)

(declare-fun d!1765835 () Bool)

(assert (=> d!1765835 (= (matchZipper!1712 (set.union lt!2254821 lt!2254822) (t!376296 s!2326)) e!3447040)))

(declare-fun res!2370722 () Bool)

(assert (=> d!1765835 (=> res!2370722 e!3447040)))

(assert (=> d!1765835 (= res!2370722 (matchZipper!1712 lt!2254821 (t!376296 s!2326)))))

(declare-fun lt!2254932 () Unit!155688)

(declare-fun choose!42360 ((Set Context!9916) (Set Context!9916) List!63021) Unit!155688)

(assert (=> d!1765835 (= lt!2254932 (choose!42360 lt!2254821 lt!2254822 (t!376296 s!2326)))))

(assert (=> d!1765835 (= (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254821 lt!2254822 (t!376296 s!2326)) lt!2254932)))

(declare-fun b!5587038 () Bool)

(assert (=> b!5587038 (= e!3447040 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(assert (= (and d!1765835 (not res!2370722)) b!5587038))

(assert (=> d!1765835 m!6567538))

(assert (=> d!1765835 m!6567536))

(declare-fun m!6567808 () Bool)

(assert (=> d!1765835 m!6567808))

(assert (=> b!5587038 m!6567530))

(assert (=> b!5586795 d!1765835))

(declare-fun d!1765837 () Bool)

(declare-fun c!978734 () Bool)

(assert (=> d!1765837 (= c!978734 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447041 () Bool)

(assert (=> d!1765837 (= (matchZipper!1712 lt!2254821 (t!376296 s!2326)) e!3447041)))

(declare-fun b!5587039 () Bool)

(assert (=> b!5587039 (= e!3447041 (nullableZipper!1569 lt!2254821))))

(declare-fun b!5587040 () Bool)

(assert (=> b!5587040 (= e!3447041 (matchZipper!1712 (derivationStepZipper!1673 lt!2254821 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765837 c!978734) b!5587039))

(assert (= (and d!1765837 (not c!978734)) b!5587040))

(assert (=> d!1765837 m!6567788))

(declare-fun m!6567810 () Bool)

(assert (=> b!5587039 m!6567810))

(assert (=> b!5587040 m!6567792))

(assert (=> b!5587040 m!6567792))

(declare-fun m!6567812 () Bool)

(assert (=> b!5587040 m!6567812))

(assert (=> b!5587040 m!6567796))

(assert (=> b!5587040 m!6567812))

(assert (=> b!5587040 m!6567796))

(declare-fun m!6567814 () Bool)

(assert (=> b!5587040 m!6567814))

(assert (=> b!5586795 d!1765837))

(declare-fun d!1765839 () Bool)

(declare-fun c!978735 () Bool)

(assert (=> d!1765839 (= c!978735 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447042 () Bool)

(assert (=> d!1765839 (= (matchZipper!1712 (set.union lt!2254821 lt!2254822) (t!376296 s!2326)) e!3447042)))

(declare-fun b!5587041 () Bool)

(assert (=> b!5587041 (= e!3447042 (nullableZipper!1569 (set.union lt!2254821 lt!2254822)))))

(declare-fun b!5587042 () Bool)

(assert (=> b!5587042 (= e!3447042 (matchZipper!1712 (derivationStepZipper!1673 (set.union lt!2254821 lt!2254822) (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765839 c!978735) b!5587041))

(assert (= (and d!1765839 (not c!978735)) b!5587042))

(assert (=> d!1765839 m!6567788))

(declare-fun m!6567816 () Bool)

(assert (=> b!5587041 m!6567816))

(assert (=> b!5587042 m!6567792))

(assert (=> b!5587042 m!6567792))

(declare-fun m!6567818 () Bool)

(assert (=> b!5587042 m!6567818))

(assert (=> b!5587042 m!6567796))

(assert (=> b!5587042 m!6567818))

(assert (=> b!5587042 m!6567796))

(declare-fun m!6567820 () Bool)

(assert (=> b!5587042 m!6567820))

(assert (=> b!5586795 d!1765839))

(declare-fun bs!1292014 () Bool)

(declare-fun b!5587080 () Bool)

(assert (= bs!1292014 (and b!5587080 b!5586785)))

(declare-fun lambda!299804 () Int)

(assert (=> bs!1292014 (not (= lambda!299804 lambda!299773))))

(assert (=> bs!1292014 (not (= lambda!299804 lambda!299774))))

(assert (=> b!5587080 true))

(assert (=> b!5587080 true))

(declare-fun bs!1292015 () Bool)

(declare-fun b!5587085 () Bool)

(assert (= bs!1292015 (and b!5587085 b!5586785)))

(declare-fun lambda!299805 () Int)

(assert (=> bs!1292015 (not (= lambda!299805 lambda!299773))))

(assert (=> bs!1292015 (= lambda!299805 lambda!299774)))

(declare-fun bs!1292016 () Bool)

(assert (= bs!1292016 (and b!5587085 b!5587080)))

(assert (=> bs!1292016 (not (= lambda!299805 lambda!299804))))

(assert (=> b!5587085 true))

(assert (=> b!5587085 true))

(declare-fun d!1765841 () Bool)

(declare-fun c!978746 () Bool)

(assert (=> d!1765841 (= c!978746 (is-EmptyExpr!15574 r!7292))))

(declare-fun e!3447067 () Bool)

(assert (=> d!1765841 (= (matchRSpec!2677 r!7292 s!2326) e!3447067)))

(declare-fun bm!418187 () Bool)

(declare-fun call!418192 () Bool)

(declare-fun c!978747 () Bool)

(assert (=> bm!418187 (= call!418192 (Exists!2674 (ite c!978747 lambda!299804 lambda!299805)))))

(declare-fun b!5587075 () Bool)

(declare-fun e!3447061 () Bool)

(assert (=> b!5587075 (= e!3447067 e!3447061)))

(declare-fun res!2370739 () Bool)

(assert (=> b!5587075 (= res!2370739 (not (is-EmptyLang!15574 r!7292)))))

(assert (=> b!5587075 (=> (not res!2370739) (not e!3447061))))

(declare-fun b!5587076 () Bool)

(declare-fun e!3447065 () Bool)

(declare-fun e!3447066 () Bool)

(assert (=> b!5587076 (= e!3447065 e!3447066)))

(declare-fun res!2370741 () Bool)

(assert (=> b!5587076 (= res!2370741 (matchRSpec!2677 (regOne!31661 r!7292) s!2326))))

(assert (=> b!5587076 (=> res!2370741 e!3447066)))

(declare-fun b!5587077 () Bool)

(declare-fun c!978745 () Bool)

(assert (=> b!5587077 (= c!978745 (is-Union!15574 r!7292))))

(declare-fun e!3447062 () Bool)

(assert (=> b!5587077 (= e!3447062 e!3447065)))

(declare-fun b!5587078 () Bool)

(declare-fun call!418193 () Bool)

(assert (=> b!5587078 (= e!3447067 call!418193)))

(declare-fun b!5587079 () Bool)

(declare-fun c!978744 () Bool)

(assert (=> b!5587079 (= c!978744 (is-ElementMatch!15574 r!7292))))

(assert (=> b!5587079 (= e!3447061 e!3447062)))

(declare-fun e!3447064 () Bool)

(assert (=> b!5587080 (= e!3447064 call!418192)))

(declare-fun b!5587081 () Bool)

(declare-fun res!2370740 () Bool)

(assert (=> b!5587081 (=> res!2370740 e!3447064)))

(assert (=> b!5587081 (= res!2370740 call!418193)))

(declare-fun e!3447063 () Bool)

(assert (=> b!5587081 (= e!3447063 e!3447064)))

(declare-fun b!5587082 () Bool)

(assert (=> b!5587082 (= e!3447066 (matchRSpec!2677 (regTwo!31661 r!7292) s!2326))))

(declare-fun b!5587083 () Bool)

(assert (=> b!5587083 (= e!3447062 (= s!2326 (Cons!62897 (c!978676 r!7292) Nil!62897)))))

(declare-fun b!5587084 () Bool)

(assert (=> b!5587084 (= e!3447065 e!3447063)))

(assert (=> b!5587084 (= c!978747 (is-Star!15574 r!7292))))

(assert (=> b!5587085 (= e!3447063 call!418192)))

(declare-fun bm!418188 () Bool)

(assert (=> bm!418188 (= call!418193 (isEmpty!34716 s!2326))))

(assert (= (and d!1765841 c!978746) b!5587078))

(assert (= (and d!1765841 (not c!978746)) b!5587075))

(assert (= (and b!5587075 res!2370739) b!5587079))

(assert (= (and b!5587079 c!978744) b!5587083))

(assert (= (and b!5587079 (not c!978744)) b!5587077))

(assert (= (and b!5587077 c!978745) b!5587076))

(assert (= (and b!5587077 (not c!978745)) b!5587084))

(assert (= (and b!5587076 (not res!2370741)) b!5587082))

(assert (= (and b!5587084 c!978747) b!5587081))

(assert (= (and b!5587084 (not c!978747)) b!5587085))

(assert (= (and b!5587081 (not res!2370740)) b!5587080))

(assert (= (or b!5587080 b!5587085) bm!418187))

(assert (= (or b!5587078 b!5587081) bm!418188))

(declare-fun m!6567822 () Bool)

(assert (=> bm!418187 m!6567822))

(declare-fun m!6567824 () Bool)

(assert (=> b!5587076 m!6567824))

(declare-fun m!6567826 () Bool)

(assert (=> b!5587082 m!6567826))

(declare-fun m!6567828 () Bool)

(assert (=> bm!418188 m!6567828))

(assert (=> b!5586805 d!1765841))

(declare-fun b!5587114 () Bool)

(declare-fun e!3447088 () Bool)

(assert (=> b!5587114 (= e!3447088 (= (head!11918 s!2326) (c!978676 r!7292)))))

(declare-fun b!5587116 () Bool)

(declare-fun res!2370763 () Bool)

(declare-fun e!3447083 () Bool)

(assert (=> b!5587116 (=> res!2370763 e!3447083)))

(assert (=> b!5587116 (= res!2370763 (not (isEmpty!34716 (tail!11013 s!2326))))))

(declare-fun b!5587117 () Bool)

(declare-fun e!3447085 () Bool)

(assert (=> b!5587117 (= e!3447085 (nullable!5606 r!7292))))

(declare-fun b!5587118 () Bool)

(declare-fun res!2370762 () Bool)

(assert (=> b!5587118 (=> (not res!2370762) (not e!3447088))))

(assert (=> b!5587118 (= res!2370762 (isEmpty!34716 (tail!11013 s!2326)))))

(declare-fun b!5587119 () Bool)

(declare-fun e!3447087 () Bool)

(declare-fun e!3447084 () Bool)

(assert (=> b!5587119 (= e!3447087 e!3447084)))

(declare-fun c!978754 () Bool)

(assert (=> b!5587119 (= c!978754 (is-EmptyLang!15574 r!7292))))

(declare-fun b!5587120 () Bool)

(declare-fun lt!2254935 () Bool)

(declare-fun call!418196 () Bool)

(assert (=> b!5587120 (= e!3447087 (= lt!2254935 call!418196))))

(declare-fun b!5587121 () Bool)

(declare-fun res!2370764 () Bool)

(declare-fun e!3447086 () Bool)

(assert (=> b!5587121 (=> res!2370764 e!3447086)))

(assert (=> b!5587121 (= res!2370764 e!3447088)))

(declare-fun res!2370761 () Bool)

(assert (=> b!5587121 (=> (not res!2370761) (not e!3447088))))

(assert (=> b!5587121 (= res!2370761 lt!2254935)))

(declare-fun b!5587122 () Bool)

(declare-fun e!3447082 () Bool)

(assert (=> b!5587122 (= e!3447086 e!3447082)))

(declare-fun res!2370759 () Bool)

(assert (=> b!5587122 (=> (not res!2370759) (not e!3447082))))

(assert (=> b!5587122 (= res!2370759 (not lt!2254935))))

(declare-fun b!5587123 () Bool)

(declare-fun res!2370760 () Bool)

(assert (=> b!5587123 (=> (not res!2370760) (not e!3447088))))

(assert (=> b!5587123 (= res!2370760 (not call!418196))))

(declare-fun b!5587124 () Bool)

(declare-fun res!2370758 () Bool)

(assert (=> b!5587124 (=> res!2370758 e!3447086)))

(assert (=> b!5587124 (= res!2370758 (not (is-ElementMatch!15574 r!7292)))))

(assert (=> b!5587124 (= e!3447084 e!3447086)))

(declare-fun b!5587125 () Bool)

(assert (=> b!5587125 (= e!3447084 (not lt!2254935))))

(declare-fun d!1765843 () Bool)

(assert (=> d!1765843 e!3447087))

(declare-fun c!978756 () Bool)

(assert (=> d!1765843 (= c!978756 (is-EmptyExpr!15574 r!7292))))

(assert (=> d!1765843 (= lt!2254935 e!3447085)))

(declare-fun c!978755 () Bool)

(assert (=> d!1765843 (= c!978755 (isEmpty!34716 s!2326))))

(assert (=> d!1765843 (validRegex!7310 r!7292)))

(assert (=> d!1765843 (= (matchR!7759 r!7292 s!2326) lt!2254935)))

(declare-fun b!5587115 () Bool)

(assert (=> b!5587115 (= e!3447083 (not (= (head!11918 s!2326) (c!978676 r!7292))))))

(declare-fun b!5587126 () Bool)

(declare-fun derivativeStep!4422 (Regex!15574 C!31418) Regex!15574)

(assert (=> b!5587126 (= e!3447085 (matchR!7759 (derivativeStep!4422 r!7292 (head!11918 s!2326)) (tail!11013 s!2326)))))

(declare-fun bm!418191 () Bool)

(assert (=> bm!418191 (= call!418196 (isEmpty!34716 s!2326))))

(declare-fun b!5587127 () Bool)

(assert (=> b!5587127 (= e!3447082 e!3447083)))

(declare-fun res!2370765 () Bool)

(assert (=> b!5587127 (=> res!2370765 e!3447083)))

(assert (=> b!5587127 (= res!2370765 call!418196)))

(assert (= (and d!1765843 c!978755) b!5587117))

(assert (= (and d!1765843 (not c!978755)) b!5587126))

(assert (= (and d!1765843 c!978756) b!5587120))

(assert (= (and d!1765843 (not c!978756)) b!5587119))

(assert (= (and b!5587119 c!978754) b!5587125))

(assert (= (and b!5587119 (not c!978754)) b!5587124))

(assert (= (and b!5587124 (not res!2370758)) b!5587121))

(assert (= (and b!5587121 res!2370761) b!5587123))

(assert (= (and b!5587123 res!2370760) b!5587118))

(assert (= (and b!5587118 res!2370762) b!5587114))

(assert (= (and b!5587121 (not res!2370764)) b!5587122))

(assert (= (and b!5587122 res!2370759) b!5587127))

(assert (= (and b!5587127 (not res!2370765)) b!5587116))

(assert (= (and b!5587116 (not res!2370763)) b!5587115))

(assert (= (or b!5587120 b!5587127 b!5587123) bm!418191))

(assert (=> bm!418191 m!6567828))

(declare-fun m!6567830 () Bool)

(assert (=> b!5587118 m!6567830))

(assert (=> b!5587118 m!6567830))

(declare-fun m!6567832 () Bool)

(assert (=> b!5587118 m!6567832))

(declare-fun m!6567834 () Bool)

(assert (=> b!5587117 m!6567834))

(declare-fun m!6567836 () Bool)

(assert (=> b!5587126 m!6567836))

(assert (=> b!5587126 m!6567836))

(declare-fun m!6567838 () Bool)

(assert (=> b!5587126 m!6567838))

(assert (=> b!5587126 m!6567830))

(assert (=> b!5587126 m!6567838))

(assert (=> b!5587126 m!6567830))

(declare-fun m!6567840 () Bool)

(assert (=> b!5587126 m!6567840))

(assert (=> d!1765843 m!6567828))

(assert (=> d!1765843 m!6567626))

(assert (=> b!5587116 m!6567830))

(assert (=> b!5587116 m!6567830))

(assert (=> b!5587116 m!6567832))

(assert (=> b!5587115 m!6567836))

(assert (=> b!5587114 m!6567836))

(assert (=> b!5586805 d!1765843))

(declare-fun d!1765845 () Bool)

(assert (=> d!1765845 (= (matchR!7759 r!7292 s!2326) (matchRSpec!2677 r!7292 s!2326))))

(declare-fun lt!2254938 () Unit!155688)

(declare-fun choose!42361 (Regex!15574 List!63021) Unit!155688)

(assert (=> d!1765845 (= lt!2254938 (choose!42361 r!7292 s!2326))))

(assert (=> d!1765845 (validRegex!7310 r!7292)))

(assert (=> d!1765845 (= (mainMatchTheorem!2677 r!7292 s!2326) lt!2254938)))

(declare-fun bs!1292017 () Bool)

(assert (= bs!1292017 d!1765845))

(assert (=> bs!1292017 m!6567552))

(assert (=> bs!1292017 m!6567550))

(declare-fun m!6567842 () Bool)

(assert (=> bs!1292017 m!6567842))

(assert (=> bs!1292017 m!6567626))

(assert (=> b!5586805 d!1765845))

(declare-fun b!5587146 () Bool)

(declare-fun lt!2254947 () Unit!155688)

(declare-fun lt!2254946 () Unit!155688)

(assert (=> b!5587146 (= lt!2254947 lt!2254946)))

(declare-fun ++!13803 (List!63021 List!63021) List!63021)

(assert (=> b!5587146 (= (++!13803 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1972 (List!63021 C!31418 List!63021 List!63021) Unit!155688)

(assert (=> b!5587146 (= lt!2254946 (lemmaMoveElementToOtherListKeepsConcatEq!1972 Nil!62897 (h!69345 s!2326) (t!376296 s!2326) s!2326))))

(declare-fun e!3447103 () Option!15583)

(assert (=> b!5587146 (= e!3447103 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326) s!2326))))

(declare-fun b!5587147 () Bool)

(declare-fun res!2370779 () Bool)

(declare-fun e!3447099 () Bool)

(assert (=> b!5587147 (=> (not res!2370779) (not e!3447099))))

(declare-fun lt!2254945 () Option!15583)

(declare-fun get!21658 (Option!15583) tuple2!65342)

(assert (=> b!5587147 (= res!2370779 (matchR!7759 (regTwo!31660 r!7292) (_2!35974 (get!21658 lt!2254945))))))

(declare-fun b!5587148 () Bool)

(declare-fun e!3447102 () Option!15583)

(assert (=> b!5587148 (= e!3447102 (Some!15582 (tuple2!65343 Nil!62897 s!2326)))))

(declare-fun b!5587149 () Bool)

(assert (=> b!5587149 (= e!3447103 None!15582)))

(declare-fun d!1765847 () Bool)

(declare-fun e!3447101 () Bool)

(assert (=> d!1765847 e!3447101))

(declare-fun res!2370780 () Bool)

(assert (=> d!1765847 (=> res!2370780 e!3447101)))

(assert (=> d!1765847 (= res!2370780 e!3447099)))

(declare-fun res!2370777 () Bool)

(assert (=> d!1765847 (=> (not res!2370777) (not e!3447099))))

(assert (=> d!1765847 (= res!2370777 (isDefined!12286 lt!2254945))))

(assert (=> d!1765847 (= lt!2254945 e!3447102)))

(declare-fun c!978761 () Bool)

(declare-fun e!3447100 () Bool)

(assert (=> d!1765847 (= c!978761 e!3447100)))

(declare-fun res!2370776 () Bool)

(assert (=> d!1765847 (=> (not res!2370776) (not e!3447100))))

(assert (=> d!1765847 (= res!2370776 (matchR!7759 (regOne!31660 r!7292) Nil!62897))))

(assert (=> d!1765847 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1765847 (= (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326) lt!2254945)))

(declare-fun b!5587150 () Bool)

(declare-fun res!2370778 () Bool)

(assert (=> b!5587150 (=> (not res!2370778) (not e!3447099))))

(assert (=> b!5587150 (= res!2370778 (matchR!7759 (regOne!31660 r!7292) (_1!35974 (get!21658 lt!2254945))))))

(declare-fun b!5587151 () Bool)

(assert (=> b!5587151 (= e!3447101 (not (isDefined!12286 lt!2254945)))))

(declare-fun b!5587152 () Bool)

(assert (=> b!5587152 (= e!3447100 (matchR!7759 (regTwo!31660 r!7292) s!2326))))

(declare-fun b!5587153 () Bool)

(assert (=> b!5587153 (= e!3447099 (= (++!13803 (_1!35974 (get!21658 lt!2254945)) (_2!35974 (get!21658 lt!2254945))) s!2326))))

(declare-fun b!5587154 () Bool)

(assert (=> b!5587154 (= e!3447102 e!3447103)))

(declare-fun c!978762 () Bool)

(assert (=> b!5587154 (= c!978762 (is-Nil!62897 s!2326))))

(assert (= (and d!1765847 res!2370776) b!5587152))

(assert (= (and d!1765847 c!978761) b!5587148))

(assert (= (and d!1765847 (not c!978761)) b!5587154))

(assert (= (and b!5587154 c!978762) b!5587149))

(assert (= (and b!5587154 (not c!978762)) b!5587146))

(assert (= (and d!1765847 res!2370777) b!5587150))

(assert (= (and b!5587150 res!2370778) b!5587147))

(assert (= (and b!5587147 res!2370779) b!5587153))

(assert (= (and d!1765847 (not res!2370780)) b!5587151))

(declare-fun m!6567844 () Bool)

(assert (=> d!1765847 m!6567844))

(declare-fun m!6567846 () Bool)

(assert (=> d!1765847 m!6567846))

(declare-fun m!6567848 () Bool)

(assert (=> d!1765847 m!6567848))

(declare-fun m!6567850 () Bool)

(assert (=> b!5587147 m!6567850))

(declare-fun m!6567852 () Bool)

(assert (=> b!5587147 m!6567852))

(declare-fun m!6567854 () Bool)

(assert (=> b!5587146 m!6567854))

(assert (=> b!5587146 m!6567854))

(declare-fun m!6567856 () Bool)

(assert (=> b!5587146 m!6567856))

(declare-fun m!6567858 () Bool)

(assert (=> b!5587146 m!6567858))

(assert (=> b!5587146 m!6567854))

(declare-fun m!6567860 () Bool)

(assert (=> b!5587146 m!6567860))

(declare-fun m!6567862 () Bool)

(assert (=> b!5587152 m!6567862))

(assert (=> b!5587150 m!6567850))

(declare-fun m!6567864 () Bool)

(assert (=> b!5587150 m!6567864))

(assert (=> b!5587153 m!6567850))

(declare-fun m!6567866 () Bool)

(assert (=> b!5587153 m!6567866))

(assert (=> b!5587151 m!6567844))

(assert (=> b!5586785 d!1765847))

(declare-fun d!1765849 () Bool)

(declare-fun choose!42362 (Int) Bool)

(assert (=> d!1765849 (= (Exists!2674 lambda!299773) (choose!42362 lambda!299773))))

(declare-fun bs!1292018 () Bool)

(assert (= bs!1292018 d!1765849))

(declare-fun m!6567868 () Bool)

(assert (=> bs!1292018 m!6567868))

(assert (=> b!5586785 d!1765849))

(declare-fun d!1765851 () Bool)

(assert (=> d!1765851 (= (Exists!2674 lambda!299774) (choose!42362 lambda!299774))))

(declare-fun bs!1292019 () Bool)

(assert (= bs!1292019 d!1765851))

(declare-fun m!6567870 () Bool)

(assert (=> bs!1292019 m!6567870))

(assert (=> b!5586785 d!1765851))

(declare-fun bs!1292020 () Bool)

(declare-fun d!1765853 () Bool)

(assert (= bs!1292020 (and d!1765853 b!5586785)))

(declare-fun lambda!299808 () Int)

(assert (=> bs!1292020 (= lambda!299808 lambda!299773)))

(assert (=> bs!1292020 (not (= lambda!299808 lambda!299774))))

(declare-fun bs!1292021 () Bool)

(assert (= bs!1292021 (and d!1765853 b!5587080)))

(assert (=> bs!1292021 (not (= lambda!299808 lambda!299804))))

(declare-fun bs!1292022 () Bool)

(assert (= bs!1292022 (and d!1765853 b!5587085)))

(assert (=> bs!1292022 (not (= lambda!299808 lambda!299805))))

(assert (=> d!1765853 true))

(assert (=> d!1765853 true))

(assert (=> d!1765853 true))

(assert (=> d!1765853 (= (isDefined!12286 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326)) (Exists!2674 lambda!299808))))

(declare-fun lt!2254950 () Unit!155688)

(declare-fun choose!42363 (Regex!15574 Regex!15574 List!63021) Unit!155688)

(assert (=> d!1765853 (= lt!2254950 (choose!42363 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326))))

(assert (=> d!1765853 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1765853 (= (lemmaFindConcatSeparationEquivalentToExists!1761 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326) lt!2254950)))

(declare-fun bs!1292023 () Bool)

(assert (= bs!1292023 d!1765853))

(declare-fun m!6567872 () Bool)

(assert (=> bs!1292023 m!6567872))

(declare-fun m!6567874 () Bool)

(assert (=> bs!1292023 m!6567874))

(assert (=> bs!1292023 m!6567848))

(assert (=> bs!1292023 m!6567618))

(assert (=> bs!1292023 m!6567618))

(assert (=> bs!1292023 m!6567620))

(assert (=> b!5586785 d!1765853))

(declare-fun bs!1292024 () Bool)

(declare-fun d!1765855 () Bool)

(assert (= bs!1292024 (and d!1765855 d!1765853)))

(declare-fun lambda!299813 () Int)

(assert (=> bs!1292024 (= lambda!299813 lambda!299808)))

(declare-fun bs!1292025 () Bool)

(assert (= bs!1292025 (and d!1765855 b!5587080)))

(assert (=> bs!1292025 (not (= lambda!299813 lambda!299804))))

(declare-fun bs!1292026 () Bool)

(assert (= bs!1292026 (and d!1765855 b!5586785)))

(assert (=> bs!1292026 (not (= lambda!299813 lambda!299774))))

(assert (=> bs!1292026 (= lambda!299813 lambda!299773)))

(declare-fun bs!1292027 () Bool)

(assert (= bs!1292027 (and d!1765855 b!5587085)))

(assert (=> bs!1292027 (not (= lambda!299813 lambda!299805))))

(assert (=> d!1765855 true))

(assert (=> d!1765855 true))

(assert (=> d!1765855 true))

(declare-fun lambda!299814 () Int)

(assert (=> bs!1292024 (not (= lambda!299814 lambda!299808))))

(assert (=> bs!1292025 (not (= lambda!299814 lambda!299804))))

(declare-fun bs!1292028 () Bool)

(assert (= bs!1292028 d!1765855))

(assert (=> bs!1292028 (not (= lambda!299814 lambda!299813))))

(assert (=> bs!1292026 (= lambda!299814 lambda!299774)))

(assert (=> bs!1292026 (not (= lambda!299814 lambda!299773))))

(assert (=> bs!1292027 (= lambda!299814 lambda!299805)))

(assert (=> d!1765855 true))

(assert (=> d!1765855 true))

(assert (=> d!1765855 true))

(assert (=> d!1765855 (= (Exists!2674 lambda!299813) (Exists!2674 lambda!299814))))

(declare-fun lt!2254953 () Unit!155688)

(declare-fun choose!42364 (Regex!15574 Regex!15574 List!63021) Unit!155688)

(assert (=> d!1765855 (= lt!2254953 (choose!42364 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326))))

(assert (=> d!1765855 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1765855 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1303 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326) lt!2254953)))

(declare-fun m!6567876 () Bool)

(assert (=> bs!1292028 m!6567876))

(declare-fun m!6567878 () Bool)

(assert (=> bs!1292028 m!6567878))

(declare-fun m!6567880 () Bool)

(assert (=> bs!1292028 m!6567880))

(assert (=> bs!1292028 m!6567848))

(assert (=> b!5586785 d!1765855))

(declare-fun d!1765857 () Bool)

(declare-fun isEmpty!34717 (Option!15583) Bool)

(assert (=> d!1765857 (= (isDefined!12286 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326)) (not (isEmpty!34717 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326))))))

(declare-fun bs!1292029 () Bool)

(assert (= bs!1292029 d!1765857))

(assert (=> bs!1292029 m!6567618))

(declare-fun m!6567882 () Bool)

(assert (=> bs!1292029 m!6567882))

(assert (=> b!5586785 d!1765857))

(declare-fun d!1765859 () Bool)

(assert (=> d!1765859 (= (flatMap!1187 lt!2254813 lambda!299775) (dynLambda!24597 lambda!299775 lt!2254810))))

(declare-fun lt!2254954 () Unit!155688)

(assert (=> d!1765859 (= lt!2254954 (choose!42357 lt!2254813 lt!2254810 lambda!299775))))

(assert (=> d!1765859 (= lt!2254813 (set.insert lt!2254810 (as set.empty (Set Context!9916))))))

(assert (=> d!1765859 (= (lemmaFlatMapOnSingletonSet!719 lt!2254813 lt!2254810 lambda!299775) lt!2254954)))

(declare-fun b_lambda!211709 () Bool)

(assert (=> (not b_lambda!211709) (not d!1765859)))

(declare-fun bs!1292030 () Bool)

(assert (= bs!1292030 d!1765859))

(assert (=> bs!1292030 m!6567568))

(declare-fun m!6567884 () Bool)

(assert (=> bs!1292030 m!6567884))

(declare-fun m!6567886 () Bool)

(assert (=> bs!1292030 m!6567886))

(assert (=> bs!1292030 m!6567570))

(assert (=> b!5586806 d!1765859))

(declare-fun d!1765861 () Bool)

(assert (=> d!1765861 (= (flatMap!1187 lt!2254813 lambda!299775) (choose!42358 lt!2254813 lambda!299775))))

(declare-fun bs!1292031 () Bool)

(assert (= bs!1292031 d!1765861))

(declare-fun m!6567888 () Bool)

(assert (=> bs!1292031 m!6567888))

(assert (=> b!5586806 d!1765861))

(declare-fun d!1765863 () Bool)

(assert (=> d!1765863 (= (nullable!5606 (regTwo!31661 (regOne!31660 r!7292))) (nullableFct!1715 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun bs!1292032 () Bool)

(assert (= bs!1292032 d!1765863))

(declare-fun m!6567890 () Bool)

(assert (=> bs!1292032 m!6567890))

(assert (=> b!5586806 d!1765863))

(declare-fun d!1765865 () Bool)

(assert (=> d!1765865 (= (flatMap!1187 lt!2254808 lambda!299775) (choose!42358 lt!2254808 lambda!299775))))

(declare-fun bs!1292033 () Bool)

(assert (= bs!1292033 d!1765865))

(declare-fun m!6567892 () Bool)

(assert (=> bs!1292033 m!6567892))

(assert (=> b!5586806 d!1765865))

(declare-fun bm!418192 () Bool)

(declare-fun call!418197 () (Set Context!9916))

(assert (=> bm!418192 (= call!418197 (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254814)) (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (h!69345 s!2326)))))

(declare-fun d!1765867 () Bool)

(declare-fun c!978763 () Bool)

(declare-fun e!3447110 () Bool)

(assert (=> d!1765867 (= c!978763 e!3447110)))

(declare-fun res!2370793 () Bool)

(assert (=> d!1765867 (=> (not res!2370793) (not e!3447110))))

(assert (=> d!1765867 (= res!2370793 (is-Cons!62898 (exprs!5458 lt!2254814)))))

(declare-fun e!3447112 () (Set Context!9916))

(assert (=> d!1765867 (= (derivationStepZipperUp!842 lt!2254814 (h!69345 s!2326)) e!3447112)))

(declare-fun b!5587167 () Bool)

(declare-fun e!3447111 () (Set Context!9916))

(assert (=> b!5587167 (= e!3447111 call!418197)))

(declare-fun b!5587168 () Bool)

(assert (=> b!5587168 (= e!3447110 (nullable!5606 (h!69346 (exprs!5458 lt!2254814))))))

(declare-fun b!5587169 () Bool)

(assert (=> b!5587169 (= e!3447111 (as set.empty (Set Context!9916)))))

(declare-fun b!5587170 () Bool)

(assert (=> b!5587170 (= e!3447112 e!3447111)))

(declare-fun c!978764 () Bool)

(assert (=> b!5587170 (= c!978764 (is-Cons!62898 (exprs!5458 lt!2254814)))))

(declare-fun b!5587171 () Bool)

(assert (=> b!5587171 (= e!3447112 (set.union call!418197 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (h!69345 s!2326))))))

(assert (= (and d!1765867 res!2370793) b!5587168))

(assert (= (and d!1765867 c!978763) b!5587171))

(assert (= (and d!1765867 (not c!978763)) b!5587170))

(assert (= (and b!5587170 c!978764) b!5587167))

(assert (= (and b!5587170 (not c!978764)) b!5587169))

(assert (= (or b!5587171 b!5587167) bm!418192))

(declare-fun m!6567894 () Bool)

(assert (=> bm!418192 m!6567894))

(declare-fun m!6567896 () Bool)

(assert (=> b!5587168 m!6567896))

(declare-fun m!6567898 () Bool)

(assert (=> b!5587171 m!6567898))

(assert (=> b!5586806 d!1765867))

(declare-fun bm!418193 () Bool)

(declare-fun call!418198 () (Set Context!9916))

(assert (=> bm!418193 (= call!418198 (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254810)) (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (h!69345 s!2326)))))

(declare-fun d!1765869 () Bool)

(declare-fun c!978765 () Bool)

(declare-fun e!3447113 () Bool)

(assert (=> d!1765869 (= c!978765 e!3447113)))

(declare-fun res!2370794 () Bool)

(assert (=> d!1765869 (=> (not res!2370794) (not e!3447113))))

(assert (=> d!1765869 (= res!2370794 (is-Cons!62898 (exprs!5458 lt!2254810)))))

(declare-fun e!3447115 () (Set Context!9916))

(assert (=> d!1765869 (= (derivationStepZipperUp!842 lt!2254810 (h!69345 s!2326)) e!3447115)))

(declare-fun b!5587172 () Bool)

(declare-fun e!3447114 () (Set Context!9916))

(assert (=> b!5587172 (= e!3447114 call!418198)))

(declare-fun b!5587173 () Bool)

(assert (=> b!5587173 (= e!3447113 (nullable!5606 (h!69346 (exprs!5458 lt!2254810))))))

(declare-fun b!5587174 () Bool)

(assert (=> b!5587174 (= e!3447114 (as set.empty (Set Context!9916)))))

(declare-fun b!5587175 () Bool)

(assert (=> b!5587175 (= e!3447115 e!3447114)))

(declare-fun c!978766 () Bool)

(assert (=> b!5587175 (= c!978766 (is-Cons!62898 (exprs!5458 lt!2254810)))))

(declare-fun b!5587176 () Bool)

(assert (=> b!5587176 (= e!3447115 (set.union call!418198 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (h!69345 s!2326))))))

(assert (= (and d!1765869 res!2370794) b!5587173))

(assert (= (and d!1765869 c!978765) b!5587176))

(assert (= (and d!1765869 (not c!978765)) b!5587175))

(assert (= (and b!5587175 c!978766) b!5587172))

(assert (= (and b!5587175 (not c!978766)) b!5587174))

(assert (= (or b!5587176 b!5587172) bm!418193))

(declare-fun m!6567900 () Bool)

(assert (=> bm!418193 m!6567900))

(declare-fun m!6567902 () Bool)

(assert (=> b!5587173 m!6567902))

(declare-fun m!6567904 () Bool)

(assert (=> b!5587176 m!6567904))

(assert (=> b!5586806 d!1765869))

(declare-fun d!1765871 () Bool)

(assert (=> d!1765871 (= (flatMap!1187 lt!2254808 lambda!299775) (dynLambda!24597 lambda!299775 lt!2254814))))

(declare-fun lt!2254955 () Unit!155688)

(assert (=> d!1765871 (= lt!2254955 (choose!42357 lt!2254808 lt!2254814 lambda!299775))))

(assert (=> d!1765871 (= lt!2254808 (set.insert lt!2254814 (as set.empty (Set Context!9916))))))

(assert (=> d!1765871 (= (lemmaFlatMapOnSingletonSet!719 lt!2254808 lt!2254814 lambda!299775) lt!2254955)))

(declare-fun b_lambda!211711 () Bool)

(assert (=> (not b_lambda!211711) (not d!1765871)))

(declare-fun bs!1292034 () Bool)

(assert (= bs!1292034 d!1765871))

(assert (=> bs!1292034 m!6567558))

(declare-fun m!6567906 () Bool)

(assert (=> bs!1292034 m!6567906))

(declare-fun m!6567908 () Bool)

(assert (=> bs!1292034 m!6567908))

(assert (=> bs!1292034 m!6567556))

(assert (=> b!5586806 d!1765871))

(declare-fun d!1765873 () Bool)

(assert (=> d!1765873 (= (nullable!5606 (regOne!31661 (regOne!31660 r!7292))) (nullableFct!1715 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun bs!1292035 () Bool)

(assert (= bs!1292035 d!1765873))

(declare-fun m!6567910 () Bool)

(assert (=> bs!1292035 m!6567910))

(assert (=> b!5586806 d!1765873))

(declare-fun d!1765875 () Bool)

(assert (=> d!1765875 (= (isEmpty!34712 (t!376297 (exprs!5458 (h!69347 zl!343)))) (is-Nil!62898 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5586796 d!1765875))

(declare-fun b!5587195 () Bool)

(declare-fun e!3447134 () Bool)

(declare-fun call!418205 () Bool)

(assert (=> b!5587195 (= e!3447134 call!418205)))

(declare-fun b!5587196 () Bool)

(declare-fun e!3447133 () Bool)

(declare-fun e!3447132 () Bool)

(assert (=> b!5587196 (= e!3447133 e!3447132)))

(declare-fun res!2370806 () Bool)

(assert (=> b!5587196 (= res!2370806 (not (nullable!5606 (reg!15903 r!7292))))))

(assert (=> b!5587196 (=> (not res!2370806) (not e!3447132))))

(declare-fun bm!418200 () Bool)

(declare-fun c!978772 () Bool)

(assert (=> bm!418200 (= call!418205 (validRegex!7310 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))

(declare-fun b!5587197 () Bool)

(declare-fun e!3447136 () Bool)

(declare-fun e!3447130 () Bool)

(assert (=> b!5587197 (= e!3447136 e!3447130)))

(declare-fun res!2370809 () Bool)

(assert (=> b!5587197 (=> (not res!2370809) (not e!3447130))))

(declare-fun call!418206 () Bool)

(assert (=> b!5587197 (= res!2370809 call!418206)))

(declare-fun b!5587198 () Bool)

(declare-fun call!418207 () Bool)

(assert (=> b!5587198 (= e!3447132 call!418207)))

(declare-fun d!1765877 () Bool)

(declare-fun res!2370808 () Bool)

(declare-fun e!3447135 () Bool)

(assert (=> d!1765877 (=> res!2370808 e!3447135)))

(assert (=> d!1765877 (= res!2370808 (is-ElementMatch!15574 r!7292))))

(assert (=> d!1765877 (= (validRegex!7310 r!7292) e!3447135)))

(declare-fun b!5587199 () Bool)

(declare-fun res!2370805 () Bool)

(assert (=> b!5587199 (=> (not res!2370805) (not e!3447134))))

(assert (=> b!5587199 (= res!2370805 call!418206)))

(declare-fun e!3447131 () Bool)

(assert (=> b!5587199 (= e!3447131 e!3447134)))

(declare-fun bm!418201 () Bool)

(assert (=> bm!418201 (= call!418206 call!418207)))

(declare-fun b!5587200 () Bool)

(assert (=> b!5587200 (= e!3447135 e!3447133)))

(declare-fun c!978771 () Bool)

(assert (=> b!5587200 (= c!978771 (is-Star!15574 r!7292))))

(declare-fun b!5587201 () Bool)

(declare-fun res!2370807 () Bool)

(assert (=> b!5587201 (=> res!2370807 e!3447136)))

(assert (=> b!5587201 (= res!2370807 (not (is-Concat!24419 r!7292)))))

(assert (=> b!5587201 (= e!3447131 e!3447136)))

(declare-fun bm!418202 () Bool)

(assert (=> bm!418202 (= call!418207 (validRegex!7310 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))

(declare-fun b!5587202 () Bool)

(assert (=> b!5587202 (= e!3447133 e!3447131)))

(assert (=> b!5587202 (= c!978772 (is-Union!15574 r!7292))))

(declare-fun b!5587203 () Bool)

(assert (=> b!5587203 (= e!3447130 call!418205)))

(assert (= (and d!1765877 (not res!2370808)) b!5587200))

(assert (= (and b!5587200 c!978771) b!5587196))

(assert (= (and b!5587200 (not c!978771)) b!5587202))

(assert (= (and b!5587196 res!2370806) b!5587198))

(assert (= (and b!5587202 c!978772) b!5587199))

(assert (= (and b!5587202 (not c!978772)) b!5587201))

(assert (= (and b!5587199 res!2370805) b!5587195))

(assert (= (and b!5587201 (not res!2370807)) b!5587197))

(assert (= (and b!5587197 res!2370809) b!5587203))

(assert (= (or b!5587195 b!5587203) bm!418200))

(assert (= (or b!5587199 b!5587197) bm!418201))

(assert (= (or b!5587198 bm!418201) bm!418202))

(declare-fun m!6567912 () Bool)

(assert (=> b!5587196 m!6567912))

(declare-fun m!6567914 () Bool)

(assert (=> bm!418200 m!6567914))

(declare-fun m!6567916 () Bool)

(assert (=> bm!418202 m!6567916))

(assert (=> start!580300 d!1765877))

(declare-fun d!1765879 () Bool)

(declare-fun c!978773 () Bool)

(assert (=> d!1765879 (= c!978773 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447137 () Bool)

(assert (=> d!1765879 (= (matchZipper!1712 lt!2254822 (t!376296 s!2326)) e!3447137)))

(declare-fun b!5587204 () Bool)

(assert (=> b!5587204 (= e!3447137 (nullableZipper!1569 lt!2254822))))

(declare-fun b!5587205 () Bool)

(assert (=> b!5587205 (= e!3447137 (matchZipper!1712 (derivationStepZipper!1673 lt!2254822 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765879 c!978773) b!5587204))

(assert (= (and d!1765879 (not c!978773)) b!5587205))

(assert (=> d!1765879 m!6567788))

(declare-fun m!6567918 () Bool)

(assert (=> b!5587204 m!6567918))

(assert (=> b!5587205 m!6567792))

(assert (=> b!5587205 m!6567792))

(declare-fun m!6567920 () Bool)

(assert (=> b!5587205 m!6567920))

(assert (=> b!5587205 m!6567796))

(assert (=> b!5587205 m!6567920))

(assert (=> b!5587205 m!6567796))

(declare-fun m!6567922 () Bool)

(assert (=> b!5587205 m!6567922))

(assert (=> b!5586787 d!1765879))

(declare-fun d!1765881 () Bool)

(assert (=> d!1765881 (= (isEmpty!34713 (t!376298 zl!343)) (is-Nil!62899 (t!376298 zl!343)))))

(assert (=> b!5586797 d!1765881))

(declare-fun d!1765883 () Bool)

(declare-fun e!3447138 () Bool)

(assert (=> d!1765883 (= (matchZipper!1712 (set.union lt!2254829 lt!2254822) (t!376296 s!2326)) e!3447138)))

(declare-fun res!2370810 () Bool)

(assert (=> d!1765883 (=> res!2370810 e!3447138)))

(assert (=> d!1765883 (= res!2370810 (matchZipper!1712 lt!2254829 (t!376296 s!2326)))))

(declare-fun lt!2254956 () Unit!155688)

(assert (=> d!1765883 (= lt!2254956 (choose!42360 lt!2254829 lt!2254822 (t!376296 s!2326)))))

(assert (=> d!1765883 (= (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254829 lt!2254822 (t!376296 s!2326)) lt!2254956)))

(declare-fun b!5587206 () Bool)

(assert (=> b!5587206 (= e!3447138 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(assert (= (and d!1765883 (not res!2370810)) b!5587206))

(assert (=> d!1765883 m!6567546))

(assert (=> d!1765883 m!6567586))

(declare-fun m!6567924 () Bool)

(assert (=> d!1765883 m!6567924))

(assert (=> b!5587206 m!6567530))

(assert (=> b!5586798 d!1765883))

(declare-fun d!1765885 () Bool)

(declare-fun c!978774 () Bool)

(assert (=> d!1765885 (= c!978774 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447139 () Bool)

(assert (=> d!1765885 (= (matchZipper!1712 (set.union lt!2254829 lt!2254822) (t!376296 s!2326)) e!3447139)))

(declare-fun b!5587207 () Bool)

(assert (=> b!5587207 (= e!3447139 (nullableZipper!1569 (set.union lt!2254829 lt!2254822)))))

(declare-fun b!5587208 () Bool)

(assert (=> b!5587208 (= e!3447139 (matchZipper!1712 (derivationStepZipper!1673 (set.union lt!2254829 lt!2254822) (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765885 c!978774) b!5587207))

(assert (= (and d!1765885 (not c!978774)) b!5587208))

(assert (=> d!1765885 m!6567788))

(declare-fun m!6567926 () Bool)

(assert (=> b!5587207 m!6567926))

(assert (=> b!5587208 m!6567792))

(assert (=> b!5587208 m!6567792))

(declare-fun m!6567928 () Bool)

(assert (=> b!5587208 m!6567928))

(assert (=> b!5587208 m!6567796))

(assert (=> b!5587208 m!6567928))

(assert (=> b!5587208 m!6567796))

(declare-fun m!6567930 () Bool)

(assert (=> b!5587208 m!6567930))

(assert (=> b!5586798 d!1765885))

(declare-fun bm!418203 () Bool)

(declare-fun call!418209 () (Set Context!9916))

(declare-fun call!418210 () (Set Context!9916))

(assert (=> bm!418203 (= call!418209 call!418210)))

(declare-fun b!5587209 () Bool)

(declare-fun e!3447144 () (Set Context!9916))

(declare-fun call!418212 () (Set Context!9916))

(assert (=> b!5587209 (= e!3447144 (set.union call!418212 call!418209))))

(declare-fun c!978777 () Bool)

(declare-fun bm!418204 () Bool)

(declare-fun call!418213 () List!63022)

(assert (=> bm!418204 (= call!418212 (derivationStepZipperDown!916 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))) (ite c!978777 lt!2254824 (Context!9917 call!418213)) (h!69345 s!2326)))))

(declare-fun bm!418205 () Bool)

(declare-fun call!418208 () (Set Context!9916))

(assert (=> bm!418205 (= call!418208 call!418209)))

(declare-fun d!1765887 () Bool)

(declare-fun c!978778 () Bool)

(assert (=> d!1765887 (= c!978778 (and (is-ElementMatch!15574 (regTwo!31661 (regOne!31660 r!7292))) (= (c!978676 (regTwo!31661 (regOne!31660 r!7292))) (h!69345 s!2326))))))

(declare-fun e!3447140 () (Set Context!9916))

(assert (=> d!1765887 (= (derivationStepZipperDown!916 (regTwo!31661 (regOne!31660 r!7292)) lt!2254824 (h!69345 s!2326)) e!3447140)))

(declare-fun b!5587210 () Bool)

(declare-fun e!3447142 () (Set Context!9916))

(assert (=> b!5587210 (= e!3447140 e!3447142)))

(assert (=> b!5587210 (= c!978777 (is-Union!15574 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun c!978775 () Bool)

(declare-fun c!978779 () Bool)

(declare-fun bm!418206 () Bool)

(declare-fun call!418211 () List!63022)

(assert (=> bm!418206 (= call!418210 (derivationStepZipperDown!916 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))) (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211)) (h!69345 s!2326)))))

(declare-fun b!5587211 () Bool)

(declare-fun e!3447141 () Bool)

(assert (=> b!5587211 (= c!978775 e!3447141)))

(declare-fun res!2370811 () Bool)

(assert (=> b!5587211 (=> (not res!2370811) (not e!3447141))))

(assert (=> b!5587211 (= res!2370811 (is-Concat!24419 (regTwo!31661 (regOne!31660 r!7292))))))

(assert (=> b!5587211 (= e!3447142 e!3447144)))

(declare-fun b!5587212 () Bool)

(declare-fun e!3447143 () (Set Context!9916))

(assert (=> b!5587212 (= e!3447143 call!418208)))

(declare-fun b!5587213 () Bool)

(assert (=> b!5587213 (= e!3447144 e!3447143)))

(assert (=> b!5587213 (= c!978779 (is-Concat!24419 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun b!5587214 () Bool)

(assert (=> b!5587214 (= e!3447141 (nullable!5606 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))))

(declare-fun b!5587215 () Bool)

(assert (=> b!5587215 (= e!3447140 (set.insert lt!2254824 (as set.empty (Set Context!9916))))))

(declare-fun b!5587216 () Bool)

(declare-fun e!3447145 () (Set Context!9916))

(assert (=> b!5587216 (= e!3447145 call!418208)))

(declare-fun b!5587217 () Bool)

(assert (=> b!5587217 (= e!3447142 (set.union call!418212 call!418210))))

(declare-fun b!5587218 () Bool)

(declare-fun c!978776 () Bool)

(assert (=> b!5587218 (= c!978776 (is-Star!15574 (regTwo!31661 (regOne!31660 r!7292))))))

(assert (=> b!5587218 (= e!3447143 e!3447145)))

(declare-fun bm!418207 () Bool)

(assert (=> bm!418207 (= call!418213 ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978775 c!978779) (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (regTwo!31661 (regOne!31660 r!7292)))))))

(declare-fun bm!418208 () Bool)

(assert (=> bm!418208 (= call!418211 call!418213)))

(declare-fun b!5587219 () Bool)

(assert (=> b!5587219 (= e!3447145 (as set.empty (Set Context!9916)))))

(assert (= (and d!1765887 c!978778) b!5587215))

(assert (= (and d!1765887 (not c!978778)) b!5587210))

(assert (= (and b!5587210 c!978777) b!5587217))

(assert (= (and b!5587210 (not c!978777)) b!5587211))

(assert (= (and b!5587211 res!2370811) b!5587214))

(assert (= (and b!5587211 c!978775) b!5587209))

(assert (= (and b!5587211 (not c!978775)) b!5587213))

(assert (= (and b!5587213 c!978779) b!5587212))

(assert (= (and b!5587213 (not c!978779)) b!5587218))

(assert (= (and b!5587218 c!978776) b!5587216))

(assert (= (and b!5587218 (not c!978776)) b!5587219))

(assert (= (or b!5587212 b!5587216) bm!418208))

(assert (= (or b!5587212 b!5587216) bm!418205))

(assert (= (or b!5587209 bm!418208) bm!418207))

(assert (= (or b!5587209 bm!418205) bm!418203))

(assert (= (or b!5587217 bm!418203) bm!418206))

(assert (= (or b!5587217 b!5587209) bm!418204))

(declare-fun m!6567932 () Bool)

(assert (=> bm!418207 m!6567932))

(declare-fun m!6567934 () Bool)

(assert (=> bm!418206 m!6567934))

(assert (=> b!5587215 m!6567754))

(declare-fun m!6567936 () Bool)

(assert (=> bm!418204 m!6567936))

(declare-fun m!6567938 () Bool)

(assert (=> b!5587214 m!6567938))

(assert (=> b!5586789 d!1765887))

(declare-fun bm!418209 () Bool)

(declare-fun call!418215 () (Set Context!9916))

(declare-fun call!418216 () (Set Context!9916))

(assert (=> bm!418209 (= call!418215 call!418216)))

(declare-fun b!5587220 () Bool)

(declare-fun e!3447150 () (Set Context!9916))

(declare-fun call!418218 () (Set Context!9916))

(assert (=> b!5587220 (= e!3447150 (set.union call!418218 call!418215))))

(declare-fun call!418219 () List!63022)

(declare-fun c!978782 () Bool)

(declare-fun bm!418210 () Bool)

(assert (=> bm!418210 (= call!418218 (derivationStepZipperDown!916 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))) (ite c!978782 lt!2254824 (Context!9917 call!418219)) (h!69345 s!2326)))))

(declare-fun bm!418211 () Bool)

(declare-fun call!418214 () (Set Context!9916))

(assert (=> bm!418211 (= call!418214 call!418215)))

(declare-fun d!1765889 () Bool)

(declare-fun c!978783 () Bool)

(assert (=> d!1765889 (= c!978783 (and (is-ElementMatch!15574 (regOne!31661 (regOne!31660 r!7292))) (= (c!978676 (regOne!31661 (regOne!31660 r!7292))) (h!69345 s!2326))))))

(declare-fun e!3447146 () (Set Context!9916))

(assert (=> d!1765889 (= (derivationStepZipperDown!916 (regOne!31661 (regOne!31660 r!7292)) lt!2254824 (h!69345 s!2326)) e!3447146)))

(declare-fun b!5587221 () Bool)

(declare-fun e!3447148 () (Set Context!9916))

(assert (=> b!5587221 (= e!3447146 e!3447148)))

(assert (=> b!5587221 (= c!978782 (is-Union!15574 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun call!418217 () List!63022)

(declare-fun bm!418212 () Bool)

(declare-fun c!978784 () Bool)

(declare-fun c!978780 () Bool)

(assert (=> bm!418212 (= call!418216 (derivationStepZipperDown!916 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))) (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217)) (h!69345 s!2326)))))

(declare-fun b!5587222 () Bool)

(declare-fun e!3447147 () Bool)

(assert (=> b!5587222 (= c!978780 e!3447147)))

(declare-fun res!2370812 () Bool)

(assert (=> b!5587222 (=> (not res!2370812) (not e!3447147))))

(assert (=> b!5587222 (= res!2370812 (is-Concat!24419 (regOne!31661 (regOne!31660 r!7292))))))

(assert (=> b!5587222 (= e!3447148 e!3447150)))

(declare-fun b!5587223 () Bool)

(declare-fun e!3447149 () (Set Context!9916))

(assert (=> b!5587223 (= e!3447149 call!418214)))

(declare-fun b!5587224 () Bool)

(assert (=> b!5587224 (= e!3447150 e!3447149)))

(assert (=> b!5587224 (= c!978784 (is-Concat!24419 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun b!5587225 () Bool)

(assert (=> b!5587225 (= e!3447147 (nullable!5606 (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))))

(declare-fun b!5587226 () Bool)

(assert (=> b!5587226 (= e!3447146 (set.insert lt!2254824 (as set.empty (Set Context!9916))))))

(declare-fun b!5587227 () Bool)

(declare-fun e!3447151 () (Set Context!9916))

(assert (=> b!5587227 (= e!3447151 call!418214)))

(declare-fun b!5587228 () Bool)

(assert (=> b!5587228 (= e!3447148 (set.union call!418218 call!418216))))

(declare-fun b!5587229 () Bool)

(declare-fun c!978781 () Bool)

(assert (=> b!5587229 (= c!978781 (is-Star!15574 (regOne!31661 (regOne!31660 r!7292))))))

(assert (=> b!5587229 (= e!3447149 e!3447151)))

(declare-fun bm!418213 () Bool)

(assert (=> bm!418213 (= call!418219 ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978780 c!978784) (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (regOne!31661 (regOne!31660 r!7292)))))))

(declare-fun bm!418214 () Bool)

(assert (=> bm!418214 (= call!418217 call!418219)))

(declare-fun b!5587230 () Bool)

(assert (=> b!5587230 (= e!3447151 (as set.empty (Set Context!9916)))))

(assert (= (and d!1765889 c!978783) b!5587226))

(assert (= (and d!1765889 (not c!978783)) b!5587221))

(assert (= (and b!5587221 c!978782) b!5587228))

(assert (= (and b!5587221 (not c!978782)) b!5587222))

(assert (= (and b!5587222 res!2370812) b!5587225))

(assert (= (and b!5587222 c!978780) b!5587220))

(assert (= (and b!5587222 (not c!978780)) b!5587224))

(assert (= (and b!5587224 c!978784) b!5587223))

(assert (= (and b!5587224 (not c!978784)) b!5587229))

(assert (= (and b!5587229 c!978781) b!5587227))

(assert (= (and b!5587229 (not c!978781)) b!5587230))

(assert (= (or b!5587223 b!5587227) bm!418214))

(assert (= (or b!5587223 b!5587227) bm!418211))

(assert (= (or b!5587220 bm!418214) bm!418213))

(assert (= (or b!5587220 bm!418211) bm!418209))

(assert (= (or b!5587228 bm!418209) bm!418212))

(assert (= (or b!5587228 b!5587220) bm!418210))

(declare-fun m!6567940 () Bool)

(assert (=> bm!418213 m!6567940))

(declare-fun m!6567942 () Bool)

(assert (=> bm!418212 m!6567942))

(assert (=> b!5587226 m!6567754))

(declare-fun m!6567944 () Bool)

(assert (=> bm!418210 m!6567944))

(declare-fun m!6567946 () Bool)

(assert (=> b!5587225 m!6567946))

(assert (=> b!5586789 d!1765889))

(assert (=> b!5586799 d!1765879))

(assert (=> b!5586790 d!1765829))

(declare-fun bs!1292036 () Bool)

(declare-fun d!1765891 () Bool)

(assert (= bs!1292036 (and d!1765891 d!1765825)))

(declare-fun lambda!299817 () Int)

(assert (=> bs!1292036 (= lambda!299817 lambda!299793)))

(declare-fun bs!1292037 () Bool)

(assert (= bs!1292037 (and d!1765891 d!1765827)))

(assert (=> bs!1292037 (= lambda!299817 lambda!299796)))

(declare-fun bs!1292038 () Bool)

(assert (= bs!1292038 (and d!1765891 d!1765831)))

(assert (=> bs!1292038 (= lambda!299817 lambda!299799)))

(declare-fun b!5587251 () Bool)

(declare-fun e!3447164 () Regex!15574)

(assert (=> b!5587251 (= e!3447164 (Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343))) (generalisedConcat!1189 (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5587252 () Bool)

(assert (=> b!5587252 (= e!3447164 EmptyExpr!15574)))

(declare-fun b!5587253 () Bool)

(declare-fun e!3447168 () Bool)

(declare-fun e!3447169 () Bool)

(assert (=> b!5587253 (= e!3447168 e!3447169)))

(declare-fun c!978793 () Bool)

(assert (=> b!5587253 (= c!978793 (isEmpty!34712 (tail!11012 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5587254 () Bool)

(declare-fun lt!2254959 () Regex!15574)

(assert (=> b!5587254 (= e!3447169 (= lt!2254959 (head!11917 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun e!3447165 () Bool)

(assert (=> d!1765891 e!3447165))

(declare-fun res!2370817 () Bool)

(assert (=> d!1765891 (=> (not res!2370817) (not e!3447165))))

(assert (=> d!1765891 (= res!2370817 (validRegex!7310 lt!2254959))))

(declare-fun e!3447166 () Regex!15574)

(assert (=> d!1765891 (= lt!2254959 e!3447166)))

(declare-fun c!978796 () Bool)

(declare-fun e!3447167 () Bool)

(assert (=> d!1765891 (= c!978796 e!3447167)))

(declare-fun res!2370818 () Bool)

(assert (=> d!1765891 (=> (not res!2370818) (not e!3447167))))

(assert (=> d!1765891 (= res!2370818 (is-Cons!62898 (exprs!5458 (h!69347 zl!343))))))

(assert (=> d!1765891 (forall!14740 (exprs!5458 (h!69347 zl!343)) lambda!299817)))

(assert (=> d!1765891 (= (generalisedConcat!1189 (exprs!5458 (h!69347 zl!343))) lt!2254959)))

(declare-fun b!5587255 () Bool)

(declare-fun isEmptyExpr!1128 (Regex!15574) Bool)

(assert (=> b!5587255 (= e!3447168 (isEmptyExpr!1128 lt!2254959))))

(declare-fun b!5587256 () Bool)

(assert (=> b!5587256 (= e!3447165 e!3447168)))

(declare-fun c!978795 () Bool)

(assert (=> b!5587256 (= c!978795 (isEmpty!34712 (exprs!5458 (h!69347 zl!343))))))

(declare-fun b!5587257 () Bool)

(assert (=> b!5587257 (= e!3447166 (h!69346 (exprs!5458 (h!69347 zl!343))))))

(declare-fun b!5587258 () Bool)

(assert (=> b!5587258 (= e!3447166 e!3447164)))

(declare-fun c!978794 () Bool)

(assert (=> b!5587258 (= c!978794 (is-Cons!62898 (exprs!5458 (h!69347 zl!343))))))

(declare-fun b!5587259 () Bool)

(assert (=> b!5587259 (= e!3447167 (isEmpty!34712 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5587260 () Bool)

(declare-fun isConcat!651 (Regex!15574) Bool)

(assert (=> b!5587260 (= e!3447169 (isConcat!651 lt!2254959))))

(assert (= (and d!1765891 res!2370818) b!5587259))

(assert (= (and d!1765891 c!978796) b!5587257))

(assert (= (and d!1765891 (not c!978796)) b!5587258))

(assert (= (and b!5587258 c!978794) b!5587251))

(assert (= (and b!5587258 (not c!978794)) b!5587252))

(assert (= (and d!1765891 res!2370817) b!5587256))

(assert (= (and b!5587256 c!978795) b!5587255))

(assert (= (and b!5587256 (not c!978795)) b!5587253))

(assert (= (and b!5587253 c!978793) b!5587254))

(assert (= (and b!5587253 (not c!978793)) b!5587260))

(declare-fun m!6567948 () Bool)

(assert (=> b!5587254 m!6567948))

(declare-fun m!6567950 () Bool)

(assert (=> b!5587255 m!6567950))

(assert (=> b!5587259 m!6567580))

(declare-fun m!6567952 () Bool)

(assert (=> b!5587256 m!6567952))

(declare-fun m!6567954 () Bool)

(assert (=> b!5587251 m!6567954))

(declare-fun m!6567956 () Bool)

(assert (=> b!5587260 m!6567956))

(declare-fun m!6567958 () Bool)

(assert (=> d!1765891 m!6567958))

(declare-fun m!6567960 () Bool)

(assert (=> d!1765891 m!6567960))

(declare-fun m!6567962 () Bool)

(assert (=> b!5587253 m!6567962))

(assert (=> b!5587253 m!6567962))

(declare-fun m!6567964 () Bool)

(assert (=> b!5587253 m!6567964))

(assert (=> b!5586800 d!1765891))

(declare-fun d!1765893 () Bool)

(declare-fun c!978797 () Bool)

(assert (=> d!1765893 (= c!978797 (isEmpty!34716 s!2326))))

(declare-fun e!3447170 () Bool)

(assert (=> d!1765893 (= (matchZipper!1712 lt!2254813 s!2326) e!3447170)))

(declare-fun b!5587261 () Bool)

(assert (=> b!5587261 (= e!3447170 (nullableZipper!1569 lt!2254813))))

(declare-fun b!5587262 () Bool)

(assert (=> b!5587262 (= e!3447170 (matchZipper!1712 (derivationStepZipper!1673 lt!2254813 (head!11918 s!2326)) (tail!11013 s!2326)))))

(assert (= (and d!1765893 c!978797) b!5587261))

(assert (= (and d!1765893 (not c!978797)) b!5587262))

(assert (=> d!1765893 m!6567828))

(declare-fun m!6567966 () Bool)

(assert (=> b!5587261 m!6567966))

(assert (=> b!5587262 m!6567836))

(assert (=> b!5587262 m!6567836))

(declare-fun m!6567968 () Bool)

(assert (=> b!5587262 m!6567968))

(assert (=> b!5587262 m!6567830))

(assert (=> b!5587262 m!6567968))

(assert (=> b!5587262 m!6567830))

(declare-fun m!6567970 () Bool)

(assert (=> b!5587262 m!6567970))

(assert (=> b!5586781 d!1765893))

(assert (=> b!5586781 d!1765829))

(declare-fun bs!1292039 () Bool)

(declare-fun d!1765895 () Bool)

(assert (= bs!1292039 (and d!1765895 d!1765825)))

(declare-fun lambda!299818 () Int)

(assert (=> bs!1292039 (= lambda!299818 lambda!299793)))

(declare-fun bs!1292040 () Bool)

(assert (= bs!1292040 (and d!1765895 d!1765827)))

(assert (=> bs!1292040 (= lambda!299818 lambda!299796)))

(declare-fun bs!1292041 () Bool)

(assert (= bs!1292041 (and d!1765895 d!1765831)))

(assert (=> bs!1292041 (= lambda!299818 lambda!299799)))

(declare-fun bs!1292042 () Bool)

(assert (= bs!1292042 (and d!1765895 d!1765891)))

(assert (=> bs!1292042 (= lambda!299818 lambda!299817)))

(assert (=> d!1765895 (= (inv!82183 setElem!37216) (forall!14740 (exprs!5458 setElem!37216) lambda!299818))))

(declare-fun bs!1292043 () Bool)

(assert (= bs!1292043 d!1765895))

(declare-fun m!6567972 () Bool)

(assert (=> bs!1292043 m!6567972))

(assert (=> setNonEmpty!37216 d!1765895))

(assert (=> b!5586792 d!1765837))

(declare-fun d!1765897 () Bool)

(declare-fun c!978798 () Bool)

(assert (=> d!1765897 (= c!978798 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447171 () Bool)

(assert (=> d!1765897 (= (matchZipper!1712 lt!2254830 (t!376296 s!2326)) e!3447171)))

(declare-fun b!5587263 () Bool)

(assert (=> b!5587263 (= e!3447171 (nullableZipper!1569 lt!2254830))))

(declare-fun b!5587264 () Bool)

(assert (=> b!5587264 (= e!3447171 (matchZipper!1712 (derivationStepZipper!1673 lt!2254830 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765897 c!978798) b!5587263))

(assert (= (and d!1765897 (not c!978798)) b!5587264))

(assert (=> d!1765897 m!6567788))

(declare-fun m!6567974 () Bool)

(assert (=> b!5587263 m!6567974))

(assert (=> b!5587264 m!6567792))

(assert (=> b!5587264 m!6567792))

(declare-fun m!6567976 () Bool)

(assert (=> b!5587264 m!6567976))

(assert (=> b!5587264 m!6567796))

(assert (=> b!5587264 m!6567976))

(assert (=> b!5587264 m!6567796))

(declare-fun m!6567978 () Bool)

(assert (=> b!5587264 m!6567978))

(assert (=> b!5586792 d!1765897))

(declare-fun d!1765899 () Bool)

(declare-fun c!978799 () Bool)

(assert (=> d!1765899 (= c!978799 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447172 () Bool)

(assert (=> d!1765899 (= (matchZipper!1712 lt!2254829 (t!376296 s!2326)) e!3447172)))

(declare-fun b!5587265 () Bool)

(assert (=> b!5587265 (= e!3447172 (nullableZipper!1569 lt!2254829))))

(declare-fun b!5587266 () Bool)

(assert (=> b!5587266 (= e!3447172 (matchZipper!1712 (derivationStepZipper!1673 lt!2254829 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1765899 c!978799) b!5587265))

(assert (= (and d!1765899 (not c!978799)) b!5587266))

(assert (=> d!1765899 m!6567788))

(declare-fun m!6567980 () Bool)

(assert (=> b!5587265 m!6567980))

(assert (=> b!5587266 m!6567792))

(assert (=> b!5587266 m!6567792))

(declare-fun m!6567982 () Bool)

(assert (=> b!5587266 m!6567982))

(assert (=> b!5587266 m!6567796))

(assert (=> b!5587266 m!6567982))

(assert (=> b!5587266 m!6567796))

(declare-fun m!6567984 () Bool)

(assert (=> b!5587266 m!6567984))

(assert (=> b!5586792 d!1765899))

(declare-fun e!3447173 () Bool)

(declare-fun d!1765901 () Bool)

(assert (=> d!1765901 (= (matchZipper!1712 (set.union lt!2254829 lt!2254825) (t!376296 s!2326)) e!3447173)))

(declare-fun res!2370819 () Bool)

(assert (=> d!1765901 (=> res!2370819 e!3447173)))

(assert (=> d!1765901 (= res!2370819 (matchZipper!1712 lt!2254829 (t!376296 s!2326)))))

(declare-fun lt!2254960 () Unit!155688)

(assert (=> d!1765901 (= lt!2254960 (choose!42360 lt!2254829 lt!2254825 (t!376296 s!2326)))))

(assert (=> d!1765901 (= (lemmaZipperConcatMatchesSameAsBothZippers!599 lt!2254829 lt!2254825 (t!376296 s!2326)) lt!2254960)))

(declare-fun b!5587267 () Bool)

(assert (=> b!5587267 (= e!3447173 (matchZipper!1712 lt!2254825 (t!376296 s!2326)))))

(assert (= (and d!1765901 (not res!2370819)) b!5587267))

(declare-fun m!6567986 () Bool)

(assert (=> d!1765901 m!6567986))

(assert (=> d!1765901 m!6567586))

(declare-fun m!6567988 () Bool)

(assert (=> d!1765901 m!6567988))

(assert (=> b!5587267 m!6567532))

(assert (=> b!5586792 d!1765901))

(declare-fun b!5587280 () Bool)

(declare-fun e!3447176 () Bool)

(declare-fun tp!1545498 () Bool)

(assert (=> b!5587280 (= e!3447176 tp!1545498)))

(declare-fun b!5587281 () Bool)

(declare-fun tp!1545500 () Bool)

(declare-fun tp!1545501 () Bool)

(assert (=> b!5587281 (= e!3447176 (and tp!1545500 tp!1545501))))

(declare-fun b!5587279 () Bool)

(declare-fun tp!1545499 () Bool)

(declare-fun tp!1545502 () Bool)

(assert (=> b!5587279 (= e!3447176 (and tp!1545499 tp!1545502))))

(declare-fun b!5587278 () Bool)

(assert (=> b!5587278 (= e!3447176 tp_is_empty!40401)))

(assert (=> b!5586788 (= tp!1545449 e!3447176)))

(assert (= (and b!5586788 (is-ElementMatch!15574 (regOne!31661 r!7292))) b!5587278))

(assert (= (and b!5586788 (is-Concat!24419 (regOne!31661 r!7292))) b!5587279))

(assert (= (and b!5586788 (is-Star!15574 (regOne!31661 r!7292))) b!5587280))

(assert (= (and b!5586788 (is-Union!15574 (regOne!31661 r!7292))) b!5587281))

(declare-fun b!5587284 () Bool)

(declare-fun e!3447177 () Bool)

(declare-fun tp!1545503 () Bool)

(assert (=> b!5587284 (= e!3447177 tp!1545503)))

(declare-fun b!5587285 () Bool)

(declare-fun tp!1545505 () Bool)

(declare-fun tp!1545506 () Bool)

(assert (=> b!5587285 (= e!3447177 (and tp!1545505 tp!1545506))))

(declare-fun b!5587283 () Bool)

(declare-fun tp!1545504 () Bool)

(declare-fun tp!1545507 () Bool)

(assert (=> b!5587283 (= e!3447177 (and tp!1545504 tp!1545507))))

(declare-fun b!5587282 () Bool)

(assert (=> b!5587282 (= e!3447177 tp_is_empty!40401)))

(assert (=> b!5586788 (= tp!1545455 e!3447177)))

(assert (= (and b!5586788 (is-ElementMatch!15574 (regTwo!31661 r!7292))) b!5587282))

(assert (= (and b!5586788 (is-Concat!24419 (regTwo!31661 r!7292))) b!5587283))

(assert (= (and b!5586788 (is-Star!15574 (regTwo!31661 r!7292))) b!5587284))

(assert (= (and b!5586788 (is-Union!15574 (regTwo!31661 r!7292))) b!5587285))

(declare-fun b!5587293 () Bool)

(declare-fun e!3447183 () Bool)

(declare-fun tp!1545512 () Bool)

(assert (=> b!5587293 (= e!3447183 tp!1545512)))

(declare-fun tp!1545513 () Bool)

(declare-fun b!5587292 () Bool)

(declare-fun e!3447182 () Bool)

(assert (=> b!5587292 (= e!3447182 (and (inv!82183 (h!69347 (t!376298 zl!343))) e!3447183 tp!1545513))))

(assert (=> b!5586783 (= tp!1545454 e!3447182)))

(assert (= b!5587292 b!5587293))

(assert (= (and b!5586783 (is-Cons!62899 (t!376298 zl!343))) b!5587292))

(declare-fun m!6567990 () Bool)

(assert (=> b!5587292 m!6567990))

(declare-fun b!5587298 () Bool)

(declare-fun e!3447186 () Bool)

(declare-fun tp!1545518 () Bool)

(declare-fun tp!1545519 () Bool)

(assert (=> b!5587298 (= e!3447186 (and tp!1545518 tp!1545519))))

(assert (=> b!5586809 (= tp!1545457 e!3447186)))

(assert (= (and b!5586809 (is-Cons!62898 (exprs!5458 (h!69347 zl!343)))) b!5587298))

(declare-fun b!5587301 () Bool)

(declare-fun e!3447187 () Bool)

(declare-fun tp!1545520 () Bool)

(assert (=> b!5587301 (= e!3447187 tp!1545520)))

(declare-fun b!5587302 () Bool)

(declare-fun tp!1545522 () Bool)

(declare-fun tp!1545523 () Bool)

(assert (=> b!5587302 (= e!3447187 (and tp!1545522 tp!1545523))))

(declare-fun b!5587300 () Bool)

(declare-fun tp!1545521 () Bool)

(declare-fun tp!1545524 () Bool)

(assert (=> b!5587300 (= e!3447187 (and tp!1545521 tp!1545524))))

(declare-fun b!5587299 () Bool)

(assert (=> b!5587299 (= e!3447187 tp_is_empty!40401)))

(assert (=> b!5586791 (= tp!1545453 e!3447187)))

(assert (= (and b!5586791 (is-ElementMatch!15574 (reg!15903 r!7292))) b!5587299))

(assert (= (and b!5586791 (is-Concat!24419 (reg!15903 r!7292))) b!5587300))

(assert (= (and b!5586791 (is-Star!15574 (reg!15903 r!7292))) b!5587301))

(assert (= (and b!5586791 (is-Union!15574 (reg!15903 r!7292))) b!5587302))

(declare-fun b!5587303 () Bool)

(declare-fun e!3447188 () Bool)

(declare-fun tp!1545525 () Bool)

(declare-fun tp!1545526 () Bool)

(assert (=> b!5587303 (= e!3447188 (and tp!1545525 tp!1545526))))

(assert (=> b!5586801 (= tp!1545448 e!3447188)))

(assert (= (and b!5586801 (is-Cons!62898 (exprs!5458 setElem!37216))) b!5587303))

(declare-fun condSetEmpty!37222 () Bool)

(assert (=> setNonEmpty!37216 (= condSetEmpty!37222 (= setRest!37216 (as set.empty (Set Context!9916))))))

(declare-fun setRes!37222 () Bool)

(assert (=> setNonEmpty!37216 (= tp!1545452 setRes!37222)))

(declare-fun setIsEmpty!37222 () Bool)

(assert (=> setIsEmpty!37222 setRes!37222))

(declare-fun e!3447191 () Bool)

(declare-fun tp!1545532 () Bool)

(declare-fun setElem!37222 () Context!9916)

(declare-fun setNonEmpty!37222 () Bool)

(assert (=> setNonEmpty!37222 (= setRes!37222 (and tp!1545532 (inv!82183 setElem!37222) e!3447191))))

(declare-fun setRest!37222 () (Set Context!9916))

(assert (=> setNonEmpty!37222 (= setRest!37216 (set.union (set.insert setElem!37222 (as set.empty (Set Context!9916))) setRest!37222))))

(declare-fun b!5587308 () Bool)

(declare-fun tp!1545531 () Bool)

(assert (=> b!5587308 (= e!3447191 tp!1545531)))

(assert (= (and setNonEmpty!37216 condSetEmpty!37222) setIsEmpty!37222))

(assert (= (and setNonEmpty!37216 (not condSetEmpty!37222)) setNonEmpty!37222))

(assert (= setNonEmpty!37222 b!5587308))

(declare-fun m!6567992 () Bool)

(assert (=> setNonEmpty!37222 m!6567992))

(declare-fun b!5587313 () Bool)

(declare-fun e!3447194 () Bool)

(declare-fun tp!1545535 () Bool)

(assert (=> b!5587313 (= e!3447194 (and tp_is_empty!40401 tp!1545535))))

(assert (=> b!5586807 (= tp!1545450 e!3447194)))

(assert (= (and b!5586807 (is-Cons!62897 (t!376296 s!2326))) b!5587313))

(declare-fun b!5587316 () Bool)

(declare-fun e!3447195 () Bool)

(declare-fun tp!1545536 () Bool)

(assert (=> b!5587316 (= e!3447195 tp!1545536)))

(declare-fun b!5587317 () Bool)

(declare-fun tp!1545538 () Bool)

(declare-fun tp!1545539 () Bool)

(assert (=> b!5587317 (= e!3447195 (and tp!1545538 tp!1545539))))

(declare-fun b!5587315 () Bool)

(declare-fun tp!1545537 () Bool)

(declare-fun tp!1545540 () Bool)

(assert (=> b!5587315 (= e!3447195 (and tp!1545537 tp!1545540))))

(declare-fun b!5587314 () Bool)

(assert (=> b!5587314 (= e!3447195 tp_is_empty!40401)))

(assert (=> b!5586802 (= tp!1545451 e!3447195)))

(assert (= (and b!5586802 (is-ElementMatch!15574 (regOne!31660 r!7292))) b!5587314))

(assert (= (and b!5586802 (is-Concat!24419 (regOne!31660 r!7292))) b!5587315))

(assert (= (and b!5586802 (is-Star!15574 (regOne!31660 r!7292))) b!5587316))

(assert (= (and b!5586802 (is-Union!15574 (regOne!31660 r!7292))) b!5587317))

(declare-fun b!5587320 () Bool)

(declare-fun e!3447196 () Bool)

(declare-fun tp!1545541 () Bool)

(assert (=> b!5587320 (= e!3447196 tp!1545541)))

(declare-fun b!5587321 () Bool)

(declare-fun tp!1545543 () Bool)

(declare-fun tp!1545544 () Bool)

(assert (=> b!5587321 (= e!3447196 (and tp!1545543 tp!1545544))))

(declare-fun b!5587319 () Bool)

(declare-fun tp!1545542 () Bool)

(declare-fun tp!1545545 () Bool)

(assert (=> b!5587319 (= e!3447196 (and tp!1545542 tp!1545545))))

(declare-fun b!5587318 () Bool)

(assert (=> b!5587318 (= e!3447196 tp_is_empty!40401)))

(assert (=> b!5586802 (= tp!1545456 e!3447196)))

(assert (= (and b!5586802 (is-ElementMatch!15574 (regTwo!31660 r!7292))) b!5587318))

(assert (= (and b!5586802 (is-Concat!24419 (regTwo!31660 r!7292))) b!5587319))

(assert (= (and b!5586802 (is-Star!15574 (regTwo!31660 r!7292))) b!5587320))

(assert (= (and b!5586802 (is-Union!15574 (regTwo!31660 r!7292))) b!5587321))

(declare-fun b_lambda!211713 () Bool)

(assert (= b_lambda!211709 (or b!5586782 b_lambda!211713)))

(declare-fun bs!1292044 () Bool)

(declare-fun d!1765903 () Bool)

(assert (= bs!1292044 (and d!1765903 b!5586782)))

(assert (=> bs!1292044 (= (dynLambda!24597 lambda!299775 lt!2254810) (derivationStepZipperUp!842 lt!2254810 (h!69345 s!2326)))))

(assert (=> bs!1292044 m!6567564))

(assert (=> d!1765859 d!1765903))

(declare-fun b_lambda!211715 () Bool)

(assert (= b_lambda!211707 (or b!5586782 b_lambda!211715)))

(declare-fun bs!1292045 () Bool)

(declare-fun d!1765905 () Bool)

(assert (= bs!1292045 (and d!1765905 b!5586782)))

(assert (=> bs!1292045 (= (dynLambda!24597 lambda!299775 (h!69347 zl!343)) (derivationStepZipperUp!842 (h!69347 zl!343) (h!69345 s!2326)))))

(assert (=> bs!1292045 m!6567602))

(assert (=> d!1765809 d!1765905))

(declare-fun b_lambda!211717 () Bool)

(assert (= b_lambda!211711 (or b!5586782 b_lambda!211717)))

(declare-fun bs!1292046 () Bool)

(declare-fun d!1765907 () Bool)

(assert (= bs!1292046 (and d!1765907 b!5586782)))

(assert (=> bs!1292046 (= (dynLambda!24597 lambda!299775 lt!2254814) (derivationStepZipperUp!842 lt!2254814 (h!69345 s!2326)))))

(assert (=> bs!1292046 m!6567566))

(assert (=> d!1765871 d!1765907))

(push 1)

(assert (not b!5587152))

(assert (not bm!418188))

(assert (not b!5587176))

(assert (not d!1765851))

(assert (not d!1765809))

(assert (not d!1765873))

(assert (not b_lambda!211715))

(assert (not b!5587320))

(assert (not bm!418204))

(assert (not b!5587173))

(assert (not b!5587151))

(assert (not b!5586985))

(assert (not b!5587207))

(assert (not b!5587255))

(assert (not d!1765891))

(assert (not b!5587038))

(assert (not b!5586944))

(assert (not d!1765843))

(assert (not b!5587208))

(assert (not d!1765849))

(assert (not bm!418162))

(assert (not b!5587263))

(assert (not b!5587126))

(assert (not b!5586954))

(assert (not b!5587020))

(assert (not bm!418193))

(assert (not b!5587206))

(assert (not b!5587301))

(assert (not d!1765893))

(assert (not b!5587264))

(assert (not b!5587015))

(assert (not bs!1292044))

(assert (not d!1765831))

(assert (not bs!1292045))

(assert (not b!5587012))

(assert (not d!1765899))

(assert (not b!5587017))

(assert (not b!5587013))

(assert (not b!5586949))

(assert (not b!5586952))

(assert (not d!1765895))

(assert (not b!5587321))

(assert (not b!5587266))

(assert (not b!5587032))

(assert (not b!5587303))

(assert (not b!5587076))

(assert (not d!1765861))

(assert (not b!5587260))

(assert (not b!5587319))

(assert (not b!5587256))

(assert (not d!1765837))

(assert (not d!1765865))

(assert (not bm!418202))

(assert (not bm!418213))

(assert (not b!5587300))

(assert tp_is_empty!40401)

(assert (not d!1765871))

(assert (not b!5587293))

(assert (not bm!418180))

(assert (not d!1765853))

(assert (not d!1765863))

(assert (not b!5587267))

(assert (not b!5587040))

(assert (not bm!418181))

(assert (not b!5587298))

(assert (not bm!418206))

(assert (not b!5587205))

(assert (not b!5587262))

(assert (not d!1765859))

(assert (not b!5587254))

(assert (not bm!418192))

(assert (not b!5587253))

(assert (not b!5587225))

(assert (not b!5586957))

(assert (not bm!418163))

(assert (not d!1765825))

(assert (not d!1765879))

(assert (not b!5587031))

(assert (not b!5587283))

(assert (not b!5587116))

(assert (not bm!418178))

(assert (not d!1765827))

(assert (not b!5587150))

(assert (not bm!418187))

(assert (not b!5587308))

(assert (not setNonEmpty!37222))

(assert (not b!5587251))

(assert (not b!5587259))

(assert (not bm!418212))

(assert (not bm!418207))

(assert (not bs!1292046))

(assert (not b_lambda!211713))

(assert (not d!1765839))

(assert (not b!5587147))

(assert (not d!1765883))

(assert (not b!5587168))

(assert (not b!5587117))

(assert (not b!5587171))

(assert (not d!1765845))

(assert (not b!5587316))

(assert (not d!1765847))

(assert (not b!5586947))

(assert (not d!1765833))

(assert (not b!5587265))

(assert (not b!5587279))

(assert (not b!5587302))

(assert (not b!5587146))

(assert (not b!5587317))

(assert (not b!5587281))

(assert (not b!5587313))

(assert (not d!1765835))

(assert (not b!5587204))

(assert (not b!5587280))

(assert (not b_lambda!211717))

(assert (not bm!418164))

(assert (not bm!418210))

(assert (not d!1765821))

(assert (not b!5587292))

(assert (not bm!418200))

(assert (not b!5587082))

(assert (not b!5587284))

(assert (not b!5587018))

(assert (not b!5587041))

(assert (not b!5587261))

(assert (not b!5587285))

(assert (not b!5587196))

(assert (not b!5587118))

(assert (not b!5587025))

(assert (not b!5587039))

(assert (not d!1765857))

(assert (not b!5587042))

(assert (not b!5587035))

(assert (not d!1765811))

(assert (not d!1765885))

(assert (not b!5587315))

(assert (not d!1765855))

(assert (not d!1765897))

(assert (not b!5587016))

(assert (not bm!418191))

(assert (not b!5587115))

(assert (not b!5587214))

(assert (not b!5587114))

(assert (not d!1765829))

(assert (not d!1765901))

(assert (not b!5587153))

(assert (not d!1765823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1765835 d!1765839))

(assert (=> d!1765835 d!1765837))

(declare-fun e!3447418 () Bool)

(declare-fun d!1766009 () Bool)

(assert (=> d!1766009 (= (matchZipper!1712 (set.union lt!2254821 lt!2254822) (t!376296 s!2326)) e!3447418)))

(declare-fun res!2370939 () Bool)

(assert (=> d!1766009 (=> res!2370939 e!3447418)))

(assert (=> d!1766009 (= res!2370939 (matchZipper!1712 lt!2254821 (t!376296 s!2326)))))

(assert (=> d!1766009 true))

(declare-fun _$48!1149 () Unit!155688)

(assert (=> d!1766009 (= (choose!42360 lt!2254821 lt!2254822 (t!376296 s!2326)) _$48!1149)))

(declare-fun b!5587713 () Bool)

(assert (=> b!5587713 (= e!3447418 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(assert (= (and d!1766009 (not res!2370939)) b!5587713))

(assert (=> d!1766009 m!6567538))

(assert (=> d!1766009 m!6567536))

(assert (=> b!5587713 m!6567530))

(assert (=> d!1765835 d!1766009))

(declare-fun bm!418270 () Bool)

(declare-fun call!418276 () (Set Context!9916))

(declare-fun call!418277 () (Set Context!9916))

(assert (=> bm!418270 (= call!418276 call!418277)))

(declare-fun b!5587714 () Bool)

(declare-fun e!3447423 () (Set Context!9916))

(declare-fun call!418279 () (Set Context!9916))

(assert (=> b!5587714 (= e!3447423 (set.union call!418279 call!418276))))

(declare-fun bm!418271 () Bool)

(declare-fun call!418280 () List!63022)

(declare-fun c!978911 () Bool)

(assert (=> bm!418271 (= call!418279 (derivationStepZipperDown!916 (ite c!978911 (regOne!31661 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (regOne!31660 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))))) (ite c!978911 (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211)) (Context!9917 call!418280)) (h!69345 s!2326)))))

(declare-fun bm!418272 () Bool)

(declare-fun call!418275 () (Set Context!9916))

(assert (=> bm!418272 (= call!418275 call!418276)))

(declare-fun c!978912 () Bool)

(declare-fun d!1766011 () Bool)

(assert (=> d!1766011 (= c!978912 (and (is-ElementMatch!15574 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (= (c!978676 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (h!69345 s!2326))))))

(declare-fun e!3447419 () (Set Context!9916))

(assert (=> d!1766011 (= (derivationStepZipperDown!916 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))) (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211)) (h!69345 s!2326)) e!3447419)))

(declare-fun b!5587715 () Bool)

(declare-fun e!3447421 () (Set Context!9916))

(assert (=> b!5587715 (= e!3447419 e!3447421)))

(assert (=> b!5587715 (= c!978911 (is-Union!15574 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))))))

(declare-fun c!978909 () Bool)

(declare-fun call!418278 () List!63022)

(declare-fun bm!418273 () Bool)

(declare-fun c!978913 () Bool)

(assert (=> bm!418273 (= call!418277 (derivationStepZipperDown!916 (ite c!978911 (regTwo!31661 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (ite c!978909 (regTwo!31660 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (ite c!978913 (regOne!31660 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (reg!15903 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))))))) (ite (or c!978911 c!978909) (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211)) (Context!9917 call!418278)) (h!69345 s!2326)))))

(declare-fun b!5587716 () Bool)

(declare-fun e!3447420 () Bool)

(assert (=> b!5587716 (= c!978909 e!3447420)))

(declare-fun res!2370940 () Bool)

(assert (=> b!5587716 (=> (not res!2370940) (not e!3447420))))

(assert (=> b!5587716 (= res!2370940 (is-Concat!24419 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))))))

(assert (=> b!5587716 (= e!3447421 e!3447423)))

(declare-fun b!5587717 () Bool)

(declare-fun e!3447422 () (Set Context!9916))

(assert (=> b!5587717 (= e!3447422 call!418275)))

(declare-fun b!5587718 () Bool)

(assert (=> b!5587718 (= e!3447423 e!3447422)))

(assert (=> b!5587718 (= c!978913 (is-Concat!24419 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))))))

(declare-fun b!5587719 () Bool)

(assert (=> b!5587719 (= e!3447420 (nullable!5606 (regOne!31660 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))))))))

(declare-fun b!5587720 () Bool)

(assert (=> b!5587720 (= e!3447419 (set.insert (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211)) (as set.empty (Set Context!9916))))))

(declare-fun b!5587721 () Bool)

(declare-fun e!3447424 () (Set Context!9916))

(assert (=> b!5587721 (= e!3447424 call!418275)))

(declare-fun b!5587722 () Bool)

(assert (=> b!5587722 (= e!3447421 (set.union call!418279 call!418277))))

(declare-fun c!978910 () Bool)

(declare-fun b!5587723 () Bool)

(assert (=> b!5587723 (= c!978910 (is-Star!15574 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))))))

(assert (=> b!5587723 (= e!3447422 e!3447424)))

(declare-fun bm!418274 () Bool)

(assert (=> bm!418274 (= call!418280 ($colon$colon!1637 (exprs!5458 (ite (or c!978777 c!978775) lt!2254824 (Context!9917 call!418211))) (ite (or c!978909 c!978913) (regTwo!31660 (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292))))))) (ite c!978777 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978775 (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (ite c!978779 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))) (reg!15903 (regTwo!31661 (regOne!31660 r!7292)))))))))))

(declare-fun bm!418275 () Bool)

(assert (=> bm!418275 (= call!418278 call!418280)))

(declare-fun b!5587724 () Bool)

(assert (=> b!5587724 (= e!3447424 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766011 c!978912) b!5587720))

(assert (= (and d!1766011 (not c!978912)) b!5587715))

(assert (= (and b!5587715 c!978911) b!5587722))

(assert (= (and b!5587715 (not c!978911)) b!5587716))

(assert (= (and b!5587716 res!2370940) b!5587719))

(assert (= (and b!5587716 c!978909) b!5587714))

(assert (= (and b!5587716 (not c!978909)) b!5587718))

(assert (= (and b!5587718 c!978913) b!5587717))

(assert (= (and b!5587718 (not c!978913)) b!5587723))

(assert (= (and b!5587723 c!978910) b!5587721))

(assert (= (and b!5587723 (not c!978910)) b!5587724))

(assert (= (or b!5587717 b!5587721) bm!418275))

(assert (= (or b!5587717 b!5587721) bm!418272))

(assert (= (or b!5587714 bm!418275) bm!418274))

(assert (= (or b!5587714 bm!418272) bm!418270))

(assert (= (or b!5587722 bm!418270) bm!418273))

(assert (= (or b!5587722 b!5587714) bm!418271))

(declare-fun m!6568262 () Bool)

(assert (=> bm!418274 m!6568262))

(declare-fun m!6568264 () Bool)

(assert (=> bm!418273 m!6568264))

(declare-fun m!6568266 () Bool)

(assert (=> b!5587720 m!6568266))

(declare-fun m!6568268 () Bool)

(assert (=> bm!418271 m!6568268))

(declare-fun m!6568270 () Bool)

(assert (=> b!5587719 m!6568270))

(assert (=> bm!418206 d!1766011))

(declare-fun d!1766013 () Bool)

(assert (=> d!1766013 (= (isEmpty!34716 (t!376296 s!2326)) (is-Nil!62897 (t!376296 s!2326)))))

(assert (=> d!1765837 d!1766013))

(declare-fun d!1766015 () Bool)

(assert (=> d!1766015 (= ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978711 c!978715) (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69346 (exprs!5458 (h!69347 zl!343))))) (Cons!62898 (ite (or c!978711 c!978715) (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69346 (exprs!5458 (h!69347 zl!343)))) (exprs!5458 lt!2254824)))))

(assert (=> bm!418181 d!1766015))

(declare-fun bs!1292088 () Bool)

(declare-fun d!1766017 () Bool)

(assert (= bs!1292088 (and d!1766017 d!1765895)))

(declare-fun lambda!299847 () Int)

(assert (=> bs!1292088 (= lambda!299847 lambda!299818)))

(declare-fun bs!1292089 () Bool)

(assert (= bs!1292089 (and d!1766017 d!1765827)))

(assert (=> bs!1292089 (= lambda!299847 lambda!299796)))

(declare-fun bs!1292090 () Bool)

(assert (= bs!1292090 (and d!1766017 d!1765891)))

(assert (=> bs!1292090 (= lambda!299847 lambda!299817)))

(declare-fun bs!1292091 () Bool)

(assert (= bs!1292091 (and d!1766017 d!1765831)))

(assert (=> bs!1292091 (= lambda!299847 lambda!299799)))

(declare-fun bs!1292092 () Bool)

(assert (= bs!1292092 (and d!1766017 d!1765825)))

(assert (=> bs!1292092 (= lambda!299847 lambda!299793)))

(assert (=> d!1766017 (= (inv!82183 (h!69347 (t!376298 zl!343))) (forall!14740 (exprs!5458 (h!69347 (t!376298 zl!343))) lambda!299847))))

(declare-fun bs!1292093 () Bool)

(assert (= bs!1292093 d!1766017))

(declare-fun m!6568272 () Bool)

(assert (=> bs!1292093 m!6568272))

(assert (=> b!5587292 d!1766017))

(declare-fun bm!418276 () Bool)

(declare-fun call!418282 () (Set Context!9916))

(declare-fun call!418283 () (Set Context!9916))

(assert (=> bm!418276 (= call!418282 call!418283)))

(declare-fun b!5587725 () Bool)

(declare-fun e!3447429 () (Set Context!9916))

(declare-fun call!418285 () (Set Context!9916))

(assert (=> b!5587725 (= e!3447429 (set.union call!418285 call!418282))))

(declare-fun bm!418277 () Bool)

(declare-fun call!418286 () List!63022)

(declare-fun c!978916 () Bool)

(assert (=> bm!418277 (= call!418285 (derivationStepZipperDown!916 (ite c!978916 (regOne!31661 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (regOne!31660 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))) (ite c!978916 (ite c!978782 lt!2254824 (Context!9917 call!418219)) (Context!9917 call!418286)) (h!69345 s!2326)))))

(declare-fun bm!418278 () Bool)

(declare-fun call!418281 () (Set Context!9916))

(assert (=> bm!418278 (= call!418281 call!418282)))

(declare-fun d!1766019 () Bool)

(declare-fun c!978917 () Bool)

(assert (=> d!1766019 (= c!978917 (and (is-ElementMatch!15574 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (= (c!978676 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (h!69345 s!2326))))))

(declare-fun e!3447425 () (Set Context!9916))

(assert (=> d!1766019 (= (derivationStepZipperDown!916 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))) (ite c!978782 lt!2254824 (Context!9917 call!418219)) (h!69345 s!2326)) e!3447425)))

(declare-fun b!5587726 () Bool)

(declare-fun e!3447427 () (Set Context!9916))

(assert (=> b!5587726 (= e!3447425 e!3447427)))

(assert (=> b!5587726 (= c!978916 (is-Union!15574 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(declare-fun bm!418279 () Bool)

(declare-fun c!978918 () Bool)

(declare-fun c!978914 () Bool)

(declare-fun call!418284 () List!63022)

(assert (=> bm!418279 (= call!418283 (derivationStepZipperDown!916 (ite c!978916 (regTwo!31661 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (ite c!978914 (regTwo!31660 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (ite c!978918 (regOne!31660 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (reg!15903 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))))) (ite (or c!978916 c!978914) (ite c!978782 lt!2254824 (Context!9917 call!418219)) (Context!9917 call!418284)) (h!69345 s!2326)))))

(declare-fun b!5587727 () Bool)

(declare-fun e!3447426 () Bool)

(assert (=> b!5587727 (= c!978914 e!3447426)))

(declare-fun res!2370941 () Bool)

(assert (=> b!5587727 (=> (not res!2370941) (not e!3447426))))

(assert (=> b!5587727 (= res!2370941 (is-Concat!24419 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(assert (=> b!5587727 (= e!3447427 e!3447429)))

(declare-fun b!5587728 () Bool)

(declare-fun e!3447428 () (Set Context!9916))

(assert (=> b!5587728 (= e!3447428 call!418281)))

(declare-fun b!5587729 () Bool)

(assert (=> b!5587729 (= e!3447429 e!3447428)))

(assert (=> b!5587729 (= c!978918 (is-Concat!24419 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(declare-fun b!5587730 () Bool)

(assert (=> b!5587730 (= e!3447426 (nullable!5606 (regOne!31660 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))))))

(declare-fun b!5587731 () Bool)

(assert (=> b!5587731 (= e!3447425 (set.insert (ite c!978782 lt!2254824 (Context!9917 call!418219)) (as set.empty (Set Context!9916))))))

(declare-fun b!5587732 () Bool)

(declare-fun e!3447430 () (Set Context!9916))

(assert (=> b!5587732 (= e!3447430 call!418281)))

(declare-fun b!5587733 () Bool)

(assert (=> b!5587733 (= e!3447427 (set.union call!418285 call!418283))))

(declare-fun b!5587734 () Bool)

(declare-fun c!978915 () Bool)

(assert (=> b!5587734 (= c!978915 (is-Star!15574 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(assert (=> b!5587734 (= e!3447428 e!3447430)))

(declare-fun bm!418280 () Bool)

(assert (=> bm!418280 (= call!418286 ($colon$colon!1637 (exprs!5458 (ite c!978782 lt!2254824 (Context!9917 call!418219))) (ite (or c!978914 c!978918) (regTwo!31660 (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))) (ite c!978782 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))))))

(declare-fun bm!418281 () Bool)

(assert (=> bm!418281 (= call!418284 call!418286)))

(declare-fun b!5587735 () Bool)

(assert (=> b!5587735 (= e!3447430 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766019 c!978917) b!5587731))

(assert (= (and d!1766019 (not c!978917)) b!5587726))

(assert (= (and b!5587726 c!978916) b!5587733))

(assert (= (and b!5587726 (not c!978916)) b!5587727))

(assert (= (and b!5587727 res!2370941) b!5587730))

(assert (= (and b!5587727 c!978914) b!5587725))

(assert (= (and b!5587727 (not c!978914)) b!5587729))

(assert (= (and b!5587729 c!978918) b!5587728))

(assert (= (and b!5587729 (not c!978918)) b!5587734))

(assert (= (and b!5587734 c!978915) b!5587732))

(assert (= (and b!5587734 (not c!978915)) b!5587735))

(assert (= (or b!5587728 b!5587732) bm!418281))

(assert (= (or b!5587728 b!5587732) bm!418278))

(assert (= (or b!5587725 bm!418281) bm!418280))

(assert (= (or b!5587725 bm!418278) bm!418276))

(assert (= (or b!5587733 bm!418276) bm!418279))

(assert (= (or b!5587733 b!5587725) bm!418277))

(declare-fun m!6568274 () Bool)

(assert (=> bm!418280 m!6568274))

(declare-fun m!6568276 () Bool)

(assert (=> bm!418279 m!6568276))

(declare-fun m!6568278 () Bool)

(assert (=> b!5587731 m!6568278))

(declare-fun m!6568280 () Bool)

(assert (=> bm!418277 m!6568280))

(declare-fun m!6568282 () Bool)

(assert (=> b!5587730 m!6568282))

(assert (=> bm!418210 d!1766019))

(declare-fun d!1766021 () Bool)

(assert (=> d!1766021 (= (isEmpty!34716 s!2326) (is-Nil!62897 s!2326))))

(assert (=> d!1765843 d!1766021))

(assert (=> d!1765843 d!1765877))

(assert (=> b!5587038 d!1765879))

(declare-fun b!5587736 () Bool)

(declare-fun e!3447437 () Bool)

(assert (=> b!5587736 (= e!3447437 (= (head!11918 (_1!35974 (get!21658 lt!2254945))) (c!978676 (regOne!31660 r!7292))))))

(declare-fun b!5587738 () Bool)

(declare-fun res!2370947 () Bool)

(declare-fun e!3447432 () Bool)

(assert (=> b!5587738 (=> res!2370947 e!3447432)))

(assert (=> b!5587738 (= res!2370947 (not (isEmpty!34716 (tail!11013 (_1!35974 (get!21658 lt!2254945))))))))

(declare-fun b!5587739 () Bool)

(declare-fun e!3447434 () Bool)

(assert (=> b!5587739 (= e!3447434 (nullable!5606 (regOne!31660 r!7292)))))

(declare-fun b!5587740 () Bool)

(declare-fun res!2370946 () Bool)

(assert (=> b!5587740 (=> (not res!2370946) (not e!3447437))))

(assert (=> b!5587740 (= res!2370946 (isEmpty!34716 (tail!11013 (_1!35974 (get!21658 lt!2254945)))))))

(declare-fun b!5587741 () Bool)

(declare-fun e!3447436 () Bool)

(declare-fun e!3447433 () Bool)

(assert (=> b!5587741 (= e!3447436 e!3447433)))

(declare-fun c!978919 () Bool)

(assert (=> b!5587741 (= c!978919 (is-EmptyLang!15574 (regOne!31660 r!7292)))))

(declare-fun b!5587742 () Bool)

(declare-fun lt!2255007 () Bool)

(declare-fun call!418287 () Bool)

(assert (=> b!5587742 (= e!3447436 (= lt!2255007 call!418287))))

(declare-fun b!5587743 () Bool)

(declare-fun res!2370948 () Bool)

(declare-fun e!3447435 () Bool)

(assert (=> b!5587743 (=> res!2370948 e!3447435)))

(assert (=> b!5587743 (= res!2370948 e!3447437)))

(declare-fun res!2370945 () Bool)

(assert (=> b!5587743 (=> (not res!2370945) (not e!3447437))))

(assert (=> b!5587743 (= res!2370945 lt!2255007)))

(declare-fun b!5587744 () Bool)

(declare-fun e!3447431 () Bool)

(assert (=> b!5587744 (= e!3447435 e!3447431)))

(declare-fun res!2370943 () Bool)

(assert (=> b!5587744 (=> (not res!2370943) (not e!3447431))))

(assert (=> b!5587744 (= res!2370943 (not lt!2255007))))

(declare-fun b!5587745 () Bool)

(declare-fun res!2370944 () Bool)

(assert (=> b!5587745 (=> (not res!2370944) (not e!3447437))))

(assert (=> b!5587745 (= res!2370944 (not call!418287))))

(declare-fun b!5587746 () Bool)

(declare-fun res!2370942 () Bool)

(assert (=> b!5587746 (=> res!2370942 e!3447435)))

(assert (=> b!5587746 (= res!2370942 (not (is-ElementMatch!15574 (regOne!31660 r!7292))))))

(assert (=> b!5587746 (= e!3447433 e!3447435)))

(declare-fun b!5587747 () Bool)

(assert (=> b!5587747 (= e!3447433 (not lt!2255007))))

(declare-fun d!1766023 () Bool)

(assert (=> d!1766023 e!3447436))

(declare-fun c!978921 () Bool)

(assert (=> d!1766023 (= c!978921 (is-EmptyExpr!15574 (regOne!31660 r!7292)))))

(assert (=> d!1766023 (= lt!2255007 e!3447434)))

(declare-fun c!978920 () Bool)

(assert (=> d!1766023 (= c!978920 (isEmpty!34716 (_1!35974 (get!21658 lt!2254945))))))

(assert (=> d!1766023 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1766023 (= (matchR!7759 (regOne!31660 r!7292) (_1!35974 (get!21658 lt!2254945))) lt!2255007)))

(declare-fun b!5587737 () Bool)

(assert (=> b!5587737 (= e!3447432 (not (= (head!11918 (_1!35974 (get!21658 lt!2254945))) (c!978676 (regOne!31660 r!7292)))))))

(declare-fun b!5587748 () Bool)

(assert (=> b!5587748 (= e!3447434 (matchR!7759 (derivativeStep!4422 (regOne!31660 r!7292) (head!11918 (_1!35974 (get!21658 lt!2254945)))) (tail!11013 (_1!35974 (get!21658 lt!2254945)))))))

(declare-fun bm!418282 () Bool)

(assert (=> bm!418282 (= call!418287 (isEmpty!34716 (_1!35974 (get!21658 lt!2254945))))))

(declare-fun b!5587749 () Bool)

(assert (=> b!5587749 (= e!3447431 e!3447432)))

(declare-fun res!2370949 () Bool)

(assert (=> b!5587749 (=> res!2370949 e!3447432)))

(assert (=> b!5587749 (= res!2370949 call!418287)))

(assert (= (and d!1766023 c!978920) b!5587739))

(assert (= (and d!1766023 (not c!978920)) b!5587748))

(assert (= (and d!1766023 c!978921) b!5587742))

(assert (= (and d!1766023 (not c!978921)) b!5587741))

(assert (= (and b!5587741 c!978919) b!5587747))

(assert (= (and b!5587741 (not c!978919)) b!5587746))

(assert (= (and b!5587746 (not res!2370942)) b!5587743))

(assert (= (and b!5587743 res!2370945) b!5587745))

(assert (= (and b!5587745 res!2370944) b!5587740))

(assert (= (and b!5587740 res!2370946) b!5587736))

(assert (= (and b!5587743 (not res!2370948)) b!5587744))

(assert (= (and b!5587744 res!2370943) b!5587749))

(assert (= (and b!5587749 (not res!2370949)) b!5587738))

(assert (= (and b!5587738 (not res!2370947)) b!5587737))

(assert (= (or b!5587742 b!5587749 b!5587745) bm!418282))

(declare-fun m!6568284 () Bool)

(assert (=> bm!418282 m!6568284))

(declare-fun m!6568286 () Bool)

(assert (=> b!5587740 m!6568286))

(assert (=> b!5587740 m!6568286))

(declare-fun m!6568288 () Bool)

(assert (=> b!5587740 m!6568288))

(declare-fun m!6568290 () Bool)

(assert (=> b!5587739 m!6568290))

(declare-fun m!6568292 () Bool)

(assert (=> b!5587748 m!6568292))

(assert (=> b!5587748 m!6568292))

(declare-fun m!6568294 () Bool)

(assert (=> b!5587748 m!6568294))

(assert (=> b!5587748 m!6568286))

(assert (=> b!5587748 m!6568294))

(assert (=> b!5587748 m!6568286))

(declare-fun m!6568296 () Bool)

(assert (=> b!5587748 m!6568296))

(assert (=> d!1766023 m!6568284))

(assert (=> d!1766023 m!6567848))

(assert (=> b!5587738 m!6568286))

(assert (=> b!5587738 m!6568286))

(assert (=> b!5587738 m!6568288))

(assert (=> b!5587737 m!6568292))

(assert (=> b!5587736 m!6568292))

(assert (=> b!5587150 d!1766023))

(declare-fun d!1766025 () Bool)

(assert (=> d!1766025 (= (get!21658 lt!2254945) (v!51623 lt!2254945))))

(assert (=> b!5587150 d!1766025))

(declare-fun bs!1292094 () Bool)

(declare-fun b!5587755 () Bool)

(assert (= bs!1292094 (and b!5587755 d!1765853)))

(declare-fun lambda!299848 () Int)

(assert (=> bs!1292094 (not (= lambda!299848 lambda!299808))))

(declare-fun bs!1292095 () Bool)

(assert (= bs!1292095 (and b!5587755 d!1765855)))

(assert (=> bs!1292095 (not (= lambda!299848 lambda!299814))))

(declare-fun bs!1292096 () Bool)

(assert (= bs!1292096 (and b!5587755 b!5587080)))

(assert (=> bs!1292096 (= (and (= (reg!15903 (regOne!31661 r!7292)) (reg!15903 r!7292)) (= (regOne!31661 r!7292) r!7292)) (= lambda!299848 lambda!299804))))

(assert (=> bs!1292095 (not (= lambda!299848 lambda!299813))))

(declare-fun bs!1292097 () Bool)

(assert (= bs!1292097 (and b!5587755 b!5586785)))

(assert (=> bs!1292097 (not (= lambda!299848 lambda!299774))))

(assert (=> bs!1292097 (not (= lambda!299848 lambda!299773))))

(declare-fun bs!1292098 () Bool)

(assert (= bs!1292098 (and b!5587755 b!5587085)))

(assert (=> bs!1292098 (not (= lambda!299848 lambda!299805))))

(assert (=> b!5587755 true))

(assert (=> b!5587755 true))

(declare-fun bs!1292099 () Bool)

(declare-fun b!5587760 () Bool)

(assert (= bs!1292099 (and b!5587760 b!5587755)))

(declare-fun lambda!299849 () Int)

(assert (=> bs!1292099 (not (= lambda!299849 lambda!299848))))

(declare-fun bs!1292100 () Bool)

(assert (= bs!1292100 (and b!5587760 d!1765853)))

(assert (=> bs!1292100 (not (= lambda!299849 lambda!299808))))

(declare-fun bs!1292101 () Bool)

(assert (= bs!1292101 (and b!5587760 d!1765855)))

(assert (=> bs!1292101 (= (and (= (regOne!31660 (regOne!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regOne!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299849 lambda!299814))))

(declare-fun bs!1292102 () Bool)

(assert (= bs!1292102 (and b!5587760 b!5587080)))

(assert (=> bs!1292102 (not (= lambda!299849 lambda!299804))))

(assert (=> bs!1292101 (not (= lambda!299849 lambda!299813))))

(declare-fun bs!1292103 () Bool)

(assert (= bs!1292103 (and b!5587760 b!5586785)))

(assert (=> bs!1292103 (= (and (= (regOne!31660 (regOne!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regOne!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299849 lambda!299774))))

(assert (=> bs!1292103 (not (= lambda!299849 lambda!299773))))

(declare-fun bs!1292104 () Bool)

(assert (= bs!1292104 (and b!5587760 b!5587085)))

(assert (=> bs!1292104 (= (and (= (regOne!31660 (regOne!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regOne!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299849 lambda!299805))))

(assert (=> b!5587760 true))

(assert (=> b!5587760 true))

(declare-fun d!1766027 () Bool)

(declare-fun c!978924 () Bool)

(assert (=> d!1766027 (= c!978924 (is-EmptyExpr!15574 (regOne!31661 r!7292)))))

(declare-fun e!3447444 () Bool)

(assert (=> d!1766027 (= (matchRSpec!2677 (regOne!31661 r!7292) s!2326) e!3447444)))

(declare-fun bm!418283 () Bool)

(declare-fun c!978925 () Bool)

(declare-fun call!418288 () Bool)

(assert (=> bm!418283 (= call!418288 (Exists!2674 (ite c!978925 lambda!299848 lambda!299849)))))

(declare-fun b!5587750 () Bool)

(declare-fun e!3447438 () Bool)

(assert (=> b!5587750 (= e!3447444 e!3447438)))

(declare-fun res!2370950 () Bool)

(assert (=> b!5587750 (= res!2370950 (not (is-EmptyLang!15574 (regOne!31661 r!7292))))))

(assert (=> b!5587750 (=> (not res!2370950) (not e!3447438))))

(declare-fun b!5587751 () Bool)

(declare-fun e!3447442 () Bool)

(declare-fun e!3447443 () Bool)

(assert (=> b!5587751 (= e!3447442 e!3447443)))

(declare-fun res!2370952 () Bool)

(assert (=> b!5587751 (= res!2370952 (matchRSpec!2677 (regOne!31661 (regOne!31661 r!7292)) s!2326))))

(assert (=> b!5587751 (=> res!2370952 e!3447443)))

(declare-fun b!5587752 () Bool)

(declare-fun c!978923 () Bool)

(assert (=> b!5587752 (= c!978923 (is-Union!15574 (regOne!31661 r!7292)))))

(declare-fun e!3447439 () Bool)

(assert (=> b!5587752 (= e!3447439 e!3447442)))

(declare-fun b!5587753 () Bool)

(declare-fun call!418289 () Bool)

(assert (=> b!5587753 (= e!3447444 call!418289)))

(declare-fun b!5587754 () Bool)

(declare-fun c!978922 () Bool)

(assert (=> b!5587754 (= c!978922 (is-ElementMatch!15574 (regOne!31661 r!7292)))))

(assert (=> b!5587754 (= e!3447438 e!3447439)))

(declare-fun e!3447441 () Bool)

(assert (=> b!5587755 (= e!3447441 call!418288)))

(declare-fun b!5587756 () Bool)

(declare-fun res!2370951 () Bool)

(assert (=> b!5587756 (=> res!2370951 e!3447441)))

(assert (=> b!5587756 (= res!2370951 call!418289)))

(declare-fun e!3447440 () Bool)

(assert (=> b!5587756 (= e!3447440 e!3447441)))

(declare-fun b!5587757 () Bool)

(assert (=> b!5587757 (= e!3447443 (matchRSpec!2677 (regTwo!31661 (regOne!31661 r!7292)) s!2326))))

(declare-fun b!5587758 () Bool)

(assert (=> b!5587758 (= e!3447439 (= s!2326 (Cons!62897 (c!978676 (regOne!31661 r!7292)) Nil!62897)))))

(declare-fun b!5587759 () Bool)

(assert (=> b!5587759 (= e!3447442 e!3447440)))

(assert (=> b!5587759 (= c!978925 (is-Star!15574 (regOne!31661 r!7292)))))

(assert (=> b!5587760 (= e!3447440 call!418288)))

(declare-fun bm!418284 () Bool)

(assert (=> bm!418284 (= call!418289 (isEmpty!34716 s!2326))))

(assert (= (and d!1766027 c!978924) b!5587753))

(assert (= (and d!1766027 (not c!978924)) b!5587750))

(assert (= (and b!5587750 res!2370950) b!5587754))

(assert (= (and b!5587754 c!978922) b!5587758))

(assert (= (and b!5587754 (not c!978922)) b!5587752))

(assert (= (and b!5587752 c!978923) b!5587751))

(assert (= (and b!5587752 (not c!978923)) b!5587759))

(assert (= (and b!5587751 (not res!2370952)) b!5587757))

(assert (= (and b!5587759 c!978925) b!5587756))

(assert (= (and b!5587759 (not c!978925)) b!5587760))

(assert (= (and b!5587756 (not res!2370951)) b!5587755))

(assert (= (or b!5587755 b!5587760) bm!418283))

(assert (= (or b!5587753 b!5587756) bm!418284))

(declare-fun m!6568298 () Bool)

(assert (=> bm!418283 m!6568298))

(declare-fun m!6568300 () Bool)

(assert (=> b!5587751 m!6568300))

(declare-fun m!6568302 () Bool)

(assert (=> b!5587757 m!6568302))

(assert (=> bm!418284 m!6567828))

(assert (=> b!5587076 d!1766027))

(declare-fun b!5587761 () Bool)

(declare-fun e!3447449 () Bool)

(declare-fun call!418290 () Bool)

(assert (=> b!5587761 (= e!3447449 call!418290)))

(declare-fun b!5587762 () Bool)

(declare-fun e!3447448 () Bool)

(declare-fun e!3447447 () Bool)

(assert (=> b!5587762 (= e!3447448 e!3447447)))

(declare-fun res!2370954 () Bool)

(assert (=> b!5587762 (= res!2370954 (not (nullable!5606 (reg!15903 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))))

(assert (=> b!5587762 (=> (not res!2370954) (not e!3447447))))

(declare-fun bm!418285 () Bool)

(declare-fun c!978927 () Bool)

(assert (=> bm!418285 (= call!418290 (validRegex!7310 (ite c!978927 (regTwo!31661 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))) (regTwo!31660 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))))

(declare-fun b!5587763 () Bool)

(declare-fun e!3447451 () Bool)

(declare-fun e!3447445 () Bool)

(assert (=> b!5587763 (= e!3447451 e!3447445)))

(declare-fun res!2370957 () Bool)

(assert (=> b!5587763 (=> (not res!2370957) (not e!3447445))))

(declare-fun call!418291 () Bool)

(assert (=> b!5587763 (= res!2370957 call!418291)))

(declare-fun b!5587764 () Bool)

(declare-fun call!418292 () Bool)

(assert (=> b!5587764 (= e!3447447 call!418292)))

(declare-fun d!1766029 () Bool)

(declare-fun res!2370956 () Bool)

(declare-fun e!3447450 () Bool)

(assert (=> d!1766029 (=> res!2370956 e!3447450)))

(assert (=> d!1766029 (= res!2370956 (is-ElementMatch!15574 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))

(assert (=> d!1766029 (= (validRegex!7310 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))) e!3447450)))

(declare-fun b!5587765 () Bool)

(declare-fun res!2370953 () Bool)

(assert (=> b!5587765 (=> (not res!2370953) (not e!3447449))))

(assert (=> b!5587765 (= res!2370953 call!418291)))

(declare-fun e!3447446 () Bool)

(assert (=> b!5587765 (= e!3447446 e!3447449)))

(declare-fun bm!418286 () Bool)

(assert (=> bm!418286 (= call!418291 call!418292)))

(declare-fun b!5587766 () Bool)

(assert (=> b!5587766 (= e!3447450 e!3447448)))

(declare-fun c!978926 () Bool)

(assert (=> b!5587766 (= c!978926 (is-Star!15574 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))

(declare-fun b!5587767 () Bool)

(declare-fun res!2370955 () Bool)

(assert (=> b!5587767 (=> res!2370955 e!3447451)))

(assert (=> b!5587767 (= res!2370955 (not (is-Concat!24419 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292))))))))

(assert (=> b!5587767 (= e!3447446 e!3447451)))

(declare-fun bm!418287 () Bool)

(assert (=> bm!418287 (= call!418292 (validRegex!7310 (ite c!978926 (reg!15903 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))) (ite c!978927 (regOne!31661 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))) (regOne!31660 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292))))))))))

(declare-fun b!5587768 () Bool)

(assert (=> b!5587768 (= e!3447448 e!3447446)))

(assert (=> b!5587768 (= c!978927 (is-Union!15574 (ite c!978771 (reg!15903 r!7292) (ite c!978772 (regOne!31661 r!7292) (regOne!31660 r!7292)))))))

(declare-fun b!5587769 () Bool)

(assert (=> b!5587769 (= e!3447445 call!418290)))

(assert (= (and d!1766029 (not res!2370956)) b!5587766))

(assert (= (and b!5587766 c!978926) b!5587762))

(assert (= (and b!5587766 (not c!978926)) b!5587768))

(assert (= (and b!5587762 res!2370954) b!5587764))

(assert (= (and b!5587768 c!978927) b!5587765))

(assert (= (and b!5587768 (not c!978927)) b!5587767))

(assert (= (and b!5587765 res!2370953) b!5587761))

(assert (= (and b!5587767 (not res!2370955)) b!5587763))

(assert (= (and b!5587763 res!2370957) b!5587769))

(assert (= (or b!5587761 b!5587769) bm!418285))

(assert (= (or b!5587765 b!5587763) bm!418286))

(assert (= (or b!5587764 bm!418286) bm!418287))

(declare-fun m!6568304 () Bool)

(assert (=> b!5587762 m!6568304))

(declare-fun m!6568306 () Bool)

(assert (=> bm!418285 m!6568306))

(declare-fun m!6568308 () Bool)

(assert (=> bm!418287 m!6568308))

(assert (=> bm!418202 d!1766029))

(declare-fun d!1766031 () Bool)

(declare-fun c!978930 () Bool)

(assert (=> d!1766031 (= c!978930 (is-Nil!62899 lt!2254929))))

(declare-fun e!3447454 () (Set Context!9916))

(assert (=> d!1766031 (= (content!11344 lt!2254929) e!3447454)))

(declare-fun b!5587774 () Bool)

(assert (=> b!5587774 (= e!3447454 (as set.empty (Set Context!9916)))))

(declare-fun b!5587775 () Bool)

(assert (=> b!5587775 (= e!3447454 (set.union (set.insert (h!69347 lt!2254929) (as set.empty (Set Context!9916))) (content!11344 (t!376298 lt!2254929))))))

(assert (= (and d!1766031 c!978930) b!5587774))

(assert (= (and d!1766031 (not c!978930)) b!5587775))

(declare-fun m!6568310 () Bool)

(assert (=> b!5587775 m!6568310))

(declare-fun m!6568312 () Bool)

(assert (=> b!5587775 m!6568312))

(assert (=> b!5587035 d!1766031))

(declare-fun b!5587776 () Bool)

(declare-fun e!3447459 () Bool)

(declare-fun call!418293 () Bool)

(assert (=> b!5587776 (= e!3447459 call!418293)))

(declare-fun b!5587777 () Bool)

(declare-fun e!3447458 () Bool)

(declare-fun e!3447457 () Bool)

(assert (=> b!5587777 (= e!3447458 e!3447457)))

(declare-fun res!2370959 () Bool)

(assert (=> b!5587777 (= res!2370959 (not (nullable!5606 (reg!15903 lt!2254923))))))

(assert (=> b!5587777 (=> (not res!2370959) (not e!3447457))))

(declare-fun bm!418288 () Bool)

(declare-fun c!978932 () Bool)

(assert (=> bm!418288 (= call!418293 (validRegex!7310 (ite c!978932 (regTwo!31661 lt!2254923) (regTwo!31660 lt!2254923))))))

(declare-fun b!5587778 () Bool)

(declare-fun e!3447461 () Bool)

(declare-fun e!3447455 () Bool)

(assert (=> b!5587778 (= e!3447461 e!3447455)))

(declare-fun res!2370962 () Bool)

(assert (=> b!5587778 (=> (not res!2370962) (not e!3447455))))

(declare-fun call!418294 () Bool)

(assert (=> b!5587778 (= res!2370962 call!418294)))

(declare-fun b!5587779 () Bool)

(declare-fun call!418295 () Bool)

(assert (=> b!5587779 (= e!3447457 call!418295)))

(declare-fun d!1766033 () Bool)

(declare-fun res!2370961 () Bool)

(declare-fun e!3447460 () Bool)

(assert (=> d!1766033 (=> res!2370961 e!3447460)))

(assert (=> d!1766033 (= res!2370961 (is-ElementMatch!15574 lt!2254923))))

(assert (=> d!1766033 (= (validRegex!7310 lt!2254923) e!3447460)))

(declare-fun b!5587780 () Bool)

(declare-fun res!2370958 () Bool)

(assert (=> b!5587780 (=> (not res!2370958) (not e!3447459))))

(assert (=> b!5587780 (= res!2370958 call!418294)))

(declare-fun e!3447456 () Bool)

(assert (=> b!5587780 (= e!3447456 e!3447459)))

(declare-fun bm!418289 () Bool)

(assert (=> bm!418289 (= call!418294 call!418295)))

(declare-fun b!5587781 () Bool)

(assert (=> b!5587781 (= e!3447460 e!3447458)))

(declare-fun c!978931 () Bool)

(assert (=> b!5587781 (= c!978931 (is-Star!15574 lt!2254923))))

(declare-fun b!5587782 () Bool)

(declare-fun res!2370960 () Bool)

(assert (=> b!5587782 (=> res!2370960 e!3447461)))

(assert (=> b!5587782 (= res!2370960 (not (is-Concat!24419 lt!2254923)))))

(assert (=> b!5587782 (= e!3447456 e!3447461)))

(declare-fun bm!418290 () Bool)

(assert (=> bm!418290 (= call!418295 (validRegex!7310 (ite c!978931 (reg!15903 lt!2254923) (ite c!978932 (regOne!31661 lt!2254923) (regOne!31660 lt!2254923)))))))

(declare-fun b!5587783 () Bool)

(assert (=> b!5587783 (= e!3447458 e!3447456)))

(assert (=> b!5587783 (= c!978932 (is-Union!15574 lt!2254923))))

(declare-fun b!5587784 () Bool)

(assert (=> b!5587784 (= e!3447455 call!418293)))

(assert (= (and d!1766033 (not res!2370961)) b!5587781))

(assert (= (and b!5587781 c!978931) b!5587777))

(assert (= (and b!5587781 (not c!978931)) b!5587783))

(assert (= (and b!5587777 res!2370959) b!5587779))

(assert (= (and b!5587783 c!978932) b!5587780))

(assert (= (and b!5587783 (not c!978932)) b!5587782))

(assert (= (and b!5587780 res!2370958) b!5587776))

(assert (= (and b!5587782 (not res!2370960)) b!5587778))

(assert (= (and b!5587778 res!2370962) b!5587784))

(assert (= (or b!5587776 b!5587784) bm!418288))

(assert (= (or b!5587780 b!5587778) bm!418289))

(assert (= (or b!5587779 bm!418289) bm!418290))

(declare-fun m!6568314 () Bool)

(assert (=> b!5587777 m!6568314))

(declare-fun m!6568316 () Bool)

(assert (=> bm!418288 m!6568316))

(declare-fun m!6568318 () Bool)

(assert (=> bm!418290 m!6568318))

(assert (=> d!1765825 d!1766033))

(declare-fun d!1766035 () Bool)

(declare-fun res!2370967 () Bool)

(declare-fun e!3447466 () Bool)

(assert (=> d!1766035 (=> res!2370967 e!3447466)))

(assert (=> d!1766035 (= res!2370967 (is-Nil!62898 (unfocusZipperList!1002 zl!343)))))

(assert (=> d!1766035 (= (forall!14740 (unfocusZipperList!1002 zl!343) lambda!299793) e!3447466)))

(declare-fun b!5587789 () Bool)

(declare-fun e!3447467 () Bool)

(assert (=> b!5587789 (= e!3447466 e!3447467)))

(declare-fun res!2370968 () Bool)

(assert (=> b!5587789 (=> (not res!2370968) (not e!3447467))))

(declare-fun dynLambda!24599 (Int Regex!15574) Bool)

(assert (=> b!5587789 (= res!2370968 (dynLambda!24599 lambda!299793 (h!69346 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587790 () Bool)

(assert (=> b!5587790 (= e!3447467 (forall!14740 (t!376297 (unfocusZipperList!1002 zl!343)) lambda!299793))))

(assert (= (and d!1766035 (not res!2370967)) b!5587789))

(assert (= (and b!5587789 res!2370968) b!5587790))

(declare-fun b_lambda!211731 () Bool)

(assert (=> (not b_lambda!211731) (not b!5587789)))

(declare-fun m!6568320 () Bool)

(assert (=> b!5587789 m!6568320))

(declare-fun m!6568322 () Bool)

(assert (=> b!5587790 m!6568322))

(assert (=> d!1765825 d!1766035))

(declare-fun bm!418291 () Bool)

(declare-fun call!418297 () (Set Context!9916))

(declare-fun call!418298 () (Set Context!9916))

(assert (=> bm!418291 (= call!418297 call!418298)))

(declare-fun b!5587791 () Bool)

(declare-fun e!3447472 () (Set Context!9916))

(declare-fun call!418300 () (Set Context!9916))

(assert (=> b!5587791 (= e!3447472 (set.union call!418300 call!418297))))

(declare-fun c!978935 () Bool)

(declare-fun call!418301 () List!63022)

(declare-fun bm!418292 () Bool)

(assert (=> bm!418292 (= call!418300 (derivationStepZipperDown!916 (ite c!978935 (regOne!31661 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (regOne!31660 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))))) (ite c!978935 (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185)) (Context!9917 call!418301)) (h!69345 s!2326)))))

(declare-fun bm!418293 () Bool)

(declare-fun call!418296 () (Set Context!9916))

(assert (=> bm!418293 (= call!418296 call!418297)))

(declare-fun c!978936 () Bool)

(declare-fun d!1766037 () Bool)

(assert (=> d!1766037 (= c!978936 (and (is-ElementMatch!15574 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (= (c!978676 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326))))))

(declare-fun e!3447468 () (Set Context!9916))

(assert (=> d!1766037 (= (derivationStepZipperDown!916 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))) (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185)) (h!69345 s!2326)) e!3447468)))

(declare-fun b!5587792 () Bool)

(declare-fun e!3447470 () (Set Context!9916))

(assert (=> b!5587792 (= e!3447468 e!3447470)))

(assert (=> b!5587792 (= c!978935 (is-Union!15574 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun bm!418294 () Bool)

(declare-fun call!418299 () List!63022)

(declare-fun c!978933 () Bool)

(declare-fun c!978937 () Bool)

(assert (=> bm!418294 (= call!418298 (derivationStepZipperDown!916 (ite c!978935 (regTwo!31661 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (ite c!978933 (regTwo!31660 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (ite c!978937 (regOne!31660 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (reg!15903 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))))))) (ite (or c!978935 c!978933) (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185)) (Context!9917 call!418299)) (h!69345 s!2326)))))

(declare-fun b!5587793 () Bool)

(declare-fun e!3447469 () Bool)

(assert (=> b!5587793 (= c!978933 e!3447469)))

(declare-fun res!2370969 () Bool)

(assert (=> b!5587793 (=> (not res!2370969) (not e!3447469))))

(assert (=> b!5587793 (= res!2370969 (is-Concat!24419 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))))

(assert (=> b!5587793 (= e!3447470 e!3447472)))

(declare-fun b!5587794 () Bool)

(declare-fun e!3447471 () (Set Context!9916))

(assert (=> b!5587794 (= e!3447471 call!418296)))

(declare-fun b!5587795 () Bool)

(assert (=> b!5587795 (= e!3447472 e!3447471)))

(assert (=> b!5587795 (= c!978937 (is-Concat!24419 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun b!5587796 () Bool)

(assert (=> b!5587796 (= e!3447469 (nullable!5606 (regOne!31660 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))))))))

(declare-fun b!5587797 () Bool)

(assert (=> b!5587797 (= e!3447468 (set.insert (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185)) (as set.empty (Set Context!9916))))))

(declare-fun b!5587798 () Bool)

(declare-fun e!3447473 () (Set Context!9916))

(assert (=> b!5587798 (= e!3447473 call!418296)))

(declare-fun b!5587799 () Bool)

(assert (=> b!5587799 (= e!3447470 (set.union call!418300 call!418298))))

(declare-fun b!5587800 () Bool)

(declare-fun c!978934 () Bool)

(assert (=> b!5587800 (= c!978934 (is-Star!15574 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))))

(assert (=> b!5587800 (= e!3447471 e!3447473)))

(declare-fun bm!418295 () Bool)

(assert (=> bm!418295 (= call!418301 ($colon$colon!1637 (exprs!5458 (ite (or c!978713 c!978711) lt!2254824 (Context!9917 call!418185))) (ite (or c!978933 c!978937) (regTwo!31660 (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343)))))))) (ite c!978713 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978711 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!978715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))))))))

(declare-fun bm!418296 () Bool)

(assert (=> bm!418296 (= call!418299 call!418301)))

(declare-fun b!5587801 () Bool)

(assert (=> b!5587801 (= e!3447473 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766037 c!978936) b!5587797))

(assert (= (and d!1766037 (not c!978936)) b!5587792))

(assert (= (and b!5587792 c!978935) b!5587799))

(assert (= (and b!5587792 (not c!978935)) b!5587793))

(assert (= (and b!5587793 res!2370969) b!5587796))

(assert (= (and b!5587793 c!978933) b!5587791))

(assert (= (and b!5587793 (not c!978933)) b!5587795))

(assert (= (and b!5587795 c!978937) b!5587794))

(assert (= (and b!5587795 (not c!978937)) b!5587800))

(assert (= (and b!5587800 c!978934) b!5587798))

(assert (= (and b!5587800 (not c!978934)) b!5587801))

(assert (= (or b!5587794 b!5587798) bm!418296))

(assert (= (or b!5587794 b!5587798) bm!418293))

(assert (= (or b!5587791 bm!418296) bm!418295))

(assert (= (or b!5587791 bm!418293) bm!418291))

(assert (= (or b!5587799 bm!418291) bm!418294))

(assert (= (or b!5587799 b!5587791) bm!418292))

(declare-fun m!6568324 () Bool)

(assert (=> bm!418295 m!6568324))

(declare-fun m!6568326 () Bool)

(assert (=> bm!418294 m!6568326))

(declare-fun m!6568328 () Bool)

(assert (=> b!5587797 m!6568328))

(declare-fun m!6568330 () Bool)

(assert (=> bm!418292 m!6568330))

(declare-fun m!6568332 () Bool)

(assert (=> b!5587796 m!6568332))

(assert (=> bm!418180 d!1766037))

(assert (=> d!1765839 d!1766013))

(declare-fun d!1766039 () Bool)

(assert (=> d!1766039 (= ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978780 c!978784) (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (regOne!31661 (regOne!31660 r!7292)))) (Cons!62898 (ite (or c!978780 c!978784) (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (regOne!31661 (regOne!31660 r!7292))) (exprs!5458 lt!2254824)))))

(assert (=> bm!418213 d!1766039))

(assert (=> bs!1292044 d!1765869))

(declare-fun d!1766041 () Bool)

(assert (=> d!1766041 (= (Exists!2674 lambda!299813) (choose!42362 lambda!299813))))

(declare-fun bs!1292105 () Bool)

(assert (= bs!1292105 d!1766041))

(declare-fun m!6568334 () Bool)

(assert (=> bs!1292105 m!6568334))

(assert (=> d!1765855 d!1766041))

(declare-fun d!1766043 () Bool)

(assert (=> d!1766043 (= (Exists!2674 lambda!299814) (choose!42362 lambda!299814))))

(declare-fun bs!1292106 () Bool)

(assert (= bs!1292106 d!1766043))

(declare-fun m!6568336 () Bool)

(assert (=> bs!1292106 m!6568336))

(assert (=> d!1765855 d!1766043))

(declare-fun bs!1292107 () Bool)

(declare-fun d!1766045 () Bool)

(assert (= bs!1292107 (and d!1766045 b!5587755)))

(declare-fun lambda!299854 () Int)

(assert (=> bs!1292107 (not (= lambda!299854 lambda!299848))))

(declare-fun bs!1292108 () Bool)

(assert (= bs!1292108 (and d!1766045 d!1765853)))

(assert (=> bs!1292108 (= lambda!299854 lambda!299808)))

(declare-fun bs!1292109 () Bool)

(assert (= bs!1292109 (and d!1766045 d!1765855)))

(assert (=> bs!1292109 (not (= lambda!299854 lambda!299814))))

(declare-fun bs!1292110 () Bool)

(assert (= bs!1292110 (and d!1766045 b!5587080)))

(assert (=> bs!1292110 (not (= lambda!299854 lambda!299804))))

(assert (=> bs!1292109 (= lambda!299854 lambda!299813)))

(declare-fun bs!1292111 () Bool)

(assert (= bs!1292111 (and d!1766045 b!5586785)))

(assert (=> bs!1292111 (= lambda!299854 lambda!299773)))

(declare-fun bs!1292112 () Bool)

(assert (= bs!1292112 (and d!1766045 b!5587085)))

(assert (=> bs!1292112 (not (= lambda!299854 lambda!299805))))

(declare-fun bs!1292113 () Bool)

(assert (= bs!1292113 (and d!1766045 b!5587760)))

(assert (=> bs!1292113 (not (= lambda!299854 lambda!299849))))

(assert (=> bs!1292111 (not (= lambda!299854 lambda!299774))))

(assert (=> d!1766045 true))

(assert (=> d!1766045 true))

(assert (=> d!1766045 true))

(declare-fun lambda!299855 () Int)

(assert (=> bs!1292107 (not (= lambda!299855 lambda!299848))))

(assert (=> bs!1292108 (not (= lambda!299855 lambda!299808))))

(assert (=> bs!1292109 (= lambda!299855 lambda!299814)))

(assert (=> bs!1292109 (not (= lambda!299855 lambda!299813))))

(assert (=> bs!1292111 (not (= lambda!299855 lambda!299773))))

(assert (=> bs!1292112 (= lambda!299855 lambda!299805)))

(assert (=> bs!1292110 (not (= lambda!299855 lambda!299804))))

(declare-fun bs!1292114 () Bool)

(assert (= bs!1292114 d!1766045))

(assert (=> bs!1292114 (not (= lambda!299855 lambda!299854))))

(assert (=> bs!1292113 (= (and (= (regOne!31660 r!7292) (regOne!31660 (regOne!31661 r!7292))) (= (regTwo!31660 r!7292) (regTwo!31660 (regOne!31661 r!7292)))) (= lambda!299855 lambda!299849))))

(assert (=> bs!1292111 (= lambda!299855 lambda!299774)))

(assert (=> d!1766045 true))

(assert (=> d!1766045 true))

(assert (=> d!1766045 true))

(assert (=> d!1766045 (= (Exists!2674 lambda!299854) (Exists!2674 lambda!299855))))

(assert (=> d!1766045 true))

(declare-fun _$90!1313 () Unit!155688)

(assert (=> d!1766045 (= (choose!42364 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326) _$90!1313)))

(declare-fun m!6568338 () Bool)

(assert (=> bs!1292114 m!6568338))

(declare-fun m!6568340 () Bool)

(assert (=> bs!1292114 m!6568340))

(assert (=> d!1765855 d!1766045))

(declare-fun b!5587810 () Bool)

(declare-fun e!3447482 () Bool)

(declare-fun call!418302 () Bool)

(assert (=> b!5587810 (= e!3447482 call!418302)))

(declare-fun b!5587811 () Bool)

(declare-fun e!3447481 () Bool)

(declare-fun e!3447480 () Bool)

(assert (=> b!5587811 (= e!3447481 e!3447480)))

(declare-fun res!2370979 () Bool)

(assert (=> b!5587811 (= res!2370979 (not (nullable!5606 (reg!15903 (regOne!31660 r!7292)))))))

(assert (=> b!5587811 (=> (not res!2370979) (not e!3447480))))

(declare-fun bm!418297 () Bool)

(declare-fun c!978939 () Bool)

(assert (=> bm!418297 (= call!418302 (validRegex!7310 (ite c!978939 (regTwo!31661 (regOne!31660 r!7292)) (regTwo!31660 (regOne!31660 r!7292)))))))

(declare-fun b!5587812 () Bool)

(declare-fun e!3447484 () Bool)

(declare-fun e!3447478 () Bool)

(assert (=> b!5587812 (= e!3447484 e!3447478)))

(declare-fun res!2370982 () Bool)

(assert (=> b!5587812 (=> (not res!2370982) (not e!3447478))))

(declare-fun call!418303 () Bool)

(assert (=> b!5587812 (= res!2370982 call!418303)))

(declare-fun b!5587813 () Bool)

(declare-fun call!418304 () Bool)

(assert (=> b!5587813 (= e!3447480 call!418304)))

(declare-fun d!1766047 () Bool)

(declare-fun res!2370981 () Bool)

(declare-fun e!3447483 () Bool)

(assert (=> d!1766047 (=> res!2370981 e!3447483)))

(assert (=> d!1766047 (= res!2370981 (is-ElementMatch!15574 (regOne!31660 r!7292)))))

(assert (=> d!1766047 (= (validRegex!7310 (regOne!31660 r!7292)) e!3447483)))

(declare-fun b!5587814 () Bool)

(declare-fun res!2370978 () Bool)

(assert (=> b!5587814 (=> (not res!2370978) (not e!3447482))))

(assert (=> b!5587814 (= res!2370978 call!418303)))

(declare-fun e!3447479 () Bool)

(assert (=> b!5587814 (= e!3447479 e!3447482)))

(declare-fun bm!418298 () Bool)

(assert (=> bm!418298 (= call!418303 call!418304)))

(declare-fun b!5587815 () Bool)

(assert (=> b!5587815 (= e!3447483 e!3447481)))

(declare-fun c!978938 () Bool)

(assert (=> b!5587815 (= c!978938 (is-Star!15574 (regOne!31660 r!7292)))))

(declare-fun b!5587816 () Bool)

(declare-fun res!2370980 () Bool)

(assert (=> b!5587816 (=> res!2370980 e!3447484)))

(assert (=> b!5587816 (= res!2370980 (not (is-Concat!24419 (regOne!31660 r!7292))))))

(assert (=> b!5587816 (= e!3447479 e!3447484)))

(declare-fun bm!418299 () Bool)

(assert (=> bm!418299 (= call!418304 (validRegex!7310 (ite c!978938 (reg!15903 (regOne!31660 r!7292)) (ite c!978939 (regOne!31661 (regOne!31660 r!7292)) (regOne!31660 (regOne!31660 r!7292))))))))

(declare-fun b!5587817 () Bool)

(assert (=> b!5587817 (= e!3447481 e!3447479)))

(assert (=> b!5587817 (= c!978939 (is-Union!15574 (regOne!31660 r!7292)))))

(declare-fun b!5587818 () Bool)

(assert (=> b!5587818 (= e!3447478 call!418302)))

(assert (= (and d!1766047 (not res!2370981)) b!5587815))

(assert (= (and b!5587815 c!978938) b!5587811))

(assert (= (and b!5587815 (not c!978938)) b!5587817))

(assert (= (and b!5587811 res!2370979) b!5587813))

(assert (= (and b!5587817 c!978939) b!5587814))

(assert (= (and b!5587817 (not c!978939)) b!5587816))

(assert (= (and b!5587814 res!2370978) b!5587810))

(assert (= (and b!5587816 (not res!2370980)) b!5587812))

(assert (= (and b!5587812 res!2370982) b!5587818))

(assert (= (or b!5587810 b!5587818) bm!418297))

(assert (= (or b!5587814 b!5587812) bm!418298))

(assert (= (or b!5587813 bm!418298) bm!418299))

(declare-fun m!6568342 () Bool)

(assert (=> b!5587811 m!6568342))

(declare-fun m!6568344 () Bool)

(assert (=> bm!418297 m!6568344))

(declare-fun m!6568346 () Bool)

(assert (=> bm!418299 m!6568346))

(assert (=> d!1765855 d!1766047))

(declare-fun d!1766049 () Bool)

(assert (=> d!1766049 (= (head!11918 s!2326) (h!69345 s!2326))))

(assert (=> b!5587115 d!1766049))

(declare-fun d!1766051 () Bool)

(declare-fun res!2370983 () Bool)

(declare-fun e!3447485 () Bool)

(assert (=> d!1766051 (=> res!2370983 e!3447485)))

(assert (=> d!1766051 (= res!2370983 (is-Nil!62898 (exprs!5458 (h!69347 zl!343))))))

(assert (=> d!1766051 (= (forall!14740 (exprs!5458 (h!69347 zl!343)) lambda!299799) e!3447485)))

(declare-fun b!5587819 () Bool)

(declare-fun e!3447486 () Bool)

(assert (=> b!5587819 (= e!3447485 e!3447486)))

(declare-fun res!2370984 () Bool)

(assert (=> b!5587819 (=> (not res!2370984) (not e!3447486))))

(assert (=> b!5587819 (= res!2370984 (dynLambda!24599 lambda!299799 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5587820 () Bool)

(assert (=> b!5587820 (= e!3447486 (forall!14740 (t!376297 (exprs!5458 (h!69347 zl!343))) lambda!299799))))

(assert (= (and d!1766051 (not res!2370983)) b!5587819))

(assert (= (and b!5587819 res!2370984) b!5587820))

(declare-fun b_lambda!211733 () Bool)

(assert (=> (not b_lambda!211733) (not b!5587819)))

(declare-fun m!6568348 () Bool)

(assert (=> b!5587819 m!6568348))

(declare-fun m!6568350 () Bool)

(assert (=> b!5587820 m!6568350))

(assert (=> d!1765831 d!1766051))

(declare-fun d!1766053 () Bool)

(assert (=> d!1766053 (= (nullable!5606 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))) (nullableFct!1715 (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))))

(declare-fun bs!1292115 () Bool)

(assert (= bs!1292115 d!1766053))

(declare-fun m!6568352 () Bool)

(assert (=> bs!1292115 m!6568352))

(assert (=> b!5587214 d!1766053))

(declare-fun d!1766055 () Bool)

(declare-fun c!978940 () Bool)

(assert (=> d!1766055 (= c!978940 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447487 () Bool)

(assert (=> d!1766055 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254821 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447487)))

(declare-fun b!5587821 () Bool)

(assert (=> b!5587821 (= e!3447487 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254821 (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5587822 () Bool)

(assert (=> b!5587822 (= e!3447487 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254821 (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766055 c!978940) b!5587821))

(assert (= (and d!1766055 (not c!978940)) b!5587822))

(assert (=> d!1766055 m!6567796))

(declare-fun m!6568354 () Bool)

(assert (=> d!1766055 m!6568354))

(assert (=> b!5587821 m!6567812))

(declare-fun m!6568356 () Bool)

(assert (=> b!5587821 m!6568356))

(assert (=> b!5587822 m!6567796))

(declare-fun m!6568358 () Bool)

(assert (=> b!5587822 m!6568358))

(assert (=> b!5587822 m!6567812))

(assert (=> b!5587822 m!6568358))

(declare-fun m!6568360 () Bool)

(assert (=> b!5587822 m!6568360))

(assert (=> b!5587822 m!6567796))

(declare-fun m!6568362 () Bool)

(assert (=> b!5587822 m!6568362))

(assert (=> b!5587822 m!6568360))

(assert (=> b!5587822 m!6568362))

(declare-fun m!6568364 () Bool)

(assert (=> b!5587822 m!6568364))

(assert (=> b!5587040 d!1766055))

(declare-fun bs!1292116 () Bool)

(declare-fun d!1766057 () Bool)

(assert (= bs!1292116 (and d!1766057 b!5586782)))

(declare-fun lambda!299858 () Int)

(assert (=> bs!1292116 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299858 lambda!299775))))

(assert (=> d!1766057 true))

(assert (=> d!1766057 (= (derivationStepZipper!1673 lt!2254821 (head!11918 (t!376296 s!2326))) (flatMap!1187 lt!2254821 lambda!299858))))

(declare-fun bs!1292117 () Bool)

(assert (= bs!1292117 d!1766057))

(declare-fun m!6568366 () Bool)

(assert (=> bs!1292117 m!6568366))

(assert (=> b!5587040 d!1766057))

(declare-fun d!1766059 () Bool)

(assert (=> d!1766059 (= (head!11918 (t!376296 s!2326)) (h!69345 (t!376296 s!2326)))))

(assert (=> b!5587040 d!1766059))

(declare-fun d!1766061 () Bool)

(assert (=> d!1766061 (= (tail!11013 (t!376296 s!2326)) (t!376296 (t!376296 s!2326)))))

(assert (=> b!5587040 d!1766061))

(declare-fun d!1766063 () Bool)

(declare-fun res!2370997 () Bool)

(declare-fun e!3447502 () Bool)

(assert (=> d!1766063 (=> res!2370997 e!3447502)))

(assert (=> d!1766063 (= res!2370997 (is-EmptyExpr!15574 (regTwo!31661 (regOne!31660 r!7292))))))

(assert (=> d!1766063 (= (nullableFct!1715 (regTwo!31661 (regOne!31660 r!7292))) e!3447502)))

(declare-fun b!5587839 () Bool)

(declare-fun e!3447500 () Bool)

(declare-fun e!3447501 () Bool)

(assert (=> b!5587839 (= e!3447500 e!3447501)))

(declare-fun res!2370995 () Bool)

(declare-fun call!418310 () Bool)

(assert (=> b!5587839 (= res!2370995 call!418310)))

(assert (=> b!5587839 (=> (not res!2370995) (not e!3447501))))

(declare-fun b!5587840 () Bool)

(declare-fun call!418309 () Bool)

(assert (=> b!5587840 (= e!3447501 call!418309)))

(declare-fun b!5587841 () Bool)

(declare-fun e!3447504 () Bool)

(assert (=> b!5587841 (= e!3447502 e!3447504)))

(declare-fun res!2370999 () Bool)

(assert (=> b!5587841 (=> (not res!2370999) (not e!3447504))))

(assert (=> b!5587841 (= res!2370999 (and (not (is-EmptyLang!15574 (regTwo!31661 (regOne!31660 r!7292)))) (not (is-ElementMatch!15574 (regTwo!31661 (regOne!31660 r!7292))))))))

(declare-fun b!5587842 () Bool)

(declare-fun e!3447503 () Bool)

(assert (=> b!5587842 (= e!3447500 e!3447503)))

(declare-fun res!2370998 () Bool)

(assert (=> b!5587842 (= res!2370998 call!418310)))

(assert (=> b!5587842 (=> res!2370998 e!3447503)))

(declare-fun b!5587843 () Bool)

(declare-fun e!3447505 () Bool)

(assert (=> b!5587843 (= e!3447504 e!3447505)))

(declare-fun res!2370996 () Bool)

(assert (=> b!5587843 (=> res!2370996 e!3447505)))

(assert (=> b!5587843 (= res!2370996 (is-Star!15574 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun b!5587844 () Bool)

(assert (=> b!5587844 (= e!3447503 call!418309)))

(declare-fun b!5587845 () Bool)

(assert (=> b!5587845 (= e!3447505 e!3447500)))

(declare-fun c!978945 () Bool)

(assert (=> b!5587845 (= c!978945 (is-Union!15574 (regTwo!31661 (regOne!31660 r!7292))))))

(declare-fun bm!418304 () Bool)

(assert (=> bm!418304 (= call!418310 (nullable!5606 (ite c!978945 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(declare-fun bm!418305 () Bool)

(assert (=> bm!418305 (= call!418309 (nullable!5606 (ite c!978945 (regTwo!31661 (regTwo!31661 (regOne!31660 r!7292))) (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(assert (= (and d!1766063 (not res!2370997)) b!5587841))

(assert (= (and b!5587841 res!2370999) b!5587843))

(assert (= (and b!5587843 (not res!2370996)) b!5587845))

(assert (= (and b!5587845 c!978945) b!5587842))

(assert (= (and b!5587845 (not c!978945)) b!5587839))

(assert (= (and b!5587842 (not res!2370998)) b!5587844))

(assert (= (and b!5587839 res!2370995) b!5587840))

(assert (= (or b!5587844 b!5587840) bm!418305))

(assert (= (or b!5587842 b!5587839) bm!418304))

(declare-fun m!6568368 () Bool)

(assert (=> bm!418304 m!6568368))

(declare-fun m!6568370 () Bool)

(assert (=> bm!418305 m!6568370))

(assert (=> d!1765863 d!1766063))

(declare-fun d!1766065 () Bool)

(assert (=> d!1766065 (= (head!11917 (unfocusZipperList!1002 zl!343)) (h!69346 (unfocusZipperList!1002 zl!343)))))

(assert (=> b!5587015 d!1766065))

(declare-fun bm!418306 () Bool)

(declare-fun call!418312 () (Set Context!9916))

(declare-fun call!418313 () (Set Context!9916))

(assert (=> bm!418306 (= call!418312 call!418313)))

(declare-fun b!5587846 () Bool)

(declare-fun e!3447510 () (Set Context!9916))

(declare-fun call!418315 () (Set Context!9916))

(assert (=> b!5587846 (= e!3447510 (set.union call!418315 call!418312))))

(declare-fun c!978948 () Bool)

(declare-fun bm!418307 () Bool)

(declare-fun call!418316 () List!63022)

(assert (=> bm!418307 (= call!418315 (derivationStepZipperDown!916 (ite c!978948 (regOne!31661 (h!69346 (exprs!5458 lt!2254810))) (regOne!31660 (h!69346 (exprs!5458 lt!2254810)))) (ite c!978948 (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (Context!9917 call!418316)) (h!69345 s!2326)))))

(declare-fun bm!418308 () Bool)

(declare-fun call!418311 () (Set Context!9916))

(assert (=> bm!418308 (= call!418311 call!418312)))

(declare-fun d!1766067 () Bool)

(declare-fun c!978949 () Bool)

(assert (=> d!1766067 (= c!978949 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 lt!2254810))) (= (c!978676 (h!69346 (exprs!5458 lt!2254810))) (h!69345 s!2326))))))

(declare-fun e!3447506 () (Set Context!9916))

(assert (=> d!1766067 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254810)) (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (h!69345 s!2326)) e!3447506)))

(declare-fun b!5587847 () Bool)

(declare-fun e!3447508 () (Set Context!9916))

(assert (=> b!5587847 (= e!3447506 e!3447508)))

(assert (=> b!5587847 (= c!978948 (is-Union!15574 (h!69346 (exprs!5458 lt!2254810))))))

(declare-fun call!418314 () List!63022)

(declare-fun c!978946 () Bool)

(declare-fun bm!418309 () Bool)

(declare-fun c!978950 () Bool)

(assert (=> bm!418309 (= call!418313 (derivationStepZipperDown!916 (ite c!978948 (regTwo!31661 (h!69346 (exprs!5458 lt!2254810))) (ite c!978946 (regTwo!31660 (h!69346 (exprs!5458 lt!2254810))) (ite c!978950 (regOne!31660 (h!69346 (exprs!5458 lt!2254810))) (reg!15903 (h!69346 (exprs!5458 lt!2254810)))))) (ite (or c!978948 c!978946) (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (Context!9917 call!418314)) (h!69345 s!2326)))))

(declare-fun b!5587848 () Bool)

(declare-fun e!3447507 () Bool)

(assert (=> b!5587848 (= c!978946 e!3447507)))

(declare-fun res!2371000 () Bool)

(assert (=> b!5587848 (=> (not res!2371000) (not e!3447507))))

(assert (=> b!5587848 (= res!2371000 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254810))))))

(assert (=> b!5587848 (= e!3447508 e!3447510)))

(declare-fun b!5587849 () Bool)

(declare-fun e!3447509 () (Set Context!9916))

(assert (=> b!5587849 (= e!3447509 call!418311)))

(declare-fun b!5587850 () Bool)

(assert (=> b!5587850 (= e!3447510 e!3447509)))

(assert (=> b!5587850 (= c!978950 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254810))))))

(declare-fun b!5587851 () Bool)

(assert (=> b!5587851 (= e!3447507 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 lt!2254810)))))))

(declare-fun b!5587852 () Bool)

(assert (=> b!5587852 (= e!3447506 (set.insert (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (as set.empty (Set Context!9916))))))

(declare-fun b!5587853 () Bool)

(declare-fun e!3447511 () (Set Context!9916))

(assert (=> b!5587853 (= e!3447511 call!418311)))

(declare-fun b!5587854 () Bool)

(assert (=> b!5587854 (= e!3447508 (set.union call!418315 call!418313))))

(declare-fun b!5587855 () Bool)

(declare-fun c!978947 () Bool)

(assert (=> b!5587855 (= c!978947 (is-Star!15574 (h!69346 (exprs!5458 lt!2254810))))))

(assert (=> b!5587855 (= e!3447509 e!3447511)))

(declare-fun bm!418310 () Bool)

(assert (=> bm!418310 (= call!418316 ($colon$colon!1637 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810)))) (ite (or c!978946 c!978950) (regTwo!31660 (h!69346 (exprs!5458 lt!2254810))) (h!69346 (exprs!5458 lt!2254810)))))))

(declare-fun bm!418311 () Bool)

(assert (=> bm!418311 (= call!418314 call!418316)))

(declare-fun b!5587856 () Bool)

(assert (=> b!5587856 (= e!3447511 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766067 c!978949) b!5587852))

(assert (= (and d!1766067 (not c!978949)) b!5587847))

(assert (= (and b!5587847 c!978948) b!5587854))

(assert (= (and b!5587847 (not c!978948)) b!5587848))

(assert (= (and b!5587848 res!2371000) b!5587851))

(assert (= (and b!5587848 c!978946) b!5587846))

(assert (= (and b!5587848 (not c!978946)) b!5587850))

(assert (= (and b!5587850 c!978950) b!5587849))

(assert (= (and b!5587850 (not c!978950)) b!5587855))

(assert (= (and b!5587855 c!978947) b!5587853))

(assert (= (and b!5587855 (not c!978947)) b!5587856))

(assert (= (or b!5587849 b!5587853) bm!418311))

(assert (= (or b!5587849 b!5587853) bm!418308))

(assert (= (or b!5587846 bm!418311) bm!418310))

(assert (= (or b!5587846 bm!418308) bm!418306))

(assert (= (or b!5587854 bm!418306) bm!418309))

(assert (= (or b!5587854 b!5587846) bm!418307))

(declare-fun m!6568372 () Bool)

(assert (=> bm!418310 m!6568372))

(declare-fun m!6568374 () Bool)

(assert (=> bm!418309 m!6568374))

(declare-fun m!6568376 () Bool)

(assert (=> b!5587852 m!6568376))

(declare-fun m!6568378 () Bool)

(assert (=> bm!418307 m!6568378))

(declare-fun m!6568380 () Bool)

(assert (=> b!5587851 m!6568380))

(assert (=> bm!418193 d!1766067))

(declare-fun bm!418312 () Bool)

(declare-fun call!418318 () (Set Context!9916))

(declare-fun call!418319 () (Set Context!9916))

(assert (=> bm!418312 (= call!418318 call!418319)))

(declare-fun b!5587857 () Bool)

(declare-fun e!3447516 () (Set Context!9916))

(declare-fun call!418321 () (Set Context!9916))

(assert (=> b!5587857 (= e!3447516 (set.union call!418321 call!418318))))

(declare-fun bm!418313 () Bool)

(declare-fun c!978953 () Bool)

(declare-fun call!418322 () List!63022)

(assert (=> bm!418313 (= call!418321 (derivationStepZipperDown!916 (ite c!978953 (regOne!31661 (h!69346 (exprs!5458 lt!2254814))) (regOne!31660 (h!69346 (exprs!5458 lt!2254814)))) (ite c!978953 (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (Context!9917 call!418322)) (h!69345 s!2326)))))

(declare-fun bm!418314 () Bool)

(declare-fun call!418317 () (Set Context!9916))

(assert (=> bm!418314 (= call!418317 call!418318)))

(declare-fun d!1766069 () Bool)

(declare-fun c!978954 () Bool)

(assert (=> d!1766069 (= c!978954 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 lt!2254814))) (= (c!978676 (h!69346 (exprs!5458 lt!2254814))) (h!69345 s!2326))))))

(declare-fun e!3447512 () (Set Context!9916))

(assert (=> d!1766069 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254814)) (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (h!69345 s!2326)) e!3447512)))

(declare-fun b!5587858 () Bool)

(declare-fun e!3447514 () (Set Context!9916))

(assert (=> b!5587858 (= e!3447512 e!3447514)))

(assert (=> b!5587858 (= c!978953 (is-Union!15574 (h!69346 (exprs!5458 lt!2254814))))))

(declare-fun call!418320 () List!63022)

(declare-fun c!978955 () Bool)

(declare-fun c!978951 () Bool)

(declare-fun bm!418315 () Bool)

(assert (=> bm!418315 (= call!418319 (derivationStepZipperDown!916 (ite c!978953 (regTwo!31661 (h!69346 (exprs!5458 lt!2254814))) (ite c!978951 (regTwo!31660 (h!69346 (exprs!5458 lt!2254814))) (ite c!978955 (regOne!31660 (h!69346 (exprs!5458 lt!2254814))) (reg!15903 (h!69346 (exprs!5458 lt!2254814)))))) (ite (or c!978953 c!978951) (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (Context!9917 call!418320)) (h!69345 s!2326)))))

(declare-fun b!5587859 () Bool)

(declare-fun e!3447513 () Bool)

(assert (=> b!5587859 (= c!978951 e!3447513)))

(declare-fun res!2371001 () Bool)

(assert (=> b!5587859 (=> (not res!2371001) (not e!3447513))))

(assert (=> b!5587859 (= res!2371001 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254814))))))

(assert (=> b!5587859 (= e!3447514 e!3447516)))

(declare-fun b!5587860 () Bool)

(declare-fun e!3447515 () (Set Context!9916))

(assert (=> b!5587860 (= e!3447515 call!418317)))

(declare-fun b!5587861 () Bool)

(assert (=> b!5587861 (= e!3447516 e!3447515)))

(assert (=> b!5587861 (= c!978955 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254814))))))

(declare-fun b!5587862 () Bool)

(assert (=> b!5587862 (= e!3447513 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 lt!2254814)))))))

(declare-fun b!5587863 () Bool)

(assert (=> b!5587863 (= e!3447512 (set.insert (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (as set.empty (Set Context!9916))))))

(declare-fun b!5587864 () Bool)

(declare-fun e!3447517 () (Set Context!9916))

(assert (=> b!5587864 (= e!3447517 call!418317)))

(declare-fun b!5587865 () Bool)

(assert (=> b!5587865 (= e!3447514 (set.union call!418321 call!418319))))

(declare-fun b!5587866 () Bool)

(declare-fun c!978952 () Bool)

(assert (=> b!5587866 (= c!978952 (is-Star!15574 (h!69346 (exprs!5458 lt!2254814))))))

(assert (=> b!5587866 (= e!3447515 e!3447517)))

(declare-fun bm!418316 () Bool)

(assert (=> bm!418316 (= call!418322 ($colon$colon!1637 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814)))) (ite (or c!978951 c!978955) (regTwo!31660 (h!69346 (exprs!5458 lt!2254814))) (h!69346 (exprs!5458 lt!2254814)))))))

(declare-fun bm!418317 () Bool)

(assert (=> bm!418317 (= call!418320 call!418322)))

(declare-fun b!5587867 () Bool)

(assert (=> b!5587867 (= e!3447517 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766069 c!978954) b!5587863))

(assert (= (and d!1766069 (not c!978954)) b!5587858))

(assert (= (and b!5587858 c!978953) b!5587865))

(assert (= (and b!5587858 (not c!978953)) b!5587859))

(assert (= (and b!5587859 res!2371001) b!5587862))

(assert (= (and b!5587859 c!978951) b!5587857))

(assert (= (and b!5587859 (not c!978951)) b!5587861))

(assert (= (and b!5587861 c!978955) b!5587860))

(assert (= (and b!5587861 (not c!978955)) b!5587866))

(assert (= (and b!5587866 c!978952) b!5587864))

(assert (= (and b!5587866 (not c!978952)) b!5587867))

(assert (= (or b!5587860 b!5587864) bm!418317))

(assert (= (or b!5587860 b!5587864) bm!418314))

(assert (= (or b!5587857 bm!418317) bm!418316))

(assert (= (or b!5587857 bm!418314) bm!418312))

(assert (= (or b!5587865 bm!418312) bm!418315))

(assert (= (or b!5587865 b!5587857) bm!418313))

(declare-fun m!6568382 () Bool)

(assert (=> bm!418316 m!6568382))

(declare-fun m!6568384 () Bool)

(assert (=> bm!418315 m!6568384))

(declare-fun m!6568386 () Bool)

(assert (=> b!5587863 m!6568386))

(declare-fun m!6568388 () Bool)

(assert (=> bm!418313 m!6568388))

(declare-fun m!6568390 () Bool)

(assert (=> b!5587862 m!6568390))

(assert (=> bm!418192 d!1766069))

(declare-fun d!1766071 () Bool)

(assert (=> d!1766071 (= (isUnion!568 lt!2254923) (is-Union!15574 lt!2254923))))

(assert (=> b!5587012 d!1766071))

(declare-fun d!1766073 () Bool)

(declare-fun lambda!299861 () Int)

(declare-fun exists!2164 ((Set Context!9916) Int) Bool)

(assert (=> d!1766073 (= (nullableZipper!1569 lt!2254829) (exists!2164 lt!2254829 lambda!299861))))

(declare-fun bs!1292118 () Bool)

(assert (= bs!1292118 d!1766073))

(declare-fun m!6568392 () Bool)

(assert (=> bs!1292118 m!6568392))

(assert (=> b!5587265 d!1766073))

(declare-fun bm!418318 () Bool)

(declare-fun call!418324 () (Set Context!9916))

(declare-fun call!418325 () (Set Context!9916))

(assert (=> bm!418318 (= call!418324 call!418325)))

(declare-fun b!5587868 () Bool)

(declare-fun e!3447522 () (Set Context!9916))

(declare-fun call!418327 () (Set Context!9916))

(assert (=> b!5587868 (= e!3447522 (set.union call!418327 call!418324))))

(declare-fun bm!418319 () Bool)

(declare-fun c!978960 () Bool)

(declare-fun call!418328 () List!63022)

(assert (=> bm!418319 (= call!418327 (derivationStepZipperDown!916 (ite c!978960 (regOne!31661 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (regOne!31660 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))) (ite c!978960 (ite c!978777 lt!2254824 (Context!9917 call!418213)) (Context!9917 call!418328)) (h!69345 s!2326)))))

(declare-fun bm!418320 () Bool)

(declare-fun call!418323 () (Set Context!9916))

(assert (=> bm!418320 (= call!418323 call!418324)))

(declare-fun c!978961 () Bool)

(declare-fun d!1766075 () Bool)

(assert (=> d!1766075 (= c!978961 (and (is-ElementMatch!15574 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (= (c!978676 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (h!69345 s!2326))))))

(declare-fun e!3447518 () (Set Context!9916))

(assert (=> d!1766075 (= (derivationStepZipperDown!916 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))) (ite c!978777 lt!2254824 (Context!9917 call!418213)) (h!69345 s!2326)) e!3447518)))

(declare-fun b!5587869 () Bool)

(declare-fun e!3447520 () (Set Context!9916))

(assert (=> b!5587869 (= e!3447518 e!3447520)))

(assert (=> b!5587869 (= c!978960 (is-Union!15574 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(declare-fun call!418326 () List!63022)

(declare-fun c!978958 () Bool)

(declare-fun c!978962 () Bool)

(declare-fun bm!418321 () Bool)

(assert (=> bm!418321 (= call!418325 (derivationStepZipperDown!916 (ite c!978960 (regTwo!31661 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (ite c!978958 (regTwo!31660 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (ite c!978962 (regOne!31660 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (reg!15903 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))))) (ite (or c!978960 c!978958) (ite c!978777 lt!2254824 (Context!9917 call!418213)) (Context!9917 call!418326)) (h!69345 s!2326)))))

(declare-fun b!5587870 () Bool)

(declare-fun e!3447519 () Bool)

(assert (=> b!5587870 (= c!978958 e!3447519)))

(declare-fun res!2371002 () Bool)

(assert (=> b!5587870 (=> (not res!2371002) (not e!3447519))))

(assert (=> b!5587870 (= res!2371002 (is-Concat!24419 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(assert (=> b!5587870 (= e!3447520 e!3447522)))

(declare-fun b!5587871 () Bool)

(declare-fun e!3447521 () (Set Context!9916))

(assert (=> b!5587871 (= e!3447521 call!418323)))

(declare-fun b!5587872 () Bool)

(assert (=> b!5587872 (= e!3447522 e!3447521)))

(assert (=> b!5587872 (= c!978962 (is-Concat!24419 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(declare-fun b!5587873 () Bool)

(assert (=> b!5587873 (= e!3447519 (nullable!5606 (regOne!31660 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))))))

(declare-fun b!5587874 () Bool)

(assert (=> b!5587874 (= e!3447518 (set.insert (ite c!978777 lt!2254824 (Context!9917 call!418213)) (as set.empty (Set Context!9916))))))

(declare-fun b!5587875 () Bool)

(declare-fun e!3447523 () (Set Context!9916))

(assert (=> b!5587875 (= e!3447523 call!418323)))

(declare-fun b!5587876 () Bool)

(assert (=> b!5587876 (= e!3447520 (set.union call!418327 call!418325))))

(declare-fun b!5587877 () Bool)

(declare-fun c!978959 () Bool)

(assert (=> b!5587877 (= c!978959 (is-Star!15574 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))))))

(assert (=> b!5587877 (= e!3447521 e!3447523)))

(declare-fun bm!418322 () Bool)

(assert (=> bm!418322 (= call!418328 ($colon$colon!1637 (exprs!5458 (ite c!978777 lt!2254824 (Context!9917 call!418213))) (ite (or c!978958 c!978962) (regTwo!31660 (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292))))) (ite c!978777 (regOne!31661 (regTwo!31661 (regOne!31660 r!7292))) (regOne!31660 (regTwo!31661 (regOne!31660 r!7292)))))))))

(declare-fun bm!418323 () Bool)

(assert (=> bm!418323 (= call!418326 call!418328)))

(declare-fun b!5587878 () Bool)

(assert (=> b!5587878 (= e!3447523 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766075 c!978961) b!5587874))

(assert (= (and d!1766075 (not c!978961)) b!5587869))

(assert (= (and b!5587869 c!978960) b!5587876))

(assert (= (and b!5587869 (not c!978960)) b!5587870))

(assert (= (and b!5587870 res!2371002) b!5587873))

(assert (= (and b!5587870 c!978958) b!5587868))

(assert (= (and b!5587870 (not c!978958)) b!5587872))

(assert (= (and b!5587872 c!978962) b!5587871))

(assert (= (and b!5587872 (not c!978962)) b!5587877))

(assert (= (and b!5587877 c!978959) b!5587875))

(assert (= (and b!5587877 (not c!978959)) b!5587878))

(assert (= (or b!5587871 b!5587875) bm!418323))

(assert (= (or b!5587871 b!5587875) bm!418320))

(assert (= (or b!5587868 bm!418323) bm!418322))

(assert (= (or b!5587868 bm!418320) bm!418318))

(assert (= (or b!5587876 bm!418318) bm!418321))

(assert (= (or b!5587876 b!5587868) bm!418319))

(declare-fun m!6568394 () Bool)

(assert (=> bm!418322 m!6568394))

(declare-fun m!6568396 () Bool)

(assert (=> bm!418321 m!6568396))

(declare-fun m!6568398 () Bool)

(assert (=> b!5587874 m!6568398))

(declare-fun m!6568400 () Bool)

(assert (=> bm!418319 m!6568400))

(declare-fun m!6568402 () Bool)

(assert (=> b!5587873 m!6568402))

(assert (=> bm!418204 d!1766075))

(assert (=> bs!1292046 d!1765867))

(declare-fun d!1766077 () Bool)

(assert (=> d!1766077 (= (isDefined!12286 lt!2254945) (not (isEmpty!34717 lt!2254945)))))

(declare-fun bs!1292119 () Bool)

(assert (= bs!1292119 d!1766077))

(declare-fun m!6568404 () Bool)

(assert (=> bs!1292119 m!6568404))

(assert (=> b!5587151 d!1766077))

(declare-fun d!1766079 () Bool)

(declare-fun res!2371003 () Bool)

(declare-fun e!3447524 () Bool)

(assert (=> d!1766079 (=> res!2371003 e!3447524)))

(assert (=> d!1766079 (= res!2371003 (is-Nil!62898 (exprs!5458 setElem!37216)))))

(assert (=> d!1766079 (= (forall!14740 (exprs!5458 setElem!37216) lambda!299818) e!3447524)))

(declare-fun b!5587879 () Bool)

(declare-fun e!3447525 () Bool)

(assert (=> b!5587879 (= e!3447524 e!3447525)))

(declare-fun res!2371004 () Bool)

(assert (=> b!5587879 (=> (not res!2371004) (not e!3447525))))

(assert (=> b!5587879 (= res!2371004 (dynLambda!24599 lambda!299818 (h!69346 (exprs!5458 setElem!37216))))))

(declare-fun b!5587880 () Bool)

(assert (=> b!5587880 (= e!3447525 (forall!14740 (t!376297 (exprs!5458 setElem!37216)) lambda!299818))))

(assert (= (and d!1766079 (not res!2371003)) b!5587879))

(assert (= (and b!5587879 res!2371004) b!5587880))

(declare-fun b_lambda!211735 () Bool)

(assert (=> (not b_lambda!211735) (not b!5587879)))

(declare-fun m!6568406 () Bool)

(assert (=> b!5587879 m!6568406))

(declare-fun m!6568408 () Bool)

(assert (=> b!5587880 m!6568408))

(assert (=> d!1765895 d!1766079))

(assert (=> d!1765853 d!1765847))

(declare-fun d!1766081 () Bool)

(assert (=> d!1766081 (= (Exists!2674 lambda!299808) (choose!42362 lambda!299808))))

(declare-fun bs!1292120 () Bool)

(assert (= bs!1292120 d!1766081))

(declare-fun m!6568410 () Bool)

(assert (=> bs!1292120 m!6568410))

(assert (=> d!1765853 d!1766081))

(assert (=> d!1765853 d!1766047))

(assert (=> d!1765853 d!1765857))

(declare-fun bs!1292121 () Bool)

(declare-fun d!1766083 () Bool)

(assert (= bs!1292121 (and d!1766083 b!5587755)))

(declare-fun lambda!299864 () Int)

(assert (=> bs!1292121 (not (= lambda!299864 lambda!299848))))

(declare-fun bs!1292122 () Bool)

(assert (= bs!1292122 (and d!1766083 d!1765853)))

(assert (=> bs!1292122 (= lambda!299864 lambda!299808)))

(declare-fun bs!1292123 () Bool)

(assert (= bs!1292123 (and d!1766083 d!1765855)))

(assert (=> bs!1292123 (not (= lambda!299864 lambda!299814))))

(declare-fun bs!1292124 () Bool)

(assert (= bs!1292124 (and d!1766083 d!1766045)))

(assert (=> bs!1292124 (not (= lambda!299864 lambda!299855))))

(assert (=> bs!1292123 (= lambda!299864 lambda!299813)))

(declare-fun bs!1292125 () Bool)

(assert (= bs!1292125 (and d!1766083 b!5586785)))

(assert (=> bs!1292125 (= lambda!299864 lambda!299773)))

(declare-fun bs!1292126 () Bool)

(assert (= bs!1292126 (and d!1766083 b!5587085)))

(assert (=> bs!1292126 (not (= lambda!299864 lambda!299805))))

(declare-fun bs!1292127 () Bool)

(assert (= bs!1292127 (and d!1766083 b!5587080)))

(assert (=> bs!1292127 (not (= lambda!299864 lambda!299804))))

(assert (=> bs!1292124 (= lambda!299864 lambda!299854)))

(declare-fun bs!1292128 () Bool)

(assert (= bs!1292128 (and d!1766083 b!5587760)))

(assert (=> bs!1292128 (not (= lambda!299864 lambda!299849))))

(assert (=> bs!1292125 (not (= lambda!299864 lambda!299774))))

(assert (=> d!1766083 true))

(assert (=> d!1766083 true))

(assert (=> d!1766083 true))

(assert (=> d!1766083 (= (isDefined!12286 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326)) (Exists!2674 lambda!299864))))

(assert (=> d!1766083 true))

(declare-fun _$89!1689 () Unit!155688)

(assert (=> d!1766083 (= (choose!42363 (regOne!31660 r!7292) (regTwo!31660 r!7292) s!2326) _$89!1689)))

(declare-fun bs!1292129 () Bool)

(assert (= bs!1292129 d!1766083))

(assert (=> bs!1292129 m!6567618))

(assert (=> bs!1292129 m!6567618))

(assert (=> bs!1292129 m!6567620))

(declare-fun m!6568412 () Bool)

(assert (=> bs!1292129 m!6568412))

(assert (=> d!1765853 d!1766083))

(declare-fun d!1766085 () Bool)

(assert (=> d!1766085 true))

(declare-fun setRes!37228 () Bool)

(assert (=> d!1766085 setRes!37228))

(declare-fun condSetEmpty!37228 () Bool)

(declare-fun res!2371011 () (Set Context!9916))

(assert (=> d!1766085 (= condSetEmpty!37228 (= res!2371011 (as set.empty (Set Context!9916))))))

(assert (=> d!1766085 (= (choose!42358 z!1189 lambda!299775) res!2371011)))

(declare-fun setIsEmpty!37228 () Bool)

(assert (=> setIsEmpty!37228 setRes!37228))

(declare-fun e!3447530 () Bool)

(declare-fun setElem!37228 () Context!9916)

(declare-fun tp!1545608 () Bool)

(declare-fun setNonEmpty!37228 () Bool)

(assert (=> setNonEmpty!37228 (= setRes!37228 (and tp!1545608 (inv!82183 setElem!37228) e!3447530))))

(declare-fun setRest!37228 () (Set Context!9916))

(assert (=> setNonEmpty!37228 (= res!2371011 (set.union (set.insert setElem!37228 (as set.empty (Set Context!9916))) setRest!37228))))

(declare-fun b!5587887 () Bool)

(declare-fun tp!1545609 () Bool)

(assert (=> b!5587887 (= e!3447530 tp!1545609)))

(assert (= (and d!1766085 condSetEmpty!37228) setIsEmpty!37228))

(assert (= (and d!1766085 (not condSetEmpty!37228)) setNonEmpty!37228))

(assert (= setNonEmpty!37228 b!5587887))

(declare-fun m!6568414 () Bool)

(assert (=> setNonEmpty!37228 m!6568414))

(assert (=> d!1765821 d!1766085))

(assert (=> d!1765845 d!1765843))

(assert (=> d!1765845 d!1765841))

(declare-fun d!1766087 () Bool)

(assert (=> d!1766087 (= (matchR!7759 r!7292 s!2326) (matchRSpec!2677 r!7292 s!2326))))

(assert (=> d!1766087 true))

(declare-fun _$88!3859 () Unit!155688)

(assert (=> d!1766087 (= (choose!42361 r!7292 s!2326) _$88!3859)))

(declare-fun bs!1292130 () Bool)

(assert (= bs!1292130 d!1766087))

(assert (=> bs!1292130 m!6567552))

(assert (=> bs!1292130 m!6567550))

(assert (=> d!1765845 d!1766087))

(assert (=> d!1765845 d!1765877))

(assert (=> d!1765871 d!1765865))

(declare-fun d!1766089 () Bool)

(assert (=> d!1766089 (= (flatMap!1187 lt!2254808 lambda!299775) (dynLambda!24597 lambda!299775 lt!2254814))))

(assert (=> d!1766089 true))

(declare-fun _$13!2171 () Unit!155688)

(assert (=> d!1766089 (= (choose!42357 lt!2254808 lt!2254814 lambda!299775) _$13!2171)))

(declare-fun b_lambda!211737 () Bool)

(assert (=> (not b_lambda!211737) (not d!1766089)))

(declare-fun bs!1292131 () Bool)

(assert (= bs!1292131 d!1766089))

(assert (=> bs!1292131 m!6567558))

(assert (=> bs!1292131 m!6567906))

(assert (=> d!1765871 d!1766089))

(declare-fun d!1766091 () Bool)

(assert (=> d!1766091 (= (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (nullableFct!1715 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun bs!1292132 () Bool)

(assert (= bs!1292132 d!1766091))

(declare-fun m!6568416 () Bool)

(assert (=> bs!1292132 m!6568416))

(assert (=> b!5586944 d!1766091))

(declare-fun b!5587897 () Bool)

(declare-fun e!3447535 () List!63021)

(assert (=> b!5587897 (= e!3447535 (Cons!62897 (h!69345 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))) (++!13803 (t!376296 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))) (t!376296 s!2326))))))

(declare-fun d!1766093 () Bool)

(declare-fun e!3447536 () Bool)

(assert (=> d!1766093 e!3447536))

(declare-fun res!2371016 () Bool)

(assert (=> d!1766093 (=> (not res!2371016) (not e!3447536))))

(declare-fun lt!2255010 () List!63021)

(declare-fun content!11346 (List!63021) (Set C!31418))

(assert (=> d!1766093 (= res!2371016 (= (content!11346 lt!2255010) (set.union (content!11346 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))) (content!11346 (t!376296 s!2326)))))))

(assert (=> d!1766093 (= lt!2255010 e!3447535)))

(declare-fun c!978965 () Bool)

(assert (=> d!1766093 (= c!978965 (is-Nil!62897 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))))))

(assert (=> d!1766093 (= (++!13803 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326)) lt!2255010)))

(declare-fun b!5587896 () Bool)

(assert (=> b!5587896 (= e!3447535 (t!376296 s!2326))))

(declare-fun b!5587898 () Bool)

(declare-fun res!2371017 () Bool)

(assert (=> b!5587898 (=> (not res!2371017) (not e!3447536))))

(declare-fun size!39961 (List!63021) Int)

(assert (=> b!5587898 (= res!2371017 (= (size!39961 lt!2255010) (+ (size!39961 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))) (size!39961 (t!376296 s!2326)))))))

(declare-fun b!5587899 () Bool)

(assert (=> b!5587899 (= e!3447536 (or (not (= (t!376296 s!2326) Nil!62897)) (= lt!2255010 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)))))))

(assert (= (and d!1766093 c!978965) b!5587896))

(assert (= (and d!1766093 (not c!978965)) b!5587897))

(assert (= (and d!1766093 res!2371016) b!5587898))

(assert (= (and b!5587898 res!2371017) b!5587899))

(declare-fun m!6568418 () Bool)

(assert (=> b!5587897 m!6568418))

(declare-fun m!6568420 () Bool)

(assert (=> d!1766093 m!6568420))

(assert (=> d!1766093 m!6567854))

(declare-fun m!6568422 () Bool)

(assert (=> d!1766093 m!6568422))

(declare-fun m!6568424 () Bool)

(assert (=> d!1766093 m!6568424))

(declare-fun m!6568426 () Bool)

(assert (=> b!5587898 m!6568426))

(assert (=> b!5587898 m!6567854))

(declare-fun m!6568428 () Bool)

(assert (=> b!5587898 m!6568428))

(declare-fun m!6568430 () Bool)

(assert (=> b!5587898 m!6568430))

(assert (=> b!5587146 d!1766093))

(declare-fun b!5587901 () Bool)

(declare-fun e!3447537 () List!63021)

(assert (=> b!5587901 (= e!3447537 (Cons!62897 (h!69345 Nil!62897) (++!13803 (t!376296 Nil!62897) (Cons!62897 (h!69345 s!2326) Nil!62897))))))

(declare-fun d!1766095 () Bool)

(declare-fun e!3447538 () Bool)

(assert (=> d!1766095 e!3447538))

(declare-fun res!2371018 () Bool)

(assert (=> d!1766095 (=> (not res!2371018) (not e!3447538))))

(declare-fun lt!2255011 () List!63021)

(assert (=> d!1766095 (= res!2371018 (= (content!11346 lt!2255011) (set.union (content!11346 Nil!62897) (content!11346 (Cons!62897 (h!69345 s!2326) Nil!62897)))))))

(assert (=> d!1766095 (= lt!2255011 e!3447537)))

(declare-fun c!978966 () Bool)

(assert (=> d!1766095 (= c!978966 (is-Nil!62897 Nil!62897))))

(assert (=> d!1766095 (= (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) lt!2255011)))

(declare-fun b!5587900 () Bool)

(assert (=> b!5587900 (= e!3447537 (Cons!62897 (h!69345 s!2326) Nil!62897))))

(declare-fun b!5587902 () Bool)

(declare-fun res!2371019 () Bool)

(assert (=> b!5587902 (=> (not res!2371019) (not e!3447538))))

(assert (=> b!5587902 (= res!2371019 (= (size!39961 lt!2255011) (+ (size!39961 Nil!62897) (size!39961 (Cons!62897 (h!69345 s!2326) Nil!62897)))))))

(declare-fun b!5587903 () Bool)

(assert (=> b!5587903 (= e!3447538 (or (not (= (Cons!62897 (h!69345 s!2326) Nil!62897) Nil!62897)) (= lt!2255011 Nil!62897)))))

(assert (= (and d!1766095 c!978966) b!5587900))

(assert (= (and d!1766095 (not c!978966)) b!5587901))

(assert (= (and d!1766095 res!2371018) b!5587902))

(assert (= (and b!5587902 res!2371019) b!5587903))

(declare-fun m!6568432 () Bool)

(assert (=> b!5587901 m!6568432))

(declare-fun m!6568434 () Bool)

(assert (=> d!1766095 m!6568434))

(declare-fun m!6568436 () Bool)

(assert (=> d!1766095 m!6568436))

(declare-fun m!6568438 () Bool)

(assert (=> d!1766095 m!6568438))

(declare-fun m!6568440 () Bool)

(assert (=> b!5587902 m!6568440))

(declare-fun m!6568442 () Bool)

(assert (=> b!5587902 m!6568442))

(declare-fun m!6568444 () Bool)

(assert (=> b!5587902 m!6568444))

(assert (=> b!5587146 d!1766095))

(declare-fun d!1766097 () Bool)

(assert (=> d!1766097 (= (++!13803 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326)) s!2326)))

(declare-fun lt!2255014 () Unit!155688)

(declare-fun choose!42373 (List!63021 C!31418 List!63021 List!63021) Unit!155688)

(assert (=> d!1766097 (= lt!2255014 (choose!42373 Nil!62897 (h!69345 s!2326) (t!376296 s!2326) s!2326))))

(assert (=> d!1766097 (= (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) (t!376296 s!2326))) s!2326)))

(assert (=> d!1766097 (= (lemmaMoveElementToOtherListKeepsConcatEq!1972 Nil!62897 (h!69345 s!2326) (t!376296 s!2326) s!2326) lt!2255014)))

(declare-fun bs!1292133 () Bool)

(assert (= bs!1292133 d!1766097))

(assert (=> bs!1292133 m!6567854))

(assert (=> bs!1292133 m!6567854))

(assert (=> bs!1292133 m!6567856))

(declare-fun m!6568446 () Bool)

(assert (=> bs!1292133 m!6568446))

(declare-fun m!6568448 () Bool)

(assert (=> bs!1292133 m!6568448))

(assert (=> b!5587146 d!1766097))

(declare-fun b!5587904 () Bool)

(declare-fun lt!2255017 () Unit!155688)

(declare-fun lt!2255016 () Unit!155688)

(assert (=> b!5587904 (= lt!2255017 lt!2255016)))

(assert (=> b!5587904 (= (++!13803 (++!13803 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (Cons!62897 (h!69345 (t!376296 s!2326)) Nil!62897)) (t!376296 (t!376296 s!2326))) s!2326)))

(assert (=> b!5587904 (= lt!2255016 (lemmaMoveElementToOtherListKeepsConcatEq!1972 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (h!69345 (t!376296 s!2326)) (t!376296 (t!376296 s!2326)) s!2326))))

(declare-fun e!3447543 () Option!15583)

(assert (=> b!5587904 (= e!3447543 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) (++!13803 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (Cons!62897 (h!69345 (t!376296 s!2326)) Nil!62897)) (t!376296 (t!376296 s!2326)) s!2326))))

(declare-fun b!5587905 () Bool)

(declare-fun res!2371023 () Bool)

(declare-fun e!3447539 () Bool)

(assert (=> b!5587905 (=> (not res!2371023) (not e!3447539))))

(declare-fun lt!2255015 () Option!15583)

(assert (=> b!5587905 (= res!2371023 (matchR!7759 (regTwo!31660 r!7292) (_2!35974 (get!21658 lt!2255015))))))

(declare-fun b!5587906 () Bool)

(declare-fun e!3447542 () Option!15583)

(assert (=> b!5587906 (= e!3447542 (Some!15582 (tuple2!65343 (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326))))))

(declare-fun b!5587907 () Bool)

(assert (=> b!5587907 (= e!3447543 None!15582)))

(declare-fun d!1766099 () Bool)

(declare-fun e!3447541 () Bool)

(assert (=> d!1766099 e!3447541))

(declare-fun res!2371024 () Bool)

(assert (=> d!1766099 (=> res!2371024 e!3447541)))

(assert (=> d!1766099 (= res!2371024 e!3447539)))

(declare-fun res!2371021 () Bool)

(assert (=> d!1766099 (=> (not res!2371021) (not e!3447539))))

(assert (=> d!1766099 (= res!2371021 (isDefined!12286 lt!2255015))))

(assert (=> d!1766099 (= lt!2255015 e!3447542)))

(declare-fun c!978967 () Bool)

(declare-fun e!3447540 () Bool)

(assert (=> d!1766099 (= c!978967 e!3447540)))

(declare-fun res!2371020 () Bool)

(assert (=> d!1766099 (=> (not res!2371020) (not e!3447540))))

(assert (=> d!1766099 (= res!2371020 (matchR!7759 (regOne!31660 r!7292) (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897))))))

(assert (=> d!1766099 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1766099 (= (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) (++!13803 Nil!62897 (Cons!62897 (h!69345 s!2326) Nil!62897)) (t!376296 s!2326) s!2326) lt!2255015)))

(declare-fun b!5587908 () Bool)

(declare-fun res!2371022 () Bool)

(assert (=> b!5587908 (=> (not res!2371022) (not e!3447539))))

(assert (=> b!5587908 (= res!2371022 (matchR!7759 (regOne!31660 r!7292) (_1!35974 (get!21658 lt!2255015))))))

(declare-fun b!5587909 () Bool)

(assert (=> b!5587909 (= e!3447541 (not (isDefined!12286 lt!2255015)))))

(declare-fun b!5587910 () Bool)

(assert (=> b!5587910 (= e!3447540 (matchR!7759 (regTwo!31660 r!7292) (t!376296 s!2326)))))

(declare-fun b!5587911 () Bool)

(assert (=> b!5587911 (= e!3447539 (= (++!13803 (_1!35974 (get!21658 lt!2255015)) (_2!35974 (get!21658 lt!2255015))) s!2326))))

(declare-fun b!5587912 () Bool)

(assert (=> b!5587912 (= e!3447542 e!3447543)))

(declare-fun c!978968 () Bool)

(assert (=> b!5587912 (= c!978968 (is-Nil!62897 (t!376296 s!2326)))))

(assert (= (and d!1766099 res!2371020) b!5587910))

(assert (= (and d!1766099 c!978967) b!5587906))

(assert (= (and d!1766099 (not c!978967)) b!5587912))

(assert (= (and b!5587912 c!978968) b!5587907))

(assert (= (and b!5587912 (not c!978968)) b!5587904))

(assert (= (and d!1766099 res!2371021) b!5587908))

(assert (= (and b!5587908 res!2371022) b!5587905))

(assert (= (and b!5587905 res!2371023) b!5587911))

(assert (= (and d!1766099 (not res!2371024)) b!5587909))

(declare-fun m!6568450 () Bool)

(assert (=> d!1766099 m!6568450))

(assert (=> d!1766099 m!6567854))

(declare-fun m!6568452 () Bool)

(assert (=> d!1766099 m!6568452))

(assert (=> d!1766099 m!6567848))

(declare-fun m!6568454 () Bool)

(assert (=> b!5587905 m!6568454))

(declare-fun m!6568456 () Bool)

(assert (=> b!5587905 m!6568456))

(assert (=> b!5587904 m!6567854))

(declare-fun m!6568458 () Bool)

(assert (=> b!5587904 m!6568458))

(assert (=> b!5587904 m!6568458))

(declare-fun m!6568460 () Bool)

(assert (=> b!5587904 m!6568460))

(assert (=> b!5587904 m!6567854))

(declare-fun m!6568462 () Bool)

(assert (=> b!5587904 m!6568462))

(assert (=> b!5587904 m!6568458))

(declare-fun m!6568464 () Bool)

(assert (=> b!5587904 m!6568464))

(declare-fun m!6568466 () Bool)

(assert (=> b!5587910 m!6568466))

(assert (=> b!5587908 m!6568454))

(declare-fun m!6568468 () Bool)

(assert (=> b!5587908 m!6568468))

(assert (=> b!5587911 m!6568454))

(declare-fun m!6568470 () Bool)

(assert (=> b!5587911 m!6568470))

(assert (=> b!5587909 m!6568450))

(assert (=> b!5587146 d!1766099))

(assert (=> b!5586949 d!1765811))

(declare-fun d!1766101 () Bool)

(assert (=> d!1766101 true))

(assert (=> d!1766101 true))

(declare-fun res!2371027 () Bool)

(assert (=> d!1766101 (= (choose!42362 lambda!299774) res!2371027)))

(assert (=> d!1765851 d!1766101))

(declare-fun d!1766103 () Bool)

(assert (=> d!1766103 (= (isEmpty!34712 (tail!11012 (exprs!5458 (h!69347 zl!343)))) (is-Nil!62898 (tail!11012 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5587253 d!1766103))

(declare-fun d!1766105 () Bool)

(assert (=> d!1766105 (= (tail!11012 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))

(assert (=> b!5587253 d!1766105))

(declare-fun bm!418324 () Bool)

(declare-fun call!418330 () (Set Context!9916))

(declare-fun call!418331 () (Set Context!9916))

(assert (=> bm!418324 (= call!418330 call!418331)))

(declare-fun b!5587913 () Bool)

(declare-fun e!3447548 () (Set Context!9916))

(declare-fun call!418333 () (Set Context!9916))

(assert (=> b!5587913 (= e!3447548 (set.union call!418333 call!418330))))

(declare-fun call!418334 () List!63022)

(declare-fun c!978971 () Bool)

(declare-fun bm!418325 () Bool)

(assert (=> bm!418325 (= call!418333 (derivationStepZipperDown!916 (ite c!978971 (regOne!31661 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (regOne!31660 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))) (ite c!978971 (ite c!978713 lt!2254824 (Context!9917 call!418187)) (Context!9917 call!418334)) (h!69345 s!2326)))))

(declare-fun bm!418326 () Bool)

(declare-fun call!418329 () (Set Context!9916))

(assert (=> bm!418326 (= call!418329 call!418330)))

(declare-fun d!1766107 () Bool)

(declare-fun c!978972 () Bool)

(assert (=> d!1766107 (= c!978972 (and (is-ElementMatch!15574 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (= (c!978676 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (h!69345 s!2326))))))

(declare-fun e!3447544 () (Set Context!9916))

(assert (=> d!1766107 (= (derivationStepZipperDown!916 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))) (ite c!978713 lt!2254824 (Context!9917 call!418187)) (h!69345 s!2326)) e!3447544)))

(declare-fun b!5587914 () Bool)

(declare-fun e!3447546 () (Set Context!9916))

(assert (=> b!5587914 (= e!3447544 e!3447546)))

(assert (=> b!5587914 (= c!978971 (is-Union!15574 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun c!978973 () Bool)

(declare-fun call!418332 () List!63022)

(declare-fun bm!418327 () Bool)

(declare-fun c!978969 () Bool)

(assert (=> bm!418327 (= call!418331 (derivationStepZipperDown!916 (ite c!978971 (regTwo!31661 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (ite c!978969 (regTwo!31660 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (ite c!978973 (regOne!31660 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (reg!15903 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))) (ite (or c!978971 c!978969) (ite c!978713 lt!2254824 (Context!9917 call!418187)) (Context!9917 call!418332)) (h!69345 s!2326)))))

(declare-fun b!5587915 () Bool)

(declare-fun e!3447545 () Bool)

(assert (=> b!5587915 (= c!978969 e!3447545)))

(declare-fun res!2371028 () Bool)

(assert (=> b!5587915 (=> (not res!2371028) (not e!3447545))))

(assert (=> b!5587915 (= res!2371028 (is-Concat!24419 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(assert (=> b!5587915 (= e!3447546 e!3447548)))

(declare-fun b!5587916 () Bool)

(declare-fun e!3447547 () (Set Context!9916))

(assert (=> b!5587916 (= e!3447547 call!418329)))

(declare-fun b!5587917 () Bool)

(assert (=> b!5587917 (= e!3447548 e!3447547)))

(assert (=> b!5587917 (= c!978973 (is-Concat!24419 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun b!5587918 () Bool)

(assert (=> b!5587918 (= e!3447545 (nullable!5606 (regOne!31660 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))))

(declare-fun b!5587919 () Bool)

(assert (=> b!5587919 (= e!3447544 (set.insert (ite c!978713 lt!2254824 (Context!9917 call!418187)) (as set.empty (Set Context!9916))))))

(declare-fun b!5587920 () Bool)

(declare-fun e!3447549 () (Set Context!9916))

(assert (=> b!5587920 (= e!3447549 call!418329)))

(declare-fun b!5587921 () Bool)

(assert (=> b!5587921 (= e!3447546 (set.union call!418333 call!418331))))

(declare-fun b!5587922 () Bool)

(declare-fun c!978970 () Bool)

(assert (=> b!5587922 (= c!978970 (is-Star!15574 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(assert (=> b!5587922 (= e!3447547 e!3447549)))

(declare-fun bm!418328 () Bool)

(assert (=> bm!418328 (= call!418334 ($colon$colon!1637 (exprs!5458 (ite c!978713 lt!2254824 (Context!9917 call!418187))) (ite (or c!978969 c!978973) (regTwo!31660 (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))) (ite c!978713 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))))

(declare-fun bm!418329 () Bool)

(assert (=> bm!418329 (= call!418332 call!418334)))

(declare-fun b!5587923 () Bool)

(assert (=> b!5587923 (= e!3447549 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766107 c!978972) b!5587919))

(assert (= (and d!1766107 (not c!978972)) b!5587914))

(assert (= (and b!5587914 c!978971) b!5587921))

(assert (= (and b!5587914 (not c!978971)) b!5587915))

(assert (= (and b!5587915 res!2371028) b!5587918))

(assert (= (and b!5587915 c!978969) b!5587913))

(assert (= (and b!5587915 (not c!978969)) b!5587917))

(assert (= (and b!5587917 c!978973) b!5587916))

(assert (= (and b!5587917 (not c!978973)) b!5587922))

(assert (= (and b!5587922 c!978970) b!5587920))

(assert (= (and b!5587922 (not c!978970)) b!5587923))

(assert (= (or b!5587916 b!5587920) bm!418329))

(assert (= (or b!5587916 b!5587920) bm!418326))

(assert (= (or b!5587913 bm!418329) bm!418328))

(assert (= (or b!5587913 bm!418326) bm!418324))

(assert (= (or b!5587921 bm!418324) bm!418327))

(assert (= (or b!5587921 b!5587913) bm!418325))

(declare-fun m!6568472 () Bool)

(assert (=> bm!418328 m!6568472))

(declare-fun m!6568474 () Bool)

(assert (=> bm!418327 m!6568474))

(declare-fun m!6568476 () Bool)

(assert (=> b!5587919 m!6568476))

(declare-fun m!6568478 () Bool)

(assert (=> bm!418325 m!6568478))

(declare-fun m!6568480 () Bool)

(assert (=> b!5587918 m!6568480))

(assert (=> bm!418178 d!1766107))

(declare-fun bs!1292134 () Bool)

(declare-fun d!1766109 () Bool)

(assert (= bs!1292134 (and d!1766109 d!1766073)))

(declare-fun lambda!299865 () Int)

(assert (=> bs!1292134 (= lambda!299865 lambda!299861)))

(assert (=> d!1766109 (= (nullableZipper!1569 (set.union lt!2254829 lt!2254822)) (exists!2164 (set.union lt!2254829 lt!2254822) lambda!299865))))

(declare-fun bs!1292135 () Bool)

(assert (= bs!1292135 d!1766109))

(declare-fun m!6568482 () Bool)

(assert (=> bs!1292135 m!6568482))

(assert (=> b!5587207 d!1766109))

(declare-fun d!1766111 () Bool)

(assert (=> d!1766111 true))

(declare-fun setRes!37229 () Bool)

(assert (=> d!1766111 setRes!37229))

(declare-fun condSetEmpty!37229 () Bool)

(declare-fun res!2371029 () (Set Context!9916))

(assert (=> d!1766111 (= condSetEmpty!37229 (= res!2371029 (as set.empty (Set Context!9916))))))

(assert (=> d!1766111 (= (choose!42358 lt!2254808 lambda!299775) res!2371029)))

(declare-fun setIsEmpty!37229 () Bool)

(assert (=> setIsEmpty!37229 setRes!37229))

(declare-fun setNonEmpty!37229 () Bool)

(declare-fun tp!1545610 () Bool)

(declare-fun e!3447550 () Bool)

(declare-fun setElem!37229 () Context!9916)

(assert (=> setNonEmpty!37229 (= setRes!37229 (and tp!1545610 (inv!82183 setElem!37229) e!3447550))))

(declare-fun setRest!37229 () (Set Context!9916))

(assert (=> setNonEmpty!37229 (= res!2371029 (set.union (set.insert setElem!37229 (as set.empty (Set Context!9916))) setRest!37229))))

(declare-fun b!5587924 () Bool)

(declare-fun tp!1545611 () Bool)

(assert (=> b!5587924 (= e!3447550 tp!1545611)))

(assert (= (and d!1766111 condSetEmpty!37229) setIsEmpty!37229))

(assert (= (and d!1766111 (not condSetEmpty!37229)) setNonEmpty!37229))

(assert (= setNonEmpty!37229 b!5587924))

(declare-fun m!6568484 () Bool)

(assert (=> setNonEmpty!37229 m!6568484))

(assert (=> d!1765865 d!1766111))

(assert (=> d!1765809 d!1765821))

(declare-fun d!1766113 () Bool)

(assert (=> d!1766113 (= (flatMap!1187 z!1189 lambda!299775) (dynLambda!24597 lambda!299775 (h!69347 zl!343)))))

(assert (=> d!1766113 true))

(declare-fun _$13!2172 () Unit!155688)

(assert (=> d!1766113 (= (choose!42357 z!1189 (h!69347 zl!343) lambda!299775) _$13!2172)))

(declare-fun b_lambda!211739 () Bool)

(assert (=> (not b_lambda!211739) (not d!1766113)))

(declare-fun bs!1292136 () Bool)

(assert (= bs!1292136 d!1766113))

(assert (=> bs!1292136 m!6567610))

(assert (=> bs!1292136 m!6567726))

(assert (=> d!1765809 d!1766113))

(declare-fun d!1766115 () Bool)

(assert (=> d!1766115 (= (isEmpty!34716 (tail!11013 s!2326)) (is-Nil!62897 (tail!11013 s!2326)))))

(assert (=> b!5587116 d!1766115))

(declare-fun d!1766117 () Bool)

(assert (=> d!1766117 (= (tail!11013 s!2326) (t!376296 s!2326))))

(assert (=> b!5587116 d!1766117))

(declare-fun d!1766119 () Bool)

(assert (=> d!1766119 (= ($colon$colon!1637 (exprs!5458 lt!2254824) (ite (or c!978775 c!978779) (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (regTwo!31661 (regOne!31660 r!7292)))) (Cons!62898 (ite (or c!978775 c!978779) (regTwo!31660 (regTwo!31661 (regOne!31660 r!7292))) (regTwo!31661 (regOne!31660 r!7292))) (exprs!5458 lt!2254824)))))

(assert (=> bm!418207 d!1766119))

(declare-fun d!1766121 () Bool)

(assert (=> d!1766121 (= (isEmpty!34712 (tail!11012 (unfocusZipperList!1002 zl!343))) (is-Nil!62898 (tail!11012 (unfocusZipperList!1002 zl!343))))))

(assert (=> b!5587020 d!1766121))

(declare-fun d!1766123 () Bool)

(assert (=> d!1766123 (= (tail!11012 (unfocusZipperList!1002 zl!343)) (t!376297 (unfocusZipperList!1002 zl!343)))))

(assert (=> b!5587020 d!1766123))

(declare-fun bm!418330 () Bool)

(declare-fun call!418336 () (Set Context!9916))

(declare-fun call!418337 () (Set Context!9916))

(assert (=> bm!418330 (= call!418336 call!418337)))

(declare-fun b!5587925 () Bool)

(declare-fun e!3447555 () (Set Context!9916))

(declare-fun call!418339 () (Set Context!9916))

(assert (=> b!5587925 (= e!3447555 (set.union call!418339 call!418336))))

(declare-fun c!978976 () Bool)

(declare-fun call!418340 () List!63022)

(declare-fun bm!418331 () Bool)

(assert (=> bm!418331 (= call!418339 (derivationStepZipperDown!916 (ite c!978976 (regOne!31661 (h!69346 (exprs!5458 lt!2254824))) (regOne!31660 (h!69346 (exprs!5458 lt!2254824)))) (ite c!978976 (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (Context!9917 call!418340)) (h!69345 s!2326)))))

(declare-fun bm!418332 () Bool)

(declare-fun call!418335 () (Set Context!9916))

(assert (=> bm!418332 (= call!418335 call!418336)))

(declare-fun d!1766125 () Bool)

(declare-fun c!978977 () Bool)

(assert (=> d!1766125 (= c!978977 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 lt!2254824))) (= (c!978676 (h!69346 (exprs!5458 lt!2254824))) (h!69345 s!2326))))))

(declare-fun e!3447551 () (Set Context!9916))

(assert (=> d!1766125 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 lt!2254824)) (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (h!69345 s!2326)) e!3447551)))

(declare-fun b!5587926 () Bool)

(declare-fun e!3447553 () (Set Context!9916))

(assert (=> b!5587926 (= e!3447551 e!3447553)))

(assert (=> b!5587926 (= c!978976 (is-Union!15574 (h!69346 (exprs!5458 lt!2254824))))))

(declare-fun c!978978 () Bool)

(declare-fun c!978974 () Bool)

(declare-fun bm!418333 () Bool)

(declare-fun call!418338 () List!63022)

(assert (=> bm!418333 (= call!418337 (derivationStepZipperDown!916 (ite c!978976 (regTwo!31661 (h!69346 (exprs!5458 lt!2254824))) (ite c!978974 (regTwo!31660 (h!69346 (exprs!5458 lt!2254824))) (ite c!978978 (regOne!31660 (h!69346 (exprs!5458 lt!2254824))) (reg!15903 (h!69346 (exprs!5458 lt!2254824)))))) (ite (or c!978976 c!978974) (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (Context!9917 call!418338)) (h!69345 s!2326)))))

(declare-fun b!5587927 () Bool)

(declare-fun e!3447552 () Bool)

(assert (=> b!5587927 (= c!978974 e!3447552)))

(declare-fun res!2371030 () Bool)

(assert (=> b!5587927 (=> (not res!2371030) (not e!3447552))))

(assert (=> b!5587927 (= res!2371030 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254824))))))

(assert (=> b!5587927 (= e!3447553 e!3447555)))

(declare-fun b!5587928 () Bool)

(declare-fun e!3447554 () (Set Context!9916))

(assert (=> b!5587928 (= e!3447554 call!418335)))

(declare-fun b!5587929 () Bool)

(assert (=> b!5587929 (= e!3447555 e!3447554)))

(assert (=> b!5587929 (= c!978978 (is-Concat!24419 (h!69346 (exprs!5458 lt!2254824))))))

(declare-fun b!5587930 () Bool)

(assert (=> b!5587930 (= e!3447552 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 lt!2254824)))))))

(declare-fun b!5587931 () Bool)

(assert (=> b!5587931 (= e!3447551 (set.insert (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (as set.empty (Set Context!9916))))))

(declare-fun b!5587932 () Bool)

(declare-fun e!3447556 () (Set Context!9916))

(assert (=> b!5587932 (= e!3447556 call!418335)))

(declare-fun b!5587933 () Bool)

(assert (=> b!5587933 (= e!3447553 (set.union call!418339 call!418337))))

(declare-fun b!5587934 () Bool)

(declare-fun c!978975 () Bool)

(assert (=> b!5587934 (= c!978975 (is-Star!15574 (h!69346 (exprs!5458 lt!2254824))))))

(assert (=> b!5587934 (= e!3447554 e!3447556)))

(declare-fun bm!418334 () Bool)

(assert (=> bm!418334 (= call!418340 ($colon$colon!1637 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824)))) (ite (or c!978974 c!978978) (regTwo!31660 (h!69346 (exprs!5458 lt!2254824))) (h!69346 (exprs!5458 lt!2254824)))))))

(declare-fun bm!418335 () Bool)

(assert (=> bm!418335 (= call!418338 call!418340)))

(declare-fun b!5587935 () Bool)

(assert (=> b!5587935 (= e!3447556 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766125 c!978977) b!5587931))

(assert (= (and d!1766125 (not c!978977)) b!5587926))

(assert (= (and b!5587926 c!978976) b!5587933))

(assert (= (and b!5587926 (not c!978976)) b!5587927))

(assert (= (and b!5587927 res!2371030) b!5587930))

(assert (= (and b!5587927 c!978974) b!5587925))

(assert (= (and b!5587927 (not c!978974)) b!5587929))

(assert (= (and b!5587929 c!978978) b!5587928))

(assert (= (and b!5587929 (not c!978978)) b!5587934))

(assert (= (and b!5587934 c!978975) b!5587932))

(assert (= (and b!5587934 (not c!978975)) b!5587935))

(assert (= (or b!5587928 b!5587932) bm!418335))

(assert (= (or b!5587928 b!5587932) bm!418332))

(assert (= (or b!5587925 bm!418335) bm!418334))

(assert (= (or b!5587925 bm!418332) bm!418330))

(assert (= (or b!5587933 bm!418330) bm!418333))

(assert (= (or b!5587933 b!5587925) bm!418331))

(declare-fun m!6568486 () Bool)

(assert (=> bm!418334 m!6568486))

(declare-fun m!6568488 () Bool)

(assert (=> bm!418333 m!6568488))

(declare-fun m!6568490 () Bool)

(assert (=> b!5587931 m!6568490))

(declare-fun m!6568492 () Bool)

(assert (=> bm!418331 m!6568492))

(declare-fun m!6568494 () Bool)

(assert (=> b!5587930 m!6568494))

(assert (=> bm!418164 d!1766125))

(declare-fun bs!1292137 () Bool)

(declare-fun d!1766127 () Bool)

(assert (= bs!1292137 (and d!1766127 d!1766073)))

(declare-fun lambda!299866 () Int)

(assert (=> bs!1292137 (= lambda!299866 lambda!299861)))

(declare-fun bs!1292138 () Bool)

(assert (= bs!1292138 (and d!1766127 d!1766109)))

(assert (=> bs!1292138 (= lambda!299866 lambda!299865)))

(assert (=> d!1766127 (= (nullableZipper!1569 lt!2254822) (exists!2164 lt!2254822 lambda!299866))))

(declare-fun bs!1292139 () Bool)

(assert (= bs!1292139 d!1766127))

(declare-fun m!6568496 () Bool)

(assert (=> bs!1292139 m!6568496))

(assert (=> b!5587204 d!1766127))

(declare-fun bs!1292140 () Bool)

(declare-fun d!1766129 () Bool)

(assert (= bs!1292140 (and d!1766129 d!1766073)))

(declare-fun lambda!299867 () Int)

(assert (=> bs!1292140 (= lambda!299867 lambda!299861)))

(declare-fun bs!1292141 () Bool)

(assert (= bs!1292141 (and d!1766129 d!1766109)))

(assert (=> bs!1292141 (= lambda!299867 lambda!299865)))

(declare-fun bs!1292142 () Bool)

(assert (= bs!1292142 (and d!1766129 d!1766127)))

(assert (=> bs!1292142 (= lambda!299867 lambda!299866)))

(assert (=> d!1766129 (= (nullableZipper!1569 lt!2254813) (exists!2164 lt!2254813 lambda!299867))))

(declare-fun bs!1292143 () Bool)

(assert (= bs!1292143 d!1766129))

(declare-fun m!6568498 () Bool)

(assert (=> bs!1292143 m!6568498))

(assert (=> b!5587261 d!1766129))

(declare-fun d!1766131 () Bool)

(assert (=> d!1766131 (= (nullable!5606 (reg!15903 r!7292)) (nullableFct!1715 (reg!15903 r!7292)))))

(declare-fun bs!1292144 () Bool)

(assert (= bs!1292144 d!1766131))

(declare-fun m!6568500 () Bool)

(assert (=> bs!1292144 m!6568500))

(assert (=> b!5587196 d!1766131))

(assert (=> d!1765847 d!1766077))

(declare-fun b!5587936 () Bool)

(declare-fun e!3447563 () Bool)

(assert (=> b!5587936 (= e!3447563 (= (head!11918 Nil!62897) (c!978676 (regOne!31660 r!7292))))))

(declare-fun b!5587938 () Bool)

(declare-fun res!2371036 () Bool)

(declare-fun e!3447558 () Bool)

(assert (=> b!5587938 (=> res!2371036 e!3447558)))

(assert (=> b!5587938 (= res!2371036 (not (isEmpty!34716 (tail!11013 Nil!62897))))))

(declare-fun b!5587939 () Bool)

(declare-fun e!3447560 () Bool)

(assert (=> b!5587939 (= e!3447560 (nullable!5606 (regOne!31660 r!7292)))))

(declare-fun b!5587940 () Bool)

(declare-fun res!2371035 () Bool)

(assert (=> b!5587940 (=> (not res!2371035) (not e!3447563))))

(assert (=> b!5587940 (= res!2371035 (isEmpty!34716 (tail!11013 Nil!62897)))))

(declare-fun b!5587941 () Bool)

(declare-fun e!3447562 () Bool)

(declare-fun e!3447559 () Bool)

(assert (=> b!5587941 (= e!3447562 e!3447559)))

(declare-fun c!978979 () Bool)

(assert (=> b!5587941 (= c!978979 (is-EmptyLang!15574 (regOne!31660 r!7292)))))

(declare-fun b!5587942 () Bool)

(declare-fun lt!2255018 () Bool)

(declare-fun call!418341 () Bool)

(assert (=> b!5587942 (= e!3447562 (= lt!2255018 call!418341))))

(declare-fun b!5587943 () Bool)

(declare-fun res!2371037 () Bool)

(declare-fun e!3447561 () Bool)

(assert (=> b!5587943 (=> res!2371037 e!3447561)))

(assert (=> b!5587943 (= res!2371037 e!3447563)))

(declare-fun res!2371034 () Bool)

(assert (=> b!5587943 (=> (not res!2371034) (not e!3447563))))

(assert (=> b!5587943 (= res!2371034 lt!2255018)))

(declare-fun b!5587944 () Bool)

(declare-fun e!3447557 () Bool)

(assert (=> b!5587944 (= e!3447561 e!3447557)))

(declare-fun res!2371032 () Bool)

(assert (=> b!5587944 (=> (not res!2371032) (not e!3447557))))

(assert (=> b!5587944 (= res!2371032 (not lt!2255018))))

(declare-fun b!5587945 () Bool)

(declare-fun res!2371033 () Bool)

(assert (=> b!5587945 (=> (not res!2371033) (not e!3447563))))

(assert (=> b!5587945 (= res!2371033 (not call!418341))))

(declare-fun b!5587946 () Bool)

(declare-fun res!2371031 () Bool)

(assert (=> b!5587946 (=> res!2371031 e!3447561)))

(assert (=> b!5587946 (= res!2371031 (not (is-ElementMatch!15574 (regOne!31660 r!7292))))))

(assert (=> b!5587946 (= e!3447559 e!3447561)))

(declare-fun b!5587947 () Bool)

(assert (=> b!5587947 (= e!3447559 (not lt!2255018))))

(declare-fun d!1766133 () Bool)

(assert (=> d!1766133 e!3447562))

(declare-fun c!978981 () Bool)

(assert (=> d!1766133 (= c!978981 (is-EmptyExpr!15574 (regOne!31660 r!7292)))))

(assert (=> d!1766133 (= lt!2255018 e!3447560)))

(declare-fun c!978980 () Bool)

(assert (=> d!1766133 (= c!978980 (isEmpty!34716 Nil!62897))))

(assert (=> d!1766133 (validRegex!7310 (regOne!31660 r!7292))))

(assert (=> d!1766133 (= (matchR!7759 (regOne!31660 r!7292) Nil!62897) lt!2255018)))

(declare-fun b!5587937 () Bool)

(assert (=> b!5587937 (= e!3447558 (not (= (head!11918 Nil!62897) (c!978676 (regOne!31660 r!7292)))))))

(declare-fun b!5587948 () Bool)

(assert (=> b!5587948 (= e!3447560 (matchR!7759 (derivativeStep!4422 (regOne!31660 r!7292) (head!11918 Nil!62897)) (tail!11013 Nil!62897)))))

(declare-fun bm!418336 () Bool)

(assert (=> bm!418336 (= call!418341 (isEmpty!34716 Nil!62897))))

(declare-fun b!5587949 () Bool)

(assert (=> b!5587949 (= e!3447557 e!3447558)))

(declare-fun res!2371038 () Bool)

(assert (=> b!5587949 (=> res!2371038 e!3447558)))

(assert (=> b!5587949 (= res!2371038 call!418341)))

(assert (= (and d!1766133 c!978980) b!5587939))

(assert (= (and d!1766133 (not c!978980)) b!5587948))

(assert (= (and d!1766133 c!978981) b!5587942))

(assert (= (and d!1766133 (not c!978981)) b!5587941))

(assert (= (and b!5587941 c!978979) b!5587947))

(assert (= (and b!5587941 (not c!978979)) b!5587946))

(assert (= (and b!5587946 (not res!2371031)) b!5587943))

(assert (= (and b!5587943 res!2371034) b!5587945))

(assert (= (and b!5587945 res!2371033) b!5587940))

(assert (= (and b!5587940 res!2371035) b!5587936))

(assert (= (and b!5587943 (not res!2371037)) b!5587944))

(assert (= (and b!5587944 res!2371032) b!5587949))

(assert (= (and b!5587949 (not res!2371038)) b!5587938))

(assert (= (and b!5587938 (not res!2371036)) b!5587937))

(assert (= (or b!5587942 b!5587949 b!5587945) bm!418336))

(declare-fun m!6568502 () Bool)

(assert (=> bm!418336 m!6568502))

(declare-fun m!6568504 () Bool)

(assert (=> b!5587940 m!6568504))

(assert (=> b!5587940 m!6568504))

(declare-fun m!6568506 () Bool)

(assert (=> b!5587940 m!6568506))

(assert (=> b!5587939 m!6568290))

(declare-fun m!6568508 () Bool)

(assert (=> b!5587948 m!6568508))

(assert (=> b!5587948 m!6568508))

(declare-fun m!6568510 () Bool)

(assert (=> b!5587948 m!6568510))

(assert (=> b!5587948 m!6568504))

(assert (=> b!5587948 m!6568510))

(assert (=> b!5587948 m!6568504))

(declare-fun m!6568512 () Bool)

(assert (=> b!5587948 m!6568512))

(assert (=> d!1766133 m!6568502))

(assert (=> d!1766133 m!6567848))

(assert (=> b!5587938 m!6568504))

(assert (=> b!5587938 m!6568504))

(assert (=> b!5587938 m!6568506))

(assert (=> b!5587937 m!6568508))

(assert (=> b!5587936 m!6568508))

(assert (=> d!1765847 d!1766133))

(assert (=> d!1765847 d!1766047))

(declare-fun bs!1292145 () Bool)

(declare-fun d!1766135 () Bool)

(assert (= bs!1292145 (and d!1766135 d!1765895)))

(declare-fun lambda!299868 () Int)

(assert (=> bs!1292145 (= lambda!299868 lambda!299818)))

(declare-fun bs!1292146 () Bool)

(assert (= bs!1292146 (and d!1766135 d!1765827)))

(assert (=> bs!1292146 (= lambda!299868 lambda!299796)))

(declare-fun bs!1292147 () Bool)

(assert (= bs!1292147 (and d!1766135 d!1765891)))

(assert (=> bs!1292147 (= lambda!299868 lambda!299817)))

(declare-fun bs!1292148 () Bool)

(assert (= bs!1292148 (and d!1766135 d!1765831)))

(assert (=> bs!1292148 (= lambda!299868 lambda!299799)))

(declare-fun bs!1292149 () Bool)

(assert (= bs!1292149 (and d!1766135 d!1766017)))

(assert (=> bs!1292149 (= lambda!299868 lambda!299847)))

(declare-fun bs!1292150 () Bool)

(assert (= bs!1292150 (and d!1766135 d!1765825)))

(assert (=> bs!1292150 (= lambda!299868 lambda!299793)))

(declare-fun b!5587950 () Bool)

(declare-fun e!3447566 () Regex!15574)

(assert (=> b!5587950 (= e!3447566 EmptyLang!15574)))

(declare-fun b!5587951 () Bool)

(declare-fun e!3447565 () Bool)

(declare-fun lt!2255019 () Regex!15574)

(assert (=> b!5587951 (= e!3447565 (isUnion!568 lt!2255019))))

(declare-fun e!3447564 () Bool)

(assert (=> d!1766135 e!3447564))

(declare-fun res!2371040 () Bool)

(assert (=> d!1766135 (=> (not res!2371040) (not e!3447564))))

(assert (=> d!1766135 (= res!2371040 (validRegex!7310 lt!2255019))))

(declare-fun e!3447568 () Regex!15574)

(assert (=> d!1766135 (= lt!2255019 e!3447568)))

(declare-fun c!978985 () Bool)

(declare-fun e!3447569 () Bool)

(assert (=> d!1766135 (= c!978985 e!3447569)))

(declare-fun res!2371039 () Bool)

(assert (=> d!1766135 (=> (not res!2371039) (not e!3447569))))

(assert (=> d!1766135 (= res!2371039 (is-Cons!62898 (t!376297 (unfocusZipperList!1002 zl!343))))))

(assert (=> d!1766135 (forall!14740 (t!376297 (unfocusZipperList!1002 zl!343)) lambda!299868)))

(assert (=> d!1766135 (= (generalisedUnion!1437 (t!376297 (unfocusZipperList!1002 zl!343))) lt!2255019)))

(declare-fun b!5587952 () Bool)

(declare-fun e!3447567 () Bool)

(assert (=> b!5587952 (= e!3447567 (isEmptyLang!1138 lt!2255019))))

(declare-fun b!5587953 () Bool)

(assert (=> b!5587953 (= e!3447568 (h!69346 (t!376297 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587954 () Bool)

(assert (=> b!5587954 (= e!3447565 (= lt!2255019 (head!11917 (t!376297 (unfocusZipperList!1002 zl!343)))))))

(declare-fun b!5587955 () Bool)

(assert (=> b!5587955 (= e!3447566 (Union!15574 (h!69346 (t!376297 (unfocusZipperList!1002 zl!343))) (generalisedUnion!1437 (t!376297 (t!376297 (unfocusZipperList!1002 zl!343))))))))

(declare-fun b!5587956 () Bool)

(assert (=> b!5587956 (= e!3447564 e!3447567)))

(declare-fun c!978982 () Bool)

(assert (=> b!5587956 (= c!978982 (isEmpty!34712 (t!376297 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587957 () Bool)

(assert (=> b!5587957 (= e!3447569 (isEmpty!34712 (t!376297 (t!376297 (unfocusZipperList!1002 zl!343)))))))

(declare-fun b!5587958 () Bool)

(assert (=> b!5587958 (= e!3447568 e!3447566)))

(declare-fun c!978983 () Bool)

(assert (=> b!5587958 (= c!978983 (is-Cons!62898 (t!376297 (unfocusZipperList!1002 zl!343))))))

(declare-fun b!5587959 () Bool)

(assert (=> b!5587959 (= e!3447567 e!3447565)))

(declare-fun c!978984 () Bool)

(assert (=> b!5587959 (= c!978984 (isEmpty!34712 (tail!11012 (t!376297 (unfocusZipperList!1002 zl!343)))))))

(assert (= (and d!1766135 res!2371039) b!5587957))

(assert (= (and d!1766135 c!978985) b!5587953))

(assert (= (and d!1766135 (not c!978985)) b!5587958))

(assert (= (and b!5587958 c!978983) b!5587955))

(assert (= (and b!5587958 (not c!978983)) b!5587950))

(assert (= (and d!1766135 res!2371040) b!5587956))

(assert (= (and b!5587956 c!978982) b!5587952))

(assert (= (and b!5587956 (not c!978982)) b!5587959))

(assert (= (and b!5587959 c!978984) b!5587954))

(assert (= (and b!5587959 (not c!978984)) b!5587951))

(declare-fun m!6568514 () Bool)

(assert (=> b!5587957 m!6568514))

(assert (=> b!5587956 m!6567764))

(declare-fun m!6568516 () Bool)

(assert (=> b!5587959 m!6568516))

(assert (=> b!5587959 m!6568516))

(declare-fun m!6568518 () Bool)

(assert (=> b!5587959 m!6568518))

(declare-fun m!6568520 () Bool)

(assert (=> b!5587955 m!6568520))

(declare-fun m!6568522 () Bool)

(assert (=> d!1766135 m!6568522))

(declare-fun m!6568524 () Bool)

(assert (=> d!1766135 m!6568524))

(declare-fun m!6568526 () Bool)

(assert (=> b!5587951 m!6568526))

(declare-fun m!6568528 () Bool)

(assert (=> b!5587954 m!6568528))

(declare-fun m!6568530 () Bool)

(assert (=> b!5587952 m!6568530))

(assert (=> b!5587016 d!1766135))

(declare-fun d!1766137 () Bool)

(assert (=> d!1766137 true))

(assert (=> d!1766137 true))

(declare-fun res!2371041 () Bool)

(assert (=> d!1766137 (= (choose!42362 lambda!299773) res!2371041)))

(assert (=> d!1765849 d!1766137))

(declare-fun b!5587960 () Bool)

(declare-fun e!3447574 () Bool)

(declare-fun call!418342 () Bool)

(assert (=> b!5587960 (= e!3447574 call!418342)))

(declare-fun b!5587961 () Bool)

(declare-fun e!3447573 () Bool)

(declare-fun e!3447572 () Bool)

(assert (=> b!5587961 (= e!3447573 e!3447572)))

(declare-fun res!2371043 () Bool)

(assert (=> b!5587961 (= res!2371043 (not (nullable!5606 (reg!15903 lt!2254920))))))

(assert (=> b!5587961 (=> (not res!2371043) (not e!3447572))))

(declare-fun bm!418337 () Bool)

(declare-fun c!978987 () Bool)

(assert (=> bm!418337 (= call!418342 (validRegex!7310 (ite c!978987 (regTwo!31661 lt!2254920) (regTwo!31660 lt!2254920))))))

(declare-fun b!5587962 () Bool)

(declare-fun e!3447576 () Bool)

(declare-fun e!3447570 () Bool)

(assert (=> b!5587962 (= e!3447576 e!3447570)))

(declare-fun res!2371046 () Bool)

(assert (=> b!5587962 (=> (not res!2371046) (not e!3447570))))

(declare-fun call!418343 () Bool)

(assert (=> b!5587962 (= res!2371046 call!418343)))

(declare-fun b!5587963 () Bool)

(declare-fun call!418344 () Bool)

(assert (=> b!5587963 (= e!3447572 call!418344)))

(declare-fun d!1766139 () Bool)

(declare-fun res!2371045 () Bool)

(declare-fun e!3447575 () Bool)

(assert (=> d!1766139 (=> res!2371045 e!3447575)))

(assert (=> d!1766139 (= res!2371045 (is-ElementMatch!15574 lt!2254920))))

(assert (=> d!1766139 (= (validRegex!7310 lt!2254920) e!3447575)))

(declare-fun b!5587964 () Bool)

(declare-fun res!2371042 () Bool)

(assert (=> b!5587964 (=> (not res!2371042) (not e!3447574))))

(assert (=> b!5587964 (= res!2371042 call!418343)))

(declare-fun e!3447571 () Bool)

(assert (=> b!5587964 (= e!3447571 e!3447574)))

(declare-fun bm!418338 () Bool)

(assert (=> bm!418338 (= call!418343 call!418344)))

(declare-fun b!5587965 () Bool)

(assert (=> b!5587965 (= e!3447575 e!3447573)))

(declare-fun c!978986 () Bool)

(assert (=> b!5587965 (= c!978986 (is-Star!15574 lt!2254920))))

(declare-fun b!5587966 () Bool)

(declare-fun res!2371044 () Bool)

(assert (=> b!5587966 (=> res!2371044 e!3447576)))

(assert (=> b!5587966 (= res!2371044 (not (is-Concat!24419 lt!2254920)))))

(assert (=> b!5587966 (= e!3447571 e!3447576)))

(declare-fun bm!418339 () Bool)

(assert (=> bm!418339 (= call!418344 (validRegex!7310 (ite c!978986 (reg!15903 lt!2254920) (ite c!978987 (regOne!31661 lt!2254920) (regOne!31660 lt!2254920)))))))

(declare-fun b!5587967 () Bool)

(assert (=> b!5587967 (= e!3447573 e!3447571)))

(assert (=> b!5587967 (= c!978987 (is-Union!15574 lt!2254920))))

(declare-fun b!5587968 () Bool)

(assert (=> b!5587968 (= e!3447570 call!418342)))

(assert (= (and d!1766139 (not res!2371045)) b!5587965))

(assert (= (and b!5587965 c!978986) b!5587961))

(assert (= (and b!5587965 (not c!978986)) b!5587967))

(assert (= (and b!5587961 res!2371043) b!5587963))

(assert (= (and b!5587967 c!978987) b!5587964))

(assert (= (and b!5587967 (not c!978987)) b!5587966))

(assert (= (and b!5587964 res!2371042) b!5587960))

(assert (= (and b!5587966 (not res!2371044)) b!5587962))

(assert (= (and b!5587962 res!2371046) b!5587968))

(assert (= (or b!5587960 b!5587968) bm!418337))

(assert (= (or b!5587964 b!5587962) bm!418338))

(assert (= (or b!5587963 bm!418338) bm!418339))

(declare-fun m!6568532 () Bool)

(assert (=> b!5587961 m!6568532))

(declare-fun m!6568534 () Bool)

(assert (=> bm!418337 m!6568534))

(declare-fun m!6568536 () Bool)

(assert (=> bm!418339 m!6568536))

(assert (=> d!1765823 d!1766139))

(assert (=> d!1765823 d!1765825))

(assert (=> d!1765823 d!1765827))

(declare-fun d!1766141 () Bool)

(assert (=> d!1766141 (= (isEmptyLang!1138 lt!2254923) (is-EmptyLang!15574 lt!2254923))))

(assert (=> b!5587013 d!1766141))

(declare-fun bs!1292151 () Bool)

(declare-fun b!5587974 () Bool)

(assert (= bs!1292151 (and b!5587974 b!5587755)))

(declare-fun lambda!299869 () Int)

(assert (=> bs!1292151 (= (and (= (reg!15903 (regTwo!31661 r!7292)) (reg!15903 (regOne!31661 r!7292))) (= (regTwo!31661 r!7292) (regOne!31661 r!7292))) (= lambda!299869 lambda!299848))))

(declare-fun bs!1292152 () Bool)

(assert (= bs!1292152 (and b!5587974 d!1765853)))

(assert (=> bs!1292152 (not (= lambda!299869 lambda!299808))))

(declare-fun bs!1292153 () Bool)

(assert (= bs!1292153 (and b!5587974 d!1765855)))

(assert (=> bs!1292153 (not (= lambda!299869 lambda!299814))))

(declare-fun bs!1292154 () Bool)

(assert (= bs!1292154 (and b!5587974 d!1766045)))

(assert (=> bs!1292154 (not (= lambda!299869 lambda!299855))))

(assert (=> bs!1292153 (not (= lambda!299869 lambda!299813))))

(declare-fun bs!1292155 () Bool)

(assert (= bs!1292155 (and b!5587974 b!5587085)))

(assert (=> bs!1292155 (not (= lambda!299869 lambda!299805))))

(declare-fun bs!1292156 () Bool)

(assert (= bs!1292156 (and b!5587974 d!1766083)))

(assert (=> bs!1292156 (not (= lambda!299869 lambda!299864))))

(declare-fun bs!1292157 () Bool)

(assert (= bs!1292157 (and b!5587974 b!5586785)))

(assert (=> bs!1292157 (not (= lambda!299869 lambda!299773))))

(declare-fun bs!1292158 () Bool)

(assert (= bs!1292158 (and b!5587974 b!5587080)))

(assert (=> bs!1292158 (= (and (= (reg!15903 (regTwo!31661 r!7292)) (reg!15903 r!7292)) (= (regTwo!31661 r!7292) r!7292)) (= lambda!299869 lambda!299804))))

(assert (=> bs!1292154 (not (= lambda!299869 lambda!299854))))

(declare-fun bs!1292159 () Bool)

(assert (= bs!1292159 (and b!5587974 b!5587760)))

(assert (=> bs!1292159 (not (= lambda!299869 lambda!299849))))

(assert (=> bs!1292157 (not (= lambda!299869 lambda!299774))))

(assert (=> b!5587974 true))

(assert (=> b!5587974 true))

(declare-fun bs!1292160 () Bool)

(declare-fun b!5587979 () Bool)

(assert (= bs!1292160 (and b!5587979 b!5587755)))

(declare-fun lambda!299870 () Int)

(assert (=> bs!1292160 (not (= lambda!299870 lambda!299848))))

(declare-fun bs!1292161 () Bool)

(assert (= bs!1292161 (and b!5587979 d!1765853)))

(assert (=> bs!1292161 (not (= lambda!299870 lambda!299808))))

(declare-fun bs!1292162 () Bool)

(assert (= bs!1292162 (and b!5587979 d!1765855)))

(assert (=> bs!1292162 (= (and (= (regOne!31660 (regTwo!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regTwo!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299870 lambda!299814))))

(declare-fun bs!1292163 () Bool)

(assert (= bs!1292163 (and b!5587979 b!5587974)))

(assert (=> bs!1292163 (not (= lambda!299870 lambda!299869))))

(declare-fun bs!1292164 () Bool)

(assert (= bs!1292164 (and b!5587979 d!1766045)))

(assert (=> bs!1292164 (= (and (= (regOne!31660 (regTwo!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regTwo!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299870 lambda!299855))))

(assert (=> bs!1292162 (not (= lambda!299870 lambda!299813))))

(declare-fun bs!1292165 () Bool)

(assert (= bs!1292165 (and b!5587979 b!5587085)))

(assert (=> bs!1292165 (= (and (= (regOne!31660 (regTwo!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regTwo!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299870 lambda!299805))))

(declare-fun bs!1292166 () Bool)

(assert (= bs!1292166 (and b!5587979 d!1766083)))

(assert (=> bs!1292166 (not (= lambda!299870 lambda!299864))))

(declare-fun bs!1292167 () Bool)

(assert (= bs!1292167 (and b!5587979 b!5586785)))

(assert (=> bs!1292167 (not (= lambda!299870 lambda!299773))))

(declare-fun bs!1292168 () Bool)

(assert (= bs!1292168 (and b!5587979 b!5587080)))

(assert (=> bs!1292168 (not (= lambda!299870 lambda!299804))))

(assert (=> bs!1292164 (not (= lambda!299870 lambda!299854))))

(declare-fun bs!1292169 () Bool)

(assert (= bs!1292169 (and b!5587979 b!5587760)))

(assert (=> bs!1292169 (= (and (= (regOne!31660 (regTwo!31661 r!7292)) (regOne!31660 (regOne!31661 r!7292))) (= (regTwo!31660 (regTwo!31661 r!7292)) (regTwo!31660 (regOne!31661 r!7292)))) (= lambda!299870 lambda!299849))))

(assert (=> bs!1292167 (= (and (= (regOne!31660 (regTwo!31661 r!7292)) (regOne!31660 r!7292)) (= (regTwo!31660 (regTwo!31661 r!7292)) (regTwo!31660 r!7292))) (= lambda!299870 lambda!299774))))

(assert (=> b!5587979 true))

(assert (=> b!5587979 true))

(declare-fun d!1766143 () Bool)

(declare-fun c!978990 () Bool)

(assert (=> d!1766143 (= c!978990 (is-EmptyExpr!15574 (regTwo!31661 r!7292)))))

(declare-fun e!3447583 () Bool)

(assert (=> d!1766143 (= (matchRSpec!2677 (regTwo!31661 r!7292) s!2326) e!3447583)))

(declare-fun call!418345 () Bool)

(declare-fun bm!418340 () Bool)

(declare-fun c!978991 () Bool)

(assert (=> bm!418340 (= call!418345 (Exists!2674 (ite c!978991 lambda!299869 lambda!299870)))))

(declare-fun b!5587969 () Bool)

(declare-fun e!3447577 () Bool)

(assert (=> b!5587969 (= e!3447583 e!3447577)))

(declare-fun res!2371047 () Bool)

(assert (=> b!5587969 (= res!2371047 (not (is-EmptyLang!15574 (regTwo!31661 r!7292))))))

(assert (=> b!5587969 (=> (not res!2371047) (not e!3447577))))

(declare-fun b!5587970 () Bool)

(declare-fun e!3447581 () Bool)

(declare-fun e!3447582 () Bool)

(assert (=> b!5587970 (= e!3447581 e!3447582)))

(declare-fun res!2371049 () Bool)

(assert (=> b!5587970 (= res!2371049 (matchRSpec!2677 (regOne!31661 (regTwo!31661 r!7292)) s!2326))))

(assert (=> b!5587970 (=> res!2371049 e!3447582)))

(declare-fun b!5587971 () Bool)

(declare-fun c!978989 () Bool)

(assert (=> b!5587971 (= c!978989 (is-Union!15574 (regTwo!31661 r!7292)))))

(declare-fun e!3447578 () Bool)

(assert (=> b!5587971 (= e!3447578 e!3447581)))

(declare-fun b!5587972 () Bool)

(declare-fun call!418346 () Bool)

(assert (=> b!5587972 (= e!3447583 call!418346)))

(declare-fun b!5587973 () Bool)

(declare-fun c!978988 () Bool)

(assert (=> b!5587973 (= c!978988 (is-ElementMatch!15574 (regTwo!31661 r!7292)))))

(assert (=> b!5587973 (= e!3447577 e!3447578)))

(declare-fun e!3447580 () Bool)

(assert (=> b!5587974 (= e!3447580 call!418345)))

(declare-fun b!5587975 () Bool)

(declare-fun res!2371048 () Bool)

(assert (=> b!5587975 (=> res!2371048 e!3447580)))

(assert (=> b!5587975 (= res!2371048 call!418346)))

(declare-fun e!3447579 () Bool)

(assert (=> b!5587975 (= e!3447579 e!3447580)))

(declare-fun b!5587976 () Bool)

(assert (=> b!5587976 (= e!3447582 (matchRSpec!2677 (regTwo!31661 (regTwo!31661 r!7292)) s!2326))))

(declare-fun b!5587977 () Bool)

(assert (=> b!5587977 (= e!3447578 (= s!2326 (Cons!62897 (c!978676 (regTwo!31661 r!7292)) Nil!62897)))))

(declare-fun b!5587978 () Bool)

(assert (=> b!5587978 (= e!3447581 e!3447579)))

(assert (=> b!5587978 (= c!978991 (is-Star!15574 (regTwo!31661 r!7292)))))

(assert (=> b!5587979 (= e!3447579 call!418345)))

(declare-fun bm!418341 () Bool)

(assert (=> bm!418341 (= call!418346 (isEmpty!34716 s!2326))))

(assert (= (and d!1766143 c!978990) b!5587972))

(assert (= (and d!1766143 (not c!978990)) b!5587969))

(assert (= (and b!5587969 res!2371047) b!5587973))

(assert (= (and b!5587973 c!978988) b!5587977))

(assert (= (and b!5587973 (not c!978988)) b!5587971))

(assert (= (and b!5587971 c!978989) b!5587970))

(assert (= (and b!5587971 (not c!978989)) b!5587978))

(assert (= (and b!5587970 (not res!2371049)) b!5587976))

(assert (= (and b!5587978 c!978991) b!5587975))

(assert (= (and b!5587978 (not c!978991)) b!5587979))

(assert (= (and b!5587975 (not res!2371048)) b!5587974))

(assert (= (or b!5587974 b!5587979) bm!418340))

(assert (= (or b!5587972 b!5587975) bm!418341))

(declare-fun m!6568538 () Bool)

(assert (=> bm!418340 m!6568538))

(declare-fun m!6568540 () Bool)

(assert (=> b!5587970 m!6568540))

(declare-fun m!6568542 () Bool)

(assert (=> b!5587976 m!6568542))

(assert (=> bm!418341 m!6567828))

(assert (=> b!5587082 d!1766143))

(declare-fun d!1766145 () Bool)

(declare-fun c!978992 () Bool)

(assert (=> d!1766145 (= c!978992 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447584 () Bool)

(assert (=> d!1766145 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254829 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447584)))

(declare-fun b!5587980 () Bool)

(assert (=> b!5587980 (= e!3447584 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254829 (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5587981 () Bool)

(assert (=> b!5587981 (= e!3447584 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254829 (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766145 c!978992) b!5587980))

(assert (= (and d!1766145 (not c!978992)) b!5587981))

(assert (=> d!1766145 m!6567796))

(assert (=> d!1766145 m!6568354))

(assert (=> b!5587980 m!6567982))

(declare-fun m!6568544 () Bool)

(assert (=> b!5587980 m!6568544))

(assert (=> b!5587981 m!6567796))

(assert (=> b!5587981 m!6568358))

(assert (=> b!5587981 m!6567982))

(assert (=> b!5587981 m!6568358))

(declare-fun m!6568546 () Bool)

(assert (=> b!5587981 m!6568546))

(assert (=> b!5587981 m!6567796))

(assert (=> b!5587981 m!6568362))

(assert (=> b!5587981 m!6568546))

(assert (=> b!5587981 m!6568362))

(declare-fun m!6568548 () Bool)

(assert (=> b!5587981 m!6568548))

(assert (=> b!5587266 d!1766145))

(declare-fun bs!1292170 () Bool)

(declare-fun d!1766147 () Bool)

(assert (= bs!1292170 (and d!1766147 b!5586782)))

(declare-fun lambda!299871 () Int)

(assert (=> bs!1292170 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299871 lambda!299775))))

(declare-fun bs!1292171 () Bool)

(assert (= bs!1292171 (and d!1766147 d!1766057)))

(assert (=> bs!1292171 (= lambda!299871 lambda!299858)))

(assert (=> d!1766147 true))

(assert (=> d!1766147 (= (derivationStepZipper!1673 lt!2254829 (head!11918 (t!376296 s!2326))) (flatMap!1187 lt!2254829 lambda!299871))))

(declare-fun bs!1292172 () Bool)

(assert (= bs!1292172 d!1766147))

(declare-fun m!6568550 () Bool)

(assert (=> bs!1292172 m!6568550))

(assert (=> b!5587266 d!1766147))

(assert (=> b!5587266 d!1766059))

(assert (=> b!5587266 d!1766061))

(assert (=> d!1765883 d!1765885))

(assert (=> d!1765883 d!1765899))

(declare-fun e!3447585 () Bool)

(declare-fun d!1766149 () Bool)

(assert (=> d!1766149 (= (matchZipper!1712 (set.union lt!2254829 lt!2254822) (t!376296 s!2326)) e!3447585)))

(declare-fun res!2371050 () Bool)

(assert (=> d!1766149 (=> res!2371050 e!3447585)))

(assert (=> d!1766149 (= res!2371050 (matchZipper!1712 lt!2254829 (t!376296 s!2326)))))

(assert (=> d!1766149 true))

(declare-fun _$48!1150 () Unit!155688)

(assert (=> d!1766149 (= (choose!42360 lt!2254829 lt!2254822 (t!376296 s!2326)) _$48!1150)))

(declare-fun b!5587982 () Bool)

(assert (=> b!5587982 (= e!3447585 (matchZipper!1712 lt!2254822 (t!376296 s!2326)))))

(assert (= (and d!1766149 (not res!2371050)) b!5587982))

(assert (=> d!1766149 m!6567546))

(assert (=> d!1766149 m!6567586))

(assert (=> b!5587982 m!6567530))

(assert (=> d!1765883 d!1766149))

(declare-fun d!1766151 () Bool)

(declare-fun res!2371055 () Bool)

(declare-fun e!3447590 () Bool)

(assert (=> d!1766151 (=> res!2371055 e!3447590)))

(assert (=> d!1766151 (= res!2371055 (is-Nil!62899 lt!2254929))))

(assert (=> d!1766151 (= (noDuplicate!1550 lt!2254929) e!3447590)))

(declare-fun b!5587987 () Bool)

(declare-fun e!3447591 () Bool)

(assert (=> b!5587987 (= e!3447590 e!3447591)))

(declare-fun res!2371056 () Bool)

(assert (=> b!5587987 (=> (not res!2371056) (not e!3447591))))

(declare-fun contains!19808 (List!63023 Context!9916) Bool)

(assert (=> b!5587987 (= res!2371056 (not (contains!19808 (t!376298 lt!2254929) (h!69347 lt!2254929))))))

(declare-fun b!5587988 () Bool)

(assert (=> b!5587988 (= e!3447591 (noDuplicate!1550 (t!376298 lt!2254929)))))

(assert (= (and d!1766151 (not res!2371055)) b!5587987))

(assert (= (and b!5587987 res!2371056) b!5587988))

(declare-fun m!6568552 () Bool)

(assert (=> b!5587987 m!6568552))

(declare-fun m!6568554 () Bool)

(assert (=> b!5587988 m!6568554))

(assert (=> d!1765833 d!1766151))

(declare-fun d!1766153 () Bool)

(declare-fun e!3447598 () Bool)

(assert (=> d!1766153 e!3447598))

(declare-fun res!2371061 () Bool)

(assert (=> d!1766153 (=> (not res!2371061) (not e!3447598))))

(declare-fun res!2371062 () List!63023)

(assert (=> d!1766153 (= res!2371061 (noDuplicate!1550 res!2371062))))

(declare-fun e!3447599 () Bool)

(assert (=> d!1766153 e!3447599))

(assert (=> d!1766153 (= (choose!42359 z!1189) res!2371062)))

(declare-fun b!5587996 () Bool)

(declare-fun e!3447600 () Bool)

(declare-fun tp!1545616 () Bool)

(assert (=> b!5587996 (= e!3447600 tp!1545616)))

(declare-fun b!5587995 () Bool)

(declare-fun tp!1545617 () Bool)

(assert (=> b!5587995 (= e!3447599 (and (inv!82183 (h!69347 res!2371062)) e!3447600 tp!1545617))))

(declare-fun b!5587997 () Bool)

(assert (=> b!5587997 (= e!3447598 (= (content!11344 res!2371062) z!1189))))

(assert (= b!5587995 b!5587996))

(assert (= (and d!1766153 (is-Cons!62899 res!2371062)) b!5587995))

(assert (= (and d!1766153 res!2371061) b!5587997))

(declare-fun m!6568556 () Bool)

(assert (=> d!1766153 m!6568556))

(declare-fun m!6568558 () Bool)

(assert (=> b!5587995 m!6568558))

(declare-fun m!6568560 () Bool)

(assert (=> b!5587997 m!6568560))

(assert (=> d!1765833 d!1766153))

(declare-fun b!5587998 () Bool)

(declare-fun e!3447607 () Bool)

(assert (=> b!5587998 (= e!3447607 (= (head!11918 (tail!11013 s!2326)) (c!978676 (derivativeStep!4422 r!7292 (head!11918 s!2326)))))))

(declare-fun b!5588000 () Bool)

(declare-fun res!2371068 () Bool)

(declare-fun e!3447602 () Bool)

(assert (=> b!5588000 (=> res!2371068 e!3447602)))

(assert (=> b!5588000 (= res!2371068 (not (isEmpty!34716 (tail!11013 (tail!11013 s!2326)))))))

(declare-fun b!5588001 () Bool)

(declare-fun e!3447604 () Bool)

(assert (=> b!5588001 (= e!3447604 (nullable!5606 (derivativeStep!4422 r!7292 (head!11918 s!2326))))))

(declare-fun b!5588002 () Bool)

(declare-fun res!2371067 () Bool)

(assert (=> b!5588002 (=> (not res!2371067) (not e!3447607))))

(assert (=> b!5588002 (= res!2371067 (isEmpty!34716 (tail!11013 (tail!11013 s!2326))))))

(declare-fun b!5588003 () Bool)

(declare-fun e!3447606 () Bool)

(declare-fun e!3447603 () Bool)

(assert (=> b!5588003 (= e!3447606 e!3447603)))

(declare-fun c!978993 () Bool)

(assert (=> b!5588003 (= c!978993 (is-EmptyLang!15574 (derivativeStep!4422 r!7292 (head!11918 s!2326))))))

(declare-fun b!5588004 () Bool)

(declare-fun lt!2255020 () Bool)

(declare-fun call!418347 () Bool)

(assert (=> b!5588004 (= e!3447606 (= lt!2255020 call!418347))))

(declare-fun b!5588005 () Bool)

(declare-fun res!2371069 () Bool)

(declare-fun e!3447605 () Bool)

(assert (=> b!5588005 (=> res!2371069 e!3447605)))

(assert (=> b!5588005 (= res!2371069 e!3447607)))

(declare-fun res!2371066 () Bool)

(assert (=> b!5588005 (=> (not res!2371066) (not e!3447607))))

(assert (=> b!5588005 (= res!2371066 lt!2255020)))

(declare-fun b!5588006 () Bool)

(declare-fun e!3447601 () Bool)

(assert (=> b!5588006 (= e!3447605 e!3447601)))

(declare-fun res!2371064 () Bool)

(assert (=> b!5588006 (=> (not res!2371064) (not e!3447601))))

(assert (=> b!5588006 (= res!2371064 (not lt!2255020))))

(declare-fun b!5588007 () Bool)

(declare-fun res!2371065 () Bool)

(assert (=> b!5588007 (=> (not res!2371065) (not e!3447607))))

(assert (=> b!5588007 (= res!2371065 (not call!418347))))

(declare-fun b!5588008 () Bool)

(declare-fun res!2371063 () Bool)

(assert (=> b!5588008 (=> res!2371063 e!3447605)))

(assert (=> b!5588008 (= res!2371063 (not (is-ElementMatch!15574 (derivativeStep!4422 r!7292 (head!11918 s!2326)))))))

(assert (=> b!5588008 (= e!3447603 e!3447605)))

(declare-fun b!5588009 () Bool)

(assert (=> b!5588009 (= e!3447603 (not lt!2255020))))

(declare-fun d!1766155 () Bool)

(assert (=> d!1766155 e!3447606))

(declare-fun c!978995 () Bool)

(assert (=> d!1766155 (= c!978995 (is-EmptyExpr!15574 (derivativeStep!4422 r!7292 (head!11918 s!2326))))))

(assert (=> d!1766155 (= lt!2255020 e!3447604)))

(declare-fun c!978994 () Bool)

(assert (=> d!1766155 (= c!978994 (isEmpty!34716 (tail!11013 s!2326)))))

(assert (=> d!1766155 (validRegex!7310 (derivativeStep!4422 r!7292 (head!11918 s!2326)))))

(assert (=> d!1766155 (= (matchR!7759 (derivativeStep!4422 r!7292 (head!11918 s!2326)) (tail!11013 s!2326)) lt!2255020)))

(declare-fun b!5587999 () Bool)

(assert (=> b!5587999 (= e!3447602 (not (= (head!11918 (tail!11013 s!2326)) (c!978676 (derivativeStep!4422 r!7292 (head!11918 s!2326))))))))

(declare-fun b!5588010 () Bool)

(assert (=> b!5588010 (= e!3447604 (matchR!7759 (derivativeStep!4422 (derivativeStep!4422 r!7292 (head!11918 s!2326)) (head!11918 (tail!11013 s!2326))) (tail!11013 (tail!11013 s!2326))))))

(declare-fun bm!418342 () Bool)

(assert (=> bm!418342 (= call!418347 (isEmpty!34716 (tail!11013 s!2326)))))

(declare-fun b!5588011 () Bool)

(assert (=> b!5588011 (= e!3447601 e!3447602)))

(declare-fun res!2371070 () Bool)

(assert (=> b!5588011 (=> res!2371070 e!3447602)))

(assert (=> b!5588011 (= res!2371070 call!418347)))

(assert (= (and d!1766155 c!978994) b!5588001))

(assert (= (and d!1766155 (not c!978994)) b!5588010))

(assert (= (and d!1766155 c!978995) b!5588004))

(assert (= (and d!1766155 (not c!978995)) b!5588003))

(assert (= (and b!5588003 c!978993) b!5588009))

(assert (= (and b!5588003 (not c!978993)) b!5588008))

(assert (= (and b!5588008 (not res!2371063)) b!5588005))

(assert (= (and b!5588005 res!2371066) b!5588007))

(assert (= (and b!5588007 res!2371065) b!5588002))

(assert (= (and b!5588002 res!2371067) b!5587998))

(assert (= (and b!5588005 (not res!2371069)) b!5588006))

(assert (= (and b!5588006 res!2371064) b!5588011))

(assert (= (and b!5588011 (not res!2371070)) b!5588000))

(assert (= (and b!5588000 (not res!2371068)) b!5587999))

(assert (= (or b!5588004 b!5588011 b!5588007) bm!418342))

(assert (=> bm!418342 m!6567830))

(assert (=> bm!418342 m!6567832))

(assert (=> b!5588002 m!6567830))

(declare-fun m!6568562 () Bool)

(assert (=> b!5588002 m!6568562))

(assert (=> b!5588002 m!6568562))

(declare-fun m!6568564 () Bool)

(assert (=> b!5588002 m!6568564))

(assert (=> b!5588001 m!6567838))

(declare-fun m!6568566 () Bool)

(assert (=> b!5588001 m!6568566))

(assert (=> b!5588010 m!6567830))

(declare-fun m!6568568 () Bool)

(assert (=> b!5588010 m!6568568))

(assert (=> b!5588010 m!6567838))

(assert (=> b!5588010 m!6568568))

(declare-fun m!6568570 () Bool)

(assert (=> b!5588010 m!6568570))

(assert (=> b!5588010 m!6567830))

(assert (=> b!5588010 m!6568562))

(assert (=> b!5588010 m!6568570))

(assert (=> b!5588010 m!6568562))

(declare-fun m!6568572 () Bool)

(assert (=> b!5588010 m!6568572))

(assert (=> d!1766155 m!6567830))

(assert (=> d!1766155 m!6567832))

(assert (=> d!1766155 m!6567838))

(declare-fun m!6568574 () Bool)

(assert (=> d!1766155 m!6568574))

(assert (=> b!5588000 m!6567830))

(assert (=> b!5588000 m!6568562))

(assert (=> b!5588000 m!6568562))

(assert (=> b!5588000 m!6568564))

(assert (=> b!5587999 m!6567830))

(assert (=> b!5587999 m!6568568))

(assert (=> b!5587998 m!6567830))

(assert (=> b!5587998 m!6568568))

(assert (=> b!5587126 d!1766155))

(declare-fun b!5588032 () Bool)

(declare-fun e!3447620 () Regex!15574)

(declare-fun e!3447618 () Regex!15574)

(assert (=> b!5588032 (= e!3447620 e!3447618)))

(declare-fun c!979007 () Bool)

(assert (=> b!5588032 (= c!979007 (is-ElementMatch!15574 r!7292))))

(declare-fun c!979008 () Bool)

(declare-fun bm!418351 () Bool)

(declare-fun call!418358 () Regex!15574)

(assert (=> bm!418351 (= call!418358 (derivativeStep!4422 (ite c!979008 (regOne!31661 r!7292) (regOne!31660 r!7292)) (head!11918 s!2326)))))

(declare-fun bm!418352 () Bool)

(declare-fun c!979010 () Bool)

(declare-fun c!979006 () Bool)

(declare-fun call!418356 () Regex!15574)

(assert (=> bm!418352 (= call!418356 (derivativeStep!4422 (ite c!979008 (regTwo!31661 r!7292) (ite c!979006 (reg!15903 r!7292) (ite c!979010 (regTwo!31660 r!7292) (regOne!31660 r!7292)))) (head!11918 s!2326)))))

(declare-fun b!5588033 () Bool)

(assert (=> b!5588033 (= c!979010 (nullable!5606 (regOne!31660 r!7292)))))

(declare-fun e!3447622 () Regex!15574)

(declare-fun e!3447619 () Regex!15574)

(assert (=> b!5588033 (= e!3447622 e!3447619)))

(declare-fun b!5588034 () Bool)

(declare-fun call!418357 () Regex!15574)

(assert (=> b!5588034 (= e!3447619 (Union!15574 (Concat!24419 call!418357 (regTwo!31660 r!7292)) EmptyLang!15574))))

(declare-fun b!5588035 () Bool)

(assert (=> b!5588035 (= e!3447619 (Union!15574 (Concat!24419 call!418358 (regTwo!31660 r!7292)) call!418357))))

(declare-fun b!5588036 () Bool)

(assert (=> b!5588036 (= c!979008 (is-Union!15574 r!7292))))

(declare-fun e!3447621 () Regex!15574)

(assert (=> b!5588036 (= e!3447618 e!3447621)))

(declare-fun bm!418353 () Bool)

(declare-fun call!418359 () Regex!15574)

(assert (=> bm!418353 (= call!418359 call!418356)))

(declare-fun b!5588037 () Bool)

(assert (=> b!5588037 (= e!3447621 e!3447622)))

(assert (=> b!5588037 (= c!979006 (is-Star!15574 r!7292))))

(declare-fun b!5588038 () Bool)

(assert (=> b!5588038 (= e!3447620 EmptyLang!15574)))

(declare-fun b!5588039 () Bool)

(assert (=> b!5588039 (= e!3447621 (Union!15574 call!418358 call!418356))))

(declare-fun bm!418354 () Bool)

(assert (=> bm!418354 (= call!418357 call!418359)))

(declare-fun d!1766157 () Bool)

(declare-fun lt!2255023 () Regex!15574)

(assert (=> d!1766157 (validRegex!7310 lt!2255023)))

(assert (=> d!1766157 (= lt!2255023 e!3447620)))

(declare-fun c!979009 () Bool)

(assert (=> d!1766157 (= c!979009 (or (is-EmptyExpr!15574 r!7292) (is-EmptyLang!15574 r!7292)))))

(assert (=> d!1766157 (validRegex!7310 r!7292)))

(assert (=> d!1766157 (= (derivativeStep!4422 r!7292 (head!11918 s!2326)) lt!2255023)))

(declare-fun b!5588040 () Bool)

(assert (=> b!5588040 (= e!3447622 (Concat!24419 call!418359 r!7292))))

(declare-fun b!5588041 () Bool)

(assert (=> b!5588041 (= e!3447618 (ite (= (head!11918 s!2326) (c!978676 r!7292)) EmptyExpr!15574 EmptyLang!15574))))

(assert (= (and d!1766157 c!979009) b!5588038))

(assert (= (and d!1766157 (not c!979009)) b!5588032))

(assert (= (and b!5588032 c!979007) b!5588041))

(assert (= (and b!5588032 (not c!979007)) b!5588036))

(assert (= (and b!5588036 c!979008) b!5588039))

(assert (= (and b!5588036 (not c!979008)) b!5588037))

(assert (= (and b!5588037 c!979006) b!5588040))

(assert (= (and b!5588037 (not c!979006)) b!5588033))

(assert (= (and b!5588033 c!979010) b!5588035))

(assert (= (and b!5588033 (not c!979010)) b!5588034))

(assert (= (or b!5588035 b!5588034) bm!418354))

(assert (= (or b!5588040 bm!418354) bm!418353))

(assert (= (or b!5588039 bm!418353) bm!418352))

(assert (= (or b!5588039 b!5588035) bm!418351))

(assert (=> bm!418351 m!6567836))

(declare-fun m!6568576 () Bool)

(assert (=> bm!418351 m!6568576))

(assert (=> bm!418352 m!6567836))

(declare-fun m!6568578 () Bool)

(assert (=> bm!418352 m!6568578))

(assert (=> b!5588033 m!6568290))

(declare-fun m!6568580 () Bool)

(assert (=> d!1766157 m!6568580))

(assert (=> d!1766157 m!6567626))

(assert (=> b!5587126 d!1766157))

(assert (=> b!5587126 d!1766049))

(assert (=> b!5587126 d!1766117))

(declare-fun b!5588042 () Bool)

(declare-fun e!3447629 () Bool)

(assert (=> b!5588042 (= e!3447629 (= (head!11918 s!2326) (c!978676 (regTwo!31660 r!7292))))))

(declare-fun b!5588044 () Bool)

(declare-fun res!2371076 () Bool)

(declare-fun e!3447624 () Bool)

(assert (=> b!5588044 (=> res!2371076 e!3447624)))

(assert (=> b!5588044 (= res!2371076 (not (isEmpty!34716 (tail!11013 s!2326))))))

(declare-fun b!5588045 () Bool)

(declare-fun e!3447626 () Bool)

(assert (=> b!5588045 (= e!3447626 (nullable!5606 (regTwo!31660 r!7292)))))

(declare-fun b!5588046 () Bool)

(declare-fun res!2371075 () Bool)

(assert (=> b!5588046 (=> (not res!2371075) (not e!3447629))))

(assert (=> b!5588046 (= res!2371075 (isEmpty!34716 (tail!11013 s!2326)))))

(declare-fun b!5588047 () Bool)

(declare-fun e!3447628 () Bool)

(declare-fun e!3447625 () Bool)

(assert (=> b!5588047 (= e!3447628 e!3447625)))

(declare-fun c!979011 () Bool)

(assert (=> b!5588047 (= c!979011 (is-EmptyLang!15574 (regTwo!31660 r!7292)))))

(declare-fun b!5588048 () Bool)

(declare-fun lt!2255024 () Bool)

(declare-fun call!418360 () Bool)

(assert (=> b!5588048 (= e!3447628 (= lt!2255024 call!418360))))

(declare-fun b!5588049 () Bool)

(declare-fun res!2371077 () Bool)

(declare-fun e!3447627 () Bool)

(assert (=> b!5588049 (=> res!2371077 e!3447627)))

(assert (=> b!5588049 (= res!2371077 e!3447629)))

(declare-fun res!2371074 () Bool)

(assert (=> b!5588049 (=> (not res!2371074) (not e!3447629))))

(assert (=> b!5588049 (= res!2371074 lt!2255024)))

(declare-fun b!5588050 () Bool)

(declare-fun e!3447623 () Bool)

(assert (=> b!5588050 (= e!3447627 e!3447623)))

(declare-fun res!2371072 () Bool)

(assert (=> b!5588050 (=> (not res!2371072) (not e!3447623))))

(assert (=> b!5588050 (= res!2371072 (not lt!2255024))))

(declare-fun b!5588051 () Bool)

(declare-fun res!2371073 () Bool)

(assert (=> b!5588051 (=> (not res!2371073) (not e!3447629))))

(assert (=> b!5588051 (= res!2371073 (not call!418360))))

(declare-fun b!5588052 () Bool)

(declare-fun res!2371071 () Bool)

(assert (=> b!5588052 (=> res!2371071 e!3447627)))

(assert (=> b!5588052 (= res!2371071 (not (is-ElementMatch!15574 (regTwo!31660 r!7292))))))

(assert (=> b!5588052 (= e!3447625 e!3447627)))

(declare-fun b!5588053 () Bool)

(assert (=> b!5588053 (= e!3447625 (not lt!2255024))))

(declare-fun d!1766159 () Bool)

(assert (=> d!1766159 e!3447628))

(declare-fun c!979013 () Bool)

(assert (=> d!1766159 (= c!979013 (is-EmptyExpr!15574 (regTwo!31660 r!7292)))))

(assert (=> d!1766159 (= lt!2255024 e!3447626)))

(declare-fun c!979012 () Bool)

(assert (=> d!1766159 (= c!979012 (isEmpty!34716 s!2326))))

(assert (=> d!1766159 (validRegex!7310 (regTwo!31660 r!7292))))

(assert (=> d!1766159 (= (matchR!7759 (regTwo!31660 r!7292) s!2326) lt!2255024)))

(declare-fun b!5588043 () Bool)

(assert (=> b!5588043 (= e!3447624 (not (= (head!11918 s!2326) (c!978676 (regTwo!31660 r!7292)))))))

(declare-fun b!5588054 () Bool)

(assert (=> b!5588054 (= e!3447626 (matchR!7759 (derivativeStep!4422 (regTwo!31660 r!7292) (head!11918 s!2326)) (tail!11013 s!2326)))))

(declare-fun bm!418355 () Bool)

(assert (=> bm!418355 (= call!418360 (isEmpty!34716 s!2326))))

(declare-fun b!5588055 () Bool)

(assert (=> b!5588055 (= e!3447623 e!3447624)))

(declare-fun res!2371078 () Bool)

(assert (=> b!5588055 (=> res!2371078 e!3447624)))

(assert (=> b!5588055 (= res!2371078 call!418360)))

(assert (= (and d!1766159 c!979012) b!5588045))

(assert (= (and d!1766159 (not c!979012)) b!5588054))

(assert (= (and d!1766159 c!979013) b!5588048))

(assert (= (and d!1766159 (not c!979013)) b!5588047))

(assert (= (and b!5588047 c!979011) b!5588053))

(assert (= (and b!5588047 (not c!979011)) b!5588052))

(assert (= (and b!5588052 (not res!2371071)) b!5588049))

(assert (= (and b!5588049 res!2371074) b!5588051))

(assert (= (and b!5588051 res!2371073) b!5588046))

(assert (= (and b!5588046 res!2371075) b!5588042))

(assert (= (and b!5588049 (not res!2371077)) b!5588050))

(assert (= (and b!5588050 res!2371072) b!5588055))

(assert (= (and b!5588055 (not res!2371078)) b!5588044))

(assert (= (and b!5588044 (not res!2371076)) b!5588043))

(assert (= (or b!5588048 b!5588055 b!5588051) bm!418355))

(assert (=> bm!418355 m!6567828))

(assert (=> b!5588046 m!6567830))

(assert (=> b!5588046 m!6567830))

(assert (=> b!5588046 m!6567832))

(declare-fun m!6568582 () Bool)

(assert (=> b!5588045 m!6568582))

(assert (=> b!5588054 m!6567836))

(assert (=> b!5588054 m!6567836))

(declare-fun m!6568584 () Bool)

(assert (=> b!5588054 m!6568584))

(assert (=> b!5588054 m!6567830))

(assert (=> b!5588054 m!6568584))

(assert (=> b!5588054 m!6567830))

(declare-fun m!6568586 () Bool)

(assert (=> b!5588054 m!6568586))

(assert (=> d!1766159 m!6567828))

(declare-fun m!6568588 () Bool)

(assert (=> d!1766159 m!6568588))

(assert (=> b!5588044 m!6567830))

(assert (=> b!5588044 m!6567830))

(assert (=> b!5588044 m!6567832))

(assert (=> b!5588043 m!6567836))

(assert (=> b!5588042 m!6567836))

(assert (=> b!5587152 d!1766159))

(assert (=> b!5587259 d!1765875))

(assert (=> d!1765899 d!1766013))

(declare-fun bs!1292173 () Bool)

(declare-fun d!1766161 () Bool)

(assert (= bs!1292173 (and d!1766161 d!1766073)))

(declare-fun lambda!299872 () Int)

(assert (=> bs!1292173 (= lambda!299872 lambda!299861)))

(declare-fun bs!1292174 () Bool)

(assert (= bs!1292174 (and d!1766161 d!1766109)))

(assert (=> bs!1292174 (= lambda!299872 lambda!299865)))

(declare-fun bs!1292175 () Bool)

(assert (= bs!1292175 (and d!1766161 d!1766127)))

(assert (=> bs!1292175 (= lambda!299872 lambda!299866)))

(declare-fun bs!1292176 () Bool)

(assert (= bs!1292176 (and d!1766161 d!1766129)))

(assert (=> bs!1292176 (= lambda!299872 lambda!299867)))

(assert (=> d!1766161 (= (nullableZipper!1569 (set.union lt!2254821 lt!2254822)) (exists!2164 (set.union lt!2254821 lt!2254822) lambda!299872))))

(declare-fun bs!1292177 () Bool)

(assert (= bs!1292177 d!1766161))

(declare-fun m!6568590 () Bool)

(assert (=> bs!1292177 m!6568590))

(assert (=> b!5587041 d!1766161))

(assert (=> bs!1292045 d!1765815))

(declare-fun d!1766163 () Bool)

(assert (=> d!1766163 (= (Exists!2674 (ite c!978747 lambda!299804 lambda!299805)) (choose!42362 (ite c!978747 lambda!299804 lambda!299805)))))

(declare-fun bs!1292178 () Bool)

(assert (= bs!1292178 d!1766163))

(declare-fun m!6568592 () Bool)

(assert (=> bs!1292178 m!6568592))

(assert (=> bm!418187 d!1766163))

(declare-fun d!1766165 () Bool)

(assert (=> d!1766165 (= (isEmptyExpr!1128 lt!2254959) (is-EmptyExpr!15574 lt!2254959))))

(assert (=> b!5587255 d!1766165))

(declare-fun d!1766167 () Bool)

(assert (=> d!1766167 (= (head!11917 (exprs!5458 (h!69347 zl!343))) (h!69346 (exprs!5458 (h!69347 zl!343))))))

(assert (=> b!5587254 d!1766167))

(declare-fun bm!418356 () Bool)

(declare-fun call!418361 () (Set Context!9916))

(assert (=> bm!418356 (= call!418361 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824)))))) (h!69345 s!2326)))))

(declare-fun d!1766169 () Bool)

(declare-fun c!979014 () Bool)

(declare-fun e!3447630 () Bool)

(assert (=> d!1766169 (= c!979014 e!3447630)))

(declare-fun res!2371079 () Bool)

(assert (=> d!1766169 (=> (not res!2371079) (not e!3447630))))

(assert (=> d!1766169 (= res!2371079 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824))))))))

(declare-fun e!3447632 () (Set Context!9916))

(assert (=> d!1766169 (= (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254824))) (h!69345 s!2326)) e!3447632)))

(declare-fun b!5588056 () Bool)

(declare-fun e!3447631 () (Set Context!9916))

(assert (=> b!5588056 (= e!3447631 call!418361)))

(declare-fun b!5588057 () Bool)

(assert (=> b!5588057 (= e!3447630 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824)))))))))

(declare-fun b!5588058 () Bool)

(assert (=> b!5588058 (= e!3447631 (as set.empty (Set Context!9916)))))

(declare-fun b!5588059 () Bool)

(assert (=> b!5588059 (= e!3447632 e!3447631)))

(declare-fun c!979015 () Bool)

(assert (=> b!5588059 (= c!979015 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824))))))))

(declare-fun b!5588060 () Bool)

(assert (=> b!5588060 (= e!3447632 (set.union call!418361 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254824)))))) (h!69345 s!2326))))))

(assert (= (and d!1766169 res!2371079) b!5588057))

(assert (= (and d!1766169 c!979014) b!5588060))

(assert (= (and d!1766169 (not c!979014)) b!5588059))

(assert (= (and b!5588059 c!979015) b!5588056))

(assert (= (and b!5588059 (not c!979015)) b!5588058))

(assert (= (or b!5588060 b!5588056) bm!418356))

(declare-fun m!6568594 () Bool)

(assert (=> bm!418356 m!6568594))

(declare-fun m!6568596 () Bool)

(assert (=> b!5588057 m!6568596))

(declare-fun m!6568598 () Bool)

(assert (=> b!5588060 m!6568598))

(assert (=> b!5586957 d!1766169))

(declare-fun b!5588061 () Bool)

(declare-fun e!3447639 () Bool)

(assert (=> b!5588061 (= e!3447639 (= (head!11918 (_2!35974 (get!21658 lt!2254945))) (c!978676 (regTwo!31660 r!7292))))))

(declare-fun b!5588063 () Bool)

(declare-fun res!2371085 () Bool)

(declare-fun e!3447634 () Bool)

(assert (=> b!5588063 (=> res!2371085 e!3447634)))

(assert (=> b!5588063 (= res!2371085 (not (isEmpty!34716 (tail!11013 (_2!35974 (get!21658 lt!2254945))))))))

(declare-fun b!5588064 () Bool)

(declare-fun e!3447636 () Bool)

(assert (=> b!5588064 (= e!3447636 (nullable!5606 (regTwo!31660 r!7292)))))

(declare-fun b!5588065 () Bool)

(declare-fun res!2371084 () Bool)

(assert (=> b!5588065 (=> (not res!2371084) (not e!3447639))))

(assert (=> b!5588065 (= res!2371084 (isEmpty!34716 (tail!11013 (_2!35974 (get!21658 lt!2254945)))))))

(declare-fun b!5588066 () Bool)

(declare-fun e!3447638 () Bool)

(declare-fun e!3447635 () Bool)

(assert (=> b!5588066 (= e!3447638 e!3447635)))

(declare-fun c!979016 () Bool)

(assert (=> b!5588066 (= c!979016 (is-EmptyLang!15574 (regTwo!31660 r!7292)))))

(declare-fun b!5588067 () Bool)

(declare-fun lt!2255025 () Bool)

(declare-fun call!418362 () Bool)

(assert (=> b!5588067 (= e!3447638 (= lt!2255025 call!418362))))

(declare-fun b!5588068 () Bool)

(declare-fun res!2371086 () Bool)

(declare-fun e!3447637 () Bool)

(assert (=> b!5588068 (=> res!2371086 e!3447637)))

(assert (=> b!5588068 (= res!2371086 e!3447639)))

(declare-fun res!2371083 () Bool)

(assert (=> b!5588068 (=> (not res!2371083) (not e!3447639))))

(assert (=> b!5588068 (= res!2371083 lt!2255025)))

(declare-fun b!5588069 () Bool)

(declare-fun e!3447633 () Bool)

(assert (=> b!5588069 (= e!3447637 e!3447633)))

(declare-fun res!2371081 () Bool)

(assert (=> b!5588069 (=> (not res!2371081) (not e!3447633))))

(assert (=> b!5588069 (= res!2371081 (not lt!2255025))))

(declare-fun b!5588070 () Bool)

(declare-fun res!2371082 () Bool)

(assert (=> b!5588070 (=> (not res!2371082) (not e!3447639))))

(assert (=> b!5588070 (= res!2371082 (not call!418362))))

(declare-fun b!5588071 () Bool)

(declare-fun res!2371080 () Bool)

(assert (=> b!5588071 (=> res!2371080 e!3447637)))

(assert (=> b!5588071 (= res!2371080 (not (is-ElementMatch!15574 (regTwo!31660 r!7292))))))

(assert (=> b!5588071 (= e!3447635 e!3447637)))

(declare-fun b!5588072 () Bool)

(assert (=> b!5588072 (= e!3447635 (not lt!2255025))))

(declare-fun d!1766171 () Bool)

(assert (=> d!1766171 e!3447638))

(declare-fun c!979018 () Bool)

(assert (=> d!1766171 (= c!979018 (is-EmptyExpr!15574 (regTwo!31660 r!7292)))))

(assert (=> d!1766171 (= lt!2255025 e!3447636)))

(declare-fun c!979017 () Bool)

(assert (=> d!1766171 (= c!979017 (isEmpty!34716 (_2!35974 (get!21658 lt!2254945))))))

(assert (=> d!1766171 (validRegex!7310 (regTwo!31660 r!7292))))

(assert (=> d!1766171 (= (matchR!7759 (regTwo!31660 r!7292) (_2!35974 (get!21658 lt!2254945))) lt!2255025)))

(declare-fun b!5588062 () Bool)

(assert (=> b!5588062 (= e!3447634 (not (= (head!11918 (_2!35974 (get!21658 lt!2254945))) (c!978676 (regTwo!31660 r!7292)))))))

(declare-fun b!5588073 () Bool)

(assert (=> b!5588073 (= e!3447636 (matchR!7759 (derivativeStep!4422 (regTwo!31660 r!7292) (head!11918 (_2!35974 (get!21658 lt!2254945)))) (tail!11013 (_2!35974 (get!21658 lt!2254945)))))))

(declare-fun bm!418357 () Bool)

(assert (=> bm!418357 (= call!418362 (isEmpty!34716 (_2!35974 (get!21658 lt!2254945))))))

(declare-fun b!5588074 () Bool)

(assert (=> b!5588074 (= e!3447633 e!3447634)))

(declare-fun res!2371087 () Bool)

(assert (=> b!5588074 (=> res!2371087 e!3447634)))

(assert (=> b!5588074 (= res!2371087 call!418362)))

(assert (= (and d!1766171 c!979017) b!5588064))

(assert (= (and d!1766171 (not c!979017)) b!5588073))

(assert (= (and d!1766171 c!979018) b!5588067))

(assert (= (and d!1766171 (not c!979018)) b!5588066))

(assert (= (and b!5588066 c!979016) b!5588072))

(assert (= (and b!5588066 (not c!979016)) b!5588071))

(assert (= (and b!5588071 (not res!2371080)) b!5588068))

(assert (= (and b!5588068 res!2371083) b!5588070))

(assert (= (and b!5588070 res!2371082) b!5588065))

(assert (= (and b!5588065 res!2371084) b!5588061))

(assert (= (and b!5588068 (not res!2371086)) b!5588069))

(assert (= (and b!5588069 res!2371081) b!5588074))

(assert (= (and b!5588074 (not res!2371087)) b!5588063))

(assert (= (and b!5588063 (not res!2371085)) b!5588062))

(assert (= (or b!5588067 b!5588074 b!5588070) bm!418357))

(declare-fun m!6568600 () Bool)

(assert (=> bm!418357 m!6568600))

(declare-fun m!6568602 () Bool)

(assert (=> b!5588065 m!6568602))

(assert (=> b!5588065 m!6568602))

(declare-fun m!6568604 () Bool)

(assert (=> b!5588065 m!6568604))

(assert (=> b!5588064 m!6568582))

(declare-fun m!6568606 () Bool)

(assert (=> b!5588073 m!6568606))

(assert (=> b!5588073 m!6568606))

(declare-fun m!6568608 () Bool)

(assert (=> b!5588073 m!6568608))

(assert (=> b!5588073 m!6568602))

(assert (=> b!5588073 m!6568608))

(assert (=> b!5588073 m!6568602))

(declare-fun m!6568610 () Bool)

(assert (=> b!5588073 m!6568610))

(assert (=> d!1766171 m!6568600))

(assert (=> d!1766171 m!6568588))

(assert (=> b!5588063 m!6568602))

(assert (=> b!5588063 m!6568602))

(assert (=> b!5588063 m!6568604))

(assert (=> b!5588062 m!6568606))

(assert (=> b!5588061 m!6568606))

(assert (=> b!5587147 d!1766171))

(assert (=> b!5587147 d!1766025))

(declare-fun bs!1292179 () Bool)

(declare-fun d!1766173 () Bool)

(assert (= bs!1292179 (and d!1766173 d!1766073)))

(declare-fun lambda!299873 () Int)

(assert (=> bs!1292179 (= lambda!299873 lambda!299861)))

(declare-fun bs!1292180 () Bool)

(assert (= bs!1292180 (and d!1766173 d!1766161)))

(assert (=> bs!1292180 (= lambda!299873 lambda!299872)))

(declare-fun bs!1292181 () Bool)

(assert (= bs!1292181 (and d!1766173 d!1766109)))

(assert (=> bs!1292181 (= lambda!299873 lambda!299865)))

(declare-fun bs!1292182 () Bool)

(assert (= bs!1292182 (and d!1766173 d!1766129)))

(assert (=> bs!1292182 (= lambda!299873 lambda!299867)))

(declare-fun bs!1292183 () Bool)

(assert (= bs!1292183 (and d!1766173 d!1766127)))

(assert (=> bs!1292183 (= lambda!299873 lambda!299866)))

(assert (=> d!1766173 (= (nullableZipper!1569 lt!2254825) (exists!2164 lt!2254825 lambda!299873))))

(declare-fun bs!1292184 () Bool)

(assert (= bs!1292184 d!1766173))

(declare-fun m!6568612 () Bool)

(assert (=> bs!1292184 m!6568612))

(assert (=> b!5587031 d!1766173))

(assert (=> b!5587267 d!1765829))

(declare-fun d!1766175 () Bool)

(declare-fun c!979019 () Bool)

(assert (=> d!1766175 (= c!979019 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447640 () Bool)

(assert (=> d!1766175 (= (matchZipper!1712 (derivationStepZipper!1673 (set.union lt!2254829 lt!2254822) (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447640)))

(declare-fun b!5588075 () Bool)

(assert (=> b!5588075 (= e!3447640 (nullableZipper!1569 (derivationStepZipper!1673 (set.union lt!2254829 lt!2254822) (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5588076 () Bool)

(assert (=> b!5588076 (= e!3447640 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 (set.union lt!2254829 lt!2254822) (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766175 c!979019) b!5588075))

(assert (= (and d!1766175 (not c!979019)) b!5588076))

(assert (=> d!1766175 m!6567796))

(assert (=> d!1766175 m!6568354))

(assert (=> b!5588075 m!6567928))

(declare-fun m!6568614 () Bool)

(assert (=> b!5588075 m!6568614))

(assert (=> b!5588076 m!6567796))

(assert (=> b!5588076 m!6568358))

(assert (=> b!5588076 m!6567928))

(assert (=> b!5588076 m!6568358))

(declare-fun m!6568616 () Bool)

(assert (=> b!5588076 m!6568616))

(assert (=> b!5588076 m!6567796))

(assert (=> b!5588076 m!6568362))

(assert (=> b!5588076 m!6568616))

(assert (=> b!5588076 m!6568362))

(declare-fun m!6568618 () Bool)

(assert (=> b!5588076 m!6568618))

(assert (=> b!5587208 d!1766175))

(declare-fun bs!1292185 () Bool)

(declare-fun d!1766177 () Bool)

(assert (= bs!1292185 (and d!1766177 b!5586782)))

(declare-fun lambda!299874 () Int)

(assert (=> bs!1292185 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299874 lambda!299775))))

(declare-fun bs!1292186 () Bool)

(assert (= bs!1292186 (and d!1766177 d!1766057)))

(assert (=> bs!1292186 (= lambda!299874 lambda!299858)))

(declare-fun bs!1292187 () Bool)

(assert (= bs!1292187 (and d!1766177 d!1766147)))

(assert (=> bs!1292187 (= lambda!299874 lambda!299871)))

(assert (=> d!1766177 true))

(assert (=> d!1766177 (= (derivationStepZipper!1673 (set.union lt!2254829 lt!2254822) (head!11918 (t!376296 s!2326))) (flatMap!1187 (set.union lt!2254829 lt!2254822) lambda!299874))))

(declare-fun bs!1292188 () Bool)

(assert (= bs!1292188 d!1766177))

(declare-fun m!6568620 () Bool)

(assert (=> bs!1292188 m!6568620))

(assert (=> b!5587208 d!1766177))

(assert (=> b!5587208 d!1766059))

(assert (=> b!5587208 d!1766061))

(assert (=> d!1765859 d!1765861))

(declare-fun d!1766179 () Bool)

(assert (=> d!1766179 (= (flatMap!1187 lt!2254813 lambda!299775) (dynLambda!24597 lambda!299775 lt!2254810))))

(assert (=> d!1766179 true))

(declare-fun _$13!2173 () Unit!155688)

(assert (=> d!1766179 (= (choose!42357 lt!2254813 lt!2254810 lambda!299775) _$13!2173)))

(declare-fun b_lambda!211741 () Bool)

(assert (=> (not b_lambda!211741) (not d!1766179)))

(declare-fun bs!1292189 () Bool)

(assert (= bs!1292189 d!1766179))

(assert (=> bs!1292189 m!6567568))

(assert (=> bs!1292189 m!6567884))

(assert (=> d!1765859 d!1766179))

(declare-fun d!1766181 () Bool)

(assert (=> d!1766181 (= (nullable!5606 r!7292) (nullableFct!1715 r!7292))))

(declare-fun bs!1292190 () Bool)

(assert (= bs!1292190 d!1766181))

(declare-fun m!6568622 () Bool)

(assert (=> bs!1292190 m!6568622))

(assert (=> b!5587117 d!1766181))

(declare-fun d!1766183 () Bool)

(declare-fun c!979020 () Bool)

(assert (=> d!1766183 (= c!979020 (isEmpty!34716 (tail!11013 s!2326)))))

(declare-fun e!3447641 () Bool)

(assert (=> d!1766183 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254813 (head!11918 s!2326)) (tail!11013 s!2326)) e!3447641)))

(declare-fun b!5588077 () Bool)

(assert (=> b!5588077 (= e!3447641 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254813 (head!11918 s!2326))))))

(declare-fun b!5588078 () Bool)

(assert (=> b!5588078 (= e!3447641 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254813 (head!11918 s!2326)) (head!11918 (tail!11013 s!2326))) (tail!11013 (tail!11013 s!2326))))))

(assert (= (and d!1766183 c!979020) b!5588077))

(assert (= (and d!1766183 (not c!979020)) b!5588078))

(assert (=> d!1766183 m!6567830))

(assert (=> d!1766183 m!6567832))

(assert (=> b!5588077 m!6567968))

(declare-fun m!6568624 () Bool)

(assert (=> b!5588077 m!6568624))

(assert (=> b!5588078 m!6567830))

(assert (=> b!5588078 m!6568568))

(assert (=> b!5588078 m!6567968))

(assert (=> b!5588078 m!6568568))

(declare-fun m!6568626 () Bool)

(assert (=> b!5588078 m!6568626))

(assert (=> b!5588078 m!6567830))

(assert (=> b!5588078 m!6568562))

(assert (=> b!5588078 m!6568626))

(assert (=> b!5588078 m!6568562))

(declare-fun m!6568628 () Bool)

(assert (=> b!5588078 m!6568628))

(assert (=> b!5587262 d!1766183))

(declare-fun bs!1292191 () Bool)

(declare-fun d!1766185 () Bool)

(assert (= bs!1292191 (and d!1766185 b!5586782)))

(declare-fun lambda!299875 () Int)

(assert (=> bs!1292191 (= (= (head!11918 s!2326) (h!69345 s!2326)) (= lambda!299875 lambda!299775))))

(declare-fun bs!1292192 () Bool)

(assert (= bs!1292192 (and d!1766185 d!1766057)))

(assert (=> bs!1292192 (= (= (head!11918 s!2326) (head!11918 (t!376296 s!2326))) (= lambda!299875 lambda!299858))))

(declare-fun bs!1292193 () Bool)

(assert (= bs!1292193 (and d!1766185 d!1766147)))

(assert (=> bs!1292193 (= (= (head!11918 s!2326) (head!11918 (t!376296 s!2326))) (= lambda!299875 lambda!299871))))

(declare-fun bs!1292194 () Bool)

(assert (= bs!1292194 (and d!1766185 d!1766177)))

(assert (=> bs!1292194 (= (= (head!11918 s!2326) (head!11918 (t!376296 s!2326))) (= lambda!299875 lambda!299874))))

(assert (=> d!1766185 true))

(assert (=> d!1766185 (= (derivationStepZipper!1673 lt!2254813 (head!11918 s!2326)) (flatMap!1187 lt!2254813 lambda!299875))))

(declare-fun bs!1292195 () Bool)

(assert (= bs!1292195 d!1766185))

(declare-fun m!6568630 () Bool)

(assert (=> bs!1292195 m!6568630))

(assert (=> b!5587262 d!1766185))

(assert (=> b!5587262 d!1766049))

(assert (=> b!5587262 d!1766117))

(declare-fun b!5588079 () Bool)

(declare-fun e!3447646 () Bool)

(declare-fun call!418363 () Bool)

(assert (=> b!5588079 (= e!3447646 call!418363)))

(declare-fun b!5588080 () Bool)

(declare-fun e!3447645 () Bool)

(declare-fun e!3447644 () Bool)

(assert (=> b!5588080 (= e!3447645 e!3447644)))

(declare-fun res!2371089 () Bool)

(assert (=> b!5588080 (= res!2371089 (not (nullable!5606 (reg!15903 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))))

(assert (=> b!5588080 (=> (not res!2371089) (not e!3447644))))

(declare-fun c!979022 () Bool)

(declare-fun bm!418358 () Bool)

(assert (=> bm!418358 (= call!418363 (validRegex!7310 (ite c!979022 (regTwo!31661 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))) (regTwo!31660 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))))

(declare-fun b!5588081 () Bool)

(declare-fun e!3447648 () Bool)

(declare-fun e!3447642 () Bool)

(assert (=> b!5588081 (= e!3447648 e!3447642)))

(declare-fun res!2371092 () Bool)

(assert (=> b!5588081 (=> (not res!2371092) (not e!3447642))))

(declare-fun call!418364 () Bool)

(assert (=> b!5588081 (= res!2371092 call!418364)))

(declare-fun b!5588082 () Bool)

(declare-fun call!418365 () Bool)

(assert (=> b!5588082 (= e!3447644 call!418365)))

(declare-fun d!1766187 () Bool)

(declare-fun res!2371091 () Bool)

(declare-fun e!3447647 () Bool)

(assert (=> d!1766187 (=> res!2371091 e!3447647)))

(assert (=> d!1766187 (= res!2371091 (is-ElementMatch!15574 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))

(assert (=> d!1766187 (= (validRegex!7310 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))) e!3447647)))

(declare-fun b!5588083 () Bool)

(declare-fun res!2371088 () Bool)

(assert (=> b!5588083 (=> (not res!2371088) (not e!3447646))))

(assert (=> b!5588083 (= res!2371088 call!418364)))

(declare-fun e!3447643 () Bool)

(assert (=> b!5588083 (= e!3447643 e!3447646)))

(declare-fun bm!418359 () Bool)

(assert (=> bm!418359 (= call!418364 call!418365)))

(declare-fun b!5588084 () Bool)

(assert (=> b!5588084 (= e!3447647 e!3447645)))

(declare-fun c!979021 () Bool)

(assert (=> b!5588084 (= c!979021 (is-Star!15574 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))

(declare-fun b!5588085 () Bool)

(declare-fun res!2371090 () Bool)

(assert (=> b!5588085 (=> res!2371090 e!3447648)))

(assert (=> b!5588085 (= res!2371090 (not (is-Concat!24419 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292)))))))

(assert (=> b!5588085 (= e!3447643 e!3447648)))

(declare-fun bm!418360 () Bool)

(assert (=> bm!418360 (= call!418365 (validRegex!7310 (ite c!979021 (reg!15903 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))) (ite c!979022 (regOne!31661 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))) (regOne!31660 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292)))))))))

(declare-fun b!5588086 () Bool)

(assert (=> b!5588086 (= e!3447645 e!3447643)))

(assert (=> b!5588086 (= c!979022 (is-Union!15574 (ite c!978772 (regTwo!31661 r!7292) (regTwo!31660 r!7292))))))

(declare-fun b!5588087 () Bool)

(assert (=> b!5588087 (= e!3447642 call!418363)))

(assert (= (and d!1766187 (not res!2371091)) b!5588084))

(assert (= (and b!5588084 c!979021) b!5588080))

(assert (= (and b!5588084 (not c!979021)) b!5588086))

(assert (= (and b!5588080 res!2371089) b!5588082))

(assert (= (and b!5588086 c!979022) b!5588083))

(assert (= (and b!5588086 (not c!979022)) b!5588085))

(assert (= (and b!5588083 res!2371088) b!5588079))

(assert (= (and b!5588085 (not res!2371090)) b!5588081))

(assert (= (and b!5588081 res!2371092) b!5588087))

(assert (= (or b!5588079 b!5588087) bm!418358))

(assert (= (or b!5588083 b!5588081) bm!418359))

(assert (= (or b!5588082 bm!418359) bm!418360))

(declare-fun m!6568632 () Bool)

(assert (=> b!5588080 m!6568632))

(declare-fun m!6568634 () Bool)

(assert (=> bm!418358 m!6568634))

(declare-fun m!6568636 () Bool)

(assert (=> bm!418360 m!6568636))

(assert (=> bm!418200 d!1766187))

(declare-fun d!1766189 () Bool)

(declare-fun c!979023 () Bool)

(assert (=> d!1766189 (= c!979023 (isEmpty!34716 (t!376296 s!2326)))))

(declare-fun e!3447649 () Bool)

(assert (=> d!1766189 (= (matchZipper!1712 (set.union lt!2254829 lt!2254825) (t!376296 s!2326)) e!3447649)))

(declare-fun b!5588088 () Bool)

(assert (=> b!5588088 (= e!3447649 (nullableZipper!1569 (set.union lt!2254829 lt!2254825)))))

(declare-fun b!5588089 () Bool)

(assert (=> b!5588089 (= e!3447649 (matchZipper!1712 (derivationStepZipper!1673 (set.union lt!2254829 lt!2254825) (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))))))

(assert (= (and d!1766189 c!979023) b!5588088))

(assert (= (and d!1766189 (not c!979023)) b!5588089))

(assert (=> d!1766189 m!6567788))

(declare-fun m!6568638 () Bool)

(assert (=> b!5588088 m!6568638))

(assert (=> b!5588089 m!6567792))

(assert (=> b!5588089 m!6567792))

(declare-fun m!6568640 () Bool)

(assert (=> b!5588089 m!6568640))

(assert (=> b!5588089 m!6567796))

(assert (=> b!5588089 m!6568640))

(assert (=> b!5588089 m!6567796))

(declare-fun m!6568642 () Bool)

(assert (=> b!5588089 m!6568642))

(assert (=> d!1765901 d!1766189))

(assert (=> d!1765901 d!1765899))

(declare-fun d!1766191 () Bool)

(declare-fun e!3447650 () Bool)

(assert (=> d!1766191 (= (matchZipper!1712 (set.union lt!2254829 lt!2254825) (t!376296 s!2326)) e!3447650)))

(declare-fun res!2371093 () Bool)

(assert (=> d!1766191 (=> res!2371093 e!3447650)))

(assert (=> d!1766191 (= res!2371093 (matchZipper!1712 lt!2254829 (t!376296 s!2326)))))

(assert (=> d!1766191 true))

(declare-fun _$48!1151 () Unit!155688)

(assert (=> d!1766191 (= (choose!42360 lt!2254829 lt!2254825 (t!376296 s!2326)) _$48!1151)))

(declare-fun b!5588090 () Bool)

(assert (=> b!5588090 (= e!3447650 (matchZipper!1712 lt!2254825 (t!376296 s!2326)))))

(assert (= (and d!1766191 (not res!2371093)) b!5588090))

(assert (=> d!1766191 m!6567986))

(assert (=> d!1766191 m!6567586))

(assert (=> b!5588090 m!6567532))

(assert (=> d!1765901 d!1766191))

(assert (=> d!1765885 d!1766013))

(declare-fun bs!1292196 () Bool)

(declare-fun d!1766193 () Bool)

(assert (= bs!1292196 (and d!1766193 d!1766073)))

(declare-fun lambda!299876 () Int)

(assert (=> bs!1292196 (= lambda!299876 lambda!299861)))

(declare-fun bs!1292197 () Bool)

(assert (= bs!1292197 (and d!1766193 d!1766161)))

(assert (=> bs!1292197 (= lambda!299876 lambda!299872)))

(declare-fun bs!1292198 () Bool)

(assert (= bs!1292198 (and d!1766193 d!1766129)))

(assert (=> bs!1292198 (= lambda!299876 lambda!299867)))

(declare-fun bs!1292199 () Bool)

(assert (= bs!1292199 (and d!1766193 d!1766127)))

(assert (=> bs!1292199 (= lambda!299876 lambda!299866)))

(declare-fun bs!1292200 () Bool)

(assert (= bs!1292200 (and d!1766193 d!1766173)))

(assert (=> bs!1292200 (= lambda!299876 lambda!299873)))

(declare-fun bs!1292201 () Bool)

(assert (= bs!1292201 (and d!1766193 d!1766109)))

(assert (=> bs!1292201 (= lambda!299876 lambda!299865)))

(assert (=> d!1766193 (= (nullableZipper!1569 lt!2254830) (exists!2164 lt!2254830 lambda!299876))))

(declare-fun bs!1292202 () Bool)

(assert (= bs!1292202 d!1766193))

(declare-fun m!6568644 () Bool)

(assert (=> bs!1292202 m!6568644))

(assert (=> b!5587263 d!1766193))

(declare-fun d!1766195 () Bool)

(declare-fun c!979024 () Bool)

(assert (=> d!1766195 (= c!979024 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447651 () Bool)

(assert (=> d!1766195 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254822 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447651)))

(declare-fun b!5588091 () Bool)

(assert (=> b!5588091 (= e!3447651 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254822 (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5588092 () Bool)

(assert (=> b!5588092 (= e!3447651 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254822 (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766195 c!979024) b!5588091))

(assert (= (and d!1766195 (not c!979024)) b!5588092))

(assert (=> d!1766195 m!6567796))

(assert (=> d!1766195 m!6568354))

(assert (=> b!5588091 m!6567920))

(declare-fun m!6568646 () Bool)

(assert (=> b!5588091 m!6568646))

(assert (=> b!5588092 m!6567796))

(assert (=> b!5588092 m!6568358))

(assert (=> b!5588092 m!6567920))

(assert (=> b!5588092 m!6568358))

(declare-fun m!6568648 () Bool)

(assert (=> b!5588092 m!6568648))

(assert (=> b!5588092 m!6567796))

(assert (=> b!5588092 m!6568362))

(assert (=> b!5588092 m!6568648))

(assert (=> b!5588092 m!6568362))

(declare-fun m!6568650 () Bool)

(assert (=> b!5588092 m!6568650))

(assert (=> b!5587205 d!1766195))

(declare-fun bs!1292203 () Bool)

(declare-fun d!1766197 () Bool)

(assert (= bs!1292203 (and d!1766197 b!5586782)))

(declare-fun lambda!299877 () Int)

(assert (=> bs!1292203 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299877 lambda!299775))))

(declare-fun bs!1292204 () Bool)

(assert (= bs!1292204 (and d!1766197 d!1766057)))

(assert (=> bs!1292204 (= lambda!299877 lambda!299858)))

(declare-fun bs!1292205 () Bool)

(assert (= bs!1292205 (and d!1766197 d!1766147)))

(assert (=> bs!1292205 (= lambda!299877 lambda!299871)))

(declare-fun bs!1292206 () Bool)

(assert (= bs!1292206 (and d!1766197 d!1766177)))

(assert (=> bs!1292206 (= lambda!299877 lambda!299874)))

(declare-fun bs!1292207 () Bool)

(assert (= bs!1292207 (and d!1766197 d!1766185)))

(assert (=> bs!1292207 (= (= (head!11918 (t!376296 s!2326)) (head!11918 s!2326)) (= lambda!299877 lambda!299875))))

(assert (=> d!1766197 true))

(assert (=> d!1766197 (= (derivationStepZipper!1673 lt!2254822 (head!11918 (t!376296 s!2326))) (flatMap!1187 lt!2254822 lambda!299877))))

(declare-fun bs!1292208 () Bool)

(assert (= bs!1292208 d!1766197))

(declare-fun m!6568652 () Bool)

(assert (=> bs!1292208 m!6568652))

(assert (=> b!5587205 d!1766197))

(assert (=> b!5587205 d!1766059))

(assert (=> b!5587205 d!1766061))

(declare-fun bm!418361 () Bool)

(declare-fun call!418366 () (Set Context!9916))

(assert (=> bm!418361 (= call!418366 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814)))))) (h!69345 s!2326)))))

(declare-fun d!1766199 () Bool)

(declare-fun c!979025 () Bool)

(declare-fun e!3447652 () Bool)

(assert (=> d!1766199 (= c!979025 e!3447652)))

(declare-fun res!2371094 () Bool)

(assert (=> d!1766199 (=> (not res!2371094) (not e!3447652))))

(assert (=> d!1766199 (= res!2371094 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814))))))))

(declare-fun e!3447654 () (Set Context!9916))

(assert (=> d!1766199 (= (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254814))) (h!69345 s!2326)) e!3447654)))

(declare-fun b!5588093 () Bool)

(declare-fun e!3447653 () (Set Context!9916))

(assert (=> b!5588093 (= e!3447653 call!418366)))

(declare-fun b!5588094 () Bool)

(assert (=> b!5588094 (= e!3447652 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814)))))))))

(declare-fun b!5588095 () Bool)

(assert (=> b!5588095 (= e!3447653 (as set.empty (Set Context!9916)))))

(declare-fun b!5588096 () Bool)

(assert (=> b!5588096 (= e!3447654 e!3447653)))

(declare-fun c!979026 () Bool)

(assert (=> b!5588096 (= c!979026 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814))))))))

(declare-fun b!5588097 () Bool)

(assert (=> b!5588097 (= e!3447654 (set.union call!418366 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254814)))))) (h!69345 s!2326))))))

(assert (= (and d!1766199 res!2371094) b!5588094))

(assert (= (and d!1766199 c!979025) b!5588097))

(assert (= (and d!1766199 (not c!979025)) b!5588096))

(assert (= (and b!5588096 c!979026) b!5588093))

(assert (= (and b!5588096 (not c!979026)) b!5588095))

(assert (= (or b!5588097 b!5588093) bm!418361))

(declare-fun m!6568654 () Bool)

(assert (=> bm!418361 m!6568654))

(declare-fun m!6568656 () Bool)

(assert (=> b!5588094 m!6568656))

(declare-fun m!6568658 () Bool)

(assert (=> b!5588097 m!6568658))

(assert (=> b!5587171 d!1766199))

(declare-fun bm!418362 () Bool)

(declare-fun call!418367 () (Set Context!9916))

(assert (=> bm!418362 (= call!418367 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810)))))) (h!69345 s!2326)))))

(declare-fun d!1766201 () Bool)

(declare-fun c!979027 () Bool)

(declare-fun e!3447655 () Bool)

(assert (=> d!1766201 (= c!979027 e!3447655)))

(declare-fun res!2371095 () Bool)

(assert (=> d!1766201 (=> (not res!2371095) (not e!3447655))))

(assert (=> d!1766201 (= res!2371095 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810))))))))

(declare-fun e!3447657 () (Set Context!9916))

(assert (=> d!1766201 (= (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 lt!2254810))) (h!69345 s!2326)) e!3447657)))

(declare-fun b!5588098 () Bool)

(declare-fun e!3447656 () (Set Context!9916))

(assert (=> b!5588098 (= e!3447656 call!418367)))

(declare-fun b!5588099 () Bool)

(assert (=> b!5588099 (= e!3447655 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810)))))))))

(declare-fun b!5588100 () Bool)

(assert (=> b!5588100 (= e!3447656 (as set.empty (Set Context!9916)))))

(declare-fun b!5588101 () Bool)

(assert (=> b!5588101 (= e!3447657 e!3447656)))

(declare-fun c!979028 () Bool)

(assert (=> b!5588101 (= c!979028 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810))))))))

(declare-fun b!5588102 () Bool)

(assert (=> b!5588102 (= e!3447657 (set.union call!418367 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 lt!2254810)))))) (h!69345 s!2326))))))

(assert (= (and d!1766201 res!2371095) b!5588099))

(assert (= (and d!1766201 c!979027) b!5588102))

(assert (= (and d!1766201 (not c!979027)) b!5588101))

(assert (= (and b!5588101 c!979028) b!5588098))

(assert (= (and b!5588101 (not c!979028)) b!5588100))

(assert (= (or b!5588102 b!5588098) bm!418362))

(declare-fun m!6568660 () Bool)

(assert (=> bm!418362 m!6568660))

(declare-fun m!6568662 () Bool)

(assert (=> b!5588099 m!6568662))

(declare-fun m!6568664 () Bool)

(assert (=> b!5588102 m!6568664))

(assert (=> b!5587176 d!1766201))

(declare-fun d!1766203 () Bool)

(assert (=> d!1766203 (= (isEmpty!34712 (unfocusZipperList!1002 zl!343)) (is-Nil!62898 (unfocusZipperList!1002 zl!343)))))

(assert (=> b!5587017 d!1766203))

(assert (=> d!1765893 d!1766021))

(assert (=> bm!418188 d!1766021))

(assert (=> b!5587206 d!1765879))

(assert (=> d!1765879 d!1766013))

(declare-fun d!1766205 () Bool)

(assert (=> d!1766205 (= (isEmpty!34717 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326)) (not (is-Some!15582 (findConcatSeparation!1997 (regOne!31660 r!7292) (regTwo!31660 r!7292) Nil!62897 s!2326 s!2326))))))

(assert (=> d!1765857 d!1766205))

(declare-fun d!1766207 () Bool)

(declare-fun res!2371098 () Bool)

(declare-fun e!3447660 () Bool)

(assert (=> d!1766207 (=> res!2371098 e!3447660)))

(assert (=> d!1766207 (= res!2371098 (is-EmptyExpr!15574 (regOne!31661 (regOne!31660 r!7292))))))

(assert (=> d!1766207 (= (nullableFct!1715 (regOne!31661 (regOne!31660 r!7292))) e!3447660)))

(declare-fun b!5588103 () Bool)

(declare-fun e!3447658 () Bool)

(declare-fun e!3447659 () Bool)

(assert (=> b!5588103 (= e!3447658 e!3447659)))

(declare-fun res!2371096 () Bool)

(declare-fun call!418369 () Bool)

(assert (=> b!5588103 (= res!2371096 call!418369)))

(assert (=> b!5588103 (=> (not res!2371096) (not e!3447659))))

(declare-fun b!5588104 () Bool)

(declare-fun call!418368 () Bool)

(assert (=> b!5588104 (= e!3447659 call!418368)))

(declare-fun b!5588105 () Bool)

(declare-fun e!3447662 () Bool)

(assert (=> b!5588105 (= e!3447660 e!3447662)))

(declare-fun res!2371100 () Bool)

(assert (=> b!5588105 (=> (not res!2371100) (not e!3447662))))

(assert (=> b!5588105 (= res!2371100 (and (not (is-EmptyLang!15574 (regOne!31661 (regOne!31660 r!7292)))) (not (is-ElementMatch!15574 (regOne!31661 (regOne!31660 r!7292))))))))

(declare-fun b!5588106 () Bool)

(declare-fun e!3447661 () Bool)

(assert (=> b!5588106 (= e!3447658 e!3447661)))

(declare-fun res!2371099 () Bool)

(assert (=> b!5588106 (= res!2371099 call!418369)))

(assert (=> b!5588106 (=> res!2371099 e!3447661)))

(declare-fun b!5588107 () Bool)

(declare-fun e!3447663 () Bool)

(assert (=> b!5588107 (= e!3447662 e!3447663)))

(declare-fun res!2371097 () Bool)

(assert (=> b!5588107 (=> res!2371097 e!3447663)))

(assert (=> b!5588107 (= res!2371097 (is-Star!15574 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun b!5588108 () Bool)

(assert (=> b!5588108 (= e!3447661 call!418368)))

(declare-fun b!5588109 () Bool)

(assert (=> b!5588109 (= e!3447663 e!3447658)))

(declare-fun c!979029 () Bool)

(assert (=> b!5588109 (= c!979029 (is-Union!15574 (regOne!31661 (regOne!31660 r!7292))))))

(declare-fun bm!418363 () Bool)

(assert (=> bm!418363 (= call!418369 (nullable!5606 (ite c!979029 (regOne!31661 (regOne!31661 (regOne!31660 r!7292))) (regOne!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(declare-fun bm!418364 () Bool)

(assert (=> bm!418364 (= call!418368 (nullable!5606 (ite c!979029 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))))))))

(assert (= (and d!1766207 (not res!2371098)) b!5588105))

(assert (= (and b!5588105 res!2371100) b!5588107))

(assert (= (and b!5588107 (not res!2371097)) b!5588109))

(assert (= (and b!5588109 c!979029) b!5588106))

(assert (= (and b!5588109 (not c!979029)) b!5588103))

(assert (= (and b!5588106 (not res!2371099)) b!5588108))

(assert (= (and b!5588103 res!2371096) b!5588104))

(assert (= (or b!5588108 b!5588104) bm!418364))

(assert (= (or b!5588106 b!5588103) bm!418363))

(declare-fun m!6568666 () Bool)

(assert (=> bm!418363 m!6568666))

(declare-fun m!6568668 () Bool)

(assert (=> bm!418364 m!6568668))

(assert (=> d!1765873 d!1766207))

(declare-fun d!1766209 () Bool)

(assert (=> d!1766209 true))

(declare-fun setRes!37230 () Bool)

(assert (=> d!1766209 setRes!37230))

(declare-fun condSetEmpty!37230 () Bool)

(declare-fun res!2371101 () (Set Context!9916))

(assert (=> d!1766209 (= condSetEmpty!37230 (= res!2371101 (as set.empty (Set Context!9916))))))

(assert (=> d!1766209 (= (choose!42358 lt!2254813 lambda!299775) res!2371101)))

(declare-fun setIsEmpty!37230 () Bool)

(assert (=> setIsEmpty!37230 setRes!37230))

(declare-fun e!3447664 () Bool)

(declare-fun setNonEmpty!37230 () Bool)

(declare-fun tp!1545618 () Bool)

(declare-fun setElem!37230 () Context!9916)

(assert (=> setNonEmpty!37230 (= setRes!37230 (and tp!1545618 (inv!82183 setElem!37230) e!3447664))))

(declare-fun setRest!37230 () (Set Context!9916))

(assert (=> setNonEmpty!37230 (= res!2371101 (set.union (set.insert setElem!37230 (as set.empty (Set Context!9916))) setRest!37230))))

(declare-fun b!5588110 () Bool)

(declare-fun tp!1545619 () Bool)

(assert (=> b!5588110 (= e!3447664 tp!1545619)))

(assert (= (and d!1766209 condSetEmpty!37230) setIsEmpty!37230))

(assert (= (and d!1766209 (not condSetEmpty!37230)) setNonEmpty!37230))

(assert (= setNonEmpty!37230 b!5588110))

(declare-fun m!6568670 () Bool)

(assert (=> setNonEmpty!37230 m!6568670))

(assert (=> d!1765861 d!1766209))

(assert (=> bm!418191 d!1766021))

(declare-fun d!1766211 () Bool)

(assert (=> d!1766211 (= (isConcat!651 lt!2254959) (is-Concat!24419 lt!2254959))))

(assert (=> b!5587260 d!1766211))

(declare-fun b!5588112 () Bool)

(declare-fun e!3447665 () List!63021)

(assert (=> b!5588112 (= e!3447665 (Cons!62897 (h!69345 (_1!35974 (get!21658 lt!2254945))) (++!13803 (t!376296 (_1!35974 (get!21658 lt!2254945))) (_2!35974 (get!21658 lt!2254945)))))))

(declare-fun d!1766213 () Bool)

(declare-fun e!3447666 () Bool)

(assert (=> d!1766213 e!3447666))

(declare-fun res!2371102 () Bool)

(assert (=> d!1766213 (=> (not res!2371102) (not e!3447666))))

(declare-fun lt!2255026 () List!63021)

(assert (=> d!1766213 (= res!2371102 (= (content!11346 lt!2255026) (set.union (content!11346 (_1!35974 (get!21658 lt!2254945))) (content!11346 (_2!35974 (get!21658 lt!2254945))))))))

(assert (=> d!1766213 (= lt!2255026 e!3447665)))

(declare-fun c!979030 () Bool)

(assert (=> d!1766213 (= c!979030 (is-Nil!62897 (_1!35974 (get!21658 lt!2254945))))))

(assert (=> d!1766213 (= (++!13803 (_1!35974 (get!21658 lt!2254945)) (_2!35974 (get!21658 lt!2254945))) lt!2255026)))

(declare-fun b!5588111 () Bool)

(assert (=> b!5588111 (= e!3447665 (_2!35974 (get!21658 lt!2254945)))))

(declare-fun b!5588113 () Bool)

(declare-fun res!2371103 () Bool)

(assert (=> b!5588113 (=> (not res!2371103) (not e!3447666))))

(assert (=> b!5588113 (= res!2371103 (= (size!39961 lt!2255026) (+ (size!39961 (_1!35974 (get!21658 lt!2254945))) (size!39961 (_2!35974 (get!21658 lt!2254945))))))))

(declare-fun b!5588114 () Bool)

(assert (=> b!5588114 (= e!3447666 (or (not (= (_2!35974 (get!21658 lt!2254945)) Nil!62897)) (= lt!2255026 (_1!35974 (get!21658 lt!2254945)))))))

(assert (= (and d!1766213 c!979030) b!5588111))

(assert (= (and d!1766213 (not c!979030)) b!5588112))

(assert (= (and d!1766213 res!2371102) b!5588113))

(assert (= (and b!5588113 res!2371103) b!5588114))

(declare-fun m!6568672 () Bool)

(assert (=> b!5588112 m!6568672))

(declare-fun m!6568674 () Bool)

(assert (=> d!1766213 m!6568674))

(declare-fun m!6568676 () Bool)

(assert (=> d!1766213 m!6568676))

(declare-fun m!6568678 () Bool)

(assert (=> d!1766213 m!6568678))

(declare-fun m!6568680 () Bool)

(assert (=> b!5588113 m!6568680))

(declare-fun m!6568682 () Bool)

(assert (=> b!5588113 m!6568682))

(declare-fun m!6568684 () Bool)

(assert (=> b!5588113 m!6568684))

(assert (=> b!5587153 d!1766213))

(assert (=> b!5587153 d!1766025))

(assert (=> d!1765829 d!1766013))

(declare-fun d!1766215 () Bool)

(assert (=> d!1766215 (= (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))) (nullableFct!1715 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun bs!1292209 () Bool)

(assert (= bs!1292209 d!1766215))

(declare-fun m!6568686 () Bool)

(assert (=> bs!1292209 m!6568686))

(assert (=> b!5586985 d!1766215))

(declare-fun d!1766217 () Bool)

(declare-fun c!979031 () Bool)

(assert (=> d!1766217 (= c!979031 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447667 () Bool)

(assert (=> d!1766217 (= (matchZipper!1712 (derivationStepZipper!1673 (set.union lt!2254821 lt!2254822) (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447667)))

(declare-fun b!5588115 () Bool)

(assert (=> b!5588115 (= e!3447667 (nullableZipper!1569 (derivationStepZipper!1673 (set.union lt!2254821 lt!2254822) (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5588116 () Bool)

(assert (=> b!5588116 (= e!3447667 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 (set.union lt!2254821 lt!2254822) (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766217 c!979031) b!5588115))

(assert (= (and d!1766217 (not c!979031)) b!5588116))

(assert (=> d!1766217 m!6567796))

(assert (=> d!1766217 m!6568354))

(assert (=> b!5588115 m!6567818))

(declare-fun m!6568688 () Bool)

(assert (=> b!5588115 m!6568688))

(assert (=> b!5588116 m!6567796))

(assert (=> b!5588116 m!6568358))

(assert (=> b!5588116 m!6567818))

(assert (=> b!5588116 m!6568358))

(declare-fun m!6568690 () Bool)

(assert (=> b!5588116 m!6568690))

(assert (=> b!5588116 m!6567796))

(assert (=> b!5588116 m!6568362))

(assert (=> b!5588116 m!6568690))

(assert (=> b!5588116 m!6568362))

(declare-fun m!6568692 () Bool)

(assert (=> b!5588116 m!6568692))

(assert (=> b!5587042 d!1766217))

(declare-fun bs!1292210 () Bool)

(declare-fun d!1766219 () Bool)

(assert (= bs!1292210 (and d!1766219 b!5586782)))

(declare-fun lambda!299878 () Int)

(assert (=> bs!1292210 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299878 lambda!299775))))

(declare-fun bs!1292211 () Bool)

(assert (= bs!1292211 (and d!1766219 d!1766057)))

(assert (=> bs!1292211 (= lambda!299878 lambda!299858)))

(declare-fun bs!1292212 () Bool)

(assert (= bs!1292212 (and d!1766219 d!1766147)))

(assert (=> bs!1292212 (= lambda!299878 lambda!299871)))

(declare-fun bs!1292213 () Bool)

(assert (= bs!1292213 (and d!1766219 d!1766197)))

(assert (=> bs!1292213 (= lambda!299878 lambda!299877)))

(declare-fun bs!1292214 () Bool)

(assert (= bs!1292214 (and d!1766219 d!1766177)))

(assert (=> bs!1292214 (= lambda!299878 lambda!299874)))

(declare-fun bs!1292215 () Bool)

(assert (= bs!1292215 (and d!1766219 d!1766185)))

(assert (=> bs!1292215 (= (= (head!11918 (t!376296 s!2326)) (head!11918 s!2326)) (= lambda!299878 lambda!299875))))

(assert (=> d!1766219 true))

(assert (=> d!1766219 (= (derivationStepZipper!1673 (set.union lt!2254821 lt!2254822) (head!11918 (t!376296 s!2326))) (flatMap!1187 (set.union lt!2254821 lt!2254822) lambda!299878))))

(declare-fun bs!1292216 () Bool)

(assert (= bs!1292216 d!1766219))

(declare-fun m!6568694 () Bool)

(assert (=> bs!1292216 m!6568694))

(assert (=> b!5587042 d!1766219))

(assert (=> b!5587042 d!1766059))

(assert (=> b!5587042 d!1766061))

(declare-fun bm!418365 () Bool)

(declare-fun call!418370 () (Set Context!9916))

(assert (=> bm!418365 (= call!418370 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))) (h!69345 s!2326)))))

(declare-fun d!1766221 () Bool)

(declare-fun c!979032 () Bool)

(declare-fun e!3447668 () Bool)

(assert (=> d!1766221 (= c!979032 e!3447668)))

(declare-fun res!2371104 () Bool)

(assert (=> d!1766221 (=> (not res!2371104) (not e!3447668))))

(assert (=> d!1766221 (= res!2371104 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))))

(declare-fun e!3447670 () (Set Context!9916))

(assert (=> d!1766221 (= (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326)) e!3447670)))

(declare-fun b!5588117 () Bool)

(declare-fun e!3447669 () (Set Context!9916))

(assert (=> b!5588117 (= e!3447669 call!418370)))

(declare-fun b!5588118 () Bool)

(assert (=> b!5588118 (= e!3447668 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))))))

(declare-fun b!5588119 () Bool)

(assert (=> b!5588119 (= e!3447669 (as set.empty (Set Context!9916)))))

(declare-fun b!5588120 () Bool)

(assert (=> b!5588120 (= e!3447670 e!3447669)))

(declare-fun c!979033 () Bool)

(assert (=> b!5588120 (= c!979033 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))))

(declare-fun b!5588121 () Bool)

(assert (=> b!5588121 (= e!3447670 (set.union call!418370 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))) (h!69345 s!2326))))))

(assert (= (and d!1766221 res!2371104) b!5588118))

(assert (= (and d!1766221 c!979032) b!5588121))

(assert (= (and d!1766221 (not c!979032)) b!5588120))

(assert (= (and b!5588120 c!979033) b!5588117))

(assert (= (and b!5588120 (not c!979033)) b!5588119))

(assert (= (or b!5588121 b!5588117) bm!418365))

(declare-fun m!6568696 () Bool)

(assert (=> bm!418365 m!6568696))

(declare-fun m!6568698 () Bool)

(assert (=> b!5588118 m!6568698))

(declare-fun m!6568700 () Bool)

(assert (=> b!5588121 m!6568700))

(assert (=> b!5586947 d!1766221))

(declare-fun bm!418366 () Bool)

(declare-fun call!418371 () (Set Context!9916))

(assert (=> bm!418366 (= call!418371 (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343))))))) (h!69345 s!2326)))))

(declare-fun d!1766223 () Bool)

(declare-fun c!979034 () Bool)

(declare-fun e!3447671 () Bool)

(assert (=> d!1766223 (= c!979034 e!3447671)))

(declare-fun res!2371105 () Bool)

(assert (=> d!1766223 (=> (not res!2371105) (not e!3447671))))

(assert (=> d!1766223 (= res!2371105 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun e!3447673 () (Set Context!9916))

(assert (=> d!1766223 (= (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326)) e!3447673)))

(declare-fun b!5588122 () Bool)

(declare-fun e!3447672 () (Set Context!9916))

(assert (=> b!5588122 (= e!3447672 call!418371)))

(declare-fun b!5588123 () Bool)

(assert (=> b!5588123 (= e!3447671 (nullable!5606 (h!69346 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343))))))))))

(declare-fun b!5588124 () Bool)

(assert (=> b!5588124 (= e!3447672 (as set.empty (Set Context!9916)))))

(declare-fun b!5588125 () Bool)

(assert (=> b!5588125 (= e!3447673 e!3447672)))

(declare-fun c!979035 () Bool)

(assert (=> b!5588125 (= c!979035 (is-Cons!62898 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun b!5588126 () Bool)

(assert (=> b!5588126 (= e!3447673 (set.union call!418371 (derivationStepZipperUp!842 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343))))))) (h!69345 s!2326))))))

(assert (= (and d!1766223 res!2371105) b!5588123))

(assert (= (and d!1766223 c!979034) b!5588126))

(assert (= (and d!1766223 (not c!979034)) b!5588125))

(assert (= (and b!5588125 c!979035) b!5588122))

(assert (= (and b!5588125 (not c!979035)) b!5588124))

(assert (= (or b!5588126 b!5588122) bm!418366))

(declare-fun m!6568702 () Bool)

(assert (=> bm!418366 m!6568702))

(declare-fun m!6568704 () Bool)

(assert (=> b!5588123 m!6568704))

(declare-fun m!6568706 () Bool)

(assert (=> b!5588126 m!6568706))

(assert (=> b!5586952 d!1766223))

(declare-fun d!1766225 () Bool)

(assert (=> d!1766225 (= (isEmpty!34712 (exprs!5458 (h!69347 zl!343))) (is-Nil!62898 (exprs!5458 (h!69347 zl!343))))))

(assert (=> b!5587256 d!1766225))

(declare-fun d!1766227 () Bool)

(declare-fun c!979036 () Bool)

(assert (=> d!1766227 (= c!979036 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447674 () Bool)

(assert (=> d!1766227 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254825 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447674)))

(declare-fun b!5588127 () Bool)

(assert (=> b!5588127 (= e!3447674 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254825 (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5588128 () Bool)

(assert (=> b!5588128 (= e!3447674 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254825 (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766227 c!979036) b!5588127))

(assert (= (and d!1766227 (not c!979036)) b!5588128))

(assert (=> d!1766227 m!6567796))

(assert (=> d!1766227 m!6568354))

(assert (=> b!5588127 m!6567794))

(declare-fun m!6568708 () Bool)

(assert (=> b!5588127 m!6568708))

(assert (=> b!5588128 m!6567796))

(assert (=> b!5588128 m!6568358))

(assert (=> b!5588128 m!6567794))

(assert (=> b!5588128 m!6568358))

(declare-fun m!6568710 () Bool)

(assert (=> b!5588128 m!6568710))

(assert (=> b!5588128 m!6567796))

(assert (=> b!5588128 m!6568362))

(assert (=> b!5588128 m!6568710))

(assert (=> b!5588128 m!6568362))

(declare-fun m!6568712 () Bool)

(assert (=> b!5588128 m!6568712))

(assert (=> b!5587032 d!1766227))

(declare-fun bs!1292217 () Bool)

(declare-fun d!1766229 () Bool)

(assert (= bs!1292217 (and d!1766229 b!5586782)))

(declare-fun lambda!299879 () Int)

(assert (=> bs!1292217 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299879 lambda!299775))))

(declare-fun bs!1292218 () Bool)

(assert (= bs!1292218 (and d!1766229 d!1766219)))

(assert (=> bs!1292218 (= lambda!299879 lambda!299878)))

(declare-fun bs!1292219 () Bool)

(assert (= bs!1292219 (and d!1766229 d!1766057)))

(assert (=> bs!1292219 (= lambda!299879 lambda!299858)))

(declare-fun bs!1292220 () Bool)

(assert (= bs!1292220 (and d!1766229 d!1766147)))

(assert (=> bs!1292220 (= lambda!299879 lambda!299871)))

(declare-fun bs!1292221 () Bool)

(assert (= bs!1292221 (and d!1766229 d!1766197)))

(assert (=> bs!1292221 (= lambda!299879 lambda!299877)))

(declare-fun bs!1292222 () Bool)

(assert (= bs!1292222 (and d!1766229 d!1766177)))

(assert (=> bs!1292222 (= lambda!299879 lambda!299874)))

(declare-fun bs!1292223 () Bool)

(assert (= bs!1292223 (and d!1766229 d!1766185)))

(assert (=> bs!1292223 (= (= (head!11918 (t!376296 s!2326)) (head!11918 s!2326)) (= lambda!299879 lambda!299875))))

(assert (=> d!1766229 true))

(assert (=> d!1766229 (= (derivationStepZipper!1673 lt!2254825 (head!11918 (t!376296 s!2326))) (flatMap!1187 lt!2254825 lambda!299879))))

(declare-fun bs!1292224 () Bool)

(assert (= bs!1292224 d!1766229))

(declare-fun m!6568714 () Bool)

(assert (=> bs!1292224 m!6568714))

(assert (=> b!5587032 d!1766229))

(assert (=> b!5587032 d!1766059))

(assert (=> b!5587032 d!1766061))

(assert (=> b!5587118 d!1766115))

(assert (=> b!5587118 d!1766117))

(declare-fun bm!418367 () Bool)

(declare-fun call!418373 () (Set Context!9916))

(declare-fun call!418374 () (Set Context!9916))

(assert (=> bm!418367 (= call!418373 call!418374)))

(declare-fun b!5588129 () Bool)

(declare-fun e!3447679 () (Set Context!9916))

(declare-fun call!418376 () (Set Context!9916))

(assert (=> b!5588129 (= e!3447679 (set.union call!418376 call!418373))))

(declare-fun call!418377 () List!63022)

(declare-fun bm!418368 () Bool)

(declare-fun c!979039 () Bool)

(assert (=> bm!418368 (= call!418376 (derivationStepZipperDown!916 (ite c!979039 (regOne!31661 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (regOne!31660 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))) (ite c!979039 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (Context!9917 call!418377)) (h!69345 s!2326)))))

(declare-fun bm!418369 () Bool)

(declare-fun call!418372 () (Set Context!9916))

(assert (=> bm!418369 (= call!418372 call!418373)))

(declare-fun d!1766231 () Bool)

(declare-fun c!979040 () Bool)

(assert (=> d!1766231 (= c!979040 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (= (c!978676 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326))))))

(declare-fun e!3447675 () (Set Context!9916))

(assert (=> d!1766231 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69345 s!2326)) e!3447675)))

(declare-fun b!5588130 () Bool)

(declare-fun e!3447677 () (Set Context!9916))

(assert (=> b!5588130 (= e!3447675 e!3447677)))

(assert (=> b!5588130 (= c!979039 (is-Union!15574 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun bm!418370 () Bool)

(declare-fun c!979041 () Bool)

(declare-fun c!979037 () Bool)

(declare-fun call!418375 () List!63022)

(assert (=> bm!418370 (= call!418374 (derivationStepZipperDown!916 (ite c!979039 (regTwo!31661 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (ite c!979037 (regTwo!31660 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (ite c!979041 (regOne!31660 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (reg!15903 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))) (ite (or c!979039 c!979037) (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (Context!9917 call!418375)) (h!69345 s!2326)))))

(declare-fun b!5588131 () Bool)

(declare-fun e!3447676 () Bool)

(assert (=> b!5588131 (= c!979037 e!3447676)))

(declare-fun res!2371106 () Bool)

(assert (=> b!5588131 (=> (not res!2371106) (not e!3447676))))

(assert (=> b!5588131 (= res!2371106 (is-Concat!24419 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(assert (=> b!5588131 (= e!3447677 e!3447679)))

(declare-fun b!5588132 () Bool)

(declare-fun e!3447678 () (Set Context!9916))

(assert (=> b!5588132 (= e!3447678 call!418372)))

(declare-fun b!5588133 () Bool)

(assert (=> b!5588133 (= e!3447679 e!3447678)))

(assert (=> b!5588133 (= c!979041 (is-Concat!24419 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(declare-fun b!5588134 () Bool)

(assert (=> b!5588134 (= e!3447676 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))))

(declare-fun b!5588135 () Bool)

(assert (=> b!5588135 (= e!3447675 (set.insert (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (as set.empty (Set Context!9916))))))

(declare-fun b!5588136 () Bool)

(declare-fun e!3447680 () (Set Context!9916))

(assert (=> b!5588136 (= e!3447680 call!418372)))

(declare-fun b!5588137 () Bool)

(assert (=> b!5588137 (= e!3447677 (set.union call!418376 call!418374))))

(declare-fun b!5588138 () Bool)

(declare-fun c!979038 () Bool)

(assert (=> b!5588138 (= c!979038 (is-Star!15574 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))))))

(assert (=> b!5588138 (= e!3447678 e!3447680)))

(declare-fun bm!418371 () Bool)

(assert (=> bm!418371 (= call!418377 ($colon$colon!1637 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))) (ite (or c!979037 c!979041) (regTwo!31660 (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343)))))))) (h!69346 (exprs!5458 (Context!9917 (Cons!62898 (h!69346 (exprs!5458 (h!69347 zl!343))) (t!376297 (exprs!5458 (h!69347 zl!343))))))))))))

(declare-fun bm!418372 () Bool)

(assert (=> bm!418372 (= call!418375 call!418377)))

(declare-fun b!5588139 () Bool)

(assert (=> b!5588139 (= e!3447680 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766231 c!979040) b!5588135))

(assert (= (and d!1766231 (not c!979040)) b!5588130))

(assert (= (and b!5588130 c!979039) b!5588137))

(assert (= (and b!5588130 (not c!979039)) b!5588131))

(assert (= (and b!5588131 res!2371106) b!5588134))

(assert (= (and b!5588131 c!979037) b!5588129))

(assert (= (and b!5588131 (not c!979037)) b!5588133))

(assert (= (and b!5588133 c!979041) b!5588132))

(assert (= (and b!5588133 (not c!979041)) b!5588138))

(assert (= (and b!5588138 c!979038) b!5588136))

(assert (= (and b!5588138 (not c!979038)) b!5588139))

(assert (= (or b!5588132 b!5588136) bm!418372))

(assert (= (or b!5588132 b!5588136) bm!418369))

(assert (= (or b!5588129 bm!418372) bm!418371))

(assert (= (or b!5588129 bm!418369) bm!418367))

(assert (= (or b!5588137 bm!418367) bm!418370))

(assert (= (or b!5588137 b!5588129) bm!418368))

(declare-fun m!6568716 () Bool)

(assert (=> bm!418371 m!6568716))

(declare-fun m!6568718 () Bool)

(assert (=> bm!418370 m!6568718))

(declare-fun m!6568720 () Bool)

(assert (=> b!5588135 m!6568720))

(declare-fun m!6568722 () Bool)

(assert (=> bm!418368 m!6568722))

(declare-fun m!6568724 () Bool)

(assert (=> b!5588134 m!6568724))

(assert (=> bm!418162 d!1766231))

(declare-fun bm!418373 () Bool)

(declare-fun call!418379 () (Set Context!9916))

(declare-fun call!418380 () (Set Context!9916))

(assert (=> bm!418373 (= call!418379 call!418380)))

(declare-fun b!5588140 () Bool)

(declare-fun e!3447685 () (Set Context!9916))

(declare-fun call!418382 () (Set Context!9916))

(assert (=> b!5588140 (= e!3447685 (set.union call!418382 call!418379))))

(declare-fun call!418383 () List!63022)

(declare-fun c!979044 () Bool)

(declare-fun bm!418374 () Bool)

(assert (=> bm!418374 (= call!418382 (derivationStepZipperDown!916 (ite c!979044 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))) (ite c!979044 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (Context!9917 call!418383)) (h!69345 s!2326)))))

(declare-fun bm!418375 () Bool)

(declare-fun call!418378 () (Set Context!9916))

(assert (=> bm!418375 (= call!418378 call!418379)))

(declare-fun d!1766233 () Bool)

(declare-fun c!979045 () Bool)

(assert (=> d!1766233 (= c!979045 (and (is-ElementMatch!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))) (= (c!978676 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326))))))

(declare-fun e!3447681 () (Set Context!9916))

(assert (=> d!1766233 (= (derivationStepZipperDown!916 (h!69346 (exprs!5458 (h!69347 zl!343))) (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (h!69345 s!2326)) e!3447681)))

(declare-fun b!5588141 () Bool)

(declare-fun e!3447683 () (Set Context!9916))

(assert (=> b!5588141 (= e!3447681 e!3447683)))

(assert (=> b!5588141 (= c!979044 (is-Union!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun c!979042 () Bool)

(declare-fun c!979046 () Bool)

(declare-fun call!418381 () List!63022)

(declare-fun bm!418376 () Bool)

(assert (=> bm!418376 (= call!418380 (derivationStepZipperDown!916 (ite c!979044 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!979042 (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (ite c!979046 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (reg!15903 (h!69346 (exprs!5458 (h!69347 zl!343))))))) (ite (or c!979044 c!979042) (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (Context!9917 call!418381)) (h!69345 s!2326)))))

(declare-fun b!5588142 () Bool)

(declare-fun e!3447682 () Bool)

(assert (=> b!5588142 (= c!979042 e!3447682)))

(declare-fun res!2371107 () Bool)

(assert (=> b!5588142 (=> (not res!2371107) (not e!3447682))))

(assert (=> b!5588142 (= res!2371107 (is-Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5588142 (= e!3447683 e!3447685)))

(declare-fun b!5588143 () Bool)

(declare-fun e!3447684 () (Set Context!9916))

(assert (=> b!5588143 (= e!3447684 call!418378)))

(declare-fun b!5588144 () Bool)

(assert (=> b!5588144 (= e!3447685 e!3447684)))

(assert (=> b!5588144 (= c!979046 (is-Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588145 () Bool)

(assert (=> b!5588145 (= e!3447682 (nullable!5606 (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5588146 () Bool)

(assert (=> b!5588146 (= e!3447681 (set.insert (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343)))) (as set.empty (Set Context!9916))))))

(declare-fun b!5588147 () Bool)

(declare-fun e!3447686 () (Set Context!9916))

(assert (=> b!5588147 (= e!3447686 call!418378)))

(declare-fun b!5588148 () Bool)

(assert (=> b!5588148 (= e!3447683 (set.union call!418382 call!418380))))

(declare-fun b!5588149 () Bool)

(declare-fun c!979043 () Bool)

(assert (=> b!5588149 (= c!979043 (is-Star!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> b!5588149 (= e!3447684 e!3447686)))

(declare-fun bm!418377 () Bool)

(assert (=> bm!418377 (= call!418383 ($colon$colon!1637 (exprs!5458 (Context!9917 (t!376297 (exprs!5458 (h!69347 zl!343))))) (ite (or c!979042 c!979046) (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))) (h!69346 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun bm!418378 () Bool)

(assert (=> bm!418378 (= call!418381 call!418383)))

(declare-fun b!5588150 () Bool)

(assert (=> b!5588150 (= e!3447686 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766233 c!979045) b!5588146))

(assert (= (and d!1766233 (not c!979045)) b!5588141))

(assert (= (and b!5588141 c!979044) b!5588148))

(assert (= (and b!5588141 (not c!979044)) b!5588142))

(assert (= (and b!5588142 res!2371107) b!5588145))

(assert (= (and b!5588142 c!979042) b!5588140))

(assert (= (and b!5588142 (not c!979042)) b!5588144))

(assert (= (and b!5588144 c!979046) b!5588143))

(assert (= (and b!5588144 (not c!979046)) b!5588149))

(assert (= (and b!5588149 c!979043) b!5588147))

(assert (= (and b!5588149 (not c!979043)) b!5588150))

(assert (= (or b!5588143 b!5588147) bm!418378))

(assert (= (or b!5588143 b!5588147) bm!418375))

(assert (= (or b!5588140 bm!418378) bm!418377))

(assert (= (or b!5588140 bm!418375) bm!418373))

(assert (= (or b!5588148 bm!418373) bm!418376))

(assert (= (or b!5588148 b!5588140) bm!418374))

(declare-fun m!6568726 () Bool)

(assert (=> bm!418377 m!6568726))

(declare-fun m!6568728 () Bool)

(assert (=> bm!418376 m!6568728))

(declare-fun m!6568730 () Bool)

(assert (=> b!5588146 m!6568730))

(declare-fun m!6568732 () Bool)

(assert (=> bm!418374 m!6568732))

(assert (=> b!5588145 m!6567758))

(assert (=> bm!418163 d!1766233))

(declare-fun d!1766235 () Bool)

(declare-fun res!2371108 () Bool)

(declare-fun e!3447687 () Bool)

(assert (=> d!1766235 (=> res!2371108 e!3447687)))

(assert (=> d!1766235 (= res!2371108 (is-Nil!62898 lt!2254926))))

(assert (=> d!1766235 (= (forall!14740 lt!2254926 lambda!299796) e!3447687)))

(declare-fun b!5588151 () Bool)

(declare-fun e!3447688 () Bool)

(assert (=> b!5588151 (= e!3447687 e!3447688)))

(declare-fun res!2371109 () Bool)

(assert (=> b!5588151 (=> (not res!2371109) (not e!3447688))))

(assert (=> b!5588151 (= res!2371109 (dynLambda!24599 lambda!299796 (h!69346 lt!2254926)))))

(declare-fun b!5588152 () Bool)

(assert (=> b!5588152 (= e!3447688 (forall!14740 (t!376297 lt!2254926) lambda!299796))))

(assert (= (and d!1766235 (not res!2371108)) b!5588151))

(assert (= (and b!5588151 res!2371109) b!5588152))

(declare-fun b_lambda!211743 () Bool)

(assert (=> (not b_lambda!211743) (not b!5588151)))

(declare-fun m!6568734 () Bool)

(assert (=> b!5588151 m!6568734))

(declare-fun m!6568736 () Bool)

(assert (=> b!5588152 m!6568736))

(assert (=> d!1765827 d!1766235))

(declare-fun d!1766237 () Bool)

(assert (=> d!1766237 (= (nullable!5606 (h!69346 (exprs!5458 lt!2254824))) (nullableFct!1715 (h!69346 (exprs!5458 lt!2254824))))))

(declare-fun bs!1292225 () Bool)

(assert (= bs!1292225 d!1766237))

(declare-fun m!6568738 () Bool)

(assert (=> bs!1292225 m!6568738))

(assert (=> b!5586954 d!1766237))

(assert (=> b!5587025 d!1765891))

(declare-fun bs!1292226 () Bool)

(declare-fun d!1766239 () Bool)

(assert (= bs!1292226 (and d!1766239 d!1765895)))

(declare-fun lambda!299880 () Int)

(assert (=> bs!1292226 (= lambda!299880 lambda!299818)))

(declare-fun bs!1292227 () Bool)

(assert (= bs!1292227 (and d!1766239 d!1765827)))

(assert (=> bs!1292227 (= lambda!299880 lambda!299796)))

(declare-fun bs!1292228 () Bool)

(assert (= bs!1292228 (and d!1766239 d!1765891)))

(assert (=> bs!1292228 (= lambda!299880 lambda!299817)))

(declare-fun bs!1292229 () Bool)

(assert (= bs!1292229 (and d!1766239 d!1766135)))

(assert (=> bs!1292229 (= lambda!299880 lambda!299868)))

(declare-fun bs!1292230 () Bool)

(assert (= bs!1292230 (and d!1766239 d!1765831)))

(assert (=> bs!1292230 (= lambda!299880 lambda!299799)))

(declare-fun bs!1292231 () Bool)

(assert (= bs!1292231 (and d!1766239 d!1766017)))

(assert (=> bs!1292231 (= lambda!299880 lambda!299847)))

(declare-fun bs!1292232 () Bool)

(assert (= bs!1292232 (and d!1766239 d!1765825)))

(assert (=> bs!1292232 (= lambda!299880 lambda!299793)))

(declare-fun lt!2255027 () List!63022)

(assert (=> d!1766239 (forall!14740 lt!2255027 lambda!299880)))

(declare-fun e!3447689 () List!63022)

(assert (=> d!1766239 (= lt!2255027 e!3447689)))

(declare-fun c!979047 () Bool)

(assert (=> d!1766239 (= c!979047 (is-Cons!62899 (t!376298 zl!343)))))

(assert (=> d!1766239 (= (unfocusZipperList!1002 (t!376298 zl!343)) lt!2255027)))

(declare-fun b!5588153 () Bool)

(assert (=> b!5588153 (= e!3447689 (Cons!62898 (generalisedConcat!1189 (exprs!5458 (h!69347 (t!376298 zl!343)))) (unfocusZipperList!1002 (t!376298 (t!376298 zl!343)))))))

(declare-fun b!5588154 () Bool)

(assert (=> b!5588154 (= e!3447689 Nil!62898)))

(assert (= (and d!1766239 c!979047) b!5588153))

(assert (= (and d!1766239 (not c!979047)) b!5588154))

(declare-fun m!6568740 () Bool)

(assert (=> d!1766239 m!6568740))

(declare-fun m!6568742 () Bool)

(assert (=> b!5588153 m!6568742))

(declare-fun m!6568744 () Bool)

(assert (=> b!5588153 m!6568744))

(assert (=> b!5587025 d!1766239))

(declare-fun bs!1292233 () Bool)

(declare-fun d!1766241 () Bool)

(assert (= bs!1292233 (and d!1766241 d!1765895)))

(declare-fun lambda!299881 () Int)

(assert (=> bs!1292233 (= lambda!299881 lambda!299818)))

(declare-fun bs!1292234 () Bool)

(assert (= bs!1292234 (and d!1766241 d!1765827)))

(assert (=> bs!1292234 (= lambda!299881 lambda!299796)))

(declare-fun bs!1292235 () Bool)

(assert (= bs!1292235 (and d!1766241 d!1765891)))

(assert (=> bs!1292235 (= lambda!299881 lambda!299817)))

(declare-fun bs!1292236 () Bool)

(assert (= bs!1292236 (and d!1766241 d!1766239)))

(assert (=> bs!1292236 (= lambda!299881 lambda!299880)))

(declare-fun bs!1292237 () Bool)

(assert (= bs!1292237 (and d!1766241 d!1766135)))

(assert (=> bs!1292237 (= lambda!299881 lambda!299868)))

(declare-fun bs!1292238 () Bool)

(assert (= bs!1292238 (and d!1766241 d!1765831)))

(assert (=> bs!1292238 (= lambda!299881 lambda!299799)))

(declare-fun bs!1292239 () Bool)

(assert (= bs!1292239 (and d!1766241 d!1766017)))

(assert (=> bs!1292239 (= lambda!299881 lambda!299847)))

(declare-fun bs!1292240 () Bool)

(assert (= bs!1292240 (and d!1766241 d!1765825)))

(assert (=> bs!1292240 (= lambda!299881 lambda!299793)))

(declare-fun b!5588155 () Bool)

(declare-fun e!3447690 () Regex!15574)

(assert (=> b!5588155 (= e!3447690 (Concat!24419 (h!69346 (t!376297 (exprs!5458 (h!69347 zl!343)))) (generalisedConcat!1189 (t!376297 (t!376297 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun b!5588156 () Bool)

(assert (=> b!5588156 (= e!3447690 EmptyExpr!15574)))

(declare-fun b!5588157 () Bool)

(declare-fun e!3447694 () Bool)

(declare-fun e!3447695 () Bool)

(assert (=> b!5588157 (= e!3447694 e!3447695)))

(declare-fun c!979048 () Bool)

(assert (=> b!5588157 (= c!979048 (isEmpty!34712 (tail!11012 (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5588158 () Bool)

(declare-fun lt!2255028 () Regex!15574)

(assert (=> b!5588158 (= e!3447695 (= lt!2255028 (head!11917 (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun e!3447691 () Bool)

(assert (=> d!1766241 e!3447691))

(declare-fun res!2371110 () Bool)

(assert (=> d!1766241 (=> (not res!2371110) (not e!3447691))))

(assert (=> d!1766241 (= res!2371110 (validRegex!7310 lt!2255028))))

(declare-fun e!3447692 () Regex!15574)

(assert (=> d!1766241 (= lt!2255028 e!3447692)))

(declare-fun c!979051 () Bool)

(declare-fun e!3447693 () Bool)

(assert (=> d!1766241 (= c!979051 e!3447693)))

(declare-fun res!2371111 () Bool)

(assert (=> d!1766241 (=> (not res!2371111) (not e!3447693))))

(assert (=> d!1766241 (= res!2371111 (is-Cons!62898 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> d!1766241 (forall!14740 (t!376297 (exprs!5458 (h!69347 zl!343))) lambda!299881)))

(assert (=> d!1766241 (= (generalisedConcat!1189 (t!376297 (exprs!5458 (h!69347 zl!343)))) lt!2255028)))

(declare-fun b!5588159 () Bool)

(assert (=> b!5588159 (= e!3447694 (isEmptyExpr!1128 lt!2255028))))

(declare-fun b!5588160 () Bool)

(assert (=> b!5588160 (= e!3447691 e!3447694)))

(declare-fun c!979050 () Bool)

(assert (=> b!5588160 (= c!979050 (isEmpty!34712 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588161 () Bool)

(assert (=> b!5588161 (= e!3447692 (h!69346 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588162 () Bool)

(assert (=> b!5588162 (= e!3447692 e!3447690)))

(declare-fun c!979049 () Bool)

(assert (=> b!5588162 (= c!979049 (is-Cons!62898 (t!376297 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588163 () Bool)

(assert (=> b!5588163 (= e!3447693 (isEmpty!34712 (t!376297 (t!376297 (exprs!5458 (h!69347 zl!343))))))))

(declare-fun b!5588164 () Bool)

(assert (=> b!5588164 (= e!3447695 (isConcat!651 lt!2255028))))

(assert (= (and d!1766241 res!2371111) b!5588163))

(assert (= (and d!1766241 c!979051) b!5588161))

(assert (= (and d!1766241 (not c!979051)) b!5588162))

(assert (= (and b!5588162 c!979049) b!5588155))

(assert (= (and b!5588162 (not c!979049)) b!5588156))

(assert (= (and d!1766241 res!2371110) b!5588160))

(assert (= (and b!5588160 c!979050) b!5588159))

(assert (= (and b!5588160 (not c!979050)) b!5588157))

(assert (= (and b!5588157 c!979048) b!5588158))

(assert (= (and b!5588157 (not c!979048)) b!5588164))

(declare-fun m!6568746 () Bool)

(assert (=> b!5588158 m!6568746))

(declare-fun m!6568748 () Bool)

(assert (=> b!5588159 m!6568748))

(declare-fun m!6568750 () Bool)

(assert (=> b!5588163 m!6568750))

(assert (=> b!5588160 m!6567580))

(declare-fun m!6568752 () Bool)

(assert (=> b!5588155 m!6568752))

(declare-fun m!6568754 () Bool)

(assert (=> b!5588164 m!6568754))

(declare-fun m!6568756 () Bool)

(assert (=> d!1766241 m!6568756))

(declare-fun m!6568758 () Bool)

(assert (=> d!1766241 m!6568758))

(declare-fun m!6568760 () Bool)

(assert (=> b!5588157 m!6568760))

(assert (=> b!5588157 m!6568760))

(declare-fun m!6568762 () Bool)

(assert (=> b!5588157 m!6568762))

(assert (=> b!5587251 d!1766241))

(declare-fun d!1766243 () Bool)

(declare-fun c!979052 () Bool)

(assert (=> d!1766243 (= c!979052 (isEmpty!34716 (tail!11013 (t!376296 s!2326))))))

(declare-fun e!3447696 () Bool)

(assert (=> d!1766243 (= (matchZipper!1712 (derivationStepZipper!1673 lt!2254830 (head!11918 (t!376296 s!2326))) (tail!11013 (t!376296 s!2326))) e!3447696)))

(declare-fun b!5588165 () Bool)

(assert (=> b!5588165 (= e!3447696 (nullableZipper!1569 (derivationStepZipper!1673 lt!2254830 (head!11918 (t!376296 s!2326)))))))

(declare-fun b!5588166 () Bool)

(assert (=> b!5588166 (= e!3447696 (matchZipper!1712 (derivationStepZipper!1673 (derivationStepZipper!1673 lt!2254830 (head!11918 (t!376296 s!2326))) (head!11918 (tail!11013 (t!376296 s!2326)))) (tail!11013 (tail!11013 (t!376296 s!2326)))))))

(assert (= (and d!1766243 c!979052) b!5588165))

(assert (= (and d!1766243 (not c!979052)) b!5588166))

(assert (=> d!1766243 m!6567796))

(assert (=> d!1766243 m!6568354))

(assert (=> b!5588165 m!6567976))

(declare-fun m!6568764 () Bool)

(assert (=> b!5588165 m!6568764))

(assert (=> b!5588166 m!6567796))

(assert (=> b!5588166 m!6568358))

(assert (=> b!5588166 m!6567976))

(assert (=> b!5588166 m!6568358))

(declare-fun m!6568766 () Bool)

(assert (=> b!5588166 m!6568766))

(assert (=> b!5588166 m!6567796))

(assert (=> b!5588166 m!6568362))

(assert (=> b!5588166 m!6568766))

(assert (=> b!5588166 m!6568362))

(declare-fun m!6568768 () Bool)

(assert (=> b!5588166 m!6568768))

(assert (=> b!5587264 d!1766243))

(declare-fun bs!1292241 () Bool)

(declare-fun d!1766245 () Bool)

(assert (= bs!1292241 (and d!1766245 b!5586782)))

(declare-fun lambda!299882 () Int)

(assert (=> bs!1292241 (= (= (head!11918 (t!376296 s!2326)) (h!69345 s!2326)) (= lambda!299882 lambda!299775))))

(declare-fun bs!1292242 () Bool)

(assert (= bs!1292242 (and d!1766245 d!1766219)))

(assert (=> bs!1292242 (= lambda!299882 lambda!299878)))

(declare-fun bs!1292243 () Bool)

(assert (= bs!1292243 (and d!1766245 d!1766057)))

(assert (=> bs!1292243 (= lambda!299882 lambda!299858)))

(declare-fun bs!1292244 () Bool)

(assert (= bs!1292244 (and d!1766245 d!1766147)))

(assert (=> bs!1292244 (= lambda!299882 lambda!299871)))

(declare-fun bs!1292245 () Bool)

(assert (= bs!1292245 (and d!1766245 d!1766197)))

(assert (=> bs!1292245 (= lambda!299882 lambda!299877)))

(declare-fun bs!1292246 () Bool)

(assert (= bs!1292246 (and d!1766245 d!1766177)))

(assert (=> bs!1292246 (= lambda!299882 lambda!299874)))

(declare-fun bs!1292247 () Bool)

(assert (= bs!1292247 (and d!1766245 d!1766229)))

(assert (=> bs!1292247 (= lambda!299882 lambda!299879)))

(declare-fun bs!1292248 () Bool)

(assert (= bs!1292248 (and d!1766245 d!1766185)))

(assert (=> bs!1292248 (= (= (head!11918 (t!376296 s!2326)) (head!11918 s!2326)) (= lambda!299882 lambda!299875))))

(assert (=> d!1766245 true))

(assert (=> d!1766245 (= (derivationStepZipper!1673 lt!2254830 (head!11918 (t!376296 s!2326))) (flatMap!1187 lt!2254830 lambda!299882))))

(declare-fun bs!1292249 () Bool)

(assert (= bs!1292249 d!1766245))

(declare-fun m!6568770 () Bool)

(assert (=> bs!1292249 m!6568770))

(assert (=> b!5587264 d!1766245))

(assert (=> b!5587264 d!1766059))

(assert (=> b!5587264 d!1766061))

(assert (=> b!5587114 d!1766049))

(declare-fun d!1766247 () Bool)

(declare-fun res!2371114 () Bool)

(declare-fun e!3447699 () Bool)

(assert (=> d!1766247 (=> res!2371114 e!3447699)))

(assert (=> d!1766247 (= res!2371114 (is-EmptyExpr!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> d!1766247 (= (nullableFct!1715 (h!69346 (exprs!5458 (h!69347 zl!343)))) e!3447699)))

(declare-fun b!5588167 () Bool)

(declare-fun e!3447697 () Bool)

(declare-fun e!3447698 () Bool)

(assert (=> b!5588167 (= e!3447697 e!3447698)))

(declare-fun res!2371112 () Bool)

(declare-fun call!418385 () Bool)

(assert (=> b!5588167 (= res!2371112 call!418385)))

(assert (=> b!5588167 (=> (not res!2371112) (not e!3447698))))

(declare-fun b!5588168 () Bool)

(declare-fun call!418384 () Bool)

(assert (=> b!5588168 (= e!3447698 call!418384)))

(declare-fun b!5588169 () Bool)

(declare-fun e!3447701 () Bool)

(assert (=> b!5588169 (= e!3447699 e!3447701)))

(declare-fun res!2371116 () Bool)

(assert (=> b!5588169 (=> (not res!2371116) (not e!3447701))))

(assert (=> b!5588169 (= res!2371116 (and (not (is-EmptyLang!15574 (h!69346 (exprs!5458 (h!69347 zl!343))))) (not (is-ElementMatch!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun b!5588170 () Bool)

(declare-fun e!3447700 () Bool)

(assert (=> b!5588170 (= e!3447697 e!3447700)))

(declare-fun res!2371115 () Bool)

(assert (=> b!5588170 (= res!2371115 call!418385)))

(assert (=> b!5588170 (=> res!2371115 e!3447700)))

(declare-fun b!5588171 () Bool)

(declare-fun e!3447702 () Bool)

(assert (=> b!5588171 (= e!3447701 e!3447702)))

(declare-fun res!2371113 () Bool)

(assert (=> b!5588171 (=> res!2371113 e!3447702)))

(assert (=> b!5588171 (= res!2371113 (is-Star!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588172 () Bool)

(assert (=> b!5588172 (= e!3447700 call!418384)))

(declare-fun b!5588173 () Bool)

(assert (=> b!5588173 (= e!3447702 e!3447697)))

(declare-fun c!979053 () Bool)

(assert (=> b!5588173 (= c!979053 (is-Union!15574 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun bm!418379 () Bool)

(assert (=> bm!418379 (= call!418385 (nullable!5606 (ite c!979053 (regOne!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regOne!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(declare-fun bm!418380 () Bool)

(assert (=> bm!418380 (= call!418384 (nullable!5606 (ite c!979053 (regTwo!31661 (h!69346 (exprs!5458 (h!69347 zl!343)))) (regTwo!31660 (h!69346 (exprs!5458 (h!69347 zl!343)))))))))

(assert (= (and d!1766247 (not res!2371114)) b!5588169))

(assert (= (and b!5588169 res!2371116) b!5588171))

(assert (= (and b!5588171 (not res!2371113)) b!5588173))

(assert (= (and b!5588173 c!979053) b!5588170))

(assert (= (and b!5588173 (not c!979053)) b!5588167))

(assert (= (and b!5588170 (not res!2371115)) b!5588172))

(assert (= (and b!5588167 res!2371112) b!5588168))

(assert (= (or b!5588172 b!5588168) bm!418380))

(assert (= (or b!5588170 b!5588167) bm!418379))

(declare-fun m!6568772 () Bool)

(assert (=> bm!418379 m!6568772))

(declare-fun m!6568774 () Bool)

(assert (=> bm!418380 m!6568774))

(assert (=> d!1765811 d!1766247))

(declare-fun d!1766249 () Bool)

(assert (=> d!1766249 (= (nullable!5606 (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))) (nullableFct!1715 (regOne!31660 (regOne!31661 (regOne!31660 r!7292)))))))

(declare-fun bs!1292250 () Bool)

(assert (= bs!1292250 d!1766249))

(declare-fun m!6568776 () Bool)

(assert (=> bs!1292250 m!6568776))

(assert (=> b!5587225 d!1766249))

(declare-fun bs!1292251 () Bool)

(declare-fun d!1766251 () Bool)

(assert (= bs!1292251 (and d!1766251 d!1765895)))

(declare-fun lambda!299883 () Int)

(assert (=> bs!1292251 (= lambda!299883 lambda!299818)))

(declare-fun bs!1292252 () Bool)

(assert (= bs!1292252 (and d!1766251 d!1765827)))

(assert (=> bs!1292252 (= lambda!299883 lambda!299796)))

(declare-fun bs!1292253 () Bool)

(assert (= bs!1292253 (and d!1766251 d!1765891)))

(assert (=> bs!1292253 (= lambda!299883 lambda!299817)))

(declare-fun bs!1292254 () Bool)

(assert (= bs!1292254 (and d!1766251 d!1766239)))

(assert (=> bs!1292254 (= lambda!299883 lambda!299880)))

(declare-fun bs!1292255 () Bool)

(assert (= bs!1292255 (and d!1766251 d!1766135)))

(assert (=> bs!1292255 (= lambda!299883 lambda!299868)))

(declare-fun bs!1292256 () Bool)

(assert (= bs!1292256 (and d!1766251 d!1765831)))

(assert (=> bs!1292256 (= lambda!299883 lambda!299799)))

(declare-fun bs!1292257 () Bool)

(assert (= bs!1292257 (and d!1766251 d!1766017)))

(assert (=> bs!1292257 (= lambda!299883 lambda!299847)))

(declare-fun bs!1292258 () Bool)

(assert (= bs!1292258 (and d!1766251 d!1766241)))

(assert (=> bs!1292258 (= lambda!299883 lambda!299881)))

(declare-fun bs!1292259 () Bool)

(assert (= bs!1292259 (and d!1766251 d!1765825)))

(assert (=> bs!1292259 (= lambda!299883 lambda!299793)))

(assert (=> d!1766251 (= (inv!82183 setElem!37222) (forall!14740 (exprs!5458 setElem!37222) lambda!299883))))

(declare-fun bs!1292260 () Bool)

(assert (= bs!1292260 d!1766251))

(declare-fun m!6568778 () Bool)

(assert (=> bs!1292260 m!6568778))

(assert (=> setNonEmpty!37222 d!1766251))

(declare-fun d!1766253 () Bool)

(assert (=> d!1766253 (= (isEmpty!34712 (t!376297 (unfocusZipperList!1002 zl!343))) (is-Nil!62898 (t!376297 (unfocusZipperList!1002 zl!343))))))

(assert (=> b!5587018 d!1766253))

(assert (=> d!1765897 d!1766013))

(declare-fun bs!1292261 () Bool)

(declare-fun d!1766255 () Bool)

(assert (= bs!1292261 (and d!1766255 d!1766073)))

(declare-fun lambda!299884 () Int)

(assert (=> bs!1292261 (= lambda!299884 lambda!299861)))

(declare-fun bs!1292262 () Bool)

(assert (= bs!1292262 (and d!1766255 d!1766161)))

(assert (=> bs!1292262 (= lambda!299884 lambda!299872)))

(declare-fun bs!1292263 () Bool)

(assert (= bs!1292263 (and d!1766255 d!1766193)))

(assert (=> bs!1292263 (= lambda!299884 lambda!299876)))

(declare-fun bs!1292264 () Bool)

(assert (= bs!1292264 (and d!1766255 d!1766129)))

(assert (=> bs!1292264 (= lambda!299884 lambda!299867)))

(declare-fun bs!1292265 () Bool)

(assert (= bs!1292265 (and d!1766255 d!1766127)))

(assert (=> bs!1292265 (= lambda!299884 lambda!299866)))

(declare-fun bs!1292266 () Bool)

(assert (= bs!1292266 (and d!1766255 d!1766173)))

(assert (=> bs!1292266 (= lambda!299884 lambda!299873)))

(declare-fun bs!1292267 () Bool)

(assert (= bs!1292267 (and d!1766255 d!1766109)))

(assert (=> bs!1292267 (= lambda!299884 lambda!299865)))

(assert (=> d!1766255 (= (nullableZipper!1569 lt!2254821) (exists!2164 lt!2254821 lambda!299884))))

(declare-fun bs!1292268 () Bool)

(assert (= bs!1292268 d!1766255))

(declare-fun m!6568780 () Bool)

(assert (=> bs!1292268 m!6568780))

(assert (=> b!5587039 d!1766255))

(declare-fun d!1766257 () Bool)

(assert (=> d!1766257 (= (nullable!5606 (h!69346 (exprs!5458 lt!2254810))) (nullableFct!1715 (h!69346 (exprs!5458 lt!2254810))))))

(declare-fun bs!1292269 () Bool)

(assert (= bs!1292269 d!1766257))

(declare-fun m!6568782 () Bool)

(assert (=> bs!1292269 m!6568782))

(assert (=> b!5587173 d!1766257))

(declare-fun b!5588174 () Bool)

(declare-fun e!3447707 () Bool)

(declare-fun call!418386 () Bool)

(assert (=> b!5588174 (= e!3447707 call!418386)))

(declare-fun b!5588175 () Bool)

(declare-fun e!3447706 () Bool)

(declare-fun e!3447705 () Bool)

(assert (=> b!5588175 (= e!3447706 e!3447705)))

(declare-fun res!2371118 () Bool)

(assert (=> b!5588175 (= res!2371118 (not (nullable!5606 (reg!15903 lt!2254959))))))

(assert (=> b!5588175 (=> (not res!2371118) (not e!3447705))))

(declare-fun bm!418381 () Bool)

(declare-fun c!979055 () Bool)

(assert (=> bm!418381 (= call!418386 (validRegex!7310 (ite c!979055 (regTwo!31661 lt!2254959) (regTwo!31660 lt!2254959))))))

(declare-fun b!5588176 () Bool)

(declare-fun e!3447709 () Bool)

(declare-fun e!3447703 () Bool)

(assert (=> b!5588176 (= e!3447709 e!3447703)))

(declare-fun res!2371121 () Bool)

(assert (=> b!5588176 (=> (not res!2371121) (not e!3447703))))

(declare-fun call!418387 () Bool)

(assert (=> b!5588176 (= res!2371121 call!418387)))

(declare-fun b!5588177 () Bool)

(declare-fun call!418388 () Bool)

(assert (=> b!5588177 (= e!3447705 call!418388)))

(declare-fun d!1766259 () Bool)

(declare-fun res!2371120 () Bool)

(declare-fun e!3447708 () Bool)

(assert (=> d!1766259 (=> res!2371120 e!3447708)))

(assert (=> d!1766259 (= res!2371120 (is-ElementMatch!15574 lt!2254959))))

(assert (=> d!1766259 (= (validRegex!7310 lt!2254959) e!3447708)))

(declare-fun b!5588178 () Bool)

(declare-fun res!2371117 () Bool)

(assert (=> b!5588178 (=> (not res!2371117) (not e!3447707))))

(assert (=> b!5588178 (= res!2371117 call!418387)))

(declare-fun e!3447704 () Bool)

(assert (=> b!5588178 (= e!3447704 e!3447707)))

(declare-fun bm!418382 () Bool)

(assert (=> bm!418382 (= call!418387 call!418388)))

(declare-fun b!5588179 () Bool)

(assert (=> b!5588179 (= e!3447708 e!3447706)))

(declare-fun c!979054 () Bool)

(assert (=> b!5588179 (= c!979054 (is-Star!15574 lt!2254959))))

(declare-fun b!5588180 () Bool)

(declare-fun res!2371119 () Bool)

(assert (=> b!5588180 (=> res!2371119 e!3447709)))

(assert (=> b!5588180 (= res!2371119 (not (is-Concat!24419 lt!2254959)))))

(assert (=> b!5588180 (= e!3447704 e!3447709)))

(declare-fun bm!418383 () Bool)

(assert (=> bm!418383 (= call!418388 (validRegex!7310 (ite c!979054 (reg!15903 lt!2254959) (ite c!979055 (regOne!31661 lt!2254959) (regOne!31660 lt!2254959)))))))

(declare-fun b!5588181 () Bool)

(assert (=> b!5588181 (= e!3447706 e!3447704)))

(assert (=> b!5588181 (= c!979055 (is-Union!15574 lt!2254959))))

(declare-fun b!5588182 () Bool)

(assert (=> b!5588182 (= e!3447703 call!418386)))

(assert (= (and d!1766259 (not res!2371120)) b!5588179))

(assert (= (and b!5588179 c!979054) b!5588175))

(assert (= (and b!5588179 (not c!979054)) b!5588181))

(assert (= (and b!5588175 res!2371118) b!5588177))

(assert (= (and b!5588181 c!979055) b!5588178))

(assert (= (and b!5588181 (not c!979055)) b!5588180))

(assert (= (and b!5588178 res!2371117) b!5588174))

(assert (= (and b!5588180 (not res!2371119)) b!5588176))

(assert (= (and b!5588176 res!2371121) b!5588182))

(assert (= (or b!5588174 b!5588182) bm!418381))

(assert (= (or b!5588178 b!5588176) bm!418382))

(assert (= (or b!5588177 bm!418382) bm!418383))

(declare-fun m!6568784 () Bool)

(assert (=> b!5588175 m!6568784))

(declare-fun m!6568786 () Bool)

(assert (=> bm!418381 m!6568786))

(declare-fun m!6568788 () Bool)

(assert (=> bm!418383 m!6568788))

(assert (=> d!1765891 d!1766259))

(declare-fun d!1766261 () Bool)

(declare-fun res!2371122 () Bool)

(declare-fun e!3447710 () Bool)

(assert (=> d!1766261 (=> res!2371122 e!3447710)))

(assert (=> d!1766261 (= res!2371122 (is-Nil!62898 (exprs!5458 (h!69347 zl!343))))))

(assert (=> d!1766261 (= (forall!14740 (exprs!5458 (h!69347 zl!343)) lambda!299817) e!3447710)))

(declare-fun b!5588183 () Bool)

(declare-fun e!3447711 () Bool)

(assert (=> b!5588183 (= e!3447710 e!3447711)))

(declare-fun res!2371123 () Bool)

(assert (=> b!5588183 (=> (not res!2371123) (not e!3447711))))

(assert (=> b!5588183 (= res!2371123 (dynLambda!24599 lambda!299817 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun b!5588184 () Bool)

(assert (=> b!5588184 (= e!3447711 (forall!14740 (t!376297 (exprs!5458 (h!69347 zl!343))) lambda!299817))))

(assert (= (and d!1766261 (not res!2371122)) b!5588183))

(assert (= (and b!5588183 res!2371123) b!5588184))

(declare-fun b_lambda!211745 () Bool)

(assert (=> (not b_lambda!211745) (not b!5588183)))

(declare-fun m!6568790 () Bool)

(assert (=> b!5588183 m!6568790))

(declare-fun m!6568792 () Bool)

(assert (=> b!5588184 m!6568792))

(assert (=> d!1765891 d!1766261))

(declare-fun d!1766263 () Bool)

(assert (=> d!1766263 (= (nullable!5606 (h!69346 (exprs!5458 lt!2254814))) (nullableFct!1715 (h!69346 (exprs!5458 lt!2254814))))))

(declare-fun bs!1292270 () Bool)

(assert (= bs!1292270 d!1766263))

(declare-fun m!6568794 () Bool)

(assert (=> bs!1292270 m!6568794))

(assert (=> b!5587168 d!1766263))

(declare-fun bm!418384 () Bool)

(declare-fun call!418390 () (Set Context!9916))

(declare-fun call!418391 () (Set Context!9916))

(assert (=> bm!418384 (= call!418390 call!418391)))

(declare-fun b!5588185 () Bool)

(declare-fun e!3447716 () (Set Context!9916))

(declare-fun call!418393 () (Set Context!9916))

(assert (=> b!5588185 (= e!3447716 (set.union call!418393 call!418390))))

(declare-fun c!979058 () Bool)

(declare-fun bm!418385 () Bool)

(declare-fun call!418394 () List!63022)

(assert (=> bm!418385 (= call!418393 (derivationStepZipperDown!916 (ite c!979058 (regOne!31661 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (regOne!31660 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))))) (ite c!979058 (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217)) (Context!9917 call!418394)) (h!69345 s!2326)))))

(declare-fun bm!418386 () Bool)

(declare-fun call!418389 () (Set Context!9916))

(assert (=> bm!418386 (= call!418389 call!418390)))

(declare-fun c!979059 () Bool)

(declare-fun d!1766265 () Bool)

(assert (=> d!1766265 (= c!979059 (and (is-ElementMatch!15574 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (= (c!978676 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (h!69345 s!2326))))))

(declare-fun e!3447712 () (Set Context!9916))

(assert (=> d!1766265 (= (derivationStepZipperDown!916 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))) (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217)) (h!69345 s!2326)) e!3447712)))

(declare-fun b!5588186 () Bool)

(declare-fun e!3447714 () (Set Context!9916))

(assert (=> b!5588186 (= e!3447712 e!3447714)))

(assert (=> b!5588186 (= c!979058 (is-Union!15574 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))))))

(declare-fun call!418392 () List!63022)

(declare-fun c!979056 () Bool)

(declare-fun c!979060 () Bool)

(declare-fun bm!418387 () Bool)

(assert (=> bm!418387 (= call!418391 (derivationStepZipperDown!916 (ite c!979058 (regTwo!31661 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (ite c!979056 (regTwo!31660 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (ite c!979060 (regOne!31660 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (reg!15903 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))))))) (ite (or c!979058 c!979056) (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217)) (Context!9917 call!418392)) (h!69345 s!2326)))))

(declare-fun b!5588187 () Bool)

(declare-fun e!3447713 () Bool)

(assert (=> b!5588187 (= c!979056 e!3447713)))

(declare-fun res!2371124 () Bool)

(assert (=> b!5588187 (=> (not res!2371124) (not e!3447713))))

(assert (=> b!5588187 (= res!2371124 (is-Concat!24419 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))))))

(assert (=> b!5588187 (= e!3447714 e!3447716)))

(declare-fun b!5588188 () Bool)

(declare-fun e!3447715 () (Set Context!9916))

(assert (=> b!5588188 (= e!3447715 call!418389)))

(declare-fun b!5588189 () Bool)

(assert (=> b!5588189 (= e!3447716 e!3447715)))

(assert (=> b!5588189 (= c!979060 (is-Concat!24419 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))))))

(declare-fun b!5588190 () Bool)

(assert (=> b!5588190 (= e!3447713 (nullable!5606 (regOne!31660 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))))))))

(declare-fun b!5588191 () Bool)

(assert (=> b!5588191 (= e!3447712 (set.insert (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217)) (as set.empty (Set Context!9916))))))

(declare-fun b!5588192 () Bool)

(declare-fun e!3447717 () (Set Context!9916))

(assert (=> b!5588192 (= e!3447717 call!418389)))

(declare-fun b!5588193 () Bool)

(assert (=> b!5588193 (= e!3447714 (set.union call!418393 call!418391))))

(declare-fun c!979057 () Bool)

(declare-fun b!5588194 () Bool)

(assert (=> b!5588194 (= c!979057 (is-Star!15574 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))))))

(assert (=> b!5588194 (= e!3447715 e!3447717)))

(declare-fun bm!418388 () Bool)

(assert (=> bm!418388 (= call!418394 ($colon$colon!1637 (exprs!5458 (ite (or c!978782 c!978780) lt!2254824 (Context!9917 call!418217))) (ite (or c!979056 c!979060) (regTwo!31660 (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292))))))) (ite c!978782 (regTwo!31661 (regOne!31661 (regOne!31660 r!7292))) (ite c!978780 (regTwo!31660 (regOne!31661 (regOne!31660 r!7292))) (ite c!978784 (regOne!31660 (regOne!31661 (regOne!31660 r!7292))) (reg!15903 (regOne!31661 (regOne!31660 r!7292)))))))))))

(declare-fun bm!418389 () Bool)

(assert (=> bm!418389 (= call!418392 call!418394)))

(declare-fun b!5588195 () Bool)

(assert (=> b!5588195 (= e!3447717 (as set.empty (Set Context!9916)))))

(assert (= (and d!1766265 c!979059) b!5588191))

(assert (= (and d!1766265 (not c!979059)) b!5588186))

(assert (= (and b!5588186 c!979058) b!5588193))

(assert (= (and b!5588186 (not c!979058)) b!5588187))

(assert (= (and b!5588187 res!2371124) b!5588190))

(assert (= (and b!5588187 c!979056) b!5588185))

(assert (= (and b!5588187 (not c!979056)) b!5588189))

(assert (= (and b!5588189 c!979060) b!5588188))

(assert (= (and b!5588189 (not c!979060)) b!5588194))

(assert (= (and b!5588194 c!979057) b!5588192))

(assert (= (and b!5588194 (not c!979057)) b!5588195))

(assert (= (or b!5588188 b!5588192) bm!418389))

(assert (= (or b!5588188 b!5588192) bm!418386))

(assert (= (or b!5588185 bm!418389) bm!418388))

(assert (= (or b!5588185 bm!418386) bm!418384))

(assert (= (or b!5588193 bm!418384) bm!418387))

(assert (= (or b!5588193 b!5588185) bm!418385))

(declare-fun m!6568796 () Bool)

(assert (=> bm!418388 m!6568796))

(declare-fun m!6568798 () Bool)

(assert (=> bm!418387 m!6568798))

(declare-fun m!6568800 () Bool)

(assert (=> b!5588191 m!6568800))

(declare-fun m!6568802 () Bool)

(assert (=> bm!418385 m!6568802))

(declare-fun m!6568804 () Bool)

(assert (=> b!5588190 m!6568804))

(assert (=> bm!418212 d!1766265))

(declare-fun b!5588198 () Bool)

(declare-fun e!3447718 () Bool)

(declare-fun tp!1545620 () Bool)

(assert (=> b!5588198 (= e!3447718 tp!1545620)))

(declare-fun b!5588199 () Bool)

(declare-fun tp!1545622 () Bool)

(declare-fun tp!1545623 () Bool)

(assert (=> b!5588199 (= e!3447718 (and tp!1545622 tp!1545623))))

(declare-fun b!5588197 () Bool)

(declare-fun tp!1545621 () Bool)

(declare-fun tp!1545624 () Bool)

(assert (=> b!5588197 (= e!3447718 (and tp!1545621 tp!1545624))))

(declare-fun b!5588196 () Bool)

(assert (=> b!5588196 (= e!3447718 tp_is_empty!40401)))

(assert (=> b!5587321 (= tp!1545543 e!3447718)))

(assert (= (and b!5587321 (is-ElementMatch!15574 (regOne!31661 (regTwo!31660 r!7292)))) b!5588196))

(assert (= (and b!5587321 (is-Concat!24419 (regOne!31661 (regTwo!31660 r!7292)))) b!5588197))

(assert (= (and b!5587321 (is-Star!15574 (regOne!31661 (regTwo!31660 r!7292)))) b!5588198))

(assert (= (and b!5587321 (is-Union!15574 (regOne!31661 (regTwo!31660 r!7292)))) b!5588199))

(declare-fun b!5588202 () Bool)

(declare-fun e!3447719 () Bool)

(declare-fun tp!1545625 () Bool)

(assert (=> b!5588202 (= e!3447719 tp!1545625)))

(declare-fun b!5588203 () Bool)

(declare-fun tp!1545627 () Bool)

(declare-fun tp!1545628 () Bool)

(assert (=> b!5588203 (= e!3447719 (and tp!1545627 tp!1545628))))

(declare-fun b!5588201 () Bool)

(declare-fun tp!1545626 () Bool)

(declare-fun tp!1545629 () Bool)

(assert (=> b!5588201 (= e!3447719 (and tp!1545626 tp!1545629))))

(declare-fun b!5588200 () Bool)

(assert (=> b!5588200 (= e!3447719 tp_is_empty!40401)))

(assert (=> b!5587321 (= tp!1545544 e!3447719)))

(assert (= (and b!5587321 (is-ElementMatch!15574 (regTwo!31661 (regTwo!31660 r!7292)))) b!5588200))

(assert (= (and b!5587321 (is-Concat!24419 (regTwo!31661 (regTwo!31660 r!7292)))) b!5588201))

(assert (= (and b!5587321 (is-Star!15574 (regTwo!31661 (regTwo!31660 r!7292)))) b!5588202))

(assert (= (and b!5587321 (is-Union!15574 (regTwo!31661 (regTwo!31660 r!7292)))) b!5588203))

(declare-fun b!5588206 () Bool)

(declare-fun e!3447720 () Bool)

(declare-fun tp!1545630 () Bool)

(assert (=> b!5588206 (= e!3447720 tp!1545630)))

(declare-fun b!5588207 () Bool)

(declare-fun tp!1545632 () Bool)

(declare-fun tp!1545633 () Bool)

(assert (=> b!5588207 (= e!3447720 (and tp!1545632 tp!1545633))))

(declare-fun b!5588205 () Bool)

(declare-fun tp!1545631 () Bool)

(declare-fun tp!1545634 () Bool)

(assert (=> b!5588205 (= e!3447720 (and tp!1545631 tp!1545634))))

(declare-fun b!5588204 () Bool)

(assert (=> b!5588204 (= e!3447720 tp_is_empty!40401)))

(assert (=> b!5587320 (= tp!1545541 e!3447720)))

(assert (= (and b!5587320 (is-ElementMatch!15574 (reg!15903 (regTwo!31660 r!7292)))) b!5588204))

(assert (= (and b!5587320 (is-Concat!24419 (reg!15903 (regTwo!31660 r!7292)))) b!5588205))

(assert (= (and b!5587320 (is-Star!15574 (reg!15903 (regTwo!31660 r!7292)))) b!5588206))

(assert (= (and b!5587320 (is-Union!15574 (reg!15903 (regTwo!31660 r!7292)))) b!5588207))

(declare-fun b!5588208 () Bool)

(declare-fun e!3447721 () Bool)

(declare-fun tp!1545635 () Bool)

(declare-fun tp!1545636 () Bool)

(assert (=> b!5588208 (= e!3447721 (and tp!1545635 tp!1545636))))

(assert (=> b!5587293 (= tp!1545512 e!3447721)))

(assert (= (and b!5587293 (is-Cons!62898 (exprs!5458 (h!69347 (t!376298 zl!343))))) b!5588208))

(declare-fun b!5588210 () Bool)

(declare-fun e!3447723 () Bool)

(declare-fun tp!1545637 () Bool)

(assert (=> b!5588210 (= e!3447723 tp!1545637)))

(declare-fun e!3447722 () Bool)

(declare-fun b!5588209 () Bool)

(declare-fun tp!1545638 () Bool)

(assert (=> b!5588209 (= e!3447722 (and (inv!82183 (h!69347 (t!376298 (t!376298 zl!343)))) e!3447723 tp!1545638))))

(assert (=> b!5587292 (= tp!1545513 e!3447722)))

(assert (= b!5588209 b!5588210))

(assert (= (and b!5587292 (is-Cons!62899 (t!376298 (t!376298 zl!343)))) b!5588209))

(declare-fun m!6568806 () Bool)

(assert (=> b!5588209 m!6568806))

(declare-fun b!5588213 () Bool)

(declare-fun e!3447724 () Bool)

(declare-fun tp!1545639 () Bool)

(assert (=> b!5588213 (= e!3447724 tp!1545639)))

(declare-fun b!5588214 () Bool)

(declare-fun tp!1545641 () Bool)

(declare-fun tp!1545642 () Bool)

(assert (=> b!5588214 (= e!3447724 (and tp!1545641 tp!1545642))))

(declare-fun b!5588212 () Bool)

(declare-fun tp!1545640 () Bool)

(declare-fun tp!1545643 () Bool)

(assert (=> b!5588212 (= e!3447724 (and tp!1545640 tp!1545643))))

(declare-fun b!5588211 () Bool)

(assert (=> b!5588211 (= e!3447724 tp_is_empty!40401)))

(assert (=> b!5587298 (= tp!1545518 e!3447724)))

(assert (= (and b!5587298 (is-ElementMatch!15574 (h!69346 (exprs!5458 (h!69347 zl!343))))) b!5588211))

(assert (= (and b!5587298 (is-Concat!24419 (h!69346 (exprs!5458 (h!69347 zl!343))))) b!5588212))

(assert (= (and b!5587298 (is-Star!15574 (h!69346 (exprs!5458 (h!69347 zl!343))))) b!5588213))

(assert (= (and b!5587298 (is-Union!15574 (h!69346 (exprs!5458 (h!69347 zl!343))))) b!5588214))

(declare-fun b!5588215 () Bool)

(declare-fun e!3447725 () Bool)

(declare-fun tp!1545644 () Bool)

(declare-fun tp!1545645 () Bool)

(assert (=> b!5588215 (= e!3447725 (and tp!1545644 tp!1545645))))

(assert (=> b!5587298 (= tp!1545519 e!3447725)))

(assert (= (and b!5587298 (is-Cons!62898 (t!376297 (exprs!5458 (h!69347 zl!343))))) b!5588215))

(declare-fun b!5588218 () Bool)

(declare-fun e!3447726 () Bool)

(declare-fun tp!1545646 () Bool)

(assert (=> b!5588218 (= e!3447726 tp!1545646)))

(declare-fun b!5588219 () Bool)

(declare-fun tp!1545648 () Bool)

(declare-fun tp!1545649 () Bool)

(assert (=> b!5588219 (= e!3447726 (and tp!1545648 tp!1545649))))

(declare-fun b!5588217 () Bool)

(declare-fun tp!1545647 () Bool)

(declare-fun tp!1545650 () Bool)

(assert (=> b!5588217 (= e!3447726 (and tp!1545647 tp!1545650))))

(declare-fun b!5588216 () Bool)

(assert (=> b!5588216 (= e!3447726 tp_is_empty!40401)))

(assert (=> b!5587319 (= tp!1545542 e!3447726)))

(assert (= (and b!5587319 (is-ElementMatch!15574 (regOne!31660 (regTwo!31660 r!7292)))) b!5588216))

(assert (= (and b!5587319 (is-Concat!24419 (regOne!31660 (regTwo!31660 r!7292)))) b!5588217))

(assert (= (and b!5587319 (is-Star!15574 (regOne!31660 (regTwo!31660 r!7292)))) b!5588218))

(assert (= (and b!5587319 (is-Union!15574 (regOne!31660 (regTwo!31660 r!7292)))) b!5588219))

(declare-fun b!5588222 () Bool)

(declare-fun e!3447727 () Bool)

(declare-fun tp!1545651 () Bool)

(assert (=> b!5588222 (= e!3447727 tp!1545651)))

(declare-fun b!5588223 () Bool)

(declare-fun tp!1545653 () Bool)

(declare-fun tp!1545654 () Bool)

(assert (=> b!5588223 (= e!3447727 (and tp!1545653 tp!1545654))))

(declare-fun b!5588221 () Bool)

(declare-fun tp!1545652 () Bool)

(declare-fun tp!1545655 () Bool)

(assert (=> b!5588221 (= e!3447727 (and tp!1545652 tp!1545655))))

(declare-fun b!5588220 () Bool)

(assert (=> b!5588220 (= e!3447727 tp_is_empty!40401)))

(assert (=> b!5587319 (= tp!1545545 e!3447727)))

(assert (= (and b!5587319 (is-ElementMatch!15574 (regTwo!31660 (regTwo!31660 r!7292)))) b!5588220))

(assert (= (and b!5587319 (is-Concat!24419 (regTwo!31660 (regTwo!31660 r!7292)))) b!5588221))

(assert (= (and b!5587319 (is-Star!15574 (regTwo!31660 (regTwo!31660 r!7292)))) b!5588222))

(assert (= (and b!5587319 (is-Union!15574 (regTwo!31660 (regTwo!31660 r!7292)))) b!5588223))

(declare-fun b!5588226 () Bool)

(declare-fun e!3447728 () Bool)

(declare-fun tp!1545656 () Bool)

(assert (=> b!5588226 (= e!3447728 tp!1545656)))

(declare-fun b!5588227 () Bool)

(declare-fun tp!1545658 () Bool)

(declare-fun tp!1545659 () Bool)

(assert (=> b!5588227 (= e!3447728 (and tp!1545658 tp!1545659))))

(declare-fun b!5588225 () Bool)

(declare-fun tp!1545657 () Bool)

(declare-fun tp!1545660 () Bool)

(assert (=> b!5588225 (= e!3447728 (and tp!1545657 tp!1545660))))

(declare-fun b!5588224 () Bool)

(assert (=> b!5588224 (= e!3447728 tp_is_empty!40401)))

(assert (=> b!5587285 (= tp!1545505 e!3447728)))

(assert (= (and b!5587285 (is-ElementMatch!15574 (regOne!31661 (regTwo!31661 r!7292)))) b!5588224))

(assert (= (and b!5587285 (is-Concat!24419 (regOne!31661 (regTwo!31661 r!7292)))) b!5588225))

(assert (= (and b!5587285 (is-Star!15574 (regOne!31661 (regTwo!31661 r!7292)))) b!5588226))

(assert (= (and b!5587285 (is-Union!15574 (regOne!31661 (regTwo!31661 r!7292)))) b!5588227))

(declare-fun b!5588230 () Bool)

(declare-fun e!3447729 () Bool)

(declare-fun tp!1545661 () Bool)

(assert (=> b!5588230 (= e!3447729 tp!1545661)))

(declare-fun b!5588231 () Bool)

(declare-fun tp!1545663 () Bool)

(declare-fun tp!1545664 () Bool)

(assert (=> b!5588231 (= e!3447729 (and tp!1545663 tp!1545664))))

(declare-fun b!5588229 () Bool)

(declare-fun tp!1545662 () Bool)

(declare-fun tp!1545665 () Bool)

(assert (=> b!5588229 (= e!3447729 (and tp!1545662 tp!1545665))))

(declare-fun b!5588228 () Bool)

(assert (=> b!5588228 (= e!3447729 tp_is_empty!40401)))

(assert (=> b!5587285 (= tp!1545506 e!3447729)))

(assert (= (and b!5587285 (is-ElementMatch!15574 (regTwo!31661 (regTwo!31661 r!7292)))) b!5588228))

(assert (= (and b!5587285 (is-Concat!24419 (regTwo!31661 (regTwo!31661 r!7292)))) b!5588229))

(assert (= (and b!5587285 (is-Star!15574 (regTwo!31661 (regTwo!31661 r!7292)))) b!5588230))

(assert (= (and b!5587285 (is-Union!15574 (regTwo!31661 (regTwo!31661 r!7292)))) b!5588231))

(declare-fun b!5588234 () Bool)

(declare-fun e!3447730 () Bool)

(declare-fun tp!1545666 () Bool)

(assert (=> b!5588234 (= e!3447730 tp!1545666)))

(declare-fun b!5588235 () Bool)

(declare-fun tp!1545668 () Bool)

(declare-fun tp!1545669 () Bool)

(assert (=> b!5588235 (= e!3447730 (and tp!1545668 tp!1545669))))

(declare-fun b!5588233 () Bool)

(declare-fun tp!1545667 () Bool)

(declare-fun tp!1545670 () Bool)

(assert (=> b!5588233 (= e!3447730 (and tp!1545667 tp!1545670))))

(declare-fun b!5588232 () Bool)

(assert (=> b!5588232 (= e!3447730 tp_is_empty!40401)))

(assert (=> b!5587284 (= tp!1545503 e!3447730)))

(assert (= (and b!5587284 (is-ElementMatch!15574 (reg!15903 (regTwo!31661 r!7292)))) b!5588232))

(assert (= (and b!5587284 (is-Concat!24419 (reg!15903 (regTwo!31661 r!7292)))) b!5588233))

(assert (= (and b!5587284 (is-Star!15574 (reg!15903 (regTwo!31661 r!7292)))) b!5588234))

(assert (= (and b!5587284 (is-Union!15574 (reg!15903 (regTwo!31661 r!7292)))) b!5588235))

(declare-fun b!5588238 () Bool)

(declare-fun e!3447731 () Bool)

(declare-fun tp!1545671 () Bool)

(assert (=> b!5588238 (= e!3447731 tp!1545671)))

(declare-fun b!5588239 () Bool)

(declare-fun tp!1545673 () Bool)

(declare-fun tp!1545674 () Bool)

(assert (=> b!5588239 (= e!3447731 (and tp!1545673 tp!1545674))))

(declare-fun b!5588237 () Bool)

(declare-fun tp!1545672 () Bool)

(declare-fun tp!1545675 () Bool)

(assert (=> b!5588237 (= e!3447731 (and tp!1545672 tp!1545675))))

(declare-fun b!5588236 () Bool)

(assert (=> b!5588236 (= e!3447731 tp_is_empty!40401)))

(assert (=> b!5587283 (= tp!1545504 e!3447731)))

(assert (= (and b!5587283 (is-ElementMatch!15574 (regOne!31660 (regTwo!31661 r!7292)))) b!5588236))

(assert (= (and b!5587283 (is-Concat!24419 (regOne!31660 (regTwo!31661 r!7292)))) b!5588237))

(assert (= (and b!5587283 (is-Star!15574 (regOne!31660 (regTwo!31661 r!7292)))) b!5588238))

(assert (= (and b!5587283 (is-Union!15574 (regOne!31660 (regTwo!31661 r!7292)))) b!5588239))

(declare-fun b!5588242 () Bool)

(declare-fun e!3447732 () Bool)

(declare-fun tp!1545676 () Bool)

(assert (=> b!5588242 (= e!3447732 tp!1545676)))

(declare-fun b!5588243 () Bool)

(declare-fun tp!1545678 () Bool)

(declare-fun tp!1545679 () Bool)

(assert (=> b!5588243 (= e!3447732 (and tp!1545678 tp!1545679))))

(declare-fun b!5588241 () Bool)

(declare-fun tp!1545677 () Bool)

(declare-fun tp!1545680 () Bool)

(assert (=> b!5588241 (= e!3447732 (and tp!1545677 tp!1545680))))

(declare-fun b!5588240 () Bool)

(assert (=> b!5588240 (= e!3447732 tp_is_empty!40401)))

(assert (=> b!5587283 (= tp!1545507 e!3447732)))

(assert (= (and b!5587283 (is-ElementMatch!15574 (regTwo!31660 (regTwo!31661 r!7292)))) b!5588240))

(assert (= (and b!5587283 (is-Concat!24419 (regTwo!31660 (regTwo!31661 r!7292)))) b!5588241))

(assert (= (and b!5587283 (is-Star!15574 (regTwo!31660 (regTwo!31661 r!7292)))) b!5588242))

(assert (= (and b!5587283 (is-Union!15574 (regTwo!31660 (regTwo!31661 r!7292)))) b!5588243))

(declare-fun b!5588246 () Bool)

(declare-fun e!3447733 () Bool)

(declare-fun tp!1545681 () Bool)

(assert (=> b!5588246 (= e!3447733 tp!1545681)))

(declare-fun b!5588247 () Bool)

(declare-fun tp!1545683 () Bool)

(declare-fun tp!1545684 () Bool)

(assert (=> b!5588247 (= e!3447733 (and tp!1545683 tp!1545684))))

(declare-fun b!5588245 () Bool)

(declare-fun tp!1545682 () Bool)

(declare-fun tp!1545685 () Bool)

(assert (=> b!5588245 (= e!3447733 (and tp!1545682 tp!1545685))))

(declare-fun b!5588244 () Bool)

(assert (=> b!5588244 (= e!3447733 tp_is_empty!40401)))

(assert (=> b!5587303 (= tp!1545525 e!3447733)))

(assert (= (and b!5587303 (is-ElementMatch!15574 (h!69346 (exprs!5458 setElem!37216)))) b!5588244))

(assert (= (and b!5587303 (is-Concat!24419 (h!69346 (exprs!5458 setElem!37216)))) b!5588245))

(assert (= (and b!5587303 (is-Star!15574 (h!69346 (exprs!5458 setElem!37216)))) b!5588246))

(assert (= (and b!5587303 (is-Union!15574 (h!69346 (exprs!5458 setElem!37216)))) b!5588247))

(declare-fun b!5588248 () Bool)

(declare-fun e!3447734 () Bool)

(declare-fun tp!1545686 () Bool)

(declare-fun tp!1545687 () Bool)

(assert (=> b!5588248 (= e!3447734 (and tp!1545686 tp!1545687))))

(assert (=> b!5587303 (= tp!1545526 e!3447734)))

(assert (= (and b!5587303 (is-Cons!62898 (t!376297 (exprs!5458 setElem!37216)))) b!5588248))

(declare-fun b!5588251 () Bool)

(declare-fun e!3447735 () Bool)

(declare-fun tp!1545688 () Bool)

(assert (=> b!5588251 (= e!3447735 tp!1545688)))

(declare-fun b!5588252 () Bool)

(declare-fun tp!1545690 () Bool)

(declare-fun tp!1545691 () Bool)

(assert (=> b!5588252 (= e!3447735 (and tp!1545690 tp!1545691))))

(declare-fun b!5588250 () Bool)

(declare-fun tp!1545689 () Bool)

(declare-fun tp!1545692 () Bool)

(assert (=> b!5588250 (= e!3447735 (and tp!1545689 tp!1545692))))

(declare-fun b!5588249 () Bool)

(assert (=> b!5588249 (= e!3447735 tp_is_empty!40401)))

(assert (=> b!5587317 (= tp!1545538 e!3447735)))

(assert (= (and b!5587317 (is-ElementMatch!15574 (regOne!31661 (regOne!31660 r!7292)))) b!5588249))

(assert (= (and b!5587317 (is-Concat!24419 (regOne!31661 (regOne!31660 r!7292)))) b!5588250))

(assert (= (and b!5587317 (is-Star!15574 (regOne!31661 (regOne!31660 r!7292)))) b!5588251))

(assert (= (and b!5587317 (is-Union!15574 (regOne!31661 (regOne!31660 r!7292)))) b!5588252))

(declare-fun b!5588255 () Bool)

(declare-fun e!3447736 () Bool)

(declare-fun tp!1545693 () Bool)

(assert (=> b!5588255 (= e!3447736 tp!1545693)))

(declare-fun b!5588256 () Bool)

(declare-fun tp!1545695 () Bool)

(declare-fun tp!1545696 () Bool)

(assert (=> b!5588256 (= e!3447736 (and tp!1545695 tp!1545696))))

(declare-fun b!5588254 () Bool)

(declare-fun tp!1545694 () Bool)

(declare-fun tp!1545697 () Bool)

(assert (=> b!5588254 (= e!3447736 (and tp!1545694 tp!1545697))))

(declare-fun b!5588253 () Bool)

(assert (=> b!5588253 (= e!3447736 tp_is_empty!40401)))

(assert (=> b!5587317 (= tp!1545539 e!3447736)))

(assert (= (and b!5587317 (is-ElementMatch!15574 (regTwo!31661 (regOne!31660 r!7292)))) b!5588253))

(assert (= (and b!5587317 (is-Concat!24419 (regTwo!31661 (regOne!31660 r!7292)))) b!5588254))

(assert (= (and b!5587317 (is-Star!15574 (regTwo!31661 (regOne!31660 r!7292)))) b!5588255))

(assert (= (and b!5587317 (is-Union!15574 (regTwo!31661 (regOne!31660 r!7292)))) b!5588256))

(declare-fun b!5588259 () Bool)

(declare-fun e!3447737 () Bool)

(declare-fun tp!1545698 () Bool)

(assert (=> b!5588259 (= e!3447737 tp!1545698)))

(declare-fun b!5588260 () Bool)

(declare-fun tp!1545700 () Bool)

(declare-fun tp!1545701 () Bool)

(assert (=> b!5588260 (= e!3447737 (and tp!1545700 tp!1545701))))

(declare-fun b!5588258 () Bool)

(declare-fun tp!1545699 () Bool)

(declare-fun tp!1545702 () Bool)

(assert (=> b!5588258 (= e!3447737 (and tp!1545699 tp!1545702))))

(declare-fun b!5588257 () Bool)

(assert (=> b!5588257 (= e!3447737 tp_is_empty!40401)))

(assert (=> b!5587315 (= tp!1545537 e!3447737)))

(assert (= (and b!5587315 (is-ElementMatch!15574 (regOne!31660 (regOne!31660 r!7292)))) b!5588257))

(assert (= (and b!5587315 (is-Concat!24419 (regOne!31660 (regOne!31660 r!7292)))) b!5588258))

(assert (= (and b!5587315 (is-Star!15574 (regOne!31660 (regOne!31660 r!7292)))) b!5588259))

(assert (= (and b!5587315 (is-Union!15574 (regOne!31660 (regOne!31660 r!7292)))) b!5588260))

(declare-fun b!5588263 () Bool)

(declare-fun e!3447738 () Bool)

(declare-fun tp!1545703 () Bool)

(assert (=> b!5588263 (= e!3447738 tp!1545703)))

(declare-fun b!5588264 () Bool)

(declare-fun tp!1545705 () Bool)

(declare-fun tp!1545706 () Bool)

(assert (=> b!5588264 (= e!3447738 (and tp!1545705 tp!1545706))))

(declare-fun b!5588262 () Bool)

(declare-fun tp!1545704 () Bool)

(declare-fun tp!1545707 () Bool)

(assert (=> b!5588262 (= e!3447738 (and tp!1545704 tp!1545707))))

(declare-fun b!5588261 () Bool)

(assert (=> b!5588261 (= e!3447738 tp_is_empty!40401)))

(assert (=> b!5587315 (= tp!1545540 e!3447738)))

(assert (= (and b!5587315 (is-ElementMatch!15574 (regTwo!31660 (regOne!31660 r!7292)))) b!5588261))

(assert (= (and b!5587315 (is-Concat!24419 (regTwo!31660 (regOne!31660 r!7292)))) b!5588262))

(assert (= (and b!5587315 (is-Star!15574 (regTwo!31660 (regOne!31660 r!7292)))) b!5588263))

(assert (= (and b!5587315 (is-Union!15574 (regTwo!31660 (regOne!31660 r!7292)))) b!5588264))

(declare-fun b!5588267 () Bool)

(declare-fun e!3447739 () Bool)

(declare-fun tp!1545708 () Bool)

(assert (=> b!5588267 (= e!3447739 tp!1545708)))

(declare-fun b!5588268 () Bool)

(declare-fun tp!1545710 () Bool)

(declare-fun tp!1545711 () Bool)

(assert (=> b!5588268 (= e!3447739 (and tp!1545710 tp!1545711))))

(declare-fun b!5588266 () Bool)

(declare-fun tp!1545709 () Bool)

(declare-fun tp!1545712 () Bool)

(assert (=> b!5588266 (= e!3447739 (and tp!1545709 tp!1545712))))

(declare-fun b!5588265 () Bool)

(assert (=> b!5588265 (= e!3447739 tp_is_empty!40401)))

(assert (=> b!5587316 (= tp!1545536 e!3447739)))

(assert (= (and b!5587316 (is-ElementMatch!15574 (reg!15903 (regOne!31660 r!7292)))) b!5588265))

(assert (= (and b!5587316 (is-Concat!24419 (reg!15903 (regOne!31660 r!7292)))) b!5588266))

(assert (= (and b!5587316 (is-Star!15574 (reg!15903 (regOne!31660 r!7292)))) b!5588267))

(assert (= (and b!5587316 (is-Union!15574 (reg!15903 (regOne!31660 r!7292)))) b!5588268))

(declare-fun b!5588271 () Bool)

(declare-fun e!3447740 () Bool)

(declare-fun tp!1545713 () Bool)

(assert (=> b!5588271 (= e!3447740 tp!1545713)))

(declare-fun b!5588272 () Bool)

(declare-fun tp!1545715 () Bool)

(declare-fun tp!1545716 () Bool)

(assert (=> b!5588272 (= e!3447740 (and tp!1545715 tp!1545716))))

(declare-fun b!5588270 () Bool)

(declare-fun tp!1545714 () Bool)

(declare-fun tp!1545717 () Bool)

(assert (=> b!5588270 (= e!3447740 (and tp!1545714 tp!1545717))))

(declare-fun b!5588269 () Bool)

(assert (=> b!5588269 (= e!3447740 tp_is_empty!40401)))

(assert (=> b!5587281 (= tp!1545500 e!3447740)))

(assert (= (and b!5587281 (is-ElementMatch!15574 (regOne!31661 (regOne!31661 r!7292)))) b!5588269))

(assert (= (and b!5587281 (is-Concat!24419 (regOne!31661 (regOne!31661 r!7292)))) b!5588270))

(assert (= (and b!5587281 (is-Star!15574 (regOne!31661 (regOne!31661 r!7292)))) b!5588271))

(assert (= (and b!5587281 (is-Union!15574 (regOne!31661 (regOne!31661 r!7292)))) b!5588272))

(declare-fun b!5588275 () Bool)

(declare-fun e!3447741 () Bool)

(declare-fun tp!1545718 () Bool)

(assert (=> b!5588275 (= e!3447741 tp!1545718)))

(declare-fun b!5588276 () Bool)

(declare-fun tp!1545720 () Bool)

(declare-fun tp!1545721 () Bool)

(assert (=> b!5588276 (= e!3447741 (and tp!1545720 tp!1545721))))

(declare-fun b!5588274 () Bool)

(declare-fun tp!1545719 () Bool)

(declare-fun tp!1545722 () Bool)

(assert (=> b!5588274 (= e!3447741 (and tp!1545719 tp!1545722))))

(declare-fun b!5588273 () Bool)

(assert (=> b!5588273 (= e!3447741 tp_is_empty!40401)))

(assert (=> b!5587281 (= tp!1545501 e!3447741)))

(assert (= (and b!5587281 (is-ElementMatch!15574 (regTwo!31661 (regOne!31661 r!7292)))) b!5588273))

(assert (= (and b!5587281 (is-Concat!24419 (regTwo!31661 (regOne!31661 r!7292)))) b!5588274))

(assert (= (and b!5587281 (is-Star!15574 (regTwo!31661 (regOne!31661 r!7292)))) b!5588275))

(assert (= (and b!5587281 (is-Union!15574 (regTwo!31661 (regOne!31661 r!7292)))) b!5588276))

(declare-fun b!5588279 () Bool)

(declare-fun e!3447742 () Bool)

(declare-fun tp!1545723 () Bool)

(assert (=> b!5588279 (= e!3447742 tp!1545723)))

(declare-fun b!5588280 () Bool)

(declare-fun tp!1545725 () Bool)

(declare-fun tp!1545726 () Bool)

(assert (=> b!5588280 (= e!3447742 (and tp!1545725 tp!1545726))))

(declare-fun b!5588278 () Bool)

(declare-fun tp!1545724 () Bool)

(declare-fun tp!1545727 () Bool)

(assert (=> b!5588278 (= e!3447742 (and tp!1545724 tp!1545727))))

(declare-fun b!5588277 () Bool)

(assert (=> b!5588277 (= e!3447742 tp_is_empty!40401)))

(assert (=> b!5587302 (= tp!1545522 e!3447742)))

(assert (= (and b!5587302 (is-ElementMatch!15574 (regOne!31661 (reg!15903 r!7292)))) b!5588277))

(assert (= (and b!5587302 (is-Concat!24419 (regOne!31661 (reg!15903 r!7292)))) b!5588278))

(assert (= (and b!5587302 (is-Star!15574 (regOne!31661 (reg!15903 r!7292)))) b!5588279))

(assert (= (and b!5587302 (is-Union!15574 (regOne!31661 (reg!15903 r!7292)))) b!5588280))

(declare-fun b!5588283 () Bool)

(declare-fun e!3447743 () Bool)

(declare-fun tp!1545728 () Bool)

(assert (=> b!5588283 (= e!3447743 tp!1545728)))

(declare-fun b!5588284 () Bool)

(declare-fun tp!1545730 () Bool)

(declare-fun tp!1545731 () Bool)

(assert (=> b!5588284 (= e!3447743 (and tp!1545730 tp!1545731))))

(declare-fun b!5588282 () Bool)

(declare-fun tp!1545729 () Bool)

(declare-fun tp!1545732 () Bool)

(assert (=> b!5588282 (= e!3447743 (and tp!1545729 tp!1545732))))

(declare-fun b!5588281 () Bool)

(assert (=> b!5588281 (= e!3447743 tp_is_empty!40401)))

(assert (=> b!5587302 (= tp!1545523 e!3447743)))

(assert (= (and b!5587302 (is-ElementMatch!15574 (regTwo!31661 (reg!15903 r!7292)))) b!5588281))

(assert (= (and b!5587302 (is-Concat!24419 (regTwo!31661 (reg!15903 r!7292)))) b!5588282))

(assert (= (and b!5587302 (is-Star!15574 (regTwo!31661 (reg!15903 r!7292)))) b!5588283))

(assert (= (and b!5587302 (is-Union!15574 (regTwo!31661 (reg!15903 r!7292)))) b!5588284))

(declare-fun b!5588287 () Bool)

(declare-fun e!3447744 () Bool)

(declare-fun tp!1545733 () Bool)

(assert (=> b!5588287 (= e!3447744 tp!1545733)))

(declare-fun b!5588288 () Bool)

(declare-fun tp!1545735 () Bool)

(declare-fun tp!1545736 () Bool)

(assert (=> b!5588288 (= e!3447744 (and tp!1545735 tp!1545736))))

(declare-fun b!5588286 () Bool)

(declare-fun tp!1545734 () Bool)

(declare-fun tp!1545737 () Bool)

(assert (=> b!5588286 (= e!3447744 (and tp!1545734 tp!1545737))))

(declare-fun b!5588285 () Bool)

(assert (=> b!5588285 (= e!3447744 tp_is_empty!40401)))

(assert (=> b!5587280 (= tp!1545498 e!3447744)))

(assert (= (and b!5587280 (is-ElementMatch!15574 (reg!15903 (regOne!31661 r!7292)))) b!5588285))

(assert (= (and b!5587280 (is-Concat!24419 (reg!15903 (regOne!31661 r!7292)))) b!5588286))

(assert (= (and b!5587280 (is-Star!15574 (reg!15903 (regOne!31661 r!7292)))) b!5588287))

(assert (= (and b!5587280 (is-Union!15574 (reg!15903 (regOne!31661 r!7292)))) b!5588288))

(declare-fun b!5588291 () Bool)

(declare-fun e!3447745 () Bool)

(declare-fun tp!1545738 () Bool)

(assert (=> b!5588291 (= e!3447745 tp!1545738)))

(declare-fun b!5588292 () Bool)

(declare-fun tp!1545740 () Bool)

(declare-fun tp!1545741 () Bool)

(assert (=> b!5588292 (= e!3447745 (and tp!1545740 tp!1545741))))

(declare-fun b!5588290 () Bool)

(declare-fun tp!1545739 () Bool)

(declare-fun tp!1545742 () Bool)

(assert (=> b!5588290 (= e!3447745 (and tp!1545739 tp!1545742))))

(declare-fun b!5588289 () Bool)

(assert (=> b!5588289 (= e!3447745 tp_is_empty!40401)))

(assert (=> b!5587301 (= tp!1545520 e!3447745)))

(assert (= (and b!5587301 (is-ElementMatch!15574 (reg!15903 (reg!15903 r!7292)))) b!5588289))

(assert (= (and b!5587301 (is-Concat!24419 (reg!15903 (reg!15903 r!7292)))) b!5588290))

(assert (= (and b!5587301 (is-Star!15574 (reg!15903 (reg!15903 r!7292)))) b!5588291))

(assert (= (and b!5587301 (is-Union!15574 (reg!15903 (reg!15903 r!7292)))) b!5588292))

(declare-fun b!5588295 () Bool)

(declare-fun e!3447746 () Bool)

(declare-fun tp!1545743 () Bool)

(assert (=> b!5588295 (= e!3447746 tp!1545743)))

(declare-fun b!5588296 () Bool)

(declare-fun tp!1545745 () Bool)

(declare-fun tp!1545746 () Bool)

(assert (=> b!5588296 (= e!3447746 (and tp!1545745 tp!1545746))))

(declare-fun b!5588294 () Bool)

(declare-fun tp!1545744 () Bool)

(declare-fun tp!1545747 () Bool)

(assert (=> b!5588294 (= e!3447746 (and tp!1545744 tp!1545747))))

(declare-fun b!5588293 () Bool)

(assert (=> b!5588293 (= e!3447746 tp_is_empty!40401)))

(assert (=> b!5587279 (= tp!1545499 e!3447746)))

(assert (= (and b!5587279 (is-ElementMatch!15574 (regOne!31660 (regOne!31661 r!7292)))) b!5588293))

(assert (= (and b!5587279 (is-Concat!24419 (regOne!31660 (regOne!31661 r!7292)))) b!5588294))

(assert (= (and b!5587279 (is-Star!15574 (regOne!31660 (regOne!31661 r!7292)))) b!5588295))

(assert (= (and b!5587279 (is-Union!15574 (regOne!31660 (regOne!31661 r!7292)))) b!5588296))

(declare-fun b!5588299 () Bool)

(declare-fun e!3447747 () Bool)

(declare-fun tp!1545748 () Bool)

(assert (=> b!5588299 (= e!3447747 tp!1545748)))

(declare-fun b!5588300 () Bool)

(declare-fun tp!1545750 () Bool)

(declare-fun tp!1545751 () Bool)

(assert (=> b!5588300 (= e!3447747 (and tp!1545750 tp!1545751))))

(declare-fun b!5588298 () Bool)

(declare-fun tp!1545749 () Bool)

(declare-fun tp!1545752 () Bool)

(assert (=> b!5588298 (= e!3447747 (and tp!1545749 tp!1545752))))

(declare-fun b!5588297 () Bool)

(assert (=> b!5588297 (= e!3447747 tp_is_empty!40401)))

(assert (=> b!5587279 (= tp!1545502 e!3447747)))

(assert (= (and b!5587279 (is-ElementMatch!15574 (regTwo!31660 (regOne!31661 r!7292)))) b!5588297))

(assert (= (and b!5587279 (is-Concat!24419 (regTwo!31660 (regOne!31661 r!7292)))) b!5588298))

(assert (= (and b!5587279 (is-Star!15574 (regTwo!31660 (regOne!31661 r!7292)))) b!5588299))

(assert (= (and b!5587279 (is-Union!15574 (regTwo!31660 (regOne!31661 r!7292)))) b!5588300))

(declare-fun b!5588303 () Bool)

(declare-fun e!3447748 () Bool)

(declare-fun tp!1545753 () Bool)

(assert (=> b!5588303 (= e!3447748 tp!1545753)))

(declare-fun b!5588304 () Bool)

(declare-fun tp!1545755 () Bool)

(declare-fun tp!1545756 () Bool)

(assert (=> b!5588304 (= e!3447748 (and tp!1545755 tp!1545756))))

(declare-fun b!5588302 () Bool)

(declare-fun tp!1545754 () Bool)

(declare-fun tp!1545757 () Bool)

(assert (=> b!5588302 (= e!3447748 (and tp!1545754 tp!1545757))))

(declare-fun b!5588301 () Bool)

(assert (=> b!5588301 (= e!3447748 tp_is_empty!40401)))

(assert (=> b!5587300 (= tp!1545521 e!3447748)))

(assert (= (and b!5587300 (is-ElementMatch!15574 (regOne!31660 (reg!15903 r!7292)))) b!5588301))

(assert (= (and b!5587300 (is-Concat!24419 (regOne!31660 (reg!15903 r!7292)))) b!5588302))

(assert (= (and b!5587300 (is-Star!15574 (regOne!31660 (reg!15903 r!7292)))) b!5588303))

(assert (= (and b!5587300 (is-Union!15574 (regOne!31660 (reg!15903 r!7292)))) b!5588304))

(declare-fun b!5588307 () Bool)

(declare-fun e!3447749 () Bool)

(declare-fun tp!1545758 () Bool)

(assert (=> b!5588307 (= e!3447749 tp!1545758)))

(declare-fun b!5588308 () Bool)

(declare-fun tp!1545760 () Bool)

(declare-fun tp!1545761 () Bool)

(assert (=> b!5588308 (= e!3447749 (and tp!1545760 tp!1545761))))

(declare-fun b!5588306 () Bool)

(declare-fun tp!1545759 () Bool)

(declare-fun tp!1545762 () Bool)

(assert (=> b!5588306 (= e!3447749 (and tp!1545759 tp!1545762))))

(declare-fun b!5588305 () Bool)

(assert (=> b!5588305 (= e!3447749 tp_is_empty!40401)))

(assert (=> b!5587300 (= tp!1545524 e!3447749)))

(assert (= (and b!5587300 (is-ElementMatch!15574 (regTwo!31660 (reg!15903 r!7292)))) b!5588305))

(assert (= (and b!5587300 (is-Concat!24419 (regTwo!31660 (reg!15903 r!7292)))) b!5588306))

(assert (= (and b!5587300 (is-Star!15574 (regTwo!31660 (reg!15903 r!7292)))) b!5588307))

(assert (= (and b!5587300 (is-Union!15574 (regTwo!31660 (reg!15903 r!7292)))) b!5588308))

(declare-fun b!5588309 () Bool)

(declare-fun e!3447750 () Bool)

(declare-fun tp!1545763 () Bool)

(declare-fun tp!1545764 () Bool)

(assert (=> b!5588309 (= e!3447750 (and tp!1545763 tp!1545764))))

(assert (=> b!5587308 (= tp!1545531 e!3447750)))

(assert (= (and b!5587308 (is-Cons!62898 (exprs!5458 setElem!37222))) b!5588309))

(declare-fun condSetEmpty!37231 () Bool)

(assert (=> setNonEmpty!37222 (= condSetEmpty!37231 (= setRest!37222 (as set.empty (Set Context!9916))))))

(declare-fun setRes!37231 () Bool)

(assert (=> setNonEmpty!37222 (= tp!1545532 setRes!37231)))

(declare-fun setIsEmpty!37231 () Bool)

(assert (=> setIsEmpty!37231 setRes!37231))

(declare-fun tp!1545766 () Bool)

(declare-fun setElem!37231 () Context!9916)

(declare-fun e!3447751 () Bool)

(declare-fun setNonEmpty!37231 () Bool)

(assert (=> setNonEmpty!37231 (= setRes!37231 (and tp!1545766 (inv!82183 setElem!37231) e!3447751))))

(declare-fun setRest!37231 () (Set Context!9916))

(assert (=> setNonEmpty!37231 (= setRest!37222 (set.union (set.insert setElem!37231 (as set.empty (Set Context!9916))) setRest!37231))))

(declare-fun b!5588310 () Bool)

(declare-fun tp!1545765 () Bool)

(assert (=> b!5588310 (= e!3447751 tp!1545765)))

(assert (= (and setNonEmpty!37222 condSetEmpty!37231) setIsEmpty!37231))

(assert (= (and setNonEmpty!37222 (not condSetEmpty!37231)) setNonEmpty!37231))

(assert (= setNonEmpty!37231 b!5588310))

(declare-fun m!6568808 () Bool)

(assert (=> setNonEmpty!37231 m!6568808))

(declare-fun b!5588311 () Bool)

(declare-fun e!3447752 () Bool)

(declare-fun tp!1545767 () Bool)

(assert (=> b!5588311 (= e!3447752 (and tp_is_empty!40401 tp!1545767))))

(assert (=> b!5587313 (= tp!1545535 e!3447752)))

(assert (= (and b!5587313 (is-Cons!62897 (t!376296 (t!376296 s!2326)))) b!5588311))

(declare-fun b_lambda!211747 () Bool)

(assert (= b_lambda!211741 (or b!5586782 b_lambda!211747)))

(assert (=> d!1766179 d!1765903))

(declare-fun b_lambda!211749 () Bool)

(assert (= b_lambda!211745 (or d!1765891 b_lambda!211749)))

(declare-fun bs!1292271 () Bool)

(declare-fun d!1766267 () Bool)

(assert (= bs!1292271 (and d!1766267 d!1765891)))

(assert (=> bs!1292271 (= (dynLambda!24599 lambda!299817 (h!69346 (exprs!5458 (h!69347 zl!343)))) (validRegex!7310 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(declare-fun m!6568810 () Bool)

(assert (=> bs!1292271 m!6568810))

(assert (=> b!5588183 d!1766267))

(declare-fun b_lambda!211751 () Bool)

(assert (= b_lambda!211731 (or d!1765825 b_lambda!211751)))

(declare-fun bs!1292272 () Bool)

(declare-fun d!1766269 () Bool)

(assert (= bs!1292272 (and d!1766269 d!1765825)))

(assert (=> bs!1292272 (= (dynLambda!24599 lambda!299793 (h!69346 (unfocusZipperList!1002 zl!343))) (validRegex!7310 (h!69346 (unfocusZipperList!1002 zl!343))))))

(declare-fun m!6568812 () Bool)

(assert (=> bs!1292272 m!6568812))

(assert (=> b!5587789 d!1766269))

(declare-fun b_lambda!211753 () Bool)

(assert (= b_lambda!211733 (or d!1765831 b_lambda!211753)))

(declare-fun bs!1292273 () Bool)

(declare-fun d!1766271 () Bool)

(assert (= bs!1292273 (and d!1766271 d!1765831)))

(assert (=> bs!1292273 (= (dynLambda!24599 lambda!299799 (h!69346 (exprs!5458 (h!69347 zl!343)))) (validRegex!7310 (h!69346 (exprs!5458 (h!69347 zl!343)))))))

(assert (=> bs!1292273 m!6568810))

(assert (=> b!5587819 d!1766271))

(declare-fun b_lambda!211755 () Bool)

(assert (= b_lambda!211737 (or b!5586782 b_lambda!211755)))

(assert (=> d!1766089 d!1765907))

(declare-fun b_lambda!211757 () Bool)

(assert (= b_lambda!211739 (or b!5586782 b_lambda!211757)))

(assert (=> d!1766113 d!1765905))

(declare-fun b_lambda!211759 () Bool)

(assert (= b_lambda!211743 (or d!1765827 b_lambda!211759)))

(declare-fun bs!1292274 () Bool)

(declare-fun d!1766273 () Bool)

(assert (= bs!1292274 (and d!1766273 d!1765827)))

(assert (=> bs!1292274 (= (dynLambda!24599 lambda!299796 (h!69346 lt!2254926)) (validRegex!7310 (h!69346 lt!2254926)))))

(declare-fun m!6568814 () Bool)

(assert (=> bs!1292274 m!6568814))

(assert (=> b!5588151 d!1766273))

(declare-fun b_lambda!211761 () Bool)

(assert (= b_lambda!211735 (or d!1765895 b_lambda!211761)))

(declare-fun bs!1292275 () Bool)

(declare-fun d!1766275 () Bool)

(assert (= bs!1292275 (and d!1766275 d!1765895)))

(assert (=> bs!1292275 (= (dynLambda!24599 lambda!299818 (h!69346 (exprs!5458 setElem!37216))) (validRegex!7310 (h!69346 (exprs!5458 setElem!37216))))))

(declare-fun m!6568816 () Bool)

(assert (=> bs!1292275 m!6568816))

(assert (=> b!5587879 d!1766275))

(push 1)

(assert (not b!5588000))

(assert (not b!5587987))

(assert (not b!5588290))

(assert (not d!1766057))

(assert (not b_lambda!211715))

(assert (not d!1766171))

(assert (not b!5588094))

(assert (not b!5588296))

(assert (not d!1766237))

(assert (not b!5587954))

(assert (not b!5588252))

(assert (not bm!418316))

(assert (not b!5588153))

(assert (not bm!418370))

(assert (not d!1766227))

(assert (not b!5588088))

(assert (not b!5588300))

(assert (not setNonEmpty!37230))

(assert (not b!5588033))

(assert (not b!5588225))

(assert (not b_lambda!211747))

(assert (not d!1766009))

(assert (not b!5587939))

(assert (not d!1766179))

(assert (not b!5588062))

(assert (not b!5588262))

(assert (not b!5588163))

(assert (not b!5588145))

(assert (not b!5588299))

(assert (not d!1766257))

(assert (not bm!418334))

(assert (not b!5588309))

(assert (not b!5587957))

(assert (not d!1766113))

(assert (not bm!418284))

(assert (not b!5587730))

(assert (not bm!418355))

(assert (not b!5588126))

(assert (not d!1766081))

(assert (not b!5588250))

(assert (not bm!418305))

(assert (not b!5588272))

(assert (not b!5588208))

(assert (not bm!418379))

(assert (not d!1766175))

(assert (not d!1766241))

(assert (not bm!418319))

(assert (not d!1766089))

(assert (not bm!418309))

(assert (not d!1766163))

(assert (not b!5587955))

(assert (not b!5588121))

(assert (not b_lambda!211751))

(assert (not bm!418361))

(assert (not bm!418315))

(assert (not b!5587901))

(assert (not b!5588235))

(assert (not b!5588043))

(assert (not d!1766091))

(assert (not b!5588175))

(assert (not b!5588201))

(assert (not b!5588210))

(assert (not b!5587851))

(assert (not d!1766073))

(assert (not b!5587713))

(assert (not b!5588215))

(assert (not b!5588276))

(assert (not bm!418331))

(assert (not b!5587820))

(assert (not b!5588042))

(assert (not d!1766149))

(assert (not d!1766195))

(assert (not d!1766093))

(assert (not bm!418297))

(assert (not b!5588292))

(assert (not b!5588280))

(assert (not bm!418328))

(assert (not b!5588287))

(assert (not b!5588001))

(assert (not b!5587952))

(assert (not b!5588212))

(assert (not b!5588044))

(assert (not b!5588065))

(assert (not bm!418385))

(assert (not bs!1292275))

(assert (not b!5588254))

(assert (not d!1766217))

(assert (not bm!418357))

(assert (not bm!418358))

(assert (not b!5588060))

(assert (not b!5588099))

(assert (not d!1766189))

(assert (not d!1766099))

(assert (not b!5588308))

(assert (not b!5588123))

(assert (not b!5588306))

(assert (not bm!418387))

(assert (not b_lambda!211761))

(assert (not b!5588229))

(assert (not b!5588190))

(assert (not bm!418295))

(assert (not b!5588159))

(assert (not b!5587937))

(assert (not d!1766263))

(assert (not setNonEmpty!37229))

(assert (not b!5587976))

(assert (not b!5588214))

(assert (not b!5588294))

(assert (not d!1766161))

(assert (not bm!418337))

(assert (not b!5587811))

(assert (not bm!418322))

(assert (not b!5588118))

(assert (not b!5587757))

(assert (not b!5587981))

(assert tp_is_empty!40401)

(assert (not b!5588307))

(assert (not b!5587918))

(assert (not b_lambda!211757))

(assert (not d!1766043))

(assert (not b!5588064))

(assert (not d!1766041))

(assert (not d!1766249))

(assert (not bs!1292274))

(assert (not d!1766087))

(assert (not b!5588158))

(assert (not b!5587880))

(assert (not b!5588248))

(assert (not b!5588279))

(assert (not bm!418340))

(assert (not bm!418381))

(assert (not d!1766055))

(assert (not b!5587822))

(assert (not b!5588089))

(assert (not b!5588270))

(assert (not b!5587873))

(assert (not b!5587948))

(assert (not d!1766239))

(assert (not b!5587762))

(assert (not b!5588112))

(assert (not b!5587930))

(assert (not b!5588245))

(assert (not b!5587924))

(assert (not b!5588310))

(assert (not b!5588291))

(assert (not bm!418277))

(assert (not b_lambda!211753))

(assert (not b!5588077))

(assert (not bm!418360))

(assert (not b!5588110))

(assert (not b!5588209))

(assert (not b!5588295))

(assert (not b!5588241))

(assert (not b!5588113))

(assert (not d!1766219))

(assert (not d!1766183))

(assert (not b!5587751))

(assert (not bm!418368))

(assert (not bm!418327))

(assert (not b!5588157))

(assert (not d!1766193))

(assert (not b!5587940))

(assert (not b!5588263))

(assert (not b!5587904))

(assert (not bm!418339))

(assert (not b!5587995))

(assert (not bm!418287))

(assert (not b!5588206))

(assert (not b!5587998))

(assert (not b!5587898))

(assert (not b!5588127))

(assert (not b!5587862))

(assert (not b!5588218))

(assert (not b!5588202))

(assert (not d!1766023))

(assert (not bm!418273))

(assert (not bm!418282))

(assert (not b!5588045))

(assert (not b!5588165))

(assert (not b!5588054))

(assert (not bm!418366))

(assert (not b!5588166))

(assert (not b!5588076))

(assert (not b!5588282))

(assert (not b!5588302))

(assert (not b!5588226))

(assert (not b!5588222))

(assert (not bm!418307))

(assert (not b!5587911))

(assert (not b!5587959))

(assert (not bm!418290))

(assert (not d!1766159))

(assert (not b_lambda!211749))

(assert (not d!1766181))

(assert (not b!5588128))

(assert (not bm!418342))

(assert (not b!5588197))

(assert (not b!5588283))

(assert (not b!5587775))

(assert (not bm!418364))

(assert (not bm!418325))

(assert (not b!5587956))

(assert (not b!5588184))

(assert (not b!5588271))

(assert (not b!5588219))

(assert (not b!5587790))

(assert (not b!5588164))

(assert (not b!5588278))

(assert (not b!5587748))

(assert (not b!5588246))

(assert (not b_lambda!211713))

(assert (not b!5587997))

(assert (not b!5588233))

(assert (not b!5588223))

(assert (not d!1766215))

(assert (not b!5588217))

(assert (not b!5588207))

(assert (not b!5587719))

(assert (not b!5588080))

(assert (not b!5588255))

(assert (not b!5588238))

(assert (not b!5588075))

(assert (not b!5588061))

(assert (not b!5587910))

(assert (not d!1766191))

(assert (not b!5588057))

(assert (not b!5588237))

(assert (not b!5587982))

(assert (not bm!418283))

(assert (not b!5588073))

(assert (not bm!418310))

(assert (not b!5588303))

(assert (not b!5588102))

(assert (not bm!418333))

(assert (not b!5588286))

(assert (not b!5588311))

(assert (not b!5588152))

(assert (not b!5588251))

(assert (not d!1766155))

(assert (not b!5588010))

(assert (not d!1766213))

(assert (not d!1766229))

(assert (not d!1766109))

(assert (not b!5588230))

(assert (not b!5588091))

(assert (not bm!418388))

(assert (not b!5588267))

(assert (not b!5588268))

(assert (not d!1766251))

(assert (not bm!418280))

(assert (not b!5588097))

(assert (not b!5588259))

(assert (not d!1766245))

(assert (not b!5588115))

(assert (not setNonEmpty!37228))

(assert (not bs!1292272))

(assert (not b!5588203))

(assert (not b_lambda!211759))

(assert (not bm!418299))

(assert (not bm!418321))

(assert (not bm!418271))

(assert (not b!5588288))

(assert (not bm!418279))

(assert (not b!5588046))

(assert (not bm!418285))

(assert (not d!1766045))

(assert (not b!5587980))

(assert (not bm!418274))

(assert (not b!5587739))

(assert (not bm!418336))

(assert (not b!5588198))

(assert (not b_lambda!211717))

(assert (not b!5588284))

(assert (not b!5588231))

(assert (not b!5588205))

(assert (not d!1766127))

(assert (not b!5588134))

(assert (not bm!418341))

(assert (not b!5587736))

(assert (not d!1766177))

(assert (not bm!418383))

(assert (not d!1766095))

(assert (not b!5588063))

(assert (not b!5588274))

(assert (not d!1766255))

(assert (not bm!418380))

(assert (not bm!418374))

(assert (not b!5588256))

(assert (not b_lambda!211755))

(assert (not b!5588258))

(assert (not bm!418356))

(assert (not setNonEmpty!37231))

(assert (not d!1766157))

(assert (not b!5588160))

(assert (not b!5588090))

(assert (not b!5587796))

(assert (not b!5587970))

(assert (not bm!418365))

(assert (not d!1766131))

(assert (not b!5588227))

(assert (not b!5587999))

(assert (not bm!418377))

(assert (not b!5587938))

(assert (not b!5588239))

(assert (not d!1766083))

(assert (not b!5587821))

(assert (not b!5588078))

(assert (not d!1766243))

(assert (not bm!418294))

(assert (not b!5587737))

(assert (not d!1766197))

(assert (not b!5587740))

(assert (not b!5588242))

(assert (not b!5588221))

(assert (not bm!418351))

(assert (not b!5587887))

(assert (not b!5587908))

(assert (not d!1766185))

(assert (not b!5587909))

(assert (not d!1766147))

(assert (not b!5587951))

(assert (not bs!1292273))

(assert (not d!1766097))

(assert (not b!5588199))

(assert (not b!5588247))

(assert (not b!5588243))

(assert (not bm!418288))

(assert (not bm!418376))

(assert (not d!1766017))

(assert (not b!5587905))

(assert (not b!5588002))

(assert (not b!5587988))

(assert (not d!1766133))

(assert (not b!5587961))

(assert (not b!5588298))

(assert (not bs!1292271))

(assert (not bm!418352))

(assert (not b!5588092))

(assert (not b!5588155))

(assert (not bm!418371))

(assert (not b!5588213))

(assert (not bm!418313))

(assert (not d!1766135))

(assert (not d!1766145))

(assert (not bm!418362))

(assert (not bm!418363))

(assert (not d!1766077))

(assert (not d!1766173))

(assert (not b!5587996))

(assert (not b!5588260))

(assert (not d!1766129))

(assert (not b!5588234))

(assert (not b!5587902))

(assert (not b!5588275))

(assert (not bm!418292))

(assert (not b!5587936))

(assert (not bm!418304))

(assert (not b!5588116))

(assert (not b!5588266))

(assert (not b!5587738))

(assert (not d!1766053))

(assert (not b!5588264))

(assert (not d!1766153))

(assert (not b!5587897))

(assert (not b!5588304))

(assert (not b!5587777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

