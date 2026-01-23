; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587036 () Bool)

(assert start!587036)

(declare-fun b!5692905 () Bool)

(assert (=> b!5692905 true))

(assert (=> b!5692905 true))

(declare-fun lambda!306698 () Int)

(declare-fun lambda!306697 () Int)

(assert (=> b!5692905 (not (= lambda!306698 lambda!306697))))

(assert (=> b!5692905 true))

(assert (=> b!5692905 true))

(declare-fun b!5692909 () Bool)

(assert (=> b!5692909 true))

(declare-fun b!5692888 () Bool)

(declare-fun e!3502634 () Bool)

(declare-fun e!3502638 () Bool)

(assert (=> b!5692888 (= e!3502634 e!3502638)))

(declare-fun res!2404108 () Bool)

(assert (=> b!5692888 (=> res!2404108 e!3502638)))

(declare-datatypes ((C!31640 0))(
  ( (C!31641 (val!25522 Int)) )
))
(declare-datatypes ((Regex!15685 0))(
  ( (ElementMatch!15685 (c!1002203 C!31640)) (Concat!24530 (regOne!31882 Regex!15685) (regTwo!31882 Regex!15685)) (EmptyExpr!15685) (Star!15685 (reg!16014 Regex!15685)) (EmptyLang!15685) (Union!15685 (regOne!31883 Regex!15685) (regTwo!31883 Regex!15685)) )
))
(declare-fun r!7292 () Regex!15685)

(declare-fun lt!2271657 () Regex!15685)

(assert (=> b!5692888 (= res!2404108 (not (= r!7292 lt!2271657)))))

(declare-fun lt!2271653 () Regex!15685)

(assert (=> b!5692888 (= lt!2271657 (Concat!24530 lt!2271653 (regTwo!31882 r!7292)))))

(declare-fun b!5692889 () Bool)

(declare-fun res!2404116 () Bool)

(declare-fun e!3502640 () Bool)

(assert (=> b!5692889 (=> res!2404116 e!3502640)))

(declare-datatypes ((List!63354 0))(
  ( (Nil!63230) (Cons!63230 (h!69678 Regex!15685) (t!376672 List!63354)) )
))
(declare-datatypes ((Context!10138 0))(
  ( (Context!10139 (exprs!5569 List!63354)) )
))
(declare-datatypes ((List!63355 0))(
  ( (Nil!63231) (Cons!63231 (h!69679 Context!10138) (t!376673 List!63355)) )
))
(declare-fun zl!343 () List!63355)

(declare-fun generalisedUnion!1548 (List!63354) Regex!15685)

(declare-fun unfocusZipperList!1113 (List!63355) List!63354)

(assert (=> b!5692889 (= res!2404116 (not (= r!7292 (generalisedUnion!1548 (unfocusZipperList!1113 zl!343)))))))

(declare-fun b!5692890 () Bool)

(declare-fun res!2404101 () Bool)

(assert (=> b!5692890 (=> res!2404101 e!3502640)))

(get-info :version)

(assert (=> b!5692890 (= res!2404101 (or ((_ is EmptyExpr!15685) r!7292) ((_ is EmptyLang!15685) r!7292) ((_ is ElementMatch!15685) r!7292) ((_ is Union!15685) r!7292) (not ((_ is Concat!24530) r!7292))))))

(declare-fun b!5692891 () Bool)

(declare-fun res!2404109 () Bool)

(declare-fun e!3502635 () Bool)

(assert (=> b!5692891 (=> res!2404109 e!3502635)))

(declare-fun isEmpty!35081 (List!63354) Bool)

(assert (=> b!5692891 (= res!2404109 (isEmpty!35081 (t!376672 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5692892 () Bool)

(declare-fun res!2404100 () Bool)

(assert (=> b!5692892 (=> res!2404100 e!3502640)))

(assert (=> b!5692892 (= res!2404100 (not ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5692893 () Bool)

(declare-fun res!2404119 () Bool)

(assert (=> b!5692893 (=> res!2404119 e!3502634)))

(declare-fun lt!2271638 () Regex!15685)

(assert (=> b!5692893 (= res!2404119 (not (= lt!2271638 r!7292)))))

(declare-fun b!5692894 () Bool)

(declare-fun res!2404106 () Bool)

(declare-fun e!3502642 () Bool)

(assert (=> b!5692894 (=> res!2404106 e!3502642)))

(declare-fun e!3502630 () Bool)

(assert (=> b!5692894 (= res!2404106 e!3502630)))

(declare-fun res!2404110 () Bool)

(assert (=> b!5692894 (=> (not res!2404110) (not e!3502630))))

(assert (=> b!5692894 (= res!2404110 ((_ is Concat!24530) (regOne!31882 r!7292)))))

(declare-fun b!5692895 () Bool)

(declare-fun e!3502646 () Bool)

(assert (=> b!5692895 (= e!3502646 (not e!3502640))))

(declare-fun res!2404113 () Bool)

(assert (=> b!5692895 (=> res!2404113 e!3502640)))

(assert (=> b!5692895 (= res!2404113 (not ((_ is Cons!63231) zl!343)))))

(declare-fun lt!2271641 () Bool)

(declare-datatypes ((List!63356 0))(
  ( (Nil!63232) (Cons!63232 (h!69680 C!31640) (t!376674 List!63356)) )
))
(declare-fun s!2326 () List!63356)

(declare-fun matchRSpec!2788 (Regex!15685 List!63356) Bool)

(assert (=> b!5692895 (= lt!2271641 (matchRSpec!2788 r!7292 s!2326))))

(declare-fun matchR!7870 (Regex!15685 List!63356) Bool)

(assert (=> b!5692895 (= lt!2271641 (matchR!7870 r!7292 s!2326))))

(declare-datatypes ((Unit!156272 0))(
  ( (Unit!156273) )
))
(declare-fun lt!2271633 () Unit!156272)

(declare-fun mainMatchTheorem!2788 (Regex!15685 List!63356) Unit!156272)

(assert (=> b!5692895 (= lt!2271633 (mainMatchTheorem!2788 r!7292 s!2326))))

(declare-fun b!5692896 () Bool)

(declare-fun res!2404099 () Bool)

(declare-fun e!3502644 () Bool)

(assert (=> b!5692896 (=> (not res!2404099) (not e!3502644))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10138))

(declare-fun toList!9469 ((InoxSet Context!10138)) List!63355)

(assert (=> b!5692896 (= res!2404099 (= (toList!9469 z!1189) zl!343))))

(declare-fun b!5692897 () Bool)

(declare-fun res!2404105 () Bool)

(assert (=> b!5692897 (=> res!2404105 e!3502638)))

(declare-fun lt!2271648 () Context!10138)

(declare-fun unfocusZipper!1427 (List!63355) Regex!15685)

(assert (=> b!5692897 (= res!2404105 (not (= (unfocusZipper!1427 (Cons!63231 lt!2271648 Nil!63231)) (Concat!24530 (reg!16014 (regOne!31882 r!7292)) lt!2271657))))))

(declare-fun b!5692898 () Bool)

(declare-fun e!3502632 () Bool)

(declare-fun tp_is_empty!40623 () Bool)

(assert (=> b!5692898 (= e!3502632 tp_is_empty!40623)))

(declare-fun b!5692899 () Bool)

(declare-fun res!2404112 () Bool)

(assert (=> b!5692899 (=> res!2404112 e!3502640)))

(declare-fun isEmpty!35082 (List!63355) Bool)

(assert (=> b!5692899 (= res!2404112 (not (isEmpty!35082 (t!376673 zl!343))))))

(declare-fun b!5692900 () Bool)

(declare-fun e!3502641 () Bool)

(declare-fun tp!1579594 () Bool)

(assert (=> b!5692900 (= e!3502641 tp!1579594)))

(declare-fun b!5692901 () Bool)

(declare-fun nullable!5717 (Regex!15685) Bool)

(assert (=> b!5692901 (= e!3502630 (nullable!5717 (regOne!31882 (regOne!31882 r!7292))))))

(declare-fun res!2404104 () Bool)

(assert (=> start!587036 (=> (not res!2404104) (not e!3502644))))

(declare-fun validRegex!7421 (Regex!15685) Bool)

(assert (=> start!587036 (= res!2404104 (validRegex!7421 r!7292))))

(assert (=> start!587036 e!3502644))

(assert (=> start!587036 e!3502632))

(declare-fun condSetEmpty!38103 () Bool)

(assert (=> start!587036 (= condSetEmpty!38103 (= z!1189 ((as const (Array Context!10138 Bool)) false)))))

(declare-fun setRes!38103 () Bool)

(assert (=> start!587036 setRes!38103))

(declare-fun e!3502633 () Bool)

(assert (=> start!587036 e!3502633))

(declare-fun e!3502631 () Bool)

(assert (=> start!587036 e!3502631))

(declare-fun b!5692887 () Bool)

(declare-fun e!3502645 () Unit!156272)

(declare-fun Unit!156274 () Unit!156272)

(assert (=> b!5692887 (= e!3502645 Unit!156274)))

(declare-fun b!5692902 () Bool)

(declare-fun e!3502639 () Bool)

(declare-fun lt!2271659 () (InoxSet Context!10138))

(declare-fun matchZipper!1823 ((InoxSet Context!10138) List!63356) Bool)

(assert (=> b!5692902 (= e!3502639 (matchZipper!1823 lt!2271659 (t!376674 s!2326)))))

(declare-fun b!5692903 () Bool)

(declare-fun res!2404103 () Bool)

(assert (=> b!5692903 (=> res!2404103 e!3502634)))

(declare-fun lt!2271660 () (InoxSet Context!10138))

(declare-fun lt!2271654 () (InoxSet Context!10138))

(assert (=> b!5692903 (= res!2404103 (not (= (matchZipper!1823 lt!2271660 s!2326) (matchZipper!1823 lt!2271654 (t!376674 s!2326)))))))

(declare-fun tp!1579591 () Bool)

(declare-fun b!5692904 () Bool)

(declare-fun inv!82459 (Context!10138) Bool)

(assert (=> b!5692904 (= e!3502633 (and (inv!82459 (h!69679 zl!343)) e!3502641 tp!1579591))))

(assert (=> b!5692905 (= e!3502640 e!3502635)))

(declare-fun res!2404115 () Bool)

(assert (=> b!5692905 (=> res!2404115 e!3502635)))

(declare-fun lt!2271650 () Bool)

(assert (=> b!5692905 (= res!2404115 (or (not (= lt!2271641 lt!2271650)) ((_ is Nil!63232) s!2326)))))

(declare-fun Exists!2785 (Int) Bool)

(assert (=> b!5692905 (= (Exists!2785 lambda!306697) (Exists!2785 lambda!306698))))

(declare-fun lt!2271637 () Unit!156272)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1414 (Regex!15685 Regex!15685 List!63356) Unit!156272)

(assert (=> b!5692905 (= lt!2271637 (lemmaExistCutMatchRandMatchRSpecEquivalent!1414 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326))))

(assert (=> b!5692905 (= lt!2271650 (Exists!2785 lambda!306697))))

(declare-datatypes ((tuple2!65564 0))(
  ( (tuple2!65565 (_1!36085 List!63356) (_2!36085 List!63356)) )
))
(declare-datatypes ((Option!15694 0))(
  ( (None!15693) (Some!15693 (v!51746 tuple2!65564)) )
))
(declare-fun isDefined!12397 (Option!15694) Bool)

(declare-fun findConcatSeparation!2108 (Regex!15685 Regex!15685 List!63356 List!63356 List!63356) Option!15694)

(assert (=> b!5692905 (= lt!2271650 (isDefined!12397 (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) Nil!63232 s!2326 s!2326)))))

(declare-fun lt!2271642 () Unit!156272)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1872 (Regex!15685 Regex!15685 List!63356) Unit!156272)

(assert (=> b!5692905 (= lt!2271642 (lemmaFindConcatSeparationEquivalentToExists!1872 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326))))

(declare-fun b!5692906 () Bool)

(declare-fun e!3502637 () Bool)

(declare-fun lt!2271646 () Context!10138)

(assert (=> b!5692906 (= e!3502637 (= (unfocusZipper!1427 (Cons!63231 lt!2271646 Nil!63231)) lt!2271657))))

(declare-fun b!5692907 () Bool)

(declare-fun Unit!156275 () Unit!156272)

(assert (=> b!5692907 (= e!3502645 Unit!156275)))

(declare-fun lt!2271647 () Unit!156272)

(declare-fun lt!2271640 () (InoxSet Context!10138))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!710 ((InoxSet Context!10138) (InoxSet Context!10138) List!63356) Unit!156272)

(assert (=> b!5692907 (= lt!2271647 (lemmaZipperConcatMatchesSameAsBothZippers!710 lt!2271640 lt!2271659 (t!376674 s!2326)))))

(declare-fun res!2404102 () Bool)

(assert (=> b!5692907 (= res!2404102 (matchZipper!1823 lt!2271640 (t!376674 s!2326)))))

(assert (=> b!5692907 (=> res!2404102 e!3502639)))

(assert (=> b!5692907 (= (matchZipper!1823 ((_ map or) lt!2271640 lt!2271659) (t!376674 s!2326)) e!3502639)))

(declare-fun b!5692908 () Bool)

(declare-fun res!2404111 () Bool)

(assert (=> b!5692908 (=> res!2404111 e!3502640)))

(declare-fun generalisedConcat!1300 (List!63354) Regex!15685)

(assert (=> b!5692908 (= res!2404111 (not (= r!7292 (generalisedConcat!1300 (exprs!5569 (h!69679 zl!343))))))))

(assert (=> b!5692909 (= e!3502635 e!3502642)))

(declare-fun res!2404114 () Bool)

(assert (=> b!5692909 (=> res!2404114 e!3502642)))

(assert (=> b!5692909 (= res!2404114 (or (and ((_ is ElementMatch!15685) (regOne!31882 r!7292)) (= (c!1002203 (regOne!31882 r!7292)) (h!69680 s!2326))) ((_ is Union!15685) (regOne!31882 r!7292))))))

(declare-fun lt!2271645 () Unit!156272)

(assert (=> b!5692909 (= lt!2271645 e!3502645)))

(declare-fun c!1002202 () Bool)

(assert (=> b!5692909 (= c!1002202 (nullable!5717 (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun lambda!306699 () Int)

(declare-fun flatMap!1298 ((InoxSet Context!10138) Int) (InoxSet Context!10138))

(declare-fun derivationStepZipperUp!953 (Context!10138 C!31640) (InoxSet Context!10138))

(assert (=> b!5692909 (= (flatMap!1298 z!1189 lambda!306699) (derivationStepZipperUp!953 (h!69679 zl!343) (h!69680 s!2326)))))

(declare-fun lt!2271649 () Unit!156272)

(declare-fun lemmaFlatMapOnSingletonSet!830 ((InoxSet Context!10138) Context!10138 Int) Unit!156272)

(assert (=> b!5692909 (= lt!2271649 (lemmaFlatMapOnSingletonSet!830 z!1189 (h!69679 zl!343) lambda!306699))))

(declare-fun lt!2271658 () Context!10138)

(assert (=> b!5692909 (= lt!2271659 (derivationStepZipperUp!953 lt!2271658 (h!69680 s!2326)))))

(declare-fun derivationStepZipperDown!1027 (Regex!15685 Context!10138 C!31640) (InoxSet Context!10138))

(assert (=> b!5692909 (= lt!2271640 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 (h!69679 zl!343))) lt!2271658 (h!69680 s!2326)))))

(assert (=> b!5692909 (= lt!2271658 (Context!10139 (t!376672 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun lt!2271635 () (InoxSet Context!10138))

(assert (=> b!5692909 (= lt!2271635 (derivationStepZipperUp!953 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343))))) (h!69680 s!2326)))))

(declare-fun b!5692910 () Bool)

(declare-fun e!3502636 () Bool)

(declare-fun tp!1579590 () Bool)

(assert (=> b!5692910 (= e!3502636 tp!1579590)))

(declare-fun b!5692911 () Bool)

(declare-fun tp!1579595 () Bool)

(declare-fun tp!1579596 () Bool)

(assert (=> b!5692911 (= e!3502632 (and tp!1579595 tp!1579596))))

(declare-fun b!5692912 () Bool)

(declare-fun tp!1579593 () Bool)

(declare-fun tp!1579589 () Bool)

(assert (=> b!5692912 (= e!3502632 (and tp!1579593 tp!1579589))))

(declare-fun b!5692913 () Bool)

(declare-fun res!2404107 () Bool)

(assert (=> b!5692913 (=> res!2404107 e!3502642)))

(assert (=> b!5692913 (= res!2404107 (or ((_ is Concat!24530) (regOne!31882 r!7292)) (not ((_ is Star!15685) (regOne!31882 r!7292)))))))

(declare-fun b!5692914 () Bool)

(declare-fun e!3502643 () Bool)

(assert (=> b!5692914 (= e!3502643 e!3502634)))

(declare-fun res!2404118 () Bool)

(assert (=> b!5692914 (=> res!2404118 e!3502634)))

(declare-fun lt!2271644 () (InoxSet Context!10138))

(assert (=> b!5692914 (= res!2404118 (not (= lt!2271654 lt!2271644)))))

(assert (=> b!5692914 (= (flatMap!1298 lt!2271660 lambda!306699) (derivationStepZipperUp!953 lt!2271648 (h!69680 s!2326)))))

(declare-fun lt!2271634 () Unit!156272)

(assert (=> b!5692914 (= lt!2271634 (lemmaFlatMapOnSingletonSet!830 lt!2271660 lt!2271648 lambda!306699))))

(declare-fun lt!2271652 () (InoxSet Context!10138))

(assert (=> b!5692914 (= lt!2271652 (derivationStepZipperUp!953 lt!2271648 (h!69680 s!2326)))))

(declare-fun derivationStepZipper!1768 ((InoxSet Context!10138) C!31640) (InoxSet Context!10138))

(assert (=> b!5692914 (= lt!2271654 (derivationStepZipper!1768 lt!2271660 (h!69680 s!2326)))))

(assert (=> b!5692914 (= lt!2271660 (store ((as const (Array Context!10138 Bool)) false) lt!2271648 true))))

(declare-fun lt!2271656 () List!63354)

(assert (=> b!5692914 (= lt!2271648 (Context!10139 (Cons!63230 (reg!16014 (regOne!31882 r!7292)) lt!2271656)))))

(declare-fun setIsEmpty!38103 () Bool)

(assert (=> setIsEmpty!38103 setRes!38103))

(declare-fun b!5692915 () Bool)

(declare-fun tp!1579598 () Bool)

(assert (=> b!5692915 (= e!3502632 tp!1579598)))

(declare-fun setNonEmpty!38103 () Bool)

(declare-fun tp!1579597 () Bool)

(declare-fun setElem!38103 () Context!10138)

(assert (=> setNonEmpty!38103 (= setRes!38103 (and tp!1579597 (inv!82459 setElem!38103) e!3502636))))

(declare-fun setRest!38103 () (InoxSet Context!10138))

(assert (=> setNonEmpty!38103 (= z!1189 ((_ map or) (store ((as const (Array Context!10138 Bool)) false) setElem!38103 true) setRest!38103))))

(declare-fun b!5692916 () Bool)

(declare-fun tp!1579592 () Bool)

(assert (=> b!5692916 (= e!3502631 (and tp_is_empty!40623 tp!1579592))))

(declare-fun b!5692917 () Bool)

(assert (=> b!5692917 (= e!3502644 e!3502646)))

(declare-fun res!2404097 () Bool)

(assert (=> b!5692917 (=> (not res!2404097) (not e!3502646))))

(assert (=> b!5692917 (= res!2404097 (= r!7292 lt!2271638))))

(assert (=> b!5692917 (= lt!2271638 (unfocusZipper!1427 zl!343))))

(declare-fun b!5692918 () Bool)

(assert (=> b!5692918 (= e!3502638 e!3502637)))

(declare-fun res!2404117 () Bool)

(assert (=> b!5692918 (=> res!2404117 e!3502637)))

(declare-fun lt!2271655 () Context!10138)

(assert (=> b!5692918 (= res!2404117 (not (= (unfocusZipper!1427 (Cons!63231 lt!2271655 Nil!63231)) (reg!16014 (regOne!31882 r!7292)))))))

(declare-fun lt!2271662 () (InoxSet Context!10138))

(assert (=> b!5692918 (= (flatMap!1298 lt!2271662 lambda!306699) (derivationStepZipperUp!953 lt!2271646 (h!69680 s!2326)))))

(declare-fun lt!2271636 () Unit!156272)

(assert (=> b!5692918 (= lt!2271636 (lemmaFlatMapOnSingletonSet!830 lt!2271662 lt!2271646 lambda!306699))))

(declare-fun lt!2271639 () (InoxSet Context!10138))

(assert (=> b!5692918 (= (flatMap!1298 lt!2271639 lambda!306699) (derivationStepZipperUp!953 lt!2271655 (h!69680 s!2326)))))

(declare-fun lt!2271651 () Unit!156272)

(assert (=> b!5692918 (= lt!2271651 (lemmaFlatMapOnSingletonSet!830 lt!2271639 lt!2271655 lambda!306699))))

(declare-fun lt!2271661 () (InoxSet Context!10138))

(assert (=> b!5692918 (= lt!2271661 (derivationStepZipperUp!953 lt!2271646 (h!69680 s!2326)))))

(declare-fun lt!2271643 () (InoxSet Context!10138))

(assert (=> b!5692918 (= lt!2271643 (derivationStepZipperUp!953 lt!2271655 (h!69680 s!2326)))))

(assert (=> b!5692918 (= lt!2271662 (store ((as const (Array Context!10138 Bool)) false) lt!2271646 true))))

(assert (=> b!5692918 (= lt!2271639 (store ((as const (Array Context!10138 Bool)) false) lt!2271655 true))))

(assert (=> b!5692918 (= lt!2271655 (Context!10139 (Cons!63230 (reg!16014 (regOne!31882 r!7292)) Nil!63230)))))

(declare-fun b!5692919 () Bool)

(assert (=> b!5692919 (= e!3502642 e!3502643)))

(declare-fun res!2404098 () Bool)

(assert (=> b!5692919 (=> res!2404098 e!3502643)))

(assert (=> b!5692919 (= res!2404098 (not (= lt!2271640 lt!2271644)))))

(assert (=> b!5692919 (= lt!2271644 (derivationStepZipperDown!1027 (reg!16014 (regOne!31882 r!7292)) lt!2271646 (h!69680 s!2326)))))

(assert (=> b!5692919 (= lt!2271646 (Context!10139 lt!2271656))))

(assert (=> b!5692919 (= lt!2271656 (Cons!63230 lt!2271653 (t!376672 (exprs!5569 (h!69679 zl!343)))))))

(assert (=> b!5692919 (= lt!2271653 (Star!15685 (reg!16014 (regOne!31882 r!7292))))))

(assert (= (and start!587036 res!2404104) b!5692896))

(assert (= (and b!5692896 res!2404099) b!5692917))

(assert (= (and b!5692917 res!2404097) b!5692895))

(assert (= (and b!5692895 (not res!2404113)) b!5692899))

(assert (= (and b!5692899 (not res!2404112)) b!5692908))

(assert (= (and b!5692908 (not res!2404111)) b!5692892))

(assert (= (and b!5692892 (not res!2404100)) b!5692889))

(assert (= (and b!5692889 (not res!2404116)) b!5692890))

(assert (= (and b!5692890 (not res!2404101)) b!5692905))

(assert (= (and b!5692905 (not res!2404115)) b!5692891))

(assert (= (and b!5692891 (not res!2404109)) b!5692909))

(assert (= (and b!5692909 c!1002202) b!5692907))

(assert (= (and b!5692909 (not c!1002202)) b!5692887))

(assert (= (and b!5692907 (not res!2404102)) b!5692902))

(assert (= (and b!5692909 (not res!2404114)) b!5692894))

(assert (= (and b!5692894 res!2404110) b!5692901))

(assert (= (and b!5692894 (not res!2404106)) b!5692913))

(assert (= (and b!5692913 (not res!2404107)) b!5692919))

(assert (= (and b!5692919 (not res!2404098)) b!5692914))

(assert (= (and b!5692914 (not res!2404118)) b!5692903))

(assert (= (and b!5692903 (not res!2404103)) b!5692893))

(assert (= (and b!5692893 (not res!2404119)) b!5692888))

(assert (= (and b!5692888 (not res!2404108)) b!5692897))

(assert (= (and b!5692897 (not res!2404105)) b!5692918))

(assert (= (and b!5692918 (not res!2404117)) b!5692906))

(assert (= (and start!587036 ((_ is ElementMatch!15685) r!7292)) b!5692898))

(assert (= (and start!587036 ((_ is Concat!24530) r!7292)) b!5692912))

(assert (= (and start!587036 ((_ is Star!15685) r!7292)) b!5692915))

(assert (= (and start!587036 ((_ is Union!15685) r!7292)) b!5692911))

(assert (= (and start!587036 condSetEmpty!38103) setIsEmpty!38103))

(assert (= (and start!587036 (not condSetEmpty!38103)) setNonEmpty!38103))

(assert (= setNonEmpty!38103 b!5692910))

(assert (= b!5692904 b!5692900))

(assert (= (and start!587036 ((_ is Cons!63231) zl!343)) b!5692904))

(assert (= (and start!587036 ((_ is Cons!63232) s!2326)) b!5692916))

(declare-fun m!6649558 () Bool)

(assert (=> b!5692903 m!6649558))

(declare-fun m!6649560 () Bool)

(assert (=> b!5692903 m!6649560))

(declare-fun m!6649562 () Bool)

(assert (=> b!5692896 m!6649562))

(declare-fun m!6649564 () Bool)

(assert (=> b!5692889 m!6649564))

(assert (=> b!5692889 m!6649564))

(declare-fun m!6649566 () Bool)

(assert (=> b!5692889 m!6649566))

(declare-fun m!6649568 () Bool)

(assert (=> b!5692891 m!6649568))

(declare-fun m!6649570 () Bool)

(assert (=> b!5692905 m!6649570))

(declare-fun m!6649572 () Bool)

(assert (=> b!5692905 m!6649572))

(declare-fun m!6649574 () Bool)

(assert (=> b!5692905 m!6649574))

(declare-fun m!6649576 () Bool)

(assert (=> b!5692905 m!6649576))

(assert (=> b!5692905 m!6649570))

(declare-fun m!6649578 () Bool)

(assert (=> b!5692905 m!6649578))

(assert (=> b!5692905 m!6649574))

(declare-fun m!6649580 () Bool)

(assert (=> b!5692905 m!6649580))

(declare-fun m!6649582 () Bool)

(assert (=> b!5692914 m!6649582))

(declare-fun m!6649584 () Bool)

(assert (=> b!5692914 m!6649584))

(declare-fun m!6649586 () Bool)

(assert (=> b!5692914 m!6649586))

(declare-fun m!6649588 () Bool)

(assert (=> b!5692914 m!6649588))

(declare-fun m!6649590 () Bool)

(assert (=> b!5692914 m!6649590))

(declare-fun m!6649592 () Bool)

(assert (=> b!5692918 m!6649592))

(declare-fun m!6649594 () Bool)

(assert (=> b!5692918 m!6649594))

(declare-fun m!6649596 () Bool)

(assert (=> b!5692918 m!6649596))

(declare-fun m!6649598 () Bool)

(assert (=> b!5692918 m!6649598))

(declare-fun m!6649600 () Bool)

(assert (=> b!5692918 m!6649600))

(declare-fun m!6649602 () Bool)

(assert (=> b!5692918 m!6649602))

(declare-fun m!6649604 () Bool)

(assert (=> b!5692918 m!6649604))

(declare-fun m!6649606 () Bool)

(assert (=> b!5692918 m!6649606))

(declare-fun m!6649608 () Bool)

(assert (=> b!5692918 m!6649608))

(declare-fun m!6649610 () Bool)

(assert (=> b!5692902 m!6649610))

(declare-fun m!6649612 () Bool)

(assert (=> b!5692909 m!6649612))

(declare-fun m!6649614 () Bool)

(assert (=> b!5692909 m!6649614))

(declare-fun m!6649616 () Bool)

(assert (=> b!5692909 m!6649616))

(declare-fun m!6649618 () Bool)

(assert (=> b!5692909 m!6649618))

(declare-fun m!6649620 () Bool)

(assert (=> b!5692909 m!6649620))

(declare-fun m!6649622 () Bool)

(assert (=> b!5692909 m!6649622))

(declare-fun m!6649624 () Bool)

(assert (=> b!5692909 m!6649624))

(declare-fun m!6649626 () Bool)

(assert (=> b!5692901 m!6649626))

(declare-fun m!6649628 () Bool)

(assert (=> b!5692906 m!6649628))

(declare-fun m!6649630 () Bool)

(assert (=> b!5692908 m!6649630))

(declare-fun m!6649632 () Bool)

(assert (=> b!5692907 m!6649632))

(declare-fun m!6649634 () Bool)

(assert (=> b!5692907 m!6649634))

(declare-fun m!6649636 () Bool)

(assert (=> b!5692907 m!6649636))

(declare-fun m!6649638 () Bool)

(assert (=> start!587036 m!6649638))

(declare-fun m!6649640 () Bool)

(assert (=> b!5692919 m!6649640))

(declare-fun m!6649642 () Bool)

(assert (=> setNonEmpty!38103 m!6649642))

(declare-fun m!6649644 () Bool)

(assert (=> b!5692899 m!6649644))

(declare-fun m!6649646 () Bool)

(assert (=> b!5692917 m!6649646))

(declare-fun m!6649648 () Bool)

(assert (=> b!5692904 m!6649648))

(declare-fun m!6649650 () Bool)

(assert (=> b!5692895 m!6649650))

(declare-fun m!6649652 () Bool)

(assert (=> b!5692895 m!6649652))

(declare-fun m!6649654 () Bool)

(assert (=> b!5692895 m!6649654))

(declare-fun m!6649656 () Bool)

(assert (=> b!5692897 m!6649656))

(check-sat (not b!5692910) (not b!5692891) (not start!587036) tp_is_empty!40623 (not b!5692896) (not b!5692900) (not b!5692912) (not b!5692911) (not b!5692889) (not b!5692906) (not setNonEmpty!38103) (not b!5692907) (not b!5692916) (not b!5692897) (not b!5692903) (not b!5692895) (not b!5692918) (not b!5692919) (not b!5692914) (not b!5692915) (not b!5692901) (not b!5692909) (not b!5692917) (not b!5692905) (not b!5692902) (not b!5692904) (not b!5692908) (not b!5692899))
(check-sat)
(get-model)

(declare-fun d!1796728 () Bool)

(declare-fun choose!43029 (Int) Bool)

(assert (=> d!1796728 (= (Exists!2785 lambda!306698) (choose!43029 lambda!306698))))

(declare-fun bs!1327328 () Bool)

(assert (= bs!1327328 d!1796728))

(declare-fun m!6649744 () Bool)

(assert (=> bs!1327328 m!6649744))

(assert (=> b!5692905 d!1796728))

(declare-fun b!5693112 () Bool)

(declare-fun e!3502763 () Option!15694)

(declare-fun e!3502761 () Option!15694)

(assert (=> b!5693112 (= e!3502763 e!3502761)))

(declare-fun c!1002256 () Bool)

(assert (=> b!5693112 (= c!1002256 ((_ is Nil!63232) s!2326))))

(declare-fun b!5693113 () Bool)

(assert (=> b!5693113 (= e!3502761 None!15693)))

(declare-fun d!1796730 () Bool)

(declare-fun e!3502762 () Bool)

(assert (=> d!1796730 e!3502762))

(declare-fun res!2404206 () Bool)

(assert (=> d!1796730 (=> res!2404206 e!3502762)))

(declare-fun e!3502764 () Bool)

(assert (=> d!1796730 (= res!2404206 e!3502764)))

(declare-fun res!2404205 () Bool)

(assert (=> d!1796730 (=> (not res!2404205) (not e!3502764))))

(declare-fun lt!2271705 () Option!15694)

(assert (=> d!1796730 (= res!2404205 (isDefined!12397 lt!2271705))))

(assert (=> d!1796730 (= lt!2271705 e!3502763)))

(declare-fun c!1002255 () Bool)

(declare-fun e!3502760 () Bool)

(assert (=> d!1796730 (= c!1002255 e!3502760)))

(declare-fun res!2404204 () Bool)

(assert (=> d!1796730 (=> (not res!2404204) (not e!3502760))))

(assert (=> d!1796730 (= res!2404204 (matchR!7870 (regOne!31882 r!7292) Nil!63232))))

(assert (=> d!1796730 (validRegex!7421 (regOne!31882 r!7292))))

(assert (=> d!1796730 (= (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) Nil!63232 s!2326 s!2326) lt!2271705)))

(declare-fun b!5693114 () Bool)

(assert (=> b!5693114 (= e!3502762 (not (isDefined!12397 lt!2271705)))))

(declare-fun b!5693115 () Bool)

(declare-fun ++!13877 (List!63356 List!63356) List!63356)

(declare-fun get!21787 (Option!15694) tuple2!65564)

(assert (=> b!5693115 (= e!3502764 (= (++!13877 (_1!36085 (get!21787 lt!2271705)) (_2!36085 (get!21787 lt!2271705))) s!2326))))

(declare-fun b!5693116 () Bool)

(assert (=> b!5693116 (= e!3502763 (Some!15693 (tuple2!65565 Nil!63232 s!2326)))))

(declare-fun b!5693117 () Bool)

(declare-fun res!2404207 () Bool)

(assert (=> b!5693117 (=> (not res!2404207) (not e!3502764))))

(assert (=> b!5693117 (= res!2404207 (matchR!7870 (regOne!31882 r!7292) (_1!36085 (get!21787 lt!2271705))))))

(declare-fun b!5693118 () Bool)

(declare-fun lt!2271706 () Unit!156272)

(declare-fun lt!2271704 () Unit!156272)

(assert (=> b!5693118 (= lt!2271706 lt!2271704)))

(assert (=> b!5693118 (= (++!13877 (++!13877 Nil!63232 (Cons!63232 (h!69680 s!2326) Nil!63232)) (t!376674 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2046 (List!63356 C!31640 List!63356 List!63356) Unit!156272)

(assert (=> b!5693118 (= lt!2271704 (lemmaMoveElementToOtherListKeepsConcatEq!2046 Nil!63232 (h!69680 s!2326) (t!376674 s!2326) s!2326))))

(assert (=> b!5693118 (= e!3502761 (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) (++!13877 Nil!63232 (Cons!63232 (h!69680 s!2326) Nil!63232)) (t!376674 s!2326) s!2326))))

(declare-fun b!5693119 () Bool)

(declare-fun res!2404208 () Bool)

(assert (=> b!5693119 (=> (not res!2404208) (not e!3502764))))

(assert (=> b!5693119 (= res!2404208 (matchR!7870 (regTwo!31882 r!7292) (_2!36085 (get!21787 lt!2271705))))))

(declare-fun b!5693120 () Bool)

(assert (=> b!5693120 (= e!3502760 (matchR!7870 (regTwo!31882 r!7292) s!2326))))

(assert (= (and d!1796730 res!2404204) b!5693120))

(assert (= (and d!1796730 c!1002255) b!5693116))

(assert (= (and d!1796730 (not c!1002255)) b!5693112))

(assert (= (and b!5693112 c!1002256) b!5693113))

(assert (= (and b!5693112 (not c!1002256)) b!5693118))

(assert (= (and d!1796730 res!2404205) b!5693117))

(assert (= (and b!5693117 res!2404207) b!5693119))

(assert (= (and b!5693119 res!2404208) b!5693115))

(assert (= (and d!1796730 (not res!2404206)) b!5693114))

(declare-fun m!6649792 () Bool)

(assert (=> b!5693119 m!6649792))

(declare-fun m!6649794 () Bool)

(assert (=> b!5693119 m!6649794))

(declare-fun m!6649796 () Bool)

(assert (=> b!5693118 m!6649796))

(assert (=> b!5693118 m!6649796))

(declare-fun m!6649798 () Bool)

(assert (=> b!5693118 m!6649798))

(declare-fun m!6649800 () Bool)

(assert (=> b!5693118 m!6649800))

(assert (=> b!5693118 m!6649796))

(declare-fun m!6649802 () Bool)

(assert (=> b!5693118 m!6649802))

(assert (=> b!5693115 m!6649792))

(declare-fun m!6649804 () Bool)

(assert (=> b!5693115 m!6649804))

(declare-fun m!6649806 () Bool)

(assert (=> b!5693114 m!6649806))

(assert (=> d!1796730 m!6649806))

(declare-fun m!6649808 () Bool)

(assert (=> d!1796730 m!6649808))

(declare-fun m!6649810 () Bool)

(assert (=> d!1796730 m!6649810))

(assert (=> b!5693117 m!6649792))

(declare-fun m!6649812 () Bool)

(assert (=> b!5693117 m!6649812))

(declare-fun m!6649814 () Bool)

(assert (=> b!5693120 m!6649814))

(assert (=> b!5692905 d!1796730))

(declare-fun d!1796758 () Bool)

(assert (=> d!1796758 (= (Exists!2785 lambda!306697) (choose!43029 lambda!306697))))

(declare-fun bs!1327345 () Bool)

(assert (= bs!1327345 d!1796758))

(declare-fun m!6649816 () Bool)

(assert (=> bs!1327345 m!6649816))

(assert (=> b!5692905 d!1796758))

(declare-fun bs!1327351 () Bool)

(declare-fun d!1796760 () Bool)

(assert (= bs!1327351 (and d!1796760 b!5692905)))

(declare-fun lambda!306727 () Int)

(assert (=> bs!1327351 (= lambda!306727 lambda!306697)))

(assert (=> bs!1327351 (not (= lambda!306727 lambda!306698))))

(assert (=> d!1796760 true))

(assert (=> d!1796760 true))

(assert (=> d!1796760 true))

(assert (=> d!1796760 (= (isDefined!12397 (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) Nil!63232 s!2326 s!2326)) (Exists!2785 lambda!306727))))

(declare-fun lt!2271715 () Unit!156272)

(declare-fun choose!43031 (Regex!15685 Regex!15685 List!63356) Unit!156272)

(assert (=> d!1796760 (= lt!2271715 (choose!43031 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326))))

(assert (=> d!1796760 (validRegex!7421 (regOne!31882 r!7292))))

(assert (=> d!1796760 (= (lemmaFindConcatSeparationEquivalentToExists!1872 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326) lt!2271715)))

(declare-fun bs!1327355 () Bool)

(assert (= bs!1327355 d!1796760))

(declare-fun m!6649870 () Bool)

(assert (=> bs!1327355 m!6649870))

(assert (=> bs!1327355 m!6649570))

(assert (=> bs!1327355 m!6649570))

(assert (=> bs!1327355 m!6649572))

(assert (=> bs!1327355 m!6649810))

(declare-fun m!6649878 () Bool)

(assert (=> bs!1327355 m!6649878))

(assert (=> b!5692905 d!1796760))

(declare-fun bs!1327358 () Bool)

(declare-fun d!1796780 () Bool)

(assert (= bs!1327358 (and d!1796780 b!5692905)))

(declare-fun lambda!306732 () Int)

(assert (=> bs!1327358 (= lambda!306732 lambda!306697)))

(assert (=> bs!1327358 (not (= lambda!306732 lambda!306698))))

(declare-fun bs!1327359 () Bool)

(assert (= bs!1327359 (and d!1796780 d!1796760)))

(assert (=> bs!1327359 (= lambda!306732 lambda!306727)))

(assert (=> d!1796780 true))

(assert (=> d!1796780 true))

(assert (=> d!1796780 true))

(declare-fun lambda!306735 () Int)

(assert (=> bs!1327358 (not (= lambda!306735 lambda!306697))))

(assert (=> bs!1327358 (= lambda!306735 lambda!306698)))

(assert (=> bs!1327359 (not (= lambda!306735 lambda!306727))))

(declare-fun bs!1327360 () Bool)

(assert (= bs!1327360 d!1796780))

(assert (=> bs!1327360 (not (= lambda!306735 lambda!306732))))

(assert (=> d!1796780 true))

(assert (=> d!1796780 true))

(assert (=> d!1796780 true))

(assert (=> d!1796780 (= (Exists!2785 lambda!306732) (Exists!2785 lambda!306735))))

(declare-fun lt!2271721 () Unit!156272)

(declare-fun choose!43032 (Regex!15685 Regex!15685 List!63356) Unit!156272)

(assert (=> d!1796780 (= lt!2271721 (choose!43032 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326))))

(assert (=> d!1796780 (validRegex!7421 (regOne!31882 r!7292))))

(assert (=> d!1796780 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1414 (regOne!31882 r!7292) (regTwo!31882 r!7292) s!2326) lt!2271721)))

(declare-fun m!6649910 () Bool)

(assert (=> bs!1327360 m!6649910))

(declare-fun m!6649912 () Bool)

(assert (=> bs!1327360 m!6649912))

(declare-fun m!6649914 () Bool)

(assert (=> bs!1327360 m!6649914))

(assert (=> bs!1327360 m!6649810))

(assert (=> b!5692905 d!1796780))

(declare-fun d!1796794 () Bool)

(declare-fun isEmpty!35085 (Option!15694) Bool)

(assert (=> d!1796794 (= (isDefined!12397 (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) Nil!63232 s!2326 s!2326)) (not (isEmpty!35085 (findConcatSeparation!2108 (regOne!31882 r!7292) (regTwo!31882 r!7292) Nil!63232 s!2326 s!2326))))))

(declare-fun bs!1327362 () Bool)

(assert (= bs!1327362 d!1796794))

(assert (=> bs!1327362 m!6649570))

(declare-fun m!6649916 () Bool)

(assert (=> bs!1327362 m!6649916))

(assert (=> b!5692905 d!1796794))

(declare-fun bs!1327375 () Bool)

(declare-fun b!5693377 () Bool)

(assert (= bs!1327375 (and b!5693377 d!1796780)))

(declare-fun lambda!306744 () Int)

(assert (=> bs!1327375 (not (= lambda!306744 lambda!306735))))

(declare-fun bs!1327376 () Bool)

(assert (= bs!1327376 (and b!5693377 d!1796760)))

(assert (=> bs!1327376 (not (= lambda!306744 lambda!306727))))

(declare-fun bs!1327377 () Bool)

(assert (= bs!1327377 (and b!5693377 b!5692905)))

(assert (=> bs!1327377 (not (= lambda!306744 lambda!306698))))

(assert (=> bs!1327377 (not (= lambda!306744 lambda!306697))))

(assert (=> bs!1327375 (not (= lambda!306744 lambda!306732))))

(assert (=> b!5693377 true))

(assert (=> b!5693377 true))

(declare-fun bs!1327378 () Bool)

(declare-fun b!5693374 () Bool)

(assert (= bs!1327378 (and b!5693374 d!1796780)))

(declare-fun lambda!306745 () Int)

(assert (=> bs!1327378 (= lambda!306745 lambda!306735)))

(declare-fun bs!1327379 () Bool)

(assert (= bs!1327379 (and b!5693374 d!1796760)))

(assert (=> bs!1327379 (not (= lambda!306745 lambda!306727))))

(declare-fun bs!1327380 () Bool)

(assert (= bs!1327380 (and b!5693374 b!5693377)))

(assert (=> bs!1327380 (not (= lambda!306745 lambda!306744))))

(declare-fun bs!1327381 () Bool)

(assert (= bs!1327381 (and b!5693374 b!5692905)))

(assert (=> bs!1327381 (= lambda!306745 lambda!306698)))

(assert (=> bs!1327381 (not (= lambda!306745 lambda!306697))))

(assert (=> bs!1327378 (not (= lambda!306745 lambda!306732))))

(assert (=> b!5693374 true))

(assert (=> b!5693374 true))

(declare-fun e!3502897 () Bool)

(declare-fun call!433266 () Bool)

(assert (=> b!5693374 (= e!3502897 call!433266)))

(declare-fun b!5693375 () Bool)

(declare-fun e!3502903 () Bool)

(assert (=> b!5693375 (= e!3502903 (= s!2326 (Cons!63232 (c!1002203 r!7292) Nil!63232)))))

(declare-fun bm!433260 () Bool)

(declare-fun call!433265 () Bool)

(declare-fun isEmpty!35086 (List!63356) Bool)

(assert (=> bm!433260 (= call!433265 (isEmpty!35086 s!2326))))

(declare-fun b!5693376 () Bool)

(declare-fun e!3502901 () Bool)

(declare-fun e!3502899 () Bool)

(assert (=> b!5693376 (= e!3502901 e!3502899)))

(declare-fun res!2404280 () Bool)

(assert (=> b!5693376 (= res!2404280 (not ((_ is EmptyLang!15685) r!7292)))))

(assert (=> b!5693376 (=> (not res!2404280) (not e!3502899))))

(declare-fun d!1796796 () Bool)

(declare-fun c!1002324 () Bool)

(assert (=> d!1796796 (= c!1002324 ((_ is EmptyExpr!15685) r!7292))))

(assert (=> d!1796796 (= (matchRSpec!2788 r!7292 s!2326) e!3502901)))

(declare-fun e!3502902 () Bool)

(assert (=> b!5693377 (= e!3502902 call!433266)))

(declare-fun bm!433261 () Bool)

(declare-fun c!1002325 () Bool)

(assert (=> bm!433261 (= call!433266 (Exists!2785 (ite c!1002325 lambda!306744 lambda!306745)))))

(declare-fun b!5693378 () Bool)

(declare-fun c!1002326 () Bool)

(assert (=> b!5693378 (= c!1002326 ((_ is ElementMatch!15685) r!7292))))

(assert (=> b!5693378 (= e!3502899 e!3502903)))

(declare-fun b!5693379 () Bool)

(declare-fun e!3502900 () Bool)

(assert (=> b!5693379 (= e!3502900 e!3502897)))

(assert (=> b!5693379 (= c!1002325 ((_ is Star!15685) r!7292))))

(declare-fun b!5693380 () Bool)

(declare-fun e!3502898 () Bool)

(assert (=> b!5693380 (= e!3502898 (matchRSpec!2788 (regTwo!31883 r!7292) s!2326))))

(declare-fun b!5693381 () Bool)

(declare-fun c!1002323 () Bool)

(assert (=> b!5693381 (= c!1002323 ((_ is Union!15685) r!7292))))

(assert (=> b!5693381 (= e!3502903 e!3502900)))

(declare-fun b!5693382 () Bool)

(declare-fun res!2404279 () Bool)

(assert (=> b!5693382 (=> res!2404279 e!3502902)))

(assert (=> b!5693382 (= res!2404279 call!433265)))

(assert (=> b!5693382 (= e!3502897 e!3502902)))

(declare-fun b!5693383 () Bool)

(assert (=> b!5693383 (= e!3502901 call!433265)))

(declare-fun b!5693384 () Bool)

(assert (=> b!5693384 (= e!3502900 e!3502898)))

(declare-fun res!2404278 () Bool)

(assert (=> b!5693384 (= res!2404278 (matchRSpec!2788 (regOne!31883 r!7292) s!2326))))

(assert (=> b!5693384 (=> res!2404278 e!3502898)))

(assert (= (and d!1796796 c!1002324) b!5693383))

(assert (= (and d!1796796 (not c!1002324)) b!5693376))

(assert (= (and b!5693376 res!2404280) b!5693378))

(assert (= (and b!5693378 c!1002326) b!5693375))

(assert (= (and b!5693378 (not c!1002326)) b!5693381))

(assert (= (and b!5693381 c!1002323) b!5693384))

(assert (= (and b!5693381 (not c!1002323)) b!5693379))

(assert (= (and b!5693384 (not res!2404278)) b!5693380))

(assert (= (and b!5693379 c!1002325) b!5693382))

(assert (= (and b!5693379 (not c!1002325)) b!5693374))

(assert (= (and b!5693382 (not res!2404279)) b!5693377))

(assert (= (or b!5693377 b!5693374) bm!433261))

(assert (= (or b!5693383 b!5693382) bm!433260))

(declare-fun m!6649964 () Bool)

(assert (=> bm!433260 m!6649964))

(declare-fun m!6649966 () Bool)

(assert (=> bm!433261 m!6649966))

(declare-fun m!6649968 () Bool)

(assert (=> b!5693380 m!6649968))

(declare-fun m!6649970 () Bool)

(assert (=> b!5693384 m!6649970))

(assert (=> b!5692895 d!1796796))

(declare-fun b!5693413 () Bool)

(declare-fun res!2404302 () Bool)

(declare-fun e!3502923 () Bool)

(assert (=> b!5693413 (=> (not res!2404302) (not e!3502923))))

(declare-fun call!433269 () Bool)

(assert (=> b!5693413 (= res!2404302 (not call!433269))))

(declare-fun b!5693414 () Bool)

(declare-fun e!3502922 () Bool)

(declare-fun derivativeStep!4496 (Regex!15685 C!31640) Regex!15685)

(declare-fun head!12066 (List!63356) C!31640)

(declare-fun tail!11161 (List!63356) List!63356)

(assert (=> b!5693414 (= e!3502922 (matchR!7870 (derivativeStep!4496 r!7292 (head!12066 s!2326)) (tail!11161 s!2326)))))

(declare-fun b!5693415 () Bool)

(declare-fun e!3502920 () Bool)

(declare-fun lt!2271728 () Bool)

(assert (=> b!5693415 (= e!3502920 (= lt!2271728 call!433269))))

(declare-fun b!5693416 () Bool)

(declare-fun e!3502918 () Bool)

(assert (=> b!5693416 (= e!3502918 (not lt!2271728))))

(declare-fun b!5693417 () Bool)

(declare-fun res!2404299 () Bool)

(declare-fun e!3502924 () Bool)

(assert (=> b!5693417 (=> res!2404299 e!3502924)))

(assert (=> b!5693417 (= res!2404299 (not (isEmpty!35086 (tail!11161 s!2326))))))

(declare-fun b!5693418 () Bool)

(declare-fun res!2404297 () Bool)

(declare-fun e!3502921 () Bool)

(assert (=> b!5693418 (=> res!2404297 e!3502921)))

(assert (=> b!5693418 (= res!2404297 (not ((_ is ElementMatch!15685) r!7292)))))

(assert (=> b!5693418 (= e!3502918 e!3502921)))

(declare-fun b!5693419 () Bool)

(assert (=> b!5693419 (= e!3502920 e!3502918)))

(declare-fun c!1002335 () Bool)

(assert (=> b!5693419 (= c!1002335 ((_ is EmptyLang!15685) r!7292))))

(declare-fun b!5693420 () Bool)

(assert (=> b!5693420 (= e!3502922 (nullable!5717 r!7292))))

(declare-fun bm!433264 () Bool)

(assert (=> bm!433264 (= call!433269 (isEmpty!35086 s!2326))))

(declare-fun b!5693421 () Bool)

(assert (=> b!5693421 (= e!3502924 (not (= (head!12066 s!2326) (c!1002203 r!7292))))))

(declare-fun b!5693422 () Bool)

(declare-fun res!2404303 () Bool)

(assert (=> b!5693422 (=> res!2404303 e!3502921)))

(assert (=> b!5693422 (= res!2404303 e!3502923)))

(declare-fun res!2404301 () Bool)

(assert (=> b!5693422 (=> (not res!2404301) (not e!3502923))))

(assert (=> b!5693422 (= res!2404301 lt!2271728)))

(declare-fun b!5693423 () Bool)

(assert (=> b!5693423 (= e!3502923 (= (head!12066 s!2326) (c!1002203 r!7292)))))

(declare-fun b!5693424 () Bool)

(declare-fun e!3502919 () Bool)

(assert (=> b!5693424 (= e!3502921 e!3502919)))

(declare-fun res!2404298 () Bool)

(assert (=> b!5693424 (=> (not res!2404298) (not e!3502919))))

(assert (=> b!5693424 (= res!2404298 (not lt!2271728))))

(declare-fun b!5693425 () Bool)

(declare-fun res!2404304 () Bool)

(assert (=> b!5693425 (=> (not res!2404304) (not e!3502923))))

(assert (=> b!5693425 (= res!2404304 (isEmpty!35086 (tail!11161 s!2326)))))

(declare-fun b!5693426 () Bool)

(assert (=> b!5693426 (= e!3502919 e!3502924)))

(declare-fun res!2404300 () Bool)

(assert (=> b!5693426 (=> res!2404300 e!3502924)))

(assert (=> b!5693426 (= res!2404300 call!433269)))

(declare-fun d!1796818 () Bool)

(assert (=> d!1796818 e!3502920))

(declare-fun c!1002334 () Bool)

(assert (=> d!1796818 (= c!1002334 ((_ is EmptyExpr!15685) r!7292))))

(assert (=> d!1796818 (= lt!2271728 e!3502922)))

(declare-fun c!1002333 () Bool)

(assert (=> d!1796818 (= c!1002333 (isEmpty!35086 s!2326))))

(assert (=> d!1796818 (validRegex!7421 r!7292)))

(assert (=> d!1796818 (= (matchR!7870 r!7292 s!2326) lt!2271728)))

(assert (= (and d!1796818 c!1002333) b!5693420))

(assert (= (and d!1796818 (not c!1002333)) b!5693414))

(assert (= (and d!1796818 c!1002334) b!5693415))

(assert (= (and d!1796818 (not c!1002334)) b!5693419))

(assert (= (and b!5693419 c!1002335) b!5693416))

(assert (= (and b!5693419 (not c!1002335)) b!5693418))

(assert (= (and b!5693418 (not res!2404297)) b!5693422))

(assert (= (and b!5693422 res!2404301) b!5693413))

(assert (= (and b!5693413 res!2404302) b!5693425))

(assert (= (and b!5693425 res!2404304) b!5693423))

(assert (= (and b!5693422 (not res!2404303)) b!5693424))

(assert (= (and b!5693424 res!2404298) b!5693426))

(assert (= (and b!5693426 (not res!2404300)) b!5693417))

(assert (= (and b!5693417 (not res!2404299)) b!5693421))

(assert (= (or b!5693415 b!5693413 b!5693426) bm!433264))

(declare-fun m!6649972 () Bool)

(assert (=> b!5693420 m!6649972))

(assert (=> d!1796818 m!6649964))

(assert (=> d!1796818 m!6649638))

(declare-fun m!6649974 () Bool)

(assert (=> b!5693423 m!6649974))

(declare-fun m!6649976 () Bool)

(assert (=> b!5693417 m!6649976))

(assert (=> b!5693417 m!6649976))

(declare-fun m!6649978 () Bool)

(assert (=> b!5693417 m!6649978))

(assert (=> b!5693425 m!6649976))

(assert (=> b!5693425 m!6649976))

(assert (=> b!5693425 m!6649978))

(assert (=> b!5693421 m!6649974))

(assert (=> b!5693414 m!6649974))

(assert (=> b!5693414 m!6649974))

(declare-fun m!6649980 () Bool)

(assert (=> b!5693414 m!6649980))

(assert (=> b!5693414 m!6649976))

(assert (=> b!5693414 m!6649980))

(assert (=> b!5693414 m!6649976))

(declare-fun m!6649982 () Bool)

(assert (=> b!5693414 m!6649982))

(assert (=> bm!433264 m!6649964))

(assert (=> b!5692895 d!1796818))

(declare-fun d!1796820 () Bool)

(assert (=> d!1796820 (= (matchR!7870 r!7292 s!2326) (matchRSpec!2788 r!7292 s!2326))))

(declare-fun lt!2271731 () Unit!156272)

(declare-fun choose!43033 (Regex!15685 List!63356) Unit!156272)

(assert (=> d!1796820 (= lt!2271731 (choose!43033 r!7292 s!2326))))

(assert (=> d!1796820 (validRegex!7421 r!7292)))

(assert (=> d!1796820 (= (mainMatchTheorem!2788 r!7292 s!2326) lt!2271731)))

(declare-fun bs!1327382 () Bool)

(assert (= bs!1327382 d!1796820))

(assert (=> bs!1327382 m!6649652))

(assert (=> bs!1327382 m!6649650))

(declare-fun m!6649984 () Bool)

(assert (=> bs!1327382 m!6649984))

(assert (=> bs!1327382 m!6649638))

(assert (=> b!5692895 d!1796820))

(declare-fun bm!433271 () Bool)

(declare-fun call!433277 () Bool)

(declare-fun c!1002340 () Bool)

(assert (=> bm!433271 (= call!433277 (validRegex!7421 (ite c!1002340 (regOne!31883 r!7292) (regOne!31882 r!7292))))))

(declare-fun b!5693445 () Bool)

(declare-fun e!3502939 () Bool)

(declare-fun e!3502944 () Bool)

(assert (=> b!5693445 (= e!3502939 e!3502944)))

(declare-fun res!2404319 () Bool)

(assert (=> b!5693445 (= res!2404319 (not (nullable!5717 (reg!16014 r!7292))))))

(assert (=> b!5693445 (=> (not res!2404319) (not e!3502944))))

(declare-fun d!1796822 () Bool)

(declare-fun res!2404317 () Bool)

(declare-fun e!3502941 () Bool)

(assert (=> d!1796822 (=> res!2404317 e!3502941)))

(assert (=> d!1796822 (= res!2404317 ((_ is ElementMatch!15685) r!7292))))

(assert (=> d!1796822 (= (validRegex!7421 r!7292) e!3502941)))

(declare-fun b!5693446 () Bool)

(declare-fun call!433276 () Bool)

(assert (=> b!5693446 (= e!3502944 call!433276)))

(declare-fun b!5693447 () Bool)

(declare-fun e!3502940 () Bool)

(assert (=> b!5693447 (= e!3502939 e!3502940)))

(assert (=> b!5693447 (= c!1002340 ((_ is Union!15685) r!7292))))

(declare-fun b!5693448 () Bool)

(assert (=> b!5693448 (= e!3502941 e!3502939)))

(declare-fun c!1002341 () Bool)

(assert (=> b!5693448 (= c!1002341 ((_ is Star!15685) r!7292))))

(declare-fun b!5693449 () Bool)

(declare-fun res!2404316 () Bool)

(declare-fun e!3502942 () Bool)

(assert (=> b!5693449 (=> res!2404316 e!3502942)))

(assert (=> b!5693449 (= res!2404316 (not ((_ is Concat!24530) r!7292)))))

(assert (=> b!5693449 (= e!3502940 e!3502942)))

(declare-fun b!5693450 () Bool)

(declare-fun res!2404318 () Bool)

(declare-fun e!3502943 () Bool)

(assert (=> b!5693450 (=> (not res!2404318) (not e!3502943))))

(assert (=> b!5693450 (= res!2404318 call!433277)))

(assert (=> b!5693450 (= e!3502940 e!3502943)))

(declare-fun b!5693451 () Bool)

(declare-fun e!3502945 () Bool)

(assert (=> b!5693451 (= e!3502942 e!3502945)))

(declare-fun res!2404315 () Bool)

(assert (=> b!5693451 (=> (not res!2404315) (not e!3502945))))

(assert (=> b!5693451 (= res!2404315 call!433277)))

(declare-fun bm!433272 () Bool)

(declare-fun call!433278 () Bool)

(assert (=> bm!433272 (= call!433278 call!433276)))

(declare-fun bm!433273 () Bool)

(assert (=> bm!433273 (= call!433276 (validRegex!7421 (ite c!1002341 (reg!16014 r!7292) (ite c!1002340 (regTwo!31883 r!7292) (regTwo!31882 r!7292)))))))

(declare-fun b!5693452 () Bool)

(assert (=> b!5693452 (= e!3502943 call!433278)))

(declare-fun b!5693453 () Bool)

(assert (=> b!5693453 (= e!3502945 call!433278)))

(assert (= (and d!1796822 (not res!2404317)) b!5693448))

(assert (= (and b!5693448 c!1002341) b!5693445))

(assert (= (and b!5693448 (not c!1002341)) b!5693447))

(assert (= (and b!5693445 res!2404319) b!5693446))

(assert (= (and b!5693447 c!1002340) b!5693450))

(assert (= (and b!5693447 (not c!1002340)) b!5693449))

(assert (= (and b!5693450 res!2404318) b!5693452))

(assert (= (and b!5693449 (not res!2404316)) b!5693451))

(assert (= (and b!5693451 res!2404315) b!5693453))

(assert (= (or b!5693452 b!5693453) bm!433272))

(assert (= (or b!5693450 b!5693451) bm!433271))

(assert (= (or b!5693446 bm!433272) bm!433273))

(declare-fun m!6649986 () Bool)

(assert (=> bm!433271 m!6649986))

(declare-fun m!6649988 () Bool)

(assert (=> b!5693445 m!6649988))

(declare-fun m!6649990 () Bool)

(assert (=> bm!433273 m!6649990))

(assert (=> start!587036 d!1796822))

(declare-fun d!1796824 () Bool)

(declare-fun lt!2271734 () Regex!15685)

(assert (=> d!1796824 (validRegex!7421 lt!2271734)))

(assert (=> d!1796824 (= lt!2271734 (generalisedUnion!1548 (unfocusZipperList!1113 (Cons!63231 lt!2271646 Nil!63231))))))

(assert (=> d!1796824 (= (unfocusZipper!1427 (Cons!63231 lt!2271646 Nil!63231)) lt!2271734)))

(declare-fun bs!1327383 () Bool)

(assert (= bs!1327383 d!1796824))

(declare-fun m!6649992 () Bool)

(assert (=> bs!1327383 m!6649992))

(declare-fun m!6649994 () Bool)

(assert (=> bs!1327383 m!6649994))

(assert (=> bs!1327383 m!6649994))

(declare-fun m!6649996 () Bool)

(assert (=> bs!1327383 m!6649996))

(assert (=> b!5692906 d!1796824))

(declare-fun d!1796826 () Bool)

(declare-fun lambda!306748 () Int)

(declare-fun forall!14826 (List!63354 Int) Bool)

(assert (=> d!1796826 (= (inv!82459 (h!69679 zl!343)) (forall!14826 (exprs!5569 (h!69679 zl!343)) lambda!306748))))

(declare-fun bs!1327384 () Bool)

(assert (= bs!1327384 d!1796826))

(declare-fun m!6649998 () Bool)

(assert (=> bs!1327384 m!6649998))

(assert (=> b!5692904 d!1796826))

(declare-fun d!1796828 () Bool)

(declare-fun lt!2271735 () Regex!15685)

(assert (=> d!1796828 (validRegex!7421 lt!2271735)))

(assert (=> d!1796828 (= lt!2271735 (generalisedUnion!1548 (unfocusZipperList!1113 (Cons!63231 lt!2271648 Nil!63231))))))

(assert (=> d!1796828 (= (unfocusZipper!1427 (Cons!63231 lt!2271648 Nil!63231)) lt!2271735)))

(declare-fun bs!1327385 () Bool)

(assert (= bs!1327385 d!1796828))

(declare-fun m!6650000 () Bool)

(assert (=> bs!1327385 m!6650000))

(declare-fun m!6650002 () Bool)

(assert (=> bs!1327385 m!6650002))

(assert (=> bs!1327385 m!6650002))

(declare-fun m!6650004 () Bool)

(assert (=> bs!1327385 m!6650004))

(assert (=> b!5692897 d!1796828))

(declare-fun bs!1327386 () Bool)

(declare-fun d!1796830 () Bool)

(assert (= bs!1327386 (and d!1796830 d!1796826)))

(declare-fun lambda!306751 () Int)

(assert (=> bs!1327386 (= lambda!306751 lambda!306748)))

(declare-fun e!3502963 () Bool)

(assert (=> d!1796830 e!3502963))

(declare-fun res!2404325 () Bool)

(assert (=> d!1796830 (=> (not res!2404325) (not e!3502963))))

(declare-fun lt!2271738 () Regex!15685)

(assert (=> d!1796830 (= res!2404325 (validRegex!7421 lt!2271738))))

(declare-fun e!3502962 () Regex!15685)

(assert (=> d!1796830 (= lt!2271738 e!3502962)))

(declare-fun c!1002350 () Bool)

(declare-fun e!3502960 () Bool)

(assert (=> d!1796830 (= c!1002350 e!3502960)))

(declare-fun res!2404324 () Bool)

(assert (=> d!1796830 (=> (not res!2404324) (not e!3502960))))

(assert (=> d!1796830 (= res!2404324 ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343))))))

(assert (=> d!1796830 (forall!14826 (exprs!5569 (h!69679 zl!343)) lambda!306751)))

(assert (=> d!1796830 (= (generalisedConcat!1300 (exprs!5569 (h!69679 zl!343))) lt!2271738)))

(declare-fun b!5693474 () Bool)

(declare-fun e!3502958 () Bool)

(declare-fun isConcat!724 (Regex!15685) Bool)

(assert (=> b!5693474 (= e!3502958 (isConcat!724 lt!2271738))))

(declare-fun b!5693475 () Bool)

(declare-fun head!12067 (List!63354) Regex!15685)

(assert (=> b!5693475 (= e!3502958 (= lt!2271738 (head!12067 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5693476 () Bool)

(declare-fun e!3502961 () Regex!15685)

(assert (=> b!5693476 (= e!3502962 e!3502961)))

(declare-fun c!1002352 () Bool)

(assert (=> b!5693476 (= c!1002352 ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343))))))

(declare-fun b!5693477 () Bool)

(declare-fun e!3502959 () Bool)

(assert (=> b!5693477 (= e!3502963 e!3502959)))

(declare-fun c!1002353 () Bool)

(assert (=> b!5693477 (= c!1002353 (isEmpty!35081 (exprs!5569 (h!69679 zl!343))))))

(declare-fun b!5693478 () Bool)

(assert (=> b!5693478 (= e!3502962 (h!69678 (exprs!5569 (h!69679 zl!343))))))

(declare-fun b!5693479 () Bool)

(declare-fun isEmptyExpr!1201 (Regex!15685) Bool)

(assert (=> b!5693479 (= e!3502959 (isEmptyExpr!1201 lt!2271738))))

(declare-fun b!5693480 () Bool)

(assert (=> b!5693480 (= e!3502960 (isEmpty!35081 (t!376672 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5693481 () Bool)

(assert (=> b!5693481 (= e!3502961 (Concat!24530 (h!69678 (exprs!5569 (h!69679 zl!343))) (generalisedConcat!1300 (t!376672 (exprs!5569 (h!69679 zl!343))))))))

(declare-fun b!5693482 () Bool)

(assert (=> b!5693482 (= e!3502959 e!3502958)))

(declare-fun c!1002351 () Bool)

(declare-fun tail!11162 (List!63354) List!63354)

(assert (=> b!5693482 (= c!1002351 (isEmpty!35081 (tail!11162 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5693483 () Bool)

(assert (=> b!5693483 (= e!3502961 EmptyExpr!15685)))

(assert (= (and d!1796830 res!2404324) b!5693480))

(assert (= (and d!1796830 c!1002350) b!5693478))

(assert (= (and d!1796830 (not c!1002350)) b!5693476))

(assert (= (and b!5693476 c!1002352) b!5693481))

(assert (= (and b!5693476 (not c!1002352)) b!5693483))

(assert (= (and d!1796830 res!2404325) b!5693477))

(assert (= (and b!5693477 c!1002353) b!5693479))

(assert (= (and b!5693477 (not c!1002353)) b!5693482))

(assert (= (and b!5693482 c!1002351) b!5693475))

(assert (= (and b!5693482 (not c!1002351)) b!5693474))

(declare-fun m!6650006 () Bool)

(assert (=> b!5693475 m!6650006))

(declare-fun m!6650008 () Bool)

(assert (=> b!5693481 m!6650008))

(declare-fun m!6650010 () Bool)

(assert (=> b!5693482 m!6650010))

(assert (=> b!5693482 m!6650010))

(declare-fun m!6650012 () Bool)

(assert (=> b!5693482 m!6650012))

(declare-fun m!6650014 () Bool)

(assert (=> b!5693477 m!6650014))

(declare-fun m!6650016 () Bool)

(assert (=> b!5693479 m!6650016))

(assert (=> b!5693480 m!6649568))

(declare-fun m!6650018 () Bool)

(assert (=> d!1796830 m!6650018))

(declare-fun m!6650020 () Bool)

(assert (=> d!1796830 m!6650020))

(declare-fun m!6650022 () Bool)

(assert (=> b!5693474 m!6650022))

(assert (=> b!5692908 d!1796830))

(declare-fun d!1796832 () Bool)

(declare-fun lt!2271739 () Regex!15685)

(assert (=> d!1796832 (validRegex!7421 lt!2271739)))

(assert (=> d!1796832 (= lt!2271739 (generalisedUnion!1548 (unfocusZipperList!1113 zl!343)))))

(assert (=> d!1796832 (= (unfocusZipper!1427 zl!343) lt!2271739)))

(declare-fun bs!1327387 () Bool)

(assert (= bs!1327387 d!1796832))

(declare-fun m!6650024 () Bool)

(assert (=> bs!1327387 m!6650024))

(assert (=> bs!1327387 m!6649564))

(assert (=> bs!1327387 m!6649564))

(assert (=> bs!1327387 m!6649566))

(assert (=> b!5692917 d!1796832))

(declare-fun bs!1327388 () Bool)

(declare-fun d!1796834 () Bool)

(assert (= bs!1327388 (and d!1796834 d!1796826)))

(declare-fun lambda!306752 () Int)

(assert (=> bs!1327388 (= lambda!306752 lambda!306748)))

(declare-fun bs!1327389 () Bool)

(assert (= bs!1327389 (and d!1796834 d!1796830)))

(assert (=> bs!1327389 (= lambda!306752 lambda!306751)))

(assert (=> d!1796834 (= (inv!82459 setElem!38103) (forall!14826 (exprs!5569 setElem!38103) lambda!306752))))

(declare-fun bs!1327390 () Bool)

(assert (= bs!1327390 d!1796834))

(declare-fun m!6650026 () Bool)

(assert (=> bs!1327390 m!6650026))

(assert (=> setNonEmpty!38103 d!1796834))

(declare-fun d!1796836 () Bool)

(declare-fun e!3502966 () Bool)

(assert (=> d!1796836 e!3502966))

(declare-fun res!2404328 () Bool)

(assert (=> d!1796836 (=> (not res!2404328) (not e!3502966))))

(declare-fun lt!2271742 () List!63355)

(declare-fun noDuplicate!1623 (List!63355) Bool)

(assert (=> d!1796836 (= res!2404328 (noDuplicate!1623 lt!2271742))))

(declare-fun choose!43034 ((InoxSet Context!10138)) List!63355)

(assert (=> d!1796836 (= lt!2271742 (choose!43034 z!1189))))

(assert (=> d!1796836 (= (toList!9469 z!1189) lt!2271742)))

(declare-fun b!5693486 () Bool)

(declare-fun content!11460 (List!63355) (InoxSet Context!10138))

(assert (=> b!5693486 (= e!3502966 (= (content!11460 lt!2271742) z!1189))))

(assert (= (and d!1796836 res!2404328) b!5693486))

(declare-fun m!6650028 () Bool)

(assert (=> d!1796836 m!6650028))

(declare-fun m!6650030 () Bool)

(assert (=> d!1796836 m!6650030))

(declare-fun m!6650032 () Bool)

(assert (=> b!5693486 m!6650032))

(assert (=> b!5692896 d!1796836))

(declare-fun e!3502969 () Bool)

(declare-fun d!1796838 () Bool)

(assert (=> d!1796838 (= (matchZipper!1823 ((_ map or) lt!2271640 lt!2271659) (t!376674 s!2326)) e!3502969)))

(declare-fun res!2404331 () Bool)

(assert (=> d!1796838 (=> res!2404331 e!3502969)))

(assert (=> d!1796838 (= res!2404331 (matchZipper!1823 lt!2271640 (t!376674 s!2326)))))

(declare-fun lt!2271745 () Unit!156272)

(declare-fun choose!43035 ((InoxSet Context!10138) (InoxSet Context!10138) List!63356) Unit!156272)

(assert (=> d!1796838 (= lt!2271745 (choose!43035 lt!2271640 lt!2271659 (t!376674 s!2326)))))

(assert (=> d!1796838 (= (lemmaZipperConcatMatchesSameAsBothZippers!710 lt!2271640 lt!2271659 (t!376674 s!2326)) lt!2271745)))

(declare-fun b!5693489 () Bool)

(assert (=> b!5693489 (= e!3502969 (matchZipper!1823 lt!2271659 (t!376674 s!2326)))))

(assert (= (and d!1796838 (not res!2404331)) b!5693489))

(assert (=> d!1796838 m!6649636))

(assert (=> d!1796838 m!6649634))

(declare-fun m!6650034 () Bool)

(assert (=> d!1796838 m!6650034))

(assert (=> b!5693489 m!6649610))

(assert (=> b!5692907 d!1796838))

(declare-fun d!1796840 () Bool)

(declare-fun c!1002356 () Bool)

(assert (=> d!1796840 (= c!1002356 (isEmpty!35086 (t!376674 s!2326)))))

(declare-fun e!3502972 () Bool)

(assert (=> d!1796840 (= (matchZipper!1823 lt!2271640 (t!376674 s!2326)) e!3502972)))

(declare-fun b!5693494 () Bool)

(declare-fun nullableZipper!1643 ((InoxSet Context!10138)) Bool)

(assert (=> b!5693494 (= e!3502972 (nullableZipper!1643 lt!2271640))))

(declare-fun b!5693495 () Bool)

(assert (=> b!5693495 (= e!3502972 (matchZipper!1823 (derivationStepZipper!1768 lt!2271640 (head!12066 (t!376674 s!2326))) (tail!11161 (t!376674 s!2326))))))

(assert (= (and d!1796840 c!1002356) b!5693494))

(assert (= (and d!1796840 (not c!1002356)) b!5693495))

(declare-fun m!6650036 () Bool)

(assert (=> d!1796840 m!6650036))

(declare-fun m!6650038 () Bool)

(assert (=> b!5693494 m!6650038))

(declare-fun m!6650040 () Bool)

(assert (=> b!5693495 m!6650040))

(assert (=> b!5693495 m!6650040))

(declare-fun m!6650042 () Bool)

(assert (=> b!5693495 m!6650042))

(declare-fun m!6650044 () Bool)

(assert (=> b!5693495 m!6650044))

(assert (=> b!5693495 m!6650042))

(assert (=> b!5693495 m!6650044))

(declare-fun m!6650046 () Bool)

(assert (=> b!5693495 m!6650046))

(assert (=> b!5692907 d!1796840))

(declare-fun d!1796842 () Bool)

(declare-fun c!1002357 () Bool)

(assert (=> d!1796842 (= c!1002357 (isEmpty!35086 (t!376674 s!2326)))))

(declare-fun e!3502973 () Bool)

(assert (=> d!1796842 (= (matchZipper!1823 ((_ map or) lt!2271640 lt!2271659) (t!376674 s!2326)) e!3502973)))

(declare-fun b!5693496 () Bool)

(assert (=> b!5693496 (= e!3502973 (nullableZipper!1643 ((_ map or) lt!2271640 lt!2271659)))))

(declare-fun b!5693497 () Bool)

(assert (=> b!5693497 (= e!3502973 (matchZipper!1823 (derivationStepZipper!1768 ((_ map or) lt!2271640 lt!2271659) (head!12066 (t!376674 s!2326))) (tail!11161 (t!376674 s!2326))))))

(assert (= (and d!1796842 c!1002357) b!5693496))

(assert (= (and d!1796842 (not c!1002357)) b!5693497))

(assert (=> d!1796842 m!6650036))

(declare-fun m!6650048 () Bool)

(assert (=> b!5693496 m!6650048))

(assert (=> b!5693497 m!6650040))

(assert (=> b!5693497 m!6650040))

(declare-fun m!6650050 () Bool)

(assert (=> b!5693497 m!6650050))

(assert (=> b!5693497 m!6650044))

(assert (=> b!5693497 m!6650050))

(assert (=> b!5693497 m!6650044))

(declare-fun m!6650052 () Bool)

(assert (=> b!5693497 m!6650052))

(assert (=> b!5692907 d!1796842))

(declare-fun b!5693521 () Bool)

(declare-fun c!1002369 () Bool)

(declare-fun e!3502986 () Bool)

(assert (=> b!5693521 (= c!1002369 e!3502986)))

(declare-fun res!2404334 () Bool)

(assert (=> b!5693521 (=> (not res!2404334) (not e!3502986))))

(assert (=> b!5693521 (= res!2404334 ((_ is Concat!24530) (reg!16014 (regOne!31882 r!7292))))))

(declare-fun e!3502989 () (InoxSet Context!10138))

(declare-fun e!3502990 () (InoxSet Context!10138))

(assert (=> b!5693521 (= e!3502989 e!3502990)))

(declare-fun b!5693522 () Bool)

(declare-fun e!3502988 () (InoxSet Context!10138))

(assert (=> b!5693522 (= e!3502988 (store ((as const (Array Context!10138 Bool)) false) lt!2271646 true))))

(declare-fun c!1002371 () Bool)

(declare-fun call!433295 () List!63354)

(declare-fun bm!433286 () Bool)

(declare-fun call!433296 () (InoxSet Context!10138))

(assert (=> bm!433286 (= call!433296 (derivationStepZipperDown!1027 (ite c!1002371 (regTwo!31883 (reg!16014 (regOne!31882 r!7292))) (regOne!31882 (reg!16014 (regOne!31882 r!7292)))) (ite c!1002371 lt!2271646 (Context!10139 call!433295)) (h!69680 s!2326)))))

(declare-fun b!5693523 () Bool)

(declare-fun e!3502991 () (InoxSet Context!10138))

(declare-fun call!433292 () (InoxSet Context!10138))

(assert (=> b!5693523 (= e!3502991 call!433292)))

(declare-fun bm!433287 () Bool)

(declare-fun call!433294 () (InoxSet Context!10138))

(assert (=> bm!433287 (= call!433292 call!433294)))

(declare-fun b!5693524 () Bool)

(assert (=> b!5693524 (= e!3502990 e!3502991)))

(declare-fun c!1002370 () Bool)

(assert (=> b!5693524 (= c!1002370 ((_ is Concat!24530) (reg!16014 (regOne!31882 r!7292))))))

(declare-fun b!5693525 () Bool)

(declare-fun c!1002372 () Bool)

(assert (=> b!5693525 (= c!1002372 ((_ is Star!15685) (reg!16014 (regOne!31882 r!7292))))))

(declare-fun e!3502987 () (InoxSet Context!10138))

(assert (=> b!5693525 (= e!3502991 e!3502987)))

(declare-fun d!1796844 () Bool)

(declare-fun c!1002368 () Bool)

(assert (=> d!1796844 (= c!1002368 (and ((_ is ElementMatch!15685) (reg!16014 (regOne!31882 r!7292))) (= (c!1002203 (reg!16014 (regOne!31882 r!7292))) (h!69680 s!2326))))))

(assert (=> d!1796844 (= (derivationStepZipperDown!1027 (reg!16014 (regOne!31882 r!7292)) lt!2271646 (h!69680 s!2326)) e!3502988)))

(declare-fun b!5693520 () Bool)

(declare-fun call!433291 () (InoxSet Context!10138))

(assert (=> b!5693520 (= e!3502989 ((_ map or) call!433291 call!433296))))

(declare-fun b!5693526 () Bool)

(assert (=> b!5693526 (= e!3502987 ((as const (Array Context!10138 Bool)) false))))

(declare-fun bm!433288 () Bool)

(declare-fun call!433293 () List!63354)

(assert (=> bm!433288 (= call!433293 call!433295)))

(declare-fun b!5693527 () Bool)

(assert (=> b!5693527 (= e!3502990 ((_ map or) call!433296 call!433294))))

(declare-fun b!5693528 () Bool)

(assert (=> b!5693528 (= e!3502987 call!433292)))

(declare-fun bm!433289 () Bool)

(assert (=> bm!433289 (= call!433294 call!433291)))

(declare-fun b!5693529 () Bool)

(assert (=> b!5693529 (= e!3502986 (nullable!5717 (regOne!31882 (reg!16014 (regOne!31882 r!7292)))))))

(declare-fun bm!433290 () Bool)

(declare-fun $colon$colon!1710 (List!63354 Regex!15685) List!63354)

(assert (=> bm!433290 (= call!433295 ($colon$colon!1710 (exprs!5569 lt!2271646) (ite (or c!1002369 c!1002370) (regTwo!31882 (reg!16014 (regOne!31882 r!7292))) (reg!16014 (regOne!31882 r!7292)))))))

(declare-fun bm!433291 () Bool)

(assert (=> bm!433291 (= call!433291 (derivationStepZipperDown!1027 (ite c!1002371 (regOne!31883 (reg!16014 (regOne!31882 r!7292))) (ite c!1002369 (regTwo!31882 (reg!16014 (regOne!31882 r!7292))) (ite c!1002370 (regOne!31882 (reg!16014 (regOne!31882 r!7292))) (reg!16014 (reg!16014 (regOne!31882 r!7292)))))) (ite (or c!1002371 c!1002369) lt!2271646 (Context!10139 call!433293)) (h!69680 s!2326)))))

(declare-fun b!5693530 () Bool)

(assert (=> b!5693530 (= e!3502988 e!3502989)))

(assert (=> b!5693530 (= c!1002371 ((_ is Union!15685) (reg!16014 (regOne!31882 r!7292))))))

(assert (= (and d!1796844 c!1002368) b!5693522))

(assert (= (and d!1796844 (not c!1002368)) b!5693530))

(assert (= (and b!5693530 c!1002371) b!5693520))

(assert (= (and b!5693530 (not c!1002371)) b!5693521))

(assert (= (and b!5693521 res!2404334) b!5693529))

(assert (= (and b!5693521 c!1002369) b!5693527))

(assert (= (and b!5693521 (not c!1002369)) b!5693524))

(assert (= (and b!5693524 c!1002370) b!5693523))

(assert (= (and b!5693524 (not c!1002370)) b!5693525))

(assert (= (and b!5693525 c!1002372) b!5693528))

(assert (= (and b!5693525 (not c!1002372)) b!5693526))

(assert (= (or b!5693523 b!5693528) bm!433288))

(assert (= (or b!5693523 b!5693528) bm!433287))

(assert (= (or b!5693527 bm!433288) bm!433290))

(assert (= (or b!5693527 bm!433287) bm!433289))

(assert (= (or b!5693520 b!5693527) bm!433286))

(assert (= (or b!5693520 bm!433289) bm!433291))

(declare-fun m!6650054 () Bool)

(assert (=> bm!433286 m!6650054))

(declare-fun m!6650056 () Bool)

(assert (=> bm!433291 m!6650056))

(declare-fun m!6650058 () Bool)

(assert (=> bm!433290 m!6650058))

(declare-fun m!6650060 () Bool)

(assert (=> b!5693529 m!6650060))

(assert (=> b!5693522 m!6649592))

(assert (=> b!5692919 d!1796844))

(declare-fun bs!1327391 () Bool)

(declare-fun d!1796846 () Bool)

(assert (= bs!1327391 (and d!1796846 d!1796826)))

(declare-fun lambda!306755 () Int)

(assert (=> bs!1327391 (= lambda!306755 lambda!306748)))

(declare-fun bs!1327392 () Bool)

(assert (= bs!1327392 (and d!1796846 d!1796830)))

(assert (=> bs!1327392 (= lambda!306755 lambda!306751)))

(declare-fun bs!1327393 () Bool)

(assert (= bs!1327393 (and d!1796846 d!1796834)))

(assert (=> bs!1327393 (= lambda!306755 lambda!306752)))

(declare-fun b!5693551 () Bool)

(declare-fun e!3503005 () Regex!15685)

(assert (=> b!5693551 (= e!3503005 (Union!15685 (h!69678 (unfocusZipperList!1113 zl!343)) (generalisedUnion!1548 (t!376672 (unfocusZipperList!1113 zl!343)))))))

(declare-fun b!5693552 () Bool)

(declare-fun e!3503009 () Bool)

(declare-fun e!3503006 () Bool)

(assert (=> b!5693552 (= e!3503009 e!3503006)))

(declare-fun c!1002382 () Bool)

(assert (=> b!5693552 (= c!1002382 (isEmpty!35081 (tail!11162 (unfocusZipperList!1113 zl!343))))))

(declare-fun b!5693553 () Bool)

(declare-fun e!3503007 () Bool)

(assert (=> b!5693553 (= e!3503007 (isEmpty!35081 (t!376672 (unfocusZipperList!1113 zl!343))))))

(declare-fun b!5693554 () Bool)

(declare-fun lt!2271748 () Regex!15685)

(declare-fun isUnion!642 (Regex!15685) Bool)

(assert (=> b!5693554 (= e!3503006 (isUnion!642 lt!2271748))))

(declare-fun b!5693555 () Bool)

(declare-fun e!3503004 () Regex!15685)

(assert (=> b!5693555 (= e!3503004 (h!69678 (unfocusZipperList!1113 zl!343)))))

(declare-fun b!5693556 () Bool)

(assert (=> b!5693556 (= e!3503006 (= lt!2271748 (head!12067 (unfocusZipperList!1113 zl!343))))))

(declare-fun e!3503008 () Bool)

(assert (=> d!1796846 e!3503008))

(declare-fun res!2404340 () Bool)

(assert (=> d!1796846 (=> (not res!2404340) (not e!3503008))))

(assert (=> d!1796846 (= res!2404340 (validRegex!7421 lt!2271748))))

(assert (=> d!1796846 (= lt!2271748 e!3503004)))

(declare-fun c!1002384 () Bool)

(assert (=> d!1796846 (= c!1002384 e!3503007)))

(declare-fun res!2404339 () Bool)

(assert (=> d!1796846 (=> (not res!2404339) (not e!3503007))))

(assert (=> d!1796846 (= res!2404339 ((_ is Cons!63230) (unfocusZipperList!1113 zl!343)))))

(assert (=> d!1796846 (forall!14826 (unfocusZipperList!1113 zl!343) lambda!306755)))

(assert (=> d!1796846 (= (generalisedUnion!1548 (unfocusZipperList!1113 zl!343)) lt!2271748)))

(declare-fun b!5693557 () Bool)

(declare-fun isEmptyLang!1212 (Regex!15685) Bool)

(assert (=> b!5693557 (= e!3503009 (isEmptyLang!1212 lt!2271748))))

(declare-fun b!5693558 () Bool)

(assert (=> b!5693558 (= e!3503008 e!3503009)))

(declare-fun c!1002381 () Bool)

(assert (=> b!5693558 (= c!1002381 (isEmpty!35081 (unfocusZipperList!1113 zl!343)))))

(declare-fun b!5693559 () Bool)

(assert (=> b!5693559 (= e!3503004 e!3503005)))

(declare-fun c!1002383 () Bool)

(assert (=> b!5693559 (= c!1002383 ((_ is Cons!63230) (unfocusZipperList!1113 zl!343)))))

(declare-fun b!5693560 () Bool)

(assert (=> b!5693560 (= e!3503005 EmptyLang!15685)))

(assert (= (and d!1796846 res!2404339) b!5693553))

(assert (= (and d!1796846 c!1002384) b!5693555))

(assert (= (and d!1796846 (not c!1002384)) b!5693559))

(assert (= (and b!5693559 c!1002383) b!5693551))

(assert (= (and b!5693559 (not c!1002383)) b!5693560))

(assert (= (and d!1796846 res!2404340) b!5693558))

(assert (= (and b!5693558 c!1002381) b!5693557))

(assert (= (and b!5693558 (not c!1002381)) b!5693552))

(assert (= (and b!5693552 c!1002382) b!5693556))

(assert (= (and b!5693552 (not c!1002382)) b!5693554))

(declare-fun m!6650062 () Bool)

(assert (=> b!5693551 m!6650062))

(declare-fun m!6650064 () Bool)

(assert (=> b!5693557 m!6650064))

(assert (=> b!5693556 m!6649564))

(declare-fun m!6650066 () Bool)

(assert (=> b!5693556 m!6650066))

(assert (=> b!5693552 m!6649564))

(declare-fun m!6650068 () Bool)

(assert (=> b!5693552 m!6650068))

(assert (=> b!5693552 m!6650068))

(declare-fun m!6650070 () Bool)

(assert (=> b!5693552 m!6650070))

(declare-fun m!6650072 () Bool)

(assert (=> b!5693553 m!6650072))

(assert (=> b!5693558 m!6649564))

(declare-fun m!6650074 () Bool)

(assert (=> b!5693558 m!6650074))

(declare-fun m!6650076 () Bool)

(assert (=> d!1796846 m!6650076))

(assert (=> d!1796846 m!6649564))

(declare-fun m!6650078 () Bool)

(assert (=> d!1796846 m!6650078))

(declare-fun m!6650080 () Bool)

(assert (=> b!5693554 m!6650080))

(assert (=> b!5692889 d!1796846))

(declare-fun bs!1327394 () Bool)

(declare-fun d!1796848 () Bool)

(assert (= bs!1327394 (and d!1796848 d!1796826)))

(declare-fun lambda!306758 () Int)

(assert (=> bs!1327394 (= lambda!306758 lambda!306748)))

(declare-fun bs!1327395 () Bool)

(assert (= bs!1327395 (and d!1796848 d!1796830)))

(assert (=> bs!1327395 (= lambda!306758 lambda!306751)))

(declare-fun bs!1327396 () Bool)

(assert (= bs!1327396 (and d!1796848 d!1796834)))

(assert (=> bs!1327396 (= lambda!306758 lambda!306752)))

(declare-fun bs!1327397 () Bool)

(assert (= bs!1327397 (and d!1796848 d!1796846)))

(assert (=> bs!1327397 (= lambda!306758 lambda!306755)))

(declare-fun lt!2271751 () List!63354)

(assert (=> d!1796848 (forall!14826 lt!2271751 lambda!306758)))

(declare-fun e!3503012 () List!63354)

(assert (=> d!1796848 (= lt!2271751 e!3503012)))

(declare-fun c!1002387 () Bool)

(assert (=> d!1796848 (= c!1002387 ((_ is Cons!63231) zl!343))))

(assert (=> d!1796848 (= (unfocusZipperList!1113 zl!343) lt!2271751)))

(declare-fun b!5693565 () Bool)

(assert (=> b!5693565 (= e!3503012 (Cons!63230 (generalisedConcat!1300 (exprs!5569 (h!69679 zl!343))) (unfocusZipperList!1113 (t!376673 zl!343))))))

(declare-fun b!5693566 () Bool)

(assert (=> b!5693566 (= e!3503012 Nil!63230)))

(assert (= (and d!1796848 c!1002387) b!5693565))

(assert (= (and d!1796848 (not c!1002387)) b!5693566))

(declare-fun m!6650082 () Bool)

(assert (=> d!1796848 m!6650082))

(assert (=> b!5693565 m!6649630))

(declare-fun m!6650084 () Bool)

(assert (=> b!5693565 m!6650084))

(assert (=> b!5692889 d!1796848))

(declare-fun b!5693568 () Bool)

(declare-fun c!1002389 () Bool)

(declare-fun e!3503013 () Bool)

(assert (=> b!5693568 (= c!1002389 e!3503013)))

(declare-fun res!2404341 () Bool)

(assert (=> b!5693568 (=> (not res!2404341) (not e!3503013))))

(assert (=> b!5693568 (= res!2404341 ((_ is Concat!24530) (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun e!3503016 () (InoxSet Context!10138))

(declare-fun e!3503017 () (InoxSet Context!10138))

(assert (=> b!5693568 (= e!3503016 e!3503017)))

(declare-fun b!5693569 () Bool)

(declare-fun e!3503015 () (InoxSet Context!10138))

(assert (=> b!5693569 (= e!3503015 (store ((as const (Array Context!10138 Bool)) false) lt!2271658 true))))

(declare-fun c!1002391 () Bool)

(declare-fun call!433302 () (InoxSet Context!10138))

(declare-fun bm!433292 () Bool)

(declare-fun call!433301 () List!63354)

(assert (=> bm!433292 (= call!433302 (derivationStepZipperDown!1027 (ite c!1002391 (regTwo!31883 (h!69678 (exprs!5569 (h!69679 zl!343)))) (regOne!31882 (h!69678 (exprs!5569 (h!69679 zl!343))))) (ite c!1002391 lt!2271658 (Context!10139 call!433301)) (h!69680 s!2326)))))

(declare-fun b!5693570 () Bool)

(declare-fun e!3503018 () (InoxSet Context!10138))

(declare-fun call!433298 () (InoxSet Context!10138))

(assert (=> b!5693570 (= e!3503018 call!433298)))

(declare-fun bm!433293 () Bool)

(declare-fun call!433300 () (InoxSet Context!10138))

(assert (=> bm!433293 (= call!433298 call!433300)))

(declare-fun b!5693571 () Bool)

(assert (=> b!5693571 (= e!3503017 e!3503018)))

(declare-fun c!1002390 () Bool)

(assert (=> b!5693571 (= c!1002390 ((_ is Concat!24530) (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5693572 () Bool)

(declare-fun c!1002392 () Bool)

(assert (=> b!5693572 (= c!1002392 ((_ is Star!15685) (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun e!3503014 () (InoxSet Context!10138))

(assert (=> b!5693572 (= e!3503018 e!3503014)))

(declare-fun d!1796850 () Bool)

(declare-fun c!1002388 () Bool)

(assert (=> d!1796850 (= c!1002388 (and ((_ is ElementMatch!15685) (h!69678 (exprs!5569 (h!69679 zl!343)))) (= (c!1002203 (h!69678 (exprs!5569 (h!69679 zl!343)))) (h!69680 s!2326))))))

(assert (=> d!1796850 (= (derivationStepZipperDown!1027 (h!69678 (exprs!5569 (h!69679 zl!343))) lt!2271658 (h!69680 s!2326)) e!3503015)))

(declare-fun b!5693567 () Bool)

(declare-fun call!433297 () (InoxSet Context!10138))

(assert (=> b!5693567 (= e!3503016 ((_ map or) call!433297 call!433302))))

(declare-fun b!5693573 () Bool)

(assert (=> b!5693573 (= e!3503014 ((as const (Array Context!10138 Bool)) false))))

(declare-fun bm!433294 () Bool)

(declare-fun call!433299 () List!63354)

(assert (=> bm!433294 (= call!433299 call!433301)))

(declare-fun b!5693574 () Bool)

(assert (=> b!5693574 (= e!3503017 ((_ map or) call!433302 call!433300))))

(declare-fun b!5693575 () Bool)

(assert (=> b!5693575 (= e!3503014 call!433298)))

(declare-fun bm!433295 () Bool)

(assert (=> bm!433295 (= call!433300 call!433297)))

(declare-fun b!5693576 () Bool)

(assert (=> b!5693576 (= e!3503013 (nullable!5717 (regOne!31882 (h!69678 (exprs!5569 (h!69679 zl!343))))))))

(declare-fun bm!433296 () Bool)

(assert (=> bm!433296 (= call!433301 ($colon$colon!1710 (exprs!5569 lt!2271658) (ite (or c!1002389 c!1002390) (regTwo!31882 (h!69678 (exprs!5569 (h!69679 zl!343)))) (h!69678 (exprs!5569 (h!69679 zl!343))))))))

(declare-fun bm!433297 () Bool)

(assert (=> bm!433297 (= call!433297 (derivationStepZipperDown!1027 (ite c!1002391 (regOne!31883 (h!69678 (exprs!5569 (h!69679 zl!343)))) (ite c!1002389 (regTwo!31882 (h!69678 (exprs!5569 (h!69679 zl!343)))) (ite c!1002390 (regOne!31882 (h!69678 (exprs!5569 (h!69679 zl!343)))) (reg!16014 (h!69678 (exprs!5569 (h!69679 zl!343))))))) (ite (or c!1002391 c!1002389) lt!2271658 (Context!10139 call!433299)) (h!69680 s!2326)))))

(declare-fun b!5693577 () Bool)

(assert (=> b!5693577 (= e!3503015 e!3503016)))

(assert (=> b!5693577 (= c!1002391 ((_ is Union!15685) (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(assert (= (and d!1796850 c!1002388) b!5693569))

(assert (= (and d!1796850 (not c!1002388)) b!5693577))

(assert (= (and b!5693577 c!1002391) b!5693567))

(assert (= (and b!5693577 (not c!1002391)) b!5693568))

(assert (= (and b!5693568 res!2404341) b!5693576))

(assert (= (and b!5693568 c!1002389) b!5693574))

(assert (= (and b!5693568 (not c!1002389)) b!5693571))

(assert (= (and b!5693571 c!1002390) b!5693570))

(assert (= (and b!5693571 (not c!1002390)) b!5693572))

(assert (= (and b!5693572 c!1002392) b!5693575))

(assert (= (and b!5693572 (not c!1002392)) b!5693573))

(assert (= (or b!5693570 b!5693575) bm!433294))

(assert (= (or b!5693570 b!5693575) bm!433293))

(assert (= (or b!5693574 bm!433294) bm!433296))

(assert (= (or b!5693574 bm!433293) bm!433295))

(assert (= (or b!5693567 b!5693574) bm!433292))

(assert (= (or b!5693567 bm!433295) bm!433297))

(declare-fun m!6650086 () Bool)

(assert (=> bm!433292 m!6650086))

(declare-fun m!6650088 () Bool)

(assert (=> bm!433297 m!6650088))

(declare-fun m!6650090 () Bool)

(assert (=> bm!433296 m!6650090))

(declare-fun m!6650092 () Bool)

(assert (=> b!5693576 m!6650092))

(declare-fun m!6650094 () Bool)

(assert (=> b!5693569 m!6650094))

(assert (=> b!5692909 d!1796850))

(declare-fun d!1796852 () Bool)

(declare-fun nullableFct!1789 (Regex!15685) Bool)

(assert (=> d!1796852 (= (nullable!5717 (h!69678 (exprs!5569 (h!69679 zl!343)))) (nullableFct!1789 (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun bs!1327398 () Bool)

(assert (= bs!1327398 d!1796852))

(declare-fun m!6650096 () Bool)

(assert (=> bs!1327398 m!6650096))

(assert (=> b!5692909 d!1796852))

(declare-fun bm!433300 () Bool)

(declare-fun call!433305 () (InoxSet Context!10138))

(assert (=> bm!433300 (= call!433305 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343))))))) (Context!10139 (t!376672 (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343)))))))) (h!69680 s!2326)))))

(declare-fun b!5693588 () Bool)

(declare-fun e!3503026 () (InoxSet Context!10138))

(assert (=> b!5693588 (= e!3503026 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796854 () Bool)

(declare-fun c!1002398 () Bool)

(declare-fun e!3503025 () Bool)

(assert (=> d!1796854 (= c!1002398 e!3503025)))

(declare-fun res!2404344 () Bool)

(assert (=> d!1796854 (=> (not res!2404344) (not e!3503025))))

(assert (=> d!1796854 (= res!2404344 ((_ is Cons!63230) (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343))))))))))

(declare-fun e!3503027 () (InoxSet Context!10138))

(assert (=> d!1796854 (= (derivationStepZipperUp!953 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343))))) (h!69680 s!2326)) e!3503027)))

(declare-fun b!5693589 () Bool)

(assert (=> b!5693589 (= e!3503027 ((_ map or) call!433305 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343)))))))) (h!69680 s!2326))))))

(declare-fun b!5693590 () Bool)

(assert (=> b!5693590 (= e!3503027 e!3503026)))

(declare-fun c!1002397 () Bool)

(assert (=> b!5693590 (= c!1002397 ((_ is Cons!63230) (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343))))))))))

(declare-fun b!5693591 () Bool)

(assert (=> b!5693591 (= e!3503025 (nullable!5717 (h!69678 (exprs!5569 (Context!10139 (Cons!63230 (h!69678 (exprs!5569 (h!69679 zl!343))) (t!376672 (exprs!5569 (h!69679 zl!343)))))))))))

(declare-fun b!5693592 () Bool)

(assert (=> b!5693592 (= e!3503026 call!433305)))

(assert (= (and d!1796854 res!2404344) b!5693591))

(assert (= (and d!1796854 c!1002398) b!5693589))

(assert (= (and d!1796854 (not c!1002398)) b!5693590))

(assert (= (and b!5693590 c!1002397) b!5693592))

(assert (= (and b!5693590 (not c!1002397)) b!5693588))

(assert (= (or b!5693589 b!5693592) bm!433300))

(declare-fun m!6650098 () Bool)

(assert (=> bm!433300 m!6650098))

(declare-fun m!6650100 () Bool)

(assert (=> b!5693589 m!6650100))

(declare-fun m!6650102 () Bool)

(assert (=> b!5693591 m!6650102))

(assert (=> b!5692909 d!1796854))

(declare-fun d!1796856 () Bool)

(declare-fun dynLambda!24742 (Int Context!10138) (InoxSet Context!10138))

(assert (=> d!1796856 (= (flatMap!1298 z!1189 lambda!306699) (dynLambda!24742 lambda!306699 (h!69679 zl!343)))))

(declare-fun lt!2271754 () Unit!156272)

(declare-fun choose!43036 ((InoxSet Context!10138) Context!10138 Int) Unit!156272)

(assert (=> d!1796856 (= lt!2271754 (choose!43036 z!1189 (h!69679 zl!343) lambda!306699))))

(assert (=> d!1796856 (= z!1189 (store ((as const (Array Context!10138 Bool)) false) (h!69679 zl!343) true))))

(assert (=> d!1796856 (= (lemmaFlatMapOnSingletonSet!830 z!1189 (h!69679 zl!343) lambda!306699) lt!2271754)))

(declare-fun b_lambda!215239 () Bool)

(assert (=> (not b_lambda!215239) (not d!1796856)))

(declare-fun bs!1327399 () Bool)

(assert (= bs!1327399 d!1796856))

(assert (=> bs!1327399 m!6649624))

(declare-fun m!6650104 () Bool)

(assert (=> bs!1327399 m!6650104))

(declare-fun m!6650106 () Bool)

(assert (=> bs!1327399 m!6650106))

(declare-fun m!6650108 () Bool)

(assert (=> bs!1327399 m!6650108))

(assert (=> b!5692909 d!1796856))

(declare-fun bm!433301 () Bool)

(declare-fun call!433306 () (InoxSet Context!10138))

(assert (=> bm!433301 (= call!433306 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 lt!2271658)) (Context!10139 (t!376672 (exprs!5569 lt!2271658))) (h!69680 s!2326)))))

(declare-fun b!5693593 () Bool)

(declare-fun e!3503029 () (InoxSet Context!10138))

(assert (=> b!5693593 (= e!3503029 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796858 () Bool)

(declare-fun c!1002400 () Bool)

(declare-fun e!3503028 () Bool)

(assert (=> d!1796858 (= c!1002400 e!3503028)))

(declare-fun res!2404345 () Bool)

(assert (=> d!1796858 (=> (not res!2404345) (not e!3503028))))

(assert (=> d!1796858 (= res!2404345 ((_ is Cons!63230) (exprs!5569 lt!2271658)))))

(declare-fun e!3503030 () (InoxSet Context!10138))

(assert (=> d!1796858 (= (derivationStepZipperUp!953 lt!2271658 (h!69680 s!2326)) e!3503030)))

(declare-fun b!5693594 () Bool)

(assert (=> b!5693594 (= e!3503030 ((_ map or) call!433306 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 lt!2271658))) (h!69680 s!2326))))))

(declare-fun b!5693595 () Bool)

(assert (=> b!5693595 (= e!3503030 e!3503029)))

(declare-fun c!1002399 () Bool)

(assert (=> b!5693595 (= c!1002399 ((_ is Cons!63230) (exprs!5569 lt!2271658)))))

(declare-fun b!5693596 () Bool)

(assert (=> b!5693596 (= e!3503028 (nullable!5717 (h!69678 (exprs!5569 lt!2271658))))))

(declare-fun b!5693597 () Bool)

(assert (=> b!5693597 (= e!3503029 call!433306)))

(assert (= (and d!1796858 res!2404345) b!5693596))

(assert (= (and d!1796858 c!1002400) b!5693594))

(assert (= (and d!1796858 (not c!1002400)) b!5693595))

(assert (= (and b!5693595 c!1002399) b!5693597))

(assert (= (and b!5693595 (not c!1002399)) b!5693593))

(assert (= (or b!5693594 b!5693597) bm!433301))

(declare-fun m!6650110 () Bool)

(assert (=> bm!433301 m!6650110))

(declare-fun m!6650112 () Bool)

(assert (=> b!5693594 m!6650112))

(declare-fun m!6650114 () Bool)

(assert (=> b!5693596 m!6650114))

(assert (=> b!5692909 d!1796858))

(declare-fun bm!433302 () Bool)

(declare-fun call!433307 () (InoxSet Context!10138))

(assert (=> bm!433302 (= call!433307 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 (h!69679 zl!343))) (Context!10139 (t!376672 (exprs!5569 (h!69679 zl!343)))) (h!69680 s!2326)))))

(declare-fun b!5693598 () Bool)

(declare-fun e!3503032 () (InoxSet Context!10138))

(assert (=> b!5693598 (= e!3503032 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796860 () Bool)

(declare-fun c!1002402 () Bool)

(declare-fun e!3503031 () Bool)

(assert (=> d!1796860 (= c!1002402 e!3503031)))

(declare-fun res!2404346 () Bool)

(assert (=> d!1796860 (=> (not res!2404346) (not e!3503031))))

(assert (=> d!1796860 (= res!2404346 ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343))))))

(declare-fun e!3503033 () (InoxSet Context!10138))

(assert (=> d!1796860 (= (derivationStepZipperUp!953 (h!69679 zl!343) (h!69680 s!2326)) e!3503033)))

(declare-fun b!5693599 () Bool)

(assert (=> b!5693599 (= e!3503033 ((_ map or) call!433307 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 (h!69679 zl!343)))) (h!69680 s!2326))))))

(declare-fun b!5693600 () Bool)

(assert (=> b!5693600 (= e!3503033 e!3503032)))

(declare-fun c!1002401 () Bool)

(assert (=> b!5693600 (= c!1002401 ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343))))))

(declare-fun b!5693601 () Bool)

(assert (=> b!5693601 (= e!3503031 (nullable!5717 (h!69678 (exprs!5569 (h!69679 zl!343)))))))

(declare-fun b!5693602 () Bool)

(assert (=> b!5693602 (= e!3503032 call!433307)))

(assert (= (and d!1796860 res!2404346) b!5693601))

(assert (= (and d!1796860 c!1002402) b!5693599))

(assert (= (and d!1796860 (not c!1002402)) b!5693600))

(assert (= (and b!5693600 c!1002401) b!5693602))

(assert (= (and b!5693600 (not c!1002401)) b!5693598))

(assert (= (or b!5693599 b!5693602) bm!433302))

(declare-fun m!6650116 () Bool)

(assert (=> bm!433302 m!6650116))

(declare-fun m!6650118 () Bool)

(assert (=> b!5693599 m!6650118))

(assert (=> b!5693601 m!6649618))

(assert (=> b!5692909 d!1796860))

(declare-fun d!1796862 () Bool)

(declare-fun choose!43037 ((InoxSet Context!10138) Int) (InoxSet Context!10138))

(assert (=> d!1796862 (= (flatMap!1298 z!1189 lambda!306699) (choose!43037 z!1189 lambda!306699))))

(declare-fun bs!1327400 () Bool)

(assert (= bs!1327400 d!1796862))

(declare-fun m!6650120 () Bool)

(assert (=> bs!1327400 m!6650120))

(assert (=> b!5692909 d!1796862))

(declare-fun d!1796864 () Bool)

(declare-fun lt!2271755 () Regex!15685)

(assert (=> d!1796864 (validRegex!7421 lt!2271755)))

(assert (=> d!1796864 (= lt!2271755 (generalisedUnion!1548 (unfocusZipperList!1113 (Cons!63231 lt!2271655 Nil!63231))))))

(assert (=> d!1796864 (= (unfocusZipper!1427 (Cons!63231 lt!2271655 Nil!63231)) lt!2271755)))

(declare-fun bs!1327401 () Bool)

(assert (= bs!1327401 d!1796864))

(declare-fun m!6650122 () Bool)

(assert (=> bs!1327401 m!6650122))

(declare-fun m!6650124 () Bool)

(assert (=> bs!1327401 m!6650124))

(assert (=> bs!1327401 m!6650124))

(declare-fun m!6650126 () Bool)

(assert (=> bs!1327401 m!6650126))

(assert (=> b!5692918 d!1796864))

(declare-fun d!1796866 () Bool)

(assert (=> d!1796866 (= (flatMap!1298 lt!2271639 lambda!306699) (dynLambda!24742 lambda!306699 lt!2271655))))

(declare-fun lt!2271756 () Unit!156272)

(assert (=> d!1796866 (= lt!2271756 (choose!43036 lt!2271639 lt!2271655 lambda!306699))))

(assert (=> d!1796866 (= lt!2271639 (store ((as const (Array Context!10138 Bool)) false) lt!2271655 true))))

(assert (=> d!1796866 (= (lemmaFlatMapOnSingletonSet!830 lt!2271639 lt!2271655 lambda!306699) lt!2271756)))

(declare-fun b_lambda!215241 () Bool)

(assert (=> (not b_lambda!215241) (not d!1796866)))

(declare-fun bs!1327402 () Bool)

(assert (= bs!1327402 d!1796866))

(assert (=> bs!1327402 m!6649606))

(declare-fun m!6650128 () Bool)

(assert (=> bs!1327402 m!6650128))

(declare-fun m!6650130 () Bool)

(assert (=> bs!1327402 m!6650130))

(assert (=> bs!1327402 m!6649596))

(assert (=> b!5692918 d!1796866))

(declare-fun bm!433303 () Bool)

(declare-fun call!433308 () (InoxSet Context!10138))

(assert (=> bm!433303 (= call!433308 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 lt!2271646)) (Context!10139 (t!376672 (exprs!5569 lt!2271646))) (h!69680 s!2326)))))

(declare-fun b!5693603 () Bool)

(declare-fun e!3503035 () (InoxSet Context!10138))

(assert (=> b!5693603 (= e!3503035 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796868 () Bool)

(declare-fun c!1002404 () Bool)

(declare-fun e!3503034 () Bool)

(assert (=> d!1796868 (= c!1002404 e!3503034)))

(declare-fun res!2404347 () Bool)

(assert (=> d!1796868 (=> (not res!2404347) (not e!3503034))))

(assert (=> d!1796868 (= res!2404347 ((_ is Cons!63230) (exprs!5569 lt!2271646)))))

(declare-fun e!3503036 () (InoxSet Context!10138))

(assert (=> d!1796868 (= (derivationStepZipperUp!953 lt!2271646 (h!69680 s!2326)) e!3503036)))

(declare-fun b!5693604 () Bool)

(assert (=> b!5693604 (= e!3503036 ((_ map or) call!433308 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 lt!2271646))) (h!69680 s!2326))))))

(declare-fun b!5693605 () Bool)

(assert (=> b!5693605 (= e!3503036 e!3503035)))

(declare-fun c!1002403 () Bool)

(assert (=> b!5693605 (= c!1002403 ((_ is Cons!63230) (exprs!5569 lt!2271646)))))

(declare-fun b!5693606 () Bool)

(assert (=> b!5693606 (= e!3503034 (nullable!5717 (h!69678 (exprs!5569 lt!2271646))))))

(declare-fun b!5693607 () Bool)

(assert (=> b!5693607 (= e!3503035 call!433308)))

(assert (= (and d!1796868 res!2404347) b!5693606))

(assert (= (and d!1796868 c!1002404) b!5693604))

(assert (= (and d!1796868 (not c!1002404)) b!5693605))

(assert (= (and b!5693605 c!1002403) b!5693607))

(assert (= (and b!5693605 (not c!1002403)) b!5693603))

(assert (= (or b!5693604 b!5693607) bm!433303))

(declare-fun m!6650132 () Bool)

(assert (=> bm!433303 m!6650132))

(declare-fun m!6650134 () Bool)

(assert (=> b!5693604 m!6650134))

(declare-fun m!6650136 () Bool)

(assert (=> b!5693606 m!6650136))

(assert (=> b!5692918 d!1796868))

(declare-fun bm!433304 () Bool)

(declare-fun call!433309 () (InoxSet Context!10138))

(assert (=> bm!433304 (= call!433309 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 lt!2271655)) (Context!10139 (t!376672 (exprs!5569 lt!2271655))) (h!69680 s!2326)))))

(declare-fun b!5693608 () Bool)

(declare-fun e!3503038 () (InoxSet Context!10138))

(assert (=> b!5693608 (= e!3503038 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796870 () Bool)

(declare-fun c!1002406 () Bool)

(declare-fun e!3503037 () Bool)

(assert (=> d!1796870 (= c!1002406 e!3503037)))

(declare-fun res!2404348 () Bool)

(assert (=> d!1796870 (=> (not res!2404348) (not e!3503037))))

(assert (=> d!1796870 (= res!2404348 ((_ is Cons!63230) (exprs!5569 lt!2271655)))))

(declare-fun e!3503039 () (InoxSet Context!10138))

(assert (=> d!1796870 (= (derivationStepZipperUp!953 lt!2271655 (h!69680 s!2326)) e!3503039)))

(declare-fun b!5693609 () Bool)

(assert (=> b!5693609 (= e!3503039 ((_ map or) call!433309 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 lt!2271655))) (h!69680 s!2326))))))

(declare-fun b!5693610 () Bool)

(assert (=> b!5693610 (= e!3503039 e!3503038)))

(declare-fun c!1002405 () Bool)

(assert (=> b!5693610 (= c!1002405 ((_ is Cons!63230) (exprs!5569 lt!2271655)))))

(declare-fun b!5693611 () Bool)

(assert (=> b!5693611 (= e!3503037 (nullable!5717 (h!69678 (exprs!5569 lt!2271655))))))

(declare-fun b!5693612 () Bool)

(assert (=> b!5693612 (= e!3503038 call!433309)))

(assert (= (and d!1796870 res!2404348) b!5693611))

(assert (= (and d!1796870 c!1002406) b!5693609))

(assert (= (and d!1796870 (not c!1002406)) b!5693610))

(assert (= (and b!5693610 c!1002405) b!5693612))

(assert (= (and b!5693610 (not c!1002405)) b!5693608))

(assert (= (or b!5693609 b!5693612) bm!433304))

(declare-fun m!6650138 () Bool)

(assert (=> bm!433304 m!6650138))

(declare-fun m!6650140 () Bool)

(assert (=> b!5693609 m!6650140))

(declare-fun m!6650142 () Bool)

(assert (=> b!5693611 m!6650142))

(assert (=> b!5692918 d!1796870))

(declare-fun d!1796872 () Bool)

(assert (=> d!1796872 (= (flatMap!1298 lt!2271662 lambda!306699) (choose!43037 lt!2271662 lambda!306699))))

(declare-fun bs!1327403 () Bool)

(assert (= bs!1327403 d!1796872))

(declare-fun m!6650144 () Bool)

(assert (=> bs!1327403 m!6650144))

(assert (=> b!5692918 d!1796872))

(declare-fun d!1796874 () Bool)

(assert (=> d!1796874 (= (flatMap!1298 lt!2271639 lambda!306699) (choose!43037 lt!2271639 lambda!306699))))

(declare-fun bs!1327404 () Bool)

(assert (= bs!1327404 d!1796874))

(declare-fun m!6650146 () Bool)

(assert (=> bs!1327404 m!6650146))

(assert (=> b!5692918 d!1796874))

(declare-fun d!1796876 () Bool)

(assert (=> d!1796876 (= (flatMap!1298 lt!2271662 lambda!306699) (dynLambda!24742 lambda!306699 lt!2271646))))

(declare-fun lt!2271757 () Unit!156272)

(assert (=> d!1796876 (= lt!2271757 (choose!43036 lt!2271662 lt!2271646 lambda!306699))))

(assert (=> d!1796876 (= lt!2271662 (store ((as const (Array Context!10138 Bool)) false) lt!2271646 true))))

(assert (=> d!1796876 (= (lemmaFlatMapOnSingletonSet!830 lt!2271662 lt!2271646 lambda!306699) lt!2271757)))

(declare-fun b_lambda!215243 () Bool)

(assert (=> (not b_lambda!215243) (not d!1796876)))

(declare-fun bs!1327405 () Bool)

(assert (= bs!1327405 d!1796876))

(assert (=> bs!1327405 m!6649608))

(declare-fun m!6650148 () Bool)

(assert (=> bs!1327405 m!6650148))

(declare-fun m!6650150 () Bool)

(assert (=> bs!1327405 m!6650150))

(assert (=> bs!1327405 m!6649592))

(assert (=> b!5692918 d!1796876))

(declare-fun d!1796878 () Bool)

(assert (=> d!1796878 (= (isEmpty!35082 (t!376673 zl!343)) ((_ is Nil!63231) (t!376673 zl!343)))))

(assert (=> b!5692899 d!1796878))

(declare-fun d!1796880 () Bool)

(declare-fun c!1002407 () Bool)

(assert (=> d!1796880 (= c!1002407 (isEmpty!35086 s!2326))))

(declare-fun e!3503040 () Bool)

(assert (=> d!1796880 (= (matchZipper!1823 lt!2271660 s!2326) e!3503040)))

(declare-fun b!5693613 () Bool)

(assert (=> b!5693613 (= e!3503040 (nullableZipper!1643 lt!2271660))))

(declare-fun b!5693614 () Bool)

(assert (=> b!5693614 (= e!3503040 (matchZipper!1823 (derivationStepZipper!1768 lt!2271660 (head!12066 s!2326)) (tail!11161 s!2326)))))

(assert (= (and d!1796880 c!1002407) b!5693613))

(assert (= (and d!1796880 (not c!1002407)) b!5693614))

(assert (=> d!1796880 m!6649964))

(declare-fun m!6650152 () Bool)

(assert (=> b!5693613 m!6650152))

(assert (=> b!5693614 m!6649974))

(assert (=> b!5693614 m!6649974))

(declare-fun m!6650154 () Bool)

(assert (=> b!5693614 m!6650154))

(assert (=> b!5693614 m!6649976))

(assert (=> b!5693614 m!6650154))

(assert (=> b!5693614 m!6649976))

(declare-fun m!6650156 () Bool)

(assert (=> b!5693614 m!6650156))

(assert (=> b!5692903 d!1796880))

(declare-fun d!1796882 () Bool)

(declare-fun c!1002408 () Bool)

(assert (=> d!1796882 (= c!1002408 (isEmpty!35086 (t!376674 s!2326)))))

(declare-fun e!3503041 () Bool)

(assert (=> d!1796882 (= (matchZipper!1823 lt!2271654 (t!376674 s!2326)) e!3503041)))

(declare-fun b!5693615 () Bool)

(assert (=> b!5693615 (= e!3503041 (nullableZipper!1643 lt!2271654))))

(declare-fun b!5693616 () Bool)

(assert (=> b!5693616 (= e!3503041 (matchZipper!1823 (derivationStepZipper!1768 lt!2271654 (head!12066 (t!376674 s!2326))) (tail!11161 (t!376674 s!2326))))))

(assert (= (and d!1796882 c!1002408) b!5693615))

(assert (= (and d!1796882 (not c!1002408)) b!5693616))

(assert (=> d!1796882 m!6650036))

(declare-fun m!6650158 () Bool)

(assert (=> b!5693615 m!6650158))

(assert (=> b!5693616 m!6650040))

(assert (=> b!5693616 m!6650040))

(declare-fun m!6650160 () Bool)

(assert (=> b!5693616 m!6650160))

(assert (=> b!5693616 m!6650044))

(assert (=> b!5693616 m!6650160))

(assert (=> b!5693616 m!6650044))

(declare-fun m!6650162 () Bool)

(assert (=> b!5693616 m!6650162))

(assert (=> b!5692903 d!1796882))

(declare-fun d!1796884 () Bool)

(assert (=> d!1796884 (= (flatMap!1298 lt!2271660 lambda!306699) (choose!43037 lt!2271660 lambda!306699))))

(declare-fun bs!1327406 () Bool)

(assert (= bs!1327406 d!1796884))

(declare-fun m!6650164 () Bool)

(assert (=> bs!1327406 m!6650164))

(assert (=> b!5692914 d!1796884))

(declare-fun bm!433305 () Bool)

(declare-fun call!433310 () (InoxSet Context!10138))

(assert (=> bm!433305 (= call!433310 (derivationStepZipperDown!1027 (h!69678 (exprs!5569 lt!2271648)) (Context!10139 (t!376672 (exprs!5569 lt!2271648))) (h!69680 s!2326)))))

(declare-fun b!5693617 () Bool)

(declare-fun e!3503043 () (InoxSet Context!10138))

(assert (=> b!5693617 (= e!3503043 ((as const (Array Context!10138 Bool)) false))))

(declare-fun d!1796886 () Bool)

(declare-fun c!1002410 () Bool)

(declare-fun e!3503042 () Bool)

(assert (=> d!1796886 (= c!1002410 e!3503042)))

(declare-fun res!2404349 () Bool)

(assert (=> d!1796886 (=> (not res!2404349) (not e!3503042))))

(assert (=> d!1796886 (= res!2404349 ((_ is Cons!63230) (exprs!5569 lt!2271648)))))

(declare-fun e!3503044 () (InoxSet Context!10138))

(assert (=> d!1796886 (= (derivationStepZipperUp!953 lt!2271648 (h!69680 s!2326)) e!3503044)))

(declare-fun b!5693618 () Bool)

(assert (=> b!5693618 (= e!3503044 ((_ map or) call!433310 (derivationStepZipperUp!953 (Context!10139 (t!376672 (exprs!5569 lt!2271648))) (h!69680 s!2326))))))

(declare-fun b!5693619 () Bool)

(assert (=> b!5693619 (= e!3503044 e!3503043)))

(declare-fun c!1002409 () Bool)

(assert (=> b!5693619 (= c!1002409 ((_ is Cons!63230) (exprs!5569 lt!2271648)))))

(declare-fun b!5693620 () Bool)

(assert (=> b!5693620 (= e!3503042 (nullable!5717 (h!69678 (exprs!5569 lt!2271648))))))

(declare-fun b!5693621 () Bool)

(assert (=> b!5693621 (= e!3503043 call!433310)))

(assert (= (and d!1796886 res!2404349) b!5693620))

(assert (= (and d!1796886 c!1002410) b!5693618))

(assert (= (and d!1796886 (not c!1002410)) b!5693619))

(assert (= (and b!5693619 c!1002409) b!5693621))

(assert (= (and b!5693619 (not c!1002409)) b!5693617))

(assert (= (or b!5693618 b!5693621) bm!433305))

(declare-fun m!6650166 () Bool)

(assert (=> bm!433305 m!6650166))

(declare-fun m!6650168 () Bool)

(assert (=> b!5693618 m!6650168))

(declare-fun m!6650170 () Bool)

(assert (=> b!5693620 m!6650170))

(assert (=> b!5692914 d!1796886))

(declare-fun d!1796888 () Bool)

(assert (=> d!1796888 (= (flatMap!1298 lt!2271660 lambda!306699) (dynLambda!24742 lambda!306699 lt!2271648))))

(declare-fun lt!2271758 () Unit!156272)

(assert (=> d!1796888 (= lt!2271758 (choose!43036 lt!2271660 lt!2271648 lambda!306699))))

(assert (=> d!1796888 (= lt!2271660 (store ((as const (Array Context!10138 Bool)) false) lt!2271648 true))))

(assert (=> d!1796888 (= (lemmaFlatMapOnSingletonSet!830 lt!2271660 lt!2271648 lambda!306699) lt!2271758)))

(declare-fun b_lambda!215245 () Bool)

(assert (=> (not b_lambda!215245) (not d!1796888)))

(declare-fun bs!1327407 () Bool)

(assert (= bs!1327407 d!1796888))

(assert (=> bs!1327407 m!6649588))

(declare-fun m!6650172 () Bool)

(assert (=> bs!1327407 m!6650172))

(declare-fun m!6650174 () Bool)

(assert (=> bs!1327407 m!6650174))

(assert (=> bs!1327407 m!6649582))

(assert (=> b!5692914 d!1796888))

(declare-fun bs!1327408 () Bool)

(declare-fun d!1796890 () Bool)

(assert (= bs!1327408 (and d!1796890 b!5692909)))

(declare-fun lambda!306761 () Int)

(assert (=> bs!1327408 (= lambda!306761 lambda!306699)))

(assert (=> d!1796890 true))

(assert (=> d!1796890 (= (derivationStepZipper!1768 lt!2271660 (h!69680 s!2326)) (flatMap!1298 lt!2271660 lambda!306761))))

(declare-fun bs!1327409 () Bool)

(assert (= bs!1327409 d!1796890))

(declare-fun m!6650176 () Bool)

(assert (=> bs!1327409 m!6650176))

(assert (=> b!5692914 d!1796890))

(declare-fun d!1796892 () Bool)

(assert (=> d!1796892 (= (nullable!5717 (regOne!31882 (regOne!31882 r!7292))) (nullableFct!1789 (regOne!31882 (regOne!31882 r!7292))))))

(declare-fun bs!1327410 () Bool)

(assert (= bs!1327410 d!1796892))

(declare-fun m!6650178 () Bool)

(assert (=> bs!1327410 m!6650178))

(assert (=> b!5692901 d!1796892))

(declare-fun d!1796894 () Bool)

(assert (=> d!1796894 (= (isEmpty!35081 (t!376672 (exprs!5569 (h!69679 zl!343)))) ((_ is Nil!63230) (t!376672 (exprs!5569 (h!69679 zl!343)))))))

(assert (=> b!5692891 d!1796894))

(declare-fun d!1796896 () Bool)

(declare-fun c!1002413 () Bool)

(assert (=> d!1796896 (= c!1002413 (isEmpty!35086 (t!376674 s!2326)))))

(declare-fun e!3503045 () Bool)

(assert (=> d!1796896 (= (matchZipper!1823 lt!2271659 (t!376674 s!2326)) e!3503045)))

(declare-fun b!5693624 () Bool)

(assert (=> b!5693624 (= e!3503045 (nullableZipper!1643 lt!2271659))))

(declare-fun b!5693625 () Bool)

(assert (=> b!5693625 (= e!3503045 (matchZipper!1823 (derivationStepZipper!1768 lt!2271659 (head!12066 (t!376674 s!2326))) (tail!11161 (t!376674 s!2326))))))

(assert (= (and d!1796896 c!1002413) b!5693624))

(assert (= (and d!1796896 (not c!1002413)) b!5693625))

(assert (=> d!1796896 m!6650036))

(declare-fun m!6650180 () Bool)

(assert (=> b!5693624 m!6650180))

(assert (=> b!5693625 m!6650040))

(assert (=> b!5693625 m!6650040))

(declare-fun m!6650182 () Bool)

(assert (=> b!5693625 m!6650182))

(assert (=> b!5693625 m!6650044))

(assert (=> b!5693625 m!6650182))

(assert (=> b!5693625 m!6650044))

(declare-fun m!6650184 () Bool)

(assert (=> b!5693625 m!6650184))

(assert (=> b!5692902 d!1796896))

(declare-fun b!5693636 () Bool)

(declare-fun e!3503048 () Bool)

(assert (=> b!5693636 (= e!3503048 tp_is_empty!40623)))

(declare-fun b!5693639 () Bool)

(declare-fun tp!1579671 () Bool)

(declare-fun tp!1579667 () Bool)

(assert (=> b!5693639 (= e!3503048 (and tp!1579671 tp!1579667))))

(declare-fun b!5693638 () Bool)

(declare-fun tp!1579668 () Bool)

(assert (=> b!5693638 (= e!3503048 tp!1579668)))

(assert (=> b!5692915 (= tp!1579598 e!3503048)))

(declare-fun b!5693637 () Bool)

(declare-fun tp!1579669 () Bool)

(declare-fun tp!1579670 () Bool)

(assert (=> b!5693637 (= e!3503048 (and tp!1579669 tp!1579670))))

(assert (= (and b!5692915 ((_ is ElementMatch!15685) (reg!16014 r!7292))) b!5693636))

(assert (= (and b!5692915 ((_ is Concat!24530) (reg!16014 r!7292))) b!5693637))

(assert (= (and b!5692915 ((_ is Star!15685) (reg!16014 r!7292))) b!5693638))

(assert (= (and b!5692915 ((_ is Union!15685) (reg!16014 r!7292))) b!5693639))

(declare-fun b!5693644 () Bool)

(declare-fun e!3503051 () Bool)

(declare-fun tp!1579676 () Bool)

(declare-fun tp!1579677 () Bool)

(assert (=> b!5693644 (= e!3503051 (and tp!1579676 tp!1579677))))

(assert (=> b!5692900 (= tp!1579594 e!3503051)))

(assert (= (and b!5692900 ((_ is Cons!63230) (exprs!5569 (h!69679 zl!343)))) b!5693644))

(declare-fun b!5693645 () Bool)

(declare-fun e!3503052 () Bool)

(assert (=> b!5693645 (= e!3503052 tp_is_empty!40623)))

(declare-fun b!5693648 () Bool)

(declare-fun tp!1579682 () Bool)

(declare-fun tp!1579678 () Bool)

(assert (=> b!5693648 (= e!3503052 (and tp!1579682 tp!1579678))))

(declare-fun b!5693647 () Bool)

(declare-fun tp!1579679 () Bool)

(assert (=> b!5693647 (= e!3503052 tp!1579679)))

(assert (=> b!5692911 (= tp!1579595 e!3503052)))

(declare-fun b!5693646 () Bool)

(declare-fun tp!1579680 () Bool)

(declare-fun tp!1579681 () Bool)

(assert (=> b!5693646 (= e!3503052 (and tp!1579680 tp!1579681))))

(assert (= (and b!5692911 ((_ is ElementMatch!15685) (regOne!31883 r!7292))) b!5693645))

(assert (= (and b!5692911 ((_ is Concat!24530) (regOne!31883 r!7292))) b!5693646))

(assert (= (and b!5692911 ((_ is Star!15685) (regOne!31883 r!7292))) b!5693647))

(assert (= (and b!5692911 ((_ is Union!15685) (regOne!31883 r!7292))) b!5693648))

(declare-fun b!5693649 () Bool)

(declare-fun e!3503053 () Bool)

(assert (=> b!5693649 (= e!3503053 tp_is_empty!40623)))

(declare-fun b!5693652 () Bool)

(declare-fun tp!1579687 () Bool)

(declare-fun tp!1579683 () Bool)

(assert (=> b!5693652 (= e!3503053 (and tp!1579687 tp!1579683))))

(declare-fun b!5693651 () Bool)

(declare-fun tp!1579684 () Bool)

(assert (=> b!5693651 (= e!3503053 tp!1579684)))

(assert (=> b!5692911 (= tp!1579596 e!3503053)))

(declare-fun b!5693650 () Bool)

(declare-fun tp!1579685 () Bool)

(declare-fun tp!1579686 () Bool)

(assert (=> b!5693650 (= e!3503053 (and tp!1579685 tp!1579686))))

(assert (= (and b!5692911 ((_ is ElementMatch!15685) (regTwo!31883 r!7292))) b!5693649))

(assert (= (and b!5692911 ((_ is Concat!24530) (regTwo!31883 r!7292))) b!5693650))

(assert (= (and b!5692911 ((_ is Star!15685) (regTwo!31883 r!7292))) b!5693651))

(assert (= (and b!5692911 ((_ is Union!15685) (regTwo!31883 r!7292))) b!5693652))

(declare-fun b!5693660 () Bool)

(declare-fun e!3503059 () Bool)

(declare-fun tp!1579692 () Bool)

(assert (=> b!5693660 (= e!3503059 tp!1579692)))

(declare-fun b!5693659 () Bool)

(declare-fun e!3503058 () Bool)

(declare-fun tp!1579693 () Bool)

(assert (=> b!5693659 (= e!3503058 (and (inv!82459 (h!69679 (t!376673 zl!343))) e!3503059 tp!1579693))))

(assert (=> b!5692904 (= tp!1579591 e!3503058)))

(assert (= b!5693659 b!5693660))

(assert (= (and b!5692904 ((_ is Cons!63231) (t!376673 zl!343))) b!5693659))

(declare-fun m!6650186 () Bool)

(assert (=> b!5693659 m!6650186))

(declare-fun b!5693661 () Bool)

(declare-fun e!3503060 () Bool)

(declare-fun tp!1579694 () Bool)

(declare-fun tp!1579695 () Bool)

(assert (=> b!5693661 (= e!3503060 (and tp!1579694 tp!1579695))))

(assert (=> b!5692910 (= tp!1579590 e!3503060)))

(assert (= (and b!5692910 ((_ is Cons!63230) (exprs!5569 setElem!38103))) b!5693661))

(declare-fun condSetEmpty!38109 () Bool)

(assert (=> setNonEmpty!38103 (= condSetEmpty!38109 (= setRest!38103 ((as const (Array Context!10138 Bool)) false)))))

(declare-fun setRes!38109 () Bool)

(assert (=> setNonEmpty!38103 (= tp!1579597 setRes!38109)))

(declare-fun setIsEmpty!38109 () Bool)

(assert (=> setIsEmpty!38109 setRes!38109))

(declare-fun e!3503063 () Bool)

(declare-fun setNonEmpty!38109 () Bool)

(declare-fun setElem!38109 () Context!10138)

(declare-fun tp!1579701 () Bool)

(assert (=> setNonEmpty!38109 (= setRes!38109 (and tp!1579701 (inv!82459 setElem!38109) e!3503063))))

(declare-fun setRest!38109 () (InoxSet Context!10138))

(assert (=> setNonEmpty!38109 (= setRest!38103 ((_ map or) (store ((as const (Array Context!10138 Bool)) false) setElem!38109 true) setRest!38109))))

(declare-fun b!5693666 () Bool)

(declare-fun tp!1579700 () Bool)

(assert (=> b!5693666 (= e!3503063 tp!1579700)))

(assert (= (and setNonEmpty!38103 condSetEmpty!38109) setIsEmpty!38109))

(assert (= (and setNonEmpty!38103 (not condSetEmpty!38109)) setNonEmpty!38109))

(assert (= setNonEmpty!38109 b!5693666))

(declare-fun m!6650188 () Bool)

(assert (=> setNonEmpty!38109 m!6650188))

(declare-fun b!5693667 () Bool)

(declare-fun e!3503064 () Bool)

(assert (=> b!5693667 (= e!3503064 tp_is_empty!40623)))

(declare-fun b!5693670 () Bool)

(declare-fun tp!1579706 () Bool)

(declare-fun tp!1579702 () Bool)

(assert (=> b!5693670 (= e!3503064 (and tp!1579706 tp!1579702))))

(declare-fun b!5693669 () Bool)

(declare-fun tp!1579703 () Bool)

(assert (=> b!5693669 (= e!3503064 tp!1579703)))

(assert (=> b!5692912 (= tp!1579593 e!3503064)))

(declare-fun b!5693668 () Bool)

(declare-fun tp!1579704 () Bool)

(declare-fun tp!1579705 () Bool)

(assert (=> b!5693668 (= e!3503064 (and tp!1579704 tp!1579705))))

(assert (= (and b!5692912 ((_ is ElementMatch!15685) (regOne!31882 r!7292))) b!5693667))

(assert (= (and b!5692912 ((_ is Concat!24530) (regOne!31882 r!7292))) b!5693668))

(assert (= (and b!5692912 ((_ is Star!15685) (regOne!31882 r!7292))) b!5693669))

(assert (= (and b!5692912 ((_ is Union!15685) (regOne!31882 r!7292))) b!5693670))

(declare-fun b!5693671 () Bool)

(declare-fun e!3503065 () Bool)

(assert (=> b!5693671 (= e!3503065 tp_is_empty!40623)))

(declare-fun b!5693674 () Bool)

(declare-fun tp!1579711 () Bool)

(declare-fun tp!1579707 () Bool)

(assert (=> b!5693674 (= e!3503065 (and tp!1579711 tp!1579707))))

(declare-fun b!5693673 () Bool)

(declare-fun tp!1579708 () Bool)

(assert (=> b!5693673 (= e!3503065 tp!1579708)))

(assert (=> b!5692912 (= tp!1579589 e!3503065)))

(declare-fun b!5693672 () Bool)

(declare-fun tp!1579709 () Bool)

(declare-fun tp!1579710 () Bool)

(assert (=> b!5693672 (= e!3503065 (and tp!1579709 tp!1579710))))

(assert (= (and b!5692912 ((_ is ElementMatch!15685) (regTwo!31882 r!7292))) b!5693671))

(assert (= (and b!5692912 ((_ is Concat!24530) (regTwo!31882 r!7292))) b!5693672))

(assert (= (and b!5692912 ((_ is Star!15685) (regTwo!31882 r!7292))) b!5693673))

(assert (= (and b!5692912 ((_ is Union!15685) (regTwo!31882 r!7292))) b!5693674))

(declare-fun b!5693679 () Bool)

(declare-fun e!3503068 () Bool)

(declare-fun tp!1579714 () Bool)

(assert (=> b!5693679 (= e!3503068 (and tp_is_empty!40623 tp!1579714))))

(assert (=> b!5692916 (= tp!1579592 e!3503068)))

(assert (= (and b!5692916 ((_ is Cons!63232) (t!376674 s!2326))) b!5693679))

(declare-fun b_lambda!215247 () Bool)

(assert (= b_lambda!215239 (or b!5692909 b_lambda!215247)))

(declare-fun bs!1327411 () Bool)

(declare-fun d!1796898 () Bool)

(assert (= bs!1327411 (and d!1796898 b!5692909)))

(assert (=> bs!1327411 (= (dynLambda!24742 lambda!306699 (h!69679 zl!343)) (derivationStepZipperUp!953 (h!69679 zl!343) (h!69680 s!2326)))))

(assert (=> bs!1327411 m!6649614))

(assert (=> d!1796856 d!1796898))

(declare-fun b_lambda!215249 () Bool)

(assert (= b_lambda!215245 (or b!5692909 b_lambda!215249)))

(declare-fun bs!1327412 () Bool)

(declare-fun d!1796900 () Bool)

(assert (= bs!1327412 (and d!1796900 b!5692909)))

(assert (=> bs!1327412 (= (dynLambda!24742 lambda!306699 lt!2271648) (derivationStepZipperUp!953 lt!2271648 (h!69680 s!2326)))))

(assert (=> bs!1327412 m!6649584))

(assert (=> d!1796888 d!1796900))

(declare-fun b_lambda!215251 () Bool)

(assert (= b_lambda!215241 (or b!5692909 b_lambda!215251)))

(declare-fun bs!1327413 () Bool)

(declare-fun d!1796902 () Bool)

(assert (= bs!1327413 (and d!1796902 b!5692909)))

(assert (=> bs!1327413 (= (dynLambda!24742 lambda!306699 lt!2271655) (derivationStepZipperUp!953 lt!2271655 (h!69680 s!2326)))))

(assert (=> bs!1327413 m!6649594))

(assert (=> d!1796866 d!1796902))

(declare-fun b_lambda!215253 () Bool)

(assert (= b_lambda!215243 (or b!5692909 b_lambda!215253)))

(declare-fun bs!1327414 () Bool)

(declare-fun d!1796904 () Bool)

(assert (= bs!1327414 (and d!1796904 b!5692909)))

(assert (=> bs!1327414 (= (dynLambda!24742 lambda!306699 lt!2271646) (derivationStepZipperUp!953 lt!2271646 (h!69680 s!2326)))))

(assert (=> bs!1327414 m!6649600))

(assert (=> d!1796876 d!1796904))

(check-sat (not bm!433292) (not b!5693604) (not bm!433261) (not b!5693414) (not bm!433273) (not b!5693660) (not b!5693496) (not b!5693558) (not bm!433302) (not b!5693481) (not d!1796892) (not b!5693661) (not b!5693482) (not b!5693659) (not b!5693556) (not b!5693380) (not b!5693618) (not bm!433264) (not b!5693650) (not b!5693670) (not bm!433300) (not b!5693497) (not b!5693551) (not bm!433296) (not b!5693666) (not b!5693417) (not d!1796880) (not bm!433303) (not b!5693494) (not b!5693646) (not b!5693529) (not b!5693591) (not b!5693601) (not d!1796864) (not bm!433260) (not bm!433290) (not d!1796820) (not d!1796826) (not bs!1327412) (not b!5693613) (not d!1796830) (not b!5693384) (not b!5693638) (not b!5693625) (not b!5693644) (not d!1796838) (not bs!1327413) (not b!5693639) (not b!5693557) (not bm!433301) (not d!1796758) (not b!5693668) (not d!1796846) (not d!1796852) (not b!5693565) (not d!1796876) (not b!5693647) (not b!5693421) (not b!5693651) (not b!5693420) (not d!1796866) (not b!5693552) tp_is_empty!40623 (not d!1796818) (not b!5693674) (not b!5693609) (not b!5693119) (not d!1796896) (not b!5693477) (not d!1796760) (not d!1796842) (not b!5693606) (not b!5693652) (not b!5693673) (not bs!1327414) (not b!5693445) (not b!5693589) (not d!1796848) (not b!5693620) (not bm!433286) (not b!5693475) (not b!5693479) (not d!1796882) (not d!1796874) (not b!5693596) (not b!5693425) (not setNonEmpty!38109) (not b!5693553) (not bm!433305) (not d!1796824) (not b!5693480) (not b!5693616) (not d!1796728) (not d!1796828) (not d!1796794) (not b!5693615) (not b_lambda!215249) (not b!5693672) (not b!5693669) (not b!5693489) (not bm!433304) (not d!1796780) (not b!5693624) (not b!5693679) (not b!5693611) (not b!5693599) (not b!5693486) (not b!5693648) (not d!1796872) (not b_lambda!215253) (not d!1796888) (not d!1796862) (not b!5693637) (not d!1796730) (not b!5693474) (not d!1796884) (not bs!1327411) (not b!5693423) (not b!5693115) (not b!5693554) (not d!1796890) (not d!1796840) (not bm!433271) (not d!1796834) (not bm!433291) (not b!5693117) (not b!5693495) (not d!1796836) (not b!5693594) (not d!1796856) (not b!5693576) (not d!1796832) (not b!5693614) (not b_lambda!215251) (not b_lambda!215247) (not bm!433297) (not b!5693114) (not b!5693120) (not b!5693118))
(check-sat)
