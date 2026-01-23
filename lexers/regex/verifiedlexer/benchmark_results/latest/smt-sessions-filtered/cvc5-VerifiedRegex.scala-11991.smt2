; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671868 () Bool)

(assert start!671868)

(declare-fun b!6990719 () Bool)

(assert (=> b!6990719 true))

(declare-fun b!6990731 () Bool)

(assert (=> b!6990731 true))

(declare-fun b!6990726 () Bool)

(assert (=> b!6990726 true))

(declare-fun b!6990713 () Bool)

(declare-fun res!2851061 () Bool)

(declare-fun e!4201829 () Bool)

(assert (=> b!6990713 (=> (not res!2851061) (not e!4201829))))

(declare-datatypes ((C!34726 0))(
  ( (C!34727 (val!27065 Int)) )
))
(declare-datatypes ((List!67229 0))(
  ( (Nil!67105) (Cons!67105 (h!73553 C!34726) (t!380976 List!67229)) )
))
(declare-fun s!7408 () List!67229)

(assert (=> b!6990713 (= res!2851061 (is-Cons!67105 s!7408))))

(declare-fun b!6990714 () Bool)

(declare-fun e!4201827 () Bool)

(declare-fun tp_is_empty!43681 () Bool)

(declare-fun tp!1929887 () Bool)

(assert (=> b!6990714 (= e!4201827 (and tp_is_empty!43681 tp!1929887))))

(declare-fun b!6990715 () Bool)

(declare-fun res!2851058 () Bool)

(declare-fun e!4201834 () Bool)

(assert (=> b!6990715 (=> res!2851058 e!4201834)))

(declare-fun lt!2487942 () Bool)

(assert (=> b!6990715 (= res!2851058 (not lt!2487942))))

(declare-fun b!6990716 () Bool)

(declare-fun res!2851064 () Bool)

(declare-fun e!4201830 () Bool)

(assert (=> b!6990716 (=> res!2851064 e!4201830)))

(declare-datatypes ((Regex!17228 0))(
  ( (ElementMatch!17228 (c!1296655 C!34726)) (Concat!26073 (regOne!34968 Regex!17228) (regTwo!34968 Regex!17228)) (EmptyExpr!17228) (Star!17228 (reg!17557 Regex!17228)) (EmptyLang!17228) (Union!17228 (regOne!34969 Regex!17228) (regTwo!34969 Regex!17228)) )
))
(declare-datatypes ((List!67230 0))(
  ( (Nil!67106) (Cons!67106 (h!73554 Regex!17228) (t!380977 List!67230)) )
))
(declare-datatypes ((Context!12448 0))(
  ( (Context!12449 (exprs!6724 List!67230)) )
))
(declare-fun lt!2487940 () Context!12448)

(assert (=> b!6990716 (= res!2851064 (not (is-Cons!67106 (exprs!6724 lt!2487940))))))

(declare-fun b!6990717 () Bool)

(declare-fun e!4201835 () Bool)

(declare-fun tp!1929885 () Bool)

(assert (=> b!6990717 (= e!4201835 tp!1929885)))

(declare-fun b!6990718 () Bool)

(declare-fun res!2851060 () Bool)

(declare-fun e!4201837 () Bool)

(assert (=> b!6990718 (=> res!2851060 e!4201837)))

(declare-fun lt!2487919 () Context!12448)

(declare-fun lt!2487931 () (Set Context!12448))

(assert (=> b!6990718 (= res!2851060 (not (set.member lt!2487919 lt!2487931)))))

(assert (=> b!6990719 (= e!4201829 (not e!4201837))))

(declare-fun res!2851068 () Bool)

(assert (=> b!6990719 (=> res!2851068 e!4201837)))

(declare-fun lt!2487921 () (Set Context!12448))

(declare-fun matchZipper!2768 ((Set Context!12448) List!67229) Bool)

(assert (=> b!6990719 (= res!2851068 (not (matchZipper!2768 lt!2487921 s!7408)))))

(assert (=> b!6990719 (= lt!2487921 (set.insert lt!2487919 (as set.empty (Set Context!12448))))))

(declare-fun lambda!402107 () Int)

(declare-fun getWitness!1129 ((Set Context!12448) Int) Context!12448)

(assert (=> b!6990719 (= lt!2487919 (getWitness!1129 lt!2487931 lambda!402107))))

(declare-datatypes ((List!67231 0))(
  ( (Nil!67107) (Cons!67107 (h!73555 Context!12448) (t!380978 List!67231)) )
))
(declare-fun lt!2487933 () List!67231)

(declare-fun exists!3018 (List!67231 Int) Bool)

(assert (=> b!6990719 (exists!3018 lt!2487933 lambda!402107)))

(declare-datatypes ((Unit!161111 0))(
  ( (Unit!161112) )
))
(declare-fun lt!2487928 () Unit!161111)

(declare-fun lemmaZipperMatchesExistsMatchingContext!197 (List!67231 List!67229) Unit!161111)

(assert (=> b!6990719 (= lt!2487928 (lemmaZipperMatchesExistsMatchingContext!197 lt!2487933 s!7408))))

(declare-fun toList!10588 ((Set Context!12448)) List!67231)

(assert (=> b!6990719 (= lt!2487933 (toList!10588 lt!2487931))))

(declare-fun b!6990720 () Bool)

(declare-fun e!4201825 () Bool)

(declare-fun e!4201826 () Bool)

(assert (=> b!6990720 (= e!4201825 e!4201826)))

(declare-fun res!2851072 () Bool)

(assert (=> b!6990720 (=> res!2851072 e!4201826)))

(declare-fun lt!2487920 () (Set Context!12448))

(assert (=> b!6990720 (= res!2851072 (not (matchZipper!2768 lt!2487920 s!7408)))))

(declare-fun lambda!402109 () Int)

(declare-fun lt!2487952 () Unit!161111)

(declare-fun lt!2487929 () List!67230)

(declare-fun ct2!306 () Context!12448)

(declare-fun lemmaConcatPreservesForall!564 (List!67230 List!67230 Int) Unit!161111)

(assert (=> b!6990720 (= lt!2487952 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun res!2851071 () Bool)

(assert (=> start!671868 (=> (not res!2851071) (not e!4201829))))

(assert (=> start!671868 (= res!2851071 (matchZipper!2768 lt!2487931 s!7408))))

(declare-fun z1!570 () (Set Context!12448))

(declare-fun appendTo!349 ((Set Context!12448) Context!12448) (Set Context!12448))

(assert (=> start!671868 (= lt!2487931 (appendTo!349 z1!570 ct2!306))))

(assert (=> start!671868 e!4201829))

(declare-fun condSetEmpty!47850 () Bool)

(assert (=> start!671868 (= condSetEmpty!47850 (= z1!570 (as set.empty (Set Context!12448))))))

(declare-fun setRes!47850 () Bool)

(assert (=> start!671868 setRes!47850))

(declare-fun e!4201822 () Bool)

(declare-fun inv!85930 (Context!12448) Bool)

(assert (=> start!671868 (and (inv!85930 ct2!306) e!4201822)))

(assert (=> start!671868 e!4201827))

(declare-fun b!6990721 () Bool)

(declare-fun e!4201828 () Bool)

(assert (=> b!6990721 (= e!4201828 e!4201825)))

(declare-fun res!2851055 () Bool)

(assert (=> b!6990721 (=> res!2851055 e!4201825)))

(declare-fun lt!2487939 () (Set Context!12448))

(declare-fun derivationStepZipper!2708 ((Set Context!12448) C!34726) (Set Context!12448))

(assert (=> b!6990721 (= res!2851055 (not (= (derivationStepZipper!2708 lt!2487920 (h!73553 s!7408)) lt!2487939)))))

(declare-fun lt!2487916 () Unit!161111)

(assert (=> b!6990721 (= lt!2487916 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487924 () Unit!161111)

(assert (=> b!6990721 (= lt!2487924 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487915 () Context!12448)

(declare-fun lambda!402110 () Int)

(declare-fun flatMap!2214 ((Set Context!12448) Int) (Set Context!12448))

(declare-fun derivationStepZipperUp!1878 (Context!12448 C!34726) (Set Context!12448))

(assert (=> b!6990721 (= (flatMap!2214 lt!2487920 lambda!402110) (derivationStepZipperUp!1878 lt!2487915 (h!73553 s!7408)))))

(declare-fun lt!2487948 () Unit!161111)

(declare-fun lemmaFlatMapOnSingletonSet!1729 ((Set Context!12448) Context!12448 Int) Unit!161111)

(assert (=> b!6990721 (= lt!2487948 (lemmaFlatMapOnSingletonSet!1729 lt!2487920 lt!2487915 lambda!402110))))

(assert (=> b!6990721 (= lt!2487920 (set.insert lt!2487915 (as set.empty (Set Context!12448))))))

(declare-fun lt!2487927 () Unit!161111)

(assert (=> b!6990721 (= lt!2487927 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487949 () Unit!161111)

(assert (=> b!6990721 (= lt!2487949 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990722 () Bool)

(declare-fun e!4201821 () Bool)

(declare-fun e!4201831 () Bool)

(assert (=> b!6990722 (= e!4201821 e!4201831)))

(declare-fun res!2851067 () Bool)

(assert (=> b!6990722 (=> res!2851067 e!4201831)))

(declare-fun lt!2487953 () (Set Context!12448))

(declare-fun lt!2487923 () (Set Context!12448))

(assert (=> b!6990722 (= res!2851067 (not (= lt!2487953 lt!2487923)))))

(declare-fun lt!2487936 () (Set Context!12448))

(assert (=> b!6990722 (= lt!2487923 (set.union lt!2487936 lt!2487939))))

(assert (=> b!6990722 (= lt!2487939 (derivationStepZipperUp!1878 lt!2487915 (h!73553 s!7408)))))

(declare-fun derivationStepZipperDown!1946 (Regex!17228 Context!12448 C!34726) (Set Context!12448))

(assert (=> b!6990722 (= lt!2487936 (derivationStepZipperDown!1946 (h!73554 (exprs!6724 lt!2487940)) lt!2487915 (h!73553 s!7408)))))

(declare-fun ++!15173 (List!67230 List!67230) List!67230)

(assert (=> b!6990722 (= lt!2487915 (Context!12449 (++!15173 lt!2487929 (exprs!6724 ct2!306))))))

(declare-fun lt!2487946 () Unit!161111)

(assert (=> b!6990722 (= lt!2487946 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487945 () Unit!161111)

(assert (=> b!6990722 (= lt!2487945 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990723 () Bool)

(assert (=> b!6990723 (= e!4201830 e!4201821)))

(declare-fun res!2851063 () Bool)

(assert (=> b!6990723 (=> res!2851063 e!4201821)))

(declare-fun nullable!6988 (Regex!17228) Bool)

(assert (=> b!6990723 (= res!2851063 (not (nullable!6988 (h!73554 (exprs!6724 lt!2487940)))))))

(declare-fun lt!2487941 () Context!12448)

(assert (=> b!6990723 (= lt!2487941 (Context!12449 lt!2487929))))

(declare-fun tail!13240 (List!67230) List!67230)

(assert (=> b!6990723 (= lt!2487929 (tail!13240 (exprs!6724 lt!2487940)))))

(declare-fun b!6990724 () Bool)

(declare-fun e!4201823 () Bool)

(assert (=> b!6990724 (= e!4201826 e!4201823)))

(declare-fun res!2851065 () Bool)

(assert (=> b!6990724 (=> res!2851065 e!4201823)))

(declare-fun forall!16142 (List!67230 Int) Bool)

(assert (=> b!6990724 (= res!2851065 (not (forall!16142 lt!2487929 lambda!402109)))))

(declare-fun lt!2487917 () (Set Context!12448))

(assert (=> b!6990724 (= (flatMap!2214 lt!2487917 lambda!402110) (derivationStepZipperUp!1878 lt!2487941 (h!73553 s!7408)))))

(declare-fun lt!2487951 () Unit!161111)

(assert (=> b!6990724 (= lt!2487951 (lemmaFlatMapOnSingletonSet!1729 lt!2487917 lt!2487941 lambda!402110))))

(declare-fun lambda!402108 () Int)

(declare-fun map!15489 ((Set Context!12448) Int) (Set Context!12448))

(assert (=> b!6990724 (= (map!15489 lt!2487917 lambda!402108) (set.insert (Context!12449 (++!15173 lt!2487929 (exprs!6724 ct2!306))) (as set.empty (Set Context!12448))))))

(declare-fun lt!2487932 () Unit!161111)

(assert (=> b!6990724 (= lt!2487932 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487934 () Unit!161111)

(declare-fun lemmaMapOnSingletonSet!293 ((Set Context!12448) Context!12448 Int) Unit!161111)

(assert (=> b!6990724 (= lt!2487934 (lemmaMapOnSingletonSet!293 lt!2487917 lt!2487941 lambda!402108))))

(assert (=> b!6990724 (= lt!2487917 (set.insert lt!2487941 (as set.empty (Set Context!12448))))))

(declare-fun b!6990725 () Bool)

(declare-fun tp!1929886 () Bool)

(assert (=> b!6990725 (= e!4201822 tp!1929886)))

(declare-fun setElem!47850 () Context!12448)

(declare-fun tp!1929888 () Bool)

(declare-fun setNonEmpty!47850 () Bool)

(assert (=> setNonEmpty!47850 (= setRes!47850 (and tp!1929888 (inv!85930 setElem!47850) e!4201835))))

(declare-fun setRest!47850 () (Set Context!12448))

(assert (=> setNonEmpty!47850 (= z1!570 (set.union (set.insert setElem!47850 (as set.empty (Set Context!12448))) setRest!47850))))

(declare-fun e!4201836 () Bool)

(assert (=> b!6990726 (= e!4201836 e!4201830)))

(declare-fun res!2851066 () Bool)

(assert (=> b!6990726 (=> res!2851066 e!4201830)))

(declare-fun lt!2487950 () (Set Context!12448))

(assert (=> b!6990726 (= res!2851066 (not (= (derivationStepZipper!2708 lt!2487950 (h!73553 s!7408)) lt!2487953)))))

(declare-fun lt!2487925 () Context!12448)

(assert (=> b!6990726 (= (flatMap!2214 lt!2487950 lambda!402110) (derivationStepZipperUp!1878 lt!2487925 (h!73553 s!7408)))))

(declare-fun lt!2487937 () Unit!161111)

(assert (=> b!6990726 (= lt!2487937 (lemmaFlatMapOnSingletonSet!1729 lt!2487950 lt!2487925 lambda!402110))))

(assert (=> b!6990726 (= lt!2487953 (derivationStepZipperUp!1878 lt!2487925 (h!73553 s!7408)))))

(declare-fun lt!2487935 () Unit!161111)

(assert (=> b!6990726 (= lt!2487935 (lemmaConcatPreservesForall!564 (exprs!6724 lt!2487940) (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990727 () Bool)

(assert (=> b!6990727 (= e!4201831 e!4201834)))

(declare-fun res!2851059 () Bool)

(assert (=> b!6990727 (=> res!2851059 e!4201834)))

(declare-fun e!4201832 () Bool)

(assert (=> b!6990727 (= res!2851059 e!4201832)))

(declare-fun res!2851073 () Bool)

(assert (=> b!6990727 (=> (not res!2851073) (not e!4201832))))

(declare-fun lt!2487930 () Bool)

(assert (=> b!6990727 (= res!2851073 (not (= lt!2487942 lt!2487930)))))

(assert (=> b!6990727 (= lt!2487942 (matchZipper!2768 lt!2487953 (t!380976 s!7408)))))

(declare-fun lt!2487926 () Unit!161111)

(assert (=> b!6990727 (= lt!2487926 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun e!4201824 () Bool)

(assert (=> b!6990727 (= (matchZipper!2768 lt!2487923 (t!380976 s!7408)) e!4201824)))

(declare-fun res!2851069 () Bool)

(assert (=> b!6990727 (=> res!2851069 e!4201824)))

(assert (=> b!6990727 (= res!2851069 lt!2487930)))

(assert (=> b!6990727 (= lt!2487930 (matchZipper!2768 lt!2487936 (t!380976 s!7408)))))

(declare-fun lt!2487938 () Unit!161111)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1401 ((Set Context!12448) (Set Context!12448) List!67229) Unit!161111)

(assert (=> b!6990727 (= lt!2487938 (lemmaZipperConcatMatchesSameAsBothZippers!1401 lt!2487936 lt!2487939 (t!380976 s!7408)))))

(declare-fun lt!2487918 () Unit!161111)

(assert (=> b!6990727 (= lt!2487918 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun lt!2487914 () Unit!161111)

(assert (=> b!6990727 (= lt!2487914 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990728 () Bool)

(assert (=> b!6990728 (= e!4201834 e!4201828)))

(declare-fun res!2851056 () Bool)

(assert (=> b!6990728 (=> res!2851056 e!4201828)))

(assert (=> b!6990728 (= res!2851056 (not (matchZipper!2768 lt!2487939 (t!380976 s!7408))))))

(declare-fun lt!2487947 () Unit!161111)

(assert (=> b!6990728 (= lt!2487947 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990729 () Bool)

(declare-fun res!2851057 () Bool)

(assert (=> b!6990729 (=> res!2851057 e!4201830)))

(declare-fun isEmpty!39164 (List!67230) Bool)

(assert (=> b!6990729 (= res!2851057 (isEmpty!39164 (exprs!6724 lt!2487940)))))

(declare-fun b!6990730 () Bool)

(declare-fun e!4201833 () Bool)

(assert (=> b!6990730 (= e!4201833 e!4201836)))

(declare-fun res!2851070 () Bool)

(assert (=> b!6990730 (=> res!2851070 e!4201836)))

(assert (=> b!6990730 (= res!2851070 (not (= lt!2487950 lt!2487921)))))

(assert (=> b!6990730 (= lt!2487950 (set.insert lt!2487925 (as set.empty (Set Context!12448))))))

(declare-fun lt!2487922 () Unit!161111)

(assert (=> b!6990730 (= lt!2487922 (lemmaConcatPreservesForall!564 (exprs!6724 lt!2487940) (exprs!6724 ct2!306) lambda!402109))))

(assert (=> b!6990731 (= e!4201837 e!4201833)))

(declare-fun res!2851062 () Bool)

(assert (=> b!6990731 (=> res!2851062 e!4201833)))

(assert (=> b!6990731 (= res!2851062 (or (not (= lt!2487925 lt!2487919)) (not (set.member lt!2487940 z1!570))))))

(assert (=> b!6990731 (= lt!2487925 (Context!12449 (++!15173 (exprs!6724 lt!2487940) (exprs!6724 ct2!306))))))

(declare-fun lt!2487943 () Unit!161111)

(assert (=> b!6990731 (= lt!2487943 (lemmaConcatPreservesForall!564 (exprs!6724 lt!2487940) (exprs!6724 ct2!306) lambda!402109))))

(declare-fun mapPost2!83 ((Set Context!12448) Int Context!12448) Context!12448)

(assert (=> b!6990731 (= lt!2487940 (mapPost2!83 z1!570 lambda!402108 lt!2487919))))

(declare-fun b!6990732 () Bool)

(assert (=> b!6990732 (= e!4201824 (matchZipper!2768 lt!2487939 (t!380976 s!7408)))))

(declare-fun setIsEmpty!47850 () Bool)

(assert (=> setIsEmpty!47850 setRes!47850))

(declare-fun b!6990733 () Bool)

(assert (=> b!6990733 (= e!4201823 (forall!16142 (exprs!6724 ct2!306) lambda!402109))))

(declare-fun b!6990734 () Bool)

(assert (=> b!6990734 (= e!4201832 (not (matchZipper!2768 lt!2487939 (t!380976 s!7408))))))

(declare-fun lt!2487944 () Unit!161111)

(assert (=> b!6990734 (= lt!2487944 (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(assert (= (and start!671868 res!2851071) b!6990713))

(assert (= (and b!6990713 res!2851061) b!6990719))

(assert (= (and b!6990719 (not res!2851068)) b!6990718))

(assert (= (and b!6990718 (not res!2851060)) b!6990731))

(assert (= (and b!6990731 (not res!2851062)) b!6990730))

(assert (= (and b!6990730 (not res!2851070)) b!6990726))

(assert (= (and b!6990726 (not res!2851066)) b!6990716))

(assert (= (and b!6990716 (not res!2851064)) b!6990729))

(assert (= (and b!6990729 (not res!2851057)) b!6990723))

(assert (= (and b!6990723 (not res!2851063)) b!6990722))

(assert (= (and b!6990722 (not res!2851067)) b!6990727))

(assert (= (and b!6990727 (not res!2851069)) b!6990732))

(assert (= (and b!6990727 res!2851073) b!6990734))

(assert (= (and b!6990727 (not res!2851059)) b!6990715))

(assert (= (and b!6990715 (not res!2851058)) b!6990728))

(assert (= (and b!6990728 (not res!2851056)) b!6990721))

(assert (= (and b!6990721 (not res!2851055)) b!6990720))

(assert (= (and b!6990720 (not res!2851072)) b!6990724))

(assert (= (and b!6990724 (not res!2851065)) b!6990733))

(assert (= (and start!671868 condSetEmpty!47850) setIsEmpty!47850))

(assert (= (and start!671868 (not condSetEmpty!47850)) setNonEmpty!47850))

(assert (= setNonEmpty!47850 b!6990717))

(assert (= start!671868 b!6990725))

(assert (= (and start!671868 (is-Cons!67105 s!7408)) b!6990714))

(declare-fun m!7679696 () Bool)

(assert (=> b!6990719 m!7679696))

(declare-fun m!7679698 () Bool)

(assert (=> b!6990719 m!7679698))

(declare-fun m!7679700 () Bool)

(assert (=> b!6990719 m!7679700))

(declare-fun m!7679702 () Bool)

(assert (=> b!6990719 m!7679702))

(declare-fun m!7679704 () Bool)

(assert (=> b!6990719 m!7679704))

(declare-fun m!7679706 () Bool)

(assert (=> b!6990719 m!7679706))

(declare-fun m!7679708 () Bool)

(assert (=> b!6990731 m!7679708))

(declare-fun m!7679710 () Bool)

(assert (=> b!6990731 m!7679710))

(declare-fun m!7679712 () Bool)

(assert (=> b!6990731 m!7679712))

(declare-fun m!7679714 () Bool)

(assert (=> b!6990731 m!7679714))

(declare-fun m!7679716 () Bool)

(assert (=> b!6990724 m!7679716))

(declare-fun m!7679718 () Bool)

(assert (=> b!6990724 m!7679718))

(declare-fun m!7679720 () Bool)

(assert (=> b!6990724 m!7679720))

(declare-fun m!7679722 () Bool)

(assert (=> b!6990724 m!7679722))

(declare-fun m!7679724 () Bool)

(assert (=> b!6990724 m!7679724))

(declare-fun m!7679726 () Bool)

(assert (=> b!6990724 m!7679726))

(declare-fun m!7679728 () Bool)

(assert (=> b!6990724 m!7679728))

(declare-fun m!7679730 () Bool)

(assert (=> b!6990724 m!7679730))

(declare-fun m!7679732 () Bool)

(assert (=> b!6990724 m!7679732))

(declare-fun m!7679734 () Bool)

(assert (=> b!6990724 m!7679734))

(declare-fun m!7679736 () Bool)

(assert (=> b!6990718 m!7679736))

(declare-fun m!7679738 () Bool)

(assert (=> b!6990728 m!7679738))

(assert (=> b!6990728 m!7679730))

(assert (=> b!6990734 m!7679738))

(assert (=> b!6990734 m!7679730))

(declare-fun m!7679740 () Bool)

(assert (=> setNonEmpty!47850 m!7679740))

(declare-fun m!7679742 () Bool)

(assert (=> b!6990727 m!7679742))

(assert (=> b!6990727 m!7679730))

(declare-fun m!7679744 () Bool)

(assert (=> b!6990727 m!7679744))

(declare-fun m!7679746 () Bool)

(assert (=> b!6990727 m!7679746))

(assert (=> b!6990727 m!7679730))

(declare-fun m!7679748 () Bool)

(assert (=> b!6990727 m!7679748))

(assert (=> b!6990727 m!7679730))

(declare-fun m!7679750 () Bool)

(assert (=> b!6990720 m!7679750))

(assert (=> b!6990720 m!7679730))

(declare-fun m!7679752 () Bool)

(assert (=> b!6990726 m!7679752))

(assert (=> b!6990726 m!7679712))

(declare-fun m!7679754 () Bool)

(assert (=> b!6990726 m!7679754))

(declare-fun m!7679756 () Bool)

(assert (=> b!6990726 m!7679756))

(declare-fun m!7679758 () Bool)

(assert (=> b!6990726 m!7679758))

(declare-fun m!7679760 () Bool)

(assert (=> b!6990729 m!7679760))

(declare-fun m!7679762 () Bool)

(assert (=> b!6990733 m!7679762))

(assert (=> b!6990721 m!7679730))

(declare-fun m!7679764 () Bool)

(assert (=> b!6990721 m!7679764))

(assert (=> b!6990721 m!7679730))

(assert (=> b!6990721 m!7679730))

(declare-fun m!7679766 () Bool)

(assert (=> b!6990721 m!7679766))

(declare-fun m!7679768 () Bool)

(assert (=> b!6990721 m!7679768))

(assert (=> b!6990721 m!7679730))

(declare-fun m!7679770 () Bool)

(assert (=> b!6990721 m!7679770))

(declare-fun m!7679772 () Bool)

(assert (=> b!6990721 m!7679772))

(assert (=> b!6990722 m!7679716))

(assert (=> b!6990722 m!7679770))

(assert (=> b!6990722 m!7679730))

(assert (=> b!6990722 m!7679730))

(declare-fun m!7679774 () Bool)

(assert (=> b!6990722 m!7679774))

(assert (=> b!6990732 m!7679738))

(declare-fun m!7679776 () Bool)

(assert (=> start!671868 m!7679776))

(declare-fun m!7679778 () Bool)

(assert (=> start!671868 m!7679778))

(declare-fun m!7679780 () Bool)

(assert (=> start!671868 m!7679780))

(declare-fun m!7679782 () Bool)

(assert (=> b!6990730 m!7679782))

(assert (=> b!6990730 m!7679712))

(declare-fun m!7679784 () Bool)

(assert (=> b!6990723 m!7679784))

(declare-fun m!7679786 () Bool)

(assert (=> b!6990723 m!7679786))

(push 1)

(assert (not b!6990731))

(assert (not setNonEmpty!47850))

(assert (not b!6990714))

(assert (not b!6990727))

(assert (not b!6990717))

(assert (not b!6990733))

(assert (not b!6990721))

(assert (not b!6990725))

(assert (not b!6990734))

(assert (not b!6990728))

(assert (not b!6990719))

(assert tp_is_empty!43681)

(assert (not start!671868))

(assert (not b!6990732))

(assert (not b!6990723))

(assert (not b!6990722))

(assert (not b!6990729))

(assert (not b!6990730))

(assert (not b!6990724))

(assert (not b!6990720))

(assert (not b!6990726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177552 () Bool)

(declare-fun c!1296673 () Bool)

(declare-fun isEmpty!39166 (List!67229) Bool)

(assert (=> d!2177552 (= c!1296673 (isEmpty!39166 (t!380976 s!7408)))))

(declare-fun e!4201891 () Bool)

(assert (=> d!2177552 (= (matchZipper!2768 lt!2487939 (t!380976 s!7408)) e!4201891)))

(declare-fun b!6990817 () Bool)

(declare-fun nullableZipper!2439 ((Set Context!12448)) Bool)

(assert (=> b!6990817 (= e!4201891 (nullableZipper!2439 lt!2487939))))

(declare-fun b!6990818 () Bool)

(declare-fun head!14114 (List!67229) C!34726)

(declare-fun tail!13242 (List!67229) List!67229)

(assert (=> b!6990818 (= e!4201891 (matchZipper!2768 (derivationStepZipper!2708 lt!2487939 (head!14114 (t!380976 s!7408))) (tail!13242 (t!380976 s!7408))))))

(assert (= (and d!2177552 c!1296673) b!6990817))

(assert (= (and d!2177552 (not c!1296673)) b!6990818))

(declare-fun m!7679880 () Bool)

(assert (=> d!2177552 m!7679880))

(declare-fun m!7679882 () Bool)

(assert (=> b!6990817 m!7679882))

(declare-fun m!7679884 () Bool)

(assert (=> b!6990818 m!7679884))

(assert (=> b!6990818 m!7679884))

(declare-fun m!7679886 () Bool)

(assert (=> b!6990818 m!7679886))

(declare-fun m!7679888 () Bool)

(assert (=> b!6990818 m!7679888))

(assert (=> b!6990818 m!7679886))

(assert (=> b!6990818 m!7679888))

(declare-fun m!7679890 () Bool)

(assert (=> b!6990818 m!7679890))

(assert (=> b!6990734 d!2177552))

(declare-fun d!2177554 () Bool)

(assert (=> d!2177554 (forall!16142 (++!15173 lt!2487929 (exprs!6724 ct2!306)) lambda!402109)))

(declare-fun lt!2488080 () Unit!161111)

(declare-fun choose!52275 (List!67230 List!67230 Int) Unit!161111)

(assert (=> d!2177554 (= lt!2488080 (choose!52275 lt!2487929 (exprs!6724 ct2!306) lambda!402109))))

(assert (=> d!2177554 (forall!16142 lt!2487929 lambda!402109)))

(assert (=> d!2177554 (= (lemmaConcatPreservesForall!564 lt!2487929 (exprs!6724 ct2!306) lambda!402109) lt!2488080)))

(declare-fun bs!1862303 () Bool)

(assert (= bs!1862303 d!2177554))

(assert (=> bs!1862303 m!7679716))

(assert (=> bs!1862303 m!7679716))

(declare-fun m!7679892 () Bool)

(assert (=> bs!1862303 m!7679892))

(declare-fun m!7679894 () Bool)

(assert (=> bs!1862303 m!7679894))

(assert (=> bs!1862303 m!7679720))

(assert (=> b!6990734 d!2177554))

(declare-fun d!2177556 () Bool)

(declare-fun res!2851137 () Bool)

(declare-fun e!4201896 () Bool)

(assert (=> d!2177556 (=> res!2851137 e!4201896)))

(assert (=> d!2177556 (= res!2851137 (is-Nil!67106 (exprs!6724 ct2!306)))))

(assert (=> d!2177556 (= (forall!16142 (exprs!6724 ct2!306) lambda!402109) e!4201896)))

(declare-fun b!6990823 () Bool)

(declare-fun e!4201897 () Bool)

(assert (=> b!6990823 (= e!4201896 e!4201897)))

(declare-fun res!2851138 () Bool)

(assert (=> b!6990823 (=> (not res!2851138) (not e!4201897))))

(declare-fun dynLambda!26913 (Int Regex!17228) Bool)

(assert (=> b!6990823 (= res!2851138 (dynLambda!26913 lambda!402109 (h!73554 (exprs!6724 ct2!306))))))

(declare-fun b!6990824 () Bool)

(assert (=> b!6990824 (= e!4201897 (forall!16142 (t!380977 (exprs!6724 ct2!306)) lambda!402109))))

(assert (= (and d!2177556 (not res!2851137)) b!6990823))

(assert (= (and b!6990823 res!2851138) b!6990824))

(declare-fun b_lambda!262651 () Bool)

(assert (=> (not b_lambda!262651) (not b!6990823)))

(declare-fun m!7679896 () Bool)

(assert (=> b!6990823 m!7679896))

(declare-fun m!7679898 () Bool)

(assert (=> b!6990824 m!7679898))

(assert (=> b!6990733 d!2177556))

(declare-fun bs!1862304 () Bool)

(declare-fun d!2177558 () Bool)

(assert (= bs!1862304 (and d!2177558 b!6990731)))

(declare-fun lambda!402169 () Int)

(assert (=> bs!1862304 (= lambda!402169 lambda!402109)))

(assert (=> d!2177558 (= (inv!85930 setElem!47850) (forall!16142 (exprs!6724 setElem!47850) lambda!402169))))

(declare-fun bs!1862305 () Bool)

(assert (= bs!1862305 d!2177558))

(declare-fun m!7679900 () Bool)

(assert (=> bs!1862305 m!7679900))

(assert (=> setNonEmpty!47850 d!2177558))

(assert (=> b!6990732 d!2177552))

(assert (=> b!6990722 d!2177554))

(declare-fun b!6990835 () Bool)

(declare-fun e!4201905 () (Set Context!12448))

(declare-fun call!634624 () (Set Context!12448))

(assert (=> b!6990835 (= e!4201905 (set.union call!634624 (derivationStepZipperUp!1878 (Context!12449 (t!380977 (exprs!6724 lt!2487915))) (h!73553 s!7408))))))

(declare-fun b!6990836 () Bool)

(declare-fun e!4201906 () (Set Context!12448))

(assert (=> b!6990836 (= e!4201906 call!634624)))

(declare-fun b!6990837 () Bool)

(declare-fun e!4201904 () Bool)

(assert (=> b!6990837 (= e!4201904 (nullable!6988 (h!73554 (exprs!6724 lt!2487915))))))

(declare-fun d!2177560 () Bool)

(declare-fun c!1296678 () Bool)

(assert (=> d!2177560 (= c!1296678 e!4201904)))

(declare-fun res!2851141 () Bool)

(assert (=> d!2177560 (=> (not res!2851141) (not e!4201904))))

(assert (=> d!2177560 (= res!2851141 (is-Cons!67106 (exprs!6724 lt!2487915)))))

(assert (=> d!2177560 (= (derivationStepZipperUp!1878 lt!2487915 (h!73553 s!7408)) e!4201905)))

(declare-fun b!6990838 () Bool)

(assert (=> b!6990838 (= e!4201906 (as set.empty (Set Context!12448)))))

(declare-fun bm!634619 () Bool)

(assert (=> bm!634619 (= call!634624 (derivationStepZipperDown!1946 (h!73554 (exprs!6724 lt!2487915)) (Context!12449 (t!380977 (exprs!6724 lt!2487915))) (h!73553 s!7408)))))

(declare-fun b!6990839 () Bool)

(assert (=> b!6990839 (= e!4201905 e!4201906)))

(declare-fun c!1296679 () Bool)

(assert (=> b!6990839 (= c!1296679 (is-Cons!67106 (exprs!6724 lt!2487915)))))

(assert (= (and d!2177560 res!2851141) b!6990837))

(assert (= (and d!2177560 c!1296678) b!6990835))

(assert (= (and d!2177560 (not c!1296678)) b!6990839))

(assert (= (and b!6990839 c!1296679) b!6990836))

(assert (= (and b!6990839 (not c!1296679)) b!6990838))

(assert (= (or b!6990835 b!6990836) bm!634619))

(declare-fun m!7679902 () Bool)

(assert (=> b!6990835 m!7679902))

(declare-fun m!7679904 () Bool)

(assert (=> b!6990837 m!7679904))

(declare-fun m!7679906 () Bool)

(assert (=> bm!634619 m!7679906))

(assert (=> b!6990722 d!2177560))

(declare-fun b!6990850 () Bool)

(declare-fun res!2851146 () Bool)

(declare-fun e!4201911 () Bool)

(assert (=> b!6990850 (=> (not res!2851146) (not e!4201911))))

(declare-fun lt!2488083 () List!67230)

(declare-fun size!40907 (List!67230) Int)

(assert (=> b!6990850 (= res!2851146 (= (size!40907 lt!2488083) (+ (size!40907 lt!2487929) (size!40907 (exprs!6724 ct2!306)))))))

(declare-fun b!6990849 () Bool)

(declare-fun e!4201912 () List!67230)

(assert (=> b!6990849 (= e!4201912 (Cons!67106 (h!73554 lt!2487929) (++!15173 (t!380977 lt!2487929) (exprs!6724 ct2!306))))))

(declare-fun b!6990851 () Bool)

(assert (=> b!6990851 (= e!4201911 (or (not (= (exprs!6724 ct2!306) Nil!67106)) (= lt!2488083 lt!2487929)))))

(declare-fun b!6990848 () Bool)

(assert (=> b!6990848 (= e!4201912 (exprs!6724 ct2!306))))

(declare-fun d!2177562 () Bool)

(assert (=> d!2177562 e!4201911))

(declare-fun res!2851147 () Bool)

(assert (=> d!2177562 (=> (not res!2851147) (not e!4201911))))

(declare-fun content!13263 (List!67230) (Set Regex!17228))

(assert (=> d!2177562 (= res!2851147 (= (content!13263 lt!2488083) (set.union (content!13263 lt!2487929) (content!13263 (exprs!6724 ct2!306)))))))

(assert (=> d!2177562 (= lt!2488083 e!4201912)))

(declare-fun c!1296682 () Bool)

(assert (=> d!2177562 (= c!1296682 (is-Nil!67106 lt!2487929))))

(assert (=> d!2177562 (= (++!15173 lt!2487929 (exprs!6724 ct2!306)) lt!2488083)))

(assert (= (and d!2177562 c!1296682) b!6990848))

(assert (= (and d!2177562 (not c!1296682)) b!6990849))

(assert (= (and d!2177562 res!2851147) b!6990850))

(assert (= (and b!6990850 res!2851146) b!6990851))

(declare-fun m!7679908 () Bool)

(assert (=> b!6990850 m!7679908))

(declare-fun m!7679910 () Bool)

(assert (=> b!6990850 m!7679910))

(declare-fun m!7679912 () Bool)

(assert (=> b!6990850 m!7679912))

(declare-fun m!7679914 () Bool)

(assert (=> b!6990849 m!7679914))

(declare-fun m!7679916 () Bool)

(assert (=> d!2177562 m!7679916))

(declare-fun m!7679918 () Bool)

(assert (=> d!2177562 m!7679918))

(declare-fun m!7679920 () Bool)

(assert (=> d!2177562 m!7679920))

(assert (=> b!6990722 d!2177562))

(declare-fun call!634639 () List!67230)

(declare-fun bm!634632 () Bool)

(declare-fun c!1296697 () Bool)

(declare-fun c!1296694 () Bool)

(declare-fun $colon$colon!2486 (List!67230 Regex!17228) List!67230)

(assert (=> bm!634632 (= call!634639 ($colon$colon!2486 (exprs!6724 lt!2487915) (ite (or c!1296694 c!1296697) (regTwo!34968 (h!73554 (exprs!6724 lt!2487940))) (h!73554 (exprs!6724 lt!2487940)))))))

(declare-fun b!6990874 () Bool)

(declare-fun c!1296695 () Bool)

(assert (=> b!6990874 (= c!1296695 (is-Star!17228 (h!73554 (exprs!6724 lt!2487940))))))

(declare-fun e!4201927 () (Set Context!12448))

(declare-fun e!4201929 () (Set Context!12448))

(assert (=> b!6990874 (= e!4201927 e!4201929)))

(declare-fun b!6990875 () Bool)

(declare-fun e!4201926 () (Set Context!12448))

(assert (=> b!6990875 (= e!4201926 (set.insert lt!2487915 (as set.empty (Set Context!12448))))))

(declare-fun d!2177564 () Bool)

(declare-fun c!1296693 () Bool)

(assert (=> d!2177564 (= c!1296693 (and (is-ElementMatch!17228 (h!73554 (exprs!6724 lt!2487940))) (= (c!1296655 (h!73554 (exprs!6724 lt!2487940))) (h!73553 s!7408))))))

(assert (=> d!2177564 (= (derivationStepZipperDown!1946 (h!73554 (exprs!6724 lt!2487940)) lt!2487915 (h!73553 s!7408)) e!4201926)))

(declare-fun b!6990876 () Bool)

(declare-fun e!4201930 () Bool)

(assert (=> b!6990876 (= e!4201930 (nullable!6988 (regOne!34968 (h!73554 (exprs!6724 lt!2487940)))))))

(declare-fun bm!634633 () Bool)

(declare-fun call!634637 () (Set Context!12448))

(declare-fun call!634642 () (Set Context!12448))

(assert (=> bm!634633 (= call!634637 call!634642)))

(declare-fun call!634641 () (Set Context!12448))

(declare-fun bm!634634 () Bool)

(declare-fun c!1296696 () Bool)

(declare-fun call!634640 () List!67230)

(assert (=> bm!634634 (= call!634641 (derivationStepZipperDown!1946 (ite c!1296696 (regOne!34969 (h!73554 (exprs!6724 lt!2487940))) (ite c!1296694 (regTwo!34968 (h!73554 (exprs!6724 lt!2487940))) (ite c!1296697 (regOne!34968 (h!73554 (exprs!6724 lt!2487940))) (reg!17557 (h!73554 (exprs!6724 lt!2487940)))))) (ite (or c!1296696 c!1296694) lt!2487915 (Context!12449 call!634640)) (h!73553 s!7408)))))

(declare-fun bm!634635 () Bool)

(assert (=> bm!634635 (= call!634640 call!634639)))

(declare-fun b!6990877 () Bool)

(assert (=> b!6990877 (= e!4201929 call!634637)))

(declare-fun b!6990878 () Bool)

(assert (=> b!6990878 (= c!1296694 e!4201930)))

(declare-fun res!2851150 () Bool)

(assert (=> b!6990878 (=> (not res!2851150) (not e!4201930))))

(assert (=> b!6990878 (= res!2851150 (is-Concat!26073 (h!73554 (exprs!6724 lt!2487940))))))

(declare-fun e!4201925 () (Set Context!12448))

(declare-fun e!4201928 () (Set Context!12448))

(assert (=> b!6990878 (= e!4201925 e!4201928)))

(declare-fun b!6990879 () Bool)

(assert (=> b!6990879 (= e!4201928 e!4201927)))

(assert (=> b!6990879 (= c!1296697 (is-Concat!26073 (h!73554 (exprs!6724 lt!2487940))))))

(declare-fun b!6990880 () Bool)

(assert (=> b!6990880 (= e!4201929 (as set.empty (Set Context!12448)))))

(declare-fun b!6990881 () Bool)

(assert (=> b!6990881 (= e!4201927 call!634637)))

(declare-fun call!634638 () (Set Context!12448))

(declare-fun bm!634636 () Bool)

(assert (=> bm!634636 (= call!634638 (derivationStepZipperDown!1946 (ite c!1296696 (regTwo!34969 (h!73554 (exprs!6724 lt!2487940))) (regOne!34968 (h!73554 (exprs!6724 lt!2487940)))) (ite c!1296696 lt!2487915 (Context!12449 call!634639)) (h!73553 s!7408)))))

(declare-fun b!6990882 () Bool)

(assert (=> b!6990882 (= e!4201925 (set.union call!634641 call!634638))))

(declare-fun b!6990883 () Bool)

(assert (=> b!6990883 (= e!4201928 (set.union call!634638 call!634642))))

(declare-fun b!6990884 () Bool)

(assert (=> b!6990884 (= e!4201926 e!4201925)))

(assert (=> b!6990884 (= c!1296696 (is-Union!17228 (h!73554 (exprs!6724 lt!2487940))))))

(declare-fun bm!634637 () Bool)

(assert (=> bm!634637 (= call!634642 call!634641)))

(assert (= (and d!2177564 c!1296693) b!6990875))

(assert (= (and d!2177564 (not c!1296693)) b!6990884))

(assert (= (and b!6990884 c!1296696) b!6990882))

(assert (= (and b!6990884 (not c!1296696)) b!6990878))

(assert (= (and b!6990878 res!2851150) b!6990876))

(assert (= (and b!6990878 c!1296694) b!6990883))

(assert (= (and b!6990878 (not c!1296694)) b!6990879))

(assert (= (and b!6990879 c!1296697) b!6990881))

(assert (= (and b!6990879 (not c!1296697)) b!6990874))

(assert (= (and b!6990874 c!1296695) b!6990877))

(assert (= (and b!6990874 (not c!1296695)) b!6990880))

(assert (= (or b!6990881 b!6990877) bm!634635))

(assert (= (or b!6990881 b!6990877) bm!634633))

(assert (= (or b!6990883 bm!634633) bm!634637))

(assert (= (or b!6990883 bm!634635) bm!634632))

(assert (= (or b!6990882 bm!634637) bm!634634))

(assert (= (or b!6990882 b!6990883) bm!634636))

(declare-fun m!7679922 () Bool)

(assert (=> bm!634636 m!7679922))

(declare-fun m!7679924 () Bool)

(assert (=> bm!634632 m!7679924))

(declare-fun m!7679926 () Bool)

(assert (=> b!6990876 m!7679926))

(assert (=> b!6990875 m!7679772))

(declare-fun m!7679928 () Bool)

(assert (=> bm!634634 m!7679928))

(assert (=> b!6990722 d!2177564))

(assert (=> b!6990724 d!2177554))

(declare-fun d!2177566 () Bool)

(declare-fun dynLambda!26914 (Int Context!12448) (Set Context!12448))

(assert (=> d!2177566 (= (flatMap!2214 lt!2487917 lambda!402110) (dynLambda!26914 lambda!402110 lt!2487941))))

(declare-fun lt!2488086 () Unit!161111)

(declare-fun choose!52276 ((Set Context!12448) Context!12448 Int) Unit!161111)

(assert (=> d!2177566 (= lt!2488086 (choose!52276 lt!2487917 lt!2487941 lambda!402110))))

(assert (=> d!2177566 (= lt!2487917 (set.insert lt!2487941 (as set.empty (Set Context!12448))))))

(assert (=> d!2177566 (= (lemmaFlatMapOnSingletonSet!1729 lt!2487917 lt!2487941 lambda!402110) lt!2488086)))

(declare-fun b_lambda!262653 () Bool)

(assert (=> (not b_lambda!262653) (not d!2177566)))

(declare-fun bs!1862306 () Bool)

(assert (= bs!1862306 d!2177566))

(assert (=> bs!1862306 m!7679724))

(declare-fun m!7679930 () Bool)

(assert (=> bs!1862306 m!7679930))

(declare-fun m!7679932 () Bool)

(assert (=> bs!1862306 m!7679932))

(assert (=> bs!1862306 m!7679734))

(assert (=> b!6990724 d!2177566))

(declare-fun d!2177568 () Bool)

(declare-fun choose!52277 ((Set Context!12448) Int) (Set Context!12448))

(assert (=> d!2177568 (= (map!15489 lt!2487917 lambda!402108) (choose!52277 lt!2487917 lambda!402108))))

(declare-fun bs!1862307 () Bool)

(assert (= bs!1862307 d!2177568))

(declare-fun m!7679934 () Bool)

(assert (=> bs!1862307 m!7679934))

(assert (=> b!6990724 d!2177568))

(declare-fun d!2177570 () Bool)

(declare-fun choose!52278 ((Set Context!12448) Int) (Set Context!12448))

(assert (=> d!2177570 (= (flatMap!2214 lt!2487917 lambda!402110) (choose!52278 lt!2487917 lambda!402110))))

(declare-fun bs!1862308 () Bool)

(assert (= bs!1862308 d!2177570))

(declare-fun m!7679936 () Bool)

(assert (=> bs!1862308 m!7679936))

(assert (=> b!6990724 d!2177570))

(declare-fun e!4201932 () (Set Context!12448))

(declare-fun call!634643 () (Set Context!12448))

(declare-fun b!6990885 () Bool)

(assert (=> b!6990885 (= e!4201932 (set.union call!634643 (derivationStepZipperUp!1878 (Context!12449 (t!380977 (exprs!6724 lt!2487941))) (h!73553 s!7408))))))

(declare-fun b!6990886 () Bool)

(declare-fun e!4201933 () (Set Context!12448))

(assert (=> b!6990886 (= e!4201933 call!634643)))

(declare-fun b!6990887 () Bool)

(declare-fun e!4201931 () Bool)

(assert (=> b!6990887 (= e!4201931 (nullable!6988 (h!73554 (exprs!6724 lt!2487941))))))

(declare-fun d!2177572 () Bool)

(declare-fun c!1296698 () Bool)

(assert (=> d!2177572 (= c!1296698 e!4201931)))

(declare-fun res!2851151 () Bool)

(assert (=> d!2177572 (=> (not res!2851151) (not e!4201931))))

(assert (=> d!2177572 (= res!2851151 (is-Cons!67106 (exprs!6724 lt!2487941)))))

(assert (=> d!2177572 (= (derivationStepZipperUp!1878 lt!2487941 (h!73553 s!7408)) e!4201932)))

(declare-fun b!6990888 () Bool)

(assert (=> b!6990888 (= e!4201933 (as set.empty (Set Context!12448)))))

(declare-fun bm!634638 () Bool)

(assert (=> bm!634638 (= call!634643 (derivationStepZipperDown!1946 (h!73554 (exprs!6724 lt!2487941)) (Context!12449 (t!380977 (exprs!6724 lt!2487941))) (h!73553 s!7408)))))

(declare-fun b!6990889 () Bool)

(assert (=> b!6990889 (= e!4201932 e!4201933)))

(declare-fun c!1296699 () Bool)

(assert (=> b!6990889 (= c!1296699 (is-Cons!67106 (exprs!6724 lt!2487941)))))

(assert (= (and d!2177572 res!2851151) b!6990887))

(assert (= (and d!2177572 c!1296698) b!6990885))

(assert (= (and d!2177572 (not c!1296698)) b!6990889))

(assert (= (and b!6990889 c!1296699) b!6990886))

(assert (= (and b!6990889 (not c!1296699)) b!6990888))

(assert (= (or b!6990885 b!6990886) bm!634638))

(declare-fun m!7679938 () Bool)

(assert (=> b!6990885 m!7679938))

(declare-fun m!7679940 () Bool)

(assert (=> b!6990887 m!7679940))

(declare-fun m!7679942 () Bool)

(assert (=> bm!634638 m!7679942))

(assert (=> b!6990724 d!2177572))

(assert (=> b!6990724 d!2177562))

(declare-fun d!2177574 () Bool)

(declare-fun res!2851152 () Bool)

(declare-fun e!4201934 () Bool)

(assert (=> d!2177574 (=> res!2851152 e!4201934)))

(assert (=> d!2177574 (= res!2851152 (is-Nil!67106 lt!2487929))))

(assert (=> d!2177574 (= (forall!16142 lt!2487929 lambda!402109) e!4201934)))

(declare-fun b!6990890 () Bool)

(declare-fun e!4201935 () Bool)

(assert (=> b!6990890 (= e!4201934 e!4201935)))

(declare-fun res!2851153 () Bool)

(assert (=> b!6990890 (=> (not res!2851153) (not e!4201935))))

(assert (=> b!6990890 (= res!2851153 (dynLambda!26913 lambda!402109 (h!73554 lt!2487929)))))

(declare-fun b!6990891 () Bool)

(assert (=> b!6990891 (= e!4201935 (forall!16142 (t!380977 lt!2487929) lambda!402109))))

(assert (= (and d!2177574 (not res!2851152)) b!6990890))

(assert (= (and b!6990890 res!2851153) b!6990891))

(declare-fun b_lambda!262655 () Bool)

(assert (=> (not b_lambda!262655) (not b!6990890)))

(declare-fun m!7679944 () Bool)

(assert (=> b!6990890 m!7679944))

(declare-fun m!7679946 () Bool)

(assert (=> b!6990891 m!7679946))

(assert (=> b!6990724 d!2177574))

(declare-fun d!2177576 () Bool)

(declare-fun dynLambda!26915 (Int Context!12448) Context!12448)

(assert (=> d!2177576 (= (map!15489 lt!2487917 lambda!402108) (set.insert (dynLambda!26915 lambda!402108 lt!2487941) (as set.empty (Set Context!12448))))))

(declare-fun lt!2488089 () Unit!161111)

(declare-fun choose!52279 ((Set Context!12448) Context!12448 Int) Unit!161111)

(assert (=> d!2177576 (= lt!2488089 (choose!52279 lt!2487917 lt!2487941 lambda!402108))))

(assert (=> d!2177576 (= lt!2487917 (set.insert lt!2487941 (as set.empty (Set Context!12448))))))

(assert (=> d!2177576 (= (lemmaMapOnSingletonSet!293 lt!2487917 lt!2487941 lambda!402108) lt!2488089)))

(declare-fun b_lambda!262657 () Bool)

(assert (=> (not b_lambda!262657) (not d!2177576)))

(declare-fun bs!1862309 () Bool)

(assert (= bs!1862309 d!2177576))

(assert (=> bs!1862309 m!7679718))

(assert (=> bs!1862309 m!7679734))

(declare-fun m!7679948 () Bool)

(assert (=> bs!1862309 m!7679948))

(declare-fun m!7679950 () Bool)

(assert (=> bs!1862309 m!7679950))

(declare-fun m!7679952 () Bool)

(assert (=> bs!1862309 m!7679952))

(assert (=> bs!1862309 m!7679950))

(assert (=> b!6990724 d!2177576))

(declare-fun d!2177578 () Bool)

(declare-fun nullableFct!2641 (Regex!17228) Bool)

(assert (=> d!2177578 (= (nullable!6988 (h!73554 (exprs!6724 lt!2487940))) (nullableFct!2641 (h!73554 (exprs!6724 lt!2487940))))))

(declare-fun bs!1862310 () Bool)

(assert (= bs!1862310 d!2177578))

(declare-fun m!7679954 () Bool)

(assert (=> bs!1862310 m!7679954))

(assert (=> b!6990723 d!2177578))

(declare-fun d!2177580 () Bool)

(assert (=> d!2177580 (= (tail!13240 (exprs!6724 lt!2487940)) (t!380977 (exprs!6724 lt!2487940)))))

(assert (=> b!6990723 d!2177580))

(declare-fun d!2177582 () Bool)

(declare-fun c!1296700 () Bool)

(assert (=> d!2177582 (= c!1296700 (isEmpty!39166 s!7408))))

(declare-fun e!4201936 () Bool)

(assert (=> d!2177582 (= (matchZipper!2768 lt!2487920 s!7408) e!4201936)))

(declare-fun b!6990892 () Bool)

(assert (=> b!6990892 (= e!4201936 (nullableZipper!2439 lt!2487920))))

(declare-fun b!6990893 () Bool)

(assert (=> b!6990893 (= e!4201936 (matchZipper!2768 (derivationStepZipper!2708 lt!2487920 (head!14114 s!7408)) (tail!13242 s!7408)))))

(assert (= (and d!2177582 c!1296700) b!6990892))

(assert (= (and d!2177582 (not c!1296700)) b!6990893))

(declare-fun m!7679956 () Bool)

(assert (=> d!2177582 m!7679956))

(declare-fun m!7679958 () Bool)

(assert (=> b!6990892 m!7679958))

(declare-fun m!7679960 () Bool)

(assert (=> b!6990893 m!7679960))

(assert (=> b!6990893 m!7679960))

(declare-fun m!7679962 () Bool)

(assert (=> b!6990893 m!7679962))

(declare-fun m!7679964 () Bool)

(assert (=> b!6990893 m!7679964))

(assert (=> b!6990893 m!7679962))

(assert (=> b!6990893 m!7679964))

(declare-fun m!7679966 () Bool)

(assert (=> b!6990893 m!7679966))

(assert (=> b!6990720 d!2177582))

(assert (=> b!6990720 d!2177554))

(declare-fun d!2177584 () Bool)

(assert (=> d!2177584 (= (isEmpty!39164 (exprs!6724 lt!2487940)) (is-Nil!67106 (exprs!6724 lt!2487940)))))

(assert (=> b!6990729 d!2177584))

(declare-fun d!2177586 () Bool)

(declare-fun e!4201939 () Bool)

(assert (=> d!2177586 e!4201939))

(declare-fun res!2851156 () Bool)

(assert (=> d!2177586 (=> (not res!2851156) (not e!4201939))))

(declare-fun lt!2488092 () List!67231)

(declare-fun noDuplicate!2525 (List!67231) Bool)

(assert (=> d!2177586 (= res!2851156 (noDuplicate!2525 lt!2488092))))

(declare-fun choose!52280 ((Set Context!12448)) List!67231)

(assert (=> d!2177586 (= lt!2488092 (choose!52280 lt!2487931))))

(assert (=> d!2177586 (= (toList!10588 lt!2487931) lt!2488092)))

(declare-fun b!6990896 () Bool)

(declare-fun content!13264 (List!67231) (Set Context!12448))

(assert (=> b!6990896 (= e!4201939 (= (content!13264 lt!2488092) lt!2487931))))

(assert (= (and d!2177586 res!2851156) b!6990896))

(declare-fun m!7679968 () Bool)

(assert (=> d!2177586 m!7679968))

(declare-fun m!7679970 () Bool)

(assert (=> d!2177586 m!7679970))

(declare-fun m!7679972 () Bool)

(assert (=> b!6990896 m!7679972))

(assert (=> b!6990719 d!2177586))

(declare-fun bs!1862311 () Bool)

(declare-fun d!2177588 () Bool)

(assert (= bs!1862311 (and d!2177588 b!6990719)))

(declare-fun lambda!402172 () Int)

(assert (=> bs!1862311 (not (= lambda!402172 lambda!402107))))

(assert (=> d!2177588 true))

(declare-fun order!27929 () Int)

(declare-fun dynLambda!26916 (Int Int) Int)

(assert (=> d!2177588 (< (dynLambda!26916 order!27929 lambda!402107) (dynLambda!26916 order!27929 lambda!402172))))

(declare-fun forall!16144 (List!67231 Int) Bool)

(assert (=> d!2177588 (= (exists!3018 lt!2487933 lambda!402107) (not (forall!16144 lt!2487933 lambda!402172)))))

(declare-fun bs!1862312 () Bool)

(assert (= bs!1862312 d!2177588))

(declare-fun m!7679974 () Bool)

(assert (=> bs!1862312 m!7679974))

(assert (=> b!6990719 d!2177588))

(declare-fun bs!1862313 () Bool)

(declare-fun d!2177590 () Bool)

(assert (= bs!1862313 (and d!2177590 b!6990719)))

(declare-fun lambda!402175 () Int)

(assert (=> bs!1862313 (= lambda!402175 lambda!402107)))

(declare-fun bs!1862314 () Bool)

(assert (= bs!1862314 (and d!2177590 d!2177588)))

(assert (=> bs!1862314 (not (= lambda!402175 lambda!402172))))

(assert (=> d!2177590 true))

(assert (=> d!2177590 (exists!3018 lt!2487933 lambda!402175)))

(declare-fun lt!2488095 () Unit!161111)

(declare-fun choose!52281 (List!67231 List!67229) Unit!161111)

(assert (=> d!2177590 (= lt!2488095 (choose!52281 lt!2487933 s!7408))))

(assert (=> d!2177590 (matchZipper!2768 (content!13264 lt!2487933) s!7408)))

(assert (=> d!2177590 (= (lemmaZipperMatchesExistsMatchingContext!197 lt!2487933 s!7408) lt!2488095)))

(declare-fun bs!1862315 () Bool)

(assert (= bs!1862315 d!2177590))

(declare-fun m!7679976 () Bool)

(assert (=> bs!1862315 m!7679976))

(declare-fun m!7679978 () Bool)

(assert (=> bs!1862315 m!7679978))

(declare-fun m!7679980 () Bool)

(assert (=> bs!1862315 m!7679980))

(assert (=> bs!1862315 m!7679980))

(declare-fun m!7679982 () Bool)

(assert (=> bs!1862315 m!7679982))

(assert (=> b!6990719 d!2177590))

(declare-fun d!2177592 () Bool)

(declare-fun e!4201942 () Bool)

(assert (=> d!2177592 e!4201942))

(declare-fun res!2851159 () Bool)

(assert (=> d!2177592 (=> (not res!2851159) (not e!4201942))))

(declare-fun lt!2488098 () Context!12448)

(declare-fun dynLambda!26917 (Int Context!12448) Bool)

(assert (=> d!2177592 (= res!2851159 (dynLambda!26917 lambda!402107 lt!2488098))))

(declare-fun getWitness!1131 (List!67231 Int) Context!12448)

(assert (=> d!2177592 (= lt!2488098 (getWitness!1131 (toList!10588 lt!2487931) lambda!402107))))

(declare-fun exists!3020 ((Set Context!12448) Int) Bool)

(assert (=> d!2177592 (exists!3020 lt!2487931 lambda!402107)))

(assert (=> d!2177592 (= (getWitness!1129 lt!2487931 lambda!402107) lt!2488098)))

(declare-fun b!6990901 () Bool)

(assert (=> b!6990901 (= e!4201942 (set.member lt!2488098 lt!2487931))))

(assert (= (and d!2177592 res!2851159) b!6990901))

(declare-fun b_lambda!262659 () Bool)

(assert (=> (not b_lambda!262659) (not d!2177592)))

(declare-fun m!7679984 () Bool)

(assert (=> d!2177592 m!7679984))

(assert (=> d!2177592 m!7679702))

(assert (=> d!2177592 m!7679702))

(declare-fun m!7679986 () Bool)

(assert (=> d!2177592 m!7679986))

(declare-fun m!7679988 () Bool)

(assert (=> d!2177592 m!7679988))

(declare-fun m!7679990 () Bool)

(assert (=> b!6990901 m!7679990))

(assert (=> b!6990719 d!2177592))

(declare-fun d!2177594 () Bool)

(declare-fun c!1296703 () Bool)

(assert (=> d!2177594 (= c!1296703 (isEmpty!39166 s!7408))))

(declare-fun e!4201943 () Bool)

(assert (=> d!2177594 (= (matchZipper!2768 lt!2487921 s!7408) e!4201943)))

(declare-fun b!6990902 () Bool)

(assert (=> b!6990902 (= e!4201943 (nullableZipper!2439 lt!2487921))))

(declare-fun b!6990903 () Bool)

(assert (=> b!6990903 (= e!4201943 (matchZipper!2768 (derivationStepZipper!2708 lt!2487921 (head!14114 s!7408)) (tail!13242 s!7408)))))

(assert (= (and d!2177594 c!1296703) b!6990902))

(assert (= (and d!2177594 (not c!1296703)) b!6990903))

(assert (=> d!2177594 m!7679956))

(declare-fun m!7679992 () Bool)

(assert (=> b!6990902 m!7679992))

(assert (=> b!6990903 m!7679960))

(assert (=> b!6990903 m!7679960))

(declare-fun m!7679994 () Bool)

(assert (=> b!6990903 m!7679994))

(assert (=> b!6990903 m!7679964))

(assert (=> b!6990903 m!7679994))

(assert (=> b!6990903 m!7679964))

(declare-fun m!7679996 () Bool)

(assert (=> b!6990903 m!7679996))

(assert (=> b!6990719 d!2177594))

(declare-fun d!2177596 () Bool)

(declare-fun c!1296704 () Bool)

(assert (=> d!2177596 (= c!1296704 (isEmpty!39166 s!7408))))

(declare-fun e!4201944 () Bool)

(assert (=> d!2177596 (= (matchZipper!2768 lt!2487931 s!7408) e!4201944)))

(declare-fun b!6990904 () Bool)

(assert (=> b!6990904 (= e!4201944 (nullableZipper!2439 lt!2487931))))

(declare-fun b!6990905 () Bool)

(assert (=> b!6990905 (= e!4201944 (matchZipper!2768 (derivationStepZipper!2708 lt!2487931 (head!14114 s!7408)) (tail!13242 s!7408)))))

(assert (= (and d!2177596 c!1296704) b!6990904))

(assert (= (and d!2177596 (not c!1296704)) b!6990905))

(assert (=> d!2177596 m!7679956))

(declare-fun m!7679998 () Bool)

(assert (=> b!6990904 m!7679998))

(assert (=> b!6990905 m!7679960))

(assert (=> b!6990905 m!7679960))

(declare-fun m!7680000 () Bool)

(assert (=> b!6990905 m!7680000))

(assert (=> b!6990905 m!7679964))

(assert (=> b!6990905 m!7680000))

(assert (=> b!6990905 m!7679964))

(declare-fun m!7680002 () Bool)

(assert (=> b!6990905 m!7680002))

(assert (=> start!671868 d!2177596))

(declare-fun bs!1862316 () Bool)

(declare-fun d!2177598 () Bool)

(assert (= bs!1862316 (and d!2177598 b!6990731)))

(declare-fun lambda!402180 () Int)

(assert (=> bs!1862316 (= lambda!402180 lambda!402108)))

(assert (=> d!2177598 true))

(assert (=> d!2177598 (= (appendTo!349 z1!570 ct2!306) (map!15489 z1!570 lambda!402180))))

(declare-fun bs!1862317 () Bool)

(assert (= bs!1862317 d!2177598))

(declare-fun m!7680004 () Bool)

(assert (=> bs!1862317 m!7680004))

(assert (=> start!671868 d!2177598))

(declare-fun bs!1862318 () Bool)

(declare-fun d!2177600 () Bool)

(assert (= bs!1862318 (and d!2177600 b!6990731)))

(declare-fun lambda!402181 () Int)

(assert (=> bs!1862318 (= lambda!402181 lambda!402109)))

(declare-fun bs!1862319 () Bool)

(assert (= bs!1862319 (and d!2177600 d!2177558)))

(assert (=> bs!1862319 (= lambda!402181 lambda!402169)))

(assert (=> d!2177600 (= (inv!85930 ct2!306) (forall!16142 (exprs!6724 ct2!306) lambda!402181))))

(declare-fun bs!1862320 () Bool)

(assert (= bs!1862320 d!2177600))

(declare-fun m!7680006 () Bool)

(assert (=> bs!1862320 m!7680006))

(assert (=> start!671868 d!2177600))

(declare-fun b!6990908 () Bool)

(declare-fun res!2851160 () Bool)

(declare-fun e!4201945 () Bool)

(assert (=> b!6990908 (=> (not res!2851160) (not e!4201945))))

(declare-fun lt!2488101 () List!67230)

(assert (=> b!6990908 (= res!2851160 (= (size!40907 lt!2488101) (+ (size!40907 (exprs!6724 lt!2487940)) (size!40907 (exprs!6724 ct2!306)))))))

(declare-fun b!6990907 () Bool)

(declare-fun e!4201946 () List!67230)

(assert (=> b!6990907 (= e!4201946 (Cons!67106 (h!73554 (exprs!6724 lt!2487940)) (++!15173 (t!380977 (exprs!6724 lt!2487940)) (exprs!6724 ct2!306))))))

(declare-fun b!6990909 () Bool)

(assert (=> b!6990909 (= e!4201945 (or (not (= (exprs!6724 ct2!306) Nil!67106)) (= lt!2488101 (exprs!6724 lt!2487940))))))

(declare-fun b!6990906 () Bool)

(assert (=> b!6990906 (= e!4201946 (exprs!6724 ct2!306))))

(declare-fun d!2177602 () Bool)

(assert (=> d!2177602 e!4201945))

(declare-fun res!2851161 () Bool)

(assert (=> d!2177602 (=> (not res!2851161) (not e!4201945))))

(assert (=> d!2177602 (= res!2851161 (= (content!13263 lt!2488101) (set.union (content!13263 (exprs!6724 lt!2487940)) (content!13263 (exprs!6724 ct2!306)))))))

(assert (=> d!2177602 (= lt!2488101 e!4201946)))

(declare-fun c!1296706 () Bool)

(assert (=> d!2177602 (= c!1296706 (is-Nil!67106 (exprs!6724 lt!2487940)))))

(assert (=> d!2177602 (= (++!15173 (exprs!6724 lt!2487940) (exprs!6724 ct2!306)) lt!2488101)))

(assert (= (and d!2177602 c!1296706) b!6990906))

(assert (= (and d!2177602 (not c!1296706)) b!6990907))

(assert (= (and d!2177602 res!2851161) b!6990908))

(assert (= (and b!6990908 res!2851160) b!6990909))

(declare-fun m!7680008 () Bool)

(assert (=> b!6990908 m!7680008))

(declare-fun m!7680010 () Bool)

(assert (=> b!6990908 m!7680010))

(assert (=> b!6990908 m!7679912))

(declare-fun m!7680012 () Bool)

(assert (=> b!6990907 m!7680012))

(declare-fun m!7680014 () Bool)

(assert (=> d!2177602 m!7680014))

(declare-fun m!7680016 () Bool)

(assert (=> d!2177602 m!7680016))

(assert (=> d!2177602 m!7679920))

(assert (=> b!6990731 d!2177602))

(declare-fun d!2177604 () Bool)

(assert (=> d!2177604 (forall!16142 (++!15173 (exprs!6724 lt!2487940) (exprs!6724 ct2!306)) lambda!402109)))

(declare-fun lt!2488102 () Unit!161111)

(assert (=> d!2177604 (= lt!2488102 (choose!52275 (exprs!6724 lt!2487940) (exprs!6724 ct2!306) lambda!402109))))

(assert (=> d!2177604 (forall!16142 (exprs!6724 lt!2487940) lambda!402109)))

(assert (=> d!2177604 (= (lemmaConcatPreservesForall!564 (exprs!6724 lt!2487940) (exprs!6724 ct2!306) lambda!402109) lt!2488102)))

(declare-fun bs!1862321 () Bool)

(assert (= bs!1862321 d!2177604))

(assert (=> bs!1862321 m!7679710))

(assert (=> bs!1862321 m!7679710))

(declare-fun m!7680018 () Bool)

(assert (=> bs!1862321 m!7680018))

(declare-fun m!7680020 () Bool)

(assert (=> bs!1862321 m!7680020))

(declare-fun m!7680022 () Bool)

(assert (=> bs!1862321 m!7680022))

(assert (=> b!6990731 d!2177604))

(declare-fun d!2177606 () Bool)

(declare-fun e!4201949 () Bool)

(assert (=> d!2177606 e!4201949))

(declare-fun res!2851164 () Bool)

(assert (=> d!2177606 (=> (not res!2851164) (not e!4201949))))

(declare-fun lt!2488105 () Context!12448)

(assert (=> d!2177606 (= res!2851164 (= lt!2487919 (dynLambda!26915 lambda!402108 lt!2488105)))))

(declare-fun choose!52282 ((Set Context!12448) Int Context!12448) Context!12448)

(assert (=> d!2177606 (= lt!2488105 (choose!52282 z1!570 lambda!402108 lt!2487919))))

(assert (=> d!2177606 (set.member lt!2487919 (map!15489 z1!570 lambda!402108))))

(assert (=> d!2177606 (= (mapPost2!83 z1!570 lambda!402108 lt!2487919) lt!2488105)))

(declare-fun b!6990913 () Bool)

(assert (=> b!6990913 (= e!4201949 (set.member lt!2488105 z1!570))))

(assert (= (and d!2177606 res!2851164) b!6990913))

(declare-fun b_lambda!262661 () Bool)

(assert (=> (not b_lambda!262661) (not d!2177606)))

(declare-fun m!7680024 () Bool)

(assert (=> d!2177606 m!7680024))

(declare-fun m!7680026 () Bool)

(assert (=> d!2177606 m!7680026))

(declare-fun m!7680028 () Bool)

(assert (=> d!2177606 m!7680028))

(declare-fun m!7680030 () Bool)

(assert (=> d!2177606 m!7680030))

(declare-fun m!7680032 () Bool)

(assert (=> b!6990913 m!7680032))

(assert (=> b!6990731 d!2177606))

(declare-fun bs!1862322 () Bool)

(declare-fun d!2177608 () Bool)

(assert (= bs!1862322 (and d!2177608 b!6990726)))

(declare-fun lambda!402184 () Int)

(assert (=> bs!1862322 (= lambda!402184 lambda!402110)))

(assert (=> d!2177608 true))

(assert (=> d!2177608 (= (derivationStepZipper!2708 lt!2487920 (h!73553 s!7408)) (flatMap!2214 lt!2487920 lambda!402184))))

(declare-fun bs!1862323 () Bool)

(assert (= bs!1862323 d!2177608))

(declare-fun m!7680034 () Bool)

(assert (=> bs!1862323 m!7680034))

(assert (=> b!6990721 d!2177608))

(declare-fun d!2177610 () Bool)

(assert (=> d!2177610 (= (flatMap!2214 lt!2487920 lambda!402110) (choose!52278 lt!2487920 lambda!402110))))

(declare-fun bs!1862324 () Bool)

(assert (= bs!1862324 d!2177610))

(declare-fun m!7680036 () Bool)

(assert (=> bs!1862324 m!7680036))

(assert (=> b!6990721 d!2177610))

(assert (=> b!6990721 d!2177554))

(assert (=> b!6990721 d!2177560))

(declare-fun d!2177612 () Bool)

(assert (=> d!2177612 (= (flatMap!2214 lt!2487920 lambda!402110) (dynLambda!26914 lambda!402110 lt!2487915))))

(declare-fun lt!2488106 () Unit!161111)

(assert (=> d!2177612 (= lt!2488106 (choose!52276 lt!2487920 lt!2487915 lambda!402110))))

(assert (=> d!2177612 (= lt!2487920 (set.insert lt!2487915 (as set.empty (Set Context!12448))))))

(assert (=> d!2177612 (= (lemmaFlatMapOnSingletonSet!1729 lt!2487920 lt!2487915 lambda!402110) lt!2488106)))

(declare-fun b_lambda!262663 () Bool)

(assert (=> (not b_lambda!262663) (not d!2177612)))

(declare-fun bs!1862325 () Bool)

(assert (= bs!1862325 d!2177612))

(assert (=> bs!1862325 m!7679766))

(declare-fun m!7680038 () Bool)

(assert (=> bs!1862325 m!7680038))

(declare-fun m!7680040 () Bool)

(assert (=> bs!1862325 m!7680040))

(assert (=> bs!1862325 m!7679772))

(assert (=> b!6990721 d!2177612))

(assert (=> b!6990730 d!2177604))

(assert (=> b!6990727 d!2177554))

(declare-fun d!2177614 () Bool)

(declare-fun c!1296709 () Bool)

(assert (=> d!2177614 (= c!1296709 (isEmpty!39166 (t!380976 s!7408)))))

(declare-fun e!4201950 () Bool)

(assert (=> d!2177614 (= (matchZipper!2768 lt!2487923 (t!380976 s!7408)) e!4201950)))

(declare-fun b!6990916 () Bool)

(assert (=> b!6990916 (= e!4201950 (nullableZipper!2439 lt!2487923))))

(declare-fun b!6990917 () Bool)

(assert (=> b!6990917 (= e!4201950 (matchZipper!2768 (derivationStepZipper!2708 lt!2487923 (head!14114 (t!380976 s!7408))) (tail!13242 (t!380976 s!7408))))))

(assert (= (and d!2177614 c!1296709) b!6990916))

(assert (= (and d!2177614 (not c!1296709)) b!6990917))

(assert (=> d!2177614 m!7679880))

(declare-fun m!7680042 () Bool)

(assert (=> b!6990916 m!7680042))

(assert (=> b!6990917 m!7679884))

(assert (=> b!6990917 m!7679884))

(declare-fun m!7680044 () Bool)

(assert (=> b!6990917 m!7680044))

(assert (=> b!6990917 m!7679888))

(assert (=> b!6990917 m!7680044))

(assert (=> b!6990917 m!7679888))

(declare-fun m!7680046 () Bool)

(assert (=> b!6990917 m!7680046))

(assert (=> b!6990727 d!2177614))

(declare-fun d!2177616 () Bool)

(declare-fun c!1296710 () Bool)

(assert (=> d!2177616 (= c!1296710 (isEmpty!39166 (t!380976 s!7408)))))

(declare-fun e!4201951 () Bool)

(assert (=> d!2177616 (= (matchZipper!2768 lt!2487936 (t!380976 s!7408)) e!4201951)))

(declare-fun b!6990918 () Bool)

(assert (=> b!6990918 (= e!4201951 (nullableZipper!2439 lt!2487936))))

(declare-fun b!6990919 () Bool)

(assert (=> b!6990919 (= e!4201951 (matchZipper!2768 (derivationStepZipper!2708 lt!2487936 (head!14114 (t!380976 s!7408))) (tail!13242 (t!380976 s!7408))))))

(assert (= (and d!2177616 c!1296710) b!6990918))

(assert (= (and d!2177616 (not c!1296710)) b!6990919))

(assert (=> d!2177616 m!7679880))

(declare-fun m!7680048 () Bool)

(assert (=> b!6990918 m!7680048))

(assert (=> b!6990919 m!7679884))

(assert (=> b!6990919 m!7679884))

(declare-fun m!7680050 () Bool)

(assert (=> b!6990919 m!7680050))

(assert (=> b!6990919 m!7679888))

(assert (=> b!6990919 m!7680050))

(assert (=> b!6990919 m!7679888))

(declare-fun m!7680052 () Bool)

(assert (=> b!6990919 m!7680052))

(assert (=> b!6990727 d!2177616))

(declare-fun d!2177618 () Bool)

(declare-fun c!1296711 () Bool)

(assert (=> d!2177618 (= c!1296711 (isEmpty!39166 (t!380976 s!7408)))))

(declare-fun e!4201952 () Bool)

(assert (=> d!2177618 (= (matchZipper!2768 lt!2487953 (t!380976 s!7408)) e!4201952)))

(declare-fun b!6990920 () Bool)

(assert (=> b!6990920 (= e!4201952 (nullableZipper!2439 lt!2487953))))

(declare-fun b!6990921 () Bool)

(assert (=> b!6990921 (= e!4201952 (matchZipper!2768 (derivationStepZipper!2708 lt!2487953 (head!14114 (t!380976 s!7408))) (tail!13242 (t!380976 s!7408))))))

(assert (= (and d!2177618 c!1296711) b!6990920))

(assert (= (and d!2177618 (not c!1296711)) b!6990921))

(assert (=> d!2177618 m!7679880))

(declare-fun m!7680054 () Bool)

(assert (=> b!6990920 m!7680054))

(assert (=> b!6990921 m!7679884))

(assert (=> b!6990921 m!7679884))

(declare-fun m!7680056 () Bool)

(assert (=> b!6990921 m!7680056))

(assert (=> b!6990921 m!7679888))

(assert (=> b!6990921 m!7680056))

(assert (=> b!6990921 m!7679888))

(declare-fun m!7680058 () Bool)

(assert (=> b!6990921 m!7680058))

(assert (=> b!6990727 d!2177618))

(declare-fun d!2177620 () Bool)

(declare-fun e!4201955 () Bool)

(assert (=> d!2177620 (= (matchZipper!2768 (set.union lt!2487936 lt!2487939) (t!380976 s!7408)) e!4201955)))

(declare-fun res!2851167 () Bool)

(assert (=> d!2177620 (=> res!2851167 e!4201955)))

(assert (=> d!2177620 (= res!2851167 (matchZipper!2768 lt!2487936 (t!380976 s!7408)))))

(declare-fun lt!2488109 () Unit!161111)

(declare-fun choose!52283 ((Set Context!12448) (Set Context!12448) List!67229) Unit!161111)

(assert (=> d!2177620 (= lt!2488109 (choose!52283 lt!2487936 lt!2487939 (t!380976 s!7408)))))

(assert (=> d!2177620 (= (lemmaZipperConcatMatchesSameAsBothZippers!1401 lt!2487936 lt!2487939 (t!380976 s!7408)) lt!2488109)))

(declare-fun b!6990924 () Bool)

(assert (=> b!6990924 (= e!4201955 (matchZipper!2768 lt!2487939 (t!380976 s!7408)))))

(assert (= (and d!2177620 (not res!2851167)) b!6990924))

(declare-fun m!7680060 () Bool)

(assert (=> d!2177620 m!7680060))

(assert (=> d!2177620 m!7679746))

(declare-fun m!7680062 () Bool)

(assert (=> d!2177620 m!7680062))

(assert (=> b!6990924 m!7679738))

(assert (=> b!6990727 d!2177620))

(assert (=> b!6990726 d!2177604))

(declare-fun d!2177622 () Bool)

(assert (=> d!2177622 (= (flatMap!2214 lt!2487950 lambda!402110) (dynLambda!26914 lambda!402110 lt!2487925))))

(declare-fun lt!2488110 () Unit!161111)

(assert (=> d!2177622 (= lt!2488110 (choose!52276 lt!2487950 lt!2487925 lambda!402110))))

(assert (=> d!2177622 (= lt!2487950 (set.insert lt!2487925 (as set.empty (Set Context!12448))))))

(assert (=> d!2177622 (= (lemmaFlatMapOnSingletonSet!1729 lt!2487950 lt!2487925 lambda!402110) lt!2488110)))

(declare-fun b_lambda!262665 () Bool)

(assert (=> (not b_lambda!262665) (not d!2177622)))

(declare-fun bs!1862326 () Bool)

(assert (= bs!1862326 d!2177622))

(assert (=> bs!1862326 m!7679752))

(declare-fun m!7680064 () Bool)

(assert (=> bs!1862326 m!7680064))

(declare-fun m!7680066 () Bool)

(assert (=> bs!1862326 m!7680066))

(assert (=> bs!1862326 m!7679782))

(assert (=> b!6990726 d!2177622))

(declare-fun bs!1862327 () Bool)

(declare-fun d!2177624 () Bool)

(assert (= bs!1862327 (and d!2177624 b!6990726)))

(declare-fun lambda!402185 () Int)

(assert (=> bs!1862327 (= lambda!402185 lambda!402110)))

(declare-fun bs!1862328 () Bool)

(assert (= bs!1862328 (and d!2177624 d!2177608)))

(assert (=> bs!1862328 (= lambda!402185 lambda!402184)))

(assert (=> d!2177624 true))

(assert (=> d!2177624 (= (derivationStepZipper!2708 lt!2487950 (h!73553 s!7408)) (flatMap!2214 lt!2487950 lambda!402185))))

(declare-fun bs!1862329 () Bool)

(assert (= bs!1862329 d!2177624))

(declare-fun m!7680068 () Bool)

(assert (=> bs!1862329 m!7680068))

(assert (=> b!6990726 d!2177624))

(declare-fun call!634644 () (Set Context!12448))

(declare-fun b!6990925 () Bool)

(declare-fun e!4201957 () (Set Context!12448))

(assert (=> b!6990925 (= e!4201957 (set.union call!634644 (derivationStepZipperUp!1878 (Context!12449 (t!380977 (exprs!6724 lt!2487925))) (h!73553 s!7408))))))

(declare-fun b!6990926 () Bool)

(declare-fun e!4201958 () (Set Context!12448))

(assert (=> b!6990926 (= e!4201958 call!634644)))

(declare-fun b!6990927 () Bool)

(declare-fun e!4201956 () Bool)

(assert (=> b!6990927 (= e!4201956 (nullable!6988 (h!73554 (exprs!6724 lt!2487925))))))

(declare-fun d!2177626 () Bool)

(declare-fun c!1296712 () Bool)

(assert (=> d!2177626 (= c!1296712 e!4201956)))

(declare-fun res!2851168 () Bool)

(assert (=> d!2177626 (=> (not res!2851168) (not e!4201956))))

(assert (=> d!2177626 (= res!2851168 (is-Cons!67106 (exprs!6724 lt!2487925)))))

(assert (=> d!2177626 (= (derivationStepZipperUp!1878 lt!2487925 (h!73553 s!7408)) e!4201957)))

(declare-fun b!6990928 () Bool)

(assert (=> b!6990928 (= e!4201958 (as set.empty (Set Context!12448)))))

(declare-fun bm!634639 () Bool)

(assert (=> bm!634639 (= call!634644 (derivationStepZipperDown!1946 (h!73554 (exprs!6724 lt!2487925)) (Context!12449 (t!380977 (exprs!6724 lt!2487925))) (h!73553 s!7408)))))

(declare-fun b!6990929 () Bool)

(assert (=> b!6990929 (= e!4201957 e!4201958)))

(declare-fun c!1296713 () Bool)

(assert (=> b!6990929 (= c!1296713 (is-Cons!67106 (exprs!6724 lt!2487925)))))

(assert (= (and d!2177626 res!2851168) b!6990927))

(assert (= (and d!2177626 c!1296712) b!6990925))

(assert (= (and d!2177626 (not c!1296712)) b!6990929))

(assert (= (and b!6990929 c!1296713) b!6990926))

(assert (= (and b!6990929 (not c!1296713)) b!6990928))

(assert (= (or b!6990925 b!6990926) bm!634639))

(declare-fun m!7680070 () Bool)

(assert (=> b!6990925 m!7680070))

(declare-fun m!7680072 () Bool)

(assert (=> b!6990927 m!7680072))

(declare-fun m!7680074 () Bool)

(assert (=> bm!634639 m!7680074))

(assert (=> b!6990726 d!2177626))

(declare-fun d!2177628 () Bool)

(assert (=> d!2177628 (= (flatMap!2214 lt!2487950 lambda!402110) (choose!52278 lt!2487950 lambda!402110))))

(declare-fun bs!1862330 () Bool)

(assert (= bs!1862330 d!2177628))

(declare-fun m!7680076 () Bool)

(assert (=> bs!1862330 m!7680076))

(assert (=> b!6990726 d!2177628))

(assert (=> b!6990728 d!2177552))

(assert (=> b!6990728 d!2177554))

(declare-fun b!6990934 () Bool)

(declare-fun e!4201961 () Bool)

(declare-fun tp!1929905 () Bool)

(declare-fun tp!1929906 () Bool)

(assert (=> b!6990934 (= e!4201961 (and tp!1929905 tp!1929906))))

(assert (=> b!6990725 (= tp!1929886 e!4201961)))

(assert (= (and b!6990725 (is-Cons!67106 (exprs!6724 ct2!306))) b!6990934))

(declare-fun b!6990939 () Bool)

(declare-fun e!4201964 () Bool)

(declare-fun tp!1929909 () Bool)

(assert (=> b!6990939 (= e!4201964 (and tp_is_empty!43681 tp!1929909))))

(assert (=> b!6990714 (= tp!1929887 e!4201964)))

(assert (= (and b!6990714 (is-Cons!67105 (t!380976 s!7408))) b!6990939))

(declare-fun condSetEmpty!47856 () Bool)

(assert (=> setNonEmpty!47850 (= condSetEmpty!47856 (= setRest!47850 (as set.empty (Set Context!12448))))))

(declare-fun setRes!47856 () Bool)

(assert (=> setNonEmpty!47850 (= tp!1929888 setRes!47856)))

(declare-fun setIsEmpty!47856 () Bool)

(assert (=> setIsEmpty!47856 setRes!47856))

(declare-fun tp!1929914 () Bool)

(declare-fun setElem!47856 () Context!12448)

(declare-fun e!4201967 () Bool)

(declare-fun setNonEmpty!47856 () Bool)

(assert (=> setNonEmpty!47856 (= setRes!47856 (and tp!1929914 (inv!85930 setElem!47856) e!4201967))))

(declare-fun setRest!47856 () (Set Context!12448))

(assert (=> setNonEmpty!47856 (= setRest!47850 (set.union (set.insert setElem!47856 (as set.empty (Set Context!12448))) setRest!47856))))

(declare-fun b!6990944 () Bool)

(declare-fun tp!1929915 () Bool)

(assert (=> b!6990944 (= e!4201967 tp!1929915)))

(assert (= (and setNonEmpty!47850 condSetEmpty!47856) setIsEmpty!47856))

(assert (= (and setNonEmpty!47850 (not condSetEmpty!47856)) setNonEmpty!47856))

(assert (= setNonEmpty!47856 b!6990944))

(declare-fun m!7680078 () Bool)

(assert (=> setNonEmpty!47856 m!7680078))

(declare-fun b!6990945 () Bool)

(declare-fun e!4201968 () Bool)

(declare-fun tp!1929916 () Bool)

(declare-fun tp!1929917 () Bool)

(assert (=> b!6990945 (= e!4201968 (and tp!1929916 tp!1929917))))

(assert (=> b!6990717 (= tp!1929885 e!4201968)))

(assert (= (and b!6990717 (is-Cons!67106 (exprs!6724 setElem!47850))) b!6990945))

(declare-fun b_lambda!262667 () Bool)

(assert (= b_lambda!262661 (or b!6990731 b_lambda!262667)))

(declare-fun bs!1862331 () Bool)

(declare-fun d!2177630 () Bool)

(assert (= bs!1862331 (and d!2177630 b!6990731)))

(declare-fun lt!2488111 () Unit!161111)

(assert (=> bs!1862331 (= lt!2488111 (lemmaConcatPreservesForall!564 (exprs!6724 lt!2488105) (exprs!6724 ct2!306) lambda!402109))))

(assert (=> bs!1862331 (= (dynLambda!26915 lambda!402108 lt!2488105) (Context!12449 (++!15173 (exprs!6724 lt!2488105) (exprs!6724 ct2!306))))))

(declare-fun m!7680080 () Bool)

(assert (=> bs!1862331 m!7680080))

(declare-fun m!7680082 () Bool)

(assert (=> bs!1862331 m!7680082))

(assert (=> d!2177606 d!2177630))

(declare-fun b_lambda!262669 () Bool)

(assert (= b_lambda!262653 (or b!6990726 b_lambda!262669)))

(declare-fun bs!1862332 () Bool)

(declare-fun d!2177632 () Bool)

(assert (= bs!1862332 (and d!2177632 b!6990726)))

(assert (=> bs!1862332 (= (dynLambda!26914 lambda!402110 lt!2487941) (derivationStepZipperUp!1878 lt!2487941 (h!73553 s!7408)))))

(assert (=> bs!1862332 m!7679722))

(assert (=> d!2177566 d!2177632))

(declare-fun b_lambda!262671 () Bool)

(assert (= b_lambda!262657 (or b!6990731 b_lambda!262671)))

(declare-fun bs!1862333 () Bool)

(declare-fun d!2177634 () Bool)

(assert (= bs!1862333 (and d!2177634 b!6990731)))

(declare-fun lt!2488112 () Unit!161111)

(assert (=> bs!1862333 (= lt!2488112 (lemmaConcatPreservesForall!564 (exprs!6724 lt!2487941) (exprs!6724 ct2!306) lambda!402109))))

(assert (=> bs!1862333 (= (dynLambda!26915 lambda!402108 lt!2487941) (Context!12449 (++!15173 (exprs!6724 lt!2487941) (exprs!6724 ct2!306))))))

(declare-fun m!7680084 () Bool)

(assert (=> bs!1862333 m!7680084))

(declare-fun m!7680086 () Bool)

(assert (=> bs!1862333 m!7680086))

(assert (=> d!2177576 d!2177634))

(declare-fun b_lambda!262673 () Bool)

(assert (= b_lambda!262665 (or b!6990726 b_lambda!262673)))

(declare-fun bs!1862334 () Bool)

(declare-fun d!2177636 () Bool)

(assert (= bs!1862334 (and d!2177636 b!6990726)))

(assert (=> bs!1862334 (= (dynLambda!26914 lambda!402110 lt!2487925) (derivationStepZipperUp!1878 lt!2487925 (h!73553 s!7408)))))

(assert (=> bs!1862334 m!7679754))

(assert (=> d!2177622 d!2177636))

(declare-fun b_lambda!262675 () Bool)

(assert (= b_lambda!262659 (or b!6990719 b_lambda!262675)))

(declare-fun bs!1862335 () Bool)

(declare-fun d!2177638 () Bool)

(assert (= bs!1862335 (and d!2177638 b!6990719)))

(assert (=> bs!1862335 (= (dynLambda!26917 lambda!402107 lt!2488098) (matchZipper!2768 (set.insert lt!2488098 (as set.empty (Set Context!12448))) s!7408))))

(declare-fun m!7680088 () Bool)

(assert (=> bs!1862335 m!7680088))

(assert (=> bs!1862335 m!7680088))

(declare-fun m!7680090 () Bool)

(assert (=> bs!1862335 m!7680090))

(assert (=> d!2177592 d!2177638))

(declare-fun b_lambda!262677 () Bool)

(assert (= b_lambda!262663 (or b!6990726 b_lambda!262677)))

(declare-fun bs!1862336 () Bool)

(declare-fun d!2177640 () Bool)

(assert (= bs!1862336 (and d!2177640 b!6990726)))

(assert (=> bs!1862336 (= (dynLambda!26914 lambda!402110 lt!2487915) (derivationStepZipperUp!1878 lt!2487915 (h!73553 s!7408)))))

(assert (=> bs!1862336 m!7679770))

(assert (=> d!2177612 d!2177640))

(declare-fun b_lambda!262679 () Bool)

(assert (= b_lambda!262655 (or b!6990731 b_lambda!262679)))

(declare-fun bs!1862337 () Bool)

(declare-fun d!2177642 () Bool)

(assert (= bs!1862337 (and d!2177642 b!6990731)))

(declare-fun validRegex!8863 (Regex!17228) Bool)

(assert (=> bs!1862337 (= (dynLambda!26913 lambda!402109 (h!73554 lt!2487929)) (validRegex!8863 (h!73554 lt!2487929)))))

(declare-fun m!7680092 () Bool)

(assert (=> bs!1862337 m!7680092))

(assert (=> b!6990890 d!2177642))

(declare-fun b_lambda!262681 () Bool)

(assert (= b_lambda!262651 (or b!6990731 b_lambda!262681)))

(declare-fun bs!1862338 () Bool)

(declare-fun d!2177644 () Bool)

(assert (= bs!1862338 (and d!2177644 b!6990731)))

(assert (=> bs!1862338 (= (dynLambda!26913 lambda!402109 (h!73554 (exprs!6724 ct2!306))) (validRegex!8863 (h!73554 (exprs!6724 ct2!306))))))

(declare-fun m!7680094 () Bool)

(assert (=> bs!1862338 m!7680094))

(assert (=> b!6990823 d!2177644))

(push 1)

(assert (not b!6990818))

(assert (not b!6990908))

(assert (not d!2177588))

(assert (not bs!1862336))

(assert (not d!2177576))

(assert (not b!6990924))

(assert (not d!2177612))

(assert (not d!2177602))

(assert (not d!2177586))

(assert (not b!6990885))

(assert (not b_lambda!262671))

(assert (not d!2177628))

(assert (not d!2177618))

(assert (not d!2177608))

(assert (not b!6990902))

(assert (not d!2177594))

(assert (not b!6990891))

(assert (not d!2177598))

(assert tp_is_empty!43681)

(assert (not b!6990917))

(assert (not d!2177604))

(assert (not b!6990892))

(assert (not b!6990907))

(assert (not d!2177614))

(assert (not b!6990925))

(assert (not b!6990887))

(assert (not b_lambda!262679))

(assert (not b!6990927))

(assert (not b_lambda!262673))

(assert (not d!2177600))

(assert (not b!6990904))

(assert (not bm!634636))

(assert (not b!6990920))

(assert (not d!2177624))

(assert (not d!2177590))

(assert (not b_lambda!262677))

(assert (not b!6990893))

(assert (not d!2177616))

(assert (not b_lambda!262681))

(assert (not bs!1862332))

(assert (not b!6990944))

(assert (not b!6990817))

(assert (not bm!634638))

(assert (not bm!634639))

(assert (not bs!1862337))

(assert (not b!6990837))

(assert (not b!6990850))

(assert (not bm!634619))

(assert (not b!6990849))

(assert (not d!2177568))

(assert (not b_lambda!262667))

(assert (not b!6990905))

(assert (not d!2177622))

(assert (not d!2177552))

(assert (not bs!1862333))

(assert (not b!6990919))

(assert (not bs!1862338))

(assert (not d!2177570))

(assert (not d!2177562))

(assert (not b!6990939))

(assert (not d!2177606))

(assert (not b!6990876))

(assert (not d!2177592))

(assert (not d!2177566))

(assert (not d!2177596))

(assert (not b!6990918))

(assert (not bs!1862335))

(assert (not b!6990835))

(assert (not b!6990903))

(assert (not b!6990896))

(assert (not d!2177582))

(assert (not b!6990916))

(assert (not b!6990945))

(assert (not bs!1862334))

(assert (not b!6990921))

(assert (not b!6990934))

(assert (not bm!634634))

(assert (not d!2177554))

(assert (not d!2177620))

(assert (not d!2177578))

(assert (not bs!1862331))

(assert (not d!2177610))

(assert (not b!6990824))

(assert (not setNonEmpty!47856))

(assert (not b_lambda!262669))

(assert (not d!2177558))

(assert (not b_lambda!262675))

(assert (not bm!634632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

