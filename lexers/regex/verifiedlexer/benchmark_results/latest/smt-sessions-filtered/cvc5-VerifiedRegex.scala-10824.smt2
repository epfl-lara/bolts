; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!556920 () Bool)

(assert start!556920)

(declare-fun b!5273610 () Bool)

(assert (=> b!5273610 true))

(assert (=> b!5273610 true))

(declare-fun lambda!266111 () Int)

(declare-fun lambda!266110 () Int)

(assert (=> b!5273610 (not (= lambda!266111 lambda!266110))))

(assert (=> b!5273610 true))

(assert (=> b!5273610 true))

(declare-fun b!5273632 () Bool)

(assert (=> b!5273632 true))

(declare-fun e!3279601 () Bool)

(declare-fun e!3279602 () Bool)

(assert (=> b!5273610 (= e!3279601 e!3279602)))

(declare-fun res!2237012 () Bool)

(assert (=> b!5273610 (=> res!2237012 e!3279602)))

(declare-datatypes ((C!30058 0))(
  ( (C!30059 (val!24731 Int)) )
))
(declare-datatypes ((List!60981 0))(
  ( (Nil!60857) (Cons!60857 (h!67305 C!30058) (t!374178 List!60981)) )
))
(declare-fun s!2326 () List!60981)

(declare-fun lt!2157016 () Bool)

(declare-fun lt!2157018 () Bool)

(assert (=> b!5273610 (= res!2237012 (or (not (= lt!2157018 lt!2157016)) (is-Nil!60857 s!2326)))))

(declare-fun Exists!2075 (Int) Bool)

(assert (=> b!5273610 (= (Exists!2075 lambda!266110) (Exists!2075 lambda!266111))))

(declare-datatypes ((Unit!153094 0))(
  ( (Unit!153095) )
))
(declare-fun lt!2157015 () Unit!153094)

(declare-datatypes ((Regex!14894 0))(
  ( (ElementMatch!14894 (c!913618 C!30058)) (Concat!23739 (regOne!30300 Regex!14894) (regTwo!30300 Regex!14894)) (EmptyExpr!14894) (Star!14894 (reg!15223 Regex!14894)) (EmptyLang!14894) (Union!14894 (regOne!30301 Regex!14894) (regTwo!30301 Regex!14894)) )
))
(declare-fun r!7292 () Regex!14894)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!729 (Regex!14894 Regex!14894 List!60981) Unit!153094)

(assert (=> b!5273610 (= lt!2157015 (lemmaExistCutMatchRandMatchRSpecEquivalent!729 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326))))

(assert (=> b!5273610 (= lt!2157016 (Exists!2075 lambda!266110))))

(declare-datatypes ((tuple2!64186 0))(
  ( (tuple2!64187 (_1!35396 List!60981) (_2!35396 List!60981)) )
))
(declare-datatypes ((Option!15005 0))(
  ( (None!15004) (Some!15004 (v!51033 tuple2!64186)) )
))
(declare-fun isDefined!11708 (Option!15005) Bool)

(declare-fun findConcatSeparation!1419 (Regex!14894 Regex!14894 List!60981 List!60981 List!60981) Option!15005)

(assert (=> b!5273610 (= lt!2157016 (isDefined!11708 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326)))))

(declare-fun lt!2157009 () Unit!153094)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1183 (Regex!14894 Regex!14894 List!60981) Unit!153094)

(assert (=> b!5273610 (= lt!2157009 (lemmaFindConcatSeparationEquivalentToExists!1183 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326))))

(declare-fun b!5273611 () Bool)

(declare-fun e!3279595 () Bool)

(assert (=> b!5273611 (= e!3279595 (not e!3279601))))

(declare-fun res!2237003 () Bool)

(assert (=> b!5273611 (=> res!2237003 e!3279601)))

(declare-datatypes ((List!60982 0))(
  ( (Nil!60858) (Cons!60858 (h!67306 Regex!14894) (t!374179 List!60982)) )
))
(declare-datatypes ((Context!8556 0))(
  ( (Context!8557 (exprs!4778 List!60982)) )
))
(declare-datatypes ((List!60983 0))(
  ( (Nil!60859) (Cons!60859 (h!67307 Context!8556) (t!374180 List!60983)) )
))
(declare-fun zl!343 () List!60983)

(assert (=> b!5273611 (= res!2237003 (not (is-Cons!60859 zl!343)))))

(declare-fun matchRSpec!1997 (Regex!14894 List!60981) Bool)

(assert (=> b!5273611 (= lt!2157018 (matchRSpec!1997 r!7292 s!2326))))

(declare-fun matchR!7079 (Regex!14894 List!60981) Bool)

(assert (=> b!5273611 (= lt!2157018 (matchR!7079 r!7292 s!2326))))

(declare-fun lt!2157011 () Unit!153094)

(declare-fun mainMatchTheorem!1997 (Regex!14894 List!60981) Unit!153094)

(assert (=> b!5273611 (= lt!2157011 (mainMatchTheorem!1997 r!7292 s!2326))))

(declare-fun b!5273612 () Bool)

(declare-fun e!3279599 () Unit!153094)

(declare-fun Unit!153096 () Unit!153094)

(assert (=> b!5273612 (= e!3279599 Unit!153096)))

(declare-fun b!5273613 () Bool)

(declare-fun res!2236996 () Bool)

(declare-fun e!3279589 () Bool)

(assert (=> b!5273613 (=> res!2236996 e!3279589)))

(declare-fun nullable!5063 (Regex!14894) Bool)

(assert (=> b!5273613 (= res!2236996 (not (nullable!5063 (regOne!30300 (regOne!30300 r!7292)))))))

(declare-fun b!5273614 () Bool)

(declare-fun res!2237009 () Bool)

(assert (=> b!5273614 (=> (not res!2237009) (not e!3279595))))

(declare-fun unfocusZipper!636 (List!60983) Regex!14894)

(assert (=> b!5273614 (= res!2237009 (= r!7292 (unfocusZipper!636 zl!343)))))

(declare-fun b!5273615 () Bool)

(declare-fun e!3279592 () Bool)

(declare-fun tp!1473814 () Bool)

(assert (=> b!5273615 (= e!3279592 tp!1473814)))

(declare-fun b!5273616 () Bool)

(declare-fun tp_is_empty!39041 () Bool)

(assert (=> b!5273616 (= e!3279592 tp_is_empty!39041)))

(declare-fun b!5273617 () Bool)

(declare-fun Unit!153097 () Unit!153094)

(assert (=> b!5273617 (= e!3279599 Unit!153097)))

(declare-fun lt!2157030 () Unit!153094)

(declare-fun lt!2157019 () (Set Context!8556))

(declare-fun lt!2157017 () (Set Context!8556))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!131 ((Set Context!8556) (Set Context!8556) List!60981) Unit!153094)

(assert (=> b!5273617 (= lt!2157030 (lemmaZipperConcatMatchesSameAsBothZippers!131 lt!2157019 lt!2157017 (t!374178 s!2326)))))

(declare-fun res!2236997 () Bool)

(declare-fun matchZipper!1138 ((Set Context!8556) List!60981) Bool)

(assert (=> b!5273617 (= res!2236997 (matchZipper!1138 lt!2157019 (t!374178 s!2326)))))

(declare-fun e!3279604 () Bool)

(assert (=> b!5273617 (=> res!2236997 e!3279604)))

(assert (=> b!5273617 (= (matchZipper!1138 (set.union lt!2157019 lt!2157017) (t!374178 s!2326)) e!3279604)))

(declare-fun b!5273618 () Bool)

(declare-fun e!3279598 () Bool)

(declare-fun tp!1473811 () Bool)

(assert (=> b!5273618 (= e!3279598 tp!1473811)))

(declare-fun b!5273620 () Bool)

(declare-fun e!3279596 () Bool)

(declare-fun tp!1473809 () Bool)

(declare-fun e!3279594 () Bool)

(declare-fun inv!80483 (Context!8556) Bool)

(assert (=> b!5273620 (= e!3279594 (and (inv!80483 (h!67307 zl!343)) e!3279596 tp!1473809))))

(declare-fun b!5273621 () Bool)

(declare-fun res!2236994 () Bool)

(assert (=> b!5273621 (=> res!2236994 e!3279601)))

(declare-fun generalisedConcat!563 (List!60982) Regex!14894)

(assert (=> b!5273621 (= res!2236994 (not (= r!7292 (generalisedConcat!563 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5273622 () Bool)

(declare-fun res!2236998 () Bool)

(assert (=> b!5273622 (=> res!2236998 e!3279601)))

(assert (=> b!5273622 (= res!2236998 (or (is-EmptyExpr!14894 r!7292) (is-EmptyLang!14894 r!7292) (is-ElementMatch!14894 r!7292) (is-Union!14894 r!7292) (not (is-Concat!23739 r!7292))))))

(declare-fun b!5273623 () Bool)

(declare-fun tp!1473812 () Bool)

(declare-fun tp!1473813 () Bool)

(assert (=> b!5273623 (= e!3279592 (and tp!1473812 tp!1473813))))

(declare-fun b!5273624 () Bool)

(declare-fun e!3279593 () Bool)

(declare-fun lt!2157022 () (Set Context!8556))

(assert (=> b!5273624 (= e!3279593 (matchZipper!1138 lt!2157022 (t!374178 s!2326)))))

(declare-fun b!5273625 () Bool)

(declare-fun e!3279590 () Bool)

(assert (=> b!5273625 (= e!3279590 (not (matchZipper!1138 lt!2157022 (t!374178 s!2326))))))

(declare-fun b!5273626 () Bool)

(declare-fun e!3279600 () Bool)

(declare-fun validRegex!6630 (Regex!14894) Bool)

(assert (=> b!5273626 (= e!3279600 (validRegex!6630 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun lambda!266112 () Int)

(declare-fun lt!2157020 () Context!8556)

(declare-fun lt!2157021 () (Set Context!8556))

(declare-fun flatMap!621 ((Set Context!8556) Int) (Set Context!8556))

(declare-fun derivationStepZipperUp!266 (Context!8556 C!30058) (Set Context!8556))

(assert (=> b!5273626 (= (flatMap!621 lt!2157021 lambda!266112) (derivationStepZipperUp!266 lt!2157020 (h!67305 s!2326)))))

(declare-fun lt!2157007 () Unit!153094)

(declare-fun lemmaFlatMapOnSingletonSet!153 ((Set Context!8556) Context!8556 Int) Unit!153094)

(assert (=> b!5273626 (= lt!2157007 (lemmaFlatMapOnSingletonSet!153 lt!2157021 lt!2157020 lambda!266112))))

(declare-fun b!5273627 () Bool)

(declare-fun e!3279603 () Bool)

(declare-fun tp!1473815 () Bool)

(assert (=> b!5273627 (= e!3279603 (and tp_is_empty!39041 tp!1473815))))

(declare-fun b!5273628 () Bool)

(declare-fun res!2237000 () Bool)

(assert (=> b!5273628 (=> res!2237000 e!3279602)))

(declare-fun isEmpty!32809 (List!60982) Bool)

(assert (=> b!5273628 (= res!2237000 (isEmpty!32809 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273629 () Bool)

(declare-fun e!3279597 () Bool)

(assert (=> b!5273629 (= e!3279589 e!3279597)))

(declare-fun res!2237004 () Bool)

(assert (=> b!5273629 (=> res!2237004 e!3279597)))

(declare-fun lt!2157024 () (Set Context!8556))

(assert (=> b!5273629 (= res!2237004 (not (= lt!2157019 lt!2157024)))))

(declare-fun lt!2157023 () (Set Context!8556))

(assert (=> b!5273629 (= lt!2157024 (set.union lt!2157023 lt!2157022))))

(declare-fun lt!2157008 () Context!8556)

(declare-fun derivationStepZipperDown!342 (Regex!14894 Context!8556 C!30058) (Set Context!8556))

(assert (=> b!5273629 (= lt!2157022 (derivationStepZipperDown!342 (regTwo!30300 (regOne!30300 r!7292)) lt!2157008 (h!67305 s!2326)))))

(assert (=> b!5273629 (= lt!2157023 (derivationStepZipperDown!342 (regOne!30300 (regOne!30300 r!7292)) lt!2157020 (h!67305 s!2326)))))

(declare-fun lt!2157013 () List!60982)

(assert (=> b!5273629 (= lt!2157020 (Context!8557 lt!2157013))))

(assert (=> b!5273629 (= lt!2157013 (Cons!60858 (regTwo!30300 (regOne!30300 r!7292)) (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273630 () Bool)

(declare-fun e!3279591 () Bool)

(assert (=> b!5273630 (= e!3279591 e!3279600)))

(declare-fun res!2237011 () Bool)

(assert (=> b!5273630 (=> res!2237011 e!3279600)))

(declare-fun lt!2157027 () (Set Context!8556))

(declare-fun derivationStepZipper!1137 ((Set Context!8556) C!30058) (Set Context!8556))

(assert (=> b!5273630 (= res!2237011 (not (= (derivationStepZipper!1137 lt!2157027 (h!67305 s!2326)) (set.union lt!2157023 (derivationStepZipperUp!266 lt!2157020 (h!67305 s!2326))))))))

(declare-fun lt!2157029 () Context!8556)

(assert (=> b!5273630 (= (flatMap!621 lt!2157027 lambda!266112) (derivationStepZipperUp!266 lt!2157029 (h!67305 s!2326)))))

(declare-fun lt!2157028 () Unit!153094)

(assert (=> b!5273630 (= lt!2157028 (lemmaFlatMapOnSingletonSet!153 lt!2157027 lt!2157029 lambda!266112))))

(declare-fun lt!2157031 () (Set Context!8556))

(assert (=> b!5273630 (= lt!2157031 (derivationStepZipperUp!266 lt!2157029 (h!67305 s!2326)))))

(assert (=> b!5273630 (= lt!2157021 (set.insert lt!2157020 (as set.empty (Set Context!8556))))))

(assert (=> b!5273630 (= lt!2157027 (set.insert lt!2157029 (as set.empty (Set Context!8556))))))

(assert (=> b!5273630 (= lt!2157029 (Context!8557 (Cons!60858 (regOne!30300 (regOne!30300 r!7292)) lt!2157013)))))

(declare-fun b!5273631 () Bool)

(declare-fun res!2237007 () Bool)

(assert (=> b!5273631 (=> res!2237007 e!3279601)))

(declare-fun generalisedUnion!823 (List!60982) Regex!14894)

(declare-fun unfocusZipperList!336 (List!60983) List!60982)

(assert (=> b!5273631 (= res!2237007 (not (= r!7292 (generalisedUnion!823 (unfocusZipperList!336 zl!343)))))))

(assert (=> b!5273632 (= e!3279602 e!3279589)))

(declare-fun res!2237008 () Bool)

(assert (=> b!5273632 (=> res!2237008 e!3279589)))

(assert (=> b!5273632 (= res!2237008 (or (and (is-ElementMatch!14894 (regOne!30300 r!7292)) (= (c!913618 (regOne!30300 r!7292)) (h!67305 s!2326))) (is-Union!14894 (regOne!30300 r!7292)) (not (is-Concat!23739 (regOne!30300 r!7292)))))))

(declare-fun lt!2157010 () Unit!153094)

(assert (=> b!5273632 (= lt!2157010 e!3279599)))

(declare-fun c!913617 () Bool)

(assert (=> b!5273632 (= c!913617 (nullable!5063 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun z!1189 () (Set Context!8556))

(assert (=> b!5273632 (= (flatMap!621 z!1189 lambda!266112) (derivationStepZipperUp!266 (h!67307 zl!343) (h!67305 s!2326)))))

(declare-fun lt!2157026 () Unit!153094)

(assert (=> b!5273632 (= lt!2157026 (lemmaFlatMapOnSingletonSet!153 z!1189 (h!67307 zl!343) lambda!266112))))

(assert (=> b!5273632 (= lt!2157017 (derivationStepZipperUp!266 lt!2157008 (h!67305 s!2326)))))

(assert (=> b!5273632 (= lt!2157019 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (h!67307 zl!343))) lt!2157008 (h!67305 s!2326)))))

(assert (=> b!5273632 (= lt!2157008 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun lt!2157014 () (Set Context!8556))

(assert (=> b!5273632 (= lt!2157014 (derivationStepZipperUp!266 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))) (h!67305 s!2326)))))

(declare-fun b!5273633 () Bool)

(assert (=> b!5273633 (= e!3279604 (matchZipper!1138 lt!2157017 (t!374178 s!2326)))))

(declare-fun b!5273634 () Bool)

(declare-fun res!2237001 () Bool)

(assert (=> b!5273634 (=> (not res!2237001) (not e!3279595))))

(declare-fun toList!8678 ((Set Context!8556)) List!60983)

(assert (=> b!5273634 (= res!2237001 (= (toList!8678 z!1189) zl!343))))

(declare-fun b!5273619 () Bool)

(declare-fun res!2237002 () Bool)

(assert (=> b!5273619 (=> res!2237002 e!3279601)))

(assert (=> b!5273619 (= res!2237002 (not (is-Cons!60858 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun res!2237010 () Bool)

(assert (=> start!556920 (=> (not res!2237010) (not e!3279595))))

(assert (=> start!556920 (= res!2237010 (validRegex!6630 r!7292))))

(assert (=> start!556920 e!3279595))

(assert (=> start!556920 e!3279592))

(declare-fun condSetEmpty!33770 () Bool)

(assert (=> start!556920 (= condSetEmpty!33770 (= z!1189 (as set.empty (Set Context!8556))))))

(declare-fun setRes!33770 () Bool)

(assert (=> start!556920 setRes!33770))

(assert (=> start!556920 e!3279594))

(assert (=> start!556920 e!3279603))

(declare-fun b!5273635 () Bool)

(assert (=> b!5273635 (= e!3279597 e!3279591)))

(declare-fun res!2236999 () Bool)

(assert (=> b!5273635 (=> res!2236999 e!3279591)))

(assert (=> b!5273635 (= res!2236999 e!3279590)))

(declare-fun res!2237005 () Bool)

(assert (=> b!5273635 (=> (not res!2237005) (not e!3279590))))

(declare-fun lt!2157012 () Bool)

(assert (=> b!5273635 (= res!2237005 (not (= (matchZipper!1138 lt!2157019 (t!374178 s!2326)) lt!2157012)))))

(assert (=> b!5273635 (= (matchZipper!1138 lt!2157024 (t!374178 s!2326)) e!3279593)))

(declare-fun res!2237006 () Bool)

(assert (=> b!5273635 (=> res!2237006 e!3279593)))

(assert (=> b!5273635 (= res!2237006 lt!2157012)))

(assert (=> b!5273635 (= lt!2157012 (matchZipper!1138 lt!2157023 (t!374178 s!2326)))))

(declare-fun lt!2157025 () Unit!153094)

(assert (=> b!5273635 (= lt!2157025 (lemmaZipperConcatMatchesSameAsBothZippers!131 lt!2157023 lt!2157022 (t!374178 s!2326)))))

(declare-fun b!5273636 () Bool)

(declare-fun tp!1473807 () Bool)

(assert (=> b!5273636 (= e!3279596 tp!1473807)))

(declare-fun setNonEmpty!33770 () Bool)

(declare-fun tp!1473810 () Bool)

(declare-fun setElem!33770 () Context!8556)

(assert (=> setNonEmpty!33770 (= setRes!33770 (and tp!1473810 (inv!80483 setElem!33770) e!3279598))))

(declare-fun setRest!33770 () (Set Context!8556))

(assert (=> setNonEmpty!33770 (= z!1189 (set.union (set.insert setElem!33770 (as set.empty (Set Context!8556))) setRest!33770))))

(declare-fun setIsEmpty!33770 () Bool)

(assert (=> setIsEmpty!33770 setRes!33770))

(declare-fun b!5273637 () Bool)

(declare-fun res!2236995 () Bool)

(assert (=> b!5273637 (=> res!2236995 e!3279601)))

(declare-fun isEmpty!32810 (List!60983) Bool)

(assert (=> b!5273637 (= res!2236995 (not (isEmpty!32810 (t!374180 zl!343))))))

(declare-fun b!5273638 () Bool)

(declare-fun tp!1473808 () Bool)

(declare-fun tp!1473806 () Bool)

(assert (=> b!5273638 (= e!3279592 (and tp!1473808 tp!1473806))))

(assert (= (and start!556920 res!2237010) b!5273634))

(assert (= (and b!5273634 res!2237001) b!5273614))

(assert (= (and b!5273614 res!2237009) b!5273611))

(assert (= (and b!5273611 (not res!2237003)) b!5273637))

(assert (= (and b!5273637 (not res!2236995)) b!5273621))

(assert (= (and b!5273621 (not res!2236994)) b!5273619))

(assert (= (and b!5273619 (not res!2237002)) b!5273631))

(assert (= (and b!5273631 (not res!2237007)) b!5273622))

(assert (= (and b!5273622 (not res!2236998)) b!5273610))

(assert (= (and b!5273610 (not res!2237012)) b!5273628))

(assert (= (and b!5273628 (not res!2237000)) b!5273632))

(assert (= (and b!5273632 c!913617) b!5273617))

(assert (= (and b!5273632 (not c!913617)) b!5273612))

(assert (= (and b!5273617 (not res!2236997)) b!5273633))

(assert (= (and b!5273632 (not res!2237008)) b!5273613))

(assert (= (and b!5273613 (not res!2236996)) b!5273629))

(assert (= (and b!5273629 (not res!2237004)) b!5273635))

(assert (= (and b!5273635 (not res!2237006)) b!5273624))

(assert (= (and b!5273635 res!2237005) b!5273625))

(assert (= (and b!5273635 (not res!2236999)) b!5273630))

(assert (= (and b!5273630 (not res!2237011)) b!5273626))

(assert (= (and start!556920 (is-ElementMatch!14894 r!7292)) b!5273616))

(assert (= (and start!556920 (is-Concat!23739 r!7292)) b!5273638))

(assert (= (and start!556920 (is-Star!14894 r!7292)) b!5273615))

(assert (= (and start!556920 (is-Union!14894 r!7292)) b!5273623))

(assert (= (and start!556920 condSetEmpty!33770) setIsEmpty!33770))

(assert (= (and start!556920 (not condSetEmpty!33770)) setNonEmpty!33770))

(assert (= setNonEmpty!33770 b!5273618))

(assert (= b!5273620 b!5273636))

(assert (= (and start!556920 (is-Cons!60859 zl!343)) b!5273620))

(assert (= (and start!556920 (is-Cons!60857 s!2326)) b!5273627))

(declare-fun m!6312284 () Bool)

(assert (=> b!5273617 m!6312284))

(declare-fun m!6312286 () Bool)

(assert (=> b!5273617 m!6312286))

(declare-fun m!6312288 () Bool)

(assert (=> b!5273617 m!6312288))

(declare-fun m!6312290 () Bool)

(assert (=> b!5273621 m!6312290))

(declare-fun m!6312292 () Bool)

(assert (=> b!5273628 m!6312292))

(declare-fun m!6312294 () Bool)

(assert (=> b!5273614 m!6312294))

(declare-fun m!6312296 () Bool)

(assert (=> b!5273637 m!6312296))

(declare-fun m!6312298 () Bool)

(assert (=> b!5273613 m!6312298))

(assert (=> b!5273635 m!6312286))

(declare-fun m!6312300 () Bool)

(assert (=> b!5273635 m!6312300))

(declare-fun m!6312302 () Bool)

(assert (=> b!5273635 m!6312302))

(declare-fun m!6312304 () Bool)

(assert (=> b!5273635 m!6312304))

(declare-fun m!6312306 () Bool)

(assert (=> b!5273634 m!6312306))

(declare-fun m!6312308 () Bool)

(assert (=> b!5273626 m!6312308))

(declare-fun m!6312310 () Bool)

(assert (=> b!5273626 m!6312310))

(declare-fun m!6312312 () Bool)

(assert (=> b!5273626 m!6312312))

(declare-fun m!6312314 () Bool)

(assert (=> b!5273626 m!6312314))

(declare-fun m!6312316 () Bool)

(assert (=> b!5273630 m!6312316))

(declare-fun m!6312318 () Bool)

(assert (=> b!5273630 m!6312318))

(assert (=> b!5273630 m!6312312))

(declare-fun m!6312320 () Bool)

(assert (=> b!5273630 m!6312320))

(declare-fun m!6312322 () Bool)

(assert (=> b!5273630 m!6312322))

(declare-fun m!6312324 () Bool)

(assert (=> b!5273630 m!6312324))

(declare-fun m!6312326 () Bool)

(assert (=> b!5273630 m!6312326))

(declare-fun m!6312328 () Bool)

(assert (=> b!5273632 m!6312328))

(declare-fun m!6312330 () Bool)

(assert (=> b!5273632 m!6312330))

(declare-fun m!6312332 () Bool)

(assert (=> b!5273632 m!6312332))

(declare-fun m!6312334 () Bool)

(assert (=> b!5273632 m!6312334))

(declare-fun m!6312336 () Bool)

(assert (=> b!5273632 m!6312336))

(declare-fun m!6312338 () Bool)

(assert (=> b!5273632 m!6312338))

(declare-fun m!6312340 () Bool)

(assert (=> b!5273632 m!6312340))

(declare-fun m!6312342 () Bool)

(assert (=> b!5273611 m!6312342))

(declare-fun m!6312344 () Bool)

(assert (=> b!5273611 m!6312344))

(declare-fun m!6312346 () Bool)

(assert (=> b!5273611 m!6312346))

(declare-fun m!6312348 () Bool)

(assert (=> b!5273625 m!6312348))

(declare-fun m!6312350 () Bool)

(assert (=> b!5273610 m!6312350))

(declare-fun m!6312352 () Bool)

(assert (=> b!5273610 m!6312352))

(declare-fun m!6312354 () Bool)

(assert (=> b!5273610 m!6312354))

(declare-fun m!6312356 () Bool)

(assert (=> b!5273610 m!6312356))

(assert (=> b!5273610 m!6312350))

(declare-fun m!6312358 () Bool)

(assert (=> b!5273610 m!6312358))

(assert (=> b!5273610 m!6312354))

(declare-fun m!6312360 () Bool)

(assert (=> b!5273610 m!6312360))

(assert (=> b!5273624 m!6312348))

(declare-fun m!6312362 () Bool)

(assert (=> b!5273620 m!6312362))

(declare-fun m!6312364 () Bool)

(assert (=> b!5273629 m!6312364))

(declare-fun m!6312366 () Bool)

(assert (=> b!5273629 m!6312366))

(declare-fun m!6312368 () Bool)

(assert (=> b!5273631 m!6312368))

(assert (=> b!5273631 m!6312368))

(declare-fun m!6312370 () Bool)

(assert (=> b!5273631 m!6312370))

(declare-fun m!6312372 () Bool)

(assert (=> setNonEmpty!33770 m!6312372))

(declare-fun m!6312374 () Bool)

(assert (=> start!556920 m!6312374))

(declare-fun m!6312376 () Bool)

(assert (=> b!5273633 m!6312376))

(push 1)

(assert (not b!5273614))

(assert (not b!5273621))

(assert (not b!5273628))

(assert (not b!5273627))

(assert tp_is_empty!39041)

(assert (not b!5273637))

(assert (not b!5273633))

(assert (not b!5273635))

(assert (not b!5273632))

(assert (not b!5273617))

(assert (not b!5273625))

(assert (not b!5273615))

(assert (not b!5273634))

(assert (not b!5273630))

(assert (not setNonEmpty!33770))

(assert (not b!5273626))

(assert (not b!5273631))

(assert (not b!5273618))

(assert (not b!5273620))

(assert (not b!5273638))

(assert (not b!5273613))

(assert (not b!5273624))

(assert (not b!5273611))

(assert (not b!5273610))

(assert (not b!5273636))

(assert (not start!556920))

(assert (not b!5273623))

(assert (not b!5273629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1697135 () Bool)

(declare-fun c!913632 () Bool)

(declare-fun isEmpty!32813 (List!60981) Bool)

(assert (=> d!1697135 (= c!913632 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279661 () Bool)

(assert (=> d!1697135 (= (matchZipper!1138 lt!2157022 (t!374178 s!2326)) e!3279661)))

(declare-fun b!5273754 () Bool)

(declare-fun nullableZipper!1293 ((Set Context!8556)) Bool)

(assert (=> b!5273754 (= e!3279661 (nullableZipper!1293 lt!2157022))))

(declare-fun b!5273755 () Bool)

(declare-fun head!11304 (List!60981) C!30058)

(declare-fun tail!10401 (List!60981) List!60981)

(assert (=> b!5273755 (= e!3279661 (matchZipper!1138 (derivationStepZipper!1137 lt!2157022 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697135 c!913632) b!5273754))

(assert (= (and d!1697135 (not c!913632)) b!5273755))

(declare-fun m!6312472 () Bool)

(assert (=> d!1697135 m!6312472))

(declare-fun m!6312474 () Bool)

(assert (=> b!5273754 m!6312474))

(declare-fun m!6312476 () Bool)

(assert (=> b!5273755 m!6312476))

(assert (=> b!5273755 m!6312476))

(declare-fun m!6312478 () Bool)

(assert (=> b!5273755 m!6312478))

(declare-fun m!6312480 () Bool)

(assert (=> b!5273755 m!6312480))

(assert (=> b!5273755 m!6312478))

(assert (=> b!5273755 m!6312480))

(declare-fun m!6312482 () Bool)

(assert (=> b!5273755 m!6312482))

(assert (=> b!5273625 d!1697135))

(declare-fun d!1697137 () Bool)

(declare-fun c!913633 () Bool)

(assert (=> d!1697137 (= c!913633 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279662 () Bool)

(assert (=> d!1697137 (= (matchZipper!1138 lt!2157019 (t!374178 s!2326)) e!3279662)))

(declare-fun b!5273756 () Bool)

(assert (=> b!5273756 (= e!3279662 (nullableZipper!1293 lt!2157019))))

(declare-fun b!5273757 () Bool)

(assert (=> b!5273757 (= e!3279662 (matchZipper!1138 (derivationStepZipper!1137 lt!2157019 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697137 c!913633) b!5273756))

(assert (= (and d!1697137 (not c!913633)) b!5273757))

(assert (=> d!1697137 m!6312472))

(declare-fun m!6312484 () Bool)

(assert (=> b!5273756 m!6312484))

(assert (=> b!5273757 m!6312476))

(assert (=> b!5273757 m!6312476))

(declare-fun m!6312486 () Bool)

(assert (=> b!5273757 m!6312486))

(assert (=> b!5273757 m!6312480))

(assert (=> b!5273757 m!6312486))

(assert (=> b!5273757 m!6312480))

(declare-fun m!6312488 () Bool)

(assert (=> b!5273757 m!6312488))

(assert (=> b!5273635 d!1697137))

(declare-fun d!1697139 () Bool)

(declare-fun c!913634 () Bool)

(assert (=> d!1697139 (= c!913634 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279663 () Bool)

(assert (=> d!1697139 (= (matchZipper!1138 lt!2157024 (t!374178 s!2326)) e!3279663)))

(declare-fun b!5273758 () Bool)

(assert (=> b!5273758 (= e!3279663 (nullableZipper!1293 lt!2157024))))

(declare-fun b!5273759 () Bool)

(assert (=> b!5273759 (= e!3279663 (matchZipper!1138 (derivationStepZipper!1137 lt!2157024 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697139 c!913634) b!5273758))

(assert (= (and d!1697139 (not c!913634)) b!5273759))

(assert (=> d!1697139 m!6312472))

(declare-fun m!6312490 () Bool)

(assert (=> b!5273758 m!6312490))

(assert (=> b!5273759 m!6312476))

(assert (=> b!5273759 m!6312476))

(declare-fun m!6312492 () Bool)

(assert (=> b!5273759 m!6312492))

(assert (=> b!5273759 m!6312480))

(assert (=> b!5273759 m!6312492))

(assert (=> b!5273759 m!6312480))

(declare-fun m!6312494 () Bool)

(assert (=> b!5273759 m!6312494))

(assert (=> b!5273635 d!1697139))

(declare-fun d!1697141 () Bool)

(declare-fun c!913635 () Bool)

(assert (=> d!1697141 (= c!913635 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279664 () Bool)

(assert (=> d!1697141 (= (matchZipper!1138 lt!2157023 (t!374178 s!2326)) e!3279664)))

(declare-fun b!5273760 () Bool)

(assert (=> b!5273760 (= e!3279664 (nullableZipper!1293 lt!2157023))))

(declare-fun b!5273761 () Bool)

(assert (=> b!5273761 (= e!3279664 (matchZipper!1138 (derivationStepZipper!1137 lt!2157023 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697141 c!913635) b!5273760))

(assert (= (and d!1697141 (not c!913635)) b!5273761))

(assert (=> d!1697141 m!6312472))

(declare-fun m!6312496 () Bool)

(assert (=> b!5273760 m!6312496))

(assert (=> b!5273761 m!6312476))

(assert (=> b!5273761 m!6312476))

(declare-fun m!6312498 () Bool)

(assert (=> b!5273761 m!6312498))

(assert (=> b!5273761 m!6312480))

(assert (=> b!5273761 m!6312498))

(assert (=> b!5273761 m!6312480))

(declare-fun m!6312500 () Bool)

(assert (=> b!5273761 m!6312500))

(assert (=> b!5273635 d!1697141))

(declare-fun d!1697143 () Bool)

(declare-fun e!3279667 () Bool)

(assert (=> d!1697143 (= (matchZipper!1138 (set.union lt!2157023 lt!2157022) (t!374178 s!2326)) e!3279667)))

(declare-fun res!2237084 () Bool)

(assert (=> d!1697143 (=> res!2237084 e!3279667)))

(assert (=> d!1697143 (= res!2237084 (matchZipper!1138 lt!2157023 (t!374178 s!2326)))))

(declare-fun lt!2157109 () Unit!153094)

(declare-fun choose!39347 ((Set Context!8556) (Set Context!8556) List!60981) Unit!153094)

(assert (=> d!1697143 (= lt!2157109 (choose!39347 lt!2157023 lt!2157022 (t!374178 s!2326)))))

(assert (=> d!1697143 (= (lemmaZipperConcatMatchesSameAsBothZippers!131 lt!2157023 lt!2157022 (t!374178 s!2326)) lt!2157109)))

(declare-fun b!5273764 () Bool)

(assert (=> b!5273764 (= e!3279667 (matchZipper!1138 lt!2157022 (t!374178 s!2326)))))

(assert (= (and d!1697143 (not res!2237084)) b!5273764))

(declare-fun m!6312502 () Bool)

(assert (=> d!1697143 m!6312502))

(assert (=> d!1697143 m!6312302))

(declare-fun m!6312504 () Bool)

(assert (=> d!1697143 m!6312504))

(assert (=> b!5273764 m!6312348))

(assert (=> b!5273635 d!1697143))

(declare-fun d!1697145 () Bool)

(declare-fun lt!2157112 () Regex!14894)

(assert (=> d!1697145 (validRegex!6630 lt!2157112)))

(assert (=> d!1697145 (= lt!2157112 (generalisedUnion!823 (unfocusZipperList!336 zl!343)))))

(assert (=> d!1697145 (= (unfocusZipper!636 zl!343) lt!2157112)))

(declare-fun bs!1221839 () Bool)

(assert (= bs!1221839 d!1697145))

(declare-fun m!6312506 () Bool)

(assert (=> bs!1221839 m!6312506))

(assert (=> bs!1221839 m!6312368))

(assert (=> bs!1221839 m!6312368))

(assert (=> bs!1221839 m!6312370))

(assert (=> b!5273614 d!1697145))

(declare-fun d!1697147 () Bool)

(declare-fun lambda!266130 () Int)

(declare-fun forall!14302 (List!60982 Int) Bool)

(assert (=> d!1697147 (= (inv!80483 setElem!33770) (forall!14302 (exprs!4778 setElem!33770) lambda!266130))))

(declare-fun bs!1221840 () Bool)

(assert (= bs!1221840 d!1697147))

(declare-fun m!6312508 () Bool)

(assert (=> bs!1221840 m!6312508))

(assert (=> setNonEmpty!33770 d!1697147))

(declare-fun b!5273783 () Bool)

(declare-fun e!3279685 () Bool)

(declare-fun call!375001 () Bool)

(assert (=> b!5273783 (= e!3279685 call!375001)))

(declare-fun b!5273784 () Bool)

(declare-fun res!2237099 () Bool)

(declare-fun e!3279686 () Bool)

(assert (=> b!5273784 (=> res!2237099 e!3279686)))

(assert (=> b!5273784 (= res!2237099 (not (is-Concat!23739 (regOne!30300 (regOne!30300 r!7292)))))))

(declare-fun e!3279688 () Bool)

(assert (=> b!5273784 (= e!3279688 e!3279686)))

(declare-fun b!5273785 () Bool)

(declare-fun e!3279683 () Bool)

(declare-fun call!375002 () Bool)

(assert (=> b!5273785 (= e!3279683 call!375002)))

(declare-fun d!1697149 () Bool)

(declare-fun res!2237097 () Bool)

(declare-fun e!3279682 () Bool)

(assert (=> d!1697149 (=> res!2237097 e!3279682)))

(assert (=> d!1697149 (= res!2237097 (is-ElementMatch!14894 (regOne!30300 (regOne!30300 r!7292))))))

(assert (=> d!1697149 (= (validRegex!6630 (regOne!30300 (regOne!30300 r!7292))) e!3279682)))

(declare-fun b!5273786 () Bool)

(assert (=> b!5273786 (= e!3279686 e!3279683)))

(declare-fun res!2237096 () Bool)

(assert (=> b!5273786 (=> (not res!2237096) (not e!3279683))))

(declare-fun call!375003 () Bool)

(assert (=> b!5273786 (= res!2237096 call!375003)))

(declare-fun b!5273787 () Bool)

(declare-fun e!3279687 () Bool)

(assert (=> b!5273787 (= e!3279687 call!375002)))

(declare-fun c!913640 () Bool)

(declare-fun bm!374996 () Bool)

(declare-fun c!913641 () Bool)

(assert (=> bm!374996 (= call!375001 (validRegex!6630 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(declare-fun b!5273788 () Bool)

(declare-fun e!3279684 () Bool)

(assert (=> b!5273788 (= e!3279684 e!3279688)))

(assert (=> b!5273788 (= c!913640 (is-Union!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun bm!374997 () Bool)

(assert (=> bm!374997 (= call!375002 call!375001)))

(declare-fun b!5273789 () Bool)

(assert (=> b!5273789 (= e!3279682 e!3279684)))

(assert (=> b!5273789 (= c!913641 (is-Star!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun b!5273790 () Bool)

(declare-fun res!2237098 () Bool)

(assert (=> b!5273790 (=> (not res!2237098) (not e!3279687))))

(assert (=> b!5273790 (= res!2237098 call!375003)))

(assert (=> b!5273790 (= e!3279688 e!3279687)))

(declare-fun b!5273791 () Bool)

(assert (=> b!5273791 (= e!3279684 e!3279685)))

(declare-fun res!2237095 () Bool)

(assert (=> b!5273791 (= res!2237095 (not (nullable!5063 (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))))

(assert (=> b!5273791 (=> (not res!2237095) (not e!3279685))))

(declare-fun bm!374998 () Bool)

(assert (=> bm!374998 (= call!375003 (validRegex!6630 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(assert (= (and d!1697149 (not res!2237097)) b!5273789))

(assert (= (and b!5273789 c!913641) b!5273791))

(assert (= (and b!5273789 (not c!913641)) b!5273788))

(assert (= (and b!5273791 res!2237095) b!5273783))

(assert (= (and b!5273788 c!913640) b!5273790))

(assert (= (and b!5273788 (not c!913640)) b!5273784))

(assert (= (and b!5273790 res!2237098) b!5273787))

(assert (= (and b!5273784 (not res!2237099)) b!5273786))

(assert (= (and b!5273786 res!2237096) b!5273785))

(assert (= (or b!5273787 b!5273785) bm!374997))

(assert (= (or b!5273790 b!5273786) bm!374998))

(assert (= (or b!5273783 bm!374997) bm!374996))

(declare-fun m!6312510 () Bool)

(assert (=> bm!374996 m!6312510))

(declare-fun m!6312512 () Bool)

(assert (=> b!5273791 m!6312512))

(declare-fun m!6312514 () Bool)

(assert (=> bm!374998 m!6312514))

(assert (=> b!5273626 d!1697149))

(declare-fun d!1697151 () Bool)

(declare-fun choose!39348 ((Set Context!8556) Int) (Set Context!8556))

(assert (=> d!1697151 (= (flatMap!621 lt!2157021 lambda!266112) (choose!39348 lt!2157021 lambda!266112))))

(declare-fun bs!1221841 () Bool)

(assert (= bs!1221841 d!1697151))

(declare-fun m!6312516 () Bool)

(assert (=> bs!1221841 m!6312516))

(assert (=> b!5273626 d!1697151))

(declare-fun b!5273802 () Bool)

(declare-fun e!3279695 () (Set Context!8556))

(declare-fun call!375006 () (Set Context!8556))

(assert (=> b!5273802 (= e!3279695 call!375006)))

(declare-fun b!5273803 () Bool)

(declare-fun e!3279696 () Bool)

(assert (=> b!5273803 (= e!3279696 (nullable!5063 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun d!1697153 () Bool)

(declare-fun c!913647 () Bool)

(assert (=> d!1697153 (= c!913647 e!3279696)))

(declare-fun res!2237102 () Bool)

(assert (=> d!1697153 (=> (not res!2237102) (not e!3279696))))

(assert (=> d!1697153 (= res!2237102 (is-Cons!60858 (exprs!4778 lt!2157020)))))

(declare-fun e!3279697 () (Set Context!8556))

(assert (=> d!1697153 (= (derivationStepZipperUp!266 lt!2157020 (h!67305 s!2326)) e!3279697)))

(declare-fun b!5273804 () Bool)

(assert (=> b!5273804 (= e!3279697 e!3279695)))

(declare-fun c!913646 () Bool)

(assert (=> b!5273804 (= c!913646 (is-Cons!60858 (exprs!4778 lt!2157020)))))

(declare-fun b!5273805 () Bool)

(assert (=> b!5273805 (= e!3279695 (as set.empty (Set Context!8556)))))

(declare-fun b!5273806 () Bool)

(assert (=> b!5273806 (= e!3279697 (set.union call!375006 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (h!67305 s!2326))))))

(declare-fun bm!375001 () Bool)

(assert (=> bm!375001 (= call!375006 (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157020)) (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (h!67305 s!2326)))))

(assert (= (and d!1697153 res!2237102) b!5273803))

(assert (= (and d!1697153 c!913647) b!5273806))

(assert (= (and d!1697153 (not c!913647)) b!5273804))

(assert (= (and b!5273804 c!913646) b!5273802))

(assert (= (and b!5273804 (not c!913646)) b!5273805))

(assert (= (or b!5273806 b!5273802) bm!375001))

(declare-fun m!6312518 () Bool)

(assert (=> b!5273803 m!6312518))

(declare-fun m!6312520 () Bool)

(assert (=> b!5273806 m!6312520))

(declare-fun m!6312522 () Bool)

(assert (=> bm!375001 m!6312522))

(assert (=> b!5273626 d!1697153))

(declare-fun d!1697155 () Bool)

(declare-fun dynLambda!24050 (Int Context!8556) (Set Context!8556))

(assert (=> d!1697155 (= (flatMap!621 lt!2157021 lambda!266112) (dynLambda!24050 lambda!266112 lt!2157020))))

(declare-fun lt!2157115 () Unit!153094)

(declare-fun choose!39349 ((Set Context!8556) Context!8556 Int) Unit!153094)

(assert (=> d!1697155 (= lt!2157115 (choose!39349 lt!2157021 lt!2157020 lambda!266112))))

(assert (=> d!1697155 (= lt!2157021 (set.insert lt!2157020 (as set.empty (Set Context!8556))))))

(assert (=> d!1697155 (= (lemmaFlatMapOnSingletonSet!153 lt!2157021 lt!2157020 lambda!266112) lt!2157115)))

(declare-fun b_lambda!203421 () Bool)

(assert (=> (not b_lambda!203421) (not d!1697155)))

(declare-fun bs!1221842 () Bool)

(assert (= bs!1221842 d!1697155))

(assert (=> bs!1221842 m!6312310))

(declare-fun m!6312524 () Bool)

(assert (=> bs!1221842 m!6312524))

(declare-fun m!6312526 () Bool)

(assert (=> bs!1221842 m!6312526))

(assert (=> bs!1221842 m!6312316))

(assert (=> b!5273626 d!1697155))

(declare-fun d!1697157 () Bool)

(declare-fun e!3279698 () Bool)

(assert (=> d!1697157 (= (matchZipper!1138 (set.union lt!2157019 lt!2157017) (t!374178 s!2326)) e!3279698)))

(declare-fun res!2237103 () Bool)

(assert (=> d!1697157 (=> res!2237103 e!3279698)))

(assert (=> d!1697157 (= res!2237103 (matchZipper!1138 lt!2157019 (t!374178 s!2326)))))

(declare-fun lt!2157116 () Unit!153094)

(assert (=> d!1697157 (= lt!2157116 (choose!39347 lt!2157019 lt!2157017 (t!374178 s!2326)))))

(assert (=> d!1697157 (= (lemmaZipperConcatMatchesSameAsBothZippers!131 lt!2157019 lt!2157017 (t!374178 s!2326)) lt!2157116)))

(declare-fun b!5273807 () Bool)

(assert (=> b!5273807 (= e!3279698 (matchZipper!1138 lt!2157017 (t!374178 s!2326)))))

(assert (= (and d!1697157 (not res!2237103)) b!5273807))

(assert (=> d!1697157 m!6312288))

(assert (=> d!1697157 m!6312286))

(declare-fun m!6312528 () Bool)

(assert (=> d!1697157 m!6312528))

(assert (=> b!5273807 m!6312376))

(assert (=> b!5273617 d!1697157))

(assert (=> b!5273617 d!1697137))

(declare-fun d!1697159 () Bool)

(declare-fun c!913648 () Bool)

(assert (=> d!1697159 (= c!913648 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279699 () Bool)

(assert (=> d!1697159 (= (matchZipper!1138 (set.union lt!2157019 lt!2157017) (t!374178 s!2326)) e!3279699)))

(declare-fun b!5273808 () Bool)

(assert (=> b!5273808 (= e!3279699 (nullableZipper!1293 (set.union lt!2157019 lt!2157017)))))

(declare-fun b!5273809 () Bool)

(assert (=> b!5273809 (= e!3279699 (matchZipper!1138 (derivationStepZipper!1137 (set.union lt!2157019 lt!2157017) (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697159 c!913648) b!5273808))

(assert (= (and d!1697159 (not c!913648)) b!5273809))

(assert (=> d!1697159 m!6312472))

(declare-fun m!6312530 () Bool)

(assert (=> b!5273808 m!6312530))

(assert (=> b!5273809 m!6312476))

(assert (=> b!5273809 m!6312476))

(declare-fun m!6312532 () Bool)

(assert (=> b!5273809 m!6312532))

(assert (=> b!5273809 m!6312480))

(assert (=> b!5273809 m!6312532))

(assert (=> b!5273809 m!6312480))

(declare-fun m!6312534 () Bool)

(assert (=> b!5273809 m!6312534))

(assert (=> b!5273617 d!1697159))

(declare-fun d!1697161 () Bool)

(assert (=> d!1697161 (= (isEmpty!32809 (t!374179 (exprs!4778 (h!67307 zl!343)))) (is-Nil!60858 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> b!5273628 d!1697161))

(declare-fun b!5273832 () Bool)

(declare-fun e!3279713 () (Set Context!8556))

(declare-fun e!3279715 () (Set Context!8556))

(assert (=> b!5273832 (= e!3279713 e!3279715)))

(declare-fun c!913663 () Bool)

(assert (=> b!5273832 (= c!913663 (is-Union!14894 (regTwo!30300 (regOne!30300 r!7292))))))

(declare-fun b!5273833 () Bool)

(declare-fun c!913660 () Bool)

(declare-fun e!3279717 () Bool)

(assert (=> b!5273833 (= c!913660 e!3279717)))

(declare-fun res!2237106 () Bool)

(assert (=> b!5273833 (=> (not res!2237106) (not e!3279717))))

(assert (=> b!5273833 (= res!2237106 (is-Concat!23739 (regTwo!30300 (regOne!30300 r!7292))))))

(declare-fun e!3279714 () (Set Context!8556))

(assert (=> b!5273833 (= e!3279715 e!3279714)))

(declare-fun bm!375014 () Bool)

(declare-fun call!375022 () (Set Context!8556))

(declare-fun call!375024 () (Set Context!8556))

(assert (=> bm!375014 (= call!375022 call!375024)))

(declare-fun bm!375015 () Bool)

(declare-fun call!375020 () (Set Context!8556))

(declare-fun call!375019 () List!60982)

(assert (=> bm!375015 (= call!375020 (derivationStepZipperDown!342 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))) (ite c!913663 lt!2157008 (Context!8557 call!375019)) (h!67305 s!2326)))))

(declare-fun b!5273834 () Bool)

(assert (=> b!5273834 (= e!3279715 (set.union call!375020 call!375024))))

(declare-fun bm!375016 () Bool)

(declare-fun call!375023 () List!60982)

(declare-fun c!913661 () Bool)

(assert (=> bm!375016 (= call!375024 (derivationStepZipperDown!342 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))) (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023)) (h!67305 s!2326)))))

(declare-fun bm!375017 () Bool)

(declare-fun call!375021 () (Set Context!8556))

(assert (=> bm!375017 (= call!375021 call!375022)))

(declare-fun bm!375018 () Bool)

(assert (=> bm!375018 (= call!375023 call!375019)))

(declare-fun b!5273835 () Bool)

(declare-fun e!3279716 () (Set Context!8556))

(assert (=> b!5273835 (= e!3279716 (as set.empty (Set Context!8556)))))

(declare-fun d!1697163 () Bool)

(declare-fun c!913662 () Bool)

(assert (=> d!1697163 (= c!913662 (and (is-ElementMatch!14894 (regTwo!30300 (regOne!30300 r!7292))) (= (c!913618 (regTwo!30300 (regOne!30300 r!7292))) (h!67305 s!2326))))))

(assert (=> d!1697163 (= (derivationStepZipperDown!342 (regTwo!30300 (regOne!30300 r!7292)) lt!2157008 (h!67305 s!2326)) e!3279713)))

(declare-fun b!5273836 () Bool)

(declare-fun c!913659 () Bool)

(assert (=> b!5273836 (= c!913659 (is-Star!14894 (regTwo!30300 (regOne!30300 r!7292))))))

(declare-fun e!3279712 () (Set Context!8556))

(assert (=> b!5273836 (= e!3279712 e!3279716)))

(declare-fun b!5273837 () Bool)

(assert (=> b!5273837 (= e!3279717 (nullable!5063 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))))

(declare-fun b!5273838 () Bool)

(assert (=> b!5273838 (= e!3279714 e!3279712)))

(assert (=> b!5273838 (= c!913661 (is-Concat!23739 (regTwo!30300 (regOne!30300 r!7292))))))

(declare-fun b!5273839 () Bool)

(assert (=> b!5273839 (= e!3279713 (set.insert lt!2157008 (as set.empty (Set Context!8556))))))

(declare-fun b!5273840 () Bool)

(assert (=> b!5273840 (= e!3279714 (set.union call!375020 call!375022))))

(declare-fun b!5273841 () Bool)

(assert (=> b!5273841 (= e!3279712 call!375021)))

(declare-fun b!5273842 () Bool)

(assert (=> b!5273842 (= e!3279716 call!375021)))

(declare-fun bm!375019 () Bool)

(declare-fun $colon$colon!1343 (List!60982 Regex!14894) List!60982)

(assert (=> bm!375019 (= call!375019 ($colon$colon!1343 (exprs!4778 lt!2157008) (ite (or c!913660 c!913661) (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 r!7292)))))))

(assert (= (and d!1697163 c!913662) b!5273839))

(assert (= (and d!1697163 (not c!913662)) b!5273832))

(assert (= (and b!5273832 c!913663) b!5273834))

(assert (= (and b!5273832 (not c!913663)) b!5273833))

(assert (= (and b!5273833 res!2237106) b!5273837))

(assert (= (and b!5273833 c!913660) b!5273840))

(assert (= (and b!5273833 (not c!913660)) b!5273838))

(assert (= (and b!5273838 c!913661) b!5273841))

(assert (= (and b!5273838 (not c!913661)) b!5273836))

(assert (= (and b!5273836 c!913659) b!5273842))

(assert (= (and b!5273836 (not c!913659)) b!5273835))

(assert (= (or b!5273841 b!5273842) bm!375018))

(assert (= (or b!5273841 b!5273842) bm!375017))

(assert (= (or b!5273840 bm!375018) bm!375019))

(assert (= (or b!5273840 bm!375017) bm!375014))

(assert (= (or b!5273834 bm!375014) bm!375016))

(assert (= (or b!5273834 b!5273840) bm!375015))

(declare-fun m!6312536 () Bool)

(assert (=> bm!375016 m!6312536))

(declare-fun m!6312538 () Bool)

(assert (=> bm!375019 m!6312538))

(declare-fun m!6312540 () Bool)

(assert (=> b!5273839 m!6312540))

(declare-fun m!6312542 () Bool)

(assert (=> b!5273837 m!6312542))

(declare-fun m!6312544 () Bool)

(assert (=> bm!375015 m!6312544))

(assert (=> b!5273629 d!1697163))

(declare-fun b!5273843 () Bool)

(declare-fun e!3279719 () (Set Context!8556))

(declare-fun e!3279721 () (Set Context!8556))

(assert (=> b!5273843 (= e!3279719 e!3279721)))

(declare-fun c!913668 () Bool)

(assert (=> b!5273843 (= c!913668 (is-Union!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun b!5273844 () Bool)

(declare-fun c!913665 () Bool)

(declare-fun e!3279723 () Bool)

(assert (=> b!5273844 (= c!913665 e!3279723)))

(declare-fun res!2237107 () Bool)

(assert (=> b!5273844 (=> (not res!2237107) (not e!3279723))))

(assert (=> b!5273844 (= res!2237107 (is-Concat!23739 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun e!3279720 () (Set Context!8556))

(assert (=> b!5273844 (= e!3279721 e!3279720)))

(declare-fun bm!375020 () Bool)

(declare-fun call!375028 () (Set Context!8556))

(declare-fun call!375030 () (Set Context!8556))

(assert (=> bm!375020 (= call!375028 call!375030)))

(declare-fun call!375025 () List!60982)

(declare-fun bm!375021 () Bool)

(declare-fun call!375026 () (Set Context!8556))

(assert (=> bm!375021 (= call!375026 (derivationStepZipperDown!342 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))) (ite c!913668 lt!2157020 (Context!8557 call!375025)) (h!67305 s!2326)))))

(declare-fun b!5273845 () Bool)

(assert (=> b!5273845 (= e!3279721 (set.union call!375026 call!375030))))

(declare-fun bm!375022 () Bool)

(declare-fun c!913666 () Bool)

(declare-fun call!375029 () List!60982)

(assert (=> bm!375022 (= call!375030 (derivationStepZipperDown!342 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))) (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029)) (h!67305 s!2326)))))

(declare-fun bm!375023 () Bool)

(declare-fun call!375027 () (Set Context!8556))

(assert (=> bm!375023 (= call!375027 call!375028)))

(declare-fun bm!375024 () Bool)

(assert (=> bm!375024 (= call!375029 call!375025)))

(declare-fun b!5273846 () Bool)

(declare-fun e!3279722 () (Set Context!8556))

(assert (=> b!5273846 (= e!3279722 (as set.empty (Set Context!8556)))))

(declare-fun d!1697165 () Bool)

(declare-fun c!913667 () Bool)

(assert (=> d!1697165 (= c!913667 (and (is-ElementMatch!14894 (regOne!30300 (regOne!30300 r!7292))) (= (c!913618 (regOne!30300 (regOne!30300 r!7292))) (h!67305 s!2326))))))

(assert (=> d!1697165 (= (derivationStepZipperDown!342 (regOne!30300 (regOne!30300 r!7292)) lt!2157020 (h!67305 s!2326)) e!3279719)))

(declare-fun b!5273847 () Bool)

(declare-fun c!913664 () Bool)

(assert (=> b!5273847 (= c!913664 (is-Star!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun e!3279718 () (Set Context!8556))

(assert (=> b!5273847 (= e!3279718 e!3279722)))

(declare-fun b!5273848 () Bool)

(assert (=> b!5273848 (= e!3279723 (nullable!5063 (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))

(declare-fun b!5273849 () Bool)

(assert (=> b!5273849 (= e!3279720 e!3279718)))

(assert (=> b!5273849 (= c!913666 (is-Concat!23739 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun b!5273850 () Bool)

(assert (=> b!5273850 (= e!3279719 (set.insert lt!2157020 (as set.empty (Set Context!8556))))))

(declare-fun b!5273851 () Bool)

(assert (=> b!5273851 (= e!3279720 (set.union call!375026 call!375028))))

(declare-fun b!5273852 () Bool)

(assert (=> b!5273852 (= e!3279718 call!375027)))

(declare-fun b!5273853 () Bool)

(assert (=> b!5273853 (= e!3279722 call!375027)))

(declare-fun bm!375025 () Bool)

(assert (=> bm!375025 (= call!375025 ($colon$colon!1343 (exprs!4778 lt!2157020) (ite (or c!913665 c!913666) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 r!7292)))))))

(assert (= (and d!1697165 c!913667) b!5273850))

(assert (= (and d!1697165 (not c!913667)) b!5273843))

(assert (= (and b!5273843 c!913668) b!5273845))

(assert (= (and b!5273843 (not c!913668)) b!5273844))

(assert (= (and b!5273844 res!2237107) b!5273848))

(assert (= (and b!5273844 c!913665) b!5273851))

(assert (= (and b!5273844 (not c!913665)) b!5273849))

(assert (= (and b!5273849 c!913666) b!5273852))

(assert (= (and b!5273849 (not c!913666)) b!5273847))

(assert (= (and b!5273847 c!913664) b!5273853))

(assert (= (and b!5273847 (not c!913664)) b!5273846))

(assert (= (or b!5273852 b!5273853) bm!375024))

(assert (= (or b!5273852 b!5273853) bm!375023))

(assert (= (or b!5273851 bm!375024) bm!375025))

(assert (= (or b!5273851 bm!375023) bm!375020))

(assert (= (or b!5273845 bm!375020) bm!375022))

(assert (= (or b!5273845 b!5273851) bm!375021))

(declare-fun m!6312546 () Bool)

(assert (=> bm!375022 m!6312546))

(declare-fun m!6312548 () Bool)

(assert (=> bm!375025 m!6312548))

(assert (=> b!5273850 m!6312316))

(declare-fun m!6312550 () Bool)

(assert (=> b!5273848 m!6312550))

(declare-fun m!6312552 () Bool)

(assert (=> bm!375021 m!6312552))

(assert (=> b!5273629 d!1697165))

(declare-fun b!5273854 () Bool)

(declare-fun e!3279727 () Bool)

(declare-fun call!375031 () Bool)

(assert (=> b!5273854 (= e!3279727 call!375031)))

(declare-fun b!5273855 () Bool)

(declare-fun res!2237112 () Bool)

(declare-fun e!3279728 () Bool)

(assert (=> b!5273855 (=> res!2237112 e!3279728)))

(assert (=> b!5273855 (= res!2237112 (not (is-Concat!23739 r!7292)))))

(declare-fun e!3279730 () Bool)

(assert (=> b!5273855 (= e!3279730 e!3279728)))

(declare-fun b!5273856 () Bool)

(declare-fun e!3279725 () Bool)

(declare-fun call!375032 () Bool)

(assert (=> b!5273856 (= e!3279725 call!375032)))

(declare-fun d!1697167 () Bool)

(declare-fun res!2237110 () Bool)

(declare-fun e!3279724 () Bool)

(assert (=> d!1697167 (=> res!2237110 e!3279724)))

(assert (=> d!1697167 (= res!2237110 (is-ElementMatch!14894 r!7292))))

(assert (=> d!1697167 (= (validRegex!6630 r!7292) e!3279724)))

(declare-fun b!5273857 () Bool)

(assert (=> b!5273857 (= e!3279728 e!3279725)))

(declare-fun res!2237109 () Bool)

(assert (=> b!5273857 (=> (not res!2237109) (not e!3279725))))

(declare-fun call!375033 () Bool)

(assert (=> b!5273857 (= res!2237109 call!375033)))

(declare-fun b!5273858 () Bool)

(declare-fun e!3279729 () Bool)

(assert (=> b!5273858 (= e!3279729 call!375032)))

(declare-fun c!913669 () Bool)

(declare-fun bm!375026 () Bool)

(declare-fun c!913670 () Bool)

(assert (=> bm!375026 (= call!375031 (validRegex!6630 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))

(declare-fun b!5273859 () Bool)

(declare-fun e!3279726 () Bool)

(assert (=> b!5273859 (= e!3279726 e!3279730)))

(assert (=> b!5273859 (= c!913669 (is-Union!14894 r!7292))))

(declare-fun bm!375027 () Bool)

(assert (=> bm!375027 (= call!375032 call!375031)))

(declare-fun b!5273860 () Bool)

(assert (=> b!5273860 (= e!3279724 e!3279726)))

(assert (=> b!5273860 (= c!913670 (is-Star!14894 r!7292))))

(declare-fun b!5273861 () Bool)

(declare-fun res!2237111 () Bool)

(assert (=> b!5273861 (=> (not res!2237111) (not e!3279729))))

(assert (=> b!5273861 (= res!2237111 call!375033)))

(assert (=> b!5273861 (= e!3279730 e!3279729)))

(declare-fun b!5273862 () Bool)

(assert (=> b!5273862 (= e!3279726 e!3279727)))

(declare-fun res!2237108 () Bool)

(assert (=> b!5273862 (= res!2237108 (not (nullable!5063 (reg!15223 r!7292))))))

(assert (=> b!5273862 (=> (not res!2237108) (not e!3279727))))

(declare-fun bm!375028 () Bool)

(assert (=> bm!375028 (= call!375033 (validRegex!6630 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))

(assert (= (and d!1697167 (not res!2237110)) b!5273860))

(assert (= (and b!5273860 c!913670) b!5273862))

(assert (= (and b!5273860 (not c!913670)) b!5273859))

(assert (= (and b!5273862 res!2237108) b!5273854))

(assert (= (and b!5273859 c!913669) b!5273861))

(assert (= (and b!5273859 (not c!913669)) b!5273855))

(assert (= (and b!5273861 res!2237111) b!5273858))

(assert (= (and b!5273855 (not res!2237112)) b!5273857))

(assert (= (and b!5273857 res!2237109) b!5273856))

(assert (= (or b!5273858 b!5273856) bm!375027))

(assert (= (or b!5273861 b!5273857) bm!375028))

(assert (= (or b!5273854 bm!375027) bm!375026))

(declare-fun m!6312554 () Bool)

(assert (=> bm!375026 m!6312554))

(declare-fun m!6312556 () Bool)

(assert (=> b!5273862 m!6312556))

(declare-fun m!6312558 () Bool)

(assert (=> bm!375028 m!6312558))

(assert (=> start!556920 d!1697167))

(declare-fun d!1697169 () Bool)

(assert (=> d!1697169 (= (isEmpty!32810 (t!374180 zl!343)) (is-Nil!60859 (t!374180 zl!343)))))

(assert (=> b!5273637 d!1697169))

(declare-fun bs!1221843 () Bool)

(declare-fun d!1697171 () Bool)

(assert (= bs!1221843 (and d!1697171 d!1697147)))

(declare-fun lambda!266131 () Int)

(assert (=> bs!1221843 (= lambda!266131 lambda!266130)))

(assert (=> d!1697171 (= (inv!80483 (h!67307 zl!343)) (forall!14302 (exprs!4778 (h!67307 zl!343)) lambda!266131))))

(declare-fun bs!1221844 () Bool)

(assert (= bs!1221844 d!1697171))

(declare-fun m!6312560 () Bool)

(assert (=> bs!1221844 m!6312560))

(assert (=> b!5273620 d!1697171))

(declare-fun d!1697173 () Bool)

(assert (=> d!1697173 (= (flatMap!621 lt!2157027 lambda!266112) (choose!39348 lt!2157027 lambda!266112))))

(declare-fun bs!1221845 () Bool)

(assert (= bs!1221845 d!1697173))

(declare-fun m!6312562 () Bool)

(assert (=> bs!1221845 m!6312562))

(assert (=> b!5273630 d!1697173))

(declare-fun d!1697175 () Bool)

(assert (=> d!1697175 (= (flatMap!621 lt!2157027 lambda!266112) (dynLambda!24050 lambda!266112 lt!2157029))))

(declare-fun lt!2157117 () Unit!153094)

(assert (=> d!1697175 (= lt!2157117 (choose!39349 lt!2157027 lt!2157029 lambda!266112))))

(assert (=> d!1697175 (= lt!2157027 (set.insert lt!2157029 (as set.empty (Set Context!8556))))))

(assert (=> d!1697175 (= (lemmaFlatMapOnSingletonSet!153 lt!2157027 lt!2157029 lambda!266112) lt!2157117)))

(declare-fun b_lambda!203423 () Bool)

(assert (=> (not b_lambda!203423) (not d!1697175)))

(declare-fun bs!1221846 () Bool)

(assert (= bs!1221846 d!1697175))

(assert (=> bs!1221846 m!6312324))

(declare-fun m!6312564 () Bool)

(assert (=> bs!1221846 m!6312564))

(declare-fun m!6312566 () Bool)

(assert (=> bs!1221846 m!6312566))

(assert (=> bs!1221846 m!6312320))

(assert (=> b!5273630 d!1697175))

(declare-fun bs!1221847 () Bool)

(declare-fun d!1697177 () Bool)

(assert (= bs!1221847 (and d!1697177 b!5273632)))

(declare-fun lambda!266134 () Int)

(assert (=> bs!1221847 (= lambda!266134 lambda!266112)))

(assert (=> d!1697177 true))

(assert (=> d!1697177 (= (derivationStepZipper!1137 lt!2157027 (h!67305 s!2326)) (flatMap!621 lt!2157027 lambda!266134))))

(declare-fun bs!1221848 () Bool)

(assert (= bs!1221848 d!1697177))

(declare-fun m!6312568 () Bool)

(assert (=> bs!1221848 m!6312568))

(assert (=> b!5273630 d!1697177))

(assert (=> b!5273630 d!1697153))

(declare-fun b!5273865 () Bool)

(declare-fun e!3279731 () (Set Context!8556))

(declare-fun call!375034 () (Set Context!8556))

(assert (=> b!5273865 (= e!3279731 call!375034)))

(declare-fun b!5273866 () Bool)

(declare-fun e!3279732 () Bool)

(assert (=> b!5273866 (= e!3279732 (nullable!5063 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun d!1697179 () Bool)

(declare-fun c!913674 () Bool)

(assert (=> d!1697179 (= c!913674 e!3279732)))

(declare-fun res!2237113 () Bool)

(assert (=> d!1697179 (=> (not res!2237113) (not e!3279732))))

(assert (=> d!1697179 (= res!2237113 (is-Cons!60858 (exprs!4778 lt!2157029)))))

(declare-fun e!3279733 () (Set Context!8556))

(assert (=> d!1697179 (= (derivationStepZipperUp!266 lt!2157029 (h!67305 s!2326)) e!3279733)))

(declare-fun b!5273867 () Bool)

(assert (=> b!5273867 (= e!3279733 e!3279731)))

(declare-fun c!913673 () Bool)

(assert (=> b!5273867 (= c!913673 (is-Cons!60858 (exprs!4778 lt!2157029)))))

(declare-fun b!5273868 () Bool)

(assert (=> b!5273868 (= e!3279731 (as set.empty (Set Context!8556)))))

(declare-fun b!5273869 () Bool)

(assert (=> b!5273869 (= e!3279733 (set.union call!375034 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (h!67305 s!2326))))))

(declare-fun bm!375029 () Bool)

(assert (=> bm!375029 (= call!375034 (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157029)) (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (h!67305 s!2326)))))

(assert (= (and d!1697179 res!2237113) b!5273866))

(assert (= (and d!1697179 c!913674) b!5273869))

(assert (= (and d!1697179 (not c!913674)) b!5273867))

(assert (= (and b!5273867 c!913673) b!5273865))

(assert (= (and b!5273867 (not c!913673)) b!5273868))

(assert (= (or b!5273869 b!5273865) bm!375029))

(declare-fun m!6312570 () Bool)

(assert (=> b!5273866 m!6312570))

(declare-fun m!6312572 () Bool)

(assert (=> b!5273869 m!6312572))

(declare-fun m!6312574 () Bool)

(assert (=> bm!375029 m!6312574))

(assert (=> b!5273630 d!1697179))

(declare-fun bs!1221849 () Bool)

(declare-fun d!1697181 () Bool)

(assert (= bs!1221849 (and d!1697181 d!1697147)))

(declare-fun lambda!266137 () Int)

(assert (=> bs!1221849 (= lambda!266137 lambda!266130)))

(declare-fun bs!1221850 () Bool)

(assert (= bs!1221850 (and d!1697181 d!1697171)))

(assert (=> bs!1221850 (= lambda!266137 lambda!266131)))

(declare-fun b!5273890 () Bool)

(declare-fun e!3279748 () Bool)

(declare-fun lt!2157120 () Regex!14894)

(declare-fun head!11305 (List!60982) Regex!14894)

(assert (=> b!5273890 (= e!3279748 (= lt!2157120 (head!11305 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273891 () Bool)

(declare-fun e!3279749 () Bool)

(declare-fun e!3279751 () Bool)

(assert (=> b!5273891 (= e!3279749 e!3279751)))

(declare-fun c!913683 () Bool)

(assert (=> b!5273891 (= c!913683 (isEmpty!32809 (exprs!4778 (h!67307 zl!343))))))

(declare-fun b!5273892 () Bool)

(declare-fun isConcat!351 (Regex!14894) Bool)

(assert (=> b!5273892 (= e!3279748 (isConcat!351 lt!2157120))))

(declare-fun b!5273893 () Bool)

(assert (=> b!5273893 (= e!3279751 e!3279748)))

(declare-fun c!913684 () Bool)

(declare-fun tail!10402 (List!60982) List!60982)

(assert (=> b!5273893 (= c!913684 (isEmpty!32809 (tail!10402 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273894 () Bool)

(declare-fun e!3279750 () Bool)

(assert (=> b!5273894 (= e!3279750 (isEmpty!32809 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273895 () Bool)

(declare-fun e!3279747 () Regex!14894)

(assert (=> b!5273895 (= e!3279747 (h!67306 (exprs!4778 (h!67307 zl!343))))))

(assert (=> d!1697181 e!3279749))

(declare-fun res!2237118 () Bool)

(assert (=> d!1697181 (=> (not res!2237118) (not e!3279749))))

(assert (=> d!1697181 (= res!2237118 (validRegex!6630 lt!2157120))))

(assert (=> d!1697181 (= lt!2157120 e!3279747)))

(declare-fun c!913686 () Bool)

(assert (=> d!1697181 (= c!913686 e!3279750)))

(declare-fun res!2237119 () Bool)

(assert (=> d!1697181 (=> (not res!2237119) (not e!3279750))))

(assert (=> d!1697181 (= res!2237119 (is-Cons!60858 (exprs!4778 (h!67307 zl!343))))))

(assert (=> d!1697181 (forall!14302 (exprs!4778 (h!67307 zl!343)) lambda!266137)))

(assert (=> d!1697181 (= (generalisedConcat!563 (exprs!4778 (h!67307 zl!343))) lt!2157120)))

(declare-fun b!5273896 () Bool)

(declare-fun e!3279746 () Regex!14894)

(assert (=> b!5273896 (= e!3279747 e!3279746)))

(declare-fun c!913685 () Bool)

(assert (=> b!5273896 (= c!913685 (is-Cons!60858 (exprs!4778 (h!67307 zl!343))))))

(declare-fun b!5273897 () Bool)

(declare-fun isEmptyExpr!828 (Regex!14894) Bool)

(assert (=> b!5273897 (= e!3279751 (isEmptyExpr!828 lt!2157120))))

(declare-fun b!5273898 () Bool)

(assert (=> b!5273898 (= e!3279746 (Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343))) (generalisedConcat!563 (t!374179 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5273899 () Bool)

(assert (=> b!5273899 (= e!3279746 EmptyExpr!14894)))

(assert (= (and d!1697181 res!2237119) b!5273894))

(assert (= (and d!1697181 c!913686) b!5273895))

(assert (= (and d!1697181 (not c!913686)) b!5273896))

(assert (= (and b!5273896 c!913685) b!5273898))

(assert (= (and b!5273896 (not c!913685)) b!5273899))

(assert (= (and d!1697181 res!2237118) b!5273891))

(assert (= (and b!5273891 c!913683) b!5273897))

(assert (= (and b!5273891 (not c!913683)) b!5273893))

(assert (= (and b!5273893 c!913684) b!5273890))

(assert (= (and b!5273893 (not c!913684)) b!5273892))

(declare-fun m!6312576 () Bool)

(assert (=> b!5273898 m!6312576))

(declare-fun m!6312578 () Bool)

(assert (=> b!5273892 m!6312578))

(declare-fun m!6312580 () Bool)

(assert (=> b!5273891 m!6312580))

(declare-fun m!6312582 () Bool)

(assert (=> b!5273890 m!6312582))

(declare-fun m!6312584 () Bool)

(assert (=> b!5273897 m!6312584))

(assert (=> b!5273894 m!6312292))

(declare-fun m!6312586 () Bool)

(assert (=> d!1697181 m!6312586))

(declare-fun m!6312588 () Bool)

(assert (=> d!1697181 m!6312588))

(declare-fun m!6312590 () Bool)

(assert (=> b!5273893 m!6312590))

(assert (=> b!5273893 m!6312590))

(declare-fun m!6312592 () Bool)

(assert (=> b!5273893 m!6312592))

(assert (=> b!5273621 d!1697181))

(declare-fun b!5273900 () Bool)

(declare-fun e!3279752 () (Set Context!8556))

(declare-fun call!375035 () (Set Context!8556))

(assert (=> b!5273900 (= e!3279752 call!375035)))

(declare-fun b!5273901 () Bool)

(declare-fun e!3279753 () Bool)

(assert (=> b!5273901 (= e!3279753 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun d!1697183 () Bool)

(declare-fun c!913688 () Bool)

(assert (=> d!1697183 (= c!913688 e!3279753)))

(declare-fun res!2237120 () Bool)

(assert (=> d!1697183 (=> (not res!2237120) (not e!3279753))))

(assert (=> d!1697183 (= res!2237120 (is-Cons!60858 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))

(declare-fun e!3279754 () (Set Context!8556))

(assert (=> d!1697183 (= (derivationStepZipperUp!266 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))) (h!67305 s!2326)) e!3279754)))

(declare-fun b!5273902 () Bool)

(assert (=> b!5273902 (= e!3279754 e!3279752)))

(declare-fun c!913687 () Bool)

(assert (=> b!5273902 (= c!913687 (is-Cons!60858 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))

(declare-fun b!5273903 () Bool)

(assert (=> b!5273903 (= e!3279752 (as set.empty (Set Context!8556)))))

(declare-fun b!5273904 () Bool)

(assert (=> b!5273904 (= e!3279754 (set.union call!375035 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326))))))

(declare-fun bm!375030 () Bool)

(assert (=> bm!375030 (= call!375035 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326)))))

(assert (= (and d!1697183 res!2237120) b!5273901))

(assert (= (and d!1697183 c!913688) b!5273904))

(assert (= (and d!1697183 (not c!913688)) b!5273902))

(assert (= (and b!5273902 c!913687) b!5273900))

(assert (= (and b!5273902 (not c!913687)) b!5273903))

(assert (= (or b!5273904 b!5273900) bm!375030))

(declare-fun m!6312594 () Bool)

(assert (=> b!5273901 m!6312594))

(declare-fun m!6312596 () Bool)

(assert (=> b!5273904 m!6312596))

(declare-fun m!6312598 () Bool)

(assert (=> bm!375030 m!6312598))

(assert (=> b!5273632 d!1697183))

(declare-fun b!5273905 () Bool)

(declare-fun e!3279755 () (Set Context!8556))

(declare-fun call!375036 () (Set Context!8556))

(assert (=> b!5273905 (= e!3279755 call!375036)))

(declare-fun b!5273906 () Bool)

(declare-fun e!3279756 () Bool)

(assert (=> b!5273906 (= e!3279756 (nullable!5063 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun d!1697185 () Bool)

(declare-fun c!913690 () Bool)

(assert (=> d!1697185 (= c!913690 e!3279756)))

(declare-fun res!2237121 () Bool)

(assert (=> d!1697185 (=> (not res!2237121) (not e!3279756))))

(assert (=> d!1697185 (= res!2237121 (is-Cons!60858 (exprs!4778 lt!2157008)))))

(declare-fun e!3279757 () (Set Context!8556))

(assert (=> d!1697185 (= (derivationStepZipperUp!266 lt!2157008 (h!67305 s!2326)) e!3279757)))

(declare-fun b!5273907 () Bool)

(assert (=> b!5273907 (= e!3279757 e!3279755)))

(declare-fun c!913689 () Bool)

(assert (=> b!5273907 (= c!913689 (is-Cons!60858 (exprs!4778 lt!2157008)))))

(declare-fun b!5273908 () Bool)

(assert (=> b!5273908 (= e!3279755 (as set.empty (Set Context!8556)))))

(declare-fun b!5273909 () Bool)

(assert (=> b!5273909 (= e!3279757 (set.union call!375036 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (h!67305 s!2326))))))

(declare-fun bm!375031 () Bool)

(assert (=> bm!375031 (= call!375036 (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157008)) (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (h!67305 s!2326)))))

(assert (= (and d!1697185 res!2237121) b!5273906))

(assert (= (and d!1697185 c!913690) b!5273909))

(assert (= (and d!1697185 (not c!913690)) b!5273907))

(assert (= (and b!5273907 c!913689) b!5273905))

(assert (= (and b!5273907 (not c!913689)) b!5273908))

(assert (= (or b!5273909 b!5273905) bm!375031))

(declare-fun m!6312600 () Bool)

(assert (=> b!5273906 m!6312600))

(declare-fun m!6312602 () Bool)

(assert (=> b!5273909 m!6312602))

(declare-fun m!6312604 () Bool)

(assert (=> bm!375031 m!6312604))

(assert (=> b!5273632 d!1697185))

(declare-fun d!1697187 () Bool)

(assert (=> d!1697187 (= (flatMap!621 z!1189 lambda!266112) (dynLambda!24050 lambda!266112 (h!67307 zl!343)))))

(declare-fun lt!2157121 () Unit!153094)

(assert (=> d!1697187 (= lt!2157121 (choose!39349 z!1189 (h!67307 zl!343) lambda!266112))))

(assert (=> d!1697187 (= z!1189 (set.insert (h!67307 zl!343) (as set.empty (Set Context!8556))))))

(assert (=> d!1697187 (= (lemmaFlatMapOnSingletonSet!153 z!1189 (h!67307 zl!343) lambda!266112) lt!2157121)))

(declare-fun b_lambda!203425 () Bool)

(assert (=> (not b_lambda!203425) (not d!1697187)))

(declare-fun bs!1221851 () Bool)

(assert (= bs!1221851 d!1697187))

(assert (=> bs!1221851 m!6312334))

(declare-fun m!6312606 () Bool)

(assert (=> bs!1221851 m!6312606))

(declare-fun m!6312608 () Bool)

(assert (=> bs!1221851 m!6312608))

(declare-fun m!6312610 () Bool)

(assert (=> bs!1221851 m!6312610))

(assert (=> b!5273632 d!1697187))

(declare-fun d!1697189 () Bool)

(declare-fun nullableFct!1445 (Regex!14894) Bool)

(assert (=> d!1697189 (= (nullable!5063 (h!67306 (exprs!4778 (h!67307 zl!343)))) (nullableFct!1445 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun bs!1221852 () Bool)

(assert (= bs!1221852 d!1697189))

(declare-fun m!6312612 () Bool)

(assert (=> bs!1221852 m!6312612))

(assert (=> b!5273632 d!1697189))

(declare-fun d!1697191 () Bool)

(assert (=> d!1697191 (= (flatMap!621 z!1189 lambda!266112) (choose!39348 z!1189 lambda!266112))))

(declare-fun bs!1221853 () Bool)

(assert (= bs!1221853 d!1697191))

(declare-fun m!6312614 () Bool)

(assert (=> bs!1221853 m!6312614))

(assert (=> b!5273632 d!1697191))

(declare-fun b!5273910 () Bool)

(declare-fun e!3279759 () (Set Context!8556))

(declare-fun e!3279761 () (Set Context!8556))

(assert (=> b!5273910 (= e!3279759 e!3279761)))

(declare-fun c!913695 () Bool)

(assert (=> b!5273910 (= c!913695 (is-Union!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273911 () Bool)

(declare-fun c!913692 () Bool)

(declare-fun e!3279763 () Bool)

(assert (=> b!5273911 (= c!913692 e!3279763)))

(declare-fun res!2237122 () Bool)

(assert (=> b!5273911 (=> (not res!2237122) (not e!3279763))))

(assert (=> b!5273911 (= res!2237122 (is-Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun e!3279760 () (Set Context!8556))

(assert (=> b!5273911 (= e!3279761 e!3279760)))

(declare-fun bm!375032 () Bool)

(declare-fun call!375040 () (Set Context!8556))

(declare-fun call!375042 () (Set Context!8556))

(assert (=> bm!375032 (= call!375040 call!375042)))

(declare-fun call!375037 () List!60982)

(declare-fun bm!375033 () Bool)

(declare-fun call!375038 () (Set Context!8556))

(assert (=> bm!375033 (= call!375038 (derivationStepZipperDown!342 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))) (ite c!913695 lt!2157008 (Context!8557 call!375037)) (h!67305 s!2326)))))

(declare-fun b!5273912 () Bool)

(assert (=> b!5273912 (= e!3279761 (set.union call!375038 call!375042))))

(declare-fun bm!375034 () Bool)

(declare-fun call!375041 () List!60982)

(declare-fun c!913693 () Bool)

(assert (=> bm!375034 (= call!375042 (derivationStepZipperDown!342 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))) (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041)) (h!67305 s!2326)))))

(declare-fun bm!375035 () Bool)

(declare-fun call!375039 () (Set Context!8556))

(assert (=> bm!375035 (= call!375039 call!375040)))

(declare-fun bm!375036 () Bool)

(assert (=> bm!375036 (= call!375041 call!375037)))

(declare-fun b!5273913 () Bool)

(declare-fun e!3279762 () (Set Context!8556))

(assert (=> b!5273913 (= e!3279762 (as set.empty (Set Context!8556)))))

(declare-fun d!1697193 () Bool)

(declare-fun c!913694 () Bool)

(assert (=> d!1697193 (= c!913694 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))) (= (c!913618 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326))))))

(assert (=> d!1697193 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 (h!67307 zl!343))) lt!2157008 (h!67305 s!2326)) e!3279759)))

(declare-fun b!5273914 () Bool)

(declare-fun c!913691 () Bool)

(assert (=> b!5273914 (= c!913691 (is-Star!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun e!3279758 () (Set Context!8556))

(assert (=> b!5273914 (= e!3279758 e!3279762)))

(declare-fun b!5273915 () Bool)

(assert (=> b!5273915 (= e!3279763 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5273916 () Bool)

(assert (=> b!5273916 (= e!3279760 e!3279758)))

(assert (=> b!5273916 (= c!913693 (is-Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5273917 () Bool)

(assert (=> b!5273917 (= e!3279759 (set.insert lt!2157008 (as set.empty (Set Context!8556))))))

(declare-fun b!5273918 () Bool)

(assert (=> b!5273918 (= e!3279760 (set.union call!375038 call!375040))))

(declare-fun b!5273919 () Bool)

(assert (=> b!5273919 (= e!3279758 call!375039)))

(declare-fun b!5273920 () Bool)

(assert (=> b!5273920 (= e!3279762 call!375039)))

(declare-fun bm!375037 () Bool)

(assert (=> bm!375037 (= call!375037 ($colon$colon!1343 (exprs!4778 lt!2157008) (ite (or c!913692 c!913693) (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67306 (exprs!4778 (h!67307 zl!343))))))))

(assert (= (and d!1697193 c!913694) b!5273917))

(assert (= (and d!1697193 (not c!913694)) b!5273910))

(assert (= (and b!5273910 c!913695) b!5273912))

(assert (= (and b!5273910 (not c!913695)) b!5273911))

(assert (= (and b!5273911 res!2237122) b!5273915))

(assert (= (and b!5273911 c!913692) b!5273918))

(assert (= (and b!5273911 (not c!913692)) b!5273916))

(assert (= (and b!5273916 c!913693) b!5273919))

(assert (= (and b!5273916 (not c!913693)) b!5273914))

(assert (= (and b!5273914 c!913691) b!5273920))

(assert (= (and b!5273914 (not c!913691)) b!5273913))

(assert (= (or b!5273919 b!5273920) bm!375036))

(assert (= (or b!5273919 b!5273920) bm!375035))

(assert (= (or b!5273918 bm!375036) bm!375037))

(assert (= (or b!5273918 bm!375035) bm!375032))

(assert (= (or b!5273912 bm!375032) bm!375034))

(assert (= (or b!5273912 b!5273918) bm!375033))

(declare-fun m!6312616 () Bool)

(assert (=> bm!375034 m!6312616))

(declare-fun m!6312618 () Bool)

(assert (=> bm!375037 m!6312618))

(assert (=> b!5273917 m!6312540))

(declare-fun m!6312620 () Bool)

(assert (=> b!5273915 m!6312620))

(declare-fun m!6312622 () Bool)

(assert (=> bm!375033 m!6312622))

(assert (=> b!5273632 d!1697193))

(declare-fun b!5273921 () Bool)

(declare-fun e!3279764 () (Set Context!8556))

(declare-fun call!375043 () (Set Context!8556))

(assert (=> b!5273921 (= e!3279764 call!375043)))

(declare-fun b!5273922 () Bool)

(declare-fun e!3279765 () Bool)

(assert (=> b!5273922 (= e!3279765 (nullable!5063 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun d!1697195 () Bool)

(declare-fun c!913697 () Bool)

(assert (=> d!1697195 (= c!913697 e!3279765)))

(declare-fun res!2237123 () Bool)

(assert (=> d!1697195 (=> (not res!2237123) (not e!3279765))))

(assert (=> d!1697195 (= res!2237123 (is-Cons!60858 (exprs!4778 (h!67307 zl!343))))))

(declare-fun e!3279766 () (Set Context!8556))

(assert (=> d!1697195 (= (derivationStepZipperUp!266 (h!67307 zl!343) (h!67305 s!2326)) e!3279766)))

(declare-fun b!5273923 () Bool)

(assert (=> b!5273923 (= e!3279766 e!3279764)))

(declare-fun c!913696 () Bool)

(assert (=> b!5273923 (= c!913696 (is-Cons!60858 (exprs!4778 (h!67307 zl!343))))))

(declare-fun b!5273924 () Bool)

(assert (=> b!5273924 (= e!3279764 (as set.empty (Set Context!8556)))))

(declare-fun b!5273925 () Bool)

(assert (=> b!5273925 (= e!3279766 (set.union call!375043 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326))))))

(declare-fun bm!375038 () Bool)

(assert (=> bm!375038 (= call!375043 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (h!67307 zl!343))) (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326)))))

(assert (= (and d!1697195 res!2237123) b!5273922))

(assert (= (and d!1697195 c!913697) b!5273925))

(assert (= (and d!1697195 (not c!913697)) b!5273923))

(assert (= (and b!5273923 c!913696) b!5273921))

(assert (= (and b!5273923 (not c!913696)) b!5273924))

(assert (= (or b!5273925 b!5273921) bm!375038))

(assert (=> b!5273922 m!6312336))

(declare-fun m!6312624 () Bool)

(assert (=> b!5273925 m!6312624))

(declare-fun m!6312626 () Bool)

(assert (=> bm!375038 m!6312626))

(assert (=> b!5273632 d!1697195))

(declare-fun bs!1221854 () Bool)

(declare-fun d!1697197 () Bool)

(assert (= bs!1221854 (and d!1697197 d!1697147)))

(declare-fun lambda!266140 () Int)

(assert (=> bs!1221854 (= lambda!266140 lambda!266130)))

(declare-fun bs!1221855 () Bool)

(assert (= bs!1221855 (and d!1697197 d!1697171)))

(assert (=> bs!1221855 (= lambda!266140 lambda!266131)))

(declare-fun bs!1221856 () Bool)

(assert (= bs!1221856 (and d!1697197 d!1697181)))

(assert (=> bs!1221856 (= lambda!266140 lambda!266137)))

(declare-fun b!5273946 () Bool)

(declare-fun e!3279780 () Bool)

(declare-fun e!3279784 () Bool)

(assert (=> b!5273946 (= e!3279780 e!3279784)))

(declare-fun c!913708 () Bool)

(assert (=> b!5273946 (= c!913708 (isEmpty!32809 (tail!10402 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5273947 () Bool)

(declare-fun e!3279782 () Regex!14894)

(assert (=> b!5273947 (= e!3279782 EmptyLang!14894)))

(declare-fun b!5273948 () Bool)

(declare-fun e!3279779 () Regex!14894)

(assert (=> b!5273948 (= e!3279779 (h!67306 (unfocusZipperList!336 zl!343)))))

(declare-fun b!5273949 () Bool)

(assert (=> b!5273949 (= e!3279782 (Union!14894 (h!67306 (unfocusZipperList!336 zl!343)) (generalisedUnion!823 (t!374179 (unfocusZipperList!336 zl!343)))))))

(declare-fun e!3279781 () Bool)

(assert (=> d!1697197 e!3279781))

(declare-fun res!2237129 () Bool)

(assert (=> d!1697197 (=> (not res!2237129) (not e!3279781))))

(declare-fun lt!2157124 () Regex!14894)

(assert (=> d!1697197 (= res!2237129 (validRegex!6630 lt!2157124))))

(assert (=> d!1697197 (= lt!2157124 e!3279779)))

(declare-fun c!913709 () Bool)

(declare-fun e!3279783 () Bool)

(assert (=> d!1697197 (= c!913709 e!3279783)))

(declare-fun res!2237128 () Bool)

(assert (=> d!1697197 (=> (not res!2237128) (not e!3279783))))

(assert (=> d!1697197 (= res!2237128 (is-Cons!60858 (unfocusZipperList!336 zl!343)))))

(assert (=> d!1697197 (forall!14302 (unfocusZipperList!336 zl!343) lambda!266140)))

(assert (=> d!1697197 (= (generalisedUnion!823 (unfocusZipperList!336 zl!343)) lt!2157124)))

(declare-fun b!5273950 () Bool)

(assert (=> b!5273950 (= e!3279781 e!3279780)))

(declare-fun c!913706 () Bool)

(assert (=> b!5273950 (= c!913706 (isEmpty!32809 (unfocusZipperList!336 zl!343)))))

(declare-fun b!5273951 () Bool)

(assert (=> b!5273951 (= e!3279779 e!3279782)))

(declare-fun c!913707 () Bool)

(assert (=> b!5273951 (= c!913707 (is-Cons!60858 (unfocusZipperList!336 zl!343)))))

(declare-fun b!5273952 () Bool)

(assert (=> b!5273952 (= e!3279783 (isEmpty!32809 (t!374179 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5273953 () Bool)

(declare-fun isEmptyLang!836 (Regex!14894) Bool)

(assert (=> b!5273953 (= e!3279780 (isEmptyLang!836 lt!2157124))))

(declare-fun b!5273954 () Bool)

(assert (=> b!5273954 (= e!3279784 (= lt!2157124 (head!11305 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5273955 () Bool)

(declare-fun isUnion!268 (Regex!14894) Bool)

(assert (=> b!5273955 (= e!3279784 (isUnion!268 lt!2157124))))

(assert (= (and d!1697197 res!2237128) b!5273952))

(assert (= (and d!1697197 c!913709) b!5273948))

(assert (= (and d!1697197 (not c!913709)) b!5273951))

(assert (= (and b!5273951 c!913707) b!5273949))

(assert (= (and b!5273951 (not c!913707)) b!5273947))

(assert (= (and d!1697197 res!2237129) b!5273950))

(assert (= (and b!5273950 c!913706) b!5273953))

(assert (= (and b!5273950 (not c!913706)) b!5273946))

(assert (= (and b!5273946 c!913708) b!5273954))

(assert (= (and b!5273946 (not c!913708)) b!5273955))

(assert (=> b!5273946 m!6312368))

(declare-fun m!6312628 () Bool)

(assert (=> b!5273946 m!6312628))

(assert (=> b!5273946 m!6312628))

(declare-fun m!6312630 () Bool)

(assert (=> b!5273946 m!6312630))

(declare-fun m!6312632 () Bool)

(assert (=> b!5273953 m!6312632))

(declare-fun m!6312634 () Bool)

(assert (=> b!5273949 m!6312634))

(assert (=> b!5273950 m!6312368))

(declare-fun m!6312636 () Bool)

(assert (=> b!5273950 m!6312636))

(declare-fun m!6312638 () Bool)

(assert (=> b!5273952 m!6312638))

(assert (=> b!5273954 m!6312368))

(declare-fun m!6312640 () Bool)

(assert (=> b!5273954 m!6312640))

(declare-fun m!6312642 () Bool)

(assert (=> d!1697197 m!6312642))

(assert (=> d!1697197 m!6312368))

(declare-fun m!6312644 () Bool)

(assert (=> d!1697197 m!6312644))

(declare-fun m!6312646 () Bool)

(assert (=> b!5273955 m!6312646))

(assert (=> b!5273631 d!1697197))

(declare-fun bs!1221857 () Bool)

(declare-fun d!1697199 () Bool)

(assert (= bs!1221857 (and d!1697199 d!1697147)))

(declare-fun lambda!266143 () Int)

(assert (=> bs!1221857 (= lambda!266143 lambda!266130)))

(declare-fun bs!1221858 () Bool)

(assert (= bs!1221858 (and d!1697199 d!1697171)))

(assert (=> bs!1221858 (= lambda!266143 lambda!266131)))

(declare-fun bs!1221859 () Bool)

(assert (= bs!1221859 (and d!1697199 d!1697181)))

(assert (=> bs!1221859 (= lambda!266143 lambda!266137)))

(declare-fun bs!1221860 () Bool)

(assert (= bs!1221860 (and d!1697199 d!1697197)))

(assert (=> bs!1221860 (= lambda!266143 lambda!266140)))

(declare-fun lt!2157127 () List!60982)

(assert (=> d!1697199 (forall!14302 lt!2157127 lambda!266143)))

(declare-fun e!3279787 () List!60982)

(assert (=> d!1697199 (= lt!2157127 e!3279787)))

(declare-fun c!913712 () Bool)

(assert (=> d!1697199 (= c!913712 (is-Cons!60859 zl!343))))

(assert (=> d!1697199 (= (unfocusZipperList!336 zl!343) lt!2157127)))

(declare-fun b!5273960 () Bool)

(assert (=> b!5273960 (= e!3279787 (Cons!60858 (generalisedConcat!563 (exprs!4778 (h!67307 zl!343))) (unfocusZipperList!336 (t!374180 zl!343))))))

(declare-fun b!5273961 () Bool)

(assert (=> b!5273961 (= e!3279787 Nil!60858)))

(assert (= (and d!1697199 c!913712) b!5273960))

(assert (= (and d!1697199 (not c!913712)) b!5273961))

(declare-fun m!6312648 () Bool)

(assert (=> d!1697199 m!6312648))

(assert (=> b!5273960 m!6312290))

(declare-fun m!6312650 () Bool)

(assert (=> b!5273960 m!6312650))

(assert (=> b!5273631 d!1697199))

(declare-fun b!5273981 () Bool)

(declare-fun e!3279802 () Bool)

(assert (=> b!5273981 (= e!3279802 (matchR!7079 (regTwo!30300 r!7292) s!2326))))

(declare-fun b!5273982 () Bool)

(declare-fun res!2237140 () Bool)

(declare-fun e!3279799 () Bool)

(assert (=> b!5273982 (=> (not res!2237140) (not e!3279799))))

(declare-fun lt!2157134 () Option!15005)

(declare-fun get!20926 (Option!15005) tuple2!64186)

(assert (=> b!5273982 (= res!2237140 (matchR!7079 (regTwo!30300 r!7292) (_2!35396 (get!20926 lt!2157134))))))

(declare-fun b!5273983 () Bool)

(declare-fun e!3279798 () Option!15005)

(assert (=> b!5273983 (= e!3279798 (Some!15004 (tuple2!64187 Nil!60857 s!2326)))))

(declare-fun b!5273984 () Bool)

(declare-fun e!3279801 () Option!15005)

(assert (=> b!5273984 (= e!3279801 None!15004)))

(declare-fun b!5273985 () Bool)

(declare-fun ++!13273 (List!60981 List!60981) List!60981)

(assert (=> b!5273985 (= e!3279799 (= (++!13273 (_1!35396 (get!20926 lt!2157134)) (_2!35396 (get!20926 lt!2157134))) s!2326))))

(declare-fun b!5273986 () Bool)

(declare-fun res!2237143 () Bool)

(assert (=> b!5273986 (=> (not res!2237143) (not e!3279799))))

(assert (=> b!5273986 (= res!2237143 (matchR!7079 (regOne!30300 r!7292) (_1!35396 (get!20926 lt!2157134))))))

(declare-fun b!5273980 () Bool)

(declare-fun e!3279800 () Bool)

(assert (=> b!5273980 (= e!3279800 (not (isDefined!11708 lt!2157134)))))

(declare-fun d!1697201 () Bool)

(assert (=> d!1697201 e!3279800))

(declare-fun res!2237144 () Bool)

(assert (=> d!1697201 (=> res!2237144 e!3279800)))

(assert (=> d!1697201 (= res!2237144 e!3279799)))

(declare-fun res!2237141 () Bool)

(assert (=> d!1697201 (=> (not res!2237141) (not e!3279799))))

(assert (=> d!1697201 (= res!2237141 (isDefined!11708 lt!2157134))))

(assert (=> d!1697201 (= lt!2157134 e!3279798)))

(declare-fun c!913717 () Bool)

(assert (=> d!1697201 (= c!913717 e!3279802)))

(declare-fun res!2237142 () Bool)

(assert (=> d!1697201 (=> (not res!2237142) (not e!3279802))))

(assert (=> d!1697201 (= res!2237142 (matchR!7079 (regOne!30300 r!7292) Nil!60857))))

(assert (=> d!1697201 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697201 (= (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326) lt!2157134)))

(declare-fun b!5273987 () Bool)

(assert (=> b!5273987 (= e!3279798 e!3279801)))

(declare-fun c!913718 () Bool)

(assert (=> b!5273987 (= c!913718 (is-Nil!60857 s!2326))))

(declare-fun b!5273988 () Bool)

(declare-fun lt!2157135 () Unit!153094)

(declare-fun lt!2157136 () Unit!153094)

(assert (=> b!5273988 (= lt!2157135 lt!2157136)))

(assert (=> b!5273988 (= (++!13273 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1688 (List!60981 C!30058 List!60981 List!60981) Unit!153094)

(assert (=> b!5273988 (= lt!2157136 (lemmaMoveElementToOtherListKeepsConcatEq!1688 Nil!60857 (h!67305 s!2326) (t!374178 s!2326) s!2326))))

(assert (=> b!5273988 (= e!3279801 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326) s!2326))))

(assert (= (and d!1697201 res!2237142) b!5273981))

(assert (= (and d!1697201 c!913717) b!5273983))

(assert (= (and d!1697201 (not c!913717)) b!5273987))

(assert (= (and b!5273987 c!913718) b!5273984))

(assert (= (and b!5273987 (not c!913718)) b!5273988))

(assert (= (and d!1697201 res!2237141) b!5273986))

(assert (= (and b!5273986 res!2237143) b!5273982))

(assert (= (and b!5273982 res!2237140) b!5273985))

(assert (= (and d!1697201 (not res!2237144)) b!5273980))

(declare-fun m!6312652 () Bool)

(assert (=> b!5273980 m!6312652))

(declare-fun m!6312654 () Bool)

(assert (=> b!5273981 m!6312654))

(declare-fun m!6312656 () Bool)

(assert (=> b!5273988 m!6312656))

(assert (=> b!5273988 m!6312656))

(declare-fun m!6312658 () Bool)

(assert (=> b!5273988 m!6312658))

(declare-fun m!6312660 () Bool)

(assert (=> b!5273988 m!6312660))

(assert (=> b!5273988 m!6312656))

(declare-fun m!6312662 () Bool)

(assert (=> b!5273988 m!6312662))

(declare-fun m!6312664 () Bool)

(assert (=> b!5273985 m!6312664))

(declare-fun m!6312666 () Bool)

(assert (=> b!5273985 m!6312666))

(assert (=> b!5273982 m!6312664))

(declare-fun m!6312668 () Bool)

(assert (=> b!5273982 m!6312668))

(assert (=> d!1697201 m!6312652))

(declare-fun m!6312670 () Bool)

(assert (=> d!1697201 m!6312670))

(declare-fun m!6312672 () Bool)

(assert (=> d!1697201 m!6312672))

(assert (=> b!5273986 m!6312664))

(declare-fun m!6312674 () Bool)

(assert (=> b!5273986 m!6312674))

(assert (=> b!5273610 d!1697201))

(declare-fun d!1697203 () Bool)

(declare-fun choose!39350 (Int) Bool)

(assert (=> d!1697203 (= (Exists!2075 lambda!266111) (choose!39350 lambda!266111))))

(declare-fun bs!1221861 () Bool)

(assert (= bs!1221861 d!1697203))

(declare-fun m!6312676 () Bool)

(assert (=> bs!1221861 m!6312676))

(assert (=> b!5273610 d!1697203))

(declare-fun d!1697205 () Bool)

(assert (=> d!1697205 (= (Exists!2075 lambda!266110) (choose!39350 lambda!266110))))

(declare-fun bs!1221862 () Bool)

(assert (= bs!1221862 d!1697205))

(declare-fun m!6312678 () Bool)

(assert (=> bs!1221862 m!6312678))

(assert (=> b!5273610 d!1697205))

(declare-fun bs!1221863 () Bool)

(declare-fun d!1697207 () Bool)

(assert (= bs!1221863 (and d!1697207 b!5273610)))

(declare-fun lambda!266146 () Int)

(assert (=> bs!1221863 (= lambda!266146 lambda!266110)))

(assert (=> bs!1221863 (not (= lambda!266146 lambda!266111))))

(assert (=> d!1697207 true))

(assert (=> d!1697207 true))

(assert (=> d!1697207 true))

(assert (=> d!1697207 (= (isDefined!11708 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326)) (Exists!2075 lambda!266146))))

(declare-fun lt!2157139 () Unit!153094)

(declare-fun choose!39351 (Regex!14894 Regex!14894 List!60981) Unit!153094)

(assert (=> d!1697207 (= lt!2157139 (choose!39351 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326))))

(assert (=> d!1697207 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697207 (= (lemmaFindConcatSeparationEquivalentToExists!1183 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326) lt!2157139)))

(declare-fun bs!1221864 () Bool)

(assert (= bs!1221864 d!1697207))

(declare-fun m!6312680 () Bool)

(assert (=> bs!1221864 m!6312680))

(declare-fun m!6312682 () Bool)

(assert (=> bs!1221864 m!6312682))

(assert (=> bs!1221864 m!6312354))

(assert (=> bs!1221864 m!6312356))

(assert (=> bs!1221864 m!6312354))

(assert (=> bs!1221864 m!6312672))

(assert (=> b!5273610 d!1697207))

(declare-fun bs!1221865 () Bool)

(declare-fun d!1697209 () Bool)

(assert (= bs!1221865 (and d!1697209 b!5273610)))

(declare-fun lambda!266151 () Int)

(assert (=> bs!1221865 (= lambda!266151 lambda!266110)))

(assert (=> bs!1221865 (not (= lambda!266151 lambda!266111))))

(declare-fun bs!1221866 () Bool)

(assert (= bs!1221866 (and d!1697209 d!1697207)))

(assert (=> bs!1221866 (= lambda!266151 lambda!266146)))

(assert (=> d!1697209 true))

(assert (=> d!1697209 true))

(assert (=> d!1697209 true))

(declare-fun lambda!266152 () Int)

(assert (=> bs!1221865 (not (= lambda!266152 lambda!266110))))

(assert (=> bs!1221865 (= lambda!266152 lambda!266111)))

(assert (=> bs!1221866 (not (= lambda!266152 lambda!266146))))

(declare-fun bs!1221867 () Bool)

(assert (= bs!1221867 d!1697209))

(assert (=> bs!1221867 (not (= lambda!266152 lambda!266151))))

(assert (=> d!1697209 true))

(assert (=> d!1697209 true))

(assert (=> d!1697209 true))

(assert (=> d!1697209 (= (Exists!2075 lambda!266151) (Exists!2075 lambda!266152))))

(declare-fun lt!2157142 () Unit!153094)

(declare-fun choose!39352 (Regex!14894 Regex!14894 List!60981) Unit!153094)

(assert (=> d!1697209 (= lt!2157142 (choose!39352 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326))))

(assert (=> d!1697209 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697209 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!729 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326) lt!2157142)))

(declare-fun m!6312684 () Bool)

(assert (=> bs!1221867 m!6312684))

(declare-fun m!6312686 () Bool)

(assert (=> bs!1221867 m!6312686))

(declare-fun m!6312688 () Bool)

(assert (=> bs!1221867 m!6312688))

(assert (=> bs!1221867 m!6312672))

(assert (=> b!5273610 d!1697209))

(declare-fun d!1697211 () Bool)

(declare-fun isEmpty!32814 (Option!15005) Bool)

(assert (=> d!1697211 (= (isDefined!11708 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326)) (not (isEmpty!32814 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326))))))

(declare-fun bs!1221868 () Bool)

(assert (= bs!1221868 d!1697211))

(assert (=> bs!1221868 m!6312354))

(declare-fun m!6312690 () Bool)

(assert (=> bs!1221868 m!6312690))

(assert (=> b!5273610 d!1697211))

(declare-fun d!1697213 () Bool)

(declare-fun c!913719 () Bool)

(assert (=> d!1697213 (= c!913719 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3279809 () Bool)

(assert (=> d!1697213 (= (matchZipper!1138 lt!2157017 (t!374178 s!2326)) e!3279809)))

(declare-fun b!5274001 () Bool)

(assert (=> b!5274001 (= e!3279809 (nullableZipper!1293 lt!2157017))))

(declare-fun b!5274002 () Bool)

(assert (=> b!5274002 (= e!3279809 (matchZipper!1138 (derivationStepZipper!1137 lt!2157017 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697213 c!913719) b!5274001))

(assert (= (and d!1697213 (not c!913719)) b!5274002))

(assert (=> d!1697213 m!6312472))

(declare-fun m!6312692 () Bool)

(assert (=> b!5274001 m!6312692))

(assert (=> b!5274002 m!6312476))

(assert (=> b!5274002 m!6312476))

(declare-fun m!6312694 () Bool)

(assert (=> b!5274002 m!6312694))

(assert (=> b!5274002 m!6312480))

(assert (=> b!5274002 m!6312694))

(assert (=> b!5274002 m!6312480))

(declare-fun m!6312696 () Bool)

(assert (=> b!5274002 m!6312696))

(assert (=> b!5273633 d!1697213))

(declare-fun bs!1221869 () Bool)

(declare-fun b!5274045 () Bool)

(assert (= bs!1221869 (and b!5274045 d!1697207)))

(declare-fun lambda!266157 () Int)

(assert (=> bs!1221869 (not (= lambda!266157 lambda!266146))))

(declare-fun bs!1221870 () Bool)

(assert (= bs!1221870 (and b!5274045 b!5273610)))

(assert (=> bs!1221870 (not (= lambda!266157 lambda!266111))))

(declare-fun bs!1221871 () Bool)

(assert (= bs!1221871 (and b!5274045 d!1697209)))

(assert (=> bs!1221871 (not (= lambda!266157 lambda!266152))))

(assert (=> bs!1221871 (not (= lambda!266157 lambda!266151))))

(assert (=> bs!1221870 (not (= lambda!266157 lambda!266110))))

(assert (=> b!5274045 true))

(assert (=> b!5274045 true))

(declare-fun bs!1221872 () Bool)

(declare-fun b!5274035 () Bool)

(assert (= bs!1221872 (and b!5274035 d!1697207)))

(declare-fun lambda!266158 () Int)

(assert (=> bs!1221872 (not (= lambda!266158 lambda!266146))))

(declare-fun bs!1221873 () Bool)

(assert (= bs!1221873 (and b!5274035 b!5273610)))

(assert (=> bs!1221873 (= lambda!266158 lambda!266111)))

(declare-fun bs!1221874 () Bool)

(assert (= bs!1221874 (and b!5274035 b!5274045)))

(assert (=> bs!1221874 (not (= lambda!266158 lambda!266157))))

(declare-fun bs!1221875 () Bool)

(assert (= bs!1221875 (and b!5274035 d!1697209)))

(assert (=> bs!1221875 (= lambda!266158 lambda!266152)))

(assert (=> bs!1221875 (not (= lambda!266158 lambda!266151))))

(assert (=> bs!1221873 (not (= lambda!266158 lambda!266110))))

(assert (=> b!5274035 true))

(assert (=> b!5274035 true))

(declare-fun e!3279829 () Bool)

(declare-fun call!375048 () Bool)

(assert (=> b!5274035 (= e!3279829 call!375048)))

(declare-fun bm!375043 () Bool)

(declare-fun call!375049 () Bool)

(assert (=> bm!375043 (= call!375049 (isEmpty!32813 s!2326))))

(declare-fun b!5274036 () Bool)

(declare-fun e!3279828 () Bool)

(declare-fun e!3279831 () Bool)

(assert (=> b!5274036 (= e!3279828 e!3279831)))

(declare-fun res!2237174 () Bool)

(assert (=> b!5274036 (= res!2237174 (matchRSpec!1997 (regOne!30301 r!7292) s!2326))))

(assert (=> b!5274036 (=> res!2237174 e!3279831)))

(declare-fun b!5274037 () Bool)

(declare-fun c!913730 () Bool)

(assert (=> b!5274037 (= c!913730 (is-Union!14894 r!7292))))

(declare-fun e!3279830 () Bool)

(assert (=> b!5274037 (= e!3279830 e!3279828)))

(declare-fun b!5274038 () Bool)

(declare-fun e!3279834 () Bool)

(declare-fun e!3279832 () Bool)

(assert (=> b!5274038 (= e!3279834 e!3279832)))

(declare-fun res!2237173 () Bool)

(assert (=> b!5274038 (= res!2237173 (not (is-EmptyLang!14894 r!7292)))))

(assert (=> b!5274038 (=> (not res!2237173) (not e!3279832))))

(declare-fun d!1697215 () Bool)

(declare-fun c!913729 () Bool)

(assert (=> d!1697215 (= c!913729 (is-EmptyExpr!14894 r!7292))))

(assert (=> d!1697215 (= (matchRSpec!1997 r!7292 s!2326) e!3279834)))

(declare-fun b!5274039 () Bool)

(declare-fun c!913728 () Bool)

(assert (=> b!5274039 (= c!913728 (is-ElementMatch!14894 r!7292))))

(assert (=> b!5274039 (= e!3279832 e!3279830)))

(declare-fun b!5274040 () Bool)

(assert (=> b!5274040 (= e!3279828 e!3279829)))

(declare-fun c!913731 () Bool)

(assert (=> b!5274040 (= c!913731 (is-Star!14894 r!7292))))

(declare-fun b!5274041 () Bool)

(declare-fun res!2237175 () Bool)

(declare-fun e!3279833 () Bool)

(assert (=> b!5274041 (=> res!2237175 e!3279833)))

(assert (=> b!5274041 (= res!2237175 call!375049)))

(assert (=> b!5274041 (= e!3279829 e!3279833)))

(declare-fun b!5274042 () Bool)

(assert (=> b!5274042 (= e!3279830 (= s!2326 (Cons!60857 (c!913618 r!7292) Nil!60857)))))

(declare-fun b!5274043 () Bool)

(assert (=> b!5274043 (= e!3279834 call!375049)))

(declare-fun bm!375044 () Bool)

(assert (=> bm!375044 (= call!375048 (Exists!2075 (ite c!913731 lambda!266157 lambda!266158)))))

(declare-fun b!5274044 () Bool)

(assert (=> b!5274044 (= e!3279831 (matchRSpec!1997 (regTwo!30301 r!7292) s!2326))))

(assert (=> b!5274045 (= e!3279833 call!375048)))

(assert (= (and d!1697215 c!913729) b!5274043))

(assert (= (and d!1697215 (not c!913729)) b!5274038))

(assert (= (and b!5274038 res!2237173) b!5274039))

(assert (= (and b!5274039 c!913728) b!5274042))

(assert (= (and b!5274039 (not c!913728)) b!5274037))

(assert (= (and b!5274037 c!913730) b!5274036))

(assert (= (and b!5274037 (not c!913730)) b!5274040))

(assert (= (and b!5274036 (not res!2237174)) b!5274044))

(assert (= (and b!5274040 c!913731) b!5274041))

(assert (= (and b!5274040 (not c!913731)) b!5274035))

(assert (= (and b!5274041 (not res!2237175)) b!5274045))

(assert (= (or b!5274045 b!5274035) bm!375044))

(assert (= (or b!5274043 b!5274041) bm!375043))

(declare-fun m!6312698 () Bool)

(assert (=> bm!375043 m!6312698))

(declare-fun m!6312700 () Bool)

(assert (=> b!5274036 m!6312700))

(declare-fun m!6312702 () Bool)

(assert (=> bm!375044 m!6312702))

(declare-fun m!6312704 () Bool)

(assert (=> b!5274044 m!6312704))

(assert (=> b!5273611 d!1697215))

(declare-fun b!5274074 () Bool)

(declare-fun e!3279851 () Bool)

(declare-fun e!3279849 () Bool)

(assert (=> b!5274074 (= e!3279851 e!3279849)))

(declare-fun res!2237195 () Bool)

(assert (=> b!5274074 (=> res!2237195 e!3279849)))

(declare-fun call!375052 () Bool)

(assert (=> b!5274074 (= res!2237195 call!375052)))

(declare-fun b!5274075 () Bool)

(declare-fun e!3279852 () Bool)

(declare-fun derivativeStep!4114 (Regex!14894 C!30058) Regex!14894)

(assert (=> b!5274075 (= e!3279852 (matchR!7079 (derivativeStep!4114 r!7292 (head!11304 s!2326)) (tail!10401 s!2326)))))

(declare-fun b!5274076 () Bool)

(assert (=> b!5274076 (= e!3279852 (nullable!5063 r!7292))))

(declare-fun b!5274077 () Bool)

(declare-fun res!2237193 () Bool)

(declare-fun e!3279854 () Bool)

(assert (=> b!5274077 (=> res!2237193 e!3279854)))

(declare-fun e!3279855 () Bool)

(assert (=> b!5274077 (= res!2237193 e!3279855)))

(declare-fun res!2237197 () Bool)

(assert (=> b!5274077 (=> (not res!2237197) (not e!3279855))))

(declare-fun lt!2157145 () Bool)

(assert (=> b!5274077 (= res!2237197 lt!2157145)))

(declare-fun b!5274078 () Bool)

(assert (=> b!5274078 (= e!3279854 e!3279851)))

(declare-fun res!2237194 () Bool)

(assert (=> b!5274078 (=> (not res!2237194) (not e!3279851))))

(assert (=> b!5274078 (= res!2237194 (not lt!2157145))))

(declare-fun b!5274079 () Bool)

(declare-fun e!3279850 () Bool)

(assert (=> b!5274079 (= e!3279850 (not lt!2157145))))

(declare-fun b!5274080 () Bool)

(declare-fun e!3279853 () Bool)

(assert (=> b!5274080 (= e!3279853 e!3279850)))

(declare-fun c!913738 () Bool)

(assert (=> b!5274080 (= c!913738 (is-EmptyLang!14894 r!7292))))

(declare-fun b!5274081 () Bool)

(assert (=> b!5274081 (= e!3279853 (= lt!2157145 call!375052))))

(declare-fun b!5274082 () Bool)

(assert (=> b!5274082 (= e!3279849 (not (= (head!11304 s!2326) (c!913618 r!7292))))))

(declare-fun b!5274083 () Bool)

(declare-fun res!2237196 () Bool)

(assert (=> b!5274083 (=> res!2237196 e!3279854)))

(assert (=> b!5274083 (= res!2237196 (not (is-ElementMatch!14894 r!7292)))))

(assert (=> b!5274083 (= e!3279850 e!3279854)))

(declare-fun b!5274084 () Bool)

(declare-fun res!2237199 () Bool)

(assert (=> b!5274084 (=> res!2237199 e!3279849)))

(assert (=> b!5274084 (= res!2237199 (not (isEmpty!32813 (tail!10401 s!2326))))))

(declare-fun b!5274085 () Bool)

(assert (=> b!5274085 (= e!3279855 (= (head!11304 s!2326) (c!913618 r!7292)))))

(declare-fun b!5274086 () Bool)

(declare-fun res!2237198 () Bool)

(assert (=> b!5274086 (=> (not res!2237198) (not e!3279855))))

(assert (=> b!5274086 (= res!2237198 (isEmpty!32813 (tail!10401 s!2326)))))

(declare-fun d!1697217 () Bool)

(assert (=> d!1697217 e!3279853))

(declare-fun c!913740 () Bool)

(assert (=> d!1697217 (= c!913740 (is-EmptyExpr!14894 r!7292))))

(assert (=> d!1697217 (= lt!2157145 e!3279852)))

(declare-fun c!913739 () Bool)

(assert (=> d!1697217 (= c!913739 (isEmpty!32813 s!2326))))

(assert (=> d!1697217 (validRegex!6630 r!7292)))

(assert (=> d!1697217 (= (matchR!7079 r!7292 s!2326) lt!2157145)))

(declare-fun bm!375047 () Bool)

(assert (=> bm!375047 (= call!375052 (isEmpty!32813 s!2326))))

(declare-fun b!5274087 () Bool)

(declare-fun res!2237192 () Bool)

(assert (=> b!5274087 (=> (not res!2237192) (not e!3279855))))

(assert (=> b!5274087 (= res!2237192 (not call!375052))))

(assert (= (and d!1697217 c!913739) b!5274076))

(assert (= (and d!1697217 (not c!913739)) b!5274075))

(assert (= (and d!1697217 c!913740) b!5274081))

(assert (= (and d!1697217 (not c!913740)) b!5274080))

(assert (= (and b!5274080 c!913738) b!5274079))

(assert (= (and b!5274080 (not c!913738)) b!5274083))

(assert (= (and b!5274083 (not res!2237196)) b!5274077))

(assert (= (and b!5274077 res!2237197) b!5274087))

(assert (= (and b!5274087 res!2237192) b!5274086))

(assert (= (and b!5274086 res!2237198) b!5274085))

(assert (= (and b!5274077 (not res!2237193)) b!5274078))

(assert (= (and b!5274078 res!2237194) b!5274074))

(assert (= (and b!5274074 (not res!2237195)) b!5274084))

(assert (= (and b!5274084 (not res!2237199)) b!5274082))

(assert (= (or b!5274081 b!5274074 b!5274087) bm!375047))

(declare-fun m!6312706 () Bool)

(assert (=> b!5274084 m!6312706))

(assert (=> b!5274084 m!6312706))

(declare-fun m!6312708 () Bool)

(assert (=> b!5274084 m!6312708))

(assert (=> b!5274086 m!6312706))

(assert (=> b!5274086 m!6312706))

(assert (=> b!5274086 m!6312708))

(declare-fun m!6312710 () Bool)

(assert (=> b!5274075 m!6312710))

(assert (=> b!5274075 m!6312710))

(declare-fun m!6312712 () Bool)

(assert (=> b!5274075 m!6312712))

(assert (=> b!5274075 m!6312706))

(assert (=> b!5274075 m!6312712))

(assert (=> b!5274075 m!6312706))

(declare-fun m!6312714 () Bool)

(assert (=> b!5274075 m!6312714))

(assert (=> bm!375047 m!6312698))

(declare-fun m!6312716 () Bool)

(assert (=> b!5274076 m!6312716))

(assert (=> b!5274085 m!6312710))

(assert (=> b!5274082 m!6312710))

(assert (=> d!1697217 m!6312698))

(assert (=> d!1697217 m!6312374))

(assert (=> b!5273611 d!1697217))

(declare-fun d!1697219 () Bool)

(assert (=> d!1697219 (= (matchR!7079 r!7292 s!2326) (matchRSpec!1997 r!7292 s!2326))))

(declare-fun lt!2157148 () Unit!153094)

(declare-fun choose!39353 (Regex!14894 List!60981) Unit!153094)

(assert (=> d!1697219 (= lt!2157148 (choose!39353 r!7292 s!2326))))

(assert (=> d!1697219 (validRegex!6630 r!7292)))

(assert (=> d!1697219 (= (mainMatchTheorem!1997 r!7292 s!2326) lt!2157148)))

(declare-fun bs!1221876 () Bool)

(assert (= bs!1221876 d!1697219))

(assert (=> bs!1221876 m!6312344))

(assert (=> bs!1221876 m!6312342))

(declare-fun m!6312718 () Bool)

(assert (=> bs!1221876 m!6312718))

(assert (=> bs!1221876 m!6312374))

(assert (=> b!5273611 d!1697219))

(declare-fun d!1697221 () Bool)

(assert (=> d!1697221 (= (nullable!5063 (regOne!30300 (regOne!30300 r!7292))) (nullableFct!1445 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun bs!1221877 () Bool)

(assert (= bs!1221877 d!1697221))

(declare-fun m!6312720 () Bool)

(assert (=> bs!1221877 m!6312720))

(assert (=> b!5273613 d!1697221))

(assert (=> b!5273624 d!1697135))

(declare-fun d!1697223 () Bool)

(declare-fun e!3279858 () Bool)

(assert (=> d!1697223 e!3279858))

(declare-fun res!2237202 () Bool)

(assert (=> d!1697223 (=> (not res!2237202) (not e!3279858))))

(declare-fun lt!2157151 () List!60983)

(declare-fun noDuplicate!1248 (List!60983) Bool)

(assert (=> d!1697223 (= res!2237202 (noDuplicate!1248 lt!2157151))))

(declare-fun choose!39354 ((Set Context!8556)) List!60983)

(assert (=> d!1697223 (= lt!2157151 (choose!39354 z!1189))))

(assert (=> d!1697223 (= (toList!8678 z!1189) lt!2157151)))

(declare-fun b!5274090 () Bool)

(declare-fun content!10828 (List!60983) (Set Context!8556))

(assert (=> b!5274090 (= e!3279858 (= (content!10828 lt!2157151) z!1189))))

(assert (= (and d!1697223 res!2237202) b!5274090))

(declare-fun m!6312722 () Bool)

(assert (=> d!1697223 m!6312722))

(declare-fun m!6312724 () Bool)

(assert (=> d!1697223 m!6312724))

(declare-fun m!6312726 () Bool)

(assert (=> b!5274090 m!6312726))

(assert (=> b!5273634 d!1697223))

(declare-fun b!5274095 () Bool)

(declare-fun e!3279861 () Bool)

(declare-fun tp!1473850 () Bool)

(declare-fun tp!1473851 () Bool)

(assert (=> b!5274095 (= e!3279861 (and tp!1473850 tp!1473851))))

(assert (=> b!5273636 (= tp!1473807 e!3279861)))

(assert (= (and b!5273636 (is-Cons!60858 (exprs!4778 (h!67307 zl!343)))) b!5274095))

(declare-fun b!5274103 () Bool)

(declare-fun e!3279867 () Bool)

(declare-fun tp!1473856 () Bool)

(assert (=> b!5274103 (= e!3279867 tp!1473856)))

(declare-fun tp!1473857 () Bool)

(declare-fun b!5274102 () Bool)

(declare-fun e!3279866 () Bool)

(assert (=> b!5274102 (= e!3279866 (and (inv!80483 (h!67307 (t!374180 zl!343))) e!3279867 tp!1473857))))

(assert (=> b!5273620 (= tp!1473809 e!3279866)))

(assert (= b!5274102 b!5274103))

(assert (= (and b!5273620 (is-Cons!60859 (t!374180 zl!343))) b!5274102))

(declare-fun m!6312728 () Bool)

(assert (=> b!5274102 m!6312728))

(declare-fun condSetEmpty!33776 () Bool)

(assert (=> setNonEmpty!33770 (= condSetEmpty!33776 (= setRest!33770 (as set.empty (Set Context!8556))))))

(declare-fun setRes!33776 () Bool)

(assert (=> setNonEmpty!33770 (= tp!1473810 setRes!33776)))

(declare-fun setIsEmpty!33776 () Bool)

(assert (=> setIsEmpty!33776 setRes!33776))

(declare-fun e!3279870 () Bool)

(declare-fun setElem!33776 () Context!8556)

(declare-fun setNonEmpty!33776 () Bool)

(declare-fun tp!1473862 () Bool)

(assert (=> setNonEmpty!33776 (= setRes!33776 (and tp!1473862 (inv!80483 setElem!33776) e!3279870))))

(declare-fun setRest!33776 () (Set Context!8556))

(assert (=> setNonEmpty!33776 (= setRest!33770 (set.union (set.insert setElem!33776 (as set.empty (Set Context!8556))) setRest!33776))))

(declare-fun b!5274108 () Bool)

(declare-fun tp!1473863 () Bool)

(assert (=> b!5274108 (= e!3279870 tp!1473863)))

(assert (= (and setNonEmpty!33770 condSetEmpty!33776) setIsEmpty!33776))

(assert (= (and setNonEmpty!33770 (not condSetEmpty!33776)) setNonEmpty!33776))

(assert (= setNonEmpty!33776 b!5274108))

(declare-fun m!6312730 () Bool)

(assert (=> setNonEmpty!33776 m!6312730))

(declare-fun b!5274122 () Bool)

(declare-fun e!3279873 () Bool)

(declare-fun tp!1473875 () Bool)

(declare-fun tp!1473877 () Bool)

(assert (=> b!5274122 (= e!3279873 (and tp!1473875 tp!1473877))))

(assert (=> b!5273615 (= tp!1473814 e!3279873)))

(declare-fun b!5274119 () Bool)

(assert (=> b!5274119 (= e!3279873 tp_is_empty!39041)))

(declare-fun b!5274120 () Bool)

(declare-fun tp!1473876 () Bool)

(declare-fun tp!1473874 () Bool)

(assert (=> b!5274120 (= e!3279873 (and tp!1473876 tp!1473874))))

(declare-fun b!5274121 () Bool)

(declare-fun tp!1473878 () Bool)

(assert (=> b!5274121 (= e!3279873 tp!1473878)))

(assert (= (and b!5273615 (is-ElementMatch!14894 (reg!15223 r!7292))) b!5274119))

(assert (= (and b!5273615 (is-Concat!23739 (reg!15223 r!7292))) b!5274120))

(assert (= (and b!5273615 (is-Star!14894 (reg!15223 r!7292))) b!5274121))

(assert (= (and b!5273615 (is-Union!14894 (reg!15223 r!7292))) b!5274122))

(declare-fun b!5274127 () Bool)

(declare-fun e!3279876 () Bool)

(declare-fun tp!1473881 () Bool)

(assert (=> b!5274127 (= e!3279876 (and tp_is_empty!39041 tp!1473881))))

(assert (=> b!5273627 (= tp!1473815 e!3279876)))

(assert (= (and b!5273627 (is-Cons!60857 (t!374178 s!2326))) b!5274127))

(declare-fun b!5274131 () Bool)

(declare-fun e!3279877 () Bool)

(declare-fun tp!1473883 () Bool)

(declare-fun tp!1473885 () Bool)

(assert (=> b!5274131 (= e!3279877 (and tp!1473883 tp!1473885))))

(assert (=> b!5273638 (= tp!1473808 e!3279877)))

(declare-fun b!5274128 () Bool)

(assert (=> b!5274128 (= e!3279877 tp_is_empty!39041)))

(declare-fun b!5274129 () Bool)

(declare-fun tp!1473884 () Bool)

(declare-fun tp!1473882 () Bool)

(assert (=> b!5274129 (= e!3279877 (and tp!1473884 tp!1473882))))

(declare-fun b!5274130 () Bool)

(declare-fun tp!1473886 () Bool)

(assert (=> b!5274130 (= e!3279877 tp!1473886)))

(assert (= (and b!5273638 (is-ElementMatch!14894 (regOne!30300 r!7292))) b!5274128))

(assert (= (and b!5273638 (is-Concat!23739 (regOne!30300 r!7292))) b!5274129))

(assert (= (and b!5273638 (is-Star!14894 (regOne!30300 r!7292))) b!5274130))

(assert (= (and b!5273638 (is-Union!14894 (regOne!30300 r!7292))) b!5274131))

(declare-fun b!5274135 () Bool)

(declare-fun e!3279878 () Bool)

(declare-fun tp!1473888 () Bool)

(declare-fun tp!1473890 () Bool)

(assert (=> b!5274135 (= e!3279878 (and tp!1473888 tp!1473890))))

(assert (=> b!5273638 (= tp!1473806 e!3279878)))

(declare-fun b!5274132 () Bool)

(assert (=> b!5274132 (= e!3279878 tp_is_empty!39041)))

(declare-fun b!5274133 () Bool)

(declare-fun tp!1473889 () Bool)

(declare-fun tp!1473887 () Bool)

(assert (=> b!5274133 (= e!3279878 (and tp!1473889 tp!1473887))))

(declare-fun b!5274134 () Bool)

(declare-fun tp!1473891 () Bool)

(assert (=> b!5274134 (= e!3279878 tp!1473891)))

(assert (= (and b!5273638 (is-ElementMatch!14894 (regTwo!30300 r!7292))) b!5274132))

(assert (= (and b!5273638 (is-Concat!23739 (regTwo!30300 r!7292))) b!5274133))

(assert (= (and b!5273638 (is-Star!14894 (regTwo!30300 r!7292))) b!5274134))

(assert (= (and b!5273638 (is-Union!14894 (regTwo!30300 r!7292))) b!5274135))

(declare-fun b!5274139 () Bool)

(declare-fun e!3279879 () Bool)

(declare-fun tp!1473893 () Bool)

(declare-fun tp!1473895 () Bool)

(assert (=> b!5274139 (= e!3279879 (and tp!1473893 tp!1473895))))

(assert (=> b!5273623 (= tp!1473812 e!3279879)))

(declare-fun b!5274136 () Bool)

(assert (=> b!5274136 (= e!3279879 tp_is_empty!39041)))

(declare-fun b!5274137 () Bool)

(declare-fun tp!1473894 () Bool)

(declare-fun tp!1473892 () Bool)

(assert (=> b!5274137 (= e!3279879 (and tp!1473894 tp!1473892))))

(declare-fun b!5274138 () Bool)

(declare-fun tp!1473896 () Bool)

(assert (=> b!5274138 (= e!3279879 tp!1473896)))

(assert (= (and b!5273623 (is-ElementMatch!14894 (regOne!30301 r!7292))) b!5274136))

(assert (= (and b!5273623 (is-Concat!23739 (regOne!30301 r!7292))) b!5274137))

(assert (= (and b!5273623 (is-Star!14894 (regOne!30301 r!7292))) b!5274138))

(assert (= (and b!5273623 (is-Union!14894 (regOne!30301 r!7292))) b!5274139))

(declare-fun b!5274143 () Bool)

(declare-fun e!3279880 () Bool)

(declare-fun tp!1473898 () Bool)

(declare-fun tp!1473900 () Bool)

(assert (=> b!5274143 (= e!3279880 (and tp!1473898 tp!1473900))))

(assert (=> b!5273623 (= tp!1473813 e!3279880)))

(declare-fun b!5274140 () Bool)

(assert (=> b!5274140 (= e!3279880 tp_is_empty!39041)))

(declare-fun b!5274141 () Bool)

(declare-fun tp!1473899 () Bool)

(declare-fun tp!1473897 () Bool)

(assert (=> b!5274141 (= e!3279880 (and tp!1473899 tp!1473897))))

(declare-fun b!5274142 () Bool)

(declare-fun tp!1473901 () Bool)

(assert (=> b!5274142 (= e!3279880 tp!1473901)))

(assert (= (and b!5273623 (is-ElementMatch!14894 (regTwo!30301 r!7292))) b!5274140))

(assert (= (and b!5273623 (is-Concat!23739 (regTwo!30301 r!7292))) b!5274141))

(assert (= (and b!5273623 (is-Star!14894 (regTwo!30301 r!7292))) b!5274142))

(assert (= (and b!5273623 (is-Union!14894 (regTwo!30301 r!7292))) b!5274143))

(declare-fun b!5274144 () Bool)

(declare-fun e!3279881 () Bool)

(declare-fun tp!1473902 () Bool)

(declare-fun tp!1473903 () Bool)

(assert (=> b!5274144 (= e!3279881 (and tp!1473902 tp!1473903))))

(assert (=> b!5273618 (= tp!1473811 e!3279881)))

(assert (= (and b!5273618 (is-Cons!60858 (exprs!4778 setElem!33770))) b!5274144))

(declare-fun b_lambda!203427 () Bool)

(assert (= b_lambda!203425 (or b!5273632 b_lambda!203427)))

(declare-fun bs!1221878 () Bool)

(declare-fun d!1697225 () Bool)

(assert (= bs!1221878 (and d!1697225 b!5273632)))

(assert (=> bs!1221878 (= (dynLambda!24050 lambda!266112 (h!67307 zl!343)) (derivationStepZipperUp!266 (h!67307 zl!343) (h!67305 s!2326)))))

(assert (=> bs!1221878 m!6312328))

(assert (=> d!1697187 d!1697225))

(declare-fun b_lambda!203429 () Bool)

(assert (= b_lambda!203423 (or b!5273632 b_lambda!203429)))

(declare-fun bs!1221879 () Bool)

(declare-fun d!1697227 () Bool)

(assert (= bs!1221879 (and d!1697227 b!5273632)))

(assert (=> bs!1221879 (= (dynLambda!24050 lambda!266112 lt!2157029) (derivationStepZipperUp!266 lt!2157029 (h!67305 s!2326)))))

(assert (=> bs!1221879 m!6312322))

(assert (=> d!1697175 d!1697227))

(declare-fun b_lambda!203431 () Bool)

(assert (= b_lambda!203421 (or b!5273632 b_lambda!203431)))

(declare-fun bs!1221880 () Bool)

(declare-fun d!1697229 () Bool)

(assert (= bs!1221880 (and d!1697229 b!5273632)))

(assert (=> bs!1221880 (= (dynLambda!24050 lambda!266112 lt!2157020) (derivationStepZipperUp!266 lt!2157020 (h!67305 s!2326)))))

(assert (=> bs!1221880 m!6312312))

(assert (=> d!1697155 d!1697229))

(push 1)

(assert (not d!1697189))

(assert (not d!1697139))

(assert (not b!5273949))

(assert (not d!1697203))

(assert (not b!5273901))

(assert (not d!1697175))

(assert (not b!5273909))

(assert (not b!5274141))

(assert (not b!5273915))

(assert (not b!5273756))

(assert (not b!5274090))

(assert (not d!1697187))

(assert (not b!5274082))

(assert (not d!1697137))

(assert (not bm!375016))

(assert (not b!5274138))

(assert (not b!5273980))

(assert (not bm!375037))

(assert (not b!5274135))

(assert (not d!1697171))

(assert (not b!5273986))

(assert (not bm!375022))

(assert (not b!5274127))

(assert (not d!1697157))

(assert (not d!1697201))

(assert (not b!5273848))

(assert (not d!1697141))

(assert (not b!5273759))

(assert (not b!5274085))

(assert (not b!5273890))

(assert tp_is_empty!39041)

(assert (not d!1697211))

(assert (not b!5274130))

(assert (not b!5274131))

(assert (not d!1697199))

(assert (not b!5274143))

(assert (not d!1697197))

(assert (not b!5274002))

(assert (not d!1697145))

(assert (not b!5273955))

(assert (not bm!375028))

(assert (not b!5274084))

(assert (not b!5273892))

(assert (not b!5274122))

(assert (not b_lambda!203431))

(assert (not b!5274036))

(assert (not b!5273869))

(assert (not bs!1221878))

(assert (not b!5273764))

(assert (not bm!375030))

(assert (not b!5273809))

(assert (not d!1697135))

(assert (not b!5273757))

(assert (not b!5273894))

(assert (not bm!374996))

(assert (not d!1697221))

(assert (not bm!375025))

(assert (not d!1697151))

(assert (not b!5274142))

(assert (not b!5274139))

(assert (not b!5273837))

(assert (not b!5274133))

(assert (not d!1697143))

(assert (not bm!375001))

(assert (not d!1697181))

(assert (not b!5274121))

(assert (not b!5273904))

(assert (not setNonEmpty!33776))

(assert (not d!1697219))

(assert (not b!5273952))

(assert (not b!5274108))

(assert (not b!5273754))

(assert (not b!5273982))

(assert (not bm!375033))

(assert (not bm!375021))

(assert (not b!5273950))

(assert (not d!1697205))

(assert (not d!1697177))

(assert (not b!5273806))

(assert (not b!5273897))

(assert (not b!5274103))

(assert (not b!5273960))

(assert (not b!5273761))

(assert (not b!5274075))

(assert (not b_lambda!203429))

(assert (not b!5273906))

(assert (not b!5274129))

(assert (not d!1697223))

(assert (not d!1697207))

(assert (not b!5273898))

(assert (not b!5273803))

(assert (not d!1697191))

(assert (not b!5274120))

(assert (not d!1697209))

(assert (not b!5273893))

(assert (not bm!375015))

(assert (not b!5273985))

(assert (not bm!375047))

(assert (not b!5274137))

(assert (not bm!375038))

(assert (not d!1697173))

(assert (not bm!375043))

(assert (not bm!375044))

(assert (not bs!1221879))

(assert (not d!1697155))

(assert (not bm!375031))

(assert (not b!5274144))

(assert (not d!1697147))

(assert (not bm!375029))

(assert (not b!5274095))

(assert (not d!1697217))

(assert (not b!5273791))

(assert (not b!5274086))

(assert (not b!5273953))

(assert (not d!1697159))

(assert (not b!5273760))

(assert (not b!5273925))

(assert (not b!5273954))

(assert (not b!5274102))

(assert (not bm!374998))

(assert (not bs!1221880))

(assert (not b!5273988))

(assert (not b!5273922))

(assert (not b!5274044))

(assert (not bm!375034))

(assert (not b!5273758))

(assert (not d!1697213))

(assert (not b!5274134))

(assert (not b!5273862))

(assert (not b!5273891))

(assert (not bm!375026))

(assert (not b!5273807))

(assert (not b!5273866))

(assert (not b!5273981))

(assert (not b!5273946))

(assert (not b!5274001))

(assert (not b!5274076))

(assert (not b!5273755))

(assert (not b!5273808))

(assert (not bm!375019))

(assert (not b_lambda!203427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5274540 () Bool)

(declare-fun e!3280108 () Bool)

(declare-fun call!375111 () Bool)

(assert (=> b!5274540 (= e!3280108 call!375111)))

(declare-fun b!5274541 () Bool)

(declare-fun res!2237328 () Bool)

(declare-fun e!3280109 () Bool)

(assert (=> b!5274541 (=> res!2237328 e!3280109)))

(assert (=> b!5274541 (= res!2237328 (not (is-Concat!23739 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(declare-fun e!3280111 () Bool)

(assert (=> b!5274541 (= e!3280111 e!3280109)))

(declare-fun b!5274542 () Bool)

(declare-fun e!3280106 () Bool)

(declare-fun call!375112 () Bool)

(assert (=> b!5274542 (= e!3280106 call!375112)))

(declare-fun d!1697327 () Bool)

(declare-fun res!2237326 () Bool)

(declare-fun e!3280105 () Bool)

(assert (=> d!1697327 (=> res!2237326 e!3280105)))

(assert (=> d!1697327 (= res!2237326 (is-ElementMatch!14894 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(assert (=> d!1697327 (= (validRegex!6630 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) e!3280105)))

(declare-fun b!5274543 () Bool)

(assert (=> b!5274543 (= e!3280109 e!3280106)))

(declare-fun res!2237325 () Bool)

(assert (=> b!5274543 (=> (not res!2237325) (not e!3280106))))

(declare-fun call!375113 () Bool)

(assert (=> b!5274543 (= res!2237325 call!375113)))

(declare-fun b!5274544 () Bool)

(declare-fun e!3280110 () Bool)

(assert (=> b!5274544 (= e!3280110 call!375112)))

(declare-fun c!913852 () Bool)

(declare-fun bm!375106 () Bool)

(declare-fun c!913853 () Bool)

(assert (=> bm!375106 (= call!375111 (validRegex!6630 (ite c!913853 (reg!15223 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (ite c!913852 (regTwo!30301 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (regTwo!30300 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))))))

(declare-fun b!5274545 () Bool)

(declare-fun e!3280107 () Bool)

(assert (=> b!5274545 (= e!3280107 e!3280111)))

(assert (=> b!5274545 (= c!913852 (is-Union!14894 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun bm!375107 () Bool)

(assert (=> bm!375107 (= call!375112 call!375111)))

(declare-fun b!5274546 () Bool)

(assert (=> b!5274546 (= e!3280105 e!3280107)))

(assert (=> b!5274546 (= c!913853 (is-Star!14894 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274547 () Bool)

(declare-fun res!2237327 () Bool)

(assert (=> b!5274547 (=> (not res!2237327) (not e!3280110))))

(assert (=> b!5274547 (= res!2237327 call!375113)))

(assert (=> b!5274547 (= e!3280111 e!3280110)))

(declare-fun b!5274548 () Bool)

(assert (=> b!5274548 (= e!3280107 e!3280108)))

(declare-fun res!2237324 () Bool)

(assert (=> b!5274548 (= res!2237324 (not (nullable!5063 (reg!15223 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))))

(assert (=> b!5274548 (=> (not res!2237324) (not e!3280108))))

(declare-fun bm!375108 () Bool)

(assert (=> bm!375108 (= call!375113 (validRegex!6630 (ite c!913852 (regOne!30301 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (regOne!30300 (ite c!913640 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))))

(assert (= (and d!1697327 (not res!2237326)) b!5274546))

(assert (= (and b!5274546 c!913853) b!5274548))

(assert (= (and b!5274546 (not c!913853)) b!5274545))

(assert (= (and b!5274548 res!2237324) b!5274540))

(assert (= (and b!5274545 c!913852) b!5274547))

(assert (= (and b!5274545 (not c!913852)) b!5274541))

(assert (= (and b!5274547 res!2237327) b!5274544))

(assert (= (and b!5274541 (not res!2237328)) b!5274543))

(assert (= (and b!5274543 res!2237325) b!5274542))

(assert (= (or b!5274544 b!5274542) bm!375107))

(assert (= (or b!5274547 b!5274543) bm!375108))

(assert (= (or b!5274540 bm!375107) bm!375106))

(declare-fun m!6312992 () Bool)

(assert (=> bm!375106 m!6312992))

(declare-fun m!6312994 () Bool)

(assert (=> b!5274548 m!6312994))

(declare-fun m!6312996 () Bool)

(assert (=> bm!375108 m!6312996))

(assert (=> bm!374998 d!1697327))

(declare-fun b!5274549 () Bool)

(declare-fun e!3280113 () (Set Context!8556))

(declare-fun e!3280115 () (Set Context!8556))

(assert (=> b!5274549 (= e!3280113 e!3280115)))

(declare-fun c!913858 () Bool)

(assert (=> b!5274549 (= c!913858 (is-Union!14894 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))))))

(declare-fun b!5274550 () Bool)

(declare-fun c!913855 () Bool)

(declare-fun e!3280117 () Bool)

(assert (=> b!5274550 (= c!913855 e!3280117)))

(declare-fun res!2237329 () Bool)

(assert (=> b!5274550 (=> (not res!2237329) (not e!3280117))))

(assert (=> b!5274550 (= res!2237329 (is-Concat!23739 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))))))

(declare-fun e!3280114 () (Set Context!8556))

(assert (=> b!5274550 (= e!3280115 e!3280114)))

(declare-fun bm!375109 () Bool)

(declare-fun call!375117 () (Set Context!8556))

(declare-fun call!375119 () (Set Context!8556))

(assert (=> bm!375109 (= call!375117 call!375119)))

(declare-fun bm!375110 () Bool)

(declare-fun call!375115 () (Set Context!8556))

(declare-fun call!375114 () List!60982)

(assert (=> bm!375110 (= call!375115 (derivationStepZipperDown!342 (ite c!913858 (regOne!30301 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (regOne!30300 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))))) (ite c!913858 (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029)) (Context!8557 call!375114)) (h!67305 s!2326)))))

(declare-fun b!5274551 () Bool)

(assert (=> b!5274551 (= e!3280115 (set.union call!375115 call!375119))))

(declare-fun bm!375111 () Bool)

(declare-fun call!375118 () List!60982)

(declare-fun c!913856 () Bool)

(assert (=> bm!375111 (= call!375119 (derivationStepZipperDown!342 (ite c!913858 (regTwo!30301 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (ite c!913855 (regTwo!30300 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (ite c!913856 (regOne!30300 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (reg!15223 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))))))) (ite (or c!913858 c!913855) (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029)) (Context!8557 call!375118)) (h!67305 s!2326)))))

(declare-fun bm!375112 () Bool)

(declare-fun call!375116 () (Set Context!8556))

(assert (=> bm!375112 (= call!375116 call!375117)))

(declare-fun bm!375113 () Bool)

(assert (=> bm!375113 (= call!375118 call!375114)))

(declare-fun b!5274552 () Bool)

(declare-fun e!3280116 () (Set Context!8556))

(assert (=> b!5274552 (= e!3280116 (as set.empty (Set Context!8556)))))

(declare-fun c!913857 () Bool)

(declare-fun d!1697329 () Bool)

(assert (=> d!1697329 (= c!913857 (and (is-ElementMatch!14894 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (= (c!913618 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (h!67305 s!2326))))))

(assert (=> d!1697329 (= (derivationStepZipperDown!342 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))) (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029)) (h!67305 s!2326)) e!3280113)))

(declare-fun c!913854 () Bool)

(declare-fun b!5274553 () Bool)

(assert (=> b!5274553 (= c!913854 (is-Star!14894 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))))))

(declare-fun e!3280112 () (Set Context!8556))

(assert (=> b!5274553 (= e!3280112 e!3280116)))

(declare-fun b!5274554 () Bool)

(assert (=> b!5274554 (= e!3280117 (nullable!5063 (regOne!30300 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))))))))

(declare-fun b!5274555 () Bool)

(assert (=> b!5274555 (= e!3280114 e!3280112)))

(assert (=> b!5274555 (= c!913856 (is-Concat!23739 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))))))

(declare-fun b!5274556 () Bool)

(assert (=> b!5274556 (= e!3280113 (set.insert (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029)) (as set.empty (Set Context!8556))))))

(declare-fun b!5274557 () Bool)

(assert (=> b!5274557 (= e!3280114 (set.union call!375115 call!375117))))

(declare-fun b!5274558 () Bool)

(assert (=> b!5274558 (= e!3280112 call!375116)))

(declare-fun b!5274559 () Bool)

(assert (=> b!5274559 (= e!3280116 call!375116)))

(declare-fun bm!375114 () Bool)

(assert (=> bm!375114 (= call!375114 ($colon$colon!1343 (exprs!4778 (ite (or c!913668 c!913665) lt!2157020 (Context!8557 call!375029))) (ite (or c!913855 c!913856) (regTwo!30300 (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292))))))) (ite c!913668 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (ite c!913665 (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (ite c!913666 (regOne!30300 (regOne!30300 (regOne!30300 r!7292))) (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))))))))

(assert (= (and d!1697329 c!913857) b!5274556))

(assert (= (and d!1697329 (not c!913857)) b!5274549))

(assert (= (and b!5274549 c!913858) b!5274551))

(assert (= (and b!5274549 (not c!913858)) b!5274550))

(assert (= (and b!5274550 res!2237329) b!5274554))

(assert (= (and b!5274550 c!913855) b!5274557))

(assert (= (and b!5274550 (not c!913855)) b!5274555))

(assert (= (and b!5274555 c!913856) b!5274558))

(assert (= (and b!5274555 (not c!913856)) b!5274553))

(assert (= (and b!5274553 c!913854) b!5274559))

(assert (= (and b!5274553 (not c!913854)) b!5274552))

(assert (= (or b!5274558 b!5274559) bm!375113))

(assert (= (or b!5274558 b!5274559) bm!375112))

(assert (= (or b!5274557 bm!375113) bm!375114))

(assert (= (or b!5274557 bm!375112) bm!375109))

(assert (= (or b!5274551 bm!375109) bm!375111))

(assert (= (or b!5274551 b!5274557) bm!375110))

(declare-fun m!6312998 () Bool)

(assert (=> bm!375111 m!6312998))

(declare-fun m!6313000 () Bool)

(assert (=> bm!375114 m!6313000))

(declare-fun m!6313002 () Bool)

(assert (=> b!5274556 m!6313002))

(declare-fun m!6313004 () Bool)

(assert (=> b!5274554 m!6313004))

(declare-fun m!6313006 () Bool)

(assert (=> bm!375110 m!6313006))

(assert (=> bm!375022 d!1697329))

(declare-fun d!1697331 () Bool)

(assert (=> d!1697331 (= (nullable!5063 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))) (nullableFct!1445 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))))

(declare-fun bs!1221923 () Bool)

(assert (= bs!1221923 d!1697331))

(declare-fun m!6313008 () Bool)

(assert (=> bs!1221923 m!6313008))

(assert (=> b!5273837 d!1697331))

(declare-fun d!1697333 () Bool)

(assert (=> d!1697333 (= (head!11304 s!2326) (h!67305 s!2326))))

(assert (=> b!5274082 d!1697333))

(declare-fun bs!1221924 () Bool)

(declare-fun d!1697335 () Bool)

(assert (= bs!1221924 (and d!1697335 d!1697199)))

(declare-fun lambda!266190 () Int)

(assert (=> bs!1221924 (= lambda!266190 lambda!266143)))

(declare-fun bs!1221925 () Bool)

(assert (= bs!1221925 (and d!1697335 d!1697171)))

(assert (=> bs!1221925 (= lambda!266190 lambda!266131)))

(declare-fun bs!1221926 () Bool)

(assert (= bs!1221926 (and d!1697335 d!1697197)))

(assert (=> bs!1221926 (= lambda!266190 lambda!266140)))

(declare-fun bs!1221927 () Bool)

(assert (= bs!1221927 (and d!1697335 d!1697147)))

(assert (=> bs!1221927 (= lambda!266190 lambda!266130)))

(declare-fun bs!1221928 () Bool)

(assert (= bs!1221928 (and d!1697335 d!1697181)))

(assert (=> bs!1221928 (= lambda!266190 lambda!266137)))

(declare-fun b!5274560 () Bool)

(declare-fun e!3280119 () Bool)

(declare-fun e!3280123 () Bool)

(assert (=> b!5274560 (= e!3280119 e!3280123)))

(declare-fun c!913861 () Bool)

(assert (=> b!5274560 (= c!913861 (isEmpty!32809 (tail!10402 (t!374179 (unfocusZipperList!336 zl!343)))))))

(declare-fun b!5274561 () Bool)

(declare-fun e!3280121 () Regex!14894)

(assert (=> b!5274561 (= e!3280121 EmptyLang!14894)))

(declare-fun b!5274562 () Bool)

(declare-fun e!3280118 () Regex!14894)

(assert (=> b!5274562 (= e!3280118 (h!67306 (t!374179 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5274563 () Bool)

(assert (=> b!5274563 (= e!3280121 (Union!14894 (h!67306 (t!374179 (unfocusZipperList!336 zl!343))) (generalisedUnion!823 (t!374179 (t!374179 (unfocusZipperList!336 zl!343))))))))

(declare-fun e!3280120 () Bool)

(assert (=> d!1697335 e!3280120))

(declare-fun res!2237331 () Bool)

(assert (=> d!1697335 (=> (not res!2237331) (not e!3280120))))

(declare-fun lt!2157197 () Regex!14894)

(assert (=> d!1697335 (= res!2237331 (validRegex!6630 lt!2157197))))

(assert (=> d!1697335 (= lt!2157197 e!3280118)))

(declare-fun c!913862 () Bool)

(declare-fun e!3280122 () Bool)

(assert (=> d!1697335 (= c!913862 e!3280122)))

(declare-fun res!2237330 () Bool)

(assert (=> d!1697335 (=> (not res!2237330) (not e!3280122))))

(assert (=> d!1697335 (= res!2237330 (is-Cons!60858 (t!374179 (unfocusZipperList!336 zl!343))))))

(assert (=> d!1697335 (forall!14302 (t!374179 (unfocusZipperList!336 zl!343)) lambda!266190)))

(assert (=> d!1697335 (= (generalisedUnion!823 (t!374179 (unfocusZipperList!336 zl!343))) lt!2157197)))

(declare-fun b!5274564 () Bool)

(assert (=> b!5274564 (= e!3280120 e!3280119)))

(declare-fun c!913859 () Bool)

(assert (=> b!5274564 (= c!913859 (isEmpty!32809 (t!374179 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5274565 () Bool)

(assert (=> b!5274565 (= e!3280118 e!3280121)))

(declare-fun c!913860 () Bool)

(assert (=> b!5274565 (= c!913860 (is-Cons!60858 (t!374179 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5274566 () Bool)

(assert (=> b!5274566 (= e!3280122 (isEmpty!32809 (t!374179 (t!374179 (unfocusZipperList!336 zl!343)))))))

(declare-fun b!5274567 () Bool)

(assert (=> b!5274567 (= e!3280119 (isEmptyLang!836 lt!2157197))))

(declare-fun b!5274568 () Bool)

(assert (=> b!5274568 (= e!3280123 (= lt!2157197 (head!11305 (t!374179 (unfocusZipperList!336 zl!343)))))))

(declare-fun b!5274569 () Bool)

(assert (=> b!5274569 (= e!3280123 (isUnion!268 lt!2157197))))

(assert (= (and d!1697335 res!2237330) b!5274566))

(assert (= (and d!1697335 c!913862) b!5274562))

(assert (= (and d!1697335 (not c!913862)) b!5274565))

(assert (= (and b!5274565 c!913860) b!5274563))

(assert (= (and b!5274565 (not c!913860)) b!5274561))

(assert (= (and d!1697335 res!2237331) b!5274564))

(assert (= (and b!5274564 c!913859) b!5274567))

(assert (= (and b!5274564 (not c!913859)) b!5274560))

(assert (= (and b!5274560 c!913861) b!5274568))

(assert (= (and b!5274560 (not c!913861)) b!5274569))

(declare-fun m!6313010 () Bool)

(assert (=> b!5274560 m!6313010))

(assert (=> b!5274560 m!6313010))

(declare-fun m!6313012 () Bool)

(assert (=> b!5274560 m!6313012))

(declare-fun m!6313014 () Bool)

(assert (=> b!5274567 m!6313014))

(declare-fun m!6313016 () Bool)

(assert (=> b!5274563 m!6313016))

(assert (=> b!5274564 m!6312638))

(declare-fun m!6313018 () Bool)

(assert (=> b!5274566 m!6313018))

(declare-fun m!6313020 () Bool)

(assert (=> b!5274568 m!6313020))

(declare-fun m!6313022 () Bool)

(assert (=> d!1697335 m!6313022))

(declare-fun m!6313024 () Bool)

(assert (=> d!1697335 m!6313024))

(declare-fun m!6313026 () Bool)

(assert (=> b!5274569 m!6313026))

(assert (=> b!5273949 d!1697335))

(declare-fun d!1697337 () Bool)

(assert (=> d!1697337 (= (isEmpty!32813 s!2326) (is-Nil!60857 s!2326))))

(assert (=> d!1697217 d!1697337))

(assert (=> d!1697217 d!1697167))

(declare-fun d!1697339 () Bool)

(assert (=> d!1697339 (= (Exists!2075 (ite c!913731 lambda!266157 lambda!266158)) (choose!39350 (ite c!913731 lambda!266157 lambda!266158)))))

(declare-fun bs!1221929 () Bool)

(assert (= bs!1221929 d!1697339))

(declare-fun m!6313028 () Bool)

(assert (=> bs!1221929 m!6313028))

(assert (=> bm!375044 d!1697339))

(declare-fun d!1697341 () Bool)

(assert (=> d!1697341 (= (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))) (nullableFct!1445 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun bs!1221930 () Bool)

(assert (= bs!1221930 d!1697341))

(declare-fun m!6313030 () Bool)

(assert (=> bs!1221930 m!6313030))

(assert (=> b!5273915 d!1697341))

(declare-fun b!5274570 () Bool)

(declare-fun e!3280124 () (Set Context!8556))

(declare-fun call!375120 () (Set Context!8556))

(assert (=> b!5274570 (= e!3280124 call!375120)))

(declare-fun b!5274571 () Bool)

(declare-fun e!3280125 () Bool)

(assert (=> b!5274571 (= e!3280125 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008)))))))))

(declare-fun d!1697343 () Bool)

(declare-fun c!913864 () Bool)

(assert (=> d!1697343 (= c!913864 e!3280125)))

(declare-fun res!2237332 () Bool)

(assert (=> d!1697343 (=> (not res!2237332) (not e!3280125))))

(assert (=> d!1697343 (= res!2237332 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008))))))))

(declare-fun e!3280126 () (Set Context!8556))

(assert (=> d!1697343 (= (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (h!67305 s!2326)) e!3280126)))

(declare-fun b!5274572 () Bool)

(assert (=> b!5274572 (= e!3280126 e!3280124)))

(declare-fun c!913863 () Bool)

(assert (=> b!5274572 (= c!913863 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008))))))))

(declare-fun b!5274573 () Bool)

(assert (=> b!5274573 (= e!3280124 (as set.empty (Set Context!8556)))))

(declare-fun b!5274574 () Bool)

(assert (=> b!5274574 (= e!3280126 (set.union call!375120 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008)))))) (h!67305 s!2326))))))

(declare-fun bm!375115 () Bool)

(assert (=> bm!375115 (= call!375120 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008)))))) (h!67305 s!2326)))))

(assert (= (and d!1697343 res!2237332) b!5274571))

(assert (= (and d!1697343 c!913864) b!5274574))

(assert (= (and d!1697343 (not c!913864)) b!5274572))

(assert (= (and b!5274572 c!913863) b!5274570))

(assert (= (and b!5274572 (not c!913863)) b!5274573))

(assert (= (or b!5274574 b!5274570) bm!375115))

(declare-fun m!6313032 () Bool)

(assert (=> b!5274571 m!6313032))

(declare-fun m!6313034 () Bool)

(assert (=> b!5274574 m!6313034))

(declare-fun m!6313036 () Bool)

(assert (=> bm!375115 m!6313036))

(assert (=> b!5273909 d!1697343))

(declare-fun b!5274589 () Bool)

(declare-fun e!3280139 () Bool)

(declare-fun e!3280141 () Bool)

(assert (=> b!5274589 (= e!3280139 e!3280141)))

(declare-fun res!2237345 () Bool)

(declare-fun call!375126 () Bool)

(assert (=> b!5274589 (= res!2237345 call!375126)))

(assert (=> b!5274589 (=> (not res!2237345) (not e!3280141))))

(declare-fun b!5274590 () Bool)

(declare-fun e!3280143 () Bool)

(declare-fun e!3280140 () Bool)

(assert (=> b!5274590 (= e!3280143 e!3280140)))

(declare-fun res!2237347 () Bool)

(assert (=> b!5274590 (=> res!2237347 e!3280140)))

(assert (=> b!5274590 (= res!2237347 (is-Star!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun bm!375120 () Bool)

(declare-fun call!375125 () Bool)

(declare-fun c!913867 () Bool)

(assert (=> bm!375120 (= call!375125 (nullable!5063 (ite c!913867 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274591 () Bool)

(declare-fun e!3280142 () Bool)

(assert (=> b!5274591 (= e!3280142 call!375125)))

(declare-fun b!5274592 () Bool)

(declare-fun e!3280144 () Bool)

(assert (=> b!5274592 (= e!3280144 e!3280143)))

(declare-fun res!2237343 () Bool)

(assert (=> b!5274592 (=> (not res!2237343) (not e!3280143))))

(assert (=> b!5274592 (= res!2237343 (and (not (is-EmptyLang!14894 (h!67306 (exprs!4778 (h!67307 zl!343))))) (not (is-ElementMatch!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274593 () Bool)

(assert (=> b!5274593 (= e!3280140 e!3280139)))

(assert (=> b!5274593 (= c!913867 (is-Union!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274594 () Bool)

(assert (=> b!5274594 (= e!3280139 e!3280142)))

(declare-fun res!2237344 () Bool)

(assert (=> b!5274594 (= res!2237344 call!375126)))

(assert (=> b!5274594 (=> res!2237344 e!3280142)))

(declare-fun d!1697345 () Bool)

(declare-fun res!2237346 () Bool)

(assert (=> d!1697345 (=> res!2237346 e!3280144)))

(assert (=> d!1697345 (= res!2237346 (is-EmptyExpr!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> d!1697345 (= (nullableFct!1445 (h!67306 (exprs!4778 (h!67307 zl!343)))) e!3280144)))

(declare-fun bm!375121 () Bool)

(assert (=> bm!375121 (= call!375126 (nullable!5063 (ite c!913867 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274595 () Bool)

(assert (=> b!5274595 (= e!3280141 call!375125)))

(assert (= (and d!1697345 (not res!2237346)) b!5274592))

(assert (= (and b!5274592 res!2237343) b!5274590))

(assert (= (and b!5274590 (not res!2237347)) b!5274593))

(assert (= (and b!5274593 c!913867) b!5274594))

(assert (= (and b!5274593 (not c!913867)) b!5274589))

(assert (= (and b!5274594 (not res!2237344)) b!5274591))

(assert (= (and b!5274589 res!2237345) b!5274595))

(assert (= (or b!5274591 b!5274595) bm!375120))

(assert (= (or b!5274594 b!5274589) bm!375121))

(declare-fun m!6313038 () Bool)

(assert (=> bm!375120 m!6313038))

(declare-fun m!6313040 () Bool)

(assert (=> bm!375121 m!6313040))

(assert (=> d!1697189 d!1697345))

(declare-fun b!5274596 () Bool)

(declare-fun e!3280145 () (Set Context!8556))

(declare-fun call!375127 () (Set Context!8556))

(assert (=> b!5274596 (= e!3280145 call!375127)))

(declare-fun b!5274597 () Bool)

(declare-fun e!3280146 () Bool)

(assert (=> b!5274597 (= e!3280146 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))))))

(declare-fun d!1697347 () Bool)

(declare-fun c!913869 () Bool)

(assert (=> d!1697347 (= c!913869 e!3280146)))

(declare-fun res!2237348 () Bool)

(assert (=> d!1697347 (=> (not res!2237348) (not e!3280146))))

(assert (=> d!1697347 (= res!2237348 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))))

(declare-fun e!3280147 () (Set Context!8556))

(assert (=> d!1697347 (= (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326)) e!3280147)))

(declare-fun b!5274598 () Bool)

(assert (=> b!5274598 (= e!3280147 e!3280145)))

(declare-fun c!913868 () Bool)

(assert (=> b!5274598 (= c!913868 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))))

(declare-fun b!5274599 () Bool)

(assert (=> b!5274599 (= e!3280145 (as set.empty (Set Context!8556)))))

(declare-fun b!5274600 () Bool)

(assert (=> b!5274600 (= e!3280147 (set.union call!375127 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))) (h!67305 s!2326))))))

(declare-fun bm!375122 () Bool)

(assert (=> bm!375122 (= call!375127 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))) (h!67305 s!2326)))))

(assert (= (and d!1697347 res!2237348) b!5274597))

(assert (= (and d!1697347 c!913869) b!5274600))

(assert (= (and d!1697347 (not c!913869)) b!5274598))

(assert (= (and b!5274598 c!913868) b!5274596))

(assert (= (and b!5274598 (not c!913868)) b!5274599))

(assert (= (or b!5274600 b!5274596) bm!375122))

(declare-fun m!6313042 () Bool)

(assert (=> b!5274597 m!6313042))

(declare-fun m!6313044 () Bool)

(assert (=> b!5274600 m!6313044))

(declare-fun m!6313046 () Bool)

(assert (=> bm!375122 m!6313046))

(assert (=> b!5273904 d!1697347))

(declare-fun d!1697349 () Bool)

(assert (=> d!1697349 (= (isEmpty!32813 (tail!10401 s!2326)) (is-Nil!60857 (tail!10401 s!2326)))))

(assert (=> b!5274086 d!1697349))

(declare-fun d!1697351 () Bool)

(assert (=> d!1697351 (= (tail!10401 s!2326) (t!374178 s!2326))))

(assert (=> b!5274086 d!1697351))

(declare-fun d!1697353 () Bool)

(assert (=> d!1697353 (= (isEmptyLang!836 lt!2157124) (is-EmptyLang!14894 lt!2157124))))

(assert (=> b!5273953 d!1697353))

(declare-fun d!1697355 () Bool)

(assert (=> d!1697355 (= (isConcat!351 lt!2157120) (is-Concat!23739 lt!2157120))))

(assert (=> b!5273892 d!1697355))

(assert (=> b!5273922 d!1697189))

(declare-fun b!5274601 () Bool)

(declare-fun e!3280151 () Bool)

(declare-fun call!375128 () Bool)

(assert (=> b!5274601 (= e!3280151 call!375128)))

(declare-fun b!5274602 () Bool)

(declare-fun res!2237353 () Bool)

(declare-fun e!3280152 () Bool)

(assert (=> b!5274602 (=> res!2237353 e!3280152)))

(assert (=> b!5274602 (= res!2237353 (not (is-Concat!23739 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292)))))))

(declare-fun e!3280154 () Bool)

(assert (=> b!5274602 (= e!3280154 e!3280152)))

(declare-fun b!5274603 () Bool)

(declare-fun e!3280149 () Bool)

(declare-fun call!375129 () Bool)

(assert (=> b!5274603 (= e!3280149 call!375129)))

(declare-fun d!1697357 () Bool)

(declare-fun res!2237351 () Bool)

(declare-fun e!3280148 () Bool)

(assert (=> d!1697357 (=> res!2237351 e!3280148)))

(assert (=> d!1697357 (= res!2237351 (is-ElementMatch!14894 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))

(assert (=> d!1697357 (= (validRegex!6630 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))) e!3280148)))

(declare-fun b!5274604 () Bool)

(assert (=> b!5274604 (= e!3280152 e!3280149)))

(declare-fun res!2237350 () Bool)

(assert (=> b!5274604 (=> (not res!2237350) (not e!3280149))))

(declare-fun call!375130 () Bool)

(assert (=> b!5274604 (= res!2237350 call!375130)))

(declare-fun b!5274605 () Bool)

(declare-fun e!3280153 () Bool)

(assert (=> b!5274605 (= e!3280153 call!375129)))

(declare-fun c!913871 () Bool)

(declare-fun c!913870 () Bool)

(declare-fun bm!375123 () Bool)

(assert (=> bm!375123 (= call!375128 (validRegex!6630 (ite c!913871 (reg!15223 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))) (ite c!913870 (regTwo!30301 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))) (regTwo!30300 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292)))))))))

(declare-fun b!5274606 () Bool)

(declare-fun e!3280150 () Bool)

(assert (=> b!5274606 (= e!3280150 e!3280154)))

(assert (=> b!5274606 (= c!913870 (is-Union!14894 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))

(declare-fun bm!375124 () Bool)

(assert (=> bm!375124 (= call!375129 call!375128)))

(declare-fun b!5274607 () Bool)

(assert (=> b!5274607 (= e!3280148 e!3280150)))

(assert (=> b!5274607 (= c!913871 (is-Star!14894 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))

(declare-fun b!5274608 () Bool)

(declare-fun res!2237352 () Bool)

(assert (=> b!5274608 (=> (not res!2237352) (not e!3280153))))

(assert (=> b!5274608 (= res!2237352 call!375130)))

(assert (=> b!5274608 (= e!3280154 e!3280153)))

(declare-fun b!5274609 () Bool)

(assert (=> b!5274609 (= e!3280150 e!3280151)))

(declare-fun res!2237349 () Bool)

(assert (=> b!5274609 (= res!2237349 (not (nullable!5063 (reg!15223 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))))

(assert (=> b!5274609 (=> (not res!2237349) (not e!3280151))))

(declare-fun bm!375125 () Bool)

(assert (=> bm!375125 (= call!375130 (validRegex!6630 (ite c!913870 (regOne!30301 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))) (regOne!30300 (ite c!913669 (regOne!30301 r!7292) (regOne!30300 r!7292))))))))

(assert (= (and d!1697357 (not res!2237351)) b!5274607))

(assert (= (and b!5274607 c!913871) b!5274609))

(assert (= (and b!5274607 (not c!913871)) b!5274606))

(assert (= (and b!5274609 res!2237349) b!5274601))

(assert (= (and b!5274606 c!913870) b!5274608))

(assert (= (and b!5274606 (not c!913870)) b!5274602))

(assert (= (and b!5274608 res!2237352) b!5274605))

(assert (= (and b!5274602 (not res!2237353)) b!5274604))

(assert (= (and b!5274604 res!2237350) b!5274603))

(assert (= (or b!5274605 b!5274603) bm!375124))

(assert (= (or b!5274608 b!5274604) bm!375125))

(assert (= (or b!5274601 bm!375124) bm!375123))

(declare-fun m!6313048 () Bool)

(assert (=> bm!375123 m!6313048))

(declare-fun m!6313050 () Bool)

(assert (=> b!5274609 m!6313050))

(declare-fun m!6313052 () Bool)

(assert (=> bm!375125 m!6313052))

(assert (=> bm!375028 d!1697357))

(declare-fun d!1697359 () Bool)

(assert (=> d!1697359 true))

(declare-fun setRes!33782 () Bool)

(assert (=> d!1697359 setRes!33782))

(declare-fun condSetEmpty!33782 () Bool)

(declare-fun res!2237356 () (Set Context!8556))

(assert (=> d!1697359 (= condSetEmpty!33782 (= res!2237356 (as set.empty (Set Context!8556))))))

(assert (=> d!1697359 (= (choose!39348 lt!2157021 lambda!266112) res!2237356)))

(declare-fun setIsEmpty!33782 () Bool)

(assert (=> setIsEmpty!33782 setRes!33782))

(declare-fun tp!1473967 () Bool)

(declare-fun e!3280157 () Bool)

(declare-fun setNonEmpty!33782 () Bool)

(declare-fun setElem!33782 () Context!8556)

(assert (=> setNonEmpty!33782 (= setRes!33782 (and tp!1473967 (inv!80483 setElem!33782) e!3280157))))

(declare-fun setRest!33782 () (Set Context!8556))

(assert (=> setNonEmpty!33782 (= res!2237356 (set.union (set.insert setElem!33782 (as set.empty (Set Context!8556))) setRest!33782))))

(declare-fun b!5274612 () Bool)

(declare-fun tp!1473966 () Bool)

(assert (=> b!5274612 (= e!3280157 tp!1473966)))

(assert (= (and d!1697359 condSetEmpty!33782) setIsEmpty!33782))

(assert (= (and d!1697359 (not condSetEmpty!33782)) setNonEmpty!33782))

(assert (= setNonEmpty!33782 b!5274612))

(declare-fun m!6313054 () Bool)

(assert (=> setNonEmpty!33782 m!6313054))

(assert (=> d!1697151 d!1697359))

(declare-fun b!5274613 () Bool)

(declare-fun e!3280161 () Bool)

(declare-fun call!375131 () Bool)

(assert (=> b!5274613 (= e!3280161 call!375131)))

(declare-fun b!5274614 () Bool)

(declare-fun res!2237361 () Bool)

(declare-fun e!3280162 () Bool)

(assert (=> b!5274614 (=> res!2237361 e!3280162)))

(assert (=> b!5274614 (= res!2237361 (not (is-Concat!23739 lt!2157112)))))

(declare-fun e!3280164 () Bool)

(assert (=> b!5274614 (= e!3280164 e!3280162)))

(declare-fun b!5274615 () Bool)

(declare-fun e!3280159 () Bool)

(declare-fun call!375132 () Bool)

(assert (=> b!5274615 (= e!3280159 call!375132)))

(declare-fun d!1697361 () Bool)

(declare-fun res!2237359 () Bool)

(declare-fun e!3280158 () Bool)

(assert (=> d!1697361 (=> res!2237359 e!3280158)))

(assert (=> d!1697361 (= res!2237359 (is-ElementMatch!14894 lt!2157112))))

(assert (=> d!1697361 (= (validRegex!6630 lt!2157112) e!3280158)))

(declare-fun b!5274616 () Bool)

(assert (=> b!5274616 (= e!3280162 e!3280159)))

(declare-fun res!2237358 () Bool)

(assert (=> b!5274616 (=> (not res!2237358) (not e!3280159))))

(declare-fun call!375133 () Bool)

(assert (=> b!5274616 (= res!2237358 call!375133)))

(declare-fun b!5274617 () Bool)

(declare-fun e!3280163 () Bool)

(assert (=> b!5274617 (= e!3280163 call!375132)))

(declare-fun c!913872 () Bool)

(declare-fun bm!375126 () Bool)

(declare-fun c!913873 () Bool)

(assert (=> bm!375126 (= call!375131 (validRegex!6630 (ite c!913873 (reg!15223 lt!2157112) (ite c!913872 (regTwo!30301 lt!2157112) (regTwo!30300 lt!2157112)))))))

(declare-fun b!5274618 () Bool)

(declare-fun e!3280160 () Bool)

(assert (=> b!5274618 (= e!3280160 e!3280164)))

(assert (=> b!5274618 (= c!913872 (is-Union!14894 lt!2157112))))

(declare-fun bm!375127 () Bool)

(assert (=> bm!375127 (= call!375132 call!375131)))

(declare-fun b!5274619 () Bool)

(assert (=> b!5274619 (= e!3280158 e!3280160)))

(assert (=> b!5274619 (= c!913873 (is-Star!14894 lt!2157112))))

(declare-fun b!5274620 () Bool)

(declare-fun res!2237360 () Bool)

(assert (=> b!5274620 (=> (not res!2237360) (not e!3280163))))

(assert (=> b!5274620 (= res!2237360 call!375133)))

(assert (=> b!5274620 (= e!3280164 e!3280163)))

(declare-fun b!5274621 () Bool)

(assert (=> b!5274621 (= e!3280160 e!3280161)))

(declare-fun res!2237357 () Bool)

(assert (=> b!5274621 (= res!2237357 (not (nullable!5063 (reg!15223 lt!2157112))))))

(assert (=> b!5274621 (=> (not res!2237357) (not e!3280161))))

(declare-fun bm!375128 () Bool)

(assert (=> bm!375128 (= call!375133 (validRegex!6630 (ite c!913872 (regOne!30301 lt!2157112) (regOne!30300 lt!2157112))))))

(assert (= (and d!1697361 (not res!2237359)) b!5274619))

(assert (= (and b!5274619 c!913873) b!5274621))

(assert (= (and b!5274619 (not c!913873)) b!5274618))

(assert (= (and b!5274621 res!2237357) b!5274613))

(assert (= (and b!5274618 c!913872) b!5274620))

(assert (= (and b!5274618 (not c!913872)) b!5274614))

(assert (= (and b!5274620 res!2237360) b!5274617))

(assert (= (and b!5274614 (not res!2237361)) b!5274616))

(assert (= (and b!5274616 res!2237358) b!5274615))

(assert (= (or b!5274617 b!5274615) bm!375127))

(assert (= (or b!5274620 b!5274616) bm!375128))

(assert (= (or b!5274613 bm!375127) bm!375126))

(declare-fun m!6313056 () Bool)

(assert (=> bm!375126 m!6313056))

(declare-fun m!6313058 () Bool)

(assert (=> b!5274621 m!6313058))

(declare-fun m!6313060 () Bool)

(assert (=> bm!375128 m!6313060))

(assert (=> d!1697145 d!1697361))

(assert (=> d!1697145 d!1697197))

(assert (=> d!1697145 d!1697199))

(declare-fun d!1697363 () Bool)

(declare-fun lambda!266193 () Int)

(declare-fun exists!1996 ((Set Context!8556) Int) Bool)

(assert (=> d!1697363 (= (nullableZipper!1293 (set.union lt!2157019 lt!2157017)) (exists!1996 (set.union lt!2157019 lt!2157017) lambda!266193))))

(declare-fun bs!1221931 () Bool)

(assert (= bs!1221931 d!1697363))

(declare-fun m!6313062 () Bool)

(assert (=> bs!1221931 m!6313062))

(assert (=> b!5273808 d!1697363))

(declare-fun b!5274622 () Bool)

(declare-fun e!3280166 () (Set Context!8556))

(declare-fun e!3280168 () (Set Context!8556))

(assert (=> b!5274622 (= e!3280166 e!3280168)))

(declare-fun c!913880 () Bool)

(assert (=> b!5274622 (= c!913880 (is-Union!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274623 () Bool)

(declare-fun c!913877 () Bool)

(declare-fun e!3280170 () Bool)

(assert (=> b!5274623 (= c!913877 e!3280170)))

(declare-fun res!2237362 () Bool)

(assert (=> b!5274623 (=> (not res!2237362) (not e!3280170))))

(assert (=> b!5274623 (= res!2237362 (is-Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun e!3280167 () (Set Context!8556))

(assert (=> b!5274623 (= e!3280168 e!3280167)))

(declare-fun bm!375129 () Bool)

(declare-fun call!375137 () (Set Context!8556))

(declare-fun call!375139 () (Set Context!8556))

(assert (=> bm!375129 (= call!375137 call!375139)))

(declare-fun bm!375130 () Bool)

(declare-fun call!375134 () List!60982)

(declare-fun call!375135 () (Set Context!8556))

(assert (=> bm!375130 (= call!375135 (derivationStepZipperDown!342 (ite c!913880 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))) (ite c!913880 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (Context!8557 call!375134)) (h!67305 s!2326)))))

(declare-fun b!5274624 () Bool)

(assert (=> b!5274624 (= e!3280168 (set.union call!375135 call!375139))))

(declare-fun c!913878 () Bool)

(declare-fun call!375138 () List!60982)

(declare-fun bm!375131 () Bool)

(assert (=> bm!375131 (= call!375139 (derivationStepZipperDown!342 (ite c!913880 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913877 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913878 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))) (ite (or c!913880 c!913877) (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (Context!8557 call!375138)) (h!67305 s!2326)))))

(declare-fun bm!375132 () Bool)

(declare-fun call!375136 () (Set Context!8556))

(assert (=> bm!375132 (= call!375136 call!375137)))

(declare-fun bm!375133 () Bool)

(assert (=> bm!375133 (= call!375138 call!375134)))

(declare-fun b!5274625 () Bool)

(declare-fun e!3280169 () (Set Context!8556))

(assert (=> b!5274625 (= e!3280169 (as set.empty (Set Context!8556)))))

(declare-fun d!1697365 () Bool)

(declare-fun c!913879 () Bool)

(assert (=> d!1697365 (= c!913879 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))) (= (c!913618 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326))))))

(assert (=> d!1697365 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 (h!67307 zl!343))) (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326)) e!3280166)))

(declare-fun b!5274626 () Bool)

(declare-fun c!913876 () Bool)

(assert (=> b!5274626 (= c!913876 (is-Star!14894 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun e!3280165 () (Set Context!8556))

(assert (=> b!5274626 (= e!3280165 e!3280169)))

(declare-fun b!5274627 () Bool)

(assert (=> b!5274627 (= e!3280170 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5274628 () Bool)

(assert (=> b!5274628 (= e!3280167 e!3280165)))

(assert (=> b!5274628 (= c!913878 (is-Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274629 () Bool)

(assert (=> b!5274629 (= e!3280166 (set.insert (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (as set.empty (Set Context!8556))))))

(declare-fun b!5274630 () Bool)

(assert (=> b!5274630 (= e!3280167 (set.union call!375135 call!375137))))

(declare-fun b!5274631 () Bool)

(assert (=> b!5274631 (= e!3280165 call!375136)))

(declare-fun b!5274632 () Bool)

(assert (=> b!5274632 (= e!3280169 call!375136)))

(declare-fun bm!375134 () Bool)

(assert (=> bm!375134 (= call!375134 ($colon$colon!1343 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343))))) (ite (or c!913877 c!913878) (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67306 (exprs!4778 (h!67307 zl!343))))))))

(assert (= (and d!1697365 c!913879) b!5274629))

(assert (= (and d!1697365 (not c!913879)) b!5274622))

(assert (= (and b!5274622 c!913880) b!5274624))

(assert (= (and b!5274622 (not c!913880)) b!5274623))

(assert (= (and b!5274623 res!2237362) b!5274627))

(assert (= (and b!5274623 c!913877) b!5274630))

(assert (= (and b!5274623 (not c!913877)) b!5274628))

(assert (= (and b!5274628 c!913878) b!5274631))

(assert (= (and b!5274628 (not c!913878)) b!5274626))

(assert (= (and b!5274626 c!913876) b!5274632))

(assert (= (and b!5274626 (not c!913876)) b!5274625))

(assert (= (or b!5274631 b!5274632) bm!375133))

(assert (= (or b!5274631 b!5274632) bm!375132))

(assert (= (or b!5274630 bm!375133) bm!375134))

(assert (= (or b!5274630 bm!375132) bm!375129))

(assert (= (or b!5274624 bm!375129) bm!375131))

(assert (= (or b!5274624 b!5274630) bm!375130))

(declare-fun m!6313064 () Bool)

(assert (=> bm!375131 m!6313064))

(declare-fun m!6313066 () Bool)

(assert (=> bm!375134 m!6313066))

(declare-fun m!6313068 () Bool)

(assert (=> b!5274629 m!6313068))

(assert (=> b!5274627 m!6312620))

(declare-fun m!6313070 () Bool)

(assert (=> bm!375130 m!6313070))

(assert (=> bm!375038 d!1697365))

(assert (=> d!1697175 d!1697173))

(declare-fun d!1697367 () Bool)

(assert (=> d!1697367 (= (flatMap!621 lt!2157027 lambda!266112) (dynLambda!24050 lambda!266112 lt!2157029))))

(assert (=> d!1697367 true))

(declare-fun _$13!1833 () Unit!153094)

(assert (=> d!1697367 (= (choose!39349 lt!2157027 lt!2157029 lambda!266112) _$13!1833)))

(declare-fun b_lambda!203445 () Bool)

(assert (=> (not b_lambda!203445) (not d!1697367)))

(declare-fun bs!1221932 () Bool)

(assert (= bs!1221932 d!1697367))

(assert (=> bs!1221932 m!6312324))

(assert (=> bs!1221932 m!6312564))

(assert (=> d!1697175 d!1697367))

(declare-fun b!5274633 () Bool)

(declare-fun e!3280173 () Bool)

(declare-fun e!3280171 () Bool)

(assert (=> b!5274633 (= e!3280173 e!3280171)))

(declare-fun res!2237366 () Bool)

(assert (=> b!5274633 (=> res!2237366 e!3280171)))

(declare-fun call!375140 () Bool)

(assert (=> b!5274633 (= res!2237366 call!375140)))

(declare-fun b!5274634 () Bool)

(declare-fun e!3280174 () Bool)

(assert (=> b!5274634 (= e!3280174 (matchR!7079 (derivativeStep!4114 (regTwo!30300 r!7292) (head!11304 (_2!35396 (get!20926 lt!2157134)))) (tail!10401 (_2!35396 (get!20926 lt!2157134)))))))

(declare-fun b!5274635 () Bool)

(assert (=> b!5274635 (= e!3280174 (nullable!5063 (regTwo!30300 r!7292)))))

(declare-fun b!5274636 () Bool)

(declare-fun res!2237364 () Bool)

(declare-fun e!3280176 () Bool)

(assert (=> b!5274636 (=> res!2237364 e!3280176)))

(declare-fun e!3280177 () Bool)

(assert (=> b!5274636 (= res!2237364 e!3280177)))

(declare-fun res!2237368 () Bool)

(assert (=> b!5274636 (=> (not res!2237368) (not e!3280177))))

(declare-fun lt!2157198 () Bool)

(assert (=> b!5274636 (= res!2237368 lt!2157198)))

(declare-fun b!5274637 () Bool)

(assert (=> b!5274637 (= e!3280176 e!3280173)))

(declare-fun res!2237365 () Bool)

(assert (=> b!5274637 (=> (not res!2237365) (not e!3280173))))

(assert (=> b!5274637 (= res!2237365 (not lt!2157198))))

(declare-fun b!5274638 () Bool)

(declare-fun e!3280172 () Bool)

(assert (=> b!5274638 (= e!3280172 (not lt!2157198))))

(declare-fun b!5274639 () Bool)

(declare-fun e!3280175 () Bool)

(assert (=> b!5274639 (= e!3280175 e!3280172)))

(declare-fun c!913881 () Bool)

(assert (=> b!5274639 (= c!913881 (is-EmptyLang!14894 (regTwo!30300 r!7292)))))

(declare-fun b!5274640 () Bool)

(assert (=> b!5274640 (= e!3280175 (= lt!2157198 call!375140))))

(declare-fun b!5274641 () Bool)

(assert (=> b!5274641 (= e!3280171 (not (= (head!11304 (_2!35396 (get!20926 lt!2157134))) (c!913618 (regTwo!30300 r!7292)))))))

(declare-fun b!5274642 () Bool)

(declare-fun res!2237367 () Bool)

(assert (=> b!5274642 (=> res!2237367 e!3280176)))

(assert (=> b!5274642 (= res!2237367 (not (is-ElementMatch!14894 (regTwo!30300 r!7292))))))

(assert (=> b!5274642 (= e!3280172 e!3280176)))

(declare-fun b!5274643 () Bool)

(declare-fun res!2237370 () Bool)

(assert (=> b!5274643 (=> res!2237370 e!3280171)))

(assert (=> b!5274643 (= res!2237370 (not (isEmpty!32813 (tail!10401 (_2!35396 (get!20926 lt!2157134))))))))

(declare-fun b!5274644 () Bool)

(assert (=> b!5274644 (= e!3280177 (= (head!11304 (_2!35396 (get!20926 lt!2157134))) (c!913618 (regTwo!30300 r!7292))))))

(declare-fun b!5274645 () Bool)

(declare-fun res!2237369 () Bool)

(assert (=> b!5274645 (=> (not res!2237369) (not e!3280177))))

(assert (=> b!5274645 (= res!2237369 (isEmpty!32813 (tail!10401 (_2!35396 (get!20926 lt!2157134)))))))

(declare-fun d!1697369 () Bool)

(assert (=> d!1697369 e!3280175))

(declare-fun c!913883 () Bool)

(assert (=> d!1697369 (= c!913883 (is-EmptyExpr!14894 (regTwo!30300 r!7292)))))

(assert (=> d!1697369 (= lt!2157198 e!3280174)))

(declare-fun c!913882 () Bool)

(assert (=> d!1697369 (= c!913882 (isEmpty!32813 (_2!35396 (get!20926 lt!2157134))))))

(assert (=> d!1697369 (validRegex!6630 (regTwo!30300 r!7292))))

(assert (=> d!1697369 (= (matchR!7079 (regTwo!30300 r!7292) (_2!35396 (get!20926 lt!2157134))) lt!2157198)))

(declare-fun bm!375135 () Bool)

(assert (=> bm!375135 (= call!375140 (isEmpty!32813 (_2!35396 (get!20926 lt!2157134))))))

(declare-fun b!5274646 () Bool)

(declare-fun res!2237363 () Bool)

(assert (=> b!5274646 (=> (not res!2237363) (not e!3280177))))

(assert (=> b!5274646 (= res!2237363 (not call!375140))))

(assert (= (and d!1697369 c!913882) b!5274635))

(assert (= (and d!1697369 (not c!913882)) b!5274634))

(assert (= (and d!1697369 c!913883) b!5274640))

(assert (= (and d!1697369 (not c!913883)) b!5274639))

(assert (= (and b!5274639 c!913881) b!5274638))

(assert (= (and b!5274639 (not c!913881)) b!5274642))

(assert (= (and b!5274642 (not res!2237367)) b!5274636))

(assert (= (and b!5274636 res!2237368) b!5274646))

(assert (= (and b!5274646 res!2237363) b!5274645))

(assert (= (and b!5274645 res!2237369) b!5274644))

(assert (= (and b!5274636 (not res!2237364)) b!5274637))

(assert (= (and b!5274637 res!2237365) b!5274633))

(assert (= (and b!5274633 (not res!2237366)) b!5274643))

(assert (= (and b!5274643 (not res!2237370)) b!5274641))

(assert (= (or b!5274640 b!5274633 b!5274646) bm!375135))

(declare-fun m!6313072 () Bool)

(assert (=> b!5274643 m!6313072))

(assert (=> b!5274643 m!6313072))

(declare-fun m!6313074 () Bool)

(assert (=> b!5274643 m!6313074))

(assert (=> b!5274645 m!6313072))

(assert (=> b!5274645 m!6313072))

(assert (=> b!5274645 m!6313074))

(declare-fun m!6313076 () Bool)

(assert (=> b!5274634 m!6313076))

(assert (=> b!5274634 m!6313076))

(declare-fun m!6313078 () Bool)

(assert (=> b!5274634 m!6313078))

(assert (=> b!5274634 m!6313072))

(assert (=> b!5274634 m!6313078))

(assert (=> b!5274634 m!6313072))

(declare-fun m!6313080 () Bool)

(assert (=> b!5274634 m!6313080))

(declare-fun m!6313082 () Bool)

(assert (=> bm!375135 m!6313082))

(declare-fun m!6313084 () Bool)

(assert (=> b!5274635 m!6313084))

(assert (=> b!5274644 m!6313076))

(assert (=> b!5274641 m!6313076))

(assert (=> d!1697369 m!6313082))

(declare-fun m!6313086 () Bool)

(assert (=> d!1697369 m!6313086))

(assert (=> b!5273982 d!1697369))

(declare-fun d!1697371 () Bool)

(assert (=> d!1697371 (= (get!20926 lt!2157134) (v!51033 lt!2157134))))

(assert (=> b!5273982 d!1697371))

(declare-fun d!1697373 () Bool)

(assert (=> d!1697373 true))

(declare-fun setRes!33783 () Bool)

(assert (=> d!1697373 setRes!33783))

(declare-fun condSetEmpty!33783 () Bool)

(declare-fun res!2237371 () (Set Context!8556))

(assert (=> d!1697373 (= condSetEmpty!33783 (= res!2237371 (as set.empty (Set Context!8556))))))

(assert (=> d!1697373 (= (choose!39348 z!1189 lambda!266112) res!2237371)))

(declare-fun setIsEmpty!33783 () Bool)

(assert (=> setIsEmpty!33783 setRes!33783))

(declare-fun tp!1473969 () Bool)

(declare-fun e!3280178 () Bool)

(declare-fun setNonEmpty!33783 () Bool)

(declare-fun setElem!33783 () Context!8556)

(assert (=> setNonEmpty!33783 (= setRes!33783 (and tp!1473969 (inv!80483 setElem!33783) e!3280178))))

(declare-fun setRest!33783 () (Set Context!8556))

(assert (=> setNonEmpty!33783 (= res!2237371 (set.union (set.insert setElem!33783 (as set.empty (Set Context!8556))) setRest!33783))))

(declare-fun b!5274647 () Bool)

(declare-fun tp!1473968 () Bool)

(assert (=> b!5274647 (= e!3280178 tp!1473968)))

(assert (= (and d!1697373 condSetEmpty!33783) setIsEmpty!33783))

(assert (= (and d!1697373 (not condSetEmpty!33783)) setNonEmpty!33783))

(assert (= setNonEmpty!33783 b!5274647))

(declare-fun m!6313088 () Bool)

(assert (=> setNonEmpty!33783 m!6313088))

(assert (=> d!1697191 d!1697373))

(assert (=> bm!375043 d!1697337))

(declare-fun d!1697375 () Bool)

(assert (=> d!1697375 (= (isEmpty!32813 (t!374178 s!2326)) (is-Nil!60857 (t!374178 s!2326)))))

(assert (=> d!1697137 d!1697375))

(declare-fun b!5274648 () Bool)

(declare-fun e!3280181 () Bool)

(declare-fun e!3280179 () Bool)

(assert (=> b!5274648 (= e!3280181 e!3280179)))

(declare-fun res!2237375 () Bool)

(assert (=> b!5274648 (=> res!2237375 e!3280179)))

(declare-fun call!375141 () Bool)

(assert (=> b!5274648 (= res!2237375 call!375141)))

(declare-fun b!5274649 () Bool)

(declare-fun e!3280182 () Bool)

(assert (=> b!5274649 (= e!3280182 (matchR!7079 (derivativeStep!4114 (regOne!30300 r!7292) (head!11304 (_1!35396 (get!20926 lt!2157134)))) (tail!10401 (_1!35396 (get!20926 lt!2157134)))))))

(declare-fun b!5274650 () Bool)

(assert (=> b!5274650 (= e!3280182 (nullable!5063 (regOne!30300 r!7292)))))

(declare-fun b!5274651 () Bool)

(declare-fun res!2237373 () Bool)

(declare-fun e!3280184 () Bool)

(assert (=> b!5274651 (=> res!2237373 e!3280184)))

(declare-fun e!3280185 () Bool)

(assert (=> b!5274651 (= res!2237373 e!3280185)))

(declare-fun res!2237377 () Bool)

(assert (=> b!5274651 (=> (not res!2237377) (not e!3280185))))

(declare-fun lt!2157199 () Bool)

(assert (=> b!5274651 (= res!2237377 lt!2157199)))

(declare-fun b!5274652 () Bool)

(assert (=> b!5274652 (= e!3280184 e!3280181)))

(declare-fun res!2237374 () Bool)

(assert (=> b!5274652 (=> (not res!2237374) (not e!3280181))))

(assert (=> b!5274652 (= res!2237374 (not lt!2157199))))

(declare-fun b!5274653 () Bool)

(declare-fun e!3280180 () Bool)

(assert (=> b!5274653 (= e!3280180 (not lt!2157199))))

(declare-fun b!5274654 () Bool)

(declare-fun e!3280183 () Bool)

(assert (=> b!5274654 (= e!3280183 e!3280180)))

(declare-fun c!913884 () Bool)

(assert (=> b!5274654 (= c!913884 (is-EmptyLang!14894 (regOne!30300 r!7292)))))

(declare-fun b!5274655 () Bool)

(assert (=> b!5274655 (= e!3280183 (= lt!2157199 call!375141))))

(declare-fun b!5274656 () Bool)

(assert (=> b!5274656 (= e!3280179 (not (= (head!11304 (_1!35396 (get!20926 lt!2157134))) (c!913618 (regOne!30300 r!7292)))))))

(declare-fun b!5274657 () Bool)

(declare-fun res!2237376 () Bool)

(assert (=> b!5274657 (=> res!2237376 e!3280184)))

(assert (=> b!5274657 (= res!2237376 (not (is-ElementMatch!14894 (regOne!30300 r!7292))))))

(assert (=> b!5274657 (= e!3280180 e!3280184)))

(declare-fun b!5274658 () Bool)

(declare-fun res!2237379 () Bool)

(assert (=> b!5274658 (=> res!2237379 e!3280179)))

(assert (=> b!5274658 (= res!2237379 (not (isEmpty!32813 (tail!10401 (_1!35396 (get!20926 lt!2157134))))))))

(declare-fun b!5274659 () Bool)

(assert (=> b!5274659 (= e!3280185 (= (head!11304 (_1!35396 (get!20926 lt!2157134))) (c!913618 (regOne!30300 r!7292))))))

(declare-fun b!5274660 () Bool)

(declare-fun res!2237378 () Bool)

(assert (=> b!5274660 (=> (not res!2237378) (not e!3280185))))

(assert (=> b!5274660 (= res!2237378 (isEmpty!32813 (tail!10401 (_1!35396 (get!20926 lt!2157134)))))))

(declare-fun d!1697377 () Bool)

(assert (=> d!1697377 e!3280183))

(declare-fun c!913886 () Bool)

(assert (=> d!1697377 (= c!913886 (is-EmptyExpr!14894 (regOne!30300 r!7292)))))

(assert (=> d!1697377 (= lt!2157199 e!3280182)))

(declare-fun c!913885 () Bool)

(assert (=> d!1697377 (= c!913885 (isEmpty!32813 (_1!35396 (get!20926 lt!2157134))))))

(assert (=> d!1697377 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697377 (= (matchR!7079 (regOne!30300 r!7292) (_1!35396 (get!20926 lt!2157134))) lt!2157199)))

(declare-fun bm!375136 () Bool)

(assert (=> bm!375136 (= call!375141 (isEmpty!32813 (_1!35396 (get!20926 lt!2157134))))))

(declare-fun b!5274661 () Bool)

(declare-fun res!2237372 () Bool)

(assert (=> b!5274661 (=> (not res!2237372) (not e!3280185))))

(assert (=> b!5274661 (= res!2237372 (not call!375141))))

(assert (= (and d!1697377 c!913885) b!5274650))

(assert (= (and d!1697377 (not c!913885)) b!5274649))

(assert (= (and d!1697377 c!913886) b!5274655))

(assert (= (and d!1697377 (not c!913886)) b!5274654))

(assert (= (and b!5274654 c!913884) b!5274653))

(assert (= (and b!5274654 (not c!913884)) b!5274657))

(assert (= (and b!5274657 (not res!2237376)) b!5274651))

(assert (= (and b!5274651 res!2237377) b!5274661))

(assert (= (and b!5274661 res!2237372) b!5274660))

(assert (= (and b!5274660 res!2237378) b!5274659))

(assert (= (and b!5274651 (not res!2237373)) b!5274652))

(assert (= (and b!5274652 res!2237374) b!5274648))

(assert (= (and b!5274648 (not res!2237375)) b!5274658))

(assert (= (and b!5274658 (not res!2237379)) b!5274656))

(assert (= (or b!5274655 b!5274648 b!5274661) bm!375136))

(declare-fun m!6313090 () Bool)

(assert (=> b!5274658 m!6313090))

(assert (=> b!5274658 m!6313090))

(declare-fun m!6313092 () Bool)

(assert (=> b!5274658 m!6313092))

(assert (=> b!5274660 m!6313090))

(assert (=> b!5274660 m!6313090))

(assert (=> b!5274660 m!6313092))

(declare-fun m!6313094 () Bool)

(assert (=> b!5274649 m!6313094))

(assert (=> b!5274649 m!6313094))

(declare-fun m!6313096 () Bool)

(assert (=> b!5274649 m!6313096))

(assert (=> b!5274649 m!6313090))

(assert (=> b!5274649 m!6313096))

(assert (=> b!5274649 m!6313090))

(declare-fun m!6313098 () Bool)

(assert (=> b!5274649 m!6313098))

(declare-fun m!6313100 () Bool)

(assert (=> bm!375136 m!6313100))

(declare-fun m!6313102 () Bool)

(assert (=> b!5274650 m!6313102))

(assert (=> b!5274659 m!6313094))

(assert (=> b!5274656 m!6313094))

(assert (=> d!1697377 m!6313100))

(assert (=> d!1697377 m!6312672))

(assert (=> b!5273986 d!1697377))

(assert (=> b!5273986 d!1697371))

(assert (=> bs!1221879 d!1697179))

(declare-fun b!5274662 () Bool)

(declare-fun e!3280187 () (Set Context!8556))

(declare-fun e!3280189 () (Set Context!8556))

(assert (=> b!5274662 (= e!3280187 e!3280189)))

(declare-fun c!913891 () Bool)

(assert (=> b!5274662 (= c!913891 (is-Union!14894 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))))))

(declare-fun b!5274663 () Bool)

(declare-fun c!913888 () Bool)

(declare-fun e!3280191 () Bool)

(assert (=> b!5274663 (= c!913888 e!3280191)))

(declare-fun res!2237380 () Bool)

(assert (=> b!5274663 (=> (not res!2237380) (not e!3280191))))

(assert (=> b!5274663 (= res!2237380 (is-Concat!23739 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))))))

(declare-fun e!3280188 () (Set Context!8556))

(assert (=> b!5274663 (= e!3280189 e!3280188)))

(declare-fun bm!375137 () Bool)

(declare-fun call!375145 () (Set Context!8556))

(declare-fun call!375147 () (Set Context!8556))

(assert (=> bm!375137 (= call!375145 call!375147)))

(declare-fun call!375143 () (Set Context!8556))

(declare-fun bm!375138 () Bool)

(declare-fun call!375142 () List!60982)

(assert (=> bm!375138 (= call!375143 (derivationStepZipperDown!342 (ite c!913891 (regOne!30301 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (regOne!30300 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))))) (ite c!913891 (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023)) (Context!8557 call!375142)) (h!67305 s!2326)))))

(declare-fun b!5274664 () Bool)

(assert (=> b!5274664 (= e!3280189 (set.union call!375143 call!375147))))

(declare-fun bm!375139 () Bool)

(declare-fun c!913889 () Bool)

(declare-fun call!375146 () List!60982)

(assert (=> bm!375139 (= call!375147 (derivationStepZipperDown!342 (ite c!913891 (regTwo!30301 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (ite c!913888 (regTwo!30300 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (ite c!913889 (regOne!30300 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (reg!15223 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))))))) (ite (or c!913891 c!913888) (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023)) (Context!8557 call!375146)) (h!67305 s!2326)))))

(declare-fun bm!375140 () Bool)

(declare-fun call!375144 () (Set Context!8556))

(assert (=> bm!375140 (= call!375144 call!375145)))

(declare-fun bm!375141 () Bool)

(assert (=> bm!375141 (= call!375146 call!375142)))

(declare-fun b!5274665 () Bool)

(declare-fun e!3280190 () (Set Context!8556))

(assert (=> b!5274665 (= e!3280190 (as set.empty (Set Context!8556)))))

(declare-fun c!913890 () Bool)

(declare-fun d!1697379 () Bool)

(assert (=> d!1697379 (= c!913890 (and (is-ElementMatch!14894 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (= (c!913618 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (h!67305 s!2326))))))

(assert (=> d!1697379 (= (derivationStepZipperDown!342 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))) (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023)) (h!67305 s!2326)) e!3280187)))

(declare-fun b!5274666 () Bool)

(declare-fun c!913887 () Bool)

(assert (=> b!5274666 (= c!913887 (is-Star!14894 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))))))

(declare-fun e!3280186 () (Set Context!8556))

(assert (=> b!5274666 (= e!3280186 e!3280190)))

(declare-fun b!5274667 () Bool)

(assert (=> b!5274667 (= e!3280191 (nullable!5063 (regOne!30300 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))))))))

(declare-fun b!5274668 () Bool)

(assert (=> b!5274668 (= e!3280188 e!3280186)))

(assert (=> b!5274668 (= c!913889 (is-Concat!23739 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))))))

(declare-fun b!5274669 () Bool)

(assert (=> b!5274669 (= e!3280187 (set.insert (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023)) (as set.empty (Set Context!8556))))))

(declare-fun b!5274670 () Bool)

(assert (=> b!5274670 (= e!3280188 (set.union call!375143 call!375145))))

(declare-fun b!5274671 () Bool)

(assert (=> b!5274671 (= e!3280186 call!375144)))

(declare-fun b!5274672 () Bool)

(assert (=> b!5274672 (= e!3280190 call!375144)))

(declare-fun bm!375142 () Bool)

(assert (=> bm!375142 (= call!375142 ($colon$colon!1343 (exprs!4778 (ite (or c!913663 c!913660) lt!2157008 (Context!8557 call!375023))) (ite (or c!913888 c!913889) (regTwo!30300 (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292))))))) (ite c!913663 (regTwo!30301 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913660 (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (ite c!913661 (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))) (reg!15223 (regTwo!30300 (regOne!30300 r!7292)))))))))))

(assert (= (and d!1697379 c!913890) b!5274669))

(assert (= (and d!1697379 (not c!913890)) b!5274662))

(assert (= (and b!5274662 c!913891) b!5274664))

(assert (= (and b!5274662 (not c!913891)) b!5274663))

(assert (= (and b!5274663 res!2237380) b!5274667))

(assert (= (and b!5274663 c!913888) b!5274670))

(assert (= (and b!5274663 (not c!913888)) b!5274668))

(assert (= (and b!5274668 c!913889) b!5274671))

(assert (= (and b!5274668 (not c!913889)) b!5274666))

(assert (= (and b!5274666 c!913887) b!5274672))

(assert (= (and b!5274666 (not c!913887)) b!5274665))

(assert (= (or b!5274671 b!5274672) bm!375141))

(assert (= (or b!5274671 b!5274672) bm!375140))

(assert (= (or b!5274670 bm!375141) bm!375142))

(assert (= (or b!5274670 bm!375140) bm!375137))

(assert (= (or b!5274664 bm!375137) bm!375139))

(assert (= (or b!5274664 b!5274670) bm!375138))

(declare-fun m!6313104 () Bool)

(assert (=> bm!375139 m!6313104))

(declare-fun m!6313106 () Bool)

(assert (=> bm!375142 m!6313106))

(declare-fun m!6313108 () Bool)

(assert (=> b!5274669 m!6313108))

(declare-fun m!6313110 () Bool)

(assert (=> b!5274667 m!6313110))

(declare-fun m!6313112 () Bool)

(assert (=> bm!375138 m!6313112))

(assert (=> bm!375016 d!1697379))

(declare-fun d!1697381 () Bool)

(assert (=> d!1697381 (= (isEmpty!32814 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326)) (not (is-Some!15004 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326))))))

(assert (=> d!1697211 d!1697381))

(declare-fun b!5274673 () Bool)

(declare-fun e!3280193 () (Set Context!8556))

(declare-fun e!3280195 () (Set Context!8556))

(assert (=> b!5274673 (= e!3280193 e!3280195)))

(declare-fun c!913896 () Bool)

(assert (=> b!5274673 (= c!913896 (is-Union!14894 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun b!5274674 () Bool)

(declare-fun c!913893 () Bool)

(declare-fun e!3280197 () Bool)

(assert (=> b!5274674 (= c!913893 e!3280197)))

(declare-fun res!2237381 () Bool)

(assert (=> b!5274674 (=> (not res!2237381) (not e!3280197))))

(assert (=> b!5274674 (= res!2237381 (is-Concat!23739 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun e!3280194 () (Set Context!8556))

(assert (=> b!5274674 (= e!3280195 e!3280194)))

(declare-fun bm!375143 () Bool)

(declare-fun call!375151 () (Set Context!8556))

(declare-fun call!375153 () (Set Context!8556))

(assert (=> bm!375143 (= call!375151 call!375153)))

(declare-fun call!375148 () List!60982)

(declare-fun call!375149 () (Set Context!8556))

(declare-fun bm!375144 () Bool)

(assert (=> bm!375144 (= call!375149 (derivationStepZipperDown!342 (ite c!913896 (regOne!30301 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (regOne!30300 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))))) (ite c!913896 (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041)) (Context!8557 call!375148)) (h!67305 s!2326)))))

(declare-fun b!5274675 () Bool)

(assert (=> b!5274675 (= e!3280195 (set.union call!375149 call!375153))))

(declare-fun c!913894 () Bool)

(declare-fun call!375152 () List!60982)

(declare-fun bm!375145 () Bool)

(assert (=> bm!375145 (= call!375153 (derivationStepZipperDown!342 (ite c!913896 (regTwo!30301 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (ite c!913893 (regTwo!30300 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (ite c!913894 (regOne!30300 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (reg!15223 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))))))) (ite (or c!913896 c!913893) (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041)) (Context!8557 call!375152)) (h!67305 s!2326)))))

(declare-fun bm!375146 () Bool)

(declare-fun call!375150 () (Set Context!8556))

(assert (=> bm!375146 (= call!375150 call!375151)))

(declare-fun bm!375147 () Bool)

(assert (=> bm!375147 (= call!375152 call!375148)))

(declare-fun b!5274676 () Bool)

(declare-fun e!3280196 () (Set Context!8556))

(assert (=> b!5274676 (= e!3280196 (as set.empty (Set Context!8556)))))

(declare-fun d!1697383 () Bool)

(declare-fun c!913895 () Bool)

(assert (=> d!1697383 (= c!913895 (and (is-ElementMatch!14894 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (= (c!913618 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326))))))

(assert (=> d!1697383 (= (derivationStepZipperDown!342 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))) (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041)) (h!67305 s!2326)) e!3280193)))

(declare-fun b!5274677 () Bool)

(declare-fun c!913892 () Bool)

(assert (=> b!5274677 (= c!913892 (is-Star!14894 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun e!3280192 () (Set Context!8556))

(assert (=> b!5274677 (= e!3280192 e!3280196)))

(declare-fun b!5274678 () Bool)

(assert (=> b!5274678 (= e!3280197 (nullable!5063 (regOne!30300 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))))))))

(declare-fun b!5274679 () Bool)

(assert (=> b!5274679 (= e!3280194 e!3280192)))

(assert (=> b!5274679 (= c!913894 (is-Concat!23739 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun b!5274680 () Bool)

(assert (=> b!5274680 (= e!3280193 (set.insert (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041)) (as set.empty (Set Context!8556))))))

(declare-fun b!5274681 () Bool)

(assert (=> b!5274681 (= e!3280194 (set.union call!375149 call!375151))))

(declare-fun b!5274682 () Bool)

(assert (=> b!5274682 (= e!3280192 call!375150)))

(declare-fun b!5274683 () Bool)

(assert (=> b!5274683 (= e!3280196 call!375150)))

(declare-fun bm!375148 () Bool)

(assert (=> bm!375148 (= call!375148 ($colon$colon!1343 (exprs!4778 (ite (or c!913695 c!913692) lt!2157008 (Context!8557 call!375041))) (ite (or c!913893 c!913894) (regTwo!30300 (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343)))))))) (ite c!913695 (regTwo!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913692 (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (ite c!913693 (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (reg!15223 (h!67306 (exprs!4778 (h!67307 zl!343))))))))))))

(assert (= (and d!1697383 c!913895) b!5274680))

(assert (= (and d!1697383 (not c!913895)) b!5274673))

(assert (= (and b!5274673 c!913896) b!5274675))

(assert (= (and b!5274673 (not c!913896)) b!5274674))

(assert (= (and b!5274674 res!2237381) b!5274678))

(assert (= (and b!5274674 c!913893) b!5274681))

(assert (= (and b!5274674 (not c!913893)) b!5274679))

(assert (= (and b!5274679 c!913894) b!5274682))

(assert (= (and b!5274679 (not c!913894)) b!5274677))

(assert (= (and b!5274677 c!913892) b!5274683))

(assert (= (and b!5274677 (not c!913892)) b!5274676))

(assert (= (or b!5274682 b!5274683) bm!375147))

(assert (= (or b!5274682 b!5274683) bm!375146))

(assert (= (or b!5274681 bm!375147) bm!375148))

(assert (= (or b!5274681 bm!375146) bm!375143))

(assert (= (or b!5274675 bm!375143) bm!375145))

(assert (= (or b!5274675 b!5274681) bm!375144))

(declare-fun m!6313114 () Bool)

(assert (=> bm!375145 m!6313114))

(declare-fun m!6313116 () Bool)

(assert (=> bm!375148 m!6313116))

(declare-fun m!6313118 () Bool)

(assert (=> b!5274680 m!6313118))

(declare-fun m!6313120 () Bool)

(assert (=> b!5274678 m!6313120))

(declare-fun m!6313122 () Bool)

(assert (=> bm!375144 m!6313122))

(assert (=> bm!375034 d!1697383))

(declare-fun d!1697385 () Bool)

(declare-fun c!913897 () Bool)

(assert (=> d!1697385 (= c!913897 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280198 () Bool)

(assert (=> d!1697385 (= (matchZipper!1138 (derivationStepZipper!1137 lt!2157019 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280198)))

(declare-fun b!5274684 () Bool)

(assert (=> b!5274684 (= e!3280198 (nullableZipper!1293 (derivationStepZipper!1137 lt!2157019 (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274685 () Bool)

(assert (=> b!5274685 (= e!3280198 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 lt!2157019 (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697385 c!913897) b!5274684))

(assert (= (and d!1697385 (not c!913897)) b!5274685))

(assert (=> d!1697385 m!6312480))

(declare-fun m!6313124 () Bool)

(assert (=> d!1697385 m!6313124))

(assert (=> b!5274684 m!6312486))

(declare-fun m!6313126 () Bool)

(assert (=> b!5274684 m!6313126))

(assert (=> b!5274685 m!6312480))

(declare-fun m!6313128 () Bool)

(assert (=> b!5274685 m!6313128))

(assert (=> b!5274685 m!6312486))

(assert (=> b!5274685 m!6313128))

(declare-fun m!6313130 () Bool)

(assert (=> b!5274685 m!6313130))

(assert (=> b!5274685 m!6312480))

(declare-fun m!6313132 () Bool)

(assert (=> b!5274685 m!6313132))

(assert (=> b!5274685 m!6313130))

(assert (=> b!5274685 m!6313132))

(declare-fun m!6313134 () Bool)

(assert (=> b!5274685 m!6313134))

(assert (=> b!5273757 d!1697385))

(declare-fun bs!1221933 () Bool)

(declare-fun d!1697387 () Bool)

(assert (= bs!1221933 (and d!1697387 b!5273632)))

(declare-fun lambda!266194 () Int)

(assert (=> bs!1221933 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266194 lambda!266112))))

(declare-fun bs!1221934 () Bool)

(assert (= bs!1221934 (and d!1697387 d!1697177)))

(assert (=> bs!1221934 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266194 lambda!266134))))

(assert (=> d!1697387 true))

(assert (=> d!1697387 (= (derivationStepZipper!1137 lt!2157019 (head!11304 (t!374178 s!2326))) (flatMap!621 lt!2157019 lambda!266194))))

(declare-fun bs!1221935 () Bool)

(assert (= bs!1221935 d!1697387))

(declare-fun m!6313136 () Bool)

(assert (=> bs!1221935 m!6313136))

(assert (=> b!5273757 d!1697387))

(declare-fun d!1697389 () Bool)

(assert (=> d!1697389 (= (head!11304 (t!374178 s!2326)) (h!67305 (t!374178 s!2326)))))

(assert (=> b!5273757 d!1697389))

(declare-fun d!1697391 () Bool)

(assert (=> d!1697391 (= (tail!10401 (t!374178 s!2326)) (t!374178 (t!374178 s!2326)))))

(assert (=> b!5273757 d!1697391))

(declare-fun d!1697393 () Bool)

(assert (=> d!1697393 (= (nullable!5063 (reg!15223 (regOne!30300 (regOne!30300 r!7292)))) (nullableFct!1445 (reg!15223 (regOne!30300 (regOne!30300 r!7292)))))))

(declare-fun bs!1221936 () Bool)

(assert (= bs!1221936 d!1697393))

(declare-fun m!6313138 () Bool)

(assert (=> bs!1221936 m!6313138))

(assert (=> b!5273791 d!1697393))

(assert (=> d!1697219 d!1697217))

(assert (=> d!1697219 d!1697215))

(declare-fun d!1697395 () Bool)

(assert (=> d!1697395 (= (matchR!7079 r!7292 s!2326) (matchRSpec!1997 r!7292 s!2326))))

(assert (=> d!1697395 true))

(declare-fun _$88!3571 () Unit!153094)

(assert (=> d!1697395 (= (choose!39353 r!7292 s!2326) _$88!3571)))

(declare-fun bs!1221937 () Bool)

(assert (= bs!1221937 d!1697395))

(assert (=> bs!1221937 m!6312344))

(assert (=> bs!1221937 m!6312342))

(assert (=> d!1697219 d!1697395))

(assert (=> d!1697219 d!1697167))

(declare-fun bs!1221938 () Bool)

(declare-fun d!1697397 () Bool)

(assert (= bs!1221938 (and d!1697397 d!1697363)))

(declare-fun lambda!266195 () Int)

(assert (=> bs!1221938 (= lambda!266195 lambda!266193)))

(assert (=> d!1697397 (= (nullableZipper!1293 lt!2157022) (exists!1996 lt!2157022 lambda!266195))))

(declare-fun bs!1221939 () Bool)

(assert (= bs!1221939 d!1697397))

(declare-fun m!6313140 () Bool)

(assert (=> bs!1221939 m!6313140))

(assert (=> b!5273754 d!1697397))

(assert (=> d!1697157 d!1697159))

(assert (=> d!1697157 d!1697137))

(declare-fun d!1697399 () Bool)

(declare-fun e!3280201 () Bool)

(assert (=> d!1697399 (= (matchZipper!1138 (set.union lt!2157019 lt!2157017) (t!374178 s!2326)) e!3280201)))

(declare-fun res!2237384 () Bool)

(assert (=> d!1697399 (=> res!2237384 e!3280201)))

(assert (=> d!1697399 (= res!2237384 (matchZipper!1138 lt!2157019 (t!374178 s!2326)))))

(assert (=> d!1697399 true))

(declare-fun _$48!941 () Unit!153094)

(assert (=> d!1697399 (= (choose!39347 lt!2157019 lt!2157017 (t!374178 s!2326)) _$48!941)))

(declare-fun b!5274688 () Bool)

(assert (=> b!5274688 (= e!3280201 (matchZipper!1138 lt!2157017 (t!374178 s!2326)))))

(assert (= (and d!1697399 (not res!2237384)) b!5274688))

(assert (=> d!1697399 m!6312288))

(assert (=> d!1697399 m!6312286))

(assert (=> b!5274688 m!6312376))

(assert (=> d!1697157 d!1697399))

(declare-fun d!1697401 () Bool)

(assert (=> d!1697401 (= (flatMap!621 lt!2157027 lambda!266134) (choose!39348 lt!2157027 lambda!266134))))

(declare-fun bs!1221940 () Bool)

(assert (= bs!1221940 d!1697401))

(declare-fun m!6313142 () Bool)

(assert (=> bs!1221940 m!6313142))

(assert (=> d!1697177 d!1697401))

(declare-fun d!1697403 () Bool)

(assert (=> d!1697403 (= (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (nullableFct!1445 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun bs!1221941 () Bool)

(assert (= bs!1221941 d!1697403))

(declare-fun m!6313144 () Bool)

(assert (=> bs!1221941 m!6313144))

(assert (=> b!5273901 d!1697403))

(declare-fun d!1697405 () Bool)

(assert (=> d!1697405 (= (nullable!5063 (h!67306 (exprs!4778 lt!2157008))) (nullableFct!1445 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun bs!1221942 () Bool)

(assert (= bs!1221942 d!1697405))

(declare-fun m!6313146 () Bool)

(assert (=> bs!1221942 m!6313146))

(assert (=> b!5273906 d!1697405))

(declare-fun d!1697407 () Bool)

(assert (=> d!1697407 (= (isEmpty!32809 (unfocusZipperList!336 zl!343)) (is-Nil!60858 (unfocusZipperList!336 zl!343)))))

(assert (=> b!5273950 d!1697407))

(assert (=> d!1697155 d!1697151))

(declare-fun d!1697409 () Bool)

(assert (=> d!1697409 (= (flatMap!621 lt!2157021 lambda!266112) (dynLambda!24050 lambda!266112 lt!2157020))))

(assert (=> d!1697409 true))

(declare-fun _$13!1834 () Unit!153094)

(assert (=> d!1697409 (= (choose!39349 lt!2157021 lt!2157020 lambda!266112) _$13!1834)))

(declare-fun b_lambda!203447 () Bool)

(assert (=> (not b_lambda!203447) (not d!1697409)))

(declare-fun bs!1221943 () Bool)

(assert (= bs!1221943 d!1697409))

(assert (=> bs!1221943 m!6312310))

(assert (=> bs!1221943 m!6312524))

(assert (=> d!1697155 d!1697409))

(declare-fun bs!1221944 () Bool)

(declare-fun b!5274699 () Bool)

(assert (= bs!1221944 (and b!5274699 d!1697207)))

(declare-fun lambda!266196 () Int)

(assert (=> bs!1221944 (not (= lambda!266196 lambda!266146))))

(declare-fun bs!1221945 () Bool)

(assert (= bs!1221945 (and b!5274699 b!5273610)))

(assert (=> bs!1221945 (not (= lambda!266196 lambda!266111))))

(declare-fun bs!1221946 () Bool)

(assert (= bs!1221946 (and b!5274699 b!5274045)))

(assert (=> bs!1221946 (= (and (= (reg!15223 (regTwo!30301 r!7292)) (reg!15223 r!7292)) (= (regTwo!30301 r!7292) r!7292)) (= lambda!266196 lambda!266157))))

(declare-fun bs!1221947 () Bool)

(assert (= bs!1221947 (and b!5274699 d!1697209)))

(assert (=> bs!1221947 (not (= lambda!266196 lambda!266152))))

(declare-fun bs!1221948 () Bool)

(assert (= bs!1221948 (and b!5274699 b!5274035)))

(assert (=> bs!1221948 (not (= lambda!266196 lambda!266158))))

(assert (=> bs!1221947 (not (= lambda!266196 lambda!266151))))

(assert (=> bs!1221945 (not (= lambda!266196 lambda!266110))))

(assert (=> b!5274699 true))

(assert (=> b!5274699 true))

(declare-fun bs!1221949 () Bool)

(declare-fun b!5274689 () Bool)

(assert (= bs!1221949 (and b!5274689 d!1697207)))

(declare-fun lambda!266197 () Int)

(assert (=> bs!1221949 (not (= lambda!266197 lambda!266146))))

(declare-fun bs!1221950 () Bool)

(assert (= bs!1221950 (and b!5274689 b!5273610)))

(assert (=> bs!1221950 (= (and (= (regOne!30300 (regTwo!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regTwo!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266197 lambda!266111))))

(declare-fun bs!1221951 () Bool)

(assert (= bs!1221951 (and b!5274689 b!5274045)))

(assert (=> bs!1221951 (not (= lambda!266197 lambda!266157))))

(declare-fun bs!1221952 () Bool)

(assert (= bs!1221952 (and b!5274689 d!1697209)))

(assert (=> bs!1221952 (= (and (= (regOne!30300 (regTwo!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regTwo!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266197 lambda!266152))))

(declare-fun bs!1221953 () Bool)

(assert (= bs!1221953 (and b!5274689 b!5274035)))

(assert (=> bs!1221953 (= (and (= (regOne!30300 (regTwo!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regTwo!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266197 lambda!266158))))

(assert (=> bs!1221950 (not (= lambda!266197 lambda!266110))))

(assert (=> bs!1221952 (not (= lambda!266197 lambda!266151))))

(declare-fun bs!1221954 () Bool)

(assert (= bs!1221954 (and b!5274689 b!5274699)))

(assert (=> bs!1221954 (not (= lambda!266197 lambda!266196))))

(assert (=> b!5274689 true))

(assert (=> b!5274689 true))

(declare-fun e!3280203 () Bool)

(declare-fun call!375154 () Bool)

(assert (=> b!5274689 (= e!3280203 call!375154)))

(declare-fun bm!375149 () Bool)

(declare-fun call!375155 () Bool)

(assert (=> bm!375149 (= call!375155 (isEmpty!32813 s!2326))))

(declare-fun b!5274690 () Bool)

(declare-fun e!3280202 () Bool)

(declare-fun e!3280205 () Bool)

(assert (=> b!5274690 (= e!3280202 e!3280205)))

(declare-fun res!2237386 () Bool)

(assert (=> b!5274690 (= res!2237386 (matchRSpec!1997 (regOne!30301 (regTwo!30301 r!7292)) s!2326))))

(assert (=> b!5274690 (=> res!2237386 e!3280205)))

(declare-fun b!5274691 () Bool)

(declare-fun c!913900 () Bool)

(assert (=> b!5274691 (= c!913900 (is-Union!14894 (regTwo!30301 r!7292)))))

(declare-fun e!3280204 () Bool)

(assert (=> b!5274691 (= e!3280204 e!3280202)))

(declare-fun b!5274692 () Bool)

(declare-fun e!3280208 () Bool)

(declare-fun e!3280206 () Bool)

(assert (=> b!5274692 (= e!3280208 e!3280206)))

(declare-fun res!2237385 () Bool)

(assert (=> b!5274692 (= res!2237385 (not (is-EmptyLang!14894 (regTwo!30301 r!7292))))))

(assert (=> b!5274692 (=> (not res!2237385) (not e!3280206))))

(declare-fun d!1697411 () Bool)

(declare-fun c!913899 () Bool)

(assert (=> d!1697411 (= c!913899 (is-EmptyExpr!14894 (regTwo!30301 r!7292)))))

(assert (=> d!1697411 (= (matchRSpec!1997 (regTwo!30301 r!7292) s!2326) e!3280208)))

(declare-fun b!5274693 () Bool)

(declare-fun c!913898 () Bool)

(assert (=> b!5274693 (= c!913898 (is-ElementMatch!14894 (regTwo!30301 r!7292)))))

(assert (=> b!5274693 (= e!3280206 e!3280204)))

(declare-fun b!5274694 () Bool)

(assert (=> b!5274694 (= e!3280202 e!3280203)))

(declare-fun c!913901 () Bool)

(assert (=> b!5274694 (= c!913901 (is-Star!14894 (regTwo!30301 r!7292)))))

(declare-fun b!5274695 () Bool)

(declare-fun res!2237387 () Bool)

(declare-fun e!3280207 () Bool)

(assert (=> b!5274695 (=> res!2237387 e!3280207)))

(assert (=> b!5274695 (= res!2237387 call!375155)))

(assert (=> b!5274695 (= e!3280203 e!3280207)))

(declare-fun b!5274696 () Bool)

(assert (=> b!5274696 (= e!3280204 (= s!2326 (Cons!60857 (c!913618 (regTwo!30301 r!7292)) Nil!60857)))))

(declare-fun b!5274697 () Bool)

(assert (=> b!5274697 (= e!3280208 call!375155)))

(declare-fun bm!375150 () Bool)

(assert (=> bm!375150 (= call!375154 (Exists!2075 (ite c!913901 lambda!266196 lambda!266197)))))

(declare-fun b!5274698 () Bool)

(assert (=> b!5274698 (= e!3280205 (matchRSpec!1997 (regTwo!30301 (regTwo!30301 r!7292)) s!2326))))

(assert (=> b!5274699 (= e!3280207 call!375154)))

(assert (= (and d!1697411 c!913899) b!5274697))

(assert (= (and d!1697411 (not c!913899)) b!5274692))

(assert (= (and b!5274692 res!2237385) b!5274693))

(assert (= (and b!5274693 c!913898) b!5274696))

(assert (= (and b!5274693 (not c!913898)) b!5274691))

(assert (= (and b!5274691 c!913900) b!5274690))

(assert (= (and b!5274691 (not c!913900)) b!5274694))

(assert (= (and b!5274690 (not res!2237386)) b!5274698))

(assert (= (and b!5274694 c!913901) b!5274695))

(assert (= (and b!5274694 (not c!913901)) b!5274689))

(assert (= (and b!5274695 (not res!2237387)) b!5274699))

(assert (= (or b!5274699 b!5274689) bm!375150))

(assert (= (or b!5274697 b!5274695) bm!375149))

(assert (=> bm!375149 m!6312698))

(declare-fun m!6313148 () Bool)

(assert (=> b!5274690 m!6313148))

(declare-fun m!6313150 () Bool)

(assert (=> bm!375150 m!6313150))

(declare-fun m!6313152 () Bool)

(assert (=> b!5274698 m!6313152))

(assert (=> b!5274044 d!1697411))

(assert (=> b!5273807 d!1697213))

(declare-fun b!5274700 () Bool)

(declare-fun e!3280210 () (Set Context!8556))

(declare-fun e!3280212 () (Set Context!8556))

(assert (=> b!5274700 (= e!3280210 e!3280212)))

(declare-fun c!913906 () Bool)

(assert (=> b!5274700 (= c!913906 (is-Union!14894 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun b!5274701 () Bool)

(declare-fun c!913903 () Bool)

(declare-fun e!3280214 () Bool)

(assert (=> b!5274701 (= c!913903 e!3280214)))

(declare-fun res!2237388 () Bool)

(assert (=> b!5274701 (=> (not res!2237388) (not e!3280214))))

(assert (=> b!5274701 (= res!2237388 (is-Concat!23739 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun e!3280211 () (Set Context!8556))

(assert (=> b!5274701 (= e!3280212 e!3280211)))

(declare-fun bm!375151 () Bool)

(declare-fun call!375159 () (Set Context!8556))

(declare-fun call!375161 () (Set Context!8556))

(assert (=> bm!375151 (= call!375159 call!375161)))

(declare-fun bm!375152 () Bool)

(declare-fun call!375156 () List!60982)

(declare-fun call!375157 () (Set Context!8556))

(assert (=> bm!375152 (= call!375157 (derivationStepZipperDown!342 (ite c!913906 (regOne!30301 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (regOne!30300 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))) (ite c!913906 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (Context!8557 call!375156)) (h!67305 s!2326)))))

(declare-fun b!5274702 () Bool)

(assert (=> b!5274702 (= e!3280212 (set.union call!375157 call!375161))))

(declare-fun c!913904 () Bool)

(declare-fun call!375160 () List!60982)

(declare-fun bm!375153 () Bool)

(assert (=> bm!375153 (= call!375161 (derivationStepZipperDown!342 (ite c!913906 (regTwo!30301 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (ite c!913903 (regTwo!30300 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (ite c!913904 (regOne!30300 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (reg!15223 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))) (ite (or c!913906 c!913903) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (Context!8557 call!375160)) (h!67305 s!2326)))))

(declare-fun bm!375154 () Bool)

(declare-fun call!375158 () (Set Context!8556))

(assert (=> bm!375154 (= call!375158 call!375159)))

(declare-fun bm!375155 () Bool)

(assert (=> bm!375155 (= call!375160 call!375156)))

(declare-fun b!5274703 () Bool)

(declare-fun e!3280213 () (Set Context!8556))

(assert (=> b!5274703 (= e!3280213 (as set.empty (Set Context!8556)))))

(declare-fun d!1697413 () Bool)

(declare-fun c!913905 () Bool)

(assert (=> d!1697413 (= c!913905 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (= (c!913618 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326))))))

(assert (=> d!1697413 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67305 s!2326)) e!3280210)))

(declare-fun b!5274704 () Bool)

(declare-fun c!913902 () Bool)

(assert (=> b!5274704 (= c!913902 (is-Star!14894 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun e!3280209 () (Set Context!8556))

(assert (=> b!5274704 (= e!3280209 e!3280213)))

(declare-fun b!5274705 () Bool)

(assert (=> b!5274705 (= e!3280214 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))))

(declare-fun b!5274706 () Bool)

(assert (=> b!5274706 (= e!3280211 e!3280209)))

(assert (=> b!5274706 (= c!913904 (is-Concat!23739 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))))))

(declare-fun b!5274707 () Bool)

(assert (=> b!5274707 (= e!3280210 (set.insert (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (as set.empty (Set Context!8556))))))

(declare-fun b!5274708 () Bool)

(assert (=> b!5274708 (= e!3280211 (set.union call!375157 call!375159))))

(declare-fun b!5274709 () Bool)

(assert (=> b!5274709 (= e!3280209 call!375158)))

(declare-fun b!5274710 () Bool)

(assert (=> b!5274710 (= e!3280213 call!375158)))

(declare-fun bm!375156 () Bool)

(assert (=> bm!375156 (= call!375156 ($colon$colon!1343 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))) (ite (or c!913903 c!913904) (regTwo!30300 (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343)))))))) (h!67306 (exprs!4778 (Context!8557 (Cons!60858 (h!67306 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))))))))

(assert (= (and d!1697413 c!913905) b!5274707))

(assert (= (and d!1697413 (not c!913905)) b!5274700))

(assert (= (and b!5274700 c!913906) b!5274702))

(assert (= (and b!5274700 (not c!913906)) b!5274701))

(assert (= (and b!5274701 res!2237388) b!5274705))

(assert (= (and b!5274701 c!913903) b!5274708))

(assert (= (and b!5274701 (not c!913903)) b!5274706))

(assert (= (and b!5274706 c!913904) b!5274709))

(assert (= (and b!5274706 (not c!913904)) b!5274704))

(assert (= (and b!5274704 c!913902) b!5274710))

(assert (= (and b!5274704 (not c!913902)) b!5274703))

(assert (= (or b!5274709 b!5274710) bm!375155))

(assert (= (or b!5274709 b!5274710) bm!375154))

(assert (= (or b!5274708 bm!375155) bm!375156))

(assert (= (or b!5274708 bm!375154) bm!375151))

(assert (= (or b!5274702 bm!375151) bm!375153))

(assert (= (or b!5274702 b!5274708) bm!375152))

(declare-fun m!6313154 () Bool)

(assert (=> bm!375153 m!6313154))

(declare-fun m!6313156 () Bool)

(assert (=> bm!375156 m!6313156))

(declare-fun m!6313158 () Bool)

(assert (=> b!5274707 m!6313158))

(declare-fun m!6313160 () Bool)

(assert (=> b!5274705 m!6313160))

(declare-fun m!6313162 () Bool)

(assert (=> bm!375152 m!6313162))

(assert (=> bm!375030 d!1697413))

(declare-fun b!5274711 () Bool)

(declare-fun e!3280216 () (Set Context!8556))

(declare-fun e!3280218 () (Set Context!8556))

(assert (=> b!5274711 (= e!3280216 e!3280218)))

(declare-fun c!913911 () Bool)

(assert (=> b!5274711 (= c!913911 (is-Union!14894 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun b!5274712 () Bool)

(declare-fun c!913908 () Bool)

(declare-fun e!3280220 () Bool)

(assert (=> b!5274712 (= c!913908 e!3280220)))

(declare-fun res!2237389 () Bool)

(assert (=> b!5274712 (=> (not res!2237389) (not e!3280220))))

(assert (=> b!5274712 (= res!2237389 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun e!3280217 () (Set Context!8556))

(assert (=> b!5274712 (= e!3280218 e!3280217)))

(declare-fun bm!375157 () Bool)

(declare-fun call!375165 () (Set Context!8556))

(declare-fun call!375167 () (Set Context!8556))

(assert (=> bm!375157 (= call!375165 call!375167)))

(declare-fun call!375162 () List!60982)

(declare-fun bm!375158 () Bool)

(declare-fun call!375163 () (Set Context!8556))

(assert (=> bm!375158 (= call!375163 (derivationStepZipperDown!342 (ite c!913911 (regOne!30301 (h!67306 (exprs!4778 lt!2157008))) (regOne!30300 (h!67306 (exprs!4778 lt!2157008)))) (ite c!913911 (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (Context!8557 call!375162)) (h!67305 s!2326)))))

(declare-fun b!5274713 () Bool)

(assert (=> b!5274713 (= e!3280218 (set.union call!375163 call!375167))))

(declare-fun call!375166 () List!60982)

(declare-fun bm!375159 () Bool)

(declare-fun c!913909 () Bool)

(assert (=> bm!375159 (= call!375167 (derivationStepZipperDown!342 (ite c!913911 (regTwo!30301 (h!67306 (exprs!4778 lt!2157008))) (ite c!913908 (regTwo!30300 (h!67306 (exprs!4778 lt!2157008))) (ite c!913909 (regOne!30300 (h!67306 (exprs!4778 lt!2157008))) (reg!15223 (h!67306 (exprs!4778 lt!2157008)))))) (ite (or c!913911 c!913908) (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (Context!8557 call!375166)) (h!67305 s!2326)))))

(declare-fun bm!375160 () Bool)

(declare-fun call!375164 () (Set Context!8556))

(assert (=> bm!375160 (= call!375164 call!375165)))

(declare-fun bm!375161 () Bool)

(assert (=> bm!375161 (= call!375166 call!375162)))

(declare-fun b!5274714 () Bool)

(declare-fun e!3280219 () (Set Context!8556))

(assert (=> b!5274714 (= e!3280219 (as set.empty (Set Context!8556)))))

(declare-fun d!1697415 () Bool)

(declare-fun c!913910 () Bool)

(assert (=> d!1697415 (= c!913910 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 lt!2157008))) (= (c!913618 (h!67306 (exprs!4778 lt!2157008))) (h!67305 s!2326))))))

(assert (=> d!1697415 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157008)) (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (h!67305 s!2326)) e!3280216)))

(declare-fun b!5274715 () Bool)

(declare-fun c!913907 () Bool)

(assert (=> b!5274715 (= c!913907 (is-Star!14894 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun e!3280215 () (Set Context!8556))

(assert (=> b!5274715 (= e!3280215 e!3280219)))

(declare-fun b!5274716 () Bool)

(assert (=> b!5274716 (= e!3280220 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 lt!2157008)))))))

(declare-fun b!5274717 () Bool)

(assert (=> b!5274717 (= e!3280217 e!3280215)))

(assert (=> b!5274717 (= c!913909 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157008))))))

(declare-fun b!5274718 () Bool)

(assert (=> b!5274718 (= e!3280216 (set.insert (Context!8557 (t!374179 (exprs!4778 lt!2157008))) (as set.empty (Set Context!8556))))))

(declare-fun b!5274719 () Bool)

(assert (=> b!5274719 (= e!3280217 (set.union call!375163 call!375165))))

(declare-fun b!5274720 () Bool)

(assert (=> b!5274720 (= e!3280215 call!375164)))

(declare-fun b!5274721 () Bool)

(assert (=> b!5274721 (= e!3280219 call!375164)))

(declare-fun bm!375162 () Bool)

(assert (=> bm!375162 (= call!375162 ($colon$colon!1343 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157008)))) (ite (or c!913908 c!913909) (regTwo!30300 (h!67306 (exprs!4778 lt!2157008))) (h!67306 (exprs!4778 lt!2157008)))))))

(assert (= (and d!1697415 c!913910) b!5274718))

(assert (= (and d!1697415 (not c!913910)) b!5274711))

(assert (= (and b!5274711 c!913911) b!5274713))

(assert (= (and b!5274711 (not c!913911)) b!5274712))

(assert (= (and b!5274712 res!2237389) b!5274716))

(assert (= (and b!5274712 c!913908) b!5274719))

(assert (= (and b!5274712 (not c!913908)) b!5274717))

(assert (= (and b!5274717 c!913909) b!5274720))

(assert (= (and b!5274717 (not c!913909)) b!5274715))

(assert (= (and b!5274715 c!913907) b!5274721))

(assert (= (and b!5274715 (not c!913907)) b!5274714))

(assert (= (or b!5274720 b!5274721) bm!375161))

(assert (= (or b!5274720 b!5274721) bm!375160))

(assert (= (or b!5274719 bm!375161) bm!375162))

(assert (= (or b!5274719 bm!375160) bm!375157))

(assert (= (or b!5274713 bm!375157) bm!375159))

(assert (= (or b!5274713 b!5274719) bm!375158))

(declare-fun m!6313164 () Bool)

(assert (=> bm!375159 m!6313164))

(declare-fun m!6313166 () Bool)

(assert (=> bm!375162 m!6313166))

(declare-fun m!6313168 () Bool)

(assert (=> b!5274718 m!6313168))

(declare-fun m!6313170 () Bool)

(assert (=> b!5274716 m!6313170))

(declare-fun m!6313172 () Bool)

(assert (=> bm!375158 m!6313172))

(assert (=> bm!375031 d!1697415))

(declare-fun d!1697417 () Bool)

(assert (=> d!1697417 (= (nullable!5063 (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))) (nullableFct!1445 (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))

(declare-fun bs!1221955 () Bool)

(assert (= bs!1221955 d!1697417))

(declare-fun m!6313174 () Bool)

(assert (=> bs!1221955 m!6313174))

(assert (=> b!5273848 d!1697417))

(declare-fun d!1697419 () Bool)

(assert (=> d!1697419 (= (isEmpty!32809 (tail!10402 (exprs!4778 (h!67307 zl!343)))) (is-Nil!60858 (tail!10402 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> b!5273893 d!1697419))

(declare-fun d!1697421 () Bool)

(assert (=> d!1697421 (= (tail!10402 (exprs!4778 (h!67307 zl!343))) (t!374179 (exprs!4778 (h!67307 zl!343))))))

(assert (=> b!5273893 d!1697421))

(assert (=> bm!375047 d!1697337))

(declare-fun d!1697423 () Bool)

(assert (=> d!1697423 (= (head!11305 (unfocusZipperList!336 zl!343)) (h!67306 (unfocusZipperList!336 zl!343)))))

(assert (=> b!5273954 d!1697423))

(assert (=> d!1697159 d!1697375))

(declare-fun d!1697425 () Bool)

(assert (=> d!1697425 (= (isEmptyExpr!828 lt!2157120) (is-EmptyExpr!14894 lt!2157120))))

(assert (=> b!5273897 d!1697425))

(declare-fun d!1697427 () Bool)

(declare-fun c!913912 () Bool)

(assert (=> d!1697427 (= c!913912 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280221 () Bool)

(assert (=> d!1697427 (= (matchZipper!1138 (derivationStepZipper!1137 (set.union lt!2157019 lt!2157017) (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280221)))

(declare-fun b!5274722 () Bool)

(assert (=> b!5274722 (= e!3280221 (nullableZipper!1293 (derivationStepZipper!1137 (set.union lt!2157019 lt!2157017) (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274723 () Bool)

(assert (=> b!5274723 (= e!3280221 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 (set.union lt!2157019 lt!2157017) (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697427 c!913912) b!5274722))

(assert (= (and d!1697427 (not c!913912)) b!5274723))

(assert (=> d!1697427 m!6312480))

(assert (=> d!1697427 m!6313124))

(assert (=> b!5274722 m!6312532))

(declare-fun m!6313176 () Bool)

(assert (=> b!5274722 m!6313176))

(assert (=> b!5274723 m!6312480))

(assert (=> b!5274723 m!6313128))

(assert (=> b!5274723 m!6312532))

(assert (=> b!5274723 m!6313128))

(declare-fun m!6313178 () Bool)

(assert (=> b!5274723 m!6313178))

(assert (=> b!5274723 m!6312480))

(assert (=> b!5274723 m!6313132))

(assert (=> b!5274723 m!6313178))

(assert (=> b!5274723 m!6313132))

(declare-fun m!6313180 () Bool)

(assert (=> b!5274723 m!6313180))

(assert (=> b!5273809 d!1697427))

(declare-fun bs!1221956 () Bool)

(declare-fun d!1697429 () Bool)

(assert (= bs!1221956 (and d!1697429 b!5273632)))

(declare-fun lambda!266198 () Int)

(assert (=> bs!1221956 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266198 lambda!266112))))

(declare-fun bs!1221957 () Bool)

(assert (= bs!1221957 (and d!1697429 d!1697177)))

(assert (=> bs!1221957 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266198 lambda!266134))))

(declare-fun bs!1221958 () Bool)

(assert (= bs!1221958 (and d!1697429 d!1697387)))

(assert (=> bs!1221958 (= lambda!266198 lambda!266194)))

(assert (=> d!1697429 true))

(assert (=> d!1697429 (= (derivationStepZipper!1137 (set.union lt!2157019 lt!2157017) (head!11304 (t!374178 s!2326))) (flatMap!621 (set.union lt!2157019 lt!2157017) lambda!266198))))

(declare-fun bs!1221959 () Bool)

(assert (= bs!1221959 d!1697429))

(declare-fun m!6313182 () Bool)

(assert (=> bs!1221959 m!6313182))

(assert (=> b!5273809 d!1697429))

(assert (=> b!5273809 d!1697389))

(assert (=> b!5273809 d!1697391))

(assert (=> d!1697187 d!1697191))

(declare-fun d!1697431 () Bool)

(assert (=> d!1697431 (= (flatMap!621 z!1189 lambda!266112) (dynLambda!24050 lambda!266112 (h!67307 zl!343)))))

(assert (=> d!1697431 true))

(declare-fun _$13!1835 () Unit!153094)

(assert (=> d!1697431 (= (choose!39349 z!1189 (h!67307 zl!343) lambda!266112) _$13!1835)))

(declare-fun b_lambda!203449 () Bool)

(assert (=> (not b_lambda!203449) (not d!1697431)))

(declare-fun bs!1221960 () Bool)

(assert (= bs!1221960 d!1697431))

(assert (=> bs!1221960 m!6312334))

(assert (=> bs!1221960 m!6312606))

(assert (=> d!1697187 d!1697431))

(assert (=> bs!1221878 d!1697195))

(declare-fun bs!1221961 () Bool)

(declare-fun b!5274734 () Bool)

(assert (= bs!1221961 (and b!5274734 d!1697207)))

(declare-fun lambda!266199 () Int)

(assert (=> bs!1221961 (not (= lambda!266199 lambda!266146))))

(declare-fun bs!1221962 () Bool)

(assert (= bs!1221962 (and b!5274734 b!5273610)))

(assert (=> bs!1221962 (not (= lambda!266199 lambda!266111))))

(declare-fun bs!1221963 () Bool)

(assert (= bs!1221963 (and b!5274734 b!5274045)))

(assert (=> bs!1221963 (= (and (= (reg!15223 (regOne!30301 r!7292)) (reg!15223 r!7292)) (= (regOne!30301 r!7292) r!7292)) (= lambda!266199 lambda!266157))))

(declare-fun bs!1221964 () Bool)

(assert (= bs!1221964 (and b!5274734 d!1697209)))

(assert (=> bs!1221964 (not (= lambda!266199 lambda!266152))))

(declare-fun bs!1221965 () Bool)

(assert (= bs!1221965 (and b!5274734 b!5274035)))

(assert (=> bs!1221965 (not (= lambda!266199 lambda!266158))))

(declare-fun bs!1221966 () Bool)

(assert (= bs!1221966 (and b!5274734 b!5274689)))

(assert (=> bs!1221966 (not (= lambda!266199 lambda!266197))))

(assert (=> bs!1221962 (not (= lambda!266199 lambda!266110))))

(assert (=> bs!1221964 (not (= lambda!266199 lambda!266151))))

(declare-fun bs!1221967 () Bool)

(assert (= bs!1221967 (and b!5274734 b!5274699)))

(assert (=> bs!1221967 (= (and (= (reg!15223 (regOne!30301 r!7292)) (reg!15223 (regTwo!30301 r!7292))) (= (regOne!30301 r!7292) (regTwo!30301 r!7292))) (= lambda!266199 lambda!266196))))

(assert (=> b!5274734 true))

(assert (=> b!5274734 true))

(declare-fun bs!1221968 () Bool)

(declare-fun b!5274724 () Bool)

(assert (= bs!1221968 (and b!5274724 d!1697207)))

(declare-fun lambda!266200 () Int)

(assert (=> bs!1221968 (not (= lambda!266200 lambda!266146))))

(declare-fun bs!1221969 () Bool)

(assert (= bs!1221969 (and b!5274724 b!5273610)))

(assert (=> bs!1221969 (= (and (= (regOne!30300 (regOne!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regOne!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266200 lambda!266111))))

(declare-fun bs!1221970 () Bool)

(assert (= bs!1221970 (and b!5274724 b!5274734)))

(assert (=> bs!1221970 (not (= lambda!266200 lambda!266199))))

(declare-fun bs!1221971 () Bool)

(assert (= bs!1221971 (and b!5274724 b!5274045)))

(assert (=> bs!1221971 (not (= lambda!266200 lambda!266157))))

(declare-fun bs!1221972 () Bool)

(assert (= bs!1221972 (and b!5274724 d!1697209)))

(assert (=> bs!1221972 (= (and (= (regOne!30300 (regOne!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regOne!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266200 lambda!266152))))

(declare-fun bs!1221973 () Bool)

(assert (= bs!1221973 (and b!5274724 b!5274035)))

(assert (=> bs!1221973 (= (and (= (regOne!30300 (regOne!30301 r!7292)) (regOne!30300 r!7292)) (= (regTwo!30300 (regOne!30301 r!7292)) (regTwo!30300 r!7292))) (= lambda!266200 lambda!266158))))

(declare-fun bs!1221974 () Bool)

(assert (= bs!1221974 (and b!5274724 b!5274689)))

(assert (=> bs!1221974 (= (and (= (regOne!30300 (regOne!30301 r!7292)) (regOne!30300 (regTwo!30301 r!7292))) (= (regTwo!30300 (regOne!30301 r!7292)) (regTwo!30300 (regTwo!30301 r!7292)))) (= lambda!266200 lambda!266197))))

(assert (=> bs!1221969 (not (= lambda!266200 lambda!266110))))

(assert (=> bs!1221972 (not (= lambda!266200 lambda!266151))))

(declare-fun bs!1221975 () Bool)

(assert (= bs!1221975 (and b!5274724 b!5274699)))

(assert (=> bs!1221975 (not (= lambda!266200 lambda!266196))))

(assert (=> b!5274724 true))

(assert (=> b!5274724 true))

(declare-fun e!3280223 () Bool)

(declare-fun call!375168 () Bool)

(assert (=> b!5274724 (= e!3280223 call!375168)))

(declare-fun bm!375163 () Bool)

(declare-fun call!375169 () Bool)

(assert (=> bm!375163 (= call!375169 (isEmpty!32813 s!2326))))

(declare-fun b!5274725 () Bool)

(declare-fun e!3280222 () Bool)

(declare-fun e!3280225 () Bool)

(assert (=> b!5274725 (= e!3280222 e!3280225)))

(declare-fun res!2237391 () Bool)

(assert (=> b!5274725 (= res!2237391 (matchRSpec!1997 (regOne!30301 (regOne!30301 r!7292)) s!2326))))

(assert (=> b!5274725 (=> res!2237391 e!3280225)))

(declare-fun b!5274726 () Bool)

(declare-fun c!913915 () Bool)

(assert (=> b!5274726 (= c!913915 (is-Union!14894 (regOne!30301 r!7292)))))

(declare-fun e!3280224 () Bool)

(assert (=> b!5274726 (= e!3280224 e!3280222)))

(declare-fun b!5274727 () Bool)

(declare-fun e!3280228 () Bool)

(declare-fun e!3280226 () Bool)

(assert (=> b!5274727 (= e!3280228 e!3280226)))

(declare-fun res!2237390 () Bool)

(assert (=> b!5274727 (= res!2237390 (not (is-EmptyLang!14894 (regOne!30301 r!7292))))))

(assert (=> b!5274727 (=> (not res!2237390) (not e!3280226))))

(declare-fun d!1697433 () Bool)

(declare-fun c!913914 () Bool)

(assert (=> d!1697433 (= c!913914 (is-EmptyExpr!14894 (regOne!30301 r!7292)))))

(assert (=> d!1697433 (= (matchRSpec!1997 (regOne!30301 r!7292) s!2326) e!3280228)))

(declare-fun b!5274728 () Bool)

(declare-fun c!913913 () Bool)

(assert (=> b!5274728 (= c!913913 (is-ElementMatch!14894 (regOne!30301 r!7292)))))

(assert (=> b!5274728 (= e!3280226 e!3280224)))

(declare-fun b!5274729 () Bool)

(assert (=> b!5274729 (= e!3280222 e!3280223)))

(declare-fun c!913916 () Bool)

(assert (=> b!5274729 (= c!913916 (is-Star!14894 (regOne!30301 r!7292)))))

(declare-fun b!5274730 () Bool)

(declare-fun res!2237392 () Bool)

(declare-fun e!3280227 () Bool)

(assert (=> b!5274730 (=> res!2237392 e!3280227)))

(assert (=> b!5274730 (= res!2237392 call!375169)))

(assert (=> b!5274730 (= e!3280223 e!3280227)))

(declare-fun b!5274731 () Bool)

(assert (=> b!5274731 (= e!3280224 (= s!2326 (Cons!60857 (c!913618 (regOne!30301 r!7292)) Nil!60857)))))

(declare-fun b!5274732 () Bool)

(assert (=> b!5274732 (= e!3280228 call!375169)))

(declare-fun bm!375164 () Bool)

(assert (=> bm!375164 (= call!375168 (Exists!2075 (ite c!913916 lambda!266199 lambda!266200)))))

(declare-fun b!5274733 () Bool)

(assert (=> b!5274733 (= e!3280225 (matchRSpec!1997 (regTwo!30301 (regOne!30301 r!7292)) s!2326))))

(assert (=> b!5274734 (= e!3280227 call!375168)))

(assert (= (and d!1697433 c!913914) b!5274732))

(assert (= (and d!1697433 (not c!913914)) b!5274727))

(assert (= (and b!5274727 res!2237390) b!5274728))

(assert (= (and b!5274728 c!913913) b!5274731))

(assert (= (and b!5274728 (not c!913913)) b!5274726))

(assert (= (and b!5274726 c!913915) b!5274725))

(assert (= (and b!5274726 (not c!913915)) b!5274729))

(assert (= (and b!5274725 (not res!2237391)) b!5274733))

(assert (= (and b!5274729 c!913916) b!5274730))

(assert (= (and b!5274729 (not c!913916)) b!5274724))

(assert (= (and b!5274730 (not res!2237392)) b!5274734))

(assert (= (or b!5274734 b!5274724) bm!375164))

(assert (= (or b!5274732 b!5274730) bm!375163))

(assert (=> bm!375163 m!6312698))

(declare-fun m!6313184 () Bool)

(assert (=> b!5274725 m!6313184))

(declare-fun m!6313186 () Bool)

(assert (=> bm!375164 m!6313186))

(declare-fun m!6313188 () Bool)

(assert (=> b!5274733 m!6313188))

(assert (=> b!5274036 d!1697433))

(declare-fun b!5274735 () Bool)

(declare-fun e!3280229 () (Set Context!8556))

(declare-fun call!375170 () (Set Context!8556))

(assert (=> b!5274735 (= e!3280229 call!375170)))

(declare-fun b!5274736 () Bool)

(declare-fun e!3280230 () Bool)

(assert (=> b!5274736 (= e!3280230 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020)))))))))

(declare-fun d!1697435 () Bool)

(declare-fun c!913918 () Bool)

(assert (=> d!1697435 (= c!913918 e!3280230)))

(declare-fun res!2237393 () Bool)

(assert (=> d!1697435 (=> (not res!2237393) (not e!3280230))))

(assert (=> d!1697435 (= res!2237393 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020))))))))

(declare-fun e!3280231 () (Set Context!8556))

(assert (=> d!1697435 (= (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (h!67305 s!2326)) e!3280231)))

(declare-fun b!5274737 () Bool)

(assert (=> b!5274737 (= e!3280231 e!3280229)))

(declare-fun c!913917 () Bool)

(assert (=> b!5274737 (= c!913917 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020))))))))

(declare-fun b!5274738 () Bool)

(assert (=> b!5274738 (= e!3280229 (as set.empty (Set Context!8556)))))

(declare-fun b!5274739 () Bool)

(assert (=> b!5274739 (= e!3280231 (set.union call!375170 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020)))))) (h!67305 s!2326))))))

(declare-fun bm!375165 () Bool)

(assert (=> bm!375165 (= call!375170 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020)))))) (h!67305 s!2326)))))

(assert (= (and d!1697435 res!2237393) b!5274736))

(assert (= (and d!1697435 c!913918) b!5274739))

(assert (= (and d!1697435 (not c!913918)) b!5274737))

(assert (= (and b!5274737 c!913917) b!5274735))

(assert (= (and b!5274737 (not c!913917)) b!5274738))

(assert (= (or b!5274739 b!5274735) bm!375165))

(declare-fun m!6313190 () Bool)

(assert (=> b!5274736 m!6313190))

(declare-fun m!6313192 () Bool)

(assert (=> b!5274739 m!6313192))

(declare-fun m!6313194 () Bool)

(assert (=> bm!375165 m!6313194))

(assert (=> b!5273806 d!1697435))

(declare-fun d!1697437 () Bool)

(declare-fun res!2237398 () Bool)

(declare-fun e!3280236 () Bool)

(assert (=> d!1697437 (=> res!2237398 e!3280236)))

(assert (=> d!1697437 (= res!2237398 (is-Nil!60859 lt!2157151))))

(assert (=> d!1697437 (= (noDuplicate!1248 lt!2157151) e!3280236)))

(declare-fun b!5274744 () Bool)

(declare-fun e!3280237 () Bool)

(assert (=> b!5274744 (= e!3280236 e!3280237)))

(declare-fun res!2237399 () Bool)

(assert (=> b!5274744 (=> (not res!2237399) (not e!3280237))))

(declare-fun contains!19697 (List!60983 Context!8556) Bool)

(assert (=> b!5274744 (= res!2237399 (not (contains!19697 (t!374180 lt!2157151) (h!67307 lt!2157151))))))

(declare-fun b!5274745 () Bool)

(assert (=> b!5274745 (= e!3280237 (noDuplicate!1248 (t!374180 lt!2157151)))))

(assert (= (and d!1697437 (not res!2237398)) b!5274744))

(assert (= (and b!5274744 res!2237399) b!5274745))

(declare-fun m!6313196 () Bool)

(assert (=> b!5274744 m!6313196))

(declare-fun m!6313198 () Bool)

(assert (=> b!5274745 m!6313198))

(assert (=> d!1697223 d!1697437))

(declare-fun d!1697439 () Bool)

(declare-fun e!3280246 () Bool)

(assert (=> d!1697439 e!3280246))

(declare-fun res!2237405 () Bool)

(assert (=> d!1697439 (=> (not res!2237405) (not e!3280246))))

(declare-fun res!2237404 () List!60983)

(assert (=> d!1697439 (= res!2237405 (noDuplicate!1248 res!2237404))))

(declare-fun e!3280245 () Bool)

(assert (=> d!1697439 e!3280245))

(assert (=> d!1697439 (= (choose!39354 z!1189) res!2237404)))

(declare-fun b!5274753 () Bool)

(declare-fun e!3280244 () Bool)

(declare-fun tp!1473975 () Bool)

(assert (=> b!5274753 (= e!3280244 tp!1473975)))

(declare-fun tp!1473974 () Bool)

(declare-fun b!5274752 () Bool)

(assert (=> b!5274752 (= e!3280245 (and (inv!80483 (h!67307 res!2237404)) e!3280244 tp!1473974))))

(declare-fun b!5274754 () Bool)

(assert (=> b!5274754 (= e!3280246 (= (content!10828 res!2237404) z!1189))))

(assert (= b!5274752 b!5274753))

(assert (= (and d!1697439 (is-Cons!60859 res!2237404)) b!5274752))

(assert (= (and d!1697439 res!2237405) b!5274754))

(declare-fun m!6313200 () Bool)

(assert (=> d!1697439 m!6313200))

(declare-fun m!6313202 () Bool)

(assert (=> b!5274752 m!6313202))

(declare-fun m!6313204 () Bool)

(assert (=> b!5274754 m!6313204))

(assert (=> d!1697223 d!1697439))

(declare-fun d!1697441 () Bool)

(declare-fun res!2237410 () Bool)

(declare-fun e!3280251 () Bool)

(assert (=> d!1697441 (=> res!2237410 e!3280251)))

(assert (=> d!1697441 (= res!2237410 (is-Nil!60858 (exprs!4778 (h!67307 zl!343))))))

(assert (=> d!1697441 (= (forall!14302 (exprs!4778 (h!67307 zl!343)) lambda!266131) e!3280251)))

(declare-fun b!5274759 () Bool)

(declare-fun e!3280252 () Bool)

(assert (=> b!5274759 (= e!3280251 e!3280252)))

(declare-fun res!2237411 () Bool)

(assert (=> b!5274759 (=> (not res!2237411) (not e!3280252))))

(declare-fun dynLambda!24052 (Int Regex!14894) Bool)

(assert (=> b!5274759 (= res!2237411 (dynLambda!24052 lambda!266131 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274760 () Bool)

(assert (=> b!5274760 (= e!3280252 (forall!14302 (t!374179 (exprs!4778 (h!67307 zl!343))) lambda!266131))))

(assert (= (and d!1697441 (not res!2237410)) b!5274759))

(assert (= (and b!5274759 res!2237411) b!5274760))

(declare-fun b_lambda!203451 () Bool)

(assert (=> (not b_lambda!203451) (not b!5274759)))

(declare-fun m!6313206 () Bool)

(assert (=> b!5274759 m!6313206))

(declare-fun m!6313208 () Bool)

(assert (=> b!5274760 m!6313208))

(assert (=> d!1697171 d!1697441))

(declare-fun b!5274761 () Bool)

(declare-fun e!3280256 () Bool)

(declare-fun call!375171 () Bool)

(assert (=> b!5274761 (= e!3280256 call!375171)))

(declare-fun b!5274762 () Bool)

(declare-fun res!2237416 () Bool)

(declare-fun e!3280257 () Bool)

(assert (=> b!5274762 (=> res!2237416 e!3280257)))

(assert (=> b!5274762 (= res!2237416 (not (is-Concat!23739 lt!2157120)))))

(declare-fun e!3280259 () Bool)

(assert (=> b!5274762 (= e!3280259 e!3280257)))

(declare-fun b!5274763 () Bool)

(declare-fun e!3280254 () Bool)

(declare-fun call!375172 () Bool)

(assert (=> b!5274763 (= e!3280254 call!375172)))

(declare-fun d!1697443 () Bool)

(declare-fun res!2237414 () Bool)

(declare-fun e!3280253 () Bool)

(assert (=> d!1697443 (=> res!2237414 e!3280253)))

(assert (=> d!1697443 (= res!2237414 (is-ElementMatch!14894 lt!2157120))))

(assert (=> d!1697443 (= (validRegex!6630 lt!2157120) e!3280253)))

(declare-fun b!5274764 () Bool)

(assert (=> b!5274764 (= e!3280257 e!3280254)))

(declare-fun res!2237413 () Bool)

(assert (=> b!5274764 (=> (not res!2237413) (not e!3280254))))

(declare-fun call!375173 () Bool)

(assert (=> b!5274764 (= res!2237413 call!375173)))

(declare-fun b!5274765 () Bool)

(declare-fun e!3280258 () Bool)

(assert (=> b!5274765 (= e!3280258 call!375172)))

(declare-fun c!913919 () Bool)

(declare-fun c!913920 () Bool)

(declare-fun bm!375166 () Bool)

(assert (=> bm!375166 (= call!375171 (validRegex!6630 (ite c!913920 (reg!15223 lt!2157120) (ite c!913919 (regTwo!30301 lt!2157120) (regTwo!30300 lt!2157120)))))))

(declare-fun b!5274766 () Bool)

(declare-fun e!3280255 () Bool)

(assert (=> b!5274766 (= e!3280255 e!3280259)))

(assert (=> b!5274766 (= c!913919 (is-Union!14894 lt!2157120))))

(declare-fun bm!375167 () Bool)

(assert (=> bm!375167 (= call!375172 call!375171)))

(declare-fun b!5274767 () Bool)

(assert (=> b!5274767 (= e!3280253 e!3280255)))

(assert (=> b!5274767 (= c!913920 (is-Star!14894 lt!2157120))))

(declare-fun b!5274768 () Bool)

(declare-fun res!2237415 () Bool)

(assert (=> b!5274768 (=> (not res!2237415) (not e!3280258))))

(assert (=> b!5274768 (= res!2237415 call!375173)))

(assert (=> b!5274768 (= e!3280259 e!3280258)))

(declare-fun b!5274769 () Bool)

(assert (=> b!5274769 (= e!3280255 e!3280256)))

(declare-fun res!2237412 () Bool)

(assert (=> b!5274769 (= res!2237412 (not (nullable!5063 (reg!15223 lt!2157120))))))

(assert (=> b!5274769 (=> (not res!2237412) (not e!3280256))))

(declare-fun bm!375168 () Bool)

(assert (=> bm!375168 (= call!375173 (validRegex!6630 (ite c!913919 (regOne!30301 lt!2157120) (regOne!30300 lt!2157120))))))

(assert (= (and d!1697443 (not res!2237414)) b!5274767))

(assert (= (and b!5274767 c!913920) b!5274769))

(assert (= (and b!5274767 (not c!913920)) b!5274766))

(assert (= (and b!5274769 res!2237412) b!5274761))

(assert (= (and b!5274766 c!913919) b!5274768))

(assert (= (and b!5274766 (not c!913919)) b!5274762))

(assert (= (and b!5274768 res!2237415) b!5274765))

(assert (= (and b!5274762 (not res!2237416)) b!5274764))

(assert (= (and b!5274764 res!2237413) b!5274763))

(assert (= (or b!5274765 b!5274763) bm!375167))

(assert (= (or b!5274768 b!5274764) bm!375168))

(assert (= (or b!5274761 bm!375167) bm!375166))

(declare-fun m!6313210 () Bool)

(assert (=> bm!375166 m!6313210))

(declare-fun m!6313212 () Bool)

(assert (=> b!5274769 m!6313212))

(declare-fun m!6313214 () Bool)

(assert (=> bm!375168 m!6313214))

(assert (=> d!1697181 d!1697443))

(declare-fun d!1697445 () Bool)

(declare-fun res!2237417 () Bool)

(declare-fun e!3280260 () Bool)

(assert (=> d!1697445 (=> res!2237417 e!3280260)))

(assert (=> d!1697445 (= res!2237417 (is-Nil!60858 (exprs!4778 (h!67307 zl!343))))))

(assert (=> d!1697445 (= (forall!14302 (exprs!4778 (h!67307 zl!343)) lambda!266137) e!3280260)))

(declare-fun b!5274770 () Bool)

(declare-fun e!3280261 () Bool)

(assert (=> b!5274770 (= e!3280260 e!3280261)))

(declare-fun res!2237418 () Bool)

(assert (=> b!5274770 (=> (not res!2237418) (not e!3280261))))

(assert (=> b!5274770 (= res!2237418 (dynLambda!24052 lambda!266137 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274771 () Bool)

(assert (=> b!5274771 (= e!3280261 (forall!14302 (t!374179 (exprs!4778 (h!67307 zl!343))) lambda!266137))))

(assert (= (and d!1697445 (not res!2237417)) b!5274770))

(assert (= (and b!5274770 res!2237418) b!5274771))

(declare-fun b_lambda!203453 () Bool)

(assert (=> (not b_lambda!203453) (not b!5274770)))

(declare-fun m!6313216 () Bool)

(assert (=> b!5274770 m!6313216))

(declare-fun m!6313218 () Bool)

(assert (=> b!5274771 m!6313218))

(assert (=> d!1697181 d!1697445))

(declare-fun d!1697447 () Bool)

(declare-fun res!2237419 () Bool)

(declare-fun e!3280262 () Bool)

(assert (=> d!1697447 (=> res!2237419 e!3280262)))

(assert (=> d!1697447 (= res!2237419 (is-Nil!60858 (exprs!4778 setElem!33770)))))

(assert (=> d!1697447 (= (forall!14302 (exprs!4778 setElem!33770) lambda!266130) e!3280262)))

(declare-fun b!5274772 () Bool)

(declare-fun e!3280263 () Bool)

(assert (=> b!5274772 (= e!3280262 e!3280263)))

(declare-fun res!2237420 () Bool)

(assert (=> b!5274772 (=> (not res!2237420) (not e!3280263))))

(assert (=> b!5274772 (= res!2237420 (dynLambda!24052 lambda!266130 (h!67306 (exprs!4778 setElem!33770))))))

(declare-fun b!5274773 () Bool)

(assert (=> b!5274773 (= e!3280263 (forall!14302 (t!374179 (exprs!4778 setElem!33770)) lambda!266130))))

(assert (= (and d!1697447 (not res!2237419)) b!5274772))

(assert (= (and b!5274772 res!2237420) b!5274773))

(declare-fun b_lambda!203455 () Bool)

(assert (=> (not b_lambda!203455) (not b!5274772)))

(declare-fun m!6313220 () Bool)

(assert (=> b!5274772 m!6313220))

(declare-fun m!6313222 () Bool)

(assert (=> b!5274773 m!6313222))

(assert (=> d!1697147 d!1697447))

(declare-fun d!1697449 () Bool)

(declare-fun c!913921 () Bool)

(assert (=> d!1697449 (= c!913921 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280264 () Bool)

(assert (=> d!1697449 (= (matchZipper!1138 (derivationStepZipper!1137 lt!2157023 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280264)))

(declare-fun b!5274774 () Bool)

(assert (=> b!5274774 (= e!3280264 (nullableZipper!1293 (derivationStepZipper!1137 lt!2157023 (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274775 () Bool)

(assert (=> b!5274775 (= e!3280264 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 lt!2157023 (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697449 c!913921) b!5274774))

(assert (= (and d!1697449 (not c!913921)) b!5274775))

(assert (=> d!1697449 m!6312480))

(assert (=> d!1697449 m!6313124))

(assert (=> b!5274774 m!6312498))

(declare-fun m!6313224 () Bool)

(assert (=> b!5274774 m!6313224))

(assert (=> b!5274775 m!6312480))

(assert (=> b!5274775 m!6313128))

(assert (=> b!5274775 m!6312498))

(assert (=> b!5274775 m!6313128))

(declare-fun m!6313226 () Bool)

(assert (=> b!5274775 m!6313226))

(assert (=> b!5274775 m!6312480))

(assert (=> b!5274775 m!6313132))

(assert (=> b!5274775 m!6313226))

(assert (=> b!5274775 m!6313132))

(declare-fun m!6313228 () Bool)

(assert (=> b!5274775 m!6313228))

(assert (=> b!5273761 d!1697449))

(declare-fun bs!1221976 () Bool)

(declare-fun d!1697451 () Bool)

(assert (= bs!1221976 (and d!1697451 b!5273632)))

(declare-fun lambda!266201 () Int)

(assert (=> bs!1221976 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266201 lambda!266112))))

(declare-fun bs!1221977 () Bool)

(assert (= bs!1221977 (and d!1697451 d!1697177)))

(assert (=> bs!1221977 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266201 lambda!266134))))

(declare-fun bs!1221978 () Bool)

(assert (= bs!1221978 (and d!1697451 d!1697387)))

(assert (=> bs!1221978 (= lambda!266201 lambda!266194)))

(declare-fun bs!1221979 () Bool)

(assert (= bs!1221979 (and d!1697451 d!1697429)))

(assert (=> bs!1221979 (= lambda!266201 lambda!266198)))

(assert (=> d!1697451 true))

(assert (=> d!1697451 (= (derivationStepZipper!1137 lt!2157023 (head!11304 (t!374178 s!2326))) (flatMap!621 lt!2157023 lambda!266201))))

(declare-fun bs!1221980 () Bool)

(assert (= bs!1221980 d!1697451))

(declare-fun m!6313230 () Bool)

(assert (=> bs!1221980 m!6313230))

(assert (=> b!5273761 d!1697451))

(assert (=> b!5273761 d!1697389))

(assert (=> b!5273761 d!1697391))

(declare-fun d!1697453 () Bool)

(assert (=> d!1697453 true))

(assert (=> d!1697453 true))

(declare-fun res!2237423 () Bool)

(assert (=> d!1697453 (= (choose!39350 lambda!266111) res!2237423)))

(assert (=> d!1697203 d!1697453))

(declare-fun b!5274776 () Bool)

(declare-fun e!3280268 () Bool)

(declare-fun call!375174 () Bool)

(assert (=> b!5274776 (= e!3280268 call!375174)))

(declare-fun b!5274777 () Bool)

(declare-fun res!2237428 () Bool)

(declare-fun e!3280269 () Bool)

(assert (=> b!5274777 (=> res!2237428 e!3280269)))

(assert (=> b!5274777 (= res!2237428 (not (is-Concat!23739 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292))))))))

(declare-fun e!3280271 () Bool)

(assert (=> b!5274777 (= e!3280271 e!3280269)))

(declare-fun b!5274778 () Bool)

(declare-fun e!3280266 () Bool)

(declare-fun call!375175 () Bool)

(assert (=> b!5274778 (= e!3280266 call!375175)))

(declare-fun d!1697455 () Bool)

(declare-fun res!2237426 () Bool)

(declare-fun e!3280265 () Bool)

(assert (=> d!1697455 (=> res!2237426 e!3280265)))

(assert (=> d!1697455 (= res!2237426 (is-ElementMatch!14894 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))

(assert (=> d!1697455 (= (validRegex!6630 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))) e!3280265)))

(declare-fun b!5274779 () Bool)

(assert (=> b!5274779 (= e!3280269 e!3280266)))

(declare-fun res!2237425 () Bool)

(assert (=> b!5274779 (=> (not res!2237425) (not e!3280266))))

(declare-fun call!375176 () Bool)

(assert (=> b!5274779 (= res!2237425 call!375176)))

(declare-fun b!5274780 () Bool)

(declare-fun e!3280270 () Bool)

(assert (=> b!5274780 (= e!3280270 call!375175)))

(declare-fun c!913922 () Bool)

(declare-fun c!913923 () Bool)

(declare-fun bm!375169 () Bool)

(assert (=> bm!375169 (= call!375174 (validRegex!6630 (ite c!913923 (reg!15223 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))) (ite c!913922 (regTwo!30301 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))) (regTwo!30300 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292))))))))))

(declare-fun b!5274781 () Bool)

(declare-fun e!3280267 () Bool)

(assert (=> b!5274781 (= e!3280267 e!3280271)))

(assert (=> b!5274781 (= c!913922 (is-Union!14894 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))

(declare-fun bm!375170 () Bool)

(assert (=> bm!375170 (= call!375175 call!375174)))

(declare-fun b!5274782 () Bool)

(assert (=> b!5274782 (= e!3280265 e!3280267)))

(assert (=> b!5274782 (= c!913923 (is-Star!14894 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))

(declare-fun b!5274783 () Bool)

(declare-fun res!2237427 () Bool)

(assert (=> b!5274783 (=> (not res!2237427) (not e!3280270))))

(assert (=> b!5274783 (= res!2237427 call!375176)))

(assert (=> b!5274783 (= e!3280271 e!3280270)))

(declare-fun b!5274784 () Bool)

(assert (=> b!5274784 (= e!3280267 e!3280268)))

(declare-fun res!2237424 () Bool)

(assert (=> b!5274784 (= res!2237424 (not (nullable!5063 (reg!15223 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))))

(assert (=> b!5274784 (=> (not res!2237424) (not e!3280268))))

(declare-fun bm!375171 () Bool)

(assert (=> bm!375171 (= call!375176 (validRegex!6630 (ite c!913922 (regOne!30301 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))) (regOne!30300 (ite c!913670 (reg!15223 r!7292) (ite c!913669 (regTwo!30301 r!7292) (regTwo!30300 r!7292)))))))))

(assert (= (and d!1697455 (not res!2237426)) b!5274782))

(assert (= (and b!5274782 c!913923) b!5274784))

(assert (= (and b!5274782 (not c!913923)) b!5274781))

(assert (= (and b!5274784 res!2237424) b!5274776))

(assert (= (and b!5274781 c!913922) b!5274783))

(assert (= (and b!5274781 (not c!913922)) b!5274777))

(assert (= (and b!5274783 res!2237427) b!5274780))

(assert (= (and b!5274777 (not res!2237428)) b!5274779))

(assert (= (and b!5274779 res!2237425) b!5274778))

(assert (= (or b!5274780 b!5274778) bm!375170))

(assert (= (or b!5274783 b!5274779) bm!375171))

(assert (= (or b!5274776 bm!375170) bm!375169))

(declare-fun m!6313232 () Bool)

(assert (=> bm!375169 m!6313232))

(declare-fun m!6313234 () Bool)

(assert (=> b!5274784 m!6313234))

(declare-fun m!6313236 () Bool)

(assert (=> bm!375171 m!6313236))

(assert (=> bm!375026 d!1697455))

(declare-fun d!1697457 () Bool)

(declare-fun c!913924 () Bool)

(assert (=> d!1697457 (= c!913924 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280272 () Bool)

(assert (=> d!1697457 (= (matchZipper!1138 (derivationStepZipper!1137 lt!2157022 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280272)))

(declare-fun b!5274785 () Bool)

(assert (=> b!5274785 (= e!3280272 (nullableZipper!1293 (derivationStepZipper!1137 lt!2157022 (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274786 () Bool)

(assert (=> b!5274786 (= e!3280272 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 lt!2157022 (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697457 c!913924) b!5274785))

(assert (= (and d!1697457 (not c!913924)) b!5274786))

(assert (=> d!1697457 m!6312480))

(assert (=> d!1697457 m!6313124))

(assert (=> b!5274785 m!6312478))

(declare-fun m!6313238 () Bool)

(assert (=> b!5274785 m!6313238))

(assert (=> b!5274786 m!6312480))

(assert (=> b!5274786 m!6313128))

(assert (=> b!5274786 m!6312478))

(assert (=> b!5274786 m!6313128))

(declare-fun m!6313240 () Bool)

(assert (=> b!5274786 m!6313240))

(assert (=> b!5274786 m!6312480))

(assert (=> b!5274786 m!6313132))

(assert (=> b!5274786 m!6313240))

(assert (=> b!5274786 m!6313132))

(declare-fun m!6313242 () Bool)

(assert (=> b!5274786 m!6313242))

(assert (=> b!5273755 d!1697457))

(declare-fun bs!1221981 () Bool)

(declare-fun d!1697459 () Bool)

(assert (= bs!1221981 (and d!1697459 b!5273632)))

(declare-fun lambda!266202 () Int)

(assert (=> bs!1221981 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266202 lambda!266112))))

(declare-fun bs!1221982 () Bool)

(assert (= bs!1221982 (and d!1697459 d!1697429)))

(assert (=> bs!1221982 (= lambda!266202 lambda!266198)))

(declare-fun bs!1221983 () Bool)

(assert (= bs!1221983 (and d!1697459 d!1697177)))

(assert (=> bs!1221983 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266202 lambda!266134))))

(declare-fun bs!1221984 () Bool)

(assert (= bs!1221984 (and d!1697459 d!1697387)))

(assert (=> bs!1221984 (= lambda!266202 lambda!266194)))

(declare-fun bs!1221985 () Bool)

(assert (= bs!1221985 (and d!1697459 d!1697451)))

(assert (=> bs!1221985 (= lambda!266202 lambda!266201)))

(assert (=> d!1697459 true))

(assert (=> d!1697459 (= (derivationStepZipper!1137 lt!2157022 (head!11304 (t!374178 s!2326))) (flatMap!621 lt!2157022 lambda!266202))))

(declare-fun bs!1221986 () Bool)

(assert (= bs!1221986 d!1697459))

(declare-fun m!6313244 () Bool)

(assert (=> bs!1221986 m!6313244))

(assert (=> b!5273755 d!1697459))

(assert (=> b!5273755 d!1697389))

(assert (=> b!5273755 d!1697391))

(declare-fun d!1697461 () Bool)

(assert (=> d!1697461 (= (isDefined!11708 lt!2157134) (not (isEmpty!32814 lt!2157134)))))

(declare-fun bs!1221987 () Bool)

(assert (= bs!1221987 d!1697461))

(declare-fun m!6313246 () Bool)

(assert (=> bs!1221987 m!6313246))

(assert (=> d!1697201 d!1697461))

(declare-fun b!5274787 () Bool)

(declare-fun e!3280275 () Bool)

(declare-fun e!3280273 () Bool)

(assert (=> b!5274787 (= e!3280275 e!3280273)))

(declare-fun res!2237432 () Bool)

(assert (=> b!5274787 (=> res!2237432 e!3280273)))

(declare-fun call!375177 () Bool)

(assert (=> b!5274787 (= res!2237432 call!375177)))

(declare-fun b!5274788 () Bool)

(declare-fun e!3280276 () Bool)

(assert (=> b!5274788 (= e!3280276 (matchR!7079 (derivativeStep!4114 (regOne!30300 r!7292) (head!11304 Nil!60857)) (tail!10401 Nil!60857)))))

(declare-fun b!5274789 () Bool)

(assert (=> b!5274789 (= e!3280276 (nullable!5063 (regOne!30300 r!7292)))))

(declare-fun b!5274790 () Bool)

(declare-fun res!2237430 () Bool)

(declare-fun e!3280278 () Bool)

(assert (=> b!5274790 (=> res!2237430 e!3280278)))

(declare-fun e!3280279 () Bool)

(assert (=> b!5274790 (= res!2237430 e!3280279)))

(declare-fun res!2237434 () Bool)

(assert (=> b!5274790 (=> (not res!2237434) (not e!3280279))))

(declare-fun lt!2157200 () Bool)

(assert (=> b!5274790 (= res!2237434 lt!2157200)))

(declare-fun b!5274791 () Bool)

(assert (=> b!5274791 (= e!3280278 e!3280275)))

(declare-fun res!2237431 () Bool)

(assert (=> b!5274791 (=> (not res!2237431) (not e!3280275))))

(assert (=> b!5274791 (= res!2237431 (not lt!2157200))))

(declare-fun b!5274792 () Bool)

(declare-fun e!3280274 () Bool)

(assert (=> b!5274792 (= e!3280274 (not lt!2157200))))

(declare-fun b!5274793 () Bool)

(declare-fun e!3280277 () Bool)

(assert (=> b!5274793 (= e!3280277 e!3280274)))

(declare-fun c!913925 () Bool)

(assert (=> b!5274793 (= c!913925 (is-EmptyLang!14894 (regOne!30300 r!7292)))))

(declare-fun b!5274794 () Bool)

(assert (=> b!5274794 (= e!3280277 (= lt!2157200 call!375177))))

(declare-fun b!5274795 () Bool)

(assert (=> b!5274795 (= e!3280273 (not (= (head!11304 Nil!60857) (c!913618 (regOne!30300 r!7292)))))))

(declare-fun b!5274796 () Bool)

(declare-fun res!2237433 () Bool)

(assert (=> b!5274796 (=> res!2237433 e!3280278)))

(assert (=> b!5274796 (= res!2237433 (not (is-ElementMatch!14894 (regOne!30300 r!7292))))))

(assert (=> b!5274796 (= e!3280274 e!3280278)))

(declare-fun b!5274797 () Bool)

(declare-fun res!2237436 () Bool)

(assert (=> b!5274797 (=> res!2237436 e!3280273)))

(assert (=> b!5274797 (= res!2237436 (not (isEmpty!32813 (tail!10401 Nil!60857))))))

(declare-fun b!5274798 () Bool)

(assert (=> b!5274798 (= e!3280279 (= (head!11304 Nil!60857) (c!913618 (regOne!30300 r!7292))))))

(declare-fun b!5274799 () Bool)

(declare-fun res!2237435 () Bool)

(assert (=> b!5274799 (=> (not res!2237435) (not e!3280279))))

(assert (=> b!5274799 (= res!2237435 (isEmpty!32813 (tail!10401 Nil!60857)))))

(declare-fun d!1697463 () Bool)

(assert (=> d!1697463 e!3280277))

(declare-fun c!913927 () Bool)

(assert (=> d!1697463 (= c!913927 (is-EmptyExpr!14894 (regOne!30300 r!7292)))))

(assert (=> d!1697463 (= lt!2157200 e!3280276)))

(declare-fun c!913926 () Bool)

(assert (=> d!1697463 (= c!913926 (isEmpty!32813 Nil!60857))))

(assert (=> d!1697463 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697463 (= (matchR!7079 (regOne!30300 r!7292) Nil!60857) lt!2157200)))

(declare-fun bm!375172 () Bool)

(assert (=> bm!375172 (= call!375177 (isEmpty!32813 Nil!60857))))

(declare-fun b!5274800 () Bool)

(declare-fun res!2237429 () Bool)

(assert (=> b!5274800 (=> (not res!2237429) (not e!3280279))))

(assert (=> b!5274800 (= res!2237429 (not call!375177))))

(assert (= (and d!1697463 c!913926) b!5274789))

(assert (= (and d!1697463 (not c!913926)) b!5274788))

(assert (= (and d!1697463 c!913927) b!5274794))

(assert (= (and d!1697463 (not c!913927)) b!5274793))

(assert (= (and b!5274793 c!913925) b!5274792))

(assert (= (and b!5274793 (not c!913925)) b!5274796))

(assert (= (and b!5274796 (not res!2237433)) b!5274790))

(assert (= (and b!5274790 res!2237434) b!5274800))

(assert (= (and b!5274800 res!2237429) b!5274799))

(assert (= (and b!5274799 res!2237435) b!5274798))

(assert (= (and b!5274790 (not res!2237430)) b!5274791))

(assert (= (and b!5274791 res!2237431) b!5274787))

(assert (= (and b!5274787 (not res!2237432)) b!5274797))

(assert (= (and b!5274797 (not res!2237436)) b!5274795))

(assert (= (or b!5274794 b!5274787 b!5274800) bm!375172))

(declare-fun m!6313248 () Bool)

(assert (=> b!5274797 m!6313248))

(assert (=> b!5274797 m!6313248))

(declare-fun m!6313250 () Bool)

(assert (=> b!5274797 m!6313250))

(assert (=> b!5274799 m!6313248))

(assert (=> b!5274799 m!6313248))

(assert (=> b!5274799 m!6313250))

(declare-fun m!6313252 () Bool)

(assert (=> b!5274788 m!6313252))

(assert (=> b!5274788 m!6313252))

(declare-fun m!6313254 () Bool)

(assert (=> b!5274788 m!6313254))

(assert (=> b!5274788 m!6313248))

(assert (=> b!5274788 m!6313254))

(assert (=> b!5274788 m!6313248))

(declare-fun m!6313256 () Bool)

(assert (=> b!5274788 m!6313256))

(declare-fun m!6313258 () Bool)

(assert (=> bm!375172 m!6313258))

(assert (=> b!5274789 m!6313102))

(assert (=> b!5274798 m!6313252))

(assert (=> b!5274795 m!6313252))

(assert (=> d!1697463 m!6313258))

(assert (=> d!1697463 m!6312672))

(assert (=> d!1697201 d!1697463))

(declare-fun b!5274801 () Bool)

(declare-fun e!3280283 () Bool)

(declare-fun call!375178 () Bool)

(assert (=> b!5274801 (= e!3280283 call!375178)))

(declare-fun b!5274802 () Bool)

(declare-fun res!2237441 () Bool)

(declare-fun e!3280284 () Bool)

(assert (=> b!5274802 (=> res!2237441 e!3280284)))

(assert (=> b!5274802 (= res!2237441 (not (is-Concat!23739 (regOne!30300 r!7292))))))

(declare-fun e!3280286 () Bool)

(assert (=> b!5274802 (= e!3280286 e!3280284)))

(declare-fun b!5274803 () Bool)

(declare-fun e!3280281 () Bool)

(declare-fun call!375179 () Bool)

(assert (=> b!5274803 (= e!3280281 call!375179)))

(declare-fun d!1697465 () Bool)

(declare-fun res!2237439 () Bool)

(declare-fun e!3280280 () Bool)

(assert (=> d!1697465 (=> res!2237439 e!3280280)))

(assert (=> d!1697465 (= res!2237439 (is-ElementMatch!14894 (regOne!30300 r!7292)))))

(assert (=> d!1697465 (= (validRegex!6630 (regOne!30300 r!7292)) e!3280280)))

(declare-fun b!5274804 () Bool)

(assert (=> b!5274804 (= e!3280284 e!3280281)))

(declare-fun res!2237438 () Bool)

(assert (=> b!5274804 (=> (not res!2237438) (not e!3280281))))

(declare-fun call!375180 () Bool)

(assert (=> b!5274804 (= res!2237438 call!375180)))

(declare-fun b!5274805 () Bool)

(declare-fun e!3280285 () Bool)

(assert (=> b!5274805 (= e!3280285 call!375179)))

(declare-fun c!913929 () Bool)

(declare-fun bm!375173 () Bool)

(declare-fun c!913928 () Bool)

(assert (=> bm!375173 (= call!375178 (validRegex!6630 (ite c!913929 (reg!15223 (regOne!30300 r!7292)) (ite c!913928 (regTwo!30301 (regOne!30300 r!7292)) (regTwo!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274806 () Bool)

(declare-fun e!3280282 () Bool)

(assert (=> b!5274806 (= e!3280282 e!3280286)))

(assert (=> b!5274806 (= c!913928 (is-Union!14894 (regOne!30300 r!7292)))))

(declare-fun bm!375174 () Bool)

(assert (=> bm!375174 (= call!375179 call!375178)))

(declare-fun b!5274807 () Bool)

(assert (=> b!5274807 (= e!3280280 e!3280282)))

(assert (=> b!5274807 (= c!913929 (is-Star!14894 (regOne!30300 r!7292)))))

(declare-fun b!5274808 () Bool)

(declare-fun res!2237440 () Bool)

(assert (=> b!5274808 (=> (not res!2237440) (not e!3280285))))

(assert (=> b!5274808 (= res!2237440 call!375180)))

(assert (=> b!5274808 (= e!3280286 e!3280285)))

(declare-fun b!5274809 () Bool)

(assert (=> b!5274809 (= e!3280282 e!3280283)))

(declare-fun res!2237437 () Bool)

(assert (=> b!5274809 (= res!2237437 (not (nullable!5063 (reg!15223 (regOne!30300 r!7292)))))))

(assert (=> b!5274809 (=> (not res!2237437) (not e!3280283))))

(declare-fun bm!375175 () Bool)

(assert (=> bm!375175 (= call!375180 (validRegex!6630 (ite c!913928 (regOne!30301 (regOne!30300 r!7292)) (regOne!30300 (regOne!30300 r!7292)))))))

(assert (= (and d!1697465 (not res!2237439)) b!5274807))

(assert (= (and b!5274807 c!913929) b!5274809))

(assert (= (and b!5274807 (not c!913929)) b!5274806))

(assert (= (and b!5274809 res!2237437) b!5274801))

(assert (= (and b!5274806 c!913928) b!5274808))

(assert (= (and b!5274806 (not c!913928)) b!5274802))

(assert (= (and b!5274808 res!2237440) b!5274805))

(assert (= (and b!5274802 (not res!2237441)) b!5274804))

(assert (= (and b!5274804 res!2237438) b!5274803))

(assert (= (or b!5274805 b!5274803) bm!375174))

(assert (= (or b!5274808 b!5274804) bm!375175))

(assert (= (or b!5274801 bm!375174) bm!375173))

(declare-fun m!6313260 () Bool)

(assert (=> bm!375173 m!6313260))

(declare-fun m!6313262 () Bool)

(assert (=> b!5274809 m!6313262))

(declare-fun m!6313264 () Bool)

(assert (=> bm!375175 m!6313264))

(assert (=> d!1697201 d!1697465))

(assert (=> b!5274084 d!1697349))

(assert (=> b!5274084 d!1697351))

(declare-fun d!1697467 () Bool)

(assert (=> d!1697467 (= (head!11305 (exprs!4778 (h!67307 zl!343))) (h!67306 (exprs!4778 (h!67307 zl!343))))))

(assert (=> b!5273890 d!1697467))

(assert (=> b!5273764 d!1697135))

(declare-fun d!1697469 () Bool)

(assert (=> d!1697469 (= ($colon$colon!1343 (exprs!4778 lt!2157008) (ite (or c!913660 c!913661) (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 r!7292)))) (Cons!60858 (ite (or c!913660 c!913661) (regTwo!30300 (regTwo!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 r!7292))) (exprs!4778 lt!2157008)))))

(assert (=> bm!375019 d!1697469))

(declare-fun d!1697471 () Bool)

(assert (=> d!1697471 (= (isUnion!268 lt!2157124) (is-Union!14894 lt!2157124))))

(assert (=> b!5273955 d!1697471))

(declare-fun bs!1221988 () Bool)

(declare-fun d!1697473 () Bool)

(assert (= bs!1221988 (and d!1697473 d!1697363)))

(declare-fun lambda!266203 () Int)

(assert (=> bs!1221988 (= lambda!266203 lambda!266193)))

(declare-fun bs!1221989 () Bool)

(assert (= bs!1221989 (and d!1697473 d!1697397)))

(assert (=> bs!1221989 (= lambda!266203 lambda!266195)))

(assert (=> d!1697473 (= (nullableZipper!1293 lt!2157017) (exists!1996 lt!2157017 lambda!266203))))

(declare-fun bs!1221990 () Bool)

(assert (= bs!1221990 d!1697473))

(declare-fun m!6313266 () Bool)

(assert (=> bs!1221990 m!6313266))

(assert (=> b!5274001 d!1697473))

(assert (=> b!5273894 d!1697161))

(declare-fun bs!1221991 () Bool)

(declare-fun d!1697475 () Bool)

(assert (= bs!1221991 (and d!1697475 d!1697363)))

(declare-fun lambda!266204 () Int)

(assert (=> bs!1221991 (= lambda!266204 lambda!266193)))

(declare-fun bs!1221992 () Bool)

(assert (= bs!1221992 (and d!1697475 d!1697397)))

(assert (=> bs!1221992 (= lambda!266204 lambda!266195)))

(declare-fun bs!1221993 () Bool)

(assert (= bs!1221993 (and d!1697475 d!1697473)))

(assert (=> bs!1221993 (= lambda!266204 lambda!266203)))

(assert (=> d!1697475 (= (nullableZipper!1293 lt!2157024) (exists!1996 lt!2157024 lambda!266204))))

(declare-fun bs!1221994 () Bool)

(assert (= bs!1221994 d!1697475))

(declare-fun m!6313268 () Bool)

(assert (=> bs!1221994 m!6313268))

(assert (=> b!5273758 d!1697475))

(declare-fun d!1697477 () Bool)

(declare-fun c!913930 () Bool)

(assert (=> d!1697477 (= c!913930 (isEmpty!32813 (t!374178 s!2326)))))

(declare-fun e!3280287 () Bool)

(assert (=> d!1697477 (= (matchZipper!1138 (set.union lt!2157023 lt!2157022) (t!374178 s!2326)) e!3280287)))

(declare-fun b!5274810 () Bool)

(assert (=> b!5274810 (= e!3280287 (nullableZipper!1293 (set.union lt!2157023 lt!2157022)))))

(declare-fun b!5274811 () Bool)

(assert (=> b!5274811 (= e!3280287 (matchZipper!1138 (derivationStepZipper!1137 (set.union lt!2157023 lt!2157022) (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))))))

(assert (= (and d!1697477 c!913930) b!5274810))

(assert (= (and d!1697477 (not c!913930)) b!5274811))

(assert (=> d!1697477 m!6312472))

(declare-fun m!6313270 () Bool)

(assert (=> b!5274810 m!6313270))

(assert (=> b!5274811 m!6312476))

(assert (=> b!5274811 m!6312476))

(declare-fun m!6313272 () Bool)

(assert (=> b!5274811 m!6313272))

(assert (=> b!5274811 m!6312480))

(assert (=> b!5274811 m!6313272))

(assert (=> b!5274811 m!6312480))

(declare-fun m!6313274 () Bool)

(assert (=> b!5274811 m!6313274))

(assert (=> d!1697143 d!1697477))

(assert (=> d!1697143 d!1697141))

(declare-fun e!3280288 () Bool)

(declare-fun d!1697479 () Bool)

(assert (=> d!1697479 (= (matchZipper!1138 (set.union lt!2157023 lt!2157022) (t!374178 s!2326)) e!3280288)))

(declare-fun res!2237442 () Bool)

(assert (=> d!1697479 (=> res!2237442 e!3280288)))

(assert (=> d!1697479 (= res!2237442 (matchZipper!1138 lt!2157023 (t!374178 s!2326)))))

(assert (=> d!1697479 true))

(declare-fun _$48!942 () Unit!153094)

(assert (=> d!1697479 (= (choose!39347 lt!2157023 lt!2157022 (t!374178 s!2326)) _$48!942)))

(declare-fun b!5274812 () Bool)

(assert (=> b!5274812 (= e!3280288 (matchZipper!1138 lt!2157022 (t!374178 s!2326)))))

(assert (= (and d!1697479 (not res!2237442)) b!5274812))

(assert (=> d!1697479 m!6312502))

(assert (=> d!1697479 m!6312302))

(assert (=> b!5274812 m!6312348))

(assert (=> d!1697143 d!1697479))

(declare-fun d!1697481 () Bool)

(assert (=> d!1697481 true))

(assert (=> d!1697481 true))

(declare-fun res!2237443 () Bool)

(assert (=> d!1697481 (= (choose!39350 lambda!266110) res!2237443)))

(assert (=> d!1697205 d!1697481))

(declare-fun d!1697483 () Bool)

(assert (=> d!1697483 (= ($colon$colon!1343 (exprs!4778 lt!2157008) (ite (or c!913692 c!913693) (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67306 (exprs!4778 (h!67307 zl!343))))) (Cons!60858 (ite (or c!913692 c!913693) (regTwo!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))) (h!67306 (exprs!4778 (h!67307 zl!343)))) (exprs!4778 lt!2157008)))))

(assert (=> bm!375037 d!1697483))

(assert (=> b!5273980 d!1697461))

(declare-fun bs!1221995 () Bool)

(declare-fun d!1697485 () Bool)

(assert (= bs!1221995 (and d!1697485 d!1697199)))

(declare-fun lambda!266205 () Int)

(assert (=> bs!1221995 (= lambda!266205 lambda!266143)))

(declare-fun bs!1221996 () Bool)

(assert (= bs!1221996 (and d!1697485 d!1697171)))

(assert (=> bs!1221996 (= lambda!266205 lambda!266131)))

(declare-fun bs!1221997 () Bool)

(assert (= bs!1221997 (and d!1697485 d!1697197)))

(assert (=> bs!1221997 (= lambda!266205 lambda!266140)))

(declare-fun bs!1221998 () Bool)

(assert (= bs!1221998 (and d!1697485 d!1697147)))

(assert (=> bs!1221998 (= lambda!266205 lambda!266130)))

(declare-fun bs!1221999 () Bool)

(assert (= bs!1221999 (and d!1697485 d!1697181)))

(assert (=> bs!1221999 (= lambda!266205 lambda!266137)))

(declare-fun bs!1222000 () Bool)

(assert (= bs!1222000 (and d!1697485 d!1697335)))

(assert (=> bs!1222000 (= lambda!266205 lambda!266190)))

(declare-fun b!5274813 () Bool)

(declare-fun e!3280291 () Bool)

(declare-fun lt!2157201 () Regex!14894)

(assert (=> b!5274813 (= e!3280291 (= lt!2157201 (head!11305 (t!374179 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5274814 () Bool)

(declare-fun e!3280292 () Bool)

(declare-fun e!3280294 () Bool)

(assert (=> b!5274814 (= e!3280292 e!3280294)))

(declare-fun c!913931 () Bool)

(assert (=> b!5274814 (= c!913931 (isEmpty!32809 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274815 () Bool)

(assert (=> b!5274815 (= e!3280291 (isConcat!351 lt!2157201))))

(declare-fun b!5274816 () Bool)

(assert (=> b!5274816 (= e!3280294 e!3280291)))

(declare-fun c!913932 () Bool)

(assert (=> b!5274816 (= c!913932 (isEmpty!32809 (tail!10402 (t!374179 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5274817 () Bool)

(declare-fun e!3280293 () Bool)

(assert (=> b!5274817 (= e!3280293 (isEmpty!32809 (t!374179 (t!374179 (exprs!4778 (h!67307 zl!343))))))))

(declare-fun b!5274818 () Bool)

(declare-fun e!3280290 () Regex!14894)

(assert (=> b!5274818 (= e!3280290 (h!67306 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> d!1697485 e!3280292))

(declare-fun res!2237444 () Bool)

(assert (=> d!1697485 (=> (not res!2237444) (not e!3280292))))

(assert (=> d!1697485 (= res!2237444 (validRegex!6630 lt!2157201))))

(assert (=> d!1697485 (= lt!2157201 e!3280290)))

(declare-fun c!913934 () Bool)

(assert (=> d!1697485 (= c!913934 e!3280293)))

(declare-fun res!2237445 () Bool)

(assert (=> d!1697485 (=> (not res!2237445) (not e!3280293))))

(assert (=> d!1697485 (= res!2237445 (is-Cons!60858 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> d!1697485 (forall!14302 (t!374179 (exprs!4778 (h!67307 zl!343))) lambda!266205)))

(assert (=> d!1697485 (= (generalisedConcat!563 (t!374179 (exprs!4778 (h!67307 zl!343)))) lt!2157201)))

(declare-fun b!5274819 () Bool)

(declare-fun e!3280289 () Regex!14894)

(assert (=> b!5274819 (= e!3280290 e!3280289)))

(declare-fun c!913933 () Bool)

(assert (=> b!5274819 (= c!913933 (is-Cons!60858 (t!374179 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun b!5274820 () Bool)

(assert (=> b!5274820 (= e!3280294 (isEmptyExpr!828 lt!2157201))))

(declare-fun b!5274821 () Bool)

(assert (=> b!5274821 (= e!3280289 (Concat!23739 (h!67306 (t!374179 (exprs!4778 (h!67307 zl!343)))) (generalisedConcat!563 (t!374179 (t!374179 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274822 () Bool)

(assert (=> b!5274822 (= e!3280289 EmptyExpr!14894)))

(assert (= (and d!1697485 res!2237445) b!5274817))

(assert (= (and d!1697485 c!913934) b!5274818))

(assert (= (and d!1697485 (not c!913934)) b!5274819))

(assert (= (and b!5274819 c!913933) b!5274821))

(assert (= (and b!5274819 (not c!913933)) b!5274822))

(assert (= (and d!1697485 res!2237444) b!5274814))

(assert (= (and b!5274814 c!913931) b!5274820))

(assert (= (and b!5274814 (not c!913931)) b!5274816))

(assert (= (and b!5274816 c!913932) b!5274813))

(assert (= (and b!5274816 (not c!913932)) b!5274815))

(declare-fun m!6313276 () Bool)

(assert (=> b!5274821 m!6313276))

(declare-fun m!6313278 () Bool)

(assert (=> b!5274815 m!6313278))

(assert (=> b!5274814 m!6312292))

(declare-fun m!6313280 () Bool)

(assert (=> b!5274813 m!6313280))

(declare-fun m!6313282 () Bool)

(assert (=> b!5274820 m!6313282))

(declare-fun m!6313284 () Bool)

(assert (=> b!5274817 m!6313284))

(declare-fun m!6313286 () Bool)

(assert (=> d!1697485 m!6313286))

(declare-fun m!6313288 () Bool)

(assert (=> d!1697485 m!6313288))

(declare-fun m!6313290 () Bool)

(assert (=> b!5274816 m!6313290))

(assert (=> b!5274816 m!6313290))

(declare-fun m!6313292 () Bool)

(assert (=> b!5274816 m!6313292))

(assert (=> b!5273898 d!1697485))

(declare-fun b!5274823 () Bool)

(declare-fun e!3280295 () (Set Context!8556))

(declare-fun call!375181 () (Set Context!8556))

(assert (=> b!5274823 (= e!3280295 call!375181)))

(declare-fun b!5274824 () Bool)

(declare-fun e!3280296 () Bool)

(assert (=> b!5274824 (= e!3280296 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029)))))))))

(declare-fun d!1697487 () Bool)

(declare-fun c!913936 () Bool)

(assert (=> d!1697487 (= c!913936 e!3280296)))

(declare-fun res!2237446 () Bool)

(assert (=> d!1697487 (=> (not res!2237446) (not e!3280296))))

(assert (=> d!1697487 (= res!2237446 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029))))))))

(declare-fun e!3280297 () (Set Context!8556))

(assert (=> d!1697487 (= (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (h!67305 s!2326)) e!3280297)))

(declare-fun b!5274825 () Bool)

(assert (=> b!5274825 (= e!3280297 e!3280295)))

(declare-fun c!913935 () Bool)

(assert (=> b!5274825 (= c!913935 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029))))))))

(declare-fun b!5274826 () Bool)

(assert (=> b!5274826 (= e!3280295 (as set.empty (Set Context!8556)))))

(declare-fun b!5274827 () Bool)

(assert (=> b!5274827 (= e!3280297 (set.union call!375181 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029)))))) (h!67305 s!2326))))))

(declare-fun bm!375176 () Bool)

(assert (=> bm!375176 (= call!375181 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029)))))) (h!67305 s!2326)))))

(assert (= (and d!1697487 res!2237446) b!5274824))

(assert (= (and d!1697487 c!913936) b!5274827))

(assert (= (and d!1697487 (not c!913936)) b!5274825))

(assert (= (and b!5274825 c!913935) b!5274823))

(assert (= (and b!5274825 (not c!913935)) b!5274826))

(assert (= (or b!5274827 b!5274823) bm!375176))

(declare-fun m!6313294 () Bool)

(assert (=> b!5274824 m!6313294))

(declare-fun m!6313296 () Bool)

(assert (=> b!5274827 m!6313296))

(declare-fun m!6313298 () Bool)

(assert (=> bm!375176 m!6313298))

(assert (=> b!5273869 d!1697487))

(declare-fun d!1697489 () Bool)

(assert (=> d!1697489 (= (nullable!5063 (h!67306 (exprs!4778 lt!2157020))) (nullableFct!1445 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun bs!1222001 () Bool)

(assert (= bs!1222001 d!1697489))

(declare-fun m!6313300 () Bool)

(assert (=> bs!1222001 m!6313300))

(assert (=> b!5273803 d!1697489))

(declare-fun d!1697491 () Bool)

(declare-fun c!913939 () Bool)

(assert (=> d!1697491 (= c!913939 (is-Nil!60859 lt!2157151))))

(declare-fun e!3280300 () (Set Context!8556))

(assert (=> d!1697491 (= (content!10828 lt!2157151) e!3280300)))

(declare-fun b!5274832 () Bool)

(assert (=> b!5274832 (= e!3280300 (as set.empty (Set Context!8556)))))

(declare-fun b!5274833 () Bool)

(assert (=> b!5274833 (= e!3280300 (set.union (set.insert (h!67307 lt!2157151) (as set.empty (Set Context!8556))) (content!10828 (t!374180 lt!2157151))))))

(assert (= (and d!1697491 c!913939) b!5274832))

(assert (= (and d!1697491 (not c!913939)) b!5274833))

(declare-fun m!6313302 () Bool)

(assert (=> b!5274833 m!6313302))

(declare-fun m!6313304 () Bool)

(assert (=> b!5274833 m!6313304))

(assert (=> b!5274090 d!1697491))

(declare-fun b!5274834 () Bool)

(declare-fun e!3280303 () Bool)

(declare-fun e!3280301 () Bool)

(assert (=> b!5274834 (= e!3280303 e!3280301)))

(declare-fun res!2237450 () Bool)

(assert (=> b!5274834 (=> res!2237450 e!3280301)))

(declare-fun call!375182 () Bool)

(assert (=> b!5274834 (= res!2237450 call!375182)))

(declare-fun b!5274835 () Bool)

(declare-fun e!3280304 () Bool)

(assert (=> b!5274835 (= e!3280304 (matchR!7079 (derivativeStep!4114 (derivativeStep!4114 r!7292 (head!11304 s!2326)) (head!11304 (tail!10401 s!2326))) (tail!10401 (tail!10401 s!2326))))))

(declare-fun b!5274836 () Bool)

(assert (=> b!5274836 (= e!3280304 (nullable!5063 (derivativeStep!4114 r!7292 (head!11304 s!2326))))))

(declare-fun b!5274837 () Bool)

(declare-fun res!2237448 () Bool)

(declare-fun e!3280306 () Bool)

(assert (=> b!5274837 (=> res!2237448 e!3280306)))

(declare-fun e!3280307 () Bool)

(assert (=> b!5274837 (= res!2237448 e!3280307)))

(declare-fun res!2237452 () Bool)

(assert (=> b!5274837 (=> (not res!2237452) (not e!3280307))))

(declare-fun lt!2157202 () Bool)

(assert (=> b!5274837 (= res!2237452 lt!2157202)))

(declare-fun b!5274838 () Bool)

(assert (=> b!5274838 (= e!3280306 e!3280303)))

(declare-fun res!2237449 () Bool)

(assert (=> b!5274838 (=> (not res!2237449) (not e!3280303))))

(assert (=> b!5274838 (= res!2237449 (not lt!2157202))))

(declare-fun b!5274839 () Bool)

(declare-fun e!3280302 () Bool)

(assert (=> b!5274839 (= e!3280302 (not lt!2157202))))

(declare-fun b!5274840 () Bool)

(declare-fun e!3280305 () Bool)

(assert (=> b!5274840 (= e!3280305 e!3280302)))

(declare-fun c!913940 () Bool)

(assert (=> b!5274840 (= c!913940 (is-EmptyLang!14894 (derivativeStep!4114 r!7292 (head!11304 s!2326))))))

(declare-fun b!5274841 () Bool)

(assert (=> b!5274841 (= e!3280305 (= lt!2157202 call!375182))))

(declare-fun b!5274842 () Bool)

(assert (=> b!5274842 (= e!3280301 (not (= (head!11304 (tail!10401 s!2326)) (c!913618 (derivativeStep!4114 r!7292 (head!11304 s!2326))))))))

(declare-fun b!5274843 () Bool)

(declare-fun res!2237451 () Bool)

(assert (=> b!5274843 (=> res!2237451 e!3280306)))

(assert (=> b!5274843 (= res!2237451 (not (is-ElementMatch!14894 (derivativeStep!4114 r!7292 (head!11304 s!2326)))))))

(assert (=> b!5274843 (= e!3280302 e!3280306)))

(declare-fun b!5274844 () Bool)

(declare-fun res!2237454 () Bool)

(assert (=> b!5274844 (=> res!2237454 e!3280301)))

(assert (=> b!5274844 (= res!2237454 (not (isEmpty!32813 (tail!10401 (tail!10401 s!2326)))))))

(declare-fun b!5274845 () Bool)

(assert (=> b!5274845 (= e!3280307 (= (head!11304 (tail!10401 s!2326)) (c!913618 (derivativeStep!4114 r!7292 (head!11304 s!2326)))))))

(declare-fun b!5274846 () Bool)

(declare-fun res!2237453 () Bool)

(assert (=> b!5274846 (=> (not res!2237453) (not e!3280307))))

(assert (=> b!5274846 (= res!2237453 (isEmpty!32813 (tail!10401 (tail!10401 s!2326))))))

(declare-fun d!1697493 () Bool)

(assert (=> d!1697493 e!3280305))

(declare-fun c!913942 () Bool)

(assert (=> d!1697493 (= c!913942 (is-EmptyExpr!14894 (derivativeStep!4114 r!7292 (head!11304 s!2326))))))

(assert (=> d!1697493 (= lt!2157202 e!3280304)))

(declare-fun c!913941 () Bool)

(assert (=> d!1697493 (= c!913941 (isEmpty!32813 (tail!10401 s!2326)))))

(assert (=> d!1697493 (validRegex!6630 (derivativeStep!4114 r!7292 (head!11304 s!2326)))))

(assert (=> d!1697493 (= (matchR!7079 (derivativeStep!4114 r!7292 (head!11304 s!2326)) (tail!10401 s!2326)) lt!2157202)))

(declare-fun bm!375177 () Bool)

(assert (=> bm!375177 (= call!375182 (isEmpty!32813 (tail!10401 s!2326)))))

(declare-fun b!5274847 () Bool)

(declare-fun res!2237447 () Bool)

(assert (=> b!5274847 (=> (not res!2237447) (not e!3280307))))

(assert (=> b!5274847 (= res!2237447 (not call!375182))))

(assert (= (and d!1697493 c!913941) b!5274836))

(assert (= (and d!1697493 (not c!913941)) b!5274835))

(assert (= (and d!1697493 c!913942) b!5274841))

(assert (= (and d!1697493 (not c!913942)) b!5274840))

(assert (= (and b!5274840 c!913940) b!5274839))

(assert (= (and b!5274840 (not c!913940)) b!5274843))

(assert (= (and b!5274843 (not res!2237451)) b!5274837))

(assert (= (and b!5274837 res!2237452) b!5274847))

(assert (= (and b!5274847 res!2237447) b!5274846))

(assert (= (and b!5274846 res!2237453) b!5274845))

(assert (= (and b!5274837 (not res!2237448)) b!5274838))

(assert (= (and b!5274838 res!2237449) b!5274834))

(assert (= (and b!5274834 (not res!2237450)) b!5274844))

(assert (= (and b!5274844 (not res!2237454)) b!5274842))

(assert (= (or b!5274841 b!5274834 b!5274847) bm!375177))

(assert (=> b!5274844 m!6312706))

(declare-fun m!6313306 () Bool)

(assert (=> b!5274844 m!6313306))

(assert (=> b!5274844 m!6313306))

(declare-fun m!6313308 () Bool)

(assert (=> b!5274844 m!6313308))

(assert (=> b!5274846 m!6312706))

(assert (=> b!5274846 m!6313306))

(assert (=> b!5274846 m!6313306))

(assert (=> b!5274846 m!6313308))

(assert (=> b!5274835 m!6312706))

(declare-fun m!6313310 () Bool)

(assert (=> b!5274835 m!6313310))

(assert (=> b!5274835 m!6312712))

(assert (=> b!5274835 m!6313310))

(declare-fun m!6313312 () Bool)

(assert (=> b!5274835 m!6313312))

(assert (=> b!5274835 m!6312706))

(assert (=> b!5274835 m!6313306))

(assert (=> b!5274835 m!6313312))

(assert (=> b!5274835 m!6313306))

(declare-fun m!6313314 () Bool)

(assert (=> b!5274835 m!6313314))

(assert (=> bm!375177 m!6312706))

(assert (=> bm!375177 m!6312708))

(assert (=> b!5274836 m!6312712))

(declare-fun m!6313316 () Bool)

(assert (=> b!5274836 m!6313316))

(assert (=> b!5274845 m!6312706))

(assert (=> b!5274845 m!6313310))

(assert (=> b!5274842 m!6312706))

(assert (=> b!5274842 m!6313310))

(assert (=> d!1697493 m!6312706))

(assert (=> d!1697493 m!6312708))

(assert (=> d!1697493 m!6312712))

(declare-fun m!6313318 () Bool)

(assert (=> d!1697493 m!6313318))

(assert (=> b!5274075 d!1697493))

(declare-fun b!5274868 () Bool)

(declare-fun e!3280321 () Regex!14894)

(declare-fun e!3280319 () Regex!14894)

(assert (=> b!5274868 (= e!3280321 e!3280319)))

(declare-fun c!913957 () Bool)

(assert (=> b!5274868 (= c!913957 (is-Star!14894 r!7292))))

(declare-fun d!1697495 () Bool)

(declare-fun lt!2157205 () Regex!14894)

(assert (=> d!1697495 (validRegex!6630 lt!2157205)))

(declare-fun e!3280318 () Regex!14894)

(assert (=> d!1697495 (= lt!2157205 e!3280318)))

(declare-fun c!913955 () Bool)

(assert (=> d!1697495 (= c!913955 (or (is-EmptyExpr!14894 r!7292) (is-EmptyLang!14894 r!7292)))))

(assert (=> d!1697495 (validRegex!6630 r!7292)))

(assert (=> d!1697495 (= (derivativeStep!4114 r!7292 (head!11304 s!2326)) lt!2157205)))

(declare-fun bm!375186 () Bool)

(declare-fun call!375191 () Regex!14894)

(declare-fun c!913956 () Bool)

(declare-fun c!913953 () Bool)

(assert (=> bm!375186 (= call!375191 (derivativeStep!4114 (ite c!913953 (regTwo!30301 r!7292) (ite c!913957 (reg!15223 r!7292) (ite c!913956 (regTwo!30300 r!7292) (regOne!30300 r!7292)))) (head!11304 s!2326)))))

(declare-fun b!5274869 () Bool)

(declare-fun e!3280320 () Regex!14894)

(assert (=> b!5274869 (= e!3280318 e!3280320)))

(declare-fun c!913954 () Bool)

(assert (=> b!5274869 (= c!913954 (is-ElementMatch!14894 r!7292))))

(declare-fun call!375192 () Regex!14894)

(declare-fun b!5274870 () Bool)

(declare-fun e!3280322 () Regex!14894)

(declare-fun call!375194 () Regex!14894)

(assert (=> b!5274870 (= e!3280322 (Union!14894 (Concat!23739 call!375194 (regTwo!30300 r!7292)) call!375192))))

(declare-fun b!5274871 () Bool)

(declare-fun call!375193 () Regex!14894)

(assert (=> b!5274871 (= e!3280319 (Concat!23739 call!375193 r!7292))))

(declare-fun b!5274872 () Bool)

(assert (=> b!5274872 (= e!3280320 (ite (= (head!11304 s!2326) (c!913618 r!7292)) EmptyExpr!14894 EmptyLang!14894))))

(declare-fun b!5274873 () Bool)

(assert (=> b!5274873 (= e!3280318 EmptyLang!14894)))

(declare-fun bm!375187 () Bool)

(assert (=> bm!375187 (= call!375193 call!375191)))

(declare-fun bm!375188 () Bool)

(assert (=> bm!375188 (= call!375194 (derivativeStep!4114 (ite c!913953 (regOne!30301 r!7292) (regOne!30300 r!7292)) (head!11304 s!2326)))))

(declare-fun b!5274874 () Bool)

(assert (=> b!5274874 (= e!3280321 (Union!14894 call!375194 call!375191))))

(declare-fun b!5274875 () Bool)

(assert (=> b!5274875 (= c!913956 (nullable!5063 (regOne!30300 r!7292)))))

(assert (=> b!5274875 (= e!3280319 e!3280322)))

(declare-fun b!5274876 () Bool)

(assert (=> b!5274876 (= c!913953 (is-Union!14894 r!7292))))

(assert (=> b!5274876 (= e!3280320 e!3280321)))

(declare-fun b!5274877 () Bool)

(assert (=> b!5274877 (= e!3280322 (Union!14894 (Concat!23739 call!375192 (regTwo!30300 r!7292)) EmptyLang!14894))))

(declare-fun bm!375189 () Bool)

(assert (=> bm!375189 (= call!375192 call!375193)))

(assert (= (and d!1697495 c!913955) b!5274873))

(assert (= (and d!1697495 (not c!913955)) b!5274869))

(assert (= (and b!5274869 c!913954) b!5274872))

(assert (= (and b!5274869 (not c!913954)) b!5274876))

(assert (= (and b!5274876 c!913953) b!5274874))

(assert (= (and b!5274876 (not c!913953)) b!5274868))

(assert (= (and b!5274868 c!913957) b!5274871))

(assert (= (and b!5274868 (not c!913957)) b!5274875))

(assert (= (and b!5274875 c!913956) b!5274870))

(assert (= (and b!5274875 (not c!913956)) b!5274877))

(assert (= (or b!5274870 b!5274877) bm!375189))

(assert (= (or b!5274871 bm!375189) bm!375187))

(assert (= (or b!5274874 bm!375187) bm!375186))

(assert (= (or b!5274874 b!5274870) bm!375188))

(declare-fun m!6313320 () Bool)

(assert (=> d!1697495 m!6313320))

(assert (=> d!1697495 m!6312374))

(assert (=> bm!375186 m!6312710))

(declare-fun m!6313322 () Bool)

(assert (=> bm!375186 m!6313322))

(assert (=> bm!375188 m!6312710))

(declare-fun m!6313324 () Bool)

(assert (=> bm!375188 m!6313324))

(assert (=> b!5274875 m!6313102))

(assert (=> b!5274075 d!1697495))

(assert (=> b!5274075 d!1697333))

(assert (=> b!5274075 d!1697351))

(declare-fun b!5274878 () Bool)

(declare-fun e!3280324 () (Set Context!8556))

(declare-fun e!3280326 () (Set Context!8556))

(assert (=> b!5274878 (= e!3280324 e!3280326)))

(declare-fun c!913962 () Bool)

(assert (=> b!5274878 (= c!913962 (is-Union!14894 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274879 () Bool)

(declare-fun c!913959 () Bool)

(declare-fun e!3280328 () Bool)

(assert (=> b!5274879 (= c!913959 e!3280328)))

(declare-fun res!2237455 () Bool)

(assert (=> b!5274879 (=> (not res!2237455) (not e!3280328))))

(assert (=> b!5274879 (= res!2237455 (is-Concat!23739 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))))))

(declare-fun e!3280325 () (Set Context!8556))

(assert (=> b!5274879 (= e!3280326 e!3280325)))

(declare-fun bm!375190 () Bool)

(declare-fun call!375198 () (Set Context!8556))

(declare-fun call!375200 () (Set Context!8556))

(assert (=> bm!375190 (= call!375198 call!375200)))

(declare-fun call!375195 () List!60982)

(declare-fun bm!375191 () Bool)

(declare-fun call!375196 () (Set Context!8556))

(assert (=> bm!375191 (= call!375196 (derivationStepZipperDown!342 (ite c!913962 (regOne!30301 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (regOne!30300 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))) (ite c!913962 (ite c!913663 lt!2157008 (Context!8557 call!375019)) (Context!8557 call!375195)) (h!67305 s!2326)))))

(declare-fun b!5274880 () Bool)

(assert (=> b!5274880 (= e!3280326 (set.union call!375196 call!375200))))

(declare-fun call!375199 () List!60982)

(declare-fun c!913960 () Bool)

(declare-fun bm!375192 () Bool)

(assert (=> bm!375192 (= call!375200 (derivationStepZipperDown!342 (ite c!913962 (regTwo!30301 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (ite c!913959 (regTwo!30300 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (ite c!913960 (regOne!30300 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (reg!15223 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))))) (ite (or c!913962 c!913959) (ite c!913663 lt!2157008 (Context!8557 call!375019)) (Context!8557 call!375199)) (h!67305 s!2326)))))

(declare-fun bm!375193 () Bool)

(declare-fun call!375197 () (Set Context!8556))

(assert (=> bm!375193 (= call!375197 call!375198)))

(declare-fun bm!375194 () Bool)

(assert (=> bm!375194 (= call!375199 call!375195)))

(declare-fun b!5274881 () Bool)

(declare-fun e!3280327 () (Set Context!8556))

(assert (=> b!5274881 (= e!3280327 (as set.empty (Set Context!8556)))))

(declare-fun c!913961 () Bool)

(declare-fun d!1697497 () Bool)

(assert (=> d!1697497 (= c!913961 (and (is-ElementMatch!14894 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (= (c!913618 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (h!67305 s!2326))))))

(assert (=> d!1697497 (= (derivationStepZipperDown!342 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))) (ite c!913663 lt!2157008 (Context!8557 call!375019)) (h!67305 s!2326)) e!3280324)))

(declare-fun b!5274882 () Bool)

(declare-fun c!913958 () Bool)

(assert (=> b!5274882 (= c!913958 (is-Star!14894 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))))))

(declare-fun e!3280323 () (Set Context!8556))

(assert (=> b!5274882 (= e!3280323 e!3280327)))

(declare-fun b!5274883 () Bool)

(assert (=> b!5274883 (= e!3280328 (nullable!5063 (regOne!30300 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))))))

(declare-fun b!5274884 () Bool)

(assert (=> b!5274884 (= e!3280325 e!3280323)))

(assert (=> b!5274884 (= c!913960 (is-Concat!23739 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274885 () Bool)

(assert (=> b!5274885 (= e!3280324 (set.insert (ite c!913663 lt!2157008 (Context!8557 call!375019)) (as set.empty (Set Context!8556))))))

(declare-fun b!5274886 () Bool)

(assert (=> b!5274886 (= e!3280325 (set.union call!375196 call!375198))))

(declare-fun b!5274887 () Bool)

(assert (=> b!5274887 (= e!3280323 call!375197)))

(declare-fun b!5274888 () Bool)

(assert (=> b!5274888 (= e!3280327 call!375197)))

(declare-fun bm!375195 () Bool)

(assert (=> bm!375195 (= call!375195 ($colon$colon!1343 (exprs!4778 (ite c!913663 lt!2157008 (Context!8557 call!375019))) (ite (or c!913959 c!913960) (regTwo!30300 (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292))))) (ite c!913663 (regOne!30301 (regTwo!30300 (regOne!30300 r!7292))) (regOne!30300 (regTwo!30300 (regOne!30300 r!7292)))))))))

(assert (= (and d!1697497 c!913961) b!5274885))

(assert (= (and d!1697497 (not c!913961)) b!5274878))

(assert (= (and b!5274878 c!913962) b!5274880))

(assert (= (and b!5274878 (not c!913962)) b!5274879))

(assert (= (and b!5274879 res!2237455) b!5274883))

(assert (= (and b!5274879 c!913959) b!5274886))

(assert (= (and b!5274879 (not c!913959)) b!5274884))

(assert (= (and b!5274884 c!913960) b!5274887))

(assert (= (and b!5274884 (not c!913960)) b!5274882))

(assert (= (and b!5274882 c!913958) b!5274888))

(assert (= (and b!5274882 (not c!913958)) b!5274881))

(assert (= (or b!5274887 b!5274888) bm!375194))

(assert (= (or b!5274887 b!5274888) bm!375193))

(assert (= (or b!5274886 bm!375194) bm!375195))

(assert (= (or b!5274886 bm!375193) bm!375190))

(assert (= (or b!5274880 bm!375190) bm!375192))

(assert (= (or b!5274880 b!5274886) bm!375191))

(declare-fun m!6313326 () Bool)

(assert (=> bm!375192 m!6313326))

(declare-fun m!6313328 () Bool)

(assert (=> bm!375195 m!6313328))

(declare-fun m!6313330 () Bool)

(assert (=> b!5274885 m!6313330))

(declare-fun m!6313332 () Bool)

(assert (=> b!5274883 m!6313332))

(declare-fun m!6313334 () Bool)

(assert (=> bm!375191 m!6313334))

(assert (=> bm!375015 d!1697497))

(declare-fun b!5274889 () Bool)

(declare-fun e!3280332 () Bool)

(declare-fun call!375201 () Bool)

(assert (=> b!5274889 (= e!3280332 call!375201)))

(declare-fun b!5274890 () Bool)

(declare-fun res!2237460 () Bool)

(declare-fun e!3280333 () Bool)

(assert (=> b!5274890 (=> res!2237460 e!3280333)))

(assert (=> b!5274890 (= res!2237460 (not (is-Concat!23739 lt!2157124)))))

(declare-fun e!3280335 () Bool)

(assert (=> b!5274890 (= e!3280335 e!3280333)))

(declare-fun b!5274891 () Bool)

(declare-fun e!3280330 () Bool)

(declare-fun call!375202 () Bool)

(assert (=> b!5274891 (= e!3280330 call!375202)))

(declare-fun d!1697499 () Bool)

(declare-fun res!2237458 () Bool)

(declare-fun e!3280329 () Bool)

(assert (=> d!1697499 (=> res!2237458 e!3280329)))

(assert (=> d!1697499 (= res!2237458 (is-ElementMatch!14894 lt!2157124))))

(assert (=> d!1697499 (= (validRegex!6630 lt!2157124) e!3280329)))

(declare-fun b!5274892 () Bool)

(assert (=> b!5274892 (= e!3280333 e!3280330)))

(declare-fun res!2237457 () Bool)

(assert (=> b!5274892 (=> (not res!2237457) (not e!3280330))))

(declare-fun call!375203 () Bool)

(assert (=> b!5274892 (= res!2237457 call!375203)))

(declare-fun b!5274893 () Bool)

(declare-fun e!3280334 () Bool)

(assert (=> b!5274893 (= e!3280334 call!375202)))

(declare-fun bm!375196 () Bool)

(declare-fun c!913964 () Bool)

(declare-fun c!913963 () Bool)

(assert (=> bm!375196 (= call!375201 (validRegex!6630 (ite c!913964 (reg!15223 lt!2157124) (ite c!913963 (regTwo!30301 lt!2157124) (regTwo!30300 lt!2157124)))))))

(declare-fun b!5274894 () Bool)

(declare-fun e!3280331 () Bool)

(assert (=> b!5274894 (= e!3280331 e!3280335)))

(assert (=> b!5274894 (= c!913963 (is-Union!14894 lt!2157124))))

(declare-fun bm!375197 () Bool)

(assert (=> bm!375197 (= call!375202 call!375201)))

(declare-fun b!5274895 () Bool)

(assert (=> b!5274895 (= e!3280329 e!3280331)))

(assert (=> b!5274895 (= c!913964 (is-Star!14894 lt!2157124))))

(declare-fun b!5274896 () Bool)

(declare-fun res!2237459 () Bool)

(assert (=> b!5274896 (=> (not res!2237459) (not e!3280334))))

(assert (=> b!5274896 (= res!2237459 call!375203)))

(assert (=> b!5274896 (= e!3280335 e!3280334)))

(declare-fun b!5274897 () Bool)

(assert (=> b!5274897 (= e!3280331 e!3280332)))

(declare-fun res!2237456 () Bool)

(assert (=> b!5274897 (= res!2237456 (not (nullable!5063 (reg!15223 lt!2157124))))))

(assert (=> b!5274897 (=> (not res!2237456) (not e!3280332))))

(declare-fun bm!375198 () Bool)

(assert (=> bm!375198 (= call!375203 (validRegex!6630 (ite c!913963 (regOne!30301 lt!2157124) (regOne!30300 lt!2157124))))))

(assert (= (and d!1697499 (not res!2237458)) b!5274895))

(assert (= (and b!5274895 c!913964) b!5274897))

(assert (= (and b!5274895 (not c!913964)) b!5274894))

(assert (= (and b!5274897 res!2237456) b!5274889))

(assert (= (and b!5274894 c!913963) b!5274896))

(assert (= (and b!5274894 (not c!913963)) b!5274890))

(assert (= (and b!5274896 res!2237459) b!5274893))

(assert (= (and b!5274890 (not res!2237460)) b!5274892))

(assert (= (and b!5274892 res!2237457) b!5274891))

(assert (= (or b!5274893 b!5274891) bm!375197))

(assert (= (or b!5274896 b!5274892) bm!375198))

(assert (= (or b!5274889 bm!375197) bm!375196))

(declare-fun m!6313336 () Bool)

(assert (=> bm!375196 m!6313336))

(declare-fun m!6313338 () Bool)

(assert (=> b!5274897 m!6313338))

(declare-fun m!6313340 () Bool)

(assert (=> bm!375198 m!6313340))

(assert (=> d!1697197 d!1697499))

(declare-fun d!1697501 () Bool)

(declare-fun res!2237461 () Bool)

(declare-fun e!3280336 () Bool)

(assert (=> d!1697501 (=> res!2237461 e!3280336)))

(assert (=> d!1697501 (= res!2237461 (is-Nil!60858 (unfocusZipperList!336 zl!343)))))

(assert (=> d!1697501 (= (forall!14302 (unfocusZipperList!336 zl!343) lambda!266140) e!3280336)))

(declare-fun b!5274898 () Bool)

(declare-fun e!3280337 () Bool)

(assert (=> b!5274898 (= e!3280336 e!3280337)))

(declare-fun res!2237462 () Bool)

(assert (=> b!5274898 (=> (not res!2237462) (not e!3280337))))

(assert (=> b!5274898 (= res!2237462 (dynLambda!24052 lambda!266140 (h!67306 (unfocusZipperList!336 zl!343))))))

(declare-fun b!5274899 () Bool)

(assert (=> b!5274899 (= e!3280337 (forall!14302 (t!374179 (unfocusZipperList!336 zl!343)) lambda!266140))))

(assert (= (and d!1697501 (not res!2237461)) b!5274898))

(assert (= (and b!5274898 res!2237462) b!5274899))

(declare-fun b_lambda!203457 () Bool)

(assert (=> (not b_lambda!203457) (not b!5274898)))

(declare-fun m!6313342 () Bool)

(assert (=> b!5274898 m!6313342))

(declare-fun m!6313344 () Bool)

(assert (=> b!5274899 m!6313344))

(assert (=> d!1697197 d!1697501))

(declare-fun b!5274900 () Bool)

(declare-fun e!3280339 () (Set Context!8556))

(declare-fun e!3280341 () (Set Context!8556))

(assert (=> b!5274900 (= e!3280339 e!3280341)))

(declare-fun c!913969 () Bool)

(assert (=> b!5274900 (= c!913969 (is-Union!14894 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun b!5274901 () Bool)

(declare-fun c!913966 () Bool)

(declare-fun e!3280343 () Bool)

(assert (=> b!5274901 (= c!913966 e!3280343)))

(declare-fun res!2237463 () Bool)

(assert (=> b!5274901 (=> (not res!2237463) (not e!3280343))))

(assert (=> b!5274901 (= res!2237463 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun e!3280340 () (Set Context!8556))

(assert (=> b!5274901 (= e!3280341 e!3280340)))

(declare-fun bm!375199 () Bool)

(declare-fun call!375207 () (Set Context!8556))

(declare-fun call!375209 () (Set Context!8556))

(assert (=> bm!375199 (= call!375207 call!375209)))

(declare-fun call!375204 () List!60982)

(declare-fun call!375205 () (Set Context!8556))

(declare-fun bm!375200 () Bool)

(assert (=> bm!375200 (= call!375205 (derivationStepZipperDown!342 (ite c!913969 (regOne!30301 (h!67306 (exprs!4778 lt!2157020))) (regOne!30300 (h!67306 (exprs!4778 lt!2157020)))) (ite c!913969 (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (Context!8557 call!375204)) (h!67305 s!2326)))))

(declare-fun b!5274902 () Bool)

(assert (=> b!5274902 (= e!3280341 (set.union call!375205 call!375209))))

(declare-fun bm!375201 () Bool)

(declare-fun call!375208 () List!60982)

(declare-fun c!913967 () Bool)

(assert (=> bm!375201 (= call!375209 (derivationStepZipperDown!342 (ite c!913969 (regTwo!30301 (h!67306 (exprs!4778 lt!2157020))) (ite c!913966 (regTwo!30300 (h!67306 (exprs!4778 lt!2157020))) (ite c!913967 (regOne!30300 (h!67306 (exprs!4778 lt!2157020))) (reg!15223 (h!67306 (exprs!4778 lt!2157020)))))) (ite (or c!913969 c!913966) (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (Context!8557 call!375208)) (h!67305 s!2326)))))

(declare-fun bm!375202 () Bool)

(declare-fun call!375206 () (Set Context!8556))

(assert (=> bm!375202 (= call!375206 call!375207)))

(declare-fun bm!375203 () Bool)

(assert (=> bm!375203 (= call!375208 call!375204)))

(declare-fun b!5274903 () Bool)

(declare-fun e!3280342 () (Set Context!8556))

(assert (=> b!5274903 (= e!3280342 (as set.empty (Set Context!8556)))))

(declare-fun d!1697503 () Bool)

(declare-fun c!913968 () Bool)

(assert (=> d!1697503 (= c!913968 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 lt!2157020))) (= (c!913618 (h!67306 (exprs!4778 lt!2157020))) (h!67305 s!2326))))))

(assert (=> d!1697503 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157020)) (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (h!67305 s!2326)) e!3280339)))

(declare-fun b!5274904 () Bool)

(declare-fun c!913965 () Bool)

(assert (=> b!5274904 (= c!913965 (is-Star!14894 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun e!3280338 () (Set Context!8556))

(assert (=> b!5274904 (= e!3280338 e!3280342)))

(declare-fun b!5274905 () Bool)

(assert (=> b!5274905 (= e!3280343 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 lt!2157020)))))))

(declare-fun b!5274906 () Bool)

(assert (=> b!5274906 (= e!3280340 e!3280338)))

(assert (=> b!5274906 (= c!913967 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157020))))))

(declare-fun b!5274907 () Bool)

(assert (=> b!5274907 (= e!3280339 (set.insert (Context!8557 (t!374179 (exprs!4778 lt!2157020))) (as set.empty (Set Context!8556))))))

(declare-fun b!5274908 () Bool)

(assert (=> b!5274908 (= e!3280340 (set.union call!375205 call!375207))))

(declare-fun b!5274909 () Bool)

(assert (=> b!5274909 (= e!3280338 call!375206)))

(declare-fun b!5274910 () Bool)

(assert (=> b!5274910 (= e!3280342 call!375206)))

(declare-fun bm!375204 () Bool)

(assert (=> bm!375204 (= call!375204 ($colon$colon!1343 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157020)))) (ite (or c!913966 c!913967) (regTwo!30300 (h!67306 (exprs!4778 lt!2157020))) (h!67306 (exprs!4778 lt!2157020)))))))

(assert (= (and d!1697503 c!913968) b!5274907))

(assert (= (and d!1697503 (not c!913968)) b!5274900))

(assert (= (and b!5274900 c!913969) b!5274902))

(assert (= (and b!5274900 (not c!913969)) b!5274901))

(assert (= (and b!5274901 res!2237463) b!5274905))

(assert (= (and b!5274901 c!913966) b!5274908))

(assert (= (and b!5274901 (not c!913966)) b!5274906))

(assert (= (and b!5274906 c!913967) b!5274909))

(assert (= (and b!5274906 (not c!913967)) b!5274904))

(assert (= (and b!5274904 c!913965) b!5274910))

(assert (= (and b!5274904 (not c!913965)) b!5274903))

(assert (= (or b!5274909 b!5274910) bm!375203))

(assert (= (or b!5274909 b!5274910) bm!375202))

(assert (= (or b!5274908 bm!375203) bm!375204))

(assert (= (or b!5274908 bm!375202) bm!375199))

(assert (= (or b!5274902 bm!375199) bm!375201))

(assert (= (or b!5274902 b!5274908) bm!375200))

(declare-fun m!6313346 () Bool)

(assert (=> bm!375201 m!6313346))

(declare-fun m!6313348 () Bool)

(assert (=> bm!375204 m!6313348))

(declare-fun m!6313350 () Bool)

(assert (=> b!5274907 m!6313350))

(declare-fun m!6313352 () Bool)

(assert (=> b!5274905 m!6313352))

(declare-fun m!6313354 () Bool)

(assert (=> bm!375200 m!6313354))

(assert (=> bm!375001 d!1697503))

(declare-fun b!5274911 () Bool)

(declare-fun e!3280345 () (Set Context!8556))

(declare-fun e!3280347 () (Set Context!8556))

(assert (=> b!5274911 (= e!3280345 e!3280347)))

(declare-fun c!913974 () Bool)

(assert (=> b!5274911 (= c!913974 (is-Union!14894 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274912 () Bool)

(declare-fun c!913971 () Bool)

(declare-fun e!3280349 () Bool)

(assert (=> b!5274912 (= c!913971 e!3280349)))

(declare-fun res!2237464 () Bool)

(assert (=> b!5274912 (=> (not res!2237464) (not e!3280349))))

(assert (=> b!5274912 (= res!2237464 (is-Concat!23739 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun e!3280346 () (Set Context!8556))

(assert (=> b!5274912 (= e!3280347 e!3280346)))

(declare-fun bm!375205 () Bool)

(declare-fun call!375213 () (Set Context!8556))

(declare-fun call!375215 () (Set Context!8556))

(assert (=> bm!375205 (= call!375213 call!375215)))

(declare-fun bm!375206 () Bool)

(declare-fun call!375211 () (Set Context!8556))

(declare-fun call!375210 () List!60982)

(assert (=> bm!375206 (= call!375211 (derivationStepZipperDown!342 (ite c!913974 (regOne!30301 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (regOne!30300 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))) (ite c!913974 (ite c!913695 lt!2157008 (Context!8557 call!375037)) (Context!8557 call!375210)) (h!67305 s!2326)))))

(declare-fun b!5274913 () Bool)

(assert (=> b!5274913 (= e!3280347 (set.union call!375211 call!375215))))

(declare-fun bm!375207 () Bool)

(declare-fun c!913972 () Bool)

(declare-fun call!375214 () List!60982)

(assert (=> bm!375207 (= call!375215 (derivationStepZipperDown!342 (ite c!913974 (regTwo!30301 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (ite c!913971 (regTwo!30300 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (ite c!913972 (regOne!30300 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (reg!15223 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))) (ite (or c!913974 c!913971) (ite c!913695 lt!2157008 (Context!8557 call!375037)) (Context!8557 call!375214)) (h!67305 s!2326)))))

(declare-fun bm!375208 () Bool)

(declare-fun call!375212 () (Set Context!8556))

(assert (=> bm!375208 (= call!375212 call!375213)))

(declare-fun bm!375209 () Bool)

(assert (=> bm!375209 (= call!375214 call!375210)))

(declare-fun b!5274914 () Bool)

(declare-fun e!3280348 () (Set Context!8556))

(assert (=> b!5274914 (= e!3280348 (as set.empty (Set Context!8556)))))

(declare-fun c!913973 () Bool)

(declare-fun d!1697505 () Bool)

(assert (=> d!1697505 (= c!913973 (and (is-ElementMatch!14894 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (= (c!913618 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (h!67305 s!2326))))))

(assert (=> d!1697505 (= (derivationStepZipperDown!342 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))) (ite c!913695 lt!2157008 (Context!8557 call!375037)) (h!67305 s!2326)) e!3280345)))

(declare-fun b!5274915 () Bool)

(declare-fun c!913970 () Bool)

(assert (=> b!5274915 (= c!913970 (is-Star!14894 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun e!3280344 () (Set Context!8556))

(assert (=> b!5274915 (= e!3280344 e!3280348)))

(declare-fun b!5274916 () Bool)

(assert (=> b!5274916 (= e!3280349 (nullable!5063 (regOne!30300 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))))

(declare-fun b!5274917 () Bool)

(assert (=> b!5274917 (= e!3280346 e!3280344)))

(assert (=> b!5274917 (= c!913972 (is-Concat!23739 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274918 () Bool)

(assert (=> b!5274918 (= e!3280345 (set.insert (ite c!913695 lt!2157008 (Context!8557 call!375037)) (as set.empty (Set Context!8556))))))

(declare-fun b!5274919 () Bool)

(assert (=> b!5274919 (= e!3280346 (set.union call!375211 call!375213))))

(declare-fun b!5274920 () Bool)

(assert (=> b!5274920 (= e!3280344 call!375212)))

(declare-fun b!5274921 () Bool)

(assert (=> b!5274921 (= e!3280348 call!375212)))

(declare-fun bm!375210 () Bool)

(assert (=> bm!375210 (= call!375210 ($colon$colon!1343 (exprs!4778 (ite c!913695 lt!2157008 (Context!8557 call!375037))) (ite (or c!913971 c!913972) (regTwo!30300 (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343)))))) (ite c!913695 (regOne!30301 (h!67306 (exprs!4778 (h!67307 zl!343)))) (regOne!30300 (h!67306 (exprs!4778 (h!67307 zl!343))))))))))

(assert (= (and d!1697505 c!913973) b!5274918))

(assert (= (and d!1697505 (not c!913973)) b!5274911))

(assert (= (and b!5274911 c!913974) b!5274913))

(assert (= (and b!5274911 (not c!913974)) b!5274912))

(assert (= (and b!5274912 res!2237464) b!5274916))

(assert (= (and b!5274912 c!913971) b!5274919))

(assert (= (and b!5274912 (not c!913971)) b!5274917))

(assert (= (and b!5274917 c!913972) b!5274920))

(assert (= (and b!5274917 (not c!913972)) b!5274915))

(assert (= (and b!5274915 c!913970) b!5274921))

(assert (= (and b!5274915 (not c!913970)) b!5274914))

(assert (= (or b!5274920 b!5274921) bm!375209))

(assert (= (or b!5274920 b!5274921) bm!375208))

(assert (= (or b!5274919 bm!375209) bm!375210))

(assert (= (or b!5274919 bm!375208) bm!375205))

(assert (= (or b!5274913 bm!375205) bm!375207))

(assert (= (or b!5274913 b!5274919) bm!375206))

(declare-fun m!6313356 () Bool)

(assert (=> bm!375207 m!6313356))

(declare-fun m!6313358 () Bool)

(assert (=> bm!375210 m!6313358))

(declare-fun m!6313360 () Bool)

(assert (=> b!5274918 m!6313360))

(declare-fun m!6313362 () Bool)

(assert (=> b!5274916 m!6313362))

(declare-fun m!6313364 () Bool)

(assert (=> bm!375206 m!6313364))

(assert (=> bm!375033 d!1697505))

(declare-fun b!5274933 () Bool)

(declare-fun e!3280355 () Bool)

(declare-fun lt!2157208 () List!60981)

(assert (=> b!5274933 (= e!3280355 (or (not (= (t!374178 s!2326) Nil!60857)) (= lt!2157208 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)))))))

(declare-fun b!5274931 () Bool)

(declare-fun e!3280354 () List!60981)

(assert (=> b!5274931 (= e!3280354 (Cons!60857 (h!67305 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))) (++!13273 (t!374178 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))) (t!374178 s!2326))))))

(declare-fun b!5274930 () Bool)

(assert (=> b!5274930 (= e!3280354 (t!374178 s!2326))))

(declare-fun d!1697507 () Bool)

(assert (=> d!1697507 e!3280355))

(declare-fun res!2237470 () Bool)

(assert (=> d!1697507 (=> (not res!2237470) (not e!3280355))))

(declare-fun content!10830 (List!60981) (Set C!30058))

(assert (=> d!1697507 (= res!2237470 (= (content!10830 lt!2157208) (set.union (content!10830 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))) (content!10830 (t!374178 s!2326)))))))

(assert (=> d!1697507 (= lt!2157208 e!3280354)))

(declare-fun c!913977 () Bool)

(assert (=> d!1697507 (= c!913977 (is-Nil!60857 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))))))

(assert (=> d!1697507 (= (++!13273 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326)) lt!2157208)))

(declare-fun b!5274932 () Bool)

(declare-fun res!2237469 () Bool)

(assert (=> b!5274932 (=> (not res!2237469) (not e!3280355))))

(declare-fun size!39750 (List!60981) Int)

(assert (=> b!5274932 (= res!2237469 (= (size!39750 lt!2157208) (+ (size!39750 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))) (size!39750 (t!374178 s!2326)))))))

(assert (= (and d!1697507 c!913977) b!5274930))

(assert (= (and d!1697507 (not c!913977)) b!5274931))

(assert (= (and d!1697507 res!2237470) b!5274932))

(assert (= (and b!5274932 res!2237469) b!5274933))

(declare-fun m!6313366 () Bool)

(assert (=> b!5274931 m!6313366))

(declare-fun m!6313368 () Bool)

(assert (=> d!1697507 m!6313368))

(assert (=> d!1697507 m!6312656))

(declare-fun m!6313370 () Bool)

(assert (=> d!1697507 m!6313370))

(declare-fun m!6313372 () Bool)

(assert (=> d!1697507 m!6313372))

(declare-fun m!6313374 () Bool)

(assert (=> b!5274932 m!6313374))

(assert (=> b!5274932 m!6312656))

(declare-fun m!6313376 () Bool)

(assert (=> b!5274932 m!6313376))

(declare-fun m!6313378 () Bool)

(assert (=> b!5274932 m!6313378))

(assert (=> b!5273988 d!1697507))

(declare-fun b!5274937 () Bool)

(declare-fun e!3280357 () Bool)

(declare-fun lt!2157209 () List!60981)

(assert (=> b!5274937 (= e!3280357 (or (not (= (Cons!60857 (h!67305 s!2326) Nil!60857) Nil!60857)) (= lt!2157209 Nil!60857)))))

(declare-fun b!5274935 () Bool)

(declare-fun e!3280356 () List!60981)

(assert (=> b!5274935 (= e!3280356 (Cons!60857 (h!67305 Nil!60857) (++!13273 (t!374178 Nil!60857) (Cons!60857 (h!67305 s!2326) Nil!60857))))))

(declare-fun b!5274934 () Bool)

(assert (=> b!5274934 (= e!3280356 (Cons!60857 (h!67305 s!2326) Nil!60857))))

(declare-fun d!1697509 () Bool)

(assert (=> d!1697509 e!3280357))

(declare-fun res!2237472 () Bool)

(assert (=> d!1697509 (=> (not res!2237472) (not e!3280357))))

(assert (=> d!1697509 (= res!2237472 (= (content!10830 lt!2157209) (set.union (content!10830 Nil!60857) (content!10830 (Cons!60857 (h!67305 s!2326) Nil!60857)))))))

(assert (=> d!1697509 (= lt!2157209 e!3280356)))

(declare-fun c!913978 () Bool)

(assert (=> d!1697509 (= c!913978 (is-Nil!60857 Nil!60857))))

(assert (=> d!1697509 (= (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) lt!2157209)))

(declare-fun b!5274936 () Bool)

(declare-fun res!2237471 () Bool)

(assert (=> b!5274936 (=> (not res!2237471) (not e!3280357))))

(assert (=> b!5274936 (= res!2237471 (= (size!39750 lt!2157209) (+ (size!39750 Nil!60857) (size!39750 (Cons!60857 (h!67305 s!2326) Nil!60857)))))))

(assert (= (and d!1697509 c!913978) b!5274934))

(assert (= (and d!1697509 (not c!913978)) b!5274935))

(assert (= (and d!1697509 res!2237472) b!5274936))

(assert (= (and b!5274936 res!2237471) b!5274937))

(declare-fun m!6313380 () Bool)

(assert (=> b!5274935 m!6313380))

(declare-fun m!6313382 () Bool)

(assert (=> d!1697509 m!6313382))

(declare-fun m!6313384 () Bool)

(assert (=> d!1697509 m!6313384))

(declare-fun m!6313386 () Bool)

(assert (=> d!1697509 m!6313386))

(declare-fun m!6313388 () Bool)

(assert (=> b!5274936 m!6313388))

(declare-fun m!6313390 () Bool)

(assert (=> b!5274936 m!6313390))

(declare-fun m!6313392 () Bool)

(assert (=> b!5274936 m!6313392))

(assert (=> b!5273988 d!1697509))

(declare-fun d!1697511 () Bool)

(assert (=> d!1697511 (= (++!13273 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326)) s!2326)))

(declare-fun lt!2157212 () Unit!153094)

(declare-fun choose!39363 (List!60981 C!30058 List!60981 List!60981) Unit!153094)

(assert (=> d!1697511 (= lt!2157212 (choose!39363 Nil!60857 (h!67305 s!2326) (t!374178 s!2326) s!2326))))

(assert (=> d!1697511 (= (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) (t!374178 s!2326))) s!2326)))

(assert (=> d!1697511 (= (lemmaMoveElementToOtherListKeepsConcatEq!1688 Nil!60857 (h!67305 s!2326) (t!374178 s!2326) s!2326) lt!2157212)))

(declare-fun bs!1222002 () Bool)

(assert (= bs!1222002 d!1697511))

(assert (=> bs!1222002 m!6312656))

(assert (=> bs!1222002 m!6312656))

(assert (=> bs!1222002 m!6312658))

(declare-fun m!6313394 () Bool)

(assert (=> bs!1222002 m!6313394))

(declare-fun m!6313396 () Bool)

(assert (=> bs!1222002 m!6313396))

(assert (=> b!5273988 d!1697511))

(declare-fun b!5274939 () Bool)

(declare-fun e!3280362 () Bool)

(assert (=> b!5274939 (= e!3280362 (matchR!7079 (regTwo!30300 r!7292) (t!374178 s!2326)))))

(declare-fun b!5274940 () Bool)

(declare-fun res!2237473 () Bool)

(declare-fun e!3280359 () Bool)

(assert (=> b!5274940 (=> (not res!2237473) (not e!3280359))))

(declare-fun lt!2157213 () Option!15005)

(assert (=> b!5274940 (= res!2237473 (matchR!7079 (regTwo!30300 r!7292) (_2!35396 (get!20926 lt!2157213))))))

(declare-fun b!5274941 () Bool)

(declare-fun e!3280358 () Option!15005)

(assert (=> b!5274941 (= e!3280358 (Some!15004 (tuple2!64187 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326))))))

(declare-fun b!5274942 () Bool)

(declare-fun e!3280361 () Option!15005)

(assert (=> b!5274942 (= e!3280361 None!15004)))

(declare-fun b!5274943 () Bool)

(assert (=> b!5274943 (= e!3280359 (= (++!13273 (_1!35396 (get!20926 lt!2157213)) (_2!35396 (get!20926 lt!2157213))) s!2326))))

(declare-fun b!5274944 () Bool)

(declare-fun res!2237476 () Bool)

(assert (=> b!5274944 (=> (not res!2237476) (not e!3280359))))

(assert (=> b!5274944 (= res!2237476 (matchR!7079 (regOne!30300 r!7292) (_1!35396 (get!20926 lt!2157213))))))

(declare-fun b!5274938 () Bool)

(declare-fun e!3280360 () Bool)

(assert (=> b!5274938 (= e!3280360 (not (isDefined!11708 lt!2157213)))))

(declare-fun d!1697513 () Bool)

(assert (=> d!1697513 e!3280360))

(declare-fun res!2237477 () Bool)

(assert (=> d!1697513 (=> res!2237477 e!3280360)))

(assert (=> d!1697513 (= res!2237477 e!3280359)))

(declare-fun res!2237474 () Bool)

(assert (=> d!1697513 (=> (not res!2237474) (not e!3280359))))

(assert (=> d!1697513 (= res!2237474 (isDefined!11708 lt!2157213))))

(assert (=> d!1697513 (= lt!2157213 e!3280358)))

(declare-fun c!913979 () Bool)

(assert (=> d!1697513 (= c!913979 e!3280362)))

(declare-fun res!2237475 () Bool)

(assert (=> d!1697513 (=> (not res!2237475) (not e!3280362))))

(assert (=> d!1697513 (= res!2237475 (matchR!7079 (regOne!30300 r!7292) (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857))))))

(assert (=> d!1697513 (validRegex!6630 (regOne!30300 r!7292))))

(assert (=> d!1697513 (= (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (t!374178 s!2326) s!2326) lt!2157213)))

(declare-fun b!5274945 () Bool)

(assert (=> b!5274945 (= e!3280358 e!3280361)))

(declare-fun c!913980 () Bool)

(assert (=> b!5274945 (= c!913980 (is-Nil!60857 (t!374178 s!2326)))))

(declare-fun b!5274946 () Bool)

(declare-fun lt!2157214 () Unit!153094)

(declare-fun lt!2157215 () Unit!153094)

(assert (=> b!5274946 (= lt!2157214 lt!2157215)))

(assert (=> b!5274946 (= (++!13273 (++!13273 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (Cons!60857 (h!67305 (t!374178 s!2326)) Nil!60857)) (t!374178 (t!374178 s!2326))) s!2326)))

(assert (=> b!5274946 (= lt!2157215 (lemmaMoveElementToOtherListKeepsConcatEq!1688 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (h!67305 (t!374178 s!2326)) (t!374178 (t!374178 s!2326)) s!2326))))

(assert (=> b!5274946 (= e!3280361 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) (++!13273 (++!13273 Nil!60857 (Cons!60857 (h!67305 s!2326) Nil!60857)) (Cons!60857 (h!67305 (t!374178 s!2326)) Nil!60857)) (t!374178 (t!374178 s!2326)) s!2326))))

(assert (= (and d!1697513 res!2237475) b!5274939))

(assert (= (and d!1697513 c!913979) b!5274941))

(assert (= (and d!1697513 (not c!913979)) b!5274945))

(assert (= (and b!5274945 c!913980) b!5274942))

(assert (= (and b!5274945 (not c!913980)) b!5274946))

(assert (= (and d!1697513 res!2237474) b!5274944))

(assert (= (and b!5274944 res!2237476) b!5274940))

(assert (= (and b!5274940 res!2237473) b!5274943))

(assert (= (and d!1697513 (not res!2237477)) b!5274938))

(declare-fun m!6313398 () Bool)

(assert (=> b!5274938 m!6313398))

(declare-fun m!6313400 () Bool)

(assert (=> b!5274939 m!6313400))

(assert (=> b!5274946 m!6312656))

(declare-fun m!6313402 () Bool)

(assert (=> b!5274946 m!6313402))

(assert (=> b!5274946 m!6313402))

(declare-fun m!6313404 () Bool)

(assert (=> b!5274946 m!6313404))

(assert (=> b!5274946 m!6312656))

(declare-fun m!6313406 () Bool)

(assert (=> b!5274946 m!6313406))

(assert (=> b!5274946 m!6313402))

(declare-fun m!6313408 () Bool)

(assert (=> b!5274946 m!6313408))

(declare-fun m!6313410 () Bool)

(assert (=> b!5274943 m!6313410))

(declare-fun m!6313412 () Bool)

(assert (=> b!5274943 m!6313412))

(assert (=> b!5274940 m!6313410))

(declare-fun m!6313414 () Bool)

(assert (=> b!5274940 m!6313414))

(assert (=> d!1697513 m!6313398))

(assert (=> d!1697513 m!6312656))

(declare-fun m!6313416 () Bool)

(assert (=> d!1697513 m!6313416))

(assert (=> d!1697513 m!6312672))

(assert (=> b!5274944 m!6313410))

(declare-fun m!6313418 () Bool)

(assert (=> b!5274944 m!6313418))

(assert (=> b!5273988 d!1697513))

(declare-fun d!1697515 () Bool)

(assert (=> d!1697515 (= (isEmpty!32809 (tail!10402 (unfocusZipperList!336 zl!343))) (is-Nil!60858 (tail!10402 (unfocusZipperList!336 zl!343))))))

(assert (=> b!5273946 d!1697515))

(declare-fun d!1697517 () Bool)

(assert (=> d!1697517 (= (tail!10402 (unfocusZipperList!336 zl!343)) (t!374179 (unfocusZipperList!336 zl!343)))))

(assert (=> b!5273946 d!1697517))

(declare-fun bs!1222003 () Bool)

(declare-fun d!1697519 () Bool)

(assert (= bs!1222003 (and d!1697519 d!1697363)))

(declare-fun lambda!266206 () Int)

(assert (=> bs!1222003 (= lambda!266206 lambda!266193)))

(declare-fun bs!1222004 () Bool)

(assert (= bs!1222004 (and d!1697519 d!1697397)))

(assert (=> bs!1222004 (= lambda!266206 lambda!266195)))

(declare-fun bs!1222005 () Bool)

(assert (= bs!1222005 (and d!1697519 d!1697473)))

(assert (=> bs!1222005 (= lambda!266206 lambda!266203)))

(declare-fun bs!1222006 () Bool)

(assert (= bs!1222006 (and d!1697519 d!1697475)))

(assert (=> bs!1222006 (= lambda!266206 lambda!266204)))

(assert (=> d!1697519 (= (nullableZipper!1293 lt!2157023) (exists!1996 lt!2157023 lambda!266206))))

(declare-fun bs!1222007 () Bool)

(assert (= bs!1222007 d!1697519))

(declare-fun m!6313420 () Bool)

(assert (=> bs!1222007 m!6313420))

(assert (=> b!5273760 d!1697519))

(declare-fun d!1697521 () Bool)

(assert (=> d!1697521 (= (isEmpty!32809 (exprs!4778 (h!67307 zl!343))) (is-Nil!60858 (exprs!4778 (h!67307 zl!343))))))

(assert (=> b!5273891 d!1697521))

(assert (=> b!5274085 d!1697333))

(assert (=> d!1697213 d!1697375))

(declare-fun d!1697523 () Bool)

(assert (=> d!1697523 (= (isEmpty!32809 (t!374179 (unfocusZipperList!336 zl!343))) (is-Nil!60858 (t!374179 (unfocusZipperList!336 zl!343))))))

(assert (=> b!5273952 d!1697523))

(declare-fun d!1697525 () Bool)

(assert (=> d!1697525 (= (Exists!2075 lambda!266151) (choose!39350 lambda!266151))))

(declare-fun bs!1222008 () Bool)

(assert (= bs!1222008 d!1697525))

(declare-fun m!6313422 () Bool)

(assert (=> bs!1222008 m!6313422))

(assert (=> d!1697209 d!1697525))

(declare-fun d!1697527 () Bool)

(assert (=> d!1697527 (= (Exists!2075 lambda!266152) (choose!39350 lambda!266152))))

(declare-fun bs!1222009 () Bool)

(assert (= bs!1222009 d!1697527))

(declare-fun m!6313424 () Bool)

(assert (=> bs!1222009 m!6313424))

(assert (=> d!1697209 d!1697527))

(declare-fun bs!1222010 () Bool)

(declare-fun d!1697529 () Bool)

(assert (= bs!1222010 (and d!1697529 d!1697207)))

(declare-fun lambda!266211 () Int)

(assert (=> bs!1222010 (= lambda!266211 lambda!266146)))

(declare-fun bs!1222011 () Bool)

(assert (= bs!1222011 (and d!1697529 b!5273610)))

(assert (=> bs!1222011 (not (= lambda!266211 lambda!266111))))

(declare-fun bs!1222012 () Bool)

(assert (= bs!1222012 (and d!1697529 b!5274734)))

(assert (=> bs!1222012 (not (= lambda!266211 lambda!266199))))

(declare-fun bs!1222013 () Bool)

(assert (= bs!1222013 (and d!1697529 b!5274045)))

(assert (=> bs!1222013 (not (= lambda!266211 lambda!266157))))

(declare-fun bs!1222014 () Bool)

(assert (= bs!1222014 (and d!1697529 d!1697209)))

(assert (=> bs!1222014 (not (= lambda!266211 lambda!266152))))

(declare-fun bs!1222015 () Bool)

(assert (= bs!1222015 (and d!1697529 b!5274035)))

(assert (=> bs!1222015 (not (= lambda!266211 lambda!266158))))

(declare-fun bs!1222016 () Bool)

(assert (= bs!1222016 (and d!1697529 b!5274724)))

(assert (=> bs!1222016 (not (= lambda!266211 lambda!266200))))

(declare-fun bs!1222017 () Bool)

(assert (= bs!1222017 (and d!1697529 b!5274689)))

(assert (=> bs!1222017 (not (= lambda!266211 lambda!266197))))

(assert (=> bs!1222011 (= lambda!266211 lambda!266110)))

(assert (=> bs!1222014 (= lambda!266211 lambda!266151)))

(declare-fun bs!1222018 () Bool)

(assert (= bs!1222018 (and d!1697529 b!5274699)))

(assert (=> bs!1222018 (not (= lambda!266211 lambda!266196))))

(assert (=> d!1697529 true))

(assert (=> d!1697529 true))

(assert (=> d!1697529 true))

(declare-fun lambda!266212 () Int)

(assert (=> bs!1222010 (not (= lambda!266212 lambda!266146))))

(assert (=> bs!1222011 (= lambda!266212 lambda!266111)))

(assert (=> bs!1222012 (not (= lambda!266212 lambda!266199))))

(declare-fun bs!1222019 () Bool)

(assert (= bs!1222019 d!1697529))

(assert (=> bs!1222019 (not (= lambda!266212 lambda!266211))))

(assert (=> bs!1222013 (not (= lambda!266212 lambda!266157))))

(assert (=> bs!1222014 (= lambda!266212 lambda!266152)))

(assert (=> bs!1222015 (= lambda!266212 lambda!266158)))

(assert (=> bs!1222016 (= (and (= (regOne!30300 r!7292) (regOne!30300 (regOne!30301 r!7292))) (= (regTwo!30300 r!7292) (regTwo!30300 (regOne!30301 r!7292)))) (= lambda!266212 lambda!266200))))

(assert (=> bs!1222017 (= (and (= (regOne!30300 r!7292) (regOne!30300 (regTwo!30301 r!7292))) (= (regTwo!30300 r!7292) (regTwo!30300 (regTwo!30301 r!7292)))) (= lambda!266212 lambda!266197))))

(assert (=> bs!1222011 (not (= lambda!266212 lambda!266110))))

(assert (=> bs!1222014 (not (= lambda!266212 lambda!266151))))

(assert (=> bs!1222018 (not (= lambda!266212 lambda!266196))))

(assert (=> d!1697529 true))

(assert (=> d!1697529 true))

(assert (=> d!1697529 true))

(assert (=> d!1697529 (= (Exists!2075 lambda!266211) (Exists!2075 lambda!266212))))

(assert (=> d!1697529 true))

(declare-fun _$90!1099 () Unit!153094)

(assert (=> d!1697529 (= (choose!39352 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326) _$90!1099)))

(declare-fun m!6313426 () Bool)

(assert (=> bs!1222019 m!6313426))

(declare-fun m!6313428 () Bool)

(assert (=> bs!1222019 m!6313428))

(assert (=> d!1697209 d!1697529))

(assert (=> d!1697209 d!1697465))

(declare-fun d!1697531 () Bool)

(assert (=> d!1697531 true))

(declare-fun setRes!33784 () Bool)

(assert (=> d!1697531 setRes!33784))

(declare-fun condSetEmpty!33784 () Bool)

(declare-fun res!2237486 () (Set Context!8556))

(assert (=> d!1697531 (= condSetEmpty!33784 (= res!2237486 (as set.empty (Set Context!8556))))))

(assert (=> d!1697531 (= (choose!39348 lt!2157027 lambda!266112) res!2237486)))

(declare-fun setIsEmpty!33784 () Bool)

(assert (=> setIsEmpty!33784 setRes!33784))

(declare-fun setNonEmpty!33784 () Bool)

(declare-fun tp!1473977 () Bool)

(declare-fun e!3280367 () Bool)

(declare-fun setElem!33784 () Context!8556)

(assert (=> setNonEmpty!33784 (= setRes!33784 (and tp!1473977 (inv!80483 setElem!33784) e!3280367))))

(declare-fun setRest!33784 () (Set Context!8556))

(assert (=> setNonEmpty!33784 (= res!2237486 (set.union (set.insert setElem!33784 (as set.empty (Set Context!8556))) setRest!33784))))

(declare-fun b!5274955 () Bool)

(declare-fun tp!1473976 () Bool)

(assert (=> b!5274955 (= e!3280367 tp!1473976)))

(assert (= (and d!1697531 condSetEmpty!33784) setIsEmpty!33784))

(assert (= (and d!1697531 (not condSetEmpty!33784)) setNonEmpty!33784))

(assert (= setNonEmpty!33784 b!5274955))

(declare-fun m!6313430 () Bool)

(assert (=> setNonEmpty!33784 m!6313430))

(assert (=> d!1697173 d!1697531))

(assert (=> d!1697139 d!1697375))

(assert (=> d!1697135 d!1697375))

(declare-fun d!1697533 () Bool)

(assert (=> d!1697533 (= (nullable!5063 (reg!15223 r!7292)) (nullableFct!1445 (reg!15223 r!7292)))))

(declare-fun bs!1222020 () Bool)

(assert (= bs!1222020 d!1697533))

(declare-fun m!6313432 () Bool)

(assert (=> bs!1222020 m!6313432))

(assert (=> b!5273862 d!1697533))

(declare-fun d!1697535 () Bool)

(declare-fun c!913981 () Bool)

(assert (=> d!1697535 (= c!913981 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280368 () Bool)

(assert (=> d!1697535 (= (matchZipper!1138 (derivationStepZipper!1137 lt!2157017 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280368)))

(declare-fun b!5274956 () Bool)

(assert (=> b!5274956 (= e!3280368 (nullableZipper!1293 (derivationStepZipper!1137 lt!2157017 (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274957 () Bool)

(assert (=> b!5274957 (= e!3280368 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 lt!2157017 (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697535 c!913981) b!5274956))

(assert (= (and d!1697535 (not c!913981)) b!5274957))

(assert (=> d!1697535 m!6312480))

(assert (=> d!1697535 m!6313124))

(assert (=> b!5274956 m!6312694))

(declare-fun m!6313434 () Bool)

(assert (=> b!5274956 m!6313434))

(assert (=> b!5274957 m!6312480))

(assert (=> b!5274957 m!6313128))

(assert (=> b!5274957 m!6312694))

(assert (=> b!5274957 m!6313128))

(declare-fun m!6313436 () Bool)

(assert (=> b!5274957 m!6313436))

(assert (=> b!5274957 m!6312480))

(assert (=> b!5274957 m!6313132))

(assert (=> b!5274957 m!6313436))

(assert (=> b!5274957 m!6313132))

(declare-fun m!6313438 () Bool)

(assert (=> b!5274957 m!6313438))

(assert (=> b!5274002 d!1697535))

(declare-fun bs!1222021 () Bool)

(declare-fun d!1697537 () Bool)

(assert (= bs!1222021 (and d!1697537 b!5273632)))

(declare-fun lambda!266213 () Int)

(assert (=> bs!1222021 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266213 lambda!266112))))

(declare-fun bs!1222022 () Bool)

(assert (= bs!1222022 (and d!1697537 d!1697429)))

(assert (=> bs!1222022 (= lambda!266213 lambda!266198)))

(declare-fun bs!1222023 () Bool)

(assert (= bs!1222023 (and d!1697537 d!1697177)))

(assert (=> bs!1222023 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266213 lambda!266134))))

(declare-fun bs!1222024 () Bool)

(assert (= bs!1222024 (and d!1697537 d!1697387)))

(assert (=> bs!1222024 (= lambda!266213 lambda!266194)))

(declare-fun bs!1222025 () Bool)

(assert (= bs!1222025 (and d!1697537 d!1697459)))

(assert (=> bs!1222025 (= lambda!266213 lambda!266202)))

(declare-fun bs!1222026 () Bool)

(assert (= bs!1222026 (and d!1697537 d!1697451)))

(assert (=> bs!1222026 (= lambda!266213 lambda!266201)))

(assert (=> d!1697537 true))

(assert (=> d!1697537 (= (derivationStepZipper!1137 lt!2157017 (head!11304 (t!374178 s!2326))) (flatMap!621 lt!2157017 lambda!266213))))

(declare-fun bs!1222027 () Bool)

(assert (= bs!1222027 d!1697537))

(declare-fun m!6313440 () Bool)

(assert (=> bs!1222027 m!6313440))

(assert (=> b!5274002 d!1697537))

(assert (=> b!5274002 d!1697389))

(assert (=> b!5274002 d!1697391))

(declare-fun d!1697539 () Bool)

(assert (=> d!1697539 (= (nullable!5063 (h!67306 (exprs!4778 lt!2157029))) (nullableFct!1445 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun bs!1222028 () Bool)

(assert (= bs!1222028 d!1697539))

(declare-fun m!6313442 () Bool)

(assert (=> bs!1222028 m!6313442))

(assert (=> b!5273866 d!1697539))

(declare-fun d!1697541 () Bool)

(declare-fun c!913982 () Bool)

(assert (=> d!1697541 (= c!913982 (isEmpty!32813 (tail!10401 (t!374178 s!2326))))))

(declare-fun e!3280369 () Bool)

(assert (=> d!1697541 (= (matchZipper!1138 (derivationStepZipper!1137 lt!2157024 (head!11304 (t!374178 s!2326))) (tail!10401 (t!374178 s!2326))) e!3280369)))

(declare-fun b!5274958 () Bool)

(assert (=> b!5274958 (= e!3280369 (nullableZipper!1293 (derivationStepZipper!1137 lt!2157024 (head!11304 (t!374178 s!2326)))))))

(declare-fun b!5274959 () Bool)

(assert (=> b!5274959 (= e!3280369 (matchZipper!1138 (derivationStepZipper!1137 (derivationStepZipper!1137 lt!2157024 (head!11304 (t!374178 s!2326))) (head!11304 (tail!10401 (t!374178 s!2326)))) (tail!10401 (tail!10401 (t!374178 s!2326)))))))

(assert (= (and d!1697541 c!913982) b!5274958))

(assert (= (and d!1697541 (not c!913982)) b!5274959))

(assert (=> d!1697541 m!6312480))

(assert (=> d!1697541 m!6313124))

(assert (=> b!5274958 m!6312492))

(declare-fun m!6313444 () Bool)

(assert (=> b!5274958 m!6313444))

(assert (=> b!5274959 m!6312480))

(assert (=> b!5274959 m!6313128))

(assert (=> b!5274959 m!6312492))

(assert (=> b!5274959 m!6313128))

(declare-fun m!6313446 () Bool)

(assert (=> b!5274959 m!6313446))

(assert (=> b!5274959 m!6312480))

(assert (=> b!5274959 m!6313132))

(assert (=> b!5274959 m!6313446))

(assert (=> b!5274959 m!6313132))

(declare-fun m!6313448 () Bool)

(assert (=> b!5274959 m!6313448))

(assert (=> b!5273759 d!1697541))

(declare-fun bs!1222029 () Bool)

(declare-fun d!1697543 () Bool)

(assert (= bs!1222029 (and d!1697543 b!5273632)))

(declare-fun lambda!266214 () Int)

(assert (=> bs!1222029 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266214 lambda!266112))))

(declare-fun bs!1222030 () Bool)

(assert (= bs!1222030 (and d!1697543 d!1697429)))

(assert (=> bs!1222030 (= lambda!266214 lambda!266198)))

(declare-fun bs!1222031 () Bool)

(assert (= bs!1222031 (and d!1697543 d!1697177)))

(assert (=> bs!1222031 (= (= (head!11304 (t!374178 s!2326)) (h!67305 s!2326)) (= lambda!266214 lambda!266134))))

(declare-fun bs!1222032 () Bool)

(assert (= bs!1222032 (and d!1697543 d!1697459)))

(assert (=> bs!1222032 (= lambda!266214 lambda!266202)))

(declare-fun bs!1222033 () Bool)

(assert (= bs!1222033 (and d!1697543 d!1697451)))

(assert (=> bs!1222033 (= lambda!266214 lambda!266201)))

(declare-fun bs!1222034 () Bool)

(assert (= bs!1222034 (and d!1697543 d!1697387)))

(assert (=> bs!1222034 (= lambda!266214 lambda!266194)))

(declare-fun bs!1222035 () Bool)

(assert (= bs!1222035 (and d!1697543 d!1697537)))

(assert (=> bs!1222035 (= lambda!266214 lambda!266213)))

(assert (=> d!1697543 true))

(assert (=> d!1697543 (= (derivationStepZipper!1137 lt!2157024 (head!11304 (t!374178 s!2326))) (flatMap!621 lt!2157024 lambda!266214))))

(declare-fun bs!1222036 () Bool)

(assert (= bs!1222036 d!1697543))

(declare-fun m!6313450 () Bool)

(assert (=> bs!1222036 m!6313450))

(assert (=> b!5273759 d!1697543))

(assert (=> b!5273759 d!1697389))

(assert (=> b!5273759 d!1697391))

(declare-fun b!5274960 () Bool)

(declare-fun e!3280370 () (Set Context!8556))

(declare-fun call!375216 () (Set Context!8556))

(assert (=> b!5274960 (= e!3280370 call!375216)))

(declare-fun b!5274961 () Bool)

(declare-fun e!3280371 () Bool)

(assert (=> b!5274961 (= e!3280371 (nullable!5063 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343))))))))))

(declare-fun d!1697545 () Bool)

(declare-fun c!913984 () Bool)

(assert (=> d!1697545 (= c!913984 e!3280371)))

(declare-fun res!2237487 () Bool)

(assert (=> d!1697545 (=> (not res!2237487) (not e!3280371))))

(assert (=> d!1697545 (= res!2237487 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun e!3280372 () (Set Context!8556))

(assert (=> d!1697545 (= (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))) (h!67305 s!2326)) e!3280372)))

(declare-fun b!5274962 () Bool)

(assert (=> b!5274962 (= e!3280372 e!3280370)))

(declare-fun c!913983 () Bool)

(assert (=> b!5274962 (= c!913983 (is-Cons!60858 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))))))))

(declare-fun b!5274963 () Bool)

(assert (=> b!5274963 (= e!3280370 (as set.empty (Set Context!8556)))))

(declare-fun b!5274964 () Bool)

(assert (=> b!5274964 (= e!3280372 (set.union call!375216 (derivationStepZipperUp!266 (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343))))))) (h!67305 s!2326))))))

(declare-fun bm!375211 () Bool)

(assert (=> bm!375211 (= call!375216 (derivationStepZipperDown!342 (h!67306 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343)))))) (Context!8557 (t!374179 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 (h!67307 zl!343))))))) (h!67305 s!2326)))))

(assert (= (and d!1697545 res!2237487) b!5274961))

(assert (= (and d!1697545 c!913984) b!5274964))

(assert (= (and d!1697545 (not c!913984)) b!5274962))

(assert (= (and b!5274962 c!913983) b!5274960))

(assert (= (and b!5274962 (not c!913983)) b!5274963))

(assert (= (or b!5274964 b!5274960) bm!375211))

(declare-fun m!6313452 () Bool)

(assert (=> b!5274961 m!6313452))

(declare-fun m!6313454 () Bool)

(assert (=> b!5274964 m!6313454))

(declare-fun m!6313456 () Bool)

(assert (=> bm!375211 m!6313456))

(assert (=> b!5273925 d!1697545))

(declare-fun b!5274965 () Bool)

(declare-fun e!3280375 () Bool)

(declare-fun e!3280373 () Bool)

(assert (=> b!5274965 (= e!3280375 e!3280373)))

(declare-fun res!2237491 () Bool)

(assert (=> b!5274965 (=> res!2237491 e!3280373)))

(declare-fun call!375217 () Bool)

(assert (=> b!5274965 (= res!2237491 call!375217)))

(declare-fun b!5274966 () Bool)

(declare-fun e!3280376 () Bool)

(assert (=> b!5274966 (= e!3280376 (matchR!7079 (derivativeStep!4114 (regTwo!30300 r!7292) (head!11304 s!2326)) (tail!10401 s!2326)))))

(declare-fun b!5274967 () Bool)

(assert (=> b!5274967 (= e!3280376 (nullable!5063 (regTwo!30300 r!7292)))))

(declare-fun b!5274968 () Bool)

(declare-fun res!2237489 () Bool)

(declare-fun e!3280378 () Bool)

(assert (=> b!5274968 (=> res!2237489 e!3280378)))

(declare-fun e!3280379 () Bool)

(assert (=> b!5274968 (= res!2237489 e!3280379)))

(declare-fun res!2237493 () Bool)

(assert (=> b!5274968 (=> (not res!2237493) (not e!3280379))))

(declare-fun lt!2157216 () Bool)

(assert (=> b!5274968 (= res!2237493 lt!2157216)))

(declare-fun b!5274969 () Bool)

(assert (=> b!5274969 (= e!3280378 e!3280375)))

(declare-fun res!2237490 () Bool)

(assert (=> b!5274969 (=> (not res!2237490) (not e!3280375))))

(assert (=> b!5274969 (= res!2237490 (not lt!2157216))))

(declare-fun b!5274970 () Bool)

(declare-fun e!3280374 () Bool)

(assert (=> b!5274970 (= e!3280374 (not lt!2157216))))

(declare-fun b!5274971 () Bool)

(declare-fun e!3280377 () Bool)

(assert (=> b!5274971 (= e!3280377 e!3280374)))

(declare-fun c!913985 () Bool)

(assert (=> b!5274971 (= c!913985 (is-EmptyLang!14894 (regTwo!30300 r!7292)))))

(declare-fun b!5274972 () Bool)

(assert (=> b!5274972 (= e!3280377 (= lt!2157216 call!375217))))

(declare-fun b!5274973 () Bool)

(assert (=> b!5274973 (= e!3280373 (not (= (head!11304 s!2326) (c!913618 (regTwo!30300 r!7292)))))))

(declare-fun b!5274974 () Bool)

(declare-fun res!2237492 () Bool)

(assert (=> b!5274974 (=> res!2237492 e!3280378)))

(assert (=> b!5274974 (= res!2237492 (not (is-ElementMatch!14894 (regTwo!30300 r!7292))))))

(assert (=> b!5274974 (= e!3280374 e!3280378)))

(declare-fun b!5274975 () Bool)

(declare-fun res!2237495 () Bool)

(assert (=> b!5274975 (=> res!2237495 e!3280373)))

(assert (=> b!5274975 (= res!2237495 (not (isEmpty!32813 (tail!10401 s!2326))))))

(declare-fun b!5274976 () Bool)

(assert (=> b!5274976 (= e!3280379 (= (head!11304 s!2326) (c!913618 (regTwo!30300 r!7292))))))

(declare-fun b!5274977 () Bool)

(declare-fun res!2237494 () Bool)

(assert (=> b!5274977 (=> (not res!2237494) (not e!3280379))))

(assert (=> b!5274977 (= res!2237494 (isEmpty!32813 (tail!10401 s!2326)))))

(declare-fun d!1697547 () Bool)

(assert (=> d!1697547 e!3280377))

(declare-fun c!913987 () Bool)

(assert (=> d!1697547 (= c!913987 (is-EmptyExpr!14894 (regTwo!30300 r!7292)))))

(assert (=> d!1697547 (= lt!2157216 e!3280376)))

(declare-fun c!913986 () Bool)

(assert (=> d!1697547 (= c!913986 (isEmpty!32813 s!2326))))

(assert (=> d!1697547 (validRegex!6630 (regTwo!30300 r!7292))))

(assert (=> d!1697547 (= (matchR!7079 (regTwo!30300 r!7292) s!2326) lt!2157216)))

(declare-fun bm!375212 () Bool)

(assert (=> bm!375212 (= call!375217 (isEmpty!32813 s!2326))))

(declare-fun b!5274978 () Bool)

(declare-fun res!2237488 () Bool)

(assert (=> b!5274978 (=> (not res!2237488) (not e!3280379))))

(assert (=> b!5274978 (= res!2237488 (not call!375217))))

(assert (= (and d!1697547 c!913986) b!5274967))

(assert (= (and d!1697547 (not c!913986)) b!5274966))

(assert (= (and d!1697547 c!913987) b!5274972))

(assert (= (and d!1697547 (not c!913987)) b!5274971))

(assert (= (and b!5274971 c!913985) b!5274970))

(assert (= (and b!5274971 (not c!913985)) b!5274974))

(assert (= (and b!5274974 (not res!2237492)) b!5274968))

(assert (= (and b!5274968 res!2237493) b!5274978))

(assert (= (and b!5274978 res!2237488) b!5274977))

(assert (= (and b!5274977 res!2237494) b!5274976))

(assert (= (and b!5274968 (not res!2237489)) b!5274969))

(assert (= (and b!5274969 res!2237490) b!5274965))

(assert (= (and b!5274965 (not res!2237491)) b!5274975))

(assert (= (and b!5274975 (not res!2237495)) b!5274973))

(assert (= (or b!5274972 b!5274965 b!5274978) bm!375212))

(assert (=> b!5274975 m!6312706))

(assert (=> b!5274975 m!6312706))

(assert (=> b!5274975 m!6312708))

(assert (=> b!5274977 m!6312706))

(assert (=> b!5274977 m!6312706))

(assert (=> b!5274977 m!6312708))

(assert (=> b!5274966 m!6312710))

(assert (=> b!5274966 m!6312710))

(declare-fun m!6313458 () Bool)

(assert (=> b!5274966 m!6313458))

(assert (=> b!5274966 m!6312706))

(assert (=> b!5274966 m!6313458))

(assert (=> b!5274966 m!6312706))

(declare-fun m!6313460 () Bool)

(assert (=> b!5274966 m!6313460))

(assert (=> bm!375212 m!6312698))

(assert (=> b!5274967 m!6313084))

(assert (=> b!5274976 m!6312710))

(assert (=> b!5274973 m!6312710))

(assert (=> d!1697547 m!6312698))

(assert (=> d!1697547 m!6313086))

(assert (=> b!5273981 d!1697547))

(declare-fun d!1697549 () Bool)

(assert (=> d!1697549 (= ($colon$colon!1343 (exprs!4778 lt!2157020) (ite (or c!913665 c!913666) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 r!7292)))) (Cons!60858 (ite (or c!913665 c!913666) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 r!7292))) (exprs!4778 lt!2157020)))))

(assert (=> bm!375025 d!1697549))

(declare-fun b!5274979 () Bool)

(declare-fun e!3280380 () Bool)

(declare-fun e!3280382 () Bool)

(assert (=> b!5274979 (= e!3280380 e!3280382)))

(declare-fun res!2237498 () Bool)

(declare-fun call!375219 () Bool)

(assert (=> b!5274979 (= res!2237498 call!375219)))

(assert (=> b!5274979 (=> (not res!2237498) (not e!3280382))))

(declare-fun b!5274980 () Bool)

(declare-fun e!3280384 () Bool)

(declare-fun e!3280381 () Bool)

(assert (=> b!5274980 (= e!3280384 e!3280381)))

(declare-fun res!2237500 () Bool)

(assert (=> b!5274980 (=> res!2237500 e!3280381)))

(assert (=> b!5274980 (= res!2237500 (is-Star!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun bm!375213 () Bool)

(declare-fun call!375218 () Bool)

(declare-fun c!913988 () Bool)

(assert (=> bm!375213 (= call!375218 (nullable!5063 (ite c!913988 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274981 () Bool)

(declare-fun e!3280383 () Bool)

(assert (=> b!5274981 (= e!3280383 call!375218)))

(declare-fun b!5274982 () Bool)

(declare-fun e!3280385 () Bool)

(assert (=> b!5274982 (= e!3280385 e!3280384)))

(declare-fun res!2237496 () Bool)

(assert (=> b!5274982 (=> (not res!2237496) (not e!3280384))))

(assert (=> b!5274982 (= res!2237496 (and (not (is-EmptyLang!14894 (regOne!30300 (regOne!30300 r!7292)))) (not (is-ElementMatch!14894 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274983 () Bool)

(assert (=> b!5274983 (= e!3280381 e!3280380)))

(assert (=> b!5274983 (= c!913988 (is-Union!14894 (regOne!30300 (regOne!30300 r!7292))))))

(declare-fun b!5274984 () Bool)

(assert (=> b!5274984 (= e!3280380 e!3280383)))

(declare-fun res!2237497 () Bool)

(assert (=> b!5274984 (= res!2237497 call!375219)))

(assert (=> b!5274984 (=> res!2237497 e!3280383)))

(declare-fun d!1697551 () Bool)

(declare-fun res!2237499 () Bool)

(assert (=> d!1697551 (=> res!2237499 e!3280385)))

(assert (=> d!1697551 (= res!2237499 (is-EmptyExpr!14894 (regOne!30300 (regOne!30300 r!7292))))))

(assert (=> d!1697551 (= (nullableFct!1445 (regOne!30300 (regOne!30300 r!7292))) e!3280385)))

(declare-fun bm!375214 () Bool)

(assert (=> bm!375214 (= call!375219 (nullable!5063 (ite c!913988 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5274985 () Bool)

(assert (=> b!5274985 (= e!3280382 call!375218)))

(assert (= (and d!1697551 (not res!2237499)) b!5274982))

(assert (= (and b!5274982 res!2237496) b!5274980))

(assert (= (and b!5274980 (not res!2237500)) b!5274983))

(assert (= (and b!5274983 c!913988) b!5274984))

(assert (= (and b!5274983 (not c!913988)) b!5274979))

(assert (= (and b!5274984 (not res!2237497)) b!5274981))

(assert (= (and b!5274979 res!2237498) b!5274985))

(assert (= (or b!5274981 b!5274985) bm!375213))

(assert (= (or b!5274984 b!5274979) bm!375214))

(declare-fun m!6313462 () Bool)

(assert (=> bm!375213 m!6313462))

(declare-fun m!6313464 () Bool)

(assert (=> bm!375214 m!6313464))

(assert (=> d!1697221 d!1697551))

(declare-fun d!1697553 () Bool)

(declare-fun res!2237501 () Bool)

(declare-fun e!3280386 () Bool)

(assert (=> d!1697553 (=> res!2237501 e!3280386)))

(assert (=> d!1697553 (= res!2237501 (is-Nil!60858 lt!2157127))))

(assert (=> d!1697553 (= (forall!14302 lt!2157127 lambda!266143) e!3280386)))

(declare-fun b!5274986 () Bool)

(declare-fun e!3280387 () Bool)

(assert (=> b!5274986 (= e!3280386 e!3280387)))

(declare-fun res!2237502 () Bool)

(assert (=> b!5274986 (=> (not res!2237502) (not e!3280387))))

(assert (=> b!5274986 (= res!2237502 (dynLambda!24052 lambda!266143 (h!67306 lt!2157127)))))

(declare-fun b!5274987 () Bool)

(assert (=> b!5274987 (= e!3280387 (forall!14302 (t!374179 lt!2157127) lambda!266143))))

(assert (= (and d!1697553 (not res!2237501)) b!5274986))

(assert (= (and b!5274986 res!2237502) b!5274987))

(declare-fun b_lambda!203459 () Bool)

(assert (=> (not b_lambda!203459) (not b!5274986)))

(declare-fun m!6313466 () Bool)

(assert (=> b!5274986 m!6313466))

(declare-fun m!6313468 () Bool)

(assert (=> b!5274987 m!6313468))

(assert (=> d!1697199 d!1697553))

(assert (=> b!5273960 d!1697181))

(declare-fun bs!1222037 () Bool)

(declare-fun d!1697555 () Bool)

(assert (= bs!1222037 (and d!1697555 d!1697199)))

(declare-fun lambda!266215 () Int)

(assert (=> bs!1222037 (= lambda!266215 lambda!266143)))

(declare-fun bs!1222038 () Bool)

(assert (= bs!1222038 (and d!1697555 d!1697171)))

(assert (=> bs!1222038 (= lambda!266215 lambda!266131)))

(declare-fun bs!1222039 () Bool)

(assert (= bs!1222039 (and d!1697555 d!1697197)))

(assert (=> bs!1222039 (= lambda!266215 lambda!266140)))

(declare-fun bs!1222040 () Bool)

(assert (= bs!1222040 (and d!1697555 d!1697147)))

(assert (=> bs!1222040 (= lambda!266215 lambda!266130)))

(declare-fun bs!1222041 () Bool)

(assert (= bs!1222041 (and d!1697555 d!1697181)))

(assert (=> bs!1222041 (= lambda!266215 lambda!266137)))

(declare-fun bs!1222042 () Bool)

(assert (= bs!1222042 (and d!1697555 d!1697335)))

(assert (=> bs!1222042 (= lambda!266215 lambda!266190)))

(declare-fun bs!1222043 () Bool)

(assert (= bs!1222043 (and d!1697555 d!1697485)))

(assert (=> bs!1222043 (= lambda!266215 lambda!266205)))

(declare-fun lt!2157217 () List!60982)

(assert (=> d!1697555 (forall!14302 lt!2157217 lambda!266215)))

(declare-fun e!3280388 () List!60982)

(assert (=> d!1697555 (= lt!2157217 e!3280388)))

(declare-fun c!913989 () Bool)

(assert (=> d!1697555 (= c!913989 (is-Cons!60859 (t!374180 zl!343)))))

(assert (=> d!1697555 (= (unfocusZipperList!336 (t!374180 zl!343)) lt!2157217)))

(declare-fun b!5274988 () Bool)

(assert (=> b!5274988 (= e!3280388 (Cons!60858 (generalisedConcat!563 (exprs!4778 (h!67307 (t!374180 zl!343)))) (unfocusZipperList!336 (t!374180 (t!374180 zl!343)))))))

(declare-fun b!5274989 () Bool)

(assert (=> b!5274989 (= e!3280388 Nil!60858)))

(assert (= (and d!1697555 c!913989) b!5274988))

(assert (= (and d!1697555 (not c!913989)) b!5274989))

(declare-fun m!6313470 () Bool)

(assert (=> d!1697555 m!6313470))

(declare-fun m!6313472 () Bool)

(assert (=> b!5274988 m!6313472))

(declare-fun m!6313474 () Bool)

(assert (=> b!5274988 m!6313474))

(assert (=> b!5273960 d!1697555))

(declare-fun b!5274990 () Bool)

(declare-fun e!3280390 () (Set Context!8556))

(declare-fun e!3280392 () (Set Context!8556))

(assert (=> b!5274990 (= e!3280390 e!3280392)))

(declare-fun c!913994 () Bool)

(assert (=> b!5274990 (= c!913994 (is-Union!14894 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun b!5274991 () Bool)

(declare-fun c!913991 () Bool)

(declare-fun e!3280394 () Bool)

(assert (=> b!5274991 (= c!913991 e!3280394)))

(declare-fun res!2237503 () Bool)

(assert (=> b!5274991 (=> (not res!2237503) (not e!3280394))))

(assert (=> b!5274991 (= res!2237503 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun e!3280391 () (Set Context!8556))

(assert (=> b!5274991 (= e!3280392 e!3280391)))

(declare-fun bm!375215 () Bool)

(declare-fun call!375223 () (Set Context!8556))

(declare-fun call!375225 () (Set Context!8556))

(assert (=> bm!375215 (= call!375223 call!375225)))

(declare-fun call!375220 () List!60982)

(declare-fun call!375221 () (Set Context!8556))

(declare-fun bm!375216 () Bool)

(assert (=> bm!375216 (= call!375221 (derivationStepZipperDown!342 (ite c!913994 (regOne!30301 (h!67306 (exprs!4778 lt!2157029))) (regOne!30300 (h!67306 (exprs!4778 lt!2157029)))) (ite c!913994 (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (Context!8557 call!375220)) (h!67305 s!2326)))))

(declare-fun b!5274992 () Bool)

(assert (=> b!5274992 (= e!3280392 (set.union call!375221 call!375225))))

(declare-fun c!913992 () Bool)

(declare-fun call!375224 () List!60982)

(declare-fun bm!375217 () Bool)

(assert (=> bm!375217 (= call!375225 (derivationStepZipperDown!342 (ite c!913994 (regTwo!30301 (h!67306 (exprs!4778 lt!2157029))) (ite c!913991 (regTwo!30300 (h!67306 (exprs!4778 lt!2157029))) (ite c!913992 (regOne!30300 (h!67306 (exprs!4778 lt!2157029))) (reg!15223 (h!67306 (exprs!4778 lt!2157029)))))) (ite (or c!913994 c!913991) (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (Context!8557 call!375224)) (h!67305 s!2326)))))

(declare-fun bm!375218 () Bool)

(declare-fun call!375222 () (Set Context!8556))

(assert (=> bm!375218 (= call!375222 call!375223)))

(declare-fun bm!375219 () Bool)

(assert (=> bm!375219 (= call!375224 call!375220)))

(declare-fun b!5274993 () Bool)

(declare-fun e!3280393 () (Set Context!8556))

(assert (=> b!5274993 (= e!3280393 (as set.empty (Set Context!8556)))))

(declare-fun d!1697557 () Bool)

(declare-fun c!913993 () Bool)

(assert (=> d!1697557 (= c!913993 (and (is-ElementMatch!14894 (h!67306 (exprs!4778 lt!2157029))) (= (c!913618 (h!67306 (exprs!4778 lt!2157029))) (h!67305 s!2326))))))

(assert (=> d!1697557 (= (derivationStepZipperDown!342 (h!67306 (exprs!4778 lt!2157029)) (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (h!67305 s!2326)) e!3280390)))

(declare-fun b!5274994 () Bool)

(declare-fun c!913990 () Bool)

(assert (=> b!5274994 (= c!913990 (is-Star!14894 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun e!3280389 () (Set Context!8556))

(assert (=> b!5274994 (= e!3280389 e!3280393)))

(declare-fun b!5274995 () Bool)

(assert (=> b!5274995 (= e!3280394 (nullable!5063 (regOne!30300 (h!67306 (exprs!4778 lt!2157029)))))))

(declare-fun b!5274996 () Bool)

(assert (=> b!5274996 (= e!3280391 e!3280389)))

(assert (=> b!5274996 (= c!913992 (is-Concat!23739 (h!67306 (exprs!4778 lt!2157029))))))

(declare-fun b!5274997 () Bool)

(assert (=> b!5274997 (= e!3280390 (set.insert (Context!8557 (t!374179 (exprs!4778 lt!2157029))) (as set.empty (Set Context!8556))))))

(declare-fun b!5274998 () Bool)

(assert (=> b!5274998 (= e!3280391 (set.union call!375221 call!375223))))

(declare-fun b!5274999 () Bool)

(assert (=> b!5274999 (= e!3280389 call!375222)))

(declare-fun b!5275000 () Bool)

(assert (=> b!5275000 (= e!3280393 call!375222)))

(declare-fun bm!375220 () Bool)

(assert (=> bm!375220 (= call!375220 ($colon$colon!1343 (exprs!4778 (Context!8557 (t!374179 (exprs!4778 lt!2157029)))) (ite (or c!913991 c!913992) (regTwo!30300 (h!67306 (exprs!4778 lt!2157029))) (h!67306 (exprs!4778 lt!2157029)))))))

(assert (= (and d!1697557 c!913993) b!5274997))

(assert (= (and d!1697557 (not c!913993)) b!5274990))

(assert (= (and b!5274990 c!913994) b!5274992))

(assert (= (and b!5274990 (not c!913994)) b!5274991))

(assert (= (and b!5274991 res!2237503) b!5274995))

(assert (= (and b!5274991 c!913991) b!5274998))

(assert (= (and b!5274991 (not c!913991)) b!5274996))

(assert (= (and b!5274996 c!913992) b!5274999))

(assert (= (and b!5274996 (not c!913992)) b!5274994))

(assert (= (and b!5274994 c!913990) b!5275000))

(assert (= (and b!5274994 (not c!913990)) b!5274993))

(assert (= (or b!5274999 b!5275000) bm!375219))

(assert (= (or b!5274999 b!5275000) bm!375218))

(assert (= (or b!5274998 bm!375219) bm!375220))

(assert (= (or b!5274998 bm!375218) bm!375215))

(assert (= (or b!5274992 bm!375215) bm!375217))

(assert (= (or b!5274992 b!5274998) bm!375216))

(declare-fun m!6313476 () Bool)

(assert (=> bm!375217 m!6313476))

(declare-fun m!6313478 () Bool)

(assert (=> bm!375220 m!6313478))

(declare-fun m!6313480 () Bool)

(assert (=> b!5274997 m!6313480))

(declare-fun m!6313482 () Bool)

(assert (=> b!5274995 m!6313482))

(declare-fun m!6313484 () Bool)

(assert (=> bm!375216 m!6313484))

(assert (=> bm!375029 d!1697557))

(assert (=> d!1697207 d!1697201))

(assert (=> d!1697207 d!1697465))

(assert (=> d!1697207 d!1697211))

(declare-fun d!1697559 () Bool)

(assert (=> d!1697559 (= (Exists!2075 lambda!266146) (choose!39350 lambda!266146))))

(declare-fun bs!1222044 () Bool)

(assert (= bs!1222044 d!1697559))

(declare-fun m!6313486 () Bool)

(assert (=> bs!1222044 m!6313486))

(assert (=> d!1697207 d!1697559))

(declare-fun bs!1222045 () Bool)

(declare-fun d!1697561 () Bool)

(assert (= bs!1222045 (and d!1697561 d!1697207)))

(declare-fun lambda!266218 () Int)

(assert (=> bs!1222045 (= lambda!266218 lambda!266146)))

(declare-fun bs!1222046 () Bool)

(assert (= bs!1222046 (and d!1697561 b!5274734)))

(assert (=> bs!1222046 (not (= lambda!266218 lambda!266199))))

(declare-fun bs!1222047 () Bool)

(assert (= bs!1222047 (and d!1697561 d!1697529)))

(assert (=> bs!1222047 (= lambda!266218 lambda!266211)))

(declare-fun bs!1222048 () Bool)

(assert (= bs!1222048 (and d!1697561 b!5274045)))

(assert (=> bs!1222048 (not (= lambda!266218 lambda!266157))))

(declare-fun bs!1222049 () Bool)

(assert (= bs!1222049 (and d!1697561 d!1697209)))

(assert (=> bs!1222049 (not (= lambda!266218 lambda!266152))))

(declare-fun bs!1222050 () Bool)

(assert (= bs!1222050 (and d!1697561 b!5274035)))

(assert (=> bs!1222050 (not (= lambda!266218 lambda!266158))))

(declare-fun bs!1222051 () Bool)

(assert (= bs!1222051 (and d!1697561 b!5274724)))

(assert (=> bs!1222051 (not (= lambda!266218 lambda!266200))))

(declare-fun bs!1222052 () Bool)

(assert (= bs!1222052 (and d!1697561 b!5274689)))

(assert (=> bs!1222052 (not (= lambda!266218 lambda!266197))))

(declare-fun bs!1222053 () Bool)

(assert (= bs!1222053 (and d!1697561 b!5273610)))

(assert (=> bs!1222053 (= lambda!266218 lambda!266110)))

(assert (=> bs!1222053 (not (= lambda!266218 lambda!266111))))

(assert (=> bs!1222047 (not (= lambda!266218 lambda!266212))))

(assert (=> bs!1222049 (= lambda!266218 lambda!266151)))

(declare-fun bs!1222054 () Bool)

(assert (= bs!1222054 (and d!1697561 b!5274699)))

(assert (=> bs!1222054 (not (= lambda!266218 lambda!266196))))

(assert (=> d!1697561 true))

(assert (=> d!1697561 true))

(assert (=> d!1697561 true))

(assert (=> d!1697561 (= (isDefined!11708 (findConcatSeparation!1419 (regOne!30300 r!7292) (regTwo!30300 r!7292) Nil!60857 s!2326 s!2326)) (Exists!2075 lambda!266218))))

(assert (=> d!1697561 true))

(declare-fun _$89!1475 () Unit!153094)

(assert (=> d!1697561 (= (choose!39351 (regOne!30300 r!7292) (regTwo!30300 r!7292) s!2326) _$89!1475)))

(declare-fun bs!1222055 () Bool)

(assert (= bs!1222055 d!1697561))

(assert (=> bs!1222055 m!6312354))

(assert (=> bs!1222055 m!6312354))

(assert (=> bs!1222055 m!6312356))

(declare-fun m!6313488 () Bool)

(assert (=> bs!1222055 m!6313488))

(assert (=> d!1697207 d!1697561))

(declare-fun bs!1222056 () Bool)

(declare-fun d!1697563 () Bool)

(assert (= bs!1222056 (and d!1697563 d!1697199)))

(declare-fun lambda!266219 () Int)

(assert (=> bs!1222056 (= lambda!266219 lambda!266143)))

(declare-fun bs!1222057 () Bool)

(assert (= bs!1222057 (and d!1697563 d!1697171)))

(assert (=> bs!1222057 (= lambda!266219 lambda!266131)))

(declare-fun bs!1222058 () Bool)

(assert (= bs!1222058 (and d!1697563 d!1697197)))

(assert (=> bs!1222058 (= lambda!266219 lambda!266140)))

(declare-fun bs!1222059 () Bool)

(assert (= bs!1222059 (and d!1697563 d!1697147)))

(assert (=> bs!1222059 (= lambda!266219 lambda!266130)))

(declare-fun bs!1222060 () Bool)

(assert (= bs!1222060 (and d!1697563 d!1697181)))

(assert (=> bs!1222060 (= lambda!266219 lambda!266137)))

(declare-fun bs!1222061 () Bool)

(assert (= bs!1222061 (and d!1697563 d!1697335)))

(assert (=> bs!1222061 (= lambda!266219 lambda!266190)))

(declare-fun bs!1222062 () Bool)

(assert (= bs!1222062 (and d!1697563 d!1697555)))

(assert (=> bs!1222062 (= lambda!266219 lambda!266215)))

(declare-fun bs!1222063 () Bool)

(assert (= bs!1222063 (and d!1697563 d!1697485)))

(assert (=> bs!1222063 (= lambda!266219 lambda!266205)))

(assert (=> d!1697563 (= (inv!80483 setElem!33776) (forall!14302 (exprs!4778 setElem!33776) lambda!266219))))

(declare-fun bs!1222064 () Bool)

(assert (= bs!1222064 d!1697563))

(declare-fun m!6313490 () Bool)

(assert (=> bs!1222064 m!6313490))

(assert (=> setNonEmpty!33776 d!1697563))

(declare-fun b!5275008 () Bool)

(declare-fun e!3280398 () Bool)

(declare-fun lt!2157218 () List!60981)

(assert (=> b!5275008 (= e!3280398 (or (not (= (_2!35396 (get!20926 lt!2157134)) Nil!60857)) (= lt!2157218 (_1!35396 (get!20926 lt!2157134)))))))

(declare-fun b!5275006 () Bool)

(declare-fun e!3280397 () List!60981)

(assert (=> b!5275006 (= e!3280397 (Cons!60857 (h!67305 (_1!35396 (get!20926 lt!2157134))) (++!13273 (t!374178 (_1!35396 (get!20926 lt!2157134))) (_2!35396 (get!20926 lt!2157134)))))))

(declare-fun b!5275005 () Bool)

(assert (=> b!5275005 (= e!3280397 (_2!35396 (get!20926 lt!2157134)))))

(declare-fun d!1697565 () Bool)

(assert (=> d!1697565 e!3280398))

(declare-fun res!2237509 () Bool)

(assert (=> d!1697565 (=> (not res!2237509) (not e!3280398))))

(assert (=> d!1697565 (= res!2237509 (= (content!10830 lt!2157218) (set.union (content!10830 (_1!35396 (get!20926 lt!2157134))) (content!10830 (_2!35396 (get!20926 lt!2157134))))))))

(assert (=> d!1697565 (= lt!2157218 e!3280397)))

(declare-fun c!913995 () Bool)

(assert (=> d!1697565 (= c!913995 (is-Nil!60857 (_1!35396 (get!20926 lt!2157134))))))

(assert (=> d!1697565 (= (++!13273 (_1!35396 (get!20926 lt!2157134)) (_2!35396 (get!20926 lt!2157134))) lt!2157218)))

(declare-fun b!5275007 () Bool)

(declare-fun res!2237508 () Bool)

(assert (=> b!5275007 (=> (not res!2237508) (not e!3280398))))

(assert (=> b!5275007 (= res!2237508 (= (size!39750 lt!2157218) (+ (size!39750 (_1!35396 (get!20926 lt!2157134))) (size!39750 (_2!35396 (get!20926 lt!2157134))))))))

(assert (= (and d!1697565 c!913995) b!5275005))

(assert (= (and d!1697565 (not c!913995)) b!5275006))

(assert (= (and d!1697565 res!2237509) b!5275007))

(assert (= (and b!5275007 res!2237508) b!5275008))

(declare-fun m!6313492 () Bool)

(assert (=> b!5275006 m!6313492))

(declare-fun m!6313494 () Bool)

(assert (=> d!1697565 m!6313494))

(declare-fun m!6313496 () Bool)

(assert (=> d!1697565 m!6313496))

(declare-fun m!6313498 () Bool)

(assert (=> d!1697565 m!6313498))

(declare-fun m!6313500 () Bool)

(assert (=> b!5275007 m!6313500))

(declare-fun m!6313502 () Bool)

(assert (=> b!5275007 m!6313502))

(declare-fun m!6313504 () Bool)

(assert (=> b!5275007 m!6313504))

(assert (=> b!5273985 d!1697565))

(assert (=> b!5273985 d!1697371))

(declare-fun b!5275009 () Bool)

(declare-fun e!3280402 () Bool)

(declare-fun call!375226 () Bool)

(assert (=> b!5275009 (= e!3280402 call!375226)))

(declare-fun b!5275010 () Bool)

(declare-fun res!2237514 () Bool)

(declare-fun e!3280403 () Bool)

(assert (=> b!5275010 (=> res!2237514 e!3280403)))

(assert (=> b!5275010 (= res!2237514 (not (is-Concat!23739 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))))))))))

(declare-fun e!3280405 () Bool)

(assert (=> b!5275010 (= e!3280405 e!3280403)))

(declare-fun b!5275011 () Bool)

(declare-fun e!3280400 () Bool)

(declare-fun call!375227 () Bool)

(assert (=> b!5275011 (= e!3280400 call!375227)))

(declare-fun d!1697567 () Bool)

(declare-fun res!2237512 () Bool)

(declare-fun e!3280399 () Bool)

(assert (=> d!1697567 (=> res!2237512 e!3280399)))

(assert (=> d!1697567 (= res!2237512 (is-ElementMatch!14894 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(assert (=> d!1697567 (= (validRegex!6630 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))) e!3280399)))

(declare-fun b!5275012 () Bool)

(assert (=> b!5275012 (= e!3280403 e!3280400)))

(declare-fun res!2237511 () Bool)

(assert (=> b!5275012 (=> (not res!2237511) (not e!3280400))))

(declare-fun call!375228 () Bool)

(assert (=> b!5275012 (= res!2237511 call!375228)))

(declare-fun b!5275013 () Bool)

(declare-fun e!3280404 () Bool)

(assert (=> b!5275013 (= e!3280404 call!375227)))

(declare-fun c!913996 () Bool)

(declare-fun c!913997 () Bool)

(declare-fun bm!375221 () Bool)

(assert (=> bm!375221 (= call!375226 (validRegex!6630 (ite c!913997 (reg!15223 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))) (ite c!913996 (regTwo!30301 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))) (regTwo!30300 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292))))))))))))

(declare-fun b!5275014 () Bool)

(declare-fun e!3280401 () Bool)

(assert (=> b!5275014 (= e!3280401 e!3280405)))

(assert (=> b!5275014 (= c!913996 (is-Union!14894 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(declare-fun bm!375222 () Bool)

(assert (=> bm!375222 (= call!375227 call!375226)))

(declare-fun b!5275015 () Bool)

(assert (=> b!5275015 (= e!3280399 e!3280401)))

(assert (=> b!5275015 (= c!913997 (is-Star!14894 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(declare-fun b!5275016 () Bool)

(declare-fun res!2237513 () Bool)

(assert (=> b!5275016 (=> (not res!2237513) (not e!3280404))))

(assert (=> b!5275016 (= res!2237513 call!375228)))

(assert (=> b!5275016 (= e!3280405 e!3280404)))

(declare-fun b!5275017 () Bool)

(assert (=> b!5275017 (= e!3280401 e!3280402)))

(declare-fun res!2237510 () Bool)

(assert (=> b!5275017 (= res!2237510 (not (nullable!5063 (reg!15223 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))))

(assert (=> b!5275017 (=> (not res!2237510) (not e!3280402))))

(declare-fun bm!375223 () Bool)

(assert (=> bm!375223 (= call!375228 (validRegex!6630 (ite c!913996 (regOne!30301 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))) (regOne!30300 (ite c!913641 (reg!15223 (regOne!30300 (regOne!30300 r!7292))) (ite c!913640 (regTwo!30301 (regOne!30300 (regOne!30300 r!7292))) (regTwo!30300 (regOne!30300 (regOne!30300 r!7292)))))))))))

(assert (= (and d!1697567 (not res!2237512)) b!5275015))

(assert (= (and b!5275015 c!913997) b!5275017))

(assert (= (and b!5275015 (not c!913997)) b!5275014))

(assert (= (and b!5275017 res!2237510) b!5275009))

(assert (= (and b!5275014 c!913996) b!5275016))

(assert (= (and b!5275014 (not c!913996)) b!5275010))

(assert (= (and b!5275016 res!2237513) b!5275013))

(assert (= (and b!5275010 (not res!2237514)) b!5275012))

(assert (= (and b!5275012 res!2237511) b!5275011))

(assert (= (or b!5275013 b!5275011) bm!375222))

(assert (= (or b!5275016 b!5275012) bm!375223))

(assert (= (or b!5275009 bm!375222) bm!375221))

(declare-fun m!6313506 () Bool)

(assert (=> bm!375221 m!6313506))

(declare-fun m!6313508 () Bool)

(assert (=> b!5275017 m!6313508))

(declare-fun m!6313510 () Bool)

(assert (=> bm!375223 m!6313510))

(assert (=> bm!374996 d!1697567))

(declare-fun d!1697569 () Bool)

(assert (=> d!1697569 (= (nullable!5063 r!7292) (nullableFct!1445 r!7292))))

(declare-fun bs!1222065 () Bool)

(assert (= bs!1222065 d!1697569))

(declare-fun m!6313512 () Bool)

(assert (=> bs!1222065 m!6313512))

(assert (=> b!5274076 d!1697569))

(declare-fun bs!1222066 () Bool)

(declare-fun d!1697571 () Bool)

(assert (= bs!1222066 (and d!1697571 d!1697475)))

(declare-fun lambda!266220 () Int)

(assert (=> bs!1222066 (= lambda!266220 lambda!266204)))

(declare-fun bs!1222067 () Bool)

(assert (= bs!1222067 (and d!1697571 d!1697397)))

(assert (=> bs!1222067 (= lambda!266220 lambda!266195)))

(declare-fun bs!1222068 () Bool)

(assert (= bs!1222068 (and d!1697571 d!1697473)))

(assert (=> bs!1222068 (= lambda!266220 lambda!266203)))

(declare-fun bs!1222069 () Bool)

(assert (= bs!1222069 (and d!1697571 d!1697519)))

(assert (=> bs!1222069 (= lambda!266220 lambda!266206)))

(declare-fun bs!1222070 () Bool)

(assert (= bs!1222070 (and d!1697571 d!1697363)))

(assert (=> bs!1222070 (= lambda!266220 lambda!266193)))

(assert (=> d!1697571 (= (nullableZipper!1293 lt!2157019) (exists!1996 lt!2157019 lambda!266220))))

(declare-fun bs!1222071 () Bool)

(assert (= bs!1222071 d!1697571))

(declare-fun m!6313514 () Bool)

(assert (=> bs!1222071 m!6313514))

(assert (=> b!5273756 d!1697571))

(assert (=> d!1697141 d!1697375))

(declare-fun bs!1222072 () Bool)

(declare-fun d!1697573 () Bool)

(assert (= bs!1222072 (and d!1697573 d!1697199)))

(declare-fun lambda!266221 () Int)

(assert (=> bs!1222072 (= lambda!266221 lambda!266143)))

(declare-fun bs!1222073 () Bool)

(assert (= bs!1222073 (and d!1697573 d!1697563)))

(assert (=> bs!1222073 (= lambda!266221 lambda!266219)))

(declare-fun bs!1222074 () Bool)

(assert (= bs!1222074 (and d!1697573 d!1697171)))

(assert (=> bs!1222074 (= lambda!266221 lambda!266131)))

(declare-fun bs!1222075 () Bool)

(assert (= bs!1222075 (and d!1697573 d!1697197)))

(assert (=> bs!1222075 (= lambda!266221 lambda!266140)))

(declare-fun bs!1222076 () Bool)

(assert (= bs!1222076 (and d!1697573 d!1697147)))

(assert (=> bs!1222076 (= lambda!266221 lambda!266130)))

(declare-fun bs!1222077 () Bool)

(assert (= bs!1222077 (and d!1697573 d!1697181)))

(assert (=> bs!1222077 (= lambda!266221 lambda!266137)))

(declare-fun bs!1222078 () Bool)

(assert (= bs!1222078 (and d!1697573 d!1697335)))

(assert (=> bs!1222078 (= lambda!266221 lambda!266190)))

(declare-fun bs!1222079 () Bool)

(assert (= bs!1222079 (and d!1697573 d!1697555)))

(assert (=> bs!1222079 (= lambda!266221 lambda!266215)))

(declare-fun bs!1222080 () Bool)

(assert (= bs!1222080 (and d!1697573 d!1697485)))

(assert (=> bs!1222080 (= lambda!266221 lambda!266205)))

(assert (=> d!1697573 (= (inv!80483 (h!67307 (t!374180 zl!343))) (forall!14302 (exprs!4778 (h!67307 (t!374180 zl!343))) lambda!266221))))

(declare-fun bs!1222081 () Bool)

(assert (= bs!1222081 d!1697573))

(declare-fun m!6313516 () Bool)

(assert (=> bs!1222081 m!6313516))

(assert (=> b!5274102 d!1697573))

(declare-fun b!5275018 () Bool)

(declare-fun e!3280407 () (Set Context!8556))

(declare-fun e!3280409 () (Set Context!8556))

(assert (=> b!5275018 (= e!3280407 e!3280409)))

(declare-fun c!914002 () Bool)

(assert (=> b!5275018 (= c!914002 (is-Union!14894 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5275019 () Bool)

(declare-fun c!913999 () Bool)

(declare-fun e!3280411 () Bool)

(assert (=> b!5275019 (= c!913999 e!3280411)))

(declare-fun res!2237515 () Bool)

(assert (=> b!5275019 (=> (not res!2237515) (not e!3280411))))

(assert (=> b!5275019 (= res!2237515 (is-Concat!23739 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun e!3280408 () (Set Context!8556))

(assert (=> b!5275019 (= e!3280409 e!3280408)))

(declare-fun bm!375224 () Bool)

(declare-fun call!375232 () (Set Context!8556))

(declare-fun call!375234 () (Set Context!8556))

(assert (=> bm!375224 (= call!375232 call!375234)))

(declare-fun call!375230 () (Set Context!8556))

(declare-fun call!375229 () List!60982)

(declare-fun bm!375225 () Bool)

(assert (=> bm!375225 (= call!375230 (derivationStepZipperDown!342 (ite c!914002 (regOne!30301 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (regOne!30300 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))) (ite c!914002 (ite c!913668 lt!2157020 (Context!8557 call!375025)) (Context!8557 call!375229)) (h!67305 s!2326)))))

(declare-fun b!5275020 () Bool)

(assert (=> b!5275020 (= e!3280409 (set.union call!375230 call!375234))))

(declare-fun bm!375226 () Bool)

(declare-fun c!914000 () Bool)

(declare-fun call!375233 () List!60982)

(assert (=> bm!375226 (= call!375234 (derivationStepZipperDown!342 (ite c!914002 (regTwo!30301 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (ite c!913999 (regTwo!30300 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (ite c!914000 (regOne!30300 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (reg!15223 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))) (ite (or c!914002 c!913999) (ite c!913668 lt!2157020 (Context!8557 call!375025)) (Context!8557 call!375233)) (h!67305 s!2326)))))

(declare-fun bm!375227 () Bool)

(declare-fun call!375231 () (Set Context!8556))

(assert (=> bm!375227 (= call!375231 call!375232)))

(declare-fun bm!375228 () Bool)

(assert (=> bm!375228 (= call!375233 call!375229)))

(declare-fun b!5275021 () Bool)

(declare-fun e!3280410 () (Set Context!8556))

(assert (=> b!5275021 (= e!3280410 (as set.empty (Set Context!8556)))))

(declare-fun c!914001 () Bool)

(declare-fun d!1697575 () Bool)

(assert (=> d!1697575 (= c!914001 (and (is-ElementMatch!14894 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (= (c!913618 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (h!67305 s!2326))))))

(assert (=> d!1697575 (= (derivationStepZipperDown!342 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))) (ite c!913668 lt!2157020 (Context!8557 call!375025)) (h!67305 s!2326)) e!3280407)))

(declare-fun b!5275022 () Bool)

(declare-fun c!913998 () Bool)

(assert (=> b!5275022 (= c!913998 (is-Star!14894 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun e!3280406 () (Set Context!8556))

(assert (=> b!5275022 (= e!3280406 e!3280410)))

(declare-fun b!5275023 () Bool)

(assert (=> b!5275023 (= e!3280411 (nullable!5063 (regOne!30300 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(declare-fun b!5275024 () Bool)

(assert (=> b!5275024 (= e!3280408 e!3280406)))

(assert (=> b!5275024 (= c!914000 (is-Concat!23739 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))))))

(declare-fun b!5275025 () Bool)

(assert (=> b!5275025 (= e!3280407 (set.insert (ite c!913668 lt!2157020 (Context!8557 call!375025)) (as set.empty (Set Context!8556))))))

(declare-fun b!5275026 () Bool)

(assert (=> b!5275026 (= e!3280408 (set.union call!375230 call!375232))))

(declare-fun b!5275027 () Bool)

(assert (=> b!5275027 (= e!3280406 call!375231)))

(declare-fun b!5275028 () Bool)

(assert (=> b!5275028 (= e!3280410 call!375231)))

(declare-fun bm!375229 () Bool)

(assert (=> bm!375229 (= call!375229 ($colon$colon!1343 (exprs!4778 (ite c!913668 lt!2157020 (Context!8557 call!375025))) (ite (or c!913999 c!914000) (regTwo!30300 (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292))))) (ite c!913668 (regOne!30301 (regOne!30300 (regOne!30300 r!7292))) (regOne!30300 (regOne!30300 (regOne!30300 r!7292)))))))))

(assert (= (and d!1697575 c!914001) b!5275025))

(assert (= (and d!1697575 (not c!914001)) b!5275018))

(assert (= (and b!5275018 c!914002) b!5275020))

(assert (= (and b!5275018 (not c!914002)) b!5275019))

(assert (= (and b!5275019 res!2237515) b!5275023))

(assert (= (and b!5275019 c!913999) b!5275026))

(assert (= (and b!5275019 (not c!913999)) b!5275024))

(assert (= (and b!5275024 c!914000) b!5275027))

(assert (= (and b!5275024 (not c!914000)) b!5275022))

(assert (= (and b!5275022 c!913998) b!5275028))

(assert (= (and b!5275022 (not c!913998)) b!5275021))

(assert (= (or b!5275027 b!5275028) bm!375228))

(assert (= (or b!5275027 b!5275028) bm!375227))

(assert (= (or b!5275026 bm!375228) bm!375229))

(assert (= (or b!5275026 bm!375227) bm!375224))

(assert (= (or b!5275020 bm!375224) bm!375226))

(assert (= (or b!5275020 b!5275026) bm!375225))

(declare-fun m!6313518 () Bool)

(assert (=> bm!375226 m!6313518))

(declare-fun m!6313520 () Bool)

(assert (=> bm!375229 m!6313520))

(declare-fun m!6313522 () Bool)

(assert (=> b!5275025 m!6313522))

(declare-fun m!6313524 () Bool)

(assert (=> b!5275023 m!6313524))

(declare-fun m!6313526 () Bool)

(assert (=> bm!375225 m!6313526))

(assert (=> bm!375021 d!1697575))

(assert (=> bs!1221880 d!1697153))

(declare-fun b!5275032 () Bool)

(declare-fun e!3280412 () Bool)

(declare-fun tp!1473979 () Bool)

(declare-fun tp!1473981 () Bool)

(assert (=> b!5275032 (= e!3280412 (and tp!1473979 tp!1473981))))

(assert (=> b!5274142 (= tp!1473901 e!3280412)))

(declare-fun b!5275029 () Bool)

(assert (=> b!5275029 (= e!3280412 tp_is_empty!39041)))

(declare-fun b!5275030 () Bool)

(declare-fun tp!1473980 () Bool)

(declare-fun tp!1473978 () Bool)

(assert (=> b!5275030 (= e!3280412 (and tp!1473980 tp!1473978))))

(declare-fun b!5275031 () Bool)

(declare-fun tp!1473982 () Bool)

(assert (=> b!5275031 (= e!3280412 tp!1473982)))

(assert (= (and b!5274142 (is-ElementMatch!14894 (reg!15223 (regTwo!30301 r!7292)))) b!5275029))

(assert (= (and b!5274142 (is-Concat!23739 (reg!15223 (regTwo!30301 r!7292)))) b!5275030))

(assert (= (and b!5274142 (is-Star!14894 (reg!15223 (regTwo!30301 r!7292)))) b!5275031))

(assert (= (and b!5274142 (is-Union!14894 (reg!15223 (regTwo!30301 r!7292)))) b!5275032))

(declare-fun b!5275036 () Bool)

(declare-fun e!3280413 () Bool)

(declare-fun tp!1473984 () Bool)

(declare-fun tp!1473986 () Bool)

(assert (=> b!5275036 (= e!3280413 (and tp!1473984 tp!1473986))))

(assert (=> b!5274133 (= tp!1473889 e!3280413)))

(declare-fun b!5275033 () Bool)

(assert (=> b!5275033 (= e!3280413 tp_is_empty!39041)))

(declare-fun b!5275034 () Bool)

(declare-fun tp!1473985 () Bool)

(declare-fun tp!1473983 () Bool)

(assert (=> b!5275034 (= e!3280413 (and tp!1473985 tp!1473983))))

(declare-fun b!5275035 () Bool)

(declare-fun tp!1473987 () Bool)

(assert (=> b!5275035 (= e!3280413 tp!1473987)))

(assert (= (and b!5274133 (is-ElementMatch!14894 (regOne!30300 (regTwo!30300 r!7292)))) b!5275033))

(assert (= (and b!5274133 (is-Concat!23739 (regOne!30300 (regTwo!30300 r!7292)))) b!5275034))

(assert (= (and b!5274133 (is-Star!14894 (regOne!30300 (regTwo!30300 r!7292)))) b!5275035))

(assert (= (and b!5274133 (is-Union!14894 (regOne!30300 (regTwo!30300 r!7292)))) b!5275036))

(declare-fun b!5275040 () Bool)

(declare-fun e!3280414 () Bool)

(declare-fun tp!1473989 () Bool)

(declare-fun tp!1473991 () Bool)

(assert (=> b!5275040 (= e!3280414 (and tp!1473989 tp!1473991))))

(assert (=> b!5274133 (= tp!1473887 e!3280414)))

(declare-fun b!5275037 () Bool)

(assert (=> b!5275037 (= e!3280414 tp_is_empty!39041)))

(declare-fun b!5275038 () Bool)

(declare-fun tp!1473990 () Bool)

(declare-fun tp!1473988 () Bool)

(assert (=> b!5275038 (= e!3280414 (and tp!1473990 tp!1473988))))

(declare-fun b!5275039 () Bool)

(declare-fun tp!1473992 () Bool)

(assert (=> b!5275039 (= e!3280414 tp!1473992)))

(assert (= (and b!5274133 (is-ElementMatch!14894 (regTwo!30300 (regTwo!30300 r!7292)))) b!5275037))

(assert (= (and b!5274133 (is-Concat!23739 (regTwo!30300 (regTwo!30300 r!7292)))) b!5275038))

(assert (= (and b!5274133 (is-Star!14894 (regTwo!30300 (regTwo!30300 r!7292)))) b!5275039))

(assert (= (and b!5274133 (is-Union!14894 (regTwo!30300 (regTwo!30300 r!7292)))) b!5275040))

(declare-fun b!5275044 () Bool)

(declare-fun e!3280415 () Bool)

(declare-fun tp!1473994 () Bool)

(declare-fun tp!1473996 () Bool)

(assert (=> b!5275044 (= e!3280415 (and tp!1473994 tp!1473996))))

(assert (=> b!5274143 (= tp!1473898 e!3280415)))

(declare-fun b!5275041 () Bool)

(assert (=> b!5275041 (= e!3280415 tp_is_empty!39041)))

(declare-fun b!5275042 () Bool)

(declare-fun tp!1473995 () Bool)

(declare-fun tp!1473993 () Bool)

(assert (=> b!5275042 (= e!3280415 (and tp!1473995 tp!1473993))))

(declare-fun b!5275043 () Bool)

(declare-fun tp!1473997 () Bool)

(assert (=> b!5275043 (= e!3280415 tp!1473997)))

(assert (= (and b!5274143 (is-ElementMatch!14894 (regOne!30301 (regTwo!30301 r!7292)))) b!5275041))

(assert (= (and b!5274143 (is-Concat!23739 (regOne!30301 (regTwo!30301 r!7292)))) b!5275042))

(assert (= (and b!5274143 (is-Star!14894 (regOne!30301 (regTwo!30301 r!7292)))) b!5275043))

(assert (= (and b!5274143 (is-Union!14894 (regOne!30301 (regTwo!30301 r!7292)))) b!5275044))

(declare-fun b!5275048 () Bool)

(declare-fun e!3280416 () Bool)

(declare-fun tp!1473999 () Bool)

(declare-fun tp!1474001 () Bool)

(assert (=> b!5275048 (= e!3280416 (and tp!1473999 tp!1474001))))

(assert (=> b!5274143 (= tp!1473900 e!3280416)))

(declare-fun b!5275045 () Bool)

(assert (=> b!5275045 (= e!3280416 tp_is_empty!39041)))

(declare-fun b!5275046 () Bool)

(declare-fun tp!1474000 () Bool)

(declare-fun tp!1473998 () Bool)

(assert (=> b!5275046 (= e!3280416 (and tp!1474000 tp!1473998))))

(declare-fun b!5275047 () Bool)

(declare-fun tp!1474002 () Bool)

(assert (=> b!5275047 (= e!3280416 tp!1474002)))

(assert (= (and b!5274143 (is-ElementMatch!14894 (regTwo!30301 (regTwo!30301 r!7292)))) b!5275045))

(assert (= (and b!5274143 (is-Concat!23739 (regTwo!30301 (regTwo!30301 r!7292)))) b!5275046))

(assert (= (and b!5274143 (is-Star!14894 (regTwo!30301 (regTwo!30301 r!7292)))) b!5275047))

(assert (= (and b!5274143 (is-Union!14894 (regTwo!30301 (regTwo!30301 r!7292)))) b!5275048))

(declare-fun b!5275052 () Bool)

(declare-fun e!3280417 () Bool)

(declare-fun tp!1474004 () Bool)

(declare-fun tp!1474006 () Bool)

(assert (=> b!5275052 (= e!3280417 (and tp!1474004 tp!1474006))))

(assert (=> b!5274134 (= tp!1473891 e!3280417)))

(declare-fun b!5275049 () Bool)

(assert (=> b!5275049 (= e!3280417 tp_is_empty!39041)))

(declare-fun b!5275050 () Bool)

(declare-fun tp!1474005 () Bool)

(declare-fun tp!1474003 () Bool)

(assert (=> b!5275050 (= e!3280417 (and tp!1474005 tp!1474003))))

(declare-fun b!5275051 () Bool)

(declare-fun tp!1474007 () Bool)

(assert (=> b!5275051 (= e!3280417 tp!1474007)))

(assert (= (and b!5274134 (is-ElementMatch!14894 (reg!15223 (regTwo!30300 r!7292)))) b!5275049))

(assert (= (and b!5274134 (is-Concat!23739 (reg!15223 (regTwo!30300 r!7292)))) b!5275050))

(assert (= (and b!5274134 (is-Star!14894 (reg!15223 (regTwo!30300 r!7292)))) b!5275051))

(assert (= (and b!5274134 (is-Union!14894 (reg!15223 (regTwo!30300 r!7292)))) b!5275052))

(declare-fun b!5275056 () Bool)

(declare-fun e!3280418 () Bool)

(declare-fun tp!1474009 () Bool)

(declare-fun tp!1474011 () Bool)

(assert (=> b!5275056 (= e!3280418 (and tp!1474009 tp!1474011))))

(assert (=> b!5274135 (= tp!1473888 e!3280418)))

(declare-fun b!5275053 () Bool)

(assert (=> b!5275053 (= e!3280418 tp_is_empty!39041)))

(declare-fun b!5275054 () Bool)

(declare-fun tp!1474010 () Bool)

(declare-fun tp!1474008 () Bool)

(assert (=> b!5275054 (= e!3280418 (and tp!1474010 tp!1474008))))

(declare-fun b!5275055 () Bool)

(declare-fun tp!1474012 () Bool)

(assert (=> b!5275055 (= e!3280418 tp!1474012)))

(assert (= (and b!5274135 (is-ElementMatch!14894 (regOne!30301 (regTwo!30300 r!7292)))) b!5275053))

(assert (= (and b!5274135 (is-Concat!23739 (regOne!30301 (regTwo!30300 r!7292)))) b!5275054))

(assert (= (and b!5274135 (is-Star!14894 (regOne!30301 (regTwo!30300 r!7292)))) b!5275055))

(assert (= (and b!5274135 (is-Union!14894 (regOne!30301 (regTwo!30300 r!7292)))) b!5275056))

(declare-fun b!5275060 () Bool)

(declare-fun e!3280419 () Bool)

(declare-fun tp!1474014 () Bool)

(declare-fun tp!1474016 () Bool)

(assert (=> b!5275060 (= e!3280419 (and tp!1474014 tp!1474016))))

(assert (=> b!5274135 (= tp!1473890 e!3280419)))

(declare-fun b!5275057 () Bool)

(assert (=> b!5275057 (= e!3280419 tp_is_empty!39041)))

(declare-fun b!5275058 () Bool)

(declare-fun tp!1474015 () Bool)

(declare-fun tp!1474013 () Bool)

(assert (=> b!5275058 (= e!3280419 (and tp!1474015 tp!1474013))))

(declare-fun b!5275059 () Bool)

(declare-fun tp!1474017 () Bool)

(assert (=> b!5275059 (= e!3280419 tp!1474017)))

(assert (= (and b!5274135 (is-ElementMatch!14894 (regTwo!30301 (regTwo!30300 r!7292)))) b!5275057))

(assert (= (and b!5274135 (is-Concat!23739 (regTwo!30301 (regTwo!30300 r!7292)))) b!5275058))

(assert (= (and b!5274135 (is-Star!14894 (regTwo!30301 (regTwo!30300 r!7292)))) b!5275059))

(assert (= (and b!5274135 (is-Union!14894 (regTwo!30301 (regTwo!30300 r!7292)))) b!5275060))

(declare-fun b!5275061 () Bool)

(declare-fun e!3280420 () Bool)

(declare-fun tp!1474018 () Bool)

(assert (=> b!5275061 (= e!3280420 (and tp_is_empty!39041 tp!1474018))))

(assert (=> b!5274127 (= tp!1473881 e!3280420)))

(assert (= (and b!5274127 (is-Cons!60857 (t!374178 (t!374178 s!2326)))) b!5275061))

(declare-fun b!5275065 () Bool)

(declare-fun e!3280421 () Bool)

(declare-fun tp!1474020 () Bool)

(declare-fun tp!1474022 () Bool)

(assert (=> b!5275065 (= e!3280421 (and tp!1474020 tp!1474022))))

(assert (=> b!5274144 (= tp!1473902 e!3280421)))

(declare-fun b!5275062 () Bool)

(assert (=> b!5275062 (= e!3280421 tp_is_empty!39041)))

(declare-fun b!5275063 () Bool)

(declare-fun tp!1474021 () Bool)

(declare-fun tp!1474019 () Bool)

(assert (=> b!5275063 (= e!3280421 (and tp!1474021 tp!1474019))))

(declare-fun b!5275064 () Bool)

(declare-fun tp!1474023 () Bool)

(assert (=> b!5275064 (= e!3280421 tp!1474023)))

(assert (= (and b!5274144 (is-ElementMatch!14894 (h!67306 (exprs!4778 setElem!33770)))) b!5275062))

(assert (= (and b!5274144 (is-Concat!23739 (h!67306 (exprs!4778 setElem!33770)))) b!5275063))

(assert (= (and b!5274144 (is-Star!14894 (h!67306 (exprs!4778 setElem!33770)))) b!5275064))

(assert (= (and b!5274144 (is-Union!14894 (h!67306 (exprs!4778 setElem!33770)))) b!5275065))

(declare-fun b!5275066 () Bool)

(declare-fun e!3280422 () Bool)

(declare-fun tp!1474024 () Bool)

(declare-fun tp!1474025 () Bool)

(assert (=> b!5275066 (= e!3280422 (and tp!1474024 tp!1474025))))

(assert (=> b!5274144 (= tp!1473903 e!3280422)))

(assert (= (and b!5274144 (is-Cons!60858 (t!374179 (exprs!4778 setElem!33770)))) b!5275066))

(declare-fun b!5275070 () Bool)

(declare-fun e!3280423 () Bool)

(declare-fun tp!1474027 () Bool)

(declare-fun tp!1474029 () Bool)

(assert (=> b!5275070 (= e!3280423 (and tp!1474027 tp!1474029))))

(assert (=> b!5274120 (= tp!1473876 e!3280423)))

(declare-fun b!5275067 () Bool)

(assert (=> b!5275067 (= e!3280423 tp_is_empty!39041)))

(declare-fun b!5275068 () Bool)

(declare-fun tp!1474028 () Bool)

(declare-fun tp!1474026 () Bool)

(assert (=> b!5275068 (= e!3280423 (and tp!1474028 tp!1474026))))

(declare-fun b!5275069 () Bool)

(declare-fun tp!1474030 () Bool)

(assert (=> b!5275069 (= e!3280423 tp!1474030)))

(assert (= (and b!5274120 (is-ElementMatch!14894 (regOne!30300 (reg!15223 r!7292)))) b!5275067))

(assert (= (and b!5274120 (is-Concat!23739 (regOne!30300 (reg!15223 r!7292)))) b!5275068))

(assert (= (and b!5274120 (is-Star!14894 (regOne!30300 (reg!15223 r!7292)))) b!5275069))

(assert (= (and b!5274120 (is-Union!14894 (regOne!30300 (reg!15223 r!7292)))) b!5275070))

(declare-fun b!5275074 () Bool)

(declare-fun e!3280424 () Bool)

(declare-fun tp!1474032 () Bool)

(declare-fun tp!1474034 () Bool)

(assert (=> b!5275074 (= e!3280424 (and tp!1474032 tp!1474034))))

(assert (=> b!5274120 (= tp!1473874 e!3280424)))

(declare-fun b!5275071 () Bool)

(assert (=> b!5275071 (= e!3280424 tp_is_empty!39041)))

(declare-fun b!5275072 () Bool)

(declare-fun tp!1474033 () Bool)

(declare-fun tp!1474031 () Bool)

(assert (=> b!5275072 (= e!3280424 (and tp!1474033 tp!1474031))))

(declare-fun b!5275073 () Bool)

(declare-fun tp!1474035 () Bool)

(assert (=> b!5275073 (= e!3280424 tp!1474035)))

(assert (= (and b!5274120 (is-ElementMatch!14894 (regTwo!30300 (reg!15223 r!7292)))) b!5275071))

(assert (= (and b!5274120 (is-Concat!23739 (regTwo!30300 (reg!15223 r!7292)))) b!5275072))

(assert (= (and b!5274120 (is-Star!14894 (regTwo!30300 (reg!15223 r!7292)))) b!5275073))

(assert (= (and b!5274120 (is-Union!14894 (regTwo!30300 (reg!15223 r!7292)))) b!5275074))

(declare-fun b!5275078 () Bool)

(declare-fun e!3280425 () Bool)

(declare-fun tp!1474037 () Bool)

(declare-fun tp!1474039 () Bool)

(assert (=> b!5275078 (= e!3280425 (and tp!1474037 tp!1474039))))

(assert (=> b!5274121 (= tp!1473878 e!3280425)))

(declare-fun b!5275075 () Bool)

(assert (=> b!5275075 (= e!3280425 tp_is_empty!39041)))

(declare-fun b!5275076 () Bool)

(declare-fun tp!1474038 () Bool)

(declare-fun tp!1474036 () Bool)

(assert (=> b!5275076 (= e!3280425 (and tp!1474038 tp!1474036))))

(declare-fun b!5275077 () Bool)

(declare-fun tp!1474040 () Bool)

(assert (=> b!5275077 (= e!3280425 tp!1474040)))

(assert (= (and b!5274121 (is-ElementMatch!14894 (reg!15223 (reg!15223 r!7292)))) b!5275075))

(assert (= (and b!5274121 (is-Concat!23739 (reg!15223 (reg!15223 r!7292)))) b!5275076))

(assert (= (and b!5274121 (is-Star!14894 (reg!15223 (reg!15223 r!7292)))) b!5275077))

(assert (= (and b!5274121 (is-Union!14894 (reg!15223 (reg!15223 r!7292)))) b!5275078))

(declare-fun b!5275082 () Bool)

(declare-fun e!3280426 () Bool)

(declare-fun tp!1474042 () Bool)

(declare-fun tp!1474044 () Bool)

(assert (=> b!5275082 (= e!3280426 (and tp!1474042 tp!1474044))))

(assert (=> b!5274122 (= tp!1473875 e!3280426)))

(declare-fun b!5275079 () Bool)

(assert (=> b!5275079 (= e!3280426 tp_is_empty!39041)))

(declare-fun b!5275080 () Bool)

(declare-fun tp!1474043 () Bool)

(declare-fun tp!1474041 () Bool)

(assert (=> b!5275080 (= e!3280426 (and tp!1474043 tp!1474041))))

(declare-fun b!5275081 () Bool)

(declare-fun tp!1474045 () Bool)

(assert (=> b!5275081 (= e!3280426 tp!1474045)))

(assert (= (and b!5274122 (is-ElementMatch!14894 (regOne!30301 (reg!15223 r!7292)))) b!5275079))

(assert (= (and b!5274122 (is-Concat!23739 (regOne!30301 (reg!15223 r!7292)))) b!5275080))

(assert (= (and b!5274122 (is-Star!14894 (regOne!30301 (reg!15223 r!7292)))) b!5275081))

(assert (= (and b!5274122 (is-Union!14894 (regOne!30301 (reg!15223 r!7292)))) b!5275082))

(declare-fun b!5275086 () Bool)

(declare-fun e!3280427 () Bool)

(declare-fun tp!1474047 () Bool)

(declare-fun tp!1474049 () Bool)

(assert (=> b!5275086 (= e!3280427 (and tp!1474047 tp!1474049))))

(assert (=> b!5274122 (= tp!1473877 e!3280427)))

(declare-fun b!5275083 () Bool)

(assert (=> b!5275083 (= e!3280427 tp_is_empty!39041)))

(declare-fun b!5275084 () Bool)

(declare-fun tp!1474048 () Bool)

(declare-fun tp!1474046 () Bool)

(assert (=> b!5275084 (= e!3280427 (and tp!1474048 tp!1474046))))

(declare-fun b!5275085 () Bool)

(declare-fun tp!1474050 () Bool)

(assert (=> b!5275085 (= e!3280427 tp!1474050)))

(assert (= (and b!5274122 (is-ElementMatch!14894 (regTwo!30301 (reg!15223 r!7292)))) b!5275083))

(assert (= (and b!5274122 (is-Concat!23739 (regTwo!30301 (reg!15223 r!7292)))) b!5275084))

(assert (= (and b!5274122 (is-Star!14894 (regTwo!30301 (reg!15223 r!7292)))) b!5275085))

(assert (= (and b!5274122 (is-Union!14894 (regTwo!30301 (reg!15223 r!7292)))) b!5275086))

(declare-fun b!5275090 () Bool)

(declare-fun e!3280428 () Bool)

(declare-fun tp!1474052 () Bool)

(declare-fun tp!1474054 () Bool)

(assert (=> b!5275090 (= e!3280428 (and tp!1474052 tp!1474054))))

(assert (=> b!5274137 (= tp!1473894 e!3280428)))

(declare-fun b!5275087 () Bool)

(assert (=> b!5275087 (= e!3280428 tp_is_empty!39041)))

(declare-fun b!5275088 () Bool)

(declare-fun tp!1474053 () Bool)

(declare-fun tp!1474051 () Bool)

(assert (=> b!5275088 (= e!3280428 (and tp!1474053 tp!1474051))))

(declare-fun b!5275089 () Bool)

(declare-fun tp!1474055 () Bool)

(assert (=> b!5275089 (= e!3280428 tp!1474055)))

(assert (= (and b!5274137 (is-ElementMatch!14894 (regOne!30300 (regOne!30301 r!7292)))) b!5275087))

(assert (= (and b!5274137 (is-Concat!23739 (regOne!30300 (regOne!30301 r!7292)))) b!5275088))

(assert (= (and b!5274137 (is-Star!14894 (regOne!30300 (regOne!30301 r!7292)))) b!5275089))

(assert (= (and b!5274137 (is-Union!14894 (regOne!30300 (regOne!30301 r!7292)))) b!5275090))

(declare-fun b!5275094 () Bool)

(declare-fun e!3280429 () Bool)

(declare-fun tp!1474057 () Bool)

(declare-fun tp!1474059 () Bool)

(assert (=> b!5275094 (= e!3280429 (and tp!1474057 tp!1474059))))

(assert (=> b!5274137 (= tp!1473892 e!3280429)))

(declare-fun b!5275091 () Bool)

(assert (=> b!5275091 (= e!3280429 tp_is_empty!39041)))

(declare-fun b!5275092 () Bool)

(declare-fun tp!1474058 () Bool)

(declare-fun tp!1474056 () Bool)

(assert (=> b!5275092 (= e!3280429 (and tp!1474058 tp!1474056))))

(declare-fun b!5275093 () Bool)

(declare-fun tp!1474060 () Bool)

(assert (=> b!5275093 (= e!3280429 tp!1474060)))

(assert (= (and b!5274137 (is-ElementMatch!14894 (regTwo!30300 (regOne!30301 r!7292)))) b!5275091))

(assert (= (and b!5274137 (is-Concat!23739 (regTwo!30300 (regOne!30301 r!7292)))) b!5275092))

(assert (= (and b!5274137 (is-Star!14894 (regTwo!30300 (regOne!30301 r!7292)))) b!5275093))

(assert (= (and b!5274137 (is-Union!14894 (regTwo!30300 (regOne!30301 r!7292)))) b!5275094))

(declare-fun b!5275098 () Bool)

(declare-fun e!3280430 () Bool)

(declare-fun tp!1474062 () Bool)

(declare-fun tp!1474064 () Bool)

(assert (=> b!5275098 (= e!3280430 (and tp!1474062 tp!1474064))))

(assert (=> b!5274138 (= tp!1473896 e!3280430)))

(declare-fun b!5275095 () Bool)

(assert (=> b!5275095 (= e!3280430 tp_is_empty!39041)))

(declare-fun b!5275096 () Bool)

(declare-fun tp!1474063 () Bool)

(declare-fun tp!1474061 () Bool)

(assert (=> b!5275096 (= e!3280430 (and tp!1474063 tp!1474061))))

(declare-fun b!5275097 () Bool)

(declare-fun tp!1474065 () Bool)

(assert (=> b!5275097 (= e!3280430 tp!1474065)))

(assert (= (and b!5274138 (is-ElementMatch!14894 (reg!15223 (regOne!30301 r!7292)))) b!5275095))

(assert (= (and b!5274138 (is-Concat!23739 (reg!15223 (regOne!30301 r!7292)))) b!5275096))

(assert (= (and b!5274138 (is-Star!14894 (reg!15223 (regOne!30301 r!7292)))) b!5275097))

(assert (= (and b!5274138 (is-Union!14894 (reg!15223 (regOne!30301 r!7292)))) b!5275098))

(declare-fun b!5275102 () Bool)

(declare-fun e!3280431 () Bool)

(declare-fun tp!1474067 () Bool)

(declare-fun tp!1474069 () Bool)

(assert (=> b!5275102 (= e!3280431 (and tp!1474067 tp!1474069))))

(assert (=> b!5274129 (= tp!1473884 e!3280431)))

(declare-fun b!5275099 () Bool)

(assert (=> b!5275099 (= e!3280431 tp_is_empty!39041)))

(declare-fun b!5275100 () Bool)

(declare-fun tp!1474068 () Bool)

(declare-fun tp!1474066 () Bool)

(assert (=> b!5275100 (= e!3280431 (and tp!1474068 tp!1474066))))

(declare-fun b!5275101 () Bool)

(declare-fun tp!1474070 () Bool)

(assert (=> b!5275101 (= e!3280431 tp!1474070)))

(assert (= (and b!5274129 (is-ElementMatch!14894 (regOne!30300 (regOne!30300 r!7292)))) b!5275099))

(assert (= (and b!5274129 (is-Concat!23739 (regOne!30300 (regOne!30300 r!7292)))) b!5275100))

(assert (= (and b!5274129 (is-Star!14894 (regOne!30300 (regOne!30300 r!7292)))) b!5275101))

(assert (= (and b!5274129 (is-Union!14894 (regOne!30300 (regOne!30300 r!7292)))) b!5275102))

(declare-fun b!5275106 () Bool)

(declare-fun e!3280432 () Bool)

(declare-fun tp!1474072 () Bool)

(declare-fun tp!1474074 () Bool)

(assert (=> b!5275106 (= e!3280432 (and tp!1474072 tp!1474074))))

(assert (=> b!5274129 (= tp!1473882 e!3280432)))

(declare-fun b!5275103 () Bool)

(assert (=> b!5275103 (= e!3280432 tp_is_empty!39041)))

(declare-fun b!5275104 () Bool)

(declare-fun tp!1474073 () Bool)

(declare-fun tp!1474071 () Bool)

(assert (=> b!5275104 (= e!3280432 (and tp!1474073 tp!1474071))))

(declare-fun b!5275105 () Bool)

(declare-fun tp!1474075 () Bool)

(assert (=> b!5275105 (= e!3280432 tp!1474075)))

(assert (= (and b!5274129 (is-ElementMatch!14894 (regTwo!30300 (regOne!30300 r!7292)))) b!5275103))

(assert (= (and b!5274129 (is-Concat!23739 (regTwo!30300 (regOne!30300 r!7292)))) b!5275104))

(assert (= (and b!5274129 (is-Star!14894 (regTwo!30300 (regOne!30300 r!7292)))) b!5275105))

(assert (= (and b!5274129 (is-Union!14894 (regTwo!30300 (regOne!30300 r!7292)))) b!5275106))

(declare-fun b!5275110 () Bool)

(declare-fun e!3280433 () Bool)

(declare-fun tp!1474077 () Bool)

(declare-fun tp!1474079 () Bool)

(assert (=> b!5275110 (= e!3280433 (and tp!1474077 tp!1474079))))

(assert (=> b!5274139 (= tp!1473893 e!3280433)))

(declare-fun b!5275107 () Bool)

(assert (=> b!5275107 (= e!3280433 tp_is_empty!39041)))

(declare-fun b!5275108 () Bool)

(declare-fun tp!1474078 () Bool)

(declare-fun tp!1474076 () Bool)

(assert (=> b!5275108 (= e!3280433 (and tp!1474078 tp!1474076))))

(declare-fun b!5275109 () Bool)

(declare-fun tp!1474080 () Bool)

(assert (=> b!5275109 (= e!3280433 tp!1474080)))

(assert (= (and b!5274139 (is-ElementMatch!14894 (regOne!30301 (regOne!30301 r!7292)))) b!5275107))

(assert (= (and b!5274139 (is-Concat!23739 (regOne!30301 (regOne!30301 r!7292)))) b!5275108))

(assert (= (and b!5274139 (is-Star!14894 (regOne!30301 (regOne!30301 r!7292)))) b!5275109))

(assert (= (and b!5274139 (is-Union!14894 (regOne!30301 (regOne!30301 r!7292)))) b!5275110))

(declare-fun b!5275114 () Bool)

(declare-fun e!3280434 () Bool)

(declare-fun tp!1474082 () Bool)

(declare-fun tp!1474084 () Bool)

(assert (=> b!5275114 (= e!3280434 (and tp!1474082 tp!1474084))))

(assert (=> b!5274139 (= tp!1473895 e!3280434)))

(declare-fun b!5275111 () Bool)

(assert (=> b!5275111 (= e!3280434 tp_is_empty!39041)))

(declare-fun b!5275112 () Bool)

(declare-fun tp!1474083 () Bool)

(declare-fun tp!1474081 () Bool)

(assert (=> b!5275112 (= e!3280434 (and tp!1474083 tp!1474081))))

(declare-fun b!5275113 () Bool)

(declare-fun tp!1474085 () Bool)

(assert (=> b!5275113 (= e!3280434 tp!1474085)))

(assert (= (and b!5274139 (is-ElementMatch!14894 (regTwo!30301 (regOne!30301 r!7292)))) b!5275111))

(assert (= (and b!5274139 (is-Concat!23739 (regTwo!30301 (regOne!30301 r!7292)))) b!5275112))

(assert (= (and b!5274139 (is-Star!14894 (regTwo!30301 (regOne!30301 r!7292)))) b!5275113))

(assert (= (and b!5274139 (is-Union!14894 (regTwo!30301 (regOne!30301 r!7292)))) b!5275114))

(declare-fun b!5275118 () Bool)

(declare-fun e!3280435 () Bool)

(declare-fun tp!1474087 () Bool)

(declare-fun tp!1474089 () Bool)

(assert (=> b!5275118 (= e!3280435 (and tp!1474087 tp!1474089))))

(assert (=> b!5274130 (= tp!1473886 e!3280435)))

(declare-fun b!5275115 () Bool)

(assert (=> b!5275115 (= e!3280435 tp_is_empty!39041)))

(declare-fun b!5275116 () Bool)

(declare-fun tp!1474088 () Bool)

(declare-fun tp!1474086 () Bool)

(assert (=> b!5275116 (= e!3280435 (and tp!1474088 tp!1474086))))

(declare-fun b!5275117 () Bool)

(declare-fun tp!1474090 () Bool)

(assert (=> b!5275117 (= e!3280435 tp!1474090)))

(assert (= (and b!5274130 (is-ElementMatch!14894 (reg!15223 (regOne!30300 r!7292)))) b!5275115))

(assert (= (and b!5274130 (is-Concat!23739 (reg!15223 (regOne!30300 r!7292)))) b!5275116))

(assert (= (and b!5274130 (is-Star!14894 (reg!15223 (regOne!30300 r!7292)))) b!5275117))

(assert (= (and b!5274130 (is-Union!14894 (reg!15223 (regOne!30300 r!7292)))) b!5275118))

(declare-fun b!5275122 () Bool)

(declare-fun e!3280436 () Bool)

(declare-fun tp!1474092 () Bool)

(declare-fun tp!1474094 () Bool)

(assert (=> b!5275122 (= e!3280436 (and tp!1474092 tp!1474094))))

(assert (=> b!5274131 (= tp!1473883 e!3280436)))

(declare-fun b!5275119 () Bool)

(assert (=> b!5275119 (= e!3280436 tp_is_empty!39041)))

(declare-fun b!5275120 () Bool)

(declare-fun tp!1474093 () Bool)

(declare-fun tp!1474091 () Bool)

(assert (=> b!5275120 (= e!3280436 (and tp!1474093 tp!1474091))))

(declare-fun b!5275121 () Bool)

(declare-fun tp!1474095 () Bool)

(assert (=> b!5275121 (= e!3280436 tp!1474095)))

(assert (= (and b!5274131 (is-ElementMatch!14894 (regOne!30301 (regOne!30300 r!7292)))) b!5275119))

(assert (= (and b!5274131 (is-Concat!23739 (regOne!30301 (regOne!30300 r!7292)))) b!5275120))

(assert (= (and b!5274131 (is-Star!14894 (regOne!30301 (regOne!30300 r!7292)))) b!5275121))

(assert (= (and b!5274131 (is-Union!14894 (regOne!30301 (regOne!30300 r!7292)))) b!5275122))

(declare-fun b!5275126 () Bool)

(declare-fun e!3280437 () Bool)

(declare-fun tp!1474097 () Bool)

(declare-fun tp!1474099 () Bool)

(assert (=> b!5275126 (= e!3280437 (and tp!1474097 tp!1474099))))

(assert (=> b!5274131 (= tp!1473885 e!3280437)))

(declare-fun b!5275123 () Bool)

(assert (=> b!5275123 (= e!3280437 tp_is_empty!39041)))

(declare-fun b!5275124 () Bool)

(declare-fun tp!1474098 () Bool)

(declare-fun tp!1474096 () Bool)

(assert (=> b!5275124 (= e!3280437 (and tp!1474098 tp!1474096))))

(declare-fun b!5275125 () Bool)

(declare-fun tp!1474100 () Bool)

(assert (=> b!5275125 (= e!3280437 tp!1474100)))

(assert (= (and b!5274131 (is-ElementMatch!14894 (regTwo!30301 (regOne!30300 r!7292)))) b!5275123))

(assert (= (and b!5274131 (is-Concat!23739 (regTwo!30301 (regOne!30300 r!7292)))) b!5275124))

(assert (= (and b!5274131 (is-Star!14894 (regTwo!30301 (regOne!30300 r!7292)))) b!5275125))

(assert (= (and b!5274131 (is-Union!14894 (regTwo!30301 (regOne!30300 r!7292)))) b!5275126))

(declare-fun condSetEmpty!33785 () Bool)

(assert (=> setNonEmpty!33776 (= condSetEmpty!33785 (= setRest!33776 (as set.empty (Set Context!8556))))))

(declare-fun setRes!33785 () Bool)

(assert (=> setNonEmpty!33776 (= tp!1473862 setRes!33785)))

(declare-fun setIsEmpty!33785 () Bool)

(assert (=> setIsEmpty!33785 setRes!33785))

(declare-fun setElem!33785 () Context!8556)

(declare-fun e!3280438 () Bool)

(declare-fun setNonEmpty!33785 () Bool)

(declare-fun tp!1474101 () Bool)

(assert (=> setNonEmpty!33785 (= setRes!33785 (and tp!1474101 (inv!80483 setElem!33785) e!3280438))))

(declare-fun setRest!33785 () (Set Context!8556))

(assert (=> setNonEmpty!33785 (= setRest!33776 (set.union (set.insert setElem!33785 (as set.empty (Set Context!8556))) setRest!33785))))

(declare-fun b!5275127 () Bool)

(declare-fun tp!1474102 () Bool)

(assert (=> b!5275127 (= e!3280438 tp!1474102)))

(assert (= (and setNonEmpty!33776 condSetEmpty!33785) setIsEmpty!33785))

(assert (= (and setNonEmpty!33776 (not condSetEmpty!33785)) setNonEmpty!33785))

(assert (= setNonEmpty!33785 b!5275127))

(declare-fun m!6313528 () Bool)

(assert (=> setNonEmpty!33785 m!6313528))

(declare-fun b!5275128 () Bool)

(declare-fun e!3280439 () Bool)

(declare-fun tp!1474103 () Bool)

(declare-fun tp!1474104 () Bool)

(assert (=> b!5275128 (= e!3280439 (and tp!1474103 tp!1474104))))

(assert (=> b!5274108 (= tp!1473863 e!3280439)))

(assert (= (and b!5274108 (is-Cons!60858 (exprs!4778 setElem!33776))) b!5275128))

(declare-fun b!5275132 () Bool)

(declare-fun e!3280440 () Bool)

(declare-fun tp!1474106 () Bool)

(declare-fun tp!1474108 () Bool)

(assert (=> b!5275132 (= e!3280440 (and tp!1474106 tp!1474108))))

(assert (=> b!5274095 (= tp!1473850 e!3280440)))

(declare-fun b!5275129 () Bool)

(assert (=> b!5275129 (= e!3280440 tp_is_empty!39041)))

(declare-fun b!5275130 () Bool)

(declare-fun tp!1474107 () Bool)

(declare-fun tp!1474105 () Bool)

(assert (=> b!5275130 (= e!3280440 (and tp!1474107 tp!1474105))))

(declare-fun b!5275131 () Bool)

(declare-fun tp!1474109 () Bool)

(assert (=> b!5275131 (= e!3280440 tp!1474109)))

(assert (= (and b!5274095 (is-ElementMatch!14894 (h!67306 (exprs!4778 (h!67307 zl!343))))) b!5275129))

(assert (= (and b!5274095 (is-Concat!23739 (h!67306 (exprs!4778 (h!67307 zl!343))))) b!5275130))

(assert (= (and b!5274095 (is-Star!14894 (h!67306 (exprs!4778 (h!67307 zl!343))))) b!5275131))

(assert (= (and b!5274095 (is-Union!14894 (h!67306 (exprs!4778 (h!67307 zl!343))))) b!5275132))

(declare-fun b!5275133 () Bool)

(declare-fun e!3280441 () Bool)

(declare-fun tp!1474110 () Bool)

(declare-fun tp!1474111 () Bool)

(assert (=> b!5275133 (= e!3280441 (and tp!1474110 tp!1474111))))

(assert (=> b!5274095 (= tp!1473851 e!3280441)))

(assert (= (and b!5274095 (is-Cons!60858 (t!374179 (exprs!4778 (h!67307 zl!343))))) b!5275133))

(declare-fun b!5275135 () Bool)

(declare-fun e!3280443 () Bool)

(declare-fun tp!1474112 () Bool)

(assert (=> b!5275135 (= e!3280443 tp!1474112)))

(declare-fun b!5275134 () Bool)

(declare-fun e!3280442 () Bool)

(declare-fun tp!1474113 () Bool)

(assert (=> b!5275134 (= e!3280442 (and (inv!80483 (h!67307 (t!374180 (t!374180 zl!343)))) e!3280443 tp!1474113))))

(assert (=> b!5274102 (= tp!1473857 e!3280442)))

(assert (= b!5275134 b!5275135))

(assert (= (and b!5274102 (is-Cons!60859 (t!374180 (t!374180 zl!343)))) b!5275134))

(declare-fun m!6313530 () Bool)

(assert (=> b!5275134 m!6313530))

(declare-fun b!5275136 () Bool)

(declare-fun e!3280444 () Bool)

(declare-fun tp!1474114 () Bool)

(declare-fun tp!1474115 () Bool)

(assert (=> b!5275136 (= e!3280444 (and tp!1474114 tp!1474115))))

(assert (=> b!5274103 (= tp!1473856 e!3280444)))

(assert (= (and b!5274103 (is-Cons!60858 (exprs!4778 (h!67307 (t!374180 zl!343))))) b!5275136))

(declare-fun b!5275140 () Bool)

(declare-fun e!3280445 () Bool)

(declare-fun tp!1474117 () Bool)

(declare-fun tp!1474119 () Bool)

(assert (=> b!5275140 (= e!3280445 (and tp!1474117 tp!1474119))))

(assert (=> b!5274141 (= tp!1473899 e!3280445)))

(declare-fun b!5275137 () Bool)

(assert (=> b!5275137 (= e!3280445 tp_is_empty!39041)))

(declare-fun b!5275138 () Bool)

(declare-fun tp!1474118 () Bool)

(declare-fun tp!1474116 () Bool)

(assert (=> b!5275138 (= e!3280445 (and tp!1474118 tp!1474116))))

(declare-fun b!5275139 () Bool)

(declare-fun tp!1474120 () Bool)

(assert (=> b!5275139 (= e!3280445 tp!1474120)))

(assert (= (and b!5274141 (is-ElementMatch!14894 (regOne!30300 (regTwo!30301 r!7292)))) b!5275137))

(assert (= (and b!5274141 (is-Concat!23739 (regOne!30300 (regTwo!30301 r!7292)))) b!5275138))

(assert (= (and b!5274141 (is-Star!14894 (regOne!30300 (regTwo!30301 r!7292)))) b!5275139))

(assert (= (and b!5274141 (is-Union!14894 (regOne!30300 (regTwo!30301 r!7292)))) b!5275140))

(declare-fun b!5275144 () Bool)

(declare-fun e!3280446 () Bool)

(declare-fun tp!1474122 () Bool)

(declare-fun tp!1474124 () Bool)

(assert (=> b!5275144 (= e!3280446 (and tp!1474122 tp!1474124))))

(assert (=> b!5274141 (= tp!1473897 e!3280446)))

(declare-fun b!5275141 () Bool)

(assert (=> b!5275141 (= e!3280446 tp_is_empty!39041)))

(declare-fun b!5275142 () Bool)

(declare-fun tp!1474123 () Bool)

(declare-fun tp!1474121 () Bool)

(assert (=> b!5275142 (= e!3280446 (and tp!1474123 tp!1474121))))

(declare-fun b!5275143 () Bool)

(declare-fun tp!1474125 () Bool)

(assert (=> b!5275143 (= e!3280446 tp!1474125)))

(assert (= (and b!5274141 (is-ElementMatch!14894 (regTwo!30300 (regTwo!30301 r!7292)))) b!5275141))

(assert (= (and b!5274141 (is-Concat!23739 (regTwo!30300 (regTwo!30301 r!7292)))) b!5275142))

(assert (= (and b!5274141 (is-Star!14894 (regTwo!30300 (regTwo!30301 r!7292)))) b!5275143))

(assert (= (and b!5274141 (is-Union!14894 (regTwo!30300 (regTwo!30301 r!7292)))) b!5275144))

(declare-fun b_lambda!203461 () Bool)

(assert (= b_lambda!203453 (or d!1697181 b_lambda!203461)))

(declare-fun bs!1222082 () Bool)

(declare-fun d!1697577 () Bool)

(assert (= bs!1222082 (and d!1697577 d!1697181)))

(assert (=> bs!1222082 (= (dynLambda!24052 lambda!266137 (h!67306 (exprs!4778 (h!67307 zl!343)))) (validRegex!6630 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(declare-fun m!6313532 () Bool)

(assert (=> bs!1222082 m!6313532))

(assert (=> b!5274770 d!1697577))

(declare-fun b_lambda!203463 () Bool)

(assert (= b_lambda!203459 (or d!1697199 b_lambda!203463)))

(declare-fun bs!1222083 () Bool)

(declare-fun d!1697579 () Bool)

(assert (= bs!1222083 (and d!1697579 d!1697199)))

(assert (=> bs!1222083 (= (dynLambda!24052 lambda!266143 (h!67306 lt!2157127)) (validRegex!6630 (h!67306 lt!2157127)))))

(declare-fun m!6313534 () Bool)

(assert (=> bs!1222083 m!6313534))

(assert (=> b!5274986 d!1697579))

(declare-fun b_lambda!203465 () Bool)

(assert (= b_lambda!203457 (or d!1697197 b_lambda!203465)))

(declare-fun bs!1222084 () Bool)

(declare-fun d!1697581 () Bool)

(assert (= bs!1222084 (and d!1697581 d!1697197)))

(assert (=> bs!1222084 (= (dynLambda!24052 lambda!266140 (h!67306 (unfocusZipperList!336 zl!343))) (validRegex!6630 (h!67306 (unfocusZipperList!336 zl!343))))))

(declare-fun m!6313536 () Bool)

(assert (=> bs!1222084 m!6313536))

(assert (=> b!5274898 d!1697581))

(declare-fun b_lambda!203467 () Bool)

(assert (= b_lambda!203449 (or b!5273632 b_lambda!203467)))

(assert (=> d!1697431 d!1697225))

(declare-fun b_lambda!203469 () Bool)

(assert (= b_lambda!203447 (or b!5273632 b_lambda!203469)))

(assert (=> d!1697409 d!1697229))

(declare-fun b_lambda!203471 () Bool)

(assert (= b_lambda!203445 (or b!5273632 b_lambda!203471)))

(assert (=> d!1697367 d!1697227))

(declare-fun b_lambda!203473 () Bool)

(assert (= b_lambda!203451 (or d!1697171 b_lambda!203473)))

(declare-fun bs!1222085 () Bool)

(declare-fun d!1697583 () Bool)

(assert (= bs!1222085 (and d!1697583 d!1697171)))

(assert (=> bs!1222085 (= (dynLambda!24052 lambda!266131 (h!67306 (exprs!4778 (h!67307 zl!343)))) (validRegex!6630 (h!67306 (exprs!4778 (h!67307 zl!343)))))))

(assert (=> bs!1222085 m!6313532))

(assert (=> b!5274759 d!1697583))

(declare-fun b_lambda!203475 () Bool)

(assert (= b_lambda!203455 (or d!1697147 b_lambda!203475)))

(declare-fun bs!1222086 () Bool)

(declare-fun d!1697585 () Bool)

(assert (= bs!1222086 (and d!1697585 d!1697147)))

(assert (=> bs!1222086 (= (dynLambda!24052 lambda!266130 (h!67306 (exprs!4778 setElem!33770))) (validRegex!6630 (h!67306 (exprs!4778 setElem!33770))))))

(declare-fun m!6313538 () Bool)

(assert (=> bs!1222086 m!6313538))

(assert (=> b!5274772 d!1697585))

(push 1)

(assert (not d!1697457))

(assert (not bs!1222084))

(assert (not b!5274977))

(assert (not b!5274961))

(assert (not b!5274650))

(assert (not bm!375150))

(assert (not bm!375115))

(assert (not bm!375139))

(assert (not b!5275132))

(assert (not b!5275106))

(assert (not b!5275070))

(assert (not bm!375168))

(assert (not b!5274824))

(assert (not b!5274955))

(assert (not b!5274944))

(assert (not b!5274820))

(assert (not b!5275059))

(assert (not b!5275077))

(assert (not b!5274612))

(assert (not b!5274995))

(assert (not d!1697451))

(assert (not d!1697527))

(assert (not b!5275131))

(assert (not bm!375122))

(assert (not b!5275088))

(assert (not b!5275117))

(assert (not b!5275042))

(assert (not b!5275060))

(assert (not d!1697369))

(assert (not b!5274564))

(assert (not b!5274684))

(assert (not b!5274938))

(assert (not bm!375121))

(assert (not bm!375217))

(assert (not bm!375226))

(assert (not bm!375211))

(assert (not bm!375214))

(assert (not b!5274554))

(assert (not d!1697561))

(assert (not b!5274842))

(assert (not d!1697539))

(assert (not d!1697417))

(assert (not bm!375156))

(assert (not b!5274723))

(assert (not b!5274785))

(assert (not bs!1222082))

(assert (not b!5275105))

(assert (not d!1697397))

(assert (not b!5275032))

(assert (not bm!375186))

(assert (not b!5274788))

(assert (not b!5274773))

(assert (not b!5275069))

(assert (not b!5275051))

(assert tp_is_empty!39041)

(assert (not b!5274685))

(assert (not b!5274698))

(assert (not b!5275082))

(assert (not d!1697571))

(assert (not b!5274641))

(assert (not b!5274600))

(assert (not b!5275112))

(assert (not bm!375153))

(assert (not d!1697563))

(assert (not b_lambda!203475))

(assert (not bm!375198))

(assert (not b!5275142))

(assert (not b!5274609))

(assert (not bm!375135))

(assert (not bm!375114))

(assert (not b!5275058))

(assert (not b!5275093))

(assert (not d!1697449))

(assert (not b!5274988))

(assert (not bm!375204))

(assert (not b!5274775))

(assert (not b!5275138))

(assert (not setNonEmpty!33783))

(assert (not b!5275120))

(assert (not b!5274567))

(assert (not b!5274844))

(assert (not b_lambda!203469))

(assert (not b_lambda!203471))

(assert (not bm!375206))

(assert (not b!5275127))

(assert (not b!5274835))

(assert (not bm!375200))

(assert (not b!5274789))

(assert (not b!5274716))

(assert (not bs!1222086))

(assert (not d!1697429))

(assert (not b!5275017))

(assert (not bm!375221))

(assert (not b!5274569))

(assert (not b!5274597))

(assert (not b!5274548))

(assert (not b_lambda!203431))

(assert (not b!5275080))

(assert (not bm!375145))

(assert (not b!5275144))

(assert (not b!5275098))

(assert (not setNonEmpty!33785))

(assert (not b!5274621))

(assert (not b!5275090))

(assert (not bm!375212))

(assert (not b!5275113))

(assert (not b!5274816))

(assert (not bm!375163))

(assert (not d!1697339))

(assert (not d!1697377))

(assert (not b!5274659))

(assert (not b!5274568))

(assert (not b!5275074))

(assert (not b!5274635))

(assert (not bm!375216))

(assert (not b!5274563))

(assert (not b!5275039))

(assert (not b!5275030))

(assert (not bm!375207))

(assert (not bm!375108))

(assert (not bs!1222083))

(assert (not b!5275036))

(assert (not bm!375149))

(assert (not b!5274627))

(assert (not b!5274899))

(assert (not d!1697525))

(assert (not bm!375136))

(assert (not bm!375126))

(assert (not bm!375165))

(assert (not d!1697367))

(assert (not b!5275046))

(assert (not b!5274752))

(assert (not b!5275081))

(assert (not b!5274736))

(assert (not b!5274845))

(assert (not b!5274798))

(assert (not b!5275023))

(assert (not d!1697511))

(assert (not b!5274956))

(assert (not b!5275044))

(assert (not b!5274645))

(assert (not b!5274940))

(assert (not b!5275073))

(assert (not b!5275065))

(assert (not b!5275076))

(assert (not b!5274936))

(assert (not d!1697393))

(assert (not bm!375172))

(assert (not b!5275043))

(assert (not b!5274875))

(assert (not bm!375142))

(assert (not b!5274690))

(assert (not b!5274647))

(assert (not d!1697533))

(assert (not bm!375130))

(assert (not d!1697385))

(assert (not b!5274935))

(assert (not b!5274705))

(assert (not bm!375188))

(assert (not d!1697573))

(assert (not b!5275078))

(assert (not b!5275122))

(assert (not b!5274964))

(assert (not b!5275061))

(assert (not d!1697395))

(assert (not b!5274836))

(assert (not bm!375138))

(assert (not bm!375175))

(assert (not bm!375213))

(assert (not b!5275056))

(assert (not bm!375171))

(assert (not b!5275126))

(assert (not b!5274946))

(assert (not b!5274634))

(assert (not bm!375229))

(assert (not d!1697403))

(assert (not b!5274644))

(assert (not b!5275118))

(assert (not b!5274566))

(assert (not bm!375111))

(assert (not b!5275040))

(assert (not b!5274722))

(assert (not b!5274739))

(assert (not d!1697477))

(assert (not b!5274643))

(assert (not d!1697479))

(assert (not bm!375123))

(assert (not d!1697535))

(assert (not b!5275121))

(assert (not bm!375169))

(assert (not d!1697401))

(assert (not d!1697399))

(assert (not b!5274966))

(assert (not b!5275136))

(assert (not d!1697507))

(assert (not bm!375131))

(assert (not b!5274769))

(assert (not b!5275035))

(assert (not d!1697537))

(assert (not bm!375177))

(assert (not b!5275048))

(assert (not b!5274784))

(assert (not bm!375125))

(assert (not d!1697529))

(assert (not b!5275086))

(assert (not bm!375196))

(assert (not d!1697485))

(assert (not b!5275134))

(assert (not b_lambda!203429))

(assert (not b!5275130))

(assert (not b!5275104))

(assert (not b!5275084))

(assert (not b!5274905))

(assert (not b!5275068))

(assert (not b!5275052))

(assert (not bm!375159))

(assert (not b!5274813))

(assert (not bm!375191))

(assert (not b!5274760))

(assert (not b!5274660))

(assert (not d!1697431))

(assert (not b!5274688))

(assert (not d!1697489))

(assert (not b!5275102))

(assert (not b!5275124))

(assert (not d!1697363))

(assert (not b!5274932))

(assert (not d!1697559))

(assert (not b!5274649))

(assert (not b!5275128))

(assert (not b!5274786))

(assert (not bm!375158))

(assert (not b!5275125))

(assert (not b!5275031))

(assert (not b!5275116))

(assert (not b!5275110))

(assert (not d!1697509))

(assert (not d!1697439))

(assert (not b!5274814))

(assert (not b!5274753))

(assert (not bm!375144))

(assert (not b!5275140))

(assert (not d!1697493))

(assert (not b!5274678))

(assert (not b!5275114))

(assert (not b_lambda!203461))

(assert (not bm!375173))

(assert (not d!1697335))

(assert (not b!5275135))

(assert (not bm!375192))

(assert (not bm!375152))

(assert (not d!1697547))

(assert (not bm!375164))

(assert (not b!5275097))

(assert (not b!5274973))

(assert (not b!5275094))

(assert (not bm!375106))

(assert (not b!5274916))

(assert (not bm!375220))

(assert (not b!5274744))

(assert (not bm!375201))

(assert (not d!1697569))

(assert (not b!5274967))

(assert (not b!5275054))

(assert (not b!5275092))

(assert (not b!5275055))

(assert (not d!1697541))

(assert (not setNonEmpty!33782))

(assert (not b!5275034))

(assert (not bm!375134))

(assert (not b!5274725))

(assert (not b!5274817))

(assert (not b!5274959))

(assert (not b!5275096))

(assert (not b!5275064))

(assert (not b!5274733))

(assert (not b!5274667))

(assert (not b!5274987))

(assert (not bm!375110))

(assert (not b!5274810))

(assert (not b!5274957))

(assert (not b!5275047))

(assert (not bm!375120))

(assert (not bm!375166))

(assert (not bm!375195))

(assert (not bm!375210))

(assert (not b_lambda!203467))

(assert (not d!1697495))

(assert (not b_lambda!203473))

(assert (not bm!375223))

(assert (not d!1697513))

(assert (not b!5274574))

(assert (not d!1697475))

(assert (not b!5274958))

(assert (not b!5274975))

(assert (not d!1697331))

(assert (not b!5275072))

(assert (not b!5274797))

(assert (not d!1697405))

(assert (not b_lambda!203463))

(assert (not b!5274658))

(assert (not b!5274833))

(assert (not d!1697463))

(assert (not b_lambda!203465))

(assert (not b!5274809))

(assert (not bm!375162))

(assert (not b!5275063))

(assert (not b!5275101))

(assert (not d!1697427))

(assert (not b!5275139))

(assert (not b!5275050))

(assert (not b!5274774))

(assert (not b!5275089))

(assert (not b!5274821))

(assert (not d!1697473))

(assert (not b!5275038))

(assert (not b!5274754))

(assert (not bm!375148))

(assert (not b!5274883))

(assert (not d!1697555))

(assert (not d!1697519))

(assert (not d!1697543))

(assert (not b!5275143))

(assert (not d!1697387))

(assert (not b!5275085))

(assert (not b!5274827))

(assert (not b!5274812))

(assert (not b!5275133))

(assert (not d!1697341))

(assert (not b!5274976))

(assert (not b!5274560))

(assert (not b!5274745))

(assert (not b!5275100))

(assert (not bs!1222085))

(assert (not b!5274815))

(assert (not d!1697461))

(assert (not d!1697409))

(assert (not b!5274931))

(assert (not b!5274799))

(assert (not bm!375128))

(assert (not bm!375176))

(assert (not b!5275109))

(assert (not b!5275066))

(assert (not d!1697565))

(assert (not b!5274771))

(assert (not b!5275108))

(assert (not b!5275006))

(assert (not b!5274943))

(assert (not b!5274656))

(assert (not b!5274939))

(assert (not bm!375225))

(assert (not b!5274897))

(assert (not b!5274795))

(assert (not b!5274846))

(assert (not b!5274811))

(assert (not setNonEmpty!33784))

(assert (not d!1697459))

(assert (not b_lambda!203427))

(assert (not b!5275007))

(assert (not b!5274571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

