; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573562 () Bool)

(assert start!573562)

(declare-fun b!5484816 () Bool)

(assert (=> b!5484816 true))

(assert (=> b!5484816 true))

(declare-fun lambda!293199 () Int)

(declare-fun lambda!293198 () Int)

(assert (=> b!5484816 (not (= lambda!293199 lambda!293198))))

(assert (=> b!5484816 true))

(assert (=> b!5484816 true))

(declare-fun lambda!293200 () Int)

(assert (=> b!5484816 (not (= lambda!293200 lambda!293198))))

(assert (=> b!5484816 (not (= lambda!293200 lambda!293199))))

(assert (=> b!5484816 true))

(assert (=> b!5484816 true))

(declare-fun b!5484820 () Bool)

(assert (=> b!5484820 true))

(declare-fun b!5484811 () Bool)

(assert (=> b!5484811 true))

(declare-fun setIsEmpty!36105 () Bool)

(declare-fun setRes!36105 () Bool)

(assert (=> setIsEmpty!36105 setRes!36105))

(declare-fun b!5484800 () Bool)

(declare-fun res!2338875 () Bool)

(declare-fun e!3394173 () Bool)

(assert (=> b!5484800 (=> res!2338875 e!3394173)))

(declare-datatypes ((C!31036 0))(
  ( (C!31037 (val!25220 Int)) )
))
(declare-datatypes ((Regex!15383 0))(
  ( (ElementMatch!15383 (c!958323 C!31036)) (Concat!24228 (regOne!31278 Regex!15383) (regTwo!31278 Regex!15383)) (EmptyExpr!15383) (Star!15383 (reg!15712 Regex!15383)) (EmptyLang!15383) (Union!15383 (regOne!31279 Regex!15383) (regTwo!31279 Regex!15383)) )
))
(declare-fun r!7292 () Regex!15383)

(declare-datatypes ((List!62448 0))(
  ( (Nil!62324) (Cons!62324 (h!68772 Regex!15383) (t!375679 List!62448)) )
))
(declare-datatypes ((Context!9534 0))(
  ( (Context!9535 (exprs!5267 List!62448)) )
))
(declare-datatypes ((List!62449 0))(
  ( (Nil!62325) (Cons!62325 (h!68773 Context!9534) (t!375680 List!62449)) )
))
(declare-fun zl!343 () List!62449)

(declare-fun generalisedConcat!1052 (List!62448) Regex!15383)

(assert (=> b!5484800 (= res!2338875 (not (= r!7292 (generalisedConcat!1052 (exprs!5267 (h!68773 zl!343))))))))

(declare-fun b!5484801 () Bool)

(declare-fun res!2338874 () Bool)

(declare-fun e!3394159 () Bool)

(assert (=> b!5484801 (=> (not res!2338874) (not e!3394159))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9534))

(declare-fun toList!9167 ((InoxSet Context!9534)) List!62449)

(assert (=> b!5484801 (= res!2338874 (= (toList!9167 z!1189) zl!343))))

(declare-fun b!5484802 () Bool)

(declare-fun res!2338880 () Bool)

(declare-fun e!3394168 () Bool)

(assert (=> b!5484802 (=> res!2338880 e!3394168)))

(declare-fun lt!2240649 () Regex!15383)

(assert (=> b!5484802 (= res!2338880 (or (not (= lt!2240649 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5484803 () Bool)

(declare-fun e!3394157 () Bool)

(declare-fun e!3394163 () Bool)

(assert (=> b!5484803 (= e!3394157 e!3394163)))

(declare-fun res!2338872 () Bool)

(assert (=> b!5484803 (=> res!2338872 e!3394163)))

(declare-fun lt!2240645 () List!62449)

(declare-fun unfocusZipper!1125 (List!62449) Regex!15383)

(assert (=> b!5484803 (= res!2338872 (not (= (unfocusZipper!1125 lt!2240645) r!7292)))))

(declare-fun lt!2240677 () Context!9534)

(assert (=> b!5484803 (= lt!2240645 (Cons!62325 lt!2240677 Nil!62325))))

(declare-fun res!2338878 () Bool)

(assert (=> start!573562 (=> (not res!2338878) (not e!3394159))))

(declare-fun validRegex!7119 (Regex!15383) Bool)

(assert (=> start!573562 (= res!2338878 (validRegex!7119 r!7292))))

(assert (=> start!573562 e!3394159))

(declare-fun e!3394162 () Bool)

(assert (=> start!573562 e!3394162))

(declare-fun condSetEmpty!36105 () Bool)

(assert (=> start!573562 (= condSetEmpty!36105 (= z!1189 ((as const (Array Context!9534 Bool)) false)))))

(assert (=> start!573562 setRes!36105))

(declare-fun e!3394165 () Bool)

(assert (=> start!573562 e!3394165))

(declare-fun e!3394166 () Bool)

(assert (=> start!573562 e!3394166))

(declare-fun b!5484804 () Bool)

(declare-fun e!3394158 () Bool)

(assert (=> b!5484804 (= e!3394158 true)))

(declare-datatypes ((Unit!155218 0))(
  ( (Unit!155219) )
))
(declare-fun lt!2240675 () Unit!155218)

(declare-fun e!3394160 () Unit!155218)

(assert (=> b!5484804 (= lt!2240675 e!3394160)))

(declare-fun c!958322 () Bool)

(declare-datatypes ((List!62450 0))(
  ( (Nil!62326) (Cons!62326 (h!68774 C!31036) (t!375681 List!62450)) )
))
(declare-fun s!2326 () List!62450)

(declare-fun matchZipper!1601 ((InoxSet Context!9534) List!62450) Bool)

(assert (=> b!5484804 (= c!958322 (matchZipper!1601 z!1189 s!2326))))

(declare-fun b!5484805 () Bool)

(declare-fun e!3394170 () Bool)

(declare-fun lt!2240656 () Bool)

(assert (=> b!5484805 (= e!3394170 lt!2240656)))

(declare-fun b!5484806 () Bool)

(declare-fun e!3394172 () Bool)

(declare-fun tp!1506983 () Bool)

(assert (=> b!5484806 (= e!3394172 tp!1506983)))

(declare-fun b!5484807 () Bool)

(declare-fun tp!1506980 () Bool)

(declare-fun tp!1506984 () Bool)

(assert (=> b!5484807 (= e!3394162 (and tp!1506980 tp!1506984))))

(declare-fun b!5484808 () Bool)

(declare-fun e!3394161 () Bool)

(declare-fun e!3394169 () Bool)

(assert (=> b!5484808 (= e!3394161 e!3394169)))

(declare-fun res!2338882 () Bool)

(assert (=> b!5484808 (=> res!2338882 e!3394169)))

(declare-fun lt!2240654 () (InoxSet Context!9534))

(declare-fun lt!2240653 () (InoxSet Context!9534))

(declare-fun derivationStepZipper!1578 ((InoxSet Context!9534) C!31036) (InoxSet Context!9534))

(assert (=> b!5484808 (= res!2338882 (not (= lt!2240653 (derivationStepZipper!1578 lt!2240654 (h!68774 s!2326)))))))

(declare-fun lambda!293201 () Int)

(declare-fun flatMap!1086 ((InoxSet Context!9534) Int) (InoxSet Context!9534))

(declare-fun derivationStepZipperUp!735 (Context!9534 C!31036) (InoxSet Context!9534))

(assert (=> b!5484808 (= (flatMap!1086 lt!2240654 lambda!293201) (derivationStepZipperUp!735 lt!2240677 (h!68774 s!2326)))))

(declare-fun lt!2240660 () Unit!155218)

(declare-fun lemmaFlatMapOnSingletonSet!618 ((InoxSet Context!9534) Context!9534 Int) Unit!155218)

(assert (=> b!5484808 (= lt!2240660 (lemmaFlatMapOnSingletonSet!618 lt!2240654 lt!2240677 lambda!293201))))

(declare-fun lt!2240680 () Context!9534)

(declare-fun lt!2240661 () (InoxSet Context!9534))

(assert (=> b!5484808 (= (flatMap!1086 lt!2240661 lambda!293201) (derivationStepZipperUp!735 lt!2240680 (h!68774 s!2326)))))

(declare-fun lt!2240667 () Unit!155218)

(assert (=> b!5484808 (= lt!2240667 (lemmaFlatMapOnSingletonSet!618 lt!2240661 lt!2240680 lambda!293201))))

(declare-fun lt!2240669 () (InoxSet Context!9534))

(assert (=> b!5484808 (= lt!2240669 (derivationStepZipperUp!735 lt!2240677 (h!68774 s!2326)))))

(declare-fun lt!2240672 () (InoxSet Context!9534))

(assert (=> b!5484808 (= lt!2240672 (derivationStepZipperUp!735 lt!2240680 (h!68774 s!2326)))))

(assert (=> b!5484808 (= lt!2240654 (store ((as const (Array Context!9534 Bool)) false) lt!2240677 true))))

(assert (=> b!5484808 (= lt!2240661 (store ((as const (Array Context!9534 Bool)) false) lt!2240680 true))))

(declare-fun lt!2240668 () List!62448)

(assert (=> b!5484808 (= lt!2240680 (Context!9535 lt!2240668))))

(assert (=> b!5484808 (= lt!2240668 (Cons!62324 (reg!15712 r!7292) Nil!62324))))

(declare-fun b!5484809 () Bool)

(declare-fun tp_is_empty!40019 () Bool)

(declare-fun tp!1506978 () Bool)

(assert (=> b!5484809 (= e!3394166 (and tp_is_empty!40019 tp!1506978))))

(declare-fun b!5484810 () Bool)

(declare-fun res!2338864 () Bool)

(assert (=> b!5484810 (=> res!2338864 e!3394173)))

(get-info :version)

(assert (=> b!5484810 (= res!2338864 (not ((_ is Cons!62324) (exprs!5267 (h!68773 zl!343)))))))

(declare-fun Unit!155220 () Unit!155218)

(assert (=> b!5484811 (= e!3394160 Unit!155220)))

(declare-fun lambda!293202 () Int)

(declare-fun lt!2240681 () Unit!155218)

(declare-fun lemmaMapOnSingletonSet!114 ((InoxSet Context!9534) Context!9534 Int) Unit!155218)

(assert (=> b!5484811 (= lt!2240681 (lemmaMapOnSingletonSet!114 lt!2240661 lt!2240680 lambda!293202))))

(declare-fun lt!2240684 () List!62448)

(declare-fun lambda!293203 () Int)

(declare-fun lt!2240671 () Unit!155218)

(declare-fun lemmaConcatPreservesForall!284 (List!62448 List!62448 Int) Unit!155218)

(assert (=> b!5484811 (= lt!2240671 (lemmaConcatPreservesForall!284 lt!2240668 lt!2240684 lambda!293203))))

(declare-fun map!14331 ((InoxSet Context!9534) Int) (InoxSet Context!9534))

(declare-fun ++!13739 (List!62448 List!62448) List!62448)

(assert (=> b!5484811 (= (map!14331 lt!2240661 lambda!293202) (store ((as const (Array Context!9534 Bool)) false) (Context!9535 (++!13739 lt!2240668 lt!2240684)) true))))

(declare-fun lt!2240685 () Unit!155218)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!110 ((InoxSet Context!9534) Context!9534 List!62450) Unit!155218)

(assert (=> b!5484811 (= lt!2240685 (lemmaConcatZipperMatchesStringThenFindConcatDefined!110 lt!2240661 lt!2240677 s!2326))))

(declare-datatypes ((tuple2!65160 0))(
  ( (tuple2!65161 (_1!35883 List!62450) (_2!35883 List!62450)) )
))
(declare-datatypes ((Option!15492 0))(
  ( (None!15491) (Some!15491 (v!51520 tuple2!65160)) )
))
(declare-fun lt!2240651 () Option!15492)

(declare-fun findConcatSeparationZippers!110 ((InoxSet Context!9534) (InoxSet Context!9534) List!62450 List!62450 List!62450) Option!15492)

(assert (=> b!5484811 (= lt!2240651 (findConcatSeparationZippers!110 lt!2240661 lt!2240654 Nil!62326 s!2326 s!2326))))

(declare-fun isDefined!12195 (Option!15492) Bool)

(assert (=> b!5484811 (isDefined!12195 lt!2240651)))

(declare-fun lt!2240663 () tuple2!65160)

(declare-fun get!21499 (Option!15492) tuple2!65160)

(assert (=> b!5484811 (= lt!2240663 (get!21499 lt!2240651))))

(declare-fun lt!2240670 () Unit!155218)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!124 (Context!9534 Context!9534 List!62450 List!62450) Unit!155218)

(assert (=> b!5484811 (= lt!2240670 (lemmaConcatenateContextMatchesConcatOfStrings!124 lt!2240680 lt!2240677 (_1!35883 lt!2240663) (_2!35883 lt!2240663)))))

(declare-fun lt!2240673 () Unit!155218)

(assert (=> b!5484811 (= lt!2240673 (lemmaConcatPreservesForall!284 lt!2240668 lt!2240684 lambda!293203))))

(declare-fun lt!2240664 () List!62448)

(assert (=> b!5484811 (= lt!2240664 (++!13739 lt!2240668 lt!2240684))))

(declare-fun lt!2240665 () List!62450)

(declare-fun ++!13740 (List!62450 List!62450) List!62450)

(assert (=> b!5484811 (= lt!2240665 (++!13740 (_1!35883 lt!2240663) (_2!35883 lt!2240663)))))

(assert (=> b!5484811 (matchZipper!1601 (store ((as const (Array Context!9534 Bool)) false) (Context!9535 lt!2240664) true) lt!2240665)))

(declare-fun lt!2240646 () List!62449)

(declare-fun lt!2240650 () Unit!155218)

(declare-fun theoremZipperRegexEquiv!591 ((InoxSet Context!9534) List!62449 Regex!15383 List!62450) Unit!155218)

(assert (=> b!5484811 (= lt!2240650 (theoremZipperRegexEquiv!591 lt!2240661 lt!2240646 (reg!15712 r!7292) (_1!35883 lt!2240663)))))

(declare-fun matchR!7568 (Regex!15383 List!62450) Bool)

(assert (=> b!5484811 (= (matchR!7568 (reg!15712 r!7292) (_1!35883 lt!2240663)) (matchZipper!1601 lt!2240661 (_1!35883 lt!2240663)))))

(declare-fun lt!2240662 () Unit!155218)

(assert (=> b!5484811 (= lt!2240662 (theoremZipperRegexEquiv!591 lt!2240654 lt!2240645 r!7292 (_2!35883 lt!2240663)))))

(assert (=> b!5484811 (= (matchR!7568 r!7292 (_2!35883 lt!2240663)) (matchZipper!1601 lt!2240654 (_2!35883 lt!2240663)))))

(declare-fun lt!2240687 () Unit!155218)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!262 (Regex!15383 Regex!15383 List!62450 List!62450) Unit!155218)

(assert (=> b!5484811 (= lt!2240687 (lemmaTwoRegexMatchThenConcatMatchesConcatString!262 (reg!15712 r!7292) r!7292 (_1!35883 lt!2240663) (_2!35883 lt!2240663)))))

(declare-fun res!2338873 () Bool)

(declare-fun lt!2240659 () Regex!15383)

(assert (=> b!5484811 (= res!2338873 (matchR!7568 lt!2240659 lt!2240665))))

(declare-fun e!3394167 () Bool)

(assert (=> b!5484811 (=> (not res!2338873) (not e!3394167))))

(assert (=> b!5484811 e!3394167))

(declare-fun b!5484812 () Bool)

(declare-fun e!3394175 () Bool)

(assert (=> b!5484812 (= e!3394175 e!3394168)))

(declare-fun res!2338869 () Bool)

(assert (=> b!5484812 (=> res!2338869 e!3394168)))

(declare-fun derivationStepZipperDown!809 (Regex!15383 Context!9534 C!31036) (InoxSet Context!9534))

(assert (=> b!5484812 (= res!2338869 (not (= lt!2240653 (derivationStepZipperDown!809 (reg!15712 r!7292) lt!2240677 (h!68774 s!2326)))))))

(assert (=> b!5484812 (= lt!2240677 (Context!9535 lt!2240684))))

(declare-fun lt!2240647 () Context!9534)

(declare-fun lt!2240652 () (InoxSet Context!9534))

(assert (=> b!5484812 (= (flatMap!1086 lt!2240652 lambda!293201) (derivationStepZipperUp!735 lt!2240647 (h!68774 s!2326)))))

(declare-fun lt!2240686 () Unit!155218)

(assert (=> b!5484812 (= lt!2240686 (lemmaFlatMapOnSingletonSet!618 lt!2240652 lt!2240647 lambda!293201))))

(declare-fun lt!2240666 () (InoxSet Context!9534))

(assert (=> b!5484812 (= lt!2240666 (derivationStepZipperUp!735 lt!2240647 (h!68774 s!2326)))))

(assert (=> b!5484812 (= lt!2240652 (store ((as const (Array Context!9534 Bool)) false) lt!2240647 true))))

(assert (=> b!5484812 (= lt!2240647 (Context!9535 (Cons!62324 (reg!15712 r!7292) lt!2240684)))))

(assert (=> b!5484812 (= lt!2240684 (Cons!62324 r!7292 Nil!62324))))

(declare-fun tp!1506986 () Bool)

(declare-fun b!5484813 () Bool)

(declare-fun inv!81704 (Context!9534) Bool)

(assert (=> b!5484813 (= e!3394165 (and (inv!81704 (h!68773 zl!343)) e!3394172 tp!1506986))))

(declare-fun b!5484814 () Bool)

(declare-fun tp!1506985 () Bool)

(assert (=> b!5484814 (= e!3394162 tp!1506985)))

(declare-fun b!5484815 () Bool)

(declare-fun e!3394174 () Bool)

(declare-fun e!3394171 () Bool)

(assert (=> b!5484815 (= e!3394174 e!3394171)))

(declare-fun res!2338867 () Bool)

(assert (=> b!5484815 (=> res!2338867 e!3394171)))

(declare-fun lt!2240658 () (InoxSet Context!9534))

(declare-fun lt!2240683 () (InoxSet Context!9534))

(assert (=> b!5484815 (= res!2338867 (not (= lt!2240658 lt!2240683)))))

(assert (=> b!5484815 (= lt!2240683 (derivationStepZipperDown!809 r!7292 (Context!9535 Nil!62324) (h!68774 s!2326)))))

(assert (=> b!5484815 (= lt!2240658 (derivationStepZipperUp!735 (Context!9535 (Cons!62324 r!7292 Nil!62324)) (h!68774 s!2326)))))

(assert (=> b!5484815 (= lt!2240653 (derivationStepZipper!1578 z!1189 (h!68774 s!2326)))))

(assert (=> b!5484816 (= e!3394173 e!3394174)))

(declare-fun res!2338879 () Bool)

(assert (=> b!5484816 (=> res!2338879 e!3394174)))

(declare-fun lt!2240674 () Bool)

(assert (=> b!5484816 (= res!2338879 (not (= lt!2240674 e!3394170)))))

(declare-fun res!2338862 () Bool)

(assert (=> b!5484816 (=> res!2338862 e!3394170)))

(declare-fun isEmpty!34266 (List!62450) Bool)

(assert (=> b!5484816 (= res!2338862 (isEmpty!34266 s!2326))))

(declare-fun Exists!2562 (Int) Bool)

(assert (=> b!5484816 (= (Exists!2562 lambda!293198) (Exists!2562 lambda!293200))))

(declare-fun lt!2240648 () Unit!155218)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1212 (Regex!15383 Regex!15383 List!62450) Unit!155218)

(assert (=> b!5484816 (= lt!2240648 (lemmaExistCutMatchRandMatchRSpecEquivalent!1212 (reg!15712 r!7292) r!7292 s!2326))))

(assert (=> b!5484816 (= (Exists!2562 lambda!293198) (Exists!2562 lambda!293199))))

(declare-fun lt!2240679 () Unit!155218)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!536 (Regex!15383 List!62450) Unit!155218)

(assert (=> b!5484816 (= lt!2240679 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!536 (reg!15712 r!7292) s!2326))))

(assert (=> b!5484816 (= lt!2240656 (Exists!2562 lambda!293198))))

(declare-fun findConcatSeparation!1906 (Regex!15383 Regex!15383 List!62450 List!62450 List!62450) Option!15492)

(assert (=> b!5484816 (= lt!2240656 (isDefined!12195 (findConcatSeparation!1906 (reg!15712 r!7292) r!7292 Nil!62326 s!2326 s!2326)))))

(declare-fun lt!2240682 () Unit!155218)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1670 (Regex!15383 Regex!15383 List!62450) Unit!155218)

(assert (=> b!5484816 (= lt!2240682 (lemmaFindConcatSeparationEquivalentToExists!1670 (reg!15712 r!7292) r!7292 s!2326))))

(declare-fun b!5484817 () Bool)

(assert (=> b!5484817 (= e!3394162 tp_is_empty!40019)))

(declare-fun b!5484818 () Bool)

(declare-fun tp!1506982 () Bool)

(declare-fun tp!1506979 () Bool)

(assert (=> b!5484818 (= e!3394162 (and tp!1506982 tp!1506979))))

(declare-fun b!5484819 () Bool)

(declare-fun Unit!155221 () Unit!155218)

(assert (=> b!5484819 (= e!3394160 Unit!155221)))

(assert (=> b!5484820 (= e!3394171 e!3394175)))

(declare-fun res!2338881 () Bool)

(assert (=> b!5484820 (=> res!2338881 e!3394175)))

(assert (=> b!5484820 (= res!2338881 (not (= lt!2240653 lt!2240683)))))

(assert (=> b!5484820 (= (flatMap!1086 z!1189 lambda!293201) (derivationStepZipperUp!735 (h!68773 zl!343) (h!68774 s!2326)))))

(declare-fun lt!2240655 () Unit!155218)

(assert (=> b!5484820 (= lt!2240655 (lemmaFlatMapOnSingletonSet!618 z!1189 (h!68773 zl!343) lambda!293201))))

(declare-fun b!5484821 () Bool)

(declare-fun e!3394164 () Bool)

(assert (=> b!5484821 (= e!3394159 e!3394164)))

(declare-fun res!2338865 () Bool)

(assert (=> b!5484821 (=> (not res!2338865) (not e!3394164))))

(assert (=> b!5484821 (= res!2338865 (= r!7292 lt!2240649))))

(assert (=> b!5484821 (= lt!2240649 (unfocusZipper!1125 zl!343))))

(declare-fun b!5484822 () Bool)

(assert (=> b!5484822 (= e!3394163 e!3394158)))

(declare-fun res!2338860 () Bool)

(assert (=> b!5484822 (=> res!2338860 e!3394158)))

(declare-fun lt!2240678 () Bool)

(assert (=> b!5484822 (= res!2338860 lt!2240678)))

(declare-fun matchRSpec!2486 (Regex!15383 List!62450) Bool)

(assert (=> b!5484822 (= lt!2240678 (matchRSpec!2486 lt!2240659 s!2326))))

(assert (=> b!5484822 (= lt!2240678 (matchR!7568 lt!2240659 s!2326))))

(declare-fun lt!2240657 () Unit!155218)

(declare-fun mainMatchTheorem!2486 (Regex!15383 List!62450) Unit!155218)

(assert (=> b!5484822 (= lt!2240657 (mainMatchTheorem!2486 lt!2240659 s!2326))))

(declare-fun b!5484823 () Bool)

(assert (=> b!5484823 (= e!3394164 (not e!3394173))))

(declare-fun res!2338876 () Bool)

(assert (=> b!5484823 (=> res!2338876 e!3394173)))

(assert (=> b!5484823 (= res!2338876 (not ((_ is Cons!62325) zl!343)))))

(assert (=> b!5484823 (= lt!2240674 (matchRSpec!2486 r!7292 s!2326))))

(assert (=> b!5484823 (= lt!2240674 (matchR!7568 r!7292 s!2326))))

(declare-fun lt!2240676 () Unit!155218)

(assert (=> b!5484823 (= lt!2240676 (mainMatchTheorem!2486 r!7292 s!2326))))

(declare-fun b!5484824 () Bool)

(declare-fun res!2338863 () Bool)

(assert (=> b!5484824 (=> res!2338863 e!3394168)))

(assert (=> b!5484824 (= res!2338863 (not (= (matchZipper!1601 lt!2240652 s!2326) (matchZipper!1601 (derivationStepZipper!1578 lt!2240652 (h!68774 s!2326)) (t!375681 s!2326)))))))

(declare-fun b!5484825 () Bool)

(declare-fun res!2338868 () Bool)

(assert (=> b!5484825 (=> res!2338868 e!3394173)))

(assert (=> b!5484825 (= res!2338868 (or ((_ is EmptyExpr!15383) r!7292) ((_ is EmptyLang!15383) r!7292) ((_ is ElementMatch!15383) r!7292) ((_ is Union!15383) r!7292) ((_ is Concat!24228) r!7292)))))

(declare-fun b!5484826 () Bool)

(assert (=> b!5484826 (= e!3394168 e!3394161)))

(declare-fun res!2338866 () Bool)

(assert (=> b!5484826 (=> res!2338866 e!3394161)))

(assert (=> b!5484826 (= res!2338866 (not (= (unfocusZipper!1125 (Cons!62325 lt!2240647 Nil!62325)) lt!2240659)))))

(assert (=> b!5484826 (= lt!2240659 (Concat!24228 (reg!15712 r!7292) r!7292))))

(declare-fun b!5484827 () Bool)

(assert (=> b!5484827 (= e!3394169 e!3394157)))

(declare-fun res!2338870 () Bool)

(assert (=> b!5484827 (=> res!2338870 e!3394157)))

(assert (=> b!5484827 (= res!2338870 (not (= (unfocusZipper!1125 lt!2240646) (reg!15712 r!7292))))))

(assert (=> b!5484827 (= lt!2240646 (Cons!62325 lt!2240680 Nil!62325))))

(declare-fun b!5484828 () Bool)

(assert (=> b!5484828 (= e!3394167 false)))

(declare-fun b!5484829 () Bool)

(declare-fun res!2338877 () Bool)

(assert (=> b!5484829 (=> res!2338877 e!3394174)))

(assert (=> b!5484829 (= res!2338877 ((_ is Nil!62326) s!2326))))

(declare-fun e!3394176 () Bool)

(declare-fun setElem!36105 () Context!9534)

(declare-fun tp!1506987 () Bool)

(declare-fun setNonEmpty!36105 () Bool)

(assert (=> setNonEmpty!36105 (= setRes!36105 (and tp!1506987 (inv!81704 setElem!36105) e!3394176))))

(declare-fun setRest!36105 () (InoxSet Context!9534))

(assert (=> setNonEmpty!36105 (= z!1189 ((_ map or) (store ((as const (Array Context!9534 Bool)) false) setElem!36105 true) setRest!36105))))

(declare-fun b!5484830 () Bool)

(declare-fun tp!1506981 () Bool)

(assert (=> b!5484830 (= e!3394176 tp!1506981)))

(declare-fun b!5484831 () Bool)

(declare-fun res!2338861 () Bool)

(assert (=> b!5484831 (=> res!2338861 e!3394173)))

(declare-fun isEmpty!34267 (List!62449) Bool)

(assert (=> b!5484831 (= res!2338861 (not (isEmpty!34267 (t!375680 zl!343))))))

(declare-fun b!5484832 () Bool)

(declare-fun res!2338871 () Bool)

(assert (=> b!5484832 (=> res!2338871 e!3394173)))

(declare-fun generalisedUnion!1312 (List!62448) Regex!15383)

(declare-fun unfocusZipperList!825 (List!62449) List!62448)

(assert (=> b!5484832 (= res!2338871 (not (= r!7292 (generalisedUnion!1312 (unfocusZipperList!825 zl!343)))))))

(assert (= (and start!573562 res!2338878) b!5484801))

(assert (= (and b!5484801 res!2338874) b!5484821))

(assert (= (and b!5484821 res!2338865) b!5484823))

(assert (= (and b!5484823 (not res!2338876)) b!5484831))

(assert (= (and b!5484831 (not res!2338861)) b!5484800))

(assert (= (and b!5484800 (not res!2338875)) b!5484810))

(assert (= (and b!5484810 (not res!2338864)) b!5484832))

(assert (= (and b!5484832 (not res!2338871)) b!5484825))

(assert (= (and b!5484825 (not res!2338868)) b!5484816))

(assert (= (and b!5484816 (not res!2338862)) b!5484805))

(assert (= (and b!5484816 (not res!2338879)) b!5484829))

(assert (= (and b!5484829 (not res!2338877)) b!5484815))

(assert (= (and b!5484815 (not res!2338867)) b!5484820))

(assert (= (and b!5484820 (not res!2338881)) b!5484812))

(assert (= (and b!5484812 (not res!2338869)) b!5484824))

(assert (= (and b!5484824 (not res!2338863)) b!5484802))

(assert (= (and b!5484802 (not res!2338880)) b!5484826))

(assert (= (and b!5484826 (not res!2338866)) b!5484808))

(assert (= (and b!5484808 (not res!2338882)) b!5484827))

(assert (= (and b!5484827 (not res!2338870)) b!5484803))

(assert (= (and b!5484803 (not res!2338872)) b!5484822))

(assert (= (and b!5484822 (not res!2338860)) b!5484804))

(assert (= (and b!5484804 c!958322) b!5484811))

(assert (= (and b!5484804 (not c!958322)) b!5484819))

(assert (= (and b!5484811 res!2338873) b!5484828))

(assert (= (and start!573562 ((_ is ElementMatch!15383) r!7292)) b!5484817))

(assert (= (and start!573562 ((_ is Concat!24228) r!7292)) b!5484807))

(assert (= (and start!573562 ((_ is Star!15383) r!7292)) b!5484814))

(assert (= (and start!573562 ((_ is Union!15383) r!7292)) b!5484818))

(assert (= (and start!573562 condSetEmpty!36105) setIsEmpty!36105))

(assert (= (and start!573562 (not condSetEmpty!36105)) setNonEmpty!36105))

(assert (= setNonEmpty!36105 b!5484830))

(assert (= b!5484813 b!5484806))

(assert (= (and start!573562 ((_ is Cons!62325) zl!343)) b!5484813))

(assert (= (and start!573562 ((_ is Cons!62326) s!2326)) b!5484809))

(declare-fun m!6500304 () Bool)

(assert (=> b!5484831 m!6500304))

(declare-fun m!6500306 () Bool)

(assert (=> b!5484812 m!6500306))

(declare-fun m!6500308 () Bool)

(assert (=> b!5484812 m!6500308))

(declare-fun m!6500310 () Bool)

(assert (=> b!5484812 m!6500310))

(declare-fun m!6500312 () Bool)

(assert (=> b!5484812 m!6500312))

(declare-fun m!6500314 () Bool)

(assert (=> b!5484812 m!6500314))

(declare-fun m!6500316 () Bool)

(assert (=> start!573562 m!6500316))

(declare-fun m!6500318 () Bool)

(assert (=> b!5484824 m!6500318))

(declare-fun m!6500320 () Bool)

(assert (=> b!5484824 m!6500320))

(assert (=> b!5484824 m!6500320))

(declare-fun m!6500322 () Bool)

(assert (=> b!5484824 m!6500322))

(declare-fun m!6500324 () Bool)

(assert (=> b!5484823 m!6500324))

(declare-fun m!6500326 () Bool)

(assert (=> b!5484823 m!6500326))

(declare-fun m!6500328 () Bool)

(assert (=> b!5484823 m!6500328))

(declare-fun m!6500330 () Bool)

(assert (=> b!5484811 m!6500330))

(declare-fun m!6500332 () Bool)

(assert (=> b!5484811 m!6500332))

(declare-fun m!6500334 () Bool)

(assert (=> b!5484811 m!6500334))

(declare-fun m!6500336 () Bool)

(assert (=> b!5484811 m!6500336))

(declare-fun m!6500338 () Bool)

(assert (=> b!5484811 m!6500338))

(declare-fun m!6500340 () Bool)

(assert (=> b!5484811 m!6500340))

(declare-fun m!6500342 () Bool)

(assert (=> b!5484811 m!6500342))

(declare-fun m!6500344 () Bool)

(assert (=> b!5484811 m!6500344))

(assert (=> b!5484811 m!6500344))

(declare-fun m!6500346 () Bool)

(assert (=> b!5484811 m!6500346))

(declare-fun m!6500348 () Bool)

(assert (=> b!5484811 m!6500348))

(declare-fun m!6500350 () Bool)

(assert (=> b!5484811 m!6500350))

(declare-fun m!6500352 () Bool)

(assert (=> b!5484811 m!6500352))

(declare-fun m!6500354 () Bool)

(assert (=> b!5484811 m!6500354))

(declare-fun m!6500356 () Bool)

(assert (=> b!5484811 m!6500356))

(declare-fun m!6500358 () Bool)

(assert (=> b!5484811 m!6500358))

(declare-fun m!6500360 () Bool)

(assert (=> b!5484811 m!6500360))

(declare-fun m!6500362 () Bool)

(assert (=> b!5484811 m!6500362))

(declare-fun m!6500364 () Bool)

(assert (=> b!5484811 m!6500364))

(declare-fun m!6500366 () Bool)

(assert (=> b!5484811 m!6500366))

(declare-fun m!6500368 () Bool)

(assert (=> b!5484811 m!6500368))

(assert (=> b!5484811 m!6500354))

(declare-fun m!6500370 () Bool)

(assert (=> b!5484811 m!6500370))

(declare-fun m!6500372 () Bool)

(assert (=> setNonEmpty!36105 m!6500372))

(declare-fun m!6500374 () Bool)

(assert (=> b!5484816 m!6500374))

(declare-fun m!6500376 () Bool)

(assert (=> b!5484816 m!6500376))

(declare-fun m!6500378 () Bool)

(assert (=> b!5484816 m!6500378))

(declare-fun m!6500380 () Bool)

(assert (=> b!5484816 m!6500380))

(assert (=> b!5484816 m!6500378))

(declare-fun m!6500382 () Bool)

(assert (=> b!5484816 m!6500382))

(declare-fun m!6500384 () Bool)

(assert (=> b!5484816 m!6500384))

(assert (=> b!5484816 m!6500378))

(declare-fun m!6500386 () Bool)

(assert (=> b!5484816 m!6500386))

(assert (=> b!5484816 m!6500386))

(declare-fun m!6500388 () Bool)

(assert (=> b!5484816 m!6500388))

(declare-fun m!6500390 () Bool)

(assert (=> b!5484816 m!6500390))

(declare-fun m!6500392 () Bool)

(assert (=> b!5484815 m!6500392))

(declare-fun m!6500394 () Bool)

(assert (=> b!5484815 m!6500394))

(declare-fun m!6500396 () Bool)

(assert (=> b!5484815 m!6500396))

(declare-fun m!6500398 () Bool)

(assert (=> b!5484808 m!6500398))

(declare-fun m!6500400 () Bool)

(assert (=> b!5484808 m!6500400))

(declare-fun m!6500402 () Bool)

(assert (=> b!5484808 m!6500402))

(declare-fun m!6500404 () Bool)

(assert (=> b!5484808 m!6500404))

(declare-fun m!6500406 () Bool)

(assert (=> b!5484808 m!6500406))

(declare-fun m!6500408 () Bool)

(assert (=> b!5484808 m!6500408))

(declare-fun m!6500410 () Bool)

(assert (=> b!5484808 m!6500410))

(declare-fun m!6500412 () Bool)

(assert (=> b!5484808 m!6500412))

(declare-fun m!6500414 () Bool)

(assert (=> b!5484808 m!6500414))

(declare-fun m!6500416 () Bool)

(assert (=> b!5484827 m!6500416))

(declare-fun m!6500418 () Bool)

(assert (=> b!5484800 m!6500418))

(declare-fun m!6500420 () Bool)

(assert (=> b!5484832 m!6500420))

(assert (=> b!5484832 m!6500420))

(declare-fun m!6500422 () Bool)

(assert (=> b!5484832 m!6500422))

(declare-fun m!6500424 () Bool)

(assert (=> b!5484820 m!6500424))

(declare-fun m!6500426 () Bool)

(assert (=> b!5484820 m!6500426))

(declare-fun m!6500428 () Bool)

(assert (=> b!5484820 m!6500428))

(declare-fun m!6500430 () Bool)

(assert (=> b!5484813 m!6500430))

(declare-fun m!6500432 () Bool)

(assert (=> b!5484803 m!6500432))

(declare-fun m!6500434 () Bool)

(assert (=> b!5484801 m!6500434))

(declare-fun m!6500436 () Bool)

(assert (=> b!5484804 m!6500436))

(declare-fun m!6500438 () Bool)

(assert (=> b!5484826 m!6500438))

(declare-fun m!6500440 () Bool)

(assert (=> b!5484822 m!6500440))

(declare-fun m!6500442 () Bool)

(assert (=> b!5484822 m!6500442))

(declare-fun m!6500444 () Bool)

(assert (=> b!5484822 m!6500444))

(declare-fun m!6500446 () Bool)

(assert (=> b!5484821 m!6500446))

(check-sat (not b!5484816) (not b!5484830) (not b!5484806) (not start!573562) (not b!5484800) (not b!5484811) tp_is_empty!40019 (not b!5484815) (not b!5484822) (not b!5484832) (not b!5484809) (not b!5484807) (not setNonEmpty!36105) (not b!5484812) (not b!5484804) (not b!5484814) (not b!5484831) (not b!5484808) (not b!5484813) (not b!5484823) (not b!5484820) (not b!5484801) (not b!5484826) (not b!5484827) (not b!5484821) (not b!5484803) (not b!5484824) (not b!5484818))
(check-sat)
