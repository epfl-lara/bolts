; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!569768 () Bool)

(assert start!569768)

(declare-fun b!5428676 () Bool)

(assert (=> b!5428676 true))

(assert (=> b!5428676 true))

(declare-fun lambda!284765 () Int)

(declare-fun lambda!284764 () Int)

(assert (=> b!5428676 (not (= lambda!284765 lambda!284764))))

(assert (=> b!5428676 true))

(assert (=> b!5428676 true))

(declare-fun b!5428647 () Bool)

(assert (=> b!5428647 true))

(declare-fun b!5428636 () Bool)

(declare-fun res!2310135 () Bool)

(declare-fun e!3363913 () Bool)

(assert (=> b!5428636 (=> res!2310135 e!3363913)))

(declare-fun lt!2213597 () Bool)

(assert (=> b!5428636 (= res!2310135 (not lt!2213597))))

(declare-fun b!5428637 () Bool)

(declare-fun res!2310145 () Bool)

(declare-fun e!3363921 () Bool)

(assert (=> b!5428637 (=> res!2310145 e!3363921)))

(declare-datatypes ((C!30706 0))(
  ( (C!30707 (val!25055 Int)) )
))
(declare-datatypes ((Regex!15218 0))(
  ( (ElementMatch!15218 (c!947040 C!30706)) (Concat!24063 (regOne!30948 Regex!15218) (regTwo!30948 Regex!15218)) (EmptyExpr!15218) (Star!15218 (reg!15547 Regex!15218)) (EmptyLang!15218) (Union!15218 (regOne!30949 Regex!15218) (regTwo!30949 Regex!15218)) )
))
(declare-datatypes ((List!61953 0))(
  ( (Nil!61829) (Cons!61829 (h!68277 Regex!15218) (t!375178 List!61953)) )
))
(declare-datatypes ((Context!9204 0))(
  ( (Context!9205 (exprs!5102 List!61953)) )
))
(declare-datatypes ((List!61954 0))(
  ( (Nil!61830) (Cons!61830 (h!68278 Context!9204) (t!375179 List!61954)) )
))
(declare-fun zl!343 () List!61954)

(declare-fun lt!2213600 () Context!9204)

(declare-fun zipperDepth!159 (List!61954) Int)

(assert (=> b!5428637 (= res!2310145 (< (zipperDepth!159 zl!343) (zipperDepth!159 (Cons!61830 lt!2213600 Nil!61830))))))

(declare-fun e!3363928 () Bool)

(declare-fun b!5428638 () Bool)

(declare-fun tp!1497978 () Bool)

(declare-fun e!3363916 () Bool)

(declare-fun inv!81293 (Context!9204) Bool)

(assert (=> b!5428638 (= e!3363916 (and (inv!81293 (h!68278 zl!343)) e!3363928 tp!1497978))))

(declare-fun b!5428639 () Bool)

(declare-fun lambda!284767 () Int)

(declare-fun forall!14556 (List!61953 Int) Bool)

(assert (=> b!5428639 (= e!3363921 (forall!14556 (t!375178 (exprs!5102 (h!68278 zl!343))) lambda!284767))))

(declare-fun b!5428640 () Bool)

(declare-fun res!2310143 () Bool)

(declare-fun e!3363934 () Bool)

(assert (=> b!5428640 (=> res!2310143 e!3363934)))

(declare-fun lt!2213617 () Regex!15218)

(declare-fun r!7292 () Regex!15218)

(assert (=> b!5428640 (= res!2310143 (not (= lt!2213617 r!7292)))))

(declare-fun b!5428641 () Bool)

(declare-fun e!3363926 () Bool)

(declare-fun tp_is_empty!39689 () Bool)

(declare-fun tp!1497976 () Bool)

(assert (=> b!5428641 (= e!3363926 (and tp_is_empty!39689 tp!1497976))))

(declare-fun b!5428642 () Bool)

(declare-fun res!2310125 () Bool)

(declare-fun e!3363932 () Bool)

(assert (=> b!5428642 (=> res!2310125 e!3363932)))

(declare-fun isEmpty!33830 (List!61954) Bool)

(assert (=> b!5428642 (= res!2310125 (not (isEmpty!33830 (t!375179 zl!343))))))

(declare-fun b!5428643 () Bool)

(declare-fun res!2310128 () Bool)

(declare-fun e!3363924 () Bool)

(assert (=> b!5428643 (=> res!2310128 e!3363924)))

(assert (=> b!5428643 (= res!2310128 (or (is-Concat!24063 (regOne!30948 r!7292)) (not (is-Star!15218 (regOne!30948 r!7292)))))))

(declare-fun b!5428644 () Bool)

(declare-fun res!2310119 () Bool)

(declare-fun e!3363923 () Bool)

(assert (=> b!5428644 (=> res!2310119 e!3363923)))

(declare-fun lt!2213604 () (Set Context!9204))

(declare-datatypes ((List!61955 0))(
  ( (Nil!61831) (Cons!61831 (h!68279 C!30706) (t!375180 List!61955)) )
))
(declare-fun s!2326 () List!61955)

(declare-fun matchZipper!1462 ((Set Context!9204) List!61955) Bool)

(assert (=> b!5428644 (= res!2310119 (not (matchZipper!1462 lt!2213604 (t!375180 s!2326))))))

(declare-fun b!5428645 () Bool)

(declare-fun e!3363929 () Bool)

(assert (=> b!5428645 (= e!3363929 tp_is_empty!39689)))

(declare-fun b!5428646 () Bool)

(declare-fun res!2310137 () Bool)

(assert (=> b!5428646 (=> res!2310137 e!3363932)))

(declare-fun generalisedUnion!1147 (List!61953) Regex!15218)

(declare-fun unfocusZipperList!660 (List!61954) List!61953)

(assert (=> b!5428646 (= res!2310137 (not (= r!7292 (generalisedUnion!1147 (unfocusZipperList!660 zl!343)))))))

(declare-fun e!3363919 () Bool)

(assert (=> b!5428647 (= e!3363919 e!3363924)))

(declare-fun res!2310140 () Bool)

(assert (=> b!5428647 (=> res!2310140 e!3363924)))

(assert (=> b!5428647 (= res!2310140 (or (and (is-ElementMatch!15218 (regOne!30948 r!7292)) (= (c!947040 (regOne!30948 r!7292)) (h!68279 s!2326))) (is-Union!15218 (regOne!30948 r!7292))))))

(declare-datatypes ((Unit!154394 0))(
  ( (Unit!154395) )
))
(declare-fun lt!2213622 () Unit!154394)

(declare-fun e!3363915 () Unit!154394)

(assert (=> b!5428647 (= lt!2213622 e!3363915)))

(declare-fun c!947039 () Bool)

(assert (=> b!5428647 (= c!947039 lt!2213597)))

(declare-fun nullable!5387 (Regex!15218) Bool)

(assert (=> b!5428647 (= lt!2213597 (nullable!5387 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun lambda!284766 () Int)

(declare-fun z!1189 () (Set Context!9204))

(declare-fun flatMap!945 ((Set Context!9204) Int) (Set Context!9204))

(declare-fun derivationStepZipperUp!590 (Context!9204 C!30706) (Set Context!9204))

(assert (=> b!5428647 (= (flatMap!945 z!1189 lambda!284766) (derivationStepZipperUp!590 (h!68278 zl!343) (h!68279 s!2326)))))

(declare-fun lt!2213603 () Unit!154394)

(declare-fun lemmaFlatMapOnSingletonSet!477 ((Set Context!9204) Context!9204 Int) Unit!154394)

(assert (=> b!5428647 (= lt!2213603 (lemmaFlatMapOnSingletonSet!477 z!1189 (h!68278 zl!343) lambda!284766))))

(assert (=> b!5428647 (= lt!2213604 (derivationStepZipperUp!590 lt!2213600 (h!68279 s!2326)))))

(declare-fun lt!2213606 () (Set Context!9204))

(declare-fun derivationStepZipperDown!666 (Regex!15218 Context!9204 C!30706) (Set Context!9204))

(assert (=> b!5428647 (= lt!2213606 (derivationStepZipperDown!666 (h!68277 (exprs!5102 (h!68278 zl!343))) lt!2213600 (h!68279 s!2326)))))

(assert (=> b!5428647 (= lt!2213600 (Context!9205 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun lt!2213609 () (Set Context!9204))

(assert (=> b!5428647 (= lt!2213609 (derivationStepZipperUp!590 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343))))) (h!68279 s!2326)))))

(declare-fun b!5428648 () Bool)

(declare-fun e!3363917 () Bool)

(assert (=> b!5428648 (= e!3363917 (matchZipper!1462 lt!2213604 (t!375180 s!2326)))))

(declare-fun b!5428649 () Bool)

(declare-fun Unit!154396 () Unit!154394)

(assert (=> b!5428649 (= e!3363915 Unit!154396)))

(declare-fun lt!2213620 () Unit!154394)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!455 ((Set Context!9204) (Set Context!9204) List!61955) Unit!154394)

(assert (=> b!5428649 (= lt!2213620 (lemmaZipperConcatMatchesSameAsBothZippers!455 lt!2213606 lt!2213604 (t!375180 s!2326)))))

(declare-fun res!2310129 () Bool)

(assert (=> b!5428649 (= res!2310129 (matchZipper!1462 lt!2213606 (t!375180 s!2326)))))

(assert (=> b!5428649 (=> res!2310129 e!3363917)))

(assert (=> b!5428649 (= (matchZipper!1462 (set.union lt!2213606 lt!2213604) (t!375180 s!2326)) e!3363917)))

(declare-fun b!5428650 () Bool)

(declare-fun tp!1497975 () Bool)

(declare-fun tp!1497979 () Bool)

(assert (=> b!5428650 (= e!3363929 (and tp!1497975 tp!1497979))))

(declare-fun b!5428651 () Bool)

(declare-fun res!2310133 () Bool)

(assert (=> b!5428651 (=> res!2310133 e!3363919)))

(declare-fun isEmpty!33831 (List!61953) Bool)

(assert (=> b!5428651 (= res!2310133 (isEmpty!33831 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5428652 () Bool)

(declare-fun e!3363931 () Bool)

(declare-fun tp!1497971 () Bool)

(assert (=> b!5428652 (= e!3363931 tp!1497971)))

(declare-fun b!5428653 () Bool)

(declare-fun res!2310131 () Bool)

(assert (=> b!5428653 (=> res!2310131 e!3363932)))

(declare-fun generalisedConcat!887 (List!61953) Regex!15218)

(assert (=> b!5428653 (= res!2310131 (not (= r!7292 (generalisedConcat!887 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428654 () Bool)

(declare-fun e!3363922 () Bool)

(declare-fun e!3363914 () Bool)

(assert (=> b!5428654 (= e!3363922 e!3363914)))

(declare-fun res!2310142 () Bool)

(assert (=> b!5428654 (=> res!2310142 e!3363914)))

(declare-fun lt!2213602 () Context!9204)

(declare-fun unfocusZipper!960 (List!61954) Regex!15218)

(assert (=> b!5428654 (= res!2310142 (not (= (unfocusZipper!960 (Cons!61830 lt!2213602 Nil!61830)) (reg!15547 (regOne!30948 r!7292)))))))

(declare-fun lt!2213615 () Context!9204)

(declare-fun lt!2213594 () (Set Context!9204))

(assert (=> b!5428654 (= (flatMap!945 lt!2213594 lambda!284766) (derivationStepZipperUp!590 lt!2213615 (h!68279 s!2326)))))

(declare-fun lt!2213591 () Unit!154394)

(assert (=> b!5428654 (= lt!2213591 (lemmaFlatMapOnSingletonSet!477 lt!2213594 lt!2213615 lambda!284766))))

(declare-fun lt!2213618 () (Set Context!9204))

(assert (=> b!5428654 (= (flatMap!945 lt!2213618 lambda!284766) (derivationStepZipperUp!590 lt!2213602 (h!68279 s!2326)))))

(declare-fun lt!2213621 () Unit!154394)

(assert (=> b!5428654 (= lt!2213621 (lemmaFlatMapOnSingletonSet!477 lt!2213618 lt!2213602 lambda!284766))))

(declare-fun lt!2213598 () (Set Context!9204))

(assert (=> b!5428654 (= lt!2213598 (derivationStepZipperUp!590 lt!2213615 (h!68279 s!2326)))))

(declare-fun lt!2213607 () (Set Context!9204))

(assert (=> b!5428654 (= lt!2213607 (derivationStepZipperUp!590 lt!2213602 (h!68279 s!2326)))))

(assert (=> b!5428654 (= lt!2213594 (set.insert lt!2213615 (as set.empty (Set Context!9204))))))

(assert (=> b!5428654 (= lt!2213618 (set.insert lt!2213602 (as set.empty (Set Context!9204))))))

(assert (=> b!5428654 (= lt!2213602 (Context!9205 (Cons!61829 (reg!15547 (regOne!30948 r!7292)) Nil!61829)))))

(declare-fun b!5428655 () Bool)

(declare-fun res!2310146 () Bool)

(assert (=> b!5428655 (=> res!2310146 e!3363932)))

(assert (=> b!5428655 (= res!2310146 (not (is-Cons!61829 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5428656 () Bool)

(declare-fun e!3363918 () Bool)

(assert (=> b!5428656 (= e!3363918 e!3363922)))

(declare-fun res!2310117 () Bool)

(assert (=> b!5428656 (=> res!2310117 e!3363922)))

(declare-fun lt!2213596 () Context!9204)

(declare-fun lt!2213616 () Regex!15218)

(assert (=> b!5428656 (= res!2310117 (not (= (unfocusZipper!960 (Cons!61830 lt!2213596 Nil!61830)) lt!2213616)))))

(declare-fun lt!2213605 () Regex!15218)

(assert (=> b!5428656 (= lt!2213616 (Concat!24063 (reg!15547 (regOne!30948 r!7292)) lt!2213605))))

(declare-fun b!5428657 () Bool)

(declare-fun tp!1497977 () Bool)

(declare-fun tp!1497972 () Bool)

(assert (=> b!5428657 (= e!3363929 (and tp!1497977 tp!1497972))))

(declare-fun b!5428658 () Bool)

(assert (=> b!5428658 (= e!3363913 e!3363923)))

(declare-fun res!2310134 () Bool)

(assert (=> b!5428658 (=> res!2310134 e!3363923)))

(declare-fun e!3363920 () Bool)

(assert (=> b!5428658 (= res!2310134 e!3363920)))

(declare-fun res!2310139 () Bool)

(assert (=> b!5428658 (=> (not res!2310139) (not e!3363920))))

(declare-fun lt!2213587 () Bool)

(assert (=> b!5428658 (= res!2310139 (not lt!2213587))))

(assert (=> b!5428658 (= lt!2213587 (matchZipper!1462 lt!2213606 (t!375180 s!2326)))))

(declare-fun b!5428659 () Bool)

(declare-fun Unit!154397 () Unit!154394)

(assert (=> b!5428659 (= e!3363915 Unit!154397)))

(declare-fun b!5428660 () Bool)

(declare-fun res!2310147 () Bool)

(assert (=> b!5428660 (=> res!2310147 e!3363921)))

(declare-fun regexDepth!174 (Regex!15218) Int)

(assert (=> b!5428660 (= res!2310147 (< (regexDepth!174 r!7292) (regexDepth!174 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343)))))))))

(declare-fun b!5428661 () Bool)

(declare-fun e!3363930 () Bool)

(assert (=> b!5428661 (= e!3363930 e!3363934)))

(declare-fun res!2310127 () Bool)

(assert (=> b!5428661 (=> res!2310127 e!3363934)))

(declare-fun lt!2213588 () (Set Context!9204))

(declare-fun lt!2213590 () (Set Context!9204))

(assert (=> b!5428661 (= res!2310127 (not (= lt!2213588 lt!2213590)))))

(declare-fun lt!2213592 () (Set Context!9204))

(assert (=> b!5428661 (= (flatMap!945 lt!2213592 lambda!284766) (derivationStepZipperUp!590 lt!2213596 (h!68279 s!2326)))))

(declare-fun lt!2213612 () Unit!154394)

(assert (=> b!5428661 (= lt!2213612 (lemmaFlatMapOnSingletonSet!477 lt!2213592 lt!2213596 lambda!284766))))

(declare-fun lt!2213611 () (Set Context!9204))

(assert (=> b!5428661 (= lt!2213611 (derivationStepZipperUp!590 lt!2213596 (h!68279 s!2326)))))

(declare-fun derivationStepZipper!1457 ((Set Context!9204) C!30706) (Set Context!9204))

(assert (=> b!5428661 (= lt!2213588 (derivationStepZipper!1457 lt!2213592 (h!68279 s!2326)))))

(assert (=> b!5428661 (= lt!2213592 (set.insert lt!2213596 (as set.empty (Set Context!9204))))))

(declare-fun lt!2213614 () List!61953)

(assert (=> b!5428661 (= lt!2213596 (Context!9205 (Cons!61829 (reg!15547 (regOne!30948 r!7292)) lt!2213614)))))

(declare-fun b!5428662 () Bool)

(declare-fun res!2310130 () Bool)

(assert (=> b!5428662 (=> res!2310130 e!3363914)))

(assert (=> b!5428662 (= res!2310130 (not (= (unfocusZipper!960 (Cons!61830 lt!2213615 Nil!61830)) lt!2213605)))))

(declare-fun res!2310126 () Bool)

(declare-fun e!3363927 () Bool)

(assert (=> start!569768 (=> (not res!2310126) (not e!3363927))))

(declare-fun validRegex!6954 (Regex!15218) Bool)

(assert (=> start!569768 (= res!2310126 (validRegex!6954 r!7292))))

(assert (=> start!569768 e!3363927))

(assert (=> start!569768 e!3363929))

(declare-fun condSetEmpty!35406 () Bool)

(assert (=> start!569768 (= condSetEmpty!35406 (= z!1189 (as set.empty (Set Context!9204))))))

(declare-fun setRes!35406 () Bool)

(assert (=> start!569768 setRes!35406))

(assert (=> start!569768 e!3363916))

(assert (=> start!569768 e!3363926))

(declare-fun setElem!35406 () Context!9204)

(declare-fun tp!1497970 () Bool)

(declare-fun setNonEmpty!35406 () Bool)

(assert (=> setNonEmpty!35406 (= setRes!35406 (and tp!1497970 (inv!81293 setElem!35406) e!3363931))))

(declare-fun setRest!35406 () (Set Context!9204))

(assert (=> setNonEmpty!35406 (= z!1189 (set.union (set.insert setElem!35406 (as set.empty (Set Context!9204))) setRest!35406))))

(declare-fun b!5428663 () Bool)

(declare-fun res!2310114 () Bool)

(assert (=> b!5428663 (=> res!2310114 e!3363924)))

(declare-fun e!3363933 () Bool)

(assert (=> b!5428663 (= res!2310114 e!3363933)))

(declare-fun res!2310136 () Bool)

(assert (=> b!5428663 (=> (not res!2310136) (not e!3363933))))

(assert (=> b!5428663 (= res!2310136 (is-Concat!24063 (regOne!30948 r!7292)))))

(declare-fun b!5428664 () Bool)

(declare-fun res!2310132 () Bool)

(assert (=> b!5428664 (=> res!2310132 e!3363913)))

(assert (=> b!5428664 (= res!2310132 (not (matchZipper!1462 z!1189 s!2326)))))

(declare-fun b!5428665 () Bool)

(assert (=> b!5428665 (= e!3363933 (nullable!5387 (regOne!30948 (regOne!30948 r!7292))))))

(declare-fun b!5428666 () Bool)

(declare-fun tp!1497973 () Bool)

(assert (=> b!5428666 (= e!3363929 tp!1497973)))

(declare-fun b!5428667 () Bool)

(assert (=> b!5428667 (= e!3363914 e!3363913)))

(declare-fun res!2310122 () Bool)

(assert (=> b!5428667 (=> res!2310122 e!3363913)))

(declare-fun lt!2213593 () Bool)

(assert (=> b!5428667 (= res!2310122 lt!2213593)))

(declare-fun matchR!7403 (Regex!15218 List!61955) Bool)

(declare-fun matchRSpec!2321 (Regex!15218 List!61955) Bool)

(assert (=> b!5428667 (= (matchR!7403 lt!2213616 s!2326) (matchRSpec!2321 lt!2213616 s!2326))))

(declare-fun lt!2213589 () Unit!154394)

(declare-fun mainMatchTheorem!2321 (Regex!15218 List!61955) Unit!154394)

(assert (=> b!5428667 (= lt!2213589 (mainMatchTheorem!2321 lt!2213616 s!2326))))

(declare-fun b!5428668 () Bool)

(declare-fun res!2310118 () Bool)

(assert (=> b!5428668 (=> (not res!2310118) (not e!3363927))))

(declare-fun toList!9002 ((Set Context!9204)) List!61954)

(assert (=> b!5428668 (= res!2310118 (= (toList!9002 z!1189) zl!343))))

(declare-fun b!5428669 () Bool)

(assert (=> b!5428669 (= e!3363934 e!3363918)))

(declare-fun res!2310120 () Bool)

(assert (=> b!5428669 (=> res!2310120 e!3363918)))

(assert (=> b!5428669 (= res!2310120 (not (= r!7292 lt!2213605)))))

(declare-fun lt!2213599 () Regex!15218)

(assert (=> b!5428669 (= lt!2213605 (Concat!24063 lt!2213599 (regTwo!30948 r!7292)))))

(declare-fun b!5428670 () Bool)

(declare-fun res!2310121 () Bool)

(assert (=> b!5428670 (=> res!2310121 e!3363923)))

(assert (=> b!5428670 (= res!2310121 lt!2213587)))

(declare-fun setIsEmpty!35406 () Bool)

(assert (=> setIsEmpty!35406 setRes!35406))

(declare-fun b!5428671 () Bool)

(declare-fun res!2310141 () Bool)

(assert (=> b!5428671 (=> res!2310141 e!3363934)))

(assert (=> b!5428671 (= res!2310141 (not (= (matchZipper!1462 lt!2213592 s!2326) (matchZipper!1462 lt!2213588 (t!375180 s!2326)))))))

(declare-fun b!5428672 () Bool)

(assert (=> b!5428672 (= e!3363924 e!3363930)))

(declare-fun res!2310124 () Bool)

(assert (=> b!5428672 (=> res!2310124 e!3363930)))

(assert (=> b!5428672 (= res!2310124 (not (= lt!2213606 lt!2213590)))))

(assert (=> b!5428672 (= lt!2213590 (derivationStepZipperDown!666 (reg!15547 (regOne!30948 r!7292)) lt!2213615 (h!68279 s!2326)))))

(assert (=> b!5428672 (= lt!2213615 (Context!9205 lt!2213614))))

(assert (=> b!5428672 (= lt!2213614 (Cons!61829 lt!2213599 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(assert (=> b!5428672 (= lt!2213599 (Star!15218 (reg!15547 (regOne!30948 r!7292))))))

(declare-fun b!5428673 () Bool)

(assert (=> b!5428673 (= e!3363920 (not (matchZipper!1462 lt!2213604 (t!375180 s!2326))))))

(declare-fun b!5428674 () Bool)

(declare-fun tp!1497974 () Bool)

(assert (=> b!5428674 (= e!3363928 tp!1497974)))

(declare-fun b!5428675 () Bool)

(assert (=> b!5428675 (= e!3363923 e!3363921)))

(declare-fun res!2310144 () Bool)

(assert (=> b!5428675 (=> res!2310144 e!3363921)))

(declare-fun lt!2213608 () (Set Context!9204))

(assert (=> b!5428675 (= res!2310144 (not (= lt!2213604 (derivationStepZipper!1457 lt!2213608 (h!68279 s!2326)))))))

(assert (=> b!5428675 (= (flatMap!945 lt!2213608 lambda!284766) (derivationStepZipperUp!590 lt!2213600 (h!68279 s!2326)))))

(declare-fun lt!2213595 () Unit!154394)

(assert (=> b!5428675 (= lt!2213595 (lemmaFlatMapOnSingletonSet!477 lt!2213608 lt!2213600 lambda!284766))))

(assert (=> b!5428675 (= lt!2213608 (set.insert lt!2213600 (as set.empty (Set Context!9204))))))

(assert (=> b!5428676 (= e!3363932 e!3363919)))

(declare-fun res!2310116 () Bool)

(assert (=> b!5428676 (=> res!2310116 e!3363919)))

(declare-fun lt!2213619 () Bool)

(assert (=> b!5428676 (= res!2310116 (or (not (= lt!2213593 lt!2213619)) (is-Nil!61831 s!2326)))))

(declare-fun Exists!2399 (Int) Bool)

(assert (=> b!5428676 (= (Exists!2399 lambda!284764) (Exists!2399 lambda!284765))))

(declare-fun lt!2213601 () Unit!154394)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1053 (Regex!15218 Regex!15218 List!61955) Unit!154394)

(assert (=> b!5428676 (= lt!2213601 (lemmaExistCutMatchRandMatchRSpecEquivalent!1053 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326))))

(assert (=> b!5428676 (= lt!2213619 (Exists!2399 lambda!284764))))

(declare-datatypes ((tuple2!64834 0))(
  ( (tuple2!64835 (_1!35720 List!61955) (_2!35720 List!61955)) )
))
(declare-datatypes ((Option!15329 0))(
  ( (None!15328) (Some!15328 (v!51357 tuple2!64834)) )
))
(declare-fun isDefined!12032 (Option!15329) Bool)

(declare-fun findConcatSeparation!1743 (Regex!15218 Regex!15218 List!61955 List!61955 List!61955) Option!15329)

(assert (=> b!5428676 (= lt!2213619 (isDefined!12032 (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) Nil!61831 s!2326 s!2326)))))

(declare-fun lt!2213613 () Unit!154394)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1507 (Regex!15218 Regex!15218 List!61955) Unit!154394)

(assert (=> b!5428676 (= lt!2213613 (lemmaFindConcatSeparationEquivalentToExists!1507 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326))))

(declare-fun b!5428677 () Bool)

(declare-fun res!2310123 () Bool)

(assert (=> b!5428677 (=> res!2310123 e!3363932)))

(assert (=> b!5428677 (= res!2310123 (or (is-EmptyExpr!15218 r!7292) (is-EmptyLang!15218 r!7292) (is-ElementMatch!15218 r!7292) (is-Union!15218 r!7292) (not (is-Concat!24063 r!7292))))))

(declare-fun b!5428678 () Bool)

(declare-fun e!3363925 () Bool)

(assert (=> b!5428678 (= e!3363927 e!3363925)))

(declare-fun res!2310138 () Bool)

(assert (=> b!5428678 (=> (not res!2310138) (not e!3363925))))

(assert (=> b!5428678 (= res!2310138 (= r!7292 lt!2213617))))

(assert (=> b!5428678 (= lt!2213617 (unfocusZipper!960 zl!343))))

(declare-fun b!5428679 () Bool)

(assert (=> b!5428679 (= e!3363925 (not e!3363932))))

(declare-fun res!2310115 () Bool)

(assert (=> b!5428679 (=> res!2310115 e!3363932)))

(assert (=> b!5428679 (= res!2310115 (not (is-Cons!61830 zl!343)))))

(assert (=> b!5428679 (= lt!2213593 (matchRSpec!2321 r!7292 s!2326))))

(assert (=> b!5428679 (= lt!2213593 (matchR!7403 r!7292 s!2326))))

(declare-fun lt!2213610 () Unit!154394)

(assert (=> b!5428679 (= lt!2213610 (mainMatchTheorem!2321 r!7292 s!2326))))

(assert (= (and start!569768 res!2310126) b!5428668))

(assert (= (and b!5428668 res!2310118) b!5428678))

(assert (= (and b!5428678 res!2310138) b!5428679))

(assert (= (and b!5428679 (not res!2310115)) b!5428642))

(assert (= (and b!5428642 (not res!2310125)) b!5428653))

(assert (= (and b!5428653 (not res!2310131)) b!5428655))

(assert (= (and b!5428655 (not res!2310146)) b!5428646))

(assert (= (and b!5428646 (not res!2310137)) b!5428677))

(assert (= (and b!5428677 (not res!2310123)) b!5428676))

(assert (= (and b!5428676 (not res!2310116)) b!5428651))

(assert (= (and b!5428651 (not res!2310133)) b!5428647))

(assert (= (and b!5428647 c!947039) b!5428649))

(assert (= (and b!5428647 (not c!947039)) b!5428659))

(assert (= (and b!5428649 (not res!2310129)) b!5428648))

(assert (= (and b!5428647 (not res!2310140)) b!5428663))

(assert (= (and b!5428663 res!2310136) b!5428665))

(assert (= (and b!5428663 (not res!2310114)) b!5428643))

(assert (= (and b!5428643 (not res!2310128)) b!5428672))

(assert (= (and b!5428672 (not res!2310124)) b!5428661))

(assert (= (and b!5428661 (not res!2310127)) b!5428671))

(assert (= (and b!5428671 (not res!2310141)) b!5428640))

(assert (= (and b!5428640 (not res!2310143)) b!5428669))

(assert (= (and b!5428669 (not res!2310120)) b!5428656))

(assert (= (and b!5428656 (not res!2310117)) b!5428654))

(assert (= (and b!5428654 (not res!2310142)) b!5428662))

(assert (= (and b!5428662 (not res!2310130)) b!5428667))

(assert (= (and b!5428667 (not res!2310122)) b!5428664))

(assert (= (and b!5428664 (not res!2310132)) b!5428636))

(assert (= (and b!5428636 (not res!2310135)) b!5428658))

(assert (= (and b!5428658 res!2310139) b!5428673))

(assert (= (and b!5428658 (not res!2310134)) b!5428670))

(assert (= (and b!5428670 (not res!2310121)) b!5428644))

(assert (= (and b!5428644 (not res!2310119)) b!5428675))

(assert (= (and b!5428675 (not res!2310144)) b!5428660))

(assert (= (and b!5428660 (not res!2310147)) b!5428637))

(assert (= (and b!5428637 (not res!2310145)) b!5428639))

(assert (= (and start!569768 (is-ElementMatch!15218 r!7292)) b!5428645))

(assert (= (and start!569768 (is-Concat!24063 r!7292)) b!5428657))

(assert (= (and start!569768 (is-Star!15218 r!7292)) b!5428666))

(assert (= (and start!569768 (is-Union!15218 r!7292)) b!5428650))

(assert (= (and start!569768 condSetEmpty!35406) setIsEmpty!35406))

(assert (= (and start!569768 (not condSetEmpty!35406)) setNonEmpty!35406))

(assert (= setNonEmpty!35406 b!5428652))

(assert (= b!5428638 b!5428674))

(assert (= (and start!569768 (is-Cons!61830 zl!343)) b!5428638))

(assert (= (and start!569768 (is-Cons!61831 s!2326)) b!5428641))

(declare-fun m!6452152 () Bool)

(assert (=> b!5428653 m!6452152))

(declare-fun m!6452154 () Bool)

(assert (=> b!5428678 m!6452154))

(declare-fun m!6452156 () Bool)

(assert (=> b!5428660 m!6452156))

(declare-fun m!6452158 () Bool)

(assert (=> b!5428660 m!6452158))

(assert (=> b!5428660 m!6452158))

(declare-fun m!6452160 () Bool)

(assert (=> b!5428660 m!6452160))

(declare-fun m!6452162 () Bool)

(assert (=> b!5428644 m!6452162))

(declare-fun m!6452164 () Bool)

(assert (=> b!5428671 m!6452164))

(declare-fun m!6452166 () Bool)

(assert (=> b!5428671 m!6452166))

(declare-fun m!6452168 () Bool)

(assert (=> b!5428672 m!6452168))

(declare-fun m!6452170 () Bool)

(assert (=> b!5428656 m!6452170))

(declare-fun m!6452172 () Bool)

(assert (=> b!5428676 m!6452172))

(declare-fun m!6452174 () Bool)

(assert (=> b!5428676 m!6452174))

(declare-fun m!6452176 () Bool)

(assert (=> b!5428676 m!6452176))

(declare-fun m!6452178 () Bool)

(assert (=> b!5428676 m!6452178))

(declare-fun m!6452180 () Bool)

(assert (=> b!5428676 m!6452180))

(assert (=> b!5428676 m!6452178))

(assert (=> b!5428676 m!6452174))

(declare-fun m!6452182 () Bool)

(assert (=> b!5428676 m!6452182))

(assert (=> b!5428673 m!6452162))

(declare-fun m!6452184 () Bool)

(assert (=> b!5428679 m!6452184))

(declare-fun m!6452186 () Bool)

(assert (=> b!5428679 m!6452186))

(declare-fun m!6452188 () Bool)

(assert (=> b!5428679 m!6452188))

(declare-fun m!6452190 () Bool)

(assert (=> b!5428675 m!6452190))

(declare-fun m!6452192 () Bool)

(assert (=> b!5428675 m!6452192))

(declare-fun m!6452194 () Bool)

(assert (=> b!5428675 m!6452194))

(declare-fun m!6452196 () Bool)

(assert (=> b!5428675 m!6452196))

(declare-fun m!6452198 () Bool)

(assert (=> b!5428675 m!6452198))

(declare-fun m!6452200 () Bool)

(assert (=> b!5428662 m!6452200))

(declare-fun m!6452202 () Bool)

(assert (=> b!5428647 m!6452202))

(declare-fun m!6452204 () Bool)

(assert (=> b!5428647 m!6452204))

(declare-fun m!6452206 () Bool)

(assert (=> b!5428647 m!6452206))

(declare-fun m!6452208 () Bool)

(assert (=> b!5428647 m!6452208))

(declare-fun m!6452210 () Bool)

(assert (=> b!5428647 m!6452210))

(declare-fun m!6452212 () Bool)

(assert (=> b!5428647 m!6452212))

(assert (=> b!5428647 m!6452196))

(declare-fun m!6452214 () Bool)

(assert (=> b!5428651 m!6452214))

(declare-fun m!6452216 () Bool)

(assert (=> b!5428654 m!6452216))

(declare-fun m!6452218 () Bool)

(assert (=> b!5428654 m!6452218))

(declare-fun m!6452220 () Bool)

(assert (=> b!5428654 m!6452220))

(declare-fun m!6452222 () Bool)

(assert (=> b!5428654 m!6452222))

(declare-fun m!6452224 () Bool)

(assert (=> b!5428654 m!6452224))

(declare-fun m!6452226 () Bool)

(assert (=> b!5428654 m!6452226))

(declare-fun m!6452228 () Bool)

(assert (=> b!5428654 m!6452228))

(declare-fun m!6452230 () Bool)

(assert (=> b!5428654 m!6452230))

(declare-fun m!6452232 () Bool)

(assert (=> b!5428654 m!6452232))

(declare-fun m!6452234 () Bool)

(assert (=> b!5428638 m!6452234))

(declare-fun m!6452236 () Bool)

(assert (=> setNonEmpty!35406 m!6452236))

(declare-fun m!6452238 () Bool)

(assert (=> b!5428649 m!6452238))

(declare-fun m!6452240 () Bool)

(assert (=> b!5428649 m!6452240))

(declare-fun m!6452242 () Bool)

(assert (=> b!5428649 m!6452242))

(declare-fun m!6452244 () Bool)

(assert (=> b!5428667 m!6452244))

(declare-fun m!6452246 () Bool)

(assert (=> b!5428667 m!6452246))

(declare-fun m!6452248 () Bool)

(assert (=> b!5428667 m!6452248))

(assert (=> b!5428648 m!6452162))

(declare-fun m!6452250 () Bool)

(assert (=> b!5428665 m!6452250))

(assert (=> b!5428658 m!6452240))

(declare-fun m!6452252 () Bool)

(assert (=> b!5428664 m!6452252))

(declare-fun m!6452254 () Bool)

(assert (=> b!5428642 m!6452254))

(declare-fun m!6452256 () Bool)

(assert (=> b!5428668 m!6452256))

(declare-fun m!6452258 () Bool)

(assert (=> start!569768 m!6452258))

(declare-fun m!6452260 () Bool)

(assert (=> b!5428646 m!6452260))

(assert (=> b!5428646 m!6452260))

(declare-fun m!6452262 () Bool)

(assert (=> b!5428646 m!6452262))

(declare-fun m!6452264 () Bool)

(assert (=> b!5428639 m!6452264))

(declare-fun m!6452266 () Bool)

(assert (=> b!5428637 m!6452266))

(declare-fun m!6452268 () Bool)

(assert (=> b!5428637 m!6452268))

(declare-fun m!6452270 () Bool)

(assert (=> b!5428661 m!6452270))

(declare-fun m!6452272 () Bool)

(assert (=> b!5428661 m!6452272))

(declare-fun m!6452274 () Bool)

(assert (=> b!5428661 m!6452274))

(declare-fun m!6452276 () Bool)

(assert (=> b!5428661 m!6452276))

(declare-fun m!6452278 () Bool)

(assert (=> b!5428661 m!6452278))

(push 1)

(assert (not b!5428667))

(assert (not b!5428650))

(assert (not b!5428679))

(assert (not b!5428642))

(assert (not b!5428653))

(assert (not b!5428661))

(assert tp_is_empty!39689)

(assert (not b!5428649))

(assert (not b!5428637))

(assert (not b!5428654))

(assert (not start!569768))

(assert (not b!5428658))

(assert (not b!5428666))

(assert (not setNonEmpty!35406))

(assert (not b!5428647))

(assert (not b!5428673))

(assert (not b!5428651))

(assert (not b!5428674))

(assert (not b!5428678))

(assert (not b!5428656))

(assert (not b!5428660))

(assert (not b!5428657))

(assert (not b!5428639))

(assert (not b!5428652))

(assert (not b!5428638))

(assert (not b!5428676))

(assert (not b!5428665))

(assert (not b!5428672))

(assert (not b!5428664))

(assert (not b!5428648))

(assert (not b!5428671))

(assert (not b!5428646))

(assert (not b!5428662))

(assert (not b!5428675))

(assert (not b!5428668))

(assert (not b!5428644))

(assert (not b!5428641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5428854 () Bool)

(declare-fun res!2310274 () Bool)

(declare-fun e!3364021 () Bool)

(assert (=> b!5428854 (=> (not res!2310274) (not e!3364021))))

(declare-fun call!388691 () Bool)

(assert (=> b!5428854 (= res!2310274 call!388691)))

(declare-fun e!3364025 () Bool)

(assert (=> b!5428854 (= e!3364025 e!3364021)))

(declare-fun call!388692 () Bool)

(declare-fun bm!388686 () Bool)

(declare-fun c!947060 () Bool)

(declare-fun c!947061 () Bool)

(assert (=> bm!388686 (= call!388692 (validRegex!6954 (ite c!947060 (reg!15547 r!7292) (ite c!947061 (regOne!30949 r!7292) (regOne!30948 r!7292)))))))

(declare-fun b!5428855 () Bool)

(declare-fun e!3364026 () Bool)

(assert (=> b!5428855 (= e!3364026 call!388692)))

(declare-fun bm!388687 () Bool)

(declare-fun call!388693 () Bool)

(assert (=> bm!388687 (= call!388693 (validRegex!6954 (ite c!947061 (regTwo!30949 r!7292) (regTwo!30948 r!7292))))))

(declare-fun b!5428856 () Bool)

(declare-fun e!3364027 () Bool)

(declare-fun e!3364023 () Bool)

(assert (=> b!5428856 (= e!3364027 e!3364023)))

(assert (=> b!5428856 (= c!947060 (is-Star!15218 r!7292))))

(declare-fun b!5428857 () Bool)

(assert (=> b!5428857 (= e!3364023 e!3364026)))

(declare-fun res!2310273 () Bool)

(assert (=> b!5428857 (= res!2310273 (not (nullable!5387 (reg!15547 r!7292))))))

(assert (=> b!5428857 (=> (not res!2310273) (not e!3364026))))

(declare-fun b!5428858 () Bool)

(assert (=> b!5428858 (= e!3364021 call!388693)))

(declare-fun d!1731237 () Bool)

(declare-fun res!2310276 () Bool)

(assert (=> d!1731237 (=> res!2310276 e!3364027)))

(assert (=> d!1731237 (= res!2310276 (is-ElementMatch!15218 r!7292))))

(assert (=> d!1731237 (= (validRegex!6954 r!7292) e!3364027)))

(declare-fun b!5428859 () Bool)

(declare-fun e!3364024 () Bool)

(assert (=> b!5428859 (= e!3364024 call!388693)))

(declare-fun b!5428860 () Bool)

(declare-fun res!2310275 () Bool)

(declare-fun e!3364022 () Bool)

(assert (=> b!5428860 (=> res!2310275 e!3364022)))

(assert (=> b!5428860 (= res!2310275 (not (is-Concat!24063 r!7292)))))

(assert (=> b!5428860 (= e!3364025 e!3364022)))

(declare-fun bm!388688 () Bool)

(assert (=> bm!388688 (= call!388691 call!388692)))

(declare-fun b!5428861 () Bool)

(assert (=> b!5428861 (= e!3364022 e!3364024)))

(declare-fun res!2310272 () Bool)

(assert (=> b!5428861 (=> (not res!2310272) (not e!3364024))))

(assert (=> b!5428861 (= res!2310272 call!388691)))

(declare-fun b!5428862 () Bool)

(assert (=> b!5428862 (= e!3364023 e!3364025)))

(assert (=> b!5428862 (= c!947061 (is-Union!15218 r!7292))))

(assert (= (and d!1731237 (not res!2310276)) b!5428856))

(assert (= (and b!5428856 c!947060) b!5428857))

(assert (= (and b!5428856 (not c!947060)) b!5428862))

(assert (= (and b!5428857 res!2310273) b!5428855))

(assert (= (and b!5428862 c!947061) b!5428854))

(assert (= (and b!5428862 (not c!947061)) b!5428860))

(assert (= (and b!5428854 res!2310274) b!5428858))

(assert (= (and b!5428860 (not res!2310275)) b!5428861))

(assert (= (and b!5428861 res!2310272) b!5428859))

(assert (= (or b!5428858 b!5428859) bm!388687))

(assert (= (or b!5428854 b!5428861) bm!388688))

(assert (= (or b!5428855 bm!388688) bm!388686))

(declare-fun m!6452408 () Bool)

(assert (=> bm!388686 m!6452408))

(declare-fun m!6452410 () Bool)

(assert (=> bm!388687 m!6452410))

(declare-fun m!6452412 () Bool)

(assert (=> b!5428857 m!6452412))

(assert (=> start!569768 d!1731237))

(declare-fun bm!388704 () Bool)

(declare-fun call!388711 () Int)

(declare-fun call!388712 () Int)

(assert (=> bm!388704 (= call!388711 call!388712)))

(declare-fun bm!388705 () Bool)

(declare-fun call!388708 () Int)

(declare-fun c!947082 () Bool)

(assert (=> bm!388705 (= call!388708 (regexDepth!174 (ite c!947082 (regOne!30949 r!7292) (regTwo!30948 r!7292))))))

(declare-fun b!5428897 () Bool)

(declare-fun c!947077 () Bool)

(assert (=> b!5428897 (= c!947077 (is-Star!15218 r!7292))))

(declare-fun e!3364052 () Bool)

(declare-fun e!3364054 () Bool)

(assert (=> b!5428897 (= e!3364052 e!3364054)))

(declare-fun b!5428898 () Bool)

(declare-fun e!3364055 () Int)

(declare-fun call!388709 () Int)

(assert (=> b!5428898 (= e!3364055 (+ 1 call!388709))))

(declare-fun b!5428899 () Bool)

(declare-fun e!3364057 () Bool)

(declare-fun e!3364049 () Bool)

(assert (=> b!5428899 (= e!3364057 e!3364049)))

(declare-fun res!2310285 () Bool)

(declare-fun lt!2213733 () Int)

(assert (=> b!5428899 (= res!2310285 (> lt!2213733 call!388708))))

(assert (=> b!5428899 (=> (not res!2310285) (not e!3364049))))

(declare-fun b!5428900 () Bool)

(assert (=> b!5428900 (= e!3364057 e!3364052)))

(declare-fun c!947078 () Bool)

(assert (=> b!5428900 (= c!947078 (is-Concat!24063 r!7292))))

(declare-fun call!388713 () Int)

(declare-fun call!388710 () Int)

(declare-fun bm!388706 () Bool)

(declare-fun c!947080 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!388706 (= call!388709 (maxBigInt!0 (ite c!947080 call!388713 call!388710) (ite c!947080 call!388710 call!388713)))))

(declare-fun b!5428901 () Bool)

(assert (=> b!5428901 (= e!3364054 (= lt!2213733 1))))

(declare-fun bm!388707 () Bool)

(declare-fun c!947079 () Bool)

(declare-fun call!388714 () Int)

(assert (=> bm!388707 (= call!388714 (regexDepth!174 (ite c!947079 (reg!15547 r!7292) (ite c!947080 (regOne!30949 r!7292) (regTwo!30948 r!7292)))))))

(declare-fun b!5428902 () Bool)

(declare-fun e!3364051 () Int)

(assert (=> b!5428902 (= e!3364051 1)))

(declare-fun b!5428903 () Bool)

(declare-fun e!3364053 () Int)

(assert (=> b!5428903 (= e!3364053 (+ 1 call!388709))))

(declare-fun b!5428904 () Bool)

(assert (=> b!5428904 (= c!947080 (is-Union!15218 r!7292))))

(declare-fun e!3364050 () Int)

(assert (=> b!5428904 (= e!3364050 e!3364055)))

(declare-fun bm!388708 () Bool)

(assert (=> bm!388708 (= call!388710 (regexDepth!174 (ite c!947080 (regTwo!30949 r!7292) (regOne!30948 r!7292))))))

(declare-fun b!5428905 () Bool)

(assert (=> b!5428905 (= e!3364049 (> lt!2213733 call!388712))))

(declare-fun bm!388703 () Bool)

(assert (=> bm!388703 (= call!388713 call!388714)))

(declare-fun d!1731239 () Bool)

(declare-fun e!3364056 () Bool)

(assert (=> d!1731239 e!3364056))

(declare-fun res!2310283 () Bool)

(assert (=> d!1731239 (=> (not res!2310283) (not e!3364056))))

(assert (=> d!1731239 (= res!2310283 (> lt!2213733 0))))

(assert (=> d!1731239 (= lt!2213733 e!3364051)))

(declare-fun c!947081 () Bool)

(assert (=> d!1731239 (= c!947081 (is-ElementMatch!15218 r!7292))))

(assert (=> d!1731239 (= (regexDepth!174 r!7292) lt!2213733)))

(declare-fun b!5428906 () Bool)

(declare-fun res!2310284 () Bool)

(declare-fun e!3364048 () Bool)

(assert (=> b!5428906 (=> (not res!2310284) (not e!3364048))))

(assert (=> b!5428906 (= res!2310284 (> lt!2213733 call!388711))))

(assert (=> b!5428906 (= e!3364052 e!3364048)))

(declare-fun b!5428907 () Bool)

(assert (=> b!5428907 (= e!3364050 (+ 1 call!388714))))

(declare-fun b!5428908 () Bool)

(assert (=> b!5428908 (= e!3364056 e!3364057)))

(assert (=> b!5428908 (= c!947082 (is-Union!15218 r!7292))))

(declare-fun b!5428909 () Bool)

(assert (=> b!5428909 (= e!3364048 (> lt!2213733 call!388708))))

(declare-fun b!5428910 () Bool)

(assert (=> b!5428910 (= e!3364053 1)))

(declare-fun bm!388709 () Bool)

(assert (=> bm!388709 (= call!388712 (regexDepth!174 (ite c!947082 (regTwo!30949 r!7292) (ite c!947078 (regOne!30948 r!7292) (reg!15547 r!7292)))))))

(declare-fun b!5428911 () Bool)

(assert (=> b!5428911 (= e!3364051 e!3364050)))

(assert (=> b!5428911 (= c!947079 (is-Star!15218 r!7292))))

(declare-fun b!5428912 () Bool)

(assert (=> b!5428912 (= e!3364055 e!3364053)))

(declare-fun c!947076 () Bool)

(assert (=> b!5428912 (= c!947076 (is-Concat!24063 r!7292))))

(declare-fun b!5428913 () Bool)

(assert (=> b!5428913 (= e!3364054 (> lt!2213733 call!388711))))

(assert (= (and d!1731239 c!947081) b!5428902))

(assert (= (and d!1731239 (not c!947081)) b!5428911))

(assert (= (and b!5428911 c!947079) b!5428907))

(assert (= (and b!5428911 (not c!947079)) b!5428904))

(assert (= (and b!5428904 c!947080) b!5428898))

(assert (= (and b!5428904 (not c!947080)) b!5428912))

(assert (= (and b!5428912 c!947076) b!5428903))

(assert (= (and b!5428912 (not c!947076)) b!5428910))

(assert (= (or b!5428898 b!5428903) bm!388708))

(assert (= (or b!5428898 b!5428903) bm!388703))

(assert (= (or b!5428898 b!5428903) bm!388706))

(assert (= (or b!5428907 bm!388703) bm!388707))

(assert (= (and d!1731239 res!2310283) b!5428908))

(assert (= (and b!5428908 c!947082) b!5428899))

(assert (= (and b!5428908 (not c!947082)) b!5428900))

(assert (= (and b!5428899 res!2310285) b!5428905))

(assert (= (and b!5428900 c!947078) b!5428906))

(assert (= (and b!5428900 (not c!947078)) b!5428897))

(assert (= (and b!5428906 res!2310284) b!5428909))

(assert (= (and b!5428897 c!947077) b!5428913))

(assert (= (and b!5428897 (not c!947077)) b!5428901))

(assert (= (or b!5428906 b!5428913) bm!388704))

(assert (= (or b!5428905 bm!388704) bm!388709))

(assert (= (or b!5428899 b!5428909) bm!388705))

(declare-fun m!6452414 () Bool)

(assert (=> bm!388707 m!6452414))

(declare-fun m!6452416 () Bool)

(assert (=> bm!388706 m!6452416))

(declare-fun m!6452418 () Bool)

(assert (=> bm!388705 m!6452418))

(declare-fun m!6452420 () Bool)

(assert (=> bm!388708 m!6452420))

(declare-fun m!6452422 () Bool)

(assert (=> bm!388709 m!6452422))

(assert (=> b!5428660 d!1731239))

(declare-fun bm!388711 () Bool)

(declare-fun call!388718 () Int)

(declare-fun call!388719 () Int)

(assert (=> bm!388711 (= call!388718 call!388719)))

(declare-fun bm!388712 () Bool)

(declare-fun call!388715 () Int)

(declare-fun c!947089 () Bool)

(assert (=> bm!388712 (= call!388715 (regexDepth!174 (ite c!947089 (regOne!30949 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (regTwo!30948 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))))

(declare-fun b!5428914 () Bool)

(declare-fun c!947084 () Bool)

(assert (=> b!5428914 (= c!947084 (is-Star!15218 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun e!3364062 () Bool)

(declare-fun e!3364064 () Bool)

(assert (=> b!5428914 (= e!3364062 e!3364064)))

(declare-fun b!5428915 () Bool)

(declare-fun e!3364065 () Int)

(declare-fun call!388716 () Int)

(assert (=> b!5428915 (= e!3364065 (+ 1 call!388716))))

(declare-fun b!5428916 () Bool)

(declare-fun e!3364067 () Bool)

(declare-fun e!3364059 () Bool)

(assert (=> b!5428916 (= e!3364067 e!3364059)))

(declare-fun res!2310288 () Bool)

(declare-fun lt!2213734 () Int)

(assert (=> b!5428916 (= res!2310288 (> lt!2213734 call!388715))))

(assert (=> b!5428916 (=> (not res!2310288) (not e!3364059))))

(declare-fun b!5428917 () Bool)

(assert (=> b!5428917 (= e!3364067 e!3364062)))

(declare-fun c!947085 () Bool)

(assert (=> b!5428917 (= c!947085 (is-Concat!24063 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun call!388717 () Int)

(declare-fun bm!388713 () Bool)

(declare-fun call!388720 () Int)

(declare-fun c!947087 () Bool)

(assert (=> bm!388713 (= call!388716 (maxBigInt!0 (ite c!947087 call!388720 call!388717) (ite c!947087 call!388717 call!388720)))))

(declare-fun b!5428918 () Bool)

(assert (=> b!5428918 (= e!3364064 (= lt!2213734 1))))

(declare-fun bm!388714 () Bool)

(declare-fun c!947086 () Bool)

(declare-fun call!388721 () Int)

(assert (=> bm!388714 (= call!388721 (regexDepth!174 (ite c!947086 (reg!15547 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (ite c!947087 (regOne!30949 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (regTwo!30948 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343)))))))))))

(declare-fun b!5428919 () Bool)

(declare-fun e!3364061 () Int)

(assert (=> b!5428919 (= e!3364061 1)))

(declare-fun b!5428920 () Bool)

(declare-fun e!3364063 () Int)

(assert (=> b!5428920 (= e!3364063 (+ 1 call!388716))))

(declare-fun b!5428921 () Bool)

(assert (=> b!5428921 (= c!947087 (is-Union!15218 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun e!3364060 () Int)

(assert (=> b!5428921 (= e!3364060 e!3364065)))

(declare-fun bm!388715 () Bool)

(assert (=> bm!388715 (= call!388717 (regexDepth!174 (ite c!947087 (regTwo!30949 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (regOne!30948 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))))

(declare-fun b!5428922 () Bool)

(assert (=> b!5428922 (= e!3364059 (> lt!2213734 call!388719))))

(declare-fun bm!388710 () Bool)

(assert (=> bm!388710 (= call!388720 call!388721)))

(declare-fun d!1731241 () Bool)

(declare-fun e!3364066 () Bool)

(assert (=> d!1731241 e!3364066))

(declare-fun res!2310286 () Bool)

(assert (=> d!1731241 (=> (not res!2310286) (not e!3364066))))

(assert (=> d!1731241 (= res!2310286 (> lt!2213734 0))))

(assert (=> d!1731241 (= lt!2213734 e!3364061)))

(declare-fun c!947088 () Bool)

(assert (=> d!1731241 (= c!947088 (is-ElementMatch!15218 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(assert (=> d!1731241 (= (regexDepth!174 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) lt!2213734)))

(declare-fun b!5428923 () Bool)

(declare-fun res!2310287 () Bool)

(declare-fun e!3364058 () Bool)

(assert (=> b!5428923 (=> (not res!2310287) (not e!3364058))))

(assert (=> b!5428923 (= res!2310287 (> lt!2213734 call!388718))))

(assert (=> b!5428923 (= e!3364062 e!3364058)))

(declare-fun b!5428924 () Bool)

(assert (=> b!5428924 (= e!3364060 (+ 1 call!388721))))

(declare-fun b!5428925 () Bool)

(assert (=> b!5428925 (= e!3364066 e!3364067)))

(assert (=> b!5428925 (= c!947089 (is-Union!15218 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428926 () Bool)

(assert (=> b!5428926 (= e!3364058 (> lt!2213734 call!388715))))

(declare-fun b!5428927 () Bool)

(assert (=> b!5428927 (= e!3364063 1)))

(declare-fun bm!388716 () Bool)

(assert (=> bm!388716 (= call!388719 (regexDepth!174 (ite c!947089 (regTwo!30949 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (ite c!947085 (regOne!30948 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))) (reg!15547 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343)))))))))))

(declare-fun b!5428928 () Bool)

(assert (=> b!5428928 (= e!3364061 e!3364060)))

(assert (=> b!5428928 (= c!947086 (is-Star!15218 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428929 () Bool)

(assert (=> b!5428929 (= e!3364065 e!3364063)))

(declare-fun c!947083 () Bool)

(assert (=> b!5428929 (= c!947083 (is-Concat!24063 (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428930 () Bool)

(assert (=> b!5428930 (= e!3364064 (> lt!2213734 call!388718))))

(assert (= (and d!1731241 c!947088) b!5428919))

(assert (= (and d!1731241 (not c!947088)) b!5428928))

(assert (= (and b!5428928 c!947086) b!5428924))

(assert (= (and b!5428928 (not c!947086)) b!5428921))

(assert (= (and b!5428921 c!947087) b!5428915))

(assert (= (and b!5428921 (not c!947087)) b!5428929))

(assert (= (and b!5428929 c!947083) b!5428920))

(assert (= (and b!5428929 (not c!947083)) b!5428927))

(assert (= (or b!5428915 b!5428920) bm!388715))

(assert (= (or b!5428915 b!5428920) bm!388710))

(assert (= (or b!5428915 b!5428920) bm!388713))

(assert (= (or b!5428924 bm!388710) bm!388714))

(assert (= (and d!1731241 res!2310286) b!5428925))

(assert (= (and b!5428925 c!947089) b!5428916))

(assert (= (and b!5428925 (not c!947089)) b!5428917))

(assert (= (and b!5428916 res!2310288) b!5428922))

(assert (= (and b!5428917 c!947085) b!5428923))

(assert (= (and b!5428917 (not c!947085)) b!5428914))

(assert (= (and b!5428923 res!2310287) b!5428926))

(assert (= (and b!5428914 c!947084) b!5428930))

(assert (= (and b!5428914 (not c!947084)) b!5428918))

(assert (= (or b!5428923 b!5428930) bm!388711))

(assert (= (or b!5428922 bm!388711) bm!388716))

(assert (= (or b!5428916 b!5428926) bm!388712))

(declare-fun m!6452424 () Bool)

(assert (=> bm!388714 m!6452424))

(declare-fun m!6452426 () Bool)

(assert (=> bm!388713 m!6452426))

(declare-fun m!6452428 () Bool)

(assert (=> bm!388712 m!6452428))

(declare-fun m!6452430 () Bool)

(assert (=> bm!388715 m!6452430))

(declare-fun m!6452432 () Bool)

(assert (=> bm!388716 m!6452432))

(assert (=> b!5428660 d!1731241))

(declare-fun bs!1254211 () Bool)

(declare-fun d!1731243 () Bool)

(assert (= bs!1254211 (and d!1731243 b!5428639)))

(declare-fun lambda!284792 () Int)

(assert (=> bs!1254211 (= lambda!284792 lambda!284767)))

(declare-fun b!5428951 () Bool)

(declare-fun e!3364081 () Bool)

(declare-fun lt!2213737 () Regex!15218)

(declare-fun isConcat!518 (Regex!15218) Bool)

(assert (=> b!5428951 (= e!3364081 (isConcat!518 lt!2213737))))

(declare-fun b!5428952 () Bool)

(declare-fun e!3364082 () Bool)

(assert (=> b!5428952 (= e!3364082 (isEmpty!33831 (t!375178 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun e!3364085 () Bool)

(assert (=> d!1731243 e!3364085))

(declare-fun res!2310294 () Bool)

(assert (=> d!1731243 (=> (not res!2310294) (not e!3364085))))

(assert (=> d!1731243 (= res!2310294 (validRegex!6954 lt!2213737))))

(declare-fun e!3364083 () Regex!15218)

(assert (=> d!1731243 (= lt!2213737 e!3364083)))

(declare-fun c!947101 () Bool)

(assert (=> d!1731243 (= c!947101 e!3364082)))

(declare-fun res!2310293 () Bool)

(assert (=> d!1731243 (=> (not res!2310293) (not e!3364082))))

(assert (=> d!1731243 (= res!2310293 (is-Cons!61829 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(assert (=> d!1731243 (forall!14556 (t!375178 (exprs!5102 (h!68278 zl!343))) lambda!284792)))

(assert (=> d!1731243 (= (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343)))) lt!2213737)))

(declare-fun b!5428953 () Bool)

(declare-fun e!3364084 () Regex!15218)

(assert (=> b!5428953 (= e!3364083 e!3364084)))

(declare-fun c!947098 () Bool)

(assert (=> b!5428953 (= c!947098 (is-Cons!61829 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5428954 () Bool)

(declare-fun e!3364080 () Bool)

(assert (=> b!5428954 (= e!3364080 e!3364081)))

(declare-fun c!947099 () Bool)

(declare-fun tail!10740 (List!61953) List!61953)

(assert (=> b!5428954 (= c!947099 (isEmpty!33831 (tail!10740 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428955 () Bool)

(assert (=> b!5428955 (= e!3364085 e!3364080)))

(declare-fun c!947100 () Bool)

(assert (=> b!5428955 (= c!947100 (isEmpty!33831 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5428956 () Bool)

(assert (=> b!5428956 (= e!3364084 (Concat!24063 (h!68277 (t!375178 (exprs!5102 (h!68278 zl!343)))) (generalisedConcat!887 (t!375178 (t!375178 (exprs!5102 (h!68278 zl!343)))))))))

(declare-fun b!5428957 () Bool)

(declare-fun isEmptyExpr!995 (Regex!15218) Bool)

(assert (=> b!5428957 (= e!3364080 (isEmptyExpr!995 lt!2213737))))

(declare-fun b!5428958 () Bool)

(assert (=> b!5428958 (= e!3364083 (h!68277 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5428959 () Bool)

(declare-fun head!11643 (List!61953) Regex!15218)

(assert (=> b!5428959 (= e!3364081 (= lt!2213737 (head!11643 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5428960 () Bool)

(assert (=> b!5428960 (= e!3364084 EmptyExpr!15218)))

(assert (= (and d!1731243 res!2310293) b!5428952))

(assert (= (and d!1731243 c!947101) b!5428958))

(assert (= (and d!1731243 (not c!947101)) b!5428953))

(assert (= (and b!5428953 c!947098) b!5428956))

(assert (= (and b!5428953 (not c!947098)) b!5428960))

(assert (= (and d!1731243 res!2310294) b!5428955))

(assert (= (and b!5428955 c!947100) b!5428957))

(assert (= (and b!5428955 (not c!947100)) b!5428954))

(assert (= (and b!5428954 c!947099) b!5428959))

(assert (= (and b!5428954 (not c!947099)) b!5428951))

(declare-fun m!6452434 () Bool)

(assert (=> b!5428956 m!6452434))

(declare-fun m!6452436 () Bool)

(assert (=> b!5428952 m!6452436))

(assert (=> b!5428955 m!6452214))

(declare-fun m!6452438 () Bool)

(assert (=> d!1731243 m!6452438))

(declare-fun m!6452440 () Bool)

(assert (=> d!1731243 m!6452440))

(declare-fun m!6452442 () Bool)

(assert (=> b!5428957 m!6452442))

(declare-fun m!6452444 () Bool)

(assert (=> b!5428954 m!6452444))

(assert (=> b!5428954 m!6452444))

(declare-fun m!6452446 () Bool)

(assert (=> b!5428954 m!6452446))

(declare-fun m!6452448 () Bool)

(assert (=> b!5428959 m!6452448))

(declare-fun m!6452450 () Bool)

(assert (=> b!5428951 m!6452450))

(assert (=> b!5428660 d!1731243))

(declare-fun bs!1254212 () Bool)

(declare-fun b!5428995 () Bool)

(assert (= bs!1254212 (and b!5428995 b!5428676)))

(declare-fun lambda!284797 () Int)

(assert (=> bs!1254212 (not (= lambda!284797 lambda!284764))))

(assert (=> bs!1254212 (not (= lambda!284797 lambda!284765))))

(assert (=> b!5428995 true))

(assert (=> b!5428995 true))

(declare-fun bs!1254213 () Bool)

(declare-fun b!5429003 () Bool)

(assert (= bs!1254213 (and b!5429003 b!5428676)))

(declare-fun lambda!284798 () Int)

(assert (=> bs!1254213 (not (= lambda!284798 lambda!284764))))

(assert (=> bs!1254213 (= lambda!284798 lambda!284765)))

(declare-fun bs!1254214 () Bool)

(assert (= bs!1254214 (and b!5429003 b!5428995)))

(assert (=> bs!1254214 (not (= lambda!284798 lambda!284797))))

(assert (=> b!5429003 true))

(assert (=> b!5429003 true))

(declare-fun b!5428993 () Bool)

(declare-fun e!3364110 () Bool)

(declare-fun e!3364107 () Bool)

(assert (=> b!5428993 (= e!3364110 e!3364107)))

(declare-fun res!2310311 () Bool)

(assert (=> b!5428993 (= res!2310311 (not (is-EmptyLang!15218 r!7292)))))

(assert (=> b!5428993 (=> (not res!2310311) (not e!3364107))))

(declare-fun b!5428994 () Bool)

(declare-fun c!947113 () Bool)

(assert (=> b!5428994 (= c!947113 (is-Union!15218 r!7292))))

(declare-fun e!3364105 () Bool)

(declare-fun e!3364104 () Bool)

(assert (=> b!5428994 (= e!3364105 e!3364104)))

(declare-fun d!1731245 () Bool)

(declare-fun c!947110 () Bool)

(assert (=> d!1731245 (= c!947110 (is-EmptyExpr!15218 r!7292))))

(assert (=> d!1731245 (= (matchRSpec!2321 r!7292 s!2326) e!3364110)))

(declare-fun e!3364106 () Bool)

(declare-fun call!388727 () Bool)

(assert (=> b!5428995 (= e!3364106 call!388727)))

(declare-fun b!5428996 () Bool)

(declare-fun e!3364108 () Bool)

(assert (=> b!5428996 (= e!3364108 (matchRSpec!2321 (regTwo!30949 r!7292) s!2326))))

(declare-fun b!5428997 () Bool)

(declare-fun call!388726 () Bool)

(assert (=> b!5428997 (= e!3364110 call!388726)))

(declare-fun b!5428998 () Bool)

(declare-fun c!947111 () Bool)

(assert (=> b!5428998 (= c!947111 (is-ElementMatch!15218 r!7292))))

(assert (=> b!5428998 (= e!3364107 e!3364105)))

(declare-fun b!5428999 () Bool)

(declare-fun e!3364109 () Bool)

(assert (=> b!5428999 (= e!3364104 e!3364109)))

(declare-fun c!947112 () Bool)

(assert (=> b!5428999 (= c!947112 (is-Star!15218 r!7292))))

(declare-fun b!5429000 () Bool)

(assert (=> b!5429000 (= e!3364105 (= s!2326 (Cons!61831 (c!947040 r!7292) Nil!61831)))))

(declare-fun b!5429001 () Bool)

(assert (=> b!5429001 (= e!3364104 e!3364108)))

(declare-fun res!2310313 () Bool)

(assert (=> b!5429001 (= res!2310313 (matchRSpec!2321 (regOne!30949 r!7292) s!2326))))

(assert (=> b!5429001 (=> res!2310313 e!3364108)))

(declare-fun b!5429002 () Bool)

(declare-fun res!2310312 () Bool)

(assert (=> b!5429002 (=> res!2310312 e!3364106)))

(assert (=> b!5429002 (= res!2310312 call!388726)))

(assert (=> b!5429002 (= e!3364109 e!3364106)))

(declare-fun bm!388721 () Bool)

(declare-fun isEmpty!33834 (List!61955) Bool)

(assert (=> bm!388721 (= call!388726 (isEmpty!33834 s!2326))))

(declare-fun bm!388722 () Bool)

(assert (=> bm!388722 (= call!388727 (Exists!2399 (ite c!947112 lambda!284797 lambda!284798)))))

(assert (=> b!5429003 (= e!3364109 call!388727)))

(assert (= (and d!1731245 c!947110) b!5428997))

(assert (= (and d!1731245 (not c!947110)) b!5428993))

(assert (= (and b!5428993 res!2310311) b!5428998))

(assert (= (and b!5428998 c!947111) b!5429000))

(assert (= (and b!5428998 (not c!947111)) b!5428994))

(assert (= (and b!5428994 c!947113) b!5429001))

(assert (= (and b!5428994 (not c!947113)) b!5428999))

(assert (= (and b!5429001 (not res!2310313)) b!5428996))

(assert (= (and b!5428999 c!947112) b!5429002))

(assert (= (and b!5428999 (not c!947112)) b!5429003))

(assert (= (and b!5429002 (not res!2310312)) b!5428995))

(assert (= (or b!5428995 b!5429003) bm!388722))

(assert (= (or b!5428997 b!5429002) bm!388721))

(declare-fun m!6452452 () Bool)

(assert (=> b!5428996 m!6452452))

(declare-fun m!6452454 () Bool)

(assert (=> b!5429001 m!6452454))

(declare-fun m!6452456 () Bool)

(assert (=> bm!388721 m!6452456))

(declare-fun m!6452458 () Bool)

(assert (=> bm!388722 m!6452458))

(assert (=> b!5428679 d!1731245))

(declare-fun b!5429032 () Bool)

(declare-fun e!3364126 () Bool)

(declare-fun head!11644 (List!61955) C!30706)

(assert (=> b!5429032 (= e!3364126 (= (head!11644 s!2326) (c!947040 r!7292)))))

(declare-fun b!5429033 () Bool)

(declare-fun e!3364130 () Bool)

(declare-fun lt!2213740 () Bool)

(assert (=> b!5429033 (= e!3364130 (not lt!2213740))))

(declare-fun b!5429034 () Bool)

(declare-fun res!2310335 () Bool)

(declare-fun e!3364131 () Bool)

(assert (=> b!5429034 (=> res!2310335 e!3364131)))

(assert (=> b!5429034 (= res!2310335 (not (is-ElementMatch!15218 r!7292)))))

(assert (=> b!5429034 (= e!3364130 e!3364131)))

(declare-fun b!5429035 () Bool)

(declare-fun e!3364129 () Bool)

(declare-fun e!3364128 () Bool)

(assert (=> b!5429035 (= e!3364129 e!3364128)))

(declare-fun res!2310332 () Bool)

(assert (=> b!5429035 (=> res!2310332 e!3364128)))

(declare-fun call!388730 () Bool)

(assert (=> b!5429035 (= res!2310332 call!388730)))

(declare-fun b!5429036 () Bool)

(declare-fun res!2310331 () Bool)

(assert (=> b!5429036 (=> res!2310331 e!3364131)))

(assert (=> b!5429036 (= res!2310331 e!3364126)))

(declare-fun res!2310333 () Bool)

(assert (=> b!5429036 (=> (not res!2310333) (not e!3364126))))

(assert (=> b!5429036 (= res!2310333 lt!2213740)))

(declare-fun d!1731247 () Bool)

(declare-fun e!3364125 () Bool)

(assert (=> d!1731247 e!3364125))

(declare-fun c!947122 () Bool)

(assert (=> d!1731247 (= c!947122 (is-EmptyExpr!15218 r!7292))))

(declare-fun e!3364127 () Bool)

(assert (=> d!1731247 (= lt!2213740 e!3364127)))

(declare-fun c!947121 () Bool)

(assert (=> d!1731247 (= c!947121 (isEmpty!33834 s!2326))))

(assert (=> d!1731247 (validRegex!6954 r!7292)))

(assert (=> d!1731247 (= (matchR!7403 r!7292 s!2326) lt!2213740)))

(declare-fun b!5429037 () Bool)

(declare-fun derivativeStep!4284 (Regex!15218 C!30706) Regex!15218)

(declare-fun tail!10741 (List!61955) List!61955)

(assert (=> b!5429037 (= e!3364127 (matchR!7403 (derivativeStep!4284 r!7292 (head!11644 s!2326)) (tail!10741 s!2326)))))

(declare-fun b!5429038 () Bool)

(declare-fun res!2310330 () Bool)

(assert (=> b!5429038 (=> res!2310330 e!3364128)))

(assert (=> b!5429038 (= res!2310330 (not (isEmpty!33834 (tail!10741 s!2326))))))

(declare-fun b!5429039 () Bool)

(declare-fun res!2310336 () Bool)

(assert (=> b!5429039 (=> (not res!2310336) (not e!3364126))))

(assert (=> b!5429039 (= res!2310336 (isEmpty!33834 (tail!10741 s!2326)))))

(declare-fun b!5429040 () Bool)

(assert (=> b!5429040 (= e!3364125 (= lt!2213740 call!388730))))

(declare-fun b!5429041 () Bool)

(assert (=> b!5429041 (= e!3364125 e!3364130)))

(declare-fun c!947120 () Bool)

(assert (=> b!5429041 (= c!947120 (is-EmptyLang!15218 r!7292))))

(declare-fun b!5429042 () Bool)

(assert (=> b!5429042 (= e!3364127 (nullable!5387 r!7292))))

(declare-fun b!5429043 () Bool)

(declare-fun res!2310334 () Bool)

(assert (=> b!5429043 (=> (not res!2310334) (not e!3364126))))

(assert (=> b!5429043 (= res!2310334 (not call!388730))))

(declare-fun b!5429044 () Bool)

(assert (=> b!5429044 (= e!3364131 e!3364129)))

(declare-fun res!2310337 () Bool)

(assert (=> b!5429044 (=> (not res!2310337) (not e!3364129))))

(assert (=> b!5429044 (= res!2310337 (not lt!2213740))))

(declare-fun b!5429045 () Bool)

(assert (=> b!5429045 (= e!3364128 (not (= (head!11644 s!2326) (c!947040 r!7292))))))

(declare-fun bm!388725 () Bool)

(assert (=> bm!388725 (= call!388730 (isEmpty!33834 s!2326))))

(assert (= (and d!1731247 c!947121) b!5429042))

(assert (= (and d!1731247 (not c!947121)) b!5429037))

(assert (= (and d!1731247 c!947122) b!5429040))

(assert (= (and d!1731247 (not c!947122)) b!5429041))

(assert (= (and b!5429041 c!947120) b!5429033))

(assert (= (and b!5429041 (not c!947120)) b!5429034))

(assert (= (and b!5429034 (not res!2310335)) b!5429036))

(assert (= (and b!5429036 res!2310333) b!5429043))

(assert (= (and b!5429043 res!2310334) b!5429039))

(assert (= (and b!5429039 res!2310336) b!5429032))

(assert (= (and b!5429036 (not res!2310331)) b!5429044))

(assert (= (and b!5429044 res!2310337) b!5429035))

(assert (= (and b!5429035 (not res!2310332)) b!5429038))

(assert (= (and b!5429038 (not res!2310330)) b!5429045))

(assert (= (or b!5429040 b!5429035 b!5429043) bm!388725))

(declare-fun m!6452460 () Bool)

(assert (=> b!5429038 m!6452460))

(assert (=> b!5429038 m!6452460))

(declare-fun m!6452462 () Bool)

(assert (=> b!5429038 m!6452462))

(assert (=> bm!388725 m!6452456))

(assert (=> d!1731247 m!6452456))

(assert (=> d!1731247 m!6452258))

(declare-fun m!6452464 () Bool)

(assert (=> b!5429032 m!6452464))

(declare-fun m!6452466 () Bool)

(assert (=> b!5429042 m!6452466))

(assert (=> b!5429037 m!6452464))

(assert (=> b!5429037 m!6452464))

(declare-fun m!6452468 () Bool)

(assert (=> b!5429037 m!6452468))

(assert (=> b!5429037 m!6452460))

(assert (=> b!5429037 m!6452468))

(assert (=> b!5429037 m!6452460))

(declare-fun m!6452470 () Bool)

(assert (=> b!5429037 m!6452470))

(assert (=> b!5429045 m!6452464))

(assert (=> b!5429039 m!6452460))

(assert (=> b!5429039 m!6452460))

(assert (=> b!5429039 m!6452462))

(assert (=> b!5428679 d!1731247))

(declare-fun d!1731249 () Bool)

(assert (=> d!1731249 (= (matchR!7403 r!7292 s!2326) (matchRSpec!2321 r!7292 s!2326))))

(declare-fun lt!2213743 () Unit!154394)

(declare-fun choose!41165 (Regex!15218 List!61955) Unit!154394)

(assert (=> d!1731249 (= lt!2213743 (choose!41165 r!7292 s!2326))))

(assert (=> d!1731249 (validRegex!6954 r!7292)))

(assert (=> d!1731249 (= (mainMatchTheorem!2321 r!7292 s!2326) lt!2213743)))

(declare-fun bs!1254215 () Bool)

(assert (= bs!1254215 d!1731249))

(assert (=> bs!1254215 m!6452186))

(assert (=> bs!1254215 m!6452184))

(declare-fun m!6452472 () Bool)

(assert (=> bs!1254215 m!6452472))

(assert (=> bs!1254215 m!6452258))

(assert (=> b!5428679 d!1731249))

(declare-fun d!1731251 () Bool)

(declare-fun res!2310342 () Bool)

(declare-fun e!3364136 () Bool)

(assert (=> d!1731251 (=> res!2310342 e!3364136)))

(assert (=> d!1731251 (= res!2310342 (is-Nil!61829 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(assert (=> d!1731251 (= (forall!14556 (t!375178 (exprs!5102 (h!68278 zl!343))) lambda!284767) e!3364136)))

(declare-fun b!5429050 () Bool)

(declare-fun e!3364137 () Bool)

(assert (=> b!5429050 (= e!3364136 e!3364137)))

(declare-fun res!2310343 () Bool)

(assert (=> b!5429050 (=> (not res!2310343) (not e!3364137))))

(declare-fun dynLambda!24365 (Int Regex!15218) Bool)

(assert (=> b!5429050 (= res!2310343 (dynLambda!24365 lambda!284767 (h!68277 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5429051 () Bool)

(assert (=> b!5429051 (= e!3364137 (forall!14556 (t!375178 (t!375178 (exprs!5102 (h!68278 zl!343)))) lambda!284767))))

(assert (= (and d!1731251 (not res!2310342)) b!5429050))

(assert (= (and b!5429050 res!2310343) b!5429051))

(declare-fun b_lambda!207173 () Bool)

(assert (=> (not b_lambda!207173) (not b!5429050)))

(declare-fun m!6452474 () Bool)

(assert (=> b!5429050 m!6452474))

(declare-fun m!6452476 () Bool)

(assert (=> b!5429051 m!6452476))

(assert (=> b!5428639 d!1731251))

(declare-fun d!1731253 () Bool)

(declare-fun lt!2213746 () Regex!15218)

(assert (=> d!1731253 (validRegex!6954 lt!2213746)))

(assert (=> d!1731253 (= lt!2213746 (generalisedUnion!1147 (unfocusZipperList!660 zl!343)))))

(assert (=> d!1731253 (= (unfocusZipper!960 zl!343) lt!2213746)))

(declare-fun bs!1254216 () Bool)

(assert (= bs!1254216 d!1731253))

(declare-fun m!6452478 () Bool)

(assert (=> bs!1254216 m!6452478))

(assert (=> bs!1254216 m!6452260))

(assert (=> bs!1254216 m!6452260))

(assert (=> bs!1254216 m!6452262))

(assert (=> b!5428678 d!1731253))

(declare-fun b!5429058 () Bool)

(assert (=> b!5429058 true))

(declare-fun bs!1254217 () Bool)

(declare-fun b!5429060 () Bool)

(assert (= bs!1254217 (and b!5429060 b!5429058)))

(declare-fun lambda!284807 () Int)

(declare-fun lt!2213757 () Int)

(declare-fun lt!2213756 () Int)

(declare-fun lambda!284806 () Int)

(assert (=> bs!1254217 (= (= lt!2213756 lt!2213757) (= lambda!284807 lambda!284806))))

(assert (=> b!5429060 true))

(declare-fun d!1731255 () Bool)

(declare-fun e!3364142 () Bool)

(assert (=> d!1731255 e!3364142))

(declare-fun res!2310346 () Bool)

(assert (=> d!1731255 (=> (not res!2310346) (not e!3364142))))

(assert (=> d!1731255 (= res!2310346 (>= lt!2213756 0))))

(declare-fun e!3364143 () Int)

(assert (=> d!1731255 (= lt!2213756 e!3364143)))

(declare-fun c!947131 () Bool)

(assert (=> d!1731255 (= c!947131 (is-Cons!61830 zl!343))))

(assert (=> d!1731255 (= (zipperDepth!159 zl!343) lt!2213756)))

(assert (=> b!5429058 (= e!3364143 lt!2213757)))

(declare-fun contextDepth!91 (Context!9204) Int)

(assert (=> b!5429058 (= lt!2213757 (maxBigInt!0 (contextDepth!91 (h!68278 zl!343)) (zipperDepth!159 (t!375179 zl!343))))))

(declare-fun lambda!284805 () Int)

(declare-fun lt!2213758 () Unit!154394)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!85 (List!61954 Int Int Int) Unit!154394)

(assert (=> b!5429058 (= lt!2213758 (lemmaForallContextDepthBiggerThanTransitive!85 (t!375179 zl!343) lt!2213757 (zipperDepth!159 (t!375179 zl!343)) lambda!284805))))

(declare-fun forall!14558 (List!61954 Int) Bool)

(assert (=> b!5429058 (forall!14558 (t!375179 zl!343) lambda!284806)))

(declare-fun lt!2213755 () Unit!154394)

(assert (=> b!5429058 (= lt!2213755 lt!2213758)))

(declare-fun b!5429059 () Bool)

(assert (=> b!5429059 (= e!3364143 0)))

(assert (=> b!5429060 (= e!3364142 (forall!14558 zl!343 lambda!284807))))

(assert (= (and d!1731255 c!947131) b!5429058))

(assert (= (and d!1731255 (not c!947131)) b!5429059))

(assert (= (and d!1731255 res!2310346) b!5429060))

(declare-fun m!6452480 () Bool)

(assert (=> b!5429058 m!6452480))

(assert (=> b!5429058 m!6452480))

(declare-fun m!6452482 () Bool)

(assert (=> b!5429058 m!6452482))

(declare-fun m!6452484 () Bool)

(assert (=> b!5429058 m!6452484))

(declare-fun m!6452486 () Bool)

(assert (=> b!5429058 m!6452486))

(assert (=> b!5429058 m!6452486))

(assert (=> b!5429058 m!6452480))

(declare-fun m!6452488 () Bool)

(assert (=> b!5429058 m!6452488))

(declare-fun m!6452490 () Bool)

(assert (=> b!5429060 m!6452490))

(assert (=> b!5428637 d!1731255))

(declare-fun bs!1254218 () Bool)

(declare-fun b!5429063 () Bool)

(assert (= bs!1254218 (and b!5429063 b!5429058)))

(declare-fun lambda!284808 () Int)

(assert (=> bs!1254218 (= lambda!284808 lambda!284805)))

(declare-fun lt!2213761 () Int)

(declare-fun lambda!284809 () Int)

(assert (=> bs!1254218 (= (= lt!2213761 lt!2213757) (= lambda!284809 lambda!284806))))

(declare-fun bs!1254219 () Bool)

(assert (= bs!1254219 (and b!5429063 b!5429060)))

(assert (=> bs!1254219 (= (= lt!2213761 lt!2213756) (= lambda!284809 lambda!284807))))

(assert (=> b!5429063 true))

(declare-fun bs!1254220 () Bool)

(declare-fun b!5429065 () Bool)

(assert (= bs!1254220 (and b!5429065 b!5429058)))

(declare-fun lt!2213760 () Int)

(declare-fun lambda!284810 () Int)

(assert (=> bs!1254220 (= (= lt!2213760 lt!2213757) (= lambda!284810 lambda!284806))))

(declare-fun bs!1254221 () Bool)

(assert (= bs!1254221 (and b!5429065 b!5429060)))

(assert (=> bs!1254221 (= (= lt!2213760 lt!2213756) (= lambda!284810 lambda!284807))))

(declare-fun bs!1254222 () Bool)

(assert (= bs!1254222 (and b!5429065 b!5429063)))

(assert (=> bs!1254222 (= (= lt!2213760 lt!2213761) (= lambda!284810 lambda!284809))))

(assert (=> b!5429065 true))

(declare-fun d!1731257 () Bool)

(declare-fun e!3364144 () Bool)

(assert (=> d!1731257 e!3364144))

(declare-fun res!2310347 () Bool)

(assert (=> d!1731257 (=> (not res!2310347) (not e!3364144))))

(assert (=> d!1731257 (= res!2310347 (>= lt!2213760 0))))

(declare-fun e!3364145 () Int)

(assert (=> d!1731257 (= lt!2213760 e!3364145)))

(declare-fun c!947132 () Bool)

(assert (=> d!1731257 (= c!947132 (is-Cons!61830 (Cons!61830 lt!2213600 Nil!61830)))))

(assert (=> d!1731257 (= (zipperDepth!159 (Cons!61830 lt!2213600 Nil!61830)) lt!2213760)))

(assert (=> b!5429063 (= e!3364145 lt!2213761)))

(assert (=> b!5429063 (= lt!2213761 (maxBigInt!0 (contextDepth!91 (h!68278 (Cons!61830 lt!2213600 Nil!61830))) (zipperDepth!159 (t!375179 (Cons!61830 lt!2213600 Nil!61830)))))))

(declare-fun lt!2213762 () Unit!154394)

(assert (=> b!5429063 (= lt!2213762 (lemmaForallContextDepthBiggerThanTransitive!85 (t!375179 (Cons!61830 lt!2213600 Nil!61830)) lt!2213761 (zipperDepth!159 (t!375179 (Cons!61830 lt!2213600 Nil!61830))) lambda!284808))))

(assert (=> b!5429063 (forall!14558 (t!375179 (Cons!61830 lt!2213600 Nil!61830)) lambda!284809)))

(declare-fun lt!2213759 () Unit!154394)

(assert (=> b!5429063 (= lt!2213759 lt!2213762)))

(declare-fun b!5429064 () Bool)

(assert (=> b!5429064 (= e!3364145 0)))

(assert (=> b!5429065 (= e!3364144 (forall!14558 (Cons!61830 lt!2213600 Nil!61830) lambda!284810))))

(assert (= (and d!1731257 c!947132) b!5429063))

(assert (= (and d!1731257 (not c!947132)) b!5429064))

(assert (= (and d!1731257 res!2310347) b!5429065))

(declare-fun m!6452492 () Bool)

(assert (=> b!5429063 m!6452492))

(assert (=> b!5429063 m!6452492))

(declare-fun m!6452494 () Bool)

(assert (=> b!5429063 m!6452494))

(declare-fun m!6452496 () Bool)

(assert (=> b!5429063 m!6452496))

(declare-fun m!6452498 () Bool)

(assert (=> b!5429063 m!6452498))

(assert (=> b!5429063 m!6452498))

(assert (=> b!5429063 m!6452492))

(declare-fun m!6452500 () Bool)

(assert (=> b!5429063 m!6452500))

(declare-fun m!6452502 () Bool)

(assert (=> b!5429065 m!6452502))

(assert (=> b!5428637 d!1731257))

(declare-fun bs!1254223 () Bool)

(declare-fun d!1731259 () Bool)

(assert (= bs!1254223 (and d!1731259 b!5428639)))

(declare-fun lambda!284813 () Int)

(assert (=> bs!1254223 (= lambda!284813 lambda!284767)))

(declare-fun bs!1254224 () Bool)

(assert (= bs!1254224 (and d!1731259 d!1731243)))

(assert (=> bs!1254224 (= lambda!284813 lambda!284792)))

(assert (=> d!1731259 (= (inv!81293 (h!68278 zl!343)) (forall!14556 (exprs!5102 (h!68278 zl!343)) lambda!284813))))

(declare-fun bs!1254225 () Bool)

(assert (= bs!1254225 d!1731259))

(declare-fun m!6452504 () Bool)

(assert (=> bs!1254225 m!6452504))

(assert (=> b!5428638 d!1731259))

(declare-fun d!1731261 () Bool)

(declare-fun c!947135 () Bool)

(assert (=> d!1731261 (= c!947135 (isEmpty!33834 (t!375180 s!2326)))))

(declare-fun e!3364148 () Bool)

(assert (=> d!1731261 (= (matchZipper!1462 lt!2213606 (t!375180 s!2326)) e!3364148)))

(declare-fun b!5429070 () Bool)

(declare-fun nullableZipper!1463 ((Set Context!9204)) Bool)

(assert (=> b!5429070 (= e!3364148 (nullableZipper!1463 lt!2213606))))

(declare-fun b!5429071 () Bool)

(assert (=> b!5429071 (= e!3364148 (matchZipper!1462 (derivationStepZipper!1457 lt!2213606 (head!11644 (t!375180 s!2326))) (tail!10741 (t!375180 s!2326))))))

(assert (= (and d!1731261 c!947135) b!5429070))

(assert (= (and d!1731261 (not c!947135)) b!5429071))

(declare-fun m!6452506 () Bool)

(assert (=> d!1731261 m!6452506))

(declare-fun m!6452508 () Bool)

(assert (=> b!5429070 m!6452508))

(declare-fun m!6452510 () Bool)

(assert (=> b!5429071 m!6452510))

(assert (=> b!5429071 m!6452510))

(declare-fun m!6452512 () Bool)

(assert (=> b!5429071 m!6452512))

(declare-fun m!6452514 () Bool)

(assert (=> b!5429071 m!6452514))

(assert (=> b!5429071 m!6452512))

(assert (=> b!5429071 m!6452514))

(declare-fun m!6452516 () Bool)

(assert (=> b!5429071 m!6452516))

(assert (=> b!5428658 d!1731261))

(declare-fun d!1731263 () Bool)

(declare-fun lt!2213763 () Regex!15218)

(assert (=> d!1731263 (validRegex!6954 lt!2213763)))

(assert (=> d!1731263 (= lt!2213763 (generalisedUnion!1147 (unfocusZipperList!660 (Cons!61830 lt!2213596 Nil!61830))))))

(assert (=> d!1731263 (= (unfocusZipper!960 (Cons!61830 lt!2213596 Nil!61830)) lt!2213763)))

(declare-fun bs!1254226 () Bool)

(assert (= bs!1254226 d!1731263))

(declare-fun m!6452518 () Bool)

(assert (=> bs!1254226 m!6452518))

(declare-fun m!6452520 () Bool)

(assert (=> bs!1254226 m!6452520))

(assert (=> bs!1254226 m!6452520))

(declare-fun m!6452522 () Bool)

(assert (=> bs!1254226 m!6452522))

(assert (=> b!5428656 d!1731263))

(declare-fun bs!1254227 () Bool)

(declare-fun d!1731265 () Bool)

(assert (= bs!1254227 (and d!1731265 b!5428647)))

(declare-fun lambda!284816 () Int)

(assert (=> bs!1254227 (= lambda!284816 lambda!284766)))

(assert (=> d!1731265 true))

(assert (=> d!1731265 (= (derivationStepZipper!1457 lt!2213608 (h!68279 s!2326)) (flatMap!945 lt!2213608 lambda!284816))))

(declare-fun bs!1254228 () Bool)

(assert (= bs!1254228 d!1731265))

(declare-fun m!6452524 () Bool)

(assert (=> bs!1254228 m!6452524))

(assert (=> b!5428675 d!1731265))

(declare-fun d!1731267 () Bool)

(declare-fun choose!41166 ((Set Context!9204) Int) (Set Context!9204))

(assert (=> d!1731267 (= (flatMap!945 lt!2213608 lambda!284766) (choose!41166 lt!2213608 lambda!284766))))

(declare-fun bs!1254229 () Bool)

(assert (= bs!1254229 d!1731267))

(declare-fun m!6452526 () Bool)

(assert (=> bs!1254229 m!6452526))

(assert (=> b!5428675 d!1731267))

(declare-fun b!5429084 () Bool)

(declare-fun e!3364155 () (Set Context!9204))

(assert (=> b!5429084 (= e!3364155 (as set.empty (Set Context!9204)))))

(declare-fun b!5429085 () Bool)

(declare-fun e!3364157 () (Set Context!9204))

(assert (=> b!5429085 (= e!3364157 e!3364155)))

(declare-fun c!947143 () Bool)

(assert (=> b!5429085 (= c!947143 (is-Cons!61829 (exprs!5102 lt!2213600)))))

(declare-fun b!5429086 () Bool)

(declare-fun e!3364156 () Bool)

(assert (=> b!5429086 (= e!3364156 (nullable!5387 (h!68277 (exprs!5102 lt!2213600))))))

(declare-fun b!5429087 () Bool)

(declare-fun call!388733 () (Set Context!9204))

(assert (=> b!5429087 (= e!3364155 call!388733)))

(declare-fun b!5429088 () Bool)

(assert (=> b!5429088 (= e!3364157 (set.union call!388733 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 lt!2213600))) (h!68279 s!2326))))))

(declare-fun bm!388728 () Bool)

(assert (=> bm!388728 (= call!388733 (derivationStepZipperDown!666 (h!68277 (exprs!5102 lt!2213600)) (Context!9205 (t!375178 (exprs!5102 lt!2213600))) (h!68279 s!2326)))))

(declare-fun d!1731269 () Bool)

(declare-fun c!947142 () Bool)

(assert (=> d!1731269 (= c!947142 e!3364156)))

(declare-fun res!2310350 () Bool)

(assert (=> d!1731269 (=> (not res!2310350) (not e!3364156))))

(assert (=> d!1731269 (= res!2310350 (is-Cons!61829 (exprs!5102 lt!2213600)))))

(assert (=> d!1731269 (= (derivationStepZipperUp!590 lt!2213600 (h!68279 s!2326)) e!3364157)))

(assert (= (and d!1731269 res!2310350) b!5429086))

(assert (= (and d!1731269 c!947142) b!5429088))

(assert (= (and d!1731269 (not c!947142)) b!5429085))

(assert (= (and b!5429085 c!947143) b!5429087))

(assert (= (and b!5429085 (not c!947143)) b!5429084))

(assert (= (or b!5429088 b!5429087) bm!388728))

(declare-fun m!6452528 () Bool)

(assert (=> b!5429086 m!6452528))

(declare-fun m!6452530 () Bool)

(assert (=> b!5429088 m!6452530))

(declare-fun m!6452532 () Bool)

(assert (=> bm!388728 m!6452532))

(assert (=> b!5428675 d!1731269))

(declare-fun d!1731271 () Bool)

(declare-fun dynLambda!24366 (Int Context!9204) (Set Context!9204))

(assert (=> d!1731271 (= (flatMap!945 lt!2213608 lambda!284766) (dynLambda!24366 lambda!284766 lt!2213600))))

(declare-fun lt!2213766 () Unit!154394)

(declare-fun choose!41167 ((Set Context!9204) Context!9204 Int) Unit!154394)

(assert (=> d!1731271 (= lt!2213766 (choose!41167 lt!2213608 lt!2213600 lambda!284766))))

(assert (=> d!1731271 (= lt!2213608 (set.insert lt!2213600 (as set.empty (Set Context!9204))))))

(assert (=> d!1731271 (= (lemmaFlatMapOnSingletonSet!477 lt!2213608 lt!2213600 lambda!284766) lt!2213766)))

(declare-fun b_lambda!207175 () Bool)

(assert (=> (not b_lambda!207175) (not d!1731271)))

(declare-fun bs!1254230 () Bool)

(assert (= bs!1254230 d!1731271))

(assert (=> bs!1254230 m!6452192))

(declare-fun m!6452534 () Bool)

(assert (=> bs!1254230 m!6452534))

(declare-fun m!6452536 () Bool)

(assert (=> bs!1254230 m!6452536))

(assert (=> bs!1254230 m!6452198))

(assert (=> b!5428675 d!1731271))

(declare-fun d!1731273 () Bool)

(declare-fun choose!41168 (Int) Bool)

(assert (=> d!1731273 (= (Exists!2399 lambda!284764) (choose!41168 lambda!284764))))

(declare-fun bs!1254231 () Bool)

(assert (= bs!1254231 d!1731273))

(declare-fun m!6452538 () Bool)

(assert (=> bs!1254231 m!6452538))

(assert (=> b!5428676 d!1731273))

(declare-fun d!1731275 () Bool)

(declare-fun e!3364171 () Bool)

(assert (=> d!1731275 e!3364171))

(declare-fun res!2310361 () Bool)

(assert (=> d!1731275 (=> res!2310361 e!3364171)))

(declare-fun e!3364169 () Bool)

(assert (=> d!1731275 (= res!2310361 e!3364169)))

(declare-fun res!2310365 () Bool)

(assert (=> d!1731275 (=> (not res!2310365) (not e!3364169))))

(declare-fun lt!2213773 () Option!15329)

(assert (=> d!1731275 (= res!2310365 (isDefined!12032 lt!2213773))))

(declare-fun e!3364172 () Option!15329)

(assert (=> d!1731275 (= lt!2213773 e!3364172)))

(declare-fun c!947148 () Bool)

(declare-fun e!3364168 () Bool)

(assert (=> d!1731275 (= c!947148 e!3364168)))

(declare-fun res!2310362 () Bool)

(assert (=> d!1731275 (=> (not res!2310362) (not e!3364168))))

(assert (=> d!1731275 (= res!2310362 (matchR!7403 (regOne!30948 r!7292) Nil!61831))))

(assert (=> d!1731275 (validRegex!6954 (regOne!30948 r!7292))))

(assert (=> d!1731275 (= (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) Nil!61831 s!2326 s!2326) lt!2213773)))

(declare-fun b!5429107 () Bool)

(declare-fun e!3364170 () Option!15329)

(assert (=> b!5429107 (= e!3364172 e!3364170)))

(declare-fun c!947149 () Bool)

(assert (=> b!5429107 (= c!947149 (is-Nil!61831 s!2326))))

(declare-fun b!5429108 () Bool)

(declare-fun ++!13601 (List!61955 List!61955) List!61955)

(declare-fun get!21328 (Option!15329) tuple2!64834)

(assert (=> b!5429108 (= e!3364169 (= (++!13601 (_1!35720 (get!21328 lt!2213773)) (_2!35720 (get!21328 lt!2213773))) s!2326))))

(declare-fun b!5429109 () Bool)

(declare-fun lt!2213774 () Unit!154394)

(declare-fun lt!2213775 () Unit!154394)

(assert (=> b!5429109 (= lt!2213774 lt!2213775)))

(assert (=> b!5429109 (= (++!13601 (++!13601 Nil!61831 (Cons!61831 (h!68279 s!2326) Nil!61831)) (t!375180 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1858 (List!61955 C!30706 List!61955 List!61955) Unit!154394)

(assert (=> b!5429109 (= lt!2213775 (lemmaMoveElementToOtherListKeepsConcatEq!1858 Nil!61831 (h!68279 s!2326) (t!375180 s!2326) s!2326))))

(assert (=> b!5429109 (= e!3364170 (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) (++!13601 Nil!61831 (Cons!61831 (h!68279 s!2326) Nil!61831)) (t!375180 s!2326) s!2326))))

(declare-fun b!5429110 () Bool)

(assert (=> b!5429110 (= e!3364170 None!15328)))

(declare-fun b!5429111 () Bool)

(assert (=> b!5429111 (= e!3364171 (not (isDefined!12032 lt!2213773)))))

(declare-fun b!5429112 () Bool)

(declare-fun res!2310364 () Bool)

(assert (=> b!5429112 (=> (not res!2310364) (not e!3364169))))

(assert (=> b!5429112 (= res!2310364 (matchR!7403 (regOne!30948 r!7292) (_1!35720 (get!21328 lt!2213773))))))

(declare-fun b!5429113 () Bool)

(assert (=> b!5429113 (= e!3364172 (Some!15328 (tuple2!64835 Nil!61831 s!2326)))))

(declare-fun b!5429114 () Bool)

(assert (=> b!5429114 (= e!3364168 (matchR!7403 (regTwo!30948 r!7292) s!2326))))

(declare-fun b!5429115 () Bool)

(declare-fun res!2310363 () Bool)

(assert (=> b!5429115 (=> (not res!2310363) (not e!3364169))))

(assert (=> b!5429115 (= res!2310363 (matchR!7403 (regTwo!30948 r!7292) (_2!35720 (get!21328 lt!2213773))))))

(assert (= (and d!1731275 res!2310362) b!5429114))

(assert (= (and d!1731275 c!947148) b!5429113))

(assert (= (and d!1731275 (not c!947148)) b!5429107))

(assert (= (and b!5429107 c!947149) b!5429110))

(assert (= (and b!5429107 (not c!947149)) b!5429109))

(assert (= (and d!1731275 res!2310365) b!5429112))

(assert (= (and b!5429112 res!2310364) b!5429115))

(assert (= (and b!5429115 res!2310363) b!5429108))

(assert (= (and d!1731275 (not res!2310361)) b!5429111))

(declare-fun m!6452540 () Bool)

(assert (=> d!1731275 m!6452540))

(declare-fun m!6452542 () Bool)

(assert (=> d!1731275 m!6452542))

(declare-fun m!6452544 () Bool)

(assert (=> d!1731275 m!6452544))

(declare-fun m!6452546 () Bool)

(assert (=> b!5429108 m!6452546))

(declare-fun m!6452548 () Bool)

(assert (=> b!5429108 m!6452548))

(assert (=> b!5429115 m!6452546))

(declare-fun m!6452550 () Bool)

(assert (=> b!5429115 m!6452550))

(declare-fun m!6452552 () Bool)

(assert (=> b!5429114 m!6452552))

(assert (=> b!5429112 m!6452546))

(declare-fun m!6452554 () Bool)

(assert (=> b!5429112 m!6452554))

(assert (=> b!5429111 m!6452540))

(declare-fun m!6452556 () Bool)

(assert (=> b!5429109 m!6452556))

(assert (=> b!5429109 m!6452556))

(declare-fun m!6452558 () Bool)

(assert (=> b!5429109 m!6452558))

(declare-fun m!6452560 () Bool)

(assert (=> b!5429109 m!6452560))

(assert (=> b!5429109 m!6452556))

(declare-fun m!6452562 () Bool)

(assert (=> b!5429109 m!6452562))

(assert (=> b!5428676 d!1731275))

(declare-fun d!1731277 () Bool)

(assert (=> d!1731277 (= (Exists!2399 lambda!284765) (choose!41168 lambda!284765))))

(declare-fun bs!1254232 () Bool)

(assert (= bs!1254232 d!1731277))

(declare-fun m!6452564 () Bool)

(assert (=> bs!1254232 m!6452564))

(assert (=> b!5428676 d!1731277))

(declare-fun bs!1254233 () Bool)

(declare-fun d!1731279 () Bool)

(assert (= bs!1254233 (and d!1731279 b!5428676)))

(declare-fun lambda!284819 () Int)

(assert (=> bs!1254233 (= lambda!284819 lambda!284764)))

(assert (=> bs!1254233 (not (= lambda!284819 lambda!284765))))

(declare-fun bs!1254234 () Bool)

(assert (= bs!1254234 (and d!1731279 b!5428995)))

(assert (=> bs!1254234 (not (= lambda!284819 lambda!284797))))

(declare-fun bs!1254235 () Bool)

(assert (= bs!1254235 (and d!1731279 b!5429003)))

(assert (=> bs!1254235 (not (= lambda!284819 lambda!284798))))

(assert (=> d!1731279 true))

(assert (=> d!1731279 true))

(assert (=> d!1731279 true))

(assert (=> d!1731279 (= (isDefined!12032 (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) Nil!61831 s!2326 s!2326)) (Exists!2399 lambda!284819))))

(declare-fun lt!2213778 () Unit!154394)

(declare-fun choose!41169 (Regex!15218 Regex!15218 List!61955) Unit!154394)

(assert (=> d!1731279 (= lt!2213778 (choose!41169 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326))))

(assert (=> d!1731279 (validRegex!6954 (regOne!30948 r!7292))))

(assert (=> d!1731279 (= (lemmaFindConcatSeparationEquivalentToExists!1507 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326) lt!2213778)))

(declare-fun bs!1254236 () Bool)

(assert (= bs!1254236 d!1731279))

(declare-fun m!6452566 () Bool)

(assert (=> bs!1254236 m!6452566))

(assert (=> bs!1254236 m!6452544))

(assert (=> bs!1254236 m!6452174))

(declare-fun m!6452568 () Bool)

(assert (=> bs!1254236 m!6452568))

(assert (=> bs!1254236 m!6452174))

(assert (=> bs!1254236 m!6452176))

(assert (=> b!5428676 d!1731279))

(declare-fun bs!1254237 () Bool)

(declare-fun d!1731281 () Bool)

(assert (= bs!1254237 (and d!1731281 b!5428676)))

(declare-fun lambda!284824 () Int)

(assert (=> bs!1254237 (= lambda!284824 lambda!284764)))

(declare-fun bs!1254238 () Bool)

(assert (= bs!1254238 (and d!1731281 b!5429003)))

(assert (=> bs!1254238 (not (= lambda!284824 lambda!284798))))

(declare-fun bs!1254239 () Bool)

(assert (= bs!1254239 (and d!1731281 d!1731279)))

(assert (=> bs!1254239 (= lambda!284824 lambda!284819)))

(declare-fun bs!1254240 () Bool)

(assert (= bs!1254240 (and d!1731281 b!5428995)))

(assert (=> bs!1254240 (not (= lambda!284824 lambda!284797))))

(assert (=> bs!1254237 (not (= lambda!284824 lambda!284765))))

(assert (=> d!1731281 true))

(assert (=> d!1731281 true))

(assert (=> d!1731281 true))

(declare-fun lambda!284825 () Int)

(assert (=> bs!1254237 (not (= lambda!284825 lambda!284764))))

(declare-fun bs!1254241 () Bool)

(assert (= bs!1254241 d!1731281))

(assert (=> bs!1254241 (not (= lambda!284825 lambda!284824))))

(assert (=> bs!1254238 (= lambda!284825 lambda!284798)))

(assert (=> bs!1254239 (not (= lambda!284825 lambda!284819))))

(assert (=> bs!1254240 (not (= lambda!284825 lambda!284797))))

(assert (=> bs!1254237 (= lambda!284825 lambda!284765)))

(assert (=> d!1731281 true))

(assert (=> d!1731281 true))

(assert (=> d!1731281 true))

(assert (=> d!1731281 (= (Exists!2399 lambda!284824) (Exists!2399 lambda!284825))))

(declare-fun lt!2213781 () Unit!154394)

(declare-fun choose!41170 (Regex!15218 Regex!15218 List!61955) Unit!154394)

(assert (=> d!1731281 (= lt!2213781 (choose!41170 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326))))

(assert (=> d!1731281 (validRegex!6954 (regOne!30948 r!7292))))

(assert (=> d!1731281 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1053 (regOne!30948 r!7292) (regTwo!30948 r!7292) s!2326) lt!2213781)))

(declare-fun m!6452570 () Bool)

(assert (=> bs!1254241 m!6452570))

(declare-fun m!6452572 () Bool)

(assert (=> bs!1254241 m!6452572))

(declare-fun m!6452574 () Bool)

(assert (=> bs!1254241 m!6452574))

(assert (=> bs!1254241 m!6452544))

(assert (=> b!5428676 d!1731281))

(declare-fun d!1731283 () Bool)

(declare-fun isEmpty!33835 (Option!15329) Bool)

(assert (=> d!1731283 (= (isDefined!12032 (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) Nil!61831 s!2326 s!2326)) (not (isEmpty!33835 (findConcatSeparation!1743 (regOne!30948 r!7292) (regTwo!30948 r!7292) Nil!61831 s!2326 s!2326))))))

(declare-fun bs!1254242 () Bool)

(assert (= bs!1254242 d!1731283))

(assert (=> bs!1254242 m!6452174))

(declare-fun m!6452576 () Bool)

(assert (=> bs!1254242 m!6452576))

(assert (=> b!5428676 d!1731283))

(declare-fun d!1731285 () Bool)

(declare-fun c!947150 () Bool)

(assert (=> d!1731285 (= c!947150 (isEmpty!33834 (t!375180 s!2326)))))

(declare-fun e!3364179 () Bool)

(assert (=> d!1731285 (= (matchZipper!1462 lt!2213604 (t!375180 s!2326)) e!3364179)))

(declare-fun b!5429128 () Bool)

(assert (=> b!5429128 (= e!3364179 (nullableZipper!1463 lt!2213604))))

(declare-fun b!5429129 () Bool)

(assert (=> b!5429129 (= e!3364179 (matchZipper!1462 (derivationStepZipper!1457 lt!2213604 (head!11644 (t!375180 s!2326))) (tail!10741 (t!375180 s!2326))))))

(assert (= (and d!1731285 c!947150) b!5429128))

(assert (= (and d!1731285 (not c!947150)) b!5429129))

(assert (=> d!1731285 m!6452506))

(declare-fun m!6452578 () Bool)

(assert (=> b!5429128 m!6452578))

(assert (=> b!5429129 m!6452510))

(assert (=> b!5429129 m!6452510))

(declare-fun m!6452580 () Bool)

(assert (=> b!5429129 m!6452580))

(assert (=> b!5429129 m!6452514))

(assert (=> b!5429129 m!6452580))

(assert (=> b!5429129 m!6452514))

(declare-fun m!6452582 () Bool)

(assert (=> b!5429129 m!6452582))

(assert (=> b!5428644 d!1731285))

(declare-fun d!1731287 () Bool)

(declare-fun c!947151 () Bool)

(assert (=> d!1731287 (= c!947151 (isEmpty!33834 s!2326))))

(declare-fun e!3364180 () Bool)

(assert (=> d!1731287 (= (matchZipper!1462 z!1189 s!2326) e!3364180)))

(declare-fun b!5429130 () Bool)

(assert (=> b!5429130 (= e!3364180 (nullableZipper!1463 z!1189))))

(declare-fun b!5429131 () Bool)

(assert (=> b!5429131 (= e!3364180 (matchZipper!1462 (derivationStepZipper!1457 z!1189 (head!11644 s!2326)) (tail!10741 s!2326)))))

(assert (= (and d!1731287 c!947151) b!5429130))

(assert (= (and d!1731287 (not c!947151)) b!5429131))

(assert (=> d!1731287 m!6452456))

(declare-fun m!6452584 () Bool)

(assert (=> b!5429130 m!6452584))

(assert (=> b!5429131 m!6452464))

(assert (=> b!5429131 m!6452464))

(declare-fun m!6452586 () Bool)

(assert (=> b!5429131 m!6452586))

(assert (=> b!5429131 m!6452460))

(assert (=> b!5429131 m!6452586))

(assert (=> b!5429131 m!6452460))

(declare-fun m!6452588 () Bool)

(assert (=> b!5429131 m!6452588))

(assert (=> b!5428664 d!1731287))

(declare-fun d!1731289 () Bool)

(declare-fun nullableFct!1614 (Regex!15218) Bool)

(assert (=> d!1731289 (= (nullable!5387 (regOne!30948 (regOne!30948 r!7292))) (nullableFct!1614 (regOne!30948 (regOne!30948 r!7292))))))

(declare-fun bs!1254243 () Bool)

(assert (= bs!1254243 d!1731289))

(declare-fun m!6452590 () Bool)

(assert (=> bs!1254243 m!6452590))

(assert (=> b!5428665 d!1731289))

(declare-fun d!1731291 () Bool)

(assert (=> d!1731291 (= (isEmpty!33830 (t!375179 zl!343)) (is-Nil!61830 (t!375179 zl!343)))))

(assert (=> b!5428642 d!1731291))

(declare-fun bs!1254244 () Bool)

(declare-fun d!1731293 () Bool)

(assert (= bs!1254244 (and d!1731293 b!5428639)))

(declare-fun lambda!284826 () Int)

(assert (=> bs!1254244 (= lambda!284826 lambda!284767)))

(declare-fun bs!1254245 () Bool)

(assert (= bs!1254245 (and d!1731293 d!1731243)))

(assert (=> bs!1254245 (= lambda!284826 lambda!284792)))

(declare-fun bs!1254246 () Bool)

(assert (= bs!1254246 (and d!1731293 d!1731259)))

(assert (=> bs!1254246 (= lambda!284826 lambda!284813)))

(assert (=> d!1731293 (= (inv!81293 setElem!35406) (forall!14556 (exprs!5102 setElem!35406) lambda!284826))))

(declare-fun bs!1254247 () Bool)

(assert (= bs!1254247 d!1731293))

(declare-fun m!6452592 () Bool)

(assert (=> bs!1254247 m!6452592))

(assert (=> setNonEmpty!35406 d!1731293))

(declare-fun d!1731295 () Bool)

(assert (=> d!1731295 (= (flatMap!945 lt!2213592 lambda!284766) (choose!41166 lt!2213592 lambda!284766))))

(declare-fun bs!1254248 () Bool)

(assert (= bs!1254248 d!1731295))

(declare-fun m!6452594 () Bool)

(assert (=> bs!1254248 m!6452594))

(assert (=> b!5428661 d!1731295))

(declare-fun b!5429132 () Bool)

(declare-fun e!3364181 () (Set Context!9204))

(assert (=> b!5429132 (= e!3364181 (as set.empty (Set Context!9204)))))

(declare-fun b!5429133 () Bool)

(declare-fun e!3364183 () (Set Context!9204))

(assert (=> b!5429133 (= e!3364183 e!3364181)))

(declare-fun c!947153 () Bool)

(assert (=> b!5429133 (= c!947153 (is-Cons!61829 (exprs!5102 lt!2213596)))))

(declare-fun b!5429134 () Bool)

(declare-fun e!3364182 () Bool)

(assert (=> b!5429134 (= e!3364182 (nullable!5387 (h!68277 (exprs!5102 lt!2213596))))))

(declare-fun b!5429135 () Bool)

(declare-fun call!388734 () (Set Context!9204))

(assert (=> b!5429135 (= e!3364181 call!388734)))

(declare-fun b!5429136 () Bool)

(assert (=> b!5429136 (= e!3364183 (set.union call!388734 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 lt!2213596))) (h!68279 s!2326))))))

(declare-fun bm!388729 () Bool)

(assert (=> bm!388729 (= call!388734 (derivationStepZipperDown!666 (h!68277 (exprs!5102 lt!2213596)) (Context!9205 (t!375178 (exprs!5102 lt!2213596))) (h!68279 s!2326)))))

(declare-fun d!1731297 () Bool)

(declare-fun c!947152 () Bool)

(assert (=> d!1731297 (= c!947152 e!3364182)))

(declare-fun res!2310378 () Bool)

(assert (=> d!1731297 (=> (not res!2310378) (not e!3364182))))

(assert (=> d!1731297 (= res!2310378 (is-Cons!61829 (exprs!5102 lt!2213596)))))

(assert (=> d!1731297 (= (derivationStepZipperUp!590 lt!2213596 (h!68279 s!2326)) e!3364183)))

(assert (= (and d!1731297 res!2310378) b!5429134))

(assert (= (and d!1731297 c!947152) b!5429136))

(assert (= (and d!1731297 (not c!947152)) b!5429133))

(assert (= (and b!5429133 c!947153) b!5429135))

(assert (= (and b!5429133 (not c!947153)) b!5429132))

(assert (= (or b!5429136 b!5429135) bm!388729))

(declare-fun m!6452596 () Bool)

(assert (=> b!5429134 m!6452596))

(declare-fun m!6452598 () Bool)

(assert (=> b!5429136 m!6452598))

(declare-fun m!6452600 () Bool)

(assert (=> bm!388729 m!6452600))

(assert (=> b!5428661 d!1731297))

(declare-fun d!1731299 () Bool)

(assert (=> d!1731299 (= (flatMap!945 lt!2213592 lambda!284766) (dynLambda!24366 lambda!284766 lt!2213596))))

(declare-fun lt!2213782 () Unit!154394)

(assert (=> d!1731299 (= lt!2213782 (choose!41167 lt!2213592 lt!2213596 lambda!284766))))

(assert (=> d!1731299 (= lt!2213592 (set.insert lt!2213596 (as set.empty (Set Context!9204))))))

(assert (=> d!1731299 (= (lemmaFlatMapOnSingletonSet!477 lt!2213592 lt!2213596 lambda!284766) lt!2213782)))

(declare-fun b_lambda!207177 () Bool)

(assert (=> (not b_lambda!207177) (not d!1731299)))

(declare-fun bs!1254249 () Bool)

(assert (= bs!1254249 d!1731299))

(assert (=> bs!1254249 m!6452278))

(declare-fun m!6452602 () Bool)

(assert (=> bs!1254249 m!6452602))

(declare-fun m!6452604 () Bool)

(assert (=> bs!1254249 m!6452604))

(assert (=> bs!1254249 m!6452272))

(assert (=> b!5428661 d!1731299))

(declare-fun bs!1254250 () Bool)

(declare-fun d!1731301 () Bool)

(assert (= bs!1254250 (and d!1731301 b!5428647)))

(declare-fun lambda!284827 () Int)

(assert (=> bs!1254250 (= lambda!284827 lambda!284766)))

(declare-fun bs!1254251 () Bool)

(assert (= bs!1254251 (and d!1731301 d!1731265)))

(assert (=> bs!1254251 (= lambda!284827 lambda!284816)))

(assert (=> d!1731301 true))

(assert (=> d!1731301 (= (derivationStepZipper!1457 lt!2213592 (h!68279 s!2326)) (flatMap!945 lt!2213592 lambda!284827))))

(declare-fun bs!1254252 () Bool)

(assert (= bs!1254252 d!1731301))

(declare-fun m!6452606 () Bool)

(assert (=> bs!1254252 m!6452606))

(assert (=> b!5428661 d!1731301))

(declare-fun d!1731303 () Bool)

(declare-fun lt!2213783 () Regex!15218)

(assert (=> d!1731303 (validRegex!6954 lt!2213783)))

(assert (=> d!1731303 (= lt!2213783 (generalisedUnion!1147 (unfocusZipperList!660 (Cons!61830 lt!2213615 Nil!61830))))))

(assert (=> d!1731303 (= (unfocusZipper!960 (Cons!61830 lt!2213615 Nil!61830)) lt!2213783)))

(declare-fun bs!1254253 () Bool)

(assert (= bs!1254253 d!1731303))

(declare-fun m!6452608 () Bool)

(assert (=> bs!1254253 m!6452608))

(declare-fun m!6452610 () Bool)

(assert (=> bs!1254253 m!6452610))

(assert (=> bs!1254253 m!6452610))

(declare-fun m!6452612 () Bool)

(assert (=> bs!1254253 m!6452612))

(assert (=> b!5428662 d!1731303))

(declare-fun d!1731305 () Bool)

(declare-fun e!3364186 () Bool)

(assert (=> d!1731305 (= (matchZipper!1462 (set.union lt!2213606 lt!2213604) (t!375180 s!2326)) e!3364186)))

(declare-fun res!2310381 () Bool)

(assert (=> d!1731305 (=> res!2310381 e!3364186)))

(assert (=> d!1731305 (= res!2310381 (matchZipper!1462 lt!2213606 (t!375180 s!2326)))))

(declare-fun lt!2213786 () Unit!154394)

(declare-fun choose!41171 ((Set Context!9204) (Set Context!9204) List!61955) Unit!154394)

(assert (=> d!1731305 (= lt!2213786 (choose!41171 lt!2213606 lt!2213604 (t!375180 s!2326)))))

(assert (=> d!1731305 (= (lemmaZipperConcatMatchesSameAsBothZippers!455 lt!2213606 lt!2213604 (t!375180 s!2326)) lt!2213786)))

(declare-fun b!5429139 () Bool)

(assert (=> b!5429139 (= e!3364186 (matchZipper!1462 lt!2213604 (t!375180 s!2326)))))

(assert (= (and d!1731305 (not res!2310381)) b!5429139))

(assert (=> d!1731305 m!6452242))

(assert (=> d!1731305 m!6452240))

(declare-fun m!6452614 () Bool)

(assert (=> d!1731305 m!6452614))

(assert (=> b!5429139 m!6452162))

(assert (=> b!5428649 d!1731305))

(assert (=> b!5428649 d!1731261))

(declare-fun d!1731307 () Bool)

(declare-fun c!947154 () Bool)

(assert (=> d!1731307 (= c!947154 (isEmpty!33834 (t!375180 s!2326)))))

(declare-fun e!3364187 () Bool)

(assert (=> d!1731307 (= (matchZipper!1462 (set.union lt!2213606 lt!2213604) (t!375180 s!2326)) e!3364187)))

(declare-fun b!5429140 () Bool)

(assert (=> b!5429140 (= e!3364187 (nullableZipper!1463 (set.union lt!2213606 lt!2213604)))))

(declare-fun b!5429141 () Bool)

(assert (=> b!5429141 (= e!3364187 (matchZipper!1462 (derivationStepZipper!1457 (set.union lt!2213606 lt!2213604) (head!11644 (t!375180 s!2326))) (tail!10741 (t!375180 s!2326))))))

(assert (= (and d!1731307 c!947154) b!5429140))

(assert (= (and d!1731307 (not c!947154)) b!5429141))

(assert (=> d!1731307 m!6452506))

(declare-fun m!6452616 () Bool)

(assert (=> b!5429140 m!6452616))

(assert (=> b!5429141 m!6452510))

(assert (=> b!5429141 m!6452510))

(declare-fun m!6452618 () Bool)

(assert (=> b!5429141 m!6452618))

(assert (=> b!5429141 m!6452514))

(assert (=> b!5429141 m!6452618))

(assert (=> b!5429141 m!6452514))

(declare-fun m!6452620 () Bool)

(assert (=> b!5429141 m!6452620))

(assert (=> b!5428649 d!1731307))

(assert (=> b!5428648 d!1731285))

(declare-fun d!1731309 () Bool)

(declare-fun e!3364190 () Bool)

(assert (=> d!1731309 e!3364190))

(declare-fun res!2310384 () Bool)

(assert (=> d!1731309 (=> (not res!2310384) (not e!3364190))))

(declare-fun lt!2213789 () List!61954)

(declare-fun noDuplicate!1413 (List!61954) Bool)

(assert (=> d!1731309 (= res!2310384 (noDuplicate!1413 lt!2213789))))

(declare-fun choose!41172 ((Set Context!9204)) List!61954)

(assert (=> d!1731309 (= lt!2213789 (choose!41172 z!1189))))

(assert (=> d!1731309 (= (toList!9002 z!1189) lt!2213789)))

(declare-fun b!5429144 () Bool)

(declare-fun content!11130 (List!61954) (Set Context!9204))

(assert (=> b!5429144 (= e!3364190 (= (content!11130 lt!2213789) z!1189))))

(assert (= (and d!1731309 res!2310384) b!5429144))

(declare-fun m!6452622 () Bool)

(assert (=> d!1731309 m!6452622))

(declare-fun m!6452624 () Bool)

(assert (=> d!1731309 m!6452624))

(declare-fun m!6452626 () Bool)

(assert (=> b!5429144 m!6452626))

(assert (=> b!5428668 d!1731309))

(declare-fun b!5429145 () Bool)

(declare-fun e!3364192 () Bool)

(assert (=> b!5429145 (= e!3364192 (= (head!11644 s!2326) (c!947040 lt!2213616)))))

(declare-fun b!5429146 () Bool)

(declare-fun e!3364196 () Bool)

(declare-fun lt!2213790 () Bool)

(assert (=> b!5429146 (= e!3364196 (not lt!2213790))))

(declare-fun b!5429147 () Bool)

(declare-fun res!2310390 () Bool)

(declare-fun e!3364197 () Bool)

(assert (=> b!5429147 (=> res!2310390 e!3364197)))

(assert (=> b!5429147 (= res!2310390 (not (is-ElementMatch!15218 lt!2213616)))))

(assert (=> b!5429147 (= e!3364196 e!3364197)))

(declare-fun b!5429148 () Bool)

(declare-fun e!3364195 () Bool)

(declare-fun e!3364194 () Bool)

(assert (=> b!5429148 (= e!3364195 e!3364194)))

(declare-fun res!2310387 () Bool)

(assert (=> b!5429148 (=> res!2310387 e!3364194)))

(declare-fun call!388735 () Bool)

(assert (=> b!5429148 (= res!2310387 call!388735)))

(declare-fun b!5429149 () Bool)

(declare-fun res!2310386 () Bool)

(assert (=> b!5429149 (=> res!2310386 e!3364197)))

(assert (=> b!5429149 (= res!2310386 e!3364192)))

(declare-fun res!2310388 () Bool)

(assert (=> b!5429149 (=> (not res!2310388) (not e!3364192))))

(assert (=> b!5429149 (= res!2310388 lt!2213790)))

(declare-fun d!1731311 () Bool)

(declare-fun e!3364191 () Bool)

(assert (=> d!1731311 e!3364191))

(declare-fun c!947157 () Bool)

(assert (=> d!1731311 (= c!947157 (is-EmptyExpr!15218 lt!2213616))))

(declare-fun e!3364193 () Bool)

(assert (=> d!1731311 (= lt!2213790 e!3364193)))

(declare-fun c!947156 () Bool)

(assert (=> d!1731311 (= c!947156 (isEmpty!33834 s!2326))))

(assert (=> d!1731311 (validRegex!6954 lt!2213616)))

(assert (=> d!1731311 (= (matchR!7403 lt!2213616 s!2326) lt!2213790)))

(declare-fun b!5429150 () Bool)

(assert (=> b!5429150 (= e!3364193 (matchR!7403 (derivativeStep!4284 lt!2213616 (head!11644 s!2326)) (tail!10741 s!2326)))))

(declare-fun b!5429151 () Bool)

(declare-fun res!2310385 () Bool)

(assert (=> b!5429151 (=> res!2310385 e!3364194)))

(assert (=> b!5429151 (= res!2310385 (not (isEmpty!33834 (tail!10741 s!2326))))))

(declare-fun b!5429152 () Bool)

(declare-fun res!2310391 () Bool)

(assert (=> b!5429152 (=> (not res!2310391) (not e!3364192))))

(assert (=> b!5429152 (= res!2310391 (isEmpty!33834 (tail!10741 s!2326)))))

(declare-fun b!5429153 () Bool)

(assert (=> b!5429153 (= e!3364191 (= lt!2213790 call!388735))))

(declare-fun b!5429154 () Bool)

(assert (=> b!5429154 (= e!3364191 e!3364196)))

(declare-fun c!947155 () Bool)

(assert (=> b!5429154 (= c!947155 (is-EmptyLang!15218 lt!2213616))))

(declare-fun b!5429155 () Bool)

(assert (=> b!5429155 (= e!3364193 (nullable!5387 lt!2213616))))

(declare-fun b!5429156 () Bool)

(declare-fun res!2310389 () Bool)

(assert (=> b!5429156 (=> (not res!2310389) (not e!3364192))))

(assert (=> b!5429156 (= res!2310389 (not call!388735))))

(declare-fun b!5429157 () Bool)

(assert (=> b!5429157 (= e!3364197 e!3364195)))

(declare-fun res!2310392 () Bool)

(assert (=> b!5429157 (=> (not res!2310392) (not e!3364195))))

(assert (=> b!5429157 (= res!2310392 (not lt!2213790))))

(declare-fun b!5429158 () Bool)

(assert (=> b!5429158 (= e!3364194 (not (= (head!11644 s!2326) (c!947040 lt!2213616))))))

(declare-fun bm!388730 () Bool)

(assert (=> bm!388730 (= call!388735 (isEmpty!33834 s!2326))))

(assert (= (and d!1731311 c!947156) b!5429155))

(assert (= (and d!1731311 (not c!947156)) b!5429150))

(assert (= (and d!1731311 c!947157) b!5429153))

(assert (= (and d!1731311 (not c!947157)) b!5429154))

(assert (= (and b!5429154 c!947155) b!5429146))

(assert (= (and b!5429154 (not c!947155)) b!5429147))

(assert (= (and b!5429147 (not res!2310390)) b!5429149))

(assert (= (and b!5429149 res!2310388) b!5429156))

(assert (= (and b!5429156 res!2310389) b!5429152))

(assert (= (and b!5429152 res!2310391) b!5429145))

(assert (= (and b!5429149 (not res!2310386)) b!5429157))

(assert (= (and b!5429157 res!2310392) b!5429148))

(assert (= (and b!5429148 (not res!2310387)) b!5429151))

(assert (= (and b!5429151 (not res!2310385)) b!5429158))

(assert (= (or b!5429153 b!5429148 b!5429156) bm!388730))

(assert (=> b!5429151 m!6452460))

(assert (=> b!5429151 m!6452460))

(assert (=> b!5429151 m!6452462))

(assert (=> bm!388730 m!6452456))

(assert (=> d!1731311 m!6452456))

(declare-fun m!6452628 () Bool)

(assert (=> d!1731311 m!6452628))

(assert (=> b!5429145 m!6452464))

(declare-fun m!6452630 () Bool)

(assert (=> b!5429155 m!6452630))

(assert (=> b!5429150 m!6452464))

(assert (=> b!5429150 m!6452464))

(declare-fun m!6452632 () Bool)

(assert (=> b!5429150 m!6452632))

(assert (=> b!5429150 m!6452460))

(assert (=> b!5429150 m!6452632))

(assert (=> b!5429150 m!6452460))

(declare-fun m!6452634 () Bool)

(assert (=> b!5429150 m!6452634))

(assert (=> b!5429158 m!6452464))

(assert (=> b!5429152 m!6452460))

(assert (=> b!5429152 m!6452460))

(assert (=> b!5429152 m!6452462))

(assert (=> b!5428667 d!1731311))

(declare-fun bs!1254254 () Bool)

(declare-fun b!5429161 () Bool)

(assert (= bs!1254254 (and b!5429161 b!5428676)))

(declare-fun lambda!284828 () Int)

(assert (=> bs!1254254 (not (= lambda!284828 lambda!284764))))

(declare-fun bs!1254255 () Bool)

(assert (= bs!1254255 (and b!5429161 d!1731281)))

(assert (=> bs!1254255 (not (= lambda!284828 lambda!284824))))

(assert (=> bs!1254255 (not (= lambda!284828 lambda!284825))))

(declare-fun bs!1254256 () Bool)

(assert (= bs!1254256 (and b!5429161 b!5429003)))

(assert (=> bs!1254256 (not (= lambda!284828 lambda!284798))))

(declare-fun bs!1254257 () Bool)

(assert (= bs!1254257 (and b!5429161 d!1731279)))

(assert (=> bs!1254257 (not (= lambda!284828 lambda!284819))))

(declare-fun bs!1254258 () Bool)

(assert (= bs!1254258 (and b!5429161 b!5428995)))

(assert (=> bs!1254258 (= (and (= (reg!15547 lt!2213616) (reg!15547 r!7292)) (= lt!2213616 r!7292)) (= lambda!284828 lambda!284797))))

(assert (=> bs!1254254 (not (= lambda!284828 lambda!284765))))

(assert (=> b!5429161 true))

(assert (=> b!5429161 true))

(declare-fun bs!1254259 () Bool)

(declare-fun b!5429169 () Bool)

(assert (= bs!1254259 (and b!5429169 b!5428676)))

(declare-fun lambda!284829 () Int)

(assert (=> bs!1254259 (not (= lambda!284829 lambda!284764))))

(declare-fun bs!1254260 () Bool)

(assert (= bs!1254260 (and b!5429169 d!1731281)))

(assert (=> bs!1254260 (not (= lambda!284829 lambda!284824))))

(assert (=> bs!1254260 (= (and (= (regOne!30948 lt!2213616) (regOne!30948 r!7292)) (= (regTwo!30948 lt!2213616) (regTwo!30948 r!7292))) (= lambda!284829 lambda!284825))))

(declare-fun bs!1254261 () Bool)

(assert (= bs!1254261 (and b!5429169 b!5429003)))

(assert (=> bs!1254261 (= (and (= (regOne!30948 lt!2213616) (regOne!30948 r!7292)) (= (regTwo!30948 lt!2213616) (regTwo!30948 r!7292))) (= lambda!284829 lambda!284798))))

(declare-fun bs!1254262 () Bool)

(assert (= bs!1254262 (and b!5429169 d!1731279)))

(assert (=> bs!1254262 (not (= lambda!284829 lambda!284819))))

(declare-fun bs!1254263 () Bool)

(assert (= bs!1254263 (and b!5429169 b!5428995)))

(assert (=> bs!1254263 (not (= lambda!284829 lambda!284797))))

(declare-fun bs!1254264 () Bool)

(assert (= bs!1254264 (and b!5429169 b!5429161)))

(assert (=> bs!1254264 (not (= lambda!284829 lambda!284828))))

(assert (=> bs!1254259 (= (and (= (regOne!30948 lt!2213616) (regOne!30948 r!7292)) (= (regTwo!30948 lt!2213616) (regTwo!30948 r!7292))) (= lambda!284829 lambda!284765))))

(assert (=> b!5429169 true))

(assert (=> b!5429169 true))

(declare-fun b!5429159 () Bool)

(declare-fun e!3364204 () Bool)

(declare-fun e!3364201 () Bool)

(assert (=> b!5429159 (= e!3364204 e!3364201)))

(declare-fun res!2310393 () Bool)

(assert (=> b!5429159 (= res!2310393 (not (is-EmptyLang!15218 lt!2213616)))))

(assert (=> b!5429159 (=> (not res!2310393) (not e!3364201))))

(declare-fun b!5429160 () Bool)

(declare-fun c!947161 () Bool)

(assert (=> b!5429160 (= c!947161 (is-Union!15218 lt!2213616))))

(declare-fun e!3364199 () Bool)

(declare-fun e!3364198 () Bool)

(assert (=> b!5429160 (= e!3364199 e!3364198)))

(declare-fun d!1731313 () Bool)

(declare-fun c!947158 () Bool)

(assert (=> d!1731313 (= c!947158 (is-EmptyExpr!15218 lt!2213616))))

(assert (=> d!1731313 (= (matchRSpec!2321 lt!2213616 s!2326) e!3364204)))

(declare-fun e!3364200 () Bool)

(declare-fun call!388737 () Bool)

(assert (=> b!5429161 (= e!3364200 call!388737)))

(declare-fun b!5429162 () Bool)

(declare-fun e!3364202 () Bool)

(assert (=> b!5429162 (= e!3364202 (matchRSpec!2321 (regTwo!30949 lt!2213616) s!2326))))

(declare-fun b!5429163 () Bool)

(declare-fun call!388736 () Bool)

(assert (=> b!5429163 (= e!3364204 call!388736)))

(declare-fun b!5429164 () Bool)

(declare-fun c!947159 () Bool)

(assert (=> b!5429164 (= c!947159 (is-ElementMatch!15218 lt!2213616))))

(assert (=> b!5429164 (= e!3364201 e!3364199)))

(declare-fun b!5429165 () Bool)

(declare-fun e!3364203 () Bool)

(assert (=> b!5429165 (= e!3364198 e!3364203)))

(declare-fun c!947160 () Bool)

(assert (=> b!5429165 (= c!947160 (is-Star!15218 lt!2213616))))

(declare-fun b!5429166 () Bool)

(assert (=> b!5429166 (= e!3364199 (= s!2326 (Cons!61831 (c!947040 lt!2213616) Nil!61831)))))

(declare-fun b!5429167 () Bool)

(assert (=> b!5429167 (= e!3364198 e!3364202)))

(declare-fun res!2310395 () Bool)

(assert (=> b!5429167 (= res!2310395 (matchRSpec!2321 (regOne!30949 lt!2213616) s!2326))))

(assert (=> b!5429167 (=> res!2310395 e!3364202)))

(declare-fun b!5429168 () Bool)

(declare-fun res!2310394 () Bool)

(assert (=> b!5429168 (=> res!2310394 e!3364200)))

(assert (=> b!5429168 (= res!2310394 call!388736)))

(assert (=> b!5429168 (= e!3364203 e!3364200)))

(declare-fun bm!388731 () Bool)

(assert (=> bm!388731 (= call!388736 (isEmpty!33834 s!2326))))

(declare-fun bm!388732 () Bool)

(assert (=> bm!388732 (= call!388737 (Exists!2399 (ite c!947160 lambda!284828 lambda!284829)))))

(assert (=> b!5429169 (= e!3364203 call!388737)))

(assert (= (and d!1731313 c!947158) b!5429163))

(assert (= (and d!1731313 (not c!947158)) b!5429159))

(assert (= (and b!5429159 res!2310393) b!5429164))

(assert (= (and b!5429164 c!947159) b!5429166))

(assert (= (and b!5429164 (not c!947159)) b!5429160))

(assert (= (and b!5429160 c!947161) b!5429167))

(assert (= (and b!5429160 (not c!947161)) b!5429165))

(assert (= (and b!5429167 (not res!2310395)) b!5429162))

(assert (= (and b!5429165 c!947160) b!5429168))

(assert (= (and b!5429165 (not c!947160)) b!5429169))

(assert (= (and b!5429168 (not res!2310394)) b!5429161))

(assert (= (or b!5429161 b!5429169) bm!388732))

(assert (= (or b!5429163 b!5429168) bm!388731))

(declare-fun m!6452636 () Bool)

(assert (=> b!5429162 m!6452636))

(declare-fun m!6452638 () Bool)

(assert (=> b!5429167 m!6452638))

(assert (=> bm!388731 m!6452456))

(declare-fun m!6452640 () Bool)

(assert (=> bm!388732 m!6452640))

(assert (=> b!5428667 d!1731313))

(declare-fun d!1731315 () Bool)

(assert (=> d!1731315 (= (matchR!7403 lt!2213616 s!2326) (matchRSpec!2321 lt!2213616 s!2326))))

(declare-fun lt!2213791 () Unit!154394)

(assert (=> d!1731315 (= lt!2213791 (choose!41165 lt!2213616 s!2326))))

(assert (=> d!1731315 (validRegex!6954 lt!2213616)))

(assert (=> d!1731315 (= (mainMatchTheorem!2321 lt!2213616 s!2326) lt!2213791)))

(declare-fun bs!1254265 () Bool)

(assert (= bs!1254265 d!1731315))

(assert (=> bs!1254265 m!6452244))

(assert (=> bs!1254265 m!6452246))

(declare-fun m!6452642 () Bool)

(assert (=> bs!1254265 m!6452642))

(assert (=> bs!1254265 m!6452628))

(assert (=> b!5428667 d!1731315))

(assert (=> b!5428647 d!1731269))

(declare-fun d!1731317 () Bool)

(assert (=> d!1731317 (= (nullable!5387 (h!68277 (exprs!5102 (h!68278 zl!343)))) (nullableFct!1614 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun bs!1254266 () Bool)

(assert (= bs!1254266 d!1731317))

(declare-fun m!6452644 () Bool)

(assert (=> bs!1254266 m!6452644))

(assert (=> b!5428647 d!1731317))

(declare-fun b!5429170 () Bool)

(declare-fun e!3364205 () (Set Context!9204))

(assert (=> b!5429170 (= e!3364205 (as set.empty (Set Context!9204)))))

(declare-fun b!5429171 () Bool)

(declare-fun e!3364207 () (Set Context!9204))

(assert (=> b!5429171 (= e!3364207 e!3364205)))

(declare-fun c!947163 () Bool)

(assert (=> b!5429171 (= c!947163 (is-Cons!61829 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343))))))))))

(declare-fun b!5429172 () Bool)

(declare-fun e!3364206 () Bool)

(assert (=> b!5429172 (= e!3364206 (nullable!5387 (h!68277 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343)))))))))))

(declare-fun b!5429173 () Bool)

(declare-fun call!388738 () (Set Context!9204))

(assert (=> b!5429173 (= e!3364205 call!388738)))

(declare-fun b!5429174 () Bool)

(assert (=> b!5429174 (= e!3364207 (set.union call!388738 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343)))))))) (h!68279 s!2326))))))

(declare-fun bm!388733 () Bool)

(assert (=> bm!388733 (= call!388738 (derivationStepZipperDown!666 (h!68277 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343))))))) (Context!9205 (t!375178 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343)))))))) (h!68279 s!2326)))))

(declare-fun d!1731319 () Bool)

(declare-fun c!947162 () Bool)

(assert (=> d!1731319 (= c!947162 e!3364206)))

(declare-fun res!2310396 () Bool)

(assert (=> d!1731319 (=> (not res!2310396) (not e!3364206))))

(assert (=> d!1731319 (= res!2310396 (is-Cons!61829 (exprs!5102 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343))))))))))

(assert (=> d!1731319 (= (derivationStepZipperUp!590 (Context!9205 (Cons!61829 (h!68277 (exprs!5102 (h!68278 zl!343))) (t!375178 (exprs!5102 (h!68278 zl!343))))) (h!68279 s!2326)) e!3364207)))

(assert (= (and d!1731319 res!2310396) b!5429172))

(assert (= (and d!1731319 c!947162) b!5429174))

(assert (= (and d!1731319 (not c!947162)) b!5429171))

(assert (= (and b!5429171 c!947163) b!5429173))

(assert (= (and b!5429171 (not c!947163)) b!5429170))

(assert (= (or b!5429174 b!5429173) bm!388733))

(declare-fun m!6452646 () Bool)

(assert (=> b!5429172 m!6452646))

(declare-fun m!6452648 () Bool)

(assert (=> b!5429174 m!6452648))

(declare-fun m!6452650 () Bool)

(assert (=> bm!388733 m!6452650))

(assert (=> b!5428647 d!1731319))

(declare-fun d!1731321 () Bool)

(assert (=> d!1731321 (= (flatMap!945 z!1189 lambda!284766) (dynLambda!24366 lambda!284766 (h!68278 zl!343)))))

(declare-fun lt!2213792 () Unit!154394)

(assert (=> d!1731321 (= lt!2213792 (choose!41167 z!1189 (h!68278 zl!343) lambda!284766))))

(assert (=> d!1731321 (= z!1189 (set.insert (h!68278 zl!343) (as set.empty (Set Context!9204))))))

(assert (=> d!1731321 (= (lemmaFlatMapOnSingletonSet!477 z!1189 (h!68278 zl!343) lambda!284766) lt!2213792)))

(declare-fun b_lambda!207179 () Bool)

(assert (=> (not b_lambda!207179) (not d!1731321)))

(declare-fun bs!1254267 () Bool)

(assert (= bs!1254267 d!1731321))

(assert (=> bs!1254267 m!6452206))

(declare-fun m!6452652 () Bool)

(assert (=> bs!1254267 m!6452652))

(declare-fun m!6452654 () Bool)

(assert (=> bs!1254267 m!6452654))

(declare-fun m!6452656 () Bool)

(assert (=> bs!1254267 m!6452656))

(assert (=> b!5428647 d!1731321))

(declare-fun bm!388746 () Bool)

(declare-fun call!388752 () List!61953)

(declare-fun call!388756 () List!61953)

(assert (=> bm!388746 (= call!388752 call!388756)))

(declare-fun call!388753 () (Set Context!9204))

(declare-fun c!947175 () Bool)

(declare-fun c!947174 () Bool)

(declare-fun bm!388747 () Bool)

(declare-fun c!947177 () Bool)

(assert (=> bm!388747 (= call!388753 (derivationStepZipperDown!666 (ite c!947175 (regOne!30949 (h!68277 (exprs!5102 (h!68278 zl!343)))) (ite c!947177 (regTwo!30948 (h!68277 (exprs!5102 (h!68278 zl!343)))) (ite c!947174 (regOne!30948 (h!68277 (exprs!5102 (h!68278 zl!343)))) (reg!15547 (h!68277 (exprs!5102 (h!68278 zl!343))))))) (ite (or c!947175 c!947177) lt!2213600 (Context!9205 call!388752)) (h!68279 s!2326)))))

(declare-fun b!5429197 () Bool)

(declare-fun c!947176 () Bool)

(assert (=> b!5429197 (= c!947176 (is-Star!15218 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun e!3364221 () (Set Context!9204))

(declare-fun e!3364220 () (Set Context!9204))

(assert (=> b!5429197 (= e!3364221 e!3364220)))

(declare-fun bm!388748 () Bool)

(declare-fun $colon$colon!1513 (List!61953 Regex!15218) List!61953)

(assert (=> bm!388748 (= call!388756 ($colon$colon!1513 (exprs!5102 lt!2213600) (ite (or c!947177 c!947174) (regTwo!30948 (h!68277 (exprs!5102 (h!68278 zl!343)))) (h!68277 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun bm!388749 () Bool)

(declare-fun call!388751 () (Set Context!9204))

(assert (=> bm!388749 (= call!388751 call!388753)))

(declare-fun bm!388750 () Bool)

(declare-fun call!388755 () (Set Context!9204))

(assert (=> bm!388750 (= call!388755 call!388751)))

(declare-fun b!5429198 () Bool)

(declare-fun e!3364224 () (Set Context!9204))

(declare-fun call!388754 () (Set Context!9204))

(assert (=> b!5429198 (= e!3364224 (set.union call!388753 call!388754))))

(declare-fun b!5429199 () Bool)

(declare-fun e!3364225 () (Set Context!9204))

(assert (=> b!5429199 (= e!3364225 e!3364224)))

(assert (=> b!5429199 (= c!947175 (is-Union!15218 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5429200 () Bool)

(assert (=> b!5429200 (= e!3364220 call!388755)))

(declare-fun b!5429201 () Bool)

(assert (=> b!5429201 (= e!3364221 call!388755)))

(declare-fun b!5429202 () Bool)

(assert (=> b!5429202 (= e!3364220 (as set.empty (Set Context!9204)))))

(declare-fun d!1731323 () Bool)

(declare-fun c!947178 () Bool)

(assert (=> d!1731323 (= c!947178 (and (is-ElementMatch!15218 (h!68277 (exprs!5102 (h!68278 zl!343)))) (= (c!947040 (h!68277 (exprs!5102 (h!68278 zl!343)))) (h!68279 s!2326))))))

(assert (=> d!1731323 (= (derivationStepZipperDown!666 (h!68277 (exprs!5102 (h!68278 zl!343))) lt!2213600 (h!68279 s!2326)) e!3364225)))

(declare-fun bm!388751 () Bool)

(assert (=> bm!388751 (= call!388754 (derivationStepZipperDown!666 (ite c!947175 (regTwo!30949 (h!68277 (exprs!5102 (h!68278 zl!343)))) (regOne!30948 (h!68277 (exprs!5102 (h!68278 zl!343))))) (ite c!947175 lt!2213600 (Context!9205 call!388756)) (h!68279 s!2326)))))

(declare-fun b!5429203 () Bool)

(declare-fun e!3364223 () Bool)

(assert (=> b!5429203 (= e!3364223 (nullable!5387 (regOne!30948 (h!68277 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5429204 () Bool)

(declare-fun e!3364222 () (Set Context!9204))

(assert (=> b!5429204 (= e!3364222 (set.union call!388754 call!388751))))

(declare-fun b!5429205 () Bool)

(assert (=> b!5429205 (= e!3364222 e!3364221)))

(assert (=> b!5429205 (= c!947174 (is-Concat!24063 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5429206 () Bool)

(assert (=> b!5429206 (= e!3364225 (set.insert lt!2213600 (as set.empty (Set Context!9204))))))

(declare-fun b!5429207 () Bool)

(assert (=> b!5429207 (= c!947177 e!3364223)))

(declare-fun res!2310399 () Bool)

(assert (=> b!5429207 (=> (not res!2310399) (not e!3364223))))

(assert (=> b!5429207 (= res!2310399 (is-Concat!24063 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(assert (=> b!5429207 (= e!3364224 e!3364222)))

(assert (= (and d!1731323 c!947178) b!5429206))

(assert (= (and d!1731323 (not c!947178)) b!5429199))

(assert (= (and b!5429199 c!947175) b!5429198))

(assert (= (and b!5429199 (not c!947175)) b!5429207))

(assert (= (and b!5429207 res!2310399) b!5429203))

(assert (= (and b!5429207 c!947177) b!5429204))

(assert (= (and b!5429207 (not c!947177)) b!5429205))

(assert (= (and b!5429205 c!947174) b!5429201))

(assert (= (and b!5429205 (not c!947174)) b!5429197))

(assert (= (and b!5429197 c!947176) b!5429200))

(assert (= (and b!5429197 (not c!947176)) b!5429202))

(assert (= (or b!5429201 b!5429200) bm!388746))

(assert (= (or b!5429201 b!5429200) bm!388750))

(assert (= (or b!5429204 bm!388746) bm!388748))

(assert (= (or b!5429204 bm!388750) bm!388749))

(assert (= (or b!5429198 b!5429204) bm!388751))

(assert (= (or b!5429198 bm!388749) bm!388747))

(declare-fun m!6452658 () Bool)

(assert (=> b!5429203 m!6452658))

(declare-fun m!6452660 () Bool)

(assert (=> bm!388751 m!6452660))

(declare-fun m!6452662 () Bool)

(assert (=> bm!388748 m!6452662))

(assert (=> b!5429206 m!6452198))

(declare-fun m!6452664 () Bool)

(assert (=> bm!388747 m!6452664))

(assert (=> b!5428647 d!1731323))

(declare-fun b!5429208 () Bool)

(declare-fun e!3364226 () (Set Context!9204))

(assert (=> b!5429208 (= e!3364226 (as set.empty (Set Context!9204)))))

(declare-fun b!5429209 () Bool)

(declare-fun e!3364228 () (Set Context!9204))

(assert (=> b!5429209 (= e!3364228 e!3364226)))

(declare-fun c!947180 () Bool)

(assert (=> b!5429209 (= c!947180 (is-Cons!61829 (exprs!5102 (h!68278 zl!343))))))

(declare-fun b!5429210 () Bool)

(declare-fun e!3364227 () Bool)

(assert (=> b!5429210 (= e!3364227 (nullable!5387 (h!68277 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5429211 () Bool)

(declare-fun call!388757 () (Set Context!9204))

(assert (=> b!5429211 (= e!3364226 call!388757)))

(declare-fun b!5429212 () Bool)

(assert (=> b!5429212 (= e!3364228 (set.union call!388757 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 (h!68278 zl!343)))) (h!68279 s!2326))))))

(declare-fun bm!388752 () Bool)

(assert (=> bm!388752 (= call!388757 (derivationStepZipperDown!666 (h!68277 (exprs!5102 (h!68278 zl!343))) (Context!9205 (t!375178 (exprs!5102 (h!68278 zl!343)))) (h!68279 s!2326)))))

(declare-fun d!1731325 () Bool)

(declare-fun c!947179 () Bool)

(assert (=> d!1731325 (= c!947179 e!3364227)))

(declare-fun res!2310400 () Bool)

(assert (=> d!1731325 (=> (not res!2310400) (not e!3364227))))

(assert (=> d!1731325 (= res!2310400 (is-Cons!61829 (exprs!5102 (h!68278 zl!343))))))

(assert (=> d!1731325 (= (derivationStepZipperUp!590 (h!68278 zl!343) (h!68279 s!2326)) e!3364228)))

(assert (= (and d!1731325 res!2310400) b!5429210))

(assert (= (and d!1731325 c!947179) b!5429212))

(assert (= (and d!1731325 (not c!947179)) b!5429209))

(assert (= (and b!5429209 c!947180) b!5429211))

(assert (= (and b!5429209 (not c!947180)) b!5429208))

(assert (= (or b!5429212 b!5429211) bm!388752))

(assert (=> b!5429210 m!6452212))

(declare-fun m!6452666 () Bool)

(assert (=> b!5429212 m!6452666))

(declare-fun m!6452668 () Bool)

(assert (=> bm!388752 m!6452668))

(assert (=> b!5428647 d!1731325))

(declare-fun d!1731327 () Bool)

(assert (=> d!1731327 (= (flatMap!945 z!1189 lambda!284766) (choose!41166 z!1189 lambda!284766))))

(declare-fun bs!1254268 () Bool)

(assert (= bs!1254268 d!1731327))

(declare-fun m!6452670 () Bool)

(assert (=> bs!1254268 m!6452670))

(assert (=> b!5428647 d!1731327))

(declare-fun bs!1254269 () Bool)

(declare-fun d!1731329 () Bool)

(assert (= bs!1254269 (and d!1731329 b!5428639)))

(declare-fun lambda!284832 () Int)

(assert (=> bs!1254269 (= lambda!284832 lambda!284767)))

(declare-fun bs!1254270 () Bool)

(assert (= bs!1254270 (and d!1731329 d!1731243)))

(assert (=> bs!1254270 (= lambda!284832 lambda!284792)))

(declare-fun bs!1254271 () Bool)

(assert (= bs!1254271 (and d!1731329 d!1731259)))

(assert (=> bs!1254271 (= lambda!284832 lambda!284813)))

(declare-fun bs!1254272 () Bool)

(assert (= bs!1254272 (and d!1731329 d!1731293)))

(assert (=> bs!1254272 (= lambda!284832 lambda!284826)))

(declare-fun b!5429233 () Bool)

(declare-fun e!3364241 () Bool)

(declare-fun lt!2213795 () Regex!15218)

(declare-fun isUnion!436 (Regex!15218) Bool)

(assert (=> b!5429233 (= e!3364241 (isUnion!436 lt!2213795))))

(declare-fun b!5429234 () Bool)

(declare-fun e!3364243 () Bool)

(assert (=> b!5429234 (= e!3364243 e!3364241)))

(declare-fun c!947191 () Bool)

(assert (=> b!5429234 (= c!947191 (isEmpty!33831 (tail!10740 (unfocusZipperList!660 zl!343))))))

(declare-fun b!5429235 () Bool)

(declare-fun e!3364244 () Regex!15218)

(assert (=> b!5429235 (= e!3364244 EmptyLang!15218)))

(declare-fun b!5429236 () Bool)

(declare-fun isEmptyLang!1004 (Regex!15218) Bool)

(assert (=> b!5429236 (= e!3364243 (isEmptyLang!1004 lt!2213795))))

(declare-fun b!5429237 () Bool)

(declare-fun e!3364246 () Regex!15218)

(assert (=> b!5429237 (= e!3364246 (h!68277 (unfocusZipperList!660 zl!343)))))

(declare-fun b!5429238 () Bool)

(assert (=> b!5429238 (= e!3364246 e!3364244)))

(declare-fun c!947189 () Bool)

(assert (=> b!5429238 (= c!947189 (is-Cons!61829 (unfocusZipperList!660 zl!343)))))

(declare-fun b!5429240 () Bool)

(declare-fun e!3364245 () Bool)

(assert (=> b!5429240 (= e!3364245 (isEmpty!33831 (t!375178 (unfocusZipperList!660 zl!343))))))

(declare-fun b!5429241 () Bool)

(assert (=> b!5429241 (= e!3364244 (Union!15218 (h!68277 (unfocusZipperList!660 zl!343)) (generalisedUnion!1147 (t!375178 (unfocusZipperList!660 zl!343)))))))

(declare-fun b!5429242 () Bool)

(assert (=> b!5429242 (= e!3364241 (= lt!2213795 (head!11643 (unfocusZipperList!660 zl!343))))))

(declare-fun b!5429239 () Bool)

(declare-fun e!3364242 () Bool)

(assert (=> b!5429239 (= e!3364242 e!3364243)))

(declare-fun c!947192 () Bool)

(assert (=> b!5429239 (= c!947192 (isEmpty!33831 (unfocusZipperList!660 zl!343)))))

(assert (=> d!1731329 e!3364242))

(declare-fun res!2310405 () Bool)

(assert (=> d!1731329 (=> (not res!2310405) (not e!3364242))))

(assert (=> d!1731329 (= res!2310405 (validRegex!6954 lt!2213795))))

(assert (=> d!1731329 (= lt!2213795 e!3364246)))

(declare-fun c!947190 () Bool)

(assert (=> d!1731329 (= c!947190 e!3364245)))

(declare-fun res!2310406 () Bool)

(assert (=> d!1731329 (=> (not res!2310406) (not e!3364245))))

(assert (=> d!1731329 (= res!2310406 (is-Cons!61829 (unfocusZipperList!660 zl!343)))))

(assert (=> d!1731329 (forall!14556 (unfocusZipperList!660 zl!343) lambda!284832)))

(assert (=> d!1731329 (= (generalisedUnion!1147 (unfocusZipperList!660 zl!343)) lt!2213795)))

(assert (= (and d!1731329 res!2310406) b!5429240))

(assert (= (and d!1731329 c!947190) b!5429237))

(assert (= (and d!1731329 (not c!947190)) b!5429238))

(assert (= (and b!5429238 c!947189) b!5429241))

(assert (= (and b!5429238 (not c!947189)) b!5429235))

(assert (= (and d!1731329 res!2310405) b!5429239))

(assert (= (and b!5429239 c!947192) b!5429236))

(assert (= (and b!5429239 (not c!947192)) b!5429234))

(assert (= (and b!5429234 c!947191) b!5429242))

(assert (= (and b!5429234 (not c!947191)) b!5429233))

(declare-fun m!6452672 () Bool)

(assert (=> d!1731329 m!6452672))

(assert (=> d!1731329 m!6452260))

(declare-fun m!6452674 () Bool)

(assert (=> d!1731329 m!6452674))

(declare-fun m!6452676 () Bool)

(assert (=> b!5429233 m!6452676))

(assert (=> b!5429242 m!6452260))

(declare-fun m!6452678 () Bool)

(assert (=> b!5429242 m!6452678))

(declare-fun m!6452680 () Bool)

(assert (=> b!5429241 m!6452680))

(assert (=> b!5429239 m!6452260))

(declare-fun m!6452682 () Bool)

(assert (=> b!5429239 m!6452682))

(declare-fun m!6452684 () Bool)

(assert (=> b!5429240 m!6452684))

(declare-fun m!6452686 () Bool)

(assert (=> b!5429236 m!6452686))

(assert (=> b!5429234 m!6452260))

(declare-fun m!6452688 () Bool)

(assert (=> b!5429234 m!6452688))

(assert (=> b!5429234 m!6452688))

(declare-fun m!6452690 () Bool)

(assert (=> b!5429234 m!6452690))

(assert (=> b!5428646 d!1731329))

(declare-fun bs!1254273 () Bool)

(declare-fun d!1731331 () Bool)

(assert (= bs!1254273 (and d!1731331 d!1731243)))

(declare-fun lambda!284835 () Int)

(assert (=> bs!1254273 (= lambda!284835 lambda!284792)))

(declare-fun bs!1254274 () Bool)

(assert (= bs!1254274 (and d!1731331 d!1731329)))

(assert (=> bs!1254274 (= lambda!284835 lambda!284832)))

(declare-fun bs!1254275 () Bool)

(assert (= bs!1254275 (and d!1731331 d!1731293)))

(assert (=> bs!1254275 (= lambda!284835 lambda!284826)))

(declare-fun bs!1254276 () Bool)

(assert (= bs!1254276 (and d!1731331 b!5428639)))

(assert (=> bs!1254276 (= lambda!284835 lambda!284767)))

(declare-fun bs!1254277 () Bool)

(assert (= bs!1254277 (and d!1731331 d!1731259)))

(assert (=> bs!1254277 (= lambda!284835 lambda!284813)))

(declare-fun lt!2213798 () List!61953)

(assert (=> d!1731331 (forall!14556 lt!2213798 lambda!284835)))

(declare-fun e!3364249 () List!61953)

(assert (=> d!1731331 (= lt!2213798 e!3364249)))

(declare-fun c!947195 () Bool)

(assert (=> d!1731331 (= c!947195 (is-Cons!61830 zl!343))))

(assert (=> d!1731331 (= (unfocusZipperList!660 zl!343) lt!2213798)))

(declare-fun b!5429247 () Bool)

(assert (=> b!5429247 (= e!3364249 (Cons!61829 (generalisedConcat!887 (exprs!5102 (h!68278 zl!343))) (unfocusZipperList!660 (t!375179 zl!343))))))

(declare-fun b!5429248 () Bool)

(assert (=> b!5429248 (= e!3364249 Nil!61829)))

(assert (= (and d!1731331 c!947195) b!5429247))

(assert (= (and d!1731331 (not c!947195)) b!5429248))

(declare-fun m!6452692 () Bool)

(assert (=> d!1731331 m!6452692))

(assert (=> b!5429247 m!6452152))

(declare-fun m!6452694 () Bool)

(assert (=> b!5429247 m!6452694))

(assert (=> b!5428646 d!1731331))

(declare-fun bs!1254278 () Bool)

(declare-fun d!1731333 () Bool)

(assert (= bs!1254278 (and d!1731333 d!1731243)))

(declare-fun lambda!284836 () Int)

(assert (=> bs!1254278 (= lambda!284836 lambda!284792)))

(declare-fun bs!1254279 () Bool)

(assert (= bs!1254279 (and d!1731333 d!1731331)))

(assert (=> bs!1254279 (= lambda!284836 lambda!284835)))

(declare-fun bs!1254280 () Bool)

(assert (= bs!1254280 (and d!1731333 d!1731329)))

(assert (=> bs!1254280 (= lambda!284836 lambda!284832)))

(declare-fun bs!1254281 () Bool)

(assert (= bs!1254281 (and d!1731333 d!1731293)))

(assert (=> bs!1254281 (= lambda!284836 lambda!284826)))

(declare-fun bs!1254282 () Bool)

(assert (= bs!1254282 (and d!1731333 b!5428639)))

(assert (=> bs!1254282 (= lambda!284836 lambda!284767)))

(declare-fun bs!1254283 () Bool)

(assert (= bs!1254283 (and d!1731333 d!1731259)))

(assert (=> bs!1254283 (= lambda!284836 lambda!284813)))

(declare-fun b!5429249 () Bool)

(declare-fun e!3364251 () Bool)

(declare-fun lt!2213799 () Regex!15218)

(assert (=> b!5429249 (= e!3364251 (isConcat!518 lt!2213799))))

(declare-fun b!5429250 () Bool)

(declare-fun e!3364252 () Bool)

(assert (=> b!5429250 (= e!3364252 (isEmpty!33831 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun e!3364255 () Bool)

(assert (=> d!1731333 e!3364255))

(declare-fun res!2310408 () Bool)

(assert (=> d!1731333 (=> (not res!2310408) (not e!3364255))))

(assert (=> d!1731333 (= res!2310408 (validRegex!6954 lt!2213799))))

(declare-fun e!3364253 () Regex!15218)

(assert (=> d!1731333 (= lt!2213799 e!3364253)))

(declare-fun c!947199 () Bool)

(assert (=> d!1731333 (= c!947199 e!3364252)))

(declare-fun res!2310407 () Bool)

(assert (=> d!1731333 (=> (not res!2310407) (not e!3364252))))

(assert (=> d!1731333 (= res!2310407 (is-Cons!61829 (exprs!5102 (h!68278 zl!343))))))

(assert (=> d!1731333 (forall!14556 (exprs!5102 (h!68278 zl!343)) lambda!284836)))

(assert (=> d!1731333 (= (generalisedConcat!887 (exprs!5102 (h!68278 zl!343))) lt!2213799)))

(declare-fun b!5429251 () Bool)

(declare-fun e!3364254 () Regex!15218)

(assert (=> b!5429251 (= e!3364253 e!3364254)))

(declare-fun c!947196 () Bool)

(assert (=> b!5429251 (= c!947196 (is-Cons!61829 (exprs!5102 (h!68278 zl!343))))))

(declare-fun b!5429252 () Bool)

(declare-fun e!3364250 () Bool)

(assert (=> b!5429252 (= e!3364250 e!3364251)))

(declare-fun c!947197 () Bool)

(assert (=> b!5429252 (= c!947197 (isEmpty!33831 (tail!10740 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5429253 () Bool)

(assert (=> b!5429253 (= e!3364255 e!3364250)))

(declare-fun c!947198 () Bool)

(assert (=> b!5429253 (= c!947198 (isEmpty!33831 (exprs!5102 (h!68278 zl!343))))))

(declare-fun b!5429254 () Bool)

(assert (=> b!5429254 (= e!3364254 (Concat!24063 (h!68277 (exprs!5102 (h!68278 zl!343))) (generalisedConcat!887 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun b!5429255 () Bool)

(assert (=> b!5429255 (= e!3364250 (isEmptyExpr!995 lt!2213799))))

(declare-fun b!5429256 () Bool)

(assert (=> b!5429256 (= e!3364253 (h!68277 (exprs!5102 (h!68278 zl!343))))))

(declare-fun b!5429257 () Bool)

(assert (=> b!5429257 (= e!3364251 (= lt!2213799 (head!11643 (exprs!5102 (h!68278 zl!343)))))))

(declare-fun b!5429258 () Bool)

(assert (=> b!5429258 (= e!3364254 EmptyExpr!15218)))

(assert (= (and d!1731333 res!2310407) b!5429250))

(assert (= (and d!1731333 c!947199) b!5429256))

(assert (= (and d!1731333 (not c!947199)) b!5429251))

(assert (= (and b!5429251 c!947196) b!5429254))

(assert (= (and b!5429251 (not c!947196)) b!5429258))

(assert (= (and d!1731333 res!2310408) b!5429253))

(assert (= (and b!5429253 c!947198) b!5429255))

(assert (= (and b!5429253 (not c!947198)) b!5429252))

(assert (= (and b!5429252 c!947197) b!5429257))

(assert (= (and b!5429252 (not c!947197)) b!5429249))

(assert (=> b!5429254 m!6452158))

(assert (=> b!5429250 m!6452214))

(declare-fun m!6452696 () Bool)

(assert (=> b!5429253 m!6452696))

(declare-fun m!6452698 () Bool)

(assert (=> d!1731333 m!6452698))

(declare-fun m!6452700 () Bool)

(assert (=> d!1731333 m!6452700))

(declare-fun m!6452702 () Bool)

(assert (=> b!5429255 m!6452702))

(declare-fun m!6452704 () Bool)

(assert (=> b!5429252 m!6452704))

(assert (=> b!5429252 m!6452704))

(declare-fun m!6452706 () Bool)

(assert (=> b!5429252 m!6452706))

(declare-fun m!6452708 () Bool)

(assert (=> b!5429257 m!6452708))

(declare-fun m!6452710 () Bool)

(assert (=> b!5429249 m!6452710))

(assert (=> b!5428653 d!1731333))

(declare-fun d!1731335 () Bool)

(declare-fun lt!2213800 () Regex!15218)

(assert (=> d!1731335 (validRegex!6954 lt!2213800)))

(assert (=> d!1731335 (= lt!2213800 (generalisedUnion!1147 (unfocusZipperList!660 (Cons!61830 lt!2213602 Nil!61830))))))

(assert (=> d!1731335 (= (unfocusZipper!960 (Cons!61830 lt!2213602 Nil!61830)) lt!2213800)))

(declare-fun bs!1254284 () Bool)

(assert (= bs!1254284 d!1731335))

(declare-fun m!6452712 () Bool)

(assert (=> bs!1254284 m!6452712))

(declare-fun m!6452714 () Bool)

(assert (=> bs!1254284 m!6452714))

(assert (=> bs!1254284 m!6452714))

(declare-fun m!6452716 () Bool)

(assert (=> bs!1254284 m!6452716))

(assert (=> b!5428654 d!1731335))

(declare-fun d!1731337 () Bool)

(assert (=> d!1731337 (= (flatMap!945 lt!2213618 lambda!284766) (choose!41166 lt!2213618 lambda!284766))))

(declare-fun bs!1254285 () Bool)

(assert (= bs!1254285 d!1731337))

(declare-fun m!6452718 () Bool)

(assert (=> bs!1254285 m!6452718))

(assert (=> b!5428654 d!1731337))

(declare-fun d!1731339 () Bool)

(assert (=> d!1731339 (= (flatMap!945 lt!2213594 lambda!284766) (choose!41166 lt!2213594 lambda!284766))))

(declare-fun bs!1254286 () Bool)

(assert (= bs!1254286 d!1731339))

(declare-fun m!6452720 () Bool)

(assert (=> bs!1254286 m!6452720))

(assert (=> b!5428654 d!1731339))

(declare-fun b!5429259 () Bool)

(declare-fun e!3364256 () (Set Context!9204))

(assert (=> b!5429259 (= e!3364256 (as set.empty (Set Context!9204)))))

(declare-fun b!5429260 () Bool)

(declare-fun e!3364258 () (Set Context!9204))

(assert (=> b!5429260 (= e!3364258 e!3364256)))

(declare-fun c!947201 () Bool)

(assert (=> b!5429260 (= c!947201 (is-Cons!61829 (exprs!5102 lt!2213602)))))

(declare-fun b!5429261 () Bool)

(declare-fun e!3364257 () Bool)

(assert (=> b!5429261 (= e!3364257 (nullable!5387 (h!68277 (exprs!5102 lt!2213602))))))

(declare-fun b!5429262 () Bool)

(declare-fun call!388758 () (Set Context!9204))

(assert (=> b!5429262 (= e!3364256 call!388758)))

(declare-fun b!5429263 () Bool)

(assert (=> b!5429263 (= e!3364258 (set.union call!388758 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 lt!2213602))) (h!68279 s!2326))))))

(declare-fun bm!388753 () Bool)

(assert (=> bm!388753 (= call!388758 (derivationStepZipperDown!666 (h!68277 (exprs!5102 lt!2213602)) (Context!9205 (t!375178 (exprs!5102 lt!2213602))) (h!68279 s!2326)))))

(declare-fun d!1731341 () Bool)

(declare-fun c!947200 () Bool)

(assert (=> d!1731341 (= c!947200 e!3364257)))

(declare-fun res!2310409 () Bool)

(assert (=> d!1731341 (=> (not res!2310409) (not e!3364257))))

(assert (=> d!1731341 (= res!2310409 (is-Cons!61829 (exprs!5102 lt!2213602)))))

(assert (=> d!1731341 (= (derivationStepZipperUp!590 lt!2213602 (h!68279 s!2326)) e!3364258)))

(assert (= (and d!1731341 res!2310409) b!5429261))

(assert (= (and d!1731341 c!947200) b!5429263))

(assert (= (and d!1731341 (not c!947200)) b!5429260))

(assert (= (and b!5429260 c!947201) b!5429262))

(assert (= (and b!5429260 (not c!947201)) b!5429259))

(assert (= (or b!5429263 b!5429262) bm!388753))

(declare-fun m!6452722 () Bool)

(assert (=> b!5429261 m!6452722))

(declare-fun m!6452724 () Bool)

(assert (=> b!5429263 m!6452724))

(declare-fun m!6452726 () Bool)

(assert (=> bm!388753 m!6452726))

(assert (=> b!5428654 d!1731341))

(declare-fun b!5429264 () Bool)

(declare-fun e!3364259 () (Set Context!9204))

(assert (=> b!5429264 (= e!3364259 (as set.empty (Set Context!9204)))))

(declare-fun b!5429265 () Bool)

(declare-fun e!3364261 () (Set Context!9204))

(assert (=> b!5429265 (= e!3364261 e!3364259)))

(declare-fun c!947203 () Bool)

(assert (=> b!5429265 (= c!947203 (is-Cons!61829 (exprs!5102 lt!2213615)))))

(declare-fun b!5429266 () Bool)

(declare-fun e!3364260 () Bool)

(assert (=> b!5429266 (= e!3364260 (nullable!5387 (h!68277 (exprs!5102 lt!2213615))))))

(declare-fun b!5429267 () Bool)

(declare-fun call!388759 () (Set Context!9204))

(assert (=> b!5429267 (= e!3364259 call!388759)))

(declare-fun b!5429268 () Bool)

(assert (=> b!5429268 (= e!3364261 (set.union call!388759 (derivationStepZipperUp!590 (Context!9205 (t!375178 (exprs!5102 lt!2213615))) (h!68279 s!2326))))))

(declare-fun bm!388754 () Bool)

(assert (=> bm!388754 (= call!388759 (derivationStepZipperDown!666 (h!68277 (exprs!5102 lt!2213615)) (Context!9205 (t!375178 (exprs!5102 lt!2213615))) (h!68279 s!2326)))))

(declare-fun d!1731343 () Bool)

(declare-fun c!947202 () Bool)

(assert (=> d!1731343 (= c!947202 e!3364260)))

(declare-fun res!2310410 () Bool)

(assert (=> d!1731343 (=> (not res!2310410) (not e!3364260))))

(assert (=> d!1731343 (= res!2310410 (is-Cons!61829 (exprs!5102 lt!2213615)))))

(assert (=> d!1731343 (= (derivationStepZipperUp!590 lt!2213615 (h!68279 s!2326)) e!3364261)))

(assert (= (and d!1731343 res!2310410) b!5429266))

(assert (= (and d!1731343 c!947202) b!5429268))

(assert (= (and d!1731343 (not c!947202)) b!5429265))

(assert (= (and b!5429265 c!947203) b!5429267))

(assert (= (and b!5429265 (not c!947203)) b!5429264))

(assert (= (or b!5429268 b!5429267) bm!388754))

(declare-fun m!6452728 () Bool)

(assert (=> b!5429266 m!6452728))

(declare-fun m!6452730 () Bool)

(assert (=> b!5429268 m!6452730))

(declare-fun m!6452732 () Bool)

(assert (=> bm!388754 m!6452732))

(assert (=> b!5428654 d!1731343))

(declare-fun d!1731345 () Bool)

(assert (=> d!1731345 (= (flatMap!945 lt!2213594 lambda!284766) (dynLambda!24366 lambda!284766 lt!2213615))))

(declare-fun lt!2213801 () Unit!154394)

(assert (=> d!1731345 (= lt!2213801 (choose!41167 lt!2213594 lt!2213615 lambda!284766))))

(assert (=> d!1731345 (= lt!2213594 (set.insert lt!2213615 (as set.empty (Set Context!9204))))))

(assert (=> d!1731345 (= (lemmaFlatMapOnSingletonSet!477 lt!2213594 lt!2213615 lambda!284766) lt!2213801)))

(declare-fun b_lambda!207181 () Bool)

(assert (=> (not b_lambda!207181) (not d!1731345)))

(declare-fun bs!1254287 () Bool)

(assert (= bs!1254287 d!1731345))

(assert (=> bs!1254287 m!6452218))

(declare-fun m!6452734 () Bool)

(assert (=> bs!1254287 m!6452734))

(declare-fun m!6452736 () Bool)

(assert (=> bs!1254287 m!6452736))

(assert (=> bs!1254287 m!6452216))

(assert (=> b!5428654 d!1731345))

(declare-fun d!1731347 () Bool)

(assert (=> d!1731347 (= (flatMap!945 lt!2213618 lambda!284766) (dynLambda!24366 lambda!284766 lt!2213602))))

(declare-fun lt!2213802 () Unit!154394)

(assert (=> d!1731347 (= lt!2213802 (choose!41167 lt!2213618 lt!2213602 lambda!284766))))

(assert (=> d!1731347 (= lt!2213618 (set.insert lt!2213602 (as set.empty (Set Context!9204))))))

(assert (=> d!1731347 (= (lemmaFlatMapOnSingletonSet!477 lt!2213618 lt!2213602 lambda!284766) lt!2213802)))

(declare-fun b_lambda!207183 () Bool)

(assert (=> (not b_lambda!207183) (not d!1731347)))

(declare-fun bs!1254288 () Bool)

(assert (= bs!1254288 d!1731347))

(assert (=> bs!1254288 m!6452220))

(declare-fun m!6452738 () Bool)

(assert (=> bs!1254288 m!6452738))

(declare-fun m!6452740 () Bool)

(assert (=> bs!1254288 m!6452740))

(assert (=> bs!1254288 m!6452222))

(assert (=> b!5428654 d!1731347))

(assert (=> b!5428673 d!1731285))

(declare-fun d!1731349 () Bool)

(declare-fun c!947204 () Bool)

(assert (=> d!1731349 (= c!947204 (isEmpty!33834 s!2326))))

(declare-fun e!3364262 () Bool)

(assert (=> d!1731349 (= (matchZipper!1462 lt!2213592 s!2326) e!3364262)))

(declare-fun b!5429269 () Bool)

(assert (=> b!5429269 (= e!3364262 (nullableZipper!1463 lt!2213592))))

(declare-fun b!5429270 () Bool)

(assert (=> b!5429270 (= e!3364262 (matchZipper!1462 (derivationStepZipper!1457 lt!2213592 (head!11644 s!2326)) (tail!10741 s!2326)))))

(assert (= (and d!1731349 c!947204) b!5429269))

(assert (= (and d!1731349 (not c!947204)) b!5429270))

(assert (=> d!1731349 m!6452456))

(declare-fun m!6452742 () Bool)

(assert (=> b!5429269 m!6452742))

(assert (=> b!5429270 m!6452464))

(assert (=> b!5429270 m!6452464))

(declare-fun m!6452744 () Bool)

(assert (=> b!5429270 m!6452744))

(assert (=> b!5429270 m!6452460))

(assert (=> b!5429270 m!6452744))

(assert (=> b!5429270 m!6452460))

(declare-fun m!6452746 () Bool)

(assert (=> b!5429270 m!6452746))

(assert (=> b!5428671 d!1731349))

(declare-fun d!1731351 () Bool)

(declare-fun c!947205 () Bool)

(assert (=> d!1731351 (= c!947205 (isEmpty!33834 (t!375180 s!2326)))))

(declare-fun e!3364263 () Bool)

(assert (=> d!1731351 (= (matchZipper!1462 lt!2213588 (t!375180 s!2326)) e!3364263)))

(declare-fun b!5429271 () Bool)

(assert (=> b!5429271 (= e!3364263 (nullableZipper!1463 lt!2213588))))

(declare-fun b!5429272 () Bool)

(assert (=> b!5429272 (= e!3364263 (matchZipper!1462 (derivationStepZipper!1457 lt!2213588 (head!11644 (t!375180 s!2326))) (tail!10741 (t!375180 s!2326))))))

(assert (= (and d!1731351 c!947205) b!5429271))

(assert (= (and d!1731351 (not c!947205)) b!5429272))

(assert (=> d!1731351 m!6452506))

(declare-fun m!6452748 () Bool)

(assert (=> b!5429271 m!6452748))

(assert (=> b!5429272 m!6452510))

(assert (=> b!5429272 m!6452510))

(declare-fun m!6452750 () Bool)

(assert (=> b!5429272 m!6452750))

(assert (=> b!5429272 m!6452514))

(assert (=> b!5429272 m!6452750))

(assert (=> b!5429272 m!6452514))

(declare-fun m!6452752 () Bool)

(assert (=> b!5429272 m!6452752))

(assert (=> b!5428671 d!1731351))

(declare-fun bm!388755 () Bool)

(declare-fun call!388761 () List!61953)

(declare-fun call!388765 () List!61953)

(assert (=> bm!388755 (= call!388761 call!388765)))

(declare-fun c!947206 () Bool)

(declare-fun c!947209 () Bool)

(declare-fun call!388762 () (Set Context!9204))

(declare-fun bm!388756 () Bool)

(declare-fun c!947207 () Bool)

(assert (=> bm!388756 (= call!388762 (derivationStepZipperDown!666 (ite c!947207 (regOne!30949 (reg!15547 (regOne!30948 r!7292))) (ite c!947209 (regTwo!30948 (reg!15547 (regOne!30948 r!7292))) (ite c!947206 (regOne!30948 (reg!15547 (regOne!30948 r!7292))) (reg!15547 (reg!15547 (regOne!30948 r!7292)))))) (ite (or c!947207 c!947209) lt!2213615 (Context!9205 call!388761)) (h!68279 s!2326)))))

(declare-fun b!5429273 () Bool)

(declare-fun c!947208 () Bool)

(assert (=> b!5429273 (= c!947208 (is-Star!15218 (reg!15547 (regOne!30948 r!7292))))))

(declare-fun e!3364265 () (Set Context!9204))

(declare-fun e!3364264 () (Set Context!9204))

(assert (=> b!5429273 (= e!3364265 e!3364264)))

(declare-fun bm!388757 () Bool)

(assert (=> bm!388757 (= call!388765 ($colon$colon!1513 (exprs!5102 lt!2213615) (ite (or c!947209 c!947206) (regTwo!30948 (reg!15547 (regOne!30948 r!7292))) (reg!15547 (regOne!30948 r!7292)))))))

(declare-fun bm!388758 () Bool)

(declare-fun call!388760 () (Set Context!9204))

(assert (=> bm!388758 (= call!388760 call!388762)))

(declare-fun bm!388759 () Bool)

(declare-fun call!388764 () (Set Context!9204))

(assert (=> bm!388759 (= call!388764 call!388760)))

(declare-fun b!5429274 () Bool)

(declare-fun e!3364268 () (Set Context!9204))

(declare-fun call!388763 () (Set Context!9204))

(assert (=> b!5429274 (= e!3364268 (set.union call!388762 call!388763))))

(declare-fun b!5429275 () Bool)

(declare-fun e!3364269 () (Set Context!9204))

(assert (=> b!5429275 (= e!3364269 e!3364268)))

(assert (=> b!5429275 (= c!947207 (is-Union!15218 (reg!15547 (regOne!30948 r!7292))))))

(declare-fun b!5429276 () Bool)

(assert (=> b!5429276 (= e!3364264 call!388764)))

(declare-fun b!5429277 () Bool)

(assert (=> b!5429277 (= e!3364265 call!388764)))

(declare-fun b!5429278 () Bool)

(assert (=> b!5429278 (= e!3364264 (as set.empty (Set Context!9204)))))

(declare-fun d!1731353 () Bool)

(declare-fun c!947210 () Bool)

(assert (=> d!1731353 (= c!947210 (and (is-ElementMatch!15218 (reg!15547 (regOne!30948 r!7292))) (= (c!947040 (reg!15547 (regOne!30948 r!7292))) (h!68279 s!2326))))))

(assert (=> d!1731353 (= (derivationStepZipperDown!666 (reg!15547 (regOne!30948 r!7292)) lt!2213615 (h!68279 s!2326)) e!3364269)))

(declare-fun bm!388760 () Bool)

(assert (=> bm!388760 (= call!388763 (derivationStepZipperDown!666 (ite c!947207 (regTwo!30949 (reg!15547 (regOne!30948 r!7292))) (regOne!30948 (reg!15547 (regOne!30948 r!7292)))) (ite c!947207 lt!2213615 (Context!9205 call!388765)) (h!68279 s!2326)))))

(declare-fun b!5429279 () Bool)

(declare-fun e!3364267 () Bool)

(assert (=> b!5429279 (= e!3364267 (nullable!5387 (regOne!30948 (reg!15547 (regOne!30948 r!7292)))))))

(declare-fun b!5429280 () Bool)

(declare-fun e!3364266 () (Set Context!9204))

(assert (=> b!5429280 (= e!3364266 (set.union call!388763 call!388760))))

(declare-fun b!5429281 () Bool)

(assert (=> b!5429281 (= e!3364266 e!3364265)))

(assert (=> b!5429281 (= c!947206 (is-Concat!24063 (reg!15547 (regOne!30948 r!7292))))))

(declare-fun b!5429282 () Bool)

(assert (=> b!5429282 (= e!3364269 (set.insert lt!2213615 (as set.empty (Set Context!9204))))))

(declare-fun b!5429283 () Bool)

(assert (=> b!5429283 (= c!947209 e!3364267)))

(declare-fun res!2310411 () Bool)

(assert (=> b!5429283 (=> (not res!2310411) (not e!3364267))))

(assert (=> b!5429283 (= res!2310411 (is-Concat!24063 (reg!15547 (regOne!30948 r!7292))))))

(assert (=> b!5429283 (= e!3364268 e!3364266)))

(assert (= (and d!1731353 c!947210) b!5429282))

(assert (= (and d!1731353 (not c!947210)) b!5429275))

(assert (= (and b!5429275 c!947207) b!5429274))

(assert (= (and b!5429275 (not c!947207)) b!5429283))

(assert (= (and b!5429283 res!2310411) b!5429279))

(assert (= (and b!5429283 c!947209) b!5429280))

(assert (= (and b!5429283 (not c!947209)) b!5429281))

(assert (= (and b!5429281 c!947206) b!5429277))

(assert (= (and b!5429281 (not c!947206)) b!5429273))

(assert (= (and b!5429273 c!947208) b!5429276))

(assert (= (and b!5429273 (not c!947208)) b!5429278))

(assert (= (or b!5429277 b!5429276) bm!388755))

(assert (= (or b!5429277 b!5429276) bm!388759))

(assert (= (or b!5429280 bm!388755) bm!388757))

(assert (= (or b!5429280 bm!388759) bm!388758))

(assert (= (or b!5429274 b!5429280) bm!388760))

(assert (= (or b!5429274 bm!388758) bm!388756))

(declare-fun m!6452754 () Bool)

(assert (=> b!5429279 m!6452754))

(declare-fun m!6452756 () Bool)

(assert (=> bm!388760 m!6452756))

(declare-fun m!6452758 () Bool)

(assert (=> bm!388757 m!6452758))

(assert (=> b!5429282 m!6452216))

(declare-fun m!6452760 () Bool)

(assert (=> bm!388756 m!6452760))

(assert (=> b!5428672 d!1731353))

(declare-fun d!1731355 () Bool)

(assert (=> d!1731355 (= (isEmpty!33831 (t!375178 (exprs!5102 (h!68278 zl!343)))) (is-Nil!61829 (t!375178 (exprs!5102 (h!68278 zl!343)))))))

(assert (=> b!5428651 d!1731355))

(declare-fun b!5429288 () Bool)

(declare-fun e!3364272 () Bool)

(declare-fun tp!1498014 () Bool)

(declare-fun tp!1498015 () Bool)

(assert (=> b!5429288 (= e!3364272 (and tp!1498014 tp!1498015))))

(assert (=> b!5428674 (= tp!1497974 e!3364272)))

(assert (= (and b!5428674 (is-Cons!61829 (exprs!5102 (h!68278 zl!343)))) b!5429288))

(declare-fun b!5429302 () Bool)

(declare-fun e!3364275 () Bool)

(declare-fun tp!1498029 () Bool)

(declare-fun tp!1498028 () Bool)

(assert (=> b!5429302 (= e!3364275 (and tp!1498029 tp!1498028))))

(assert (=> b!5428650 (= tp!1497975 e!3364275)))

(declare-fun b!5429300 () Bool)

(declare-fun tp!1498030 () Bool)

(declare-fun tp!1498027 () Bool)

(assert (=> b!5429300 (= e!3364275 (and tp!1498030 tp!1498027))))

(declare-fun b!5429299 () Bool)

(assert (=> b!5429299 (= e!3364275 tp_is_empty!39689)))

(declare-fun b!5429301 () Bool)

(declare-fun tp!1498026 () Bool)

(assert (=> b!5429301 (= e!3364275 tp!1498026)))

(assert (= (and b!5428650 (is-ElementMatch!15218 (regOne!30949 r!7292))) b!5429299))

(assert (= (and b!5428650 (is-Concat!24063 (regOne!30949 r!7292))) b!5429300))

(assert (= (and b!5428650 (is-Star!15218 (regOne!30949 r!7292))) b!5429301))

(assert (= (and b!5428650 (is-Union!15218 (regOne!30949 r!7292))) b!5429302))

(declare-fun b!5429306 () Bool)

(declare-fun e!3364276 () Bool)

(declare-fun tp!1498034 () Bool)

(declare-fun tp!1498033 () Bool)

(assert (=> b!5429306 (= e!3364276 (and tp!1498034 tp!1498033))))

(assert (=> b!5428650 (= tp!1497979 e!3364276)))

(declare-fun b!5429304 () Bool)

(declare-fun tp!1498035 () Bool)

(declare-fun tp!1498032 () Bool)

(assert (=> b!5429304 (= e!3364276 (and tp!1498035 tp!1498032))))

(declare-fun b!5429303 () Bool)

(assert (=> b!5429303 (= e!3364276 tp_is_empty!39689)))

(declare-fun b!5429305 () Bool)

(declare-fun tp!1498031 () Bool)

(assert (=> b!5429305 (= e!3364276 tp!1498031)))

(assert (= (and b!5428650 (is-ElementMatch!15218 (regTwo!30949 r!7292))) b!5429303))

(assert (= (and b!5428650 (is-Concat!24063 (regTwo!30949 r!7292))) b!5429304))

(assert (= (and b!5428650 (is-Star!15218 (regTwo!30949 r!7292))) b!5429305))

(assert (= (and b!5428650 (is-Union!15218 (regTwo!30949 r!7292))) b!5429306))

(declare-fun b!5429314 () Bool)

(declare-fun e!3364282 () Bool)

(declare-fun tp!1498040 () Bool)

(assert (=> b!5429314 (= e!3364282 tp!1498040)))

(declare-fun tp!1498041 () Bool)

(declare-fun e!3364281 () Bool)

(declare-fun b!5429313 () Bool)

(assert (=> b!5429313 (= e!3364281 (and (inv!81293 (h!68278 (t!375179 zl!343))) e!3364282 tp!1498041))))

(assert (=> b!5428638 (= tp!1497978 e!3364281)))

(assert (= b!5429313 b!5429314))

(assert (= (and b!5428638 (is-Cons!61830 (t!375179 zl!343))) b!5429313))

(declare-fun m!6452762 () Bool)

(assert (=> b!5429313 m!6452762))

(declare-fun b!5429315 () Bool)

(declare-fun e!3364283 () Bool)

(declare-fun tp!1498042 () Bool)

(declare-fun tp!1498043 () Bool)

(assert (=> b!5429315 (= e!3364283 (and tp!1498042 tp!1498043))))

(assert (=> b!5428652 (= tp!1497971 e!3364283)))

(assert (= (and b!5428652 (is-Cons!61829 (exprs!5102 setElem!35406))) b!5429315))

(declare-fun b!5429319 () Bool)

(declare-fun e!3364284 () Bool)

(declare-fun tp!1498047 () Bool)

(declare-fun tp!1498046 () Bool)

(assert (=> b!5429319 (= e!3364284 (and tp!1498047 tp!1498046))))

(assert (=> b!5428657 (= tp!1497977 e!3364284)))

(declare-fun b!5429317 () Bool)

(declare-fun tp!1498048 () Bool)

(declare-fun tp!1498045 () Bool)

(assert (=> b!5429317 (= e!3364284 (and tp!1498048 tp!1498045))))

(declare-fun b!5429316 () Bool)

(assert (=> b!5429316 (= e!3364284 tp_is_empty!39689)))

(declare-fun b!5429318 () Bool)

(declare-fun tp!1498044 () Bool)

(assert (=> b!5429318 (= e!3364284 tp!1498044)))

(assert (= (and b!5428657 (is-ElementMatch!15218 (regOne!30948 r!7292))) b!5429316))

(assert (= (and b!5428657 (is-Concat!24063 (regOne!30948 r!7292))) b!5429317))

(assert (= (and b!5428657 (is-Star!15218 (regOne!30948 r!7292))) b!5429318))

(assert (= (and b!5428657 (is-Union!15218 (regOne!30948 r!7292))) b!5429319))

(declare-fun b!5429323 () Bool)

(declare-fun e!3364285 () Bool)

(declare-fun tp!1498052 () Bool)

(declare-fun tp!1498051 () Bool)

(assert (=> b!5429323 (= e!3364285 (and tp!1498052 tp!1498051))))

(assert (=> b!5428657 (= tp!1497972 e!3364285)))

(declare-fun b!5429321 () Bool)

(declare-fun tp!1498053 () Bool)

(declare-fun tp!1498050 () Bool)

(assert (=> b!5429321 (= e!3364285 (and tp!1498053 tp!1498050))))

(declare-fun b!5429320 () Bool)

(assert (=> b!5429320 (= e!3364285 tp_is_empty!39689)))

(declare-fun b!5429322 () Bool)

(declare-fun tp!1498049 () Bool)

(assert (=> b!5429322 (= e!3364285 tp!1498049)))

(assert (= (and b!5428657 (is-ElementMatch!15218 (regTwo!30948 r!7292))) b!5429320))

(assert (= (and b!5428657 (is-Concat!24063 (regTwo!30948 r!7292))) b!5429321))

(assert (= (and b!5428657 (is-Star!15218 (regTwo!30948 r!7292))) b!5429322))

(assert (= (and b!5428657 (is-Union!15218 (regTwo!30948 r!7292))) b!5429323))

(declare-fun b!5429328 () Bool)

(declare-fun e!3364288 () Bool)

(declare-fun tp!1498056 () Bool)

(assert (=> b!5429328 (= e!3364288 (and tp_is_empty!39689 tp!1498056))))

(assert (=> b!5428641 (= tp!1497976 e!3364288)))

(assert (= (and b!5428641 (is-Cons!61831 (t!375180 s!2326))) b!5429328))

(declare-fun condSetEmpty!35412 () Bool)

(assert (=> setNonEmpty!35406 (= condSetEmpty!35412 (= setRest!35406 (as set.empty (Set Context!9204))))))

(declare-fun setRes!35412 () Bool)

(assert (=> setNonEmpty!35406 (= tp!1497970 setRes!35412)))

(declare-fun setIsEmpty!35412 () Bool)

(assert (=> setIsEmpty!35412 setRes!35412))

(declare-fun e!3364291 () Bool)

(declare-fun setElem!35412 () Context!9204)

(declare-fun tp!1498061 () Bool)

(declare-fun setNonEmpty!35412 () Bool)

(assert (=> setNonEmpty!35412 (= setRes!35412 (and tp!1498061 (inv!81293 setElem!35412) e!3364291))))

(declare-fun setRest!35412 () (Set Context!9204))

(assert (=> setNonEmpty!35412 (= setRest!35406 (set.union (set.insert setElem!35412 (as set.empty (Set Context!9204))) setRest!35412))))

(declare-fun b!5429333 () Bool)

(declare-fun tp!1498062 () Bool)

(assert (=> b!5429333 (= e!3364291 tp!1498062)))

(assert (= (and setNonEmpty!35406 condSetEmpty!35412) setIsEmpty!35412))

(assert (= (and setNonEmpty!35406 (not condSetEmpty!35412)) setNonEmpty!35412))

(assert (= setNonEmpty!35412 b!5429333))

(declare-fun m!6452764 () Bool)

(assert (=> setNonEmpty!35412 m!6452764))

(declare-fun b!5429337 () Bool)

(declare-fun e!3364292 () Bool)

(declare-fun tp!1498066 () Bool)

(declare-fun tp!1498065 () Bool)

(assert (=> b!5429337 (= e!3364292 (and tp!1498066 tp!1498065))))

(assert (=> b!5428666 (= tp!1497973 e!3364292)))

(declare-fun b!5429335 () Bool)

(declare-fun tp!1498067 () Bool)

(declare-fun tp!1498064 () Bool)

(assert (=> b!5429335 (= e!3364292 (and tp!1498067 tp!1498064))))

(declare-fun b!5429334 () Bool)

(assert (=> b!5429334 (= e!3364292 tp_is_empty!39689)))

(declare-fun b!5429336 () Bool)

(declare-fun tp!1498063 () Bool)

(assert (=> b!5429336 (= e!3364292 tp!1498063)))

(assert (= (and b!5428666 (is-ElementMatch!15218 (reg!15547 r!7292))) b!5429334))

(assert (= (and b!5428666 (is-Concat!24063 (reg!15547 r!7292))) b!5429335))

(assert (= (and b!5428666 (is-Star!15218 (reg!15547 r!7292))) b!5429336))

(assert (= (and b!5428666 (is-Union!15218 (reg!15547 r!7292))) b!5429337))

(declare-fun b_lambda!207185 () Bool)

(assert (= b_lambda!207181 (or b!5428647 b_lambda!207185)))

(declare-fun bs!1254289 () Bool)

(declare-fun d!1731357 () Bool)

(assert (= bs!1254289 (and d!1731357 b!5428647)))

(assert (=> bs!1254289 (= (dynLambda!24366 lambda!284766 lt!2213615) (derivationStepZipperUp!590 lt!2213615 (h!68279 s!2326)))))

(assert (=> bs!1254289 m!6452230))

(assert (=> d!1731345 d!1731357))

(declare-fun b_lambda!207187 () Bool)

(assert (= b_lambda!207173 (or b!5428639 b_lambda!207187)))

(declare-fun bs!1254290 () Bool)

(declare-fun d!1731359 () Bool)

(assert (= bs!1254290 (and d!1731359 b!5428639)))

(assert (=> bs!1254290 (= (dynLambda!24365 lambda!284767 (h!68277 (t!375178 (exprs!5102 (h!68278 zl!343))))) (validRegex!6954 (h!68277 (t!375178 (exprs!5102 (h!68278 zl!343))))))))

(declare-fun m!6452766 () Bool)

(assert (=> bs!1254290 m!6452766))

(assert (=> b!5429050 d!1731359))

(declare-fun b_lambda!207189 () Bool)

(assert (= b_lambda!207179 (or b!5428647 b_lambda!207189)))

(declare-fun bs!1254291 () Bool)

(declare-fun d!1731361 () Bool)

(assert (= bs!1254291 (and d!1731361 b!5428647)))

(assert (=> bs!1254291 (= (dynLambda!24366 lambda!284766 (h!68278 zl!343)) (derivationStepZipperUp!590 (h!68278 zl!343) (h!68279 s!2326)))))

(assert (=> bs!1254291 m!6452208))

(assert (=> d!1731321 d!1731361))

(declare-fun b_lambda!207191 () Bool)

(assert (= b_lambda!207175 (or b!5428647 b_lambda!207191)))

(declare-fun bs!1254292 () Bool)

(declare-fun d!1731363 () Bool)

(assert (= bs!1254292 (and d!1731363 b!5428647)))

(assert (=> bs!1254292 (= (dynLambda!24366 lambda!284766 lt!2213600) (derivationStepZipperUp!590 lt!2213600 (h!68279 s!2326)))))

(assert (=> bs!1254292 m!6452196))

(assert (=> d!1731271 d!1731363))

(declare-fun b_lambda!207193 () Bool)

(assert (= b_lambda!207177 (or b!5428647 b_lambda!207193)))

(declare-fun bs!1254293 () Bool)

(declare-fun d!1731365 () Bool)

(assert (= bs!1254293 (and d!1731365 b!5428647)))

(assert (=> bs!1254293 (= (dynLambda!24366 lambda!284766 lt!2213596) (derivationStepZipperUp!590 lt!2213596 (h!68279 s!2326)))))

(assert (=> bs!1254293 m!6452274))

(assert (=> d!1731299 d!1731365))

(declare-fun b_lambda!207195 () Bool)

(assert (= b_lambda!207183 (or b!5428647 b_lambda!207195)))

(declare-fun bs!1254294 () Bool)

(declare-fun d!1731367 () Bool)

(assert (= bs!1254294 (and d!1731367 b!5428647)))

(assert (=> bs!1254294 (= (dynLambda!24366 lambda!284766 lt!2213602) (derivationStepZipperUp!590 lt!2213602 (h!68279 s!2326)))))

(assert (=> bs!1254294 m!6452228))

(assert (=> d!1731347 d!1731367))

(push 1)

(assert (not b!5429253))

(assert (not b!5429319))

(assert (not b!5429167))

(assert (not b!5429234))

(assert (not bm!388753))

(assert (not d!1731329))

(assert (not d!1731307))

(assert (not bm!388709))

(assert (not b_lambda!207187))

(assert (not bm!388706))

(assert (not b!5429115))

(assert (not b!5429155))

(assert (not d!1731259))

(assert (not b!5429318))

(assert (not b!5429065))

(assert (not b!5429336))

(assert (not d!1731301))

(assert (not b!5429333))

(assert (not b!5429063))

(assert (not bm!388731))

(assert (not d!1731311))

(assert (not d!1731285))

(assert (not b!5429279))

(assert (not d!1731303))

(assert (not bm!388757))

(assert (not b!5429150))

(assert (not bm!388751))

(assert (not b!5429139))

(assert (not b!5429114))

(assert (not d!1731309))

(assert (not b!5429323))

(assert (not b!5429301))

(assert (not d!1731261))

(assert (not b!5429317))

(assert (not d!1731283))

(assert (not b!5428951))

(assert (not b!5428955))

(assert (not d!1731273))

(assert (not bm!388713))

(assert (not b!5429305))

(assert (not b!5428956))

(assert (not b!5429266))

(assert (not d!1731271))

(assert (not b!5429001))

(assert (not b!5429270))

(assert (not bm!388721))

(assert (not b!5429239))

(assert (not b!5429335))

(assert (not bm!388686))

(assert (not b!5429051))

(assert (not bs!1254294))

(assert (not b!5429128))

(assert (not d!1731287))

(assert (not b!5429314))

(assert (not b!5429144))

(assert (not d!1731321))

(assert (not b!5429288))

(assert (not b!5429145))

(assert (not b!5429247))

(assert (not b!5429136))

(assert (not bm!388687))

(assert (not b!5429257))

(assert (not d!1731337))

(assert (not d!1731315))

(assert (not b!5429302))

(assert (not b!5429304))

(assert (not b!5429131))

(assert (not bm!388728))

(assert (not d!1731339))

(assert (not d!1731335))

(assert (not b_lambda!207185))

(assert (not d!1731263))

(assert (not d!1731327))

(assert (not b!5429306))

(assert (not b!5428952))

(assert (not b!5429174))

(assert (not b!5429071))

(assert (not b!5429037))

(assert (not b!5429158))

(assert (not bm!388760))

(assert (not d!1731293))

(assert (not b_lambda!207191))

(assert (not d!1731347))

(assert (not d!1731351))

(assert (not b!5429271))

(assert (not bs!1254291))

(assert (not b!5429140))

(assert (not b!5429321))

(assert (not b!5429236))

(assert (not bm!388752))

(assert (not b!5429210))

(assert (not bm!388732))

(assert (not d!1731265))

(assert (not b!5429263))

(assert (not b!5429039))

(assert (not b!5428954))

(assert (not bm!388715))

(assert (not d!1731267))

(assert (not d!1731279))

(assert (not bs!1254293))

(assert (not b!5428996))

(assert (not b!5429240))

(assert (not b!5429269))

(assert (not b_lambda!207193))

(assert tp_is_empty!39689)

(assert (not d!1731253))

(assert (not d!1731349))

(assert (not b!5429109))

(assert (not b!5428959))

(assert (not b!5429111))

(assert (not d!1731305))

(assert (not b!5429151))

(assert (not b!5429070))

(assert (not b!5429241))

(assert (not bm!388733))

(assert (not b!5429112))

(assert (not d!1731295))

(assert (not bs!1254292))

(assert (not b!5429315))

(assert (not b!5429141))

(assert (not d!1731317))

(assert (not d!1731247))

(assert (not b!5429058))

(assert (not b!5429272))

(assert (not bm!388754))

(assert (not bm!388756))

(assert (not b!5429313))

(assert (not d!1731345))

(assert (not bm!388722))

(assert (not b!5429300))

(assert (not d!1731277))

(assert (not bm!388712))

(assert (not b!5429129))

(assert (not bs!1254290))

(assert (not b!5429212))

(assert (not d!1731333))

(assert (not b!5429038))

(assert (not b!5429045))

(assert (not b!5429261))

(assert (not b!5429134))

(assert (not bm!388725))

(assert (not b!5429249))

(assert (not bm!388747))

(assert (not bm!388705))

(assert (not bm!388730))

(assert (not b!5429032))

(assert (not d!1731249))

(assert (not setNonEmpty!35412))

(assert (not b!5429233))

(assert (not d!1731289))

(assert (not b!5429086))

(assert (not b!5429060))

(assert (not d!1731299))

(assert (not b!5429172))

(assert (not b!5429322))

(assert (not b!5429203))

(assert (not b!5429328))

(assert (not bm!388729))

(assert (not b!5429130))

(assert (not b!5429268))

(assert (not b_lambda!207189))

(assert (not b!5429042))

(assert (not b_lambda!207195))

(assert (not d!1731275))

(assert (not b!5429242))

(assert (not b!5429252))

(assert (not b!5429152))

(assert (not b!5428957))

(assert (not d!1731281))

(assert (not b!5429337))

(assert (not bm!388707))

(assert (not b!5429108))

(assert (not d!1731331))

(assert (not b!5429088))

(assert (not b!5429162))

(assert (not b!5429255))

(assert (not b!5429250))

(assert (not bm!388714))

(assert (not b!5429254))

(assert (not bm!388748))

(assert (not b!5428857))

(assert (not bs!1254289))

(assert (not bm!388708))

(assert (not d!1731243))

(assert (not bm!388716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

