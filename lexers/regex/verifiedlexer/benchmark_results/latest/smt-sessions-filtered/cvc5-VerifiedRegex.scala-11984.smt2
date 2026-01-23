; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!671520 () Bool)

(assert start!671520)

(declare-fun b!6988743 () Bool)

(assert (=> b!6988743 true))

(declare-fun b!6988753 () Bool)

(assert (=> b!6988753 true))

(declare-fun b!6988741 () Bool)

(assert (=> b!6988741 true))

(declare-fun b!6988738 () Bool)

(declare-fun e!4200557 () Bool)

(declare-fun e!4200556 () Bool)

(assert (=> b!6988738 (= e!4200557 e!4200556)))

(declare-fun res!2850049 () Bool)

(assert (=> b!6988738 (=> res!2850049 e!4200556)))

(declare-datatypes ((C!34698 0))(
  ( (C!34699 (val!27051 Int)) )
))
(declare-datatypes ((Regex!17214 0))(
  ( (ElementMatch!17214 (c!1296160 C!34698)) (Concat!26059 (regOne!34940 Regex!17214) (regTwo!34940 Regex!17214)) (EmptyExpr!17214) (Star!17214 (reg!17543 Regex!17214)) (EmptyLang!17214) (Union!17214 (regOne!34941 Regex!17214) (regTwo!34941 Regex!17214)) )
))
(declare-datatypes ((List!67187 0))(
  ( (Nil!67063) (Cons!67063 (h!73511 Regex!17214) (t!380934 List!67187)) )
))
(declare-datatypes ((Context!12420 0))(
  ( (Context!12421 (exprs!6710 List!67187)) )
))
(declare-fun lt!2486126 () (Set Context!12420))

(declare-fun lt!2486104 () (Set Context!12420))

(assert (=> b!6988738 (= res!2850049 (not (= lt!2486126 lt!2486104)))))

(declare-fun lt!2486128 () Context!12420)

(assert (=> b!6988738 (= lt!2486126 (set.insert lt!2486128 (as set.empty (Set Context!12420))))))

(declare-fun lt!2486106 () Context!12420)

(declare-datatypes ((Unit!161083 0))(
  ( (Unit!161084) )
))
(declare-fun lt!2486120 () Unit!161083)

(declare-fun lambda!401260 () Int)

(declare-fun ct2!306 () Context!12420)

(declare-fun lemmaConcatPreservesForall!550 (List!67187 List!67187 Int) Unit!161083)

(assert (=> b!6988738 (= lt!2486120 (lemmaConcatPreservesForall!550 (exprs!6710 lt!2486106) (exprs!6710 ct2!306) lambda!401260))))

(declare-fun b!6988739 () Bool)

(declare-fun res!2850033 () Bool)

(declare-fun e!4200549 () Bool)

(assert (=> b!6988739 (=> (not res!2850033) (not e!4200549))))

(declare-datatypes ((List!67188 0))(
  ( (Nil!67064) (Cons!67064 (h!73512 C!34698) (t!380935 List!67188)) )
))
(declare-fun s!7408 () List!67188)

(assert (=> b!6988739 (= res!2850033 (is-Cons!67064 s!7408))))

(declare-fun b!6988740 () Bool)

(declare-fun e!4200544 () Bool)

(declare-fun tp!1929564 () Bool)

(assert (=> b!6988740 (= e!4200544 tp!1929564)))

(declare-fun e!4200543 () Bool)

(assert (=> b!6988741 (= e!4200556 e!4200543)))

(declare-fun res!2850047 () Bool)

(assert (=> b!6988741 (=> res!2850047 e!4200543)))

(declare-fun lt!2486116 () (Set Context!12420))

(declare-fun derivationStepZipper!2694 ((Set Context!12420) C!34698) (Set Context!12420))

(assert (=> b!6988741 (= res!2850047 (not (= (derivationStepZipper!2694 lt!2486126 (h!73512 s!7408)) lt!2486116)))))

(declare-fun lambda!401261 () Int)

(declare-fun flatMap!2200 ((Set Context!12420) Int) (Set Context!12420))

(declare-fun derivationStepZipperUp!1864 (Context!12420 C!34698) (Set Context!12420))

(assert (=> b!6988741 (= (flatMap!2200 lt!2486126 lambda!401261) (derivationStepZipperUp!1864 lt!2486128 (h!73512 s!7408)))))

(declare-fun lt!2486105 () Unit!161083)

(declare-fun lemmaFlatMapOnSingletonSet!1715 ((Set Context!12420) Context!12420 Int) Unit!161083)

(assert (=> b!6988741 (= lt!2486105 (lemmaFlatMapOnSingletonSet!1715 lt!2486126 lt!2486128 lambda!401261))))

(assert (=> b!6988741 (= lt!2486116 (derivationStepZipperUp!1864 lt!2486128 (h!73512 s!7408)))))

(declare-fun lt!2486133 () Unit!161083)

(assert (=> b!6988741 (= lt!2486133 (lemmaConcatPreservesForall!550 (exprs!6710 lt!2486106) (exprs!6710 ct2!306) lambda!401260))))

(declare-fun b!6988742 () Bool)

(declare-fun e!4200554 () Bool)

(declare-fun e!4200548 () Bool)

(assert (=> b!6988742 (= e!4200554 e!4200548)))

(declare-fun res!2850043 () Bool)

(assert (=> b!6988742 (=> res!2850043 e!4200548)))

(declare-fun e!4200555 () Bool)

(assert (=> b!6988742 (= res!2850043 e!4200555)))

(declare-fun res!2850045 () Bool)

(assert (=> b!6988742 (=> (not res!2850045) (not e!4200555))))

(declare-fun lt!2486124 () Bool)

(declare-fun lt!2486117 () Bool)

(assert (=> b!6988742 (= res!2850045 (not (= lt!2486124 lt!2486117)))))

(declare-fun matchZipper!2754 ((Set Context!12420) List!67188) Bool)

(assert (=> b!6988742 (= lt!2486124 (matchZipper!2754 lt!2486116 (t!380935 s!7408)))))

(declare-fun lt!2486132 () Unit!161083)

(declare-fun lt!2486123 () List!67187)

(assert (=> b!6988742 (= lt!2486132 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lt!2486113 () (Set Context!12420))

(declare-fun e!4200545 () Bool)

(assert (=> b!6988742 (= (matchZipper!2754 lt!2486113 (t!380935 s!7408)) e!4200545)))

(declare-fun res!2850038 () Bool)

(assert (=> b!6988742 (=> res!2850038 e!4200545)))

(assert (=> b!6988742 (= res!2850038 lt!2486117)))

(declare-fun lt!2486137 () (Set Context!12420))

(assert (=> b!6988742 (= lt!2486117 (matchZipper!2754 lt!2486137 (t!380935 s!7408)))))

(declare-fun lt!2486127 () (Set Context!12420))

(declare-fun lt!2486135 () Unit!161083)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1387 ((Set Context!12420) (Set Context!12420) List!67188) Unit!161083)

(assert (=> b!6988742 (= lt!2486135 (lemmaZipperConcatMatchesSameAsBothZippers!1387 lt!2486137 lt!2486127 (t!380935 s!7408)))))

(declare-fun lt!2486129 () Unit!161083)

(assert (=> b!6988742 (= lt!2486129 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lt!2486119 () Unit!161083)

(assert (=> b!6988742 (= lt!2486119 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun e!4200547 () Bool)

(assert (=> b!6988743 (= e!4200549 (not e!4200547))))

(declare-fun res!2850041 () Bool)

(assert (=> b!6988743 (=> res!2850041 e!4200547)))

(assert (=> b!6988743 (= res!2850041 (not (matchZipper!2754 lt!2486104 s!7408)))))

(declare-fun lt!2486115 () Context!12420)

(assert (=> b!6988743 (= lt!2486104 (set.insert lt!2486115 (as set.empty (Set Context!12420))))))

(declare-fun lt!2486114 () (Set Context!12420))

(declare-fun lambda!401258 () Int)

(declare-fun getWitness!1110 ((Set Context!12420) Int) Context!12420)

(assert (=> b!6988743 (= lt!2486115 (getWitness!1110 lt!2486114 lambda!401258))))

(declare-datatypes ((List!67189 0))(
  ( (Nil!67065) (Cons!67065 (h!73513 Context!12420) (t!380936 List!67189)) )
))
(declare-fun lt!2486125 () List!67189)

(declare-fun exists!2999 (List!67189 Int) Bool)

(assert (=> b!6988743 (exists!2999 lt!2486125 lambda!401258)))

(declare-fun lt!2486136 () Unit!161083)

(declare-fun lemmaZipperMatchesExistsMatchingContext!183 (List!67189 List!67188) Unit!161083)

(assert (=> b!6988743 (= lt!2486136 (lemmaZipperMatchesExistsMatchingContext!183 lt!2486125 s!7408))))

(declare-fun toList!10574 ((Set Context!12420)) List!67189)

(assert (=> b!6988743 (= lt!2486125 (toList!10574 lt!2486114))))

(declare-fun b!6988744 () Bool)

(declare-fun res!2850037 () Bool)

(assert (=> b!6988744 (=> res!2850037 e!4200547)))

(assert (=> b!6988744 (= res!2850037 (not (set.member lt!2486115 lt!2486114)))))

(declare-fun b!6988745 () Bool)

(declare-fun res!2850034 () Bool)

(assert (=> b!6988745 (=> res!2850034 e!4200543)))

(assert (=> b!6988745 (= res!2850034 (not (is-Cons!67063 (exprs!6710 lt!2486106))))))

(declare-fun b!6988746 () Bool)

(declare-fun res!2850046 () Bool)

(assert (=> b!6988746 (=> res!2850046 e!4200543)))

(declare-fun isEmpty!39144 (List!67187) Bool)

(assert (=> b!6988746 (= res!2850046 (isEmpty!39144 (exprs!6710 lt!2486106)))))

(declare-fun b!6988747 () Bool)

(declare-fun e!4200546 () Bool)

(declare-fun tp!1929561 () Bool)

(assert (=> b!6988747 (= e!4200546 tp!1929561)))

(declare-fun res!2850036 () Bool)

(assert (=> start!671520 (=> (not res!2850036) (not e!4200549))))

(assert (=> start!671520 (= res!2850036 (matchZipper!2754 lt!2486114 s!7408))))

(declare-fun z1!570 () (Set Context!12420))

(declare-fun appendTo!335 ((Set Context!12420) Context!12420) (Set Context!12420))

(assert (=> start!671520 (= lt!2486114 (appendTo!335 z1!570 ct2!306))))

(assert (=> start!671520 e!4200549))

(declare-fun condSetEmpty!47784 () Bool)

(assert (=> start!671520 (= condSetEmpty!47784 (= z1!570 (as set.empty (Set Context!12420))))))

(declare-fun setRes!47784 () Bool)

(assert (=> start!671520 setRes!47784))

(declare-fun inv!85895 (Context!12420) Bool)

(assert (=> start!671520 (and (inv!85895 ct2!306) e!4200546)))

(declare-fun e!4200553 () Bool)

(assert (=> start!671520 e!4200553))

(declare-fun setIsEmpty!47784 () Bool)

(assert (=> setIsEmpty!47784 setRes!47784))

(declare-fun b!6988748 () Bool)

(declare-fun tp_is_empty!43653 () Bool)

(declare-fun tp!1929562 () Bool)

(assert (=> b!6988748 (= e!4200553 (and tp_is_empty!43653 tp!1929562))))

(declare-fun b!6988749 () Bool)

(declare-fun e!4200551 () Bool)

(declare-fun forall!16127 (List!67187 Int) Bool)

(assert (=> b!6988749 (= e!4200551 (forall!16127 lt!2486123 lambda!401260))))

(declare-fun b!6988750 () Bool)

(declare-fun e!4200552 () Bool)

(assert (=> b!6988750 (= e!4200552 e!4200554)))

(declare-fun res!2850039 () Bool)

(assert (=> b!6988750 (=> res!2850039 e!4200554)))

(assert (=> b!6988750 (= res!2850039 (not (= lt!2486116 lt!2486113)))))

(assert (=> b!6988750 (= lt!2486113 (set.union lt!2486137 lt!2486127))))

(declare-fun lt!2486122 () Context!12420)

(assert (=> b!6988750 (= lt!2486127 (derivationStepZipperUp!1864 lt!2486122 (h!73512 s!7408)))))

(declare-fun derivationStepZipperDown!1932 (Regex!17214 Context!12420 C!34698) (Set Context!12420))

(assert (=> b!6988750 (= lt!2486137 (derivationStepZipperDown!1932 (h!73511 (exprs!6710 lt!2486106)) lt!2486122 (h!73512 s!7408)))))

(declare-fun ++!15159 (List!67187 List!67187) List!67187)

(assert (=> b!6988750 (= lt!2486122 (Context!12421 (++!15159 lt!2486123 (exprs!6710 ct2!306))))))

(declare-fun lt!2486134 () Unit!161083)

(assert (=> b!6988750 (= lt!2486134 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lt!2486108 () Unit!161083)

(assert (=> b!6988750 (= lt!2486108 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun b!6988751 () Bool)

(declare-fun res!2850048 () Bool)

(assert (=> b!6988751 (=> res!2850048 e!4200548)))

(assert (=> b!6988751 (= res!2850048 (not lt!2486124))))

(declare-fun b!6988752 () Bool)

(assert (=> b!6988752 (= e!4200543 e!4200552)))

(declare-fun res!2850035 () Bool)

(assert (=> b!6988752 (=> res!2850035 e!4200552)))

(declare-fun nullable!6974 (Regex!17214) Bool)

(assert (=> b!6988752 (= res!2850035 (not (nullable!6974 (h!73511 (exprs!6710 lt!2486106)))))))

(declare-fun tail!13220 (List!67187) List!67187)

(assert (=> b!6988752 (= lt!2486123 (tail!13220 (exprs!6710 lt!2486106)))))

(assert (=> b!6988753 (= e!4200547 e!4200557)))

(declare-fun res!2850042 () Bool)

(assert (=> b!6988753 (=> res!2850042 e!4200557)))

(assert (=> b!6988753 (= res!2850042 (or (not (= lt!2486128 lt!2486115)) (not (set.member lt!2486106 z1!570))))))

(assert (=> b!6988753 (= lt!2486128 (Context!12421 (++!15159 (exprs!6710 lt!2486106) (exprs!6710 ct2!306))))))

(declare-fun lt!2486110 () Unit!161083)

(assert (=> b!6988753 (= lt!2486110 (lemmaConcatPreservesForall!550 (exprs!6710 lt!2486106) (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lambda!401259 () Int)

(declare-fun mapPost2!69 ((Set Context!12420) Int Context!12420) Context!12420)

(assert (=> b!6988753 (= lt!2486106 (mapPost2!69 z1!570 lambda!401259 lt!2486115))))

(declare-fun b!6988754 () Bool)

(assert (=> b!6988754 (= e!4200545 (matchZipper!2754 lt!2486127 (t!380935 s!7408)))))

(declare-fun b!6988755 () Bool)

(declare-fun e!4200550 () Bool)

(assert (=> b!6988755 (= e!4200550 e!4200551)))

(declare-fun res!2850044 () Bool)

(assert (=> b!6988755 (=> res!2850044 e!4200551)))

(declare-fun lt!2486131 () (Set Context!12420))

(assert (=> b!6988755 (= res!2850044 (not (= (derivationStepZipper!2694 lt!2486131 (h!73512 s!7408)) lt!2486127)))))

(declare-fun lt!2486112 () Unit!161083)

(assert (=> b!6988755 (= lt!2486112 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lt!2486109 () Unit!161083)

(assert (=> b!6988755 (= lt!2486109 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(assert (=> b!6988755 (= (flatMap!2200 lt!2486131 lambda!401261) (derivationStepZipperUp!1864 lt!2486122 (h!73512 s!7408)))))

(declare-fun lt!2486121 () Unit!161083)

(assert (=> b!6988755 (= lt!2486121 (lemmaFlatMapOnSingletonSet!1715 lt!2486131 lt!2486122 lambda!401261))))

(assert (=> b!6988755 (= lt!2486131 (set.insert lt!2486122 (as set.empty (Set Context!12420))))))

(declare-fun lt!2486130 () Unit!161083)

(assert (=> b!6988755 (= lt!2486130 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun lt!2486118 () Unit!161083)

(assert (=> b!6988755 (= lt!2486118 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun b!6988756 () Bool)

(assert (=> b!6988756 (= e!4200548 e!4200550)))

(declare-fun res!2850040 () Bool)

(assert (=> b!6988756 (=> res!2850040 e!4200550)))

(assert (=> b!6988756 (= res!2850040 (not (matchZipper!2754 lt!2486127 (t!380935 s!7408))))))

(declare-fun lt!2486111 () Unit!161083)

(assert (=> b!6988756 (= lt!2486111 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun b!6988757 () Bool)

(assert (=> b!6988757 (= e!4200555 (not (matchZipper!2754 lt!2486127 (t!380935 s!7408))))))

(declare-fun lt!2486107 () Unit!161083)

(assert (=> b!6988757 (= lt!2486107 (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(declare-fun setElem!47784 () Context!12420)

(declare-fun setNonEmpty!47784 () Bool)

(declare-fun tp!1929563 () Bool)

(assert (=> setNonEmpty!47784 (= setRes!47784 (and tp!1929563 (inv!85895 setElem!47784) e!4200544))))

(declare-fun setRest!47784 () (Set Context!12420))

(assert (=> setNonEmpty!47784 (= z1!570 (set.union (set.insert setElem!47784 (as set.empty (Set Context!12420))) setRest!47784))))

(assert (= (and start!671520 res!2850036) b!6988739))

(assert (= (and b!6988739 res!2850033) b!6988743))

(assert (= (and b!6988743 (not res!2850041)) b!6988744))

(assert (= (and b!6988744 (not res!2850037)) b!6988753))

(assert (= (and b!6988753 (not res!2850042)) b!6988738))

(assert (= (and b!6988738 (not res!2850049)) b!6988741))

(assert (= (and b!6988741 (not res!2850047)) b!6988745))

(assert (= (and b!6988745 (not res!2850034)) b!6988746))

(assert (= (and b!6988746 (not res!2850046)) b!6988752))

(assert (= (and b!6988752 (not res!2850035)) b!6988750))

(assert (= (and b!6988750 (not res!2850039)) b!6988742))

(assert (= (and b!6988742 (not res!2850038)) b!6988754))

(assert (= (and b!6988742 res!2850045) b!6988757))

(assert (= (and b!6988742 (not res!2850043)) b!6988751))

(assert (= (and b!6988751 (not res!2850048)) b!6988756))

(assert (= (and b!6988756 (not res!2850040)) b!6988755))

(assert (= (and b!6988755 (not res!2850044)) b!6988749))

(assert (= (and start!671520 condSetEmpty!47784) setIsEmpty!47784))

(assert (= (and start!671520 (not condSetEmpty!47784)) setNonEmpty!47784))

(assert (= setNonEmpty!47784 b!6988740))

(assert (= start!671520 b!6988747))

(assert (= (and start!671520 (is-Cons!67064 s!7408)) b!6988748))

(declare-fun m!7677104 () Bool)

(assert (=> b!6988744 m!7677104))

(declare-fun m!7677106 () Bool)

(assert (=> b!6988741 m!7677106))

(declare-fun m!7677108 () Bool)

(assert (=> b!6988741 m!7677108))

(declare-fun m!7677110 () Bool)

(assert (=> b!6988741 m!7677110))

(declare-fun m!7677112 () Bool)

(assert (=> b!6988741 m!7677112))

(declare-fun m!7677114 () Bool)

(assert (=> b!6988741 m!7677114))

(declare-fun m!7677116 () Bool)

(assert (=> b!6988756 m!7677116))

(declare-fun m!7677118 () Bool)

(assert (=> b!6988756 m!7677118))

(declare-fun m!7677120 () Bool)

(assert (=> b!6988749 m!7677120))

(assert (=> b!6988754 m!7677116))

(declare-fun m!7677122 () Bool)

(assert (=> b!6988738 m!7677122))

(assert (=> b!6988738 m!7677108))

(assert (=> b!6988757 m!7677116))

(assert (=> b!6988757 m!7677118))

(declare-fun m!7677124 () Bool)

(assert (=> b!6988750 m!7677124))

(declare-fun m!7677126 () Bool)

(assert (=> b!6988750 m!7677126))

(assert (=> b!6988750 m!7677118))

(declare-fun m!7677128 () Bool)

(assert (=> b!6988750 m!7677128))

(assert (=> b!6988750 m!7677118))

(declare-fun m!7677130 () Bool)

(assert (=> b!6988752 m!7677130))

(declare-fun m!7677132 () Bool)

(assert (=> b!6988752 m!7677132))

(declare-fun m!7677134 () Bool)

(assert (=> setNonEmpty!47784 m!7677134))

(declare-fun m!7677136 () Bool)

(assert (=> b!6988753 m!7677136))

(declare-fun m!7677138 () Bool)

(assert (=> b!6988753 m!7677138))

(assert (=> b!6988753 m!7677108))

(declare-fun m!7677140 () Bool)

(assert (=> b!6988753 m!7677140))

(declare-fun m!7677142 () Bool)

(assert (=> b!6988746 m!7677142))

(declare-fun m!7677144 () Bool)

(assert (=> start!671520 m!7677144))

(declare-fun m!7677146 () Bool)

(assert (=> start!671520 m!7677146))

(declare-fun m!7677148 () Bool)

(assert (=> start!671520 m!7677148))

(declare-fun m!7677150 () Bool)

(assert (=> b!6988743 m!7677150))

(declare-fun m!7677152 () Bool)

(assert (=> b!6988743 m!7677152))

(declare-fun m!7677154 () Bool)

(assert (=> b!6988743 m!7677154))

(declare-fun m!7677156 () Bool)

(assert (=> b!6988743 m!7677156))

(declare-fun m!7677158 () Bool)

(assert (=> b!6988743 m!7677158))

(declare-fun m!7677160 () Bool)

(assert (=> b!6988743 m!7677160))

(declare-fun m!7677162 () Bool)

(assert (=> b!6988755 m!7677162))

(declare-fun m!7677164 () Bool)

(assert (=> b!6988755 m!7677164))

(assert (=> b!6988755 m!7677128))

(assert (=> b!6988755 m!7677118))

(declare-fun m!7677166 () Bool)

(assert (=> b!6988755 m!7677166))

(assert (=> b!6988755 m!7677118))

(assert (=> b!6988755 m!7677118))

(assert (=> b!6988755 m!7677118))

(declare-fun m!7677168 () Bool)

(assert (=> b!6988755 m!7677168))

(declare-fun m!7677170 () Bool)

(assert (=> b!6988742 m!7677170))

(declare-fun m!7677172 () Bool)

(assert (=> b!6988742 m!7677172))

(assert (=> b!6988742 m!7677118))

(assert (=> b!6988742 m!7677118))

(declare-fun m!7677174 () Bool)

(assert (=> b!6988742 m!7677174))

(assert (=> b!6988742 m!7677118))

(declare-fun m!7677176 () Bool)

(assert (=> b!6988742 m!7677176))

(push 1)

(assert (not b!6988755))

(assert (not b!6988741))

(assert (not b!6988754))

(assert (not setNonEmpty!47784))

(assert (not b!6988738))

(assert (not b!6988747))

(assert (not b!6988757))

(assert (not b!6988752))

(assert (not b!6988742))

(assert (not b!6988753))

(assert (not b!6988740))

(assert (not b!6988746))

(assert (not b!6988750))

(assert (not b!6988749))

(assert (not b!6988743))

(assert (not start!671520))

(assert (not b!6988748))

(assert tp_is_empty!43653)

(assert (not b!6988756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2176923 () Bool)

(assert (=> d!2176923 (forall!16127 (++!15159 (exprs!6710 lt!2486106) (exprs!6710 ct2!306)) lambda!401260)))

(declare-fun lt!2486244 () Unit!161083)

(declare-fun choose!52232 (List!67187 List!67187 Int) Unit!161083)

(assert (=> d!2176923 (= lt!2486244 (choose!52232 (exprs!6710 lt!2486106) (exprs!6710 ct2!306) lambda!401260))))

(assert (=> d!2176923 (forall!16127 (exprs!6710 lt!2486106) lambda!401260)))

(assert (=> d!2176923 (= (lemmaConcatPreservesForall!550 (exprs!6710 lt!2486106) (exprs!6710 ct2!306) lambda!401260) lt!2486244)))

(declare-fun bs!1862035 () Bool)

(assert (= bs!1862035 d!2176923))

(assert (=> bs!1862035 m!7677138))

(assert (=> bs!1862035 m!7677138))

(declare-fun m!7677252 () Bool)

(assert (=> bs!1862035 m!7677252))

(declare-fun m!7677254 () Bool)

(assert (=> bs!1862035 m!7677254))

(declare-fun m!7677256 () Bool)

(assert (=> bs!1862035 m!7677256))

(assert (=> b!6988738 d!2176923))

(declare-fun bs!1862036 () Bool)

(declare-fun d!2176925 () Bool)

(assert (= bs!1862036 (and d!2176925 b!6988753)))

(declare-fun lambda!401310 () Int)

(assert (=> bs!1862036 (= lambda!401310 lambda!401260)))

(assert (=> d!2176925 (= (inv!85895 setElem!47784) (forall!16127 (exprs!6710 setElem!47784) lambda!401310))))

(declare-fun bs!1862037 () Bool)

(assert (= bs!1862037 d!2176925))

(declare-fun m!7677258 () Bool)

(assert (=> bs!1862037 m!7677258))

(assert (=> setNonEmpty!47784 d!2176925))

(declare-fun d!2176927 () Bool)

(declare-fun res!2850106 () Bool)

(declare-fun e!4200607 () Bool)

(assert (=> d!2176927 (=> res!2850106 e!4200607)))

(assert (=> d!2176927 (= res!2850106 (is-Nil!67063 lt!2486123))))

(assert (=> d!2176927 (= (forall!16127 lt!2486123 lambda!401260) e!4200607)))

(declare-fun b!6988834 () Bool)

(declare-fun e!4200608 () Bool)

(assert (=> b!6988834 (= e!4200607 e!4200608)))

(declare-fun res!2850107 () Bool)

(assert (=> b!6988834 (=> (not res!2850107) (not e!4200608))))

(declare-fun dynLambda!26884 (Int Regex!17214) Bool)

(assert (=> b!6988834 (= res!2850107 (dynLambda!26884 lambda!401260 (h!73511 lt!2486123)))))

(declare-fun b!6988835 () Bool)

(assert (=> b!6988835 (= e!4200608 (forall!16127 (t!380934 lt!2486123) lambda!401260))))

(assert (= (and d!2176927 (not res!2850106)) b!6988834))

(assert (= (and b!6988834 res!2850107) b!6988835))

(declare-fun b_lambda!262471 () Bool)

(assert (=> (not b_lambda!262471) (not b!6988834)))

(declare-fun m!7677260 () Bool)

(assert (=> b!6988834 m!7677260))

(declare-fun m!7677262 () Bool)

(assert (=> b!6988835 m!7677262))

(assert (=> b!6988749 d!2176927))

(declare-fun d!2176929 () Bool)

(assert (=> d!2176929 (= (isEmpty!39144 (exprs!6710 lt!2486106)) (is-Nil!67063 (exprs!6710 lt!2486106)))))

(assert (=> b!6988746 d!2176929))

(declare-fun d!2176931 () Bool)

(declare-fun c!1296174 () Bool)

(declare-fun isEmpty!39146 (List!67188) Bool)

(assert (=> d!2176931 (= c!1296174 (isEmpty!39146 (t!380935 s!7408)))))

(declare-fun e!4200611 () Bool)

(assert (=> d!2176931 (= (matchZipper!2754 lt!2486127 (t!380935 s!7408)) e!4200611)))

(declare-fun b!6988840 () Bool)

(declare-fun nullableZipper!2433 ((Set Context!12420)) Bool)

(assert (=> b!6988840 (= e!4200611 (nullableZipper!2433 lt!2486127))))

(declare-fun b!6988841 () Bool)

(declare-fun head!14108 (List!67188) C!34698)

(declare-fun tail!13222 (List!67188) List!67188)

(assert (=> b!6988841 (= e!4200611 (matchZipper!2754 (derivationStepZipper!2694 lt!2486127 (head!14108 (t!380935 s!7408))) (tail!13222 (t!380935 s!7408))))))

(assert (= (and d!2176931 c!1296174) b!6988840))

(assert (= (and d!2176931 (not c!1296174)) b!6988841))

(declare-fun m!7677264 () Bool)

(assert (=> d!2176931 m!7677264))

(declare-fun m!7677266 () Bool)

(assert (=> b!6988840 m!7677266))

(declare-fun m!7677268 () Bool)

(assert (=> b!6988841 m!7677268))

(assert (=> b!6988841 m!7677268))

(declare-fun m!7677270 () Bool)

(assert (=> b!6988841 m!7677270))

(declare-fun m!7677272 () Bool)

(assert (=> b!6988841 m!7677272))

(assert (=> b!6988841 m!7677270))

(assert (=> b!6988841 m!7677272))

(declare-fun m!7677274 () Bool)

(assert (=> b!6988841 m!7677274))

(assert (=> b!6988756 d!2176931))

(declare-fun d!2176933 () Bool)

(assert (=> d!2176933 (forall!16127 (++!15159 lt!2486123 (exprs!6710 ct2!306)) lambda!401260)))

(declare-fun lt!2486245 () Unit!161083)

(assert (=> d!2176933 (= lt!2486245 (choose!52232 lt!2486123 (exprs!6710 ct2!306) lambda!401260))))

(assert (=> d!2176933 (forall!16127 lt!2486123 lambda!401260)))

(assert (=> d!2176933 (= (lemmaConcatPreservesForall!550 lt!2486123 (exprs!6710 ct2!306) lambda!401260) lt!2486245)))

(declare-fun bs!1862038 () Bool)

(assert (= bs!1862038 d!2176933))

(assert (=> bs!1862038 m!7677126))

(assert (=> bs!1862038 m!7677126))

(declare-fun m!7677276 () Bool)

(assert (=> bs!1862038 m!7677276))

(declare-fun m!7677278 () Bool)

(assert (=> bs!1862038 m!7677278))

(assert (=> bs!1862038 m!7677120))

(assert (=> b!6988756 d!2176933))

(declare-fun bs!1862039 () Bool)

(declare-fun d!2176935 () Bool)

(assert (= bs!1862039 (and d!2176935 b!6988741)))

(declare-fun lambda!401313 () Int)

(assert (=> bs!1862039 (= lambda!401313 lambda!401261)))

(assert (=> d!2176935 true))

(assert (=> d!2176935 (= (derivationStepZipper!2694 lt!2486131 (h!73512 s!7408)) (flatMap!2200 lt!2486131 lambda!401313))))

(declare-fun bs!1862040 () Bool)

(assert (= bs!1862040 d!2176935))

(declare-fun m!7677280 () Bool)

(assert (=> bs!1862040 m!7677280))

(assert (=> b!6988755 d!2176935))

(assert (=> b!6988755 d!2176933))

(declare-fun d!2176937 () Bool)

(declare-fun dynLambda!26885 (Int Context!12420) (Set Context!12420))

(assert (=> d!2176937 (= (flatMap!2200 lt!2486131 lambda!401261) (dynLambda!26885 lambda!401261 lt!2486122))))

(declare-fun lt!2486248 () Unit!161083)

(declare-fun choose!52233 ((Set Context!12420) Context!12420 Int) Unit!161083)

(assert (=> d!2176937 (= lt!2486248 (choose!52233 lt!2486131 lt!2486122 lambda!401261))))

(assert (=> d!2176937 (= lt!2486131 (set.insert lt!2486122 (as set.empty (Set Context!12420))))))

(assert (=> d!2176937 (= (lemmaFlatMapOnSingletonSet!1715 lt!2486131 lt!2486122 lambda!401261) lt!2486248)))

(declare-fun b_lambda!262473 () Bool)

(assert (=> (not b_lambda!262473) (not d!2176937)))

(declare-fun bs!1862041 () Bool)

(assert (= bs!1862041 d!2176937))

(assert (=> bs!1862041 m!7677162))

(declare-fun m!7677282 () Bool)

(assert (=> bs!1862041 m!7677282))

(declare-fun m!7677284 () Bool)

(assert (=> bs!1862041 m!7677284))

(assert (=> bs!1862041 m!7677164))

(assert (=> b!6988755 d!2176937))

(declare-fun d!2176939 () Bool)

(declare-fun choose!52234 ((Set Context!12420) Int) (Set Context!12420))

(assert (=> d!2176939 (= (flatMap!2200 lt!2486131 lambda!401261) (choose!52234 lt!2486131 lambda!401261))))

(declare-fun bs!1862042 () Bool)

(assert (= bs!1862042 d!2176939))

(declare-fun m!7677286 () Bool)

(assert (=> bs!1862042 m!7677286))

(assert (=> b!6988755 d!2176939))

(declare-fun b!6988855 () Bool)

(declare-fun e!4200619 () (Set Context!12420))

(declare-fun call!634446 () (Set Context!12420))

(assert (=> b!6988855 (= e!4200619 call!634446)))

(declare-fun e!4200620 () (Set Context!12420))

(declare-fun b!6988856 () Bool)

(assert (=> b!6988856 (= e!4200620 (set.union call!634446 (derivationStepZipperUp!1864 (Context!12421 (t!380934 (exprs!6710 lt!2486122))) (h!73512 s!7408))))))

(declare-fun b!6988857 () Bool)

(assert (=> b!6988857 (= e!4200619 (as set.empty (Set Context!12420)))))

(declare-fun bm!634441 () Bool)

(assert (=> bm!634441 (= call!634446 (derivationStepZipperDown!1932 (h!73511 (exprs!6710 lt!2486122)) (Context!12421 (t!380934 (exprs!6710 lt!2486122))) (h!73512 s!7408)))))

(declare-fun b!6988858 () Bool)

(declare-fun e!4200618 () Bool)

(assert (=> b!6988858 (= e!4200618 (nullable!6974 (h!73511 (exprs!6710 lt!2486122))))))

(declare-fun b!6988854 () Bool)

(assert (=> b!6988854 (= e!4200620 e!4200619)))

(declare-fun c!1296182 () Bool)

(assert (=> b!6988854 (= c!1296182 (is-Cons!67063 (exprs!6710 lt!2486122)))))

(declare-fun d!2176941 () Bool)

(declare-fun c!1296181 () Bool)

(assert (=> d!2176941 (= c!1296181 e!4200618)))

(declare-fun res!2850110 () Bool)

(assert (=> d!2176941 (=> (not res!2850110) (not e!4200618))))

(assert (=> d!2176941 (= res!2850110 (is-Cons!67063 (exprs!6710 lt!2486122)))))

(assert (=> d!2176941 (= (derivationStepZipperUp!1864 lt!2486122 (h!73512 s!7408)) e!4200620)))

(assert (= (and d!2176941 res!2850110) b!6988858))

(assert (= (and d!2176941 c!1296181) b!6988856))

(assert (= (and d!2176941 (not c!1296181)) b!6988854))

(assert (= (and b!6988854 c!1296182) b!6988855))

(assert (= (and b!6988854 (not c!1296182)) b!6988857))

(assert (= (or b!6988856 b!6988855) bm!634441))

(declare-fun m!7677288 () Bool)

(assert (=> b!6988856 m!7677288))

(declare-fun m!7677290 () Bool)

(assert (=> bm!634441 m!7677290))

(declare-fun m!7677292 () Bool)

(assert (=> b!6988858 m!7677292))

(assert (=> b!6988755 d!2176941))

(assert (=> b!6988757 d!2176931))

(assert (=> b!6988757 d!2176933))

(declare-fun e!4200625 () Bool)

(declare-fun lt!2486251 () List!67187)

(declare-fun b!6988870 () Bool)

(assert (=> b!6988870 (= e!4200625 (or (not (= (exprs!6710 ct2!306) Nil!67063)) (= lt!2486251 (exprs!6710 lt!2486106))))))

(declare-fun b!6988868 () Bool)

(declare-fun e!4200626 () List!67187)

(assert (=> b!6988868 (= e!4200626 (Cons!67063 (h!73511 (exprs!6710 lt!2486106)) (++!15159 (t!380934 (exprs!6710 lt!2486106)) (exprs!6710 ct2!306))))))

(declare-fun d!2176943 () Bool)

(assert (=> d!2176943 e!4200625))

(declare-fun res!2850116 () Bool)

(assert (=> d!2176943 (=> (not res!2850116) (not e!4200625))))

(declare-fun content!13252 (List!67187) (Set Regex!17214))

(assert (=> d!2176943 (= res!2850116 (= (content!13252 lt!2486251) (set.union (content!13252 (exprs!6710 lt!2486106)) (content!13252 (exprs!6710 ct2!306)))))))

(assert (=> d!2176943 (= lt!2486251 e!4200626)))

(declare-fun c!1296185 () Bool)

(assert (=> d!2176943 (= c!1296185 (is-Nil!67063 (exprs!6710 lt!2486106)))))

(assert (=> d!2176943 (= (++!15159 (exprs!6710 lt!2486106) (exprs!6710 ct2!306)) lt!2486251)))

(declare-fun b!6988869 () Bool)

(declare-fun res!2850115 () Bool)

(assert (=> b!6988869 (=> (not res!2850115) (not e!4200625))))

(declare-fun size!40901 (List!67187) Int)

(assert (=> b!6988869 (= res!2850115 (= (size!40901 lt!2486251) (+ (size!40901 (exprs!6710 lt!2486106)) (size!40901 (exprs!6710 ct2!306)))))))

(declare-fun b!6988867 () Bool)

(assert (=> b!6988867 (= e!4200626 (exprs!6710 ct2!306))))

(assert (= (and d!2176943 c!1296185) b!6988867))

(assert (= (and d!2176943 (not c!1296185)) b!6988868))

(assert (= (and d!2176943 res!2850116) b!6988869))

(assert (= (and b!6988869 res!2850115) b!6988870))

(declare-fun m!7677294 () Bool)

(assert (=> b!6988868 m!7677294))

(declare-fun m!7677296 () Bool)

(assert (=> d!2176943 m!7677296))

(declare-fun m!7677298 () Bool)

(assert (=> d!2176943 m!7677298))

(declare-fun m!7677300 () Bool)

(assert (=> d!2176943 m!7677300))

(declare-fun m!7677302 () Bool)

(assert (=> b!6988869 m!7677302))

(declare-fun m!7677304 () Bool)

(assert (=> b!6988869 m!7677304))

(declare-fun m!7677306 () Bool)

(assert (=> b!6988869 m!7677306))

(assert (=> b!6988753 d!2176943))

(assert (=> b!6988753 d!2176923))

(declare-fun d!2176945 () Bool)

(declare-fun e!4200629 () Bool)

(assert (=> d!2176945 e!4200629))

(declare-fun res!2850119 () Bool)

(assert (=> d!2176945 (=> (not res!2850119) (not e!4200629))))

(declare-fun lt!2486254 () Context!12420)

(declare-fun dynLambda!26886 (Int Context!12420) Context!12420)

(assert (=> d!2176945 (= res!2850119 (= lt!2486115 (dynLambda!26886 lambda!401259 lt!2486254)))))

(declare-fun choose!52235 ((Set Context!12420) Int Context!12420) Context!12420)

(assert (=> d!2176945 (= lt!2486254 (choose!52235 z1!570 lambda!401259 lt!2486115))))

(declare-fun map!15474 ((Set Context!12420) Int) (Set Context!12420))

(assert (=> d!2176945 (set.member lt!2486115 (map!15474 z1!570 lambda!401259))))

(assert (=> d!2176945 (= (mapPost2!69 z1!570 lambda!401259 lt!2486115) lt!2486254)))

(declare-fun b!6988874 () Bool)

(assert (=> b!6988874 (= e!4200629 (set.member lt!2486254 z1!570))))

(assert (= (and d!2176945 res!2850119) b!6988874))

(declare-fun b_lambda!262475 () Bool)

(assert (=> (not b_lambda!262475) (not d!2176945)))

(declare-fun m!7677308 () Bool)

(assert (=> d!2176945 m!7677308))

(declare-fun m!7677310 () Bool)

(assert (=> d!2176945 m!7677310))

(declare-fun m!7677312 () Bool)

(assert (=> d!2176945 m!7677312))

(declare-fun m!7677314 () Bool)

(assert (=> d!2176945 m!7677314))

(declare-fun m!7677316 () Bool)

(assert (=> b!6988874 m!7677316))

(assert (=> b!6988753 d!2176945))

(declare-fun d!2176947 () Bool)

(declare-fun e!4200632 () Bool)

(assert (=> d!2176947 e!4200632))

(declare-fun res!2850122 () Bool)

(assert (=> d!2176947 (=> (not res!2850122) (not e!4200632))))

(declare-fun lt!2486257 () List!67189)

(declare-fun noDuplicate!2520 (List!67189) Bool)

(assert (=> d!2176947 (= res!2850122 (noDuplicate!2520 lt!2486257))))

(declare-fun choose!52236 ((Set Context!12420)) List!67189)

(assert (=> d!2176947 (= lt!2486257 (choose!52236 lt!2486114))))

(assert (=> d!2176947 (= (toList!10574 lt!2486114) lt!2486257)))

(declare-fun b!6988877 () Bool)

(declare-fun content!13253 (List!67189) (Set Context!12420))

(assert (=> b!6988877 (= e!4200632 (= (content!13253 lt!2486257) lt!2486114))))

(assert (= (and d!2176947 res!2850122) b!6988877))

(declare-fun m!7677318 () Bool)

(assert (=> d!2176947 m!7677318))

(declare-fun m!7677320 () Bool)

(assert (=> d!2176947 m!7677320))

(declare-fun m!7677322 () Bool)

(assert (=> b!6988877 m!7677322))

(assert (=> b!6988743 d!2176947))

(declare-fun bs!1862043 () Bool)

(declare-fun d!2176949 () Bool)

(assert (= bs!1862043 (and d!2176949 b!6988743)))

(declare-fun lambda!401316 () Int)

(assert (=> bs!1862043 (not (= lambda!401316 lambda!401258))))

(assert (=> d!2176949 true))

(declare-fun order!27913 () Int)

(declare-fun dynLambda!26887 (Int Int) Int)

(assert (=> d!2176949 (< (dynLambda!26887 order!27913 lambda!401258) (dynLambda!26887 order!27913 lambda!401316))))

(declare-fun forall!16129 (List!67189 Int) Bool)

(assert (=> d!2176949 (= (exists!2999 lt!2486125 lambda!401258) (not (forall!16129 lt!2486125 lambda!401316)))))

(declare-fun bs!1862044 () Bool)

(assert (= bs!1862044 d!2176949))

(declare-fun m!7677324 () Bool)

(assert (=> bs!1862044 m!7677324))

(assert (=> b!6988743 d!2176949))

(declare-fun d!2176951 () Bool)

(declare-fun c!1296186 () Bool)

(assert (=> d!2176951 (= c!1296186 (isEmpty!39146 s!7408))))

(declare-fun e!4200633 () Bool)

(assert (=> d!2176951 (= (matchZipper!2754 lt!2486104 s!7408) e!4200633)))

(declare-fun b!6988880 () Bool)

(assert (=> b!6988880 (= e!4200633 (nullableZipper!2433 lt!2486104))))

(declare-fun b!6988881 () Bool)

(assert (=> b!6988881 (= e!4200633 (matchZipper!2754 (derivationStepZipper!2694 lt!2486104 (head!14108 s!7408)) (tail!13222 s!7408)))))

(assert (= (and d!2176951 c!1296186) b!6988880))

(assert (= (and d!2176951 (not c!1296186)) b!6988881))

(declare-fun m!7677326 () Bool)

(assert (=> d!2176951 m!7677326))

(declare-fun m!7677328 () Bool)

(assert (=> b!6988880 m!7677328))

(declare-fun m!7677330 () Bool)

(assert (=> b!6988881 m!7677330))

(assert (=> b!6988881 m!7677330))

(declare-fun m!7677332 () Bool)

(assert (=> b!6988881 m!7677332))

(declare-fun m!7677334 () Bool)

(assert (=> b!6988881 m!7677334))

(assert (=> b!6988881 m!7677332))

(assert (=> b!6988881 m!7677334))

(declare-fun m!7677336 () Bool)

(assert (=> b!6988881 m!7677336))

(assert (=> b!6988743 d!2176951))

(declare-fun d!2176953 () Bool)

(declare-fun e!4200636 () Bool)

(assert (=> d!2176953 e!4200636))

(declare-fun res!2850125 () Bool)

(assert (=> d!2176953 (=> (not res!2850125) (not e!4200636))))

(declare-fun lt!2486260 () Context!12420)

(declare-fun dynLambda!26888 (Int Context!12420) Bool)

(assert (=> d!2176953 (= res!2850125 (dynLambda!26888 lambda!401258 lt!2486260))))

(declare-fun getWitness!1112 (List!67189 Int) Context!12420)

(assert (=> d!2176953 (= lt!2486260 (getWitness!1112 (toList!10574 lt!2486114) lambda!401258))))

(declare-fun exists!3001 ((Set Context!12420) Int) Bool)

(assert (=> d!2176953 (exists!3001 lt!2486114 lambda!401258)))

(assert (=> d!2176953 (= (getWitness!1110 lt!2486114 lambda!401258) lt!2486260)))

(declare-fun b!6988884 () Bool)

(assert (=> b!6988884 (= e!4200636 (set.member lt!2486260 lt!2486114))))

(assert (= (and d!2176953 res!2850125) b!6988884))

(declare-fun b_lambda!262477 () Bool)

(assert (=> (not b_lambda!262477) (not d!2176953)))

(declare-fun m!7677338 () Bool)

(assert (=> d!2176953 m!7677338))

(assert (=> d!2176953 m!7677160))

(assert (=> d!2176953 m!7677160))

(declare-fun m!7677340 () Bool)

(assert (=> d!2176953 m!7677340))

(declare-fun m!7677342 () Bool)

(assert (=> d!2176953 m!7677342))

(declare-fun m!7677344 () Bool)

(assert (=> b!6988884 m!7677344))

(assert (=> b!6988743 d!2176953))

(declare-fun bs!1862045 () Bool)

(declare-fun d!2176955 () Bool)

(assert (= bs!1862045 (and d!2176955 b!6988743)))

(declare-fun lambda!401319 () Int)

(assert (=> bs!1862045 (= lambda!401319 lambda!401258)))

(declare-fun bs!1862046 () Bool)

(assert (= bs!1862046 (and d!2176955 d!2176949)))

(assert (=> bs!1862046 (not (= lambda!401319 lambda!401316))))

(assert (=> d!2176955 true))

(assert (=> d!2176955 (exists!2999 lt!2486125 lambda!401319)))

(declare-fun lt!2486263 () Unit!161083)

(declare-fun choose!52237 (List!67189 List!67188) Unit!161083)

(assert (=> d!2176955 (= lt!2486263 (choose!52237 lt!2486125 s!7408))))

(assert (=> d!2176955 (matchZipper!2754 (content!13253 lt!2486125) s!7408)))

(assert (=> d!2176955 (= (lemmaZipperMatchesExistsMatchingContext!183 lt!2486125 s!7408) lt!2486263)))

(declare-fun bs!1862047 () Bool)

(assert (= bs!1862047 d!2176955))

(declare-fun m!7677346 () Bool)

(assert (=> bs!1862047 m!7677346))

(declare-fun m!7677348 () Bool)

(assert (=> bs!1862047 m!7677348))

(declare-fun m!7677350 () Bool)

(assert (=> bs!1862047 m!7677350))

(assert (=> bs!1862047 m!7677350))

(declare-fun m!7677352 () Bool)

(assert (=> bs!1862047 m!7677352))

(assert (=> b!6988743 d!2176955))

(assert (=> b!6988754 d!2176931))

(declare-fun d!2176957 () Bool)

(declare-fun c!1296189 () Bool)

(assert (=> d!2176957 (= c!1296189 (isEmpty!39146 s!7408))))

(declare-fun e!4200637 () Bool)

(assert (=> d!2176957 (= (matchZipper!2754 lt!2486114 s!7408) e!4200637)))

(declare-fun b!6988885 () Bool)

(assert (=> b!6988885 (= e!4200637 (nullableZipper!2433 lt!2486114))))

(declare-fun b!6988886 () Bool)

(assert (=> b!6988886 (= e!4200637 (matchZipper!2754 (derivationStepZipper!2694 lt!2486114 (head!14108 s!7408)) (tail!13222 s!7408)))))

(assert (= (and d!2176957 c!1296189) b!6988885))

(assert (= (and d!2176957 (not c!1296189)) b!6988886))

(assert (=> d!2176957 m!7677326))

(declare-fun m!7677354 () Bool)

(assert (=> b!6988885 m!7677354))

(assert (=> b!6988886 m!7677330))

(assert (=> b!6988886 m!7677330))

(declare-fun m!7677356 () Bool)

(assert (=> b!6988886 m!7677356))

(assert (=> b!6988886 m!7677334))

(assert (=> b!6988886 m!7677356))

(assert (=> b!6988886 m!7677334))

(declare-fun m!7677358 () Bool)

(assert (=> b!6988886 m!7677358))

(assert (=> start!671520 d!2176957))

(declare-fun bs!1862048 () Bool)

(declare-fun d!2176959 () Bool)

(assert (= bs!1862048 (and d!2176959 b!6988753)))

(declare-fun lambda!401324 () Int)

(assert (=> bs!1862048 (= lambda!401324 lambda!401259)))

(assert (=> d!2176959 true))

(assert (=> d!2176959 (= (appendTo!335 z1!570 ct2!306) (map!15474 z1!570 lambda!401324))))

(declare-fun bs!1862049 () Bool)

(assert (= bs!1862049 d!2176959))

(declare-fun m!7677360 () Bool)

(assert (=> bs!1862049 m!7677360))

(assert (=> start!671520 d!2176959))

(declare-fun bs!1862050 () Bool)

(declare-fun d!2176961 () Bool)

(assert (= bs!1862050 (and d!2176961 b!6988753)))

(declare-fun lambda!401325 () Int)

(assert (=> bs!1862050 (= lambda!401325 lambda!401260)))

(declare-fun bs!1862051 () Bool)

(assert (= bs!1862051 (and d!2176961 d!2176925)))

(assert (=> bs!1862051 (= lambda!401325 lambda!401310)))

(assert (=> d!2176961 (= (inv!85895 ct2!306) (forall!16127 (exprs!6710 ct2!306) lambda!401325))))

(declare-fun bs!1862052 () Bool)

(assert (= bs!1862052 d!2176961))

(declare-fun m!7677362 () Bool)

(assert (=> bs!1862052 m!7677362))

(assert (=> start!671520 d!2176961))

(declare-fun bs!1862053 () Bool)

(declare-fun d!2176963 () Bool)

(assert (= bs!1862053 (and d!2176963 b!6988741)))

(declare-fun lambda!401326 () Int)

(assert (=> bs!1862053 (= lambda!401326 lambda!401261)))

(declare-fun bs!1862054 () Bool)

(assert (= bs!1862054 (and d!2176963 d!2176935)))

(assert (=> bs!1862054 (= lambda!401326 lambda!401313)))

(assert (=> d!2176963 true))

(assert (=> d!2176963 (= (derivationStepZipper!2694 lt!2486126 (h!73512 s!7408)) (flatMap!2200 lt!2486126 lambda!401326))))

(declare-fun bs!1862055 () Bool)

(assert (= bs!1862055 d!2176963))

(declare-fun m!7677364 () Bool)

(assert (=> bs!1862055 m!7677364))

(assert (=> b!6988741 d!2176963))

(assert (=> b!6988741 d!2176923))

(declare-fun b!6988888 () Bool)

(declare-fun e!4200639 () (Set Context!12420))

(declare-fun call!634447 () (Set Context!12420))

(assert (=> b!6988888 (= e!4200639 call!634447)))

(declare-fun b!6988889 () Bool)

(declare-fun e!4200640 () (Set Context!12420))

(assert (=> b!6988889 (= e!4200640 (set.union call!634447 (derivationStepZipperUp!1864 (Context!12421 (t!380934 (exprs!6710 lt!2486128))) (h!73512 s!7408))))))

(declare-fun b!6988890 () Bool)

(assert (=> b!6988890 (= e!4200639 (as set.empty (Set Context!12420)))))

(declare-fun bm!634442 () Bool)

(assert (=> bm!634442 (= call!634447 (derivationStepZipperDown!1932 (h!73511 (exprs!6710 lt!2486128)) (Context!12421 (t!380934 (exprs!6710 lt!2486128))) (h!73512 s!7408)))))

(declare-fun b!6988891 () Bool)

(declare-fun e!4200638 () Bool)

(assert (=> b!6988891 (= e!4200638 (nullable!6974 (h!73511 (exprs!6710 lt!2486128))))))

(declare-fun b!6988887 () Bool)

(assert (=> b!6988887 (= e!4200640 e!4200639)))

(declare-fun c!1296192 () Bool)

(assert (=> b!6988887 (= c!1296192 (is-Cons!67063 (exprs!6710 lt!2486128)))))

(declare-fun d!2176965 () Bool)

(declare-fun c!1296191 () Bool)

(assert (=> d!2176965 (= c!1296191 e!4200638)))

(declare-fun res!2850126 () Bool)

(assert (=> d!2176965 (=> (not res!2850126) (not e!4200638))))

(assert (=> d!2176965 (= res!2850126 (is-Cons!67063 (exprs!6710 lt!2486128)))))

(assert (=> d!2176965 (= (derivationStepZipperUp!1864 lt!2486128 (h!73512 s!7408)) e!4200640)))

(assert (= (and d!2176965 res!2850126) b!6988891))

(assert (= (and d!2176965 c!1296191) b!6988889))

(assert (= (and d!2176965 (not c!1296191)) b!6988887))

(assert (= (and b!6988887 c!1296192) b!6988888))

(assert (= (and b!6988887 (not c!1296192)) b!6988890))

(assert (= (or b!6988889 b!6988888) bm!634442))

(declare-fun m!7677366 () Bool)

(assert (=> b!6988889 m!7677366))

(declare-fun m!7677368 () Bool)

(assert (=> bm!634442 m!7677368))

(declare-fun m!7677370 () Bool)

(assert (=> b!6988891 m!7677370))

(assert (=> b!6988741 d!2176965))

(declare-fun d!2176967 () Bool)

(assert (=> d!2176967 (= (flatMap!2200 lt!2486126 lambda!401261) (choose!52234 lt!2486126 lambda!401261))))

(declare-fun bs!1862056 () Bool)

(assert (= bs!1862056 d!2176967))

(declare-fun m!7677372 () Bool)

(assert (=> bs!1862056 m!7677372))

(assert (=> b!6988741 d!2176967))

(declare-fun d!2176969 () Bool)

(assert (=> d!2176969 (= (flatMap!2200 lt!2486126 lambda!401261) (dynLambda!26885 lambda!401261 lt!2486128))))

(declare-fun lt!2486266 () Unit!161083)

(assert (=> d!2176969 (= lt!2486266 (choose!52233 lt!2486126 lt!2486128 lambda!401261))))

(assert (=> d!2176969 (= lt!2486126 (set.insert lt!2486128 (as set.empty (Set Context!12420))))))

(assert (=> d!2176969 (= (lemmaFlatMapOnSingletonSet!1715 lt!2486126 lt!2486128 lambda!401261) lt!2486266)))

(declare-fun b_lambda!262479 () Bool)

(assert (=> (not b_lambda!262479) (not d!2176969)))

(declare-fun bs!1862057 () Bool)

(assert (= bs!1862057 d!2176969))

(assert (=> bs!1862057 m!7677110))

(declare-fun m!7677374 () Bool)

(assert (=> bs!1862057 m!7677374))

(declare-fun m!7677376 () Bool)

(assert (=> bs!1862057 m!7677376))

(assert (=> bs!1862057 m!7677122))

(assert (=> b!6988741 d!2176969))

(declare-fun bm!634455 () Bool)

(declare-fun call!634460 () List!67187)

(declare-fun call!634461 () List!67187)

(assert (=> bm!634455 (= call!634460 call!634461)))

(declare-fun bm!634456 () Bool)

(declare-fun call!634464 () (Set Context!12420))

(declare-fun call!634465 () (Set Context!12420))

(assert (=> bm!634456 (= call!634464 call!634465)))

(declare-fun b!6988914 () Bool)

(declare-fun c!1296206 () Bool)

(declare-fun e!4200653 () Bool)

(assert (=> b!6988914 (= c!1296206 e!4200653)))

(declare-fun res!2850129 () Bool)

(assert (=> b!6988914 (=> (not res!2850129) (not e!4200653))))

(assert (=> b!6988914 (= res!2850129 (is-Concat!26059 (h!73511 (exprs!6710 lt!2486106))))))

(declare-fun e!4200657 () (Set Context!12420))

(declare-fun e!4200655 () (Set Context!12420))

(assert (=> b!6988914 (= e!4200657 e!4200655)))

(declare-fun b!6988916 () Bool)

(assert (=> b!6988916 (= e!4200653 (nullable!6974 (regOne!34940 (h!73511 (exprs!6710 lt!2486106)))))))

(declare-fun bm!634457 () Bool)

(declare-fun c!1296207 () Bool)

(declare-fun $colon$colon!2481 (List!67187 Regex!17214) List!67187)

(assert (=> bm!634457 (= call!634461 ($colon$colon!2481 (exprs!6710 lt!2486122) (ite (or c!1296206 c!1296207) (regTwo!34940 (h!73511 (exprs!6710 lt!2486106))) (h!73511 (exprs!6710 lt!2486106)))))))

(declare-fun b!6988917 () Bool)

(declare-fun e!4200656 () (Set Context!12420))

(assert (=> b!6988917 (= e!4200656 call!634464)))

(declare-fun b!6988918 () Bool)

(declare-fun e!4200654 () (Set Context!12420))

(assert (=> b!6988918 (= e!4200654 e!4200657)))

(declare-fun c!1296204 () Bool)

(assert (=> b!6988918 (= c!1296204 (is-Union!17214 (h!73511 (exprs!6710 lt!2486106))))))

(declare-fun b!6988919 () Bool)

(declare-fun e!4200658 () (Set Context!12420))

(assert (=> b!6988919 (= e!4200658 call!634464)))

(declare-fun b!6988920 () Bool)

(assert (=> b!6988920 (= e!4200655 e!4200656)))

(assert (=> b!6988920 (= c!1296207 (is-Concat!26059 (h!73511 (exprs!6710 lt!2486106))))))

(declare-fun bm!634458 () Bool)

(declare-fun call!634462 () (Set Context!12420))

(assert (=> bm!634458 (= call!634462 (derivationStepZipperDown!1932 (ite c!1296204 (regOne!34941 (h!73511 (exprs!6710 lt!2486106))) (ite c!1296206 (regTwo!34940 (h!73511 (exprs!6710 lt!2486106))) (ite c!1296207 (regOne!34940 (h!73511 (exprs!6710 lt!2486106))) (reg!17543 (h!73511 (exprs!6710 lt!2486106)))))) (ite (or c!1296204 c!1296206) lt!2486122 (Context!12421 call!634460)) (h!73512 s!7408)))))

(declare-fun b!6988921 () Bool)

(declare-fun call!634463 () (Set Context!12420))

(assert (=> b!6988921 (= e!4200655 (set.union call!634463 call!634465))))

(declare-fun d!2176971 () Bool)

(declare-fun c!1296205 () Bool)

(assert (=> d!2176971 (= c!1296205 (and (is-ElementMatch!17214 (h!73511 (exprs!6710 lt!2486106))) (= (c!1296160 (h!73511 (exprs!6710 lt!2486106))) (h!73512 s!7408))))))

(assert (=> d!2176971 (= (derivationStepZipperDown!1932 (h!73511 (exprs!6710 lt!2486106)) lt!2486122 (h!73512 s!7408)) e!4200654)))

(declare-fun b!6988915 () Bool)

(assert (=> b!6988915 (= e!4200654 (set.insert lt!2486122 (as set.empty (Set Context!12420))))))

(declare-fun b!6988922 () Bool)

(assert (=> b!6988922 (= e!4200657 (set.union call!634462 call!634463))))

(declare-fun bm!634459 () Bool)

(assert (=> bm!634459 (= call!634463 (derivationStepZipperDown!1932 (ite c!1296204 (regTwo!34941 (h!73511 (exprs!6710 lt!2486106))) (regOne!34940 (h!73511 (exprs!6710 lt!2486106)))) (ite c!1296204 lt!2486122 (Context!12421 call!634461)) (h!73512 s!7408)))))

(declare-fun b!6988923 () Bool)

(assert (=> b!6988923 (= e!4200658 (as set.empty (Set Context!12420)))))

(declare-fun bm!634460 () Bool)

(assert (=> bm!634460 (= call!634465 call!634462)))

(declare-fun b!6988924 () Bool)

(declare-fun c!1296203 () Bool)

(assert (=> b!6988924 (= c!1296203 (is-Star!17214 (h!73511 (exprs!6710 lt!2486106))))))

(assert (=> b!6988924 (= e!4200656 e!4200658)))

(assert (= (and d!2176971 c!1296205) b!6988915))

(assert (= (and d!2176971 (not c!1296205)) b!6988918))

(assert (= (and b!6988918 c!1296204) b!6988922))

(assert (= (and b!6988918 (not c!1296204)) b!6988914))

(assert (= (and b!6988914 res!2850129) b!6988916))

(assert (= (and b!6988914 c!1296206) b!6988921))

(assert (= (and b!6988914 (not c!1296206)) b!6988920))

(assert (= (and b!6988920 c!1296207) b!6988917))

(assert (= (and b!6988920 (not c!1296207)) b!6988924))

(assert (= (and b!6988924 c!1296203) b!6988919))

(assert (= (and b!6988924 (not c!1296203)) b!6988923))

(assert (= (or b!6988917 b!6988919) bm!634455))

(assert (= (or b!6988917 b!6988919) bm!634456))

(assert (= (or b!6988921 bm!634456) bm!634460))

(assert (= (or b!6988921 bm!634455) bm!634457))

(assert (= (or b!6988922 bm!634460) bm!634458))

(assert (= (or b!6988922 b!6988921) bm!634459))

(declare-fun m!7677378 () Bool)

(assert (=> bm!634458 m!7677378))

(declare-fun m!7677380 () Bool)

(assert (=> b!6988916 m!7677380))

(assert (=> b!6988915 m!7677164))

(declare-fun m!7677382 () Bool)

(assert (=> bm!634459 m!7677382))

(declare-fun m!7677384 () Bool)

(assert (=> bm!634457 m!7677384))

(assert (=> b!6988750 d!2176971))

(assert (=> b!6988750 d!2176941))

(declare-fun lt!2486267 () List!67187)

(declare-fun b!6988928 () Bool)

(declare-fun e!4200659 () Bool)

(assert (=> b!6988928 (= e!4200659 (or (not (= (exprs!6710 ct2!306) Nil!67063)) (= lt!2486267 lt!2486123)))))

(declare-fun b!6988926 () Bool)

(declare-fun e!4200660 () List!67187)

(assert (=> b!6988926 (= e!4200660 (Cons!67063 (h!73511 lt!2486123) (++!15159 (t!380934 lt!2486123) (exprs!6710 ct2!306))))))

(declare-fun d!2176973 () Bool)

(assert (=> d!2176973 e!4200659))

(declare-fun res!2850131 () Bool)

(assert (=> d!2176973 (=> (not res!2850131) (not e!4200659))))

(assert (=> d!2176973 (= res!2850131 (= (content!13252 lt!2486267) (set.union (content!13252 lt!2486123) (content!13252 (exprs!6710 ct2!306)))))))

(assert (=> d!2176973 (= lt!2486267 e!4200660)))

(declare-fun c!1296208 () Bool)

(assert (=> d!2176973 (= c!1296208 (is-Nil!67063 lt!2486123))))

(assert (=> d!2176973 (= (++!15159 lt!2486123 (exprs!6710 ct2!306)) lt!2486267)))

(declare-fun b!6988927 () Bool)

(declare-fun res!2850130 () Bool)

(assert (=> b!6988927 (=> (not res!2850130) (not e!4200659))))

(assert (=> b!6988927 (= res!2850130 (= (size!40901 lt!2486267) (+ (size!40901 lt!2486123) (size!40901 (exprs!6710 ct2!306)))))))

(declare-fun b!6988925 () Bool)

(assert (=> b!6988925 (= e!4200660 (exprs!6710 ct2!306))))

(assert (= (and d!2176973 c!1296208) b!6988925))

(assert (= (and d!2176973 (not c!1296208)) b!6988926))

(assert (= (and d!2176973 res!2850131) b!6988927))

(assert (= (and b!6988927 res!2850130) b!6988928))

(declare-fun m!7677386 () Bool)

(assert (=> b!6988926 m!7677386))

(declare-fun m!7677388 () Bool)

(assert (=> d!2176973 m!7677388))

(declare-fun m!7677390 () Bool)

(assert (=> d!2176973 m!7677390))

(assert (=> d!2176973 m!7677300))

(declare-fun m!7677392 () Bool)

(assert (=> b!6988927 m!7677392))

(declare-fun m!7677394 () Bool)

(assert (=> b!6988927 m!7677394))

(assert (=> b!6988927 m!7677306))

(assert (=> b!6988750 d!2176973))

(assert (=> b!6988750 d!2176933))

(declare-fun d!2176975 () Bool)

(declare-fun c!1296209 () Bool)

(assert (=> d!2176975 (= c!1296209 (isEmpty!39146 (t!380935 s!7408)))))

(declare-fun e!4200661 () Bool)

(assert (=> d!2176975 (= (matchZipper!2754 lt!2486116 (t!380935 s!7408)) e!4200661)))

(declare-fun b!6988929 () Bool)

(assert (=> b!6988929 (= e!4200661 (nullableZipper!2433 lt!2486116))))

(declare-fun b!6988930 () Bool)

(assert (=> b!6988930 (= e!4200661 (matchZipper!2754 (derivationStepZipper!2694 lt!2486116 (head!14108 (t!380935 s!7408))) (tail!13222 (t!380935 s!7408))))))

(assert (= (and d!2176975 c!1296209) b!6988929))

(assert (= (and d!2176975 (not c!1296209)) b!6988930))

(assert (=> d!2176975 m!7677264))

(declare-fun m!7677396 () Bool)

(assert (=> b!6988929 m!7677396))

(assert (=> b!6988930 m!7677268))

(assert (=> b!6988930 m!7677268))

(declare-fun m!7677398 () Bool)

(assert (=> b!6988930 m!7677398))

(assert (=> b!6988930 m!7677272))

(assert (=> b!6988930 m!7677398))

(assert (=> b!6988930 m!7677272))

(declare-fun m!7677400 () Bool)

(assert (=> b!6988930 m!7677400))

(assert (=> b!6988742 d!2176975))

(assert (=> b!6988742 d!2176933))

(declare-fun e!4200664 () Bool)

(declare-fun d!2176977 () Bool)

(assert (=> d!2176977 (= (matchZipper!2754 (set.union lt!2486137 lt!2486127) (t!380935 s!7408)) e!4200664)))

(declare-fun res!2850134 () Bool)

(assert (=> d!2176977 (=> res!2850134 e!4200664)))

(assert (=> d!2176977 (= res!2850134 (matchZipper!2754 lt!2486137 (t!380935 s!7408)))))

(declare-fun lt!2486270 () Unit!161083)

(declare-fun choose!52238 ((Set Context!12420) (Set Context!12420) List!67188) Unit!161083)

(assert (=> d!2176977 (= lt!2486270 (choose!52238 lt!2486137 lt!2486127 (t!380935 s!7408)))))

(assert (=> d!2176977 (= (lemmaZipperConcatMatchesSameAsBothZippers!1387 lt!2486137 lt!2486127 (t!380935 s!7408)) lt!2486270)))

(declare-fun b!6988933 () Bool)

(assert (=> b!6988933 (= e!4200664 (matchZipper!2754 lt!2486127 (t!380935 s!7408)))))

(assert (= (and d!2176977 (not res!2850134)) b!6988933))

(declare-fun m!7677402 () Bool)

(assert (=> d!2176977 m!7677402))

(assert (=> d!2176977 m!7677174))

(declare-fun m!7677404 () Bool)

(assert (=> d!2176977 m!7677404))

(assert (=> b!6988933 m!7677116))

(assert (=> b!6988742 d!2176977))

(declare-fun d!2176979 () Bool)

(declare-fun c!1296210 () Bool)

(assert (=> d!2176979 (= c!1296210 (isEmpty!39146 (t!380935 s!7408)))))

(declare-fun e!4200665 () Bool)

(assert (=> d!2176979 (= (matchZipper!2754 lt!2486113 (t!380935 s!7408)) e!4200665)))

(declare-fun b!6988934 () Bool)

(assert (=> b!6988934 (= e!4200665 (nullableZipper!2433 lt!2486113))))

(declare-fun b!6988935 () Bool)

(assert (=> b!6988935 (= e!4200665 (matchZipper!2754 (derivationStepZipper!2694 lt!2486113 (head!14108 (t!380935 s!7408))) (tail!13222 (t!380935 s!7408))))))

(assert (= (and d!2176979 c!1296210) b!6988934))

(assert (= (and d!2176979 (not c!1296210)) b!6988935))

(assert (=> d!2176979 m!7677264))

(declare-fun m!7677406 () Bool)

(assert (=> b!6988934 m!7677406))

(assert (=> b!6988935 m!7677268))

(assert (=> b!6988935 m!7677268))

(declare-fun m!7677408 () Bool)

(assert (=> b!6988935 m!7677408))

(assert (=> b!6988935 m!7677272))

(assert (=> b!6988935 m!7677408))

(assert (=> b!6988935 m!7677272))

(declare-fun m!7677410 () Bool)

(assert (=> b!6988935 m!7677410))

(assert (=> b!6988742 d!2176979))

(declare-fun d!2176981 () Bool)

(declare-fun c!1296211 () Bool)

(assert (=> d!2176981 (= c!1296211 (isEmpty!39146 (t!380935 s!7408)))))

(declare-fun e!4200666 () Bool)

(assert (=> d!2176981 (= (matchZipper!2754 lt!2486137 (t!380935 s!7408)) e!4200666)))

(declare-fun b!6988936 () Bool)

(assert (=> b!6988936 (= e!4200666 (nullableZipper!2433 lt!2486137))))

(declare-fun b!6988937 () Bool)

(assert (=> b!6988937 (= e!4200666 (matchZipper!2754 (derivationStepZipper!2694 lt!2486137 (head!14108 (t!380935 s!7408))) (tail!13222 (t!380935 s!7408))))))

(assert (= (and d!2176981 c!1296211) b!6988936))

(assert (= (and d!2176981 (not c!1296211)) b!6988937))

(assert (=> d!2176981 m!7677264))

(declare-fun m!7677412 () Bool)

(assert (=> b!6988936 m!7677412))

(assert (=> b!6988937 m!7677268))

(assert (=> b!6988937 m!7677268))

(declare-fun m!7677414 () Bool)

(assert (=> b!6988937 m!7677414))

(assert (=> b!6988937 m!7677272))

(assert (=> b!6988937 m!7677414))

(assert (=> b!6988937 m!7677272))

(declare-fun m!7677416 () Bool)

(assert (=> b!6988937 m!7677416))

(assert (=> b!6988742 d!2176981))

(declare-fun d!2176983 () Bool)

(declare-fun nullableFct!2634 (Regex!17214) Bool)

(assert (=> d!2176983 (= (nullable!6974 (h!73511 (exprs!6710 lt!2486106))) (nullableFct!2634 (h!73511 (exprs!6710 lt!2486106))))))

(declare-fun bs!1862058 () Bool)

(assert (= bs!1862058 d!2176983))

(declare-fun m!7677418 () Bool)

(assert (=> bs!1862058 m!7677418))

(assert (=> b!6988752 d!2176983))

(declare-fun d!2176985 () Bool)

(assert (=> d!2176985 (= (tail!13220 (exprs!6710 lt!2486106)) (t!380934 (exprs!6710 lt!2486106)))))

(assert (=> b!6988752 d!2176985))

(declare-fun b!6988942 () Bool)

(declare-fun e!4200669 () Bool)

(declare-fun tp!1929579 () Bool)

(assert (=> b!6988942 (= e!4200669 (and tp_is_empty!43653 tp!1929579))))

(assert (=> b!6988748 (= tp!1929562 e!4200669)))

(assert (= (and b!6988748 (is-Cons!67064 (t!380935 s!7408))) b!6988942))

(declare-fun condSetEmpty!47790 () Bool)

(assert (=> setNonEmpty!47784 (= condSetEmpty!47790 (= setRest!47784 (as set.empty (Set Context!12420))))))

(declare-fun setRes!47790 () Bool)

(assert (=> setNonEmpty!47784 (= tp!1929563 setRes!47790)))

(declare-fun setIsEmpty!47790 () Bool)

(assert (=> setIsEmpty!47790 setRes!47790))

(declare-fun tp!1929584 () Bool)

(declare-fun setNonEmpty!47790 () Bool)

(declare-fun e!4200672 () Bool)

(declare-fun setElem!47790 () Context!12420)

(assert (=> setNonEmpty!47790 (= setRes!47790 (and tp!1929584 (inv!85895 setElem!47790) e!4200672))))

(declare-fun setRest!47790 () (Set Context!12420))

(assert (=> setNonEmpty!47790 (= setRest!47784 (set.union (set.insert setElem!47790 (as set.empty (Set Context!12420))) setRest!47790))))

(declare-fun b!6988947 () Bool)

(declare-fun tp!1929585 () Bool)

(assert (=> b!6988947 (= e!4200672 tp!1929585)))

(assert (= (and setNonEmpty!47784 condSetEmpty!47790) setIsEmpty!47790))

(assert (= (and setNonEmpty!47784 (not condSetEmpty!47790)) setNonEmpty!47790))

(assert (= setNonEmpty!47790 b!6988947))

(declare-fun m!7677420 () Bool)

(assert (=> setNonEmpty!47790 m!7677420))

(declare-fun b!6988952 () Bool)

(declare-fun e!4200675 () Bool)

(declare-fun tp!1929590 () Bool)

(declare-fun tp!1929591 () Bool)

(assert (=> b!6988952 (= e!4200675 (and tp!1929590 tp!1929591))))

(assert (=> b!6988740 (= tp!1929564 e!4200675)))

(assert (= (and b!6988740 (is-Cons!67063 (exprs!6710 setElem!47784))) b!6988952))

(declare-fun b!6988953 () Bool)

(declare-fun e!4200676 () Bool)

(declare-fun tp!1929592 () Bool)

(declare-fun tp!1929593 () Bool)

(assert (=> b!6988953 (= e!4200676 (and tp!1929592 tp!1929593))))

(assert (=> b!6988747 (= tp!1929561 e!4200676)))

(assert (= (and b!6988747 (is-Cons!67063 (exprs!6710 ct2!306))) b!6988953))

(declare-fun b_lambda!262481 () Bool)

(assert (= b_lambda!262473 (or b!6988741 b_lambda!262481)))

(declare-fun bs!1862059 () Bool)

(declare-fun d!2176987 () Bool)

(assert (= bs!1862059 (and d!2176987 b!6988741)))

(assert (=> bs!1862059 (= (dynLambda!26885 lambda!401261 lt!2486122) (derivationStepZipperUp!1864 lt!2486122 (h!73512 s!7408)))))

(assert (=> bs!1862059 m!7677128))

(assert (=> d!2176937 d!2176987))

(declare-fun b_lambda!262483 () Bool)

(assert (= b_lambda!262475 (or b!6988753 b_lambda!262483)))

(declare-fun bs!1862060 () Bool)

(declare-fun d!2176989 () Bool)

(assert (= bs!1862060 (and d!2176989 b!6988753)))

(declare-fun lt!2486271 () Unit!161083)

(assert (=> bs!1862060 (= lt!2486271 (lemmaConcatPreservesForall!550 (exprs!6710 lt!2486254) (exprs!6710 ct2!306) lambda!401260))))

(assert (=> bs!1862060 (= (dynLambda!26886 lambda!401259 lt!2486254) (Context!12421 (++!15159 (exprs!6710 lt!2486254) (exprs!6710 ct2!306))))))

(declare-fun m!7677422 () Bool)

(assert (=> bs!1862060 m!7677422))

(declare-fun m!7677424 () Bool)

(assert (=> bs!1862060 m!7677424))

(assert (=> d!2176945 d!2176989))

(declare-fun b_lambda!262485 () Bool)

(assert (= b_lambda!262477 (or b!6988743 b_lambda!262485)))

(declare-fun bs!1862061 () Bool)

(declare-fun d!2176991 () Bool)

(assert (= bs!1862061 (and d!2176991 b!6988743)))

(assert (=> bs!1862061 (= (dynLambda!26888 lambda!401258 lt!2486260) (matchZipper!2754 (set.insert lt!2486260 (as set.empty (Set Context!12420))) s!7408))))

(declare-fun m!7677426 () Bool)

(assert (=> bs!1862061 m!7677426))

(assert (=> bs!1862061 m!7677426))

(declare-fun m!7677428 () Bool)

(assert (=> bs!1862061 m!7677428))

(assert (=> d!2176953 d!2176991))

(declare-fun b_lambda!262487 () Bool)

(assert (= b_lambda!262479 (or b!6988741 b_lambda!262487)))

(declare-fun bs!1862062 () Bool)

(declare-fun d!2176993 () Bool)

(assert (= bs!1862062 (and d!2176993 b!6988741)))

(assert (=> bs!1862062 (= (dynLambda!26885 lambda!401261 lt!2486128) (derivationStepZipperUp!1864 lt!2486128 (h!73512 s!7408)))))

(assert (=> bs!1862062 m!7677114))

(assert (=> d!2176969 d!2176993))

(declare-fun b_lambda!262489 () Bool)

(assert (= b_lambda!262471 (or b!6988753 b_lambda!262489)))

(declare-fun bs!1862063 () Bool)

(declare-fun d!2176995 () Bool)

(assert (= bs!1862063 (and d!2176995 b!6988753)))

(declare-fun validRegex!8858 (Regex!17214) Bool)

(assert (=> bs!1862063 (= (dynLambda!26884 lambda!401260 (h!73511 lt!2486123)) (validRegex!8858 (h!73511 lt!2486123)))))

(declare-fun m!7677430 () Bool)

(assert (=> bs!1862063 m!7677430))

(assert (=> b!6988834 d!2176995))

(push 1)

(assert (not d!2176935))

(assert (not b!6988856))

(assert (not b_lambda!262489))

(assert (not d!2176939))

(assert (not d!2176969))

(assert (not b!6988885))

(assert (not d!2176945))

(assert (not bm!634441))

(assert (not bs!1862063))

(assert (not b!6988927))

(assert (not d!2176983))

(assert (not b!6988840))

(assert (not bm!634457))

(assert (not b!6988881))

(assert (not b!6988886))

(assert (not b!6988858))

(assert (not d!2176943))

(assert (not b!6988930))

(assert (not d!2176925))

(assert (not b!6988947))

(assert (not d!2176957))

(assert (not b!6988868))

(assert (not b!6988916))

(assert (not bm!634459))

(assert (not d!2176947))

(assert (not d!2176977))

(assert (not bs!1862061))

(assert (not b!6988869))

(assert (not d!2176953))

(assert (not b!6988880))

(assert (not d!2176963))

(assert (not b!6988952))

(assert (not d!2176951))

(assert (not b!6988926))

(assert (not d!2176937))

(assert (not d!2176949))

(assert (not d!2176967))

(assert (not b!6988953))

(assert (not b!6988835))

(assert (not d!2176981))

(assert (not d!2176979))

(assert (not b_lambda!262481))

(assert (not b!6988929))

(assert (not d!2176933))

(assert (not d!2176961))

(assert (not d!2176955))

(assert (not bs!1862062))

(assert (not setNonEmpty!47790))

(assert (not b_lambda!262487))

(assert (not b!6988889))

(assert (not bs!1862060))

(assert (not b!6988934))

(assert (not b!6988891))

(assert (not d!2176959))

(assert (not bm!634442))

(assert (not bm!634458))

(assert (not d!2176973))

(assert (not b!6988933))

(assert (not d!2176975))

(assert (not b!6988936))

(assert (not d!2176931))

(assert (not b!6988937))

(assert (not b!6988841))

(assert (not b!6988935))

(assert (not d!2176923))

(assert (not b_lambda!262485))

(assert (not b!6988942))

(assert tp_is_empty!43653)

(assert (not b!6988877))

(assert (not bs!1862059))

(assert (not b_lambda!262483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

