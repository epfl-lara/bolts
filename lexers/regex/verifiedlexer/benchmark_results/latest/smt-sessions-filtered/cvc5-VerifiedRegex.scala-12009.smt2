; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673236 () Bool)

(assert start!673236)

(declare-fun b!6998816 () Bool)

(assert (=> b!6998816 true))

(declare-fun b!6998829 () Bool)

(assert (=> b!6998829 true))

(declare-fun b!6998841 () Bool)

(assert (=> b!6998841 true))

(declare-fun b!6998813 () Bool)

(declare-fun e!4206823 () Bool)

(declare-datatypes ((C!34798 0))(
  ( (C!34799 (val!27101 Int)) )
))
(declare-datatypes ((Regex!17264 0))(
  ( (ElementMatch!17264 (c!1298969 C!34798)) (Concat!26109 (regOne!35040 Regex!17264) (regTwo!35040 Regex!17264)) (EmptyExpr!17264) (Star!17264 (reg!17593 Regex!17264)) (EmptyLang!17264) (Union!17264 (regOne!35041 Regex!17264) (regTwo!35041 Regex!17264)) )
))
(declare-datatypes ((List!67337 0))(
  ( (Nil!67213) (Cons!67213 (h!73661 Regex!17264) (t!381088 List!67337)) )
))
(declare-datatypes ((Context!12520 0))(
  ( (Context!12521 (exprs!6760 List!67337)) )
))
(declare-fun lt!2494611 () (Set Context!12520))

(declare-datatypes ((List!67338 0))(
  ( (Nil!67214) (Cons!67214 (h!73662 C!34798) (t!381089 List!67338)) )
))
(declare-fun s!7408 () List!67338)

(declare-fun matchZipper!2804 ((Set Context!12520) List!67338) Bool)

(assert (=> b!6998813 (= e!4206823 (not (matchZipper!2804 lt!2494611 (t!381089 s!7408))))))

(declare-datatypes ((Unit!161186 0))(
  ( (Unit!161187) )
))
(declare-fun lt!2494606 () Unit!161186)

(declare-fun lambda!404839 () Int)

(declare-fun ct2!306 () Context!12520)

(declare-fun lt!2494622 () List!67337)

(declare-fun lemmaConcatPreservesForall!600 (List!67337 List!67337 Int) Unit!161186)

(assert (=> b!6998813 (= lt!2494606 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun b!6998815 () Bool)

(declare-fun e!4206822 () Bool)

(declare-fun tp!1930891 () Bool)

(assert (=> b!6998815 (= e!4206822 tp!1930891)))

(declare-fun e!4206818 () Bool)

(declare-fun e!4206812 () Bool)

(assert (=> b!6998816 (= e!4206818 (not e!4206812))))

(declare-fun res!2854977 () Bool)

(assert (=> b!6998816 (=> res!2854977 e!4206812)))

(declare-fun lt!2494617 () (Set Context!12520))

(assert (=> b!6998816 (= res!2854977 (not (matchZipper!2804 lt!2494617 s!7408)))))

(declare-fun lt!2494612 () Context!12520)

(assert (=> b!6998816 (= lt!2494617 (set.insert lt!2494612 (as set.empty (Set Context!12520))))))

(declare-fun lt!2494580 () (Set Context!12520))

(declare-fun lambda!404837 () Int)

(declare-fun getWitness!1181 ((Set Context!12520) Int) Context!12520)

(assert (=> b!6998816 (= lt!2494612 (getWitness!1181 lt!2494580 lambda!404837))))

(declare-datatypes ((List!67339 0))(
  ( (Nil!67215) (Cons!67215 (h!73663 Context!12520) (t!381090 List!67339)) )
))
(declare-fun lt!2494638 () List!67339)

(declare-fun exists!3077 (List!67339 Int) Bool)

(assert (=> b!6998816 (exists!3077 lt!2494638 lambda!404837)))

(declare-fun lt!2494588 () Unit!161186)

(declare-fun lemmaZipperMatchesExistsMatchingContext!233 (List!67339 List!67338) Unit!161186)

(assert (=> b!6998816 (= lt!2494588 (lemmaZipperMatchesExistsMatchingContext!233 lt!2494638 s!7408))))

(declare-fun toList!10624 ((Set Context!12520)) List!67339)

(assert (=> b!6998816 (= lt!2494638 (toList!10624 lt!2494580))))

(declare-fun b!6998817 () Bool)

(declare-fun e!4206816 () Bool)

(declare-fun e!4206824 () Bool)

(assert (=> b!6998817 (= e!4206816 e!4206824)))

(declare-fun res!2854989 () Bool)

(assert (=> b!6998817 (=> res!2854989 e!4206824)))

(declare-fun lt!2494593 () (Set Context!12520))

(declare-fun lt!2494618 () (Set Context!12520))

(assert (=> b!6998817 (= res!2854989 (not (= lt!2494593 lt!2494618)))))

(declare-fun lt!2494595 () (Set Context!12520))

(declare-fun lt!2494625 () (Set Context!12520))

(assert (=> b!6998817 (= lt!2494618 (set.union lt!2494595 lt!2494625))))

(declare-fun lt!2494627 () Context!12520)

(declare-fun derivationStepZipperUp!1914 (Context!12520 C!34798) (Set Context!12520))

(assert (=> b!6998817 (= lt!2494625 (derivationStepZipperUp!1914 lt!2494627 (h!73662 s!7408)))))

(declare-fun lt!2494613 () Context!12520)

(declare-fun derivationStepZipperDown!1982 (Regex!17264 Context!12520 C!34798) (Set Context!12520))

(assert (=> b!6998817 (= lt!2494595 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) lt!2494627 (h!73662 s!7408)))))

(declare-fun b!6998818 () Bool)

(declare-fun e!4206809 () Bool)

(declare-fun lt!2494630 () List!67338)

(assert (=> b!6998818 (= e!4206809 (matchZipper!2804 lt!2494625 lt!2494630))))

(declare-fun b!6998819 () Bool)

(declare-fun res!2855001 () Bool)

(declare-fun e!4206815 () Bool)

(assert (=> b!6998819 (=> res!2855001 e!4206815)))

(declare-fun isEmpty!39237 (List!67337) Bool)

(assert (=> b!6998819 (= res!2855001 (isEmpty!39237 (exprs!6760 lt!2494613)))))

(declare-fun b!6998820 () Bool)

(declare-fun e!4206807 () Bool)

(assert (=> b!6998820 (= e!4206815 e!4206807)))

(declare-fun res!2854996 () Bool)

(assert (=> b!6998820 (=> res!2854996 e!4206807)))

(declare-fun nullable!7024 (Regex!17264) Bool)

(assert (=> b!6998820 (= res!2854996 (not (nullable!7024 (h!73661 (exprs!6760 lt!2494613)))))))

(assert (=> b!6998820 (= lt!2494627 (Context!12521 lt!2494622))))

(declare-fun tail!13296 (List!67337) List!67337)

(assert (=> b!6998820 (= lt!2494622 (tail!13296 (exprs!6760 lt!2494613)))))

(declare-fun b!6998821 () Bool)

(declare-fun validRegex!8872 (Regex!17264) Bool)

(assert (=> b!6998821 (= e!4206824 (validRegex!8872 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> b!6998821 (= (matchZipper!2804 lt!2494618 lt!2494630) e!4206809)))

(declare-fun res!2854980 () Bool)

(assert (=> b!6998821 (=> res!2854980 e!4206809)))

(assert (=> b!6998821 (= res!2854980 (matchZipper!2804 lt!2494595 lt!2494630))))

(declare-fun lt!2494586 () Unit!161186)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1437 ((Set Context!12520) (Set Context!12520) List!67338) Unit!161186)

(assert (=> b!6998821 (= lt!2494586 (lemmaZipperConcatMatchesSameAsBothZippers!1437 lt!2494595 lt!2494625 lt!2494630))))

(declare-datatypes ((tuple2!67874 0))(
  ( (tuple2!67875 (_1!37240 List!67338) (_2!37240 List!67338)) )
))
(declare-fun lt!2494598 () tuple2!67874)

(declare-fun tail!13297 (List!67338) List!67338)

(assert (=> b!6998821 (= lt!2494630 (tail!13297 (_1!37240 lt!2494598)))))

(declare-fun b!6998822 () Bool)

(declare-fun e!4206819 () Bool)

(declare-fun e!4206813 () Bool)

(assert (=> b!6998822 (= e!4206819 e!4206813)))

(declare-fun res!2854978 () Bool)

(assert (=> b!6998822 (=> res!2854978 e!4206813)))

(assert (=> b!6998822 (= res!2854978 e!4206823)))

(declare-fun res!2854975 () Bool)

(assert (=> b!6998822 (=> (not res!2854975) (not e!4206823))))

(declare-fun lt!2494621 () Bool)

(declare-fun lt!2494599 () Bool)

(assert (=> b!6998822 (= res!2854975 (not (= lt!2494621 lt!2494599)))))

(declare-fun lt!2494619 () (Set Context!12520))

(assert (=> b!6998822 (= lt!2494621 (matchZipper!2804 lt!2494619 (t!381089 s!7408)))))

(declare-fun lt!2494607 () Unit!161186)

(assert (=> b!6998822 (= lt!2494607 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494604 () (Set Context!12520))

(declare-fun e!4206814 () Bool)

(assert (=> b!6998822 (= (matchZipper!2804 lt!2494604 (t!381089 s!7408)) e!4206814)))

(declare-fun res!2854997 () Bool)

(assert (=> b!6998822 (=> res!2854997 e!4206814)))

(assert (=> b!6998822 (= res!2854997 lt!2494599)))

(declare-fun lt!2494614 () (Set Context!12520))

(assert (=> b!6998822 (= lt!2494599 (matchZipper!2804 lt!2494614 (t!381089 s!7408)))))

(declare-fun lt!2494592 () Unit!161186)

(assert (=> b!6998822 (= lt!2494592 (lemmaZipperConcatMatchesSameAsBothZippers!1437 lt!2494614 lt!2494611 (t!381089 s!7408)))))

(declare-fun lt!2494626 () Unit!161186)

(assert (=> b!6998822 (= lt!2494626 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494637 () Unit!161186)

(assert (=> b!6998822 (= lt!2494637 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun b!6998823 () Bool)

(declare-fun res!2854985 () Bool)

(assert (=> b!6998823 (=> (not res!2854985) (not e!4206818))))

(assert (=> b!6998823 (= res!2854985 (is-Cons!67214 s!7408))))

(declare-fun b!6998824 () Bool)

(declare-fun res!2854987 () Bool)

(declare-fun e!4206820 () Bool)

(assert (=> b!6998824 (=> res!2854987 e!4206820)))

(declare-fun ++!15229 (List!67338 List!67338) List!67338)

(assert (=> b!6998824 (= res!2854987 (not (= (++!15229 (_1!37240 lt!2494598) (_2!37240 lt!2494598)) s!7408)))))

(declare-fun res!2854976 () Bool)

(assert (=> start!673236 (=> (not res!2854976) (not e!4206818))))

(assert (=> start!673236 (= res!2854976 (matchZipper!2804 lt!2494580 s!7408))))

(declare-fun z1!570 () (Set Context!12520))

(declare-fun appendTo!385 ((Set Context!12520) Context!12520) (Set Context!12520))

(assert (=> start!673236 (= lt!2494580 (appendTo!385 z1!570 ct2!306))))

(assert (=> start!673236 e!4206818))

(declare-fun condSetEmpty!48058 () Bool)

(assert (=> start!673236 (= condSetEmpty!48058 (= z1!570 (as set.empty (Set Context!12520))))))

(declare-fun setRes!48058 () Bool)

(assert (=> start!673236 setRes!48058))

(declare-fun e!4206810 () Bool)

(declare-fun inv!86020 (Context!12520) Bool)

(assert (=> start!673236 (and (inv!86020 ct2!306) e!4206810)))

(declare-fun e!4206825 () Bool)

(assert (=> start!673236 e!4206825))

(declare-fun b!6998814 () Bool)

(declare-fun e!4206805 () Bool)

(declare-fun e!4206821 () Bool)

(assert (=> b!6998814 (= e!4206805 e!4206821)))

(declare-fun res!2854981 () Bool)

(assert (=> b!6998814 (=> res!2854981 e!4206821)))

(declare-fun lt!2494582 () (Set Context!12520))

(declare-fun derivationStepZipper!2744 ((Set Context!12520) C!34798) (Set Context!12520))

(assert (=> b!6998814 (= res!2854981 (not (= (derivationStepZipper!2744 lt!2494582 (h!73662 s!7408)) lt!2494611)))))

(declare-fun lt!2494615 () Unit!161186)

(assert (=> b!6998814 (= lt!2494615 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494629 () Unit!161186)

(assert (=> b!6998814 (= lt!2494629 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lambda!404840 () Int)

(declare-fun lt!2494587 () Context!12520)

(declare-fun flatMap!2250 ((Set Context!12520) Int) (Set Context!12520))

(assert (=> b!6998814 (= (flatMap!2250 lt!2494582 lambda!404840) (derivationStepZipperUp!1914 lt!2494587 (h!73662 s!7408)))))

(declare-fun lt!2494589 () Unit!161186)

(declare-fun lemmaFlatMapOnSingletonSet!1765 ((Set Context!12520) Context!12520 Int) Unit!161186)

(assert (=> b!6998814 (= lt!2494589 (lemmaFlatMapOnSingletonSet!1765 lt!2494582 lt!2494587 lambda!404840))))

(assert (=> b!6998814 (= lt!2494582 (set.insert lt!2494587 (as set.empty (Set Context!12520))))))

(declare-fun lt!2494603 () Unit!161186)

(assert (=> b!6998814 (= lt!2494603 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494602 () Unit!161186)

(assert (=> b!6998814 (= lt!2494602 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun b!6998825 () Bool)

(declare-fun tp_is_empty!43753 () Bool)

(declare-fun tp!1930889 () Bool)

(assert (=> b!6998825 (= e!4206825 (and tp_is_empty!43753 tp!1930889))))

(declare-fun b!6998826 () Bool)

(declare-fun res!2854994 () Bool)

(assert (=> b!6998826 (=> res!2854994 e!4206812)))

(assert (=> b!6998826 (= res!2854994 (not (set.member lt!2494612 lt!2494580)))))

(declare-fun b!6998827 () Bool)

(declare-fun e!4206811 () Bool)

(declare-fun e!4206806 () Bool)

(assert (=> b!6998827 (= e!4206811 e!4206806)))

(declare-fun res!2854984 () Bool)

(assert (=> b!6998827 (=> res!2854984 e!4206806)))

(declare-fun lt!2494608 () (Set Context!12520))

(assert (=> b!6998827 (= res!2854984 (not (= lt!2494608 lt!2494617)))))

(declare-fun lt!2494609 () Context!12520)

(assert (=> b!6998827 (= lt!2494608 (set.insert lt!2494609 (as set.empty (Set Context!12520))))))

(declare-fun lt!2494590 () Unit!161186)

(assert (=> b!6998827 (= lt!2494590 (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839))))

(declare-fun b!6998828 () Bool)

(declare-fun e!4206808 () Bool)

(assert (=> b!6998828 (= e!4206821 e!4206808)))

(declare-fun res!2855000 () Bool)

(assert (=> b!6998828 (=> res!2855000 e!4206808)))

(assert (=> b!6998828 (= res!2855000 (not (matchZipper!2804 lt!2494582 s!7408)))))

(declare-fun lt!2494632 () Unit!161186)

(assert (=> b!6998828 (= lt!2494632 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(assert (=> b!6998829 (= e!4206812 e!4206811)))

(declare-fun res!2854999 () Bool)

(assert (=> b!6998829 (=> res!2854999 e!4206811)))

(assert (=> b!6998829 (= res!2854999 (or (not (= lt!2494609 lt!2494612)) (not (set.member lt!2494613 z1!570))))))

(declare-fun ++!15230 (List!67337 List!67337) List!67337)

(assert (=> b!6998829 (= lt!2494609 (Context!12521 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306))))))

(declare-fun lt!2494610 () Unit!161186)

(assert (=> b!6998829 (= lt!2494610 (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lambda!404838 () Int)

(declare-fun mapPost2!119 ((Set Context!12520) Int Context!12520) Context!12520)

(assert (=> b!6998829 (= lt!2494613 (mapPost2!119 z1!570 lambda!404838 lt!2494612))))

(declare-fun b!6998830 () Bool)

(declare-fun res!2854979 () Bool)

(assert (=> b!6998830 (=> res!2854979 e!4206815)))

(assert (=> b!6998830 (= res!2854979 (not (is-Cons!67213 (exprs!6760 lt!2494613))))))

(declare-fun b!6998831 () Bool)

(declare-fun res!2854990 () Bool)

(assert (=> b!6998831 (=> res!2854990 e!4206820)))

(declare-fun lt!2494633 () (Set Context!12520))

(assert (=> b!6998831 (= res!2854990 (not (matchZipper!2804 lt!2494633 (_2!37240 lt!2494598))))))

(declare-fun b!6998832 () Bool)

(declare-fun res!2854995 () Bool)

(declare-fun e!4206817 () Bool)

(assert (=> b!6998832 (=> res!2854995 e!4206817)))

(declare-fun lt!2494597 () Int)

(declare-fun zipperDepthTotal!485 (List!67339) Int)

(assert (=> b!6998832 (= res!2854995 (>= (zipperDepthTotal!485 (Cons!67215 lt!2494627 Nil!67215)) lt!2494597))))

(declare-fun b!6998833 () Bool)

(assert (=> b!6998833 (= e!4206814 (matchZipper!2804 lt!2494611 (t!381089 s!7408)))))

(declare-fun b!6998834 () Bool)

(declare-fun tp!1930892 () Bool)

(assert (=> b!6998834 (= e!4206810 tp!1930892)))

(declare-fun setIsEmpty!48058 () Bool)

(assert (=> setIsEmpty!48058 setRes!48058))

(declare-fun b!6998835 () Bool)

(assert (=> b!6998835 (= e!4206820 e!4206816)))

(declare-fun res!2854983 () Bool)

(assert (=> b!6998835 (=> res!2854983 e!4206816)))

(declare-fun lt!2494623 () (Set Context!12520))

(assert (=> b!6998835 (= res!2854983 (not (= (derivationStepZipper!2744 lt!2494623 (h!73662 s!7408)) lt!2494593)))))

(assert (=> b!6998835 (= lt!2494593 (derivationStepZipperUp!1914 lt!2494613 (h!73662 s!7408)))))

(assert (=> b!6998835 (= (flatMap!2250 lt!2494623 lambda!404840) (derivationStepZipperUp!1914 lt!2494613 (h!73662 s!7408)))))

(declare-fun lt!2494631 () Unit!161186)

(assert (=> b!6998835 (= lt!2494631 (lemmaFlatMapOnSingletonSet!1765 lt!2494623 lt!2494613 lambda!404840))))

(assert (=> b!6998835 (= lt!2494623 (set.insert lt!2494613 (as set.empty (Set Context!12520))))))

(declare-fun b!6998836 () Bool)

(assert (=> b!6998836 (= e!4206808 e!4206817)))

(declare-fun res!2854992 () Bool)

(assert (=> b!6998836 (=> res!2854992 e!4206817)))

(declare-fun lt!2494601 () Int)

(declare-fun contextDepthTotal!457 (Context!12520) Int)

(assert (=> b!6998836 (= res!2854992 (<= lt!2494601 (contextDepthTotal!457 lt!2494627)))))

(assert (=> b!6998836 (<= lt!2494601 lt!2494597)))

(declare-fun lt!2494620 () List!67339)

(assert (=> b!6998836 (= lt!2494597 (zipperDepthTotal!485 lt!2494620))))

(assert (=> b!6998836 (= lt!2494601 (contextDepthTotal!457 lt!2494613))))

(declare-fun lt!2494605 () Unit!161186)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!25 (List!67339 Context!12520) Unit!161186)

(assert (=> b!6998836 (= lt!2494605 (lemmaTotalDepthZipperLargerThanOfAnyContext!25 lt!2494620 lt!2494613))))

(assert (=> b!6998836 (= lt!2494620 (toList!10624 z1!570))))

(declare-fun lt!2494616 () Unit!161186)

(assert (=> b!6998836 (= lt!2494616 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494624 () Unit!161186)

(assert (=> b!6998836 (= lt!2494624 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494584 () Unit!161186)

(assert (=> b!6998836 (= lt!2494584 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494591 () (Set Context!12520))

(assert (=> b!6998836 (= (flatMap!2250 lt!2494591 lambda!404840) (derivationStepZipperUp!1914 lt!2494627 (h!73662 s!7408)))))

(declare-fun lt!2494596 () Unit!161186)

(assert (=> b!6998836 (= lt!2494596 (lemmaFlatMapOnSingletonSet!1765 lt!2494591 lt!2494627 lambda!404840))))

(declare-fun map!15543 ((Set Context!12520) Int) (Set Context!12520))

(assert (=> b!6998836 (= (map!15543 lt!2494591 lambda!404838) (set.insert (Context!12521 (++!15230 lt!2494622 (exprs!6760 ct2!306))) (as set.empty (Set Context!12520))))))

(declare-fun lt!2494600 () Unit!161186)

(assert (=> b!6998836 (= lt!2494600 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494581 () Unit!161186)

(declare-fun lemmaMapOnSingletonSet!329 ((Set Context!12520) Context!12520 Int) Unit!161186)

(assert (=> b!6998836 (= lt!2494581 (lemmaMapOnSingletonSet!329 lt!2494591 lt!2494627 lambda!404838))))

(assert (=> b!6998836 (= lt!2494591 (set.insert lt!2494627 (as set.empty (Set Context!12520))))))

(declare-fun b!6998837 () Bool)

(declare-fun res!2854982 () Bool)

(assert (=> b!6998837 (=> res!2854982 e!4206813)))

(assert (=> b!6998837 (= res!2854982 (not lt!2494621))))

(declare-fun b!6998838 () Bool)

(assert (=> b!6998838 (= e!4206817 e!4206820)))

(declare-fun res!2854991 () Bool)

(assert (=> b!6998838 (=> res!2854991 e!4206820)))

(assert (=> b!6998838 (= res!2854991 (not (matchZipper!2804 lt!2494591 (_1!37240 lt!2494598))))))

(declare-datatypes ((Option!16769 0))(
  ( (None!16768) (Some!16768 (v!53044 tuple2!67874)) )
))
(declare-fun lt!2494585 () Option!16769)

(declare-fun get!23566 (Option!16769) tuple2!67874)

(assert (=> b!6998838 (= lt!2494598 (get!23566 lt!2494585))))

(declare-fun isDefined!13470 (Option!16769) Bool)

(assert (=> b!6998838 (isDefined!13470 lt!2494585)))

(declare-fun findConcatSeparationZippers!285 ((Set Context!12520) (Set Context!12520) List!67338 List!67338 List!67338) Option!16769)

(assert (=> b!6998838 (= lt!2494585 (findConcatSeparationZippers!285 lt!2494591 lt!2494633 Nil!67214 s!7408 s!7408))))

(assert (=> b!6998838 (= lt!2494633 (set.insert ct2!306 (as set.empty (Set Context!12520))))))

(declare-fun lt!2494636 () Unit!161186)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!285 ((Set Context!12520) Context!12520 List!67338) Unit!161186)

(assert (=> b!6998838 (= lt!2494636 (lemmaConcatZipperMatchesStringThenFindConcatDefined!285 lt!2494591 ct2!306 s!7408))))

(declare-fun b!6998839 () Bool)

(declare-fun res!2854998 () Bool)

(assert (=> b!6998839 (=> res!2854998 e!4206820)))

(declare-fun isEmpty!39238 (List!67338) Bool)

(assert (=> b!6998839 (= res!2854998 (isEmpty!39238 (_1!37240 lt!2494598)))))

(declare-fun b!6998840 () Bool)

(assert (=> b!6998840 (= e!4206807 e!4206819)))

(declare-fun res!2854993 () Bool)

(assert (=> b!6998840 (=> res!2854993 e!4206819)))

(assert (=> b!6998840 (= res!2854993 (not (= lt!2494619 lt!2494604)))))

(assert (=> b!6998840 (= lt!2494604 (set.union lt!2494614 lt!2494611))))

(assert (=> b!6998840 (= lt!2494611 (derivationStepZipperUp!1914 lt!2494587 (h!73662 s!7408)))))

(assert (=> b!6998840 (= lt!2494614 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) lt!2494587 (h!73662 s!7408)))))

(assert (=> b!6998840 (= lt!2494587 (Context!12521 (++!15230 lt!2494622 (exprs!6760 ct2!306))))))

(declare-fun lt!2494635 () Unit!161186)

(assert (=> b!6998840 (= lt!2494635 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(declare-fun lt!2494583 () Unit!161186)

(assert (=> b!6998840 (= lt!2494583 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(assert (=> b!6998841 (= e!4206806 e!4206815)))

(declare-fun res!2854986 () Bool)

(assert (=> b!6998841 (=> res!2854986 e!4206815)))

(assert (=> b!6998841 (= res!2854986 (not (= (derivationStepZipper!2744 lt!2494608 (h!73662 s!7408)) lt!2494619)))))

(assert (=> b!6998841 (= (flatMap!2250 lt!2494608 lambda!404840) (derivationStepZipperUp!1914 lt!2494609 (h!73662 s!7408)))))

(declare-fun lt!2494594 () Unit!161186)

(assert (=> b!6998841 (= lt!2494594 (lemmaFlatMapOnSingletonSet!1765 lt!2494608 lt!2494609 lambda!404840))))

(assert (=> b!6998841 (= lt!2494619 (derivationStepZipperUp!1914 lt!2494609 (h!73662 s!7408)))))

(declare-fun lt!2494634 () Unit!161186)

(assert (=> b!6998841 (= lt!2494634 (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839))))

(declare-fun setNonEmpty!48058 () Bool)

(declare-fun setElem!48058 () Context!12520)

(declare-fun tp!1930890 () Bool)

(assert (=> setNonEmpty!48058 (= setRes!48058 (and tp!1930890 (inv!86020 setElem!48058) e!4206822))))

(declare-fun setRest!48058 () (Set Context!12520))

(assert (=> setNonEmpty!48058 (= z1!570 (set.union (set.insert setElem!48058 (as set.empty (Set Context!12520))) setRest!48058))))

(declare-fun b!6998842 () Bool)

(assert (=> b!6998842 (= e!4206813 e!4206805)))

(declare-fun res!2854988 () Bool)

(assert (=> b!6998842 (=> res!2854988 e!4206805)))

(assert (=> b!6998842 (= res!2854988 (not (matchZipper!2804 lt!2494611 (t!381089 s!7408))))))

(declare-fun lt!2494628 () Unit!161186)

(assert (=> b!6998842 (= lt!2494628 (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(assert (= (and start!673236 res!2854976) b!6998823))

(assert (= (and b!6998823 res!2854985) b!6998816))

(assert (= (and b!6998816 (not res!2854977)) b!6998826))

(assert (= (and b!6998826 (not res!2854994)) b!6998829))

(assert (= (and b!6998829 (not res!2854999)) b!6998827))

(assert (= (and b!6998827 (not res!2854984)) b!6998841))

(assert (= (and b!6998841 (not res!2854986)) b!6998830))

(assert (= (and b!6998830 (not res!2854979)) b!6998819))

(assert (= (and b!6998819 (not res!2855001)) b!6998820))

(assert (= (and b!6998820 (not res!2854996)) b!6998840))

(assert (= (and b!6998840 (not res!2854993)) b!6998822))

(assert (= (and b!6998822 (not res!2854997)) b!6998833))

(assert (= (and b!6998822 res!2854975) b!6998813))

(assert (= (and b!6998822 (not res!2854978)) b!6998837))

(assert (= (and b!6998837 (not res!2854982)) b!6998842))

(assert (= (and b!6998842 (not res!2854988)) b!6998814))

(assert (= (and b!6998814 (not res!2854981)) b!6998828))

(assert (= (and b!6998828 (not res!2855000)) b!6998836))

(assert (= (and b!6998836 (not res!2854992)) b!6998832))

(assert (= (and b!6998832 (not res!2854995)) b!6998838))

(assert (= (and b!6998838 (not res!2854991)) b!6998831))

(assert (= (and b!6998831 (not res!2854990)) b!6998824))

(assert (= (and b!6998824 (not res!2854987)) b!6998839))

(assert (= (and b!6998839 (not res!2854998)) b!6998835))

(assert (= (and b!6998835 (not res!2854983)) b!6998817))

(assert (= (and b!6998817 (not res!2854989)) b!6998821))

(assert (= (and b!6998821 (not res!2854980)) b!6998818))

(assert (= (and start!673236 condSetEmpty!48058) setIsEmpty!48058))

(assert (= (and start!673236 (not condSetEmpty!48058)) setNonEmpty!48058))

(assert (= setNonEmpty!48058 b!6998815))

(assert (= start!673236 b!6998834))

(assert (= (and start!673236 (is-Cons!67214 s!7408)) b!6998825))

(declare-fun m!7691768 () Bool)

(assert (=> b!6998819 m!7691768))

(declare-fun m!7691770 () Bool)

(assert (=> b!6998816 m!7691770))

(declare-fun m!7691772 () Bool)

(assert (=> b!6998816 m!7691772))

(declare-fun m!7691774 () Bool)

(assert (=> b!6998816 m!7691774))

(declare-fun m!7691776 () Bool)

(assert (=> b!6998816 m!7691776))

(declare-fun m!7691778 () Bool)

(assert (=> b!6998816 m!7691778))

(declare-fun m!7691780 () Bool)

(assert (=> b!6998816 m!7691780))

(declare-fun m!7691782 () Bool)

(assert (=> b!6998831 m!7691782))

(declare-fun m!7691784 () Bool)

(assert (=> b!6998818 m!7691784))

(declare-fun m!7691786 () Bool)

(assert (=> b!6998820 m!7691786))

(declare-fun m!7691788 () Bool)

(assert (=> b!6998820 m!7691788))

(declare-fun m!7691790 () Bool)

(assert (=> b!6998832 m!7691790))

(declare-fun m!7691792 () Bool)

(assert (=> b!6998826 m!7691792))

(declare-fun m!7691794 () Bool)

(assert (=> b!6998813 m!7691794))

(declare-fun m!7691796 () Bool)

(assert (=> b!6998813 m!7691796))

(declare-fun m!7691798 () Bool)

(assert (=> b!6998840 m!7691798))

(declare-fun m!7691800 () Bool)

(assert (=> b!6998840 m!7691800))

(assert (=> b!6998840 m!7691796))

(assert (=> b!6998840 m!7691796))

(declare-fun m!7691802 () Bool)

(assert (=> b!6998840 m!7691802))

(assert (=> b!6998833 m!7691794))

(declare-fun m!7691804 () Bool)

(assert (=> b!6998824 m!7691804))

(declare-fun m!7691806 () Bool)

(assert (=> b!6998827 m!7691806))

(declare-fun m!7691808 () Bool)

(assert (=> b!6998827 m!7691808))

(declare-fun m!7691810 () Bool)

(assert (=> b!6998817 m!7691810))

(declare-fun m!7691812 () Bool)

(assert (=> b!6998817 m!7691812))

(declare-fun m!7691814 () Bool)

(assert (=> setNonEmpty!48058 m!7691814))

(declare-fun m!7691816 () Bool)

(assert (=> b!6998839 m!7691816))

(assert (=> b!6998836 m!7691796))

(declare-fun m!7691818 () Bool)

(assert (=> b!6998836 m!7691818))

(assert (=> b!6998836 m!7691796))

(assert (=> b!6998836 m!7691798))

(declare-fun m!7691820 () Bool)

(assert (=> b!6998836 m!7691820))

(declare-fun m!7691822 () Bool)

(assert (=> b!6998836 m!7691822))

(assert (=> b!6998836 m!7691796))

(declare-fun m!7691824 () Bool)

(assert (=> b!6998836 m!7691824))

(assert (=> b!6998836 m!7691810))

(declare-fun m!7691826 () Bool)

(assert (=> b!6998836 m!7691826))

(declare-fun m!7691828 () Bool)

(assert (=> b!6998836 m!7691828))

(declare-fun m!7691830 () Bool)

(assert (=> b!6998836 m!7691830))

(declare-fun m!7691832 () Bool)

(assert (=> b!6998836 m!7691832))

(assert (=> b!6998836 m!7691796))

(declare-fun m!7691834 () Bool)

(assert (=> b!6998836 m!7691834))

(declare-fun m!7691836 () Bool)

(assert (=> b!6998836 m!7691836))

(declare-fun m!7691838 () Bool)

(assert (=> b!6998836 m!7691838))

(declare-fun m!7691840 () Bool)

(assert (=> b!6998841 m!7691840))

(assert (=> b!6998841 m!7691808))

(declare-fun m!7691842 () Bool)

(assert (=> b!6998841 m!7691842))

(declare-fun m!7691844 () Bool)

(assert (=> b!6998841 m!7691844))

(declare-fun m!7691846 () Bool)

(assert (=> b!6998841 m!7691846))

(declare-fun m!7691848 () Bool)

(assert (=> b!6998821 m!7691848))

(declare-fun m!7691850 () Bool)

(assert (=> b!6998821 m!7691850))

(declare-fun m!7691852 () Bool)

(assert (=> b!6998821 m!7691852))

(declare-fun m!7691854 () Bool)

(assert (=> b!6998821 m!7691854))

(declare-fun m!7691856 () Bool)

(assert (=> b!6998821 m!7691856))

(declare-fun m!7691858 () Bool)

(assert (=> b!6998835 m!7691858))

(declare-fun m!7691860 () Bool)

(assert (=> b!6998835 m!7691860))

(declare-fun m!7691862 () Bool)

(assert (=> b!6998835 m!7691862))

(declare-fun m!7691864 () Bool)

(assert (=> b!6998835 m!7691864))

(declare-fun m!7691866 () Bool)

(assert (=> b!6998835 m!7691866))

(declare-fun m!7691868 () Bool)

(assert (=> b!6998829 m!7691868))

(declare-fun m!7691870 () Bool)

(assert (=> b!6998829 m!7691870))

(assert (=> b!6998829 m!7691808))

(declare-fun m!7691872 () Bool)

(assert (=> b!6998829 m!7691872))

(assert (=> b!6998822 m!7691796))

(assert (=> b!6998822 m!7691796))

(declare-fun m!7691874 () Bool)

(assert (=> b!6998822 m!7691874))

(declare-fun m!7691876 () Bool)

(assert (=> b!6998822 m!7691876))

(declare-fun m!7691878 () Bool)

(assert (=> b!6998822 m!7691878))

(declare-fun m!7691880 () Bool)

(assert (=> b!6998822 m!7691880))

(assert (=> b!6998822 m!7691796))

(declare-fun m!7691882 () Bool)

(assert (=> start!673236 m!7691882))

(declare-fun m!7691884 () Bool)

(assert (=> start!673236 m!7691884))

(declare-fun m!7691886 () Bool)

(assert (=> start!673236 m!7691886))

(assert (=> b!6998842 m!7691794))

(assert (=> b!6998842 m!7691796))

(declare-fun m!7691888 () Bool)

(assert (=> b!6998828 m!7691888))

(assert (=> b!6998828 m!7691796))

(declare-fun m!7691890 () Bool)

(assert (=> b!6998814 m!7691890))

(assert (=> b!6998814 m!7691802))

(assert (=> b!6998814 m!7691796))

(assert (=> b!6998814 m!7691796))

(assert (=> b!6998814 m!7691796))

(declare-fun m!7691892 () Bool)

(assert (=> b!6998814 m!7691892))

(declare-fun m!7691894 () Bool)

(assert (=> b!6998814 m!7691894))

(declare-fun m!7691896 () Bool)

(assert (=> b!6998814 m!7691896))

(assert (=> b!6998814 m!7691796))

(declare-fun m!7691898 () Bool)

(assert (=> b!6998838 m!7691898))

(declare-fun m!7691900 () Bool)

(assert (=> b!6998838 m!7691900))

(declare-fun m!7691902 () Bool)

(assert (=> b!6998838 m!7691902))

(declare-fun m!7691904 () Bool)

(assert (=> b!6998838 m!7691904))

(declare-fun m!7691906 () Bool)

(assert (=> b!6998838 m!7691906))

(declare-fun m!7691908 () Bool)

(assert (=> b!6998838 m!7691908))

(push 1)

(assert (not b!6998840))

(assert (not b!6998828))

(assert (not b!6998829))

(assert (not b!6998838))

(assert (not b!6998835))

(assert (not b!6998834))

(assert (not b!6998819))

(assert (not b!6998813))

(assert (not b!6998839))

(assert (not b!6998814))

(assert (not setNonEmpty!48058))

(assert (not b!6998822))

(assert (not b!6998821))

(assert (not start!673236))

(assert (not b!6998815))

(assert (not b!6998841))

(assert (not b!6998831))

(assert (not b!6998817))

(assert (not b!6998825))

(assert (not b!6998842))

(assert (not b!6998833))

(assert (not b!6998827))

(assert tp_is_empty!43753)

(assert (not b!6998816))

(assert (not b!6998818))

(assert (not b!6998820))

(assert (not b!6998836))

(assert (not b!6998824))

(assert (not b!6998832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2181030 () Bool)

(declare-fun c!1298989 () Bool)

(assert (=> d!2181030 (= c!1298989 (isEmpty!39238 lt!2494630))))

(declare-fun e!4206891 () Bool)

(assert (=> d!2181030 (= (matchZipper!2804 lt!2494595 lt!2494630) e!4206891)))

(declare-fun b!6998949 () Bool)

(declare-fun nullableZipper!2459 ((Set Context!12520)) Bool)

(assert (=> b!6998949 (= e!4206891 (nullableZipper!2459 lt!2494595))))

(declare-fun b!6998950 () Bool)

(declare-fun head!14137 (List!67338) C!34798)

(assert (=> b!6998950 (= e!4206891 (matchZipper!2804 (derivationStepZipper!2744 lt!2494595 (head!14137 lt!2494630)) (tail!13297 lt!2494630)))))

(assert (= (and d!2181030 c!1298989) b!6998949))

(assert (= (and d!2181030 (not c!1298989)) b!6998950))

(declare-fun m!7692052 () Bool)

(assert (=> d!2181030 m!7692052))

(declare-fun m!7692054 () Bool)

(assert (=> b!6998949 m!7692054))

(declare-fun m!7692056 () Bool)

(assert (=> b!6998950 m!7692056))

(assert (=> b!6998950 m!7692056))

(declare-fun m!7692058 () Bool)

(assert (=> b!6998950 m!7692058))

(declare-fun m!7692060 () Bool)

(assert (=> b!6998950 m!7692060))

(assert (=> b!6998950 m!7692058))

(assert (=> b!6998950 m!7692060))

(declare-fun m!7692062 () Bool)

(assert (=> b!6998950 m!7692062))

(assert (=> b!6998821 d!2181030))

(declare-fun d!2181032 () Bool)

(declare-fun c!1298990 () Bool)

(assert (=> d!2181032 (= c!1298990 (isEmpty!39238 lt!2494630))))

(declare-fun e!4206892 () Bool)

(assert (=> d!2181032 (= (matchZipper!2804 lt!2494618 lt!2494630) e!4206892)))

(declare-fun b!6998951 () Bool)

(assert (=> b!6998951 (= e!4206892 (nullableZipper!2459 lt!2494618))))

(declare-fun b!6998952 () Bool)

(assert (=> b!6998952 (= e!4206892 (matchZipper!2804 (derivationStepZipper!2744 lt!2494618 (head!14137 lt!2494630)) (tail!13297 lt!2494630)))))

(assert (= (and d!2181032 c!1298990) b!6998951))

(assert (= (and d!2181032 (not c!1298990)) b!6998952))

(assert (=> d!2181032 m!7692052))

(declare-fun m!7692064 () Bool)

(assert (=> b!6998951 m!7692064))

(assert (=> b!6998952 m!7692056))

(assert (=> b!6998952 m!7692056))

(declare-fun m!7692066 () Bool)

(assert (=> b!6998952 m!7692066))

(assert (=> b!6998952 m!7692060))

(assert (=> b!6998952 m!7692066))

(assert (=> b!6998952 m!7692060))

(declare-fun m!7692068 () Bool)

(assert (=> b!6998952 m!7692068))

(assert (=> b!6998821 d!2181032))

(declare-fun d!2181034 () Bool)

(assert (=> d!2181034 (= (tail!13297 (_1!37240 lt!2494598)) (t!381089 (_1!37240 lt!2494598)))))

(assert (=> b!6998821 d!2181034))

(declare-fun d!2181036 () Bool)

(declare-fun e!4206895 () Bool)

(assert (=> d!2181036 (= (matchZipper!2804 (set.union lt!2494595 lt!2494625) lt!2494630) e!4206895)))

(declare-fun res!2855087 () Bool)

(assert (=> d!2181036 (=> res!2855087 e!4206895)))

(assert (=> d!2181036 (= res!2855087 (matchZipper!2804 lt!2494595 lt!2494630))))

(declare-fun lt!2494822 () Unit!161186)

(declare-fun choose!52449 ((Set Context!12520) (Set Context!12520) List!67338) Unit!161186)

(assert (=> d!2181036 (= lt!2494822 (choose!52449 lt!2494595 lt!2494625 lt!2494630))))

(assert (=> d!2181036 (= (lemmaZipperConcatMatchesSameAsBothZippers!1437 lt!2494595 lt!2494625 lt!2494630) lt!2494822)))

(declare-fun b!6998955 () Bool)

(assert (=> b!6998955 (= e!4206895 (matchZipper!2804 lt!2494625 lt!2494630))))

(assert (= (and d!2181036 (not res!2855087)) b!6998955))

(declare-fun m!7692070 () Bool)

(assert (=> d!2181036 m!7692070))

(assert (=> d!2181036 m!7691856))

(declare-fun m!7692072 () Bool)

(assert (=> d!2181036 m!7692072))

(assert (=> b!6998955 m!7691784))

(assert (=> b!6998821 d!2181036))

(declare-fun b!6998974 () Bool)

(declare-fun e!4206911 () Bool)

(declare-fun e!4206915 () Bool)

(assert (=> b!6998974 (= e!4206911 e!4206915)))

(declare-fun res!2855101 () Bool)

(assert (=> b!6998974 (=> (not res!2855101) (not e!4206915))))

(declare-fun call!635435 () Bool)

(assert (=> b!6998974 (= res!2855101 call!635435)))

(declare-fun d!2181038 () Bool)

(declare-fun res!2855098 () Bool)

(declare-fun e!4206913 () Bool)

(assert (=> d!2181038 (=> res!2855098 e!4206913)))

(assert (=> d!2181038 (= res!2855098 (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> d!2181038 (= (validRegex!8872 (h!73661 (exprs!6760 lt!2494613))) e!4206913)))

(declare-fun bm!635429 () Bool)

(declare-fun call!635434 () Bool)

(assert (=> bm!635429 (= call!635435 call!635434)))

(declare-fun b!6998975 () Bool)

(declare-fun e!4206910 () Bool)

(assert (=> b!6998975 (= e!4206910 call!635434)))

(declare-fun b!6998976 () Bool)

(declare-fun res!2855102 () Bool)

(assert (=> b!6998976 (=> res!2855102 e!4206911)))

(assert (=> b!6998976 (= res!2855102 (not (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun e!4206914 () Bool)

(assert (=> b!6998976 (= e!4206914 e!4206911)))

(declare-fun b!6998977 () Bool)

(declare-fun e!4206916 () Bool)

(assert (=> b!6998977 (= e!4206916 e!4206914)))

(declare-fun c!1298996 () Bool)

(assert (=> b!6998977 (= c!1298996 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6998978 () Bool)

(declare-fun e!4206912 () Bool)

(declare-fun call!635436 () Bool)

(assert (=> b!6998978 (= e!4206912 call!635436)))

(declare-fun b!6998979 () Bool)

(assert (=> b!6998979 (= e!4206915 call!635436)))

(declare-fun b!6998980 () Bool)

(assert (=> b!6998980 (= e!4206916 e!4206910)))

(declare-fun res!2855100 () Bool)

(assert (=> b!6998980 (= res!2855100 (not (nullable!7024 (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (=> b!6998980 (=> (not res!2855100) (not e!4206910))))

(declare-fun b!6998981 () Bool)

(assert (=> b!6998981 (= e!4206913 e!4206916)))

(declare-fun c!1298995 () Bool)

(assert (=> b!6998981 (= c!1298995 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun bm!635430 () Bool)

(assert (=> bm!635430 (= call!635434 (validRegex!8872 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6998982 () Bool)

(declare-fun res!2855099 () Bool)

(assert (=> b!6998982 (=> (not res!2855099) (not e!4206912))))

(assert (=> b!6998982 (= res!2855099 call!635435)))

(assert (=> b!6998982 (= e!4206914 e!4206912)))

(declare-fun bm!635431 () Bool)

(assert (=> bm!635431 (= call!635436 (validRegex!8872 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (= (and d!2181038 (not res!2855098)) b!6998981))

(assert (= (and b!6998981 c!1298995) b!6998980))

(assert (= (and b!6998981 (not c!1298995)) b!6998977))

(assert (= (and b!6998980 res!2855100) b!6998975))

(assert (= (and b!6998977 c!1298996) b!6998982))

(assert (= (and b!6998977 (not c!1298996)) b!6998976))

(assert (= (and b!6998982 res!2855099) b!6998978))

(assert (= (and b!6998976 (not res!2855102)) b!6998974))

(assert (= (and b!6998974 res!2855101) b!6998979))

(assert (= (or b!6998978 b!6998979) bm!635431))

(assert (= (or b!6998982 b!6998974) bm!635429))

(assert (= (or b!6998975 bm!635429) bm!635430))

(declare-fun m!7692074 () Bool)

(assert (=> b!6998980 m!7692074))

(declare-fun m!7692076 () Bool)

(assert (=> bm!635430 m!7692076))

(declare-fun m!7692078 () Bool)

(assert (=> bm!635431 m!7692078))

(assert (=> b!6998821 d!2181038))

(declare-fun bs!1864041 () Bool)

(declare-fun d!2181040 () Bool)

(assert (= bs!1864041 (and d!2181040 b!6998841)))

(declare-fun lambda!404905 () Int)

(assert (=> bs!1864041 (= lambda!404905 lambda!404840)))

(assert (=> d!2181040 true))

(assert (=> d!2181040 (= (derivationStepZipper!2744 lt!2494608 (h!73662 s!7408)) (flatMap!2250 lt!2494608 lambda!404905))))

(declare-fun bs!1864042 () Bool)

(assert (= bs!1864042 d!2181040))

(declare-fun m!7692080 () Bool)

(assert (=> bs!1864042 m!7692080))

(assert (=> b!6998841 d!2181040))

(declare-fun d!2181042 () Bool)

(declare-fun forall!16178 (List!67337 Int) Bool)

(assert (=> d!2181042 (forall!16178 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)) lambda!404839)))

(declare-fun lt!2494825 () Unit!161186)

(declare-fun choose!52450 (List!67337 List!67337 Int) Unit!161186)

(assert (=> d!2181042 (= lt!2494825 (choose!52450 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> d!2181042 (forall!16178 (exprs!6760 lt!2494613) lambda!404839)))

(assert (=> d!2181042 (= (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839) lt!2494825)))

(declare-fun bs!1864043 () Bool)

(assert (= bs!1864043 d!2181042))

(assert (=> bs!1864043 m!7691870))

(assert (=> bs!1864043 m!7691870))

(declare-fun m!7692082 () Bool)

(assert (=> bs!1864043 m!7692082))

(declare-fun m!7692084 () Bool)

(assert (=> bs!1864043 m!7692084))

(declare-fun m!7692086 () Bool)

(assert (=> bs!1864043 m!7692086))

(assert (=> b!6998841 d!2181042))

(declare-fun d!2181044 () Bool)

(declare-fun c!1299003 () Bool)

(declare-fun e!4206924 () Bool)

(assert (=> d!2181044 (= c!1299003 e!4206924)))

(declare-fun res!2855105 () Bool)

(assert (=> d!2181044 (=> (not res!2855105) (not e!4206924))))

(assert (=> d!2181044 (= res!2855105 (is-Cons!67213 (exprs!6760 lt!2494609)))))

(declare-fun e!4206925 () (Set Context!12520))

(assert (=> d!2181044 (= (derivationStepZipperUp!1914 lt!2494609 (h!73662 s!7408)) e!4206925)))

(declare-fun b!6998995 () Bool)

(declare-fun e!4206923 () (Set Context!12520))

(assert (=> b!6998995 (= e!4206925 e!4206923)))

(declare-fun c!1299004 () Bool)

(assert (=> b!6998995 (= c!1299004 (is-Cons!67213 (exprs!6760 lt!2494609)))))

(declare-fun b!6998996 () Bool)

(assert (=> b!6998996 (= e!4206923 (as set.empty (Set Context!12520)))))

(declare-fun b!6998997 () Bool)

(assert (=> b!6998997 (= e!4206924 (nullable!7024 (h!73661 (exprs!6760 lt!2494609))))))

(declare-fun call!635439 () (Set Context!12520))

(declare-fun b!6998998 () Bool)

(assert (=> b!6998998 (= e!4206925 (set.union call!635439 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (h!73662 s!7408))))))

(declare-fun b!6998999 () Bool)

(assert (=> b!6998999 (= e!4206923 call!635439)))

(declare-fun bm!635434 () Bool)

(assert (=> bm!635434 (= call!635439 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494609)) (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (h!73662 s!7408)))))

(assert (= (and d!2181044 res!2855105) b!6998997))

(assert (= (and d!2181044 c!1299003) b!6998998))

(assert (= (and d!2181044 (not c!1299003)) b!6998995))

(assert (= (and b!6998995 c!1299004) b!6998999))

(assert (= (and b!6998995 (not c!1299004)) b!6998996))

(assert (= (or b!6998998 b!6998999) bm!635434))

(declare-fun m!7692088 () Bool)

(assert (=> b!6998997 m!7692088))

(declare-fun m!7692090 () Bool)

(assert (=> b!6998998 m!7692090))

(declare-fun m!7692092 () Bool)

(assert (=> bm!635434 m!7692092))

(assert (=> b!6998841 d!2181044))

(declare-fun d!2181046 () Bool)

(declare-fun dynLambda!26988 (Int Context!12520) (Set Context!12520))

(assert (=> d!2181046 (= (flatMap!2250 lt!2494608 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494609))))

(declare-fun lt!2494828 () Unit!161186)

(declare-fun choose!52451 ((Set Context!12520) Context!12520 Int) Unit!161186)

(assert (=> d!2181046 (= lt!2494828 (choose!52451 lt!2494608 lt!2494609 lambda!404840))))

(assert (=> d!2181046 (= lt!2494608 (set.insert lt!2494609 (as set.empty (Set Context!12520))))))

(assert (=> d!2181046 (= (lemmaFlatMapOnSingletonSet!1765 lt!2494608 lt!2494609 lambda!404840) lt!2494828)))

(declare-fun b_lambda!263475 () Bool)

(assert (=> (not b_lambda!263475) (not d!2181046)))

(declare-fun bs!1864044 () Bool)

(assert (= bs!1864044 d!2181046))

(assert (=> bs!1864044 m!7691844))

(declare-fun m!7692094 () Bool)

(assert (=> bs!1864044 m!7692094))

(declare-fun m!7692096 () Bool)

(assert (=> bs!1864044 m!7692096))

(assert (=> bs!1864044 m!7691806))

(assert (=> b!6998841 d!2181046))

(declare-fun d!2181048 () Bool)

(declare-fun choose!52452 ((Set Context!12520) Int) (Set Context!12520))

(assert (=> d!2181048 (= (flatMap!2250 lt!2494608 lambda!404840) (choose!52452 lt!2494608 lambda!404840))))

(declare-fun bs!1864045 () Bool)

(assert (= bs!1864045 d!2181048))

(declare-fun m!7692098 () Bool)

(assert (=> bs!1864045 m!7692098))

(assert (=> b!6998841 d!2181048))

(declare-fun d!2181050 () Bool)

(declare-fun nullableFct!2656 (Regex!17264) Bool)

(assert (=> d!2181050 (= (nullable!7024 (h!73661 (exprs!6760 lt!2494613))) (nullableFct!2656 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun bs!1864046 () Bool)

(assert (= bs!1864046 d!2181050))

(declare-fun m!7692100 () Bool)

(assert (=> bs!1864046 m!7692100))

(assert (=> b!6998820 d!2181050))

(declare-fun d!2181052 () Bool)

(assert (=> d!2181052 (= (tail!13296 (exprs!6760 lt!2494613)) (t!381088 (exprs!6760 lt!2494613)))))

(assert (=> b!6998820 d!2181052))

(declare-fun b!6999010 () Bool)

(declare-fun res!2855111 () Bool)

(declare-fun e!4206931 () Bool)

(assert (=> b!6999010 (=> (not res!2855111) (not e!4206931))))

(declare-fun lt!2494831 () List!67337)

(declare-fun size!40933 (List!67337) Int)

(assert (=> b!6999010 (= res!2855111 (= (size!40933 lt!2494831) (+ (size!40933 lt!2494622) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999009 () Bool)

(declare-fun e!4206930 () List!67337)

(assert (=> b!6999009 (= e!4206930 (Cons!67213 (h!73661 lt!2494622) (++!15230 (t!381088 lt!2494622) (exprs!6760 ct2!306))))))

(declare-fun d!2181054 () Bool)

(assert (=> d!2181054 e!4206931))

(declare-fun res!2855110 () Bool)

(assert (=> d!2181054 (=> (not res!2855110) (not e!4206931))))

(declare-fun content!13306 (List!67337) (Set Regex!17264))

(assert (=> d!2181054 (= res!2855110 (= (content!13306 lt!2494831) (set.union (content!13306 lt!2494622) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181054 (= lt!2494831 e!4206930)))

(declare-fun c!1299007 () Bool)

(assert (=> d!2181054 (= c!1299007 (is-Nil!67213 lt!2494622))))

(assert (=> d!2181054 (= (++!15230 lt!2494622 (exprs!6760 ct2!306)) lt!2494831)))

(declare-fun b!6999008 () Bool)

(assert (=> b!6999008 (= e!4206930 (exprs!6760 ct2!306))))

(declare-fun b!6999011 () Bool)

(assert (=> b!6999011 (= e!4206931 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494831 lt!2494622)))))

(assert (= (and d!2181054 c!1299007) b!6999008))

(assert (= (and d!2181054 (not c!1299007)) b!6999009))

(assert (= (and d!2181054 res!2855110) b!6999010))

(assert (= (and b!6999010 res!2855111) b!6999011))

(declare-fun m!7692102 () Bool)

(assert (=> b!6999010 m!7692102))

(declare-fun m!7692104 () Bool)

(assert (=> b!6999010 m!7692104))

(declare-fun m!7692106 () Bool)

(assert (=> b!6999010 m!7692106))

(declare-fun m!7692108 () Bool)

(assert (=> b!6999009 m!7692108))

(declare-fun m!7692110 () Bool)

(assert (=> d!2181054 m!7692110))

(declare-fun m!7692112 () Bool)

(assert (=> d!2181054 m!7692112))

(declare-fun m!7692114 () Bool)

(assert (=> d!2181054 m!7692114))

(assert (=> b!6998840 d!2181054))

(declare-fun d!2181056 () Bool)

(declare-fun c!1299008 () Bool)

(declare-fun e!4206933 () Bool)

(assert (=> d!2181056 (= c!1299008 e!4206933)))

(declare-fun res!2855112 () Bool)

(assert (=> d!2181056 (=> (not res!2855112) (not e!4206933))))

(assert (=> d!2181056 (= res!2855112 (is-Cons!67213 (exprs!6760 lt!2494587)))))

(declare-fun e!4206934 () (Set Context!12520))

(assert (=> d!2181056 (= (derivationStepZipperUp!1914 lt!2494587 (h!73662 s!7408)) e!4206934)))

(declare-fun b!6999012 () Bool)

(declare-fun e!4206932 () (Set Context!12520))

(assert (=> b!6999012 (= e!4206934 e!4206932)))

(declare-fun c!1299009 () Bool)

(assert (=> b!6999012 (= c!1299009 (is-Cons!67213 (exprs!6760 lt!2494587)))))

(declare-fun b!6999013 () Bool)

(assert (=> b!6999013 (= e!4206932 (as set.empty (Set Context!12520)))))

(declare-fun b!6999014 () Bool)

(assert (=> b!6999014 (= e!4206933 (nullable!7024 (h!73661 (exprs!6760 lt!2494587))))))

(declare-fun b!6999015 () Bool)

(declare-fun call!635440 () (Set Context!12520))

(assert (=> b!6999015 (= e!4206934 (set.union call!635440 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (h!73662 s!7408))))))

(declare-fun b!6999016 () Bool)

(assert (=> b!6999016 (= e!4206932 call!635440)))

(declare-fun bm!635435 () Bool)

(assert (=> bm!635435 (= call!635440 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494587)) (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (h!73662 s!7408)))))

(assert (= (and d!2181056 res!2855112) b!6999014))

(assert (= (and d!2181056 c!1299008) b!6999015))

(assert (= (and d!2181056 (not c!1299008)) b!6999012))

(assert (= (and b!6999012 c!1299009) b!6999016))

(assert (= (and b!6999012 (not c!1299009)) b!6999013))

(assert (= (or b!6999015 b!6999016) bm!635435))

(declare-fun m!7692116 () Bool)

(assert (=> b!6999014 m!7692116))

(declare-fun m!7692118 () Bool)

(assert (=> b!6999015 m!7692118))

(declare-fun m!7692120 () Bool)

(assert (=> bm!635435 m!7692120))

(assert (=> b!6998840 d!2181056))

(declare-fun d!2181058 () Bool)

(assert (=> d!2181058 (forall!16178 (++!15230 lt!2494622 (exprs!6760 ct2!306)) lambda!404839)))

(declare-fun lt!2494832 () Unit!161186)

(assert (=> d!2181058 (= lt!2494832 (choose!52450 lt!2494622 (exprs!6760 ct2!306) lambda!404839))))

(assert (=> d!2181058 (forall!16178 lt!2494622 lambda!404839)))

(assert (=> d!2181058 (= (lemmaConcatPreservesForall!600 lt!2494622 (exprs!6760 ct2!306) lambda!404839) lt!2494832)))

(declare-fun bs!1864047 () Bool)

(assert (= bs!1864047 d!2181058))

(assert (=> bs!1864047 m!7691798))

(assert (=> bs!1864047 m!7691798))

(declare-fun m!7692122 () Bool)

(assert (=> bs!1864047 m!7692122))

(declare-fun m!7692124 () Bool)

(assert (=> bs!1864047 m!7692124))

(declare-fun m!7692126 () Bool)

(assert (=> bs!1864047 m!7692126))

(assert (=> b!6998840 d!2181058))

(declare-fun b!6999039 () Bool)

(declare-fun e!4206951 () (Set Context!12520))

(declare-fun call!635455 () (Set Context!12520))

(assert (=> b!6999039 (= e!4206951 call!635455)))

(declare-fun bm!635448 () Bool)

(declare-fun c!1299024 () Bool)

(declare-fun c!1299021 () Bool)

(declare-fun c!1299023 () Bool)

(declare-fun call!635453 () (Set Context!12520))

(declare-fun call!635456 () List!67337)

(assert (=> bm!635448 (= call!635453 (derivationStepZipperDown!1982 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))) (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456)) (h!73662 s!7408)))))

(declare-fun b!6999040 () Bool)

(declare-fun e!4206948 () (Set Context!12520))

(declare-fun e!4206949 () (Set Context!12520))

(assert (=> b!6999040 (= e!4206948 e!4206949)))

(assert (=> b!6999040 (= c!1299023 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999041 () Bool)

(assert (=> b!6999041 (= e!4206949 call!635455)))

(declare-fun bm!635449 () Bool)

(declare-fun call!635454 () (Set Context!12520))

(assert (=> bm!635449 (= call!635455 call!635454)))

(declare-fun bm!635450 () Bool)

(declare-fun call!635458 () List!67337)

(assert (=> bm!635450 (= call!635456 call!635458)))

(declare-fun d!2181060 () Bool)

(declare-fun c!1299022 () Bool)

(assert (=> d!2181060 (= c!1299022 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494613))) (h!73662 s!7408))))))

(declare-fun e!4206947 () (Set Context!12520))

(assert (=> d!2181060 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) lt!2494587 (h!73662 s!7408)) e!4206947)))

(declare-fun b!6999042 () Bool)

(declare-fun call!635457 () (Set Context!12520))

(assert (=> b!6999042 (= e!4206948 (set.union call!635457 call!635454))))

(declare-fun bm!635451 () Bool)

(assert (=> bm!635451 (= call!635457 (derivationStepZipperDown!1982 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (ite c!1299021 lt!2494587 (Context!12521 call!635458)) (h!73662 s!7408)))))

(declare-fun bm!635452 () Bool)

(declare-fun $colon$colon!2503 (List!67337 Regex!17264) List!67337)

(assert (=> bm!635452 (= call!635458 ($colon$colon!2503 (exprs!6760 lt!2494587) (ite (or c!1299024 c!1299023) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun b!6999043 () Bool)

(assert (=> b!6999043 (= e!4206947 (set.insert lt!2494587 (as set.empty (Set Context!12520))))))

(declare-fun b!6999044 () Bool)

(declare-fun e!4206952 () Bool)

(assert (=> b!6999044 (= c!1299024 e!4206952)))

(declare-fun res!2855115 () Bool)

(assert (=> b!6999044 (=> (not res!2855115) (not e!4206952))))

(assert (=> b!6999044 (= res!2855115 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun e!4206950 () (Set Context!12520))

(assert (=> b!6999044 (= e!4206950 e!4206948)))

(declare-fun b!6999045 () Bool)

(assert (=> b!6999045 (= e!4206947 e!4206950)))

(assert (=> b!6999045 (= c!1299021 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999046 () Bool)

(assert (=> b!6999046 (= e!4206950 (set.union call!635457 call!635453))))

(declare-fun b!6999047 () Bool)

(declare-fun c!1299020 () Bool)

(assert (=> b!6999047 (= c!1299020 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> b!6999047 (= e!4206949 e!4206951)))

(declare-fun b!6999048 () Bool)

(assert (=> b!6999048 (= e!4206951 (as set.empty (Set Context!12520)))))

(declare-fun bm!635453 () Bool)

(assert (=> bm!635453 (= call!635454 call!635453)))

(declare-fun b!6999049 () Bool)

(assert (=> b!6999049 (= e!4206952 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181060 c!1299022) b!6999043))

(assert (= (and d!2181060 (not c!1299022)) b!6999045))

(assert (= (and b!6999045 c!1299021) b!6999046))

(assert (= (and b!6999045 (not c!1299021)) b!6999044))

(assert (= (and b!6999044 res!2855115) b!6999049))

(assert (= (and b!6999044 c!1299024) b!6999042))

(assert (= (and b!6999044 (not c!1299024)) b!6999040))

(assert (= (and b!6999040 c!1299023) b!6999041))

(assert (= (and b!6999040 (not c!1299023)) b!6999047))

(assert (= (and b!6999047 c!1299020) b!6999039))

(assert (= (and b!6999047 (not c!1299020)) b!6999048))

(assert (= (or b!6999041 b!6999039) bm!635450))

(assert (= (or b!6999041 b!6999039) bm!635449))

(assert (= (or b!6999042 bm!635449) bm!635453))

(assert (= (or b!6999042 bm!635450) bm!635452))

(assert (= (or b!6999046 b!6999042) bm!635451))

(assert (= (or b!6999046 bm!635453) bm!635448))

(assert (=> b!6999043 m!7691896))

(declare-fun m!7692128 () Bool)

(assert (=> bm!635448 m!7692128))

(declare-fun m!7692130 () Bool)

(assert (=> bm!635452 m!7692130))

(declare-fun m!7692132 () Bool)

(assert (=> b!6999049 m!7692132))

(declare-fun m!7692134 () Bool)

(assert (=> bm!635451 m!7692134))

(assert (=> b!6998840 d!2181060))

(declare-fun d!2181062 () Bool)

(assert (=> d!2181062 (= (isEmpty!39237 (exprs!6760 lt!2494613)) (is-Nil!67213 (exprs!6760 lt!2494613)))))

(assert (=> b!6998819 d!2181062))

(declare-fun d!2181064 () Bool)

(assert (=> d!2181064 (= (isEmpty!39238 (_1!37240 lt!2494598)) (is-Nil!67214 (_1!37240 lt!2494598)))))

(assert (=> b!6998839 d!2181064))

(declare-fun d!2181066 () Bool)

(declare-fun c!1299025 () Bool)

(assert (=> d!2181066 (= c!1299025 (isEmpty!39238 lt!2494630))))

(declare-fun e!4206953 () Bool)

(assert (=> d!2181066 (= (matchZipper!2804 lt!2494625 lt!2494630) e!4206953)))

(declare-fun b!6999050 () Bool)

(assert (=> b!6999050 (= e!4206953 (nullableZipper!2459 lt!2494625))))

(declare-fun b!6999051 () Bool)

(assert (=> b!6999051 (= e!4206953 (matchZipper!2804 (derivationStepZipper!2744 lt!2494625 (head!14137 lt!2494630)) (tail!13297 lt!2494630)))))

(assert (= (and d!2181066 c!1299025) b!6999050))

(assert (= (and d!2181066 (not c!1299025)) b!6999051))

(assert (=> d!2181066 m!7692052))

(declare-fun m!7692136 () Bool)

(assert (=> b!6999050 m!7692136))

(assert (=> b!6999051 m!7692056))

(assert (=> b!6999051 m!7692056))

(declare-fun m!7692138 () Bool)

(assert (=> b!6999051 m!7692138))

(assert (=> b!6999051 m!7692060))

(assert (=> b!6999051 m!7692138))

(assert (=> b!6999051 m!7692060))

(declare-fun m!7692140 () Bool)

(assert (=> b!6999051 m!7692140))

(assert (=> b!6998818 d!2181066))

(declare-fun d!2181068 () Bool)

(assert (=> d!2181068 (isDefined!13470 (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) Nil!67214 s!7408 s!7408))))

(declare-fun lt!2494835 () Unit!161186)

(declare-fun choose!52453 ((Set Context!12520) Context!12520 List!67338) Unit!161186)

(assert (=> d!2181068 (= lt!2494835 (choose!52453 lt!2494591 ct2!306 s!7408))))

(assert (=> d!2181068 (matchZipper!2804 (appendTo!385 lt!2494591 ct2!306) s!7408)))

(assert (=> d!2181068 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!285 lt!2494591 ct2!306 s!7408) lt!2494835)))

(declare-fun bs!1864048 () Bool)

(assert (= bs!1864048 d!2181068))

(declare-fun m!7692142 () Bool)

(assert (=> bs!1864048 m!7692142))

(declare-fun m!7692144 () Bool)

(assert (=> bs!1864048 m!7692144))

(declare-fun m!7692146 () Bool)

(assert (=> bs!1864048 m!7692146))

(assert (=> bs!1864048 m!7691902))

(declare-fun m!7692148 () Bool)

(assert (=> bs!1864048 m!7692148))

(assert (=> bs!1864048 m!7692144))

(assert (=> bs!1864048 m!7692148))

(declare-fun m!7692150 () Bool)

(assert (=> bs!1864048 m!7692150))

(assert (=> bs!1864048 m!7691902))

(assert (=> b!6998838 d!2181068))

(declare-fun d!2181070 () Bool)

(assert (=> d!2181070 (= (get!23566 lt!2494585) (v!53044 lt!2494585))))

(assert (=> b!6998838 d!2181070))

(declare-fun d!2181072 () Bool)

(declare-fun isEmpty!39241 (Option!16769) Bool)

(assert (=> d!2181072 (= (isDefined!13470 lt!2494585) (not (isEmpty!39241 lt!2494585)))))

(declare-fun bs!1864049 () Bool)

(assert (= bs!1864049 d!2181072))

(declare-fun m!7692152 () Bool)

(assert (=> bs!1864049 m!7692152))

(assert (=> b!6998838 d!2181072))

(declare-fun b!6999070 () Bool)

(declare-fun e!4206964 () Option!16769)

(declare-fun e!4206965 () Option!16769)

(assert (=> b!6999070 (= e!4206964 e!4206965)))

(declare-fun c!1299030 () Bool)

(assert (=> b!6999070 (= c!1299030 (is-Nil!67214 s!7408))))

(declare-fun b!6999071 () Bool)

(declare-fun e!4206966 () Bool)

(declare-fun lt!2494843 () Option!16769)

(assert (=> b!6999071 (= e!4206966 (= (++!15229 (_1!37240 (get!23566 lt!2494843)) (_2!37240 (get!23566 lt!2494843))) s!7408))))

(declare-fun b!6999072 () Bool)

(assert (=> b!6999072 (= e!4206965 None!16768)))

(declare-fun b!6999073 () Bool)

(declare-fun lt!2494842 () Unit!161186)

(declare-fun lt!2494844 () Unit!161186)

(assert (=> b!6999073 (= lt!2494842 lt!2494844)))

(assert (=> b!6999073 (= (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2879 (List!67338 C!34798 List!67338 List!67338) Unit!161186)

(assert (=> b!6999073 (= lt!2494844 (lemmaMoveElementToOtherListKeepsConcatEq!2879 Nil!67214 (h!73662 s!7408) (t!381089 s!7408) s!7408))))

(assert (=> b!6999073 (= e!4206965 (findConcatSeparationZippers!285 lt!2494591 lt!2494633 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408) s!7408))))

(declare-fun d!2181074 () Bool)

(declare-fun e!4206968 () Bool)

(assert (=> d!2181074 e!4206968))

(declare-fun res!2855127 () Bool)

(assert (=> d!2181074 (=> res!2855127 e!4206968)))

(assert (=> d!2181074 (= res!2855127 e!4206966)))

(declare-fun res!2855126 () Bool)

(assert (=> d!2181074 (=> (not res!2855126) (not e!4206966))))

(assert (=> d!2181074 (= res!2855126 (isDefined!13470 lt!2494843))))

(assert (=> d!2181074 (= lt!2494843 e!4206964)))

(declare-fun c!1299031 () Bool)

(declare-fun e!4206967 () Bool)

(assert (=> d!2181074 (= c!1299031 e!4206967)))

(declare-fun res!2855129 () Bool)

(assert (=> d!2181074 (=> (not res!2855129) (not e!4206967))))

(assert (=> d!2181074 (= res!2855129 (matchZipper!2804 lt!2494591 Nil!67214))))

(assert (=> d!2181074 (= (++!15229 Nil!67214 s!7408) s!7408)))

(assert (=> d!2181074 (= (findConcatSeparationZippers!285 lt!2494591 lt!2494633 Nil!67214 s!7408 s!7408) lt!2494843)))

(declare-fun b!6999074 () Bool)

(assert (=> b!6999074 (= e!4206964 (Some!16768 (tuple2!67875 Nil!67214 s!7408)))))

(declare-fun b!6999075 () Bool)

(assert (=> b!6999075 (= e!4206968 (not (isDefined!13470 lt!2494843)))))

(declare-fun b!6999076 () Bool)

(declare-fun res!2855130 () Bool)

(assert (=> b!6999076 (=> (not res!2855130) (not e!4206966))))

(assert (=> b!6999076 (= res!2855130 (matchZipper!2804 lt!2494591 (_1!37240 (get!23566 lt!2494843))))))

(declare-fun b!6999077 () Bool)

(assert (=> b!6999077 (= e!4206967 (matchZipper!2804 lt!2494633 s!7408))))

(declare-fun b!6999078 () Bool)

(declare-fun res!2855128 () Bool)

(assert (=> b!6999078 (=> (not res!2855128) (not e!4206966))))

(assert (=> b!6999078 (= res!2855128 (matchZipper!2804 lt!2494633 (_2!37240 (get!23566 lt!2494843))))))

(assert (= (and d!2181074 res!2855129) b!6999077))

(assert (= (and d!2181074 c!1299031) b!6999074))

(assert (= (and d!2181074 (not c!1299031)) b!6999070))

(assert (= (and b!6999070 c!1299030) b!6999072))

(assert (= (and b!6999070 (not c!1299030)) b!6999073))

(assert (= (and d!2181074 res!2855126) b!6999076))

(assert (= (and b!6999076 res!2855130) b!6999078))

(assert (= (and b!6999078 res!2855128) b!6999071))

(assert (= (and d!2181074 (not res!2855127)) b!6999075))

(declare-fun m!7692154 () Bool)

(assert (=> b!6999078 m!7692154))

(declare-fun m!7692156 () Bool)

(assert (=> b!6999078 m!7692156))

(declare-fun m!7692158 () Bool)

(assert (=> b!6999077 m!7692158))

(assert (=> b!6999071 m!7692154))

(declare-fun m!7692160 () Bool)

(assert (=> b!6999071 m!7692160))

(declare-fun m!7692162 () Bool)

(assert (=> b!6999073 m!7692162))

(assert (=> b!6999073 m!7692162))

(declare-fun m!7692164 () Bool)

(assert (=> b!6999073 m!7692164))

(declare-fun m!7692166 () Bool)

(assert (=> b!6999073 m!7692166))

(assert (=> b!6999073 m!7692162))

(declare-fun m!7692168 () Bool)

(assert (=> b!6999073 m!7692168))

(declare-fun m!7692170 () Bool)

(assert (=> b!6999075 m!7692170))

(assert (=> d!2181074 m!7692170))

(declare-fun m!7692172 () Bool)

(assert (=> d!2181074 m!7692172))

(declare-fun m!7692174 () Bool)

(assert (=> d!2181074 m!7692174))

(assert (=> b!6999076 m!7692154))

(declare-fun m!7692176 () Bool)

(assert (=> b!6999076 m!7692176))

(assert (=> b!6998838 d!2181074))

(declare-fun d!2181076 () Bool)

(declare-fun c!1299032 () Bool)

(assert (=> d!2181076 (= c!1299032 (isEmpty!39238 (_1!37240 lt!2494598)))))

(declare-fun e!4206969 () Bool)

(assert (=> d!2181076 (= (matchZipper!2804 lt!2494591 (_1!37240 lt!2494598)) e!4206969)))

(declare-fun b!6999079 () Bool)

(assert (=> b!6999079 (= e!4206969 (nullableZipper!2459 lt!2494591))))

(declare-fun b!6999080 () Bool)

(assert (=> b!6999080 (= e!4206969 (matchZipper!2804 (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 lt!2494598))) (tail!13297 (_1!37240 lt!2494598))))))

(assert (= (and d!2181076 c!1299032) b!6999079))

(assert (= (and d!2181076 (not c!1299032)) b!6999080))

(assert (=> d!2181076 m!7691816))

(declare-fun m!7692178 () Bool)

(assert (=> b!6999079 m!7692178))

(declare-fun m!7692180 () Bool)

(assert (=> b!6999080 m!7692180))

(assert (=> b!6999080 m!7692180))

(declare-fun m!7692182 () Bool)

(assert (=> b!6999080 m!7692182))

(assert (=> b!6999080 m!7691848))

(assert (=> b!6999080 m!7692182))

(assert (=> b!6999080 m!7691848))

(declare-fun m!7692184 () Bool)

(assert (=> b!6999080 m!7692184))

(assert (=> b!6998838 d!2181076))

(declare-fun d!2181078 () Bool)

(declare-fun c!1299033 () Bool)

(assert (=> d!2181078 (= c!1299033 (isEmpty!39238 s!7408))))

(declare-fun e!4206970 () Bool)

(assert (=> d!2181078 (= (matchZipper!2804 lt!2494580 s!7408) e!4206970)))

(declare-fun b!6999081 () Bool)

(assert (=> b!6999081 (= e!4206970 (nullableZipper!2459 lt!2494580))))

(declare-fun b!6999082 () Bool)

(assert (=> b!6999082 (= e!4206970 (matchZipper!2804 (derivationStepZipper!2744 lt!2494580 (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181078 c!1299033) b!6999081))

(assert (= (and d!2181078 (not c!1299033)) b!6999082))

(declare-fun m!7692186 () Bool)

(assert (=> d!2181078 m!7692186))

(declare-fun m!7692188 () Bool)

(assert (=> b!6999081 m!7692188))

(declare-fun m!7692190 () Bool)

(assert (=> b!6999082 m!7692190))

(assert (=> b!6999082 m!7692190))

(declare-fun m!7692192 () Bool)

(assert (=> b!6999082 m!7692192))

(declare-fun m!7692194 () Bool)

(assert (=> b!6999082 m!7692194))

(assert (=> b!6999082 m!7692192))

(assert (=> b!6999082 m!7692194))

(declare-fun m!7692196 () Bool)

(assert (=> b!6999082 m!7692196))

(assert (=> start!673236 d!2181078))

(declare-fun bs!1864050 () Bool)

(declare-fun d!2181080 () Bool)

(assert (= bs!1864050 (and d!2181080 b!6998829)))

(declare-fun lambda!404910 () Int)

(assert (=> bs!1864050 (= lambda!404910 lambda!404838)))

(assert (=> d!2181080 true))

(assert (=> d!2181080 (= (appendTo!385 z1!570 ct2!306) (map!15543 z1!570 lambda!404910))))

(declare-fun bs!1864051 () Bool)

(assert (= bs!1864051 d!2181080))

(declare-fun m!7692198 () Bool)

(assert (=> bs!1864051 m!7692198))

(assert (=> start!673236 d!2181080))

(declare-fun bs!1864052 () Bool)

(declare-fun d!2181084 () Bool)

(assert (= bs!1864052 (and d!2181084 b!6998829)))

(declare-fun lambda!404913 () Int)

(assert (=> bs!1864052 (= lambda!404913 lambda!404839)))

(assert (=> d!2181084 (= (inv!86020 ct2!306) (forall!16178 (exprs!6760 ct2!306) lambda!404913))))

(declare-fun bs!1864053 () Bool)

(assert (= bs!1864053 d!2181084))

(declare-fun m!7692200 () Bool)

(assert (=> bs!1864053 m!7692200))

(assert (=> start!673236 d!2181084))

(declare-fun d!2181086 () Bool)

(declare-fun c!1299039 () Bool)

(declare-fun e!4206978 () Bool)

(assert (=> d!2181086 (= c!1299039 e!4206978)))

(declare-fun res!2855133 () Bool)

(assert (=> d!2181086 (=> (not res!2855133) (not e!4206978))))

(assert (=> d!2181086 (= res!2855133 (is-Cons!67213 (exprs!6760 lt!2494627)))))

(declare-fun e!4206979 () (Set Context!12520))

(assert (=> d!2181086 (= (derivationStepZipperUp!1914 lt!2494627 (h!73662 s!7408)) e!4206979)))

(declare-fun b!6999093 () Bool)

(declare-fun e!4206977 () (Set Context!12520))

(assert (=> b!6999093 (= e!4206979 e!4206977)))

(declare-fun c!1299040 () Bool)

(assert (=> b!6999093 (= c!1299040 (is-Cons!67213 (exprs!6760 lt!2494627)))))

(declare-fun b!6999094 () Bool)

(assert (=> b!6999094 (= e!4206977 (as set.empty (Set Context!12520)))))

(declare-fun b!6999095 () Bool)

(assert (=> b!6999095 (= e!4206978 (nullable!7024 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun call!635459 () (Set Context!12520))

(declare-fun b!6999096 () Bool)

(assert (=> b!6999096 (= e!4206979 (set.union call!635459 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (h!73662 s!7408))))))

(declare-fun b!6999097 () Bool)

(assert (=> b!6999097 (= e!4206977 call!635459)))

(declare-fun bm!635454 () Bool)

(assert (=> bm!635454 (= call!635459 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494627)) (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (h!73662 s!7408)))))

(assert (= (and d!2181086 res!2855133) b!6999095))

(assert (= (and d!2181086 c!1299039) b!6999096))

(assert (= (and d!2181086 (not c!1299039)) b!6999093))

(assert (= (and b!6999093 c!1299040) b!6999097))

(assert (= (and b!6999093 (not c!1299040)) b!6999094))

(assert (= (or b!6999096 b!6999097) bm!635454))

(declare-fun m!7692202 () Bool)

(assert (=> b!6999095 m!7692202))

(declare-fun m!7692204 () Bool)

(assert (=> b!6999096 m!7692204))

(declare-fun m!7692206 () Bool)

(assert (=> bm!635454 m!7692206))

(assert (=> b!6998817 d!2181086))

(declare-fun b!6999098 () Bool)

(declare-fun e!4206984 () (Set Context!12520))

(declare-fun call!635464 () (Set Context!12520))

(assert (=> b!6999098 (= e!4206984 call!635464)))

(declare-fun bm!635457 () Bool)

(declare-fun c!1299042 () Bool)

(declare-fun c!1299044 () Bool)

(declare-fun call!635462 () (Set Context!12520))

(declare-fun call!635465 () List!67337)

(declare-fun c!1299045 () Bool)

(assert (=> bm!635457 (= call!635462 (derivationStepZipperDown!1982 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))) (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465)) (h!73662 s!7408)))))

(declare-fun b!6999099 () Bool)

(declare-fun e!4206981 () (Set Context!12520))

(declare-fun e!4206982 () (Set Context!12520))

(assert (=> b!6999099 (= e!4206981 e!4206982)))

(assert (=> b!6999099 (= c!1299044 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999100 () Bool)

(assert (=> b!6999100 (= e!4206982 call!635464)))

(declare-fun bm!635458 () Bool)

(declare-fun call!635463 () (Set Context!12520))

(assert (=> bm!635458 (= call!635464 call!635463)))

(declare-fun bm!635459 () Bool)

(declare-fun call!635467 () List!67337)

(assert (=> bm!635459 (= call!635465 call!635467)))

(declare-fun d!2181088 () Bool)

(declare-fun c!1299043 () Bool)

(assert (=> d!2181088 (= c!1299043 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494613))) (h!73662 s!7408))))))

(declare-fun e!4206980 () (Set Context!12520))

(assert (=> d!2181088 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) lt!2494627 (h!73662 s!7408)) e!4206980)))

(declare-fun b!6999101 () Bool)

(declare-fun call!635466 () (Set Context!12520))

(assert (=> b!6999101 (= e!4206981 (set.union call!635466 call!635463))))

(declare-fun bm!635460 () Bool)

(assert (=> bm!635460 (= call!635466 (derivationStepZipperDown!1982 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (ite c!1299042 lt!2494627 (Context!12521 call!635467)) (h!73662 s!7408)))))

(declare-fun bm!635461 () Bool)

(assert (=> bm!635461 (= call!635467 ($colon$colon!2503 (exprs!6760 lt!2494627) (ite (or c!1299045 c!1299044) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun b!6999102 () Bool)

(assert (=> b!6999102 (= e!4206980 (set.insert lt!2494627 (as set.empty (Set Context!12520))))))

(declare-fun b!6999103 () Bool)

(declare-fun e!4206985 () Bool)

(assert (=> b!6999103 (= c!1299045 e!4206985)))

(declare-fun res!2855134 () Bool)

(assert (=> b!6999103 (=> (not res!2855134) (not e!4206985))))

(assert (=> b!6999103 (= res!2855134 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun e!4206983 () (Set Context!12520))

(assert (=> b!6999103 (= e!4206983 e!4206981)))

(declare-fun b!6999104 () Bool)

(assert (=> b!6999104 (= e!4206980 e!4206983)))

(assert (=> b!6999104 (= c!1299042 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999105 () Bool)

(assert (=> b!6999105 (= e!4206983 (set.union call!635466 call!635462))))

(declare-fun b!6999106 () Bool)

(declare-fun c!1299041 () Bool)

(assert (=> b!6999106 (= c!1299041 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> b!6999106 (= e!4206982 e!4206984)))

(declare-fun b!6999107 () Bool)

(assert (=> b!6999107 (= e!4206984 (as set.empty (Set Context!12520)))))

(declare-fun bm!635462 () Bool)

(assert (=> bm!635462 (= call!635463 call!635462)))

(declare-fun b!6999108 () Bool)

(assert (=> b!6999108 (= e!4206985 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181088 c!1299043) b!6999102))

(assert (= (and d!2181088 (not c!1299043)) b!6999104))

(assert (= (and b!6999104 c!1299042) b!6999105))

(assert (= (and b!6999104 (not c!1299042)) b!6999103))

(assert (= (and b!6999103 res!2855134) b!6999108))

(assert (= (and b!6999103 c!1299045) b!6999101))

(assert (= (and b!6999103 (not c!1299045)) b!6999099))

(assert (= (and b!6999099 c!1299044) b!6999100))

(assert (= (and b!6999099 (not c!1299044)) b!6999106))

(assert (= (and b!6999106 c!1299041) b!6999098))

(assert (= (and b!6999106 (not c!1299041)) b!6999107))

(assert (= (or b!6999100 b!6999098) bm!635459))

(assert (= (or b!6999100 b!6999098) bm!635458))

(assert (= (or b!6999101 bm!635458) bm!635462))

(assert (= (or b!6999101 bm!635459) bm!635461))

(assert (= (or b!6999105 b!6999101) bm!635460))

(assert (= (or b!6999105 bm!635462) bm!635457))

(assert (=> b!6999102 m!7691824))

(declare-fun m!7692208 () Bool)

(assert (=> bm!635457 m!7692208))

(declare-fun m!7692210 () Bool)

(assert (=> bm!635461 m!7692210))

(assert (=> b!6999108 m!7692132))

(declare-fun m!7692212 () Bool)

(assert (=> bm!635460 m!7692212))

(assert (=> b!6998817 d!2181088))

(declare-fun d!2181090 () Bool)

(declare-fun e!4206988 () Bool)

(assert (=> d!2181090 e!4206988))

(declare-fun res!2855137 () Bool)

(assert (=> d!2181090 (=> (not res!2855137) (not e!4206988))))

(declare-fun lt!2494849 () List!67339)

(declare-fun noDuplicate!2541 (List!67339) Bool)

(assert (=> d!2181090 (= res!2855137 (noDuplicate!2541 lt!2494849))))

(declare-fun choose!52454 ((Set Context!12520)) List!67339)

(assert (=> d!2181090 (= lt!2494849 (choose!52454 lt!2494580))))

(assert (=> d!2181090 (= (toList!10624 lt!2494580) lt!2494849)))

(declare-fun b!6999111 () Bool)

(declare-fun content!13307 (List!67339) (Set Context!12520))

(assert (=> b!6999111 (= e!4206988 (= (content!13307 lt!2494849) lt!2494580))))

(assert (= (and d!2181090 res!2855137) b!6999111))

(declare-fun m!7692214 () Bool)

(assert (=> d!2181090 m!7692214))

(declare-fun m!7692216 () Bool)

(assert (=> d!2181090 m!7692216))

(declare-fun m!7692218 () Bool)

(assert (=> b!6999111 m!7692218))

(assert (=> b!6998816 d!2181090))

(declare-fun bs!1864054 () Bool)

(declare-fun d!2181092 () Bool)

(assert (= bs!1864054 (and d!2181092 b!6998816)))

(declare-fun lambda!404916 () Int)

(assert (=> bs!1864054 (= lambda!404916 lambda!404837)))

(assert (=> d!2181092 true))

(assert (=> d!2181092 (exists!3077 lt!2494638 lambda!404916)))

(declare-fun lt!2494852 () Unit!161186)

(declare-fun choose!52455 (List!67339 List!67338) Unit!161186)

(assert (=> d!2181092 (= lt!2494852 (choose!52455 lt!2494638 s!7408))))

(assert (=> d!2181092 (matchZipper!2804 (content!13307 lt!2494638) s!7408)))

(assert (=> d!2181092 (= (lemmaZipperMatchesExistsMatchingContext!233 lt!2494638 s!7408) lt!2494852)))

(declare-fun bs!1864055 () Bool)

(assert (= bs!1864055 d!2181092))

(declare-fun m!7692226 () Bool)

(assert (=> bs!1864055 m!7692226))

(declare-fun m!7692228 () Bool)

(assert (=> bs!1864055 m!7692228))

(declare-fun m!7692230 () Bool)

(assert (=> bs!1864055 m!7692230))

(assert (=> bs!1864055 m!7692230))

(declare-fun m!7692232 () Bool)

(assert (=> bs!1864055 m!7692232))

(assert (=> b!6998816 d!2181092))

(declare-fun d!2181096 () Bool)

(declare-fun e!4206994 () Bool)

(assert (=> d!2181096 e!4206994))

(declare-fun res!2855141 () Bool)

(assert (=> d!2181096 (=> (not res!2855141) (not e!4206994))))

(declare-fun lt!2494855 () Context!12520)

(declare-fun dynLambda!26989 (Int Context!12520) Bool)

(assert (=> d!2181096 (= res!2855141 (dynLambda!26989 lambda!404837 lt!2494855))))

(declare-fun getWitness!1183 (List!67339 Int) Context!12520)

(assert (=> d!2181096 (= lt!2494855 (getWitness!1183 (toList!10624 lt!2494580) lambda!404837))))

(declare-fun exists!3079 ((Set Context!12520) Int) Bool)

(assert (=> d!2181096 (exists!3079 lt!2494580 lambda!404837)))

(assert (=> d!2181096 (= (getWitness!1181 lt!2494580 lambda!404837) lt!2494855)))

(declare-fun b!6999119 () Bool)

(assert (=> b!6999119 (= e!4206994 (set.member lt!2494855 lt!2494580))))

(assert (= (and d!2181096 res!2855141) b!6999119))

(declare-fun b_lambda!263477 () Bool)

(assert (=> (not b_lambda!263477) (not d!2181096)))

(declare-fun m!7692234 () Bool)

(assert (=> d!2181096 m!7692234))

(assert (=> d!2181096 m!7691774))

(assert (=> d!2181096 m!7691774))

(declare-fun m!7692236 () Bool)

(assert (=> d!2181096 m!7692236))

(declare-fun m!7692238 () Bool)

(assert (=> d!2181096 m!7692238))

(declare-fun m!7692240 () Bool)

(assert (=> b!6999119 m!7692240))

(assert (=> b!6998816 d!2181096))

(declare-fun d!2181098 () Bool)

(declare-fun c!1299050 () Bool)

(assert (=> d!2181098 (= c!1299050 (isEmpty!39238 s!7408))))

(declare-fun e!4206995 () Bool)

(assert (=> d!2181098 (= (matchZipper!2804 lt!2494617 s!7408) e!4206995)))

(declare-fun b!6999120 () Bool)

(assert (=> b!6999120 (= e!4206995 (nullableZipper!2459 lt!2494617))))

(declare-fun b!6999121 () Bool)

(assert (=> b!6999121 (= e!4206995 (matchZipper!2804 (derivationStepZipper!2744 lt!2494617 (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181098 c!1299050) b!6999120))

(assert (= (and d!2181098 (not c!1299050)) b!6999121))

(assert (=> d!2181098 m!7692186))

(declare-fun m!7692242 () Bool)

(assert (=> b!6999120 m!7692242))

(assert (=> b!6999121 m!7692190))

(assert (=> b!6999121 m!7692190))

(declare-fun m!7692244 () Bool)

(assert (=> b!6999121 m!7692244))

(assert (=> b!6999121 m!7692194))

(assert (=> b!6999121 m!7692244))

(assert (=> b!6999121 m!7692194))

(declare-fun m!7692246 () Bool)

(assert (=> b!6999121 m!7692246))

(assert (=> b!6998816 d!2181098))

(declare-fun bs!1864056 () Bool)

(declare-fun d!2181100 () Bool)

(assert (= bs!1864056 (and d!2181100 b!6998816)))

(declare-fun lambda!404919 () Int)

(assert (=> bs!1864056 (not (= lambda!404919 lambda!404837))))

(declare-fun bs!1864057 () Bool)

(assert (= bs!1864057 (and d!2181100 d!2181092)))

(assert (=> bs!1864057 (not (= lambda!404919 lambda!404916))))

(assert (=> d!2181100 true))

(declare-fun order!27969 () Int)

(declare-fun dynLambda!26990 (Int Int) Int)

(assert (=> d!2181100 (< (dynLambda!26990 order!27969 lambda!404837) (dynLambda!26990 order!27969 lambda!404919))))

(declare-fun forall!16179 (List!67339 Int) Bool)

(assert (=> d!2181100 (= (exists!3077 lt!2494638 lambda!404837) (not (forall!16179 lt!2494638 lambda!404919)))))

(declare-fun bs!1864058 () Bool)

(assert (= bs!1864058 d!2181100))

(declare-fun m!7692248 () Bool)

(assert (=> bs!1864058 m!7692248))

(assert (=> b!6998816 d!2181100))

(declare-fun d!2181102 () Bool)

(declare-fun lt!2494858 () Int)

(assert (=> d!2181102 (>= lt!2494858 0)))

(declare-fun e!4207010 () Int)

(assert (=> d!2181102 (= lt!2494858 e!4207010)))

(declare-fun c!1299063 () Bool)

(assert (=> d!2181102 (= c!1299063 (is-Cons!67215 lt!2494620))))

(assert (=> d!2181102 (= (zipperDepthTotal!485 lt!2494620) lt!2494858)))

(declare-fun b!6999150 () Bool)

(assert (=> b!6999150 (= e!4207010 (+ (contextDepthTotal!457 (h!73663 lt!2494620)) (zipperDepthTotal!485 (t!381090 lt!2494620))))))

(declare-fun b!6999151 () Bool)

(assert (=> b!6999151 (= e!4207010 0)))

(assert (= (and d!2181102 c!1299063) b!6999150))

(assert (= (and d!2181102 (not c!1299063)) b!6999151))

(declare-fun m!7692250 () Bool)

(assert (=> b!6999150 m!7692250))

(declare-fun m!7692252 () Bool)

(assert (=> b!6999150 m!7692252))

(assert (=> b!6998836 d!2181102))

(declare-fun d!2181104 () Bool)

(assert (=> d!2181104 (= (flatMap!2250 lt!2494591 lambda!404840) (choose!52452 lt!2494591 lambda!404840))))

(declare-fun bs!1864059 () Bool)

(assert (= bs!1864059 d!2181104))

(declare-fun m!7692254 () Bool)

(assert (=> bs!1864059 m!7692254))

(assert (=> b!6998836 d!2181104))

(declare-fun d!2181106 () Bool)

(declare-fun e!4207011 () Bool)

(assert (=> d!2181106 e!4207011))

(declare-fun res!2855144 () Bool)

(assert (=> d!2181106 (=> (not res!2855144) (not e!4207011))))

(declare-fun lt!2494859 () List!67339)

(assert (=> d!2181106 (= res!2855144 (noDuplicate!2541 lt!2494859))))

(assert (=> d!2181106 (= lt!2494859 (choose!52454 z1!570))))

(assert (=> d!2181106 (= (toList!10624 z1!570) lt!2494859)))

(declare-fun b!6999152 () Bool)

(assert (=> b!6999152 (= e!4207011 (= (content!13307 lt!2494859) z1!570))))

(assert (= (and d!2181106 res!2855144) b!6999152))

(declare-fun m!7692256 () Bool)

(assert (=> d!2181106 m!7692256))

(declare-fun m!7692258 () Bool)

(assert (=> d!2181106 m!7692258))

(declare-fun m!7692260 () Bool)

(assert (=> b!6999152 m!7692260))

(assert (=> b!6998836 d!2181106))

(declare-fun d!2181108 () Bool)

(assert (=> d!2181108 (= (flatMap!2250 lt!2494591 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494627))))

(declare-fun lt!2494860 () Unit!161186)

(assert (=> d!2181108 (= lt!2494860 (choose!52451 lt!2494591 lt!2494627 lambda!404840))))

(assert (=> d!2181108 (= lt!2494591 (set.insert lt!2494627 (as set.empty (Set Context!12520))))))

(assert (=> d!2181108 (= (lemmaFlatMapOnSingletonSet!1765 lt!2494591 lt!2494627 lambda!404840) lt!2494860)))

(declare-fun b_lambda!263479 () Bool)

(assert (=> (not b_lambda!263479) (not d!2181108)))

(declare-fun bs!1864060 () Bool)

(assert (= bs!1864060 d!2181108))

(assert (=> bs!1864060 m!7691832))

(declare-fun m!7692262 () Bool)

(assert (=> bs!1864060 m!7692262))

(declare-fun m!7692264 () Bool)

(assert (=> bs!1864060 m!7692264))

(assert (=> bs!1864060 m!7691824))

(assert (=> b!6998836 d!2181108))

(declare-fun d!2181110 () Bool)

(declare-fun choose!52456 ((Set Context!12520) Int) (Set Context!12520))

(assert (=> d!2181110 (= (map!15543 lt!2494591 lambda!404838) (choose!52456 lt!2494591 lambda!404838))))

(declare-fun bs!1864061 () Bool)

(assert (= bs!1864061 d!2181110))

(declare-fun m!7692266 () Bool)

(assert (=> bs!1864061 m!7692266))

(assert (=> b!6998836 d!2181110))

(assert (=> b!6998836 d!2181058))

(declare-fun d!2181112 () Bool)

(declare-fun lt!2494863 () Int)

(assert (=> d!2181112 (>= lt!2494863 0)))

(declare-fun e!4207014 () Int)

(assert (=> d!2181112 (= lt!2494863 e!4207014)))

(declare-fun c!1299067 () Bool)

(assert (=> d!2181112 (= c!1299067 (is-Cons!67213 (exprs!6760 lt!2494613)))))

(assert (=> d!2181112 (= (contextDepthTotal!457 lt!2494613) lt!2494863)))

(declare-fun b!6999157 () Bool)

(declare-fun regexDepthTotal!279 (Regex!17264) Int)

(assert (=> b!6999157 (= e!4207014 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 lt!2494613))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999158 () Bool)

(assert (=> b!6999158 (= e!4207014 1)))

(assert (= (and d!2181112 c!1299067) b!6999157))

(assert (= (and d!2181112 (not c!1299067)) b!6999158))

(declare-fun m!7692268 () Bool)

(assert (=> b!6999157 m!7692268))

(declare-fun m!7692270 () Bool)

(assert (=> b!6999157 m!7692270))

(assert (=> b!6998836 d!2181112))

(assert (=> b!6998836 d!2181086))

(declare-fun d!2181114 () Bool)

(declare-fun lt!2494864 () Int)

(assert (=> d!2181114 (>= lt!2494864 0)))

(declare-fun e!4207015 () Int)

(assert (=> d!2181114 (= lt!2494864 e!4207015)))

(declare-fun c!1299068 () Bool)

(assert (=> d!2181114 (= c!1299068 (is-Cons!67213 (exprs!6760 lt!2494627)))))

(assert (=> d!2181114 (= (contextDepthTotal!457 lt!2494627) lt!2494864)))

(declare-fun b!6999159 () Bool)

(assert (=> b!6999159 (= e!4207015 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 lt!2494627))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 lt!2494627))))))))

(declare-fun b!6999160 () Bool)

(assert (=> b!6999160 (= e!4207015 1)))

(assert (= (and d!2181114 c!1299068) b!6999159))

(assert (= (and d!2181114 (not c!1299068)) b!6999160))

(declare-fun m!7692272 () Bool)

(assert (=> b!6999159 m!7692272))

(declare-fun m!7692274 () Bool)

(assert (=> b!6999159 m!7692274))

(assert (=> b!6998836 d!2181114))

(declare-fun d!2181116 () Bool)

(assert (=> d!2181116 (<= (contextDepthTotal!457 lt!2494613) (zipperDepthTotal!485 lt!2494620))))

(declare-fun lt!2494867 () Unit!161186)

(declare-fun choose!52457 (List!67339 Context!12520) Unit!161186)

(assert (=> d!2181116 (= lt!2494867 (choose!52457 lt!2494620 lt!2494613))))

(declare-fun contains!20421 (List!67339 Context!12520) Bool)

(assert (=> d!2181116 (contains!20421 lt!2494620 lt!2494613)))

(assert (=> d!2181116 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!25 lt!2494620 lt!2494613) lt!2494867)))

(declare-fun bs!1864062 () Bool)

(assert (= bs!1864062 d!2181116))

(assert (=> bs!1864062 m!7691838))

(assert (=> bs!1864062 m!7691820))

(declare-fun m!7692276 () Bool)

(assert (=> bs!1864062 m!7692276))

(declare-fun m!7692278 () Bool)

(assert (=> bs!1864062 m!7692278))

(assert (=> b!6998836 d!2181116))

(declare-fun d!2181118 () Bool)

(declare-fun dynLambda!26991 (Int Context!12520) Context!12520)

(assert (=> d!2181118 (= (map!15543 lt!2494591 lambda!404838) (set.insert (dynLambda!26991 lambda!404838 lt!2494627) (as set.empty (Set Context!12520))))))

(declare-fun lt!2494870 () Unit!161186)

(declare-fun choose!52458 ((Set Context!12520) Context!12520 Int) Unit!161186)

(assert (=> d!2181118 (= lt!2494870 (choose!52458 lt!2494591 lt!2494627 lambda!404838))))

(assert (=> d!2181118 (= lt!2494591 (set.insert lt!2494627 (as set.empty (Set Context!12520))))))

(assert (=> d!2181118 (= (lemmaMapOnSingletonSet!329 lt!2494591 lt!2494627 lambda!404838) lt!2494870)))

(declare-fun b_lambda!263481 () Bool)

(assert (=> (not b_lambda!263481) (not d!2181118)))

(declare-fun bs!1864063 () Bool)

(assert (= bs!1864063 d!2181118))

(declare-fun m!7692280 () Bool)

(assert (=> bs!1864063 m!7692280))

(assert (=> bs!1864063 m!7691824))

(declare-fun m!7692282 () Bool)

(assert (=> bs!1864063 m!7692282))

(declare-fun m!7692284 () Bool)

(assert (=> bs!1864063 m!7692284))

(assert (=> bs!1864063 m!7691828))

(assert (=> bs!1864063 m!7692282))

(assert (=> b!6998836 d!2181118))

(assert (=> b!6998836 d!2181054))

(declare-fun bs!1864064 () Bool)

(declare-fun d!2181120 () Bool)

(assert (= bs!1864064 (and d!2181120 b!6998841)))

(declare-fun lambda!404920 () Int)

(assert (=> bs!1864064 (= lambda!404920 lambda!404840)))

(declare-fun bs!1864065 () Bool)

(assert (= bs!1864065 (and d!2181120 d!2181040)))

(assert (=> bs!1864065 (= lambda!404920 lambda!404905)))

(assert (=> d!2181120 true))

(assert (=> d!2181120 (= (derivationStepZipper!2744 lt!2494623 (h!73662 s!7408)) (flatMap!2250 lt!2494623 lambda!404920))))

(declare-fun bs!1864066 () Bool)

(assert (= bs!1864066 d!2181120))

(declare-fun m!7692286 () Bool)

(assert (=> bs!1864066 m!7692286))

(assert (=> b!6998835 d!2181120))

(declare-fun d!2181122 () Bool)

(declare-fun c!1299070 () Bool)

(declare-fun e!4207017 () Bool)

(assert (=> d!2181122 (= c!1299070 e!4207017)))

(declare-fun res!2855145 () Bool)

(assert (=> d!2181122 (=> (not res!2855145) (not e!4207017))))

(assert (=> d!2181122 (= res!2855145 (is-Cons!67213 (exprs!6760 lt!2494613)))))

(declare-fun e!4207018 () (Set Context!12520))

(assert (=> d!2181122 (= (derivationStepZipperUp!1914 lt!2494613 (h!73662 s!7408)) e!4207018)))

(declare-fun b!6999161 () Bool)

(declare-fun e!4207016 () (Set Context!12520))

(assert (=> b!6999161 (= e!4207018 e!4207016)))

(declare-fun c!1299071 () Bool)

(assert (=> b!6999161 (= c!1299071 (is-Cons!67213 (exprs!6760 lt!2494613)))))

(declare-fun b!6999162 () Bool)

(assert (=> b!6999162 (= e!4207016 (as set.empty (Set Context!12520)))))

(declare-fun b!6999163 () Bool)

(assert (=> b!6999163 (= e!4207017 (nullable!7024 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun call!635481 () (Set Context!12520))

(declare-fun b!6999164 () Bool)

(assert (=> b!6999164 (= e!4207018 (set.union call!635481 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (h!73662 s!7408))))))

(declare-fun b!6999165 () Bool)

(assert (=> b!6999165 (= e!4207016 call!635481)))

(declare-fun bm!635476 () Bool)

(assert (=> bm!635476 (= call!635481 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (h!73662 s!7408)))))

(assert (= (and d!2181122 res!2855145) b!6999163))

(assert (= (and d!2181122 c!1299070) b!6999164))

(assert (= (and d!2181122 (not c!1299070)) b!6999161))

(assert (= (and b!6999161 c!1299071) b!6999165))

(assert (= (and b!6999161 (not c!1299071)) b!6999162))

(assert (= (or b!6999164 b!6999165) bm!635476))

(assert (=> b!6999163 m!7691786))

(declare-fun m!7692288 () Bool)

(assert (=> b!6999164 m!7692288))

(declare-fun m!7692290 () Bool)

(assert (=> bm!635476 m!7692290))

(assert (=> b!6998835 d!2181122))

(declare-fun d!2181124 () Bool)

(assert (=> d!2181124 (= (flatMap!2250 lt!2494623 lambda!404840) (choose!52452 lt!2494623 lambda!404840))))

(declare-fun bs!1864067 () Bool)

(assert (= bs!1864067 d!2181124))

(declare-fun m!7692292 () Bool)

(assert (=> bs!1864067 m!7692292))

(assert (=> b!6998835 d!2181124))

(declare-fun d!2181126 () Bool)

(assert (=> d!2181126 (= (flatMap!2250 lt!2494623 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494613))))

(declare-fun lt!2494871 () Unit!161186)

(assert (=> d!2181126 (= lt!2494871 (choose!52451 lt!2494623 lt!2494613 lambda!404840))))

(assert (=> d!2181126 (= lt!2494623 (set.insert lt!2494613 (as set.empty (Set Context!12520))))))

(assert (=> d!2181126 (= (lemmaFlatMapOnSingletonSet!1765 lt!2494623 lt!2494613 lambda!404840) lt!2494871)))

(declare-fun b_lambda!263483 () Bool)

(assert (=> (not b_lambda!263483) (not d!2181126)))

(declare-fun bs!1864068 () Bool)

(assert (= bs!1864068 d!2181126))

(assert (=> bs!1864068 m!7691860))

(declare-fun m!7692294 () Bool)

(assert (=> bs!1864068 m!7692294))

(declare-fun m!7692296 () Bool)

(assert (=> bs!1864068 m!7692296))

(assert (=> bs!1864068 m!7691866))

(assert (=> b!6998835 d!2181126))

(declare-fun d!2181128 () Bool)

(assert (=> d!2181128 (= (flatMap!2250 lt!2494582 lambda!404840) (choose!52452 lt!2494582 lambda!404840))))

(declare-fun bs!1864069 () Bool)

(assert (= bs!1864069 d!2181128))

(declare-fun m!7692298 () Bool)

(assert (=> bs!1864069 m!7692298))

(assert (=> b!6998814 d!2181128))

(assert (=> b!6998814 d!2181058))

(declare-fun bs!1864070 () Bool)

(declare-fun d!2181130 () Bool)

(assert (= bs!1864070 (and d!2181130 b!6998841)))

(declare-fun lambda!404921 () Int)

(assert (=> bs!1864070 (= lambda!404921 lambda!404840)))

(declare-fun bs!1864071 () Bool)

(assert (= bs!1864071 (and d!2181130 d!2181040)))

(assert (=> bs!1864071 (= lambda!404921 lambda!404905)))

(declare-fun bs!1864072 () Bool)

(assert (= bs!1864072 (and d!2181130 d!2181120)))

(assert (=> bs!1864072 (= lambda!404921 lambda!404920)))

(assert (=> d!2181130 true))

(assert (=> d!2181130 (= (derivationStepZipper!2744 lt!2494582 (h!73662 s!7408)) (flatMap!2250 lt!2494582 lambda!404921))))

(declare-fun bs!1864073 () Bool)

(assert (= bs!1864073 d!2181130))

(declare-fun m!7692300 () Bool)

(assert (=> bs!1864073 m!7692300))

(assert (=> b!6998814 d!2181130))

(declare-fun d!2181132 () Bool)

(assert (=> d!2181132 (= (flatMap!2250 lt!2494582 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494587))))

(declare-fun lt!2494872 () Unit!161186)

(assert (=> d!2181132 (= lt!2494872 (choose!52451 lt!2494582 lt!2494587 lambda!404840))))

(assert (=> d!2181132 (= lt!2494582 (set.insert lt!2494587 (as set.empty (Set Context!12520))))))

(assert (=> d!2181132 (= (lemmaFlatMapOnSingletonSet!1765 lt!2494582 lt!2494587 lambda!404840) lt!2494872)))

(declare-fun b_lambda!263485 () Bool)

(assert (=> (not b_lambda!263485) (not d!2181132)))

(declare-fun bs!1864074 () Bool)

(assert (= bs!1864074 d!2181132))

(assert (=> bs!1864074 m!7691892))

(declare-fun m!7692302 () Bool)

(assert (=> bs!1864074 m!7692302))

(declare-fun m!7692304 () Bool)

(assert (=> bs!1864074 m!7692304))

(assert (=> bs!1864074 m!7691896))

(assert (=> b!6998814 d!2181132))

(assert (=> b!6998814 d!2181056))

(declare-fun d!2181134 () Bool)

(declare-fun c!1299072 () Bool)

(assert (=> d!2181134 (= c!1299072 (isEmpty!39238 (t!381089 s!7408)))))

(declare-fun e!4207019 () Bool)

(assert (=> d!2181134 (= (matchZipper!2804 lt!2494611 (t!381089 s!7408)) e!4207019)))

(declare-fun b!6999166 () Bool)

(assert (=> b!6999166 (= e!4207019 (nullableZipper!2459 lt!2494611))))

(declare-fun b!6999167 () Bool)

(assert (=> b!6999167 (= e!4207019 (matchZipper!2804 (derivationStepZipper!2744 lt!2494611 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))))))

(assert (= (and d!2181134 c!1299072) b!6999166))

(assert (= (and d!2181134 (not c!1299072)) b!6999167))

(declare-fun m!7692306 () Bool)

(assert (=> d!2181134 m!7692306))

(declare-fun m!7692308 () Bool)

(assert (=> b!6999166 m!7692308))

(declare-fun m!7692310 () Bool)

(assert (=> b!6999167 m!7692310))

(assert (=> b!6999167 m!7692310))

(declare-fun m!7692312 () Bool)

(assert (=> b!6999167 m!7692312))

(declare-fun m!7692314 () Bool)

(assert (=> b!6999167 m!7692314))

(assert (=> b!6999167 m!7692312))

(assert (=> b!6999167 m!7692314))

(declare-fun m!7692316 () Bool)

(assert (=> b!6999167 m!7692316))

(assert (=> b!6998813 d!2181134))

(assert (=> b!6998813 d!2181058))

(assert (=> b!6998833 d!2181134))

(declare-fun d!2181136 () Bool)

(declare-fun lt!2494873 () Int)

(assert (=> d!2181136 (>= lt!2494873 0)))

(declare-fun e!4207026 () Int)

(assert (=> d!2181136 (= lt!2494873 e!4207026)))

(declare-fun c!1299078 () Bool)

(assert (=> d!2181136 (= c!1299078 (is-Cons!67215 (Cons!67215 lt!2494627 Nil!67215)))))

(assert (=> d!2181136 (= (zipperDepthTotal!485 (Cons!67215 lt!2494627 Nil!67215)) lt!2494873)))

(declare-fun b!6999179 () Bool)

(assert (=> b!6999179 (= e!4207026 (+ (contextDepthTotal!457 (h!73663 (Cons!67215 lt!2494627 Nil!67215))) (zipperDepthTotal!485 (t!381090 (Cons!67215 lt!2494627 Nil!67215)))))))

(declare-fun b!6999180 () Bool)

(assert (=> b!6999180 (= e!4207026 0)))

(assert (= (and d!2181136 c!1299078) b!6999179))

(assert (= (and d!2181136 (not c!1299078)) b!6999180))

(declare-fun m!7692318 () Bool)

(assert (=> b!6999179 m!7692318))

(declare-fun m!7692320 () Bool)

(assert (=> b!6999179 m!7692320))

(assert (=> b!6998832 d!2181136))

(declare-fun d!2181138 () Bool)

(declare-fun c!1299079 () Bool)

(assert (=> d!2181138 (= c!1299079 (isEmpty!39238 (_2!37240 lt!2494598)))))

(declare-fun e!4207027 () Bool)

(assert (=> d!2181138 (= (matchZipper!2804 lt!2494633 (_2!37240 lt!2494598)) e!4207027)))

(declare-fun b!6999181 () Bool)

(assert (=> b!6999181 (= e!4207027 (nullableZipper!2459 lt!2494633))))

(declare-fun b!6999182 () Bool)

(assert (=> b!6999182 (= e!4207027 (matchZipper!2804 (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 lt!2494598))) (tail!13297 (_2!37240 lt!2494598))))))

(assert (= (and d!2181138 c!1299079) b!6999181))

(assert (= (and d!2181138 (not c!1299079)) b!6999182))

(declare-fun m!7692322 () Bool)

(assert (=> d!2181138 m!7692322))

(declare-fun m!7692324 () Bool)

(assert (=> b!6999181 m!7692324))

(declare-fun m!7692326 () Bool)

(assert (=> b!6999182 m!7692326))

(assert (=> b!6999182 m!7692326))

(declare-fun m!7692328 () Bool)

(assert (=> b!6999182 m!7692328))

(declare-fun m!7692330 () Bool)

(assert (=> b!6999182 m!7692330))

(assert (=> b!6999182 m!7692328))

(assert (=> b!6999182 m!7692330))

(declare-fun m!7692332 () Bool)

(assert (=> b!6999182 m!7692332))

(assert (=> b!6998831 d!2181138))

(declare-fun b!6999185 () Bool)

(declare-fun res!2855148 () Bool)

(declare-fun e!4207029 () Bool)

(assert (=> b!6999185 (=> (not res!2855148) (not e!4207029))))

(declare-fun lt!2494874 () List!67337)

(assert (=> b!6999185 (= res!2855148 (= (size!40933 lt!2494874) (+ (size!40933 (exprs!6760 lt!2494613)) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999184 () Bool)

(declare-fun e!4207028 () List!67337)

(assert (=> b!6999184 (= e!4207028 (Cons!67213 (h!73661 (exprs!6760 lt!2494613)) (++!15230 (t!381088 (exprs!6760 lt!2494613)) (exprs!6760 ct2!306))))))

(declare-fun d!2181140 () Bool)

(assert (=> d!2181140 e!4207029))

(declare-fun res!2855147 () Bool)

(assert (=> d!2181140 (=> (not res!2855147) (not e!4207029))))

(assert (=> d!2181140 (= res!2855147 (= (content!13306 lt!2494874) (set.union (content!13306 (exprs!6760 lt!2494613)) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181140 (= lt!2494874 e!4207028)))

(declare-fun c!1299080 () Bool)

(assert (=> d!2181140 (= c!1299080 (is-Nil!67213 (exprs!6760 lt!2494613)))))

(assert (=> d!2181140 (= (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)) lt!2494874)))

(declare-fun b!6999183 () Bool)

(assert (=> b!6999183 (= e!4207028 (exprs!6760 ct2!306))))

(declare-fun b!6999186 () Bool)

(assert (=> b!6999186 (= e!4207029 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494874 (exprs!6760 lt!2494613))))))

(assert (= (and d!2181140 c!1299080) b!6999183))

(assert (= (and d!2181140 (not c!1299080)) b!6999184))

(assert (= (and d!2181140 res!2855147) b!6999185))

(assert (= (and b!6999185 res!2855148) b!6999186))

(declare-fun m!7692334 () Bool)

(assert (=> b!6999185 m!7692334))

(declare-fun m!7692336 () Bool)

(assert (=> b!6999185 m!7692336))

(assert (=> b!6999185 m!7692106))

(declare-fun m!7692338 () Bool)

(assert (=> b!6999184 m!7692338))

(declare-fun m!7692340 () Bool)

(assert (=> d!2181140 m!7692340))

(declare-fun m!7692342 () Bool)

(assert (=> d!2181140 m!7692342))

(assert (=> d!2181140 m!7692114))

(assert (=> b!6998829 d!2181140))

(assert (=> b!6998829 d!2181042))

(declare-fun d!2181142 () Bool)

(declare-fun e!4207032 () Bool)

(assert (=> d!2181142 e!4207032))

(declare-fun res!2855151 () Bool)

(assert (=> d!2181142 (=> (not res!2855151) (not e!4207032))))

(declare-fun lt!2494877 () Context!12520)

(assert (=> d!2181142 (= res!2855151 (= lt!2494612 (dynLambda!26991 lambda!404838 lt!2494877)))))

(declare-fun choose!52461 ((Set Context!12520) Int Context!12520) Context!12520)

(assert (=> d!2181142 (= lt!2494877 (choose!52461 z1!570 lambda!404838 lt!2494612))))

(assert (=> d!2181142 (set.member lt!2494612 (map!15543 z1!570 lambda!404838))))

(assert (=> d!2181142 (= (mapPost2!119 z1!570 lambda!404838 lt!2494612) lt!2494877)))

(declare-fun b!6999190 () Bool)

(assert (=> b!6999190 (= e!4207032 (set.member lt!2494877 z1!570))))

(assert (= (and d!2181142 res!2855151) b!6999190))

(declare-fun b_lambda!263487 () Bool)

(assert (=> (not b_lambda!263487) (not d!2181142)))

(declare-fun m!7692352 () Bool)

(assert (=> d!2181142 m!7692352))

(declare-fun m!7692354 () Bool)

(assert (=> d!2181142 m!7692354))

(declare-fun m!7692356 () Bool)

(assert (=> d!2181142 m!7692356))

(declare-fun m!7692358 () Bool)

(assert (=> d!2181142 m!7692358))

(declare-fun m!7692360 () Bool)

(assert (=> b!6999190 m!7692360))

(assert (=> b!6998829 d!2181142))

(declare-fun d!2181146 () Bool)

(declare-fun c!1299081 () Bool)

(assert (=> d!2181146 (= c!1299081 (isEmpty!39238 s!7408))))

(declare-fun e!4207033 () Bool)

(assert (=> d!2181146 (= (matchZipper!2804 lt!2494582 s!7408) e!4207033)))

(declare-fun b!6999191 () Bool)

(assert (=> b!6999191 (= e!4207033 (nullableZipper!2459 lt!2494582))))

(declare-fun b!6999192 () Bool)

(assert (=> b!6999192 (= e!4207033 (matchZipper!2804 (derivationStepZipper!2744 lt!2494582 (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181146 c!1299081) b!6999191))

(assert (= (and d!2181146 (not c!1299081)) b!6999192))

(assert (=> d!2181146 m!7692186))

(declare-fun m!7692362 () Bool)

(assert (=> b!6999191 m!7692362))

(assert (=> b!6999192 m!7692190))

(assert (=> b!6999192 m!7692190))

(declare-fun m!7692364 () Bool)

(assert (=> b!6999192 m!7692364))

(assert (=> b!6999192 m!7692194))

(assert (=> b!6999192 m!7692364))

(assert (=> b!6999192 m!7692194))

(declare-fun m!7692366 () Bool)

(assert (=> b!6999192 m!7692366))

(assert (=> b!6998828 d!2181146))

(assert (=> b!6998828 d!2181058))

(assert (=> b!6998827 d!2181042))

(declare-fun b!6999207 () Bool)

(declare-fun e!4207042 () List!67338)

(assert (=> b!6999207 (= e!4207042 (_2!37240 lt!2494598))))

(declare-fun b!6999208 () Bool)

(assert (=> b!6999208 (= e!4207042 (Cons!67214 (h!73662 (_1!37240 lt!2494598)) (++!15229 (t!381089 (_1!37240 lt!2494598)) (_2!37240 lt!2494598))))))

(declare-fun b!6999209 () Bool)

(declare-fun res!2855156 () Bool)

(declare-fun e!4207041 () Bool)

(assert (=> b!6999209 (=> (not res!2855156) (not e!4207041))))

(declare-fun lt!2494880 () List!67338)

(declare-fun size!40935 (List!67338) Int)

(assert (=> b!6999209 (= res!2855156 (= (size!40935 lt!2494880) (+ (size!40935 (_1!37240 lt!2494598)) (size!40935 (_2!37240 lt!2494598)))))))

(declare-fun b!6999210 () Bool)

(assert (=> b!6999210 (= e!4207041 (or (not (= (_2!37240 lt!2494598) Nil!67214)) (= lt!2494880 (_1!37240 lt!2494598))))))

(declare-fun d!2181148 () Bool)

(assert (=> d!2181148 e!4207041))

(declare-fun res!2855157 () Bool)

(assert (=> d!2181148 (=> (not res!2855157) (not e!4207041))))

(declare-fun content!13309 (List!67338) (Set C!34798))

(assert (=> d!2181148 (= res!2855157 (= (content!13309 lt!2494880) (set.union (content!13309 (_1!37240 lt!2494598)) (content!13309 (_2!37240 lt!2494598)))))))

(assert (=> d!2181148 (= lt!2494880 e!4207042)))

(declare-fun c!1299087 () Bool)

(assert (=> d!2181148 (= c!1299087 (is-Nil!67214 (_1!37240 lt!2494598)))))

(assert (=> d!2181148 (= (++!15229 (_1!37240 lt!2494598) (_2!37240 lt!2494598)) lt!2494880)))

(assert (= (and d!2181148 c!1299087) b!6999207))

(assert (= (and d!2181148 (not c!1299087)) b!6999208))

(assert (= (and d!2181148 res!2855157) b!6999209))

(assert (= (and b!6999209 res!2855156) b!6999210))

(declare-fun m!7692378 () Bool)

(assert (=> b!6999208 m!7692378))

(declare-fun m!7692380 () Bool)

(assert (=> b!6999209 m!7692380))

(declare-fun m!7692382 () Bool)

(assert (=> b!6999209 m!7692382))

(declare-fun m!7692384 () Bool)

(assert (=> b!6999209 m!7692384))

(declare-fun m!7692386 () Bool)

(assert (=> d!2181148 m!7692386))

(declare-fun m!7692390 () Bool)

(assert (=> d!2181148 m!7692390))

(declare-fun m!7692392 () Bool)

(assert (=> d!2181148 m!7692392))

(assert (=> b!6998824 d!2181148))

(assert (=> b!6998842 d!2181134))

(assert (=> b!6998842 d!2181058))

(declare-fun d!2181152 () Bool)

(declare-fun c!1299089 () Bool)

(assert (=> d!2181152 (= c!1299089 (isEmpty!39238 (t!381089 s!7408)))))

(declare-fun e!4207044 () Bool)

(assert (=> d!2181152 (= (matchZipper!2804 lt!2494614 (t!381089 s!7408)) e!4207044)))

(declare-fun b!6999213 () Bool)

(assert (=> b!6999213 (= e!4207044 (nullableZipper!2459 lt!2494614))))

(declare-fun b!6999214 () Bool)

(assert (=> b!6999214 (= e!4207044 (matchZipper!2804 (derivationStepZipper!2744 lt!2494614 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))))))

(assert (= (and d!2181152 c!1299089) b!6999213))

(assert (= (and d!2181152 (not c!1299089)) b!6999214))

(assert (=> d!2181152 m!7692306))

(declare-fun m!7692394 () Bool)

(assert (=> b!6999213 m!7692394))

(assert (=> b!6999214 m!7692310))

(assert (=> b!6999214 m!7692310))

(declare-fun m!7692396 () Bool)

(assert (=> b!6999214 m!7692396))

(assert (=> b!6999214 m!7692314))

(assert (=> b!6999214 m!7692396))

(assert (=> b!6999214 m!7692314))

(declare-fun m!7692400 () Bool)

(assert (=> b!6999214 m!7692400))

(assert (=> b!6998822 d!2181152))

(declare-fun d!2181154 () Bool)

(declare-fun c!1299090 () Bool)

(assert (=> d!2181154 (= c!1299090 (isEmpty!39238 (t!381089 s!7408)))))

(declare-fun e!4207045 () Bool)

(assert (=> d!2181154 (= (matchZipper!2804 lt!2494619 (t!381089 s!7408)) e!4207045)))

(declare-fun b!6999215 () Bool)

(assert (=> b!6999215 (= e!4207045 (nullableZipper!2459 lt!2494619))))

(declare-fun b!6999216 () Bool)

(assert (=> b!6999216 (= e!4207045 (matchZipper!2804 (derivationStepZipper!2744 lt!2494619 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))))))

(assert (= (and d!2181154 c!1299090) b!6999215))

(assert (= (and d!2181154 (not c!1299090)) b!6999216))

(assert (=> d!2181154 m!7692306))

(declare-fun m!7692412 () Bool)

(assert (=> b!6999215 m!7692412))

(assert (=> b!6999216 m!7692310))

(assert (=> b!6999216 m!7692310))

(declare-fun m!7692414 () Bool)

(assert (=> b!6999216 m!7692414))

(assert (=> b!6999216 m!7692314))

(assert (=> b!6999216 m!7692414))

(assert (=> b!6999216 m!7692314))

(declare-fun m!7692416 () Bool)

(assert (=> b!6999216 m!7692416))

(assert (=> b!6998822 d!2181154))

(assert (=> b!6998822 d!2181058))

(declare-fun d!2181158 () Bool)

(declare-fun e!4207046 () Bool)

(assert (=> d!2181158 (= (matchZipper!2804 (set.union lt!2494614 lt!2494611) (t!381089 s!7408)) e!4207046)))

(declare-fun res!2855158 () Bool)

(assert (=> d!2181158 (=> res!2855158 e!4207046)))

(assert (=> d!2181158 (= res!2855158 (matchZipper!2804 lt!2494614 (t!381089 s!7408)))))

(declare-fun lt!2494881 () Unit!161186)

(assert (=> d!2181158 (= lt!2494881 (choose!52449 lt!2494614 lt!2494611 (t!381089 s!7408)))))

(assert (=> d!2181158 (= (lemmaZipperConcatMatchesSameAsBothZippers!1437 lt!2494614 lt!2494611 (t!381089 s!7408)) lt!2494881)))

(declare-fun b!6999217 () Bool)

(assert (=> b!6999217 (= e!4207046 (matchZipper!2804 lt!2494611 (t!381089 s!7408)))))

(assert (= (and d!2181158 (not res!2855158)) b!6999217))

(declare-fun m!7692418 () Bool)

(assert (=> d!2181158 m!7692418))

(assert (=> d!2181158 m!7691878))

(declare-fun m!7692420 () Bool)

(assert (=> d!2181158 m!7692420))

(assert (=> b!6999217 m!7691794))

(assert (=> b!6998822 d!2181158))

(declare-fun d!2181160 () Bool)

(declare-fun c!1299091 () Bool)

(assert (=> d!2181160 (= c!1299091 (isEmpty!39238 (t!381089 s!7408)))))

(declare-fun e!4207047 () Bool)

(assert (=> d!2181160 (= (matchZipper!2804 lt!2494604 (t!381089 s!7408)) e!4207047)))

(declare-fun b!6999218 () Bool)

(assert (=> b!6999218 (= e!4207047 (nullableZipper!2459 lt!2494604))))

(declare-fun b!6999219 () Bool)

(assert (=> b!6999219 (= e!4207047 (matchZipper!2804 (derivationStepZipper!2744 lt!2494604 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))))))

(assert (= (and d!2181160 c!1299091) b!6999218))

(assert (= (and d!2181160 (not c!1299091)) b!6999219))

(assert (=> d!2181160 m!7692306))

(declare-fun m!7692422 () Bool)

(assert (=> b!6999218 m!7692422))

(assert (=> b!6999219 m!7692310))

(assert (=> b!6999219 m!7692310))

(declare-fun m!7692424 () Bool)

(assert (=> b!6999219 m!7692424))

(assert (=> b!6999219 m!7692314))

(assert (=> b!6999219 m!7692424))

(assert (=> b!6999219 m!7692314))

(declare-fun m!7692426 () Bool)

(assert (=> b!6999219 m!7692426))

(assert (=> b!6998822 d!2181160))

(declare-fun bs!1864075 () Bool)

(declare-fun d!2181162 () Bool)

(assert (= bs!1864075 (and d!2181162 b!6998829)))

(declare-fun lambda!404922 () Int)

(assert (=> bs!1864075 (= lambda!404922 lambda!404839)))

(declare-fun bs!1864076 () Bool)

(assert (= bs!1864076 (and d!2181162 d!2181084)))

(assert (=> bs!1864076 (= lambda!404922 lambda!404913)))

(assert (=> d!2181162 (= (inv!86020 setElem!48058) (forall!16178 (exprs!6760 setElem!48058) lambda!404922))))

(declare-fun bs!1864077 () Bool)

(assert (= bs!1864077 d!2181162))

(declare-fun m!7692428 () Bool)

(assert (=> bs!1864077 m!7692428))

(assert (=> setNonEmpty!48058 d!2181162))

(declare-fun b!6999224 () Bool)

(declare-fun e!4207050 () Bool)

(declare-fun tp!1930909 () Bool)

(declare-fun tp!1930910 () Bool)

(assert (=> b!6999224 (= e!4207050 (and tp!1930909 tp!1930910))))

(assert (=> b!6998815 (= tp!1930891 e!4207050)))

(assert (= (and b!6998815 (is-Cons!67213 (exprs!6760 setElem!48058))) b!6999224))

(declare-fun b!6999229 () Bool)

(declare-fun e!4207053 () Bool)

(declare-fun tp!1930913 () Bool)

(assert (=> b!6999229 (= e!4207053 (and tp_is_empty!43753 tp!1930913))))

(assert (=> b!6998825 (= tp!1930889 e!4207053)))

(assert (= (and b!6998825 (is-Cons!67214 (t!381089 s!7408))) b!6999229))

(declare-fun b!6999230 () Bool)

(declare-fun e!4207054 () Bool)

(declare-fun tp!1930914 () Bool)

(declare-fun tp!1930915 () Bool)

(assert (=> b!6999230 (= e!4207054 (and tp!1930914 tp!1930915))))

(assert (=> b!6998834 (= tp!1930892 e!4207054)))

(assert (= (and b!6998834 (is-Cons!67213 (exprs!6760 ct2!306))) b!6999230))

(declare-fun condSetEmpty!48064 () Bool)

(assert (=> setNonEmpty!48058 (= condSetEmpty!48064 (= setRest!48058 (as set.empty (Set Context!12520))))))

(declare-fun setRes!48064 () Bool)

(assert (=> setNonEmpty!48058 (= tp!1930890 setRes!48064)))

(declare-fun setIsEmpty!48064 () Bool)

(assert (=> setIsEmpty!48064 setRes!48064))

(declare-fun setNonEmpty!48064 () Bool)

(declare-fun tp!1930921 () Bool)

(declare-fun e!4207057 () Bool)

(declare-fun setElem!48064 () Context!12520)

(assert (=> setNonEmpty!48064 (= setRes!48064 (and tp!1930921 (inv!86020 setElem!48064) e!4207057))))

(declare-fun setRest!48064 () (Set Context!12520))

(assert (=> setNonEmpty!48064 (= setRest!48058 (set.union (set.insert setElem!48064 (as set.empty (Set Context!12520))) setRest!48064))))

(declare-fun b!6999235 () Bool)

(declare-fun tp!1930920 () Bool)

(assert (=> b!6999235 (= e!4207057 tp!1930920)))

(assert (= (and setNonEmpty!48058 condSetEmpty!48064) setIsEmpty!48064))

(assert (= (and setNonEmpty!48058 (not condSetEmpty!48064)) setNonEmpty!48064))

(assert (= setNonEmpty!48064 b!6999235))

(declare-fun m!7692430 () Bool)

(assert (=> setNonEmpty!48064 m!7692430))

(declare-fun b_lambda!263489 () Bool)

(assert (= b_lambda!263477 (or b!6998816 b_lambda!263489)))

(declare-fun bs!1864078 () Bool)

(declare-fun d!2181164 () Bool)

(assert (= bs!1864078 (and d!2181164 b!6998816)))

(assert (=> bs!1864078 (= (dynLambda!26989 lambda!404837 lt!2494855) (matchZipper!2804 (set.insert lt!2494855 (as set.empty (Set Context!12520))) s!7408))))

(declare-fun m!7692432 () Bool)

(assert (=> bs!1864078 m!7692432))

(assert (=> bs!1864078 m!7692432))

(declare-fun m!7692434 () Bool)

(assert (=> bs!1864078 m!7692434))

(assert (=> d!2181096 d!2181164))

(declare-fun b_lambda!263491 () Bool)

(assert (= b_lambda!263481 (or b!6998829 b_lambda!263491)))

(declare-fun bs!1864079 () Bool)

(declare-fun d!2181166 () Bool)

(assert (= bs!1864079 (and d!2181166 b!6998829)))

(declare-fun lt!2494884 () Unit!161186)

(assert (=> bs!1864079 (= lt!2494884 (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494627) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> bs!1864079 (= (dynLambda!26991 lambda!404838 lt!2494627) (Context!12521 (++!15230 (exprs!6760 lt!2494627) (exprs!6760 ct2!306))))))

(declare-fun m!7692436 () Bool)

(assert (=> bs!1864079 m!7692436))

(declare-fun m!7692438 () Bool)

(assert (=> bs!1864079 m!7692438))

(assert (=> d!2181118 d!2181166))

(declare-fun b_lambda!263493 () Bool)

(assert (= b_lambda!263479 (or b!6998841 b_lambda!263493)))

(declare-fun bs!1864080 () Bool)

(declare-fun d!2181168 () Bool)

(assert (= bs!1864080 (and d!2181168 b!6998841)))

(assert (=> bs!1864080 (= (dynLambda!26988 lambda!404840 lt!2494627) (derivationStepZipperUp!1914 lt!2494627 (h!73662 s!7408)))))

(assert (=> bs!1864080 m!7691810))

(assert (=> d!2181108 d!2181168))

(declare-fun b_lambda!263495 () Bool)

(assert (= b_lambda!263483 (or b!6998841 b_lambda!263495)))

(declare-fun bs!1864082 () Bool)

(declare-fun d!2181170 () Bool)

(assert (= bs!1864082 (and d!2181170 b!6998841)))

(assert (=> bs!1864082 (= (dynLambda!26988 lambda!404840 lt!2494613) (derivationStepZipperUp!1914 lt!2494613 (h!73662 s!7408)))))

(assert (=> bs!1864082 m!7691858))

(assert (=> d!2181126 d!2181170))

(declare-fun b_lambda!263497 () Bool)

(assert (= b_lambda!263475 (or b!6998841 b_lambda!263497)))

(declare-fun bs!1864083 () Bool)

(declare-fun d!2181172 () Bool)

(assert (= bs!1864083 (and d!2181172 b!6998841)))

(assert (=> bs!1864083 (= (dynLambda!26988 lambda!404840 lt!2494609) (derivationStepZipperUp!1914 lt!2494609 (h!73662 s!7408)))))

(assert (=> bs!1864083 m!7691842))

(assert (=> d!2181046 d!2181172))

(declare-fun b_lambda!263499 () Bool)

(assert (= b_lambda!263485 (or b!6998841 b_lambda!263499)))

(declare-fun bs!1864084 () Bool)

(declare-fun d!2181174 () Bool)

(assert (= bs!1864084 (and d!2181174 b!6998841)))

(assert (=> bs!1864084 (= (dynLambda!26988 lambda!404840 lt!2494587) (derivationStepZipperUp!1914 lt!2494587 (h!73662 s!7408)))))

(assert (=> bs!1864084 m!7691802))

(assert (=> d!2181132 d!2181174))

(declare-fun b_lambda!263501 () Bool)

(assert (= b_lambda!263487 (or b!6998829 b_lambda!263501)))

(declare-fun bs!1864085 () Bool)

(declare-fun d!2181178 () Bool)

(assert (= bs!1864085 (and d!2181178 b!6998829)))

(declare-fun lt!2494886 () Unit!161186)

(assert (=> bs!1864085 (= lt!2494886 (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494877) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> bs!1864085 (= (dynLambda!26991 lambda!404838 lt!2494877) (Context!12521 (++!15230 (exprs!6760 lt!2494877) (exprs!6760 ct2!306))))))

(declare-fun m!7692446 () Bool)

(assert (=> bs!1864085 m!7692446))

(declare-fun m!7692448 () Bool)

(assert (=> bs!1864085 m!7692448))

(assert (=> d!2181142 d!2181178))

(push 1)

(assert (not b_lambda!263489))

(assert (not d!2181042))

(assert (not d!2181140))

(assert (not b!6999111))

(assert (not b!6999230))

(assert (not b!6999049))

(assert (not d!2181096))

(assert (not b!6999071))

(assert (not b_lambda!263497))

(assert (not b!6998955))

(assert (not b!6999080))

(assert (not d!2181040))

(assert (not bm!635448))

(assert (not d!2181128))

(assert (not d!2181092))

(assert (not b!6999213))

(assert (not b!6999179))

(assert (not b!6999215))

(assert (not bs!1864085))

(assert (not bm!635454))

(assert (not d!2181106))

(assert (not b!6998949))

(assert (not bs!1864080))

(assert (not b!6999229))

(assert (not setNonEmpty!48064))

(assert (not b_lambda!263499))

(assert (not b!6999079))

(assert (not d!2181116))

(assert (not bm!635461))

(assert (not b!6999166))

(assert (not b!6999164))

(assert (not b!6999208))

(assert (not d!2181030))

(assert (not b!6999077))

(assert (not bm!635451))

(assert (not d!2181158))

(assert (not b!6999051))

(assert (not b!6999150))

(assert (not d!2181046))

(assert (not d!2181118))

(assert (not b!6999010))

(assert (not b!6999192))

(assert (not bs!1864078))

(assert (not d!2181074))

(assert (not b!6999181))

(assert (not d!2181148))

(assert (not d!2181098))

(assert (not d!2181130))

(assert (not d!2181080))

(assert (not d!2181160))

(assert (not d!2181078))

(assert (not b!6999009))

(assert (not b_lambda!263493))

(assert (not bm!635434))

(assert (not bs!1864084))

(assert (not b!6999217))

(assert (not b!6998952))

(assert (not b!6999216))

(assert (not d!2181132))

(assert (not d!2181108))

(assert (not d!2181104))

(assert (not bm!635452))

(assert (not bm!635435))

(assert (not d!2181126))

(assert (not b!6999073))

(assert (not bm!635476))

(assert (not d!2181154))

(assert (not b!6999182))

(assert (not d!2181110))

(assert (not b!6999082))

(assert (not b!6999096))

(assert (not d!2181032))

(assert (not d!2181066))

(assert (not b!6999121))

(assert (not b!6998980))

(assert (not b!6999219))

(assert (not d!2181072))

(assert (not b!6999078))

(assert (not b!6999108))

(assert (not b!6999209))

(assert (not bm!635460))

(assert tp_is_empty!43753)

(assert (not d!2181100))

(assert (not b!6999050))

(assert (not b!6999159))

(assert (not b!6999095))

(assert (not b!6999015))

(assert (not bs!1864079))

(assert (not b!6999235))

(assert (not d!2181090))

(assert (not d!2181120))

(assert (not d!2181068))

(assert (not b!6999014))

(assert (not d!2181142))

(assert (not d!2181152))

(assert (not b_lambda!263495))

(assert (not bm!635457))

(assert (not b_lambda!263491))

(assert (not b!6999191))

(assert (not bs!1864082))

(assert (not d!2181084))

(assert (not b!6999120))

(assert (not b!6998998))

(assert (not d!2181058))

(assert (not d!2181076))

(assert (not b_lambda!263501))

(assert (not b!6999167))

(assert (not b!6998950))

(assert (not bm!635431))

(assert (not b!6999152))

(assert (not b!6999218))

(assert (not b!6999163))

(assert (not d!2181134))

(assert (not d!2181036))

(assert (not b!6999224))

(assert (not d!2181146))

(assert (not d!2181054))

(assert (not b!6999185))

(assert (not d!2181048))

(assert (not b!6999214))

(assert (not b!6999184))

(assert (not bm!635430))

(assert (not b!6999075))

(assert (not b!6998951))

(assert (not d!2181162))

(assert (not b!6999157))

(assert (not b!6999076))

(assert (not b!6998997))

(assert (not bs!1864083))

(assert (not d!2181138))

(assert (not d!2181050))

(assert (not d!2181124))

(assert (not b!6999081))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6999415 () Bool)

(declare-fun e!4207169 () (Set Context!12520))

(declare-fun call!635508 () (Set Context!12520))

(assert (=> b!6999415 (= e!4207169 call!635508)))

(declare-fun bm!635501 () Bool)

(declare-fun c!1299148 () Bool)

(declare-fun call!635509 () List!67337)

(declare-fun c!1299150 () Bool)

(declare-fun call!635506 () (Set Context!12520))

(declare-fun c!1299151 () Bool)

(assert (=> bm!635501 (= call!635506 (derivationStepZipperDown!1982 (ite c!1299148 (regTwo!35041 (h!73661 (exprs!6760 lt!2494587))) (ite c!1299151 (regTwo!35040 (h!73661 (exprs!6760 lt!2494587))) (ite c!1299150 (regOne!35040 (h!73661 (exprs!6760 lt!2494587))) (reg!17593 (h!73661 (exprs!6760 lt!2494587)))))) (ite (or c!1299148 c!1299151) (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (Context!12521 call!635509)) (h!73662 s!7408)))))

(declare-fun b!6999416 () Bool)

(declare-fun e!4207166 () (Set Context!12520))

(declare-fun e!4207167 () (Set Context!12520))

(assert (=> b!6999416 (= e!4207166 e!4207167)))

(assert (=> b!6999416 (= c!1299150 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494587))))))

(declare-fun b!6999417 () Bool)

(assert (=> b!6999417 (= e!4207167 call!635508)))

(declare-fun bm!635502 () Bool)

(declare-fun call!635507 () (Set Context!12520))

(assert (=> bm!635502 (= call!635508 call!635507)))

(declare-fun bm!635503 () Bool)

(declare-fun call!635511 () List!67337)

(assert (=> bm!635503 (= call!635509 call!635511)))

(declare-fun d!2181306 () Bool)

(declare-fun c!1299149 () Bool)

(assert (=> d!2181306 (= c!1299149 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494587))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494587))) (h!73662 s!7408))))))

(declare-fun e!4207165 () (Set Context!12520))

(assert (=> d!2181306 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494587)) (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (h!73662 s!7408)) e!4207165)))

(declare-fun b!6999418 () Bool)

(declare-fun call!635510 () (Set Context!12520))

(assert (=> b!6999418 (= e!4207166 (set.union call!635510 call!635507))))

(declare-fun bm!635504 () Bool)

(assert (=> bm!635504 (= call!635510 (derivationStepZipperDown!1982 (ite c!1299148 (regOne!35041 (h!73661 (exprs!6760 lt!2494587))) (regOne!35040 (h!73661 (exprs!6760 lt!2494587)))) (ite c!1299148 (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (Context!12521 call!635511)) (h!73662 s!7408)))))

(declare-fun bm!635505 () Bool)

(assert (=> bm!635505 (= call!635511 ($colon$colon!2503 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587)))) (ite (or c!1299151 c!1299150) (regTwo!35040 (h!73661 (exprs!6760 lt!2494587))) (h!73661 (exprs!6760 lt!2494587)))))))

(declare-fun b!6999419 () Bool)

(assert (=> b!6999419 (= e!4207165 (set.insert (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (as set.empty (Set Context!12520))))))

(declare-fun b!6999420 () Bool)

(declare-fun e!4207170 () Bool)

(assert (=> b!6999420 (= c!1299151 e!4207170)))

(declare-fun res!2855221 () Bool)

(assert (=> b!6999420 (=> (not res!2855221) (not e!4207170))))

(assert (=> b!6999420 (= res!2855221 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494587))))))

(declare-fun e!4207168 () (Set Context!12520))

(assert (=> b!6999420 (= e!4207168 e!4207166)))

(declare-fun b!6999421 () Bool)

(assert (=> b!6999421 (= e!4207165 e!4207168)))

(assert (=> b!6999421 (= c!1299148 (is-Union!17264 (h!73661 (exprs!6760 lt!2494587))))))

(declare-fun b!6999422 () Bool)

(assert (=> b!6999422 (= e!4207168 (set.union call!635510 call!635506))))

(declare-fun b!6999423 () Bool)

(declare-fun c!1299147 () Bool)

(assert (=> b!6999423 (= c!1299147 (is-Star!17264 (h!73661 (exprs!6760 lt!2494587))))))

(assert (=> b!6999423 (= e!4207167 e!4207169)))

(declare-fun b!6999424 () Bool)

(assert (=> b!6999424 (= e!4207169 (as set.empty (Set Context!12520)))))

(declare-fun bm!635506 () Bool)

(assert (=> bm!635506 (= call!635507 call!635506)))

(declare-fun b!6999425 () Bool)

(assert (=> b!6999425 (= e!4207170 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494587)))))))

(assert (= (and d!2181306 c!1299149) b!6999419))

(assert (= (and d!2181306 (not c!1299149)) b!6999421))

(assert (= (and b!6999421 c!1299148) b!6999422))

(assert (= (and b!6999421 (not c!1299148)) b!6999420))

(assert (= (and b!6999420 res!2855221) b!6999425))

(assert (= (and b!6999420 c!1299151) b!6999418))

(assert (= (and b!6999420 (not c!1299151)) b!6999416))

(assert (= (and b!6999416 c!1299150) b!6999417))

(assert (= (and b!6999416 (not c!1299150)) b!6999423))

(assert (= (and b!6999423 c!1299147) b!6999415))

(assert (= (and b!6999423 (not c!1299147)) b!6999424))

(assert (= (or b!6999417 b!6999415) bm!635503))

(assert (= (or b!6999417 b!6999415) bm!635502))

(assert (= (or b!6999418 bm!635502) bm!635506))

(assert (= (or b!6999418 bm!635503) bm!635505))

(assert (= (or b!6999422 b!6999418) bm!635504))

(assert (= (or b!6999422 bm!635506) bm!635501))

(declare-fun m!7692760 () Bool)

(assert (=> b!6999419 m!7692760))

(declare-fun m!7692762 () Bool)

(assert (=> bm!635501 m!7692762))

(declare-fun m!7692764 () Bool)

(assert (=> bm!635505 m!7692764))

(declare-fun m!7692766 () Bool)

(assert (=> b!6999425 m!7692766))

(declare-fun m!7692768 () Bool)

(assert (=> bm!635504 m!7692768))

(assert (=> bm!635435 d!2181306))

(declare-fun bs!1864129 () Bool)

(declare-fun d!2181308 () Bool)

(assert (= bs!1864129 (and d!2181308 b!6998816)))

(declare-fun lambda!404945 () Int)

(assert (=> bs!1864129 (not (= lambda!404945 lambda!404837))))

(declare-fun bs!1864130 () Bool)

(assert (= bs!1864130 (and d!2181308 d!2181092)))

(assert (=> bs!1864130 (not (= lambda!404945 lambda!404916))))

(declare-fun bs!1864131 () Bool)

(assert (= bs!1864131 (and d!2181308 d!2181100)))

(assert (=> bs!1864131 (not (= lambda!404945 lambda!404919))))

(assert (=> d!2181308 (= (nullableZipper!2459 lt!2494617) (exists!3079 lt!2494617 lambda!404945))))

(declare-fun bs!1864132 () Bool)

(assert (= bs!1864132 d!2181308))

(declare-fun m!7692770 () Bool)

(assert (=> bs!1864132 m!7692770))

(assert (=> b!6999120 d!2181308))

(declare-fun d!2181310 () Bool)

(declare-fun c!1299154 () Bool)

(assert (=> d!2181310 (= c!1299154 (isEmpty!39238 (tail!13297 lt!2494630)))))

(declare-fun e!4207171 () Bool)

(assert (=> d!2181310 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494595 (head!14137 lt!2494630)) (tail!13297 lt!2494630)) e!4207171)))

(declare-fun b!6999426 () Bool)

(assert (=> b!6999426 (= e!4207171 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494595 (head!14137 lt!2494630))))))

(declare-fun b!6999427 () Bool)

(assert (=> b!6999427 (= e!4207171 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494595 (head!14137 lt!2494630)) (head!14137 (tail!13297 lt!2494630))) (tail!13297 (tail!13297 lt!2494630))))))

(assert (= (and d!2181310 c!1299154) b!6999426))

(assert (= (and d!2181310 (not c!1299154)) b!6999427))

(assert (=> d!2181310 m!7692060))

(declare-fun m!7692772 () Bool)

(assert (=> d!2181310 m!7692772))

(assert (=> b!6999426 m!7692058))

(declare-fun m!7692774 () Bool)

(assert (=> b!6999426 m!7692774))

(assert (=> b!6999427 m!7692060))

(declare-fun m!7692776 () Bool)

(assert (=> b!6999427 m!7692776))

(assert (=> b!6999427 m!7692058))

(assert (=> b!6999427 m!7692776))

(declare-fun m!7692778 () Bool)

(assert (=> b!6999427 m!7692778))

(assert (=> b!6999427 m!7692060))

(declare-fun m!7692780 () Bool)

(assert (=> b!6999427 m!7692780))

(assert (=> b!6999427 m!7692778))

(assert (=> b!6999427 m!7692780))

(declare-fun m!7692782 () Bool)

(assert (=> b!6999427 m!7692782))

(assert (=> b!6998950 d!2181310))

(declare-fun bs!1864133 () Bool)

(declare-fun d!2181312 () Bool)

(assert (= bs!1864133 (and d!2181312 b!6998841)))

(declare-fun lambda!404946 () Int)

(assert (=> bs!1864133 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404946 lambda!404840))))

(declare-fun bs!1864134 () Bool)

(assert (= bs!1864134 (and d!2181312 d!2181040)))

(assert (=> bs!1864134 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404946 lambda!404905))))

(declare-fun bs!1864135 () Bool)

(assert (= bs!1864135 (and d!2181312 d!2181120)))

(assert (=> bs!1864135 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404946 lambda!404920))))

(declare-fun bs!1864136 () Bool)

(assert (= bs!1864136 (and d!2181312 d!2181130)))

(assert (=> bs!1864136 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404946 lambda!404921))))

(assert (=> d!2181312 true))

(assert (=> d!2181312 (= (derivationStepZipper!2744 lt!2494595 (head!14137 lt!2494630)) (flatMap!2250 lt!2494595 lambda!404946))))

(declare-fun bs!1864137 () Bool)

(assert (= bs!1864137 d!2181312))

(declare-fun m!7692784 () Bool)

(assert (=> bs!1864137 m!7692784))

(assert (=> b!6998950 d!2181312))

(declare-fun d!2181314 () Bool)

(assert (=> d!2181314 (= (head!14137 lt!2494630) (h!73662 lt!2494630))))

(assert (=> b!6998950 d!2181314))

(declare-fun d!2181316 () Bool)

(assert (=> d!2181316 (= (tail!13297 lt!2494630) (t!381089 lt!2494630))))

(assert (=> b!6998950 d!2181316))

(declare-fun d!2181318 () Bool)

(assert (=> d!2181318 (= (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (nullableFct!2656 (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun bs!1864138 () Bool)

(assert (= bs!1864138 d!2181318))

(declare-fun m!7692786 () Bool)

(assert (=> bs!1864138 m!7692786))

(assert (=> b!6999108 d!2181318))

(declare-fun d!2181320 () Bool)

(declare-fun c!1299155 () Bool)

(assert (=> d!2181320 (= c!1299155 (isEmpty!39238 (tail!13297 (t!381089 s!7408))))))

(declare-fun e!4207172 () Bool)

(assert (=> d!2181320 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494614 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))) e!4207172)))

(declare-fun b!6999428 () Bool)

(assert (=> b!6999428 (= e!4207172 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494614 (head!14137 (t!381089 s!7408)))))))

(declare-fun b!6999429 () Bool)

(assert (=> b!6999429 (= e!4207172 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494614 (head!14137 (t!381089 s!7408))) (head!14137 (tail!13297 (t!381089 s!7408)))) (tail!13297 (tail!13297 (t!381089 s!7408)))))))

(assert (= (and d!2181320 c!1299155) b!6999428))

(assert (= (and d!2181320 (not c!1299155)) b!6999429))

(assert (=> d!2181320 m!7692314))

(declare-fun m!7692788 () Bool)

(assert (=> d!2181320 m!7692788))

(assert (=> b!6999428 m!7692396))

(declare-fun m!7692790 () Bool)

(assert (=> b!6999428 m!7692790))

(assert (=> b!6999429 m!7692314))

(declare-fun m!7692792 () Bool)

(assert (=> b!6999429 m!7692792))

(assert (=> b!6999429 m!7692396))

(assert (=> b!6999429 m!7692792))

(declare-fun m!7692794 () Bool)

(assert (=> b!6999429 m!7692794))

(assert (=> b!6999429 m!7692314))

(declare-fun m!7692796 () Bool)

(assert (=> b!6999429 m!7692796))

(assert (=> b!6999429 m!7692794))

(assert (=> b!6999429 m!7692796))

(declare-fun m!7692798 () Bool)

(assert (=> b!6999429 m!7692798))

(assert (=> b!6999214 d!2181320))

(declare-fun bs!1864139 () Bool)

(declare-fun d!2181322 () Bool)

(assert (= bs!1864139 (and d!2181322 d!2181040)))

(declare-fun lambda!404947 () Int)

(assert (=> bs!1864139 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404947 lambda!404905))))

(declare-fun bs!1864140 () Bool)

(assert (= bs!1864140 (and d!2181322 b!6998841)))

(assert (=> bs!1864140 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404947 lambda!404840))))

(declare-fun bs!1864141 () Bool)

(assert (= bs!1864141 (and d!2181322 d!2181130)))

(assert (=> bs!1864141 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404947 lambda!404921))))

(declare-fun bs!1864142 () Bool)

(assert (= bs!1864142 (and d!2181322 d!2181312)))

(assert (=> bs!1864142 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404947 lambda!404946))))

(declare-fun bs!1864143 () Bool)

(assert (= bs!1864143 (and d!2181322 d!2181120)))

(assert (=> bs!1864143 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404947 lambda!404920))))

(assert (=> d!2181322 true))

(assert (=> d!2181322 (= (derivationStepZipper!2744 lt!2494614 (head!14137 (t!381089 s!7408))) (flatMap!2250 lt!2494614 lambda!404947))))

(declare-fun bs!1864144 () Bool)

(assert (= bs!1864144 d!2181322))

(declare-fun m!7692800 () Bool)

(assert (=> bs!1864144 m!7692800))

(assert (=> b!6999214 d!2181322))

(declare-fun d!2181324 () Bool)

(assert (=> d!2181324 (= (head!14137 (t!381089 s!7408)) (h!73662 (t!381089 s!7408)))))

(assert (=> b!6999214 d!2181324))

(declare-fun d!2181326 () Bool)

(assert (=> d!2181326 (= (tail!13297 (t!381089 s!7408)) (t!381089 (t!381089 s!7408)))))

(assert (=> b!6999214 d!2181326))

(declare-fun d!2181328 () Bool)

(assert (=> d!2181328 (= (nullable!7024 (h!73661 (exprs!6760 lt!2494609))) (nullableFct!2656 (h!73661 (exprs!6760 lt!2494609))))))

(declare-fun bs!1864145 () Bool)

(assert (= bs!1864145 d!2181328))

(declare-fun m!7692802 () Bool)

(assert (=> bs!1864145 m!7692802))

(assert (=> b!6998997 d!2181328))

(declare-fun bs!1864146 () Bool)

(declare-fun d!2181330 () Bool)

(assert (= bs!1864146 (and d!2181330 b!6998816)))

(declare-fun lambda!404948 () Int)

(assert (=> bs!1864146 (not (= lambda!404948 lambda!404837))))

(declare-fun bs!1864147 () Bool)

(assert (= bs!1864147 (and d!2181330 d!2181092)))

(assert (=> bs!1864147 (not (= lambda!404948 lambda!404916))))

(declare-fun bs!1864148 () Bool)

(assert (= bs!1864148 (and d!2181330 d!2181100)))

(assert (=> bs!1864148 (not (= lambda!404948 lambda!404919))))

(declare-fun bs!1864149 () Bool)

(assert (= bs!1864149 (and d!2181330 d!2181308)))

(assert (=> bs!1864149 (= lambda!404948 lambda!404945)))

(assert (=> d!2181330 (= (nullableZipper!2459 lt!2494618) (exists!3079 lt!2494618 lambda!404948))))

(declare-fun bs!1864150 () Bool)

(assert (= bs!1864150 d!2181330))

(declare-fun m!7692804 () Bool)

(assert (=> bs!1864150 m!7692804))

(assert (=> b!6998951 d!2181330))

(declare-fun bs!1864151 () Bool)

(declare-fun d!2181332 () Bool)

(assert (= bs!1864151 (and d!2181332 b!6998829)))

(declare-fun lambda!404949 () Int)

(assert (=> bs!1864151 (= lambda!404949 lambda!404838)))

(declare-fun bs!1864152 () Bool)

(assert (= bs!1864152 (and d!2181332 d!2181080)))

(assert (=> bs!1864152 (= lambda!404949 lambda!404910)))

(assert (=> d!2181332 true))

(assert (=> d!2181332 (= (appendTo!385 lt!2494591 ct2!306) (map!15543 lt!2494591 lambda!404949))))

(declare-fun bs!1864153 () Bool)

(assert (= bs!1864153 d!2181332))

(declare-fun m!7692806 () Bool)

(assert (=> bs!1864153 m!7692806))

(assert (=> d!2181068 d!2181332))

(declare-fun b!6999430 () Bool)

(declare-fun e!4207173 () Option!16769)

(declare-fun e!4207174 () Option!16769)

(assert (=> b!6999430 (= e!4207173 e!4207174)))

(declare-fun c!1299156 () Bool)

(assert (=> b!6999430 (= c!1299156 (is-Nil!67214 s!7408))))

(declare-fun b!6999431 () Bool)

(declare-fun e!4207175 () Bool)

(declare-fun lt!2494949 () Option!16769)

(assert (=> b!6999431 (= e!4207175 (= (++!15229 (_1!37240 (get!23566 lt!2494949)) (_2!37240 (get!23566 lt!2494949))) s!7408))))

(declare-fun b!6999432 () Bool)

(assert (=> b!6999432 (= e!4207174 None!16768)))

(declare-fun b!6999433 () Bool)

(declare-fun lt!2494948 () Unit!161186)

(declare-fun lt!2494950 () Unit!161186)

(assert (=> b!6999433 (= lt!2494948 lt!2494950)))

(assert (=> b!6999433 (= (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408)) s!7408)))

(assert (=> b!6999433 (= lt!2494950 (lemmaMoveElementToOtherListKeepsConcatEq!2879 Nil!67214 (h!73662 s!7408) (t!381089 s!7408) s!7408))))

(assert (=> b!6999433 (= e!4207174 (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408) s!7408))))

(declare-fun d!2181334 () Bool)

(declare-fun e!4207177 () Bool)

(assert (=> d!2181334 e!4207177))

(declare-fun res!2855223 () Bool)

(assert (=> d!2181334 (=> res!2855223 e!4207177)))

(assert (=> d!2181334 (= res!2855223 e!4207175)))

(declare-fun res!2855222 () Bool)

(assert (=> d!2181334 (=> (not res!2855222) (not e!4207175))))

(assert (=> d!2181334 (= res!2855222 (isDefined!13470 lt!2494949))))

(assert (=> d!2181334 (= lt!2494949 e!4207173)))

(declare-fun c!1299157 () Bool)

(declare-fun e!4207176 () Bool)

(assert (=> d!2181334 (= c!1299157 e!4207176)))

(declare-fun res!2855225 () Bool)

(assert (=> d!2181334 (=> (not res!2855225) (not e!4207176))))

(assert (=> d!2181334 (= res!2855225 (matchZipper!2804 lt!2494591 Nil!67214))))

(assert (=> d!2181334 (= (++!15229 Nil!67214 s!7408) s!7408)))

(assert (=> d!2181334 (= (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) Nil!67214 s!7408 s!7408) lt!2494949)))

(declare-fun b!6999434 () Bool)

(assert (=> b!6999434 (= e!4207173 (Some!16768 (tuple2!67875 Nil!67214 s!7408)))))

(declare-fun b!6999435 () Bool)

(assert (=> b!6999435 (= e!4207177 (not (isDefined!13470 lt!2494949)))))

(declare-fun b!6999436 () Bool)

(declare-fun res!2855226 () Bool)

(assert (=> b!6999436 (=> (not res!2855226) (not e!4207175))))

(assert (=> b!6999436 (= res!2855226 (matchZipper!2804 lt!2494591 (_1!37240 (get!23566 lt!2494949))))))

(declare-fun b!6999437 () Bool)

(assert (=> b!6999437 (= e!4207176 (matchZipper!2804 (set.insert ct2!306 (as set.empty (Set Context!12520))) s!7408))))

(declare-fun b!6999438 () Bool)

(declare-fun res!2855224 () Bool)

(assert (=> b!6999438 (=> (not res!2855224) (not e!4207175))))

(assert (=> b!6999438 (= res!2855224 (matchZipper!2804 (set.insert ct2!306 (as set.empty (Set Context!12520))) (_2!37240 (get!23566 lt!2494949))))))

(assert (= (and d!2181334 res!2855225) b!6999437))

(assert (= (and d!2181334 c!1299157) b!6999434))

(assert (= (and d!2181334 (not c!1299157)) b!6999430))

(assert (= (and b!6999430 c!1299156) b!6999432))

(assert (= (and b!6999430 (not c!1299156)) b!6999433))

(assert (= (and d!2181334 res!2855222) b!6999436))

(assert (= (and b!6999436 res!2855226) b!6999438))

(assert (= (and b!6999438 res!2855224) b!6999431))

(assert (= (and d!2181334 (not res!2855223)) b!6999435))

(declare-fun m!7692808 () Bool)

(assert (=> b!6999438 m!7692808))

(assert (=> b!6999438 m!7691902))

(declare-fun m!7692810 () Bool)

(assert (=> b!6999438 m!7692810))

(assert (=> b!6999437 m!7691902))

(declare-fun m!7692812 () Bool)

(assert (=> b!6999437 m!7692812))

(assert (=> b!6999431 m!7692808))

(declare-fun m!7692814 () Bool)

(assert (=> b!6999431 m!7692814))

(assert (=> b!6999433 m!7692162))

(assert (=> b!6999433 m!7692162))

(assert (=> b!6999433 m!7692164))

(assert (=> b!6999433 m!7692166))

(assert (=> b!6999433 m!7691902))

(assert (=> b!6999433 m!7692162))

(declare-fun m!7692816 () Bool)

(assert (=> b!6999433 m!7692816))

(declare-fun m!7692818 () Bool)

(assert (=> b!6999435 m!7692818))

(assert (=> d!2181334 m!7692818))

(assert (=> d!2181334 m!7692172))

(assert (=> d!2181334 m!7692174))

(assert (=> b!6999436 m!7692808))

(declare-fun m!7692820 () Bool)

(assert (=> b!6999436 m!7692820))

(assert (=> d!2181068 d!2181334))

(declare-fun d!2181336 () Bool)

(assert (=> d!2181336 (= (isDefined!13470 (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) Nil!67214 s!7408 s!7408)) (not (isEmpty!39241 (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) Nil!67214 s!7408 s!7408))))))

(declare-fun bs!1864154 () Bool)

(assert (= bs!1864154 d!2181336))

(assert (=> bs!1864154 m!7692148))

(declare-fun m!7692822 () Bool)

(assert (=> bs!1864154 m!7692822))

(assert (=> d!2181068 d!2181336))

(declare-fun d!2181338 () Bool)

(declare-fun c!1299158 () Bool)

(assert (=> d!2181338 (= c!1299158 (isEmpty!39238 s!7408))))

(declare-fun e!4207178 () Bool)

(assert (=> d!2181338 (= (matchZipper!2804 (appendTo!385 lt!2494591 ct2!306) s!7408) e!4207178)))

(declare-fun b!6999439 () Bool)

(assert (=> b!6999439 (= e!4207178 (nullableZipper!2459 (appendTo!385 lt!2494591 ct2!306)))))

(declare-fun b!6999440 () Bool)

(assert (=> b!6999440 (= e!4207178 (matchZipper!2804 (derivationStepZipper!2744 (appendTo!385 lt!2494591 ct2!306) (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181338 c!1299158) b!6999439))

(assert (= (and d!2181338 (not c!1299158)) b!6999440))

(assert (=> d!2181338 m!7692186))

(assert (=> b!6999439 m!7692144))

(declare-fun m!7692824 () Bool)

(assert (=> b!6999439 m!7692824))

(assert (=> b!6999440 m!7692190))

(assert (=> b!6999440 m!7692144))

(assert (=> b!6999440 m!7692190))

(declare-fun m!7692826 () Bool)

(assert (=> b!6999440 m!7692826))

(assert (=> b!6999440 m!7692194))

(assert (=> b!6999440 m!7692826))

(assert (=> b!6999440 m!7692194))

(declare-fun m!7692828 () Bool)

(assert (=> b!6999440 m!7692828))

(assert (=> d!2181068 d!2181338))

(declare-fun d!2181340 () Bool)

(assert (=> d!2181340 (isDefined!13470 (findConcatSeparationZippers!285 lt!2494591 (set.insert ct2!306 (as set.empty (Set Context!12520))) Nil!67214 s!7408 s!7408))))

(assert (=> d!2181340 true))

(declare-fun _$50!557 () Unit!161186)

(assert (=> d!2181340 (= (choose!52453 lt!2494591 ct2!306 s!7408) _$50!557)))

(declare-fun bs!1864155 () Bool)

(assert (= bs!1864155 d!2181340))

(assert (=> bs!1864155 m!7691902))

(assert (=> bs!1864155 m!7691902))

(assert (=> bs!1864155 m!7692148))

(assert (=> bs!1864155 m!7692148))

(assert (=> bs!1864155 m!7692150))

(assert (=> d!2181068 d!2181340))

(declare-fun d!2181342 () Bool)

(assert (=> d!2181342 (forall!16178 (++!15230 (exprs!6760 lt!2494627) (exprs!6760 ct2!306)) lambda!404839)))

(declare-fun lt!2494951 () Unit!161186)

(assert (=> d!2181342 (= lt!2494951 (choose!52450 (exprs!6760 lt!2494627) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> d!2181342 (forall!16178 (exprs!6760 lt!2494627) lambda!404839)))

(assert (=> d!2181342 (= (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494627) (exprs!6760 ct2!306) lambda!404839) lt!2494951)))

(declare-fun bs!1864156 () Bool)

(assert (= bs!1864156 d!2181342))

(assert (=> bs!1864156 m!7692438))

(assert (=> bs!1864156 m!7692438))

(declare-fun m!7692830 () Bool)

(assert (=> bs!1864156 m!7692830))

(declare-fun m!7692832 () Bool)

(assert (=> bs!1864156 m!7692832))

(declare-fun m!7692834 () Bool)

(assert (=> bs!1864156 m!7692834))

(assert (=> bs!1864079 d!2181342))

(declare-fun b!6999443 () Bool)

(declare-fun res!2855228 () Bool)

(declare-fun e!4207180 () Bool)

(assert (=> b!6999443 (=> (not res!2855228) (not e!4207180))))

(declare-fun lt!2494952 () List!67337)

(assert (=> b!6999443 (= res!2855228 (= (size!40933 lt!2494952) (+ (size!40933 (exprs!6760 lt!2494627)) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999442 () Bool)

(declare-fun e!4207179 () List!67337)

(assert (=> b!6999442 (= e!4207179 (Cons!67213 (h!73661 (exprs!6760 lt!2494627)) (++!15230 (t!381088 (exprs!6760 lt!2494627)) (exprs!6760 ct2!306))))))

(declare-fun d!2181344 () Bool)

(assert (=> d!2181344 e!4207180))

(declare-fun res!2855227 () Bool)

(assert (=> d!2181344 (=> (not res!2855227) (not e!4207180))))

(assert (=> d!2181344 (= res!2855227 (= (content!13306 lt!2494952) (set.union (content!13306 (exprs!6760 lt!2494627)) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181344 (= lt!2494952 e!4207179)))

(declare-fun c!1299159 () Bool)

(assert (=> d!2181344 (= c!1299159 (is-Nil!67213 (exprs!6760 lt!2494627)))))

(assert (=> d!2181344 (= (++!15230 (exprs!6760 lt!2494627) (exprs!6760 ct2!306)) lt!2494952)))

(declare-fun b!6999441 () Bool)

(assert (=> b!6999441 (= e!4207179 (exprs!6760 ct2!306))))

(declare-fun b!6999444 () Bool)

(assert (=> b!6999444 (= e!4207180 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494952 (exprs!6760 lt!2494627))))))

(assert (= (and d!2181344 c!1299159) b!6999441))

(assert (= (and d!2181344 (not c!1299159)) b!6999442))

(assert (= (and d!2181344 res!2855227) b!6999443))

(assert (= (and b!6999443 res!2855228) b!6999444))

(declare-fun m!7692836 () Bool)

(assert (=> b!6999443 m!7692836))

(declare-fun m!7692838 () Bool)

(assert (=> b!6999443 m!7692838))

(assert (=> b!6999443 m!7692106))

(declare-fun m!7692840 () Bool)

(assert (=> b!6999442 m!7692840))

(declare-fun m!7692842 () Bool)

(assert (=> d!2181344 m!7692842))

(declare-fun m!7692844 () Bool)

(assert (=> d!2181344 m!7692844))

(assert (=> d!2181344 m!7692114))

(assert (=> bs!1864079 d!2181344))

(assert (=> d!2181116 d!2181112))

(assert (=> d!2181116 d!2181102))

(declare-fun d!2181346 () Bool)

(assert (=> d!2181346 (<= (contextDepthTotal!457 lt!2494613) (zipperDepthTotal!485 lt!2494620))))

(assert (=> d!2181346 true))

(declare-fun _$53!92 () Unit!161186)

(assert (=> d!2181346 (= (choose!52457 lt!2494620 lt!2494613) _$53!92)))

(declare-fun bs!1864157 () Bool)

(assert (= bs!1864157 d!2181346))

(assert (=> bs!1864157 m!7691838))

(assert (=> bs!1864157 m!7691820))

(assert (=> d!2181116 d!2181346))

(declare-fun d!2181348 () Bool)

(declare-fun lt!2494955 () Bool)

(assert (=> d!2181348 (= lt!2494955 (set.member lt!2494613 (content!13307 lt!2494620)))))

(declare-fun e!4207185 () Bool)

(assert (=> d!2181348 (= lt!2494955 e!4207185)))

(declare-fun res!2855233 () Bool)

(assert (=> d!2181348 (=> (not res!2855233) (not e!4207185))))

(assert (=> d!2181348 (= res!2855233 (is-Cons!67215 lt!2494620))))

(assert (=> d!2181348 (= (contains!20421 lt!2494620 lt!2494613) lt!2494955)))

(declare-fun b!6999449 () Bool)

(declare-fun e!4207186 () Bool)

(assert (=> b!6999449 (= e!4207185 e!4207186)))

(declare-fun res!2855234 () Bool)

(assert (=> b!6999449 (=> res!2855234 e!4207186)))

(assert (=> b!6999449 (= res!2855234 (= (h!73663 lt!2494620) lt!2494613))))

(declare-fun b!6999450 () Bool)

(assert (=> b!6999450 (= e!4207186 (contains!20421 (t!381090 lt!2494620) lt!2494613))))

(assert (= (and d!2181348 res!2855233) b!6999449))

(assert (= (and b!6999449 (not res!2855234)) b!6999450))

(declare-fun m!7692846 () Bool)

(assert (=> d!2181348 m!7692846))

(declare-fun m!7692848 () Bool)

(assert (=> d!2181348 m!7692848))

(declare-fun m!7692850 () Bool)

(assert (=> b!6999450 m!7692850))

(assert (=> d!2181116 d!2181348))

(declare-fun d!2181350 () Bool)

(declare-fun c!1299163 () Bool)

(assert (=> d!2181350 (= c!1299163 (is-Nil!67214 lt!2494880))))

(declare-fun e!4207189 () (Set C!34798))

(assert (=> d!2181350 (= (content!13309 lt!2494880) e!4207189)))

(declare-fun b!6999455 () Bool)

(assert (=> b!6999455 (= e!4207189 (as set.empty (Set C!34798)))))

(declare-fun b!6999456 () Bool)

(assert (=> b!6999456 (= e!4207189 (set.union (set.insert (h!73662 lt!2494880) (as set.empty (Set C!34798))) (content!13309 (t!381089 lt!2494880))))))

(assert (= (and d!2181350 c!1299163) b!6999455))

(assert (= (and d!2181350 (not c!1299163)) b!6999456))

(declare-fun m!7692852 () Bool)

(assert (=> b!6999456 m!7692852))

(declare-fun m!7692854 () Bool)

(assert (=> b!6999456 m!7692854))

(assert (=> d!2181148 d!2181350))

(declare-fun d!2181352 () Bool)

(declare-fun c!1299164 () Bool)

(assert (=> d!2181352 (= c!1299164 (is-Nil!67214 (_1!37240 lt!2494598)))))

(declare-fun e!4207190 () (Set C!34798))

(assert (=> d!2181352 (= (content!13309 (_1!37240 lt!2494598)) e!4207190)))

(declare-fun b!6999457 () Bool)

(assert (=> b!6999457 (= e!4207190 (as set.empty (Set C!34798)))))

(declare-fun b!6999458 () Bool)

(assert (=> b!6999458 (= e!4207190 (set.union (set.insert (h!73662 (_1!37240 lt!2494598)) (as set.empty (Set C!34798))) (content!13309 (t!381089 (_1!37240 lt!2494598)))))))

(assert (= (and d!2181352 c!1299164) b!6999457))

(assert (= (and d!2181352 (not c!1299164)) b!6999458))

(declare-fun m!7692856 () Bool)

(assert (=> b!6999458 m!7692856))

(declare-fun m!7692858 () Bool)

(assert (=> b!6999458 m!7692858))

(assert (=> d!2181148 d!2181352))

(declare-fun d!2181354 () Bool)

(declare-fun c!1299165 () Bool)

(assert (=> d!2181354 (= c!1299165 (is-Nil!67214 (_2!37240 lt!2494598)))))

(declare-fun e!4207191 () (Set C!34798))

(assert (=> d!2181354 (= (content!13309 (_2!37240 lt!2494598)) e!4207191)))

(declare-fun b!6999459 () Bool)

(assert (=> b!6999459 (= e!4207191 (as set.empty (Set C!34798)))))

(declare-fun b!6999460 () Bool)

(assert (=> b!6999460 (= e!4207191 (set.union (set.insert (h!73662 (_2!37240 lt!2494598)) (as set.empty (Set C!34798))) (content!13309 (t!381089 (_2!37240 lt!2494598)))))))

(assert (= (and d!2181354 c!1299165) b!6999459))

(assert (= (and d!2181354 (not c!1299165)) b!6999460))

(declare-fun m!7692860 () Bool)

(assert (=> b!6999460 m!7692860))

(declare-fun m!7692862 () Bool)

(assert (=> b!6999460 m!7692862))

(assert (=> d!2181148 d!2181354))

(declare-fun d!2181356 () Bool)

(declare-fun c!1299166 () Bool)

(assert (=> d!2181356 (= c!1299166 (isEmpty!39238 (tail!13297 (_1!37240 lt!2494598))))))

(declare-fun e!4207192 () Bool)

(assert (=> d!2181356 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 lt!2494598))) (tail!13297 (_1!37240 lt!2494598))) e!4207192)))

(declare-fun b!6999461 () Bool)

(assert (=> b!6999461 (= e!4207192 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 lt!2494598)))))))

(declare-fun b!6999462 () Bool)

(assert (=> b!6999462 (= e!4207192 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 lt!2494598))) (head!14137 (tail!13297 (_1!37240 lt!2494598)))) (tail!13297 (tail!13297 (_1!37240 lt!2494598)))))))

(assert (= (and d!2181356 c!1299166) b!6999461))

(assert (= (and d!2181356 (not c!1299166)) b!6999462))

(assert (=> d!2181356 m!7691848))

(declare-fun m!7692864 () Bool)

(assert (=> d!2181356 m!7692864))

(assert (=> b!6999461 m!7692182))

(declare-fun m!7692866 () Bool)

(assert (=> b!6999461 m!7692866))

(assert (=> b!6999462 m!7691848))

(declare-fun m!7692868 () Bool)

(assert (=> b!6999462 m!7692868))

(assert (=> b!6999462 m!7692182))

(assert (=> b!6999462 m!7692868))

(declare-fun m!7692870 () Bool)

(assert (=> b!6999462 m!7692870))

(assert (=> b!6999462 m!7691848))

(declare-fun m!7692872 () Bool)

(assert (=> b!6999462 m!7692872))

(assert (=> b!6999462 m!7692870))

(assert (=> b!6999462 m!7692872))

(declare-fun m!7692874 () Bool)

(assert (=> b!6999462 m!7692874))

(assert (=> b!6999080 d!2181356))

(declare-fun bs!1864158 () Bool)

(declare-fun d!2181358 () Bool)

(assert (= bs!1864158 (and d!2181358 d!2181322)))

(declare-fun lambda!404950 () Int)

(assert (=> bs!1864158 (= (= (head!14137 (_1!37240 lt!2494598)) (head!14137 (t!381089 s!7408))) (= lambda!404950 lambda!404947))))

(declare-fun bs!1864159 () Bool)

(assert (= bs!1864159 (and d!2181358 d!2181040)))

(assert (=> bs!1864159 (= (= (head!14137 (_1!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404950 lambda!404905))))

(declare-fun bs!1864160 () Bool)

(assert (= bs!1864160 (and d!2181358 b!6998841)))

(assert (=> bs!1864160 (= (= (head!14137 (_1!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404950 lambda!404840))))

(declare-fun bs!1864161 () Bool)

(assert (= bs!1864161 (and d!2181358 d!2181130)))

(assert (=> bs!1864161 (= (= (head!14137 (_1!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404950 lambda!404921))))

(declare-fun bs!1864162 () Bool)

(assert (= bs!1864162 (and d!2181358 d!2181312)))

(assert (=> bs!1864162 (= (= (head!14137 (_1!37240 lt!2494598)) (head!14137 lt!2494630)) (= lambda!404950 lambda!404946))))

(declare-fun bs!1864163 () Bool)

(assert (= bs!1864163 (and d!2181358 d!2181120)))

(assert (=> bs!1864163 (= (= (head!14137 (_1!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404950 lambda!404920))))

(assert (=> d!2181358 true))

(assert (=> d!2181358 (= (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 lt!2494598))) (flatMap!2250 lt!2494591 lambda!404950))))

(declare-fun bs!1864164 () Bool)

(assert (= bs!1864164 d!2181358))

(declare-fun m!7692876 () Bool)

(assert (=> bs!1864164 m!7692876))

(assert (=> b!6999080 d!2181358))

(declare-fun d!2181360 () Bool)

(assert (=> d!2181360 (= (head!14137 (_1!37240 lt!2494598)) (h!73662 (_1!37240 lt!2494598)))))

(assert (=> b!6999080 d!2181360))

(assert (=> b!6999080 d!2181034))

(declare-fun bs!1864165 () Bool)

(declare-fun d!2181362 () Bool)

(assert (= bs!1864165 (and d!2181362 d!2181308)))

(declare-fun lambda!404951 () Int)

(assert (=> bs!1864165 (= lambda!404951 lambda!404945)))

(declare-fun bs!1864166 () Bool)

(assert (= bs!1864166 (and d!2181362 d!2181092)))

(assert (=> bs!1864166 (not (= lambda!404951 lambda!404916))))

(declare-fun bs!1864167 () Bool)

(assert (= bs!1864167 (and d!2181362 d!2181100)))

(assert (=> bs!1864167 (not (= lambda!404951 lambda!404919))))

(declare-fun bs!1864168 () Bool)

(assert (= bs!1864168 (and d!2181362 b!6998816)))

(assert (=> bs!1864168 (not (= lambda!404951 lambda!404837))))

(declare-fun bs!1864169 () Bool)

(assert (= bs!1864169 (and d!2181362 d!2181330)))

(assert (=> bs!1864169 (= lambda!404951 lambda!404948)))

(assert (=> d!2181362 (= (nullableZipper!2459 lt!2494619) (exists!3079 lt!2494619 lambda!404951))))

(declare-fun bs!1864170 () Bool)

(assert (= bs!1864170 d!2181362))

(declare-fun m!7692878 () Bool)

(assert (=> bs!1864170 m!7692878))

(assert (=> b!6999215 d!2181362))

(declare-fun d!2181364 () Bool)

(assert (=> d!2181364 (= (nullable!7024 (h!73661 (exprs!6760 lt!2494627))) (nullableFct!2656 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun bs!1864171 () Bool)

(assert (= bs!1864171 d!2181364))

(declare-fun m!7692880 () Bool)

(assert (=> bs!1864171 m!7692880))

(assert (=> b!6999095 d!2181364))

(assert (=> b!6999217 d!2181134))

(declare-fun d!2181366 () Bool)

(assert (=> d!2181366 (= (isDefined!13470 lt!2494843) (not (isEmpty!39241 lt!2494843)))))

(declare-fun bs!1864172 () Bool)

(assert (= bs!1864172 d!2181366))

(declare-fun m!7692882 () Bool)

(assert (=> bs!1864172 m!7692882))

(assert (=> d!2181074 d!2181366))

(declare-fun d!2181368 () Bool)

(declare-fun c!1299167 () Bool)

(assert (=> d!2181368 (= c!1299167 (isEmpty!39238 Nil!67214))))

(declare-fun e!4207193 () Bool)

(assert (=> d!2181368 (= (matchZipper!2804 lt!2494591 Nil!67214) e!4207193)))

(declare-fun b!6999463 () Bool)

(assert (=> b!6999463 (= e!4207193 (nullableZipper!2459 lt!2494591))))

(declare-fun b!6999464 () Bool)

(assert (=> b!6999464 (= e!4207193 (matchZipper!2804 (derivationStepZipper!2744 lt!2494591 (head!14137 Nil!67214)) (tail!13297 Nil!67214)))))

(assert (= (and d!2181368 c!1299167) b!6999463))

(assert (= (and d!2181368 (not c!1299167)) b!6999464))

(declare-fun m!7692884 () Bool)

(assert (=> d!2181368 m!7692884))

(assert (=> b!6999463 m!7692178))

(declare-fun m!7692886 () Bool)

(assert (=> b!6999464 m!7692886))

(assert (=> b!6999464 m!7692886))

(declare-fun m!7692888 () Bool)

(assert (=> b!6999464 m!7692888))

(declare-fun m!7692890 () Bool)

(assert (=> b!6999464 m!7692890))

(assert (=> b!6999464 m!7692888))

(assert (=> b!6999464 m!7692890))

(declare-fun m!7692892 () Bool)

(assert (=> b!6999464 m!7692892))

(assert (=> d!2181074 d!2181368))

(declare-fun b!6999465 () Bool)

(declare-fun e!4207195 () List!67338)

(assert (=> b!6999465 (= e!4207195 s!7408)))

(declare-fun b!6999466 () Bool)

(assert (=> b!6999466 (= e!4207195 (Cons!67214 (h!73662 Nil!67214) (++!15229 (t!381089 Nil!67214) s!7408)))))

(declare-fun b!6999467 () Bool)

(declare-fun res!2855235 () Bool)

(declare-fun e!4207194 () Bool)

(assert (=> b!6999467 (=> (not res!2855235) (not e!4207194))))

(declare-fun lt!2494956 () List!67338)

(assert (=> b!6999467 (= res!2855235 (= (size!40935 lt!2494956) (+ (size!40935 Nil!67214) (size!40935 s!7408))))))

(declare-fun b!6999468 () Bool)

(assert (=> b!6999468 (= e!4207194 (or (not (= s!7408 Nil!67214)) (= lt!2494956 Nil!67214)))))

(declare-fun d!2181370 () Bool)

(assert (=> d!2181370 e!4207194))

(declare-fun res!2855236 () Bool)

(assert (=> d!2181370 (=> (not res!2855236) (not e!4207194))))

(assert (=> d!2181370 (= res!2855236 (= (content!13309 lt!2494956) (set.union (content!13309 Nil!67214) (content!13309 s!7408))))))

(assert (=> d!2181370 (= lt!2494956 e!4207195)))

(declare-fun c!1299168 () Bool)

(assert (=> d!2181370 (= c!1299168 (is-Nil!67214 Nil!67214))))

(assert (=> d!2181370 (= (++!15229 Nil!67214 s!7408) lt!2494956)))

(assert (= (and d!2181370 c!1299168) b!6999465))

(assert (= (and d!2181370 (not c!1299168)) b!6999466))

(assert (= (and d!2181370 res!2855236) b!6999467))

(assert (= (and b!6999467 res!2855235) b!6999468))

(declare-fun m!7692894 () Bool)

(assert (=> b!6999466 m!7692894))

(declare-fun m!7692896 () Bool)

(assert (=> b!6999467 m!7692896))

(declare-fun m!7692898 () Bool)

(assert (=> b!6999467 m!7692898))

(declare-fun m!7692900 () Bool)

(assert (=> b!6999467 m!7692900))

(declare-fun m!7692902 () Bool)

(assert (=> d!2181370 m!7692902))

(declare-fun m!7692904 () Bool)

(assert (=> d!2181370 m!7692904))

(declare-fun m!7692906 () Bool)

(assert (=> d!2181370 m!7692906))

(assert (=> d!2181074 d!2181370))

(declare-fun d!2181372 () Bool)

(assert (=> d!2181372 (= ($colon$colon!2503 (exprs!6760 lt!2494627) (ite (or c!1299045 c!1299044) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613)))) (Cons!67213 (ite (or c!1299045 c!1299044) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613))) (exprs!6760 lt!2494627)))))

(assert (=> bm!635461 d!2181372))

(declare-fun b!6999471 () Bool)

(declare-fun res!2855238 () Bool)

(declare-fun e!4207197 () Bool)

(assert (=> b!6999471 (=> (not res!2855238) (not e!4207197))))

(declare-fun lt!2494957 () List!67337)

(assert (=> b!6999471 (= res!2855238 (= (size!40933 lt!2494957) (+ (size!40933 (t!381088 (exprs!6760 lt!2494613))) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999470 () Bool)

(declare-fun e!4207196 () List!67337)

(assert (=> b!6999470 (= e!4207196 (Cons!67213 (h!73661 (t!381088 (exprs!6760 lt!2494613))) (++!15230 (t!381088 (t!381088 (exprs!6760 lt!2494613))) (exprs!6760 ct2!306))))))

(declare-fun d!2181374 () Bool)

(assert (=> d!2181374 e!4207197))

(declare-fun res!2855237 () Bool)

(assert (=> d!2181374 (=> (not res!2855237) (not e!4207197))))

(assert (=> d!2181374 (= res!2855237 (= (content!13306 lt!2494957) (set.union (content!13306 (t!381088 (exprs!6760 lt!2494613))) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181374 (= lt!2494957 e!4207196)))

(declare-fun c!1299169 () Bool)

(assert (=> d!2181374 (= c!1299169 (is-Nil!67213 (t!381088 (exprs!6760 lt!2494613))))))

(assert (=> d!2181374 (= (++!15230 (t!381088 (exprs!6760 lt!2494613)) (exprs!6760 ct2!306)) lt!2494957)))

(declare-fun b!6999469 () Bool)

(assert (=> b!6999469 (= e!4207196 (exprs!6760 ct2!306))))

(declare-fun b!6999472 () Bool)

(assert (=> b!6999472 (= e!4207197 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494957 (t!381088 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181374 c!1299169) b!6999469))

(assert (= (and d!2181374 (not c!1299169)) b!6999470))

(assert (= (and d!2181374 res!2855237) b!6999471))

(assert (= (and b!6999471 res!2855238) b!6999472))

(declare-fun m!7692908 () Bool)

(assert (=> b!6999471 m!7692908))

(declare-fun m!7692910 () Bool)

(assert (=> b!6999471 m!7692910))

(assert (=> b!6999471 m!7692106))

(declare-fun m!7692912 () Bool)

(assert (=> b!6999470 m!7692912))

(declare-fun m!7692914 () Bool)

(assert (=> d!2181374 m!7692914))

(declare-fun m!7692916 () Bool)

(assert (=> d!2181374 m!7692916))

(assert (=> d!2181374 m!7692114))

(assert (=> b!6999184 d!2181374))

(assert (=> d!2181076 d!2181064))

(declare-fun d!2181376 () Bool)

(declare-fun res!2855243 () Bool)

(declare-fun e!4207202 () Bool)

(assert (=> d!2181376 (=> res!2855243 e!4207202)))

(assert (=> d!2181376 (= res!2855243 (is-Nil!67215 lt!2494638))))

(assert (=> d!2181376 (= (forall!16179 lt!2494638 lambda!404919) e!4207202)))

(declare-fun b!6999477 () Bool)

(declare-fun e!4207203 () Bool)

(assert (=> b!6999477 (= e!4207202 e!4207203)))

(declare-fun res!2855244 () Bool)

(assert (=> b!6999477 (=> (not res!2855244) (not e!4207203))))

(assert (=> b!6999477 (= res!2855244 (dynLambda!26989 lambda!404919 (h!73663 lt!2494638)))))

(declare-fun b!6999478 () Bool)

(assert (=> b!6999478 (= e!4207203 (forall!16179 (t!381090 lt!2494638) lambda!404919))))

(assert (= (and d!2181376 (not res!2855243)) b!6999477))

(assert (= (and b!6999477 res!2855244) b!6999478))

(declare-fun b_lambda!263531 () Bool)

(assert (=> (not b_lambda!263531) (not b!6999477)))

(declare-fun m!7692918 () Bool)

(assert (=> b!6999477 m!7692918))

(declare-fun m!7692920 () Bool)

(assert (=> b!6999478 m!7692920))

(assert (=> d!2181100 d!2181376))

(declare-fun d!2181378 () Bool)

(assert (=> d!2181378 (= (isEmpty!39238 (t!381089 s!7408)) (is-Nil!67214 (t!381089 s!7408)))))

(assert (=> d!2181152 d!2181378))

(declare-fun d!2181380 () Bool)

(assert (=> d!2181380 (= (flatMap!2250 lt!2494582 lambda!404921) (choose!52452 lt!2494582 lambda!404921))))

(declare-fun bs!1864173 () Bool)

(assert (= bs!1864173 d!2181380))

(declare-fun m!7692922 () Bool)

(assert (=> bs!1864173 m!7692922))

(assert (=> d!2181130 d!2181380))

(declare-fun d!2181382 () Bool)

(declare-fun c!1299170 () Bool)

(assert (=> d!2181382 (= c!1299170 (isEmpty!39238 (tail!13297 lt!2494630)))))

(declare-fun e!4207204 () Bool)

(assert (=> d!2181382 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494625 (head!14137 lt!2494630)) (tail!13297 lt!2494630)) e!4207204)))

(declare-fun b!6999479 () Bool)

(assert (=> b!6999479 (= e!4207204 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494625 (head!14137 lt!2494630))))))

(declare-fun b!6999480 () Bool)

(assert (=> b!6999480 (= e!4207204 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494625 (head!14137 lt!2494630)) (head!14137 (tail!13297 lt!2494630))) (tail!13297 (tail!13297 lt!2494630))))))

(assert (= (and d!2181382 c!1299170) b!6999479))

(assert (= (and d!2181382 (not c!1299170)) b!6999480))

(assert (=> d!2181382 m!7692060))

(assert (=> d!2181382 m!7692772))

(assert (=> b!6999479 m!7692138))

(declare-fun m!7692924 () Bool)

(assert (=> b!6999479 m!7692924))

(assert (=> b!6999480 m!7692060))

(assert (=> b!6999480 m!7692776))

(assert (=> b!6999480 m!7692138))

(assert (=> b!6999480 m!7692776))

(declare-fun m!7692926 () Bool)

(assert (=> b!6999480 m!7692926))

(assert (=> b!6999480 m!7692060))

(assert (=> b!6999480 m!7692780))

(assert (=> b!6999480 m!7692926))

(assert (=> b!6999480 m!7692780))

(declare-fun m!7692928 () Bool)

(assert (=> b!6999480 m!7692928))

(assert (=> b!6999051 d!2181382))

(declare-fun bs!1864174 () Bool)

(declare-fun d!2181384 () Bool)

(assert (= bs!1864174 (and d!2181384 d!2181322)))

(declare-fun lambda!404952 () Int)

(assert (=> bs!1864174 (= (= (head!14137 lt!2494630) (head!14137 (t!381089 s!7408))) (= lambda!404952 lambda!404947))))

(declare-fun bs!1864175 () Bool)

(assert (= bs!1864175 (and d!2181384 d!2181040)))

(assert (=> bs!1864175 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404952 lambda!404905))))

(declare-fun bs!1864176 () Bool)

(assert (= bs!1864176 (and d!2181384 b!6998841)))

(assert (=> bs!1864176 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404952 lambda!404840))))

(declare-fun bs!1864177 () Bool)

(assert (= bs!1864177 (and d!2181384 d!2181130)))

(assert (=> bs!1864177 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404952 lambda!404921))))

(declare-fun bs!1864178 () Bool)

(assert (= bs!1864178 (and d!2181384 d!2181120)))

(assert (=> bs!1864178 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404952 lambda!404920))))

(declare-fun bs!1864179 () Bool)

(assert (= bs!1864179 (and d!2181384 d!2181312)))

(assert (=> bs!1864179 (= lambda!404952 lambda!404946)))

(declare-fun bs!1864180 () Bool)

(assert (= bs!1864180 (and d!2181384 d!2181358)))

(assert (=> bs!1864180 (= (= (head!14137 lt!2494630) (head!14137 (_1!37240 lt!2494598))) (= lambda!404952 lambda!404950))))

(assert (=> d!2181384 true))

(assert (=> d!2181384 (= (derivationStepZipper!2744 lt!2494625 (head!14137 lt!2494630)) (flatMap!2250 lt!2494625 lambda!404952))))

(declare-fun bs!1864181 () Bool)

(assert (= bs!1864181 d!2181384))

(declare-fun m!7692930 () Bool)

(assert (=> bs!1864181 m!7692930))

(assert (=> b!6999051 d!2181384))

(assert (=> b!6999051 d!2181314))

(assert (=> b!6999051 d!2181316))

(declare-fun d!2181386 () Bool)

(declare-fun c!1299171 () Bool)

(assert (=> d!2181386 (= c!1299171 (isEmpty!39238 (t!381089 s!7408)))))

(declare-fun e!4207205 () Bool)

(assert (=> d!2181386 (= (matchZipper!2804 (set.union lt!2494614 lt!2494611) (t!381089 s!7408)) e!4207205)))

(declare-fun b!6999481 () Bool)

(assert (=> b!6999481 (= e!4207205 (nullableZipper!2459 (set.union lt!2494614 lt!2494611)))))

(declare-fun b!6999482 () Bool)

(assert (=> b!6999482 (= e!4207205 (matchZipper!2804 (derivationStepZipper!2744 (set.union lt!2494614 lt!2494611) (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))))))

(assert (= (and d!2181386 c!1299171) b!6999481))

(assert (= (and d!2181386 (not c!1299171)) b!6999482))

(assert (=> d!2181386 m!7692306))

(declare-fun m!7692932 () Bool)

(assert (=> b!6999481 m!7692932))

(assert (=> b!6999482 m!7692310))

(assert (=> b!6999482 m!7692310))

(declare-fun m!7692934 () Bool)

(assert (=> b!6999482 m!7692934))

(assert (=> b!6999482 m!7692314))

(assert (=> b!6999482 m!7692934))

(assert (=> b!6999482 m!7692314))

(declare-fun m!7692936 () Bool)

(assert (=> b!6999482 m!7692936))

(assert (=> d!2181158 d!2181386))

(assert (=> d!2181158 d!2181152))

(declare-fun e!4207208 () Bool)

(declare-fun d!2181388 () Bool)

(assert (=> d!2181388 (= (matchZipper!2804 (set.union lt!2494614 lt!2494611) (t!381089 s!7408)) e!4207208)))

(declare-fun res!2855247 () Bool)

(assert (=> d!2181388 (=> res!2855247 e!4207208)))

(assert (=> d!2181388 (= res!2855247 (matchZipper!2804 lt!2494614 (t!381089 s!7408)))))

(assert (=> d!2181388 true))

(declare-fun _$48!2441 () Unit!161186)

(assert (=> d!2181388 (= (choose!52449 lt!2494614 lt!2494611 (t!381089 s!7408)) _$48!2441)))

(declare-fun b!6999485 () Bool)

(assert (=> b!6999485 (= e!4207208 (matchZipper!2804 lt!2494611 (t!381089 s!7408)))))

(assert (= (and d!2181388 (not res!2855247)) b!6999485))

(assert (=> d!2181388 m!7692418))

(assert (=> d!2181388 m!7691878))

(assert (=> b!6999485 m!7691794))

(assert (=> d!2181158 d!2181388))

(declare-fun d!2181390 () Bool)

(declare-fun c!1299172 () Bool)

(assert (=> d!2181390 (= c!1299172 (isEmpty!39238 (tail!13297 s!7408)))))

(declare-fun e!4207209 () Bool)

(assert (=> d!2181390 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494582 (head!14137 s!7408)) (tail!13297 s!7408)) e!4207209)))

(declare-fun b!6999486 () Bool)

(assert (=> b!6999486 (= e!4207209 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494582 (head!14137 s!7408))))))

(declare-fun b!6999487 () Bool)

(assert (=> b!6999487 (= e!4207209 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494582 (head!14137 s!7408)) (head!14137 (tail!13297 s!7408))) (tail!13297 (tail!13297 s!7408))))))

(assert (= (and d!2181390 c!1299172) b!6999486))

(assert (= (and d!2181390 (not c!1299172)) b!6999487))

(assert (=> d!2181390 m!7692194))

(declare-fun m!7692938 () Bool)

(assert (=> d!2181390 m!7692938))

(assert (=> b!6999486 m!7692364))

(declare-fun m!7692940 () Bool)

(assert (=> b!6999486 m!7692940))

(assert (=> b!6999487 m!7692194))

(declare-fun m!7692942 () Bool)

(assert (=> b!6999487 m!7692942))

(assert (=> b!6999487 m!7692364))

(assert (=> b!6999487 m!7692942))

(declare-fun m!7692944 () Bool)

(assert (=> b!6999487 m!7692944))

(assert (=> b!6999487 m!7692194))

(declare-fun m!7692946 () Bool)

(assert (=> b!6999487 m!7692946))

(assert (=> b!6999487 m!7692944))

(assert (=> b!6999487 m!7692946))

(declare-fun m!7692948 () Bool)

(assert (=> b!6999487 m!7692948))

(assert (=> b!6999192 d!2181390))

(declare-fun bs!1864182 () Bool)

(declare-fun d!2181392 () Bool)

(assert (= bs!1864182 (and d!2181392 d!2181322)))

(declare-fun lambda!404953 () Int)

(assert (=> bs!1864182 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404953 lambda!404947))))

(declare-fun bs!1864183 () Bool)

(assert (= bs!1864183 (and d!2181392 d!2181384)))

(assert (=> bs!1864183 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404953 lambda!404952))))

(declare-fun bs!1864184 () Bool)

(assert (= bs!1864184 (and d!2181392 d!2181040)))

(assert (=> bs!1864184 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404953 lambda!404905))))

(declare-fun bs!1864185 () Bool)

(assert (= bs!1864185 (and d!2181392 b!6998841)))

(assert (=> bs!1864185 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404953 lambda!404840))))

(declare-fun bs!1864186 () Bool)

(assert (= bs!1864186 (and d!2181392 d!2181130)))

(assert (=> bs!1864186 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404953 lambda!404921))))

(declare-fun bs!1864187 () Bool)

(assert (= bs!1864187 (and d!2181392 d!2181120)))

(assert (=> bs!1864187 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404953 lambda!404920))))

(declare-fun bs!1864188 () Bool)

(assert (= bs!1864188 (and d!2181392 d!2181312)))

(assert (=> bs!1864188 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404953 lambda!404946))))

(declare-fun bs!1864189 () Bool)

(assert (= bs!1864189 (and d!2181392 d!2181358)))

(assert (=> bs!1864189 (= (= (head!14137 s!7408) (head!14137 (_1!37240 lt!2494598))) (= lambda!404953 lambda!404950))))

(assert (=> d!2181392 true))

(assert (=> d!2181392 (= (derivationStepZipper!2744 lt!2494582 (head!14137 s!7408)) (flatMap!2250 lt!2494582 lambda!404953))))

(declare-fun bs!1864190 () Bool)

(assert (= bs!1864190 d!2181392))

(declare-fun m!7692950 () Bool)

(assert (=> bs!1864190 m!7692950))

(assert (=> b!6999192 d!2181392))

(declare-fun d!2181394 () Bool)

(assert (=> d!2181394 (= (head!14137 s!7408) (h!73662 s!7408))))

(assert (=> b!6999192 d!2181394))

(declare-fun d!2181396 () Bool)

(assert (=> d!2181396 (= (tail!13297 s!7408) (t!381089 s!7408))))

(assert (=> b!6999192 d!2181396))

(assert (=> bs!1864082 d!2181122))

(declare-fun bs!1864191 () Bool)

(declare-fun d!2181398 () Bool)

(assert (= bs!1864191 (and d!2181398 d!2181308)))

(declare-fun lambda!404954 () Int)

(assert (=> bs!1864191 (= lambda!404954 lambda!404945)))

(declare-fun bs!1864192 () Bool)

(assert (= bs!1864192 (and d!2181398 d!2181092)))

(assert (=> bs!1864192 (not (= lambda!404954 lambda!404916))))

(declare-fun bs!1864193 () Bool)

(assert (= bs!1864193 (and d!2181398 d!2181362)))

(assert (=> bs!1864193 (= lambda!404954 lambda!404951)))

(declare-fun bs!1864194 () Bool)

(assert (= bs!1864194 (and d!2181398 d!2181100)))

(assert (=> bs!1864194 (not (= lambda!404954 lambda!404919))))

(declare-fun bs!1864195 () Bool)

(assert (= bs!1864195 (and d!2181398 b!6998816)))

(assert (=> bs!1864195 (not (= lambda!404954 lambda!404837))))

(declare-fun bs!1864196 () Bool)

(assert (= bs!1864196 (and d!2181398 d!2181330)))

(assert (=> bs!1864196 (= lambda!404954 lambda!404948)))

(assert (=> d!2181398 (= (nullableZipper!2459 lt!2494580) (exists!3079 lt!2494580 lambda!404954))))

(declare-fun bs!1864197 () Bool)

(assert (= bs!1864197 d!2181398))

(declare-fun m!7692952 () Bool)

(assert (=> bs!1864197 m!7692952))

(assert (=> b!6999081 d!2181398))

(declare-fun d!2181400 () Bool)

(declare-fun res!2855252 () Bool)

(declare-fun e!4207214 () Bool)

(assert (=> d!2181400 (=> res!2855252 e!4207214)))

(assert (=> d!2181400 (= res!2855252 (is-Nil!67213 (exprs!6760 ct2!306)))))

(assert (=> d!2181400 (= (forall!16178 (exprs!6760 ct2!306) lambda!404913) e!4207214)))

(declare-fun b!6999492 () Bool)

(declare-fun e!4207215 () Bool)

(assert (=> b!6999492 (= e!4207214 e!4207215)))

(declare-fun res!2855253 () Bool)

(assert (=> b!6999492 (=> (not res!2855253) (not e!4207215))))

(declare-fun dynLambda!26996 (Int Regex!17264) Bool)

(assert (=> b!6999492 (= res!2855253 (dynLambda!26996 lambda!404913 (h!73661 (exprs!6760 ct2!306))))))

(declare-fun b!6999493 () Bool)

(assert (=> b!6999493 (= e!4207215 (forall!16178 (t!381088 (exprs!6760 ct2!306)) lambda!404913))))

(assert (= (and d!2181400 (not res!2855252)) b!6999492))

(assert (= (and b!6999492 res!2855253) b!6999493))

(declare-fun b_lambda!263533 () Bool)

(assert (=> (not b_lambda!263533) (not b!6999492)))

(declare-fun m!7692954 () Bool)

(assert (=> b!6999492 m!7692954))

(declare-fun m!7692956 () Bool)

(assert (=> b!6999493 m!7692956))

(assert (=> d!2181084 d!2181400))

(declare-fun d!2181402 () Bool)

(assert (=> d!2181402 (= (isEmpty!39238 lt!2494630) (is-Nil!67214 lt!2494630))))

(assert (=> d!2181066 d!2181402))

(declare-fun d!2181404 () Bool)

(assert (=> d!2181404 (= (isEmpty!39241 lt!2494585) (not (is-Some!16768 lt!2494585)))))

(assert (=> d!2181072 d!2181404))

(declare-fun d!2181406 () Bool)

(assert (=> d!2181406 (= (isEmpty!39238 s!7408) (is-Nil!67214 s!7408))))

(assert (=> d!2181146 d!2181406))

(declare-fun d!2181408 () Bool)

(declare-fun c!1299175 () Bool)

(assert (=> d!2181408 (= c!1299175 (is-Nil!67213 lt!2494874))))

(declare-fun e!4207218 () (Set Regex!17264))

(assert (=> d!2181408 (= (content!13306 lt!2494874) e!4207218)))

(declare-fun b!6999498 () Bool)

(assert (=> b!6999498 (= e!4207218 (as set.empty (Set Regex!17264)))))

(declare-fun b!6999499 () Bool)

(assert (=> b!6999499 (= e!4207218 (set.union (set.insert (h!73661 lt!2494874) (as set.empty (Set Regex!17264))) (content!13306 (t!381088 lt!2494874))))))

(assert (= (and d!2181408 c!1299175) b!6999498))

(assert (= (and d!2181408 (not c!1299175)) b!6999499))

(declare-fun m!7692958 () Bool)

(assert (=> b!6999499 m!7692958))

(declare-fun m!7692960 () Bool)

(assert (=> b!6999499 m!7692960))

(assert (=> d!2181140 d!2181408))

(declare-fun d!2181410 () Bool)

(declare-fun c!1299176 () Bool)

(assert (=> d!2181410 (= c!1299176 (is-Nil!67213 (exprs!6760 lt!2494613)))))

(declare-fun e!4207219 () (Set Regex!17264))

(assert (=> d!2181410 (= (content!13306 (exprs!6760 lt!2494613)) e!4207219)))

(declare-fun b!6999500 () Bool)

(assert (=> b!6999500 (= e!4207219 (as set.empty (Set Regex!17264)))))

(declare-fun b!6999501 () Bool)

(assert (=> b!6999501 (= e!4207219 (set.union (set.insert (h!73661 (exprs!6760 lt!2494613)) (as set.empty (Set Regex!17264))) (content!13306 (t!381088 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181410 c!1299176) b!6999500))

(assert (= (and d!2181410 (not c!1299176)) b!6999501))

(declare-fun m!7692962 () Bool)

(assert (=> b!6999501 m!7692962))

(assert (=> b!6999501 m!7692916))

(assert (=> d!2181140 d!2181410))

(declare-fun d!2181412 () Bool)

(declare-fun c!1299177 () Bool)

(assert (=> d!2181412 (= c!1299177 (is-Nil!67213 (exprs!6760 ct2!306)))))

(declare-fun e!4207220 () (Set Regex!17264))

(assert (=> d!2181412 (= (content!13306 (exprs!6760 ct2!306)) e!4207220)))

(declare-fun b!6999502 () Bool)

(assert (=> b!6999502 (= e!4207220 (as set.empty (Set Regex!17264)))))

(declare-fun b!6999503 () Bool)

(assert (=> b!6999503 (= e!4207220 (set.union (set.insert (h!73661 (exprs!6760 ct2!306)) (as set.empty (Set Regex!17264))) (content!13306 (t!381088 (exprs!6760 ct2!306)))))))

(assert (= (and d!2181412 c!1299177) b!6999502))

(assert (= (and d!2181412 (not c!1299177)) b!6999503))

(declare-fun m!7692964 () Bool)

(assert (=> b!6999503 m!7692964))

(declare-fun m!7692966 () Bool)

(assert (=> b!6999503 m!7692966))

(assert (=> d!2181140 d!2181412))

(declare-fun d!2181414 () Bool)

(assert (=> d!2181414 true))

(declare-fun setRes!48070 () Bool)

(assert (=> d!2181414 setRes!48070))

(declare-fun condSetEmpty!48070 () Bool)

(declare-fun res!2855256 () (Set Context!12520))

(assert (=> d!2181414 (= condSetEmpty!48070 (= res!2855256 (as set.empty (Set Context!12520))))))

(assert (=> d!2181414 (= (choose!52452 lt!2494608 lambda!404840) res!2855256)))

(declare-fun setIsEmpty!48070 () Bool)

(assert (=> setIsEmpty!48070 setRes!48070))

(declare-fun setElem!48070 () Context!12520)

(declare-fun tp!1930943 () Bool)

(declare-fun e!4207223 () Bool)

(declare-fun setNonEmpty!48070 () Bool)

(assert (=> setNonEmpty!48070 (= setRes!48070 (and tp!1930943 (inv!86020 setElem!48070) e!4207223))))

(declare-fun setRest!48070 () (Set Context!12520))

(assert (=> setNonEmpty!48070 (= res!2855256 (set.union (set.insert setElem!48070 (as set.empty (Set Context!12520))) setRest!48070))))

(declare-fun b!6999506 () Bool)

(declare-fun tp!1930944 () Bool)

(assert (=> b!6999506 (= e!4207223 tp!1930944)))

(assert (= (and d!2181414 condSetEmpty!48070) setIsEmpty!48070))

(assert (= (and d!2181414 (not condSetEmpty!48070)) setNonEmpty!48070))

(assert (= setNonEmpty!48070 b!6999506))

(declare-fun m!7692968 () Bool)

(assert (=> setNonEmpty!48070 m!7692968))

(assert (=> d!2181048 d!2181414))

(declare-fun d!2181416 () Bool)

(declare-fun lt!2494958 () Int)

(assert (=> d!2181416 (>= lt!2494958 0)))

(declare-fun e!4207224 () Int)

(assert (=> d!2181416 (= lt!2494958 e!4207224)))

(declare-fun c!1299178 () Bool)

(assert (=> d!2181416 (= c!1299178 (is-Cons!67213 (exprs!6760 (h!73663 lt!2494620))))))

(assert (=> d!2181416 (= (contextDepthTotal!457 (h!73663 lt!2494620)) lt!2494958)))

(declare-fun b!6999507 () Bool)

(assert (=> b!6999507 (= e!4207224 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 (h!73663 lt!2494620)))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 (h!73663 lt!2494620)))))))))

(declare-fun b!6999508 () Bool)

(assert (=> b!6999508 (= e!4207224 1)))

(assert (= (and d!2181416 c!1299178) b!6999507))

(assert (= (and d!2181416 (not c!1299178)) b!6999508))

(declare-fun m!7692970 () Bool)

(assert (=> b!6999507 m!7692970))

(declare-fun m!7692972 () Bool)

(assert (=> b!6999507 m!7692972))

(assert (=> b!6999150 d!2181416))

(declare-fun d!2181418 () Bool)

(declare-fun lt!2494959 () Int)

(assert (=> d!2181418 (>= lt!2494959 0)))

(declare-fun e!4207225 () Int)

(assert (=> d!2181418 (= lt!2494959 e!4207225)))

(declare-fun c!1299179 () Bool)

(assert (=> d!2181418 (= c!1299179 (is-Cons!67215 (t!381090 lt!2494620)))))

(assert (=> d!2181418 (= (zipperDepthTotal!485 (t!381090 lt!2494620)) lt!2494959)))

(declare-fun b!6999509 () Bool)

(assert (=> b!6999509 (= e!4207225 (+ (contextDepthTotal!457 (h!73663 (t!381090 lt!2494620))) (zipperDepthTotal!485 (t!381090 (t!381090 lt!2494620)))))))

(declare-fun b!6999510 () Bool)

(assert (=> b!6999510 (= e!4207225 0)))

(assert (= (and d!2181418 c!1299179) b!6999509))

(assert (= (and d!2181418 (not c!1299179)) b!6999510))

(declare-fun m!7692974 () Bool)

(assert (=> b!6999509 m!7692974))

(declare-fun m!7692976 () Bool)

(assert (=> b!6999509 m!7692976))

(assert (=> b!6999150 d!2181418))

(declare-fun b!6999511 () Bool)

(declare-fun e!4207227 () List!67338)

(assert (=> b!6999511 (= e!4207227 (t!381089 s!7408))))

(declare-fun b!6999512 () Bool)

(assert (=> b!6999512 (= e!4207227 (Cons!67214 (h!73662 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))) (++!15229 (t!381089 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))) (t!381089 s!7408))))))

(declare-fun b!6999513 () Bool)

(declare-fun res!2855257 () Bool)

(declare-fun e!4207226 () Bool)

(assert (=> b!6999513 (=> (not res!2855257) (not e!4207226))))

(declare-fun lt!2494960 () List!67338)

(assert (=> b!6999513 (= res!2855257 (= (size!40935 lt!2494960) (+ (size!40935 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))) (size!40935 (t!381089 s!7408)))))))

(declare-fun b!6999514 () Bool)

(assert (=> b!6999514 (= e!4207226 (or (not (= (t!381089 s!7408) Nil!67214)) (= lt!2494960 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)))))))

(declare-fun d!2181420 () Bool)

(assert (=> d!2181420 e!4207226))

(declare-fun res!2855258 () Bool)

(assert (=> d!2181420 (=> (not res!2855258) (not e!4207226))))

(assert (=> d!2181420 (= res!2855258 (= (content!13309 lt!2494960) (set.union (content!13309 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))) (content!13309 (t!381089 s!7408)))))))

(assert (=> d!2181420 (= lt!2494960 e!4207227)))

(declare-fun c!1299180 () Bool)

(assert (=> d!2181420 (= c!1299180 (is-Nil!67214 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))))))

(assert (=> d!2181420 (= (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408)) lt!2494960)))

(assert (= (and d!2181420 c!1299180) b!6999511))

(assert (= (and d!2181420 (not c!1299180)) b!6999512))

(assert (= (and d!2181420 res!2855258) b!6999513))

(assert (= (and b!6999513 res!2855257) b!6999514))

(declare-fun m!7692978 () Bool)

(assert (=> b!6999512 m!7692978))

(declare-fun m!7692980 () Bool)

(assert (=> b!6999513 m!7692980))

(assert (=> b!6999513 m!7692162))

(declare-fun m!7692982 () Bool)

(assert (=> b!6999513 m!7692982))

(declare-fun m!7692984 () Bool)

(assert (=> b!6999513 m!7692984))

(declare-fun m!7692986 () Bool)

(assert (=> d!2181420 m!7692986))

(assert (=> d!2181420 m!7692162))

(declare-fun m!7692988 () Bool)

(assert (=> d!2181420 m!7692988))

(declare-fun m!7692990 () Bool)

(assert (=> d!2181420 m!7692990))

(assert (=> b!6999073 d!2181420))

(declare-fun b!6999515 () Bool)

(declare-fun e!4207229 () List!67338)

(assert (=> b!6999515 (= e!4207229 (Cons!67214 (h!73662 s!7408) Nil!67214))))

(declare-fun b!6999516 () Bool)

(assert (=> b!6999516 (= e!4207229 (Cons!67214 (h!73662 Nil!67214) (++!15229 (t!381089 Nil!67214) (Cons!67214 (h!73662 s!7408) Nil!67214))))))

(declare-fun b!6999517 () Bool)

(declare-fun res!2855259 () Bool)

(declare-fun e!4207228 () Bool)

(assert (=> b!6999517 (=> (not res!2855259) (not e!4207228))))

(declare-fun lt!2494961 () List!67338)

(assert (=> b!6999517 (= res!2855259 (= (size!40935 lt!2494961) (+ (size!40935 Nil!67214) (size!40935 (Cons!67214 (h!73662 s!7408) Nil!67214)))))))

(declare-fun b!6999518 () Bool)

(assert (=> b!6999518 (= e!4207228 (or (not (= (Cons!67214 (h!73662 s!7408) Nil!67214) Nil!67214)) (= lt!2494961 Nil!67214)))))

(declare-fun d!2181422 () Bool)

(assert (=> d!2181422 e!4207228))

(declare-fun res!2855260 () Bool)

(assert (=> d!2181422 (=> (not res!2855260) (not e!4207228))))

(assert (=> d!2181422 (= res!2855260 (= (content!13309 lt!2494961) (set.union (content!13309 Nil!67214) (content!13309 (Cons!67214 (h!73662 s!7408) Nil!67214)))))))

(assert (=> d!2181422 (= lt!2494961 e!4207229)))

(declare-fun c!1299181 () Bool)

(assert (=> d!2181422 (= c!1299181 (is-Nil!67214 Nil!67214))))

(assert (=> d!2181422 (= (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) lt!2494961)))

(assert (= (and d!2181422 c!1299181) b!6999515))

(assert (= (and d!2181422 (not c!1299181)) b!6999516))

(assert (= (and d!2181422 res!2855260) b!6999517))

(assert (= (and b!6999517 res!2855259) b!6999518))

(declare-fun m!7692992 () Bool)

(assert (=> b!6999516 m!7692992))

(declare-fun m!7692994 () Bool)

(assert (=> b!6999517 m!7692994))

(assert (=> b!6999517 m!7692898))

(declare-fun m!7692996 () Bool)

(assert (=> b!6999517 m!7692996))

(declare-fun m!7692998 () Bool)

(assert (=> d!2181422 m!7692998))

(assert (=> d!2181422 m!7692904))

(declare-fun m!7693000 () Bool)

(assert (=> d!2181422 m!7693000))

(assert (=> b!6999073 d!2181422))

(declare-fun d!2181424 () Bool)

(assert (=> d!2181424 (= (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408)) s!7408)))

(declare-fun lt!2494964 () Unit!161186)

(declare-fun choose!52471 (List!67338 C!34798 List!67338 List!67338) Unit!161186)

(assert (=> d!2181424 (= lt!2494964 (choose!52471 Nil!67214 (h!73662 s!7408) (t!381089 s!7408) s!7408))))

(assert (=> d!2181424 (= (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) (t!381089 s!7408))) s!7408)))

(assert (=> d!2181424 (= (lemmaMoveElementToOtherListKeepsConcatEq!2879 Nil!67214 (h!73662 s!7408) (t!381089 s!7408) s!7408) lt!2494964)))

(declare-fun bs!1864198 () Bool)

(assert (= bs!1864198 d!2181424))

(assert (=> bs!1864198 m!7692162))

(assert (=> bs!1864198 m!7692162))

(assert (=> bs!1864198 m!7692164))

(declare-fun m!7693002 () Bool)

(assert (=> bs!1864198 m!7693002))

(declare-fun m!7693004 () Bool)

(assert (=> bs!1864198 m!7693004))

(assert (=> b!6999073 d!2181424))

(declare-fun b!6999519 () Bool)

(declare-fun e!4207230 () Option!16769)

(declare-fun e!4207231 () Option!16769)

(assert (=> b!6999519 (= e!4207230 e!4207231)))

(declare-fun c!1299182 () Bool)

(assert (=> b!6999519 (= c!1299182 (is-Nil!67214 (t!381089 s!7408)))))

(declare-fun b!6999520 () Bool)

(declare-fun e!4207232 () Bool)

(declare-fun lt!2494966 () Option!16769)

(assert (=> b!6999520 (= e!4207232 (= (++!15229 (_1!37240 (get!23566 lt!2494966)) (_2!37240 (get!23566 lt!2494966))) s!7408))))

(declare-fun b!6999521 () Bool)

(assert (=> b!6999521 (= e!4207231 None!16768)))

(declare-fun b!6999522 () Bool)

(declare-fun lt!2494965 () Unit!161186)

(declare-fun lt!2494967 () Unit!161186)

(assert (=> b!6999522 (= lt!2494965 lt!2494967)))

(assert (=> b!6999522 (= (++!15229 (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (Cons!67214 (h!73662 (t!381089 s!7408)) Nil!67214)) (t!381089 (t!381089 s!7408))) s!7408)))

(assert (=> b!6999522 (= lt!2494967 (lemmaMoveElementToOtherListKeepsConcatEq!2879 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (h!73662 (t!381089 s!7408)) (t!381089 (t!381089 s!7408)) s!7408))))

(assert (=> b!6999522 (= e!4207231 (findConcatSeparationZippers!285 lt!2494591 lt!2494633 (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (Cons!67214 (h!73662 (t!381089 s!7408)) Nil!67214)) (t!381089 (t!381089 s!7408)) s!7408))))

(declare-fun d!2181426 () Bool)

(declare-fun e!4207234 () Bool)

(assert (=> d!2181426 e!4207234))

(declare-fun res!2855262 () Bool)

(assert (=> d!2181426 (=> res!2855262 e!4207234)))

(assert (=> d!2181426 (= res!2855262 e!4207232)))

(declare-fun res!2855261 () Bool)

(assert (=> d!2181426 (=> (not res!2855261) (not e!4207232))))

(assert (=> d!2181426 (= res!2855261 (isDefined!13470 lt!2494966))))

(assert (=> d!2181426 (= lt!2494966 e!4207230)))

(declare-fun c!1299183 () Bool)

(declare-fun e!4207233 () Bool)

(assert (=> d!2181426 (= c!1299183 e!4207233)))

(declare-fun res!2855264 () Bool)

(assert (=> d!2181426 (=> (not res!2855264) (not e!4207233))))

(assert (=> d!2181426 (= res!2855264 (matchZipper!2804 lt!2494591 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214))))))

(assert (=> d!2181426 (= (++!15229 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408)) s!7408)))

(assert (=> d!2181426 (= (findConcatSeparationZippers!285 lt!2494591 lt!2494633 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408) s!7408) lt!2494966)))

(declare-fun b!6999523 () Bool)

(assert (=> b!6999523 (= e!4207230 (Some!16768 (tuple2!67875 (++!15229 Nil!67214 (Cons!67214 (h!73662 s!7408) Nil!67214)) (t!381089 s!7408))))))

(declare-fun b!6999524 () Bool)

(assert (=> b!6999524 (= e!4207234 (not (isDefined!13470 lt!2494966)))))

(declare-fun b!6999525 () Bool)

(declare-fun res!2855265 () Bool)

(assert (=> b!6999525 (=> (not res!2855265) (not e!4207232))))

(assert (=> b!6999525 (= res!2855265 (matchZipper!2804 lt!2494591 (_1!37240 (get!23566 lt!2494966))))))

(declare-fun b!6999526 () Bool)

(assert (=> b!6999526 (= e!4207233 (matchZipper!2804 lt!2494633 (t!381089 s!7408)))))

(declare-fun b!6999527 () Bool)

(declare-fun res!2855263 () Bool)

(assert (=> b!6999527 (=> (not res!2855263) (not e!4207232))))

(assert (=> b!6999527 (= res!2855263 (matchZipper!2804 lt!2494633 (_2!37240 (get!23566 lt!2494966))))))

(assert (= (and d!2181426 res!2855264) b!6999526))

(assert (= (and d!2181426 c!1299183) b!6999523))

(assert (= (and d!2181426 (not c!1299183)) b!6999519))

(assert (= (and b!6999519 c!1299182) b!6999521))

(assert (= (and b!6999519 (not c!1299182)) b!6999522))

(assert (= (and d!2181426 res!2855261) b!6999525))

(assert (= (and b!6999525 res!2855265) b!6999527))

(assert (= (and b!6999527 res!2855263) b!6999520))

(assert (= (and d!2181426 (not res!2855262)) b!6999524))

(declare-fun m!7693006 () Bool)

(assert (=> b!6999527 m!7693006))

(declare-fun m!7693008 () Bool)

(assert (=> b!6999527 m!7693008))

(declare-fun m!7693010 () Bool)

(assert (=> b!6999526 m!7693010))

(assert (=> b!6999520 m!7693006))

(declare-fun m!7693012 () Bool)

(assert (=> b!6999520 m!7693012))

(assert (=> b!6999522 m!7692162))

(declare-fun m!7693014 () Bool)

(assert (=> b!6999522 m!7693014))

(assert (=> b!6999522 m!7693014))

(declare-fun m!7693016 () Bool)

(assert (=> b!6999522 m!7693016))

(assert (=> b!6999522 m!7692162))

(declare-fun m!7693018 () Bool)

(assert (=> b!6999522 m!7693018))

(assert (=> b!6999522 m!7693014))

(declare-fun m!7693020 () Bool)

(assert (=> b!6999522 m!7693020))

(declare-fun m!7693022 () Bool)

(assert (=> b!6999524 m!7693022))

(assert (=> d!2181426 m!7693022))

(assert (=> d!2181426 m!7692162))

(declare-fun m!7693024 () Bool)

(assert (=> d!2181426 m!7693024))

(assert (=> d!2181426 m!7692162))

(assert (=> d!2181426 m!7692164))

(assert (=> b!6999525 m!7693006))

(declare-fun m!7693026 () Bool)

(assert (=> b!6999525 m!7693026))

(assert (=> b!6999073 d!2181426))

(declare-fun d!2181428 () Bool)

(assert (=> d!2181428 (= (map!15543 z1!570 lambda!404910) (choose!52456 z1!570 lambda!404910))))

(declare-fun bs!1864199 () Bool)

(assert (= bs!1864199 d!2181428))

(declare-fun m!7693028 () Bool)

(assert (=> bs!1864199 m!7693028))

(assert (=> d!2181080 d!2181428))

(declare-fun d!2181430 () Bool)

(declare-fun lt!2494970 () Int)

(assert (=> d!2181430 (>= lt!2494970 0)))

(declare-fun e!4207237 () Int)

(assert (=> d!2181430 (= lt!2494970 e!4207237)))

(declare-fun c!1299186 () Bool)

(assert (=> d!2181430 (= c!1299186 (is-Nil!67214 lt!2494880))))

(assert (=> d!2181430 (= (size!40935 lt!2494880) lt!2494970)))

(declare-fun b!6999532 () Bool)

(assert (=> b!6999532 (= e!4207237 0)))

(declare-fun b!6999533 () Bool)

(assert (=> b!6999533 (= e!4207237 (+ 1 (size!40935 (t!381089 lt!2494880))))))

(assert (= (and d!2181430 c!1299186) b!6999532))

(assert (= (and d!2181430 (not c!1299186)) b!6999533))

(declare-fun m!7693030 () Bool)

(assert (=> b!6999533 m!7693030))

(assert (=> b!6999209 d!2181430))

(declare-fun d!2181432 () Bool)

(declare-fun lt!2494971 () Int)

(assert (=> d!2181432 (>= lt!2494971 0)))

(declare-fun e!4207238 () Int)

(assert (=> d!2181432 (= lt!2494971 e!4207238)))

(declare-fun c!1299187 () Bool)

(assert (=> d!2181432 (= c!1299187 (is-Nil!67214 (_1!37240 lt!2494598)))))

(assert (=> d!2181432 (= (size!40935 (_1!37240 lt!2494598)) lt!2494971)))

(declare-fun b!6999534 () Bool)

(assert (=> b!6999534 (= e!4207238 0)))

(declare-fun b!6999535 () Bool)

(assert (=> b!6999535 (= e!4207238 (+ 1 (size!40935 (t!381089 (_1!37240 lt!2494598)))))))

(assert (= (and d!2181432 c!1299187) b!6999534))

(assert (= (and d!2181432 (not c!1299187)) b!6999535))

(declare-fun m!7693032 () Bool)

(assert (=> b!6999535 m!7693032))

(assert (=> b!6999209 d!2181432))

(declare-fun d!2181434 () Bool)

(declare-fun lt!2494972 () Int)

(assert (=> d!2181434 (>= lt!2494972 0)))

(declare-fun e!4207239 () Int)

(assert (=> d!2181434 (= lt!2494972 e!4207239)))

(declare-fun c!1299188 () Bool)

(assert (=> d!2181434 (= c!1299188 (is-Nil!67214 (_2!37240 lt!2494598)))))

(assert (=> d!2181434 (= (size!40935 (_2!37240 lt!2494598)) lt!2494972)))

(declare-fun b!6999536 () Bool)

(assert (=> b!6999536 (= e!4207239 0)))

(declare-fun b!6999537 () Bool)

(assert (=> b!6999537 (= e!4207239 (+ 1 (size!40935 (t!381089 (_2!37240 lt!2494598)))))))

(assert (= (and d!2181434 c!1299188) b!6999536))

(assert (= (and d!2181434 (not c!1299188)) b!6999537))

(declare-fun m!7693034 () Bool)

(assert (=> b!6999537 m!7693034))

(assert (=> b!6999209 d!2181434))

(declare-fun bs!1864200 () Bool)

(declare-fun d!2181436 () Bool)

(assert (= bs!1864200 (and d!2181436 d!2181308)))

(declare-fun lambda!404955 () Int)

(assert (=> bs!1864200 (= lambda!404955 lambda!404945)))

(declare-fun bs!1864201 () Bool)

(assert (= bs!1864201 (and d!2181436 d!2181362)))

(assert (=> bs!1864201 (= lambda!404955 lambda!404951)))

(declare-fun bs!1864202 () Bool)

(assert (= bs!1864202 (and d!2181436 d!2181100)))

(assert (=> bs!1864202 (not (= lambda!404955 lambda!404919))))

(declare-fun bs!1864203 () Bool)

(assert (= bs!1864203 (and d!2181436 b!6998816)))

(assert (=> bs!1864203 (not (= lambda!404955 lambda!404837))))

(declare-fun bs!1864204 () Bool)

(assert (= bs!1864204 (and d!2181436 d!2181330)))

(assert (=> bs!1864204 (= lambda!404955 lambda!404948)))

(declare-fun bs!1864205 () Bool)

(assert (= bs!1864205 (and d!2181436 d!2181398)))

(assert (=> bs!1864205 (= lambda!404955 lambda!404954)))

(declare-fun bs!1864206 () Bool)

(assert (= bs!1864206 (and d!2181436 d!2181092)))

(assert (=> bs!1864206 (not (= lambda!404955 lambda!404916))))

(assert (=> d!2181436 (= (nullableZipper!2459 lt!2494595) (exists!3079 lt!2494595 lambda!404955))))

(declare-fun bs!1864207 () Bool)

(assert (= bs!1864207 d!2181436))

(declare-fun m!7693036 () Bool)

(assert (=> bs!1864207 m!7693036))

(assert (=> b!6998949 d!2181436))

(declare-fun b!6999538 () Bool)

(declare-fun e!4207244 () (Set Context!12520))

(declare-fun call!635514 () (Set Context!12520))

(assert (=> b!6999538 (= e!4207244 call!635514)))

(declare-fun c!1299193 () Bool)

(declare-fun c!1299190 () Bool)

(declare-fun c!1299192 () Bool)

(declare-fun bm!635507 () Bool)

(declare-fun call!635515 () List!67337)

(declare-fun call!635512 () (Set Context!12520))

(assert (=> bm!635507 (= call!635512 (derivationStepZipperDown!1982 (ite c!1299190 (regTwo!35041 (h!73661 (exprs!6760 lt!2494609))) (ite c!1299193 (regTwo!35040 (h!73661 (exprs!6760 lt!2494609))) (ite c!1299192 (regOne!35040 (h!73661 (exprs!6760 lt!2494609))) (reg!17593 (h!73661 (exprs!6760 lt!2494609)))))) (ite (or c!1299190 c!1299193) (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (Context!12521 call!635515)) (h!73662 s!7408)))))

(declare-fun b!6999539 () Bool)

(declare-fun e!4207241 () (Set Context!12520))

(declare-fun e!4207242 () (Set Context!12520))

(assert (=> b!6999539 (= e!4207241 e!4207242)))

(assert (=> b!6999539 (= c!1299192 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494609))))))

(declare-fun b!6999540 () Bool)

(assert (=> b!6999540 (= e!4207242 call!635514)))

(declare-fun bm!635508 () Bool)

(declare-fun call!635513 () (Set Context!12520))

(assert (=> bm!635508 (= call!635514 call!635513)))

(declare-fun bm!635509 () Bool)

(declare-fun call!635517 () List!67337)

(assert (=> bm!635509 (= call!635515 call!635517)))

(declare-fun d!2181438 () Bool)

(declare-fun c!1299191 () Bool)

(assert (=> d!2181438 (= c!1299191 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494609))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494609))) (h!73662 s!7408))))))

(declare-fun e!4207240 () (Set Context!12520))

(assert (=> d!2181438 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494609)) (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (h!73662 s!7408)) e!4207240)))

(declare-fun b!6999541 () Bool)

(declare-fun call!635516 () (Set Context!12520))

(assert (=> b!6999541 (= e!4207241 (set.union call!635516 call!635513))))

(declare-fun bm!635510 () Bool)

(assert (=> bm!635510 (= call!635516 (derivationStepZipperDown!1982 (ite c!1299190 (regOne!35041 (h!73661 (exprs!6760 lt!2494609))) (regOne!35040 (h!73661 (exprs!6760 lt!2494609)))) (ite c!1299190 (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (Context!12521 call!635517)) (h!73662 s!7408)))))

(declare-fun bm!635511 () Bool)

(assert (=> bm!635511 (= call!635517 ($colon$colon!2503 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609)))) (ite (or c!1299193 c!1299192) (regTwo!35040 (h!73661 (exprs!6760 lt!2494609))) (h!73661 (exprs!6760 lt!2494609)))))))

(declare-fun b!6999542 () Bool)

(assert (=> b!6999542 (= e!4207240 (set.insert (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (as set.empty (Set Context!12520))))))

(declare-fun b!6999543 () Bool)

(declare-fun e!4207245 () Bool)

(assert (=> b!6999543 (= c!1299193 e!4207245)))

(declare-fun res!2855266 () Bool)

(assert (=> b!6999543 (=> (not res!2855266) (not e!4207245))))

(assert (=> b!6999543 (= res!2855266 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494609))))))

(declare-fun e!4207243 () (Set Context!12520))

(assert (=> b!6999543 (= e!4207243 e!4207241)))

(declare-fun b!6999544 () Bool)

(assert (=> b!6999544 (= e!4207240 e!4207243)))

(assert (=> b!6999544 (= c!1299190 (is-Union!17264 (h!73661 (exprs!6760 lt!2494609))))))

(declare-fun b!6999545 () Bool)

(assert (=> b!6999545 (= e!4207243 (set.union call!635516 call!635512))))

(declare-fun b!6999546 () Bool)

(declare-fun c!1299189 () Bool)

(assert (=> b!6999546 (= c!1299189 (is-Star!17264 (h!73661 (exprs!6760 lt!2494609))))))

(assert (=> b!6999546 (= e!4207242 e!4207244)))

(declare-fun b!6999547 () Bool)

(assert (=> b!6999547 (= e!4207244 (as set.empty (Set Context!12520)))))

(declare-fun bm!635512 () Bool)

(assert (=> bm!635512 (= call!635513 call!635512)))

(declare-fun b!6999548 () Bool)

(assert (=> b!6999548 (= e!4207245 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494609)))))))

(assert (= (and d!2181438 c!1299191) b!6999542))

(assert (= (and d!2181438 (not c!1299191)) b!6999544))

(assert (= (and b!6999544 c!1299190) b!6999545))

(assert (= (and b!6999544 (not c!1299190)) b!6999543))

(assert (= (and b!6999543 res!2855266) b!6999548))

(assert (= (and b!6999543 c!1299193) b!6999541))

(assert (= (and b!6999543 (not c!1299193)) b!6999539))

(assert (= (and b!6999539 c!1299192) b!6999540))

(assert (= (and b!6999539 (not c!1299192)) b!6999546))

(assert (= (and b!6999546 c!1299189) b!6999538))

(assert (= (and b!6999546 (not c!1299189)) b!6999547))

(assert (= (or b!6999540 b!6999538) bm!635509))

(assert (= (or b!6999540 b!6999538) bm!635508))

(assert (= (or b!6999541 bm!635508) bm!635512))

(assert (= (or b!6999541 bm!635509) bm!635511))

(assert (= (or b!6999545 b!6999541) bm!635510))

(assert (= (or b!6999545 bm!635512) bm!635507))

(declare-fun m!7693038 () Bool)

(assert (=> b!6999542 m!7693038))

(declare-fun m!7693040 () Bool)

(assert (=> bm!635507 m!7693040))

(declare-fun m!7693042 () Bool)

(assert (=> bm!635511 m!7693042))

(declare-fun m!7693044 () Bool)

(assert (=> b!6999548 m!7693044))

(declare-fun m!7693046 () Bool)

(assert (=> bm!635510 m!7693046))

(assert (=> bm!635434 d!2181438))

(declare-fun d!2181440 () Bool)

(assert (=> d!2181440 true))

(declare-fun setRes!48073 () Bool)

(assert (=> d!2181440 setRes!48073))

(declare-fun condSetEmpty!48073 () Bool)

(declare-fun res!2855269 () (Set Context!12520))

(assert (=> d!2181440 (= condSetEmpty!48073 (= res!2855269 (as set.empty (Set Context!12520))))))

(assert (=> d!2181440 (= (choose!52456 lt!2494591 lambda!404838) res!2855269)))

(declare-fun setIsEmpty!48073 () Bool)

(assert (=> setIsEmpty!48073 setRes!48073))

(declare-fun tp!1930949 () Bool)

(declare-fun e!4207248 () Bool)

(declare-fun setNonEmpty!48073 () Bool)

(declare-fun setElem!48073 () Context!12520)

(assert (=> setNonEmpty!48073 (= setRes!48073 (and tp!1930949 (inv!86020 setElem!48073) e!4207248))))

(declare-fun setRest!48073 () (Set Context!12520))

(assert (=> setNonEmpty!48073 (= res!2855269 (set.union (set.insert setElem!48073 (as set.empty (Set Context!12520))) setRest!48073))))

(declare-fun b!6999551 () Bool)

(declare-fun tp!1930950 () Bool)

(assert (=> b!6999551 (= e!4207248 tp!1930950)))

(assert (= (and d!2181440 condSetEmpty!48073) setIsEmpty!48073))

(assert (= (and d!2181440 (not condSetEmpty!48073)) setNonEmpty!48073))

(assert (= setNonEmpty!48073 b!6999551))

(declare-fun m!7693048 () Bool)

(assert (=> setNonEmpty!48073 m!7693048))

(assert (=> d!2181110 d!2181440))

(declare-fun bs!1864208 () Bool)

(declare-fun d!2181442 () Bool)

(assert (= bs!1864208 (and d!2181442 d!2181308)))

(declare-fun lambda!404956 () Int)

(assert (=> bs!1864208 (= lambda!404956 lambda!404945)))

(declare-fun bs!1864209 () Bool)

(assert (= bs!1864209 (and d!2181442 d!2181100)))

(assert (=> bs!1864209 (not (= lambda!404956 lambda!404919))))

(declare-fun bs!1864210 () Bool)

(assert (= bs!1864210 (and d!2181442 b!6998816)))

(assert (=> bs!1864210 (not (= lambda!404956 lambda!404837))))

(declare-fun bs!1864211 () Bool)

(assert (= bs!1864211 (and d!2181442 d!2181330)))

(assert (=> bs!1864211 (= lambda!404956 lambda!404948)))

(declare-fun bs!1864212 () Bool)

(assert (= bs!1864212 (and d!2181442 d!2181398)))

(assert (=> bs!1864212 (= lambda!404956 lambda!404954)))

(declare-fun bs!1864213 () Bool)

(assert (= bs!1864213 (and d!2181442 d!2181092)))

(assert (=> bs!1864213 (not (= lambda!404956 lambda!404916))))

(declare-fun bs!1864214 () Bool)

(assert (= bs!1864214 (and d!2181442 d!2181362)))

(assert (=> bs!1864214 (= lambda!404956 lambda!404951)))

(declare-fun bs!1864215 () Bool)

(assert (= bs!1864215 (and d!2181442 d!2181436)))

(assert (=> bs!1864215 (= lambda!404956 lambda!404955)))

(assert (=> d!2181442 (= (nullableZipper!2459 lt!2494614) (exists!3079 lt!2494614 lambda!404956))))

(declare-fun bs!1864216 () Bool)

(assert (= bs!1864216 d!2181442))

(declare-fun m!7693050 () Bool)

(assert (=> bs!1864216 m!7693050))

(assert (=> b!6999213 d!2181442))

(declare-fun b!6999552 () Bool)

(declare-fun e!4207253 () (Set Context!12520))

(declare-fun call!635520 () (Set Context!12520))

(assert (=> b!6999552 (= e!4207253 call!635520)))

(declare-fun c!1299195 () Bool)

(declare-fun call!635521 () List!67337)

(declare-fun c!1299197 () Bool)

(declare-fun bm!635513 () Bool)

(declare-fun call!635518 () (Set Context!12520))

(declare-fun c!1299198 () Bool)

(assert (=> bm!635513 (= call!635518 (derivationStepZipperDown!1982 (ite c!1299195 (regTwo!35041 (h!73661 (exprs!6760 lt!2494627))) (ite c!1299198 (regTwo!35040 (h!73661 (exprs!6760 lt!2494627))) (ite c!1299197 (regOne!35040 (h!73661 (exprs!6760 lt!2494627))) (reg!17593 (h!73661 (exprs!6760 lt!2494627)))))) (ite (or c!1299195 c!1299198) (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (Context!12521 call!635521)) (h!73662 s!7408)))))

(declare-fun b!6999553 () Bool)

(declare-fun e!4207250 () (Set Context!12520))

(declare-fun e!4207251 () (Set Context!12520))

(assert (=> b!6999553 (= e!4207250 e!4207251)))

(assert (=> b!6999553 (= c!1299197 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun b!6999554 () Bool)

(assert (=> b!6999554 (= e!4207251 call!635520)))

(declare-fun bm!635514 () Bool)

(declare-fun call!635519 () (Set Context!12520))

(assert (=> bm!635514 (= call!635520 call!635519)))

(declare-fun bm!635515 () Bool)

(declare-fun call!635523 () List!67337)

(assert (=> bm!635515 (= call!635521 call!635523)))

(declare-fun d!2181444 () Bool)

(declare-fun c!1299196 () Bool)

(assert (=> d!2181444 (= c!1299196 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494627))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494627))) (h!73662 s!7408))))))

(declare-fun e!4207249 () (Set Context!12520))

(assert (=> d!2181444 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494627)) (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (h!73662 s!7408)) e!4207249)))

(declare-fun b!6999555 () Bool)

(declare-fun call!635522 () (Set Context!12520))

(assert (=> b!6999555 (= e!4207250 (set.union call!635522 call!635519))))

(declare-fun bm!635516 () Bool)

(assert (=> bm!635516 (= call!635522 (derivationStepZipperDown!1982 (ite c!1299195 (regOne!35041 (h!73661 (exprs!6760 lt!2494627))) (regOne!35040 (h!73661 (exprs!6760 lt!2494627)))) (ite c!1299195 (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (Context!12521 call!635523)) (h!73662 s!7408)))))

(declare-fun bm!635517 () Bool)

(assert (=> bm!635517 (= call!635523 ($colon$colon!2503 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))) (ite (or c!1299198 c!1299197) (regTwo!35040 (h!73661 (exprs!6760 lt!2494627))) (h!73661 (exprs!6760 lt!2494627)))))))

(declare-fun b!6999556 () Bool)

(assert (=> b!6999556 (= e!4207249 (set.insert (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (as set.empty (Set Context!12520))))))

(declare-fun b!6999557 () Bool)

(declare-fun e!4207254 () Bool)

(assert (=> b!6999557 (= c!1299198 e!4207254)))

(declare-fun res!2855270 () Bool)

(assert (=> b!6999557 (=> (not res!2855270) (not e!4207254))))

(assert (=> b!6999557 (= res!2855270 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun e!4207252 () (Set Context!12520))

(assert (=> b!6999557 (= e!4207252 e!4207250)))

(declare-fun b!6999558 () Bool)

(assert (=> b!6999558 (= e!4207249 e!4207252)))

(assert (=> b!6999558 (= c!1299195 (is-Union!17264 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun b!6999559 () Bool)

(assert (=> b!6999559 (= e!4207252 (set.union call!635522 call!635518))))

(declare-fun b!6999560 () Bool)

(declare-fun c!1299194 () Bool)

(assert (=> b!6999560 (= c!1299194 (is-Star!17264 (h!73661 (exprs!6760 lt!2494627))))))

(assert (=> b!6999560 (= e!4207251 e!4207253)))

(declare-fun b!6999561 () Bool)

(assert (=> b!6999561 (= e!4207253 (as set.empty (Set Context!12520)))))

(declare-fun bm!635518 () Bool)

(assert (=> bm!635518 (= call!635519 call!635518)))

(declare-fun b!6999562 () Bool)

(assert (=> b!6999562 (= e!4207254 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494627)))))))

(assert (= (and d!2181444 c!1299196) b!6999556))

(assert (= (and d!2181444 (not c!1299196)) b!6999558))

(assert (= (and b!6999558 c!1299195) b!6999559))

(assert (= (and b!6999558 (not c!1299195)) b!6999557))

(assert (= (and b!6999557 res!2855270) b!6999562))

(assert (= (and b!6999557 c!1299198) b!6999555))

(assert (= (and b!6999557 (not c!1299198)) b!6999553))

(assert (= (and b!6999553 c!1299197) b!6999554))

(assert (= (and b!6999553 (not c!1299197)) b!6999560))

(assert (= (and b!6999560 c!1299194) b!6999552))

(assert (= (and b!6999560 (not c!1299194)) b!6999561))

(assert (= (or b!6999554 b!6999552) bm!635515))

(assert (= (or b!6999554 b!6999552) bm!635514))

(assert (= (or b!6999555 bm!635514) bm!635518))

(assert (= (or b!6999555 bm!635515) bm!635517))

(assert (= (or b!6999559 b!6999555) bm!635516))

(assert (= (or b!6999559 bm!635518) bm!635513))

(declare-fun m!7693052 () Bool)

(assert (=> b!6999556 m!7693052))

(declare-fun m!7693054 () Bool)

(assert (=> bm!635513 m!7693054))

(declare-fun m!7693056 () Bool)

(assert (=> bm!635517 m!7693056))

(declare-fun m!7693058 () Bool)

(assert (=> b!6999562 m!7693058))

(declare-fun m!7693060 () Bool)

(assert (=> bm!635516 m!7693060))

(assert (=> bm!635454 d!2181444))

(declare-fun d!2181446 () Bool)

(declare-fun lt!2494975 () Int)

(assert (=> d!2181446 (>= lt!2494975 0)))

(declare-fun e!4207257 () Int)

(assert (=> d!2181446 (= lt!2494975 e!4207257)))

(declare-fun c!1299201 () Bool)

(assert (=> d!2181446 (= c!1299201 (is-Nil!67213 lt!2494831))))

(assert (=> d!2181446 (= (size!40933 lt!2494831) lt!2494975)))

(declare-fun b!6999567 () Bool)

(assert (=> b!6999567 (= e!4207257 0)))

(declare-fun b!6999568 () Bool)

(assert (=> b!6999568 (= e!4207257 (+ 1 (size!40933 (t!381088 lt!2494831))))))

(assert (= (and d!2181446 c!1299201) b!6999567))

(assert (= (and d!2181446 (not c!1299201)) b!6999568))

(declare-fun m!7693062 () Bool)

(assert (=> b!6999568 m!7693062))

(assert (=> b!6999010 d!2181446))

(declare-fun d!2181448 () Bool)

(declare-fun lt!2494976 () Int)

(assert (=> d!2181448 (>= lt!2494976 0)))

(declare-fun e!4207258 () Int)

(assert (=> d!2181448 (= lt!2494976 e!4207258)))

(declare-fun c!1299202 () Bool)

(assert (=> d!2181448 (= c!1299202 (is-Nil!67213 lt!2494622))))

(assert (=> d!2181448 (= (size!40933 lt!2494622) lt!2494976)))

(declare-fun b!6999569 () Bool)

(assert (=> b!6999569 (= e!4207258 0)))

(declare-fun b!6999570 () Bool)

(assert (=> b!6999570 (= e!4207258 (+ 1 (size!40933 (t!381088 lt!2494622))))))

(assert (= (and d!2181448 c!1299202) b!6999569))

(assert (= (and d!2181448 (not c!1299202)) b!6999570))

(declare-fun m!7693064 () Bool)

(assert (=> b!6999570 m!7693064))

(assert (=> b!6999010 d!2181448))

(declare-fun d!2181450 () Bool)

(declare-fun lt!2494977 () Int)

(assert (=> d!2181450 (>= lt!2494977 0)))

(declare-fun e!4207259 () Int)

(assert (=> d!2181450 (= lt!2494977 e!4207259)))

(declare-fun c!1299203 () Bool)

(assert (=> d!2181450 (= c!1299203 (is-Nil!67213 (exprs!6760 ct2!306)))))

(assert (=> d!2181450 (= (size!40933 (exprs!6760 ct2!306)) lt!2494977)))

(declare-fun b!6999571 () Bool)

(assert (=> b!6999571 (= e!4207259 0)))

(declare-fun b!6999572 () Bool)

(assert (=> b!6999572 (= e!4207259 (+ 1 (size!40933 (t!381088 (exprs!6760 ct2!306)))))))

(assert (= (and d!2181450 c!1299203) b!6999571))

(assert (= (and d!2181450 (not c!1299203)) b!6999572))

(declare-fun m!7693066 () Bool)

(assert (=> b!6999572 m!7693066))

(assert (=> b!6999010 d!2181450))

(declare-fun b!6999589 () Bool)

(declare-fun e!4207271 () Int)

(declare-fun call!635532 () Int)

(declare-fun call!635531 () Int)

(assert (=> b!6999589 (= e!4207271 (+ 1 call!635532 call!635531))))

(declare-fun b!6999590 () Bool)

(declare-fun e!4207268 () Int)

(assert (=> b!6999590 (= e!4207268 1)))

(declare-fun b!6999592 () Bool)

(declare-fun e!4207269 () Int)

(assert (=> b!6999592 (= e!4207268 e!4207269)))

(declare-fun c!1299213 () Bool)

(assert (=> b!6999592 (= c!1299213 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun c!1299215 () Bool)

(declare-fun call!635530 () Int)

(declare-fun bm!635525 () Bool)

(assert (=> bm!635525 (= call!635530 (regexDepthTotal!279 (ite c!1299213 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299215 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6999593 () Bool)

(declare-fun e!4207270 () Int)

(assert (=> b!6999593 (= e!4207271 e!4207270)))

(declare-fun c!1299212 () Bool)

(assert (=> b!6999593 (= c!1299212 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999594 () Bool)

(assert (=> b!6999594 (= c!1299215 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> b!6999594 (= e!4207269 e!4207271)))

(declare-fun bm!635526 () Bool)

(assert (=> bm!635526 (= call!635531 call!635530)))

(declare-fun b!6999591 () Bool)

(assert (=> b!6999591 (= e!4207270 (+ 1 call!635531 call!635532))))

(declare-fun d!2181452 () Bool)

(declare-fun lt!2494980 () Int)

(assert (=> d!2181452 (> lt!2494980 0)))

(assert (=> d!2181452 (= lt!2494980 e!4207268)))

(declare-fun c!1299214 () Bool)

(assert (=> d!2181452 (= c!1299214 (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> d!2181452 (= (regexDepthTotal!279 (h!73661 (exprs!6760 lt!2494613))) lt!2494980)))

(declare-fun b!6999595 () Bool)

(assert (=> b!6999595 (= e!4207270 1)))

(declare-fun b!6999596 () Bool)

(assert (=> b!6999596 (= e!4207269 (+ 1 call!635530))))

(declare-fun bm!635527 () Bool)

(assert (=> bm!635527 (= call!635532 (regexDepthTotal!279 (ite c!1299215 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (= (and d!2181452 c!1299214) b!6999590))

(assert (= (and d!2181452 (not c!1299214)) b!6999592))

(assert (= (and b!6999592 c!1299213) b!6999596))

(assert (= (and b!6999592 (not c!1299213)) b!6999594))

(assert (= (and b!6999594 c!1299215) b!6999589))

(assert (= (and b!6999594 (not c!1299215)) b!6999593))

(assert (= (and b!6999593 c!1299212) b!6999591))

(assert (= (and b!6999593 (not c!1299212)) b!6999595))

(assert (= (or b!6999589 b!6999591) bm!635526))

(assert (= (or b!6999589 b!6999591) bm!635527))

(assert (= (or b!6999596 bm!635526) bm!635525))

(declare-fun m!7693068 () Bool)

(assert (=> bm!635525 m!7693068))

(declare-fun m!7693070 () Bool)

(assert (=> bm!635527 m!7693070))

(assert (=> b!6999157 d!2181452))

(declare-fun d!2181454 () Bool)

(declare-fun lt!2494981 () Int)

(assert (=> d!2181454 (>= lt!2494981 0)))

(declare-fun e!4207272 () Int)

(assert (=> d!2181454 (= lt!2494981 e!4207272)))

(declare-fun c!1299216 () Bool)

(assert (=> d!2181454 (= c!1299216 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613))))))))

(assert (=> d!2181454 (= (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))) lt!2494981)))

(declare-fun b!6999597 () Bool)

(assert (=> b!6999597 (= e!4207272 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))))))))))

(declare-fun b!6999598 () Bool)

(assert (=> b!6999598 (= e!4207272 1)))

(assert (= (and d!2181454 c!1299216) b!6999597))

(assert (= (and d!2181454 (not c!1299216)) b!6999598))

(declare-fun m!7693072 () Bool)

(assert (=> b!6999597 m!7693072))

(declare-fun m!7693074 () Bool)

(assert (=> b!6999597 m!7693074))

(assert (=> b!6999157 d!2181454))

(declare-fun bs!1864217 () Bool)

(declare-fun d!2181456 () Bool)

(assert (= bs!1864217 (and d!2181456 d!2181308)))

(declare-fun lambda!404957 () Int)

(assert (=> bs!1864217 (= lambda!404957 lambda!404945)))

(declare-fun bs!1864218 () Bool)

(assert (= bs!1864218 (and d!2181456 d!2181100)))

(assert (=> bs!1864218 (not (= lambda!404957 lambda!404919))))

(declare-fun bs!1864219 () Bool)

(assert (= bs!1864219 (and d!2181456 d!2181442)))

(assert (=> bs!1864219 (= lambda!404957 lambda!404956)))

(declare-fun bs!1864220 () Bool)

(assert (= bs!1864220 (and d!2181456 b!6998816)))

(assert (=> bs!1864220 (not (= lambda!404957 lambda!404837))))

(declare-fun bs!1864221 () Bool)

(assert (= bs!1864221 (and d!2181456 d!2181330)))

(assert (=> bs!1864221 (= lambda!404957 lambda!404948)))

(declare-fun bs!1864222 () Bool)

(assert (= bs!1864222 (and d!2181456 d!2181398)))

(assert (=> bs!1864222 (= lambda!404957 lambda!404954)))

(declare-fun bs!1864223 () Bool)

(assert (= bs!1864223 (and d!2181456 d!2181092)))

(assert (=> bs!1864223 (not (= lambda!404957 lambda!404916))))

(declare-fun bs!1864224 () Bool)

(assert (= bs!1864224 (and d!2181456 d!2181362)))

(assert (=> bs!1864224 (= lambda!404957 lambda!404951)))

(declare-fun bs!1864225 () Bool)

(assert (= bs!1864225 (and d!2181456 d!2181436)))

(assert (=> bs!1864225 (= lambda!404957 lambda!404955)))

(assert (=> d!2181456 (= (nullableZipper!2459 lt!2494591) (exists!3079 lt!2494591 lambda!404957))))

(declare-fun bs!1864226 () Bool)

(assert (= bs!1864226 d!2181456))

(declare-fun m!7693076 () Bool)

(assert (=> bs!1864226 m!7693076))

(assert (=> b!6999079 d!2181456))

(declare-fun b!6999599 () Bool)

(declare-fun e!4207274 () Bool)

(declare-fun e!4207278 () Bool)

(assert (=> b!6999599 (= e!4207274 e!4207278)))

(declare-fun res!2855274 () Bool)

(assert (=> b!6999599 (=> (not res!2855274) (not e!4207278))))

(declare-fun call!635534 () Bool)

(assert (=> b!6999599 (= res!2855274 call!635534)))

(declare-fun d!2181458 () Bool)

(declare-fun res!2855271 () Bool)

(declare-fun e!4207276 () Bool)

(assert (=> d!2181458 (=> res!2855271 e!4207276)))

(assert (=> d!2181458 (= res!2855271 (is-ElementMatch!17264 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(assert (=> d!2181458 (= (validRegex!8872 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) e!4207276)))

(declare-fun bm!635528 () Bool)

(declare-fun call!635533 () Bool)

(assert (=> bm!635528 (= call!635534 call!635533)))

(declare-fun b!6999600 () Bool)

(declare-fun e!4207273 () Bool)

(assert (=> b!6999600 (= e!4207273 call!635533)))

(declare-fun b!6999601 () Bool)

(declare-fun res!2855275 () Bool)

(assert (=> b!6999601 (=> res!2855275 e!4207274)))

(assert (=> b!6999601 (= res!2855275 (not (is-Concat!26109 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun e!4207277 () Bool)

(assert (=> b!6999601 (= e!4207277 e!4207274)))

(declare-fun b!6999602 () Bool)

(declare-fun e!4207279 () Bool)

(assert (=> b!6999602 (= e!4207279 e!4207277)))

(declare-fun c!1299218 () Bool)

(assert (=> b!6999602 (= c!1299218 (is-Union!17264 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6999603 () Bool)

(declare-fun e!4207275 () Bool)

(declare-fun call!635535 () Bool)

(assert (=> b!6999603 (= e!4207275 call!635535)))

(declare-fun b!6999604 () Bool)

(assert (=> b!6999604 (= e!4207278 call!635535)))

(declare-fun b!6999605 () Bool)

(assert (=> b!6999605 (= e!4207279 e!4207273)))

(declare-fun res!2855273 () Bool)

(assert (=> b!6999605 (= res!2855273 (not (nullable!7024 (reg!17593 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))))

(assert (=> b!6999605 (=> (not res!2855273) (not e!4207273))))

(declare-fun b!6999606 () Bool)

(assert (=> b!6999606 (= e!4207276 e!4207279)))

(declare-fun c!1299217 () Bool)

(assert (=> b!6999606 (= c!1299217 (is-Star!17264 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun bm!635529 () Bool)

(assert (=> bm!635529 (= call!635533 (validRegex!8872 (ite c!1299217 (reg!17593 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) (ite c!1299218 (regOne!35041 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) (regOne!35040 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))))))

(declare-fun b!6999607 () Bool)

(declare-fun res!2855272 () Bool)

(assert (=> b!6999607 (=> (not res!2855272) (not e!4207275))))

(assert (=> b!6999607 (= res!2855272 call!635534)))

(assert (=> b!6999607 (= e!4207277 e!4207275)))

(declare-fun bm!635530 () Bool)

(assert (=> bm!635530 (= call!635535 (validRegex!8872 (ite c!1299218 (regTwo!35041 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) (regTwo!35040 (ite c!1298995 (reg!17593 (h!73661 (exprs!6760 lt!2494613))) (ite c!1298996 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))))

(assert (= (and d!2181458 (not res!2855271)) b!6999606))

(assert (= (and b!6999606 c!1299217) b!6999605))

(assert (= (and b!6999606 (not c!1299217)) b!6999602))

(assert (= (and b!6999605 res!2855273) b!6999600))

(assert (= (and b!6999602 c!1299218) b!6999607))

(assert (= (and b!6999602 (not c!1299218)) b!6999601))

(assert (= (and b!6999607 res!2855272) b!6999603))

(assert (= (and b!6999601 (not res!2855275)) b!6999599))

(assert (= (and b!6999599 res!2855274) b!6999604))

(assert (= (or b!6999603 b!6999604) bm!635530))

(assert (= (or b!6999607 b!6999599) bm!635528))

(assert (= (or b!6999600 bm!635528) bm!635529))

(declare-fun m!7693078 () Bool)

(assert (=> b!6999605 m!7693078))

(declare-fun m!7693080 () Bool)

(assert (=> bm!635529 m!7693080))

(declare-fun m!7693082 () Bool)

(assert (=> bm!635530 m!7693082))

(assert (=> bm!635430 d!2181458))

(declare-fun d!2181460 () Bool)

(assert (=> d!2181460 true))

(declare-fun setRes!48074 () Bool)

(assert (=> d!2181460 setRes!48074))

(declare-fun condSetEmpty!48074 () Bool)

(declare-fun res!2855276 () (Set Context!12520))

(assert (=> d!2181460 (= condSetEmpty!48074 (= res!2855276 (as set.empty (Set Context!12520))))))

(assert (=> d!2181460 (= (choose!52452 lt!2494591 lambda!404840) res!2855276)))

(declare-fun setIsEmpty!48074 () Bool)

(assert (=> setIsEmpty!48074 setRes!48074))

(declare-fun setNonEmpty!48074 () Bool)

(declare-fun tp!1930951 () Bool)

(declare-fun e!4207280 () Bool)

(declare-fun setElem!48074 () Context!12520)

(assert (=> setNonEmpty!48074 (= setRes!48074 (and tp!1930951 (inv!86020 setElem!48074) e!4207280))))

(declare-fun setRest!48074 () (Set Context!12520))

(assert (=> setNonEmpty!48074 (= res!2855276 (set.union (set.insert setElem!48074 (as set.empty (Set Context!12520))) setRest!48074))))

(declare-fun b!6999608 () Bool)

(declare-fun tp!1930952 () Bool)

(assert (=> b!6999608 (= e!4207280 tp!1930952)))

(assert (= (and d!2181460 condSetEmpty!48074) setIsEmpty!48074))

(assert (= (and d!2181460 (not condSetEmpty!48074)) setNonEmpty!48074))

(assert (= setNonEmpty!48074 b!6999608))

(declare-fun m!7693084 () Bool)

(assert (=> setNonEmpty!48074 m!7693084))

(assert (=> d!2181104 d!2181460))

(declare-fun d!2181462 () Bool)

(declare-fun c!1299219 () Bool)

(assert (=> d!2181462 (= c!1299219 (isEmpty!39238 (tail!13297 (_2!37240 lt!2494598))))))

(declare-fun e!4207281 () Bool)

(assert (=> d!2181462 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 lt!2494598))) (tail!13297 (_2!37240 lt!2494598))) e!4207281)))

(declare-fun b!6999609 () Bool)

(assert (=> b!6999609 (= e!4207281 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 lt!2494598)))))))

(declare-fun b!6999610 () Bool)

(assert (=> b!6999610 (= e!4207281 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 lt!2494598))) (head!14137 (tail!13297 (_2!37240 lt!2494598)))) (tail!13297 (tail!13297 (_2!37240 lt!2494598)))))))

(assert (= (and d!2181462 c!1299219) b!6999609))

(assert (= (and d!2181462 (not c!1299219)) b!6999610))

(assert (=> d!2181462 m!7692330))

(declare-fun m!7693086 () Bool)

(assert (=> d!2181462 m!7693086))

(assert (=> b!6999609 m!7692328))

(declare-fun m!7693088 () Bool)

(assert (=> b!6999609 m!7693088))

(assert (=> b!6999610 m!7692330))

(declare-fun m!7693090 () Bool)

(assert (=> b!6999610 m!7693090))

(assert (=> b!6999610 m!7692328))

(assert (=> b!6999610 m!7693090))

(declare-fun m!7693092 () Bool)

(assert (=> b!6999610 m!7693092))

(assert (=> b!6999610 m!7692330))

(declare-fun m!7693094 () Bool)

(assert (=> b!6999610 m!7693094))

(assert (=> b!6999610 m!7693092))

(assert (=> b!6999610 m!7693094))

(declare-fun m!7693096 () Bool)

(assert (=> b!6999610 m!7693096))

(assert (=> b!6999182 d!2181462))

(declare-fun bs!1864227 () Bool)

(declare-fun d!2181464 () Bool)

(assert (= bs!1864227 (and d!2181464 d!2181322)))

(declare-fun lambda!404958 () Int)

(assert (=> bs!1864227 (= (= (head!14137 (_2!37240 lt!2494598)) (head!14137 (t!381089 s!7408))) (= lambda!404958 lambda!404947))))

(declare-fun bs!1864228 () Bool)

(assert (= bs!1864228 (and d!2181464 d!2181392)))

(assert (=> bs!1864228 (= (= (head!14137 (_2!37240 lt!2494598)) (head!14137 s!7408)) (= lambda!404958 lambda!404953))))

(declare-fun bs!1864229 () Bool)

(assert (= bs!1864229 (and d!2181464 d!2181384)))

(assert (=> bs!1864229 (= (= (head!14137 (_2!37240 lt!2494598)) (head!14137 lt!2494630)) (= lambda!404958 lambda!404952))))

(declare-fun bs!1864230 () Bool)

(assert (= bs!1864230 (and d!2181464 d!2181040)))

(assert (=> bs!1864230 (= (= (head!14137 (_2!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404958 lambda!404905))))

(declare-fun bs!1864231 () Bool)

(assert (= bs!1864231 (and d!2181464 b!6998841)))

(assert (=> bs!1864231 (= (= (head!14137 (_2!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404958 lambda!404840))))

(declare-fun bs!1864232 () Bool)

(assert (= bs!1864232 (and d!2181464 d!2181130)))

(assert (=> bs!1864232 (= (= (head!14137 (_2!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404958 lambda!404921))))

(declare-fun bs!1864233 () Bool)

(assert (= bs!1864233 (and d!2181464 d!2181120)))

(assert (=> bs!1864233 (= (= (head!14137 (_2!37240 lt!2494598)) (h!73662 s!7408)) (= lambda!404958 lambda!404920))))

(declare-fun bs!1864234 () Bool)

(assert (= bs!1864234 (and d!2181464 d!2181312)))

(assert (=> bs!1864234 (= (= (head!14137 (_2!37240 lt!2494598)) (head!14137 lt!2494630)) (= lambda!404958 lambda!404946))))

(declare-fun bs!1864235 () Bool)

(assert (= bs!1864235 (and d!2181464 d!2181358)))

(assert (=> bs!1864235 (= (= (head!14137 (_2!37240 lt!2494598)) (head!14137 (_1!37240 lt!2494598))) (= lambda!404958 lambda!404950))))

(assert (=> d!2181464 true))

(assert (=> d!2181464 (= (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 lt!2494598))) (flatMap!2250 lt!2494633 lambda!404958))))

(declare-fun bs!1864236 () Bool)

(assert (= bs!1864236 d!2181464))

(declare-fun m!7693098 () Bool)

(assert (=> bs!1864236 m!7693098))

(assert (=> b!6999182 d!2181464))

(declare-fun d!2181466 () Bool)

(assert (=> d!2181466 (= (head!14137 (_2!37240 lt!2494598)) (h!73662 (_2!37240 lt!2494598)))))

(assert (=> b!6999182 d!2181466))

(declare-fun d!2181468 () Bool)

(assert (=> d!2181468 (= (tail!13297 (_2!37240 lt!2494598)) (t!381089 (_2!37240 lt!2494598)))))

(assert (=> b!6999182 d!2181468))

(declare-fun b!6999611 () Bool)

(declare-fun e!4207286 () (Set Context!12520))

(declare-fun call!635538 () (Set Context!12520))

(assert (=> b!6999611 (= e!4207286 call!635538)))

(declare-fun call!635536 () (Set Context!12520))

(declare-fun c!1299221 () Bool)

(declare-fun c!1299224 () Bool)

(declare-fun bm!635531 () Bool)

(declare-fun call!635539 () List!67337)

(declare-fun c!1299223 () Bool)

(assert (=> bm!635531 (= call!635536 (derivationStepZipperDown!1982 (ite c!1299221 (regTwo!35041 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299224 (regTwo!35040 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299223 (regOne!35040 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (reg!17593 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))) (ite (or c!1299221 c!1299224) (ite c!1299042 lt!2494627 (Context!12521 call!635467)) (Context!12521 call!635539)) (h!73662 s!7408)))))

(declare-fun b!6999612 () Bool)

(declare-fun e!4207283 () (Set Context!12520))

(declare-fun e!4207284 () (Set Context!12520))

(assert (=> b!6999612 (= e!4207283 e!4207284)))

(assert (=> b!6999612 (= c!1299223 (is-Concat!26109 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999613 () Bool)

(assert (=> b!6999613 (= e!4207284 call!635538)))

(declare-fun bm!635532 () Bool)

(declare-fun call!635537 () (Set Context!12520))

(assert (=> bm!635532 (= call!635538 call!635537)))

(declare-fun bm!635533 () Bool)

(declare-fun call!635541 () List!67337)

(assert (=> bm!635533 (= call!635539 call!635541)))

(declare-fun d!2181470 () Bool)

(declare-fun c!1299222 () Bool)

(assert (=> d!2181470 (= c!1299222 (and (is-ElementMatch!17264 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (= (c!1298969 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (h!73662 s!7408))))))

(declare-fun e!4207282 () (Set Context!12520))

(assert (=> d!2181470 (= (derivationStepZipperDown!1982 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (ite c!1299042 lt!2494627 (Context!12521 call!635467)) (h!73662 s!7408)) e!4207282)))

(declare-fun b!6999614 () Bool)

(declare-fun call!635540 () (Set Context!12520))

(assert (=> b!6999614 (= e!4207283 (set.union call!635540 call!635537))))

(declare-fun bm!635534 () Bool)

(assert (=> bm!635534 (= call!635540 (derivationStepZipperDown!1982 (ite c!1299221 (regOne!35041 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (regOne!35040 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) (ite c!1299221 (ite c!1299042 lt!2494627 (Context!12521 call!635467)) (Context!12521 call!635541)) (h!73662 s!7408)))))

(declare-fun bm!635535 () Bool)

(assert (=> bm!635535 (= call!635541 ($colon$colon!2503 (exprs!6760 (ite c!1299042 lt!2494627 (Context!12521 call!635467))) (ite (or c!1299224 c!1299223) (regTwo!35040 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6999615 () Bool)

(assert (=> b!6999615 (= e!4207282 (set.insert (ite c!1299042 lt!2494627 (Context!12521 call!635467)) (as set.empty (Set Context!12520))))))

(declare-fun b!6999616 () Bool)

(declare-fun e!4207287 () Bool)

(assert (=> b!6999616 (= c!1299224 e!4207287)))

(declare-fun res!2855277 () Bool)

(assert (=> b!6999616 (=> (not res!2855277) (not e!4207287))))

(assert (=> b!6999616 (= res!2855277 (is-Concat!26109 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun e!4207285 () (Set Context!12520))

(assert (=> b!6999616 (= e!4207285 e!4207283)))

(declare-fun b!6999617 () Bool)

(assert (=> b!6999617 (= e!4207282 e!4207285)))

(assert (=> b!6999617 (= c!1299221 (is-Union!17264 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999618 () Bool)

(assert (=> b!6999618 (= e!4207285 (set.union call!635540 call!635536))))

(declare-fun b!6999619 () Bool)

(declare-fun c!1299220 () Bool)

(assert (=> b!6999619 (= c!1299220 (is-Star!17264 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (=> b!6999619 (= e!4207284 e!4207286)))

(declare-fun b!6999620 () Bool)

(assert (=> b!6999620 (= e!4207286 (as set.empty (Set Context!12520)))))

(declare-fun bm!635536 () Bool)

(assert (=> bm!635536 (= call!635537 call!635536)))

(declare-fun b!6999621 () Bool)

(assert (=> b!6999621 (= e!4207287 (nullable!7024 (regOne!35040 (ite c!1299042 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(assert (= (and d!2181470 c!1299222) b!6999615))

(assert (= (and d!2181470 (not c!1299222)) b!6999617))

(assert (= (and b!6999617 c!1299221) b!6999618))

(assert (= (and b!6999617 (not c!1299221)) b!6999616))

(assert (= (and b!6999616 res!2855277) b!6999621))

(assert (= (and b!6999616 c!1299224) b!6999614))

(assert (= (and b!6999616 (not c!1299224)) b!6999612))

(assert (= (and b!6999612 c!1299223) b!6999613))

(assert (= (and b!6999612 (not c!1299223)) b!6999619))

(assert (= (and b!6999619 c!1299220) b!6999611))

(assert (= (and b!6999619 (not c!1299220)) b!6999620))

(assert (= (or b!6999613 b!6999611) bm!635533))

(assert (= (or b!6999613 b!6999611) bm!635532))

(assert (= (or b!6999614 bm!635532) bm!635536))

(assert (= (or b!6999614 bm!635533) bm!635535))

(assert (= (or b!6999618 b!6999614) bm!635534))

(assert (= (or b!6999618 bm!635536) bm!635531))

(declare-fun m!7693100 () Bool)

(assert (=> b!6999615 m!7693100))

(declare-fun m!7693102 () Bool)

(assert (=> bm!635531 m!7693102))

(declare-fun m!7693104 () Bool)

(assert (=> bm!635535 m!7693104))

(declare-fun m!7693106 () Bool)

(assert (=> b!6999621 m!7693106))

(declare-fun m!7693108 () Bool)

(assert (=> bm!635534 m!7693108))

(assert (=> bm!635460 d!2181470))

(declare-fun b!6999636 () Bool)

(declare-fun e!4207303 () Bool)

(declare-fun call!635546 () Bool)

(assert (=> b!6999636 (= e!4207303 call!635546)))

(declare-fun b!6999637 () Bool)

(declare-fun e!4207305 () Bool)

(assert (=> b!6999637 (= e!4207305 e!4207303)))

(declare-fun res!2855291 () Bool)

(declare-fun call!635547 () Bool)

(assert (=> b!6999637 (= res!2855291 call!635547)))

(assert (=> b!6999637 (=> res!2855291 e!4207303)))

(declare-fun b!6999638 () Bool)

(declare-fun e!4207301 () Bool)

(declare-fun e!4207304 () Bool)

(assert (=> b!6999638 (= e!4207301 e!4207304)))

(declare-fun res!2855290 () Bool)

(assert (=> b!6999638 (=> res!2855290 e!4207304)))

(assert (=> b!6999638 (= res!2855290 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun d!2181472 () Bool)

(declare-fun res!2855288 () Bool)

(declare-fun e!4207302 () Bool)

(assert (=> d!2181472 (=> res!2855288 e!4207302)))

(assert (=> d!2181472 (= res!2855288 (is-EmptyExpr!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> d!2181472 (= (nullableFct!2656 (h!73661 (exprs!6760 lt!2494613))) e!4207302)))

(declare-fun bm!635541 () Bool)

(declare-fun c!1299227 () Bool)

(assert (=> bm!635541 (= call!635547 (nullable!7024 (ite c!1299227 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999639 () Bool)

(declare-fun e!4207300 () Bool)

(assert (=> b!6999639 (= e!4207300 call!635547)))

(declare-fun b!6999640 () Bool)

(assert (=> b!6999640 (= e!4207304 e!4207305)))

(assert (=> b!6999640 (= c!1299227 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999641 () Bool)

(assert (=> b!6999641 (= e!4207305 e!4207300)))

(declare-fun res!2855292 () Bool)

(assert (=> b!6999641 (= res!2855292 call!635546)))

(assert (=> b!6999641 (=> (not res!2855292) (not e!4207300))))

(declare-fun b!6999642 () Bool)

(assert (=> b!6999642 (= e!4207302 e!4207301)))

(declare-fun res!2855289 () Bool)

(assert (=> b!6999642 (=> (not res!2855289) (not e!4207301))))

(assert (=> b!6999642 (= res!2855289 (and (not (is-EmptyLang!17264 (h!73661 (exprs!6760 lt!2494613)))) (not (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun bm!635542 () Bool)

(assert (=> bm!635542 (= call!635546 (nullable!7024 (ite c!1299227 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (= (and d!2181472 (not res!2855288)) b!6999642))

(assert (= (and b!6999642 res!2855289) b!6999638))

(assert (= (and b!6999638 (not res!2855290)) b!6999640))

(assert (= (and b!6999640 c!1299227) b!6999637))

(assert (= (and b!6999640 (not c!1299227)) b!6999641))

(assert (= (and b!6999637 (not res!2855291)) b!6999636))

(assert (= (and b!6999641 res!2855292) b!6999639))

(assert (= (or b!6999636 b!6999641) bm!635542))

(assert (= (or b!6999637 b!6999639) bm!635541))

(declare-fun m!7693110 () Bool)

(assert (=> bm!635541 m!7693110))

(declare-fun m!7693112 () Bool)

(assert (=> bm!635542 m!7693112))

(assert (=> d!2181050 d!2181472))

(declare-fun d!2181474 () Bool)

(declare-fun res!2855293 () Bool)

(declare-fun e!4207306 () Bool)

(assert (=> d!2181474 (=> res!2855293 e!4207306)))

(assert (=> d!2181474 (= res!2855293 (is-Nil!67213 (++!15230 lt!2494622 (exprs!6760 ct2!306))))))

(assert (=> d!2181474 (= (forall!16178 (++!15230 lt!2494622 (exprs!6760 ct2!306)) lambda!404839) e!4207306)))

(declare-fun b!6999643 () Bool)

(declare-fun e!4207307 () Bool)

(assert (=> b!6999643 (= e!4207306 e!4207307)))

(declare-fun res!2855294 () Bool)

(assert (=> b!6999643 (=> (not res!2855294) (not e!4207307))))

(assert (=> b!6999643 (= res!2855294 (dynLambda!26996 lambda!404839 (h!73661 (++!15230 lt!2494622 (exprs!6760 ct2!306)))))))

(declare-fun b!6999644 () Bool)

(assert (=> b!6999644 (= e!4207307 (forall!16178 (t!381088 (++!15230 lt!2494622 (exprs!6760 ct2!306))) lambda!404839))))

(assert (= (and d!2181474 (not res!2855293)) b!6999643))

(assert (= (and b!6999643 res!2855294) b!6999644))

(declare-fun b_lambda!263535 () Bool)

(assert (=> (not b_lambda!263535) (not b!6999643)))

(declare-fun m!7693114 () Bool)

(assert (=> b!6999643 m!7693114))

(declare-fun m!7693116 () Bool)

(assert (=> b!6999644 m!7693116))

(assert (=> d!2181058 d!2181474))

(assert (=> d!2181058 d!2181054))

(declare-fun d!2181476 () Bool)

(assert (=> d!2181476 (forall!16178 (++!15230 lt!2494622 (exprs!6760 ct2!306)) lambda!404839)))

(assert (=> d!2181476 true))

(declare-fun _$78!511 () Unit!161186)

(assert (=> d!2181476 (= (choose!52450 lt!2494622 (exprs!6760 ct2!306) lambda!404839) _$78!511)))

(declare-fun bs!1864237 () Bool)

(assert (= bs!1864237 d!2181476))

(assert (=> bs!1864237 m!7691798))

(assert (=> bs!1864237 m!7691798))

(assert (=> bs!1864237 m!7692122))

(assert (=> d!2181058 d!2181476))

(declare-fun d!2181478 () Bool)

(declare-fun res!2855295 () Bool)

(declare-fun e!4207308 () Bool)

(assert (=> d!2181478 (=> res!2855295 e!4207308)))

(assert (=> d!2181478 (= res!2855295 (is-Nil!67213 lt!2494622))))

(assert (=> d!2181478 (= (forall!16178 lt!2494622 lambda!404839) e!4207308)))

(declare-fun b!6999645 () Bool)

(declare-fun e!4207309 () Bool)

(assert (=> b!6999645 (= e!4207308 e!4207309)))

(declare-fun res!2855296 () Bool)

(assert (=> b!6999645 (=> (not res!2855296) (not e!4207309))))

(assert (=> b!6999645 (= res!2855296 (dynLambda!26996 lambda!404839 (h!73661 lt!2494622)))))

(declare-fun b!6999646 () Bool)

(assert (=> b!6999646 (= e!4207309 (forall!16178 (t!381088 lt!2494622) lambda!404839))))

(assert (= (and d!2181478 (not res!2855295)) b!6999645))

(assert (= (and b!6999645 res!2855296) b!6999646))

(declare-fun b_lambda!263537 () Bool)

(assert (=> (not b_lambda!263537) (not b!6999645)))

(declare-fun m!7693118 () Bool)

(assert (=> b!6999645 m!7693118))

(declare-fun m!7693120 () Bool)

(assert (=> b!6999646 m!7693120))

(assert (=> d!2181058 d!2181478))

(assert (=> d!2181154 d!2181378))

(declare-fun b!6999647 () Bool)

(declare-fun e!4207314 () (Set Context!12520))

(declare-fun call!635550 () (Set Context!12520))

(assert (=> b!6999647 (= e!4207314 call!635550)))

(declare-fun c!1299229 () Bool)

(declare-fun c!1299232 () Bool)

(declare-fun c!1299231 () Bool)

(declare-fun call!635551 () List!67337)

(declare-fun bm!635543 () Bool)

(declare-fun call!635548 () (Set Context!12520))

(assert (=> bm!635543 (= call!635548 (derivationStepZipperDown!1982 (ite c!1299229 (regTwo!35041 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299232 (regTwo!35040 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299231 (regOne!35040 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (reg!17593 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))) (ite (or c!1299229 c!1299232) (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456)) (Context!12521 call!635551)) (h!73662 s!7408)))))

(declare-fun b!6999648 () Bool)

(declare-fun e!4207311 () (Set Context!12520))

(declare-fun e!4207312 () (Set Context!12520))

(assert (=> b!6999648 (= e!4207311 e!4207312)))

(assert (=> b!6999648 (= c!1299231 (is-Concat!26109 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun b!6999649 () Bool)

(assert (=> b!6999649 (= e!4207312 call!635550)))

(declare-fun bm!635544 () Bool)

(declare-fun call!635549 () (Set Context!12520))

(assert (=> bm!635544 (= call!635550 call!635549)))

(declare-fun bm!635545 () Bool)

(declare-fun call!635553 () List!67337)

(assert (=> bm!635545 (= call!635551 call!635553)))

(declare-fun c!1299230 () Bool)

(declare-fun d!2181480 () Bool)

(assert (=> d!2181480 (= c!1299230 (and (is-ElementMatch!17264 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (= (c!1298969 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (h!73662 s!7408))))))

(declare-fun e!4207310 () (Set Context!12520))

(assert (=> d!2181480 (= (derivationStepZipperDown!1982 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))) (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456)) (h!73662 s!7408)) e!4207310)))

(declare-fun b!6999650 () Bool)

(declare-fun call!635552 () (Set Context!12520))

(assert (=> b!6999650 (= e!4207311 (set.union call!635552 call!635549))))

(declare-fun bm!635546 () Bool)

(assert (=> bm!635546 (= call!635552 (derivationStepZipperDown!1982 (ite c!1299229 (regOne!35041 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (regOne!35040 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))) (ite c!1299229 (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456)) (Context!12521 call!635553)) (h!73662 s!7408)))))

(declare-fun bm!635547 () Bool)

(assert (=> bm!635547 (= call!635553 ($colon$colon!2503 (exprs!6760 (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456))) (ite (or c!1299232 c!1299231) (regTwo!35040 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))))

(declare-fun b!6999651 () Bool)

(assert (=> b!6999651 (= e!4207310 (set.insert (ite (or c!1299021 c!1299024) lt!2494587 (Context!12521 call!635456)) (as set.empty (Set Context!12520))))))

(declare-fun b!6999652 () Bool)

(declare-fun e!4207315 () Bool)

(assert (=> b!6999652 (= c!1299232 e!4207315)))

(declare-fun res!2855297 () Bool)

(assert (=> b!6999652 (=> (not res!2855297) (not e!4207315))))

(assert (=> b!6999652 (= res!2855297 (is-Concat!26109 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun e!4207313 () (Set Context!12520))

(assert (=> b!6999652 (= e!4207313 e!4207311)))

(declare-fun b!6999653 () Bool)

(assert (=> b!6999653 (= e!4207310 e!4207313)))

(assert (=> b!6999653 (= c!1299229 (is-Union!17264 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun b!6999654 () Bool)

(assert (=> b!6999654 (= e!4207313 (set.union call!635552 call!635548))))

(declare-fun b!6999655 () Bool)

(declare-fun c!1299228 () Bool)

(assert (=> b!6999655 (= c!1299228 (is-Star!17264 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(assert (=> b!6999655 (= e!4207312 e!4207314)))

(declare-fun b!6999656 () Bool)

(assert (=> b!6999656 (= e!4207314 (as set.empty (Set Context!12520)))))

(declare-fun bm!635548 () Bool)

(assert (=> bm!635548 (= call!635549 call!635548)))

(declare-fun b!6999657 () Bool)

(assert (=> b!6999657 (= e!4207315 (nullable!7024 (regOne!35040 (ite c!1299021 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299024 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299023 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))))

(assert (= (and d!2181480 c!1299230) b!6999651))

(assert (= (and d!2181480 (not c!1299230)) b!6999653))

(assert (= (and b!6999653 c!1299229) b!6999654))

(assert (= (and b!6999653 (not c!1299229)) b!6999652))

(assert (= (and b!6999652 res!2855297) b!6999657))

(assert (= (and b!6999652 c!1299232) b!6999650))

(assert (= (and b!6999652 (not c!1299232)) b!6999648))

(assert (= (and b!6999648 c!1299231) b!6999649))

(assert (= (and b!6999648 (not c!1299231)) b!6999655))

(assert (= (and b!6999655 c!1299228) b!6999647))

(assert (= (and b!6999655 (not c!1299228)) b!6999656))

(assert (= (or b!6999649 b!6999647) bm!635545))

(assert (= (or b!6999649 b!6999647) bm!635544))

(assert (= (or b!6999650 bm!635544) bm!635548))

(assert (= (or b!6999650 bm!635545) bm!635547))

(assert (= (or b!6999654 b!6999650) bm!635546))

(assert (= (or b!6999654 bm!635548) bm!635543))

(declare-fun m!7693122 () Bool)

(assert (=> b!6999651 m!7693122))

(declare-fun m!7693124 () Bool)

(assert (=> bm!635543 m!7693124))

(declare-fun m!7693126 () Bool)

(assert (=> bm!635547 m!7693126))

(declare-fun m!7693128 () Bool)

(assert (=> b!6999657 m!7693128))

(declare-fun m!7693130 () Bool)

(assert (=> bm!635546 m!7693130))

(assert (=> bm!635448 d!2181480))

(declare-fun bs!1864238 () Bool)

(declare-fun d!2181482 () Bool)

(assert (= bs!1864238 (and d!2181482 d!2181308)))

(declare-fun lambda!404959 () Int)

(assert (=> bs!1864238 (= lambda!404959 lambda!404945)))

(declare-fun bs!1864239 () Bool)

(assert (= bs!1864239 (and d!2181482 d!2181456)))

(assert (=> bs!1864239 (= lambda!404959 lambda!404957)))

(declare-fun bs!1864240 () Bool)

(assert (= bs!1864240 (and d!2181482 d!2181100)))

(assert (=> bs!1864240 (not (= lambda!404959 lambda!404919))))

(declare-fun bs!1864241 () Bool)

(assert (= bs!1864241 (and d!2181482 d!2181442)))

(assert (=> bs!1864241 (= lambda!404959 lambda!404956)))

(declare-fun bs!1864242 () Bool)

(assert (= bs!1864242 (and d!2181482 b!6998816)))

(assert (=> bs!1864242 (not (= lambda!404959 lambda!404837))))

(declare-fun bs!1864243 () Bool)

(assert (= bs!1864243 (and d!2181482 d!2181330)))

(assert (=> bs!1864243 (= lambda!404959 lambda!404948)))

(declare-fun bs!1864244 () Bool)

(assert (= bs!1864244 (and d!2181482 d!2181398)))

(assert (=> bs!1864244 (= lambda!404959 lambda!404954)))

(declare-fun bs!1864245 () Bool)

(assert (= bs!1864245 (and d!2181482 d!2181092)))

(assert (=> bs!1864245 (not (= lambda!404959 lambda!404916))))

(declare-fun bs!1864246 () Bool)

(assert (= bs!1864246 (and d!2181482 d!2181362)))

(assert (=> bs!1864246 (= lambda!404959 lambda!404951)))

(declare-fun bs!1864247 () Bool)

(assert (= bs!1864247 (and d!2181482 d!2181436)))

(assert (=> bs!1864247 (= lambda!404959 lambda!404955)))

(assert (=> d!2181482 (= (nullableZipper!2459 lt!2494625) (exists!3079 lt!2494625 lambda!404959))))

(declare-fun bs!1864248 () Bool)

(assert (= bs!1864248 d!2181482))

(declare-fun m!7693132 () Bool)

(assert (=> bs!1864248 m!7693132))

(assert (=> b!6999050 d!2181482))

(declare-fun d!2181484 () Bool)

(assert (=> d!2181484 (= (isEmpty!39238 (_2!37240 lt!2494598)) (is-Nil!67214 (_2!37240 lt!2494598)))))

(assert (=> d!2181138 d!2181484))

(declare-fun bs!1864249 () Bool)

(declare-fun d!2181486 () Bool)

(assert (= bs!1864249 (and d!2181486 d!2181308)))

(declare-fun lambda!404960 () Int)

(assert (=> bs!1864249 (= lambda!404960 lambda!404945)))

(declare-fun bs!1864250 () Bool)

(assert (= bs!1864250 (and d!2181486 d!2181482)))

(assert (=> bs!1864250 (= lambda!404960 lambda!404959)))

(declare-fun bs!1864251 () Bool)

(assert (= bs!1864251 (and d!2181486 d!2181456)))

(assert (=> bs!1864251 (= lambda!404960 lambda!404957)))

(declare-fun bs!1864252 () Bool)

(assert (= bs!1864252 (and d!2181486 d!2181100)))

(assert (=> bs!1864252 (not (= lambda!404960 lambda!404919))))

(declare-fun bs!1864253 () Bool)

(assert (= bs!1864253 (and d!2181486 d!2181442)))

(assert (=> bs!1864253 (= lambda!404960 lambda!404956)))

(declare-fun bs!1864254 () Bool)

(assert (= bs!1864254 (and d!2181486 b!6998816)))

(assert (=> bs!1864254 (not (= lambda!404960 lambda!404837))))

(declare-fun bs!1864255 () Bool)

(assert (= bs!1864255 (and d!2181486 d!2181330)))

(assert (=> bs!1864255 (= lambda!404960 lambda!404948)))

(declare-fun bs!1864256 () Bool)

(assert (= bs!1864256 (and d!2181486 d!2181398)))

(assert (=> bs!1864256 (= lambda!404960 lambda!404954)))

(declare-fun bs!1864257 () Bool)

(assert (= bs!1864257 (and d!2181486 d!2181092)))

(assert (=> bs!1864257 (not (= lambda!404960 lambda!404916))))

(declare-fun bs!1864258 () Bool)

(assert (= bs!1864258 (and d!2181486 d!2181362)))

(assert (=> bs!1864258 (= lambda!404960 lambda!404951)))

(declare-fun bs!1864259 () Bool)

(assert (= bs!1864259 (and d!2181486 d!2181436)))

(assert (=> bs!1864259 (= lambda!404960 lambda!404955)))

(assert (=> d!2181486 (= (nullableZipper!2459 lt!2494582) (exists!3079 lt!2494582 lambda!404960))))

(declare-fun bs!1864260 () Bool)

(assert (= bs!1864260 d!2181486))

(declare-fun m!7693134 () Bool)

(assert (=> bs!1864260 m!7693134))

(assert (=> b!6999191 d!2181486))

(declare-fun d!2181488 () Bool)

(declare-fun res!2855302 () Bool)

(declare-fun e!4207320 () Bool)

(assert (=> d!2181488 (=> res!2855302 e!4207320)))

(assert (=> d!2181488 (= res!2855302 (is-Nil!67215 lt!2494849))))

(assert (=> d!2181488 (= (noDuplicate!2541 lt!2494849) e!4207320)))

(declare-fun b!6999662 () Bool)

(declare-fun e!4207321 () Bool)

(assert (=> b!6999662 (= e!4207320 e!4207321)))

(declare-fun res!2855303 () Bool)

(assert (=> b!6999662 (=> (not res!2855303) (not e!4207321))))

(assert (=> b!6999662 (= res!2855303 (not (contains!20421 (t!381090 lt!2494849) (h!73663 lt!2494849))))))

(declare-fun b!6999663 () Bool)

(assert (=> b!6999663 (= e!4207321 (noDuplicate!2541 (t!381090 lt!2494849)))))

(assert (= (and d!2181488 (not res!2855302)) b!6999662))

(assert (= (and b!6999662 res!2855303) b!6999663))

(declare-fun m!7693136 () Bool)

(assert (=> b!6999662 m!7693136))

(declare-fun m!7693138 () Bool)

(assert (=> b!6999663 m!7693138))

(assert (=> d!2181090 d!2181488))

(declare-fun d!2181490 () Bool)

(declare-fun e!4207328 () Bool)

(assert (=> d!2181490 e!4207328))

(declare-fun res!2855308 () Bool)

(assert (=> d!2181490 (=> (not res!2855308) (not e!4207328))))

(declare-fun res!2855309 () List!67339)

(assert (=> d!2181490 (= res!2855308 (noDuplicate!2541 res!2855309))))

(declare-fun e!4207330 () Bool)

(assert (=> d!2181490 e!4207330))

(assert (=> d!2181490 (= (choose!52454 lt!2494580) res!2855309)))

(declare-fun b!6999671 () Bool)

(declare-fun e!4207329 () Bool)

(declare-fun tp!1930957 () Bool)

(assert (=> b!6999671 (= e!4207329 tp!1930957)))

(declare-fun b!6999670 () Bool)

(declare-fun tp!1930958 () Bool)

(assert (=> b!6999670 (= e!4207330 (and (inv!86020 (h!73663 res!2855309)) e!4207329 tp!1930958))))

(declare-fun b!6999672 () Bool)

(assert (=> b!6999672 (= e!4207328 (= (content!13307 res!2855309) lt!2494580))))

(assert (= b!6999670 b!6999671))

(assert (= (and d!2181490 (is-Cons!67215 res!2855309)) b!6999670))

(assert (= (and d!2181490 res!2855308) b!6999672))

(declare-fun m!7693140 () Bool)

(assert (=> d!2181490 m!7693140))

(declare-fun m!7693142 () Bool)

(assert (=> b!6999670 m!7693142))

(declare-fun m!7693144 () Bool)

(assert (=> b!6999672 m!7693144))

(assert (=> d!2181090 d!2181490))

(declare-fun d!2181492 () Bool)

(declare-fun c!1299233 () Bool)

(assert (=> d!2181492 (= c!1299233 (isEmpty!39238 (_2!37240 (get!23566 lt!2494843))))))

(declare-fun e!4207331 () Bool)

(assert (=> d!2181492 (= (matchZipper!2804 lt!2494633 (_2!37240 (get!23566 lt!2494843))) e!4207331)))

(declare-fun b!6999673 () Bool)

(assert (=> b!6999673 (= e!4207331 (nullableZipper!2459 lt!2494633))))

(declare-fun b!6999674 () Bool)

(assert (=> b!6999674 (= e!4207331 (matchZipper!2804 (derivationStepZipper!2744 lt!2494633 (head!14137 (_2!37240 (get!23566 lt!2494843)))) (tail!13297 (_2!37240 (get!23566 lt!2494843)))))))

(assert (= (and d!2181492 c!1299233) b!6999673))

(assert (= (and d!2181492 (not c!1299233)) b!6999674))

(declare-fun m!7693146 () Bool)

(assert (=> d!2181492 m!7693146))

(assert (=> b!6999673 m!7692324))

(declare-fun m!7693148 () Bool)

(assert (=> b!6999674 m!7693148))

(assert (=> b!6999674 m!7693148))

(declare-fun m!7693150 () Bool)

(assert (=> b!6999674 m!7693150))

(declare-fun m!7693152 () Bool)

(assert (=> b!6999674 m!7693152))

(assert (=> b!6999674 m!7693150))

(assert (=> b!6999674 m!7693152))

(declare-fun m!7693154 () Bool)

(assert (=> b!6999674 m!7693154))

(assert (=> b!6999078 d!2181492))

(declare-fun d!2181494 () Bool)

(assert (=> d!2181494 (= (get!23566 lt!2494843) (v!53044 lt!2494843))))

(assert (=> b!6999078 d!2181494))

(declare-fun d!2181496 () Bool)

(assert (=> d!2181496 true))

(declare-fun setRes!48075 () Bool)

(assert (=> d!2181496 setRes!48075))

(declare-fun condSetEmpty!48075 () Bool)

(declare-fun res!2855310 () (Set Context!12520))

(assert (=> d!2181496 (= condSetEmpty!48075 (= res!2855310 (as set.empty (Set Context!12520))))))

(assert (=> d!2181496 (= (choose!52452 lt!2494582 lambda!404840) res!2855310)))

(declare-fun setIsEmpty!48075 () Bool)

(assert (=> setIsEmpty!48075 setRes!48075))

(declare-fun tp!1930959 () Bool)

(declare-fun setNonEmpty!48075 () Bool)

(declare-fun e!4207332 () Bool)

(declare-fun setElem!48075 () Context!12520)

(assert (=> setNonEmpty!48075 (= setRes!48075 (and tp!1930959 (inv!86020 setElem!48075) e!4207332))))

(declare-fun setRest!48075 () (Set Context!12520))

(assert (=> setNonEmpty!48075 (= res!2855310 (set.union (set.insert setElem!48075 (as set.empty (Set Context!12520))) setRest!48075))))

(declare-fun b!6999675 () Bool)

(declare-fun tp!1930960 () Bool)

(assert (=> b!6999675 (= e!4207332 tp!1930960)))

(assert (= (and d!2181496 condSetEmpty!48075) setIsEmpty!48075))

(assert (= (and d!2181496 (not condSetEmpty!48075)) setNonEmpty!48075))

(assert (= setNonEmpty!48075 b!6999675))

(declare-fun m!7693156 () Bool)

(assert (=> setNonEmpty!48075 m!7693156))

(assert (=> d!2181128 d!2181496))

(declare-fun d!2181498 () Bool)

(assert (=> d!2181498 (= (flatMap!2250 lt!2494623 lambda!404920) (choose!52452 lt!2494623 lambda!404920))))

(declare-fun bs!1864261 () Bool)

(assert (= bs!1864261 d!2181498))

(declare-fun m!7693158 () Bool)

(assert (=> bs!1864261 m!7693158))

(assert (=> d!2181120 d!2181498))

(declare-fun b!6999676 () Bool)

(declare-fun e!4207337 () (Set Context!12520))

(declare-fun call!635556 () (Set Context!12520))

(assert (=> b!6999676 (= e!4207337 call!635556)))

(declare-fun c!1299235 () Bool)

(declare-fun call!635557 () List!67337)

(declare-fun bm!635549 () Bool)

(declare-fun call!635554 () (Set Context!12520))

(declare-fun c!1299238 () Bool)

(declare-fun c!1299237 () Bool)

(assert (=> bm!635549 (= call!635554 (derivationStepZipperDown!1982 (ite c!1299235 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299238 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299237 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))) (ite (or c!1299235 c!1299238) (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (Context!12521 call!635557)) (h!73662 s!7408)))))

(declare-fun b!6999677 () Bool)

(declare-fun e!4207334 () (Set Context!12520))

(declare-fun e!4207335 () (Set Context!12520))

(assert (=> b!6999677 (= e!4207334 e!4207335)))

(assert (=> b!6999677 (= c!1299237 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999678 () Bool)

(assert (=> b!6999678 (= e!4207335 call!635556)))

(declare-fun bm!635550 () Bool)

(declare-fun call!635555 () (Set Context!12520))

(assert (=> bm!635550 (= call!635556 call!635555)))

(declare-fun bm!635551 () Bool)

(declare-fun call!635559 () List!67337)

(assert (=> bm!635551 (= call!635557 call!635559)))

(declare-fun d!2181500 () Bool)

(declare-fun c!1299236 () Bool)

(assert (=> d!2181500 (= c!1299236 (and (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494613))) (= (c!1298969 (h!73661 (exprs!6760 lt!2494613))) (h!73662 s!7408))))))

(declare-fun e!4207333 () (Set Context!12520))

(assert (=> d!2181500 (= (derivationStepZipperDown!1982 (h!73661 (exprs!6760 lt!2494613)) (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (h!73662 s!7408)) e!4207333)))

(declare-fun b!6999679 () Bool)

(declare-fun call!635558 () (Set Context!12520))

(assert (=> b!6999679 (= e!4207334 (set.union call!635558 call!635555))))

(declare-fun bm!635552 () Bool)

(assert (=> bm!635552 (= call!635558 (derivationStepZipperDown!1982 (ite c!1299235 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (ite c!1299235 (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (Context!12521 call!635559)) (h!73662 s!7408)))))

(declare-fun bm!635553 () Bool)

(assert (=> bm!635553 (= call!635559 ($colon$colon!2503 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))) (ite (or c!1299238 c!1299237) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun b!6999680 () Bool)

(assert (=> b!6999680 (= e!4207333 (set.insert (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (as set.empty (Set Context!12520))))))

(declare-fun b!6999681 () Bool)

(declare-fun e!4207338 () Bool)

(assert (=> b!6999681 (= c!1299238 e!4207338)))

(declare-fun res!2855311 () Bool)

(assert (=> b!6999681 (=> (not res!2855311) (not e!4207338))))

(assert (=> b!6999681 (= res!2855311 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun e!4207336 () (Set Context!12520))

(assert (=> b!6999681 (= e!4207336 e!4207334)))

(declare-fun b!6999682 () Bool)

(assert (=> b!6999682 (= e!4207333 e!4207336)))

(assert (=> b!6999682 (= c!1299235 (is-Union!17264 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999683 () Bool)

(assert (=> b!6999683 (= e!4207336 (set.union call!635558 call!635554))))

(declare-fun b!6999684 () Bool)

(declare-fun c!1299234 () Bool)

(assert (=> b!6999684 (= c!1299234 (is-Star!17264 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> b!6999684 (= e!4207335 e!4207337)))

(declare-fun b!6999685 () Bool)

(assert (=> b!6999685 (= e!4207337 (as set.empty (Set Context!12520)))))

(declare-fun bm!635554 () Bool)

(assert (=> bm!635554 (= call!635555 call!635554)))

(declare-fun b!6999686 () Bool)

(assert (=> b!6999686 (= e!4207338 (nullable!7024 (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181500 c!1299236) b!6999680))

(assert (= (and d!2181500 (not c!1299236)) b!6999682))

(assert (= (and b!6999682 c!1299235) b!6999683))

(assert (= (and b!6999682 (not c!1299235)) b!6999681))

(assert (= (and b!6999681 res!2855311) b!6999686))

(assert (= (and b!6999681 c!1299238) b!6999679))

(assert (= (and b!6999681 (not c!1299238)) b!6999677))

(assert (= (and b!6999677 c!1299237) b!6999678))

(assert (= (and b!6999677 (not c!1299237)) b!6999684))

(assert (= (and b!6999684 c!1299234) b!6999676))

(assert (= (and b!6999684 (not c!1299234)) b!6999685))

(assert (= (or b!6999678 b!6999676) bm!635551))

(assert (= (or b!6999678 b!6999676) bm!635550))

(assert (= (or b!6999679 bm!635550) bm!635554))

(assert (= (or b!6999679 bm!635551) bm!635553))

(assert (= (or b!6999683 b!6999679) bm!635552))

(assert (= (or b!6999683 bm!635554) bm!635549))

(declare-fun m!7693160 () Bool)

(assert (=> b!6999680 m!7693160))

(declare-fun m!7693162 () Bool)

(assert (=> bm!635549 m!7693162))

(declare-fun m!7693164 () Bool)

(assert (=> bm!635553 m!7693164))

(assert (=> b!6999686 m!7692132))

(declare-fun m!7693166 () Bool)

(assert (=> bm!635552 m!7693166))

(assert (=> bm!635476 d!2181500))

(declare-fun d!2181502 () Bool)

(declare-fun c!1299239 () Bool)

(assert (=> d!2181502 (= c!1299239 (is-Nil!67213 lt!2494831))))

(declare-fun e!4207339 () (Set Regex!17264))

(assert (=> d!2181502 (= (content!13306 lt!2494831) e!4207339)))

(declare-fun b!6999687 () Bool)

(assert (=> b!6999687 (= e!4207339 (as set.empty (Set Regex!17264)))))

(declare-fun b!6999688 () Bool)

(assert (=> b!6999688 (= e!4207339 (set.union (set.insert (h!73661 lt!2494831) (as set.empty (Set Regex!17264))) (content!13306 (t!381088 lt!2494831))))))

(assert (= (and d!2181502 c!1299239) b!6999687))

(assert (= (and d!2181502 (not c!1299239)) b!6999688))

(declare-fun m!7693168 () Bool)

(assert (=> b!6999688 m!7693168))

(declare-fun m!7693170 () Bool)

(assert (=> b!6999688 m!7693170))

(assert (=> d!2181054 d!2181502))

(declare-fun d!2181504 () Bool)

(declare-fun c!1299240 () Bool)

(assert (=> d!2181504 (= c!1299240 (is-Nil!67213 lt!2494622))))

(declare-fun e!4207340 () (Set Regex!17264))

(assert (=> d!2181504 (= (content!13306 lt!2494622) e!4207340)))

(declare-fun b!6999689 () Bool)

(assert (=> b!6999689 (= e!4207340 (as set.empty (Set Regex!17264)))))

(declare-fun b!6999690 () Bool)

(assert (=> b!6999690 (= e!4207340 (set.union (set.insert (h!73661 lt!2494622) (as set.empty (Set Regex!17264))) (content!13306 (t!381088 lt!2494622))))))

(assert (= (and d!2181504 c!1299240) b!6999689))

(assert (= (and d!2181504 (not c!1299240)) b!6999690))

(declare-fun m!7693172 () Bool)

(assert (=> b!6999690 m!7693172))

(declare-fun m!7693174 () Bool)

(assert (=> b!6999690 m!7693174))

(assert (=> d!2181054 d!2181504))

(assert (=> d!2181054 d!2181412))

(declare-fun d!2181506 () Bool)

(declare-fun res!2855312 () Bool)

(declare-fun e!4207341 () Bool)

(assert (=> d!2181506 (=> res!2855312 e!4207341)))

(assert (=> d!2181506 (= res!2855312 (is-Nil!67213 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306))))))

(assert (=> d!2181506 (= (forall!16178 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)) lambda!404839) e!4207341)))

(declare-fun b!6999691 () Bool)

(declare-fun e!4207342 () Bool)

(assert (=> b!6999691 (= e!4207341 e!4207342)))

(declare-fun res!2855313 () Bool)

(assert (=> b!6999691 (=> (not res!2855313) (not e!4207342))))

(assert (=> b!6999691 (= res!2855313 (dynLambda!26996 lambda!404839 (h!73661 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)))))))

(declare-fun b!6999692 () Bool)

(assert (=> b!6999692 (= e!4207342 (forall!16178 (t!381088 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306))) lambda!404839))))

(assert (= (and d!2181506 (not res!2855312)) b!6999691))

(assert (= (and b!6999691 res!2855313) b!6999692))

(declare-fun b_lambda!263539 () Bool)

(assert (=> (not b_lambda!263539) (not b!6999691)))

(declare-fun m!7693176 () Bool)

(assert (=> b!6999691 m!7693176))

(declare-fun m!7693178 () Bool)

(assert (=> b!6999692 m!7693178))

(assert (=> d!2181042 d!2181506))

(assert (=> d!2181042 d!2181140))

(declare-fun d!2181508 () Bool)

(assert (=> d!2181508 (forall!16178 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)) lambda!404839)))

(assert (=> d!2181508 true))

(declare-fun _$78!512 () Unit!161186)

(assert (=> d!2181508 (= (choose!52450 (exprs!6760 lt!2494613) (exprs!6760 ct2!306) lambda!404839) _$78!512)))

(declare-fun bs!1864262 () Bool)

(assert (= bs!1864262 d!2181508))

(assert (=> bs!1864262 m!7691870))

(assert (=> bs!1864262 m!7691870))

(assert (=> bs!1864262 m!7692082))

(assert (=> d!2181042 d!2181508))

(declare-fun d!2181510 () Bool)

(declare-fun res!2855314 () Bool)

(declare-fun e!4207343 () Bool)

(assert (=> d!2181510 (=> res!2855314 e!4207343)))

(assert (=> d!2181510 (= res!2855314 (is-Nil!67213 (exprs!6760 lt!2494613)))))

(assert (=> d!2181510 (= (forall!16178 (exprs!6760 lt!2494613) lambda!404839) e!4207343)))

(declare-fun b!6999693 () Bool)

(declare-fun e!4207344 () Bool)

(assert (=> b!6999693 (= e!4207343 e!4207344)))

(declare-fun res!2855315 () Bool)

(assert (=> b!6999693 (=> (not res!2855315) (not e!4207344))))

(assert (=> b!6999693 (= res!2855315 (dynLambda!26996 lambda!404839 (h!73661 (exprs!6760 lt!2494613))))))

(declare-fun b!6999694 () Bool)

(assert (=> b!6999694 (= e!4207344 (forall!16178 (t!381088 (exprs!6760 lt!2494613)) lambda!404839))))

(assert (= (and d!2181510 (not res!2855314)) b!6999693))

(assert (= (and b!6999693 res!2855315) b!6999694))

(declare-fun b_lambda!263541 () Bool)

(assert (=> (not b_lambda!263541) (not b!6999693)))

(declare-fun m!7693180 () Bool)

(assert (=> b!6999693 m!7693180))

(declare-fun m!7693182 () Bool)

(assert (=> b!6999694 m!7693182))

(assert (=> d!2181042 d!2181510))

(declare-fun d!2181512 () Bool)

(declare-fun c!1299241 () Bool)

(assert (=> d!2181512 (= c!1299241 (isEmpty!39238 (tail!13297 (t!381089 s!7408))))))

(declare-fun e!4207345 () Bool)

(assert (=> d!2181512 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494604 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))) e!4207345)))

(declare-fun b!6999695 () Bool)

(assert (=> b!6999695 (= e!4207345 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494604 (head!14137 (t!381089 s!7408)))))))

(declare-fun b!6999696 () Bool)

(assert (=> b!6999696 (= e!4207345 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494604 (head!14137 (t!381089 s!7408))) (head!14137 (tail!13297 (t!381089 s!7408)))) (tail!13297 (tail!13297 (t!381089 s!7408)))))))

(assert (= (and d!2181512 c!1299241) b!6999695))

(assert (= (and d!2181512 (not c!1299241)) b!6999696))

(assert (=> d!2181512 m!7692314))

(assert (=> d!2181512 m!7692788))

(assert (=> b!6999695 m!7692424))

(declare-fun m!7693184 () Bool)

(assert (=> b!6999695 m!7693184))

(assert (=> b!6999696 m!7692314))

(assert (=> b!6999696 m!7692792))

(assert (=> b!6999696 m!7692424))

(assert (=> b!6999696 m!7692792))

(declare-fun m!7693186 () Bool)

(assert (=> b!6999696 m!7693186))

(assert (=> b!6999696 m!7692314))

(assert (=> b!6999696 m!7692796))

(assert (=> b!6999696 m!7693186))

(assert (=> b!6999696 m!7692796))

(declare-fun m!7693188 () Bool)

(assert (=> b!6999696 m!7693188))

(assert (=> b!6999219 d!2181512))

(declare-fun bs!1864263 () Bool)

(declare-fun d!2181514 () Bool)

(assert (= bs!1864263 (and d!2181514 d!2181464)))

(declare-fun lambda!404961 () Int)

(assert (=> bs!1864263 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_2!37240 lt!2494598))) (= lambda!404961 lambda!404958))))

(declare-fun bs!1864264 () Bool)

(assert (= bs!1864264 (and d!2181514 d!2181322)))

(assert (=> bs!1864264 (= lambda!404961 lambda!404947)))

(declare-fun bs!1864265 () Bool)

(assert (= bs!1864265 (and d!2181514 d!2181392)))

(assert (=> bs!1864265 (= (= (head!14137 (t!381089 s!7408)) (head!14137 s!7408)) (= lambda!404961 lambda!404953))))

(declare-fun bs!1864266 () Bool)

(assert (= bs!1864266 (and d!2181514 d!2181384)))

(assert (=> bs!1864266 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404961 lambda!404952))))

(declare-fun bs!1864267 () Bool)

(assert (= bs!1864267 (and d!2181514 d!2181040)))

(assert (=> bs!1864267 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404961 lambda!404905))))

(declare-fun bs!1864268 () Bool)

(assert (= bs!1864268 (and d!2181514 b!6998841)))

(assert (=> bs!1864268 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404961 lambda!404840))))

(declare-fun bs!1864269 () Bool)

(assert (= bs!1864269 (and d!2181514 d!2181130)))

(assert (=> bs!1864269 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404961 lambda!404921))))

(declare-fun bs!1864270 () Bool)

(assert (= bs!1864270 (and d!2181514 d!2181120)))

(assert (=> bs!1864270 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404961 lambda!404920))))

(declare-fun bs!1864271 () Bool)

(assert (= bs!1864271 (and d!2181514 d!2181312)))

(assert (=> bs!1864271 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404961 lambda!404946))))

(declare-fun bs!1864272 () Bool)

(assert (= bs!1864272 (and d!2181514 d!2181358)))

(assert (=> bs!1864272 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_1!37240 lt!2494598))) (= lambda!404961 lambda!404950))))

(assert (=> d!2181514 true))

(assert (=> d!2181514 (= (derivationStepZipper!2744 lt!2494604 (head!14137 (t!381089 s!7408))) (flatMap!2250 lt!2494604 lambda!404961))))

(declare-fun bs!1864273 () Bool)

(assert (= bs!1864273 d!2181514))

(declare-fun m!7693190 () Bool)

(assert (=> bs!1864273 m!7693190))

(assert (=> b!6999219 d!2181514))

(assert (=> b!6999219 d!2181324))

(assert (=> b!6999219 d!2181326))

(assert (=> b!6999049 d!2181318))

(declare-fun d!2181516 () Bool)

(declare-fun c!1299244 () Bool)

(assert (=> d!2181516 (= c!1299244 (is-Nil!67215 lt!2494849))))

(declare-fun e!4207348 () (Set Context!12520))

(assert (=> d!2181516 (= (content!13307 lt!2494849) e!4207348)))

(declare-fun b!6999701 () Bool)

(assert (=> b!6999701 (= e!4207348 (as set.empty (Set Context!12520)))))

(declare-fun b!6999702 () Bool)

(assert (=> b!6999702 (= e!4207348 (set.union (set.insert (h!73663 lt!2494849) (as set.empty (Set Context!12520))) (content!13307 (t!381090 lt!2494849))))))

(assert (= (and d!2181516 c!1299244) b!6999701))

(assert (= (and d!2181516 (not c!1299244)) b!6999702))

(declare-fun m!7693192 () Bool)

(assert (=> b!6999702 m!7693192))

(declare-fun m!7693194 () Bool)

(assert (=> b!6999702 m!7693194))

(assert (=> b!6999111 d!2181516))

(declare-fun d!2181518 () Bool)

(declare-fun c!1299245 () Bool)

(assert (=> d!2181518 (= c!1299245 (is-Nil!67215 lt!2494859))))

(declare-fun e!4207349 () (Set Context!12520))

(assert (=> d!2181518 (= (content!13307 lt!2494859) e!4207349)))

(declare-fun b!6999703 () Bool)

(assert (=> b!6999703 (= e!4207349 (as set.empty (Set Context!12520)))))

(declare-fun b!6999704 () Bool)

(assert (=> b!6999704 (= e!4207349 (set.union (set.insert (h!73663 lt!2494859) (as set.empty (Set Context!12520))) (content!13307 (t!381090 lt!2494859))))))

(assert (= (and d!2181518 c!1299245) b!6999703))

(assert (= (and d!2181518 (not c!1299245)) b!6999704))

(declare-fun m!7693196 () Bool)

(assert (=> b!6999704 m!7693196))

(declare-fun m!7693198 () Bool)

(assert (=> b!6999704 m!7693198))

(assert (=> b!6999152 d!2181518))

(declare-fun d!2181520 () Bool)

(declare-fun c!1299246 () Bool)

(declare-fun e!4207351 () Bool)

(assert (=> d!2181520 (= c!1299246 e!4207351)))

(declare-fun res!2855316 () Bool)

(assert (=> d!2181520 (=> (not res!2855316) (not e!4207351))))

(assert (=> d!2181520 (= res!2855316 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587))))))))

(declare-fun e!4207352 () (Set Context!12520))

(assert (=> d!2181520 (= (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494587))) (h!73662 s!7408)) e!4207352)))

(declare-fun b!6999705 () Bool)

(declare-fun e!4207350 () (Set Context!12520))

(assert (=> b!6999705 (= e!4207352 e!4207350)))

(declare-fun c!1299247 () Bool)

(assert (=> b!6999705 (= c!1299247 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587))))))))

(declare-fun b!6999706 () Bool)

(assert (=> b!6999706 (= e!4207350 (as set.empty (Set Context!12520)))))

(declare-fun b!6999707 () Bool)

(assert (=> b!6999707 (= e!4207351 (nullable!7024 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587)))))))))

(declare-fun call!635560 () (Set Context!12520))

(declare-fun b!6999708 () Bool)

(assert (=> b!6999708 (= e!4207352 (set.union call!635560 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587)))))) (h!73662 s!7408))))))

(declare-fun b!6999709 () Bool)

(assert (=> b!6999709 (= e!4207350 call!635560)))

(declare-fun bm!635555 () Bool)

(assert (=> bm!635555 (= call!635560 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587))))) (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494587)))))) (h!73662 s!7408)))))

(assert (= (and d!2181520 res!2855316) b!6999707))

(assert (= (and d!2181520 c!1299246) b!6999708))

(assert (= (and d!2181520 (not c!1299246)) b!6999705))

(assert (= (and b!6999705 c!1299247) b!6999709))

(assert (= (and b!6999705 (not c!1299247)) b!6999706))

(assert (= (or b!6999708 b!6999709) bm!635555))

(declare-fun m!7693200 () Bool)

(assert (=> b!6999707 m!7693200))

(declare-fun m!7693202 () Bool)

(assert (=> b!6999708 m!7693202))

(declare-fun m!7693204 () Bool)

(assert (=> bm!635555 m!7693204))

(assert (=> b!6999015 d!2181520))

(declare-fun b!6999710 () Bool)

(declare-fun e!4207354 () List!67338)

(assert (=> b!6999710 (= e!4207354 (_2!37240 lt!2494598))))

(declare-fun b!6999711 () Bool)

(assert (=> b!6999711 (= e!4207354 (Cons!67214 (h!73662 (t!381089 (_1!37240 lt!2494598))) (++!15229 (t!381089 (t!381089 (_1!37240 lt!2494598))) (_2!37240 lt!2494598))))))

(declare-fun b!6999712 () Bool)

(declare-fun res!2855317 () Bool)

(declare-fun e!4207353 () Bool)

(assert (=> b!6999712 (=> (not res!2855317) (not e!4207353))))

(declare-fun lt!2494982 () List!67338)

(assert (=> b!6999712 (= res!2855317 (= (size!40935 lt!2494982) (+ (size!40935 (t!381089 (_1!37240 lt!2494598))) (size!40935 (_2!37240 lt!2494598)))))))

(declare-fun b!6999713 () Bool)

(assert (=> b!6999713 (= e!4207353 (or (not (= (_2!37240 lt!2494598) Nil!67214)) (= lt!2494982 (t!381089 (_1!37240 lt!2494598)))))))

(declare-fun d!2181522 () Bool)

(assert (=> d!2181522 e!4207353))

(declare-fun res!2855318 () Bool)

(assert (=> d!2181522 (=> (not res!2855318) (not e!4207353))))

(assert (=> d!2181522 (= res!2855318 (= (content!13309 lt!2494982) (set.union (content!13309 (t!381089 (_1!37240 lt!2494598))) (content!13309 (_2!37240 lt!2494598)))))))

(assert (=> d!2181522 (= lt!2494982 e!4207354)))

(declare-fun c!1299248 () Bool)

(assert (=> d!2181522 (= c!1299248 (is-Nil!67214 (t!381089 (_1!37240 lt!2494598))))))

(assert (=> d!2181522 (= (++!15229 (t!381089 (_1!37240 lt!2494598)) (_2!37240 lt!2494598)) lt!2494982)))

(assert (= (and d!2181522 c!1299248) b!6999710))

(assert (= (and d!2181522 (not c!1299248)) b!6999711))

(assert (= (and d!2181522 res!2855318) b!6999712))

(assert (= (and b!6999712 res!2855317) b!6999713))

(declare-fun m!7693206 () Bool)

(assert (=> b!6999711 m!7693206))

(declare-fun m!7693208 () Bool)

(assert (=> b!6999712 m!7693208))

(assert (=> b!6999712 m!7693032))

(assert (=> b!6999712 m!7692384))

(declare-fun m!7693210 () Bool)

(assert (=> d!2181522 m!7693210))

(assert (=> d!2181522 m!7692858))

(assert (=> d!2181522 m!7692392))

(assert (=> b!6999208 d!2181522))

(assert (=> d!2181160 d!2181378))

(declare-fun d!2181524 () Bool)

(declare-fun res!2855319 () Bool)

(declare-fun e!4207355 () Bool)

(assert (=> d!2181524 (=> res!2855319 e!4207355)))

(assert (=> d!2181524 (= res!2855319 (is-Nil!67215 lt!2494859))))

(assert (=> d!2181524 (= (noDuplicate!2541 lt!2494859) e!4207355)))

(declare-fun b!6999714 () Bool)

(declare-fun e!4207356 () Bool)

(assert (=> b!6999714 (= e!4207355 e!4207356)))

(declare-fun res!2855320 () Bool)

(assert (=> b!6999714 (=> (not res!2855320) (not e!4207356))))

(assert (=> b!6999714 (= res!2855320 (not (contains!20421 (t!381090 lt!2494859) (h!73663 lt!2494859))))))

(declare-fun b!6999715 () Bool)

(assert (=> b!6999715 (= e!4207356 (noDuplicate!2541 (t!381090 lt!2494859)))))

(assert (= (and d!2181524 (not res!2855319)) b!6999714))

(assert (= (and b!6999714 res!2855320) b!6999715))

(declare-fun m!7693212 () Bool)

(assert (=> b!6999714 m!7693212))

(declare-fun m!7693214 () Bool)

(assert (=> b!6999715 m!7693214))

(assert (=> d!2181106 d!2181524))

(declare-fun d!2181526 () Bool)

(declare-fun e!4207357 () Bool)

(assert (=> d!2181526 e!4207357))

(declare-fun res!2855321 () Bool)

(assert (=> d!2181526 (=> (not res!2855321) (not e!4207357))))

(declare-fun res!2855322 () List!67339)

(assert (=> d!2181526 (= res!2855321 (noDuplicate!2541 res!2855322))))

(declare-fun e!4207359 () Bool)

(assert (=> d!2181526 e!4207359))

(assert (=> d!2181526 (= (choose!52454 z1!570) res!2855322)))

(declare-fun b!6999717 () Bool)

(declare-fun e!4207358 () Bool)

(declare-fun tp!1930961 () Bool)

(assert (=> b!6999717 (= e!4207358 tp!1930961)))

(declare-fun tp!1930962 () Bool)

(declare-fun b!6999716 () Bool)

(assert (=> b!6999716 (= e!4207359 (and (inv!86020 (h!73663 res!2855322)) e!4207358 tp!1930962))))

(declare-fun b!6999718 () Bool)

(assert (=> b!6999718 (= e!4207357 (= (content!13307 res!2855322) z1!570))))

(assert (= b!6999716 b!6999717))

(assert (= (and d!2181526 (is-Cons!67215 res!2855322)) b!6999716))

(assert (= (and d!2181526 res!2855321) b!6999718))

(declare-fun m!7693216 () Bool)

(assert (=> d!2181526 m!7693216))

(declare-fun m!7693218 () Bool)

(assert (=> b!6999716 m!7693218))

(declare-fun m!7693220 () Bool)

(assert (=> b!6999718 m!7693220))

(assert (=> d!2181106 d!2181526))

(assert (=> bs!1864084 d!2181056))

(assert (=> d!2181126 d!2181124))

(declare-fun d!2181528 () Bool)

(assert (=> d!2181528 (= (flatMap!2250 lt!2494623 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494613))))

(assert (=> d!2181528 true))

(declare-fun _$13!4400 () Unit!161186)

(assert (=> d!2181528 (= (choose!52451 lt!2494623 lt!2494613 lambda!404840) _$13!4400)))

(declare-fun b_lambda!263543 () Bool)

(assert (=> (not b_lambda!263543) (not d!2181528)))

(declare-fun bs!1864274 () Bool)

(assert (= bs!1864274 d!2181528))

(assert (=> bs!1864274 m!7691860))

(assert (=> bs!1864274 m!7692294))

(assert (=> d!2181126 d!2181528))

(declare-fun d!2181530 () Bool)

(assert (=> d!2181530 (= ($colon$colon!2503 (exprs!6760 lt!2494587) (ite (or c!1299024 c!1299023) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613)))) (Cons!67213 (ite (or c!1299024 c!1299023) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (h!73661 (exprs!6760 lt!2494613))) (exprs!6760 lt!2494587)))))

(assert (=> bm!635452 d!2181530))

(declare-fun b!6999721 () Bool)

(declare-fun res!2855324 () Bool)

(declare-fun e!4207361 () Bool)

(assert (=> b!6999721 (=> (not res!2855324) (not e!4207361))))

(declare-fun lt!2494983 () List!67337)

(assert (=> b!6999721 (= res!2855324 (= (size!40933 lt!2494983) (+ (size!40933 (t!381088 lt!2494622)) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999720 () Bool)

(declare-fun e!4207360 () List!67337)

(assert (=> b!6999720 (= e!4207360 (Cons!67213 (h!73661 (t!381088 lt!2494622)) (++!15230 (t!381088 (t!381088 lt!2494622)) (exprs!6760 ct2!306))))))

(declare-fun d!2181532 () Bool)

(assert (=> d!2181532 e!4207361))

(declare-fun res!2855323 () Bool)

(assert (=> d!2181532 (=> (not res!2855323) (not e!4207361))))

(assert (=> d!2181532 (= res!2855323 (= (content!13306 lt!2494983) (set.union (content!13306 (t!381088 lt!2494622)) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181532 (= lt!2494983 e!4207360)))

(declare-fun c!1299249 () Bool)

(assert (=> d!2181532 (= c!1299249 (is-Nil!67213 (t!381088 lt!2494622)))))

(assert (=> d!2181532 (= (++!15230 (t!381088 lt!2494622) (exprs!6760 ct2!306)) lt!2494983)))

(declare-fun b!6999719 () Bool)

(assert (=> b!6999719 (= e!4207360 (exprs!6760 ct2!306))))

(declare-fun b!6999722 () Bool)

(assert (=> b!6999722 (= e!4207361 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494983 (t!381088 lt!2494622))))))

(assert (= (and d!2181532 c!1299249) b!6999719))

(assert (= (and d!2181532 (not c!1299249)) b!6999720))

(assert (= (and d!2181532 res!2855323) b!6999721))

(assert (= (and b!6999721 res!2855324) b!6999722))

(declare-fun m!7693222 () Bool)

(assert (=> b!6999721 m!7693222))

(assert (=> b!6999721 m!7693064))

(assert (=> b!6999721 m!7692106))

(declare-fun m!7693224 () Bool)

(assert (=> b!6999720 m!7693224))

(declare-fun m!7693226 () Bool)

(assert (=> d!2181532 m!7693226))

(assert (=> d!2181532 m!7693174))

(assert (=> d!2181532 m!7692114))

(assert (=> b!6999009 d!2181532))

(declare-fun b!6999735 () Bool)

(declare-fun e!4207372 () Bool)

(declare-fun lt!2494989 () Context!12520)

(assert (=> b!6999735 (= e!4207372 (contains!20421 (toList!10624 lt!2494580) lt!2494989))))

(declare-fun b!6999736 () Bool)

(declare-fun e!4207373 () Context!12520)

(declare-fun e!4207370 () Context!12520)

(assert (=> b!6999736 (= e!4207373 e!4207370)))

(declare-fun c!1299254 () Bool)

(assert (=> b!6999736 (= c!1299254 (is-Cons!67215 (toList!10624 lt!2494580)))))

(declare-fun b!6999737 () Bool)

(assert (=> b!6999737 (= e!4207373 (h!73663 (toList!10624 lt!2494580)))))

(declare-fun b!6999738 () Bool)

(declare-fun lt!2494988 () Unit!161186)

(declare-fun Unit!161190 () Unit!161186)

(assert (=> b!6999738 (= lt!2494988 Unit!161190)))

(assert (=> b!6999738 false))

(declare-fun head!14139 (List!67339) Context!12520)

(assert (=> b!6999738 (= e!4207370 (head!14139 (toList!10624 lt!2494580)))))

(declare-fun d!2181534 () Bool)

(assert (=> d!2181534 e!4207372))

(declare-fun res!2855329 () Bool)

(assert (=> d!2181534 (=> (not res!2855329) (not e!4207372))))

(assert (=> d!2181534 (= res!2855329 (dynLambda!26989 lambda!404837 lt!2494989))))

(assert (=> d!2181534 (= lt!2494989 e!4207373)))

(declare-fun c!1299255 () Bool)

(declare-fun e!4207371 () Bool)

(assert (=> d!2181534 (= c!1299255 e!4207371)))

(declare-fun res!2855330 () Bool)

(assert (=> d!2181534 (=> (not res!2855330) (not e!4207371))))

(assert (=> d!2181534 (= res!2855330 (is-Cons!67215 (toList!10624 lt!2494580)))))

(assert (=> d!2181534 (exists!3077 (toList!10624 lt!2494580) lambda!404837)))

(assert (=> d!2181534 (= (getWitness!1183 (toList!10624 lt!2494580) lambda!404837) lt!2494989)))

(declare-fun b!6999739 () Bool)

(assert (=> b!6999739 (= e!4207370 (getWitness!1183 (t!381090 (toList!10624 lt!2494580)) lambda!404837))))

(declare-fun b!6999740 () Bool)

(assert (=> b!6999740 (= e!4207371 (dynLambda!26989 lambda!404837 (h!73663 (toList!10624 lt!2494580))))))

(assert (= (and d!2181534 res!2855330) b!6999740))

(assert (= (and d!2181534 c!1299255) b!6999737))

(assert (= (and d!2181534 (not c!1299255)) b!6999736))

(assert (= (and b!6999736 c!1299254) b!6999739))

(assert (= (and b!6999736 (not c!1299254)) b!6999738))

(assert (= (and d!2181534 res!2855329) b!6999735))

(declare-fun b_lambda!263545 () Bool)

(assert (=> (not b_lambda!263545) (not d!2181534)))

(declare-fun b_lambda!263547 () Bool)

(assert (=> (not b_lambda!263547) (not b!6999740)))

(declare-fun m!7693228 () Bool)

(assert (=> d!2181534 m!7693228))

(assert (=> d!2181534 m!7691774))

(declare-fun m!7693230 () Bool)

(assert (=> d!2181534 m!7693230))

(assert (=> b!6999738 m!7691774))

(declare-fun m!7693232 () Bool)

(assert (=> b!6999738 m!7693232))

(declare-fun m!7693234 () Bool)

(assert (=> b!6999739 m!7693234))

(assert (=> b!6999735 m!7691774))

(declare-fun m!7693236 () Bool)

(assert (=> b!6999735 m!7693236))

(declare-fun m!7693238 () Bool)

(assert (=> b!6999740 m!7693238))

(assert (=> d!2181096 d!2181534))

(assert (=> d!2181096 d!2181090))

(declare-fun d!2181536 () Bool)

(declare-fun lt!2494992 () Bool)

(assert (=> d!2181536 (= lt!2494992 (exists!3077 (toList!10624 lt!2494580) lambda!404837))))

(declare-fun choose!52472 ((Set Context!12520) Int) Bool)

(assert (=> d!2181536 (= lt!2494992 (choose!52472 lt!2494580 lambda!404837))))

(assert (=> d!2181536 (= (exists!3079 lt!2494580 lambda!404837) lt!2494992)))

(declare-fun bs!1864275 () Bool)

(assert (= bs!1864275 d!2181536))

(assert (=> bs!1864275 m!7691774))

(assert (=> bs!1864275 m!7691774))

(assert (=> bs!1864275 m!7693230))

(declare-fun m!7693240 () Bool)

(assert (=> bs!1864275 m!7693240))

(assert (=> d!2181096 d!2181536))

(declare-fun d!2181538 () Bool)

(declare-fun c!1299256 () Bool)

(assert (=> d!2181538 (= c!1299256 (isEmpty!39238 (tail!13297 (t!381089 s!7408))))))

(declare-fun e!4207374 () Bool)

(assert (=> d!2181538 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494611 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))) e!4207374)))

(declare-fun b!6999741 () Bool)

(assert (=> b!6999741 (= e!4207374 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494611 (head!14137 (t!381089 s!7408)))))))

(declare-fun b!6999742 () Bool)

(assert (=> b!6999742 (= e!4207374 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494611 (head!14137 (t!381089 s!7408))) (head!14137 (tail!13297 (t!381089 s!7408)))) (tail!13297 (tail!13297 (t!381089 s!7408)))))))

(assert (= (and d!2181538 c!1299256) b!6999741))

(assert (= (and d!2181538 (not c!1299256)) b!6999742))

(assert (=> d!2181538 m!7692314))

(assert (=> d!2181538 m!7692788))

(assert (=> b!6999741 m!7692312))

(declare-fun m!7693242 () Bool)

(assert (=> b!6999741 m!7693242))

(assert (=> b!6999742 m!7692314))

(assert (=> b!6999742 m!7692792))

(assert (=> b!6999742 m!7692312))

(assert (=> b!6999742 m!7692792))

(declare-fun m!7693244 () Bool)

(assert (=> b!6999742 m!7693244))

(assert (=> b!6999742 m!7692314))

(assert (=> b!6999742 m!7692796))

(assert (=> b!6999742 m!7693244))

(assert (=> b!6999742 m!7692796))

(declare-fun m!7693246 () Bool)

(assert (=> b!6999742 m!7693246))

(assert (=> b!6999167 d!2181538))

(declare-fun bs!1864276 () Bool)

(declare-fun d!2181540 () Bool)

(assert (= bs!1864276 (and d!2181540 d!2181464)))

(declare-fun lambda!404962 () Int)

(assert (=> bs!1864276 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_2!37240 lt!2494598))) (= lambda!404962 lambda!404958))))

(declare-fun bs!1864277 () Bool)

(assert (= bs!1864277 (and d!2181540 d!2181322)))

(assert (=> bs!1864277 (= lambda!404962 lambda!404947)))

(declare-fun bs!1864278 () Bool)

(assert (= bs!1864278 (and d!2181540 d!2181392)))

(assert (=> bs!1864278 (= (= (head!14137 (t!381089 s!7408)) (head!14137 s!7408)) (= lambda!404962 lambda!404953))))

(declare-fun bs!1864279 () Bool)

(assert (= bs!1864279 (and d!2181540 d!2181384)))

(assert (=> bs!1864279 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404962 lambda!404952))))

(declare-fun bs!1864280 () Bool)

(assert (= bs!1864280 (and d!2181540 d!2181040)))

(assert (=> bs!1864280 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404962 lambda!404905))))

(declare-fun bs!1864281 () Bool)

(assert (= bs!1864281 (and d!2181540 b!6998841)))

(assert (=> bs!1864281 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404962 lambda!404840))))

(declare-fun bs!1864282 () Bool)

(assert (= bs!1864282 (and d!2181540 d!2181130)))

(assert (=> bs!1864282 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404962 lambda!404921))))

(declare-fun bs!1864283 () Bool)

(assert (= bs!1864283 (and d!2181540 d!2181514)))

(assert (=> bs!1864283 (= lambda!404962 lambda!404961)))

(declare-fun bs!1864284 () Bool)

(assert (= bs!1864284 (and d!2181540 d!2181120)))

(assert (=> bs!1864284 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404962 lambda!404920))))

(declare-fun bs!1864285 () Bool)

(assert (= bs!1864285 (and d!2181540 d!2181312)))

(assert (=> bs!1864285 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404962 lambda!404946))))

(declare-fun bs!1864286 () Bool)

(assert (= bs!1864286 (and d!2181540 d!2181358)))

(assert (=> bs!1864286 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_1!37240 lt!2494598))) (= lambda!404962 lambda!404950))))

(assert (=> d!2181540 true))

(assert (=> d!2181540 (= (derivationStepZipper!2744 lt!2494611 (head!14137 (t!381089 s!7408))) (flatMap!2250 lt!2494611 lambda!404962))))

(declare-fun bs!1864287 () Bool)

(assert (= bs!1864287 d!2181540))

(declare-fun m!7693248 () Bool)

(assert (=> bs!1864287 m!7693248))

(assert (=> b!6999167 d!2181540))

(assert (=> b!6999167 d!2181324))

(assert (=> b!6999167 d!2181326))

(declare-fun bs!1864288 () Bool)

(declare-fun d!2181542 () Bool)

(assert (= bs!1864288 (and d!2181542 d!2181308)))

(declare-fun lambda!404963 () Int)

(assert (=> bs!1864288 (= lambda!404963 lambda!404945)))

(declare-fun bs!1864289 () Bool)

(assert (= bs!1864289 (and d!2181542 d!2181482)))

(assert (=> bs!1864289 (= lambda!404963 lambda!404959)))

(declare-fun bs!1864290 () Bool)

(assert (= bs!1864290 (and d!2181542 d!2181100)))

(assert (=> bs!1864290 (not (= lambda!404963 lambda!404919))))

(declare-fun bs!1864291 () Bool)

(assert (= bs!1864291 (and d!2181542 d!2181442)))

(assert (=> bs!1864291 (= lambda!404963 lambda!404956)))

(declare-fun bs!1864292 () Bool)

(assert (= bs!1864292 (and d!2181542 b!6998816)))

(assert (=> bs!1864292 (not (= lambda!404963 lambda!404837))))

(declare-fun bs!1864293 () Bool)

(assert (= bs!1864293 (and d!2181542 d!2181330)))

(assert (=> bs!1864293 (= lambda!404963 lambda!404948)))

(declare-fun bs!1864294 () Bool)

(assert (= bs!1864294 (and d!2181542 d!2181398)))

(assert (=> bs!1864294 (= lambda!404963 lambda!404954)))

(declare-fun bs!1864295 () Bool)

(assert (= bs!1864295 (and d!2181542 d!2181092)))

(assert (=> bs!1864295 (not (= lambda!404963 lambda!404916))))

(declare-fun bs!1864296 () Bool)

(assert (= bs!1864296 (and d!2181542 d!2181362)))

(assert (=> bs!1864296 (= lambda!404963 lambda!404951)))

(declare-fun bs!1864297 () Bool)

(assert (= bs!1864297 (and d!2181542 d!2181436)))

(assert (=> bs!1864297 (= lambda!404963 lambda!404955)))

(declare-fun bs!1864298 () Bool)

(assert (= bs!1864298 (and d!2181542 d!2181456)))

(assert (=> bs!1864298 (= lambda!404963 lambda!404957)))

(declare-fun bs!1864299 () Bool)

(assert (= bs!1864299 (and d!2181542 d!2181486)))

(assert (=> bs!1864299 (= lambda!404963 lambda!404960)))

(assert (=> d!2181542 (= (nullableZipper!2459 lt!2494633) (exists!3079 lt!2494633 lambda!404963))))

(declare-fun bs!1864300 () Bool)

(assert (= bs!1864300 d!2181542))

(declare-fun m!7693250 () Bool)

(assert (=> bs!1864300 m!7693250))

(assert (=> b!6999181 d!2181542))

(declare-fun bs!1864301 () Bool)

(declare-fun d!2181544 () Bool)

(assert (= bs!1864301 (and d!2181544 b!6998829)))

(declare-fun lambda!404964 () Int)

(assert (=> bs!1864301 (= lambda!404964 lambda!404839)))

(declare-fun bs!1864302 () Bool)

(assert (= bs!1864302 (and d!2181544 d!2181084)))

(assert (=> bs!1864302 (= lambda!404964 lambda!404913)))

(declare-fun bs!1864303 () Bool)

(assert (= bs!1864303 (and d!2181544 d!2181162)))

(assert (=> bs!1864303 (= lambda!404964 lambda!404922)))

(assert (=> d!2181544 (= (inv!86020 setElem!48064) (forall!16178 (exprs!6760 setElem!48064) lambda!404964))))

(declare-fun bs!1864304 () Bool)

(assert (= bs!1864304 d!2181544))

(declare-fun m!7693252 () Bool)

(assert (=> bs!1864304 m!7693252))

(assert (=> setNonEmpty!48064 d!2181544))

(assert (=> d!2181134 d!2181378))

(assert (=> d!2181046 d!2181048))

(declare-fun d!2181546 () Bool)

(assert (=> d!2181546 (= (flatMap!2250 lt!2494608 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494609))))

(assert (=> d!2181546 true))

(declare-fun _$13!4401 () Unit!161186)

(assert (=> d!2181546 (= (choose!52451 lt!2494608 lt!2494609 lambda!404840) _$13!4401)))

(declare-fun b_lambda!263549 () Bool)

(assert (=> (not b_lambda!263549) (not d!2181546)))

(declare-fun bs!1864305 () Bool)

(assert (= bs!1864305 d!2181546))

(assert (=> bs!1864305 m!7691844))

(assert (=> bs!1864305 m!7692094))

(assert (=> d!2181046 d!2181546))

(declare-fun d!2181548 () Bool)

(declare-fun c!1299257 () Bool)

(assert (=> d!2181548 (= c!1299257 (isEmpty!39238 s!7408))))

(declare-fun e!4207375 () Bool)

(assert (=> d!2181548 (= (matchZipper!2804 lt!2494633 s!7408) e!4207375)))

(declare-fun b!6999743 () Bool)

(assert (=> b!6999743 (= e!4207375 (nullableZipper!2459 lt!2494633))))

(declare-fun b!6999744 () Bool)

(assert (=> b!6999744 (= e!4207375 (matchZipper!2804 (derivationStepZipper!2744 lt!2494633 (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181548 c!1299257) b!6999743))

(assert (= (and d!2181548 (not c!1299257)) b!6999744))

(assert (=> d!2181548 m!7692186))

(assert (=> b!6999743 m!7692324))

(assert (=> b!6999744 m!7692190))

(assert (=> b!6999744 m!7692190))

(declare-fun m!7693254 () Bool)

(assert (=> b!6999744 m!7693254))

(assert (=> b!6999744 m!7692194))

(assert (=> b!6999744 m!7693254))

(assert (=> b!6999744 m!7692194))

(declare-fun m!7693256 () Bool)

(assert (=> b!6999744 m!7693256))

(assert (=> b!6999077 d!2181548))

(declare-fun d!2181550 () Bool)

(declare-fun c!1299258 () Bool)

(assert (=> d!2181550 (= c!1299258 (isEmpty!39238 (tail!13297 s!7408)))))

(declare-fun e!4207376 () Bool)

(assert (=> d!2181550 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494617 (head!14137 s!7408)) (tail!13297 s!7408)) e!4207376)))

(declare-fun b!6999745 () Bool)

(assert (=> b!6999745 (= e!4207376 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494617 (head!14137 s!7408))))))

(declare-fun b!6999746 () Bool)

(assert (=> b!6999746 (= e!4207376 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494617 (head!14137 s!7408)) (head!14137 (tail!13297 s!7408))) (tail!13297 (tail!13297 s!7408))))))

(assert (= (and d!2181550 c!1299258) b!6999745))

(assert (= (and d!2181550 (not c!1299258)) b!6999746))

(assert (=> d!2181550 m!7692194))

(assert (=> d!2181550 m!7692938))

(assert (=> b!6999745 m!7692244))

(declare-fun m!7693258 () Bool)

(assert (=> b!6999745 m!7693258))

(assert (=> b!6999746 m!7692194))

(assert (=> b!6999746 m!7692942))

(assert (=> b!6999746 m!7692244))

(assert (=> b!6999746 m!7692942))

(declare-fun m!7693260 () Bool)

(assert (=> b!6999746 m!7693260))

(assert (=> b!6999746 m!7692194))

(assert (=> b!6999746 m!7692946))

(assert (=> b!6999746 m!7693260))

(assert (=> b!6999746 m!7692946))

(declare-fun m!7693262 () Bool)

(assert (=> b!6999746 m!7693262))

(assert (=> b!6999121 d!2181550))

(declare-fun bs!1864306 () Bool)

(declare-fun d!2181552 () Bool)

(assert (= bs!1864306 (and d!2181552 d!2181464)))

(declare-fun lambda!404965 () Int)

(assert (=> bs!1864306 (= (= (head!14137 s!7408) (head!14137 (_2!37240 lt!2494598))) (= lambda!404965 lambda!404958))))

(declare-fun bs!1864307 () Bool)

(assert (= bs!1864307 (and d!2181552 d!2181322)))

(assert (=> bs!1864307 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404965 lambda!404947))))

(declare-fun bs!1864308 () Bool)

(assert (= bs!1864308 (and d!2181552 d!2181392)))

(assert (=> bs!1864308 (= lambda!404965 lambda!404953)))

(declare-fun bs!1864309 () Bool)

(assert (= bs!1864309 (and d!2181552 d!2181384)))

(assert (=> bs!1864309 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404965 lambda!404952))))

(declare-fun bs!1864310 () Bool)

(assert (= bs!1864310 (and d!2181552 d!2181040)))

(assert (=> bs!1864310 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404965 lambda!404905))))

(declare-fun bs!1864311 () Bool)

(assert (= bs!1864311 (and d!2181552 b!6998841)))

(assert (=> bs!1864311 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404965 lambda!404840))))

(declare-fun bs!1864312 () Bool)

(assert (= bs!1864312 (and d!2181552 d!2181130)))

(assert (=> bs!1864312 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404965 lambda!404921))))

(declare-fun bs!1864313 () Bool)

(assert (= bs!1864313 (and d!2181552 d!2181514)))

(assert (=> bs!1864313 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404965 lambda!404961))))

(declare-fun bs!1864314 () Bool)

(assert (= bs!1864314 (and d!2181552 d!2181120)))

(assert (=> bs!1864314 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404965 lambda!404920))))

(declare-fun bs!1864315 () Bool)

(assert (= bs!1864315 (and d!2181552 d!2181540)))

(assert (=> bs!1864315 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404965 lambda!404962))))

(declare-fun bs!1864316 () Bool)

(assert (= bs!1864316 (and d!2181552 d!2181312)))

(assert (=> bs!1864316 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404965 lambda!404946))))

(declare-fun bs!1864317 () Bool)

(assert (= bs!1864317 (and d!2181552 d!2181358)))

(assert (=> bs!1864317 (= (= (head!14137 s!7408) (head!14137 (_1!37240 lt!2494598))) (= lambda!404965 lambda!404950))))

(assert (=> d!2181552 true))

(assert (=> d!2181552 (= (derivationStepZipper!2744 lt!2494617 (head!14137 s!7408)) (flatMap!2250 lt!2494617 lambda!404965))))

(declare-fun bs!1864318 () Bool)

(assert (= bs!1864318 d!2181552))

(declare-fun m!7693264 () Bool)

(assert (=> bs!1864318 m!7693264))

(assert (=> b!6999121 d!2181552))

(assert (=> b!6999121 d!2181394))

(assert (=> b!6999121 d!2181396))

(assert (=> b!6999163 d!2181050))

(assert (=> b!6999075 d!2181366))

(assert (=> bs!1864080 d!2181086))

(declare-fun d!2181554 () Bool)

(assert (=> d!2181554 (= (flatMap!2250 lt!2494608 lambda!404905) (choose!52452 lt!2494608 lambda!404905))))

(declare-fun bs!1864319 () Bool)

(assert (= bs!1864319 d!2181554))

(declare-fun m!7693266 () Bool)

(assert (=> bs!1864319 m!7693266))

(assert (=> d!2181040 d!2181554))

(declare-fun d!2181556 () Bool)

(assert (=> d!2181556 (forall!16178 (++!15230 (exprs!6760 lt!2494877) (exprs!6760 ct2!306)) lambda!404839)))

(declare-fun lt!2494993 () Unit!161186)

(assert (=> d!2181556 (= lt!2494993 (choose!52450 (exprs!6760 lt!2494877) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> d!2181556 (forall!16178 (exprs!6760 lt!2494877) lambda!404839)))

(assert (=> d!2181556 (= (lemmaConcatPreservesForall!600 (exprs!6760 lt!2494877) (exprs!6760 ct2!306) lambda!404839) lt!2494993)))

(declare-fun bs!1864320 () Bool)

(assert (= bs!1864320 d!2181556))

(assert (=> bs!1864320 m!7692448))

(assert (=> bs!1864320 m!7692448))

(declare-fun m!7693268 () Bool)

(assert (=> bs!1864320 m!7693268))

(declare-fun m!7693270 () Bool)

(assert (=> bs!1864320 m!7693270))

(declare-fun m!7693272 () Bool)

(assert (=> bs!1864320 m!7693272))

(assert (=> bs!1864085 d!2181556))

(declare-fun b!6999749 () Bool)

(declare-fun res!2855332 () Bool)

(declare-fun e!4207378 () Bool)

(assert (=> b!6999749 (=> (not res!2855332) (not e!4207378))))

(declare-fun lt!2494994 () List!67337)

(assert (=> b!6999749 (= res!2855332 (= (size!40933 lt!2494994) (+ (size!40933 (exprs!6760 lt!2494877)) (size!40933 (exprs!6760 ct2!306)))))))

(declare-fun b!6999748 () Bool)

(declare-fun e!4207377 () List!67337)

(assert (=> b!6999748 (= e!4207377 (Cons!67213 (h!73661 (exprs!6760 lt!2494877)) (++!15230 (t!381088 (exprs!6760 lt!2494877)) (exprs!6760 ct2!306))))))

(declare-fun d!2181558 () Bool)

(assert (=> d!2181558 e!4207378))

(declare-fun res!2855331 () Bool)

(assert (=> d!2181558 (=> (not res!2855331) (not e!4207378))))

(assert (=> d!2181558 (= res!2855331 (= (content!13306 lt!2494994) (set.union (content!13306 (exprs!6760 lt!2494877)) (content!13306 (exprs!6760 ct2!306)))))))

(assert (=> d!2181558 (= lt!2494994 e!4207377)))

(declare-fun c!1299259 () Bool)

(assert (=> d!2181558 (= c!1299259 (is-Nil!67213 (exprs!6760 lt!2494877)))))

(assert (=> d!2181558 (= (++!15230 (exprs!6760 lt!2494877) (exprs!6760 ct2!306)) lt!2494994)))

(declare-fun b!6999747 () Bool)

(assert (=> b!6999747 (= e!4207377 (exprs!6760 ct2!306))))

(declare-fun b!6999750 () Bool)

(assert (=> b!6999750 (= e!4207378 (or (not (= (exprs!6760 ct2!306) Nil!67213)) (= lt!2494994 (exprs!6760 lt!2494877))))))

(assert (= (and d!2181558 c!1299259) b!6999747))

(assert (= (and d!2181558 (not c!1299259)) b!6999748))

(assert (= (and d!2181558 res!2855331) b!6999749))

(assert (= (and b!6999749 res!2855332) b!6999750))

(declare-fun m!7693274 () Bool)

(assert (=> b!6999749 m!7693274))

(declare-fun m!7693276 () Bool)

(assert (=> b!6999749 m!7693276))

(assert (=> b!6999749 m!7692106))

(declare-fun m!7693278 () Bool)

(assert (=> b!6999748 m!7693278))

(declare-fun m!7693280 () Bool)

(assert (=> d!2181558 m!7693280))

(declare-fun m!7693282 () Bool)

(assert (=> d!2181558 m!7693282))

(assert (=> d!2181558 m!7692114))

(assert (=> bs!1864085 d!2181558))

(declare-fun bs!1864321 () Bool)

(declare-fun d!2181560 () Bool)

(assert (= bs!1864321 (and d!2181560 d!2181308)))

(declare-fun lambda!404966 () Int)

(assert (=> bs!1864321 (= lambda!404966 lambda!404945)))

(declare-fun bs!1864322 () Bool)

(assert (= bs!1864322 (and d!2181560 d!2181542)))

(assert (=> bs!1864322 (= lambda!404966 lambda!404963)))

(declare-fun bs!1864323 () Bool)

(assert (= bs!1864323 (and d!2181560 d!2181482)))

(assert (=> bs!1864323 (= lambda!404966 lambda!404959)))

(declare-fun bs!1864324 () Bool)

(assert (= bs!1864324 (and d!2181560 d!2181100)))

(assert (=> bs!1864324 (not (= lambda!404966 lambda!404919))))

(declare-fun bs!1864325 () Bool)

(assert (= bs!1864325 (and d!2181560 d!2181442)))

(assert (=> bs!1864325 (= lambda!404966 lambda!404956)))

(declare-fun bs!1864326 () Bool)

(assert (= bs!1864326 (and d!2181560 b!6998816)))

(assert (=> bs!1864326 (not (= lambda!404966 lambda!404837))))

(declare-fun bs!1864327 () Bool)

(assert (= bs!1864327 (and d!2181560 d!2181330)))

(assert (=> bs!1864327 (= lambda!404966 lambda!404948)))

(declare-fun bs!1864328 () Bool)

(assert (= bs!1864328 (and d!2181560 d!2181398)))

(assert (=> bs!1864328 (= lambda!404966 lambda!404954)))

(declare-fun bs!1864329 () Bool)

(assert (= bs!1864329 (and d!2181560 d!2181092)))

(assert (=> bs!1864329 (not (= lambda!404966 lambda!404916))))

(declare-fun bs!1864330 () Bool)

(assert (= bs!1864330 (and d!2181560 d!2181362)))

(assert (=> bs!1864330 (= lambda!404966 lambda!404951)))

(declare-fun bs!1864331 () Bool)

(assert (= bs!1864331 (and d!2181560 d!2181436)))

(assert (=> bs!1864331 (= lambda!404966 lambda!404955)))

(declare-fun bs!1864332 () Bool)

(assert (= bs!1864332 (and d!2181560 d!2181456)))

(assert (=> bs!1864332 (= lambda!404966 lambda!404957)))

(declare-fun bs!1864333 () Bool)

(assert (= bs!1864333 (and d!2181560 d!2181486)))

(assert (=> bs!1864333 (= lambda!404966 lambda!404960)))

(assert (=> d!2181560 (= (nullableZipper!2459 lt!2494604) (exists!3079 lt!2494604 lambda!404966))))

(declare-fun bs!1864334 () Bool)

(assert (= bs!1864334 d!2181560))

(declare-fun m!7693284 () Bool)

(assert (=> bs!1864334 m!7693284))

(assert (=> b!6999218 d!2181560))

(declare-fun d!2181562 () Bool)

(declare-fun lt!2494995 () Int)

(assert (=> d!2181562 (>= lt!2494995 0)))

(declare-fun e!4207379 () Int)

(assert (=> d!2181562 (= lt!2494995 e!4207379)))

(declare-fun c!1299260 () Bool)

(assert (=> d!2181562 (= c!1299260 (is-Cons!67213 (exprs!6760 (h!73663 (Cons!67215 lt!2494627 Nil!67215)))))))

(assert (=> d!2181562 (= (contextDepthTotal!457 (h!73663 (Cons!67215 lt!2494627 Nil!67215))) lt!2494995)))

(declare-fun b!6999751 () Bool)

(assert (=> b!6999751 (= e!4207379 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 (h!73663 (Cons!67215 lt!2494627 Nil!67215))))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 (h!73663 (Cons!67215 lt!2494627 Nil!67215))))))))))

(declare-fun b!6999752 () Bool)

(assert (=> b!6999752 (= e!4207379 1)))

(assert (= (and d!2181562 c!1299260) b!6999751))

(assert (= (and d!2181562 (not c!1299260)) b!6999752))

(declare-fun m!7693286 () Bool)

(assert (=> b!6999751 m!7693286))

(declare-fun m!7693288 () Bool)

(assert (=> b!6999751 m!7693288))

(assert (=> b!6999179 d!2181562))

(declare-fun d!2181564 () Bool)

(declare-fun lt!2494996 () Int)

(assert (=> d!2181564 (>= lt!2494996 0)))

(declare-fun e!4207380 () Int)

(assert (=> d!2181564 (= lt!2494996 e!4207380)))

(declare-fun c!1299261 () Bool)

(assert (=> d!2181564 (= c!1299261 (is-Cons!67215 (t!381090 (Cons!67215 lt!2494627 Nil!67215))))))

(assert (=> d!2181564 (= (zipperDepthTotal!485 (t!381090 (Cons!67215 lt!2494627 Nil!67215))) lt!2494996)))

(declare-fun b!6999753 () Bool)

(assert (=> b!6999753 (= e!4207380 (+ (contextDepthTotal!457 (h!73663 (t!381090 (Cons!67215 lt!2494627 Nil!67215)))) (zipperDepthTotal!485 (t!381090 (t!381090 (Cons!67215 lt!2494627 Nil!67215))))))))

(declare-fun b!6999754 () Bool)

(assert (=> b!6999754 (= e!4207380 0)))

(assert (= (and d!2181564 c!1299261) b!6999753))

(assert (= (and d!2181564 (not c!1299261)) b!6999754))

(declare-fun m!7693290 () Bool)

(assert (=> b!6999753 m!7693290))

(declare-fun m!7693292 () Bool)

(assert (=> b!6999753 m!7693292))

(assert (=> b!6999179 d!2181564))

(assert (=> d!2181030 d!2181402))

(declare-fun d!2181566 () Bool)

(assert (=> d!2181566 (= (nullable!7024 (h!73661 (exprs!6760 lt!2494587))) (nullableFct!2656 (h!73661 (exprs!6760 lt!2494587))))))

(declare-fun bs!1864335 () Bool)

(assert (= bs!1864335 d!2181566))

(declare-fun m!7693294 () Bool)

(assert (=> bs!1864335 m!7693294))

(assert (=> b!6999014 d!2181566))

(assert (=> d!2181098 d!2181406))

(declare-fun b!6999755 () Bool)

(declare-fun e!4207382 () List!67338)

(assert (=> b!6999755 (= e!4207382 (_2!37240 (get!23566 lt!2494843)))))

(declare-fun b!6999756 () Bool)

(assert (=> b!6999756 (= e!4207382 (Cons!67214 (h!73662 (_1!37240 (get!23566 lt!2494843))) (++!15229 (t!381089 (_1!37240 (get!23566 lt!2494843))) (_2!37240 (get!23566 lt!2494843)))))))

(declare-fun b!6999757 () Bool)

(declare-fun res!2855333 () Bool)

(declare-fun e!4207381 () Bool)

(assert (=> b!6999757 (=> (not res!2855333) (not e!4207381))))

(declare-fun lt!2494997 () List!67338)

(assert (=> b!6999757 (= res!2855333 (= (size!40935 lt!2494997) (+ (size!40935 (_1!37240 (get!23566 lt!2494843))) (size!40935 (_2!37240 (get!23566 lt!2494843))))))))

(declare-fun b!6999758 () Bool)

(assert (=> b!6999758 (= e!4207381 (or (not (= (_2!37240 (get!23566 lt!2494843)) Nil!67214)) (= lt!2494997 (_1!37240 (get!23566 lt!2494843)))))))

(declare-fun d!2181568 () Bool)

(assert (=> d!2181568 e!4207381))

(declare-fun res!2855334 () Bool)

(assert (=> d!2181568 (=> (not res!2855334) (not e!4207381))))

(assert (=> d!2181568 (= res!2855334 (= (content!13309 lt!2494997) (set.union (content!13309 (_1!37240 (get!23566 lt!2494843))) (content!13309 (_2!37240 (get!23566 lt!2494843))))))))

(assert (=> d!2181568 (= lt!2494997 e!4207382)))

(declare-fun c!1299262 () Bool)

(assert (=> d!2181568 (= c!1299262 (is-Nil!67214 (_1!37240 (get!23566 lt!2494843))))))

(assert (=> d!2181568 (= (++!15229 (_1!37240 (get!23566 lt!2494843)) (_2!37240 (get!23566 lt!2494843))) lt!2494997)))

(assert (= (and d!2181568 c!1299262) b!6999755))

(assert (= (and d!2181568 (not c!1299262)) b!6999756))

(assert (= (and d!2181568 res!2855334) b!6999757))

(assert (= (and b!6999757 res!2855333) b!6999758))

(declare-fun m!7693296 () Bool)

(assert (=> b!6999756 m!7693296))

(declare-fun m!7693298 () Bool)

(assert (=> b!6999757 m!7693298))

(declare-fun m!7693300 () Bool)

(assert (=> b!6999757 m!7693300))

(declare-fun m!7693302 () Bool)

(assert (=> b!6999757 m!7693302))

(declare-fun m!7693304 () Bool)

(assert (=> d!2181568 m!7693304))

(declare-fun m!7693306 () Bool)

(assert (=> d!2181568 m!7693306))

(declare-fun m!7693308 () Bool)

(assert (=> d!2181568 m!7693308))

(assert (=> b!6999071 d!2181568))

(assert (=> b!6999071 d!2181494))

(assert (=> d!2181132 d!2181128))

(declare-fun d!2181570 () Bool)

(assert (=> d!2181570 (= (flatMap!2250 lt!2494582 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494587))))

(assert (=> d!2181570 true))

(declare-fun _$13!4402 () Unit!161186)

(assert (=> d!2181570 (= (choose!52451 lt!2494582 lt!2494587 lambda!404840) _$13!4402)))

(declare-fun b_lambda!263551 () Bool)

(assert (=> (not b_lambda!263551) (not d!2181570)))

(declare-fun bs!1864336 () Bool)

(assert (= bs!1864336 d!2181570))

(assert (=> bs!1864336 m!7691892))

(assert (=> bs!1864336 m!7692302))

(assert (=> d!2181132 d!2181570))

(declare-fun d!2181572 () Bool)

(declare-fun c!1299263 () Bool)

(declare-fun e!4207384 () Bool)

(assert (=> d!2181572 (= c!1299263 e!4207384)))

(declare-fun res!2855335 () Bool)

(assert (=> d!2181572 (=> (not res!2855335) (not e!4207384))))

(assert (=> d!2181572 (= res!2855335 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609))))))))

(declare-fun e!4207385 () (Set Context!12520))

(assert (=> d!2181572 (= (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494609))) (h!73662 s!7408)) e!4207385)))

(declare-fun b!6999759 () Bool)

(declare-fun e!4207383 () (Set Context!12520))

(assert (=> b!6999759 (= e!4207385 e!4207383)))

(declare-fun c!1299264 () Bool)

(assert (=> b!6999759 (= c!1299264 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609))))))))

(declare-fun b!6999760 () Bool)

(assert (=> b!6999760 (= e!4207383 (as set.empty (Set Context!12520)))))

(declare-fun b!6999761 () Bool)

(assert (=> b!6999761 (= e!4207384 (nullable!7024 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609)))))))))

(declare-fun call!635561 () (Set Context!12520))

(declare-fun b!6999762 () Bool)

(assert (=> b!6999762 (= e!4207385 (set.union call!635561 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609)))))) (h!73662 s!7408))))))

(declare-fun b!6999763 () Bool)

(assert (=> b!6999763 (= e!4207383 call!635561)))

(declare-fun bm!635556 () Bool)

(assert (=> bm!635556 (= call!635561 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609))))) (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494609)))))) (h!73662 s!7408)))))

(assert (= (and d!2181572 res!2855335) b!6999761))

(assert (= (and d!2181572 c!1299263) b!6999762))

(assert (= (and d!2181572 (not c!1299263)) b!6999759))

(assert (= (and b!6999759 c!1299264) b!6999763))

(assert (= (and b!6999759 (not c!1299264)) b!6999760))

(assert (= (or b!6999762 b!6999763) bm!635556))

(declare-fun m!7693310 () Bool)

(assert (=> b!6999761 m!7693310))

(declare-fun m!7693312 () Bool)

(assert (=> b!6999762 m!7693312))

(declare-fun m!7693314 () Bool)

(assert (=> bm!635556 m!7693314))

(assert (=> b!6998998 d!2181572))

(declare-fun d!2181574 () Bool)

(declare-fun c!1299265 () Bool)

(assert (=> d!2181574 (= c!1299265 (isEmpty!39238 (tail!13297 lt!2494630)))))

(declare-fun e!4207386 () Bool)

(assert (=> d!2181574 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494618 (head!14137 lt!2494630)) (tail!13297 lt!2494630)) e!4207386)))

(declare-fun b!6999764 () Bool)

(assert (=> b!6999764 (= e!4207386 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494618 (head!14137 lt!2494630))))))

(declare-fun b!6999765 () Bool)

(assert (=> b!6999765 (= e!4207386 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494618 (head!14137 lt!2494630)) (head!14137 (tail!13297 lt!2494630))) (tail!13297 (tail!13297 lt!2494630))))))

(assert (= (and d!2181574 c!1299265) b!6999764))

(assert (= (and d!2181574 (not c!1299265)) b!6999765))

(assert (=> d!2181574 m!7692060))

(assert (=> d!2181574 m!7692772))

(assert (=> b!6999764 m!7692066))

(declare-fun m!7693316 () Bool)

(assert (=> b!6999764 m!7693316))

(assert (=> b!6999765 m!7692060))

(assert (=> b!6999765 m!7692776))

(assert (=> b!6999765 m!7692066))

(assert (=> b!6999765 m!7692776))

(declare-fun m!7693318 () Bool)

(assert (=> b!6999765 m!7693318))

(assert (=> b!6999765 m!7692060))

(assert (=> b!6999765 m!7692780))

(assert (=> b!6999765 m!7693318))

(assert (=> b!6999765 m!7692780))

(declare-fun m!7693320 () Bool)

(assert (=> b!6999765 m!7693320))

(assert (=> b!6998952 d!2181574))

(declare-fun bs!1864337 () Bool)

(declare-fun d!2181576 () Bool)

(assert (= bs!1864337 (and d!2181576 d!2181464)))

(declare-fun lambda!404967 () Int)

(assert (=> bs!1864337 (= (= (head!14137 lt!2494630) (head!14137 (_2!37240 lt!2494598))) (= lambda!404967 lambda!404958))))

(declare-fun bs!1864338 () Bool)

(assert (= bs!1864338 (and d!2181576 d!2181322)))

(assert (=> bs!1864338 (= (= (head!14137 lt!2494630) (head!14137 (t!381089 s!7408))) (= lambda!404967 lambda!404947))))

(declare-fun bs!1864339 () Bool)

(assert (= bs!1864339 (and d!2181576 d!2181552)))

(assert (=> bs!1864339 (= (= (head!14137 lt!2494630) (head!14137 s!7408)) (= lambda!404967 lambda!404965))))

(declare-fun bs!1864340 () Bool)

(assert (= bs!1864340 (and d!2181576 d!2181392)))

(assert (=> bs!1864340 (= (= (head!14137 lt!2494630) (head!14137 s!7408)) (= lambda!404967 lambda!404953))))

(declare-fun bs!1864341 () Bool)

(assert (= bs!1864341 (and d!2181576 d!2181384)))

(assert (=> bs!1864341 (= lambda!404967 lambda!404952)))

(declare-fun bs!1864342 () Bool)

(assert (= bs!1864342 (and d!2181576 d!2181040)))

(assert (=> bs!1864342 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404967 lambda!404905))))

(declare-fun bs!1864343 () Bool)

(assert (= bs!1864343 (and d!2181576 b!6998841)))

(assert (=> bs!1864343 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404967 lambda!404840))))

(declare-fun bs!1864344 () Bool)

(assert (= bs!1864344 (and d!2181576 d!2181130)))

(assert (=> bs!1864344 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404967 lambda!404921))))

(declare-fun bs!1864345 () Bool)

(assert (= bs!1864345 (and d!2181576 d!2181514)))

(assert (=> bs!1864345 (= (= (head!14137 lt!2494630) (head!14137 (t!381089 s!7408))) (= lambda!404967 lambda!404961))))

(declare-fun bs!1864346 () Bool)

(assert (= bs!1864346 (and d!2181576 d!2181120)))

(assert (=> bs!1864346 (= (= (head!14137 lt!2494630) (h!73662 s!7408)) (= lambda!404967 lambda!404920))))

(declare-fun bs!1864347 () Bool)

(assert (= bs!1864347 (and d!2181576 d!2181540)))

(assert (=> bs!1864347 (= (= (head!14137 lt!2494630) (head!14137 (t!381089 s!7408))) (= lambda!404967 lambda!404962))))

(declare-fun bs!1864348 () Bool)

(assert (= bs!1864348 (and d!2181576 d!2181312)))

(assert (=> bs!1864348 (= lambda!404967 lambda!404946)))

(declare-fun bs!1864349 () Bool)

(assert (= bs!1864349 (and d!2181576 d!2181358)))

(assert (=> bs!1864349 (= (= (head!14137 lt!2494630) (head!14137 (_1!37240 lt!2494598))) (= lambda!404967 lambda!404950))))

(assert (=> d!2181576 true))

(assert (=> d!2181576 (= (derivationStepZipper!2744 lt!2494618 (head!14137 lt!2494630)) (flatMap!2250 lt!2494618 lambda!404967))))

(declare-fun bs!1864350 () Bool)

(assert (= bs!1864350 d!2181576))

(declare-fun m!7693322 () Bool)

(assert (=> bs!1864350 m!7693322))

(assert (=> b!6998952 d!2181576))

(assert (=> b!6998952 d!2181314))

(assert (=> b!6998952 d!2181316))

(declare-fun b!6999766 () Bool)

(declare-fun e!4207388 () Bool)

(declare-fun e!4207392 () Bool)

(assert (=> b!6999766 (= e!4207388 e!4207392)))

(declare-fun res!2855339 () Bool)

(assert (=> b!6999766 (=> (not res!2855339) (not e!4207392))))

(declare-fun call!635563 () Bool)

(assert (=> b!6999766 (= res!2855339 call!635563)))

(declare-fun d!2181578 () Bool)

(declare-fun res!2855336 () Bool)

(declare-fun e!4207390 () Bool)

(assert (=> d!2181578 (=> res!2855336 e!4207390)))

(assert (=> d!2181578 (= res!2855336 (is-ElementMatch!17264 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (=> d!2181578 (= (validRegex!8872 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))) e!4207390)))

(declare-fun bm!635557 () Bool)

(declare-fun call!635562 () Bool)

(assert (=> bm!635557 (= call!635563 call!635562)))

(declare-fun b!6999767 () Bool)

(declare-fun e!4207387 () Bool)

(assert (=> b!6999767 (= e!4207387 call!635562)))

(declare-fun b!6999768 () Bool)

(declare-fun res!2855340 () Bool)

(assert (=> b!6999768 (=> res!2855340 e!4207388)))

(assert (=> b!6999768 (= res!2855340 (not (is-Concat!26109 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun e!4207391 () Bool)

(assert (=> b!6999768 (= e!4207391 e!4207388)))

(declare-fun b!6999769 () Bool)

(declare-fun e!4207393 () Bool)

(assert (=> b!6999769 (= e!4207393 e!4207391)))

(declare-fun c!1299267 () Bool)

(assert (=> b!6999769 (= c!1299267 (is-Union!17264 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999770 () Bool)

(declare-fun e!4207389 () Bool)

(declare-fun call!635564 () Bool)

(assert (=> b!6999770 (= e!4207389 call!635564)))

(declare-fun b!6999771 () Bool)

(assert (=> b!6999771 (= e!4207392 call!635564)))

(declare-fun b!6999772 () Bool)

(assert (=> b!6999772 (= e!4207393 e!4207387)))

(declare-fun res!2855338 () Bool)

(assert (=> b!6999772 (= res!2855338 (not (nullable!7024 (reg!17593 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))))

(assert (=> b!6999772 (=> (not res!2855338) (not e!4207387))))

(declare-fun b!6999773 () Bool)

(assert (=> b!6999773 (= e!4207390 e!4207393)))

(declare-fun c!1299266 () Bool)

(assert (=> b!6999773 (= c!1299266 (is-Star!17264 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun bm!635558 () Bool)

(assert (=> bm!635558 (= call!635562 (validRegex!8872 (ite c!1299266 (reg!17593 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299267 (regOne!35041 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))) (regOne!35040 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613)))))))))))

(declare-fun b!6999774 () Bool)

(declare-fun res!2855337 () Bool)

(assert (=> b!6999774 (=> (not res!2855337) (not e!4207389))))

(assert (=> b!6999774 (= res!2855337 call!635563)))

(assert (=> b!6999774 (= e!4207391 e!4207389)))

(declare-fun bm!635559 () Bool)

(assert (=> bm!635559 (= call!635564 (validRegex!8872 (ite c!1299267 (regTwo!35041 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))) (regTwo!35040 (ite c!1298996 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))))))))))

(assert (= (and d!2181578 (not res!2855336)) b!6999773))

(assert (= (and b!6999773 c!1299266) b!6999772))

(assert (= (and b!6999773 (not c!1299266)) b!6999769))

(assert (= (and b!6999772 res!2855338) b!6999767))

(assert (= (and b!6999769 c!1299267) b!6999774))

(assert (= (and b!6999769 (not c!1299267)) b!6999768))

(assert (= (and b!6999774 res!2855337) b!6999770))

(assert (= (and b!6999768 (not res!2855340)) b!6999766))

(assert (= (and b!6999766 res!2855339) b!6999771))

(assert (= (or b!6999770 b!6999771) bm!635559))

(assert (= (or b!6999774 b!6999766) bm!635557))

(assert (= (or b!6999767 bm!635557) bm!635558))

(declare-fun m!7693324 () Bool)

(assert (=> b!6999772 m!7693324))

(declare-fun m!7693326 () Bool)

(assert (=> bm!635558 m!7693326))

(declare-fun m!7693328 () Bool)

(assert (=> bm!635559 m!7693328))

(assert (=> bm!635431 d!2181578))

(declare-fun b!6999775 () Bool)

(declare-fun e!4207398 () (Set Context!12520))

(declare-fun call!635567 () (Set Context!12520))

(assert (=> b!6999775 (= e!4207398 call!635567)))

(declare-fun call!635568 () List!67337)

(declare-fun c!1299269 () Bool)

(declare-fun c!1299271 () Bool)

(declare-fun call!635565 () (Set Context!12520))

(declare-fun bm!635560 () Bool)

(declare-fun c!1299272 () Bool)

(assert (=> bm!635560 (= call!635565 (derivationStepZipperDown!1982 (ite c!1299269 (regTwo!35041 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299272 (regTwo!35040 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299271 (regOne!35040 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (reg!17593 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))) (ite (or c!1299269 c!1299272) (ite c!1299021 lt!2494587 (Context!12521 call!635458)) (Context!12521 call!635568)) (h!73662 s!7408)))))

(declare-fun b!6999776 () Bool)

(declare-fun e!4207395 () (Set Context!12520))

(declare-fun e!4207396 () (Set Context!12520))

(assert (=> b!6999776 (= e!4207395 e!4207396)))

(assert (=> b!6999776 (= c!1299271 (is-Concat!26109 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999777 () Bool)

(assert (=> b!6999777 (= e!4207396 call!635567)))

(declare-fun bm!635561 () Bool)

(declare-fun call!635566 () (Set Context!12520))

(assert (=> bm!635561 (= call!635567 call!635566)))

(declare-fun bm!635562 () Bool)

(declare-fun call!635570 () List!67337)

(assert (=> bm!635562 (= call!635568 call!635570)))

(declare-fun c!1299270 () Bool)

(declare-fun d!2181580 () Bool)

(assert (=> d!2181580 (= c!1299270 (and (is-ElementMatch!17264 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (= (c!1298969 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (h!73662 s!7408))))))

(declare-fun e!4207394 () (Set Context!12520))

(assert (=> d!2181580 (= (derivationStepZipperDown!1982 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))) (ite c!1299021 lt!2494587 (Context!12521 call!635458)) (h!73662 s!7408)) e!4207394)))

(declare-fun b!6999778 () Bool)

(declare-fun call!635569 () (Set Context!12520))

(assert (=> b!6999778 (= e!4207395 (set.union call!635569 call!635566))))

(declare-fun bm!635563 () Bool)

(assert (=> bm!635563 (= call!635569 (derivationStepZipperDown!1982 (ite c!1299269 (regOne!35041 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (regOne!35040 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))) (ite c!1299269 (ite c!1299021 lt!2494587 (Context!12521 call!635458)) (Context!12521 call!635570)) (h!73662 s!7408)))))

(declare-fun bm!635564 () Bool)

(assert (=> bm!635564 (= call!635570 ($colon$colon!2503 (exprs!6760 (ite c!1299021 lt!2494587 (Context!12521 call!635458))) (ite (or c!1299272 c!1299271) (regTwo!35040 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))) (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6999779 () Bool)

(assert (=> b!6999779 (= e!4207394 (set.insert (ite c!1299021 lt!2494587 (Context!12521 call!635458)) (as set.empty (Set Context!12520))))))

(declare-fun b!6999780 () Bool)

(declare-fun e!4207399 () Bool)

(assert (=> b!6999780 (= c!1299272 e!4207399)))

(declare-fun res!2855341 () Bool)

(assert (=> b!6999780 (=> (not res!2855341) (not e!4207399))))

(assert (=> b!6999780 (= res!2855341 (is-Concat!26109 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun e!4207397 () (Set Context!12520))

(assert (=> b!6999780 (= e!4207397 e!4207395)))

(declare-fun b!6999781 () Bool)

(assert (=> b!6999781 (= e!4207394 e!4207397)))

(assert (=> b!6999781 (= c!1299269 (is-Union!17264 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999782 () Bool)

(assert (=> b!6999782 (= e!4207397 (set.union call!635569 call!635565))))

(declare-fun b!6999783 () Bool)

(declare-fun c!1299268 () Bool)

(assert (=> b!6999783 (= c!1299268 (is-Star!17264 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613))))))))

(assert (=> b!6999783 (= e!4207396 e!4207398)))

(declare-fun b!6999784 () Bool)

(assert (=> b!6999784 (= e!4207398 (as set.empty (Set Context!12520)))))

(declare-fun bm!635565 () Bool)

(assert (=> bm!635565 (= call!635566 call!635565)))

(declare-fun b!6999785 () Bool)

(assert (=> b!6999785 (= e!4207399 (nullable!7024 (regOne!35040 (ite c!1299021 (regOne!35041 (h!73661 (exprs!6760 lt!2494613))) (regOne!35040 (h!73661 (exprs!6760 lt!2494613)))))))))

(assert (= (and d!2181580 c!1299270) b!6999779))

(assert (= (and d!2181580 (not c!1299270)) b!6999781))

(assert (= (and b!6999781 c!1299269) b!6999782))

(assert (= (and b!6999781 (not c!1299269)) b!6999780))

(assert (= (and b!6999780 res!2855341) b!6999785))

(assert (= (and b!6999780 c!1299272) b!6999778))

(assert (= (and b!6999780 (not c!1299272)) b!6999776))

(assert (= (and b!6999776 c!1299271) b!6999777))

(assert (= (and b!6999776 (not c!1299271)) b!6999783))

(assert (= (and b!6999783 c!1299268) b!6999775))

(assert (= (and b!6999783 (not c!1299268)) b!6999784))

(assert (= (or b!6999777 b!6999775) bm!635562))

(assert (= (or b!6999777 b!6999775) bm!635561))

(assert (= (or b!6999778 bm!635561) bm!635565))

(assert (= (or b!6999778 bm!635562) bm!635564))

(assert (= (or b!6999782 b!6999778) bm!635563))

(assert (= (or b!6999782 bm!635565) bm!635560))

(declare-fun m!7693330 () Bool)

(assert (=> b!6999779 m!7693330))

(declare-fun m!7693332 () Bool)

(assert (=> bm!635560 m!7693332))

(declare-fun m!7693334 () Bool)

(assert (=> bm!635564 m!7693334))

(declare-fun m!7693336 () Bool)

(assert (=> b!6999785 m!7693336))

(declare-fun m!7693338 () Bool)

(assert (=> bm!635563 m!7693338))

(assert (=> bm!635451 d!2181580))

(declare-fun d!2181582 () Bool)

(declare-fun c!1299273 () Bool)

(declare-fun e!4207401 () Bool)

(assert (=> d!2181582 (= c!1299273 e!4207401)))

(declare-fun res!2855342 () Bool)

(assert (=> d!2181582 (=> (not res!2855342) (not e!4207401))))

(assert (=> d!2181582 (= res!2855342 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627))))))))

(declare-fun e!4207402 () (Set Context!12520))

(assert (=> d!2181582 (= (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494627))) (h!73662 s!7408)) e!4207402)))

(declare-fun b!6999786 () Bool)

(declare-fun e!4207400 () (Set Context!12520))

(assert (=> b!6999786 (= e!4207402 e!4207400)))

(declare-fun c!1299274 () Bool)

(assert (=> b!6999786 (= c!1299274 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627))))))))

(declare-fun b!6999787 () Bool)

(assert (=> b!6999787 (= e!4207400 (as set.empty (Set Context!12520)))))

(declare-fun b!6999788 () Bool)

(assert (=> b!6999788 (= e!4207401 (nullable!7024 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))))))))

(declare-fun b!6999789 () Bool)

(declare-fun call!635571 () (Set Context!12520))

(assert (=> b!6999789 (= e!4207402 (set.union call!635571 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))))) (h!73662 s!7408))))))

(declare-fun b!6999790 () Bool)

(assert (=> b!6999790 (= e!4207400 call!635571)))

(declare-fun bm!635566 () Bool)

(assert (=> bm!635566 (= call!635571 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627))))) (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))))) (h!73662 s!7408)))))

(assert (= (and d!2181582 res!2855342) b!6999788))

(assert (= (and d!2181582 c!1299273) b!6999789))

(assert (= (and d!2181582 (not c!1299273)) b!6999786))

(assert (= (and b!6999786 c!1299274) b!6999790))

(assert (= (and b!6999786 (not c!1299274)) b!6999787))

(assert (= (or b!6999789 b!6999790) bm!635566))

(declare-fun m!7693340 () Bool)

(assert (=> b!6999788 m!7693340))

(declare-fun m!7693342 () Bool)

(assert (=> b!6999789 m!7693342))

(declare-fun m!7693344 () Bool)

(assert (=> bm!635566 m!7693344))

(assert (=> b!6999096 d!2181582))

(declare-fun d!2181584 () Bool)

(declare-fun c!1299275 () Bool)

(assert (=> d!2181584 (= c!1299275 (isEmpty!39238 (tail!13297 (t!381089 s!7408))))))

(declare-fun e!4207403 () Bool)

(assert (=> d!2181584 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494619 (head!14137 (t!381089 s!7408))) (tail!13297 (t!381089 s!7408))) e!4207403)))

(declare-fun b!6999791 () Bool)

(assert (=> b!6999791 (= e!4207403 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494619 (head!14137 (t!381089 s!7408)))))))

(declare-fun b!6999792 () Bool)

(assert (=> b!6999792 (= e!4207403 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494619 (head!14137 (t!381089 s!7408))) (head!14137 (tail!13297 (t!381089 s!7408)))) (tail!13297 (tail!13297 (t!381089 s!7408)))))))

(assert (= (and d!2181584 c!1299275) b!6999791))

(assert (= (and d!2181584 (not c!1299275)) b!6999792))

(assert (=> d!2181584 m!7692314))

(assert (=> d!2181584 m!7692788))

(assert (=> b!6999791 m!7692414))

(declare-fun m!7693346 () Bool)

(assert (=> b!6999791 m!7693346))

(assert (=> b!6999792 m!7692314))

(assert (=> b!6999792 m!7692792))

(assert (=> b!6999792 m!7692414))

(assert (=> b!6999792 m!7692792))

(declare-fun m!7693348 () Bool)

(assert (=> b!6999792 m!7693348))

(assert (=> b!6999792 m!7692314))

(assert (=> b!6999792 m!7692796))

(assert (=> b!6999792 m!7693348))

(assert (=> b!6999792 m!7692796))

(declare-fun m!7693350 () Bool)

(assert (=> b!6999792 m!7693350))

(assert (=> b!6999216 d!2181584))

(declare-fun bs!1864351 () Bool)

(declare-fun d!2181586 () Bool)

(assert (= bs!1864351 (and d!2181586 d!2181464)))

(declare-fun lambda!404968 () Int)

(assert (=> bs!1864351 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_2!37240 lt!2494598))) (= lambda!404968 lambda!404958))))

(declare-fun bs!1864352 () Bool)

(assert (= bs!1864352 (and d!2181586 d!2181322)))

(assert (=> bs!1864352 (= lambda!404968 lambda!404947)))

(declare-fun bs!1864353 () Bool)

(assert (= bs!1864353 (and d!2181586 d!2181552)))

(assert (=> bs!1864353 (= (= (head!14137 (t!381089 s!7408)) (head!14137 s!7408)) (= lambda!404968 lambda!404965))))

(declare-fun bs!1864354 () Bool)

(assert (= bs!1864354 (and d!2181586 d!2181392)))

(assert (=> bs!1864354 (= (= (head!14137 (t!381089 s!7408)) (head!14137 s!7408)) (= lambda!404968 lambda!404953))))

(declare-fun bs!1864355 () Bool)

(assert (= bs!1864355 (and d!2181586 d!2181384)))

(assert (=> bs!1864355 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404968 lambda!404952))))

(declare-fun bs!1864356 () Bool)

(assert (= bs!1864356 (and d!2181586 d!2181040)))

(assert (=> bs!1864356 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404968 lambda!404905))))

(declare-fun bs!1864357 () Bool)

(assert (= bs!1864357 (and d!2181586 b!6998841)))

(assert (=> bs!1864357 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404968 lambda!404840))))

(declare-fun bs!1864358 () Bool)

(assert (= bs!1864358 (and d!2181586 d!2181130)))

(assert (=> bs!1864358 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404968 lambda!404921))))

(declare-fun bs!1864359 () Bool)

(assert (= bs!1864359 (and d!2181586 d!2181514)))

(assert (=> bs!1864359 (= lambda!404968 lambda!404961)))

(declare-fun bs!1864360 () Bool)

(assert (= bs!1864360 (and d!2181586 d!2181120)))

(assert (=> bs!1864360 (= (= (head!14137 (t!381089 s!7408)) (h!73662 s!7408)) (= lambda!404968 lambda!404920))))

(declare-fun bs!1864361 () Bool)

(assert (= bs!1864361 (and d!2181586 d!2181576)))

(assert (=> bs!1864361 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404968 lambda!404967))))

(declare-fun bs!1864362 () Bool)

(assert (= bs!1864362 (and d!2181586 d!2181540)))

(assert (=> bs!1864362 (= lambda!404968 lambda!404962)))

(declare-fun bs!1864363 () Bool)

(assert (= bs!1864363 (and d!2181586 d!2181312)))

(assert (=> bs!1864363 (= (= (head!14137 (t!381089 s!7408)) (head!14137 lt!2494630)) (= lambda!404968 lambda!404946))))

(declare-fun bs!1864364 () Bool)

(assert (= bs!1864364 (and d!2181586 d!2181358)))

(assert (=> bs!1864364 (= (= (head!14137 (t!381089 s!7408)) (head!14137 (_1!37240 lt!2494598))) (= lambda!404968 lambda!404950))))

(assert (=> d!2181586 true))

(assert (=> d!2181586 (= (derivationStepZipper!2744 lt!2494619 (head!14137 (t!381089 s!7408))) (flatMap!2250 lt!2494619 lambda!404968))))

(declare-fun bs!1864365 () Bool)

(assert (= bs!1864365 d!2181586))

(declare-fun m!7693352 () Bool)

(assert (=> bs!1864365 m!7693352))

(assert (=> b!6999216 d!2181586))

(assert (=> b!6999216 d!2181324))

(assert (=> b!6999216 d!2181326))

(assert (=> d!2181032 d!2181402))

(declare-fun d!2181588 () Bool)

(declare-fun lt!2494998 () Int)

(assert (=> d!2181588 (>= lt!2494998 0)))

(declare-fun e!4207404 () Int)

(assert (=> d!2181588 (= lt!2494998 e!4207404)))

(declare-fun c!1299276 () Bool)

(assert (=> d!2181588 (= c!1299276 (is-Nil!67213 lt!2494874))))

(assert (=> d!2181588 (= (size!40933 lt!2494874) lt!2494998)))

(declare-fun b!6999793 () Bool)

(assert (=> b!6999793 (= e!4207404 0)))

(declare-fun b!6999794 () Bool)

(assert (=> b!6999794 (= e!4207404 (+ 1 (size!40933 (t!381088 lt!2494874))))))

(assert (= (and d!2181588 c!1299276) b!6999793))

(assert (= (and d!2181588 (not c!1299276)) b!6999794))

(declare-fun m!7693354 () Bool)

(assert (=> b!6999794 m!7693354))

(assert (=> b!6999185 d!2181588))

(declare-fun d!2181590 () Bool)

(declare-fun lt!2494999 () Int)

(assert (=> d!2181590 (>= lt!2494999 0)))

(declare-fun e!4207405 () Int)

(assert (=> d!2181590 (= lt!2494999 e!4207405)))

(declare-fun c!1299277 () Bool)

(assert (=> d!2181590 (= c!1299277 (is-Nil!67213 (exprs!6760 lt!2494613)))))

(assert (=> d!2181590 (= (size!40933 (exprs!6760 lt!2494613)) lt!2494999)))

(declare-fun b!6999795 () Bool)

(assert (=> b!6999795 (= e!4207405 0)))

(declare-fun b!6999796 () Bool)

(assert (=> b!6999796 (= e!4207405 (+ 1 (size!40933 (t!381088 (exprs!6760 lt!2494613)))))))

(assert (= (and d!2181590 c!1299277) b!6999795))

(assert (= (and d!2181590 (not c!1299277)) b!6999796))

(assert (=> b!6999796 m!7692910))

(assert (=> b!6999185 d!2181590))

(assert (=> b!6999185 d!2181450))

(declare-fun d!2181592 () Bool)

(assert (=> d!2181592 true))

(declare-fun setRes!48076 () Bool)

(assert (=> d!2181592 setRes!48076))

(declare-fun condSetEmpty!48076 () Bool)

(declare-fun res!2855343 () (Set Context!12520))

(assert (=> d!2181592 (= condSetEmpty!48076 (= res!2855343 (as set.empty (Set Context!12520))))))

(assert (=> d!2181592 (= (choose!52452 lt!2494623 lambda!404840) res!2855343)))

(declare-fun setIsEmpty!48076 () Bool)

(assert (=> setIsEmpty!48076 setRes!48076))

(declare-fun tp!1930963 () Bool)

(declare-fun e!4207406 () Bool)

(declare-fun setElem!48076 () Context!12520)

(declare-fun setNonEmpty!48076 () Bool)

(assert (=> setNonEmpty!48076 (= setRes!48076 (and tp!1930963 (inv!86020 setElem!48076) e!4207406))))

(declare-fun setRest!48076 () (Set Context!12520))

(assert (=> setNonEmpty!48076 (= res!2855343 (set.union (set.insert setElem!48076 (as set.empty (Set Context!12520))) setRest!48076))))

(declare-fun b!6999797 () Bool)

(declare-fun tp!1930964 () Bool)

(assert (=> b!6999797 (= e!4207406 tp!1930964)))

(assert (= (and d!2181592 condSetEmpty!48076) setIsEmpty!48076))

(assert (= (and d!2181592 (not condSetEmpty!48076)) setNonEmpty!48076))

(assert (= setNonEmpty!48076 b!6999797))

(declare-fun m!7693356 () Bool)

(assert (=> setNonEmpty!48076 m!7693356))

(assert (=> d!2181124 d!2181592))

(declare-fun d!2181594 () Bool)

(assert (=> d!2181594 (= (nullable!7024 (reg!17593 (h!73661 (exprs!6760 lt!2494613)))) (nullableFct!2656 (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))

(declare-fun bs!1864366 () Bool)

(assert (= bs!1864366 d!2181594))

(declare-fun m!7693358 () Bool)

(assert (=> bs!1864366 m!7693358))

(assert (=> b!6998980 d!2181594))

(assert (=> bs!1864083 d!2181044))

(declare-fun d!2181596 () Bool)

(declare-fun res!2855344 () Bool)

(declare-fun e!4207407 () Bool)

(assert (=> d!2181596 (=> res!2855344 e!4207407)))

(assert (=> d!2181596 (= res!2855344 (is-Nil!67213 (exprs!6760 setElem!48058)))))

(assert (=> d!2181596 (= (forall!16178 (exprs!6760 setElem!48058) lambda!404922) e!4207407)))

(declare-fun b!6999798 () Bool)

(declare-fun e!4207408 () Bool)

(assert (=> b!6999798 (= e!4207407 e!4207408)))

(declare-fun res!2855345 () Bool)

(assert (=> b!6999798 (=> (not res!2855345) (not e!4207408))))

(assert (=> b!6999798 (= res!2855345 (dynLambda!26996 lambda!404922 (h!73661 (exprs!6760 setElem!48058))))))

(declare-fun b!6999799 () Bool)

(assert (=> b!6999799 (= e!4207408 (forall!16178 (t!381088 (exprs!6760 setElem!48058)) lambda!404922))))

(assert (= (and d!2181596 (not res!2855344)) b!6999798))

(assert (= (and b!6999798 res!2855345) b!6999799))

(declare-fun b_lambda!263553 () Bool)

(assert (=> (not b_lambda!263553) (not b!6999798)))

(declare-fun m!7693360 () Bool)

(assert (=> b!6999798 m!7693360))

(declare-fun m!7693362 () Bool)

(assert (=> b!6999799 m!7693362))

(assert (=> d!2181162 d!2181596))

(declare-fun bs!1864367 () Bool)

(declare-fun d!2181598 () Bool)

(assert (= bs!1864367 (and d!2181598 d!2181308)))

(declare-fun lambda!404969 () Int)

(assert (=> bs!1864367 (= lambda!404969 lambda!404945)))

(declare-fun bs!1864368 () Bool)

(assert (= bs!1864368 (and d!2181598 d!2181542)))

(assert (=> bs!1864368 (= lambda!404969 lambda!404963)))

(declare-fun bs!1864369 () Bool)

(assert (= bs!1864369 (and d!2181598 d!2181482)))

(assert (=> bs!1864369 (= lambda!404969 lambda!404959)))

(declare-fun bs!1864370 () Bool)

(assert (= bs!1864370 (and d!2181598 d!2181100)))

(assert (=> bs!1864370 (not (= lambda!404969 lambda!404919))))

(declare-fun bs!1864371 () Bool)

(assert (= bs!1864371 (and d!2181598 d!2181442)))

(assert (=> bs!1864371 (= lambda!404969 lambda!404956)))

(declare-fun bs!1864372 () Bool)

(assert (= bs!1864372 (and d!2181598 b!6998816)))

(assert (=> bs!1864372 (not (= lambda!404969 lambda!404837))))

(declare-fun bs!1864373 () Bool)

(assert (= bs!1864373 (and d!2181598 d!2181560)))

(assert (=> bs!1864373 (= lambda!404969 lambda!404966)))

(declare-fun bs!1864374 () Bool)

(assert (= bs!1864374 (and d!2181598 d!2181330)))

(assert (=> bs!1864374 (= lambda!404969 lambda!404948)))

(declare-fun bs!1864375 () Bool)

(assert (= bs!1864375 (and d!2181598 d!2181398)))

(assert (=> bs!1864375 (= lambda!404969 lambda!404954)))

(declare-fun bs!1864376 () Bool)

(assert (= bs!1864376 (and d!2181598 d!2181092)))

(assert (=> bs!1864376 (not (= lambda!404969 lambda!404916))))

(declare-fun bs!1864377 () Bool)

(assert (= bs!1864377 (and d!2181598 d!2181362)))

(assert (=> bs!1864377 (= lambda!404969 lambda!404951)))

(declare-fun bs!1864378 () Bool)

(assert (= bs!1864378 (and d!2181598 d!2181436)))

(assert (=> bs!1864378 (= lambda!404969 lambda!404955)))

(declare-fun bs!1864379 () Bool)

(assert (= bs!1864379 (and d!2181598 d!2181456)))

(assert (=> bs!1864379 (= lambda!404969 lambda!404957)))

(declare-fun bs!1864380 () Bool)

(assert (= bs!1864380 (and d!2181598 d!2181486)))

(assert (=> bs!1864380 (= lambda!404969 lambda!404960)))

(assert (=> d!2181598 (= (nullableZipper!2459 lt!2494611) (exists!3079 lt!2494611 lambda!404969))))

(declare-fun bs!1864381 () Bool)

(assert (= bs!1864381 d!2181598))

(declare-fun m!7693364 () Bool)

(assert (=> bs!1864381 m!7693364))

(assert (=> b!6999166 d!2181598))

(declare-fun d!2181600 () Bool)

(declare-fun c!1299278 () Bool)

(assert (=> d!2181600 (= c!1299278 (isEmpty!39238 lt!2494630))))

(declare-fun e!4207409 () Bool)

(assert (=> d!2181600 (= (matchZipper!2804 (set.union lt!2494595 lt!2494625) lt!2494630) e!4207409)))

(declare-fun b!6999800 () Bool)

(assert (=> b!6999800 (= e!4207409 (nullableZipper!2459 (set.union lt!2494595 lt!2494625)))))

(declare-fun b!6999801 () Bool)

(assert (=> b!6999801 (= e!4207409 (matchZipper!2804 (derivationStepZipper!2744 (set.union lt!2494595 lt!2494625) (head!14137 lt!2494630)) (tail!13297 lt!2494630)))))

(assert (= (and d!2181600 c!1299278) b!6999800))

(assert (= (and d!2181600 (not c!1299278)) b!6999801))

(assert (=> d!2181600 m!7692052))

(declare-fun m!7693366 () Bool)

(assert (=> b!6999800 m!7693366))

(assert (=> b!6999801 m!7692056))

(assert (=> b!6999801 m!7692056))

(declare-fun m!7693368 () Bool)

(assert (=> b!6999801 m!7693368))

(assert (=> b!6999801 m!7692060))

(assert (=> b!6999801 m!7693368))

(assert (=> b!6999801 m!7692060))

(declare-fun m!7693370 () Bool)

(assert (=> b!6999801 m!7693370))

(assert (=> d!2181036 d!2181600))

(assert (=> d!2181036 d!2181030))

(declare-fun e!4207410 () Bool)

(declare-fun d!2181602 () Bool)

(assert (=> d!2181602 (= (matchZipper!2804 (set.union lt!2494595 lt!2494625) lt!2494630) e!4207410)))

(declare-fun res!2855346 () Bool)

(assert (=> d!2181602 (=> res!2855346 e!4207410)))

(assert (=> d!2181602 (= res!2855346 (matchZipper!2804 lt!2494595 lt!2494630))))

(assert (=> d!2181602 true))

(declare-fun _$48!2442 () Unit!161186)

(assert (=> d!2181602 (= (choose!52449 lt!2494595 lt!2494625 lt!2494630) _$48!2442)))

(declare-fun b!6999802 () Bool)

(assert (=> b!6999802 (= e!4207410 (matchZipper!2804 lt!2494625 lt!2494630))))

(assert (= (and d!2181602 (not res!2855346)) b!6999802))

(assert (=> d!2181602 m!7692070))

(assert (=> d!2181602 m!7691856))

(assert (=> b!6999802 m!7691784))

(assert (=> d!2181036 d!2181602))

(declare-fun bs!1864382 () Bool)

(declare-fun d!2181604 () Bool)

(assert (= bs!1864382 (and d!2181604 d!2181308)))

(declare-fun lambda!404970 () Int)

(assert (=> bs!1864382 (not (= lambda!404970 lambda!404945))))

(declare-fun bs!1864383 () Bool)

(assert (= bs!1864383 (and d!2181604 d!2181542)))

(assert (=> bs!1864383 (not (= lambda!404970 lambda!404963))))

(declare-fun bs!1864384 () Bool)

(assert (= bs!1864384 (and d!2181604 d!2181482)))

(assert (=> bs!1864384 (not (= lambda!404970 lambda!404959))))

(declare-fun bs!1864385 () Bool)

(assert (= bs!1864385 (and d!2181604 d!2181100)))

(assert (=> bs!1864385 (= (= lambda!404916 lambda!404837) (= lambda!404970 lambda!404919))))

(declare-fun bs!1864386 () Bool)

(assert (= bs!1864386 (and d!2181604 d!2181442)))

(assert (=> bs!1864386 (not (= lambda!404970 lambda!404956))))

(declare-fun bs!1864387 () Bool)

(assert (= bs!1864387 (and d!2181604 d!2181598)))

(assert (=> bs!1864387 (not (= lambda!404970 lambda!404969))))

(declare-fun bs!1864388 () Bool)

(assert (= bs!1864388 (and d!2181604 b!6998816)))

(assert (=> bs!1864388 (not (= lambda!404970 lambda!404837))))

(declare-fun bs!1864389 () Bool)

(assert (= bs!1864389 (and d!2181604 d!2181560)))

(assert (=> bs!1864389 (not (= lambda!404970 lambda!404966))))

(declare-fun bs!1864390 () Bool)

(assert (= bs!1864390 (and d!2181604 d!2181330)))

(assert (=> bs!1864390 (not (= lambda!404970 lambda!404948))))

(declare-fun bs!1864391 () Bool)

(assert (= bs!1864391 (and d!2181604 d!2181398)))

(assert (=> bs!1864391 (not (= lambda!404970 lambda!404954))))

(declare-fun bs!1864392 () Bool)

(assert (= bs!1864392 (and d!2181604 d!2181092)))

(assert (=> bs!1864392 (not (= lambda!404970 lambda!404916))))

(declare-fun bs!1864393 () Bool)

(assert (= bs!1864393 (and d!2181604 d!2181362)))

(assert (=> bs!1864393 (not (= lambda!404970 lambda!404951))))

(declare-fun bs!1864394 () Bool)

(assert (= bs!1864394 (and d!2181604 d!2181436)))

(assert (=> bs!1864394 (not (= lambda!404970 lambda!404955))))

(declare-fun bs!1864395 () Bool)

(assert (= bs!1864395 (and d!2181604 d!2181456)))

(assert (=> bs!1864395 (not (= lambda!404970 lambda!404957))))

(declare-fun bs!1864396 () Bool)

(assert (= bs!1864396 (and d!2181604 d!2181486)))

(assert (=> bs!1864396 (not (= lambda!404970 lambda!404960))))

(assert (=> d!2181604 true))

(assert (=> d!2181604 (< (dynLambda!26990 order!27969 lambda!404916) (dynLambda!26990 order!27969 lambda!404970))))

(assert (=> d!2181604 (= (exists!3077 lt!2494638 lambda!404916) (not (forall!16179 lt!2494638 lambda!404970)))))

(declare-fun bs!1864397 () Bool)

(assert (= bs!1864397 d!2181604))

(declare-fun m!7693372 () Bool)

(assert (=> bs!1864397 m!7693372))

(assert (=> d!2181092 d!2181604))

(declare-fun bs!1864398 () Bool)

(declare-fun d!2181606 () Bool)

(assert (= bs!1864398 (and d!2181606 d!2181308)))

(declare-fun lambda!404973 () Int)

(assert (=> bs!1864398 (not (= lambda!404973 lambda!404945))))

(declare-fun bs!1864399 () Bool)

(assert (= bs!1864399 (and d!2181606 d!2181542)))

(assert (=> bs!1864399 (not (= lambda!404973 lambda!404963))))

(declare-fun bs!1864400 () Bool)

(assert (= bs!1864400 (and d!2181606 d!2181482)))

(assert (=> bs!1864400 (not (= lambda!404973 lambda!404959))))

(declare-fun bs!1864401 () Bool)

(assert (= bs!1864401 (and d!2181606 d!2181100)))

(assert (=> bs!1864401 (not (= lambda!404973 lambda!404919))))

(declare-fun bs!1864402 () Bool)

(assert (= bs!1864402 (and d!2181606 d!2181442)))

(assert (=> bs!1864402 (not (= lambda!404973 lambda!404956))))

(declare-fun bs!1864403 () Bool)

(assert (= bs!1864403 (and d!2181606 d!2181604)))

(assert (=> bs!1864403 (not (= lambda!404973 lambda!404970))))

(declare-fun bs!1864404 () Bool)

(assert (= bs!1864404 (and d!2181606 d!2181598)))

(assert (=> bs!1864404 (not (= lambda!404973 lambda!404969))))

(declare-fun bs!1864405 () Bool)

(assert (= bs!1864405 (and d!2181606 b!6998816)))

(assert (=> bs!1864405 (= lambda!404973 lambda!404837)))

(declare-fun bs!1864406 () Bool)

(assert (= bs!1864406 (and d!2181606 d!2181560)))

(assert (=> bs!1864406 (not (= lambda!404973 lambda!404966))))

(declare-fun bs!1864407 () Bool)

(assert (= bs!1864407 (and d!2181606 d!2181330)))

(assert (=> bs!1864407 (not (= lambda!404973 lambda!404948))))

(declare-fun bs!1864408 () Bool)

(assert (= bs!1864408 (and d!2181606 d!2181398)))

(assert (=> bs!1864408 (not (= lambda!404973 lambda!404954))))

(declare-fun bs!1864409 () Bool)

(assert (= bs!1864409 (and d!2181606 d!2181092)))

(assert (=> bs!1864409 (= lambda!404973 lambda!404916)))

(declare-fun bs!1864410 () Bool)

(assert (= bs!1864410 (and d!2181606 d!2181362)))

(assert (=> bs!1864410 (not (= lambda!404973 lambda!404951))))

(declare-fun bs!1864411 () Bool)

(assert (= bs!1864411 (and d!2181606 d!2181436)))

(assert (=> bs!1864411 (not (= lambda!404973 lambda!404955))))

(declare-fun bs!1864412 () Bool)

(assert (= bs!1864412 (and d!2181606 d!2181456)))

(assert (=> bs!1864412 (not (= lambda!404973 lambda!404957))))

(declare-fun bs!1864413 () Bool)

(assert (= bs!1864413 (and d!2181606 d!2181486)))

(assert (=> bs!1864413 (not (= lambda!404973 lambda!404960))))

(assert (=> d!2181606 true))

(assert (=> d!2181606 (exists!3077 lt!2494638 lambda!404973)))

(assert (=> d!2181606 true))

(declare-fun _$60!1069 () Unit!161186)

(assert (=> d!2181606 (= (choose!52455 lt!2494638 s!7408) _$60!1069)))

(declare-fun bs!1864414 () Bool)

(assert (= bs!1864414 d!2181606))

(declare-fun m!7693374 () Bool)

(assert (=> bs!1864414 m!7693374))

(assert (=> d!2181092 d!2181606))

(declare-fun d!2181608 () Bool)

(declare-fun c!1299281 () Bool)

(assert (=> d!2181608 (= c!1299281 (isEmpty!39238 s!7408))))

(declare-fun e!4207411 () Bool)

(assert (=> d!2181608 (= (matchZipper!2804 (content!13307 lt!2494638) s!7408) e!4207411)))

(declare-fun b!6999803 () Bool)

(assert (=> b!6999803 (= e!4207411 (nullableZipper!2459 (content!13307 lt!2494638)))))

(declare-fun b!6999804 () Bool)

(assert (=> b!6999804 (= e!4207411 (matchZipper!2804 (derivationStepZipper!2744 (content!13307 lt!2494638) (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181608 c!1299281) b!6999803))

(assert (= (and d!2181608 (not c!1299281)) b!6999804))

(assert (=> d!2181608 m!7692186))

(assert (=> b!6999803 m!7692230))

(declare-fun m!7693376 () Bool)

(assert (=> b!6999803 m!7693376))

(assert (=> b!6999804 m!7692190))

(assert (=> b!6999804 m!7692230))

(assert (=> b!6999804 m!7692190))

(declare-fun m!7693378 () Bool)

(assert (=> b!6999804 m!7693378))

(assert (=> b!6999804 m!7692194))

(assert (=> b!6999804 m!7693378))

(assert (=> b!6999804 m!7692194))

(declare-fun m!7693380 () Bool)

(assert (=> b!6999804 m!7693380))

(assert (=> d!2181092 d!2181608))

(declare-fun d!2181610 () Bool)

(declare-fun c!1299282 () Bool)

(assert (=> d!2181610 (= c!1299282 (is-Nil!67215 lt!2494638))))

(declare-fun e!4207412 () (Set Context!12520))

(assert (=> d!2181610 (= (content!13307 lt!2494638) e!4207412)))

(declare-fun b!6999805 () Bool)

(assert (=> b!6999805 (= e!4207412 (as set.empty (Set Context!12520)))))

(declare-fun b!6999806 () Bool)

(assert (=> b!6999806 (= e!4207412 (set.union (set.insert (h!73663 lt!2494638) (as set.empty (Set Context!12520))) (content!13307 (t!381090 lt!2494638))))))

(assert (= (and d!2181610 c!1299282) b!6999805))

(assert (= (and d!2181610 (not c!1299282)) b!6999806))

(declare-fun m!7693382 () Bool)

(assert (=> b!6999806 m!7693382))

(declare-fun m!7693384 () Bool)

(assert (=> b!6999806 m!7693384))

(assert (=> d!2181092 d!2181610))

(assert (=> d!2181108 d!2181104))

(declare-fun d!2181612 () Bool)

(assert (=> d!2181612 (= (flatMap!2250 lt!2494591 lambda!404840) (dynLambda!26988 lambda!404840 lt!2494627))))

(assert (=> d!2181612 true))

(declare-fun _$13!4403 () Unit!161186)

(assert (=> d!2181612 (= (choose!52451 lt!2494591 lt!2494627 lambda!404840) _$13!4403)))

(declare-fun b_lambda!263555 () Bool)

(assert (=> (not b_lambda!263555) (not d!2181612)))

(declare-fun bs!1864415 () Bool)

(assert (= bs!1864415 d!2181612))

(assert (=> bs!1864415 m!7691832))

(assert (=> bs!1864415 m!7692262))

(assert (=> d!2181108 d!2181612))

(declare-fun d!2181614 () Bool)

(declare-fun c!1299283 () Bool)

(assert (=> d!2181614 (= c!1299283 (isEmpty!39238 (tail!13297 s!7408)))))

(declare-fun e!4207413 () Bool)

(assert (=> d!2181614 (= (matchZipper!2804 (derivationStepZipper!2744 lt!2494580 (head!14137 s!7408)) (tail!13297 s!7408)) e!4207413)))

(declare-fun b!6999807 () Bool)

(assert (=> b!6999807 (= e!4207413 (nullableZipper!2459 (derivationStepZipper!2744 lt!2494580 (head!14137 s!7408))))))

(declare-fun b!6999808 () Bool)

(assert (=> b!6999808 (= e!4207413 (matchZipper!2804 (derivationStepZipper!2744 (derivationStepZipper!2744 lt!2494580 (head!14137 s!7408)) (head!14137 (tail!13297 s!7408))) (tail!13297 (tail!13297 s!7408))))))

(assert (= (and d!2181614 c!1299283) b!6999807))

(assert (= (and d!2181614 (not c!1299283)) b!6999808))

(assert (=> d!2181614 m!7692194))

(assert (=> d!2181614 m!7692938))

(assert (=> b!6999807 m!7692192))

(declare-fun m!7693386 () Bool)

(assert (=> b!6999807 m!7693386))

(assert (=> b!6999808 m!7692194))

(assert (=> b!6999808 m!7692942))

(assert (=> b!6999808 m!7692192))

(assert (=> b!6999808 m!7692942))

(declare-fun m!7693388 () Bool)

(assert (=> b!6999808 m!7693388))

(assert (=> b!6999808 m!7692194))

(assert (=> b!6999808 m!7692946))

(assert (=> b!6999808 m!7693388))

(assert (=> b!6999808 m!7692946))

(declare-fun m!7693390 () Bool)

(assert (=> b!6999808 m!7693390))

(assert (=> b!6999082 d!2181614))

(declare-fun bs!1864416 () Bool)

(declare-fun d!2181616 () Bool)

(assert (= bs!1864416 (and d!2181616 d!2181322)))

(declare-fun lambda!404974 () Int)

(assert (=> bs!1864416 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404974 lambda!404947))))

(declare-fun bs!1864417 () Bool)

(assert (= bs!1864417 (and d!2181616 d!2181552)))

(assert (=> bs!1864417 (= lambda!404974 lambda!404965)))

(declare-fun bs!1864418 () Bool)

(assert (= bs!1864418 (and d!2181616 d!2181392)))

(assert (=> bs!1864418 (= lambda!404974 lambda!404953)))

(declare-fun bs!1864419 () Bool)

(assert (= bs!1864419 (and d!2181616 d!2181384)))

(assert (=> bs!1864419 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404974 lambda!404952))))

(declare-fun bs!1864420 () Bool)

(assert (= bs!1864420 (and d!2181616 d!2181040)))

(assert (=> bs!1864420 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404974 lambda!404905))))

(declare-fun bs!1864421 () Bool)

(assert (= bs!1864421 (and d!2181616 b!6998841)))

(assert (=> bs!1864421 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404974 lambda!404840))))

(declare-fun bs!1864422 () Bool)

(assert (= bs!1864422 (and d!2181616 d!2181130)))

(assert (=> bs!1864422 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404974 lambda!404921))))

(declare-fun bs!1864423 () Bool)

(assert (= bs!1864423 (and d!2181616 d!2181514)))

(assert (=> bs!1864423 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404974 lambda!404961))))

(declare-fun bs!1864424 () Bool)

(assert (= bs!1864424 (and d!2181616 d!2181120)))

(assert (=> bs!1864424 (= (= (head!14137 s!7408) (h!73662 s!7408)) (= lambda!404974 lambda!404920))))

(declare-fun bs!1864425 () Bool)

(assert (= bs!1864425 (and d!2181616 d!2181576)))

(assert (=> bs!1864425 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404974 lambda!404967))))

(declare-fun bs!1864426 () Bool)

(assert (= bs!1864426 (and d!2181616 d!2181586)))

(assert (=> bs!1864426 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404974 lambda!404968))))

(declare-fun bs!1864427 () Bool)

(assert (= bs!1864427 (and d!2181616 d!2181464)))

(assert (=> bs!1864427 (= (= (head!14137 s!7408) (head!14137 (_2!37240 lt!2494598))) (= lambda!404974 lambda!404958))))

(declare-fun bs!1864428 () Bool)

(assert (= bs!1864428 (and d!2181616 d!2181540)))

(assert (=> bs!1864428 (= (= (head!14137 s!7408) (head!14137 (t!381089 s!7408))) (= lambda!404974 lambda!404962))))

(declare-fun bs!1864429 () Bool)

(assert (= bs!1864429 (and d!2181616 d!2181312)))

(assert (=> bs!1864429 (= (= (head!14137 s!7408) (head!14137 lt!2494630)) (= lambda!404974 lambda!404946))))

(declare-fun bs!1864430 () Bool)

(assert (= bs!1864430 (and d!2181616 d!2181358)))

(assert (=> bs!1864430 (= (= (head!14137 s!7408) (head!14137 (_1!37240 lt!2494598))) (= lambda!404974 lambda!404950))))

(assert (=> d!2181616 true))

(assert (=> d!2181616 (= (derivationStepZipper!2744 lt!2494580 (head!14137 s!7408)) (flatMap!2250 lt!2494580 lambda!404974))))

(declare-fun bs!1864431 () Bool)

(assert (= bs!1864431 d!2181616))

(declare-fun m!7693392 () Bool)

(assert (=> bs!1864431 m!7693392))

(assert (=> b!6999082 d!2181616))

(assert (=> b!6999082 d!2181394))

(assert (=> b!6999082 d!2181396))

(declare-fun d!2181618 () Bool)

(declare-fun c!1299284 () Bool)

(assert (=> d!2181618 (= c!1299284 (isEmpty!39238 s!7408))))

(declare-fun e!4207414 () Bool)

(assert (=> d!2181618 (= (matchZipper!2804 (set.insert lt!2494855 (as set.empty (Set Context!12520))) s!7408) e!4207414)))

(declare-fun b!6999809 () Bool)

(assert (=> b!6999809 (= e!4207414 (nullableZipper!2459 (set.insert lt!2494855 (as set.empty (Set Context!12520)))))))

(declare-fun b!6999810 () Bool)

(assert (=> b!6999810 (= e!4207414 (matchZipper!2804 (derivationStepZipper!2744 (set.insert lt!2494855 (as set.empty (Set Context!12520))) (head!14137 s!7408)) (tail!13297 s!7408)))))

(assert (= (and d!2181618 c!1299284) b!6999809))

(assert (= (and d!2181618 (not c!1299284)) b!6999810))

(assert (=> d!2181618 m!7692186))

(assert (=> b!6999809 m!7692432))

(declare-fun m!7693394 () Bool)

(assert (=> b!6999809 m!7693394))

(assert (=> b!6999810 m!7692190))

(assert (=> b!6999810 m!7692432))

(assert (=> b!6999810 m!7692190))

(declare-fun m!7693396 () Bool)

(assert (=> b!6999810 m!7693396))

(assert (=> b!6999810 m!7692194))

(assert (=> b!6999810 m!7693396))

(assert (=> b!6999810 m!7692194))

(declare-fun m!7693398 () Bool)

(assert (=> b!6999810 m!7693398))

(assert (=> bs!1864078 d!2181618))

(declare-fun b!6999811 () Bool)

(declare-fun e!4207418 () Int)

(declare-fun call!635574 () Int)

(declare-fun call!635573 () Int)

(assert (=> b!6999811 (= e!4207418 (+ 1 call!635574 call!635573))))

(declare-fun b!6999812 () Bool)

(declare-fun e!4207415 () Int)

(assert (=> b!6999812 (= e!4207415 1)))

(declare-fun b!6999814 () Bool)

(declare-fun e!4207416 () Int)

(assert (=> b!6999814 (= e!4207415 e!4207416)))

(declare-fun c!1299286 () Bool)

(assert (=> b!6999814 (= c!1299286 (is-Star!17264 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun call!635572 () Int)

(declare-fun bm!635567 () Bool)

(declare-fun c!1299288 () Bool)

(assert (=> bm!635567 (= call!635572 (regexDepthTotal!279 (ite c!1299286 (reg!17593 (h!73661 (exprs!6760 lt!2494627))) (ite c!1299288 (regTwo!35041 (h!73661 (exprs!6760 lt!2494627))) (regOne!35040 (h!73661 (exprs!6760 lt!2494627)))))))))

(declare-fun b!6999815 () Bool)

(declare-fun e!4207417 () Int)

(assert (=> b!6999815 (= e!4207418 e!4207417)))

(declare-fun c!1299285 () Bool)

(assert (=> b!6999815 (= c!1299285 (is-Concat!26109 (h!73661 (exprs!6760 lt!2494627))))))

(declare-fun b!6999816 () Bool)

(assert (=> b!6999816 (= c!1299288 (is-Union!17264 (h!73661 (exprs!6760 lt!2494627))))))

(assert (=> b!6999816 (= e!4207416 e!4207418)))

(declare-fun bm!635568 () Bool)

(assert (=> bm!635568 (= call!635573 call!635572)))

(declare-fun b!6999813 () Bool)

(assert (=> b!6999813 (= e!4207417 (+ 1 call!635573 call!635574))))

(declare-fun d!2181620 () Bool)

(declare-fun lt!2495000 () Int)

(assert (=> d!2181620 (> lt!2495000 0)))

(assert (=> d!2181620 (= lt!2495000 e!4207415)))

(declare-fun c!1299287 () Bool)

(assert (=> d!2181620 (= c!1299287 (is-ElementMatch!17264 (h!73661 (exprs!6760 lt!2494627))))))

(assert (=> d!2181620 (= (regexDepthTotal!279 (h!73661 (exprs!6760 lt!2494627))) lt!2495000)))

(declare-fun b!6999817 () Bool)

(assert (=> b!6999817 (= e!4207417 1)))

(declare-fun b!6999818 () Bool)

(assert (=> b!6999818 (= e!4207416 (+ 1 call!635572))))

(declare-fun bm!635569 () Bool)

(assert (=> bm!635569 (= call!635574 (regexDepthTotal!279 (ite c!1299288 (regOne!35041 (h!73661 (exprs!6760 lt!2494627))) (regTwo!35040 (h!73661 (exprs!6760 lt!2494627))))))))

(assert (= (and d!2181620 c!1299287) b!6999812))

(assert (= (and d!2181620 (not c!1299287)) b!6999814))

(assert (= (and b!6999814 c!1299286) b!6999818))

(assert (= (and b!6999814 (not c!1299286)) b!6999816))

(assert (= (and b!6999816 c!1299288) b!6999811))

(assert (= (and b!6999816 (not c!1299288)) b!6999815))

(assert (= (and b!6999815 c!1299285) b!6999813))

(assert (= (and b!6999815 (not c!1299285)) b!6999817))

(assert (= (or b!6999811 b!6999813) bm!635568))

(assert (= (or b!6999811 b!6999813) bm!635569))

(assert (= (or b!6999818 bm!635568) bm!635567))

(declare-fun m!7693400 () Bool)

(assert (=> bm!635567 m!7693400))

(declare-fun m!7693402 () Bool)

(assert (=> bm!635569 m!7693402))

(assert (=> b!6999159 d!2181620))

(declare-fun d!2181622 () Bool)

(declare-fun lt!2495001 () Int)

(assert (=> d!2181622 (>= lt!2495001 0)))

(declare-fun e!4207419 () Int)

(assert (=> d!2181622 (= lt!2495001 e!4207419)))

(declare-fun c!1299289 () Bool)

(assert (=> d!2181622 (= c!1299289 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627))))))))

(assert (=> d!2181622 (= (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))) lt!2495001)))

(declare-fun b!6999819 () Bool)

(assert (=> b!6999819 (= e!4207419 (+ (regexDepthTotal!279 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))))) (contextDepthTotal!457 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494627)))))))))))

(declare-fun b!6999820 () Bool)

(assert (=> b!6999820 (= e!4207419 1)))

(assert (= (and d!2181622 c!1299289) b!6999819))

(assert (= (and d!2181622 (not c!1299289)) b!6999820))

(declare-fun m!7693404 () Bool)

(assert (=> b!6999819 m!7693404))

(declare-fun m!7693406 () Bool)

(assert (=> b!6999819 m!7693406))

(assert (=> b!6999159 d!2181622))

(assert (=> d!2181118 d!2181110))

(declare-fun d!2181624 () Bool)

(assert (=> d!2181624 (= (map!15543 lt!2494591 lambda!404838) (set.insert (dynLambda!26991 lambda!404838 lt!2494627) (as set.empty (Set Context!12520))))))

(assert (=> d!2181624 true))

(declare-fun _$12!2120 () Unit!161186)

(assert (=> d!2181624 (= (choose!52458 lt!2494591 lt!2494627 lambda!404838) _$12!2120)))

(declare-fun b_lambda!263557 () Bool)

(assert (=> (not b_lambda!263557) (not d!2181624)))

(declare-fun bs!1864432 () Bool)

(assert (= bs!1864432 d!2181624))

(assert (=> bs!1864432 m!7691828))

(assert (=> bs!1864432 m!7692282))

(assert (=> bs!1864432 m!7692282))

(assert (=> bs!1864432 m!7692284))

(assert (=> d!2181118 d!2181624))

(declare-fun b!6999821 () Bool)

(declare-fun e!4207424 () (Set Context!12520))

(declare-fun call!635577 () (Set Context!12520))

(assert (=> b!6999821 (= e!4207424 call!635577)))

(declare-fun c!1299291 () Bool)

(declare-fun c!1299294 () Bool)

(declare-fun c!1299293 () Bool)

(declare-fun call!635578 () List!67337)

(declare-fun call!635575 () (Set Context!12520))

(declare-fun bm!635570 () Bool)

(assert (=> bm!635570 (= call!635575 (derivationStepZipperDown!1982 (ite c!1299291 (regTwo!35041 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299294 (regTwo!35040 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299293 (regOne!35040 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (reg!17593 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))) (ite (or c!1299291 c!1299294) (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465)) (Context!12521 call!635578)) (h!73662 s!7408)))))

(declare-fun b!6999822 () Bool)

(declare-fun e!4207421 () (Set Context!12520))

(declare-fun e!4207422 () (Set Context!12520))

(assert (=> b!6999822 (= e!4207421 e!4207422)))

(assert (=> b!6999822 (= c!1299293 (is-Concat!26109 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun b!6999823 () Bool)

(assert (=> b!6999823 (= e!4207422 call!635577)))

(declare-fun bm!635571 () Bool)

(declare-fun call!635576 () (Set Context!12520))

(assert (=> bm!635571 (= call!635577 call!635576)))

(declare-fun bm!635572 () Bool)

(declare-fun call!635580 () List!67337)

(assert (=> bm!635572 (= call!635578 call!635580)))

(declare-fun c!1299292 () Bool)

(declare-fun d!2181626 () Bool)

(assert (=> d!2181626 (= c!1299292 (and (is-ElementMatch!17264 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (= (c!1298969 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (h!73662 s!7408))))))

(declare-fun e!4207420 () (Set Context!12520))

(assert (=> d!2181626 (= (derivationStepZipperDown!1982 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))) (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465)) (h!73662 s!7408)) e!4207420)))

(declare-fun b!6999824 () Bool)

(declare-fun call!635579 () (Set Context!12520))

(assert (=> b!6999824 (= e!4207421 (set.union call!635579 call!635576))))

(declare-fun bm!635573 () Bool)

(assert (=> bm!635573 (= call!635579 (derivationStepZipperDown!1982 (ite c!1299291 (regOne!35041 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (regOne!35040 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))) (ite c!1299291 (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465)) (Context!12521 call!635580)) (h!73662 s!7408)))))

(declare-fun bm!635574 () Bool)

(assert (=> bm!635574 (= call!635580 ($colon$colon!2503 (exprs!6760 (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465))) (ite (or c!1299294 c!1299293) (regTwo!35040 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))) (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))))

(declare-fun b!6999825 () Bool)

(assert (=> b!6999825 (= e!4207420 (set.insert (ite (or c!1299042 c!1299045) lt!2494627 (Context!12521 call!635465)) (as set.empty (Set Context!12520))))))

(declare-fun b!6999826 () Bool)

(declare-fun e!4207425 () Bool)

(assert (=> b!6999826 (= c!1299294 e!4207425)))

(declare-fun res!2855347 () Bool)

(assert (=> b!6999826 (=> (not res!2855347) (not e!4207425))))

(assert (=> b!6999826 (= res!2855347 (is-Concat!26109 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun e!4207423 () (Set Context!12520))

(assert (=> b!6999826 (= e!4207423 e!4207421)))

(declare-fun b!6999827 () Bool)

(assert (=> b!6999827 (= e!4207420 e!4207423)))

(assert (=> b!6999827 (= c!1299291 (is-Union!17264 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(declare-fun b!6999828 () Bool)

(assert (=> b!6999828 (= e!4207423 (set.union call!635579 call!635575))))

(declare-fun b!6999829 () Bool)

(declare-fun c!1299290 () Bool)

(assert (=> b!6999829 (= c!1299290 (is-Star!17264 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613))))))))))

(assert (=> b!6999829 (= e!4207422 e!4207424)))

(declare-fun b!6999830 () Bool)

(assert (=> b!6999830 (= e!4207424 (as set.empty (Set Context!12520)))))

(declare-fun bm!635575 () Bool)

(assert (=> bm!635575 (= call!635576 call!635575)))

(declare-fun b!6999831 () Bool)

(assert (=> b!6999831 (= e!4207425 (nullable!7024 (regOne!35040 (ite c!1299042 (regTwo!35041 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299045 (regTwo!35040 (h!73661 (exprs!6760 lt!2494613))) (ite c!1299044 (regOne!35040 (h!73661 (exprs!6760 lt!2494613))) (reg!17593 (h!73661 (exprs!6760 lt!2494613)))))))))))

(assert (= (and d!2181626 c!1299292) b!6999825))

(assert (= (and d!2181626 (not c!1299292)) b!6999827))

(assert (= (and b!6999827 c!1299291) b!6999828))

(assert (= (and b!6999827 (not c!1299291)) b!6999826))

(assert (= (and b!6999826 res!2855347) b!6999831))

(assert (= (and b!6999826 c!1299294) b!6999824))

(assert (= (and b!6999826 (not c!1299294)) b!6999822))

(assert (= (and b!6999822 c!1299293) b!6999823))

(assert (= (and b!6999822 (not c!1299293)) b!6999829))

(assert (= (and b!6999829 c!1299290) b!6999821))

(assert (= (and b!6999829 (not c!1299290)) b!6999830))

(assert (= (or b!6999823 b!6999821) bm!635572))

(assert (= (or b!6999823 b!6999821) bm!635571))

(assert (= (or b!6999824 bm!635571) bm!635575))

(assert (= (or b!6999824 bm!635572) bm!635574))

(assert (= (or b!6999828 b!6999824) bm!635573))

(assert (= (or b!6999828 bm!635575) bm!635570))

(declare-fun m!7693408 () Bool)

(assert (=> b!6999825 m!7693408))

(declare-fun m!7693410 () Bool)

(assert (=> bm!635570 m!7693410))

(declare-fun m!7693412 () Bool)

(assert (=> bm!635574 m!7693412))

(declare-fun m!7693414 () Bool)

(assert (=> b!6999831 m!7693414))

(declare-fun m!7693416 () Bool)

(assert (=> bm!635573 m!7693416))

(assert (=> bm!635457 d!2181626))

(declare-fun d!2181628 () Bool)

(declare-fun e!4207431 () Bool)

(assert (=> d!2181628 e!4207431))

(declare-fun res!2855350 () Bool)

(assert (=> d!2181628 (=> (not res!2855350) (not e!4207431))))

(declare-fun a!12840 () Context!12520)

(assert (=> d!2181628 (= res!2855350 (= lt!2494612 (dynLambda!26991 lambda!404838 a!12840)))))

(declare-fun e!4207430 () Bool)

(assert (=> d!2181628 (and (inv!86020 a!12840) e!4207430)))

(assert (=> d!2181628 (= (choose!52461 z1!570 lambda!404838 lt!2494612) a!12840)))

(declare-fun b!6999837 () Bool)

(declare-fun tp!1930967 () Bool)

(assert (=> b!6999837 (= e!4207430 tp!1930967)))

(declare-fun b!6999838 () Bool)

(assert (=> b!6999838 (= e!4207431 (set.member a!12840 z1!570))))

(assert (= d!2181628 b!6999837))

(assert (= (and d!2181628 res!2855350) b!6999838))

(declare-fun b_lambda!263559 () Bool)

(assert (=> (not b_lambda!263559) (not d!2181628)))

(declare-fun m!7693418 () Bool)

(assert (=> d!2181628 m!7693418))

(declare-fun m!7693420 () Bool)

(assert (=> d!2181628 m!7693420))

(declare-fun m!7693422 () Bool)

(assert (=> b!6999838 m!7693422))

(assert (=> d!2181142 d!2181628))

(declare-fun d!2181630 () Bool)

(assert (=> d!2181630 (= (map!15543 z1!570 lambda!404838) (choose!52456 z1!570 lambda!404838))))

(declare-fun bs!1864433 () Bool)

(assert (= bs!1864433 d!2181630))

(declare-fun m!7693424 () Bool)

(assert (=> bs!1864433 m!7693424))

(assert (=> d!2181142 d!2181630))

(assert (=> b!6998955 d!2181066))

(declare-fun d!2181632 () Bool)

(declare-fun c!1299295 () Bool)

(assert (=> d!2181632 (= c!1299295 (isEmpty!39238 (_1!37240 (get!23566 lt!2494843))))))

(declare-fun e!4207432 () Bool)

(assert (=> d!2181632 (= (matchZipper!2804 lt!2494591 (_1!37240 (get!23566 lt!2494843))) e!4207432)))

(declare-fun b!6999839 () Bool)

(assert (=> b!6999839 (= e!4207432 (nullableZipper!2459 lt!2494591))))

(declare-fun b!6999840 () Bool)

(assert (=> b!6999840 (= e!4207432 (matchZipper!2804 (derivationStepZipper!2744 lt!2494591 (head!14137 (_1!37240 (get!23566 lt!2494843)))) (tail!13297 (_1!37240 (get!23566 lt!2494843)))))))

(assert (= (and d!2181632 c!1299295) b!6999839))

(assert (= (and d!2181632 (not c!1299295)) b!6999840))

(declare-fun m!7693426 () Bool)

(assert (=> d!2181632 m!7693426))

(assert (=> b!6999839 m!7692178))

(declare-fun m!7693428 () Bool)

(assert (=> b!6999840 m!7693428))

(assert (=> b!6999840 m!7693428))

(declare-fun m!7693430 () Bool)

(assert (=> b!6999840 m!7693430))

(declare-fun m!7693432 () Bool)

(assert (=> b!6999840 m!7693432))

(assert (=> b!6999840 m!7693430))

(assert (=> b!6999840 m!7693432))

(declare-fun m!7693434 () Bool)

(assert (=> b!6999840 m!7693434))

(assert (=> b!6999076 d!2181632))

(assert (=> b!6999076 d!2181494))

(declare-fun d!2181634 () Bool)

(declare-fun c!1299296 () Bool)

(declare-fun e!4207434 () Bool)

(assert (=> d!2181634 (= c!1299296 e!4207434)))

(declare-fun res!2855351 () Bool)

(assert (=> d!2181634 (=> (not res!2855351) (not e!4207434))))

(assert (=> d!2181634 (= res!2855351 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613))))))))

(declare-fun e!4207435 () (Set Context!12520))

(assert (=> d!2181634 (= (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 lt!2494613))) (h!73662 s!7408)) e!4207435)))

(declare-fun b!6999841 () Bool)

(declare-fun e!4207433 () (Set Context!12520))

(assert (=> b!6999841 (= e!4207435 e!4207433)))

(declare-fun c!1299297 () Bool)

(assert (=> b!6999841 (= c!1299297 (is-Cons!67213 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613))))))))

(declare-fun b!6999842 () Bool)

(assert (=> b!6999842 (= e!4207433 (as set.empty (Set Context!12520)))))

(declare-fun b!6999843 () Bool)

(assert (=> b!6999843 (= e!4207434 (nullable!7024 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))))))))

(declare-fun b!6999844 () Bool)

(declare-fun call!635581 () (Set Context!12520))

(assert (=> b!6999844 (= e!4207435 (set.union call!635581 (derivationStepZipperUp!1914 (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))))) (h!73662 s!7408))))))

(declare-fun b!6999845 () Bool)

(assert (=> b!6999845 (= e!4207433 call!635581)))

(declare-fun bm!635576 () Bool)

(assert (=> bm!635576 (= call!635581 (derivationStepZipperDown!1982 (h!73661 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613))))) (Context!12521 (t!381088 (exprs!6760 (Context!12521 (t!381088 (exprs!6760 lt!2494613)))))) (h!73662 s!7408)))))

(assert (= (and d!2181634 res!2855351) b!6999843))

(assert (= (and d!2181634 c!1299296) b!6999844))

(assert (= (and d!2181634 (not c!1299296)) b!6999841))

(assert (= (and b!6999841 c!1299297) b!6999845))

(assert (= (and b!6999841 (not c!1299297)) b!6999842))

(assert (= (or b!6999844 b!6999845) bm!635576))

(declare-fun m!7693436 () Bool)

(assert (=> b!6999843 m!7693436))

(declare-fun m!7693438 () Bool)

(assert (=> b!6999844 m!7693438))

(declare-fun m!7693440 () Bool)

(assert (=> bm!635576 m!7693440))

(assert (=> b!6999164 d!2181634))

(assert (=> d!2181078 d!2181406))

(declare-fun b!6999857 () Bool)

(declare-fun e!4207438 () Bool)

(declare-fun tp!1930981 () Bool)

(declare-fun tp!1930980 () Bool)

(assert (=> b!6999857 (= e!4207438 (and tp!1930981 tp!1930980))))

(declare-fun b!6999859 () Bool)

(declare-fun tp!1930978 () Bool)

(declare-fun tp!1930979 () Bool)

(assert (=> b!6999859 (= e!4207438 (and tp!1930978 tp!1930979))))

(declare-fun b!6999858 () Bool)

(declare-fun tp!1930982 () Bool)

(assert (=> b!6999858 (= e!4207438 tp!1930982)))

(declare-fun b!6999856 () Bool)

(assert (=> b!6999856 (= e!4207438 tp_is_empty!43753)))

(assert (=> b!6999224 (= tp!1930909 e!4207438)))

(assert (= (and b!6999224 (is-ElementMatch!17264 (h!73661 (exprs!6760 setElem!48058)))) b!6999856))

(assert (= (and b!6999224 (is-Concat!26109 (h!73661 (exprs!6760 setElem!48058)))) b!6999857))

(assert (= (and b!6999224 (is-Star!17264 (h!73661 (exprs!6760 setElem!48058)))) b!6999858))

(assert (= (and b!6999224 (is-Union!17264 (h!73661 (exprs!6760 setElem!48058)))) b!6999859))

(declare-fun b!6999860 () Bool)

(declare-fun e!4207439 () Bool)

(declare-fun tp!1930983 () Bool)

(declare-fun tp!1930984 () Bool)

(assert (=> b!6999860 (= e!4207439 (and tp!1930983 tp!1930984))))

(assert (=> b!6999224 (= tp!1930910 e!4207439)))

(assert (= (and b!6999224 (is-Cons!67213 (t!381088 (exprs!6760 setElem!48058)))) b!6999860))

(declare-fun b!6999862 () Bool)

(declare-fun e!4207440 () Bool)

(declare-fun tp!1930988 () Bool)

(declare-fun tp!1930987 () Bool)

(assert (=> b!6999862 (= e!4207440 (and tp!1930988 tp!1930987))))

(declare-fun b!6999864 () Bool)

(declare-fun tp!1930985 () Bool)

(declare-fun tp!1930986 () Bool)

(assert (=> b!6999864 (= e!4207440 (and tp!1930985 tp!1930986))))

(declare-fun b!6999863 () Bool)

(declare-fun tp!1930989 () Bool)

(assert (=> b!6999863 (= e!4207440 tp!1930989)))

(declare-fun b!6999861 () Bool)

(assert (=> b!6999861 (= e!4207440 tp_is_empty!43753)))

(assert (=> b!6999230 (= tp!1930914 e!4207440)))

(assert (= (and b!6999230 (is-ElementMatch!17264 (h!73661 (exprs!6760 ct2!306)))) b!6999861))

(assert (= (and b!6999230 (is-Concat!26109 (h!73661 (exprs!6760 ct2!306)))) b!6999862))

(assert (= (and b!6999230 (is-Star!17264 (h!73661 (exprs!6760 ct2!306)))) b!6999863))

(assert (= (and b!6999230 (is-Union!17264 (h!73661 (exprs!6760 ct2!306)))) b!6999864))

(declare-fun b!6999865 () Bool)

(declare-fun e!4207441 () Bool)

(declare-fun tp!1930990 () Bool)

(declare-fun tp!1930991 () Bool)

(assert (=> b!6999865 (= e!4207441 (and tp!1930990 tp!1930991))))

(assert (=> b!6999230 (= tp!1930915 e!4207441)))

(assert (= (and b!6999230 (is-Cons!67213 (t!381088 (exprs!6760 ct2!306)))) b!6999865))

(declare-fun b!6999866 () Bool)

(declare-fun e!4207442 () Bool)

(declare-fun tp!1930992 () Bool)

(declare-fun tp!1930993 () Bool)

(assert (=> b!6999866 (= e!4207442 (and tp!1930992 tp!1930993))))

(assert (=> b!6999235 (= tp!1930920 e!4207442)))

(assert (= (and b!6999235 (is-Cons!67213 (exprs!6760 setElem!48064))) b!6999866))

(declare-fun condSetEmpty!48077 () Bool)

(assert (=> setNonEmpty!48064 (= condSetEmpty!48077 (= setRest!48064 (as set.empty (Set Context!12520))))))

(declare-fun setRes!48077 () Bool)

(assert (=> setNonEmpty!48064 (= tp!1930921 setRes!48077)))

(declare-fun setIsEmpty!48077 () Bool)

(assert (=> setIsEmpty!48077 setRes!48077))

(declare-fun setElem!48077 () Context!12520)

(declare-fun tp!1930995 () Bool)

(declare-fun e!4207443 () Bool)

(declare-fun setNonEmpty!48077 () Bool)

(assert (=> setNonEmpty!48077 (= setRes!48077 (and tp!1930995 (inv!86020 setElem!48077) e!4207443))))

(declare-fun setRest!48077 () (Set Context!12520))

(assert (=> setNonEmpty!48077 (= setRest!48064 (set.union (set.insert setElem!48077 (as set.empty (Set Context!12520))) setRest!48077))))

(declare-fun b!6999867 () Bool)

(declare-fun tp!1930994 () Bool)

(assert (=> b!6999867 (= e!4207443 tp!1930994)))

(assert (= (and setNonEmpty!48064 condSetEmpty!48077) setIsEmpty!48077))

(assert (= (and setNonEmpty!48064 (not condSetEmpty!48077)) setNonEmpty!48077))

(assert (= setNonEmpty!48077 b!6999867))

(declare-fun m!7693442 () Bool)

(assert (=> setNonEmpty!48077 m!7693442))

(declare-fun b!6999868 () Bool)

(declare-fun e!4207444 () Bool)

(declare-fun tp!1930996 () Bool)

(assert (=> b!6999868 (= e!4207444 (and tp_is_empty!43753 tp!1930996))))

(assert (=> b!6999229 (= tp!1930913 e!4207444)))

(assert (= (and b!6999229 (is-Cons!67214 (t!381089 (t!381089 s!7408)))) b!6999868))

(declare-fun b_lambda!263561 () Bool)

(assert (= b_lambda!263557 (or b!6998829 b_lambda!263561)))

(assert (=> d!2181624 d!2181166))

(declare-fun b_lambda!263563 () Bool)

(assert (= b_lambda!263553 (or d!2181162 b_lambda!263563)))

(declare-fun bs!1864434 () Bool)

(declare-fun d!2181636 () Bool)

(assert (= bs!1864434 (and d!2181636 d!2181162)))

(assert (=> bs!1864434 (= (dynLambda!26996 lambda!404922 (h!73661 (exprs!6760 setElem!48058))) (validRegex!8872 (h!73661 (exprs!6760 setElem!48058))))))

(declare-fun m!7693444 () Bool)

(assert (=> bs!1864434 m!7693444))

(assert (=> b!6999798 d!2181636))

(declare-fun b_lambda!263565 () Bool)

(assert (= b_lambda!263533 (or d!2181084 b_lambda!263565)))

(declare-fun bs!1864435 () Bool)

(declare-fun d!2181638 () Bool)

(assert (= bs!1864435 (and d!2181638 d!2181084)))

(assert (=> bs!1864435 (= (dynLambda!26996 lambda!404913 (h!73661 (exprs!6760 ct2!306))) (validRegex!8872 (h!73661 (exprs!6760 ct2!306))))))

(declare-fun m!7693446 () Bool)

(assert (=> bs!1864435 m!7693446))

(assert (=> b!6999492 d!2181638))

(declare-fun b_lambda!263567 () Bool)

(assert (= b_lambda!263541 (or b!6998829 b_lambda!263567)))

(declare-fun bs!1864436 () Bool)

(declare-fun d!2181640 () Bool)

(assert (= bs!1864436 (and d!2181640 b!6998829)))

(assert (=> bs!1864436 (= (dynLambda!26996 lambda!404839 (h!73661 (exprs!6760 lt!2494613))) (validRegex!8872 (h!73661 (exprs!6760 lt!2494613))))))

(assert (=> bs!1864436 m!7691852))

(assert (=> b!6999693 d!2181640))

(declare-fun b_lambda!263569 () Bool)

(assert (= b_lambda!263547 (or b!6998816 b_lambda!263569)))

(declare-fun bs!1864437 () Bool)

(declare-fun d!2181642 () Bool)

(assert (= bs!1864437 (and d!2181642 b!6998816)))

(assert (=> bs!1864437 (= (dynLambda!26989 lambda!404837 (h!73663 (toList!10624 lt!2494580))) (matchZipper!2804 (set.insert (h!73663 (toList!10624 lt!2494580)) (as set.empty (Set Context!12520))) s!7408))))

(declare-fun m!7693448 () Bool)

(assert (=> bs!1864437 m!7693448))

(assert (=> bs!1864437 m!7693448))

(declare-fun m!7693450 () Bool)

(assert (=> bs!1864437 m!7693450))

(assert (=> b!6999740 d!2181642))

(declare-fun b_lambda!263571 () Bool)

(assert (= b_lambda!263535 (or b!6998829 b_lambda!263571)))

(declare-fun bs!1864438 () Bool)

(declare-fun d!2181644 () Bool)

(assert (= bs!1864438 (and d!2181644 b!6998829)))

(assert (=> bs!1864438 (= (dynLambda!26996 lambda!404839 (h!73661 (++!15230 lt!2494622 (exprs!6760 ct2!306)))) (validRegex!8872 (h!73661 (++!15230 lt!2494622 (exprs!6760 ct2!306)))))))

(declare-fun m!7693452 () Bool)

(assert (=> bs!1864438 m!7693452))

(assert (=> b!6999643 d!2181644))

(declare-fun b_lambda!263573 () Bool)

(assert (= b_lambda!263545 (or b!6998816 b_lambda!263573)))

(declare-fun bs!1864439 () Bool)

(declare-fun d!2181646 () Bool)

(assert (= bs!1864439 (and d!2181646 b!6998816)))

(assert (=> bs!1864439 (= (dynLambda!26989 lambda!404837 lt!2494989) (matchZipper!2804 (set.insert lt!2494989 (as set.empty (Set Context!12520))) s!7408))))

(declare-fun m!7693454 () Bool)

(assert (=> bs!1864439 m!7693454))

(assert (=> bs!1864439 m!7693454))

(declare-fun m!7693456 () Bool)

(assert (=> bs!1864439 m!7693456))

(assert (=> d!2181534 d!2181646))

(declare-fun b_lambda!263575 () Bool)

(assert (= b_lambda!263543 (or b!6998841 b_lambda!263575)))

(assert (=> d!2181528 d!2181170))

(declare-fun b_lambda!263577 () Bool)

(assert (= b_lambda!263531 (or d!2181100 b_lambda!263577)))

(declare-fun bs!1864440 () Bool)

(declare-fun d!2181648 () Bool)

(assert (= bs!1864440 (and d!2181648 d!2181100)))

(assert (=> bs!1864440 (= (dynLambda!26989 lambda!404919 (h!73663 lt!2494638)) (not (dynLambda!26989 lambda!404837 (h!73663 lt!2494638))))))

(declare-fun b_lambda!263591 () Bool)

(assert (=> (not b_lambda!263591) (not bs!1864440)))

(declare-fun m!7693458 () Bool)

(assert (=> bs!1864440 m!7693458))

(assert (=> b!6999477 d!2181648))

(declare-fun b_lambda!263579 () Bool)

(assert (= b_lambda!263537 (or b!6998829 b_lambda!263579)))

(declare-fun bs!1864441 () Bool)

(declare-fun d!2181650 () Bool)

(assert (= bs!1864441 (and d!2181650 b!6998829)))

(assert (=> bs!1864441 (= (dynLambda!26996 lambda!404839 (h!73661 lt!2494622)) (validRegex!8872 (h!73661 lt!2494622)))))

(declare-fun m!7693460 () Bool)

(assert (=> bs!1864441 m!7693460))

(assert (=> b!6999645 d!2181650))

(declare-fun b_lambda!263581 () Bool)

(assert (= b_lambda!263551 (or b!6998841 b_lambda!263581)))

(assert (=> d!2181570 d!2181174))

(declare-fun b_lambda!263583 () Bool)

(assert (= b_lambda!263559 (or b!6998829 b_lambda!263583)))

(declare-fun bs!1864442 () Bool)

(declare-fun d!2181652 () Bool)

(assert (= bs!1864442 (and d!2181652 b!6998829)))

(declare-fun lt!2495002 () Unit!161186)

(assert (=> bs!1864442 (= lt!2495002 (lemmaConcatPreservesForall!600 (exprs!6760 a!12840) (exprs!6760 ct2!306) lambda!404839))))

(assert (=> bs!1864442 (= (dynLambda!26991 lambda!404838 a!12840) (Context!12521 (++!15230 (exprs!6760 a!12840) (exprs!6760 ct2!306))))))

(declare-fun m!7693462 () Bool)

(assert (=> bs!1864442 m!7693462))

(declare-fun m!7693464 () Bool)

(assert (=> bs!1864442 m!7693464))

(assert (=> d!2181628 d!2181652))

(declare-fun b_lambda!263585 () Bool)

(assert (= b_lambda!263555 (or b!6998841 b_lambda!263585)))

(assert (=> d!2181612 d!2181168))

(declare-fun b_lambda!263587 () Bool)

(assert (= b_lambda!263549 (or b!6998841 b_lambda!263587)))

(assert (=> d!2181546 d!2181172))

(declare-fun b_lambda!263589 () Bool)

(assert (= b_lambda!263539 (or b!6998829 b_lambda!263589)))

(declare-fun bs!1864443 () Bool)

(declare-fun d!2181654 () Bool)

(assert (= bs!1864443 (and d!2181654 b!6998829)))

(assert (=> bs!1864443 (= (dynLambda!26996 lambda!404839 (h!73661 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)))) (validRegex!8872 (h!73661 (++!15230 (exprs!6760 lt!2494613) (exprs!6760 ct2!306)))))))

(declare-fun m!7693466 () Bool)

(assert (=> bs!1864443 m!7693466))

(assert (=> b!6999691 d!2181654))

(push 1)

(assert (not b!6999745))

(assert (not d!2181608))

(assert (not d!2181576))

(assert (not b!6999431))

(assert (not b!6999499))

(assert (not b!6999690))

(assert (not d!2181380))

(assert (not d!2181348))

(assert (not b_lambda!263561))

(assert (not b!6999537))

(assert (not b!6999440))

(assert (not bm!635541))

(assert (not b!6999662))

(assert (not b_lambda!263497))

(assert (not b!6999803))

(assert (not bs!1864443))

(assert (not b!6999756))

(assert (not d!2181614))

(assert (not b!6999551))

(assert (not b!6999522))

(assert (not b!6999464))

(assert (not b!6999426))

(assert (not b!6999718))

(assert (not b!6999762))

(assert (not b!6999743))

(assert (not b!6999764))

(assert (not d!2181600))

(assert (not b_lambda!263573))

(assert (not d!2181420))

(assert (not b!6999819))

(assert (not d!2181308))

(assert (not bm!635553))

(assert (not d!2181586))

(assert (not bm!635559))

(assert (not b!6999801))

(assert (not b!6999708))

(assert (not b!6999493))

(assert (not b!6999837))

(assert (not bm!635574))

(assert (not b!6999568))

(assert (not b!6999427))

(assert (not bs!1864438))

(assert (not b!6999438))

(assert (not b!6999796))

(assert (not b_lambda!263499))

(assert (not b!6999808))

(assert (not d!2181556))

(assert (not d!2181536))

(assert (not b!6999788))

(assert (not bm!635546))

(assert (not d!2181328))

(assert (not d!2181618))

(assert (not bs!1864441))

(assert (not b!6999463))

(assert (not b!6999749))

(assert (not b!6999644))

(assert (not bm!635573))

(assert (not b!6999707))

(assert (not bm!635560))

(assert (not b!6999487))

(assert (not bm!635558))

(assert (not d!2181498))

(assert (not bm!635501))

(assert (not d!2181546))

(assert (not d!2181548))

(assert (not b!6999526))

(assert (not d!2181356))

(assert (not b!6999437))

(assert (not b!6999671))

(assert (not bm!635510))

(assert (not bm!635534))

(assert (not b!6999621))

(assert (not d!2181568))

(assert (not bs!1864439))

(assert (not bm!635555))

(assert (not b!6999486))

(assert (not d!2181362))

(assert (not b!6999513))

(assert (not b!6999610))

(assert (not d!2181456))

(assert (not d!2181508))

(assert (not b!6999863))

(assert (not b!6999460))

(assert (not b!6999428))

(assert (not b!6999742))

(assert (not d!2181554))

(assert (not b!6999739))

(assert (not b_lambda!263575))

(assert (not bm!635549))

(assert (not setNonEmpty!48073))

(assert (not d!2181338))

(assert (not d!2181476))

(assert (not b!6999866))

(assert (not b_lambda!263569))

(assert (not bm!635513))

(assert (not d!2181612))

(assert (not d!2181310))

(assert (not b!6999860))

(assert (not bm!635543))

(assert (not bm!635530))

(assert (not d!2181552))

(assert (not d!2181540))

(assert (not b!6999797))

(assert (not b!6999429))

(assert (not d!2181366))

(assert (not b!6999479))

(assert (not d!2181632))

(assert (not b!6999862))

(assert (not b!6999792))

(assert (not d!2181392))

(assert (not setNonEmpty!48075))

(assert (not bm!635529))

(assert (not b!6999456))

(assert (not d!2181570))

(assert (not b!6999442))

(assert (not b!6999695))

(assert (not d!2181424))

(assert (not b!6999794))

(assert (not b!6999809))

(assert (not d!2181384))

(assert (not b!6999466))

(assert (not d!2181514))

(assert (not b!6999751))

(assert (not b_lambda!263493))

(assert (not d!2181334))

(assert (not b!6999443))

(assert (not b!6999712))

(assert (not d!2181624))

(assert (not bm!635567))

(assert (not b!6999512))

(assert (not d!2181606))

(assert (not d!2181336))

(assert (not b!6999535))

(assert (not d!2181492))

(assert (not bm!635507))

(assert (not d!2181550))

(assert (not b!6999804))

(assert (not b!6999865))

(assert (not b!6999471))

(assert (not d!2181426))

(assert (not b!6999525))

(assert (not bm!635570))

(assert (not b!6999772))

(assert (not b!6999548))

(assert (not d!2181574))

(assert (not b!6999439))

(assert (not b!6999480))

(assert (not b!6999509))

(assert (not d!2181398))

(assert (not b!6999450))

(assert (not b!6999704))

(assert (not bm!635505))

(assert (not bm!635527))

(assert (not bm!635535))

(assert (not b!6999761))

(assert (not d!2181482))

(assert (not b!6999478))

(assert (not d!2181358))

(assert (not d!2181322))

(assert (not d!2181368))

(assert (not b!6999765))

(assert (not b_lambda!263489))

(assert (not d!2181534))

(assert (not b!6999570))

(assert (not b_lambda!263579))

(assert (not b!6999717))

(assert (not d!2181442))

(assert (not setNonEmpty!48074))

(assert (not b!6999720))

(assert (not setNonEmpty!48070))

(assert (not bm!635569))

(assert (not d!2181542))

(assert (not d!2181388))

(assert (not d!2181342))

(assert (not b!6999716))

(assert (not b!6999867))

(assert (not d!2181422))

(assert (not d!2181566))

(assert (not d!2181604))

(assert (not bs!1864434))

(assert (not b!6999609))

(assert (not bm!635504))

(assert (not b!6999714))

(assert (not d!2181544))

(assert (not b_lambda!263571))

(assert (not b!6999435))

(assert (not b!6999807))

(assert (not b!6999692))

(assert (not b!6999864))

(assert (not b!6999757))

(assert (not bm!635576))

(assert (not b!6999839))

(assert (not b!6999481))

(assert (not b!6999470))

(assert tp_is_empty!43753)

(assert (not b!6999715))

(assert (not b!6999458))

(assert (not b_lambda!263589))

(assert (not d!2181630))

(assert (not bm!635566))

(assert (not d!2181340))

(assert (not b!6999527))

(assert (not bm!635563))

(assert (not b!6999517))

(assert (not d!2181346))

(assert (not b!6999844))

(assert (not b!6999802))

(assert (not b!6999605))

(assert (not setNonEmpty!48076))

(assert (not d!2181560))

(assert (not b!6999672))

(assert (not d!2181532))

(assert (not bs!1864436))

(assert (not b!6999694))

(assert (not d!2181522))

(assert (not b!6999785))

(assert (not b!6999868))

(assert (not setNonEmpty!48077))

(assert (not d!2181490))

(assert (not bm!635525))

(assert (not d!2181320))

(assert (not b!6999507))

(assert (not b!6999436))

(assert (not b!6999425))

(assert (not b!6999461))

(assert (not b!6999467))

(assert (not b!6999673))

(assert (not d!2181526))

(assert (not b!6999721))

(assert (not d!2181486))

(assert (not bm!635511))

(assert (not bs!1864435))

(assert (not b!6999806))

(assert (not b!6999674))

(assert (not b!6999840))

(assert (not b_lambda!263495))

(assert (not b!6999738))

(assert (not b_lambda!263491))

(assert (not b_lambda!263583))

(assert (not bm!635564))

(assert (not d!2181602))

(assert (not d!2181318))

(assert (not b!6999735))

(assert (not d!2181462))

(assert (not d!2181332))

(assert (not d!2181390))

(assert (not b!6999506))

(assert (not d!2181598))

(assert (not b!6999675))

(assert (not b_lambda!263581))

(assert (not b!6999746))

(assert (not b!6999789))

(assert (not b_lambda!263577))

(assert (not b!6999800))

(assert (not d!2181370))

(assert (not b!6999608))

(assert (not b!6999572))

(assert (not b!6999696))

(assert (not b_lambda!263585))

(assert (not bm!635517))

(assert (not d!2181364))

(assert (not b_lambda!263501))

(assert (not d!2181330))

(assert (not b!6999799))

(assert (not d!2181512))

(assert (not d!2181382))

(assert (not d!2181594))

(assert (not b!6999597))

(assert (not b!6999433))

(assert (not bm!635556))

(assert (not b!6999562))

(assert (not b!6999462))

(assert (not b!6999859))

(assert (not b!6999524))

(assert (not bm!635542))

(assert (not b!6999646))

(assert (not b_lambda!263563))

(assert (not d!2181464))

(assert (not bs!1864437))

(assert (not b!6999741))

(assert (not d!2181616))

(assert (not d!2181628))

(assert (not b!6999657))

(assert (not b!6999711))

(assert (not b_lambda!263591))

(assert (not d!2181344))

(assert (not b_lambda!263565))

(assert (not b!6999670))

(assert (not b!6999831))

(assert (not b!6999810))

(assert (not bs!1864442))

(assert (not b!6999858))

(assert (not bm!635516))

(assert (not bm!635547))

(assert (not b!6999516))

(assert (not b!6999748))

(assert (not b!6999857))

(assert (not d!2181528))

(assert (not b!6999686))

(assert (not b!6999501))

(assert (not b!6999482))

(assert (not d!2181584))

(assert (not b!6999485))

(assert (not b!6999503))

(assert (not b!6999702))

(assert (not d!2181312))

(assert (not b!6999533))

(assert (not d!2181538))

(assert (not d!2181374))

(assert (not b!6999663))

(assert (not b!6999520))

(assert (not b!6999688))

(assert (not bm!635531))

(assert (not d!2181436))

(assert (not b_lambda!263567))

(assert (not b!6999744))

(assert (not d!2181558))

(assert (not b!6999753))

(assert (not b_lambda!263587))

(assert (not d!2181386))

(assert (not bm!635552))

(assert (not d!2181428))

(assert (not b!6999843))

(assert (not b!6999791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

