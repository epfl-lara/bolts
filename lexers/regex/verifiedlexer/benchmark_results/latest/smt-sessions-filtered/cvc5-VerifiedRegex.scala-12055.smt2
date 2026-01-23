; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676324 () Bool)

(assert start!676324)

(declare-fun b!7016827 () Bool)

(assert (=> b!7016827 true))

(declare-fun b!7016820 () Bool)

(assert (=> b!7016820 true))

(declare-fun b!7016818 () Bool)

(assert (=> b!7016818 true))

(declare-fun b!7016812 () Bool)

(declare-fun e!4217964 () Bool)

(declare-fun tp_is_empty!43937 () Bool)

(declare-fun tp!1933342 () Bool)

(assert (=> b!7016812 (= e!4217964 (and tp_is_empty!43937 tp!1933342))))

(declare-fun res!2863790 () Bool)

(declare-fun e!4217959 () Bool)

(assert (=> start!676324 (=> (not res!2863790) (not e!4217959))))

(declare-datatypes ((C!34982 0))(
  ( (C!34983 (val!27193 Int)) )
))
(declare-datatypes ((Regex!17356 0))(
  ( (ElementMatch!17356 (c!1303733 C!34982)) (Concat!26201 (regOne!35224 Regex!17356) (regTwo!35224 Regex!17356)) (EmptyExpr!17356) (Star!17356 (reg!17685 Regex!17356)) (EmptyLang!17356) (Union!17356 (regOne!35225 Regex!17356) (regTwo!35225 Regex!17356)) )
))
(declare-datatypes ((List!67613 0))(
  ( (Nil!67489) (Cons!67489 (h!73937 Regex!17356) (t!381368 List!67613)) )
))
(declare-datatypes ((Context!12704 0))(
  ( (Context!12705 (exprs!6852 List!67613)) )
))
(declare-fun lt!2508747 () (Set Context!12704))

(declare-datatypes ((List!67614 0))(
  ( (Nil!67490) (Cons!67490 (h!73938 C!34982) (t!381369 List!67614)) )
))
(declare-fun s!7408 () List!67614)

(declare-fun matchZipper!2896 ((Set Context!12704) List!67614) Bool)

(assert (=> start!676324 (= res!2863790 (matchZipper!2896 lt!2508747 s!7408))))

(declare-fun z1!570 () (Set Context!12704))

(declare-fun ct2!306 () Context!12704)

(declare-fun appendTo!477 ((Set Context!12704) Context!12704) (Set Context!12704))

(assert (=> start!676324 (= lt!2508747 (appendTo!477 z1!570 ct2!306))))

(assert (=> start!676324 e!4217959))

(declare-fun condSetEmpty!48549 () Bool)

(assert (=> start!676324 (= condSetEmpty!48549 (= z1!570 (as set.empty (Set Context!12704))))))

(declare-fun setRes!48549 () Bool)

(assert (=> start!676324 setRes!48549))

(declare-fun e!4217958 () Bool)

(declare-fun inv!86250 (Context!12704) Bool)

(assert (=> start!676324 (and (inv!86250 ct2!306) e!4217958)))

(assert (=> start!676324 e!4217964))

(declare-fun b!7016813 () Bool)

(declare-fun e!4217961 () Bool)

(declare-fun e!4217954 () Bool)

(assert (=> b!7016813 (= e!4217961 e!4217954)))

(declare-fun res!2863802 () Bool)

(assert (=> b!7016813 (=> res!2863802 e!4217954)))

(declare-fun lt!2508752 () (Set Context!12704))

(declare-fun lt!2508743 () (Set Context!12704))

(declare-fun derivationStepZipper!2836 ((Set Context!12704) C!34982) (Set Context!12704))

(assert (=> b!7016813 (= res!2863802 (not (= (derivationStepZipper!2836 lt!2508752 (h!73938 s!7408)) lt!2508743)))))

(declare-fun lambda!410179 () Int)

(declare-fun lt!2508748 () Context!12704)

(declare-fun flatMap!2342 ((Set Context!12704) Int) (Set Context!12704))

(declare-fun derivationStepZipperUp!2006 (Context!12704 C!34982) (Set Context!12704))

(assert (=> b!7016813 (= (flatMap!2342 lt!2508752 lambda!410179) (derivationStepZipperUp!2006 lt!2508748 (h!73938 s!7408)))))

(declare-datatypes ((Unit!161394 0))(
  ( (Unit!161395) )
))
(declare-fun lt!2508762 () Unit!161394)

(declare-fun lemmaFlatMapOnSingletonSet!1857 ((Set Context!12704) Context!12704 Int) Unit!161394)

(assert (=> b!7016813 (= lt!2508762 (lemmaFlatMapOnSingletonSet!1857 lt!2508752 lt!2508748 lambda!410179))))

(assert (=> b!7016813 (= lt!2508743 (derivationStepZipperUp!2006 lt!2508748 (h!73938 s!7408)))))

(assert (=> b!7016813 (= lt!2508752 (set.insert lt!2508748 (as set.empty (Set Context!12704))))))

(declare-fun b!7016814 () Bool)

(declare-fun res!2863800 () Bool)

(declare-fun e!4217956 () Bool)

(assert (=> b!7016814 (=> res!2863800 e!4217956)))

(declare-fun isEmpty!39415 (List!67613) Bool)

(assert (=> b!7016814 (= res!2863800 (isEmpty!39415 (exprs!6852 lt!2508748)))))

(declare-fun b!7016815 () Bool)

(declare-fun e!4217957 () Bool)

(declare-fun tp!1933344 () Bool)

(assert (=> b!7016815 (= e!4217957 tp!1933344)))

(declare-fun b!7016816 () Bool)

(declare-fun tp!1933345 () Bool)

(assert (=> b!7016816 (= e!4217958 tp!1933345)))

(declare-fun b!7016817 () Bool)

(declare-fun e!4217963 () Bool)

(assert (=> b!7016817 (= e!4217963 e!4217961)))

(declare-fun res!2863794 () Bool)

(assert (=> b!7016817 (=> res!2863794 e!4217961)))

(declare-fun lt!2508761 () (Set Context!12704))

(declare-datatypes ((tuple2!67994 0))(
  ( (tuple2!67995 (_1!37300 List!67614) (_2!37300 List!67614)) )
))
(declare-fun lt!2508767 () tuple2!67994)

(assert (=> b!7016817 (= res!2863794 (not (matchZipper!2896 lt!2508761 (_1!37300 lt!2508767))))))

(declare-datatypes ((Option!16829 0))(
  ( (None!16828) (Some!16828 (v!53106 tuple2!67994)) )
))
(declare-fun lt!2508745 () Option!16829)

(declare-fun get!23666 (Option!16829) tuple2!67994)

(assert (=> b!7016817 (= lt!2508767 (get!23666 lt!2508745))))

(declare-fun isDefined!13530 (Option!16829) Bool)

(assert (=> b!7016817 (isDefined!13530 lt!2508745)))

(declare-fun lt!2508758 () (Set Context!12704))

(declare-fun findConcatSeparationZippers!345 ((Set Context!12704) (Set Context!12704) List!67614 List!67614 List!67614) Option!16829)

(assert (=> b!7016817 (= lt!2508745 (findConcatSeparationZippers!345 lt!2508761 lt!2508758 Nil!67490 (t!381369 s!7408) (t!381369 s!7408)))))

(assert (=> b!7016817 (= lt!2508758 (set.insert ct2!306 (as set.empty (Set Context!12704))))))

(declare-fun lt!2508750 () Unit!161394)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!345 ((Set Context!12704) Context!12704 List!67614) Unit!161394)

(assert (=> b!7016817 (= lt!2508750 (lemmaConcatZipperMatchesStringThenFindConcatDefined!345 lt!2508761 ct2!306 (t!381369 s!7408)))))

(declare-fun lt!2508756 () (Set Context!12704))

(assert (=> b!7016817 (= lt!2508756 (appendTo!477 lt!2508761 ct2!306))))

(declare-fun lt!2508755 () Context!12704)

(declare-fun derivationStepZipperDown!2074 (Regex!17356 Context!12704 C!34982) (Set Context!12704))

(assert (=> b!7016817 (= lt!2508761 (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) lt!2508755 (h!73938 s!7408)))))

(declare-fun lt!2508768 () List!67613)

(declare-fun lambda!410178 () Int)

(declare-fun lt!2508760 () Unit!161394)

(declare-fun lemmaConcatPreservesForall!692 (List!67613 List!67613 Int) Unit!161394)

(assert (=> b!7016817 (= lt!2508760 (lemmaConcatPreservesForall!692 lt!2508768 (exprs!6852 ct2!306) lambda!410178))))

(declare-fun lt!2508764 () Unit!161394)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!47 (Context!12704 Regex!17356 C!34982 Context!12704) Unit!161394)

(assert (=> b!7016817 (= lt!2508764 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!47 lt!2508755 (h!73937 (exprs!6852 lt!2508748)) (h!73938 s!7408) ct2!306))))

(declare-fun e!4217960 () Bool)

(assert (=> b!7016818 (= e!4217960 e!4217956)))

(declare-fun res!2863799 () Bool)

(assert (=> b!7016818 (=> res!2863799 e!4217956)))

(declare-fun lt!2508757 () (Set Context!12704))

(declare-fun lt!2508769 () (Set Context!12704))

(assert (=> b!7016818 (= res!2863799 (not (= (derivationStepZipper!2836 lt!2508757 (h!73938 s!7408)) lt!2508769)))))

(declare-fun lt!2508751 () Context!12704)

(assert (=> b!7016818 (= (flatMap!2342 lt!2508757 lambda!410179) (derivationStepZipperUp!2006 lt!2508751 (h!73938 s!7408)))))

(declare-fun lt!2508753 () Unit!161394)

(assert (=> b!7016818 (= lt!2508753 (lemmaFlatMapOnSingletonSet!1857 lt!2508757 lt!2508751 lambda!410179))))

(assert (=> b!7016818 (= lt!2508769 (derivationStepZipperUp!2006 lt!2508751 (h!73938 s!7408)))))

(declare-fun lt!2508763 () Unit!161394)

(assert (=> b!7016818 (= lt!2508763 (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508748) (exprs!6852 ct2!306) lambda!410178))))

(declare-fun b!7016819 () Bool)

(declare-fun e!4217962 () Bool)

(assert (=> b!7016819 (= e!4217956 e!4217962)))

(declare-fun res!2863795 () Bool)

(assert (=> b!7016819 (=> res!2863795 e!4217962)))

(declare-fun nullable!7116 (Regex!17356) Bool)

(assert (=> b!7016819 (= res!2863795 (nullable!7116 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> b!7016819 (= lt!2508755 (Context!12705 lt!2508768))))

(declare-fun tail!13448 (List!67613) List!67613)

(assert (=> b!7016819 (= lt!2508768 (tail!13448 (exprs!6852 lt!2508748)))))

(declare-fun e!4217953 () Bool)

(declare-fun e!4217955 () Bool)

(assert (=> b!7016820 (= e!4217953 e!4217955)))

(declare-fun res!2863797 () Bool)

(assert (=> b!7016820 (=> res!2863797 e!4217955)))

(declare-fun lt!2508766 () Context!12704)

(assert (=> b!7016820 (= res!2863797 (or (not (= lt!2508751 lt!2508766)) (not (set.member lt!2508748 z1!570))))))

(declare-fun ++!15376 (List!67613 List!67613) List!67613)

(assert (=> b!7016820 (= lt!2508751 (Context!12705 (++!15376 (exprs!6852 lt!2508748) (exprs!6852 ct2!306))))))

(declare-fun lt!2508746 () Unit!161394)

(assert (=> b!7016820 (= lt!2508746 (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508748) (exprs!6852 ct2!306) lambda!410178))))

(declare-fun lambda!410177 () Int)

(declare-fun mapPost2!211 ((Set Context!12704) Int Context!12704) Context!12704)

(assert (=> b!7016820 (= lt!2508748 (mapPost2!211 z1!570 lambda!410177 lt!2508766))))

(declare-fun setIsEmpty!48549 () Bool)

(assert (=> setIsEmpty!48549 setRes!48549))

(declare-fun b!7016821 () Bool)

(assert (=> b!7016821 (= e!4217955 e!4217960)))

(declare-fun res!2863798 () Bool)

(assert (=> b!7016821 (=> res!2863798 e!4217960)))

(declare-fun lt!2508759 () (Set Context!12704))

(assert (=> b!7016821 (= res!2863798 (not (= lt!2508757 lt!2508759)))))

(assert (=> b!7016821 (= lt!2508757 (set.insert lt!2508751 (as set.empty (Set Context!12704))))))

(declare-fun lt!2508765 () Unit!161394)

(assert (=> b!7016821 (= lt!2508765 (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508748) (exprs!6852 ct2!306) lambda!410178))))

(declare-fun b!7016822 () Bool)

(declare-fun res!2863792 () Bool)

(assert (=> b!7016822 (=> (not res!2863792) (not e!4217959))))

(assert (=> b!7016822 (= res!2863792 (is-Cons!67490 s!7408))))

(declare-fun setElem!48549 () Context!12704)

(declare-fun tp!1933343 () Bool)

(declare-fun setNonEmpty!48549 () Bool)

(assert (=> setNonEmpty!48549 (= setRes!48549 (and tp!1933343 (inv!86250 setElem!48549) e!4217957))))

(declare-fun setRest!48549 () (Set Context!12704))

(assert (=> setNonEmpty!48549 (= z1!570 (set.union (set.insert setElem!48549 (as set.empty (Set Context!12704))) setRest!48549))))

(declare-fun b!7016823 () Bool)

(declare-fun res!2863804 () Bool)

(assert (=> b!7016823 (=> res!2863804 e!4217961)))

(assert (=> b!7016823 (= res!2863804 (not (matchZipper!2896 lt!2508758 (_2!37300 lt!2508767))))))

(declare-fun b!7016824 () Bool)

(declare-fun validRegex!8907 (Regex!17356) Bool)

(assert (=> b!7016824 (= e!4217954 (validRegex!8907 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7016825 () Bool)

(assert (=> b!7016825 (= e!4217962 e!4217963)))

(declare-fun res!2863796 () Bool)

(assert (=> b!7016825 (=> res!2863796 e!4217963)))

(assert (=> b!7016825 (= res!2863796 (not (matchZipper!2896 lt!2508756 (t!381369 s!7408))))))

(assert (=> b!7016825 (= lt!2508756 (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306))) (h!73938 s!7408)))))

(declare-fun lt!2508744 () Unit!161394)

(assert (=> b!7016825 (= lt!2508744 (lemmaConcatPreservesForall!692 lt!2508768 (exprs!6852 ct2!306) lambda!410178))))

(declare-fun b!7016826 () Bool)

(declare-fun res!2863793 () Bool)

(assert (=> b!7016826 (=> res!2863793 e!4217953)))

(assert (=> b!7016826 (= res!2863793 (not (set.member lt!2508766 lt!2508747)))))

(assert (=> b!7016827 (= e!4217959 (not e!4217953))))

(declare-fun res!2863801 () Bool)

(assert (=> b!7016827 (=> res!2863801 e!4217953)))

(assert (=> b!7016827 (= res!2863801 (not (matchZipper!2896 lt!2508759 s!7408)))))

(assert (=> b!7016827 (= lt!2508759 (set.insert lt!2508766 (as set.empty (Set Context!12704))))))

(declare-fun lambda!410176 () Int)

(declare-fun getWitness!1315 ((Set Context!12704) Int) Context!12704)

(assert (=> b!7016827 (= lt!2508766 (getWitness!1315 lt!2508747 lambda!410176))))

(declare-datatypes ((List!67615 0))(
  ( (Nil!67491) (Cons!67491 (h!73939 Context!12704) (t!381370 List!67615)) )
))
(declare-fun lt!2508749 () List!67615)

(declare-fun exists!3222 (List!67615 Int) Bool)

(assert (=> b!7016827 (exists!3222 lt!2508749 lambda!410176)))

(declare-fun lt!2508754 () Unit!161394)

(declare-fun lemmaZipperMatchesExistsMatchingContext!325 (List!67615 List!67614) Unit!161394)

(assert (=> b!7016827 (= lt!2508754 (lemmaZipperMatchesExistsMatchingContext!325 lt!2508749 s!7408))))

(declare-fun toList!10716 ((Set Context!12704)) List!67615)

(assert (=> b!7016827 (= lt!2508749 (toList!10716 lt!2508747))))

(declare-fun b!7016828 () Bool)

(declare-fun res!2863791 () Bool)

(assert (=> b!7016828 (=> res!2863791 e!4217961)))

(declare-fun ++!15377 (List!67614 List!67614) List!67614)

(assert (=> b!7016828 (= res!2863791 (not (= (++!15377 (_1!37300 lt!2508767) (_2!37300 lt!2508767)) (t!381369 s!7408))))))

(declare-fun b!7016829 () Bool)

(declare-fun res!2863803 () Bool)

(assert (=> b!7016829 (=> res!2863803 e!4217956)))

(assert (=> b!7016829 (= res!2863803 (not (is-Cons!67489 (exprs!6852 lt!2508748))))))

(assert (= (and start!676324 res!2863790) b!7016822))

(assert (= (and b!7016822 res!2863792) b!7016827))

(assert (= (and b!7016827 (not res!2863801)) b!7016826))

(assert (= (and b!7016826 (not res!2863793)) b!7016820))

(assert (= (and b!7016820 (not res!2863797)) b!7016821))

(assert (= (and b!7016821 (not res!2863798)) b!7016818))

(assert (= (and b!7016818 (not res!2863799)) b!7016829))

(assert (= (and b!7016829 (not res!2863803)) b!7016814))

(assert (= (and b!7016814 (not res!2863800)) b!7016819))

(assert (= (and b!7016819 (not res!2863795)) b!7016825))

(assert (= (and b!7016825 (not res!2863796)) b!7016817))

(assert (= (and b!7016817 (not res!2863794)) b!7016823))

(assert (= (and b!7016823 (not res!2863804)) b!7016828))

(assert (= (and b!7016828 (not res!2863791)) b!7016813))

(assert (= (and b!7016813 (not res!2863802)) b!7016824))

(assert (= (and start!676324 condSetEmpty!48549) setIsEmpty!48549))

(assert (= (and start!676324 (not condSetEmpty!48549)) setNonEmpty!48549))

(assert (= setNonEmpty!48549 b!7016815))

(assert (= start!676324 b!7016816))

(assert (= (and start!676324 (is-Cons!67490 s!7408)) b!7016812))

(declare-fun m!7716644 () Bool)

(assert (=> b!7016826 m!7716644))

(declare-fun m!7716646 () Bool)

(assert (=> setNonEmpty!48549 m!7716646))

(declare-fun m!7716648 () Bool)

(assert (=> b!7016824 m!7716648))

(declare-fun m!7716650 () Bool)

(assert (=> b!7016827 m!7716650))

(declare-fun m!7716652 () Bool)

(assert (=> b!7016827 m!7716652))

(declare-fun m!7716654 () Bool)

(assert (=> b!7016827 m!7716654))

(declare-fun m!7716656 () Bool)

(assert (=> b!7016827 m!7716656))

(declare-fun m!7716658 () Bool)

(assert (=> b!7016827 m!7716658))

(declare-fun m!7716660 () Bool)

(assert (=> b!7016827 m!7716660))

(declare-fun m!7716662 () Bool)

(assert (=> start!676324 m!7716662))

(declare-fun m!7716664 () Bool)

(assert (=> start!676324 m!7716664))

(declare-fun m!7716666 () Bool)

(assert (=> start!676324 m!7716666))

(declare-fun m!7716668 () Bool)

(assert (=> b!7016818 m!7716668))

(declare-fun m!7716670 () Bool)

(assert (=> b!7016818 m!7716670))

(declare-fun m!7716672 () Bool)

(assert (=> b!7016818 m!7716672))

(declare-fun m!7716674 () Bool)

(assert (=> b!7016818 m!7716674))

(declare-fun m!7716676 () Bool)

(assert (=> b!7016818 m!7716676))

(declare-fun m!7716678 () Bool)

(assert (=> b!7016823 m!7716678))

(declare-fun m!7716680 () Bool)

(assert (=> b!7016821 m!7716680))

(assert (=> b!7016821 m!7716674))

(declare-fun m!7716682 () Bool)

(assert (=> b!7016825 m!7716682))

(declare-fun m!7716684 () Bool)

(assert (=> b!7016825 m!7716684))

(declare-fun m!7716686 () Bool)

(assert (=> b!7016825 m!7716686))

(declare-fun m!7716688 () Bool)

(assert (=> b!7016825 m!7716688))

(declare-fun m!7716690 () Bool)

(assert (=> b!7016820 m!7716690))

(declare-fun m!7716692 () Bool)

(assert (=> b!7016820 m!7716692))

(assert (=> b!7016820 m!7716674))

(declare-fun m!7716694 () Bool)

(assert (=> b!7016820 m!7716694))

(declare-fun m!7716696 () Bool)

(assert (=> b!7016817 m!7716696))

(declare-fun m!7716698 () Bool)

(assert (=> b!7016817 m!7716698))

(declare-fun m!7716700 () Bool)

(assert (=> b!7016817 m!7716700))

(declare-fun m!7716702 () Bool)

(assert (=> b!7016817 m!7716702))

(assert (=> b!7016817 m!7716688))

(declare-fun m!7716704 () Bool)

(assert (=> b!7016817 m!7716704))

(declare-fun m!7716706 () Bool)

(assert (=> b!7016817 m!7716706))

(declare-fun m!7716708 () Bool)

(assert (=> b!7016817 m!7716708))

(declare-fun m!7716710 () Bool)

(assert (=> b!7016817 m!7716710))

(declare-fun m!7716712 () Bool)

(assert (=> b!7016817 m!7716712))

(declare-fun m!7716714 () Bool)

(assert (=> b!7016828 m!7716714))

(declare-fun m!7716716 () Bool)

(assert (=> b!7016813 m!7716716))

(declare-fun m!7716718 () Bool)

(assert (=> b!7016813 m!7716718))

(declare-fun m!7716720 () Bool)

(assert (=> b!7016813 m!7716720))

(declare-fun m!7716722 () Bool)

(assert (=> b!7016813 m!7716722))

(declare-fun m!7716724 () Bool)

(assert (=> b!7016813 m!7716724))

(declare-fun m!7716726 () Bool)

(assert (=> b!7016814 m!7716726))

(declare-fun m!7716728 () Bool)

(assert (=> b!7016819 m!7716728))

(declare-fun m!7716730 () Bool)

(assert (=> b!7016819 m!7716730))

(push 1)

(assert (not setNonEmpty!48549))

(assert (not b!7016825))

(assert (not b!7016812))

(assert tp_is_empty!43937)

(assert (not b!7016820))

(assert (not b!7016821))

(assert (not b!7016828))

(assert (not b!7016816))

(assert (not b!7016824))

(assert (not b!7016813))

(assert (not b!7016827))

(assert (not b!7016818))

(assert (not b!7016814))

(assert (not b!7016815))

(assert (not b!7016817))

(assert (not start!676324))

(assert (not b!7016819))

(assert (not b!7016823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1866953 () Bool)

(declare-fun d!2187272 () Bool)

(assert (= bs!1866953 (and d!2187272 b!7016818)))

(declare-fun lambda!410208 () Int)

(assert (=> bs!1866953 (= lambda!410208 lambda!410179)))

(assert (=> d!2187272 true))

(assert (=> d!2187272 (= (derivationStepZipper!2836 lt!2508752 (h!73938 s!7408)) (flatMap!2342 lt!2508752 lambda!410208))))

(declare-fun bs!1866954 () Bool)

(assert (= bs!1866954 d!2187272))

(declare-fun m!7716820 () Bool)

(assert (=> bs!1866954 m!7716820))

(assert (=> b!7016813 d!2187272))

(declare-fun d!2187274 () Bool)

(declare-fun choose!52847 ((Set Context!12704) Int) (Set Context!12704))

(assert (=> d!2187274 (= (flatMap!2342 lt!2508752 lambda!410179) (choose!52847 lt!2508752 lambda!410179))))

(declare-fun bs!1866955 () Bool)

(assert (= bs!1866955 d!2187274))

(declare-fun m!7716822 () Bool)

(assert (=> bs!1866955 m!7716822))

(assert (=> b!7016813 d!2187274))

(declare-fun bm!637336 () Bool)

(declare-fun call!637341 () (Set Context!12704))

(assert (=> bm!637336 (= call!637341 (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) (Context!12705 (t!381368 (exprs!6852 lt!2508748))) (h!73938 s!7408)))))

(declare-fun b!7016908 () Bool)

(declare-fun e!4218008 () (Set Context!12704))

(declare-fun e!4218009 () (Set Context!12704))

(assert (=> b!7016908 (= e!4218008 e!4218009)))

(declare-fun c!1303751 () Bool)

(assert (=> b!7016908 (= c!1303751 (is-Cons!67489 (exprs!6852 lt!2508748)))))

(declare-fun b!7016910 () Bool)

(declare-fun e!4218007 () Bool)

(assert (=> b!7016910 (= e!4218007 (nullable!7116 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7016911 () Bool)

(assert (=> b!7016911 (= e!4218009 call!637341)))

(declare-fun b!7016912 () Bool)

(assert (=> b!7016912 (= e!4218008 (set.union call!637341 (derivationStepZipperUp!2006 (Context!12705 (t!381368 (exprs!6852 lt!2508748))) (h!73938 s!7408))))))

(declare-fun b!7016909 () Bool)

(assert (=> b!7016909 (= e!4218009 (as set.empty (Set Context!12704)))))

(declare-fun d!2187276 () Bool)

(declare-fun c!1303752 () Bool)

(assert (=> d!2187276 (= c!1303752 e!4218007)))

(declare-fun res!2863853 () Bool)

(assert (=> d!2187276 (=> (not res!2863853) (not e!4218007))))

(assert (=> d!2187276 (= res!2863853 (is-Cons!67489 (exprs!6852 lt!2508748)))))

(assert (=> d!2187276 (= (derivationStepZipperUp!2006 lt!2508748 (h!73938 s!7408)) e!4218008)))

(assert (= (and d!2187276 res!2863853) b!7016910))

(assert (= (and d!2187276 c!1303752) b!7016912))

(assert (= (and d!2187276 (not c!1303752)) b!7016908))

(assert (= (and b!7016908 c!1303751) b!7016911))

(assert (= (and b!7016908 (not c!1303751)) b!7016909))

(assert (= (or b!7016912 b!7016911) bm!637336))

(declare-fun m!7716824 () Bool)

(assert (=> bm!637336 m!7716824))

(assert (=> b!7016910 m!7716728))

(declare-fun m!7716826 () Bool)

(assert (=> b!7016912 m!7716826))

(assert (=> b!7016813 d!2187276))

(declare-fun d!2187278 () Bool)

(declare-fun dynLambda!27177 (Int Context!12704) (Set Context!12704))

(assert (=> d!2187278 (= (flatMap!2342 lt!2508752 lambda!410179) (dynLambda!27177 lambda!410179 lt!2508748))))

(declare-fun lt!2508855 () Unit!161394)

(declare-fun choose!52848 ((Set Context!12704) Context!12704 Int) Unit!161394)

(assert (=> d!2187278 (= lt!2508855 (choose!52848 lt!2508752 lt!2508748 lambda!410179))))

(assert (=> d!2187278 (= lt!2508752 (set.insert lt!2508748 (as set.empty (Set Context!12704))))))

(assert (=> d!2187278 (= (lemmaFlatMapOnSingletonSet!1857 lt!2508752 lt!2508748 lambda!410179) lt!2508855)))

(declare-fun b_lambda!264819 () Bool)

(assert (=> (not b_lambda!264819) (not d!2187278)))

(declare-fun bs!1866956 () Bool)

(assert (= bs!1866956 d!2187278))

(assert (=> bs!1866956 m!7716722))

(declare-fun m!7716828 () Bool)

(assert (=> bs!1866956 m!7716828))

(declare-fun m!7716830 () Bool)

(assert (=> bs!1866956 m!7716830))

(assert (=> bs!1866956 m!7716724))

(assert (=> b!7016813 d!2187278))

(declare-fun d!2187280 () Bool)

(declare-fun forall!16270 (List!67613 Int) Bool)

(assert (=> d!2187280 (forall!16270 (++!15376 (exprs!6852 lt!2508748) (exprs!6852 ct2!306)) lambda!410178)))

(declare-fun lt!2508858 () Unit!161394)

(declare-fun choose!52849 (List!67613 List!67613 Int) Unit!161394)

(assert (=> d!2187280 (= lt!2508858 (choose!52849 (exprs!6852 lt!2508748) (exprs!6852 ct2!306) lambda!410178))))

(assert (=> d!2187280 (forall!16270 (exprs!6852 lt!2508748) lambda!410178)))

(assert (=> d!2187280 (= (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508748) (exprs!6852 ct2!306) lambda!410178) lt!2508858)))

(declare-fun bs!1866957 () Bool)

(assert (= bs!1866957 d!2187280))

(assert (=> bs!1866957 m!7716692))

(assert (=> bs!1866957 m!7716692))

(declare-fun m!7716832 () Bool)

(assert (=> bs!1866957 m!7716832))

(declare-fun m!7716834 () Bool)

(assert (=> bs!1866957 m!7716834))

(declare-fun m!7716836 () Bool)

(assert (=> bs!1866957 m!7716836))

(assert (=> b!7016821 d!2187280))

(declare-fun d!2187282 () Bool)

(declare-fun c!1303755 () Bool)

(declare-fun isEmpty!39417 (List!67614) Bool)

(assert (=> d!2187282 (= c!1303755 (isEmpty!39417 s!7408))))

(declare-fun e!4218012 () Bool)

(assert (=> d!2187282 (= (matchZipper!2896 lt!2508747 s!7408) e!4218012)))

(declare-fun b!7016917 () Bool)

(declare-fun nullableZipper!2505 ((Set Context!12704)) Bool)

(assert (=> b!7016917 (= e!4218012 (nullableZipper!2505 lt!2508747))))

(declare-fun b!7016918 () Bool)

(declare-fun head!14195 (List!67614) C!34982)

(declare-fun tail!13450 (List!67614) List!67614)

(assert (=> b!7016918 (= e!4218012 (matchZipper!2896 (derivationStepZipper!2836 lt!2508747 (head!14195 s!7408)) (tail!13450 s!7408)))))

(assert (= (and d!2187282 c!1303755) b!7016917))

(assert (= (and d!2187282 (not c!1303755)) b!7016918))

(declare-fun m!7716838 () Bool)

(assert (=> d!2187282 m!7716838))

(declare-fun m!7716840 () Bool)

(assert (=> b!7016917 m!7716840))

(declare-fun m!7716842 () Bool)

(assert (=> b!7016918 m!7716842))

(assert (=> b!7016918 m!7716842))

(declare-fun m!7716844 () Bool)

(assert (=> b!7016918 m!7716844))

(declare-fun m!7716846 () Bool)

(assert (=> b!7016918 m!7716846))

(assert (=> b!7016918 m!7716844))

(assert (=> b!7016918 m!7716846))

(declare-fun m!7716848 () Bool)

(assert (=> b!7016918 m!7716848))

(assert (=> start!676324 d!2187282))

(declare-fun bs!1866958 () Bool)

(declare-fun d!2187284 () Bool)

(assert (= bs!1866958 (and d!2187284 b!7016820)))

(declare-fun lambda!410213 () Int)

(assert (=> bs!1866958 (= lambda!410213 lambda!410177)))

(assert (=> d!2187284 true))

(declare-fun map!15648 ((Set Context!12704) Int) (Set Context!12704))

(assert (=> d!2187284 (= (appendTo!477 z1!570 ct2!306) (map!15648 z1!570 lambda!410213))))

(declare-fun bs!1866959 () Bool)

(assert (= bs!1866959 d!2187284))

(declare-fun m!7716850 () Bool)

(assert (=> bs!1866959 m!7716850))

(assert (=> start!676324 d!2187284))

(declare-fun bs!1866960 () Bool)

(declare-fun d!2187286 () Bool)

(assert (= bs!1866960 (and d!2187286 b!7016820)))

(declare-fun lambda!410216 () Int)

(assert (=> bs!1866960 (= lambda!410216 lambda!410178)))

(assert (=> d!2187286 (= (inv!86250 ct2!306) (forall!16270 (exprs!6852 ct2!306) lambda!410216))))

(declare-fun bs!1866961 () Bool)

(assert (= bs!1866961 d!2187286))

(declare-fun m!7716852 () Bool)

(assert (=> bs!1866961 m!7716852))

(assert (=> start!676324 d!2187286))

(declare-fun b!7016930 () Bool)

(declare-fun e!4218017 () Bool)

(declare-fun lt!2508863 () List!67613)

(assert (=> b!7016930 (= e!4218017 (or (not (= (exprs!6852 ct2!306) Nil!67489)) (= lt!2508863 (exprs!6852 lt!2508748))))))

(declare-fun d!2187288 () Bool)

(assert (=> d!2187288 e!4218017))

(declare-fun res!2863859 () Bool)

(assert (=> d!2187288 (=> (not res!2863859) (not e!4218017))))

(declare-fun content!13419 (List!67613) (Set Regex!17356))

(assert (=> d!2187288 (= res!2863859 (= (content!13419 lt!2508863) (set.union (content!13419 (exprs!6852 lt!2508748)) (content!13419 (exprs!6852 ct2!306)))))))

(declare-fun e!4218018 () List!67613)

(assert (=> d!2187288 (= lt!2508863 e!4218018)))

(declare-fun c!1303759 () Bool)

(assert (=> d!2187288 (= c!1303759 (is-Nil!67489 (exprs!6852 lt!2508748)))))

(assert (=> d!2187288 (= (++!15376 (exprs!6852 lt!2508748) (exprs!6852 ct2!306)) lt!2508863)))

(declare-fun b!7016928 () Bool)

(assert (=> b!7016928 (= e!4218018 (Cons!67489 (h!73937 (exprs!6852 lt!2508748)) (++!15376 (t!381368 (exprs!6852 lt!2508748)) (exprs!6852 ct2!306))))))

(declare-fun b!7016929 () Bool)

(declare-fun res!2863858 () Bool)

(assert (=> b!7016929 (=> (not res!2863858) (not e!4218017))))

(declare-fun size!40999 (List!67613) Int)

(assert (=> b!7016929 (= res!2863858 (= (size!40999 lt!2508863) (+ (size!40999 (exprs!6852 lt!2508748)) (size!40999 (exprs!6852 ct2!306)))))))

(declare-fun b!7016927 () Bool)

(assert (=> b!7016927 (= e!4218018 (exprs!6852 ct2!306))))

(assert (= (and d!2187288 c!1303759) b!7016927))

(assert (= (and d!2187288 (not c!1303759)) b!7016928))

(assert (= (and d!2187288 res!2863859) b!7016929))

(assert (= (and b!7016929 res!2863858) b!7016930))

(declare-fun m!7716854 () Bool)

(assert (=> d!2187288 m!7716854))

(declare-fun m!7716856 () Bool)

(assert (=> d!2187288 m!7716856))

(declare-fun m!7716858 () Bool)

(assert (=> d!2187288 m!7716858))

(declare-fun m!7716860 () Bool)

(assert (=> b!7016928 m!7716860))

(declare-fun m!7716862 () Bool)

(assert (=> b!7016929 m!7716862))

(declare-fun m!7716864 () Bool)

(assert (=> b!7016929 m!7716864))

(declare-fun m!7716866 () Bool)

(assert (=> b!7016929 m!7716866))

(assert (=> b!7016820 d!2187288))

(assert (=> b!7016820 d!2187280))

(declare-fun d!2187290 () Bool)

(declare-fun e!4218021 () Bool)

(assert (=> d!2187290 e!4218021))

(declare-fun res!2863862 () Bool)

(assert (=> d!2187290 (=> (not res!2863862) (not e!4218021))))

(declare-fun lt!2508866 () Context!12704)

(declare-fun dynLambda!27178 (Int Context!12704) Context!12704)

(assert (=> d!2187290 (= res!2863862 (= lt!2508766 (dynLambda!27178 lambda!410177 lt!2508866)))))

(declare-fun choose!52850 ((Set Context!12704) Int Context!12704) Context!12704)

(assert (=> d!2187290 (= lt!2508866 (choose!52850 z1!570 lambda!410177 lt!2508766))))

(assert (=> d!2187290 (set.member lt!2508766 (map!15648 z1!570 lambda!410177))))

(assert (=> d!2187290 (= (mapPost2!211 z1!570 lambda!410177 lt!2508766) lt!2508866)))

(declare-fun b!7016934 () Bool)

(assert (=> b!7016934 (= e!4218021 (set.member lt!2508866 z1!570))))

(assert (= (and d!2187290 res!2863862) b!7016934))

(declare-fun b_lambda!264821 () Bool)

(assert (=> (not b_lambda!264821) (not d!2187290)))

(declare-fun m!7716868 () Bool)

(assert (=> d!2187290 m!7716868))

(declare-fun m!7716870 () Bool)

(assert (=> d!2187290 m!7716870))

(declare-fun m!7716872 () Bool)

(assert (=> d!2187290 m!7716872))

(declare-fun m!7716874 () Bool)

(assert (=> d!2187290 m!7716874))

(declare-fun m!7716876 () Bool)

(assert (=> b!7016934 m!7716876))

(assert (=> b!7016820 d!2187290))

(declare-fun b!7016944 () Bool)

(declare-fun e!4218027 () List!67614)

(assert (=> b!7016944 (= e!4218027 (Cons!67490 (h!73938 (_1!37300 lt!2508767)) (++!15377 (t!381369 (_1!37300 lt!2508767)) (_2!37300 lt!2508767))))))

(declare-fun d!2187292 () Bool)

(declare-fun e!4218026 () Bool)

(assert (=> d!2187292 e!4218026))

(declare-fun res!2863868 () Bool)

(assert (=> d!2187292 (=> (not res!2863868) (not e!4218026))))

(declare-fun lt!2508869 () List!67614)

(declare-fun content!13420 (List!67614) (Set C!34982))

(assert (=> d!2187292 (= res!2863868 (= (content!13420 lt!2508869) (set.union (content!13420 (_1!37300 lt!2508767)) (content!13420 (_2!37300 lt!2508767)))))))

(assert (=> d!2187292 (= lt!2508869 e!4218027)))

(declare-fun c!1303762 () Bool)

(assert (=> d!2187292 (= c!1303762 (is-Nil!67490 (_1!37300 lt!2508767)))))

(assert (=> d!2187292 (= (++!15377 (_1!37300 lt!2508767) (_2!37300 lt!2508767)) lt!2508869)))

(declare-fun b!7016946 () Bool)

(assert (=> b!7016946 (= e!4218026 (or (not (= (_2!37300 lt!2508767) Nil!67490)) (= lt!2508869 (_1!37300 lt!2508767))))))

(declare-fun b!7016945 () Bool)

(declare-fun res!2863867 () Bool)

(assert (=> b!7016945 (=> (not res!2863867) (not e!4218026))))

(declare-fun size!41000 (List!67614) Int)

(assert (=> b!7016945 (= res!2863867 (= (size!41000 lt!2508869) (+ (size!41000 (_1!37300 lt!2508767)) (size!41000 (_2!37300 lt!2508767)))))))

(declare-fun b!7016943 () Bool)

(assert (=> b!7016943 (= e!4218027 (_2!37300 lt!2508767))))

(assert (= (and d!2187292 c!1303762) b!7016943))

(assert (= (and d!2187292 (not c!1303762)) b!7016944))

(assert (= (and d!2187292 res!2863868) b!7016945))

(assert (= (and b!7016945 res!2863867) b!7016946))

(declare-fun m!7716878 () Bool)

(assert (=> b!7016944 m!7716878))

(declare-fun m!7716880 () Bool)

(assert (=> d!2187292 m!7716880))

(declare-fun m!7716882 () Bool)

(assert (=> d!2187292 m!7716882))

(declare-fun m!7716884 () Bool)

(assert (=> d!2187292 m!7716884))

(declare-fun m!7716886 () Bool)

(assert (=> b!7016945 m!7716886))

(declare-fun m!7716888 () Bool)

(assert (=> b!7016945 m!7716888))

(declare-fun m!7716890 () Bool)

(assert (=> b!7016945 m!7716890))

(assert (=> b!7016828 d!2187292))

(declare-fun d!2187294 () Bool)

(declare-fun nullableFct!2698 (Regex!17356) Bool)

(assert (=> d!2187294 (= (nullable!7116 (h!73937 (exprs!6852 lt!2508748))) (nullableFct!2698 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun bs!1866962 () Bool)

(assert (= bs!1866962 d!2187294))

(declare-fun m!7716892 () Bool)

(assert (=> bs!1866962 m!7716892))

(assert (=> b!7016819 d!2187294))

(declare-fun d!2187296 () Bool)

(assert (=> d!2187296 (= (tail!13448 (exprs!6852 lt!2508748)) (t!381368 (exprs!6852 lt!2508748)))))

(assert (=> b!7016819 d!2187296))

(declare-fun d!2187298 () Bool)

(declare-fun c!1303763 () Bool)

(assert (=> d!2187298 (= c!1303763 (isEmpty!39417 s!7408))))

(declare-fun e!4218028 () Bool)

(assert (=> d!2187298 (= (matchZipper!2896 lt!2508759 s!7408) e!4218028)))

(declare-fun b!7016947 () Bool)

(assert (=> b!7016947 (= e!4218028 (nullableZipper!2505 lt!2508759))))

(declare-fun b!7016948 () Bool)

(assert (=> b!7016948 (= e!4218028 (matchZipper!2896 (derivationStepZipper!2836 lt!2508759 (head!14195 s!7408)) (tail!13450 s!7408)))))

(assert (= (and d!2187298 c!1303763) b!7016947))

(assert (= (and d!2187298 (not c!1303763)) b!7016948))

(assert (=> d!2187298 m!7716838))

(declare-fun m!7716894 () Bool)

(assert (=> b!7016947 m!7716894))

(assert (=> b!7016948 m!7716842))

(assert (=> b!7016948 m!7716842))

(declare-fun m!7716896 () Bool)

(assert (=> b!7016948 m!7716896))

(assert (=> b!7016948 m!7716846))

(assert (=> b!7016948 m!7716896))

(assert (=> b!7016948 m!7716846))

(declare-fun m!7716898 () Bool)

(assert (=> b!7016948 m!7716898))

(assert (=> b!7016827 d!2187298))

(declare-fun d!2187300 () Bool)

(declare-fun e!4218031 () Bool)

(assert (=> d!2187300 e!4218031))

(declare-fun res!2863872 () Bool)

(assert (=> d!2187300 (=> (not res!2863872) (not e!4218031))))

(declare-fun lt!2508872 () List!67615)

(declare-fun noDuplicate!2583 (List!67615) Bool)

(assert (=> d!2187300 (= res!2863872 (noDuplicate!2583 lt!2508872))))

(declare-fun choose!52851 ((Set Context!12704)) List!67615)

(assert (=> d!2187300 (= lt!2508872 (choose!52851 lt!2508747))))

(assert (=> d!2187300 (= (toList!10716 lt!2508747) lt!2508872)))

(declare-fun b!7016951 () Bool)

(declare-fun content!13421 (List!67615) (Set Context!12704))

(assert (=> b!7016951 (= e!4218031 (= (content!13421 lt!2508872) lt!2508747))))

(assert (= (and d!2187300 res!2863872) b!7016951))

(declare-fun m!7716900 () Bool)

(assert (=> d!2187300 m!7716900))

(declare-fun m!7716902 () Bool)

(assert (=> d!2187300 m!7716902))

(declare-fun m!7716904 () Bool)

(assert (=> b!7016951 m!7716904))

(assert (=> b!7016827 d!2187300))

(declare-fun bs!1866963 () Bool)

(declare-fun d!2187302 () Bool)

(assert (= bs!1866963 (and d!2187302 b!7016827)))

(declare-fun lambda!410219 () Int)

(assert (=> bs!1866963 (not (= lambda!410219 lambda!410176))))

(assert (=> d!2187302 true))

(declare-fun order!28069 () Int)

(declare-fun dynLambda!27179 (Int Int) Int)

(assert (=> d!2187302 (< (dynLambda!27179 order!28069 lambda!410176) (dynLambda!27179 order!28069 lambda!410219))))

(declare-fun forall!16271 (List!67615 Int) Bool)

(assert (=> d!2187302 (= (exists!3222 lt!2508749 lambda!410176) (not (forall!16271 lt!2508749 lambda!410219)))))

(declare-fun bs!1866964 () Bool)

(assert (= bs!1866964 d!2187302))

(declare-fun m!7716906 () Bool)

(assert (=> bs!1866964 m!7716906))

(assert (=> b!7016827 d!2187302))

(declare-fun bs!1866965 () Bool)

(declare-fun d!2187304 () Bool)

(assert (= bs!1866965 (and d!2187304 b!7016827)))

(declare-fun lambda!410222 () Int)

(assert (=> bs!1866965 (= lambda!410222 lambda!410176)))

(declare-fun bs!1866966 () Bool)

(assert (= bs!1866966 (and d!2187304 d!2187302)))

(assert (=> bs!1866966 (not (= lambda!410222 lambda!410219))))

(assert (=> d!2187304 true))

(assert (=> d!2187304 (exists!3222 lt!2508749 lambda!410222)))

(declare-fun lt!2508875 () Unit!161394)

(declare-fun choose!52852 (List!67615 List!67614) Unit!161394)

(assert (=> d!2187304 (= lt!2508875 (choose!52852 lt!2508749 s!7408))))

(assert (=> d!2187304 (matchZipper!2896 (content!13421 lt!2508749) s!7408)))

(assert (=> d!2187304 (= (lemmaZipperMatchesExistsMatchingContext!325 lt!2508749 s!7408) lt!2508875)))

(declare-fun bs!1866967 () Bool)

(assert (= bs!1866967 d!2187304))

(declare-fun m!7716908 () Bool)

(assert (=> bs!1866967 m!7716908))

(declare-fun m!7716910 () Bool)

(assert (=> bs!1866967 m!7716910))

(declare-fun m!7716912 () Bool)

(assert (=> bs!1866967 m!7716912))

(assert (=> bs!1866967 m!7716912))

(declare-fun m!7716914 () Bool)

(assert (=> bs!1866967 m!7716914))

(assert (=> b!7016827 d!2187304))

(declare-fun d!2187306 () Bool)

(declare-fun e!4218034 () Bool)

(assert (=> d!2187306 e!4218034))

(declare-fun res!2863875 () Bool)

(assert (=> d!2187306 (=> (not res!2863875) (not e!4218034))))

(declare-fun lt!2508878 () Context!12704)

(declare-fun dynLambda!27180 (Int Context!12704) Bool)

(assert (=> d!2187306 (= res!2863875 (dynLambda!27180 lambda!410176 lt!2508878))))

(declare-fun getWitness!1317 (List!67615 Int) Context!12704)

(assert (=> d!2187306 (= lt!2508878 (getWitness!1317 (toList!10716 lt!2508747) lambda!410176))))

(declare-fun exists!3224 ((Set Context!12704) Int) Bool)

(assert (=> d!2187306 (exists!3224 lt!2508747 lambda!410176)))

(assert (=> d!2187306 (= (getWitness!1315 lt!2508747 lambda!410176) lt!2508878)))

(declare-fun b!7016956 () Bool)

(assert (=> b!7016956 (= e!4218034 (set.member lt!2508878 lt!2508747))))

(assert (= (and d!2187306 res!2863875) b!7016956))

(declare-fun b_lambda!264823 () Bool)

(assert (=> (not b_lambda!264823) (not d!2187306)))

(declare-fun m!7716916 () Bool)

(assert (=> d!2187306 m!7716916))

(assert (=> d!2187306 m!7716660))

(assert (=> d!2187306 m!7716660))

(declare-fun m!7716918 () Bool)

(assert (=> d!2187306 m!7716918))

(declare-fun m!7716920 () Bool)

(assert (=> d!2187306 m!7716920))

(declare-fun m!7716922 () Bool)

(assert (=> b!7016956 m!7716922))

(assert (=> b!7016827 d!2187306))

(declare-fun d!2187308 () Bool)

(assert (=> d!2187308 (= (flatMap!2342 lt!2508757 lambda!410179) (choose!52847 lt!2508757 lambda!410179))))

(declare-fun bs!1866968 () Bool)

(assert (= bs!1866968 d!2187308))

(declare-fun m!7716924 () Bool)

(assert (=> bs!1866968 m!7716924))

(assert (=> b!7016818 d!2187308))

(declare-fun bs!1866969 () Bool)

(declare-fun d!2187310 () Bool)

(assert (= bs!1866969 (and d!2187310 b!7016818)))

(declare-fun lambda!410223 () Int)

(assert (=> bs!1866969 (= lambda!410223 lambda!410179)))

(declare-fun bs!1866970 () Bool)

(assert (= bs!1866970 (and d!2187310 d!2187272)))

(assert (=> bs!1866970 (= lambda!410223 lambda!410208)))

(assert (=> d!2187310 true))

(assert (=> d!2187310 (= (derivationStepZipper!2836 lt!2508757 (h!73938 s!7408)) (flatMap!2342 lt!2508757 lambda!410223))))

(declare-fun bs!1866971 () Bool)

(assert (= bs!1866971 d!2187310))

(declare-fun m!7716926 () Bool)

(assert (=> bs!1866971 m!7716926))

(assert (=> b!7016818 d!2187310))

(declare-fun d!2187312 () Bool)

(assert (=> d!2187312 (= (flatMap!2342 lt!2508757 lambda!410179) (dynLambda!27177 lambda!410179 lt!2508751))))

(declare-fun lt!2508879 () Unit!161394)

(assert (=> d!2187312 (= lt!2508879 (choose!52848 lt!2508757 lt!2508751 lambda!410179))))

(assert (=> d!2187312 (= lt!2508757 (set.insert lt!2508751 (as set.empty (Set Context!12704))))))

(assert (=> d!2187312 (= (lemmaFlatMapOnSingletonSet!1857 lt!2508757 lt!2508751 lambda!410179) lt!2508879)))

(declare-fun b_lambda!264825 () Bool)

(assert (=> (not b_lambda!264825) (not d!2187312)))

(declare-fun bs!1866972 () Bool)

(assert (= bs!1866972 d!2187312))

(assert (=> bs!1866972 m!7716670))

(declare-fun m!7716928 () Bool)

(assert (=> bs!1866972 m!7716928))

(declare-fun m!7716930 () Bool)

(assert (=> bs!1866972 m!7716930))

(assert (=> bs!1866972 m!7716680))

(assert (=> b!7016818 d!2187312))

(assert (=> b!7016818 d!2187280))

(declare-fun bm!637337 () Bool)

(declare-fun call!637342 () (Set Context!12704))

(assert (=> bm!637337 (= call!637342 (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508751)) (Context!12705 (t!381368 (exprs!6852 lt!2508751))) (h!73938 s!7408)))))

(declare-fun b!7016957 () Bool)

(declare-fun e!4218036 () (Set Context!12704))

(declare-fun e!4218037 () (Set Context!12704))

(assert (=> b!7016957 (= e!4218036 e!4218037)))

(declare-fun c!1303766 () Bool)

(assert (=> b!7016957 (= c!1303766 (is-Cons!67489 (exprs!6852 lt!2508751)))))

(declare-fun b!7016959 () Bool)

(declare-fun e!4218035 () Bool)

(assert (=> b!7016959 (= e!4218035 (nullable!7116 (h!73937 (exprs!6852 lt!2508751))))))

(declare-fun b!7016960 () Bool)

(assert (=> b!7016960 (= e!4218037 call!637342)))

(declare-fun b!7016961 () Bool)

(assert (=> b!7016961 (= e!4218036 (set.union call!637342 (derivationStepZipperUp!2006 (Context!12705 (t!381368 (exprs!6852 lt!2508751))) (h!73938 s!7408))))))

(declare-fun b!7016958 () Bool)

(assert (=> b!7016958 (= e!4218037 (as set.empty (Set Context!12704)))))

(declare-fun d!2187314 () Bool)

(declare-fun c!1303767 () Bool)

(assert (=> d!2187314 (= c!1303767 e!4218035)))

(declare-fun res!2863876 () Bool)

(assert (=> d!2187314 (=> (not res!2863876) (not e!4218035))))

(assert (=> d!2187314 (= res!2863876 (is-Cons!67489 (exprs!6852 lt!2508751)))))

(assert (=> d!2187314 (= (derivationStepZipperUp!2006 lt!2508751 (h!73938 s!7408)) e!4218036)))

(assert (= (and d!2187314 res!2863876) b!7016959))

(assert (= (and d!2187314 c!1303767) b!7016961))

(assert (= (and d!2187314 (not c!1303767)) b!7016957))

(assert (= (and b!7016957 c!1303766) b!7016960))

(assert (= (and b!7016957 (not c!1303766)) b!7016958))

(assert (= (or b!7016961 b!7016960) bm!637337))

(declare-fun m!7716932 () Bool)

(assert (=> bm!637337 m!7716932))

(declare-fun m!7716934 () Bool)

(assert (=> b!7016959 m!7716934))

(declare-fun m!7716936 () Bool)

(assert (=> b!7016961 m!7716936))

(assert (=> b!7016818 d!2187314))

(declare-fun d!2187316 () Bool)

(assert (=> d!2187316 (isDefined!13530 (findConcatSeparationZippers!345 lt!2508761 (set.insert ct2!306 (as set.empty (Set Context!12704))) Nil!67490 (t!381369 s!7408) (t!381369 s!7408)))))

(declare-fun lt!2508882 () Unit!161394)

(declare-fun choose!52853 ((Set Context!12704) Context!12704 List!67614) Unit!161394)

(assert (=> d!2187316 (= lt!2508882 (choose!52853 lt!2508761 ct2!306 (t!381369 s!7408)))))

(assert (=> d!2187316 (matchZipper!2896 (appendTo!477 lt!2508761 ct2!306) (t!381369 s!7408))))

(assert (=> d!2187316 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!345 lt!2508761 ct2!306 (t!381369 s!7408)) lt!2508882)))

(declare-fun bs!1866973 () Bool)

(assert (= bs!1866973 d!2187316))

(assert (=> bs!1866973 m!7716700))

(declare-fun m!7716938 () Bool)

(assert (=> bs!1866973 m!7716938))

(assert (=> bs!1866973 m!7716700))

(declare-fun m!7716940 () Bool)

(assert (=> bs!1866973 m!7716940))

(assert (=> bs!1866973 m!7716702))

(declare-fun m!7716942 () Bool)

(assert (=> bs!1866973 m!7716942))

(assert (=> bs!1866973 m!7716702))

(assert (=> bs!1866973 m!7716940))

(declare-fun m!7716944 () Bool)

(assert (=> bs!1866973 m!7716944))

(assert (=> b!7016817 d!2187316))

(declare-fun bs!1866974 () Bool)

(declare-fun d!2187318 () Bool)

(assert (= bs!1866974 (and d!2187318 b!7016820)))

(declare-fun lambda!410226 () Int)

(assert (=> bs!1866974 (= lambda!410226 lambda!410178)))

(declare-fun bs!1866975 () Bool)

(assert (= bs!1866975 (and d!2187318 d!2187286)))

(assert (=> bs!1866975 (= lambda!410226 lambda!410216)))

(assert (=> d!2187318 (= (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) (Context!12705 (++!15376 (exprs!6852 lt!2508755) (exprs!6852 ct2!306))) (h!73938 s!7408)) (appendTo!477 (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) lt!2508755 (h!73938 s!7408)) ct2!306))))

(declare-fun lt!2508888 () Unit!161394)

(assert (=> d!2187318 (= lt!2508888 (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508755) (exprs!6852 ct2!306) lambda!410226))))

(declare-fun lt!2508887 () Unit!161394)

(declare-fun choose!52854 (Context!12704 Regex!17356 C!34982 Context!12704) Unit!161394)

(assert (=> d!2187318 (= lt!2508887 (choose!52854 lt!2508755 (h!73937 (exprs!6852 lt!2508748)) (h!73938 s!7408) ct2!306))))

(assert (=> d!2187318 (validRegex!8907 (h!73937 (exprs!6852 lt!2508748)))))

(assert (=> d!2187318 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!47 lt!2508755 (h!73937 (exprs!6852 lt!2508748)) (h!73938 s!7408) ct2!306) lt!2508887)))

(declare-fun bs!1866976 () Bool)

(assert (= bs!1866976 d!2187318))

(declare-fun m!7716946 () Bool)

(assert (=> bs!1866976 m!7716946))

(assert (=> bs!1866976 m!7716698))

(declare-fun m!7716948 () Bool)

(assert (=> bs!1866976 m!7716948))

(assert (=> bs!1866976 m!7716698))

(declare-fun m!7716950 () Bool)

(assert (=> bs!1866976 m!7716950))

(assert (=> bs!1866976 m!7716648))

(declare-fun m!7716952 () Bool)

(assert (=> bs!1866976 m!7716952))

(declare-fun m!7716954 () Bool)

(assert (=> bs!1866976 m!7716954))

(assert (=> b!7016817 d!2187318))

(declare-fun d!2187320 () Bool)

(declare-fun isEmpty!39418 (Option!16829) Bool)

(assert (=> d!2187320 (= (isDefined!13530 lt!2508745) (not (isEmpty!39418 lt!2508745)))))

(declare-fun bs!1866977 () Bool)

(assert (= bs!1866977 d!2187320))

(declare-fun m!7716956 () Bool)

(assert (=> bs!1866977 m!7716956))

(assert (=> b!7016817 d!2187320))

(declare-fun bs!1866978 () Bool)

(declare-fun d!2187322 () Bool)

(assert (= bs!1866978 (and d!2187322 b!7016820)))

(declare-fun lambda!410227 () Int)

(assert (=> bs!1866978 (= lambda!410227 lambda!410177)))

(declare-fun bs!1866979 () Bool)

(assert (= bs!1866979 (and d!2187322 d!2187284)))

(assert (=> bs!1866979 (= lambda!410227 lambda!410213)))

(assert (=> d!2187322 true))

(assert (=> d!2187322 (= (appendTo!477 lt!2508761 ct2!306) (map!15648 lt!2508761 lambda!410227))))

(declare-fun bs!1866980 () Bool)

(assert (= bs!1866980 d!2187322))

(declare-fun m!7716958 () Bool)

(assert (=> bs!1866980 m!7716958))

(assert (=> b!7016817 d!2187322))

(declare-fun d!2187324 () Bool)

(declare-fun c!1303769 () Bool)

(assert (=> d!2187324 (= c!1303769 (isEmpty!39417 (_1!37300 lt!2508767)))))

(declare-fun e!4218038 () Bool)

(assert (=> d!2187324 (= (matchZipper!2896 lt!2508761 (_1!37300 lt!2508767)) e!4218038)))

(declare-fun b!7016962 () Bool)

(assert (=> b!7016962 (= e!4218038 (nullableZipper!2505 lt!2508761))))

(declare-fun b!7016963 () Bool)

(assert (=> b!7016963 (= e!4218038 (matchZipper!2896 (derivationStepZipper!2836 lt!2508761 (head!14195 (_1!37300 lt!2508767))) (tail!13450 (_1!37300 lt!2508767))))))

(assert (= (and d!2187324 c!1303769) b!7016962))

(assert (= (and d!2187324 (not c!1303769)) b!7016963))

(declare-fun m!7716960 () Bool)

(assert (=> d!2187324 m!7716960))

(declare-fun m!7716962 () Bool)

(assert (=> b!7016962 m!7716962))

(declare-fun m!7716964 () Bool)

(assert (=> b!7016963 m!7716964))

(assert (=> b!7016963 m!7716964))

(declare-fun m!7716966 () Bool)

(assert (=> b!7016963 m!7716966))

(declare-fun m!7716968 () Bool)

(assert (=> b!7016963 m!7716968))

(assert (=> b!7016963 m!7716966))

(assert (=> b!7016963 m!7716968))

(declare-fun m!7716970 () Bool)

(assert (=> b!7016963 m!7716970))

(assert (=> b!7016817 d!2187324))

(declare-fun c!1303780 () Bool)

(declare-fun call!637357 () List!67613)

(declare-fun bm!637350 () Bool)

(declare-fun call!637356 () (Set Context!12704))

(assert (=> bm!637350 (= call!637356 (derivationStepZipperDown!2074 (ite c!1303780 (regOne!35225 (h!73937 (exprs!6852 lt!2508748))) (regOne!35224 (h!73937 (exprs!6852 lt!2508748)))) (ite c!1303780 lt!2508755 (Context!12705 call!637357)) (h!73938 s!7408)))))

(declare-fun bm!637351 () Bool)

(declare-fun call!637359 () (Set Context!12704))

(declare-fun call!637360 () (Set Context!12704))

(assert (=> bm!637351 (= call!637359 call!637360)))

(declare-fun b!7016987 () Bool)

(declare-fun e!4218053 () (Set Context!12704))

(declare-fun e!4218056 () (Set Context!12704))

(assert (=> b!7016987 (= e!4218053 e!4218056)))

(declare-fun c!1303783 () Bool)

(assert (=> b!7016987 (= c!1303783 (is-Concat!26201 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7016988 () Bool)

(assert (=> b!7016988 (= e!4218056 call!637359)))

(declare-fun b!7016989 () Bool)

(declare-fun e!4218051 () (Set Context!12704))

(declare-fun e!4218054 () (Set Context!12704))

(assert (=> b!7016989 (= e!4218051 e!4218054)))

(assert (=> b!7016989 (= c!1303780 (is-Union!17356 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7016990 () Bool)

(declare-fun c!1303782 () Bool)

(declare-fun e!4218055 () Bool)

(assert (=> b!7016990 (= c!1303782 e!4218055)))

(declare-fun res!2863879 () Bool)

(assert (=> b!7016990 (=> (not res!2863879) (not e!4218055))))

(assert (=> b!7016990 (= res!2863879 (is-Concat!26201 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> b!7016990 (= e!4218054 e!4218053)))

(declare-fun bm!637352 () Bool)

(declare-fun $colon$colon!2545 (List!67613 Regex!17356) List!67613)

(assert (=> bm!637352 (= call!637357 ($colon$colon!2545 (exprs!6852 lt!2508755) (ite (or c!1303782 c!1303783) (regTwo!35224 (h!73937 (exprs!6852 lt!2508748))) (h!73937 (exprs!6852 lt!2508748)))))))

(declare-fun b!7016991 () Bool)

(declare-fun e!4218052 () (Set Context!12704))

(assert (=> b!7016991 (= e!4218052 (as set.empty (Set Context!12704)))))

(declare-fun bm!637353 () Bool)

(declare-fun call!637358 () List!67613)

(assert (=> bm!637353 (= call!637358 call!637357)))

(declare-fun b!7016992 () Bool)

(assert (=> b!7016992 (= e!4218051 (set.insert lt!2508755 (as set.empty (Set Context!12704))))))

(declare-fun b!7016993 () Bool)

(assert (=> b!7016993 (= e!4218055 (nullable!7116 (regOne!35224 (h!73937 (exprs!6852 lt!2508748)))))))

(declare-fun b!7016994 () Bool)

(assert (=> b!7016994 (= e!4218053 (set.union call!637356 call!637360))))

(declare-fun bm!637354 () Bool)

(declare-fun call!637355 () (Set Context!12704))

(assert (=> bm!637354 (= call!637360 call!637355)))

(declare-fun b!7016995 () Bool)

(declare-fun c!1303781 () Bool)

(assert (=> b!7016995 (= c!1303781 (is-Star!17356 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> b!7016995 (= e!4218056 e!4218052)))

(declare-fun b!7016996 () Bool)

(assert (=> b!7016996 (= e!4218052 call!637359)))

(declare-fun bm!637355 () Bool)

(assert (=> bm!637355 (= call!637355 (derivationStepZipperDown!2074 (ite c!1303780 (regTwo!35225 (h!73937 (exprs!6852 lt!2508748))) (ite c!1303782 (regTwo!35224 (h!73937 (exprs!6852 lt!2508748))) (ite c!1303783 (regOne!35224 (h!73937 (exprs!6852 lt!2508748))) (reg!17685 (h!73937 (exprs!6852 lt!2508748)))))) (ite (or c!1303780 c!1303782) lt!2508755 (Context!12705 call!637358)) (h!73938 s!7408)))))

(declare-fun b!7016986 () Bool)

(assert (=> b!7016986 (= e!4218054 (set.union call!637356 call!637355))))

(declare-fun d!2187326 () Bool)

(declare-fun c!1303784 () Bool)

(assert (=> d!2187326 (= c!1303784 (and (is-ElementMatch!17356 (h!73937 (exprs!6852 lt!2508748))) (= (c!1303733 (h!73937 (exprs!6852 lt!2508748))) (h!73938 s!7408))))))

(assert (=> d!2187326 (= (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) lt!2508755 (h!73938 s!7408)) e!4218051)))

(assert (= (and d!2187326 c!1303784) b!7016992))

(assert (= (and d!2187326 (not c!1303784)) b!7016989))

(assert (= (and b!7016989 c!1303780) b!7016986))

(assert (= (and b!7016989 (not c!1303780)) b!7016990))

(assert (= (and b!7016990 res!2863879) b!7016993))

(assert (= (and b!7016990 c!1303782) b!7016994))

(assert (= (and b!7016990 (not c!1303782)) b!7016987))

(assert (= (and b!7016987 c!1303783) b!7016988))

(assert (= (and b!7016987 (not c!1303783)) b!7016995))

(assert (= (and b!7016995 c!1303781) b!7016996))

(assert (= (and b!7016995 (not c!1303781)) b!7016991))

(assert (= (or b!7016988 b!7016996) bm!637353))

(assert (= (or b!7016988 b!7016996) bm!637351))

(assert (= (or b!7016994 bm!637351) bm!637354))

(assert (= (or b!7016994 bm!637353) bm!637352))

(assert (= (or b!7016986 b!7016994) bm!637350))

(assert (= (or b!7016986 bm!637354) bm!637355))

(declare-fun m!7716972 () Bool)

(assert (=> b!7016992 m!7716972))

(declare-fun m!7716974 () Bool)

(assert (=> bm!637355 m!7716974))

(declare-fun m!7716976 () Bool)

(assert (=> bm!637352 m!7716976))

(declare-fun m!7716978 () Bool)

(assert (=> bm!637350 m!7716978))

(declare-fun m!7716980 () Bool)

(assert (=> b!7016993 m!7716980))

(assert (=> b!7016817 d!2187326))

(declare-fun b!7017027 () Bool)

(declare-fun res!2863892 () Bool)

(declare-fun e!4218074 () Bool)

(assert (=> b!7017027 (=> (not res!2863892) (not e!4218074))))

(declare-fun lt!2508897 () Option!16829)

(assert (=> b!7017027 (= res!2863892 (matchZipper!2896 lt!2508758 (_2!37300 (get!23666 lt!2508897))))))

(declare-fun d!2187328 () Bool)

(declare-fun e!4218076 () Bool)

(assert (=> d!2187328 e!4218076))

(declare-fun res!2863895 () Bool)

(assert (=> d!2187328 (=> res!2863895 e!4218076)))

(assert (=> d!2187328 (= res!2863895 e!4218074)))

(declare-fun res!2863893 () Bool)

(assert (=> d!2187328 (=> (not res!2863893) (not e!4218074))))

(assert (=> d!2187328 (= res!2863893 (isDefined!13530 lt!2508897))))

(declare-fun e!4218075 () Option!16829)

(assert (=> d!2187328 (= lt!2508897 e!4218075)))

(declare-fun c!1303795 () Bool)

(declare-fun e!4218077 () Bool)

(assert (=> d!2187328 (= c!1303795 e!4218077)))

(declare-fun res!2863896 () Bool)

(assert (=> d!2187328 (=> (not res!2863896) (not e!4218077))))

(assert (=> d!2187328 (= res!2863896 (matchZipper!2896 lt!2508761 Nil!67490))))

(assert (=> d!2187328 (= (++!15377 Nil!67490 (t!381369 s!7408)) (t!381369 s!7408))))

(assert (=> d!2187328 (= (findConcatSeparationZippers!345 lt!2508761 lt!2508758 Nil!67490 (t!381369 s!7408) (t!381369 s!7408)) lt!2508897)))

(declare-fun b!7017028 () Bool)

(declare-fun lt!2508895 () Unit!161394)

(declare-fun lt!2508896 () Unit!161394)

(assert (=> b!7017028 (= lt!2508895 lt!2508896)))

(assert (=> b!7017028 (= (++!15377 (++!15377 Nil!67490 (Cons!67490 (h!73938 (t!381369 s!7408)) Nil!67490)) (t!381369 (t!381369 s!7408))) (t!381369 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2903 (List!67614 C!34982 List!67614 List!67614) Unit!161394)

(assert (=> b!7017028 (= lt!2508896 (lemmaMoveElementToOtherListKeepsConcatEq!2903 Nil!67490 (h!73938 (t!381369 s!7408)) (t!381369 (t!381369 s!7408)) (t!381369 s!7408)))))

(declare-fun e!4218073 () Option!16829)

(assert (=> b!7017028 (= e!4218073 (findConcatSeparationZippers!345 lt!2508761 lt!2508758 (++!15377 Nil!67490 (Cons!67490 (h!73938 (t!381369 s!7408)) Nil!67490)) (t!381369 (t!381369 s!7408)) (t!381369 s!7408)))))

(declare-fun b!7017029 () Bool)

(assert (=> b!7017029 (= e!4218074 (= (++!15377 (_1!37300 (get!23666 lt!2508897)) (_2!37300 (get!23666 lt!2508897))) (t!381369 s!7408)))))

(declare-fun b!7017030 () Bool)

(assert (=> b!7017030 (= e!4218077 (matchZipper!2896 lt!2508758 (t!381369 s!7408)))))

(declare-fun b!7017031 () Bool)

(declare-fun res!2863894 () Bool)

(assert (=> b!7017031 (=> (not res!2863894) (not e!4218074))))

(assert (=> b!7017031 (= res!2863894 (matchZipper!2896 lt!2508761 (_1!37300 (get!23666 lt!2508897))))))

(declare-fun b!7017032 () Bool)

(assert (=> b!7017032 (= e!4218073 None!16828)))

(declare-fun b!7017033 () Bool)

(assert (=> b!7017033 (= e!4218076 (not (isDefined!13530 lt!2508897)))))

(declare-fun b!7017034 () Bool)

(assert (=> b!7017034 (= e!4218075 (Some!16828 (tuple2!67995 Nil!67490 (t!381369 s!7408))))))

(declare-fun b!7017035 () Bool)

(assert (=> b!7017035 (= e!4218075 e!4218073)))

(declare-fun c!1303796 () Bool)

(assert (=> b!7017035 (= c!1303796 (is-Nil!67490 (t!381369 s!7408)))))

(assert (= (and d!2187328 res!2863896) b!7017030))

(assert (= (and d!2187328 c!1303795) b!7017034))

(assert (= (and d!2187328 (not c!1303795)) b!7017035))

(assert (= (and b!7017035 c!1303796) b!7017032))

(assert (= (and b!7017035 (not c!1303796)) b!7017028))

(assert (= (and d!2187328 res!2863893) b!7017031))

(assert (= (and b!7017031 res!2863894) b!7017027))

(assert (= (and b!7017027 res!2863892) b!7017029))

(assert (= (and d!2187328 (not res!2863895)) b!7017033))

(declare-fun m!7716986 () Bool)

(assert (=> b!7017029 m!7716986))

(declare-fun m!7716988 () Bool)

(assert (=> b!7017029 m!7716988))

(declare-fun m!7716990 () Bool)

(assert (=> b!7017028 m!7716990))

(assert (=> b!7017028 m!7716990))

(declare-fun m!7716992 () Bool)

(assert (=> b!7017028 m!7716992))

(declare-fun m!7716994 () Bool)

(assert (=> b!7017028 m!7716994))

(assert (=> b!7017028 m!7716990))

(declare-fun m!7716996 () Bool)

(assert (=> b!7017028 m!7716996))

(assert (=> b!7017027 m!7716986))

(declare-fun m!7716998 () Bool)

(assert (=> b!7017027 m!7716998))

(declare-fun m!7717000 () Bool)

(assert (=> d!2187328 m!7717000))

(declare-fun m!7717002 () Bool)

(assert (=> d!2187328 m!7717002))

(declare-fun m!7717004 () Bool)

(assert (=> d!2187328 m!7717004))

(assert (=> b!7017033 m!7717000))

(assert (=> b!7017031 m!7716986))

(declare-fun m!7717006 () Bool)

(assert (=> b!7017031 m!7717006))

(declare-fun m!7717008 () Bool)

(assert (=> b!7017030 m!7717008))

(assert (=> b!7016817 d!2187328))

(declare-fun d!2187336 () Bool)

(assert (=> d!2187336 (= (get!23666 lt!2508745) (v!53106 lt!2508745))))

(assert (=> b!7016817 d!2187336))

(declare-fun d!2187338 () Bool)

(assert (=> d!2187338 (forall!16270 (++!15376 lt!2508768 (exprs!6852 ct2!306)) lambda!410178)))

(declare-fun lt!2508898 () Unit!161394)

(assert (=> d!2187338 (= lt!2508898 (choose!52849 lt!2508768 (exprs!6852 ct2!306) lambda!410178))))

(assert (=> d!2187338 (forall!16270 lt!2508768 lambda!410178)))

(assert (=> d!2187338 (= (lemmaConcatPreservesForall!692 lt!2508768 (exprs!6852 ct2!306) lambda!410178) lt!2508898)))

(declare-fun bs!1866984 () Bool)

(assert (= bs!1866984 d!2187338))

(assert (=> bs!1866984 m!7716684))

(assert (=> bs!1866984 m!7716684))

(declare-fun m!7717010 () Bool)

(assert (=> bs!1866984 m!7717010))

(declare-fun m!7717012 () Bool)

(assert (=> bs!1866984 m!7717012))

(declare-fun m!7717014 () Bool)

(assert (=> bs!1866984 m!7717014))

(assert (=> b!7016817 d!2187338))

(declare-fun d!2187340 () Bool)

(declare-fun c!1303797 () Bool)

(assert (=> d!2187340 (= c!1303797 (isEmpty!39417 (t!381369 s!7408)))))

(declare-fun e!4218078 () Bool)

(assert (=> d!2187340 (= (matchZipper!2896 lt!2508756 (t!381369 s!7408)) e!4218078)))

(declare-fun b!7017036 () Bool)

(assert (=> b!7017036 (= e!4218078 (nullableZipper!2505 lt!2508756))))

(declare-fun b!7017037 () Bool)

(assert (=> b!7017037 (= e!4218078 (matchZipper!2896 (derivationStepZipper!2836 lt!2508756 (head!14195 (t!381369 s!7408))) (tail!13450 (t!381369 s!7408))))))

(assert (= (and d!2187340 c!1303797) b!7017036))

(assert (= (and d!2187340 (not c!1303797)) b!7017037))

(declare-fun m!7717016 () Bool)

(assert (=> d!2187340 m!7717016))

(declare-fun m!7717018 () Bool)

(assert (=> b!7017036 m!7717018))

(declare-fun m!7717020 () Bool)

(assert (=> b!7017037 m!7717020))

(assert (=> b!7017037 m!7717020))

(declare-fun m!7717022 () Bool)

(assert (=> b!7017037 m!7717022))

(declare-fun m!7717024 () Bool)

(assert (=> b!7017037 m!7717024))

(assert (=> b!7017037 m!7717022))

(assert (=> b!7017037 m!7717024))

(declare-fun m!7717026 () Bool)

(assert (=> b!7017037 m!7717026))

(assert (=> b!7016825 d!2187340))

(declare-fun c!1303798 () Bool)

(declare-fun bm!637358 () Bool)

(declare-fun call!637364 () (Set Context!12704))

(declare-fun call!637365 () List!67613)

(assert (=> bm!637358 (= call!637364 (derivationStepZipperDown!2074 (ite c!1303798 (regOne!35225 (h!73937 (exprs!6852 lt!2508748))) (regOne!35224 (h!73937 (exprs!6852 lt!2508748)))) (ite c!1303798 (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306))) (Context!12705 call!637365)) (h!73938 s!7408)))))

(declare-fun bm!637359 () Bool)

(declare-fun call!637367 () (Set Context!12704))

(declare-fun call!637368 () (Set Context!12704))

(assert (=> bm!637359 (= call!637367 call!637368)))

(declare-fun b!7017039 () Bool)

(declare-fun e!4218081 () (Set Context!12704))

(declare-fun e!4218084 () (Set Context!12704))

(assert (=> b!7017039 (= e!4218081 e!4218084)))

(declare-fun c!1303801 () Bool)

(assert (=> b!7017039 (= c!1303801 (is-Concat!26201 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7017040 () Bool)

(assert (=> b!7017040 (= e!4218084 call!637367)))

(declare-fun b!7017041 () Bool)

(declare-fun e!4218079 () (Set Context!12704))

(declare-fun e!4218082 () (Set Context!12704))

(assert (=> b!7017041 (= e!4218079 e!4218082)))

(assert (=> b!7017041 (= c!1303798 (is-Union!17356 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7017042 () Bool)

(declare-fun c!1303800 () Bool)

(declare-fun e!4218083 () Bool)

(assert (=> b!7017042 (= c!1303800 e!4218083)))

(declare-fun res!2863897 () Bool)

(assert (=> b!7017042 (=> (not res!2863897) (not e!4218083))))

(assert (=> b!7017042 (= res!2863897 (is-Concat!26201 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> b!7017042 (= e!4218082 e!4218081)))

(declare-fun bm!637360 () Bool)

(assert (=> bm!637360 (= call!637365 ($colon$colon!2545 (exprs!6852 (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306)))) (ite (or c!1303800 c!1303801) (regTwo!35224 (h!73937 (exprs!6852 lt!2508748))) (h!73937 (exprs!6852 lt!2508748)))))))

(declare-fun b!7017043 () Bool)

(declare-fun e!4218080 () (Set Context!12704))

(assert (=> b!7017043 (= e!4218080 (as set.empty (Set Context!12704)))))

(declare-fun bm!637361 () Bool)

(declare-fun call!637366 () List!67613)

(assert (=> bm!637361 (= call!637366 call!637365)))

(declare-fun b!7017044 () Bool)

(assert (=> b!7017044 (= e!4218079 (set.insert (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306))) (as set.empty (Set Context!12704))))))

(declare-fun b!7017045 () Bool)

(assert (=> b!7017045 (= e!4218083 (nullable!7116 (regOne!35224 (h!73937 (exprs!6852 lt!2508748)))))))

(declare-fun b!7017046 () Bool)

(assert (=> b!7017046 (= e!4218081 (set.union call!637364 call!637368))))

(declare-fun bm!637362 () Bool)

(declare-fun call!637363 () (Set Context!12704))

(assert (=> bm!637362 (= call!637368 call!637363)))

(declare-fun b!7017047 () Bool)

(declare-fun c!1303799 () Bool)

(assert (=> b!7017047 (= c!1303799 (is-Star!17356 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> b!7017047 (= e!4218084 e!4218080)))

(declare-fun b!7017048 () Bool)

(assert (=> b!7017048 (= e!4218080 call!637367)))

(declare-fun bm!637363 () Bool)

(assert (=> bm!637363 (= call!637363 (derivationStepZipperDown!2074 (ite c!1303798 (regTwo!35225 (h!73937 (exprs!6852 lt!2508748))) (ite c!1303800 (regTwo!35224 (h!73937 (exprs!6852 lt!2508748))) (ite c!1303801 (regOne!35224 (h!73937 (exprs!6852 lt!2508748))) (reg!17685 (h!73937 (exprs!6852 lt!2508748)))))) (ite (or c!1303798 c!1303800) (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306))) (Context!12705 call!637366)) (h!73938 s!7408)))))

(declare-fun b!7017038 () Bool)

(assert (=> b!7017038 (= e!4218082 (set.union call!637364 call!637363))))

(declare-fun d!2187342 () Bool)

(declare-fun c!1303802 () Bool)

(assert (=> d!2187342 (= c!1303802 (and (is-ElementMatch!17356 (h!73937 (exprs!6852 lt!2508748))) (= (c!1303733 (h!73937 (exprs!6852 lt!2508748))) (h!73938 s!7408))))))

(assert (=> d!2187342 (= (derivationStepZipperDown!2074 (h!73937 (exprs!6852 lt!2508748)) (Context!12705 (++!15376 lt!2508768 (exprs!6852 ct2!306))) (h!73938 s!7408)) e!4218079)))

(assert (= (and d!2187342 c!1303802) b!7017044))

(assert (= (and d!2187342 (not c!1303802)) b!7017041))

(assert (= (and b!7017041 c!1303798) b!7017038))

(assert (= (and b!7017041 (not c!1303798)) b!7017042))

(assert (= (and b!7017042 res!2863897) b!7017045))

(assert (= (and b!7017042 c!1303800) b!7017046))

(assert (= (and b!7017042 (not c!1303800)) b!7017039))

(assert (= (and b!7017039 c!1303801) b!7017040))

(assert (= (and b!7017039 (not c!1303801)) b!7017047))

(assert (= (and b!7017047 c!1303799) b!7017048))

(assert (= (and b!7017047 (not c!1303799)) b!7017043))

(assert (= (or b!7017040 b!7017048) bm!637361))

(assert (= (or b!7017040 b!7017048) bm!637359))

(assert (= (or b!7017046 bm!637359) bm!637362))

(assert (= (or b!7017046 bm!637361) bm!637360))

(assert (= (or b!7017038 b!7017046) bm!637358))

(assert (= (or b!7017038 bm!637362) bm!637363))

(declare-fun m!7717028 () Bool)

(assert (=> b!7017044 m!7717028))

(declare-fun m!7717030 () Bool)

(assert (=> bm!637363 m!7717030))

(declare-fun m!7717032 () Bool)

(assert (=> bm!637360 m!7717032))

(declare-fun m!7717034 () Bool)

(assert (=> bm!637358 m!7717034))

(assert (=> b!7017045 m!7716980))

(assert (=> b!7016825 d!2187342))

(declare-fun b!7017052 () Bool)

(declare-fun e!4218085 () Bool)

(declare-fun lt!2508899 () List!67613)

(assert (=> b!7017052 (= e!4218085 (or (not (= (exprs!6852 ct2!306) Nil!67489)) (= lt!2508899 lt!2508768)))))

(declare-fun d!2187344 () Bool)

(assert (=> d!2187344 e!4218085))

(declare-fun res!2863899 () Bool)

(assert (=> d!2187344 (=> (not res!2863899) (not e!4218085))))

(assert (=> d!2187344 (= res!2863899 (= (content!13419 lt!2508899) (set.union (content!13419 lt!2508768) (content!13419 (exprs!6852 ct2!306)))))))

(declare-fun e!4218086 () List!67613)

(assert (=> d!2187344 (= lt!2508899 e!4218086)))

(declare-fun c!1303803 () Bool)

(assert (=> d!2187344 (= c!1303803 (is-Nil!67489 lt!2508768))))

(assert (=> d!2187344 (= (++!15376 lt!2508768 (exprs!6852 ct2!306)) lt!2508899)))

(declare-fun b!7017050 () Bool)

(assert (=> b!7017050 (= e!4218086 (Cons!67489 (h!73937 lt!2508768) (++!15376 (t!381368 lt!2508768) (exprs!6852 ct2!306))))))

(declare-fun b!7017051 () Bool)

(declare-fun res!2863898 () Bool)

(assert (=> b!7017051 (=> (not res!2863898) (not e!4218085))))

(assert (=> b!7017051 (= res!2863898 (= (size!40999 lt!2508899) (+ (size!40999 lt!2508768) (size!40999 (exprs!6852 ct2!306)))))))

(declare-fun b!7017049 () Bool)

(assert (=> b!7017049 (= e!4218086 (exprs!6852 ct2!306))))

(assert (= (and d!2187344 c!1303803) b!7017049))

(assert (= (and d!2187344 (not c!1303803)) b!7017050))

(assert (= (and d!2187344 res!2863899) b!7017051))

(assert (= (and b!7017051 res!2863898) b!7017052))

(declare-fun m!7717036 () Bool)

(assert (=> d!2187344 m!7717036))

(declare-fun m!7717038 () Bool)

(assert (=> d!2187344 m!7717038))

(assert (=> d!2187344 m!7716858))

(declare-fun m!7717040 () Bool)

(assert (=> b!7017050 m!7717040))

(declare-fun m!7717042 () Bool)

(assert (=> b!7017051 m!7717042))

(declare-fun m!7717044 () Bool)

(assert (=> b!7017051 m!7717044))

(assert (=> b!7017051 m!7716866))

(assert (=> b!7016825 d!2187344))

(assert (=> b!7016825 d!2187338))

(declare-fun b!7017076 () Bool)

(declare-fun e!4218110 () Bool)

(declare-fun e!4218108 () Bool)

(assert (=> b!7017076 (= e!4218110 e!4218108)))

(declare-fun res!2863912 () Bool)

(assert (=> b!7017076 (=> (not res!2863912) (not e!4218108))))

(declare-fun call!637376 () Bool)

(assert (=> b!7017076 (= res!2863912 call!637376)))

(declare-fun b!7017077 () Bool)

(declare-fun e!4218109 () Bool)

(declare-fun call!637377 () Bool)

(assert (=> b!7017077 (= e!4218109 call!637377)))

(declare-fun b!7017078 () Bool)

(declare-fun e!4218106 () Bool)

(declare-fun e!4218104 () Bool)

(assert (=> b!7017078 (= e!4218106 e!4218104)))

(declare-fun c!1303811 () Bool)

(assert (=> b!7017078 (= c!1303811 (is-Union!17356 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun bm!637371 () Bool)

(declare-fun call!637378 () Bool)

(assert (=> bm!637371 (= call!637378 (validRegex!8907 (ite c!1303811 (regTwo!35225 (h!73937 (exprs!6852 lt!2508748))) (regTwo!35224 (h!73937 (exprs!6852 lt!2508748))))))))

(declare-fun bm!637372 () Bool)

(assert (=> bm!637372 (= call!637376 call!637377)))

(declare-fun b!7017080 () Bool)

(assert (=> b!7017080 (= e!4218106 e!4218109)))

(declare-fun res!2863913 () Bool)

(assert (=> b!7017080 (= res!2863913 (not (nullable!7116 (reg!17685 (h!73937 (exprs!6852 lt!2508748))))))))

(assert (=> b!7017080 (=> (not res!2863913) (not e!4218109))))

(declare-fun bm!637373 () Bool)

(declare-fun c!1303810 () Bool)

(assert (=> bm!637373 (= call!637377 (validRegex!8907 (ite c!1303810 (reg!17685 (h!73937 (exprs!6852 lt!2508748))) (ite c!1303811 (regOne!35225 (h!73937 (exprs!6852 lt!2508748))) (regOne!35224 (h!73937 (exprs!6852 lt!2508748)))))))))

(declare-fun b!7017081 () Bool)

(declare-fun res!2863915 () Bool)

(declare-fun e!4218105 () Bool)

(assert (=> b!7017081 (=> (not res!2863915) (not e!4218105))))

(assert (=> b!7017081 (= res!2863915 call!637376)))

(assert (=> b!7017081 (= e!4218104 e!4218105)))

(declare-fun b!7017082 () Bool)

(declare-fun res!2863914 () Bool)

(assert (=> b!7017082 (=> res!2863914 e!4218110)))

(assert (=> b!7017082 (= res!2863914 (not (is-Concat!26201 (h!73937 (exprs!6852 lt!2508748)))))))

(assert (=> b!7017082 (= e!4218104 e!4218110)))

(declare-fun b!7017083 () Bool)

(declare-fun e!4218107 () Bool)

(assert (=> b!7017083 (= e!4218107 e!4218106)))

(assert (=> b!7017083 (= c!1303810 (is-Star!17356 (h!73937 (exprs!6852 lt!2508748))))))

(declare-fun b!7017084 () Bool)

(assert (=> b!7017084 (= e!4218108 call!637378)))

(declare-fun b!7017079 () Bool)

(assert (=> b!7017079 (= e!4218105 call!637378)))

(declare-fun d!2187346 () Bool)

(declare-fun res!2863911 () Bool)

(assert (=> d!2187346 (=> res!2863911 e!4218107)))

(assert (=> d!2187346 (= res!2863911 (is-ElementMatch!17356 (h!73937 (exprs!6852 lt!2508748))))))

(assert (=> d!2187346 (= (validRegex!8907 (h!73937 (exprs!6852 lt!2508748))) e!4218107)))

(assert (= (and d!2187346 (not res!2863911)) b!7017083))

(assert (= (and b!7017083 c!1303810) b!7017080))

(assert (= (and b!7017083 (not c!1303810)) b!7017078))

(assert (= (and b!7017080 res!2863913) b!7017077))

(assert (= (and b!7017078 c!1303811) b!7017081))

(assert (= (and b!7017078 (not c!1303811)) b!7017082))

(assert (= (and b!7017081 res!2863915) b!7017079))

(assert (= (and b!7017082 (not res!2863914)) b!7017076))

(assert (= (and b!7017076 res!2863912) b!7017084))

(assert (= (or b!7017079 b!7017084) bm!637371))

(assert (= (or b!7017081 b!7017076) bm!637372))

(assert (= (or b!7017077 bm!637372) bm!637373))

(declare-fun m!7717050 () Bool)

(assert (=> bm!637371 m!7717050))

(declare-fun m!7717052 () Bool)

(assert (=> b!7017080 m!7717052))

(declare-fun m!7717054 () Bool)

(assert (=> bm!637373 m!7717054))

(assert (=> b!7016824 d!2187346))

(declare-fun d!2187350 () Bool)

(declare-fun c!1303812 () Bool)

(assert (=> d!2187350 (= c!1303812 (isEmpty!39417 (_2!37300 lt!2508767)))))

(declare-fun e!4218111 () Bool)

(assert (=> d!2187350 (= (matchZipper!2896 lt!2508758 (_2!37300 lt!2508767)) e!4218111)))

(declare-fun b!7017085 () Bool)

(assert (=> b!7017085 (= e!4218111 (nullableZipper!2505 lt!2508758))))

(declare-fun b!7017086 () Bool)

(assert (=> b!7017086 (= e!4218111 (matchZipper!2896 (derivationStepZipper!2836 lt!2508758 (head!14195 (_2!37300 lt!2508767))) (tail!13450 (_2!37300 lt!2508767))))))

(assert (= (and d!2187350 c!1303812) b!7017085))

(assert (= (and d!2187350 (not c!1303812)) b!7017086))

(declare-fun m!7717060 () Bool)

(assert (=> d!2187350 m!7717060))

(declare-fun m!7717062 () Bool)

(assert (=> b!7017085 m!7717062))

(declare-fun m!7717064 () Bool)

(assert (=> b!7017086 m!7717064))

(assert (=> b!7017086 m!7717064))

(declare-fun m!7717066 () Bool)

(assert (=> b!7017086 m!7717066))

(declare-fun m!7717068 () Bool)

(assert (=> b!7017086 m!7717068))

(assert (=> b!7017086 m!7717066))

(assert (=> b!7017086 m!7717068))

(declare-fun m!7717070 () Bool)

(assert (=> b!7017086 m!7717070))

(assert (=> b!7016823 d!2187350))

(declare-fun d!2187354 () Bool)

(assert (=> d!2187354 (= (isEmpty!39415 (exprs!6852 lt!2508748)) (is-Nil!67489 (exprs!6852 lt!2508748)))))

(assert (=> b!7016814 d!2187354))

(declare-fun bs!1866986 () Bool)

(declare-fun d!2187356 () Bool)

(assert (= bs!1866986 (and d!2187356 b!7016820)))

(declare-fun lambda!410231 () Int)

(assert (=> bs!1866986 (= lambda!410231 lambda!410178)))

(declare-fun bs!1866987 () Bool)

(assert (= bs!1866987 (and d!2187356 d!2187286)))

(assert (=> bs!1866987 (= lambda!410231 lambda!410216)))

(declare-fun bs!1866988 () Bool)

(assert (= bs!1866988 (and d!2187356 d!2187318)))

(assert (=> bs!1866988 (= lambda!410231 lambda!410226)))

(assert (=> d!2187356 (= (inv!86250 setElem!48549) (forall!16270 (exprs!6852 setElem!48549) lambda!410231))))

(declare-fun bs!1866989 () Bool)

(assert (= bs!1866989 d!2187356))

(declare-fun m!7717072 () Bool)

(assert (=> bs!1866989 m!7717072))

(assert (=> setNonEmpty!48549 d!2187356))

(declare-fun b!7017091 () Bool)

(declare-fun e!4218114 () Bool)

(declare-fun tp!1933360 () Bool)

(assert (=> b!7017091 (= e!4218114 (and tp_is_empty!43937 tp!1933360))))

(assert (=> b!7016812 (= tp!1933342 e!4218114)))

(assert (= (and b!7016812 (is-Cons!67490 (t!381369 s!7408))) b!7017091))

(declare-fun b!7017096 () Bool)

(declare-fun e!4218117 () Bool)

(declare-fun tp!1933365 () Bool)

(declare-fun tp!1933366 () Bool)

(assert (=> b!7017096 (= e!4218117 (and tp!1933365 tp!1933366))))

(assert (=> b!7016816 (= tp!1933345 e!4218117)))

(assert (= (and b!7016816 (is-Cons!67489 (exprs!6852 ct2!306))) b!7017096))

(declare-fun b!7017097 () Bool)

(declare-fun e!4218118 () Bool)

(declare-fun tp!1933367 () Bool)

(declare-fun tp!1933368 () Bool)

(assert (=> b!7017097 (= e!4218118 (and tp!1933367 tp!1933368))))

(assert (=> b!7016815 (= tp!1933344 e!4218118)))

(assert (= (and b!7016815 (is-Cons!67489 (exprs!6852 setElem!48549))) b!7017097))

(declare-fun condSetEmpty!48555 () Bool)

(assert (=> setNonEmpty!48549 (= condSetEmpty!48555 (= setRest!48549 (as set.empty (Set Context!12704))))))

(declare-fun setRes!48555 () Bool)

(assert (=> setNonEmpty!48549 (= tp!1933343 setRes!48555)))

(declare-fun setIsEmpty!48555 () Bool)

(assert (=> setIsEmpty!48555 setRes!48555))

(declare-fun setElem!48555 () Context!12704)

(declare-fun e!4218121 () Bool)

(declare-fun tp!1933373 () Bool)

(declare-fun setNonEmpty!48555 () Bool)

(assert (=> setNonEmpty!48555 (= setRes!48555 (and tp!1933373 (inv!86250 setElem!48555) e!4218121))))

(declare-fun setRest!48555 () (Set Context!12704))

(assert (=> setNonEmpty!48555 (= setRest!48549 (set.union (set.insert setElem!48555 (as set.empty (Set Context!12704))) setRest!48555))))

(declare-fun b!7017102 () Bool)

(declare-fun tp!1933374 () Bool)

(assert (=> b!7017102 (= e!4218121 tp!1933374)))

(assert (= (and setNonEmpty!48549 condSetEmpty!48555) setIsEmpty!48555))

(assert (= (and setNonEmpty!48549 (not condSetEmpty!48555)) setNonEmpty!48555))

(assert (= setNonEmpty!48555 b!7017102))

(declare-fun m!7717074 () Bool)

(assert (=> setNonEmpty!48555 m!7717074))

(declare-fun b_lambda!264829 () Bool)

(assert (= b_lambda!264823 (or b!7016827 b_lambda!264829)))

(declare-fun bs!1866990 () Bool)

(declare-fun d!2187358 () Bool)

(assert (= bs!1866990 (and d!2187358 b!7016827)))

(assert (=> bs!1866990 (= (dynLambda!27180 lambda!410176 lt!2508878) (matchZipper!2896 (set.insert lt!2508878 (as set.empty (Set Context!12704))) s!7408))))

(declare-fun m!7717076 () Bool)

(assert (=> bs!1866990 m!7717076))

(assert (=> bs!1866990 m!7717076))

(declare-fun m!7717078 () Bool)

(assert (=> bs!1866990 m!7717078))

(assert (=> d!2187306 d!2187358))

(declare-fun b_lambda!264831 () Bool)

(assert (= b_lambda!264819 (or b!7016818 b_lambda!264831)))

(declare-fun bs!1866991 () Bool)

(declare-fun d!2187360 () Bool)

(assert (= bs!1866991 (and d!2187360 b!7016818)))

(assert (=> bs!1866991 (= (dynLambda!27177 lambda!410179 lt!2508748) (derivationStepZipperUp!2006 lt!2508748 (h!73938 s!7408)))))

(assert (=> bs!1866991 m!7716720))

(assert (=> d!2187278 d!2187360))

(declare-fun b_lambda!264833 () Bool)

(assert (= b_lambda!264821 (or b!7016820 b_lambda!264833)))

(declare-fun bs!1866992 () Bool)

(declare-fun d!2187362 () Bool)

(assert (= bs!1866992 (and d!2187362 b!7016820)))

(declare-fun lt!2508903 () Unit!161394)

(assert (=> bs!1866992 (= lt!2508903 (lemmaConcatPreservesForall!692 (exprs!6852 lt!2508866) (exprs!6852 ct2!306) lambda!410178))))

(assert (=> bs!1866992 (= (dynLambda!27178 lambda!410177 lt!2508866) (Context!12705 (++!15376 (exprs!6852 lt!2508866) (exprs!6852 ct2!306))))))

(declare-fun m!7717080 () Bool)

(assert (=> bs!1866992 m!7717080))

(declare-fun m!7717082 () Bool)

(assert (=> bs!1866992 m!7717082))

(assert (=> d!2187290 d!2187362))

(declare-fun b_lambda!264835 () Bool)

(assert (= b_lambda!264825 (or b!7016818 b_lambda!264835)))

(declare-fun bs!1866993 () Bool)

(declare-fun d!2187364 () Bool)

(assert (= bs!1866993 (and d!2187364 b!7016818)))

(assert (=> bs!1866993 (= (dynLambda!27177 lambda!410179 lt!2508751) (derivationStepZipperUp!2006 lt!2508751 (h!73938 s!7408)))))

(assert (=> bs!1866993 m!7716672))

(assert (=> d!2187312 d!2187364))

(push 1)

(assert (not d!2187278))

(assert (not d!2187284))

(assert (not d!2187286))

(assert (not b!7016961))

(assert (not d!2187306))

(assert (not b!7017096))

(assert (not bs!1866992))

(assert (not b!7016948))

(assert (not d!2187272))

(assert (not b!7017030))

(assert (not b!7017036))

(assert (not b!7017031))

(assert (not b_lambda!264835))

(assert (not d!2187312))

(assert (not b!7017102))

(assert (not b!7017037))

(assert (not b!7017086))

(assert (not b!7017029))

(assert (not d!2187328))

(assert (not b!7017085))

(assert (not d!2187298))

(assert (not b!7016945))

(assert (not d!2187292))

(assert (not d!2187350))

(assert (not b!7017051))

(assert (not bm!637336))

(assert (not d!2187320))

(assert (not d!2187304))

(assert (not bm!637373))

(assert tp_is_empty!43937)

(assert (not bs!1866993))

(assert (not b!7017091))

(assert (not d!2187344))

(assert (not d!2187356))

(assert (not b!7017097))

(assert (not bm!637358))

(assert (not d!2187340))

(assert (not b!7017045))

(assert (not b!7016917))

(assert (not bm!637352))

(assert (not b!7016928))

(assert (not d!2187300))

(assert (not b!7016947))

(assert (not b!7016912))

(assert (not b!7016962))

(assert (not bm!637363))

(assert (not b!7016951))

(assert (not bm!637360))

(assert (not d!2187310))

(assert (not bs!1866990))

(assert (not b!7016944))

(assert (not d!2187338))

(assert (not b!7016959))

(assert (not bm!637371))

(assert (not b!7017033))

(assert (not d!2187318))

(assert (not b!7017050))

(assert (not bs!1866991))

(assert (not b!7016918))

(assert (not d!2187308))

(assert (not b!7017028))

(assert (not bm!637350))

(assert (not d!2187282))

(assert (not d!2187274))

(assert (not b!7017027))

(assert (not d!2187302))

(assert (not d!2187288))

(assert (not d!2187290))

(assert (not b!7016993))

(assert (not b_lambda!264829))

(assert (not b!7016929))

(assert (not b!7017080))

(assert (not b!7016910))

(assert (not b_lambda!264831))

(assert (not d!2187322))

(assert (not d!2187294))

(assert (not d!2187324))

(assert (not setNonEmpty!48555))

(assert (not d!2187280))

(assert (not b_lambda!264833))

(assert (not bm!637355))

(assert (not b!7016963))

(assert (not bm!637337))

(assert (not d!2187316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

