; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!651222 () Bool)

(assert start!651222)

(declare-fun b!6714694 () Bool)

(assert (=> b!6714694 true))

(assert (=> b!6714694 true))

(declare-fun lambda!376499 () Int)

(declare-fun lambda!376498 () Int)

(assert (=> b!6714694 (not (= lambda!376499 lambda!376498))))

(assert (=> b!6714694 true))

(assert (=> b!6714694 true))

(declare-fun lambda!376500 () Int)

(assert (=> b!6714694 (not (= lambda!376500 lambda!376498))))

(assert (=> b!6714694 (not (= lambda!376500 lambda!376499))))

(assert (=> b!6714694 true))

(assert (=> b!6714694 true))

(declare-fun b!6714684 () Bool)

(declare-fun e!4057813 () Bool)

(declare-fun lt!2436156 () Bool)

(declare-fun lt!2436151 () Bool)

(assert (=> b!6714684 (= e!4057813 (or (not (= lt!2436156 lt!2436151)) (= lt!2436151 lt!2436156)))))

(declare-datatypes ((C!33350 0))(
  ( (C!33351 (val!26377 Int)) )
))
(declare-datatypes ((Regex!16540 0))(
  ( (ElementMatch!16540 (c!1244976 C!33350)) (Concat!25385 (regOne!33592 Regex!16540) (regTwo!33592 Regex!16540)) (EmptyExpr!16540) (Star!16540 (reg!16869 Regex!16540)) (EmptyLang!16540) (Union!16540 (regOne!33593 Regex!16540) (regTwo!33593 Regex!16540)) )
))
(declare-datatypes ((List!65919 0))(
  ( (Nil!65795) (Cons!65795 (h!72243 Regex!16540) (t!379596 List!65919)) )
))
(declare-datatypes ((Context!11848 0))(
  ( (Context!11849 (exprs!6424 List!65919)) )
))
(declare-fun z!1189 () (Set Context!11848))

(declare-datatypes ((List!65920 0))(
  ( (Nil!65796) (Cons!65796 (h!72244 C!33350) (t!379597 List!65920)) )
))
(declare-fun s!2326 () List!65920)

(declare-fun matchZipper!2538 ((Set Context!11848) List!65920) Bool)

(assert (=> b!6714684 (= lt!2436156 (matchZipper!2538 z!1189 s!2326))))

(declare-fun b!6714685 () Bool)

(declare-fun res!2747874 () Bool)

(declare-fun e!4057822 () Bool)

(assert (=> b!6714685 (=> res!2747874 e!4057822)))

(declare-datatypes ((List!65921 0))(
  ( (Nil!65797) (Cons!65797 (h!72245 Context!11848) (t!379598 List!65921)) )
))
(declare-fun zl!343 () List!65921)

(declare-fun isEmpty!38115 (List!65921) Bool)

(assert (=> b!6714685 (= res!2747874 (not (isEmpty!38115 (t!379598 zl!343))))))

(declare-fun setIsEmpty!45762 () Bool)

(declare-fun setRes!45762 () Bool)

(assert (=> setIsEmpty!45762 setRes!45762))

(declare-fun b!6714686 () Bool)

(declare-fun res!2747870 () Bool)

(declare-fun e!4057816 () Bool)

(assert (=> b!6714686 (=> res!2747870 e!4057816)))

(assert (=> b!6714686 (= res!2747870 (not (is-Nil!65796 s!2326)))))

(declare-fun res!2747877 () Bool)

(declare-fun e!4057821 () Bool)

(assert (=> start!651222 (=> (not res!2747877) (not e!4057821))))

(declare-fun r!7292 () Regex!16540)

(declare-fun validRegex!8276 (Regex!16540) Bool)

(assert (=> start!651222 (= res!2747877 (validRegex!8276 r!7292))))

(assert (=> start!651222 e!4057821))

(declare-fun e!4057819 () Bool)

(assert (=> start!651222 e!4057819))

(declare-fun condSetEmpty!45762 () Bool)

(assert (=> start!651222 (= condSetEmpty!45762 (= z!1189 (as set.empty (Set Context!11848))))))

(assert (=> start!651222 setRes!45762))

(declare-fun e!4057817 () Bool)

(assert (=> start!651222 e!4057817))

(declare-fun e!4057814 () Bool)

(assert (=> start!651222 e!4057814))

(declare-fun b!6714687 () Bool)

(declare-fun res!2747878 () Bool)

(assert (=> b!6714687 (=> res!2747878 e!4057822)))

(assert (=> b!6714687 (= res!2747878 (not (is-Cons!65795 (exprs!6424 (h!72245 zl!343)))))))

(declare-fun b!6714688 () Bool)

(assert (=> b!6714688 (= e!4057821 (not e!4057822))))

(declare-fun res!2747873 () Bool)

(assert (=> b!6714688 (=> res!2747873 e!4057822)))

(assert (=> b!6714688 (= res!2747873 (not (is-Cons!65797 zl!343)))))

(declare-fun matchRSpec!3641 (Regex!16540 List!65920) Bool)

(assert (=> b!6714688 (= lt!2436151 (matchRSpec!3641 r!7292 s!2326))))

(declare-fun matchR!8723 (Regex!16540 List!65920) Bool)

(assert (=> b!6714688 (= lt!2436151 (matchR!8723 r!7292 s!2326))))

(declare-datatypes ((Unit!159771 0))(
  ( (Unit!159772) )
))
(declare-fun lt!2436154 () Unit!159771)

(declare-fun mainMatchTheorem!3641 (Regex!16540 List!65920) Unit!159771)

(assert (=> b!6714688 (= lt!2436154 (mainMatchTheorem!3641 r!7292 s!2326))))

(declare-fun b!6714689 () Bool)

(declare-fun tp_is_empty!42333 () Bool)

(assert (=> b!6714689 (= e!4057819 tp_is_empty!42333)))

(declare-fun b!6714690 () Bool)

(declare-fun tp!1840183 () Bool)

(assert (=> b!6714690 (= e!4057819 tp!1840183)))

(declare-fun b!6714691 () Bool)

(declare-fun tp!1840186 () Bool)

(assert (=> b!6714691 (= e!4057814 (and tp_is_empty!42333 tp!1840186))))

(declare-fun b!6714692 () Bool)

(declare-fun res!2747881 () Bool)

(assert (=> b!6714692 (=> (not res!2747881) (not e!4057821))))

(declare-fun toList!10324 ((Set Context!11848)) List!65921)

(assert (=> b!6714692 (= res!2747881 (= (toList!10324 z!1189) zl!343))))

(declare-fun b!6714693 () Bool)

(declare-fun tp!1840184 () Bool)

(declare-fun e!4057820 () Bool)

(declare-fun inv!84598 (Context!11848) Bool)

(assert (=> b!6714693 (= e!4057817 (and (inv!84598 (h!72245 zl!343)) e!4057820 tp!1840184))))

(assert (=> b!6714694 (= e!4057822 e!4057816)))

(declare-fun res!2747880 () Bool)

(assert (=> b!6714694 (=> res!2747880 e!4057816)))

(declare-fun e!4057818 () Bool)

(assert (=> b!6714694 (= res!2747880 (not (= lt!2436151 e!4057818)))))

(declare-fun res!2747876 () Bool)

(assert (=> b!6714694 (=> res!2747876 e!4057818)))

(declare-fun isEmpty!38116 (List!65920) Bool)

(assert (=> b!6714694 (= res!2747876 (isEmpty!38116 s!2326))))

(declare-fun Exists!3608 (Int) Bool)

(assert (=> b!6714694 (= (Exists!3608 lambda!376498) (Exists!3608 lambda!376500))))

(declare-fun lt!2436157 () Unit!159771)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2135 (Regex!16540 Regex!16540 List!65920) Unit!159771)

(assert (=> b!6714694 (= lt!2436157 (lemmaExistCutMatchRandMatchRSpecEquivalent!2135 (reg!16869 r!7292) r!7292 s!2326))))

(assert (=> b!6714694 (= (Exists!3608 lambda!376498) (Exists!3608 lambda!376499))))

(declare-fun lt!2436150 () Unit!159771)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!699 (Regex!16540 List!65920) Unit!159771)

(assert (=> b!6714694 (= lt!2436150 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!699 (reg!16869 r!7292) s!2326))))

(declare-fun lt!2436155 () Bool)

(assert (=> b!6714694 (= lt!2436155 (Exists!3608 lambda!376498))))

(declare-datatypes ((tuple2!67030 0))(
  ( (tuple2!67031 (_1!36818 List!65920) (_2!36818 List!65920)) )
))
(declare-datatypes ((Option!16427 0))(
  ( (None!16426) (Some!16426 (v!52624 tuple2!67030)) )
))
(declare-fun isDefined!13130 (Option!16427) Bool)

(declare-fun findConcatSeparation!2841 (Regex!16540 Regex!16540 List!65920 List!65920 List!65920) Option!16427)

(assert (=> b!6714694 (= lt!2436155 (isDefined!13130 (findConcatSeparation!2841 (reg!16869 r!7292) r!7292 Nil!65796 s!2326 s!2326)))))

(declare-fun lt!2436152 () Unit!159771)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2605 (Regex!16540 Regex!16540 List!65920) Unit!159771)

(assert (=> b!6714694 (= lt!2436152 (lemmaFindConcatSeparationEquivalentToExists!2605 (reg!16869 r!7292) r!7292 s!2326))))

(declare-fun b!6714695 () Bool)

(declare-fun tp!1840179 () Bool)

(declare-fun tp!1840185 () Bool)

(assert (=> b!6714695 (= e!4057819 (and tp!1840179 tp!1840185))))

(declare-fun b!6714696 () Bool)

(declare-fun res!2747872 () Bool)

(assert (=> b!6714696 (=> (not res!2747872) (not e!4057821))))

(declare-fun unfocusZipper!2282 (List!65921) Regex!16540)

(assert (=> b!6714696 (= res!2747872 (= r!7292 (unfocusZipper!2282 zl!343)))))

(declare-fun b!6714697 () Bool)

(assert (=> b!6714697 (= e!4057816 e!4057813)))

(declare-fun res!2747869 () Bool)

(assert (=> b!6714697 (=> res!2747869 e!4057813)))

(declare-fun lt!2436149 () Bool)

(declare-fun lt!2436153 () Bool)

(assert (=> b!6714697 (= res!2747869 (not (= lt!2436149 lt!2436153)))))

(assert (=> b!6714697 (= lt!2436153 lt!2436149)))

(declare-fun nullableZipper!2267 ((Set Context!11848)) Bool)

(assert (=> b!6714697 (= lt!2436149 (nullableZipper!2267 z!1189))))

(declare-fun nullable!6527 (Regex!16540) Bool)

(assert (=> b!6714697 (= lt!2436153 (nullable!6527 r!7292))))

(declare-fun lt!2436158 () Unit!159771)

(declare-fun lemmaUnfocusPreservesNullability!35 (Regex!16540 (Set Context!11848)) Unit!159771)

(assert (=> b!6714697 (= lt!2436158 (lemmaUnfocusPreservesNullability!35 r!7292 z!1189))))

(declare-fun b!6714698 () Bool)

(declare-fun res!2747879 () Bool)

(assert (=> b!6714698 (=> res!2747879 e!4057822)))

(declare-fun generalisedConcat!2137 (List!65919) Regex!16540)

(assert (=> b!6714698 (= res!2747879 (not (= r!7292 (generalisedConcat!2137 (exprs!6424 (h!72245 zl!343))))))))

(declare-fun b!6714699 () Bool)

(declare-fun tp!1840181 () Bool)

(declare-fun tp!1840180 () Bool)

(assert (=> b!6714699 (= e!4057819 (and tp!1840181 tp!1840180))))

(declare-fun b!6714700 () Bool)

(assert (=> b!6714700 (= e!4057818 lt!2436155)))

(declare-fun b!6714701 () Bool)

(declare-fun res!2747871 () Bool)

(assert (=> b!6714701 (=> res!2747871 e!4057822)))

(declare-fun generalisedUnion!2384 (List!65919) Regex!16540)

(declare-fun unfocusZipperList!1961 (List!65921) List!65919)

(assert (=> b!6714701 (= res!2747871 (not (= r!7292 (generalisedUnion!2384 (unfocusZipperList!1961 zl!343)))))))

(declare-fun b!6714702 () Bool)

(declare-fun res!2747875 () Bool)

(assert (=> b!6714702 (=> res!2747875 e!4057822)))

(assert (=> b!6714702 (= res!2747875 (or (is-EmptyExpr!16540 r!7292) (is-EmptyLang!16540 r!7292) (is-ElementMatch!16540 r!7292) (is-Union!16540 r!7292) (is-Concat!25385 r!7292)))))

(declare-fun b!6714703 () Bool)

(declare-fun tp!1840178 () Bool)

(assert (=> b!6714703 (= e!4057820 tp!1840178)))

(declare-fun b!6714704 () Bool)

(declare-fun e!4057815 () Bool)

(declare-fun tp!1840182 () Bool)

(assert (=> b!6714704 (= e!4057815 tp!1840182)))

(declare-fun tp!1840187 () Bool)

(declare-fun setNonEmpty!45762 () Bool)

(declare-fun setElem!45762 () Context!11848)

(assert (=> setNonEmpty!45762 (= setRes!45762 (and tp!1840187 (inv!84598 setElem!45762) e!4057815))))

(declare-fun setRest!45762 () (Set Context!11848))

(assert (=> setNonEmpty!45762 (= z!1189 (set.union (set.insert setElem!45762 (as set.empty (Set Context!11848))) setRest!45762))))

(assert (= (and start!651222 res!2747877) b!6714692))

(assert (= (and b!6714692 res!2747881) b!6714696))

(assert (= (and b!6714696 res!2747872) b!6714688))

(assert (= (and b!6714688 (not res!2747873)) b!6714685))

(assert (= (and b!6714685 (not res!2747874)) b!6714698))

(assert (= (and b!6714698 (not res!2747879)) b!6714687))

(assert (= (and b!6714687 (not res!2747878)) b!6714701))

(assert (= (and b!6714701 (not res!2747871)) b!6714702))

(assert (= (and b!6714702 (not res!2747875)) b!6714694))

(assert (= (and b!6714694 (not res!2747876)) b!6714700))

(assert (= (and b!6714694 (not res!2747880)) b!6714686))

(assert (= (and b!6714686 (not res!2747870)) b!6714697))

(assert (= (and b!6714697 (not res!2747869)) b!6714684))

(assert (= (and start!651222 (is-ElementMatch!16540 r!7292)) b!6714689))

(assert (= (and start!651222 (is-Concat!25385 r!7292)) b!6714695))

(assert (= (and start!651222 (is-Star!16540 r!7292)) b!6714690))

(assert (= (and start!651222 (is-Union!16540 r!7292)) b!6714699))

(assert (= (and start!651222 condSetEmpty!45762) setIsEmpty!45762))

(assert (= (and start!651222 (not condSetEmpty!45762)) setNonEmpty!45762))

(assert (= setNonEmpty!45762 b!6714704))

(assert (= b!6714693 b!6714703))

(assert (= (and start!651222 (is-Cons!65797 zl!343)) b!6714693))

(assert (= (and start!651222 (is-Cons!65796 s!2326)) b!6714691))

(declare-fun m!7478836 () Bool)

(assert (=> b!6714684 m!7478836))

(declare-fun m!7478838 () Bool)

(assert (=> b!6714693 m!7478838))

(declare-fun m!7478840 () Bool)

(assert (=> b!6714692 m!7478840))

(declare-fun m!7478842 () Bool)

(assert (=> b!6714696 m!7478842))

(declare-fun m!7478844 () Bool)

(assert (=> b!6714698 m!7478844))

(declare-fun m!7478846 () Bool)

(assert (=> b!6714697 m!7478846))

(declare-fun m!7478848 () Bool)

(assert (=> b!6714697 m!7478848))

(declare-fun m!7478850 () Bool)

(assert (=> b!6714697 m!7478850))

(declare-fun m!7478852 () Bool)

(assert (=> b!6714685 m!7478852))

(declare-fun m!7478854 () Bool)

(assert (=> b!6714694 m!7478854))

(assert (=> b!6714694 m!7478854))

(declare-fun m!7478856 () Bool)

(assert (=> b!6714694 m!7478856))

(declare-fun m!7478858 () Bool)

(assert (=> b!6714694 m!7478858))

(declare-fun m!7478860 () Bool)

(assert (=> b!6714694 m!7478860))

(declare-fun m!7478862 () Bool)

(assert (=> b!6714694 m!7478862))

(declare-fun m!7478864 () Bool)

(assert (=> b!6714694 m!7478864))

(assert (=> b!6714694 m!7478862))

(declare-fun m!7478866 () Bool)

(assert (=> b!6714694 m!7478866))

(declare-fun m!7478868 () Bool)

(assert (=> b!6714694 m!7478868))

(assert (=> b!6714694 m!7478854))

(declare-fun m!7478870 () Bool)

(assert (=> b!6714694 m!7478870))

(declare-fun m!7478872 () Bool)

(assert (=> setNonEmpty!45762 m!7478872))

(declare-fun m!7478874 () Bool)

(assert (=> start!651222 m!7478874))

(declare-fun m!7478876 () Bool)

(assert (=> b!6714688 m!7478876))

(declare-fun m!7478878 () Bool)

(assert (=> b!6714688 m!7478878))

(declare-fun m!7478880 () Bool)

(assert (=> b!6714688 m!7478880))

(declare-fun m!7478882 () Bool)

(assert (=> b!6714701 m!7478882))

(assert (=> b!6714701 m!7478882))

(declare-fun m!7478884 () Bool)

(assert (=> b!6714701 m!7478884))

(push 1)

(assert (not b!6714684))

(assert (not b!6714694))

(assert (not b!6714703))

(assert (not b!6714704))

(assert (not b!6714698))

(assert tp_is_empty!42333)

(assert (not b!6714691))

(assert (not b!6714690))

(assert (not b!6714688))

(assert (not b!6714696))

(assert (not setNonEmpty!45762))

(assert (not b!6714699))

(assert (not b!6714685))

(assert (not b!6714697))

(assert (not b!6714692))

(assert (not start!651222))

(assert (not b!6714701))

(assert (not b!6714693))

(assert (not b!6714695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

