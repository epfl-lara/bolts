; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674554 () Bool)

(assert start!674554)

(declare-fun b!7006782 () Bool)

(assert (=> b!7006782 true))

(declare-fun b!7006774 () Bool)

(assert (=> b!7006774 true))

(declare-fun b!7006772 () Bool)

(assert (=> b!7006772 true))

(declare-fun b!7006771 () Bool)

(declare-fun e!4211675 () Bool)

(declare-fun e!4211679 () Bool)

(assert (=> b!7006771 (= e!4211675 e!4211679)))

(declare-fun res!2858808 () Bool)

(assert (=> b!7006771 (=> res!2858808 e!4211679)))

(declare-fun e!4211678 () Bool)

(assert (=> b!7006771 (= res!2858808 e!4211678)))

(declare-fun res!2858812 () Bool)

(assert (=> b!7006771 (=> (not res!2858812) (not e!4211678))))

(declare-fun lt!2501479 () Bool)

(declare-fun lt!2501464 () Bool)

(assert (=> b!7006771 (= res!2858812 (not (= lt!2501479 lt!2501464)))))

(declare-datatypes ((C!34866 0))(
  ( (C!34867 (val!27135 Int)) )
))
(declare-datatypes ((Regex!17298 0))(
  ( (ElementMatch!17298 (c!1301262 C!34866)) (Concat!26143 (regOne!35108 Regex!17298) (regTwo!35108 Regex!17298)) (EmptyExpr!17298) (Star!17298 (reg!17627 Regex!17298)) (EmptyLang!17298) (Union!17298 (regOne!35109 Regex!17298) (regTwo!35109 Regex!17298)) )
))
(declare-datatypes ((List!67439 0))(
  ( (Nil!67315) (Cons!67315 (h!73763 Regex!17298) (t!381192 List!67439)) )
))
(declare-datatypes ((Context!12588 0))(
  ( (Context!12589 (exprs!6794 List!67439)) )
))
(declare-fun lt!2501469 () (Set Context!12588))

(declare-datatypes ((List!67440 0))(
  ( (Nil!67316) (Cons!67316 (h!73764 C!34866) (t!381193 List!67440)) )
))
(declare-fun s!7408 () List!67440)

(declare-fun matchZipper!2838 ((Set Context!12588) List!67440) Bool)

(assert (=> b!7006771 (= lt!2501479 (matchZipper!2838 lt!2501469 (t!381193 s!7408)))))

(declare-fun lt!2501480 () List!67439)

(declare-datatypes ((Unit!161272 0))(
  ( (Unit!161273) )
))
(declare-fun lt!2501457 () Unit!161272)

(declare-fun ct2!306 () Context!12588)

(declare-fun lambda!407317 () Int)

(declare-fun lemmaConcatPreservesForall!634 (List!67439 List!67439 Int) Unit!161272)

(assert (=> b!7006771 (= lt!2501457 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun lt!2501462 () (Set Context!12588))

(declare-fun e!4211685 () Bool)

(assert (=> b!7006771 (= (matchZipper!2838 lt!2501462 (t!381193 s!7408)) e!4211685)))

(declare-fun res!2858809 () Bool)

(assert (=> b!7006771 (=> res!2858809 e!4211685)))

(assert (=> b!7006771 (= res!2858809 lt!2501464)))

(declare-fun lt!2501475 () (Set Context!12588))

(assert (=> b!7006771 (= lt!2501464 (matchZipper!2838 lt!2501475 (t!381193 s!7408)))))

(declare-fun lt!2501470 () (Set Context!12588))

(declare-fun lt!2501467 () Unit!161272)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1471 ((Set Context!12588) (Set Context!12588) List!67440) Unit!161272)

(assert (=> b!7006771 (= lt!2501467 (lemmaZipperConcatMatchesSameAsBothZippers!1471 lt!2501475 lt!2501470 (t!381193 s!7408)))))

(declare-fun lt!2501454 () Unit!161272)

(assert (=> b!7006771 (= lt!2501454 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun lt!2501473 () Unit!161272)

(assert (=> b!7006771 (= lt!2501473 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun e!4211688 () Bool)

(declare-fun e!4211684 () Bool)

(assert (=> b!7006772 (= e!4211688 e!4211684)))

(declare-fun res!2858820 () Bool)

(assert (=> b!7006772 (=> res!2858820 e!4211684)))

(declare-fun lt!2501474 () (Set Context!12588))

(declare-fun derivationStepZipper!2778 ((Set Context!12588) C!34866) (Set Context!12588))

(assert (=> b!7006772 (= res!2858820 (not (= (derivationStepZipper!2778 lt!2501474 (h!73764 s!7408)) lt!2501469)))))

(declare-fun lt!2501465 () Context!12588)

(declare-fun lambda!407318 () Int)

(declare-fun flatMap!2284 ((Set Context!12588) Int) (Set Context!12588))

(declare-fun derivationStepZipperUp!1948 (Context!12588 C!34866) (Set Context!12588))

(assert (=> b!7006772 (= (flatMap!2284 lt!2501474 lambda!407318) (derivationStepZipperUp!1948 lt!2501465 (h!73764 s!7408)))))

(declare-fun lt!2501461 () Unit!161272)

(declare-fun lemmaFlatMapOnSingletonSet!1799 ((Set Context!12588) Context!12588 Int) Unit!161272)

(assert (=> b!7006772 (= lt!2501461 (lemmaFlatMapOnSingletonSet!1799 lt!2501474 lt!2501465 lambda!407318))))

(assert (=> b!7006772 (= lt!2501469 (derivationStepZipperUp!1948 lt!2501465 (h!73764 s!7408)))))

(declare-fun lt!2501478 () Context!12588)

(declare-fun lt!2501453 () Unit!161272)

(assert (=> b!7006772 (= lt!2501453 (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317))))

(declare-fun b!7006773 () Bool)

(declare-fun e!4211687 () Bool)

(declare-fun validRegex!8878 (Regex!17298) Bool)

(assert (=> b!7006773 (= e!4211687 (validRegex!8878 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun lt!2501452 () Unit!161272)

(assert (=> b!7006773 (= lt!2501452 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun lt!2501481 () Unit!161272)

(assert (=> b!7006773 (= lt!2501481 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun e!4211681 () Bool)

(declare-fun e!4211677 () Bool)

(assert (=> b!7006774 (= e!4211681 e!4211677)))

(declare-fun res!2858821 () Bool)

(assert (=> b!7006774 (=> res!2858821 e!4211677)))

(declare-fun z1!570 () (Set Context!12588))

(declare-fun lt!2501459 () Context!12588)

(assert (=> b!7006774 (= res!2858821 (or (not (= lt!2501465 lt!2501459)) (not (set.member lt!2501478 z1!570))))))

(declare-fun ++!15289 (List!67439 List!67439) List!67439)

(assert (=> b!7006774 (= lt!2501465 (Context!12589 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306))))))

(declare-fun lt!2501463 () Unit!161272)

(assert (=> b!7006774 (= lt!2501463 (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317))))

(declare-fun lambda!407316 () Int)

(declare-fun mapPost2!153 ((Set Context!12588) Int Context!12588) Context!12588)

(assert (=> b!7006774 (= lt!2501478 (mapPost2!153 z1!570 lambda!407316 lt!2501459))))

(declare-fun b!7006775 () Bool)

(declare-fun res!2858813 () Bool)

(assert (=> b!7006775 (=> res!2858813 e!4211684)))

(assert (=> b!7006775 (= res!2858813 (not (is-Cons!67315 (exprs!6794 lt!2501478))))))

(declare-fun res!2858818 () Bool)

(declare-fun e!4211686 () Bool)

(assert (=> start!674554 (=> (not res!2858818) (not e!4211686))))

(declare-fun lt!2501476 () (Set Context!12588))

(assert (=> start!674554 (= res!2858818 (matchZipper!2838 lt!2501476 s!7408))))

(declare-fun appendTo!419 ((Set Context!12588) Context!12588) (Set Context!12588))

(assert (=> start!674554 (= lt!2501476 (appendTo!419 z1!570 ct2!306))))

(assert (=> start!674554 e!4211686))

(declare-fun condSetEmpty!48252 () Bool)

(assert (=> start!674554 (= condSetEmpty!48252 (= z1!570 (as set.empty (Set Context!12588))))))

(declare-fun setRes!48252 () Bool)

(assert (=> start!674554 setRes!48252))

(declare-fun e!4211682 () Bool)

(declare-fun inv!86105 (Context!12588) Bool)

(assert (=> start!674554 (and (inv!86105 ct2!306) e!4211682)))

(declare-fun e!4211676 () Bool)

(assert (=> start!674554 e!4211676))

(declare-fun b!7006776 () Bool)

(declare-fun res!2858816 () Bool)

(assert (=> b!7006776 (=> res!2858816 e!4211679)))

(assert (=> b!7006776 (= res!2858816 (not lt!2501479))))

(declare-fun b!7006777 () Bool)

(assert (=> b!7006777 (= e!4211678 (not (matchZipper!2838 lt!2501470 (t!381193 s!7408))))))

(declare-fun lt!2501466 () Unit!161272)

(assert (=> b!7006777 (= lt!2501466 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun b!7006778 () Bool)

(declare-fun res!2858810 () Bool)

(assert (=> b!7006778 (=> (not res!2858810) (not e!4211686))))

(assert (=> b!7006778 (= res!2858810 (is-Cons!67316 s!7408))))

(declare-fun setElem!48252 () Context!12588)

(declare-fun tp!1931824 () Bool)

(declare-fun setNonEmpty!48252 () Bool)

(declare-fun e!4211680 () Bool)

(assert (=> setNonEmpty!48252 (= setRes!48252 (and tp!1931824 (inv!86105 setElem!48252) e!4211680))))

(declare-fun setRest!48252 () (Set Context!12588))

(assert (=> setNonEmpty!48252 (= z1!570 (set.union (set.insert setElem!48252 (as set.empty (Set Context!12588))) setRest!48252))))

(declare-fun b!7006779 () Bool)

(declare-fun e!4211683 () Bool)

(assert (=> b!7006779 (= e!4211684 e!4211683)))

(declare-fun res!2858815 () Bool)

(assert (=> b!7006779 (=> res!2858815 e!4211683)))

(declare-fun nullable!7058 (Regex!17298) Bool)

(assert (=> b!7006779 (= res!2858815 (not (nullable!7058 (h!73763 (exprs!6794 lt!2501478)))))))

(declare-fun tail!13362 (List!67439) List!67439)

(assert (=> b!7006779 (= lt!2501480 (tail!13362 (exprs!6794 lt!2501478)))))

(declare-fun b!7006780 () Bool)

(assert (=> b!7006780 (= e!4211677 e!4211688)))

(declare-fun res!2858814 () Bool)

(assert (=> b!7006780 (=> res!2858814 e!4211688)))

(declare-fun lt!2501460 () (Set Context!12588))

(assert (=> b!7006780 (= res!2858814 (not (= lt!2501474 lt!2501460)))))

(assert (=> b!7006780 (= lt!2501474 (set.insert lt!2501465 (as set.empty (Set Context!12588))))))

(declare-fun lt!2501455 () Unit!161272)

(assert (=> b!7006780 (= lt!2501455 (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317))))

(declare-fun b!7006781 () Bool)

(assert (=> b!7006781 (= e!4211679 e!4211687)))

(declare-fun res!2858822 () Bool)

(assert (=> b!7006781 (=> res!2858822 e!4211687)))

(assert (=> b!7006781 (= res!2858822 (matchZipper!2838 lt!2501470 (t!381193 s!7408)))))

(declare-fun lt!2501472 () Unit!161272)

(assert (=> b!7006781 (= lt!2501472 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(assert (=> b!7006782 (= e!4211686 (not e!4211681))))

(declare-fun res!2858819 () Bool)

(assert (=> b!7006782 (=> res!2858819 e!4211681)))

(assert (=> b!7006782 (= res!2858819 (not (matchZipper!2838 lt!2501460 s!7408)))))

(assert (=> b!7006782 (= lt!2501460 (set.insert lt!2501459 (as set.empty (Set Context!12588))))))

(declare-fun lambda!407315 () Int)

(declare-fun getWitness!1230 ((Set Context!12588) Int) Context!12588)

(assert (=> b!7006782 (= lt!2501459 (getWitness!1230 lt!2501476 lambda!407315))))

(declare-datatypes ((List!67441 0))(
  ( (Nil!67317) (Cons!67317 (h!73765 Context!12588) (t!381194 List!67441)) )
))
(declare-fun lt!2501458 () List!67441)

(declare-fun exists!3132 (List!67441 Int) Bool)

(assert (=> b!7006782 (exists!3132 lt!2501458 lambda!407315)))

(declare-fun lt!2501477 () Unit!161272)

(declare-fun lemmaZipperMatchesExistsMatchingContext!267 (List!67441 List!67440) Unit!161272)

(assert (=> b!7006782 (= lt!2501477 (lemmaZipperMatchesExistsMatchingContext!267 lt!2501458 s!7408))))

(declare-fun toList!10658 ((Set Context!12588)) List!67441)

(assert (=> b!7006782 (= lt!2501458 (toList!10658 lt!2501476))))

(declare-fun b!7006783 () Bool)

(assert (=> b!7006783 (= e!4211685 (matchZipper!2838 lt!2501470 (t!381193 s!7408)))))

(declare-fun b!7006784 () Bool)

(assert (=> b!7006784 (= e!4211683 e!4211675)))

(declare-fun res!2858807 () Bool)

(assert (=> b!7006784 (=> res!2858807 e!4211675)))

(assert (=> b!7006784 (= res!2858807 (not (= lt!2501469 lt!2501462)))))

(assert (=> b!7006784 (= lt!2501462 (set.union lt!2501475 lt!2501470))))

(declare-fun lt!2501471 () Context!12588)

(assert (=> b!7006784 (= lt!2501470 (derivationStepZipperUp!1948 lt!2501471 (h!73764 s!7408)))))

(declare-fun derivationStepZipperDown!2016 (Regex!17298 Context!12588 C!34866) (Set Context!12588))

(assert (=> b!7006784 (= lt!2501475 (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501478)) lt!2501471 (h!73764 s!7408)))))

(assert (=> b!7006784 (= lt!2501471 (Context!12589 (++!15289 lt!2501480 (exprs!6794 ct2!306))))))

(declare-fun lt!2501468 () Unit!161272)

(assert (=> b!7006784 (= lt!2501468 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun lt!2501456 () Unit!161272)

(assert (=> b!7006784 (= lt!2501456 (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(declare-fun b!7006785 () Bool)

(declare-fun res!2858817 () Bool)

(assert (=> b!7006785 (=> res!2858817 e!4211684)))

(declare-fun isEmpty!39315 (List!67439) Bool)

(assert (=> b!7006785 (= res!2858817 (isEmpty!39315 (exprs!6794 lt!2501478)))))

(declare-fun b!7006786 () Bool)

(declare-fun tp_is_empty!43821 () Bool)

(declare-fun tp!1931821 () Bool)

(assert (=> b!7006786 (= e!4211676 (and tp_is_empty!43821 tp!1931821))))

(declare-fun setIsEmpty!48252 () Bool)

(assert (=> setIsEmpty!48252 setRes!48252))

(declare-fun b!7006787 () Bool)

(declare-fun res!2858811 () Bool)

(assert (=> b!7006787 (=> res!2858811 e!4211681)))

(assert (=> b!7006787 (= res!2858811 (not (set.member lt!2501459 lt!2501476)))))

(declare-fun b!7006788 () Bool)

(declare-fun tp!1931823 () Bool)

(assert (=> b!7006788 (= e!4211680 tp!1931823)))

(declare-fun b!7006789 () Bool)

(declare-fun tp!1931822 () Bool)

(assert (=> b!7006789 (= e!4211682 tp!1931822)))

(assert (= (and start!674554 res!2858818) b!7006778))

(assert (= (and b!7006778 res!2858810) b!7006782))

(assert (= (and b!7006782 (not res!2858819)) b!7006787))

(assert (= (and b!7006787 (not res!2858811)) b!7006774))

(assert (= (and b!7006774 (not res!2858821)) b!7006780))

(assert (= (and b!7006780 (not res!2858814)) b!7006772))

(assert (= (and b!7006772 (not res!2858820)) b!7006775))

(assert (= (and b!7006775 (not res!2858813)) b!7006785))

(assert (= (and b!7006785 (not res!2858817)) b!7006779))

(assert (= (and b!7006779 (not res!2858815)) b!7006784))

(assert (= (and b!7006784 (not res!2858807)) b!7006771))

(assert (= (and b!7006771 (not res!2858809)) b!7006783))

(assert (= (and b!7006771 res!2858812) b!7006777))

(assert (= (and b!7006771 (not res!2858808)) b!7006776))

(assert (= (and b!7006776 (not res!2858816)) b!7006781))

(assert (= (and b!7006781 (not res!2858822)) b!7006773))

(assert (= (and start!674554 condSetEmpty!48252) setIsEmpty!48252))

(assert (= (and start!674554 (not condSetEmpty!48252)) setNonEmpty!48252))

(assert (= setNonEmpty!48252 b!7006788))

(assert (= start!674554 b!7006789))

(assert (= (and start!674554 (is-Cons!67316 s!7408)) b!7006786))

(declare-fun m!7703744 () Bool)

(assert (=> b!7006782 m!7703744))

(declare-fun m!7703746 () Bool)

(assert (=> b!7006782 m!7703746))

(declare-fun m!7703748 () Bool)

(assert (=> b!7006782 m!7703748))

(declare-fun m!7703750 () Bool)

(assert (=> b!7006782 m!7703750))

(declare-fun m!7703752 () Bool)

(assert (=> b!7006782 m!7703752))

(declare-fun m!7703754 () Bool)

(assert (=> b!7006782 m!7703754))

(declare-fun m!7703756 () Bool)

(assert (=> b!7006785 m!7703756))

(declare-fun m!7703758 () Bool)

(assert (=> b!7006783 m!7703758))

(declare-fun m!7703760 () Bool)

(assert (=> b!7006780 m!7703760))

(declare-fun m!7703762 () Bool)

(assert (=> b!7006780 m!7703762))

(declare-fun m!7703764 () Bool)

(assert (=> b!7006774 m!7703764))

(declare-fun m!7703766 () Bool)

(assert (=> b!7006774 m!7703766))

(assert (=> b!7006774 m!7703762))

(declare-fun m!7703768 () Bool)

(assert (=> b!7006774 m!7703768))

(declare-fun m!7703770 () Bool)

(assert (=> b!7006779 m!7703770))

(declare-fun m!7703772 () Bool)

(assert (=> b!7006779 m!7703772))

(declare-fun m!7703774 () Bool)

(assert (=> b!7006784 m!7703774))

(assert (=> b!7006784 m!7703774))

(declare-fun m!7703776 () Bool)

(assert (=> b!7006784 m!7703776))

(declare-fun m!7703778 () Bool)

(assert (=> b!7006784 m!7703778))

(declare-fun m!7703780 () Bool)

(assert (=> b!7006784 m!7703780))

(assert (=> b!7006777 m!7703758))

(assert (=> b!7006777 m!7703774))

(declare-fun m!7703782 () Bool)

(assert (=> b!7006773 m!7703782))

(assert (=> b!7006773 m!7703774))

(assert (=> b!7006773 m!7703774))

(declare-fun m!7703784 () Bool)

(assert (=> setNonEmpty!48252 m!7703784))

(assert (=> b!7006781 m!7703758))

(assert (=> b!7006781 m!7703774))

(declare-fun m!7703786 () Bool)

(assert (=> start!674554 m!7703786))

(declare-fun m!7703788 () Bool)

(assert (=> start!674554 m!7703788))

(declare-fun m!7703790 () Bool)

(assert (=> start!674554 m!7703790))

(declare-fun m!7703792 () Bool)

(assert (=> b!7006787 m!7703792))

(declare-fun m!7703794 () Bool)

(assert (=> b!7006772 m!7703794))

(declare-fun m!7703796 () Bool)

(assert (=> b!7006772 m!7703796))

(assert (=> b!7006772 m!7703762))

(declare-fun m!7703798 () Bool)

(assert (=> b!7006772 m!7703798))

(declare-fun m!7703800 () Bool)

(assert (=> b!7006772 m!7703800))

(declare-fun m!7703802 () Bool)

(assert (=> b!7006771 m!7703802))

(declare-fun m!7703804 () Bool)

(assert (=> b!7006771 m!7703804))

(assert (=> b!7006771 m!7703774))

(declare-fun m!7703806 () Bool)

(assert (=> b!7006771 m!7703806))

(declare-fun m!7703808 () Bool)

(assert (=> b!7006771 m!7703808))

(assert (=> b!7006771 m!7703774))

(assert (=> b!7006771 m!7703774))

(push 1)

(assert (not b!7006785))

(assert (not b!7006772))

(assert (not b!7006789))

(assert (not start!674554))

(assert (not b!7006788))

(assert (not b!7006786))

(assert (not b!7006783))

(assert (not b!7006771))

(assert (not setNonEmpty!48252))

(assert (not b!7006781))

(assert tp_is_empty!43821)

(assert (not b!7006782))

(assert (not b!7006777))

(assert (not b!7006779))

(assert (not b!7006774))

(assert (not b!7006780))

(assert (not b!7006773))

(assert (not b!7006784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2184101 () Bool)

(declare-fun choose!52615 ((Set Context!12588) Int) (Set Context!12588))

(assert (=> d!2184101 (= (flatMap!2284 lt!2501474 lambda!407318) (choose!52615 lt!2501474 lambda!407318))))

(declare-fun bs!1865506 () Bool)

(assert (= bs!1865506 d!2184101))

(declare-fun m!7703876 () Bool)

(assert (=> bs!1865506 m!7703876))

(assert (=> b!7006772 d!2184101))

(declare-fun b!7006869 () Bool)

(declare-fun e!4211739 () Bool)

(assert (=> b!7006869 (= e!4211739 (nullable!7058 (h!73763 (exprs!6794 lt!2501465))))))

(declare-fun b!7006870 () Bool)

(declare-fun e!4211738 () (Set Context!12588))

(assert (=> b!7006870 (= e!4211738 (as set.empty (Set Context!12588)))))

(declare-fun b!7006871 () Bool)

(declare-fun e!4211737 () (Set Context!12588))

(assert (=> b!7006871 (= e!4211737 e!4211738)))

(declare-fun c!1301277 () Bool)

(assert (=> b!7006871 (= c!1301277 (is-Cons!67315 (exprs!6794 lt!2501465)))))

(declare-fun d!2184103 () Bool)

(declare-fun c!1301276 () Bool)

(assert (=> d!2184103 (= c!1301276 e!4211739)))

(declare-fun res!2858874 () Bool)

(assert (=> d!2184103 (=> (not res!2858874) (not e!4211739))))

(assert (=> d!2184103 (= res!2858874 (is-Cons!67315 (exprs!6794 lt!2501465)))))

(assert (=> d!2184103 (= (derivationStepZipperUp!1948 lt!2501465 (h!73764 s!7408)) e!4211737)))

(declare-fun b!7006872 () Bool)

(declare-fun call!636278 () (Set Context!12588))

(assert (=> b!7006872 (= e!4211737 (set.union call!636278 (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (h!73764 s!7408))))))

(declare-fun bm!636273 () Bool)

(assert (=> bm!636273 (= call!636278 (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501465)) (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (h!73764 s!7408)))))

(declare-fun b!7006873 () Bool)

(assert (=> b!7006873 (= e!4211738 call!636278)))

(assert (= (and d!2184103 res!2858874) b!7006869))

(assert (= (and d!2184103 c!1301276) b!7006872))

(assert (= (and d!2184103 (not c!1301276)) b!7006871))

(assert (= (and b!7006871 c!1301277) b!7006873))

(assert (= (and b!7006871 (not c!1301277)) b!7006870))

(assert (= (or b!7006872 b!7006873) bm!636273))

(declare-fun m!7703878 () Bool)

(assert (=> b!7006869 m!7703878))

(declare-fun m!7703880 () Bool)

(assert (=> b!7006872 m!7703880))

(declare-fun m!7703882 () Bool)

(assert (=> bm!636273 m!7703882))

(assert (=> b!7006772 d!2184103))

(declare-fun bs!1865507 () Bool)

(declare-fun d!2184105 () Bool)

(assert (= bs!1865507 (and d!2184105 b!7006772)))

(declare-fun lambda!407359 () Int)

(assert (=> bs!1865507 (= lambda!407359 lambda!407318)))

(assert (=> d!2184105 true))

(assert (=> d!2184105 (= (derivationStepZipper!2778 lt!2501474 (h!73764 s!7408)) (flatMap!2284 lt!2501474 lambda!407359))))

(declare-fun bs!1865508 () Bool)

(assert (= bs!1865508 d!2184105))

(declare-fun m!7703884 () Bool)

(assert (=> bs!1865508 m!7703884))

(assert (=> b!7006772 d!2184105))

(declare-fun d!2184107 () Bool)

(declare-fun forall!16213 (List!67439 Int) Bool)

(assert (=> d!2184107 (forall!16213 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)) lambda!407317)))

(declare-fun lt!2501576 () Unit!161272)

(declare-fun choose!52616 (List!67439 List!67439 Int) Unit!161272)

(assert (=> d!2184107 (= lt!2501576 (choose!52616 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317))))

(assert (=> d!2184107 (forall!16213 (exprs!6794 lt!2501478) lambda!407317)))

(assert (=> d!2184107 (= (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317) lt!2501576)))

(declare-fun bs!1865509 () Bool)

(assert (= bs!1865509 d!2184107))

(assert (=> bs!1865509 m!7703766))

(assert (=> bs!1865509 m!7703766))

(declare-fun m!7703886 () Bool)

(assert (=> bs!1865509 m!7703886))

(declare-fun m!7703888 () Bool)

(assert (=> bs!1865509 m!7703888))

(declare-fun m!7703890 () Bool)

(assert (=> bs!1865509 m!7703890))

(assert (=> b!7006772 d!2184107))

(declare-fun d!2184109 () Bool)

(declare-fun dynLambda!27057 (Int Context!12588) (Set Context!12588))

(assert (=> d!2184109 (= (flatMap!2284 lt!2501474 lambda!407318) (dynLambda!27057 lambda!407318 lt!2501465))))

(declare-fun lt!2501579 () Unit!161272)

(declare-fun choose!52617 ((Set Context!12588) Context!12588 Int) Unit!161272)

(assert (=> d!2184109 (= lt!2501579 (choose!52617 lt!2501474 lt!2501465 lambda!407318))))

(assert (=> d!2184109 (= lt!2501474 (set.insert lt!2501465 (as set.empty (Set Context!12588))))))

(assert (=> d!2184109 (= (lemmaFlatMapOnSingletonSet!1799 lt!2501474 lt!2501465 lambda!407318) lt!2501579)))

(declare-fun b_lambda!264099 () Bool)

(assert (=> (not b_lambda!264099) (not d!2184109)))

(declare-fun bs!1865510 () Bool)

(assert (= bs!1865510 d!2184109))

(assert (=> bs!1865510 m!7703794))

(declare-fun m!7703892 () Bool)

(assert (=> bs!1865510 m!7703892))

(declare-fun m!7703894 () Bool)

(assert (=> bs!1865510 m!7703894))

(assert (=> bs!1865510 m!7703760))

(assert (=> b!7006772 d!2184109))

(declare-fun d!2184111 () Bool)

(declare-fun c!1301282 () Bool)

(declare-fun isEmpty!39317 (List!67440) Bool)

(assert (=> d!2184111 (= c!1301282 (isEmpty!39317 s!7408))))

(declare-fun e!4211742 () Bool)

(assert (=> d!2184111 (= (matchZipper!2838 lt!2501460 s!7408) e!4211742)))

(declare-fun b!7006880 () Bool)

(declare-fun nullableZipper!2477 ((Set Context!12588)) Bool)

(assert (=> b!7006880 (= e!4211742 (nullableZipper!2477 lt!2501460))))

(declare-fun b!7006881 () Bool)

(declare-fun head!14161 (List!67440) C!34866)

(declare-fun tail!13364 (List!67440) List!67440)

(assert (=> b!7006881 (= e!4211742 (matchZipper!2838 (derivationStepZipper!2778 lt!2501460 (head!14161 s!7408)) (tail!13364 s!7408)))))

(assert (= (and d!2184111 c!1301282) b!7006880))

(assert (= (and d!2184111 (not c!1301282)) b!7006881))

(declare-fun m!7703896 () Bool)

(assert (=> d!2184111 m!7703896))

(declare-fun m!7703898 () Bool)

(assert (=> b!7006880 m!7703898))

(declare-fun m!7703900 () Bool)

(assert (=> b!7006881 m!7703900))

(assert (=> b!7006881 m!7703900))

(declare-fun m!7703902 () Bool)

(assert (=> b!7006881 m!7703902))

(declare-fun m!7703904 () Bool)

(assert (=> b!7006881 m!7703904))

(assert (=> b!7006881 m!7703902))

(assert (=> b!7006881 m!7703904))

(declare-fun m!7703906 () Bool)

(assert (=> b!7006881 m!7703906))

(assert (=> b!7006782 d!2184111))

(declare-fun bs!1865511 () Bool)

(declare-fun d!2184113 () Bool)

(assert (= bs!1865511 (and d!2184113 b!7006782)))

(declare-fun lambda!407362 () Int)

(assert (=> bs!1865511 (not (= lambda!407362 lambda!407315))))

(assert (=> d!2184113 true))

(declare-fun order!28007 () Int)

(declare-fun dynLambda!27058 (Int Int) Int)

(assert (=> d!2184113 (< (dynLambda!27058 order!28007 lambda!407315) (dynLambda!27058 order!28007 lambda!407362))))

(declare-fun forall!16214 (List!67441 Int) Bool)

(assert (=> d!2184113 (= (exists!3132 lt!2501458 lambda!407315) (not (forall!16214 lt!2501458 lambda!407362)))))

(declare-fun bs!1865512 () Bool)

(assert (= bs!1865512 d!2184113))

(declare-fun m!7703908 () Bool)

(assert (=> bs!1865512 m!7703908))

(assert (=> b!7006782 d!2184113))

(declare-fun d!2184115 () Bool)

(declare-fun e!4211745 () Bool)

(assert (=> d!2184115 e!4211745))

(declare-fun res!2858877 () Bool)

(assert (=> d!2184115 (=> (not res!2858877) (not e!4211745))))

(declare-fun lt!2501582 () Context!12588)

(declare-fun dynLambda!27059 (Int Context!12588) Bool)

(assert (=> d!2184115 (= res!2858877 (dynLambda!27059 lambda!407315 lt!2501582))))

(declare-fun getWitness!1232 (List!67441 Int) Context!12588)

(assert (=> d!2184115 (= lt!2501582 (getWitness!1232 (toList!10658 lt!2501476) lambda!407315))))

(declare-fun exists!3134 ((Set Context!12588) Int) Bool)

(assert (=> d!2184115 (exists!3134 lt!2501476 lambda!407315)))

(assert (=> d!2184115 (= (getWitness!1230 lt!2501476 lambda!407315) lt!2501582)))

(declare-fun b!7006886 () Bool)

(assert (=> b!7006886 (= e!4211745 (set.member lt!2501582 lt!2501476))))

(assert (= (and d!2184115 res!2858877) b!7006886))

(declare-fun b_lambda!264101 () Bool)

(assert (=> (not b_lambda!264101) (not d!2184115)))

(declare-fun m!7703910 () Bool)

(assert (=> d!2184115 m!7703910))

(assert (=> d!2184115 m!7703754))

(assert (=> d!2184115 m!7703754))

(declare-fun m!7703912 () Bool)

(assert (=> d!2184115 m!7703912))

(declare-fun m!7703914 () Bool)

(assert (=> d!2184115 m!7703914))

(declare-fun m!7703916 () Bool)

(assert (=> b!7006886 m!7703916))

(assert (=> b!7006782 d!2184115))

(declare-fun bs!1865513 () Bool)

(declare-fun d!2184117 () Bool)

(assert (= bs!1865513 (and d!2184117 b!7006782)))

(declare-fun lambda!407365 () Int)

(assert (=> bs!1865513 (= lambda!407365 lambda!407315)))

(declare-fun bs!1865514 () Bool)

(assert (= bs!1865514 (and d!2184117 d!2184113)))

(assert (=> bs!1865514 (not (= lambda!407365 lambda!407362))))

(assert (=> d!2184117 true))

(assert (=> d!2184117 (exists!3132 lt!2501458 lambda!407365)))

(declare-fun lt!2501585 () Unit!161272)

(declare-fun choose!52618 (List!67441 List!67440) Unit!161272)

(assert (=> d!2184117 (= lt!2501585 (choose!52618 lt!2501458 s!7408))))

(declare-fun content!13351 (List!67441) (Set Context!12588))

(assert (=> d!2184117 (matchZipper!2838 (content!13351 lt!2501458) s!7408)))

(assert (=> d!2184117 (= (lemmaZipperMatchesExistsMatchingContext!267 lt!2501458 s!7408) lt!2501585)))

(declare-fun bs!1865515 () Bool)

(assert (= bs!1865515 d!2184117))

(declare-fun m!7703918 () Bool)

(assert (=> bs!1865515 m!7703918))

(declare-fun m!7703920 () Bool)

(assert (=> bs!1865515 m!7703920))

(declare-fun m!7703922 () Bool)

(assert (=> bs!1865515 m!7703922))

(assert (=> bs!1865515 m!7703922))

(declare-fun m!7703924 () Bool)

(assert (=> bs!1865515 m!7703924))

(assert (=> b!7006782 d!2184117))

(declare-fun d!2184119 () Bool)

(declare-fun e!4211748 () Bool)

(assert (=> d!2184119 e!4211748))

(declare-fun res!2858880 () Bool)

(assert (=> d!2184119 (=> (not res!2858880) (not e!4211748))))

(declare-fun lt!2501588 () List!67441)

(declare-fun noDuplicate!2556 (List!67441) Bool)

(assert (=> d!2184119 (= res!2858880 (noDuplicate!2556 lt!2501588))))

(declare-fun choose!52619 ((Set Context!12588)) List!67441)

(assert (=> d!2184119 (= lt!2501588 (choose!52619 lt!2501476))))

(assert (=> d!2184119 (= (toList!10658 lt!2501476) lt!2501588)))

(declare-fun b!7006889 () Bool)

(assert (=> b!7006889 (= e!4211748 (= (content!13351 lt!2501588) lt!2501476))))

(assert (= (and d!2184119 res!2858880) b!7006889))

(declare-fun m!7703926 () Bool)

(assert (=> d!2184119 m!7703926))

(declare-fun m!7703928 () Bool)

(assert (=> d!2184119 m!7703928))

(declare-fun m!7703930 () Bool)

(assert (=> b!7006889 m!7703930))

(assert (=> b!7006782 d!2184119))

(assert (=> b!7006780 d!2184107))

(declare-fun d!2184121 () Bool)

(declare-fun c!1301285 () Bool)

(assert (=> d!2184121 (= c!1301285 (isEmpty!39317 (t!381193 s!7408)))))

(declare-fun e!4211749 () Bool)

(assert (=> d!2184121 (= (matchZipper!2838 lt!2501470 (t!381193 s!7408)) e!4211749)))

(declare-fun b!7006890 () Bool)

(assert (=> b!7006890 (= e!4211749 (nullableZipper!2477 lt!2501470))))

(declare-fun b!7006891 () Bool)

(assert (=> b!7006891 (= e!4211749 (matchZipper!2838 (derivationStepZipper!2778 lt!2501470 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))))))

(assert (= (and d!2184121 c!1301285) b!7006890))

(assert (= (and d!2184121 (not c!1301285)) b!7006891))

(declare-fun m!7703932 () Bool)

(assert (=> d!2184121 m!7703932))

(declare-fun m!7703934 () Bool)

(assert (=> b!7006890 m!7703934))

(declare-fun m!7703936 () Bool)

(assert (=> b!7006891 m!7703936))

(assert (=> b!7006891 m!7703936))

(declare-fun m!7703938 () Bool)

(assert (=> b!7006891 m!7703938))

(declare-fun m!7703940 () Bool)

(assert (=> b!7006891 m!7703940))

(assert (=> b!7006891 m!7703938))

(assert (=> b!7006891 m!7703940))

(declare-fun m!7703942 () Bool)

(assert (=> b!7006891 m!7703942))

(assert (=> b!7006781 d!2184121))

(declare-fun d!2184123 () Bool)

(assert (=> d!2184123 (forall!16213 (++!15289 lt!2501480 (exprs!6794 ct2!306)) lambda!407317)))

(declare-fun lt!2501589 () Unit!161272)

(assert (=> d!2184123 (= lt!2501589 (choose!52616 lt!2501480 (exprs!6794 ct2!306) lambda!407317))))

(assert (=> d!2184123 (forall!16213 lt!2501480 lambda!407317)))

(assert (=> d!2184123 (= (lemmaConcatPreservesForall!634 lt!2501480 (exprs!6794 ct2!306) lambda!407317) lt!2501589)))

(declare-fun bs!1865516 () Bool)

(assert (= bs!1865516 d!2184123))

(assert (=> bs!1865516 m!7703776))

(assert (=> bs!1865516 m!7703776))

(declare-fun m!7703944 () Bool)

(assert (=> bs!1865516 m!7703944))

(declare-fun m!7703946 () Bool)

(assert (=> bs!1865516 m!7703946))

(declare-fun m!7703948 () Bool)

(assert (=> bs!1865516 m!7703948))

(assert (=> b!7006781 d!2184123))

(declare-fun d!2184125 () Bool)

(declare-fun c!1301286 () Bool)

(assert (=> d!2184125 (= c!1301286 (isEmpty!39317 (t!381193 s!7408)))))

(declare-fun e!4211750 () Bool)

(assert (=> d!2184125 (= (matchZipper!2838 lt!2501475 (t!381193 s!7408)) e!4211750)))

(declare-fun b!7006892 () Bool)

(assert (=> b!7006892 (= e!4211750 (nullableZipper!2477 lt!2501475))))

(declare-fun b!7006893 () Bool)

(assert (=> b!7006893 (= e!4211750 (matchZipper!2838 (derivationStepZipper!2778 lt!2501475 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))))))

(assert (= (and d!2184125 c!1301286) b!7006892))

(assert (= (and d!2184125 (not c!1301286)) b!7006893))

(assert (=> d!2184125 m!7703932))

(declare-fun m!7703950 () Bool)

(assert (=> b!7006892 m!7703950))

(assert (=> b!7006893 m!7703936))

(assert (=> b!7006893 m!7703936))

(declare-fun m!7703952 () Bool)

(assert (=> b!7006893 m!7703952))

(assert (=> b!7006893 m!7703940))

(assert (=> b!7006893 m!7703952))

(assert (=> b!7006893 m!7703940))

(declare-fun m!7703954 () Bool)

(assert (=> b!7006893 m!7703954))

(assert (=> b!7006771 d!2184125))

(declare-fun d!2184127 () Bool)

(declare-fun c!1301287 () Bool)

(assert (=> d!2184127 (= c!1301287 (isEmpty!39317 (t!381193 s!7408)))))

(declare-fun e!4211751 () Bool)

(assert (=> d!2184127 (= (matchZipper!2838 lt!2501462 (t!381193 s!7408)) e!4211751)))

(declare-fun b!7006894 () Bool)

(assert (=> b!7006894 (= e!4211751 (nullableZipper!2477 lt!2501462))))

(declare-fun b!7006895 () Bool)

(assert (=> b!7006895 (= e!4211751 (matchZipper!2838 (derivationStepZipper!2778 lt!2501462 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))))))

(assert (= (and d!2184127 c!1301287) b!7006894))

(assert (= (and d!2184127 (not c!1301287)) b!7006895))

(assert (=> d!2184127 m!7703932))

(declare-fun m!7703956 () Bool)

(assert (=> b!7006894 m!7703956))

(assert (=> b!7006895 m!7703936))

(assert (=> b!7006895 m!7703936))

(declare-fun m!7703958 () Bool)

(assert (=> b!7006895 m!7703958))

(assert (=> b!7006895 m!7703940))

(assert (=> b!7006895 m!7703958))

(assert (=> b!7006895 m!7703940))

(declare-fun m!7703960 () Bool)

(assert (=> b!7006895 m!7703960))

(assert (=> b!7006771 d!2184127))

(declare-fun e!4211754 () Bool)

(declare-fun d!2184129 () Bool)

(assert (=> d!2184129 (= (matchZipper!2838 (set.union lt!2501475 lt!2501470) (t!381193 s!7408)) e!4211754)))

(declare-fun res!2858883 () Bool)

(assert (=> d!2184129 (=> res!2858883 e!4211754)))

(assert (=> d!2184129 (= res!2858883 (matchZipper!2838 lt!2501475 (t!381193 s!7408)))))

(declare-fun lt!2501592 () Unit!161272)

(declare-fun choose!52620 ((Set Context!12588) (Set Context!12588) List!67440) Unit!161272)

(assert (=> d!2184129 (= lt!2501592 (choose!52620 lt!2501475 lt!2501470 (t!381193 s!7408)))))

(assert (=> d!2184129 (= (lemmaZipperConcatMatchesSameAsBothZippers!1471 lt!2501475 lt!2501470 (t!381193 s!7408)) lt!2501592)))

(declare-fun b!7006898 () Bool)

(assert (=> b!7006898 (= e!4211754 (matchZipper!2838 lt!2501470 (t!381193 s!7408)))))

(assert (= (and d!2184129 (not res!2858883)) b!7006898))

(declare-fun m!7703962 () Bool)

(assert (=> d!2184129 m!7703962))

(assert (=> d!2184129 m!7703806))

(declare-fun m!7703964 () Bool)

(assert (=> d!2184129 m!7703964))

(assert (=> b!7006898 m!7703758))

(assert (=> b!7006771 d!2184129))

(declare-fun d!2184131 () Bool)

(declare-fun c!1301288 () Bool)

(assert (=> d!2184131 (= c!1301288 (isEmpty!39317 (t!381193 s!7408)))))

(declare-fun e!4211755 () Bool)

(assert (=> d!2184131 (= (matchZipper!2838 lt!2501469 (t!381193 s!7408)) e!4211755)))

(declare-fun b!7006899 () Bool)

(assert (=> b!7006899 (= e!4211755 (nullableZipper!2477 lt!2501469))))

(declare-fun b!7006900 () Bool)

(assert (=> b!7006900 (= e!4211755 (matchZipper!2838 (derivationStepZipper!2778 lt!2501469 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))))))

(assert (= (and d!2184131 c!1301288) b!7006899))

(assert (= (and d!2184131 (not c!1301288)) b!7006900))

(assert (=> d!2184131 m!7703932))

(declare-fun m!7703966 () Bool)

(assert (=> b!7006899 m!7703966))

(assert (=> b!7006900 m!7703936))

(assert (=> b!7006900 m!7703936))

(declare-fun m!7703968 () Bool)

(assert (=> b!7006900 m!7703968))

(assert (=> b!7006900 m!7703940))

(assert (=> b!7006900 m!7703968))

(assert (=> b!7006900 m!7703940))

(declare-fun m!7703970 () Bool)

(assert (=> b!7006900 m!7703970))

(assert (=> b!7006771 d!2184131))

(assert (=> b!7006771 d!2184123))

(declare-fun b!7006909 () Bool)

(declare-fun e!4211760 () List!67439)

(assert (=> b!7006909 (= e!4211760 (exprs!6794 ct2!306))))

(declare-fun d!2184133 () Bool)

(declare-fun e!4211761 () Bool)

(assert (=> d!2184133 e!4211761))

(declare-fun res!2858889 () Bool)

(assert (=> d!2184133 (=> (not res!2858889) (not e!4211761))))

(declare-fun lt!2501595 () List!67439)

(declare-fun content!13352 (List!67439) (Set Regex!17298))

(assert (=> d!2184133 (= res!2858889 (= (content!13352 lt!2501595) (set.union (content!13352 lt!2501480) (content!13352 (exprs!6794 ct2!306)))))))

(assert (=> d!2184133 (= lt!2501595 e!4211760)))

(declare-fun c!1301291 () Bool)

(assert (=> d!2184133 (= c!1301291 (is-Nil!67315 lt!2501480))))

(assert (=> d!2184133 (= (++!15289 lt!2501480 (exprs!6794 ct2!306)) lt!2501595)))

(declare-fun b!7006912 () Bool)

(assert (=> b!7006912 (= e!4211761 (or (not (= (exprs!6794 ct2!306) Nil!67315)) (= lt!2501595 lt!2501480)))))

(declare-fun b!7006911 () Bool)

(declare-fun res!2858890 () Bool)

(assert (=> b!7006911 (=> (not res!2858890) (not e!4211761))))

(declare-fun size!40961 (List!67439) Int)

(assert (=> b!7006911 (= res!2858890 (= (size!40961 lt!2501595) (+ (size!40961 lt!2501480) (size!40961 (exprs!6794 ct2!306)))))))

(declare-fun b!7006910 () Bool)

(assert (=> b!7006910 (= e!4211760 (Cons!67315 (h!73763 lt!2501480) (++!15289 (t!381192 lt!2501480) (exprs!6794 ct2!306))))))

(assert (= (and d!2184133 c!1301291) b!7006909))

(assert (= (and d!2184133 (not c!1301291)) b!7006910))

(assert (= (and d!2184133 res!2858889) b!7006911))

(assert (= (and b!7006911 res!2858890) b!7006912))

(declare-fun m!7703972 () Bool)

(assert (=> d!2184133 m!7703972))

(declare-fun m!7703974 () Bool)

(assert (=> d!2184133 m!7703974))

(declare-fun m!7703976 () Bool)

(assert (=> d!2184133 m!7703976))

(declare-fun m!7703978 () Bool)

(assert (=> b!7006911 m!7703978))

(declare-fun m!7703980 () Bool)

(assert (=> b!7006911 m!7703980))

(declare-fun m!7703982 () Bool)

(assert (=> b!7006911 m!7703982))

(declare-fun m!7703984 () Bool)

(assert (=> b!7006910 m!7703984))

(assert (=> b!7006784 d!2184133))

(declare-fun b!7006913 () Bool)

(declare-fun e!4211764 () Bool)

(assert (=> b!7006913 (= e!4211764 (nullable!7058 (h!73763 (exprs!6794 lt!2501471))))))

(declare-fun b!7006914 () Bool)

(declare-fun e!4211763 () (Set Context!12588))

(assert (=> b!7006914 (= e!4211763 (as set.empty (Set Context!12588)))))

(declare-fun b!7006915 () Bool)

(declare-fun e!4211762 () (Set Context!12588))

(assert (=> b!7006915 (= e!4211762 e!4211763)))

(declare-fun c!1301293 () Bool)

(assert (=> b!7006915 (= c!1301293 (is-Cons!67315 (exprs!6794 lt!2501471)))))

(declare-fun d!2184135 () Bool)

(declare-fun c!1301292 () Bool)

(assert (=> d!2184135 (= c!1301292 e!4211764)))

(declare-fun res!2858891 () Bool)

(assert (=> d!2184135 (=> (not res!2858891) (not e!4211764))))

(assert (=> d!2184135 (= res!2858891 (is-Cons!67315 (exprs!6794 lt!2501471)))))

(assert (=> d!2184135 (= (derivationStepZipperUp!1948 lt!2501471 (h!73764 s!7408)) e!4211762)))

(declare-fun call!636279 () (Set Context!12588))

(declare-fun b!7006916 () Bool)

(assert (=> b!7006916 (= e!4211762 (set.union call!636279 (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (h!73764 s!7408))))))

(declare-fun bm!636274 () Bool)

(assert (=> bm!636274 (= call!636279 (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501471)) (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (h!73764 s!7408)))))

(declare-fun b!7006917 () Bool)

(assert (=> b!7006917 (= e!4211763 call!636279)))

(assert (= (and d!2184135 res!2858891) b!7006913))

(assert (= (and d!2184135 c!1301292) b!7006916))

(assert (= (and d!2184135 (not c!1301292)) b!7006915))

(assert (= (and b!7006915 c!1301293) b!7006917))

(assert (= (and b!7006915 (not c!1301293)) b!7006914))

(assert (= (or b!7006916 b!7006917) bm!636274))

(declare-fun m!7703986 () Bool)

(assert (=> b!7006913 m!7703986))

(declare-fun m!7703988 () Bool)

(assert (=> b!7006916 m!7703988))

(declare-fun m!7703990 () Bool)

(assert (=> bm!636274 m!7703990))

(assert (=> b!7006784 d!2184135))

(assert (=> b!7006784 d!2184123))

(declare-fun b!7006940 () Bool)

(declare-fun e!4211778 () (Set Context!12588))

(assert (=> b!7006940 (= e!4211778 (as set.empty (Set Context!12588)))))

(declare-fun b!7006941 () Bool)

(declare-fun c!1301306 () Bool)

(declare-fun e!4211780 () Bool)

(assert (=> b!7006941 (= c!1301306 e!4211780)))

(declare-fun res!2858894 () Bool)

(assert (=> b!7006941 (=> (not res!2858894) (not e!4211780))))

(assert (=> b!7006941 (= res!2858894 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun e!4211779 () (Set Context!12588))

(declare-fun e!4211782 () (Set Context!12588))

(assert (=> b!7006941 (= e!4211779 e!4211782)))

(declare-fun b!7006942 () Bool)

(declare-fun e!4211777 () (Set Context!12588))

(declare-fun call!636294 () (Set Context!12588))

(assert (=> b!7006942 (= e!4211777 call!636294)))

(declare-fun b!7006943 () Bool)

(declare-fun call!636296 () (Set Context!12588))

(declare-fun call!636295 () (Set Context!12588))

(assert (=> b!7006943 (= e!4211779 (set.union call!636296 call!636295))))

(declare-fun bm!636287 () Bool)

(declare-fun call!636292 () List!67439)

(declare-fun call!636293 () List!67439)

(assert (=> bm!636287 (= call!636292 call!636293)))

(declare-fun b!7006944 () Bool)

(assert (=> b!7006944 (= e!4211780 (nullable!7058 (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))

(declare-fun b!7006945 () Bool)

(declare-fun e!4211781 () (Set Context!12588))

(assert (=> b!7006945 (= e!4211781 (set.insert lt!2501471 (as set.empty (Set Context!12588))))))

(declare-fun bm!636288 () Bool)

(declare-fun call!636297 () (Set Context!12588))

(assert (=> bm!636288 (= call!636297 call!636296)))

(declare-fun bm!636289 () Bool)

(declare-fun c!1301308 () Bool)

(assert (=> bm!636289 (= call!636295 (derivationStepZipperDown!2016 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))) (ite c!1301308 lt!2501471 (Context!12589 call!636293)) (h!73764 s!7408)))))

(declare-fun b!7006946 () Bool)

(assert (=> b!7006946 (= e!4211781 e!4211779)))

(assert (=> b!7006946 (= c!1301308 (is-Union!17298 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun c!1301305 () Bool)

(declare-fun bm!636290 () Bool)

(assert (=> bm!636290 (= call!636296 (derivationStepZipperDown!2016 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))) (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292)) (h!73764 s!7408)))))

(declare-fun b!7006948 () Bool)

(declare-fun c!1301307 () Bool)

(assert (=> b!7006948 (= c!1301307 (is-Star!17298 (h!73763 (exprs!6794 lt!2501478))))))

(assert (=> b!7006948 (= e!4211777 e!4211778)))

(declare-fun bm!636291 () Bool)

(assert (=> bm!636291 (= call!636294 call!636297)))

(declare-fun bm!636292 () Bool)

(declare-fun $colon$colon!2519 (List!67439 Regex!17298) List!67439)

(assert (=> bm!636292 (= call!636293 ($colon$colon!2519 (exprs!6794 lt!2501471) (ite (or c!1301306 c!1301305) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (h!73763 (exprs!6794 lt!2501478)))))))

(declare-fun b!7006949 () Bool)

(assert (=> b!7006949 (= e!4211778 call!636294)))

(declare-fun b!7006950 () Bool)

(assert (=> b!7006950 (= e!4211782 (set.union call!636295 call!636297))))

(declare-fun d!2184137 () Bool)

(declare-fun c!1301304 () Bool)

(assert (=> d!2184137 (= c!1301304 (and (is-ElementMatch!17298 (h!73763 (exprs!6794 lt!2501478))) (= (c!1301262 (h!73763 (exprs!6794 lt!2501478))) (h!73764 s!7408))))))

(assert (=> d!2184137 (= (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501478)) lt!2501471 (h!73764 s!7408)) e!4211781)))

(declare-fun b!7006947 () Bool)

(assert (=> b!7006947 (= e!4211782 e!4211777)))

(assert (=> b!7006947 (= c!1301305 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501478))))))

(assert (= (and d!2184137 c!1301304) b!7006945))

(assert (= (and d!2184137 (not c!1301304)) b!7006946))

(assert (= (and b!7006946 c!1301308) b!7006943))

(assert (= (and b!7006946 (not c!1301308)) b!7006941))

(assert (= (and b!7006941 res!2858894) b!7006944))

(assert (= (and b!7006941 c!1301306) b!7006950))

(assert (= (and b!7006941 (not c!1301306)) b!7006947))

(assert (= (and b!7006947 c!1301305) b!7006942))

(assert (= (and b!7006947 (not c!1301305)) b!7006948))

(assert (= (and b!7006948 c!1301307) b!7006949))

(assert (= (and b!7006948 (not c!1301307)) b!7006940))

(assert (= (or b!7006942 b!7006949) bm!636287))

(assert (= (or b!7006942 b!7006949) bm!636291))

(assert (= (or b!7006950 bm!636291) bm!636288))

(assert (= (or b!7006950 bm!636287) bm!636292))

(assert (= (or b!7006943 bm!636288) bm!636290))

(assert (= (or b!7006943 b!7006950) bm!636289))

(declare-fun m!7703992 () Bool)

(assert (=> bm!636290 m!7703992))

(declare-fun m!7703994 () Bool)

(assert (=> b!7006945 m!7703994))

(declare-fun m!7703996 () Bool)

(assert (=> bm!636289 m!7703996))

(declare-fun m!7703998 () Bool)

(assert (=> bm!636292 m!7703998))

(declare-fun m!7704000 () Bool)

(assert (=> b!7006944 m!7704000))

(assert (=> b!7006784 d!2184137))

(declare-fun d!2184139 () Bool)

(assert (=> d!2184139 (= (isEmpty!39315 (exprs!6794 lt!2501478)) (is-Nil!67315 (exprs!6794 lt!2501478)))))

(assert (=> b!7006785 d!2184139))

(assert (=> b!7006783 d!2184121))

(declare-fun call!636304 () Bool)

(declare-fun c!1301314 () Bool)

(declare-fun bm!636299 () Bool)

(declare-fun c!1301313 () Bool)

(assert (=> bm!636299 (= call!636304 (validRegex!8878 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(declare-fun b!7006969 () Bool)

(declare-fun e!4211800 () Bool)

(declare-fun e!4211803 () Bool)

(assert (=> b!7006969 (= e!4211800 e!4211803)))

(assert (=> b!7006969 (= c!1301314 (is-Union!17298 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun b!7006970 () Bool)

(declare-fun e!4211798 () Bool)

(assert (=> b!7006970 (= e!4211798 call!636304)))

(declare-fun bm!636300 () Bool)

(declare-fun call!636305 () Bool)

(assert (=> bm!636300 (= call!636305 (validRegex!8878 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun b!7006971 () Bool)

(declare-fun res!2858905 () Bool)

(declare-fun e!4211797 () Bool)

(assert (=> b!7006971 (=> (not res!2858905) (not e!4211797))))

(assert (=> b!7006971 (= res!2858905 call!636305)))

(assert (=> b!7006971 (= e!4211803 e!4211797)))

(declare-fun b!7006972 () Bool)

(declare-fun e!4211799 () Bool)

(assert (=> b!7006972 (= e!4211799 e!4211800)))

(assert (=> b!7006972 (= c!1301313 (is-Star!17298 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun bm!636301 () Bool)

(declare-fun call!636306 () Bool)

(assert (=> bm!636301 (= call!636306 call!636304)))

(declare-fun d!2184141 () Bool)

(declare-fun res!2858906 () Bool)

(assert (=> d!2184141 (=> res!2858906 e!4211799)))

(assert (=> d!2184141 (= res!2858906 (is-ElementMatch!17298 (h!73763 (exprs!6794 lt!2501478))))))

(assert (=> d!2184141 (= (validRegex!8878 (h!73763 (exprs!6794 lt!2501478))) e!4211799)))

(declare-fun b!7006973 () Bool)

(declare-fun e!4211802 () Bool)

(declare-fun e!4211801 () Bool)

(assert (=> b!7006973 (= e!4211802 e!4211801)))

(declare-fun res!2858909 () Bool)

(assert (=> b!7006973 (=> (not res!2858909) (not e!4211801))))

(assert (=> b!7006973 (= res!2858909 call!636305)))

(declare-fun b!7006974 () Bool)

(declare-fun res!2858908 () Bool)

(assert (=> b!7006974 (=> res!2858908 e!4211802)))

(assert (=> b!7006974 (= res!2858908 (not (is-Concat!26143 (h!73763 (exprs!6794 lt!2501478)))))))

(assert (=> b!7006974 (= e!4211803 e!4211802)))

(declare-fun b!7006975 () Bool)

(assert (=> b!7006975 (= e!4211800 e!4211798)))

(declare-fun res!2858907 () Bool)

(assert (=> b!7006975 (= res!2858907 (not (nullable!7058 (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))))

(assert (=> b!7006975 (=> (not res!2858907) (not e!4211798))))

(declare-fun b!7006976 () Bool)

(assert (=> b!7006976 (= e!4211801 call!636306)))

(declare-fun b!7006977 () Bool)

(assert (=> b!7006977 (= e!4211797 call!636306)))

(assert (= (and d!2184141 (not res!2858906)) b!7006972))

(assert (= (and b!7006972 c!1301313) b!7006975))

(assert (= (and b!7006972 (not c!1301313)) b!7006969))

(assert (= (and b!7006975 res!2858907) b!7006970))

(assert (= (and b!7006969 c!1301314) b!7006971))

(assert (= (and b!7006969 (not c!1301314)) b!7006974))

(assert (= (and b!7006971 res!2858905) b!7006977))

(assert (= (and b!7006974 (not res!2858908)) b!7006973))

(assert (= (and b!7006973 res!2858909) b!7006976))

(assert (= (or b!7006977 b!7006976) bm!636301))

(assert (= (or b!7006971 b!7006973) bm!636300))

(assert (= (or b!7006970 bm!636301) bm!636299))

(declare-fun m!7704002 () Bool)

(assert (=> bm!636299 m!7704002))

(declare-fun m!7704004 () Bool)

(assert (=> bm!636300 m!7704004))

(declare-fun m!7704006 () Bool)

(assert (=> b!7006975 m!7704006))

(assert (=> b!7006773 d!2184141))

(assert (=> b!7006773 d!2184123))

(declare-fun b!7006978 () Bool)

(declare-fun e!4211804 () List!67439)

(assert (=> b!7006978 (= e!4211804 (exprs!6794 ct2!306))))

(declare-fun d!2184143 () Bool)

(declare-fun e!4211805 () Bool)

(assert (=> d!2184143 e!4211805))

(declare-fun res!2858910 () Bool)

(assert (=> d!2184143 (=> (not res!2858910) (not e!4211805))))

(declare-fun lt!2501596 () List!67439)

(assert (=> d!2184143 (= res!2858910 (= (content!13352 lt!2501596) (set.union (content!13352 (exprs!6794 lt!2501478)) (content!13352 (exprs!6794 ct2!306)))))))

(assert (=> d!2184143 (= lt!2501596 e!4211804)))

(declare-fun c!1301315 () Bool)

(assert (=> d!2184143 (= c!1301315 (is-Nil!67315 (exprs!6794 lt!2501478)))))

(assert (=> d!2184143 (= (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)) lt!2501596)))

(declare-fun b!7006981 () Bool)

(assert (=> b!7006981 (= e!4211805 (or (not (= (exprs!6794 ct2!306) Nil!67315)) (= lt!2501596 (exprs!6794 lt!2501478))))))

(declare-fun b!7006980 () Bool)

(declare-fun res!2858911 () Bool)

(assert (=> b!7006980 (=> (not res!2858911) (not e!4211805))))

(assert (=> b!7006980 (= res!2858911 (= (size!40961 lt!2501596) (+ (size!40961 (exprs!6794 lt!2501478)) (size!40961 (exprs!6794 ct2!306)))))))

(declare-fun b!7006979 () Bool)

(assert (=> b!7006979 (= e!4211804 (Cons!67315 (h!73763 (exprs!6794 lt!2501478)) (++!15289 (t!381192 (exprs!6794 lt!2501478)) (exprs!6794 ct2!306))))))

(assert (= (and d!2184143 c!1301315) b!7006978))

(assert (= (and d!2184143 (not c!1301315)) b!7006979))

(assert (= (and d!2184143 res!2858910) b!7006980))

(assert (= (and b!7006980 res!2858911) b!7006981))

(declare-fun m!7704008 () Bool)

(assert (=> d!2184143 m!7704008))

(declare-fun m!7704010 () Bool)

(assert (=> d!2184143 m!7704010))

(assert (=> d!2184143 m!7703976))

(declare-fun m!7704012 () Bool)

(assert (=> b!7006980 m!7704012))

(declare-fun m!7704014 () Bool)

(assert (=> b!7006980 m!7704014))

(assert (=> b!7006980 m!7703982))

(declare-fun m!7704016 () Bool)

(assert (=> b!7006979 m!7704016))

(assert (=> b!7006774 d!2184143))

(assert (=> b!7006774 d!2184107))

(declare-fun d!2184145 () Bool)

(declare-fun e!4211808 () Bool)

(assert (=> d!2184145 e!4211808))

(declare-fun res!2858914 () Bool)

(assert (=> d!2184145 (=> (not res!2858914) (not e!4211808))))

(declare-fun lt!2501599 () Context!12588)

(declare-fun dynLambda!27060 (Int Context!12588) Context!12588)

(assert (=> d!2184145 (= res!2858914 (= lt!2501459 (dynLambda!27060 lambda!407316 lt!2501599)))))

(declare-fun choose!52621 ((Set Context!12588) Int Context!12588) Context!12588)

(assert (=> d!2184145 (= lt!2501599 (choose!52621 z1!570 lambda!407316 lt!2501459))))

(declare-fun map!15591 ((Set Context!12588) Int) (Set Context!12588))

(assert (=> d!2184145 (set.member lt!2501459 (map!15591 z1!570 lambda!407316))))

(assert (=> d!2184145 (= (mapPost2!153 z1!570 lambda!407316 lt!2501459) lt!2501599)))

(declare-fun b!7006985 () Bool)

(assert (=> b!7006985 (= e!4211808 (set.member lt!2501599 z1!570))))

(assert (= (and d!2184145 res!2858914) b!7006985))

(declare-fun b_lambda!264103 () Bool)

(assert (=> (not b_lambda!264103) (not d!2184145)))

(declare-fun m!7704018 () Bool)

(assert (=> d!2184145 m!7704018))

(declare-fun m!7704020 () Bool)

(assert (=> d!2184145 m!7704020))

(declare-fun m!7704022 () Bool)

(assert (=> d!2184145 m!7704022))

(declare-fun m!7704024 () Bool)

(assert (=> d!2184145 m!7704024))

(declare-fun m!7704026 () Bool)

(assert (=> b!7006985 m!7704026))

(assert (=> b!7006774 d!2184145))

(assert (=> b!7006777 d!2184121))

(assert (=> b!7006777 d!2184123))

(declare-fun d!2184147 () Bool)

(declare-fun nullableFct!2672 (Regex!17298) Bool)

(assert (=> d!2184147 (= (nullable!7058 (h!73763 (exprs!6794 lt!2501478))) (nullableFct!2672 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun bs!1865517 () Bool)

(assert (= bs!1865517 d!2184147))

(declare-fun m!7704028 () Bool)

(assert (=> bs!1865517 m!7704028))

(assert (=> b!7006779 d!2184147))

(declare-fun d!2184149 () Bool)

(assert (=> d!2184149 (= (tail!13362 (exprs!6794 lt!2501478)) (t!381192 (exprs!6794 lt!2501478)))))

(assert (=> b!7006779 d!2184149))

(declare-fun d!2184151 () Bool)

(declare-fun c!1301316 () Bool)

(assert (=> d!2184151 (= c!1301316 (isEmpty!39317 s!7408))))

(declare-fun e!4211809 () Bool)

(assert (=> d!2184151 (= (matchZipper!2838 lt!2501476 s!7408) e!4211809)))

(declare-fun b!7006986 () Bool)

(assert (=> b!7006986 (= e!4211809 (nullableZipper!2477 lt!2501476))))

(declare-fun b!7006987 () Bool)

(assert (=> b!7006987 (= e!4211809 (matchZipper!2838 (derivationStepZipper!2778 lt!2501476 (head!14161 s!7408)) (tail!13364 s!7408)))))

(assert (= (and d!2184151 c!1301316) b!7006986))

(assert (= (and d!2184151 (not c!1301316)) b!7006987))

(assert (=> d!2184151 m!7703896))

(declare-fun m!7704030 () Bool)

(assert (=> b!7006986 m!7704030))

(assert (=> b!7006987 m!7703900))

(assert (=> b!7006987 m!7703900))

(declare-fun m!7704032 () Bool)

(assert (=> b!7006987 m!7704032))

(assert (=> b!7006987 m!7703904))

(assert (=> b!7006987 m!7704032))

(assert (=> b!7006987 m!7703904))

(declare-fun m!7704034 () Bool)

(assert (=> b!7006987 m!7704034))

(assert (=> start!674554 d!2184151))

(declare-fun bs!1865518 () Bool)

(declare-fun d!2184153 () Bool)

(assert (= bs!1865518 (and d!2184153 b!7006774)))

(declare-fun lambda!407370 () Int)

(assert (=> bs!1865518 (= lambda!407370 lambda!407316)))

(assert (=> d!2184153 true))

(assert (=> d!2184153 (= (appendTo!419 z1!570 ct2!306) (map!15591 z1!570 lambda!407370))))

(declare-fun bs!1865519 () Bool)

(assert (= bs!1865519 d!2184153))

(declare-fun m!7704036 () Bool)

(assert (=> bs!1865519 m!7704036))

(assert (=> start!674554 d!2184153))

(declare-fun bs!1865520 () Bool)

(declare-fun d!2184155 () Bool)

(assert (= bs!1865520 (and d!2184155 b!7006774)))

(declare-fun lambda!407373 () Int)

(assert (=> bs!1865520 (= lambda!407373 lambda!407317)))

(assert (=> d!2184155 (= (inv!86105 ct2!306) (forall!16213 (exprs!6794 ct2!306) lambda!407373))))

(declare-fun bs!1865521 () Bool)

(assert (= bs!1865521 d!2184155))

(declare-fun m!7704038 () Bool)

(assert (=> bs!1865521 m!7704038))

(assert (=> start!674554 d!2184155))

(declare-fun bs!1865522 () Bool)

(declare-fun d!2184157 () Bool)

(assert (= bs!1865522 (and d!2184157 b!7006774)))

(declare-fun lambda!407374 () Int)

(assert (=> bs!1865522 (= lambda!407374 lambda!407317)))

(declare-fun bs!1865523 () Bool)

(assert (= bs!1865523 (and d!2184157 d!2184155)))

(assert (=> bs!1865523 (= lambda!407374 lambda!407373)))

(assert (=> d!2184157 (= (inv!86105 setElem!48252) (forall!16213 (exprs!6794 setElem!48252) lambda!407374))))

(declare-fun bs!1865524 () Bool)

(assert (= bs!1865524 d!2184157))

(declare-fun m!7704040 () Bool)

(assert (=> bs!1865524 m!7704040))

(assert (=> setNonEmpty!48252 d!2184157))

(declare-fun b!7006992 () Bool)

(declare-fun e!4211812 () Bool)

(declare-fun tp!1931839 () Bool)

(assert (=> b!7006992 (= e!4211812 (and tp_is_empty!43821 tp!1931839))))

(assert (=> b!7006786 (= tp!1931821 e!4211812)))

(assert (= (and b!7006786 (is-Cons!67316 (t!381193 s!7408))) b!7006992))

(declare-fun b!7006997 () Bool)

(declare-fun e!4211815 () Bool)

(declare-fun tp!1931844 () Bool)

(declare-fun tp!1931845 () Bool)

(assert (=> b!7006997 (= e!4211815 (and tp!1931844 tp!1931845))))

(assert (=> b!7006789 (= tp!1931822 e!4211815)))

(assert (= (and b!7006789 (is-Cons!67315 (exprs!6794 ct2!306))) b!7006997))

(declare-fun b!7006998 () Bool)

(declare-fun e!4211816 () Bool)

(declare-fun tp!1931846 () Bool)

(declare-fun tp!1931847 () Bool)

(assert (=> b!7006998 (= e!4211816 (and tp!1931846 tp!1931847))))

(assert (=> b!7006788 (= tp!1931823 e!4211816)))

(assert (= (and b!7006788 (is-Cons!67315 (exprs!6794 setElem!48252))) b!7006998))

(declare-fun condSetEmpty!48258 () Bool)

(assert (=> setNonEmpty!48252 (= condSetEmpty!48258 (= setRest!48252 (as set.empty (Set Context!12588))))))

(declare-fun setRes!48258 () Bool)

(assert (=> setNonEmpty!48252 (= tp!1931824 setRes!48258)))

(declare-fun setIsEmpty!48258 () Bool)

(assert (=> setIsEmpty!48258 setRes!48258))

(declare-fun tp!1931853 () Bool)

(declare-fun e!4211819 () Bool)

(declare-fun setNonEmpty!48258 () Bool)

(declare-fun setElem!48258 () Context!12588)

(assert (=> setNonEmpty!48258 (= setRes!48258 (and tp!1931853 (inv!86105 setElem!48258) e!4211819))))

(declare-fun setRest!48258 () (Set Context!12588))

(assert (=> setNonEmpty!48258 (= setRest!48252 (set.union (set.insert setElem!48258 (as set.empty (Set Context!12588))) setRest!48258))))

(declare-fun b!7007003 () Bool)

(declare-fun tp!1931852 () Bool)

(assert (=> b!7007003 (= e!4211819 tp!1931852)))

(assert (= (and setNonEmpty!48252 condSetEmpty!48258) setIsEmpty!48258))

(assert (= (and setNonEmpty!48252 (not condSetEmpty!48258)) setNonEmpty!48258))

(assert (= setNonEmpty!48258 b!7007003))

(declare-fun m!7704042 () Bool)

(assert (=> setNonEmpty!48258 m!7704042))

(declare-fun b_lambda!264105 () Bool)

(assert (= b_lambda!264103 (or b!7006774 b_lambda!264105)))

(declare-fun bs!1865525 () Bool)

(declare-fun d!2184159 () Bool)

(assert (= bs!1865525 (and d!2184159 b!7006774)))

(declare-fun lt!2501602 () Unit!161272)

(assert (=> bs!1865525 (= lt!2501602 (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501599) (exprs!6794 ct2!306) lambda!407317))))

(assert (=> bs!1865525 (= (dynLambda!27060 lambda!407316 lt!2501599) (Context!12589 (++!15289 (exprs!6794 lt!2501599) (exprs!6794 ct2!306))))))

(declare-fun m!7704044 () Bool)

(assert (=> bs!1865525 m!7704044))

(declare-fun m!7704046 () Bool)

(assert (=> bs!1865525 m!7704046))

(assert (=> d!2184145 d!2184159))

(declare-fun b_lambda!264107 () Bool)

(assert (= b_lambda!264099 (or b!7006772 b_lambda!264107)))

(declare-fun bs!1865526 () Bool)

(declare-fun d!2184161 () Bool)

(assert (= bs!1865526 (and d!2184161 b!7006772)))

(assert (=> bs!1865526 (= (dynLambda!27057 lambda!407318 lt!2501465) (derivationStepZipperUp!1948 lt!2501465 (h!73764 s!7408)))))

(assert (=> bs!1865526 m!7703798))

(assert (=> d!2184109 d!2184161))

(declare-fun b_lambda!264109 () Bool)

(assert (= b_lambda!264101 (or b!7006782 b_lambda!264109)))

(declare-fun bs!1865527 () Bool)

(declare-fun d!2184163 () Bool)

(assert (= bs!1865527 (and d!2184163 b!7006782)))

(assert (=> bs!1865527 (= (dynLambda!27059 lambda!407315 lt!2501582) (matchZipper!2838 (set.insert lt!2501582 (as set.empty (Set Context!12588))) s!7408))))

(declare-fun m!7704048 () Bool)

(assert (=> bs!1865527 m!7704048))

(assert (=> bs!1865527 m!7704048))

(declare-fun m!7704050 () Bool)

(assert (=> bs!1865527 m!7704050))

(assert (=> d!2184115 d!2184163))

(push 1)

(assert (not b!7006944))

(assert (not b!7006998))

(assert (not b!7007003))

(assert (not bm!636292))

(assert (not b!7006892))

(assert (not b!7006894))

(assert (not b!7006992))

(assert (not b!7006872))

(assert (not b!7006997))

(assert (not b!7006987))

(assert (not b!7006880))

(assert (not d!2184107))

(assert (not b!7006975))

(assert (not setNonEmpty!48258))

(assert (not d!2184133))

(assert (not b!7006895))

(assert (not b_lambda!264107))

(assert (not b!7006910))

(assert (not b!7006911))

(assert (not b!7006913))

(assert (not b!7006890))

(assert (not b!7006899))

(assert (not b!7006898))

(assert (not bm!636299))

(assert (not d!2184121))

(assert (not d!2184129))

(assert (not bm!636274))

(assert (not bs!1865527))

(assert (not b!7006979))

(assert (not b!7006869))

(assert (not b!7006900))

(assert (not d!2184127))

(assert (not b!7006893))

(assert (not d!2184109))

(assert (not b!7006916))

(assert (not bm!636273))

(assert (not d!2184131))

(assert (not d!2184117))

(assert (not b!7006980))

(assert (not d!2184155))

(assert (not bm!636300))

(assert (not bm!636289))

(assert (not b!7006881))

(assert (not d!2184147))

(assert (not d!2184143))

(assert (not d!2184153))

(assert (not d!2184101))

(assert (not b!7006891))

(assert tp_is_empty!43821)

(assert (not d!2184145))

(assert (not d!2184125))

(assert (not d!2184115))

(assert (not bs!1865525))

(assert (not bs!1865526))

(assert (not d!2184119))

(assert (not d!2184111))

(assert (not b!7006986))

(assert (not d!2184157))

(assert (not bm!636290))

(assert (not d!2184113))

(assert (not b_lambda!264105))

(assert (not b!7006889))

(assert (not d!2184151))

(assert (not d!2184105))

(assert (not d!2184123))

(assert (not b_lambda!264109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2184229 () Bool)

(declare-fun res!2858961 () Bool)

(declare-fun e!4211913 () Bool)

(assert (=> d!2184229 (=> res!2858961 e!4211913)))

(assert (=> d!2184229 (= res!2858961 (is-Nil!67315 (++!15289 lt!2501480 (exprs!6794 ct2!306))))))

(assert (=> d!2184229 (= (forall!16213 (++!15289 lt!2501480 (exprs!6794 ct2!306)) lambda!407317) e!4211913)))

(declare-fun b!7007153 () Bool)

(declare-fun e!4211914 () Bool)

(assert (=> b!7007153 (= e!4211913 e!4211914)))

(declare-fun res!2858962 () Bool)

(assert (=> b!7007153 (=> (not res!2858962) (not e!4211914))))

(declare-fun dynLambda!27065 (Int Regex!17298) Bool)

(assert (=> b!7007153 (= res!2858962 (dynLambda!27065 lambda!407317 (h!73763 (++!15289 lt!2501480 (exprs!6794 ct2!306)))))))

(declare-fun b!7007154 () Bool)

(assert (=> b!7007154 (= e!4211914 (forall!16213 (t!381192 (++!15289 lt!2501480 (exprs!6794 ct2!306))) lambda!407317))))

(assert (= (and d!2184229 (not res!2858961)) b!7007153))

(assert (= (and b!7007153 res!2858962) b!7007154))

(declare-fun b_lambda!264123 () Bool)

(assert (=> (not b_lambda!264123) (not b!7007153)))

(declare-fun m!7704228 () Bool)

(assert (=> b!7007153 m!7704228))

(declare-fun m!7704230 () Bool)

(assert (=> b!7007154 m!7704230))

(assert (=> d!2184123 d!2184229))

(assert (=> d!2184123 d!2184133))

(declare-fun d!2184231 () Bool)

(assert (=> d!2184231 (forall!16213 (++!15289 lt!2501480 (exprs!6794 ct2!306)) lambda!407317)))

(assert (=> d!2184231 true))

(declare-fun _$78!519 () Unit!161272)

(assert (=> d!2184231 (= (choose!52616 lt!2501480 (exprs!6794 ct2!306) lambda!407317) _$78!519)))

(declare-fun bs!1865550 () Bool)

(assert (= bs!1865550 d!2184231))

(assert (=> bs!1865550 m!7703776))

(assert (=> bs!1865550 m!7703776))

(assert (=> bs!1865550 m!7703944))

(assert (=> d!2184123 d!2184231))

(declare-fun d!2184233 () Bool)

(declare-fun res!2858963 () Bool)

(declare-fun e!4211915 () Bool)

(assert (=> d!2184233 (=> res!2858963 e!4211915)))

(assert (=> d!2184233 (= res!2858963 (is-Nil!67315 lt!2501480))))

(assert (=> d!2184233 (= (forall!16213 lt!2501480 lambda!407317) e!4211915)))

(declare-fun b!7007155 () Bool)

(declare-fun e!4211916 () Bool)

(assert (=> b!7007155 (= e!4211915 e!4211916)))

(declare-fun res!2858964 () Bool)

(assert (=> b!7007155 (=> (not res!2858964) (not e!4211916))))

(assert (=> b!7007155 (= res!2858964 (dynLambda!27065 lambda!407317 (h!73763 lt!2501480)))))

(declare-fun b!7007156 () Bool)

(assert (=> b!7007156 (= e!4211916 (forall!16213 (t!381192 lt!2501480) lambda!407317))))

(assert (= (and d!2184233 (not res!2858963)) b!7007155))

(assert (= (and b!7007155 res!2858964) b!7007156))

(declare-fun b_lambda!264125 () Bool)

(assert (=> (not b_lambda!264125) (not b!7007155)))

(declare-fun m!7704232 () Bool)

(assert (=> b!7007155 m!7704232))

(declare-fun m!7704234 () Bool)

(assert (=> b!7007156 m!7704234))

(assert (=> d!2184123 d!2184233))

(declare-fun b!7007157 () Bool)

(declare-fun e!4211917 () List!67439)

(assert (=> b!7007157 (= e!4211917 (exprs!6794 ct2!306))))

(declare-fun d!2184235 () Bool)

(declare-fun e!4211918 () Bool)

(assert (=> d!2184235 e!4211918))

(declare-fun res!2858965 () Bool)

(assert (=> d!2184235 (=> (not res!2858965) (not e!4211918))))

(declare-fun lt!2501632 () List!67439)

(assert (=> d!2184235 (= res!2858965 (= (content!13352 lt!2501632) (set.union (content!13352 (t!381192 lt!2501480)) (content!13352 (exprs!6794 ct2!306)))))))

(assert (=> d!2184235 (= lt!2501632 e!4211917)))

(declare-fun c!1301364 () Bool)

(assert (=> d!2184235 (= c!1301364 (is-Nil!67315 (t!381192 lt!2501480)))))

(assert (=> d!2184235 (= (++!15289 (t!381192 lt!2501480) (exprs!6794 ct2!306)) lt!2501632)))

(declare-fun b!7007160 () Bool)

(assert (=> b!7007160 (= e!4211918 (or (not (= (exprs!6794 ct2!306) Nil!67315)) (= lt!2501632 (t!381192 lt!2501480))))))

(declare-fun b!7007159 () Bool)

(declare-fun res!2858966 () Bool)

(assert (=> b!7007159 (=> (not res!2858966) (not e!4211918))))

(assert (=> b!7007159 (= res!2858966 (= (size!40961 lt!2501632) (+ (size!40961 (t!381192 lt!2501480)) (size!40961 (exprs!6794 ct2!306)))))))

(declare-fun b!7007158 () Bool)

(assert (=> b!7007158 (= e!4211917 (Cons!67315 (h!73763 (t!381192 lt!2501480)) (++!15289 (t!381192 (t!381192 lt!2501480)) (exprs!6794 ct2!306))))))

(assert (= (and d!2184235 c!1301364) b!7007157))

(assert (= (and d!2184235 (not c!1301364)) b!7007158))

(assert (= (and d!2184235 res!2858965) b!7007159))

(assert (= (and b!7007159 res!2858966) b!7007160))

(declare-fun m!7704236 () Bool)

(assert (=> d!2184235 m!7704236))

(declare-fun m!7704238 () Bool)

(assert (=> d!2184235 m!7704238))

(assert (=> d!2184235 m!7703976))

(declare-fun m!7704240 () Bool)

(assert (=> b!7007159 m!7704240))

(declare-fun m!7704242 () Bool)

(assert (=> b!7007159 m!7704242))

(assert (=> b!7007159 m!7703982))

(declare-fun m!7704244 () Bool)

(assert (=> b!7007158 m!7704244))

(assert (=> b!7006910 d!2184235))

(declare-fun d!2184237 () Bool)

(assert (=> d!2184237 (= (isEmpty!39317 s!7408) (is-Nil!67316 s!7408))))

(assert (=> d!2184151 d!2184237))

(declare-fun b!7007161 () Bool)

(declare-fun e!4211920 () (Set Context!12588))

(assert (=> b!7007161 (= e!4211920 (as set.empty (Set Context!12588)))))

(declare-fun b!7007162 () Bool)

(declare-fun c!1301367 () Bool)

(declare-fun e!4211922 () Bool)

(assert (=> b!7007162 (= c!1301367 e!4211922)))

(declare-fun res!2858967 () Bool)

(assert (=> b!7007162 (=> (not res!2858967) (not e!4211922))))

(assert (=> b!7007162 (= res!2858967 (is-Concat!26143 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun e!4211921 () (Set Context!12588))

(declare-fun e!4211924 () (Set Context!12588))

(assert (=> b!7007162 (= e!4211921 e!4211924)))

(declare-fun b!7007163 () Bool)

(declare-fun e!4211919 () (Set Context!12588))

(declare-fun call!636340 () (Set Context!12588))

(assert (=> b!7007163 (= e!4211919 call!636340)))

(declare-fun b!7007164 () Bool)

(declare-fun call!636342 () (Set Context!12588))

(declare-fun call!636341 () (Set Context!12588))

(assert (=> b!7007164 (= e!4211921 (set.union call!636342 call!636341))))

(declare-fun bm!636333 () Bool)

(declare-fun call!636338 () List!67439)

(declare-fun call!636339 () List!67439)

(assert (=> bm!636333 (= call!636338 call!636339)))

(declare-fun b!7007165 () Bool)

(assert (=> b!7007165 (= e!4211922 (nullable!7058 (regOne!35108 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(declare-fun e!4211923 () (Set Context!12588))

(declare-fun b!7007166 () Bool)

(assert (=> b!7007166 (= e!4211923 (set.insert (ite c!1301308 lt!2501471 (Context!12589 call!636293)) (as set.empty (Set Context!12588))))))

(declare-fun bm!636334 () Bool)

(declare-fun call!636343 () (Set Context!12588))

(assert (=> bm!636334 (= call!636343 call!636342)))

(declare-fun bm!636335 () Bool)

(declare-fun c!1301369 () Bool)

(assert (=> bm!636335 (= call!636341 (derivationStepZipperDown!2016 (ite c!1301369 (regTwo!35109 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (regOne!35108 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))) (ite c!1301369 (ite c!1301308 lt!2501471 (Context!12589 call!636293)) (Context!12589 call!636339)) (h!73764 s!7408)))))

(declare-fun b!7007167 () Bool)

(assert (=> b!7007167 (= e!4211923 e!4211921)))

(assert (=> b!7007167 (= c!1301369 (is-Union!17298 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun bm!636336 () Bool)

(declare-fun c!1301366 () Bool)

(assert (=> bm!636336 (= call!636342 (derivationStepZipperDown!2016 (ite c!1301369 (regOne!35109 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (ite c!1301367 (regTwo!35108 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (ite c!1301366 (regOne!35108 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (reg!17627 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))) (ite (or c!1301369 c!1301367) (ite c!1301308 lt!2501471 (Context!12589 call!636293)) (Context!12589 call!636338)) (h!73764 s!7408)))))

(declare-fun b!7007169 () Bool)

(declare-fun c!1301368 () Bool)

(assert (=> b!7007169 (= c!1301368 (is-Star!17298 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(assert (=> b!7007169 (= e!4211919 e!4211920)))

(declare-fun bm!636337 () Bool)

(assert (=> bm!636337 (= call!636340 call!636343)))

(declare-fun bm!636338 () Bool)

(assert (=> bm!636338 (= call!636339 ($colon$colon!2519 (exprs!6794 (ite c!1301308 lt!2501471 (Context!12589 call!636293))) (ite (or c!1301367 c!1301366) (regTwo!35108 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(declare-fun b!7007170 () Bool)

(assert (=> b!7007170 (= e!4211920 call!636340)))

(declare-fun b!7007171 () Bool)

(assert (=> b!7007171 (= e!4211924 (set.union call!636341 call!636343))))

(declare-fun c!1301365 () Bool)

(declare-fun d!2184239 () Bool)

(assert (=> d!2184239 (= c!1301365 (and (is-ElementMatch!17298 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (= (c!1301262 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (h!73764 s!7408))))))

(assert (=> d!2184239 (= (derivationStepZipperDown!2016 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))) (ite c!1301308 lt!2501471 (Context!12589 call!636293)) (h!73764 s!7408)) e!4211923)))

(declare-fun b!7007168 () Bool)

(assert (=> b!7007168 (= e!4211924 e!4211919)))

(assert (=> b!7007168 (= c!1301366 (is-Concat!26143 (ite c!1301308 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(assert (= (and d!2184239 c!1301365) b!7007166))

(assert (= (and d!2184239 (not c!1301365)) b!7007167))

(assert (= (and b!7007167 c!1301369) b!7007164))

(assert (= (and b!7007167 (not c!1301369)) b!7007162))

(assert (= (and b!7007162 res!2858967) b!7007165))

(assert (= (and b!7007162 c!1301367) b!7007171))

(assert (= (and b!7007162 (not c!1301367)) b!7007168))

(assert (= (and b!7007168 c!1301366) b!7007163))

(assert (= (and b!7007168 (not c!1301366)) b!7007169))

(assert (= (and b!7007169 c!1301368) b!7007170))

(assert (= (and b!7007169 (not c!1301368)) b!7007161))

(assert (= (or b!7007163 b!7007170) bm!636333))

(assert (= (or b!7007163 b!7007170) bm!636337))

(assert (= (or b!7007171 bm!636337) bm!636334))

(assert (= (or b!7007171 bm!636333) bm!636338))

(assert (= (or b!7007164 bm!636334) bm!636336))

(assert (= (or b!7007164 b!7007171) bm!636335))

(declare-fun m!7704246 () Bool)

(assert (=> bm!636336 m!7704246))

(declare-fun m!7704248 () Bool)

(assert (=> b!7007166 m!7704248))

(declare-fun m!7704250 () Bool)

(assert (=> bm!636335 m!7704250))

(declare-fun m!7704252 () Bool)

(assert (=> bm!636338 m!7704252))

(declare-fun m!7704254 () Bool)

(assert (=> b!7007165 m!7704254))

(assert (=> bm!636289 d!2184239))

(declare-fun c!1301371 () Bool)

(declare-fun bm!636339 () Bool)

(declare-fun c!1301370 () Bool)

(declare-fun call!636344 () Bool)

(assert (=> bm!636339 (= call!636344 (validRegex!8878 (ite c!1301370 (reg!17627 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (ite c!1301371 (regTwo!35109 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (regTwo!35108 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))))))

(declare-fun b!7007172 () Bool)

(declare-fun e!4211928 () Bool)

(declare-fun e!4211931 () Bool)

(assert (=> b!7007172 (= e!4211928 e!4211931)))

(assert (=> b!7007172 (= c!1301371 (is-Union!17298 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun b!7007173 () Bool)

(declare-fun e!4211926 () Bool)

(assert (=> b!7007173 (= e!4211926 call!636344)))

(declare-fun call!636345 () Bool)

(declare-fun bm!636340 () Bool)

(assert (=> bm!636340 (= call!636345 (validRegex!8878 (ite c!1301371 (regOne!35109 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) (regOne!35108 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))))

(declare-fun b!7007174 () Bool)

(declare-fun res!2858968 () Bool)

(declare-fun e!4211925 () Bool)

(assert (=> b!7007174 (=> (not res!2858968) (not e!4211925))))

(assert (=> b!7007174 (= res!2858968 call!636345)))

(assert (=> b!7007174 (= e!4211931 e!4211925)))

(declare-fun b!7007175 () Bool)

(declare-fun e!4211927 () Bool)

(assert (=> b!7007175 (= e!4211927 e!4211928)))

(assert (=> b!7007175 (= c!1301370 (is-Star!17298 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun bm!636341 () Bool)

(declare-fun call!636346 () Bool)

(assert (=> bm!636341 (= call!636346 call!636344)))

(declare-fun d!2184241 () Bool)

(declare-fun res!2858969 () Bool)

(assert (=> d!2184241 (=> res!2858969 e!4211927)))

(assert (=> d!2184241 (= res!2858969 (is-ElementMatch!17298 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(assert (=> d!2184241 (= (validRegex!8878 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))) e!4211927)))

(declare-fun b!7007176 () Bool)

(declare-fun e!4211930 () Bool)

(declare-fun e!4211929 () Bool)

(assert (=> b!7007176 (= e!4211930 e!4211929)))

(declare-fun res!2858972 () Bool)

(assert (=> b!7007176 (=> (not res!2858972) (not e!4211929))))

(assert (=> b!7007176 (= res!2858972 call!636345)))

(declare-fun b!7007177 () Bool)

(declare-fun res!2858971 () Bool)

(assert (=> b!7007177 (=> res!2858971 e!4211930)))

(assert (=> b!7007177 (= res!2858971 (not (is-Concat!26143 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(assert (=> b!7007177 (= e!4211931 e!4211930)))

(declare-fun b!7007178 () Bool)

(assert (=> b!7007178 (= e!4211928 e!4211926)))

(declare-fun res!2858970 () Bool)

(assert (=> b!7007178 (= res!2858970 (not (nullable!7058 (reg!17627 (ite c!1301314 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))))

(assert (=> b!7007178 (=> (not res!2858970) (not e!4211926))))

(declare-fun b!7007179 () Bool)

(assert (=> b!7007179 (= e!4211929 call!636346)))

(declare-fun b!7007180 () Bool)

(assert (=> b!7007180 (= e!4211925 call!636346)))

(assert (= (and d!2184241 (not res!2858969)) b!7007175))

(assert (= (and b!7007175 c!1301370) b!7007178))

(assert (= (and b!7007175 (not c!1301370)) b!7007172))

(assert (= (and b!7007178 res!2858970) b!7007173))

(assert (= (and b!7007172 c!1301371) b!7007174))

(assert (= (and b!7007172 (not c!1301371)) b!7007177))

(assert (= (and b!7007174 res!2858968) b!7007180))

(assert (= (and b!7007177 (not res!2858971)) b!7007176))

(assert (= (and b!7007176 res!2858972) b!7007179))

(assert (= (or b!7007180 b!7007179) bm!636341))

(assert (= (or b!7007174 b!7007176) bm!636340))

(assert (= (or b!7007173 bm!636341) bm!636339))

(declare-fun m!7704256 () Bool)

(assert (=> bm!636339 m!7704256))

(declare-fun m!7704258 () Bool)

(assert (=> bm!636340 m!7704258))

(declare-fun m!7704260 () Bool)

(assert (=> b!7007178 m!7704260))

(assert (=> bm!636300 d!2184241))

(assert (=> bs!1865526 d!2184103))

(declare-fun d!2184243 () Bool)

(declare-fun c!1301372 () Bool)

(assert (=> d!2184243 (= c!1301372 (isEmpty!39317 (tail!13364 s!7408)))))

(declare-fun e!4211932 () Bool)

(assert (=> d!2184243 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501476 (head!14161 s!7408)) (tail!13364 s!7408)) e!4211932)))

(declare-fun b!7007181 () Bool)

(assert (=> b!7007181 (= e!4211932 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501476 (head!14161 s!7408))))))

(declare-fun b!7007182 () Bool)

(assert (=> b!7007182 (= e!4211932 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501476 (head!14161 s!7408)) (head!14161 (tail!13364 s!7408))) (tail!13364 (tail!13364 s!7408))))))

(assert (= (and d!2184243 c!1301372) b!7007181))

(assert (= (and d!2184243 (not c!1301372)) b!7007182))

(assert (=> d!2184243 m!7703904))

(declare-fun m!7704262 () Bool)

(assert (=> d!2184243 m!7704262))

(assert (=> b!7007181 m!7704032))

(declare-fun m!7704264 () Bool)

(assert (=> b!7007181 m!7704264))

(assert (=> b!7007182 m!7703904))

(declare-fun m!7704266 () Bool)

(assert (=> b!7007182 m!7704266))

(assert (=> b!7007182 m!7704032))

(assert (=> b!7007182 m!7704266))

(declare-fun m!7704268 () Bool)

(assert (=> b!7007182 m!7704268))

(assert (=> b!7007182 m!7703904))

(declare-fun m!7704270 () Bool)

(assert (=> b!7007182 m!7704270))

(assert (=> b!7007182 m!7704268))

(assert (=> b!7007182 m!7704270))

(declare-fun m!7704272 () Bool)

(assert (=> b!7007182 m!7704272))

(assert (=> b!7006987 d!2184243))

(declare-fun bs!1865551 () Bool)

(declare-fun d!2184245 () Bool)

(assert (= bs!1865551 (and d!2184245 b!7006772)))

(declare-fun lambda!407393 () Int)

(assert (=> bs!1865551 (= (= (head!14161 s!7408) (h!73764 s!7408)) (= lambda!407393 lambda!407318))))

(declare-fun bs!1865552 () Bool)

(assert (= bs!1865552 (and d!2184245 d!2184105)))

(assert (=> bs!1865552 (= (= (head!14161 s!7408) (h!73764 s!7408)) (= lambda!407393 lambda!407359))))

(assert (=> d!2184245 true))

(assert (=> d!2184245 (= (derivationStepZipper!2778 lt!2501476 (head!14161 s!7408)) (flatMap!2284 lt!2501476 lambda!407393))))

(declare-fun bs!1865553 () Bool)

(assert (= bs!1865553 d!2184245))

(declare-fun m!7704274 () Bool)

(assert (=> bs!1865553 m!7704274))

(assert (=> b!7006987 d!2184245))

(declare-fun d!2184247 () Bool)

(assert (=> d!2184247 (= (head!14161 s!7408) (h!73764 s!7408))))

(assert (=> b!7006987 d!2184247))

(declare-fun d!2184249 () Bool)

(assert (=> d!2184249 (= (tail!13364 s!7408) (t!381193 s!7408))))

(assert (=> b!7006987 d!2184249))

(declare-fun d!2184251 () Bool)

(declare-fun c!1301375 () Bool)

(assert (=> d!2184251 (= c!1301375 (is-Nil!67315 lt!2501595))))

(declare-fun e!4211935 () (Set Regex!17298))

(assert (=> d!2184251 (= (content!13352 lt!2501595) e!4211935)))

(declare-fun b!7007187 () Bool)

(assert (=> b!7007187 (= e!4211935 (as set.empty (Set Regex!17298)))))

(declare-fun b!7007188 () Bool)

(assert (=> b!7007188 (= e!4211935 (set.union (set.insert (h!73763 lt!2501595) (as set.empty (Set Regex!17298))) (content!13352 (t!381192 lt!2501595))))))

(assert (= (and d!2184251 c!1301375) b!7007187))

(assert (= (and d!2184251 (not c!1301375)) b!7007188))

(declare-fun m!7704276 () Bool)

(assert (=> b!7007188 m!7704276))

(declare-fun m!7704278 () Bool)

(assert (=> b!7007188 m!7704278))

(assert (=> d!2184133 d!2184251))

(declare-fun d!2184253 () Bool)

(declare-fun c!1301376 () Bool)

(assert (=> d!2184253 (= c!1301376 (is-Nil!67315 lt!2501480))))

(declare-fun e!4211936 () (Set Regex!17298))

(assert (=> d!2184253 (= (content!13352 lt!2501480) e!4211936)))

(declare-fun b!7007189 () Bool)

(assert (=> b!7007189 (= e!4211936 (as set.empty (Set Regex!17298)))))

(declare-fun b!7007190 () Bool)

(assert (=> b!7007190 (= e!4211936 (set.union (set.insert (h!73763 lt!2501480) (as set.empty (Set Regex!17298))) (content!13352 (t!381192 lt!2501480))))))

(assert (= (and d!2184253 c!1301376) b!7007189))

(assert (= (and d!2184253 (not c!1301376)) b!7007190))

(declare-fun m!7704280 () Bool)

(assert (=> b!7007190 m!7704280))

(assert (=> b!7007190 m!7704238))

(assert (=> d!2184133 d!2184253))

(declare-fun d!2184255 () Bool)

(declare-fun c!1301377 () Bool)

(assert (=> d!2184255 (= c!1301377 (is-Nil!67315 (exprs!6794 ct2!306)))))

(declare-fun e!4211937 () (Set Regex!17298))

(assert (=> d!2184255 (= (content!13352 (exprs!6794 ct2!306)) e!4211937)))

(declare-fun b!7007191 () Bool)

(assert (=> b!7007191 (= e!4211937 (as set.empty (Set Regex!17298)))))

(declare-fun b!7007192 () Bool)

(assert (=> b!7007192 (= e!4211937 (set.union (set.insert (h!73763 (exprs!6794 ct2!306)) (as set.empty (Set Regex!17298))) (content!13352 (t!381192 (exprs!6794 ct2!306)))))))

(assert (= (and d!2184255 c!1301377) b!7007191))

(assert (= (and d!2184255 (not c!1301377)) b!7007192))

(declare-fun m!7704282 () Bool)

(assert (=> b!7007192 m!7704282))

(declare-fun m!7704284 () Bool)

(assert (=> b!7007192 m!7704284))

(assert (=> d!2184133 d!2184255))

(declare-fun bs!1865554 () Bool)

(declare-fun d!2184257 () Bool)

(assert (= bs!1865554 (and d!2184257 b!7006782)))

(declare-fun lambda!407396 () Int)

(assert (=> bs!1865554 (not (= lambda!407396 lambda!407315))))

(declare-fun bs!1865555 () Bool)

(assert (= bs!1865555 (and d!2184257 d!2184113)))

(assert (=> bs!1865555 (not (= lambda!407396 lambda!407362))))

(declare-fun bs!1865556 () Bool)

(assert (= bs!1865556 (and d!2184257 d!2184117)))

(assert (=> bs!1865556 (not (= lambda!407396 lambda!407365))))

(assert (=> d!2184257 (= (nullableZipper!2477 lt!2501462) (exists!3134 lt!2501462 lambda!407396))))

(declare-fun bs!1865557 () Bool)

(assert (= bs!1865557 d!2184257))

(declare-fun m!7704286 () Bool)

(assert (=> bs!1865557 m!7704286))

(assert (=> b!7006894 d!2184257))

(declare-fun d!2184259 () Bool)

(assert (=> d!2184259 (= (flatMap!2284 lt!2501474 lambda!407359) (choose!52615 lt!2501474 lambda!407359))))

(declare-fun bs!1865558 () Bool)

(assert (= bs!1865558 d!2184259))

(declare-fun m!7704288 () Bool)

(assert (=> bs!1865558 m!7704288))

(assert (=> d!2184105 d!2184259))

(declare-fun d!2184261 () Bool)

(declare-fun res!2858977 () Bool)

(declare-fun e!4211942 () Bool)

(assert (=> d!2184261 (=> res!2858977 e!4211942)))

(assert (=> d!2184261 (= res!2858977 (is-Nil!67317 lt!2501458))))

(assert (=> d!2184261 (= (forall!16214 lt!2501458 lambda!407362) e!4211942)))

(declare-fun b!7007197 () Bool)

(declare-fun e!4211943 () Bool)

(assert (=> b!7007197 (= e!4211942 e!4211943)))

(declare-fun res!2858978 () Bool)

(assert (=> b!7007197 (=> (not res!2858978) (not e!4211943))))

(assert (=> b!7007197 (= res!2858978 (dynLambda!27059 lambda!407362 (h!73765 lt!2501458)))))

(declare-fun b!7007198 () Bool)

(assert (=> b!7007198 (= e!4211943 (forall!16214 (t!381194 lt!2501458) lambda!407362))))

(assert (= (and d!2184261 (not res!2858977)) b!7007197))

(assert (= (and b!7007197 res!2858978) b!7007198))

(declare-fun b_lambda!264127 () Bool)

(assert (=> (not b_lambda!264127) (not b!7007197)))

(declare-fun m!7704290 () Bool)

(assert (=> b!7007197 m!7704290))

(declare-fun m!7704292 () Bool)

(assert (=> b!7007198 m!7704292))

(assert (=> d!2184113 d!2184261))

(declare-fun bs!1865559 () Bool)

(declare-fun d!2184263 () Bool)

(assert (= bs!1865559 (and d!2184263 b!7006782)))

(declare-fun lambda!407397 () Int)

(assert (=> bs!1865559 (not (= lambda!407397 lambda!407315))))

(declare-fun bs!1865560 () Bool)

(assert (= bs!1865560 (and d!2184263 d!2184113)))

(assert (=> bs!1865560 (not (= lambda!407397 lambda!407362))))

(declare-fun bs!1865561 () Bool)

(assert (= bs!1865561 (and d!2184263 d!2184117)))

(assert (=> bs!1865561 (not (= lambda!407397 lambda!407365))))

(declare-fun bs!1865562 () Bool)

(assert (= bs!1865562 (and d!2184263 d!2184257)))

(assert (=> bs!1865562 (= lambda!407397 lambda!407396)))

(assert (=> d!2184263 (= (nullableZipper!2477 lt!2501470) (exists!3134 lt!2501470 lambda!407397))))

(declare-fun bs!1865563 () Bool)

(assert (= bs!1865563 d!2184263))

(declare-fun m!7704294 () Bool)

(assert (=> bs!1865563 m!7704294))

(assert (=> b!7006890 d!2184263))

(declare-fun b!7007213 () Bool)

(declare-fun e!4211958 () Bool)

(declare-fun e!4211960 () Bool)

(assert (=> b!7007213 (= e!4211958 e!4211960)))

(declare-fun res!2858989 () Bool)

(assert (=> b!7007213 (=> (not res!2858989) (not e!4211960))))

(assert (=> b!7007213 (= res!2858989 (and (not (is-EmptyLang!17298 (h!73763 (exprs!6794 lt!2501478)))) (not (is-ElementMatch!17298 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun b!7007214 () Bool)

(declare-fun e!4211961 () Bool)

(declare-fun call!636352 () Bool)

(assert (=> b!7007214 (= e!4211961 call!636352)))

(declare-fun bm!636346 () Bool)

(declare-fun call!636351 () Bool)

(declare-fun c!1301382 () Bool)

(assert (=> bm!636346 (= call!636351 (nullable!7058 (ite c!1301382 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun b!7007216 () Bool)

(declare-fun e!4211959 () Bool)

(declare-fun e!4211956 () Bool)

(assert (=> b!7007216 (= e!4211959 e!4211956)))

(declare-fun res!2858993 () Bool)

(assert (=> b!7007216 (= res!2858993 call!636352)))

(assert (=> b!7007216 (=> (not res!2858993) (not e!4211956))))

(declare-fun b!7007217 () Bool)

(declare-fun e!4211957 () Bool)

(assert (=> b!7007217 (= e!4211960 e!4211957)))

(declare-fun res!2858991 () Bool)

(assert (=> b!7007217 (=> res!2858991 e!4211957)))

(assert (=> b!7007217 (= res!2858991 (is-Star!17298 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun b!7007218 () Bool)

(assert (=> b!7007218 (= e!4211956 call!636351)))

(declare-fun b!7007219 () Bool)

(assert (=> b!7007219 (= e!4211957 e!4211959)))

(assert (=> b!7007219 (= c!1301382 (is-Union!17298 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun bm!636347 () Bool)

(assert (=> bm!636347 (= call!636352 (nullable!7058 (ite c!1301382 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regOne!35108 (h!73763 (exprs!6794 lt!2501478))))))))

(declare-fun d!2184265 () Bool)

(declare-fun res!2858990 () Bool)

(assert (=> d!2184265 (=> res!2858990 e!4211958)))

(assert (=> d!2184265 (= res!2858990 (is-EmptyExpr!17298 (h!73763 (exprs!6794 lt!2501478))))))

(assert (=> d!2184265 (= (nullableFct!2672 (h!73763 (exprs!6794 lt!2501478))) e!4211958)))

(declare-fun b!7007215 () Bool)

(assert (=> b!7007215 (= e!4211959 e!4211961)))

(declare-fun res!2858992 () Bool)

(assert (=> b!7007215 (= res!2858992 call!636351)))

(assert (=> b!7007215 (=> res!2858992 e!4211961)))

(assert (= (and d!2184265 (not res!2858990)) b!7007213))

(assert (= (and b!7007213 res!2858989) b!7007217))

(assert (= (and b!7007217 (not res!2858991)) b!7007219))

(assert (= (and b!7007219 c!1301382) b!7007215))

(assert (= (and b!7007219 (not c!1301382)) b!7007216))

(assert (= (and b!7007215 (not res!2858992)) b!7007214))

(assert (= (and b!7007216 res!2858993) b!7007218))

(assert (= (or b!7007214 b!7007216) bm!636347))

(assert (= (or b!7007215 b!7007218) bm!636346))

(declare-fun m!7704296 () Bool)

(assert (=> bm!636346 m!7704296))

(declare-fun m!7704298 () Bool)

(assert (=> bm!636347 m!7704298))

(assert (=> d!2184147 d!2184265))

(declare-fun d!2184267 () Bool)

(assert (=> d!2184267 (= (isEmpty!39317 (t!381193 s!7408)) (is-Nil!67316 (t!381193 s!7408)))))

(assert (=> d!2184125 d!2184267))

(declare-fun d!2184269 () Bool)

(assert (=> d!2184269 (= ($colon$colon!2519 (exprs!6794 lt!2501471) (ite (or c!1301306 c!1301305) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (h!73763 (exprs!6794 lt!2501478)))) (Cons!67315 (ite (or c!1301306 c!1301305) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (h!73763 (exprs!6794 lt!2501478))) (exprs!6794 lt!2501471)))))

(assert (=> bm!636292 d!2184269))

(declare-fun d!2184271 () Bool)

(assert (=> d!2184271 (= (nullable!7058 (reg!17627 (h!73763 (exprs!6794 lt!2501478)))) (nullableFct!2672 (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))))

(declare-fun bs!1865564 () Bool)

(assert (= bs!1865564 d!2184271))

(declare-fun m!7704300 () Bool)

(assert (=> bs!1865564 m!7704300))

(assert (=> b!7006975 d!2184271))

(declare-fun d!2184273 () Bool)

(declare-fun lt!2501635 () Int)

(assert (=> d!2184273 (>= lt!2501635 0)))

(declare-fun e!4211964 () Int)

(assert (=> d!2184273 (= lt!2501635 e!4211964)))

(declare-fun c!1301385 () Bool)

(assert (=> d!2184273 (= c!1301385 (is-Nil!67315 lt!2501596))))

(assert (=> d!2184273 (= (size!40961 lt!2501596) lt!2501635)))

(declare-fun b!7007224 () Bool)

(assert (=> b!7007224 (= e!4211964 0)))

(declare-fun b!7007225 () Bool)

(assert (=> b!7007225 (= e!4211964 (+ 1 (size!40961 (t!381192 lt!2501596))))))

(assert (= (and d!2184273 c!1301385) b!7007224))

(assert (= (and d!2184273 (not c!1301385)) b!7007225))

(declare-fun m!7704302 () Bool)

(assert (=> b!7007225 m!7704302))

(assert (=> b!7006980 d!2184273))

(declare-fun d!2184275 () Bool)

(declare-fun lt!2501636 () Int)

(assert (=> d!2184275 (>= lt!2501636 0)))

(declare-fun e!4211965 () Int)

(assert (=> d!2184275 (= lt!2501636 e!4211965)))

(declare-fun c!1301386 () Bool)

(assert (=> d!2184275 (= c!1301386 (is-Nil!67315 (exprs!6794 lt!2501478)))))

(assert (=> d!2184275 (= (size!40961 (exprs!6794 lt!2501478)) lt!2501636)))

(declare-fun b!7007226 () Bool)

(assert (=> b!7007226 (= e!4211965 0)))

(declare-fun b!7007227 () Bool)

(assert (=> b!7007227 (= e!4211965 (+ 1 (size!40961 (t!381192 (exprs!6794 lt!2501478)))))))

(assert (= (and d!2184275 c!1301386) b!7007226))

(assert (= (and d!2184275 (not c!1301386)) b!7007227))

(declare-fun m!7704304 () Bool)

(assert (=> b!7007227 m!7704304))

(assert (=> b!7006980 d!2184275))

(declare-fun d!2184277 () Bool)

(declare-fun lt!2501637 () Int)

(assert (=> d!2184277 (>= lt!2501637 0)))

(declare-fun e!4211966 () Int)

(assert (=> d!2184277 (= lt!2501637 e!4211966)))

(declare-fun c!1301387 () Bool)

(assert (=> d!2184277 (= c!1301387 (is-Nil!67315 (exprs!6794 ct2!306)))))

(assert (=> d!2184277 (= (size!40961 (exprs!6794 ct2!306)) lt!2501637)))

(declare-fun b!7007228 () Bool)

(assert (=> b!7007228 (= e!4211966 0)))

(declare-fun b!7007229 () Bool)

(assert (=> b!7007229 (= e!4211966 (+ 1 (size!40961 (t!381192 (exprs!6794 ct2!306)))))))

(assert (= (and d!2184277 c!1301387) b!7007228))

(assert (= (and d!2184277 (not c!1301387)) b!7007229))

(declare-fun m!7704306 () Bool)

(assert (=> b!7007229 m!7704306))

(assert (=> b!7006980 d!2184277))

(declare-fun b!7007230 () Bool)

(declare-fun e!4211969 () Bool)

(assert (=> b!7007230 (= e!4211969 (nullable!7058 (h!73763 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471)))))))))

(declare-fun b!7007231 () Bool)

(declare-fun e!4211968 () (Set Context!12588))

(assert (=> b!7007231 (= e!4211968 (as set.empty (Set Context!12588)))))

(declare-fun b!7007232 () Bool)

(declare-fun e!4211967 () (Set Context!12588))

(assert (=> b!7007232 (= e!4211967 e!4211968)))

(declare-fun c!1301389 () Bool)

(assert (=> b!7007232 (= c!1301389 (is-Cons!67315 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471))))))))

(declare-fun d!2184279 () Bool)

(declare-fun c!1301388 () Bool)

(assert (=> d!2184279 (= c!1301388 e!4211969)))

(declare-fun res!2858994 () Bool)

(assert (=> d!2184279 (=> (not res!2858994) (not e!4211969))))

(assert (=> d!2184279 (= res!2858994 (is-Cons!67315 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471))))))))

(assert (=> d!2184279 (= (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (h!73764 s!7408)) e!4211967)))

(declare-fun b!7007233 () Bool)

(declare-fun call!636353 () (Set Context!12588))

(assert (=> b!7007233 (= e!4211967 (set.union call!636353 (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471)))))) (h!73764 s!7408))))))

(declare-fun bm!636348 () Bool)

(assert (=> bm!636348 (= call!636353 (derivationStepZipperDown!2016 (h!73763 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471))))) (Context!12589 (t!381192 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471)))))) (h!73764 s!7408)))))

(declare-fun b!7007234 () Bool)

(assert (=> b!7007234 (= e!4211968 call!636353)))

(assert (= (and d!2184279 res!2858994) b!7007230))

(assert (= (and d!2184279 c!1301388) b!7007233))

(assert (= (and d!2184279 (not c!1301388)) b!7007232))

(assert (= (and b!7007232 c!1301389) b!7007234))

(assert (= (and b!7007232 (not c!1301389)) b!7007231))

(assert (= (or b!7007233 b!7007234) bm!636348))

(declare-fun m!7704308 () Bool)

(assert (=> b!7007230 m!7704308))

(declare-fun m!7704310 () Bool)

(assert (=> b!7007233 m!7704310))

(declare-fun m!7704312 () Bool)

(assert (=> bm!636348 m!7704312))

(assert (=> b!7006916 d!2184279))

(declare-fun bs!1865565 () Bool)

(declare-fun d!2184281 () Bool)

(assert (= bs!1865565 (and d!2184281 d!2184257)))

(declare-fun lambda!407398 () Int)

(assert (=> bs!1865565 (= lambda!407398 lambda!407396)))

(declare-fun bs!1865566 () Bool)

(assert (= bs!1865566 (and d!2184281 d!2184113)))

(assert (=> bs!1865566 (not (= lambda!407398 lambda!407362))))

(declare-fun bs!1865567 () Bool)

(assert (= bs!1865567 (and d!2184281 d!2184263)))

(assert (=> bs!1865567 (= lambda!407398 lambda!407397)))

(declare-fun bs!1865568 () Bool)

(assert (= bs!1865568 (and d!2184281 b!7006782)))

(assert (=> bs!1865568 (not (= lambda!407398 lambda!407315))))

(declare-fun bs!1865569 () Bool)

(assert (= bs!1865569 (and d!2184281 d!2184117)))

(assert (=> bs!1865569 (not (= lambda!407398 lambda!407365))))

(assert (=> d!2184281 (= (nullableZipper!2477 lt!2501460) (exists!3134 lt!2501460 lambda!407398))))

(declare-fun bs!1865570 () Bool)

(assert (= bs!1865570 d!2184281))

(declare-fun m!7704314 () Bool)

(assert (=> bs!1865570 m!7704314))

(assert (=> b!7006880 d!2184281))

(declare-fun d!2184283 () Bool)

(declare-fun choose!52629 ((Set Context!12588) Int) (Set Context!12588))

(assert (=> d!2184283 (= (map!15591 z1!570 lambda!407370) (choose!52629 z1!570 lambda!407370))))

(declare-fun bs!1865571 () Bool)

(assert (= bs!1865571 d!2184283))

(declare-fun m!7704316 () Bool)

(assert (=> bs!1865571 m!7704316))

(assert (=> d!2184153 d!2184283))

(declare-fun d!2184285 () Bool)

(assert (=> d!2184285 (= (nullable!7058 (h!73763 (exprs!6794 lt!2501465))) (nullableFct!2672 (h!73763 (exprs!6794 lt!2501465))))))

(declare-fun bs!1865572 () Bool)

(assert (= bs!1865572 d!2184285))

(declare-fun m!7704318 () Bool)

(assert (=> bs!1865572 m!7704318))

(assert (=> b!7006869 d!2184285))

(declare-fun d!2184287 () Bool)

(declare-fun c!1301390 () Bool)

(assert (=> d!2184287 (= c!1301390 (isEmpty!39317 (tail!13364 (t!381193 s!7408))))))

(declare-fun e!4211970 () Bool)

(assert (=> d!2184287 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501475 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))) e!4211970)))

(declare-fun b!7007235 () Bool)

(assert (=> b!7007235 (= e!4211970 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501475 (head!14161 (t!381193 s!7408)))))))

(declare-fun b!7007236 () Bool)

(assert (=> b!7007236 (= e!4211970 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501475 (head!14161 (t!381193 s!7408))) (head!14161 (tail!13364 (t!381193 s!7408)))) (tail!13364 (tail!13364 (t!381193 s!7408)))))))

(assert (= (and d!2184287 c!1301390) b!7007235))

(assert (= (and d!2184287 (not c!1301390)) b!7007236))

(assert (=> d!2184287 m!7703940))

(declare-fun m!7704320 () Bool)

(assert (=> d!2184287 m!7704320))

(assert (=> b!7007235 m!7703952))

(declare-fun m!7704322 () Bool)

(assert (=> b!7007235 m!7704322))

(assert (=> b!7007236 m!7703940))

(declare-fun m!7704324 () Bool)

(assert (=> b!7007236 m!7704324))

(assert (=> b!7007236 m!7703952))

(assert (=> b!7007236 m!7704324))

(declare-fun m!7704326 () Bool)

(assert (=> b!7007236 m!7704326))

(assert (=> b!7007236 m!7703940))

(declare-fun m!7704328 () Bool)

(assert (=> b!7007236 m!7704328))

(assert (=> b!7007236 m!7704326))

(assert (=> b!7007236 m!7704328))

(declare-fun m!7704330 () Bool)

(assert (=> b!7007236 m!7704330))

(assert (=> b!7006893 d!2184287))

(declare-fun bs!1865573 () Bool)

(declare-fun d!2184289 () Bool)

(assert (= bs!1865573 (and d!2184289 b!7006772)))

(declare-fun lambda!407399 () Int)

(assert (=> bs!1865573 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407399 lambda!407318))))

(declare-fun bs!1865574 () Bool)

(assert (= bs!1865574 (and d!2184289 d!2184105)))

(assert (=> bs!1865574 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407399 lambda!407359))))

(declare-fun bs!1865575 () Bool)

(assert (= bs!1865575 (and d!2184289 d!2184245)))

(assert (=> bs!1865575 (= (= (head!14161 (t!381193 s!7408)) (head!14161 s!7408)) (= lambda!407399 lambda!407393))))

(assert (=> d!2184289 true))

(assert (=> d!2184289 (= (derivationStepZipper!2778 lt!2501475 (head!14161 (t!381193 s!7408))) (flatMap!2284 lt!2501475 lambda!407399))))

(declare-fun bs!1865576 () Bool)

(assert (= bs!1865576 d!2184289))

(declare-fun m!7704332 () Bool)

(assert (=> bs!1865576 m!7704332))

(assert (=> b!7006893 d!2184289))

(declare-fun d!2184291 () Bool)

(assert (=> d!2184291 (= (head!14161 (t!381193 s!7408)) (h!73764 (t!381193 s!7408)))))

(assert (=> b!7006893 d!2184291))

(declare-fun d!2184293 () Bool)

(assert (=> d!2184293 (= (tail!13364 (t!381193 s!7408)) (t!381193 (t!381193 s!7408)))))

(assert (=> b!7006893 d!2184293))

(declare-fun b!7007237 () Bool)

(declare-fun e!4211972 () (Set Context!12588))

(assert (=> b!7007237 (= e!4211972 (as set.empty (Set Context!12588)))))

(declare-fun b!7007238 () Bool)

(declare-fun c!1301393 () Bool)

(declare-fun e!4211974 () Bool)

(assert (=> b!7007238 (= c!1301393 e!4211974)))

(declare-fun res!2858995 () Bool)

(assert (=> b!7007238 (=> (not res!2858995) (not e!4211974))))

(assert (=> b!7007238 (= res!2858995 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501465))))))

(declare-fun e!4211973 () (Set Context!12588))

(declare-fun e!4211976 () (Set Context!12588))

(assert (=> b!7007238 (= e!4211973 e!4211976)))

(declare-fun b!7007239 () Bool)

(declare-fun e!4211971 () (Set Context!12588))

(declare-fun call!636356 () (Set Context!12588))

(assert (=> b!7007239 (= e!4211971 call!636356)))

(declare-fun b!7007240 () Bool)

(declare-fun call!636358 () (Set Context!12588))

(declare-fun call!636357 () (Set Context!12588))

(assert (=> b!7007240 (= e!4211973 (set.union call!636358 call!636357))))

(declare-fun bm!636349 () Bool)

(declare-fun call!636354 () List!67439)

(declare-fun call!636355 () List!67439)

(assert (=> bm!636349 (= call!636354 call!636355)))

(declare-fun b!7007241 () Bool)

(assert (=> b!7007241 (= e!4211974 (nullable!7058 (regOne!35108 (h!73763 (exprs!6794 lt!2501465)))))))

(declare-fun b!7007242 () Bool)

(declare-fun e!4211975 () (Set Context!12588))

(assert (=> b!7007242 (= e!4211975 (set.insert (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (as set.empty (Set Context!12588))))))

(declare-fun bm!636350 () Bool)

(declare-fun call!636359 () (Set Context!12588))

(assert (=> bm!636350 (= call!636359 call!636358)))

(declare-fun bm!636351 () Bool)

(declare-fun c!1301395 () Bool)

(assert (=> bm!636351 (= call!636357 (derivationStepZipperDown!2016 (ite c!1301395 (regTwo!35109 (h!73763 (exprs!6794 lt!2501465))) (regOne!35108 (h!73763 (exprs!6794 lt!2501465)))) (ite c!1301395 (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (Context!12589 call!636355)) (h!73764 s!7408)))))

(declare-fun b!7007243 () Bool)

(assert (=> b!7007243 (= e!4211975 e!4211973)))

(assert (=> b!7007243 (= c!1301395 (is-Union!17298 (h!73763 (exprs!6794 lt!2501465))))))

(declare-fun c!1301392 () Bool)

(declare-fun bm!636352 () Bool)

(assert (=> bm!636352 (= call!636358 (derivationStepZipperDown!2016 (ite c!1301395 (regOne!35109 (h!73763 (exprs!6794 lt!2501465))) (ite c!1301393 (regTwo!35108 (h!73763 (exprs!6794 lt!2501465))) (ite c!1301392 (regOne!35108 (h!73763 (exprs!6794 lt!2501465))) (reg!17627 (h!73763 (exprs!6794 lt!2501465)))))) (ite (or c!1301395 c!1301393) (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (Context!12589 call!636354)) (h!73764 s!7408)))))

(declare-fun b!7007245 () Bool)

(declare-fun c!1301394 () Bool)

(assert (=> b!7007245 (= c!1301394 (is-Star!17298 (h!73763 (exprs!6794 lt!2501465))))))

(assert (=> b!7007245 (= e!4211971 e!4211972)))

(declare-fun bm!636353 () Bool)

(assert (=> bm!636353 (= call!636356 call!636359)))

(declare-fun bm!636354 () Bool)

(assert (=> bm!636354 (= call!636355 ($colon$colon!2519 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465)))) (ite (or c!1301393 c!1301392) (regTwo!35108 (h!73763 (exprs!6794 lt!2501465))) (h!73763 (exprs!6794 lt!2501465)))))))

(declare-fun b!7007246 () Bool)

(assert (=> b!7007246 (= e!4211972 call!636356)))

(declare-fun b!7007247 () Bool)

(assert (=> b!7007247 (= e!4211976 (set.union call!636357 call!636359))))

(declare-fun d!2184295 () Bool)

(declare-fun c!1301391 () Bool)

(assert (=> d!2184295 (= c!1301391 (and (is-ElementMatch!17298 (h!73763 (exprs!6794 lt!2501465))) (= (c!1301262 (h!73763 (exprs!6794 lt!2501465))) (h!73764 s!7408))))))

(assert (=> d!2184295 (= (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501465)) (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (h!73764 s!7408)) e!4211975)))

(declare-fun b!7007244 () Bool)

(assert (=> b!7007244 (= e!4211976 e!4211971)))

(assert (=> b!7007244 (= c!1301392 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501465))))))

(assert (= (and d!2184295 c!1301391) b!7007242))

(assert (= (and d!2184295 (not c!1301391)) b!7007243))

(assert (= (and b!7007243 c!1301395) b!7007240))

(assert (= (and b!7007243 (not c!1301395)) b!7007238))

(assert (= (and b!7007238 res!2858995) b!7007241))

(assert (= (and b!7007238 c!1301393) b!7007247))

(assert (= (and b!7007238 (not c!1301393)) b!7007244))

(assert (= (and b!7007244 c!1301392) b!7007239))

(assert (= (and b!7007244 (not c!1301392)) b!7007245))

(assert (= (and b!7007245 c!1301394) b!7007246))

(assert (= (and b!7007245 (not c!1301394)) b!7007237))

(assert (= (or b!7007239 b!7007246) bm!636349))

(assert (= (or b!7007239 b!7007246) bm!636353))

(assert (= (or b!7007247 bm!636353) bm!636350))

(assert (= (or b!7007247 bm!636349) bm!636354))

(assert (= (or b!7007240 bm!636350) bm!636352))

(assert (= (or b!7007240 b!7007247) bm!636351))

(declare-fun m!7704334 () Bool)

(assert (=> bm!636352 m!7704334))

(declare-fun m!7704336 () Bool)

(assert (=> b!7007242 m!7704336))

(declare-fun m!7704338 () Bool)

(assert (=> bm!636351 m!7704338))

(declare-fun m!7704340 () Bool)

(assert (=> bm!636354 m!7704340))

(declare-fun m!7704342 () Bool)

(assert (=> b!7007241 m!7704342))

(assert (=> bm!636273 d!2184295))

(declare-fun bs!1865577 () Bool)

(declare-fun d!2184297 () Bool)

(assert (= bs!1865577 (and d!2184297 d!2184281)))

(declare-fun lambda!407400 () Int)

(assert (=> bs!1865577 (not (= lambda!407400 lambda!407398))))

(declare-fun bs!1865578 () Bool)

(assert (= bs!1865578 (and d!2184297 d!2184257)))

(assert (=> bs!1865578 (not (= lambda!407400 lambda!407396))))

(declare-fun bs!1865579 () Bool)

(assert (= bs!1865579 (and d!2184297 d!2184113)))

(assert (=> bs!1865579 (= (= lambda!407365 lambda!407315) (= lambda!407400 lambda!407362))))

(declare-fun bs!1865580 () Bool)

(assert (= bs!1865580 (and d!2184297 d!2184263)))

(assert (=> bs!1865580 (not (= lambda!407400 lambda!407397))))

(declare-fun bs!1865581 () Bool)

(assert (= bs!1865581 (and d!2184297 b!7006782)))

(assert (=> bs!1865581 (not (= lambda!407400 lambda!407315))))

(declare-fun bs!1865582 () Bool)

(assert (= bs!1865582 (and d!2184297 d!2184117)))

(assert (=> bs!1865582 (not (= lambda!407400 lambda!407365))))

(assert (=> d!2184297 true))

(assert (=> d!2184297 (< (dynLambda!27058 order!28007 lambda!407365) (dynLambda!27058 order!28007 lambda!407400))))

(assert (=> d!2184297 (= (exists!3132 lt!2501458 lambda!407365) (not (forall!16214 lt!2501458 lambda!407400)))))

(declare-fun bs!1865583 () Bool)

(assert (= bs!1865583 d!2184297))

(declare-fun m!7704344 () Bool)

(assert (=> bs!1865583 m!7704344))

(assert (=> d!2184117 d!2184297))

(declare-fun bs!1865584 () Bool)

(declare-fun d!2184299 () Bool)

(assert (= bs!1865584 (and d!2184299 d!2184257)))

(declare-fun lambda!407403 () Int)

(assert (=> bs!1865584 (not (= lambda!407403 lambda!407396))))

(declare-fun bs!1865585 () Bool)

(assert (= bs!1865585 (and d!2184299 d!2184113)))

(assert (=> bs!1865585 (not (= lambda!407403 lambda!407362))))

(declare-fun bs!1865586 () Bool)

(assert (= bs!1865586 (and d!2184299 d!2184263)))

(assert (=> bs!1865586 (not (= lambda!407403 lambda!407397))))

(declare-fun bs!1865587 () Bool)

(assert (= bs!1865587 (and d!2184299 b!7006782)))

(assert (=> bs!1865587 (= lambda!407403 lambda!407315)))

(declare-fun bs!1865588 () Bool)

(assert (= bs!1865588 (and d!2184299 d!2184117)))

(assert (=> bs!1865588 (= lambda!407403 lambda!407365)))

(declare-fun bs!1865589 () Bool)

(assert (= bs!1865589 (and d!2184299 d!2184297)))

(assert (=> bs!1865589 (not (= lambda!407403 lambda!407400))))

(declare-fun bs!1865590 () Bool)

(assert (= bs!1865590 (and d!2184299 d!2184281)))

(assert (=> bs!1865590 (not (= lambda!407403 lambda!407398))))

(assert (=> d!2184299 true))

(assert (=> d!2184299 (exists!3132 lt!2501458 lambda!407403)))

(assert (=> d!2184299 true))

(declare-fun _$60!1075 () Unit!161272)

(assert (=> d!2184299 (= (choose!52618 lt!2501458 s!7408) _$60!1075)))

(declare-fun bs!1865591 () Bool)

(assert (= bs!1865591 d!2184299))

(declare-fun m!7704346 () Bool)

(assert (=> bs!1865591 m!7704346))

(assert (=> d!2184117 d!2184299))

(declare-fun d!2184301 () Bool)

(declare-fun c!1301398 () Bool)

(assert (=> d!2184301 (= c!1301398 (isEmpty!39317 s!7408))))

(declare-fun e!4211977 () Bool)

(assert (=> d!2184301 (= (matchZipper!2838 (content!13351 lt!2501458) s!7408) e!4211977)))

(declare-fun b!7007248 () Bool)

(assert (=> b!7007248 (= e!4211977 (nullableZipper!2477 (content!13351 lt!2501458)))))

(declare-fun b!7007249 () Bool)

(assert (=> b!7007249 (= e!4211977 (matchZipper!2838 (derivationStepZipper!2778 (content!13351 lt!2501458) (head!14161 s!7408)) (tail!13364 s!7408)))))

(assert (= (and d!2184301 c!1301398) b!7007248))

(assert (= (and d!2184301 (not c!1301398)) b!7007249))

(assert (=> d!2184301 m!7703896))

(assert (=> b!7007248 m!7703922))

(declare-fun m!7704348 () Bool)

(assert (=> b!7007248 m!7704348))

(assert (=> b!7007249 m!7703900))

(assert (=> b!7007249 m!7703922))

(assert (=> b!7007249 m!7703900))

(declare-fun m!7704350 () Bool)

(assert (=> b!7007249 m!7704350))

(assert (=> b!7007249 m!7703904))

(assert (=> b!7007249 m!7704350))

(assert (=> b!7007249 m!7703904))

(declare-fun m!7704352 () Bool)

(assert (=> b!7007249 m!7704352))

(assert (=> d!2184117 d!2184301))

(declare-fun d!2184303 () Bool)

(declare-fun c!1301401 () Bool)

(assert (=> d!2184303 (= c!1301401 (is-Nil!67317 lt!2501458))))

(declare-fun e!4211980 () (Set Context!12588))

(assert (=> d!2184303 (= (content!13351 lt!2501458) e!4211980)))

(declare-fun b!7007254 () Bool)

(assert (=> b!7007254 (= e!4211980 (as set.empty (Set Context!12588)))))

(declare-fun b!7007255 () Bool)

(assert (=> b!7007255 (= e!4211980 (set.union (set.insert (h!73765 lt!2501458) (as set.empty (Set Context!12588))) (content!13351 (t!381194 lt!2501458))))))

(assert (= (and d!2184303 c!1301401) b!7007254))

(assert (= (and d!2184303 (not c!1301401)) b!7007255))

(declare-fun m!7704354 () Bool)

(assert (=> b!7007255 m!7704354))

(declare-fun m!7704356 () Bool)

(assert (=> b!7007255 m!7704356))

(assert (=> d!2184117 d!2184303))

(declare-fun bs!1865592 () Bool)

(declare-fun d!2184305 () Bool)

(assert (= bs!1865592 (and d!2184305 d!2184257)))

(declare-fun lambda!407404 () Int)

(assert (=> bs!1865592 (= lambda!407404 lambda!407396)))

(declare-fun bs!1865593 () Bool)

(assert (= bs!1865593 (and d!2184305 d!2184113)))

(assert (=> bs!1865593 (not (= lambda!407404 lambda!407362))))

(declare-fun bs!1865594 () Bool)

(assert (= bs!1865594 (and d!2184305 d!2184299)))

(assert (=> bs!1865594 (not (= lambda!407404 lambda!407403))))

(declare-fun bs!1865595 () Bool)

(assert (= bs!1865595 (and d!2184305 d!2184263)))

(assert (=> bs!1865595 (= lambda!407404 lambda!407397)))

(declare-fun bs!1865596 () Bool)

(assert (= bs!1865596 (and d!2184305 b!7006782)))

(assert (=> bs!1865596 (not (= lambda!407404 lambda!407315))))

(declare-fun bs!1865597 () Bool)

(assert (= bs!1865597 (and d!2184305 d!2184117)))

(assert (=> bs!1865597 (not (= lambda!407404 lambda!407365))))

(declare-fun bs!1865598 () Bool)

(assert (= bs!1865598 (and d!2184305 d!2184297)))

(assert (=> bs!1865598 (not (= lambda!407404 lambda!407400))))

(declare-fun bs!1865599 () Bool)

(assert (= bs!1865599 (and d!2184305 d!2184281)))

(assert (=> bs!1865599 (= lambda!407404 lambda!407398)))

(assert (=> d!2184305 (= (nullableZipper!2477 lt!2501469) (exists!3134 lt!2501469 lambda!407404))))

(declare-fun bs!1865600 () Bool)

(assert (= bs!1865600 d!2184305))

(declare-fun m!7704358 () Bool)

(assert (=> bs!1865600 m!7704358))

(assert (=> b!7006899 d!2184305))

(declare-fun d!2184307 () Bool)

(declare-fun res!2858996 () Bool)

(declare-fun e!4211981 () Bool)

(assert (=> d!2184307 (=> res!2858996 e!4211981)))

(assert (=> d!2184307 (= res!2858996 (is-Nil!67315 (exprs!6794 ct2!306)))))

(assert (=> d!2184307 (= (forall!16213 (exprs!6794 ct2!306) lambda!407373) e!4211981)))

(declare-fun b!7007256 () Bool)

(declare-fun e!4211982 () Bool)

(assert (=> b!7007256 (= e!4211981 e!4211982)))

(declare-fun res!2858997 () Bool)

(assert (=> b!7007256 (=> (not res!2858997) (not e!4211982))))

(assert (=> b!7007256 (= res!2858997 (dynLambda!27065 lambda!407373 (h!73763 (exprs!6794 ct2!306))))))

(declare-fun b!7007257 () Bool)

(assert (=> b!7007257 (= e!4211982 (forall!16213 (t!381192 (exprs!6794 ct2!306)) lambda!407373))))

(assert (= (and d!2184307 (not res!2858996)) b!7007256))

(assert (= (and b!7007256 res!2858997) b!7007257))

(declare-fun b_lambda!264129 () Bool)

(assert (=> (not b_lambda!264129) (not b!7007256)))

(declare-fun m!7704360 () Bool)

(assert (=> b!7007256 m!7704360))

(declare-fun m!7704362 () Bool)

(assert (=> b!7007257 m!7704362))

(assert (=> d!2184155 d!2184307))

(declare-fun d!2184309 () Bool)

(declare-fun c!1301402 () Bool)

(assert (=> d!2184309 (= c!1301402 (is-Nil!67317 lt!2501588))))

(declare-fun e!4211983 () (Set Context!12588))

(assert (=> d!2184309 (= (content!13351 lt!2501588) e!4211983)))

(declare-fun b!7007258 () Bool)

(assert (=> b!7007258 (= e!4211983 (as set.empty (Set Context!12588)))))

(declare-fun b!7007259 () Bool)

(assert (=> b!7007259 (= e!4211983 (set.union (set.insert (h!73765 lt!2501588) (as set.empty (Set Context!12588))) (content!13351 (t!381194 lt!2501588))))))

(assert (= (and d!2184309 c!1301402) b!7007258))

(assert (= (and d!2184309 (not c!1301402)) b!7007259))

(declare-fun m!7704364 () Bool)

(assert (=> b!7007259 m!7704364))

(declare-fun m!7704366 () Bool)

(assert (=> b!7007259 m!7704366))

(assert (=> b!7006889 d!2184309))

(declare-fun d!2184311 () Bool)

(declare-fun c!1301403 () Bool)

(assert (=> d!2184311 (= c!1301403 (is-Nil!67315 lt!2501596))))

(declare-fun e!4211984 () (Set Regex!17298))

(assert (=> d!2184311 (= (content!13352 lt!2501596) e!4211984)))

(declare-fun b!7007260 () Bool)

(assert (=> b!7007260 (= e!4211984 (as set.empty (Set Regex!17298)))))

(declare-fun b!7007261 () Bool)

(assert (=> b!7007261 (= e!4211984 (set.union (set.insert (h!73763 lt!2501596) (as set.empty (Set Regex!17298))) (content!13352 (t!381192 lt!2501596))))))

(assert (= (and d!2184311 c!1301403) b!7007260))

(assert (= (and d!2184311 (not c!1301403)) b!7007261))

(declare-fun m!7704368 () Bool)

(assert (=> b!7007261 m!7704368))

(declare-fun m!7704370 () Bool)

(assert (=> b!7007261 m!7704370))

(assert (=> d!2184143 d!2184311))

(declare-fun d!2184313 () Bool)

(declare-fun c!1301404 () Bool)

(assert (=> d!2184313 (= c!1301404 (is-Nil!67315 (exprs!6794 lt!2501478)))))

(declare-fun e!4211985 () (Set Regex!17298))

(assert (=> d!2184313 (= (content!13352 (exprs!6794 lt!2501478)) e!4211985)))

(declare-fun b!7007262 () Bool)

(assert (=> b!7007262 (= e!4211985 (as set.empty (Set Regex!17298)))))

(declare-fun b!7007263 () Bool)

(assert (=> b!7007263 (= e!4211985 (set.union (set.insert (h!73763 (exprs!6794 lt!2501478)) (as set.empty (Set Regex!17298))) (content!13352 (t!381192 (exprs!6794 lt!2501478)))))))

(assert (= (and d!2184313 c!1301404) b!7007262))

(assert (= (and d!2184313 (not c!1301404)) b!7007263))

(declare-fun m!7704372 () Bool)

(assert (=> b!7007263 m!7704372))

(declare-fun m!7704374 () Bool)

(assert (=> b!7007263 m!7704374))

(assert (=> d!2184143 d!2184313))

(assert (=> d!2184143 d!2184255))

(assert (=> d!2184111 d!2184237))

(declare-fun d!2184315 () Bool)

(declare-fun lt!2501638 () Int)

(assert (=> d!2184315 (>= lt!2501638 0)))

(declare-fun e!4211986 () Int)

(assert (=> d!2184315 (= lt!2501638 e!4211986)))

(declare-fun c!1301405 () Bool)

(assert (=> d!2184315 (= c!1301405 (is-Nil!67315 lt!2501595))))

(assert (=> d!2184315 (= (size!40961 lt!2501595) lt!2501638)))

(declare-fun b!7007264 () Bool)

(assert (=> b!7007264 (= e!4211986 0)))

(declare-fun b!7007265 () Bool)

(assert (=> b!7007265 (= e!4211986 (+ 1 (size!40961 (t!381192 lt!2501595))))))

(assert (= (and d!2184315 c!1301405) b!7007264))

(assert (= (and d!2184315 (not c!1301405)) b!7007265))

(declare-fun m!7704376 () Bool)

(assert (=> b!7007265 m!7704376))

(assert (=> b!7006911 d!2184315))

(declare-fun d!2184317 () Bool)

(declare-fun lt!2501639 () Int)

(assert (=> d!2184317 (>= lt!2501639 0)))

(declare-fun e!4211987 () Int)

(assert (=> d!2184317 (= lt!2501639 e!4211987)))

(declare-fun c!1301406 () Bool)

(assert (=> d!2184317 (= c!1301406 (is-Nil!67315 lt!2501480))))

(assert (=> d!2184317 (= (size!40961 lt!2501480) lt!2501639)))

(declare-fun b!7007266 () Bool)

(assert (=> b!7007266 (= e!4211987 0)))

(declare-fun b!7007267 () Bool)

(assert (=> b!7007267 (= e!4211987 (+ 1 (size!40961 (t!381192 lt!2501480))))))

(assert (= (and d!2184317 c!1301406) b!7007266))

(assert (= (and d!2184317 (not c!1301406)) b!7007267))

(assert (=> b!7007267 m!7704242))

(assert (=> b!7006911 d!2184317))

(assert (=> b!7006911 d!2184277))

(declare-fun bm!636355 () Bool)

(declare-fun call!636360 () Bool)

(declare-fun c!1301408 () Bool)

(declare-fun c!1301407 () Bool)

(assert (=> bm!636355 (= call!636360 (validRegex!8878 (ite c!1301407 (reg!17627 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))) (ite c!1301408 (regTwo!35109 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))) (regTwo!35108 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))))))))))))

(declare-fun b!7007268 () Bool)

(declare-fun e!4211991 () Bool)

(declare-fun e!4211994 () Bool)

(assert (=> b!7007268 (= e!4211991 e!4211994)))

(assert (=> b!7007268 (= c!1301408 (is-Union!17298 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(declare-fun b!7007269 () Bool)

(declare-fun e!4211989 () Bool)

(assert (=> b!7007269 (= e!4211989 call!636360)))

(declare-fun call!636361 () Bool)

(declare-fun bm!636356 () Bool)

(assert (=> bm!636356 (= call!636361 (validRegex!8878 (ite c!1301408 (regOne!35109 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))) (regOne!35108 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))))

(declare-fun b!7007270 () Bool)

(declare-fun res!2858998 () Bool)

(declare-fun e!4211988 () Bool)

(assert (=> b!7007270 (=> (not res!2858998) (not e!4211988))))

(assert (=> b!7007270 (= res!2858998 call!636361)))

(assert (=> b!7007270 (= e!4211994 e!4211988)))

(declare-fun b!7007271 () Bool)

(declare-fun e!4211990 () Bool)

(assert (=> b!7007271 (= e!4211990 e!4211991)))

(assert (=> b!7007271 (= c!1301407 (is-Star!17298 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(declare-fun bm!636357 () Bool)

(declare-fun call!636362 () Bool)

(assert (=> bm!636357 (= call!636362 call!636360)))

(declare-fun d!2184319 () Bool)

(declare-fun res!2858999 () Bool)

(assert (=> d!2184319 (=> res!2858999 e!4211990)))

(assert (=> d!2184319 (= res!2858999 (is-ElementMatch!17298 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))

(assert (=> d!2184319 (= (validRegex!8878 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))) e!4211990)))

(declare-fun b!7007272 () Bool)

(declare-fun e!4211993 () Bool)

(declare-fun e!4211992 () Bool)

(assert (=> b!7007272 (= e!4211993 e!4211992)))

(declare-fun res!2859002 () Bool)

(assert (=> b!7007272 (=> (not res!2859002) (not e!4211992))))

(assert (=> b!7007272 (= res!2859002 call!636361)))

(declare-fun b!7007273 () Bool)

(declare-fun res!2859001 () Bool)

(assert (=> b!7007273 (=> res!2859001 e!4211993)))

(assert (=> b!7007273 (= res!2859001 (not (is-Concat!26143 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))))))))))

(assert (=> b!7007273 (= e!4211994 e!4211993)))

(declare-fun b!7007274 () Bool)

(assert (=> b!7007274 (= e!4211991 e!4211989)))

(declare-fun res!2859000 () Bool)

(assert (=> b!7007274 (= res!2859000 (not (nullable!7058 (reg!17627 (ite c!1301313 (reg!17627 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301314 (regTwo!35109 (h!73763 (exprs!6794 lt!2501478))) (regTwo!35108 (h!73763 (exprs!6794 lt!2501478)))))))))))

(assert (=> b!7007274 (=> (not res!2859000) (not e!4211989))))

(declare-fun b!7007275 () Bool)

(assert (=> b!7007275 (= e!4211992 call!636362)))

(declare-fun b!7007276 () Bool)

(assert (=> b!7007276 (= e!4211988 call!636362)))

(assert (= (and d!2184319 (not res!2858999)) b!7007271))

(assert (= (and b!7007271 c!1301407) b!7007274))

(assert (= (and b!7007271 (not c!1301407)) b!7007268))

(assert (= (and b!7007274 res!2859000) b!7007269))

(assert (= (and b!7007268 c!1301408) b!7007270))

(assert (= (and b!7007268 (not c!1301408)) b!7007273))

(assert (= (and b!7007270 res!2858998) b!7007276))

(assert (= (and b!7007273 (not res!2859001)) b!7007272))

(assert (= (and b!7007272 res!2859002) b!7007275))

(assert (= (or b!7007276 b!7007275) bm!636357))

(assert (= (or b!7007270 b!7007272) bm!636356))

(assert (= (or b!7007269 bm!636357) bm!636355))

(declare-fun m!7704378 () Bool)

(assert (=> bm!636355 m!7704378))

(declare-fun m!7704380 () Bool)

(assert (=> bm!636356 m!7704380))

(declare-fun m!7704382 () Bool)

(assert (=> b!7007274 m!7704382))

(assert (=> bm!636299 d!2184319))

(assert (=> d!2184109 d!2184101))

(declare-fun d!2184321 () Bool)

(assert (=> d!2184321 (= (flatMap!2284 lt!2501474 lambda!407318) (dynLambda!27057 lambda!407318 lt!2501465))))

(assert (=> d!2184321 true))

(declare-fun _$13!4412 () Unit!161272)

(assert (=> d!2184321 (= (choose!52617 lt!2501474 lt!2501465 lambda!407318) _$13!4412)))

(declare-fun b_lambda!264131 () Bool)

(assert (=> (not b_lambda!264131) (not d!2184321)))

(declare-fun bs!1865601 () Bool)

(assert (= bs!1865601 d!2184321))

(assert (=> bs!1865601 m!7703794))

(assert (=> bs!1865601 m!7703892))

(assert (=> d!2184109 d!2184321))

(declare-fun d!2184323 () Bool)

(declare-fun res!2859007 () Bool)

(declare-fun e!4211999 () Bool)

(assert (=> d!2184323 (=> res!2859007 e!4211999)))

(assert (=> d!2184323 (= res!2859007 (is-Nil!67317 lt!2501588))))

(assert (=> d!2184323 (= (noDuplicate!2556 lt!2501588) e!4211999)))

(declare-fun b!7007281 () Bool)

(declare-fun e!4212000 () Bool)

(assert (=> b!7007281 (= e!4211999 e!4212000)))

(declare-fun res!2859008 () Bool)

(assert (=> b!7007281 (=> (not res!2859008) (not e!4212000))))

(declare-fun contains!20431 (List!67441 Context!12588) Bool)

(assert (=> b!7007281 (= res!2859008 (not (contains!20431 (t!381194 lt!2501588) (h!73765 lt!2501588))))))

(declare-fun b!7007282 () Bool)

(assert (=> b!7007282 (= e!4212000 (noDuplicate!2556 (t!381194 lt!2501588)))))

(assert (= (and d!2184323 (not res!2859007)) b!7007281))

(assert (= (and b!7007281 res!2859008) b!7007282))

(declare-fun m!7704384 () Bool)

(assert (=> b!7007281 m!7704384))

(declare-fun m!7704386 () Bool)

(assert (=> b!7007282 m!7704386))

(assert (=> d!2184119 d!2184323))

(declare-fun d!2184325 () Bool)

(declare-fun e!4212009 () Bool)

(assert (=> d!2184325 e!4212009))

(declare-fun res!2859014 () Bool)

(assert (=> d!2184325 (=> (not res!2859014) (not e!4212009))))

(declare-fun res!2859013 () List!67441)

(assert (=> d!2184325 (= res!2859014 (noDuplicate!2556 res!2859013))))

(declare-fun e!4212007 () Bool)

(assert (=> d!2184325 e!4212007))

(assert (=> d!2184325 (= (choose!52619 lt!2501476) res!2859013)))

(declare-fun b!7007290 () Bool)

(declare-fun e!4212008 () Bool)

(declare-fun tp!1931876 () Bool)

(assert (=> b!7007290 (= e!4212008 tp!1931876)))

(declare-fun tp!1931875 () Bool)

(declare-fun b!7007289 () Bool)

(assert (=> b!7007289 (= e!4212007 (and (inv!86105 (h!73765 res!2859013)) e!4212008 tp!1931875))))

(declare-fun b!7007291 () Bool)

(assert (=> b!7007291 (= e!4212009 (= (content!13351 res!2859013) lt!2501476))))

(assert (= b!7007289 b!7007290))

(assert (= (and d!2184325 (is-Cons!67317 res!2859013)) b!7007289))

(assert (= (and d!2184325 res!2859014) b!7007291))

(declare-fun m!7704388 () Bool)

(assert (=> d!2184325 m!7704388))

(declare-fun m!7704390 () Bool)

(assert (=> b!7007289 m!7704390))

(declare-fun m!7704392 () Bool)

(assert (=> b!7007291 m!7704392))

(assert (=> d!2184119 d!2184325))

(assert (=> d!2184127 d!2184267))

(declare-fun d!2184327 () Bool)

(assert (=> d!2184327 (= (nullable!7058 (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))) (nullableFct!2672 (regOne!35108 (h!73763 (exprs!6794 lt!2501478)))))))

(declare-fun bs!1865602 () Bool)

(assert (= bs!1865602 d!2184327))

(declare-fun m!7704394 () Bool)

(assert (=> bs!1865602 m!7704394))

(assert (=> b!7006944 d!2184327))

(declare-fun bs!1865603 () Bool)

(declare-fun d!2184329 () Bool)

(assert (= bs!1865603 (and d!2184329 d!2184113)))

(declare-fun lambda!407405 () Int)

(assert (=> bs!1865603 (not (= lambda!407405 lambda!407362))))

(declare-fun bs!1865604 () Bool)

(assert (= bs!1865604 (and d!2184329 d!2184299)))

(assert (=> bs!1865604 (not (= lambda!407405 lambda!407403))))

(declare-fun bs!1865605 () Bool)

(assert (= bs!1865605 (and d!2184329 d!2184263)))

(assert (=> bs!1865605 (= lambda!407405 lambda!407397)))

(declare-fun bs!1865606 () Bool)

(assert (= bs!1865606 (and d!2184329 b!7006782)))

(assert (=> bs!1865606 (not (= lambda!407405 lambda!407315))))

(declare-fun bs!1865607 () Bool)

(assert (= bs!1865607 (and d!2184329 d!2184117)))

(assert (=> bs!1865607 (not (= lambda!407405 lambda!407365))))

(declare-fun bs!1865608 () Bool)

(assert (= bs!1865608 (and d!2184329 d!2184297)))

(assert (=> bs!1865608 (not (= lambda!407405 lambda!407400))))

(declare-fun bs!1865609 () Bool)

(assert (= bs!1865609 (and d!2184329 d!2184281)))

(assert (=> bs!1865609 (= lambda!407405 lambda!407398)))

(declare-fun bs!1865610 () Bool)

(assert (= bs!1865610 (and d!2184329 d!2184257)))

(assert (=> bs!1865610 (= lambda!407405 lambda!407396)))

(declare-fun bs!1865611 () Bool)

(assert (= bs!1865611 (and d!2184329 d!2184305)))

(assert (=> bs!1865611 (= lambda!407405 lambda!407404)))

(assert (=> d!2184329 (= (nullableZipper!2477 lt!2501476) (exists!3134 lt!2501476 lambda!407405))))

(declare-fun bs!1865612 () Bool)

(assert (= bs!1865612 d!2184329))

(declare-fun m!7704396 () Bool)

(assert (=> bs!1865612 m!7704396))

(assert (=> b!7006986 d!2184329))

(declare-fun d!2184331 () Bool)

(declare-fun c!1301409 () Bool)

(assert (=> d!2184331 (= c!1301409 (isEmpty!39317 (tail!13364 (t!381193 s!7408))))))

(declare-fun e!4212010 () Bool)

(assert (=> d!2184331 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501462 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))) e!4212010)))

(declare-fun b!7007292 () Bool)

(assert (=> b!7007292 (= e!4212010 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501462 (head!14161 (t!381193 s!7408)))))))

(declare-fun b!7007293 () Bool)

(assert (=> b!7007293 (= e!4212010 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501462 (head!14161 (t!381193 s!7408))) (head!14161 (tail!13364 (t!381193 s!7408)))) (tail!13364 (tail!13364 (t!381193 s!7408)))))))

(assert (= (and d!2184331 c!1301409) b!7007292))

(assert (= (and d!2184331 (not c!1301409)) b!7007293))

(assert (=> d!2184331 m!7703940))

(assert (=> d!2184331 m!7704320))

(assert (=> b!7007292 m!7703958))

(declare-fun m!7704398 () Bool)

(assert (=> b!7007292 m!7704398))

(assert (=> b!7007293 m!7703940))

(assert (=> b!7007293 m!7704324))

(assert (=> b!7007293 m!7703958))

(assert (=> b!7007293 m!7704324))

(declare-fun m!7704400 () Bool)

(assert (=> b!7007293 m!7704400))

(assert (=> b!7007293 m!7703940))

(assert (=> b!7007293 m!7704328))

(assert (=> b!7007293 m!7704400))

(assert (=> b!7007293 m!7704328))

(declare-fun m!7704402 () Bool)

(assert (=> b!7007293 m!7704402))

(assert (=> b!7006895 d!2184331))

(declare-fun bs!1865613 () Bool)

(declare-fun d!2184333 () Bool)

(assert (= bs!1865613 (and d!2184333 b!7006772)))

(declare-fun lambda!407406 () Int)

(assert (=> bs!1865613 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407406 lambda!407318))))

(declare-fun bs!1865614 () Bool)

(assert (= bs!1865614 (and d!2184333 d!2184105)))

(assert (=> bs!1865614 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407406 lambda!407359))))

(declare-fun bs!1865615 () Bool)

(assert (= bs!1865615 (and d!2184333 d!2184245)))

(assert (=> bs!1865615 (= (= (head!14161 (t!381193 s!7408)) (head!14161 s!7408)) (= lambda!407406 lambda!407393))))

(declare-fun bs!1865616 () Bool)

(assert (= bs!1865616 (and d!2184333 d!2184289)))

(assert (=> bs!1865616 (= lambda!407406 lambda!407399)))

(assert (=> d!2184333 true))

(assert (=> d!2184333 (= (derivationStepZipper!2778 lt!2501462 (head!14161 (t!381193 s!7408))) (flatMap!2284 lt!2501462 lambda!407406))))

(declare-fun bs!1865617 () Bool)

(assert (= bs!1865617 d!2184333))

(declare-fun m!7704404 () Bool)

(assert (=> bs!1865617 m!7704404))

(assert (=> b!7006895 d!2184333))

(assert (=> b!7006895 d!2184291))

(assert (=> b!7006895 d!2184293))

(declare-fun d!2184335 () Bool)

(assert (=> d!2184335 (= (nullable!7058 (h!73763 (exprs!6794 lt!2501471))) (nullableFct!2672 (h!73763 (exprs!6794 lt!2501471))))))

(declare-fun bs!1865618 () Bool)

(assert (= bs!1865618 d!2184335))

(declare-fun m!7704406 () Bool)

(assert (=> bs!1865618 m!7704406))

(assert (=> b!7006913 d!2184335))

(assert (=> d!2184121 d!2184267))

(declare-fun b!7007294 () Bool)

(declare-fun e!4212011 () List!67439)

(assert (=> b!7007294 (= e!4212011 (exprs!6794 ct2!306))))

(declare-fun d!2184337 () Bool)

(declare-fun e!4212012 () Bool)

(assert (=> d!2184337 e!4212012))

(declare-fun res!2859015 () Bool)

(assert (=> d!2184337 (=> (not res!2859015) (not e!4212012))))

(declare-fun lt!2501640 () List!67439)

(assert (=> d!2184337 (= res!2859015 (= (content!13352 lt!2501640) (set.union (content!13352 (t!381192 (exprs!6794 lt!2501478))) (content!13352 (exprs!6794 ct2!306)))))))

(assert (=> d!2184337 (= lt!2501640 e!4212011)))

(declare-fun c!1301410 () Bool)

(assert (=> d!2184337 (= c!1301410 (is-Nil!67315 (t!381192 (exprs!6794 lt!2501478))))))

(assert (=> d!2184337 (= (++!15289 (t!381192 (exprs!6794 lt!2501478)) (exprs!6794 ct2!306)) lt!2501640)))

(declare-fun b!7007297 () Bool)

(assert (=> b!7007297 (= e!4212012 (or (not (= (exprs!6794 ct2!306) Nil!67315)) (= lt!2501640 (t!381192 (exprs!6794 lt!2501478)))))))

(declare-fun b!7007296 () Bool)

(declare-fun res!2859016 () Bool)

(assert (=> b!7007296 (=> (not res!2859016) (not e!4212012))))

(assert (=> b!7007296 (= res!2859016 (= (size!40961 lt!2501640) (+ (size!40961 (t!381192 (exprs!6794 lt!2501478))) (size!40961 (exprs!6794 ct2!306)))))))

(declare-fun b!7007295 () Bool)

(assert (=> b!7007295 (= e!4212011 (Cons!67315 (h!73763 (t!381192 (exprs!6794 lt!2501478))) (++!15289 (t!381192 (t!381192 (exprs!6794 lt!2501478))) (exprs!6794 ct2!306))))))

(assert (= (and d!2184337 c!1301410) b!7007294))

(assert (= (and d!2184337 (not c!1301410)) b!7007295))

(assert (= (and d!2184337 res!2859015) b!7007296))

(assert (= (and b!7007296 res!2859016) b!7007297))

(declare-fun m!7704408 () Bool)

(assert (=> d!2184337 m!7704408))

(assert (=> d!2184337 m!7704374))

(assert (=> d!2184337 m!7703976))

(declare-fun m!7704410 () Bool)

(assert (=> b!7007296 m!7704410))

(assert (=> b!7007296 m!7704304))

(assert (=> b!7007296 m!7703982))

(declare-fun m!7704412 () Bool)

(assert (=> b!7007295 m!7704412))

(assert (=> b!7006979 d!2184337))

(declare-fun b!7007298 () Bool)

(declare-fun e!4212014 () (Set Context!12588))

(assert (=> b!7007298 (= e!4212014 (as set.empty (Set Context!12588)))))

(declare-fun b!7007299 () Bool)

(declare-fun c!1301413 () Bool)

(declare-fun e!4212016 () Bool)

(assert (=> b!7007299 (= c!1301413 e!4212016)))

(declare-fun res!2859017 () Bool)

(assert (=> b!7007299 (=> (not res!2859017) (not e!4212016))))

(assert (=> b!7007299 (= res!2859017 (is-Concat!26143 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))))))

(declare-fun e!4212015 () (Set Context!12588))

(declare-fun e!4212018 () (Set Context!12588))

(assert (=> b!7007299 (= e!4212015 e!4212018)))

(declare-fun b!7007300 () Bool)

(declare-fun e!4212013 () (Set Context!12588))

(declare-fun call!636365 () (Set Context!12588))

(assert (=> b!7007300 (= e!4212013 call!636365)))

(declare-fun b!7007301 () Bool)

(declare-fun call!636367 () (Set Context!12588))

(declare-fun call!636366 () (Set Context!12588))

(assert (=> b!7007301 (= e!4212015 (set.union call!636367 call!636366))))

(declare-fun bm!636358 () Bool)

(declare-fun call!636363 () List!67439)

(declare-fun call!636364 () List!67439)

(assert (=> bm!636358 (= call!636363 call!636364)))

(declare-fun b!7007302 () Bool)

(assert (=> b!7007302 (= e!4212016 (nullable!7058 (regOne!35108 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))))))))

(declare-fun e!4212017 () (Set Context!12588))

(declare-fun b!7007303 () Bool)

(assert (=> b!7007303 (= e!4212017 (set.insert (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292)) (as set.empty (Set Context!12588))))))

(declare-fun bm!636359 () Bool)

(declare-fun call!636368 () (Set Context!12588))

(assert (=> bm!636359 (= call!636368 call!636367)))

(declare-fun c!1301415 () Bool)

(declare-fun bm!636360 () Bool)

(assert (=> bm!636360 (= call!636366 (derivationStepZipperDown!2016 (ite c!1301415 (regTwo!35109 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (regOne!35108 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))))) (ite c!1301415 (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292)) (Context!12589 call!636364)) (h!73764 s!7408)))))

(declare-fun b!7007304 () Bool)

(assert (=> b!7007304 (= e!4212017 e!4212015)))

(assert (=> b!7007304 (= c!1301415 (is-Union!17298 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))))))

(declare-fun c!1301412 () Bool)

(declare-fun bm!636361 () Bool)

(assert (=> bm!636361 (= call!636367 (derivationStepZipperDown!2016 (ite c!1301415 (regOne!35109 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (ite c!1301413 (regTwo!35108 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (ite c!1301412 (regOne!35108 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (reg!17627 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))))))) (ite (or c!1301415 c!1301413) (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292)) (Context!12589 call!636363)) (h!73764 s!7408)))))

(declare-fun b!7007306 () Bool)

(declare-fun c!1301414 () Bool)

(assert (=> b!7007306 (= c!1301414 (is-Star!17298 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))))))

(assert (=> b!7007306 (= e!4212013 e!4212014)))

(declare-fun bm!636362 () Bool)

(assert (=> bm!636362 (= call!636365 call!636368)))

(declare-fun bm!636363 () Bool)

(assert (=> bm!636363 (= call!636364 ($colon$colon!2519 (exprs!6794 (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292))) (ite (or c!1301413 c!1301412) (regTwo!35108 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))))))))

(declare-fun b!7007307 () Bool)

(assert (=> b!7007307 (= e!4212014 call!636365)))

(declare-fun b!7007308 () Bool)

(assert (=> b!7007308 (= e!4212018 (set.union call!636366 call!636368))))

(declare-fun c!1301411 () Bool)

(declare-fun d!2184339 () Bool)

(assert (=> d!2184339 (= c!1301411 (and (is-ElementMatch!17298 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (= (c!1301262 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))) (h!73764 s!7408))))))

(assert (=> d!2184339 (= (derivationStepZipperDown!2016 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478)))))) (ite (or c!1301308 c!1301306) lt!2501471 (Context!12589 call!636292)) (h!73764 s!7408)) e!4212017)))

(declare-fun b!7007305 () Bool)

(assert (=> b!7007305 (= e!4212018 e!4212013)))

(assert (=> b!7007305 (= c!1301412 (is-Concat!26143 (ite c!1301308 (regOne!35109 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301306 (regTwo!35108 (h!73763 (exprs!6794 lt!2501478))) (ite c!1301305 (regOne!35108 (h!73763 (exprs!6794 lt!2501478))) (reg!17627 (h!73763 (exprs!6794 lt!2501478))))))))))

(assert (= (and d!2184339 c!1301411) b!7007303))

(assert (= (and d!2184339 (not c!1301411)) b!7007304))

(assert (= (and b!7007304 c!1301415) b!7007301))

(assert (= (and b!7007304 (not c!1301415)) b!7007299))

(assert (= (and b!7007299 res!2859017) b!7007302))

(assert (= (and b!7007299 c!1301413) b!7007308))

(assert (= (and b!7007299 (not c!1301413)) b!7007305))

(assert (= (and b!7007305 c!1301412) b!7007300))

(assert (= (and b!7007305 (not c!1301412)) b!7007306))

(assert (= (and b!7007306 c!1301414) b!7007307))

(assert (= (and b!7007306 (not c!1301414)) b!7007298))

(assert (= (or b!7007300 b!7007307) bm!636358))

(assert (= (or b!7007300 b!7007307) bm!636362))

(assert (= (or b!7007308 bm!636362) bm!636359))

(assert (= (or b!7007308 bm!636358) bm!636363))

(assert (= (or b!7007301 bm!636359) bm!636361))

(assert (= (or b!7007301 b!7007308) bm!636360))

(declare-fun m!7704414 () Bool)

(assert (=> bm!636361 m!7704414))

(declare-fun m!7704416 () Bool)

(assert (=> b!7007303 m!7704416))

(declare-fun m!7704418 () Bool)

(assert (=> bm!636360 m!7704418))

(declare-fun m!7704420 () Bool)

(assert (=> bm!636363 m!7704420))

(declare-fun m!7704422 () Bool)

(assert (=> b!7007302 m!7704422))

(assert (=> bm!636290 d!2184339))

(declare-fun d!2184341 () Bool)

(declare-fun c!1301416 () Bool)

(assert (=> d!2184341 (= c!1301416 (isEmpty!39317 (tail!13364 (t!381193 s!7408))))))

(declare-fun e!4212019 () Bool)

(assert (=> d!2184341 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501470 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))) e!4212019)))

(declare-fun b!7007309 () Bool)

(assert (=> b!7007309 (= e!4212019 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501470 (head!14161 (t!381193 s!7408)))))))

(declare-fun b!7007310 () Bool)

(assert (=> b!7007310 (= e!4212019 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501470 (head!14161 (t!381193 s!7408))) (head!14161 (tail!13364 (t!381193 s!7408)))) (tail!13364 (tail!13364 (t!381193 s!7408)))))))

(assert (= (and d!2184341 c!1301416) b!7007309))

(assert (= (and d!2184341 (not c!1301416)) b!7007310))

(assert (=> d!2184341 m!7703940))

(assert (=> d!2184341 m!7704320))

(assert (=> b!7007309 m!7703938))

(declare-fun m!7704424 () Bool)

(assert (=> b!7007309 m!7704424))

(assert (=> b!7007310 m!7703940))

(assert (=> b!7007310 m!7704324))

(assert (=> b!7007310 m!7703938))

(assert (=> b!7007310 m!7704324))

(declare-fun m!7704426 () Bool)

(assert (=> b!7007310 m!7704426))

(assert (=> b!7007310 m!7703940))

(assert (=> b!7007310 m!7704328))

(assert (=> b!7007310 m!7704426))

(assert (=> b!7007310 m!7704328))

(declare-fun m!7704428 () Bool)

(assert (=> b!7007310 m!7704428))

(assert (=> b!7006891 d!2184341))

(declare-fun bs!1865619 () Bool)

(declare-fun d!2184343 () Bool)

(assert (= bs!1865619 (and d!2184343 d!2184105)))

(declare-fun lambda!407407 () Int)

(assert (=> bs!1865619 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407407 lambda!407359))))

(declare-fun bs!1865620 () Bool)

(assert (= bs!1865620 (and d!2184343 b!7006772)))

(assert (=> bs!1865620 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407407 lambda!407318))))

(declare-fun bs!1865621 () Bool)

(assert (= bs!1865621 (and d!2184343 d!2184333)))

(assert (=> bs!1865621 (= lambda!407407 lambda!407406)))

(declare-fun bs!1865622 () Bool)

(assert (= bs!1865622 (and d!2184343 d!2184289)))

(assert (=> bs!1865622 (= lambda!407407 lambda!407399)))

(declare-fun bs!1865623 () Bool)

(assert (= bs!1865623 (and d!2184343 d!2184245)))

(assert (=> bs!1865623 (= (= (head!14161 (t!381193 s!7408)) (head!14161 s!7408)) (= lambda!407407 lambda!407393))))

(assert (=> d!2184343 true))

(assert (=> d!2184343 (= (derivationStepZipper!2778 lt!2501470 (head!14161 (t!381193 s!7408))) (flatMap!2284 lt!2501470 lambda!407407))))

(declare-fun bs!1865624 () Bool)

(assert (= bs!1865624 d!2184343))

(declare-fun m!7704430 () Bool)

(assert (=> bs!1865624 m!7704430))

(assert (=> b!7006891 d!2184343))

(assert (=> b!7006891 d!2184291))

(assert (=> b!7006891 d!2184293))

(declare-fun d!2184345 () Bool)

(declare-fun c!1301417 () Bool)

(assert (=> d!2184345 (= c!1301417 (isEmpty!39317 s!7408))))

(declare-fun e!4212020 () Bool)

(assert (=> d!2184345 (= (matchZipper!2838 (set.insert lt!2501582 (as set.empty (Set Context!12588))) s!7408) e!4212020)))

(declare-fun b!7007311 () Bool)

(assert (=> b!7007311 (= e!4212020 (nullableZipper!2477 (set.insert lt!2501582 (as set.empty (Set Context!12588)))))))

(declare-fun b!7007312 () Bool)

(assert (=> b!7007312 (= e!4212020 (matchZipper!2838 (derivationStepZipper!2778 (set.insert lt!2501582 (as set.empty (Set Context!12588))) (head!14161 s!7408)) (tail!13364 s!7408)))))

(assert (= (and d!2184345 c!1301417) b!7007311))

(assert (= (and d!2184345 (not c!1301417)) b!7007312))

(assert (=> d!2184345 m!7703896))

(assert (=> b!7007311 m!7704048))

(declare-fun m!7704432 () Bool)

(assert (=> b!7007311 m!7704432))

(assert (=> b!7007312 m!7703900))

(assert (=> b!7007312 m!7704048))

(assert (=> b!7007312 m!7703900))

(declare-fun m!7704434 () Bool)

(assert (=> b!7007312 m!7704434))

(assert (=> b!7007312 m!7703904))

(assert (=> b!7007312 m!7704434))

(assert (=> b!7007312 m!7703904))

(declare-fun m!7704436 () Bool)

(assert (=> b!7007312 m!7704436))

(assert (=> bs!1865527 d!2184345))

(declare-fun bs!1865625 () Bool)

(declare-fun d!2184347 () Bool)

(assert (= bs!1865625 (and d!2184347 b!7006774)))

(declare-fun lambda!407408 () Int)

(assert (=> bs!1865625 (= lambda!407408 lambda!407317)))

(declare-fun bs!1865626 () Bool)

(assert (= bs!1865626 (and d!2184347 d!2184155)))

(assert (=> bs!1865626 (= lambda!407408 lambda!407373)))

(declare-fun bs!1865627 () Bool)

(assert (= bs!1865627 (and d!2184347 d!2184157)))

(assert (=> bs!1865627 (= lambda!407408 lambda!407374)))

(assert (=> d!2184347 (= (inv!86105 setElem!48258) (forall!16213 (exprs!6794 setElem!48258) lambda!407408))))

(declare-fun bs!1865628 () Bool)

(assert (= bs!1865628 d!2184347))

(declare-fun m!7704438 () Bool)

(assert (=> bs!1865628 m!7704438))

(assert (=> setNonEmpty!48258 d!2184347))

(declare-fun d!2184349 () Bool)

(declare-fun res!2859018 () Bool)

(declare-fun e!4212021 () Bool)

(assert (=> d!2184349 (=> res!2859018 e!4212021)))

(assert (=> d!2184349 (= res!2859018 (is-Nil!67315 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306))))))

(assert (=> d!2184349 (= (forall!16213 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)) lambda!407317) e!4212021)))

(declare-fun b!7007313 () Bool)

(declare-fun e!4212022 () Bool)

(assert (=> b!7007313 (= e!4212021 e!4212022)))

(declare-fun res!2859019 () Bool)

(assert (=> b!7007313 (=> (not res!2859019) (not e!4212022))))

(assert (=> b!7007313 (= res!2859019 (dynLambda!27065 lambda!407317 (h!73763 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)))))))

(declare-fun b!7007314 () Bool)

(assert (=> b!7007314 (= e!4212022 (forall!16213 (t!381192 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306))) lambda!407317))))

(assert (= (and d!2184349 (not res!2859018)) b!7007313))

(assert (= (and b!7007313 res!2859019) b!7007314))

(declare-fun b_lambda!264133 () Bool)

(assert (=> (not b_lambda!264133) (not b!7007313)))

(declare-fun m!7704440 () Bool)

(assert (=> b!7007313 m!7704440))

(declare-fun m!7704442 () Bool)

(assert (=> b!7007314 m!7704442))

(assert (=> d!2184107 d!2184349))

(assert (=> d!2184107 d!2184143))

(declare-fun d!2184351 () Bool)

(assert (=> d!2184351 (forall!16213 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)) lambda!407317)))

(assert (=> d!2184351 true))

(declare-fun _$78!520 () Unit!161272)

(assert (=> d!2184351 (= (choose!52616 (exprs!6794 lt!2501478) (exprs!6794 ct2!306) lambda!407317) _$78!520)))

(declare-fun bs!1865629 () Bool)

(assert (= bs!1865629 d!2184351))

(assert (=> bs!1865629 m!7703766))

(assert (=> bs!1865629 m!7703766))

(assert (=> bs!1865629 m!7703886))

(assert (=> d!2184107 d!2184351))

(declare-fun d!2184353 () Bool)

(declare-fun res!2859020 () Bool)

(declare-fun e!4212023 () Bool)

(assert (=> d!2184353 (=> res!2859020 e!4212023)))

(assert (=> d!2184353 (= res!2859020 (is-Nil!67315 (exprs!6794 lt!2501478)))))

(assert (=> d!2184353 (= (forall!16213 (exprs!6794 lt!2501478) lambda!407317) e!4212023)))

(declare-fun b!7007315 () Bool)

(declare-fun e!4212024 () Bool)

(assert (=> b!7007315 (= e!4212023 e!4212024)))

(declare-fun res!2859021 () Bool)

(assert (=> b!7007315 (=> (not res!2859021) (not e!4212024))))

(assert (=> b!7007315 (= res!2859021 (dynLambda!27065 lambda!407317 (h!73763 (exprs!6794 lt!2501478))))))

(declare-fun b!7007316 () Bool)

(assert (=> b!7007316 (= e!4212024 (forall!16213 (t!381192 (exprs!6794 lt!2501478)) lambda!407317))))

(assert (= (and d!2184353 (not res!2859020)) b!7007315))

(assert (= (and b!7007315 res!2859021) b!7007316))

(declare-fun b_lambda!264135 () Bool)

(assert (=> (not b_lambda!264135) (not b!7007315)))

(declare-fun m!7704444 () Bool)

(assert (=> b!7007315 m!7704444))

(declare-fun m!7704446 () Bool)

(assert (=> b!7007316 m!7704446))

(assert (=> d!2184107 d!2184353))

(declare-fun d!2184355 () Bool)

(declare-fun res!2859022 () Bool)

(declare-fun e!4212025 () Bool)

(assert (=> d!2184355 (=> res!2859022 e!4212025)))

(assert (=> d!2184355 (= res!2859022 (is-Nil!67315 (exprs!6794 setElem!48252)))))

(assert (=> d!2184355 (= (forall!16213 (exprs!6794 setElem!48252) lambda!407374) e!4212025)))

(declare-fun b!7007317 () Bool)

(declare-fun e!4212026 () Bool)

(assert (=> b!7007317 (= e!4212025 e!4212026)))

(declare-fun res!2859023 () Bool)

(assert (=> b!7007317 (=> (not res!2859023) (not e!4212026))))

(assert (=> b!7007317 (= res!2859023 (dynLambda!27065 lambda!407374 (h!73763 (exprs!6794 setElem!48252))))))

(declare-fun b!7007318 () Bool)

(assert (=> b!7007318 (= e!4212026 (forall!16213 (t!381192 (exprs!6794 setElem!48252)) lambda!407374))))

(assert (= (and d!2184355 (not res!2859022)) b!7007317))

(assert (= (and b!7007317 res!2859023) b!7007318))

(declare-fun b_lambda!264137 () Bool)

(assert (=> (not b_lambda!264137) (not b!7007317)))

(declare-fun m!7704448 () Bool)

(assert (=> b!7007317 m!7704448))

(declare-fun m!7704450 () Bool)

(assert (=> b!7007318 m!7704450))

(assert (=> d!2184157 d!2184355))

(declare-fun d!2184357 () Bool)

(assert (=> d!2184357 true))

(declare-fun setRes!48264 () Bool)

(assert (=> d!2184357 setRes!48264))

(declare-fun condSetEmpty!48264 () Bool)

(declare-fun res!2859026 () (Set Context!12588))

(assert (=> d!2184357 (= condSetEmpty!48264 (= res!2859026 (as set.empty (Set Context!12588))))))

(assert (=> d!2184357 (= (choose!52615 lt!2501474 lambda!407318) res!2859026)))

(declare-fun setIsEmpty!48264 () Bool)

(assert (=> setIsEmpty!48264 setRes!48264))

(declare-fun tp!1931882 () Bool)

(declare-fun setElem!48264 () Context!12588)

(declare-fun setNonEmpty!48264 () Bool)

(declare-fun e!4212029 () Bool)

(assert (=> setNonEmpty!48264 (= setRes!48264 (and tp!1931882 (inv!86105 setElem!48264) e!4212029))))

(declare-fun setRest!48264 () (Set Context!12588))

(assert (=> setNonEmpty!48264 (= res!2859026 (set.union (set.insert setElem!48264 (as set.empty (Set Context!12588))) setRest!48264))))

(declare-fun b!7007321 () Bool)

(declare-fun tp!1931881 () Bool)

(assert (=> b!7007321 (= e!4212029 tp!1931881)))

(assert (= (and d!2184357 condSetEmpty!48264) setIsEmpty!48264))

(assert (= (and d!2184357 (not condSetEmpty!48264)) setNonEmpty!48264))

(assert (= setNonEmpty!48264 b!7007321))

(declare-fun m!7704452 () Bool)

(assert (=> setNonEmpty!48264 m!7704452))

(assert (=> d!2184101 d!2184357))

(assert (=> b!7006898 d!2184121))

(declare-fun b!7007322 () Bool)

(declare-fun e!4212031 () (Set Context!12588))

(assert (=> b!7007322 (= e!4212031 (as set.empty (Set Context!12588)))))

(declare-fun b!7007323 () Bool)

(declare-fun c!1301420 () Bool)

(declare-fun e!4212033 () Bool)

(assert (=> b!7007323 (= c!1301420 e!4212033)))

(declare-fun res!2859027 () Bool)

(assert (=> b!7007323 (=> (not res!2859027) (not e!4212033))))

(assert (=> b!7007323 (= res!2859027 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501471))))))

(declare-fun e!4212032 () (Set Context!12588))

(declare-fun e!4212035 () (Set Context!12588))

(assert (=> b!7007323 (= e!4212032 e!4212035)))

(declare-fun b!7007324 () Bool)

(declare-fun e!4212030 () (Set Context!12588))

(declare-fun call!636371 () (Set Context!12588))

(assert (=> b!7007324 (= e!4212030 call!636371)))

(declare-fun b!7007325 () Bool)

(declare-fun call!636373 () (Set Context!12588))

(declare-fun call!636372 () (Set Context!12588))

(assert (=> b!7007325 (= e!4212032 (set.union call!636373 call!636372))))

(declare-fun bm!636364 () Bool)

(declare-fun call!636369 () List!67439)

(declare-fun call!636370 () List!67439)

(assert (=> bm!636364 (= call!636369 call!636370)))

(declare-fun b!7007326 () Bool)

(assert (=> b!7007326 (= e!4212033 (nullable!7058 (regOne!35108 (h!73763 (exprs!6794 lt!2501471)))))))

(declare-fun b!7007327 () Bool)

(declare-fun e!4212034 () (Set Context!12588))

(assert (=> b!7007327 (= e!4212034 (set.insert (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (as set.empty (Set Context!12588))))))

(declare-fun bm!636365 () Bool)

(declare-fun call!636374 () (Set Context!12588))

(assert (=> bm!636365 (= call!636374 call!636373)))

(declare-fun bm!636366 () Bool)

(declare-fun c!1301422 () Bool)

(assert (=> bm!636366 (= call!636372 (derivationStepZipperDown!2016 (ite c!1301422 (regTwo!35109 (h!73763 (exprs!6794 lt!2501471))) (regOne!35108 (h!73763 (exprs!6794 lt!2501471)))) (ite c!1301422 (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (Context!12589 call!636370)) (h!73764 s!7408)))))

(declare-fun b!7007328 () Bool)

(assert (=> b!7007328 (= e!4212034 e!4212032)))

(assert (=> b!7007328 (= c!1301422 (is-Union!17298 (h!73763 (exprs!6794 lt!2501471))))))

(declare-fun bm!636367 () Bool)

(declare-fun c!1301419 () Bool)

(assert (=> bm!636367 (= call!636373 (derivationStepZipperDown!2016 (ite c!1301422 (regOne!35109 (h!73763 (exprs!6794 lt!2501471))) (ite c!1301420 (regTwo!35108 (h!73763 (exprs!6794 lt!2501471))) (ite c!1301419 (regOne!35108 (h!73763 (exprs!6794 lt!2501471))) (reg!17627 (h!73763 (exprs!6794 lt!2501471)))))) (ite (or c!1301422 c!1301420) (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (Context!12589 call!636369)) (h!73764 s!7408)))))

(declare-fun b!7007330 () Bool)

(declare-fun c!1301421 () Bool)

(assert (=> b!7007330 (= c!1301421 (is-Star!17298 (h!73763 (exprs!6794 lt!2501471))))))

(assert (=> b!7007330 (= e!4212030 e!4212031)))

(declare-fun bm!636368 () Bool)

(assert (=> bm!636368 (= call!636371 call!636374)))

(declare-fun bm!636369 () Bool)

(assert (=> bm!636369 (= call!636370 ($colon$colon!2519 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501471)))) (ite (or c!1301420 c!1301419) (regTwo!35108 (h!73763 (exprs!6794 lt!2501471))) (h!73763 (exprs!6794 lt!2501471)))))))

(declare-fun b!7007331 () Bool)

(assert (=> b!7007331 (= e!4212031 call!636371)))

(declare-fun b!7007332 () Bool)

(assert (=> b!7007332 (= e!4212035 (set.union call!636372 call!636374))))

(declare-fun d!2184359 () Bool)

(declare-fun c!1301418 () Bool)

(assert (=> d!2184359 (= c!1301418 (and (is-ElementMatch!17298 (h!73763 (exprs!6794 lt!2501471))) (= (c!1301262 (h!73763 (exprs!6794 lt!2501471))) (h!73764 s!7408))))))

(assert (=> d!2184359 (= (derivationStepZipperDown!2016 (h!73763 (exprs!6794 lt!2501471)) (Context!12589 (t!381192 (exprs!6794 lt!2501471))) (h!73764 s!7408)) e!4212034)))

(declare-fun b!7007329 () Bool)

(assert (=> b!7007329 (= e!4212035 e!4212030)))

(assert (=> b!7007329 (= c!1301419 (is-Concat!26143 (h!73763 (exprs!6794 lt!2501471))))))

(assert (= (and d!2184359 c!1301418) b!7007327))

(assert (= (and d!2184359 (not c!1301418)) b!7007328))

(assert (= (and b!7007328 c!1301422) b!7007325))

(assert (= (and b!7007328 (not c!1301422)) b!7007323))

(assert (= (and b!7007323 res!2859027) b!7007326))

(assert (= (and b!7007323 c!1301420) b!7007332))

(assert (= (and b!7007323 (not c!1301420)) b!7007329))

(assert (= (and b!7007329 c!1301419) b!7007324))

(assert (= (and b!7007329 (not c!1301419)) b!7007330))

(assert (= (and b!7007330 c!1301421) b!7007331))

(assert (= (and b!7007330 (not c!1301421)) b!7007322))

(assert (= (or b!7007324 b!7007331) bm!636364))

(assert (= (or b!7007324 b!7007331) bm!636368))

(assert (= (or b!7007332 bm!636368) bm!636365))

(assert (= (or b!7007332 bm!636364) bm!636369))

(assert (= (or b!7007325 bm!636365) bm!636367))

(assert (= (or b!7007325 b!7007332) bm!636366))

(declare-fun m!7704454 () Bool)

(assert (=> bm!636367 m!7704454))

(declare-fun m!7704456 () Bool)

(assert (=> b!7007327 m!7704456))

(declare-fun m!7704458 () Bool)

(assert (=> bm!636366 m!7704458))

(declare-fun m!7704460 () Bool)

(assert (=> bm!636369 m!7704460))

(declare-fun m!7704462 () Bool)

(assert (=> b!7007326 m!7704462))

(assert (=> bm!636274 d!2184359))

(declare-fun d!2184361 () Bool)

(declare-fun c!1301423 () Bool)

(assert (=> d!2184361 (= c!1301423 (isEmpty!39317 (t!381193 s!7408)))))

(declare-fun e!4212036 () Bool)

(assert (=> d!2184361 (= (matchZipper!2838 (set.union lt!2501475 lt!2501470) (t!381193 s!7408)) e!4212036)))

(declare-fun b!7007333 () Bool)

(assert (=> b!7007333 (= e!4212036 (nullableZipper!2477 (set.union lt!2501475 lt!2501470)))))

(declare-fun b!7007334 () Bool)

(assert (=> b!7007334 (= e!4212036 (matchZipper!2838 (derivationStepZipper!2778 (set.union lt!2501475 lt!2501470) (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))))))

(assert (= (and d!2184361 c!1301423) b!7007333))

(assert (= (and d!2184361 (not c!1301423)) b!7007334))

(assert (=> d!2184361 m!7703932))

(declare-fun m!7704464 () Bool)

(assert (=> b!7007333 m!7704464))

(assert (=> b!7007334 m!7703936))

(assert (=> b!7007334 m!7703936))

(declare-fun m!7704466 () Bool)

(assert (=> b!7007334 m!7704466))

(assert (=> b!7007334 m!7703940))

(assert (=> b!7007334 m!7704466))

(assert (=> b!7007334 m!7703940))

(declare-fun m!7704468 () Bool)

(assert (=> b!7007334 m!7704468))

(assert (=> d!2184129 d!2184361))

(assert (=> d!2184129 d!2184125))

(declare-fun e!4212039 () Bool)

(declare-fun d!2184363 () Bool)

(assert (=> d!2184363 (= (matchZipper!2838 (set.union lt!2501475 lt!2501470) (t!381193 s!7408)) e!4212039)))

(declare-fun res!2859030 () Bool)

(assert (=> d!2184363 (=> res!2859030 e!4212039)))

(assert (=> d!2184363 (= res!2859030 (matchZipper!2838 lt!2501475 (t!381193 s!7408)))))

(assert (=> d!2184363 true))

(declare-fun _$48!2449 () Unit!161272)

(assert (=> d!2184363 (= (choose!52620 lt!2501475 lt!2501470 (t!381193 s!7408)) _$48!2449)))

(declare-fun b!7007337 () Bool)

(assert (=> b!7007337 (= e!4212039 (matchZipper!2838 lt!2501470 (t!381193 s!7408)))))

(assert (= (and d!2184363 (not res!2859030)) b!7007337))

(assert (=> d!2184363 m!7703962))

(assert (=> d!2184363 m!7703806))

(assert (=> b!7007337 m!7703758))

(assert (=> d!2184129 d!2184363))

(declare-fun bs!1865630 () Bool)

(declare-fun d!2184365 () Bool)

(assert (= bs!1865630 (and d!2184365 d!2184113)))

(declare-fun lambda!407409 () Int)

(assert (=> bs!1865630 (not (= lambda!407409 lambda!407362))))

(declare-fun bs!1865631 () Bool)

(assert (= bs!1865631 (and d!2184365 d!2184299)))

(assert (=> bs!1865631 (not (= lambda!407409 lambda!407403))))

(declare-fun bs!1865632 () Bool)

(assert (= bs!1865632 (and d!2184365 d!2184329)))

(assert (=> bs!1865632 (= lambda!407409 lambda!407405)))

(declare-fun bs!1865633 () Bool)

(assert (= bs!1865633 (and d!2184365 d!2184263)))

(assert (=> bs!1865633 (= lambda!407409 lambda!407397)))

(declare-fun bs!1865634 () Bool)

(assert (= bs!1865634 (and d!2184365 b!7006782)))

(assert (=> bs!1865634 (not (= lambda!407409 lambda!407315))))

(declare-fun bs!1865635 () Bool)

(assert (= bs!1865635 (and d!2184365 d!2184117)))

(assert (=> bs!1865635 (not (= lambda!407409 lambda!407365))))

(declare-fun bs!1865636 () Bool)

(assert (= bs!1865636 (and d!2184365 d!2184297)))

(assert (=> bs!1865636 (not (= lambda!407409 lambda!407400))))

(declare-fun bs!1865637 () Bool)

(assert (= bs!1865637 (and d!2184365 d!2184281)))

(assert (=> bs!1865637 (= lambda!407409 lambda!407398)))

(declare-fun bs!1865638 () Bool)

(assert (= bs!1865638 (and d!2184365 d!2184257)))

(assert (=> bs!1865638 (= lambda!407409 lambda!407396)))

(declare-fun bs!1865639 () Bool)

(assert (= bs!1865639 (and d!2184365 d!2184305)))

(assert (=> bs!1865639 (= lambda!407409 lambda!407404)))

(assert (=> d!2184365 (= (nullableZipper!2477 lt!2501475) (exists!3134 lt!2501475 lambda!407409))))

(declare-fun bs!1865640 () Bool)

(assert (= bs!1865640 d!2184365))

(declare-fun m!7704470 () Bool)

(assert (=> bs!1865640 m!7704470))

(assert (=> b!7006892 d!2184365))

(declare-fun b!7007350 () Bool)

(declare-fun e!4212051 () Context!12588)

(assert (=> b!7007350 (= e!4212051 (getWitness!1232 (t!381194 (toList!10658 lt!2501476)) lambda!407315))))

(declare-fun b!7007351 () Bool)

(declare-fun e!4212048 () Context!12588)

(assert (=> b!7007351 (= e!4212048 (h!73765 (toList!10658 lt!2501476)))))

(declare-fun b!7007352 () Bool)

(declare-fun e!4212049 () Bool)

(declare-fun lt!2501645 () Context!12588)

(assert (=> b!7007352 (= e!4212049 (contains!20431 (toList!10658 lt!2501476) lt!2501645))))

(declare-fun b!7007354 () Bool)

(assert (=> b!7007354 (= e!4212048 e!4212051)))

(declare-fun c!1301428 () Bool)

(assert (=> b!7007354 (= c!1301428 (is-Cons!67317 (toList!10658 lt!2501476)))))

(declare-fun b!7007355 () Bool)

(declare-fun lt!2501646 () Unit!161272)

(declare-fun Unit!161276 () Unit!161272)

(assert (=> b!7007355 (= lt!2501646 Unit!161276)))

(assert (=> b!7007355 false))

(declare-fun head!14163 (List!67441) Context!12588)

(assert (=> b!7007355 (= e!4212051 (head!14163 (toList!10658 lt!2501476)))))

(declare-fun d!2184367 () Bool)

(assert (=> d!2184367 e!4212049))

(declare-fun res!2859035 () Bool)

(assert (=> d!2184367 (=> (not res!2859035) (not e!4212049))))

(assert (=> d!2184367 (= res!2859035 (dynLambda!27059 lambda!407315 lt!2501645))))

(assert (=> d!2184367 (= lt!2501645 e!4212048)))

(declare-fun c!1301429 () Bool)

(declare-fun e!4212050 () Bool)

(assert (=> d!2184367 (= c!1301429 e!4212050)))

(declare-fun res!2859036 () Bool)

(assert (=> d!2184367 (=> (not res!2859036) (not e!4212050))))

(assert (=> d!2184367 (= res!2859036 (is-Cons!67317 (toList!10658 lt!2501476)))))

(assert (=> d!2184367 (exists!3132 (toList!10658 lt!2501476) lambda!407315)))

(assert (=> d!2184367 (= (getWitness!1232 (toList!10658 lt!2501476) lambda!407315) lt!2501645)))

(declare-fun b!7007353 () Bool)

(assert (=> b!7007353 (= e!4212050 (dynLambda!27059 lambda!407315 (h!73765 (toList!10658 lt!2501476))))))

(assert (= (and d!2184367 res!2859036) b!7007353))

(assert (= (and d!2184367 c!1301429) b!7007351))

(assert (= (and d!2184367 (not c!1301429)) b!7007354))

(assert (= (and b!7007354 c!1301428) b!7007350))

(assert (= (and b!7007354 (not c!1301428)) b!7007355))

(assert (= (and d!2184367 res!2859035) b!7007352))

(declare-fun b_lambda!264139 () Bool)

(assert (=> (not b_lambda!264139) (not d!2184367)))

(declare-fun b_lambda!264141 () Bool)

(assert (=> (not b_lambda!264141) (not b!7007353)))

(declare-fun m!7704472 () Bool)

(assert (=> d!2184367 m!7704472))

(assert (=> d!2184367 m!7703754))

(declare-fun m!7704474 () Bool)

(assert (=> d!2184367 m!7704474))

(declare-fun m!7704476 () Bool)

(assert (=> b!7007350 m!7704476))

(assert (=> b!7007355 m!7703754))

(declare-fun m!7704478 () Bool)

(assert (=> b!7007355 m!7704478))

(declare-fun m!7704480 () Bool)

(assert (=> b!7007353 m!7704480))

(assert (=> b!7007352 m!7703754))

(declare-fun m!7704482 () Bool)

(assert (=> b!7007352 m!7704482))

(assert (=> d!2184115 d!2184367))

(assert (=> d!2184115 d!2184119))

(declare-fun d!2184369 () Bool)

(declare-fun lt!2501649 () Bool)

(assert (=> d!2184369 (= lt!2501649 (exists!3132 (toList!10658 lt!2501476) lambda!407315))))

(declare-fun choose!52630 ((Set Context!12588) Int) Bool)

(assert (=> d!2184369 (= lt!2501649 (choose!52630 lt!2501476 lambda!407315))))

(assert (=> d!2184369 (= (exists!3134 lt!2501476 lambda!407315) lt!2501649)))

(declare-fun bs!1865641 () Bool)

(assert (= bs!1865641 d!2184369))

(assert (=> bs!1865641 m!7703754))

(assert (=> bs!1865641 m!7703754))

(assert (=> bs!1865641 m!7704474))

(declare-fun m!7704484 () Bool)

(assert (=> bs!1865641 m!7704484))

(assert (=> d!2184115 d!2184369))

(declare-fun d!2184371 () Bool)

(declare-fun c!1301430 () Bool)

(assert (=> d!2184371 (= c!1301430 (isEmpty!39317 (tail!13364 s!7408)))))

(declare-fun e!4212052 () Bool)

(assert (=> d!2184371 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501460 (head!14161 s!7408)) (tail!13364 s!7408)) e!4212052)))

(declare-fun b!7007356 () Bool)

(assert (=> b!7007356 (= e!4212052 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501460 (head!14161 s!7408))))))

(declare-fun b!7007357 () Bool)

(assert (=> b!7007357 (= e!4212052 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501460 (head!14161 s!7408)) (head!14161 (tail!13364 s!7408))) (tail!13364 (tail!13364 s!7408))))))

(assert (= (and d!2184371 c!1301430) b!7007356))

(assert (= (and d!2184371 (not c!1301430)) b!7007357))

(assert (=> d!2184371 m!7703904))

(assert (=> d!2184371 m!7704262))

(assert (=> b!7007356 m!7703902))

(declare-fun m!7704486 () Bool)

(assert (=> b!7007356 m!7704486))

(assert (=> b!7007357 m!7703904))

(assert (=> b!7007357 m!7704266))

(assert (=> b!7007357 m!7703902))

(assert (=> b!7007357 m!7704266))

(declare-fun m!7704488 () Bool)

(assert (=> b!7007357 m!7704488))

(assert (=> b!7007357 m!7703904))

(assert (=> b!7007357 m!7704270))

(assert (=> b!7007357 m!7704488))

(assert (=> b!7007357 m!7704270))

(declare-fun m!7704490 () Bool)

(assert (=> b!7007357 m!7704490))

(assert (=> b!7006881 d!2184371))

(declare-fun bs!1865642 () Bool)

(declare-fun d!2184373 () Bool)

(assert (= bs!1865642 (and d!2184373 d!2184343)))

(declare-fun lambda!407410 () Int)

(assert (=> bs!1865642 (= (= (head!14161 s!7408) (head!14161 (t!381193 s!7408))) (= lambda!407410 lambda!407407))))

(declare-fun bs!1865643 () Bool)

(assert (= bs!1865643 (and d!2184373 d!2184105)))

(assert (=> bs!1865643 (= (= (head!14161 s!7408) (h!73764 s!7408)) (= lambda!407410 lambda!407359))))

(declare-fun bs!1865644 () Bool)

(assert (= bs!1865644 (and d!2184373 b!7006772)))

(assert (=> bs!1865644 (= (= (head!14161 s!7408) (h!73764 s!7408)) (= lambda!407410 lambda!407318))))

(declare-fun bs!1865645 () Bool)

(assert (= bs!1865645 (and d!2184373 d!2184333)))

(assert (=> bs!1865645 (= (= (head!14161 s!7408) (head!14161 (t!381193 s!7408))) (= lambda!407410 lambda!407406))))

(declare-fun bs!1865646 () Bool)

(assert (= bs!1865646 (and d!2184373 d!2184289)))

(assert (=> bs!1865646 (= (= (head!14161 s!7408) (head!14161 (t!381193 s!7408))) (= lambda!407410 lambda!407399))))

(declare-fun bs!1865647 () Bool)

(assert (= bs!1865647 (and d!2184373 d!2184245)))

(assert (=> bs!1865647 (= lambda!407410 lambda!407393)))

(assert (=> d!2184373 true))

(assert (=> d!2184373 (= (derivationStepZipper!2778 lt!2501460 (head!14161 s!7408)) (flatMap!2284 lt!2501460 lambda!407410))))

(declare-fun bs!1865648 () Bool)

(assert (= bs!1865648 d!2184373))

(declare-fun m!7704492 () Bool)

(assert (=> bs!1865648 m!7704492))

(assert (=> b!7006881 d!2184373))

(assert (=> b!7006881 d!2184247))

(assert (=> b!7006881 d!2184249))

(assert (=> d!2184131 d!2184267))

(declare-fun d!2184375 () Bool)

(assert (=> d!2184375 (forall!16213 (++!15289 (exprs!6794 lt!2501599) (exprs!6794 ct2!306)) lambda!407317)))

(declare-fun lt!2501650 () Unit!161272)

(assert (=> d!2184375 (= lt!2501650 (choose!52616 (exprs!6794 lt!2501599) (exprs!6794 ct2!306) lambda!407317))))

(assert (=> d!2184375 (forall!16213 (exprs!6794 lt!2501599) lambda!407317)))

(assert (=> d!2184375 (= (lemmaConcatPreservesForall!634 (exprs!6794 lt!2501599) (exprs!6794 ct2!306) lambda!407317) lt!2501650)))

(declare-fun bs!1865649 () Bool)

(assert (= bs!1865649 d!2184375))

(assert (=> bs!1865649 m!7704046))

(assert (=> bs!1865649 m!7704046))

(declare-fun m!7704494 () Bool)

(assert (=> bs!1865649 m!7704494))

(declare-fun m!7704496 () Bool)

(assert (=> bs!1865649 m!7704496))

(declare-fun m!7704498 () Bool)

(assert (=> bs!1865649 m!7704498))

(assert (=> bs!1865525 d!2184375))

(declare-fun b!7007358 () Bool)

(declare-fun e!4212053 () List!67439)

(assert (=> b!7007358 (= e!4212053 (exprs!6794 ct2!306))))

(declare-fun d!2184377 () Bool)

(declare-fun e!4212054 () Bool)

(assert (=> d!2184377 e!4212054))

(declare-fun res!2859037 () Bool)

(assert (=> d!2184377 (=> (not res!2859037) (not e!4212054))))

(declare-fun lt!2501651 () List!67439)

(assert (=> d!2184377 (= res!2859037 (= (content!13352 lt!2501651) (set.union (content!13352 (exprs!6794 lt!2501599)) (content!13352 (exprs!6794 ct2!306)))))))

(assert (=> d!2184377 (= lt!2501651 e!4212053)))

(declare-fun c!1301431 () Bool)

(assert (=> d!2184377 (= c!1301431 (is-Nil!67315 (exprs!6794 lt!2501599)))))

(assert (=> d!2184377 (= (++!15289 (exprs!6794 lt!2501599) (exprs!6794 ct2!306)) lt!2501651)))

(declare-fun b!7007361 () Bool)

(assert (=> b!7007361 (= e!4212054 (or (not (= (exprs!6794 ct2!306) Nil!67315)) (= lt!2501651 (exprs!6794 lt!2501599))))))

(declare-fun b!7007360 () Bool)

(declare-fun res!2859038 () Bool)

(assert (=> b!7007360 (=> (not res!2859038) (not e!4212054))))

(assert (=> b!7007360 (= res!2859038 (= (size!40961 lt!2501651) (+ (size!40961 (exprs!6794 lt!2501599)) (size!40961 (exprs!6794 ct2!306)))))))

(declare-fun b!7007359 () Bool)

(assert (=> b!7007359 (= e!4212053 (Cons!67315 (h!73763 (exprs!6794 lt!2501599)) (++!15289 (t!381192 (exprs!6794 lt!2501599)) (exprs!6794 ct2!306))))))

(assert (= (and d!2184377 c!1301431) b!7007358))

(assert (= (and d!2184377 (not c!1301431)) b!7007359))

(assert (= (and d!2184377 res!2859037) b!7007360))

(assert (= (and b!7007360 res!2859038) b!7007361))

(declare-fun m!7704500 () Bool)

(assert (=> d!2184377 m!7704500))

(declare-fun m!7704502 () Bool)

(assert (=> d!2184377 m!7704502))

(assert (=> d!2184377 m!7703976))

(declare-fun m!7704504 () Bool)

(assert (=> b!7007360 m!7704504))

(declare-fun m!7704506 () Bool)

(assert (=> b!7007360 m!7704506))

(assert (=> b!7007360 m!7703982))

(declare-fun m!7704508 () Bool)

(assert (=> b!7007359 m!7704508))

(assert (=> bs!1865525 d!2184377))

(declare-fun d!2184379 () Bool)

(declare-fun c!1301432 () Bool)

(assert (=> d!2184379 (= c!1301432 (isEmpty!39317 (tail!13364 (t!381193 s!7408))))))

(declare-fun e!4212055 () Bool)

(assert (=> d!2184379 (= (matchZipper!2838 (derivationStepZipper!2778 lt!2501469 (head!14161 (t!381193 s!7408))) (tail!13364 (t!381193 s!7408))) e!4212055)))

(declare-fun b!7007362 () Bool)

(assert (=> b!7007362 (= e!4212055 (nullableZipper!2477 (derivationStepZipper!2778 lt!2501469 (head!14161 (t!381193 s!7408)))))))

(declare-fun b!7007363 () Bool)

(assert (=> b!7007363 (= e!4212055 (matchZipper!2838 (derivationStepZipper!2778 (derivationStepZipper!2778 lt!2501469 (head!14161 (t!381193 s!7408))) (head!14161 (tail!13364 (t!381193 s!7408)))) (tail!13364 (tail!13364 (t!381193 s!7408)))))))

(assert (= (and d!2184379 c!1301432) b!7007362))

(assert (= (and d!2184379 (not c!1301432)) b!7007363))

(assert (=> d!2184379 m!7703940))

(assert (=> d!2184379 m!7704320))

(assert (=> b!7007362 m!7703968))

(declare-fun m!7704510 () Bool)

(assert (=> b!7007362 m!7704510))

(assert (=> b!7007363 m!7703940))

(assert (=> b!7007363 m!7704324))

(assert (=> b!7007363 m!7703968))

(assert (=> b!7007363 m!7704324))

(declare-fun m!7704512 () Bool)

(assert (=> b!7007363 m!7704512))

(assert (=> b!7007363 m!7703940))

(assert (=> b!7007363 m!7704328))

(assert (=> b!7007363 m!7704512))

(assert (=> b!7007363 m!7704328))

(declare-fun m!7704514 () Bool)

(assert (=> b!7007363 m!7704514))

(assert (=> b!7006900 d!2184379))

(declare-fun bs!1865650 () Bool)

(declare-fun d!2184381 () Bool)

(assert (= bs!1865650 (and d!2184381 d!2184343)))

(declare-fun lambda!407411 () Int)

(assert (=> bs!1865650 (= lambda!407411 lambda!407407)))

(declare-fun bs!1865651 () Bool)

(assert (= bs!1865651 (and d!2184381 d!2184105)))

(assert (=> bs!1865651 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407411 lambda!407359))))

(declare-fun bs!1865652 () Bool)

(assert (= bs!1865652 (and d!2184381 b!7006772)))

(assert (=> bs!1865652 (= (= (head!14161 (t!381193 s!7408)) (h!73764 s!7408)) (= lambda!407411 lambda!407318))))

(declare-fun bs!1865653 () Bool)

(assert (= bs!1865653 (and d!2184381 d!2184373)))

(assert (=> bs!1865653 (= (= (head!14161 (t!381193 s!7408)) (head!14161 s!7408)) (= lambda!407411 lambda!407410))))

(declare-fun bs!1865654 () Bool)

(assert (= bs!1865654 (and d!2184381 d!2184333)))

(assert (=> bs!1865654 (= lambda!407411 lambda!407406)))

(declare-fun bs!1865655 () Bool)

(assert (= bs!1865655 (and d!2184381 d!2184289)))

(assert (=> bs!1865655 (= lambda!407411 lambda!407399)))

(declare-fun bs!1865656 () Bool)

(assert (= bs!1865656 (and d!2184381 d!2184245)))

(assert (=> bs!1865656 (= (= (head!14161 (t!381193 s!7408)) (head!14161 s!7408)) (= lambda!407411 lambda!407393))))

(assert (=> d!2184381 true))

(assert (=> d!2184381 (= (derivationStepZipper!2778 lt!2501469 (head!14161 (t!381193 s!7408))) (flatMap!2284 lt!2501469 lambda!407411))))

(declare-fun bs!1865657 () Bool)

(assert (= bs!1865657 d!2184381))

(declare-fun m!7704516 () Bool)

(assert (=> bs!1865657 m!7704516))

(assert (=> b!7006900 d!2184381))

(assert (=> b!7006900 d!2184291))

(assert (=> b!7006900 d!2184293))

(declare-fun b!7007364 () Bool)

(declare-fun e!4212058 () Bool)

(assert (=> b!7007364 (= e!4212058 (nullable!7058 (h!73763 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465)))))))))

(declare-fun b!7007365 () Bool)

(declare-fun e!4212057 () (Set Context!12588))

(assert (=> b!7007365 (= e!4212057 (as set.empty (Set Context!12588)))))

(declare-fun b!7007366 () Bool)

(declare-fun e!4212056 () (Set Context!12588))

(assert (=> b!7007366 (= e!4212056 e!4212057)))

(declare-fun c!1301434 () Bool)

(assert (=> b!7007366 (= c!1301434 (is-Cons!67315 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465))))))))

(declare-fun d!2184383 () Bool)

(declare-fun c!1301433 () Bool)

(assert (=> d!2184383 (= c!1301433 e!4212058)))

(declare-fun res!2859039 () Bool)

(assert (=> d!2184383 (=> (not res!2859039) (not e!4212058))))

(assert (=> d!2184383 (= res!2859039 (is-Cons!67315 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465))))))))

(assert (=> d!2184383 (= (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 lt!2501465))) (h!73764 s!7408)) e!4212056)))

(declare-fun b!7007367 () Bool)

(declare-fun call!636375 () (Set Context!12588))

(assert (=> b!7007367 (= e!4212056 (set.union call!636375 (derivationStepZipperUp!1948 (Context!12589 (t!381192 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465)))))) (h!73764 s!7408))))))

(declare-fun bm!636370 () Bool)

(assert (=> bm!636370 (= call!636375 (derivationStepZipperDown!2016 (h!73763 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465))))) (Context!12589 (t!381192 (exprs!6794 (Context!12589 (t!381192 (exprs!6794 lt!2501465)))))) (h!73764 s!7408)))))

(declare-fun b!7007368 () Bool)

(assert (=> b!7007368 (= e!4212057 call!636375)))

(assert (= (and d!2184383 res!2859039) b!7007364))

(assert (= (and d!2184383 c!1301433) b!7007367))

(assert (= (and d!2184383 (not c!1301433)) b!7007366))

(assert (= (and b!7007366 c!1301434) b!7007368))

(assert (= (and b!7007366 (not c!1301434)) b!7007365))

(assert (= (or b!7007367 b!7007368) bm!636370))

(declare-fun m!7704518 () Bool)

(assert (=> b!7007364 m!7704518))

(declare-fun m!7704520 () Bool)

(assert (=> b!7007367 m!7704520))

(declare-fun m!7704522 () Bool)

(assert (=> bm!636370 m!7704522))

(assert (=> b!7006872 d!2184383))

(declare-fun d!2184385 () Bool)

(declare-fun e!4212063 () Bool)

(assert (=> d!2184385 e!4212063))

(declare-fun res!2859042 () Bool)

(assert (=> d!2184385 (=> (not res!2859042) (not e!4212063))))

(declare-fun a!12913 () Context!12588)

(assert (=> d!2184385 (= res!2859042 (= lt!2501459 (dynLambda!27060 lambda!407316 a!12913)))))

(declare-fun e!4212064 () Bool)

(assert (=> d!2184385 (and (inv!86105 a!12913) e!4212064)))

(assert (=> d!2184385 (= (choose!52621 z1!570 lambda!407316 lt!2501459) a!12913)))

(declare-fun b!7007374 () Bool)

(declare-fun tp!1931885 () Bool)

(assert (=> b!7007374 (= e!4212064 tp!1931885)))

(declare-fun b!7007375 () Bool)

(assert (=> b!7007375 (= e!4212063 (set.member a!12913 z1!570))))

(assert (= d!2184385 b!7007374))

(assert (= (and d!2184385 res!2859042) b!7007375))

(declare-fun b_lambda!264143 () Bool)

(assert (=> (not b_lambda!264143) (not d!2184385)))

(declare-fun m!7704524 () Bool)

(assert (=> d!2184385 m!7704524))

(declare-fun m!7704526 () Bool)

(assert (=> d!2184385 m!7704526))

(declare-fun m!7704528 () Bool)

(assert (=> b!7007375 m!7704528))

(assert (=> d!2184145 d!2184385))

(declare-fun d!2184387 () Bool)

(assert (=> d!2184387 (= (map!15591 z1!570 lambda!407316) (choose!52629 z1!570 lambda!407316))))

(declare-fun bs!1865658 () Bool)

(assert (= bs!1865658 d!2184387))

(declare-fun m!7704530 () Bool)

(assert (=> bs!1865658 m!7704530))

(assert (=> d!2184145 d!2184387))

(declare-fun b!7007376 () Bool)

(declare-fun e!4212065 () Bool)

(declare-fun tp!1931886 () Bool)

(declare-fun tp!1931887 () Bool)

(assert (=> b!7007376 (= e!4212065 (and tp!1931886 tp!1931887))))

(assert (=> b!7007003 (= tp!1931852 e!4212065)))

(assert (= (and b!7007003 (is-Cons!67315 (exprs!6794 setElem!48258))) b!7007376))

(declare-fun b!7007390 () Bool)

(declare-fun e!4212068 () Bool)

(declare-fun tp!1931902 () Bool)

(declare-fun tp!1931900 () Bool)

(assert (=> b!7007390 (= e!4212068 (and tp!1931902 tp!1931900))))

(declare-fun b!7007389 () Bool)

(declare-fun tp!1931898 () Bool)

(assert (=> b!7007389 (= e!4212068 tp!1931898)))

(declare-fun b!7007388 () Bool)

(declare-fun tp!1931901 () Bool)

(declare-fun tp!1931899 () Bool)

(assert (=> b!7007388 (= e!4212068 (and tp!1931901 tp!1931899))))

(assert (=> b!7006997 (= tp!1931844 e!4212068)))

(declare-fun b!7007387 () Bool)

(assert (=> b!7007387 (= e!4212068 tp_is_empty!43821)))

(assert (= (and b!7006997 (is-ElementMatch!17298 (h!73763 (exprs!6794 ct2!306)))) b!7007387))

(assert (= (and b!7006997 (is-Concat!26143 (h!73763 (exprs!6794 ct2!306)))) b!7007388))

(assert (= (and b!7006997 (is-Star!17298 (h!73763 (exprs!6794 ct2!306)))) b!7007389))

(assert (= (and b!7006997 (is-Union!17298 (h!73763 (exprs!6794 ct2!306)))) b!7007390))

(declare-fun b!7007391 () Bool)

(declare-fun e!4212069 () Bool)

(declare-fun tp!1931903 () Bool)

(declare-fun tp!1931904 () Bool)

(assert (=> b!7007391 (= e!4212069 (and tp!1931903 tp!1931904))))

(assert (=> b!7006997 (= tp!1931845 e!4212069)))

(assert (= (and b!7006997 (is-Cons!67315 (t!381192 (exprs!6794 ct2!306)))) b!7007391))

(declare-fun condSetEmpty!48265 () Bool)

(assert (=> setNonEmpty!48258 (= condSetEmpty!48265 (= setRest!48258 (as set.empty (Set Context!12588))))))

(declare-fun setRes!48265 () Bool)

(assert (=> setNonEmpty!48258 (= tp!1931853 setRes!48265)))

(declare-fun setIsEmpty!48265 () Bool)

(assert (=> setIsEmpty!48265 setRes!48265))

(declare-fun setNonEmpty!48265 () Bool)

(declare-fun setElem!48265 () Context!12588)

(declare-fun tp!1931906 () Bool)

(declare-fun e!4212070 () Bool)

(assert (=> setNonEmpty!48265 (= setRes!48265 (and tp!1931906 (inv!86105 setElem!48265) e!4212070))))

(declare-fun setRest!48265 () (Set Context!12588))

(assert (=> setNonEmpty!48265 (= setRest!48258 (set.union (set.insert setElem!48265 (as set.empty (Set Context!12588))) setRest!48265))))

(declare-fun b!7007392 () Bool)

(declare-fun tp!1931905 () Bool)

(assert (=> b!7007392 (= e!4212070 tp!1931905)))

(assert (= (and setNonEmpty!48258 condSetEmpty!48265) setIsEmpty!48265))

(assert (= (and setNonEmpty!48258 (not condSetEmpty!48265)) setNonEmpty!48265))

(assert (= setNonEmpty!48265 b!7007392))

(declare-fun m!7704532 () Bool)

(assert (=> setNonEmpty!48265 m!7704532))

(declare-fun b!7007396 () Bool)

(declare-fun e!4212071 () Bool)

(declare-fun tp!1931911 () Bool)

(declare-fun tp!1931909 () Bool)

(assert (=> b!7007396 (= e!4212071 (and tp!1931911 tp!1931909))))

(declare-fun b!7007395 () Bool)

(declare-fun tp!1931907 () Bool)

(assert (=> b!7007395 (= e!4212071 tp!1931907)))

(declare-fun b!7007394 () Bool)

(declare-fun tp!1931910 () Bool)

(declare-fun tp!1931908 () Bool)

(assert (=> b!7007394 (= e!4212071 (and tp!1931910 tp!1931908))))

(assert (=> b!7006998 (= tp!1931846 e!4212071)))

(declare-fun b!7007393 () Bool)

(assert (=> b!7007393 (= e!4212071 tp_is_empty!43821)))

(assert (= (and b!7006998 (is-ElementMatch!17298 (h!73763 (exprs!6794 setElem!48252)))) b!7007393))

(assert (= (and b!7006998 (is-Concat!26143 (h!73763 (exprs!6794 setElem!48252)))) b!7007394))

(assert (= (and b!7006998 (is-Star!17298 (h!73763 (exprs!6794 setElem!48252)))) b!7007395))

(assert (= (and b!7006998 (is-Union!17298 (h!73763 (exprs!6794 setElem!48252)))) b!7007396))

(declare-fun b!7007397 () Bool)

(declare-fun e!4212072 () Bool)

(declare-fun tp!1931912 () Bool)

(declare-fun tp!1931913 () Bool)

(assert (=> b!7007397 (= e!4212072 (and tp!1931912 tp!1931913))))

(assert (=> b!7006998 (= tp!1931847 e!4212072)))

(assert (= (and b!7006998 (is-Cons!67315 (t!381192 (exprs!6794 setElem!48252)))) b!7007397))

(declare-fun b!7007398 () Bool)

(declare-fun e!4212073 () Bool)

(declare-fun tp!1931914 () Bool)

(assert (=> b!7007398 (= e!4212073 (and tp_is_empty!43821 tp!1931914))))

(assert (=> b!7006992 (= tp!1931839 e!4212073)))

(assert (= (and b!7006992 (is-Cons!67316 (t!381193 (t!381193 s!7408)))) b!7007398))

(declare-fun b_lambda!264145 () Bool)

(assert (= b_lambda!264131 (or b!7006772 b_lambda!264145)))

(assert (=> d!2184321 d!2184161))

(declare-fun b_lambda!264147 () Bool)

(assert (= b_lambda!264127 (or d!2184113 b_lambda!264147)))

(declare-fun bs!1865659 () Bool)

(declare-fun d!2184389 () Bool)

(assert (= bs!1865659 (and d!2184389 d!2184113)))

(assert (=> bs!1865659 (= (dynLambda!27059 lambda!407362 (h!73765 lt!2501458)) (not (dynLambda!27059 lambda!407315 (h!73765 lt!2501458))))))

(declare-fun b_lambda!264167 () Bool)

(assert (=> (not b_lambda!264167) (not bs!1865659)))

(declare-fun m!7704534 () Bool)

(assert (=> bs!1865659 m!7704534))

(assert (=> b!7007197 d!2184389))

(declare-fun b_lambda!264149 () Bool)

(assert (= b_lambda!264135 (or b!7006774 b_lambda!264149)))

(declare-fun bs!1865660 () Bool)

(declare-fun d!2184391 () Bool)

(assert (= bs!1865660 (and d!2184391 b!7006774)))

(assert (=> bs!1865660 (= (dynLambda!27065 lambda!407317 (h!73763 (exprs!6794 lt!2501478))) (validRegex!8878 (h!73763 (exprs!6794 lt!2501478))))))

(assert (=> bs!1865660 m!7703782))

(assert (=> b!7007315 d!2184391))

(declare-fun b_lambda!264151 () Bool)

(assert (= b_lambda!264141 (or b!7006782 b_lambda!264151)))

(declare-fun bs!1865661 () Bool)

(declare-fun d!2184393 () Bool)

(assert (= bs!1865661 (and d!2184393 b!7006782)))

(assert (=> bs!1865661 (= (dynLambda!27059 lambda!407315 (h!73765 (toList!10658 lt!2501476))) (matchZipper!2838 (set.insert (h!73765 (toList!10658 lt!2501476)) (as set.empty (Set Context!12588))) s!7408))))

(declare-fun m!7704536 () Bool)

(assert (=> bs!1865661 m!7704536))

(assert (=> bs!1865661 m!7704536))

(declare-fun m!7704538 () Bool)

(assert (=> bs!1865661 m!7704538))

(assert (=> b!7007353 d!2184393))

(declare-fun b_lambda!264153 () Bool)

(assert (= b_lambda!264143 (or b!7006774 b_lambda!264153)))

(declare-fun bs!1865662 () Bool)

(declare-fun d!2184395 () Bool)

(assert (= bs!1865662 (and d!2184395 b!7006774)))

(declare-fun lt!2501652 () Unit!161272)

(assert (=> bs!1865662 (= lt!2501652 (lemmaConcatPreservesForall!634 (exprs!6794 a!12913) (exprs!6794 ct2!306) lambda!407317))))

(assert (=> bs!1865662 (= (dynLambda!27060 lambda!407316 a!12913) (Context!12589 (++!15289 (exprs!6794 a!12913) (exprs!6794 ct2!306))))))

(declare-fun m!7704540 () Bool)

(assert (=> bs!1865662 m!7704540))

(declare-fun m!7704542 () Bool)

(assert (=> bs!1865662 m!7704542))

(assert (=> d!2184385 d!2184395))

(declare-fun b_lambda!264155 () Bool)

(assert (= b_lambda!264133 (or b!7006774 b_lambda!264155)))

(declare-fun bs!1865663 () Bool)

(declare-fun d!2184397 () Bool)

(assert (= bs!1865663 (and d!2184397 b!7006774)))

(assert (=> bs!1865663 (= (dynLambda!27065 lambda!407317 (h!73763 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)))) (validRegex!8878 (h!73763 (++!15289 (exprs!6794 lt!2501478) (exprs!6794 ct2!306)))))))

(declare-fun m!7704544 () Bool)

(assert (=> bs!1865663 m!7704544))

(assert (=> b!7007313 d!2184397))

(declare-fun b_lambda!264157 () Bool)

(assert (= b_lambda!264123 (or b!7006774 b_lambda!264157)))

(declare-fun bs!1865664 () Bool)

(declare-fun d!2184399 () Bool)

(assert (= bs!1865664 (and d!2184399 b!7006774)))

(assert (=> bs!1865664 (= (dynLambda!27065 lambda!407317 (h!73763 (++!15289 lt!2501480 (exprs!6794 ct2!306)))) (validRegex!8878 (h!73763 (++!15289 lt!2501480 (exprs!6794 ct2!306)))))))

(declare-fun m!7704546 () Bool)

(assert (=> bs!1865664 m!7704546))

(assert (=> b!7007153 d!2184399))

(declare-fun b_lambda!264159 () Bool)

(assert (= b_lambda!264139 (or b!7006782 b_lambda!264159)))

(declare-fun bs!1865665 () Bool)

(declare-fun d!2184401 () Bool)

(assert (= bs!1865665 (and d!2184401 b!7006782)))

(assert (=> bs!1865665 (= (dynLambda!27059 lambda!407315 lt!2501645) (matchZipper!2838 (set.insert lt!2501645 (as set.empty (Set Context!12588))) s!7408))))

(declare-fun m!7704548 () Bool)

(assert (=> bs!1865665 m!7704548))

(assert (=> bs!1865665 m!7704548))

(declare-fun m!7704550 () Bool)

(assert (=> bs!1865665 m!7704550))

(assert (=> d!2184367 d!2184401))

(declare-fun b_lambda!264161 () Bool)

(assert (= b_lambda!264129 (or d!2184155 b_lambda!264161)))

(declare-fun bs!1865666 () Bool)

(declare-fun d!2184403 () Bool)

(assert (= bs!1865666 (and d!2184403 d!2184155)))

(assert (=> bs!1865666 (= (dynLambda!27065 lambda!407373 (h!73763 (exprs!6794 ct2!306))) (validRegex!8878 (h!73763 (exprs!6794 ct2!306))))))

(declare-fun m!7704552 () Bool)

(assert (=> bs!1865666 m!7704552))

(assert (=> b!7007256 d!2184403))

(declare-fun b_lambda!264163 () Bool)

(assert (= b_lambda!264125 (or b!7006774 b_lambda!264163)))

(declare-fun bs!1865667 () Bool)

(declare-fun d!2184405 () Bool)

(assert (= bs!1865667 (and d!2184405 b!7006774)))

(assert (=> bs!1865667 (= (dynLambda!27065 lambda!407317 (h!73763 lt!2501480)) (validRegex!8878 (h!73763 lt!2501480)))))

(declare-fun m!7704554 () Bool)

(assert (=> bs!1865667 m!7704554))

(assert (=> b!7007155 d!2184405))

(declare-fun b_lambda!264165 () Bool)

(assert (= b_lambda!264137 (or d!2184157 b_lambda!264165)))

(declare-fun bs!1865668 () Bool)

(declare-fun d!2184407 () Bool)

(assert (= bs!1865668 (and d!2184407 d!2184157)))

(assert (=> bs!1865668 (= (dynLambda!27065 lambda!407374 (h!73763 (exprs!6794 setElem!48252))) (validRegex!8878 (h!73763 (exprs!6794 setElem!48252))))))

(declare-fun m!7704556 () Bool)

(assert (=> bs!1865668 m!7704556))

(assert (=> b!7007317 d!2184407))

(push 1)

(assert (not d!2184381))

(assert (not bs!1865661))

(assert (not d!2184305))

(assert (not b!7007265))

(assert (not b!7007158))

(assert (not bm!636335))

(assert (not d!2184325))

(assert (not b!7007235))

(assert (not bm!636367))

(assert (not b!7007259))

(assert (not b!7007352))

(assert (not b!7007310))

(assert (not bs!1865662))

(assert (not d!2184345))

(assert (not bm!636351))

(assert (not bm!636340))

(assert (not b!7007357))

(assert (not b!7007314))

(assert (not bm!636354))

(assert (not b_lambda!264149))

(assert (not b!7007181))

(assert (not bm!636356))

(assert (not bs!1865663))

(assert (not d!2184333))

(assert (not d!2184287))

(assert (not b!7007165))

(assert (not d!2184385))

(assert (not d!2184361))

(assert (not b!7007356))

(assert (not b!7007355))

(assert (not b_lambda!264161))

(assert (not b!7007249))

(assert (not b_lambda!264155))

(assert (not b_lambda!264107))

(assert (not bm!636338))

(assert (not b!7007281))

(assert (not b!7007188))

(assert (not b!7007334))

(assert (not bm!636360))

(assert (not d!2184301))

(assert (not d!2184263))

(assert (not b!7007178))

(assert (not b!7007156))

(assert (not b!7007290))

(assert (not b!7007192))

(assert (not b_lambda!264147))

(assert (not b_lambda!264165))

(assert (not d!2184347))

(assert (not d!2184369))

(assert (not d!2184365))

(assert (not b!7007225))

(assert (not b!7007267))

(assert (not d!2184297))

(assert (not bm!636336))

(assert (not b!7007360))

(assert (not b!7007350))

(assert (not b!7007362))

(assert (not bm!636355))

(assert (not b!7007198))

(assert (not b!7007293))

(assert (not b!7007255))

(assert (not d!2184299))

(assert (not d!2184257))

(assert (not d!2184371))

(assert (not b!7007236))

(assert (not d!2184231))

(assert (not b!7007392))

(assert (not bs!1865660))

(assert (not b!7007398))

(assert (not b!7007274))

(assert (not bm!636339))

(assert (not bm!636346))

(assert (not bm!636369))

(assert (not b!7007159))

(assert (not b_lambda!264157))

(assert (not b!7007376))

(assert (not d!2184375))

(assert (not b!7007296))

(assert (not b_lambda!264167))

(assert (not bm!636366))

(assert (not b!7007190))

(assert (not b_lambda!264151))

(assert (not d!2184343))

(assert (not b!7007292))

(assert (not d!2184363))

(assert (not bs!1865664))

(assert (not d!2184235))

(assert (not b!7007396))

(assert (not d!2184271))

(assert (not b!7007374))

(assert (not b!7007359))

(assert (not d!2184327))

(assert (not d!2184341))

(assert (not d!2184377))

(assert (not d!2184259))

(assert (not b_lambda!264159))

(assert (not d!2184321))

(assert (not d!2184367))

(assert (not b!7007363))

(assert (not b!7007311))

(assert (not d!2184281))

(assert (not d!2184329))

(assert (not d!2184373))

(assert (not d!2184243))

(assert (not bm!636352))

(assert (not d!2184379))

(assert (not b!7007182))

(assert (not d!2184337))

(assert (not bs!1865665))

(assert (not b!7007388))

(assert (not b!7007326))

(assert (not bs!1865668))

(assert (not d!2184245))

(assert (not b!7007395))

(assert (not setNonEmpty!48264))

(assert (not b!7007241))

(assert (not bm!636370))

(assert (not d!2184335))

(assert (not b!7007263))

(assert (not b!7007316))

(assert (not b!7007248))

(assert (not b!7007233))

(assert (not b_lambda!264145))

(assert (not b!7007389))

(assert (not b!7007154))

(assert (not bm!636361))

(assert (not b!7007230))

(assert (not b!7007282))

(assert (not b!7007295))

(assert (not b!7007291))

(assert (not b!7007302))

(assert (not setNonEmpty!48265))

(assert (not b!7007257))

(assert (not b!7007261))

(assert (not bs!1865667))

(assert (not b!7007227))

(assert (not b!7007289))

(assert tp_is_empty!43821)

(assert (not b!7007312))

(assert (not b!7007367))

(assert (not b!7007364))

(assert (not bm!636348))

(assert (not d!2184289))

(assert (not d!2184283))

(assert (not b!7007229))

(assert (not d!2184387))

(assert (not b!7007394))

(assert (not d!2184331))

(assert (not b!7007321))

(assert (not b!7007309))

(assert (not b_lambda!264153))

(assert (not b!7007391))

(assert (not b!7007337))

(assert (not b_lambda!264163))

(assert (not b_lambda!264105))

(assert (not b!7007390))

(assert (not d!2184351))

(assert (not b!7007318))

(assert (not bs!1865666))

(assert (not bm!636347))

(assert (not bm!636363))

(assert (not b!7007333))

(assert (not b_lambda!264109))

(assert (not d!2184285))

(assert (not b!7007397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

